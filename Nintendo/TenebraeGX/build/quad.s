	.file	"quad.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl gluNewQuadric
	.type	gluNewQuadric, @function
gluNewQuadric:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/quad.c"
	.loc 1 61 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 64 0
	li 3,20
	.loc 1 61 0
	stw 0,12(1)
	.loc 1 64 0
	.cfi_offset 65, 4
	bl malloc
.LVL0:
	.loc 1 65 0
	cmpwi 0,3,0
	beq- 0,.L2
	.loc 1 69 0
	lis 0,0x1
	ori 0,0,34464
	stw 0,0(3)
	.loc 1 70 0
	li 0,0
	stb 0,4(3)
	.loc 1 71 0
	lis 0,0x1
	ori 0,0,34484
	stw 0,8(3)
	.loc 1 72 0
	lis 0,0x1
	ori 0,0,34476
	stw 0,12(3)
	.loc 1 73 0
	li 0,0
	stw 0,16(3)
.L2:
	.loc 1 75 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE0:
	.size	gluNewQuadric, .-gluNewQuadric
	.align 2
	.globl gluDeleteQuadric
	.type	gluDeleteQuadric, @function
gluDeleteQuadric:
.LFB1:
	.loc 1 80 0
	.cfi_startproc
.LVL1:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 81 0
	.cfi_offset 65, 4
	bl free
.LVL2:
	.loc 1 82 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1:
	.size	gluDeleteQuadric, .-gluDeleteQuadric
	.align 2
	.globl gluQuadricCallback
	.type	gluQuadricCallback, @function
gluQuadricCallback:
.LFB3:
	.loc 1 93 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 94 0
	xoris 0,4,0xfffe
	.cfi_offset 65, 4
	cmpwi 7,0,-30969
	beq 7,.L10
	.loc 1 1164 0
	lwz 0,16(3)
.LVL4:
.LBB18:
.LBB19:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L5
	.loc 1 87 0
	lis 3,0x1
.LVL5:
	mtctr 0
	ori 3,3,35364
	bctrl
.LVL6:
.L5:
.LBE19:
.LBE18:
	.loc 1 102 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL7:
.L10:
.LCFI6:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 96 0
	stw 5,16(3)
	.loc 1 102 0
	mtlr 0
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE3:
	.size	gluQuadricCallback, .-gluQuadricCallback
	.align 2
	.globl gluQuadricNormals
	.type	gluQuadricNormals, @function
gluQuadricNormals:
.LFB4:
	.loc 1 106 0
	.cfi_startproc
.LVL8:
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 107 0
	addis 9,4,0xfffe
	.loc 1 106 0
	stw 0,12(1)
	.loc 1 107 0
	addi 0,9,31072
	.cfi_offset 65, 4
	cmplwi 7,0,2
	ble- 7,.L15
	.loc 1 1164 0
	lwz 0,16(3)
.LVL9:
.LBB20:
.LBB21:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L11
	.loc 1 87 0
	lis 3,0x1
.LVL10:
	mtctr 0
	ori 3,3,35364
	bctrl
.LVL11:
.L11:
.LBE21:
.LBE20:
	.loc 1 117 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL12:
.L15:
.LCFI10:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 116 0
	stw 4,0(3)
	.loc 1 117 0
	mtlr 0
	addi 1,1,8
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE4:
	.size	gluQuadricNormals, .-gluQuadricNormals
	.align 2
	.globl gluQuadricTexture
	.type	gluQuadricTexture, @function
gluQuadricTexture:
.LFB5:
	.loc 1 121 0
	.cfi_startproc
.LVL13:
	.loc 1 122 0
	stb 4,4(3)
	.loc 1 123 0
	blr
	.cfi_endproc
.LFE5:
	.size	gluQuadricTexture, .-gluQuadricTexture
	.align 2
	.globl gluQuadricOrientation
	.type	gluQuadricOrientation, @function
gluQuadricOrientation:
.LFB6:
	.loc 1 127 0
	.cfi_startproc
.LVL14:
	mflr 0
	stwu 1,-8(1)
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 128 0
	addis 9,4,0xfffe
	.loc 1 127 0
	stw 0,12(1)
	.loc 1 128 0
	addi 0,9,31052
	.cfi_offset 65, 4
	cmplwi 7,0,1
	ble- 7,.L21
	.loc 1 1164 0
	lwz 0,16(3)
.LVL15:
.LBB22:
.LBB23:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L17
	.loc 1 87 0
	lis 3,0x1
.LVL16:
	mtctr 0
	ori 3,3,35364
	bctrl
.LVL17:
.L17:
.LBE23:
.LBE22:
	.loc 1 137 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL18:
.L21:
.LCFI14:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 136 0
	stw 4,8(3)
	.loc 1 137 0
	mtlr 0
	addi 1,1,8
.LCFI15:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE6:
	.size	gluQuadricOrientation, .-gluQuadricOrientation
	.align 2
	.globl gluQuadricDrawStyle
	.type	gluQuadricDrawStyle, @function
gluQuadricDrawStyle:
.LFB7:
	.loc 1 141 0
	.cfi_startproc
.LVL19:
	mflr 0
	stwu 1,-8(1)
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 142 0
	addis 9,4,0xfffe
	.loc 1 141 0
	stw 0,12(1)
	.loc 1 142 0
	addi 0,9,31062
	.cfi_offset 65, 4
	cmplwi 7,0,3
	ble- 7,.L26
	.loc 1 1164 0
	lwz 0,16(3)
.LVL20:
.LBB24:
.LBB25:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L22
	.loc 1 87 0
	lis 3,0x1
.LVL21:
	mtctr 0
	ori 3,3,35364
	bctrl
.LVL22:
.L22:
.LBE25:
.LBE24:
	.loc 1 153 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL23:
.L26:
.LCFI18:
	.cfi_restore_state
	lwz 0,12(1)
	.loc 1 152 0
	stw 4,12(3)
	.loc 1 153 0
	mtlr 0
	addi 1,1,8
.LCFI19:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE7:
	.size	gluQuadricDrawStyle, .-gluQuadricDrawStyle
	.align 2
	.globl gluCylinder
	.type	gluCylinder, @function
gluCylinder:
.LFB8:
	.loc 1 158 0
	.cfi_startproc
.LVL24:
	mfcr 12
	.loc 1 176 0
	cmpwi 7,4,239
	.loc 1 158 0
	mflr 0
	stwu 1,-6272(1)
.LCFI20:
	.cfi_def_cfa_offset 6272
	.cfi_register 65, 0
	.cfi_register 70, 12
	stfd 29,6248(1)
	fmr 29,3
	.cfi_offset 61, -24
	stfd 30,6256(1)
	fmr 30,1
	.cfi_offset 62, -16
	stw 27,6132(1)
	mr 27,5
	.cfi_offset 27, -140
	stw 30,6144(1)
	mr 30,4
	.cfi_offset 30, -128
	stw 31,6148(1)
	mr 31,3
	.cfi_offset 31, -124
	stw 0,6276(1)
	stfd 17,6152(1)
	stfd 18,6160(1)
	stfd 19,6168(1)
	stfd 20,6176(1)
	stfd 21,6184(1)
	stfd 22,6192(1)
	stfd 23,6200(1)
	stfd 24,6208(1)
	stfd 25,6216(1)
	stfd 26,6224(1)
	stfd 27,6232(1)
	stfd 28,6240(1)
	stfd 31,6264(1)
	stw 17,6092(1)
	stw 18,6096(1)
	stw 19,6100(1)
	stw 20,6104(1)
	stw 21,6108(1)
	stw 22,6112(1)
	stw 23,6116(1)
	stw 24,6120(1)
	stw 25,6124(1)
	stw 26,6128(1)
	stw 28,6136(1)
	stw 29,6140(1)
	stw 12,6088(1)
	.loc 1 176 0
	bgt- 7,.L82
	.cfi_offset 70, -184
	.cfi_offset 29, -132
	.cfi_offset 28, -136
	.cfi_offset 26, -144
	.cfi_offset 25, -148
	.cfi_offset 24, -152
	.cfi_offset 23, -156
	.cfi_offset 22, -160
	.cfi_offset 21, -164
	.cfi_offset 20, -168
	.cfi_offset 19, -172
	.cfi_offset 18, -176
	.cfi_offset 17, -180
	.cfi_offset 63, -8
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
	.cfi_offset 65, 4
	.loc 1 178 0
	cmpwi 7,4,1
	bgt- 7,.L28
.LVL25:
.L108:
	.loc 1 1164 0
	lwz 0,16(31)
.LVL26:
.LBB26:
.LBB27:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L27
	.loc 1 87 0
	lis 3,0x1
	mtctr 0
	ori 3,3,35365
	bctrl
.LVL27:
.L27:
.LBE27:
.LBE26:
	.loc 1 427 0
	lwz 0,6276(1)
	lwz 12,6088(1)
	mtlr 0
	lwz 17,6092(1)
	lwz 18,6096(1)
	mtcrf 56,12
	lwz 19,6100(1)
	lwz 20,6104(1)
	lwz 21,6108(1)
	lwz 22,6112(1)
	lwz 23,6116(1)
	lwz 24,6120(1)
	lwz 25,6124(1)
	lwz 26,6128(1)
	lwz 27,6132(1)
.LVL28:
	lwz 28,6136(1)
	lwz 29,6140(1)
	lwz 30,6144(1)
	lwz 31,6148(1)
.LVL29:
	lfd 17,6152(1)
	lfd 18,6160(1)
	lfd 19,6168(1)
	lfd 20,6176(1)
	lfd 21,6184(1)
	lfd 22,6192(1)
	lfd 23,6200(1)
	lfd 24,6208(1)
	lfd 25,6216(1)
	lfd 26,6224(1)
	lfd 27,6232(1)
	lfd 28,6240(1)
	lfd 29,6248(1)
.LVL30:
	lfd 30,6256(1)
.LVL31:
	lfd 31,6264(1)
	addi 1,1,6272
	.cfi_remember_state
.LCFI21:
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
.LVL32:
.L82:
.LCFI22:
	.cfi_restore_state
	.loc 1 176 0
	li 30,239
.L28:
	.loc 1 178 0 discriminator 1
	cmpwi 7,27,0
	ble- 7,.L108
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,30,0
	blt- 7,.L108
	fcmpu 7,2,0
	blt- 7,.L108
	fcmpu 7,29,0
	blt+ 7,.L108
	.loc 1 185 0
	fsub 2,30,2
.LVL33:
	frsp 27,2
.LVL34:
	.loc 1 186 0
	fmuls 1,27,27
.LVL35:
	fmadd 1,29,29,1
	bl sqrt
.LVL36:
	.loc 1 187 0
	lis 9,.LC7@ha
	.loc 1 186 0
	frsp 1,1
.LVL37:
	.loc 1 187 0
	lfs 0,.LC7@l(9)
	fcmpu 7,1,0
	beq- 7,.L108
.LVL38:
	.loc 1 196 0
	lwz 0,0(31)
	xoris 9,0,0xfffe
	cmpwi 7,9,-31072
	beq 7,.L83
	.loc 1 200 0
	lis 9,0x1
	.loc 1 201 0
	lwz 20,12(31)
	.loc 1 200 0
	ori 9,9,34465
	cmpw 7,0,9
	beq- 7,.L109
	.loc 1 195 0
	li 21,0
	li 0,0
.LVL39:
.L34:
	.loc 1 210 0
	fmr 20,1
	lis 24,.LC2@ha
	xoris 9,30,0x8000
	lfs 23,.LC2@l(24)
	stw 9,5772(1)
	lis 9,0x4330
	fdiv 20,29,20
	stw 9,5768(1)
	lis 19,.LC3@ha
	.loc 1 215 0
	lis 22,0x1
	.loc 1 210 0
	lfd 25,5768(1)
	la 19,.LC3@l(19)
	cmpwi 4,0,0
	.loc 1 213 0
	lfd 22,0(19)
	.loc 1 210 0
	li 26,0
	.loc 1 212 0
	li 25,0
	la 24,.LC2@l(24)
	addi 29,1,4808
	addi 28,1,3848
	.loc 1 213 0
	lis 23,0x4330
	.loc 1 215 0
	ori 22,22,34484
	.loc 1 210 0
	frsp 20,20
	fmr 0,23
	.loc 1 209 0
	fdivs 28,27,1
.LVL40:
	.loc 1 219 0
	fneg 21,20
	.loc 1 210 0
	fsub 25,25,0
	b .L38
.LVL41:
.L111:
	.loc 1 156 0
	fmr 1,31
	bl sin
	fmr 26,1
	fmr 1,31
	bl cos
.L36:
	.loc 1 212 0
	addi 25,25,1
.LVL42:
	.loc 1 223 0
	frsp 26,26
	.loc 1 212 0
	cmpw 7,25,30
	.loc 1 224 0
	frsp 1,1
	.loc 1 223 0
	stfsx 26,29,26
	.loc 1 224 0
	stfsx 1,28,26
	.loc 1 212 0
	addi 26,26,4
	bge- 7,.L110
.LVL43:
.L38:
	.loc 1 213 0
	xoris 0,25,0x8000
	stw 23,5776(1)
	stw 0,5780(1)
	lfd 31,5776(1)
	fsub 31,31,23
	fmul 31,31,22
	fdiv 31,31,25
	frsp 31,31
.LVL44:
	.loc 1 214 0
	beq- 4,.L111
	.loc 1 215 0
	lwz 0,8(31)
	cmpw 7,0,22
	beq- 7,.L112
	.loc 1 219 0
	fmr 24,21
.L104:
	fmr 1,31
	bl sin
	addi 9,1,2888
	fmr 26,1
	.loc 1 220 0
	fmr 1,31
	.loc 1 219 0
	fmul 0,24,26
	frsp 0,0
	stfsx 0,26,9
	.loc 1 220 0
	bl cos
	addi 9,1,1928
	fmul 24,24,1
	frsp 24,24
	stfsx 24,26,9
	b .L36
.L112:
	.loc 1 216 0
	fmr 24,20
	b .L104
.LVL45:
.L110:
	.loc 1 227 0
	cmpwi 2,21,0
	addi 23,1,8
	beq- 2,.L39
	.loc 1 230 0
	lwz 9,8(31)
	lis 0,0x1
	.loc 1 229 0
	lis 11,.LC5@ha
	.loc 1 230 0
	ori 0,0,34484
	.loc 1 234 0
	fneg 21,20
	.loc 1 229 0
	lfs 22,0(24)
	lfs 23,.LC5@l(11)
	.loc 1 230 0
	cmpw 3,9,0
	.loc 1 229 0
	lfd 24,0(19)
	.loc 1 230 0
	li 25,0
.LVL46:
	li 26,0
	addi 21,1,968
.LVL47:
	.loc 1 229 0
	lis 22,0x4330
	b .L42
.L40:
	.loc 1 234 0
	fmr 26,21
.L105:
	fmr 1,31
	.loc 1 228 0
	addi 26,26,1
	.loc 1 234 0
	bl sin
	fmul 0,26,1
	.loc 1 235 0
	fmr 1,31
	.loc 1 234 0
	frsp 0,0
	stfsx 0,21,25
	.loc 1 235 0
	bl cos
.LVL48:
	.loc 1 228 0
	cmpw 7,26,30
	.loc 1 235 0
	fmul 26,26,1
	frsp 26,26
	stfsx 26,23,25
	.loc 1 228 0
	addi 25,25,4
	bge- 7,.L39
.LVL49:
.L42:
	.loc 1 229 0
	xoris 0,26,0x8000
	stw 22,5784(1)
	stw 0,5788(1)
	lfd 31,5784(1)
.LVL50:
	fsub 31,31,22
	fsub 31,31,23
	fmul 31,31,24
	fdiv 31,31,25
	frsp 31,31
.LVL51:
	.loc 1 230 0
	bne+ 3,.L40
	.loc 1 231 0
	fmr 26,20
	b .L105
.L39:
	.loc 1 240 0
	lwz 11,4808(1)
	slwi 0,30,2
	add 9,23,0
	stw 11,4800(9)
	.loc 1 241 0
	lwz 11,3848(1)
	stw 11,3840(9)
	.loc 1 242 0
	beq- 4,.L43
	.loc 1 243 0
	lwz 11,2888(1)
	stw 11,2880(9)
	.loc 1 244 0
	lwz 11,1928(1)
	stw 11,1920(9)
.L43:
	.loc 1 246 0
	beq- 2,.L44
	.loc 1 247 0
	lwz 11,968(1)
	add 9,23,0
	stw 11,960(9)
	.loc 1 248 0
	lwz 9,8(1)
	stwx 9,23,0
.L44:
	.loc 1 251 0
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,20,0
	beq- 7,.L46
	lis 0,0x1
	bgt- 7,.L49
	ori 0,0,34474
	cmpw 7,20,0
	bne+ 7,.L27
	.loc 1 315 0
	li 3,0
	.loc 1 333 0
	lis 21,.LC6@ha
	.loc 1 315 0
	bl glBegin
.LVL52:
	li 22,0
	.loc 1 316 0
	li 23,0
	.loc 1 327 0
	lis 25,0x4330
.LVL53:
.L66:
	.loc 1 317 0
	lwz 9,0(31)
	addis 9,9,0xfffe
	addi 0,9,31072
	cmplwi 7,0,1
	bgt- 7,.L62
	.loc 1 320 0
	addi 9,1,2888
	fmr 3,28
	lfsx 1,9,22
	addi 9,1,1928
	lfsx 2,9,22
	bl glNormal3f
.L62:
	.loc 1 327 0
	lfs 26,0(24)
	xoris 0,27,0x8000
	.loc 1 326 0
	lfsx 22,29,22
.LVL54:
	.loc 1 328 0
	li 26,0
	.loc 1 327 0
	lfsx 23,28,22
.LVL55:
	fmr 0,26
	stw 0,5908(1)
	stw 25,5904(1)
	lfd 25,5904(1)
	fsub 25,25,0
	frsp 24,25
	b .L65
.LVL56:
.L64:
	.loc 1 336 0
	fmuls 1,31,22
	fmuls 2,31,23
	bl glVertex3f
