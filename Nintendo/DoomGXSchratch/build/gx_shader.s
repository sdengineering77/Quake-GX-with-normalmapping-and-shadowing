	.file	"gx_shader.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z15qgxInitGXShaderv
	.type	_Z15qgxInitGXShaderv, @function
_Z15qgxInitGXShaderv:
.LFB38:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_shader.cpp"
	.loc 1 28 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	mflr 0
	.loc 1 29 0
	lis 9,.LANCHOR0@ha
	.loc 1 33 0
	li 3,0
	.loc 1 28 0
	stw 30,8(1)
	.loc 1 33 0
	li 4,9
	.loc 1 29 0
	li 30,0
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 33 0
	li 5,1
	li 6,4
	li 7,0
	.loc 1 28 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 29 0
	la 31,.LANCHOR0@l(9)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	stw 30,.LANCHOR0@l(9)
	.loc 1 33 0
	bl GX_SetVtxAttrFmt
	.loc 1 34 0
	li 3,0
	li 4,13
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 38 0
	li 0,1
	.loc 1 35 0
	stw 30,4(31)
	.loc 1 36 0
	stw 30,12(31)
	.loc 1 37 0
	stw 30,8(31)
	.loc 1 38 0
	stw 0,16(31)
	.loc 1 40 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE38:
	.size	_Z15qgxInitGXShaderv, .-_Z15qgxInitGXShaderv
	.align 2
	.globl _Z21qgxGetCurrentGXVtxFmtv
	.type	_Z21qgxGetCurrentGXVtxFmtv, @function
_Z21qgxGetCurrentGXVtxFmtv:
.LFB39:
	.loc 1 42 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.loc 1 43 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	lwz 9,.LANCHOR0@l(30)
	.loc 1 42 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 43 0
	cmpwi 7,9,0
	.loc 1 42 0
	stw 0,20(1)
	.loc 1 43 0
	bne+ 7,.L3
	.cfi_offset 65, 4
	.loc 1 44 0
	lis 3,.LC0@ha
.LVL1:
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
	lwz 9,.LANCHOR0@l(30)
.L3:
	.loc 1 47 0
	addi 9,9,-1
	la 30,.LANCHOR0@l(30)
	slwi 9,9,4
	.loc 1 48 0
	mr 3,31
	.loc 1 47 0
	add 30,30,9
	lwz 0,16(30)
	lwz 8,4(30)
	lwz 10,8(30)
	lwz 9,12(30)
	stw 8,0(31)
	stw 10,4(31)
	stw 9,8(31)
	stw 0,12(31)
	.loc 1 48 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL2:
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE39:
	.size	_Z21qgxGetCurrentGXVtxFmtv, .-_Z21qgxGetCurrentGXVtxFmtv
	.align 2
	.globl _Z20qgxInitDefaultShaderv
	.type	_Z20qgxInitDefaultShaderv, @function
_Z20qgxInitDefaultShaderv:
.LFB40:
	.loc 1 58 0
	.cfi_startproc
	stwu 1,-64(1)
.LCFI4:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 31,60(1)
.LBB2:
	.loc 1 60 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBE2:
	.loc 1 58 0
	stw 0,68(1)
.LBB4:
	.loc 1 60 0
	lwz 0,.LANCHOR0@l(31)
	.cfi_offset 65, 4
	cmpwi 7,0,1
	beq- 7,.L5
.LBB3:
	.loc 1 61 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 1 63 0
	li 0,1
	stw 0,.LANCHOR0@l(31)
	.loc 1 66 0
	bl GX_ClearVtxDesc
	.loc 1 67 0
	li 3,9
	li 4,3
	bl GX_SetVtxDesc
	.loc 1 68 0
	li 4,3
	li 3,13
	bl GX_SetVtxDesc
	.loc 1 69 0
	bl GX_InvVtxCache
	.loc 1 72 0
	li 3,1
	bl GX_SetNumTexGens
	.loc 1 76 0
	addi 3,1,8
	bl ps_guMtxIdentity
	.loc 1 77 0
	addi 3,1,8
	li 4,30
	li 5,1
	bl GX_LoadTexMtxImm
	.loc 1 78 0
	li 5,4
	li 6,30
	li 3,0
	li 4,1
	bl GX_SetTexCoordGen
	.loc 1 81 0
	li 3,0
	li 4,12
	bl GX_SetTevKColorSel
	.loc 1 82 0
	li 3,0
	li 4,28
	bl GX_SetTevKAlphaSel
	.loc 1 83 0
	li 3,0
	li 4,15
	li 5,8
	li 6,14
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 84 0
	li 8,0
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	bl GX_SetTevColorOp
	.loc 1 85 0
	li 3,0
	li 4,7
	li 5,4
	li 6,6
	li 7,7
	bl GX_SetTevAlphaIn
	.loc 1 86 0
	li 7,1
	li 8,0
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevAlphaOp
	.loc 1 87 0
	li 4,0
	li 5,0
	li 6,6
	li 3,0
	bl GX_SetTevOrder
	.loc 1 88 0
	li 3,0
	bl GX_SetTevDirect
	.loc 1 91 0
	li 3,0
	bl GX_SetAlphaUpdate
	.loc 1 92 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 95 0
	li 4,1
	li 5,1
	li 6,5
	li 3,1
	bl GX_SetBlendMode
	.loc 1 98 0
	li 3,2
	bl GX_SetCullMode
	.loc 1 101 0
	li 3,1
	li 4,3
	li 5,1
	bl GX_SetZMode
	.loc 1 104 0
	li 3,1
	bl GX_SetNumTevStages
