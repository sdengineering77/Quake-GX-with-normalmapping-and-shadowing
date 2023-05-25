	.file	"normal.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	LongAxis, @function
LongAxis:
.LFB1:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/normal.c"
	.loc 1 68 0
	.cfi_startproc
.LVL0:
	.loc 1 71 0
	lis 9,.LC0@ha
	lfd 12,8(3)
	lfd 0,.LC0@l(9)
	.loc 1 68 0
	mr 11,3
	.loc 1 71 0
	fcmpu 7,12,0
	bnl- 7,.L2
	.loc 1 71 0 is_stmt 0 discriminator 1
	fneg 12,12
.L2:
	.loc 1 71 0 discriminator 3
	lfd 0,0(11)
	lfd 13,.LC0@l(9)
	fcmpu 7,0,13
	bnl- 7,.L4
	.loc 1 71 0 discriminator 1
	fneg 0,0
.L4:
	.loc 1 72 0 is_stmt 1 discriminator 3
	lfd 13,16(11)
	.loc 1 69 0 discriminator 3
	fcmpu 6,12,0
	.loc 1 72 0 discriminator 3
	lfd 11,.LC0@l(9)
	.loc 1 69 0 discriminator 3
	mfcr 3
	rlwinm 3,3,26,1
.LVL1:
	.loc 1 72 0 discriminator 3
	fcmpu 7,13,11
	bnl- 7,.L6
	.loc 1 72 0 is_stmt 0 discriminator 1
	fneg 13,13
.L6:
	.loc 1 72 0 discriminator 3
	slwi 0,3,3
	lfd 12,.LC0@l(9)
	lfdx 0,11,0
	fcmpu 7,0,12
	bnl- 7,.L8
	.loc 1 72 0 discriminator 1
	fneg 0,0
.L8:
	.loc 1 72 0 discriminator 3
	fcmpu 7,13,0
	bnglr- 7
	.loc 1 72 0
	li 3,2
.LVL2:
	.loc 1 74 0 is_stmt 1
	blr
	.cfi_endproc
.LFE1:
	.size	LongAxis, .-LongAxis
	.align 2
	.globl __gl_projectPolygon
	.type	__gl_projectPolygon, @function
__gl_projectPolygon:
.LFB4:
	.loc 1 199 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-184(1)
.LCFI0:
	.cfi_def_cfa_offset 184
	.cfi_register 65, 0
	mfcr 12
	stw 28,152(1)
	.loc 1 208 0
	lis 28,.LC0@ha
	.cfi_offset 28, -32
	.cfi_register 70, 12
	.loc 1 199 0
	stw 0,188(1)
	.loc 1 208 0
	lfd 13,.LC0@l(28)
	.loc 1 205 0
	lfd 0,16(3)
	.loc 1 206 0
	lfd 12,24(3)
	.loc 1 208 0
	fcmpu 7,0,13
	.loc 1 207 0
	lfd 11,32(3)
	.loc 1 199 0
	stw 29,156(1)
	stw 30,160(1)
	mr 30,3
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 65, 4
	stfd 30,168(1)
	stfd 31,176(1)
	stw 25,140(1)
	stw 26,144(1)
	stw 27,148(1)
	stw 31,164(1)
	stw 12,136(1)
	.loc 1 200 0
	lwz 29,8(3)
.LVL4:
	.loc 1 205 0
	stfd 0,104(1)
	.loc 1 206 0
	stfd 12,112(1)
	.loc 1 207 0
	stfd 11,120(1)
	.loc 1 208 0
	bne- 7,.L71
	.cfi_offset 70, -48
	.cfi_offset 31, -20
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 208 0 is_stmt 0 discriminator 1
	fcmpu 7,12,13
	beq- 7,.L20
.L71:
	.loc 1 208 0
	lwz 31,0(29)
	.loc 1 203 0 is_stmt 1
	li 25,0
	addi 27,1,8
	lis 26,.LC6@ha
	cmpw 4,29,31
.LVL5:
.L19:
	.loc 1 214 0
	addi 3,1,104
	bl LongAxis
.LVL6:
	.loc 1 241 0
	lis 8,0x5555
	addi 10,3,1
	.loc 1 242 0
	addi 0,3,2
	.loc 1 241 0
	ori 8,8,21846
	.loc 1 245 0
	slwi 7,3,3
	.loc 1 241 0
	mulhw 6,10,8
	srawi 11,10,31
	.loc 1 242 0
	srawi 9,0,31
	.loc 1 240 0
	lfd 0,.LC0@l(28)
	.loc 1 245 0
	add 27,27,7
	.loc 1 241 0
	lfs 13,.LC6@l(26)
	.loc 1 245 0
	lfd 12,96(27)
	.loc 1 240 0
	addi 7,3,4
	.loc 1 242 0
	mulhw 8,0,8
	.loc 1 241 0
	subf 11,11,6
	.loc 1 245 0
	fcmpu 7,12,0
	.loc 1 240 0
	slwi 7,7,3
	.loc 1 241 0
	fmr 12,13
	.loc 1 244 0
	addi 3,3,8
