	.file	"geom.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __gl_vertLeq
	.type	__gl_vertLeq, @function
__gl_vertLeq:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/geom.c"
	.loc 1 48 0
	.cfi_startproc
.LVL0:
	.loc 1 51 0
	lfd 13,40(3)
	.loc 1 48 0
	mr 9,3
	.loc 1 51 0
	lfd 0,40(4)
	li 3,1
.LVL1:
	fcmpu 7,13,0
	bltlr- 7
	.loc 1 51 0 is_stmt 0 discriminator 2
	bne- 7,.L4
	.loc 1 51 0 discriminator 1
	lfd 13,48(9)
	lfd 0,48(4)
	fcmpu 7,13,0
	cror 30,28,30
	mfcr 3
	rlwinm 3,3,31,1
	blr
.L4:
	.loc 1 51 0
	li 3,0
	.loc 1 52 0 is_stmt 1
	blr
	.cfi_endproc
.LFE0:
	.size	__gl_vertLeq, .-__gl_vertLeq
	.align 2
	.globl __gl_edgeEval
	.type	__gl_edgeEval, @function
__gl_edgeEval:
.LFB1:
	.loc 1 55 0
	.cfi_startproc
.LVL2:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 68 0
	lfd 13,40(3)
	lfd 0,40(4)
	fcmpu 7,13,0
	fcmpu 6,13,0
	blt- 7,.L7
	.cfi_offset 65, 4
	.loc 1 68 0 is_stmt 0 discriminator 1
	bne- 6,.L8
	.loc 1 68 0 discriminator 2
	lfd 11,48(3)
	lfd 12,48(4)
	fcmpu 7,11,12
	cror 30,28,30
	bne- 7,.L8
.L7:
	lfd 12,40(5)
	fcmpu 7,0,12
	fcmpu 6,0,12
	blt- 7,.L9
	.loc 1 68 0 discriminator 3
	bne- 6,.L8
	.loc 1 68 0 discriminator 1
	lfd 10,48(4)
	lfd 11,48(5)
	fcmpu 7,10,11
	cror 30,28,30
	bne- 7,.L8
.L9:
	.loc 1 70 0 is_stmt 1
	fsub 13,0,13
.LVL3:
	.loc 1 73 0
	lis 9,.LC0@ha
	.loc 1 71 0
	fsub 0,12,0
.LVL4:
	.loc 1 73 0
	lfd 1,.LC0@l(9)
	fadd 11,13,0
	fcmpu 7,11,1
	bng- 7,.L10
	.loc 1 74 0
	fcmpu 7,13,0
	blt- 7,.L19
	.loc 1 77 0
	fdiv 0,0,11
.LVL5:
	lfd 10,48(5)
	lfd 1,48(3)
	lfd 13,48(4)
.LVL6:
	fsub 1,10,1
	fsub 10,13,10
	fmadd 1,1,0,10
.L10:
	.loc 1 82 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL7:
.L19:
.LCFI2:
	.cfi_restore_state
	.loc 1 75 0
	fdiv 13,13,11
.LVL8:
	.loc 1 82 0
	lwz 0,12(1)
	.loc 1 75 0
	lfd 12,48(3)
	lfd 1,48(5)
	.loc 1 82 0
	mtlr 0
	.loc 1 75 0
	lfd 0,48(4)
.LVL9:
	.loc 1 82 0
	addi 1,1,8
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.loc 1 75 0
	fsub 1,12,1
	fsub 12,0,12
	fmadd 1,1,13,12
	.loc 1 82 0
	blr
.L8:
.LCFI4:
	.cfi_restore_state
	.loc 1 68 0 discriminator 1
	lis 3,.LC1@ha
.LVL10:
	lis 5,.LANCHOR0@ha
.LVL11:
	lis 6,.LC2@ha
	la 3,.LC1@l(3)
	li 4,68
.LVL12:
	la 5,.LANCHOR0@l(5)
	la 6,.LC2@l(6)
	bl __assert_func
	.cfi_endproc
.LFE1:
	.size	__gl_edgeEval, .-__gl_edgeEval
	.align 2
	.globl __gl_edgeSign
	.type	__gl_edgeSign, @function
__gl_edgeSign:
.LFB2:
	.loc 1 85 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-8(1)
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 92 0
	lfd 13,40(3)
	lfd 0,40(4)
	fcmpu 7,13,0
	fcmpu 6,13,0
	blt- 7,.L21
	.cfi_offset 65, 4
	.loc 1 92 0 is_stmt 0 discriminator 1
	bne- 6,.L22
	.loc 1 92 0 discriminator 2
	lfd 11,48(3)
	lfd 12,48(4)
	fcmpu 7,11,12
	cror 30,28,30
	bne- 7,.L22
