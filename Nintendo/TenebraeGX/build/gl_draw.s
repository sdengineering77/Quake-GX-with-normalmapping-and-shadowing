	.file	"gl_draw.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl GL_Bind
	.type	GL_Bind, @function
GL_Bind:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_draw.c"
	.loc 1 103 0
	.cfi_startproc
.LVL0:
	.loc 1 104 0
	lis 9,.LANCHOR0+12@ha
	.loc 1 103 0
	mflr 0
	.loc 1 104 0
	lfs 13,.LANCHOR0+12@l(9)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 103 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 104 0
	fcmpu 7,13,0
	.loc 1 103 0
	stw 0,12(1)
	.loc 1 103 0
	mr 0,3
	.cfi_offset 65, 4
	.loc 1 104 0
	beq- 7,.L2
.LVL1:
	.loc 1 105 0
	lis 9,char_texture@ha
	lwz 0,char_texture@l(9)
.LVL2:
.L2:
	.loc 1 106 0
	lis 9,currenttexture@ha
	lwz 11,currenttexture@l(9)
	cmpw 7,11,0
	beq- 7,.L1
	.loc 1 112 0
	li 3,3553
	mr 4,0
	.loc 1 108 0
	stw 0,currenttexture@l(9)
	.loc 1 112 0
	bl glBindTexture
.LVL3:
.L1:
	.loc 1 123 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE38:
	.size	GL_Bind, .-GL_Bind
	.align 2
	.globl Draw_TextureMode_f
	.type	Draw_TextureMode_f, @function
Draw_TextureMode_f:
.LFB44:
	.loc 1 359 0
	.cfi_startproc
	mflr 0
	stwu 1,-80(1)
.LCFI2:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	stw 29,60(1)
	.loc 1 363 0
	lis 29,.LANCHOR0@ha
	.cfi_offset 29, -20
	.loc 1 359 0
	stw 30,64(1)
	.loc 1 363 0
	la 29,.LANCHOR0@l(29)
	.loc 1 359 0
	stw 31,68(1)
	.loc 1 363 0
	li 30,0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.loc 1 359 0
	stw 0,84(1)
	.loc 1 372 0
	addi 31,29,20
	.loc 1 359 0
	stfd 31,72(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	.loc 1 363 0
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl Cmd_Argc
	cmpwi 7,3,1
	beq- 7,.L19
.L11:
	.loc 1 377 0
	lwz 28,0(31)
	li 3,1
	bl Cmd_Argv
	.loc 1 375 0
	addi 31,31,12
	.loc 1 377 0
	mr 4,3
	mr 3,28
	bl Q_strcasecmp
	.loc 1 375 0
	cmpwi 6,30,5
	.loc 1 377 0
	cmpwi 7,3,0
	beq- 7,.L10
.LVL4:
	.loc 1 375 0
	addi 30,30,1
.LVL5:
	bne+ 6,.L11
	.loc 1 382 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL6:
.L5:
	.loc 1 403 0
	lwz 0,84(1)
	lwz 25,44(1)
	mtlr 0
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L19:
.LCFI4:
	.cfi_restore_state
	.loc 1 363 0
	li 0,6
	lis 9,gl_filter_min@ha
	mtctr 0
	lwz 10,gl_filter_min@l(9)
	li 11,0
	addi 9,29,24
.L9:
	.loc 1 366 0
	lwz 0,0(9)
	.loc 1 365 0
	addi 9,9,12
	.loc 1 366 0
	cmpw 7,0,10
	beq- 7,.L20
	.loc 1 365 0
	addi 11,11,1
.LVL7:
	bdnz .L9
	.loc 1 371 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL8:
	.loc 1 403 0
	lwz 0,84(1)
	lwz 25,44(1)
	mtlr 0
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
.L10:
.LCFI6:
	.cfi_restore_state
	.loc 1 390 0
	lis 28,numgltextures@ha
	.loc 1 386 0
	mulli 30,30,12
	.loc 1 390 0
	lwz 0,numgltextures@l(28)
	.loc 1 386 0
	lis 26,gl_filter_min@ha
	add 29,29,30
	.loc 1 387 0
	lis 27,gl_filter_max@ha
	.loc 1 390 0
	cmpwi 7,0,0
	.loc 1 386 0
	lwz 9,24(29)
	.loc 1 387 0
	lwz 0,28(29)
	.loc 1 386 0
	stw 9,gl_filter_min@l(26)
	.loc 1 387 0
	stw 0,gl_filter_max@l(27)
.LVL9:
	.loc 1 390 0
	ble- 7,.L5
	lis 31,gltextures@ha
	li 30,0
	la 31,gltextures@l(31)
	la 28,numgltextures@l(28)
	.loc 1 395 0
	lis 29,0x4330
	lis 25,.LC4@ha
	b .L14
.LVL10:
.L13:
	.loc 1 390 0
	lwz 0,0(28)
	addi 31,31,80
.LVL11:
	cmpw 7,0,30
	ble- 7,.L5
.LVL12:
.L14:
	.loc 1 392 0
	lbz 0,76(31)
	.loc 1 390 0
	addi 30,30,1
	.loc 1 392 0
	cmpwi 7,0,0
	beq+ 7,.L13
	.loc 1 394 0
	lwz 3,0(31)
	bl GL_Bind
	.loc 1 395 0
	lwz 0,gl_filter_min@l(26)
	stw 29,8(1)
	li 3,3553
	xoris 0,0,0x8000
	lfs 31,.LC4@l(25)
	stw 0,12(1)
	li 4,10241
	lfd 1,8(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	.loc 1 396 0
	lwz 0,gl_filter_max@l(27)
	stw 29,16(1)
	li 4,10240
	xoris 0,0,0x8000
	li 3,3553
	stw 0,20(1)
	lfd 1,16(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	.loc 1 398 0
	lwz 3,0(31)
	addi 3,3,1
	bl GL_Bind
	.loc 1 399 0
	lwz 0,gl_filter_min@l(26)
	stw 29,24(1)
	li 3,3553
	xoris 0,0,0x8000
	li 4,10241
	stw 0,28(1)
	lfd 1,24(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	.loc 1 400 0
	lwz 0,gl_filter_max@l(27)
	stw 29,32(1)
	li 3,3553
	xoris 0,0,0x8000
	li 4,10240
	stw 0,36(1)
	lfd 0,32(1)
	fsub 31,0,31
	frsp 1,31
	bl glTexParameterf
	b .L13
.L20:
	.loc 1 368 0
	mulli 11,11,12
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	add 29,29,11
	lwz 4,20(29)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 369 0
	b .L5
	.cfi_endproc
.LFE44:
	.size	Draw_TextureMode_f, .-Draw_TextureMode_f
	.align 2
	.globl Scrap_AllocBlock
	.type	Scrap_AllocBlock, @function
Scrap_AllocBlock:
.LFB39:
	.loc 1 148 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-24(1)
.LCFI7:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 185 0
	subfic 11,3,256
	lis 9,scrap_allocated@ha
	la 9,scrap_allocated@l(9)
	.loc 1 148 0
	stw 28,8(1)
	stw 0,28(1)
	mr 0,3
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	stw 30,16(1)
	cmpwi 1,11,0
	stw 31,20(1)
	cmpwi 6,0,0
	stw 29,12(1)
	.loc 1 153 0
	li 3,0
.LVL14:
	.loc 1 185 0
	mr 29,9
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL15:
.L22:
	.loc 1 157 0 discriminator 1
	li 12,256
	ble- 1,.L27
	.loc 1 157 0 is_stmt 0
	li 31,0
	.loc 1 147 0 is_stmt 1
	slwi 28,3,8
.LVL16:
.L34:
	.loc 1 161 0 discriminator 1
	ble- 6,.L28
	.loc 1 147 0
	slwi 10,31,2
	addi 30,31,1
	.loc 1 163 0
	lwzx 10,29,10
	cmpw 7,12,10
	ble- 7,.L23
	.loc 1 147 0
	add 8,28,30
	mtctr 0
	slwi 8,8,2
	li 7,0
	add 8,9,8
	addi 8,8,-4
.LVL17:
.L29:
	.loc 1 163 0
	cmpw 7,7,10
	bge- 7,.L24
	mr 7,10
.L24:
.LVL18:
	.loc 1 161 0
	bdz .L26
	.loc 1 163 0
	lwzu 10,4(8)
	cmpw 7,10,12
	blt+ 7,.L29
.LVL19:
.L23:
	.loc 1 157 0
	cmpw 7,30,11
	mr 31,30
.LVL20:
	bne+ 7,.L34
.LVL21:
.L27:
	.loc 1 175 0
	add 12,12,4
	cmpwi 7,12,256
	bgt- 7,.L30
.LVL22:
	.loc 1 178 0
	cmpwi 7,0,0
	mtctr 0
	li 11,0
	slwi 10,3,8
	ble- 7,.L32
.LVL23:
.L39:
	.loc 1 179 0 discriminator 2
	lwz 0,0(5)
	add 0,11,0
	.loc 1 178 0 discriminator 2
	addi 11,11,1
.LVL24:
	.loc 1 179 0 discriminator 2
	add 0,10,0
	slwi 0,0,2
	stwx 12,9,0
	.loc 1 178 0 discriminator 2
	bdnz .L39
.LVL25:
.L32:
	.loc 1 186 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL26:
.L43:
.LCFI9:
	.cfi_restore_state
	.loc 1 168 0
	li 7,0
	addi 30,31,1
.LVL27:
.L26:
	.loc 1 157 0
	cmpw 7,30,11
	.loc 1 170 0
	stw 31,0(5)
.LVL28:
	.loc 1 171 0
	mr 12,7
	stw 7,0(6)
	.loc 1 157 0
	mr 31,30
.LVL29:
	bne+ 7,.L34
	b .L27
.LVL30:
.L30:
	.loc 1 153 0
	cmpwi 7,3,1
	addi 29,29,1024
	addi 3,3,1
.LVL31:
	bne- 7,.L22
	.loc 1 184 0
	lis 3,.LC6@ha
.LVL32:
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL33:
	.loc 1 186 0
	lwz 0,28(1)
	lwz 28,8(1)
	.loc 1 185 0
	li 3,0
	.loc 1 186 0
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI10:
	.cfi_def_cfa_offset 0
	blr
.LVL34:
.L28:
.LCFI11:
	.cfi_restore_state
	.loc 1 168 0
	beq- 6,.L43
	addi 30,31,1
.LVL35:
	.loc 1 157 0
	cmpw 7,30,11
	mr 31,30
.LVL36:
	bne+ 7,.L34
	b .L27
	.cfi_endproc
.LFE39:
	.size	Scrap_AllocBlock, .-Scrap_AllocBlock
	.align 2
	.globl Draw_CharToConback
	.type	Draw_CharToConback, @function
Draw_CharToConback:
.LFB43:
	.loc 1 315 0
	.cfi_startproc
.LVL37:
	.loc 1 323 0
	lis 9,draw_chars@ha
	rlwinm 0,3,3,25,28
	lwz 9,draw_chars@l(9)
	rlwinm 3,3,6,0,21
.LVL38:
	add 0,0,3
	add 9,9,0
.LVL39:
	.loc 1 314 0
	addi 0,9,1024
.LVL40:
.L46:
	.loc 1 315 0
	li 10,8
	li 11,0
	mtctr 10
.LVL41:
.L48:
	.loc 1 330 0
	lbzx 10,9,11
	cmpwi 7,10,255
	.loc 1 331 0
	addi 10,10,96
	.loc 1 330 0
	beq- 7,.L47
	.loc 1 331 0
	stbx 10,4,11
.L47:
	.loc 1 329 0
	addi 11,11,1
.LVL42:
	bdnz .L48
	.loc 1 332 0
	addi 9,9,128
.LVL43:
	.loc 1 333 0
	addi 4,4,320
.LVL44:
	.loc 1 327 0
	cmpw 7,9,0
	bne+ 7,.L46
	blr
	.cfi_endproc
.LFE43:
	.size	Draw_CharToConback, .-Draw_CharToConback
	.align 2
	.globl Draw_Character
	.type	Draw_Character, @function
Draw_Character:
.LFB46:
	.loc 1 578 0
	.cfi_startproc
.LVL45:
	.loc 1 582 0
	cmpwi 7,5,32
	.loc 1 578 0
	mflr 0
	stwu 1,-128(1)
.LCFI12:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	stw 30,64(1)
	mr 30,4
	.cfi_offset 30, -64
	stw 31,68(1)
	mr 31,3
	.cfi_offset 31, -60
	stw 0,132(1)
	stfd 25,72(1)
	stfd 26,80(1)
	stfd 27,88(1)
	stfd 28,96(1)
	stfd 29,104(1)
	stfd 30,112(1)
	stfd 31,120(1)
	stw 29,60(1)
	.loc 1 582 0
	beq- 7,.L52
	.cfi_offset 29, -68
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 65, 4
.LVL46:
	.loc 1 587 0
	cmpwi 7,4,-7
	bge- 7,.L54
.LVL47:
.L52:
	.loc 1 611 0
	lwz 0,132(1)
	lwz 29,60(1)
	mtlr 0
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 25,72(1)
	lfd 26,80(1)
	lfd 27,88(1)
	lfd 28,96(1)
	lfd 29,104(1)
	lfd 30,112(1)
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL48:
.L54:
.LCFI14:
	.cfi_restore_state
	.loc 1 591 0
	rlwinm 0,5,0,28,31
	.loc 1 590 0
	rlwinm 5,5,28,28,31
.LVL49:
	.loc 1 593 0
	xoris 5,5,0x8000
	lis 29,0x4330
	.loc 1 594 0
	xoris 0,0,0x8000
	.loc 1 593 0
	stw 5,12(1)
	.loc 1 594 0
	stw 0,20(1)
	.loc 1 593 0
	lis 9,.LC8@ha
	stw 29,8(1)
	.loc 1 597 0
	li 3,3042
.LVL50:
	.loc 1 594 0
	stw 29,16(1)
	.loc 1 593 0
	lfs 29,.LC8@l(9)
	lis 9,.LC4@ha
	lfs 31,.LC4@l(9)
	lfd 28,8(1)
	fmr 0,29
	.loc 1 594 0
	lfd 30,16(1)
	.loc 1 593 0
	fsub 28,28,31
	.loc 1 594 0
	fsub 30,30,31
	.loc 1 593 0
	fmul 28,28,0
	.loc 1 594 0
	fmul 30,30,0
	.loc 1 597 0
	bl glEnable
.LVL51:
	.loc 1 598 0
	lis 9,char_texture@ha
	lwz 3,char_texture@l(9)
	.loc 1 593 0
	frsp 28,28
.LVL52:
	.loc 1 594 0
	frsp 30,30
.LVL53:
	.loc 1 598 0
	bl GL_Bind
	.loc 1 600 0
	li 3,7
	bl glBegin
	.loc 1 601 0
	fmr 2,28
	fmr 1,30
	bl glTexCoord2f
	.loc 1 602 0
	xoris 0,30,0x8000
	xoris 9,31,0x8000
	stw 0,36(1)
	stw 9,28(1)
	.loc 1 604 0
	addi 31,31,8
.LVL54:
	.loc 1 602 0
	stw 29,24(1)
	.loc 1 604 0
	xoris 31,31,0x8000
	.loc 1 602 0
	stw 29,32(1)
	.loc 1 606 0
	addi 30,30,8
.LVL55:
	.loc 1 602 0
	lfd 27,24(1)
	.loc 1 606 0
	xoris 30,30,0x8000
	.loc 1 602 0
	lfd 26,32(1)
	fsub 27,27,31
	fsub 26,26,31
	frsp 27,27
	frsp 26,26
	fmr 1,27
	fmr 2,26
	bl glVertex2f
.LVL56:
	.loc 1 603 0
	fadds 25,30,29
	fmr 2,28
	fmr 1,25
	bl glTexCoord2f
	.loc 1 604 0
	stw 31,44(1)
	stw 29,40(1)
	fmr 2,26
	lfd 26,40(1)
	fsub 26,26,31
	frsp 26,26
	fmr 1,26
	bl glVertex2f
	.loc 1 605 0
	fadds 29,28,29
	fmr 1,25
	fmr 2,29
	bl glTexCoord2f
	.loc 1 606 0
	stw 30,52(1)
	stw 29,48(1)
	fmr 1,26
	lfd 0,48(1)
	fsub 31,0,31
	frsp 31,31
	fmr 2,31
	bl glVertex2f
	.loc 1 607 0
	fmr 1,30
	fmr 2,29
	bl glTexCoord2f
	.loc 1 608 0
	fmr 1,27
	fmr 2,31
	bl glVertex2f
	.loc 1 609 0
	bl glEnd
	.loc 1 610 0
	li 3,3042
	bl glDisable
	.loc 1 611 0
	lwz 0,132(1)
	lwz 29,60(1)
	mtlr 0
	lwz 30,64(1)
.LVL57:
	lwz 31,68(1)
.LVL58:
	lfd 25,72(1)
	lfd 26,80(1)
	lfd 27,88(1)
	lfd 28,96(1)
.LVL59:
	lfd 29,104(1)
	lfd 30,112(1)
.LVL60:
	lfd 31,120(1)
	addi 1,1,128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 57
	.cfi_restore 58
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI15:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE46:
	.size	Draw_Character, .-Draw_Character
	.align 2
	.globl Draw_String
	.type	Draw_String, @function
Draw_String:
.LFB47:
	.loc 1 619 0
	.cfi_startproc
.LVL61:
	mflr 0
	stwu 1,-24(1)
.LCFI16:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	.loc 1 620 0
	lbz 5,0(5)
.LVL62:
	cmpwi 7,5,0
	beq- 7,.L55
	.cfi_offset 65, 4
.LVL63:
.L57:
	.loc 1 622 0
	mr 3,31
	mr 4,29
	bl Draw_Character
	.loc 1 620 0
	lbzu 5,1(30)
	.loc 1 624 0
	addi 31,31,8
.LVL64:
	.loc 1 620 0
	cmpwi 7,5,0
	bne+ 7,.L57
.L55:
	.loc 1 626 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL65:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL66:
	addi 1,1,24
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE47:
	.size	Draw_String, .-Draw_String
	.align 2
	.globl Draw_DebugChar
	.type	Draw_DebugChar, @function
Draw_DebugChar:
.LFB48:
	.loc 1 638 0
	.cfi_startproc
.LVL67:
	.loc 1 640 0
	blr
	.cfi_endproc
.LFE48:
	.size	Draw_DebugChar, .-Draw_DebugChar
	.align 2
	.globl Draw_TransPicTranslate
	.type	Draw_TransPicTranslate, @function
Draw_TransPicTranslate:
.LFB52:
	.loc 1 728 0
	.cfi_startproc
.LVL68:
	stwu 1,-16512(1)
.LCFI18:
	.cfi_def_cfa_offset 16512
	mflr 0
	.loc 1 734 0
	lis 9,translate_texture@ha
	.loc 1 728 0
	stw 29,16468(1)
	mr 29,3
	.cfi_offset 29, -44
	.cfi_register 65, 0
	.loc 1 734 0
	lwz 3,translate_texture@l(9)
.LVL69:
	.loc 1 728 0
	stw 31,16476(1)
	mr 31,5
	.cfi_offset 31, -36
	stw 27,16460(1)
	stw 28,16464(1)
	.loc 1 738 0
	addi 28,1,16
	.cfi_offset 28, -48
	.cfi_offset 27, -52
	.loc 1 728 0
	stw 30,16472(1)
	mr 30,4
	.cfi_offset 30, -40
	.loc 1 734 0
	stw 6,16448(1)
	.loc 1 728 0
	stw 0,16516(1)
	stfd 28,16480(1)
	stfd 29,16488(1)
	stfd 30,16496(1)
	stfd 31,16504(1)
	.loc 1 734 0
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 65, 4
	bl GL_Bind
.LVL70:
	lis 3,menuplyr_pixels@ha
	.loc 1 748 0
	lis 5,d_8to24table@ha
	.loc 1 734 0
	lwz 8,0(31)
	.loc 1 727 0
	addi 12,1,16400
	lwz 27,4(31)
	li 4,0
	.loc 1 748 0
	lwz 6,16448(1)
	.loc 1 738 0
	mr 10,28
	la 3,menuplyr_pixels@l(3)
	.loc 1 748 0
	la 5,d_8to24table@l(5)
.LVL71:
.L64:
	.loc 1 741 0
	srawi 7,4,6
	.loc 1 748 0
	li 11,64
	.loc 1 741 0
	mullw 7,7,8
	.loc 1 748 0
	mtctr 11
	.loc 1 727 0
	li 9,0
	li 0,0
	.loc 1 741 0
	add 7,3,7
.LVL72:
.L63:
	.loc 1 744 0
	srawi 11,0,6
	lbzx 11,7,11
.LVL73:
	.loc 1 745 0
	cmpwi 7,11,255
	beq- 7,.L67
	.loc 1 748 0
	lbzx 11,6,11
.LVL74:
	slwi 11,11,2
	lwzx 11,5,11
.L67:
	stwx 11,10,9
	add 0,0,8
	addi 9,9,4
	.loc 1 742 0
	bdnz .L63
	.loc 1 739 0
	addi 10,10,256
.LVL75:
	add 4,4,27
	cmpw 7,10,12
	bne+ 7,.L64
	.loc 1 752 0
	li 3,3553
	li 4,10242
	li 5,10497
	bl glTexParameteri
.LVL76:
	.loc 1 753 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 754 0
	lis 9,gl_alpha_format@ha
	lwz 5,gl_alpha_format@l(9)
	li 6,64
	li 7,64
	li 8,0
	li 10,5121
	li 9,6408
	li 3,3553
	li 4,0
	stw 28,8(1)
	bl glTexImage2D
	.loc 1 756 0
	lis 9,.LC9@ha
	li 3,3553
	lfs 31,.LC9@l(9)
	li 4,10241
	.loc 1 762 0
	lis 28,0x4330
	.loc 1 756 0
	fmr 1,31
	bl glTexParameterf
	.loc 1 757 0
	fmr 1,31
	li 4,10240
	li 3,3553
	bl glTexParameterf
	.loc 1 759 0
	lis 9,.LC10@ha
	lfs 31,.LC10@l(9)
	fmr 3,31
	fmr 1,31
	fmr 2,31
	bl glColor3f
	.loc 1 760 0
	li 3,7
	bl glBegin
	.loc 1 761 0
	lis 9,.LC0@ha
	lfs 1,.LC0@l(9)
	fmr 2,1
	bl glTexCoord2f
	.loc 1 762 0
	xoris 0,30,0x8000
	xoris 9,29,0x8000
	stw 0,16412(1)
	stw 9,16404(1)
	lis 9,.LC4@ha
	stw 28,16400(1)
	stw 28,16408(1)
	lfs 30,.LC4@l(9)
	lfd 29,16400(1)
	lfd 28,16408(1)
	fsub 29,29,30
	fsub 28,28,30
	frsp 29,29
	frsp 28,28
	fmr 1,29
	fmr 2,28
	bl glVertex2f
	.loc 1 763 0
	lis 11,.LC0@ha
	fmr 1,31
	lfs 2,.LC0@l(11)
	bl glTexCoord2f
	.loc 1 764 0
	lwz 0,0(31)
	stw 28,16416(1)
	fmr 2,28
	add 0,29,0
	xoris 0,0,0x8000
	stw 0,16420(1)
	lfd 1,16416(1)
	fsub 1,1,30
	frsp 1,1
	bl glVertex2f
	.loc 1 765 0
	fmr 1,31
	fmr 2,31
	bl glTexCoord2f
	.loc 1 766 0
	lwz 9,0(31)
	lwz 0,4(31)
	add 9,29,9
	stw 28,16424(1)
	add 0,30,0
	xoris 9,9,0x8000
	xoris 0,0,0x8000
	stw 9,16428(1)
	stw 0,16436(1)
	stw 28,16432(1)
	lfd 1,16424(1)
	lfd 2,16432(1)
	fsub 1,1,30
	fsub 2,2,30
	frsp 1,1
	frsp 2,2
	bl glVertex2f
	.loc 1 767 0
	lis 9,.LC0@ha
	fmr 2,31
	lfs 1,.LC0@l(9)
	bl glTexCoord2f
	.loc 1 768 0
	lwz 0,4(31)
	stw 28,16440(1)
	fmr 1,29
	add 0,30,0
	xoris 0,0,0x8000
	stw 0,16444(1)
	lfd 2,16440(1)
	fsub 2,2,30
	frsp 2,2
	bl glVertex2f
	.loc 1 769 0
	bl glEnd
	.loc 1 770 0
	lwz 0,16516(1)
	lwz 27,16460(1)
	mtlr 0
	lwz 28,16464(1)
	lwz 29,16468(1)
.LVL77:
	lwz 30,16472(1)
.LVL78:
	lwz 31,16476(1)
.LVL79:
	lfd 28,16480(1)
	lfd 29,16488(1)
	lfd 30,16496(1)
	lfd 31,16504(1)
	addi 1,1,16512
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE52:
	.size	Draw_TransPicTranslate, .-Draw_TransPicTranslate
	.align 2
	.globl Draw_TileClear
	.type	Draw_TileClear, @function
Draw_TileClear:
.LFB55:
	.loc 1 853 0
	.cfi_startproc
.LVL80:
	.loc 1 854 0
	lis 9,.LC10@ha
	.loc 1 853 0
	mflr 0
	.loc 1 854 0
	lfs 1,.LC10@l(9)
	.loc 1 853 0
	stwu 1,-152(1)
.LCFI20:
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	.loc 1 854 0
	fmr 3,1
	fmr 2,1
	.loc 1 853 0
	stw 0,156(1)
	stfd 25,96(1)
	stfd 26,104(1)
	stfd 27,112(1)
	stfd 28,120(1)
	stfd 29,128(1)
	stfd 30,136(1)
	stfd 31,144(1)
	stw 27,76(1)
	.loc 1 857 0
	lis 27,0x4330
	.cfi_offset 27, -76
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 65, 4
	.loc 1 853 0
	stw 28,80(1)
	mr 28,6
	.cfi_offset 28, -72
	stw 29,84(1)
	mr 29,5
	.cfi_offset 29, -68
	stw 30,88(1)
	mr 30,4
	.cfi_offset 30, -64
	stw 31,92(1)
	.loc 1 853 0
	mr 31,3
	.cfi_offset 31, -60
	.loc 1 854 0
	bl glColor3f
.LVL81:
	.loc 1 855 0
	lis 9,draw_backtile@ha
	lwz 9,draw_backtile@l(9)
	lwz 3,8(9)
	bl GL_Bind
	.loc 1 856 0
	li 3,7
	bl glBegin
	.loc 1 857 0
	xoris 0,30,0x8000
	xoris 9,31,0x8000
	stw 0,20(1)
	stw 9,12(1)
	lis 9,.LC4@ha
	stw 27,8(1)
	.loc 1 859 0
	add 31,31,29
.LVL82:
	.loc 1 857 0
	stw 27,16(1)
	.loc 1 859 0
	xoris 31,31,0x8000
	.loc 1 857 0
	lfs 30,.LC4@l(9)
	lis 9,.LC12@ha
	lfd 29,8(1)
	.loc 1 861 0
	add 30,30,28
.LVL83:
	.loc 1 857 0
	lfd 25,16(1)
	.loc 1 861 0
	xoris 30,30,0x8000
	.loc 1 857 0
	fsub 29,29,30
	lfs 31,.LC12@l(9)
	fsub 25,25,30
	fmul 28,29,31
	fmul 27,25,31
	frsp 28,28
	frsp 27,27
	fmr 1,28
	fmr 2,27
	bl glTexCoord2f
.LVL84:
	.loc 1 858 0
	frsp 29,29
	frsp 25,25
	fmr 1,29
	fmr 2,25
	bl glVertex2f
	.loc 1 859 0
	stw 31,44(1)
	stw 27,40(1)
	fmr 2,27
	lfd 27,40(1)
	fsub 27,27,30
	fmul 26,27,31
	frsp 26,26
	fmr 1,26
	bl glTexCoord2f
	.loc 1 860 0
	frsp 27,27
	fmr 2,25
	fmr 1,27
	bl glVertex2f
	.loc 1 861 0
	stw 30,60(1)
	stw 27,56(1)
	fmr 1,26
	lfd 0,56(1)
	fsub 30,0,30
	fmul 31,30,31
	frsp 31,31
	fmr 2,31
	bl glTexCoord2f
	.loc 1 862 0
	frsp 30,30
	fmr 1,27
	fmr 2,30
	bl glVertex2f
	.loc 1 863 0
	fmr 1,28
	fmr 2,31
	bl glTexCoord2f
	.loc 1 864 0
	fmr 1,29
	fmr 2,30
	bl glVertex2f
	.loc 1 865 0
	bl glEnd
	.loc 1 866 0
	lwz 0,156(1)
	lwz 27,76(1)
	mtlr 0
	lwz 28,80(1)
.LVL85:
	lwz 29,84(1)
.LVL86:
	lwz 30,88(1)
	lwz 31,92(1)
	lfd 25,96(1)
	lfd 26,104(1)
	lfd 27,112(1)
	lfd 28,120(1)
	lfd 29,128(1)
	lfd 30,136(1)
	lfd 31,144(1)
	addi 1,1,152
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE55:
	.size	Draw_TileClear, .-Draw_TileClear
	.align 2
	.globl Draw_Fill
	.type	Draw_Fill, @function
Draw_Fill:
.LFB56:
	.loc 1 877 0
	.cfi_startproc
.LVL87:
	stwu 1,-112(1)
.LCFI22:
	.cfi_def_cfa_offset 112
	mflr 0
	stw 31,84(1)
	mr 31,3
	.cfi_offset 31, -28
	.cfi_register 65, 0
	.loc 1 878 0
	li 3,3553
.LVL88:
	.loc 1 877 0
	stw 0,116(1)
	stfd 29,88(1)
	stfd 30,96(1)
	stfd 31,104(1)
	stw 27,68(1)
	mr 27,7
	.cfi_offset 27, -44
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	stw 28,72(1)
	mr 28,6
	.cfi_offset 28, -40
	stw 29,76(1)
	mr 29,5
	.cfi_offset 29, -36
	stw 30,80(1)
	.loc 1 877 0
	mr 30,4
	.cfi_offset 30, -32
	.loc 1 878 0
	bl glDisable
.LVL89:
	.loc 1 879 0
	lis 9,host_basepal@ha
	lwz 9,host_basepal@l(9)
	mulli 0,27,3
	lis 27,0x4330
.LVL90:
	lis 11,.LC4@ha
	lbzux 0,9,0
	stw 27,8(1)
	xoris 0,0,0x8000
	lfs 31,.LC4@l(11)
	stw 0,12(1)
	.loc 1 880 0
	lbz 0,1(9)
	stw 27,16(1)
	xoris 0,0,0x8000
	.loc 1 879 0
	lfd 1,8(1)
	.loc 1 880 0
	stw 0,20(1)
	.loc 1 879 0
	fsub 1,1,31
	.loc 1 881 0
	lbz 0,2(9)
	.loc 1 879 0
	lis 9,.LC14@ha
	.loc 1 881 0
	stw 27,24(1)
	xoris 0,0,0x8000
	.loc 1 880 0
	lfd 2,16(1)
	.loc 1 881 0
	stw 0,28(1)
	.loc 1 880 0
	fsub 2,2,31
	.loc 1 879 0
	lfs 0,.LC14@l(9)
	.loc 1 881 0
	lfd 3,24(1)
	.loc 1 879 0
	fdiv 1,1,0
	.loc 1 881 0
	fsub 3,3,31
	.loc 1 880 0
	fdiv 2,2,0
	.loc 1 881 0
	fdiv 3,3,0
	.loc 1 879 0
	frsp 1,1
	frsp 3,3
	frsp 2,2
	bl glColor3f
	.loc 1 883 0
	li 3,7
	bl glBegin
	.loc 1 885 0
	xoris 0,30,0x8000
	xoris 9,31,0x8000
	stw 0,44(1)
	stw 9,36(1)
	.loc 1 886 0
	add 31,31,29
.LVL91:
	.loc 1 885 0
	stw 27,32(1)
	.loc 1 886 0
	xoris 31,31,0x8000
	.loc 1 885 0
	stw 27,40(1)
	.loc 1 887 0
	add 30,30,28
.LVL92:
	.loc 1 885 0
	lfd 30,32(1)
	.loc 1 887 0
	xoris 30,30,0x8000
	.loc 1 885 0
	lfd 29,40(1)
	fsub 30,30,31
	fsub 29,29,31
	frsp 30,30
	frsp 29,29
	fmr 1,30
	fmr 2,29
	bl glVertex2f
.LVL93:
	.loc 1 886 0
	stw 31,52(1)
	stw 27,48(1)
	fmr 2,29
	lfd 29,48(1)
	fsub 29,29,31
	frsp 29,29
	fmr 1,29
	bl glVertex2f
	.loc 1 887 0
	stw 30,60(1)
	stw 27,56(1)
	fmr 1,29
	lfd 0,56(1)
	fsub 31,0,31
	frsp 31,31
	fmr 2,31
	bl glVertex2f
	.loc 1 888 0
	fmr 1,30
	fmr 2,31
	bl glVertex2f
	.loc 1 890 0
	bl glEnd
	.loc 1 891 0
	lis 9,.LC10@ha
	lfs 1,.LC10@l(9)
	fmr 2,1
	fmr 3,1
	bl glColor3f
	.loc 1 892 0
	li 3,3553
	bl glEnable
	.loc 1 893 0
	lwz 0,116(1)
	lwz 27,68(1)
	mtlr 0
	lwz 28,72(1)
.LVL94:
	lwz 29,76(1)
.LVL95:
	lwz 30,80(1)
	lwz 31,84(1)
	lfd 29,88(1)
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE56:
	.size	Draw_Fill, .-Draw_Fill
	.align 2
	.globl Draw_FadeScreen
	.type	Draw_FadeScreen, @function
Draw_FadeScreen:
.LFB57:
	.loc 1 903 0
	.cfi_startproc
	mflr 0
	stwu 1,-64(1)
.LCFI24:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	.loc 1 908 0
	li 3,3042
	.loc 1 903 0
	stfd 30,48(1)
	stw 0,68(1)
	stfd 31,56(1)
	stw 30,40(1)
	.loc 1 914 0
	lis 30,vid@ha
	.cfi_offset 30, -24
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.cfi_offset 62, -16
	.loc 1 903 0
	stw 31,44(1)
	.loc 1 908 0
	.cfi_offset 31, -20
	bl glEnable
	.loc 1 909 0
	li 3,3553
	.loc 1 914 0
	la 30,vid@l(30)
	.loc 1 909 0
	bl glDisable
	.loc 1 910 0
	lis 9,.LC0@ha
	lfs 31,.LC0@l(9)
	lis 9,.LC15@ha
	lfs 4,.LC15@l(9)
	.loc 1 914 0
	lis 31,0x4330
	.loc 1 910 0
	fmr 3,31
	fmr 1,31
	fmr 2,31
	bl glColor4f
	.loc 1 911 0
	li 3,7
	bl glBegin
	.loc 1 913 0
	fmr 1,31
	fmr 2,31
	bl glVertex2f
	.loc 1 914 0
	lwz 0,20(30)
	stw 31,8(1)
	lis 9,.LC17@ha
	stw 0,12(1)
	fmr 2,31
	lfs 30,.LC17@l(9)
	lfd 1,8(1)
	fsub 1,1,30
	frsp 1,1
	bl glVertex2f
	.loc 1 915 0
	lwz 9,20(30)
	lwz 0,24(30)
	stw 9,20(1)
	stw 31,16(1)
	stw 0,28(1)
	stw 31,24(1)
	lfd 1,16(1)
	lfd 2,24(1)
	fsub 1,1,30
	fsub 2,2,30
	frsp 1,1
	frsp 2,2
	bl glVertex2f
	.loc 1 916 0
	lwz 0,24(30)
	stw 31,32(1)
	fmr 1,31
	stw 0,36(1)
	lfd 0,32(1)
	fsub 30,0,30
	frsp 2,30
	bl glVertex2f
	.loc 1 918 0
	bl glEnd
	.loc 1 919 0
	lis 9,.LC10@ha
	lfs 1,.LC10@l(9)
	fmr 2,1
	fmr 3,1
	fmr 4,1
	bl glColor4f
	.loc 1 920 0
	li 3,3553
	bl glEnable
	.loc 1 921 0
	li 3,3042
	bl glDisable
	.loc 1 923 0
	bl Sbar_Changed
	.loc 1 929 0
	lwz 0,68(1)
	lwz 30,40(1)
	mtlr 0
	lwz 31,44(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE57:
	.size	Draw_FadeScreen, .-Draw_FadeScreen
	.align 2
	.globl Draw_EndDisc
	.type	Draw_EndDisc, @function
Draw_EndDisc:
.LFB59:
	.loc 1 960 0
	.cfi_startproc
	.loc 1 961 0
	blr
	.cfi_endproc
.LFE59:
	.size	Draw_EndDisc, .-Draw_EndDisc
	.align 2
	.globl GL_Set2D
	.type	GL_Set2D, @function
GL_Set2D:
.LFB60:
	.loc 1 971 0
	.cfi_startproc
	.loc 1 972 0
	lis 9,gly@ha
	.loc 1 971 0
	mflr 0
	.loc 1 972 0
	lwz 4,gly@l(9)
	lis 9,glwidth@ha
	lwz 5,glwidth@l(9)
	lis 9,glheight@ha
	lwz 6,glheight@l(9)
	lis 9,glx@ha
	.loc 1 971 0
	stwu 1,-24(1)
.LCFI26:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 972 0
	lwz 3,glx@l(9)
	.loc 1 971 0
	stw 0,28(1)
	.loc 1 972 0
	.cfi_offset 65, 4
	bl glViewport
	.loc 1 974 0
	li 3,5889
	bl glMatrixMode
	.loc 1 975 0
	bl glLoadIdentity
	.loc 1 976 0
	lis 9,vid@ha
	la 9,vid@l(9)
	lis 0,0x4330
	lwz 11,20(9)
	lwz 9,24(9)
	stw 0,8(1)
	stw 0,16(1)
	stw 11,12(1)
	stw 9,20(1)
	lis 9,.LC17@ha
	lfs 0,.LC17@l(9)
	lis 9,.LC18@ha
	lfd 1,.LC18@l(9)
	lis 9,.LC20@ha
	lfd 2,8(1)
	lfd 3,16(1)
	fmr 4,1
	fsub 2,2,0
	lfs 5,.LC20@l(9)
	fsub 3,3,0
	lis 9,.LC22@ha
	lfs 6,.LC22@l(9)
	bl glOrtho
	.loc 1 978 0
	li 3,5888
	bl glMatrixMode
	.loc 1 979 0
	bl glLoadIdentity
	.loc 1 981 0
	li 3,2929
	bl glDisable
	.loc 1 982 0
	li 3,2884
	bl glDisable
	.loc 1 984 0
	li 3,3008
	bl glEnable
	.loc 1 986 0
	li 3,3042
	bl glEnable
	.loc 1 987 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	li 3,516
	bl glAlphaFunc
	.loc 1 990 0
	lis 9,.LC10@ha
	lfs 1,.LC10@l(9)
	fmr 2,1
	fmr 3,1
	fmr 4,1
	bl glColor4f
	.loc 1 991 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI27:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE60:
	.size	GL_Set2D, .-GL_Set2D
	.align 2
	.globl GL_FindTexture
	.type	GL_FindTexture, @function
GL_FindTexture:
.LFB61:
	.loc 1 1001 0
	.cfi_startproc
.LVL96:
	stwu 1,-32(1)
.LCFI28:
	.cfi_def_cfa_offset 32
	.loc 1 1005 0
	lis 9,numgltextures@ha
	.loc 1 1001 0
	mflr 0
	stw 29,20(1)
	.loc 1 1005 0
	lwz 29,numgltextures@l(9)
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 1001 0
	stw 28,16(1)
	mr 28,3
	.cfi_offset 28, -16
	.loc 1 1005 0
	cmpwi 7,29,0
	.loc 1 1001 0
	stw 0,36(1)
	stw 27,12(1)
	.loc 1 1011 0
	li 3,-1
.LVL97:
	.loc 1 1001 0
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 1005 0
	ble- 7,.L74
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	lis 27,gltextures@ha
	li 30,0
	la 27,gltextures@l(27)
	mr 31,27
	b .L76
.LVL98:
.L75:
	addi 30,30,1
.LVL99:
	cmpw 7,30,29
	beq- 7,.L79
.LVL100:
.L76:
	.loc 1 1007 0
	addi 4,31,4
	mr 3,28
	bl strcmp
	.loc 1 1005 0
	addi 31,31,80
	.loc 1 1007 0
	cmpwi 7,3,0
	bne+ 7,.L75
	.loc 1 1008 0
	mulli 30,30,80
	lwzx 3,27,30
.L74:
	.loc 1 1012 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL101:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL102:
.L79:
.LCFI30:
	.cfi_restore_state
	lwz 0,36(1)
	.loc 1 1011 0
	li 3,-1
	.loc 1 1012 0
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL103:
	lwz 29,20(1)
	lwz 30,24(1)
.LVL104:
	lwz 31,28(1)
.LVL105:
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI31:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE61:
	.size	GL_FindTexture, .-GL_FindTexture
	.align 2
	.globl GL_ResampleTextureLerpLine
	.type	GL_ResampleTextureLerpLine, @function
GL_ResampleTextureLerpLine:
.LFB62:
	.loc 1 1022 0
	.cfi_startproc
.LVL106:
	stwu 1,-32(1)
.LCFI32:
	.cfi_def_cfa_offset 32
	.loc 1 1024 0
	xoris 9,5,0x8000
	lis 0,0x4330
	.loc 1 1026 0
	cmpwi 7,6,0
	.loc 1 1024 0
	stw 9,12(1)
	lis 9,.LC4@ha
	stw 0,8(1)
	.loc 1 1025 0
	addi 5,5,-1
.LVL107:
	.loc 1 1024 0
	lfs 0,.LC4@l(9)
	xoris 9,6,0x8000
	lfd 13,8(1)
	stw 9,20(1)
	lis 9,.LC24@ha
	stw 0,16(1)
	fsub 13,13,0
	lfd 12,16(1)
	frsp 13,13
	fsub 0,12,0
	lfs 12,.LC24@l(9)
	addi 9,1,24
	fmuls 13,13,12
	frsp 0,0
	fdivs 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 8,24(1)
.LVL108:
	.loc 1 1026 0
	ble- 7,.L80
	.loc 1 1028 0
	li 0,0
	.loc 1 1026 0
	li 9,0
.LVL109:
	.loc 1 1034 0
	cmpw 7,5,0
	.loc 1 1023 0
	li 10,0
	mtctr 6
.LVL110:
.LBB13:
	.loc 1 1036 0
	rlwinm 11,9,0,16,31
	.loc 1 1037 0
	lbz 0,0(3)
.LVL111:
.LBE13:
	.loc 1 1034 0
	ble- 7,.L84
.LVL112:
.L87:
.LBB14:
	.loc 1 1037 0
	lbz 7,4(3)
.LBE14:
	.loc 1 1021 0
	add 9,9,8
.LBB15:
	.loc 1 1037 0
	subf 7,0,7
	mullw 7,7,11
	srawi 7,7,16
	add 0,0,7
	stb 0,0(4)
	.loc 1 1038 0
	lbz 0,1(3)
	lbz 7,5(3)
	subf 7,0,7
	mullw 7,7,11
	srawi 7,7,16
	add 0,0,7
	stb 0,1(4)
	.loc 1 1039 0
	lbz 0,2(3)
	lbz 7,6(3)
	subf 7,0,7
	mullw 7,7,11
	srawi 7,7,16
	add 0,0,7
	stb 0,2(4)
	.loc 1 1040 0
	lbz 0,3(3)
	lbz 7,7(3)
	subf 7,0,7
	mullw 11,7,11
.LVL113:
	srawi 11,11,16
	add 0,0,11
	stb 0,3(4)
.LBE15:
	.loc 1 1028 0
	srawi 0,9,16
	.loc 1 1031 0
	subf 11,10,0
	.loc 1 1029 0
	cmpw 7,10,0
	.loc 1 1031 0
	slwi 11,11,2
	.loc 1 1026 0
	bdz .L80
.L86:
.LVL114:
	.loc 1 1029 0
	beq- 7,.L83
	.loc 1 1031 0
	add 3,3,11
.LVL115:
	mr 10,0
.LVL116:
.L83:
	.loc 1 1034 0
	cmpw 7,5,0
	.loc 1 1031 0
	addi 4,4,4
.LBB16:
	.loc 1 1036 0
	rlwinm 11,9,0,16,31
	.loc 1 1037 0
	lbz 0,0(3)
.LVL117:
.LBE16:
	.loc 1 1034 0
	bgt- 7,.L87
.L84:
	.loc 1 1044 0
	stb 0,0(4)
	.loc 1 1021 0
	add 9,9,8
	.loc 1 1045 0
	lbz 0,1(3)
	stb 0,1(4)
	.loc 1 1046 0
	lbz 0,2(3)
	stb 0,2(4)
	.loc 1 1047 0
	lbz 0,3(3)
	stb 0,3(4)
	.loc 1 1028 0
	srawi 0,9,16
	.loc 1 1031 0
	subf 11,10,0
	.loc 1 1029 0
	cmpw 7,10,0
	.loc 1 1031 0
	slwi 11,11,2
	.loc 1 1026 0
	bdnz .L86
.LVL118:
.L80:
	.loc 1 1050 0
	addi 1,1,32
.LCFI33:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE62:
	.size	GL_ResampleTextureLerpLine, .-GL_ResampleTextureLerpLine
	.align 2
	.globl GL_ResampleTexture
	.type	GL_ResampleTexture, @function
GL_ResampleTexture:
.LFB63:
	.loc 1 1058 0
	.cfi_startproc
.LVL119:
	mflr 0
	stwu 1,-176(1)
.LCFI34:
	.cfi_def_cfa_offset 176
	.cfi_register 65, 0
	.loc 1 1063 0
	xoris 9,5,0x8000
	.loc 1 1058 0
	mfcr 12
	.loc 1 1063 0
	stw 9,12(1)
	lis 9,.LC4@ha
	.loc 1 1058 0
	stw 0,180(1)
	.loc 1 1063 0
	lis 0,0x4330
	.cfi_offset 65, 4
	.cfi_register 70, 12
	stw 0,8(1)
	.loc 1 1060 0
	addi 5,5,-1
.LVL120:
	.loc 1 1063 0
	lfs 0,.LC4@l(9)
	xoris 9,8,0x8000
	lfd 12,8(1)
	stw 9,20(1)
	lis 9,.LC24@ha
	stw 0,16(1)
	fsub 12,12,0
	.loc 1 1065 0
	slwi 0,7,2
	.loc 1 1058 0
	stw 8,60(1)
	.loc 1 1063 0
	lfd 13,16(1)
	addi 8,1,24
.LVL121:
	frsp 12,12
	.loc 1 1058 0
	stw 7,48(1)
	.loc 1 1063 0
	fsub 0,13,0
	lfs 13,.LC24@l(9)
	.loc 1 1070 0
	slwi 7,4,2
.LVL122:
	.loc 1 1058 0
	stw 12,100(1)
	.loc 1 1063 0
	fmuls 13,12,13
	.loc 1 1065 0
	stw 0,84(1)
	.loc 1 1063 0
	frsp 0,0
	.loc 1 1058 0
	stw 22,136(1)
	stw 30,168(1)
	stw 31,172(1)
	mr 31,6
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 22, -40
	.cfi_offset 70, -76
	.loc 1 1063 0
	fdivs 0,13,0
	.loc 1 1058 0
	stw 3,88(1)
	stw 14,104(1)
	.loc 1 1065 0
	mr 3,0
.LVL123:
	.loc 1 1058 0
	stw 15,108(1)
	stw 16,112(1)
	stw 17,116(1)
	stw 18,120(1)
	stw 19,124(1)
	stw 20,128(1)
	stw 21,132(1)
	stw 23,140(1)
	stw 24,144(1)
	stw 25,148(1)
	stw 26,152(1)
	stw 27,156(1)
	stw 28,160(1)
	stw 29,164(1)
	.loc 1 1058 0
	stw 4,64(1)
	.loc 1 1063 0
	fctiwz 0,0
	.loc 1 1070 0
	stw 7,68(1)
	.loc 1 1060 0
	stw 5,72(1)
.LVL124:
	.loc 1 1063 0
	stfiwx 0,0,8
	lwz 9,24(1)
	stw 9,76(1)
.LVL125:
	.loc 1 1065 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	.cfi_offset 14, -72
	bl malloc
.LVL126:
	mr 30,3
.LVL127:
	.loc 1 1066 0
	lwz 3,84(1)
.LVL128:
	bl malloc
	.loc 1 1069 0
	lwz 5,64(1)
	.loc 1 1066 0
	stw 3,28(1)
.LVL129:
	.loc 1 1069 0
	mr 4,30
	lwz 3,88(1)
.LVL130:
	lwz 6,48(1)
	bl GL_ResampleTextureLerpLine
	.loc 1 1070 0
	lwz 10,88(1)
	lwz 11,68(1)
	lwz 4,28(1)
	lwz 5,64(1)
	add 3,10,11
	lwz 6,48(1)
	bl GL_ResampleTextureLerpLine
.LVL131:
	.loc 1 1071 0
	lwz 22,60(1)
	cmpwi 7,22,0
	ble- 7,.L89
.LBB17:
	.loc 1 1088 0
	lwz 23,48(1)
	.loc 1 1071 0
	li 10,0
	.loc 1 1057 0
	lwz 7,48(1)
	.loc 1 1068 0
	li 22,0
	.loc 1 1088 0
	addi 23,23,-4
	.loc 1 1062 0
	stw 31,32(1)
	.loc 1 1057 0
	srwi 9,23,2
	addi 11,7,-8
	mulli 0,9,-4
	addi 9,9,1
	.loc 1 1135 0
	mulli 8,7,-4
	.loc 1 1088 0
	cmpwi 4,23,0
	stw 23,52(1)
	.loc 1 1057 0
	slwi 9,9,4
	.loc 1 1071 0
	li 23,0
	.loc 1 1057 0
	add 0,11,0
	.loc 1 1135 0
	stw 8,80(1)
	.loc 1 1071 0
	stw 10,36(1)
	.loc 1 1068 0
	stw 22,40(1)
	.loc 1 1071 0
	stw 23,44(1)
	.loc 1 1057 0
	stw 9,56(1)
	stw 0,92(1)
.LVL132:
.L101:
.LBE17:
	.loc 1 1073 0
	lwz 0,36(1)
	.loc 1 1074 0
	lwz 7,72(1)
	.loc 1 1073 0
	srawi 29,0,16
.LVL133:
.LBB18:
	.loc 1 1077 0
	lwz 8,40(1)
.LBE18:
	.loc 1 1074 0
	cmpw 7,7,29
	ble- 7,.L90
.LBB19:
	.loc 1 1077 0
	cmpw 7,29,8
	.loc 1 1076 0
	rlwinm 31,0,0,16,31
.LVL134:
	.loc 1 1077 0
	beq- 7,.L91
	.loc 1 1079 0
	lwz 9,68(1)
	.loc 1 1080 0
	addi 0,8,1
	cmpw 7,0,29
	.loc 1 1079 0
	lwz 10,88(1)
	mullw 28,9,29
	add 28,10,28
.LVL135:
	.loc 1 1080 0
	beq- 7,.L106
	.loc 1 1083 0
	lwz 5,64(1)
	mr 3,28
	lwz 6,48(1)
	mr 4,30
	bl GL_ResampleTextureLerpLine
.L93:
	.loc 1 1084 0
	lwz 11,68(1)
	lwz 4,28(1)
	lwz 5,64(1)
	add 3,28,11
	lwz 6,48(1)
	bl GL_ResampleTextureLerpLine
.LVL136:
	stw 29,40(1)
.LVL137:
.L91:
	.loc 1 1087 0
	lwz 0,52(1)
	.loc 1 1088 0
	blt- 4,.L94
	mr 22,0
	lwz 10,28(1)
	addi 0,22,-4
	srwi 8,22,2
	cmpwi 7,0,-4
	addi 8,8,1
	mr 9,30
	lwz 11,32(1)
	mtctr 8
	blt- 7,.L107
.LVL138:
.L95:
	.loc 1 1094 0
	lbz 29,4(9)
	.loc 1 1095 0
	lbz 3,5(9)
	.loc 1 1096 0
	lbz 4,6(9)
	.loc 1 1097 0
	lbz 5,7(9)
	.loc 1 1098 0
	lbz 6,8(9)
	.loc 1 1090 0
	lbz 25,0(9)
	.loc 1 1091 0
	lbz 26,1(9)
	.loc 1 1092 0
	lbz 27,2(9)
	.loc 1 1093 0
	lbz 28,3(9)
	.loc 1 1099 0
	lbz 7,9(9)
	.loc 1 1100 0
	lbz 8,10(9)
	.loc 1 1101 0
	lbz 0,11(9)
	.loc 1 1090 0
	lbz 12,0(10)
	.loc 1 1091 0
	lbz 15,1(10)
	.loc 1 1092 0
	lbz 14,2(10)
	.loc 1 1090 0
	subf 12,25,12
	.loc 1 1093 0
	lbz 16,3(10)
	.loc 1 1091 0
	subf 15,26,15
	.loc 1 1094 0
	lbz 17,4(10)
	.loc 1 1092 0
	subf 14,27,14
	.loc 1 1095 0
	lbz 18,5(10)
	.loc 1 1093 0
	subf 16,28,16
	.loc 1 1096 0
	lbz 19,6(10)
	.loc 1 1094 0
	subf 17,29,17
	.loc 1 1097 0
	lbz 20,7(10)
	.loc 1 1095 0
	subf 18,3,18
	.loc 1 1098 0
	lbz 21,8(10)
	.loc 1 1096 0
	subf 19,4,19
	.loc 1 1099 0
	lbz 22,9(10)
	.loc 1 1097 0
	subf 20,5,20
	.loc 1 1100 0
	lbz 23,10(10)
	.loc 1 1098 0
	subf 21,6,21
	.loc 1 1101 0
	lbz 24,11(10)
	.loc 1 1099 0
	subf 22,7,22
	.loc 1 1100 0
	subf 23,8,23
	.loc 1 1090 0
	mullw 12,12,31
	.loc 1 1101 0
	subf 24,0,24
	.loc 1 1091 0
	mullw 15,15,31
	.loc 1 1090 0
	srawi 12,12,16
	add 25,25,12
	stb 25,0(11)
	.loc 1 1092 0
	mullw 14,14,31
	.loc 1 1091 0
	srawi 15,15,16
	add 15,26,15
	stb 15,1(11)
	.loc 1 1093 0
	mullw 16,16,31
	.loc 1 1092 0
	srawi 14,14,16
	add 14,27,14
	stb 14,2(11)
	.loc 1 1094 0
	mullw 17,17,31
	.loc 1 1093 0
	srawi 16,16,16
	add 16,28,16
	stb 16,3(11)
	.loc 1 1095 0
	mullw 18,18,31
	.loc 1 1094 0
	srawi 17,17,16
	add 17,29,17
	stb 17,4(11)
	.loc 1 1096 0
	mullw 19,19,31
	.loc 1 1095 0
	srawi 18,18,16
	add 18,3,18
	stb 18,5(11)
	.loc 1 1097 0
	mullw 20,20,31
	.loc 1 1096 0
	srawi 19,19,16
	add 19,4,19
	stb 19,6(11)
	.loc 1 1098 0
	mullw 21,21,31
	.loc 1 1097 0
	srawi 20,20,16
	add 20,5,20
	stb 20,7(11)
	.loc 1 1099 0
	mullw 22,22,31
	.loc 1 1098 0
	srawi 21,21,16
	add 21,6,21
	stb 21,8(11)
	.loc 1 1100 0
	mullw 23,23,31
	.loc 1 1099 0
	srawi 22,22,16
	add 7,7,22
	stb 7,9(11)
	.loc 1 1101 0
	mullw 24,24,31
	.loc 1 1100 0
	srawi 23,23,16
	add 8,8,23
	stb 8,10(11)
	.loc 1 1101 0
	srawi 24,24,16
	add 0,0,24
	stb 0,11(11)
	.loc 1 1102 0
	lbz 6,12(9)
	.loc 1 1103 0
	lbz 7,13(9)
	.loc 1 1104 0
	lbz 8,14(9)
	.loc 1 1105 0
	lbz 0,15(9)
	.loc 1 1107 0
	addi 9,9,16
.LVL139:
	.loc 1 1102 0
	lbz 29,12(10)
	.loc 1 1103 0
	lbz 4,13(10)
	.loc 1 1104 0
	lbz 3,14(10)
	.loc 1 1102 0
	subf 29,6,29
	.loc 1 1105 0
	lbz 5,15(10)
	.loc 1 1103 0
	subf 4,7,4
	.loc 1 1104 0
	subf 3,8,3
	.loc 1 1102 0
	mullw 29,29,31
	.loc 1 1105 0
	subf 5,0,5
	.loc 1 1108 0
	addi 10,10,16
.LVL140:
	.loc 1 1103 0
	mullw 4,4,31
	.loc 1 1102 0
	srawi 29,29,16
	add 6,6,29
	stb 6,12(11)
	.loc 1 1104 0
	mullw 3,3,31
	.loc 1 1103 0
	srawi 4,4,16
	add 7,7,4
	stb 7,13(11)
	.loc 1 1105 0
	mullw 5,5,31
	.loc 1 1104 0
	srawi 3,3,16
	add 8,8,3
	stb 8,14(11)
	.loc 1 1105 0
	srawi 5,5,16
	add 0,0,5
	stb 0,15(11)
	.loc 1 1106 0
	addi 11,11,16
.LVL141:
	.loc 1 1088 0
	bdnz .L95
	.loc 1 1057 0
	lwz 8,56(1)
	lwz 7,32(1)
	lwz 9,28(1)
.LVL142:
	add 30,30,8
	add 7,7,8
	lwz 0,92(1)
	add 9,9,8
	stw 7,32(1)
	stw 9,28(1)
.LVL143:
.L94:
	.loc 1 1111 0
	andi. 10,0,2
	beq- 0,.L96
	.loc 1 1113 0
	lwz 22,28(1)
	lbz 4,0(30)
	lbz 23,0(22)
	.loc 1 1114 0
	lbz 5,1(30)
	.loc 1 1115 0
	lbz 6,2(30)
	.loc 1 1113 0
	subf 23,4,23
	.loc 1 1116 0
	lbz 7,3(30)
	.loc 1 1113 0
	mullw 23,23,31
	.loc 1 1117 0
	lbz 8,4(30)
	.loc 1 1118 0
	lbz 10,5(30)
	.loc 1 1119 0
	lbz 11,6(30)
	.loc 1 1120 0
	lbz 9,7(30)
	.loc 1 1113 0
	srawi 23,23,16
	.loc 1 1114 0
	lbz 25,1(22)
	.loc 1 1113 0
	add 4,4,23
	.loc 1 1115 0
	lbz 24,2(22)
	.loc 1 1122 0
	addi 30,30,8
	.loc 1 1116 0
	lbz 26,3(22)
	.loc 1 1114 0
	subf 25,5,25
	.loc 1 1117 0
	lbz 27,4(22)
	.loc 1 1115 0
	subf 24,6,24
	.loc 1 1118 0
	lbz 28,5(22)
	.loc 1 1116 0
	subf 26,7,26
	.loc 1 1119 0
	lbz 29,6(22)
	.loc 1 1117 0
	subf 27,8,27
	.loc 1 1120 0
	lbz 3,7(22)
	.loc 1 1118 0
	subf 28,10,28
	.loc 1 1119 0
	subf 29,11,29
	.loc 1 1114 0
	mullw 25,25,31
	.loc 1 1120 0
	subf 3,9,3
	.loc 1 1113 0
	lwz 23,32(1)
	.loc 1 1123 0
	addi 22,22,8
	.loc 1 1113 0
	stb 4,0(23)
	.loc 1 1115 0
	mullw 24,24,31
	.loc 1 1114 0
	srawi 25,25,16
	add 25,5,25
	.loc 1 1123 0
	stw 22,28(1)
	.loc 1 1114 0
	stb 25,1(23)
	.loc 1 1116 0
	mullw 26,26,31
	.loc 1 1115 0
	srawi 24,24,16
	add 24,6,24
	stb 24,2(23)
	.loc 1 1117 0
	mullw 27,27,31
	.loc 1 1116 0
	srawi 26,26,16
	add 26,7,26
	stb 26,3(23)
	.loc 1 1118 0
	mullw 28,28,31
	.loc 1 1117 0
	srawi 27,27,16
	add 8,8,27
	stb 8,4(23)
	.loc 1 1119 0
	mullw 29,29,31
	.loc 1 1118 0
	srawi 28,28,16
	add 10,10,28
	stb 10,5(23)
	.loc 1 1120 0
	mullw 3,3,31
	.loc 1 1119 0
	srawi 29,29,16
	add 11,11,29
	stb 11,6(23)
	.loc 1 1120 0
	srawi 3,3,16
	add 9,9,3
	stb 9,7(23)
	.loc 1 1121 0
	addi 23,23,8
	stw 23,32(1)
.LVL144:
.L96:
	.loc 1 1125 0
	andi. 3,0,1
	beq- 0,.L97
	.loc 1 1127 0
	lwz 7,28(1)
	lbz 10,0(30)
	lbz 5,0(7)
	.loc 1 1128 0
	lbz 11,1(30)
	.loc 1 1127 0
	subf 5,10,5
	.loc 1 1128 0
	lbz 7,1(7)
	.loc 1 1127 0
	mullw 5,5,31
	.loc 1 1129 0
	lwz 8,28(1)
	lbz 9,2(30)
	.loc 1 1128 0
	subf 7,11,7
	.loc 1 1130 0
	lbz 0,3(30)
	.loc 1 1132 0
	addi 30,30,4
.LVL145:
	.loc 1 1129 0
	lbz 6,2(8)
	.loc 1 1130 0
	lbz 8,3(8)
	.loc 1 1128 0
	mullw 7,7,31
	.loc 1 1127 0
	lwz 23,32(1)
	srawi 5,5,16
	.loc 1 1129 0
	subf 6,9,6
	.loc 1 1133 0
	lwz 22,28(1)
	.loc 1 1130 0
	subf 8,0,8
	.loc 1 1127 0
	add 10,10,5
	.loc 1 1128 0
	srawi 7,7,16
	.loc 1 1127 0
	stb 10,0(23)
	.loc 1 1129 0
	mullw 10,6,31
	.loc 1 1128 0
	add 11,11,7
	stb 11,1(23)
	.loc 1 1133 0
	addi 22,22,4
	stw 22,28(1)
	.loc 1 1130 0
	mullw 31,8,31
.LVL146:
	.loc 1 1129 0
	srawi 11,10,16
	add 9,9,11
	stb 9,2(23)
	.loc 1 1130 0
	srawi 31,31,16
	add 0,0,31
	stb 0,3(23)
	.loc 1 1131 0
	addi 23,23,4
	stw 23,32(1)
.LVL147:
.L97:
	.loc 1 1135 0
	lwz 0,80(1)
	.loc 1 1136 0
	lwz 7,28(1)
	.loc 1 1135 0
	add 30,30,0
.LVL148:
	.loc 1 1136 0
	add 7,7,0
	stw 7,28(1)
.LVL149:
.L98:
.LBE19:
	.loc 1 1071 0
	lwz 11,44(1)
	lwz 22,60(1)
	addi 11,11,1
	.loc 1 1057 0
	lwz 23,36(1)
	.loc 1 1071 0
	cmpw 7,11,22
	.loc 1 1057 0
	lwz 0,76(1)
	.loc 1 1071 0
	stw 11,44(1)
.LVL150:
	.loc 1 1057 0
	add 23,23,0
	stw 23,36(1)
.LVL151:
	.loc 1 1071 0
	bne+ 7,.L101
.LVL152:
.L89:
	.loc 1 1152 0
	mr 3,30
	bl free
	.loc 1 1153 0
	lwz 3,28(1)
	bl free
	.loc 1 1177 0
	lwz 0,180(1)
	lwz 12,100(1)
	mtlr 0
	lwz 14,104(1)
	lwz 15,108(1)
	mtcrf 8,12
	lwz 16,112(1)
	lwz 17,116(1)
	lwz 18,120(1)
	lwz 19,124(1)
	lwz 20,128(1)
	lwz 21,132(1)
	lwz 22,136(1)
	lwz 23,140(1)
	lwz 24,144(1)
	lwz 25,148(1)
	lwz 26,152(1)
	lwz 27,156(1)
	lwz 28,160(1)
	lwz 29,164(1)
	lwz 30,168(1)
.LVL153:
	lwz 31,172(1)
	addi 1,1,176
	.cfi_remember_state
.LCFI35:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL154:
.L90:
.LCFI36:
	.cfi_restore_state
	.loc 1 1140 0
	cmpw 7,29,8
	beq- 7,.L99
	.loc 1 1143 0
	addi 8,8,1
	cmpw 7,8,29
	stw 8,40(1)
	beq- 7,.L108
	.loc 1 1142 0
	lwz 9,68(1)
	.loc 1 1146 0
	mr 4,30
	lwz 10,88(1)
	.loc 1 1142 0
	mullw 3,9,29
	.loc 1 1146 0
	lwz 5,64(1)
	lwz 6,48(1)
	add 3,10,3
	bl GL_ResampleTextureLerpLine
	stw 29,40(1)
.L99:
.LVL155:
	.loc 1 1149 0
	lwz 3,32(1)
	mr 4,30
	lwz 5,84(1)
	bl memcpy
	b .L98
.LVL156:
.L106:
.LBB20:
	.loc 1 1081 0
	lwz 4,28(1)
	mr 3,30
	lwz 5,84(1)
	bl memcpy
	b .L93
.LVL157:
.L108:
.LBE20:
	.loc 1 1144 0
	lwz 4,28(1)
	mr 3,30
	lwz 5,84(1)
	bl memcpy
	b .L99
.LVL158:
.L107:
	li 23,1
	mtctr 23
	b .L95
	.cfi_endproc
.LFE63:
	.size	GL_ResampleTexture, .-GL_ResampleTexture
	.align 2
	.globl GL_Resample8BitTexture
	.type	GL_Resample8BitTexture, @function
GL_Resample8BitTexture:
.LFB64:
	.loc 1 1186 0
	.cfi_startproc
.LVL159:
	.loc 1 1192 0
	cmpwi 0,8,0
.LVL160:
	.loc 1 1186 0
	stwu 1,-48(1)
.LCFI37:
	.cfi_def_cfa_offset 48
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 1192 0
	ble- 0,.L109
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
.LVL161:
	.loc 1 1191 0
	slwi 30,4,16
	.loc 1 1185 0
	addi 23,7,-1
	.loc 1 1191 0
	divw 30,30,7
	.loc 1 1185 0
	rlwinm 23,23,0,0,29
	cmpwi 6,7,0
	li 25,0
	.loc 1 1192 0
	li 26,0
	.loc 1 1185 0
	addi 23,23,4
	mulli 27,30,3
	.loc 1 1191 0
	srwi 24,30,1
	.loc 1 1185 0
	slwi 28,30,1
	slwi 29,30,2
.LVL162:
.L113:
	.loc 1 1194 0
	divw 11,25,8
	mullw 11,11,4
	add 11,3,11
.LVL163:
	.loc 1 1196 0
	ble- 6,.L111
	mr 9,6
	.loc 1 1185 0
	add 31,6,23
	.loc 1 1195 0
	mr 0,24
.LVL164:
.L112:
	.loc 1 1198 0 discriminator 2
	srwi 10,0,16
	lbzx 12,11,10
	.loc 1 1185 0 discriminator 2
	add 10,30,0
	.loc 1 1200 0 discriminator 2
	srwi 10,10,16
	.loc 1 1198 0 discriminator 2
	stb 12,0(9)
	.loc 1 1200 0 discriminator 2
	lbzx 12,11,10
	.loc 1 1185 0 discriminator 2
	add 10,0,28
	.loc 1 1202 0 discriminator 2
	srwi 10,10,16
	.loc 1 1200 0 discriminator 2
	stb 12,1(9)
.LVL165:
	.loc 1 1202 0 discriminator 2
	lbzx 12,11,10
	.loc 1 1185 0 discriminator 2
	add 10,0,27
	.loc 1 1204 0 discriminator 2
	srwi 10,10,16
	.loc 1 1185 0 discriminator 2
	add 0,0,29
.LVL166:
	.loc 1 1202 0 discriminator 2
	stb 12,2(9)
.LVL167:
	.loc 1 1204 0 discriminator 2
	lbzx 10,11,10
	stb 10,3(9)
	.loc 1 1185 0 discriminator 2
	addi 9,9,4
	.loc 1 1196 0 discriminator 2
	cmpw 7,9,31
	bne+ 7,.L112
.LVL168:
.L111:
	.loc 1 1192 0
	addi 26,26,1
.LVL169:
	add 6,6,7
.LVL170:
	cmpw 7,26,8
	add 25,25,5
	bne+ 7,.L113
.LVL171:
.L109:
	.loc 1 1208 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
.LCFI38:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
	.cfi_endproc
.LFE64:
	.size	GL_Resample8BitTexture, .-GL_Resample8BitTexture
	.align 2
	.globl GL_MipMap
	.type	GL_MipMap, @function
GL_MipMap:
.LFB65:
	.loc 1 1220 0
	.cfi_startproc
.LVL172:
	.loc 1 1227 0
	srawi. 5,5,1
.LVL173:
	.loc 1 1220 0
	stwu 1,-32(1)
.LCFI39:
	.cfi_def_cfa_offset 32
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 1227 0
	ble- 0,.L116
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	slwi. 30,4,2
	.loc 1 1226 0
	mr 31,3
	.loc 1 1227 0
	li 12,0
	.loc 1 1219 0
	addi 9,30,-1
	srwi 9,9,3
	addi 29,9,1
	slwi 9,9,3
	slwi 28,29,2
	addi 27,9,8
	slwi 29,29,3
.LVL174:
.L118:
	.loc 1 1229 0 discriminator 1
	ble- 0,.L120
	.loc 1 1219 0
	add 11,3,30
	add 4,3,27
	mr 10,31
	mr 9,3
.LVL175:
.L119:
	.loc 1 1231 0 discriminator 2
	lbz 6,0(9)
	lbz 0,4(9)
	lbz 7,0(11)
	lbz 8,4(11)
	add 0,6,0
	add 0,0,7
	add 0,0,8
	srawi 0,0,2
	stb 0,0(10)
	.loc 1 1232 0 discriminator 2
	lbz 6,1(9)
	lbz 0,5(9)
	lbz 7,1(11)
	lbz 8,5(11)
	add 0,6,0
	add 0,0,7
	add 0,0,8
	srawi 0,0,2
	stb 0,1(10)
	.loc 1 1233 0 discriminator 2
	lbz 6,2(9)
	lbz 0,6(9)
	lbz 7,2(11)
	lbz 8,6(11)
	add 0,6,0
	add 0,0,7
	add 0,0,8
	srawi 0,0,2
	stb 0,2(10)
	.loc 1 1234 0 discriminator 2
	lbz 6,3(9)
	lbz 0,7(9)
	.loc 1 1229 0 discriminator 2
	addi 9,9,8
.LVL176:
	.loc 1 1234 0 discriminator 2
	lbz 7,3(11)
	.loc 1 1229 0 discriminator 2
	cmpw 7,9,4
	.loc 1 1234 0 discriminator 2
	lbz 8,7(11)
	add 0,6,0
	add 0,0,7
	.loc 1 1229 0 discriminator 2
	addi 11,11,8
	.loc 1 1234 0 discriminator 2
	add 0,0,8
	srawi 0,0,2
	stb 0,3(10)
	.loc 1 1229 0 discriminator 2
	addi 10,10,4
.LVL177:
	bne+ 7,.L119
	.loc 1 1219 0
	add 31,31,28
	add 3,3,29
.LVL178:
.L120:
	.loc 1 1227 0
	addi 12,12,1
.LVL179:
	add 3,3,30
.LVL180:
	cmpw 7,12,5
	bne+ 7,.L118
.LVL181:
.L116:
	.loc 1 1237 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI40:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE65:
	.size	GL_MipMap, .-GL_MipMap
	.align 2
	.globl GL_MipMapGray
	.type	GL_MipMapGray, @function
GL_MipMapGray:
.LFB66:
	.loc 1 1248 0
	.cfi_startproc
.LVL182:
	.loc 1 1255 0
	srawi. 5,5,1
.LVL183:
	.loc 1 1248 0
	stwu 1,-32(1)
.LCFI41:
	.cfi_def_cfa_offset 32
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 1255 0
	ble- 0,.L123
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	slwi. 31,4,2
	.loc 1 1254 0
	mr 12,3
	.loc 1 1255 0
	li 4,0
.LVL184:
	.loc 1 1247 0
	addi 30,31,-1
	addi 28,31,2
	srwi 30,30,1
	neg 27,31
	slwi 0,30,1
	addi 30,30,1
	add 28,28,0
	slwi 29,30,1
.LVL185:
.L125:
	.loc 1 1257 0 discriminator 1
	ble- 0,.L127
	.loc 1 1247 0
	add 9,3,31
	addi 10,12,-1
	add 6,3,28
.LVL186:
.L126:
	.loc 1 1259 0 discriminator 2
	mr 11,9
	lbz 8,0(9)
	lbzux 7,11,27
	lbz 0,1(11)
	lbz 11,1(9)
	addi 9,9,2
	add 0,7,0
	.loc 1 1257 0 discriminator 2
	cmpw 7,9,6
	.loc 1 1259 0 discriminator 2
	add 0,0,8
	add 0,0,11
	srawi 0,0,2
	stbu 0,1(10)
	.loc 1 1257 0 discriminator 2
	bne+ 7,.L126
	.loc 1 1247 0
	add 12,12,30
	add 3,3,29
.L127:
	.loc 1 1255 0
	addi 4,4,1
.LVL187:
	add 3,3,31
.LVL188:
	cmpw 7,4,5
	bne+ 7,.L125
.LVL189:
.L123:
	.loc 1 1262 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI42:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE66:
	.size	GL_MipMapGray, .-GL_MipMapGray
	.align 2
	.globl GL_MipMapNormal
	.type	GL_MipMapNormal, @function
GL_MipMapNormal:
.LFB67:
	.loc 1 1273 0
	.cfi_startproc
.LVL190:
	stwu 1,-320(1)
.LCFI43:
	.cfi_def_cfa_offset 320
	mfcr 12
	mflr 0
	stw 31,236(1)
	.loc 1 1284 0
	srawi. 31,5,1
	.cfi_offset 31, -84
	.cfi_register 65, 0
	.cfi_register 70, 12
	.loc 1 1273 0
	stw 30,232(1)
	mr 30,3
	.cfi_offset 30, -88
.LVL191:
	stw 0,324(1)
	stfd 22,240(1)
	stfd 23,248(1)
	stfd 24,256(1)
	stfd 25,264(1)
	stfd 26,272(1)
	stfd 27,280(1)
	stfd 28,288(1)
	stfd 29,296(1)
	stfd 30,304(1)
	stfd 31,312(1)
	stw 14,168(1)
	stw 15,172(1)
	stw 16,176(1)
	stw 17,180(1)
	stw 18,184(1)
	stw 19,188(1)
	stw 20,192(1)
	stw 21,196(1)
	stw 22,200(1)
	stw 23,204(1)
	stw 24,208(1)
	stw 25,212(1)
	stw 26,216(1)
	stw 27,220(1)
	stw 28,224(1)
	stw 29,228(1)
	stw 12,164(1)
	.loc 1 1284 0
	ble- 0,.L130
	.cfi_offset 70, -156
	.cfi_offset 29, -92
	.cfi_offset 28, -96
	.cfi_offset 27, -100
	.cfi_offset 26, -104
	.cfi_offset 25, -108
	.cfi_offset 24, -112
	.cfi_offset 23, -116
	.cfi_offset 22, -120
	.cfi_offset 21, -124
	.cfi_offset 20, -128
	.cfi_offset 19, -132
	.cfi_offset 18, -136
	.cfi_offset 17, -140
	.cfi_offset 16, -144
	.cfi_offset 15, -148
	.cfi_offset 14, -152
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 65, 4
	slwi 18,4,2
	.loc 1 1283 0
	mr 19,3
	.loc 1 1272 0
	addi 17,18,-1
	cmpwi 4,18,0
	srwi 17,17,3
	.loc 1 1284 0
	li 20,0
	.loc 1 1272 0
	slwi 9,17,3
	addi 17,17,1
	addi 9,9,8
	lis 14,.LC14@ha
	stw 9,152(1)
	.loc 1 1311 0
	lis 9,.LC0@ha
	lfs 23,.LC0@l(9)
	lis 15,.LC31@ha
	.loc 1 1272 0
	slwi 16,17,2
.LVL192:
.L132:
	.loc 1 1286 0 discriminator 1
	ble- 4,.L135
	.loc 1 1288 0
	lis 9,.LC10@ha
	.loc 1 1272 0
	lwz 0,152(1)
	.loc 1 1288 0
	lfs 22,.LC10@l(9)
	lis 9,.LC4@ha
	lfs 31,.LC4@l(9)
	lis 9,.LC25@ha
	lfs 29,.LC25@l(9)
	.loc 1 1303 0
	lis 9,.LC27@ha
	.loc 1 1272 0
	add 27,30,18
	add 23,30,0
	mr 26,19
	mr 28,30
	la 24,.LC14@l(14)
	la 25,.LC31@l(15)
	.loc 1 1288 0
	lis 29,0x4330
	fmr 30,22
	.loc 1 1303 0
	lfs 28,.LC27@l(9)
	.loc 1 1317 0
	lis 21,.LC28@ha
	lis 22,.LC29@ha
	b .L134
.LVL193:
.L139:
	fdivs 1,22,1
.LVL194:
	lfs 13,.LC28@l(21)
	lfs 0,.LC29@l(22)
	addi 9,1,140
	.loc 1 1318 0
	fmuls 25,25,1
.LVL195:
	.loc 1 1319 0
	fmuls 26,26,1
.LVL196:
	.loc 1 1320 0
	fmuls 1,27,1
.LVL197:
	.loc 1 1317 0
	fmadds 25,25,13,0
.LVL198:
	fmadds 26,26,13,0
.LVL199:
	fmadds 0,1,13,0
	fctiwz 25,25
	fctiwz 26,26
	fctiwz 0,0
	stfiwx 25,0,9
	addi 9,1,144
	stfiwx 26,0,9
	addi 9,1,148
	stfiwx 0,0,9
	lwz 11,140(1)
	lwz 9,144(1)
	lwz 0,148(1)
	rlwinm 11,11,0,0xff
	rlwinm 9,9,0,0xff
	rlwinm 0,0,0,0xff
.LVL200:
.L133:
	.loc 1 1325 0
	lfs 13,0(24)
	.loc 1 1286 0
	addi 28,28,8
.LVL201:
	.loc 1 1325 0
	lfs 0,0(25)
	.loc 1 1286 0
	cmpw 7,28,23
	.loc 1 1325 0
	fmul 24,24,13
.LVL202:
	.loc 1 1323 0
	stb 9,1(26)
	.loc 1 1325 0
	addi 9,1,136
	.loc 1 1322 0
	stb 11,0(26)
	.loc 1 1324 0
	stb 0,2(26)
	.loc 1 1286 0
	addi 27,27,8
	.loc 1 1325 0
	fmul 24,24,0
	fctiwz 24,24
	stfiwx 24,0,9
	lwz 0,136(1)
	stb 0,3(26)
	.loc 1 1286 0
	addi 26,26,4
.LVL203:
	beq- 7,.L138
.L134:
	.loc 1 1288 0
	lbz 0,0(28)
	stw 29,8(1)
	xoris 0,0,0x8000
	stw 0,12(1)
	.loc 1 1289 0
	lbz 0,4(28)
	stw 29,16(1)
	xoris 0,0,0x8000
	stw 0,20(1)
	.loc 1 1290 0
	lbz 0,0(27)
	stw 29,24(1)
	xoris 0,0,0x8000
	stw 0,28(1)
	.loc 1 1291 0
	lbz 0,4(27)
	stw 29,32(1)
	xoris 0,0,0x8000
	stw 0,36(1)
	.loc 1 1292 0
	lbz 0,1(28)
	stw 29,40(1)
	xoris 0,0,0x8000
	stw 0,44(1)
	.loc 1 1293 0
	lbz 0,5(28)
	stw 29,48(1)
	xoris 0,0,0x8000
	.loc 1 1292 0
	lfd 26,40(1)
	.loc 1 1293 0
	stw 0,52(1)
	.loc 1 1292 0
	fsub 26,26,31
	.loc 1 1294 0
	lbz 0,1(27)
	stw 29,56(1)
	xoris 0,0,0x8000
	.loc 1 1293 0
	lfd 6,48(1)
	.loc 1 1294 0
	stw 0,60(1)
	.loc 1 1292 0
	frsp 26,26
	.loc 1 1293 0
	fsub 6,6,31
	.loc 1 1295 0
	lbz 0,5(27)
	stw 29,64(1)
	.loc 1 1292 0
	fmuls 26,26,29
	.loc 1 1295 0
	xoris 0,0,0x8000
	.loc 1 1293 0
	frsp 6,6
	.loc 1 1295 0
	stw 0,68(1)
	.loc 1 1292 0
	fsub 26,26,30
	.loc 1 1296 0
	lbz 0,2(28)
	.loc 1 1293 0
	fmuls 6,6,29
	.loc 1 1296 0
	stw 29,72(1)
	xoris 0,0,0x8000
	stw 0,76(1)
	.loc 1 1293 0
	fsub 6,6,30
	.loc 1 1297 0
	lbz 0,6(28)
	stw 29,80(1)
	.loc 1 1292 0
	fadd 26,26,6
	.loc 1 1297 0
	xoris 0,0,0x8000
	stw 0,84(1)
	.loc 1 1298 0
	lbz 0,2(27)
	stw 29,88(1)
	xoris 0,0,0x8000
	.loc 1 1288 0
	lfd 25,8(1)
	.loc 1 1298 0
	stw 0,92(1)
	.loc 1 1289 0
	lfd 7,16(1)
	.loc 1 1288 0
	fsub 25,25,31
	.loc 1 1299 0
	lbz 0,6(27)
	stw 29,96(1)
	.loc 1 1289 0
	fsub 7,7,31
	.loc 1 1299 0
	xoris 0,0,0x8000
	.loc 1 1296 0
	lfd 27,72(1)
	.loc 1 1299 0
	stw 0,100(1)
	.loc 1 1288 0
	frsp 25,25
	.loc 1 1297 0
	lfd 11,80(1)
	.loc 1 1296 0
	fsub 27,27,31
	.loc 1 1307 0
	lbz 0,7(27)
	.loc 1 1289 0
	frsp 7,7
	.loc 1 1307 0
	stw 29,104(1)
	.loc 1 1297 0
	fsub 11,11,31
	.loc 1 1307 0
	xoris 0,0,0x8000
	.loc 1 1294 0
	lfd 8,56(1)
	.loc 1 1307 0
	stw 0,108(1)
	.loc 1 1296 0
	frsp 27,27
	.loc 1 1290 0
	lfd 9,24(1)
	.loc 1 1294 0
	fsub 8,8,31
	.loc 1 1305 0
	lbz 0,3(27)
	.loc 1 1297 0
	frsp 11,11
	.loc 1 1298 0
	lfd 13,88(1)
	.loc 1 1290 0
	fsub 9,9,31
	.loc 1 1305 0
	xoris 0,0,0x8000
	stw 29,112(1)
	stw 0,116(1)
	.loc 1 1298 0
	fsub 13,13,31
	.loc 1 1295 0
	lfd 10,64(1)
	.loc 1 1294 0
	frsp 8,8
	.loc 1 1291 0
	lfd 12,32(1)
	.loc 1 1288 0
	fmuls 25,25,29
	.loc 1 1301 0
	lbz 0,3(28)
	.loc 1 1295 0
	fsub 10,10,31
	.loc 1 1289 0
	fmuls 7,7,29
	.loc 1 1301 0
	stw 29,120(1)
	.loc 1 1290 0
	frsp 9,9
	.loc 1 1301 0
	xoris 0,0,0x8000
	.loc 1 1291 0
	fsub 12,12,31
	.loc 1 1301 0
	stw 0,124(1)
	.loc 1 1296 0
	fmuls 27,27,29
	.loc 1 1299 0
	lfd 0,96(1)
	.loc 1 1297 0
	fmuls 11,11,29
	.loc 1 1303 0
	lbz 0,7(28)
	.loc 1 1298 0
	frsp 13,13
	.loc 1 1303 0
	stw 29,128(1)
	.loc 1 1294 0
	fmuls 8,8,29
	.loc 1 1303 0
	xoris 0,0,0x8000
	.loc 1 1295 0
	frsp 10,10
	.loc 1 1303 0
	stw 0,132(1)
	.loc 1 1289 0
	fsub 7,7,30
	.loc 1 1305 0
	lfd 24,112(1)
	.loc 1 1297 0
	fsub 11,11,30
	.loc 1 1290 0
	fmuls 9,9,29
	.loc 1 1291 0
	frsp 12,12
	.loc 1 1288 0
	fsub 25,25,30
	.loc 1 1298 0
	fmuls 13,13,29
	.loc 1 1296 0
	fsub 27,27,30
	.loc 1 1294 0
	fsub 8,8,30
	.loc 1 1295 0
	fmuls 10,10,29
	.loc 1 1299 0
	fsub 0,0,31
	.loc 1 1288 0
	fadd 25,25,7
	.loc 1 1290 0
	fsub 9,9,30
	.loc 1 1296 0
	fadd 27,27,11
	.loc 1 1298 0
	fsub 13,13,30
	.loc 1 1291 0
	fmuls 12,12,29
	.loc 1 1293 0
	fadd 26,26,8
	.loc 1 1295 0
	fsub 10,10,30
	.loc 1 1299 0
	frsp 0,0
	.loc 1 1289 0
	fadd 25,25,9
	.loc 1 1291 0
	fsub 12,12,30
	.loc 1 1297 0
	fadd 27,27,13
	.loc 1 1303 0
	lfd 13,128(1)
	.loc 1 1294 0
	fadd 26,26,10
	.loc 1 1299 0
	fmuls 0,0,29
	.loc 1 1303 0
	fsub 13,13,31
	.loc 1 1290 0
	fadd 25,25,12
	.loc 1 1301 0
	lfd 12,120(1)
	.loc 1 1299 0
	fsub 0,0,30
	.loc 1 1292 0
	frsp 26,26
	.loc 1 1301 0
	fsub 12,12,31
	.loc 1 1303 0
	frsp 13,13
	.loc 1 1298 0
	fadd 27,27,0
	.loc 1 1307 0
	lfd 0,104(1)
	.loc 1 1301 0
	frsp 12,12
	.loc 1 1288 0
	frsp 25,25
.LVL204:
	.loc 1 1310 0
	fmuls 1,26,26
	.loc 1 1305 0
	fsub 24,24,31
	.loc 1 1303 0
	fmuls 13,13,28
	.loc 1 1296 0
	frsp 27,27
.LVL205:
	.loc 1 1310 0
	fmadds 1,25,25,1
	.loc 1 1301 0
	fmadds 13,12,28,13
	.loc 1 1305 0
	frsp 24,24
	.loc 1 1307 0
	fsub 0,0,31
	.loc 1 1310 0
	fmadds 1,27,27,1
	.loc 1 1303 0
	fmadds 24,24,28,13
	.loc 1 1307 0
	frsp 0,0
	.loc 1 1301 0
	fmadds 24,0,28,24
.LVL206:
	.loc 1 1310 0
	bl sqrt
	frsp 1,1
.LVL207:
	.loc 1 1311 0
	fcmpu 7,1,23
	bne- 7,.L139
	li 0,255
	li 9,128
	li 11,128
	b .L133
.LVL208:
.L138:
	.loc 1 1272 0
	slwi 0,17,3
	add 19,19,16
	add 30,30,0
.LVL209:
.L135:
	.loc 1 1284 0
	addi 20,20,1
.LVL210:
	add 30,30,18
.LVL211:
	cmpw 7,20,31
	bne+ 7,.L132
.LVL212:
.L130:
	.loc 1 1329 0
	lwz 0,324(1)
	lwz 12,164(1)
	mtlr 0
	lwz 14,168(1)
	lwz 15,172(1)
	mtcrf 8,12
	lwz 16,176(1)
	lwz 17,180(1)
	lwz 18,184(1)
	lwz 19,188(1)
	lwz 20,192(1)
	lwz 21,196(1)
	lwz 22,200(1)
	lwz 23,204(1)
	lwz 24,208(1)
	lwz 25,212(1)
	lwz 26,216(1)
	lwz 27,220(1)
	lwz 28,224(1)
	lwz 29,228(1)
	lwz 30,232(1)
.LVL213:
	lwz 31,236(1)
	lfd 22,240(1)
	lfd 23,248(1)
	lfd 24,256(1)
	lfd 25,264(1)
	lfd 26,272(1)
	lfd 27,280(1)
	lfd 28,288(1)
	lfd 29,296(1)
	lfd 30,304(1)
	lfd 31,312(1)
	addi 1,1,320
.LCFI44:
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
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
	.cfi_endproc
.LFE67:
	.size	GL_MipMapNormal, .-GL_MipMapNormal
	.align 2
	.globl GL_Normalize
	.type	GL_Normalize, @function
GL_Normalize:
.LFB68:
	.loc 1 1332 0
	.cfi_startproc
.LVL214:
	stwu 1,-168(1)
.LCFI45:
	.cfi_def_cfa_offset 168
	mfcr 12
	mflr 0
	.loc 1 1338 0
	slwi 4,4,2
.LVL215:
	.loc 1 1332 0
	stw 31,108(1)
	.loc 1 1340 0
	mr. 31,5
	.cfi_offset 31, -60
	.cfi_register 65, 0
	.cfi_register 70, 12
	.loc 1 1332 0
	stw 30,104(1)
	mr 30,3
	.cfi_offset 30, -64
	stw 0,172(1)
	stfd 25,112(1)
	stfd 26,120(1)
	stfd 27,128(1)
	stfd 28,136(1)
	stfd 29,144(1)
	stfd 30,152(1)
	stfd 31,160(1)
	stw 17,52(1)
	stw 18,56(1)
	stw 19,60(1)
	stw 20,64(1)
	stw 21,68(1)
	stw 22,72(1)
	stw 23,76(1)
	stw 24,80(1)
	stw 25,84(1)
	stw 26,88(1)
	stw 27,92(1)
	stw 28,96(1)
	stw 29,100(1)
	stw 12,48(1)
	.loc 1 1340 0
	ble- 0,.L140
	.cfi_offset 70, -120
	.cfi_offset 29, -68
	.cfi_offset 28, -72
	.cfi_offset 27, -76
	.cfi_offset 26, -80
	.cfi_offset 25, -84
	.cfi_offset 24, -88
	.cfi_offset 23, -92
	.cfi_offset 22, -96
	.cfi_offset 21, -100
	.cfi_offset 20, -104
	.cfi_offset 19, -108
	.cfi_offset 18, -112
	.cfi_offset 17, -116
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 65, 4
	.loc 1 1331 0
	addi 9,4,-1
	.loc 1 1349 0
	lis 11,.LC0@ha
	.loc 1 1331 0
	srwi 9,9,2
	cmpwi 4,4,0
	slwi 17,9,2
	.loc 1 1349 0
	lfs 25,.LC0@l(11)
	.loc 1 1331 0
	addi 9,9,1
	.loc 1 1340 0
	mr 22,3
	li 23,0
	.loc 1 1331 0
	addi 17,17,4
	lis 18,.LC4@ha
	lis 19,.LC25@ha
	lis 20,.LC10@ha
	.loc 1 1344 0
	lis 27,0x4330
	.loc 1 1355 0
	lis 24,.LC28@ha
	lis 25,.LC29@ha
	.loc 1 1331 0
	slwi 21,9,2
.LVL216:
.L141:
	.loc 1 1342 0 discriminator 1
	ble- 4,.L145
	.loc 1 1344 0
	lfs 26,.LC4@l(18)
	.loc 1 1331 0
	add 26,30,17
	.loc 1 1344 0
	lfs 27,.LC25@l(19)
	.loc 1 1331 0
	mr 28,22
	.loc 1 1344 0
	lfs 31,.LC10@l(20)
	.loc 1 1331 0
	mr 29,30
.LVL217:
.L144:
	.loc 1 1344 0
	lbz 0,0(29)
	stw 27,8(1)
	xoris 0,0,0x8000
	stw 0,12(1)
	.loc 1 1345 0
	lbz 0,1(29)
	stw 27,16(1)
	xoris 0,0,0x8000
	.loc 1 1344 0
	lfd 28,8(1)
	.loc 1 1345 0
	stw 0,20(1)
	.loc 1 1344 0
	fsub 28,28,26
	.loc 1 1345 0
	lfd 29,16(1)
	.loc 1 1346 0
	lbz 0,2(29)
	.loc 1 1345 0
	fsub 29,29,26
	.loc 1 1346 0
	stw 27,24(1)
	xoris 0,0,0x8000
	.loc 1 1344 0
	frsp 28,28
	.loc 1 1346 0
	stw 0,28(1)
	.loc 1 1345 0
	frsp 29,29
	.loc 1 1346 0
	lfd 30,24(1)
	.loc 1 1344 0
	fmsubs 28,28,27,31
.LVL218:
	.loc 1 1345 0
	fmsubs 29,29,27,31
.LVL219:
	.loc 1 1346 0
	fsub 30,30,26
	.loc 1 1348 0
	fmuls 1,29,29
	.loc 1 1346 0
	frsp 30,30
	.loc 1 1348 0
	fmadds 1,28,28,1
	.loc 1 1346 0
	fmsubs 30,30,27,31
.LVL220:
	.loc 1 1348 0
	fmadds 1,30,30,1
	bl sqrt
	.loc 1 1349 0
	li 0,255
	.loc 1 1348 0
	frsp 1,1
.LVL221:
	.loc 1 1349 0
	li 9,128
	li 11,128
	fcmpu 7,1,25
	beq- 7,.L143
	.loc 1 1355 0
	fdivs 1,31,1
.LVL222:
	lfs 13,.LC28@l(24)
	lfs 0,.LC29@l(25)
	addi 9,1,32
	addi 11,1,36
	.loc 1 1356 0
	fmuls 28,28,1
.LVL223:
	.loc 1 1357 0
	fmuls 29,29,1
.LVL224:
	.loc 1 1358 0
	fmuls 1,30,1
.LVL225:
	.loc 1 1355 0
	fmadds 28,28,13,0
.LVL226:
	fmadds 29,29,13,0
.LVL227:
	fmadds 0,1,13,0
	fctiwz 28,28
	fctiwz 29,29
	fctiwz 0,0
	stfiwx 28,0,9
	addi 9,1,40
	stfiwx 29,0,11
	stfiwx 0,0,9
	lwz 11,32(1)
	lwz 9,36(1)
	lwz 0,40(1)
	rlwinm 11,11,0,0xff
	rlwinm 9,9,0,0xff
	rlwinm 0,0,0,0xff
.LVL228:
.L143:
	.loc 1 1342 0
	addi 29,29,4
.LVL229:
	.loc 1 1360 0
	stb 11,0(28)
	.loc 1 1342 0
	cmpw 7,29,26
	.loc 1 1361 0
	stb 9,1(28)
	.loc 1 1362 0
	stb 0,2(28)
	.loc 1 1342 0
	addi 28,28,4
.LVL230:
	bne+ 7,.L144
	.loc 1 1331 0
	add 22,22,21
	add 30,30,21
.LVL231:
.L145:
	.loc 1 1340 0
	addi 23,23,1
.LVL232:
	cmpw 7,23,31
	bne+ 7,.L141
.LVL233:
.L140:
	.loc 1 1366 0
	lwz 0,172(1)
	lwz 12,48(1)
	mtlr 0
	lwz 17,52(1)
	lwz 18,56(1)
	mtcrf 8,12
	lwz 19,60(1)
	lwz 20,64(1)
	lwz 21,68(1)
	lwz 22,72(1)
	lwz 23,76(1)
	lwz 24,80(1)
	lwz 25,84(1)
	lwz 26,88(1)
	lwz 27,92(1)
	lwz 28,96(1)
	lwz 29,100(1)
	lwz 30,104(1)
.LVL234:
	lwz 31,108(1)
.LVL235:
	lfd 25,112(1)
	lfd 26,120(1)
	lfd 27,128(1)
	lfd 28,136(1)
	lfd 29,144(1)
	lfd 30,152(1)
	lfd 31,160(1)
	addi 1,1,168
.LCFI46:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	blr
	.cfi_endproc
.LFE68:
	.size	GL_Normalize, .-GL_Normalize
	.align 2
	.globl GL_MipMap8Bit
	.type	GL_MipMap8Bit, @function
GL_MipMap8Bit:
.LFB69:
	.loc 1 1376 0
	.cfi_startproc
.LVL236:
	.loc 1 1384 0
	srawi. 5,5,1
.LVL237:
	.loc 1 1376 0
	stwu 1,-80(1)
.LCFI47:
	.cfi_def_cfa_offset 80
	stw 15,12(1)
	stw 16,16(1)
	stw 17,20(1)
	stw 18,24(1)
	stw 19,28(1)
	stw 20,32(1)
	stw 21,36(1)
	stw 22,40(1)
	stw 23,44(1)
	stw 24,48(1)
	stw 25,52(1)
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 29,68(1)
	stw 30,72(1)
	stw 31,76(1)
	.loc 1 1384 0
	ble- 0,.L149
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	.loc 1 1375 0
	addi 26,4,-1
	addi 24,4,2
	srwi 26,26,1
	lis 9,d_8to24table@ha
	slwi 0,26,1
	lis 29,d_15to8table@ha
	addi 26,26,1
	cmpwi 6,4,0
	.loc 1 1383 0
	mr 27,3
	.loc 1 1384 0
	li 28,0
	.loc 1 1375 0
	add 24,24,0
	neg 23,4
	la 9,d_8to24table@l(9)
	la 29,d_15to8table@l(29)
	slwi 25,26,1
.LVL238:
.L151:
	.loc 1 1386 0 discriminator 1
	ble- 6,.L153
	.loc 1 1375 0
	add 11,3,4
	addi 31,27,-1
	add 30,3,24
.LVL239:
.L152:
	.loc 1 1388 0 discriminator 2
	mr 10,11
	.loc 1 1390 0 discriminator 2
	lbz 22,0(11)
	.loc 1 1388 0 discriminator 2
	lbzux 8,10,23
	.loc 1 1391 0 discriminator 2
	lbz 0,1(11)
	.loc 1 1397 0 discriminator 2
	addi 11,11,2
	.loc 1 1389 0 discriminator 2
	lbz 12,1(10)
	.loc 1 1388 0 discriminator 2
	slwi 8,8,2
	add 7,9,8
.LVL240:
	.loc 1 1390 0 discriminator 2
	slwi 10,22,2
	.loc 1 1389 0 discriminator 2
	slwi 12,12,2
	.loc 1 1393 0 discriminator 2
	lbzx 15,9,8
	.loc 1 1389 0 discriminator 2
	add 6,9,12
.LVL241:
	.loc 1 1393 0 discriminator 2
	lbzx 12,9,12
	.loc 1 1390 0 discriminator 2
	add 8,9,10
.LVL242:
	.loc 1 1391 0 discriminator 2
	slwi 0,0,2
	.loc 1 1393 0 discriminator 2
	lbzx 16,9,10
	.loc 1 1391 0 discriminator 2
	add 10,9,0
.LVL243:
	.loc 1 1394 0 discriminator 2
	lbz 17,1(6)
	.loc 1 1386 0 discriminator 2
	cmpw 7,11,30
	.loc 1 1394 0 discriminator 2
	lbz 18,1(7)
	.loc 1 1393 0 discriminator 2
	lbzx 19,9,0
	add 0,12,15
	.loc 1 1394 0 discriminator 2
	lbz 20,1(8)
	.loc 1 1395 0 discriminator 2
	lbz 21,2(6)
	lbz 22,2(7)
	.loc 1 1394 0 discriminator 2
	lbz 12,1(10)
	.loc 1 1395 0 discriminator 2
	lbz 6,2(8)
.LVL244:
	.loc 1 1393 0 discriminator 2
	add 8,0,16
.LVL245:
	.loc 1 1394 0 discriminator 2
	add 0,17,18
	.loc 1 1395 0 discriminator 2
	lbz 7,2(10)
.LVL246:
	.loc 1 1393 0 discriminator 2
	add 8,8,19
.LVL247:
	.loc 1 1394 0 discriminator 2
	add 0,0,20
	.loc 1 1395 0 discriminator 2
	add 10,21,22
.LVL248:
	.loc 1 1394 0 discriminator 2
	add 0,0,12
.LVL249:
	.loc 1 1395 0 discriminator 2
	add 10,10,6
	.loc 1 1397 0 discriminator 2
	rlwinm 8,8,27,21,31
.LVL250:
	rlwinm 0,0,0,16,26
.LVL251:
	.loc 1 1395 0 discriminator 2
	add 10,10,7
.LVL252:
	.loc 1 1397 0 discriminator 2
	add 8,29,8
	rlwinm 10,10,5,11,21
.LVL253:
	add 8,8,0
	lbzx 0,8,10
	stbu 0,1(31)
	.loc 1 1386 0 discriminator 2
	bne+ 7,.L152
	.loc 1 1375 0
	add 27,27,26
	add 3,3,25
.L153:
	.loc 1 1384 0
	addi 28,28,1
.LVL254:
	add 3,3,4
.LVL255:
	cmpw 7,28,5
	bne+ 7,.L151
.LVL256:
.L149:
	.loc 1 1400 0
	lwz 15,12(1)
	lwz 16,16(1)
	lwz 17,20(1)
	lwz 18,24(1)
	lwz 19,28(1)
	lwz 20,32(1)
	lwz 21,36(1)
	lwz 22,40(1)
	lwz 23,44(1)
	lwz 24,48(1)
	lwz 25,52(1)
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	addi 1,1,80
.LCFI48:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	blr
	.cfi_endproc
.LFE69:
	.size	GL_MipMap8Bit, .-GL_MipMap8Bit
	.align 2
	.globl GL_PackGloss
	.type	GL_PackGloss, @function
GL_PackGloss:
.LFB70:
	.loc 1 1410 0
	.cfi_startproc
.LVL257:
	.loc 1 1413 0
	cmpwi 0,5,0
	.loc 1 1410 0
	mflr 0
	stwu 1,-32(1)
.LCFI49:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 1413 0
	ble- 0,.L156
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 1 1409 0
	addi 30,3,-1
	lis 28,LittleLong@ha
	addi 31,4,-4
	add 27,30,5
	la 28,LittleLong@l(28)
.LVL258:
.L158:
	.loc 1 1416 0 discriminator 2
	lwz 0,0(28)
	lis 3,0xff
	ori 3,3,65535
	lwzu 29,4(31)
	mtctr 0
	bctrl
	.loc 1 1417 0 discriminator 2
	lwz 0,0(28)
	.loc 1 1416 0 discriminator 2
	and 29,29,3
	stw 29,0(31)
	.loc 1 1417 0 discriminator 2
	mtctr 0
	lbzu 3,1(30)
	slwi 3,3,24
	bctrl
	.loc 1 1413 0 discriminator 2
	cmpw 7,30,27
	.loc 1 1417 0 discriminator 2
	or 3,29,3
	stw 3,0(31)
	.loc 1 1413 0 discriminator 2
	bne+ 7,.L158
.L156:
	.loc 1 1419 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI50:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE70:
	.size	GL_PackGloss, .-GL_PackGloss
	.align 2
	.globl GL_Upload32
	.type	GL_Upload32, @function
GL_Upload32:
.LFB71:
	.loc 1 1427 0
	.cfi_startproc
.LVL259:
	stwu 1,-136(1)
.LCFI51:
	.cfi_def_cfa_offset 136
	mflr 0
	stw 29,116(1)
	mr 29,3
	.cfi_offset 29, -20
	.cfi_register 65, 0
	.loc 1 1436 0
	lis 3,0x8
.LVL260:
	.loc 1 1427 0
	stw 23,92(1)
	stw 24,96(1)
	mr 23,5
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	stw 25,100(1)
	mr 24,4
	stw 28,112(1)
	mr 25,6
	.cfi_offset 28, -24
	.cfi_offset 25, -36
	stw 0,140(1)
	stfd 31,128(1)
	stw 21,84(1)
	stw 22,88(1)
	stw 26,104(1)
	stw 27,108(1)
	stw 30,120(1)
	stw 31,124(1)
	.loc 1 1436 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl malloc
.LVL261:
	.loc 1 1437 0
	mr. 28,3
	beq- 0,.L160
	.loc 1 1445 0
	li 3,3553
.LVL262:
	li 4,10242
	li 5,10497
	.loc 1 1448 0
	lis 22,.LANCHOR0@ha
	.loc 1 1445 0
	bl glTexParameteri
	.loc 1 1446 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 1448 0
	la 22,.LANCHOR0@l(22)
	lis 9,.LC0@ha
	lfs 13,104(22)
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	bne- 7,.L194
.L162:
.LVL263:
	.loc 1 1453 0
	cmpwi 7,24,1
	li 30,1
	ble- 7,.L163
.LVL264:
.L164:
	.loc 1 1453 0 is_stmt 0 discriminator 2
	slwi 30,30,1
.LVL265:
	cmpw 7,24,30
	bgt+ 7,.L164
.LVL266:
.L163:
	.loc 1 1455 0 is_stmt 1 discriminator 1
	cmpwi 7,23,1
	li 0,1
	ble- 7,.L165
.LVL267:
.L166:
	.loc 1 1455 0 is_stmt 0 discriminator 2
	slwi 0,0,1
.LVL268:
	cmpw 7,23,0
	bgt+ 7,.L166
.LVL269:
.L165:
	.loc 1 1458 0 is_stmt 1
	lfs 0,124(22)
	.loc 1 1467 0
	lis 9,0x4330
	stw 9,16(1)
	.loc 1 1458 0
	addi 9,1,76
	fctiwz 0,0
	.loc 1 1467 0
	lis 26,.LC4@ha
	lfs 13,.LC4@l(26)
	.loc 1 1458 0
	stfiwx 0,0,9
	lwz 31,76(1)
	.loc 1 1467 0
	lfs 0,144(22)
	.loc 1 1458 0
	sraw 30,30,31
.LVL270:
	.loc 1 1459 0
	sraw 31,0,31
.LVL271:
	.loc 1 1467 0
	xoris 9,30,0x8000
	stw 9,20(1)
	lfd 12,16(1)
	fsub 13,12,13
	frsp 13,13
	fcmpu 7,13,0
	bng- 7,.L167
	.loc 1 1468 0
	fctiwz 13,0
	addi 9,1,72
	stfiwx 13,0,9
	lwz 30,72(1)
.LVL272:
.L167:
	.loc 1 1469 0
	xoris 0,31,0x8000
	lfs 13,.LC4@l(26)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lis 9,.LC32@ha
	lfd 12,24(1)
	fsub 13,12,13
	lfs 12,.LC32@l(9)
	fmuls 0,0,12
	frsp 13,13
	fcmpu 7,13,0
	bgt- 7,.L195
	.loc 1 1472 0
	mullw 21,30,31
	lis 0,0x2
	cmpw 7,21,0
	bgt- 7,.L196
.L171:
	.loc 1 1475 0
	lis 9,gl_texcomp@ha
	.loc 1 1488 0
	li 27,0
	.loc 1 1475 0
	lbz 0,gl_texcomp@l(9)
	.loc 1 1488 0
	ori 27,27,32855
	.loc 1 1475 0
	cmpwi 7,0,0
	beq- 7,.L172
	.loc 1 1475 0 is_stmt 0 discriminator 1
	lfs 0,164(22)
	addi 9,1,64
	.loc 1 1477 0 is_stmt 1 discriminator 1
	li 27,0
	.loc 1 1475 0 discriminator 1
	fctiwz 0,0
	.loc 1 1477 0 discriminator 1
	ori 27,27,34030
	.loc 1 1475 0 discriminator 1
	stfiwx 0,0,9
	lwz 0,64(1)
	andi. 9,0,1
	beq- 0,.L197
.L172:
.LVL273:
	.loc 1 1505 0
	lis 9,texels@ha
	.loc 1 1507 0
	cmpw 7,30,24
	.loc 1 1505 0
	lwz 0,texels@l(9)
	add 0,21,0
	stw 0,texels@l(9)
	.loc 1 1507 0
	beq- 7,.L198
.L173:
	.loc 1 1517 0
	mr 3,29
	mr 4,24
	mr 5,23
	mr 6,28
	mr 7,30
	mr 8,31
	bl GL_ResampleTexture
	.loc 1 1519 0
	li 3,3553
	li 4,0
	mr 5,27
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6408
	li 10,5121
	stw 28,8(1)
	bl glTexImage2D
	.loc 1 1520 0
	cmpwi 7,25,0
	bne- 7,.L176
.L175:
	.loc 1 1549 0
	lis 30,gl_filter_max@ha
.LVL274:
	lis 31,0x4330
.LVL275:
	lwz 0,gl_filter_max@l(30)
	li 3,3553
	stw 31,32(1)
	li 4,10241
	xoris 0,0,0x8000
	lfs 31,.LC4@l(26)
	stw 0,36(1)
	lfd 1,32(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	.loc 1 1550 0
	lwz 0,gl_filter_max@l(30)
	stw 31,40(1)
	li 3,3553
	xoris 0,0,0x8000
	li 4,10240
	stw 0,44(1)
	lfd 1,40(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	b .L182
.LVL276:
.L200:
	.loc 1 1544 0
	lis 9,gl_filter_min@ha
	lis 31,0x4330
	lwz 0,gl_filter_min@l(9)
	li 3,3553
	stw 31,48(1)
	li 4,10241
.LVL277:
	xoris 0,0,0x8000
	lfs 31,.LC4@l(26)
	stw 0,52(1)
	lfd 1,48(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.LVL278:
	.loc 1 1545 0
	lis 9,gl_filter_max@ha
	lwz 0,gl_filter_max@l(9)
	li 3,3553
	stw 31,56(1)
	li 4,10240
	xoris 0,0,0x8000
	stw 0,60(1)
	lfd 1,56(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.LVL279:
.L182:
	.loc 1 1558 0
	mr 3,28
	bl free
.LVL280:
.L160:
	.loc 1 1560 0
	lwz 0,140(1)
	lwz 21,84(1)
	mtlr 0
	lwz 22,88(1)
	lwz 23,92(1)
.LVL281:
	lwz 24,96(1)
.LVL282:
	lwz 25,100(1)
	lwz 26,104(1)
	lwz 27,108(1)
	lwz 28,112(1)
.LVL283:
	lwz 29,116(1)
	lwz 30,120(1)
	lwz 31,124(1)
	lfd 31,128(1)
	addi 1,1,136
	.cfi_remember_state
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	blr
.LVL284:
.L195:
.LCFI53:
	.cfi_restore_state
	.loc 1 1470 0
	fctiwz 0,0
	addi 9,1,68
	.loc 1 1472 0
	lis 0,0x2
	.loc 1 1470 0
	stfiwx 0,0,9
	lwz 31,68(1)
.LVL285:
	.loc 1 1472 0
	mullw 21,30,31
	cmpw 7,21,0
	ble+ 7,.L171
.LVL286:
.L196:
	.loc 1 1473 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L171
.LVL287:
.L198:
	.loc 1 1507 0 discriminator 1
	cmpw 7,31,23
	bne+ 7,.L173
	.loc 1 1509 0
	cmpwi 7,25,0
	bne- 7,.L174
	.loc 1 1511 0
	li 3,3553
	li 4,0
	mr 5,27
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6408
	li 10,5121
	stw 29,8(1)
	bl glTexImage2D
	.loc 1 1512 0
	b .L175
.L174:
	.loc 1 1514 0
	mr 4,29
	slwi 5,21,2
	mr 3,28
	bl memcpy
	.loc 1 1519 0
	li 3,3553
	li 4,0
	mr 5,27
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6408
	li 10,5121
	stw 28,8(1)
	bl glTexImage2D
.L176:
.LBB21:
	.loc 1 1533 0 discriminator 1
	li 29,0
.LVL288:
	b .L177
.LVL289:
.L178:
	.loc 1 1535 0
	mr 6,30
	.loc 1 1532 0
	ble- 7,.L199
.LVL290:
.L179:
	.loc 1 1535 0
	mr 7,31
	stw 28,8(1)
	bl glTexImage2D
.LVL291:
.L177:
	.loc 1 1525 0 discriminator 1
	cmpwi 7,30,1
	.loc 1 1527 0 discriminator 1
	mr 5,31
	.loc 1 1525 0 discriminator 1
	cmpwi 6,31,1
	.loc 1 1527 0 discriminator 1
	mr 4,30
	mr 3,28
	.loc 1 1534 0 discriminator 1
	addi 29,29,1
.LVL292:
	.loc 1 1529 0 discriminator 1
	srawi 31,31,1
.LVL293:
	.loc 1 1525 0 discriminator 1
	bgt- 7,.L180
.LVL294:
	.loc 1 1525 0 is_stmt 0 discriminator 2
	ble- 6,.L200
.L180:
	.loc 1 1527 0 is_stmt 1
	bl GL_MipMap
.LVL295:
	.loc 1 1530 0
	srawi. 30,30,1
.LVL296:
	.loc 1 1532 0
	cmpwi 7,31,0
	.loc 1 1535 0
	li 3,3553
	mr 4,29
	mr 5,27
	li 8,0
	li 9,6408
	li 10,5121
	.loc 1 1530 0
	bgt+ 0,.L178
.LVL297:
	.loc 1 1531 0
	li 30,1
.LVL298:
	.loc 1 1535 0
	mr 6,30
	.loc 1 1532 0
	bgt+ 7,.L179
.LVL299:
.L199:
	.loc 1 1533 0
	li 31,1
.LVL300:
	b .L179
.LVL301:
.L194:
.LBE21:
	.loc 1 1450 0
	mullw 5,24,23
	mr 3,29
	li 4,127
	slwi 5,5,2
	bl Q_memset
	b .L162
.LVL302:
.L197:
	.loc 1 1505 0
	lis 9,texels@ha
	.loc 1 1507 0
	cmpw 7,30,24
	.loc 1 1505 0
	lwz 0,texels@l(9)
	.loc 1 1488 0
	li 27,0
	ori 27,27,32855
.LVL303:
	.loc 1 1505 0
	add 0,21,0
	stw 0,texels@l(9)
	.loc 1 1507 0
	bne- 7,.L173
	b .L198
	.cfi_endproc
.LFE71:
	.size	GL_Upload32, .-GL_Upload32
	.align 2
	.globl GL_Upload8_EXT_
	.type	GL_Upload8_EXT_, @function
GL_Upload8_EXT_:
.LFB72:
	.loc 1 1564 0
	.cfi_startproc
.LVL304:
	stwu 1,-128(1)
.LCFI54:
	.cfi_def_cfa_offset 128
	mflr 0
	stw 26,96(1)
	mr 26,3
	.cfi_offset 26, -32
	.cfi_register 65, 0
	.loc 1 1573 0
	lis 3,0x2
.LVL305:
	.loc 1 1564 0
	stw 24,88(1)
	stw 25,92(1)
	mr 24,5
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	stw 28,104(1)
	mr 25,4
	stw 29,108(1)
	mr 29,6
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	stw 0,132(1)
	stfd 31,120(1)
	stw 23,84(1)
	stw 27,100(1)
	stw 30,112(1)
	stw 31,116(1)
	.loc 1 1573 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 23, -44
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl malloc
.LVL306:
	.loc 1 1574 0
	mr. 28,3
	beq- 0,.L201
	.loc 1 1578 0
	li 3,3553
.LVL307:
	li 4,10242
	li 5,10497
	.loc 1 1597 0
	li 30,1
	.loc 1 1578 0
	bl glTexParameteri
	.loc 1 1579 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
.LVL308:
	.loc 1 1597 0
	cmpwi 7,25,1
	ble- 7,.L203
.LVL309:
.L204:
	.loc 1 1597 0 is_stmt 0 discriminator 2
	slwi 30,30,1
.LVL310:
	cmpw 7,25,30
	bgt+ 7,.L204
.LVL311:
.L203:
	.loc 1 1599 0 is_stmt 1 discriminator 1
	cmpwi 7,24,1
	li 0,1
	ble- 7,.L205
.LVL312:
.L206:
	.loc 1 1599 0 is_stmt 0 discriminator 2
	slwi 0,0,1
.LVL313:
	cmpw 7,24,0
	bgt+ 7,.L206
.LVL314:
.L205:
	.loc 1 1602 0 is_stmt 1
	lis 9,.LANCHOR0@ha
	.loc 1 1605 0
	lis 11,0x4330
	.loc 1 1602 0
	la 9,.LANCHOR0@l(9)
	.loc 1 1605 0
	lis 27,.LC4@ha
	.loc 1 1602 0
	lfs 0,124(9)
	.loc 1 1605 0
	stw 11,16(1)
	.loc 1 1602 0
	addi 11,1,72
	fctiwz 0,0
	.loc 1 1605 0
	lfs 13,.LC4@l(27)
	.loc 1 1602 0
	stfiwx 0,0,11
	lwz 31,72(1)
	sraw 30,30,31
.LVL315:
	.loc 1 1603 0
	sraw 31,0,31
.LVL316:
	.loc 1 1605 0
	xoris 11,30,0x8000
	stw 11,20(1)
	lfd 12,16(1)
	lfs 0,144(9)
	fsub 13,12,13
	frsp 13,13
	fcmpu 7,13,0
	bng- 7,.L207
	.loc 1 1606 0
	fctiwz 13,0
	addi 9,1,68
	stfiwx 13,0,9
	lwz 30,68(1)
.LVL317:
.L207:
	.loc 1 1611 0
	xoris 0,31,0x8000
	lfs 13,.LC4@l(27)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lis 9,.LC32@ha
	lfd 12,24(1)
	fsub 13,12,13
	lfs 12,.LC32@l(9)
	fmuls 0,0,12
	frsp 13,13
	fcmpu 7,13,0
	bgt- 7,.L231
	.loc 1 1615 0
	mullw 23,30,31
	lis 0,0x2
	cmpw 7,23,0
	bgt- 7,.L232
.L211:
.LVL318:
	.loc 1 1620 0
	lis 9,texels@ha
	.loc 1 1622 0
	cmpw 7,30,25
	.loc 1 1620 0
	lwz 0,texels@l(9)
	add 0,23,0
	stw 0,texels@l(9)
	.loc 1 1622 0
	beq- 7,.L233
.L212:
	.loc 1 1632 0
	mr 3,26
	mr 4,25
	mr 5,24
	mr 6,28
	mr 7,30
	mr 8,31
	bl GL_Resample8BitTexture
	.loc 1 1634 0
	li 5,0
	li 3,3553
	li 4,0
	ori 5,5,32997
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6400
	li 10,5121
	stw 28,8(1)
	bl glTexImage2D
	.loc 1 1635 0
	cmpwi 7,29,0
	bne- 7,.L215
.L214:
	.loc 1 1663 0
	lis 30,gl_filter_max@ha
.LVL319:
	lis 31,0x4330
.LVL320:
	lwz 0,gl_filter_max@l(30)
	li 3,3553
	stw 31,32(1)
	li 4,10241
	xoris 0,0,0x8000
	lfs 31,.LC4@l(27)
	stw 0,36(1)
	lfd 1,32(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	.loc 1 1664 0
	lwz 0,gl_filter_max@l(30)
	stw 31,40(1)
	li 3,3553
	xoris 0,0,0x8000
	li 4,10240
	stw 0,44(1)
	lfd 1,40(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	b .L221
.LVL321:
.L235:
	.loc 1 1658 0
	lis 9,gl_filter_min@ha
	lis 31,0x4330
	lwz 0,gl_filter_min@l(9)
	li 3,3553
	stw 31,48(1)
	li 4,10241
.LVL322:
	xoris 0,0,0x8000
	lfs 31,.LC4@l(27)
	stw 0,52(1)
	lfd 1,48(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.LVL323:
	.loc 1 1659 0
	lis 9,gl_filter_max@ha
	lwz 0,gl_filter_max@l(9)
	li 3,3553
	stw 31,56(1)
	li 4,10240
	xoris 0,0,0x8000
	stw 0,60(1)
	lfd 1,56(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.LVL324:
.L221:
	.loc 1 1672 0
	mr 3,28
	bl free
.LVL325:
.L201:
	.loc 1 1674 0
	lwz 0,132(1)
	lwz 23,84(1)
	mtlr 0
	lwz 24,88(1)
.LVL326:
	lwz 25,92(1)
.LVL327:
	lwz 26,96(1)
.LVL328:
	lwz 27,100(1)
	lwz 28,104(1)
.LVL329:
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI55:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
.LVL330:
.L231:
.LCFI56:
	.cfi_restore_state
	.loc 1 1612 0
	fctiwz 0,0
	addi 11,1,64
	.loc 1 1615 0
	lis 0,0x2
	.loc 1 1612 0
	stfiwx 0,0,11
	lwz 31,64(1)
.LVL331:
	.loc 1 1615 0
	mullw 23,30,31
	cmpw 7,23,0
	ble+ 7,.L211
.LVL332:
.L232:
	.loc 1 1616 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL333:
	.loc 1 1620 0
	lis 9,texels@ha
	.loc 1 1622 0
	cmpw 7,30,25
	.loc 1 1620 0
	lwz 0,texels@l(9)
	add 0,23,0
	stw 0,texels@l(9)
	.loc 1 1622 0
	bne- 7,.L212
.L233:
	.loc 1 1622 0 is_stmt 0 discriminator 1
	cmpw 7,31,24
	bne+ 7,.L212
	.loc 1 1624 0 is_stmt 1
	cmpwi 7,29,0
	bne- 7,.L213
	.loc 1 1626 0
	li 5,0
	li 3,3553
	li 4,0
	ori 5,5,32997
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6400
	li 10,5121
	stw 26,8(1)
	bl glTexImage2D
	.loc 1 1627 0
	b .L214
.L213:
	.loc 1 1629 0
	mr 4,26
	mr 5,23
	mr 3,28
	bl memcpy
	.loc 1 1634 0
	li 5,0
	li 3,3553
	li 4,0
	ori 5,5,32997
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6400
	li 10,5121
	stw 28,8(1)
	bl glTexImage2D
.L215:
.LBB22:
	.loc 1 1648 0 discriminator 1
	li 29,0
	b .L216
.LVL334:
.L217:
	.loc 1 1650 0
	mr 6,30
	.loc 1 1647 0
	ble- 7,.L234
.LVL335:
.L218:
	.loc 1 1650 0
	mr 7,31
	stw 28,8(1)
	bl glTexImage2D
.LVL336:
.L216:
	.loc 1 1640 0 discriminator 1
	cmpwi 7,30,1
	.loc 1 1642 0 discriminator 1
	mr 5,31
	.loc 1 1640 0 discriminator 1
	cmpwi 6,31,1
	.loc 1 1642 0 discriminator 1
	mr 4,30
	mr 3,28
	.loc 1 1649 0 discriminator 1
	addi 29,29,1
.LVL337:
	.loc 1 1644 0 discriminator 1
	srawi 31,31,1
.LVL338:
	.loc 1 1640 0 discriminator 1
	bgt- 7,.L219
.LVL339:
	.loc 1 1640 0 is_stmt 0 discriminator 2
	ble- 6,.L235
.L219:
	.loc 1 1642 0 is_stmt 1
	bl GL_MipMap8Bit
.LVL340:
	.loc 1 1645 0
	srawi. 30,30,1
.LVL341:
	.loc 1 1650 0
	li 5,0
	.loc 1 1647 0
	cmpwi 7,31,0
	.loc 1 1650 0
	li 3,3553
	mr 4,29
	ori 5,5,32997
	li 8,0
	li 9,6400
	li 10,5121
	.loc 1 1645 0
	bgt+ 0,.L217
	.loc 1 1646 0
	li 30,1
.LVL342:
	.loc 1 1650 0
	mr 6,30
	.loc 1 1647 0
	bgt+ 7,.L218
.LVL343:
.L234:
	.loc 1 1648 0
	li 31,1
.LVL344:
	b .L218
.LBE22:
	.cfi_endproc
.LFE72:
	.size	GL_Upload8_EXT_, .-GL_Upload8_EXT_
	.align 2
	.globl genNormalMap
	.type	genNormalMap, @function
genNormalMap:
.LFB73:
	.loc 1 1679 0
	.cfi_startproc
.LVL345:
	stwu 1,-176(1)
.LCFI57:
	.cfi_def_cfa_offset 176
	mfcr 12
	mflr 0
	stw 31,124(1)
	.loc 1 1692 0
	mr. 31,5
	.cfi_offset 31, -52
	.cfi_register 65, 0
	.cfi_register 70, 12
	.loc 1 1679 0
	stfd 26,128(1)
	fmr 26,1
	.cfi_offset 58, -48
	stw 28,112(1)
	mr 28,4
	.cfi_offset 28, -64
.LVL346:
	stw 30,120(1)
	mr 30,3
	.cfi_offset 30, -56
	stw 0,180(1)
	stfd 27,136(1)
	stfd 28,144(1)
	stfd 29,152(1)
	stfd 30,160(1)
	stfd 31,168(1)
	stw 14,56(1)
	stw 15,60(1)
	stw 16,64(1)
	stw 17,68(1)
	stw 18,72(1)
	stw 19,76(1)
	stw 20,80(1)
	stw 21,84(1)
	stw 22,88(1)
	stw 23,92(1)
	stw 24,96(1)
	stw 25,100(1)
	stw 26,104(1)
	stw 27,108(1)
	stw 29,116(1)
	stw 12,52(1)
	.loc 1 1692 0
	ble- 0,.L245
	.cfi_offset 70, -124
	.cfi_offset 29, -60
	.cfi_offset 27, -68
	.cfi_offset 26, -72
	.cfi_offset 25, -76
	.cfi_offset 24, -80
	.cfi_offset 23, -84
	.cfi_offset 22, -88
	.cfi_offset 21, -92
	.cfi_offset 20, -96
	.cfi_offset 19, -100
	.cfi_offset 18, -104
	.cfi_offset 17, -108
	.cfi_offset 16, -112
	.cfi_offset 15, -116
	.cfi_offset 14, -120
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 65, 4
.LVL347:
	.loc 1 1678 0
	addi 0,3,-1
	lis 16,.LANCHOR1@ha
	cmpwi 4,4,0
	stw 0,44(1)
	li 24,0
	li 18,1
	la 16,.LANCHOR1@l(16)
	lis 14,.LC28@ha
	lis 15,.LC29@ha
	.loc 1 1695 0
	lis 26,0x4330
.LVL348:
.L238:
	.loc 1 1693 0 discriminator 1
	ble- 4,.L246
	.loc 1 1699 0
	divw 23,18,31
	lis 9,LittleLong@ha
	la 20,LittleLong@l(9)
	.loc 1 1678 0
	lwz 0,44(1)
	.loc 1 1695 0
	lis 9,.LC4@ha
	lfs 28,.LC4@l(9)
	.loc 1 1697 0
	lis 9,.LC27@ha
	.loc 1 1678 0
	addi 25,24,-1
	.loc 1 1697 0
	lfs 31,.LC27@l(9)
	.loc 1 1704 0
	lis 9,.LC10@ha
	.loc 1 1678 0
	slwi 25,25,2
	.loc 1 1704 0
	lfs 27,.LC10@l(9)
	.loc 1 1693 0
	mr 17,18
	.loc 1 1678 0
	add 27,0,24
	add 25,16,25
	li 29,0
	add 19,30,24
	la 21,.LC28@l(14)
	la 22,.LC29@l(15)
	.loc 1 1699 0
	mullw 23,23,31
	subf 23,23,18
	mullw 23,28,23
.LVL349:
.L239:
	.loc 1 1697 0 discriminator 2
	addi 29,29,1
	.loc 1 1695 0 discriminator 2
	lbzu 0,1(27)
	.loc 1 1697 0 discriminator 2
	divw 11,29,28
	.loc 1 1695 0 discriminator 2
	stw 26,8(1)
	xoris 0,0,0x8000
	stw 0,12(1)
	.loc 1 1678 0 discriminator 2
	subf 9,24,27
	.loc 1 1695 0 discriminator 2
	lfd 0,8(1)
	fsub 0,0,28
	frsp 0,0
.LVL350:
	.loc 1 1697 0 discriminator 2
	mullw 11,11,28
	subf 11,11,29
	lbzx 0,19,11
	stw 26,16(1)
	xoris 0,0,0x8000
	stw 0,20(1)
	.loc 1 1699 0 discriminator 2
	lbzx 0,9,23
	stw 26,24(1)
	xoris 0,0,0x8000
	.loc 1 1697 0 discriminator 2
	lfd 30,16(1)
	.loc 1 1699 0 discriminator 2
	stw 0,28(1)
	.loc 1 1697 0 discriminator 2
	fsub 30,30,28
	.loc 1 1699 0 discriminator 2
	lfd 29,24(1)
	fsub 29,29,28
	.loc 1 1697 0 discriminator 2
	frsp 30,30
	.loc 1 1699 0 discriminator 2
	frsp 29,29
	.loc 1 1697 0 discriminator 2
	fmuls 30,30,31
	.loc 1 1699 0 discriminator 2
	fmuls 29,29,31
	.loc 1 1700 0 discriminator 2
	fmsubs 30,0,31,30
	.loc 1 1701 0 discriminator 2
	fmsubs 29,0,31,29
	.loc 1 1700 0 discriminator 2
	fmuls 30,30,26
.LVL351:
	.loc 1 1701 0 discriminator 2
	fmuls 29,29,26
.LVL352:
	.loc 1 1704 0 discriminator 2
	fmuls 1,29,29
	.loc 1 1707 0 discriminator 2
	fneg 29,29
.LVL353:
	.loc 1 1704 0 discriminator 2
	fmadds 1,30,30,1
	fadds 1,1,27
	.loc 1 1705 0 discriminator 2
	bl sqrt
.LVL354:
	.loc 1 1714 0 discriminator 2
	lfs 13,0(21)
	.loc 1 1705 0 discriminator 2
	frsp 1,1
	.loc 1 1714 0 discriminator 2
	lfs 0,0(22)
	addi 9,1,32
	.loc 1 1718 0 discriminator 2
	lwz 0,0(20)
	.loc 1 1705 0 discriminator 2
	fdivs 1,27,1
.LVL355:
	.loc 1 1718 0 discriminator 2
	mtctr 0
	.loc 1 1707 0 discriminator 2
	fmuls 29,29,1
	.loc 1 1706 0 discriminator 2
	fmuls 30,30,1
.LVL356:
	.loc 1 1714 0 discriminator 2
	fmadds 1,1,13,0
.LVL357:
	.loc 1 1713 0 discriminator 2
	fmadds 29,29,13,0
	.loc 1 1712 0 discriminator 2
	fmadds 0,30,13,0
	.loc 1 1714 0 discriminator 2
	fctiwz 1,1
	.loc 1 1713 0 discriminator 2
	fctiwz 29,29
	.loc 1 1712 0 discriminator 2
	fctiwz 0,0
	.loc 1 1714 0 discriminator 2
	stfiwx 1,0,9
	.loc 1 1713 0 discriminator 2
	addi 9,1,36
	stfiwx 29,0,9
	.loc 1 1712 0 discriminator 2
	addi 9,1,40
	.loc 1 1714 0 discriminator 2
	lwz 3,32(1)
	.loc 1 1712 0 discriminator 2
	stfiwx 0,0,9
	.loc 1 1718 0 discriminator 2
	rlwinm 3,3,16,8,15
	.loc 1 1713 0 discriminator 2
	lwz 11,36(1)
	.loc 1 1718 0 discriminator 2
	oris 3,3,0xff00
	.loc 1 1712 0 discriminator 2
	lwz 9,40(1)
	.loc 1 1718 0 discriminator 2
	rlwinm 11,11,8,16,23
	or 3,3,11
	rlwinm 9,9,0,0xff
	or 3,3,9
	bctrl
	.loc 1 1693 0 discriminator 2
	cmpw 7,29,28
	.loc 1 1718 0 discriminator 2
	stwu 3,4(25)
.LVL358:
	.loc 1 1693 0 discriminator 2
	bne+ 7,.L239
.LVL359:
	.loc 1 1692 0
	cmpw 7,31,17
	.loc 1 1693 0
	addi 18,18,1
.LVL360:
	add 24,24,28
	.loc 1 1692 0
	bgt+ 7,.L238
.LVL361:
.L237:
	.loc 1 1723 0
	lwz 0,180(1)
	mr 3,16
	lwz 12,52(1)
	mtlr 0
	lwz 14,56(1)
	lwz 15,60(1)
	mtcrf 8,12
	lwz 16,64(1)
	lwz 17,68(1)
	lwz 18,72(1)
	lwz 19,76(1)
	lwz 20,80(1)
	lwz 21,84(1)
	lwz 22,88(1)
	lwz 23,92(1)
	lwz 24,96(1)
	lwz 25,100(1)
	lwz 26,104(1)
	lwz 27,108(1)
	lwz 28,112(1)
.LVL362:
	lwz 29,116(1)
	lwz 30,120(1)
.LVL363:
	lwz 31,124(1)
.LVL364:
	lfd 26,128(1)
.LVL365:
	lfd 27,136(1)
	lfd 28,144(1)
	lfd 29,152(1)
	lfd 30,160(1)
	lfd 31,168(1)
	addi 1,1,176
	.cfi_remember_state
.LCFI58:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL366:
.L245:
.LCFI59:
	.cfi_restore_state
	lis 16,.LANCHOR1@ha
	la 16,.LANCHOR1@l(16)
	b .L237
.LVL367:
.L246:
	.loc 1 1693 0
	mr 17,18
.LVL368:
	add 24,24,28
	.loc 1 1692 0
	cmpw 7,31,17
	.loc 1 1693 0
	addi 18,18,1
.LVL369:
	.loc 1 1692 0
	bgt+ 7,.L238
	b .L237
	.cfi_endproc
.LFE73:
	.size	genNormalMap, .-genNormalMap
	.align 2
	.globl GL_UploadBump
	.type	GL_UploadBump, @function
GL_UploadBump:
.LFB74:
	.loc 1 1727 0
	.cfi_startproc
.LVL370:
	stwu 1,-136(1)
.LCFI60:
	.cfi_def_cfa_offset 136
	mflr 0
	stw 20,80(1)
	mr 20,3
	.cfi_offset 20, -56
	.cfi_register 65, 0
	.loc 1 1735 0
	lis 3,0x2
.LVL371:
	.loc 1 1727 0
	stw 0,140(1)
	stw 21,84(1)
	mr 21,7
	.cfi_offset 21, -52
	.cfi_offset 65, 4
	stw 23,92(1)
	mr 23,5
	.cfi_offset 23, -44
	stw 25,100(1)
	stw 26,104(1)
	stw 28,112(1)
	mr 28,4
	.cfi_offset 28, -24
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	stw 29,116(1)
	mr 29,6
	.cfi_offset 29, -20
	stfd 31,128(1)
	stw 22,88(1)
	stw 24,96(1)
	stw 27,108(1)
	stw 30,120(1)
	stw 31,124(1)
	.loc 1 1735 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 24, -40
	.cfi_offset 22, -48
	.cfi_offset 63, -8
	bl malloc
.LVL372:
	mr 26,3
.LVL373:
	.loc 1 1736 0
	lis 3,0x2
.LVL374:
	bl malloc
.LVL375:
	.loc 1 1737 0
	mr. 25,3
	beq- 0,.L287
	.loc 1 1740 0
	cmpwi 7,26,0
	beq- 7,.L247
	.loc 1 1746 0
	lis 9,gl_texcomp@ha
	lbz 0,gl_texcomp@l(9)
	lis 9,.LANCHOR0@ha
	cmpwi 7,0,0
	bne- 7,.L288
	.loc 1 1755 0
	li 27,0
	la 9,.LANCHOR0@l(9)
	ori 27,27,32855
.L250:
.LVL376:
	.loc 1 1760 0
	cmpwi 7,28,1
	li 30,1
	ble- 7,.L251
.LVL377:
.L252:
	.loc 1 1760 0 is_stmt 0 discriminator 2
	slwi 30,30,1
.LVL378:
	cmpw 7,28,30
	bgt+ 7,.L252
.LVL379:
.L251:
	.loc 1 1762 0 is_stmt 1 discriminator 1
	cmpwi 7,23,1
	li 0,1
	ble- 7,.L253
.LVL380:
.L254:
	.loc 1 1762 0 is_stmt 0 discriminator 2
	slwi 0,0,1
.LVL381:
	cmpw 7,23,0
	bgt+ 7,.L254
.LVL382:
.L253:
	.loc 1 1765 0 is_stmt 1
	lfs 0,124(9)
	.loc 1 1774 0
	lis 11,0x4330
	stw 11,16(1)
	.loc 1 1765 0
	addi 11,1,72
	fctiwz 0,0
	.loc 1 1774 0
	lis 24,.LC4@ha
	.loc 1 1765 0
	stfiwx 0,0,11
	.loc 1 1774 0
	lfs 0,.LC4@l(24)
	.loc 1 1765 0
	lwz 31,72(1)
	sraw 30,30,31
.LVL383:
	.loc 1 1766 0
	sraw 31,0,31
.LVL384:
	.loc 1 1774 0
	xoris 11,30,0x8000
	stw 11,20(1)
	lfd 13,16(1)
	lfs 12,144(9)
	lis 9,.LC32@ha
	fsub 13,13,0
	lfs 0,.LC32@l(9)
	fmuls 0,12,0
	frsp 13,13
	fcmpu 7,13,0
	bng- 7,.L255
	.loc 1 1775 0
	fctiwz 13,0
	addi 9,1,68
	stfiwx 13,0,9
	lwz 30,68(1)
.LVL385:
.L255:
	.loc 1 1776 0
	xoris 0,31,0x8000
	lfs 13,.LC4@l(24)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 12,24(1)
	fsub 13,12,13
	frsp 13,13
	fcmpu 7,0,13
	bnl- 7,.L257
	.loc 1 1777 0
	fctiwz 0,0
	addi 11,1,64
	stfiwx 0,0,11
	lwz 31,64(1)
.LVL386:
.L257:
	.loc 1 1780 0
	mullw 22,30,31
	lis 0,0x2
	cmpw 7,22,0
	bgt- 7,.L289
.LVL387:
.L259:
	.loc 1 1784 0
	cmpw 7,30,28
	bne- 7,.L260
	.loc 1 1784 0 is_stmt 0 discriminator 1
	cmpw 7,31,23
	beq- 7,.L290
.L260:
	.loc 1 1794 0 is_stmt 1
	mr 3,20
	mr 4,28
	mr 5,23
	mr 6,26
	mr 7,30
	mr 8,31
	bl GL_Resample8BitTexture
	.loc 1 1795 0
	mr 3,21
	mr 4,28
	mr 5,23
	mr 6,25
	mr 7,30
	mr 8,31
	bl GL_Resample8BitTexture
.L261:
	.loc 1 1798 0
	lis 9,is_overriden@ha
	lbz 0,is_overriden@l(9)
	cmpwi 7,0,0
	beq- 7,.L262
	.loc 1 1799 0
	lis 9,.LC34@ha
	lfs 1,.LC34@l(9)
.L285:
	.loc 1 1801 0
	mr 4,30
	mr 5,31
	mr 3,26
	bl genNormalMap
	.loc 1 1803 0
	mr 5,22
	.loc 1 1801 0
	mr 28,3
.LVL388:
	.loc 1 1803 0
	mr 3,25
.LVL389:
	mr 4,28
	bl GL_PackGloss
	.loc 1 1805 0
	li 3,3553
	li 4,10242
	li 5,10497
	bl glTexParameteri
	.loc 1 1806 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 1807 0
	li 3,3553
	li 4,0
	mr 5,27
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6408
	li 10,5121
	stw 28,8(1)
	bl glTexImage2D
	.loc 1 1812 0
	cmpwi 7,29,0
	li 29,0
	bne- 7,.L282
	.loc 1 1841 0
	lis 30,gl_filter_max@ha
.LVL390:
	lis 31,0x4330
.LVL391:
	lwz 0,gl_filter_max@l(30)
	li 3,3553
	stw 31,32(1)
	li 4,10241
	xoris 0,0,0x8000
	lfs 31,.LC4@l(24)
	stw 0,36(1)
	lfd 1,32(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	.loc 1 1842 0
	lwz 0,gl_filter_max@l(30)
	stw 31,40(1)
	li 3,3553
	xoris 0,0,0x8000
	li 4,10240
	stw 0,44(1)
	lfd 1,40(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.L270:
	.loc 1 1851 0
	mr 3,26
	bl free
	.loc 1 1852 0
	mr 3,25
	bl free
.LVL392:
.L247:
	.loc 1 1854 0
	lwz 0,140(1)
	lwz 20,80(1)
.LVL393:
	mtlr 0
	lwz 21,84(1)
.LVL394:
	lwz 22,88(1)
	lwz 23,92(1)
.LVL395:
	lwz 24,96(1)
	lwz 25,100(1)
.LVL396:
	lwz 26,104(1)
.LVL397:
	lwz 27,108(1)
	lwz 28,112(1)
	lwz 29,116(1)
	lwz 30,120(1)
	lwz 31,124(1)
	lfd 31,128(1)
	addi 1,1,136
	.cfi_remember_state
.LCFI61:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	blr
.LVL398:
.L293:
.LCFI62:
	.cfi_restore_state
.LBB23:
	.loc 1 1824 0
	li 30,1
.LVL399:
	.loc 1 1829 0
	mr 6,30
	.loc 1 1825 0
	ble- 7,.L291
.LVL400:
.L267:
	.loc 1 1829 0
	mr 7,31
	stw 28,8(1)
	bl glTexImage2D
.LVL401:
.L282:
	.loc 1 1817 0 discriminator 1
	cmpwi 7,30,1
	.loc 1 1819 0 discriminator 1
	mr 5,31
	.loc 1 1817 0 discriminator 1
	cmpwi 6,31,1
	.loc 1 1819 0 discriminator 1
	mr 4,30
	mr 3,28
	.loc 1 1827 0 discriminator 1
	addi 29,29,1
.LVL402:
	.loc 1 1822 0 discriminator 1
	srawi 31,31,1
.LVL403:
	.loc 1 1817 0 discriminator 1
	bgt- 7,.L268
.LVL404:
	.loc 1 1817 0 is_stmt 0 discriminator 2
	ble- 6,.L292
.L268:
	.loc 1 1819 0 is_stmt 1
	bl GL_MipMapNormal
.LVL405:
	.loc 1 1823 0
	srawi. 30,30,1
.LVL406:
	.loc 1 1825 0
	cmpwi 7,31,0
	.loc 1 1829 0
	li 3,3553
	mr 4,29
	mr 5,27
	li 8,0
	li 9,6408
	li 10,5121
	.loc 1 1823 0
	ble- 0,.L293
	.loc 1 1829 0
	mr 6,30
	.loc 1 1825 0
	bgt+ 7,.L267
.LVL407:
.L291:
	.loc 1 1826 0
	li 31,1
.LVL408:
	b .L267
.LVL409:
.L288:
.LBE23:
	.loc 1 1746 0 discriminator 1
	la 9,.LANCHOR0@l(9)
	addi 11,1,76
	lfs 0,164(9)
	.loc 1 1748 0 discriminator 1
	li 27,0
	ori 27,27,34030
	.loc 1 1746 0 discriminator 1
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 0,76(1)
	andi. 11,0,2
	bne- 0,.L250
	.loc 1 1755 0
	li 27,0
	ori 27,27,32855
	b .L250
.LVL410:
.L292:
	.loc 1 1836 0
	lis 9,gl_filter_min@ha
	lis 31,0x4330
	lwz 0,gl_filter_min@l(9)
	li 3,3553
.LVL411:
	stw 31,48(1)
	li 4,10241
.LVL412:
	xoris 0,0,0x8000
	lfs 31,.LC4@l(24)
	stw 0,52(1)
	lfd 1,48(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.LVL413:
	.loc 1 1837 0
	lis 9,gl_filter_max@ha
	lwz 0,gl_filter_max@l(9)
	li 3,3553
	stw 31,56(1)
	li 4,10240
	xoris 0,0,0x8000
	stw 0,60(1)
	lfd 1,56(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	b .L270
.LVL414:
.L262:
	.loc 1 1801 0
	lis 9,.LC35@ha
	lfs 1,.LC35@l(9)
	b .L285
.L289:
	.loc 1 1781 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L259
.L290:
	.loc 1 1786 0
	mr 4,20
	mr 5,22
	mr 3,26
	bl memcpy
	.loc 1 1787 0
	mr 3,25
	mr 4,21
	mr 5,22
	bl memcpy
	.loc 1 1789 0
	b .L261
.LVL415:
.L287:
	.loc 1 1738 0
	mr 3,26
	bl free
	.loc 1 1739 0
	b .L247
	.cfi_endproc
.LFE74:
	.size	GL_UploadBump, .-GL_UploadBump
	.align 2
	.globl GL_UploadNormal
	.type	GL_UploadNormal, @function
GL_UploadNormal:
.LFB75:
	.loc 1 1859 0
	.cfi_startproc
.LVL416:
	stwu 1,-128(1)
.LCFI63:
	.cfi_def_cfa_offset 128
	mflr 0
	stw 25,92(1)
	mr 25,3
	.cfi_offset 25, -36
	.cfi_register 65, 0
	.loc 1 1865 0
	lis 3,0x8
.LVL417:
	.loc 1 1859 0
	stw 23,84(1)
	stw 24,88(1)
	mr 23,5
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	stw 28,104(1)
	mr 24,4
	stw 29,108(1)
	mr 29,6
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	stw 0,132(1)
	stfd 31,120(1)
	stw 22,80(1)
	stw 26,96(1)
	stw 27,100(1)
	stw 30,112(1)
	stw 31,116(1)
	.loc 1 1865 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 22, -48
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl malloc
.LVL418:
	.loc 1 1866 0
	mr. 28,3
	beq- 0,.L294
	.loc 1 1871 0
	lis 9,gl_texcomp@ha
	lbz 0,gl_texcomp@l(9)
	lis 9,.LANCHOR0@ha
	cmpwi 7,0,0
	bne- 7,.L330
	.loc 1 1877 0
	li 27,0
	la 9,.LANCHOR0@l(9)
	ori 27,27,32855
.L296:
.LVL419:
	.loc 1 1881 0
	cmpwi 7,24,1
	li 30,1
	ble- 7,.L297
.LVL420:
.L298:
	.loc 1 1881 0 is_stmt 0 discriminator 2
	slwi 30,30,1
.LVL421:
	cmpw 7,24,30
	bgt+ 7,.L298
.LVL422:
.L297:
	.loc 1 1883 0 is_stmt 1 discriminator 1
	cmpwi 7,23,1
	li 0,1
	ble- 7,.L299
.LVL423:
.L300:
	.loc 1 1883 0 is_stmt 0 discriminator 2
	slwi 0,0,1
.LVL424:
	cmpw 7,23,0
	bgt+ 7,.L300
.LVL425:
.L299:
	.loc 1 1886 0 is_stmt 1
	lfs 0,124(9)
	.loc 1 1895 0
	lis 11,0x4330
	stw 11,16(1)
	.loc 1 1886 0
	addi 11,1,72
	fctiwz 0,0
	.loc 1 1895 0
	lis 26,.LC4@ha
	.loc 1 1886 0
	stfiwx 0,0,11
	.loc 1 1895 0
	lfs 0,.LC4@l(26)
	.loc 1 1886 0
	lwz 31,72(1)
	sraw 30,30,31
.LVL426:
	.loc 1 1887 0
	sraw 31,0,31
.LVL427:
	.loc 1 1895 0
	xoris 11,30,0x8000
	stw 11,20(1)
	lfd 13,16(1)
	lfs 12,144(9)
	lis 9,.LC32@ha
	fsub 13,13,0
	lfs 0,.LC32@l(9)
	fmuls 0,12,0
	frsp 13,13
	fcmpu 7,13,0
	bng- 7,.L301
	.loc 1 1896 0
	fctiwz 13,0
	addi 9,1,68
	stfiwx 13,0,9
	lwz 30,68(1)
.LVL428:
.L301:
	.loc 1 1897 0
	xoris 0,31,0x8000
	lfs 13,.LC4@l(26)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 12,24(1)
	fsub 13,12,13
	frsp 13,13
	fcmpu 7,0,13
	bnl- 7,.L303
	.loc 1 1898 0
	fctiwz 0,0
	addi 11,1,64
	stfiwx 0,0,11
	lwz 31,64(1)
.LVL429:
.L303:
	.loc 1 1901 0
	mullw 22,30,31
	lis 0,0x2
	cmpw 7,22,0
	bgt- 7,.L331
.LVL430:
.L305:
	.loc 1 1905 0
	cmpw 7,30,24
	bne- 7,.L306
	.loc 1 1905 0 is_stmt 0 discriminator 1
	cmpw 7,31,23
	beq- 7,.L332
.L306:
	.loc 1 1912 0 is_stmt 1
	mr 3,25
	mr 4,24
	mr 5,23
	mr 6,28
	mr 7,30
	mr 8,31
	bl GL_ResampleTexture
.L307:
	.loc 1 1915 0
	mr 3,28
	mr 4,30
	mr 5,31
	bl GL_Normalize
	.loc 1 1916 0
	li 3,3553
	li 4,10242
	li 5,10497
	bl glTexParameteri
	.loc 1 1917 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 1918 0
	li 3,3553
	li 4,0
	mr 5,27
	mr 6,30
	mr 7,31
	li 8,0
	li 9,6408
	li 10,5121
	stw 28,8(1)
	bl glTexImage2D
	.loc 1 1923 0
	cmpwi 7,29,0
	li 29,0
	bne- 7,.L326
	.loc 1 1951 0
	lis 30,gl_filter_max@ha
.LVL431:
	lis 31,0x4330
.LVL432:
	lwz 0,gl_filter_max@l(30)
	li 3,3553
	stw 31,32(1)
	li 4,10241
	xoris 0,0,0x8000
	lfs 31,.LC4@l(26)
	stw 0,36(1)
	lfd 1,32(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	.loc 1 1952 0
	lwz 0,gl_filter_max@l(30)
	stw 31,40(1)
	li 3,3553
	xoris 0,0,0x8000
	li 4,10240
	stw 0,44(1)
	lfd 1,40(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.L314:
	.loc 1 1961 0
	mr 3,28
	bl free
.LVL433:
.L294:
	.loc 1 1963 0
	lwz 0,132(1)
	lwz 22,80(1)
	mtlr 0
	lwz 23,84(1)
.LVL434:
	lwz 24,88(1)
.LVL435:
	lwz 25,92(1)
.LVL436:
	lwz 26,96(1)
	lwz 27,100(1)
	lwz 28,104(1)
.LVL437:
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI64:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	blr
.LVL438:
.L335:
.LCFI65:
	.cfi_restore_state
.LBB24:
	.loc 1 1934 0
	li 30,1
.LVL439:
	.loc 1 1939 0
	mr 6,30
	.loc 1 1935 0
	ble- 7,.L333
.LVL440:
.L311:
	.loc 1 1939 0
	mr 7,31
	stw 28,8(1)
	bl glTexImage2D
.LVL441:
.L326:
	.loc 1 1928 0 discriminator 1
	cmpwi 7,30,1
	.loc 1 1930 0 discriminator 1
	mr 5,31
	.loc 1 1928 0 discriminator 1
	cmpwi 6,31,1
	.loc 1 1930 0 discriminator 1
	mr 4,30
	mr 3,28
	.loc 1 1937 0 discriminator 1
	addi 29,29,1
.LVL442:
	.loc 1 1932 0 discriminator 1
	srawi 31,31,1
.LVL443:
	.loc 1 1928 0 discriminator 1
	bgt- 7,.L312
.LVL444:
	.loc 1 1928 0 is_stmt 0 discriminator 2
	ble- 6,.L334
.L312:
	.loc 1 1930 0 is_stmt 1
	bl GL_MipMapNormal
.LVL445:
	.loc 1 1933 0
	srawi. 30,30,1
.LVL446:
	.loc 1 1935 0
	cmpwi 7,31,0
	.loc 1 1939 0
	li 3,3553
	mr 4,29
	mr 5,27
	li 8,0
	li 9,6408
	li 10,5121
	.loc 1 1933 0
	ble- 0,.L335
	.loc 1 1939 0
	mr 6,30
	.loc 1 1935 0
	bgt+ 7,.L311
.LVL447:
.L333:
	.loc 1 1936 0
	li 31,1
.LVL448:
	b .L311
.LVL449:
.L330:
.LBE24:
	.loc 1 1871 0 discriminator 1
	la 9,.LANCHOR0@l(9)
	addi 11,1,76
	lfs 0,164(9)
	.loc 1 1873 0 discriminator 1
	li 27,0
	ori 27,27,34030
	.loc 1 1871 0 discriminator 1
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 0,76(1)
	andi. 11,0,2
	bne- 0,.L296
	.loc 1 1877 0
	li 27,0
	ori 27,27,32855
	b .L296
.LVL450:
.L334:
	.loc 1 1946 0
	lis 9,gl_filter_min@ha
	lis 31,0x4330
	lwz 0,gl_filter_min@l(9)
	li 3,3553
	stw 31,48(1)
	li 4,10241
.LVL451:
	xoris 0,0,0x8000
	lfs 31,.LC4@l(26)
	stw 0,52(1)
	lfd 1,48(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
.LVL452:
	.loc 1 1947 0
	lis 9,gl_filter_max@ha
	lwz 0,gl_filter_max@l(9)
	li 3,3553
	stw 31,56(1)
	li 4,10240
	xoris 0,0,0x8000
	stw 0,60(1)
	lfd 1,56(1)
	fsub 1,1,31
	frsp 1,1
	bl glTexParameterf
	b .L314
.LVL453:
.L331:
	.loc 1 1902 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L305
.L332:
	.loc 1 1907 0
	mr 3,28
	mr 4,25
	slwi 5,22,2
	bl memcpy
	.loc 1 1909 0
	b .L307
	.cfi_endproc
.LFE75:
	.size	GL_UploadNormal, .-GL_UploadNormal
	.align 2
	.globl GL_GetOverrideName
	.type	GL_GetOverrideName, @function
GL_GetOverrideName:
.LFB76:
	.loc 1 1972 0
	.cfi_startproc
.LVL454:
	stwu 1,-24(1)
.LCFI66:
	.cfi_def_cfa_offset 24
	mflr 0
	mr 6,4
	.loc 1 1975 0
	lis 4,.LC36@ha
.LVL455:
	.loc 1 1972 0
	stw 31,20(1)
	mr 31,5
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 1975 0
	la 4,.LC36@l(4)
	mr 5,3
.LVL456:
	mr 3,31
.LVL457:
	.loc 1 1972 0
	stw 0,28(1)
	stw 29,12(1)
	.loc 1 1978 0
	li 29,37
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 1972 0
	stw 30,16(1)
	.loc 1 1975 0
	.cfi_offset 30, -8
	crxor 6,6,6
	bl sprintf
.LVL458:
	.loc 1 1972 0
	mr 3,31
	.loc 1 1976 0
	li 30,0
	.loc 1 1972 0
	bl strlen
.LVL459:
	.loc 1 1976 0
	cmplw 7,30,3
	bge- 7,.L340
.L339:
	.loc 1 1977 0
	lbzx 0,31,30
	cmpwi 7,0,42
	beq- 7,.L341
	.loc 1 1976 0
	addi 30,30,1
.LVL460:
.L342:
	cmplw 7,30,3
	blt+ 7,.L339
.L340:
	.loc 1 1981 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL461:
	lwz 31,20(1)
.LVL462:
	addi 1,1,24
	.cfi_remember_state
.LCFI67:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL463:
.L341:
.LCFI68:
	.cfi_restore_state
	.loc 1 1978 0
	stbx 29,31,30
	.loc 1 1972 0
	mr 3,31
	.loc 1 1976 0
	addi 30,30,1
.LVL464:
	.loc 1 1972 0
	bl strlen
.LVL465:
	b .L342
	.cfi_endproc
.LFE76:
	.size	GL_GetOverrideName, .-GL_GetOverrideName
	.align 2
	.globl GL_Upload8
	.type	GL_Upload8, @function
GL_Upload8:
.LFB77:
	.loc 1 2002 0
	.cfi_startproc
.LVL466:
	stwu 1,-472(1)
.LCFI69:
	.cfi_def_cfa_offset 472
	mflr 0
	stw 31,468(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 2008 0
	lis 3,0x4
.LVL467:
	.loc 1 2002 0
	stw 0,476(1)
	stw 22,432(1)
	mr 22,9
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	stw 25,444(1)
	stw 27,452(1)
	stw 28,456(1)
	mr 28,8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	stw 29,460(1)
	mr 29,7
	.cfi_offset 29, -12
	stw 30,464(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 5,408(1)
	stw 6,412(1)
	stw 23,436(1)
	stw 24,440(1)
	stw 26,448(1)
	.loc 1 2008 0
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	bl malloc
.LVL468:
	mr 27,3
.LVL469:
	.loc 1 2009 0
	lis 3,0x4
.LVL470:
	bl malloc
.LVL471:
	.loc 1 2010 0
	mr. 25,3
	beq- 0,.L374
	.loc 1 2013 0
	cmpwi 7,27,0
	beq- 7,.L343
	.loc 1 2025 0
	lis 26,.LANCHOR1@ha
	.loc 1 2024 0
	lis 4,.LC37@ha
	.loc 1 2025 0
	la 26,.LANCHOR1@l(26)
	.loc 1 2024 0
	mr 3,30
.LVL472:
	la 4,.LC37@l(4)
	addi 5,1,272
	.loc 1 2025 0
	addis 26,26,0x10
	.loc 1 2020 0
	lwz 23,408(1)
	lwz 24,412(1)
.LVL473:
	.loc 1 2024 0
	bl GL_GetOverrideName
.LVL474:
	.loc 1 2025 0
	addi 3,1,272
	li 4,4
	mr 5,26
	addi 6,1,408
	addi 7,1,412
	bl LoadTextureInPlace
	cmpwi 0,3,0
	bne- 0,.L375
	.loc 1 2042 0
	cmpwi 7,28,0
	.loc 1 2020 0
	mullw 24,23,24
.LVL475:
	.loc 1 2042 0
	beq- 7,.L349
	.loc 1 2047 0
	cmpwi 7,24,0
	.loc 1 2044 0
	lis 9,is_overriden@ha
	stb 3,is_overriden@l(9)
.LVL476:
	.loc 1 2047 0
	ble- 7,.L350
	lis 10,d_8to24table@ha
	lis 11,d_8to8graytable@ha
	addi 8,26,-4
	.loc 1 2046 0
	li 6,1
	.loc 1 2047 0
	li 9,0
	la 10,d_8to24table@l(10)
	la 11,d_8to8graytable@l(11)
	.loc 1 2051 0
	mtctr 24
	b .L352
.LVL477:
.L351:
	.loc 1 2052 0
	lwzx 7,10,7
	.loc 1 2054 0
	lbzx 0,11,0
.LVL478:
	.loc 1 2052 0
	stwu 7,4(8)
	.loc 1 2054 0
	stbx 0,27,9
	.loc 1 2047 0
	addi 9,9,1
.LVL479:
	bdz .L376
.LVL480:
.L352:
	.loc 1 2049 0
	lbzx 0,31,9
.LVL481:
	.loc 1 2050 0
	cmpwi 7,0,255
	.loc 1 2052 0
	slwi 7,0,2
	.loc 1 2050 0
	bne+ 7,.L351
	.loc 1 2052 0
	lwzx 7,10,7
	.loc 1 2051 0
	li 6,0
	.loc 1 2054 0
	lbzx 0,11,0
.LVL482:
	.loc 1 2052 0
	stwu 7,4(8)
	.loc 1 2054 0
	stbx 0,27,9
	.loc 1 2047 0
	addi 9,9,1
.LVL483:
	bdnz .L352
.L376:
	.loc 1 2057 0
	cmpwi 7,6,0
	bne- 7,.L350
.LVL484:
.L347:
	.loc 1 2080 0
	lis 3,.LC40@ha
	mr 4,30
	la 3,.LC40@l(3)
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L355
.LVL485:
.L379:
	.loc 1 2081 0
	lwz 4,408(1)
	mr 3,26
	lwz 5,412(1)
	mr 6,29
	mr 7,28
	bl GL_Upload32
	.loc 1 2174 0
	bl glGetError
	cmpwi 7,3,1285
	beq- 7,.L377
.LVL486:
.L368:
	.loc 1 2178 0
	mr 3,27
	bl free
	.loc 1 2179 0
	mr 3,25
	bl free
.L343:
	.loc 1 2182 0
	lwz 0,476(1)
	lwz 22,432(1)
	mtlr 0
	lwz 23,436(1)
	lwz 24,440(1)
	lwz 25,444(1)
.LVL487:
	lwz 26,448(1)
	lwz 27,452(1)
.LVL488:
	lwz 28,456(1)
	lwz 29,460(1)
	lwz 30,464(1)
.LVL489:
	lwz 31,468(1)
	addi 1,1,472
	.cfi_remember_state
.LCFI70:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	blr
.LVL490:
.L349:
.LCFI71:
	.cfi_restore_state
	.loc 1 2064 0
	andi. 0,24,3
	.loc 1 2062 0
	lis 9,is_overriden@ha
	stb 28,is_overriden@l(9)
	.loc 1 2064 0
	bne- 0,.L378
.L353:
.LVL491:
	.loc 1 2066 0 discriminator 1
	cmpwi 7,24,0
	ble- 7,.L347
	.loc 1 2001 0
	addi 6,24,-1
	lis 10,d_8to24table@ha
	rlwinm 6,6,30,4,31
	lis 11,d_8to8graytable@ha
	addi 6,6,1
	.loc 1 2066 0
	mr 8,26
	mtctr 6
	mr 9,27
	.loc 1 2001 0
	addi 7,26,16
	la 10,d_8to24table@l(10)
	la 11,d_8to8graytable@l(11)
.LVL492:
.L354:
	.loc 1 2068 0 discriminator 2
	lbz 0,0(31)
	slwi 0,0,2
	lwzx 0,10,0
	stw 0,0(8)
	.loc 1 2069 0 discriminator 2
	lbz 0,1(31)
	slwi 0,0,2
	lwzx 0,10,0
	stw 0,4(8)
	.loc 1 2070 0 discriminator 2
	lbz 0,2(31)
	slwi 0,0,2
	lwzx 0,10,0
	stw 0,8(8)
	.loc 1 2071 0 discriminator 2
	lbz 0,3(31)
	slwi 0,0,2
	lwzx 0,10,0
	stw 0,12(8)
	.loc 1 2076 0 discriminator 2
	mr 8,7
	addi 7,7,16
	.loc 1 2073 0 discriminator 2
	lbz 0,0(31)
	lbzx 0,11,0
	stb 0,0(9)
	.loc 1 2074 0 discriminator 2
	lbz 0,1(31)
	lbzx 0,11,0
	stb 0,1(9)
	.loc 1 2075 0 discriminator 2
	lbz 0,2(31)
	lbzx 0,11,0
	stb 0,2(9)
	.loc 1 2076 0 discriminator 2
	lbz 0,3(31)
	addi 31,31,4
	lbzx 0,11,0
	stb 0,3(9)
	addi 9,9,4
	.loc 1 2066 0 discriminator 2
	bdnz .L354
.LVL493:
	.loc 1 2080 0
	lis 3,.LC40@ha
	mr 4,30
	la 3,.LC40@l(3)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L379
.LVL494:
.L355:
	.loc 1 2086 0
	lis 31,texture_extension_number@ha
	lwz 3,texture_extension_number@l(31)
	bl GL_Bind
	.loc 1 2088 0
	lwz 4,408(1)
	lwz 5,412(1)
	mr 3,26
	mr 6,29
	mr 7,28
	bl GL_Upload32
	.loc 1 2090 0
	lwz 9,texture_extension_number@l(31)
	.loc 1 2095 0
	lis 3,.LC41@ha
	.loc 1 2090 0
	addi 0,9,1
	.loc 1 2095 0
	la 3,.LC41@l(3)
	.loc 1 2090 0
	stw 0,texture_extension_number@l(31)
	.loc 1 2095 0
	bl COM_CheckParm
	cmpwi 7,3,0
	bne- 7,.L357
	.loc 1 2095 0 is_stmt 0 discriminator 1
	lis 9,sh_bumpmaps+12@ha
	lfs 13,sh_bumpmaps+12@l(9)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	beq- 7,.L357
	cmpwi 7,22,0
	bne- 7,.L380
.LVL495:
.L357:
	.loc 1 2172 0 is_stmt 1
	lwz 9,texture_extension_number@l(31)
	addi 0,9,1
	stw 0,texture_extension_number@l(31)
	.loc 1 2174 0
	bl glGetError
	cmpwi 7,3,1285
	bne+ 7,.L368
.L377:
	.loc 1 2175 0
	lis 3,.LC50@ha
	mr 4,30
	la 3,.LC50@l(3)
	crxor 6,6,6
	bl Sys_Printf
	b .L368
.LVL496:
.L375:
	.loc 1 2027 0
	lis 3,.LC38@ha
	mr 4,30
	la 3,.LC38@l(3)
	.loc 1 2031 0
	li 28,1
	.loc 1 2027 0
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 2033 0
	lwz 9,408(1)
	lwz 0,412(1)
	.loc 1 2029 0
	li 11,1
	.loc 1 2033 0
	mullw. 0,9,0
	.loc 1 2029 0
	lis 9,is_overriden@ha
	stb 11,is_overriden@l(9)
.LVL497:
	.loc 1 2033 0
	ble- 0,.L347
	.loc 1 2037 0
	slwi 10,0,2
	lis 7,0x5555
	addi 10,10,-4
	.loc 1 2033 0
	addi 11,26,-4
	.loc 1 2037 0
	srwi 10,10,2
	.loc 1 2001 0
	addi 9,27,-1
	.loc 1 2037 0
	addi 10,10,1
	ori 7,7,21846
	mtctr 10
.LVL498:
.L348:
	.loc 1 2034 0 discriminator 2
	lwzu 0,4(11)
.LVL499:
	.loc 1 2037 0 discriminator 2
	rlwinm 8,0,16,24,31
	rlwinm 10,0,24,24,31
	add 10,8,10
	rlwinm 0,0,0,0xff
	add 0,10,0
	mulhw 0,0,7
	stbu 0,1(9)
	.loc 1 2033 0 discriminator 2
	bdnz .L348
	.loc 1 2031 0
	li 28,1
	b .L347
.LVL500:
.L350:
	.loc 1 2058 0
	li 28,0
	b .L347
.LVL501:
.L378:
	.loc 1 2065 0
	lis 3,.LC39@ha
	la 3,.LC39@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L353
.LVL502:
.L380:
.LBB25:
	.loc 1 2100 0
	lwz 3,texture_extension_number@l(31)
	bl GL_Bind
	.loc 1 2102 0
	lis 4,.LC42@ha
	la 4,.LC42@l(4)
	addi 5,1,144
	mr 3,30
	bl GL_GetOverrideName
	.loc 1 2103 0
	addi 3,1,144
	li 4,4
	mr 5,26
	addi 6,1,408
	addi 7,1,412
	bl LoadTextureInPlace
	cmpwi 7,3,0
	beq- 7,.L358
.LBB26:
	.loc 1 2107 0
	lis 3,.LC43@ha
	mr 4,30
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 2109 0
	lis 4,.LC44@ha
	la 4,.LC44@l(4)
	addi 5,1,16
	mr 3,30
	bl GL_GetOverrideName
	.loc 1 2110 0
	addi 3,1,16
	li 4,1
	mr 5,25
	addi 6,1,12
	addi 7,1,8
	bl LoadTextureInPlace
	cmpwi 7,3,0
	beq- 7,.L359
	.loc 1 2112 0
	lis 3,.LC45@ha
	mr 4,30
	la 3,.LC45@l(3)
	crxor 6,6,6
	bl Con_DPrintf
.LVL503:
.L360:
	.loc 1 2122 0
	lwz 5,12(1)
	lwz 0,408(1)
	cmpw 7,5,0
	bne- 7,.L361
	.loc 1 2122 0 is_stmt 0 discriminator 1
	lwz 0,8(1)
	lwz 9,412(1)
	cmpw 7,0,9
	beq- 7,.L381
.L361:
	.loc 1 2128 0 is_stmt 1
	lis 3,.LC46@ha
	mr 4,30
	la 3,.LC46@l(3)
	crxor 6,6,6
	bl Con_SafePrintf
.L362:
	.loc 1 2130 0
	lwz 4,408(1)
	mr 3,26
	lwz 5,412(1)
	mr 6,29
	bl GL_UploadNormal
	b .L357
.LVL504:
.L374:
.LBE26:
.LBE25:
	.loc 1 2011 0
	mr 3,27
	bl free
	.loc 1 2012 0
	b .L343
.LVL505:
.L358:
.LBB31:
	.loc 1 2135 0
	lis 4,.LC47@ha
	addi 5,1,144
	la 4,.LC47@l(4)
	mr 3,30
	bl GL_GetOverrideName
	.loc 1 2137 0
	addi 3,1,144
	li 4,1
	mr 5,27
	addi 6,1,408
	addi 7,1,412
	bl LoadTextureInPlace
	cmpwi 7,3,0
	beq- 7,.L363
.LBB27:
	.loc 1 2141 0
	lis 3,.LC48@ha
	mr 4,30
	la 3,.LC48@l(3)
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 2142 0
	lis 4,.LC44@ha
	la 4,.LC44@l(4)
	addi 5,1,16
	mr 3,30
	bl GL_GetOverrideName
	.loc 1 2143 0
	addi 3,1,16
	li 4,1
	mr 5,25
	addi 6,1,8
	addi 7,1,12
	bl LoadTextureInPlace
	cmpwi 7,3,0
	beq- 7,.L364
	.loc 1 2145 0
	lis 3,.LC45@ha
	mr 4,30
	la 3,.LC45@l(3)
	crxor 6,6,6
	bl Con_DPrintf
.LVL506:
.L365:
	.loc 1 2155 0
	lwz 4,8(1)
	lwz 0,408(1)
	cmpw 7,4,0
	bne- 7,.L366
	.loc 1 2155 0 is_stmt 0 discriminator 1
	lwz 5,412(1)
	lwz 0,12(1)
	cmpw 7,0,5
	beq- 7,.L367
.L366:
	.loc 1 2160 0 is_stmt 1
	lis 3,.LC49@ha
	mr 4,30
	la 3,.LC49@l(3)
	crxor 6,6,6
	bl Con_SafePrintf
	.loc 1 2161 0
	lis 9,.LANCHOR0+184@ha
	lfs 13,.LANCHOR0+184@l(9)
	lis 9,.LC14@ha
	lfs 0,.LC14@l(9)
	addi 9,1,420
	lwz 0,412(1)
	mr 3,25
	fmuls 0,13,0
	lwz 5,408(1)
	mullw 5,5,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,420(1)
	bl Q_memset
	lwz 4,408(1)
	lwz 5,412(1)
.L367:
.LBE27:
	.loc 1 2169 0
	mr 3,27
	mr 6,29
	mr 7,25
	bl GL_UploadBump
	b .L357
.LVL507:
.L363:
	.loc 1 2166 0
	lis 9,.LANCHOR0+184@ha
	lwz 0,412(1)
	lfs 13,.LANCHOR0+184@l(9)
	lis 9,.LC14@ha
	lfs 0,.LC14@l(9)
	addi 11,1,416
	lwz 5,408(1)
	mr 3,25
	fmuls 0,13,0
	mullw 5,5,0
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 4,416(1)
	bl Q_memset
	lwz 4,408(1)
	lwz 5,412(1)
	b .L367
.L359:
.LBB28:
	.loc 1 2119 0
	lis 9,.LANCHOR0+184@ha
	lis 11,.LC14@ha
	lfs 13,.LANCHOR0+184@l(9)
	mr 3,25
	lfs 0,.LC14@l(11)
	addi 11,1,428
	.loc 1 2117 0
	lwz 9,408(1)
	.loc 1 2119 0
	fmuls 0,13,0
	.loc 1 2118 0
	lwz 0,412(1)
	.loc 1 2119 0
	mullw 5,9,0
	fctiwz 0,0
	stfiwx 0,0,11
	.loc 1 2117 0
	stw 9,12(1)
.LVL508:
	.loc 1 2119 0
	lwz 4,428(1)
	.loc 1 2118 0
	stw 0,8(1)
.LVL509:
	.loc 1 2119 0
	bl Q_memset
	b .L360
.LVL510:
.L364:
.LBE28:
.LBB29:
	.loc 1 2152 0
	lis 9,.LANCHOR0+184@ha
	lis 11,.LC14@ha
	lfs 13,.LANCHOR0+184@l(9)
	mr 3,25
	lfs 0,.LC14@l(11)
	addi 11,1,424
	.loc 1 2150 0
	lwz 9,408(1)
	.loc 1 2152 0
	fmuls 0,13,0
	.loc 1 2151 0
	lwz 0,412(1)
	.loc 1 2152 0
	mullw 5,9,0
	fctiwz 0,0
	stfiwx 0,0,11
	.loc 1 2150 0
	stw 9,8(1)
.LVL511:
	.loc 1 2152 0
	lwz 4,424(1)
	.loc 1 2151 0
	stw 0,12(1)
.LVL512:
	.loc 1 2152 0
	bl Q_memset
	b .L365
.LVL513:
.L381:
.LBE29:
.LBB30:
	.loc 1 2124 0
	mullw 5,5,0
	mr 3,25
	mr 4,26
	bl GL_PackGloss
	b .L362
.LBE30:
.LBE31:
	.cfi_endproc
.LFE77:
	.size	GL_Upload8, .-GL_Upload8
	.align 2
	.globl Scrap_Upload
	.type	Scrap_Upload, @function
Scrap_Upload:
.LFB40:
	.loc 1 191 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI72:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 1 194 0
	lis 9,scrap_uploads@ha
	lwz 11,scrap_uploads@l(9)
	.loc 1 191 0
	stw 29,12(1)
	.loc 1 197 0
	lis 29,scrap_texnum@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 191 0
	stw 30,16(1)
	.loc 1 198 0
	lis 30,scrap_texels@ha
	.cfi_offset 30, -8
	.loc 1 191 0
	stw 31,20(1)
	.loc 1 198 0
	lis 31,.LC40@ha
	.cfi_offset 31, -4
	.loc 1 197 0
	lwz 3,scrap_texnum@l(29)
	.loc 1 198 0
	la 30,scrap_texels@l(30)
	.loc 1 191 0
	stw 0,28(1)
	.loc 1 198 0
	la 31,.LC40@l(31)
	.loc 1 194 0
	addi 0,11,1
	.cfi_offset 65, 4
	stw 0,scrap_uploads@l(9)
.LVL514:
	.loc 1 197 0
	bl GL_Bind
	.loc 1 198 0
	mr 4,31
	li 5,256
	li 6,256
	li 7,0
	li 8,1
	li 9,0
	mr 3,30
	bl GL_Upload8
.LVL515:
	.loc 1 197 0
	lwz 3,scrap_texnum@l(29)
	addi 3,3,1
	bl GL_Bind
	.loc 1 198 0
	addis 3,30,0x4
	mr 4,31
	li 9,0
	li 5,256
	li 6,256
	li 7,0
	li 8,1
	bl GL_Upload8
.LVL516:
	.loc 1 200 0
	li 0,0
	lis 9,scrap_dirty@ha
	.loc 1 201 0
	lwz 29,12(1)
	.loc 1 200 0
	stb 0,scrap_dirty@l(9)
	.loc 1 201 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
.LCFI73:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE40:
	.size	Scrap_Upload, .-Scrap_Upload
	.align 2
	.globl Draw_Pic
	.type	Draw_Pic, @function
Draw_Pic:
.LFB50:
	.loc 1 682 0
	.cfi_startproc
.LVL517:
	mflr 0
	stwu 1,-96(1)
.LCFI74:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	.loc 1 685 0
	lis 9,scrap_dirty@ha
	.loc 1 682 0
	stw 29,60(1)
	mr 29,5
	.cfi_offset 29, -36
	stw 0,100(1)
	.loc 1 685 0
	lbz 0,scrap_dirty@l(9)
	.cfi_offset 65, 4
	.loc 1 682 0
	stw 30,64(1)
	mr 30,4
	.cfi_offset 30, -32
	.loc 1 685 0
	cmpwi 7,0,0
	.loc 1 682 0
	stw 31,68(1)
	stfd 29,72(1)
	mr 31,3
	.cfi_offset 61, -24
	.cfi_offset 31, -28
	stfd 30,80(1)
	stfd 31,88(1)
	stw 28,56(1)
	.loc 1 685 0
	beq+ 7,.L384
	.cfi_offset 28, -40
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 686 0
	bl Scrap_Upload
.LVL518:
.L384:
	.loc 1 688 0
	lis 9,.LC10@ha
	.loc 1 692 0
	lis 28,0x4330
	.loc 1 688 0
	lfs 1,.LC10@l(9)
	fmr 3,1
	fmr 4,1
	fmr 2,1
	bl glColor4f
	.loc 1 689 0
	lwz 3,8(29)
	bl GL_Bind
	.loc 1 690 0
	li 3,7
	bl glBegin
	.loc 1 691 0
	lfs 1,12(29)
	lfs 2,16(29)
	bl glTexCoord2f
	.loc 1 692 0
	xoris 0,30,0x8000
	xoris 9,31,0x8000
	stw 0,20(1)
	stw 9,12(1)
	lis 9,.LC4@ha
	stw 28,8(1)
	stw 28,16(1)
	lfs 31,.LC4@l(9)
	lfd 30,8(1)
	lfd 29,16(1)
	fsub 30,30,31
	fsub 29,29,31
	frsp 30,30
	frsp 29,29
	fmr 1,30
	fmr 2,29
	bl glVertex2f
	.loc 1 693 0
	lfs 1,20(29)
	lfs 2,16(29)
	bl glTexCoord2f
	.loc 1 694 0
	lwz 0,0(29)
	stw 28,24(1)
	fmr 2,29
	add 0,31,0
	xoris 0,0,0x8000
	stw 0,28(1)
	lfd 1,24(1)
	fsub 1,1,31
	frsp 1,1
	bl glVertex2f
	.loc 1 695 0
	lfs 1,20(29)
	lfs 2,24(29)
	bl glTexCoord2f
	.loc 1 696 0
	lwz 9,0(29)
	lwz 0,4(29)
	add 31,31,9
.LVL519:
	stw 28,32(1)
	add 0,30,0
	xoris 31,31,0x8000
	xoris 0,0,0x8000
	stw 31,36(1)
	stw 0,44(1)
	stw 28,40(1)
	lfd 1,32(1)
	lfd 2,40(1)
	fsub 1,1,31
	fsub 2,2,31
	frsp 1,1
	frsp 2,2
	bl glVertex2f
	.loc 1 697 0
	lfs 1,12(29)
	lfs 2,24(29)
	bl glTexCoord2f
	.loc 1 698 0
	lwz 0,4(29)
	stw 28,48(1)
	fmr 1,30
	add 30,30,0
.LVL520:
	xoris 30,30,0x8000
	stw 30,52(1)
	lfd 0,48(1)
	fsub 31,0,31
	frsp 2,31
	bl glVertex2f
	.loc 1 699 0
	bl glEnd
	.loc 1 700 0
	lwz 0,100(1)
	lwz 28,56(1)
	mtlr 0
	lwz 29,60(1)
.LVL521:
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 29,72(1)
	lfd 30,80(1)
	lfd 31,88(1)
	addi 1,1,96
.LCFI75:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE50:
	.size	Draw_Pic, .-Draw_Pic
	.align 2
	.globl Draw_BeginDisc
	.type	Draw_BeginDisc, @function
Draw_BeginDisc:
.LFB58:
	.loc 1 942 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI76:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 943 0
	lis 31,draw_disc@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 942 0
	stw 0,20(1)
	.loc 1 943 0
	lwz 0,draw_disc@l(31)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L385
	.loc 1 945 0
	li 3,1028
	bl glDrawBuffer
	.loc 1 946 0
	lis 9,vid+20@ha
	lwz 3,vid+20@l(9)
	li 4,0
	lwz 5,draw_disc@l(31)
	addi 3,3,-24
	bl Draw_Pic
	.loc 1 947 0
	li 3,1029
	bl glDrawBuffer
.L385:
	.loc 1 948 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI77:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE58:
	.size	Draw_BeginDisc, .-Draw_BeginDisc
	.align 2
	.globl Draw_TransPic
	.type	Draw_TransPic, @function
Draw_TransPic:
.LFB51:
	.loc 1 709 0
	.cfi_startproc
.LVL522:
	stwu 1,-24(1)
.LCFI78:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	.loc 1 710 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 709 0
	stw 0,28(1)
	.loc 1 710 0
	blt- 0,.L388
	.cfi_offset 65, 4
	.loc 1 710 0 is_stmt 0 discriminator 1
	lis 9,vid@ha
	lwz 11,0(5)
	la 9,vid@l(9)
	lwz 0,20(9)
	add 11,31,11
	cmplw 7,11,0
	ble- 7,.L391
.L388:
	.loc 1 713 0 is_stmt 1
	lis 3,.LC51@ha
.LVL523:
	stw 4,8(1)
	la 3,.LC51@l(3)
	stw 5,12(1)
	crxor 6,6,6
	bl Sys_Error
.LVL524:
	.loc 1 717 0
	lwz 0,28(1)
	.loc 1 713 0
	lwz 5,12(1)
	.loc 1 716 0
	mr 3,31
	.loc 1 713 0
	lwz 4,8(1)
	.loc 1 717 0
	mtlr 0
	lwz 31,20(1)
.LVL525:
	addi 1,1,24
	.cfi_remember_state
.LCFI79:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 716 0
	b Draw_Pic
.LVL526:
.L391:
.LCFI80:
	.cfi_restore_state
	.loc 1 710 0 discriminator 1
	cmpwi 7,4,0
	blt- 7,.L388
	.loc 1 711 0 discriminator 1
	lwz 11,4(5)
	.loc 1 710 0 discriminator 1
	lwz 0,24(9)
	.loc 1 711 0 discriminator 1
	add 9,4,11
	.loc 1 710 0 discriminator 1
	cmplw 7,9,0
	bgt+ 7,.L388
	.loc 1 717 0
	lwz 0,28(1)
	.loc 1 716 0
	mr 3,31
.LVL527:
	.loc 1 717 0
	lwz 31,20(1)
.LVL528:
	mtlr 0
	addi 1,1,24
	.cfi_restore 31
.LCFI81:
	.cfi_def_cfa_offset 0
	.loc 1 716 0
	b Draw_Pic
.LVL529:
.LVL530:
.LVL531:
	.cfi_endproc
.LFE51:
	.size	Draw_TransPic, .-Draw_TransPic
	.align 2
	.globl Draw_AlphaPic
	.type	Draw_AlphaPic, @function
Draw_AlphaPic:
.LFB49:
	.loc 1 648 0
	.cfi_startproc
.LVL532:
	mflr 0
	stwu 1,-104(1)
.LCFI82:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	.loc 1 651 0
	lis 9,scrap_dirty@ha
	.loc 1 648 0
	stfd 30,88(1)
	fmr 30,1
	.cfi_offset 62, -16
	stw 0,108(1)
	.loc 1 651 0
	lbz 0,scrap_dirty@l(9)
	.cfi_offset 65, 4
	.loc 1 648 0
	stw 29,60(1)
	mr 29,5
	.cfi_offset 29, -44
	.loc 1 651 0
	cmpwi 7,0,0
	.loc 1 648 0
	stw 30,64(1)
	stw 31,68(1)
	mr 30,4
	.cfi_offset 31, -36
	.cfi_offset 30, -40
	stfd 28,72(1)
	mr 31,3
	stfd 29,80(1)
	stfd 31,96(1)
	stw 28,56(1)
	.loc 1 651 0
	beq+ 7,.L393
	.cfi_offset 28, -48
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.loc 1 652 0
	bl Scrap_Upload
.LVL533:
.L393:
	.loc 1 654 0
	li 3,3008
	.loc 1 662 0
	lis 28,0x4330
	.loc 1 654 0
	bl glDisable
	.loc 1 655 0
	li 3,3042
	bl glEnable
	.loc 1 658 0
	lis 9,.LC10@ha
	lfs 31,.LC10@l(9)
	fmr 4,30
	fmr 3,31
	fmr 1,31
	fmr 2,31
	bl glColor4f
	.loc 1 659 0
	lwz 3,8(29)
	bl GL_Bind
	.loc 1 660 0
	li 3,7
	bl glBegin
	.loc 1 661 0
	lfs 1,12(29)
	lfs 2,16(29)
	bl glTexCoord2f
	.loc 1 662 0
	xoris 0,30,0x8000
	xoris 9,31,0x8000
	stw 0,20(1)
	stw 9,12(1)
	lis 9,.LC4@ha
	stw 28,8(1)
	stw 28,16(1)
	lfs 30,.LC4@l(9)
.LVL534:
	lfd 29,8(1)
	lfd 28,16(1)
	fsub 29,29,30
	fsub 28,28,30
	frsp 29,29
	frsp 28,28
	fmr 1,29
	fmr 2,28
	bl glVertex2f
	.loc 1 663 0
	lfs 1,20(29)
	lfs 2,16(29)
	bl glTexCoord2f
	.loc 1 664 0
	lwz 0,0(29)
	stw 28,24(1)
	fmr 2,28
	add 0,31,0
	xoris 0,0,0x8000
	stw 0,28(1)
	lfd 1,24(1)
	fsub 1,1,30
	frsp 1,1
	bl glVertex2f
	.loc 1 665 0
	lfs 1,20(29)
	lfs 2,24(29)
	bl glTexCoord2f
	.loc 1 666 0
	lwz 9,0(29)
	lwz 0,4(29)
	add 31,31,9
.LVL535:
	stw 28,32(1)
	add 0,30,0
	xoris 31,31,0x8000
	xoris 0,0,0x8000
	stw 31,36(1)
	stw 0,44(1)
	stw 28,40(1)
	lfd 1,32(1)
	lfd 2,40(1)
	fsub 1,1,30
	fsub 2,2,30
	frsp 1,1
	frsp 2,2
	bl glVertex2f
	.loc 1 667 0
	lfs 1,12(29)
	lfs 2,24(29)
	bl glTexCoord2f
	.loc 1 668 0
	lwz 0,4(29)
	stw 28,48(1)
	fmr 1,29
	add 30,30,0
.LVL536:
	xoris 30,30,0x8000
	stw 30,52(1)
	lfd 0,48(1)
	fsub 30,0,30
	frsp 2,30
	bl glVertex2f
	.loc 1 669 0
	bl glEnd
	.loc 1 670 0
	fmr 1,31
	fmr 2,31
	fmr 3,31
	fmr 4,31
	bl glColor4f
	.loc 1 671 0
	li 3,3008
	bl glEnable
	.loc 1 672 0
	li 3,3042
	bl glDisable
	.loc 1 673 0
	lwz 0,108(1)
	lwz 28,56(1)
	mtlr 0
	lwz 29,60(1)
.LVL537:
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 28,72(1)
	lfd 29,80(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
.LCFI83:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE49:
	.size	Draw_AlphaPic, .-Draw_AlphaPic
	.align 2
	.globl Draw_SpiralConsoleBackground
	.type	Draw_SpiralConsoleBackground, @function
Draw_SpiralConsoleBackground:
.LFB54:
	.loc 1 804 0
	.cfi_startproc
.LVL538:
	stwu 1,-160(1)
.LCFI84:
	.cfi_def_cfa_offset 160
	mflr 0
	stw 28,144(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_register 65, 0
	stw 31,156(1)
	.loc 1 811 0
	addi 3,1,8
.LVL539:
	.loc 1 819 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.loc 1 804 0
	stw 0,164(1)
	.loc 1 819 0
	la 31,.LANCHOR0@l(31)
	.loc 1 804 0
	stw 27,140(1)
	stw 29,148(1)
	stw 30,152(1)
	.loc 1 811 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	bl Sys_Strtime
	.loc 1 814 0
	bl glPushMatrix
	.loc 1 815 0
	li 3,5890
	bl glMatrixMode
	.loc 1 816 0
	bl glPushMatrix
	.loc 1 817 0
	bl glLoadIdentity
	.loc 1 819 0
	lfs 0,196(31)
	lfs 13,192(31)
	.loc 1 818 0
	lis 11,.LANCHOR1@ha
	la 11,.LANCHOR1@l(11)
	.loc 1 820 0
	lis 10,.LC52@ha
	.loc 1 819 0
	fadds 0,13,0
	.loc 1 818 0
	addis 11,11,0x20
	lis 9,.LC10@ha
	.loc 1 820 0
	lfs 11,.LC52@l(10)
	.loc 1 818 0
	lfs 1,0(11)
	lfs 12,.LC10@l(9)
	.loc 1 820 0
	fcmpu 7,0,11
	.loc 1 819 0
	stfs 0,196(31)
	.loc 1 818 0
	fadds 1,1,12
	stfs 1,0(11)
	.loc 1 820 0
	bgt- 7,.L395
	.loc 1 820 0 is_stmt 0 discriminator 1
	lis 11,.LC53@ha
	lfs 12,.LC53@l(11)
	fcmpu 7,0,12
	blt- 7,.L395
	.loc 1 822 0 is_stmt 1
	lis 11,.LC0@ha
	lfs 4,.LC10@l(9)
	lfs 2,.LC0@l(11)
	.loc 1 824 0
	lis 30,vid@ha
	la 30,vid@l(30)
	.loc 1 822 0
	fmr 3,2
	bl glRotatef
	.loc 1 823 0
	lfs 1,196(31)
	fmr 2,1
	fmr 3,1
	bl glScalef
	.loc 1 824 0
	lwz 4,24(30)
	mulli 0,4,3
	srwi 0,0,2
.LVL540:
	.loc 1 825 0
	cmpw 7,0,28
	bge- 7,.L398
.L404:
	.loc 1 826 0
	lis 9,conback@ha
	subf 4,4,28
	lwz 5,conback@l(9)
	li 3,0
	bl Draw_Pic
.LVL541:
	.loc 1 829 0
	bl glPopMatrix
	.loc 1 830 0
	li 3,5888
	bl glMatrixMode
	.loc 1 831 0
	bl glPopMatrix
	.loc 1 833 0
	lis 9,.LC0@ha
	lfs 13,212(31)
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	bne- 7,.L403
.L394:
	.loc 1 841 0
	lwz 0,164(1)
	lwz 27,140(1)
	mtlr 0
	lwz 28,144(1)
.LVL542:
	lwz 29,148(1)
	lwz 30,152(1)
	lwz 31,156(1)
	addi 1,1,160
	.cfi_remember_state
.LCFI85:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL543:
.L395:
.LCFI86:
	.cfi_restore_state
	.loc 1 822 0
	lis 11,.LC0@ha
	.loc 1 821 0
	fneg 13,13
	.loc 1 822 0
	lfs 2,.LC0@l(11)
	.loc 1 824 0
	lis 30,vid@ha
	.loc 1 822 0
	lfs 4,.LC10@l(9)
	.loc 1 824 0
	la 30,vid@l(30)
	.loc 1 822 0
	fmr 3,2
	.loc 1 821 0
	stfs 13,192(31)
	.loc 1 822 0
	bl glRotatef
	.loc 1 823 0
	lfs 1,196(31)
	fmr 2,1
	fmr 3,1
	bl glScalef
	.loc 1 824 0
	lwz 4,24(30)
	mulli 0,4,3
	srwi 0,0,2
.LVL544:
	.loc 1 825 0
	cmpw 7,0,28
	blt- 7,.L404
.L398:
	.loc 1 828 0
	lis 9,0x4330
	xoris 11,28,0x8000
	stw 11,124(1)
	lis 11,.LC4@ha
	stw 9,120(1)
	xoris 0,0,0x8000
.LVL545:
	lfs 0,.LC4@l(11)
	subf 4,4,28
	lfd 1,120(1)
	li 3,0
	stw 9,128(1)
	lis 9,.LC54@ha
	fsub 1,1,0
	stw 0,132(1)
	lfd 13,.LC54@l(9)
	lis 9,conback@ha
	lwz 5,conback@l(9)
	fmul 1,1,13
	lfd 13,128(1)
	fsub 0,13,0
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	bl Draw_AlphaPic
.LVL546:
	.loc 1 829 0
	bl glPopMatrix
	.loc 1 830 0
	li 3,5888
	bl glMatrixMode
	.loc 1 831 0
	bl glPopMatrix
	.loc 1 833 0
	lis 9,.LC0@ha
	lfs 13,212(31)
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	beq+ 7,.L394
.L403:
	.loc 1 836 0
	addi 29,1,28
	lis 4,.LC55@ha
	mr 3,29
	la 4,.LC55@l(4)
	addi 5,1,8
	.loc 1 835 0
	addi 28,28,-14
.LVL547:
	.loc 1 836 0
	crxor 6,6,6
	bl sprintf
.LVL548:
	.loc 1 837 0
	lwz 9,48(30)
	lwz 0,20(30)
	.loc 1 838 0
	li 31,0
	.loc 1 837 0
	mulli 11,9,12
	addi 9,9,30
	.loc 1 839 0
	li 27,-128
	.loc 1 837 0
	divwu 0,11,0
	mulli 0,0,12
	subf 30,0,9
.LVL549:
	.loc 1 838 0
	b .L401
.LVL550:
.L402:
	.loc 1 839 0 discriminator 2
	lbzx 5,29,31
	.loc 1 838 0 discriminator 2
	addi 31,31,1
.LVL551:
	.loc 1 839 0 discriminator 2
	or 5,5,27
	rlwinm 5,5,0,0xff
	bl Draw_Character
.LVL552:
.L401:
	.loc 1 838 0 discriminator 1
	mr 3,29
	bl strlen
	.loc 1 839 0 discriminator 1
	mr 4,28
	.loc 1 838 0 discriminator 1
	cmplw 7,31,3
	.loc 1 839 0 discriminator 1
	mr 3,30
	.loc 1 838 0 discriminator 1
	addi 30,30,8
	blt+ 7,.L402
	.loc 1 841 0
	lwz 0,164(1)
	lwz 27,140(1)
	mtlr 0
	lwz 28,144(1)
.LVL553:
	lwz 29,148(1)
	lwz 30,152(1)
	lwz 31,156(1)
.LVL554:
	addi 1,1,160
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI87:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE54:
	.size	Draw_SpiralConsoleBackground, .-Draw_SpiralConsoleBackground
	.align 2
	.globl Draw_ConsoleBackground
	.type	Draw_ConsoleBackground, @function
Draw_ConsoleBackground:
.LFB53:
	.loc 1 780 0
	.cfi_startproc
.LVL555:
	mflr 0
	stwu 1,-160(1)
.LCFI88:
	.cfi_def_cfa_offset 160
	.cfi_register 65, 0
	stw 31,156(1)
	.loc 1 781 0
	lis 31,vid@ha
	.cfi_offset 31, -4
	.loc 1 780 0
	stw 0,164(1)
	.loc 1 781 0
	la 31,vid@l(31)
	.loc 1 780 0
	stw 28,144(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 1 781 0
	lwz 4,24(31)
	.loc 1 780 0
	stw 27,140(1)
	.loc 1 781 0
	mulli 0,4,3
	.loc 1 780 0
	stw 29,148(1)
	stw 30,152(1)
	.loc 1 781 0
	srwi 0,0,2
.LVL556:
	.loc 1 787 0
	cmpw 7,0,3
	bge- 7,.L406
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.loc 1 788 0
	lis 9,conback@ha
	li 3,0
.LVL557:
	lwz 5,conback@l(9)
	subf 4,4,28
	bl Draw_Pic
.LVL558:
	.loc 1 792 0
	lis 9,.LANCHOR0+212@ha
	lfs 13,.LANCHOR0+212@l(9)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	bne- 7,.L411
.L405:
	.loc 1 801 0
	lwz 0,164(1)
	lwz 27,140(1)
	mtlr 0
	lwz 28,144(1)
.LVL559:
	lwz 29,148(1)
	lwz 30,152(1)
	lwz 31,156(1)
	addi 1,1,160
	.cfi_remember_state
.LCFI89:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL560:
.L406:
.LCFI90:
	.cfi_restore_state
	.loc 1 790 0
	lis 9,0x4330
	xoris 11,3,0x8000
	stw 11,124(1)
	lis 11,.LC4@ha
	stw 9,120(1)
	xoris 0,0,0x8000
.LVL561:
	lfs 0,.LC4@l(11)
	li 3,0
.LVL562:
	lfd 1,120(1)
	subf 4,4,28
	stw 9,128(1)
	lis 9,.LC54@ha
	fsub 1,1,0
	lfd 13,.LC54@l(9)
	stw 0,132(1)
	lis 9,conback@ha
	lwz 5,conback@l(9)
	fmul 1,1,13
	lfd 13,128(1)
	fsub 0,13,0
	frsp 1,1
	frsp 0,0
	fdivs 1,1,0
	bl Draw_AlphaPic
.LVL563:
	.loc 1 792 0
	lis 9,.LANCHOR0+212@ha
	lfs 13,.LANCHOR0+212@l(9)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	beq+ 7,.L405
.L411:
	.loc 1 794 0
	addi 3,1,8
	.loc 1 796 0
	addi 29,1,28
	.loc 1 794 0
	bl Sys_Strtime
	.loc 1 796 0
	lis 4,.LC55@ha
	mr 3,29
	la 4,.LC55@l(4)
	addi 5,1,8
	.loc 1 795 0
	addi 28,28,-14
.LVL564:
	.loc 1 796 0
	crxor 6,6,6
	bl sprintf
.LVL565:
	.loc 1 797 0
	lwz 9,48(31)
	lwz 0,20(31)
	.loc 1 799 0
	li 27,-128
	.loc 1 797 0
	mulli 11,9,12
	addi 9,9,30
	.loc 1 798 0
	li 31,0
	.loc 1 797 0
	divwu 0,11,0
	mulli 0,0,12
	subf 30,0,9
.LVL566:
	.loc 1 798 0
	b .L409
.LVL567:
.L410:
	.loc 1 799 0 discriminator 2
	lbzx 5,29,31
	.loc 1 798 0 discriminator 2
	addi 31,31,1
.LVL568:
	.loc 1 799 0 discriminator 2
	or 5,5,27
	rlwinm 5,5,0,0xff
	bl Draw_Character
.LVL569:
.L409:
	.loc 1 798 0 discriminator 1
	mr 3,29
	bl strlen
	.loc 1 799 0 discriminator 1
	mr 4,28
	.loc 1 798 0 discriminator 1
	cmplw 7,31,3
	.loc 1 799 0 discriminator 1
	mr 3,30
	.loc 1 798 0 discriminator 1
	addi 30,30,8
	blt+ 7,.L410
	.loc 1 801 0
	lwz 0,164(1)
	lwz 27,140(1)
	mtlr 0
	lwz 28,144(1)
.LVL570:
	lwz 29,148(1)
	lwz 30,152(1)
	lwz 31,156(1)
.LVL571:
	addi 1,1,160
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI91:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE53:
	.size	Draw_ConsoleBackground, .-Draw_ConsoleBackground
	.align 2
	.globl GL_LoadTexture
	.type	GL_LoadTexture, @function
GL_LoadTexture:
.LFB78:
	.loc 1 2190 0
	.cfi_startproc
.LVL572:
	mflr 0
	stwu 1,-64(1)
.LCFI92:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 20,16(1)
	.loc 1 2197 0
	lis 20,numgltextures@ha
	.cfi_offset 20, -48
	.loc 1 2190 0
	stw 22,24(1)
	.loc 1 2197 0
	lis 22,gltextures@ha
	.cfi_offset 22, -40
	.loc 1 2190 0
	stw 23,28(1)
	.loc 1 2197 0
	la 22,gltextures@l(22)
	.loc 1 2190 0
	stw 24,32(1)
	mr 24,6
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	stw 25,36(1)
	mr 25,8
	.cfi_offset 25, -28
	stw 26,40(1)
	mr 26,9
	.cfi_offset 26, -24
	stw 27,44(1)
	mr 27,7
	.cfi_offset 27, -20
	stw 29,52(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,56(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
	stw 19,12(1)
	stw 21,20(1)
	stw 28,48(1)
	.loc 1 2197 0
	lwz 23,numgltextures@l(20)
	.loc 1 2195 0
	lbz 0,0(3)
	.cfi_offset 28, -16
	.cfi_offset 21, -44
	.cfi_offset 19, -52
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L414
.LVL573:
	.loc 1 2197 0 discriminator 1
	cmpwi 7,23,0
	mr 28,22
	li 21,0
	bgt+ 7,.L419
	b .L414
.LVL574:
.L415:
	.loc 1 2197 0 is_stmt 0
	addi 21,21,1
.LVL575:
	addi 28,28,80
.LVL576:
	cmpw 7,21,23
	beq- 7,.L414
.LVL577:
.L419:
	.loc 1 2199 0 is_stmt 1
	addi 4,28,4
	mr 3,31
	bl strcmp
	cmpwi 7,3,0
	bne+ 7,.L415
	.loc 1 2201 0
	lwz 0,68(28)
	cmpw 7,0,30
	beq- 7,.L423
.L416:
	.loc 1 2202 0
	lis 3,.LC56@ha
	mr 4,31
	la 3,.LC56@l(3)
	crxor 6,6,6
	bl Con_Printf
.L417:
	.loc 1 2204 0
	mulli 21,21,80
	lwzx 3,22,21
	b .L418
.L414:
.LVL578:
.LBB34:
.LBB35:
	.loc 1 2209 0
	mulli 19,23,80
	.loc 1 2215 0
	mr 4,31
	li 5,64
	.loc 1 2216 0
	lis 28,texture_extension_number@ha
	.loc 1 2209 0
	add 21,22,19
.LVL579:
	.loc 1 2210 0
	addi 23,23,1
	.loc 1 2215 0
	addi 3,21,4
	.loc 1 2210 0
	stw 23,numgltextures@l(20)
	.loc 1 2215 0
	bl strncpy
	.loc 1 2216 0
	lwz 0,texture_extension_number@l(28)
	.loc 1 2217 0
	stw 30,68(21)
	.loc 1 2218 0
	stw 29,72(21)
	.loc 1 2221 0
	mr 3,0
	.loc 1 2219 0
	stb 27,76(21)
	.loc 1 2216 0
	stwx 0,22,19
	.loc 1 2221 0
	bl GL_Bind
	.loc 1 2223 0
	mr 3,24
	mr 4,31
	mr 5,30
	mr 6,29
	mr 7,27
	mr 8,25
	mr 9,26
	bl GL_Upload8
	.loc 1 2227 0
	lwz 3,texture_extension_number@l(28)
	addi 3,3,-2
.LVL580:
.L418:
.LBE35:
.LBE34:
	.loc 1 2228 0
	lwz 0,68(1)
	lwz 19,12(1)
	mtlr 0
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
.LVL581:
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
.LVL582:
	lwz 30,56(1)
.LVL583:
	lwz 31,60(1)
.LVL584:
	addi 1,1,64
	.cfi_remember_state
.LCFI93:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	blr
.LVL585:
.L423:
.LCFI94:
	.cfi_restore_state
	.loc 1 2201 0 discriminator 1
	lwz 0,72(28)
	cmpw 7,0,29
	bne+ 7,.L416
	b .L417
	.cfi_endproc
.LFE78:
	.size	GL_LoadTexture, .-GL_LoadTexture
	.align 2
	.globl GL_LoadLuma
	.type	GL_LoadLuma, @function
GL_LoadLuma:
.LFB79:
	.loc 1 2232 0
	.cfi_startproc
.LVL586:
	.loc 1 2237 0
	lis 9,.LANCHOR0+104@ha
	.loc 1 2232 0
	mflr 0
	.loc 1 2237 0
	lfs 13,.LANCHOR0+104@l(9)
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 2232 0
	stwu 1,-168(1)
.LCFI95:
	.cfi_def_cfa_offset 168
	.cfi_register 65, 0
	.loc 1 2237 0
	fcmpu 7,13,0
	.loc 1 2232 0
	stw 29,156(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,160(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,164(1)
	.loc 1 2238 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 2232 0
	stw 0,172(1)
	stw 28,152(1)
	.loc 1 2237 0
	beq- 7,.L428
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL587:
.L425:
	.loc 1 2258 0
	lwz 0,172(1)
	mr 3,31
	lwz 28,152(1)
	mtlr 0
	lwz 29,156(1)
.LVL588:
	lwz 30,160(1)
	lwz 31,164(1)
	addi 1,1,168
	.cfi_remember_state
.LCFI96:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL589:
.L428:
.LCFI97:
	.cfi_restore_state
	.loc 1 2242 0
	lis 28,.LANCHOR1@ha
	.loc 1 2241 0
	lis 4,.LC57@ha
.LVL590:
	.loc 1 2242 0
	la 28,.LANCHOR1@l(28)
	.loc 1 2241 0
	la 4,.LC57@l(4)
	addi 5,1,16
	.loc 1 2242 0
	addis 28,28,0x10
	.loc 1 2241 0
	bl GL_GetOverrideName
.LVL591:
	.loc 1 2242 0
	addi 3,1,16
	li 4,4
	mr 5,28
	addi 6,1,12
	addi 7,1,8
	bl LoadTextureInPlace
	cmpwi 7,3,0
	beq+ 7,.L425
	.loc 1 2245 0
	lis 3,.LC58@ha
	mr 4,29
	la 3,.LC58@l(3)
	.loc 1 2251 0
	lis 29,texture_extension_number@ha
.LVL592:
	.loc 1 2245 0
	crxor 6,6,6
	bl Con_DPrintf
.LVL593:
	.loc 1 2251 0
	lwz 3,texture_extension_number@l(29)
	.loc 1 2247 0
	li 0,1
	lis 9,is_overriden@ha
	stb 0,is_overriden@l(9)
.LVL594:
	.loc 1 2251 0
	bl GL_Bind
.LVL595:
	.loc 1 2252 0
	lwz 4,12(1)
	mr 3,28
.LVL596:
	lwz 5,8(1)
	mr 6,30
	li 7,1
	bl GL_Upload32
	.loc 1 2253 0
	lwz 31,texture_extension_number@l(29)
	.loc 1 2258 0
	lwz 28,152(1)
	.loc 1 2253 0
	addi 0,31,1
	.loc 1 2258 0
	mr 3,31
	.loc 1 2253 0
	stw 0,texture_extension_number@l(29)
	.loc 1 2258 0
	lwz 0,172(1)
	lwz 29,156(1)
	mtlr 0
	lwz 30,160(1)
	lwz 31,164(1)
	addi 1,1,168
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI98:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE79:
	.size	GL_LoadLuma, .-GL_LoadLuma
	.align 2
	.globl GL_LoadCubeMap_
	.type	GL_LoadCubeMap_, @function
GL_LoadCubeMap_:
.LFB80:
	.loc 1 2277 0
	.cfi_startproc
.LVL597:
	.loc 1 2349 0
	li 3,0
.LVL598:
	blr
	.cfi_endproc
.LFE80:
	.size	GL_LoadCubeMap_, .-GL_LoadCubeMap_
	.align 2
	.globl GL_LoadPicTexture
	.type	GL_LoadPicTexture, @function
GL_LoadPicTexture:
.LFB81:
	.loc 1 2357 0
	.cfi_startproc
.LVL599:
	.loc 1 2357 0
	mr 6,3
	.loc 1 2358 0
	lwz 4,0(3)
	lwz 5,4(3)
	lis 3,.LC37@ha
.LVL600:
	la 3,.LC37@l(3)
	addi 6,6,8
.LVL601:
	li 7,0
	li 8,1
	li 9,0
	.loc 1 2359 0
	.loc 1 2358 0
	b GL_LoadTexture
.LVL602:
	.cfi_endproc
.LFE81:
	.size	GL_LoadPicTexture, .-GL_LoadPicTexture
	.align 2
	.globl Draw_CachePic
	.type	Draw_CachePic, @function
Draw_CachePic:
.LFB42:
	.loc 1 271 0
	.cfi_startproc
.LVL603:
	stwu 1,-32(1)
.LCFI99:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.loc 1 277 0
	lis 28,menu_numcachepics@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
	.loc 1 271 0
	stw 30,24(1)
	.loc 1 277 0
	lwz 30,menu_numcachepics@l(28)
	.cfi_offset 30, -8
	.loc 1 271 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	.loc 1 277 0
	cmpwi 7,30,0
	.loc 1 271 0
	stw 0,36(1)
	stw 27,12(1)
	stw 31,28(1)
	.loc 1 277 0
	ble- 7,.L438
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	lis 31,menu_cachepics@ha
	li 27,0
	la 31,menu_cachepics@l(31)
	b .L435
.LVL604:
.L433:
	addi 31,31,108
.LVL605:
	beq- 6,.L441
.LVL606:
.L435:
	.loc 1 278 0
	mr 4,31
	mr 3,29
	bl strcmp
	.loc 1 277 0
	addi 27,27,1
	.loc 1 278 0
	cmpwi 7,3,0
	.loc 1 277 0
	cmpw 6,27,30
	.loc 1 278 0
	bne+ 7,.L433
	.loc 1 311 0
	lwz 0,36(1)
	.loc 1 310 0
	addi 3,31,64
	.loc 1 311 0
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL607:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI100:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL608:
.L441:
.LCFI101:
	.cfi_restore_state
	.loc 1 281 0
	cmpwi 7,30,128
	beq- 7,.L442
.LVL609:
.L432:
	.loc 1 284 0
	mr 4,29
	li 5,64
	.loc 1 283 0
	addi 30,30,1
	.loc 1 284 0
	mr 3,31
	.loc 1 283 0
	stw 30,menu_numcachepics@l(28)
	.loc 1 284 0
	bl strncpy
	.loc 1 289 0
	mr 3,29
	bl COM_LoadTempFile
.LVL610:
	.loc 1 290 0
	mr. 30,3
	beq- 0,.L443
.LVL611:
.L436:
	.loc 1 292 0
	mr 3,30
	bl SwapPic
	.loc 1 297 0
	lis 4,.LC61@ha
	mr 3,29
	la 4,.LC61@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L444
.L437:
	.loc 1 300 0
	lwz 9,0(30)
	.loc 1 304 0
	mr 3,30
	.loc 1 301 0
	lwz 0,4(30)
	.loc 1 300 0
	stw 9,64(31)
	.loc 1 301 0
	stw 0,68(31)
.LVL612:
	.loc 1 304 0
	bl GL_LoadPicTexture
	.loc 1 306 0
	lis 9,.LC10@ha
	lwz 0,.LC10@l(9)
	.loc 1 305 0
	li 9,0
	.loc 1 304 0
	stw 3,72(31)
	.loc 1 310 0
	addi 3,31,64
	.loc 1 306 0
	stw 0,84(31)
	.loc 1 308 0
	stw 0,88(31)
	.loc 1 311 0
	lwz 0,36(1)
	.loc 1 305 0
	stw 9,76(31)
	.loc 1 311 0
	mtlr 0
	.loc 1 307 0
	stw 9,80(31)
	.loc 1 311 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL613:
	lwz 30,24(1)
.LVL614:
	lwz 31,28(1)
.LVL615:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI102:
	.cfi_def_cfa_offset 0
	blr
.LVL616:
.L444:
.LCFI103:
	.cfi_restore_state
	.loc 1 298 0
	lwz 5,0(30)
	lis 3,menuplyr_pixels@ha
	lwz 0,4(30)
	addi 4,30,8
	la 3,menuplyr_pixels@l(3)
	mullw 5,5,0
	bl memcpy
	b .L437
.LVL617:
.L442:
	.loc 1 282 0
	lis 3,.LC59@ha
	la 3,.LC59@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 30,menu_numcachepics@l(28)
	b .L432
.LVL618:
.L438:
	.loc 1 277 0
	lis 31,menu_cachepics@ha
	la 31,menu_cachepics@l(31)
	b .L432
.LVL619:
.L443:
	.loc 1 291 0
	lis 3,.LC60@ha
.LVL620:
	mr 4,29
	la 3,.LC60@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L436
	.cfi_endproc
.LFE42:
	.size	Draw_CachePic, .-Draw_CachePic
	.align 2
	.globl Draw_PicFromWad
	.type	Draw_PicFromWad, @function
Draw_PicFromWad:
.LFB41:
	.loc 1 223 0
	.cfi_startproc
.LVL621:
	mflr 0
	stwu 1,-64(1)
.LCFI104:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 31,60(1)
	stw 0,68(1)
	.loc 1 227 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl W_GetLumpName
.LVL622:
	mr 31,3
.LVL623:
	.loc 1 231 0
	lwz 3,0(3)
.LVL624:
	cmpwi 7,3,63
	bgt- 7,.L446
	.loc 1 231 0 is_stmt 0 discriminator 1
	lwz 4,4(31)
	cmpwi 7,4,63
	ble- 7,.L456
.L446:
	.loc 1 255 0 is_stmt 1
	mr 3,31
	bl GL_LoadPicTexture
	.loc 1 257 0
	lis 9,.LC10@ha
	lwz 0,.LC10@l(9)
	.loc 1 256 0
	li 9,0
	.loc 1 255 0
	stw 3,8(31)
	.loc 1 262 0
	mr 3,31
	.loc 1 257 0
	stw 0,20(31)
	.loc 1 259 0
	stw 0,24(31)
	.loc 1 262 0
	lwz 0,68(1)
	.loc 1 256 0
	stw 9,12(31)
	.loc 1 262 0
	mtlr 0
	.loc 1 258 0
	stw 9,16(31)
	.loc 1 262 0
	lwz 31,60(1)
.LVL625:
	addi 1,1,64
	.cfi_remember_state
.LCFI105:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL626:
.L456:
.LCFI106:
	.cfi_restore_state
.LBB36:
	.loc 1 237 0
	addi 6,1,8
	addi 5,1,12
	bl Scrap_AllocBlock
.LVL627:
	.loc 1 240 0
	lwz 10,4(31)
	.loc 1 238 0
	li 0,1
	lis 9,scrap_dirty@ha
	.loc 1 240 0
	cmpwi 7,10,0
	.loc 1 238 0
	stb 0,scrap_dirty@l(9)
.LVL628:
	.loc 1 240 0
	lwz 6,8(1)
	ble- 7,.L447
	.loc 1 222 0
	slwi 8,3,10
.LVL629:
	.loc 1 240 0
	lwz 5,12(1)
	.loc 1 222 0
	add 8,8,6
	lis 9,scrap_texels@ha
	slwi 8,8,8
	la 9,scrap_texels@l(9)
	add 8,8,5
	.loc 1 240 0
	lwz 0,0(31)
	.loc 1 222 0
	add 8,8,9
	.loc 1 240 0
	li 7,0
	.loc 1 239 0
	li 11,0
.LVL630:
.L448:
	.loc 1 241 0 discriminator 1
	cmpwi 7,0,0
	li 9,0
	ble- 7,.L451
.LVL631:
.L454:
	.loc 1 222 0 discriminator 2
	add 10,31,11
	.loc 1 241 0 discriminator 2
	addi 11,11,1
.LVL632:
	.loc 1 242 0 discriminator 2
	lbz 0,8(10)
	stbx 0,8,9
	.loc 1 241 0 discriminator 2
	addi 9,9,1
.LVL633:
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L454
	lwz 10,4(31)
.LVL634:
.L451:
	.loc 1 240 0
	addi 7,7,1
.LVL635:
	addi 8,8,256
	cmpw 7,10,7
	bgt+ 7,.L448
.LVL636:
.L450:
	.loc 1 243 0
	lis 9,scrap_texnum@ha
	.loc 1 247 0
	xoris 7,6,0x8000
	.loc 1 243 0
	lwz 11,scrap_texnum@l(9)
	.loc 1 245 0
	lis 9,0x4330
	.loc 1 248 0
	add 6,10,6
	.loc 1 250 0
	lis 8,pic_count@ha
	.loc 1 243 0
	add 3,3,11
.LVL637:
	.loc 1 245 0
	xoris 11,5,0x8000
	.loc 1 244 0
	stw 3,8(31)
	.loc 1 246 0
	add 5,5,0
	.loc 1 245 0
	stw 11,28(1)
	lis 11,.LC4@ha
	stw 9,24(1)
	.loc 1 246 0
	xoris 5,5,0x8000
	.loc 1 245 0
	lfs 12,.LC4@l(11)
	lis 11,.LC62@ha
	lfd 11,24(1)
	.loc 1 248 0
	xoris 6,6,0x8000
	.loc 1 245 0
	lfd 13,.LC62@l(11)
	lis 11,.LC64@ha
	fsub 11,11,12
	lfs 0,.LC64@l(11)
	.loc 1 251 0
	mullw 0,10,0
	lis 11,pic_texels@ha
	lwz 4,pic_texels@l(11)
.LBE36:
	.loc 1 262 0
	mr 3,31
.LVL638:
.LBB37:
	.loc 1 245 0
	fadd 11,11,13
	.loc 1 251 0
	add 0,0,4
	.loc 1 245 0
	fmul 11,11,0
	.loc 1 251 0
	stw 0,pic_texels@l(11)
.LBE37:
	.loc 1 262 0
	lwz 0,68(1)
	mtlr 0
.LBB38:
	.loc 1 245 0
	frsp 11,11
	stfs 11,12(31)
	.loc 1 246 0
	stw 5,36(1)
	stw 9,32(1)
	.loc 1 250 0
	lwz 5,pic_count@l(8)
	.loc 1 246 0
	lfd 11,32(1)
	.loc 1 250 0
	addi 5,5,1
	.loc 1 246 0
	fsub 11,11,12
	.loc 1 250 0
	stw 5,pic_count@l(8)
	.loc 1 246 0
	fsub 11,11,13
	fmul 11,11,0
	frsp 11,11
	stfs 11,20(31)
	.loc 1 247 0
	stw 7,44(1)
	stw 9,40(1)
	lfd 11,40(1)
	fsub 11,11,12
	fadd 11,11,13
	fmul 11,11,0
	frsp 11,11
	stfs 11,16(31)
	.loc 1 248 0
	stw 6,52(1)
	stw 9,48(1)
	lfd 11,48(1)
	fsub 12,11,12
	fsub 13,12,13
	fmul 0,13,0
	frsp 0,0
	stfs 0,24(31)
.LBE38:
	.loc 1 262 0
	lwz 31,60(1)
.LVL639:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 31
.LCFI107:
	.cfi_def_cfa_offset 0
	blr
.LVL640:
.L447:
.LCFI108:
	.cfi_restore_state
.LBB39:
	.loc 1 241 0
	lwz 5,12(1)
	lwz 0,0(31)
	b .L450
.LBE39:
	.cfi_endproc
.LFE41:
	.size	Draw_PicFromWad, .-Draw_PicFromWad
	.align 2
	.globl GL_SelectTexture
	.type	GL_SelectTexture, @function
GL_SelectTexture:
.LFB82:
	.loc 1 2366 0
	.cfi_startproc
.LVL641:
	mflr 0
	stwu 1,-16(1)
.LCFI109:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 2367 0
	lis 9,gl_mtexable@ha
	.loc 1 2366 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 2367 0
	lbz 0,gl_mtexable@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L459
.LVL642:
.L457:
	.loc 1 2375 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL643:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI110:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL644:
.L459:
.LCFI111:
	.cfi_restore_state
	.loc 1 2369 0
	lis 9,qglActiveTextureARB@ha
	lwz 0,qglActiveTextureARB@l(9)
	mtctr 0
	bctrl
.LVL645:
	.loc 1 2370 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 11,220(9)
	cmpw 7,31,11
	beq- 7,.L457
	.loc 1 2372 0
	lis 10,currenttexture@ha
	addis 11,11,0xffff
	lwz 0,currenttexture@l(10)
	addi 11,11,31552
	lis 8,cnttextures@ha
	.loc 1 2373 0
	addis 7,31,0xffff
	.loc 1 2372 0
	la 8,cnttextures@l(8)
	slwi 11,11,2
	stwx 0,8,11
	.loc 1 2373 0
	addi 0,7,31552
	slwi 0,0,2
	.loc 1 2374 0
	stw 31,220(9)
	.loc 1 2373 0
	lwzx 0,8,0
	.loc 1 2375 0
	lwz 31,12(1)
.LVL646:
	.loc 1 2373 0
	stw 0,currenttexture@l(10)
	.loc 1 2375 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_restore 31
.LCFI112:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE82:
	.size	GL_SelectTexture, .-GL_SelectTexture
	.align 2
	.globl sqr
	.type	sqr, @function
sqr:
.LFB83:
	.loc 1 2379 0
	.cfi_startproc
.LVL647:
	.loc 1 2381 0
	fmuls 1,1,1
.LVL648:
	blr
	.cfi_endproc
.LFE83:
	.size	sqr, .-sqr
	.align 2
	.globl GL_Load2DAttenTexture
	.type	GL_Load2DAttenTexture, @function
GL_Load2DAttenTexture:
.LFB84:
	.loc 1 2391 0
	.cfi_startproc
	mflr 0
	stwu 1,-48(1)
.LCFI113:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 2397 0
	li 3,4096
	.loc 1 2391 0
	stw 31,44(1)
	stw 0,52(1)
	stw 30,40(1)
	.loc 1 2397 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl malloc
.LVL649:
	.loc 1 2398 0
	mr. 31,3
	li 3,0
.LVL650:
	beq- 0,.L462
	lis 9,.LC4@ha
	li 5,0
	.loc 1 2405 0
	lfs 10,.LC4@l(9)
	lis 9,.LC65@ha
	lfs 7,.LC65@l(9)
.LBB40:
	.loc 1 2408 0
	lis 9,.LC66@ha
.LBE40:
	.loc 1 2405 0
	fmr 6,10
.LBB46:
	.loc 1 2408 0
	lfs 13,.LC66@l(9)
	.loc 1 2407 0
	fmr 11,7
.LBE46:
	.loc 1 2405 0
	lis 10,0x4330
.LBB47:
	.loc 1 2415 0
	li 6,0
.LBB41:
	.loc 1 2410 0
	lis 7,.LC67@ha
	.loc 1 2412 0
	lis 8,.LC14@ha
.L463:
.LVL651:
.LBE41:
.LBE47:
	.loc 1 2405 0 discriminator 1
	xoris 0,5,0x8000
	stw 10,24(1)
	stw 0,28(1)
.LBB48:
.LBB42:
	.loc 1 2412 0 discriminator 1
	li 0,64
.LBE42:
.LBE48:
	.loc 1 2390 0 discriminator 1
	add 11,31,5
	li 9,0
	.loc 1 2405 0 discriminator 1
	lfd 12,24(1)
.LBB49:
.LBB43:
	.loc 1 2412 0 discriminator 1
	mtctr 0
.LBE43:
.LBE49:
	.loc 1 2405 0 discriminator 1
	fsub 12,12,6
	frsp 12,12
	fsubs 12,12,7
	fmuls 12,12,12
	b .L467
.LVL652:
.L476:
.LBB50:
.LBB44:
	.loc 1 2410 0
	fsubs 0,13,0
.LVL653:
	lfs 8,.LC67@l(7)
	.loc 1 2412 0
	lfs 9,.LC14@l(8)
	addi 4,1,32
.LBE44:
.LBE50:
	.loc 1 2406 0
	addi 9,9,1
.LBB51:
.LBB45:
	.loc 1 2410 0
	fmuls 0,0,8
.LVL654:
	.loc 1 2411 0
	fmuls 0,0,0
.LVL655:
	.loc 1 2412 0
	fmul 0,0,9
.LVL656:
	fctiwz 0,0
	stfiwx 0,0,4
	lwz 0,32(1)
	stb 0,0(11)
.LBE45:
.LBE51:
	.loc 1 2406 0
	addi 11,11,64
	bdz .L475
.LVL657:
.L467:
.LBB52:
	.loc 1 2407 0
	xoris 0,9,0x8000
	stw 10,16(1)
	stw 0,20(1)
	lfd 0,16(1)
	fsub 0,0,10
	frsp 0,0
	fsubs 0,0,11
.LVL658:
	fmadds 0,0,0,12
.LVL659:
	.loc 1 2408 0
	fcmpu 7,0,13
	blt- 7,.L476
	.loc 1 2415 0
	stb 6,0(11)
.LBE52:
	.loc 1 2406 0
	addi 9,9,1
.LVL660:
	addi 11,11,64
	bdnz .L467
.LVL661:
.L475:
	.loc 1 2405 0
	cmpwi 7,5,63
	addi 5,5,1
.LVL662:
	bne+ 7,.L463
	.loc 1 2420 0
	lis 30,texture_extension_number@ha
	lwz 3,texture_extension_number@l(30)
	bl GL_Bind
.LVL663:
	.loc 1 2422 0
	li 5,0
	li 3,3553
	li 4,10242
	ori 5,5,33071
	bl glTexParameteri
	.loc 1 2423 0
	li 5,0
	li 3,3553
	li 4,10243
	ori 5,5,33071
	bl glTexParameteri
	.loc 1 2424 0
	li 3,3553
	li 4,10240
	li 5,9729
	bl glTexParameteri
	.loc 1 2425 0
	li 3,3553
	li 4,10241
	li 5,9729
	bl glTexParameteri
	.loc 1 2427 0
	li 4,0
	li 5,6406
	li 6,64
	li 7,64
	li 8,0
	li 9,6406
	li 10,5121
	li 3,3553
	stw 31,8(1)
	bl glTexImage2D
	.loc 1 2431 0
	mr 3,31
	bl free
	.loc 1 2432 0
	lwz 0,texture_extension_number@l(30)
	addic 0,0,1
	stw 0,texture_extension_number@l(30)
	.loc 1 2434 0
	bl glGetError
.LVL664:
	.loc 1 2436 0
	cmpwi 7,3,0
	beq+ 7,.L469
	.loc 1 2437 0
	bl gluErrorString
.LVL665:
	mr 4,3
	lis 3,.LC68@ha
	la 3,.LC68@l(3)
	crxor 6,6,6
	bl Con_Printf
.L469:
	.loc 1 2440 0
	lwz 3,texture_extension_number@l(30)
	addi 3,3,-1
.L462:
	.loc 1 2441 0
	lwz 0,52(1)
	lwz 30,40(1)
	mtlr 0
	lwz 31,44(1)
.LVL666:
	addi 1,1,48
.LCFI114:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE84:
	.size	GL_Load2DAttenTexture, .-GL_Load2DAttenTexture
	.align 2
	.globl Draw_Init
	.type	Draw_Init, @function
Draw_Init:
.LFB45:
	.loc 1 411 0
	.cfi_startproc
	stwu 1,-120(1)
.LCFI115:
	.cfi_def_cfa_offset 120
	mflr 0
	stw 30,104(1)
	.loc 1 423 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -16
	.cfi_register 65, 0
	la 30,.LANCHOR0@l(30)
	.loc 1 411 0
	stw 0,124(1)
	.loc 1 423 0
	mr 3,30
	.loc 1 411 0
	stw 31,108(1)
	stfd 31,112(1)
	.loc 1 432 0
	lis 31,gl_renderer@ha
	.cfi_offset 63, -8
	.cfi_offset 31, -12
	.cfi_offset 65, 4
	.loc 1 411 0
	stw 26,88(1)
	stw 27,92(1)
	stw 28,96(1)
	stw 29,100(1)
	.loc 1 423 0
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	bl Cvar_RegisterVariable
	.loc 1 424 0
	addi 3,30,132
	bl Cvar_RegisterVariable
	.loc 1 425 0
	addi 3,30,112
	bl Cvar_RegisterVariable
	.loc 1 426 0
	addi 3,30,172
	bl Cvar_RegisterVariable
	.loc 1 427 0
	addi 3,30,152
	bl Cvar_RegisterVariable
	.loc 1 428 0
	addi 3,30,92
	bl Cvar_RegisterVariable
	.loc 1 429 0
	addi 3,30,200
	bl Cvar_RegisterVariable
	.loc 1 432 0
	lwz 3,gl_renderer@l(31)
	lis 4,.LC69@ha
	li 5,4
	la 4,.LC69@l(4)
	bl Q_strncasecmp
	cmpwi 7,3,0
	beq- 7,.L478
	.loc 1 433 0 discriminator 1
	lwz 3,gl_renderer@l(31)
	lis 4,.LC70@ha
	la 4,.LC70@l(4)
	bl strstr
	.loc 1 432 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L479
.L478:
	.loc 1 434 0
	lis 3,.LC71@ha
	lis 4,.LC72@ha
	la 3,.LC71@l(3)
	la 4,.LC72@l(4)
	bl Cvar_Set
.L479:
	.loc 1 436 0
	lis 3,.LC73@ha
	lis 4,Draw_TextureMode_f@ha
	la 3,.LC73@l(3)
	la 4,Draw_TextureMode_f@l(4)
	bl Cmd_AddCommand
	.loc 1 442 0
	lis 3,.LC74@ha
	la 3,.LC74@l(3)
	bl W_GetLumpName
	lis 11,draw_chars@ha
	.loc 1 445 0
	li 0,16384
	.loc 1 442 0
	stw 3,draw_chars@l(11)
.LVL667:
	.loc 1 445 0
	mtctr 0
	.loc 1 442 0
	mr 6,3
	.loc 1 443 0
	li 9,0
	.loc 1 445 0
	li 10,-1
.LVL668:
.L481:
	.loc 1 444 0
	lbzx 0,6,9
	cmpwi 7,0,0
	bne- 7,.L480
	.loc 1 445 0
	stbx 10,6,9
	lwz 6,draw_chars@l(11)
.L480:
	.loc 1 443 0
	addi 9,9,1
.LVL669:
	bdnz .L481
	.loc 1 448 0
	lis 3,.LC75@ha
	li 4,128
	li 5,128
	li 7,0
	li 8,1
	li 9,0
.LVL670:
	la 3,.LC75@l(3)
	bl GL_LoadTexture
	lis 9,char_texture@ha
	stw 3,char_texture@l(9)
	.loc 1 450 0
	bl Hunk_LowMark
	mr 29,3
.LVL671:
	.loc 1 452 0
	lis 3,.LC76@ha
.LVL672:
	la 3,.LC76@l(3)
	bl COM_LoadTempFile
.LVL673:
	.loc 1 453 0
	mr. 28,3
	beq- 0,.L489
.LVL674:
.L482:
	.loc 1 455 0
	mr 3,28
	.loc 1 463 0
	addi 27,1,40
	.loc 1 455 0
	bl SwapPic
	.loc 1 463 0
	lis 9,.LC80@ha
	lfs 1,.LC80@l(9)
	lis 9,.LC82@ha
	lfs 2,.LC82@l(9)
	lis 4,.LC78@ha
	la 4,.LC78@l(4)
	mr 3,27
	creqv 6,6,6
	bl sprintf
	.loc 1 465 0
	mr 3,27
	bl strlen
	li 26,0
	.loc 1 467 0
	cmpwi 7,3,0
	.loc 1 465 0
	slwi 0,3,3
	ori 26,26,59829
	mr 30,3
	subf 26,0,26
	add 26,28,26
	addi 26,26,8
.LVL675:
	.loc 1 467 0
	ble- 7,.L483
	li 31,0
.LVL676:
.L484:
	.loc 1 468 0 discriminator 2
	slwi 4,31,3
	lbzx 3,27,31
	add 4,26,4
	.loc 1 467 0 discriminator 2
	addi 31,31,1
	.loc 1 468 0 discriminator 2
	bl Draw_CharToConback
.LVL677:
	.loc 1 467 0 discriminator 2
	cmpw 7,30,31
	bne+ 7,.L484
.LVL678:
.L483:
	.loc 1 505 0
	lis 9,.LC83@ha
	.loc 1 500 0
	lis 30,conback@ha
.LVL679:
	.loc 1 505 0
	lfs 31,.LC83@l(9)
	li 3,3553
	.loc 1 500 0
	lwz 9,conback@l(30)
	.loc 1 505 0
	li 4,10241
	.loc 1 500 0
	lwz 11,0(28)
	.loc 1 505 0
	fmr 1,31
	.loc 1 501 0
	lwz 0,4(28)
	.loc 1 500 0
	stw 11,0(9)
	.loc 1 501 0
	stw 0,4(9)
.LVL680:
	.loc 1 505 0
	bl glTexParameterf
	.loc 1 506 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
	.loc 1 508 0
	lwz 31,conback@l(30)
.LVL681:
	.loc 1 509 0
	lis 3,.LC84@ha
	addi 6,28,8
	lwz 5,4(31)
	li 7,0
	lwz 4,0(31)
	li 8,0
	li 9,0
	la 3,.LC84@l(3)
	bl GL_LoadTexture
.LVL682:
	.loc 1 514 0
	lis 10,vid@ha
	la 10,vid@l(10)
	.loc 1 511 0
	lis 9,.LC10@ha
	.loc 1 515 0
	lwz 4,24(10)
	.loc 1 514 0
	lwz 0,20(10)
	.loc 1 510 0
	li 10,0
	.loc 1 511 0
	lwz 11,.LC10@l(9)
	.loc 1 514 0
	lwz 9,conback@l(30)
	lis 30,caustics_textures@ha
	.loc 1 510 0
	stw 10,12(31)
	la 30,caustics_textures@l(30)
	.loc 1 511 0
	stw 11,20(31)
	.loc 1 512 0
	stw 10,16(31)
	.loc 1 513 0
	stw 11,24(31)
	.loc 1 509 0
	stw 3,8(31)
	.loc 1 519 0
	mr 3,0
	.loc 1 515 0
	stw 4,4(9)
	.loc 1 548 0
	li 31,0
.LVL683:
	.loc 1 514 0
	stw 0,0(9)
	.loc 1 519 0
	crxor 6,6,6
	bl SHADOW_InitTex
	.loc 1 523 0
	mr 3,29
	bl Hunk_FreeToLowMark
	.loc 1 526 0
	lis 11,texture_extension_number@ha
	lwz 9,texture_extension_number@l(11)
	lis 8,translate_texture@ha
	.loc 1 535 0
	lis 3,.LC85@ha
	lis 29,.LC88@ha
.LVL684:
	.loc 1 526 0
	addi 10,9,1
	.loc 1 530 0
	addi 0,9,3
	.loc 1 526 0
	stw 9,translate_texture@l(8)
	.loc 1 535 0
	la 3,.LC85@l(3)
	.loc 1 529 0
	lis 9,scrap_texnum@ha
	.loc 1 530 0
	stw 0,texture_extension_number@l(11)
	.loc 1 529 0
	stw 10,scrap_texnum@l(9)
	.loc 1 535 0
	bl Draw_PicFromWad
	lis 9,draw_disc@ha
	la 29,.LC88@l(29)
	stw 3,draw_disc@l(9)
	.loc 1 536 0
	lis 3,.LC86@ha
	la 3,.LC86@l(3)
	bl Draw_PicFromWad
	lis 9,draw_backtile@ha
	stw 3,draw_backtile@l(9)
	.loc 1 539 0
	bl GL_Load2DAttenTexture
	lis 9,glow_texture_object@ha
	.loc 1 540 0
	li 0,0
	.loc 1 539 0
	stw 3,glow_texture_object@l(9)
	.loc 1 540 0
	lis 9,atten3d_texture_object@ha
	stw 0,atten3d_texture_object@l(9)
	.loc 1 543 0
	lis 9,normcube_texture_object@ha
	stw 0,normcube_texture_object@l(9)
	.loc 1 546 0
	bl R_LoadVertexProgram
	.loc 1 548 0
	lis 3,.LC87@ha
	la 3,.LC87@l(3)
	bl EasyTgaLoad
	lis 9,halo_texture_object@ha
	stw 3,halo_texture_object@l(9)
.LVL685:
.L485:
.LBB53:
	.loc 1 552 0 discriminator 2
	mr 5,31
	mr 4,29
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
	.loc 1 553 0 discriminator 2
	addi 3,1,8
	bl EasyTgaLoad
.LBE53:
	.loc 1 550 0 discriminator 2
	cmpwi 7,31,28
.LBB54:
	.loc 1 553 0 discriminator 2
	stwx 3,30,31
.LBE54:
	.loc 1 550 0 discriminator 2
	addi 31,31,4
	bne+ 7,.L485
	.loc 1 557 0
	bl InitShaderTex
	.loc 1 559 0
	bl R_InitMirrorChains
	.loc 1 564 0
	lwz 0,124(1)
	lwz 26,88(1)
.LVL686:
	mtlr 0
	lwz 27,92(1)
	lwz 28,96(1)
.LVL687:
	lwz 29,100(1)
	lwz 30,104(1)
	lwz 31,108(1)
	lfd 31,112(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI116:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL688:
.L489:
.LCFI117:
	.cfi_restore_state
	.loc 1 454 0
	lis 3,.LC77@ha
.LVL689:
	la 3,.LC77@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L482
	.cfi_endproc
.LFE45:
	.size	Draw_Init, .-Draw_Init
	.align 2
	.globl GL_Load3DAttenTexture
	.type	GL_Load3DAttenTexture, @function
GL_Load3DAttenTexture:
.LFB85:
	.loc 1 2451 0
	.cfi_startproc
	.loc 1 2518 0
	li 3,0
	blr
	.cfi_endproc
.LFE85:
	.size	GL_Load3DAttenTexture, .-GL_Load3DAttenTexture
	.align 2
	.globl getCubeVector
	.type	getCubeVector, @function
getCubeVector:
.LFB86:
	.loc 1 2529 0
	.cfi_startproc
.LVL690:
	mflr 0
	stwu 1,-48(1)
.LCFI118:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 2532 0
	xoris 5,5,0x8000
.LVL691:
	.loc 1 2533 0
	xoris 6,6,0x8000
.LVL692:
	.loc 1 2532 0
	stw 5,20(1)
	lis 9,.LC4@ha
	.loc 1 2529 0
	stw 0,52(1)
	.loc 1 2532 0
	lis 0,0x4330
	.cfi_offset 65, 4
	stw 0,16(1)
	xoris 4,4,0x8000
.LVL693:
	.loc 1 2533 0
	stw 6,28(1)
	.loc 1 2537 0
	cmplwi 7,3,5
	.loc 1 2533 0
	stw 0,24(1)
	.loc 1 2532 0
	lfs 13,.LC4@l(9)
	lis 9,.LC32@ha
	lfd 0,16(1)
	.loc 1 2533 0
	lfd 12,24(1)
	.loc 1 2532 0
	stw 4,12(1)
	fsub 0,0,13
	stw 0,8(1)
	.loc 1 2533 0
	fsub 12,12,13
	.loc 1 2532 0
	lfs 10,.LC32@l(9)
	.loc 1 2534 0
	lis 9,.LC90@ha
	.loc 1 2532 0
	lfd 11,8(1)
	frsp 0,0
	.loc 1 2533 0
	frsp 12,12
	.loc 1 2529 0
	stw 31,44(1)
	.loc 1 2532 0
	fsub 13,11,13
	.loc 1 2534 0
	lis 31,.LC10@ha
	.cfi_offset 31, -4
	.loc 1 2532 0
	fadds 0,0,10
	.loc 1 2534 0
	lfs 11,.LC90@l(9)
	.loc 1 2533 0
	fadds 10,12,10
	.loc 1 2534 0
	lfs 12,.LC10@l(31)
	.loc 1 2532 0
	frsp 13,13
	.loc 1 2529 0
	stw 30,40(1)
	.loc 1 2529 0
	mr 30,7
	.cfi_offset 30, -8
	.loc 1 2532 0
	fdivs 0,0,13
	.loc 1 2533 0
	fdivs 13,10,13
	.loc 1 2534 0
	fmsubs 0,0,11,12
.LVL694:
	.loc 1 2535 0
	fmsubs 13,13,11,12
.LVL695:
	.loc 1 2537 0
	ble- 7,.L502
	lfs 0,0(7)
.LVL696:
	lfs 13,4(7)
.LVL697:
	lfs 1,8(7)
.LVL698:
.L500:
	.loc 1 2570 0
	fmuls 13,13,13
	fmadds 0,0,0,13
	fmadds 1,1,1,0
	bl sqrt
.LVL699:
	lfs 13,.LC10@l(31)
	.loc 1 2574 0
	lwz 0,52(1)
	.loc 1 2570 0
	fdiv 13,13,1
	.loc 1 2571 0
	lfs 0,0(30)
	.loc 1 2572 0
	lfs 12,4(30)
	.loc 1 2574 0
	mtlr 0
	.loc 1 2573 0
	lfs 11,8(30)
	.loc 1 2574 0
	lwz 31,44(1)
	.loc 1 2570 0
	frsp 13,13
.LVL700:
	.loc 1 2571 0
	fmuls 0,0,13
	.loc 1 2572 0
	fmuls 12,12,13
	.loc 1 2573 0
	fmuls 13,11,13
.LVL701:
	.loc 1 2571 0
	stfs 0,0(30)
	.loc 1 2572 0
	stfs 12,4(30)
	.loc 1 2573 0
	stfs 13,8(30)
	.loc 1 2574 0
	lwz 30,40(1)
.LVL702:
	addi 1,1,48
	.cfi_remember_state
.LCFI119:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL703:
.L502:
.LCFI120:
	.cfi_restore_state
	.loc 1 2537 0
	lis 9,.L499@ha
	slwi 3,3,2
.LVL704:
	la 9,.L499@l(9)
	lwzx 0,9,3
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L499:
	.long .L493-.L499
	.long .L494-.L499
	.long .L495-.L499
	.long .L496-.L499
	.long .L497-.L499
	.long .L498-.L499
	.section	".text"
.L497:
	.loc 1 2560 0
	fneg 13,13
.LVL705:
	.loc 1 2561 0
	lwz 0,.LC10@l(31)
.LVL706:
.L501:
	.loc 1 2564 0
	stfs 0,0(30)
	.loc 1 2565 0
	stfs 13,4(30)
	.loc 1 2566 0
	stw 0,8(30)
	.loc 1 2567 0
	stw 0,32(1)
	lfs 1,32(1)
	b .L500
.LVL707:
.L498:
	.loc 1 2566 0
	lis 9,.LC89@ha
	.loc 1 2564 0
	fneg 0,0
.LVL708:
	.loc 1 2565 0
	fneg 13,13
.LVL709:
	.loc 1 2566 0
	lwz 0,.LC89@l(9)
	b .L501
.LVL710:
.L493:
	.loc 1 2539 0
	lwz 0,.LC10@l(31)
	.loc 1 2541 0
	fneg 1,0
	.loc 1 2540 0
	fneg 13,13
.LVL711:
	.loc 1 2542 0
	stw 0,32(1)
	.loc 1 2541 0
	stfs 1,8(7)
	.loc 1 2539 0
	stw 0,0(7)
	.loc 1 2540 0
	stfs 13,4(7)
	.loc 1 2542 0
	lfs 0,32(1)
.LVL712:
	b .L500
.LVL713:
.L494:
	.loc 1 2544 0
	lis 9,.LC89@ha
	.loc 1 2545 0
	fneg 13,13
.LVL714:
	.loc 1 2544 0
	lwz 0,.LC89@l(9)
	.loc 1 2547 0
	fmr 1,0
	.loc 1 2546 0
	stfs 0,8(7)
	.loc 1 2547 0
	stw 0,32(1)
	.loc 1 2544 0
	stw 0,0(7)
	.loc 1 2545 0
	stfs 13,4(7)
	.loc 1 2547 0
	lfs 0,32(1)
.LVL715:
	b .L500
.LVL716:
.L495:
	.loc 1 2550 0
	lwz 0,.LC10@l(31)
	.loc 1 2552 0
	fmr 1,13
	.loc 1 2551 0
	stfs 13,8(7)
	.loc 1 2552 0
	stw 0,32(1)
	.loc 1 2549 0
	stfs 0,0(7)
	.loc 1 2550 0
	stw 0,4(7)
	.loc 1 2552 0
	lfs 13,32(1)
.LVL717:
	b .L500
.LVL718:
.L496:
	.loc 1 2555 0
	lis 9,.LC89@ha
	.loc 1 2556 0
	fneg 1,13
	.loc 1 2555 0
	lwz 0,.LC89@l(9)
	.loc 1 2554 0
	stfs 0,0(7)
	.loc 1 2557 0
	stw 0,32(1)
	.loc 1 2555 0
	stw 0,4(7)
	.loc 1 2556 0
	stfs 1,8(7)
	.loc 1 2557 0
	lfs 13,32(1)
.LVL719:
	b .L500
	.cfi_endproc
.LFE86:
	.size	getCubeVector, .-getCubeVector
	.align 2
	.globl GL_LoadNormalizationCubemap
	.type	GL_LoadNormalizationCubemap, @function
GL_LoadNormalizationCubemap:
.LFB87:
	.loc 1 2579 0
	.cfi_startproc
	.loc 1 2614 0
	li 3,0
	blr
	.cfi_endproc
.LFE87:
	.size	GL_LoadNormalizationCubemap, .-GL_LoadNormalizationCubemap
	.globl face_names
	.globl modes
	.comm	pic_count,4,4
	.comm	pic_texels,4,4
	.comm	menuplyr_pixels,4096,4
	.comm	menu_numcachepics,4,4
	.comm	menu_cachepics,13824,4
	.comm	scrap_uploads,4,4
	.comm	scrap_texnum,4,4
	.comm	scrap_dirty,1,1
	.comm	scrap_texels,524288,1
	.comm	scrap_allocated,2048,4
	.comm	is_overriden,1,1
	.comm	numgltextures,4,4
	.comm	gltextures,81920,4
	.comm	texels,4,4
	.globl gl_filter_max
	.globl gl_filter_min
	.globl gl_alpha_format
	.globl gl_solid_format
	.globl gl_lightmap_format
	.globl conback
	.comm	conback_buffer,32,4
	.comm	halo_texture_object,4,4
	.comm	atten3d_texture_object,4,4
	.comm	atten2d_texture_object,4,4
	.comm	atten1d_texture_object,4,4
	.comm	normcube_texture_object,4,4
	.comm	glow_texture_object,4,4
	.comm	char_texture,4,4
	.comm	translate_texture,4,4
	.comm	draw_backtile,4,4
	.comm	draw_disc,4,4
	.comm	draw_chars,4,4
	.globl con_clock
	.globl willi_gray_colormaps
	.globl gl_compress_textures
	.globl gl_gloss
	.globl gl_picmip
	.globl gl_max_size
	.globl gl_nobind
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	0
.LC4:
	.4byte	1501560836
.LC8:
	.4byte	1031798784
.LC9:
	.4byte	1175979008
.LC10:
	.4byte	1065353216
.LC12:
	.4byte	1015021568
.LC14:
	.4byte	1132396544
.LC15:
	.4byte	1061997773
.LC17:
	.4byte	1501560832
.LC20:
	.4byte	-943501440
.LC22:
	.4byte	1203982208
.LC23:
	.4byte	1059749626
.LC24:
	.4byte	1199570944
.LC25:
	.4byte	1006699012
.LC27:
	.4byte	998277249
.LC28:
	.4byte	1123942400
.LC29:
	.4byte	1124073472
.LC31:
	.4byte	1048576000
.LC32:
	.4byte	1056964608
.LC34:
	.4byte	1092616192
.LC35:
	.4byte	1082130432
.LC52:
	.4byte	1090519040
.LC53:
	.4byte	1050253722
.LC64:
	.4byte	998244352
.LC65:
	.4byte	1107296256
.LC66:
	.4byte	1149239296
.LC67:
	.4byte	981467136
.LC80:
	.4byte	1065688760
.LC82:
	.4byte	1066108191
.LC83:
	.4byte	1175977984
.LC89:
	.4byte	-1082130432
.LC90:
	.4byte	1073741824
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC18:
	.4byte	0
	.4byte	0
.LC54:
	.4byte	1072902963
	.4byte	858993459
.LC62:
	.4byte	1065646817
	.4byte	1202590843
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	gl_nobind, @object
	.size	gl_nobind, 20
gl_nobind:
	.long	.LC112
	.long	.LC106
	.zero	12
	.type	modes, @object
	.size	modes, 72
modes:
	.long	.LC97
	.long	9728
	.long	9728
	.long	.LC98
	.long	9729
	.long	9729
	.long	.LC99
	.long	9984
	.long	9728
	.long	.LC100
	.long	9985
	.long	9729
	.long	.LC101
	.long	9986
	.long	9728
	.long	.LC102
	.long	9987
	.long	9729
	.type	willi_gray_colormaps, @object
	.size	willi_gray_colormaps, 20
willi_gray_colormaps:
	.long	.LC105
	.long	.LC106
	.zero	12
	.type	gl_picmip, @object
	.size	gl_picmip, 20
gl_picmip:
	.long	.LC110
	.long	.LC106
	.zero	12
	.type	gl_max_size, @object
	.size	gl_max_size, 20
gl_max_size:
	.long	.LC71
	.long	.LC111
	.zero	12
	.type	gl_compress_textures, @object
	.size	gl_compress_textures, 20
gl_compress_textures:
	.long	.LC107
	.long	.LC106
	.zero	12
	.type	gl_gloss, @object
	.size	gl_gloss, 20
gl_gloss:
	.long	.LC108
	.long	.LC109
	.zero	12
	.type	xstep.15180, @object
	.size	xstep.15180, 4
xstep.15180:
	.long	1008981770
	.type	xfactor.15179, @object
	.size	xfactor.15179, 4
xfactor.15179:
	.long	1050253722
	.type	con_clock, @object
	.size	con_clock, 20
con_clock:
	.long	.LC103
	.long	.LC104
	.byte	1
	.zero	11
	.type	oldtarget, @object
	.size	oldtarget, 4
oldtarget:
	.long	33984
	.type	face_names, @object
	.size	face_names, 24
face_names:
	.long	.LC91
	.long	.LC92
	.long	.LC93
	.long	.LC94
	.long	.LC95
	.long	.LC96
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC1:
	.string	"%s\n"
.LC2:
	.string	"current filter is unknown???\n"
	.zero	2
.LC5:
	.string	"bad filter name\n"
	.zero	3
.LC6:
	.string	"Scrap_AllocBlock: full"
	.zero	1
.LC33:
	.string	"GL_LoadTexture: too big"
.LC36:
	.string	"override/%s%s.tga"
	.zero	2
.LC37:
	.string	""
	.zero	3
.LC38:
	.string	"Overriding colormap for %s\n"
.LC39:
	.string	"GL_Upload8: s&3"
.LC40:
	.string	"scrap"
	.zero	2
.LC41:
	.string	"-nobumpmaps"
.LC42:
	.string	"_norm"
	.zero	2
.LC43:
	.string	"Overriding normal map for %s\n"
	.zero	2
.LC44:
	.string	"_gloss"
	.zero	1
.LC45:
	.string	"Using gloss map for %s\n"
.LC46:
	.string	"Error loading gloss map %s: Gloss map bust be the same size as normal map\n"
	.zero	1
.LC47:
	.string	"_bump"
	.zero	2
.LC48:
	.string	"Overriding bumpmap for %s\n"
	.zero	1
.LC49:
	.string	"Error loading gloss map %s: Gloss map bust be the same size as bump map\n"
	.zero	3
.LC50:
	.string	"Out of memory loading %s\n"
	.zero	2
.LC51:
	.string	"Draw_TransPic: bad coordinates"
	.zero	1
.LC55:
	.string	"Time: %s"
	.zero	3
.LC56:
	.string	"%s: warning: cache mismatch\n"
	.zero	3
.LC57:
	.string	"_luma"
	.zero	2
.LC58:
	.string	"Using luma map for %s\n"
	.zero	1
.LC59:
	.string	"menu_numcachepics == MAX_CACHED_PICS"
	.zero	3
.LC60:
	.string	"Draw_CachePic: failed to load %s"
	.zero	3
.LC61:
	.string	"gfx/menuplyr.lmp"
	.zero	3
.LC68:
	.string	"%s"
	.zero	1
.LC69:
	.string	"3dfx"
	.zero	3
.LC70:
	.string	"Glide"
	.zero	2
.LC71:
	.string	"gl_max_size"
.LC72:
	.string	"256"
.LC73:
	.string	"gl_texturemode"
	.zero	1
.LC74:
	.string	"conchars"
	.zero	3
.LC75:
	.string	"charset"
.LC76:
	.string	"gfx/conback.lmp"
.LC77:
	.string	"Couldn't load gfx/conback.lmp"
	.zero	2
.LC78:
	.string	"(st %4.2f) %4.2f"
	.zero	3
.LC84:
	.string	"conback"
.LC85:
	.string	"disc"
	.zero	3
.LC86:
	.string	"backtile"
	.zero	3
.LC87:
	.string	"penta/utflare5.tga"
	.zero	1
.LC88:
	.string	"penta/caust%02.2i.tga"
	.zero	2
.LC91:
	.string	"posx"
	.zero	3
.LC92:
	.string	"negx"
	.zero	3
.LC93:
	.string	"posy"
	.zero	3
.LC94:
	.string	"negy"
	.zero	3
.LC95:
	.string	"posz"
	.zero	3
.LC96:
	.string	"negz"
	.zero	3
.LC97:
	.string	"GL_NEAREST"
	.zero	1
.LC98:
	.string	"GL_LINEAR"
	.zero	2
.LC99:
	.string	"GL_NEAREST_MIPMAP_NEAREST"
	.zero	2
.LC100:
	.string	"GL_LINEAR_MIPMAP_NEAREST"
	.zero	3
.LC101:
	.string	"GL_NEAREST_MIPMAP_LINEAR"
	.zero	3
.LC102:
	.string	"GL_LINEAR_MIPMAP_LINEAR"
.LC103:
	.string	"con_clock"
	.zero	2
.LC104:
	.string	"1"
	.zero	2
.LC105:
	.string	"willi_gray_colormaps"
	.zero	3
.LC106:
	.string	"0"
	.zero	2
.LC107:
	.string	"gl_compress_textures"
	.zero	3
.LC108:
	.string	"gl_gloss"
	.zero	3
.LC109:
	.string	"0.3"
.LC110:
	.string	"gl_picmip"
	.zero	2
.LC111:
	.string	"512"
.LC112:
	.string	"gl_nobind"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	gl_filter_max, @object
	.size	gl_filter_max, 4
gl_filter_max:
	.long	9729
	.type	gl_filter_min, @object
	.size	gl_filter_min, 4
gl_filter_min:
	.long	9985
	.type	gl_alpha_format, @object
	.size	gl_alpha_format, 4
gl_alpha_format:
	.long	32855
	.type	gl_solid_format, @object
	.size	gl_solid_format, 4
gl_solid_format:
	.long	6407
	.type	gl_lightmap_format, @object
	.size	gl_lightmap_format, 4
gl_lightmap_format:
	.long	6407
	.type	conback, @object
	.size	conback, 4
conback:
	.long	conback_buffer
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	nmap.15443, @object
	.size	nmap.15443, 1048576
nmap.15443:
	.zero	1048576
	.type	trans, @object
	.size	trans, 1048576
trans:
	.zero	1048576
	.type	xangle.15178, @object
	.size	xangle.15178, 4
xangle.15178:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/wad.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 9 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2898
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF289
	.byte	0x1
	.4byte	.LASF290
	.4byte	.LASF291
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x72
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x8b
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x9
	.4byte	0x41
	.4byte	0xd8
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x72
	.4byte	0xe8
	.uleb128 0xa
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x48
	.4byte	0xf8
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x108
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x8b
	.4byte	0x11e
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0xa0
	.4byte	0x12e
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1a
	.4byte	0xa0
	.uleb128 0xb
	.byte	0x44
	.byte	0x3
	.byte	0x22
	.4byte	0x230
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x3
	.byte	0x24
	.4byte	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x3
	.byte	0x25
	.4byte	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x3
	.byte	0x26
	.4byte	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x3
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x3
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x3
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x3
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x3
	.byte	0x2b
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x3
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x3
	.byte	0x2e
	.4byte	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x3
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x3
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x3
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x3
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x3
	.byte	0x34
	.4byte	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x3
	.byte	0x36
	.4byte	0x139
	.uleb128 0x9
	.4byte	0x72
	.4byte	0x257
	.uleb128 0xa
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.byte	0x16
	.4byte	0x8b
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x17
	.4byte	0x26d
	.uleb128 0x9
	.4byte	0x257
	.4byte	0x27d
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x2b0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2a
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x5
	.byte	0x2b
	.4byte	0x27d
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x14
	.byte	0x6
	.byte	0x38
	.4byte	0x31c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3a
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3b
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x3c
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x3d
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x3e
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3f
	.4byte	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2bb
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x6
	.byte	0x40
	.4byte	0x2bb
	.uleb128 0x9
	.4byte	0x72
	.4byte	0x33d
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x41
	.4byte	0x34d
	.uleb128 0xf
	.4byte	0x41
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33d
	.uleb128 0x9
	.4byte	0x72
	.4byte	0x363
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0x72
	.4byte	0x373
	.uleb128 0xa
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x14
	.byte	0x7
	.byte	0x52
	.4byte	0x3c6
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x54
	.4byte	0x262
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x55
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x7
	.byte	0x56
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x57
	.4byte	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x10
	.string	"pad"
	.byte	0x7
	.byte	0x58
	.4byte	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x9
	.4byte	0xa0
	.4byte	0x3d6
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x7
	.byte	0x59
	.4byte	0x373
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x48
	.byte	0x7
	.byte	0x5b
	.4byte	0x496
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x5d
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x7
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x7
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x61
	.4byte	0x5bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0x64
	.4byte	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x7
	.byte	0x65
	.4byte	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x7
	.byte	0x66
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x5c
	.byte	0x7
	.byte	0x96
	.4byte	0x5bb
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x7
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x7
	.byte	0x9a
	.4byte	0x6aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x7
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x7
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x7
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x7
	.byte	0xa0
	.4byte	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x7
	.byte	0xa1
	.4byte	0xf8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x7
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x7
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x7
	.byte	0xa5
	.4byte	0x6b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0xa6
	.4byte	0x5bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x7
	.byte	0xa7
	.4byte	0x5bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x7
	.byte	0xa9
	.4byte	0x6b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x7
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x7
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x7
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x7
	.byte	0xb0
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x7
	.byte	0xb1
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x7
	.byte	0xb2
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x7
	.byte	0xb3
	.4byte	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x496
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e1
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x7
	.byte	0x67
	.4byte	0x3e1
	.uleb128 0xb
	.byte	0x2c
	.byte	0x7
	.byte	0x7e
	.4byte	0x613
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0x80
	.4byte	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0x81
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0x82
	.4byte	0x613
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x7
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5c7
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x7
	.byte	0x84
	.4byte	0x5d2
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x1c
	.byte	0x7
	.byte	0x8a
	.4byte	0x693
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0x8c
	.4byte	0x693
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0x8d
	.4byte	0x693
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x7
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0x92
	.4byte	0x699
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x624
	.uleb128 0x5
	.byte	0x4
	.4byte	0x693
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x7
	.byte	0x94
	.4byte	0x624
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3d6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x69f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x619
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x7
	.byte	0xb4
	.4byte	0x496
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6bc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x8
	.byte	0x93
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6ea
	.uleb128 0x11
	.byte	0x1
	.4byte	0x6f6
	.uleb128 0xf
	.4byte	0x6d9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x835
	.4byte	0x6e4
	.uleb128 0x13
	.4byte	.LASF292
	.byte	0x4
	.byte	0x9
	.2byte	0x490
	.4byte	0x762
	.uleb128 0x14
	.string	"U8"
	.byte	0x9
	.2byte	0x492
	.4byte	0x762
	.uleb128 0x14
	.string	"S8"
	.byte	0x9
	.2byte	0x493
	.4byte	0x767
	.uleb128 0x14
	.string	"U16"
	.byte	0x9
	.2byte	0x494
	.4byte	0x76c
	.uleb128 0x14
	.string	"S16"
	.byte	0x9
	.2byte	0x495
	.4byte	0x771
	.uleb128 0x14
	.string	"U32"
	.byte	0x9
	.2byte	0x496
	.4byte	0x776
	.uleb128 0x14
	.string	"S32"
	.byte	0x9
	.2byte	0x497
	.4byte	0x77b
	.uleb128 0x14
	.string	"F32"
	.byte	0x9
	.2byte	0x498
	.4byte	0xab
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x25
	.uleb128 0x8
	.4byte	0x3a
	.uleb128 0x8
	.4byte	0x33
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x8
	.4byte	0x41
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x499
	.4byte	0x702
	.uleb128 0xb
	.byte	0x14
	.byte	0x1
	.byte	0x39
	.4byte	0x7d7
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"sl"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"tl"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"sh"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"th"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3d
	.4byte	0x78c
	.uleb128 0xb
	.byte	0x50
	.byte	0x1
	.byte	0x51
	.4byte	0x831
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x1
	.byte	0x53
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x1
	.byte	0x54
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x55
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x55
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x1
	.byte	0x56
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0x1
	.byte	0x57
	.4byte	0x7e2
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0x6c
	.byte	0x1
	.byte	0xce
	.4byte	0x873
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd0
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"pic"
	.byte	0x1
	.byte	0xd1
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x1
	.byte	0xd2
	.4byte	0x873
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0
	.uleb128 0x9
	.4byte	0xa0
	.4byte	0x883
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x1
	.byte	0xd3
	.4byte	0x83c
	.uleb128 0x15
	.byte	0xc
	.byte	0x1
	.2byte	0x152
	.4byte	0x8c5
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x154
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x156
	.4byte	0x88e
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x88d
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0x94f
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x88d
	.4byte	0x6c
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x88d
	.4byte	0x41
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x88d
	.4byte	0x41
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x88d
	.4byte	0xc2
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x88d
	.4byte	0xb0
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x88d
	.4byte	0xb0
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x88d
	.4byte	0xb0
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x88f
	.4byte	0x41
	.uleb128 0x19
	.string	"glt"
	.byte	0x1
	.2byte	0x890
	.4byte	0x94f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x831
	.uleb128 0x1a
	.byte	0x1
	.string	"sqr"
	.byte	0x1
	.2byte	0x94b
	.byte	0x1
	.4byte	0x8b
	.byte	0x1
	.4byte	0x973
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.2byte	0x94b
	.4byte	0x8b
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x992
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.2byte	0xa12
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x9ba
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x1
	.byte	0x66
	.4byte	0x41
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x166
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST2
	.4byte	0x9f3
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x168
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x20
	.string	"glt"
	.byte	0x1
	.2byte	0x169
	.4byte	0x94f
	.4byte	.LLST4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST5
	.4byte	0xa8c
	.uleb128 0x22
	.string	"w"
	.byte	0x1
	.byte	0x93
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.byte	0x93
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.byte	0x93
	.4byte	0x6d3
	.4byte	.LLST8
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.byte	0x93
	.4byte	0x6d3
	.4byte	.LLST9
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x95
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.byte	0x95
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LASF117
	.byte	0x1
	.byte	0x96
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LASF118
	.byte	0x1
	.byte	0x96
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF99
	.byte	0x1
	.byte	0x97
	.4byte	0x41
	.4byte	.LLST14
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x13a
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb10
	.uleb128 0x26
	.string	"num"
	.byte	0x1
	.2byte	0x13a
	.4byte	0x41
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x13a
	.4byte	0xc2
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"row"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x41
	.4byte	.LLST16
	.uleb128 0x20
	.string	"col"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x13d
	.4byte	0xc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x29
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x13e
	.4byte	0x41
	.4byte	.LLST18
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x41
	.4byte	.LLST19
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST20
	.4byte	0xba8
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x241
	.4byte	0x41
	.4byte	.LLST21
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x241
	.4byte	0x41
	.4byte	.LLST22
	.uleb128 0x26
	.string	"num"
	.byte	0x1
	.2byte	0x241
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x20
	.string	"row"
	.byte	0x1
	.2byte	0x243
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x20
	.string	"col"
	.byte	0x1
	.2byte	0x243
	.4byte	0x41
	.4byte	.LLST25
	.uleb128 0x29
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x244
	.4byte	0x8b
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x244
	.4byte	0x8b
	.4byte	.LLST27
	.uleb128 0x2a
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x244
	.4byte	0x8b
	.byte	0x4
	.4byte	0x3d800000
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x26a
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST28
	.4byte	0xbef
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x26a
	.4byte	0x41
	.4byte	.LLST29
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x26a
	.4byte	0x41
	.4byte	.LLST30
	.uleb128 0x26
	.string	"str"
	.byte	0x1
	.2byte	0x26a
	.4byte	0x6c
	.4byte	.LLST31
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x27d
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xc17
	.uleb128 0x2b
	.string	"num"
	.byte	0x1
	.2byte	0x27d
	.4byte	0x72
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x2d7
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST32
	.4byte	0xcd3
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x41
	.4byte	.LLST34
	.uleb128 0x26
	.string	"pic"
	.byte	0x1
	.2byte	0x2d7
	.4byte	0xcd3
	.4byte	.LLST35
	.uleb128 0x2c
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x2d7
	.4byte	0xc2
	.4byte	.LLST36
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x41
	.4byte	.LLST37
	.uleb128 0x19
	.string	"u"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x41
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x41
	.4byte	.LLST38
	.uleb128 0x28
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x2da
	.4byte	0xcd9
	.byte	0x4
	.byte	0x91
	.sleb128 -16496
	.uleb128 0x29
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x2da
	.4byte	0xcea
	.4byte	.LLST39
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.2byte	0x2db
	.4byte	0xc2
	.4byte	.LLST40
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x41
	.4byte	.LLST41
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2b0
	.uleb128 0x9
	.4byte	0x48
	.4byte	0xcea
	.uleb128 0x2d
	.4byte	0x48
	.2byte	0xfff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x354
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST42
	.4byte	0xd43
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x354
	.4byte	0x41
	.4byte	.LLST43
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x354
	.4byte	0x41
	.4byte	.LLST44
	.uleb128 0x26
	.string	"w"
	.byte	0x1
	.2byte	0x354
	.4byte	0x41
	.4byte	.LLST45
	.uleb128 0x26
	.string	"h"
	.byte	0x1
	.2byte	0x354
	.4byte	0x41
	.4byte	.LLST46
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x36c
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST47
	.4byte	0xda4
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x36c
	.4byte	0x41
	.4byte	.LLST48
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x36c
	.4byte	0x41
	.4byte	.LLST49
	.uleb128 0x26
	.string	"w"
	.byte	0x1
	.2byte	0x36c
	.4byte	0x41
	.4byte	.LLST50
	.uleb128 0x26
	.string	"h"
	.byte	0x1
	.2byte	0x36c
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.2byte	0x36c
	.4byte	0x41
	.4byte	.LLST52
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x386
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST53
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x3bf
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x3ca
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST54
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x3e8
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST55
	.4byte	0xe32
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x3e8
	.4byte	0x6c
	.4byte	.LLST56
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x3ea
	.4byte	0x41
	.4byte	.LLST57
	.uleb128 0x20
	.string	"glt"
	.byte	0x1
	.2byte	0x3eb
	.4byte	0x94f
	.4byte	.LLST58
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x3fd
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST59
	.4byte	0xef7
	.uleb128 0x2b
	.string	"in"
	.byte	0x1
	.2byte	0x3fd
	.4byte	0xc2
	.byte	0x1
	.byte	0x53
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.2byte	0x3fd
	.4byte	0xc2
	.4byte	.LLST60
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x3fd
	.4byte	0x41
	.4byte	.LLST61
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x3fd
	.4byte	0x41
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x41
	.4byte	.LLST62
	.uleb128 0x20
	.string	"xi"
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x41
	.4byte	.LLST63
	.uleb128 0x29
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x41
	.4byte	.LLST64
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x41
	.4byte	.LLST62
	.uleb128 0x29
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x41
	.4byte	.LLST66
	.uleb128 0x28
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x3ff
	.4byte	0x41
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x40c
	.4byte	0x41
	.4byte	.LLST67
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x421
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST68
	.4byte	0x102f
	.uleb128 0x2c
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x421
	.4byte	0x5d
	.4byte	.LLST69
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x421
	.4byte	0x41
	.4byte	.LLST70
	.uleb128 0x2c
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x421
	.4byte	0x41
	.4byte	.LLST71
	.uleb128 0x2c
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x421
	.4byte	0x5d
	.4byte	.LLST72
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x421
	.4byte	0x41
	.4byte	.LLST73
	.uleb128 0x2c
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x421
	.4byte	0x41
	.4byte	.LLST74
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x424
	.4byte	0x41
	.4byte	.LLST75
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.2byte	0x424
	.4byte	0x41
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.string	"yi"
	.byte	0x1
	.2byte	0x424
	.4byte	0x41
	.4byte	.LLST76
	.uleb128 0x29
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x424
	.4byte	0x41
	.4byte	.LLST77
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.2byte	0x424
	.4byte	0x41
	.4byte	.LLST78
	.uleb128 0x29
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x424
	.4byte	0x41
	.4byte	.LLST79
	.uleb128 0x29
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x424
	.4byte	0x41
	.4byte	.LLST80
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x425
	.4byte	0xc2
	.4byte	.LLST81
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.2byte	0x425
	.4byte	0xc2
	.4byte	.LLST82
	.uleb128 0x29
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x425
	.4byte	0xc2
	.4byte	.LLST83
	.uleb128 0x29
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x425
	.4byte	0xc2
	.4byte	.LLST84
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x29
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x434
	.4byte	0x41
	.4byte	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x4a1
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST86
	.4byte	0x10f0
	.uleb128 0x2b
	.string	"in"
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x66
	.byte	0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x41
	.4byte	.LLST87
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x41
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"out"
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x66
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x41
	.byte	0x1
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x41
	.byte	0x1
	.byte	0x58
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x4a3
	.4byte	0x41
	.4byte	.LLST88
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x4a3
	.4byte	0x41
	.4byte	.LLST89
	.uleb128 0x29
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x4a4
	.4byte	0x66
	.4byte	.LLST90
	.uleb128 0x29
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x4a5
	.4byte	0x48
	.4byte	.LLST91
	.uleb128 0x28
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x4a5
	.4byte	0x48
	.byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x4c3
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST92
	.4byte	0x1166
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.2byte	0x4c3
	.4byte	0xc2
	.4byte	.LLST93
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x4c3
	.4byte	0x41
	.4byte	.LLST94
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x4c3
	.4byte	0x41
	.4byte	.LLST95
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x4c5
	.4byte	0x41
	.4byte	.LLST96
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x4c5
	.4byte	0x41
	.4byte	.LLST97
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.2byte	0x4c6
	.4byte	0xc2
	.4byte	.LLST98
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x4df
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST99
	.4byte	0x11dc
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.2byte	0x4df
	.4byte	0xc2
	.4byte	.LLST100
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x4df
	.4byte	0x41
	.4byte	.LLST101
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x4df
	.4byte	0x41
	.4byte	.LLST102
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x4e1
	.4byte	0x41
	.4byte	.LLST103
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x4e1
	.4byte	0x41
	.4byte	.LLST104
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.2byte	0x4e2
	.4byte	0xc2
	.4byte	.LLST105
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x4f8
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST106
	.4byte	0x12ba
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.2byte	0x4f8
	.4byte	0xc2
	.4byte	.LLST107
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x4f8
	.4byte	0x41
	.4byte	.LLST108
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x4f8
	.4byte	0x41
	.4byte	.LLST109
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x4fa
	.4byte	0x41
	.4byte	.LLST110
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x4fa
	.4byte	0x41
	.4byte	.LLST111
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.2byte	0x4fb
	.4byte	0xc2
	.4byte	.LLST112
	.uleb128 0x2a
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x4fc
	.4byte	0x8b
	.byte	0x4
	.4byte	0x3b808081
	.uleb128 0x2a
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x4fd
	.4byte	0x8b
	.byte	0x4
	.4byte	0x3c010204
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x4fe
	.4byte	0x8b
	.4byte	.LLST113
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x4fe
	.4byte	0x8b
	.4byte	.LLST114
	.uleb128 0x20
	.string	"z"
	.byte	0x1
	.2byte	0x4fe
	.4byte	0x8b
	.4byte	.LLST115
	.uleb128 0x20
	.string	"l"
	.byte	0x1
	.2byte	0x4fe
	.4byte	0x8b
	.4byte	.LLST116
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.2byte	0x4fe
	.4byte	0x8b
	.4byte	.LLST117
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x533
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST118
	.4byte	0x1379
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.2byte	0x533
	.4byte	0xc2
	.4byte	.LLST119
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x533
	.4byte	0x41
	.4byte	.LLST120
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x533
	.4byte	0x41
	.4byte	.LLST121
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x535
	.4byte	0x41
	.4byte	.LLST122
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x535
	.4byte	0x41
	.4byte	.LLST123
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.2byte	0x536
	.4byte	0xc2
	.4byte	.LLST124
	.uleb128 0x2a
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x537
	.4byte	0x8b
	.byte	0x4
	.4byte	0x3c010204
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x538
	.4byte	0x8b
	.4byte	.LLST125
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x538
	.4byte	0x8b
	.4byte	.LLST126
	.uleb128 0x20
	.string	"z"
	.byte	0x1
	.2byte	0x538
	.4byte	0x8b
	.4byte	.LLST127
	.uleb128 0x20
	.string	"l"
	.byte	0x1
	.2byte	0x538
	.4byte	0x8b
	.4byte	.LLST128
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x55f
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST129
	.4byte	0x1457
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.2byte	0x55f
	.4byte	0xc2
	.4byte	.LLST130
	.uleb128 0x27
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x55f
	.4byte	0x41
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x55f
	.4byte	0x41
	.4byte	.LLST131
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x561
	.4byte	0x41
	.4byte	.LLST132
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x561
	.4byte	0x41
	.4byte	.LLST133
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.2byte	0x562
	.4byte	0x3a
	.4byte	.LLST134
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.2byte	0x562
	.4byte	0x3a
	.4byte	.LLST135
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.2byte	0x562
	.4byte	0x3a
	.4byte	.LLST136
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.2byte	0x563
	.4byte	0xc2
	.4byte	.LLST137
	.uleb128 0x20
	.string	"at1"
	.byte	0x1
	.2byte	0x563
	.4byte	0xc2
	.4byte	.LLST138
	.uleb128 0x20
	.string	"at2"
	.byte	0x1
	.2byte	0x563
	.4byte	0xc2
	.4byte	.LLST139
	.uleb128 0x20
	.string	"at3"
	.byte	0x1
	.2byte	0x563
	.4byte	0xc2
	.4byte	.LLST140
	.uleb128 0x20
	.string	"at4"
	.byte	0x1
	.2byte	0x563
	.4byte	0xc2
	.4byte	.LLST141
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x581
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST142
	.4byte	0x14b0
	.uleb128 0x2c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x581
	.4byte	0xc2
	.4byte	.LLST143
	.uleb128 0x2c
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x581
	.4byte	0xcea
	.4byte	.LLST144
	.uleb128 0x2c
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x581
	.4byte	0x41
	.4byte	.LLST145
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x583
	.4byte	0x41
	.4byte	.LLST146
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x592
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST147
	.4byte	0x1591
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x592
	.4byte	0xcea
	.4byte	.LLST148
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x592
	.4byte	0x41
	.4byte	.LLST149
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x592
	.4byte	0x41
	.4byte	.LLST150
	.uleb128 0x2c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x592
	.4byte	0xb0
	.4byte	.LLST151
	.uleb128 0x2c
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x592
	.4byte	0xb0
	.4byte	.LLST152
	.uleb128 0x29
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x594
	.4byte	0x41
	.4byte	.LLST153
	.uleb128 0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x59b
	.4byte	0x1591
	.4byte	0x20000
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x59c
	.4byte	0xcea
	.4byte	.LLST154
	.uleb128 0x29
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x5a0
	.4byte	0x41
	.4byte	.LLST155
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x5a0
	.4byte	0x41
	.4byte	.LLST156
	.uleb128 0x34
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x602
	.4byte	.L175
	.uleb128 0x35
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x41
	.4byte	.LLST157
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x41
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x61b
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST158
	.4byte	0x169b
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x61b
	.4byte	0xc2
	.4byte	.LLST159
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x61b
	.4byte	0x41
	.4byte	.LLST160
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x61b
	.4byte	0x41
	.4byte	.LLST161
	.uleb128 0x2c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x61b
	.4byte	0xb0
	.4byte	.LLST162
	.uleb128 0x2c
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x61b
	.4byte	0xb0
	.4byte	.LLST163
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.2byte	0x61d
	.4byte	0x41
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.2byte	0x61d
	.4byte	0x41
	.4byte	.LLST164
	.uleb128 0x36
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x61e
	.4byte	0xb0
	.uleb128 0x29
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x61f
	.4byte	0x41
	.4byte	.LLST165
	.uleb128 0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x624
	.4byte	0x1591
	.4byte	0x20000
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x625
	.4byte	0x66
	.4byte	.LLST166
	.uleb128 0x29
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x628
	.4byte	0x41
	.4byte	.LLST167
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x628
	.4byte	0x41
	.4byte	.LLST168
	.uleb128 0x34
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x675
	.4byte	.L214
	.uleb128 0x35
	.4byte	.LBB22
	.4byte	.LBE22
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x665
	.4byte	0x41
	.4byte	.LLST169
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x68e
	.byte	0x1
	.4byte	0xcea
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST170
	.4byte	0x17f6
	.uleb128 0x2c
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x68e
	.4byte	0xc2
	.4byte	.LLST171
	.uleb128 0x26
	.string	"w"
	.byte	0x1
	.2byte	0x68e
	.4byte	0x41
	.4byte	.LLST172
	.uleb128 0x26
	.string	"h"
	.byte	0x1
	.2byte	0x68e
	.4byte	0x41
	.4byte	.LLST173
	.uleb128 0x2c
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x68e
	.4byte	0x8b
	.4byte	.LLST174
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x690
	.4byte	0x41
	.4byte	.LLST175
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x690
	.4byte	0x41
	.4byte	.LLST176
	.uleb128 0x20
	.string	"wr"
	.byte	0x1
	.2byte	0x690
	.4byte	0x41
	.4byte	.LLST177
	.uleb128 0x20
	.string	"hr"
	.byte	0x1
	.2byte	0x690
	.4byte	0x41
	.4byte	.LLST178
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.2byte	0x691
	.4byte	0x2c
	.uleb128 0x19
	.string	"g"
	.byte	0x1
	.2byte	0x691
	.4byte	0x2c
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.2byte	0x691
	.4byte	0x2c
	.uleb128 0x28
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x692
	.4byte	0x17f6
	.byte	0x5
	.byte	0x3
	.4byte	nmap.15443
	.uleb128 0x36
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x693
	.4byte	0x8b
	.uleb128 0x29
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x693
	.4byte	0x8b
	.4byte	.LLST179
	.uleb128 0x20
	.string	"nx"
	.byte	0x1
	.2byte	0x693
	.4byte	0x8b
	.4byte	.LLST180
	.uleb128 0x19
	.string	"ny"
	.byte	0x1
	.2byte	0x693
	.4byte	0x8b
	.uleb128 0x20
	.string	"nz"
	.byte	0x1
	.2byte	0x693
	.4byte	0x8b
	.4byte	.LLST179
	.uleb128 0x2a
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x695
	.4byte	0x1809
	.byte	0x4
	.4byte	0x3b808081
	.uleb128 0x19
	.string	"c"
	.byte	0x1
	.2byte	0x697
	.4byte	0x8b
	.uleb128 0x19
	.string	"cx"
	.byte	0x1
	.2byte	0x697
	.4byte	0x8b
	.uleb128 0x19
	.string	"cy"
	.byte	0x1
	.2byte	0x697
	.4byte	0x8b
	.uleb128 0x20
	.string	"dcx"
	.byte	0x1
	.2byte	0x697
	.4byte	0x8b
	.4byte	.LLST182
	.uleb128 0x20
	.string	"dcy"
	.byte	0x1
	.2byte	0x697
	.4byte	0x8b
	.4byte	.LLST183
	.byte	0
	.uleb128 0x9
	.4byte	0x48
	.4byte	0x1809
	.uleb128 0x37
	.4byte	0x48
	.4byte	0x3ffff
	.byte	0
	.uleb128 0x6
	.4byte	0x8b
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x6be
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST184
	.4byte	0x1903
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x6be
	.4byte	0xc2
	.4byte	.LLST185
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x6be
	.4byte	0x41
	.4byte	.LLST186
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x6be
	.4byte	0x41
	.4byte	.LLST187
	.uleb128 0x2c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x6be
	.4byte	0xb0
	.4byte	.LLST188
	.uleb128 0x2c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x6be
	.4byte	0xc2
	.4byte	.LLST189
	.uleb128 0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x6c6
	.4byte	0x1591
	.4byte	0x20000
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x6c7
	.4byte	0x66
	.4byte	.LLST190
	.uleb128 0x29
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x6c8
	.4byte	0x66
	.4byte	.LLST191
	.uleb128 0x29
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x41
	.4byte	.LLST192
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x6ce
	.4byte	0x41
	.4byte	.LLST193
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x6cf
	.4byte	0xc2
	.4byte	.LLST194
	.uleb128 0x29
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x6d0
	.4byte	0x41
	.4byte	.LLST195
	.uleb128 0x35
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x716
	.4byte	0x41
	.4byte	.LLST196
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x742
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST197
	.4byte	0x19c8
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x742
	.4byte	0xcea
	.4byte	.LLST198
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x742
	.4byte	0x41
	.4byte	.LLST199
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x742
	.4byte	0x41
	.4byte	.LLST200
	.uleb128 0x2c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x742
	.4byte	0xb0
	.4byte	.LLST201
	.uleb128 0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x748
	.4byte	0x1591
	.4byte	0x20000
	.uleb128 0x29
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x749
	.4byte	0xcea
	.4byte	.LLST202
	.uleb128 0x29
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x74c
	.4byte	0x41
	.4byte	.LLST203
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x74c
	.4byte	0x41
	.4byte	.LLST204
	.uleb128 0x29
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x74d
	.4byte	0x41
	.4byte	.LLST205
	.uleb128 0x35
	.4byte	.LBB24
	.4byte	.LBE24
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x785
	.4byte	0x41
	.4byte	.LLST206
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x7b4
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST207
	.4byte	0x1a21
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x7b4
	.4byte	0x6c
	.4byte	.LLST208
	.uleb128 0x2c
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x7b4
	.4byte	0x6c
	.4byte	.LLST209
	.uleb128 0x2c
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x7b4
	.4byte	0x6c
	.4byte	.LLST210
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x7b5
	.4byte	0x48
	.4byte	.LLST211
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x7d1
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST212
	.4byte	0x1bc6
	.uleb128 0x2c
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x7d1
	.4byte	0xc2
	.4byte	.LLST213
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x7d1
	.4byte	0x6c
	.4byte	.LLST214
	.uleb128 0x2c
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x7d1
	.4byte	0x41
	.4byte	.LLST215
	.uleb128 0x2c
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x7d1
	.4byte	0x41
	.4byte	.LLST216
	.uleb128 0x2c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x7d1
	.4byte	0xb0
	.4byte	.LLST217
	.uleb128 0x2c
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x7d1
	.4byte	0xb0
	.4byte	.LLST218
	.uleb128 0x2c
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x7d1
	.4byte	0xb0
	.4byte	.LLST219
	.uleb128 0x29
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x7d8
	.4byte	0x66
	.4byte	.LLST220
	.uleb128 0x29
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x7d9
	.4byte	0x66
	.4byte	.LLST221
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x7df
	.4byte	0x41
	.4byte	.LLST222
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.2byte	0x7df
	.4byte	0x41
	.4byte	.LLST223
	.uleb128 0x29
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x7e0
	.4byte	0xb0
	.4byte	.LLST224
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.2byte	0x7e1
	.4byte	0x41
	.4byte	.LLST225
	.uleb128 0x28
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x7e2
	.4byte	0x247
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.2byte	0x7e3
	.4byte	0xa0
	.4byte	.LLST226
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.2byte	0x7e3
	.4byte	0xa0
	.4byte	.LLST227
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.2byte	0x7e3
	.4byte	0xa0
	.4byte	.LLST228
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x28
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x832
	.4byte	0x247
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x1b8e
	.uleb128 0x28
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x839
	.4byte	0x247
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x29
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x83a
	.4byte	0x41
	.4byte	.LLST229
	.uleb128 0x29
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x83a
	.4byte	0x41
	.4byte	.LLST230
	.byte	0
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x28
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x85b
	.4byte	0x247
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x29
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x85c
	.4byte	0x41
	.4byte	.LLST231
	.uleb128 0x29
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x85c
	.4byte	0x41
	.4byte	.LLST232
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST233
	.4byte	0x1bef
	.uleb128 0x24
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc0
	.4byte	0x41
	.4byte	.LLST234
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2a9
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST235
	.4byte	0x1c45
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x41
	.4byte	.LLST236
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x41
	.4byte	.LLST237
	.uleb128 0x26
	.string	"pic"
	.byte	0x1
	.2byte	0x2a9
	.4byte	0xcd3
	.4byte	.LLST238
	.uleb128 0x20
	.string	"gl"
	.byte	0x1
	.2byte	0x2ab
	.4byte	0x1c45
	.4byte	.LLST239
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d7
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x3ad
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST240
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2c4
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST241
	.4byte	0x1ca8
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x41
	.4byte	.LLST242
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x41
	.4byte	.LLST243
	.uleb128 0x26
	.string	"pic"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xcd3
	.4byte	.LLST244
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x287
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST245
	.4byte	0x1d0e
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x287
	.4byte	0x41
	.4byte	.LLST246
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x287
	.4byte	0x41
	.4byte	.LLST247
	.uleb128 0x26
	.string	"pic"
	.byte	0x1
	.2byte	0x287
	.4byte	0xcd3
	.4byte	.LLST248
	.uleb128 0x2c
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x287
	.4byte	0x8b
	.4byte	.LLST249
	.uleb128 0x20
	.string	"gl"
	.byte	0x1
	.2byte	0x289
	.4byte	0x1c45
	.4byte	.LLST250
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x323
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST251
	.4byte	0x1db8
	.uleb128 0x2c
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x323
	.4byte	0x41
	.4byte	.LLST252
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x325
	.4byte	0x48
	.4byte	.LLST253
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x325
	.4byte	0x48
	.4byte	.LLST254
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x326
	.4byte	0x41
	.4byte	.LLST255
	.uleb128 0x28
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x327
	.4byte	0x8b
	.byte	0x5
	.byte	0x3
	.4byte	xangle.15178
	.uleb128 0x28
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x327
	.4byte	0x8b
	.byte	0x5
	.byte	0x3
	.4byte	xfactor.15179
	.uleb128 0x28
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x327
	.4byte	0x8b
	.byte	0x5
	.byte	0x3
	.4byte	xstep.15180
	.uleb128 0x32
	.string	"tl"
	.byte	0x1
	.2byte	0x329
	.4byte	0x1db8
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x28
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x32a
	.4byte	0x1dc8
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x9
	.4byte	0x72
	.4byte	0x1dc8
	.uleb128 0xa
	.4byte	0x48
	.byte	0x4f
	.byte	0
	.uleb128 0x9
	.4byte	0x72
	.4byte	0x1dd8
	.uleb128 0xa
	.4byte	0x48
	.byte	0x13
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x30b
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST256
	.4byte	0x1e4c
	.uleb128 0x2c
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x30b
	.4byte	0x41
	.4byte	.LLST257
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x30d
	.4byte	0x41
	.4byte	.LLST258
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x30e
	.4byte	0x48
	.4byte	.LLST259
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x30e
	.4byte	0x48
	.4byte	.LLST260
	.uleb128 0x32
	.string	"tl"
	.byte	0x1
	.2byte	0x310
	.4byte	0x1db8
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x28
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x311
	.4byte	0x1dc8
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x39
	.4byte	0x8d1
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST261
	.4byte	0x1f1b
	.uleb128 0x3a
	.4byte	0x8e4
	.4byte	.LLST262
	.uleb128 0x3a
	.4byte	0x8f0
	.4byte	.LLST263
	.uleb128 0x3a
	.4byte	0x8fc
	.4byte	.LLST264
	.uleb128 0x3a
	.4byte	0x908
	.4byte	.LLST265
	.uleb128 0x3a
	.4byte	0x914
	.4byte	.LLST266
	.uleb128 0x3a
	.4byte	0x920
	.4byte	.LLST267
	.uleb128 0x3a
	.4byte	0x92c
	.4byte	.LLST268
	.uleb128 0x3b
	.4byte	0x938
	.4byte	.LLST269
	.uleb128 0x3b
	.4byte	0x942
	.4byte	.LLST270
	.uleb128 0x3c
	.4byte	0x8d1
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0x1
	.2byte	0x88d
	.uleb128 0x3a
	.4byte	0x92c
	.4byte	.LLST271
	.uleb128 0x3a
	.4byte	0x920
	.4byte	.LLST272
	.uleb128 0x3a
	.4byte	0x914
	.4byte	.LLST273
	.uleb128 0x3a
	.4byte	0x908
	.4byte	.LLST274
	.uleb128 0x3a
	.4byte	0x8fc
	.4byte	.LLST275
	.uleb128 0x3a
	.4byte	0x8f0
	.4byte	.LLST276
	.uleb128 0x3a
	.4byte	0x8e4
	.4byte	.LLST277
	.uleb128 0x35
	.4byte	.LBB35
	.4byte	.LBE35
	.uleb128 0x3d
	.4byte	0x938
	.uleb128 0x3b
	.4byte	0x942
	.4byte	.LLST278
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x8b7
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST279
	.4byte	0x1f97
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x8b7
	.4byte	0x6c
	.4byte	.LLST280
	.uleb128 0x2c
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x8b7
	.4byte	0xb0
	.4byte	.LLST281
	.uleb128 0x3e
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x8b9
	.4byte	0xb0
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x8ba
	.4byte	0x247
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x8bb
	.4byte	0x41
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x28
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x8bb
	.4byte	0x41
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x8e4
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB80
	.4byte	.LFE80
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1fc5
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x8e4
	.4byte	0x41
	.4byte	.LLST282
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x934
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1ff3
	.uleb128 0x26
	.string	"pic"
	.byte	0x1
	.2byte	0x934
	.4byte	0xcd3
	.4byte	.LLST283
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x10e
	.byte	0x1
	.4byte	0xcd3
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST284
	.4byte	0x205f
	.uleb128 0x2c
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x10e
	.4byte	0x6c
	.4byte	.LLST285
	.uleb128 0x20
	.string	"pic"
	.byte	0x1
	.2byte	0x110
	.4byte	0x205f
	.4byte	.LLST286
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x111
	.4byte	0x41
	.4byte	.LLST287
	.uleb128 0x20
	.string	"dat"
	.byte	0x1
	.2byte	0x112
	.4byte	0xcd3
	.4byte	.LLST288
	.uleb128 0x20
	.string	"gl"
	.byte	0x1
	.2byte	0x113
	.4byte	0x1c45
	.4byte	.LLST289
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x883
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF214
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	0xcd3
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST290
	.4byte	0x2101
	.uleb128 0x1e
	.4byte	.LASF39
	.byte	0x1
	.byte	0xde
	.4byte	0x6c
	.4byte	.LLST291
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.byte	0xe0
	.4byte	0xcd3
	.4byte	.LLST292
	.uleb128 0x23
	.string	"gl"
	.byte	0x1
	.byte	0xe1
	.4byte	0x1c45
	.4byte	.LLST293
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x40
	.string	"x"
	.byte	0x1
	.byte	0xe9
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x40
	.string	"y"
	.byte	0x1
	.byte	0xe9
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xea
	.4byte	0x41
	.4byte	.LLST294
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.byte	0xea
	.4byte	0x41
	.4byte	.LLST295
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.byte	0xea
	.4byte	0x41
	.4byte	.LLST296
	.uleb128 0x24
	.4byte	.LASF99
	.byte	0x1
	.byte	0xeb
	.4byte	0x41
	.4byte	.LLST297
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x93d
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST298
	.4byte	0x212c
	.uleb128 0x2c
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x93d
	.4byte	0x6d9
	.4byte	.LLST299
	.byte	0
	.uleb128 0x41
	.4byte	0x955
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x214a
	.uleb128 0x3a
	.4byte	0x968
	.4byte	.LLST300
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x956
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST301
	.4byte	0x2201
	.uleb128 0x36
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x959
	.4byte	0x8b
	.uleb128 0x36
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x959
	.4byte	0x8b
	.uleb128 0x36
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x959
	.4byte	0x8b
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.2byte	0x95a
	.4byte	0x41
	.4byte	.LLST302
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.2byte	0x95a
	.4byte	0x41
	.4byte	.LLST303
	.uleb128 0x20
	.string	"err"
	.byte	0x1
	.2byte	0x95a
	.4byte	0x41
	.4byte	.LLST304
	.uleb128 0x29
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x95b
	.4byte	0xc2
	.4byte	.LLST305
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x29
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x967
	.4byte	0x8b
	.4byte	.LLST306
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x36
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x969
	.4byte	0xa0
	.uleb128 0x29
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x96a
	.4byte	0x8b
	.4byte	.LLST307
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x19a
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST308
	.4byte	0x22ce
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x19c
	.4byte	0x41
	.4byte	.LLST309
	.uleb128 0x20
	.string	"cb"
	.byte	0x1
	.2byte	0x19d
	.4byte	0xcd3
	.4byte	.LLST310
	.uleb128 0x29
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x19e
	.4byte	0xc2
	.4byte	.LLST311
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x41
	.4byte	.LLST312
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x41
	.4byte	.LLST313
	.uleb128 0x32
	.string	"ver"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x363
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"gl"
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x1c45
	.4byte	.LLST314
	.uleb128 0x29
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x41
	.4byte	.LLST315
	.uleb128 0x29
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xc2
	.4byte	.LLST316
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x207
	.4byte	0x41
	.byte	0x1
	.4byte	0x22b7
	.uleb128 0x43
	.byte	0
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x140
	.uleb128 0x28
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x227
	.4byte	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	0x973
	.4byte	.LFB85
	.4byte	.LFE85
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x9e0
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST317
	.4byte	0x2385
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x9e0
	.4byte	0x41
	.4byte	.LLST318
	.uleb128 0x2c
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x9e0
	.4byte	0x41
	.4byte	.LLST319
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.2byte	0x9e0
	.4byte	0x41
	.4byte	.LLST320
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.2byte	0x9e0
	.4byte	0x41
	.4byte	.LLST321
	.uleb128 0x2c
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x9e0
	.4byte	0x6cd
	.4byte	.LLST322
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0x8b
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0x8b
	.uleb128 0x20
	.string	"sc"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0x8b
	.4byte	.LLST323
	.uleb128 0x20
	.string	"tc"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0x8b
	.4byte	.LLST324
	.uleb128 0x20
	.string	"mag"
	.byte	0x1
	.2byte	0x9e2
	.4byte	0x8b
	.4byte	.LLST325
	.byte	0
	.uleb128 0x44
	.4byte	0x982
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x28
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x7ca
	.4byte	0x17f6
	.byte	0x5
	.byte	0x3
	.4byte	trans
	.uleb128 0x28
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x93b
	.4byte	0x6d9
	.byte	0x5
	.byte	0x3
	.4byte	oldtarget
	.uleb128 0x45
	.4byte	.LASF230
	.byte	0x2
	.byte	0x63
	.4byte	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"vid"
	.byte	0x3
	.byte	0x38
	.4byte	0x23c
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.4byte	0x23e3
	.uleb128 0xa
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x45
	.4byte	.LASF231
	.byte	0x3
	.byte	0x3a
	.4byte	0x23d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x2400
	.uleb128 0xa
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x45
	.4byte	.LASF232
	.byte	0x3
	.byte	0x3b
	.4byte	0x23f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF233
	.byte	0x1
	.byte	0x2c
	.4byte	0xcd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	draw_disc
	.uleb128 0x45
	.4byte	.LASF234
	.byte	0xa
	.byte	0xb4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF235
	.byte	0x1
	.byte	0x31
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glow_texture_object
	.uleb128 0x47
	.4byte	.LASF236
	.byte	0x1
	.byte	0x32
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normcube_texture_object
	.uleb128 0x47
	.4byte	.LASF237
	.byte	0x1
	.byte	0x36
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	halo_texture_object
	.uleb128 0x47
	.4byte	.LASF238
	.byte	0x1
	.byte	0x33
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	atten1d_texture_object
	.uleb128 0x47
	.4byte	.LASF239
	.byte	0x1
	.byte	0x34
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	atten2d_texture_object
	.uleb128 0x47
	.4byte	.LASF240
	.byte	0x1
	.byte	0x35
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	atten3d_texture_object
	.uleb128 0x46
	.string	"glx"
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"gly"
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF241
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF242
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF243
	.byte	0xa
	.2byte	0x24b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x24ea
	.uleb128 0xa
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x48
	.4byte	.LASF244
	.byte	0xa
	.2byte	0x24d
	.4byte	0x24da
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF245
	.byte	0x1
	.byte	0x4b
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_filter_min
	.uleb128 0x47
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4c
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_filter_max
	.uleb128 0x47
	.4byte	.LASF247
	.byte	0x1
	.byte	0x47
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_lightmap_format
	.uleb128 0x47
	.4byte	.LASF248
	.byte	0x1
	.byte	0x48
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_solid_format
	.uleb128 0x47
	.4byte	.LASF249
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_alpha_format
	.uleb128 0x47
	.4byte	.LASF250
	.byte	0x1
	.byte	0x23
	.4byte	0x322
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_max_size
	.uleb128 0x48
	.4byte	.LASF251
	.byte	0xa
	.2byte	0x2cf
	.4byte	0x322
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF252
	.byte	0x1
	.byte	0x27
	.4byte	0x322
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_compress_textures
	.uleb128 0x48
	.4byte	.LASF253
	.byte	0xa
	.2byte	0x33c
	.4byte	0x79
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x402
	.4byte	0x6f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF255
	.byte	0xa
	.2byte	0x943
	.4byte	0xb0
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x96f
	.4byte	0xb0
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF257
	.byte	0xa
	.2byte	0xc2c
	.4byte	0x6c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x25df
	.uleb128 0xa
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x48
	.4byte	.LASF258
	.byte	0xa
	.2byte	0xc2e
	.4byte	0x25cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF259
	.byte	0x9
	.2byte	0x548
	.4byte	0x25fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x2600
	.uleb128 0x5
	.byte	0x4
	.4byte	0x780
	.uleb128 0x48
	.4byte	.LASF260
	.byte	0xb
	.2byte	0x14d
	.4byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0x2625
	.uleb128 0x2d
	.4byte	0x48
	.2byte	0xffff
	.byte	0
	.uleb128 0x45
	.4byte	.LASF261
	.byte	0x1
	.byte	0x1d
	.4byte	0x2614
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF262
	.byte	0x1
	.byte	0x1f
	.4byte	0x322
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_nobind
	.uleb128 0x47
	.4byte	.LASF263
	.byte	0x1
	.byte	0x25
	.4byte	0x322
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_picmip
	.uleb128 0x47
	.4byte	.LASF264
	.byte	0x1
	.byte	0x26
	.4byte	0x322
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_gloss
	.uleb128 0x47
	.4byte	.LASF265
	.byte	0x1
	.byte	0x28
	.4byte	0x322
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	willi_gray_colormaps
	.uleb128 0x47
	.4byte	.LASF266
	.byte	0x1
	.byte	0x29
	.4byte	0x322
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	con_clock
	.uleb128 0x47
	.4byte	.LASF267
	.byte	0x1
	.byte	0x2b
	.4byte	0xc2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	draw_chars
	.uleb128 0x47
	.4byte	.LASF268
	.byte	0x1
	.byte	0x2d
	.4byte	0xcd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	draw_backtile
	.uleb128 0x47
	.4byte	.LASF269
	.byte	0x1
	.byte	0x2f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	translate_texture
	.uleb128 0x47
	.4byte	.LASF270
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	char_texture
	.uleb128 0x47
	.4byte	.LASF271
	.byte	0x1
	.byte	0x3f
	.4byte	0x873
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	conback_buffer
	.uleb128 0x47
	.4byte	.LASF272
	.byte	0x1
	.byte	0x40
	.4byte	0xcd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	conback
	.uleb128 0x47
	.4byte	.LASF273
	.byte	0x1
	.byte	0x4f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texels
	.uleb128 0x9
	.4byte	0x831
	.4byte	0x271b
	.uleb128 0x2d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x47
	.4byte	.LASF274
	.byte	0x1
	.byte	0x5a
	.4byte	0x270a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gltextures
	.uleb128 0x47
	.4byte	.LASF275
	.byte	0x1
	.byte	0x5b
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numgltextures
	.uleb128 0x47
	.4byte	.LASF276
	.byte	0x1
	.byte	0x5d
	.4byte	0xb0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	is_overriden
	.uleb128 0x9
	.4byte	0x41
	.4byte	0x2767
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.uleb128 0xa
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x47
	.4byte	.LASF277
	.byte	0x1
	.byte	0x8d
	.4byte	0x2751
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scrap_allocated
	.uleb128 0x9
	.4byte	0xa0
	.4byte	0x2792
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.uleb128 0x37
	.4byte	0x48
	.4byte	0x3ffff
	.byte	0
	.uleb128 0x47
	.4byte	.LASF278
	.byte	0x1
	.byte	0x8e
	.4byte	0x2779
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scrap_texels
	.uleb128 0x47
	.4byte	.LASF279
	.byte	0x1
	.byte	0x8f
	.4byte	0xb0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scrap_dirty
	.uleb128 0x47
	.4byte	.LASF280
	.byte	0x1
	.byte	0x90
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scrap_texnum
	.uleb128 0x47
	.4byte	.LASF281
	.byte	0x1
	.byte	0xbc
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scrap_uploads
	.uleb128 0x9
	.4byte	0x883
	.4byte	0x27ea
	.uleb128 0xa
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x47
	.4byte	.LASF282
	.byte	0x1
	.byte	0xd6
	.4byte	0x27da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	menu_cachepics
	.uleb128 0x47
	.4byte	.LASF283
	.byte	0x1
	.byte	0xd7
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	menu_numcachepics
	.uleb128 0x9
	.4byte	0xa0
	.4byte	0x281f
	.uleb128 0x2d
	.4byte	0x48
	.2byte	0xfff
	.byte	0
	.uleb128 0x47
	.4byte	.LASF284
	.byte	0x1
	.byte	0xd9
	.4byte	0x280e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	menuplyr_pixels
	.uleb128 0x47
	.4byte	.LASF285
	.byte	0x1
	.byte	0xdb
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pic_texels
	.uleb128 0x47
	.4byte	.LASF286
	.byte	0x1
	.byte	0xdc
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pic_count
	.uleb128 0x9
	.4byte	0x8c5
	.4byte	0x2865
	.uleb128 0xa
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x49
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x158
	.4byte	0x2855
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	modes
	.uleb128 0x9
	.4byte	0x6c
	.4byte	0x2888
	.uleb128 0xa
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x49
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x8d5
	.4byte	0x2878
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	face_names
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x49
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
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	gltextures
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI8-.Ltext0
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
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL33-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL33-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL33-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL33-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x7
	.byte	0x79
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL56-1-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 2147483640
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51-1-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL56-1-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 2147483640
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB47-.Ltext0
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
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 16512
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL76-1-.Ltext0
	.2byte	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL76-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL76-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-1-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0xb
	.byte	0x91
	.sleb128 -140
	.byte	0x6
	.byte	0xc
	.4byte	0x80000000
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81-1-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81-1-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL81-1-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x7
	.byte	0x79
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB61-.Ltext0
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
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	gltextures
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0xc
	.4byte	0x80000000
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL126-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126-1-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL126-1-.Ltext0
	.2byte	0xb
	.byte	0x91
	.sleb128 -164
	.byte	0x6
	.byte	0xc
	.4byte	0x80000000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL126-1-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL126-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL122-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL121-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-1-.Ltext0
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL126-1-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL126-1-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL126-1-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -144
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL162-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL180-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL188-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 320
	.4byte	.LCFI44-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL255-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL237-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL301-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL261-1-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL284-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL261-1-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL284-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL291-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL291-1-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL303-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL284-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL291-1-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL295-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL302-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL295-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL302-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL291-1-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL330-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL306-1-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL330-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL306-1-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL330-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL330-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL333-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL330-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL336-1-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL340-1-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL343-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL323-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL336-1-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 176
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL369-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL367-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL398-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL372-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL372-1-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL414-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL372-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL372-1-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL398-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL372-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL372-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL372-1-.Ltext0
	.4byte	.LVL394-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL398-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL398-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL398-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL401-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL401-1-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL405-1-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL405-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL408-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL413-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL401-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL401-1-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL401-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL401-1-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL438-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL418-1-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL438-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL418-1-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL438-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL418-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL438-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL420-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL441-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL441-1-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL445-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL445-1-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL451-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL445-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL452-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL453-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL441-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL441-1-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL450-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL441-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL441-1-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL453-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL457-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL458-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL455-.Ltext0
	.4byte	.LVL458-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL463-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL459-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL461-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL463-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL465-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL465-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI69-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 472
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI71-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 472
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL467-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL492-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL496-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL505-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL468-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL468-1-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL490-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL468-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL468-1-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL468-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL468-1-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL468-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL468-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL493-.Ltext0
	.4byte	.LVL494-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL468-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL470-.Ltext0
	.4byte	.LVL488-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL490-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL471-.Ltext0
	.4byte	.LVL472-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL490-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL479-.Ltext0
	.4byte	.LVL480-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL483-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL491-.Ltext0
	.4byte	.LVL492-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL474-1-.Ltext0
	.2byte	0x8
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL474-1-.Ltext0
	.4byte	.LVL475-.Ltext0
	.2byte	0x6
	.byte	0x87
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL494-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL496-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x6
	.byte	0x87
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL500-.Ltext0
	.4byte	.LVL502-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL477-.Ltext0
	.4byte	.LVL478-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0xc
	.byte	0x7b
	.sleb128 0
	.byte	0x6
	.byte	0xc
	.4byte	0xff0000
	.byte	0x1a
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0xa
	.byte	0x7b
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.2byte	0xff00
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 3
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	.LVL513-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	.LVL509-.Ltext0
	.4byte	.LVL510-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	.LVL513-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL513-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -464
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL490-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	.LVL495-.Ltext0
	.4byte	.LVL496-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	.LVL506-.Ltext0
	.4byte	.LVL507-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	.LVL512-.Ltext0
	.4byte	.LVL513-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -460
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI73-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL514-.Ltext0
	.4byte	.LVL515-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL516-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL516-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI75-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL517-.Ltext0
	.4byte	.LVL518-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL518-1-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL517-.Ltext0
	.4byte	.LVL518-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL518-1-.Ltext0
	.4byte	.LVL520-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL517-.Ltext0
	.4byte	.LVL518-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL518-1-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LFB58-.Ltext0
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
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST241:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI79-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI81-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL525-.Ltext0
	.4byte	.LVL526-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL527-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL527-.Ltext0
	.4byte	.LVL528-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL528-.Ltext0
	.4byte	.LVL529-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST243:
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL524-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL531-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL524-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL530-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI82-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI83-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST246:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL533-1-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL533-1-.Ltext0
	.4byte	.LVL536-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST248:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL533-1-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST249:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL533-1-.Ltext0
	.4byte	.LVL534-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST250:
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST251:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI85-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI86-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI87-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST252:
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL542-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL553-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL553-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST253:
	.4byte	.LVL549-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST254:
	.4byte	.LVL549-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL550-.Ltext0
	.4byte	.LVL551-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL552-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST255:
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL541-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL544-.Ltext0
	.4byte	.LVL545-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL546-1-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL553-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL553-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST256:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI88-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI89-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI90-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI91-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST257:
	.4byte	.LVL555-.Ltext0
	.4byte	.LVL557-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL557-.Ltext0
	.4byte	.LVL559-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL560-.Ltext0
	.4byte	.LVL562-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL562-.Ltext0
	.4byte	.LVL564-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL564-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 14
	.byte	0x9f
	.4byte	.LVL570-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST258:
	.4byte	.LVL556-.Ltext0
	.4byte	.LVL558-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL560-.Ltext0
	.4byte	.LVL561-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL561-.Ltext0
	.4byte	.LVL563-1-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL565-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL570-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST259:
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST260:
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL568-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL569-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL569-.Ltext0
	.4byte	.LVL571-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST261:
	.4byte	.LFB78-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI92-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI93-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI94-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST262:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL584-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL585-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST263:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL585-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST264:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL582-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL585-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST265:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL585-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST266:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST267:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST268:
	.4byte	.LVL572-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST269:
	.4byte	.LVL573-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL575-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST270:
	.4byte	.LVL573-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	gltextures
	.byte	0x9f
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST271:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST272:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST273:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST274:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST275:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST276:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST277:
	.4byte	.LVL578-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST278:
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST279:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI97-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI98-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST280:
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL587-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL587-.Ltext0
	.4byte	.LVL588-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL589-.Ltext0
	.4byte	.LVL591-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL591-1-.Ltext0
	.4byte	.LVL592-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL592-.Ltext0
	.4byte	.LVL593-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST281:
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL587-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL589-.Ltext0
	.4byte	.LVL590-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST282:
	.4byte	.LVL597-.Ltext0
	.4byte	.LVL598-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST283:
	.4byte	.LVL599-.Ltext0
	.4byte	.LVL600-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL600-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL602-1-.Ltext0
	.2byte	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST284:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI99-.Ltext0
	.4byte	.LCFI100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI100-.Ltext0
	.4byte	.LCFI101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI101-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI102-.Ltext0
	.4byte	.LCFI103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI103-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST285:
	.4byte	.LVL603-.Ltext0
	.4byte	.LVL604-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL604-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL613-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL616-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST286:
	.4byte	.LVL603-.Ltext0
	.4byte	.LVL604-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	menu_cachepics
	.byte	0x9f
	.4byte	.LVL605-.Ltext0
	.4byte	.LVL606-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL609-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL617-.Ltext0
	.4byte	.LVL618-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL618-.Ltext0
	.4byte	.LVL619-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	menu_cachepics
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST287:
	.4byte	.LVL603-.Ltext0
	.4byte	.LVL604-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL605-.Ltext0
	.4byte	.LVL606-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL608-.Ltext0
	.4byte	.LVL609-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL617-.Ltext0
	.4byte	.LVL618-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL618-.Ltext0
	.4byte	.LVL619-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST288:
	.4byte	.LVL610-.Ltext0
	.4byte	.LVL611-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL611-.Ltext0
	.4byte	.LVL614-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL616-.Ltext0
	.4byte	.LVL617-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL619-.Ltext0
	.4byte	.LVL620-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL620-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST289:
	.4byte	.LVL612-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x4
	.byte	0x8f
	.sleb128 72
	.byte	0x9f
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL616-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST290:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI104-.Ltext0
	.4byte	.LCFI105-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI105-.Ltext0
	.4byte	.LCFI106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI106-.Ltext0
	.4byte	.LCFI107-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI107-.Ltext0
	.4byte	.LCFI108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI108-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST291:
	.4byte	.LVL621-.Ltext0
	.4byte	.LVL622-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST292:
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL624-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL624-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL625-.Ltext0
	.4byte	.LVL626-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL626-.Ltext0
	.4byte	.LVL639-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL639-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL640-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST293:
	.4byte	.LVL623-.Ltext0
	.4byte	.LVL624-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL624-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL625-.Ltext0
	.4byte	.LVL626-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL626-.Ltext0
	.4byte	.LVL639-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL639-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL640-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST294:
	.4byte	.LVL628-.Ltext0
	.4byte	.LVL630-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL635-.Ltext0
	.4byte	.LVL636-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL640-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST295:
	.4byte	.LVL630-.Ltext0
	.4byte	.LVL631-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL633-.Ltext0
	.4byte	.LVL634-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST296:
	.4byte	.LVL628-.Ltext0
	.4byte	.LVL630-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL630-.Ltext0
	.4byte	.LVL632-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL632-.Ltext0
	.4byte	.LVL633-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL633-.Ltext0
	.4byte	.LVL636-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL640-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST297:
	.4byte	.LVL627-.Ltext0
	.4byte	.LVL636-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL636-.Ltext0
	.4byte	.LVL637-.Ltext0
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	scrap_texnum
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL637-.Ltext0
	.4byte	.LVL638-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL638-.Ltext0
	.4byte	.LVL639-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 8
	.4byte	.LVL639-.Ltext0
	.4byte	.LVL640-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL640-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST298:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI109-.Ltext0
	.4byte	.LCFI110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI110-.Ltext0
	.4byte	.LCFI111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI111-.Ltext0
	.4byte	.LCFI112-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI112-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST299:
	.4byte	.LVL641-.Ltext0
	.4byte	.LVL642-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL642-.Ltext0
	.4byte	.LVL643-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL644-.Ltext0
	.4byte	.LVL645-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL645-1-.Ltext0
	.4byte	.LVL646-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL646-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	oldtarget
	.4byte	0
	.4byte	0
.LLST300:
	.4byte	.LVL647-.Ltext0
	.4byte	.LVL648-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST301:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI113-.Ltext0
	.4byte	.LCFI114-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI114-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST302:
	.4byte	.LVL661-.Ltext0
	.4byte	.LVL662-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL662-.Ltext0
	.4byte	.LVL663-1-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -20
	.byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST303:
	.4byte	.LVL651-.Ltext0
	.4byte	.LVL652-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL654-.Ltext0
	.4byte	.LVL657-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL660-.Ltext0
	.4byte	.LVL663-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST304:
	.4byte	.LVL664-.Ltext0
	.4byte	.LVL665-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST305:
	.4byte	.LVL649-.Ltext0
	.4byte	.LVL650-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL650-.Ltext0
	.4byte	.LVL666-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST306:
	.4byte	.LVL652-.Ltext0
	.4byte	.LVL653-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL659-.Ltext0
	.4byte	.LVL661-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST307:
	.4byte	.LVL655-.Ltext0
	.4byte	.LVL656-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST308:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI115-.Ltext0
	.4byte	.LCFI116-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	.LCFI116-.Ltext0
	.4byte	.LCFI117-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI117-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0
	.4byte	0
.LLST309:
	.4byte	.LVL667-.Ltext0
	.4byte	.LVL668-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL669-.Ltext0
	.4byte	.LVL670-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST310:
	.4byte	.LVL673-.Ltext0
	.4byte	.LVL674-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL674-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL688-.Ltext0
	.4byte	.LVL689-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL689-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST311:
	.4byte	.LVL675-.Ltext0
	.4byte	.LVL686-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST312:
	.4byte	.LVL675-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL677-.Ltext0
	.4byte	.LVL678-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST313:
	.4byte	.LVL675-.Ltext0
	.4byte	.LVL676-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL676-.Ltext0
	.4byte	.LVL679-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST314:
	.4byte	.LVL681-.Ltext0
	.4byte	.LVL682-1-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	conback
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL682-1-.Ltext0
	.4byte	.LVL683-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST315:
	.4byte	.LVL671-.Ltext0
	.4byte	.LVL672-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL672-.Ltext0
	.4byte	.LVL684-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL688-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST316:
	.4byte	.LVL680-.Ltext0
	.4byte	.LVL687-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST317:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI118-.Ltext0
	.4byte	.LCFI119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI119-.Ltext0
	.4byte	.LCFI120-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI120-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST318:
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL698-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL703-.Ltext0
	.4byte	.LVL704-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST319:
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL693-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL693-.Ltext0
	.4byte	.LVL699-1-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL703-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST320:
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL691-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL691-.Ltext0
	.4byte	.LVL699-1-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL703-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x7
	.byte	0x75
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST321:
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL692-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL692-.Ltext0
	.4byte	.LVL699-1-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL703-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x7
	.byte	0x76
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST322:
	.4byte	.LVL690-.Ltext0
	.4byte	.LVL699-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL699-1-.Ltext0
	.4byte	.LVL702-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL703-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST323:
	.4byte	.LVL694-.Ltext0
	.4byte	.LVL696-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL703-.Ltext0
	.4byte	.LVL706-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL708-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL710-.Ltext0
	.4byte	.LVL712-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL715-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL715-.Ltext0
	.4byte	.LVL716-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL716-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST324:
	.4byte	.LVL695-.Ltext0
	.4byte	.LVL697-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL703-.Ltext0
	.4byte	.LVL705-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL707-.Ltext0
	.4byte	.LVL709-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL710-.Ltext0
	.4byte	.LVL711-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL713-.Ltext0
	.4byte	.LVL714-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL716-.Ltext0
	.4byte	.LVL717-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL717-.Ltext0
	.4byte	.LVL718-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL718-.Ltext0
	.4byte	.LVL719-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST325:
	.4byte	.LVL700-.Ltext0
	.4byte	.LVL701-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
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
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF222:
	.string	"FallOff"
.LASF65:
	.string	"plane"
.LASF279:
	.string	"scrap_dirty"
.LASF85:
	.string	"mipadjust"
.LASF137:
	.string	"Scrap_AllocBlock"
.LASF124:
	.string	"frow"
.LASF193:
	.string	"glosspix"
.LASF115:
	.string	"GL_Bind"
.LASF269:
	.string	"translate_texture"
.LASF167:
	.string	"gloss"
.LASF270:
	.string	"char_texture"
.LASF273:
	.string	"texels"
.LASF66:
	.string	"flags"
.LASF218:
	.string	"centerx"
.LASF219:
	.string	"centery"
.LASF17:
	.string	"buffer"
.LASF249:
	.string	"gl_alpha_format"
.LASF266:
	.string	"con_clock"
.LASF113:
	.string	"GL_Load3DAttenTexture"
.LASF125:
	.string	"fcol"
.LASF44:
	.string	"next"
.LASF182:
	.string	"nmap"
.LASF157:
	.string	"frac"
.LASF217:
	.string	"GL_Load2DAttenTexture"
.LASF174:
	.string	"scaled_height"
.LASF140:
	.string	"inwidth"
.LASF160:
	.string	"GL_MipMapGray"
.LASF211:
	.string	"GL_LoadPicTexture"
.LASF206:
	.string	"xstep"
.LASF38:
	.string	"qpic_t"
.LASF146:
	.string	"GL_ResampleTexture"
.LASF16:
	.string	"pixel_t"
.LASF103:
	.string	"gltexture_t"
.LASF151:
	.string	"oldy"
.LASF199:
	.string	"Draw_BeginDisc"
.LASF221:
	.string	"DistSq"
.LASF172:
	.string	"scaled"
.LASF144:
	.string	"endx"
.LASF152:
	.string	"endy"
.LASF139:
	.string	"GL_ResampleTextureLerpLine"
.LASF33:
	.string	"direct"
.LASF162:
	.string	"inv255"
.LASF25:
	.string	"numpages"
.LASF272:
	.string	"conback"
.LASF262:
	.string	"gl_nobind"
.LASF284:
	.string	"menuplyr_pixels"
.LASF244:
	.string	"cnttextures"
.LASF69:
	.string	"texturemins"
.LASF188:
	.string	"GL_UploadNormal"
.LASF0:
	.string	"signed char"
.LASF176:
	.string	"GL_Upload8_EXT_"
.LASF150:
	.string	"outheight"
.LASF250:
	.string	"gl_max_size"
.LASF99:
	.string	"texnum"
.LASF84:
	.string	"vecs"
.LASF180:
	.string	"pixels"
.LASF156:
	.string	"GL_Resample8BitTexture"
.LASF10:
	.string	"float"
.LASF21:
	.string	"rowbytes"
.LASF261:
	.string	"d_15to8table"
.LASF242:
	.string	"glheight"
.LASF133:
	.string	"Draw_Fill"
.LASF102:
	.string	"mipmap"
.LASF42:
	.string	"server"
.LASF130:
	.string	"translation"
.LASF233:
	.string	"draw_disc"
.LASF31:
	.string	"maxwarpwidth"
.LASF54:
	.string	"gl_texturenum"
.LASF6:
	.string	"long long unsigned int"
.LASF202:
	.string	"Draw_SpiralConsoleBackground"
.LASF228:
	.string	"vector"
.LASF200:
	.string	"Draw_TransPic"
.LASF203:
	.string	"lines"
.LASF117:
	.string	"best"
.LASF291:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF171:
	.string	"maxsize"
.LASF169:
	.string	"GL_Upload32"
.LASF286:
	.string	"pic_count"
.LASF247:
	.string	"gl_lightmap_format"
.LASF80:
	.string	"cached_light"
.LASF43:
	.string	"value"
.LASF258:
	.string	"caustics_textures"
.LASF56:
	.string	"texturechain"
.LASF28:
	.string	"conrowbytes"
.LASF236:
	.string	"normcube_texture_object"
.LASF78:
	.string	"lightmaptexturenum"
.LASF216:
	.string	"target"
.LASF57:
	.string	"anim_total"
.LASF254:
	.string	"qglActiveTextureARB"
.LASF22:
	.string	"width"
.LASF285:
	.string	"pic_texels"
.LASF292:
	.string	"_wgpipe"
.LASF15:
	.string	"_Bool"
.LASF118:
	.string	"best2"
.LASF29:
	.string	"conwidth"
.LASF237:
	.string	"halo_texture_object"
.LASF112:
	.string	"GL_LoadTexture"
.LASF97:
	.string	"PFNGLACTIVETEXTUREARBPROC"
.LASF187:
	.string	"scaledgloss"
.LASF108:
	.string	"maximize"
.LASF213:
	.string	"path"
.LASF267:
	.string	"draw_chars"
.LASF245:
	.string	"gl_filter_min"
.LASF263:
	.string	"gl_picmip"
.LASF86:
	.string	"texture"
.LASF20:
	.string	"fullbright"
.LASF290:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_draw.c"
.LASF275:
	.string	"numgltextures"
.LASF19:
	.string	"colormap16"
.LASF98:
	.string	"WGPipe"
.LASF158:
	.string	"fracstep"
.LASF226:
	.string	"getCubeVector"
.LASF287:
	.string	"modes"
.LASF214:
	.string	"Draw_PicFromWad"
.LASF8:
	.string	"char"
.LASF255:
	.string	"gl_mtexable"
.LASF81:
	.string	"cached_dlight"
.LASF194:
	.string	"filename"
.LASF128:
	.string	"Draw_DebugChar"
.LASF251:
	.string	"sh_bumpmaps"
.LASF210:
	.string	"GL_LoadCubeMap_"
.LASF40:
	.string	"string"
.LASF142:
	.string	"oldx"
.LASF64:
	.string	"visframe"
.LASF116:
	.string	"Draw_TextureMode_f"
.LASF281:
	.string	"scrap_uploads"
.LASF153:
	.string	"inrow"
.LASF37:
	.string	"data"
.LASF87:
	.string	"mtexinfo_t"
.LASF293:
	.string	"SHADOW_InitTex"
.LASF109:
	.string	"glmode_t"
.LASF238:
	.string	"atten1d_texture_object"
.LASF161:
	.string	"GL_MipMapNormal"
.LASF123:
	.string	"Draw_Character"
.LASF24:
	.string	"aspect"
.LASF257:
	.string	"causticschain"
.LASF256:
	.string	"gl_texcomp"
.LASF75:
	.string	"texinfo"
.LASF132:
	.string	"Draw_TileClear"
.LASF100:
	.string	"glpic_t"
.LASF18:
	.string	"colormap"
.LASF82:
	.string	"samples"
.LASF5:
	.string	"long long int"
.LASF143:
	.string	"fstep"
.LASF105:
	.string	"padding"
.LASF76:
	.string	"dlightframe"
.LASF225:
	.string	"ncdata"
.LASF268:
	.string	"draw_backtile"
.LASF205:
	.string	"xfactor"
.LASF198:
	.string	"Draw_Pic"
.LASF145:
	.string	"lerp"
.LASF183:
	.string	"sqlen"
.LASF181:
	.string	"scale"
.LASF134:
	.string	"Draw_FadeScreen"
.LASF253:
	.string	"gl_renderer"
.LASF230:
	.string	"LittleLong"
.LASF41:
	.string	"archive"
.LASF235:
	.string	"glow_texture_object"
.LASF126:
	.string	"size"
.LASF163:
	.string	"inv127"
.LASF49:
	.string	"dist"
.LASF55:
	.string	"gl_lumitex"
.LASF175:
	.string	"miplevel"
.LASF53:
	.string	"texture_s"
.LASF83:
	.string	"texture_t"
.LASF114:
	.string	"GL_LoadNormalizationCubemap"
.LASF280:
	.string	"scrap_texnum"
.LASF23:
	.string	"height"
.LASF63:
	.string	"msurface_s"
.LASF95:
	.string	"msurface_t"
.LASF147:
	.string	"indata"
.LASF220:
	.string	"radiussq"
.LASF35:
	.string	"vec_t"
.LASF159:
	.string	"GL_MipMap"
.LASF178:
	.string	"done"
.LASF149:
	.string	"outdata"
.LASF127:
	.string	"Draw_String"
.LASF179:
	.string	"genNormalMap"
.LASF74:
	.string	"shadowchain"
.LASF3:
	.string	"short unsigned int"
.LASF58:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF91:
	.string	"lightTimestamp"
.LASF70:
	.string	"extents"
.LASF282:
	.string	"menu_cachepics"
.LASF229:
	.string	"oldtarget"
.LASF148:
	.string	"inheight"
.LASF71:
	.string	"light_s"
.LASF119:
	.string	"Draw_CharToConback"
.LASF129:
	.string	"Draw_TransPicTranslate"
.LASF277:
	.string	"scrap_allocated"
.LASF34:
	.string	"viddef_t"
.LASF248:
	.string	"gl_solid_format"
.LASF138:
	.string	"GL_FindTexture"
.LASF2:
	.string	"short int"
.LASF239:
	.string	"atten2d_texture_object"
.LASF207:
	.string	"timebuf"
.LASF32:
	.string	"maxwarpheight"
.LASF278:
	.string	"scrap_texels"
.LASF288:
	.string	"face_names"
.LASF12:
	.string	"long int"
.LASF231:
	.string	"d_8to24table"
.LASF51:
	.string	"signbits"
.LASF168:
	.string	"length"
.LASF72:
	.string	"light_t"
.LASF62:
	.string	"offsets"
.LASF234:
	.string	"texture_extension_number"
.LASF27:
	.string	"conbuffer"
.LASF96:
	.string	"GLenum"
.LASF189:
	.string	"GL_GetOverrideName"
.LASF265:
	.string	"willi_gray_colormaps"
.LASF90:
	.string	"numverts"
.LASF185:
	.string	"oneOver255"
.LASF68:
	.string	"numedges"
.LASF264:
	.string	"gl_gloss"
.LASF61:
	.string	"alternate_anims"
.LASF184:
	.string	"reciplen"
.LASF135:
	.string	"Draw_EndDisc"
.LASF79:
	.string	"styles"
.LASF141:
	.string	"outwidth"
.LASF121:
	.string	"source"
.LASF39:
	.string	"name"
.LASF224:
	.string	"start"
.LASF4:
	.string	"unsigned int"
.LASF101:
	.string	"identifier"
.LASF104:
	.string	"cachepic_s"
.LASF106:
	.string	"cachepic_t"
.LASF232:
	.string	"d_8to8graytable"
.LASF59:
	.string	"anim_max"
.LASF111:
	.string	"bump"
.LASF186:
	.string	"GL_UploadBump"
.LASF252:
	.string	"gl_compress_textures"
.LASF274:
	.string	"gltextures"
.LASF60:
	.string	"anim_next"
.LASF7:
	.string	"long unsigned int"
.LASF154:
	.string	"row1"
.LASF155:
	.string	"row2"
.LASF208:
	.string	"Draw_ConsoleBackground"
.LASF212:
	.string	"Draw_CachePic"
.LASF110:
	.string	"alpha"
.LASF204:
	.string	"xangle"
.LASF195:
	.string	"gloss_width"
.LASF241:
	.string	"glwidth"
.LASF88:
	.string	"glpoly_s"
.LASF94:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF243:
	.string	"currenttexture"
.LASF196:
	.string	"gloss_height"
.LASF201:
	.string	"Draw_AlphaPic"
.LASF48:
	.string	"normal"
.LASF173:
	.string	"scaled_width"
.LASF50:
	.string	"type"
.LASF177:
	.string	"noalpha"
.LASF1:
	.string	"unsigned char"
.LASF215:
	.string	"GL_SelectTexture"
.LASF46:
	.string	"cvar_s"
.LASF45:
	.string	"cvar_t"
.LASF289:
	.string	"GNU C 4.6.3"
.LASF73:
	.string	"polys"
.LASF209:
	.string	"GL_LoadLuma"
.LASF30:
	.string	"conheight"
.LASF122:
	.string	"drawline"
.LASF190:
	.string	"tail"
.LASF92:
	.string	"neighbours"
.LASF191:
	.string	"GL_Upload8"
.LASF246:
	.string	"gl_filter_max"
.LASF107:
	.string	"minimize"
.LASF170:
	.string	"texturemode"
.LASF197:
	.string	"Scrap_Upload"
.LASF136:
	.string	"GL_Set2D"
.LASF271:
	.string	"conback_buffer"
.LASF227:
	.string	"cubesize"
.LASF26:
	.string	"recalc_refdef"
.LASF89:
	.string	"chain"
.LASF259:
	.string	"wgPipe"
.LASF93:
	.string	"firstvertex"
.LASF165:
	.string	"GL_MipMap8Bit"
.LASF276:
	.string	"is_overriden"
.LASF164:
	.string	"GL_Normalize"
.LASF9:
	.string	"double"
.LASF166:
	.string	"GL_PackGloss"
.LASF47:
	.string	"mplane_s"
.LASF52:
	.string	"mplane_t"
.LASF77:
	.string	"dlightbits"
.LASF36:
	.string	"vec3_t"
.LASF260:
	.string	"host_basepal"
.LASF120:
	.string	"dest"
.LASF223:
	.string	"Draw_Init"
.LASF283:
	.string	"menu_numcachepics"
.LASF131:
	.string	"trans"
.LASF240:
	.string	"atten3d_texture_object"
.LASF14:
	.string	"qboolean"
.LASF192:
	.string	"bumppix"
.LASF67:
	.string	"firstedge"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
