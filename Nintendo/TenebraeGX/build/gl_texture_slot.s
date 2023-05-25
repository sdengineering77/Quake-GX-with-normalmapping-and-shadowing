	.file	"gl_texture_slot.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl initTextureSlots
	.type	initTextureSlots, @function
initTextureSlots:
.LFB75:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_texture_slot.c"
	.loc 1 123 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 1 124 0
	lis 9,.LANCHOR0@ha
	.loc 1 123 0
	stw 28,8(1)
	.loc 1 124 0
	li 28,0
	.cfi_offset 28, -16
	.cfi_register 65, 0
	.loc 1 123 0
	stw 0,28(1)
.LBB2:
	.loc 1 128 0
	mr 0,28
	.cfi_offset 65, 4
.LBE2:
	.loc 1 123 0
	stw 31,20(1)
	.loc 1 124 0
	la 31,.LANCHOR0@l(9)
	.cfi_offset 31, -4
	stw 28,.LANCHOR0@l(9)
.LVL0:
.LBB3:
	.loc 1 128 0
	mr 9,28
.LBE3:
	.loc 1 123 0
	stw 29,12(1)
	stw 30,16(1)
.LBB4:
	.loc 1 128 0
 # 128 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_texture_slot.c" 1
	mfmsr 9
rlwinm 0,9,0,17,15
mtmsr 0
extrwi 9,9,1,16
 # 0 "" 2
.LVL1:
	mr 29,9
	.cfi_offset 30, -8
	.cfi_offset 29, -12
.LVL2:
.LBE4:
	.loc 1 130 0
	bl SYS_GetArena2Lo
.LVL3:
	stw 3,4(31)
	.loc 1 131 0
	bl SYS_GetArena2Hi
	.loc 1 132 0
	lwz 0,4(31)
	.loc 1 131 0
	stw 3,8(31)
	.loc 1 132 0
	subf 30,0,3
.LVL4:
	.loc 1 133 0
	add 3,0,30
	bl SYS_SetArena2Lo
.LVL5:
.LBB5:
	.loc 1 135 0
 # 135 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_texture_slot.c" 1
	    cmpwi 29,0
    beq 1f
    mfmsr 28
    ori 28,28,0x8000
    mtmsr 28
1:
 # 0 "" 2
.LVL6:
.LBE5:
	.loc 1 137 0
	lwz 29,4(31)
	mr 5,30
	li 4,0
	mr 3,29
	bl memset
	.loc 1 139 0
	addi 3,31,12
	mr 4,29
	mr 5,30
	li 6,32
	bl __lwp_heap_init
.LVL7:
	.loc 1 143 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE75:
	.size	initTextureSlots, .-initTextureSlots
	.align 2
	.globl getTextureSlot
	.type	getTextureSlot, @function
getTextureSlot:
.LFB76:
	.loc 1 146 0
	.cfi_startproc
.LVL8:
	mflr 0
	stwu 1,-32(1)
.LCFI2:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 150 0
	lis 9,.LANCHOR0@ha
	.loc 1 146 0
	mr 4,3
	stw 30,24(1)
	.loc 1 150 0
	la 30,.LANCHOR0@l(9)
	.cfi_offset 30, -8
	.loc 1 146 0
	stw 0,36(1)
	.loc 1 151 0
	addi 30,30,12
	.loc 1 150 0
	lwz 0,.LANCHOR0@l(9)
	.cfi_offset 65, 4
	.loc 1 146 0
	stw 31,28(1)
	.loc 1 150 0
	add 0,3,0
	.loc 1 151 0
	mr 3,30
.LVL9:
	.loc 1 150 0
	stw 0,.LANCHOR0@l(9)
	.loc 1 151 0
	.cfi_offset 31, -4
	bl __lwp_heap_allocate
.LVL10:
	mr 31,3
.LVL11:
	.loc 1 153 0
	addi 4,1,8
	mr 3,30
.LVL12:
	bl __lwp_heap_getinfo
	.loc 1 155 0
	lwz 5,12(1)
	lwz 4,20(1)
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	add 4,5,4
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 159 0
	lwz 0,36(1)
	mr 3,31
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL13:
	addi 1,1,32
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE76:
	.size	getTextureSlot, .-getTextureSlot
	.align 2
	.globl releaseTextureSlot
	.type	releaseTextureSlot, @function
