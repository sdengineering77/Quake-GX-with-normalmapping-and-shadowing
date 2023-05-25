	.file	"gx_matrix.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z13qgxMatrixModei
	.type	_Z13qgxMatrixModei, @function
_Z13qgxMatrixModei:
.LFB38:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_matrix.cpp"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 17 0
	addi 0,3,-5888
	.cfi_offset 65, 4
	cmplwi 7,0,1
	ble- 7,.L3
	.loc 1 23 0
	lis 3,.LC0@ha
.LVL1:
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.L3:
	.loc 1 26 0
	lwz 0,20(1)
	.loc 1 25 0
	lis 9,.LANCHOR0@ha
	stw 31,.LANCHOR0@l(9)
	.loc 1 26 0
	mtlr 0
	lwz 31,12(1)
.LVL2:
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE38:
	.size	_Z13qgxMatrixModei, .-_Z13qgxMatrixModei
	.align 2
	.globl _Z18qgxLoadProjMatrixfPKfb
	.type	_Z18qgxLoadProjMatrixfPKfb, @function
_Z18qgxLoadProjMatrixfPKfb:
.LFB39:
	.loc 1 31 0
	.cfi_startproc
.LVL3:
	stwu 1,-24(1)
.LCFI2:
	.cfi_def_cfa_offset 24
	mflr 0
	addi 3,3,-4
.LVL4:
	stw 31,20(1)
	.loc 1 37 0
	lis 31,.LANCHOR1@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 31,.LANCHOR1@l(31)
	.loc 1 31 0
	stw 0,28(1)
	.loc 1 37 0
	mr 8,31
	.loc 1 31 0
	mr 0,4
	.cfi_offset 65, 4
	addi 7,31,16
	.loc 1 37 0
	xori 4,4,1
.LVL5:
.L6:
	.loc 1 31 0 discriminator 1
	li 10,4
	mr 11,3
	mtctr 10
	li 9,0
.LVL6:
.L7:
.LBB2:
	.loc 1 44 0 discriminator 2
	lwzu 10,4(11)
	stwx 10,8,9
	addi 9,9,16
	.loc 1 43 0 discriminator 2
	bdnz .L7
	.loc 1 43 0 is_stmt 0
	addi 8,8,4
	addi 3,3,16
	.loc 1 42 0 is_stmt 1
	cmpw 7,8,7
	bne+ 7,.L6
	.loc 1 47 0
	cmpwi 7,0,0
	beq+ 7,.L9
	.loc 1 49 0
	lis 9,.LC1@ha
	mr 3,31
	lfs 1,.LC1@l(9)
	lis 9,.LC2@ha
	lfs 2,.LC2@l(9)
	lis 9,.LC3@ha
	lfs 3,.LC3@l(9)
	lis 9,.LC4@ha
	lfs 4,.LC4@l(9)
	stw 4,8(1)
	bl guPerspective
.LVL7:
	lwz 4,8(1)
.L9:
	.loc 1 51 0
	mr 3,31
	bl GX_LoadProjectionMtx
.LBE2:
	.loc 1 52 0
	lwz 0,28(1)
	lwz 31,20(1)
	mtlr 0
	addi 1,1,24
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE39:
	.size	_Z18qgxLoadProjMatrixfPKfb, .-_Z18qgxLoadProjMatrixfPKfb
	.align 2
	.globl _Z14qgxLoadMatrixfPKf
	.type	_Z14qgxLoadMatrixfPKf, @function
_Z14qgxLoadMatrixfPKf:
.LFB40:
	.loc 1 58 0
	.cfi_startproc
.LVL8:
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
.LBB3:
	.loc 1 62 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBE3:
	.loc 1 58 0
	stw 0,20(1)
.LBB4:
	.loc 1 62 0
	lwz 0,.LANCHOR0@l(31)
	.cfi_offset 65, 4
.LBE4:
	.loc 1 58 0
	stw 30,8(1)
	.loc 1 58 0
	mr 30,3
	.cfi_offset 30, -8
