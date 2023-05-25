	.file	"project.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	__gluMultMatrixVecd, @function
__gluMultMatrixVecd:
.LFB5:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/project.c"
	.loc 1 90 0
	.cfi_startproc
.LVL0:
	.loc 1 88 0
	li 0,4
	addi 3,3,-8
.LVL1:
	mtctr 0
	li 9,0
.LVL2:
.L2:
	.loc 1 88 0 is_stmt 0 discriminator 2
	addi 3,3,8
	.loc 1 96 0 is_stmt 1 discriminator 2
	lfd 12,8(4)
	lfd 0,32(3)
	.loc 1 95 0 discriminator 2
	lfd 11,0(4)
	.loc 1 96 0 discriminator 2
	fmul 12,12,0
	.loc 1 95 0 discriminator 2
	lfd 0,0(3)
	.loc 1 96 0 discriminator 2
	lfd 13,16(4)
	lfd 10,64(3)
	.loc 1 95 0 discriminator 2
	fmadd 11,11,0,12
	.loc 1 97 0 discriminator 2
	lfd 0,24(4)
	lfd 12,96(3)
	.loc 1 96 0 discriminator 2
	fmadd 13,13,10,11
	.loc 1 97 0 discriminator 2
	fmadd 0,0,12,13
	.loc 1 94 0 discriminator 2
	stfdx 0,5,9
	addi 9,9,8
	.loc 1 93 0 discriminator 2
	bdnz .L2
	.loc 1 100 0
	blr
	.cfi_endproc
.LFE5:
	.size	__gluMultMatrixVecd, .-__gluMultMatrixVecd
	.align 2
	.type	__gluInvertMatrixd, @function
__gluInvertMatrixd:
.LFB6:
	.loc 1 106 0
	.cfi_startproc
.LVL3:
	stwu 1,-152(1)
.LCFI0:
	.cfi_def_cfa_offset 152
	stw 30,144(1)
	.loc 1 167 0
	addi 30,1,8
	.cfi_offset 30, -8
	.loc 1 106 0
	stw 28,136(1)
	.loc 1 105 0
	addi 0,1,136
	.loc 1 106 0
	stw 29,140(1)
	.loc 1 105 0
	mr 11,30
	.loc 1 106 0
	stw 31,148(1)
.LVL4:
.L6:
	.loc 1 106 0 discriminator 1
	li 7,4
	li 9,0
	mtctr 7
.LVL5:
.L7:
	.loc 1 113 0 discriminator 2
	lfdx 0,3,9
	stfdx 0,11,9
	addi 9,9,8
	.loc 1 112 0 discriminator 2
	bdnz .L7
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 112 0 is_stmt 0
	addi 11,11,32
	addi 3,3,32
	.loc 1 111 0 is_stmt 1
	cmpw 7,11,0
	bne+ 7,.L6
.LVL6:
.LBB4:
.LBB5:
	.loc 1 49 0
	lis 9,.LC2@ha
	.loc 1 52 0
	addi 29,1,8
	.loc 1 49 0
	lfd 0,.LC2@l(9)
	lis 9,.LC1@ha
	lfs 13,.LC1@l(9)
	.loc 1 52 0
	mr 31,29
.LBE5:
.LBE4:
	.loc 1 144 0
	fmr 9,0
.LBB10:
.LBB6:
	.loc 1 49 0
	stfd 0,32(4)
	stfd 13,0(4)
	.loc 1 52 0
	mr 12,4
	.loc 1 49 0
	stfd 0,64(4)
	.loc 1 52 0
	li 8,0
	.loc 1 49 0
	stfd 0,96(4)
	.loc 1 118 0
	li 3,0
	.loc 1 50 0
	stfd 0,8(4)
.LBE6:
.LBE10:
	.loc 1 105 0
	addi 28,4,-8
.LBB11:
.LBB7:
	.loc 1 50 0
	stfd 13,40(4)
	stfd 0,72(4)
	stfd 0,104(4)
	.loc 1 51 0
	stfd 0,16(4)
	stfd 0,48(4)
	stfd 13,80(4)
	stfd 0,112(4)
	.loc 1 52 0
	stfd 0,24(4)
	stfd 0,56(4)
	stfd 0,88(4)
	stfd 13,120(4)
.LVL7:
.L19:
.LBE7:
.LBE11:
	.loc 1 123 0
	addi 0,3,1
.LVL8:
	.loc 1 105 0
	lfd 0,0(29)
	.loc 1 123 0
	cmpwi 6,0,4
	beq- 6,.L10
	.loc 1 105 0
	slwi 9,0,2
	addi 10,1,8
	add 9,9,3
	fabs 12,0
	slwi 9,9,3
.LBB12:
.LBB8:
	mr 7,3
.LBE8:
.LBE12:
	add 9,10,9
.LBB13:
.LBB9:
	subfic 10,0,4
	mtctr 10
	mr 11,0
.LVL9:
.L12:
.LBE9:
.LBE13:
	.loc 1 124 0
	lfd 13,0(9)
	.loc 1 123 0
	addi 9,9,32
	.loc 1 124 0
	fabs 13,13
	fcmpu 7,13,12
	bng- 7,.L11
	mr 7,11
