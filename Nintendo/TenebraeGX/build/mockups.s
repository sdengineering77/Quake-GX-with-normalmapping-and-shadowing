	.file	"mockups.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl R_LoadVertexProgram
	.type	R_LoadVertexProgram, @function
R_LoadVertexProgram:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/mockups.c"
	.loc 1 48 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 49 0
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	.loc 1 48 0
	stw 0,12(1)
	.loc 1 49 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 50 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE38:
	.size	R_LoadVertexProgram, .-R_LoadVertexProgram
	.align 2
	.globl GL_LoadShader
	.type	GL_LoadShader, @function
GL_LoadShader:
.LFB39:
	.loc 1 53 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 54 0
	lis 3,.LC1@ha
.LVL1:
	la 3,.LC1@l(3)
	.loc 1 53 0
	stw 0,12(1)
	.loc 1 54 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
.LVL2:
	.loc 1 56 0
	lwz 0,12(1)
	li 3,0
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE39:
	.size	GL_LoadShader, .-GL_LoadShader
	.align 2
	.globl M_Keydown
	.type	M_Keydown, @function
M_Keydown:
.LFB40:
	.loc 1 60 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 61 0
	lis 3,.LC2@ha
.LVL4:
	la 3,.LC2@l(3)
	.loc 1 60 0
	stw 0,12(1)
	.loc 1 61 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 62 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE40:
	.size	M_Keydown, .-M_Keydown
	.align 2
	.globl M_ToggleMenu_f
	.type	M_ToggleMenu_f, @function
M_ToggleMenu_f:
.LFB41:
	.loc 1 64 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 65 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	.loc 1 64 0
	stw 0,12(1)
	.loc 1 65 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 66 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE41:
	.size	M_ToggleMenu_f, .-M_ToggleMenu_f
	.align 2
	.globl M_Init
	.type	M_Init, @function
M_Init:
.LFB42:
	.loc 1 68 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 69 0
	lis 3,.LC4@ha
	la 3,.LC4@l(3)
	.loc 1 68 0
	stw 0,12(1)
	.loc 1 69 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 70 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE42:
	.size	M_Init, .-M_Init
	.align 2
	.globl M_Menu_Quit_f
	.type	M_Menu_Quit_f, @function
M_Menu_Quit_f:
.LFB43:
	.loc 1 72 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 73 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	.loc 1 72 0
	stw 0,12(1)
	.loc 1 73 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 74 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI11:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE43:
	.size	M_Menu_Quit_f, .-M_Menu_Quit_f
	.align 2
	.globl M_Menu_Main_f
	.type	M_Menu_Main_f, @function
M_Menu_Main_f:
.LFB44:
	.loc 1 76 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 77 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	.loc 1 76 0
	stw 0,12(1)
	.loc 1 77 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 78 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI13:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE44:
	.size	M_Menu_Main_f, .-M_Menu_Main_f
	.align 2
	.globl M_DrawPic
	.type	M_DrawPic, @function
M_DrawPic:
.LFB45:
	.loc 1 80 0
	.cfi_startproc
.LVL5:
	mflr 0
	stwu 1,-8(1)
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 81 0
	lis 3,.LC7@ha
.LVL6:
	la 3,.LC7@l(3)
	.loc 1 80 0
	stw 0,12(1)
	.loc 1 81 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_DPrintf
.LVL7:
	.loc 1 82 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI15:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE45:
	.size	M_DrawPic, .-M_DrawPic
	.align 2
	.globl M_Draw
	.type	M_Draw, @function
M_Draw:
.LFB46:
	.loc 1 84 0
	.cfi_startproc
	.loc 1 86 0
	blr
	.cfi_endproc
.LFE46:
	.size	M_Draw, .-M_Draw
	.globl qglPNTrianglesiATI
	.comm	causticschain,4,4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"R_LoadVertexProgram()\n"
	.zero	1
.LC1:
	.string	"GL_LoadShader( int target, const char *fileName )\n"
	.zero	1
.LC2:
	.string	"M_Keydown (int key)\n"
	.zero	3
.LC3:
	.string	"M_ToggleMenu_f (void)\n"
	.zero	1
.LC4:
	.string	"M_Init (void)\n"
	.zero	1
.LC5:
	.string	"M_Menu_Quit_f (void)\n"
	.zero	2
.LC6:
	.string	"M_Menu_Main_f (void)\n"
	.zero	2
.LC7:
	.string	"M_DrawPic (int x, int y, qpic_t *pic)\n"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	qglPNTrianglesiATI, @object
	.size	qglPNTrianglesiATI, 4