.LVL7:
	.loc 1 240 0
	add 7,30,7
	.loc 1 242 0
	subf 9,9,8
	.loc 1 241 0
	mulli 11,11,3
	.loc 1 242 0
	mulli 9,9,3
	.loc 1 244 0
	slwi 3,3,3
	.loc 1 241 0
	subf 11,11,10
	.loc 1 240 0
	stfd 0,8(7)
	.loc 1 242 0
	subf 9,9,0
	.loc 1 241 0
	addi 8,11,4
	.loc 1 242 0
	addi 10,9,4
.LVL8:
	.loc 1 241 0
	slwi 8,8,3
	.loc 1 242 0
	slwi 10,10,3
	.loc 1 241 0
	add 8,30,8
	.loc 1 242 0
	add 10,30,10
	.loc 1 241 0
	stfd 12,8(8)
	.loc 1 244 0
	stfdx 0,30,3
	.loc 1 242 0
	stfd 0,8(10)
	.loc 1 245 0
	bng- 7,.L70
	lis 10,.LC4@ha
	lfs 0,.LC4@l(10)
.L39:
	.loc 1 245 0 is_stmt 0 discriminator 3
	addi 11,11,8
	.loc 1 246 0 is_stmt 1 discriminator 3
	addi 9,9,8
	.loc 1 245 0 discriminator 3
	slwi 11,11,3
	.loc 1 246 0 discriminator 3
	slwi 9,9,3
	.loc 1 245 0 discriminator 3
	stfdx 0,30,11
	.loc 1 246 0 discriminator 3
	stfdx 13,30,9
.LVL9:
	.loc 1 250 0 discriminator 3
	beq- 4,.L41
.L61:
	.loc 1 251 0 discriminator 2
	lfd 12,24(31)
	lfd 11,48(30)
	lfd 13,16(31)
	fmul 11,12,11
	lfd 9,40(30)
	lfd 10,56(30)
	lfd 0,32(31)
	fmadd 11,13,9,11
	fmadd 11,0,10,11
	stfd 11,40(31)
	.loc 1 252 0 discriminator 2
	lfd 11,72(30)
	lfd 10,64(30)
	fmul 12,12,11
	lfd 11,80(30)
	fmadd 13,13,10,12
	fmadd 0,0,11,13
	stfd 0,48(31)
	.loc 1 250 0 discriminator 2
	lwz 31,0(31)
.LVL10:
	cmpw 7,29,31
	bne+ 7,.L61
.L41:
	.loc 1 254 0
	cmpwi 7,25,0
	bne- 7,.L72
.LVL11:
.L17:
	.loc 1 257 0
	lwz 0,188(1)
	lwz 12,136(1)
	mtlr 0
	lwz 25,140(1)
.LVL12:
	lwz 26,144(1)
	mtcrf 8,12
	lwz 27,148(1)
	lwz 28,152(1)
	lwz 29,156(1)
.LVL13:
	lwz 30,160(1)
.LVL14:
	lwz 31,164(1)
.LVL15:
	lfd 30,168(1)
	lfd 31,176(1)
	addi 1,1,184
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL16:
.L70:
.LCFI2:
	.cfi_restore_state
	.loc 1 246 0
	lis 10,.LC8@ha
	lfs 13,.LC8@l(10)
	b .L39
.LVL17:
.L20:
	.loc 1 208 0 discriminator 1
	fcmpu 7,11,13
.LBB6:
.LBB7:
	.loc 1 88 0 discriminator 1
	lwz 31,0(29)
.LBE7:
.LBE6:
	.loc 1 208 0 discriminator 1
	beq- 7,.L21
	.loc 1 203 0
	li 25,0
	cmpw 4,29,31
	addi 27,1,8
	lis 26,.LC6@ha
	b .L19
.LVL18:
.L72:
.LBB9:
.LBB10:
	.loc 1 152 0
	lwz 7,64(29)
	.loc 1 144 0
	addi 6,29,64
.LVL19:
	.loc 1 152 0
	cmpw 7,6,7
	beq- 7,.L17
	lfd 0,.LC0@l(28)
.LVL20:
.L46:
	.loc 1 153 0
	lwz 8,8(7)
.LVL21:
	.loc 1 154 0
	lwz 0,28(8)
	cmpwi 7,0,0
	ble- 7,.L44
	mr 9,8
