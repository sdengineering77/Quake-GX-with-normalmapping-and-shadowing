	.file	"gl_screenrect.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl R_RectCopy
	.type	R_RectCopy, @function
R_RectCopy:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_screenrect.c"
	.loc 1 33 0
	.cfi_startproc
.LVL0:
	.loc 1 36 0
	lwz 0,0(3)
	.loc 1 38 0
	.loc 1 36 0
	stw 0,0(4)
.LVL1:
	lwz 0,4(3)
	stw 0,4(4)
.LVL2:
	lwz 0,8(3)
	stw 0,8(4)
.LVL3:
	lwz 0,12(3)
	stw 0,12(4)
.LVL4:
	.loc 1 38 0
	blr
	.cfi_endproc
.LFE38:
	.size	R_RectCopy, .-R_RectCopy
	.align 2
	.globl R_RectPosCopy
	.type	R_RectPosCopy, @function
R_RectPosCopy:
.LFB39:
	.loc 1 43 0
	.cfi_startproc
.LVL5:
	.loc 1 43 0
	li 0,4
	li 9,0
	mtctr 0
.LVL6:
.L3:
	.loc 1 46 0 discriminator 2
	lwzx 11,3,9
	addis 11,11,0x1
	addi 0,11,-15536
	stwx 0,4,9
	addi 9,9,4
	.loc 1 45 0 discriminator 2
	bdnz .L3
	.loc 1 48 0
	blr
	.cfi_endproc
.LFE39:
	.size	R_RectPosCopy, .-R_RectPosCopy
	.align 2
	.globl R_RectsAdd
	.type	R_RectsAdd, @function
R_RectsAdd:
.LFB40:
	.loc 1 61 0
	.cfi_startproc
.LVL7:
	.loc 1 62 0
	lwz 9,0(3)
	lwz 0,0(4)
	cmpw 7,0,9
	ble- 7,.L7
	mr 0,9
.L7:
	stw 0,0(4)
	.loc 1 63 0
	lwz 0,4(4)
	lwz 9,4(3)
	cmpw 7,0,9
	ble- 7,.L8
	mr 0,9
.L8:
	stw 0,4(4)
	.loc 1 64 0
	lwz 0,8(4)
	lwz 9,8(3)
	cmpw 7,0,9
	bge- 7,.L9
	mr 0,9
.L9:
	stw 0,8(4)
	.loc 1 65 0
	lwz 0,12(4)
	lwz 9,12(3)
	cmpw 7,0,9
	bge- 7,.L10
	mr 0,9
.L10:
	stw 0,12(4)
	.loc 1 66 0
	blr
	.cfi_endproc
.LFE40:
	.size	R_RectsAdd, .-R_RectsAdd
	.align 2
	.globl R_RectSurf
	.type	R_RectSurf, @function
R_RectSurf:
.LFB41:
	.loc 1 71 0
	.cfi_startproc
.LVL8:
	.loc 1 72 0
	lwz 9,12(3)
	lwz 0,4(3)
	lwz 10,8(3)
	lwz 11,0(3)
	subf 0,0,9
	.loc 1 73 0
	.loc 1 72 0
	subf 3,11,10
.LVL9:
	.loc 1 73 0
	mullw 3,3,0
	blr
	.cfi_endproc
.LFE41:
	.size	R_RectSurf, .-R_RectSurf
	.align 2
	.globl R_RectOverlap
	.type	R_RectOverlap, @function
R_RectOverlap:
.LFB42:
	.loc 1 88 0
	.cfi_startproc
.LVL10:
	.loc 1 90 0
	lwz 11,0(3)
	.loc 1 88 0
	mr 9,3
	.loc 1 90 0
	lwz 0,0(4)
	cmpw 7,11,0
	ble- 7,.L13
	.loc 1 92 0
	lwz 0,8(4)
	.loc 1 110 0
	li 3,0
.LVL11:
	.loc 1 92 0
	subf. 10,0,11
	bgelr+ 0
	.loc 1 96 0
	lwz 11,4(9)
	lwz 0,4(4)
	cmpw 7,11,0
	bgt- 7,.L19
	.loc 1 103 0
	lwz 3,12(9)
	subf 3,3,0
	.loc 1 88 0
	srwi 3,3,31
	blr