.LVL57:
	.loc 1 328 0
	cmpw 7,27,26
	blt- 7,.L113
.LVL58:
.L65:
	.loc 1 329 0
	xoris 0,26,0x8000
	stw 25,5920(1)
	stw 0,5924(1)
	.loc 1 328 0
	addi 26,26,1
	.loc 1 329 0
	lfd 2,5920(1)
	.loc 1 332 0
	lbz 0,4(31)
	.loc 1 329 0
	fsub 2,2,26
	.loc 1 332 0
	cmpwi 7,0,0
	.loc 1 329 0
	fmul 3,2,29
	.loc 1 330 0
	frsp 2,2
	.loc 1 329 0
	fdiv 3,3,25
	.loc 1 330 0
	fdivs 2,2,24
	fmuls 31,2,27
	.loc 1 329 0
	frsp 3,3
.LVL59:
	.loc 1 330 0
	fsub 31,30,31
	frsp 31,31
.LVL60:
	.loc 1 332 0
	beq+ 7,.L64
	.loc 1 333 0
	xoris 9,23,0x8000
	xoris 0,30,0x8000
	stw 9,5940(1)
	stw 0,5948(1)
	stw 25,5936(1)
	stw 25,5944(1)
	lfd 13,5936(1)
	lfd 0,5944(1)
	fsub 13,13,26
	lfs 1,.LC6@l(21)
	fsub 0,0,26
	stfd 3,6080(1)
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
.LVL61:
	.loc 1 336 0
	fmuls 1,31,22
	fmuls 2,31,23
	.loc 1 333 0
	lfd 3,6080(1)
	.loc 1 336 0
	bl glVertex3f
.LVL62:
	.loc 1 328 0
	cmpw 7,27,26
	bge+ 7,.L65
.L113:
	.loc 1 316 0
	addi 23,23,1
.LVL63:
	addi 22,22,4
	cmpw 7,30,23
	bgt+ 7,.L66
	.loc 1 340 0
	bl glEnd
	.loc 1 341 0
	b .L27
.LVL64:
.L49:
	.loc 1 251 0
	ori 0,0,34476
	cmpw 7,20,0
	beq- 7,.L87
	xoris 0,20,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L27
.LVL65:
.L48:
	.loc 1 372 0 discriminator 1
	lis 22,0x4330
	xoris 0,27,0x8000
	stw 0,6004(1)
	.loc 1 377 0 discriminator 1
	lis 25,0x1
	.loc 1 372 0 discriminator 1
	stw 22,6000(1)
	.loc 1 377 0 discriminator 1
	lis 26,0x1
	.loc 1 372 0 discriminator 1
	lfs 22,0(24)
	.loc 1 348 0 discriminator 1
	li 20,0
	.loc 1 372 0 discriminator 1
	lfd 24,6000(1)
	.loc 1 377 0 discriminator 1
	ori 25,25,34464
	ori 26,26,34465
	.loc 1 389 0 discriminator 1
	lis 21,.LC6@ha
	.loc 1 372 0 discriminator 1
	fsub 24,24,22
	.loc 1 373 0 discriminator 1
	frsp 23,24
.LVL66:
.L51:
	.loc 1 372 0
	xoris 0,20,0x8000
	stw 22,6008(1)
	stw 0,6012(1)
	.loc 1 375 0
	li 3,3
	li 19,0
	.loc 1 376 0
	li 18,0
	.loc 1 372 0
	lfd 0,6008(1)
	fsub 0,0,22
	fmul 26,0,29
	.loc 1 373 0
	frsp 0,0
	.loc 1 372 0
	fdiv 26,26,24
	.loc 1 373 0
	fdivs 25,0,23
	.loc 1 375 0
	bl glBegin
	.loc 1 373 0
	fmuls 31,25,27
	.loc 1 372 0
	frsp 26,26
.LVL67:
	.loc 1 373 0
	fsub 31,30,31
	frsp 31,31
.LVL68:
	b .L76
.LVL69:
.L116:
	.loc 1 377 0
	bne+ 6,.L72
	.loc 1 379 0
	addi 9,1,968
	fmr 3,28
	lfsx 1,9,19
	lfsx 2,23,19
	bl glNormal3f
.L72:
	.loc 1 388 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L114
.L75:
	.loc 1 392 0
	lfsx 1,29,19
	fmr 3,26
	lfsx 2,28,19
	.loc 1 376 0
	addi 18,18,1
	.loc 1 392 0
	fmuls 1,31,1
	.loc 1 376 0
	addi 19,19,4
	.loc 1 392 0
	fmuls 2,31,2
	bl glVertex3f
.LVL70:
	.loc 1 376 0
	cmpw 7,30,18
	blt- 7,.L115
.LVL71:
.L76:
	.loc 1 377 0
	lwz 0,0(31)
	cmpw 7,0,25
	cmpw 6,0,26
	bne+ 7,.L116
	.loc 1 382 0
	addi 9,1,2888
	fmr 3,28
	lfsx 1,9,19
	addi 9,1,1928
	lfsx 2,9,19
	bl glNormal3f
	.loc 1 388 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq+ 7,.L75
.L114:
	.loc 1 389 0
	xoris 9,18,0x8000
	xoris 0,30,0x8000
	stw 9,6036(1)
	fmr 2,25
	stw 22,6032(1)
	stw 0,6044(1)
	stw 22,6040(1)
	lfs 12,0(24)
	lfd 13,6032(1)
	lfd 0,6040(1)
	fsub 13,13,12
	lfs 1,.LC6@l(21)
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
	b .L75
.LVL72:
.L115:
	.loc 1 156 0
	add 20,20,27
	.loc 1 395 0
	bl glEnd
.LVL73:
	.loc 1 371 0
	cmpw 7,27,20
	bge+ 7,.L51
	li 23,0
	li 25,0
	.loc 1 411 0
	lis 26,0x4330
	.loc 1 415 0
	lis 22,.LC6@ha
.LVL74:
.L81:
	.loc 1 398 0
	lwz 9,0(31)
	addis 9,9,0xfffe
	addi 0,9,31072
	cmplwi 7,0,1
	bgt- 7,.L77
	.loc 1 401 0
	addi 9,1,2888
	lfsx 1,9,23
	addi 9,1,1928
	lfsx 2,9,23
	lis 9,.LC7@ha
	lfs 3,.LC7@l(9)
	bl glNormal3f
.L77:
	.loc 1 409 0
	li 3,3
	.loc 1 407 0
	lfsx 25,29,23
.LVL75:
	.loc 1 408 0
	lfsx 26,28,23
.LVL76:
	.loc 1 410 0
	li 21,0
	.loc 1 409 0
	bl glBegin
.LVL77:
	.loc 1 411 0
	lfs 28,0(24)
	b .L80
.LVL78:
.L79:
	.loc 1 418 0
	fmuls 1,31,25
	fmuls 2,31,26
	bl glVertex3f
.LVL79:
	.loc 1 410 0
	cmpw 7,27,21
	blt- 7,.L117
.LVL80:
.L80:
	.loc 1 411 0
	xoris 0,21,0x8000
	stw 26,6048(1)
	stw 0,6052(1)
	.loc 1 410 0
	addi 21,21,1
	.loc 1 411 0
	lfd 2,6048(1)
	.loc 1 414 0
	lbz 0,4(31)
	.loc 1 411 0
	fsub 2,2,28
	.loc 1 414 0
	cmpwi 7,0,0
	.loc 1 411 0
	fmul 3,2,29
	.loc 1 412 0
	frsp 2,2
	.loc 1 411 0
	fdiv 3,3,24
	.loc 1 412 0
	fdivs 2,2,23
	fmuls 31,2,27
.LVL81:
	.loc 1 411 0
	frsp 3,3
.LVL82:
	.loc 1 412 0
	fsub 31,30,31
	frsp 31,31
.LVL83:
	.loc 1 414 0
	beq+ 7,.L79
	.loc 1 415 0
	xoris 9,25,0x8000
	xoris 0,30,0x8000
	stw 9,6068(1)
	stw 0,6076(1)
	stw 26,6064(1)
	stw 26,6072(1)
	lfd 13,6064(1)
	lfd 0,6072(1)
	fsub 13,13,28
	lfs 1,.LC6@l(22)
	fsub 0,0,28
	stfd 3,6080(1)
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
.LVL84:
	.loc 1 418 0
	fmuls 1,31,25
	fmuls 2,31,26
	.loc 1 415 0
	lfd 3,6080(1)
	.loc 1 418 0
	bl glVertex3f
.LVL85:
	.loc 1 410 0
	cmpw 7,27,21
	bge+ 7,.L80
.L117:
	.loc 1 397 0
	addi 25,25,1
	.loc 1 421 0
	bl glEnd
.LVL86:
	.loc 1 397 0
	cmpw 7,30,25
	addi 23,23,4
	bgt+ 7,.L81
	b .L27
.LVL87:
.L109:
	.loc 1 201 0
	lis 0,0x1
	.loc 1 195 0
	li 21,0
	.loc 1 201 0
	ori 0,0,34474
	cmpw 7,20,0
	.loc 1 195 0
	li 0,0
	.loc 1 201 0
	beq- 7,.L34
.LVL88:
	.loc 1 204 0
	lis 9,0x1
	.loc 1 202 0
	li 21,1
	.loc 1 204 0
	ori 9,9,34475
	.loc 1 195 0
	cmpw 7,20,9
	mfcr 0
	rlwinm 0,0,31,1
	b .L34
.LVL89:
.L83:
	li 21,0
	.loc 1 197 0
	li 0,1
	lwz 20,12(31)
	b .L34
.LVL90:
.L87:
	.loc 1 265 0
	lis 26,0x4330
	xoris 0,27,0x8000
	stw 0,5796(1)
	.loc 1 272 0
	lis 22,0x1
	.loc 1 265 0
	stw 26,5792(1)
	.loc 1 272 0
	lis 21,0x1
	.loc 1 265 0
	lfs 18,0(24)
	.loc 1 283 0
	lis 25,0x1
	.loc 1 265 0
	lfd 19,5792(1)
	.loc 1 251 0
	li 9,0
	.loc 1 272 0
	ori 22,22,34464
	ori 21,21,34465
	.loc 1 265 0
	fsub 19,19,18
	.loc 1 283 0
	ori 25,25,34484
	.loc 1 304 0
	lis 20,.LC6@ha
	.loc 1 267 0
	frsp 17,19
.LVL91:
.L47:
	.loc 1 266 0
	addi 19,9,1
	.loc 1 265 0
	xoris 9,9,0x8000
	.loc 1 266 0
	xoris 0,19,0x8000
	.loc 1 265 0
	stw 9,5804(1)
	stw 26,5800(1)
	.loc 1 270 0
	li 3,8
	.loc 1 266 0
	stw 0,5812(1)
	.loc 1 270 0
	li 18,0
	.loc 1 266 0
	stw 26,5808(1)
	.loc 1 271 0
	li 17,0
	.loc 1 265 0
	lfd 13,5800(1)
	.loc 1 266 0
	lfd 0,5808(1)
	.loc 1 265 0
	fsub 13,13,18
	.loc 1 266 0
	fsub 0,0,18
	.loc 1 265 0
	fmul 22,13,29
	.loc 1 266 0
	fmul 23,0,29
	.loc 1 265 0
	fdiv 22,22,19
	.loc 1 266 0
	fdiv 23,23,19
	.loc 1 267 0
	frsp 13,13
	.loc 1 268 0
	frsp 0,0
	.loc 1 265 0
	frsp 22,22
.LVL92:
	.loc 1 267 0
	fdivs 20,13,17
	.loc 1 268 0
	fdivs 21,0,17
	.loc 1 270 0
	bl glBegin
	.loc 1 267 0
	fmuls 24,20,27
	.loc 1 268 0
	fmuls 25,21,27
	.loc 1 266 0
	frsp 23,23
.LVL93:
	.loc 1 267 0
	fsub 24,30,24
	.loc 1 268 0
	fsub 25,30,25
	.loc 1 267 0
	frsp 24,24
.LVL94:
	.loc 1 268 0
	frsp 25,25
.LVL95:
	b .L61
.LVL96:
.L122:
	.loc 1 272 0
	cmpw 7,0,21
	bne+ 7,.L52
	.loc 1 274 0
	addi 9,1,968
	fmr 3,28
	lfsx 1,9,18
	lfsx 2,23,18
	bl glNormal3f
.L52:
	.loc 1 283 0
	lwz 0,8(31)
	cmpw 7,0,25
	.loc 1 284 0
	lbz 0,4(31)
	.loc 1 283 0
	beq- 7,.L118
.L55:
	.loc 1 297 0
	cmpwi 7,0,0
	bne- 7,.L119
	.loc 1 301 0
	lfsx 26,29,18
	fmr 3,23
	.loc 1 302 0
	lfsx 31,28,18
	.loc 1 301 0
	fmuls 1,26,25
	fmuls 2,31,25
	bl glVertex3f
	.loc 1 303 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L120
.L60:
	.loc 1 307 0
	fmuls 1,24,26
	fmuls 2,24,31
	fmr 3,22
	bl glVertex3f
.L58:
	.loc 1 271 0
	addi 17,17,1
.LVL97:
	addi 18,18,4
	cmpw 7,30,17
	blt- 7,.L121
.LVL98:
.L61:
	.loc 1 272 0
	lwz 0,0(31)
	cmpw 7,0,22
	bne+ 7,.L122
	.loc 1 277 0
	addi 9,1,2888
	fmr 3,28
	lfsx 1,9,18
	addi 9,1,1928
	lfsx 2,9,18
	bl glNormal3f
	.loc 1 283 0
	lwz 0,8(31)
	cmpw 7,0,25
	.loc 1 284 0
	lbz 0,4(31)
	.loc 1 283 0
	bne+ 7,.L55
.L118:
	.loc 1 284 0
	cmpwi 7,0,0
	bne- 7,.L123
.L56:
	.loc 1 288 0
	lfsx 26,29,18
	fmr 3,22
	.loc 1 289 0
	lfsx 31,28,18
	.loc 1 288 0
	fmuls 1,26,24
	fmuls 2,31,24
	bl glVertex3f
	.loc 1 290 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L124
.L57:
	.loc 1 294 0
	fmuls 1,25,26
	fmuls 2,25,31
	fmr 3,23
	bl glVertex3f
	b .L58
.L119:
	.loc 1 298 0
	xoris 0,30,0x8000
	xoris 9,17,0x8000
	stw 0,5884(1)
	fmr 2,21
	stw 9,5876(1)
	stw 26,5872(1)
	stw 26,5880(1)
	lfs 12,0(24)
	lfd 13,5872(1)
	lfd 0,5880(1)
	fsub 13,13,12
	lfs 1,.LC6@l(20)
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
	.loc 1 301 0
	lfsx 26,29,18
	.loc 1 302 0
	lfsx 31,28,18
	.loc 1 301 0
	fmr 3,23
	fmuls 1,26,25
	fmuls 2,31,25
	bl glVertex3f
	.loc 1 303 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq+ 7,.L60
.L120:
	.loc 1 304 0
	xoris 9,17,0x8000
	xoris 0,30,0x8000
	stw 9,5892(1)
	fmr 2,20
	stw 26,5888(1)
	stw 0,5900(1)
	stw 26,5896(1)
	lfs 12,0(24)
	lfd 13,5888(1)
	lfd 0,5896(1)
	fsub 13,13,12
	lfs 1,.LC6@l(20)
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
	b .L60
.L124:
	.loc 1 291 0
	xoris 9,17,0x8000
	xoris 0,30,0x8000
	stw 9,5860(1)
	fmr 2,21
	stw 26,5856(1)
	stw 0,5868(1)
	stw 26,5864(1)
	lfs 12,0(24)
	lfd 13,5856(1)
	lfd 0,5864(1)
	fsub 13,13,12
	lfs 1,.LC6@l(20)
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
	b .L57
.L123:
	.loc 1 285 0
	xoris 9,17,0x8000
	xoris 0,30,0x8000
	stw 9,5844(1)
	fmr 2,20
	stw 26,5840(1)
	stw 0,5852(1)
	stw 26,5848(1)
	lfs 12,0(24)
	lfd 13,5840(1)
	lfd 0,5848(1)
	fsub 13,13,12
	lfs 1,.LC6@l(20)
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
	b .L56
.LVL99:
.L121:
	.loc 1 311 0
	bl glEnd
.LVL100:
	.loc 1 264 0
	cmpw 7,19,27
	beq- 7,.L27
	mr 9,19
	b .L47
.LVL101:
.L46:
	.loc 1 343 0 discriminator 1
	cmpwi 7,27,1
	li 20,1
	beq- 7,.L48
	.loc 1 344 0
	lis 22,0x4330
	xoris 0,27,0x8000
	stw 0,5964(1)
	.loc 1 349 0
	lis 25,0x1
	.loc 1 344 0
	stw 22,5960(1)
	.loc 1 349 0
	lis 26,0x1
	.loc 1 344 0
	lfs 23,0(24)
	.loc 1 349 0
	ori 25,25,34464
	.loc 1 344 0
	lfd 24,5960(1)
	.loc 1 349 0
	ori 26,26,34465
	.loc 1 361 0
	lis 21,.LC6@ha
	.loc 1 344 0
	fsub 24,24,23
	.loc 1 345 0
	frsp 22,24
.LVL102:
.L91:
	.loc 1 344 0
	xoris 0,20,0x8000
	stw 22,5952(1)
	stw 0,5956(1)
	.loc 1 347 0
	li 3,3
	li 19,0
	.loc 1 348 0
	li 18,0
	.loc 1 344 0
	lfd 0,5952(1)
	fsub 0,0,23
	fmul 26,0,29
	.loc 1 345 0
	frsp 0,0
	.loc 1 344 0
	fdiv 26,26,24
	.loc 1 345 0
	fdivs 25,0,22
	.loc 1 347 0
	bl glBegin
	.loc 1 345 0
	fmuls 31,25,27
	.loc 1 344 0
	frsp 26,26