.LVL22:
.L45:
	.loc 1 156 0
	lwz 11,4(9)
	lwz 10,16(9)
	lwz 11,16(11)
	.loc 1 157 0
	lwz 9,12(9)
.LVL23:
	.loc 1 156 0
	lfd 10,40(10)
	lfd 12,40(11)
	.loc 1 158 0
	cmpw 7,8,9
	.loc 1 156 0
	lfd 11,48(10)
	lfd 13,48(11)
	fsub 12,10,12
	fadd 13,11,13
	fmadd 0,12,13,0
.LVL24:
	.loc 1 158 0
	bne+ 7,.L45
.LVL25:
.L44:
	.loc 1 152 0
	lwz 7,0(7)
.LVL26:
	cmpw 7,6,7
	bne+ 7,.L46
	.loc 1 160 0
	lfd 13,.LC0@l(28)
	fcmpu 7,0,13
	bnl- 7,.L17
	.loc 1 162 0
	lwz 9,0(29)
.LVL27:
	cmpw 7,29,9
	beq- 7,.L48
.LVL28:
.L60:
	.loc 1 163 0
	lfd 0,48(9)
	fneg 0,0
	stfd 0,48(9)
	.loc 1 162 0
	lwz 9,0(9)
.LVL29:
	cmpw 7,29,9
	bne+ 7,.L60
.L48:
.LBE10:
.LBE9:
	.loc 1 257 0
	lwz 0,188(1)
.LBB16:
.LBB11:
	.loc 1 165 0
	lfd 12,64(30)
	.loc 1 166 0
	lfd 13,72(30)
.LBE11:
.LBE16:
	.loc 1 257 0
	mtlr 0
.LBB17:
.LBB12:
	.loc 1 167 0
	lfd 0,80(30)
	.loc 1 165 0
	fneg 12,12
	.loc 1 166 0
	fneg 13,13
.LBE12:
.LBE17:
	.loc 1 257 0
	lwz 12,136(1)
.LBB18:
.LBB13:
	.loc 1 167 0
	fneg 0,0
.LBE13:
.LBE18:
	.loc 1 257 0
	lwz 25,140(1)
.LVL30:
.LBB19:
.LBB14:
	.loc 1 165 0
	stfd 12,64(30)
.LBE14:
.LBE19:
	.loc 1 257 0
	mtcrf 8,12
.LBB20:
.LBB15:
	.loc 1 166 0
	stfd 13,72(30)
	.loc 1 167 0
	stfd 0,80(30)
.LBE15:
.LBE20:
	.loc 1 257 0
	lwz 26,144(1)
	lwz 27,148(1)
	lwz 28,152(1)
	lwz 29,156(1)
.LVL31:
	lwz 30,160(1)
.LVL32:
	lwz 31,164(1)
.LVL33:
	lfd 30,168(1)
	lfd 31,176(1)
	addi 1,1,184
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
	.cfi_restore 70
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.LVL34:
.L21:
.LCFI4:
	.cfi_restore_state
.LBB21:
.LBB8:
	.loc 1 85 0
	lis 9,.LC1@ha
	.loc 1 88 0
	cmpw 4,29,31
	.loc 1 85 0
	lfd 12,.LC1@l(9)
	.loc 1 86 0
	lis 9,.LC2@ha
	lfd 13,.LC2@l(9)
	addi 27,1,8
	.loc 1 85 0
	stfd 12,96(1)
	stfd 12,88(1)
	stfd 12,80(1)
	.loc 1 86 0
	stfd 13,72(1)
	stfd 13,64(1)
	stfd 13,56(1)
	.loc 1 88 0
	beq- 4,.L22
	mr 10,31
	addi 27,1,8
.LVL35:
.L23:
	li 11,0
	li 9,0
.LVL36:
.L50:
	.loc 1 198 0
	add 8,10,9
	.loc 1 89 0
	cmpwi 7,9,16
	.loc 1 90 0
	lfd 0,16(8)
.LVL37:
	.loc 1 91 0
	fcmpu 1,0,13
	.loc 1 92 0
	fcmpu 6,0,12
	.loc 1 91 0
	bnl- 1,.L24
	addi 8,1,56
.LVL38:
	stwx 10,27,11
	stfdx 0,9,8
.L24:
	.loc 1 92 0
	bng- 6,.L26
	addi 8,1,80
	stfdx 0,9,8
	addi 8,1,20
	stwx 10,11,8
.L26:
	.loc 1 89 0
	addi 9,9,8
	.loc 1 92 0
	addi 11,11,4
	.loc 1 89 0
	beq- 7,.L73
	.loc 1 88 0
	addi 8,1,56
	lfdx 13,9,8
	addi 8,1,80
	lfdx 12,9,8
	b .L50
