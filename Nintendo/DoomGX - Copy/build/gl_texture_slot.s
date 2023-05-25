	.file	"gl_texture_slot.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl PreallocTexMem
	.type	PreallocTexMem, @function
PreallocTexMem:
.LFB73:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/gl_texture_slot.c"
	.loc 1 177 0
.LVL0:
	.loc 1 178 0
	blr
.LFE73:
	.size	PreallocTexMem, .-PreallocTexMem
	.align 2
	.globl printTextureStats
	.type	printTextureStats, @function
printTextureStats:
.LFB72:
	.loc 1 171 0
	mflr 0
.LCFI0:
	stwu 1,-8(1)
.LCFI1:
	.loc 1 172 0
	lis 9,.LANCHOR0@ha
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	.loc 1 171 0
	stw 0,12(1)
.LCFI2:
	.loc 1 172 0
	lwz 4,.LANCHOR0@l(9)
	crxor 6,6,6
	bl printf
	.loc 1 173 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE72:
	.size	printTextureStats, .-printTextureStats
	.align 2
	.globl releaseTextureSlot
	.type	releaseTextureSlot, @function
releaseTextureSlot:
.LFB71:
	.loc 1 162 0
.LVL1:
	mflr 0
.LCFI3:
	stwu 1,-8(1)
.LCFI4:
	.loc 1 163 0
	lis 9,.LANCHOR0@ha
	.loc 1 162 0
	mr 11,3
	.loc 1 163 0
	la 3,.LANCHOR0@l(9)
.LVL2:
	.loc 1 162 0
	stw 0,12(1)
.LCFI5:
	.loc 1 164 0
	addi 3,3,4
	.loc 1 163 0
	lwz 0,.LANCHOR0@l(9)
	subf 0,4,0
	.loc 1 164 0
	mr 4,11
.LVL3:
	.loc 1 163 0
	stw 0,.LANCHOR0@l(9)
	.loc 1 164 0
	bl __lwp_heap_free
.LVL4:
	cmpwi 7,3,0
	bne- 7,.L8
	.loc 1 165 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl printf
.L8:
	.loc 1 168 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE71:
	.size	releaseTextureSlot, .-releaseTextureSlot
	.align 2
	.globl getTextureSlot
	.type	getTextureSlot, @function
getTextureSlot:
.LFB70:
	.loc 1 146 0
.LVL5:
	mflr 0
.LCFI6:
	stwu 1,-40(1)
.LCFI7:
	.loc 1 150 0
	lis 9,.LANCHOR0@ha
	.loc 1 146 0
	mr 4,3
	stw 29,28(1)
.LCFI8:
	.loc 1 150 0
	la 29,.LANCHOR0@l(9)
	.loc 1 146 0
	stw 0,44(1)
.LCFI9:
	.loc 1 151 0
	addi 29,29,4
	.loc 1 146 0
	stw 28,24(1)
.LCFI10:
	.loc 1 150 0
	lwz 0,.LANCHOR0@l(9)
	add 0,3,0
	.loc 1 151 0
	mr 3,29
.LVL6:
	.loc 1 150 0
	stw 0,.LANCHOR0@l(9)
	.loc 1 151 0
	bl __lwp_heap_allocate
.LVL7:
	mr 28,3
.LVL8:
	.loc 1 153 0
	addi 4,1,8
	mr 3,29
	bl __lwp_heap_getinfo
	.loc 1 159 0
	lwz 0,44(1)
	mr 3,28
	lwz 29,28(1)
	lwz 28,24(1)
.LVL9:
	mtlr 0
	addi 1,1,40
	blr
.LFE70:
	.size	getTextureSlot, .-getTextureSlot
	.align 2
	.globl initTextureSlots
	.type	initTextureSlots, @function
initTextureSlots:
.LFB69:
	.loc 1 123 0
	stwu 1,-32(1)
.LCFI11:
	mflr 0
.LCFI12:
	stw 28,16(1)
.LCFI13:
	.loc 1 124 0
	lis 28,.LANCHOR0@ha
	.loc 1 123 0
	stw 29,20(1)
.LCFI14:
	.loc 1 124 0
	li 29,0
	.loc 1 123 0
	stw 26,8(1)
.LCFI15:
.LBB2:
	.loc 1 128 0
	mr 26,29
.LVL10:
.LBE2:
	.loc 1 123 0
	stw 0,36(1)