.LBB5:
	.loc 1 62 0
	cmpwi 7,0,5889
	beq- 7,.L17
	.loc 1 65 0
	cmpwi 7,0,5890
	beq- 7,.L18
.LVL9:
.L14:
	.loc 1 66 0 discriminator 1
	lis 31,.LANCHOR1@ha
	.loc 1 58 0 discriminator 1
	li 0,4
	.loc 1 66 0 discriminator 1
	la 31,.LANCHOR1@l(31)
	.loc 1 58 0 discriminator 1
	mtctr 0
	.loc 1 66 0 discriminator 1
	addi 9,31,60
.LVL10:
.L15:
	.loc 1 70 0 discriminator 1
	lwz 0,0(30)
	stwu 0,4(9)
.LVL11:
	lwz 0,4(30)
	stw 0,16(9)
.LVL12:
	lwz 0,8(30)
	.loc 1 58 0 discriminator 1
	addi 30,30,16
.LVL13:
	.loc 1 70 0 discriminator 1
	stw 0,32(9)
.LVL14:
	.loc 1 68 0 discriminator 1
	bdnz .L15
	.loc 1 75 0
	addi 31,31,64
	li 4,0
	mr 3,31
	bl GX_LoadPosMtxImm
	.loc 1 76 0
	mr 3,31
	li 4,0
	bl GX_LoadNrmMtxImm
	.loc 1 77 0
	li 3,0
	bl GX_SetCurrentMtx
.LBE5:
	.loc 1 79 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL15:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL16:
.L17:
.LCFI6:
	.cfi_restore_state
.LBB6:
	.loc 1 63 0
	lis 3,.LC5@ha
.LVL17:
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	lwz 0,.LANCHOR0@l(31)
	.loc 1 65 0
	cmpwi 7,0,5890
	bne+ 7,.L14
.L18:
	.loc 1 66 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	b .L14
.LBE6:
	.cfi_endproc
.LFE40:
	.size	_Z14qgxLoadMatrixfPKf, .-_Z14qgxLoadMatrixfPKf
	.align 2
	.globl _Z17qgxLoadTexMatrixfiPKf
	.type	_Z17qgxLoadTexMatrixfiPKf, @function
_Z17qgxLoadTexMatrixfiPKf:
.LFB41:
	.loc 1 81 0
	.cfi_startproc
.LVL18:
	mflr 0
	stwu 1,-56(1)
.LCFI7:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	li 11,4
	mtctr 11
	addi 9,1,4
	stw 0,60(1)
	.loc 1 81 0
	mr 0,3
	.cfi_offset 65, 4
.LVL19:
.L20:
.LBB7:
	.loc 1 87 0 discriminator 1
	lwz 11,0(4)
	lwz 10,4(4)
	stwu 11,4(9)
.LVL20:
	lwz 11,8(4)
	.loc 1 81 0 discriminator 1
	addi 4,4,16
.LVL21:
	.loc 1 87 0 discriminator 1
	stw 10,16(9)
.LVL22:
	stw 11,32(9)
.LVL23:
	.loc 1 85 0 discriminator 1
	bdnz .L20
	.loc 1 92 0
	addi 3,1,8
	mr 4,0
.LVL24:
	li 5,1
	bl GX_LoadTexMtxImm
.LVL25:
.LBE7:
	.loc 1 94 0
	lwz 0,60(1)
	addi 1,1,56
.LCFI8:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE41:
	.size	_Z17qgxLoadTexMatrixfiPKf, .-_Z17qgxLoadTexMatrixfiPKf
	.align 2
	.globl _Z24qgxLoadTexMatrixIdentityi
	.type	_Z24qgxLoadTexMatrixIdentityi, @function
_Z24qgxLoadTexMatrixIdentityi:
.LFB42:
	.loc 1 96 0
	.cfi_startproc
.LVL26:
	stwu 1,-64(1)
.LCFI9:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB8:
	.loc 1 99 0
	addi 3,1,8