.L73:
	lwz 10,0(10)
.LVL39:
	cmpw 7,29,10
	beq- 7,.L29
	lfd 13,56(1)
	lfd 12,80(1)
	b .L23
.L29:
	lfd 0,64(1)
.LVL40:
	lfd 13,88(1)
	lfd 12,80(1)
	fsub 13,13,0
	lfd 0,56(1)
	lfd 11,96(1)
	fsub 0,12,0
	lfd 12,72(1)
	.loc 1 101 0
	fsub 9,11,12
	.loc 1 88 0
	fcmpu 7,13,0
	mfcr 0
	rlwinm 0,0,30,1
	slwi 9,0,3
	add 9,27,9
	lfd 0,72(9)
	lfd 13,48(9)
.LVL41:
	.loc 1 101 0
	fsub 10,0,13
	fcmpu 7,9,10
	bng- 7,.L30
.LVL42:
	fmr 0,11
	li 0,2
	fmr 13,12
.LVL43:
.L30:
	.loc 1 102 0
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L22
.LVL44:
	.loc 1 112 0
	slwi 0,0,2
.LVL45:
	add 11,27,0
	lwzx 9,27,0
.LVL46:
	.loc 1 113 0
	lwz 11,12(11)
.LVL47:
	.loc 1 114 0
	lfd 10,16(9)
	lfd 4,16(11)
	.loc 1 115 0
	lfd 3,24(11)
	lfd 9,24(9)
	.loc 1 114 0
	fsub 10,10,4
	.loc 1 116 0
	lfd 2,32(11)
	lfd 8,32(9)
	.loc 1 115 0
	fsub 9,9,3
	.loc 1 114 0
	stfd 10,32(1)
	.loc 1 116 0
	fsub 8,8,2
	.loc 1 115 0
	stfd 9,40(1)
	.loc 1 116 0
	stfd 8,48(1)
.LVL48:
	.loc 1 117 0
	beq- 4,.L34
	lfd 30,104(1)
	mr 9,31
.LVL49:
	lfd 31,112(1)
	lfd 1,120(1)
	.loc 1 111 0
	lfd 5,.LC0@l(28)
.LVL50:
.L37:
	.loc 1 120 0
	lfd 0,32(9)
	.loc 1 118 0
	lfd 13,16(9)
	.loc 1 120 0
	fsub 0,0,2
	.loc 1 119 0
	lfd 12,24(9)
	.loc 1 118 0
	fsub 13,13,4
.LVL51:
	.loc 1 119 0
	fsub 12,12,3
.LVL52:
	.loc 1 122 0
	fmul 11,10,0
	.loc 1 123 0
	fmul 7,9,13
	.loc 1 121 0
	fmul 6,8,12
	.loc 1 122 0
	fmsub 13,8,13,11
.LVL53:
	.loc 1 123 0
	fmsub 12,10,12,7
.LVL54:
	.loc 1 121 0
	fmsub 0,9,0,6
.LVL55:
	.loc 1 124 0
	fmul 11,13,13
	fmadd 11,0,0,11
	fmadd 11,12,12,11
.LVL56:
	.loc 1 125 0
	fcmpu 7,11,5
	bng- 7,.L35
.LVL57:
	.loc 1 129 0
	fmr 1,12
	.loc 1 128 0
	fmr 31,13
	.loc 1 127 0
	fmr 30,0
	.loc 1 126 0
	fmr 5,11
.LVL58:
.L35:
	.loc 1 117 0
	lwz 9,0(9)
.LVL59:
	cmpw 7,29,9
	bne+ 7,.L37
	.loc 1 133 0
	lfd 0,.LC0@l(28)
.LVL60:
	.loc 1 117 0
	stfd 30,104(1)
	.loc 1 133 0
	fcmpu 7,5,0
	.loc 1 117 0
	stfd 31,112(1)
	stfd 1,120(1)
	.loc 1 133 0
	cror 30,28,30
	bne- 7,.L69
.LVL61:
.L34:
	.loc 1 135 0
	lfd 0,.LC0@l(28)
	.loc 1 136 0
	addi 3,1,32
.LVL62:
	lis 26,.LC6@ha
	.loc 1 210 0
	li 25,1
	.loc 1 135 0
	stfd 0,120(1)
	stfd 0,112(1)
	stfd 0,104(1)
	.loc 1 136 0
	bl LongAxis
.LVL63:
	slwi 9,3,3
	lfs 0,.LC6@l(26)
	add 9,27,9
	stfd 0,96(9)
	b .L19
