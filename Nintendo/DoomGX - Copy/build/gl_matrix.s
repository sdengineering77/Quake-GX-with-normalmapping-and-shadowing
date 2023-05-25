	.file	"gl_matrix.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl CopyMtxToMtx44
	.type	CopyMtxToMtx44, @function
CopyMtxToMtx44:
.LFB66:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/gl_matrix.c"
	.loc 1 13 0
.LVL0:
	.loc 1 13 0
	mr 9,4
	li 11,0
.LVL1:
.L2:
	.loc 1 19 0
	lfs 0,0(3)
.LVL2:
	.loc 1 15 0
	cmpwi 7,11,2
	addi 11,11,1
	.loc 1 19 0
	stfs 0,0(9)
	lfs 0,4(3)
	stfs 0,4(9)
	lfs 13,8(3)
	stfs 13,8(9)
	lfs 0,12(3)
	.loc 1 15 0
	addi 3,3,16
	.loc 1 19 0
	stfs 0,12(9)
	.loc 1 15 0
	addi 9,9,16
	bne+ 7,.L2
	.loc 1 24 0
	li 0,0
	.loc 1 15 0
	addi 9,4,48
	.loc 1 24 0
	stw 0,48(4)
	stw 0,12(9)
	stw 0,4(9)
	stw 0,8(9)
	.loc 1 25 0
	blr
.LFE66:
	.size	CopyMtxToMtx44, .-CopyMtxToMtx44
	.align 2
	.globl CopyMtx44ToMtx
	.type	CopyMtx44ToMtx, @function
CopyMtx44ToMtx:
.LFB67:
	.loc 1 28 0
.LVL3:
	.loc 1 28 0
	li 9,0
.LVL4:
.L9:
	.loc 1 34 0
	lfs 0,0(3)
.LVL5:
	.loc 1 30 0
	cmpwi 7,9,2
	addi 9,9,1
	.loc 1 34 0
	stfs 0,0(4)
.LVL6:
	lfs 0,4(3)
	stfs 0,4(4)
	lfs 13,8(3)
	stfs 13,8(4)
	lfs 0,12(3)
	.loc 1 30 0
	addi 3,3,16
	.loc 1 34 0
	stfs 0,12(4)
	.loc 1 30 0
	addi 4,4,16
	bne+ 7,.L9
	.loc 1 37 0
	blr
.LFE67:
	.size	CopyMtx44ToMtx, .-CopyMtx44ToMtx
	.align 2
	.type	computeZplanes, @function
computeZplanes:
.LFB69:
	.loc 1 54 0
.LVL7:
.LBB4:
.LBB8:
	.loc 1 41 0
	lis 9,.LC2@ha
	lfs 0,12(3)
	lfs 13,.LC2@l(9)
.LBE8:
.LBE4:
	.loc 1 55 0
	lfs 11,40(3)
.LVL8:
.LBB12:
.LBB7:
	.loc 1 41 0
	fcmpu 7,0,13
.LBE7:
.LBE12:
	.loc 1 56 0
	lfs 12,44(3)
.LVL9:
.LBB13:
.LBB9:
	.loc 1 41 0
	bne- 7,.L15
	lfs 0,28(3)
	fcmpu 7,0,13
	beq- 7,.L17
.L15:
.LBE9:
.LBE13:
	.loc 1 68 0
	lis 9,.LC0@ha
.LBB14:
.LBB6:
	.loc 1 44 0
	li 0,1
.LBE6:
.LBE14:
	.loc 1 68 0
	lfs 0,.LC0@l(9)
.LBB15:
.LBB10:
	.loc 1 44 0
	stb 0,64(3)
.LBE10:
.LBE15:
	.loc 1 69 0
	fsubs 13,12,0
	.loc 1 68 0
	fadds 0,12,0
	.loc 1 69 0
	fdivs 13,13,11
	.loc 1 68 0
	fdivs 0,0,11
	.loc 1 69 0
	stfs 13,72(3)
	.loc 1 68 0
	stfs 0,68(3)
	blr
.L17:
	.loc 1 63 0
	lis 9,.LC0@ha
.LBB16:
.LBB5:
	.loc 1 49 0
	li 0,0
.LBE5:
.LBE16:
	.loc 1 63 0
	lfs 0,.LC0@l(9)
.LBB17:
.LBB11:
	.loc 1 49 0
	stb 0,64(3)
.LBE11:
.LBE17:
	.loc 1 64 0
	fsubs 13,11,0
	.loc 1 63 0
	fadds 0,11,0
	.loc 1 64 0
	fdivs 13,12,13
	.loc 1 63 0
	fdivs 0,12,0
	.loc 1 64 0
	stfs 13,68(3)
	.loc 1 63 0
	stfs 0,72(3)
	blr
.LFE69:
	.size	computeZplanes, .-computeZplanes
	.align 2
	.globl CopyGLfloatToMtx
	.type	CopyGLfloatToMtx, @function
CopyGLfloatToMtx:
.LFB85:
	.loc 1 593 0
.LVL10:
	.loc 1 593 0
	li 8,0
.LVL11:
	.loc 1 600 0
	lfs 0,0(3)
	.loc 1 604 0
	slwi 0,8,2
	.loc 1 600 0
	addi 10,3,4
.LVL12:
	.loc 1 604 0
	add 9,4,0
	.loc 1 600 0
	stfsx 0,4,0
	addi 9,9,16
	li 11,1
.LVL13:
.L23:
	.loc 1 598 0
	cmpwi 7,11,2
	.loc 1 600 0
	lfs 0,0(10)
	.loc 1 598 0
	addi 11,11,1
	.loc 1 600 0
	addi 10,10,4
	stfs 0,0(9)
	.loc 1 598 0
	addi 9,9,16
	bne- 7,.L23
	.loc 1 596 0
	cmpwi 7,8,3
	addi 8,8,1
	beqlr- 7
	.loc 1 604 0
	addi 3,3,16
.LVL14:
	slwi 0,8,2
	add 9,4,0
	.loc 1 600 0
	lfs 0,0(3)
	addi 9,9,16
	addi 10,3,4
.LVL15:
	li 11,1
	stfsx 0,4,0
	b .L23
.LFE85:
	.size	CopyGLfloatToMtx, .-CopyGLfloatToMtx
	.align 2
	.globl CopyGLfloatToMtx44
	.type	CopyGLfloatToMtx44, @function
CopyGLfloatToMtx44:
.LFB86:
	.loc 1 607 0
.LVL16:
	.loc 1 607 0
	li 8,0
.LVL17:
.LVL18:
.L32:
	.loc 1 614 0
	lfs 0,0(3)
	.loc 1 617 0
	slwi 0,8,2
	add 9,4,0
	.loc 1 614 0
	addi 10,3,4
.LVL19:
	stfsx 0,4,0
	addi 9,9,16
	li 11,1
.L33:
	.loc 1 612 0
	cmpwi 7,11,3
	.loc 1 614 0
	lfs 0,0(10)
	.loc 1 612 0
	addi 11,11,1
	.loc 1 614 0
	addi 10,10,4
	stfs 0,0(9)
	.loc 1 612 0
	addi 9,9,16
	bne+ 7,.L33
	.loc 1 610 0
	cmpwi 7,8,3
	.loc 1 612 0
	addi 3,3,16
.LVL20:
	.loc 1 610 0
	addi 8,8,1
	bne+ 7,.L32
	blr
.LFE86:
	.size	CopyGLfloatToMtx44, .-CopyGLfloatToMtx44
	.align 2
	.globl glMatrixMode
	.type	glMatrixMode, @function
glMatrixMode:
.LFB72:
	.loc 1 157 0
.LVL21:
	mflr 0
.LCFI0:
	stwu 1,-8(1)
.LCFI1:
	.loc 1 158 0
	lis 9,cur_state@ha
	.loc 1 157 0
	stw 0,12(1)
.LCFI2:
	.loc 1 158 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L50
	.loc 1 160 0
	cmpwi 7,3,5889
	beq- 7,.L46
	cmpwi 7,3,5890
	beq- 7,.L47
	cmpwi 7,3,5888
	beq- 7,.L51
	.loc 1 172 0
	lis 4,.LC3@ha
	li 3,1280
.LVL22:
	la 4,.LC3@l(4)
	li 5,172
	bl _glSetErrorEx
	.loc 1 178 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL23:
.L50:
	.loc 1 158 0
	lis 4,.LC3@ha
	li 3,1282
.LVL24:
	la 4,.LC3@l(4)
	li 5,158
	bl _glSetErrorEx
	.loc 1 178 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL25:
.L46:
	.loc 1 166 0
	lis 9,projection_stack@ha
	lis 11,curmtx@ha
	la 9,projection_stack@l(9)
	stw 9,curmtx@l(11)
.L48:
	.loc 1 178 0
	lwz 0,12(1)
	.loc 1 177 0
	lis 9,cur_mode@ha
	.loc 1 178 0
	addi 1,1,8
	.loc 1 177 0
	stw 3,cur_mode@l(9)
	.loc 1 178 0
	mtlr 0
	blr
.L51:
	.loc 1 163 0
	lis 9,model_stack@ha
	lis 11,curmtx@ha
	la 9,model_stack@l(9)
	stw 9,curmtx@l(11)
	b .L48
.L47:
	.loc 1 169 0
	lis 9,cur_tex@ha
	lis 11,curmtx@ha
	lwz 0,cur_tex@l(9)
	lis 9,texture_stack@ha
	la 9,texture_stack@l(9)
	slwi 0,0,4
	add 0,0,9
	stw 0,curmtx@l(11)
	b .L48
.LFE72:
	.size	glMatrixMode, .-glMatrixMode
	.align 2
	.globl gluPerspective
	.type	gluPerspective, @function
gluPerspective:
.LFB88:
	.loc 1 670 0
.LVL26:
	mflr 0
.LCFI3:
	stwu 1,-120(1)
.LCFI4:
	.loc 1 671 0
	lis 9,cur_state@ha
	.loc 1 670 0
	stw 28,72(1)
.LCFI5:
	stw 0,124(1)
.LCFI6:
	stfd 28,88(1)
.LCFI7:
	fmr 28,2
	.loc 1 671 0
	lwz 0,cur_state@l(9)
	.loc 1 670 0
	stfd 29,96(1)
.LCFI8:
	fmr 29,1
	.loc 1 671 0
	andi. 28,0,1
	.loc 1 670 0
	stfd 30,104(1)
.LCFI9:
	stfd 31,112(1)
.LCFI10:
	fmr 30,3
	stw 29,76(1)
.LCFI11:
	.loc 1 670 0
	fmr 31,4
	.loc 1 671 0
	bne- 0,.L60
.LVL27:
	.loc 1 673 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L61
.LBB18:
	.loc 1 691 0
	lis 9,curmtx@ha
	.loc 1 693 0
	addi 29,1,8
	.loc 1 691 0
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 693 0
	frsp 1,29
	frsp 2,28
	.loc 1 691 0
	mr 28,3
.LVL28:
	.loc 1 693 0
	frsp 3,30
	mr 3,29
	frsp 4,31
	bl guPerspective
	.loc 1 695 0
	mr 3,29
	mr 4,28
	bl CopyMtx44ToMtx
.LVL29:
.L59:
.LBE18:
	.loc 1 697 0
	lwz 0,124(1)
	lwz 28,72(1)
.LVL30:
	lwz 29,76(1)
.LVL31:
	mtlr 0
	lfd 28,88(1)
.LVL32:
	lfd 29,96(1)
.LVL33:
	lfd 30,104(1)
.LVL34:
	lfd 31,112(1)
.LVL35:
	addi 1,1,120
	blr
.LVL36:
.L61:
.LBB19:
	.loc 1 675 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
	.loc 1 677 0
	mr. 29,3
.LVL37:
	beq- 0,.L59
	.loc 1 682 0
	frsp 30,30
.LVL38:
	frsp 31,31
.LVL39:
	frsp 1,29
	frsp 2,28
	fmr 3,30
	fmr 4,31
	bl guPerspective
	.loc 1 683 0
	stb 28,64(29)
	.loc 1 686 0
	stfs 31,72(29)
.LBE19:
	.loc 1 697 0
	lwz 0,124(1)
.LBB20:
	.loc 1 685 0
	stfs 30,68(29)
.LBE20:
	.loc 1 697 0
	lwz 28,72(1)
	mtlr 0
	lwz 29,76(1)
.LVL40:
	lfd 28,88(1)
.LVL41:
	lfd 29,96(1)
.LVL42:
	lfd 30,104(1)
	lfd 31,112(1)
	addi 1,1,120
	blr
.LVL43:
.L60:
	.loc 1 671 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,671
	bl _glSetErrorEx
	.loc 1 697 0
	lwz 0,124(1)
	lwz 28,72(1)
	lwz 29,76(1)
	mtlr 0
	lfd 28,88(1)
.LVL44:
	lfd 29,96(1)
.LVL45:
	lfd 30,104(1)
