	.file	"gl_vidogc.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl VID_Init
	.type	VID_Init, @function
VID_Init:
.LFB61:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_vidogc.c"
	.loc 1 27 0
	.cfi_startproc
.LVL0:
	stwu 1,-160(1)
.LCFI0:
	.cfi_def_cfa_offset 160
	mflr 0
	stw 30,152(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,156(1)
	.loc 1 31 0
	li 3,200
.LVL1:
	lis 31,vid@ha
	.cfi_offset 31, -4
	.loc 1 27 0
	stw 0,164(1)
	.loc 1 31 0
	la 31,vid@l(31)
	.cfi_offset 65, 4
	bl glutGet
	stw 3,20(31)
	.loc 1 32 0
	li 3,201
	bl glutGet
	.loc 1 35 0
	lis 11,host_colormap@ha
	lwz 8,host_colormap@l(11)
	.loc 1 33 0
	li 7,320
	.loc 1 37 0
	lwz 9,20(31)
	lis 11,.LANCHOR0@ha
	la 10,.LANCHOR0@l(11)
	.loc 1 32 0
	mr 0,3
	.loc 1 33 0
	stw 7,56(31)
	.loc 1 34 0
	li 7,200
	stw 7,60(31)
	.loc 1 43 0
	li 4,0
	.loc 1 35 0
	stw 8,4(31)
	.loc 1 43 0
	li 3,0
	.loc 1 38 0
	stw 0,4(10)
	.loc 1 32 0
	stw 0,24(31)
	.loc 1 40 0
	stw 0,52(31)
	.loc 1 41 0
	stw 9,48(31)
	.loc 1 37 0
	stw 9,.LANCHOR0@l(11)
	.loc 1 43 0
	bl glutInit
	.loc 1 44 0
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	bl glutCreateWindow
	.loc 1 45 0
	lwz 3,20(31)
	lwz 4,24(31)
	bl glutInitWindowSize
	.loc 1 47 0
	lwz 11,24(31)
	lwz 9,20(31)
	lis 0,0x4330
	stw 11,140(1)
	stw 0,136(1)
	stw 9,148(1)
	lis 9,.LC2@ha
	stw 0,144(1)
	.loc 1 48 0
	li 0,2
	.loc 1 47 0
	lfd 13,136(1)
	lfd 12,144(1)
	lfs 0,.LC2@l(9)
	lis 9,.LC3@ha
	.loc 1 48 0
	stw 0,32(31)
	.loc 1 47 0
	fsub 13,13,0
	fsub 0,12,0
	frsp 13,13
	frsp 0,0
	fdivs 0,13,0
	lfd 13,.LC3@l(9)
	fmul 0,0,13
	frsp 0,0
	stfs 0,28(31)
	.loc 1 51 0
	bl GL_Init
	.loc 1 53 0
	bl GX_InitGXExt
	.loc 1 55 0
	lis 5,com_gamedir@ha
	lis 4,.LC4@ha
	la 5,com_gamedir@l(5)
	la 4,.LC4@l(4)
	addi 3,1,8
	crxor 6,6,6
	bl sprintf
	.loc 1 56 0
	lis 3,.LC5@ha
	addi 4,1,8
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl Con_SafePrintf
	.loc 1 59 0
	mr 3,30
	bl VID_SetPalette
	.loc 1 61 0
	lwz 4,20(31)
	lwz 5,24(31)
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl Con_SafePrintf
	.loc 1 63 0
	li 0,1
	stw 0,36(31)
	.loc 1 65 0
	lwz 0,164(1)
	lwz 30,152(1)
.LVL2:
	mtlr 0
	lwz 31,156(1)
	addi 1,1,160
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE61:
	.size	VID_Init, .-VID_Init
	.align 2
	.globl VID_Setup
	.type	VID_Setup, @function
VID_Setup:
.LFB62:
	.loc 1 67 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 71 0
	li 3,18
	.loc 1 67 0
	stw 0,12(1)
	.loc 1 71 0
	.cfi_offset 65, 4
	bl glutInitDisplayMode
	.loc 1 73 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE62:
	.size	VID_Setup, .-VID_Setup
	.align 2
	.globl VID_Shutdown
	.type	VID_Shutdown, @function
VID_Shutdown:
.LFB63:
	.loc 1 75 0
	.cfi_startproc
	.loc 1 77 0
	blr
	.cfi_endproc
.LFE63:
	.size	VID_Shutdown, .-VID_Shutdown
	.align 2
	.globl GL_BeginRendering
	.type	GL_BeginRendering, @function
GL_BeginRendering:
.LFB64:
	.loc 1 79 0
	.cfi_startproc
.LVL3:
	.loc 1 82 0
	lis 9,.LANCHOR0@ha
	.loc 1 81 0
	li 0,0
	.loc 1 82 0
	la 10,.LANCHOR0@l(9)
	lwz 11,.LANCHOR0@l(9)
	.loc 1 83 0
	lwz 9,4(10)
	.loc 1 85 0
	.loc 1 81 0
	stw 0,0(4)
	stw 0,0(3)
	.loc 1 82 0
	stw 11,0(5)
	.loc 1 83 0
	stw 9,0(6)
	.loc 1 85 0
	blr
	.cfi_endproc
.LFE64:
	.size	GL_BeginRendering, .-GL_BeginRendering
	.align 2
	.globl GL_EndRendering
	.type	GL_EndRendering, @function
GL_EndRendering:
.LFB65:
	.loc 1 88 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 89 0
	.cfi_offset 65, 4
	bl glFlush
	.loc 1 90 0
	bl glutSwapBuffers
	.loc 1 91 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE65:
	.size	GL_EndRendering, .-GL_EndRendering
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1501560832
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC3:
	.4byte	1073042773
	.4byte	1431655765
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	""
	.zero	3
.LC4:
	.string	"%s/glquake"
	.zero	1
.LC5:
	.string	"Create GL dir %s\n"
	.zero	2
.LC6:
	.string	"Video mode %dx%d initialized.\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	scr_width, @object
	.size	scr_width, 4
scr_width:
	.zero	4
	.type	scr_height, @object
	.size	scr_height, 4
scr_height:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x791
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x1
	.4byte	.LASF104
	.4byte	.LASF105
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
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	0x48
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF106
	.byte	0x4
	.byte	0x2
	.2byte	0x490
	.4byte	0xea
	.uleb128 0x6
	.string	"U8"
	.byte	0x2
	.2byte	0x492
	.4byte	0xea
	.uleb128 0x6
	.string	"S8"
	.byte	0x2
	.2byte	0x493
	.4byte	0xef
	.uleb128 0x6
	.string	"U16"
	.byte	0x2
	.2byte	0x494
	.4byte	0xf4
	.uleb128 0x6
	.string	"S16"
	.byte	0x2
	.2byte	0x495
	.4byte	0xf9
	.uleb128 0x6
	.string	"U32"
	.byte	0x2
	.2byte	0x496
	.4byte	0x77
	.uleb128 0x6
	.string	"S32"
	.byte	0x2
	.2byte	0x497
	.4byte	0xfe
	.uleb128 0x6
	.string	"F32"
	.byte	0x2
	.2byte	0x498
	.4byte	0x6b
	.byte	0
	.uleb128 0x4
	.4byte	0x2c
	.uleb128 0x4
	.4byte	0x25
	.uleb128 0x4
	.4byte	0x3a
	.uleb128 0x4
	.4byte	0x33
	.uleb128 0x4
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x499
	.4byte	0x8a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x8
	.byte	0x4
	.4byte	0x41
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.byte	0x93
	.4byte	0x48
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x22
	.4byte	0x7c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x134
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x160
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x70
	.4byte	0x170
	.uleb128 0xb
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x180
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x190
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x5d
	.4byte	0x1a6
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x134
	.4byte	0x1b6
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1a
	.4byte	0x134
	.uleb128 0xc
	.byte	0x44
	.byte	0x5
	.byte	0x22
	.4byte	0x2b8
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x5
	.byte	0x24
	.4byte	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x5
	.byte	0x25
	.4byte	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x5
	.byte	0x26
	.4byte	0x2be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x5
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x5
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x5
	.byte	0x2b
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2e
	.4byte	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.byte	0x34
	.4byte	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1b6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x5
	.byte	0x36
	.4byte	0x1c1
	.uleb128 0xa
	.4byte	0x70
	.4byte	0x2df
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x16
	.4byte	0x5d
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x17
	.4byte	0x2f5
	.uleb128 0xa
	.4byte	0x2df
	.4byte	0x305
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x14
	.byte	0x7
	.byte	0x52
	.4byte	0x358
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x7
	.byte	0x54
	.4byte	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x7
	.byte	0x55
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0x56
	.4byte	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x7
	.byte	0x57
	.4byte	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xf
	.string	"pad"
	.byte	0x7
	.byte	0x58
	.4byte	0x358
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x134
	.4byte	0x368
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0x59
	.4byte	0x305
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x48
	.byte	0x7
	.byte	0x5b
	.4byte	0x428
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x7
	.byte	0x5d
	.4byte	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x7
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x7
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x7
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x7
	.byte	0x61
	.4byte	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x7
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x7
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x7
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x7
	.byte	0x64
	.4byte	0x553
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x7
	.byte	0x65
	.4byte	0x553
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0x66
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5c
	.byte	0x7
	.byte	0x96
	.4byte	0x54d
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9a
	.4byte	0x63c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x7
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x7
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x7
	.byte	0xa0
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x7
	.byte	0xa1
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x7
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x7
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x7
	.byte	0xa5
	.4byte	0x642
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x7
	.byte	0xa6
	.4byte	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x7
	.byte	0xa7
	.4byte	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x7
	.byte	0xa9
	.4byte	0x648
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x7
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x7
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x7
	.byte	0xb0
	.4byte	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.byte	0xb1
	.4byte	0x150
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x7
	.byte	0xb2
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x7
	.byte	0xb3
	.4byte	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x428
	.uleb128 0x8
	.byte	0x4
	.4byte	0x373
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x7
	.byte	0x67
	.4byte	0x373
	.uleb128 0xc
	.byte	0x2c
	.byte	0x7
	.byte	0x7e
	.4byte	0x5a5
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x7
	.byte	0x80
	.4byte	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x7
	.byte	0x81
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x7
	.byte	0x82
	.4byte	0x5a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x559
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x7
	.byte	0x84
	.4byte	0x564
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x1c
	.byte	0x7
	.byte	0x8a
	.4byte	0x625
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x7
	.byte	0x8c
	.4byte	0x625
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x7
	.byte	0x8d
	.4byte	0x625
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x7
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x7
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x7
	.byte	0x92
	.4byte	0x62b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x7
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x625
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x7
	.byte	0x94
	.4byte	0x5b6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x368
	.uleb128 0x8
	.byte	0x4
	.4byte	0x631
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5ab
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x7
	.byte	0xb4
	.4byte	0x428
	.uleb128 0x8
	.byte	0x4
	.4byte	0x64e
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST0
	.4byte	0x697
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.byte	0x1b
	.4byte	0x10f
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x1
	.byte	0x1c
	.4byte	0x2cf
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF90
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST2
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF93
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x709
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x4f
	.4byte	0x11c
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x4f
	.4byte	0x11c
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4f
	.4byte	0x11c
	.byte	0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4f
	.4byte	0x11c
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	scr_width
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x1
	.byte	0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	scr_height
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x548
	.4byte	0x74e
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x753
	.uleb128 0x8
	.byte	0x4
	.4byte	0x103
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x4
	.byte	0xb1
	.4byte	0x2cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"vid"
	.byte	0x5
	.byte	0x38
	.4byte	0x2c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x8
	.2byte	0xc2c
	.4byte	0x659
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x14e
	.4byte	0x14a
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE61-.Ltext0
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
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB62-.Ltext0
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
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB65-.Ltext0
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
	.4byte	.LFE65-.Ltext0
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
.LASF105:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF76:
	.string	"texture_t"
.LASF99:
	.string	"wgPipe"
.LASF7:
	.string	"float"
.LASF54:
	.string	"alternate_anims"
.LASF13:
	.string	"WGPipe"
.LASF96:
	.string	"gldir"
.LASF9:
	.string	"char"
.LASF90:
	.string	"VID_Setup"
.LASF41:
	.string	"type"
.LASF104:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_vidogc.c"
.LASF49:
	.string	"texturechain"
.LASF18:
	.string	"pixel_t"
.LASF17:
	.string	"qboolean"
.LASF55:
	.string	"offsets"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"aspect"
.LASF42:
	.string	"signbits"
.LASF89:
	.string	"msurface_t"
.LASF97:
	.string	"scr_width"
.LASF28:
	.string	"recalc_refdef"
.LASF32:
	.string	"conheight"
.LASF35:
	.string	"direct"
.LASF48:
	.string	"gl_lumitex"
.LASF21:
	.string	"colormap16"
.LASF61:
	.string	"numedges"
.LASF36:
	.string	"viddef_t"
.LASF77:
	.string	"vecs"
.LASF102:
	.string	"host_colormap"
.LASF24:
	.string	"width"
.LASF44:
	.string	"mplane_s"
.LASF43:
	.string	"mplane_t"
.LASF5:
	.string	"long long int"
.LASF6:
	.string	"long long unsigned int"
.LASF66:
	.string	"polys"
.LASF101:
	.string	"causticschain"
.LASF12:
	.string	"long int"
.LASF20:
	.string	"colormap"
.LASF94:
	.string	"palette"
.LASF34:
	.string	"maxwarpheight"
.LASF29:
	.string	"conbuffer"
.LASF75:
	.string	"samples"
.LASF31:
	.string	"conwidth"
.LASF30:
	.string	"conrowbytes"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"byte"
.LASF22:
	.string	"fullbright"
.LASF38:
	.string	"vec3_t"
.LASF46:
	.string	"name"
.LASF15:
	.string	"long double"
.LASF37:
	.string	"vec_t"
.LASF72:
	.string	"styles"
.LASF68:
	.string	"texinfo"
.LASF57:
	.string	"visframe"
.LASF84:
	.string	"numverts"
.LASF73:
	.string	"cached_light"
.LASF91:
	.string	"VID_Shutdown"
.LASF0:
	.string	"signed char"
.LASF59:
	.string	"flags"
.LASF82:
	.string	"next"
.LASF63:
	.string	"extents"
.LASF67:
	.string	"shadowchain"
.LASF25:
	.string	"height"
.LASF4:
	.string	"unsigned int"
.LASF92:
	.string	"VID_Init"
.LASF50:
	.string	"anim_total"
.LASF52:
	.string	"anim_max"
.LASF40:
	.string	"dist"
.LASF14:
	.string	"GLenum"
.LASF60:
	.string	"firstedge"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"numpages"
.LASF81:
	.string	"glpoly_s"
.LASF88:
	.string	"glpoly_t"
.LASF51:
	.string	"anim_min"
.LASF71:
	.string	"lightmaptexturenum"
.LASF10:
	.string	"_Bool"
.LASF79:
	.string	"texture"
.LASF19:
	.string	"buffer"
.LASF85:
	.string	"lightTimestamp"
.LASF62:
	.string	"texturemins"
.LASF86:
	.string	"neighbours"
.LASF45:
	.string	"texture_s"
.LASF39:
	.string	"normal"
.LASF11:
	.string	"long unsigned int"
.LASF80:
	.string	"mtexinfo_t"
.LASF100:
	.string	"com_gamedir"
.LASF8:
	.string	"double"
.LASF33:
	.string	"maxwarpwidth"
.LASF69:
	.string	"dlightframe"
.LASF95:
	.string	"GL_EndRendering"
.LASF98:
	.string	"scr_height"
.LASF47:
	.string	"gl_texturenum"
.LASF74:
	.string	"cached_dlight"
.LASF106:
	.string	"_wgpipe"
.LASF58:
	.string	"plane"
.LASF64:
	.string	"light_s"
.LASF65:
	.string	"light_t"
.LASF78:
	.string	"mipadjust"
.LASF70:
	.string	"dlightbits"
.LASF103:
	.string	"GNU C 4.6.3"
.LASF87:
	.string	"firstvertex"
.LASF93:
	.string	"GL_BeginRendering"
.LASF83:
	.string	"chain"
.LASF23:
	.string	"rowbytes"
.LASF56:
	.string	"msurface_s"
.LASF53:
	.string	"anim_next"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