.L22:
	.loc 1 104 0
	lis 26,.LC6@ha
	lfd 0,.LC0@l(28)
	lfs 13,.LC6@l(26)
	.loc 1 210 0
	li 25,1
	.loc 1 104 0
	stfd 0,104(1)
	stfd 0,112(1)
	stfd 13,120(1)
	b .L19
.LVL64:
.L69:
	.loc 1 210 0
	li 25,1
	lis 26,.LC6@ha
	b .L19
.LBE8:
.LBE21:
	.cfi_endproc
.LFE4:
	.size	__gl_projectPolygon, .-__gl_projectPolygon
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC4:
	.4byte	-2147483648
.LC6:
	.4byte	1065353216
.LC8:
	.4byte	-1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC1:
	.4byte	-551318219
	.4byte	777033391
.LC2:
	.4byte	1596165429
	.4byte	777033391
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glu.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tess.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/mesh.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/setjmp.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/dict.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb9f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x1
	.4byte	.LASF114
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x93
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x94
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x9e
	.4byte	0x6c
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0xa0
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x10f
	.4byte	0xbb
	.uleb128 0x8
	.4byte	.LASF15
	.2byte	0xe40
	.byte	0x4
	.byte	0x42
	.4byte	0x2a6
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x46
	.4byte	0x74c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x48
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x49
	.4byte	0x79f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4c
	.4byte	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x50
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x51
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x52
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x56
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x57
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x58
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5a
	.4byte	0x7b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.string	"pq"
	.byte	0x4
	.byte	0x5b
	.4byte	0x7bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5c
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5e
	.4byte	0x7e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x63
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x64
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x79
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x65
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x68
	.4byte	0x7b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x69
	.4byte	0x7f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x6a
	.4byte	0x808
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x6b
	.4byte	0x810
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x6c
	.4byte	0x822
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x71
	.4byte	0x33
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x72
	.4byte	0x53
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x73
	.4byte	0x828
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0x76
	.4byte	0x849
	.byte	0x3
	.byte	0x23
	.uleb128 0xd20
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0x77
	.4byte	0x860
	.byte	0x3
	.byte	0x23
	.uleb128 0xd24
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0x79
	.4byte	0x877
	.byte	0x3
	.byte	0x23
	.uleb128 0xd28
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0x7a
	.4byte	0x808
	.byte	0x3
	.byte	0x23
	.uleb128 0xd2c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7b
	.4byte	0x849
	.byte	0x3
	.byte	0x23
	.uleb128 0xd30
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7c
	.4byte	0x89d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd34
	.uleb128 0xa
	.string	"env"
	.byte	0x4
	.byte	0x80
	.4byte	0x4b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd38
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0x82
	.4byte	0x8b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe38
	.byte	0
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x5
	.byte	0x2f
	.4byte	0x2b1
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x98
	.byte	0x5
	.byte	0xaa
	.4byte	0x2f6
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x5
	.byte	0xab
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x5
	.byte	0xac
	.4byte	0x37a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x5
	.byte	0xad
	.4byte	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x5
	.byte	0xae
	.4byte	0x3f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x5
	.byte	0x31
	.4byte	0x301
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x40
	.byte	0x5
	.byte	0x79
	.4byte	0x37a
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.byte	0x7a
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x5
	.byte	0x7b
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x5
	.byte	0x7c
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x5
	.byte	0x7d
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x5
	.byte	0x80
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"s"
	.byte	0x5
	.byte	0x81
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"t"
	.byte	0x5
	.byte	0x81
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x5
	.byte	0x82
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x5
	.byte	0x32
	.4byte	0x385
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x18
	.byte	0x5
	.byte	0x85
	.4byte	0x3f4
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.byte	0x86
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x5
	.byte	0x87
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x5
	.byte	0x88
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x5
	.byte	0x89
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x5
	.byte	0x8c
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x5
	.byte	0x8d
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x5
	.byte	0x8e
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x5
	.byte	0x33
	.4byte	0x3ff
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x20
	.byte	0x5
	.byte	0x91
	.4byte	0x47c
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x5
	.byte	0x92
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"Sym"
	.byte	0x5
	.byte	0x93
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x5
	.byte	0x94
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x5
	.byte	0x95
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"Org"
	.byte	0x5
	.byte	0x96
	.4byte	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x5
	.byte	0x97
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x5
	.byte	0x9a
	.4byte	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x5
	.byte	0x9b
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x5
	.byte	0x35
	.4byte	0x487
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2f6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3f4
	.uleb128 0xd
	.4byte	0x73
	.4byte	0x4a9
	.uleb128 0xe
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x37a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x47c
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x118
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x7e
	.4byte	0x4d1
	.uleb128 0xe
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0x7
	.byte	0x43
	.4byte	0x8b
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x7
	.byte	0x44
	.4byte	0x4e7
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x14
	.byte	0x7
	.byte	0x65
	.4byte	0x51e
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x7
	.byte	0x66
	.4byte	0x51e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.byte	0x67
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"leq"
	.byte	0x7
	.byte	0x68
	.4byte	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0x7
	.byte	0x45
	.4byte	0x529
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xc
	.byte	0x7
	.byte	0x5f
	.4byte	0x560
	.uleb128 0xa
	.string	"key"
	.byte	0x7
	.byte	0x60
	.4byte	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0x61
	.4byte	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0x62
	.4byte	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x51e
	.uleb128 0xf
	.byte	0x1
	.4byte	0x53
	.4byte	0x580
	.uleb128 0x10
	.4byte	0x8b
	.uleb128 0x10
	.4byte	0x4d1
	.uleb128 0x10
	.4byte	0x4d1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x566
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x8
	.byte	0x60
	.4byte	0x8b
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x8
	.byte	0x61
	.4byte	0x8d
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x8
	.byte	0x62
	.4byte	0x5a7
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x1c
	.byte	0x8
	.byte	0x67
	.4byte	0x616
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x68
	.4byte	0x668
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x8
	.byte	0x69
	.4byte	0x66e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.byte	0x6a
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"max"
	.byte	0x8
	.byte	0x6a
	.4byte	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.byte	0x6b
	.4byte	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.byte	0x6c
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"leq"
	.byte	0x8
	.byte	0x6d
	.4byte	0x689
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.byte	0x64
	.4byte	0x62d
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0x64
	.4byte	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x8
	.byte	0x64
	.4byte	0x616
	.uleb128 0x11
	.byte	0x8
	.byte	0x8
	.byte	0x65
	.4byte	0x65d
	.uleb128 0xa
	.string	"key"
	.byte	0x8
	.byte	0x65
	.4byte	0x586
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x8
	.byte	0x65
	.4byte	0x591
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x8
	.byte	0x65
	.4byte	0x638
	.uleb128 0x5
	.byte	0x4
	.4byte	0x62d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x65d
	.uleb128 0xf
	.byte	0x1
	.4byte	0x53
	.4byte	0x689
	.uleb128 0x10
	.4byte	0x586
	.uleb128 0x10
	.4byte	0x586
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x674
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x9
	.byte	0x64
	.4byte	0x586
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x9
	.byte	0x65
	.4byte	0x591
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x9
	.byte	0x66
	.4byte	0x6b0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x1c
	.byte	0x9
	.byte	0x68
	.4byte	0x71f
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x9
	.byte	0x69
	.4byte	0x71f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x9
	.byte	0x6a
	.4byte	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x9
	.byte	0x6b
	.4byte	0x72b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x9
	.byte	0x6c
	.4byte	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"max"
	.byte	0x9
	.byte	0x6c
	.4byte	0x69a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x9
	.byte	0x6d
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"leq"
	.byte	0x9
	.byte	0x6e
	.4byte	0x746
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x59c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x68f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x725
	.uleb128 0xf
	.byte	0x1
	.4byte	0x53
	.4byte	0x746
	.uleb128 0x10
	.4byte	0x68f
	.uleb128 0x10
	.4byte	0x68f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x731
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.4byte	0x76b
	.uleb128 0x13
	.4byte	.LASF94
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF95
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF96
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x20
	.byte	0x4
	.byte	0x3d
	.4byte	0x794
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.byte	0x3e
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.byte	0x3f
	.4byte	0x8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x4
	.byte	0x40
	.4byte	0x76b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a6
	.uleb128 0x14
	.byte	0x1
	.4byte	0x7b1
	.uleb128 0x10
	.4byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4dc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a5
	.uleb128 0x14
	.byte	0x1
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0x85
	.uleb128 0x10
	.4byte	0x7de
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7c3
	.uleb128 0x14
	.byte	0x1
	.4byte	0x7f6
	.uleb128 0x10
	.4byte	0x33
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0x14
	.byte	0x1
	.4byte	0x808
	.uleb128 0x10
	.4byte	0x8b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x80e
	.uleb128 0x14
	.byte	0x1
	.4byte	0x822
	.uleb128 0x10
	.4byte	0x79f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x816
	.uleb128 0xd
	.4byte	0x794
	.4byte	0x838
	.uleb128 0xe
	.4byte	0x2c
	.byte	0x63
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	0x849
	.uleb128 0x10
	.4byte	0x21
	.uleb128 0x10
	.4byte	0x8b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x838
	.uleb128 0x14
	.byte	0x1
	.4byte	0x860
	.uleb128 0x10
	.4byte	0x33
	.uleb128 0x10
	.4byte	0x8b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x84f
	.uleb128 0x14
	.byte	0x1
	.4byte	0x877
	.uleb128 0x10
	.4byte	0x8b
	.uleb128 0x10
	.4byte	0x8b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x866
	.uleb128 0x14
	.byte	0x1
	.4byte	0x89d
	.uleb128 0x10
	.4byte	0xa9
	.uleb128 0x10
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0x85
	.uleb128 0x10
	.4byte	0x7de
	.uleb128 0x10
	.4byte	0x8b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF98
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF99
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.4byte	0x970
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x1
	.byte	0x4c
	.4byte	0x970
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x4c
	.4byte	0xa9
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.byte	0x4e
	.4byte	0x48d
	.uleb128 0x18
	.string	"v1"
	.byte	0x1
	.byte	0x4e
	.4byte	0x48d
	.uleb128 0x18
	.string	"v2"
	.byte	0x1
	.byte	0x4e
	.4byte	0x48d
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x4f
	.4byte	0x73
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.byte	0x4f
	.4byte	0x73
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4f
	.4byte	0x73
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x1
	.byte	0x50
	.4byte	0x499
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.byte	0x50
	.4byte	0x499
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.byte	0x50
	.4byte	0x499
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.byte	0x50
	.4byte	0x499
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0x1
	.byte	0x50
	.4byte	0x499
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0x1
	.byte	0x51
	.4byte	0x976
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.byte	0x51
	.4byte	0x976
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.byte	0x52
	.4byte	0x48d
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x53
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaf
	.uleb128 0xd
	.4byte	0x48d
	.4byte	0x986
	.uleb128 0xe
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	0x53
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x9bc
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.byte	0x43
	.4byte	0xa9
	.4byte	.LLST0
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x53
	.4byte	.LLST1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.byte	0x1
	.4byte	0xa11
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x1
	.byte	0x8d
	.4byte	0x970
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x1
	.byte	0x8f
	.4byte	0x73
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.byte	0x90
	.4byte	0x4a9
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.byte	0x90
	.4byte	0x4a9
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.byte	0x91
	.4byte	0x48d
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.byte	0x91
	.4byte	0x48d
	.uleb128 0x18
	.string	"e"
	.byte	0x1
	.byte	0x92
	.4byte	0x493
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc6
	.4byte	0x970
	.4byte	.LLST3
	.uleb128 0x1c
	.string	"v"
	.byte	0x1
	.byte	0xc8
	.4byte	0x48d
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc8
	.4byte	0x48d
	.4byte	.LLST5
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.byte	0xc9
	.4byte	0x73
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x1
	.byte	0xc9
	.4byte	0x499
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LASF21
	.byte	0x1
	.byte	0xca
	.4byte	0xa9
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF22
	.byte	0x1
	.byte	0xca
	.4byte	0xa9
	.4byte	.LLST7
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.4byte	0x53
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0xcb
	.4byte	0x53
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	0x8b1
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd1
	.4byte	0xb4c
	.uleb128 0x22
	.4byte	0x8c9
	.byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.4byte	0x8d4
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	0x8dd
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	0x8e7
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	0x8f1
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	0x8fa
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	0x905
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	0x910
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.4byte	0x91b
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.4byte	0x926
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.4byte	0x945
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x25
	.4byte	0x950
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.4byte	0x95b
	.byte	0x1
	.byte	0x6d
	.uleb128 0x24
	.4byte	0x966
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	0x930
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	0x93a
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x9bc
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xff
	.uleb128 0x27
	.4byte	0x9c9
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x24
	.4byte	0x9d4
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	0x9df
	.4byte	.LLST21
	.uleb128 0x24
	.4byte	0x9e8
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	0x9f3
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	0x9fc
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	0xa07
	.4byte	.LLST25
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 184
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 184
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 184
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 40
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 40
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x4
	.byte	0x8e
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x4
	.byte	0x8e
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x4
	.byte	0x8e
	.sleb128 64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x78
	.sleb128 16
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x10
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 64
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x4
	.byte	0x8d
	.sleb128 64
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
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
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"prev"
.LASF74:
	.string	"frame"
