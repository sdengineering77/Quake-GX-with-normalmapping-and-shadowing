	.file	"jfdctflt.c.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl jpeg_fdct_float
	.type	jpeg_fdct_float, @function
jpeg_fdct_float:
.LFB0:
	.file 1 "d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jfdctflt.c.c"
	.loc 1 60 0
	.cfi_startproc
.LVL0:
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	lis 8,.LC0@ha
	lis 10,.LC1@ha
	lis 11,.LC2@ha
	lis 9,.LC3@ha
	la 8,.LC0@l(8)
	la 10,.LC1@l(10)
	la 11,.LC2@l(11)
	la 9,.LC3@l(9)
.LVL1:
	.loc 1 103 0
	li 0,8
	.loc 1 60 0
	stfd 31,16(1)
	.loc 1 103 0
	mtctr 0
	.loc 1 60 0
	stfd 30,8(1)
	.loc 1 69 0
	mr 7,3
	.loc 1 91 0
	lfs 0,0(8)
	.loc 1 102 0
	lfs 31,0(10)
	.cfi_offset 62, -16
	.cfi_offset 63, -8
	lfs 2,0(11)
	.loc 1 103 0
	lfs 1,0(9)
.LVL2:
.L2:
	.loc 1 71 0 discriminator 2
	lfs 7,28(7)
	.loc 1 73 0 discriminator 2
	lfs 8,4(7)
	.loc 1 75 0 discriminator 2
	lfs 5,8(7)
	.loc 1 77 0 discriminator 2
	lfs 10,12(7)
	lfs 13,16(7)
	.loc 1 71 0 discriminator 2
	lfs 6,0(7)
	.loc 1 73 0 discriminator 2
	lfs 11,24(7)
	.loc 1 77 0 discriminator 2
	fadds 3,10,13
	.loc 1 75 0 discriminator 2
	lfs 9,20(7)
	.loc 1 72 0 discriminator 2
	fsubs 12,6,7
	.loc 1 71 0 discriminator 2
	fadds 6,6,7
.LVL3:
	.loc 1 75 0 discriminator 2
	fadds 4,5,9
	.loc 1 73 0 discriminator 2
	fadds 7,8,11
.LVL4:
	.loc 1 76 0 discriminator 2
	fsubs 9,5,9
	.loc 1 74 0 discriminator 2
	fsubs 11,8,11
.LVL5:
	.loc 1 78 0 discriminator 2
	fsubs 5,10,13
	.loc 1 85 0 discriminator 2
	fsubs 8,7,4
	.loc 1 83 0 discriminator 2
	fsubs 13,6,3
	.loc 1 97 0 discriminator 2
	fadds 10,9,11
	.loc 1 96 0 discriminator 2
	fadds 5,5,9
	.loc 1 98 0 discriminator 2
	fadds 11,11,12
.LVL6:
	.loc 1 90 0 discriminator 2
	fadds 8,8,13
	.loc 1 102 0 discriminator 2
	fmuls 9,5,31
.LVL7:
	.loc 1 59 0 discriminator 2
	fneg 30,10
	.loc 1 101 0 discriminator 2
	fsubs 5,5,11
	.loc 1 103 0 discriminator 2
	fmuls 11,11,1
	.loc 1 84 0 discriminator 2
	fadds 7,7,4
.LVL8:
	.loc 1 102 0 discriminator 2
	fmadds 9,5,2,9
	.loc 1 103 0 discriminator 2
	fmadds 11,5,2,11
	.loc 1 106 0 discriminator 2
	fmadds 10,10,0,12
	.loc 1 59 0 discriminator 2
	fneg 5,8
	.loc 1 82 0 discriminator 2
	fadds 6,6,3
.LVL9:
	.loc 1 107 0 discriminator 2
	fmadds 12,30,0,12
.LVL10:
	.loc 1 91 0 discriminator 2
	fmadds 8,8,0,13
.LVL11:
	.loc 1 87 0 discriminator 2
	fadds 3,6,7
.LVL12:
	.loc 1 92 0 discriminator 2
	fmadds 13,5,0,13
.LVL13:
	.loc 1 109 0 discriminator 2
	fadds 4,12,9
