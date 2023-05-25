	.file	"gl_matrix.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	computeZplanes, @function
computeZplanes:
.LFB67:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_matrix.c"
	.loc 1 54 0
	.cfi_startproc
.LVL0:
.LBB28:
.LBB29:
	.loc 1 41 0
	lis 9,.LC1@ha
	lfs 0,12(3)
	lfs 12,.LC1@l(9)
.LBE29:
.LBE28:
	.loc 1 56 0
	lfs 13,44(3)
.LBB33:
.LBB30:
	.loc 1 41 0
	fcmpu 7,0,12
.LBE30:
.LBE33:
	.loc 1 55 0
	lfs 0,40(3)
.LVL1:
.LBB34:
.LBB31:
	.loc 1 41 0
	bne- 7,.L2
.LVL2:
	.loc 1 49 0
	lfs 11,28(3)
	fcmpu 7,11,12
	crnot 30,30
	mfcr 0
	rlwinm 0,0,31,1
.LBE31:
.LBE34:
	.loc 1 61 0
	cmpwi 7,0,0
.LBB35:
.LBB32:
	.loc 1 49 0
	stb 0,64(3)
.LBE32:
.LBE35:
	.loc 1 61 0
	bne- 7,.L3
	.loc 1 63 0
	lis 9,.LC0@ha
	lfs 12,.LC0@l(9)
	fadds 11,0,12
	.loc 1 64 0
	fsubs 0,0,12
	.loc 1 63 0
	fdivs 11,13,11
	.loc 1 64 0
	fdivs 13,13,0
	.loc 1 63 0
	stfs 11,72(3)
	.loc 1 64 0
	stfs 13,68(3)
	blr
.L2:
	.loc 1 71 0
	li 0,1
.LVL3:
	stb 0,64(3)
.L3:
	.loc 1 68 0
	lis 9,.LC0@ha
	lfs 12,.LC0@l(9)
	fadds 11,13,12
	.loc 1 69 0
	fsubs 13,13,12
	.loc 1 68 0
	fdivs 11,11,0
	.loc 1 69 0
	fdivs 0,13,0
	.loc 1 68 0
	stfs 11,68(3)
	.loc 1 69 0
	stfs 0,72(3)
	blr
	.cfi_endproc
.LFE67:
	.size	computeZplanes, .-computeZplanes
	.align 2
	.globl CopyMtxToMtx44
	.type	CopyMtxToMtx44, @function
CopyMtxToMtx44:
.LFB64:
	.loc 1 13 0
	.cfi_startproc
.LVL4:
	.loc 1 19 0
	lwz 0,0(3)
	.loc 1 25 0
	.loc 1 19 0
	stw 0,0(4)
.LVL5:
	.loc 1 24 0
	li 0,0
	.loc 1 19 0
	lwz 9,4(3)
	stw 9,4(4)
.LVL6:
	lwz 9,8(3)
	stw 9,8(4)
.LVL7:
	lwz 9,12(3)
	stw 9,12(4)
.LVL8:
	lwz 9,16(3)
	stw 9,16(4)
.LVL9:
	lwz 9,20(3)
	stw 9,20(4)
.LVL10:
	lwz 9,24(3)
	stw 9,24(4)
.LVL11:
	lwz 9,28(3)
	stw 9,28(4)
.LVL12:
	lwz 9,32(3)
	stw 9,32(4)
.LVL13:
	lwz 9,36(3)
	stw 9,36(4)
.LVL14:
	lwz 9,40(3)
	stw 9,40(4)
.LVL15:
	lwz 9,44(3)
	.loc 1 24 0
	stw 0,48(4)
	.loc 1 19 0
	stw 9,44(4)
.LVL16:
	.loc 1 24 0
	stw 0,52(4)
.LVL17:
	stw 0,56(4)
.LVL18:
	stw 0,60(4)
.LVL19:
	.loc 1 25 0
	blr
	.cfi_endproc
.LFE64:
	.size	CopyMtxToMtx44, .-CopyMtxToMtx44
	.align 2
	.globl CopyMtx44ToMtx
	.type	CopyMtx44ToMtx, @function
CopyMtx44ToMtx:
.LFB65:
	.loc 1 28 0
	.cfi_startproc
.LVL20:
	.loc 1 34 0
	lwz 0,0(3)
	.loc 1 37 0
	.loc 1 34 0
	stw 0,0(4)
.LVL21:
	lwz 0,4(3)
	stw 0,4(4)
.LVL22:
	lwz 0,8(3)
	stw 0,8(4)
.LVL23:
	lwz 0,12(3)
	stw 0,12(4)
.LVL24:
	lwz 0,16(3)
	stw 0,16(4)
.LVL25:
	lwz 0,20(3)
	stw 0,20(4)
.LVL26:
	lwz 0,24(3)
	stw 0,24(4)
.LVL27:
	lwz 0,28(3)
	stw 0,28(4)
.LVL28:
	lwz 0,32(3)
	stw 0,32(4)
.LVL29:
	lwz 0,36(3)
	stw 0,36(4)
.LVL30:
	lwz 0,40(3)
	stw 0,40(4)
.LVL31:
	lwz 0,44(3)
	stw 0,44(4)
.LVL32:
	.loc 1 37 0
	blr
	.cfi_endproc
.LFE65:
	.size	CopyMtx44ToMtx, .-CopyMtx44ToMtx
	.align 2
	.globl glFrustum
	.type	glFrustum, @function
glFrustum:
.LFB68:
	.loc 1 79 0
	.cfi_startproc
.LVL33:
	stwu 1,-136(1)
.LCFI0:
	.cfi_def_cfa_offset 136
	.loc 1 80 0
	lis 9,cur_state@ha
	.loc 1 79 0
	mflr 0
	stw 31,84(1)
	.loc 1 80 0
	lwz 31,cur_state@l(9)
	.cfi_offset 31, -52
	.cfi_register 65, 0
	.loc 1 79 0
	stfd 26,88(1)
	fmr 26,4
	.cfi_offset 58, -48
	.loc 1 80 0
	andi. 31,31,1
	.loc 1 79 0
	stfd 27,96(1)
	stfd 28,104(1)
	fmr 27,3
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	stfd 29,112(1)
	fmr 28,5
	stfd 30,120(1)
	fmr 29,6
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	stfd 31,128(1)
	fmr 30,1
	stw 0,140(1)
	fmr 31,2
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	stw 29,76(1)
	stw 30,80(1)
	.loc 1 80 0
	bne- 0,.L12
	.cfi_offset 30, -56
	.cfi_offset 29, -60
	.loc 1 82 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L13
.LBB36:
	.loc 1 101 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL34:
	.loc 1 103 0
	frsp 1,26
	frsp 2,27
	.loc 1 101 0
	mr 31,3
.LVL35:
	.loc 1 103 0
	frsp 3,30
	addi 3,1,8
.LVL36:
	frsp 4,31
	frsp 5,28
	frsp 6,29
	bl guFrustum
.LVL37:
.LBB37:
.LBB38:
	.loc 1 34 0
	lwz 0,8(1)
	stw 0,0(31)
.LVL38:
	lwz 0,12(1)
	stw 0,4(31)
.LVL39:
	lwz 0,16(1)
	stw 0,8(31)
.LVL40:
	lwz 0,20(1)
	stw 0,12(31)
.LVL41:
	lwz 0,24(1)
	stw 0,16(31)
.LVL42:
	lwz 0,28(1)
	stw 0,20(31)
.LVL43:
	lwz 0,32(1)
	stw 0,24(31)
.LVL44:
	lwz 0,36(1)
	stw 0,28(31)
.LVL45:
	lwz 0,40(1)
	stw 0,32(31)
.LVL46:
	lwz 0,44(1)
	stw 0,36(31)
.LVL47:
	lwz 0,48(1)
	stw 0,40(31)
.LVL48:
	lwz 0,52(1)
	stw 0,44(31)
.LVL49:
.L8:
.LBE38:
.LBE37:
.LBE36:
	.loc 1 107 0
	lwz 0,140(1)
	lwz 29,76(1)
	mtlr 0
	lwz 30,80(1)
	lwz 31,84(1)
	lfd 26,88(1)
.LVL50:
	lfd 27,96(1)
.LVL51:
	lfd 28,104(1)
.LVL52:
	lfd 29,112(1)
.LVL53:
	lfd 30,120(1)
.LVL54:
	lfd 31,128(1)
.LVL55:
	addi 1,1,136
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL56:
.L13:
.LCFI2:
	.cfi_restore_state
.LBB39:
	.loc 1 84 0
	lis 29,projection_stack@ha
	la 29,projection_stack@l(29)
	mr 3,29
	bl TopPrjMtx
.LVL57:
	mr 30,3
.LVL58:
	.loc 1 85 0
	mr 3,29
.LVL59:
	bl TopMtx44
.LVL60:
	.loc 1 87 0
	cmpwi 7,3,0
	beq- 7,.L8
	.loc 1 92 0
	frsp 28,28
.LVL61:
	frsp 29,29
.LVL62:
	frsp 1,26
	frsp 2,27
	frsp 3,30
	frsp 4,31
	fmr 5,28
	fmr 6,29
	bl guFrustum
.LVL63:
	.loc 1 93 0
	stb 31,64(30)
	.loc 1 95 0
	stfs 28,68(30)
.LBE39:
	.loc 1 107 0
	lwz 0,140(1)
.LBB40:
	.loc 1 96 0
	stfs 29,72(30)
.LBE40:
	.loc 1 107 0
	mtlr 0
	lwz 29,76(1)
	lwz 30,80(1)
.LVL64:
	lwz 31,84(1)
	lfd 26,88(1)
.LVL65:
	lfd 27,96(1)
.LVL66:
	lfd 28,104(1)
	lfd 29,112(1)
	lfd 30,120(1)
.LVL67:
	lfd 31,128(1)
.LVL68:
	addi 1,1,136
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 58
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.LVL69:
.L12:
.LCFI4:
	.cfi_restore_state
	.loc 1 80 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,80
	bl _glSetErrorEx
.LVL70:
	.loc 1 107 0 discriminator 1
	lwz 0,140(1)
	lwz 29,76(1)
	mtlr 0
	lwz 30,80(1)
	lwz 31,84(1)
	lfd 26,88(1)
.LVL71:
	lfd 27,96(1)
.LVL72:
	lfd 28,104(1)
.LVL73:
	lfd 29,112(1)
.LVL74:
	lfd 30,120(1)
.LVL75:
	lfd 31,128(1)
.LVL76:
	addi 1,1,136
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 58
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE68:
	.size	glFrustum, .-glFrustum
	.align 2
	.globl glOrtho
	.type	glOrtho, @function
glOrtho:
.LFB69:
	.loc 1 115 0
	.cfi_startproc
.LVL77:
	mflr 0
	stwu 1,-144(1)
.LCFI6:
	.cfi_def_cfa_offset 144
	.cfi_register 65, 0
	.loc 1 116 0
	lis 9,cur_state@ha
	.loc 1 115 0
	stfd 30,128(1)
	fmr 30,1
	.cfi_offset 62, -16
	stw 0,148(1)
	.loc 1 116 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 115 0
	stfd 31,136(1)
	fmr 31,2
	.cfi_offset 63, -8
	.loc 1 116 0
	andi. 9,0,1
	.loc 1 115 0
	stfd 28,112(1)
	stfd 29,120(1)
	stw 31,108(1)
	.loc 1 116 0
	bne- 0,.L20
	.cfi_offset 31, -36
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.loc 1 118 0
	fcmpu 7,1,2
	beq- 7,.L17
	.loc 1 118 0 is_stmt 0 discriminator 1
	fcmpu 7,3,4
	beq- 7,.L17
	.loc 1 124 0 is_stmt 1
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L21
.LBB41:
	.loc 1 143 0
	lis 9,curmtx@ha
	stfd 3,72(1)
	lwz 3,curmtx@l(9)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	bl TopMtx
.LVL78:
	.loc 1 145 0
	mr. 31,3
	lfd 3,72(1)
	lfd 4,80(1)
	lfd 5,88(1)
	lfd 6,96(1)
	beq- 0,.L14
	.loc 1 150 0
	frsp 1,4
	addi 3,1,8
.LVL79:
	frsp 2,3
	frsp 4,31
	frsp 3,30
	frsp 5,5
	frsp 6,6
	bl guOrtho
.LVL80:
.LBB42:
.LBB43:
	.loc 1 34 0
	lwz 0,8(1)
	stw 0,0(31)
.LVL81:
	lwz 0,12(1)
	stw 0,4(31)
.LVL82:
	lwz 0,16(1)
	stw 0,8(31)
.LVL83:
	lwz 0,20(1)
	stw 0,12(31)
.LVL84:
	lwz 0,24(1)
	stw 0,16(31)
.LVL85:
	lwz 0,28(1)
	stw 0,20(31)
.LVL86:
	lwz 0,32(1)
	stw 0,24(31)
.LVL87:
	lwz 0,36(1)
	stw 0,28(31)
.LVL88:
	lwz 0,40(1)
	stw 0,32(31)
.LVL89:
	lwz 0,44(1)
	stw 0,36(31)
.LVL90:
	lwz 0,48(1)
	stw 0,40(31)
.LVL91:
	lwz 0,52(1)
	stw 0,44(31)
.LVL92:
.L14:
.LBE43:
.LBE42:
.LBE41:
	.loc 1 154 0
	lwz 0,148(1)
	lwz 31,108(1)
	mtlr 0
	lfd 28,112(1)
	lfd 29,120(1)
	lfd 30,128(1)
.LVL93:
	lfd 31,136(1)
.LVL94:
	addi 1,1,144
	.cfi_remember_state
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	blr
.LVL95:
.L17:
.LCFI8:
	.cfi_restore_state
	.loc 1 120 0
	lis 4,.LC2@ha
	li 3,1281
	la 4,.LC2@l(4)
	li 5,120
	bl _glSetErrorEx
