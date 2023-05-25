	.file	"gl_rmisc.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl R_TimeRefresh_f
	.type	R_TimeRefresh_f, @function
R_TimeRefresh_f:
.LFB44:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_rmisc.c"
	.loc 1 516 0
	.cfi_startproc
	mflr 0
	stwu 1,-64(1)
.LCFI0:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	.loc 1 520 0
	li 3,1028
	.loc 1 516 0
	stfd 28,32(1)
	stw 0,68(1)
	stfd 29,40(1)
	stfd 30,48(1)
	stfd 31,56(1)
	stw 29,20(1)
	lis 29,r_refdef@ha
	.cfi_offset 29, -44
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.cfi_offset 60, -32
	stw 30,24(1)
	la 29,r_refdef@l(29)
	stw 31,28(1)
	.loc 1 520 0
	.cfi_offset 31, -36
	.cfi_offset 30, -40
	bl glDrawBuffer
	.loc 1 521 0
	bl glFinish
	.loc 1 524 0
	li 31,0
	.loc 1 523 0
	bl Sys_FloatTime
	lis 9,.LC1@ha
	.loc 1 526 0
	lfs 28,.LC1@l(9)
	lis 9,.LC3@ha
	lfs 29,.LC3@l(9)
	.loc 1 523 0
	frsp 31,1
.LVL0:
	.loc 1 526 0
	lis 9,.LC5@ha
	lis 30,0x4330
	lfs 30,.LC5@l(9)
.LVL1:
.L2:
	.loc 1 526 0 is_stmt 0 discriminator 2
	xoris 0,31,0x8000
	stw 30,8(1)
	stw 0,12(1)
	lfd 0,8(1)
	fsub 0,0,28
	fmul 0,0,29
	fmul 0,0,30
	frsp 0,0
	stfs 0,128(29)
	.loc 1 527 0 is_stmt 1 discriminator 2
	bl R_RenderView
.LVL2:
	.loc 1 524 0 discriminator 2
	cmpwi 7,31,127
	addi 31,31,1
.LVL3:
	bne+ 7,.L2
	.loc 1 530 0
	bl glFinish
	.loc 1 531 0
	bl Sys_FloatTime
.LVL4:
	.loc 1 533 0
	lis 9,.LC7@ha
	.loc 1 531 0
	frsp 1,1
.LVL5:
	.loc 1 533 0
	lfs 2,.LC7@l(9)
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	.loc 1 532 0
	fsubs 1,1,31
.LVL6:
	.loc 1 533 0
	fdivs 2,2,1
	creqv 6,6,6
	bl Con_Printf