.LCFI16:
.LBB3:
	.loc 1 128 0
	mr 0,29
.LVL11:
.LBE3:
	.loc 1 124 0
	stw 29,.LANCHOR0@l(28)
	la 28,.LANCHOR0@l(28)
	.loc 1 123 0
	stw 27,12(1)
.LCFI17:
.LBB4:
	.loc 1 128 0
	mfmsr 26
rlwinm 0,26,0,17,15
mtmsr 0
extrwi 26,26,1,16
.LBE4:
	.loc 1 130 0
	bl SYS_GetArena2Lo
.LVL12:
	stw 3,32(28)
	.loc 1 131 0
	bl SYS_GetArena2Hi
	mr 27,3
	.loc 1 132 0
	lwz 3,32(28)
	.loc 1 131 0
	stw 27,36(28)
	.loc 1 132 0
	subf 27,3,27
.LVL13:
	.loc 1 133 0
	add 3,3,27
	bl SYS_SetArena2Lo
.LBB5:
	.loc 1 135 0
	    cmpwi 26,0
    beq 1f
    mfmsr 29
    ori 29,29,0x8000
    mtmsr 29
1:
.LBE5:
	.loc 1 137 0
	lwz 3,32(28)
	mr 5,27
	li 4,0
	bl memset
	.loc 1 139 0
	lwz 4,32(28)
	mr 5,27
	addi 3,28,4
	li 6,32
	bl __lwp_heap_init
	.loc 1 143 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL14:
	lwz 27,12(1)
.LVL15:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	addi 1,1,32
	blr
.LFE69:
	.size	initTextureSlots, .-initTextureSlots
	.comm	_tempcolorelement,16,4
	.comm	_tempnormalelement,12,4
	.comm	_temptexcoordelement,64,4
	.comm	norm,20,4
	.comm	vert,20,4
	.comm	tex,160,4
	.comm	color,20,4
	.comm	_normalelements,12000,32
	.comm	_vertexelements,12000,32
	.comm	_texcoordelements,64000,32
	.comm	_colorelements,16000,32
	.comm	vert_i,4,4
	.comm	_type,4,4
	.comm	_GLtype,4,4
	.comm	cur_tex,4,4
	.comm	cur_tex_client,4,4
	.comm	depthtestenabled,1,1
	.comm	depthupdate,1,1
	.comm	depthfunction,4,4
	.comm	_cleardepth,4,4
	.comm	model_stack,16,4
	.comm	projection_stack,16,4
	.comm	texture_stack,128,4
	.comm	curmtx,4,4
	.comm	cur_mode,4,4
	.comm	lights,1312,4
	.comm	globAmbient,16,4
	.comm	curmat,68,4
	.comm	gxcullfaceanabled,1,1
	.comm	gxwinding,4,4
	.comm	lighting,1,1
	.comm	blend_type,1,1
	.comm	blend_src,1,1
	.comm	blend_dst,1,1
	.comm	blend_op,1,1
	.comm	cull_mode,1,1
	.comm	cur_state,4,4
	.comm	fb_max_height,4,4
	.comm	fb_max_width,4,4
	.comm	scissor_test,1,1
	.comm	scissorInfo,16,4
	.comm	viewPort,16,4
	.comm	normNear,4,4
	.comm	normFar,4,4
	.comm	line_width,4,4
	.comm	point_size,4,4
	.comm	pack,20,4
	.comm	unpack,20,4
	.comm	color_write_mask,4,4
	.comm	copy_mat_enabled,1,1
	.comm	copy_material,4,4
	.comm	_clearcolor,4,1
	.comm	Trans,32,4
	.comm	fog_enable,1,1
	.comm	fog_mode,1,1
	.comm	fog_startz,4,4
	.comm	fog_endz,4,4
	.comm	fog_density,4,4
	.comm	fog_color,4,1
	.comm	glTexEnvs,864,4
	.comm	read_mode,4,4
	.comm	call_offset,4,4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Total texture mem: %u\n"
	.zero	1
.LC1:
	.string	"gl2gx releaseTextureSlot: Error freeing data."
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	texMem, @object
	.size	texMem, 4
texMem:
	.zero	4
	.type	texMemHeap, @object
	.size	texMemHeap, 28
texMemHeap:
	.zero	28
	.type	texMemStart, @object
	.size	texMemStart, 4