releaseTextureSlot:
.LFB77:
	.loc 1 162 0
	.cfi_startproc
.LVL14:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 163 0
	lis 9,.LANCHOR0@ha
	.loc 1 162 0
	mr 11,3
	.loc 1 163 0
	la 3,.LANCHOR0@l(9)
.LVL15:
	.loc 1 162 0
	stw 0,12(1)
	.loc 1 164 0
	addi 3,3,12
	.loc 1 163 0
	lwz 0,.LANCHOR0@l(9)
	.cfi_offset 65, 4
	subf 0,4,0
	.loc 1 164 0
	mr 4,11
.LVL16:
	.loc 1 163 0
	stw 0,.LANCHOR0@l(9)
	.loc 1 164 0
	bl __lwp_heap_free
.LVL17:
	cmpwi 7,3,0
	bne+ 7,.L3
	.loc 1 165 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl printf
.L3:
	.loc 1 168 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE77:
	.size	releaseTextureSlot, .-releaseTextureSlot
	.align 2
	.globl printTextureStats
	.type	printTextureStats, @function
printTextureStats:
.LFB78:
	.loc 1 171 0
	.cfi_startproc
	mflr 0
	.loc 1 172 0
	lis 9,.LANCHOR0@ha
	.loc 1 171 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 172 0
	lis 3,.LC2@ha
	lwz 4,.LANCHOR0@l(9)
	la 3,.LC2@l(3)
	.loc 1 171 0
	stw 0,12(1)
	.loc 1 172 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl printf
	.loc 1 173 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE78:
	.size	printTextureStats, .-printTextureStats
	.align 2
	.globl PreallocTexMem
	.type	PreallocTexMem, @function
PreallocTexMem:
.LFB79:
	.loc 1 177 0
	.cfi_startproc
.LVL18:
	.loc 1 178 0
	blr
	.cfi_endproc
.LFE79:
	.size	PreallocTexMem, .-PreallocTexMem
	.comm	call_offset,4,4
	.comm	read_mode,4,4
	.comm	glTexEnvs,864,4
	.comm	fog_color,4,1
	.comm	fog_density,4,4
	.comm	fog_endz,4,4
	.comm	fog_startz,4,4
	.comm	fog_mode,1,1
	.comm	fog_enable,1,1
	.comm	Trans,32,4
	.comm	_clearcolor,4,1
	.comm	copy_material,4,4
	.comm	copy_mat_enabled,1,1
	.comm	color_write_mask,4,4
	.comm	unpack,20,4
	.comm	pack,20,4
	.comm	point_size,4,4
	.comm	line_width,4,4
	.comm	normFar,4,4
	.comm	normNear,4,4
	.comm	viewPort,16,4
	.comm	scissorInfo,16,4
	.comm	scissor_test,1,1
	.comm	fb_max_width,4,4
	.comm	fb_max_height,4,4
	.comm	cur_state,4,4
	.comm	cull_mode,1,1
	.comm	blend_op,1,1
	.comm	blend_dst,1,1
	.comm	blend_src,1,1
	.comm	blend_type,1,1
	.comm	lighting,1,1
	.comm	gxwinding,4,4
	.comm	gxcullfaceanabled,1,1
	.comm	curmat,68,4
	.comm	globAmbient,16,4
	.comm	lights,1312,4
	.comm	cur_mode,4,4
	.comm	curmtx,4,4
	.comm	texture_stack,128,4
	.comm	projection_stack,16,4
	.comm	model_stack,16,4
	.comm	_cleardepth,4,4
	.comm	depthfunction,4,4
	.comm	depthupdate,1,1
	.comm	depthtestenabled,1,1
	.comm	cur_tex_client,4,4
	.comm	cur_tex,4,4
	.comm	_GLtype,4,4
	.comm	_type,4,4
	.comm	vert_i,4,4
	.comm	_colorelements,16000,32
	.comm	_texcoordelements,64000,32
	.comm	_vertexelements,12000,32
	.comm	_normalelements,12000,32
	.comm	color,20,4
	.comm	tex,160,4
	.comm	vert,20,4
	.comm	norm,20,4
	.comm	_temptexcoordelement,64,4
	.comm	_tempnormalelement,12,4
	.comm	_tempcolorelement,16,4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"tot %d free %d\n"