.L13:
	.loc 1 115 0
	lwz 11,8(3)
	.loc 1 133 0
	li 3,0
	.loc 1 115 0
	subf. 10,11,0
	bgelr+ 0
	.loc 1 119 0
	lwz 11,4(9)
	lwz 0,4(4)
	cmpw 7,11,0
	bgt- 7,.L19
	.loc 1 126 0
	lwz 3,12(9)
	subf 3,3,0
	.loc 1 88 0
	srwi 3,3,31
	.loc 1 136 0
	blr
.L19:
	.loc 1 120 0
	lwz 3,12(4)
	subf 3,3,11
	.loc 1 88 0
	srwi 3,3,31
	blr
	.cfi_endproc
.LFE42:
	.size	R_RectOverlap, .-R_RectOverlap
	.align 2
	.globl R_ClearRectList
	.type	R_ClearRectList, @function
R_ClearRectList:
.LFB43:
	.loc 1 143 0
	.cfi_startproc
	.loc 1 144 0
	li 0,0
	lis 9,recList@ha
	stw 0,recList@l(9)
	.loc 1 145 0
	lis 9,recsUsed@ha
	stw 0,recsUsed@l(9)
	.loc 1 146 0
	blr
	.cfi_endproc
.LFE43:
	.size	R_ClearRectList, .-R_ClearRectList
	.align 2
	.globl R_CheckRectList
	.type	R_CheckRectList, @function
R_CheckRectList:
.LFB44:
	.loc 1 148 0
	.cfi_startproc
.LVL12:
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 150 0
	lis 9,recList@ha
	.loc 1 148 0
	mflr 0
	stw 31,12(1)
	.loc 1 150 0
	lwz 31,recList@l(9)
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL13:
	.loc 1 148 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 151 0
	cmpwi 7,31,0
	.loc 1 148 0
	stw 0,20(1)
	.loc 1 155 0
	li 3,1
.LVL14:
	.loc 1 151 0
	bne+ 7,.L26
	.cfi_offset 65, 4
	b .L22
.LVL15:
.L29:
	.loc 1 153 0
	lwz 31,16(31)
.LVL16:
	.loc 1 151 0
	cmpwi 7,31,0
	beq- 7,.L28
.L26:
	.loc 1 152 0
	mr 4,31
	mr 3,30
	bl R_RectOverlap
	cmpwi 7,3,0
	beq+ 7,.L29
	li 3,0
.L22:
	.loc 1 156 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL17:
	mtlr 0
	lwz 31,12(1)
.LVL18:
	addi 1,1,16
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL19:
.L28:
.LCFI2:
	.cfi_restore_state
	lwz 0,20(1)
	.loc 1 155 0
	li 3,1
	.loc 1 156 0
	lwz 30,8(1)
.LVL20:
	mtlr 0
	lwz 31,12(1)
.LVL21:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE44:
	.size	R_CheckRectList, .-R_CheckRectList
	.align 2
	.globl R_AddRectList
	.type	R_AddRectList, @function
R_AddRectList:
.LFB45:
	.loc 1 158 0
	.cfi_startproc
.LVL22:
	.loc 1 161 0
	lis 9,recList@ha
	lwz 0,recList@l(9)
	cmpwi 7,0,0
	beq- 7,.L37
.LVL23:
.LBB6:
.LBB7:
	.loc 1 62 0
	lis 11,totalRect@ha
	lwz 8,0(3)
	lwz 10,totalRect@l(11)
	mr 7,11
	cmpw 7,10,8
	bgt- 7,.L38
.LVL24:
	stw 10,totalRect@l(7)
	.loc 1 63 0
	la 11,totalRect@l(11)
	lwz 10,4(11)
	mr 7,11
	lwz 8,4(3)
	cmpw 7,10,8
	bgt- 7,.L39
.LVL25:
.L34:
	stw 10,4(7)
	.loc 1 64 0
	mr 7,11
	lwz 10,8(11)
	lwz 8,8(3)
	cmpw 7,10,8
	blt- 7,.L40
.L35:
	stw 10,8(7)
	.loc 1 65 0
	lwz 10,12(11)
	lwz 8,12(3)
	cmpw 7,10,8
	blt- 7,.L41
.L36:
	stw 10,12(11)
.LBE7:
.LBE6:
	.loc 1 169 0
	.loc 1 167 0
	stw 0,16(3)
	.loc 1 168 0
	stw 3,recList@l(9)
	.loc 1 169 0
	blr