.L21:
	lfd 12,40(5)
	fcmpu 7,0,12
	fcmpu 6,0,12
	bnl- 7,.L29
.L23:
	.loc 1 94 0 is_stmt 1
	fsub 13,0,13
.LVL14:
	.loc 1 97 0
	lis 9,.LC0@ha
	.loc 1 95 0
	fsub 0,12,0
.LVL15:
	.loc 1 97 0
	lfd 1,.LC0@l(9)
	fadd 12,13,0
	fcmpu 7,12,1
	bng- 7,.L24
	.loc 1 98 0
	lfd 11,48(4)
	lfd 12,48(3)
	lfd 1,48(5)
	fsub 12,11,12
	fsub 1,11,1
	fmul 0,12,0
.LVL16:
	fmadd 1,1,13,0
.L24:
	.loc 1 102 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL17:
.L29:
.LCFI7:
	.cfi_restore_state
	.loc 1 92 0 discriminator 3
	bne- 6,.L22
	.loc 1 92 0 is_stmt 0 discriminator 1
	lfd 10,48(4)
	lfd 11,48(5)
	fcmpu 7,10,11
	cror 30,28,30
	beq+ 7,.L23
.L22:
	lis 5,.LANCHOR0@ha
.LVL18:
	lis 3,.LC1@ha
.LVL19:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC2@ha
	la 3,.LC1@l(3)
	li 4,92
.LVL20:
	addi 5,5,16
	la 6,.LC2@l(6)
	bl __assert_func
	.cfi_endproc
.LFE2:
	.size	__gl_edgeSign, .-__gl_edgeSign
	.align 2
	.globl __gl_transEval
	.type	__gl_transEval, @function
__gl_transEval:
.LFB3:
	.loc 1 110 0 is_stmt 1
	.cfi_startproc
.LVL21:
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 123 0
	lfd 13,48(3)
	lfd 0,48(4)
	fcmpu 7,13,0
	fcmpu 6,13,0
	blt- 7,.L31
	.cfi_offset 65, 4
	.loc 1 123 0 is_stmt 0 discriminator 1
	bne- 6,.L32
	.loc 1 123 0 discriminator 2
	lfd 11,40(3)
	lfd 12,40(4)
	fcmpu 7,11,12
	cror 30,28,30
	bne- 7,.L32
.L31:
	lfd 12,48(5)
	fcmpu 7,0,12
	fcmpu 6,0,12
	blt- 7,.L33
	.loc 1 123 0 discriminator 3
	bne- 6,.L32
	.loc 1 123 0 discriminator 1
	lfd 10,40(4)
	lfd 11,40(5)
	fcmpu 7,10,11
	cror 30,28,30
	bne- 7,.L32
.L33:
	.loc 1 125 0 is_stmt 1
	fsub 13,0,13
.LVL22:
	.loc 1 128 0
	lis 9,.LC0@ha
	.loc 1 126 0
	fsub 0,12,0
.LVL23:
	.loc 1 128 0
	lfd 1,.LC0@l(9)
	fadd 11,13,0
	fcmpu 7,11,1
	bng- 7,.L34
	.loc 1 129 0
	fcmpu 7,13,0
	blt- 7,.L43
	.loc 1 132 0
	fdiv 0,0,11
.LVL24:
	lfd 10,40(5)
	lfd 1,40(3)
	lfd 13,40(4)
.LVL25:
	fsub 1,10,1
	fsub 10,13,10
	fmadd 1,1,0,10
.L34:
	.loc 1 137 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL26:
.L43:
.LCFI10:
	.cfi_restore_state
	.loc 1 130 0
	fdiv 13,13,11
.LVL27:
	.loc 1 137 0
	lwz 0,12(1)
	.loc 1 130 0
	lfd 12,40(3)
	lfd 1,40(5)
	.loc 1 137 0
	mtlr 0
	.loc 1 130 0
	lfd 0,40(4)
.LVL28:
	.loc 1 137 0
	addi 1,1,8
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	.loc 1 130 0
	fsub 1,12,1
	fsub 12,0,12
	fmadd 1,1,13,12
	.loc 1 137 0
	blr
.L32:
.LCFI12:
	.cfi_restore_state
	.loc 1 123 0 discriminator 1
	lis 5,.LANCHOR0@ha
.LVL29:
	lis 3,.LC1@ha
.LVL30:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC1@l(3)
	li 4,123
.LVL31:
	addi 5,5,32
	la 6,.LC3@l(6)
	bl __assert_func
	.cfi_endproc
.LFE3:
	.size	__gl_transEval, .-__gl_transEval
	.align 2
	.globl __gl_transSign
	.type	__gl_transSign, @function
__gl_transSign:
.LFB4:
	.loc 1 140 0
	.cfi_startproc