.LC1:
	.string	"gl2gx releaseTextureSlot: Error freeing data."
	.zero	2
.LC2:
	.string	"Total texture mem: %u\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	texMem, @object
	.size	texMem, 4
texMem:
	.zero	4
	.type	texMemStart, @object
	.size	texMemStart, 4
texMemStart:
	.zero	4
	.type	texMemEnd, @object
	.size	texMemEnd, 4
texMemEnd:
	.zero	4
	.type	texMemHeap, @object
	.size	texMemHeap, 28
texMemHeap:
	.zero	28
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 5 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/glint.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/include/mat_stack.h"
	.file 10 "c:/utils/devkitPro/libogc/include/ogc/lwp_heap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf21
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0x1
	.4byte	.LASF193
	.4byte	.LASF194
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x93
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x94
	.4byte	0x42
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
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x99
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x9d
	.4byte	0x62
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2a
	.4byte	0x42
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x50
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x6
	.string	"u8"
	.byte	0x5
	.byte	0x11
	.4byte	0xaf
	.uleb128 0x6
	.string	"u32"
	.byte	0x5
	.byte	0x13
	.4byte	0xba
	.uleb128 0x6
	.string	"f32"
	.byte	0x5
	.byte	0x2b
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10a
	.uleb128 0x9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0xc
	.byte	0x6
	.byte	0x5e
	.4byte	0x143
	.uleb128 0xb
	.string	"x"
	.byte	0x6
	.byte	0x5f
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x6
	.byte	0x5f
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"z"
	.byte	0x6
	.byte	0x5f
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x60
	.4byte	0x112
	.uleb128 0xc
	.4byte	.LASF195
	.byte	0x4
	.byte	0x7
	.2byte	0x490
	.4byte	0x1ae
	.uleb128 0xd
	.string	"U8"
	.byte	0x7
	.2byte	0x492
	.4byte	0x1ae
	.uleb128 0xd
	.string	"S8"
	.byte	0x7
	.2byte	0x493
	.4byte	0x1b3
	.uleb128 0xd
	.string	"U16"
	.byte	0x7
	.2byte	0x494
	.4byte	0x1b8
	.uleb128 0xd
	.string	"S16"
	.byte	0x7
	.2byte	0x495
	.4byte	0x1bd
	.uleb128 0xd
	.string	"U32"
	.byte	0x7
	.2byte	0x496
	.4byte	0xf8
	.uleb128 0xd
	.string	"S32"
	.byte	0x7
	.2byte	0x497
	.4byte	0x1c2
	.uleb128 0xd
	.string	"F32"
	.byte	0x7
	.2byte	0x498
	.4byte	0xf3
	.byte	0
	.uleb128 0x7
	.4byte	0x42
	.uleb128 0x7
	.4byte	0x49
	.uleb128 0x7
	.4byte	0x69
	.uleb128 0x7
	.4byte	0x50
	.uleb128 0x7
	.4byte	0x62
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x7
	.2byte	0x499
	.4byte	0x14e
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x7
	.2byte	0x49e
	.4byte	0x215
	.uleb128 0x10
	.string	"r"
	.byte	0x7
	.2byte	0x49f
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"g"
	.byte	0x7
	.2byte	0x4a0
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"b"
	.byte	0x7
	.2byte	0x4a1
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"a"
	.byte	0x7
	.2byte	0x4a2
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x7
	.2byte	0x4a3
	.4byte	0x1d3
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x40
	.byte	0x7
	.2byte	0x4f1
	.4byte	0x23e
	.uleb128 0x10
	.string	"val"
	.byte	0x7
	.2byte	0x4f2
	.4byte	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	0xdd
	.4byte	0x24e
	.uleb128 0x12
	.4byte	0x30
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x4f3
	.4byte	0x221
	.uleb128 0x13
	.byte	0x10
	.byte	0x8
	.byte	0x15
	.4byte	0x27b
	.uleb128 0xb
	.string	"v"
	.byte	0x8
	.byte	0x17
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"w"
	.byte	0x8
	.byte	0x18
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x8
	.byte	0x19
	.4byte	0x25a
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	0x2a7
	.uleb128 0xb
	.string	"s"
	.byte	0x8
	.byte	0x1d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"t"
	.byte	0x8
	.byte	0x1e
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1f
	.4byte	0x286
	.uleb128 0x13
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.4byte	0x2eb
	.uleb128 0xb
	.string	"r"
	.byte	0x8
	.byte	0x23
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"g"
	.byte	0x8
	.byte	0x24
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"b"
	.byte	0x8
	.byte	0x25
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"a"
	.byte	0x8
	.byte	0x26
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x27
	.4byte	0x2b2
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x14
	.byte	0x8
	.byte	0x42
	.4byte	0x347
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x8
	.byte	0x44
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"p"
	.byte	0x8
	.byte	0x45
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x8
	.byte	0x46
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x8
	.byte	0x47
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x8
	.byte	0x48
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x8
	.byte	0x49
	.4byte	0x2f6
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x10
	.byte	0x9
	.byte	0xc
	.4byte	0x397
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x9
	.byte	0xe
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x9
	.byte	0xf
	.4byte	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x9
	.byte	0x10
	.4byte	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"cur"
	.byte	0x9
	.byte	0x11
	.4byte	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x9
	.byte	0x12
	.4byte	0x352
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0xa4
	.byte	0x8
	.byte	0x83
	.4byte	0x45d
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x8
	.byte	0x85
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"obj"
	.byte	0x8
	.byte	0x87
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x89
	.4byte	0x27b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x8
	.byte	0x8b
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x8
	.byte	0x8d
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x8
	.byte	0x8e
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x8
	.byte	0x8f
	.4byte	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x8
	.byte	0x91
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x8
	.byte	0x92
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x8
	.byte	0x93
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x8
	.byte	0x94
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x8
	.byte	0x95
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x8
	.byte	0x96
	.4byte	0x3a2
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x44
	.byte	0x8
	.byte	0xa0
	.4byte	0x4bb
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x8
	.byte	0xa2
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x8
	.byte	0xa3
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x8
	.byte	0xa4
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x8
	.byte	0xa5
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x8
	.byte	0xa6
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa7
	.4byte	0x468
	.uleb128 0x15
	.4byte	.LASF196
	.byte	0x4
	.byte	0x8
	.byte	0xbf
	.4byte	0x4e5
	.uleb128 0x16
	.4byte	.LASF57
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF58
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF59
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x8
	.byte	0xc4
	.4byte	0x4c6
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x10
	.byte	0x8
	.byte	0xe8
	.4byte	0x531
	.uleb128 0xb
	.string	"x"
	.byte	0x8
	.byte	0xea
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"y"
	.byte	0x8
	.byte	0xeb
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x8
	.byte	0xec
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x8
	.byte	0xed
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x8
	.byte	0xee
	.4byte	0x4f0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x14
	.byte	0x8
	.byte	0xfb
	.4byte	0x5a0
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x8
	.byte	0xfd
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x8
	.byte	0xfe
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x8
	.byte	0xff
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x100
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x101
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x102
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x103
	.4byte	0x53c
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x8
	.byte	0x8
	.2byte	0x117
	.4byte	0x5d8
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x119
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x11a
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x11b
	.4byte	0x5ac
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x6c
	.byte	0x8
	.2byte	0x127
	.4byte	0x73c
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x129
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x12b
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x12c
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x12d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x12e
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x12f
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x130
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x131
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x132
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x133
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x134
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x136
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x138
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x139
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x13b
	.4byte	0x73c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x13c
	.4byte	0x73c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x13d
	.4byte	0x73c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x13e
	.4byte	0x73c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"tex"
	.byte	0x8
	.2byte	0x140
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x142
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x144
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x145
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0
	.uleb128 0x11
	.4byte	0x25
	.4byte	0x74c
	.uleb128 0x12
	.4byte	0x30
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x146
	.4byte	0x5e4
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xa
	.byte	0x14
	.4byte	0x763
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x10
	.byte	0xa
	.byte	0x15
	.4byte	0x7a8
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xa
	.byte	0x16
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xa
	.byte	0x17
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xa
	.byte	0x18
	.4byte	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xa
	.byte	0x19
	.4byte	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x758
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x10
	.byte	0xa
	.byte	0x1c
	.4byte	0x7f3
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0xa
	.byte	0x1d
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xa
	.byte	0x1e
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xa
	.byte	0x1f
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0xa
	.byte	0x20
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xa
	.byte	0x21
	.4byte	0x7ae
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x1c
	.byte	0xa
	.byte	0x23
	.4byte	0x86d
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0xa
	.byte	0x24
	.4byte	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0xa
	.byte	0x25
	.4byte	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0xa
	.byte	0x27
	.4byte	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0xa
	.byte	0x28
	.4byte	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0xa
	.byte	0x29
	.4byte	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0xa
	.byte	0x2a
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0xa
	.byte	0x2b
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF118
	.byte	0xa
	.byte	0x2c
	.4byte	0x7fe
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST0
	.4byte	0x8e1
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x1
	.byte	0x7e
	.4byte	0xdd
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7e
	.4byte	0xdd
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x8c7
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.byte	0x80
	.4byte	0xdd
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.byte	0x87
	.4byte	0xdd
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	0x94
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST5
	.4byte	0x93a
	.uleb128 0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0x91
	.4byte	0x96
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x1
	.byte	0x93
	.4byte	0x94
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0x1
	.byte	0x94
	.4byte	0x7f3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.byte	0x9b
	.4byte	0x62
	.byte	0x1
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST8
	.4byte	0x972
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x1
	.byte	0xa1
	.4byte	0x94
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xa1
	.4byte	0x96
	.4byte	.LLST10
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.byte	0xaa
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST11
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x9ac
	.uleb128 0x24
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb0
	.4byte	0x96
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x75
	.4byte	0x96
	.byte	0x5
	.byte	0x3
	.4byte	texMem
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x76
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	texMemStart
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x77
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	texMemEnd
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x1
	.byte	0x78
	.4byte	0x86d
	.byte	0x5
	.byte	0x3
	.4byte	texMemHeap
	.uleb128 0x25
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x548
	.4byte	0x9fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	0xa03
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1c7
	.uleb128 0x27
	.4byte	.LASF132
	.byte	0x8
	.byte	0x3d
	.4byte	0x2eb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x8
	.byte	0x3e
	.4byte	0x143
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x11
	.4byte	0x2a7
	.4byte	0xa3d
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x27
	.4byte	.LASF134
	.byte	0x8
	.byte	0x3f
	.4byte	0xa2d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x27
	.4byte	.LASF135
	.byte	0x8
	.byte	0x4b
	.4byte	0x347
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x27
	.4byte	.LASF136
	.byte	0x8
	.byte	0x4c
	.4byte	0x347
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x11
	.4byte	0x347
	.4byte	0xa83
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.string	"tex"
	.byte	0x8
	.byte	0x4d
	.4byte	0xa73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x27
	.4byte	.LASF94
	.byte	0x8
	.byte	0x4e
	.4byte	0x347
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0x11
	.4byte	0x143
	.4byte	0xab8
	.uleb128 0x29
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x27
	.4byte	.LASF137
	.byte	0x8
	.byte	0x50
	.4byte	0xaa7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x8
	.byte	0x51
	.4byte	0xaa7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0x11
	.4byte	0x2a7
	.4byte	0xaf3
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7
	.uleb128 0x29
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x27
	.4byte	.LASF139
	.byte	0x8
	.byte	0x52
	.4byte	0xadc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0x11
	.4byte	0x2eb
	.4byte	0xb16
	.uleb128 0x29
	.4byte	0x30
	.2byte	0x3e7
	.byte	0
	.uleb128 0x27
	.4byte	.LASF140
	.byte	0x8
	.byte	0x53
	.4byte	0xb05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x8
	.byte	0x5d
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x27
	.4byte	.LASF142
	.byte	0x8
	.byte	0x5e
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x27
	.4byte	.LASF143
	.byte	0x8
	.byte	0x5f
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x27
	.4byte	.LASF144
	.byte	0x8
	.byte	0x61
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x27
	.4byte	.LASF145
	.byte	0x8
	.byte	0x62
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x27
	.4byte	.LASF146
	.byte	0x8
	.byte	0x6b
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x27
	.4byte	.LASF147
	.byte	0x8
	.byte	0x6c
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x8
	.byte	0x6d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x27
	.4byte	.LASF149
	.byte	0x8
	.byte	0x6e
	.4byte	0x86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x27
	.4byte	.LASF150
	.byte	0x8
	.byte	0x7a
	.4byte	0x397
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x8
	.byte	0x7b
	.4byte	0x397
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0x11
	.4byte	0x397
	.4byte	0xbfe
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x27
	.4byte	.LASF152
	.byte	0x8
	.byte	0x7c
	.4byte	0xbee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x27
	.4byte	.LASF153
	.byte	0x8
	.byte	0x7d
	.4byte	0xc22
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x8
	.byte	0x4
	.4byte	0x397
	.uleb128 0x27
	.4byte	.LASF154
	.byte	0x8
	.byte	0x7e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x11
	.4byte	0x45d
	.4byte	0xc4a
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x27
	.4byte	.LASF155
	.byte	0x8
	.byte	0x99
	.4byte	0xc3a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x27
	.4byte	.LASF156
	.byte	0x8
	.byte	0x9c
	.4byte	0x2eb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x27
	.4byte	.LASF157
	.byte	0x8
	.byte	0xa9
	.4byte	0x4bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x27
	.4byte	.LASF158
	.byte	0x8
	.byte	0xac
	.4byte	0xfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x27
	.4byte	.LASF159
	.byte	0x8
	.byte	0xad
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x27
	.4byte	.LASF160
	.byte	0x8
	.byte	0xb1
	.4byte	0xfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x27
	.4byte	.LASF161
	.byte	0x8
	.byte	0xb8
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x27
	.4byte	.LASF162
	.byte	0x8
	.byte	0xb9
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x27
	.4byte	.LASF163
	.byte	0x8
	.byte	0xba
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x27
	.4byte	.LASF164
	.byte	0x8
	.byte	0xbb
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x27
	.4byte	.LASF165
	.byte	0x8
	.byte	0xbd
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x27
	.4byte	.LASF166
	.byte	0x8
	.byte	0xc6
	.4byte	0x4e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x27
	.4byte	.LASF167
	.byte	0x8
	.byte	0xf0
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x27
	.4byte	.LASF168
	.byte	0x8
	.byte	0xf1
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x27
	.4byte	.LASF169
	.byte	0x8
	.byte	0xf2
	.4byte	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x27
	.4byte	.LASF170
	.byte	0x8
	.byte	0xf3
	.4byte	0x531
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x27
	.4byte	.LASF171
	.byte	0x8
	.byte	0xf4
	.4byte	0x531
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x27
	.4byte	.LASF172
	.byte	0x8
	.byte	0xf5
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x27
	.4byte	.LASF173
	.byte	0x8
	.byte	0xf6
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x27
	.4byte	.LASF174
	.byte	0x8
	.byte	0xf8
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x27
	.4byte	.LASF175
	.byte	0x8
	.byte	0xf9
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x2a
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x105
	.4byte	0x5a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x2a
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x106
	.4byte	0x5a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0x11
	.4byte	0xfd
	.4byte	0xdfa
	.uleb128 0x12
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x107
	.4byte	0xdea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x2a
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x10d
	.4byte	0xfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x2a
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x10e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x2a
	.4byte	.LASF181
	.byte	0x8
	.2byte	0x111
	.4byte	0x215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0x11
	.4byte	0x5d8
	.4byte	0xe56
	.uleb128 0x12
	.4byte	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x125
	.4byte	0xe46
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x2a
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x14a
	.4byte	0xfd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x2a
	.4byte	.LASF184
	.byte	0x8
	.2byte	0x14b
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x2a
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x14c
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x2a
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x14d
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x2a
	.4byte	.LASF187
	.byte	0x8
	.2byte	0x14e
	.4byte	0xe8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x2a
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x14f
	.4byte	0x215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x11
	.4byte	0x74c
	.4byte	0xeeb
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x8
	.2byte	0x151
	.4byte	0xedb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x2a
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x156
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x2a
	.4byte	.LASF191
	.byte	0x8
	.2byte	0x159
	.4byte	0x70
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.4byte	.LFB75-.Ltext0
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
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB77-.Ltext0
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
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB78-.Ltext0
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
	.4byte	.LFE78-.Ltext0
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
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"scale"
.LASF91:
	.string	"CargOp"