qglPNTrianglesiATI:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/wad.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glext.h"
	.file 8 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x707
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x71
	.uleb128 0x5
	.4byte	0x64
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
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x7d
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xad
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.4byte	0x92
	.uleb128 0x8
	.4byte	0x41
	.4byte	0xca
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x64
	.4byte	0xda
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xea
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x7d
	.4byte	0x110
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x120
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.4byte	0x7d
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x17
	.4byte	0x136
	.uleb128 0x8
	.4byte	0x120
	.4byte	0x146
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.byte	0x27
	.4byte	0x179
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x29
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2a
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2b
	.4byte	0x146
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x14
	.byte	0x5
	.byte	0x52
	.4byte	0x1d7
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x54
	.4byte	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x55
	.4byte	0x7d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x56
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x57
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.string	"pad"
	.byte	0x5
	.byte	0x58
	.4byte	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1e7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x59
	.4byte	0x184
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x48
	.byte	0x5
	.byte	0x5b
	.4byte	0x2a7
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x5d
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x61
	.4byte	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x64
	.4byte	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x65
	.4byte	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x66
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5c
	.byte	0x5
	.byte	0x96
	.4byte	0x3cc
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x9a
	.4byte	0x4bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0xa0
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0xa1
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0xa5
	.4byte	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0xa6
	.4byte	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0xa7
	.4byte	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xa9
	.4byte	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xb0
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xb1
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xb2
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xb3
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2a7
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1f2
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x5
	.byte	0x67
	.4byte	0x1f2
	.uleb128 0xa
	.byte	0x2c
	.byte	0x5
	.byte	0x7e
	.4byte	0x424
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0x80
	.4byte	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0x81
	.4byte	0x7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0x82
	.4byte	0x424
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3d8
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x5
	.byte	0x84
	.4byte	0x3e3
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x1c
	.byte	0x5
	.byte	0x8a
	.4byte	0x4a4
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0x8c
	.4byte	0x4a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0x8d
	.4byte	0x4a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x5
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x5
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x5
	.byte	0x92
	.4byte	0x4aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x5
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x435
	.uleb128 0x4
	.byte	0x4
	.4byte	0x4a4
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x5
	.byte	0x94
	.4byte	0x435
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x4
	.byte	0x4
	.4byte	0x4b0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x42a
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x5
	.byte	0xb4
	.4byte	0x2a7
	.uleb128 0x4
	.byte	0x4
	.4byte	0x4cd
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0x6
	.byte	0x93
	.4byte	0x48
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x6
	.byte	0x99
	.4byte	0x41
	.uleb128 0x4
	.byte	0x4
	.4byte	0x4fa
	.uleb128 0xe
	.byte	0x1
	.4byte	0x50b
	.uleb128 0xf
	.4byte	0x4de
	.uleb128 0xf
	.4byte	0x4e9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x1840
	.4byte	0x4f4
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x4
	.byte	0x8
	.2byte	0x490
	.4byte	0x577
	.uleb128 0x12
	.string	"U8"
	.byte	0x8
	.2byte	0x492
	.4byte	0x577
	.uleb128 0x12
	.string	"S8"
	.byte	0x8
	.2byte	0x493
	.4byte	0x57c
	.uleb128 0x12
	.string	"U16"
	.byte	0x8
	.2byte	0x494
	.4byte	0x581
	.uleb128 0x12
	.string	"S16"
	.byte	0x8
	.2byte	0x495
	.4byte	0x586
	.uleb128 0x12
	.string	"U32"
	.byte	0x8
	.2byte	0x496
	.4byte	0x58b
	.uleb128 0x12
	.string	"S32"
	.byte	0x8
	.2byte	0x497
	.4byte	0x590
	.uleb128 0x12
	.string	"F32"
	.byte	0x8
	.2byte	0x498
	.4byte	0x9d
	.byte	0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x7
	.4byte	0x3a
	.uleb128 0x7
	.4byte	0x33
	.uleb128 0x7
	.4byte	0x48
	.uleb128 0x7
	.4byte	0x41
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x499
	.4byte	0x517
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF94
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST1
	.4byte	0x5f2
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.byte	0x35
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0x35
	.4byte	0x6b
	.4byte	.LLST3
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST4
	.4byte	0x61b
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.byte	0x3c
	.4byte	0x41
	.4byte	.LLST5
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST6
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST7
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST8
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST9
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST10
	.4byte	0x6b2
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x50
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x50
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x17
	.string	"pic"
	.byte	0x1
	.byte	0x50
	.4byte	0x6b2
	.4byte	.LLST13
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x179
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x9
	.2byte	0xc2c
	.4byte	0x4d8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x548
	.4byte	0x6ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.4byte	0x6f2
	.uleb128 0x4
	.byte	0x4
	.4byte	0x595
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0x1
	.byte	0x29
	.4byte	0x50b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglPNTrianglesiATI
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LFB38-.Ltext0
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
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB40-.Ltext0
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
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB42-.Ltext0
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
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB43-.Ltext0
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
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB44-.Ltext0
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
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB45-.Ltext0
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
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x55
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
.LASF28:
	.string	"texture_s"