.LVL32:
	mflr 0
	stwu 1,-8(1)
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 147 0
	lfd 13,48(3)
	lfd 0,48(4)
	fcmpu 7,13,0
	fcmpu 6,13,0
	blt- 7,.L45
	.cfi_offset 65, 4
	.loc 1 147 0 is_stmt 0 discriminator 1
	bne- 6,.L46
	.loc 1 147 0 discriminator 2
	lfd 11,40(3)
	lfd 12,40(4)
	fcmpu 7,11,12
	cror 30,28,30
	bne- 7,.L46
.L45:
	lfd 12,48(5)
	fcmpu 7,0,12
	fcmpu 6,0,12
	bnl- 7,.L53
.L47:
	.loc 1 149 0 is_stmt 1
	fsub 13,0,13
.LVL33:
	.loc 1 152 0
	lis 9,.LC0@ha
	.loc 1 150 0
	fsub 0,12,0
.LVL34:
	.loc 1 152 0
	lfd 1,.LC0@l(9)
	fadd 12,13,0
	fcmpu 7,12,1
	bng- 7,.L48
	.loc 1 153 0
	lfd 11,40(4)
	lfd 12,40(3)
	lfd 1,40(5)
	fsub 12,11,12
	fsub 1,11,1
	fmul 0,12,0
.LVL35:
	fmadd 1,1,13,0
.L48:
	.loc 1 157 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL36:
.L53:
.LCFI15:
	.cfi_restore_state
	.loc 1 147 0 discriminator 3
	bne- 6,.L46
	.loc 1 147 0 is_stmt 0 discriminator 1
	lfd 10,40(4)
	lfd 11,40(5)
	fcmpu 7,10,11
	cror 30,28,30
	beq+ 7,.L47
.L46:
	lis 5,.LANCHOR0@ha
.LVL37:
	lis 3,.LC1@ha
.LVL38:
	la 5,.LANCHOR0@l(5)
	lis 6,.LC3@ha
	la 3,.LC1@l(3)
	li 4,147
.LVL39:
	addi 5,5,48
	la 6,.LC3@l(6)
	bl __assert_func
	.cfi_endproc
.LFE4:
	.size	__gl_transSign, .-__gl_transSign
	.align 2
	.globl __gl_vertCCW
	.type	__gl_vertCCW, @function
__gl_vertCCW:
.LFB5:
	.loc 1 161 0 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 168 0
	lfd 13,48(3)
	lis 9,.LC0@ha
	lfd 12,48(5)
	lfd 11,40(4)
	fsub 10,12,13
	lfd 0,48(4)
	fsub 12,0,12
	fmul 11,10,11
	lfd 10,40(3)
	.loc 1 169 0
	.loc 1 168 0
	fsub 13,13,0
	lfd 0,40(5)
	fmadd 12,10,12,11
	lfd 11,.LC0@l(9)
	fmadd 0,0,13,12
	fcmpu 7,0,11
	cror 30,29,30
	.loc 1 169 0
	mfcr 3
	rlwinm 3,3,31,1
.LVL41:
	blr
	.cfi_endproc
.LFE5:
	.size	__gl_vertCCW, .-__gl_vertCCW
	.align 2
	.globl __gl_edgeIntersect
	.type	__gl_edgeIntersect, @function
__gl_edgeIntersect:
.LFB6:
	.loc 1 217 0
	.cfi_startproc
.LVL42:
	mflr 0
	stwu 1,-96(1)
.LCFI16:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	stw 27,20(1)
	mr 27,7
	.cfi_offset 27, -76
	stw 0,100(1)
	stw 28,24(1)
	mr 28,6
	.cfi_offset 28, -72
	.cfi_offset 65, 4
	.loc 1 228 0
	lfd 0,40(3)
	lfd 13,40(4)
	.loc 1 217 0
	stw 29,28(1)
	mr 29,3
	.cfi_offset 29, -68
	.loc 1 228 0
	fcmpu 7,0,13
	.loc 1 217 0
	stw 30,32(1)
	stw 31,36(1)
	mr 30,5
	.cfi_offset 31, -60
	.cfi_offset 30, -64
	stfd 25,40(1)
	mr 31,4
	stfd 26,48(1)
	.loc 1 228 0
	fcmpu 6,0,13
	.loc 1 217 0
	stfd 27,56(1)
	stfd 28,64(1)
	stfd 29,72(1)
	stfd 30,80(1)
	stfd 31,88(1)
	.loc 1 228 0
	bnl- 7,.L56
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	lfd 29,48(3)
	lfd 28,48(4)
.LVL43:
.L57:
	.loc 1 229 0
	lfd 30,40(30)
	lfd 13,40(28)
	fcmpu 7,30,13
	fcmpu 6,30,13
	bnl- 7,.L60
	lfd 31,48(30)
	lfd 27,48(28)