.LVL96:
	.loc 1 154 0
	lwz 0,148(1)
	lwz 31,108(1)
	mtlr 0
	lfd 28,112(1)
	lfd 29,120(1)
	lfd 30,128(1)
.LVL97:
	lfd 31,136(1)
.LVL98:
	addi 1,1,144
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI9:
	.cfi_def_cfa_offset 0
	blr
.LVL99:
.L20:
.LCFI10:
	.cfi_restore_state
	.loc 1 116 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,116
	bl _glSetErrorEx
.LVL100:
	.loc 1 154 0 discriminator 1
	lwz 0,148(1)
	lwz 31,108(1)
	mtlr 0
	lfd 28,112(1)
	lfd 29,120(1)
	lfd 30,128(1)
.LVL101:
	lfd 31,136(1)
.LVL102:
	addi 1,1,144
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
.LVL103:
.L21:
.LCFI12:
	.cfi_restore_state
.LBB44:
	.loc 1 126 0
	lis 3,projection_stack@ha
	stfd 3,72(1)
	la 3,projection_stack@l(3)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	bl TopPrjMtx
.LVL104:
	.loc 1 128 0
	mr. 31,3
	lfd 3,72(1)
	lfd 4,80(1)
	lfd 5,88(1)
	lfd 6,96(1)
	beq- 0,.L14
	.loc 1 134 0
	frsp 28,5
	frsp 29,6
	frsp 1,4
	frsp 2,3
	frsp 4,31
	frsp 3,30
	fmr 5,28
	fmr 6,29
	bl guOrtho
.LVL105:
	.loc 1 135 0
	li 0,1
	stb 0,64(31)
	.loc 1 137 0
	stfs 28,68(31)
	.loc 1 138 0
	stfs 29,72(31)
	b .L14
.LBE44:
	.cfi_endproc
.LFE69:
	.size	glOrtho, .-glOrtho
	.align 2
	.globl glMatrixMode
	.type	glMatrixMode, @function
glMatrixMode:
.LFB70:
	.loc 1 157 0
	.cfi_startproc
.LVL106:
	mflr 0
	stwu 1,-8(1)
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 158 0
	lis 9,cur_state@ha
	.loc 1 157 0
	stw 0,12(1)
	.loc 1 158 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L31
	.loc 1 160 0
	cmpwi 7,3,5889
	beq- 7,.L27
	cmpwi 7,3,5890
	beq- 7,.L28
	cmpwi 7,3,5888
	beq- 7,.L32
	.loc 1 172 0
	lis 4,.LC2@ha
	li 3,1280
.LVL107:
	la 4,.LC2@l(4)
	li 5,172
	bl _glSetErrorEx
	.loc 1 178 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL108:
.L31:
.LCFI15:
	.cfi_restore_state
	.loc 1 158 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
.LVL109:
	la 4,.LC2@l(4)
	li 5,158
	bl _glSetErrorEx
	.loc 1 178 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL110:
.L28:
.LCFI17:
	.cfi_restore_state
	.loc 1 169 0
	lis 9,cur_tex@ha
	lis 11,texture_stack@ha
	lwz 9,cur_tex@l(9)
	la 0,texture_stack@l(11)
	slwi 9,9,4
	add 0,9,0
	lis 9,curmtx@ha
	stw 0,curmtx@l(9)
.L29:
	.loc 1 178 0
	lwz 0,12(1)
	.loc 1 177 0
	lis 9,cur_mode@ha
	.loc 1 178 0
	.loc 1 177 0
	stw 3,cur_mode@l(9)
	.loc 1 178 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
.L32:
.LCFI19:
	.cfi_restore_state
	.loc 1 163 0
	lis 9,model_stack@ha
	la 0,model_stack@l(9)
	lis 9,curmtx@ha
	stw 0,curmtx@l(9)
	.loc 1 164 0
	b .L29
.L27:
	.loc 1 166 0
	lis 9,projection_stack@ha
	la 0,projection_stack@l(9)
	lis 9,curmtx@ha
	stw 0,curmtx@l(9)
	.loc 1 167 0
	b .L29
	.cfi_endproc
.LFE70:
	.size	glMatrixMode, .-glMatrixMode
	.align 2
	.globl glLoadIdentity
	.type	glLoadIdentity, @function
glLoadIdentity:
.LFB71:
	.loc 1 180 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI20:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 181 0
	lis 9,cur_state@ha
	.loc 1 180 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 181 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	andi. 9,0,1
	bne- 0,.L37
	.loc 1 183 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L38
.LBB45:
	.loc 1 209 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL111:
	.loc 1 211 0
	cmpwi 7,3,0
	beq- 7,.L33
	.loc 1 216 0
	bl ps_guMtxIdentity
.LVL112:
.L33:
.LBE45:
	.loc 1 218 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L38:
.LCFI22:
	.cfi_restore_state
.LBB46:
	.loc 1 185 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL113:
	.loc 1 187 0
	mr. 31,3
	beq- 0,.L33
.LVL114:
	.loc 1 196 0
	li 4,0
	li 5,64
	bl memset
.LVL115:
	.loc 1 200 0
	lis 9,.LC0@ha
	lwz 0,.LC0@l(9)
	.loc 1 203 0
	li 9,1
	stb 9,64(31)
	.loc 1 205 0
	lis 9,.LC3@ha
	.loc 1 200 0
	stw 0,0(31)
.LVL116:
	stw 0,20(31)
.LVL117:
	stw 0,40(31)
.LVL118:
	stw 0,60(31)
.LVL119:
	.loc 1 204 0
	stw 0,68(31)
	.loc 1 205 0
	lwz 0,.LC3@l(9)
	stw 0,72(31)
.LBE46:
	.loc 1 218 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL120:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI23:
	.cfi_def_cfa_offset 0
	blr
.LVL121:
.L37:
.LCFI24:
	.cfi_restore_state
	.loc 1 181 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,181
	bl _glSetErrorEx
	.loc 1 218 0 discriminator 1
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI25:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE71:
	.size	glLoadIdentity, .-glLoadIdentity
	.align 2
	.globl glLoadMatrixf
	.type	glLoadMatrixf, @function
glLoadMatrixf:
.LFB72:
	.loc 1 221 0
	.cfi_startproc
.LVL122:
	mflr 0
	stwu 1,-16(1)
.LCFI26:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 222 0
	lis 9,cur_state@ha
	.loc 1 221 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 222 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 221 0
	stw 30,8(1)
	.loc 1 222 0
	andi. 9,0,1
	bne- 0,.L50
	.cfi_offset 30, -8
	.loc 1 226 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L51
.LBB47:
	.loc 1 247 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
.LVL123:
	bl TopMtx
.LVL124:
	.loc 1 249 0
	cmpwi 0,3,0
	beq- 0,.L39
.LBE47:
	.loc 1 220 0
	li 0,4
.LBB48:
	addi 9,3,-4
.LBE48:
	mtctr 0
.L46:
.LVL125:
.LBB49:
	.loc 1 261 0 discriminator 1
	lwz 0,0(31)
	stwu 0,4(9)
.LVL126:
	lwz 0,4(31)
	stw 0,16(9)
.LVL127:
	lwz 0,8(31)
	.loc 1 220 0 discriminator 1
	addi 31,31,16
.LVL128:
	.loc 1 261 0 discriminator 1
	stw 0,32(9)
.LVL129:
	.loc 1 257 0 discriminator 1
	bdnz .L46
.LVL130:
.L39:
.LBE49:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL131:
.L51:
.LCFI28:
	.cfi_restore_state
.LBB50:
	.loc 1 228 0
	lis 30,curmtx@ha
	lwz 3,curmtx@l(30)
.LVL132:
	bl TopMtx44
.LVL133:
	.loc 1 220 0
	addi 8,31,-4
	.loc 1 230 0
	mr. 10,3
	.loc 1 220 0
	addi 31,31,60
.LVL134:
	.loc 1 230 0
	beq- 0,.L39
.LVL135:
.L43:
.LBE50:
	.loc 1 221 0 discriminator 1
	li 0,4
	mr 11,8
	mtctr 0
	li 9,0
.LVL136:
.L44:
.LBB51:
	.loc 1 239 0 discriminator 2
	lwzu 0,4(11)
	stwx 0,10,9
	addi 9,9,16
	.loc 1 237 0 discriminator 2
	bdnz .L44
	.loc 1 237 0 is_stmt 0
	addi 8,8,16
	addi 10,10,4
	.loc 1 235 0 is_stmt 1
	cmpw 7,8,31
	bne+ 7,.L43
	.loc 1 243 0
	lwz 3,curmtx@l(30)
.LVL137:
	bl TopPrjMtx
.LBE51:
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LBB52:
	.loc 1 243 0
	b computeZplanes
.LVL138:
.L50:
.LCFI30:
	.cfi_restore_state
.LBE52:
	.loc 1 222 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
.LVL139:
	la 4,.LC2@l(4)
	li 5,222
	bl _glSetErrorEx
	.loc 1 266 0 discriminator 1
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL140:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI31:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE72:
	.size	glLoadMatrixf, .-glLoadMatrixf
	.align 2
	.globl glLoadMatrixd
	.type	glLoadMatrixd, @function
glLoadMatrixd:
.LFB73:
	.loc 1 269 0
	.cfi_startproc
.LVL141:
	mflr 0
	stwu 1,-16(1)
.LCFI32:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 270 0
	lis 9,cur_state@ha
	.loc 1 269 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 270 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 269 0
	stw 30,8(1)
	.loc 1 270 0
	andi. 9,0,1
	bne- 0,.L63
	.cfi_offset 30, -8
	.loc 1 274 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L64
.LBB53:
	.loc 1 295 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
.LVL142:
	bl TopMtx
.LVL143:
	.loc 1 297 0
	cmpwi 0,3,0
	beq- 0,.L52
.LBE53:
	.loc 1 268 0
	li 0,4
.LBB54:
	addi 9,3,-4
.LBE54:
	mtctr 0
.L59:
.LVL144:
.LBB55:
	.loc 1 306 0 discriminator 1
	lfd 12,0(31)
	lfd 13,8(31)
	lfd 0,16(31)
	frsp 12,12
	frsp 13,13
	.loc 1 268 0 discriminator 1
	addi 31,31,32
.LVL145:
	.loc 1 306 0 discriminator 1
	frsp 0,0
	stfsu 12,4(9)
.LVL146:
	stfs 13,16(9)
.LVL147:
	stfs 0,32(9)
.LVL148:
	.loc 1 302 0 discriminator 1
	bdnz .L59
.LVL149:
.L52:
.LBE55:
	.loc 1 311 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI33:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL150:
.L64:
.LCFI34:
	.cfi_restore_state
.LBB56:
	.loc 1 276 0
	lis 30,curmtx@ha
	lwz 3,curmtx@l(30)
.LVL151:
	bl TopMtx44
.LVL152:
	.loc 1 268 0
	addi 8,31,-8
	.loc 1 278 0
	mr. 10,3
	.loc 1 268 0
	addi 31,31,120
.LVL153:
	.loc 1 278 0
	beq- 0,.L52
.LVL154:
.L56:
.LBE56:
	.loc 1 269 0 discriminator 1
	li 0,4
	mr 11,8
	mtctr 0
	li 9,0
.LVL155:
.L57:
.LBB57:
	.loc 1 287 0 discriminator 2
	lfdu 0,8(11)
	frsp 0,0
	stfsx 0,10,9
	addi 9,9,16
	.loc 1 285 0 discriminator 2
	bdnz .L57
	.loc 1 285 0 is_stmt 0
	addi 8,8,32
	addi 10,10,4
	.loc 1 283 0 is_stmt 1
	cmpw 7,8,31
	bne+ 7,.L56
	.loc 1 291 0
	lwz 3,curmtx@l(30)
.LVL156:
	bl TopPrjMtx
.LBE57:
	.loc 1 311 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI35:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LBB58:
	.loc 1 291 0
	b computeZplanes
.LVL157:
.L63:
.LCFI36:
	.cfi_restore_state
.LBE58:
	.loc 1 270 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
.LVL158:
	la 4,.LC2@l(4)
	li 5,270
	bl _glSetErrorEx
	.loc 1 311 0 discriminator 1
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL159:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI37:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE73:
	.size	glLoadMatrixd, .-glLoadMatrixd
	.align 2
	.globl glMultMatrixf
	.type	glMultMatrixf, @function
glMultMatrixf:
.LFB78:
	.loc 1 430 0
	.cfi_startproc
.LVL160:
	mflr 0
	stwu 1,-144(1)
