	.file	"gl_bumpgxext.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl R_DrawWorldBumped
	.type	R_DrawWorldBumped, @function
R_DrawWorldBumped:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_bumpgxext.c"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	stwu 1,-96(1)
.LCFI0:
	.cfi_def_cfa_offset 96
	mflr 0
	stw 31,84(1)
	.loc 1 18 0
	lis 31,currentshadowlight@ha
	.cfi_offset 31, -12
	.cfi_register 65, 0
	.loc 1 12 0
	stw 0,100(1)
	.loc 1 18 0
	lwz 3,currentshadowlight@l(31)
	.loc 1 12 0
	stw 30,80(1)
	.loc 1 25 0
	lbz 0,44(3)
	.cfi_offset 30, -16
	.cfi_offset 65, 4
	.loc 1 12 0
	stfd 31,88(1)
	.loc 1 25 0
	cmpwi 7,0,0
	.loc 1 12 0
	stw 20,40(1)
	stw 21,44(1)
	stw 22,48(1)
	stw 23,52(1)
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 27,68(1)
	stw 28,72(1)
	stw 29,76(1)
	.loc 1 18 0
	lwz 30,2116(3)
.LVL1:
	.loc 1 25 0
	bne- 7,.L13
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 63, -8
.LVL2:
.L1:
	.loc 1 81 0
	lwz 0,100(1)
	lwz 20,40(1)
	mtlr 0
	lwz 21,44(1)
	lwz 22,48(1)
	lwz 23,52(1)
	lwz 24,56(1)
	lwz 25,60(1)
	lwz 26,64(1)
	lwz 27,68(1)
	lwz 28,72(1)
.LVL3:
	lwz 29,76(1)
	lwz 30,80(1)