.LVL103:
	.loc 1 345 0
	fsub 31,30,31
	frsp 31,31
.LVL104:
	b .L71
.LVL105:
.L127:
	.loc 1 349 0
	bne+ 6,.L67
	.loc 1 351 0
	addi 9,1,968
	fmr 3,28
	lfsx 1,9,19
	lfsx 2,23,19
	bl glNormal3f
.L67:
	.loc 1 360 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L125
.L70:
	.loc 1 364 0
	lfsx 1,29,19
	fmr 3,26
	lfsx 2,28,19
	.loc 1 348 0
	addi 18,18,1
	.loc 1 364 0
	fmuls 1,31,1
	.loc 1 348 0
	addi 19,19,4
	.loc 1 364 0
	fmuls 2,31,2
	bl glVertex3f
.LVL106:
	.loc 1 348 0
	cmpw 7,30,18
	blt- 7,.L126
.LVL107:
.L71:
	.loc 1 349 0
	lwz 0,0(31)
	cmpw 7,0,25
	cmpw 6,0,26
	bne+ 7,.L127
	.loc 1 354 0
	addi 9,1,2888
	fmr 3,28
	lfsx 1,9,19
	addi 9,1,1928
	lfsx 2,9,19
	bl glNormal3f
	.loc 1 360 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq+ 7,.L70
.L125:
	.loc 1 361 0
	xoris 9,18,0x8000
	xoris 0,30,0x8000
	stw 9,5988(1)
	fmr 2,25
	stw 22,5984(1)
	stw 0,5996(1)
	stw 22,5992(1)
	lfs 12,0(24)
	lfd 13,5984(1)
	lfd 0,5992(1)
	fsub 13,13,12
	lfs 1,.LC6@l(21)
	fsub 0,0,12
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	fsubs 1,1,0
	bl glTexCoord2f
	b .L70
.LVL108:
.L126:
	.loc 1 343 0
	addi 20,20,1
	.loc 1 367 0
	bl glEnd
.LVL109:
	.loc 1 343 0
	cmpw 7,20,27
	bne+ 7,.L91
	b .L48
	.cfi_endproc
.LFE8:
	.size	gluCylinder, .-gluCylinder
	.align 2
	.globl gluPartialDisk
	.type	gluPartialDisk, @function
gluPartialDisk:
.LFB10:
	.loc 1 440 0
	.cfi_startproc
.LVL110:
	.loc 1 454 0
	cmpwi 7,4,239
	.loc 1 440 0
	mflr 0
	stwu 1,-2200(1)
.LCFI23:
	.cfi_def_cfa_offset 2200
	.cfi_register 65, 0
	stfd 27,2160(1)
	fmr 27,4
	.cfi_offset 59, -40
	stfd 28,2168(1)
	fmr 28,1
	.cfi_offset 60, -32
	stfd 31,2192(1)
	fmr 31,2
	.cfi_offset 63, -8
	stw 27,2092(1)
	mr 27,5
	.cfi_offset 27, -108
	stw 30,2104(1)
	mr 30,4
	.cfi_offset 30, -96
	stw 31,2108(1)
	mr 31,3
	.cfi_offset 31, -92
	stw 0,2204(1)
	stfd 21,2112(1)
	stfd 22,2120(1)
	stfd 23,2128(1)
	stfd 24,2136(1)
	stfd 25,2144(1)
	stfd 26,2152(1)
	stfd 29,2176(1)
	stfd 30,2184(1)
	stw 18,2056(1)
	stw 19,2060(1)
	stw 20,2064(1)
	stw 21,2068(1)
	stw 22,2072(1)
	stw 23,2076(1)
	stw 24,2080(1)
	stw 25,2084(1)
	stw 26,2088(1)
	stw 28,2096(1)
	stw 29,2100(1)
	.loc 1 454 0
	bgt- 7,.L194
	.cfi_offset 29, -100
	.cfi_offset 28, -104
	.cfi_offset 26, -112
	.cfi_offset 25, -116
	.cfi_offset 24, -120
	.cfi_offset 23, -124
	.cfi_offset 22, -128
	.cfi_offset 21, -132
	.cfi_offset 20, -136
	.cfi_offset 19, -140
	.cfi_offset 18, -144
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	.cfi_offset 65, 4
	.loc 1 455 0
	cmpwi 7,4,1
	bgt- 7,.L129
.L130:
	.loc 1 1164 0
	lwz 0,16(31)
.LVL111:
.LBB28:
.LBB29:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L128
	.loc 1 87 0
	lis 3,0x1
.LVL112:
	mtctr 0
	ori 3,3,35365
	bctrl
.LVL113:
.L128:
.LBE29:
.LBE28:
	.loc 1 698 0
	lwz 0,2204(1)
	lwz 18,2056(1)
	mtlr 0
	lwz 19,2060(1)
	lwz 20,2064(1)
	lwz 21,2068(1)
	lwz 22,2072(1)
	lwz 23,2076(1)
	lwz 24,2080(1)
	lwz 25,2084(1)
	lwz 26,2088(1)
	lwz 27,2092(1)
	lwz 28,2096(1)
	lwz 29,2100(1)
	lwz 30,2104(1)
	lwz 31,2108(1)
.LVL114:
	lfd 21,2112(1)
	lfd 22,2120(1)
	lfd 23,2128(1)
	lfd 24,2136(1)
	lfd 25,2144(1)
	lfd 26,2152(1)
	lfd 27,2160(1)
	lfd 28,2168(1)
	lfd 29,2176(1)
	lfd 30,2184(1)
	lfd 31,2192(1)
	addi 1,1,2200
	.cfi_remember_state
.LCFI24:
	.cfi_def_cfa_offset 0
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
	blr
.LVL115:
.L194:
.LCFI25:
	.cfi_restore_state
	.loc 1 454 0
	li 30,239
.L129:
	.loc 1 455 0 discriminator 1
	cmpwi 7,27,0
	ble- 7,.L130
	lis 19,.LC0@ha
	lfd 0,.LC0@l(19)
	fcmpu 7,31,0
	cror 30,28,30
	beq- 7,.L130
	fcmpu 7,28,0
	blt- 7,.L130
	fcmpu 7,28,31
	bgt- 7,.L130
	.loc 1 461 0
	lis 9,.LC11@ha
	lis 18,.LC9@ha
	lfs 13,.LC11@l(9)
	fcmpu 7,27,13
	bnl- 7,.L216
	lis 9,.LC3@ha
	lfs 27,.LC9@l(18)
	lfd 25,.LC3@l(9)
	mr 23,30
	lis 9,.LC12@ha
	lis 11,.LC14@ha
.LVL116:
.L134:
	.loc 1 479 0
	lfs 13,.LC14@l(11)
	.loc 1 475 0
	lis 28,.LC2@ha
	.loc 1 479 0
	lfd 0,.LC12@l(9)
	.loc 1 475 0
	xoris 0,30,0x8000
	.loc 1 479 0
	fdiv 3,3,13
.LVL117:
	.loc 1 475 0
	stw 0,1932(1)
	lfs 23,.LC2@l(28)
	lis 0,0x4330
	stw 0,1928(1)
	addi 25,1,964
	addi 26,1,4
	.loc 1 479 0
	mr 24,25
	.loc 1 475 0
	lfd 21,1928(1)
	.loc 1 479 0
	mr 21,26
	.loc 1 480 0
	li 29,0
	la 22,.LC2@l(28)
	.loc 1 481 0
	lis 20,0x4330
	.loc 1 479 0
	fmul 22,3,0
	.loc 1 475 0
	fsub 24,31,28
	fmr 0,23
	.loc 1 479 0
	frsp 22,22
	.loc 1 475 0
	frsp 24,24
.LVL118:
	fsub 21,21,0
.LVL119:
.L137:
	.loc 1 481 0 discriminator 2
	xoris 0,29,0x8000
	stw 20,1936(1)
	stw 0,1940(1)
	.loc 1 480 0 discriminator 2
	addi 29,29,1
.LVL120:
	.loc 1 481 0 discriminator 2
	lfd 26,1936(1)
	fsub 26,26,23
	fmul 26,26,25
	fdiv 26,26,21
	fadd 26,26,22
	frsp 26,26
	.loc 1 482 0 discriminator 2
	fmr 1,26
	bl sin
.LVL121:
	frsp 0,1
	.loc 1 483 0 discriminator 2
	fmr 1,26
	.loc 1 482 0 discriminator 2
	stfsu 0,4(24)
	.loc 1 483 0 discriminator 2
	bl cos
.LVL122:
	.loc 1 480 0 discriminator 2
	cmpw 7,29,30
	.loc 1 483 0 discriminator 2
	frsp 1,1
	stfsu 1,4(21)
	.loc 1 480 0 discriminator 2
	ble+ 7,.L137
	.loc 1 486 0
	lfs 0,.LC9@l(18)
	fcmpu 7,27,0
	bne- 7,.L138
	.loc 1 487 0
	slwi 24,30,2
	addi 29,1,8
.LVL123:
	lwz 0,968(1)
	add 9,29,24
	stw 0,960(9)
	.loc 1 488 0
	lwz 0,8(1)
	stwx 0,29,24
.L138:
	.loc 1 491 0
	lwz 9,0(31)
	addis 9,9,0xfffe
	addi 0,9,31072
	cmplwi 7,0,1
	bgt- 7,.L139
	.loc 1 494 0
	lwz 9,8(31)
	lis 0,0x1
	ori 0,0,34484
	cmpw 7,9,0
	.loc 1 495 0
	lis 9,.LC7@ha
	lfs 1,.LC7@l(9)
	fmr 2,1
	.loc 1 494 0
	beq- 7,.L217
	.loc 1 497 0
	lis 9,.LC15@ha
	lfs 3,.LC15@l(9)
	bl glNormal3f
.L139:
	.loc 1 505 0
	lwz 0,12(31)
	lis 9,0x1
	ori 9,9,34475
	cmpw 7,0,9
	beq- 7,.L143
	lis 9,0x1
	bgt- 7,.L146
	ori 9,9,34474
	cmpw 7,0,9
	bne+ 7,.L128
	.loc 1 588 0
	li 3,0
	.loc 1 593 0
	lis 29,0x4330
	.loc 1 588 0
	bl glBegin
.LVL124:
	xoris 0,27,0x8000
	lfs 26,.LC2@l(28)
	.loc 1 596 0
	lis 24,.LC5@ha
	.loc 1 588 0
	stw 0,1988(1)
	lis 0,0x4330
	stw 0,1984(1)
	fmr 0,26
	.loc 1 589 0
	li 28,0
	.loc 1 588 0
	lfd 27,1984(1)
	fsub 27,27,0
	frsp 27,27
.LVL125:
.L171:
	.loc 1 590 0
	lfsu 28,4(25)
.LVL126:
	.loc 1 592 0
	li 30,0
	.loc 1 591 0
	lfsu 29,4(26)
.LVL127:
	b .L170
.LVL128:
.L169:
	.loc 1 601 0
	lis 9,.LC7@ha
	fmuls 1,30,28
	fmuls 2,30,29
	lfs 3,.LC7@l(9)
	bl glVertex3f
.LVL129:
	.loc 1 592 0
	cmpw 7,27,30
	blt- 7,.L218
.LVL130:
.L170:
	.loc 1 593 0
	xoris 0,30,0x8000
	stw 29,1992(1)
	stw 0,1996(1)
	.loc 1 592 0
	addi 30,30,1
	.loc 1 593 0
	lfd 30,1992(1)
	.loc 1 595 0
	lbz 0,4(31)
	.loc 1 593 0
	fsub 30,30,26
	.loc 1 595 0
	cmpwi 7,0,0
	.loc 1 593 0
	frsp 30,30
	fdivs 30,30,27
	fmuls 30,30,24
	fsub 30,31,30
	frsp 30,30
.LVL131:
	.loc 1 595 0
	beq+ 7,.L169
	.loc 1 596 0
	fmr 2,30
	lfs 0,.LC5@l(24)
	fmr 13,0
	fdiv 2,2,31
	fmul 2,2,13
	frsp 2,2
.LVL132:
	.loc 1 598 0
	fmadds 1,28,2,0
	fmadds 2,29,2,0
.LVL133:
	bl glTexCoord2f
	.loc 1 601 0
	lis 9,.LC7@ha
	fmuls 1,30,28
	lfs 3,.LC7@l(9)
	fmuls 2,30,29
	bl glVertex3f
.LVL134:
	.loc 1 592 0
	cmpw 7,27,30
	bge+ 7,.L170
.L218:
	.loc 1 589 0
	addi 28,28,1
.LVL135:
	cmpw 7,23,28
	bgt+ 7,.L171
.LVL136:
.L215:
	.loc 1 618 0
	bl glEnd
	.loc 1 619 0
	b .L128
.LVL137:
.L216:
	.loc 1 462 0
	lfs 13,.LC9@l(18)
	fmr 12,13
	fcmpu 7,27,12
	bng- 7,.L219
	lis 9,.LC3@ha
	fmr 27,13
	lfd 25,.LC3@l(9)
	mr 23,30
	lis 9,.LC12@ha
	lis 11,.LC14@ha
	b .L134
.LVL138:
.L146:
	.loc 1 505 0
	ori 9,9,34476
	cmpw 7,0,9
	beq- 7,.L144
	xoris 9,0,0xfffe
	cmpwi 7,9,-31059
	bne 7,.L128
	.loc 1 658 0
	lfs 0,.LC9@l(18)
	fcmpu 7,27,0
	blt- 7,.L184
	xoris 0,27,0x8000
	lfs 0,.LC2@l(28)
	stw 0,2028(1)
	lis 0,0x4330
	stw 0,2024(1)
	addi 29,1,8
	addi 28,1,968
	lfd 25,2024(1)
	fsub 25,25,0
	frsp 25,25
.LVL139:
.L189:
	.loc 1 677 0 discriminator 1
	lfs 27,0(22)
	.loc 1 663 0 discriminator 1
	li 25,0
	.loc 1 677 0 discriminator 1
	lis 24,0x4330
	.loc 1 679 0 discriminator 1
	lis 26,.LC5@ha
.LVL140:
.L185:
	.loc 1 677 0
	xoris 0,25,0x8000
	stw 24,2048(1)
	stw 0,2052(1)
	lfd 29,2048(1)
	.loc 1 678 0
	lbz 0,4(31)
	.loc 1 677 0
	fsub 29,29,27
	.loc 1 678 0
	cmpwi 7,0,0
	.loc 1 677 0
	frsp 29,29
	fdivs 29,29,25
	fmuls 29,29,24
	fsub 29,31,29
	frsp 29,29
.LVL141:
	.loc 1 678 0
	beq- 7,.L190
	.loc 1 679 0
	fmr 30,29
.LVL142:
	lfs 0,.LC5@l(26)
	fdiv 30,30,31
	fmul 30,30,0
	frsp 30,30
.LVL143:
.L190:
	.loc 1 682 0
	li 3,3
	li 23,0
	bl glBegin
.LVL144:
	.loc 1 683 0
	li 22,0
	b .L193
.LVL145:
.L221:
	.loc 1 688 0
	lis 9,.LC7@ha
	fmuls 1,29,23
	fmuls 2,29,26
	lfs 3,.LC7@l(9)
	.loc 1 683 0
	addi 22,22,1
	addi 23,23,4
	.loc 1 688 0
	bl glVertex3f
.LVL146:
	.loc 1 683 0
	cmpw 7,22,30
	bgt- 7,.L220
.LVL147:
.L193:
	.loc 1 684 0
	lbz 0,4(31)
	.loc 1 685 0
	lfsx 23,28,23
	.loc 1 684 0
	cmpwi 7,0,0
	.loc 1 686 0
	lfsx 26,29,23
	.loc 1 684 0
	beq+ 7,.L221
	.loc 1 685 0
	lfs 2,.LC5@l(26)
	.loc 1 683 0
	addi 22,22,1
	addi 23,23,4
	.loc 1 685 0
	fmadds 1,23,30,2
	fmadds 2,26,30,2
	bl glTexCoord2f
	.loc 1 688 0
	lis 9,.LC7@ha
	fmuls 1,29,23
	lfs 3,.LC7@l(9)
	fmuls 2,29,26
	bl glVertex3f
.LVL148:
	.loc 1 683 0
	cmpw 7,22,30
	ble+ 7,.L193
.L220:
	.loc 1 691 0
	bl glEnd
	.loc 1 692 0
	fcmpu 7,28,31
	beq- 7,.L128
	.loc 1 437 0
	add 25,25,27
.LVL149:
	.loc 1 676 0
	cmpw 7,27,25
	bge+ 7,.L185
	b .L128
.LVL150:
.L144:
	.loc 1 507 0
	lfd 0,.LC0@l(19)
	fcmpu 7,28,0
	beq- 7,.L147
	xoris 0,27,0x8000
	lfs 0,.LC2@l(28)
	stw 0,1948(1)
	lis 0,0x4330
	stw 0,1944(1)
	mr 23,27
.LVL151:
	addi 29,1,8
	addi 28,1,968
	lfd 23,1944(1)
	fsub 23,23,0
	frsp 23,23
.LVL152:
.L158:
	.loc 1 554 0
	lis 27,0x1
	.loc 1 545 0
	lfs 22,0(22)
	.loc 1 521 0
	li 25,0
	.loc 1 545 0
	lis 24,0x4330
	.loc 1 548 0
	lis 26,.LC5@ha
	.loc 1 554 0
	ori 27,27,34484
.L148:
	.loc 1 545 0
	xoris 9,25,0x8000
	.loc 1 546 0
	addi 25,25,1
	xoris 0,25,0x8000
	.loc 1 545 0
	stw 9,1972(1)
	stw 24,1968(1)
	.loc 1 546 0
	stw 0,1980(1)
	stw 24,1976(1)
	.loc 1 545 0
	lfd 28,1968(1)
	.loc 1 546 0
	lfd 27,1976(1)
	.loc 1 545 0
	fsub 28,28,22
	.loc 1 547 0
	lbz 0,4(31)
	.loc 1 546 0
	fsub 27,27,22
	.loc 1 547 0
	cmpwi 7,0,0
	.loc 1 545 0
	frsp 28,28
	.loc 1 546 0
	frsp 27,27
	.loc 1 545 0
	fdivs 28,28,23
	.loc 1 546 0
	fdivs 27,27,23
	.loc 1 545 0
	fmuls 28,28,24
	.loc 1 546 0
	fmuls 27,27,24
	.loc 1 545 0
	fsub 28,31,28
	.loc 1 546 0
	fsub 27,31,27
	.loc 1 545 0
	frsp 28,28