texMemStart:
	.zero	4
	.type	texMemEnd, @object
	.size	texMemEnd, 4
texMemEnd:
	.zero	4
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI1-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI4-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI7-.LFB70
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI10-.LCFI8
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI11-.LFB69
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI13-.LCFI11
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9b
	.uleb128 0x5
	.align 2
.LEFDE8:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 7 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/glint.h"
	.file 8 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/mat_stack.h"
	.file 9 "c:/utils/devkitPro/libogc/include/ogc/lwp_heap.h"
	.section	.debug_info
	.4byte	0xe57
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x1
	.4byte	.LASF189
	.4byte	.LASF190
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
	.byte	0xd6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x6
	.string	"u8"
	.byte	0x4
	.byte	0xf
	.4byte	0x42
	.uleb128 0x6
	.string	"u32"
	.byte	0x4
	.byte	0x11
	.4byte	0x30
	.uleb128 0x6
	.string	"f32"
	.byte	0x4
	.byte	0x29
	.4byte	0x86
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x35
	.4byte	0xbd
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x11c
	.uleb128 0x9
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x29
	.4byte	0xeb
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6
	.2byte	0x3b8
	.4byte	0x169
	.uleb128 0xb
	.string	"r"
	.byte	0x6
	.2byte	0x3b9
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"g"
	.byte	0x6
	.2byte	0x3ba
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"b"
	.byte	0x6
	.2byte	0x3bb
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"a"
	.byte	0x6
	.2byte	0x3bc
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x3bd
	.4byte	0x127
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x40
	.byte	0x6
	.2byte	0x3d6
	.4byte	0x192
	.uleb128 0xb
	.string	"val"
	.byte	0x6
	.2byte	0x3d7
	.4byte	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	0xc7
	.4byte	0x1a2
	.uleb128 0xe
	.4byte	0xe8
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x3d8
	.4byte	0x175
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0x10
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.byte	0x15
	.4byte	0x1dd
	.uleb128 0x9
	.string	"v"
	.byte	0x7
	.byte	0x16
	.4byte	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"w"
	.byte	0x7
	.byte	0x17
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x7
	.byte	0x18
	.4byte	0x1bc
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.byte	0x1b
	.4byte	0x209
	.uleb128 0x9
	.string	"s"
	.byte	0x7
	.byte	0x1c
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"t"
	.byte	0x7
	.byte	0x1d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x1e
	.4byte	0x1e8
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.byte	0x21
	.4byte	0x24d
	.uleb128 0x9
	.string	"r"
	.byte	0x7
	.byte	0x22
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"g"
	.byte	0x7
	.byte	0x23
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"b"
	.byte	0x7
	.byte	0x24
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"a"
	.byte	0x7
	.byte	0x25
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x26
	.4byte	0x214
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x14
	.byte	0x7
	.byte	0x42
	.4byte	0x2a9
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x7
	.byte	0x43
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"p"
	.byte	0x7
	.byte	0x44
	.4byte	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x7
	.byte	0x45
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x7
	.byte	0x46
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x7
	.byte	0x47
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x48
	.4byte	0x258
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x2f9
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x8
	.byte	0xe
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x8
	.byte	0xf
	.4byte	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x8
	.byte	0x10
	.4byte	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"cur"
	.byte	0x8
	.byte	0x11
	.4byte	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0x12
	.4byte	0x2b4
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0xa4
	.byte	0x7
	.byte	0x83
	.4byte	0x3bf
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x7
	.byte	0x84
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"obj"
	.byte	0x7
	.byte	0x86
	.4byte	0x1a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"pos"
	.byte	0x7
	.byte	0x88
	.4byte	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x7
	.byte	0x8a
	.4byte	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x7
	.byte	0x8c
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x7
	.byte	0x8d
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x7
	.byte	0x8e
	.4byte	0x24d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x7
	.byte	0x90
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x7
	.byte	0x91
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.byte	0x92
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.byte	0x93
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x7
	.byte	0x94
	.4byte	0x86
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x7
	.byte	0x95
	.4byte	0x304
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x44
	.byte	0x7
	.byte	0xa0
	.4byte	0x41d
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x7
	.byte	0xa1
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x7
	.byte	0xa2
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x7
	.byte	0xa3
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x7
	.byte	0xa4
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x7
	.byte	0xa5
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x7
	.byte	0xa6
	.4byte	0x3ca
	.uleb128 0x13
	.4byte	.LASF191
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.4byte	0x447
	.uleb128 0x14
	.4byte	.LASF54
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF55
	.sleb128 1
	.uleb128 0x14
	.4byte	.LASF56
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x7
	.byte	0xc3
	.4byte	0x428
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x10
	.byte	0x7
	.byte	0xe8
	.4byte	0x493
	.uleb128 0x9
	.string	"x"
	.byte	0x7
	.byte	0xe9
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x7
	.byte	0xea
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x7
	.byte	0xeb
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x7
	.byte	0xec
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x7
	.byte	0xed
	.4byte	0x452
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x14
	.byte	0x7
	.byte	0xfb
	.4byte	0x501
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x7
	.byte	0xfc
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x7
	.byte	0xfd
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x7
	.byte	0xfe
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x7
	.byte	0xff
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x100
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x101
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x102
	.4byte	0x49e
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x8
	.byte	0x7
	.2byte	0x117
	.4byte	0x539
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x118
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x119
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x11a
	.4byte	0x50d
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x6c
	.byte	0x7
	.2byte	0x127
	.4byte	0x69d
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x128
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x12a
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x12b
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x12c
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x12d
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x12e
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x12f
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x130
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x131
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x132
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x133
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x135
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x137
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x138
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x13a
	.4byte	0x69d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x13b
	.4byte	0x69d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x13c
	.4byte	0x69d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x13d
	.4byte	0x69d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"tex"
	.byte	0x7
	.2byte	0x13f
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x141
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x143
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x144
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x6ad
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x2
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x145
	.4byte	0x545
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0x9
	.byte	0x14
	.4byte	0x6c4
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x10
	.byte	0x9
	.byte	0x14
	.4byte	0x709
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x9
	.byte	0x16
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x9
	.byte	0x17
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x9
	.byte	0x18
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x9
	.byte	0x19
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6b9
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x10
	.byte	0x9
	.byte	0x1c
	.4byte	0x754
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x9
	.byte	0x1d
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x9
	.byte	0x1e
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x9
	.byte	0x1f
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x9
	.byte	0x20
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x9
	.byte	0x21
	.4byte	0x70f
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x1c
	.byte	0x9
	.byte	0x23
	.4byte	0x7ce
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x9
	.byte	0x24
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x9
	.byte	0x25
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x9
	.byte	0x27
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x9
	.byte	0x28
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x9
	.byte	0x29
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x9
	.byte	0x2a
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x9
	.byte	0x2b
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x9
	.byte	0x2c
	.4byte	0x75f
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x1
	.byte	0x51
	.4byte	0x7fe
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb0
	.4byte	0x96
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.byte	0xab
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST2
	.4byte	0x84a
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa1
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa1
	.4byte	0x96
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	0x94
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST5
	.4byte	0x894
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x1
	.byte	0x91
	.4byte	0x96
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x93
	.4byte	0x94
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0x94
	.4byte	0x754
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST8
	.4byte	0x8fb
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x1
	.byte	0x7e
	.4byte	0xc7
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7e
	.4byte	0xc7
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x0
	.4byte	0x8e3
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x1
	.byte	0x80
	.4byte	0xc7
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x20
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x1
	.byte	0x87
	.4byte	0xc7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x1
	.byte	0x75
	.4byte	0x96
	.byte	0x5
	.byte	0x3
	.4byte	texMem
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x76
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	texMemStart
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x1
	.byte	0x77
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	texMemEnd
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.byte	0x78
	.4byte	0x7ce
	.byte	0x5
	.byte	0x3
	.4byte	texMemHeap
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x7
	.byte	0x3c
	.4byte	0x24d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x7
	.byte	0x3d
	.4byte	0x11c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0xd
	.4byte	0x209
	.4byte	0x973
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x7
	.byte	0x3e
	.4byte	0x963
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x7
	.byte	0x4a
	.4byte	0x2a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x7
	.byte	0x4b
	.4byte	0x2a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0xd
	.4byte	0x2a9
	.4byte	0x9b9
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x7
	.byte	0x0
	.uleb128 0x22
	.string	"tex"
	.byte	0x7
	.byte	0x4c
	.4byte	0x9a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x21
	.4byte	.LASF91
	.byte	0x7
	.byte	0x4d
	.4byte	0x2a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0xd
	.4byte	0x11c
	.4byte	0x9ee
	.uleb128 0x23
	.4byte	0xe8
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x7
	.byte	0x4f
	.4byte	0x9dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x7
	.byte	0x50
	.4byte	0x9dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0xd
	.4byte	0x209
	.4byte	0xa29
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x7
	.uleb128 0x23
	.4byte	0xe8
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x7
	.byte	0x51
	.4byte	0xa12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0xd
	.4byte	0x24d
	.4byte	0xa4c
	.uleb128 0x23
	.4byte	0xe8
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x7
	.byte	0x52
	.4byte	0xa3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x7
	.byte	0x5c
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x7
	.byte	0x5d
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x7
	.byte	0x5e
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x7
	.byte	0x60
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x7
	.byte	0x61
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x7
	.byte	0x6a
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x7
	.byte	0x6b
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x7
	.byte	0x6c
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x7
	.byte	0x6d
	.4byte	0x86
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x7
	.byte	0x79
	.4byte	0x2f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x7
	.byte	0x7a
	.4byte	0x2f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0xd
	.4byte	0x2f9
	.4byte	0xb34
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x7
	.byte	0x7b
	.4byte	0xb24
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x21
	.4byte	.LASF149
	.byte	0x7
	.byte	0x7c
	.4byte	0xb58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2f9
	.uleb128 0x21
	.4byte	.LASF150
	.byte	0x7
	.byte	0x7d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0xd
	.4byte	0x3bf
	.4byte	0xb80
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF151
	.byte	0x7
	.byte	0x98
	.4byte	0xb70
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x21
	.4byte	.LASF152
	.byte	0x7
	.byte	0x9b
	.4byte	0x24d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x21
	.4byte	.LASF153
	.byte	0x7
	.byte	0xa8
	.4byte	0x41d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x21
	.4byte	.LASF154
	.byte	0x7
	.byte	0xab
	.4byte	0xdd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x21
	.4byte	.LASF155
	.byte	0x7
	.byte	0xac
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x21
	.4byte	.LASF156
	.byte	0x7
	.byte	0xb0
	.4byte	0xdd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x7
	.byte	0xb7
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x21
	.4byte	.LASF158
	.byte	0x7
	.byte	0xb8
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x7
	.byte	0xb9
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0x7
	.byte	0xba
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0x7
	.byte	0xbc
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x7
	.byte	0xc5
	.4byte	0x447
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x7
	.byte	0xef
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x7
	.byte	0xf0
	.4byte	0x62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x7
	.byte	0xf1
	.4byte	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x21
	.4byte	.LASF166
	.byte	0x7
	.byte	0xf2
	.4byte	0x493
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x7
	.byte	0xf3
	.4byte	0x493
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x7
	.byte	0xf4
	.4byte	0xd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x7
	.byte	0xf5
	.4byte	0xd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x21
	.4byte	.LASF170
	.byte	0x7
	.byte	0xf7
	.4byte	0xd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x7
	.byte	0xf8
	.4byte	0xd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x24
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x104
	.4byte	0x501
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0x7
	.2byte	0x105
	.4byte	0x501
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0xd
	.4byte	0xdd
	.4byte	0xd30
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x3
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x106
	.4byte	0xd20
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x7
	.2byte	0x10c
	.4byte	0xdd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x24
	.4byte	.LASF176
	.byte	0x7
	.2byte	0x10d
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x24
	.4byte	.LASF177
	.byte	0x7
	.2byte	0x110
	.4byte	0x169
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0xd
	.4byte	0x539
	.4byte	0xd8c
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x3
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF178
	.byte	0x7
	.2byte	0x124
	.4byte	0xd7c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x24
	.4byte	.LASF179
	.byte	0x7
	.2byte	0x149
	.4byte	0xdd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x24
	.4byte	.LASF180
	.byte	0x7
	.2byte	0x14a
	.4byte	0xbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x24
	.4byte	.LASF181
	.byte	0x7
	.2byte	0x14b
	.4byte	0xd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x24
	.4byte	.LASF182
	.byte	0x7
	.2byte	0x14c
	.4byte	0xd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x7
	.2byte	0x14d
	.4byte	0xd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x24
	.4byte	.LASF184
	.byte	0x7
	.2byte	0x14e
	.4byte	0x169
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0xd
	.4byte	0x6ad
	.4byte	0xe21
	.uleb128 0xe
	.4byte	0xe8
	.byte	0x7
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF185
	.byte	0x7
	.2byte	0x150
	.4byte	0xe11
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x24
	.4byte	.LASF186
	.byte	0x7
	.2byte	0x155
	.4byte	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x158
	.4byte	0x70
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.byte	0x0
	.section	.debug_abbrev
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x426
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xe5b
	.4byte	0x7d9
	.string	"PreallocTexMem"
	.4byte	0x7fe
	.string	"printTextureStats"
	.4byte	0x812
	.string	"releaseTextureSlot"
	.4byte	0x84a
	.string	"getTextureSlot"
	.4byte	0x894
	.string	"initTextureSlots"
	.4byte	0x93f
	.string	"_tempcolorelement"
	.4byte	0x951
	.string	"_tempnormalelement"
	.4byte	0x973
	.string	"_temptexcoordelement"
	.4byte	0x985
	.string	"norm"
	.4byte	0x997
	.string	"vert"
	.4byte	0x9b9
	.string	"tex"
	.4byte	0x9cb
	.string	"color"
	.4byte	0x9ee
	.string	"_normalelements"
	.4byte	0xa00
	.string	"_vertexelements"
	.4byte	0xa29
	.string	"_texcoordelements"
	.4byte	0xa4c
	.string	"_colorelements"
	.4byte	0xa5e
	.string	"vert_i"
	.4byte	0xa70
	.string	"_type"
	.4byte	0xa82
	.string	"_GLtype"
	.4byte	0xa94
	.string	"cur_tex"
	.4byte	0xaa6
	.string	"cur_tex_client"
	.4byte	0xab8
	.string	"depthtestenabled"
	.4byte	0xaca
	.string	"depthupdate"
	.4byte	0xadc
	.string	"depthfunction"
	.4byte	0xaee
	.string	"_cleardepth"
	.4byte	0xb00
	.string	"model_stack"
	.4byte	0xb12
	.string	"projection_stack"
	.4byte	0xb34
	.string	"texture_stack"
	.4byte	0xb46
	.string	"curmtx"
	.4byte	0xb5e
	.string	"cur_mode"
	.4byte	0xb80
	.string	"lights"
	.4byte	0xb92
	.string	"globAmbient"
	.4byte	0xba4
	.string	"curmat"
	.4byte	0xbb6
	.string	"gxcullfaceanabled"
	.4byte	0xbc8
	.string	"gxwinding"
	.4byte	0xbda
	.string	"lighting"
	.4byte	0xbec
	.string	"blend_type"
	.4byte	0xbfe
	.string	"blend_src"
	.4byte	0xc10
	.string	"blend_dst"
	.4byte	0xc22
	.string	"blend_op"
	.4byte	0xc34
	.string	"cull_mode"
	.4byte	0xc46
	.string	"cur_state"
	.4byte	0xc58
	.string	"fb_max_height"
	.4byte	0xc6a
	.string	"fb_max_width"
	.4byte	0xc7c
	.string	"scissor_test"
	.4byte	0xc8e
	.string	"scissorInfo"
	.4byte	0xca0
	.string	"viewPort"
	.4byte	0xcb2
	.string	"normNear"
	.4byte	0xcc4
	.string	"normFar"
	.4byte	0xcd6
	.string	"line_width"
	.4byte	0xce8
	.string	"point_size"
	.4byte	0xcfa
	.string	"pack"
	.4byte	0xd0d
	.string	"unpack"
	.4byte	0xd30
	.string	"color_write_mask"
	.4byte	0xd43
	.string	"copy_mat_enabled"
	.4byte	0xd56
	.string	"copy_material"
	.4byte	0xd69
	.string	"_clearcolor"
	.4byte	0xd8c
	.string	"Trans"
	.4byte	0xd9f
	.string	"fog_enable"
	.4byte	0xdb2
	.string	"fog_mode"
	.4byte	0xdc5
	.string	"fog_startz"
	.4byte	0xdd8
	.string	"fog_endz"
	.4byte	0xdeb
	.string	"fog_density"
	.4byte	0xdfe
	.string	"fog_color"
	.4byte	0xe21
	.string	"glTexEnvs"
	.4byte	0xe34
	.string	"read_mode"
	.4byte	0xe47
	.string	"call_offset"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"scale"