.LVL46:
	lfd 31,112(1)
.LVL47:
	addi 1,1,120
	blr
.LFE88:
	.size	gluPerspective, .-gluPerspective
	.align 2
	.globl _glGetMatrixf
	.type	_glGetMatrixf, @function
_glGetMatrixf:
.LFB84:
	.loc 1 548 0
.LVL48:
	stwu 1,-16(1)
.LCFI12:
	mflr 0
.LCFI13:
	stw 31,12(1)
.LCFI14:
	.loc 1 552 0
	mr. 31,4
	.loc 1 548 0
	stw 0,20(1)
.LCFI15:
	.loc 1 552 0
	beq- 0,.L77
.LVL49:
	.loc 1 555 0
	cmpwi 7,3,2982
	beq- 7,.L66
	cmpwi 7,3,2983
	beq- 7,.L85
	.loc 1 587 0
	lis 4,.LC3@ha
	li 3,1280
.LVL50:
	la 4,.LC3@l(4)
	li 5,587
	bl _glSetErrorEx
.LVL51:
.L77:
	.loc 1 590 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL52:
	addi 1,1,16
	mtlr 0
	blr
.LVL53:
.L85:
	.loc 1 576 0
	lis 3,projection_stack@ha
.LVL54:
	la 3,projection_stack@l(3)
	bl TopPrjMtx
	li 8,0
.LVL55:
.L74:
.LBB21:
	.loc 1 564 0
	slwi 9,8,2
.LBE21:
	.loc 1 582 0
	addi 10,31,4
.LVL56:
	lfsx 0,3,9
.LBB22:
	.loc 1 564 0
	add 9,3,9
.LBE22:
	.loc 1 582 0
	addi 9,9,16
	li 11,1
	stfs 0,0(31)
.LVL57:
.L75:
	.loc 1 581 0
	cmpwi 7,11,3
	.loc 1 582 0
	lfs 0,0(9)
	.loc 1 581 0
	addi 11,11,1
	addi 9,9,16
	.loc 1 582 0
	stfs 0,0(10)
	addi 10,10,4
.LVL58:
	.loc 1 581 0
	bne+ 7,.L75
	.loc 1 580 0
	cmpwi 7,8,3
	.loc 1 581 0
	addi 31,31,16
.LVL59:
	.loc 1 580 0
	addi 8,8,1
	bne+ 7,.L74
	.loc 1 590 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL60:
	addi 1,1,16
	mtlr 0
	blr
.LVL61:
.L66:
.LBB23:
	.loc 1 559 0
	lis 3,model_stack@ha
.LVL62:
	la 3,model_stack@l(3)
	bl TopMtx
	li 8,0
.LVL63:
.LBE23:
	.loc 1 587 0
	slwi 9,8,2
.LBB24:
	.loc 1 568 0
	li 0,0
	.loc 1 564 0
	lfsx 0,3,9
.LBE24:
	.loc 1 587 0
	add 9,3,9
.LBB25:
	.loc 1 564 0
	addi 9,9,16
	addi 10,31,4
.LVL64:
	stfs 0,0(31)
	li 11,1
.LVL65:
.L69:
	.loc 1 562 0
	cmpwi 7,11,2
	.loc 1 564 0
	lfs 0,0(9)
	.loc 1 562 0
	addi 11,11,1
	addi 9,9,16
	.loc 1 564 0
	stfs 0,0(10)
	addi 10,10,4
	.loc 1 562 0
	bne- 7,.L69
	.loc 1 567 0
	cmpwi 7,8,3
	beq- 7,.L71
	.loc 1 568 0
	stw 0,12(31)
	.loc 1 560 0
	addi 8,8,1
	beq- 7,.L77
.LVL66:
.LBE25:
	.loc 1 587 0
	slwi 9,8,2
	addi 31,31,16
.LBB26:
	.loc 1 564 0
	lfsx 0,3,9
.LBE26:
	.loc 1 587 0
	add 9,3,9
.LBB27:
	.loc 1 564 0
	addi 9,9,16
	addi 10,31,4
.LVL67:
	li 11,1
	stfs 0,0(31)
	b .L69
.LVL68:
.L71:
	.loc 1 570 0
	lis 9,.LC0@ha
.LBE27:
	.loc 1 590 0
	lwz 0,20(1)
.LBB28:
	.loc 1 570 0
	lfs 0,.LC0@l(9)
.LBE28:
	.loc 1 590 0
	mtlr 0
.LBB29:
	.loc 1 570 0
	stfs 0,12(31)
.LBE29:
	.loc 1 590 0
	lwz 31,12(1)
	addi 1,1,16
	blr
.LFE84:
	.size	_glGetMatrixf, .-_glGetMatrixf
	.align 2
	.globl _glGetMatrixd
	.type	_glGetMatrixd, @function
_glGetMatrixd:
.LFB83:
	.loc 1 507 0
.LVL69:
	stwu 1,-16(1)
.LCFI16:
	mflr 0
.LCFI17:
	stw 31,12(1)
.LCFI18:
	.loc 1 512 0
	mr. 31,4
	.loc 1 507 0
	stw 0,20(1)
.LCFI19:
	.loc 1 512 0
	beq- 0,.L99
.LVL70:
	.loc 1 515 0
	cmpwi 7,3,2982
	beq- 7,.L90
	cmpwi 7,3,2983
	beq- 7,.L104
	.loc 1 541 0
	lis 4,.LC3@ha
	li 3,1280
.LVL71:
	la 4,.LC3@l(4)
	li 5,541
	bl _glSetErrorEx
.LVL72:
.L99:
	.loc 1 545 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL73:
	addi 1,1,16
	mtlr 0
	blr
.LVL74:
.L104:
	.loc 1 530 0
	lis 3,projection_stack@ha
.LVL75:
	la 3,projection_stack@l(3)
	bl TopPrjMtx
	li 0,4
	mtctr 0
.L98:
	.loc 1 536 0
	lfs 0,0(3)
	lfs 13,16(3)
	lfs 12,32(3)
	lfs 11,48(3)
	.loc 1 534 0
	addi 3,3,4
	.loc 1 536 0
	stfd 0,0(31)
	stfd 13,8(31)
	stfd 12,16(31)
	stfd 11,24(31)
	addi 31,31,32
	.loc 1 534 0
	bdnz .L98
	.loc 1 545 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL76:
	addi 1,1,16
	mtlr 0
	blr
.LVL77:
.L90:
	.loc 1 517 0
	lis 3,model_stack@ha
.LVL78:
	la 3,model_stack@l(3)
	bl TopMtx
	.loc 1 523 0
	lis 9,.LC6@ha
	.loc 1 517 0
	li 8,0
.LVL79:
	.loc 1 523 0
	lfd 13,.LC6@l(9)
	.loc 1 541 0
	slwi 9,8,2
	.loc 1 520 0
	addi 10,31,8
.LVL80:
	lfsx 0,3,9
	.loc 1 541 0
	add 9,3,9
	.loc 1 520 0
	addi 9,9,16
	li 11,1
.LVL81:
	stfd 0,0(31)
.L93:
	.loc 1 519 0
	cmpwi 7,11,2
	.loc 1 520 0
	lfs 0,0(9)
	.loc 1 519 0
	addi 11,11,1
	addi 9,9,16
	.loc 1 520 0
	stfd 0,0(10)
	addi 10,10,8
	.loc 1 519 0
	bne- 7,.L93
	.loc 1 522 0
	cmpwi 7,8,3
	beq- 7,.L95
	.loc 1 523 0
	stfd 13,24(31)
	.loc 1 518 0
	addi 8,8,1
	beq- 7,.L99
.LVL82:
	.loc 1 541 0
	slwi 9,8,2
	addi 31,31,32
	.loc 1 520 0
	lfsx 0,3,9
	.loc 1 541 0
	add 9,3,9
	.loc 1 520 0
	addi 9,9,16
	addi 10,31,8
.LVL83:
	li 11,1
	stfd 0,0(31)
	b .L93
.LVL84:
.L95:
	.loc 1 525 0
	lis 9,.LC0@ha
	.loc 1 545 0
	lwz 0,20(1)
	.loc 1 525 0
	lfs 0,.LC0@l(9)
	.loc 1 545 0
	mtlr 0
	.loc 1 525 0
	stfd 0,24(31)
	.loc 1 545 0
	lwz 31,12(1)
	addi 1,1,16
	blr
.LFE83:
	.size	_glGetMatrixd, .-_glGetMatrixd
	.align 2
	.globl glLoadMatrixd
	.type	glLoadMatrixd, @function
glLoadMatrixd:
.LFB75:
	.loc 1 269 0
.LVL85:
	mflr 0
.LCFI20:
	stwu 1,-16(1)
.LCFI21:
	.loc 1 270 0
	lis 9,cur_state@ha
	.loc 1 269 0
	stw 31,12(1)
.LCFI22:
	mr 31,3
	stw 0,20(1)
.LCFI23:
	stw 30,8(1)
.LCFI24:
	.loc 1 270 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L126
.LVL86:
	.loc 1 274 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L127
.LBB30:
	.loc 1 295 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 297 0
	cmpwi 0,3,0
.LVL87:
	beq- 0,.L119
.LBE30:
.LBB31:
	.loc 1 287 0
	li 0,4
	mr 9,3
	mtctr 0
	li 11,0
.L118:
.LBE31:
.LBB32:
	.loc 1 306 0
	lfd 0,0(31)
	lfd 13,8(31)
	lfd 12,16(31)
	frsp 0,0
	frsp 13,13
	.loc 1 297 0
	addi 31,31,32
	.loc 1 306 0
	frsp 12,12
	stfsx 0,11,3
	addi 11,11,4
	stfs 13,16(9)
	stfs 12,32(9)
	addi 9,9,4
	.loc 1 302 0
	bdnz .L118
.LVL88:
.L119:
.LBE32:
	.loc 1 311 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
.LVL89:
	mtlr 0
	addi 1,1,16
	blr
.LVL90:
.L127:
.LBB33:
	.loc 1 276 0
	lis 30,curmtx@ha
	lwz 3,curmtx@l(30)
	bl TopMtx44
	.loc 1 278 0
	cmpwi 0,3,0
.LVL91:
	beq- 0,.L119
.LBE33:
.LBB34:
	.loc 1 297 0
	li 8,0
.LVL92:
.L114:
.LBE34:
.LBB35:
	.loc 1 287 0
	lfd 0,0(31)
.LBE35:
.LBB36:
	.loc 1 297 0
	slwi 0,8,2
	add 9,3,0
.LBE36:
.LBB37:
	.loc 1 287 0
	addi 10,31,8
.LVL93:
	frsp 0,0
	addi 9,9,16
	li 11,1
	stfsx 0,3,0
.L112:
	lfd 0,0(10)
	.loc 1 285 0
	cmpwi 7,11,3
	.loc 1 287 0
	addi 10,10,8
	.loc 1 285 0
	addi 11,11,1
	.loc 1 287 0
	frsp 0,0
	stfs 0,0(9)
	.loc 1 285 0
	addi 9,9,16
	bne+ 7,.L112
	.loc 1 283 0
	cmpwi 7,8,3
	.loc 1 285 0
	addi 31,31,32
.LVL94:
	.loc 1 283 0
	addi 8,8,1
	bne+ 7,.L114
	.loc 1 291 0
	lwz 3,curmtx@l(30)
.LVL95:
	bl TopPrjMtx
.LVL96:
.LBE37:
	.loc 1 311 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL97:
	addi 1,1,16
.LBB38:
	.loc 1 291 0
	b computeZplanes
.LVL98:
.L126:
.LBE38:
	.loc 1 270 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,270
	bl _glSetErrorEx
	.loc 1 311 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
.LVL99:
	mtlr 0
	addi 1,1,16
	blr
.LFE75:
	.size	glLoadMatrixd, .-glLoadMatrixd
	.align 2
	.globl glLoadMatrixf
	.type	glLoadMatrixf, @function
glLoadMatrixf:
.LFB74:
	.loc 1 221 0
.LVL100:
	mflr 0
.LCFI25:
	stwu 1,-16(1)
.LCFI26:
	.loc 1 222 0
	lis 9,cur_state@ha
	.loc 1 221 0
	stw 31,12(1)
.LCFI27:
	mr 31,3
	stw 0,20(1)
.LCFI28:
	stw 30,8(1)
.LCFI29:
	.loc 1 222 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L149
.LVL101:
	.loc 1 226 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L150
.LBB39:
	.loc 1 247 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 249 0
	cmpwi 0,3,0
.LVL102:
	beq- 0,.L142
.LBE39:
.LBB40:
	.loc 1 239 0
	li 0,4
	mr 9,3
	mtctr 0
	li 11,0
.L141:
.LBE40:
.LBB41:
	.loc 1 261 0
	lfs 0,0(31)
	stfsx 0,11,3
	addi 11,11,4
	lfs 0,4(31)
	stfs 0,16(9)
	lfs 13,8(31)
	.loc 1 249 0
	addi 31,31,16
	.loc 1 261 0
	stfs 13,32(9)
	addi 9,9,4
	.loc 1 257 0
	bdnz .L141