.LASF43:
	.string	"callEndData"
.LASF107:
	.string	"maxVert"
.LASF61:
	.string	"marked"
.LASF95:
	.string	"T_IN_POLYGON"
.LASF24:
	.string	"windingRule"
.LASF14:
	.string	"long long unsigned int"
.LASF42:
	.string	"callVertexData"
.LASF56:
	.string	"data"
.LASF93:
	.string	"order"
.LASF100:
	.string	"tess"
.LASF36:
	.string	"callMesh"
.LASF53:
	.string	"next"
.LASF72:
	.string	"DictList"
.LASF89:
	.string	"PQSortHandle"
.LASF65:
	.string	"Lnext"
.LASF4:
	.string	"signed char"
.LASF77:
	.string	"PQHeapHandle"
.LASF16:
	.string	"state"
.LASF11:
	.string	"long int"
.LASF55:
	.string	"anEdge"
.LASF78:
	.string	"PriorityQHeap"
.LASF76:
	.string	"PQHeapKey"
.LASF106:
	.string	"tNorm"
.LASF13:
	.string	"long long int"
.LASF117:
	.string	"__gl_projectPolygon"
.LASF7:
	.string	"GLfloat"
.LASF96:
	.string	"T_IN_CONTOUR"
.LASF37:
	.string	"emptyCache"