.LASF88:
	.string	"CargOp"
.LASF166:
	.string	"scissorInfo"
.LASF12:
	.string	"size_t"
.LASF93:
	.string	"alpha_scale"
.LASF149:
	.string	"curmtx"
.LASF179:
	.string	"fog_enable"
.LASF28:
	.string	"_array"
.LASF173:
	.string	"unpack"
.LASF152:
	.string	"globAmbient"
.LASF100:
	.string	"prev"
.LASF75:
	.string	"max_filter"
.LASF32:
	.string	"type"
.LASF8:
	.string	"GLuint"
.LASF64:
	.string	"row_length"
.LASF109:
	.string	"final"
.LASF16:
	.string	"long long unsigned int"
.LASF148:
	.string	"texture_stack"
.LASF168:
	.string	"normNear"
.LASF40:
	.string	"spotDir"
.LASF56:
	.string	"GL_STATE_NEWLIST"
.LASF186:
	.string	"read_mode"
.LASF54:
	.string	"GL_STATE_NONE"
.LASF99:
	.string	"next"
.LASF142:
	.string	"depthtestenabled"
.LASF19:
	.string	"_vecf"
.LASF107:
	.string	"_heap_cntrl_st"
.LASF15:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF47:
	.string	"linear"
.LASF22:
	.string	"_gx_litobj"