.LVL103:
.L142:
.LBE41:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
.LVL104:
	mtlr 0
	addi 1,1,16
	blr
.LVL105:
.L150:
.LBB42:
	.loc 1 228 0
	lis 30,curmtx@ha
	lwz 3,curmtx@l(30)
	bl TopMtx44
	.loc 1 230 0
	cmpwi 0,3,0
.LVL106:
	beq- 0,.L142
.LBE42:
.LBB43:
	.loc 1 249 0
	li 8,0
.LVL107:
.L137:
.LBE43:
.LBB44:
	.loc 1 239 0
	lfs 0,0(31)
.LBE44:
.LBB45:
	.loc 1 249 0
	slwi 0,8,2
	add 9,3,0
.LBE45:
.LBB46:
	.loc 1 239 0
	addi 10,31,4
.LVL108:
	stfsx 0,3,0
	addi 9,9,16
	li 11,1
.L135:
	.loc 1 237 0
	cmpwi 7,11,3
	.loc 1 239 0
	lfs 0,0(10)
	.loc 1 237 0
	addi 11,11,1
	.loc 1 239 0
	addi 10,10,4
	stfs 0,0(9)
	.loc 1 237 0
	addi 9,9,16
	bne+ 7,.L135
	.loc 1 235 0
	cmpwi 7,8,3
	.loc 1 237 0
	addi 31,31,16
.LVL109:
	.loc 1 235 0
	addi 8,8,1
	bne+ 7,.L137
	.loc 1 243 0
	lwz 3,curmtx@l(30)
.LVL110:
	bl TopPrjMtx
.LVL111:
.LBE46:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL112:
	addi 1,1,16
.LBB47:
	.loc 1 243 0
	b computeZplanes
.LVL113:
.L149:
.LBE47:
	.loc 1 222 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,222
	bl _glSetErrorEx
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
.LVL114:
	mtlr 0
	addi 1,1,16
	blr
.LFE74:
	.size	glLoadMatrixf, .-glLoadMatrixf
	.align 2
	.globl gluLookAt
	.type	gluLookAt, @function
gluLookAt:
.LFB87:
	.loc 1 630 0
.LVL115:
	mflr 0
.LCFI30:
	stwu 1,-120(1)
.LCFI31:
	.loc 1 632 0
	lis 9,cur_state@ha
	.loc 1 630 0
	fmr 9,7
	stw 29,108(1)
.LCFI32:
	stw 0,124(1)
.LCFI33:
	stw 31,116(1)
.LCFI34:
	.loc 1 632 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L160
.LVL116:
	.loc 1 638 0
	lis 9,cur_mode@ha
	.loc 1 635 0
	lfd 0,128(1)
	.loc 1 638 0
	lwz 0,cur_mode@l(9)
	.loc 1 634 0
	frsp 10,3
	frsp 7,1
	.loc 1 638 0
	cmpwi 7,0,5889
	.loc 1 635 0
	frsp 3,0
.LVL117:
	.loc 1 634 0
	frsp 11,2
	stfs 10,16(1)
	.loc 1 635 0
	frsp 9,9
.LVL118:
	.loc 1 634 0
	stfs 7,8(1)
	.loc 1 635 0
	frsp 8,8
.LVL119:
	stfs 3,28(1)
	.loc 1 636 0
	frsp 0,4
	.loc 1 634 0
	stfs 11,12(1)
	.loc 1 636 0
	frsp 13,5
	.loc 1 635 0
	stfs 9,20(1)
	.loc 1 636 0
	frsp 12,6
	.loc 1 635 0
	stfs 8,24(1)
	.loc 1 636 0
	stfs 0,32(1)
	stfs 13,36(1)
	stfs 12,40(1)
	.loc 1 638 0
	beq- 7,.L161
.LBB48:
	.loc 1 656 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL120:
	.loc 1 658 0
	cmpwi 7,3,0
	beq- 7,.L159
	.loc 1 663 0
	addi 4,1,8
	addi 5,1,20
	addi 6,1,32
	bl guLookAt
.LVL121:
.L159:
.LBE48:
	.loc 1 665 0
	lwz 0,124(1)
	lwz 29,108(1)
	lwz 31,116(1)
.LVL122:
	mtlr 0
	addi 1,1,120
	blr
.LVL123:
.L161:
.LBB49:
	.loc 1 640 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopMtx44
.LVL124:
	.loc 1 643 0
	mr. 31,3
.LVL125:
	beq- 0,.L159
	.loc 1 648 0
	addi 29,1,44
	addi 5,1,20
	addi 6,1,32
	mr 3,29
	addi 4,1,8
	bl guLookAt
	.loc 1 650 0
	mr 4,31
	mr 3,29
	bl CopyMtxToMtx44
	.loc 1 652 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopPrjMtx
	bl computeZplanes
.LBE49:
	.loc 1 665 0
	lwz 0,124(1)
	lwz 29,108(1)
	lwz 31,116(1)
.LVL126:
	mtlr 0
	addi 1,1,120
	blr
.LVL127:
.L160:
	.loc 1 632 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,632
	bl _glSetErrorEx
.LVL128:
	.loc 1 665 0
	lwz 0,124(1)
	lwz 29,108(1)
	lwz 31,116(1)
	mtlr 0
	addi 1,1,120
	blr
.LFE87:
	.size	gluLookAt, .-gluLookAt
	.align 2
	.globl glPushMatrix
	.type	glPushMatrix, @function
glPushMatrix:
.LFB82:
	.loc 1 499 0
	mflr 0
.LCFI35:
	stwu 1,-8(1)
.LCFI36:
	.loc 1 501 0
	lis 9,cur_state@ha
	.loc 1 499 0
	stw 0,12(1)
.LCFI37:
	.loc 1 501 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L163
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,501
	bl _glSetErrorEx
	.loc 1 504 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L163:
	.loc 1 503 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl Push
	.loc 1 504 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE82:
	.size	glPushMatrix, .-glPushMatrix
	.align 2
	.globl glPopMatrix
	.type	glPopMatrix, @function
glPopMatrix:
.LFB81:
	.loc 1 493 0
	mflr 0
.LCFI38:
	stwu 1,-8(1)
.LCFI39:
	.loc 1 494 0
	lis 9,cur_state@ha
	.loc 1 493 0
	stw 0,12(1)
.LCFI40:
	.loc 1 494 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L168
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,494
	bl _glSetErrorEx
	.loc 1 497 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.L168:
	.loc 1 496 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl Pop
	.loc 1 497 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE81:
	.size	glPopMatrix, .-glPopMatrix
	.align 2
	.globl glMultMatrixf
	.type	glMultMatrixf, @function
glMultMatrixf:
.LFB80:
	.loc 1 430 0
.LVL129:
	mflr 0
.LCFI41:
	stwu 1,-200(1)
.LCFI42:
	.loc 1 431 0
	lis 9,cur_state@ha
	.loc 1 430 0
	stw 30,192(1)
.LCFI43:
	mr 30,3
	stw 0,204(1)
.LCFI44:
	stw 28,184(1)
.LCFI45:
	.loc 1 431 0
	lwz 0,cur_state@l(9)
	.loc 1 430 0
	stw 29,188(1)
.LCFI46:
	.loc 1 431 0
	andi. 9,0,1
	.loc 1 430 0
	stw 31,196(1)
.LCFI47:
	.loc 1 431 0
	bne- 0,.L197
.LVL130:
	.loc 1 434 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L198
.LBB50:
	.loc 1 476 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 479 0
	mr. 31,3
.LVL131:
	beq- 0,.L188
	.loc 1 487 0
	addi 29,1,8
	mr 3,30
	mr 4,29
	bl CopyGLfloatToMtx
	.loc 1 489 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL132:
	bl ps_guMtxConcat
.LVL133:
.L188:
.LBE50:
	.loc 1 491 0
	lwz 0,204(1)
	lwz 28,184(1)
	lwz 29,188(1)
	mtlr 0
	lwz 30,192(1)
.LVL134:
	lwz 31,196(1)
.LVL135:
	addi 1,1,200
	blr
.LVL136:
.L198:
.LBB51:
	.loc 1 436 0
	lis 28,curmtx@ha
	lwz 3,curmtx@l(28)
	bl TopMtx44
	.loc 1 438 0
	mr. 31,3
.LVL137:
	beq- 0,.L188
	.loc 1 448 0
	addi 29,1,56
	mr 3,30
	mr 4,29
	bl CopyGLfloatToMtx44
	.loc 1 456 0
	lis 9,.LC2@ha
	lfs 11,.LC2@l(9)
	.loc 1 448 0
	mr 3,31
	mr 7,31
.LVL138:
	li 6,0
.LVL139:
	addi 5,1,120
.LVL140:
.L179:
	.loc 1 464 0
	slwi 0,6,4
	li 10,0
	add 8,5,0
.L180:
	.loc 1 456 0
	stfs 11,0(8)
	slwi 9,10,2
	.loc 1 459 0
	lfsx 13,29,9
	.loc 1 456 0
	add 9,29,9
	.loc 1 459 0
	lfs 0,0(7)
	addi 9,9,16
	li 11,4
	fmadds 12,0,13,11
.L181:
	.loc 1 457 0
	cmpwi 7,11,12
	.loc 1 459 0
	lfsx 13,11,7
	lfs 0,0(9)
	.loc 1 457 0
	addi 11,11,4
	.loc 1 459 0
	addi 9,9,16
	fmadds 12,13,0,12
	.loc 1 457 0
	bne+ 7,.L181
	.loc 1 454 0
	cmpwi 7,10,3
	.loc 1 457 0
	stfs 12,0(8)
	.loc 1 454 0
	addi 10,10,1
	addi 8,8,4
	bne+ 7,.L180
	.loc 1 452 0
	cmpwi 7,6,3
	addi 7,7,16
	addi 6,6,1
	bne+ 7,.L179
	li 0,4
.LBE51:
.LBB52:
	.loc 1 489 0
	mr 9,5
	mtctr 0
.L187:
.LBE52:
.LBB53:
	.loc 1 468 0
	lfs 0,0(9)
	stfs 0,0(3)
	lfs 13,4(9)
	stfs 13,4(3)
	lfs 0,8(9)
	stfs 0,8(3)
	lfs 13,12(9)
	addi 9,9,16
	stfs 13,12(3)
	addi 3,3,16
	.loc 1 464 0
	bdnz .L187
	.loc 1 472 0
	lwz 3,curmtx@l(28)
	bl TopPrjMtx
.LVL141:
	bl computeZplanes
.LBE53:
	.loc 1 491 0
	lwz 0,204(1)
	lwz 28,184(1)
	lwz 29,188(1)
	mtlr 0
	lwz 30,192(1)
.LVL142:
	lwz 31,196(1)
	addi 1,1,200
	blr
.LVL143:
.L197:
	.loc 1 431 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,431
	bl _glSetErrorEx
	.loc 1 491 0
	lwz 0,204(1)
	lwz 28,184(1)
	lwz 29,188(1)
	mtlr 0
	lwz 30,192(1)
.LVL144:
	lwz 31,196(1)
	addi 1,1,200
	blr
.LFE80:
	.size	glMultMatrixf, .-glMultMatrixf
	.align 2
	.globl glScalef
	.type	glScalef, @function
glScalef:
.LFB79:
	.loc 1 397 0
.LVL145:
	mflr 0
.LCFI48:
	stwu 1,-160(1)
.LCFI49:
	.loc 1 398 0
	lis 9,cur_state@ha
	.loc 1 397 0
	stfd 29,136(1)
.LCFI50:
	fmr 29,3
	stw 0,164(1)
.LCFI51:
	stfd 30,144(1)
.LCFI52:
	fmr 30,2
	.loc 1 398 0
	lwz 0,cur_state@l(9)
	.loc 1 397 0
	stfd 31,152(1)
.LCFI53:
	fmr 31,1
	.loc 1 398 0
	andi. 9,0,1
	.loc 1 397 0
	stw 29,124(1)
.LCFI54:
	stw 31,132(1)
.LCFI55:
	.loc 1 398 0
	bne- 0,.L207
.LVL146:
	.loc 1 400 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L208
.LBB54:
	.loc 1 416 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 418 0
	mr. 31,3
.LVL147:
	beq- 0,.L206
	.loc 1 423 0
	addi 29,1,8
	mr 3,29
	bl ps_guMtxIdentity
	.loc 1 424 0
	fmr 1,31
	fmr 2,30
	mr 3,29
	fmr 3,29
	bl ps_guMtxScale
	.loc 1 425 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL148:
	bl ps_guMtxConcat
.LVL149:
.L206:
.LBE54:
	.loc 1 427 0
	lwz 0,164(1)
	lwz 29,124(1)
	lwz 31,132(1)
.LVL150:
	mtlr 0
	lfd 29,136(1)