.L41:
.LBB9:
.LBB8:
	.loc 1 65 0
	mr 10,8
	b .L36
.L40:
	.loc 1 64 0
	mr 10,8
	stw 10,8(7)
	.loc 1 65 0
	lwz 10,12(11)
	lwz 8,12(3)
	cmpw 7,10,8
	bge- 7,.L36
	b .L41
.L39:
	.loc 1 63 0
	mr 10,8
	stw 10,4(7)
	.loc 1 64 0
	mr 7,11
	lwz 10,8(11)
	lwz 8,8(3)
	cmpw 7,10,8
	bge- 7,.L35
	b .L40
.L38:
	.loc 1 62 0
	mr 10,8
	.loc 1 63 0
	la 11,totalRect@l(11)
	.loc 1 62 0
	stw 10,totalRect@l(7)
	.loc 1 63 0
	mr 7,11
	lwz 10,4(11)
	lwz 8,4(3)
	cmpw 7,10,8
	ble- 7,.L34
	b .L39
.LVL26:
.L37:
.LBE8:
.LBE9:
.LBB10:
.LBB11:
	.loc 1 36 0
	lwz 10,0(3)
	lis 11,totalRect@ha
.LBE11:
.LBE10:
	.loc 1 167 0
	stw 0,16(3)
	.loc 1 169 0
.LBB14:
.LBB12:
	.loc 1 36 0
	stw 10,totalRect@l(11)
.LVL27:
	la 11,totalRect@l(11)
.LBE12:
.LBE14:
	.loc 1 168 0
	stw 3,recList@l(9)
.LBB15:
.LBB13:
	.loc 1 36 0
	lwz 10,4(3)
	stw 10,4(11)
.LVL28:
	lwz 10,8(3)
	stw 10,8(11)
.LVL29:
	lwz 10,12(3)
	stw 10,12(11)
.LVL30:
.LBE13:
.LBE15:
	.loc 1 169 0
	blr
	.cfi_endproc
.LFE45:
	.size	R_AddRectList, .-R_AddRectList
	.align 2
	.globl R_SetTotalRect
	.type	R_SetTotalRect, @function
