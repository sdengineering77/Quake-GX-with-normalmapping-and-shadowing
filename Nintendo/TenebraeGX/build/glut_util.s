	.file	"glut_util.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl __glutWarning
	.type	__glutWarning, @function
__glutWarning:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_util.c"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-128(1)
.LCFI0:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	stw 30,120(1)
	stw 0,132(1)
	stw 31,124(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	stw 9,48(1)
	stw 10,52(1)
	bne- 1,.L2
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 16 0
	stfd 1,56(1)
	stfd 2,64(1)
	stfd 3,72(1)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	stfd 7,104(1)
	stfd 8,112(1)
.L2:
	.loc 1 21 0
	lis 9,__glutProgramName@ha
	.loc 1 19 0
	li 0,1
	.loc 1 21 0
	lwz 5,__glutProgramName@l(9)
	.loc 1 20 0
	lis 31,_impure_ptr@ha
	.loc 1 19 0
	stb 0,8(1)
	li 0,0
	.loc 1 20 0
	cmpwi 7,5,0
	lwz 9,_impure_ptr@l(31)
	.loc 1 19 0
	stb 0,9(1)
	addi 0,1,136
	stw 0,12(1)
	addi 0,1,24
	.loc 1 16 0
	mr 30,3
	.loc 1 19 0
	stw 0,16(1)
	.loc 1 20 0
	lwz 3,12(9)
.LVL1:
	beq- 7,.L10
.L3:
	.loc 1 20 0 is_stmt 0 discriminator 3
	lis 4,.LC1@ha
	la 4,.LC1@l(4)
	crxor 6,6,6
	bl fprintf
	.loc 1 22 0 is_stmt 1 discriminator 3
	lwz 9,_impure_ptr@l(31)
	addi 5,1,8
	mr 4,30
	lwz 3,12(9)
	bl vfprintf
	.loc 1 24 0 discriminator 3
	lwz 3,_impure_ptr@l(31)
	.loc 1 22 0 discriminator 3
	lis 11,_impure_ptr@ha
	.loc 1 24 0 discriminator 3
	lwz 5,12(3)
	lwz 9,8(5)
	addi 0,9,-1
	cmpwi 7,0,0
	stw 0,8(5)
	blt- 7,.L11
	.loc 1 24 0 is_stmt 0 discriminator 2
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 9,_impure_ptr@l(11)
	lwz 9,12(9)
	lwz 11,0(9)
	addi 0,11,1
	stw 0,0(9)
.L1:
	.loc 1 25 0 is_stmt 1
	lwz 0,132(1)
	lwz 30,120(1)
.LVL2:
	mtlr 0
	lwz 31,124(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3:
.L11:
.LCFI2:
	.cfi_restore_state
	.loc 1 24 0 discriminator 1
	lwz 9,24(5)
	cmpw 7,0,9
	blt- 7,.L5
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 3,_impure_ptr@l(11)
	lwz 5,12(3)
	lwz 9,0(5)
	lbz 0,0(9)
	cmpwi 7,0,10
	beq- 7,.L5
	.loc 1 25 0 discriminator 1
	lwz 0,132(1)
	.loc 1 24 0 discriminator 1
	addi 9,9,1
	.loc 1 25 0 discriminator 1
	lwz 30,120(1)
.LVL4:
	mtlr 0
	lwz 31,124(1)
	.loc 1 24 0 discriminator 1
	stw 9,0(5)
	.loc 1 25 0 discriminator 1
	addi 1,1,128
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.LVL5:
.L5:
.LCFI4:
	.cfi_restore_state
	.loc 1 24 0 discriminator 2
	li 4,10
	bl __swbuf_r
	b .L1
.L10:
	.loc 1 20 0
	lis 5,.LC0@ha
	la 5,.LC0@l(5)
	b .L3
	.cfi_endproc
.LFE0:
	.size	__glutWarning, .-__glutWarning
	.align 2
	.globl glutReportErrors
	.type	glutReportErrors, @function
glutReportErrors:
.LFB1:
	.loc 1 30 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI5:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 34 0
	lis 31,.LC2@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 30 0
	stw 0,20(1)
	.loc 1 34 0
	la 31,.LC2@l(31)
	.loc 1 33 0
	b .L13
	.cfi_offset 65, 4
.LVL6:
.L14:
	.loc 1 34 0
	bl gluErrorString
.LVL7:
	mr 4,3
	mr 3,31
	crxor 6,6,6
	bl __glutWarning
.L13:
	.loc 1 33 0 discriminator 1
	bl glGetError
.LVL8:
	cmpwi 7,3,0
	bne+ 7,.L14
	.loc 1 35 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1:
	.size	glutReportErrors, .-glutReportErrors
	.align 2
	.globl __glutFatalError
	.type	__glutFatalError, @function
__glutFatalError:
.LFB2:
	.loc 1 40 0
	.cfi_startproc
.LVL9:
	mflr 0
	stwu 1,-128(1)
.LCFI7:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	stw 30,120(1)
	stw 0,132(1)
	stw 31,124(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	stw 9,48(1)
	stw 10,52(1)
	bne- 1,.L16
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 40 0
	stfd 1,56(1)
	stfd 2,64(1)
	stfd 3,72(1)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	stfd 7,104(1)
	stfd 8,112(1)
.L16:
	.loc 1 45 0
	lis 9,__glutProgramName@ha
	.loc 1 43 0
	li 0,1
	.loc 1 45 0
	lwz 5,__glutProgramName@l(9)
	.loc 1 44 0
	lis 31,_impure_ptr@ha
	.loc 1 43 0
	stb 0,8(1)
	li 0,0
	.loc 1 44 0
	cmpwi 7,5,0
	lwz 9,_impure_ptr@l(31)
	.loc 1 43 0
	stb 0,9(1)
	addi 0,1,136
	stw 0,12(1)
	addi 0,1,24
	.loc 1 40 0
	mr 30,3
	.loc 1 43 0
	stw 0,16(1)
	.loc 1 44 0
	lwz 3,12(9)
.LVL10:
	beq- 7,.L23
.L17:
	.loc 1 44 0 is_stmt 0 discriminator 3
	lis 4,.LC3@ha
	la 4,.LC3@l(4)
	crxor 6,6,6
	bl fprintf
	.loc 1 46 0 is_stmt 1 discriminator 3
	lwz 9,_impure_ptr@l(31)
	addi 5,1,8
	mr 4,30
	lwz 3,12(9)
	bl vfprintf
	.loc 1 48 0 discriminator 3
	lwz 3,_impure_ptr@l(31)
	.loc 1 46 0 discriminator 3
	lis 11,_impure_ptr@ha
	.loc 1 48 0 discriminator 3
	lwz 5,12(3)
	lwz 9,8(5)
	addi 0,9,-1
	cmpwi 7,0,0
	stw 0,8(5)
	blt- 7,.L24
	.loc 1 48 0 is_stmt 0 discriminator 2
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 9,_impure_ptr@l(11)
	lwz 9,12(9)
	lwz 11,0(9)
	addi 0,11,1
	stw 0,0(9)
.L21:
	.loc 1 49 0 is_stmt 1
	li 3,1
	bl exit
.L24:
	.loc 1 48 0 discriminator 1
	lwz 9,24(5)
	cmpw 7,0,9
	blt- 7,.L19
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 3,_impure_ptr@l(11)
	lwz 5,12(3)
	lwz 9,0(5)
	lbz 0,0(9)
	cmpwi 7,0,10
	beq- 7,.L19
	addi 9,9,1
	stw 9,0(5)
	b .L21
.L19:
	.loc 1 48 0 is_stmt 0 discriminator 2
	li 4,10
	bl __swbuf_r
	b .L21
.L23:
	.loc 1 44 0 is_stmt 1
	lis 5,.LC0@ha
	la 5,.LC0@l(5)
	b .L17
	.cfi_endproc
.LFE2:
	.size	__glutFatalError, .-__glutFatalError
	.align 2
	.globl __glutFatalUsage
	.type	__glutFatalUsage, @function
__glutFatalUsage:
.LFB3:
	.loc 1 54 0
	.cfi_startproc
.LVL11:
	mflr 0
	stwu 1,-128(1)
.LCFI8:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	stw 30,120(1)
	stw 0,132(1)
	stw 31,124(1)
	stw 4,28(1)
	stw 5,32(1)
	stw 6,36(1)
	stw 7,40(1)
	stw 8,44(1)
	stw 9,48(1)
	stw 10,52(1)
	bne- 1,.L26
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 54 0
	stfd 1,56(1)
	stfd 2,64(1)
	stfd 3,72(1)
	stfd 4,80(1)
	stfd 5,88(1)
	stfd 6,96(1)
	stfd 7,104(1)
	stfd 8,112(1)
.L26:
	.loc 1 59 0
	lis 9,__glutProgramName@ha
	.loc 1 57 0
	li 0,1
	.loc 1 59 0
	lwz 5,__glutProgramName@l(9)
	.loc 1 58 0
	lis 31,_impure_ptr@ha
	.loc 1 57 0
	stb 0,8(1)
	li 0,0
	.loc 1 58 0
	cmpwi 7,5,0
	lwz 9,_impure_ptr@l(31)
	.loc 1 57 0
	stb 0,9(1)
	addi 0,1,136
	stw 0,12(1)
	addi 0,1,24
	.loc 1 54 0
	mr 30,3
	.loc 1 57 0
	stw 0,16(1)
	.loc 1 58 0
	lwz 3,12(9)
.LVL12:
	beq- 7,.L33
.L27:
	.loc 1 58 0 is_stmt 0 discriminator 3
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	crxor 6,6,6
	bl fprintf
	.loc 1 60 0 is_stmt 1 discriminator 3
	lwz 9,_impure_ptr@l(31)
	addi 5,1,8
	mr 4,30
	lwz 3,12(9)
	bl vfprintf
	.loc 1 62 0 discriminator 3
	lwz 3,_impure_ptr@l(31)
	.loc 1 60 0 discriminator 3
	lis 11,_impure_ptr@ha
	.loc 1 62 0 discriminator 3
	lwz 5,12(3)
	lwz 9,8(5)
	addi 0,9,-1
	cmpwi 7,0,0
	stw 0,8(5)
	blt- 7,.L34
	.loc 1 62 0 is_stmt 0 discriminator 2
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 9,_impure_ptr@l(11)
	lwz 9,12(9)
	lwz 11,0(9)
	addi 0,11,1
	stw 0,0(9)
	.loc 1 63 0 is_stmt 1 discriminator 2
	bl abort
.L34:
	.loc 1 62 0 discriminator 1
	lwz 9,24(5)
	cmpw 7,0,9
	blt- 7,.L29
	lwz 9,0(5)
	li 0,10
	stb 0,0(9)
	lwz 3,_impure_ptr@l(11)
	lwz 5,12(3)
	lwz 9,0(5)
	lbz 0,0(9)
	cmpwi 7,0,10
	beq- 7,.L29
	addi 9,9,1
	stw 9,0(5)
	.loc 1 63 0 discriminator 1
	bl abort
.L29:
	.loc 1 62 0 discriminator 2
	li 4,10
	bl __swbuf_r
	.loc 1 63 0 discriminator 2
	bl abort
.L33:
	.loc 1 58 0
	lis 5,.LC0@ha
	la 5,.LC0@l(5)
	b .L27
	.cfi_endproc
.LFE3:
	.size	__glutFatalUsage, .-__glutFatalUsage
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"(unamed)"
	.zero	3
.LC1:
	.string	"GLUT: Warning in %s: "
	.zero	2
.LC2:
	.string	"GL error: %s"
	.zero	3
.LC3:
	.string	"GLUT: Fatal Error in %s: "
	.zero	2
.LC4:
	.string	"GLUT: Fatal API Usage in %s: "
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/_types.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/lock.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 5 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/_types.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/reent.h"
	.file 7 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stdarg.h"
	.file 8 "<built-in>"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glutint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaa7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x1
	.4byte	.LASF134
	.4byte	.LASF135
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
	.4byte	.LASF8
	.byte	0x2
	.byte	0xa
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x7
	.4byte	0x4f
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x4
	.2byte	0x161
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x46
	.4byte	0xa5
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x48
	.4byte	0x7a
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x49
	.4byte	0xa5
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0xb5
	.uleb128 0x9
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x43
	.4byte	0xda
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x5
	.byte	0x45
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4a
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4b
	.4byte	0xb5
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4f
	.4byte	0x6f
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x15
	.4byte	0xfd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x18
	.byte	0x6
	.byte	0x2c
	.4byte	0x163
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2e
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x30
	.4byte	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x104
	.uleb128 0x8
	.4byte	0xf2
	.4byte	0x179
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x24
	.byte	0x6
	.byte	0x34
	.4byte	0x204
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x36
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x38
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x39
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3a
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3c
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3d
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3e
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.2byte	0x108
	.byte	0x6
	.byte	0x47
	.4byte	0x24d
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x48
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x49
	.4byte	0x24d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4b
	.4byte	0xf2
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4e
	.4byte	0xf2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0x8
	.4byte	0xf0
	.4byte	0x25d
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.2byte	0x190
	.byte	0x6
	.byte	0x59
	.4byte	0x2a4
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x5a
	.4byte	0x2a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x5b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x5d
	.4byte	0x2aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5e
	.4byte	0x204
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x25d
	.uleb128 0x8
	.4byte	0x2bc
	.4byte	0x2ba
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ba
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6
	.byte	0x69
	.4byte	0x2eb
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x6a
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x6b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3a
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x70
	.byte	0x6
	.byte	0xa9
	.4byte	0x44b
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xaa
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xab
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xac
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0xae
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xaf
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0xb0
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb7
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0xb9
	.4byte	0x5db
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbb
	.4byte	0x60b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbd
	.4byte	0x630
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbe
	.4byte	0x64b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xc1
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xc2
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xc3
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc6
	.4byte	0x651
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc7
	.4byte	0x661
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xca
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcd
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xce
	.4byte	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd1
	.4byte	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd5
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd7
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd8
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x4f
	.4byte	0x46a
	.uleb128 0x13
	.4byte	0x46a
	.uleb128 0x13
	.4byte	0xf0
	.uleb128 0x13
	.4byte	0x5ce
	.uleb128 0x13
	.4byte	0x4f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x470
	.uleb128 0x14
	.4byte	.LASF62
	.2byte	0x440
	.byte	0x6
	.2byte	0x244
	.4byte	0x5ce
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x246
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x24d
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x24e
	.4byte	0x8d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x250
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x251
	.4byte	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x253
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x255
	.4byte	0x8f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x258
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x259
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x25a
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x25b
	.4byte	0x8fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x25e
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x25f
	.4byte	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x282
	.4byte	0x8b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x285
	.4byte	0x2a4
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x286
	.4byte	0x25d
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x289
	.4byte	0x90d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x28e
	.4byte	0x67d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x28f
	.4byte	0x919
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF84
	.uleb128 0xf
	.byte	0x4
	.4byte	0x44b
	.uleb128 0x12
	.byte	0x1
	.4byte	0x4f
	.4byte	0x600
	.uleb128 0x13
	.4byte	0x46a
	.uleb128 0x13
	.4byte	0xf0
	.uleb128 0x13
	.4byte	0x600
	.uleb128 0x13
	.4byte	0x4f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x606
	.uleb128 0x16
	.4byte	0x5d4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e1
	.uleb128 0x12
	.byte	0x1
	.4byte	0x64
	.4byte	0x630
	.uleb128 0x13
	.4byte	0x46a
	.uleb128 0x13
	.4byte	0xf0
	.uleb128 0x13
	.4byte	0x64
	.uleb128 0x13
	.4byte	0x4f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x611
	.uleb128 0x12
	.byte	0x1
	.4byte	0x4f
	.4byte	0x64b
	.uleb128 0x13
	.4byte	0x46a
	.uleb128 0x13
	.4byte	0xf0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x636
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x661
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x671
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x111
	.4byte	0x2f1
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0xc
	.byte	0x6
	.2byte	0x115
	.4byte	0x6b8
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x117
	.4byte	0x6b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x118
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x119
	.4byte	0x6be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x671
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0xe
	.byte	0x6
	.2byte	0x131
	.4byte	0x6ff
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x132
	.4byte	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x133
	.4byte	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x134
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x70f
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.byte	0xd0
	.byte	0x6
	.2byte	0x263
	.4byte	0x83f
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x265
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x266
	.4byte	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x267
	.4byte	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x268
	.4byte	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x269
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x26a
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x26b
	.4byte	0x6c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x26c
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x26d
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x26e
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x26f
	.4byte	0x84f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x270
	.4byte	0x85f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x271
	.4byte	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x272
	.4byte	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x273
	.4byte	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x274
	.4byte	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x275
	.4byte	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x276
	.4byte	0xda
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x277
	.4byte	0x4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x5d4
	.4byte	0x84f
	.uleb128 0x9
	.4byte	0x25
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x5d4
	.4byte	0x85f
	.uleb128 0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x5d4
	.4byte	0x86f
	.uleb128 0x9
	.4byte	0x25
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.byte	0xf0
	.byte	0x6
	.2byte	0x27c
	.4byte	0x897
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x27f
	.4byte	0x897
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x280
	.4byte	0x8a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x2eb
	.4byte	0x8a7
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0x8b7
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.byte	0xf0
	.byte	0x6
	.2byte	0x261
	.4byte	0x8d9
	.uleb128 0x1a
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x278
	.4byte	0x70f
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x281
	.4byte	0x86f
	.byte	0
	.uleb128 0x8
	.4byte	0x5d4
	.4byte	0x8e9
	.uleb128 0x9
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x8f5
	.uleb128 0x13
	.4byte	0x46a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x163
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x90d
	.uleb128 0x13
	.4byte	0x4f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x913
	.uleb128 0xf
	.byte	0x4
	.4byte	0x901
	.uleb128 0x8
	.4byte	0x671
	.4byte	0x929
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF115
	.byte	0x7
	.byte	0x28
	.4byte	0x934
	.uleb128 0x8
	.4byte	0x944
	.4byte	0x944
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0xc
	.byte	0x8
	.byte	0
	.4byte	0x997
	.uleb128 0xe
	.string	"gpr"
	.byte	0x8
	.byte	0
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"fpr"
	.byte	0x8
	.byte	0
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x8
	.byte	0
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x8
	.byte	0
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x8
	.byte	0
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x7
	.byte	0x66
	.4byte	0x929
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x9
	.byte	0x93
	.4byte	0x25
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF122
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF123
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x9f4
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0xf
	.4byte	0x5ce
	.4byte	.LLST1
	.uleb128 0x1e
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x11
	.4byte	0x997
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST2
	.4byte	0xa1d
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x1
	.byte	0x1f
	.4byte	0x9a2
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST4
	.4byte	0xa56
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0x27
	.4byte	0x5ce
	.4byte	.LLST5
	.uleb128 0x1e
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x29
	.4byte	0x997
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST6
	.4byte	0xa8f
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0x35
	.4byte	0x5ce
	.4byte	.LLST7
	.uleb128 0x1e
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x37
	.4byte	0x997
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x6
	.2byte	0x332
	.4byte	0x46a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0xa
	.byte	0x40
	.4byte	0x5ce
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
	.uleb128 0x6
	.uleb128 0x17
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x19
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
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
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB1-.Ltext0
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
.LLST3:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6e
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
.LASF36:
	.string	"_dso_handle"
.LASF4:
	.string	"short int"
.LASF35:
	.string	"_fnargs"
.LASF49:
	.string	"_cookie"
.LASF89:
	.string	"_rand48"
.LASF68:
	.string	"_emergency"
.LASF120:
	.string	"va_list"
.LASF80:
	.string	"_atexit0"
.LASF109:
	.string	"_wcrtomb_state"
.LASF110:
	.string	"_wcsrtombs_state"
.LASF7:
	.string	"long long unsigned int"
.LASF48:
	.string	"_lbfsize"
.LASF107:
	.string	"_mbrtowc_state"
.LASF102:
	.string	"_wctomb_state"
.LASF25:
	.string	"__tm_sec"
.LASF53:
	.string	"_close"
.LASF2:
	.string	"signed char"
.LASF54:
	.string	"_ubuf"
.LASF43:
	.string	"_base"
.LASF27:
	.string	"__tm_hour"
.LASF83:
	.string	"__sf"
.LASF34:
	.string	"_on_exit_args"
.LASF124:
	.string	"__glutWarning"
.LASF82:
	.string	"__sglue"
.LASF121:
	.string	"GLenum"
.LASF1:
	.string	"long int"
.LASF135:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF46:
	.string	"_flags"
.LASF38:
	.string	"_is_cxa"
.LASF64:
	.string	"_stdin"
.LASF74:
	.string	"_result_k"
.LASF6:
	.string	"long long int"
.LASF123:
	.string	"double"
.LASF78:
	.string	"_cvtbuf"
.LASF57:
	.string	"_offset"
.LASF108:
	.string	"_mbsrtowcs_state"
.LASF106:
	.string	"_mbrlen_state"
.LASF41:
	.string	"_fns"
.LASF21:
	.string	"_sign"
.LASF131:
	.string	"_impure_ptr"
.LASF66:
	.string	"_stderr"
.LASF23:
	.string	"_Bigint"
.LASF117:
	.string	"reserved"
.LASF50:
	.string	"_read"
.LASF24:
	.string	"__tm"
.LASF12:
	.string	"__wchb"
.LASF65:
	.string	"_stdout"
.LASF77:
	.string	"_cvtlen"
.LASF118:
	.string	"overflow_arg_area"
.LASF18:
	.string	"long unsigned int"
.LASF47:
	.string	"_file"
.LASF40:
	.string	"_ind"
.LASF58:
	.string	"_data"
.LASF125:
	.string	"glutReportErrors"
.LASF87:
	.string	"_niobs"
.LASF98:
	.string	"_rand_next"
.LASF104:
	.string	"_signal_buf"
.LASF95:
	.string	"_asctime_buf"
.LASF73:
	.string	"_result"
.LASF11:
	.string	"__wch"
.LASF79:
	.string	"_new"
.LASF59:
	.string	"_lock"
.LASF91:
	.string	"_mult"
.LASF51:
	.string	"_write"
.LASF30:
	.string	"__tm_year"
.LASF115:
	.string	"__gnuc_va_list"
.LASF112:
	.string	"_nextf"
.LASF99:
	.string	"_r48"
.LASF29:
	.string	"__tm_mon"
.LASF39:
	.string	"_atexit"
.LASF71:
	.string	"__sdidinit"
.LASF97:
	.string	"_gamma_signgam"
.LASF10:
	.string	"wint_t"
.LASF122:
	.string	"float"
.LASF76:
	.string	"_freelist"
.LASF127:
	.string	"error"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"unsigned char"
.LASF88:
	.string	"_iobs"
.LASF111:
	.string	"_h_errno"
.LASF16:
	.string	"_flock_t"
.LASF32:
	.string	"__tm_yday"
.LASF42:
	.string	"__sbuf"
.LASF61:
	.string	"_flags2"
.LASF85:
	.string	"__FILE"
.LASF15:
	.string	"_mbstate_t"
.LASF45:
	.string	"__sFILE"
.LASF60:
	.string	"_mbstate"
.LASF100:
	.string	"_mblen_state"
.LASF67:
	.string	"_inc"
.LASF119:
	.string	"reg_save_area"
.LASF129:
	.string	"format"
.LASF72:
	.string	"__cleanup"
.LASF20:
	.string	"_maxwds"
.LASF62:
	.string	"_reent"
.LASF90:
	.string	"_seed"
.LASF13:
	.string	"__count"
.LASF14:
	.string	"__value"
.LASF52:
	.string	"_seek"
.LASF31:
	.string	"__tm_wday"
.LASF8:
	.string	"_fpos_t"
.LASF133:
	.string	"GNU C 4.6.3"
.LASF63:
	.string	"_errno"
.LASF84:
	.string	"char"
.LASF56:
	.string	"_blksize"
.LASF132:
	.string	"__glutProgramName"
.LASF44:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"_next"
.LASF94:
	.string	"_strtok_last"
.LASF37:
	.string	"_fntypes"
.LASF5:
	.string	"short unsigned int"
.LASF92:
	.string	"_add"
.LASF17:
	.string	"__ULong"
.LASF105:
	.string	"_getdate_err"
.LASF130:
	.string	"__glutFatalUsage"
.LASF126:
	.string	"args"
.LASF69:
	.string	"_current_category"
.LASF93:
	.string	"_unused_rand"
.LASF22:
	.string	"_wds"
.LASF86:
	.string	"_glue"
.LASF113:
	.string	"_nmalloc"
.LASF103:
	.string	"_l64a_buf"
.LASF128:
	.string	"__glutFatalError"
.LASF81:
	.string	"_sig_func"
.LASF55:
	.string	"_nbuf"
.LASF114:
	.string	"_unused"
.LASF33:
	.string	"__tm_isdst"
.LASF96:
	.string	"_localtime_buf"
.LASF26:
	.string	"__tm_min"
.LASF134:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_util.c"
.LASF70:
	.string	"_current_locale"
.LASF101:
	.string	"_mbtowc_state"
.LASF75:
	.string	"_p5s"
.LASF28:
	.string	"__tm_mday"
.LASF116:
	.string	"__va_list_tag"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