.LVL151:
	lfd 30,144(1)
.LVL152:
	lfd 31,152(1)
.LVL153:
	addi 1,1,160
	blr
.LVL154:
.L208:
.LBB55:
	.loc 1 408 0
	lis 9,.LC0@ha
	.loc 1 405 0
	li 0,0
	.loc 1 408 0
	lfs 0,.LC0@l(9)
	.loc 1 410 0
	addi 3,1,56
	.loc 1 408 0
	stw 0,100(1)
	.loc 1 405 0
	stw 0,72(1)
	stw 0,88(1)
	stw 0,104(1)
	.loc 1 406 0
	stw 0,60(1)
	stw 0,92(1)
	stw 0,108(1)
	.loc 1 407 0
	stw 0,64(1)
	stw 0,80(1)
	stw 0,112(1)
	.loc 1 408 0
	stw 0,68(1)
	stw 0,84(1)
	.loc 1 405 0
	stfs 1,56(1)
	.loc 1 406 0
	stfs 2,76(1)
	.loc 1 407 0
	stfs 3,96(1)
	.loc 1 408 0
	stfs 0,116(1)
	.loc 1 410 0
	bl glMultMatrixf
.LBE55:
	.loc 1 427 0
	lwz 0,164(1)
	lwz 29,124(1)
	lwz 31,132(1)
	mtlr 0
	lfd 29,136(1)
.LVL155:
	lfd 30,144(1)
.LVL156:
	lfd 31,152(1)
.LVL157:
	addi 1,1,160
	blr
.LVL158:
.L207:
	.loc 1 398 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,398
	bl _glSetErrorEx
	.loc 1 427 0
	lwz 0,164(1)
	lwz 29,124(1)
	lwz 31,132(1)
	mtlr 0
	lfd 29,136(1)
.LVL159:
	lfd 30,144(1)
.LVL160:
	lfd 31,152(1)
.LVL161:
	addi 1,1,160
	blr
.LFE79:
	.size	glScalef, .-glScalef
	.align 2
	.globl glRotatef
	.type	glRotatef, @function
glRotatef:
.LFB78:
	.loc 1 352 0
.LVL162:
	mflr 0
.LCFI56:
	stwu 1,-192(1)
.LCFI57:
	.loc 1 353 0
	lis 9,cur_state@ha
	.loc 1 352 0
	stfd 27,152(1)
.LCFI58:
	fmr 27,3
	stw 0,196(1)
.LCFI59:
	stfd 28,160(1)
.LCFI60:
	fmr 28,2
	.loc 1 353 0
	lwz 0,cur_state@l(9)
	.loc 1 352 0
	stfd 29,168(1)
.LCFI61:
	fmr 29,4
	.loc 1 353 0
	andi. 9,0,1
	.loc 1 352 0
	stfd 30,176(1)
.LCFI62:
	stfd 31,184(1)
.LCFI63:
	fmr 30,1
	stw 29,140(1)
.LCFI64:
	stw 31,148(1)
.LCFI65:
	.loc 1 353 0
	bne- 0,.L217
.LVL163:
	.loc 1 355 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L218
.LBB56:
	.loc 1 379 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 381 0
	mr. 31,3
.LVL164:
	beq- 0,.L216
	.loc 1 391 0
	addi 29,1,20
	.loc 1 388 0
	stfs 28,8(1)
	.loc 1 391 0
	mr 3,29
	.loc 1 389 0
	stfs 27,12(1)
	.loc 1 390 0
	stfs 29,16(1)
	.loc 1 391 0
	bl ps_guMtxIdentity
	.loc 1 392 0
	lis 9,.LC13@ha
	mr 3,29
	lfs 1,.LC13@l(9)
	addi 4,1,8
	fmuls 1,30,1
	bl ps_guMtxRotAxisRad
	.loc 1 393 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL165:
	bl ps_guMtxConcat
.LVL166:
.L216:
.LBE56:
	.loc 1 395 0
	lwz 0,196(1)
	lwz 29,140(1)
	lwz 31,148(1)
.LVL167:
	mtlr 0
	lfd 27,152(1)
.LVL168:
	lfd 28,160(1)
.LVL169:
	lfd 29,168(1)
.LVL170:
	lfd 30,176(1)
.LVL171:
	lfd 31,184(1)
	addi 1,1,192
	blr
.LVL172:
.L218:
.LBB57:
	.loc 1 358 0
	lis 9,.LC13@ha
	lfs 31,.LC13@l(9)
	fmuls 31,1,31
	fmr 1,31
	bl sinf
	fmr 30,1
.LVL173:
	.loc 1 359 0
	fmr 1,31
	bl cosf
	.loc 1 368 0
	lis 9,.LC0@ha
	lfs 2,.LC0@l(9)
	.loc 1 369 0
	fmuls 10,27,29
	.loc 1 368 0
	fmuls 12,27,28
	li 0,0
	fsubs 0,2,1
.LVL174:
	.loc 1 372 0
	addi 3,1,68
	.loc 1 368 0
	fmuls 11,28,29
	.loc 1 371 0
	stw 0,112(1)
	.loc 1 369 0
	fmuls 6,28,30
	.loc 1 368 0
	stw 0,116(1)
	fmuls 7,29,30
	.loc 1 369 0
	stw 0,120(1)
	.loc 1 368 0
	fmuls 30,27,30
.LVL175:
	.loc 1 370 0
	stw 0,124(1)
	.loc 1 368 0
	fmuls 12,0,12
	.loc 1 371 0
	stw 0,80(1)
	.loc 1 368 0
	fmuls 11,0,11
	.loc 1 371 0
	stw 0,96(1)
	.loc 1 369 0
	fmuls 10,0,10
	.loc 1 371 0
	stfs 2,128(1)
	.loc 1 369 0
	fmuls 8,27,27
	.loc 1 370 0
	fmuls 9,29,29
	.loc 1 368 0
	fmuls 13,28,28
	.loc 1 370 0
	fadds 4,11,30
	fmadds 9,0,9,1
	.loc 1 369 0
	fsubs 5,12,7
	.loc 1 370 0
	fsubs 3,10,6
	stfs 4,76(1)
	.loc 1 368 0
	fmadds 13,13,0,1
	.loc 1 370 0
	stfs 9,108(1)
	.loc 1 368 0
	fsubs 11,11,30
	.loc 1 369 0
	stfs 5,72(1)
	fmadds 0,0,8,1
	.loc 1 370 0
	stfs 3,92(1)
	.loc 1 368 0
	fadds 12,12,7
	stfs 13,68(1)
	.loc 1 369 0
	fadds 10,10,6
	.loc 1 368 0
	stfs 11,100(1)
	.loc 1 369 0
	stfs 0,88(1)
	.loc 1 368 0
	stfs 12,84(1)
	.loc 1 369 0
	stfs 10,104(1)
	.loc 1 372 0
	bl glMultMatrixf
.LVL176:
.LBE57:
	.loc 1 395 0
	lwz 0,196(1)
	lwz 29,140(1)
	lwz 31,148(1)
	mtlr 0
	lfd 27,152(1)
.LVL177:
	lfd 28,160(1)
.LVL178:
	lfd 29,168(1)
.LVL179:
	lfd 30,176(1)
	lfd 31,184(1)
	addi 1,1,192
	blr
.LVL180:
.L217:
	.loc 1 353 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,353
	bl _glSetErrorEx
	.loc 1 395 0
	lwz 0,196(1)
	lwz 29,140(1)
	lwz 31,148(1)
	mtlr 0
	lfd 27,152(1)
.LVL181:
	lfd 28,160(1)
.LVL182:
	lfd 29,168(1)
.LVL183:
	lfd 30,176(1)
.LVL184:
	lfd 31,184(1)
	addi 1,1,192
	blr
.LFE78:
	.size	glRotatef, .-glRotatef
	.align 2
	.globl glTranslatef
	.type	glTranslatef, @function
glTranslatef:
.LFB76:
	.loc 1 313 0
.LVL185:
	mflr 0
.LCFI66:
	stwu 1,-160(1)
.LCFI67:
	.loc 1 314 0
	lis 9,cur_state@ha
	.loc 1 313 0
	stfd 29,136(1)
.LCFI68:
	fmr 29,3
	stw 0,164(1)
.LCFI69:
	stfd 30,144(1)
.LCFI70:
	fmr 30,2
	.loc 1 314 0
	lwz 0,cur_state@l(9)
	.loc 1 313 0
	stfd 31,152(1)
.LCFI71:
	fmr 31,1
	.loc 1 314 0
	andi. 9,0,1
	.loc 1 313 0
	stw 29,124(1)
.LCFI72:
	stw 31,132(1)
.LCFI73:
	.loc 1 314 0
	bne- 0,.L227
.LVL186:
	.loc 1 316 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L228
.LBB58:
	.loc 1 332 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 334 0
	mr. 31,3
.LVL187:
	beq- 0,.L226
	.loc 1 339 0
	addi 29,1,8
	mr 3,29
	bl ps_guMtxIdentity
	.loc 1 340 0
	fmr 1,31
	fmr 2,30
	mr 3,29
	fmr 3,29
	bl ps_guMtxTrans
	.loc 1 341 0
	mr 3,31
	mr 4,29
	mr 5,31
.LVL188:
	bl ps_guMtxConcat
.LVL189:
.L226:
.LBE58:
	.loc 1 343 0
	lwz 0,164(1)
	lwz 29,124(1)
	lwz 31,132(1)
.LVL190:
	mtlr 0
	lfd 29,136(1)
.LVL191:
	lfd 30,144(1)
.LVL192:
	lfd 31,152(1)
.LVL193:
	addi 1,1,160
	blr
.LVL194:
.L228:
.LBB59:
	.loc 1 321 0
	lis 9,.LC0@ha
	li 0,0
	lfs 0,.LC0@l(9)
	.loc 1 326 0
	addi 3,1,56
	.loc 1 324 0
	stw 0,100(1)
	.loc 1 321 0
	stw 0,72(1)
	stw 0,88(1)
	.loc 1 322 0
	stw 0,60(1)
	stw 0,92(1)
	.loc 1 323 0
	stw 0,64(1)
	stw 0,80(1)
	.loc 1 324 0
	stw 0,68(1)
	stw 0,84(1)
	.loc 1 321 0
	stfs 1,104(1)
	.loc 1 322 0
	stfs 2,108(1)
	.loc 1 323 0
	stfs 3,112(1)
	.loc 1 324 0
	stfs 0,116(1)
	.loc 1 321 0
	stfs 0,56(1)
	.loc 1 322 0
	stfs 0,76(1)
	.loc 1 323 0
	stfs 0,96(1)
	.loc 1 326 0
	bl glMultMatrixf
.LBE59:
	.loc 1 343 0
	lwz 0,164(1)
	lwz 29,124(1)
	lwz 31,132(1)
	mtlr 0
	lfd 29,136(1)
.LVL195:
	lfd 30,144(1)
.LVL196:
	lfd 31,152(1)
.LVL197:
	addi 1,1,160
	blr
.LVL198:
.L227:
	.loc 1 314 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,314
	bl _glSetErrorEx
	.loc 1 343 0
	lwz 0,164(1)
	lwz 29,124(1)
	lwz 31,132(1)
	mtlr 0
	lfd 29,136(1)
.LVL199:
	lfd 30,144(1)
.LVL200:
	lfd 31,152(1)
.LVL201:
	addi 1,1,160
	blr
.LFE76:
	.size	glTranslatef, .-glTranslatef
	.align 2
	.globl glTranslated
	.type	glTranslated, @function
glTranslated:
.LFB77:
	.loc 1 346 0
.LVL202:
	mflr 0
.LCFI74:
	stwu 1,-8(1)
.LCFI75:
	.loc 1 347 0
	lis 9,cur_state@ha
	.loc 1 346 0
	stw 0,12(1)
.LCFI76:
	.loc 1 347 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	beq- 0,.L230
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,347
	bl _glSetErrorEx
.LVL203:
	.loc 1 350 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LVL204:
.L230:
	lwz 0,12(1)
	.loc 1 349 0
	frsp 1,1
.LVL205:
	frsp 2,2
.LVL206:
	.loc 1 350 0
	addi 1,1,8
	.loc 1 349 0
	frsp 3,3
.LVL207:
	.loc 1 350 0
	mtlr 0
	.loc 1 349 0
	b glTranslatef
.LFE77:
	.size	glTranslated, .-glTranslated
	.align 2
	.globl glLoadIdentity
	.type	glLoadIdentity, @function
glLoadIdentity:
.LFB73:
	.loc 1 180 0
	mflr 0
.LCFI77:
	stwu 1,-16(1)
.LCFI78:
	.loc 1 181 0
	lis 9,cur_state@ha
	.loc 1 180 0
	stw 31,12(1)
.LCFI79:
	stw 0,20(1)
.LCFI80:
	.loc 1 181 0
	lwz 0,cur_state@l(9)
	andi. 9,0,1
	bne- 0,.L243
	.loc 1 183 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L244