R_SetTotalRect:
.LFB46:
	.loc 1 171 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 173 0
	lis 11,totalRect@ha
	la 9,totalRect@l(11)
	lwz 3,totalRect@l(11)
	.loc 1 171 0
	stw 0,12(1)
	.loc 1 173 0
	lwz 4,4(9)
	.loc 1 172 0
	lwz 5,8(9)
	lwz 6,12(9)
	subf 5,3,5
	subf 6,4,6
	.cfi_offset 65, 4
	bl glScissor
	.loc 1 174 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE46:
	.size	R_SetTotalRect, .-R_SetTotalRect
	.comm	recsUsed,4,4
	.comm	totalRect,20,4
	.comm	recList,4,4
	.comm	causticschain,4,4
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7e1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.4byte	.LASF91
	.4byte	.LASF92
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87
	.uleb128 0x7
	.4byte	0x41
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x64
	.4byte	0xcf
	.uleb128 0x8
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x48
	.4byte	0xdf
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x33
	.4byte	0xef
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x72
	.4byte	0x105
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x87
	.4byte	0x115
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x17
	.4byte	0x12b
	.uleb128 0x7
	.4byte	0x115
	.4byte	0x13b
	.uleb128 0x8
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x14
	.byte	0x4
	.byte	0x52
	.4byte	0x18e
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x54
	.4byte	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x55
	.4byte	0x72
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x56
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x57
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"pad"
	.byte	0x4
	.byte	0x58
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x87
	.4byte	0x19e
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x59
	.4byte	0x13b
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x48
	.byte	0x4
	.byte	0x5b
	.4byte	0x25e
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5d
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x61
	.4byte	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x64
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x65
	.4byte	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x66
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x5c
	.byte	0x4
	.byte	0x96
	.4byte	0x383
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9a
	.4byte	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0xa0
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa1
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0xa5
	.4byte	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0xa6
	.4byte	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0xa7
	.4byte	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0xa9
	.4byte	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0xb0
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0xb1
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0xb2
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0xb3
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a9
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x4
	.byte	0x67
	.4byte	0x1a9
	.uleb128 0xc
	.byte	0x2c
	.byte	0x4
	.byte	0x7e
	.4byte	0x3db
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.byte	0x80
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0x81
	.4byte	0x72
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x82
	.4byte	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38f
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x4
	.byte	0x84
	.4byte	0x39a
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x1c
	.byte	0x4
	.byte	0x8a
	.4byte	0x45b
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.byte	0x8c
	.4byte	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0x8d
	.4byte	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.byte	0x92
	.4byte	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45b
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x4
	.byte	0x94
	.4byte	0x3ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x467
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e1
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x4
	.byte	0xb4
	.4byte	0x25e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x484
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x14
	.byte	0x5
	.2byte	0x981
	.4byte	0x4c1
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x983
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x985
	.4byte	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x495
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x987
	.4byte	0x495
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x4
	.byte	0x6
	.2byte	0x490
	.4byte	0x533
	.uleb128 0x11
	.string	"U8"
	.byte	0x6
	.2byte	0x492
	.4byte	0x533
	.uleb128 0x11
	.string	"S8"
	.byte	0x6
	.2byte	0x493
	.4byte	0x538
	.uleb128 0x11
	.string	"U16"
	.byte	0x6
	.2byte	0x494
	.4byte	0x53d
	.uleb128 0x11
	.string	"S16"
	.byte	0x6
	.2byte	0x495
	.4byte	0x542
	.uleb128 0x11
	.string	"U32"
	.byte	0x6
	.2byte	0x496
	.4byte	0x547
	.uleb128 0x11
	.string	"S32"
	.byte	0x6
	.2byte	0x497
	.4byte	0x54c
	.uleb128 0x11
	.string	"F32"
	.byte	0x6
	.2byte	0x498
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0x5
	.4byte	0x3a
	.uleb128 0x5
	.4byte	0x33
	.uleb128 0x5
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x41
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x499
	.4byte	0x4d3
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.4byte	0x58b
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.byte	0x21
	.4byte	0x58b
	.uleb128 0x13
	.string	"dst"
	.byte	0x1
	.byte	0x21
	.4byte	0x58b
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c7
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.4byte	0x5b6
	.uleb128 0x13
	.string	"add"
	.byte	0x1
	.byte	0x3d
	.4byte	0x58b
	.uleb128 0x13
	.string	"res"
	.byte	0x1
	.byte	0x3d
	.4byte	0x58b
	.byte	0
	.uleb128 0x15
	.4byte	0x55d
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x5e2
	.uleb128 0x16
	.4byte	0x56b
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	0x576
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	0x581
	.4byte	.LLST0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x622
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.byte	0x2b
	.4byte	0x58b
	.byte	0x1
	.byte	0x53
	.uleb128 0x19
	.string	"dst"
	.byte	0x1
	.byte	0x2b
	.4byte	0x58b
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.4byte	0x41
	.4byte	.LLST1
	.byte	0
	.uleb128 0x15
	.4byte	0x591
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x645
	.uleb128 0x16
	.4byte	0x59f
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	0x5aa
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x671
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.byte	0x47
	.4byte	0x58b
	.4byte	.LLST2
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x6a8
	.uleb128 0x1d
	.string	"r1"
	.byte	0x1
	.byte	0x58
	.4byte	0x58b
	.4byte	.LLST3
	.uleb128 0x19
	.string	"r2"
	.byte	0x1
	.byte	0x58
	.4byte	0x58b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST4
	.4byte	0x6f6
	.uleb128 0x1d
	.string	"rec"
	.byte	0x1
	.byte	0x94
	.4byte	0x58b
	.4byte	.LLST5
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.byte	0x95
	.4byte	0x58b
	.4byte	.LLST6
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x76d
	.uleb128 0x1d
	.string	"rec"
	.byte	0x1
	.byte	0x9e
	.4byte	0x58b
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	0x591
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa4
	.4byte	0x743
	.uleb128 0x21
	.4byte	0x5aa
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	0x59f
	.4byte	.LLST9
	.byte	0
	.uleb128 0x22
	.4byte	0x55d
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xa2
	.uleb128 0x23
	.4byte	0x576
	.uleb128 0x23
	.4byte	0x56b
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x17
	.4byte	0x581
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x5
	.2byte	0xc2c
	.4byte	0x48f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x27
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x548
	.4byte	0x7a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x7a8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x551
	.uleb128 0x29
	.4byte	.LASF87
	.byte	0x1
	.byte	0x8a
	.4byte	0x58b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	recList
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0x1
	.byte	0x8b
	.4byte	0x4c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	totalRect
	.uleb128 0x29
	.4byte	.LASF89
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	recsUsed
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x26
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
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
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	recList
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	totalRect
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB46-.Ltext0
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
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
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
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
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
.LASF24:
	.string	"texture_s"