.LVL14:
	.loc 1 91 0 discriminator 2
	stfs 8,8(7)
	.loc 1 111 0 discriminator 2
	fadds 5,10,11
	.loc 1 87 0 discriminator 2
	stfs 3,0(7)
	.loc 1 88 0 discriminator 2
	fsubs 7,6,7
	.loc 1 92 0 discriminator 2
	stfs 13,24(7)
	.loc 1 110 0 discriminator 2
	fsubs 12,12,9
.LVL15:
	.loc 1 109 0 discriminator 2
	stfs 4,20(7)
	.loc 1 112 0 discriminator 2
	fsubs 11,10,11
.LVL16:
	.loc 1 111 0 discriminator 2
	stfs 5,4(7)
	.loc 1 88 0 discriminator 2
	stfs 7,16(7)
	.loc 1 110 0 discriminator 2
	stfs 12,12(7)
	.loc 1 112 0 discriminator 2
	stfs 11,28(7)
	.loc 1 114 0 discriminator 2
	addi 7,7,32
.LVL17:
	.loc 1 70 0 discriminator 2
	bdnz .L2
	.loc 1 153 0
	li 0,8
	.loc 1 141 0
	lfs 0,0(8)
	.loc 1 152 0
	lfs 31,0(10)
	.loc 1 153 0
	mtctr 0
	.loc 1 152 0
	lfs 2,0(11)
	.loc 1 153 0
	lfs 1,0(9)
.LVL18:
.L3:
	.loc 1 121 0 discriminator 2
	lfs 7,224(3)
	.loc 1 123 0 discriminator 2
	lfs 8,32(3)
	.loc 1 125 0 discriminator 2
	lfs 5,64(3)
	.loc 1 127 0 discriminator 2
	lfs 10,96(3)
.LVL19:
	lfs 13,128(3)
	.loc 1 121 0 discriminator 2
	lfs 6,0(3)
	.loc 1 123 0 discriminator 2
	lfs 11,192(3)
	.loc 1 127 0 discriminator 2
	fadds 3,10,13
	.loc 1 125 0 discriminator 2
	lfs 9,160(3)
.LVL20:
	.loc 1 122 0 discriminator 2
	fsubs 12,6,7
	.loc 1 121 0 discriminator 2
	fadds 6,6,7
.LVL21:
	.loc 1 125 0 discriminator 2
	fadds 4,5,9
	.loc 1 123 0 discriminator 2
	fadds 7,8,11
.LVL22:
	.loc 1 126 0 discriminator 2
	fsubs 9,5,9
	.loc 1 124 0 discriminator 2
	fsubs 11,8,11
.LVL23:
	.loc 1 128 0 discriminator 2
	fsubs 5,10,13
	.loc 1 135 0 discriminator 2
	fsubs 8,7,4
	.loc 1 133 0 discriminator 2
	fsubs 13,6,3
	.loc 1 147 0 discriminator 2
	fadds 10,9,11
	.loc 1 146 0 discriminator 2
	fadds 5,5,9
	.loc 1 148 0 discriminator 2
	fadds 11,11,12
.LVL24:
	.loc 1 140 0 discriminator 2
	fadds 8,8,13
	.loc 1 152 0 discriminator 2
	fmuls 9,5,31
.LVL25:
	.loc 1 59 0 discriminator 2
	fneg 30,10
	.loc 1 151 0 discriminator 2
	fsubs 5,5,11
	.loc 1 153 0 discriminator 2
	fmuls 11,11,1
	.loc 1 134 0 discriminator 2
	fadds 7,7,4
.LVL26:
	.loc 1 152 0 discriminator 2
	fmadds 9,5,2,9
	.loc 1 153 0 discriminator 2
	fmadds 11,5,2,11
	.loc 1 156 0 discriminator 2
	fmadds 10,10,0,12
	.loc 1 59 0 discriminator 2
	fneg 5,8
	.loc 1 132 0 discriminator 2
	fadds 6,6,3
.LVL27:
	.loc 1 157 0 discriminator 2
	fmadds 12,30,0,12
.LVL28:
	.loc 1 141 0 discriminator 2
	fmadds 8,8,0,13