.LASF31:
	.string	"size"
.LASF144:
	.string	"depthfunction"
.LASF129:
	.string	"_tempnormalelement"
.LASF18:
	.string	"Vector"
.LASF53:
	.string	"Material"
.LASF72:
	.string	"ColorTrans"
.LASF13:
	.string	"long int"
.LASF51:
	.string	"emissive"
.LASF25:
	.string	"VertexElement"
.LASF160:
	.string	"blend_op"
.LASF134:
	.string	"_vertexelements"
.LASF111:
	.string	"perm_null"
.LASF97:
	.string	"back_flag"
.LASF29:
	.string	"enable"
.LASF181:
	.string	"fog_startz"
.LASF11:
	.string	"double"
.LASF76:
	.string	"wrap_s"
.LASF77:
	.string	"wrap_t"
.LASF159:
	.string	"blend_dst"
.LASF9:
	.string	"GLsizei"
.LASF48:
	.string	"quad_t"
.LASF119:
	.string	"newmem"
.LASF147:
	.string	"projection_stack"
.LASF69:
	.string	"_trans"
.LASF6:
	.string	"GLint"
.LASF101:
	.string	"_heap_iblock_st"
.LASF194:
	.string	"initTextureSlots"
.LASF115:
	.string	"heap_cntrl"