.LBB60:
	.loc 1 209 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 211 0
	cmpwi 7,3,0
	beq- 7,.L242
	.loc 1 216 0
	bl ps_guMtxIdentity
.LVL208:
.L242:
.LBE60:
	.loc 1 218 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL209:
	addi 1,1,16
	mtlr 0
	blr
.L244:
.LBB61:
	.loc 1 185 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
	.loc 1 187 0
	mr. 31,3
.LVL210:
	beq- 0,.L242
	.loc 1 196 0
	li 4,0
	li 5,64
	bl memset
	.loc 1 203 0
	li 0,1
	stb 0,64(31)
	.loc 1 200 0
	lis 9,.LC0@ha
	.loc 1 205 0
	lis 11,.LC15@ha
	.loc 1 200 0
	lfs 13,.LC0@l(9)
.LBE61:
	.loc 1 218 0
	lwz 0,20(1)
.LBB62:
	.loc 1 205 0
	lfs 0,.LC15@l(11)
	.loc 1 204 0
	stfs 13,68(31)
.LBE62:
	.loc 1 218 0
	mtlr 0
.LBB63:
	.loc 1 205 0
	stfs 0,72(31)
	.loc 1 200 0
	stfs 13,0(31)
	stfs 13,20(31)
	stfs 13,40(31)
	stfs 13,60(31)
.LBE63:
	.loc 1 218 0
	lwz 31,12(1)
.LVL211:
	addi 1,1,16
	blr
.L243:
	.loc 1 181 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,181
	bl _glSetErrorEx
	.loc 1 218 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	blr
.LFE73:
	.size	glLoadIdentity, .-glLoadIdentity
	.align 2
	.globl glOrtho
	.type	glOrtho, @function
glOrtho:
.LFB71:
	.loc 1 115 0
.LVL212:
	mflr 0
.LCFI81:
	stwu 1,-136(1)
.LCFI82:
	.loc 1 116 0
	lis 9,cur_state@ha
	.loc 1 115 0
	stfd 26,88(1)
.LCFI83:
	fmr 26,2
	stw 0,140(1)
.LCFI84:
	stfd 27,96(1)
.LCFI85:
	fmr 27,1
	.loc 1 116 0
	lwz 0,cur_state@l(9)
	.loc 1 115 0
	stfd 28,104(1)
.LCFI86:
	fmr 28,3
	.loc 1 116 0
	andi. 9,0,1
	.loc 1 115 0
	stfd 29,112(1)
.LCFI87:
	stfd 30,120(1)
.LCFI88:
	fmr 29,4
	stfd 31,128(1)
.LCFI89:
	fmr 30,5
	stw 29,76(1)
.LCFI90:
	fmr 31,6
	stw 31,84(1)
.LCFI91:
	.loc 1 116 0
	bne- 0,.L258
.LVL213:
	.loc 1 118 0
	fcmpu 7,1,2
	beq- 7,.L249
.LVL214:
	fcmpu 7,3,4
	beq- 7,.L249
.LVL215:
	.loc 1 124 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L259
.LBB64:
	.loc 1 143 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL216:
	.loc 1 145 0
	mr. 31,3
.LVL217:
	beq- 0,.L257
	.loc 1 150 0
	frsp 1,29
	addi 29,1,8
	frsp 2,28
	mr 3,29
	frsp 3,27
	frsp 4,26
	frsp 5,30
	frsp 6,31
	bl guOrtho
	.loc 1 152 0
	mr 3,29
	mr 4,31
	bl CopyMtx44ToMtx
.LBE64:
	.loc 1 154 0
	lwz 0,140(1)
	lwz 29,76(1)
	lwz 31,84(1)
.LVL218:
	mtlr 0
	lfd 26,88(1)
.LVL219:
	lfd 27,96(1)
.LVL220:
	lfd 28,104(1)
.LVL221:
	lfd 29,112(1)
.LVL222:
	lfd 30,120(1)
.LVL223:
	lfd 31,128(1)
.LVL224:
	addi 1,1,136
	blr
.LVL225:
.L249:
	.loc 1 120 0
	lis 4,.LC3@ha
	li 3,1281
	la 4,.LC3@l(4)
	li 5,120
	bl _glSetErrorEx
.LVL226:
.LVL227:
.L257:
	.loc 1 154 0
	lwz 0,140(1)
	lwz 29,76(1)
.LVL228:
	lwz 31,84(1)
.LVL229:
	mtlr 0
	lfd 26,88(1)
.LVL230:
	lfd 27,96(1)
.LVL231:
	lfd 28,104(1)
.LVL232:
	lfd 29,112(1)
.LVL233:
	lfd 30,120(1)
.LVL234:
	lfd 31,128(1)
.LVL235:
	addi 1,1,136
	blr
.LVL236:
.L258:
	.loc 1 116 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,116
	bl _glSetErrorEx
	.loc 1 154 0
	lwz 0,140(1)
	lwz 29,76(1)
	lwz 31,84(1)
	mtlr 0
	lfd 26,88(1)
.LVL237:
	lfd 27,96(1)
.LVL238:
	lfd 28,104(1)
.LVL239:
	lfd 29,112(1)
.LVL240:
	lfd 30,120(1)
.LVL241:
	lfd 31,128(1)
.LVL242:
	addi 1,1,136
	blr
.LVL243:
.L259:
.LBB65:
	.loc 1 126 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL244:
	.loc 1 128 0
	mr. 29,3
.LVL245:
	beq- 0,.L257
	.loc 1 134 0
	frsp 30,30
.LVL246:
	frsp 31,31
.LVL247:
	frsp 1,29
	frsp 2,28
	frsp 3,27
	frsp 4,26
	fmr 5,30
	fmr 6,31
	bl guOrtho
	.loc 1 135 0
	li 0,1
	.loc 1 138 0
	stfs 31,72(29)
	.loc 1 135 0
	stb 0,64(29)
	.loc 1 137 0
	stfs 30,68(29)
	b .L257
.LBE65:
.LFE71:
	.size	glOrtho, .-glOrtho
	.align 2
	.globl glFrustum
	.type	glFrustum, @function
glFrustum:
.LFB70:
	.loc 1 79 0
.LVL248:
	mflr 0
.LCFI92:
	stwu 1,-136(1)
.LCFI93:
	.loc 1 80 0
	lis 9,cur_state@ha
	.loc 1 79 0
	stw 31,84(1)
.LCFI94:
	stw 0,140(1)
.LCFI95:
	stfd 26,88(1)
.LCFI96:
	fmr 26,2
	.loc 1 80 0
	lwz 0,cur_state@l(9)
	.loc 1 79 0
	stfd 27,96(1)
.LCFI97:
	fmr 27,1
	.loc 1 80 0
	andi. 31,0,1
	.loc 1 79 0
	stfd 28,104(1)
.LCFI98:
	stfd 29,112(1)
.LCFI99:
	fmr 28,3
	stfd 30,120(1)
.LCFI100:
	fmr 29,4
	stfd 31,128(1)
.LCFI101:
	fmr 30,5
	stw 28,72(1)
.LCFI102:
	fmr 31,6
	stw 29,76(1)
.LCFI103:
	.loc 1 80 0
	bne- 0,.L268
.LVL249:
	.loc 1 82 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L269
.LBB66:
	.loc 1 101 0
	lis 9,curmtx@ha
	.loc 1 103 0
	addi 29,1,8
	.loc 1 101 0
	lwz 3,curmtx@l(9)
	bl TopMtx
	.loc 1 103 0
	frsp 1,29
	frsp 2,28
	.loc 1 101 0
	mr 28,3
.LVL250:
	.loc 1 103 0
	frsp 3,27
	mr 3,29
	frsp 4,26
	frsp 5,30
	frsp 6,31
	bl guFrustum
	.loc 1 105 0
	mr 3,29
	mr 4,28
	bl CopyMtx44ToMtx
.LVL251:
.L267:
.LBE66:
	.loc 1 107 0
	lwz 0,140(1)
	lwz 28,72(1)
.LVL252:
	lwz 29,76(1)
	mtlr 0
	lwz 31,84(1)
	lfd 26,88(1)
.LVL253:
	lfd 27,96(1)
.LVL254:
	lfd 28,104(1)
.LVL255:
	lfd 29,112(1)
.LVL256:
	lfd 30,120(1)
.LVL257:
	lfd 31,128(1)
.LVL258:
	addi 1,1,136
	blr
.LVL259:
.L269:
.LBB67:
	.loc 1 84 0
	lis 29,projection_stack@ha
	la 29,projection_stack@l(29)
	mr 3,29
	bl TopPrjMtx
	mr 28,3
.LVL260:
	.loc 1 85 0
	mr 3,29
	bl TopMtx44
	.loc 1 87 0
	cmpwi 7,3,0
	beq- 7,.L267
	.loc 1 92 0
	frsp 30,30
.LVL261:
	frsp 31,31
.LVL262:
	frsp 1,29
	frsp 2,28
	frsp 3,27
	frsp 4,26
	fmr 5,30
	fmr 6,31
	bl guFrustum
	.loc 1 93 0
	stb 31,64(28)
	.loc 1 96 0
	stfs 31,72(28)
.LBE67:
	.loc 1 107 0
	lwz 0,140(1)
.LBB68:
	.loc 1 95 0
	stfs 30,68(28)
.LBE68:
	.loc 1 107 0
	lwz 29,76(1)
	mtlr 0
	lwz 28,72(1)
.LVL263:
	lwz 31,84(1)
	lfd 26,88(1)
.LVL264:
	lfd 27,96(1)
.LVL265:
	lfd 28,104(1)
.LVL266:
	lfd 29,112(1)
.LVL267:
	lfd 30,120(1)
	lfd 31,128(1)
	addi 1,1,136
	blr
.LVL268:
.L268:
	.loc 1 80 0
	lis 4,.LC3@ha
	li 3,1282
	la 4,.LC3@l(4)
	li 5,80
	bl _glSetErrorEx
	.loc 1 107 0
	lwz 0,140(1)
	lwz 28,72(1)
	lwz 29,76(1)
	mtlr 0
	lwz 31,84(1)
	lfd 26,88(1)
.LVL269:
	lfd 27,96(1)
.LVL270:
	lfd 28,104(1)
.LVL271:
	lfd 29,112(1)
.LVL272:
	lfd 30,120(1)
.LVL273:
	lfd 31,128(1)
.LVL274:
	addi 1,1,136
	blr
.LFE70:
	.size	glFrustum, .-glFrustum
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC2:
	.4byte	0
.LC13:
	.4byte	1016003125
.LC15:
	.4byte	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC6:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC3:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_matrix.c"
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
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI1-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x4
	.4byte	.LCFI4-.LFB88
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI7-.LCFI4
	.byte	0xbc
	.uleb128 0x8
	.byte	0x9c
	.uleb128 0xc
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI10-.LCFI8
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x9d
	.uleb128 0xb
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI12-.LFB84
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI14-.LCFI12
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
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI16-.LFB83
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI18-.LCFI16
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI21-.LFB75
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI24-.LCFI22
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI26-.LFB74
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI29-.LCFI27
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI31-.LFB87
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI34-.LCFI31
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI36-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI39-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI42-.LFB80
	.byte	0xe
	.uleb128 0xc8
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI45-.LCFI43
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI47-.LCFI45
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9d
	.uleb128 0x3
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI49-.LFB79
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xbd
	.uleb128 0x6
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI52-.LCFI50
	.byte	0xbe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI55-.LCFI53
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9d
	.uleb128 0x9
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI57-.LFB78
	.byte	0xe
	.uleb128 0xc0
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xbb
	.uleb128 0xa
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI60-.LCFI58
	.byte	0xbc
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI63-.LCFI61
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI65-.LCFI63
	.byte	0x9f
	.uleb128 0xb
	.byte	0x9d
	.uleb128 0xd
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI67-.LFB76
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xbd
	.uleb128 0x6
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI70-.LCFI68
	.byte	0xbe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI73-.LCFI71
	.byte	0x9f
	.uleb128 0x7
	.byte	0x9d
	.uleb128 0x9
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI75-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI78-.LFB73
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI80-.LCFI78
	.byte	0x9f
	.uleb128 0x1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI82-.LFB71
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xba
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI85-.LCFI83
	.byte	0xbb
	.uleb128 0xa
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI88-.LCFI86
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI90-.LCFI88
	.byte	0x9d
	.uleb128 0xf
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0x9f
	.uleb128 0xd
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI93-.LFB70
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI96-.LCFI93
	.byte	0xba
	.uleb128 0xc
	.byte	0x9f
	.uleb128 0xd
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI99-.LCFI97
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI101-.LCFI99
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI103-.LCFI101
	.byte	0x9d
	.uleb128 0xf
	.byte	0x9c
	.uleb128 0x10
	.align 2