.LASF161:
	.string	"blend_type"
.LASF170:
	.string	"scissorInfo"
.LASF12:
	.string	"size_t"
.LASF96:
	.string	"alpha_scale"
.LASF153:
	.string	"curmtx"
.LASF183:
	.string	"fog_enable"
.LASF31:
	.string	"_array"
.LASF177:
	.string	"unpack"
.LASF156:
	.string	"globAmbient"
.LASF103:
	.string	"prev"
.LASF78:
	.string	"max_filter"
.LASF35:
	.string	"type"
.LASF8:
	.string	"GLuint"
.LASF67:
	.string	"row_length"
.LASF112:
	.string	"final"
.LASF18:
	.string	"long long unsigned int"
.LASF152:
	.string	"texture_stack"
.LASF172:
	.string	"normNear"
.LASF43:
	.string	"spotDir"
.LASF59:
	.string	"GL_STATE_NEWLIST"
.LASF190:
	.string	"read_mode"
.LASF57:
	.string	"GL_STATE_NONE"
.LASF102:
	.string	"next"
.LASF146:
	.string	"depthtestenabled"
.LASF23:
	.string	"_vecf"
.LASF110:
	.string	"_heap_cntrl_st"
.LASF17:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF199:
	.string	"Sys_Printf"
.LASF131:
	.string	"wgPipe"