.LASF114:
	.string	"reserved"
.LASF190:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF49:
	.string	"LightObj"
.LASF102:
	.string	"free_blocks"
.LASF180:
	.string	"fog_mode"
.LASF58:
	.string	"boxInfo"
.LASF2:
	.string	"unsigned int"
.LASF137:
	.string	"vert_i"
.LASF35:
	.string	"begin"
.LASF27:
	.string	"GXColorf"
.LASF127:
	.string	"texMemHeap"
.LASF38:
	.string	"_light"
.LASF78:
	.string	"minlod"
.LASF46:
	.string	"constant"
.LASF146:
	.string	"model_stack"
.LASF52:
	.string	"shininess"
.LASF158:
	.string	"blend_src"
.LASF82:
	.string	"edgelod"
.LASF59:
	.string	"width"
.LASF121:
	.string	"level"
.LASF136:
	.string	"_colorelements"
.LASF143:
	.string	"depthupdate"
.LASF7:
	.string	"short unsigned int"
.LASF162:
	.string	"cur_state"
.LASF33:
	.string	"VertexArray"
.LASF106:
	.string	"heap_iblock"
.LASF57:
	.string	"glState"
.LASF55:
	.string	"GL_STATE_BEGIN"
.LASF182:
	.string	"fog_endz"