.LVL153:
	.loc 1 546 0
	frsp 27,27
.LVL154:
	.loc 1 547 0
	beq- 7,.L159
	.loc 1 548 0
	fmr 30,28
	lfs 0,.LC5@l(26)
	.loc 1 549 0
	fmr 13,27
	.loc 1 548 0
	fdiv 30,30,31
	.loc 1 549 0
	fdiv 13,13,31
	.loc 1 548 0
	fmul 30,30,0
	.loc 1 549 0
	fmul 0,13,0
	.loc 1 548 0
	frsp 30,30
.LVL155:
	.loc 1 549 0
	frsp 29,0
.LVL156:
.L159:
	.loc 1 552 0
	li 3,8
	li 22,0
	bl glBegin
.LVL157:
	.loc 1 553 0
	li 21,0
	b .L168
.LVL158:
.L160:
	.loc 1 569 0
	cmpwi 7,0,0
	bne- 7,.L165
	lfsx 25,28,22
	lfsx 26,29,22
.L166:
	.loc 1 573 0
	lfsx 1,28,22
	lis 9,.LC7@ha
	lfsx 2,29,22
	fmuls 1,27,1
	lfs 3,.LC7@l(9)
	fmuls 2,27,2
	bl glVertex3f
	.loc 1 576 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L222
.L167:
	.loc 1 580 0
	lis 9,.LC7@ha
	fmuls 1,28,25
	fmuls 2,28,26
	lfs 3,.LC7@l(9)
	.loc 1 553 0
	addi 21,21,1
	addi 22,22,4
	.loc 1 580 0
	bl glVertex3f
.LVL159:
	.loc 1 553 0
	cmpw 7,21,30
	bgt- 7,.L223
.LVL160:
.L168:
	.loc 1 554 0
	lwz 0,8(31)
	cmpw 7,0,27
	.loc 1 555 0
	lbz 0,4(31)
	.loc 1 554 0
	bne+ 7,.L160
	.loc 1 555 0
	cmpwi 7,0,0
	bne- 7,.L161
	lfsx 25,28,22
	lfsx 26,29,22
.L162:
	.loc 1 559 0
	lis 9,.LC7@ha
	fmuls 1,28,25
	fmuls 2,28,26
	lfs 3,.LC7@l(9)
	bl glVertex3f
	.loc 1 562 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L224
.L163:
	.loc 1 566 0
	lis 9,.LC7@ha
	fmuls 1,27,25
	fmuls 2,27,26
	lfs 3,.LC7@l(9)
	.loc 1 553 0
	addi 21,21,1
	addi 22,22,4
	.loc 1 566 0
	bl glVertex3f
.LVL161:
	.loc 1 553 0
	cmpw 7,21,30
	ble+ 7,.L168
.L223:
	.loc 1 584 0
	bl glEnd
.LVL162:
	.loc 1 544 0
	cmpw 7,23,25
	bgt+ 7,.L148
	b .L128
.LVL163:
.L222:
	.loc 1 577 0
	lfs 2,.LC5@l(26)
	fmadds 1,30,25,2
	fmadds 2,30,26,2
	bl glTexCoord2f
	b .L167
.L165:
	.loc 1 570 0
	lfs 2,.LC5@l(26)
	lfsx 25,28,22
	.loc 1 571 0
	lfsx 26,29,22
	.loc 1 570 0
	fmadds 1,25,29,2
	fmadds 2,26,29,2
	bl glTexCoord2f
	b .L166
.L224:
	.loc 1 563 0
	lfs 2,.LC5@l(26)
	fmadds 1,29,25,2
	fmadds 2,29,26,2
	bl glTexCoord2f
	b .L163
.L161:
	.loc 1 556 0
	lfs 2,.LC5@l(26)
	lfsx 25,28,22
	.loc 1 557 0
	lfsx 26,29,22
	.loc 1 556 0
	fmadds 1,25,30,2
	fmadds 2,26,30,2
	bl glTexCoord2f
	b .L162
.LVL164:
.L143:
	.loc 1 607 0
	fcmpu 7,28,31
	beq- 7,.L225
	.loc 1 619 0
	xoris 0,27,0x8000
	lfs 28,.LC2@l(28)
.LVL165:
	stw 0,2004(1)
	lis 0,0x4330
	stw 0,2000(1)
	fmr 0,28
	.loc 1 607 0
	li 21,0
	addi 29,1,8
	.loc 1 619 0
	lfd 26,2000(1)
	addi 28,1,968
	.loc 1 622 0
	lis 20,0x4330
	.loc 1 624 0
	lis 24,.LC5@ha
	.loc 1 619 0
	fsub 26,26,0
	frsp 26,26
.L180:
	.loc 1 622 0
	xoris 0,21,0x8000
	stw 20,2008(1)
	stw 0,2012(1)
	lfd 29,2008(1)
	.loc 1 623 0
	lbz 0,4(31)
	.loc 1 622 0
	fsub 29,29,28
	.loc 1 623 0
	cmpwi 7,0,0
	.loc 1 622 0
	frsp 29,29
	fdivs 29,29,26
	fmuls 29,29,24
	fsub 29,31,29
	frsp 29,29
.LVL166:
	.loc 1 623 0
	beq- 7,.L176
	.loc 1 624 0
	fmr 30,29
	lfs 0,.LC5@l(24)
	fdiv 30,30,31
	fmul 30,30,0
	frsp 30,30
.LVL167:
.L176:
	.loc 1 627 0
	li 3,3
	li 19,0
	bl glBegin
.LVL168:
	.loc 1 628 0
	li 18,0
	b .L179
.LVL169:
.L178:
	.loc 1 633 0
	lis 9,.LC7@ha
	fmuls 1,29,25
	fmuls 2,29,27
	lfs 3,.LC7@l(9)
	.loc 1 628 0
	addi 18,18,1
	addi 19,19,4
	.loc 1 633 0
	bl glVertex3f
.LVL170:
	.loc 1 628 0
	cmpw 7,18,30
	bgt- 7,.L226
.LVL171:
.L179:
	.loc 1 629 0
	lbz 0,4(31)
	.loc 1 630 0
	lfsx 25,28,19
	.loc 1 629 0
	cmpwi 7,0,0
	.loc 1 631 0
	lfsx 27,29,19
	.loc 1 629 0
	beq+ 7,.L178
	.loc 1 630 0
	lfs 2,.LC5@l(24)
	fmadds 1,25,30,2
	fmadds 2,27,30,2
	bl glTexCoord2f
	b .L178
.LVL172:
.L226:
	.loc 1 621 0
	addi 21,21,1
	.loc 1 636 0
	bl glEnd
.LVL173:
	.loc 1 621 0
	cmpw 7,27,21
	bge+ 7,.L180
	li 28,0
	.loc 1 643 0
	lis 30,0x4330
	.loc 1 645 0
	lis 29,.LC5@ha
.LVL174:
.L183:
	.loc 1 641 0
	li 3,3
	.loc 1 639 0
	lfsu 28,4(25)
.LVL175:
	.loc 1 640 0
	lfsu 29,4(26)
.LVL176:
	.loc 1 641 0
	bl glBegin
.LVL177:
	.loc 1 643 0
	lfs 27,0(22)
	.loc 1 642 0
	li 24,0
.LVL178:
.L182:
	.loc 1 643 0
	xoris 0,24,0x8000
	stw 30,2016(1)
	stw 0,2020(1)
	.loc 1 642 0
	addi 24,24,1
	.loc 1 643 0
	lfd 30,2016(1)
	.loc 1 644 0
	lbz 0,4(31)
	.loc 1 643 0
	fsub 30,30,27
	.loc 1 644 0
	cmpwi 7,0,0
	.loc 1 643 0
	frsp 30,30
	fdivs 30,30,26
	fmuls 30,30,24
	fsub 30,31,30
	frsp 30,30
.LVL179:
	.loc 1 644 0
	beq- 7,.L181
	.loc 1 645 0
	fmr 2,30
	lfs 0,.LC5@l(29)
	fmr 13,0
	fdiv 2,2,31
	fmul 2,2,13
	frsp 2,2
.LVL180:
	.loc 1 649 0
	fmadds 1,28,2,0
	fmadds 2,29,2,0
.LVL181:
	bl glTexCoord2f
.L181:
	.loc 1 652 0
	lis 9,.LC7@ha
	fmuls 1,30,28
	fmuls 2,30,29
	lfs 3,.LC7@l(9)
	bl glVertex3f
.LVL182:
	.loc 1 642 0
	cmpw 7,27,24
	bge+ 7,.L182
	.loc 1 638 0
	addi 28,28,1
	.loc 1 654 0
	bl glEnd
.LVL183:
	.loc 1 638 0
	cmpw 7,23,28
	bgt+ 7,.L183
	b .L128
.LVL184:
.L217:
	.loc 1 495 0
	lis 9,.LC6@ha
	lfs 3,.LC6@l(9)
	bl glNormal3f
	b .L139
.L184:
	.loc 1 437 0
	slwi 21,30,2
	li 25,0
	li 23,0
.LVL185:
	addi 29,1,8
	addi 28,1,968
	.loc 1 662 0
	lis 26,0x4330
	.loc 1 667 0
	lis 24,.LC5@ha
.L188:
	.loc 1 662 0
	li 3,3
	.loc 1 660 0
	lfsx 26,28,25
.LVL186:
	.loc 1 661 0
	lfsx 27,29,25
.LVL187:
	.loc 1 662 0
	bl glBegin
.LVL188:
	lfs 23,0(22)
	xoris 0,27,0x8000
	stw 0,2036(1)
	.loc 1 663 0
	li 20,0
	.loc 1 662 0
	stw 26,2032(1)
	fmr 0,23
	lfd 25,2032(1)
	fsub 25,25,0
	frsp 25,25
	b .L187
.LVL189:
.L186:
	.loc 1 671 0
	lis 9,.LC7@ha
	fmuls 1,29,26
	fmuls 2,29,27
	lfs 3,.LC7@l(9)
	bl glVertex3f
.LVL190:
	.loc 1 663 0
	cmpw 7,27,20
	blt- 7,.L227
.LVL191:
.L187:
	.loc 1 664 0
	xoris 0,20,0x8000
	stw 26,2040(1)
	stw 0,2044(1)
	.loc 1 663 0
	addi 20,20,1
	.loc 1 664 0
	lfd 29,2040(1)
	.loc 1 666 0
	lbz 0,4(31)
	.loc 1 664 0
	fsub 29,29,23
	.loc 1 666 0
	cmpwi 7,0,0
	.loc 1 664 0
	frsp 29,29
	fdivs 29,29,25
	fmuls 29,29,24
	fsub 29,31,29
	frsp 29,29
.LVL192:
	.loc 1 666 0
	beq+ 7,.L186
	.loc 1 667 0
	fmr 30,29
	lfs 2,.LC5@l(24)
	fmr 0,2
	fdiv 30,30,31
	fmul 30,30,0
	frsp 30,30
.LVL193:
	.loc 1 668 0
	fmadds 1,26,30,2
	fmadds 2,27,30,2
	bl glTexCoord2f
	b .L186
.LVL194:
.L227:
	.loc 1 437 0
	add 23,23,30
	.loc 1 673 0
	bl glEnd
.LVL195:
	.loc 1 659 0
	cmpw 7,30,23
	.loc 1 437 0
	add 25,25,21
	.loc 1 659 0
	bge+ 7,.L188
	b .L189
.LVL196:
.L225:
	.loc 1 608 0
	li 3,3
	addi 29,1,8
	bl glBegin
.LVL197:
	li 27,0
.LVL198:
	.loc 1 610 0
	li 26,0
	addi 28,1,968
	.loc 1 612 0
	lis 25,.LC5@ha
	b .L175
.LVL199:
.L174:
	.loc 1 615 0
	fmr 1,30
	lis 9,.LC7@ha
	.loc 1 616 0
	fmr 2,31
	.loc 1 615 0
	lfs 3,.LC7@l(9)
	.loc 1 610 0
	addi 26,26,1
	addi 27,27,4
	.loc 1 615 0
	fmul 1,1,28
	.loc 1 616 0
	fmul 2,2,28
	.loc 1 615 0
	frsp 1,1
	frsp 2,2
	bl glVertex3f
.LVL200:
	.loc 1 610 0
	cmpw 7,26,30
	bgt- 7,.L215
.LVL201:
.L175:
	.loc 1 611 0
	lbz 0,4(31)
	.loc 1 612 0
	lfsx 30,28,27
	.loc 1 611 0
	cmpwi 7,0,0
	.loc 1 613 0
	lfsx 31,29,27
	.loc 1 611 0
	beq+ 7,.L174
	.loc 1 612 0
	lfs 2,.LC5@l(25)
	fmadds 1,30,2,2
	fmadds 2,31,2,2
	bl glTexCoord2f
	b .L174
.LVL202:
.L147:
	.loc 1 510 0
	li 3,6
	.loc 1 508 0
	addi 23,27,-1
.LVL203:
	.loc 1 510 0
	bl glBegin
.LVL204:
	.loc 1 511 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq+ 7,.L149
	.loc 1 512 0
	lis 9,.LC5@ha
	lfs 1,.LC5@l(9)
	fmr 2,1
	bl glTexCoord2f
.L149:
	.loc 1 514 0
	lis 9,.LC7@ha
	.loc 1 516 0
	xoris 27,27,0x8000
.LVL205:
	.loc 1 514 0
	lfs 1,.LC7@l(9)
	fmr 2,1
	fmr 3,1
	bl glVertex3f
	.loc 1 516 0
	lis 0,0x4330
	xoris 9,23,0x8000
	stw 27,1956(1)
	stw 0,1952(1)
	stw 9,1964(1)
	stw 0,1960(1)
	lfs 0,.LC2@l(28)
	lfd 23,1952(1)
	lfd 13,1960(1)
	fsub 23,23,0
	.loc 1 517 0
	lbz 0,4(31)
	.loc 1 516 0
	fsub 0,13,0
	.loc 1 517 0
	cmpwi 7,0,0
	.loc 1 516 0
	frsp 23,23
	frsp 28,0
.LVL206:
	fdivs 28,28,23
	fmuls 28,28,24
	.loc 1 515 0
	fsub 28,31,28
	frsp 28,28
.LVL207:
	.loc 1 517 0
	beq- 7,.L150
.LVL208:
	.loc 1 518 0
	fmr 30,28
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	fdiv 30,30,31
	fmul 30,30,0
	frsp 30,30
.LVL209:
.L150:
	.loc 1 521 0
	lwz 9,8(31)
	xoris 0,9,0xfffe
	cmpwi 6,0,-31052
	beq 6,.L228
	li 27,0
	li 26,0
	addi 29,1,8
	addi 28,1,968
	.loc 1 533 0
	lis 25,.LC5@ha
	b .L151
.L157:
	.loc 1 536 0
	lis 9,.LC7@ha
	fmuls 1,28,26
	fmuls 2,28,27
	lfs 3,.LC7@l(9)
	.loc 1 531 0
	addi 26,26,1
	addi 27,27,4
	.loc 1 536 0
	bl glVertex3f
.LVL210:
	.loc 1 531 0
	cmpw 7,26,30
	bgt- 7,.L154
	lbz 0,4(31)
	cmpwi 7,0,0
.LVL211:
.L151:
	.loc 1 533 0
	lfsx 26,28,27
	.loc 1 534 0
	lfsx 27,29,27
	.loc 1 532 0
	beq+ 7,.L157
	.loc 1 533 0
	lfs 2,.LC5@l(25)
	fmadds 1,26,30,2
	fmadds 2,27,30,2
	bl glTexCoord2f
	b .L157
.LVL212:
.L154:
	.loc 1 540 0
	bl glEnd
.LVL213:
	.loc 1 544 0
	cmpwi 7,23,0
	bne+ 7,.L158
	b .L128
.LVL214:
.L228:
	.loc 1 521 0
	mr 26,30
	li 27,0
	slwi 24,30,2
	addi 29,1,8
	addi 28,1,968
	.loc 1 524 0
	lis 25,.LC5@ha
	b .L155
.L229:
	.loc 1 437 0
	lfsx 26,11,27
	lfsx 27,9,27
.L153:
	.loc 1 527 0
	lis 9,.LC7@ha
	fmuls 1,28,26
	fmuls 2,28,27
	lfs 3,.LC7@l(9)
	.loc 1 522 0
	addi 27,27,-4
	.loc 1 527 0
	bl glVertex3f
.LVL215:
	.loc 1 522 0
	addic. 26,26,-1
.LVL216:
	blt- 0,.L154
	lbz 0,4(31)
	cmpwi 7,0,0
.LVL217:
.L155:
	.loc 1 437 0
	add 11,28,24
	add 9,29,24
	.loc 1 523 0
	beq+ 7,.L229
	.loc 1 437 0
	add 11,28,24
	add 9,29,24
	.loc 1 524 0
	lfs 2,.LC5@l(25)
	lfsx 26,11,27
	.loc 1 525 0
	lfsx 27,9,27
	.loc 1 524 0
	fmadds 1,26,30,2
	fmadds 2,27,30,2
	bl glTexCoord2f
	b .L153
.LVL218:
.L219:
	.loc 1 463 0
	fcmpu 7,27,0
	lis 9,.LC12@ha
	bnl- 7,.L214
	.loc 1 464 0
	fadd 3,3,27
.LVL219:
	.loc 1 465 0
	lis 9,.LC12@ha
	fneg 27,27
