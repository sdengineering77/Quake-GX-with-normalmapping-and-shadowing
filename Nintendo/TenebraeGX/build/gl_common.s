	.file	"gl_common.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl VID_SetPalette
	.type	VID_SetPalette, @function
VID_SetPalette:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_common.c"
	.loc 1 104 0
	.cfi_startproc
.LVL0:
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 140 0
	li 0,256
	.loc 1 167 0
	lis 11,d_8to24table-4@ha
	lis 9,d_8to8graytable-1@ha
	.loc 1 140 0
	lis 6,0xaaaa
	.loc 1 104 0
	stw 30,8(1)
	stw 31,12(1)
	.loc 1 140 0
	mtctr 0
	.loc 1 167 0
	la 11,d_8to24table-4@l(11)
	la 9,d_8to8graytable-1@l(9)
	.loc 1 140 0
	ori 6,6,43691
.LVL1:
.L2:
	.loc 1 124 0 discriminator 2
	lbz 8,0(3)
.LVL2:
	.loc 1 125 0 discriminator 2
	lbz 10,1(3)
.LVL3:
	.loc 1 126 0 discriminator 2
	lbz 0,2(3)
.LVL4:
	.loc 1 127 0 discriminator 2
	addi 3,3,3
.LVL5:
	.loc 1 140 0 discriminator 2
	add 7,10,8
	.loc 1 136 0 discriminator 2
	slwi 8,8,24
.LVL6:
	.loc 1 140 0 discriminator 2
	add 7,7,0
	.loc 1 136 0 discriminator 2
	slwi 10,10,16
.LVL7:
	.loc 1 140 0 discriminator 2
	mulhwu 7,7,6
	.loc 1 136 0 discriminator 2
	add 10,8,10
	addi 10,10,255
.LVL8:
	slwi 0,0,8
.LVL9:
	add 0,10,0
	.loc 1 140 0 discriminator 2
	srwi 10,7,1
	.loc 1 138 0 discriminator 2
	stwu 0,4(11)
	.loc 1 140 0 discriminator 2
	stbu 10,1(9)
	.loc 1 122 0 discriminator 2
	bdnz .L2
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 1 146 0
	lis 31,d_8to24table@ha
	lis 30,d_15to8table@ha
	la 31,d_8to24table@l(31)
	.loc 1 150 0
	li 12,0
	.loc 1 146 0
	lwz 0,1020(31)
	la 30,d_15to8table@l(30)
	rlwinm 0,0,0,0,23
	stw 0,1020(31)
.LVL10:
.L5:
	.loc 1 160 0
	li 0,256
	.loc 1 157 0
	rlwinm 4,12,3,24,28
	.loc 1 158 0
	rlwinm 5,12,30,24,28
	.loc 1 159 0
	rlwinm 6,12,25,24,28
	.loc 1 161 0
	lis 7,0x5f5
	.loc 1 160 0
	mtctr 0
	.loc 1 157 0
	addi 4,4,4
.LVL11:
	.loc 1 158 0
	addi 5,5,4
.LVL12:
	.loc 1 159 0
	addi 6,6,4
.LVL13:
	.loc 1 161 0
	ori 7,7,57600
	li 3,0
	li 8,0
	.loc 1 160 0
	mr 9,31
.LVL14:
.L4:
	.loc 1 162 0
	lbz 10,0(9)
	.loc 1 163 0
	lbz 11,1(9)
	.loc 1 164 0
	lbz 0,2(9)
	.loc 1 162 0
	subf 10,10,4
.LVL15:
	.loc 1 163 0
	subf 11,11,5
.LVL16:
	.loc 1 165 0
	mullw 10,10,10
.LVL17:
	.loc 1 164 0
	subf 0,0,6
.LVL18:
	.loc 1 161 0
	addi 9,9,4
	.loc 1 165 0
	mullw 11,11,11
.LVL19:
	mullw 0,0,0
.LVL20:
	add 11,10,11
	add 0,11,0
.LVL21:
	.loc 1 166 0
	cmpw 7,0,7
	bge- 7,.L3
	.loc 1 167 0
	mr 3,8
.LVL22:
	mr 7,0
.LVL23:
.L3:
	.loc 1 161 0
	addi 8,8,1
.LVL24:
	bdnz .L4
	.loc 1 150 0
	addi 0,12,1
.LVL25:
	.loc 1 171 0
	stbx 3,30,12
	.loc 1 150 0
	rlwinm 12,0,0,0xffff
.LVL26:
	andi. 0,12,32768
	beq+ 0,.L5
	.loc 1 173 0
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE38:
	.size	VID_SetPalette, .-VID_SetPalette
	.align 2
	.globl VID_ShiftPalette
	.type	VID_ShiftPalette, @function
VID_ShiftPalette:
.LFB39:
	.loc 1 178 0
	.cfi_startproc
.LVL27:
	.loc 1 185 0
	blr
	.cfi_endproc
.LFE39:
	.size	VID_ShiftPalette, .-VID_ShiftPalette
	.align 2
	.globl CheckPalettedTexture
	.type	CheckPalettedTexture, @function
CheckPalettedTexture:
.LFB40:
	.loc 1 190 0
	.cfi_startproc
	mflr 0
	.loc 1 191 0
	lis 9,gl_extensions@ha
	.loc 1 190 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 191 0
	lis 4,.LC0@ha
	lwz 3,gl_extensions@l(9)
	la 4,.LC0@l(4)
	.loc 1 190 0
	stw 0,12(1)
	.loc 1 191 0
	.cfi_offset 65, 4
	bl strstr
	cmpwi 7,3,0
	beq- 7,.L11
	.loc 1 194 0
	lis 3,.LC1@ha
	.loc 1 193 0
	li 0,1
	lis 9,gl_palettedtex@ha
	.loc 1 194 0
	la 3,.LC1@l(3)
	.loc 1 193 0
	stb 0,gl_palettedtex@l(9)
	.loc 1 194 0
	crxor 6,6,6
	bl Con_Printf
.L11:
	.loc 1 196 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE40:
	.size	CheckPalettedTexture, .-CheckPalettedTexture
	.align 2
	.globl CheckMultiTextureExtensions
	.type	CheckMultiTextureExtensions, @function
CheckMultiTextureExtensions:
.LFB41:
	.loc 1 236 0
	.cfi_startproc
	mflr 0
	.loc 1 237 0
	lis 9,gl_extensions@ha
	.loc 1 236 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 237 0
	lis 4,.LC2@ha
	lwz 3,gl_extensions@l(9)
	la 4,.LC2@l(4)
	.loc 1 236 0
	stw 0,12(1)
	.loc 1 237 0
	.cfi_offset 65, 4
	bl strstr
	cmpwi 7,3,0
	beq- 7,.L14