.LASF86:
	.string	"wgPipe"
.LASF88:
	.string	"totalRect"
.LASF93:
	.string	"_wgpipe"
.LASF47:
	.string	"polys"
.LASF74:
	.string	"WGPipe"
.LASF8:
	.string	"char"
.LASF19:
	.string	"dist"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"shadowchain"
.LASF30:
	.string	"texturechain"
.LASF14:
	.string	"qboolean"
.LASF21:
	.string	"signbits"
.LASF81:
	.string	"R_RectPosCopy"
.LASF76:
	.string	"R_RectsAdd"
.LASF64:
	.string	"chain"
.LASF67:
	.string	"neighbours"
.LASF35:
	.string	"alternate_anims"
.LASF92:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF26:
	.string	"width"
.LASF44:
	.string	"extents"
.LASF10:
	.string	"float"
.LASF22:
	.string	"mplane_t"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"offsets"
.LASF65:
	.string	"numverts"
.LASF85:
	.string	"causticschain"
.LASF12:
	.string	"long int"
.LASF78:
	.string	"R_RectSurf"
.LASF29:
	.string	"gl_lumitex"
.LASF42:
	.string	"numedges"
.LASF56:
	.string	"samples"
.LASF13:
	.string	"byte"
.LASF25:
	.string	"name"
.LASF75:
	.string	"R_RectCopy"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"vec_t"
.LASF53:
	.string	"styles"
.LASF49:
	.string	"texinfo"
.LASF38:
	.string	"visframe"
.LASF17:
	.string	"vec3_t"
.LASF54:
	.string	"cached_light"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"flags"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"type"
.LASF27:
	.string	"height"
.LASF4:
	.string	"unsigned int"
.LASF31:
	.string	"anim_total"
.LASF33:
	.string	"anim_max"
.LASF23:
	.string	"mplane_s"
.LASF87:
	.string	"recList"
.LASF41:
	.string	"firstedge"
.LASF3:
	.string	"short unsigned int"
.LASF62:
	.string	"glpoly_s"
.LASF69:
	.string	"glpoly_t"
.LASF71:
	.string	"screenrect_s"
.LASF73:
	.string	"screenrect_t"
.LASF32:
	.string	"anim_min"
.LASF52:
	.string	"lightmaptexturenum"
.LASF15:
	.string	"_Bool"
.LASF11:
	.string	"long double"
.LASF60:
	.string	"texture"
.LASF79:
	.string	"R_RectOverlap"
.LASF66:
	.string	"lightTimestamp"
.LASF43:
	.string	"texturemins"
.LASF50:
	.string	"dlightframe"
.LASF7:
	.string	"long unsigned int"
.LASF61:
	.string	"mtexinfo_t"
.LASF9:
	.string	"double"
.LASF72:
	.string	"coords"
.LASF37:
	.string	"msurface_s"
.LASF70:
	.string	"msurface_t"
.LASF28:
	.string	"gl_texturenum"
.LASF55:
	.string	"cached_dlight"
.LASF80:
	.string	"R_CheckRectList"
.LASF39:
	.string	"plane"
.LASF45:
	.string	"light_s"
.LASF46:
	.string	"light_t"
.LASF57:
	.string	"texture_t"
.LASF59:
	.string	"mipadjust"
.LASF51:
	.string	"dlightbits"
.LASF89:
	.string	"recsUsed"
.LASF18:
	.string	"normal"
.LASF90:
	.string	"GNU C 4.6.3"
.LASF83:
	.string	"R_ClearRectList"
.LASF77:
	.string	"rect"
.LASF68:
	.string	"firstvertex"
.LASF84:
	.string	"R_SetTotalRect"
.LASF82:
	.string	"R_AddRectList"
.LASF58:
	.string	"vecs"
.LASF63:
	.string	"next"
.LASF91:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_screenrect.c"
.LASF34:
	.string	"anim_next"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