.L214:
.LVL220:
	lfd 25,.LC12@l(9)
	lis 11,.LC14@ha
	lfs 0,.LC14@l(11)
	fmul 25,27,25
	fdiv 25,25,0
	.loc 1 468 0
	lfs 0,.LC9@l(18)
	.loc 1 471 0
	fcmpu 7,27,0
	crnot 30,30
	mfcr 23
	rlwinm 23,23,31,1
	add 23,30,23
	b .L134
	.cfi_endproc
.LFE10:
	.size	gluPartialDisk, .-gluPartialDisk
	.align 2
	.globl gluDisk
	.type	gluDisk, @function
gluDisk:
.LFB9:
	.loc 1 432 0
	.cfi_startproc
.LVL221:
	.loc 1 433 0
	lis 9,.LC0@ha
	.loc 1 434 0
	.loc 1 433 0
	lfd 3,.LC0@l(9)
	lis 9,.LC9@ha
	lfs 4,.LC9@l(9)
	b gluPartialDisk
.LVL222:
.LVL223:
.LVL224:
.LVL225:
.LVL226:
	.cfi_endproc
.LFE9:
	.size	gluDisk, .-gluDisk
	.align 2
	.globl gluSphere
	.type	gluSphere, @function
gluSphere:
.LFB11:
	.loc 1 702 0
	.cfi_startproc
.LVL227:
	mfcr 12
	.loc 1 1134 0
	cmpwi 7,4,239
	.loc 1 702 0
	mflr 0
	stwu 1,-12000(1)