.LBB26:
	.loc 1 239 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _glGetProcAddress
	lis 9,qglActiveTextureARB@ha
	stw 3,qglActiveTextureARB@l(9)
	.loc 1 240 0
	lis 3,.LC4@ha
	la 3,.LC4@l(3)
	crxor 6,6,6
	bl _glGetProcAddress
	lis 9,qglClientActiveTextureARB@ha
	stw 3,qglClientActiveTextureARB@l(9)
	.loc 1 241 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl _glGetProcAddress
	lis 9,qglMultiTexCoord1fARB@ha
	stw 3,qglMultiTexCoord1fARB@l(9)
	.loc 1 242 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl _glGetProcAddress
	lis 9,qglMultiTexCoord2fARB@ha
	stw 3,qglMultiTexCoord2fARB@l(9)
	.loc 1 243 0
	lis 3,.LC7@ha
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl _glGetProcAddress
	lis 9,qglMultiTexCoord2fvARB@ha
	stw 3,qglMultiTexCoord2fvARB@l(9)
	.loc 1 244 0
	lis 3,.LC8@ha
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl _glGetProcAddress
	lis 9,qglMultiTexCoord3fARB@ha
	stw 3,qglMultiTexCoord3fARB@l(9)
	.loc 1 245 0
	lis 3,.LC9@ha
	la 3,.LC9@l(3)
	crxor 6,6,6
	bl _glGetProcAddress
	lis 9,qglMultiTexCoord3fvARB@ha
	.loc 1 246 0
	li 0,1
	.loc 1 245 0
	stw 3,qglMultiTexCoord3fvARB@l(9)
	.loc 1 246 0
	lis 9,gl_mtexable@ha
	stb 0,gl_mtexable@l(9)
.LBE26:
	.loc 1 251 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L14:
.LCFI6:
	.cfi_restore_state
	.loc 1 249 0
	lis 3,.LC10@ha
	la 3,.LC10@l(3)
	crxor 6,6,6
	bl Sys_Error
	.loc 1 251 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE41:
	.size	CheckMultiTextureExtensions, .-CheckMultiTextureExtensions
	.align 2
	.globl CheckDiffuseBumpMappingExtensions
	.type	CheckDiffuseBumpMappingExtensions, @function
CheckDiffuseBumpMappingExtensions:
.LFB42:
	.loc 1 259 0
	.cfi_startproc
	.loc 1 280 0
	blr
	.cfi_endproc
.LFE42:
	.size	CheckDiffuseBumpMappingExtensions, .-CheckDiffuseBumpMappingExtensions
	.align 2
	.globl CheckSpecularBumpMappingExtensions
	.type	CheckSpecularBumpMappingExtensions, @function
CheckSpecularBumpMappingExtensions:
.LFB43:
	.loc 1 286 0
	.cfi_startproc
	.loc 1 306 0
	blr
	.cfi_endproc
.LFE43:
	.size	CheckSpecularBumpMappingExtensions, .-CheckSpecularBumpMappingExtensions
	.align 2
	.globl CheckGeforce3Extensions
	.type	CheckGeforce3Extensions, @function
CheckGeforce3Extensions:
.LFB44:
	.loc 1 312 0
	.cfi_startproc
	.loc 1 360 0
	blr
	.cfi_endproc
.LFE44:
	.size	CheckGeforce3Extensions, .-CheckGeforce3Extensions
	.align 2
	.globl CheckVertexArrayRange
	.type	CheckVertexArrayRange, @function
CheckVertexArrayRange:
.LFB45:
	.loc 1 368 0
	.cfi_startproc
	.loc 1 390 0
	li 0,0
	lis 9,gl_var@ha
	stb 0,gl_var@l(9)
	.loc 1 393 0
	blr
	.cfi_endproc
.LFE45:
	.size	CheckVertexArrayRange, .-CheckVertexArrayRange
	.align 2
	.globl CheckRadeonExtensions
	.type	CheckRadeonExtensions, @function
CheckRadeonExtensions:
.LFB46:
	.loc 1 400 0
	.cfi_startproc
	.loc 1 423 0
	blr
	.cfi_endproc
.LFE46:
	.size	CheckRadeonExtensions, .-CheckRadeonExtensions
	.align 2
	.globl CheckParheliaExtensions
	.type	CheckParheliaExtensions, @function
CheckParheliaExtensions:
.LFB47:
	.loc 1 426 0
	.cfi_startproc
	.loc 1 447 0
	blr
	.cfi_endproc
.LFE47:
	.size	CheckParheliaExtensions, .-CheckParheliaExtensions
	.align 2
	.globl CheckARBFragmentExtensions
	.type	CheckARBFragmentExtensions, @function
CheckARBFragmentExtensions:
.LFB48:
	.loc 1 451 0
	.cfi_startproc
	.loc 1 473 0
	blr
	.cfi_endproc
.LFE48:
	.size	CheckARBFragmentExtensions, .-CheckARBFragmentExtensions
	.align 2
	.globl CheckNV3xFragmentExtensions
	.type	CheckNV3xFragmentExtensions, @function
CheckNV3xFragmentExtensions:
.LFB49:
	.loc 1 476 0
	.cfi_startproc
	.loc 1 525 0
	blr
	.cfi_endproc
.LFE49:
	.size	CheckNV3xFragmentExtensions, .-CheckNV3xFragmentExtensions
	.align 2
	.globl CheckGL2FragmentExtensions
	.type	CheckGL2FragmentExtensions, @function
CheckGL2FragmentExtensions:
.LFB50:
	.loc 1 528 0
	.cfi_startproc
	.loc 1 552 0
	blr
	.cfi_endproc
.LFE50:
	.size	CheckGL2FragmentExtensions, .-CheckGL2FragmentExtensions
	.align 2
	.globl CheckAnisotropicExtension
	.type	CheckAnisotropicExtension, @function
CheckAnisotropicExtension:
.LFB51:
	.loc 1 556 0
	.cfi_startproc
	.loc 1 578 0
	blr
	.cfi_endproc
.LFE51:
	.size	CheckAnisotropicExtension, .-CheckAnisotropicExtension
	.align 2
	.globl CheckTextureCompressionExtension
	.type	CheckTextureCompressionExtension, @function
CheckTextureCompressionExtension:
.LFB52:
	.loc 1 581 0
	.cfi_startproc
	.loc 1 589 0
	blr
	.cfi_endproc