.L11:
	.loc 1 123 0
	addi 11,11,1
.LVL10:
	bdnz .L12
	.loc 1 129 0
	cmpw 7,3,7
	beq- 7,.L10
	li 11,4
.LVL11:
	slwi 7,7,5
	mtctr 11
	li 9,0
	mr 6,7
.L13:
	.loc 1 105 0 discriminator 2
	addi 11,1,8
	.loc 1 134 0 discriminator 2
	lfdx 13,31,9
.LVL12:
	.loc 1 105 0 discriminator 2
	add 10,11,7
	add 11,4,6
	.loc 1 135 0 discriminator 2
	lfdx 11,10,9
	.loc 1 138 0 discriminator 2
	lfdx 0,12,9
.LVL13:
	.loc 1 139 0 discriminator 2
	lfdx 12,11,9
	.loc 1 135 0 discriminator 2
	stfdx 11,31,9
	.loc 1 139 0 discriminator 2
	stfdx 12,12,9
	.loc 1 136 0 discriminator 2
	stfdx 13,10,9
	.loc 1 140 0 discriminator 2
	stfdx 0,11,9
	addi 9,9,8
.LVL14:
	.loc 1 133 0 discriminator 2
	bdnz .L13
	.loc 1 133 0 is_stmt 0
	lfd 0,0(29)
.LVL15:
.L10:
	.loc 1 144 0 is_stmt 1
	fcmpu 7,0,9
	beq- 7,.L21
	.loc 1 105 0
	slwi 11,3,5
	li 10,4
	addi 11,11,-8
	addi 7,1,8
	mtctr 10
	add 11,7,11
	addi 9,12,-8
.L15:
	.loc 1 154 0 discriminator 2
	lfdu 12,8(11)
	.loc 1 155 0 discriminator 2
	lfdu 13,8(9)
	.loc 1 154 0 discriminator 2
	fdiv 12,12,0
	.loc 1 155 0 discriminator 2
	fdiv 13,13,0
	.loc 1 154 0 discriminator 2
	stfd 12,0(11)
	.loc 1 155 0 discriminator 2
	stfd 13,0(9)
	.loc 1 153 0 discriminator 2
	bdnz .L15
	.loc 1 153 0 is_stmt 0
	li 10,0
	li 5,0
.L18:
	.loc 1 158 0 is_stmt 1
	cmpw 7,5,3
	beq- 7,.L16
	.loc 1 105 0
	slwi 9,5,5
	addi 7,1,8
	addi 11,9,-8
	.loc 1 159 0
	lfdx 0,30,9
.LVL16:
	.loc 1 105 0
	add 11,7,11
	li 7,4
	mtctr 7
	subf 9,10,28
.LVL17:
.L17:
	.loc 1 105 0 is_stmt 0 discriminator 2
	addi 11,11,8
	.loc 1 161 0 is_stmt 1 discriminator 2
	addi 9,9,8
	.loc 1 105 0 discriminator 2
	add 6,10,11
	add 7,10,9
	lfdx 12,6,8
	lfdx 13,7,8
	fneg 12,12
	.loc 1 161 0 discriminator 2
	lfd 10,0(11)
	.loc 1 105 0 discriminator 2
	fneg 13,13
	.loc 1 162 0 discriminator 2
	lfd 11,0(9)
	.loc 1 161 0 discriminator 2
	fmadd 12,12,0,10
	.loc 1 162 0 discriminator 2
	fmadd 13,13,0,11
	.loc 1 161 0 discriminator 2
	stfd 12,0(11)
	.loc 1 162 0 discriminator 2
	stfd 13,0(9)
	.loc 1 160 0 discriminator 2
	bdnz .L17
.LVL18:
.L16:
	.loc 1 157 0
	cmpwi 7,5,3
	addi 10,10,-32
	addi 5,5,1
.LVL19:
	bne+ 7,.L18
.LVL20:
	.loc 1 157 0 is_stmt 0 discriminator 1
	addi 8,8,32
	addi 30,30,8
	addi 12,12,32
	addi 29,29,40
	addi 31,31,32
	.loc 1 118 0 is_stmt 1 discriminator 1
	beq- 6,.L30
	.loc 1 123 0
	mr 3,0
	b .L19
.L30:
	.loc 1 168 0
	lwz 28,136(1)
	.loc 1 167 0
	li 3,1
	.loc 1 168 0
	lwz 29,140(1)
	lwz 30,144(1)
	lwz 31,148(1)
	addi 1,1,152
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL21:
.L21:
.LCFI2:
	.cfi_restore_state
	lwz 28,136(1)
	.loc 1 149 0
	li 3,0
	.loc 1 168 0
	lwz 29,140(1)
	lwz 30,144(1)
	lwz 31,148(1)
	addi 1,1,152
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE6:
	.size	__gluInvertMatrixd, .-__gluInvertMatrixd
	.align 2
	.type	__gluMultMatricesd, @function
__gluMultMatricesd:
.LFB7:
	.loc 1 172 0
	.cfi_startproc