.LVL44:
.L61:
	.loc 1 230 0
	fcmpu 7,30,0
	fcmpu 6,30,0
	bgt- 7,.L64
	.loc 1 230 0 is_stmt 0 discriminator 1
	beq- 6,.L146
.L65:
.LVL45:
	.loc 1 229 0 is_stmt 1 discriminator 1
	stfd 28,8(1)
	fmr 28,27
	fmr 30,0
	mr 7,31
.LVL46:
	lwz 8,8(1)
	.loc 1 230 0 discriminator 1
	mr 0,29
	.loc 1 229 0 discriminator 1
	lwz 9,12(1)
	.loc 1 230 0 discriminator 1
	mr 31,28
.LVL47:
	.loc 1 229 0 discriminator 1
	stfd 31,8(1)
	fmr 31,29
	.loc 1 230 0 discriminator 1
	mr 29,30
.LVL48:
	mr 28,7
.LVL49:
	.loc 1 229 0 discriminator 1
	lwz 10,8(1)
	.loc 1 230 0 discriminator 1
	mr 30,0
.LVL50:
	.loc 1 229 0 discriminator 1
	stw 8,8(1)
	lwz 11,12(1)
	stw 9,12(1)
	lfd 27,8(1)
	stw 10,8(1)
	stw 11,12(1)
	lfd 29,8(1)
.LVL51:
.L64:
	.loc 1 232 0
	lfd 26,40(31)
	fcmpu 7,30,26
	fcmpu 6,30,26
	blt- 7,.L66
	.loc 1 232 0 is_stmt 0 discriminator 1
	beq- 6,.L147
.L67:
	.loc 1 234 0 is_stmt 1
	fadd 30,30,26
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fmul 30,30,0
	stfd 30,40(27)
.L68:
	.loc 1 251 0
	fcmpu 7,29,28
	fcmpu 6,29,28
	blt- 7,.L92
	.loc 1 251 0 is_stmt 0 discriminator 1
	bne- 6,.L123
	.loc 1 251 0 discriminator 2
	lfd 13,40(29)
	lfd 0,40(31)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L123
.LVL52:
.L92:
	.loc 1 252 0 is_stmt 1
	fcmpu 7,27,31
	fcmpu 6,27,31
	bgt- 7,.L93
	.loc 1 252 0 is_stmt 0 discriminator 1
	bne- 6,.L125
	.loc 1 252 0 discriminator 2
	lfd 13,40(30)
	lfd 0,40(28)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L125
.LVL53:
.L93:
	.loc 1 253 0 is_stmt 1
	fcmpu 7,31,29
	fcmpu 6,31,29
	bgt- 7,.L94
	.loc 1 253 0 is_stmt 0 discriminator 1
	bne- 6,.L127
	.loc 1 253 0 discriminator 2
	lfd 13,40(29)
	lfd 0,40(30)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L127
.LVL54:
.L94:
	.loc 1 255 0 is_stmt 1
	lfd 30,48(31)
	fcmpu 7,31,30
	fcmpu 6,31,30
	blt- 7,.L95
	.loc 1 255 0 is_stmt 0 discriminator 1
	bne- 6,.L96
	lfd 13,40(30)
	lfd 0,40(31)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L96
.L95:
	.loc 1 258 0 is_stmt 1
	lfd 29,48(28)
	fcmpu 7,30,29
	blt- 7,.L98
	.loc 1 258 0 is_stmt 0 discriminator 1
	bne- 7,.L99
	lfd 13,40(31)
	lfd 0,40(28)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L99
.L98:
	.loc 1 260 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_transEval
	.loc 1 261 0
	mr 3,30
	.loc 1 260 0
	fmr 29,1
.LVL55:
	.loc 1 261 0
	mr 4,31
	mr 5,28
	bl __gl_transEval
.LVL56:
	.loc 1 262 0
	lis 9,.LC0@ha
	fadd 13,29,1
	lfd 0,.LC0@l(9)
	fcmpu 7,13,0
	bnl- 7,.L101
	.loc 1 262 0 is_stmt 0 discriminator 1
	fneg 29,29
.LVL57:
	fneg 1,1
.LVL58:
.L101:
	.loc 1 263 0 is_stmt 1
	lfd 0,.LC0@l(9)
	fcmpu 7,29,0
	bnl- 7,.L103
	fmr 29,0
.LVL59:
.L103:
	.loc 1 263 0 is_stmt 0 discriminator 3
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bnl- 7,.L105
	.loc 1 263 0
	fmr 1,0
.LVL60:
.L105:
	.loc 1 263 0 discriminator 3
	fcmpu 7,29,1
	cror 30,28,30
	bne- 7,.L144
	.loc 1 263 0 discriminator 1
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bne- 7,.L109
	fadd 30,31,30
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fmul 30,30,0
	stfd 30,48(27)