.LASF50:
	.string	"linear"
.LASF26:
	.string	"_gx_litobj"
.LASF34:
	.string	"size"
.LASF148:
	.string	"depthfunction"
.LASF133:
	.string	"_tempnormalelement"
.LASF192:
	.string	"GNU C 4.6.3"
.LASF195:
	.string	"_wgpipe"
.LASF56:
	.string	"Material"
.LASF75:
	.string	"ColorTrans"
.LASF13:
	.string	"long int"
.LASF54:
	.string	"emissive"
.LASF28:
	.string	"VertexElement"
.LASF164:
	.string	"blend_op"
.LASF138:
	.string	"_vertexelements"
.LASF114:
	.string	"perm_null"
.LASF100:
	.string	"back_flag"
.LASF32:
	.string	"enable"
.LASF185:
	.string	"fog_startz"
.LASF11:
	.string	"double"
.LASF79:
	.string	"wrap_s"
.LASF80:
	.string	"wrap_t"
.LASF163:
	.string	"blend_dst"
.LASF9:
	.string	"GLsizei"
.LASF51:
	.string	"quad_t"
.LASF122:
	.string	"newmem"
.LASF151:
	.string	"projection_stack"
.LASF72:
	.string	"_trans"
.LASF6:
	.string	"GLint"