.LVL22:
	.loc 1 170 0
	addi 0,3,128
	addi 4,4,-8
.LVL23:
.L32:
	.loc 1 170 0 is_stmt 0 discriminator 1
	li 10,4
	mr 9,4
	mtctr 10
	li 11,0
.LVL24:
.L33:
	.loc 1 170 0 discriminator 2
	addi 9,9,8
	.loc 1 179 0 is_stmt 1 discriminator 2
	lfd 12,8(3)
	lfd 0,32(9)
	.loc 1 178 0 discriminator 2
	lfd 11,0(3)
	.loc 1 179 0 discriminator 2
	fmul 12,12,0
	.loc 1 178 0 discriminator 2
	lfd 0,0(9)
	.loc 1 179 0 discriminator 2
	lfd 13,16(3)
	lfd 10,64(9)
	.loc 1 178 0 discriminator 2
	fmadd 11,11,0,12
	.loc 1 180 0 discriminator 2
	lfd 0,24(3)
	lfd 12,96(9)
	.loc 1 179 0 discriminator 2
	fmadd 13,13,10,11
	.loc 1 180 0 discriminator 2
	fmadd 0,0,12,13
	.loc 1 177 0 discriminator 2
	stfdx 0,5,11
	addi 11,11,8
	.loc 1 176 0 discriminator 2
	bdnz .L33
	.loc 1 176 0 is_stmt 0
	addi 3,3,32
	addi 5,5,32
	.loc 1 175 0 is_stmt 1
	cmpw 7,3,0
	bne+ 7,.L32
	blr
	.cfi_endproc
.LFE7:
	.size	__gluMultMatricesd, .-__gluMultMatricesd
	.align 2
	.globl gluOrtho2D
	.type	gluOrtho2D, @function
gluOrtho2D:
.LFB2:
	.loc 1 65 0
	.cfi_startproc
.LVL25:
	.loc 1 66 0
	lis 9,.LC4@ha
	.loc 1 65 0
	mflr 0
	.loc 1 66 0
	lfs 5,.LC4@l(9)
	lis 9,.LC1@ha
	.loc 1 65 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 66 0
	lfs 6,.LC1@l(9)
	.loc 1 65 0
	stw 0,12(1)
	.loc 1 66 0
	.cfi_offset 65, 4
	bl glOrtho
.LVL26:
	.loc 1 67 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2:
	.size	gluOrtho2D, .-gluOrtho2D
	.align 2
	.globl gluProject
	.type	gluProject, @function
gluProject:
.LFB8:
	.loc 1 192 0
	.cfi_startproc
.LVL27:
	stwu 1,-128(1)