.LASF118:
	.string	"slot"
.LASF17:
	.string	"bool"
.LASF5:
	.string	"short int"
.LASF138:
	.string	"_type"
.LASF113:
	.string	"pg_size"
.LASF187:
	.string	"call_offset"
.LASF167:
	.string	"viewPort"
.LASF155:
	.string	"gxwinding"
.LASF174:
	.string	"color_write_mask"
.LASF191:
	.string	"_glState"
.LASF1:
	.string	"GLboolean"
.LASF135:
	.string	"_texcoordelements"
.LASF98:
	.string	"front_flag"
.LASF131:
	.string	"norm"
.LASF66:
	.string	"skip_pixels"
.LASF117:
	.string	"releaseTextureSlot"
.LASF37:
	.string	"Stack"
.LASF104:
	.string	"used_blocks"
.LASF44:
	.string	"spotExponent"
.LASF94:
	.string	"glTexEnvSet"
.LASF150:
	.string	"cur_mode"
.LASF184:
	.string	"fog_color"
.LASF68:
	.string	"pixelStore"
.LASF164:
	.string	"fb_max_width"
.LASF170:
	.string	"line_width"
.LASF62:
	.string	"swap"
.LASF183:
	.string	"fog_density"
.LASF10:
	.string	"float"
.LASF177:
	.string	"_clearcolor"