.LVL4:
	lwz 31,84(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI1:
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
.LVL5:
.L13:
.LCFI2:
	.cfi_restore_state
	.loc 1 29 0
	lis 4,r_worldentity@ha
	.loc 1 32 0
	lis 26,.LC3@ha
	.loc 1 29 0
	la 4,r_worldentity@l(4)
	bl GX_InitWorldBumpShader
	.loc 1 32 0
	lwz 9,currentshadowlight@l(31)
	lfs 13,.LC3@l(26)
	lwz 0,2124(9)
	lis 9,d_lightstylevalue@ha
	la 9,d_lightstylevalue@l(9)
	slwi 0,0,2
	lwzx 0,9,0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 33 0
	lis 9,.LC0@ha
	.loc 1 32 0
	xoris 0,0,0x8000
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfd 31,8(1)
	fsub 31,31,0
	.loc 1 33 0
	lfs 0,.LC0@l(9)
	.loc 1 32 0
	frsp 31,31
	fdivs 31,31,13
.LVL6:
	.loc 1 33 0
	fcmpu 7,31,0
	bgt- 7,.L14
.LVL7:
.L3:
	.loc 1 64 0
	li 31,0
	.loc 1 45 0
	lis 29,r_framecount@ha
	.loc 1 55 0
	lis 22,globalVertexTable@ha
	lis 21,wgPipe@ha
.LVL8:
.L11:
	.loc 1 39 0
	slwi 0,31,2
	lwzx 20,30,0
.LVL9:
	.loc 1 40 0
	cmpwi 7,20,0
	beq- 7,.L1
	.loc 1 43 0
	addi 0,31,1
.LVL10:
	addi 24,31,2
	slwi 0,0,2
	lwzx 27,30,0
.LVL11:
	.loc 1 45 0
	lwz 0,r_framecount@l(29)
.LVL12:
	lwz 9,0(27)
	cmpw 7,9,0
	beq- 7,.L5
.LVL13:
.L15:
	.loc 1 46 0
	lwz 9,36(27)
	lwz 31,8(9)
	mulli 31,31,5
	addi 31,31,4
	add 31,31,24
.LVL14:
	.loc 1 39 0
	slwi 0,31,2
	lwzx 20,30,0
.LVL15:
	.loc 1 40 0
	cmpwi 7,20,0
	beq- 7,.L1
	.loc 1 43 0
	addi 0,31,1
.LVL16:
	addi 24,31,2
	slwi 0,0,2
	lwzx 27,30,0
.LVL17:
	.loc 1 45 0
	lwz 0,r_framecount@l(29)
.LVL18:
	lwz 9,0(27)
	cmpw 7,9,0
	bne+ 7,.L15
.LVL19:
.L5:
	.loc 1 51 0
	lwz 9,48(27)
	.loc 1 58 0
	slwi 24,24,2
.LVL20:
	.loc 1 64 0
	addi 25,31,6
	.loc 1 51 0
	lwz 3,36(9)
	bl R_TextureAnimation
.LVL21:
	.loc 1 52 0
	lwz 4,24(3)
	li 3,0
.LVL22:
	bl GX_BindGLTex
	.loc 1 58 0
	lfsx 12,30,24
	lfs 0,.LC3@l(26)
	addi 11,1,20
	.loc 1 54 0
	lwz 9,36(27)
	.loc 1 62 0
	addi 4,1,16
	.loc 1 58 0
	fmuls 12,12,0
	.loc 1 62 0
	li 3,3
	.loc 1 54 0
	lwz 27,8(9)
.LVL23:
	.loc 1 61 0
	fmuls 13,31,0
	.loc 1 55 0
	lwz 23,24(9)
	.loc 1 58 0
	add 9,30,24
.LVL24:
	fmuls 12,12,31
	.loc 1 61 0
	fctiwz 13,13
	.loc 1 58 0
	fctiwz 12,12
	stfiwx 12,0,11
	.loc 1 59 0
	addi 11,1,24
	lfs 12,4(9)
	.loc 1 58 0
	lwz 0,20(1)
	.loc 1 59 0
	fmuls 12,12,0
	.loc 1 55 0
	lwz 24,globalVertexTable@l(22)
.LVL25:
	.loc 1 58 0
	rlwimi 28,0,24,0,7
	.loc 1 59 0
	fmuls 12,12,31
	fctiwz 12,12
	stfiwx 12,0,11
	.loc 1 60 0
	addi 11,1,28
	lfs 12,8(9)
	.loc 1 61 0
	addi 9,1,32
	.loc 1 59 0
	lwz 0,24(1)
	.loc 1 60 0
	fmuls 0,12,0
	.loc 1 61 0
	stfiwx 13,0,9
	.loc 1 59 0
	rlwimi 28,0,16,8,15
	.loc 1 61 0
	lwz 0,32(1)
	.loc 1 60 0
	fmuls 0,0,31
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 9,28(1)
	rlwimi 28,9,8,16,23
	.loc 1 61 0
	rlwimi 28,0,0,24,31
	.loc 1 62 0
	stw 28,16(1)
	bl GX_SetTevColor
.LVL26:
	.loc 1 66 0
	mr 3,20
	bl GX_AsGXPrimitiveType
	li 4,2
	rlwinm 3,3,0,0xff
	rlwinm 5,27,0,0xffff
	bl GX_Begin
.LVL27:
	.loc 1 67 0
	cmpwi 7,27,0
	ble- 7,.L9
	.loc 1 55 0
	mulli 23,23,28
.LVL28:
	.loc 1 12 0
	slwi 25,25,2
.LVL29:
.LBB20:
.LBB21:
.LBB22:
	.file 2 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 2123 0
	lwz 9,wgPipe@l(21)
	mtctr 27
.LBE22:
.LBE21:
.LBE20:
	.loc 1 55 0
	add 24,24,23
	.loc 1 12 0
	add 25,30,25
	.loc 1 67 0
	li 11,0
.LVL30:
.L7:
.LBB29:
	.loc 1 69 0 discriminator 2
	lwz 8,0(24)
	lwz 10,4(24)
	lwz 0,8(24)
.LVL31:
.LBB24:
.LBB23:
	.loc 2 2123 0 discriminator 2
	stw 8,0(9)
	.loc 2 2124 0 discriminator 2
	.loc 2 2125 0 discriminator 2
	stw 10,0(9)
	.loc 2 2126 0 discriminator 2
	.loc 2 2127 0 discriminator 2
	stw 0,0(9)
	.loc 2 2128 0 discriminator 2
.LBE23:
.LBE24:
	.loc 1 70 0 discriminator 2
	lwz 10,12(24)
	lwz 0,16(24)
.LVL32:
.LBB25:
.LBB26:
	.loc 2 2323 0 discriminator 2
	stw 10,0(9)
	.loc 2 2324 0 discriminator 2
	.loc 2 2325 0 discriminator 2
	stw 0,0(9)
	.loc 2 2326 0 discriminator 2
.LBE26:
.LBE25:
	.loc 1 71 0 discriminator 2
	lwz 10,0(25)
	lwz 0,4(25)
.LVL33:
.LBB27:
.LBB28:
	.loc 2 2323 0 discriminator 2
	stw 10,0(9)
	.loc 2 2324 0 discriminator 2
	.loc 2 2325 0 discriminator 2
	stw 0,0(9)
	.loc 2 2326 0 discriminator 2
.LBE28:
.LBE27:
.LBE29:
	.loc 1 67 0 discriminator 2
	addi 11,11,1
.LVL34:
	addi 24,24,28
.LVL35:
	addi 25,25,20
.LVL36:
	bdnz .L7
	.loc 1 12 0
	mulli 11,11,5
.LVL37:
	add 31,31,11
	addi 31,31,6
	b .L11
.LVL38:
.L14:
	.loc 1 34 0
	fmr 31,0
.LVL39:
	b .L3
.LVL40:
.L9:
	.loc 1 64 0
	mr 31,25
	b .L11
	.cfi_endproc
.LFE38:
	.size	R_DrawWorldBumped, .-R_DrawWorldBumped
	.align 2
	.globl R_DrawBrushBumped
	.type	R_DrawBrushBumped, @function
R_DrawBrushBumped:
.LFB39:
	.loc 1 91 0
	.cfi_startproc
.LVL41:
	mflr 0
	stwu 1,-96(1)
.LCFI3:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	mr 9,3
	stw 22,48(1)
	.loc 1 107 0
	lis 22,currentshadowlight@ha
	.cfi_offset 22, -48
	.loc 1 91 0
	stw 0,100(1)
	.loc 1 107 0
	mr 4,9
	.loc 1 91 0
	stw 23,52(1)
	.loc 1 100 0
	lwz 23,160(3)
	.cfi_offset 23, -44
	.cfi_offset 65, 4
.LVL42:
	.loc 1 107 0
	lwz 3,currentshadowlight@l(22)
.LVL43:
	.loc 1 91 0
	stw 28,72(1)
	stw 29,76(1)
	stfd 31,88(1)
	.loc 1 101 0
	lwz 29,264(9)
	.cfi_offset 63, -8
	.cfi_offset 29, -20
	.cfi_offset 28, -24
.LVL44:
	.loc 1 91 0
	stw 18,32(1)
	stw 19,36(1)
	stw 20,40(1)
	stw 21,44(1)
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 27,68(1)
	stw 30,80(1)
	stw 31,84(1)
	.loc 1 107 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	bl GX_InitWorldBumpShader
.LVL45:
	.loc 1 110 0
	lwz 9,144(23)
	.loc 1 109 0
	lwz 28,208(23)
	.loc 1 110 0
	cmpwi 7,9,0
	.loc 1 109 0
	lwz 0,140(23)
.LVL46:
	.loc 1 110 0
	ble- 7,.L16
	.loc 1 109 0
	mulli 0,0,92
	.loc 1 91 0
	addis 25,29,0x2
	addi 25,25,-32677
	.loc 1 104 0
	li 24,0
	.loc 1 109 0
	add 28,28,0
	.loc 1 103 0
	li 30,0
	.loc 1 110 0
	li 27,0
	.loc 1 117 0
	lis 19,.LC0@ha
	.loc 1 127 0
	lis 20,.LC3@ha
	.loc 1 135 0
	lis 21,globalVertexTable@ha
	lis 18,wgPipe@ha
.LVL47:
.L22:
	.loc 1 112 0
	lbzu 0,1(25)
	cmpwi 7,0,0
	beq- 7,.L18
	.loc 1 116 0
	addi 9,24,22548
	.loc 1 117 0
	lfs 0,.LC0@l(19)
	.loc 1 116 0
	slwi 9,9,2
	.loc 1 114 0
	lwz 31,36(28)
.LVL48:
	.loc 1 116 0
	add 9,29,9
	lfs 31,12(9)
.LVL49:
	.loc 1 117 0
	fcmpu 7,31,0
	bng- 7,.L19
	.loc 1 118 0
	fmr 31,0
.L19:
.LVL50:
	.loc 1 123 0
	lwz 9,48(28)
	.loc 1 120 0
	addi 24,24,1
.LVL51:
	.loc 1 123 0
	lwz 3,36(9)
	bl R_TextureAnimation
.LVL52:
	.loc 1 124 0
	lwz 4,24(3)
	li 3,0
.LVL53:
	bl GX_BindGLTex
	.loc 1 127 0
	lwz 9,currentshadowlight@l(22)
	lfs 0,.LC3@l(20)
	addi 11,1,12
	lfs 12,24(9)
	.loc 1 131 0
	li 3,3
	.loc 1 130 0
	fmuls 13,31,0
	.loc 1 131 0
	addi 4,1,8
	.loc 1 127 0
	fmuls 12,12,0
	.loc 1 130 0
	fctiwz 13,13
	.loc 1 127 0
	fmuls 12,12,31
	fctiwz 12,12
	stfiwx 12,0,11
	.loc 1 128 0
	addi 11,1,16
	lfs 12,28(9)
	.loc 1 127 0
	lwz 0,12(1)
	.loc 1 128 0
	fmuls 12,12,0
	.loc 1 127 0
	rlwimi 26,0,24,0,7
	.loc 1 128 0
	fmuls 12,12,31
	fctiwz 12,12
	stfiwx 12,0,11
	.loc 1 129 0
	addi 11,1,20
	lfs 12,32(9)
	.loc 1 130 0
	addi 9,1,24
	.loc 1 128 0
	lwz 0,16(1)
	.loc 1 129 0
	fmuls 0,12,0
	.loc 1 130 0
	stfiwx 13,0,9
	.loc 1 128 0
	rlwimi 26,0,16,8,15
	.loc 1 130 0
	lwz 0,24(1)
	.loc 1 129 0
	fmuls 31,0,31
.LVL54:
	fctiwz 31,31
	stfiwx 31,0,11
	lwz 9,20(1)
	rlwimi 26,9,8,16,23
	.loc 1 130 0
	rlwimi 26,0,0,24,31
	.loc 1 131 0
	stw 26,8(1)
	bl GX_SetTevColor
	.loc 1 133 0
	lhz 5,10(31)
	li 3,160
	li 4,2
	bl GX_Begin
	.loc 1 136 0
	lwz 0,8(31)
	.loc 1 135 0
	lwz 10,globalVertexTable@l(21)
	.loc 1 136 0
	cmpwi 7,0,0
	.loc 1 135 0
	lwz 9,24(31)
.LVL55:
	.loc 1 136 0
	ble- 7,.L20
	.loc 1 135 0
	mulli 9,9,28
.LBB30:
.LBB31:
.LBB32:
	.loc 2 2123 0
	lwz 11,wgPipe@l(18)
.LBE32:
.LBE31:
.LBE30:
	.loc 1 135 0
	add 9,10,9
	.loc 1 136 0
	li 10,0
.LVL56:
.L21:
.LBB41:
	.loc 1 91 0 discriminator 2
	add 8,10,30
	.loc 1 139 0 discriminator 2
	lwz 5,0(9)
	.loc 1 138 0 discriminator 2
	addi 8,8,9226
	.loc 1 139 0 discriminator 2
	lwz 6,4(9)
	.loc 1 138 0 discriminator 2
	slwi 8,8,3
	.loc 1 139 0 discriminator 2
	lwz 0,8(9)
	.loc 1 138 0 discriminator 2
	add 8,29,8
.LBB35:
.LBB33:
	.loc 2 2123 0 discriminator 2
	stw 5,0(11)
.LBE33:
.LBE35:
	.loc 1 138 0 discriminator 2
	addi 7,8,12
.LVL57:
.LBB36:
.LBB34:
	.loc 2 2124 0 discriminator 2
	.loc 2 2125 0 discriminator 2
	stw 6,0(11)
	.loc 2 2126 0 discriminator 2
	.loc 2 2127 0 discriminator 2
	stw 0,0(11)
	.loc 2 2128 0 discriminator 2
.LBE34:
.LBE36:
	.loc 1 140 0 discriminator 2
	lwz 6,12(9)
	lwz 0,16(9)
.LVL58:
.LBB37:
.LBB38:
	.loc 2 2323 0 discriminator 2
	stw 6,0(11)
	.loc 2 2324 0 discriminator 2
	.loc 2 2325 0 discriminator 2
	stw 0,0(11)
	.loc 2 2326 0 discriminator 2
.LBE38:
.LBE37:
	.loc 1 141 0 discriminator 2
	lwz 8,12(8)
	lwz 0,4(7)
.LVL59:
.LBB39:
.LBB40:
	.loc 2 2323 0 discriminator 2
	stw 8,0(11)
	.loc 2 2324 0 discriminator 2
	.loc 2 2325 0 discriminator 2
	stw 0,0(11)
	.loc 2 2326 0 discriminator 2
.LBE40:
.LBE39:
.LBE41:
	.loc 1 136 0 discriminator 2
	lwz 0,8(31)
	addi 10,10,1
.LVL60:
	addi 9,9,28
.LVL61:
	cmpw 7,0,10
	bgt+ 7,.L21
.LVL62:
.L20:
	.loc 1 146 0
	lwz 0,16(28)
	lwz 9,144(23)
	add 30,30,0
.LVL63:
.L18:
	.loc 1 110 0
	addi 27,27,1
.LVL64:
	addi 28,28,92
.LVL65:
	cmpw 7,9,27
	bgt+ 7,.L22
.LVL66:
.L16:
	.loc 1 148 0
	lwz 0,100(1)
	lwz 18,32(1)
	mtlr 0
	lwz 19,36(1)
	lwz 20,40(1)
	lwz 21,44(1)
	lwz 22,48(1)
	lwz 23,52(1)
.LVL67:
	lwz 24,56(1)
	lwz 25,60(1)
	lwz 26,64(1)
.LVL68:
	lwz 27,68(1)
	lwz 28,72(1)
	lwz 29,76(1)
.LVL69:
	lwz 30,80(1)
	lwz 31,84(1)
	lfd 31,88(1)
	addi 1,1,96
.LCFI4:
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
	.cfi_restore 19
	.cfi_restore 18
	blr
	.cfi_endproc
.LFE39:
	.size	R_DrawBrushBumped, .-R_DrawBrushBumped
	.align 2
	.globl R_DrawBrushObjectLightGX
	.type	R_DrawBrushObjectLightGX, @function
R_DrawBrushObjectLightGX:
.LFB40:
	.loc 1 161 0
	.cfi_startproc
.LVL70:
	stwu 1,-32(1)
.LCFI5:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 30,24(1)
	.loc 1 168 0
	lis 30,currentshadowlight@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 161 0
	stw 0,36(1)
	.loc 1 171 0
	li 0,-1
	.cfi_offset 65, 4
	.loc 1 168 0
	lwz 9,currentshadowlight@l(30)
	.loc 1 161 0
	stw 27,12(1)
	stw 28,16(1)
	.loc 1 168 0
	lwz 27,0(9)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL71:
	lwz 28,4(9)
.LVL72:
	.loc 1 161 0
	stw 29,20(1)
	.loc 1 168 0
	lwz 29,8(9)
	.cfi_offset 29, -12
.LVL73:
	.loc 1 170 0
	lis 9,currententity@ha
	.loc 1 161 0
	stw 31,28(1)
	.loc 1 161 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 170 0
	stw 3,currententity@l(9)
	.loc 1 171 0
	lis 9,currenttexture@ha
	stw 0,currenttexture@l(9)
.LVL74:
	.loc 1 175 0
	bl glPushMatrix
.LVL75:
	.loc 1 176 0
	lfs 0,148(31)
	.loc 1 177 0
	mr 3,31
	.loc 1 176 0
	fneg 0,0
	stfs 0,148(31)
	.loc 1 177 0
	bl R_RotateForEntity
	.loc 1 178 0
	lfs 0,148(31)
	fneg 0,0
	stfs 0,148(31)
	.loc 1 180 0
	bl GX_LoadGLModelView
	.loc 1 181 0
	mr 3,31
	bl R_DrawBrushBumped
	.loc 1 183 0
	lwz 9,currentshadowlight@l(30)
	stw 27,0(9)
	stw 28,4(9)
	stw 29,8(9)
	.loc 1 184 0
	bl glPopMatrix
	.loc 1 185 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL76:
	mtlr 0
	lwz 28,16(1)
.LVL77:
	lwz 29,20(1)
.LVL78:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL79:
	addi 1,1,32
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE40:
	.size	R_DrawBrushObjectLightGX, .-R_DrawBrushObjectLightGX
	.align 2
	.globl R_DrawLightEntities
	.type	R_DrawLightEntities, @function
R_DrawLightEntities:
.LFB41:
	.loc 1 196 0
	.cfi_startproc
.LVL80:
	.loc 1 199 0
	lis 9,r_drawentities+12@ha
	.loc 1 196 0
	mflr 0
	.loc 1 199 0
	lfs 13,r_drawentities+12@l(9)
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	.loc 1 196 0
	stwu 1,-24(1)
.LCFI7:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 199 0
	fcmpu 7,13,0
	.loc 1 196 0
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 199 0
	beq- 7,.L27
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 1 202 0
	lis 9,currentshadowlight@ha
	lwz 9,currentshadowlight@l(9)
	lbz 0,44(9)
	cmpwi 7,0,0
	beq- 7,.L27
.LVL81:
	.loc 1 239 0 discriminator 1
	lis 29,cl_numlightvisedicts@ha
	lwz 0,cl_numlightvisedicts@l(29)
	cmpwi 7,0,0
	ble- 7,.L27
	.loc 1 239 0 is_stmt 0
	lis 30,cl_lightvisedicts-4@ha
	lis 28,currententity@ha
	la 30,cl_lightvisedicts-4@l(30)
	li 31,0
	la 28,currententity@l(28)
	la 29,cl_numlightvisedicts@l(29)
	b .L30
.LVL82:
.L29:
	lwz 0,0(29)
	cmpw 7,0,31
	ble- 7,.L27
.LVL83:
.L30:
	.loc 1 240 0 is_stmt 1
	lwzu 3,4(30)
.LVL84:
	.loc 1 239 0
	addi 31,31,1
	.loc 1 242 0
	lwz 9,160(3)
.LVL85:
	.loc 1 240 0
	stw 3,0(28)
	.loc 1 242 0
	lwz 0,68(9)
	cmpwi 7,0,0
	bne- 7,.L29
	.loc 1 243 0
	lwz 9,264(3)
	cmpwi 7,9,0
	beq- 7,.L29
	.loc 1 245 0
	lbz 0,88(9)
	cmpwi 7,0,0
	bne+ 7,.L29
	.loc 1 248 0
	bl R_DrawBrushObjectLightGX
.LVL86:
	.loc 1 239 0
	lwz 0,0(29)
	cmpw 7,0,31
	bgt+ 7,.L30
.LVL87:
.L27:
	.loc 1 253 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE41:
	.size	R_DrawLightEntities, .-R_DrawLightEntities
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC2:
	.4byte	1501560836
.LC3:
	.4byte	1132396544
.LC4:
	.4byte	0
	.section	".text"
.Letext0:
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e8d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF342
	.byte	0x1
	.4byte	.LASF343
	.4byte	.LASF344
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
	.4byte	0x6c
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2a
	.4byte	0x2c
	.uleb128 0x7
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0x9a
	.uleb128 0x7
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0x22
	.4byte	0xca
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.byte	0x40
	.byte	0x6
	.byte	0x52
	.4byte	0x142
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0x54
	.4byte	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x54
	.4byte	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x55
	.4byte	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x56
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x152
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x162
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x6
	.byte	0x59
	.4byte	0xd7
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x17d
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x18d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x19d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xa5
	.4byte	0x1c2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa8
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0xa9
	.4byte	0x19d
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1e3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0x1f3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x203
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7
	.byte	0x6f
	.4byte	0x21e
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x7
	.byte	0x72
	.4byte	0x203
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x8
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x8
	.byte	0x17
	.4byte	0x23f
	.uleb128 0xb
	.4byte	0x229
	.4byte	0x24f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x48
	.byte	0x9
	.byte	0xef
	.4byte	0x300
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x9
	.byte	0xf1
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x9
	.byte	0xf2
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x9
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x9
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x9
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x9
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x9
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x9
	.byte	0xf9
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x9
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x9
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x9
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x9
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x9
	.byte	0xfe
	.4byte	0x24f
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x14
	.byte	0xa
	.byte	0x38
	.4byte	0x36c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xa
	.byte	0x3a
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xa
	.byte	0x3b
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xa
	.byte	0x3c
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xa
	.byte	0x3d
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xa
	.byte	0x3e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xa
	.byte	0x3f
	.4byte	0x36c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30b
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0xa
	.byte	0x40
	.4byte	0x30b
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x38d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x10
	.byte	0xb
	.byte	0x1e
	.4byte	0x3d2
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xb
	.byte	0x20
	.4byte	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xb
	.byte	0x21
	.4byte	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xb
	.byte	0x22
	.4byte	0x6f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xb
	.byte	0x23
	.4byte	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x40
	.byte	0xc
	.byte	0xca
	.4byte	0x479
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xc
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xc
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xc
	.byte	0xd0
	.4byte	0xff8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xc
	.byte	0xd2
	.4byte	0xa51
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xc
	.byte	0xd5
	.4byte	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0xc
	.byte	0xd6
	.4byte	0x1023
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xc
	.byte	0xd8
	.4byte	0x1029
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xc
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0xc
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xc
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xc
	.byte	0xdc
	.4byte	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x38d
	.uleb128 0xf
	.4byte	.LASF69
	.2byte	0x248
	.byte	0xb
	.byte	0x27
	.4byte	0x6f3
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xb
	.byte	0x29
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xb
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xb
	.byte	0x2d
	.4byte	0x300
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xb
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xb
	.byte	0x30
	.4byte	0x704
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0xb
	.byte	0x31
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xb
	.byte	0x32
	.4byte	0x704
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xb
	.byte	0x33
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xb
	.byte	0x34
	.4byte	0x9ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xb
	.byte	0x35
	.4byte	0x47f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xb
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xb
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xb
	.byte	0x38
	.4byte	0xd1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xb
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xb
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xb
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xb
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xb
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xb
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xb
	.byte	0x44
	.4byte	0xa51
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xb
	.byte	0x48
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xb
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xb
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0xb
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0xb
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xb
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xb
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xb
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xb
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xb
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xb
	.byte	0x57
	.4byte	0xb71
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xb
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xb
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xb
	.byte	0x5c
	.4byte	0xb77
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xb
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xb
	.byte	0x60
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xb
	.byte	0x61
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xb
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xb
	.byte	0x63
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xb
	.byte	0x64
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x485
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0xb
	.byte	0x24
	.4byte	0x38d
	.uleb128 0xb
	.4byte	0x229
	.4byte	0x71a
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF101
	.2byte	0x1a4
	.byte	0xc
	.2byte	0x180
	.4byte	0x9ce
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0xc
	.2byte	0x182
	.4byte	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xc
	.2byte	0x183
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xc
	.2byte	0x185
	.4byte	0x136c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xc
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xc
	.2byte	0x187
	.4byte	0xbbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0xc
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xc
	.2byte	0x18e
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xc
	.2byte	0x18e
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0xc
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0xc
	.2byte	0x194
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0xc
	.2byte	0x195
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xc
	.2byte	0x195
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xc
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xc
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x19d
	.4byte	0x1378
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x1a0
	.4byte	0xfdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0xc
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xc
	.2byte	0x1a3
	.4byte	0x137e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xc
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xc
	.2byte	0x1a6
	.4byte	0x1384
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xc
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xc
	.2byte	0x1a9
	.4byte	0x138a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xc
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xc
	.2byte	0x1ac
	.4byte	0x1390
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xc
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x1af
	.4byte	0xfe7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x1b2
	.4byte	0x102f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xc
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xc
	.2byte	0x1b5
	.4byte	0x1396
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xc
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xc
	.2byte	0x1b8
	.4byte	0x109d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0xc
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xc
	.2byte	0x1bb
	.4byte	0x1029
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xc
	.2byte	0x1bd
	.4byte	0x139c
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xc
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xc
	.2byte	0x1c0
	.4byte	0x13ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xc
	.2byte	0x1c2
	.4byte	0xd1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xc
	.2byte	0x1c3
	.4byte	0xd1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xc
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xc
	.2byte	0x1c9
	.4byte	0x21e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x71a
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x34
	.byte	0xc
	.byte	0xb6
	.4byte	0xa51
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xc
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xc
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xc
	.byte	0xbc
	.4byte	0xff8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xc
	.byte	0xbe
	.4byte	0xa51
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0xc
	.byte	0xc1
	.4byte	0xfdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0xc
	.byte	0xc2
	.4byte	0x1008
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0xc
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xc
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9d4
	.uleb128 0x12
	.4byte	.LASF143
	.4byte	0x20030
	.byte	0xd
	.2byte	0xa09
	.4byte	0xb71
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xd
	.2byte	0xa0f
	.4byte	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xd
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xd
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xd
	.2byte	0xa17
	.4byte	0x1787
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xd
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xd
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xd
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xd
	.2byte	0xa1d
	.4byte	0xb92
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xd
	.2byte	0xa1f
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xd
	.2byte	0xa21
	.4byte	0x1787
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xd
	.2byte	0xa25
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xd
	.2byte	0xa2b
	.4byte	0x1793
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xd
	.2byte	0xa2d
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xd
	.2byte	0xa2f
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xd
	.2byte	0xa31
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xd
	.2byte	0xa33
	.4byte	0x17d8
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xd
	.2byte	0xa37
	.4byte	0x17e9
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa57
	.uleb128 0xb
	.4byte	0x33
	.4byte	0xb87
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0xb
	.byte	0x66
	.4byte	0x485
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb87
	.uleb128 0xb
	.4byte	0x41
	.4byte	0xba8
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xe
	.byte	0x34
	.4byte	0xbbd
	.uleb128 0x14
	.4byte	.LASF162
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF163
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0xe
	.byte	0x34
	.4byte	0xba8
	.uleb128 0x9
	.byte	0x4
	.byte	0xe
	.byte	0x64
	.4byte	0xbeb
	.uleb128 0xe
	.string	"v"
	.byte	0xe
	.byte	0x65
	.4byte	0xbeb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF165
	.byte	0xe
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0xbfb
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0xe
	.byte	0x67
	.4byte	0xbc8
	.uleb128 0x9
	.byte	0xc
	.byte	0xc
	.byte	0x3b
	.4byte	0xc1d
	.uleb128 0xa
	.4byte	.LASF167
	.byte	0xc
	.byte	0x3d
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF168
	.byte	0xc
	.byte	0x3e
	.4byte	0xc06
	.uleb128 0x9
	.byte	0x1c
	.byte	0xc
	.byte	0x43
	.4byte	0xc5b
	.uleb128 0xa
	.4byte	.LASF167
	.byte	0xc
	.byte	0x45
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0xc
	.byte	0x46
	.4byte	0xc5b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0xc
	.byte	0x47
	.4byte	0xc5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0xc6b
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF171
	.byte	0xc
	.byte	0x48
	.4byte	0xc28
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0x14
	.byte	0xc
	.byte	0x52
	.4byte	0xcc9
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0xc
	.byte	0x54
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xc
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xc
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0xc
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0xc
	.byte	0x58
	.4byte	0xcc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0xcd9
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF176
	.byte	0xc
	.byte	0x59
	.4byte	0xc76
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0x48
	.byte	0xc
	.byte	0x5b
	.4byte	0xd99
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xc
	.byte	0x5d
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0xc
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0xc
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0xc
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0xc
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0xc
	.byte	0x61
	.4byte	0xebe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0xc
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0xc
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0xc
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0xc
	.byte	0x64
	.4byte	0xec4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0xc
	.byte	0x65
	.4byte	0xec4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xc
	.byte	0x66
	.4byte	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF189
	.byte	0x5c
	.byte	0xc
	.byte	0x96
	.4byte	0xebe
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xc
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0xc
	.byte	0x9a
	.4byte	0xfdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xc
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0xc
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xc
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0xc
	.byte	0xa0
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0xc
	.byte	0xa1
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0xc
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0xc
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0xc
	.byte	0xa5
	.4byte	0xfe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0xc
	.byte	0xa6
	.4byte	0xebe
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0xc
	.byte	0xa7
	.4byte	0xebe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xc
	.byte	0xa9
	.4byte	0xfe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xc
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0xc
	.byte	0xb0
	.4byte	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF199
	.byte	0xc
	.byte	0xb1
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF200
	.byte	0xc
	.byte	0xb2
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF201
	.byte	0xc
	.byte	0xb3
	.4byte	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd99
	.uleb128 0x5
	.byte	0x4
	.4byte	0xce4
	.uleb128 0x6
	.4byte	.LASF202
	.byte	0xc
	.byte	0x67
	.4byte	0xce4
	.uleb128 0x9
	.byte	0x8
	.byte	0xc
	.byte	0x78
	.4byte	0xef8
	.uleb128 0xe
	.string	"v"
	.byte	0xc
	.byte	0x7a
	.4byte	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0xc
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0xc
	.byte	0x7c
	.4byte	0xed5
	.uleb128 0x9
	.byte	0x2c
	.byte	0xc
	.byte	0x7e
	.4byte	0xf44
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0xc
	.byte	0x80
	.4byte	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0xc
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0xc
	.byte	0x82
	.4byte	0xf44
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xc
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xeca
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0xc
	.byte	0x84
	.4byte	0xf03
	.uleb128 0xd
	.4byte	.LASF208
	.byte	0x1c
	.byte	0xc
	.byte	0x8a
	.4byte	0xfc4
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xc
	.byte	0x8c
	.4byte	0xfc4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0xc
	.byte	0x8d
	.4byte	0xfc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0xc
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xc
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xc
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0xc
	.byte	0x92
	.4byte	0xfca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF212
	.byte	0xc
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf55
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfc4
	.uleb128 0x6
	.4byte	.LASF213
	.byte	0xc
	.byte	0x94
	.4byte	0xf55
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcd9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfd0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf4a
	.uleb128 0x6
	.4byte	.LASF214
	.byte	0xc
	.byte	0xb4
	.4byte	0xd99
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1008
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xa51
	.4byte	0x1018
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF215
	.byte	0xc
	.byte	0xc6
	.4byte	0x9d4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6f9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x102f
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfed
	.uleb128 0x6
	.4byte	.LASF216
	.byte	0xc
	.byte	0xdd
	.4byte	0x3d2
	.uleb128 0x9
	.byte	0x28
	.byte	0xc
	.byte	0xe0
	.4byte	0x109d
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0xc
	.byte	0xe2
	.4byte	0x109d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xc
	.byte	0xe3
	.4byte	0xfdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0xc
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0xc
	.byte	0xe6
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF220
	.byte	0xc
	.byte	0xe7
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0x6
	.4byte	.LASF221
	.byte	0xc
	.byte	0xe8
	.4byte	0x1040
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x15
	.byte	0x28
	.byte	0xc
	.2byte	0x11e
	.4byte	0x1127
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0xc
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF223
	.byte	0xc
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0xc
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF225
	.byte	0xc
	.2byte	0x123
	.4byte	0xbfb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0xc
	.2byte	0x124
	.4byte	0xbfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0xc
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0xc
	.2byte	0x126
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x16
	.4byte	.LASF227
	.byte	0xc
	.2byte	0x127
	.4byte	0x10b4
	.uleb128 0x17
	.2byte	0x53c
	.byte	0xc
	.2byte	0x142
	.4byte	0x1318
	.uleb128 0x11
	.4byte	.LASF228
	.byte	0xc
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF229
	.byte	0xc
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF230
	.byte	0xc
	.2byte	0x145
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF231
	.byte	0xc
	.2byte	0x146
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF232
	.byte	0xc
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0xc
	.2byte	0x148
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0xc
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0xc
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0xc
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF210
	.byte	0xc
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0xc
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xc
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xc
	.2byte	0x14f
	.4byte	0xbbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0xc
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0xc
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xc
	.2byte	0x153
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xc
	.2byte	0x153
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF223
	.byte	0xc
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0xc
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0xc
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0xc
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF242
	.byte	0xc
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xc
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF243
	.byte	0xc
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF244
	.byte	0xc
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF245
	.byte	0xc
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0xc
	.2byte	0x15e
	.4byte	0x1318
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0xc
	.2byte	0x15f
	.4byte	0x1318
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0xc
	.2byte	0x160
	.4byte	0xb98
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF248
	.byte	0xc
	.2byte	0x161
	.4byte	0x132e
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x132e
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x1127
	.4byte	0x133e
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF249
	.byte	0xc
	.2byte	0x162
	.4byte	0x1133
	.uleb128 0x18
	.byte	0x4
	.byte	0xc
	.2byte	0x172
	.4byte	0x136c
	.uleb128 0x14
	.4byte	.LASF250
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF251
	.sleb128 1
	.uleb128 0x14
	.4byte	.LASF252
	.sleb128 2
	.uleb128 0x14
	.4byte	.LASF253
	.sleb128 3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF254
	.byte	0xc
	.2byte	0x172
	.4byte	0x134a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x162
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1035
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1d
	.uleb128 0x5
	.byte	0x4
	.4byte	0xef8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1018
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x10a3
	.4byte	0x13ac
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf44
	.uleb128 0x16
	.4byte	.LASF255
	.byte	0xc
	.2byte	0x1cb
	.4byte	0x71a
	.uleb128 0x9
	.byte	0x10
	.byte	0xf
	.byte	0x16
	.4byte	0x13e3
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0xf
	.byte	0x18
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xf
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xf
	.byte	0x1a
	.4byte	0x13be
	.uleb128 0x19
	.4byte	.LASF257
	.byte	0x14
	.byte	0xd
	.2byte	0x981
	.4byte	0x141a
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0xd
	.2byte	0x983
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0xd
	.2byte	0x985
	.4byte	0x141a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13ee
	.uleb128 0x16
	.4byte	.LASF259
	.byte	0xd
	.2byte	0x987
	.4byte	0x13ee
	.uleb128 0x1a
	.4byte	.LASF310
	.byte	0x4
	.byte	0xd
	.2byte	0x98d
	.4byte	0x146a
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0xd
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0xd
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0xd
	.2byte	0x993
	.4byte	0x229
	.uleb128 0x1b
	.4byte	.LASF263
	.byte	0xd
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF264
	.byte	0xd
	.2byte	0x997
	.4byte	0x142c
	.uleb128 0x10
	.4byte	.LASF265
	.2byte	0x890
	.byte	0xd
	.2byte	0x99d
	.4byte	0x162a
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0xd
	.2byte	0x99f
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0xd
	.2byte	0x9a1
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xd
	.2byte	0x9a1
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0xd
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF267
	.byte	0xd
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF268
	.byte	0xd
	.2byte	0x9a9
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF269
	.byte	0xd
	.2byte	0x9ab
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF270
	.byte	0xd
	.2byte	0x9ad
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF271
	.byte	0xd
	.2byte	0x9af
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0xd
	.2byte	0x9b1
	.4byte	0x137e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.string	"vis"
	.byte	0xd
	.2byte	0x9b3
	.4byte	0x162a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF272
	.byte	0xd
	.2byte	0x9b5
	.4byte	0x162a
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0xd
	.2byte	0x9b7
	.4byte	0x1029
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0xd
	.2byte	0x9b9
	.4byte	0x1396
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF275
	.byte	0xd
	.2byte	0x9bb
	.4byte	0x10ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0xd
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0xd
	.2byte	0x9bf
	.4byte	0x163b
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0xd
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xd
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0xd
	.2byte	0x9c5
	.4byte	0xb92
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0xd
	.2byte	0x9c7
	.4byte	0x1420
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0xd
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0xd
	.2byte	0x9cb
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF282
	.byte	0xd
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF283
	.byte	0xd
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF284
	.byte	0xd
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF285
	.byte	0xd
	.2byte	0x9d3
	.4byte	0x234
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x163b
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x146a
	.uleb128 0x16
	.4byte	.LASF286
	.byte	0xd
	.2byte	0x9d5
	.4byte	0x1476
	.uleb128 0x12
	.4byte	.LASF287
	.4byte	0x1e864
	.byte	0xd
	.2byte	0x9db
	.4byte	0x1787
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xd
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF289
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF290
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF291
	.byte	0xd
	.2byte	0x9e1
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0xd
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xd
	.2byte	0x9e5
	.4byte	0xb92
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF293
	.byte	0xd
	.2byte	0x9e7
	.4byte	0x1787
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0xd
	.2byte	0x9e9
	.4byte	0x178d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0xd
	.2byte	0x9eb
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF296
	.byte	0xd
	.2byte	0x9eb
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF297
	.byte	0xd
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF298
	.byte	0xd
	.2byte	0x9f3
	.4byte	0x1793
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF299
	.byte	0xd
	.2byte	0x9f5
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF300
	.byte	0xd
	.2byte	0x9f7
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF301
	.byte	0xd
	.2byte	0x9f9
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF302
	.byte	0xd
	.2byte	0x9fb
	.4byte	0x17aa
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF245
	.byte	0xd
	.2byte	0x9ff
	.4byte	0x17bb
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0xd
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x133e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1641
	.uleb128 0xb
	.4byte	0x229
	.4byte	0x17aa
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xbf
	.4byte	0x17bb
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x17cc
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x16
	.4byte	.LASF303
	.byte	0xd
	.2byte	0xa05
	.4byte	0x164d
	.uleb128 0xb
	.4byte	0x13e3
	.4byte	0x17e9
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17cc
	.uleb128 0x12
	.4byte	.LASF304
	.4byte	0x1905c
	.byte	0xd
	.2byte	0xa3d
	.4byte	0x1929
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xd
	.2byte	0xa41
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0xd
	.2byte	0xa43
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF289
	.byte	0xd
	.2byte	0xa43
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF290
	.byte	0xd
	.2byte	0xa43
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF291
	.byte	0xd
	.2byte	0xa43
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0xd
	.2byte	0xa45
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xd
	.2byte	0xa47
	.4byte	0xb92
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0xd
	.2byte	0xa49
	.4byte	0x178d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0xd
	.2byte	0xa4b
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF296
	.byte	0xd
	.2byte	0xa4b
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xd
	.2byte	0xa4d
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xd
	.2byte	0xa4d
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0x11
	.4byte	.LASF298
	.byte	0xd
	.2byte	0xa53
	.4byte	0x1793
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF299
	.byte	0xd
	.2byte	0xa55
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0x605c
	.uleb128 0x11
	.4byte	.LASF300
	.byte	0xd
	.2byte	0xa57
	.4byte	0x1793
	.byte	0x4
	.byte	0x23
	.uleb128 0xc05c
	.uleb128 0x11
	.4byte	.LASF305
	.byte	0xd
	.2byte	0xa59
	.4byte	0x1929
	.byte	0x4
	.byte	0x23
	.uleb128 0x1205c
	.uleb128 0x11
	.4byte	.LASF306
	.byte	0xd
	.2byte	0xa5b
	.4byte	0x1940
	.byte	0x4
	.byte	0x23
	.uleb128 0x1605c
	.uleb128 0x11
	.4byte	.LASF307
	.byte	0xd
	.2byte	0xa5d
	.4byte	0x17aa
	.byte	0x4
	.byte	0x23
	.uleb128 0x1805c
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0xd
	.2byte	0xa5f
	.4byte	0x17aa
	.byte	0x4
	.byte	0x23
	.uleb128 0x1885c
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1940
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1951
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x16
	.4byte	.LASF309
	.byte	0xd
	.2byte	0xa61
	.4byte	0x17ef
	.uleb128 0x1a
	.4byte	.LASF311
	.byte	0x4
	.byte	0x2
	.2byte	0x490
	.4byte	0x19bd
	.uleb128 0x1e
	.string	"U8"
	.byte	0x2
	.2byte	0x492
	.4byte	0x19bd
	.uleb128 0x1e
	.string	"S8"
	.byte	0x2
	.2byte	0x493
	.4byte	0x19c2
	.uleb128 0x1e
	.string	"U16"
	.byte	0x2
	.2byte	0x494
	.4byte	0x19c7
	.uleb128 0x1e
	.string	"S16"
	.byte	0x2
	.2byte	0x495
	.4byte	0x19cc
	.uleb128 0x1e
	.string	"U32"
	.byte	0x2
	.2byte	0x496
	.4byte	0x19d1
	.uleb128 0x1e
	.string	"S32"
	.byte	0x2
	.2byte	0x497
	.4byte	0x19d6
	.uleb128 0x1e
	.string	"F32"
	.byte	0x2
	.2byte	0x498
	.4byte	0xba
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
	.uleb128 0x16
	.4byte	.LASF312
	.byte	0x2
	.2byte	0x499
	.4byte	0x195d
	.uleb128 0x19
	.4byte	.LASF313
	.byte	0x4
	.byte	0x2
	.2byte	0x49e
	.4byte	0x1a29
	.uleb128 0x1c
	.string	"r"
	.byte	0x2
	.2byte	0x49f
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1c
	.string	"g"
	.byte	0x2
	.2byte	0x4a0
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1c
	.string	"b"
	.byte	0x2
	.2byte	0x4a1
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1c
	.string	"a"
	.byte	0x2
	.2byte	0x4a2
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF314
	.byte	0x2
	.2byte	0x4a3
	.4byte	0x19e7
	.uleb128 0x1f
	.4byte	.LASF315
	.byte	0x2
	.2byte	0x849
	.byte	0x1
	.byte	0x3
	.4byte	0x1a62
	.uleb128 0x20
	.string	"x"
	.byte	0x2
	.2byte	0x849
	.4byte	0xaf
	.uleb128 0x20
	.string	"y"
	.byte	0x2
	.2byte	0x849
	.4byte	0xaf
	.uleb128 0x20
	.string	"z"
	.byte	0x2
	.2byte	0x849
	.4byte	0xaf
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF316
	.byte	0x2
	.2byte	0x911
	.byte	0x1
	.byte	0x3
	.4byte	0x1a85
	.uleb128 0x20
	.string	"s"
	.byte	0x2
	.2byte	0x911
	.4byte	0xaf
	.uleb128 0x20
	.string	"t"
	.byte	0x2
	.2byte	0x911
	.4byte	0xaf
	.byte	0
	.uleb128 0x21
	.4byte	.LASF345
	.byte	0x2
	.2byte	0x845
	.byte	0x3
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF346
	.byte	0x1
	.byte	0xc
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x1bbf
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe
	.4byte	0x1a29
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.LASF317
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x24
	.string	"num"
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LASF318
	.byte	0x1
	.byte	0x11
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF277
	.byte	0x1
	.byte	0x12
	.4byte	0x163b
	.4byte	.LLST6
	.uleb128 0x23
	.4byte	.LASF319
	.byte	0x1
	.byte	0x15
	.4byte	0x102f
	.4byte	.LLST7
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.byte	0x16
	.4byte	0x10ae
	.4byte	.LLST8
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.byte	0x16
	.4byte	0x7a
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	.LASF320
	.byte	0x1
	.byte	0x17
	.4byte	0xf44
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x26
	.4byte	.LASF325
	.byte	0x1
	.byte	0x44
	.4byte	0x10ae
	.uleb128 0x27
	.4byte	0x1a35
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x45
	.4byte	0x1b75
	.uleb128 0x28
	.4byte	0x1a57
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	0x1a4d
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	0x1a43
	.4byte	.LLST13
	.byte	0
	.uleb128 0x29
	.4byte	0x1a62
	.4byte	.LBB25
	.4byte	.LBE25
	.byte	0x1
	.byte	0x46
	.4byte	0x1b9b
	.uleb128 0x28
	.4byte	0x1a7a
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	0x1a70
	.4byte	.LLST15
	.byte	0
	.uleb128 0x2a
	.4byte	0x1a62
	.4byte	.LBB27
	.4byte	.LBE27
	.byte	0x1
	.byte	0x47
	.uleb128 0x28
	.4byte	0x1a7a
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	0x1a70
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF326
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST18
	.4byte	0x1d1e
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.byte	0x5b
	.4byte	0xb92
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5c
	.4byte	0x1a29
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	.LASF319
	.byte	0x1
	.byte	0x5e
	.4byte	0x102f
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	.LASF321
	.byte	0x1
	.byte	0x5f
	.4byte	0xfe1
	.4byte	.LLST22
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x60
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.byte	0x60
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	.LASF322
	.byte	0x1
	.byte	0x60
	.4byte	0x41
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	.LASF323
	.byte	0x1
	.byte	0x60
	.4byte	0x41
	.4byte	.LLST26
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.byte	0x61
	.4byte	0x10ae
	.4byte	.LLST27
	.uleb128 0x23
	.4byte	.LASF324
	.byte	0x1
	.byte	0x61
	.4byte	0x7a
	.4byte	.LLST28
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.byte	0x62
	.4byte	0xf44
	.4byte	.LLST29
	.uleb128 0x23
	.4byte	.LASF76
	.byte	0x1
	.byte	0x64
	.4byte	0x1d1e
	.4byte	.LLST30
	.uleb128 0x24
	.string	"ins"
	.byte	0x1
	.byte	0x65
	.4byte	0x1d24
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x23
	.4byte	.LASF325
	.byte	0x1
	.byte	0x8a
	.4byte	0x10ae
	.4byte	.LLST32
	.uleb128 0x27
	.4byte	0x1a35
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x8b
	.4byte	0x1cd4
	.uleb128 0x28
	.4byte	0x1a57
	.4byte	.LLST33
	.uleb128 0x28
	.4byte	0x1a4d
	.4byte	.LLST34
	.uleb128 0x28
	.4byte	0x1a43
	.4byte	.LLST35
	.byte	0
	.uleb128 0x29
	.4byte	0x1a62
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0x1
	.byte	0x8c
	.4byte	0x1cfa
	.uleb128 0x28
	.4byte	0x1a7a
	.4byte	.LLST36
	.uleb128 0x28
	.4byte	0x1a70
	.4byte	.LLST37
	.byte	0
	.uleb128 0x2a
	.4byte	0x1a62
	.4byte	.LBB39
	.4byte	.LBE39
	.byte	0x1
	.byte	0x8d
	.uleb128 0x28
	.4byte	0x1a7a
	.4byte	.LLST38
	.uleb128 0x28
	.4byte	0x1a70
	.4byte	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13b2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1951
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF327
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST40
	.4byte	0x1d7e
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.byte	0xa1
	.4byte	0xb92
	.4byte	.LLST41
	.uleb128 0x23
	.4byte	.LASF328
	.byte	0x1
	.byte	0xa3
	.4byte	0x1d1e
	.4byte	.LLST42
	.uleb128 0x23
	.4byte	.LASF285
	.byte	0x1
	.byte	0xa5
	.4byte	0x234
	.4byte	.LLST43
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF347
	.byte	0x1
	.byte	0xb4
	.4byte	0x41
	.byte	0x1
	.uleb128 0x2e
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF329
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST44
	.4byte	0x1db2
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.byte	0xc3
	.4byte	0x178d
	.4byte	.LLST45
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xc5
	.4byte	0x41
	.4byte	.LLST46
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF330
	.byte	0x10
	.2byte	0x13e
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0xb92
	.4byte	0x1dd0
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF331
	.byte	0x10
	.2byte	0x13f
	.4byte	0x1dc0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x213
	.4byte	0xb87
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF333
	.byte	0xd
	.2byte	0x219
	.4byte	0xb92
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF334
	.byte	0xd
	.2byte	0x21d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1e18
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF335
	.byte	0xd
	.2byte	0x245
	.4byte	0x1e08
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF336
	.byte	0xd
	.2byte	0x24b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x26b
	.4byte	0x372
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF338
	.byte	0xd
	.2byte	0xa81
	.4byte	0x178d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF339
	.byte	0xd
	.2byte	0xa89
	.4byte	0x1e5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc6b
	.uleb128 0x30
	.4byte	.LASF340
	.byte	0xd
	.2byte	0xc2c
	.4byte	0x102f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x2f
	.4byte	.LASF341
	.byte	0x2
	.2byte	0x548
	.4byte	0x1e85
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	0x1e8a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19db
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x5
	.byte	0x87
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x8
	.byte	0x87
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x8
	.byte	0x87
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 8
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 4
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 0
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 16
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 -12
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 12
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x89
	.sleb128 4
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x89
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x89
	.sleb128 0
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x89
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0xd
	.byte	0x87
	.sleb128 140
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x87
	.sleb128 208
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 36
	.4byte	.LVL52-1-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 160
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 264
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 8
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 16
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -12
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 12
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB40-.Ltext0
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
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL75-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-1-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL75-1-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x9
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x6f
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
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"compressed_vis"
.LASF53:
	.string	"efrag_s"
.LASF100:
	.string	"efrag_t"
.LASF141:
	.string	"plane"
.LASF224:
	.string	"interval"
.LASF307:
	.string	"polygonVis"
.LASF101:
	.string	"model_s"
.LASF255:
	.string	"model_t"
.LASF206:
	.string	"mipadjust"
.LASF160:
	.string	"lightinstant"
.LASF232:
	.string	"boundingradius"
.LASF116:
	.string	"planes"
.LASF249:
	.string	"aliashdr_t"
.LASF252:
	.string	"mod_alias"
.LASF121:
	.string	"edges"
.LASF142:
	.string	"firstsurface"
.LASF158:
	.string	"binomials"
.LASF267:
	.string	"brightness"
.LASF85:
	.string	"frame_start_time"
.LASF23:
	.string	"numfaces"
.LASF123:
	.string	"nodes"
.LASF334:
	.string	"r_framecount"
.LASF59:
	.string	"contents"
.LASF51:
	.string	"next"
.LASF229:
	.string	"version"
.LASF300:
	.string	"tshalfangles"
.LASF150:
	.string	"lastblend"
.LASF244:
	.string	"texcoords"
.LASF295:
	.string	"lightpos"
.LASF95:
	.string	"origin1"
.LASF96:
	.string	"origin2"
.LASF185:
	.string	"anim_max"
.LASF315:
	.string	"GX_Position3f32"
.LASF336:
	.string	"currenttexture"
.LASF131:
	.string	"clipnodes"
.LASF22:
	.string	"firstface"
.LASF264:
	.string	"lightcmd_t"
.LASF297:
	.string	"lastframeinstant"
.LASF145:
	.string	"lockframe"
.LASF71:
	.string	"update_type"
.LASF105:
	.string	"synctype"
.LASF118:
	.string	"numvertexes"
.LASF165:
	.string	"lightnormalindex"
.LASF331:
	.string	"cl_lightvisedicts"
.LASF70:
	.string	"forcelink"
.LASF64:
	.string	"efrags"
.LASF58:
	.string	"mleaf_s"
.LASF320:
	.string	"diffuse"
.LASF98:
	.string	"angles1"
.LASF99:
	.string	"angles2"
.LASF287:
	.string	"aliaslightinstant_s"
.LASF0:
	.string	"signed char"
.LASF128:
	.string	"numsurfedges"
.LASF309:
	.string	"brushlightinstant_t"
.LASF126:
	.string	"numsurfaces"
.LASF205:
	.string	"vecs"
.LASF163:
	.string	"ST_RAND"
.LASF225:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF33:
	.string	"modelindex"
.LASF168:
	.string	"mvertex_t"
.LASF67:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF217:
	.string	"firstclipnode"
.LASF49:
	.string	"server"
.LASF271:
	.string	"halo"
.LASF339:
	.string	"globalVertexTable"
.LASF133:
	.string	"hulls"
.LASF180:
	.string	"gl_texturenum"
.LASF88:
	.string	"pose1"
.LASF89:
	.string	"pose2"
.LASF36:
	.string	"skin"
.LASF220:
	.string	"clip_maxs"
.LASF234:
	.string	"numskins"
.LASF94:
	.string	"translate_start_time"
.LASF344:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF72:
	.string	"baseline"
.LASF314:
	.string	"GXColor"
.LASF77:
	.string	"efrag"
.LASF39:
	.string	"alpha"
.LASF275:
	.string	"volumeVerts"
.LASF107:
	.string	"radius"
.LASF294:
	.string	"lastlight"
.LASF279:
	.string	"owner"
.LASF152:
	.string	"lastshadowonly"
.LASF304:
	.string	"brushlightinstant_s"
.LASF87:
	.string	"blend"
.LASF140:
	.string	"mnode_s"
.LASF215:
	.string	"mnode_t"
.LASF182:
	.string	"texturechain"
.LASF38:
	.string	"color"
.LASF175:
	.string	"signbits"
.LASF197:
	.string	"lightmaptexturenum"
.LASF93:
	.string	"leafnums"
.LASF333:
	.string	"currententity"
.LASF301:
	.string	"colors"
.LASF171:
	.string	"mmvertex_t"
.LASF183:
	.string	"anim_total"
.LASF178:
	.string	"width"
.LASF293:
	.string	"lasthdr"
.LASF284:
	.string	"haloalpha"
.LASF262:
	.string	"asVec"
.LASF345:
	.string	"GX_End"
.LASF311:
	.string	"_wgpipe"
.LASF16:
	.string	"_Bool"
.LASF69:
	.string	"entity_s"
.LASF161:
	.string	"entity_t"
.LASF112:
	.string	"nummodelsurfaces"
.LASF144:
	.string	"_next"
.LASF24:
	.string	"dmodel_t"
.LASF106:
	.string	"flags"
.LASF192:
	.string	"extents"
.LASF186:
	.string	"anim_next"
.LASF256:
	.string	"plane_t"
.LASF19:
	.string	"origin"
.LASF47:
	.string	"string"
.LASF114:
	.string	"submodels"
.LASF169:
	.string	"texture"
.LASF115:
	.string	"numplanes"
.LASF138:
	.string	"entities"
.LASF21:
	.string	"visleafs"
.LASF37:
	.string	"effects"
.LASF247:
	.string	"texels"
.LASF76:
	.string	"model"
.LASF54:
	.string	"leaf"
.LASF263:
	.string	"asVoid"
.LASF318:
	.string	"lightPos"
.LASF216:
	.string	"mleaf_t"
.LASF8:
	.string	"char"
.LASF198:
	.string	"styles"
.LASF25:
	.string	"planenum"
.LASF321:
	.string	"poly"
.LASF42:
	.string	"pflags"
.LASF200:
	.string	"cached_dlight"
.LASF90:
	.string	"aliasframeinstant"
.LASF31:
	.string	"vec3_t"
.LASF283:
	.string	"cubescale"
.LASF268:
	.string	"visible"
.LASF43:
	.string	"entity_state_t"
.LASF17:
	.string	"mins"
.LASF60:
	.string	"visframe"
.LASF324:
	.string	"bright"
.LASF65:
	.string	"firstmarksurface"
.LASF204:
	.string	"medge_t"
.LASF68:
	.string	"ambient_sound_level"
.LASF239:
	.string	"poseverts"
.LASF28:
	.string	"data"
.LASF228:
	.string	"ident"
.LASF207:
	.string	"mtexinfo_t"
.LASF164:
	.string	"synctype_t"
.LASF130:
	.string	"numclipnodes"
.LASF248:
	.string	"frames"
.LASF124:
	.string	"numtexinfo"
.LASF57:
	.string	"entnext"
.LASF14:
	.string	"uint8_t"
.LASF78:
	.string	"syncbase"
.LASF137:
	.string	"lightdata"
.LASF108:
	.string	"clipbox"
.LASF298:
	.string	"extvertices"
.LASF340:
	.string	"causticschain"
.LASF84:
	.string	"topnode"
.LASF306:
	.string	"colorscales"
.LASF125:
	.string	"texinfo"
.LASF254:
	.string	"modtype_t"
.LASF308:
	.string	"neighbourVis"
.LASF35:
	.string	"colormap"
.LASF201:
	.string	"samples"
.LASF222:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF199:
	.string	"cached_light"
.LASF110:
	.string	"clipmaxs"
.LASF41:
	.string	"light_lev"
.LASF276:
	.string	"numVolumeVerts"
.LASF328:
	.string	"clmodel"
.LASF20:
	.string	"headnode"
.LASF27:
	.string	"dclipnode_t"
.LASF203:
	.string	"cachededgeoffset"
.LASF332:
	.string	"r_worldentity"
.LASF250:
	.string	"mod_brush"
.LASF326:
	.string	"R_DrawBrushBumped"
.LASF343:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_bumpgxext.c"
.LASF235:
	.string	"skinwidth"
.LASF230:
	.string	"scale"
.LASF92:
	.string	"numleafs"
.LASF302:
	.string	"triangleVis"
.LASF233:
	.string	"eyeposition"
.LASF48:
	.string	"archive"
.LASF238:
	.string	"size"
.LASF322:
	.string	"count"
.LASF266:
	.string	"baseColor"
.LASF317:
	.string	"command"
.LASF56:
	.string	"entity"
.LASF181:
	.string	"gl_lumitex"
.LASF177:
	.string	"texture_s"
.LASF202:
	.string	"texture_t"
.LASF347:
	.string	"GX_LoadGLModelView"
.LASF291:
	.string	"lastvorg"
.LASF179:
	.string	"height"
.LASF189:
	.string	"msurface_s"
.LASF323:
	.string	"countc"
.LASF135:
	.string	"textures"
.LASF227:
	.string	"maliasframedesc_t"
.LASF139:
	.string	"cache"
.LASF30:
	.string	"vec_t"
.LASF243:
	.string	"binormals"
.LASF241:
	.string	"commands"
.LASF196:
	.string	"shadowchain"
.LASF147:
	.string	"paliashdr"
.LASF184:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF80:
	.string	"lightTimestamp"
.LASF166:
	.string	"trivertx_t"
.LASF79:
	.string	"skinnum"
.LASF330:
	.string	"cl_numlightvisedicts"
.LASF120:
	.string	"numedges"
.LASF242:
	.string	"triangles"
.LASF280:
	.string	"scizz"
.LASF218:
	.string	"lastclipnode"
.LASF273:
	.string	"visSurf"
.LASF62:
	.string	"parent"
.LASF269:
	.string	"isStatic"
.LASF2:
	.string	"short int"
.LASF154:
	.string	"shadowonly"
.LASF151:
	.string	"lastent"
.LASF335:
	.string	"d_lightstylevalue"
.LASF258:
	.string	"coords"
.LASF12:
	.string	"long int"
.LASF55:
	.string	"leafnext"
.LASF337:
	.string	"r_drawentities"
.LASF193:
	.string	"light_s"
.LASF194:
	.string	"light_t"
.LASF188:
	.string	"offsets"
.LASF226:
	.string	"bboxmax"
.LASF312:
	.string	"WGPipe"
.LASF303:
	.string	"aliaslightinstant_t"
.LASF305:
	.string	"atencoords"
.LASF310:
	.string	"lightcmd_u"
.LASF290:
	.string	"lasteangles"
.LASF210:
	.string	"numverts"
.LASF257:
	.string	"screenrect_s"
.LASF259:
	.string	"screenrect_t"
.LASF329:
	.string	"R_DrawLightEntities"
.LASF159:
	.string	"triplanes"
.LASF86:
	.string	"frame_interval"
.LASF134:
	.string	"numtextures"
.LASF261:
	.string	"asFloat"
.LASF187:
	.string	"alternate_anims"
.LASF122:
	.string	"numnodes"
.LASF155:
	.string	"vertices"
.LASF46:
	.string	"name"
.LASF237:
	.string	"numtris"
.LASF292:
	.string	"lastlradius"
.LASF4:
	.string	"unsigned int"
.LASF102:
	.string	"needload"
.LASF119:
	.string	"vertexes"
.LASF288:
	.string	"lasteorg"
.LASF191:
	.string	"texturemins"
.LASF44:
	.string	"cache_user_s"
.LASF132:
	.string	"marksurfaces"
.LASF29:
	.string	"cache_user_t"
.LASF7:
	.string	"long unsigned int"
.LASF245:
	.string	"indecies"
.LASF73:
	.string	"msgtime"
.LASF278:
	.string	"numVisSurf"
.LASF319:
	.string	"surf"
.LASF282:
	.string	"rspeed"
.LASF316:
	.string	"GX_TexCoord2f32"
.LASF61:
	.string	"minmaxs"
.LASF156:
	.string	"normals"
.LASF208:
	.string	"glpoly_s"
.LASF213:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF289:
	.string	"lastlorg"
.LASF342:
	.string	"GNU C 4.6.3"
.LASF346:
	.string	"R_DrawWorldBumped"
.LASF97:
	.string	"rotate_start_time"
.LASF113:
	.string	"numsubmodels"
.LASF146:
	.string	"updateframe"
.LASF103:
	.string	"type"
.LASF83:
	.string	"trivial_accept"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"cvar_s"
.LASF52:
	.string	"cvar_t"
.LASF236:
	.string	"skinheight"
.LASF221:
	.string	"hull_t"
.LASF91:
	.string	"brushlightinstant"
.LASF195:
	.string	"polys"
.LASF148:
	.string	"lastpose1"
.LASF149:
	.string	"lastpose2"
.LASF219:
	.string	"clip_mins"
.LASF327:
	.string	"R_DrawBrushObjectLightGX"
.LASF211:
	.string	"neighbours"
.LASF277:
	.string	"lightCmds"
.LASF117:
	.string	"leafs"
.LASF104:
	.string	"numframes"
.LASF129:
	.string	"surfedges"
.LASF40:
	.string	"style"
.LASF66:
	.string	"nummarksurfaces"
.LASF325:
	.string	"attnVertices"
.LASF136:
	.string	"visdata"
.LASF265:
	.string	"shadowlight_s"
.LASF286:
	.string	"shadowlight_t"
.LASF214:
	.string	"msurface_t"
.LASF313:
	.string	"_gx_color"
.LASF153:
	.string	"lastpaliashdr"
.LASF75:
	.string	"msg_angles"
.LASF34:
	.string	"frame"
.LASF173:
	.string	"normal"
.LASF81:
	.string	"dlightframe"
.LASF251:
	.string	"mod_sprite"
.LASF246:
	.string	"gl_lumatex"
.LASF231:
	.string	"scale_origin"
.LASF127:
	.string	"surfaces"
.LASF18:
	.string	"maxs"
.LASF274:
	.string	"volumeCmds"
.LASF3:
	.string	"short unsigned int"
.LASF209:
	.string	"chain"
.LASF299:
	.string	"tslights"
.LASF341:
	.string	"wgPipe"
.LASF32:
	.string	"angles"
.LASF212:
	.string	"firstvertex"
.LASF162:
	.string	"ST_SYNC"
.LASF174:
	.string	"dist"
.LASF296:
	.string	"vieworg"
.LASF240:
	.string	"posedata"
.LASF26:
	.string	"children"
.LASF9:
	.string	"double"
.LASF111:
	.string	"firstmodelsurface"
.LASF281:
	.string	"filtercube"
.LASF338:
	.string	"currentshadowlight"
.LASF260:
	.string	"asInt"
.LASF285:
	.string	"oldlightorigin"
.LASF253:
	.string	"mod_alias3"
.LASF157:
	.string	"tangents"
.LASF172:
	.string	"mplane_s"
.LASF176:
	.string	"mplane_t"
.LASF82:
	.string	"dlightbits"
.LASF109:
	.string	"clipmins"
.LASF50:
	.string	"value"
.LASF74:
	.string	"msg_origins"
.LASF270:
	.string	"castShadow"
.LASF170:
	.string	"lightmap"
.LASF167:
	.string	"position"
.LASF223:
	.string	"numposes"
.LASF143:
	.string	"aliasframeinstant_s"
.LASF15:
	.string	"qboolean"
.LASF190:
	.string	"firstedge"
.LASF272:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