.LVL7:
	.loc 1 535 0
	li 3,1029
	bl glDrawBuffer
	.loc 1 536 0
	bl GL_EndRendering
	.loc 1 537 0
	lwz 0,68(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL8:
	lfd 28,32(1)
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
.LVL9:
	addi 1,1,64
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE44:
	.size	R_TimeRefresh_f, .-R_TimeRefresh_f
	.align 2
	.globl R_Envmap_f
	.type	R_Envmap_f, @function
R_Envmap_f:
.LFB40:
	.loc 1 118 0
	.cfi_startproc
	lis 0,0xfffb
	mr 12,1
	ori 0,0,65488
	.loc 1 121 0
	li 3,1028
	.loc 1 118 0
	stwux 1,1,0
.LCFI2:
	.cfi_def_cfa_offset 262192
	mflr 0
	stw 23,-36(12)
	stw 0,4(12)
	stw 24,-32(12)
	.loc 1 123 0
	lis 24,envmap@ha
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	.loc 1 118 0
	stw 25,-28(12)
	.loc 1 125 0
	li 25,0
	.cfi_offset 25, -28
	.loc 1 118 0
	stw 26,-24(12)
	.loc 1 130 0
	li 26,0
	.cfi_offset 26, -24
	.loc 1 118 0
	stw 27,-20(12)
	.loc 1 133 0
	lis 27,glx@ha
	.cfi_offset 27, -20
	.loc 1 118 0
	stw 28,-16(12)
	.loc 1 133 0
	lis 28,gly@ha
	.cfi_offset 28, -16
	.loc 1 118 0
	stw 29,-12(12)
	.loc 1 133 0
	lis 29,glwidth@ha
	.cfi_offset 29, -12
	.loc 1 118 0
	stw 30,-8(12)
	.loc 1 133 0
	lis 30,glheight@ha
	.cfi_offset 30, -8
	.loc 1 118 0
	stw 31,-4(12)
	.loc 1 133 0
	la 27,glx@l(27)
	la 28,gly@l(28)
	la 29,glwidth@l(29)
	.loc 1 121 0
	.cfi_offset 31, -4
	bl glDrawBuffer
	.loc 1 122 0
	li 3,1028
	bl glReadBuffer
	.loc 1 125 0
	lis 9,r_refdef@ha
	la 31,r_refdef@l(9)
	.loc 1 127 0
	li 0,256
	stw 0,8(31)
	.loc 1 133 0
	la 30,glheight@l(30)
	.loc 1 128 0
	stw 0,12(31)
	.loc 1 123 0
	li 11,1
	.loc 1 126 0
	stw 25,4(31)
	.loc 1 133 0
	mr 3,27
	.loc 1 130 0
	stw 26,124(31)
	.loc 1 133 0
	mr 4,28
	.loc 1 131 0
	stw 26,128(31)
	.loc 1 133 0
	mr 5,29
	.loc 1 132 0
	stw 26,132(31)
	.loc 1 133 0
	mr 6,30
	.loc 1 123 0
	stb 11,envmap@l(24)
	.loc 1 125 0
	stw 25,r_refdef@l(9)
	.loc 1 133 0
	bl GL_BeginRendering
	.loc 1 134 0
	bl R_RenderView
	.loc 1 135 0
	li 7,6408
	li 8,5121
	addi 9,1,8
	li 6,256
	li 3,0
	li 4,0
	li 5,256
	bl glReadPixels
	.loc 1 136 0
	lis 3,.LC8@ha
	addi 4,1,8
	la 3,.LC8@l(3)
	lis 5,0x4
	bl COM_WriteFile
	.loc 1 138 0
	lis 9,.LC9@ha
	lwz 23,.LC9@l(9)
	.loc 1 139 0
	mr 3,27
	mr 4,28
	mr 5,29
	.loc 1 138 0
	stw 23,128(31)
	.loc 1 139 0
	mr 6,30
	bl GL_BeginRendering
	.loc 1 140 0
	bl R_RenderView
	.loc 1 141 0
	li 7,6408
	li 8,5121
	addi 9,1,8
	li 6,256
	li 3,0
	li 4,0
	li 5,256
	bl glReadPixels
	.loc 1 142 0
	lis 3,.LC10@ha
	addi 4,1,8
	la 3,.LC10@l(3)
	lis 5,0x4
	bl COM_WriteFile
	.loc 1 144 0
	lis 9,.LC11@ha
	lwz 0,.LC11@l(9)
	.loc 1 145 0
	mr 3,27
	mr 4,28
	mr 5,29
	.loc 1 144 0
	stw 0,128(31)
	.loc 1 145 0
	mr 6,30
	bl GL_BeginRendering
	.loc 1 146 0
	bl R_RenderView
	.loc 1 147 0
	li 7,6408
	li 8,5121
	addi 9,1,8
	li 6,256
	li 3,0
	li 4,0
	li 5,256
	bl glReadPixels
	.loc 1 148 0
	lis 3,.LC12@ha
	addi 4,1,8
	la 3,.LC12@l(3)
	lis 5,0x4
	bl COM_WriteFile
	.loc 1 150 0
	lis 9,.LC13@ha
	lwz 0,.LC13@l(9)
	.loc 1 151 0
	mr 3,27
	mr 4,28
	mr 5,29
	.loc 1 150 0
	stw 0,128(31)
	.loc 1 151 0
	mr 6,30
	bl GL_BeginRendering
	.loc 1 152 0
	bl R_RenderView
	.loc 1 153 0
	li 7,6408
	li 8,5121
	addi 9,1,8
	li 6,256
	li 3,0
	li 4,0
	li 5,256
	bl glReadPixels
	.loc 1 154 0
	lis 3,.LC14@ha
	addi 4,1,8
	la 3,.LC14@l(3)
	lis 5,0x4
	bl COM_WriteFile
	.loc 1 156 0
	lis 9,.LC15@ha
	lwz 0,.LC15@l(9)
	.loc 1 158 0
	mr 3,27
	.loc 1 157 0
	stw 26,128(31)
	.loc 1 158 0
	mr 4,28
	.loc 1 156 0
	stw 0,124(31)
	.loc 1 158 0
	mr 5,29
	mr 6,30
	bl GL_BeginRendering
	.loc 1 159 0
	bl R_RenderView
	.loc 1 160 0
	addi 9,1,8
	li 7,6408
	li 8,5121
	li 6,256
	li 3,0
	li 4,0
	li 5,256
	bl glReadPixels
	.loc 1 161 0
	lis 3,.LC16@ha
	addi 4,1,8
	la 3,.LC16@l(3)
	lis 5,0x4
	bl COM_WriteFile
	.loc 1 163 0
	stw 23,124(31)
	.loc 1 164 0
	stw 26,128(31)
	.loc 1 165 0
	mr 3,27
	mr 4,28
	mr 5,29
	mr 6,30
	bl GL_BeginRendering
	.loc 1 166 0
	bl R_RenderView
	.loc 1 167 0
	addi 9,1,8
	li 6,256
	li 7,6408
	li 8,5121
	li 3,0
	li 4,0
	li 5,256
	bl glReadPixels
	.loc 1 168 0
	lis 3,.LC17@ha
	addi 4,1,8
	lis 5,0x4
	la 3,.LC17@l(3)
	bl COM_WriteFile
	.loc 1 171 0
	li 3,1029
	.loc 1 170 0
	stb 25,envmap@l(24)
	.loc 1 171 0
	bl glDrawBuffer
	.loc 1 172 0
	li 3,1029
	bl glReadBuffer
	.loc 1 173 0
	bl GL_EndRendering
	.loc 1 174 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 23,-36(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	mr 1,11
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
	.cfi_endproc
.LFE40:
	.size	R_Envmap_f, .-R_Envmap_f
	.align 2
	.globl R_InitTextures
	.type	R_InitTextures, @function
R_InitTextures:
.LFB38:
	.loc 1 32 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI4:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 37 0
	lis 4,.LC18@ha
	li 3,412
	la 4,.LC18@l(4)
	.loc 1 32 0
	stw 29,12(1)
	stw 0,28(1)
	.loc 1 37 0
	lis 29,r_notexture_mip@ha
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	.loc 1 32 0
	stw 30,16(1)
	.loc 1 48 0
	li 30,16
	.cfi_offset 30, -8
	.loc 1 32 0
	stw 31,20(1)
	.loc 1 37 0
	.cfi_offset 31, -4
	bl Hunk_AllocName
	.loc 1 39 0
	li 0,16
	.loc 1 37 0
	stw 3,r_notexture_mip@l(29)
	.loc 1 39 0
	stw 0,20(3)
	.loc 1 43 0
	li 11,72
	.loc 1 39 0
	stw 0,16(3)
	.loc 1 40 0
	li 0,72
	stw 0,56(3)
	.loc 1 41 0
	li 0,328
	stw 0,60(3)
	.loc 1 42 0
	li 0,392
	stw 0,64(3)
	.loc 1 43 0
	li 0,408
	stw 0,68(3)
.LVL10:
	.loc 1 45 0
	li 12,0
	.loc 1 47 0
	li 31,8
	.loc 1 54 0
	li 6,-1
	.loc 1 52 0
	li 7,0
.LVL11:
.L13:
	.loc 1 48 0
	sraw 4,30,12
	.loc 1 47 0
	add 11,3,11
.LVL12:
	sraw 10,31,12
	.loc 1 48 0
	li 5,0
.LVL13:
.L7:
	.loc 1 48 0 is_stmt 0 discriminator 1
	cmpw 7,5,10
	.loc 1 31 0 is_stmt 1 discriminator 1
	li 9,0
	.loc 1 52 0 discriminator 1
	mtctr 4
	.loc 1 48 0 discriminator 1
	mfcr 8
	rlwinm 8,8,29,1
	b .L10
.LVL14:
.L17:
	.loc 1 52 0
	stbx 7,11,9
	.loc 1 49 0
	addi 9,9,1
.LVL15:
	bdz .L16
.LVL16:
.L10:
	.loc 1 51 0
	cmpw 7,10,9
	mfcr 0
	rlwinm 0,0,30,1
	cmpw 7,8,0
	bne- 7,.L17
	.loc 1 54 0
	stbx 6,11,9
	.loc 1 49 0
	addi 9,9,1
.LVL17:
	bdnz .L10
.L16:
	.loc 1 48 0
	addi 5,5,1
	.loc 1 31 0
	add 11,11,9
.LVL18:
	.loc 1 48 0
	cmpw 7,5,9
	bne+ 7,.L7
.LVL19:
	.loc 1 45 0
	cmpwi 7,12,3
	addi 12,12,1
.LVL20:
	beq- 7,.L6
	lwz 3,r_notexture_mip@l(29)
	addi 9,12,12
.LVL21:
	slwi 9,9,2
	add 9,3,9
	lwz 11,8(9)
.LVL22:
	b .L13
.LVL23:
.L6:
	.loc 1 57 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE38:
	.size	R_InitTextures, .-R_InitTextures
	.align 2
	.globl R_InitParticleTexture
	.type	R_InitParticleTexture, @function
R_InitParticleTexture:
.LFB39:
	.loc 1 72 0
	.cfi_startproc
	mflr 0
	.loc 1 79 0
	lis 11,texture_extension_number@ha
	.loc 1 72 0
	stwu 1,-288(1)
.LCFI6:
	.cfi_def_cfa_offset 288
	.cfi_register 65, 0
	.loc 1 79 0
	lis 10,particletexture@ha
	lwz 9,texture_extension_number@l(11)
.LVL24:
	.loc 1 72 0
	stw 0,292(1)
	.loc 1 80 0
	mr 3,9
.LVL25:
	.loc 1 79 0
	addi 0,9,1
	.cfi_offset 65, 4
	.loc 1 72 0
	stw 31,276(1)
	addi 31,1,16
	.cfi_offset 31, -12
	.loc 1 79 0
	stw 0,texture_extension_number@l(11)
	.loc 1 72 0
	stfd 31,280(1)
	.loc 1 79 0
	stw 9,particletexture@l(10)
	.loc 1 80 0
	.cfi_offset 63, -8
	bl GL_Bind
.LVL26:
	lis 8,.LANCHOR0@ha
	.loc 1 82 0
	li 7,0
	.loc 1 80 0
	la 8,.LANCHOR0@l(8)
	.loc 1 86 0
	li 0,-1
.LVL27:
.L19:
	.loc 1 86 0 is_stmt 0 discriminator 1
	li 10,8
	.loc 1 71 0 is_stmt 1 discriminator 1
	slwi 9,7,2
	.loc 1 86 0 discriminator 1
	mtctr 10
	.loc 1 71 0 discriminator 1
	add 9,31,9
	li 11,0
.LVL28:
.L20:
	.loc 1 89 0 discriminator 2
	lbzx 10,8,11
	.loc 1 84 0 discriminator 2
	addi 11,11,1
.LVL29:
	.loc 1 86 0 discriminator 2
	stb 0,0(9)
	.loc 1 89 0 discriminator 2
	neg 10,10
	.loc 1 87 0 discriminator 2
	stb 0,1(9)
	.loc 1 88 0 discriminator 2
	stb 0,2(9)
	.loc 1 89 0 discriminator 2
	stb 10,3(9)
	.loc 1 84 0 discriminator 2
	addi 9,9,32
	bdnz .L20
.LVL30:
	.loc 1 82 0
	cmpwi 7,7,7
	addi 8,8,8
	addi 7,7,1
.LVL31:
	bne+ 7,.L19
	.loc 1 93 0
	li 3,3553
	li 4,10242
	li 5,10497
	bl glTexParameteri
.LVL32:
	.loc 1 94 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 95 0
	lis 9,gl_alpha_format@ha
	lwz 5,gl_alpha_format@l(9)
	li 6,8
	li 7,8
	li 8,0
	li 10,5121
	li 9,6408
	li 3,3553
	li 4,0
	stw 31,8(1)
	bl glTexImage2D
	.loc 1 97 0
	lis 9,.LC19@ha
	li 3,8960
	lfs 1,.LC19@l(9)
	li 4,8704
	bl glTexEnvf
	.loc 1 99 0
	lis 9,.LC20@ha
	lfs 31,.LC20@l(9)
	li 3,3553
	li 4,10241
	fmr 1,31
	bl glTexParameterf
	.loc 1 100 0
	fmr 1,31
	li 4,10240
	li 3,3553
	bl glTexParameterf
	.loc 1 102 0
	lis 3,.LC21@ha
	la 3,.LC21@l(3)
	bl EasyTgaLoad
	lis 9,particletexture_blood@ha
	.loc 1 103 0
	li 5,0
	.loc 1 102 0
	stw 3,particletexture_blood@l(9)
	.loc 1 103 0
	li 4,10242
	li 3,3553
	ori 5,5,33071
	bl glTexParameteri
	.loc 1 104 0
	li 5,0
	li 4,10243
	ori 5,5,33071
	li 3,3553
	bl glTexParameteri
	.loc 1 105 0
	lis 3,.LC22@ha
	la 3,.LC22@l(3)
	bl EasyTgaLoad
	lis 9,particletexture_dirblood@ha
	.loc 1 106 0
	li 5,0
	.loc 1 105 0
	stw 3,particletexture_dirblood@l(9)
	.loc 1 106 0
	li 4,10242
	li 3,3553
	ori 5,5,33071
	bl glTexParameteri
	.loc 1 107 0
	li 5,0
	li 3,3553
	li 4,10243
	ori 5,5,33071
	bl glTexParameteri
	.loc 1 108 0
	lwz 0,292(1)
	lwz 31,276(1)
	mtlr 0
	lfd 31,280(1)
	addi 1,1,288
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE39:
	.size	R_InitParticleTexture, .-R_InitParticleTexture
	.align 2
	.globl R_Init
	.type	R_Init, @function
R_Init:
.LFB41:
	.loc 1 184 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 187 0
	lis 3,.LC23@ha
	lis 4,R_TimeRefresh_f@ha
	la 3,.LC23@l(3)
	la 4,R_TimeRefresh_f@l(4)
	.loc 1 184 0
	stw 0,12(1)
	.loc 1 187 0
	.cfi_offset 65, 4
	bl Cmd_AddCommand
	.loc 1 188 0
	lis 3,.LC24@ha
	lis 4,R_Envmap_f@ha
	la 3,.LC24@l(3)
	la 4,R_Envmap_f@l(4)
	bl Cmd_AddCommand
	.loc 1 189 0
	lis 4,R_ReadPointFile_f@ha
	lis 3,.LC25@ha
	la 4,R_ReadPointFile_f@l(4)
	la 3,.LC25@l(3)
	bl Cmd_AddCommand
	.loc 1 191 0
	lis 3,r_norefresh@ha
	la 3,r_norefresh@l(3)
	bl Cvar_RegisterVariable
	.loc 1 192 0
	lis 3,r_lightmap@ha
	la 3,r_lightmap@l(3)
	bl Cvar_RegisterVariable
	.loc 1 193 0
	lis 3,r_fullbright@ha
	la 3,r_fullbright@l(3)
	bl Cvar_RegisterVariable
	.loc 1 194 0
	lis 3,r_drawentities@ha
	la 3,r_drawentities@l(3)
	bl Cvar_RegisterVariable
	.loc 1 195 0
	lis 3,r_drawviewmodel@ha
	la 3,r_drawviewmodel@l(3)
	bl Cvar_RegisterVariable
	.loc 1 196 0
	lis 3,r_shadows@ha
	la 3,r_shadows@l(3)
	bl Cvar_RegisterVariable
	.loc 1 198 0
	lis 3,r_wateralpha@ha
	la 3,r_wateralpha@l(3)
	bl Cvar_RegisterVariable
	.loc 1 199 0
	lis 3,r_dynamic@ha
	la 3,r_dynamic@l(3)
	bl Cvar_RegisterVariable
	.loc 1 200 0
	lis 3,r_novis@ha
	la 3,r_novis@l(3)
	bl Cvar_RegisterVariable
	.loc 1 202 0
	lis 3,gl_finish@ha
	la 3,gl_finish@l(3)
	bl Cvar_RegisterVariable
	.loc 1 203 0
	lis 3,gl_clear@ha
	la 3,gl_clear@l(3)
	bl Cvar_RegisterVariable
	.loc 1 209 0
	lis 3,gl_cull@ha
	la 3,gl_cull@l(3)
	bl Cvar_RegisterVariable
	.loc 1 210 0
	lis 3,gl_smoothmodels@ha
	la 3,gl_smoothmodels@l(3)
	bl Cvar_RegisterVariable
	.loc 1 211 0
	lis 3,gl_affinemodels@ha
	la 3,gl_affinemodels@l(3)
	bl Cvar_RegisterVariable
	.loc 1 212 0
	lis 3,gl_polyblend@ha
	la 3,gl_polyblend@l(3)
	bl Cvar_RegisterVariable
	.loc 1 213 0
	lis 3,gl_flashblend@ha
	la 3,gl_flashblend@l(3)
	bl Cvar_RegisterVariable
	.loc 1 214 0
	lis 3,gl_playermip@ha
	la 3,gl_playermip@l(3)
	bl Cvar_RegisterVariable
	.loc 1 215 0
	lis 3,gl_nocolors@ha
	la 3,gl_nocolors@l(3)
	bl Cvar_RegisterVariable
	.loc 1 218 0
	lis 3,gl_reporttjunctions@ha
	la 3,gl_reporttjunctions@l(3)
	bl Cvar_RegisterVariable
	.loc 1 220 0
	lis 3,gl_doubleeyes@ha
	la 3,gl_doubleeyes@l(3)
	bl Cvar_RegisterVariable
	.loc 1 222 0
	lis 3,gl_watershader@ha
	la 3,gl_watershader@l(3)
	bl Cvar_RegisterVariable
	.loc 1 223 0
	lis 3,gl_calcdepth@ha
	la 3,gl_calcdepth@l(3)
	bl Cvar_RegisterVariable
	.loc 1 224 0
	lis 3,sh_lightmapbright@ha
	la 3,sh_lightmapbright@l(3)
	bl Cvar_RegisterVariable
	.loc 1 225 0
	lis 3,sh_radiusscale@ha
	la 3,sh_radiusscale@l(3)
	bl Cvar_RegisterVariable
	.loc 1 226 0
	lis 3,sh_visiblevolumes@ha
	la 3,sh_visiblevolumes@l(3)
	bl Cvar_RegisterVariable
	.loc 1 227 0
	lis 3,sh_entityshadows@ha
	la 3,sh_entityshadows@l(3)
	bl Cvar_RegisterVariable
	.loc 1 228 0
	lis 3,sh_worldshadows@ha
	la 3,sh_worldshadows@l(3)
	bl Cvar_RegisterVariable
	.loc 1 229 0
	lis 3,sh_showlightnum@ha
	la 3,sh_showlightnum@l(3)
	bl Cvar_RegisterVariable
	.loc 1 230 0
	lis 3,sh_glows@ha
	la 3,sh_glows@l(3)
	bl Cvar_RegisterVariable
	.loc 1 231 0
	lis 3,sh_fps@ha
	la 3,sh_fps@l(3)
	bl Cvar_RegisterVariable
	.loc 1 232 0
	lis 3,sh_debuginfo@ha
	la 3,sh_debuginfo@l(3)
	bl Cvar_RegisterVariable
	.loc 1 233 0
	lis 3,sh_norevis@ha
	la 3,sh_norevis@l(3)
	bl Cvar_RegisterVariable
	.loc 1 234 0
	lis 3,sh_nosvbsp@ha
	la 3,sh_nosvbsp@l(3)
	bl Cvar_RegisterVariable
	.loc 1 235 0
	lis 3,sh_noeclip@ha
	la 3,sh_noeclip@l(3)
	bl Cvar_RegisterVariable
	.loc 1 236 0
	lis 3,sh_infinitevolumes@ha
	la 3,sh_infinitevolumes@l(3)
	bl Cvar_RegisterVariable
	.loc 1 237 0
	lis 3,sh_noscissor@ha
	la 3,sh_noscissor@l(3)
	bl Cvar_RegisterVariable
	.loc 1 238 0
	lis 3,sh_nocleversave@ha
	la 3,sh_nocleversave@l(3)
	bl Cvar_RegisterVariable
	.loc 1 239 0
	lis 3,sh_bumpmaps@ha
	la 3,sh_bumpmaps@l(3)
	bl Cvar_RegisterVariable
	.loc 1 240 0
	lis 3,sh_colormaps@ha
	la 3,sh_colormaps@l(3)
	bl Cvar_RegisterVariable
	.loc 1 241 0
	lis 3,sh_playershadow@ha
	la 3,sh_playershadow@l(3)
	bl Cvar_RegisterVariable
	.loc 1 242 0
	lis 3,sh_nocache@ha
	la 3,sh_nocache@l(3)
	bl Cvar_RegisterVariable
	.loc 1 243 0
	lis 3,sh_glares@ha
	la 3,sh_glares@l(3)
	bl Cvar_RegisterVariable
	.loc 1 244 0
	lis 3,sh_noefrags@ha
	la 3,sh_noefrags@l(3)
	bl Cvar_RegisterVariable
	.loc 1 245 0
	lis 3,sh_showtangent@ha
	la 3,sh_showtangent@l(3)
	bl Cvar_RegisterVariable
	.loc 1 246 0
	lis 3,sh_noshadowpopping@ha
	la 3,sh_noshadowpopping@l(3)
	bl Cvar_RegisterVariable
	.loc 1 248 0
	lis 3,mir_detail@ha
	la 3,mir_detail@l(3)
	bl Cvar_RegisterVariable
	.loc 1 249 0
	lis 3,mir_frameskip@ha
	la 3,mir_frameskip@l(3)
	bl Cvar_RegisterVariable
	.loc 1 250 0
	lis 3,mir_forcewater@ha
	la 3,mir_forcewater@l(3)
	bl Cvar_RegisterVariable
	.loc 1 251 0
	lis 3,mir_distance@ha
	la 3,mir_distance@l(3)
	bl Cvar_RegisterVariable
	.loc 1 252 0
	lis 3,gl_wireframe@ha
	la 3,gl_wireframe@l(3)
	bl Cvar_RegisterVariable
	.loc 1 254 0
	lis 3,fog_r@ha
	la 3,fog_r@l(3)
	bl Cvar_RegisterVariable
	.loc 1 255 0
	lis 3,fog_g@ha
	la 3,fog_g@l(3)
	bl Cvar_RegisterVariable
	.loc 1 256 0
	lis 3,fog_b@ha
	la 3,fog_b@l(3)
	bl Cvar_RegisterVariable
	.loc 1 257 0
	lis 3,fog_start@ha
	la 3,fog_start@l(3)
	bl Cvar_RegisterVariable
	.loc 1 258 0
	lis 3,fog_end@ha
	la 3,fog_end@l(3)
	bl Cvar_RegisterVariable
	.loc 1 259 0
	lis 3,fog_enabled@ha
	la 3,fog_enabled@l(3)
	bl Cvar_RegisterVariable
	.loc 1 261 0
	lis 3,fog_waterfog@ha
	la 3,fog_waterfog@l(3)
	bl Cvar_RegisterVariable
	.loc 1 262 0
	lis 3,gl_caustics@ha
	la 3,gl_caustics@l(3)
	bl Cvar_RegisterVariable
	.loc 1 263 0
	lis 3,gl_truform@ha
	la 3,gl_truform@l(3)
	bl Cvar_RegisterVariable
	.loc 1 264 0
	lis 3,gl_truform_tesselation@ha
	la 3,gl_truform_tesselation@l(3)
	bl Cvar_RegisterVariable
	.loc 1 265 0
	lis 3,gl_transformlerp@ha
	la 3,gl_transformlerp@l(3)
	bl Cvar_RegisterVariable
	.loc 1 267 0
	bl R_InitParticleEffects
	.loc 1 268 0
	bl R_InitParticles
	.loc 1 269 0
	bl R_InitDecals
	.loc 1 270 0
	bl R_InitParticleTexture
	.loc 1 276 0
	lis 9,texture_extension_number@ha
	lwz 11,texture_extension_number@l(9)
.LVL33:
	lis 10,playertextures@ha
	.loc 1 277 0
	addi 0,11,16
.LVL34:
	.loc 1 276 0
	stw 11,playertextures@l(10)
	.loc 1 277 0
	stw 0,texture_extension_number@l(9)
	.loc 1 278 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE41:
	.size	R_Init, .-R_Init
	.align 2
	.globl R_TranslatePlayerSkin
	.type	R_TranslatePlayerSkin, @function
R_TranslatePlayerSkin:
.LFB42:
	.loc 1 288 0
	.cfi_startproc
.LVL35:
	stwu 1,-1392(1)
.LCFI10:
	.cfi_def_cfa_offset 1392
	mflr 0
	stw 31,1380(1)
	mr 31,3
	.cfi_offset 31, -12
	.cfi_register 65, 0
	stw 0,1396(1)
	stw 30,1376(1)
	addi 30,1,16
	.cfi_offset 30, -16
	.cfi_offset 65, 4
	stfd 31,1384(1)
	stw 19,1332(1)
	stw 20,1336(1)
	stw 21,1340(1)
	stw 22,1344(1)
	stw 23,1348(1)
	stw 24,1352(1)
	stw 25,1356(1)
	stw 26,1360(1)
	stw 27,1364(1)
	stw 28,1368(1)
	stw 29,1372(1)
	.loc 1 303 0
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 63, -8
	bl GL_DisableMultitexture
.LVL36:
	.loc 1 305 0
	mulli 0,31,16428
	lis 9,cl+3296@ha
	lwz 11,cl+3296@l(9)
	.loc 1 308 0
	li 9,0
	.loc 1 305 0
	add 11,11,0
	li 0,256
	lwz 8,40(11)
	mtctr 0
	rlwinm 7,8,0,24,27
.LVL37:
	.loc 1 306 0
	rlwinm 8,8,4,24,27
.LVL38:
.L26:
	.loc 1 309 0 discriminator 2
	stbx 9,30,9
	.loc 1 308 0 discriminator 2
	addi 9,9,1
.LVL39:
	bdnz .L26
	.loc 1 287 0
	li 0,16
	cmpwi 6,7,127
	cmpwi 7,8,127
	.loc 1 308 0
	addi 11,1,112
	li 9,0
.LVL40:
	.loc 1 287 0
	addi 5,7,15
	addi 6,8,15
	mtctr 0
	b .L31
.L62:
	.loc 1 314 0
	stb 10,-80(11)
	.loc 1 287 0
	subf 0,9,6
	add 10,9,8
	.loc 1 318 0
	bgt- 7,.L29
.L63:
	.loc 1 321 0
	addi 9,9,1
	.loc 1 319 0
	stb 10,0(11)
	.loc 1 321 0
	rlwinm 9,9,0,0xff
	addi 11,11,1
	.loc 1 311 0
	bdz .L61
.L31:
	.loc 1 287 0
	subf 0,9,5
	add 10,9,7
	.loc 1 313 0
	ble- 6,.L62
	.loc 1 316 0
	stb 0,-80(11)
	.loc 1 287 0
	add 10,9,8
	subf 0,9,6
	.loc 1 318 0
	ble- 7,.L63
.L29:
	.loc 1 321 0
	addi 9,9,1
	stb 0,0(11)
	rlwinm 9,9,0,0xff
	addi 11,11,1
	.loc 1 311 0
	bdnz .L31
.L61:
	.loc 1 327 0
	addi 9,31,1
	lis 11,cl_entities@ha
	mulli 9,9,584
	la 0,cl_entities@l(11)
	lis 28,currententity@ha
	add 9,9,0
.LVL41:
	.loc 1 328 0
	lwz 3,160(9)
.LVL42:
	.loc 1 327 0
	stw 9,currententity@l(28)
	.loc 1 329 0
	cmpwi 7,3,0
	beq- 7,.L25
	.loc 1 331 0
	lwz 0,68(3)
	cmpwi 7,0,2
	beq- 7,.L64
.LVL43:
.L25:
	.loc 1 437 0
	lwz 0,1396(1)
	lwz 19,1332(1)
	mtlr 0
	lwz 20,1336(1)
	lwz 21,1340(1)
	lwz 22,1344(1)
	lwz 23,1348(1)
	lwz 24,1352(1)
	lwz 25,1356(1)
	lwz 26,1360(1)
	lwz 27,1364(1)
	lwz 28,1368(1)
	lwz 29,1372(1)
	lwz 30,1376(1)
	lwz 31,1380(1)
	lfd 31,1384(1)
	addi 1,1,1392
	.cfi_remember_state
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	blr
.LVL44:
.L64:
.LCFI12:
	.cfi_restore_state
	.loc 1 335 0
	bl Mod_Extradata
.LVL45:
	.loc 1 339 0
	lwz 9,currententity@l(28)
	.loc 1 336 0
	lwz 29,4(3)
	.loc 1 339 0
	lwz 5,184(9)
	.loc 1 336 0
	add 29,3,29
.LVL46:
	.loc 1 339 0
	cmpwi 7,5,0
	.loc 1 338 0
	lwz 28,52(29)
	lwz 0,56(29)
	mullw 28,28,0
.LVL47:
	.loc 1 339 0
	blt- 7,.L33
	.loc 1 339 0 is_stmt 0 discriminator 1
	lwz 0,48(29)
	cmpw 7,5,0
	bge- 7,.L33
	.loc 1 343 0 is_stmt 1
	addi 9,5,292
	slwi 9,9,2
	add 9,29,9
	lwz 27,4(9)
	add 27,29,27
.LVL48:
.L35:
	.loc 1 344 0
	andi. 9,28,3
	bne- 0,.L65
.L36:
	.loc 1 352 0
	lis 9,playertextures@ha
	.loc 1 347 0
	lwz 28,52(29)
.LVL49:
	.loc 1 352 0
	lwz 3,playertextures@l(9)
	.loc 1 348 0
	lwz 29,56(29)
.LVL50:
	.loc 1 352 0
	add 3,31,3
	bl GL_Bind
	.loc 1 369 0
	lis 9,gl_max_size+12@ha
	lfs 0,gl_max_size+12@l(9)
	lis 9,.LC28@ha
	lfs 13,.LC28@l(9)
	li 6,512
	fcmpu 7,0,13
	bnl- 7,.L37
	.loc 1 369 0 is_stmt 0 discriminator 1
	lis 9,.LC29@ha
	lfs 13,.LC29@l(9)
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L39
	fctiwz 13,0
	addi 9,1,1312
	stfiwx 13,0,9
	lwz 6,1312(1)
.L37:
.LVL51:
	.loc 1 370 0 is_stmt 1 discriminator 3
	lis 9,.LC30@ha
	li 8,256
	lfs 13,.LC30@l(9)
	fcmpu 7,0,13
	bnl- 7,.L41
	.loc 1 370 0 is_stmt 0 discriminator 1
	lis 9,.LC29@ha
	lfs 13,.LC29@l(9)
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L43
	fctiwz 0,0
	addi 9,1,1304
	stfiwx 0,0,9
	lwz 8,1304(1)
.L41:
.LVL52:
	.loc 1 373 0 is_stmt 1 discriminator 3
	lis 9,gl_playermip+12@ha
	li 0,256
	lfs 0,gl_playermip+12@l(9)
	addi 9,1,1296
	lis 10,d_8to24table@ha
	mtctr 0
	fctiwz 0,0
	.loc 1 374 0 discriminator 3
	addi 11,1,15
	la 10,d_8to24table@l(10)
	.loc 1 373 0 discriminator 3
	stfiwx 0,0,9
	.loc 1 374 0 discriminator 3
	addi 9,1,268
	.loc 1 373 0 discriminator 3
	lwz 7,1296(1)
	srw 6,6,7
.LVL53:
	.loc 1 374 0 discriminator 3
	srw 7,8,7
.LVL54:
.L45:
	.loc 1 407 0 discriminator 2
	lbzu 0,1(11)
	slwi 0,0,2
	lwzx 0,10,0
	stwu 0,4(9)
	.loc 1 406 0 discriminator 2
	bdnz .L45
	.loc 1 411 0
	cmpwi 7,7,0
	.loc 1 409 0
	lis 20,.LANCHOR1@ha
	la 31,.LANCHOR1@l(20)
.LVL55:
	addi 31,31,4
	stw 31,.LANCHOR1@l(20)
.LVL56:
	.loc 1 411 0
	beq- 7,.L46
	.loc 1 410 0
	slwi 4,28,16
	cmpwi 6,6,0
	divwu 4,4,6
	slwi 22,6,2
	.loc 1 409 0
	mr 23,31
	.loc 1 410 0
	li 24,0
	.loc 1 411 0
	li 25,0
	mulli 26,4,3
	.loc 1 410 0
	srwi 21,4,1
	.loc 1 287 0
	slwi 12,4,1
	slwi 3,4,2
.LVL57:
.L49:
	.loc 1 413 0
	divwu 11,24,7
	mullw 11,11,28
	add 11,27,11
.LVL58:
	.loc 1 415 0
	beq- 6,.L47
	mr 9,23
	.loc 1 414 0
	mr 0,21
	.loc 1 415 0
	li 10,0
.LVL59:
.L48:
	.loc 1 417 0 discriminator 2
	srwi 8,0,16
	.loc 1 415 0 discriminator 2
	addi 10,10,4
	.loc 1 417 0 discriminator 2
	lbzx 5,11,8
	.loc 1 418 0 discriminator 2
	add 8,0,4
	.loc 1 419 0 discriminator 2
	srwi 8,8,16
	.loc 1 415 0 discriminator 2
	cmplw 7,6,10
	.loc 1 417 0 discriminator 2
	slwi 5,5,2
	add 5,30,5
	lwz 5,256(5)
	stw 5,0(9)
	.loc 1 287 0 discriminator 2
	add 5,0,12
	.loc 1 421 0 discriminator 2
	srwi 5,5,16
	.loc 1 419 0 discriminator 2
	lbzx 8,11,8
	slwi 8,8,2
	add 8,30,8
	lwz 19,256(8)
	.loc 1 287 0 discriminator 2
	add 8,0,26
	.loc 1 423 0 discriminator 2
	srwi 8,8,16
	.loc 1 287 0 discriminator 2
	add 0,0,3
	.loc 1 419 0 discriminator 2
	stw 19,4(9)
.LVL60:
	.loc 1 421 0 discriminator 2
	lbzx 5,11,5
	slwi 5,5,2
	add 5,30,5
	lwz 5,256(5)
	stw 5,8(9)
.LVL61:
	.loc 1 423 0 discriminator 2
	lbzx 8,11,8
	slwi 8,8,2
	add 8,30,8
	lwz 8,256(8)
	stw 8,12(9)
	.loc 1 415 0 discriminator 2
	addi 9,9,16
	bgt+ 7,.L48
.LVL62:
.L47:
	.loc 1 411 0
	addi 25,25,1
.LVL63:
	add 23,23,22
	cmpw 7,25,7
	add 24,24,29
	bne+ 7,.L49
	.loc 1 287 0
	mullw 0,7,22
	.loc 1 411 0
	add 0,31,0
	stw 0,.LANCHOR1@l(20)
.LVL64:
.L46:
	.loc 1 428 0
	li 3,3553
	li 4,10242
	li 5,10497
	stw 6,1316(1)
	stw 7,1320(1)
	bl glTexParameteri
.LVL65:
	.loc 1 429 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 430 0
	lis 9,gl_solid_format@ha
	lwz 5,gl_solid_format@l(9)
	li 8,0
	lwz 6,1316(1)
	li 10,5121
	lwz 7,1320(1)
	li 9,6408
	li 3,3553
	li 4,0
	stw 31,8(1)
	bl glTexImage2D
	.loc 1 432 0
	lis 9,.LC19@ha
	li 3,8960
	lfs 1,.LC19@l(9)
	li 4,8704
	bl glTexEnvf
	.loc 1 433 0
	lis 9,.LC20@ha
	lfs 31,.LC20@l(9)
	li 3,3553
	li 4,10241
	fmr 1,31
	bl glTexParameterf
	.loc 1 434 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
	b .L25
.LVL66:
.L33:
	.loc 1 340 0
	lis 3,.LC26@ha
.LVL67:
	mr 4,31
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 341 0
	lwz 27,1172(29)
	add 27,29,27
.LVL68:
	b .L35
.L65:
	.loc 1 345 0
	lis 3,.LC27@ha
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L36
.LVL69:
.L39:
	.loc 1 369 0 discriminator 1
	fsubs 13,0,13
	addi 9,1,1308
	fctiwz 13,13
	stfiwx 13,0,9
	lwz 6,1308(1)
	addis 6,6,0x8000
	b .L37
.LVL70:
.L43:
	.loc 1 370 0 discriminator 1
	fsubs 0,0,13
	addi 9,1,1300
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 8,1300(1)
	addis 8,8,0x8000
	b .L41
	.cfi_endproc
.LFE42:
	.size	R_TranslatePlayerSkin, .-R_TranslatePlayerSkin
	.align 2
	.globl R_NewMap
	.type	R_NewMap, @function
R_NewMap:
.LFB43:
	.loc 1 446 0
	.cfi_startproc
.LVL71:
	stwu 1,-40(1)
.LCFI13:
	.cfi_def_cfa_offset 40
	mflr 0
	.loc 1 454 0
	li 11,256
	.loc 1 475 0
	lis 9,d_lightstylevalue-4@ha
	.loc 1 446 0
	stw 24,8(1)
	.loc 1 454 0
	mtctr 11
	.loc 1 446 0
	stw 25,12(1)
	.loc 1 475 0
	la 9,d_lightstylevalue-4@l(9)
	.loc 1 446 0
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
	stw 0,44(1)
	.loc 1 454 0
	li 0,264
.LVL72:
.L67:
	.loc 1 454 0 is_stmt 0 discriminator 2
	stwu 0,4(9)
	.loc 1 453 0 is_stmt 1 discriminator 2
	bdnz .L67
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	.loc 1 456 0
	lis 31,r_worldentity@ha
	.loc 1 457 0
	lis 29,cl@ha
	.loc 1 456 0
	la 31,r_worldentity@l(31)
	li 4,0
	mr 3,31
	li 5,584
	.loc 1 457 0
	la 29,cl@l(29)
	.loc 1 456 0
	bl memset
	.loc 1 457 0
	lwz 9,2688(29)
	.loc 1 461 0
	lwz 11,164(9)
	.loc 1 457 0
	stw 9,160(31)
.LVL73:
	.loc 1 461 0
	cmpwi 7,11,0
	ble- 7,.L68
	lwz 9,168(9)
	.loc 1 462 0
	mtctr 11
	li 0,0
.LVL74:
.L69:
	.loc 1 462 0 is_stmt 0 discriminator 2
	stw 0,40(9)
	.loc 1 461 0 is_stmt 1 discriminator 2
	addi 9,9,64
	bdnz .L69
.L68:
	.loc 1 464 0
	li 0,0
	lis 9,r_viewleaf@ha
	stw 0,r_viewleaf@l(9)
	.loc 1 465 0
	bl R_ClearParticles
	.loc 1 466 0
	bl R_ClearDecals
	.loc 1 473 0
	lis 25,skytexturenum@ha
	.loc 1 468 0
	bl GL_BuildLightmaps
	.loc 1 474 0
	lis 24,mirrortexturenum@ha
	.loc 1 470 0
	bl R_CopyVerticesToHunk
	.loc 1 475 0
	lwz 9,2688(29)
	.loc 1 473 0
	li 0,-1
	.loc 1 475 0
	lwz 11,396(9)
	.loc 1 473 0
	stw 0,skytexturenum@l(25)
	.loc 1 475 0
	cmpwi 7,11,0
	.loc 1 474 0
	stw 0,mirrortexturenum@l(24)
.LVL75:
	.loc 1 475 0
	ble- 7,.L70
	.loc 1 479 0
	lis 28,.LC31@ha
	.loc 1 481 0
	lis 26,.LC32@ha
	.loc 1 475 0
	li 31,0
	.loc 1 479 0
	la 28,.LC31@l(28)
	.loc 1 481 0
	la 26,.LC32@l(26)
	.loc 1 483 0
	li 27,0
.LVL76:
.L74:
	.loc 1 477 0
	lwz 9,400(9)
	.loc 1 445 0
	slwi 30,31,2
	.loc 1 479 0
	mr 4,28
	li 5,3
	.loc 1 477 0
	lwzx 0,9,30
	cmpwi 7,0,0
	.loc 1 479 0
	mr 3,0
	.loc 1 477 0
	beq- 7,.L71
	.loc 1 479 0
	bl Q_strncmp
	.loc 1 481 0
	mr 4,26
	.loc 1 479 0
	cmpwi 7,3,0
	.loc 1 481 0
	li 5,10
	.loc 1 479 0
	bne- 7,.L72
	.loc 1 480 0
	stw 31,skytexturenum@l(25)
.L72:
	.loc 1 481 0
	lwz 9,2688(29)
	lwz 9,400(9)
	lwzx 3,9,30
	bl Q_strncmp
	cmpwi 7,3,0
	bne- 7,.L73
	.loc 1 482 0
	stw 31,mirrortexturenum@l(24)
.L73:
	.loc 1 483 0
	lwz 9,2688(29)
	lwz 9,400(9)
	lwzx 9,9,30
	stw 27,32(9)
.L71:
	.loc 1 475 0
	lwz 9,2688(29)
	addi 31,31,1
.LVL77:
	lwz 0,396(9)
	cmpw 7,0,31
	bgt+ 7,.L74
.LVL78:
.L70:
	.loc 1 491 0
	lis 9,.LC33@ha
	.loc 1 499 0
	li 0,0
	.loc 1 491 0
	lwz 8,.LC33@l(9)
	la 11,.LC33@l(9)
	lwz 10,4(11)
	lis 9,skybox_name@ha
	stw 8,skybox_name@l(9)
	la 11,skybox_name@l(9)
	.loc 1 492 0
	lis 9,.LC34@ha
	.loc 1 491 0
	stw 10,4(11)
	.loc 1 492 0
	lwz 11,.LC34@l(9)
	lis 9,skybox_cloudspeed@ha
	stw 11,skybox_cloudspeed@l(9)
	.loc 1 499 0
	lis 9,numStaticShadowLights@ha
	stw 0,numStaticShadowLights@l(9)
	.loc 1 500 0
	lis 9,numShadowLights@ha
	stw 0,numShadowLights@l(9)
	.loc 1 502 0
	bl R_ClearInstantCaches
	.loc 1 503 0
	bl R_ClearBrushInstantCaches
	.loc 1 504 0
	bl R_NewMirrorChains
	.loc 1 505 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.cfi_endproc
.LFE43:
	.size	R_NewMap, .-R_NewMap
	.align 2
	.globl D_FlushCaches
	.type	D_FlushCaches, @function
D_FlushCaches:
.LFB45:
	.loc 1 540 0
	.cfi_startproc
	.loc 1 541 0
	blr
	.cfi_endproc
.LFE45:
	.size	D_FlushCaches, .-D_FlushCaches
	.globl dottexture
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
.LC3:
	.4byte	1006632960
.LC5:
	.4byte	1135869952
.LC7:
	.4byte	1124073472
.LC9:
	.4byte	1119092736
.LC11:
	.4byte	1127481344
.LC13:
	.4byte	1132920832
.LC15:
	.4byte	-1028390912
.LC19:
	.4byte	1174667264
.LC20:
	.4byte	1175979008
.LC28:
	.4byte	1140850688
.LC29:
	.4byte	1325400064
.LC30:
	.4byte	1132462080
.LC34:
	.4byte	1065353216
	.section	".data"
	.set	.LANCHOR0,. + 0
	.type	dottexture, @object
	.size	dottexture, 64
dottexture:
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"%f seconds (%f fps)\n"
	.zero	3
.LC8:
	.string	"env0.rgb"
	.zero	3
.LC10:
	.string	"env1.rgb"
	.zero	3
.LC12:
	.string	"env2.rgb"
	.zero	3
.LC14:
	.string	"env3.rgb"
	.zero	3
.LC16:
	.string	"env4.rgb"
	.zero	3
.LC17:
	.string	"env5.rgb"
	.zero	3
.LC18:
	.string	"notexture"
	.zero	2
.LC21:
	.string	"textures/particles/blood.tga"
	.zero	3
.LC22:
	.string	"textures/particles/blood2.tga"
	.zero	2
.LC23:
	.string	"timerefresh"
.LC24:
	.string	"envmap"
	.zero	1
.LC25:
	.string	"pointfile"
	.zero	2
.LC26:
	.string	"(%d): Invalid player skin #%d\n"
	.zero	1
.LC27:
	.string	"R_TranslateSkin: s&3"
	.zero	3
.LC31:
	.string	"sky"
.LC32:
	.string	"window02_1"
	.zero	1
.LC33:
	.string	"default"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	out.14969, @object
	.size	out.14969, 4
out.14969:
	.zero	4
	.type	pixels.14968, @object
	.size	pixels.14968, 524288
pixels.14968:
	.zero	524288
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/gl_md3.h"
	.file 17 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x270e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF503
	.byte	0x1
	.4byte	.LASF504
	.4byte	.LASF505
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
	.4byte	0x6c
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
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x8
	.byte	0x40
	.byte	0x3
	.byte	0x52
	.4byte	0x122
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x54
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x54
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x55
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x56
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x132
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x142
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.byte	0x59
	.4byte	0xb7
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x15d
	.uleb128 0xb
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x16d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x17d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x1a2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.byte	0xa8
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0xa9
	.4byte	0x17d
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1c3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x3a
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1e3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x14
	.byte	0x4
	.byte	0x1c
	.4byte	0x232
	.uleb128 0xd
	.string	"x"
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"y"
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1f
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e3
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.byte	0x20
	.4byte	0x1e3
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.4byte	0x25e
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.byte	0x72
	.4byte	0x243
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x6
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x6
	.byte	0x17
	.4byte	0x27f
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x28f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x48
	.byte	0x7
	.byte	0xef
	.4byte	0x340
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x7
	.byte	0xf1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0xf2
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0xf9
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x7
	.byte	0xfe
	.4byte	0x28f
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x14
	.byte	0x8
	.byte	0x38
	.4byte	0x3ac
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0x3a
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x3b
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0x3c
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x3d
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x3e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0x3f
	.4byte	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x34b
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x8
	.byte	0x40
	.4byte	0x34b
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x3ce
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x3de
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x3ee
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x44
	.byte	0x9
	.byte	0x23
	.4byte	0x417
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x25
	.4byte	0x3ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x9
	.byte	0x26
	.4byte	0x25e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x10
	.byte	0xa
	.byte	0x1e
	.4byte	0x45c
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0xa
	.byte	0x20
	.4byte	0x503
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xa
	.byte	0x21
	.4byte	0x509
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xa
	.byte	0x22
	.4byte	0x77d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0x23
	.4byte	0x509
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x40
	.byte	0xb
	.byte	0xca
	.4byte	0x503
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xb
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xb
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0xd0
	.4byte	0x15a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xb
	.byte	0xd2
	.4byte	0xadb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xb
	.byte	0xd5
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xb
	.byte	0xd6
	.4byte	0x15cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xb
	.byte	0xd8
	.4byte	0x15d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xb
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"key"
	.byte	0xb
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xb
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xb
	.byte	0xdc
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x45c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x417
	.uleb128 0xf
	.4byte	.LASF75
	.2byte	0x248
	.byte	0xa
	.byte	0x27
	.4byte	0x77d
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xa
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xa
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xa
	.byte	0x2d
	.4byte	0x340
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xa
	.byte	0x30
	.4byte	0x78e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0xa
	.byte	0x31
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xa
	.byte	0x32
	.4byte	0x78e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xa
	.byte	0x33
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0xa
	.byte	0x34
	.4byte	0xa58
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xa
	.byte	0x35
	.4byte	0x509
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xa
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xa
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xa
	.byte	0x38
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xa
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xa
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xa
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0xa
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xa
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xa
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0xa
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0xa
	.byte	0x44
	.4byte	0xadb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xa
	.byte	0x48
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xa
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xa
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xa
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0xa
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0xa
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xa
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xa
	.byte	0x57
	.4byte	0xbfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xa
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xa
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xa
	.byte	0x5c
	.4byte	0xc01
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xa
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xa
	.byte	0x60
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xa
	.byte	0x61
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xa
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xa
	.byte	0x63
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xa
	.byte	0x64
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x50f
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0xa
	.byte	0x24
	.4byte	0x417
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x7a4
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF107
	.2byte	0x1a4
	.byte	0xb
	.2byte	0x180
	.4byte	0xa58
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x182
	.4byte	0x3ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x185
	.4byte	0x1916
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x187
	.4byte	0x11b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xb
	.2byte	0x18e
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x18e
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x195
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x195
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x19d
	.4byte	0x1922
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x1a0
	.4byte	0x1585
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x1a3
	.4byte	0x1928
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x1a6
	.4byte	0x192e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x1a9
	.4byte	0x1934
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x1ac
	.4byte	0x193a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x1af
	.4byte	0x1591
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x1b2
	.4byte	0x15d9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x1b5
	.4byte	0x1940
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x1b8
	.4byte	0x1647
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x1bb
	.4byte	0x15d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x1bd
	.4byte	0x1946
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xb
	.2byte	0x1c0
	.4byte	0x1956
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x1c2
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x1c3
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0xb
	.2byte	0x1c9
	.4byte	0x25e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a4
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x34
	.byte	0xb
	.byte	0xb6
	.4byte	0xadb
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xb
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xb
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0xbc
	.4byte	0x15a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xb
	.byte	0xbe
	.4byte	0xadb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0xb
	.byte	0xc1
	.4byte	0x1585
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xb
	.byte	0xc2
	.4byte	0x15b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0xb
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0xb
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5e
	.uleb128 0x12
	.4byte	.LASF148
	.4byte	0x20030
	.byte	0xc
	.2byte	0xa09
	.4byte	0xbfb
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xc
	.2byte	0xa0f
	.4byte	0xbfb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xc
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xc
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xc
	.2byte	0xa17
	.4byte	0x1d31
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xc
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xc
	.2byte	0xa1d
	.4byte	0xe78
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xc
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xc
	.2byte	0xa21
	.4byte	0x1d31
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xc
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xc
	.2byte	0xa2b
	.4byte	0x1d3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0xc
	.2byte	0xa2d
	.4byte	0x1d3d
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xc
	.2byte	0xa2f
	.4byte	0x1d3d
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xc
	.2byte	0xa31
	.4byte	0x1d3d
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xc
	.2byte	0xa33
	.4byte	0x1d82
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xc
	.2byte	0xa37
	.4byte	0x1d93
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xae1
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xc11
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0xa
	.byte	0x66
	.4byte	0x50f
	.uleb128 0x8
	.byte	0x94
	.byte	0xa
	.byte	0x69
	.4byte	0xd86
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0xa
	.byte	0x6b
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0xa
	.byte	0x6d
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0xa
	.byte	0x70
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xa
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0xa
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0xa
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0xa
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0xa
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0xa
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0xa
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0xa
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0xa
	.byte	0x78
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0xa
	.byte	0x79
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0xa
	.byte	0x7a
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0xa
	.byte	0x7c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0xa
	.byte	0x7d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0xa
	.byte	0x7f
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xa
	.byte	0x80
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xa
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0xa
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0xa
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x6
	.4byte	.LASF192
	.byte	0xa
	.byte	0x85
	.4byte	0xc1c
	.uleb128 0x8
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.4byte	0xdd2
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xd
	.byte	0x18
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0xd
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0xd
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xd
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF196
	.byte	0xd
	.byte	0x21
	.4byte	0xd91
	.uleb128 0x13
	.2byte	0x402c
	.byte	0xd
	.byte	0x29
	.4byte	0xe2d
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xd
	.byte	0x2b
	.4byte	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0xd
	.byte	0x2c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xd
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0xd
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xd
	.byte	0x2f
	.4byte	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0xd
	.byte	0x30
	.4byte	0xddd
	.uleb128 0x8
	.byte	0x10
	.byte	0xd
	.byte	0x32
	.4byte	0xe5d
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0xd
	.byte	0x34
	.4byte	0xe5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xd
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xe6d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0xd
	.byte	0x36
	.4byte	0xe38
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc11
	.uleb128 0x13
	.2byte	0xce8
	.byte	0xd
	.byte	0x9a
	.4byte	0x1119
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xd
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cmd"
	.byte	0xd
	.byte	0xa0
	.4byte	0xdd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xd
	.byte	0xa3
	.4byte	0x1119
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xd
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xd
	.byte	0xa5
	.4byte	0x1129
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xd
	.byte	0xa6
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xd
	.byte	0xa8
	.4byte	0x1139
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xd
	.byte	0xa9
	.4byte	0x1139
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0xd
	.byte	0xaf
	.4byte	0x78e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xd
	.byte	0xb1
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xd
	.byte	0xb3
	.4byte	0x78e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xd
	.byte	0xb5
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xd
	.byte	0xb7
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0xd
	.byte	0xba
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xd
	.byte	0xbb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0xd
	.byte	0xbc
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0xd
	.byte	0xbd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xd
	.byte	0xbe
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0xd
	.byte	0xc0
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xd
	.byte	0xc1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xd
	.byte	0xc3
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0xd
	.byte	0xc4
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0xd
	.byte	0xc5
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0xd
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0xd
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xd
	.byte	0xca
	.4byte	0x1149
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xd
	.byte	0xcb
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xd
	.byte	0xce
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0xd
	.byte	0xd2
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xd
	.byte	0xd7
	.4byte	0x1159
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0xd
	.byte	0xd8
	.4byte	0x1169
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0xd
	.byte	0xda
	.4byte	0x117f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0xd
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0xd
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0xd
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0x9
	.4byte	.LASF238
	.byte	0xd
	.byte	0xe0
	.4byte	0xa58
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0xd
	.byte	0xe1
	.4byte	0x509
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0xd
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0xd
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0xd
	.byte	0xe4
	.4byte	0xc11
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0x9
	.4byte	.LASF244
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0xd
	.byte	0xe9
	.4byte	0x118f
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xd
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1129
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1139
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0xe6d
	.4byte	0x1149
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x73
	.4byte	0x1159
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xa58
	.4byte	0x1169
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	0x1179
	.4byte	0x1179
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3ee
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x118f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe2d
	.uleb128 0x6
	.4byte	.LASF247
	.byte	0xd
	.byte	0xf3
	.4byte	0xe7e
	.uleb128 0x14
	.byte	0x4
	.byte	0xe
	.byte	0x34
	.4byte	0x11b5
	.uleb128 0x15
	.4byte	.LASF248
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF249
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF250
	.byte	0xe
	.byte	0x34
	.4byte	0x11a0
	.uleb128 0x8
	.byte	0x4
	.byte	0xe
	.byte	0x64
	.4byte	0x11e3
	.uleb128 0xd
	.string	"v"
	.byte	0xe
	.byte	0x65
	.4byte	0x11e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF251
	.byte	0xe
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x11f3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF252
	.byte	0xe
	.byte	0x67
	.4byte	0x11c0
	.uleb128 0x8
	.byte	0xc
	.byte	0xb
	.byte	0x3b
	.4byte	0x1215
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0xb
	.byte	0x3d
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF254
	.byte	0xb
	.byte	0x3e
	.4byte	0x11fe
	.uleb128 0xc
	.4byte	.LASF255
	.byte	0x14
	.byte	0xb
	.byte	0x52
	.4byte	0x1273
	.uleb128 0x9
	.4byte	.LASF256
	.byte	0xb
	.byte	0x54
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF257
	.byte	0xb
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0xb
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0xb
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.string	"pad"
	.byte	0xb
	.byte	0x58
	.4byte	0x1273
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1283
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF259
	.byte	0xb
	.byte	0x59
	.4byte	0x1220
	.uleb128 0xc
	.4byte	.LASF260
	.byte	0x48
	.byte	0xb
	.byte	0x5b
	.4byte	0x1343
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xb
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF261
	.byte	0xb
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF262
	.byte	0xb
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0xb
	.byte	0x61
	.4byte	0x1468
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF264
	.byte	0xb
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF267
	.byte	0xb
	.byte	0x64
	.4byte	0x146e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0xb
	.byte	0x65
	.4byte	0x146e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF269
	.byte	0xb
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF270
	.byte	0x5c
	.byte	0xb
	.byte	0x96
	.4byte	0x1468
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xb
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0xb
	.byte	0x9a
	.4byte	0x1585
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0xb
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF271
	.byte	0xb
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0xb
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF272
	.byte	0xb
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF273
	.byte	0xb
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF274
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF275
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0xb
	.byte	0xa5
	.4byte	0x158b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0xb
	.byte	0xa6
	.4byte	0x1468
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0xb
	.byte	0xa7
	.4byte	0x1468
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0xb
	.byte	0xa9
	.4byte	0x1591
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xb
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xb
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF278
	.byte	0xb
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF279
	.byte	0xb
	.byte	0xb0
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF280
	.byte	0xb
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF281
	.byte	0xb
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0xb
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1343
	.uleb128 0x5
	.byte	0x4
	.4byte	0x128e
	.uleb128 0x6
	.4byte	.LASF283
	.byte	0xb
	.byte	0x67
	.4byte	0x128e
	.uleb128 0x8
	.byte	0x8
	.byte	0xb
	.byte	0x78
	.4byte	0x14a2
	.uleb128 0xd
	.string	"v"
	.byte	0xb
	.byte	0x7a
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF284
	.byte	0xb
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xb
	.byte	0x7c
	.4byte	0x147f
	.uleb128 0x8
	.byte	0x2c
	.byte	0xb
	.byte	0x7e
	.4byte	0x14ee
	.uleb128 0x9
	.4byte	.LASF286
	.byte	0xb
	.byte	0x80
	.4byte	0x1ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF287
	.byte	0xb
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF288
	.byte	0xb
	.byte	0x82
	.4byte	0x14ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0xb
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1474
	.uleb128 0x6
	.4byte	.LASF289
	.byte	0xb
	.byte	0x84
	.4byte	0x14ad
	.uleb128 0xc
	.4byte	.LASF290
	.byte	0x1c
	.byte	0xb
	.byte	0x8a
	.4byte	0x156e
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xb
	.byte	0x8c
	.4byte	0x156e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF291
	.byte	0xb
	.byte	0x8d
	.4byte	0x156e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF292
	.byte	0xb
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0xb
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0xb
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF293
	.byte	0xb
	.byte	0x92
	.4byte	0x1574
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF294
	.byte	0xb
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14ff
	.uleb128 0x5
	.byte	0x4
	.4byte	0x156e
	.uleb128 0x6
	.4byte	.LASF295
	.byte	0xb
	.byte	0x94
	.4byte	0x14ff
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1283
	.uleb128 0x5
	.byte	0x4
	.4byte	0x157a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14f4
	.uleb128 0x6
	.4byte	.LASF296
	.byte	0xb
	.byte	0xb4
	.4byte	0x1343
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x15b2
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xadb
	.4byte	0x15c2
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF297
	.byte	0xb
	.byte	0xc6
	.4byte	0xa5e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x783
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15d9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1597
	.uleb128 0x6
	.4byte	.LASF298
	.byte	0xb
	.byte	0xdd
	.4byte	0x45c
	.uleb128 0x8
	.byte	0x28
	.byte	0xb
	.byte	0xe0
	.4byte	0x1647
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0xb
	.byte	0xe2
	.4byte	0x1647
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0xb
	.byte	0xe3
	.4byte	0x1585
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF299
	.byte	0xb
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF300
	.byte	0xb
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF301
	.byte	0xb
	.byte	0xe6
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF302
	.byte	0xb
	.byte	0xe7
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	.LASF303
	.byte	0xb
	.byte	0xe8
	.4byte	0x15ea
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x16
	.byte	0x28
	.byte	0xb
	.2byte	0x11e
	.4byte	0x16d1
	.uleb128 0x11
	.4byte	.LASF304
	.byte	0xb
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF305
	.byte	0xb
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF306
	.byte	0xb
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF307
	.byte	0xb
	.2byte	0x123
	.4byte	0x11f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0xb
	.2byte	0x124
	.4byte	0x11f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xb
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x126
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF309
	.byte	0xb
	.2byte	0x127
	.4byte	0x165e
	.uleb128 0x18
	.2byte	0x53c
	.byte	0xb
	.2byte	0x142
	.4byte	0x18c2
	.uleb128 0x11
	.4byte	.LASF310
	.byte	0xb
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF311
	.byte	0xb
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF312
	.byte	0xb
	.2byte	0x145
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF313
	.byte	0xb
	.2byte	0x146
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF314
	.byte	0xb
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF315
	.byte	0xb
	.2byte	0x148
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF316
	.byte	0xb
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF317
	.byte	0xb
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF318
	.byte	0xb
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0xb
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF319
	.byte	0xb
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x14f
	.4byte	0x11b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF320
	.byte	0xb
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xb
	.2byte	0x153
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x153
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF305
	.byte	0xb
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF321
	.byte	0xb
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF322
	.byte	0xb
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF323
	.byte	0xb
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF324
	.byte	0xb
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF325
	.byte	0xb
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF326
	.byte	0xb
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF327
	.byte	0xb
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0xb
	.2byte	0x15e
	.4byte	0x18c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF328
	.byte	0xb
	.2byte	0x15f
	.4byte	0x18c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF329
	.byte	0xb
	.2byte	0x160
	.4byte	0x1119
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF330
	.byte	0xb
	.2byte	0x161
	.4byte	0x18d8
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x18d8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x16d1
	.4byte	0x18e8
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF331
	.byte	0xb
	.2byte	0x162
	.4byte	0x16dd
	.uleb128 0x19
	.byte	0x4
	.byte	0xb
	.2byte	0x172
	.4byte	0x1916
	.uleb128 0x15
	.4byte	.LASF332
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF333
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF334
	.sleb128 2
	.uleb128 0x15
	.4byte	.LASF335
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF336
	.byte	0xb
	.2byte	0x172
	.4byte	0x18f4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15df
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1215
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14a2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15c2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x164d
	.4byte	0x1956
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14ee
	.uleb128 0x17
	.4byte	.LASF337
	.byte	0xb
	.2byte	0x1cb
	.4byte	0x7a4
	.uleb128 0x8
	.byte	0x10
	.byte	0xf
	.byte	0x16
	.4byte	0x198d
	.uleb128 0x9
	.4byte	.LASF256
	.byte	0xf
	.byte	0x18
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF257
	.byte	0xf
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF338
	.byte	0xf
	.byte	0x1a
	.4byte	0x1968
	.uleb128 0x1a
	.4byte	.LASF339
	.byte	0x14
	.byte	0xc
	.2byte	0x981
	.4byte	0x19c4
	.uleb128 0x11
	.4byte	.LASF340
	.byte	0xc
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0xc
	.2byte	0x985
	.4byte	0x19c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1998
	.uleb128 0x17
	.4byte	.LASF341
	.byte	0xc
	.2byte	0x987
	.4byte	0x1998
	.uleb128 0x1b
	.4byte	.LASF389
	.byte	0x4
	.byte	0xc
	.2byte	0x98d
	.4byte	0x1a14
	.uleb128 0x1c
	.4byte	.LASF342
	.byte	0xc
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF343
	.byte	0xc
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1c
	.4byte	.LASF344
	.byte	0xc
	.2byte	0x993
	.4byte	0x269
	.uleb128 0x1c
	.4byte	.LASF345
	.byte	0xc
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF346
	.byte	0xc
	.2byte	0x997
	.4byte	0x19d6
	.uleb128 0x10
	.4byte	.LASF347
	.2byte	0x890
	.byte	0xc
	.2byte	0x99d
	.4byte	0x1bd4
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xc
	.2byte	0x99f
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF348
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF349
	.byte	0xc
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF350
	.byte	0xc
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF351
	.byte	0xc
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF352
	.byte	0xc
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF353
	.byte	0xc
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0xc
	.2byte	0x9b1
	.4byte	0x1928
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.string	"vis"
	.byte	0xc
	.2byte	0x9b3
	.4byte	0x1bd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF354
	.byte	0xc
	.2byte	0x9b5
	.4byte	0x1bd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF355
	.byte	0xc
	.2byte	0x9b7
	.4byte	0x15d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF356
	.byte	0xc
	.2byte	0x9b9
	.4byte	0x1940
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF357
	.byte	0xc
	.2byte	0x9bb
	.4byte	0x1658
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF358
	.byte	0xc
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF359
	.byte	0xc
	.2byte	0x9bf
	.4byte	0x1be5
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF360
	.byte	0xc
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0xc
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF361
	.byte	0xc
	.2byte	0x9c5
	.4byte	0xe78
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF362
	.byte	0xc
	.2byte	0x9c7
	.4byte	0x19ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF363
	.byte	0xc
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0xc
	.2byte	0x9cb
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF364
	.byte	0xc
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF365
	.byte	0xc
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF366
	.byte	0xc
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF367
	.byte	0xc
	.2byte	0x9d3
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1be5
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a14
	.uleb128 0x17
	.4byte	.LASF368
	.byte	0xc
	.2byte	0x9d5
	.4byte	0x1a20
	.uleb128 0x12
	.4byte	.LASF369
	.4byte	0x1e864
	.byte	0xc
	.2byte	0x9db
	.4byte	0x1d31
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xc
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF370
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF371
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF372
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF373
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF374
	.byte	0xc
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xc
	.2byte	0x9e5
	.4byte	0xe78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF375
	.byte	0xc
	.2byte	0x9e7
	.4byte	0x1d31
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF376
	.byte	0xc
	.2byte	0x9e9
	.4byte	0x1d37
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF377
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF378
	.byte	0xc
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF379
	.byte	0xc
	.2byte	0x9f3
	.4byte	0x1d3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF380
	.byte	0xc
	.2byte	0x9f5
	.4byte	0x1d3d
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF381
	.byte	0xc
	.2byte	0x9f7
	.4byte	0x1d3d
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF199
	.byte	0xc
	.2byte	0x9f9
	.4byte	0x1d3d
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF382
	.byte	0xc
	.2byte	0x9fb
	.4byte	0x1d54
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF327
	.byte	0xc
	.2byte	0x9ff
	.4byte	0x1d65
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF319
	.byte	0xc
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18e8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1beb
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x1d54
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x1d65
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1d76
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF383
	.byte	0xc
	.2byte	0xa05
	.4byte	0x1bf7
	.uleb128 0xa
	.4byte	0x198d
	.4byte	0x1d93
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d76
	.uleb128 0x6
	.4byte	.LASF384
	.byte	0x10
	.byte	0x9
	.4byte	0x41
	.uleb128 0xc
	.4byte	.LASF385
	.byte	0x8
	.byte	0x10
	.byte	0x13
	.4byte	0x1dcd
	.uleb128 0x9
	.4byte	.LASF386
	.byte	0x10
	.byte	0x14
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF387
	.byte	0x10
	.byte	0x16
	.4byte	0x1dcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x1d99
	.4byte	0x1ddd
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF388
	.byte	0x10
	.byte	0x17
	.4byte	0x1da4
	.uleb128 0x1b
	.4byte	.LASF390
	.byte	0x4
	.byte	0x11
	.2byte	0x490
	.4byte	0x1e48
	.uleb128 0x1e
	.string	"U8"
	.byte	0x11
	.2byte	0x492
	.4byte	0x1e48
	.uleb128 0x1e
	.string	"S8"
	.byte	0x11
	.2byte	0x493
	.4byte	0x1e4d
	.uleb128 0x1e
	.string	"U16"
	.byte	0x11
	.2byte	0x494
	.4byte	0x1e52
	.uleb128 0x1e
	.string	"S16"
	.byte	0x11
	.2byte	0x495
	.4byte	0x1e57
	.uleb128 0x1e
	.string	"U32"
	.byte	0x11
	.2byte	0x496
	.4byte	0x1e5c
	.uleb128 0x1e
	.string	"S32"
	.byte	0x11
	.2byte	0x497
	.4byte	0x1e61
	.uleb128 0x1e
	.string	"F32"
	.byte	0x11
	.2byte	0x498
	.4byte	0x9a
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
	.uleb128 0x17
	.4byte	.LASF391
	.byte	0x11
	.2byte	0x499
	.4byte	0x1de8
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST0
	.4byte	0x1ecb
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x205
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x206
	.4byte	0x7a
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x206
	.4byte	0x7a
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x206
	.4byte	0x7a
	.4byte	.LLST4
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF395
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST5
	.4byte	0x1ef5
	.uleb128 0x23
	.4byte	.LASF396
	.byte	0x1
	.byte	0x77
	.4byte	0x1ef5
	.byte	0x4
	.byte	0x91
	.sleb128 -262184
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1f08
	.uleb128 0x24
	.4byte	0x48
	.4byte	0x3ffff
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF397
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST6
	.4byte	0x1f58
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x25
	.string	"m"
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LASF398
	.byte	0x1
	.byte	0x22
	.4byte	0xb1
	.4byte	.LLST10
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF399
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST11
	.4byte	0x1f9b
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4a
	.4byte	0x1f9b
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1fb7
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF400
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST14
	.4byte	0x1fde
	.uleb128 0x27
	.4byte	.LASF414
	.byte	0x1
	.byte	0xb9
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x11f
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST15
	.4byte	0x2143
	.uleb128 0x28
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x11f
	.4byte	0x41
	.4byte	.LLST16
	.uleb128 0x20
	.string	"top"
	.byte	0x1
	.2byte	0x121
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x21
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x121
	.4byte	0x41
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x122
	.4byte	0x2143
	.byte	0x3
	.byte	0x91
	.sleb128 -1376
	.uleb128 0x29
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x123
	.4byte	0x2153
	.byte	0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x124
	.4byte	0x48
	.4byte	.LLST19
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x124
	.4byte	0x48
	.4byte	.LLST20
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.2byte	0x124
	.4byte	0x48
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x125
	.4byte	0x2163
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x126
	.4byte	0x2169
	.4byte	.LLST23
	.uleb128 0x21
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x127
	.4byte	0x1d31
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x128
	.4byte	0xb1
	.4byte	.LLST25
	.uleb128 0x29
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x129
	.4byte	0x216f
	.byte	0x5
	.byte	0x3
	.4byte	pixels.14968
	.uleb128 0x2a
	.string	"out"
	.byte	0x1
	.2byte	0x129
	.4byte	0x2182
	.byte	0x5
	.byte	0x3
	.4byte	out.14969
	.uleb128 0x21
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x12a
	.4byte	0x48
	.4byte	.LLST26
	.uleb128 0x21
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x12a
	.4byte	0x48
	.4byte	.LLST27
	.uleb128 0x21
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x12b
	.4byte	0x41
	.4byte	.LLST28
	.uleb128 0x21
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x12b
	.4byte	0x41
	.4byte	.LLST29
	.uleb128 0x21
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb1
	.4byte	.LLST30
	.uleb128 0x21
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x12d
	.4byte	0x48
	.4byte	.LLST31
	.uleb128 0x2b
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x12d
	.4byte	0x48
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x2153
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x2163
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x195c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ddd
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x2182
	.uleb128 0x24
	.4byte	0x48
	.4byte	0x1ffff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x1bd
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST32
	.4byte	0x21b1
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x41
	.4byte	.LLST33
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x21b
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x27
	.4byte	.LASF415
	.byte	0x4
	.byte	0x3a
	.4byte	0x2153
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF416
	.byte	0xc
	.2byte	0x23f
	.4byte	0xd86
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF417
	.byte	0xc
	.2byte	0x243
	.4byte	0x14ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"cl"
	.byte	0xd
	.2byte	0x11b
	.4byte	0x1195
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xc11
	.4byte	0x220d
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF418
	.byte	0xd
	.2byte	0x11f
	.4byte	0x21fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF419
	.byte	0xc
	.byte	0xb4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"glx"
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"gly"
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF420
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF421
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF422
	.byte	0xc
	.2byte	0x213
	.4byte	0xc11
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF423
	.byte	0xc
	.2byte	0x219
	.4byte	0xe78
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF424
	.byte	0xc
	.2byte	0x241
	.4byte	0x1928
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x2296
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF425
	.byte	0xc
	.2byte	0x245
	.4byte	0x2286
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF426
	.byte	0xc
	.2byte	0x249
	.4byte	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF427
	.byte	0xc
	.2byte	0x24f
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF428
	.byte	0xc
	.2byte	0x259
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF429
	.byte	0xc
	.2byte	0x25b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF430
	.byte	0xc
	.2byte	0x25d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF431
	.byte	0xc
	.2byte	0x265
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF432
	.byte	0xc
	.2byte	0x269
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF433
	.byte	0xc
	.2byte	0x26b
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF434
	.byte	0xc
	.2byte	0x26f
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF435
	.byte	0xc
	.2byte	0x273
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF436
	.byte	0xc
	.2byte	0x275
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF437
	.byte	0xc
	.2byte	0x277
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF438
	.byte	0xc
	.2byte	0x27b
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF439
	.byte	0xc
	.2byte	0x27d
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF440
	.byte	0xc
	.2byte	0x27f
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF441
	.byte	0xc
	.2byte	0x283
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF442
	.byte	0xc
	.2byte	0x285
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF443
	.byte	0xc
	.2byte	0x28b
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF444
	.byte	0xc
	.2byte	0x28d
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF445
	.byte	0xc
	.2byte	0x28f
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF446
	.byte	0xc
	.2byte	0x293
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF447
	.byte	0xc
	.2byte	0x295
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF448
	.byte	0xc
	.2byte	0x297
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF449
	.byte	0xc
	.2byte	0x299
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF450
	.byte	0xc
	.2byte	0x29f
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF451
	.byte	0xc
	.2byte	0x2a1
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF452
	.byte	0xc
	.2byte	0x2a5
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF453
	.byte	0xc
	.2byte	0x2a7
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF454
	.byte	0xc
	.2byte	0x2ab
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF455
	.byte	0xc
	.2byte	0x2ad
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF456
	.byte	0xc
	.2byte	0x2b1
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF457
	.byte	0xc
	.2byte	0x2b3
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF458
	.byte	0xc
	.2byte	0x2b5
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF459
	.byte	0xc
	.2byte	0x2b7
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF460
	.byte	0xc
	.2byte	0x2b9
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF461
	.byte	0xc
	.2byte	0x2bb
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF462
	.byte	0xc
	.2byte	0x2bd
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF463
	.byte	0xc
	.2byte	0x2bf
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF464
	.byte	0xc
	.2byte	0x2c1
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF465
	.byte	0xc
	.2byte	0x2c3
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x2c5
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF467
	.byte	0xc
	.2byte	0x2c7
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x2c9
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF469
	.byte	0xc
	.2byte	0x2cb
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF470
	.byte	0xc
	.2byte	0x2cd
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF471
	.byte	0xc
	.2byte	0x2cf
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF472
	.byte	0xc
	.2byte	0x2d1
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x2d3
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF474
	.byte	0xc
	.2byte	0x2d5
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF475
	.byte	0xc
	.2byte	0x2d7
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF476
	.byte	0xc
	.2byte	0x2dc
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF477
	.byte	0xc
	.2byte	0x2de
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF478
	.byte	0xc
	.2byte	0x2e0
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF479
	.byte	0xc
	.2byte	0x2e2
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF480
	.byte	0xc
	.2byte	0x2e4
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF481
	.byte	0xc
	.2byte	0x2e6
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF482
	.byte	0xc
	.2byte	0x2e8
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF483
	.byte	0xc
	.2byte	0x2ea
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF484
	.byte	0xc
	.2byte	0x2f0
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF485
	.byte	0xc
	.2byte	0x2fa
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF486
	.byte	0xc
	.2byte	0x2fc
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF487
	.byte	0xc
	.2byte	0x2fe
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x300
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF489
	.byte	0xc
	.2byte	0x302
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x304
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF491
	.byte	0xc
	.2byte	0x306
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF492
	.byte	0xc
	.2byte	0x308
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF493
	.byte	0xc
	.2byte	0x30a
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF494
	.byte	0xc
	.2byte	0x30c
	.4byte	0x3b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF495
	.byte	0xc
	.2byte	0x312
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF496
	.byte	0xc
	.2byte	0xa77
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF497
	.byte	0xc
	.2byte	0xa79
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF498
	.byte	0xc
	.2byte	0xc2c
	.4byte	0x15d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x2d
	.4byte	.LASF499
	.byte	0xc
	.2byte	0xc34
	.4byte	0x3ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF500
	.byte	0xc
	.2byte	0xc36
	.4byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF501
	.byte	0x11
	.2byte	0x548
	.4byte	0x26d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	0x26d6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e66
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x26f2
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x32
	.4byte	.LASF502
	.byte	0x1
	.byte	0x3b
	.4byte	0x26dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dottexture
	.uleb128 0x27
	.4byte	.LASF414
	.byte	0x1
	.byte	0xb9
	.4byte	0x3b2
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
	.uleb128 0x9
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x14
	.uleb128 0x4
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
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
	.uleb128 0x29
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 262192
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 288
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1392
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1392
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-1-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 160
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 52
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF464:
	.string	"sh_debuginfo"
.LASF424:
	.string	"r_viewleaf"
.LASF47:
	.string	"pflags"
.LASF339:
	.string	"screenrect_s"
.LASF341:
	.string	"screenrect_t"
.LASF172:
	.string	"aliasvrectbottom"
.LASF286:
	.string	"vecs"
.LASF195:
	.string	"upmove"
.LASF260:
	.string	"texture_s"
.LASF283:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF75:
	.string	"entity_s"
.LASF166:
	.string	"entity_t"
.LASF376:
	.string	"lastlight"
.LASF462:
	.string	"sh_glows"
.LASF121:
	.string	"numplanes"
.LASF91:
	.string	"frame_start_time"
.LASF86:
	.string	"lightTimestamp"
.LASF325:
	.string	"binormals"
.LASF268:
	.string	"alternate_anims"
.LASF251:
	.string	"lightnormalindex"
.LASF184:
	.string	"horizontalFieldOfView"
.LASF282:
	.string	"samples"
.LASF216:
	.string	"idealpitch"
.LASF157:
	.string	"lastshadowonly"
.LASF300:
	.string	"lastclipnode"
.LASF63:
	.string	"entnext"
.LASF90:
	.string	"topnode"
.LASF254:
	.string	"mvertex_t"
.LASF435:
	.string	"r_fullbright"
.LASF55:
	.string	"next"
.LASF338:
	.string	"plane_t"
.LASF160:
	.string	"vertices"
.LASF104:
	.string	"angles1"
.LASF105:
	.string	"angles2"
.LASF169:
	.string	"vrectright"
.LASF236:
	.string	"maxclients"
.LASF365:
	.string	"cubescale"
.LASF28:
	.string	"height"
.LASF361:
	.string	"owner"
.LASF412:
	.string	"frac"
.LASF279:
	.string	"styles"
.LASF323:
	.string	"commands"
.LASF97:
	.string	"brushlightinstant"
.LASF439:
	.string	"r_dynamic"
.LASF221:
	.string	"viewheight"
.LASF350:
	.string	"visible"
.LASF107:
	.string	"model_s"
.LASF337:
	.string	"model_t"
.LASF288:
	.string	"texture"
.LASF471:
	.string	"sh_bumpmaps"
.LASF402:
	.string	"bottom"
.LASF139:
	.string	"hulls"
.LASF69:
	.string	"compressed_vis"
.LASF360:
	.string	"numVisSurf"
.LASF132:
	.string	"numsurfaces"
.LASF237:
	.string	"gametype"
.LASF445:
	.string	"gl_polyblend"
.LASF432:
	.string	"r_norefresh"
.LASF35:
	.string	"vec_t"
.LASF118:
	.string	"nummodelsurfaces"
.LASF488:
	.string	"gl_wireframe"
.LASF164:
	.string	"triplanes"
.LASF234:
	.string	"levelname"
.LASF183:
	.string	"fvrectbottom"
.LASF289:
	.string	"mtexinfo_t"
.LASF168:
	.string	"aliasvrect"
.LASF13:
	.string	"byte"
.LASF347:
	.string	"shadowlight_s"
.LASF368:
	.string	"shadowlight_t"
.LASF291:
	.string	"chain"
.LASF73:
	.string	"index"
.LASF497:
	.string	"numStaticShadowLights"
.LASF76:
	.string	"forcelink"
.LASF398:
	.string	"dest"
.LASF37:
	.string	"angles"
.LASF314:
	.string	"boundingradius"
.LASF74:
	.string	"ambient_sound_level"
.LASF133:
	.string	"surfaces"
.LASF111:
	.string	"synctype"
.LASF96:
	.string	"aliasframeinstant"
.LASF482:
	.string	"gl_truform_tesselation"
.LASF220:
	.string	"laststop"
.LASF125:
	.string	"vertexes"
.LASF468:
	.string	"sh_infinitevolumes"
.LASF196:
	.string	"usercmd_t"
.LASF100:
	.string	"translate_start_time"
.LASF373:
	.string	"lastvorg"
.LASF177:
	.string	"fvrecty_adj"
.LASF466:
	.string	"sh_nosvbsp"
.LASF46:
	.string	"light_lev"
.LASF17:
	.string	"maxs"
.LASF109:
	.string	"type"
.LASF331:
	.string	"aliashdr_t"
.LASF129:
	.string	"nodes"
.LASF406:
	.string	"pixels"
.LASF262:
	.string	"gl_lumitex"
.LASF496:
	.string	"numShadowLights"
.LASF62:
	.string	"entity"
.LASF176:
	.string	"fvrectx_adj"
.LASF422:
	.string	"r_worldentity"
.LASF500:
	.string	"skybox_cloudspeed"
.LASF215:
	.string	"punchangle"
.LASF416:
	.string	"r_refdef"
.LASF270:
	.string	"msurface_s"
.LASF296:
	.string	"msurface_t"
.LASF84:
	.string	"syncbase"
.LASF171:
	.string	"aliasvrectright"
.LASF192:
	.string	"refdef_t"
.LASF393:
	.string	"stop"
.LASF235:
	.string	"viewentity"
.LASF491:
	.string	"fog_b"
.LASF180:
	.string	"fvrectright_adj"
.LASF366:
	.string	"haloalpha"
.LASF147:
	.string	"firstsurface"
.LASF352:
	.string	"castShadow"
.LASF498:
	.string	"causticschain"
.LASF146:
	.string	"plane"
.LASF151:
	.string	"updateframe"
.LASF93:
	.string	"blend"
.LASF204:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF181:
	.string	"fvrectbottom_adj"
.LASF453:
	.string	"gl_playermip"
.LASF426:
	.string	"envmap"
.LASF155:
	.string	"lastblend"
.LASF362:
	.string	"scizz"
.LASF383:
	.string	"aliaslightinstant_t"
.LASF10:
	.string	"float"
.LASF41:
	.string	"skin"
.LASF441:
	.string	"gl_clear"
.LASF381:
	.string	"tshalfangles"
.LASF22:
	.string	"numfaces"
.LASF407:
	.string	"scaled_width"
.LASF502:
	.string	"dottexture"
.LASF274:
	.string	"light_s"
.LASF275:
	.string	"light_t"
.LASF336:
	.string	"modtype_t"
.LASF327:
	.string	"indecies"
.LASF209:
	.string	"faceanimtime"
.LASF94:
	.string	"pose1"
.LASF95:
	.string	"pose2"
.LASF357:
	.string	"volumeVerts"
.LASF409:
	.string	"inwidth"
.LASF153:
	.string	"lastpose1"
.LASF154:
	.string	"lastpose2"
.LASF427:
	.string	"particletexture"
.LASF207:
	.string	"items"
.LASF387:
	.string	"ofsSurfaces"
.LASF354:
	.string	"entvis"
.LASF302:
	.string	"clip_maxs"
.LASF280:
	.string	"cached_light"
.LASF290:
	.string	"glpoly_s"
.LASF295:
	.string	"glpoly_t"
.LASF20:
	.string	"visleafs"
.LASF440:
	.string	"r_novis"
.LASF230:
	.string	"oldtime"
.LASF114:
	.string	"clipbox"
.LASF340:
	.string	"coords"
.LASF65:
	.string	"contents"
.LASF239:
	.string	"free_efrags"
.LASF417:
	.string	"r_notexture_mip"
.LASF433:
	.string	"r_drawentities"
.LASF83:
	.string	"efrag"
.LASF329:
	.string	"texels"
.LASF158:
	.string	"lastpaliashdr"
.LASF320:
	.string	"size"
.LASF425:
	.string	"d_lightstylevalue"
.LASF419:
	.string	"texture_extension_number"
.LASF470:
	.string	"sh_nocleversave"
.LASF189:
	.string	"fov_x"
.LASF190:
	.string	"fov_y"
.LASF38:
	.string	"modelindex"
.LASF101:
	.string	"origin1"
.LASF328:
	.string	"gl_lumatex"
.LASF148:
	.string	"aliasframeinstant_s"
.LASF266:
	.string	"anim_max"
.LASF394:
	.string	"R_TimeRefresh_f"
.LASF238:
	.string	"worldmodel"
.LASF371:
	.string	"lastlorg"
.LASF479:
	.string	"fog_waterfog"
.LASF413:
	.string	"R_NewMap"
.LASF309:
	.string	"maliasframedesc_t"
.LASF127:
	.string	"edges"
.LASF152:
	.string	"paliashdr"
.LASF478:
	.string	"sh_noshadowpopping"
.LASF77:
	.string	"update_type"
.LASF313:
	.string	"scale_origin"
.LASF87:
	.string	"dlightframe"
.LASF173:
	.string	"vrectrightedge"
.LASF463:
	.string	"sh_fps"
.LASF269:
	.string	"offsets"
.LASF21:
	.string	"firstface"
.LASF102:
	.string	"origin2"
.LASF410:
	.string	"inheight"
.LASF224:
	.string	"onground"
.LASF504:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_rmisc.c"
.LASF382:
	.string	"triangleVis"
.LASF457:
	.string	"sh_radiusscale"
.LASF156:
	.string	"lastent"
.LASF92:
	.string	"frame_interval"
.LASF218:
	.string	"nodrift"
.LASF494:
	.string	"fog_enabled"
.LASF212:
	.string	"mviewangles"
.LASF458:
	.string	"sh_visiblevolumes"
.LASF138:
	.string	"marksurfaces"
.LASF250:
	.string	"synctype_t"
.LASF452:
	.string	"gl_max_size"
.LASF108:
	.string	"needload"
.LASF351:
	.string	"isStatic"
.LASF330:
	.string	"frames"
.LASF278:
	.string	"lightmaptexturenum"
.LASF487:
	.string	"mir_distance"
.LASF355:
	.string	"visSurf"
.LASF54:
	.string	"value"
.LASF263:
	.string	"texturechain"
.LASF89:
	.string	"trivial_accept"
.LASF395:
	.string	"R_Envmap_f"
.LASF149:
	.string	"_next"
.LASF429:
	.string	"particletexture_dirblood"
.LASF420:
	.string	"glwidth"
.LASF277:
	.string	"shadowchain"
.LASF467:
	.string	"sh_noeclip"
.LASF455:
	.string	"gl_calcdepth"
.LASF299:
	.string	"firstclipnode"
.LASF456:
	.string	"sh_lightmapbright"
.LASF465:
	.string	"sh_norevis"
.LASF272:
	.string	"texturemins"
.LASF484:
	.string	"mir_detail"
.LASF405:
	.string	"original"
.LASF85:
	.string	"skinnum"
.LASF454:
	.string	"gl_watershader"
.LASF182:
	.string	"fvrectright"
.LASF469:
	.string	"sh_noscissor"
.LASF434:
	.string	"r_drawviewmodel"
.LASF508:
	.string	"D_FlushCaches"
.LASF265:
	.string	"anim_min"
.LASF397:
	.string	"R_InitTextures"
.LASF446:
	.string	"gl_reporttjunctions"
.LASF123:
	.string	"leafs"
.LASF232:
	.string	"model_precache"
.LASF241:
	.string	"num_statics"
.LASF19:
	.string	"headnode"
.LASF115:
	.string	"clipmins"
.LASF483:
	.string	"gl_transformlerp"
.LASF223:
	.string	"paused"
.LASF324:
	.string	"triangles"
.LASF14:
	.string	"qboolean"
.LASF191:
	.string	"ambientlight"
.LASF50:
	.string	"name"
.LASF308:
	.string	"bboxmax"
.LASF403:
	.string	"translate"
.LASF501:
	.string	"wgPipe"
.LASF64:
	.string	"mleaf_s"
.LASF298:
	.string	"mleaf_t"
.LASF461:
	.string	"sh_showlightnum"
.LASF81:
	.string	"msg_angles"
.LASF356:
	.string	"volumeCmds"
.LASF205:
	.string	"movemessages"
.LASF222:
	.string	"crouch"
.LASF245:
	.string	"scores"
.LASF136:
	.string	"numclipnodes"
.LASF495:
	.string	"mirrortexturenum"
.LASF450:
	.string	"gl_solid_format"
.LASF428:
	.string	"particletexture_blood"
.LASF185:
	.string	"xOrigin"
.LASF375:
	.string	"lasthdr"
.LASF477:
	.string	"sh_showtangent"
.LASF31:
	.string	"vrect_s"
.LASF30:
	.string	"vrect_t"
.LASF492:
	.string	"fog_start"
.LASF3:
	.string	"short unsigned int"
.LASF233:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF194:
	.string	"sidemove"
.LASF119:
	.string	"numsubmodels"
.LASF380:
	.string	"tslights"
.LASF392:
	.string	"start"
.LASF255:
	.string	"mplane_s"
.LASF259:
	.string	"mplane_t"
.LASF442:
	.string	"gl_cull"
.LASF485:
	.string	"mir_frameskip"
.LASF257:
	.string	"dist"
.LASF163:
	.string	"binomials"
.LASF252:
	.string	"trivertx_t"
.LASF134:
	.string	"numsurfedges"
.LASF36:
	.string	"vec3_t"
.LASF326:
	.string	"texcoords"
.LASF203:
	.string	"percent"
.LASF140:
	.string	"numtextures"
.LASF61:
	.string	"leafnext"
.LASF71:
	.string	"firstmarksurface"
.LASF486:
	.string	"mir_forcewater"
.LASF24:
	.string	"planenum"
.LASF227:
	.string	"completed_time"
.LASF281:
	.string	"cached_dlight"
.LASF449:
	.string	"gl_doubleeyes"
.LASF206:
	.string	"stats"
.LASF332:
	.string	"mod_brush"
.LASF391:
	.string	"WGPipe"
.LASF310:
	.string	"ident"
.LASF315:
	.string	"eyeposition"
.LASF271:
	.string	"firstedge"
.LASF144:
	.string	"entities"
.LASF219:
	.string	"driftmove"
.LASF346:
	.string	"lightcmd_t"
.LASF389:
	.string	"lightcmd_u"
.LASF79:
	.string	"msgtime"
.LASF353:
	.string	"halo"
.LASF372:
	.string	"lasteangles"
.LASF436:
	.string	"r_lightmap"
.LASF342:
	.string	"asInt"
.LASF229:
	.string	"time"
.LASF128:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF188:
	.string	"viewangles"
.LASF141:
	.string	"textures"
.LASF48:
	.string	"entity_state_t"
.LASF231:
	.string	"last_received_message"
.LASF438:
	.string	"r_wateralpha"
.LASF307:
	.string	"bboxmin"
.LASF431:
	.string	"skytexturenum"
.LASF193:
	.string	"forwardmove"
.LASF377:
	.string	"lightpos"
.LASF72:
	.string	"nummarksurfaces"
.LASF213:
	.string	"mvelocity"
.LASF401:
	.string	"R_TranslatePlayerSkin"
.LASF306:
	.string	"interval"
.LASF363:
	.string	"filtercube"
.LASF386:
	.string	"numSurfaces"
.LASF67:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF214:
	.string	"velocity"
.LASF240:
	.string	"num_entities"
.LASF110:
	.string	"numframes"
.LASF253:
	.string	"position"
.LASF167:
	.string	"vrect"
.LASF7:
	.string	"long unsigned int"
.LASF243:
	.string	"cdtrack"
.LASF367:
	.string	"oldlightorigin"
.LASF162:
	.string	"tangents"
.LASF49:
	.string	"cvar_s"
.LASF56:
	.string	"cvar_t"
.LASF390:
	.string	"_wgpipe"
.LASF411:
	.string	"inrow"
.LASF284:
	.string	"cachededgeoffset"
.LASF8:
	.string	"char"
.LASF124:
	.string	"numvertexes"
.LASF333:
	.string	"mod_sprite"
.LASF178:
	.string	"vrect_x_adj_shift20"
.LASF348:
	.string	"baseColor"
.LASF305:
	.string	"numposes"
.LASF415:
	.string	"d_8to24table"
.LASF273:
	.string	"extents"
.LASF404:
	.string	"translate32"
.LASF159:
	.string	"shadowonly"
.LASF499:
	.string	"skybox_name"
.LASF43:
	.string	"color"
.LASF294:
	.string	"firstvertex"
.LASF88:
	.string	"dlightbits"
.LASF418:
	.string	"cl_entities"
.LASF344:
	.string	"asVec"
.LASF57:
	.string	"sfx_s"
.LASF161:
	.string	"normals"
.LASF317:
	.string	"skinwidth"
.LASF32:
	.string	"cache_user_s"
.LASF34:
	.string	"cache_user_t"
.LASF150:
	.string	"lockframe"
.LASF264:
	.string	"anim_total"
.LASF52:
	.string	"archive"
.LASF225:
	.string	"inwater"
.LASF472:
	.string	"sh_colormaps"
.LASF142:
	.string	"visdata"
.LASF60:
	.string	"leaf"
.LASF400:
	.string	"R_Init"
.LASF321:
	.string	"poseverts"
.LASF244:
	.string	"looptrack"
.LASF349:
	.string	"brightness"
.LASF480:
	.string	"gl_caustics"
.LASF318:
	.string	"skinheight"
.LASF481:
	.string	"gl_truform"
.LASF246:
	.string	"server_proto_version"
.LASF200:
	.string	"translations"
.LASF186:
	.string	"yOrigin"
.LASF226:
	.string	"intermission"
.LASF179:
	.string	"vrectright_adj_shift20"
.LASF70:
	.string	"efrags"
.LASF59:
	.string	"efrag_s"
.LASF106:
	.string	"efrag_t"
.LASF399:
	.string	"R_InitParticleTexture"
.LASF396:
	.string	"buffer"
.LASF475:
	.string	"sh_glares"
.LASF29:
	.string	"pnext"
.LASF25:
	.string	"children"
.LASF45:
	.string	"style"
.LASF444:
	.string	"gl_affinemodels"
.LASF9:
	.string	"double"
.LASF248:
	.string	"ST_SYNC"
.LASF364:
	.string	"rspeed"
.LASF130:
	.string	"numtexinfo"
.LASF202:
	.string	"destcolor"
.LASF359:
	.string	"lightCmds"
.LASF126:
	.string	"numedges"
.LASF165:
	.string	"lightinstant"
.LASF443:
	.string	"gl_smoothmodels"
.LASF217:
	.string	"pitchvel"
.LASF451:
	.string	"gl_alpha_format"
.LASF261:
	.string	"gl_texturenum"
.LASF493:
	.string	"fog_end"
.LASF312:
	.string	"scale"
.LASF285:
	.string	"medge_t"
.LASF459:
	.string	"sh_entityshadows"
.LASF143:
	.string	"lightdata"
.LASF170:
	.string	"vrectbottom"
.LASF40:
	.string	"colormap"
.LASF33:
	.string	"data"
.LASF343:
	.string	"asFloat"
.LASF242:
	.string	"viewent"
.LASF66:
	.string	"visframe"
.LASF267:
	.string	"anim_next"
.LASF199:
	.string	"colors"
.LASF293:
	.string	"neighbours"
.LASF174:
	.string	"fvrectx"
.LASF175:
	.string	"fvrecty"
.LASF122:
	.string	"planes"
.LASF507:
	.string	"fracstep"
.LASF27:
	.string	"width"
.LASF16:
	.string	"mins"
.LASF256:
	.string	"normal"
.LASF423:
	.string	"currententity"
.LASF460:
	.string	"sh_worldshadows"
.LASF80:
	.string	"msg_origins"
.LASF187:
	.string	"vieworg"
.LASF208:
	.string	"item_gettime"
.LASF505:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF304:
	.string	"firstpose"
.LASF26:
	.string	"dclipnode_t"
.LASF258:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF68:
	.string	"parent"
.LASF379:
	.string	"extvertices"
.LASF506:
	.string	"playernum"
.LASF210:
	.string	"cshifts"
.LASF287:
	.string	"mipadjust"
.LASF473:
	.string	"sh_playershadow"
.LASF414:
	.string	"gl_finish"
.LASF116:
	.string	"clipmaxs"
.LASF316:
	.string	"numskins"
.LASF42:
	.string	"effects"
.LASF358:
	.string	"numVolumeVerts"
.LASF197:
	.string	"entertime"
.LASF303:
	.string	"hull_t"
.LASF345:
	.string	"asVoid"
.LASF98:
	.string	"numleafs"
.LASF490:
	.string	"fog_g"
.LASF198:
	.string	"frags"
.LASF437:
	.string	"r_shadows"
.LASF82:
	.string	"model"
.LASF489:
	.string	"fog_r"
.LASF44:
	.string	"alpha"
.LASF292:
	.string	"numverts"
.LASF301:
	.string	"clip_mins"
.LASF319:
	.string	"numtris"
.LASF5:
	.string	"long long int"
.LASF384:
	.string	"aliasoffset_t"
.LASF385:
	.string	"alias3data_s"
.LASF388:
	.string	"alias3data_t"
.LASF476:
	.string	"sh_noefrags"
.LASF51:
	.string	"string"
.LASF374:
	.string	"lastlradius"
.LASF228:
	.string	"mtime"
.LASF378:
	.string	"lastframeinstant"
.LASF334:
	.string	"mod_alias"
.LASF78:
	.string	"baseline"
.LASF421:
	.string	"glheight"
.LASF335:
	.string	"mod_alias3"
.LASF131:
	.string	"texinfo"
.LASF447:
	.string	"gl_flashblend"
.LASF137:
	.string	"clipnodes"
.LASF99:
	.string	"leafnums"
.LASF276:
	.string	"polys"
.LASF23:
	.string	"dmodel_t"
.LASF117:
	.string	"firstmodelsurface"
.LASF408:
	.string	"scaled_height"
.LASF247:
	.string	"client_state_t"
.LASF120:
	.string	"submodels"
.LASF18:
	.string	"origin"
.LASF58:
	.string	"cache"
.LASF503:
	.string	"GNU C 4.6.3"
.LASF311:
	.string	"version"
.LASF135:
	.string	"surfedges"
.LASF249:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF145:
	.string	"mnode_s"
.LASF297:
	.string	"mnode_t"
.LASF474:
	.string	"sh_nocache"
.LASF211:
	.string	"prev_cshifts"
.LASF2:
	.string	"short int"
.LASF430:
	.string	"playertextures"
.LASF53:
	.string	"server"
.LASF39:
	.string	"frame"
.LASF370:
	.string	"lasteorg"
.LASF322:
	.string	"posedata"
.LASF201:
	.string	"scoreboard_t"
.LASF448:
	.string	"gl_nocolors"
.LASF112:
	.string	"flags"
.LASF103:
	.string	"rotate_start_time"
.LASF113:
	.string	"radius"
.LASF369:
	.string	"aliaslightinstant_s"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