.LFE52:
	.size	CheckTextureCompressionExtension, .-CheckTextureCompressionExtension
	.align 2
	.globl CheckDepthBoundsExtension
	.type	CheckDepthBoundsExtension, @function
CheckDepthBoundsExtension:
.LFB53:
	.loc 1 593 0
	.cfi_startproc
	.loc 1 603 0
	blr
	.cfi_endproc
.LFE53:
	.size	CheckDepthBoundsExtension, .-CheckDepthBoundsExtension
	.align 2
	.globl CheckTwoSidedStencil
	.type	CheckTwoSidedStencil, @function
CheckTwoSidedStencil:
.LFB54:
	.loc 1 606 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 607 0
	lis 3,.LC11@ha
	la 3,.LC11@l(3)
	.loc 1 606 0
	stw 0,12(1)
	.loc 1 607 0
	.cfi_offset 65, 4
	bl COM_CheckParm
	.loc 1 624 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE54:
	.size	CheckTwoSidedStencil, .-CheckTwoSidedStencil
	.align 2
	.globl GL_Init
	.type	GL_Init, @function
GL_Init:
.LFB55:
	.loc 1 632 0
	.cfi_startproc
	mflr 0
	stwu 1,-40(1)
.LCFI10:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 635 0
	li 3,7936
	.loc 1 632 0
	stw 30,24(1)
	.loc 1 640 0
	lis 30,gl_version@ha
	.cfi_offset 30, -16
	.loc 1 632 0
	stw 0,44(1)
	stw 31,28(1)
	.loc 1 637 0
	lis 31,gl_renderer@ha
	.cfi_offset 31, -12
	.cfi_offset 65, 4
	.loc 1 632 0
	stfd 31,32(1)
	.loc 1 635 0
	.cfi_offset 63, -8
	bl glGetString
	mr 0,3
	.loc 1 636 0
	mr 4,3
	lis 3,.LC12@ha
	.loc 1 635 0
	lis 9,gl_vendor@ha
	.loc 1 636 0
	la 3,.LC12@l(3)
	.loc 1 635 0
	stw 0,gl_vendor@l(9)
	.loc 1 636 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 637 0
	li 3,7937
	bl glGetString
	mr 0,3
	.loc 1 638 0
	mr 4,3
	lis 3,.LC13@ha
	.loc 1 637 0
	stw 0,gl_renderer@l(31)
	.loc 1 638 0
	la 3,.LC13@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 640 0
	li 3,7938
	bl glGetString
	mr 0,3
	.loc 1 641 0
	mr 4,3
	lis 3,.LC14@ha
	.loc 1 640 0
	stw 0,gl_version@l(30)
	.loc 1 641 0
	la 3,.LC14@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 642 0
	li 3,7939
	bl glGetString
	lis 9,gl_extensions@ha
	mr 0,3
	.loc 1 643 0
	lis 3,.LC15@ha
	mr 4,0
	la 3,.LC15@l(3)
	.loc 1 642 0
	stw 0,gl_extensions@l(9)
	.loc 1 643 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 645 0
	lwz 4,gl_renderer@l(31)
	lis 3,.LC16@ha
	lwz 5,gl_version@l(30)
	la 3,.LC16@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 647 0
	lwz 3,gl_renderer@l(31)
	lis 4,.LC17@ha
	li 5,7
	la 4,.LC17@l(4)
	bl Q_strncasecmp
	cmpwi 7,3,0
	bne- 7,.L30
	.loc 1 648 0
	li 0,1
	lis 9,fullsbardraw@ha
	stb 0,fullsbardraw@l(9)
.L30:
	.loc 1 650 0
	lwz 3,gl_renderer@l(31)
	lis 4,.LC18@ha
	la 4,.LC18@l(4)
	li 5,8
	bl Q_strncasecmp
	cmpwi 7,3,0
	bne- 7,.L31
	.loc 1 651 0
	li 0,1
	lis 9,isPermedia@ha
	stb 0,isPermedia@l(9)
.L31:
	.loc 1 653 0
	lis 3,.LC19@ha
	.loc 1 662 0
	lis 31,gl_cardtype@ha
	.loc 1 653 0
	la 3,.LC19@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 654 0
	bl CheckPalettedTexture
	.loc 1 656 0
	lis 3,.LC20@ha
	la 3,.LC20@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 657 0
	bl CheckMultiTextureExtensions
	.loc 1 659 0
	lis 3,.LC21@ha
	la 3,.LC21@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 664 0
	lis 3,.LC22@ha
	.loc 1 662 0
	li 0,0
	.loc 1 664 0
	la 3,.LC22@l(3)
	.loc 1 662 0
	stw 0,gl_cardtype@l(31)
	.loc 1 664 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 667 0
	lwz 0,gl_cardtype@l(31)
	cmpwi 7,0,0
	beq- 7,.L44
.L33:
	.loc 1 691 0
	lis 3,.LC29@ha
	la 3,.LC29@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 693 0
	lis 3,.LC30@ha
.LBB27:
.LBB28:
	.loc 1 390 0
	li 0,0
	lis 9,gl_var@ha
.LBE28:
.LBE27:
	.loc 1 693 0
	la 3,.LC30@l(3)
.LBB30:
.LBB29:
	.loc 1 390 0
	stb 0,gl_var@l(9)
.LBE29:
.LBE30:
	.loc 1 693 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 695 0
	lis 3,.LC31@ha
	la 3,.LC31@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 697 0
	lis 3,.LC32@ha
	la 3,.LC32@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 699 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 700 0
	bl CheckTwoSidedStencil
	.loc 1 702 0
	lwz 0,gl_cardtype@l(31)
	cmplwi 7,0,7
	bgt- 7,.L34
	lis 9,.L43@ha
	slwi 0,0,2
	la 9,.L43@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L43:
	.long .L35-.L43
	.long .L36-.L43
	.long .L37-.L43
	.long .L38-.L43
	.long .L39-.L43
	.long .L40-.L43
	.long .L41-.L43
	.long .L42-.L43
	.section	".text"
.L42:
	.loc 1 726 0
	lis 3,.LC41@ha
	la 3,.LC41@l(3)
	crxor 6,6,6
	bl Con_Printf
.L34:
	.loc 1 730 0
	li 3,0
	addi 4,1,8
	ori 3,3,34018
	bl glGetIntegerv