.LASF176:
	.string	"copy_material"
.LASF41:
	.string	"ambient"
.LASF123:
	.string	"_enable_mask"
.LASF34:
	.string	"_stack"
.LASF67:
	.string	"alignment"
.LASF23:
	.string	"GXLightObj"
.LASF193:
	.string	"getTextureSlot"
.LASF116:
	.string	"PreallocTexMem"
.LASF3:
	.string	"unsigned char"
.LASF169:
	.string	"normFar"
.LASF156:
	.string	"lighting"
.LASF161:
	.string	"cull_mode"
.LASF122:
	.string	"_disable_mask"
.LASF120:
	.string	"info"
.LASF63:
	.string	"lsb_first"
.LASF192:
	.string	"printTextureStats"
.LASF36:
	.string	"elem_size"
.LASF50:
	.string	"_mat"
.LASF71:
	.string	"bias"
.LASF79:
	.string	"maxlod"
.LASF81:
	.string	"biasclamp"
.LASF80:
	.string	"lodbias"
.LASF171:
	.string	"point_size"
.LASF89:
	.string	"Aarg"
.LASF188:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF145:
	.string	"_cleardepth"
.LASF30:
	.string	"stride"
.LASF26:
	.string	"TexCoordElement"
.LASF20:
	.string	"_gx_color"
.LASF90:
	.string	"AargOp"
.LASF110:
	.string	"first"
.LASF24:
	.string	"long unsigned int"
.LASF132:
	.string	"vert"
.LASF91:
	.string	"color"
.LASF14:
	.string	"char"
.LASF87:
	.string	"Carg"
.LASF84:
	.string	"mode"
.LASF43:
	.string	"specular"
.LASF0:
	.string	"GLenum"
.LASF140:
	.string	"cur_tex"
.LASF163:
	.string	"fb_max_height"
.LASF105:
	.string	"used_size"
.LASF126:
	.string	"texMemEnd"
.LASF165:
	.string	"scissor_test"
.LASF112:
	.string	"last"
.LASF83:
	.string	"maxaniso"
.LASF153:
	.string	"curmat"
.LASF128:
	.string	"_tempcolorelement"
.LASF95:
	.string	"heap_block"
.LASF39:
	.string	"enabled"
.LASF175:
	.string	"copy_mat_enabled"
.LASF172:
	.string	"pack"
.LASF86:
	.string	"comAlpha"
.LASF92:
	.string	"rgb_scale"
.LASF130:
	.string	"_temptexcoordelement"
.LASF178:
	.string	"Trans"
.LASF189:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/gl_texture_slot.c"
.LASF96:
	.string	"_heap_block_st"
.LASF73:
	.string	"_tex_env"
.LASF151:
	.string	"lights"
.LASF74:
	.string	"min_filter"
.LASF133:
	.string	"_normalelements"
.LASF125:
	.string	"texMemStart"
.LASF42:
	.string	"diffuse"
.LASF157:
	.string	"blend_type"
.LASF45:
	.string	"spotCutoff"
.LASF85:
	.string	"comRGB"
.LASF21:
	.string	"GXColor"
.LASF139:
	.string	"_GLtype"
.LASF108:
	.string	"start"
.LASF185:
	.string	"glTexEnvs"
.LASF60:
	.string	"height"
.LASF61:
	.string	"_pixelStore"
.LASF141:
	.string	"cur_tex_client"
.LASF124:
	.string	"texMem"
.LASF103:
	.string	"free_size"
.LASF154:
	.string	"gxcullfaceanabled"
.LASF65:
	.string	"skip_rows"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