.LVL29:
	.loc 1 137 0 discriminator 2
	fadds 3,6,7
.LVL30:
	.loc 1 142 0 discriminator 2
	fmadds 13,5,0,13
.LVL31:
	.loc 1 159 0 discriminator 2
	fadds 4,12,9
.LVL32:
	.loc 1 141 0 discriminator 2
	stfs 8,64(3)
	.loc 1 161 0 discriminator 2
	fadds 5,10,11
	.loc 1 137 0 discriminator 2
	stfs 3,0(3)
	.loc 1 138 0 discriminator 2
	fsubs 7,6,7
	.loc 1 142 0 discriminator 2
	stfs 13,192(3)
	.loc 1 160 0 discriminator 2
	fsubs 12,12,9
.LVL33:
	.loc 1 159 0 discriminator 2
	stfs 4,160(3)
	.loc 1 162 0 discriminator 2
	fsubs 11,10,11
.LVL34:
	.loc 1 161 0 discriminator 2
	stfs 5,32(3)
	.loc 1 138 0 discriminator 2
	stfs 7,128(3)
	.loc 1 160 0 discriminator 2
	stfs 12,96(3)
	.loc 1 162 0 discriminator 2
	stfs 11,224(3)
	.loc 1 164 0 discriminator 2
	addi 3,3,4
.LVL35:
	.loc 1 120 0 discriminator 2
	bdnz .L3
	.loc 1 166 0
	lfd 30,8(1)
	lfd 31,16(1)
	addi 1,1,24
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	blr
	.cfi_endproc
.LFE0:
	.size	jpeg_fdct_float, .-jpeg_fdct_float
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1060439283
.LC1:
	.4byte	1057655764
.LC2:
	.4byte	1053028117
.LC3:
	.4byte	1067924853
	.section	".text"
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1c2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3b
	.4byte	0x79
	.4byte	.LLST1
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.4byte	.LLST2
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.4byte	.LLST3
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.4byte	.LLST4
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.4byte	.LLST5
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.4byte	.LLST6
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.4byte	.LLST7
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3d
	.4byte	0x7f
	.4byte	.LLST8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3e
	.4byte	0x7f
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3e
	.4byte	0x7f
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3e
	.4byte	0x7f
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3e
	.4byte	0x7f
	.4byte	.LLST9
	.uleb128 0x9
	.string	"z1"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7f
	.uleb128 0xa
	.string	"z2"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7f
	.4byte	.LLST10
	.uleb128 0x9
	.string	"z3"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7f
	.uleb128 0xa
	.string	"z4"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7f
	.4byte	.LLST11
	.uleb128 0x9
	.string	"z5"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7f
	.uleb128 0xa
	.string	"z11"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7f
	.4byte	.LLST12
	.uleb128 0xa
	.string	"z13"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7f
	.4byte	.LLST13
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x40
	.4byte	0x79
	.4byte	.LLST14
	.uleb128 0xa
	.string	"ctr"
	.byte	0x1
	.byte	0x41
	.4byte	0x25
	.4byte	.LLST15
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
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
.LASF20:
	.string	"tmp10"
.LASF21:
	.string	"tmp11"
.LASF22:
	.string	"tmp12"
.LASF11:
	.string	"float"
.LASF1:
	.string	"long int"
.LASF12:
	.string	"tmp0"
.LASF13:
	.string	"tmp1"
.LASF14:
	.string	"tmp2"
.LASF15:
	.string	"tmp3"
.LASF19:
	.string	"tmp4"
.LASF16:
	.string	"tmp5"
.LASF17:
	.string	"tmp6"
.LASF18:
	.string	"tmp7"
.LASF29:
	.string	"data"
.LASF23:
	.string	"tmp13"
.LASF28:
	.string	"jpeg_fdct_float"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF26:
	.string	"d:/Data/Nintendo/DoomGX/src/renderer/jpeg-6/jfdctflt.c.c"
.LASF25:
	.string	"GNU C 4.6.3"
.LASF24:
	.string	"dataptr"
.LASF10:
	.string	"double"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF6:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF4:
	.string	"short int"
.LASF27:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF2:
	.string	"signed char"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