.LASF59:
	.string	"texture_t"
.LASF88:
	.string	"wgPipe"
.LASF22:
	.string	"normal"
.LASF49:
	.string	"polys"
.LASF76:
	.string	"WGPipe"
.LASF8:
	.string	"char"
.LASF23:
	.string	"dist"
.LASF77:
	.string	"target"
.LASF2:
	.string	"short int"
.LASF50:
	.string	"shadowchain"
.LASF32:
	.string	"texturechain"
.LASF91:
	.string	"d:/Data/Nintendo/TenebraeGX/src/mockups.c"
.LASF14:
	.string	"qboolean"
.LASF94:
	.string	"GL_LoadShader"
.LASF25:
	.string	"signbits"
.LASF36:
	.string	"anim_next"
.LASF66:
	.string	"chain"
.LASF69:
	.string	"neighbours"
.LASF37:
	.string	"alternate_anims"
.LASF92:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF18:
	.string	"width"
.LASF46:
	.string	"extents"
.LASF10:
	.string	"float"
.LASF26:
	.string	"mplane_t"
.LASF74:
	.string	"GLint"
.LASF5:
	.string	"long long int"
.LASF38:
	.string	"offsets"
.LASF67:
	.string	"numverts"
.LASF87:
	.string	"causticschain"
.LASF12:
	.string	"long int"
.LASF31:
	.string	"gl_lumitex"
.LASF44:
	.string	"numedges"
.LASF58:
	.string	"samples"
.LASF57:
	.string	"cached_dlight"
.LASF13:
	.string	"byte"
.LASF29:
	.string	"name"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"vec_t"
.LASF75:
	.string	"PFNGLPNTRIANGLESIATIPROC"
.LASF55:
	.string	"styles"
.LASF51:
	.string	"texinfo"
.LASF40:
	.string	"visframe"
.LASF17:
	.string	"vec3_t"
.LASF56:
	.string	"cached_light"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"flags"
.LASF6:
	.string	"long long unsigned int"
.LASF24:
	.string	"type"
.LASF19:
	.string	"height"
.LASF4:
	.string	"unsigned int"
.LASF33:
	.string	"anim_total"
.LASF35:
	.string	"anim_max"
.LASF82:
	.string	"M_Menu_Quit_f"
.LASF27:
	.string	"mplane_s"
.LASF73:
	.string	"GLenum"
.LASF43:
	.string	"firstedge"
.LASF3:
	.string	"short unsigned int"
.LASF64:
	.string	"glpoly_s"
.LASF71:
	.string	"glpoly_t"
.LASF85:
	.string	"M_DrawPic"
.LASF34:
	.string	"anim_min"
.LASF54:
	.string	"lightmaptexturenum"
.LASF15:
	.string	"_Bool"
.LASF11:
	.string	"long double"
.LASF62:
	.string	"texture"
.LASF68:
	.string	"lightTimestamp"
.LASF20:
	.string	"data"
.LASF45:
	.string	"texturemins"
.LASF83:
	.string	"M_Menu_Main_f"
.LASF84:
	.string	"M_Keydown"
.LASF52:
	.string	"dlightframe"
.LASF7:
	.string	"long unsigned int"
.LASF63:
	.string	"mtexinfo_t"
.LASF9:
	.string	"double"
.LASF89:
	.string	"qglPNTrianglesiATI"
.LASF81:
	.string	"M_Init"
.LASF39:
	.string	"msurface_s"
.LASF72:
	.string	"msurface_t"
.LASF30:
	.string	"gl_texturenum"
.LASF93:
	.string	"_wgpipe"
.LASF41:
	.string	"plane"
.LASF79:
	.string	"R_LoadVertexProgram"
.LASF47:
	.string	"light_s"
.LASF48:
	.string	"light_t"
.LASF78:
	.string	"fileName"
.LASF61:
	.string	"mipadjust"
.LASF53:
	.string	"dlightbits"
.LASF21:
	.string	"qpic_t"
.LASF90:
	.string	"GNU C 4.6.3"
.LASF86:
	.string	"M_Draw"
.LASF70:
	.string	"firstvertex"
.LASF60:
	.string	"vecs"
.LASF65:
	.string	"next"
.LASF80:
	.string	"M_ToggleMenu_f"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
