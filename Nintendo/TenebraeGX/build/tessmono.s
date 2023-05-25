	.file	"tessmono.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __gl_meshTessellateMonoRegion
	.type	__gl_meshTessellateMonoRegion, @function
__gl_meshTessellateMonoRegion:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tessmono.c"
	.loc 1 80 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	stw 0,28(1)
	stw 29,12(1)
	.loc 1 88 0
	lwz 31,8(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL1:
	.loc 1 80 0
	stw 30,16(1)
	.loc 1 89 0
	lwz 9,12(31)
	cmpw 7,9,31
	beq- 7,.L2
	.cfi_offset 30, -8
.LVL2:
	.loc 1 89 0 is_stmt 0 discriminator 2
	lwz 0,12(9)
	cmpw 7,0,31
	bne+ 7,.L45
	b .L2
.LVL3:
.L55:
	.loc 1 91 0 is_stmt 1 discriminator 1
	lfd 11,48(11)
	lfd 12,48(9)
	fcmpu 7,11,12
	cror 30,28,30
	bne- 7,.L46
.L4:
	.loc 1 91 0 is_stmt 0 discriminator 2
	lwz 9,8(31)
	lwz 31,4(9)
.LVL4:
.L45:
	.loc 1 91 0 discriminator 1
	lwz 11,4(31)
	lwz 9,16(31)
	lwz 11,16(11)
	lfd 13,40(9)
	lfd 0,40(11)
	fcmpu 7,0,13
	blt- 7,.L4
	.loc 1 91 0 discriminator 3
	beq+ 7,.L55
	b .L46
.L56:
	.loc 1 93 0 is_stmt 1 discriminator 1
	lfd 13,48(9)
	lfd 0,48(11)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L9
.L8:
	.loc 1 93 0 is_stmt 0 discriminator 2
	lwz 31,12(31)
.LVL5:
	lwz 11,4(31)
	lwz 9,16(31)
	lwz 11,16(11)
	lfd 13,40(9)
	lfd 0,40(11)
.L46:
	.loc 1 93 0 discriminator 1
	fcmpu 7,13,0
	blt- 7,.L8
	.loc 1 93 0 discriminator 3
	beq+ 7,.L56
.L9:
	.loc 1 95 0 is_stmt 1
	lwz 9,8(31)
	.loc 1 113 0
	lis 29,.LC2@ha
	.loc 1 95 0
	lwz 0,12(31)
	lwz 30,4(9)
.LVL6:
	lwz 3,12(30)
.LVL7:
.L47:
	.loc 1 97 0 discriminator 1
	cmpw 7,30,0
	beq- 7,.L57
	.loc 1 98 0
	lwz 11,4(31)
	lwz 9,16(30)
	lwz 11,16(11)
	lfd 0,40(9)
	lfd 13,40(11)
	fcmpu 7,13,0
	blt- 7,.L18
	.loc 1 98 0 is_stmt 0 discriminator 1
	bne- 7,.L19
	lfd 13,48(11)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L18
.L19:
	.loc 1 112 0 is_stmt 1 discriminator 1
	cmpw 7,31,3
	bne+ 7,.L41
	b .L62
.LVL8:
.L60:
.LBB2:
	.loc 1 116 0
	lwz 31,4(3)
.LVL9:
.LBE2:
	.loc 1 112 0
	lwz 3,12(30)
.LVL10:
	cmpw 7,3,31
	beq- 7,.L59
.L41:
	.loc 1 112 0 is_stmt 0 discriminator 2
	lwz 9,8(31)
	lwz 4,4(9)
	lwz 9,4(4)
	lwz 5,16(4)
	lwz 9,16(9)
	lfd 13,40(5)
	lfd 0,40(9)
	fcmpu 7,13,0
	blt- 7,.L26
	.loc 1 112 0 discriminator 1
	bne- 7,.L27
	lfd 13,48(5)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L26
.L27:
	.loc 1 113 0 is_stmt 1
	lwz 9,4(31)
	lwz 4,16(31)
	lwz 3,16(9)
	bl __gl_edgeSign
	lfd 0,.LC2@l(29)
	fcmpu 7,1,0
	cror 30,29,30
	bne- 7,.L49
	lwz 9,8(31)
	lwz 4,4(9)
.L26:
.LBB3:
	.loc 1 114 0
	mr 3,31
	bl __gl_meshConnect
.LVL11:
	.loc 1 115 0
	cmpwi 0,3,0
	bne+ 0,.L60
.LVL12:
.L37:
.LBE3:
.LBB4:
	.loc 1 128 0
	li 3,0
.L20:
.LBE4:
	.loc 1 133 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL13:
	lwz 31,20(1)
.LVL14:
	addi 1,1,24
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL15:
.L18:
.LCFI2:
	.cfi_restore_state
	.loc 1 103 0 discriminator 1
	cmpw 7,31,3
	bne+ 7,.L40
	b .L14
.LVL16:
.L61:
.LBB5:
	.loc 1 107 0
	lwz 30,4(3)
.LVL17:
.LBE5:
	.loc 1 103 0
	lwz 3,12(30)
.LVL18:
	cmpw 7,3,31
	beq- 7,.L50
.L40:
	.loc 1 103 0 is_stmt 0 discriminator 2
	lwz 11,4(3)
	lwz 9,16(3)
	lwz 5,16(11)
	lfd 0,40(9)
	lfd 13,40(5)
	fcmpu 7,13,0
	blt- 7,.L22
	.loc 1 103 0 discriminator 1
	bne- 7,.L23
	lfd 13,48(5)
	lfd 0,48(9)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L22
.L23:
	.loc 1 104 0 is_stmt 1
	lwz 9,4(30)
	lwz 3,16(30)
	lwz 4,16(9)
	bl __gl_edgeSign
	lfd 0,.LC2@l(29)
	fcmpu 7,1,0
	cror 30,28,30
	bne- 7,.L50
.L22:
.LBB6:
	.loc 1 105 0
	lwz 3,12(30)
	mr 4,30
	bl __gl_meshConnect
.LVL19:
	.loc 1 106 0
	cmpwi 0,3,0
	bne+ 0,.L61
	b .L37
.LVL20:
.L50:
.LBE6:
	.loc 1 104 0
	lwz 0,12(31)
.L14:
	.loc 1 109 0
	lwz 9,8(30)
	lwz 30,4(9)
.LVL21:
	lwz 3,12(30)
	b .L47
.LVL22:
.L59:
	.loc 1 112 0
	lwz 31,12(31)
.LVL23:
	.loc 1 113 0
	lwz 0,12(31)
	b .L47
.L49:
	lwz 31,12(31)
.LVL24:
	lwz 3,12(30)
.LVL25:
	lwz 0,12(31)
	b .L47
.L57:
	.loc 1 125 0
	cmpw 7,31,3
	bne+ 7,.L53
	b .L63
.L39:
.LBB7:
	.loc 1 127 0
	mr 4,30
	bl __gl_meshConnect
.LVL26:
	.loc 1 128 0
	cmpwi 0,3,0
	beq- 0,.L37
	.loc 1 129 0
	lwz 30,4(3)
.LVL27:
.LBE7:
	.loc 1 126 0
	lwz 3,12(30)
.LVL28:
.L53:
	lwz 0,12(3)
	cmpw 7,0,31
	bne+ 7,.L39
	.loc 1 132 0
	li 3,1
	b .L20
.L62:
	.loc 1 112 0
	mr 31,0
.LVL29:
	.loc 1 113 0
	lwz 0,12(31)
.LVL30:
	b .L47
.L63:
	.loc 1 125 0 discriminator 1
	lis 3,.LC0@ha
	lis 5,.LANCHOR0@ha
	lis 6,.LC3@ha
	la 3,.LC0@l(3)
	li 4,125
	la 5,.LANCHOR0@l(5)
	la 6,.LC3@l(6)
	bl __assert_func
.LVL31:
.L2:
	.loc 1 89 0 discriminator 1
	lis 3,.LC0@ha
.LVL32:
	lis 5,.LANCHOR0@ha
	lis 6,.LC1@ha
	la 3,.LC0@l(3)
	li 4,89
	la 5,.LANCHOR0@l(5)
	la 6,.LC1@l(6)
	bl __assert_func
	.cfi_endproc
.LFE0:
	.size	__gl_meshTessellateMonoRegion, .-__gl_meshTessellateMonoRegion
	.align 2
	.globl __gl_meshTessellateInterior
	.type	__gl_meshTessellateInterior, @function
__gl_meshTessellateInterior:
.LFB1:
	.loc 1 141 0
	.cfi_startproc
.LVL33:
	mflr 0
	stwu 1,-16(1)
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 1 145 0
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 141 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 145 0
	lwzu 3,64(30)
.LVL34:
	cmpw 7,3,30
	beq- 7,.L70
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL35:
.L68:
	.loc 1 148 0
	lbz 0,21(3)
	.loc 1 147 0
	lwz 31,0(3)
.LVL36:
	.loc 1 148 0
	cmpwi 7,0,0
	bne- 7,.L71
.LVL37:
.L66:
	.loc 1 149 0 discriminator 1
	mr 3,31
.LVL38:
	.loc 1 145 0 discriminator 1
	cmpw 7,3,30
	bne+ 7,.L68
.LVL39:
.L70:
	.loc 1 154 0
	lwz 0,20(1)
	.loc 1 153 0
	li 3,1
.LVL40:
	.loc 1 154 0
	lwz 30,8(1)
.LVL41:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL42:
.L71:
.LCFI5:
	.cfi_restore_state
	.loc 1 149 0
	bl __gl_meshTessellateMonoRegion
.LVL43:
	cmpwi 7,3,0
	bne+ 7,.L66
	.loc 1 154 0
	lwz 0,20(1)
	.loc 1 149 0
	li 3,0
	.loc 1 154 0
	lwz 30,8(1)
.LVL44:
	mtlr 0
	lwz 31,12(1)
.LVL45:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI6:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE1:
	.size	__gl_meshTessellateInterior, .-__gl_meshTessellateInterior
	.align 2
	.globl __gl_meshDiscardExterior
	.type	__gl_meshDiscardExterior, @function
__gl_meshDiscardExterior:
.LFB2:
	.loc 1 163 0
	.cfi_startproc
.LVL46:
	mflr 0
	stwu 1,-16(1)
.LCFI7:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 1 167 0
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 163 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 167 0
	lwzu 3,64(30)
.LVL47:
	cmpw 7,3,30
	beq- 7,.L76
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL48:
.L75:
	.loc 1 170 0
	lbz 0,21(3)
	.loc 1 169 0
	lwz 31,0(3)
.LVL49:
	.loc 1 170 0
	cmpwi 7,0,0
	beq- 7,.L77
	.loc 1 171 0 discriminator 1
	mr 3,31
.LVL50:
.L78:
	.loc 1 167 0
	cmpw 7,3,30
	bne+ 7,.L75
.LVL51:
.L76:
	.loc 1 174 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL52:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL53:
.L77:
.LCFI9:
	.cfi_restore_state
	.loc 1 171 0
	bl __gl_meshZapFace
.LVL54:
	mr 3,31
	b .L78
	.cfi_endproc
.LFE2:
	.size	__gl_meshDiscardExterior, .-__gl_meshDiscardExterior
	.align 2
	.globl __gl_meshSetWindingNumber
	.type	__gl_meshSetWindingNumber, @function
__gl_meshSetWindingNumber:
.LFB3:
	.loc 1 188 0
	.cfi_startproc
.LVL55:
	mflr 0
	stwu 1,-32(1)
.LCFI10:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	mfcr 12
	.loc 1 200 0
	cmpwi 4,5,0
	.loc 1 188 0
	stw 31,28(1)
	.loc 1 191 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	.loc 1 188 0
	stw 0,36(1)
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 191 0
	lwzu 3,88(31)
.LVL56:
	.loc 1 196 0
	mr 9,30
	.loc 1 188 0
	stw 27,12(1)
	.loc 1 200 0
	mr 27,5
	.cfi_offset 27, -20
	.loc 1 191 0
	cmpw 7,3,31
	.loc 1 188 0
	stw 28,16(1)
	stw 29,20(1)
	.loc 1 196 0
	neg 28,4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 188 0
	stw 12,8(1)
	.loc 1 191 0
	beq- 7,.L89
	.cfi_offset 70, -24
.LVL57:
.L86:
	.loc 1 193 0
	lwz 11,4(3)
	lwz 10,20(3)
	lwz 11,20(11)
	lbz 0,21(10)
	lbz 11,21(11)
	.loc 1 196 0
	cmpwi 6,0,0
	.loc 1 192 0
	lwz 29,0(3)
.LVL58:
	.loc 1 193 0
	cmpw 7,11,0
	beq- 7,.L81
	.loc 1 196 0
	bne- 6,.L82
	.loc 1 196 0 is_stmt 0 discriminator 1
	mr 9,28
.LVL59:
.L82:
	.loc 1 196 0 discriminator 3
	stw 9,28(3)
.LVL60:
.L83:
	.loc 1 203 0 is_stmt 1 discriminator 1
	mr 3,29
.L90:
.LVL61:
	.loc 1 191 0
	cmpw 7,3,31
	.loc 1 196 0
	mr 9,30
	.loc 1 191 0
	bne+ 7,.L86
.LVL62:
.L89:
	.loc 1 207 0
	li 3,1
.LVL63:
.L85:
	.loc 1 208 0
	lwz 0,36(1)
	lwz 12,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	mtcrf 8,12
	lwz 29,20(1)
	lwz 30,24(1)
.LVL64:
	lwz 31,28(1)
.LVL65:
	addi 1,1,32
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL66:
.L81:
.LCFI12:
	.cfi_restore_state
	.loc 1 200 0
	bne- 4,.L84
	.loc 1 201 0
	stw 27,28(3)
	.loc 1 203 0
	mr 3,29
.LVL67:
	b .L90
.LVL68:
.L84:
	bl __gl_meshDelete
.LVL69:
	cmpwi 7,3,0
	bne+ 7,.L83
	li 3,0
	b .L85
	.cfi_endproc
.LFE3:
	.size	__gl_meshSetWindingNumber, .-__gl_meshSetWindingNumber
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.8790, @object
	.size	__FUNCTION__.8790, 30
__FUNCTION__.8790:
	.string	"__gl_meshTessellateMonoRegion"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC2:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tessmono.c"
.LC1:
	.string	"up->Lnext != up && up->Lnext->Lnext != up"
	.zero	2
.LC3:
	.string	"lo->Lnext != up"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/mesh.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x44c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1
	.4byte	.LASF48
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x94
	.4byte	0x36
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xa0
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2f
	.4byte	0x9f
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x98
	.byte	0x3
	.byte	0xaa
	.4byte	0xe4
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0xab
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0xac
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0xad
	.4byte	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0xae
	.4byte	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x31
	.4byte	0xef
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x40
	.byte	0x3
	.byte	0x79
	.4byte	0x168
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7a
	.4byte	0x27b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x7b
	.4byte	0x27b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x7c
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0x7d
	.4byte	0x60
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x3
	.byte	0x80
	.4byte	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"s"
	.byte	0x3
	.byte	0x81
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"t"
	.byte	0x3
	.byte	0x81
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x82
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x3
	.byte	0x32
	.4byte	0x173
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x18
	.byte	0x3
	.byte	0x85
	.4byte	0x1e2
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0x86
	.4byte	0x297
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x87
	.4byte	0x297
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x88
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0x89
	.4byte	0x60
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x3
	.byte	0x8c
	.4byte	0x297
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x3
	.byte	0x8d
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x3
	.byte	0x8e
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x3
	.byte	0x33
	.4byte	0x1ed
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x20
	.byte	0x3
	.byte	0x91
	.4byte	0x26a
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0x92
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Sym"
	.byte	0x3
	.byte	0x93
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x94
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x3
	.byte	0x95
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"Org"
	.byte	0x3
	.byte	0x96
	.4byte	0x27b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x3
	.byte	0x97
	.4byte	0x297
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x3
	.byte	0x9a
	.4byte	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x3
	.byte	0x9b
	.4byte	0x4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x3
	.byte	0x35
	.4byte	0x275
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x297
	.uleb128 0xc
	.4byte	0x21
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x168
	.uleb128 0xa
	.byte	0x4
	.4byte	0x26a
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	0x4b
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x343
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4f
	.4byte	0x297
	.4byte	.LLST1
	.uleb128 0xf
	.string	"up"
	.byte	0x1
	.byte	0x51
	.4byte	0x281
	.4byte	.LLST2
	.uleb128 0xf
	.string	"lo"
	.byte	0x1
	.byte	0x51
	.4byte	0x281
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF49
	.4byte	0x353
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8790
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0
	.4byte	0x314
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x72
	.4byte	0x281
	.4byte	.LLST4
	.byte	0
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x32d
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7f
	.4byte	0x281
	.4byte	.LLST5
	.byte	0
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x69
	.4byte	0x281
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x69
	.4byte	0x353
	.uleb128 0xc
	.4byte	0x21
	.byte	0x1d
	.byte	0
	.uleb128 0x14
	.4byte	0x343
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	0x4b
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST7
	.4byte	0x3a1
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8c
	.4byte	0x3a1
	.4byte	.LLST8
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0x8e
	.4byte	0x297
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8e
	.4byte	0x297
	.4byte	.LLST10
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x94
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST11
	.4byte	0x3ec
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa2
	.4byte	0x3a1
	.4byte	.LLST12
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0xa4
	.4byte	0x297
	.4byte	.LLST13
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa4
	.4byte	0x297
	.4byte	.LLST14
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0x4b
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST15
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xba
	.4byte	0x3a1
	.4byte	.LLST16
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0xba
	.4byte	0x4b
	.4byte	.LLST17
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0xbb
	.4byte	0x70
	.4byte	.LLST18
	.uleb128 0xf
	.string	"e"
	.byte	0x1
	.byte	0xbd
	.4byte	0x281
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0xbd
	.4byte	0x281
	.4byte	.LLST20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x5
	.byte	0x8f
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL54-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x4
	.byte	0x8f
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0x8f
	.sleb128 -88
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6d
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
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"GLUvertex"
.LASF20:
	.string	"next"
.LASF18:
	.string	"eHeadSym"
.LASF39:
	.string	"__gl_meshTessellateInterior"
.LASF41:
	.string	"mesh"
.LASF22:
	.string	"anEdge"
.LASF27:
	.string	"trail"
.LASF34:
	.string	"activeRegion"
.LASF32:
	.string	"Lnext"
.LASF35:
	.string	"winding"
.LASF25:
	.string	"pqHandle"
.LASF30:
	.string	"GLUhalfEdge"
.LASF12:
	.string	"GLdouble"
.LASF24:
	.string	"coords"
.LASF10:
	.string	"float"
.LASF23:
	.string	"data"
.LASF7:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF46:
	.string	"eNext"
.LASF45:
	.string	"keepOnlyBoundary"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF37:
	.string	"tempHalfEdge"
.LASF47:
	.string	"GNU C 4.6.3"
.LASF13:
	.string	"double"
.LASF4:
	.string	"short int"
.LASF49:
	.string	"__FUNCTION__"
.LASF21:
	.string	"prev"
.LASF29:
	.string	"inside"
.LASF0:
	.string	"unsigned int"
.LASF43:
	.string	"__gl_meshSetWindingNumber"
.LASF9:
	.string	"char"
.LASF26:
	.string	"GLUface"
.LASF28:
	.string	"marked"
.LASF17:
	.string	"eHead"
.LASF11:
	.string	"GLboolean"
.LASF15:
	.string	"vHead"
.LASF6:
	.string	"long long int"
.LASF33:
	.string	"Lface"
.LASF31:
	.string	"Onext"
.LASF44:
	.string	"value"
.LASF42:
	.string	"__gl_meshDiscardExterior"
.LASF40:
	.string	"face"
.LASF38:
	.string	"__gl_meshTessellateMonoRegion"
.LASF16:
	.string	"fHead"
.LASF1:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF36:
	.string	"ActiveRegion"
.LASF14:
	.string	"GLUmesh"
.LASF48:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tessmono.c"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