.LEFDE42:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB88-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE88-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB83-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL83-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB87-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 200
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI49-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LFB78-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 192
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI67-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI75-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI78-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI82-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL244-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL244-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL244-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL244-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI93-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 4 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 7 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/glint.h"
	.file 8 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x1711
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x1
	.4byte	.LASF211
	.4byte	.LASF212
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x7
	.string	"u8"
	.byte	0x2
	.byte	0xf
	.4byte	0x3a
	.uleb128 0x7
	.string	"u32"
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x7
	.string	"f32"
	.byte	0x2
	.byte	0x29
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0x35
	.4byte	0x97
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0xc
	.byte	0x4
	.byte	0x27
	.4byte	0xf3
	.uleb128 0x9
	.string	"x"
	.byte	0x4
	.byte	0x28
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x4
	.byte	0x28
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"z"
	.byte	0x4
	.byte	0x28
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x29
	.4byte	0xc2
	.uleb128 0x7
	.string	"Mtx"
	.byte	0x4
	.byte	0x2f
	.4byte	0x109
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x11f
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.4byte	0x12a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x130
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x140
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x35
	.4byte	0x14b
	.uleb128 0xa
	.4byte	0xac
	.4byte	0x161
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x36
	.4byte	0x12a
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x4
	.byte	0x5
	.2byte	0x3b8
	.4byte	0x1ae
	.uleb128 0xe
	.string	"r"
	.byte	0x5
	.2byte	0x3b9
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"g"
	.byte	0x5
	.2byte	0x3ba
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"b"
	.byte	0x5
	.2byte	0x3bb
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"a"
	.byte	0x5
	.2byte	0x3bc
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x3bd
	.4byte	0x16c
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x40
	.byte	0x5
	.2byte	0x3d6
	.4byte	0x1d7
	.uleb128 0xe
	.string	"val"
	.byte	0x5
	.2byte	0x3d7
	.4byte	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0xa1
	.4byte	0x1e7
	.uleb128 0xb
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x3d8
	.4byte	0x1ba
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x10
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x94
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x99
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x9d
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x9e
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x6
	.byte	0xa0
	.4byte	0x82
	.uleb128 0xc
	.byte	0x4
	.4byte	0x24d
	.uleb128 0x11
	.4byte	0x231
	.uleb128 0xc
	.byte	0x4
	.4byte	0x231
	.uleb128 0xc
	.byte	0x4
	.4byte	0x25e
	.uleb128 0x11
	.4byte	0x23c
	.uleb128 0xc
	.byte	0x4
	.4byte	0x23c
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x15
	.4byte	0x28a
	.uleb128 0x9
	.string	"v"
	.byte	0x7
	.byte	0x16
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"w"
	.byte	0x7
	.byte	0x17
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0x18
	.4byte	0x269
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.byte	0x1b
	.4byte	0x2b6
	.uleb128 0x9
	.string	"s"
	.byte	0x7
	.byte	0x1c
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"t"
	.byte	0x7
	.byte	0x1d
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0x1e
	.4byte	0x295
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x21
	.4byte	0x2fa
	.uleb128 0x9
	.string	"r"
	.byte	0x7
	.byte	0x22
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"g"
	.byte	0x7
	.byte	0x23
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"b"
	.byte	0x7
	.byte	0x24
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"a"
	.byte	0x7
	.byte	0x25
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x26
	.4byte	0x2c1
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x356
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x7
	.byte	0x43
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x7
	.byte	0x45
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x7
	.byte	0x46
	.4byte	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x7
	.byte	0x47
	.4byte	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x7
	.byte	0x48
	.4byte	0x305
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x4c
	.byte	0x7
	.byte	0x70
	.4byte	0x3a6
	.uleb128 0x9
	.string	"mat"
	.byte	0x7
	.byte	0x71
	.4byte	0x140
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x7
	.byte	0x72
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x7
	.byte	0x73
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x7
	.byte	0x74
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x7
	.byte	0x75
	.4byte	0x361
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x3f6
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x8
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x8
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x8
	.byte	0x12
	.4byte	0x3b1
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0xa4
	.byte	0x7
	.byte	0x83
	.4byte	0x4bc
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x7
	.byte	0x84
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"obj"
	.byte	0x7
	.byte	0x86
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"pos"
	.byte	0x7
	.byte	0x88
	.4byte	0x28a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x7
	.byte	0x8a
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x7
	.byte	0x8c
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x7
	.byte	0x8d
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x7
	.byte	0x8e
	.4byte	0x2fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x7
	.byte	0x90
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x7
	.byte	0x91
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x7
	.byte	0x92
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x7
	.byte	0x93
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x7
	.byte	0x94
	.4byte	0x89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x7
	.byte	0x95
	.4byte	0x401
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x44
	.byte	0x7
	.byte	0xa0
	.4byte	0x51a
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x7
	.byte	0xa1
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x7
	.byte	0xa2
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x7
	.byte	0xa3
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x7
	.byte	0xa4
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x7
	.byte	0xa5
	.4byte	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x7
	.byte	0xa6
	.4byte	0x4c7
	.uleb128 0x14
	.4byte	.LASF213
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.4byte	0x544
	.uleb128 0x15
	.4byte	.LASF65
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF66
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF67
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x7
	.byte	0xc3
	.4byte	0x525
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x10
	.byte	0x7
	.byte	0xe8
	.4byte	0x590
	.uleb128 0x9
	.string	"x"
	.byte	0x7
	.byte	0xe9
	.4byte	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x7
	.byte	0xea
	.4byte	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x7
	.byte	0xeb
	.4byte	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x7
	.byte	0xec
	.4byte	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x7
	.byte	0xed
	.4byte	0x54f
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x14
	.byte	0x7
	.byte	0xfb
	.4byte	0x5fe
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x7
	.byte	0xfc
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x7
	.byte	0xfd
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x7
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x7
	.byte	0xff
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x100
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x101
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x102
	.4byte	0x59b
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x8
	.byte	0x7
	.2byte	0x117
	.4byte	0x636
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x118
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x119
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x11a
	.4byte	0x60a
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x6c
	.byte	0x7
	.2byte	0x127
	.4byte	0x79a
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x128
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x12a
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x12b
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x12c
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x12d
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x12e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x12f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x130
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x131
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x132
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x133
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x135
	.4byte	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x137
	.4byte	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x138
	.4byte	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x13a
	.4byte	0x79a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x13b
	.4byte	0x79a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x13c
	.4byte	0x79a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x13d
	.4byte	0x79a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"tex"
	.byte	0x7
	.2byte	0x13f
	.4byte	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x141
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x143
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x144
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xa
	.4byte	0x1fa
	.4byte	0x7aa
	.uleb128 0xb
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x145
	.4byte	0x642
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x51
	.4byte	0x7fe
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.byte	0xc
	.4byte	0x7fe
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.byte	0xc
	.4byte	0x161
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.byte	0x0
	.uleb128 0x11
	.4byte	0x11f
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x51
	.4byte	0x84d
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.byte	0x1b
	.4byte	0x84d
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0x1
	.byte	0x1b
	.4byte	0x11f
	.4byte	.LLST4
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.byte	0x1
	.byte	0x59
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.byte	0x0
	.uleb128 0x11
	.4byte	0x161
	.uleb128 0x1d
	.4byte	.LASF214
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.4byte	0x869
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x27
	.4byte	0x869
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3a6
	.uleb128 0x1f
	.4byte	.LASF215
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.4byte	0x8ba
	.uleb128 0x20
	.string	"m"
	.byte	0x1
	.byte	0x35
	.4byte	0x869
	.byte	0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x37
	.4byte	0xac
	.byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.byte	0x38
	.4byte	0xac
	.byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.uleb128 0x21
	.4byte	0x852
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x3a
	.uleb128 0x22
	.4byte	0x85f
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x251
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x1
	.byte	0x51
	.4byte	0x907
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.2byte	0x250
	.4byte	0x247
	.4byte	.LLST7
	.uleb128 0x25
	.string	"mat"
	.byte	0x1
	.2byte	0x250
	.4byte	0x11f
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x252
	.4byte	0x25
	.byte	0x1
	.byte	0x5b
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.2byte	0x252
	.4byte	0x25
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x25f
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x1
	.byte	0x51
	.4byte	0x954
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x247
	.4byte	.LLST9
	.uleb128 0x25
	.string	"mat"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x161
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x260
	.4byte	0x25
	.byte	0x1
	.byte	0x5b
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.2byte	0x260
	.4byte	0x25
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST10
	.4byte	0x97d
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fa
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x29e
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LLST12
	.4byte	0xa1a
	.uleb128 0x29
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x29b
	.4byte	0x23c
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x29c
	.4byte	0x23c
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x29d
	.4byte	0x23c
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x29e
	.4byte	0x23c
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0xa05
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x140
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x2b3
	.4byte	0xa1a
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x869
	.4byte	.LLST18
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x224
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST19
	.4byte	0xa98
	.uleb128 0x29
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x223
	.4byte	0x1fa
	.4byte	.LLST20
	.uleb128 0x29
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x223
	.4byte	0x252
	.4byte	.LLST21
	.uleb128 0x2d
	.string	"pm"
	.byte	0x1
	.2byte	0x225
	.4byte	0x869
	.4byte	.LLST22
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x226
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.2byte	0x226
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x2e
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x22f
	.4byte	0x11f
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1fb
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LLST25
	.4byte	0xb06
	.uleb128 0x29
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x1fa
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x263
	.4byte	.LLST27
	.uleb128 0x2f
	.string	"pm"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x869
	.uleb128 0x2e
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x11f
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x58
	.4byte	.LLST28
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x58
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST30
	.4byte	0xb7b
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x258
	.4byte	.LLST31
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0xb64
	.uleb128 0x2b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x127
	.4byte	0xa1a
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0xd0
	.uleb128 0x2b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x114
	.4byte	0xb7b
	.4byte	.LLST35
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x140
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST36
	.4byte	0xbf0
	.uleb128 0x18
	.string	"m"
	.byte	0x1
	.byte	0xdc
	.4byte	0x247
	.4byte	.LLST37
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0xbda
	.uleb128 0x32
	.4byte	.LASF116
	.byte	0x1
	.byte	0xf7
	.4byte	0xa1a
	.4byte	.LLST40
	.byte	0x0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x128
	.uleb128 0x32
	.4byte	.LASF116
	.byte	0x1
	.byte	0xe4
	.4byte	0xb7b
	.4byte	.LLST41
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x276
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST42
	.4byte	0xd0d
	.uleb128 0x29
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x26e
	.4byte	0x23c
	.4byte	.LLST43
	.uleb128 0x29
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x26f
	.4byte	0x23c
	.4byte	.LLST44
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x270
	.4byte	0x23c
	.4byte	.LLST45
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x271
	.4byte	0x23c
	.4byte	.LLST46
	.uleb128 0x29
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x272
	.4byte	0x23c
	.4byte	.LLST47
	.uleb128 0x29
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x273
	.4byte	0x23c
	.4byte	.LLST48
	.uleb128 0x24
	.string	"upX"
	.byte	0x1
	.2byte	0x274
	.4byte	0x23c
	.4byte	.LLST49
	.uleb128 0x24
	.string	"upY"
	.byte	0x1
	.2byte	0x275
	.4byte	0x23c
	.4byte	.LLST50
	.uleb128 0x25
	.string	"upZ"
	.byte	0x1
	.2byte	0x276
	.4byte	0x23c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"cam"
	.byte	0x1
	.2byte	0x27a
	.4byte	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.string	"up"
	.byte	0x1
	.2byte	0x27b
	.4byte	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x27c
	.4byte	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0xce2
	.uleb128 0x2e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x290
	.4byte	0xa1a
	.byte	0x0
	.uleb128 0x34
	.4byte	.LBB49
	.4byte	.LBE49
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.2byte	0x280
	.4byte	0xb7b
	.4byte	.LLST51
	.uleb128 0x26
	.string	"mat"
	.byte	0x1
	.2byte	0x281
	.4byte	0xfe
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1f3
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST52
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1ed
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST53
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1ae
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST54
	.4byte	0xdf2
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x247
	.4byte	.LLST55
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x25
	.4byte	.LLST56
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x25
	.4byte	.LLST57
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x158
	.4byte	0xda7
	.uleb128 0x2b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1dc
	.4byte	0xa1a
	.4byte	.LLST58
	.uleb128 0x26
	.string	"mat"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0xfe
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.byte	0x0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x170
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xb7b
	.4byte	.LLST59
	.uleb128 0x2e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x161
	.uleb128 0x26
	.string	"mat"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x140
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x140
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"k"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x25
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x18d
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST60
	.4byte	0xe7f
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x231
	.4byte	.LLST61
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x231
	.4byte	.LLST62
	.uleb128 0x24
	.string	"z"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x231
	.4byte	.LLST63
	.uleb128 0x2a
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0xe64
	.uleb128 0x33
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x19e
	.4byte	0xfe
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xa1a
	.4byte	.LLST64
	.byte	0x0
	.uleb128 0x34
	.4byte	.LBB55
	.4byte	.LBE55
	.uleb128 0x26
	.string	"arr"
	.byte	0x1
	.2byte	0x193
	.4byte	0xe7f
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0x231
	.4byte	0xe8f
	.uleb128 0xb
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x160
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST65
	.4byte	0xf58
	.uleb128 0x29
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x160
	.4byte	0x231
	.4byte	.LLST66
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.2byte	0x160
	.4byte	0x231
	.4byte	.LLST67
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.2byte	0x160
	.4byte	0x231
	.4byte	.LLST68
	.uleb128 0x24
	.string	"z"
	.byte	0x1
	.2byte	0x160
	.4byte	0x231
	.4byte	.LLST69
	.uleb128 0x2a
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0xf21
	.uleb128 0x33
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x179
	.4byte	0xfe
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x17b
	.4byte	0xa1a
	.4byte	.LLST70
	.uleb128 0x33
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x182
	.4byte	0xf3
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.byte	0x0
	.uleb128 0x34
	.4byte	.LBB57
	.4byte	.LBE57
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x166
	.4byte	0x231
	.4byte	.LLST71
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.2byte	0x167
	.4byte	0x231
	.4byte	.LLST72
	.uleb128 0x26
	.string	"arr"
	.byte	0x1
	.2byte	0x16e
	.4byte	0xe7f
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x139
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST73
	.4byte	0xfe5
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.2byte	0x139
	.4byte	0x231
	.4byte	.LLST74
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.2byte	0x139
	.4byte	0x231
	.4byte	.LLST75
	.uleb128 0x24
	.string	"z"
	.byte	0x1
	.2byte	0x139
	.4byte	0x231
	.4byte	.LLST76
	.uleb128 0x2a
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	0xfca
	.uleb128 0x33
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x14a
	.4byte	0xfe
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x14c
	.4byte	0xa1a
	.4byte	.LLST77
	.byte	0x0
	.uleb128 0x34
	.4byte	.LBB59
	.4byte	.LBE59
	.uleb128 0x26
	.string	"arr"
	.byte	0x1
	.2byte	0x13f
	.4byte	0xe7f
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x15a
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST78
	.4byte	0x102a
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.2byte	0x159
	.4byte	0x23c
	.4byte	.LLST79
	.uleb128 0x24
	.string	"y"
	.byte	0x1
	.2byte	0x159
	.4byte	0x23c
	.4byte	.LLST80
	.uleb128 0x24
	.string	"z"
	.byte	0x1
	.2byte	0x159
	.4byte	0x23c
	.4byte	.LLST81
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST82
	.4byte	0x1084
	.uleb128 0x2a
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0x105c
	.uleb128 0x36
	.4byte	.LASF116
	.byte	0x1
	.byte	0xd1
	.4byte	0xa1a
	.byte	0x0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x188
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0xb9
	.4byte	0x869
	.4byte	.LLST83
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x58
	.uleb128 0x36
	.4byte	.LASF116
	.byte	0x1
	.byte	0xc2
	.4byte	0x161
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST84
	.4byte	0x113b
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x1
	.byte	0x6d
	.4byte	0x23c
	.4byte	.LLST85
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x1
	.byte	0x6e
	.4byte	0x23c
	.4byte	.LLST86
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x6f
	.4byte	0x23c
	.4byte	.LLST87
	.uleb128 0x18
	.string	"top"
	.byte	0x1
	.byte	0x70
	.4byte	0x23c
	.4byte	.LLST88
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x1
	.byte	0x71
	.4byte	0x23c
	.4byte	.LLST89
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x1
	.byte	0x72
	.4byte	0x23c
	.4byte	.LLST90
	.uleb128 0x2a
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0x1123
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.4byte	0x140
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.4byte	.LASF116
	.byte	0x1
	.byte	0x8f
	.4byte	0xa1a
	.4byte	.LLST91
	.byte	0x0
	.uleb128 0x34
	.4byte	.LBB65
	.4byte	.LBE65
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0x7e
	.4byte	0x869
	.4byte	.LLST92
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST93
	.4byte	0x11f9
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x1
	.byte	0x49
	.4byte	0x23c
	.4byte	.LLST94
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x1
	.byte	0x4a
	.4byte	0x23c
	.4byte	.LLST95
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x4b
	.4byte	0x23c
	.4byte	.LLST96
	.uleb128 0x18
	.string	"top"
	.byte	0x1
	.byte	0x4c
	.4byte	0x23c
	.4byte	.LLST97
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0x1
	.byte	0x4d
	.4byte	0x23c
	.4byte	.LLST98
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.byte	0x4e
	.4byte	0x23c
	.4byte	.LLST99
	.uleb128 0x2a
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0x11da
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x64
	.4byte	0x140
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.4byte	.LASF116
	.byte	0x1
	.byte	0x65
	.4byte	0xa1a
	.4byte	.LLST100
	.byte	0x0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x1a8
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0x54
	.4byte	0x869
	.4byte	.LLST101
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x55
	.4byte	0xb7b
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF150
	.byte	0x7
	.byte	0x3c
	.4byte	0x2fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x37
	.4byte	.LASF151
	.byte	0x7
	.byte	0x3d
	.4byte	0xf3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xa
	.4byte	0x2b6
	.4byte	0x122d
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF152
	.byte	0x7
	.byte	0x3e
	.4byte	0x121d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x37
	.4byte	.LASF153
	.byte	0x7
	.byte	0x4a
	.4byte	0x356
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x37
	.4byte	.LASF154
	.byte	0x7
	.byte	0x4b
	.4byte	0x356
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xa
	.4byte	0x356
	.4byte	0x1273
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x38
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0x1263
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x37
	.4byte	.LASF101
	.byte	0x7
	.byte	0x4d
	.4byte	0x356
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xa
	.4byte	0xf3
	.4byte	0x12a8
	.uleb128 0x39
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF155
	.byte	0x7
	.byte	0x4f
	.4byte	0x1297
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x37
	.4byte	.LASF156
	.byte	0x7
	.byte	0x50
	.4byte	0x1297
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xa
	.4byte	0x2b6
	.4byte	0x12e3
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.uleb128 0x39
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF157
	.byte	0x7
	.byte	0x51
	.4byte	0x12cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xa
	.4byte	0x2fa
	.4byte	0x1306
	.uleb128 0x39
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF158
	.byte	0x7
	.byte	0x52
	.4byte	0x12f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x37
	.4byte	.LASF159
	.byte	0x7
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x37
	.4byte	.LASF160
	.byte	0x7
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x37
	.4byte	.LASF161
	.byte	0x7
	.byte	0x5e
	.4byte	0x1fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x37
	.4byte	.LASF162
	.byte	0x7
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x37
	.4byte	.LASF163
	.byte	0x7
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x37
	.4byte	.LASF164
	.byte	0x7
	.byte	0x6a
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x37
	.4byte	.LASF165
	.byte	0x7
	.byte	0x6b
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x37
	.4byte	.LASF166
	.byte	0x7
	.byte	0x6c
	.4byte	0x1fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x37
	.4byte	.LASF167
	.byte	0x7
	.byte	0x6d
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x37
	.4byte	.LASF168
	.byte	0x7
	.byte	0x79
	.4byte	0x3f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x37
	.4byte	.LASF169
	.byte	0x7
	.byte	0x7a
	.4byte	0x3f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xa
	.4byte	0x3f6
	.4byte	0x13ee
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF170
	.byte	0x7
	.byte	0x7b
	.4byte	0x13de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x37
	.4byte	.LASF171
	.byte	0x7
	.byte	0x7c
	.4byte	0x1412
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3f6
	.uleb128 0x37
	.4byte	.LASF172
	.byte	0x7
	.byte	0x7d
	.4byte	0x1fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xa
	.4byte	0x4bc
	.4byte	0x143a
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF173
	.byte	0x7
	.byte	0x98
	.4byte	0x142a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x37
	.4byte	.LASF174
	.byte	0x7
	.byte	0x9b
	.4byte	0x2fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x37
	.4byte	.LASF175
	.byte	0x7
	.byte	0xa8
	.4byte	0x51a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x37
	.4byte	.LASF176
	.byte	0x7
	.byte	0xab
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x37
	.4byte	.LASF177
	.byte	0x7
	.byte	0xac
	.4byte	0x1fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x37
	.4byte	.LASF178
	.byte	0x7
	.byte	0xb0
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x37
	.4byte	.LASF179
	.byte	0x7
	.byte	0xb7
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x37
	.4byte	.LASF180
	.byte	0x7
	.byte	0xb8
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x37
	.4byte	.LASF181
	.byte	0x7
	.byte	0xb9
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x7
	.byte	0xba
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x37
	.4byte	.LASF183
	.byte	0x7
	.byte	0xbc
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x37
	.4byte	.LASF184
	.byte	0x7
	.byte	0xc5
	.4byte	0x544
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x37
	.4byte	.LASF185
	.byte	0x7
	.byte	0xef
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x37
	.4byte	.LASF186
	.byte	0x7
	.byte	0xf0
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x37
	.4byte	.LASF187
	.byte	0x7
	.byte	0xf1
	.4byte	0x205
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x37
	.4byte	.LASF188
	.byte	0x7
	.byte	0xf2
	.4byte	0x590
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x37
	.4byte	.LASF189
	.byte	0x7
	.byte	0xf3
	.4byte	0x590
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x37
	.4byte	.LASF190
	.byte	0x7
	.byte	0xf4
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x37
	.4byte	.LASF191
	.byte	0x7
	.byte	0xf5
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x37
	.4byte	.LASF192
	.byte	0x7
	.byte	0xf7
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x37
	.4byte	.LASF193
	.byte	0x7
	.byte	0xf8
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x3a
	.4byte	.LASF194
	.byte	0x7
	.2byte	0x104
	.4byte	0x5fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x3a
	.4byte	.LASF195
	.byte	0x7
	.2byte	0x105
	.4byte	0x5fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xa
	.4byte	0xb7
	.4byte	0x15ea
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF196
	.byte	0x7
	.2byte	0x106
	.4byte	0x15da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x3a
	.4byte	.LASF197
	.byte	0x7
	.2byte	0x10c
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x3a
	.4byte	.LASF198
	.byte	0x7
	.2byte	0x10d
	.4byte	0x1fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x3a
	.4byte	.LASF199
	.byte	0x7
	.2byte	0x110
	.4byte	0x1ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xa
	.4byte	0x636
	.4byte	0x1646
	.uleb128 0xb
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF200
	.byte	0x7
	.2byte	0x124
	.4byte	0x1636
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x3a
	.4byte	.LASF201
	.byte	0x7
	.2byte	0x149
	.4byte	0xb7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x3a
	.4byte	.LASF202
	.byte	0x7
	.2byte	0x14a
	.4byte	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x3a
	.4byte	.LASF203
	.byte	0x7
	.2byte	0x14b
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x3a
	.4byte	.LASF204
	.byte	0x7
	.2byte	0x14c
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x3a
	.4byte	.LASF205
	.byte	0x7
	.2byte	0x14d
	.4byte	0xac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x3a
	.4byte	.LASF206
	.byte	0x7
	.2byte	0x14e
	.4byte	0x1ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xa
	.4byte	0x7aa
	.4byte	0x16db
	.uleb128 0xb
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF207
	.byte	0x7
	.2byte	0x150
	.4byte	0x16cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x3a
	.4byte	.LASF208
	.byte	0x7
	.2byte	0x155
	.4byte	0x1fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x3a
	.4byte	.LASF209
	.byte	0x7
	.2byte	0x158
	.4byte	0x21b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.4byte	0x527
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1715
	.4byte	0x7b6
	.string	"CopyMtxToMtx44"
	.4byte	0x803
	.string	"CopyMtx44ToMtx"
	.4byte	0x8ba
	.string	"CopyGLfloatToMtx"
	.4byte	0x907
	.string	"CopyGLfloatToMtx44"
	.4byte	0x954
	.string	"glMatrixMode"
	.4byte	0x97d
	.string	"gluPerspective"
	.4byte	0xa20
	.string	"_glGetMatrixf"
	.4byte	0xa98
	.string	"_glGetMatrixd"
	.4byte	0xb06
	.string	"glLoadMatrixd"
	.4byte	0xb81
	.string	"glLoadMatrixf"
	.4byte	0xbf0
	.string	"gluLookAt"
	.4byte	0xd0d
	.string	"glPushMatrix"
	.4byte	0xd23
	.string	"glPopMatrix"
	.4byte	0xd39
	.string	"glMultMatrixf"
	.4byte	0xdf2
	.string	"glScalef"
	.4byte	0xe8f
	.string	"glRotatef"
	.4byte	0xf58
	.string	"glTranslatef"
	.4byte	0xfe5
	.string	"glTranslated"
	.4byte	0x102a
	.string	"glLoadIdentity"
	.4byte	0x1084
	.string	"glOrtho"
	.4byte	0x113b
	.string	"glFrustum"
	.4byte	0x11f9
	.string	"_tempcolorelement"
	.4byte	0x120b
	.string	"_tempnormalelement"
	.4byte	0x122d
	.string	"_temptexcoordelement"
	.4byte	0x123f
	.string	"norm"
	.4byte	0x1251
	.string	"vert"
	.4byte	0x1273
	.string	"tex"
	.4byte	0x1285
	.string	"color"
	.4byte	0x12a8
	.string	"_normalelements"
	.4byte	0x12ba
	.string	"_vertexelements"
	.4byte	0x12e3
	.string	"_texcoordelements"
	.4byte	0x1306
	.string	"_colorelements"
	.4byte	0x1318
	.string	"vert_i"
	.4byte	0x132a
	.string	"_type"
	.4byte	0x133c
	.string	"_GLtype"
	.4byte	0x134e
	.string	"cur_tex"
	.4byte	0x1360
	.string	"cur_tex_client"
	.4byte	0x1372
	.string	"depthtestenabled"
	.4byte	0x1384
	.string	"depthupdate"
	.4byte	0x1396
	.string	"depthfunction"
	.4byte	0x13a8
	.string	"_cleardepth"
	.4byte	0x13ba
	.string	"model_stack"
	.4byte	0x13cc
	.string	"projection_stack"
	.4byte	0x13ee
	.string	"texture_stack"
	.4byte	0x1400
	.string	"curmtx"
	.4byte	0x1418
	.string	"cur_mode"
	.4byte	0x143a
	.string	"lights"
	.4byte	0x144c
	.string	"globAmbient"
	.4byte	0x145e
	.string	"curmat"
	.4byte	0x1470
	.string	"gxcullfaceanabled"
	.4byte	0x1482
	.string	"gxwinding"
	.4byte	0x1494
	.string	"lighting"
	.4byte	0x14a6
	.string	"blend_type"
	.4byte	0x14b8
	.string	"blend_src"
	.4byte	0x14ca
	.string	"blend_dst"
	.4byte	0x14dc
	.string	"blend_op"
	.4byte	0x14ee
	.string	"cull_mode"
	.4byte	0x1500
	.string	"cur_state"
	.4byte	0x1512
	.string	"fb_max_height"
	.4byte	0x1524
	.string	"fb_max_width"
	.4byte	0x1536
	.string	"scissor_test"
	.4byte	0x1548
	.string	"scissorInfo"
	.4byte	0x155a
	.string	"viewPort"
	.4byte	0x156c
	.string	"normNear"
	.4byte	0x157e
	.string	"normFar"
	.4byte	0x1590
	.string	"line_width"
	.4byte	0x15a2
	.string	"point_size"
	.4byte	0x15b4
	.string	"pack"
	.4byte	0x15c7
	.string	"unpack"
	.4byte	0x15ea
	.string	"color_write_mask"
	.4byte	0x15fd
	.string	"copy_mat_enabled"
	.4byte	0x1610
	.string	"copy_material"
	.4byte	0x1623
	.string	"_clearcolor"
	.4byte	0x1646
	.string	"Trans"
	.4byte	0x1659
	.string	"fog_enable"
	.4byte	0x166c
	.string	"fog_mode"
	.4byte	0x167f
	.string	"fog_startz"
	.4byte	0x1692
	.string	"fog_endz"
	.4byte	0x16a5
	.string	"fog_density"
	.4byte	0x16b8
	.string	"fog_color"
	.4byte	0x16db
	.string	"glTexEnvs"
	.4byte	0x16ee
	.string	"read_mode"
	.4byte	0x1701
	.string	"call_offset"
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF109:
	.string	"CopyGLfloatToMtx44"