.LCFI26:
	.cfi_def_cfa_offset 12000
	.cfi_register 65, 0
	.cfi_register 70, 12
	stfd 31,11992(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 30,11888(1)
	.loc 1 1134 0
	mr 30,4
	.cfi_offset 30, -112
	.loc 1 702 0
	stw 31,11892(1)
	mr 31,3
	.cfi_offset 31, -108
	stw 0,12004(1)
	stfd 19,11896(1)
	stfd 20,11904(1)
	stfd 21,11912(1)
	stfd 22,11920(1)
	stfd 23,11928(1)
	stfd 24,11936(1)
	stfd 25,11944(1)
	stfd 26,11952(1)
	stfd 27,11960(1)
	stfd 28,11968(1)
	stfd 29,11976(1)
	stfd 30,11984(1)
	stw 14,11824(1)
	stw 15,11828(1)
	stw 16,11832(1)
	stw 17,11836(1)
	stw 18,11840(1)
	stw 19,11844(1)
	stw 20,11848(1)
	stw 21,11852(1)
	stw 22,11856(1)
	stw 23,11860(1)
	stw 24,11864(1)
	stw 25,11868(1)
	stw 26,11872(1)
	stw 27,11876(1)
	stw 28,11880(1)
	stw 29,11884(1)
	stw 12,11820(1)
	.loc 1 1134 0
	ble- 7,.L232
	.cfi_offset 70, -180
	.cfi_offset 29, -116
	.cfi_offset 28, -120
	.cfi_offset 27, -124
	.cfi_offset 26, -128
	.cfi_offset 25, -132
	.cfi_offset 24, -136
	.cfi_offset 23, -140
	.cfi_offset 22, -144
	.cfi_offset 21, -148
	.cfi_offset 20, -152
	.cfi_offset 19, -156
	.cfi_offset 18, -160
	.cfi_offset 17, -164
	.cfi_offset 16, -168
	.cfi_offset 15, -172
	.cfi_offset 14, -176
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
	.cfi_offset 65, 4
	.loc 1 727 0
	cmpwi 7,5,239
	.loc 1 1134 0
	li 30,239
	.loc 1 727 0
	mr 26,5
	bgt- 7,.L357
.LVL228:
.L234:
	.loc 1 727 0 is_stmt 0 discriminator 1
	cmpwi 7,5,0
	ble- 7,.L233
	lis 9,.LC0@ha
	lfd 0,.LC0@l(9)
	fcmpu 7,31,0
	bnl- 7,.L352
.L233:
	.loc 1 1164 0 is_stmt 1
	lwz 0,16(31)
.LVL229:
.LBB30:
.LBB31:
	.loc 1 86 0
	cmpwi 7,0,0
	beq- 7,.L231
	.loc 1 87 0
	lis 3,0x1
.LVL230:
	mtctr 0
	ori 3,3,35365
	bctrl
.LVL231:
.L231:
.LBE31:
.LBE30:
	.loc 1 1164 0
	lwz 0,12004(1)
	lwz 12,11820(1)
	mtlr 0
	lwz 14,11824(1)
	lwz 15,11828(1)
	mtcrf 56,12
	lwz 16,11832(1)
	lwz 17,11836(1)
	lwz 18,11840(1)
	lwz 19,11844(1)
	lwz 20,11848(1)
	lwz 21,11852(1)
	lwz 22,11856(1)
	lwz 23,11860(1)
	lwz 24,11864(1)
	lwz 25,11868(1)
	lwz 26,11872(1)
	lwz 27,11876(1)
	lwz 28,11880(1)
	lwz 29,11884(1)
	lwz 30,11888(1)
	lwz 31,11892(1)
.LVL232:
	lfd 19,11896(1)
	lfd 20,11904(1)
	lfd 21,11912(1)
	lfd 22,11920(1)
	lfd 23,11928(1)
	lfd 24,11936(1)
	lfd 25,11944(1)
	lfd 26,11952(1)
	lfd 27,11960(1)
	lfd 28,11968(1)
	lfd 29,11976(1)
	lfd 30,11984(1)
	lfd 31,11992(1)
	addi 1,1,12000
	.cfi_remember_state
.LCFI27:
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
.LVL233:
.L232:
.LCFI28:
	.cfi_restore_state
	.loc 1 727 0
	cmpwi 7,4,1
	ble- 7,.L233
	cmpwi 7,5,239
	mr 26,5
	ble- 7,.L234
.LVL234:
.L357:
	.loc 1 727 0 is_stmt 0 discriminator 1
	lis 9,.LC0@ha
	li 26,239
	lfd 0,.LC0@l(9)
	fcmpu 7,31,0
	blt- 7,.L233
.L352:
.LVL235:
	.loc 1 737 0 is_stmt 1
	lwz 16,0(31)
	xoris 0,16,0xfffe
	cmpwi 7,0,-31072
	beq 7,.L327
	.loc 1 741 0
	lis 0,0x1
	.loc 1 742 0
	lwz 17,12(31)
	.loc 1 741 0
	ori 0,0,34465
	cmpw 7,16,0
	beq- 7,.L358
	.loc 1 735 0
	li 18,0
	li 0,0
.LVL236:
.L238:
	.loc 1 745 0
	lis 22,.LC2@ha
	xoris 9,30,0x8000
	stw 9,11532(1)
	lis 9,0x4330
	lfs 20,.LC2@l(22)
	lis 15,.LC3@ha
	stw 9,11528(1)
	la 15,.LC3@l(15)
	fmr 0,20
	cmpwi 4,0,0
	lfd 21,11528(1)
	.loc 1 735 0
	li 27,0
	.loc 1 751 0
	lfd 25,0(15)
	.loc 1 750 0
	li 25,0
	.loc 1 745 0
	fsub 21,21,0
	la 23,.LC2@l(22)
	addi 29,1,10568
	addi 28,1,9608
	.loc 1 751 0
	lis 24,0x4330
.LVL237:
.L240:
	xoris 0,25,0x8000
	stw 24,11536(1)
	stw 0,11540(1)
	.loc 1 750 0
	addi 25,25,1
.LVL238:
	.loc 1 751 0
	lfd 28,11536(1)
	fsub 28,28,20
	fmul 28,28,25
	fdiv 28,28,21
	frsp 28,28
	.loc 1 752 0
	fmr 1,28
	bl sin
.LVL239:
	frsp 26,1
	.loc 1 753 0
	fmr 1,28
	.loc 1 752 0
	stfsx 26,29,27
	.loc 1 753 0
	bl cos
	.loc 1 750 0
	cmpw 7,25,30
	.loc 1 753 0
	frsp 1,1
	stfsx 1,28,27
	.loc 1 754 0
	beq- 4,.L239
	.loc 1 755 0
	addi 9,1,8648
	stfsx 26,27,9
	.loc 1 756 0
	addi 9,1,7688
	stfsx 1,27,9
.L239:
.LVL240:
	.loc 1 750 0
	addi 27,27,4
	bne+ 7,.L240
	xoris 0,26,0x8000
	lfs 19,.LC2@l(22)
	stw 0,11548(1)
	lis 0,0x4330
	stw 0,11544(1)
	fmr 0,19
	lis 14,.LC12@ha
	.loc 1 763 0
	lis 19,0x1
	.loc 1 750 0
	lfd 25,11544(1)
	la 14,.LC12@l(14)
	.loc 1 761 0
	lfd 20,0(14)
	.loc 1 701 0
	addi 20,26,1
	.loc 1 750 0
	fsub 25,25,0
	.loc 1 701 0
	li 27,0
	li 25,0
.LVL241:
	addi 21,1,4808
	addi 22,1,3848
	.loc 1 761 0
	lis 24,0x4330
	.loc 1 763 0
	ori 19,19,34484
	b .L244
.LVL242:
.L360:
	.loc 1 701 0
	fmr 1,28
	bl sin
	fmr 26,1
	fmr 1,28
	bl cos
.L242:
	.loc 1 771 0
	fmul 26,31,26
	.loc 1 760 0
	addi 25,25,1
.LVL243:
	cmpw 7,25,20
	.loc 1 772 0
	fmul 1,31,1
	.loc 1 771 0
	frsp 26,26
	.loc 1 772 0
	frsp 1,1
	.loc 1 771 0
	stfsx 26,21,27
	.loc 1 772 0
	stfsx 1,22,27
	.loc 1 760 0
	addi 27,27,4
	beq- 7,.L359
.LVL244:
.L244:
	.loc 1 761 0
	xoris 0,25,0x8000
	stw 24,11552(1)
	stw 0,11556(1)
	lfd 28,11552(1)
	fsub 28,28,19
	fmul 28,28,20
	fdiv 28,28,25
	frsp 28,28
.LVL245:
	.loc 1 762 0
	beq- 4,.L360
	.loc 1 763 0
	lwz 0,8(31)
	.loc 1 764 0
	fmr 1,28
	.loc 1 763 0
	cmpw 7,0,19
	beq- 7,.L361
	.loc 1 767 0
	bl sin
	addi 9,1,2888
	fmr 26,1
	.loc 1 760 0
	addi 25,25,1
	.loc 1 768 0
	fmr 1,28
	.loc 1 767 0
	frsp 0,26
	.loc 1 771 0
	fmul 26,31,26
	.loc 1 767 0
	fneg 0,0
	.loc 1 771 0
	frsp 26,26
	.loc 1 767 0
	stfsx 0,27,9
	.loc 1 768 0
	bl cos
.LVL246:
	.loc 1 760 0
	cmpw 7,25,20
	.loc 1 768 0
	frsp 0,1
	addi 9,1,1928
	.loc 1 772 0
	fmul 1,31,1
	.loc 1 768 0
	fneg 0,0
	.loc 1 772 0
	frsp 1,1
	.loc 1 768 0
	stfsx 0,27,9
	.loc 1 771 0
	stfsx 26,21,27
	.loc 1 772 0
	stfsx 1,22,27
	.loc 1 760 0
	addi 27,27,4
	bne+ 7,.L244
.L359:
	.loc 1 778 0
	cmpwi 2,18,0
	.loc 1 776 0
	slwi 25,26,2
.LVL247:
	addi 18,1,8
.LVL248:
	.loc 1 775 0
	li 0,0
	.loc 1 776 0
	add 9,18,25
	.loc 1 775 0
	stw 0,4808(1)
	.loc 1 776 0
	stw 0,4800(9)
	.loc 1 778 0
	beq- 2,.L245
	.loc 1 780 0
	lis 9,.LC5@ha
	lfs 19,0(23)
	la 9,.LC5@l(9)
	lfd 26,0(15)
	lfs 20,0(9)
	.loc 1 778 0
	addi 19,1,6724
	addi 24,1,5764
	li 27,0
	.loc 1 780 0
	lis 15,0x4330
.LVL249:
.L246:
	.loc 1 780 0 is_stmt 0 discriminator 2
	xoris 0,27,0x8000
	stw 15,11560(1)
	stw 0,11564(1)
	.loc 1 779 0 is_stmt 1 discriminator 2
	addi 27,27,1
.LVL250:
	.loc 1 780 0 discriminator 2
	lfd 28,11560(1)
	fsub 28,28,19
	fsub 28,28,20
	fmul 28,28,26
	fdiv 28,28,21
	frsp 28,28
	.loc 1 781 0 discriminator 2
	fmr 1,28
	bl sin
.LVL251:
	frsp 0,1
	.loc 1 782 0 discriminator 2
	fmr 1,28
	.loc 1 781 0 discriminator 2
	stfsu 0,4(19)
	.loc 1 782 0 discriminator 2
	bl cos
.LVL252:
	.loc 1 779 0 discriminator 2
	cmpw 7,27,30
	.loc 1 782 0 discriminator 2
	frsp 1,1
	stfsu 1,4(24)
	.loc 1 779 0 discriminator 2
	bne+ 7,.L246
	.loc 1 786 0
	lwz 9,8(31)
	.loc 1 785 0
	lis 11,.LC5@ha
	.loc 1 786 0
	lis 0,0x1
	.loc 1 785 0
	la 11,.LC5@l(11)
	.loc 1 786 0
	ori 0,0,34484
	.loc 1 785 0
	lfs 20,0(23)
	lfs 21,0(11)
.LVL253:
	.loc 1 786 0
	cmpw 3,9,0
	.loc 1 785 0
	lfd 26,0(14)
	.loc 1 786 0
	li 24,0
	li 27,0
.LVL254:
	addi 15,1,968
	.loc 1 785 0
	lis 19,0x4330
	b .L249
.LVL255:
.L247:
	.loc 1 790 0
	bl sin
	.loc 1 784 0
	addi 27,27,1
	.loc 1 790 0
	frsp 0,1
	.loc 1 791 0
	fmr 1,28
	.loc 1 790 0
	fneg 0,0
	stfsx 0,15,24
	.loc 1 791 0
	bl cos
.LVL256:
	.loc 1 784 0
	cmpw 7,27,20
	.loc 1 791 0
	frsp 0,1
	fneg 0,0
	stfsx 0,18,24
	.loc 1 784 0
	addi 24,24,4
	beq- 7,.L245
.LVL257:
.L249:
	.loc 1 785 0
	xoris 0,27,0x8000
	stw 19,11568(1)
	stw 0,11572(1)
	lfd 28,11568(1)
	fsub 28,28,20
	fsub 28,28,21
	fmul 28,28,26
	fdiv 28,28,25
	frsp 28,28
.LVL258:
	.loc 1 787 0
	fmr 1,28
	.loc 1 786 0
	bne+ 3,.L247
	.loc 1 787 0
	bl sin
	.loc 1 784 0
	addi 27,27,1
	.loc 1 787 0
	frsp 0,1
	.loc 1 788 0
	fmr 1,28
	.loc 1 787 0
	stfsx 0,15,24
	.loc 1 788 0
	bl cos
.LVL259:
	.loc 1 784 0
	cmpw 7,27,20
	.loc 1 788 0
	frsp 1,1
	stfsx 1,18,24
	.loc 1 784 0
	addi 24,24,4
	bne+ 7,.L249
.LVL260:
.L245:
	.loc 1 796 0
	lwz 0,10568(1)
	slwi 27,30,2
	add 9,18,27
	stw 0,10560(9)
	.loc 1 797 0
	lwz 0,9608(1)
	stw 0,9600(9)
	.loc 1 798 0
	beq- 4,.L250
	.loc 1 799 0
	lwz 0,8648(1)
	stw 0,8640(9)
	.loc 1 800 0
	lwz 0,7688(1)
	stw 0,7680(9)
.L250:
	.loc 1 802 0
	beq- 2,.L251
	.loc 1 803 0
	lwz 0,6728(1)
	add 9,18,27
	stw 0,6720(9)
	.loc 1 804 0
	lwz 0,5768(1)
	stw 0,5760(9)
.L251:
	.loc 1 807 0
	lis 0,0x1
	ori 0,0,34475
	cmpw 7,17,0
	beq- 7,.L253
	lis 0,0x1
	bgt- 7,.L255
	ori 0,0,34474
	cmpw 7,17,0
	bne+ 7,.L231
	.loc 1 1041 0
	li 3,0
	.loc 1 1070 0
	lis 19,.LC6@ha
	.loc 1 1041 0
	bl glBegin
.LVL261:
	li 18,0
	.loc 1 1042 0
	li 20,0
	.loc 1 1070 0
	lis 24,0x4330
.LVL262:
.L310:
	.loc 1 1045 0
	lwz 9,0(31)
	.loc 1 1043 0
	lfsx 31,21,18
.LVL263:
	.loc 1 1045 0
	addis 9,9,0xfffe
	.loc 1 1044 0
	lfsx 28,22,18
.LVL264:
	.loc 1 1045 0
	addi 0,9,31072
	cmplwi 7,0,1
	bgt- 7,.L303
	.loc 1 1048 0
	addi 11,1,2888
	lfsx 29,18,11
.LVL265:
	.loc 1 1049 0
	addi 11,1,1928
.LVL266:
	lfsx 30,18,11
.LVL267:
.L303:
	.loc 1 1042 0
	li 27,0
	.loc 1 1054 0
	li 25,0
	b .L309
.LVL268:
.L307:
	.loc 1 1073 0
	lfsx 1,29,27
	fmr 3,28
	lfsx 2,28,27
	.loc 1 1054 0
	addi 25,25,1
	.loc 1 1073 0
	fmuls 1,31,1
	.loc 1 1054 0
	addi 27,27,4
	.loc 1 1073 0
	fmuls 2,31,2
	bl glVertex3f
.LVL269:
	.loc 1 1054 0
	cmpw 7,25,30
	beq- 7,.L308
.L362:
	lwz 9,0(31)
	addis 9,9,0xfffe
.LVL270:
.L309:
	.loc 1 1055 0
	addi 9,9,31072
	.loc 1 1058 0
	fmr 3,30
	.loc 1 1055 0
	cmplwi 7,9,1
	bgt- 7,.L305
	.loc 1 1058 0
	addi 9,1,8648
	lfsx 1,27,9
	addi 9,1,7688
	lfsx 2,27,9
	fmuls 1,29,1
	fmuls 2,29,2
	bl glNormal3f
.L305:
	.loc 1 1069 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq+ 7,.L307
	.loc 1 1070 0
	xoris 10,25,0x8000
	xoris 11,30,0x8000
	.loc 1 1071 0
	xoris 9,20,0x8000
	xoris 0,26,0x8000
	.loc 1 1070 0
	stw 10,11708(1)
	.loc 1 1054 0
	addi 25,25,1
	.loc 1 1070 0
	stw 11,11716(1)
	.loc 1 1071 0
	stw 9,11724(1)
	stw 0,11732(1)
	.loc 1 1070 0
	stw 24,11704(1)
	stw 24,11712(1)
	.loc 1 1071 0
	stw 24,11720(1)
	stw 24,11728(1)
	.loc 1 1070 0
	lfs 0,0(23)
	.loc 1 1071 0
	lfd 13,11728(1)
	.loc 1 1070 0
	lfd 1,11704(1)
	lfd 12,11712(1)
	.loc 1 1071 0
	lfd 2,11720(1)
	.loc 1 1070 0
	fsub 1,1,0
	fsub 12,12,0
	.loc 1 1071 0
	fsub 2,2,0
	fsub 0,13,0
	.loc 1 1070 0
	frsp 12,12
	frsp 1,1
	.loc 1 1071 0
	frsp 13,0
	.loc 1 1070 0
	lfs 0,.LC6@l(19)
	.loc 1 1071 0
	frsp 2,2
	.loc 1 1070 0
	fdivs 1,1,12
	.loc 1 1071 0
	fdivs 2,2,13
	.loc 1 1070 0
	fsubs 1,0,1
	fsubs 2,0,2
	bl glTexCoord2f
	.loc 1 1073 0
	lfsx 1,29,27
	lfsx 2,28,27
	fmr 3,28
	fmuls 1,31,1
	.loc 1 1054 0
	addi 27,27,4
	.loc 1 1073 0
	fmuls 2,31,2
	bl glVertex3f
.LVL271:
	.loc 1 1054 0
	cmpw 7,25,30
	bne+ 7,.L362
.L308:
	.loc 1 1042 0
	addi 20,20,1
.LVL272:
	addi 18,18,4
	cmpw 7,26,20
	bge+ 7,.L310
	.loc 1 1077 0
	bl glEnd
	.loc 1 1078 0
	b .L231
.LVL273:
.L358:
	.loc 1 742 0
	lis 0,0x1
	.loc 1 735 0
	li 18,0
	.loc 1 742 0
	ori 0,0,34474
	cmpw 7,17,0
	.loc 1 735 0
	li 0,0
	.loc 1 742 0
	beq- 7,.L238
.LVL274:
	.loc 1 745 0
	lis 9,0x1
	.loc 1 743 0
	li 18,1
	.loc 1 745 0
	ori 9,9,34475
	.loc 1 735 0
	cmpw 7,17,9
	mfcr 0
	rlwinm 0,0,31,1
	b .L238
.LVL275:
.L361:
	.loc 1 764 0
	bl sin
	addi 9,1,2888
	fmr 26,1
	.loc 1 765 0
	fmr 1,28
	.loc 1 764 0
	frsp 0,26
	stfsx 0,27,9
	.loc 1 765 0
	bl cos
	addi 9,1,1928
	frsp 0,1
	stfsx 0,27,9
	b .L242
.LVL276:
.L255:
	.loc 1 807 0
	ori 0,0,34476
	cmpw 7,17,0
	beq- 7,.L254
	xoris 0,17,0xfffe
	cmpwi 7,0,-31059
	bne 7,.L231
.L253:
.LVL277:
	.loc 1 1081 0 discriminator 1
	cmpwi 7,26,1
	beq- 7,.L257
	.loc 1 1096 0
	lis 24,0x1
	lis 25,0x1
	.loc 1 1078 0
	mr 15,21
	mr 17,22
	.loc 1 1081 0
	li 20,1
	.loc 1 1096 0
	ori 24,24,34464
	ori 25,25,34465
	.loc 1 1112 0
	lis 27,0x4330
	lis 19,.LC6@ha
.LVL278:
.L318:
	.loc 1 1084 0
	addis 16,16,0xfffe
	.loc 1 1082 0
	lfsu 31,4(15)
.LVL279:
	.loc 1 1084 0
	addi 0,16,31072
	.loc 1 1083 0
	lfsu 28,4(17)
.LVL280:
	.loc 1 1084 0
	cmplwi 7,0,1
	bgt- 7,.L311
	.loc 1 701 0
	slwi 0,20,2
	.loc 1 1087 0
	addi 9,1,2888
	lfsx 29,9,0
.LVL281:
	.loc 1 1088 0
	addi 9,1,1928
.LVL282:
	lfsx 30,9,0
.LVL283:
.L311:
	.loc 1 1094 0
	li 3,3
	li 16,0
	bl glBegin
.LVL284:
	.loc 1 1095 0
	li 14,0
	b .L317
.LVL285:
.L366:
	.loc 1 1096 0
	beq- 6,.L363
	.loc 1 1111 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L364
.L316:
	.loc 1 1115 0
	lfsx 1,29,16
	fmr 3,28
	lfsx 2,28,16
	.loc 1 1095 0
	addi 14,14,1
	.loc 1 1115 0
	fmuls 1,31,1
	.loc 1 1095 0
	addi 16,16,4
	.loc 1 1115 0
	fmuls 2,31,2
	bl glVertex3f
.LVL286:
	.loc 1 1095 0
	cmpw 7,30,14
	blt- 7,.L365
.LVL287:
.L317:
	.loc 1 1096 0
	lwz 0,0(31)
	cmpw 7,0,24
	cmpw 6,0,25
	bne+ 7,.L366
	.loc 1 1103 0
	addi 9,1,8648
	lfsx 1,16,9
	addi 9,1,7688
.L356:
	lfsx 2,16,9
	fmuls 1,29,1
	fmr 3,30
	fmuls 2,29,2
	bl glNormal3f
	.loc 1 1111 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq+ 7,.L316
.L364:
	.loc 1 1112 0
	xoris 10,14,0x8000
	xoris 11,30,0x8000
	.loc 1 1113 0
	xoris 9,20,0x8000
	xoris 0,26,0x8000
	.loc 1 1112 0
	stw 10,11740(1)
	.loc 1 1095 0
	addi 14,14,1
	.loc 1 1112 0
	stw 11,11748(1)
	.loc 1 1113 0
	stw 9,11756(1)
	stw 0,11764(1)
	.loc 1 1112 0
	stw 27,11736(1)
	stw 27,11744(1)
	.loc 1 1113 0
	stw 27,11752(1)
	stw 27,11760(1)
	.loc 1 1112 0
	lfs 0,0(23)
	.loc 1 1113 0
	lfd 13,11760(1)
	.loc 1 1112 0
	lfd 1,11736(1)
	lfd 12,11744(1)
	.loc 1 1113 0
	lfd 2,11752(1)
	.loc 1 1112 0
	fsub 1,1,0
	fsub 12,12,0
	.loc 1 1113 0
	fsub 2,2,0
	fsub 0,13,0
	.loc 1 1112 0
	frsp 12,12
	frsp 1,1
	.loc 1 1113 0
	frsp 13,0
	.loc 1 1112 0
	lfs 0,.LC6@l(19)
	.loc 1 1113 0
	frsp 2,2
	.loc 1 1112 0
	fdivs 1,1,12
	.loc 1 1113 0
	fdivs 2,2,13
	.loc 1 1112 0
	fsubs 1,0,1
	fsubs 2,0,2
	bl glTexCoord2f
	.loc 1 1115 0
	lfsx 1,29,16
	lfsx 2,28,16
	fmr 3,28
	fmuls 1,31,1
	.loc 1 1095 0
	addi 16,16,4
	.loc 1 1115 0
	fmuls 2,31,2
	bl glVertex3f
.LVL288:
	.loc 1 1095 0
	cmpw 7,30,14
	bge+ 7,.L317
.L365:
	.loc 1 1081 0
	addi 20,20,1
	.loc 1 1118 0
	bl glEnd
.LVL289:
	.loc 1 1081 0
	cmpw 7,20,26
	lwz 16,0(31)
	bne+ 7,.L318
.LVL290:
.L257:
	.loc 1 1135 0 discriminator 1
	lis 24,0x1
	lis 25,0x1
	.loc 1 1095 0 discriminator 1
	li 17,0
	li 20,0
	.loc 1 1135 0 discriminator 1
	ori 24,24,34464
	ori 25,25,34465
	.loc 1 1152 0 discriminator 1
	lis 27,0x4330
	lis 19,.LC6@ha
.LVL291:
.L326:
	.loc 1 1123 0
	addis 16,16,0xfffe
	.loc 1 1121 0
	lfsx 31,29,17
.LVL292:
	.loc 1 1123 0
	addi 0,16,31072
	.loc 1 1122 0
	lfsx 28,28,17
.LVL293:
	.loc 1 1123 0
	cmplwi 7,0,1
	bgt- 7,.L319
	.loc 1 1126 0
	addi 9,1,8648
	lfsx 29,17,9
.LVL294:
	.loc 1 1127 0
	addi 9,1,7688
.LVL295:
	lfsx 30,17,9
.LVL296:
.L319:
	.loc 1 1133 0
	li 3,3
	li 16,0
	bl glBegin
.LVL297:
	.loc 1 1134 0
	li 15,0
	b .L325
.LVL298:
.L369:
	.loc 1 1135 0
	bne+ 6,.L321
	.loc 1 1137 0
	addi 9,1,968
	lfsx 3,18,16
	lfsx 2,16,9
	fmuls 1,2,29
	fmuls 2,30,2
	bl glNormal3f
.L321:
	.loc 1 1151 0
	lbz 0,4(31)
	cmpwi 7,0,0
	bne- 7,.L367
.L324:
	.loc 1 1155 0
	lfsx 2,21,16
	.loc 1 1134 0
	addi 15,15,1
	.loc 1 1155 0
	lfsx 3,22,16
	.loc 1 1134 0
	addi 16,16,4
	.loc 1 1155 0
	fmuls 1,2,31
	fmuls 2,28,2
	bl glVertex3f
.LVL299:
	.loc 1 1134 0
	cmpw 7,26,15
	blt- 7,.L368
.LVL300:
.L325:
	.loc 1 1135 0
	lwz 0,0(31)
	cmpw 7,0,24
	cmpw 6,0,25
	bne+ 7,.L369
	.loc 1 1142 0
	addi 9,1,2888
	lfsx 2,16,9
	addi 9,1,1928
	lfsx 3,9,16
	fmuls 1,2,29
	fmuls 2,30,2
	bl glNormal3f
	.loc 1 1151 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq+ 7,.L324
.L367:
	.loc 1 1153 0
	xoris 9,15,0x8000
	.loc 1 1152 0
	xoris 10,20,0x8000
	xoris 11,30,0x8000
	.loc 1 1153 0
	xoris 0,26,0x8000
	.loc 1 1152 0
	stw 10,11772(1)
	.loc 1 1134 0
	addi 15,15,1
	.loc 1 1152 0
	stw 11,11780(1)
	.loc 1 1153 0
	stw 9,11788(1)
	stw 0,11796(1)
	.loc 1 1152 0
	stw 27,11768(1)
	stw 27,11776(1)
	.loc 1 1153 0
	stw 27,11784(1)
	stw 27,11792(1)
	.loc 1 1152 0
	lfs 0,0(23)
	.loc 1 1153 0
	lfd 13,11792(1)
	.loc 1 1152 0
	lfd 1,11768(1)
	lfd 12,11776(1)
	.loc 1 1153 0
	lfd 2,11784(1)
	.loc 1 1152 0
	fsub 1,1,0
	fsub 12,12,0
	.loc 1 1153 0
	fsub 2,2,0
	fsub 0,13,0
	.loc 1 1152 0
	frsp 12,12
	frsp 1,1
	.loc 1 1153 0
	frsp 13,0
	.loc 1 1152 0
	lfs 0,.LC6@l(19)
	.loc 1 1153 0
	frsp 2,2
	.loc 1 1152 0
	fdivs 1,1,12
	.loc 1 1153 0
	fdivs 2,2,13
	.loc 1 1152 0
	fsubs 1,0,1
	fsubs 2,0,2
	bl glTexCoord2f
	.loc 1 1155 0
	lfsx 2,21,16
	lfsx 3,22,16
	.loc 1 1134 0
	addi 16,16,4
	.loc 1 1155 0
	fmuls 1,2,31
	fmuls 2,28,2
	bl glVertex3f
.LVL301:
	.loc 1 1134 0
	cmpw 7,26,15
	bge+ 7,.L325
.L368:
	.loc 1 1120 0
	addi 20,20,1
	.loc 1 1158 0
	bl glEnd
.LVL302:
	.loc 1 1120 0
	cmpw 7,20,30
	addi 17,17,4
	beq- 7,.L231
	lwz 16,0(31)
	b .L326
.LVL303:
.L363:
	.loc 1 1098 0
	addi 9,1,6728
	lfsx 1,16,9
	addi 9,1,5768
	b .L356
.LVL304:
.L327:
	.loc 1 735 0
	li 18,0
	.loc 1 738 0
	li 0,1
	lwz 17,12(31)
	b .L238
.LVL305:
.L254:
	.loc 1 814 0
	lbz 0,4(31)
	cmpwi 7,0,0
	beq- 7,.L258
	stw 26,11812(1)
	.loc 1 948 0
	li 19,0
.LVL306:
.L284:
	.loc 1 956 0
	lis 25,0x1
	.loc 1 958 0
	addi 20,19,1
	.loc 1 956 0
	ori 25,25,34464
	.loc 1 701 0
	slwi 9,20,2
	.loc 1 956 0
	cmpw 7,16,25
	.loc 1 701 0
	addi 11,1,968
	slwi 0,19,2
	add 11,11,9
	add 15,22,0
	add 17,21,0
	add 18,18,9
	stw 11,11804(1)
	addi 9,1,2888
	addi 11,1,1928
	.loc 1 962 0
	lis 24,0x1
	.loc 1 956 0
	lis 22,0x1
	.loc 1 701 0
	stw 18,11808(1)
	add 14,9,0
	.loc 1 952 0
	lfs 26,0(15)
.LVL307:
	.loc 1 701 0
	add 18,11,0
	.loc 1 954 0
	lfs 29,0(17)
	.loc 1 962 0
	ori 24,24,34484
	.loc 1 956 0
	ori 22,22,34465
	.loc 1 1000 0
	lis 27,0x4330
	lis 21,.LC6@ha
	.loc 1 953 0
	lfsu 25,4(15)
.LVL308:
	.loc 1 955 0
	lfsu 28,4(17)
.LVL309:
	.loc 1 956 0
	beq- 7,.L286
.LVL310:
.L379:
	cmpw 7,16,22
	bne+ 7,.L285
	.loc 1 958 0
	lwz 11,11804(1)
	.loc 1 959 0
	lwz 9,11808(1)
	.loc 1 958 0
	lfs 27,0(11)
.LVL311:
	.loc 1 959 0
	lfs 24,0(9)
.LVL312:
.L285:
	.loc 1 978 0
	li 3,8
	li 16,0
	bl glBegin
.LVL313:
	.loc 1 979 0
	li 11,0
	stw 11,11800(1)
	b .L302
.LVL314:
.L289:
	.loc 1 991 0
	lwz 0,8(31)
	cmpw 7,0,24
	.loc 1 992 0
	lbz 0,4(31)
	.loc 1 991 0
	beq- 7,.L370
.L291:
	.loc 1 999 0
	cmpwi 7,0,0
	bne- 7,.L371
.L294:
	.loc 1 1003 0
	lfsx 30,29,16
	fmr 3,26
	.loc 1 1004 0
	lfsx 31,28,16
	.loc 1 1003 0
	fmuls 1,30,29
	fmuls 2,31,29
	bl glVertex3f
	.loc 1 1006 0
	lwz 0,0(31)
	cmpw 7,0,25
	beq- 7,.L296
.L377:
	cmpw 7,0,22
	beq- 7,.L372
	.loc 1 1021 0
	lwz 0,8(31)
	cmpw 7,0,24
	.loc 1 1022 0
	lbz 0,4(31)
	.loc 1 1021 0
	beq- 7,.L373
.L298:
	.loc 1 1029 0
	cmpwi 7,0,0
	bne- 7,.L374
.L301:
	.loc 1 1033 0
	fmuls 1,28,30
	.loc 1 979 0
	addi 16,16,4
	.loc 1 1033 0
	fmuls 2,28,31
	fmr 3,25
	bl glVertex3f
	.loc 1 979 0
	lwz 9,11800(1)
	addi 9,9,1
	cmpw 7,30,9
	stw 9,11800(1)
.LVL315:
	blt- 7,.L375
.LVL316:
.L302:
	.loc 1 980 0
	lwz 0,0(31)
	cmpw 7,0,25
	bne+ 7,.L289
	.loc 1 982 0
	addi 9,1,8648
	fmr 3,22
	lfsx 1,16,9
	addi 9,1,7688
	lfsx 2,16,9
	fmuls 1,23,1
	fmuls 2,23,2
	bl glNormal3f
	.loc 1 991 0
	lwz 0,8(31)
	cmpw 7,0,24
	.loc 1 992 0
	lbz 0,4(31)
	.loc 1 991 0
	bne+ 7,.L291
.L370:
	.loc 1 992 0
	cmpwi 7,0,0
	bne- 7,.L376
.L292:
	.loc 1 996 0
	lfsx 30,29,16
	fmr 3,25
	.loc 1 997 0
	lfsx 31,28,16
	.loc 1 996 0
	fmuls 1,30,28
	fmuls 2,31,28
	bl glVertex3f
	.loc 1 1006 0
	lwz 0,0(31)
	cmpw 7,0,25
	bne+ 7,.L377
.L296:
	.loc 1 1008 0
	addi 9,1,8648
	lfsx 1,16,9
	addi 9,1,7688
	b .L355
.L372:
	.loc 1 1013 0
	addi 9,1,6728
	lfsx 1,16,9
	addi 9,1,5768
.L355:
	lfsx 2,16,9
	fmuls 1,27,1
	fmr 3,24
	fmuls 2,27,2
	bl glNormal3f
	.loc 1 1021 0
	lwz 0,8(31)
	cmpw 7,0,24
	.loc 1 1022 0
	lbz 0,4(31)
	.loc 1 1021 0
	bne+ 7,.L298
.L373:
	.loc 1 1022 0
	cmpwi 7,0,0
	bne- 7,.L378
.L299:
	.loc 1 1026 0
	fmuls 1,29,30
	.loc 1 979 0
	addi 16,16,4
	.loc 1 1026 0
	fmuls 2,29,31
	fmr 3,26
	bl glVertex3f
	.loc 1 979 0
	lwz 9,11800(1)
	addi 9,9,1
	cmpw 7,30,9
	stw 9,11800(1)
.LVL317:
	bge+ 7,.L302
.L375:
	.loc 1 1037 0
	bl glEnd
.LVL318:
	.loc 1 951 0
	lwz 11,11812(1)
	.loc 1 1037 0
	lwz 9,11804(1)
	addi 14,14,4
	.loc 1 951 0
	cmpw 7,11,20
	.loc 1 1037 0
	lwz 11,11808(1)
	addi 9,9,4
	addi 18,18,4
	addi 11,11,4
	stw 9,11804(1)
	stw 11,11808(1)
	.loc 1 951 0
	ble- 7,.L231
	lwz 16,0(31)
	mr 19,20
	.loc 1 952 0
	lfs 26,0(15)
.LVL319:
	addi 20,20,1
.LVL320:
	.loc 1 956 0
	cmpw 7,16,25
	.loc 1 954 0
	lfs 29,0(17)
.LVL321:
	.loc 1 953 0
	lfsu 25,4(15)
.LVL322:
	.loc 1 955 0
	lfsu 28,4(17)
.LVL323:
	.loc 1 956 0
	bne+ 7,.L379
.LVL324:
.L286:
	.loc 1 962 0
	lwz 0,8(31)
	cmpw 7,0,24
	beq- 7,.L380
	.loc 1 968 0
	lfs 23,0(14)
.LVL325:
	.loc 1 969 0
	lfs 22,0(18)
.LVL326:
	.loc 1 970 0
	lfs 27,4(14)
.LVL327:
	.loc 1 971 0
	lfs 24,4(18)
.LVL328:
	b .L285
.LVL329:
.L371:
	.loc 1 1000 0
	lwz 11,11800(1)
	.loc 1 1001 0
	xoris 9,19,0x8000
	xoris 0,26,0x8000
	.loc 1 1000 0
	stw 27,11608(1)
	xoris 10,11,0x8000
	xoris 11,30,0x8000
	stw 10,11612(1)
	stw 11,11620(1)
	stw 27,11616(1)
	.loc 1 1001 0
	stw 9,11628(1)
	stw 27,11624(1)
	stw 0,11636(1)
	stw 27,11632(1)
	.loc 1 1000 0
	lfs 0,0(23)
	.loc 1 1001 0
	lfd 13,11632(1)
	.loc 1 1000 0
	lfd 1,11608(1)
	lfd 12,11616(1)
	.loc 1 1001 0
	lfd 2,11624(1)
	.loc 1 1000 0
	fsub 1,1,0
	fsub 12,12,0
	.loc 1 1001 0
	fsub 2,2,0
	fsub 0,13,0
	.loc 1 1000 0
	frsp 12,12
	frsp 1,1
	.loc 1 1001 0
	frsp 13,0
	.loc 1 1000 0
	lfs 0,.LC6@l(21)
	.loc 1 1001 0
	frsp 2,2
	.loc 1 1000 0
	fdivs 1,1,12
	.loc 1 1001 0
	fdivs 2,2,13
	.loc 1 1000 0
	fsubs 1,0,1
	fsubs 2,0,2
	bl glTexCoord2f
	b .L294
.L374:
	.loc 1 1030 0
	lwz 11,11800(1)
	.loc 1 1031 0
	xoris 9,20,0x8000
	xoris 0,26,0x8000
	.loc 1 1030 0
	stw 27,11672(1)
	xoris 10,11,0x8000
	xoris 11,30,0x8000
	stw 10,11676(1)
	stw 11,11684(1)
	stw 27,11680(1)
	.loc 1 1031 0
	stw 9,11692(1)
	stw 27,11688(1)
	stw 0,11700(1)
	stw 27,11696(1)
	.loc 1 1030 0
	lfs 0,0(23)
	.loc 1 1031 0
	lfd 13,11696(1)
	.loc 1 1030 0
	lfd 1,11672(1)
	lfd 12,11680(1)
	.loc 1 1031 0
	lfd 2,11688(1)
	.loc 1 1030 0
	fsub 1,1,0
	fsub 12,12,0
	.loc 1 1031 0
	fsub 2,2,0
	fsub 0,13,0
	.loc 1 1030 0
	frsp 12,12
	frsp 1,1
	.loc 1 1031 0
	frsp 13,0
	.loc 1 1030 0
	lfs 0,.LC6@l(21)
	.loc 1 1031 0
	frsp 2,2
	.loc 1 1030 0
	fdivs 1,1,12
	.loc 1 1031 0
	fdivs 2,2,13
	.loc 1 1030 0
	fsubs 1,0,1
	fsubs 2,0,2
	bl glTexCoord2f
	b .L301
.L376:
	.loc 1 993 0
	lwz 9,11800(1)
	xoris 11,30,0x8000
	.loc 1 994 0
	xoris 0,26,0x8000
	.loc 1 993 0
	stw 27,11576(1)
	xoris 10,9,0x8000
	.loc 1 994 0
	xoris 9,20,0x8000
	.loc 1 993 0
	stw 10,11580(1)
	stw 11,11588(1)
	stw 27,11584(1)
	.loc 1 994 0
	stw 9,11596(1)
	stw 27,11592(1)
	stw 0,11604(1)
	stw 27,11600(1)
	.loc 1 993 0
	lfs 0,0(23)
	.loc 1 994 0
	lfd 13,11600(1)
	.loc 1 993 0
	lfd 1,11576(1)
	lfd 12,11584(1)
	.loc 1 994 0
	lfd 2,11592(1)
	.loc 1 993 0
	fsub 1,1,0
	fsub 12,12,0
	.loc 1 994 0
	fsub 2,2,0
	fsub 0,13,0
	.loc 1 993 0
	frsp 12,12
	frsp 1,1
	.loc 1 994 0
	frsp 13,0
	.loc 1 993 0
	lfs 0,.LC6@l(21)
	.loc 1 994 0
	frsp 2,2
	.loc 1 993 0
	fdivs 1,1,12
	.loc 1 994 0
	fdivs 2,2,13
	.loc 1 993 0
	fsubs 1,0,1
	fsubs 2,0,2
	bl glTexCoord2f
	b .L292
.L378:
	.loc 1 1023 0
	lwz 9,11800(1)
	xoris 11,30,0x8000
	.loc 1 1024 0
	xoris 0,26,0x8000
	.loc 1 1023 0
	stw 27,11640(1)
	xoris 10,9,0x8000
	.loc 1 1024 0
	xoris 9,19,0x8000
	.loc 1 1023 0
	stw 10,11644(1)
	stw 11,11652(1)
	stw 27,11648(1)
	.loc 1 1024 0
	stw 9,11660(1)
	stw 27,11656(1)
	stw 0,11668(1)
	stw 27,11664(1)
	.loc 1 1023 0
	lfs 0,0(23)
	.loc 1 1024 0
	lfd 13,11664(1)
	.loc 1 1023 0
	lfd 1,11640(1)
	lfd 12,11648(1)
	.loc 1 1024 0
	lfd 2,11656(1)
	.loc 1 1023 0
	fsub 1,1,0
	fsub 12,12,0
	.loc 1 1024 0
	fsub 2,2,0
	fsub 0,13,0
	.loc 1 1023 0
	frsp 12,12
	frsp 1,1
	.loc 1 1024 0
	frsp 13,0
	.loc 1 1023 0
	lfs 0,.LC6@l(21)
	.loc 1 1024 0
	frsp 2,2
	.loc 1 1023 0
	fdivs 1,1,12
	.loc 1 1024 0
	fdivs 2,2,13
	.loc 1 1023 0
	fsubs 1,0,1
	fsubs 2,0,2
	bl glTexCoord2f
	b .L299
.LVL330:
.L380:
	.loc 1 963 0
	lfs 23,4(14)
.LVL331:
	.loc 1 964 0
	lfs 22,4(18)
.LVL332:
	.loc 1 965 0
	lfs 27,0(14)
.LVL333:
	.loc 1 966 0
	lfs 24,0(18)
.LVL334:
	b .L285
.LVL335:
.L258:
	.loc 1 821 0
	lis 0,0x1
	.loc 1 819 0
	lfs 30,4812(1)
	.loc 1 821 0
	ori 0,0,34464
	.loc 1 820 0
	lfs 29,3852(1)
	.loc 1 821 0
	cmpw 7,16,0
	.loc 1 816 0
	addi 0,26,-1
	stw 0,11812(1)
.LVL336:
	.loc 1 821 0
	beq- 7,.L261
	xoris 0,16,0xfffe
.LVL337:
	cmpwi 7,0,-31071
	beq 7,.L381
.LVL338:
.L260:
	.loc 1 836 0
	li 3,6
	.loc 1 862 0
	lis 17,0x1
	.loc 1 836 0
	bl glBegin
	.loc 1 837 0
	lis 9,.LC7@ha
	frsp 31,31
.LVL339:
	lfs 1,.LC7@l(9)
	.loc 1 862 0
	lis 19,0x1
	.loc 1 838 0
	li 24,0
	.loc 1 837 0
	fmr 2,1
	.loc 1 838 0
	li 20,0
	.loc 1 837 0
	fmr 3,31
	.loc 1 862 0
	ori 17,17,34464
	ori 19,19,34465
	.loc 1 837 0
	bl glVertex3f
	.loc 1 838 0
	lwz 9,8(31)
	lis 0,0x1
	ori 0,0,34484
	cmpw 7,9,0
	bne+ 7,.L337
	b .L393
.L384:
	.loc 1 862 0
	beq- 6,.L383
.L269:
	.loc 1 877 0
	lfsx 1,29,24
	fmr 3,29
	lfsx 2,28,24
	.loc 1 861 0
	addi 20,20,1
	.loc 1 877 0
	fmuls 1,30,1
	.loc 1 861 0
	addi 24,24,4
	.loc 1 877 0
	fmuls 2,30,2
	bl glVertex3f
.LVL340:
	.loc 1 861 0
	cmpw 7,30,20
	blt- 7,.L268
.LVL341:
.L337:
	.loc 1 862 0
	lwz 0,0(31)
	cmpw 7,0,17
	cmpw 6,0,19
	bne+ 7,.L384
	.loc 1 864 0
	addi 9,1,8648
	lfsx 1,24,9
	addi 9,1,7688
.L353:
	.loc 1 869 0
	lfsx 2,24,9
	fmuls 1,23,1
	fmr 3,22
	fmuls 2,23,2
	bl glNormal3f
	.loc 1 872 0
	b .L269
.L383:
	.loc 1 869 0
	addi 9,1,6728
	lfsx 1,24,9
	addi 9,1,5768
	b .L353
.L268:
	.loc 1 881 0
	bl glEnd
	.loc 1 886 0
	lwz 0,0(31)
	lis 9,0x1
	.loc 1 884 0
	lwz 11,11812(1)
	.loc 1 886 0
	ori 9,9,34464
	cmpw 7,0,9
	.loc 1 884 0
	slwi 9,11,2
	add 9,18,9
	lfs 30,4800(9)
.LVL342:
	.loc 1 885 0
	lfs 29,3840(9)
.LVL343:
	.loc 1 886 0
	beq- 7,.L273
	xoris 9,0,0xfffe
.LVL344:
	cmpwi 7,9,-31071
	beq 7,.L385
.L272:
	.loc 1 901 0
	li 3,6
	bl glBegin
	.loc 1 902 0
	lis 9,.LC7@ha
	lfs 1,.LC7@l(9)
	fneg 3,31
	fmr 2,1
	bl glVertex3f
	.loc 1 903 0
	lwz 9,8(31)
	xoris 0,9,0xfffe
	cmpwi 7,0,-31052
	beq 7,.L386
	.loc 1 925 0
	lis 17,0x1
	lis 19,0x1
	.loc 1 903 0
	mr 24,30
	li 20,4
	li 25,0
	.loc 1 925 0
	ori 17,17,34464
	ori 19,19,34465
	b .L275
.L388:
	beq- 6,.L387
.L281:
	.loc 1 701 0
	add 11,29,27
	add 9,28,27
	.loc 1 942 0
	lfsx 1,11,25
	fmr 3,29
	lfsx 2,9,25
	.loc 1 933 0
	addi 20,20,-4
	.loc 1 942 0
	fmuls 1,30,1
	.loc 1 924 0
	addi 25,25,-4
	.loc 1 942 0
	fmuls 2,30,2
	bl glVertex3f
.LVL345:
	.loc 1 924 0
	cmpwi 7,24,0
	addi 24,24,-1
.LVL346:
	beq- 7,.L280
.LVL347:
.L275:
	.loc 1 925 0
	lwz 0,0(31)
	cmpw 7,0,17
	cmpw 6,0,19
	bne+ 7,.L388
	.loc 1 701 0
	addi 0,1,8648
	.loc 1 927 0
	fmr 3,22
	.loc 1 701 0
	add 11,0,27
	addi 0,1,7688
	add 9,0,27
	.loc 1 927 0
	lfsx 1,11,25
	lfsx 2,9,25
	fmuls 1,23,1
	fmuls 2,23,2
	bl glNormal3f
	.loc 1 930 0
	b .L281
.L387:
	.loc 1 932 0
	cmpw 7,30,24
	.loc 1 701 0
	addi 9,1,6728
	addi 0,1,5768
	add 11,9,27
	.loc 1 933 0
	fmr 3,22
	.loc 1 701 0
	add 9,0,27
	.loc 1 932 0
	beq- 7,.L281
	.loc 1 933 0
	lfsx 1,11,20
	lfsx 2,9,20
	fmuls 1,23,1
	fmuls 2,23,2
	bl glNormal3f
	b .L281
.L280:
	.loc 1 946 0
	bl glEnd
.LVL348:
	.loc 1 951 0
	lwz 9,11812(1)
	cmpwi 7,9,1
	ble+ 7,.L231
	lwz 16,0(31)
	.loc 1 815 0
	li 19,1
	b .L284
.LVL349:
.L381:
	.loc 1 823 0
	lfs 23,972(1)
.LVL350:
	.loc 1 824 0
	lfs 22,12(1)
.LVL351:
	.loc 1 825 0
	b .L260
.LVL352:
.L261:
	.loc 1 829 0
	lfs 0,2888(1)
	lfs 1,8648(1)
	lfs 2,7688(1)
	fmuls 1,0,1
	lfs 3,1928(1)
	fmuls 2,0,2
	.loc 1 827 0
	lfs 23,2892(1)
.LVL353:
	.loc 1 828 0
	lfs 22,1932(1)
.LVL354:
	.loc 1 829 0
	bl glNormal3f
.LVL355:
	.loc 1 832 0
	b .L260
.LVL356:
.L386:
	.loc 1 905 0
	lis 20,0x1
	lis 24,0x1
	.loc 1 903 0
	li 27,0
	li 25,0
	.loc 1 905 0
	ori 20,20,34464
	ori 24,24,34465
	b .L279
.L390:
	beq- 7,.L389
.L276:
	.loc 1 920 0
	lfsx 1,29,27
	fmr 3,29
	lfsx 2,28,27
	.loc 1 904 0
	addi 25,25,1
	.loc 1 920 0
	fmuls 1,30,1
	.loc 1 904 0
	addi 27,27,4
	.loc 1 920 0
	fmuls 2,30,2
	bl glVertex3f
.LVL357:
	.loc 1 904 0
	cmpw 7,30,25
	blt- 7,.L280
.LVL358:
.L279:
	.loc 1 905 0
	lwz 0,0(31)
	cmpw 6,0,20
	cmpw 7,0,24
	bne+ 6,.L390
	.loc 1 907 0
	addi 9,1,8648
	lfsx 1,27,9
	addi 9,1,7688
.L354:
	.loc 1 912 0
	lfsx 2,27,9
	fmuls 1,23,1
	fmr 3,22
	fmuls 2,23,2
	bl glNormal3f
	.loc 1 915 0
	b .L276
.L389:
	.loc 1 912 0
	addi 9,1,6728
	lfsx 1,27,9
	addi 9,1,5768
	b .L354
.L385:
	.loc 1 888 0
	add 9,18,25
	.loc 1 889 0
	lfsx 22,18,25
.LVL359:
	.loc 1 888 0
	lfs 23,960(9)
.LVL360:
	.loc 1 890 0
	b .L272
.LVL361:
.L273:
	.loc 1 894 0
	add 25,18,25
	.loc 1 892 0
	lfs 23,2880(9)
.LVL362:
	.loc 1 894 0
	lfs 0,2880(25)
	lfs 1,8640(25)
	lfs 2,7680(25)
	fmuls 1,0,1
	lfs 3,1920(25)
	fmuls 2,0,2
	.loc 1 893 0
	lfs 22,1920(9)
.LVL363:
	.loc 1 894 0
	bl glNormal3f
.LVL364:
	.loc 1 897 0
	b .L272
.L393:
	.loc 1 840 0
	mr 16,17
	lis 17,0x1
	.loc 1 838 0
	mr 19,30
	li 20,4
	.loc 1 840 0
	ori 17,17,34465
	b .L267
.L392:
	beq- 7,.L391
.L264:
	.loc 1 701 0
	add 11,29,27
	add 9,28,27
	.loc 1 857 0
	lfsx 1,11,24
	fmr 3,29
	lfsx 2,9,24
	.loc 1 848 0
	addi 20,20,-4
	.loc 1 857 0
	fmuls 1,30,1
	.loc 1 839 0
	addi 24,24,-4
	.loc 1 857 0
	fmuls 2,30,2
	bl glVertex3f
.LVL365:
	.loc 1 839 0
	cmpwi 7,19,0
	addi 19,19,-1
.LVL366:
	beq- 7,.L268
.LVL367:
.L267:
	.loc 1 840 0
	lwz 0,0(31)
	cmpw 6,0,16
	cmpw 7,0,17
	bne+ 6,.L392
	.loc 1 701 0
	addi 0,1,8648
	.loc 1 842 0
	fmr 3,22
	.loc 1 701 0
	add 11,0,27
	addi 0,1,7688
	add 9,0,27
	.loc 1 842 0
	lfsx 1,11,24
	lfsx 2,9,24
	fmuls 1,23,1
	fmuls 2,23,2
	bl glNormal3f
	.loc 1 845 0
	b .L264
.L391:
	.loc 1 847 0
	cmpw 7,30,19
	.loc 1 701 0
	addi 9,1,6728
	addi 0,1,5768
	add 11,9,27
	.loc 1 848 0
	fmr 3,22
	.loc 1 701 0
	add 9,0,27
	.loc 1 847 0
	beq- 7,.L264
	.loc 1 848 0
	lfsx 1,11,20
	lfsx 2,9,20
	fmuls 1,23,1
	fmuls 2,23,2
	bl glNormal3f
	b .L264
	.cfi_endproc
.LFE11:
	.size	gluSphere, .-gluSphere
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1501560836
.LC5:
	.4byte	1056964608
.LC6:
	.4byte	1065353216
.LC7:
	.4byte	0
.LC9:
	.4byte	1135869952
.LC11:
	.4byte	-1011613696
.LC14:
	.4byte	1127481344
.LC15:
	.4byte	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC3:
	.4byte	1075388923
	.4byte	1413754136
.LC12:
	.4byte	1074340347
	.4byte	1413754136
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9bb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x1
	.4byte	.LASF94
	.4byte	.LASF95
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x93
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x94
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x99
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x9e
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0xa0
	.4byte	0x72
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x10e
	.4byte	0xca
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x14
	.byte	0x1
	.byte	0x33
	.4byte	0x11d
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x34
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x35
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x36
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x37
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x38
	.4byte	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	0x129
	.uleb128 0x9
	.4byte	0x9d
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x11d
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x1
	.4byte	0x153
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x54
	.4byte	0x153
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x54
	.4byte	0x87
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	0x184
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x184
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3e
	.4byte	0x153
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.4byte	0x1b3
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4f
	.4byte	0x153
	.4byte	.LLST2
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.4byte	0x212
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5c
	.4byte	0x153
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5c
	.4byte	0x87
	.4byte	.LLST5
	.uleb128 0x11
	.string	"fn"
	.byte	0x1
	.byte	0x5c
	.4byte	0x219
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	0x12f
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.byte	0x63
	.uleb128 0x13
	.4byte	0x147
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x219
	.uleb128 0x15
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x212
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST8
	.4byte	0x270
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x69
	.4byte	0x153
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x69
	.4byte	0x87
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	0x12f
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x1
	.byte	0x71
	.uleb128 0x13
	.4byte	0x147
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2a3
	.uleb128 0x17
	.4byte	.LASF24
	.byte	0x1
	.byte	0x78
	.4byte	0x153
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x78
	.4byte	0x92
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST12
	.4byte	0x2f4
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.4byte	0x153
	.4byte	.LLST13
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7e
	.4byte	0x87
	.4byte	.LLST14
	.uleb128 0x12
	.4byte	0x12f
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.byte	0x85
	.uleb128 0x13
	.4byte	0x147
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST16
	.4byte	0x345
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8c
	.4byte	0x153
	.4byte	.LLST17
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8c
	.4byte	0x87
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	0x12f
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x1
	.byte	0x95
	.uleb128 0x13
	.4byte	0x147
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST20
	.4byte	0x525
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9c
	.4byte	0x153
	.4byte	.LLST21
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3
	.4byte	.LLST22
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3
	.4byte	.LLST23
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x9d
	.4byte	0xb3
	.4byte	.LLST24
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x9d
	.4byte	0x9d
	.4byte	.LLST25
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x9d
	.4byte	0x9d
	.4byte	.LLST26
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.4byte	0x9d
	.4byte	.LLST27
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x9f
	.4byte	0x9d
	.4byte	.LLST28
	.uleb128 0x19
	.string	"max"
	.byte	0x1
	.byte	0x9f
	.4byte	0x9d
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa0
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -1464
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa1
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -2424
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa2
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -3384
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa3
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -4344
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0xa4
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -5304
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa5
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -6264
	.uleb128 0x1a
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa6
	.4byte	0xa8
	.4byte	.LLST29
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0xa7
	.4byte	0xa8
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.byte	0xa7
	.4byte	0xa8
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa7
	.4byte	0xa8
	.4byte	.LLST30
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa7
	.4byte	0xa8
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa8
	.4byte	0xa8
	.4byte	.LLST32
	.uleb128 0x1a
	.4byte	.LASF50
	.byte	0x1
	.byte	0xa8
	.4byte	0xa8
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x1
	.byte	0xa9
	.4byte	0xa8
	.4byte	.LLST34
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x1
	.byte	0xaa
	.4byte	0xa8
	.byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0xab
	.4byte	0xa8
	.4byte	.LLST35
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.byte	0xac
	.4byte	0xa8
	.4byte	.LLST36
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x1
	.byte	0xad
	.4byte	0xa8
	.4byte	.LLST37
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0xad
	.4byte	0xa8
	.4byte	.LLST38
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xae
	.4byte	0x48
	.4byte	.LLST39
	.uleb128 0x1a
	.4byte	.LASF58
	.byte	0x1
	.byte	0xae
	.4byte	0x48
	.4byte	.LLST40
	.uleb128 0x12
	.4byte	0x12f
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.byte	0xbc
	.uleb128 0x13
	.4byte	0x147
	.4byte	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xa8
	.4byte	0x535
	.uleb128 0x1c
	.4byte	0x25
	.byte	0xef
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1b5
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST42
	.4byte	0x6de
	.uleb128 0x1e
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x153
	.4byte	.LLST43
	.uleb128 0x1e
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xb3
	.4byte	.LLST44
	.uleb128 0x1e
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xb3
	.4byte	.LLST45
	.uleb128 0x1e
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x9d
	.4byte	.LLST46
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x9d
	.4byte	.LLST47
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xb3
	.4byte	.LLST48
	.uleb128 0x1e
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xb3
	.4byte	.LLST49
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x9d
	.4byte	.LLST50
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x9d
	.4byte	.LLST51
	.uleb128 0x20
	.string	"max"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x9d
	.uleb128 0x21
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -1232
	.uleb128 0x21
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -2192
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xa8
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xa8
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xa8
	.uleb128 0x23
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1be
	.4byte	0xa8
	.4byte	.LLST52
	.uleb128 0x23
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1be
	.4byte	0xa8
	.4byte	.LLST53
	.uleb128 0x23
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xa8
	.4byte	.LLST54
	.uleb128 0x23
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xa8
	.4byte	.LLST55
	.uleb128 0x23
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xa8
	.4byte	.LLST56
	.uleb128 0x23
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xa8
	.4byte	.LLST57
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xa8
	.4byte	.LLST58
	.uleb128 0x22
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xa8
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x9d
	.4byte	.LLST59
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x9d
	.4byte	.LLST60
	.uleb128 0x24
	.4byte	0x12f
	.4byte	.LBB28
	.4byte	.LBE28
	.byte	0x1
	.2byte	0x1c9
	.uleb128 0x13
	.4byte	0x147
	.4byte	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1ae
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x748
	.uleb128 0x1e
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x153
	.4byte	.LLST62
	.uleb128 0x1e
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xb3
	.4byte	.LLST63
	.uleb128 0x1e
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xb3
	.4byte	.LLST64
	.uleb128 0x1e
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1af
	.4byte	0x9d
	.4byte	.LLST65
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1af
	.4byte	0x9d
	.4byte	.LLST66
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x2bd
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST67
	.uleb128 0x1e
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x153
	.4byte	.LLST68
	.uleb128 0x1e
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xb3
	.4byte	.LLST69
	.uleb128 0x1e
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x9d
	.4byte	.LLST70
	.uleb128 0x1e
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x9d
	.4byte	.LLST71
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x9d
	.4byte	.LLST72
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x9d
	.4byte	.LLST73
	.uleb128 0x20
	.string	"max"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x9d
	.uleb128 0x21
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -1432
	.uleb128 0x21
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -2392
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -3352
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -4312
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -5272
	.uleb128 0x21
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -6232
	.uleb128 0x21
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -7192
	.uleb128 0x21
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x525
	.byte	0x3
	.byte	0x91
	.sleb128 -8152
	.uleb128 0x21
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x525
	.byte	0x4
	.byte	0x91
	.sleb128 -9112
	.uleb128 0x21
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x525
	.byte	0x4
	.byte	0x91
	.sleb128 -10072
	.uleb128 0x21
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x525
	.byte	0x4
	.byte	0x91
	.sleb128 -11032
	.uleb128 0x21
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2cb
	.4byte	0x525
	.byte	0x4
	.byte	0x91
	.sleb128 -11992
	.uleb128 0x23
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2cc
	.4byte	0xa8
	.4byte	.LLST74
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xa8
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xa8
	.uleb128 0x23
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xa8
	.4byte	.LLST75
	.uleb128 0x23
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2cd
	.4byte	0xa8
	.4byte	.LLST76
	.uleb128 0x23
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xa8
	.4byte	.LLST77
	.uleb128 0x23
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xa8
	.4byte	.LLST78
	.uleb128 0x23
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xa8
	.4byte	.LLST79
	.uleb128 0x23
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x2ce
	.4byte	0xa8
	.4byte	.LLST80
	.uleb128 0x23
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xa8
	.4byte	.LLST81
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xa8
	.4byte	.LLST82
	.uleb128 0x23
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xa8
	.4byte	.LLST83
	.uleb128 0x23
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x2cf
	.4byte	0xa8
	.4byte	.LLST84
	.uleb128 0x22
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xa8
	.uleb128 0x22
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x2d1
	.4byte	0xa8
	.uleb128 0x23
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x92
	.4byte	.LLST85
	.uleb128 0x23
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x92
	.4byte	.LLST86
	.uleb128 0x27
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x9d
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x9d
	.4byte	.LLST87
	.uleb128 0x24
	.4byte	0x12f
	.4byte	.LBB30
	.4byte	.LBE30
	.byte	0x1
	.2byte	0x2d8
	.uleb128 0x13
	.4byte	0x147
	.4byte	.LLST88
	.byte	0
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
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
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1-.Ltext0
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
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB3-.Ltext0
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
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x18a24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB4-.Ltext0
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
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x18a24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x18a24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x18a24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 6272
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 6272
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL108-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-1-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x87
	.sleb128 0
	.byte	0x22
	.4byte	.LVL77-1-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-1-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x87
	.sleb128 0
	.byte	0x22
	.4byte	.LVL77-1-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL90-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	.LVL101-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL104-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x18a25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 2200
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 2200
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL113-1-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL218-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL113-1-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL202-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL218-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL113-1-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x7
	.byte	0x8b
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x3
	.byte	0x87
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL218-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL218-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL113-1-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL220-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x89
	.sleb128 0
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL177-1-.Ltext0
	.2byte	0x2
	.byte	0x89
	.sleb128 0
	.4byte	.LVL177-1-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-1-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x89
	.sleb128 0
	.byte	0x22
	.4byte	.LVL188-1-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 0
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 0
	.4byte	.LVL177-1-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-1-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x89
	.sleb128 0
	.byte	0x22
	.4byte	.LVL188-1-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x18a25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL224-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL223-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 12000
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 12000
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL237-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL231-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL231-1-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL231-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL318-1-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -200
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x3
	.byte	0x83
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL335-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -4
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 -4
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -8148
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 3840
	.4byte	.LVL344-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x5
	.byte	0x85
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL284-1-.Ltext0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.4byte	.LVL284-1-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x81
	.sleb128 0
	.byte	0x22
	.4byte	.LVL297-1-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x2
	.byte	0x81
	.sleb128 0
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x81
	.sleb128 -4
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x2
	.byte	0x81
	.sleb128 0
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x81
	.sleb128 -4
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x2398
	.byte	0x1c
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0x2398
	.byte	0x1c
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x81
	.sleb128 0
	.byte	0x22
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x81
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.2byte	0xd18
	.byte	0x1c
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x81
	.sleb128 0
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x81
	.sleb128 0
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -7188
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 4800
	.4byte	.LVL344-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -11028
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL355-1-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -9108
	.4byte	.LVL355-1-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 960
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL364-1-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 2880
	.4byte	.LVL364-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -196
	.byte	0x6
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x5
	.byte	0x86
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL284-1-.Ltext0
	.2byte	0x2
	.byte	0x81
	.sleb128 0
	.4byte	.LVL284-1-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL297-1-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x81
	.sleb128 0
	.byte	0x22
	.4byte	.LVL297-1-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x2
	.byte	0x82
	.sleb128 0
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x82
	.sleb128 4
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -11988
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-1-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -10068
	.4byte	.LVL355-1-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL364-1-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1920
	.4byte	.LVL364-1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x2
	.byte	0x82
	.sleb128 4
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x2
	.byte	0x82
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL337-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x18a25
	.byte	0x9f
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
.LASF95:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF87:
	.string	"sintemp4"
.LASF16:
	.string	"GLfloat"
.LASF43:
	.string	"cosCache2"
.LASF45:
	.string	"cosCache3"
.LASF28:
	.string	"state"
.LASF47:
	.string	"zLow"
.LASF22:
	.string	"drawStyle"
.LASF35:
	.string	"topRadius"
.LASF41:
	.string	"cosCache"
.LASF72:
	.string	"sinCache1a"
.LASF78:
	.string	"sinCache1b"
.LASF12:
	.string	"long double"
.LASF96:
	.string	"gluQuadricError"
.LASF77:
	.string	"cosCache3a"
.LASF97:
	.string	"gluNewQuadric"
.LASF62:
	.string	"loops"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"gluQuadricOrientation"
.LASF30:
	.string	"gluQuadricTexture"
.LASF50:
	.string	"costemp"
.LASF55:
	.string	"radiusLow"
.LASF19:
	.string	"normals"
.LASF14:
	.string	"GLboolean"
.LASF33:
	.string	"gluCylinder"
.LASF34:
	.string	"baseRadius"
.LASF11:
	.string	"float"
.LASF15:
	.string	"GLint"
.LASF5:
	.string	"long long int"
.LASF52:
	.string	"deltaRadius"
.LASF57:
	.string	"needCache2"
.LASF58:
	.string	"needCache3"
.LASF67:
	.string	"angleOffset"
.LASF44:
	.string	"sinCache3"
.LASF9:
	.string	"long int"
.LASF59:
	.string	"gluPartialDisk"
.LASF17:
	.string	"GLdouble"
.LASF74:
	.string	"sinCache2a"
.LASF94:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libutil/quad.c"
.LASF69:
	.string	"finish"
.LASF20:
	.string	"textureCoords"
.LASF82:
	.string	"sinCache3b"
.LASF51:
	.string	"length"
.LASF92:
	.string	"start"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"newstate"
.LASF71:
	.string	"radius"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF36:
	.string	"height"
.LASF61:
	.string	"outerRadius"
.LASF64:
	.string	"sweepAngle"
.LASF7:
	.string	"long unsigned int"
.LASF21:
	.string	"orientation"
.LASF37:
	.string	"slices"
.LASF63:
	.string	"startAngle"
.LASF13:
	.string	"GLenum"
.LASF60:
	.string	"innerRadius"
.LASF2:
	.string	"short unsigned int"
.LASF40:
	.string	"sinCache"
.LASF8:
	.string	"char"
.LASF73:
	.string	"cosCache1a"
.LASF79:
	.string	"cosCache1b"
.LASF76:
	.string	"sinCache3a"
.LASF49:
	.string	"sintemp"
.LASF93:
	.string	"GNU C 4.6.3"
.LASF24:
	.string	"qobj"
.LASF54:
	.string	"xyNormalRatio"
.LASF29:
	.string	"gluQuadricNormals"
.LASF18:
	.string	"GLUquadric"
.LASF84:
	.string	"sintemp1"
.LASF85:
	.string	"sintemp2"
.LASF86:
	.string	"sintemp3"
.LASF48:
	.string	"zHigh"
.LASF66:
	.string	"texHigh"
.LASF10:
	.string	"double"
.LASF83:
	.string	"cosCache3b"
.LASF75:
	.string	"cosCache2a"
.LASF70:
	.string	"gluDisk"
.LASF56:
	.string	"radiusHigh"
.LASF26:
	.string	"gluDeleteQuadric"
.LASF65:
	.string	"texLow"
.LASF53:
	.string	"zNormal"
.LASF68:
	.string	"slices2"
.LASF27:
	.string	"gluQuadricCallback"
.LASF46:
	.string	"angle"
.LASF98:
	.string	"gluSphere"
.LASF42:
	.string	"sinCache2"
.LASF80:
	.string	"sinCache2b"
.LASF38:
	.string	"stacks"
.LASF81:
	.string	"cosCache2b"
.LASF25:
	.string	"which"
.LASF0:
	.string	"unsigned int"
.LASF23:
	.string	"errorCallback"
.LASF32:
	.string	"gluQuadricDrawStyle"
.LASF88:
	.string	"costemp1"
.LASF89:
	.string	"costemp2"
.LASF90:
	.string	"costemp3"
.LASF91:
	.string	"costemp4"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