.LVL27:
.LBE8:
	.loc 1 96 0
	stw 0,68(1)
.LBB9:
	.loc 1 99 0
	.cfi_offset 65, 4
	bl ps_guMtxIdentity
	.loc 1 100 0
	addi 3,1,8
	mr 4,31
	li 5,1
	bl GX_LoadTexMtxImm
	.loc 1 101 0
	lis 3,.LC7@ha
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LBE9:
	.loc 1 102 0
	lwz 0,68(1)
	lwz 31,60(1)
.LVL28:
	mtlr 0
	addi 1,1,64
.LCFI10:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE42:
	.size	_Z24qgxLoadTexMatrixIdentityi, .-_Z24qgxLoadTexMatrixIdentityi
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1116209152
.LC2:
	.4byte	1069547520
.LC3:
	.4byte	1036831949
.LC4:
	.4byte	1325400064
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZL9gxmtxmode, @object
	.size	_ZL9gxmtxmode, 4
_ZL9gxmtxmode:
	.long	-1
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Illegal matrix mode\r\n"
	.zero	2
.LC5:
	.string	"Use qgxLoadProjMatrixf() to load projection\r\n"
	.zero	2
.LC6:
	.string	"Cannot load texture projection with qgxLoadMatrixf\r\n"
	.zero	3
.LC7:
	.string	">>> qgxLoadTexMatrixIdentity\r\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	_ZL12gxprojmatrix, @object
	.size	_ZL12gxprojmatrix, 64
_ZL12gxprojmatrix:
	.zero	64
	.type	_ZL13gxmodelmatrix, @object
	.size	_ZL13gxmodelmatrix, 48
_ZL13gxmodelmatrix:
	.zero	48
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 3 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3fd
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x4
	.4byte	.LASF42
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x29
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2a
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x35
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x36
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.4byte	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x50
	.4byte	0x86
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.string	"u8"
	.byte	0x3
	.byte	0x11
	.4byte	0x3a
	.uleb128 0x5
	.string	"u16"
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x5
	.string	"u32"
	.byte	0x3
	.byte	0x13
	.4byte	0x7b
	.uleb128 0x5
	.string	"s8"
	.byte	0x3
	.byte	0x16
	.4byte	0x28
	.uleb128 0x5
	.string	"s16"
	.byte	0x3
	.byte	0x17
	.4byte	0x45
	.uleb128 0x5
	.string	"s32"
	.byte	0x3
	.byte	0x18
	.4byte	0x69
	.uleb128 0x5
	.string	"vu8"
	.byte	0x3
	.byte	0x1b
	.4byte	0xe6
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1c
	.4byte	0xf6
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1d
	.4byte	0x106
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x5
	.string	"vs8"
	.byte	0x3
	.byte	0x20
	.4byte	0x116
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x126
	.uleb128 0x6
	.4byte	0xc5
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x22
	.4byte	0x136
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x5
	.string	"f32"
	.byte	0x3
	.byte	0x2b
	.4byte	0x146
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2e
	.4byte	0x15f
	.uleb128 0x6
	.4byte	0x146
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x5
	.string	"Mtx"
	.byte	0x4
	.byte	0x73
	.4byte	0x176
	.uleb128 0x7
	.4byte	0x146
	.4byte	0x18c
	.uleb128 0x8
	.4byte	0x86
	.byte	0x2
	.uleb128 0x8
	.4byte	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x89
	.4byte	0x197
	.uleb128 0x7
	.4byte	0x146
	.4byte	0x1ad
	.uleb128 0x8
	.4byte	0x86
	.byte	0x3
	.uleb128 0x8
	.4byte	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x20d
	.uleb128 0xa
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0xdb
	.uleb128 0xa
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x10b
	.uleb128 0xa
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0xeb
	.uleb128 0xa
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x11b
	.uleb128 0xa
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0xfb
	.uleb128 0xa
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x12b
	.uleb128 0xa
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0x154
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x499
	.4byte	0x1ad
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x10
	.4byte	.LASF25
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x245
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x10
	.4byte	0x74
	.4byte	.LLST1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1f
	.4byte	.LASF26
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST2
	.4byte	0x2ad
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x1f
	.4byte	0x2ad
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1f
	.4byte	0x2b8
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x20
	.4byte	0x74
	.4byte	.LLST5
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0x20
	.4byte	0x74
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x21
	.4byte	0x9b
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0x14
	.4byte	0x146
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3a
	.4byte	.LASF32
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST7
	.4byte	0x309
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x3a
	.4byte	0x2ad
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.4byte	0x74
	.4byte	.LLST9
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.byte	0x3c
	.4byte	0x74
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x51
	.4byte	.LASF34
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST11
	.4byte	0x374
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x51
	.4byte	0x74
	.4byte	.LLST12
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x51
	.4byte	0x2ad
	.4byte	.LLST13
	.uleb128 0xf
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x52
	.4byte	0x74
	.4byte	.LLST14
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.byte	0x52
	.4byte	0x74
	.4byte	.LLST15
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.byte	0x53
	.4byte	0x16b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0x60
	.4byte	.LASF37
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST16
	.4byte	0x3b4
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x60
	.4byte	0x74
	.4byte	.LLST17
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.byte	0x61
	.4byte	0x16b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x548
	.4byte	0x3c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x3c7
	.uleb128 0x13
	.byte	0x4
	.4byte	0x20d
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0xb
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	_ZL9gxmtxmode
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc
	.4byte	0x18c
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12gxprojmatrix
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd
	.4byte	0x16b
	.byte	0x5
	.byte	0x3
	.4byte	_ZL13gxmodelmatrix
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.sleb128 16
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
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	_ZL9gxmtxmode
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE39-.Ltext0
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
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
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
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"uint32_t"
.LASF44:
	.string	"wgPipe"