.LASF111:
	.string	"gluPerspective"
.LASF119:
	.string	"params"
.LASF114:
	.string	"zNear"
.LASF128:
	.string	"centerX"
.LASF129:
	.string	"centerY"
.LASF130:
	.string	"centerZ"
.LASF8:
	.string	"char"
.LASF26:
	.string	"GLint"
.LASF18:
	.string	"Mtx44P"
.LASF69:
	.string	"boxInfo"
.LASF212:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF174:
	.string	"globAmbient"
.LASF170:
	.string	"texture_stack"
.LASF184:
	.string	"cur_state"
.LASF122:
	.string	"glLoadMatrixd"
.LASF123:
	.string	"glLoadMatrixf"
.LASF185:
	.string	"fb_max_height"
.LASF0:
	.string	"unsigned int"
.LASF155:
	.string	"_normalelements"
.LASF115:
	.string	"zFar"
.LASF61:
	.string	"_mat"
.LASF54:
	.string	"specular"
.LASF211:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_matrix.c"
.LASF157:
	.string	"_texcoordelements"
.LASF139:
	.string	"axis"
.LASF56:
	.string	"spotCutoff"
.LASF84:
	.string	"_tex_env"
.LASF175:
	.string	"curmat"
.LASF41:
	.string	"mode"