.LASF104:
	.string	"_heap_iblock_st"
.LASF197:
	.string	"initTextureSlots"
.LASF118:
	.string	"heap_cntrl"
.LASF117:
	.string	"reserved"
.LASF53:
	.string	"_mat"
.LASF52:
	.string	"LightObj"
.LASF105:
	.string	"free_blocks"
.LASF184:
	.string	"fog_mode"
.LASF61:
	.string	"boxInfo"
.LASF2:
	.string	"unsigned int"
.LASF141:
	.string	"vert_i"
.LASF38:
	.string	"begin"
.LASF30:
	.string	"GXColorf"
.LASF130:
	.string	"texMemHeap"
.LASF41:
	.string	"_light"
.LASF81:
	.string	"minlod"
.LASF49:
	.string	"constant"
.LASF150:
	.string	"model_stack"
.LASF55:
	.string	"shininess"
.LASF162:
	.string	"blend_src"
.LASF85:
	.string	"edgelod"
.LASF62:
	.string	"width"
.LASF119:
	.string	"level"
.LASF140:
	.string	"_colorelements"
.LASF147:
	.string	"depthupdate"
.LASF7:
	.string	"short unsigned int"
.LASF166:
	.string	"cur_state"
.LASF36:
	.string	"VertexArray"
.LASF109:
	.string	"heap_iblock"