.L5:
.LBE3:
.LBE4:
	.loc 1 106 0
	lwz 0,68(1)
	lwz 31,60(1)
	mtlr 0
	addi 1,1,64
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE40:
	.size	_Z20qgxInitDefaultShaderv, .-_Z20qgxInitDefaultShaderv
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"qgxGetCurrentGXVtxFmt: No shader set!\r\n"
.LC1:
	.string	">>> Set default shader\r\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZL15gxCurrentShader, @object
	.size	_ZL15gxCurrentShader, 4
_ZL15gxCurrentShader:
	.zero	4
	.type	_ZL9gxvtxfmts, @object
	.size	_ZL9gxvtxfmts, 128
_ZL9gxvtxfmts:
	.zero	128
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 3 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_shader.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x324
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.4byte	.LASF36
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
	.4byte	0x154
	.uleb128 0x6
	.4byte	0x13b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x5
	.string	"Mtx"
	.byte	0x4
	.byte	0x73
	.4byte	0x16b
	.uleb128 0x7
	.4byte	0x13b
	.4byte	0x181
	.uleb128 0x8
	.4byte	0x86
	.byte	0x2
	.uleb128 0x8
	.4byte	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x1e1
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
	.4byte	0x149
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x499
	.4byte	0x181
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x10
	.byte	0x6
	.byte	0xb
	.4byte	0x232
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x6
	.byte	0xc
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x6
	.byte	0xd
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0xe
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0xf
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x11
	.4byte	0x1ed
	.uleb128 0xe
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.4byte	.LASF39
	.4byte	0x268
	.uleb128 0xf
	.4byte	.LASF27
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF28
	.sleb128 1
	.uleb128 0xf
	.4byte	.LASF29
	.sleb128 2
	.uleb128 0xf
	.4byte	.LASF30
	.sleb128 3
	.uleb128 0xf
	.4byte	.LASF31
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x1
	.byte	0x10
	.4byte	0x23d
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1c
	.4byte	.LASF41
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2a
	.4byte	.LASF43
	.4byte	0x232
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3a
	.4byte	.LASF45
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST2
	.4byte	0x2dc
	.uleb128 0x13
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x14
	.string	"tmp"
	.byte	0x1
	.byte	0x4b
	.4byte	0x160
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x548
	.4byte	0x2ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x2ef
	.uleb128 0x17
	.byte	0x4
	.4byte	0x1e1
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x13
	.4byte	0x268
	.byte	0x5
	.byte	0x3
	.4byte	_ZL15gxCurrentShader
	.uleb128 0x7
	.4byte	0x1ed
	.4byte	0x316
	.uleb128 0x8
	.4byte	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.byte	0x14
	.4byte	0x306
	.byte	0x5
	.byte	0x3
	.4byte	_ZL9gxvtxfmts
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LFB39-.Ltext0
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
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE40-.Ltext0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"wgPipe"
.LASF28:
	.string	"gx_defaultShader"
.LASF21:
	.string	"WGPipe"
.LASF37:
	.string	"_wgpipe"
.LASF2:
	.string	"int8_t"
.LASF32:
	.string	"gxshader_t"
.LASF5:
	.string	"short int"
.LASF35:
	.string	"GNU C++ 4.6.3"
.LASF34:
	.string	"gxvtxfmts"
.LASF30:
	.string	"gx_worldBumpShader"
.LASF43:
	.string	"_Z21qgxGetCurrentGXVtxFmtv"
.LASF24:
	.string	"numcolors"
.LASF29:
	.string	"gx_ambientShader"
.LASF27:
	.string	"gx_noShader"
.LASF3:
	.string	"uint8_t"
.LASF33:
	.string	"gxCurrentShader"
.LASF25:
	.string	"numtexmaps"
.LASF17:
	.string	"float"
.LASF11:
	.string	"long long int"
.LASF40:
	.string	"qgxInitGXShader"
.LASF45:
	.string	"_Z20qgxInitDefaultShaderv"
.LASF31:
	.string	"gx_shadowShader"
.LASF0:
	.string	"unsigned char"
.LASF38:
	.string	"gxvtxfmt_s"
.LASF26:
	.string	"gxvtxfmt_t"
.LASF13:
	.string	"vu16"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF6:
	.string	"uint16_t"
.LASF7:
	.string	"short unsigned int"
.LASF14:
	.string	"vu32"
.LASF20:
	.string	"char"
.LASF8:
	.string	"int32_t"
.LASF4:
	.string	"int16_t"
.LASF39:
	.string	"10gxshader_t"
.LASF36:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_shader.cpp"
.LASF19:
	.string	"vf32"
.LASF23:
	.string	"numnormals"
.LASF15:
	.string	"vs16"
.LASF16:
	.string	"vs32"
.LASF22:
	.string	"gxvtxfmt"
.LASF42:
	.string	"qgxGetCurrentGXVtxFmt"
.LASF18:
	.string	"double"
.LASF41:
	.string	"_Z15qgxInitGXShaderv"
.LASF44:
	.string	"qgxInitDefaultShader"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