.LASF199:
	.string	"_clearcolor"
.LASF90:
	.string	"maxlod"
.LASF65:
	.string	"GL_STATE_NONE"
.LASF149:
	.string	"glFrustum"
.LASF22:
	.string	"_gx_litobj"
.LASF63:
	.string	"shininess"
.LASF172:
	.string	"cur_mode"
.LASF156:
	.string	"_vertexelements"
.LASF33:
	.string	"GXColorf"
.LASF98:
	.string	"CargOp"
.LASF124:
	.string	"gluLookAt"
.LASF167:
	.string	"_cleardepth"
.LASF53:
	.string	"diffuse"
.LASF151:
	.string	"_tempnormalelement"
.LASF163:
	.string	"cur_tex_client"
.LASF154:
	.string	"vert"
.LASF202:
	.string	"fog_mode"
.LASF204:
	.string	"fog_endz"
.LASF160:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF82:
	.string	"bias"
.LASF134:
	.string	"glMultMatrixf"
.LASF21:
	.string	"GXColor"
.LASF43:
	.string	"farZclip"
.LASF39:
	.string	"VertexArray"
.LASF192:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF110:
	.string	"glMatrixMode"
.LASF200:
	.string	"Trans"
.LASF194:
	.string	"pack"
.LASF189:
	.string	"viewPort"
.LASF85:
	.string	"min_filter"
.LASF133:
	.string	"glPopMatrix"
.LASF168:
	.string	"model_stack"
.LASF196:
	.string	"color_write_mask"
.LASF97:
	.string	"Carg"
.LASF35:
	.string	"enable"
.LASF207:
	.string	"glTexEnvs"
.LASF116:
	.string	"cur_mat"
.LASF131:
	.string	"look"
.LASF179:
	.string	"blend_type"
.LASF112:
	.string	"fovy"
.LASF135:
	.string	"glScalef"
.LASF206:
	.string	"fog_color"
.LASF13:
	.string	"size_t"
.LASF70:
	.string	"width"
.LASF197:
	.string	"copy_mat_enabled"
.LASF162:
	.string	"cur_tex"
.LASF50:
	.string	"enabled"
.LASF96:
	.string	"comAlpha"
.LASF161:
	.string	"_GLtype"
.LASF32:
	.string	"TexCoordElement"
.LASF30:
	.string	"GLdouble"
.LASF121:
	.string	"_glGetMatrixd"
.LASF117:
	.string	"_glGetMatrixf"
.LASF193:
	.string	"point_size"
.LASF142:
	.string	"glLoadIdentity"
.LASF29:
	.string	"GLfloat"
.LASF198:
	.string	"copy_material"
.LASF67:
	.string	"GL_STATE_NEWLIST"
.LASF171:
	.string	"curmtx"
.LASF52:
	.string	"ambient"
.LASF188:
	.string	"scissorInfo"
.LASF177:
	.string	"gxwinding"
.LASF143:
	.string	"glOrtho"
.LASF23:
	.string	"GXLightObj"
.LASF108:
	.string	"CopyGLfloatToMtx"
.LASF146:
	.string	"bottom"
.LASF83:
	.string	"ColorTrans"
.LASF5:
	.string	"long long int"
.LASF180:
	.string	"blend_src"
.LASF64:
	.string	"Material"
.LASF166:
	.string	"depthfunction"
.LASF104:
	.string	"glTexEnvSet"
.LASF187:
	.string	"scissor_test"
.LASF169:
	.string	"projection_stack"
.LASF113:
	.string	"aspect"
.LASF158:
	.string	"_colorelements"
.LASF145:
	.string	"right"
.LASF73:
	.string	"swap"
.LASF137:
	.string	"glRotatef"
.LASF141:
	.string	"glTranslated"
.LASF140:
	.string	"glTranslatef"
.LASF27:
	.string	"GLuint"
.LASF66:
	.string	"GL_STATE_BEGIN"
.LASF16:
	.string	"MtxP"
.LASF208:
	.string	"read_mode"
.LASF47:
	.string	"elem_size"
.LASF68:
	.string	"glState"
.LASF57:
	.string	"constant"
.LASF201:
	.string	"fog_enable"
.LASF14:
	.string	"bool"
.LASF31:
	.string	"VertexElement"
.LASF81:
	.string	"scale"
.LASF92:
	.string	"biasclamp"
.LASF125:
	.string	"eyeX"
.LASF126:
	.string	"eyeY"
.LASF127:
	.string	"eyeZ"
.LASF75:
	.string	"row_length"
.LASF165:
	.string	"depthupdate"
.LASF37:
	.string	"size"
.LASF60:
	.string	"LightObj"
.LASF87:
	.string	"wrap_s"
.LASF88:
	.string	"wrap_t"
.LASF58:
	.string	"linear"
.LASF19:
	.string	"_vecf"
.LASF181:
	.string	"blend_dst"
.LASF215:
	.string	"computeZplanes"
.LASF71:
	.string	"height"
.LASF152:
	.string	"_temptexcoordelement"
.LASF106:
	.string	"CopyMtxToMtx44"
.LASF42:
	.string	"nearZclip"
.LASF191:
	.string	"normFar"
.LASF12:
	.string	"long double"
.LASF44:
	.string	"PrjMtx"
.LASF153:
	.string	"norm"
.LASF195:
	.string	"unpack"
.LASF138:
	.string	"angle"
.LASF51:
	.string	"spotDir"
.LASF34:
	.string	"_array"
.LASF55:
	.string	"spotExponent"
.LASF59:
	.string	"quad_t"
.LASF91:
	.string	"lodbias"
.LASF173:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF89:
	.string	"minlod"
.LASF86:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF136:
	.string	"temp"
.LASF49:
	.string	"_light"
.LASF101:
	.string	"color"
.LASF28:
	.string	"GLsizei"
.LASF209:
	.string	"call_offset"
.LASF150:
	.string	"_tempcolorelement"
.LASF77:
	.string	"skip_pixels"
.LASF144:
	.string	"left"
.LASF99:
	.string	"Aarg"
.LASF94:
	.string	"maxaniso"
.LASF205:
	.string	"fog_density"
.LASF36:
	.string	"stride"
.LASF178:
	.string	"lighting"
.LASF210:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF7:
	.string	"long unsigned int"
.LASF148:
	.string	"farVal"
.LASF182:
	.string	"blend_op"
.LASF203:
	.string	"fog_startz"
.LASF79:
	.string	"pixelStore"
.LASF24:
	.string	"GLenum"
.LASF38:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"Mtx44"
.LASF76:
	.string	"skip_rows"
.LASF159:
	.string	"vert_i"
.LASF74:
	.string	"lsb_first"
.LASF103:
	.string	"alpha_scale"
.LASF107:
	.string	"CopyMtx44ToMtx"
.LASF62:
	.string	"emissive"
.LASF15:
	.string	"Vector"
.LASF95:
	.string	"comRGB"
.LASF186:
	.string	"fb_max_width"
.LASF190:
	.string	"normNear"
.LASF132:
	.string	"glPushMatrix"
.LASF164:
	.string	"depthtestenabled"
.LASF214:
	.string	"guessProjection"
.LASF20:
	.string	"_gx_color"
.LASF93:
	.string	"edgelod"
.LASF176:
	.string	"gxcullfaceanabled"
.LASF45:
	.string	"_stack"
.LASF3:
	.string	"signed char"
.LASF48:
	.string	"Stack"
.LASF2:
	.string	"short unsigned int"
.LASF46:
	.string	"begin"
.LASF147:
	.string	"nearVal"
.LASF10:
	.string	"double"
.LASF78:
	.string	"alignment"
.LASF80:
	.string	"_trans"
.LASF40:
	.string	"_prj_mat"
.LASF120:
	.string	"model"
.LASF25:
	.string	"GLboolean"
.LASF102:
	.string	"rgb_scale"
.LASF213:
	.string	"_glState"
.LASF72:
	.string	"_pixelStore"
.LASF118:
	.string	"pname"
.LASF105:
	.string	"dest"
.LASF183:
	.string	"cull_mode"
.LASF100:
	.string	"AargOp"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