.LASF60:
	.string	"glState"
.LASF58:
	.string	"GL_STATE_BEGIN"
.LASF186:
	.string	"fog_endz"
.LASF124:
	.string	"slot"
.LASF181:
	.string	"_clearcolor"
.LASF5:
	.string	"short int"
.LASF142:
	.string	"_type"
.LASF116:
	.string	"pg_size"
.LASF191:
	.string	"call_offset"
.LASF171:
	.string	"viewPort"
.LASF159:
	.string	"gxwinding"
.LASF178:
	.string	"color_write_mask"
.LASF196:
	.string	"_glState"
.LASF1:
	.string	"GLboolean"
.LASF139:
	.string	"_texcoordelements"
.LASF101:
	.string	"front_flag"
.LASF135:
	.string	"norm"
.LASF69:
	.string	"skip_pixels"
.LASF125:
	.string	"releaseTextureSlot"
.LASF40:
	.string	"Stack"
.LASF107:
	.string	"used_blocks"
.LASF47:
	.string	"spotExponent"
.LASF97:
	.string	"glTexEnvSet"
.LASF154:
	.string	"cur_mode"
.LASF188:
	.string	"fog_color"
.LASF71:
	.string	"pixelStore"
.LASF84:
	.string	"biasclamp"
.LASF174:
	.string	"line_width"