.LCFI6:
	.cfi_def_cfa_offset 128
	.loc 1 199 0
	lis 9,.LC1@ha
	.loc 1 192 0
	mflr 0
	.loc 1 199 0
	lfs 0,.LC1@l(9)
	.loc 1 192 0
	stw 30,120(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,124(1)
	.loc 1 200 0
	addi 4,1,40
.LVL28:
	.loc 1 192 0
	mr 31,5
	.cfi_offset 31, -4
	.loc 1 200 0
	addi 5,1,8
.LVL29:
	.loc 1 199 0
	stfd 0,64(1)
	.loc 1 192 0
	stw 0,132(1)
	stw 27,108(1)
	mr 27,8
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	stw 28,112(1)
	mr 28,7
	.cfi_offset 28, -16
	stw 29,116(1)
	.loc 1 192 0
	mr 29,6
	.cfi_offset 29, -12
	.loc 1 196 0
	stfd 1,40(1)
	.loc 1 197 0
	stfd 2,48(1)
	.loc 1 198 0
	stfd 3,56(1)
	.loc 1 200 0
	bl __gluMultMatrixVecd
.LVL30:
	.loc 1 201 0
	mr 3,30
	addi 4,1,8
	addi 5,1,40
	bl __gluMultMatrixVecd
	.loc 1 202 0
	lis 9,.LC2@ha
	lfd 13,64(1)
	li 3,0
	lfd 0,.LC2@l(9)
	fcmpu 7,13,0
	beq- 7,.L39
	.loc 1 204 0
	lfd 7,48(1)
	.loc 1 213 0
	lis 0,0x4330
	.loc 1 203 0
	lfd 10,40(1)
	.loc 1 218 0
	li 3,1
	.loc 1 204 0
	fdiv 7,7,13
	.loc 1 205 0
	lfd 11,56(1)
	.loc 1 213 0
	lwz 8,4(31)
	lwz 10,12(31)
	.loc 1 212 0
	lwz 11,0(31)
	.loc 1 213 0
	xoris 8,8,0x8000
	.loc 1 212 0
	lwz 9,8(31)
	.loc 1 213 0
	xoris 10,10,0x8000
	.loc 1 212 0
	xoris 11,11,0x8000
	.loc 1 213 0
	stw 8,76(1)
	.loc 1 212 0
	xoris 9,9,0x8000
	.loc 1 213 0
	stw 0,72(1)
	.loc 1 212 0
	stw 9,100(1)
	.loc 1 213 0
	lis 9,.LC8@ha
	stw 10,84(1)
	stw 0,80(1)
	.loc 1 212 0
	stw 11,92(1)
	stw 0,88(1)
	stw 0,96(1)
	.loc 1 213 0
	lfs 12,.LC8@l(9)
	.loc 1 209 0
	lis 9,.LC6@ha
	.loc 1 213 0
	lfd 9,72(1)
	lfd 8,80(1)
	.loc 1 212 0
	lfd 6,96(1)
	.loc 1 209 0
	lfs 0,.LC6@l(9)
	.loc 1 203 0
	fdiv 10,10,13
	.loc 1 205 0
	fdiv 13,11,13
	.loc 1 212 0
	lfd 11,88(1)
	.loc 1 208 0
	fmadd 7,7,0,0
	.loc 1 213 0
	fsub 9,9,12
	fsub 8,8,12
	.loc 1 207 0
	fmadd 10,10,0,0
	.loc 1 212 0
	fsub 11,11,12
	fsub 12,6,12
	.loc 1 209 0
	fmadd 0,13,0,0
	.loc 1 213 0
	fmadd 13,7,8,9
	.loc 1 212 0
	fmadd 12,10,12,11
	.loc 1 215 0
	stfd 12,0(29)
	.loc 1 216 0
	stfd 13,0(28)
	.loc 1 217 0
	stfd 0,0(27)
.L39:
	.loc 1 219 0
	lwz 0,132(1)
	lwz 27,108(1)
.LVL31:
	mtlr 0
	lwz 28,112(1)
.LVL32:
	lwz 29,116(1)
.LVL33:
	lwz 30,120(1)
.LVL34:
	lwz 31,124(1)
.LVL35:
	addi 1,1,128
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE8:
	.size	gluProject, .-gluProject
	.align 2
	.globl gluUnProject
	.type	gluUnProject, @function
gluUnProject:
.LFB9:
	.loc 1 227 0
	.cfi_startproc
.LVL36:
	stwu 1,-280(1)
.LCFI8:
	.cfi_def_cfa_offset 280
	mflr 0
	stw 31,252(1)
	mr 31,5
	.cfi_offset 31, -28
	.cfi_register 65, 0
	.loc 1 232 0
	addi 5,1,72
.LVL37:
	.loc 1 227 0
	stw 0,284(1)
	stfd 29,256(1)
	fmr 29,3
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	stfd 30,264(1)
	fmr 30,2
	.cfi_offset 62, -16
	stfd 31,272(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 27,236(1)
	mr 27,8
	.cfi_offset 27, -44
	stw 28,240(1)
	.loc 1 233 0
	li 28,0
	.cfi_offset 28, -40
	.loc 1 227 0
	stw 29,244(1)
	mr 29,7
	.cfi_offset 29, -36
	stw 30,248(1)
	.loc 1 227 0
	mr 30,6
	.cfi_offset 30, -32
	.loc 1 232 0
	bl __gluMultMatricesd
.LVL38:
	.loc 1 233 0
	addi 3,1,72
	mr 4,3
	bl __gluInvertMatrixd
	cmpwi 7,3,0
	bne- 7,.L45
.LVL39:
.L42:
	.loc 1 258 0
	lwz 0,284(1)
	mr 3,28
	lwz 27,236(1)
.LVL40:
	mtlr 0
	lwz 28,240(1)
	lwz 29,244(1)
.LVL41:
	lwz 30,248(1)
.LVL42:
	lwz 31,252(1)
.LVL43:
	lfd 29,256(1)
.LVL44:
	lfd 30,264(1)
	lfd 31,272(1)
	addi 1,1,280
	.cfi_remember_state
.LCFI9:
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
.LVL45:
.L45:
.LCFI10:
	.cfi_restore_state
	.loc 1 242 0
	lwz 11,4(31)
	lis 0,0x4330
	.loc 1 241 0
	lwz 9,0(31)
	.loc 1 242 0
	lis 10,.LC8@ha
	xoris 11,11,0x8000
	stw 0,200(1)
	stw 11,204(1)
	.loc 1 241 0
	xoris 9,9,0x8000
	.loc 1 242 0
	lfs 13,.LC8@l(10)
	.loc 1 249 0
	addi 3,1,72
	.loc 1 242 0
	lwz 11,12(31)
	.loc 1 249 0
	addi 4,1,40
	.loc 1 241 0
	stw 9,220(1)
	.loc 1 249 0
	addi 5,1,8
	.loc 1 241 0
	stw 0,216(1)
	.loc 1 242 0
	xoris 11,11,0x8000
	lfd 0,200(1)
	.loc 1 241 0
	lwz 9,8(31)
	lfd 12,216(1)
	.loc 1 242 0
	fsub 0,0,13
	.loc 1 241 0
	xoris 9,9,0x8000
	.loc 1 242 0
	stw 11,212(1)
	.loc 1 241 0
	fsub 12,12,13
	stw 9,228(1)
	.loc 1 242 0
	stw 0,208(1)
	fsub 30,30,0
.LVL46:
	.loc 1 241 0
	stw 0,224(1)
	.loc 1 238 0
	lis 9,.LC1@ha
	.loc 1 242 0
	lfd 0,208(1)
	.loc 1 241 0
	fsub 31,31,12
.LVL47:
	lfd 12,224(1)
	.loc 1 242 0
	fsub 0,0,13
	.loc 1 241 0
	fsub 13,12,13
	.loc 1 242 0
	fdiv 30,30,0
	.loc 1 238 0
	lfs 0,.LC1@l(9)
	.loc 1 245 0
	lis 9,.LC10@ha
	lfs 12,.LC10@l(9)
	.loc 1 238 0
	stfd 0,64(1)
	.loc 1 241 0
	fdiv 13,31,13
	.loc 1 246 0
	fmsub 30,30,12,0
	.loc 1 245 0
	fmsub 13,13,12,0
	.loc 1 247 0
	fmsub 0,29,12,0
	.loc 1 246 0
	stfd 30,48(1)
	.loc 1 245 0
	stfd 13,40(1)
	.loc 1 247 0
	stfd 0,56(1)
	.loc 1 249 0
	bl __gluMultMatrixVecd
	.loc 1 250 0
	lis 9,.LC2@ha
	lfd 0,32(1)
	lfd 13,.LC2@l(9)
	fcmpu 7,0,13
	beq- 7,.L42
	.loc 1 252 0
	lfd 12,16(1)
	.loc 1 257 0
	li 28,1
	.loc 1 253 0
	lfd 13,24(1)
	.loc 1 258 0
	mr 3,28
	.loc 1 251 0
	lfd 11,8(1)
	.loc 1 252 0
	fdiv 12,12,0
	.loc 1 258 0
	lwz 0,284(1)
	lwz 28,240(1)
	mtlr 0
	lwz 31,252(1)
.LVL48:
	lfd 29,256(1)
.LVL49:
	lfd 30,264(1)
	lfd 31,272(1)
	.loc 1 253 0
	fdiv 13,13,0
	.loc 1 251 0
	fdiv 0,11,0
	.loc 1 254 0
	stfd 0,0(30)
	.loc 1 255 0
	stfd 12,0(29)
	.loc 1 258 0
	lwz 30,248(1)
.LVL50:
	.loc 1 256 0
	stfd 13,0(27)
	.loc 1 258 0
	lwz 29,244(1)
.LVL51:
	lwz 27,236(1)
.LVL52:
	addi 1,1,280
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE9:
	.size	gluUnProject, .-gluUnProject
	.align 2
	.globl gluUnProject4
	.type	gluUnProject4, @function
gluUnProject4:
.LFB10:
	.loc 1 268 0
	.cfi_startproc
.LVL53:
	stwu 1,-304(1)
.LCFI12:
	.cfi_def_cfa_offset 304
	mflr 0
	stw 31,252(1)
	mr 31,5
	.cfi_offset 31, -52
	.cfi_register 65, 0
	.loc 1 273 0
	addi 5,1,72
.LVL54:
	.loc 1 268 0
	stw 0,308(1)
	stfd 26,256(1)
	fmr 26,6
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	stfd 27,264(1)
	fmr 27,5
	.cfi_offset 59, -40
	stfd 28,272(1)
	fmr 28,4
	.cfi_offset 60, -32
	stfd 29,280(1)
	fmr 29,3
	.cfi_offset 61, -24
	stfd 30,288(1)
	fmr 30,2
	.cfi_offset 62, -16
	stfd 31,296(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 26,232(1)
	mr 26,9
	.cfi_offset 26, -72
	stw 27,236(1)
	.loc 1 274 0
	li 27,0
	.cfi_offset 27, -68
	.loc 1 268 0
	stw 28,240(1)
	mr 28,8
	.cfi_offset 28, -64
	stw 29,244(1)
	mr 29,7
	.cfi_offset 29, -60
	stw 30,248(1)
	.loc 1 268 0
	mr 30,6
	.cfi_offset 30, -56
	.loc 1 273 0
	bl __gluMultMatricesd
.LVL55:
	.loc 1 274 0
	addi 3,1,72
	mr 4,3
	bl __gluInvertMatrixd
	cmpwi 7,3,0
	bne- 7,.L50
.LVL56:
.L47:
	.loc 1 298 0
	lwz 0,308(1)
	mr 3,27
	lwz 26,232(1)
.LVL57:
	mtlr 0
	lwz 27,236(1)
	lwz 28,240(1)
.LVL58:
	lwz 29,244(1)
.LVL59:
	lwz 30,248(1)
.LVL60:
	lwz 31,252(1)
.LVL61:
	lfd 26,256(1)
.LVL62:
	lfd 27,264(1)
	lfd 28,272(1)
.LVL63:
	lfd 29,280(1)
	lfd 30,288(1)
	lfd 31,296(1)
	addi 1,1,304
	.cfi_remember_state
.LCFI13:
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
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL64:
.L50:
.LCFI14:
	.cfi_restore_state
	.loc 1 283 0
	lwz 11,4(31)
	lis 0,0x4330
	.loc 1 282 0
	lwz 9,0(31)
	.loc 1 283 0
	lis 10,.LC8@ha
	xoris 11,11,0x8000
	stw 0,200(1)
	stw 11,204(1)
	.loc 1 282 0
	xoris 9,9,0x8000
	.loc 1 283 0
	lfs 0,.LC8@l(10)
	.loc 1 284 0
	fsub 29,29,27
.LVL65:
	.loc 1 283 0
	lwz 11,12(31)
	.loc 1 284 0
	fsub 27,26,27
.LVL66:
	.loc 1 282 0
	stw 9,220(1)
	.loc 1 291 0
	addi 3,1,72
	.loc 1 282 0
	stw 0,216(1)
	.loc 1 283 0
	xoris 11,11,0x8000
	lfd 13,200(1)
	.loc 1 284 0
	fdiv 29,29,27
	.loc 1 282 0
	lwz 9,8(31)
	.loc 1 291 0
	addi 4,1,40
	.loc 1 282 0
	lfd 12,216(1)
	.loc 1 291 0
	addi 5,1,8
	.loc 1 282 0
	xoris 9,9,0x8000
	.loc 1 283 0
	stw 11,212(1)
	.loc 1 282 0
	stw 9,228(1)
	.loc 1 287 0
	lis 9,.LC10@ha
	.loc 1 283 0
	stw 0,208(1)
	.loc 1 282 0
	stw 0,224(1)
	.loc 1 279 0
	stfd 28,64(1)
	.loc 1 283 0
	fsub 13,13,0
	.loc 1 282 0
	fsub 12,12,0
	.loc 1 283 0
	fsub 30,30,13
.LVL67:
	lfd 13,208(1)
	.loc 1 282 0
	fsub 31,31,12
.LVL68:
	lfd 12,224(1)
	.loc 1 283 0
	fsub 13,13,0
	.loc 1 282 0
	fsub 0,12,0
	.loc 1 287 0
	lfs 12,.LC10@l(9)
	lis 9,.LC1@ha
	.loc 1 283 0
	fdiv 30,30,13
	.loc 1 287 0
	lfs 13,.LC1@l(9)
	.loc 1 282 0
	fdiv 0,31,0
	.loc 1 288 0
	fmsub 30,30,12,13
	.loc 1 287 0
	fmsub 0,0,12,13
	.loc 1 289 0
	fmsub 13,29,12,13
	.loc 1 288 0
	stfd 30,48(1)
	.loc 1 287 0
	stfd 0,40(1)
	.loc 1 289 0
	stfd 13,56(1)
	.loc 1 291 0
	bl __gluMultMatrixVecd
	.loc 1 292 0
	lis 9,.LC2@ha
	lfd 0,32(1)
	lfd 13,.LC2@l(9)
	fcmpu 7,0,13
	beq- 7,.L47
	.loc 1 293 0
	lfd 13,8(1)
	.loc 1 297 0
	li 27,1
	.loc 1 293 0
	stfd 13,0(30)
	.loc 1 294 0
	lfd 13,16(1)
	stfd 13,0(29)
	.loc 1 295 0
	lfd 13,24(1)
	stfd 13,0(28)
	.loc 1 296 0
	stfd 0,0(26)
	.loc 1 297 0
	b .L47
	.cfi_endproc
.LFE10:
	.size	gluUnProject4, .-gluUnProject4
	.align 2
	.globl gluPickMatrix
	.type	gluPickMatrix, @function
gluPickMatrix:
.LFB11:
	.loc 1 303 0
	.cfi_startproc
.LVL69:
	.loc 1 304 0
	lis 9,.LC2@ha
	.loc 1 303 0
	mflr 0
	.loc 1 304 0
	lfd 0,.LC2@l(9)
	.loc 1 303 0
	stwu 1,-96(1)
.LCFI15:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	.loc 1 304 0
	fcmpu 7,3,0
	.loc 1 303 0
	stfd 31,88(1)
	fmr 31,3
	.cfi_offset 63, -8
	.loc 1 304 0
	cror 30,28,30
	.loc 1 303 0
	stw 0,100(1)
	stfd 30,80(1)
	stw 31,76(1)
	.loc 1 304 0
	beq- 7,.L51
	.cfi_offset 31, -20
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 304 0 is_stmt 0 discriminator 1
	fcmpu 7,4,0
	cror 30,28,30
	bne- 7,.L53
.L51:
	.loc 1 312 0 is_stmt 1
	lwz 0,100(1)
	lwz 31,76(1)
	mtlr 0
	lfd 30,80(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	blr
.L53:
.LCFI17:
	.cfi_restore_state
	.loc 1 309 0
	lwz 9,0(3)
	lis 31,0x4330
	.loc 1 310 0
	lwz 0,4(3)
	.loc 1 309 0
	xoris 9,9,0x8000
	stw 31,8(1)
	.loc 1 310 0
	xoris 0,0,0x8000
	.loc 1 309 0
	stw 9,12(1)
	.loc 1 310 0
	stw 31,24(1)
	.loc 1 309 0
	lis 9,.LC8@ha
	.loc 1 310 0
	stw 0,28(1)
	.loc 1 309 0
	lfs 30,.LC8@l(9)
	lfd 13,8(1)
	.loc 1 310 0
	lfd 0,24(1)
	.loc 1 309 0
	lwz 9,8(3)
	fsub 13,13,30
	.loc 1 310 0
	lwz 0,12(3)
	fsub 0,0,30
	.loc 1 309 0
	xoris 9,9,0x8000
	stw 31,16(1)
	.loc 1 310 0
	xoris 0,0,0x8000
	.loc 1 309 0
	stw 9,20(1)
	.loc 1 310 0
	stw 0,36(1)
	.loc 1 309 0
	fsub 1,1,13
.LVL70:
	.loc 1 310 0
	stw 31,32(1)
	fsub 2,2,0
.LVL71:
	.loc 1 309 0
	lfd 12,16(1)
	lis 9,.LC10@ha
	.loc 1 310 0
	lfd 13,32(1)
	.loc 1 301 0
	fneg 1,1
	.loc 1 309 0
	fsub 12,12,30
	lfs 0,.LC10@l(9)
	.loc 1 310 0
	fsub 13,13,30
	.loc 1 309 0
	lis 9,.LC11@ha
	.loc 1 301 0
	fneg 2,2
	.loc 1 309 0
	lfs 3,.LC11@l(9)
.LVL72:
	fmadd 1,1,0,12
	stw 3,64(1)
	stfd 4,56(1)
	.loc 1 310 0
	fmadd 2,2,0,13
	.loc 1 309 0
	fdiv 1,1,31
	.loc 1 310 0
	fdiv 2,2,4
	.loc 1 309 0
	frsp 1,1
	frsp 2,2
	bl glTranslatef
.LVL73:
	.loc 1 311 0
	lwz 3,64(1)
	lfd 4,56(1)
	lwz 9,8(3)
	lwz 0,12(3)
	xoris 9,9,0x8000
	stw 31,40(1)
	xoris 0,0,0x8000
	stw 9,44(1)
	stw 0,52(1)
	lis 9,.LC1@ha
	stw 31,48(1)
	lfd 0,40(1)
	lfd 13,48(1)
	fsub 0,0,30
	lfs 3,.LC1@l(9)
	fsub 30,13,30
	fdiv 31,0,31
.LVL74:
	fdiv 4,30,4
	frsp 1,31
	frsp 2,4
	bl glScalef
	.loc 1 312 0
	lwz 0,100(1)
	lwz 31,76(1)
	mtlr 0
	lfd 30,80(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE11:
	.size	gluPickMatrix, .-gluPickMatrix
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1065353216
.LC4:
	.4byte	-1082130432
.LC6:
	.4byte	1056964608
.LC8:
	.4byte	1501560836
.LC10:
	.4byte	1073741824
.LC11:
	.4byte	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC2:
	.4byte	0
	.4byte	0
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5c2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.4byte	.LASF44
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
	.byte	0x99
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xa0
	.4byte	0x67
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0xa1
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0x7c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7c
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x6
	.4byte	0x87
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.4byte	0xdd
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x2f
	.4byte	0xc0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x12a
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x58
	.4byte	0xae
	.4byte	.LLST0
	.uleb128 0xb
	.string	"in"
	.byte	0x1
	.byte	0x58
	.4byte	0xae
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"out"
	.byte	0x1
	.byte	0x59
	.4byte	0xc0
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x5b
	.4byte	0x3d
	.4byte	.LLST1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST2
	.4byte	0x1cc
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.byte	0x69
	.4byte	0xae
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x69
	.4byte	0xc0
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.4byte	0x3d
	.4byte	.LLST4
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x6b
	.4byte	0x3d
	.4byte	.LLST5
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x6b
	.4byte	0x3d
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6b
	.4byte	0x3d
	.4byte	.LLST7
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x6c
	.4byte	0x67
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6d
	.4byte	0x1cc
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.4byte	0xc6
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x74
	.uleb128 0x13
	.4byte	0xd3
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x87
	.4byte	0x1e2
	.uleb128 0x15
	.4byte	0x44
	.byte	0x3
	.uleb128 0x15
	.4byte	0x44
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x23b
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0xaa
	.4byte	0xae
	.4byte	.LLST9
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0xaa
	.4byte	0xae
	.4byte	.LLST10
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0xab
	.4byte	0xc0
	.4byte	.LLST11
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xad
	.4byte	0x3d
	.4byte	.LLST12
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0xad
	.4byte	0x3d
	.4byte	.LLST13
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST14
	.4byte	0x291
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x40
	.4byte	0x87
	.4byte	.LLST15
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x40
	.4byte	0x87
	.4byte	.LLST16
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x40
	.4byte	0x87
	.4byte	.LLST17
	.uleb128 0xe
	.string	"top"
	.byte	0x1
	.byte	0x40
	.4byte	0x87
	.4byte	.LLST18
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0x7c
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST19
	.4byte	0x353
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0xbb
	.4byte	0x87
	.4byte	.LLST20
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0xbb
	.4byte	0x87
	.4byte	.LLST21
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0xbb
	.4byte	0x87
	.4byte	.LLST22
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0xbc
	.4byte	0xae
	.4byte	.LLST23
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0xbd
	.4byte	0xae
	.4byte	.LLST24
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0xbe
	.4byte	0x9d
	.4byte	.LLST25
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0xbf
	.4byte	0xc0
	.4byte	.LLST26
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbf
	.4byte	0xc0
	.4byte	.LLST27
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbf
	.4byte	0xc0
	.4byte	.LLST28
	.uleb128 0x18
	.string	"in"
	.byte	0x1
	.byte	0xc1
	.4byte	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0xc2
	.4byte	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x14
	.4byte	0x67
	.4byte	0x363
	.uleb128 0x15
	.4byte	0x44
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	0x7c
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST29
	.4byte	0x434
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0xde
	.4byte	0x87
	.4byte	.LLST30
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0xde
	.4byte	0x87
	.4byte	.LLST31
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0xde
	.4byte	0x87
	.4byte	.LLST32
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0xdf
	.4byte	0xae
	.4byte	.LLST33
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe0
	.4byte	0xae
	.4byte	.LLST34
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe1
	.4byte	0x9d
	.4byte	.LLST35
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe2
	.4byte	0xc0
	.4byte	.LLST36
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0xe2
	.4byte	0xc0
	.4byte	.LLST37
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0xe2
	.4byte	0xc0
	.4byte	.LLST38
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0xe4
	.4byte	0x434
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x18
	.string	"in"
	.byte	0x1
	.byte	0xe5
	.4byte	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0xe6
	.4byte	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x14
	.4byte	0x67
	.4byte	0x444
	.uleb128 0x15
	.4byte	0x44
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	0x7c
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST39
	.4byte	0x562
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x105
	.4byte	0x87
	.4byte	.LLST40
	.uleb128 0x1a
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x105
	.4byte	0x87
	.4byte	.LLST41
	.uleb128 0x1a
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x105
	.4byte	0x87
	.4byte	.LLST42
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x105
	.4byte	0x87
	.4byte	.LLST43
	.uleb128 0x1a
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x106
	.4byte	0xae
	.4byte	.LLST44
	.uleb128 0x1a
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x107
	.4byte	0xae
	.4byte	.LLST45
	.uleb128 0x1a
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x108
	.4byte	0x9d
	.4byte	.LLST46
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x109
	.4byte	0x92
	.4byte	.LLST47
	.uleb128 0x1b
	.string	"far"
	.byte	0x1
	.2byte	0x109
	.4byte	0x92
	.4byte	.LLST48
	.uleb128 0x1a
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc0
	.4byte	.LLST49
	.uleb128 0x1a
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc0
	.4byte	.LLST50
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc0
	.4byte	.LLST51
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x10b
	.4byte	0xc0
	.4byte	.LLST52
	.uleb128 0x1c
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x10d
	.4byte	0x434
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1d
	.string	"in"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1d
	.string	"out"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x353
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x12d
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST53
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x87
	.4byte	.LLST54
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x87
	.4byte	.LLST55
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x12d
	.4byte	0x87
	.4byte	.LLST56
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x12d
	.4byte	0x87
	.4byte	.LLST57
	.uleb128 0x1a
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x12e
	.4byte	0xa8
	.4byte	.LLST58
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x5
	.byte	0x8f
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 -128
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 280
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 280
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38-1-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 304
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 304
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55-1-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL73-1-.Ltext0
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"__gluMultMatrixVecd"
.LASF23:
	.string	"right"
.LASF19:
	.string	"temp"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"swap"
.LASF17:
	.string	"inverse"
.LASF36:
	.string	"finalMatrix"
.LASF37:
	.string	"gluUnProject4"
.LASF24:
	.string	"bottom"
.LASF10:
	.string	"float"
.LASF12:
	.string	"GLint"
.LASF5:
	.string	"long long int"
.LASF29:
	.string	"projMatrix"
.LASF48:
	.string	"gluPickMatrix"
.LASF15:
	.string	"long int"
.LASF34:
	.string	"gluProject"
.LASF35:
	.string	"gluUnProject"
.LASF11:
	.string	"long double"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF22:
	.string	"left"
.LASF47:
	.string	"gluOrtho2D"
.LASF43:
	.string	"GNU C 4.6.3"
.LASF31:
	.string	"winx"
.LASF32:
	.string	"winy"
.LASF33:
	.string	"winz"
.LASF7:
	.string	"long unsigned int"
.LASF13:
	.string	"GLdouble"
.LASF9:
	.string	"double"
.LASF45:
	.string	"__gluMakeIdentityd"
.LASF44:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/project.c"
.LASF30:
	.string	"viewport"
.LASF14:
	.string	"GLclampd"
.LASF39:
	.string	"near"
.LASF21:
	.string	"__gluMultMatricesd"
.LASF40:
	.string	"objw"
.LASF25:
	.string	"objx"
.LASF26:
	.string	"objy"
.LASF27:
	.string	"objz"
.LASF28:
	.string	"modelMatrix"
.LASF16:
	.string	"matrix"
.LASF38:
	.string	"clipw"
.LASF41:
	.string	"deltax"
.LASF42:
	.string	"deltay"
.LASF46:
	.string	"__gluInvertMatrixd"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