.LASF28:
	.string	"callCombine"
.LASF91:
	.string	"heap"
.LASF103:
	.string	"maxLen2"
.LASF83:
	.string	"initialized"
.LASF2:
	.string	"unsigned int"
.LASF49:
	.string	"fHead"
.LASF67:
	.string	"activeRegion"
.LASF110:
	.string	"CheckOrientation"
.LASF115:
	.string	"TessState"
.LASF98:
	.string	"long unsigned int"
.LASF40:
	.string	"callBeginData"
.LASF30:
	.string	"boundaryOnly"
.LASF27:
	.string	"event"
.LASF81:
	.string	"size"
.LASF6:
	.string	"short unsigned int"
.LASF63:
	.string	"GLUhalfEdge"
.LASF90:
	.string	"PriorityQSort"
.LASF5:
	.string	"short int"
.LASF108:
	.string	"minVert"
.LASF44:
	.string	"callErrorData"
.LASF94:
	.string	"T_DORMANT"
.LASF22:
	.string	"tUnit"
.LASF80:
	.string	"handles"
.LASF51:
	.string	"eHeadSym"
.LASF15:
	.string	"GLUtesselator"
.LASF85:
	.string	"PQnode"
.LASF1:
	.string	"GLboolean"
.LASF101:
	.string	"norm"