.LASF65:
	.string	"swap"
.LASF187:
	.string	"fog_density"
.LASF10:
	.string	"float"
.LASF194:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF180:
	.string	"copy_material"
.LASF44:
	.string	"ambient"
.LASF121:
	.string	"_enable_mask"
.LASF37:
	.string	"_stack"
.LASF70:
	.string	"alignment"
.LASF27:
	.string	"GXLightObj"
.LASF22:
	.string	"WGPipe"
.LASF19:
	.string	"_Bool"
.LASF126:
	.string	"PreallocTexMem"
.LASF3:
	.string	"unsigned char"
.LASF173:
	.string	"normFar"
.LASF160:
	.string	"lighting"
.LASF165:
	.string	"cull_mode"
.LASF120:
	.string	"_disable_mask"
.LASF123:
	.string	"info"
.LASF66:
	.string	"lsb_first"
.LASF200:
	.string	"printTextureStats"
.LASF39:
	.string	"elem_size"
.LASF168:
	.string	"fb_max_width"
.LASF74:
	.string	"bias"
.LASF82:
	.string	"maxlod"
.LASF83:
	.string	"lodbias"
.LASF169:
	.string	"scissor_test"
.LASF175:
	.string	"point_size"
.LASF92:
	.string	"Aarg"
.LASF193:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/gl_texture_slot.c"
.LASF149:
	.string	"_cleardepth"
.LASF33:
	.string	"stride"
.LASF29:
	.string	"TexCoordElement"
.LASF24:
	.string	"_gx_color"
.LASF93:
	.string	"AargOp"
.LASF113:
	.string	"first"
.LASF20:
	.string	"long unsigned int"
.LASF136:
	.string	"vert"
.LASF94:
	.string	"color"
.LASF14:
	.string	"char"
.LASF90:
	.string	"Carg"
.LASF87:
	.string	"mode"
.LASF46:
	.string	"specular"
.LASF0:
	.string	"GLenum"
.LASF144:
	.string	"cur_tex"
.LASF167:
	.string	"fb_max_height"
.LASF108:
	.string	"used_size"
.LASF129:
	.string	"texMemEnd"
.LASF15:
	.string	"uint8_t"
.LASF115:
	.string	"last"
.LASF86:
	.string	"maxaniso"
.LASF157:
	.string	"curmat"
.LASF132:
	.string	"_tempcolorelement"
.LASF98:
	.string	"heap_block"
.LASF42:
	.string	"enabled"
.LASF179:
	.string	"copy_mat_enabled"
.LASF176:
	.string	"pack"
.LASF89:
	.string	"comAlpha"
.LASF95:
	.string	"rgb_scale"
.LASF134:
	.string	"_temptexcoordelement"
.LASF182:
	.string	"Trans"
.LASF16:
	.string	"uint32_t"
.LASF99:
	.string	"_heap_block_st"
.LASF76:
	.string	"_tex_env"
.LASF155:
	.string	"lights"
.LASF77:
	.string	"min_filter"
.LASF137:
	.string	"_normalelements"
.LASF128:
	.string	"texMemStart"
.LASF45:
	.string	"diffuse"
.LASF198:
	.string	"getTextureSlot"
.LASF48:
	.string	"spotCutoff"
.LASF88:
	.string	"comRGB"
.LASF25:
	.string	"GXColor"
.LASF143:
	.string	"_GLtype"
.LASF111:
	.string	"start"
.LASF189:
	.string	"glTexEnvs"
.LASF63:
	.string	"height"
.LASF21:
	.string	"guVector"
.LASF64:
	.string	"_pixelStore"
.LASF145:
	.string	"cur_tex_client"
.LASF127:
	.string	"texMem"
.LASF106:
	.string	"free_size"
.LASF158:
	.string	"gxcullfaceanabled"
.LASF68:
	.string	"skip_rows"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