.LVL61:
.L149:
	.loc 1 271 0 is_stmt 1
	lwz 0,100(1)
	lwz 27,20(1)
.LVL62:
	mtlr 0
	lwz 28,24(1)
.LVL63:
	lwz 29,28(1)
.LVL64:
	lwz 30,32(1)
.LVL65:
	lwz 31,36(1)
.LVL66:
	lfd 25,40(1)
	lfd 26,48(1)
	lfd 27,56(1)
	lfd 28,64(1)
	lfd 29,72(1)
	lfd 30,80(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
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
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
.LVL67:
.L147:
.LCFI18:
	.cfi_restore_state
	.loc 1 232 0 discriminator 1
	fcmpu 7,28,31
	cror 30,29,30
	bne- 7,.L67
.L66:
	.loc 1 235 0
	lfd 25,40(28)
	fcmpu 7,26,25
	blt- 7,.L69
	.loc 1 235 0 is_stmt 0 discriminator 1
	bne- 7,.L70
	fcmpu 7,27,28
	cror 30,29,30
	bne- 7,.L70
.L69:
	.loc 1 237 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_edgeEval
	.loc 1 238 0
	mr 3,30
	.loc 1 237 0
	fmr 25,1
.LVL68:
	.loc 1 238 0
	mr 4,31
	mr 5,28
	bl __gl_edgeEval
.LVL69:
	.loc 1 239 0
	lis 9,.LC0@ha
	fadd 13,25,1
	lfd 0,.LC0@l(9)
	fcmpu 7,13,0
	bnl- 7,.L72
	.loc 1 239 0 is_stmt 0 discriminator 1
	fneg 25,25
.LVL70:
	fneg 1,1
.LVL71:
.L72:
	.loc 1 240 0 is_stmt 1
	lfd 0,.LC0@l(9)
	fcmpu 7,25,0
	bnl- 7,.L74
	fmr 25,0
.LVL72:
.L74:
	.loc 1 240 0 is_stmt 0 discriminator 3
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bnl- 7,.L76
	.loc 1 240 0
	fmr 1,0
.LVL73:
.L76:
	.loc 1 240 0 discriminator 3
	fcmpu 7,25,1
	cror 30,28,30
	bne- 7,.L142
	.loc 1 240 0 discriminator 1
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bne- 7,.L80
	fadd 26,30,26
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fmul 26,26,0
	stfd 26,40(27)
	b .L68
.LVL74:
.L60:
	.loc 1 229 0 is_stmt 1 discriminator 1
	lfd 27,48(30)
	lfd 31,48(28)
	beq- 6,.L62
.L63:
.LVL75:
	mr 0,30
	fmr 30,13
	mr 30,28
	mr 28,0
	b .L61
.LVL76:
.L56:
	.loc 1 228 0 discriminator 1
	beq- 6,.L58
	.loc 1 228 0 is_stmt 0
	lfd 28,48(3)
	lfd 29,48(4)
.L59:
.LVL77:
	.loc 1 228 0 discriminator 1
	mr 0,29
	fmr 0,13
	mr 29,31
	mr 31,0
	b .L57
.LVL78:
.L146:
	.loc 1 230 0 is_stmt 1 discriminator 2
	fcmpu 7,29,31
	cror 30,28,30
	beq- 7,.L64
	b .L65
.LVL79:
.L62:
	.loc 1 229 0 discriminator 2
	fcmpu 7,27,31
	cror 30,28,30
	bne- 7,.L63
	.loc 1 229 0 is_stmt 0
	stfd 31,8(1)
	fmr 31,27
	lfd 27,8(1)
	b .L61
.LVL80:
.L58:
	.loc 1 228 0 is_stmt 1 discriminator 2
	lfd 29,48(3)
	lfd 28,48(4)
	fcmpu 7,29,28
	cror 30,28,30
	beq- 7,.L57
	.loc 1 228 0 is_stmt 0
	stfd 28,8(1)
	fmr 28,29
	lfd 29,8(1)
	b .L59
.LVL81:
.L70:
	.loc 1 243 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_edgeSign
	.loc 1 244 0
	mr 3,29
	.loc 1 243 0
	fmr 26,1
.LVL82:
	.loc 1 244 0
	mr 4,28
	mr 5,31
	bl __gl_edgeSign
.LVL83:
	.loc 1 245 0
	lis 9,.LC0@ha
	fsub 13,26,1
	lfd 0,.LC0@l(9)
	fcmpu 7,13,0
	bnl- 7,.L148
	.loc 1 245 0 is_stmt 0 discriminator 1
	fneg 26,26
.LVL84:
.L83:
	.loc 1 246 0 is_stmt 1
	lfd 0,.LC0@l(9)
	fcmpu 7,26,0
	bnl- 7,.L84
	fmr 26,0
.LVL85:
.L84:
	.loc 1 246 0 is_stmt 0 discriminator 3
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bnl- 7,.L86
	.loc 1 246 0
	fmr 1,0
.LVL86:
.L86:
	.loc 1 246 0 discriminator 3
	fcmpu 7,26,1
	cror 30,28,30
	bne- 7,.L143
	.loc 1 246 0 discriminator 1
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bne- 7,.L90
	fadd 25,30,25
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fmul 25,25,0
	stfd 25,40(27)
	b .L68
.LVL87:
.L99:
	.loc 1 266 0 is_stmt 1
	mr 3,29
	mr 4,30
	mr 5,31
	bl __gl_transSign
	.loc 1 267 0
	mr 3,29
	.loc 1 266 0
	fmr 30,1
.LVL88:
	.loc 1 267 0
	mr 4,28
	mr 5,31
	bl __gl_transSign
.LVL89:
	.loc 1 268 0
	lis 9,.LC0@ha
	fsub 13,30,1
	lfd 0,.LC0@l(9)
	fcmpu 7,13,0
	blt- 7,.L111
	.loc 1 267 0
	fneg 1,1
.LVL90:
.L112:
	.loc 1 269 0
	lfd 0,.LC0@l(9)
	fcmpu 7,30,0
	bnl- 7,.L113
	fmr 30,0
.LVL91:
.L113:
	.loc 1 269 0 is_stmt 0 discriminator 3
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bnl- 7,.L115
	.loc 1 269 0
	fmr 1,0
.LVL92:
.L115:
	.loc 1 269 0 discriminator 3
	fcmpu 7,30,1
	cror 30,28,30
	bne- 7,.L145
	.loc 1 269 0 discriminator 1
	lfd 0,.LC0@l(9)
	fcmpu 7,1,0
	bne- 7,.L119
	fadd 29,31,29
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fmul 29,29,0
	stfd 29,48(27)
.LVL93:
.L150:
	.loc 1 271 0 is_stmt 1
	lwz 0,100(1)
	lwz 27,20(1)
.LVL94:
	mtlr 0
	lwz 28,24(1)
.LVL95:
	lwz 29,28(1)
.LVL96:
	lwz 30,32(1)
.LVL97:
	lwz 31,36(1)
.LVL98:
	lfd 25,40(1)
	lfd 26,48(1)
	lfd 27,56(1)
	lfd 28,64(1)
	lfd 29,72(1)
	lfd 30,80(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
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
.LCFI19:
	.cfi_def_cfa_offset 0
	blr
.LVL99:
.L123:
.LCFI20:
	.cfi_restore_state
	.loc 1 251 0
	mr 0,29
	fmr 29,28
	mr 29,31
.LVL100:
	mr 31,0
.LVL101:
	b .L92
.LVL102:
.L125:
	.loc 1 252 0
	mr 0,30
	fmr 31,27
	mr 30,28
.LVL103:
	mr 28,0
.LVL104:
	b .L93
.LVL105:
.L127:
	.loc 1 253 0
	mr 9,31
	mr 0,29
	mr 31,28
.LVL106:
	mr 29,30
.LVL107:
	fmr 31,29
	mr 28,9
.LVL108:
	mr 30,0
.LVL109:
	b .L94
.LVL110:
.L96:
	.loc 1 257 0
	fadd 31,31,30
	lis 9,.LC5@ha
	.loc 1 271 0
	lwz 0,100(1)
	.loc 1 257 0
	lfs 0,.LC5@l(9)
	.loc 1 271 0
	mtlr 0
	lwz 28,24(1)
.LVL111:
	.loc 1 257 0
	fmul 31,31,0
	.loc 1 271 0
	lwz 29,28(1)
.LVL112:
	lwz 30,32(1)
.LVL113:
	lwz 31,36(1)
.LVL114:
	lfd 25,40(1)
	.loc 1 257 0
	stfd 31,48(27)
	.loc 1 271 0
	lfd 26,48(1)
	lwz 27,20(1)
.LVL115:
	lfd 27,56(1)
	lfd 28,64(1)
	lfd 29,72(1)
	lfd 30,80(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
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
.LVL116:
.L144:
.LCFI22:
	.cfi_restore_state
	.loc 1 263 0 discriminator 2
	fadd 29,29,1
.LVL117:
	fsub 31,31,30
	fdiv 1,1,29
.LVL118:
	fmadd 30,31,1,30
	stfd 30,48(27)
	b .L149
.LVL119:
.L142:
	.loc 1 240 0 discriminator 2
	fadd 25,25,1
.LVL120:
	fsub 30,30,26
	fdiv 1,1,25
.LVL121:
	fmadd 26,30,1,26
	stfd 26,40(27)
	b .L68
.LVL122:
.L111:
	.loc 1 268 0 discriminator 1
	fneg 30,30
.LVL123:
	b .L112
.LVL124:
.L148:
	.loc 1 244 0
	fneg 1,1
.LVL125:
	b .L83
.LVL126:
.L145:
	.loc 1 269 0 discriminator 2
	fadd 30,30,1
.LVL127:
	fsub 31,31,29
	fdiv 1,1,30
.LVL128:
	fmadd 29,31,1,29
	stfd 29,48(27)
	b .L150
.LVL129:
.L143:
	.loc 1 246 0 discriminator 2
	fadd 26,26,1
.LVL130:
	fsub 30,30,25
	fdiv 1,1,26
.LVL131:
	fmadd 25,30,1,25
	stfd 25,40(27)
	b .L68
.LVL132:
.L109:
	.loc 1 263 0 discriminator 2
	fadd 1,29,1
.LVL133:
	fsub 30,30,31
	fdiv 29,29,1
.LVL134:
	fmadd 30,30,29,31
	stfd 30,48(27)
	b .L149
.LVL135:
.L80:
	.loc 1 240 0 discriminator 2
	fadd 1,25,1
.LVL136:
	fsub 26,26,30
	fdiv 25,25,1
.LVL137:
	fmadd 26,26,25,30
	stfd 26,40(27)
	b .L68
.LVL138:
.L119:
	.loc 1 269 0 discriminator 2
	fadd 1,30,1
.LVL139:
	fsub 29,29,31
	fdiv 30,30,1
.LVL140:
	fmadd 29,29,30,31
	stfd 29,48(27)
	b .L150
.LVL141:
.L90:
	.loc 1 246 0 discriminator 2
	fadd 1,26,1
.LVL142:
	fsub 25,25,30
	fdiv 26,26,1
.LVL143:
	fmadd 25,25,26,30
	stfd 25,40(27)
	b .L68
	.cfi_endproc
.LFE6:
	.size	__gl_edgeIntersect, .-__gl_edgeIntersect
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.8204, @object
	.size	__FUNCTION__.8204, 14
__FUNCTION__.8204:
	.string	"__gl_edgeEval"
	.zero	2
	.type	__FUNCTION__.8212, @object
	.size	__FUNCTION__.8212, 14
__FUNCTION__.8212:
	.string	"__gl_edgeSign"
	.zero	2
	.type	__FUNCTION__.8220, @object
	.size	__FUNCTION__.8220, 15
__FUNCTION__.8220:
	.string	"__gl_transEval"
	.zero	1
	.type	__FUNCTION__.8228, @object
	.size	__FUNCTION__.8228, 15
__FUNCTION__.8228:
	.string	"__gl_transSign"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC5:
	.4byte	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC1:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/geom.c"
.LC2:
	.string	"VertLeq( u, v ) && VertLeq( v, w )"
	.zero	1
.LC3:
	.string	"TransLeq( u, v ) && TransLeq( v, w )"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/mesh.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x535
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x1
	.4byte	.LASF41
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x94
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0xa0
	.4byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x31
	.4byte	0x98
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x40
	.byte	0x3
	.byte	0x79
	.4byte	0x111
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x7a
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7b
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7c
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x80
	.4byte	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"s"
	.byte	0x3
	.byte	0x81
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"t"
	.byte	0x3
	.byte	0x81
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x82
	.4byte	0x71
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x32
	.4byte	0x11c
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x18
	.byte	0x3
	.byte	0x85
	.4byte	0x18b
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x86
	.4byte	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x87
	.4byte	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x88
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x89
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x8c
	.4byte	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x8d
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0x8e
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x3
	.byte	0x33
	.4byte	0x196
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x20
	.byte	0x3
	.byte	0x91
	.4byte	0x213
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x92
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Sym"
	.byte	0x3
	.byte	0x93
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x94
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x3
	.byte	0x95
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"Org"
	.byte	0x3
	.byte	0x96
	.4byte	0x224
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x3
	.byte	0x97
	.4byte	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x3
	.byte	0x9a
	.4byte	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x3
	.byte	0x9b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x3
	.byte	0x35
	.4byte	0x21e
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x18b
	.uleb128 0xb
	.4byte	0x5d
	.4byte	0x240
	.uleb128 0xc
	.4byte	0x21
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x111
	.uleb128 0xa
	.byte	0x4
	.4byte	0x213
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x281
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x2f
	.4byte	0x224
	.4byte	.LLST0
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.4byte	0x224
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.4byte	0x2f4
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x36
	.4byte	0x224
	.4byte	.LLST2
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0x36
	.4byte	0x224
	.4byte	.LLST3
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.byte	0x36
	.4byte	0x224
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x42
	.4byte	0x5d
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x42
	.4byte	0x5d
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF36
	.4byte	0x304
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8204
	.byte	0
	.uleb128 0xb
	.4byte	0x78
	.4byte	0x304
	.uleb128 0xc
	.4byte	0x21
	.byte	0xd
	.byte	0
	.uleb128 0x13
	.4byte	0x2f4
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST7
	.4byte	0x37c
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x54
	.4byte	0x224
	.4byte	.LLST8
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0x54
	.4byte	0x224
	.4byte	.LLST9
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.byte	0x54
	.4byte	0x224
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5a
	.4byte	0x5d
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5a
	.4byte	0x5d
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF36
	.4byte	0x37c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8212
	.byte	0
	.uleb128 0x13
	.4byte	0x2f4
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST13
	.4byte	0x3f4
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x6d
	.4byte	0x224
	.4byte	.LLST14
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0x6d
	.4byte	0x224
	.4byte	.LLST15
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.byte	0x6d
	.4byte	0x224
	.4byte	.LLST16
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x79
	.4byte	0x5d
	.4byte	.LLST17
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x79
	.4byte	0x5d
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LASF36
	.4byte	0x404
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8220
	.byte	0
	.uleb128 0xb
	.4byte	0x78
	.4byte	0x404
	.uleb128 0xc
	.4byte	0x21
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.4byte	0x3f4
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST19
	.4byte	0x47c
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0x8b
	.4byte	0x224
	.4byte	.LLST20
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0x8b
	.4byte	0x224
	.4byte	.LLST21
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.byte	0x8b
	.4byte	0x224
	.4byte	.LLST22
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x91
	.4byte	0x5d
	.4byte	.LLST23
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x91
	.4byte	0x5d
	.4byte	.LLST24
	.uleb128 0x12
	.4byte	.LASF36
	.4byte	0x47c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8228
	.byte	0
	.uleb128 0x13
	.4byte	0x3f4
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4c1
	.uleb128 0xe
	.string	"u"
	.byte	0x1
	.byte	0xa0
	.4byte	0x224
	.4byte	.LLST25
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.byte	0xa0
	.4byte	0x224
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.string	"w"
	.byte	0x1
	.byte	0xa0
	.4byte	0x224
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST26
	.uleb128 0xe
	.string	"o1"
	.byte	0x1
	.byte	0xd2
	.4byte	0x224
	.4byte	.LLST27
	.uleb128 0xe
	.string	"d1"
	.byte	0x1
	.byte	0xd2
	.4byte	0x224
	.4byte	.LLST28
	.uleb128 0xe
	.string	"o2"
	.byte	0x1
	.byte	0xd3
	.4byte	0x224
	.4byte	.LLST29
	.uleb128 0xe
	.string	"d2"
	.byte	0x1
	.byte	0xd3
	.4byte	0x224
	.4byte	.LLST30
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0xd4
	.4byte	0x224
	.4byte	.LLST31
	.uleb128 0x15
	.string	"z1"
	.byte	0x1
	.byte	0xda
	.4byte	0x5d
	.4byte	.LLST32
	.uleb128 0x15
	.string	"z2"
	.byte	0x1
	.byte	0xda
	.4byte	0x5d
	.4byte	.LLST33
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1-.Ltext0
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
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB4-.Ltext0
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
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL56-1-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL69-1-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL83-1-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"GLUvertex"
.LASF39:
	.string	"__gl_vertCCW"
.LASF26:
	.string	"Lnext"
.LASF24:
	.string	"GLUhalfEdge"
.LASF7:
	.string	"GLdouble"
.LASF16:
	.string	"anEdge"
.LASF21:
	.string	"trail"
.LASF28:
	.string	"activeRegion"
.LASF17:
	.string	"data"
.LASF29:
	.string	"winding"
.LASF19:
	.string	"pqHandle"
.LASF18:
	.string	"coords"
.LASF5:
	.string	"float"
.LASF42:
	.string	"__gl_edgeIntersect"
.LASF12:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"inside"
.LASF4:
	.string	"short unsigned int"
.LASF40:
	.string	"GNU C 4.6.3"
.LASF38:
	.string	"__gl_transSign"
.LASF8:
	.string	"double"
.LASF36:
	.string	"__FUNCTION__"
.LASF41:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/geom.c"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"__gl_edgeEval"
.LASF10:
	.string	"char"
.LASF20:
	.string	"GLUface"
.LASF22:
	.string	"marked"
.LASF33:
	.string	"gapL"
.LASF6:
	.string	"GLboolean"
.LASF34:
	.string	"gapR"
.LASF11:
	.string	"long long int"
.LASF35:
	.string	"__gl_edgeSign"
.LASF27:
	.string	"Lface"
.LASF25:
	.string	"Onext"
.LASF37:
	.string	"__gl_transEval"
.LASF3:
	.string	"short int"
.LASF31:
	.string	"__gl_vertLeq"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"ActiveRegion"
.LASF14:
	.string	"next"
.LASF15:
	.string	"prev"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