.LCFI38:
	.cfi_def_cfa_offset 144
	.cfi_register 65, 0
	.loc 1 431 0
	lis 9,cur_state@ha
	.loc 1 430 0
	stw 31,140(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,148(1)
	.loc 1 431 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 430 0
	stw 30,136(1)
	.loc 1 431 0
	andi. 9,0,1
	bne- 0,.L81
	.cfi_offset 30, -8
	.loc 1 434 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L82
.LBB70:
	.loc 1 476 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
.LVL161:
	bl TopMtx
.LVL162:
	.loc 1 479 0
	cmpwi 0,3,0
	beq- 0,.L65
	.loc 1 429 0
	li 11,4
	.loc 1 479 0
	addi 9,1,4
	.loc 1 429 0
	mtctr 11
.LVL163:
.L74:
.LBB71:
.LBB72:
	.loc 1 600 0
	lwz 0,0(31)
	lwz 11,4(31)
	stwu 0,4(9)
.LVL164:
	lwz 0,8(31)
	.loc 1 429 0
	addi 31,31,16
.LVL165:
	.loc 1 600 0
	stw 11,16(9)
.LVL166:
	stw 0,32(9)
.LVL167:
	.loc 1 596 0
	bdnz .L74
.LBE72:
.LBE71:
	.loc 1 489 0
	addi 4,1,8
	mr 5,3
	bl ps_guMtxConcat
.LVL168:
.L65:
.LBE70:
	.loc 1 491 0
	lwz 0,148(1)
	lwz 30,136(1)
	mtlr 0
	lwz 31,140(1)
	addi 1,1,144
	.cfi_remember_state
.LCFI39:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL169:
.L82:
.LCFI40:
	.cfi_restore_state
.LBB73:
.LBB74:
.LBB75:
	.loc 1 436 0
	lis 30,curmtx@ha
	lwz 3,curmtx@l(30)
.LVL170:
	bl TopMtx44
.LVL171:
	.loc 1 438 0
	mr. 6,3
	beq- 0,.L65
	li 0,4
	addi 8,1,84
	mtctr 0
	addi 10,1,100
	addi 11,1,116
	li 9,0
	addi 12,1,72
.LVL172:
.L69:
.LBB76:
.LBB77:
	.loc 1 614 0
	lwz 4,0(31)
	lwz 5,4(31)
	lwz 7,8(31)
	lwz 0,12(31)
	.loc 1 429 0
	addi 31,31,16
.LVL173:
	.loc 1 614 0
	stwx 4,9,12
.LVL174:
	.loc 1 429 0
	addi 9,9,4
	.loc 1 614 0
	stwu 5,4(8)
.LVL175:
	stwu 7,4(10)
.LVL176:
	stwu 0,4(11)
	.loc 1 610 0
	bdnz .L69
	mr 8,6
	li 4,0
	addi 5,1,88
.LBE77:
.LBE76:
	.loc 1 456 0
	li 0,0
.L70:
.LVL177:
	.loc 1 429 0
	slwi 7,4,4
	addi 9,1,8
	addi 7,7,-4
	mr 10,12
	add 7,9,7
.LVL178:
.L72:
	.loc 1 456 0
	lis 11,.LC1@ha
	stwu 0,4(7)
.LVL179:
	lfs 0,.LC1@l(11)
	li 11,4
	mtctr 11
	li 9,0
.LVL180:
.L71:
	.loc 1 429 0
	slwi 11,9,2
	.loc 1 459 0
	lfsx 12,8,9
	lfsx 13,10,11
	addi 9,9,4
	fmadds 0,12,13,0
	.loc 1 457 0
	bdnz .L71
	addi 10,10,4
	stfs 0,0(7)
	.loc 1 454 0
	cmpw 7,10,5
	bne+ 7,.L72
.LVL181:
	.loc 1 452 0
	cmpwi 7,4,3
	addi 8,8,16
	addi 4,4,1
.LVL182:
	bne+ 7,.L70
	li 0,4
	addi 9,1,8
	mtctr 0
.LVL183:
.L73:
	.loc 1 468 0
	lwz 0,0(9)
	stw 0,0(6)
.LVL184:
	lwz 0,4(9)
	stw 0,4(6)
.LVL185:
	lwz 0,8(9)
	stw 0,8(6)
.LVL186:
	lwz 0,12(9)
	addi 9,9,16
	stw 0,12(6)
.LVL187:
	addi 6,6,16
	.loc 1 464 0
	bdnz .L73
	.loc 1 472 0
	lwz 3,curmtx@l(30)
.LVL188:
	bl TopPrjMtx
	bl computeZplanes
.LBE75:
.LBE74:
.LBE73:
	.loc 1 491 0
	lwz 0,148(1)
	lwz 30,136(1)
	mtlr 0
	lwz 31,140(1)
.LVL189:
	addi 1,1,144
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI41:
	.cfi_def_cfa_offset 0
	blr
.LVL190:
.L81:
.LCFI42:
	.cfi_restore_state
	.loc 1 431 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
.LVL191:
	la 4,.LC2@l(4)
	li 5,431
	bl _glSetErrorEx
	.loc 1 491 0 discriminator 1
	lwz 0,148(1)
	lwz 30,136(1)
	mtlr 0
	lwz 31,140(1)
.LVL192:
	addi 1,1,144
	.cfi_restore 30
	.cfi_restore 31
.LCFI43:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE78:
	.size	glMultMatrixf, .-glMultMatrixf
	.align 2
	.globl glScalef
	.type	glScalef, @function
glScalef:
.LFB77:
	.loc 1 397 0
	.cfi_startproc
.LVL193:
	mflr 0
	stwu 1,-104(1)
.LCFI44:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	.loc 1 398 0
	lis 9,cur_state@ha
	.loc 1 397 0
	stfd 29,80(1)
	fmr 29,1
	.cfi_offset 61, -24
	stw 0,108(1)
	.loc 1 398 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 397 0
	stfd 30,88(1)
	fmr 30,2
	.cfi_offset 62, -16
	.loc 1 398 0
	andi. 9,0,1
	.loc 1 397 0
	stfd 31,96(1)
	stw 31,76(1)
	.loc 1 397 0
	fmr 31,3
	.cfi_offset 31, -28
	.cfi_offset 63, -8
	.loc 1 398 0
	bne- 0,.L87
	.loc 1 400 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L88
.LBB78:
	.loc 1 416 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL194:
	.loc 1 418 0
	mr. 31,3
	beq- 0,.L83
	.loc 1 423 0
	addi 3,1,8
.LVL195:
	bl ps_guMtxIdentity
	.loc 1 424 0
	fmr 1,29
	fmr 2,30
	addi 3,1,8
	fmr 3,31
	bl ps_guMtxScale
	.loc 1 425 0
	mr 3,31
	addi 4,1,8
	mr 5,31
	bl ps_guMtxConcat
.L83:
.LBE78:
	.loc 1 427 0
	lwz 0,108(1)
	lwz 31,76(1)
.LVL196:
	mtlr 0
	lfd 29,80(1)
.LVL197:
	lfd 30,88(1)
.LVL198:
	lfd 31,96(1)
.LVL199:
	addi 1,1,104
	.cfi_remember_state
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	blr
.LVL200:
.L87:
.LCFI46:
	.cfi_restore_state
	.loc 1 398 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,398
	bl _glSetErrorEx
.LVL201:
	.loc 1 427 0 discriminator 1
	lwz 0,108(1)
	lwz 31,76(1)
	mtlr 0
	lfd 29,80(1)
.LVL202:
	lfd 30,88(1)
.LVL203:
	lfd 31,96(1)
.LVL204:
	addi 1,1,104
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI47:
	.cfi_def_cfa_offset 0
	blr
.LVL205:
.L88:
.LCFI48:
	.cfi_restore_state
.LBB79:
	.loc 1 405 0
	li 0,0
	.loc 1 408 0
	lis 9,.LC0@ha
	.loc 1 405 0
	stw 0,24(1)
	.loc 1 410 0
	addi 3,1,8
	.loc 1 405 0
	stw 0,40(1)
	stw 0,56(1)
	.loc 1 406 0
	stw 0,12(1)
	stw 0,44(1)
	stw 0,60(1)
	.loc 1 407 0
	stw 0,16(1)
	stw 0,32(1)
	stw 0,64(1)
	.loc 1 408 0
	stw 0,20(1)
	stw 0,36(1)
	stw 0,52(1)
	lwz 0,.LC0@l(9)
	.loc 1 405 0
	stfs 1,8(1)
	.loc 1 408 0
	stw 0,68(1)
	.loc 1 406 0
	stfs 2,28(1)
	.loc 1 407 0
	stfs 3,48(1)
	.loc 1 410 0
	bl glMultMatrixf
.LVL206:
.LBE79:
	.loc 1 427 0
	lwz 0,108(1)
	lwz 31,76(1)
	mtlr 0
	lfd 29,80(1)
.LVL207:
	lfd 30,88(1)
.LVL208:
	lfd 31,96(1)
.LVL209:
	addi 1,1,104
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI49:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE77:
	.size	glScalef, .-glScalef
	.align 2
	.globl glRotatef
	.type	glRotatef, @function
glRotatef:
.LFB76:
	.loc 1 352 0
	.cfi_startproc
.LVL210:
	mflr 0
	stwu 1,-136(1)
.LCFI50:
	.cfi_def_cfa_offset 136
	.cfi_register 65, 0
	.loc 1 353 0
	lis 9,cur_state@ha
	.loc 1 352 0
	stfd 28,104(1)
	fmr 28,4
	.cfi_offset 60, -32
	stw 0,140(1)
	.loc 1 353 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 352 0
	stfd 29,112(1)
	fmr 29,3
	.cfi_offset 61, -24
	.loc 1 353 0
	andi. 9,0,1
	.loc 1 352 0
	stfd 30,120(1)
	stfd 31,128(1)
	fmr 30,1
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	stfd 27,96(1)
	fmr 31,2
	stw 31,92(1)
	.loc 1 353 0
	bne- 0,.L93
	.cfi_offset 31, -44
	.cfi_offset 59, -40
	.loc 1 355 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L94
.LBB80:
	.loc 1 379 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL211:
	.loc 1 381 0
	mr. 31,3
	beq- 0,.L89
	.loc 1 391 0
	addi 3,1,20
.LVL212:
	.loc 1 388 0
	stfs 31,8(1)
	.loc 1 389 0
	stfs 29,12(1)
	.loc 1 390 0
	stfs 28,16(1)
	.loc 1 391 0
	bl ps_guMtxIdentity
	.loc 1 392 0
	lis 9,.LC4@ha
	addi 3,1,20
	lfs 1,.LC4@l(9)
	addi 4,1,8
	fmuls 1,30,1
	bl ps_guMtxRotAxisRad
	.loc 1 393 0
	mr 3,31
	addi 4,1,20
	mr 5,31
	bl ps_guMtxConcat
.L89:
.LBE80:
	.loc 1 395 0
	lwz 0,140(1)
	lwz 31,92(1)
.LVL213:
	mtlr 0
	lfd 27,96(1)
	lfd 28,104(1)
.LVL214:
	lfd 29,112(1)
.LVL215:
	lfd 30,120(1)
.LVL216:
	lfd 31,128(1)
.LVL217:
	addi 1,1,136
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 31
	blr
.LVL218:
.L93:
.LCFI52:
	.cfi_restore_state
	.loc 1 353 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,353
	bl _glSetErrorEx
.LVL219:
	.loc 1 395 0 discriminator 1
	lwz 0,140(1)
	lwz 31,92(1)
	mtlr 0
	lfd 27,96(1)
	lfd 28,104(1)
.LVL220:
	lfd 29,112(1)
.LVL221:
	lfd 30,120(1)
.LVL222:
	lfd 31,128(1)
.LVL223:
	addi 1,1,136
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI53:
	.cfi_def_cfa_offset 0
	blr
.LVL224:
.L94:
.LCFI54:
	.cfi_restore_state
.LBB81:
	.loc 1 358 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	fmuls 30,1,0
	fmr 1,30
.LVL225:
	bl sinf
.LVL226:
	fmr 27,1
.LVL227:
	.loc 1 359 0
	fmr 1,30
.LVL228:
	bl cosf
.LVL229:
	.loc 1 368 0
	lis 9,.LC0@ha
	lfs 13,.LC0@l(9)
	fmuls 8,29,31
	fmuls 10,31,28
	li 0,0
	fsubs 0,13,1
	.loc 1 372 0
	addi 3,1,20
	.loc 1 369 0
	fmuls 12,29,28
	.loc 1 368 0
	stw 0,68(1)
	fmuls 9,28,27
	.loc 1 369 0
	stw 0,72(1)
	.loc 1 368 0
	fmuls 11,29,27
	.loc 1 370 0
	stw 0,76(1)
	.loc 1 369 0
	fmuls 27,31,27
.LVL230:
	.loc 1 371 0
	stw 0,32(1)
	.loc 1 370 0
	fmuls 28,28,28
.LVL231:
	.loc 1 371 0
	stw 0,48(1)
	.loc 1 368 0
	fmuls 31,31,31
.LVL232:
	.loc 1 371 0
	stw 0,64(1)
	.loc 1 369 0
	fmuls 29,29,29
.LVL233:
	.loc 1 371 0
	stfs 13,80(1)
	.loc 1 368 0
	fmadds 5,0,8,9
	fmadds 31,31,0,1
	fmsubs 6,0,10,11
	.loc 1 369 0
	fmadds 29,0,29,1
	.loc 1 368 0
	stfs 5,36(1)
	.loc 1 369 0
	fmadds 7,0,12,27
	.loc 1 368 0
	stfs 31,20(1)
	.loc 1 370 0
	fmsubs 27,0,12,27
	.loc 1 368 0
	stfs 6,52(1)
	.loc 1 369 0
	fmsubs 9,0,8,9
	stfs 29,40(1)
	.loc 1 370 0
	fmadds 11,0,10,11
	.loc 1 369 0
	stfs 7,56(1)
	.loc 1 370 0
	fmadds 0,0,28,1
	stfs 27,44(1)
	.loc 1 369 0
	stfs 9,24(1)
	.loc 1 370 0
	stfs 11,28(1)
	stfs 0,60(1)
	.loc 1 372 0
	bl glMultMatrixf
.LVL234:
.LBE81:
	.loc 1 395 0
	lwz 0,140(1)
	lwz 31,92(1)
	mtlr 0
	lfd 27,96(1)
	lfd 28,104(1)
	lfd 29,112(1)
	lfd 30,120(1)
	lfd 31,128(1)
	addi 1,1,136
	.cfi_restore 31
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI55:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE76:
	.size	glRotatef, .-glRotatef
	.align 2
	.globl glTranslatef
	.type	glTranslatef, @function
glTranslatef:
.LFB74:
	.loc 1 313 0
	.cfi_startproc
.LVL235:
	mflr 0
	stwu 1,-104(1)
.LCFI56:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	.loc 1 314 0
	lis 9,cur_state@ha
	.loc 1 313 0
	stfd 29,80(1)
	fmr 29,1
	.cfi_offset 61, -24
	stw 0,108(1)
	.loc 1 314 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.loc 1 313 0
	stfd 30,88(1)
	fmr 30,2
	.cfi_offset 62, -16
	.loc 1 314 0
	andi. 9,0,1
	.loc 1 313 0
	stfd 31,96(1)
	stw 31,76(1)
	.loc 1 313 0
	fmr 31,3
	.cfi_offset 31, -28
	.cfi_offset 63, -8
	.loc 1 314 0
	bne- 0,.L99
	.loc 1 316 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L100
.LBB82:
	.loc 1 332 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL236:
	.loc 1 334 0
	mr. 31,3
	beq- 0,.L95
	.loc 1 339 0
	addi 3,1,8
.LVL237:
	bl ps_guMtxIdentity
	.loc 1 340 0
	fmr 1,29
	fmr 2,30
	addi 3,1,8
	fmr 3,31
	bl ps_guMtxTrans
	.loc 1 341 0
	mr 3,31
	addi 4,1,8
	mr 5,31
	bl ps_guMtxConcat
.L95:
.LBE82:
	.loc 1 343 0
	lwz 0,108(1)
	lwz 31,76(1)
.LVL238:
	mtlr 0
	lfd 29,80(1)
.LVL239:
	lfd 30,88(1)
.LVL240:
	lfd 31,96(1)
.LVL241:
	addi 1,1,104
	.cfi_remember_state
.LCFI57:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	blr
.LVL242:
.L99:
.LCFI58:
	.cfi_restore_state
	.loc 1 314 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,314
	bl _glSetErrorEx
.LVL243:
	.loc 1 343 0 discriminator 1
	lwz 0,108(1)
	lwz 31,76(1)
	mtlr 0
	lfd 29,80(1)
.LVL244:
	lfd 30,88(1)
.LVL245:
	lfd 31,96(1)
.LVL246:
	addi 1,1,104
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI59:
	.cfi_def_cfa_offset 0
	blr
.LVL247:
.L100:
.LCFI60:
	.cfi_restore_state
.LBB83:
	.loc 1 321 0
	lis 9,.LC0@ha
	li 0,0
	lwz 9,.LC0@l(9)
	.loc 1 326 0
	addi 3,1,8
	.loc 1 321 0
	stw 0,24(1)
	stw 0,40(1)
	.loc 1 322 0
	stw 0,12(1)
	stw 0,44(1)
	.loc 1 323 0
	stw 0,16(1)
	stw 0,32(1)
	.loc 1 324 0
	stw 0,20(1)
	stw 0,36(1)
	stw 0,52(1)
	.loc 1 321 0
	stw 9,8(1)
	stfs 1,56(1)
	.loc 1 322 0
	stw 9,28(1)
	stfs 2,60(1)
	.loc 1 323 0
	stw 9,48(1)
	stfs 3,64(1)
	.loc 1 324 0
	stw 9,68(1)
	.loc 1 326 0
	bl glMultMatrixf
.LVL248:
.LBE83:
	.loc 1 343 0
	lwz 0,108(1)
	lwz 31,76(1)
	mtlr 0
	lfd 29,80(1)
.LVL249:
	lfd 30,88(1)
.LVL250:
	lfd 31,96(1)
.LVL251:
	addi 1,1,104
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI61:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE74:
	.size	glTranslatef, .-glTranslatef
	.align 2
	.globl glTranslated
	.type	glTranslated, @function
glTranslated:
.LFB75:
	.loc 1 346 0
	.cfi_startproc
.LVL252:
	mflr 0
	stwu 1,-8(1)
.LCFI62:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 347 0
	lis 9,cur_state@ha
	.loc 1 346 0
	stw 0,12(1)
	.loc 1 347 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L104
	.loc 1 350 0
	lwz 0,12(1)
	.loc 1 349 0
	frsp 1,1
.LVL253:
	frsp 2,2
.LVL254:
	.loc 1 350 0
	.loc 1 349 0
	frsp 3,3
.LVL255:
	.loc 1 350 0
	mtlr 0
	addi 1,1,8
	.cfi_remember_state
.LCFI63:
	.cfi_def_cfa_offset 0
	.loc 1 349 0
	b glTranslatef
.LVL256:
.L104:
.LCFI64:
	.cfi_restore_state
	.loc 1 347 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,347
	bl _glSetErrorEx
.LVL257:
	.loc 1 350 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI65:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE75:
	.size	glTranslated, .-glTranslated
	.align 2
	.globl glPopMatrix
	.type	glPopMatrix, @function
glPopMatrix:
.LFB79:
	.loc 1 493 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI66:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 494 0
	lis 9,cur_state@ha
	.loc 1 493 0
	stw 0,12(1)
	.loc 1 494 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L108
	.loc 1 496 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl Pop
	.loc 1 497 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI67:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L108:
.LCFI68:
	.cfi_restore_state
	.loc 1 494 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,494
	bl _glSetErrorEx
	.loc 1 497 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI69:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE79:
	.size	glPopMatrix, .-glPopMatrix
	.align 2
	.globl glPushMatrix
	.type	glPushMatrix, @function
glPushMatrix:
.LFB80:
	.loc 1 499 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI70:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 501 0
	lis 9,cur_state@ha
	.loc 1 499 0
	stw 0,12(1)
	.loc 1 501 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L112
	.loc 1 503 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl Push
	.loc 1 504 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI71:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L112:
.LCFI72:
	.cfi_restore_state
	.loc 1 501 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,501
	bl _glSetErrorEx
	.loc 1 504 0 discriminator 1
	lwz 0,12(1)
	addi 1,1,8
.LCFI73:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE80:
	.size	glPushMatrix, .-glPushMatrix
	.align 2
	.globl _glGetMatrixd
	.type	_glGetMatrixd, @function
_glGetMatrixd:
.LFB81:
	.loc 1 507 0
	.cfi_startproc
.LVL258:
	stwu 1,-16(1)
.LCFI74:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 512 0
	mr. 31,4
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 507 0
	stw 0,20(1)
	.loc 1 512 0
	beq- 0,.L113
	.cfi_offset 65, 4
	.loc 1 515 0
	cmpwi 7,3,2982
	beq- 7,.L116
	cmpwi 7,3,2983
	beq- 7,.L128
	.loc 1 541 0
	lis 4,.LC2@ha
.LVL259:
	li 3,1280
.LVL260:
	la 4,.LC2@l(4)
	li 5,541
	bl _glSetErrorEx
.L113:
	.loc 1 545 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL261:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI75:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL262:
.L128:
.LCFI76:
	.cfi_restore_state
	.loc 1 530 0
	lis 3,projection_stack@ha
.LVL263:
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL264:
	.loc 1 507 0
	addi 10,31,-8
	addi 31,31,120
.LVL265:
.L121:
	.loc 1 507 0 is_stmt 0 discriminator 1
	li 0,4
	mr 11,10
	mtctr 0
	li 9,0
.LVL266:
.L122:
	.loc 1 536 0 is_stmt 1 discriminator 2
	lfsx 0,3,9
	addi 9,9,16
	stfdu 0,8(11)
	.loc 1 535 0 discriminator 2
	bdnz .L122
	.loc 1 535 0 is_stmt 0
	addi 10,10,32
	addi 3,3,4
	.loc 1 534 0 is_stmt 1
	cmpw 7,10,31
	bne+ 7,.L121
	.loc 1 545 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI77:
	.cfi_def_cfa_offset 0
	blr
.LVL267:
.L116:
.LCFI78:
	.cfi_restore_state
	.loc 1 517 0
	lis 3,model_stack@ha
.LVL268:
	.loc 1 507 0
	addi 31,31,24
	.loc 1 517 0
	la 3,model_stack@l(3)
	bl TopMtx
.LVL269:
	.loc 1 523 0
	li 0,4
	.loc 1 507 0
	addi 3,3,-4
.LVL270:
	.loc 1 523 0
	mtctr 0
.LVL271:
	.loc 1 520 0
	lfsu 12,4(3)
.LVL272:
	.loc 1 523 0
	lis 9,.LC5@ha
	.loc 1 520 0
	lfs 13,16(3)
	lfs 0,32(3)
	stfd 12,-24(31)
.LVL273:
	stfd 13,-16(31)
.LVL274:
	stfd 0,-8(31)
.LVL275:
	.loc 1 522 0
	bdz .L129
.LVL276:
.L119:
	.loc 1 520 0
	lfsu 12,4(3)
	.loc 1 523 0
	lfd 0,.LC5@l(9)
	.loc 1 520 0
	lfs 13,16(3)
	.loc 1 523 0
	stfd 0,0(31)
.LVL277:
	addi 31,31,32
.LVL278:
	.loc 1 520 0
	lfs 0,32(3)
	stfd 12,-24(31)
.LVL279:
	stfd 13,-16(31)
.LVL280:
	stfd 0,-8(31)
.LVL281:
	.loc 1 522 0
	bdnz .L119
.L129:
	.loc 1 545 0
	lwz 0,20(1)
	.loc 1 525 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 545 0
	mtlr 0
	.loc 1 525 0
	stfd 0,0(31)
.LVL282:
	.loc 1 545 0
	lwz 31,12(1)
.LVL283:
	addi 1,1,16
	.cfi_restore 31
.LCFI79:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE81:
	.size	_glGetMatrixd, .-_glGetMatrixd
	.align 2
	.globl _glGetMatrixf
	.type	_glGetMatrixf, @function
_glGetMatrixf:
.LFB82:
	.loc 1 548 0
	.cfi_startproc
.LVL284:
	stwu 1,-16(1)
.LCFI80:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 552 0
	mr. 31,4
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 548 0
	stw 0,20(1)
	.loc 1 552 0
	beq- 0,.L130
	.cfi_offset 65, 4
	.loc 1 555 0
	cmpwi 7,3,2982
	beq- 7,.L133
	cmpwi 7,3,2983
	beq- 7,.L143
	.loc 1 587 0
	lis 4,.LC2@ha
.LVL285:
	li 3,1280
.LVL286:
	la 4,.LC2@l(4)
	li 5,587
	bl _glSetErrorEx
.L130:
	.loc 1 590 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL287:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL288:
.L143:
.LCFI82:
	.cfi_restore_state
	.loc 1 576 0
	lis 3,projection_stack@ha
.LVL289:
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL290:
	.loc 1 547 0
	addi 10,31,-4
	addi 31,31,60
.LVL291:
.L136:
	.loc 1 560 0 discriminator 1
	li 0,4
	mr 11,10
	mtctr 0
	li 9,0
.LVL292:
.L137:
	.loc 1 582 0 discriminator 2
	lwzx 0,3,9
	addi 9,9,16
	stwu 0,4(11)
	.loc 1 581 0 discriminator 2
	bdnz .L137
	.loc 1 581 0 is_stmt 0
	addi 10,10,16
	addi 3,3,4
	.loc 1 580 0 is_stmt 1
	cmpw 7,10,31
	bne+ 7,.L136
	.loc 1 590 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI83:
	.cfi_def_cfa_offset 0
	blr
.LVL293:
.L133:
.LCFI84:
	.cfi_restore_state
.LBB84:
	.loc 1 559 0
	lis 3,model_stack@ha
.LVL294:
	la 3,model_stack@l(3)
	bl TopMtx
.LVL295:
	.loc 1 564 0
	mr 9,31
	lwz 0,0(3)
	.loc 1 547 0
	addi 8,3,16
	addi 10,3,32
.LBE84:
	.loc 1 560 0
	li 11,0
.LBB85:
	.loc 1 564 0
	stw 0,0(31)
.LVL296:
	.loc 1 568 0
	li 6,0
	.loc 1 564 0
	lwz 0,16(3)
	stw 0,4(31)
.LVL297:
	lwz 0,32(3)
	stw 0,8(31)
.LVL298:
.L135:
	.loc 1 568 0
	stw 6,12(9)
.LVL299:
	.loc 1 560 0
	addi 11,11,1
.LVL300:
	.loc 1 547 0
	slwi 0,11,2
	.loc 1 567 0
	cmpwi 7,11,3
	.loc 1 564 0
	lwzx 0,3,0
	mr 7,9
	stw 0,16(9)
.LVL301:
	lwzu 0,4(8)
	stw 0,20(9)
.LVL302:
	lwzu 0,4(10)
	stw 0,24(9)
.LVL303:
	addi 9,9,16
.LVL304:
	.loc 1 567 0
	bne+ 7,.L135
	.loc 1 570 0
	lis 9,.LC0@ha
.LBE85:
	.loc 1 590 0
	lwz 31,12(1)
.LBB86:
	.loc 1 570 0
	lwz 0,.LC0@l(9)
	stw 0,28(7)
.LVL305:
.LBE86:
	.loc 1 590 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_restore 31
.LCFI85:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE82:
	.size	_glGetMatrixf, .-_glGetMatrixf
	.align 2
	.globl CopyGLfloatToMtx
	.type	CopyGLfloatToMtx, @function
CopyGLfloatToMtx:
.LFB83:
	.loc 1 593 0
	.cfi_startproc
.LVL306:
	li 0,4
	.loc 1 592 0
	addi 9,4,-4
	mtctr 0
	addi 8,4,16
	addi 10,4,32
.LVL307:
.L145:
	.loc 1 600 0 discriminator 1
	lwz 0,0(3)
	stwu 0,4(9)
.LVL308:
	lwz 0,4(3)
	.loc 1 592 0 discriminator 1
	subf 11,4,9
	.loc 1 600 0 discriminator 1
	stwx 0,11,8
.LVL309:
	lwz 0,8(3)
	.loc 1 592 0 discriminator 1
	addi 3,3,16
.LVL310:
	.loc 1 600 0 discriminator 1
	stwx 0,11,10
.LVL311:
	.loc 1 596 0 discriminator 1
	bdnz .L145
	.loc 1 604 0
	blr
	.cfi_endproc
.LFE83:
	.size	CopyGLfloatToMtx, .-CopyGLfloatToMtx
	.align 2
	.globl CopyGLfloatToMtx44
	.type	CopyGLfloatToMtx44, @function
CopyGLfloatToMtx44:
.LFB84:
	.loc 1 607 0
	.cfi_startproc
.LVL312:
	.loc 1 606 0
	addi 9,3,-4
	addi 3,3,60
.LVL313:
.L148:
	.loc 1 607 0 discriminator 1
	li 0,4
	mr 10,9
	mtctr 0
	li 11,0
.LVL314:
.L149:
	.loc 1 614 0 discriminator 2
	lwzu 0,4(10)
	stwx 0,4,11
	addi 11,11,16
	.loc 1 612 0 discriminator 2
	bdnz .L149
	.loc 1 612 0 is_stmt 0
	addi 9,9,16
	addi 4,4,4
	.loc 1 610 0 is_stmt 1
	cmpw 7,9,3
	bne+ 7,.L148
	blr
	.cfi_endproc
.LFE84:
	.size	CopyGLfloatToMtx44, .-CopyGLfloatToMtx44
	.align 2
	.globl gluLookAt
	.type	gluLookAt, @function
gluLookAt:
.LFB85:
	.loc 1 630 0
	.cfi_startproc
.LVL315:
	mflr 0
	stwu 1,-112(1)
.LCFI86:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	.loc 1 632 0
	lis 9,cur_state@ha
	.loc 1 630 0
	stw 31,108(1)
	stw 0,116(1)
	.loc 1 632 0
	lwz 0,cur_state@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	andi. 9,0,1
	bne- 0,.L157
	.loc 1 638 0
	lis 9,cur_mode@ha
	.loc 1 635 0
	lfd 0,120(1)
	.loc 1 638 0
	lwz 0,cur_mode@l(9)
	.loc 1 634 0
	frsp 1,1
.LVL316:
	frsp 2,2
.LVL317:
	.loc 1 638 0
	cmpwi 7,0,5889
	.loc 1 634 0
	frsp 3,3
.LVL318:
	.loc 1 635 0
	frsp 7,7
.LVL319:
	.loc 1 634 0
	stfs 1,32(1)
	.loc 1 635 0
	frsp 8,8
.LVL320:
	.loc 1 634 0
	stfs 2,36(1)
	.loc 1 635 0
	frsp 0,0
	.loc 1 634 0
	stfs 3,40(1)
	.loc 1 636 0
	frsp 4,4
.LVL321:
	.loc 1 635 0
	stfs 7,20(1)
	.loc 1 636 0
	frsp 5,5
.LVL322:
	.loc 1 635 0
	stfs 8,24(1)
	.loc 1 636 0
	frsp 6,6
.LVL323:
	.loc 1 635 0
	stfs 0,28(1)
	.loc 1 636 0
	stfs 4,8(1)
	stfs 5,12(1)
	stfs 6,16(1)
	.loc 1 638 0
	beq- 7,.L158
.LBB87:
	.loc 1 656 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL324:
	.loc 1 658 0
	cmpwi 7,3,0
	beq- 7,.L153
	.loc 1 663 0
	addi 4,1,32
	addi 5,1,20
	addi 6,1,8
	bl guLookAt
.LVL325:
.L153:
.LBE87:
	.loc 1 665 0
	lwz 0,116(1)
	lwz 31,108(1)
	mtlr 0
	addi 1,1,112
	.cfi_remember_state
.LCFI87:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L158:
.LCFI88:
	.cfi_restore_state
.LBB88:
	.loc 1 640 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopMtx44
.LVL326:
	.loc 1 643 0
	mr. 31,3
	beq- 0,.L153
	.loc 1 648 0
	addi 5,1,20
	addi 6,1,8
	addi 3,1,44
.LVL327:
	addi 4,1,32
	bl guLookAt
	.loc 1 650 0
	mr 4,31
	addi 3,1,44
	bl CopyMtxToMtx44
	.loc 1 652 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopPrjMtx
	bl computeZplanes
.LBE88:
	.loc 1 665 0
	lwz 0,116(1)
	lwz 31,108(1)
.LVL328:
	mtlr 0
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 31
.LCFI89:
	.cfi_def_cfa_offset 0
	blr
.LVL329:
.L157:
.LCFI90:
	.cfi_restore_state
	.loc 1 632 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,632
	bl _glSetErrorEx
.LVL330:
	.loc 1 665 0 discriminator 1
	lwz 0,116(1)
	lwz 31,108(1)
	mtlr 0
	addi 1,1,112
	.cfi_restore 31
.LCFI91:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE85:
	.size	gluLookAt, .-gluLookAt
	.align 2
	.globl gluPerspective
	.type	gluPerspective, @function
gluPerspective:
.LFB86:
	.loc 1 670 0
	.cfi_startproc
.LVL331:
	stwu 1,-112(1)
.LCFI92:
	.cfi_def_cfa_offset 112
	.loc 1 671 0
	lis 9,cur_state@ha
	.loc 1 670 0
	mflr 0
	stw 31,76(1)
	.loc 1 671 0
	lwz 31,cur_state@l(9)
	.cfi_offset 31, -36
	.cfi_register 65, 0
	.loc 1 670 0
	stfd 28,80(1)
	fmr 28,1
	.cfi_offset 60, -32
	.loc 1 671 0
	andi. 31,31,1
	.loc 1 670 0
	stfd 29,88(1)
	stfd 30,96(1)
	fmr 29,2
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	stfd 31,104(1)
	fmr 30,3
	stw 0,116(1)
	fmr 31,4
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	stw 30,72(1)
	.loc 1 671 0
	bne- 0,.L163
	.cfi_offset 30, -40
	.loc 1 673 0
	lis 9,cur_mode@ha
	lwz 0,cur_mode@l(9)
	cmpwi 7,0,5889
	beq- 7,.L164
.LBB89:
	.loc 1 691 0
	lis 9,curmtx@ha
	lwz 3,curmtx@l(9)
	bl TopMtx
.LVL332:
	.loc 1 693 0
	frsp 1,28
	frsp 2,29
	.loc 1 691 0
	mr 31,3
.LVL333:
	.loc 1 693 0
	frsp 3,30
	addi 3,1,8
.LVL334:
	frsp 4,31
	bl guPerspective
.LVL335:
.LBB90:
.LBB91:
	.loc 1 34 0
	lwz 0,8(1)
	stw 0,0(31)
.LVL336:
	lwz 0,12(1)
	stw 0,4(31)
.LVL337:
	lwz 0,16(1)
	stw 0,8(31)
.LVL338:
	lwz 0,20(1)
	stw 0,12(31)
.LVL339:
	lwz 0,24(1)
	stw 0,16(31)
.LVL340:
	lwz 0,28(1)
	stw 0,20(31)
.LVL341:
	lwz 0,32(1)
	stw 0,24(31)
.LVL342:
	lwz 0,36(1)
	stw 0,28(31)
.LVL343:
	lwz 0,40(1)
	stw 0,32(31)
.LVL344:
	lwz 0,44(1)
	stw 0,36(31)
.LVL345:
	lwz 0,48(1)
	stw 0,40(31)
.LVL346:
	lwz 0,52(1)
	stw 0,44(31)
.LVL347:
.L159:
.LBE91:
.LBE90:
.LBE89:
	.loc 1 697 0
	lwz 0,116(1)
	lwz 30,72(1)
	mtlr 0
	lwz 31,76(1)
	lfd 28,80(1)
.LVL348:
	lfd 29,88(1)
.LVL349:
	lfd 30,96(1)
.LVL350:
	lfd 31,104(1)
.LVL351:
	addi 1,1,112
	.cfi_remember_state
.LCFI93:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL352:
.L164:
.LCFI94:
	.cfi_restore_state
.LBB92:
	.loc 1 675 0
	lis 3,projection_stack@ha
	la 3,projection_stack@l(3)
	bl TopPrjMtx
.LVL353:
	.loc 1 677 0
	mr. 30,3
	beq- 0,.L159
	.loc 1 682 0
	frsp 30,30
.LVL354:
	frsp 31,31
.LVL355:
	frsp 1,28
	frsp 2,29
	fmr 3,30
	fmr 4,31
	bl guPerspective
.LVL356:
	.loc 1 683 0
	stb 31,64(30)
	.loc 1 685 0
	stfs 30,68(30)
.LBE92:
	.loc 1 697 0
	lwz 0,116(1)
.LBB93:
	.loc 1 686 0
	stfs 31,72(30)
.LBE93:
	.loc 1 697 0
	mtlr 0
	lwz 30,72(1)
.LVL357:
	lwz 31,76(1)
	lfd 28,80(1)
.LVL358:
	lfd 29,88(1)
.LVL359:
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI95:
	.cfi_def_cfa_offset 0
	blr
.LVL360:
.L163:
.LCFI96:
	.cfi_restore_state
	.loc 1 671 0 discriminator 1
	lis 4,.LC2@ha
	li 3,1282
	la 4,.LC2@l(4)
	li 5,671
	bl _glSetErrorEx
.LVL361:
	.loc 1 697 0 discriminator 1
	lwz 0,116(1)
	lwz 30,72(1)
	mtlr 0
	lwz 31,76(1)
	lfd 28,80(1)
.LVL362:
	lfd 29,88(1)
.LVL363:
	lfd 30,96(1)
.LVL364:
	lfd 31,104(1)
.LVL365:
	addi 1,1,112
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI97:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE86:
	.size	gluPerspective, .-gluPerspective
	.comm	call_offset,4,4
	.comm	read_mode,4,4
	.comm	glTexEnvs,864,4
	.comm	fog_color,4,1
	.comm	fog_density,4,4
	.comm	fog_endz,4,4
	.comm	fog_startz,4,4
	.comm	fog_mode,1,1
	.comm	fog_enable,1,1
	.comm	Trans,32,4
	.comm	_clearcolor,4,1
	.comm	copy_material,4,4
	.comm	copy_mat_enabled,1,1
	.comm	color_write_mask,4,4
	.comm	unpack,20,4
	.comm	pack,20,4
	.comm	point_size,4,4
	.comm	line_width,4,4
	.comm	normFar,4,4
	.comm	normNear,4,4
	.comm	viewPort,16,4
	.comm	scissorInfo,16,4
	.comm	scissor_test,1,1
	.comm	fb_max_width,4,4
	.comm	fb_max_height,4,4
	.comm	cur_state,4,4
	.comm	cull_mode,1,1
	.comm	blend_op,1,1
	.comm	blend_dst,1,1
	.comm	blend_src,1,1
	.comm	blend_type,1,1
	.comm	lighting,1,1
	.comm	gxwinding,4,4
	.comm	gxcullfaceanabled,1,1
	.comm	curmat,68,4
	.comm	globAmbient,16,4
	.comm	lights,1312,4
	.comm	cur_mode,4,4
	.comm	curmtx,4,4
	.comm	texture_stack,128,4
	.comm	projection_stack,16,4
	.comm	model_stack,16,4
	.comm	_cleardepth,4,4
	.comm	depthfunction,4,4
	.comm	depthupdate,1,1
	.comm	depthtestenabled,1,1
	.comm	cur_tex_client,4,4
	.comm	cur_tex,4,4
	.comm	_GLtype,4,4
	.comm	_type,4,4
	.comm	vert_i,4,4
	.comm	_colorelements,16000,32
	.comm	_texcoordelements,64000,32
	.comm	_vertexelements,12000,32
	.comm	_normalelements,12000,32
	.comm	color,20,4
	.comm	tex,160,4
	.comm	vert,20,4
	.comm	norm,20,4
	.comm	_temptexcoordelement,64,4
	.comm	_tempnormalelement,12,4
	.comm	_tempcolorelement,16,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC1:
	.4byte	0
.LC3:
	.4byte	-1082130432
.LC4:
	.4byte	1016003125
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC5:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC2:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_matrix.c"
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a05
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x1
	.4byte	.LASF215
	.4byte	.LASF216
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
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
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x50
	.4byte	0x30
	.uleb128 0x6
	.string	"u8"
	.byte	0x4
	.byte	0x11
	.4byte	0x94
	.uleb128 0x6
	.string	"u32"
	.byte	0x4
	.byte	0x13
	.4byte	0x9f
	.uleb128 0x6
	.string	"f32"
	.byte	0x4
	.byte	0x2b
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0xc
	.byte	0x5
	.byte	0x5e
	.4byte	0x113
	.uleb128 0xb
	.string	"x"
	.byte	0x5
	.byte	0x5f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x5
	.byte	0x5f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"z"
	.byte	0x5
	.byte	0x5f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x60
	.4byte	0xe2
	.uleb128 0x6
	.string	"Mtx"
	.byte	0x5
	.byte	0x73
	.4byte	0x129
	.uleb128 0xc
	.4byte	0xbf
	.4byte	0x13f
	.uleb128 0xd
	.4byte	0x30
	.byte	0x2
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x74
	.4byte	0x14a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x150
	.uleb128 0xc
	.4byte	0xbf
	.4byte	0x160
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x89
	.4byte	0x16b
	.uleb128 0xc
	.4byte	0xbf
	.4byte	0x181
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x8a
	.4byte	0x14a
	.uleb128 0xe
	.4byte	.LASF217
	.byte	0x4
	.byte	0x6
	.2byte	0x490
	.4byte	0x1ec
	.uleb128 0xf
	.string	"U8"
	.byte	0x6
	.2byte	0x492
	.4byte	0x1ec
	.uleb128 0xf
	.string	"S8"
	.byte	0x6
	.2byte	0x493
	.4byte	0x1f1
	.uleb128 0xf
	.string	"U16"
	.byte	0x6
	.2byte	0x494
	.4byte	0x1f6
	.uleb128 0xf
	.string	"S16"
	.byte	0x6
	.2byte	0x495
	.4byte	0x1fb
	.uleb128 0xf
	.string	"U32"
	.byte	0x6
	.2byte	0x496
	.4byte	0xcf
	.uleb128 0xf
	.string	"S32"
	.byte	0x6
	.2byte	0x497
	.4byte	0x200
	.uleb128 0xf
	.string	"F32"
	.byte	0x6
	.2byte	0x498
	.4byte	0xca
	.byte	0
	.uleb128 0x7
	.4byte	0x37
	.uleb128 0x7
	.4byte	0x47
	.uleb128 0x7
	.4byte	0x3e
	.uleb128 0x7
	.4byte	0x4e
	.uleb128 0x7
	.4byte	0x55
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x499
	.4byte	0x18c
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6
	.2byte	0x49e
	.4byte	0x253
	.uleb128 0x12
	.string	"r"
	.byte	0x6
	.2byte	0x49f
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"g"
	.byte	0x6
	.2byte	0x4a0
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"b"
	.byte	0x6
	.2byte	0x4a1
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"a"
	.byte	0x6
	.2byte	0x4a2
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x4a3
	.4byte	0x211
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x40
	.byte	0x6
	.2byte	0x4f1
	.4byte	0x27c
	.uleb128 0x12
	.string	"val"
	.byte	0x6
	.2byte	0x4f2
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	0xb4
	.4byte	0x28c
	.uleb128 0xd
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x4f3
	.4byte	0x25f
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x94
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x7
	.byte	0x99
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x7
	.byte	0x9d
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x7
	.byte	0x9e
	.4byte	0x86
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0xa0
	.4byte	0x7f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0x13
	.4byte	0x2cf
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2cf
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2fc
	.uleb128 0x13
	.4byte	0x2da
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2da
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x328
	.uleb128 0xb
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x8
	.byte	0x19
	.4byte	0x307
	.uleb128 0x14
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x354
	.uleb128 0xb
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1f
	.4byte	0x333
	.uleb128 0x14
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x398
	.uleb128 0xb
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x8
	.byte	0x27
	.4byte	0x35f
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x14
	.byte	0x8
	.byte	0x42
	.4byte	0x3f4
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x8
	.byte	0x44
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"p"
	.byte	0x8
	.byte	0x45
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x8
	.byte	0x46
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x8
	.byte	0x47
	.4byte	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x8
	.byte	0x48
	.4byte	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x8
	.byte	0x49
	.4byte	0x3a3
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4c
	.byte	0x8
	.byte	0x70
	.4byte	0x444
	.uleb128 0xb
	.string	"mat"
	.byte	0x8
	.byte	0x72
	.4byte	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x8
	.byte	0x73
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x8
	.byte	0x74
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x8
	.byte	0x75
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x8
	.byte	0x76
	.4byte	0x3ff
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x494
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x9
	.byte	0xe
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x9
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x9
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x9
	.byte	0x12
	.4byte	0x44f
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xa4
	.byte	0x8
	.byte	0x83
	.4byte	0x55a
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x8
	.byte	0x85
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"obj"
	.byte	0x8
	.byte	0x87
	.4byte	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x89
	.4byte	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8b
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x8
	.byte	0x8d
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x8
	.byte	0x8e
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x8
	.byte	0x8f
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x8
	.byte	0x91
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.byte	0x92
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x8
	.byte	0x93
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x8
	.byte	0x94
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x8
	.byte	0x95
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x8
	.byte	0x96
	.4byte	0x49f
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x44
	.byte	0x8
	.byte	0xa0
	.4byte	0x5b8
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.byte	0xa2
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x8
	.byte	0xa3
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa4
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x8
	.byte	0xa5
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x8
	.byte	0xa6
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x8
	.byte	0xa7
	.4byte	0x565
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x5e2
	.uleb128 0x17
	.4byte	.LASF68
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF69
	.sleb128 1
	.uleb128 0x17
	.4byte	.LASF70
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x8
	.byte	0xc4
	.4byte	0x5c3
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x10
	.byte	0x8
	.byte	0xe8
	.4byte	0x62e
	.uleb128 0xb
	.string	"x"
	.byte	0x8
	.byte	0xea
	.4byte	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x8
	.byte	0xeb
	.4byte	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.byte	0xec
	.4byte	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.byte	0xed
	.4byte	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x8
	.byte	0xee
	.4byte	0x5ed
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x14
	.byte	0x8
	.byte	0xfb
	.4byte	0x69d
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.byte	0xfd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.byte	0xfe
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.byte	0xff
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x100
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x101
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x102
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x103
	.4byte	0x639
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x8
	.byte	0x8
	.2byte	0x117
	.4byte	0x6d5
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x119
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x11a
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x11b
	.4byte	0x6a9
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x6c
	.byte	0x8
	.2byte	0x127
	.4byte	0x839
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x129
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x12b
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x12c
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x12d
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x12e
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x12f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x130
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x131
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x132
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x133
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x134
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x136
	.4byte	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x138
	.4byte	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x139
	.4byte	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x13b
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x13c
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x13d
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x13e
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"tex"
	.byte	0x8
	.2byte	0x140
	.4byte	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x142
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x144
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x145
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0xc
	.4byte	0x298
	.4byte	0x849
	.uleb128 0xd
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x146
	.4byte	0x6e1
	.uleb128 0x19
	.4byte	.LASF219
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.byte	0x1
	.4byte	0x86c
	.uleb128 0x1a
	.string	"m"
	.byte	0x1
	.byte	0x27
	.4byte	0x86c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x444
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.4byte	0x8a9
	.uleb128 0x1a
	.string	"src"
	.byte	0x1
	.byte	0x1b
	.4byte	0x8a9
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1b
	.4byte	0x13f
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	0x181
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x25e
	.byte	0x1
	.byte	0x1
	.4byte	0x8e8
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x2e5
	.uleb128 0x1f
	.string	"mat"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x181
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x260
	.4byte	0x25
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x260
	.4byte	0x25
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x250
	.byte	0x1
	.byte	0x1
	.4byte	0x922
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.2byte	0x250
	.4byte	0x2e5
	.uleb128 0x1f
	.string	"mat"
	.byte	0x1
	.2byte	0x250
	.4byte	0x13f
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x252
	.4byte	0x25
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x252
	.4byte	0x25
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1ad
	.byte	0x1
	.byte	0x1
	.4byte	0x9a8
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x2e5
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x25
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x25
	.uleb128 0x21
	.4byte	0x98d
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x9a8
	.uleb128 0x22
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x181
	.uleb128 0x20
	.string	"mat"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x160
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x160
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x25
	.byte	0
	.uleb128 0x23
	.uleb128 0x22
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x9ae
	.uleb128 0x20
	.string	"mat"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x11e
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x160
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa08
	.uleb128 0x25
	.string	"m"
	.byte	0x1
	.byte	0x35
	.4byte	0x86c
	.4byte	.LLST0
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0x37
	.4byte	0xbf
	.byte	0x2
	.byte	0x73
	.sleb128 40
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.byte	0x38
	.4byte	0xbf
	.byte	0x2
	.byte	0x73
	.sleb128 44
	.uleb128 0x27
	.4byte	0x855
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3a
	.uleb128 0x28
	.4byte	0x862
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa55
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0xc
	.4byte	0xa55
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF108
	.byte	0x1
	.byte	0xc
	.4byte	0x181
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST2
	.byte	0
	.uleb128 0x13
	.4byte	0x13f
	.uleb128 0x2d
	.4byte	0x872
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa8f
	.uleb128 0x28
	.4byte	0x880
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	0x88b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	0x896
	.4byte	.LLST3
	.uleb128 0x2e
	.4byte	0x89f
	.4byte	.LLST4
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST5
	.4byte	0xb8f
	.uleb128 0x30
	.4byte	.LASF116
	.byte	0x1
	.byte	0x49
	.4byte	0x2da
	.4byte	.LLST6
	.uleb128 0x30
	.4byte	.LASF117
	.byte	0x1
	.byte	0x4a
	.4byte	0x2da
	.4byte	.LLST7
	.uleb128 0x30
	.4byte	.LASF118
	.byte	0x1
	.byte	0x4b
	.4byte	0x2da
	.4byte	.LLST8
	.uleb128 0x25
	.string	"top"
	.byte	0x1
	.byte	0x4c
	.4byte	0x2da
	.4byte	.LLST9
	.uleb128 0x30
	.4byte	.LASF119
	.byte	0x1
	.byte	0x4d
	.4byte	0x2da
	.4byte	.LLST10
	.uleb128 0x30
	.4byte	.LASF120
	.byte	0x1
	.byte	0x4e
	.4byte	0x2da
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0xb6c
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.byte	0x64
	.4byte	0x160
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.4byte	.LASF113
	.byte	0x1
	.byte	0x65
	.4byte	0x9ae
	.4byte	.LLST12
	.uleb128 0x33
	.4byte	0x872
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0x1
	.byte	0x69
	.uleb128 0x34
	.4byte	0x88b
	.4byte	.LLST13
	.uleb128 0x34
	.4byte	0x880
	.4byte	.LLST14
	.uleb128 0x35
	.4byte	.LBB38
	.4byte	.LBE38
	.uleb128 0x2e
	.4byte	0x896
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	0x89f
	.4byte	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0x54
	.4byte	0x86c
	.4byte	.LLST17
	.uleb128 0x2c
	.string	"tmp"
	.byte	0x1
	.byte	0x55
	.4byte	0x9a8
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST19
	.4byte	0xc84
	.uleb128 0x30
	.4byte	.LASF116
	.byte	0x1
	.byte	0x6d
	.4byte	0x2da
	.4byte	.LLST20
	.uleb128 0x30
	.4byte	.LASF117
	.byte	0x1
	.byte	0x6e
	.4byte	0x2da
	.4byte	.LLST21
	.uleb128 0x30
	.4byte	.LASF118
	.byte	0x1
	.byte	0x6f
	.4byte	0x2da
	.4byte	.LLST22
	.uleb128 0x25
	.string	"top"
	.byte	0x1
	.byte	0x70
	.4byte	0x2da
	.4byte	.LLST23
	.uleb128 0x30
	.4byte	.LASF122
	.byte	0x1
	.byte	0x71
	.4byte	0x2da
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	.LASF123
	.byte	0x1
	.byte	0x72
	.4byte	0x2da
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0xc6c
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.4byte	0x160
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.4byte	.LASF113
	.byte	0x1
	.byte	0x8f
	.4byte	0x9ae
	.4byte	.LLST26
	.uleb128 0x33
	.4byte	0x872
	.4byte	.LBB42
	.4byte	.LBE42
	.byte	0x1
	.byte	0x98
	.uleb128 0x34
	.4byte	0x88b
	.4byte	.LLST27
	.uleb128 0x34
	.4byte	0x880
	.4byte	.LLST28
	.uleb128 0x35
	.4byte	.LBB43
	.4byte	.LBE43
	.uleb128 0x2e
	.4byte	0x896
	.4byte	.LLST29
	.uleb128 0x2e
	.4byte	0x89f
	.4byte	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LBB44
	.4byte	.LBE44
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0x7e
	.4byte	0x86c
	.4byte	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST32
	.4byte	0xcad
	.uleb128 0x30
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9c
	.4byte	0x298
	.4byte	.LLST33
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST34
	.4byte	0xd17
	.uleb128 0x31
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0xce3
	.uleb128 0x32
	.4byte	.LASF113
	.byte	0x1
	.byte	0xd1
	.4byte	0x9ae
	.4byte	.LLST35
	.byte	0
	.uleb128 0x35
	.4byte	.LBB46
	.4byte	.LBE46
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0xb9
	.4byte	0x86c
	.4byte	.LLST36
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.4byte	0x55
	.4byte	.LLST37
	.uleb128 0x32
	.4byte	.LASF113
	.byte	0x1
	.byte	0xc2
	.4byte	0x181
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST39
	.4byte	0xd82
	.uleb128 0x25
	.string	"m"
	.byte	0x1
	.byte	0xdc
	.4byte	0x2e5
	.4byte	.LLST40
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.4byte	.LLST41
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.byte	0xe0
	.4byte	0x25
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0xd6c
	.uleb128 0x32
	.4byte	.LASF113
	.byte	0x1
	.byte	0xf7
	.4byte	0x9ae
	.4byte	.LLST42
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x32
	.4byte	.LASF113
	.byte	0x1
	.byte	0xe4
	.4byte	0x9a8
	.4byte	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST44
	.4byte	0xdf3
	.uleb128 0x39
	.string	"m"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x2f6
	.4byte	.LLST45
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.4byte	.LLST46
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x110
	.4byte	0x25
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0xddc
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x127
	.4byte	0x9ae
	.4byte	.LLST47
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x114
	.4byte	0x9a8
	.4byte	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0x922
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST49
	.4byte	0xf13
	.uleb128 0x34
	.4byte	0x931
	.4byte	.LLST50
	.uleb128 0x3d
	.4byte	0x93b
	.uleb128 0x3d
	.4byte	0x945
	.uleb128 0x31
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	0xe72
	.uleb128 0x2e
	.4byte	0x98e
	.4byte	.LLST51
	.uleb128 0x3e
	.4byte	0x99a
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3f
	.4byte	0x8e8
	.4byte	.LBB71
	.4byte	.LBE71
	.byte	0x1
	.2byte	0x1e7
	.uleb128 0x40
	.4byte	0x901
	.uleb128 0x34
	.4byte	0x8f7
	.4byte	.LLST52
	.uleb128 0x35
	.4byte	.LBB72
	.4byte	.LBE72
	.uleb128 0x2e
	.4byte	0x90d
	.4byte	.LLST53
	.uleb128 0x3d
	.4byte	0x917
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x922
	.4byte	.LBB73
	.4byte	.LBE73
	.byte	0x1
	.2byte	0x1ad
	.uleb128 0x34
	.4byte	0x931
	.4byte	.LLST54
	.uleb128 0x35
	.4byte	.LBB74
	.4byte	.LBE74
	.uleb128 0x2e
	.4byte	0x93b
	.4byte	.LLST55
	.uleb128 0x2e
	.4byte	0x945
	.4byte	.LLST56
	.uleb128 0x35
	.4byte	.LBB75
	.4byte	.LBE75
	.uleb128 0x2e
	.4byte	0x954
	.4byte	.LLST57
	.uleb128 0x3d
	.4byte	0x95e
	.uleb128 0x3e
	.4byte	0x96a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3e
	.4byte	0x976
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.4byte	0x982
	.4byte	.LLST58
	.uleb128 0x3f
	.4byte	0x8ae
	.4byte	.LBB76
	.4byte	.LBE76
	.byte	0x1
	.2byte	0x1c0
	.uleb128 0x40
	.4byte	0x8c7
	.uleb128 0x34
	.4byte	0x8bd
	.4byte	.LLST59
	.uleb128 0x35
	.4byte	.LBB77
	.4byte	.LBE77
	.uleb128 0x2e
	.4byte	0x8d3
	.4byte	.LLST60
	.uleb128 0x3d
	.4byte	0x8dd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x18d
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST61
	.4byte	0xfa0
	.uleb128 0x39
	.string	"x"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x2cf
	.4byte	.LLST62
	.uleb128 0x39
	.string	"y"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x2cf
	.4byte	.LLST63
	.uleb128 0x39
	.string	"z"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x2cf
	.4byte	.LLST64
	.uleb128 0x31
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0xf85
	.uleb128 0x41
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x19e
	.4byte	0x11e
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x9ae
	.4byte	.LLST65
	.byte	0
	.uleb128 0x35
	.4byte	.LBB79
	.4byte	.LBE79
	.uleb128 0x42
	.string	"arr"
	.byte	0x1
	.2byte	0x193
	.4byte	0xfa0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x2cf
	.4byte	0xfb0
	.uleb128 0xd
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x160
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST66
	.4byte	0x1079
	.uleb128 0x43
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x160
	.4byte	0x2cf
	.4byte	.LLST67
	.uleb128 0x39
	.string	"x"
	.byte	0x1
	.2byte	0x160
	.4byte	0x2cf
	.4byte	.LLST68
	.uleb128 0x39
	.string	"y"
	.byte	0x1
	.2byte	0x160
	.4byte	0x2cf
	.4byte	.LLST69
	.uleb128 0x39
	.string	"z"
	.byte	0x1
	.2byte	0x160
	.4byte	0x2cf
	.4byte	.LLST70
	.uleb128 0x31
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	0x1042
	.uleb128 0x41
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x179
	.4byte	0x11e
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x17b
	.4byte	0x9ae
	.4byte	.LLST71
	.uleb128 0x41
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x182
	.4byte	0x113
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x35
	.4byte	.LBB81
	.4byte	.LBE81
	.uleb128 0x3a
	.string	"s"
	.byte	0x1
	.2byte	0x166
	.4byte	0x2cf
	.4byte	.LLST72
	.uleb128 0x3a
	.string	"c"
	.byte	0x1
	.2byte	0x167
	.4byte	0x2cf
	.4byte	.LLST73
	.uleb128 0x42
	.string	"arr"
	.byte	0x1
	.2byte	0x16e
	.4byte	0xfa0
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x139
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST74
	.4byte	0x1106
	.uleb128 0x39
	.string	"x"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2cf
	.4byte	.LLST75
	.uleb128 0x39
	.string	"y"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2cf
	.4byte	.LLST76
	.uleb128 0x39
	.string	"z"
	.byte	0x1
	.2byte	0x139
	.4byte	0x2cf
	.4byte	.LLST77
	.uleb128 0x31
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	0x10eb
	.uleb128 0x41
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x14a
	.4byte	0x11e
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x14c
	.4byte	0x9ae
	.4byte	.LLST78
	.byte	0
	.uleb128 0x35
	.4byte	.LBB83
	.4byte	.LBE83
	.uleb128 0x42
	.string	"arr"
	.byte	0x1
	.2byte	0x13f
	.4byte	0xfa0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x159
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST79
	.4byte	0x114b
	.uleb128 0x39
	.string	"x"
	.byte	0x1
	.2byte	0x159
	.4byte	0x2da
	.4byte	.LLST80
	.uleb128 0x39
	.string	"y"
	.byte	0x1
	.2byte	0x159
	.4byte	0x2da
	.4byte	.LLST81
	.uleb128 0x39
	.string	"z"
	.byte	0x1
	.2byte	0x159
	.4byte	0x2da
	.4byte	.LLST82
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1ed
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST83
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1f3
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST84
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1fb
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST85
	.4byte	0x11ed
	.uleb128 0x43
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x298
	.4byte	.LLST86
	.uleb128 0x43
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x301
	.4byte	.LLST87
	.uleb128 0x3a
	.string	"pm"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x86c
	.4byte	.LLST88
	.uleb128 0x3b
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x13f
	.4byte	.LLST89
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x55
	.4byte	.LLST90
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x55
	.4byte	.LLST91
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x223
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST92
	.4byte	0x1267
	.uleb128 0x43
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x223
	.4byte	0x298
	.4byte	.LLST93
	.uleb128 0x43
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x223
	.4byte	0x2f0
	.4byte	.LLST94
	.uleb128 0x3a
	.string	"pm"
	.byte	0x1
	.2byte	0x225
	.4byte	0x86c
	.4byte	.LLST95
	.uleb128 0x3a
	.string	"i"
	.byte	0x1
	.2byte	0x226
	.4byte	0x25
	.4byte	.LLST96
	.uleb128 0x3a
	.string	"j"
	.byte	0x1
	.2byte	0x226
	.4byte	0x25
	.4byte	.LLST97
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x41
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x22f
	.4byte	0x13f
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x8e8
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x129e
	.uleb128 0x34
	.4byte	0x8f7
	.4byte	.LLST98
	.uleb128 0x28
	.4byte	0x901
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	0x90d
	.4byte	.LLST99
	.uleb128 0x2e
	.4byte	0x917
	.4byte	.LLST100
	.byte	0
	.uleb128 0x2d
	.4byte	0x8ae
	.4byte	.LFB84
	.4byte	.LFE84
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x12d7
	.uleb128 0x34
	.4byte	0x8bd
	.4byte	.LLST101
	.uleb128 0x34
	.4byte	0x8c7
	.4byte	.LLST102
	.uleb128 0x2e
	.4byte	0x8d3
	.4byte	.LLST103
	.uleb128 0x2e
	.4byte	0x8dd
	.4byte	.LLST104
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x26e
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST105
	.4byte	0x13f8
	.uleb128 0x43
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x26e
	.4byte	0x2da
	.4byte	.LLST106
	.uleb128 0x43
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x26f
	.4byte	0x2da
	.4byte	.LLST107
	.uleb128 0x43
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x270
	.4byte	0x2da
	.4byte	.LLST108
	.uleb128 0x43
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x271
	.4byte	0x2da
	.4byte	.LLST109
	.uleb128 0x43
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x272
	.4byte	0x2da
	.4byte	.LLST110
	.uleb128 0x43
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x273
	.4byte	0x2da
	.4byte	.LLST111
	.uleb128 0x39
	.string	"upX"
	.byte	0x1
	.2byte	0x274
	.4byte	0x2da
	.4byte	.LLST112
	.uleb128 0x39
	.string	"upY"
	.byte	0x1
	.2byte	0x275
	.4byte	0x2da
	.4byte	.LLST113
	.uleb128 0x45
	.string	"upZ"
	.byte	0x1
	.2byte	0x276
	.4byte	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x42
	.string	"cam"
	.byte	0x1
	.2byte	0x27a
	.4byte	0x113
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x42
	.string	"up"
	.byte	0x1
	.2byte	0x27b
	.4byte	0x113
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x41
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x27c
	.4byte	0x113
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	0x13cd
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x290
	.4byte	0x9ae
	.4byte	.LLST114
	.byte	0
	.uleb128 0x35
	.4byte	.LBB88
	.4byte	.LBE88
	.uleb128 0x3a
	.string	"tmp"
	.byte	0x1
	.2byte	0x280
	.4byte	0x9a8
	.4byte	.LLST115
	.uleb128 0x42
	.string	"mat"
	.byte	0x1
	.2byte	0x281
	.4byte	0x11e
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x29b
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST116
	.4byte	0x14d4
	.uleb128 0x43
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x29b
	.4byte	0x2da
	.4byte	.LLST117
	.uleb128 0x43
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x29c
	.4byte	0x2da
	.4byte	.LLST118
	.uleb128 0x43
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x29d
	.4byte	0x2da
	.4byte	.LLST119
	.uleb128 0x43
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x29e
	.4byte	0x2da
	.4byte	.LLST120
	.uleb128 0x31
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	0x14bf
	.uleb128 0x42
	.string	"tmp"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x160
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x9ae
	.4byte	.LLST121
	.uleb128 0x3f
	.4byte	0x872
	.4byte	.LBB90
	.4byte	.LBE90
	.byte	0x1
	.2byte	0x2b7
	.uleb128 0x34
	.4byte	0x88b
	.4byte	.LLST122
	.uleb128 0x34
	.4byte	0x880
	.4byte	.LLST123
	.uleb128 0x35
	.4byte	.LBB91
	.4byte	.LBE91
	.uleb128 0x2e
	.4byte	0x896
	.4byte	.LLST124
	.uleb128 0x2e
	.4byte	0x89f
	.4byte	.LLST125
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0xe0
	.uleb128 0x3a
	.string	"p"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x86c
	.4byte	.LLST126
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF153
	.byte	0x6
	.2byte	0x548
	.4byte	0x14e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x14e7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x205
	.uleb128 0x47
	.4byte	.LASF154
	.byte	0x8
	.byte	0x3d
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x47
	.4byte	.LASF155
	.byte	0x8
	.byte	0x3e
	.4byte	0x113
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xc
	.4byte	0x354
	.4byte	0x1521
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x47
	.4byte	.LASF156
	.byte	0x8
	.byte	0x3f
	.4byte	0x1511
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x47
	.4byte	.LASF157
	.byte	0x8
	.byte	0x4b
	.4byte	0x3f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x47
	.4byte	.LASF158
	.byte	0x8
	.byte	0x4c
	.4byte	0x3f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xc
	.4byte	0x3f4
	.4byte	0x1567
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x48
	.string	"tex"
	.byte	0x8
	.byte	0x4d
	.4byte	0x1557
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x47
	.4byte	.LASF104
	.byte	0x8
	.byte	0x4e
	.4byte	0x3f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xc
	.4byte	0x113
	.4byte	0x159c
	.uleb128 0x49
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x47
	.4byte	.LASF159
	.byte	0x8
	.byte	0x50
	.4byte	0x158b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x47
	.4byte	.LASF160
	.byte	0x8
	.byte	0x51
	.4byte	0x158b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xc
	.4byte	0x354
	.4byte	0x15d7
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.uleb128 0x49
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x47
	.4byte	.LASF161
	.byte	0x8
	.byte	0x52
	.4byte	0x15c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xc
	.4byte	0x398
	.4byte	0x15fa
	.uleb128 0x49
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x47
	.4byte	.LASF162
	.byte	0x8
	.byte	0x53
	.4byte	0x15e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x47
	.4byte	.LASF163
	.byte	0x8
	.byte	0x5d
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x47
	.4byte	.LASF164
	.byte	0x8
	.byte	0x5e
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x47
	.4byte	.LASF165
	.byte	0x8
	.byte	0x5f
	.4byte	0x298
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x47
	.4byte	.LASF166
	.byte	0x8
	.byte	0x61
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x47
	.4byte	.LASF167
	.byte	0x8
	.byte	0x62
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x47
	.4byte	.LASF168
	.byte	0x8
	.byte	0x6b
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x47
	.4byte	.LASF169
	.byte	0x8
	.byte	0x6c
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x47
	.4byte	.LASF170
	.byte	0x8
	.byte	0x6d
	.4byte	0x298
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x47
	.4byte	.LASF171
	.byte	0x8
	.byte	0x6e
	.4byte	0x86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x47
	.4byte	.LASF172
	.byte	0x8
	.byte	0x7a
	.4byte	0x494
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x47
	.4byte	.LASF173
	.byte	0x8
	.byte	0x7b
	.4byte	0x494
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xc
	.4byte	0x494
	.4byte	0x16e2
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x47
	.4byte	.LASF174
	.byte	0x8
	.byte	0x7c
	.4byte	0x16d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x47
	.4byte	.LASF175
	.byte	0x8
	.byte	0x7d
	.4byte	0x1706
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x8
	.byte	0x4
	.4byte	0x494
	.uleb128 0x47
	.4byte	.LASF176
	.byte	0x8
	.byte	0x7e
	.4byte	0x298
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xc
	.4byte	0x55a
	.4byte	0x172e
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x47
	.4byte	.LASF177
	.byte	0x8
	.byte	0x99
	.4byte	0x171e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x47
	.4byte	.LASF178
	.byte	0x8
	.byte	0x9c
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x47
	.4byte	.LASF179
	.byte	0x8
	.byte	0xa9
	.4byte	0x5b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x47
	.4byte	.LASF180
	.byte	0x8
	.byte	0xac
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x47
	.4byte	.LASF181
	.byte	0x8
	.byte	0xad
	.4byte	0x298
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x47
	.4byte	.LASF182
	.byte	0x8
	.byte	0xb1
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x47
	.4byte	.LASF183
	.byte	0x8
	.byte	0xb8
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x47
	.4byte	.LASF184
	.byte	0x8
	.byte	0xb9
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x47
	.4byte	.LASF185
	.byte	0x8
	.byte	0xba
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x47
	.4byte	.LASF186
	.byte	0x8
	.byte	0xbb
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x47
	.4byte	.LASF187
	.byte	0x8
	.byte	0xbd
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x47
	.4byte	.LASF188
	.byte	0x8
	.byte	0xc6
	.4byte	0x5e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x47
	.4byte	.LASF189
	.byte	0x8
	.byte	0xf0
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x47
	.4byte	.LASF190
	.byte	0x8
	.byte	0xf1
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x47
	.4byte	.LASF191
	.byte	0x8
	.byte	0xf2
	.4byte	0x2a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x47
	.4byte	.LASF192
	.byte	0x8
	.byte	0xf3
	.4byte	0x62e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x47
	.4byte	.LASF193
	.byte	0x8
	.byte	0xf4
	.4byte	0x62e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x47
	.4byte	.LASF194
	.byte	0x8
	.byte	0xf5
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x47
	.4byte	.LASF195
	.byte	0x8
	.byte	0xf6
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x47
	.4byte	.LASF196
	.byte	0x8
	.byte	0xf8
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x47
	.4byte	.LASF197
	.byte	0x8
	.byte	0xf9
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x4a
	.4byte	.LASF198
	.byte	0x8
	.2byte	0x105
	.4byte	0x69d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x4a
	.4byte	.LASF199
	.byte	0x8
	.2byte	0x106
	.4byte	0x69d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xc
	.4byte	0xd4
	.4byte	0x18de
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF200
	.byte	0x8
	.2byte	0x107
	.4byte	0x18ce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x4a
	.4byte	.LASF201
	.byte	0x8
	.2byte	0x10d
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x4a
	.4byte	.LASF202
	.byte	0x8
	.2byte	0x10e
	.4byte	0x298
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x4a
	.4byte	.LASF203
	.byte	0x8
	.2byte	0x111
	.4byte	0x253
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xc
	.4byte	0x6d5
	.4byte	0x193a
	.uleb128 0xd
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF204
	.byte	0x8
	.2byte	0x125
	.4byte	0x192a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x4a
	.4byte	.LASF205
	.byte	0x8
	.2byte	0x14a
	.4byte	0xd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x4a
	.4byte	.LASF206
	.byte	0x8
	.2byte	0x14b
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x4a
	.4byte	.LASF207
	.byte	0x8
	.2byte	0x14c
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x4a
	.4byte	.LASF208
	.byte	0x8
	.2byte	0x14d
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x4a
	.4byte	.LASF209
	.byte	0x8
	.2byte	0x14e
	.4byte	0xbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x4a
	.4byte	.LASF210
	.byte	0x8
	.2byte	0x14f
	.4byte	0x253
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xc
	.4byte	0x849
	.4byte	0x19cf
	.uleb128 0xd
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF211
	.byte	0x8
	.2byte	0x151
	.4byte	0x19bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x4a
	.4byte	.LASF212
	.byte	0x8
	.2byte	0x156
	.4byte	0x298
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x4a
	.4byte	.LASF213
	.byte	0x8
	.2byte	0x159
	.4byte	0x2b9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
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
	.uleb128 0x1b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL57-1-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL78-1-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL96-1-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL100-1-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL104-1-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL78-1-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL96-1-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL100-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL104-1-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105-1-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-1-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-1-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB72-.Ltext0
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
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB78-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 144
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL168-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI49-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL194-1-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL206-1-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL194-1-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL206-1-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL194-1-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL206-1-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI55-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL211-1-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL219-1-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL211-1-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL219-1-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL226-1-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL211-1-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL219-1-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL226-1-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL211-1-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL219-1-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL226-1-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL234-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI61-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL236-1-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL243-1-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL248-1-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL236-1-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL243-1-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL248-1-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL236-1-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL243-1-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL248-1-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI69-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI71-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI73-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI75-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI76-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI77-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL264-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL264-1-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL269-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL269-1-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI81-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI82-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI83-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI85-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL290-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL290-1-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL295-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL295-1-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 20
	.byte	0x9f
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 28
	.byte	0x9f
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 28
	.byte	0x9f
	.4byte	.LVL305-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL305-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LFE83-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LFB85-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI86-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI87-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI88-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI89-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI90-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI91-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI92-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI93-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI94-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI97-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL332-1-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL353-1-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL361-1-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL332-1-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL353-1-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL361-1-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL332-1-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL353-1-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL361-1-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL332-1-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL353-1-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL361-1-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL356-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL356-1-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x6e
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
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"CopyGLfloatToMtx44"
.LASF150:
	.string	"gluPerspective"
.LASF139:
	.string	"params"
.LASF119:
	.string	"zNear"
.LASF146:
	.string	"centerX"
.LASF147:
	.string	"centerY"
.LASF148:
	.string	"centerZ"
.LASF8:
	.string	"char"
.LASF29:
	.string	"GLint"
.LASF20:
	.string	"Mtx44P"
.LASF72:
	.string	"boxInfo"
.LASF178:
	.string	"globAmbient"
.LASF174:
	.string	"texture_stack"
.LASF188:
	.string	"cur_state"
.LASF127:
	.string	"glLoadMatrixd"
.LASF126:
	.string	"glLoadMatrixf"
.LASF189:
	.string	"fb_max_height"
.LASF159:
	.string	"_normalelements"
.LASF120:
	.string	"zFar"
.LASF64:
	.string	"_mat"
.LASF57:
	.string	"specular"
.LASF161:
	.string	"_texcoordelements"
.LASF132:
	.string	"axis"
.LASF59:
	.string	"spotCutoff"
.LASF87:
	.string	"_tex_env"
.LASF179:
	.string	"curmat"
.LASF49:
	.string	"begin"
.LASF44:
	.string	"mode"
.LASF203:
	.string	"_clearcolor"
.LASF93:
	.string	"maxlod"
.LASF68:
	.string	"GL_STATE_NONE"
.LASF115:
	.string	"glFrustum"
.LASF25:
	.string	"_gx_litobj"
.LASF66:
	.string	"shininess"
.LASF176:
	.string	"cur_mode"
.LASF160:
	.string	"_vertexelements"
.LASF36:
	.string	"GXColorf"
.LASF101:
	.string	"CargOp"
.LASF142:
	.string	"gluLookAt"
.LASF171:
	.string	"_cleardepth"
.LASF56:
	.string	"diffuse"
.LASF155:
	.string	"_tempnormalelement"
.LASF167:
	.string	"cur_tex_client"
.LASF158:
	.string	"vert"
.LASF15:
	.string	"uint32_t"
.LASF206:
	.string	"fog_mode"
.LASF208:
	.string	"fog_endz"
.LASF164:
	.string	"_type"
.LASF11:
	.string	"float"
.LASF85:
	.string	"bias"
.LASF112:
	.string	"glMultMatrixf"
.LASF24:
	.string	"GXColor"
.LASF46:
	.string	"farZclip"
.LASF42:
	.string	"VertexArray"
.LASF196:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF124:
	.string	"glMatrixMode"
.LASF204:
	.string	"Trans"
.LASF198:
	.string	"pack"
.LASF193:
	.string	"viewPort"
.LASF88:
	.string	"min_filter"
.LASF135:
	.string	"glPopMatrix"
.LASF172:
	.string	"model_stack"
.LASF200:
	.string	"color_write_mask"
.LASF100:
	.string	"Carg"
.LASF122:
	.string	"nearVal"
.LASF38:
	.string	"enable"
.LASF211:
	.string	"glTexEnvs"
.LASF113:
	.string	"cur_mat"
.LASF149:
	.string	"look"
.LASF183:
	.string	"blend_type"
.LASF151:
	.string	"fovy"
.LASF128:
	.string	"glScalef"
.LASF210:
	.string	"fog_color"
.LASF13:
	.string	"size_t"
.LASF73:
	.string	"width"
.LASF201:
	.string	"copy_mat_enabled"
.LASF166:
	.string	"cur_tex"
.LASF53:
	.string	"enabled"
.LASF217:
	.string	"_wgpipe"
.LASF99:
	.string	"comAlpha"
.LASF16:
	.string	"_Bool"
.LASF35:
	.string	"TexCoordElement"
.LASF33:
	.string	"GLdouble"
.LASF191:
	.string	"scissor_test"
.LASF137:
	.string	"_glGetMatrixd"
.LASF141:
	.string	"_glGetMatrixf"
.LASF197:
	.string	"point_size"
.LASF125:
	.string	"glLoadIdentity"
.LASF32:
	.string	"GLfloat"
.LASF202:
	.string	"copy_material"
.LASF70:
	.string	"GL_STATE_NEWLIST"
.LASF175:
	.string	"curmtx"
.LASF55:
	.string	"ambient"
.LASF192:
	.string	"scissorInfo"
.LASF181:
	.string	"gxwinding"
.LASF121:
	.string	"glOrtho"
.LASF26:
	.string	"GXLightObj"
.LASF111:
	.string	"CopyGLfloatToMtx"
.LASF118:
	.string	"bottom"
.LASF86:
	.string	"ColorTrans"
.LASF5:
	.string	"long long int"
.LASF184:
	.string	"blend_src"
.LASF67:
	.string	"Material"
.LASF170:
	.string	"depthfunction"
.LASF107:
	.string	"glTexEnvSet"
.LASF14:
	.string	"uint8_t"
.LASF173:
	.string	"projection_stack"
.LASF152:
	.string	"aspect"
.LASF162:
	.string	"_colorelements"
.LASF117:
	.string	"right"
.LASF76:
	.string	"swap"
.LASF17:
	.string	"guVector"
.LASF130:
	.string	"glRotatef"
.LASF134:
	.string	"glTranslated"
.LASF133:
	.string	"glTranslatef"
.LASF30:
	.string	"GLuint"
.LASF69:
	.string	"GL_STATE_BEGIN"
.LASF18:
	.string	"MtxP"
.LASF212:
	.string	"read_mode"
.LASF50:
	.string	"elem_size"
.LASF71:
	.string	"glState"
.LASF60:
	.string	"constant"
.LASF205:
	.string	"fog_enable"
.LASF34:
	.string	"VertexElement"
.LASF84:
	.string	"scale"
.LASF95:
	.string	"biasclamp"
.LASF143:
	.string	"eyeX"
.LASF144:
	.string	"eyeY"
.LASF145:
	.string	"eyeZ"
.LASF78:
	.string	"row_length"
.LASF169:
	.string	"depthupdate"
.LASF40:
	.string	"size"
.LASF63:
	.string	"LightObj"
.LASF90:
	.string	"wrap_s"
.LASF91:
	.string	"wrap_t"
.LASF61:
	.string	"linear"
.LASF22:
	.string	"_vecf"
.LASF185:
	.string	"blend_dst"
.LASF220:
	.string	"computeZplanes"
.LASF74:
	.string	"height"
.LASF156:
	.string	"_temptexcoordelement"
.LASF114:
	.string	"CopyMtxToMtx44"
.LASF45:
	.string	"nearZclip"
.LASF195:
	.string	"normFar"
.LASF12:
	.string	"long double"
.LASF47:
	.string	"PrjMtx"
.LASF157:
	.string	"norm"
.LASF199:
	.string	"unpack"
.LASF131:
	.string	"angle"
.LASF54:
	.string	"spotDir"
.LASF37:
	.string	"_array"
.LASF58:
	.string	"spotExponent"
.LASF62:
	.string	"quad_t"
.LASF94:
	.string	"lodbias"
.LASF177:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF92:
	.string	"minlod"
.LASF89:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF21:
	.string	"WGPipe"
.LASF129:
	.string	"temp"
.LASF52:
	.string	"_light"
.LASF104:
	.string	"color"
.LASF31:
	.string	"GLsizei"
.LASF213:
	.string	"call_offset"
.LASF154:
	.string	"_tempcolorelement"
.LASF80:
	.string	"skip_pixels"
.LASF116:
	.string	"left"
.LASF102:
	.string	"Aarg"
.LASF97:
	.string	"maxaniso"
.LASF0:
	.string	"unsigned int"
.LASF209:
	.string	"fog_density"
.LASF39:
	.string	"stride"
.LASF182:
	.string	"lighting"
.LASF215:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_matrix.c"
.LASF7:
	.string	"long unsigned int"
.LASF123:
	.string	"farVal"
.LASF186:
	.string	"blend_op"
.LASF207:
	.string	"fog_startz"
.LASF82:
	.string	"pixelStore"
.LASF216:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF214:
	.string	"GNU C 4.6.3"
.LASF27:
	.string	"GLenum"
.LASF41:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"Mtx44"
.LASF79:
	.string	"skip_rows"
.LASF163:
	.string	"vert_i"
.LASF77:
	.string	"lsb_first"
.LASF106:
	.string	"alpha_scale"
.LASF109:
	.string	"CopyMtx44ToMtx"
.LASF65:
	.string	"emissive"
.LASF98:
	.string	"comRGB"
.LASF190:
	.string	"fb_max_width"
.LASF194:
	.string	"normNear"
.LASF165:
	.string	"_GLtype"
.LASF136:
	.string	"glPushMatrix"
.LASF168:
	.string	"depthtestenabled"
.LASF219:
	.string	"guessProjection"
.LASF23:
	.string	"_gx_color"
.LASF96:
	.string	"edgelod"
.LASF180:
	.string	"gxcullfaceanabled"
.LASF48:
	.string	"_stack"
.LASF3:
	.string	"signed char"
.LASF51:
	.string	"Stack"
.LASF2:
	.string	"short unsigned int"
.LASF153:
	.string	"wgPipe"
.LASF10:
	.string	"double"
.LASF81:
	.string	"alignment"
.LASF83:
	.string	"_trans"
.LASF43:
	.string	"_prj_mat"
.LASF140:
	.string	"model"
.LASF28:
	.string	"GLboolean"
.LASF105:
	.string	"rgb_scale"
.LASF218:
	.string	"_glState"
.LASF75:
	.string	"_pixelStore"
.LASF138:
	.string	"pname"
.LASF108:
	.string	"dest"
.LASF187:
	.string	"cull_mode"
.LASF103:
	.string	"AargOp"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