.LASF17:
	.string	"float"
.LASF22:
	.string	"WGPipe"
.LASF43:
	.string	"_wgpipe"
.LASF2:
	.string	"int8_t"
.LASF5:
	.string	"short int"
.LASF39:
	.string	"gxprojmatrix"
.LASF26:
	.string	"_Z18qgxLoadProjMatrixfPKfb"
.LASF41:
	.string	"GNU C++ 4.6.3"
.LASF25:
	.string	"_Z13qgxMatrixModei"
.LASF28:
	.string	"perspective"
.LASF27:
	.string	"mode"
.LASF34:
	.string	"_Z17qgxLoadTexMatrixfiPKf"
.LASF3:
	.string	"uint8_t"
.LASF32:
	.string	"_Z14qgxLoadMatrixfPKf"
.LASF30:
	.string	"bool"
.LASF21:
	.string	"Mtx44"
.LASF11:
	.string	"long long int"
.LASF33:
	.string	"qgxLoadTexMatrixf"
.LASF0:
	.string	"unsigned char"
.LASF36:
	.string	"qgxLoadTexMatrixIdentity"
.LASF37:
	.string	"_Z24qgxLoadTexMatrixIdentityi"
.LASF13:
	.string	"vu16"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF29:
	.string	"type"
.LASF10:
	.string	"unsigned int"
.LASF6:
	.string	"uint16_t"
.LASF31:
	.string	"qgxLoadMatrixf"
.LASF24:
	.string	"qgxLoadProjMatrixf"
.LASF7:
	.string	"short unsigned int"
.LASF14:
	.string	"vu32"
.LASF20:
	.string	"char"
.LASF35:
	.string	"texmtxidx"
.LASF8:
	.string	"int32_t"
.LASF4:
	.string	"int16_t"
.LASF15:
	.string	"vs16"
.LASF19:
	.string	"vf32"
.LASF42:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_matrix.cpp"
.LASF16:
	.string	"vs32"
.LASF40:
	.string	"gxmodelmatrix"
.LASF18:
	.string	"double"
.LASF23:
	.string	"qgxMatrixMode"
.LASF38:
	.string	"gxmtxmode"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