.LVL28:
	.loc 1 731 0
	lwz 4,8(1)
	lis 3,.LC42@ha
	la 3,.LC42@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 734 0
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	bl Cbuf_AddText
	.loc 1 736 0
	lis 9,.LC44@ha
	lfs 1,.LC44@l(9)
	fmr 2,1
	fmr 3,1
	fmr 4,1
	bl glClearColor
	.loc 1 737 0
	li 3,1028
	bl glCullFace
	.loc 1 738 0
	li 3,3553
	bl glEnable
	.loc 1 740 0
	li 3,3008
	bl glEnable
	.loc 1 741 0
	lis 9,.LC45@ha
	lfs 1,.LC45@l(9)
	li 3,516
	bl glAlphaFunc
	.loc 1 743 0
	li 4,6914
	li 3,1032
	bl glPolygonMode
	.loc 1 744 0
	li 3,7424
	bl glShadeModel
	.loc 1 746 0
	lis 9,.LC46@ha
	lfs 31,.LC46@l(9)
	li 3,3553
	li 4,10241
	fmr 1,31
	bl glTexParameterf
	.loc 1 747 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
	.loc 1 748 0
	lis 9,.LC47@ha
	lfs 31,.LC47@l(9)
	li 3,3553
	li 4,10242
	fmr 1,31
	bl glTexParameterf
	.loc 1 749 0
	fmr 1,31
	li 3,3553
	li 4,10243
	bl glTexParameterf
	.loc 1 751 0
	li 3,770
	li 4,771
	bl glBlendFunc
	.loc 1 754 0
	lis 9,.LC48@ha
	lfs 1,.LC48@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 765 0
	lwz 0,44(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL29:
.L44:
.LCFI12:
	.cfi_restore_state
	.loc 1 669 0
	lis 3,.LC23@ha
	la 3,.LC23@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 673 0
	lwz 0,gl_cardtype@l(31)
	cmpwi 7,0,0
	bne- 7,.L33
	.loc 1 675 0
	lis 3,.LC24@ha
	la 3,.LC24@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 679 0
	lwz 0,gl_cardtype@l(31)
	cmpwi 7,0,0
	bne- 7,.L33
	.loc 1 681 0
	lis 3,.LC25@ha
	la 3,.LC25@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 683 0
	lis 3,.LC26@ha
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 685 0
	lis 3,.LC27@ha
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 687 0
	lis 3,.LC28@ha
	la 3,.LC28@l(3)
	crxor 6,6,6
	bl Con_Printf
	b .L33
.L41:
	.loc 1 723 0
	lis 3,.LC40@ha
	la 3,.LC40@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 724 0
	b .L34
.L35:
	.loc 1 705 0
	lis 3,.LC34@ha
	la 3,.LC34@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 706 0
	b .L34
.L36:
	.loc 1 708 0
	lis 3,.LC35@ha
	la 3,.LC35@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 709 0
	b .L34
.L37:
	.loc 1 711 0
	lis 3,.LC36@ha
	la 3,.LC36@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 712 0
	b .L34
.L38:
	.loc 1 714 0
	lis 3,.LC37@ha
	la 3,.LC37@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 715 0
	b .L34
.L39:
	.loc 1 717 0
	lis 3,.LC38@ha
	la 3,.LC38@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 718 0
	b .L34
.L40:
	.loc 1 720 0
	lis 3,.LC39@ha
	la 3,.LC39@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 721 0
	b .L34
	.cfi_endproc
.LFE55:
	.size	GL_Init, .-GL_Init
	.align 2
	.globl VID_Is8bit
	.type	VID_Is8bit, @function
VID_Is8bit:
.LFB56:
	.loc 1 767 0
	.cfi_startproc
	.loc 1 768 0
	lis 9,is8bit@ha
	.loc 1 769 0
	lbz 3,is8bit@l(9)
	blr
	.cfi_endproc
.LFE56:
	.size	VID_Is8bit, .-VID_Is8bit
	.align 2
	.globl VID_Init8bitPalette
	.type	VID_Init8bitPalette, @function
VID_Init8bitPalette:
.LFB57:
	.loc 1 774 0
	.cfi_startproc
	.loc 1 828 0
	blr
	.cfi_endproc
.LFE57:
	.size	VID_Init8bitPalette, .-VID_Init8bitPalette
	.comm	gl_depthbounds,1,1
	.comm	AGP_Buffer,4,4
	.comm	d_8to8graytable,256,4
	.comm	d_15to8table,65536,4
	.comm	d_8to24table,1024,4
	.comm	d_8to16table,512,2
	.globl gl_textureanisotropylevel
	.globl gl_texturefilteranisotropic
	.globl gl_palettedtex
	.comm	gldepthmax,4,4
	.comm	gldepthmin,4,4
	.globl texture_extension_number
	.globl texture_mode
	.comm	qglStencilFuncSeparateATI,4,4
	.comm	qglStencilOpSeparateATI,4,4
	.comm	qglActiveStencilFaceEXT,4,4
	.comm	qgl3DfxSetPaletteEXT,4,4
	.comm	qglColorTableEXT,4,4
	.globl gl_twosidedstencil
	.globl gl_texcomp
	.globl gl_var
	.globl gl_cardtype
	.globl gl_mtexable
	.globl isPermedia
	.globl is8bit
	.globl vid_gamma
	.globl fullsbardraw
	.comm	gl_extensions,4,4
	.comm	gl_version,4,4
	.comm	gl_renderer,4,4
	.comm	gl_vendor,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC44:
	.4byte	1056964608
.LC45:
	.4byte	1059749626
.LC46:
	.4byte	1175977984
.LC47:
	.4byte	1176765440
.LC48:
	.4byte	1173358592
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"GL_EXT_paletted_texture"
.LC1:
	.string	"Found GL_EXT_paletted_texture...\n"
	.zero	2
.LC2:
	.string	"GL_ARB_multitexture"
.LC3:
	.string	"glActiveTextureARB"
	.zero	1
.LC4:
	.string	"glClientActiveTextureARB"
	.zero	3
.LC5:
	.string	"glMultiTexCoord1fARB"
	.zero	3
.LC6:
	.string	"glMultiTexCoord2fARB"
	.zero	3
.LC7:
	.string	"glMultiTexCoord2fvARB"
	.zero	2
.LC8:
	.string	"glMultiTexCoord3fARB"
	.zero	3
.LC9:
	.string	"glMultiTexCoord3fvARB"
	.zero	2
.LC10:
	.string	"No multitexturing found.\nProbably your 3d-card is not supported.\n"
	.zero	2
.LC11:
	.string	"-notwosidedstencil"
	.zero	1
.LC12:
	.string	"GL_VENDOR: %s\n"
	.zero	1
.LC13:
	.string	"GL_RENDERER: %s\n"
	.zero	3
.LC14:
	.string	"GL_VERSION: %s\n"
.LC15:
	.string	"GL_EXTENSIONS: %s\n"
	.zero	1
.LC16:
	.string	"%s %s\n"
	.zero	1
.LC17:
	.string	"PowerVR"
.LC18:
	.string	"Permedia"
	.zero	3
.LC19:
	.string	"Checking paletted texture\n"
	.zero	1
.LC20:
	.string	"Checking multitexture\n"
	.zero	1
.LC21:
	.string	"Checking diffuse bumpmap extensions\n"
	.zero	3
.LC22:
	.string	"Checking GL2 extensions\n"
	.zero	3
.LC23:
	.string	"Checking NV3x extensions\n"
	.zero	2
.LC24:
	.string	"Checking ARB extensions\n"
	.zero	3
.LC25:
	.string	"Checking GeForce 1/2/4-MX\n"
	.zero	1
.LC26:
	.string	"Checking GeForce 3/4\n"
	.zero	2
.LC27:
	.string	"Checking Radeon 8500+\n"
	.zero	1
.LC28:
	.string	"Checking Parhelia\n"
	.zero	1
.LC29:
	.string	"Checking VAR\n"
	.zero	2
.LC30:
	.string	"Checking AF\n"
	.zero	3
.LC31:
	.string	"Checking TC\n"
	.zero	3
.LC32:
	.string	"Checking DB\n"
	.zero	3
.LC33:
	.string	"Checking two-sided stencil\n"
.LC34:
	.string	"Using generic path.\n"
	.zero	3
.LC35:
	.string	"Using GeForce 1/2/4-MX path\n"
	.zero	3
.LC36:
	.string	"Using GeForce 3/4 path\n"
.LC37:
	.string	"Using Radeon path.\n"
.LC38:
	.string	"Using Parhelia path.\n"
	.zero	2
.LC39:
	.string	"Using ARB_fragment_program path.\n"
	.zero	2
.LC40:
	.string	"Using NV3x GeForce FX path.\n"
	.zero	3
.LC41:
	.string	"Using GL2 path.\n"
	.zero	3
.LC42:
	.string	"%i texture units\n"
	.zero	2
.LC43:
	.string	"+mlook"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	gl_texturefilteranisotropic, @object
	.size	gl_texturefilteranisotropic, 1
gl_texturefilteranisotropic:
	.zero	1
	.type	gl_palettedtex, @object
	.size	gl_palettedtex, 1
gl_palettedtex:
	.zero	1
	.zero	2
	.type	gl_twosidedstencil, @object
	.size	gl_twosidedstencil, 4
gl_twosidedstencil:
	.zero	4
	.type	gl_texcomp, @object
	.size	gl_texcomp, 1
gl_texcomp:
	.zero	1
	.type	gl_var, @object
	.size	gl_var, 1
gl_var:
	.zero	1
	.zero	2
	.type	gl_cardtype, @object
	.size	gl_cardtype, 4
gl_cardtype:
	.zero	4
	.type	gl_mtexable, @object
	.size	gl_mtexable, 1
gl_mtexable:
	.zero	1
	.type	isPermedia, @object
	.size	isPermedia, 1
isPermedia:
	.zero	1
	.type	is8bit, @object
	.size	is8bit, 1
is8bit:
	.zero	1
	.type	fullsbardraw, @object
	.size	fullsbardraw, 1
fullsbardraw:
	.zero	1
	.section	.sdata,"aw",@progbits
	.align 2
	.type	gl_textureanisotropylevel, @object
	.size	gl_textureanisotropylevel, 4
gl_textureanisotropylevel:
	.long	1073741824
	.type	texture_extension_number, @object
	.size	texture_extension_number, 4
texture_extension_number:
	.long	1
	.type	texture_mode, @object
	.size	texture_mode, 4
texture_mode:
	.long	9729
	.type	vid_gamma, @object
	.size	vid_gamma, 4
vid_gamma:
	.long	1065353216
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glext.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 8 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd6f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x1
	.4byte	.LASF160
	.4byte	.LASF161
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x79
	.uleb128 0x6
	.4byte	0x6c
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
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x85
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x9
	.4byte	0x41
	.4byte	0xd2
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x6c
	.4byte	0xe2
	.uleb128 0xa
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x48
	.4byte	0xf2
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x102
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x118
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x9a
	.4byte	0x128
	.uleb128 0xa
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.4byte	0x85
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x17
	.4byte	0x13e
	.uleb128 0x9
	.4byte	0x128
	.4byte	0x14e
	.uleb128 0xa
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x14
	.byte	0x4
	.byte	0x52
	.4byte	0x1a1
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0x54
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0x55
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0x56
	.4byte	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x4
	.byte	0x57
	.4byte	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.string	"pad"
	.byte	0x4
	.byte	0x58
	.4byte	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x9
	.4byte	0x9a
	.4byte	0x1b1
	.uleb128 0xa
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x59
	.4byte	0x14e
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x48
	.byte	0x4
	.byte	0x5b
	.4byte	0x271
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5d
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x4
	.byte	0x61
	.4byte	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x4
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x4
	.byte	0x64
	.4byte	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x4
	.byte	0x65
	.4byte	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x4
	.byte	0x66
	.4byte	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5c
	.byte	0x4
	.byte	0x96
	.4byte	0x396
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x4
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9a
	.4byte	0x485
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x4
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x4
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x4
	.byte	0xa0
	.4byte	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa1
	.4byte	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x4
	.byte	0xa5
	.4byte	0x48b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x4
	.byte	0xa6
	.4byte	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x4
	.byte	0xa7
	.4byte	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x4
	.byte	0xa9
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x4
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x4
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x4
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x4
	.byte	0xb0
	.4byte	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x4
	.byte	0xb1
	.4byte	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x4
	.byte	0xb2
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x4
	.byte	0xb3
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x271
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bc
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x4
	.byte	0x67
	.4byte	0x1bc
	.uleb128 0xe
	.byte	0x2c
	.byte	0x4
	.byte	0x7e
	.4byte	0x3ee
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x4
	.byte	0x80
	.4byte	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x4
	.byte	0x81
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x4
	.byte	0x82
	.4byte	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x4
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a2
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x4
	.byte	0x84
	.4byte	0x3ad
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x1c
	.byte	0x4
	.byte	0x8a
	.4byte	0x46e
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x4
	.byte	0x8c
	.4byte	0x46e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x4
	.byte	0x8d
	.4byte	0x46e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x4
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x4
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x4
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x4
	.byte	0x92
	.4byte	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x4
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3ff
	.uleb128 0x5
	.byte	0x4
	.4byte	0x46e
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x4
	.byte	0x94
	.4byte	0x3ff
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x47a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3f4
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x4
	.byte	0xb4
	.4byte	0x271
	.uleb128 0x5
	.byte	0x4
	.4byte	0x497
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x5
	.byte	0x93
	.4byte	0x48
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.byte	0x99
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x5
	.byte	0x9c
	.4byte	0x48
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x5
	.byte	0x9e
	.4byte	0x85
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4da
	.uleb128 0xf
	.byte	0x1
	.4byte	0x4e6
	.uleb128 0x10
	.4byte	0x4a8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4ec
	.uleb128 0x6
	.4byte	0x4c9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4f7
	.uleb128 0xf
	.byte	0x1
	.4byte	0x508
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4c9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x50e
	.uleb128 0xf
	.byte	0x1
	.4byte	0x51f
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4e6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x525
	.uleb128 0xf
	.byte	0x1
	.4byte	0x53b
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4c9
	.uleb128 0x10
	.4byte	0x4c9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x541
	.uleb128 0xf
	.byte	0x1
	.4byte	0x55c
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4c9
	.uleb128 0x10
	.4byte	0x4c9
	.uleb128 0x10
	.4byte	0x4c9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x835
	.4byte	0x4d4
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x836
	.4byte	0x4d4
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x839
	.4byte	0x4f1
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x841
	.4byte	0x51f
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x842
	.4byte	0x508
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x849
	.4byte	0x53b
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x84a
	.4byte	0x508
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0xf
	.byte	0x1
	.4byte	0x5d1
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4a8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4be
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5dd
	.uleb128 0xf
	.byte	0x1
	.4byte	0x5f8
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4a8
	.uleb128 0x10
	.4byte	0x4b3
	.uleb128 0x10
	.4byte	0x4be
	.byte	0
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x196b
	.4byte	0x4d4
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x1a7a
	.4byte	0x5b0
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x1a7b
	.4byte	0x5d7
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.2byte	0x94f
	.4byte	0x656
	.uleb128 0x13
	.4byte	.LASF85
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF86
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF87
	.sleb128 2
	.uleb128 0x13
	.4byte	.LASF88
	.sleb128 3
	.uleb128 0x13
	.4byte	.LASF89
	.sleb128 4
	.uleb128 0x14
	.string	"ARB"
	.sleb128 5
	.uleb128 0x13
	.4byte	.LASF90
	.sleb128 6
	.uleb128 0x14
	.string	"GL2"
	.sleb128 7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x961
	.4byte	0x61c
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0x4
	.byte	0x8
	.2byte	0x490
	.4byte	0x6c2
	.uleb128 0x16
	.string	"U8"
	.byte	0x8
	.2byte	0x492
	.4byte	0x6c2
	.uleb128 0x16
	.string	"S8"
	.byte	0x8
	.2byte	0x493
	.4byte	0x6c7
	.uleb128 0x16
	.string	"U16"
	.byte	0x8
	.2byte	0x494
	.4byte	0x6cc
	.uleb128 0x16
	.string	"S16"
	.byte	0x8
	.2byte	0x495
	.4byte	0x6d1
	.uleb128 0x16
	.string	"U32"
	.byte	0x8
	.2byte	0x496
	.4byte	0x6d6
	.uleb128 0x16
	.string	"S32"
	.byte	0x8
	.2byte	0x497
	.4byte	0x6db
	.uleb128 0x16
	.string	"F32"
	.byte	0x8
	.2byte	0x498
	.4byte	0xa5
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x25
	.uleb128 0x8
	.4byte	0x3a
	.uleb128 0x8
	.4byte	0x33
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x8
	.4byte	0x41
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x499
	.4byte	0x662
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2e
	.4byte	0x6f7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6fd
	.uleb128 0xf
	.byte	0x1
	.4byte	0x722
	.uleb128 0x10
	.4byte	0x41
	.uleb128 0x10
	.4byte	0x41
	.uleb128 0x10
	.4byte	0x41
	.uleb128 0x10
	.4byte	0x41
	.uleb128 0x10
	.4byte	0x41
	.uleb128 0x10
	.4byte	0x722
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x728
	.uleb128 0x17
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x1
	.byte	0x31
	.4byte	0x734
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73a
	.uleb128 0xf
	.byte	0x1
	.4byte	0x746
	.uleb128 0x10
	.4byte	0x5d1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x102
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x20f
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x11d
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x137
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x18f
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x16f
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x22b
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x244
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x8c0
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x1
	.byte	0x67
	.4byte	0x66
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"pal"
	.byte	0x1
	.byte	0x69
	.4byte	0xbc
	.4byte	.LLST2
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x6a
	.4byte	0x48
	.4byte	.LLST3
	.uleb128 0x1b
	.string	"g"
	.byte	0x1
	.byte	0x6a
	.4byte	0x48
	.4byte	.LLST4
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.byte	0x6a
	.4byte	0x48
	.4byte	.LLST5
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x6b
	.4byte	0x48
	.byte	0xff
	.uleb128 0x1b
	.string	"v"
	.byte	0x1
	.byte	0x6c
	.4byte	0x48
	.4byte	.LLST6
	.uleb128 0x1b
	.string	"r1"
	.byte	0x1
	.byte	0x6d
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x1b
	.string	"g1"
	.byte	0x1
	.byte	0x6d
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x1b
	.string	"b1"
	.byte	0x1
	.byte	0x6d
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.byte	0x6e
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.4byte	0x3a
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x1
	.byte	0x70
	.4byte	0x8c0
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x71
	.4byte	0x66
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF19
	.byte	0x1
	.byte	0x72
	.4byte	0x41
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x1
	.byte	0x72
	.4byte	0x41
	.4byte	.LLST15
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x8ec
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0xb1
	.4byte	0x66
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST16
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF113
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST17
	.4byte	0x934
	.uleb128 0x21
	.4byte	.LBB26
	.4byte	.LBE26
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF163
	.byte	0x1
	.byte	0xef
	.4byte	0x41
	.byte	0x1
	.uleb128 0x23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x746
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x772
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x77d
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x79e
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x788
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x793
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x767
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x75c
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x751
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x7a9
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x7b4
	.4byte	.LFB52
	.4byte	.LFE52
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x24
	.4byte	0x7bf
	.4byte	.LFB53
	.4byte	.LFE53
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x25d
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST18
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x277
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST19
	.4byte	0xa45
	.uleb128 0x27
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x279
	.4byte	0x41
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	0x79e
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x2b4
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2ff
	.byte	0x1
	.4byte	0xaa
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x305
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0xa83
	.uleb128 0xa
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF119
	.byte	0x1
	.byte	0x58
	.4byte	0xa73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	d_8to16table
	.uleb128 0x9
	.4byte	0x48
	.4byte	0xaa5
	.uleb128 0xa
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF120
	.byte	0x1
	.byte	0x59
	.4byte	0xa95
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	d_8to24table
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xac7
	.uleb128 0xa
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF121
	.byte	0x1
	.byte	0x5b
	.4byte	0xab7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	d_8to8graytable
	.uleb128 0x2b
	.4byte	.LASF122
	.byte	0x1
	.byte	0x43
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_extension_number
	.uleb128 0x2b
	.4byte	.LASF123
	.byte	0x1
	.byte	0x3f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_mode
	.uleb128 0x2b
	.4byte	.LASF124
	.byte	0x1
	.byte	0x45
	.4byte	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gldepthmin
	.uleb128 0x2b
	.4byte	.LASF125
	.byte	0x1
	.byte	0x45
	.4byte	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gldepthmax
	.uleb128 0x2b
	.4byte	.LASF126
	.byte	0x1
	.byte	0x1f
	.4byte	0x85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vid_gamma
	.uleb128 0x2b
	.4byte	.LASF127
	.byte	0x1
	.byte	0x18
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_vendor
	.uleb128 0x2b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x19
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_renderer
	.uleb128 0x2b
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1a
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_version
	.uleb128 0x2b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x1b
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_extensions
	.uleb128 0x2c
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x402
	.4byte	0x55c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x404
	.4byte	0x568
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x406
	.4byte	0x574
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x408
	.4byte	0x580
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x40a
	.4byte	0x58c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF136
	.byte	0x7
	.2byte	0x40c
	.4byte	0x598
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x40e
	.4byte	0x5a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF138
	.byte	0x1
	.byte	0x36
	.4byte	0x5f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglActiveStencilFaceEXT
	.uleb128 0x2b
	.4byte	.LASF139
	.byte	0x1
	.byte	0x39
	.4byte	0x604
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglStencilOpSeparateATI
	.uleb128 0x2b
	.4byte	.LASF140
	.byte	0x1
	.byte	0x3a
	.4byte	0x610
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglStencilFuncSeparateATI
	.uleb128 0x2b
	.4byte	.LASF141
	.byte	0x1
	.byte	0x23
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_mtexable
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x4e
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_palettedtex
	.uleb128 0x2b
	.4byte	.LASF143
	.byte	0x1
	.byte	0x51
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_texturefilteranisotropic
	.uleb128 0x2b
	.4byte	.LASF144
	.byte	0x1
	.byte	0x27
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_twosidedstencil
	.uleb128 0x2b
	.4byte	.LASF145
	.byte	0x1
	.byte	0x24
	.4byte	0x656
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_cardtype
	.uleb128 0x2b
	.4byte	.LASF146
	.byte	0x1
	.byte	0x25
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_var
	.uleb128 0x2b
	.4byte	.LASF147
	.byte	0x1
	.byte	0x26
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_texcomp
	.uleb128 0x2b
	.4byte	.LASF148
	.byte	0x1
	.byte	0x53
	.4byte	0x4c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_textureanisotropylevel
	.uleb128 0x2d
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x16c
	.4byte	0x5d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	AGP_Buffer
	.uleb128 0x2d
	.4byte	.LASF150
	.byte	0x7
	.2byte	0xc2c
	.4byte	0x4a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x2c
	.4byte	.LASF151
	.byte	0x8
	.2byte	0x548
	.4byte	0xcd7
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0xcdc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6e0
	.uleb128 0x2b
	.4byte	.LASF152
	.byte	0x1
	.byte	0x1c
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fullsbardraw
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0x1
	.byte	0x21
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	is8bit
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0x22
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	isPermedia
	.uleb128 0x2b
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2f
	.4byte	0x6ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglColorTableEXT
	.uleb128 0x2b
	.4byte	.LASF156
	.byte	0x1
	.byte	0x32
	.4byte	0x729
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qgl3DfxSetPaletteEXT
	.uleb128 0x9
	.4byte	0x2c
	.4byte	0xd4d
	.uleb128 0x2e
	.4byte	0x48
	.2byte	0xffff
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF157
	.byte	0x1
	.byte	0x5a
	.4byte	0xd3c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	d_15to8table
	.uleb128 0x2d
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x24f
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_depthbounds
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	d_8to24table
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	d_8to24table
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	d_8to8graytable
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x5f5e100
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB40-.Ltext0
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
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB41-.Ltext0
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
.LLST18:
	.4byte	.LFB54-.Ltext0
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
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
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
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"GLuint"
.LASF147:
	.string	"gl_texcomp"
.LASF145:
	.string	"gl_cardtype"
.LASF109:
	.string	"bestdist"
.LASF135:
	.string	"qglMultiTexCoord2fvARB"
.LASF89:
	.string	"PARHELIA"
.LASF138:
	.string	"qglActiveStencilFaceEXT"
.LASF86:
	.string	"GEFORCE"
.LASF115:
	.string	"CheckTwoSidedStencil"
.LASF154:
	.string	"isPermedia"
.LASF84:
	.string	"PFNGLSTENCILFUNCSEPARATEATIPROC"
.LASF67:
	.string	"neighbours"
.LASF123:
	.string	"texture_mode"
.LASF20:
	.string	"type"
.LASF163:
	.string	"_glGetProcAddress"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"plane"
.LASF17:
	.string	"vec3_t"
.LASF55:
	.string	"cached_dlight"
.LASF91:
	.string	"qcardtype"
.LASF34:
	.string	"anim_next"
.LASF63:
	.string	"next"
.LASF44:
	.string	"extents"
.LASF95:
	.string	"CheckDiffuseBumpMappingExtensions"
.LASF102:
	.string	"CheckParheliaExtensions"
.LASF52:
	.string	"lightmaptexturenum"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF106:
	.string	"CheckDepthBoundsExtension"
.LASF137:
	.string	"qglMultiTexCoord3fvARB"
.LASF93:
	.string	"GLCOLORTABLEEXTPFN"
.LASF120:
	.string	"d_8to24table"
.LASF141:
	.string	"gl_mtexable"
.LASF119:
	.string	"d_8to16table"
.LASF148:
	.string	"gl_textureanisotropylevel"
.LASF104:
	.string	"CheckAnisotropicExtension"
.LASF12:
	.string	"long int"
.LASF161:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF62:
	.string	"glpoly_s"
.LASF69:
	.string	"glpoly_t"
.LASF74:
	.string	"GLfloat"
.LASF9:
	.string	"double"
.LASF83:
	.string	"PFNGLSTENCILOPSEPARATEATIPROC"
.LASF49:
	.string	"texinfo"
.LASF77:
	.string	"PFNGLMULTITEXCOORD1FARBPROC"
.LASF96:
	.string	"CheckGL2FragmentExtensions"
.LASF47:
	.string	"polys"
.LASF23:
	.string	"mplane_s"
.LASF156:
	.string	"qgl3DfxSetPaletteEXT"
.LASF14:
	.string	"qboolean"
.LASF13:
	.string	"byte"
.LASF72:
	.string	"GLint"
.LASF90:
	.string	"NV3x"
.LASF31:
	.string	"anim_total"
.LASF153:
	.string	"is8bit"
.LASF4:
	.string	"unsigned int"
.LASF60:
	.string	"texture"
.LASF30:
	.string	"texturechain"
.LASF45:
	.string	"light_s"
.LASF46:
	.string	"light_t"
.LASF79:
	.string	"PFNGLMULTITEXCOORD2FVARBPROC"
.LASF7:
	.string	"long unsigned int"
.LASF81:
	.string	"PFNGLMULTITEXCOORD3FVARBPROC"
.LASF160:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_common.c"
.LASF25:
	.string	"name"
.LASF99:
	.string	"CheckSpecularBumpMappingExtensions"
.LASF26:
	.string	"width"
.LASF88:
	.string	"RADEON"
.LASF59:
	.string	"mipadjust"
.LASF3:
	.string	"short unsigned int"
.LASF78:
	.string	"PFNGLMULTITEXCOORD2FARBPROC"
.LASF82:
	.string	"PFNGLACTIVESTENCILFACEEXTPROC"
.LASF146:
	.string	"gl_var"
.LASF108:
	.string	"shade"
.LASF48:
	.string	"shadowchain"
.LASF105:
	.string	"CheckTextureCompressionExtension"
.LASF22:
	.string	"mplane_t"
.LASF2:
	.string	"short int"
.LASF164:
	.string	"VID_Is8bit"
.LASF41:
	.string	"firstedge"
.LASF21:
	.string	"signbits"
.LASF134:
	.string	"qglMultiTexCoord2fARB"
.LASF98:
	.string	"CheckARBFragmentExtensions"
.LASF56:
	.string	"samples"
.LASF144:
	.string	"gl_twosidedstencil"
.LASF158:
	.string	"gl_depthbounds"
.LASF126:
	.string	"vid_gamma"
.LASF50:
	.string	"dlightframe"
.LASF29:
	.string	"gl_lumitex"
.LASF94:
	.string	"GL3DFXSETPALETTEEXTPFN"
.LASF80:
	.string	"PFNGLMULTITEXCOORD3FARBPROC"
.LASF111:
	.string	"VID_ShiftPalette"
.LASF51:
	.string	"dlightbits"
.LASF66:
	.string	"lightTimestamp"
.LASF65:
	.string	"numverts"
.LASF130:
	.string	"gl_extensions"
.LASF128:
	.string	"gl_renderer"
.LASF114:
	.string	"CheckPalettedTexture"
.LASF53:
	.string	"styles"
.LASF122:
	.string	"texture_extension_number"
.LASF18:
	.string	"normal"
.LASF10:
	.string	"float"
.LASF87:
	.string	"GEFORCE3"
.LASF43:
	.string	"texturemins"
.LASF37:
	.string	"msurface_s"
.LASF70:
	.string	"msurface_t"
.LASF16:
	.string	"vec_t"
.LASF121:
	.string	"d_8to8graytable"
.LASF15:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF100:
	.string	"CheckGeforce3Extensions"
.LASF28:
	.string	"gl_texturenum"
.LASF151:
	.string	"wgPipe"
.LASF68:
	.string	"firstvertex"
.LASF107:
	.string	"table"
.LASF64:
	.string	"chain"
.LASF139:
	.string	"qglStencilOpSeparateATI"
.LASF54:
	.string	"cached_light"
.LASF35:
	.string	"alternate_anims"
.LASF118:
	.string	"VID_Init8bitPalette"
.LASF112:
	.string	"palette"
.LASF92:
	.string	"WGPipe"
.LASF125:
	.string	"gldepthmax"
.LASF11:
	.string	"long double"
.LASF8:
	.string	"char"
.LASF117:
	.string	"supportedTmu"
.LASF71:
	.string	"GLenum"
.LASF162:
	.string	"_wgpipe"
.LASF58:
	.string	"vecs"
.LASF124:
	.string	"gldepthmin"
.LASF76:
	.string	"PFNGLCLIENTACTIVETEXTUREARBPROC"
.LASF97:
	.string	"CheckNV3xFragmentExtensions"
.LASF61:
	.string	"mtexinfo_t"
.LASF150:
	.string	"causticschain"
.LASF143:
	.string	"gl_texturefilteranisotropic"
.LASF75:
	.string	"PFNGLACTIVETEXTUREARBPROC"
.LASF132:
	.string	"qglClientActiveTextureARB"
.LASF149:
	.string	"AGP_Buffer"
.LASF140:
	.string	"qglStencilFuncSeparateATI"
.LASF133:
	.string	"qglMultiTexCoord1fARB"
.LASF19:
	.string	"dist"
.LASF129:
	.string	"gl_version"
.LASF131:
	.string	"qglActiveTextureARB"
.LASF36:
	.string	"offsets"
.LASF159:
	.string	"GNU C 4.6.3"
.LASF103:
	.string	"CheckVertexArrayRange"
.LASF33:
	.string	"anim_max"
.LASF101:
	.string	"CheckRadeonExtensions"
.LASF152:
	.string	"fullsbardraw"
.LASF40:
	.string	"flags"
.LASF136:
	.string	"qglMultiTexCoord3fARB"
.LASF116:
	.string	"GL_Init"
.LASF38:
	.string	"visframe"
.LASF157:
	.string	"d_15to8table"
.LASF127:
	.string	"gl_vendor"
.LASF32:
	.string	"anim_min"
.LASF24:
	.string	"texture_s"
.LASF57:
	.string	"texture_t"
.LASF110:
	.string	"VID_SetPalette"
.LASF27:
	.string	"height"
.LASF85:
	.string	"GENERIC"
.LASF113:
	.string	"CheckMultiTextureExtensions"
.LASF142:
	.string	"gl_palettedtex"
.LASF42:
	.string	"numedges"
.LASF155:
	.string	"qglColorTableEXT"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