.LASF29:
	.string	"flagBoundary"
.LASF18:
	.string	"mesh"
.LASF88:
	.string	"PQSortKey"
.LASF20:
	.string	"normal"
.LASF71:
	.string	"DictListKey"
.LASF45:
	.string	"callCombineData"
.LASF92:
	.string	"keys"
.LASF47:
	.string	"GLUmesh"
.LASF8:
	.string	"float"
.LASF60:
	.string	"trail"
.LASF102:
	.string	"tLen2"
.LASF3:
	.string	"unsigned char"
.LASF19:
	.string	"callError"
.LASF86:
	.string	"node"
.LASF116:
	.string	"LongAxis"
.LASF111:
	.string	"area"
.LASF114:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/normal.c"
.LASF66:
	.string	"Lface"
.LASF48:
	.string	"vHead"
.LASF97:
	.string	"CachedVertex"
.LASF50:
	.string	"eHead"
.LASF17:
	.string	"lastEdge"
.LASF34:
	.string	"callVertex"
.LASF62:
	.string	"inside"
.LASF73:
	.string	"head"
.LASF26:
	.string	"dict"
.LASF64:
	.string	"Onext"
.LASF113:
	.string	"GNU C 4.6.3"
.LASF99:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF69:
	.string	"ActiveRegion"
.LASF0:
	.string	"GLenum"
.LASF9:
	.string	"GLdouble"
.LASF68:
	.string	"winding"
.LASF112:
	.string	"computedNormal"
.LASF109:
	.string	"ComputeNormal"
.LASF87:
	.string	"PQhandleElem"
.LASF79:
	.string	"nodes"
.LASF82:
	.string	"freeList"
.LASF31:
	.string	"lonelyTriList"
.LASF21:
	.string	"sUnit"
.LASF104:
	.string	"maxVal"
.LASF52:
	.string	"GLUvertex"
.LASF23:
	.string	"relTolerance"
.LASF57:
	.string	"coords"
.LASF38:
	.string	"cacheCount"
.LASF46:
	.string	"polygonData"
.LASF70:
	.string	"jmp_buf"
.LASF32:
	.string	"callBegin"
.LASF35:
	.string	"callEnd"
.LASF58:
	.string	"pqHandle"
.LASF41:
	.string	"callEdgeFlagData"
.LASF84:
	.string	"handle"
.LASF75:
	.string	"DictListNode"
.LASF59:
	.string	"GLUface"
.LASF105:
	.string	"minVal"
.LASF39:
	.string	"cache"
.LASF10:
	.string	"double"
.LASF33:
	.string	"callEdgeFlag"
.LASF25:
	.string	"fatalError"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
