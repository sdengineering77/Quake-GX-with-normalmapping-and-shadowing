	.file	"r_part.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl DefaultEffect
	.type	DefaultEffect, @function
DefaultEffect:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/r_part.c"
	.loc 1 69 0
	.cfi_startproc
.LVL0:
	.loc 1 73 0
	lis 11,.LC0@ha
	la 9,.LC0@l(11)
	lwz 10,.LC0@l(11)
	lbz 0,6(9)
	lhz 11,4(9)
	.loc 1 75 0
	lis 9,.LC1@ha
	lwz 6,.LC1@l(9)
	.loc 1 76 0
	lis 9,.LC2@ha
	lwz 7,.LC2@l(9)
	.loc 1 77 0
	lis 9,.LC3@ha
	.loc 1 73 0
	stw 10,0(3)
	.loc 1 81 0
	li 10,0
	.loc 1 73 0
	sth 11,4(3)
	li 11,3
	stb 0,6(3)
.LVL1:
	.loc 1 77 0
	lwz 0,.LC3@l(9)
	.loc 1 73 0
	mr 9,3
.LVL2:
.L2:
	.loc 1 74 0 discriminator 2
	addic. 11,11,-1
	.loc 1 75 0 discriminator 2
	stw 6,64(9)
	.loc 1 76 0 discriminator 2
	stw 7,76(9)
	.loc 1 81 0 discriminator 2
	li 8,0
	.loc 1 77 0 discriminator 2
	stw 0,128(9)
	.loc 1 78 0 discriminator 2
	stw 0,116(9)
	.loc 1 79 0 discriminator 2
	stw 0,104(9)
	.loc 1 80 0 discriminator 2
	stw 0,92(9)
	.loc 1 81 0 discriminator 2
	stw 10,176(9)
	.loc 1 82 0 discriminator 2
	stw 10,152(9)
	.loc 1 83 0 discriminator 2
	stw 10,140(9)
	.loc 1 84 0 discriminator 2
	stw 0,212(9)
	addi 9,9,4
	.loc 1 74 0 discriminator 2
	bne+ 0,.L2
	.loc 1 94 0
	lis 9,.LC4@ha
	.loc 1 87 0
	stw 11,88(3)
	.loc 1 94 0
	lwz 10,.LC4@l(9)
	.loc 1 96 0
	li 9,1
	.loc 1 88 0
	stw 0,164(3)
	.loc 1 105 0
	.loc 1 89 0
	stw 0,168(3)
	.loc 1 90 0
	stw 8,188(3)
	.loc 1 91 0
	stw 8,192(3)
	.loc 1 92 0
	stw 8,196(3)
	.loc 1 93 0
	stw 8,200(3)
	.loc 1 94 0
	stw 10,204(3)
	.loc 1 95 0
	stw 10,208(3)
	.loc 1 96 0
	stw 9,224(3)
	.loc 1 97 0
	stw 9,228(3)
	.loc 1 98 0
	stw 9,232(3)
	.loc 1 99 0
	stw 11,236(3)
	.loc 1 100 0
	stw 11,240(3)
	.loc 1 101 0
	stw 11,256(3)
	.loc 1 102 0
	stw 8,244(3)
	.loc 1 103 0
	stw 11,252(3)
	.loc 1 104 0
	stb 11,248(3)
	.loc 1 105 0
	blr
	.cfi_endproc
.LFE38:
	.size	DefaultEffect, .-DefaultEffect
	.align 2
	.globl R_InitParticleEffects
	.type	R_InitParticleEffects, @function
R_InitParticleEffects:
.LFB40:
	.loc 1 279 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 283 0
	lis 3,.LC5@ha
	lis 4,.LC6@ha
	lis 5,R_AddEffectsScript@ha
	.loc 1 281 0
	lis 9,particleEffects@ha
	.loc 1 279 0
	stw 0,12(1)
	.loc 1 283 0
	la 3,.LC5@l(3)
	.loc 1 281 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 283 0
	la 4,.LC6@l(4)
	la 5,R_AddEffectsScript@l(5)
	.loc 1 281 0
	stw 0,particleEffects@l(9)
	.loc 1 283 0
	bl COM_FindAllExt
	.loc 1 284 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE40:
	.size	R_InitParticleEffects, .-R_InitParticleEffects
	.align 2
	.globl ParticleEffectDefinedForName
	.type	ParticleEffectDefinedForName, @function
ParticleEffectDefinedForName:
.LFB41:
	.loc 1 286 0
	.cfi_startproc
.LVL3:
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.loc 1 290 0
	lis 9,particleEffects@ha
	.loc 1 286 0
	mflr 0
	stw 31,12(1)
	.loc 1 290 0
	lwz 31,particleEffects@l(9)
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL4:
	.loc 1 286 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 292 0
	cmpwi 7,31,0
	.loc 1 286 0
	stw 0,20(1)
	.loc 1 292 0
	bne+ 7,.L9
	.cfi_offset 65, 4
	b .L7
.LVL5:
.L11:
	.loc 1 296 0
	lwz 31,256(31)
.LVL6:
	.loc 1 292 0
	cmpwi 7,31,0
	beq- 7,.L7
.L9:
	.loc 1 293 0
	mr 3,31
	mr 4,30
	bl strcmp
	cmpwi 7,3,0
	bne+ 7,.L11
.L7:
	.loc 1 299 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL7:
	mtlr 0
	lwz 31,12(1)
.LVL8:
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE41:
	.size	ParticleEffectDefinedForName, .-ParticleEffectDefinedForName
	.align 2
	.globl ParticleEffectForName
	.type	ParticleEffectForName, @function
ParticleEffectForName:
.LFB42:
	.loc 1 301 0
	.cfi_startproc
.LVL9:
	mflr 0
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 305 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl ParticleEffectDefinedForName
.LVL10:
	.loc 1 306 0
	mr. 31,3
	beq- 0,.L14
	.loc 1 308 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL11:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL12:
.L14:
.LCFI6:
	.cfi_restore_state
	.loc 1 306 0 discriminator 1
	lis 3,.LC7@ha
.LVL13:
	mr 4,30
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 308 0 discriminator 1
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL14:
	mtlr 0
	lwz 31,12(1)
.LVL15:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE42:
	.size	ParticleEffectForName, .-ParticleEffectForName
	.align 2
	.globl R_AddEffectsScript
	.type	R_AddEffectsScript, @function
R_AddEffectsScript:
.LFB39:
	.loc 1 115 0
	.cfi_startproc
.LVL16:
	mflr 0
	stwu 1,-56(1)
.LCFI8:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 30,48(1)
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 0,60(1)
	stw 21,12(1)
	stw 22,16(1)
	stw 23,20(1)
	stw 24,24(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	.loc 1 123 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 65, 4
	bl COM_LoadTempFile
.LVL17:
	.loc 1 125 0
	mr. 30,3
	beq- 0,.L63
	.loc 1 130 0
	bl strlen
.LVL18:
	.loc 1 272 0
	lis 27,.LC21@ha
	.loc 1 130 0
	mr 4,3
	mr 3,30
	bl SC_Start
	.loc 1 132 0
	lis 3,.LC9@ha
	mr 4,31
	la 3,.LC9@l(3)
	.loc 1 264 0
	lis 25,.LC20@ha
	.loc 1 261 0
	lis 21,.LC19@ha
	.loc 1 244 0
	lis 26,.LC15@ha
	.loc 1 246 0
	lis 23,.LC16@ha
	.loc 1 250 0
	lis 22,.LC17@ha
	.loc 1 132 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 121 0
	li 29,0
	.loc 1 117 0
	li 31,0
.LVL19:
	.loc 1 272 0
	la 27,.LC21@l(27)
	lis 28,line_num@ha
	.loc 1 264 0
	la 25,.LC20@l(25)
	.loc 1 261 0
	la 21,.LC19@l(21)
	.loc 1 244 0
	la 26,.LC15@l(26)
	.loc 1 246 0
	la 23,.LC16@l(23)
	.loc 1 250 0
	la 22,.LC17@l(22)
.LVL20:
.L61:
	.loc 1 134 0 discriminator 1
	bl SC_ParseToken
.LVL21:
	cmpwi 7,3,257
	beq- 7,.L64
.L52:
	.loc 1 136 0
	cmpwi 7,3,307
	beq- 7,.L65
	.loc 1 267 0
	cmpwi 7,3,308
	beq- 7,.L56
	.loc 1 272 0
	lwz 4,line_num@l(28)
	mr 3,27
.LVL22:
	mr 5,31
	mr 6,29
	crxor 6,6,6
	bl Con_Printf
	.loc 1 134 0
	bl SC_ParseToken
.LVL23:
	cmpwi 7,3,257
	bne+ 7,.L52
.L64:
	.loc 1 276 0
	bl SC_End
.LVL24:
	.loc 1 277 0
	lwz 0,60(1)
	lwz 21,12(1)
	mtlr 0
	lwz 22,16(1)
	lwz 23,20(1)
	lwz 24,24(1)
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
.LVL25:
	lwz 30,48(1)
	lwz 31,52(1)
.LVL26:
	addi 1,1,56
	.cfi_remember_state
.LCFI9:
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
	.cfi_restore 22
	.cfi_restore 21
	blr
.LVL27:
.L56:
.LCFI10:
	.cfi_restore_state
	.loc 1 268 0 discriminator 1
	bl yylex
	cmpwi 7,3,125
	mr 31,3
.LVL28:
	beq- 7,.L61
	.loc 1 268 0 is_stmt 0
	bl yylex
.LVL29:
	cmpwi 7,3,125
	mr 31,3
.LVL30:
	bne+ 7,.L56
	b .L61
.LVL31:
.L65:
	.loc 1 137 0 is_stmt 1
	bl SC_ParseIdent
.LVL32:
	mr 29,3
.LVL33:
	.loc 1 140 0
	bl ParticleEffectDefinedForName
.LVL34:
	.loc 1 141 0
	mr. 30,3
	beq- 0,.L66
.LVL35:
.L20:
	.loc 1 152 0
	bl SC_ParseToken
	cmpwi 7,3,123
	beq- 7,.L55
	.loc 1 152 0 is_stmt 0 discriminator 1
	lis 3,.LC10@ha
	lis 5,.LC11@ha
	lwz 4,line_num@l(28)
	la 3,.LC10@l(3)
	la 5,.LC11@l(5)
	crxor 6,6,6
	bl Con_Printf
.L55:
	.loc 1 254 0 is_stmt 1 discriminator 1
	lis 24,.LC18@ha
	la 24,.LC18@l(24)
.L60:
	.loc 1 154 0 discriminator 1
	bl SC_ParseToken
	cmpwi 7,3,125
	mr 31,3
.LVL36:
	beq- 7,.L61
.L68:
	.loc 1 154 0 is_stmt 0 discriminator 2
	cmpwi 7,3,257
	beq- 7,.L61
	.loc 1 155 0 is_stmt 1
	addi 0,31,-300
	cmplwi 7,0,15
	ble- 7,.L67
	.loc 1 264 0
	lwz 4,line_num@l(28)
	mr 5,31
	mr 3,25
.LVL37:
	mr 6,29
	crxor 6,6,6
	bl Con_Printf
	.loc 1 154 0
	bl SC_ParseToken
	cmpwi 7,3,125
	mr 31,3
.LVL38:
	bne+ 7,.L68
	b .L61
.L67:
	.loc 1 155 0
	lis 9,.L40@ha
	slwi 0,0,2
	la 9,.L40@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L40:
	.long .L24-.L40
	.long .L25-.L40
	.long .L26-.L40
	.long .L27-.L40
	.long .L28-.L40
	.long .L29-.L40
	.long .L30-.L40
	.long .L31-.L40
	.long .L32-.L40
	.long .L33-.L40
	.long .L34-.L40
	.long .L35-.L40
	.long .L36-.L40
	.long .L37-.L40
	.long .L38-.L40
	.long .L39-.L40
	.section	".text"
.L38:
	.loc 1 243 0
	bl SC_ParseIdent
.LVL39:
	.loc 1 244 0
	mr 4,26
	.loc 1 243 0
	mr 29,3
.LVL40:
	.loc 1 244 0
	bl strcmp
.LVL41:
	cmpwi 0,3,0
	beq- 0,.L69
	.loc 1 246 0
	mr 3,29
	mr 4,23
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L70
	.loc 1 250 0
	mr 3,29
	mr 4,22
	bl strcmp
	cmpwi 7,3,0
	bne- 7,.L47
	.loc 1 252 0
	li 0,2
	stw 0,240(30)
	b .L60
.L37:
	.loc 1 211 0
	bl SC_ParseFloat
	stfs 1,196(30)
	.loc 1 212 0
	bl SC_ParseFloat
	stfs 1,200(30)
	.loc 1 213 0
	b .L60
.L36:
	.loc 1 215 0
	bl SC_ParseFloat
	stfs 1,204(30)
	.loc 1 216 0
	bl SC_ParseFloat
	stfs 1,208(30)
	.loc 1 217 0
	b .L60
.L35:
	.loc 1 207 0
	bl SC_ParseFloat
	stfs 1,188(30)
	.loc 1 208 0
	bl SC_ParseFloat
	stfs 1,192(30)
	.loc 1 209 0
	b .L60
.L34:
.LVL42:
	.loc 1 190 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,116(30)
.LVL43:
	bl SC_ParseFloat
	stfs 1,120(30)
.LVL44:
	bl SC_ParseFloat
	stfs 1,124(30)
.LVL45:
	.loc 1 192 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,128(30)
.LVL46:
	bl SC_ParseFloat
	stfs 1,132(30)
.LVL47:
	bl SC_ParseFloat
	stfs 1,136(30)
.LVL48:
	b .L60
.LVL49:
.L33:
	.loc 1 183 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,92(30)
.LVL50:
	bl SC_ParseFloat
	stfs 1,96(30)
.LVL51:
	bl SC_ParseFloat
	stfs 1,100(30)
.LVL52:
	.loc 1 185 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,104(30)
.LVL53:
	bl SC_ParseFloat
	stfs 1,108(30)
.LVL54:
	bl SC_ParseFloat
	stfs 1,112(30)
.LVL55:
	b .L60
.LVL56:
.L32:
	.loc 1 238 0
	bl SC_ParseString
	bl EasyTgaLoad
	.loc 1 239 0
	li 5,0
	.loc 1 238 0
	stw 3,236(30)
	.loc 1 239 0
	ori 5,5,33071
	li 3,3553
	li 4,10242
	bl glTexParameteri
	.loc 1 240 0
	li 5,0
	li 3,3553
	li 4,10243
	ori 5,5,33071
	bl glTexParameteri
	.loc 1 241 0
	b .L60
.L31:
	.loc 1 235 0
	bl SC_ParseFloat
	addi 9,30,232
	fctiwz 1,1
	stfiwx 1,0,9
	.loc 1 236 0
	b .L60
.L30:
	.loc 1 223 0
	bl SC_ParseIdent
	.loc 1 224 0
	lis 4,.LC14@ha
	la 4,.LC14@l(4)
	.loc 1 223 0
	mr 29,3
.LVL57:
	.loc 1 224 0
	bl Q_strcasecmp
.LVL58:
	cmpwi 7,3,0
	bne- 7,.L44
	.loc 1 225 0
	li 0,1
	stb 0,248(30)
	.loc 1 226 0
	li 0,770
	stw 0,224(30)
	.loc 1 227 0
	li 0,771
	stw 0,228(30)
	b .L60
.L29:
.LVL59:
	.loc 1 220 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,212(30)
.LVL60:
	bl SC_ParseFloat
	stfs 1,216(30)
.LVL61:
	bl SC_ParseFloat
	stfs 1,220(30)
.LVL62:
	b .L60
.LVL63:
.L28:
	.loc 1 204 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,176(30)
.LVL64:
	bl SC_ParseFloat
	stfs 1,180(30)
.LVL65:
	bl SC_ParseFloat
	stfs 1,184(30)
.LVL66:
	b .L60
.LVL67:
.L27:
	.loc 1 200 0
	bl SC_ParseIdent
	mr 29,3
.LVL68:
	.loc 1 201 0
	b .L60
.LVL69:
.L26:
	.loc 1 196 0
	bl SC_ParseFloat
	stfs 1,164(30)
	.loc 1 197 0
	bl SC_ParseFloat
	stfs 1,168(30)
	.loc 1 198 0
	b .L60
.L25:
.LVL70:
	.loc 1 176 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,140(30)
.LVL71:
	bl SC_ParseFloat
	stfs 1,144(30)
.LVL72:
	bl SC_ParseFloat
	stfs 1,148(30)
.LVL73:
	.loc 1 178 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,152(30)
.LVL74:
	bl SC_ParseFloat
	stfs 1,156(30)
.LVL75:
	bl SC_ParseFloat
	stfs 1,160(30)
.LVL76:
	b .L60
.LVL77:
.L24:
	.loc 1 158 0
	bl SC_ParseIdent
	.loc 1 160 0
	lis 4,.LC12@ha
	la 4,.LC12@l(4)
	.loc 1 158 0
	mr 29,3
.LVL78:
	.loc 1 160 0
	bl strcmp
.LVL79:
	cmpwi 0,3,0
	bne- 0,.L42
	.loc 1 161 0
	stw 3,88(30)
.L43:
.LVL80:
	.loc 1 168 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,64(30)
.LVL81:
	bl SC_ParseFloat
	stfs 1,68(30)
.LVL82:
	bl SC_ParseFloat
	stfs 1,72(30)
.LVL83:
	.loc 1 171 0 discriminator 1
	bl SC_ParseFloat
	stfs 1,76(30)
.LVL84:
	bl SC_ParseFloat
	stfs 1,80(30)
.LVL85:
	bl SC_ParseFloat
	stfs 1,84(30)
.LVL86:
	b .L60
.LVL87:
.L39:
	.loc 1 258 0
	bl SC_ParseIdent
	mr 29,3
.LVL88:
	.loc 1 259 0
	bl ParticleEffectForName
.LVL89:
	.loc 1 260 0
	cmpwi 7,3,0
	.loc 1 259 0
	stw 3,252(30)
	.loc 1 260 0
	bne+ 7,.L60
	.loc 1 261 0
	lwz 4,line_num@l(28)
	mr 3,21
	mr 5,29
	crxor 6,6,6
	bl Con_Printf
	b .L60
.L69:
	.loc 1 245 0
	stw 3,240(30)
	b .L60
.L42:
	.loc 1 163 0
	lwz 4,line_num@l(28)
	lis 3,.LC10@ha
	lis 5,.LC13@ha
	la 3,.LC10@l(3)
	la 5,.LC13@l(5)
	crxor 6,6,6
	bl Con_Printf
	b .L43
.L44:
	.loc 1 229 0
	li 0,0
	.loc 1 230 0
	mr 3,29
	.loc 1 229 0
	stb 0,248(30)
	.loc 1 230 0
	bl SC_BlendModeForName
	stw 3,224(30)
	.loc 1 231 0
	bl SC_ParseIdent
	bl SC_BlendModeForName
	stw 3,228(30)
	b .L60
.L47:
	.loc 1 254 0
	lwz 4,line_num@l(28)
	mr 3,24
	mr 5,29
	crxor 6,6,6
	bl Con_Printf
	b .L60
.L70:
	.loc 1 248 0
	li 0,1
	stw 0,240(30)
	.loc 1 249 0
	bl SC_ParseFloat
	stfs 1,244(30)
	b .L60
.LVL90:
.L63:
	.loc 1 126 0
	lis 3,.LC8@ha
.LVL91:
	mr 4,31
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 277 0
	lwz 0,60(1)
	lwz 21,12(1)
	mtlr 0
	lwz 22,16(1)
	lwz 23,20(1)
	lwz 24,24(1)
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
.LVL92:
	lwz 31,52(1)
.LVL93:
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
.LVL94:
.L66:
.LCFI12:
	.cfi_restore_state
	.loc 1 142 0
	li 3,260
.LVL95:
	bl Hunk_Alloc
	mr 30,3
.LVL96:
	.loc 1 143 0
	bl DefaultEffect
.LVL97:
	.loc 1 144 0
	lis 9,particleEffects@ha
	.loc 1 146 0
	mr 3,30
	.loc 1 144 0
	lwz 0,particleEffects@l(9)
	.loc 1 146 0
	mr 4,29
	.loc 1 145 0
	stw 30,particleEffects@l(9)
	.loc 1 144 0
	stw 0,256(30)
	.loc 1 146 0
	bl strcpy
	b .L20
	.cfi_endproc
.LFE39:
	.size	R_AddEffectsScript, .-R_AddEffectsScript
	.align 2
	.globl RandomMinMax
	.type	RandomMinMax, @function
RandomMinMax:
.LFB43:
	.loc 1 311 0
	.cfi_startproc
.LVL98:
	mflr 0
	stwu 1,-32(1)
.LCFI13:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stfd 30,16(1)
	fmr 30,2
	.cfi_offset 62, -16
	stw 0,36(1)
	stfd 31,24(1)
	.loc 1 311 0
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 312 0
	bl rand
.LVL99:
	lis 0,0x68db
	ori 0,0,35757
	srawi 9,3,31
	mulhw 0,3,0
	lis 11,0x4330
	stw 11,8(1)
	fsubs 2,30,31
	.loc 1 313 0
	lfd 30,16(1)
.LVL100:
	.loc 1 312 0
	srawi 0,0,12
	subf 0,9,0
	lis 9,.LC23@ha
	mulli 0,0,10000
	lfs 0,.LC23@l(9)
	lis 9,.LC25@ha
	subf 3,0,3
	.loc 1 313 0
	lwz 0,36(1)
	.loc 1 312 0
	xoris 3,3,0x8000
	stw 3,12(1)
	.loc 1 313 0
	mtlr 0
	.loc 1 312 0
	lfd 1,8(1)
	fsub 1,1,0
	lfs 0,.LC25@l(9)
	fdiv 1,1,0
	fmadd 1,1,2,31
	.loc 1 313 0
	lfd 31,24(1)
.LVL101:
	addi 1,1,32
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	frsp 1,1
	blr
	.cfi_endproc
.LFE43:
	.size	RandomMinMax, .-RandomMinMax
	.align 2
	.globl InitParticleFromEffect
	.type	InitParticleFromEffect, @function
InitParticleFromEffect:
.LFB44:
	.loc 1 315 0
	.cfi_startproc
.LVL102:
	stwu 1,-32(1)
.LCFI15:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	.loc 1 320 0
	mr. 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 315 0
	stw 26,8(1)
	mr 26,4
	.cfi_offset 26, -24
	stw 29,20(1)
	.loc 1 320 0
	li 29,0
	.cfi_offset 29, -12
	.loc 1 315 0
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 30,24(1)
	.loc 1 320 0
	beq- 0,.L73
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 1 322 0
	lwz 0,240(31)
	cmpwi 7,0,2
	beq- 7,.L73
	.loc 1 328 0
	lis 9,free_particles@ha
	lwz 29,free_particles@l(9)
	cmpwi 7,29,0
	beq- 7,.L73
.LVL103:
	.loc 1 332 0
	lis 11,active_particles@ha
	.loc 1 331 0
	lwz 0,24(29)
	.loc 1 332 0
	lwz 10,active_particles@l(11)
	.loc 1 337 0
	mr 30,31
	.loc 1 336 0
	lfs 1,164(31)
	.loc 1 337 0
	mr 28,29
	.loc 1 332 0
	stw 10,24(29)
	.loc 1 337 0
	li 27,0
	.loc 1 336 0
	lfs 2,168(31)
	.loc 1 331 0
	stw 0,free_particles@l(9)
	.loc 1 333 0
	stw 29,active_particles@l(11)
	.loc 1 336 0
	bl RandomMinMax
.LVL104:
	.loc 1 337 0
	fmr 13,1
	lis 9,cl+568@ha
	lfd 0,cl+568@l(9)
	.loc 1 336 0
	stfs 1,44(29)
	.loc 1 337 0
	fadd 0,13,0
	frsp 0,0
	stfs 0,40(29)
.LVL105:
.L74:
	.loc 1 339 0 discriminator 2
	lfs 2,152(30)
	lfs 1,140(30)
	bl RandomMinMax
	stfs 1,28(28)
	.loc 1 340 0 discriminator 2
	lfs 2,104(30)
	lfs 1,92(30)
	bl RandomMinMax
	stfs 1,76(28)
	.loc 1 341 0 discriminator 2
	lfs 2,128(30)
	lfs 1,116(30)
	bl RandomMinMax
	stfs 1,88(28)
	.loc 1 342 0 discriminator 2
	lfs 1,64(30)
	lfs 2,76(30)
	addi 30,30,4
	bl RandomMinMax
	lfsx 0,26,27
	.loc 1 338 0 discriminator 2
	cmpwi 7,27,8
	addi 27,27,4
	.loc 1 342 0 discriminator 2
	fadds 0,1,0
	stfs 0,0(28)
	addi 28,28,4
	.loc 1 338 0 discriminator 2
	bne+ 7,.L74
	.loc 1 345 0
	lwz 11,232(31)
	.loc 1 346 0
	lwz 9,224(31)
	.loc 1 347 0
	lwz 0,228(31)
	.loc 1 348 0
	lfs 2,192(31)
	lfs 1,188(31)
	.loc 1 345 0
	stw 11,52(29)
	.loc 1 346 0
	stw 9,100(29)
	.loc 1 347 0
	stw 0,104(29)
	.loc 1 348 0
	bl RandomMinMax
	.loc 1 349 0
	lfs 2,200(31)
	.loc 1 348 0
	stfs 1,60(29)
	.loc 1 349 0
	lfs 1,196(31)
	bl RandomMinMax
	.loc 1 350 0
	lfs 2,208(31)
	.loc 1 349 0
	stfs 1,68(29)
	.loc 1 350 0
	lfs 1,204(31)
	bl RandomMinMax
	.loc 1 315 0
	lwz 0,240(31)
	.loc 1 356 0
	lwz 30,244(31)
	.loc 1 315 0
	xori 0,0,1
	.loc 1 357 0
	lwz 3,236(31)
	.loc 1 358 0
	lwz 4,252(31)
	.loc 1 315 0
	cntlzw 0,0
	.loc 1 359 0
	lbz 5,248(31)
	.loc 1 315 0
	srwi 0,0,5
	.loc 1 360 0
	lwz 6,176(31)
	lwz 7,180(31)
	lwz 8,184(31)
	.loc 1 361 0
	lwz 10,212(31)
	lwz 11,216(31)
	lwz 9,220(31)
	.loc 1 350 0
	stfs 1,64(29)
	.loc 1 315 0
	stb 0,72(29)
	.loc 1 356 0
	stw 30,132(29)
	.loc 1 357 0
	stw 3,48(29)
	.loc 1 358 0
	stw 4,136(29)
	.loc 1 359 0
	stb 5,140(29)
	.loc 1 360 0
	stw 6,108(29)
	stw 7,112(29)
	stw 8,116(29)
	.loc 1 361 0
	stw 10,120(29)
	stw 11,124(29)
	stw 9,128(29)
.LVL106:
.L73:
	.loc 1 363 0
	lwz 0,36(1)
	mr 3,29
	lwz 26,8(1)
.LVL107:
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL108:
	addi 1,1,32
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE44:
	.size	InitParticleFromEffect, .-InitParticleFromEffect
	.align 2
	.globl R_InitParticles
	.type	R_InitParticles, @function
R_InitParticles:
.LFB45:
	.loc 1 371 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI17:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 374 0
	lis 3,.LC26@ha
	la 3,.LC26@l(3)
	.loc 1 371 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 374 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl COM_CheckParm
.LVL109:
	.loc 1 376 0
	cmpwi 0,3,0
	bne- 0,.L83
	.loc 1 384 0
	li 0,2048
	lis 9,r_numparticles@ha
	lis 3,0x4
.LVL110:
	stw 0,r_numparticles@l(9)
	ori 3,3,32768
.L81:
	.loc 1 388 0
	lis 4,.LC5@ha
	la 4,.LC5@l(4)
	bl Hunk_AllocName
	.loc 1 387 0
	lis 9,particles@ha
	.loc 1 391 0
	lis 4,.LC27@ha
	.loc 1 387 0
	stw 3,particles@l(9)
	.loc 1 391 0
	la 4,.LC27@l(4)
	li 3,12288
	bl Hunk_AllocName
	.loc 1 393 0
	lis 9,gl_cardtype@ha
	lwz 0,gl_cardtype@l(9)
	.loc 1 390 0
	lis 9,emitters@ha
	stw 3,emitters@l(9)
	.loc 1 393 0
	cmpwi 7,0,5
	beq- 7,.L84
.L78:
	.loc 1 398 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI18:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL111:
.L83:
.LCFI19:
	.cfi_restore_state
	.loc 1 378 0
	lis 9,com_argv@ha
	addi 3,3,1
.LVL112:
	lwz 9,com_argv@l(9)
	slwi 3,3,2
.LVL113:
	lwzx 3,9,3
	bl Q_atoi
	lis 9,r_numparticles@ha
	.loc 1 379 0
	cmpwi 7,3,511
	.loc 1 378 0
	stw 3,r_numparticles@l(9)
	.loc 1 379 0
	bgt- 7,.L85
	.loc 1 380 0
	lis 3,0x1
	.loc 1 388 0
	lis 4,.LC5@ha
	.loc 1 380 0
	li 0,512
	.loc 1 388 0
	la 4,.LC5@l(4)
	.loc 1 380 0
	ori 3,3,8192
	stw 0,r_numparticles@l(9)
	.loc 1 388 0
	bl Hunk_AllocName
	.loc 1 387 0
	lis 9,particles@ha
	.loc 1 391 0
	lis 4,.LC27@ha
	.loc 1 387 0
	stw 3,particles@l(9)
	.loc 1 391 0
	la 4,.LC27@l(4)
	li 3,12288
	bl Hunk_AllocName
	.loc 1 393 0
	lis 9,gl_cardtype@ha
	lwz 0,gl_cardtype@l(9)
	.loc 1 390 0
	lis 9,emitters@ha
	stw 3,emitters@l(9)
	.loc 1 393 0
	cmpwi 7,0,5
	bne+ 7,.L78
.L84:
.LBB2:
	.loc 1 395 0
	lis 4,.LC28@ha
	li 3,0
	la 4,.LC28@l(4)
	ori 3,3,34336
	crxor 6,6,6
	bl GL_LoadShader
	lis 9,.LANCHOR0@ha
	stw 3,.LANCHOR0@l(9)
	.loc 1 396 0
	lis 4,.LC29@ha
	li 3,0
	la 4,.LC29@l(4)
	ori 3,3,34820
	.loc 1 395 0
	la 31,.LANCHOR0@l(9)
	.loc 1 396 0
	crxor 6,6,6
	bl GL_LoadShader
.LBE2:
	.loc 1 398 0
	lwz 0,20(1)
.LBB3:
	.loc 1 396 0
	stw 3,4(31)
.LBE3:
	.loc 1 398 0
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI20:
	.cfi_def_cfa_offset 0
	blr
.L85:
.LCFI21:
	.cfi_restore_state
	.loc 1 379 0
	mulli 3,3,144
	b .L81
	.cfi_endproc
.LFE45:
	.size	R_InitParticles, .-R_InitParticles
	.align 2
	.globl R_ParseBasicEmitter
	.type	R_ParseBasicEmitter, @function
R_ParseBasicEmitter:
.LFB46:
	.loc 1 409 0
	.cfi_startproc
.LVL114:
	mflr 0
	stwu 1,-40(1)
.LCFI22:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	stw 0,44(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 419 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	bl MSG_ReadCoord
	stfs 1,8(1)
.LVL115:
	bl MSG_ReadCoord
	stfs 1,12(1)
.LVL116:
	bl MSG_ReadCoord
	stfs 1,16(1)
.LVL117:
	.loc 1 422 0
	bl MSG_ReadByte
	mr 30,3
.LVL118:
	.loc 1 425 0
	bl MSG_ReadString
.LVL119:
	.loc 1 427 0
	bl ParticleEffectForName
.LVL120:
	.loc 1 428 0
	mr. 29,3
	beq- 0,.L86
.LVL121:
	.loc 1 430 0 discriminator 1
	cmpwi 7,30,0
	ble- 7,.L86
	.loc 1 430 0 is_stmt 0
	li 31,0
.LVL122:
.L88:
	.loc 1 431 0 is_stmt 1 discriminator 2
	mr 3,29
	addi 4,1,8
	.loc 1 430 0 discriminator 2
	addi 31,31,1
	.loc 1 431 0 discriminator 2
	bl InitParticleFromEffect
.LVL123:
	.loc 1 430 0 discriminator 2
	cmpw 7,31,30
	bne+ 7,.L88
.LVL124:
.L86:
	.loc 1 433 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL125:
	mtlr 0
	lwz 30,32(1)
.LVL126:
	lwz 31,36(1)
	addi 1,1,40
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE46:
	.size	R_ParseBasicEmitter, .-R_ParseBasicEmitter
	.align 2
	.globl R_ParseExtendedEmitter
	.type	R_ParseExtendedEmitter, @function
R_ParseExtendedEmitter:
.LFB47:
	.loc 1 436 0
	.cfi_startproc
.LVL127:
	mflr 0
	stwu 1,-88(1)
.LCFI24:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stfd 26,40(1)
	stw 0,92(1)
	stfd 27,48(1)
	stfd 28,56(1)
	stfd 29,64(1)
	stfd 30,72(1)
	stfd 31,80(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 447 0
	.cfi_offset 31, -52
	.cfi_offset 30, -56
	.cfi_offset 29, -60
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 65, 4
	.cfi_offset 58, -48
	bl MSG_ReadCoord
	fmr 27,1
.LVL128:
	bl MSG_ReadCoord
	fmr 28,1
.LVL129:
	bl MSG_ReadCoord
	fmr 29,1
.LVL130:
	.loc 1 451 0
	bl MSG_ReadCoord
	fmr 30,1
.LVL131:
	bl MSG_ReadCoord
	fmr 31,1
.LVL132:
	bl MSG_ReadCoord
	fmr 26,1
.LVL133:
	.loc 1 454 0
	bl MSG_ReadByte
	mr 31,3
.LVL134:
	.loc 1 457 0
	bl MSG_ReadLong
.LVL135:
	mr 29,3
.LVL136:
	.loc 1 460 0
	bl MSG_ReadLong
.LVL137:
	mr 30,3
.LVL138:
	.loc 1 463 0
	bl MSG_ReadString
.LVL139:
	.loc 1 465 0
	bl ParticleEffectForName
.LVL140:
	.loc 1 466 0
	cmpwi 0,3,0
	beq- 0,.L90
	.loc 1 469 0
	lis 11,free_emitters@ha
	lwz 9,free_emitters@l(11)
	cmpwi 7,9,0
	beq- 7,.L90
.LVL141:
	.loc 1 473 0
	lis 10,active_emitters@ha
	.loc 1 472 0
	lwz 8,44(9)
	.loc 1 473 0
	lwz 7,active_emitters@l(10)
	.loc 1 457 0
	lis 0,0x4330
	xoris 29,29,0x8000
.LVL142:
	.loc 1 477 0
	stfs 27,20(9)
	.loc 1 473 0
	stw 7,44(9)
	.loc 1 460 0
	xoris 30,30,0x8000
.LVL143:
	.loc 1 477 0
	stfs 28,24(9)
	stfs 29,28(9)
	.loc 1 478 0
	stfs 30,32(9)
	stfs 31,36(9)
	stfs 26,40(9)
	.loc 1 472 0
	stw 8,free_emitters@l(11)
	.loc 1 457 0
	lis 11,.LC23@ha
	.loc 1 474 0
	stw 9,active_emitters@l(10)
	.loc 1 476 0
	stw 3,0(9)
	.loc 1 457 0
	stw 0,8(1)
	stw 29,12(1)
	lfs 13,.LC23@l(11)
	lis 11,.LC31@ha
	lfd 12,8(1)
	lfs 0,.LC31@l(11)
	.loc 1 479 0
	lis 11,cl+568@ha
	.loc 1 457 0
	fsub 12,12,13
	.loc 1 479 0
	lfd 11,cl+568@l(11)
	.loc 1 457 0
	fdiv 12,12,0
	frsp 12,12
	.loc 1 479 0
	fadd 12,12,11
	frsp 12,12
	stfs 12,4(9)
	.loc 1 460 0
	stw 0,16(1)
	.loc 1 482 0
	li 0,0
	.loc 1 460 0
	stw 30,20(1)
	lfd 12,16(1)
	.loc 1 481 0
	stw 31,16(9)
	.loc 1 460 0
	fsub 13,12,13
	.loc 1 482 0
	stw 0,12(9)
	.loc 1 460 0
	fdiv 0,13,0
	frsp 0,0
	stfs 0,8(9)
.LVL144:
.L90:
	.loc 1 483 0
	lwz 0,92(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
	lwz 31,36(1)
.LVL145:
	lfd 26,40(1)
	lfd 27,48(1)
	lfd 28,56(1)
	lfd 29,64(1)
	lfd 30,72(1)
	lfd 31,80(1)
	addi 1,1,88
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE47:
	.size	R_ParseExtendedEmitter, .-R_ParseExtendedEmitter
	.align 2
	.globl R_EntityParticles
	.type	R_EntityParticles, @function
R_EntityParticles:
.LFB48:
	.loc 1 500 0
	.cfi_startproc
.LVL146:
	stwu 1,-88(1)
.LCFI26:
	.cfi_def_cfa_offset 88
	.loc 1 513 0
	lis 9,.LC35@ha
	lfs 0,.LC35@l(9)
	.loc 1 500 0
	mflr 0
	stw 31,52(1)
	.loc 1 513 0
	lis 31,avelocities@ha
	.cfi_offset 31, -36
	.cfi_register 65, 0
	lfs 13,avelocities@l(31)
	la 31,avelocities@l(31)
	.loc 1 500 0
	stw 29,44(1)
	mr 29,3
	.cfi_offset 29, -44
	.loc 1 513 0
	fcmpu 7,13,0
	.loc 1 500 0
	stw 0,92(1)
	stfd 28,56(1)
	stfd 29,64(1)
	stfd 30,72(1)
	stfd 31,80(1)
	stw 23,20(1)
	stw 24,24(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 30,48(1)
	.loc 1 513 0
	bne- 7,.L93
	.cfi_offset 30, -40
	.cfi_offset 28, -48
	.cfi_offset 27, -52
	.cfi_offset 26, -56
	.cfi_offset 25, -60
	.cfi_offset 24, -64
	.cfi_offset 23, -68
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 65, 4
	lis 26,.LC23@ha
	lis 27,.LC32@ha
	addi 30,31,-4
	.loc 1 499 0
	addi 25,31,1940
	la 26,.LC23@l(26)
	la 27,.LC32@l(27)
	.loc 1 516 0
	lis 28,0x4330
.LVL147:
.L94:
	.loc 1 516 0 is_stmt 0 discriminator 2
	bl rand
	stw 28,8(1)
	rlwinm 3,3,0,0xff
	lfs 0,0(26)
	xoris 3,3,0x8000
	lfd 13,0(27)
	stw 3,12(1)
	lfd 12,8(1)
	fsub 0,12,0
	fmul 0,0,13
	frsp 0,0
	stfsu 0,4(30)
	.loc 1 515 0 is_stmt 1 discriminator 2
	cmpw 7,30,25
	bne+ 7,.L94
.LVL148:
.L93:
	.loc 1 520 0
	lis 3,.LC33@ha
	la 3,.LC33@l(3)
	bl ParticleEffectForName
.LVL149:
	.loc 1 521 0
	mr. 28,3
	beq- 0,.L92
	lis 30,r_avertexnormals@ha
	lis 26,cl@ha
	la 30,r_avertexnormals@l(30)
	.loc 1 499 0
	addi 25,31,1944
	la 26,cl@l(26)
	addi 27,29,112
	.loc 1 542 0
	lis 23,beamlength@ha
	lis 24,.LC34@ha
	b .L96
.LVL150:
.L99:
	.loc 1 530 0
	frsp 1,31
	.loc 1 542 0
	lfs 12,0(30)
	.loc 1 527 0
	frsp 28,28
.LVL151:
	.loc 1 542 0
	lfs 0,112(29)
	lfs 13,.LC34@l(24)
	.loc 1 526 0
	frsp 29,29
.LVL152:
	.loc 1 543 0
	lfs 11,116(29)
	.loc 1 529 0
	frsp 30,30
.LVL153:
	.loc 1 542 0
	fmadds 12,12,13,0
	lfs 0,beamlength@l(23)
	.loc 1 535 0
	fmuls 28,1,28
	.loc 1 536 0
	fmuls 1,1,29
	.loc 1 537 0
	fneg 30,30
	.loc 1 542 0
	fmadds 28,28,0,12
	.loc 1 544 0
	lfs 12,120(29)
	.loc 1 542 0
	stfs 28,0(3)
	.loc 1 543 0
	lfs 10,4(30)
	fmadds 11,10,13,11
	fmadds 1,1,0,11
	stfs 1,4(3)
	.loc 1 544 0
	lfs 11,8(30)
	addi 30,30,12
	fmadds 13,11,13,12
	fmadds 0,30,0,13
	stfs 0,8(3)
	.loc 1 523 0
	beq- 7,.L92
.LVL154:
.L96:
	.loc 1 525 0
	lfd 31,568(26)
.LVL155:
	lfs 30,0(31)
	fmul 30,31,30
	frsp 30,30
	.loc 1 526 0
	fmr 1,30
	bl sin
.LVL156:
	fmr 29,1
.LVL157:
	.loc 1 527 0
	fmr 1,30
.LVL158:
	bl cos
	.loc 1 528 0
	lfs 0,4(31)
	.loc 1 527 0
	fmr 28,1
.LVL159:
	.loc 1 544 0
	addi 31,31,12
.LVL160:
	.loc 1 528 0
	fmul 31,31,0
.LVL161:
	frsp 31,31
.LVL162:
	.loc 1 529 0
	fmr 1,31
.LVL163:
	bl sin
	fmr 30,1
.LVL164:
	.loc 1 530 0
	fmr 1,31
.LVL165:
	bl cos
	.loc 1 539 0
	mr 3,28
	mr 4,27
	.loc 1 530 0
	fmr 31,1
.LVL166:
	.loc 1 539 0
	bl InitParticleFromEffect
.LVL167:
	.loc 1 523 0
	cmpw 7,31,25
	.loc 1 540 0
	cmpwi 0,3,0
	bne+ 0,.L99
.LVL168:
.L92:
	.loc 1 546 0
	lwz 0,92(1)
	lwz 23,20(1)
	mtlr 0
	lwz 24,24(1)
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
.LVL169:
	lwz 29,44(1)
.LVL170:
	lwz 30,48(1)
	lwz 31,52(1)
	lfd 28,56(1)
	lfd 29,64(1)
	lfd 30,72(1)
	lfd 31,80(1)
	addi 1,1,88
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
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
.LFE48:
	.size	R_EntityParticles, .-R_EntityParticles
	.align 2
	.globl R_ClearParticles
	.type	R_ClearParticles, @function
R_ClearParticles:
.LFB49:
	.loc 1 555 0
	.cfi_startproc
	.loc 1 562 0
	lis 9,r_numparticles@ha
	.loc 1 560 0
	li 0,0
	.loc 1 562 0
	lwz 11,r_numparticles@l(9)
	.loc 1 559 0
	lis 9,particles@ha
	lwz 10,particles@l(9)
	lis 9,free_particles@ha
	.loc 1 562 0
	cmpwi 7,11,0
	.loc 1 559 0
	stw 10,free_particles@l(9)
	.loc 1 560 0
	lis 9,active_particles@ha
	stw 0,active_particles@l(9)
.LVL171:
	.loc 1 562 0
	ble- 7,.L101
	mtctr 11
	.loc 1 554 0
	addi 9,10,144
.LVL172:
.L102:
	.loc 1 563 0 discriminator 2
	stw 9,-120(9)
	.loc 1 562 0 discriminator 2
	addi 9,9,144
	bdnz .L102
.L101:
	.loc 1 564 0
	addi 9,11,-1
	.loc 1 567 0
	lis 11,emitters@ha
	.loc 1 564 0
	mulli 9,9,144
	.loc 1 567 0
	lwz 11,emitters@l(11)
	.loc 1 564 0
	li 0,0
	add 10,10,9
	.loc 1 567 0
	lis 9,free_emitters@ha
	stw 11,free_emitters@l(9)
	.loc 1 568 0
	lis 9,active_emitters@ha
	stw 0,active_emitters@l(9)
.LVL173:
	.loc 1 554 0
	addi 9,11,48
	.loc 1 564 0
	stw 0,24(10)
	.loc 1 570 0
	li 0,256
	mtctr 0
.LVL174:
.L103:
	.loc 1 571 0 discriminator 2
	stw 9,-4(9)
	.loc 1 570 0 discriminator 2
	addi 9,9,48
	bdnz .L103
	.loc 1 572 0
	li 0,0
	stw 0,12284(11)
	.loc 1 573 0
	blr
	.cfi_endproc
.LFE49:
	.size	R_ClearParticles, .-R_ClearParticles
	.align 2
	.globl R_ReadPointFile_f
	.type	R_ReadPointFile_f, @function
R_ReadPointFile_f:
.LFB50:
	.loc 1 577 0
	.cfi_startproc
	stwu 1,-168(1)
.LCFI28:
	.cfi_def_cfa_offset 168
	mflr 0
	.loc 1 586 0
	lis 4,.LC36@ha
	lis 5,sv+32@ha
	la 4,.LC36@l(4)
	la 5,sv+32@l(5)
	addi 3,1,24
	.loc 1 577 0
	stw 0,172(1)
	stw 28,152(1)
	stw 29,156(1)
	stw 30,160(1)
	stw 31,164(1)
	.loc 1 586 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	crxor 6,6,6
	bl sprintf
	.loc 1 588 0
	addi 3,1,24
	addi 4,1,8
	bl COM_FOpenFile
.LVL175:
	.loc 1 589 0
	lwz 0,8(1)
	cmpwi 7,0,0
	beq- 7,.L111
	.loc 1 595 0
	lis 3,.LC38@ha
	la 3,.LC38@l(3)
	bl ParticleEffectForName
.LVL176:
	.loc 1 596 0
	mr. 29,3
	beq- 0,.L106
	.loc 1 598 0
	lis 3,.LC39@ha
.LVL177:
	addi 4,1,24
	la 3,.LC39@l(3)
	lis 28,.LC40@ha
	crxor 6,6,6
	bl Con_Printf
.LVL178:
	.loc 1 599 0
	li 31,0
	la 28,.LC40@l(28)
	.loc 1 609 0
	lis 30,vec3_origin@ha
	b .L110
.LVL179:
.L112:
	.loc 1 607 0
	bl InitParticleFromEffect
.LVL180:
	.loc 1 605 0
	addi 31,31,1
.LVL181:
	.loc 1 608 0
	cmpwi 0,3,0
	.loc 1 609 0
	la 9,vec3_origin@l(30)
	.loc 1 608 0
	beq- 0,.L106
	.loc 1 609 0
	lwz 10,vec3_origin@l(30)
	lwz 11,4(9)
	lwz 0,8(9)
	stw 10,28(3)
	stw 11,32(3)
	stw 0,36(3)
.LVL182:
.L110:
	.loc 1 602 0
	lwz 3,8(1)
	mr 4,28
	addi 5,1,12
	addi 6,1,16
	addi 7,1,20
	crxor 6,6,6
	bl fscanf
.LVL183:
	.loc 1 607 0
	addi 4,1,12
	.loc 1 603 0
	cmpwi 7,3,3
	.loc 1 607 0
	mr 3,29
.LVL184:
	.loc 1 603 0
	beq+ 7,.L112
	.loc 1 612 0
	lwz 3,8(1)
	bl fclose
	.loc 1 613 0
	lis 3,.LC41@ha
	la 3,.LC41@l(3)
	mr 4,31
	crxor 6,6,6
	bl Con_Printf
.LVL185:
.L106:
	.loc 1 614 0
	lwz 0,172(1)
	lwz 28,152(1)
	mtlr 0
	lwz 29,156(1)
.LVL186:
	lwz 30,160(1)
	lwz 31,164(1)
	addi 1,1,168
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L111:
.LCFI30:
	.cfi_restore_state
	.loc 1 591 0
	lis 3,.LC37@ha
	addi 4,1,24
	la 3,.LC37@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 614 0
	lwz 0,172(1)
	lwz 28,152(1)
	mtlr 0
	lwz 29,156(1)
	lwz 30,160(1)
	lwz 31,164(1)
	addi 1,1,168
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI31:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE50:
	.size	R_ReadPointFile_f, .-R_ReadPointFile_f
	.align 2
	.globl R_ParticleGunHits
	.type	R_ParticleGunHits, @function
R_ParticleGunHits:
.LFB52:
	.loc 1 651 0
	.cfi_startproc
.LVL187:
	.loc 1 669 0
	cmplwi 7,4,9
	.loc 1 651 0
	mflr 0
	stwu 1,-24(1)
.LCFI32:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 669 0
	bgt- 7,.L113
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	li 0,1
	slw 4,0,4
.LVL188:
	andi. 0,4,608
	beq- 0,.L122
	.loc 1 700 0
	lis 3,.LC45@ha
.LVL189:
	la 3,.LC45@l(3)
	bl ParticleEffectForName
	li 0,6
	stw 0,8(1)
	mr 30,3
.LVL190:
.L119:
	.loc 1 702 0 discriminator 2
	mr 3,30
	mr 4,31
	bl InitParticleFromEffect
	.loc 1 701 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L119
.LVL191:
.L113:
	.loc 1 708 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL192:
	addi 1,1,24
	.cfi_remember_state
.LCFI33:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL193:
.L122:
.LCFI34:
	.cfi_restore_state
	.loc 1 669 0
	andi. 9,4,4
	bne- 0,.L116
	andi. 0,4,3
	beq- 0,.L113
.LVL194:
	.loc 1 690 0
	lis 3,.LC44@ha
.LVL195:
	la 3,.LC44@l(3)
	bl ParticleEffectForName
	li 9,6
	stw 9,8(1)
	mr 30,3
.LVL196:
.L118:
	.loc 1 692 0 discriminator 2
	mr 3,30
	mr 4,31
	bl InitParticleFromEffect
	.loc 1 691 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L118
	.loc 1 708 0
	lwz 0,28(1)
	lwz 30,16(1)
.LVL197:
	mtlr 0
	lwz 31,20(1)
.LVL198:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI35:
	.cfi_def_cfa_offset 0
	blr
.LVL199:
.L116:
.LCFI36:
	.cfi_restore_state
	.loc 1 674 0
	lis 3,.LC42@ha
.LVL200:
	la 3,.LC42@l(3)
	bl ParticleEffectForName
	.loc 1 676 0
	mr 4,31
	.loc 1 674 0
	mr 30,3
.LVL201:
	.loc 1 676 0
	bl InitParticleFromEffect
.LVL202:
	mr 4,31
	mr 3,30
	bl InitParticleFromEffect
.LVL203:
	.loc 1 679 0
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	bl ParticleEffectForName
.LVL204:
	.loc 1 708 0
	lwz 0,28(1)
	lwz 30,16(1)
	.loc 1 681 0
	mr 4,31
	.loc 1 708 0
	mtlr 0
	lwz 31,20(1)
.LVL205:
	addi 1,1,24
.LCFI37:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.loc 1 681 0
	b InitParticleFromEffect
.LVL206:
	.cfi_endproc
.LFE52:
	.size	R_ParticleGunHits, .-R_ParticleGunHits
	.align 2
	.globl R_ParticleHitBlood
	.type	R_ParticleHitBlood, @function
R_ParticleHitBlood:
.LFB53:
	.loc 1 718 0
	.cfi_startproc
.LVL207:
	stwu 1,-16(1)
.LCFI38:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 726 0
	lis 3,.LC46@ha
.LVL208:
	.loc 1 718 0
	stw 0,20(1)
	.loc 1 726 0
	la 3,.LC46@l(3)
	.loc 1 718 0
	stw 30,8(1)
	.loc 1 726 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl ParticleEffectForName
.LVL209:
	.loc 1 729 0
	mr 4,31
	bl InitParticleFromEffect
.LVL210:
	.loc 1 732 0
	lis 3,.LC47@ha
	la 3,.LC47@l(3)
	bl ParticleEffectForName
	.loc 1 735 0
	mr 4,31
	.loc 1 732 0
	mr 30,3
.LVL211:
	.loc 1 735 0
	bl InitParticleFromEffect
.LVL212:
	.loc 1 737 0
	lwz 0,20(1)
	.loc 1 735 0
	mr 3,30
	mr 4,31
	.loc 1 737 0
	lwz 30,8(1)
.LVL213:
	lwz 31,12(1)
.LVL214:
	mtlr 0
	addi 1,1,16
.LCFI39:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.loc 1 735 0
	b InitParticleFromEffect
.LVL215:
.LVL216:
	.cfi_endproc
.LFE53:
	.size	R_ParticleHitBlood, .-R_ParticleHitBlood
	.align 2
	.globl R_ParticleExplosion
	.type	R_ParticleExplosion, @function
R_ParticleExplosion:
.LFB54:
	.loc 1 746 0
	.cfi_startproc
.LVL217:
	stwu 1,-24(1)
.LCFI40:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 750 0
	lis 3,.LC48@ha
.LVL218:
	.loc 1 746 0
	stw 0,28(1)
	.loc 1 750 0
	la 3,.LC48@l(3)
	.loc 1 746 0
	stw 30,16(1)
	.loc 1 750 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl ParticleEffectForName
	li 0,128
	stw 0,8(1)
	mr 30,3
.LVL219:
.L125:
	.loc 1 753 0 discriminator 2
	mr 3,30
	mr 4,31
	bl InitParticleFromEffect
	.loc 1 751 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L125
	.loc 1 756 0
	lis 3,.LC49@ha
	la 3,.LC49@l(3)
	bl ParticleEffectForName
	li 0,128
	stw 0,8(1)
	mr 30,3
.LVL220:
.L126:
	.loc 1 759 0 discriminator 2
	mr 3,30
	mr 4,31
	bl InitParticleFromEffect
	.loc 1 757 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L126
	.loc 1 761 0
	lwz 0,28(1)
	lwz 30,16(1)
.LVL221:
	mtlr 0
	lwz 31,20(1)
.LVL222:
	addi 1,1,24
.LCFI41:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE54:
	.size	R_ParticleExplosion, .-R_ParticleExplosion
	.align 2
	.globl R_ParticleExplosion2
	.type	R_ParticleExplosion2, @function
R_ParticleExplosion2:
.LFB55:
	.loc 1 770 0
	.cfi_startproc
.LVL223:
	stwu 1,-24(1)
.LCFI42:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 777 0
	lis 3,.LC48@ha
.LVL224:
	.loc 1 770 0
	stw 0,28(1)
	.loc 1 777 0
	la 3,.LC48@l(3)
	.loc 1 770 0
	stw 31,20(1)
	.loc 1 777 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl ParticleEffectForName
.LVL225:
	li 0,64
	stw 0,8(1)
	mr 31,3
.LVL226:
.L130:
	.loc 1 780 0 discriminator 2
	mr 3,31
	mr 4,30
	bl InitParticleFromEffect
	.loc 1 778 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L130
	.loc 1 783 0
	lwz 0,28(1)
	lwz 30,16(1)
.LVL227:
	mtlr 0
	lwz 31,20(1)
.LVL228:
	addi 1,1,24
.LCFI43:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE55:
	.size	R_ParticleExplosion2, .-R_ParticleExplosion2
	.align 2
	.globl R_BlobExplosion
	.type	R_BlobExplosion, @function
R_BlobExplosion:
.LFB56:
	.loc 1 792 0
	.cfi_startproc
.LVL229:
	stwu 1,-24(1)
.LCFI44:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 796 0
	lis 3,.LC50@ha
.LVL230:
	.loc 1 792 0
	stw 0,28(1)
	.loc 1 796 0
	la 3,.LC50@l(3)
	.loc 1 792 0
	stw 30,16(1)
	.loc 1 796 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl ParticleEffectForName
	li 0,64
	stw 0,8(1)
	mr 30,3
.LVL231:
.L133:
	.loc 1 799 0 discriminator 2
	mr 3,30
	mr 4,31
	bl InitParticleFromEffect
	.loc 1 797 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L133
	.loc 1 802 0
	lis 3,.LC51@ha
	la 3,.LC51@l(3)
	bl ParticleEffectForName
	li 0,64
	stw 0,8(1)
	mr 30,3
.LVL232:
.L134:
	.loc 1 805 0 discriminator 2
	mr 3,30
	mr 4,31
	bl InitParticleFromEffect
	.loc 1 803 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L134
	.loc 1 807 0
	lwz 0,28(1)
	lwz 30,16(1)
.LVL233:
	mtlr 0
	lwz 31,20(1)
.LVL234:
	addi 1,1,24
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE56:
	.size	R_BlobExplosion, .-R_BlobExplosion
	.align 2
	.globl R_RunParticleEffect
	.type	R_RunParticleEffect, @function
R_RunParticleEffect:
.LFB57:
	.loc 1 816 0
	.cfi_startproc
.LVL235:
	.loc 1 821 0
	cmpwi 7,5,225
	.loc 1 816 0
	mflr 0
	stwu 1,-24(1)
.LCFI46:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 28,8(1)
	stw 30,16(1)
	.loc 1 821 0
	beq- 7,.L138
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 1 821 0 is_stmt 0 discriminator 1
	cmpwi 7,5,73
	beq- 7,.L138
	.loc 1 826 0 is_stmt 1
	cmpwi 7,6,1024
	beq- 7,.L145
	.loc 1 830 0
	lis 3,.LC52@ha
.LVL236:
	la 3,.LC52@l(3)
	bl ParticleEffectForName
.LVL237:
	.loc 1 831 0
	cmpwi 7,29,0
	.loc 1 830 0
	mr 28,3
.LVL238:
	.loc 1 831 0
	ble- 7,.L137
.L142:
	.loc 1 816 0 discriminator 2
	li 30,0
.LVL239:
.L141:
	.loc 1 832 0 discriminator 2
	mr 3,28
	mr 4,31
	.loc 1 831 0 discriminator 2
	addi 30,30,1
	.loc 1 832 0 discriminator 2
	bl InitParticleFromEffect
.LVL240:
	.loc 1 831 0 discriminator 2
	cmpw 7,29,30
	bgt+ 7,.L141
.LVL241:
.L137:
	.loc 1 834 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL242:
	mtlr 0
	lwz 29,12(1)
.LVL243:
	lwz 30,16(1)
	lwz 31,20(1)
.LVL244:
	addi 1,1,24
	.cfi_remember_state
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL245:
.L138:
.LCFI48:
	.cfi_restore_state
	lwz 0,28(1)
	.loc 1 822 0
	mr 3,31
.LVL246:
	.loc 1 834 0
	lwz 28,8(1)
	.loc 1 822 0
	mr 4,5
.LVL247:
	.loc 1 834 0
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL248:
	addi 1,1,24
	.cfi_remember_state
.LCFI49:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.loc 1 822 0
	b R_ParticleHitBlood
.LVL249:
.L145:
.LCFI50:
	.cfi_restore_state
	.loc 1 827 0
	bl R_ParticleExplosion
.LVL250:
	.loc 1 830 0
	lis 3,.LC52@ha
	la 3,.LC52@l(3)
	bl ParticleEffectForName
	mr 28,3
.LVL251:
	b .L142
	.cfi_endproc
.LFE57:
	.size	R_RunParticleEffect, .-R_RunParticleEffect
	.align 2
	.globl R_ParseParticleEffect
	.type	R_ParseParticleEffect, @function
R_ParseParticleEffect:
.LFB51:
	.loc 1 624 0
	.cfi_startproc
.LVL252:
	mflr 0
	stwu 1,-72(1)
.LCFI51:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 27,52(1)
	.loc 1 623 0
	addi 27,1,16
	.cfi_offset 27, -20
	.loc 1 624 0
	stw 0,76(1)
	stw 28,56(1)
	lis 28,.LC23@ha
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,60(1)
	lis 29,.LC54@ha
	.cfi_offset 29, -12
	stw 30,64(1)
	la 28,.LC23@l(28)
	stw 31,68(1)
	.loc 1 629 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	bl MSG_ReadCoord
	stfs 1,20(1)
.LVL253:
	bl MSG_ReadCoord
	stfs 1,24(1)
.LVL254:
	bl MSG_ReadCoord
	stfs 1,28(1)
.LVL255:
	addi 31,1,4
	la 29,.LC54@l(29)
	.loc 1 631 0
	lis 30,0x4330
.LVL256:
.L147:
	.loc 1 631 0 is_stmt 0 discriminator 2
	bl MSG_ReadChar
	stw 30,40(1)
	xoris 3,3,0x8000
	lfs 0,0(28)
	stw 3,44(1)
	lfs 13,0(29)
	lfd 12,40(1)
	fsub 0,12,0
	fmul 0,0,13
	frsp 0,0
	stfsu 0,4(31)
	.loc 1 630 0 is_stmt 1 discriminator 2
	cmpw 7,31,27
	bne+ 7,.L147
	.loc 1 632 0
	bl MSG_ReadByte
	mr 31,3
.LVL257:
	.loc 1 633 0
	bl MSG_ReadByte
.LVL258:
	.loc 1 635 0
	cmpwi 7,31,255
	.loc 1 633 0
	mr 5,3
.LVL259:
	.loc 1 635 0
	mr 6,31
	beq- 7,.L151
.LVL260:
	.loc 1 640 0
	addi 3,1,20
.LVL261:
	addi 4,1,8
	bl R_RunParticleEffect
.LVL262:
	.loc 1 641 0
	lwz 0,76(1)
	lwz 27,52(1)
	mtlr 0
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
.LVL263:
	addi 1,1,72
	.cfi_remember_state
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL264:
.L151:
.LCFI53:
	.cfi_restore_state
	.loc 1 640 0
	addi 3,1,20
.LVL265:
	addi 4,1,8
	.loc 1 636 0
	li 6,1024
.LVL266:
	.loc 1 640 0
	bl R_RunParticleEffect
.LVL267:
	.loc 1 641 0
	lwz 0,76(1)
	lwz 27,52(1)
	mtlr 0
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
.LVL268:
	addi 1,1,72
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI54:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE51:
	.size	R_ParseParticleEffect, .-R_ParseParticleEffect
	.align 2
	.globl R_LavaSplash
	.type	R_LavaSplash, @function
R_LavaSplash:
.LFB58:
	.loc 1 844 0
	.cfi_startproc
.LVL269:
	stwu 1,-104(1)
.LCFI55:
	.cfi_def_cfa_offset 104
	mflr 0
	stw 31,84(1)
	mr 31,3
	.cfi_offset 31, -20
	.cfi_register 65, 0
	.loc 1 851 0
	lis 3,.LC55@ha
.LVL270:
	.loc 1 844 0
	stw 25,60(1)
	.loc 1 851 0
	la 3,.LC55@l(3)
	.loc 1 844 0
	stw 26,64(1)
	stw 27,68(1)
	.loc 1 859 0
	lis 25,.LC23@ha
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.loc 1 844 0
	stw 28,72(1)
	.loc 1 861 0
	lis 26,.LC56@ha
	.loc 1 844 0
	stw 29,76(1)
	.loc 1 851 0
	li 28,-128
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.loc 1 844 0
	stw 0,108(1)
	.loc 1 859 0
	lis 29,0x4330
	.loc 1 844 0
	stfd 30,88(1)
	stfd 31,96(1)
	stw 24,56(1)
	stw 30,80(1)
	.loc 1 851 0
	.cfi_offset 30, -24
	.cfi_offset 24, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	bl ParticleEffectForName
	mr 27,3
.LVL271:
.L153:
	.loc 1 860 0 discriminator 1
	li 30,-128
	b .L155
.LVL272:
.L158:
	.loc 1 859 0
	bl rand
.LVL273:
	stw 29,24(1)
	rlwinm 0,3,0,29,31
	lfs 31,.LC23@l(25)
	add 0,30,0
	xoris 0,0,0x8000
	stw 0,28(1)
	lfd 0,24(1)
	fsub 0,0,31
	frsp 0,0
	stfs 0,8(1)
	.loc 1 860 0
	bl rand
	rlwinm 0,3,0,29,31
	stw 29,32(1)
	add 0,28,0
	.loc 1 863 0
	lfs 13,8(1)
	.loc 1 860 0
	xoris 0,0,0x8000
	stw 0,36(1)
	.loc 1 861 0
	lwz 0,.LC56@l(26)
	.loc 1 860 0
	lfd 0,32(1)
	.loc 1 863 0
	lfs 12,0(31)
	.loc 1 860 0
	fsub 0,0,31
	.loc 1 861 0
	stw 0,16(1)
	.loc 1 863 0
	fadds 13,12,13
	.loc 1 860 0
	frsp 0,0
	stfs 0,12(1)
	.loc 1 863 0
	stfs 13,0(24)
	.loc 1 864 0
	lfs 13,4(31)
	fadds 0,0,13
	stfs 0,4(24)
	.loc 1 865 0
	lfs 30,8(31)
	bl rand
	rlwinm 3,3,0,26,31
	stw 29,40(1)
	xoris 3,3,0x8000
	stw 3,44(1)
	.loc 1 867 0
	addi 3,1,8
	.loc 1 865 0
	lfd 0,40(1)
	fsub 0,0,31
	frsp 0,0
	fadds 0,30,0
	stfs 0,8(24)
	.loc 1 867 0
	bl VectorNormalize
	.loc 1 868 0
	bl rand
.LVL274:
	stw 29,48(1)
	rlwinm 3,3,0,26,31
.LVL275:
	.loc 1 869 0
	addi 4,24,28
	.loc 1 868 0
	addi 0,3,50
	.loc 1 869 0
	addi 3,1,8
	.loc 1 868 0
	xoris 0,0,0x8000
	stw 0,52(1)
	lfd 0,48(1)
	fsub 31,0,31
	.loc 1 869 0
	frsp 1,31
	bl VectorScale
.LVL276:
	.loc 1 853 0
	cmpwi 7,30,120
	addi 30,30,8
	beq- 7,.L157
.LVL277:
.L155:
	.loc 1 856 0 discriminator 1
	mr 4,31
	mr 3,27
	bl InitParticleFromEffect
.LVL278:
	.loc 1 857 0 discriminator 1
	mr. 24,3
	bne+ 0,.L158
.LVL279:
.L152:
	.loc 1 871 0
	lwz 0,108(1)
	lwz 24,56(1)
.LVL280:
	mtlr 0
	lwz 25,60(1)
	lwz 26,64(1)
	lwz 27,68(1)
.LVL281:
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
.LVL282:
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
	.cfi_remember_state
.LCFI56:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL283:
.L157:
.LCFI57:
	.cfi_restore_state
	.loc 1 852 0
	cmpwi 7,28,120
	addi 28,28,8
	bne+ 7,.L153
	b .L152
	.cfi_endproc
.LFE58:
	.size	R_LavaSplash, .-R_LavaSplash
	.align 2
	.globl R_TeleportSplash
	.type	R_TeleportSplash, @function
R_TeleportSplash:
.LFB59:
	.loc 1 880 0
	.cfi_startproc
.LVL284:
	stwu 1,-160(1)
.LCFI58:
	.cfi_def_cfa_offset 160
	mflr 0
	stw 29,132(1)
	mr 29,3
	.cfi_offset 29, -28
	.cfi_register 65, 0
	.loc 1 887 0
	lis 3,.LC57@ha
.LVL285:
	.loc 1 880 0
	stw 23,108(1)
	.loc 1 887 0
	la 3,.LC57@l(3)
	.loc 1 880 0
	stw 24,112(1)
	stw 27,124(1)
	.loc 1 895 0
	lis 23,.LC23@ha
	.cfi_offset 27, -36
	.cfi_offset 24, -48
	.cfi_offset 23, -52
	.loc 1 880 0
	stw 31,140(1)
	.loc 1 888 0
	li 27,-16
	.loc 1 880 0
	stw 0,164(1)
	.loc 1 895 0
	lis 31,0x4330
	.cfi_offset 65, 4
	.cfi_offset 31, -20
	.loc 1 880 0
	stfd 30,144(1)
	stfd 31,152(1)
	stw 22,104(1)
	stw 25,116(1)
	stw 26,120(1)
	stw 28,128(1)
	stw 30,136(1)
	.loc 1 887 0
	.cfi_offset 30, -24
	.cfi_offset 28, -32
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 22, -56
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	bl ParticleEffectForName
	mr 24,3
.LVL286:
.L160:
	.loc 1 879 0 discriminator 1
	slwi 25,27,3
	li 28,-16
.LVL287:
.L164:
	slwi 26,28,3
	li 30,-24
.LVL288:
.L162:
	.loc 1 892 0
	mr 4,29
	mr 3,24
	bl InitParticleFromEffect
.LVL289:
	.loc 1 879 0
	slwi 0,30,3
	.loc 1 893 0
	mr. 22,3
	.loc 1 897 0
	xoris 0,0,0x8000
	.loc 1 895 0
	xoris 10,26,0x8000
	.loc 1 896 0
	xoris 11,25,0x8000
	.loc 1 899 0
	xoris 9,27,0x8000
	.loc 1 893 0
	beq- 0,.L159
	.loc 1 895 0
	stw 10,28(1)
	.loc 1 896 0
	stw 11,36(1)
	.loc 1 899 0
	stw 9,52(1)
	.loc 1 897 0
	stw 0,44(1)
	.loc 1 895 0
	stw 31,24(1)
	.loc 1 896 0
	stw 31,32(1)
	.loc 1 897 0
	stw 31,40(1)
	.loc 1 899 0
	stw 31,48(1)
	.loc 1 895 0
	lfs 31,.LC23@l(23)
	lfd 10,24(1)
	.loc 1 896 0
	lfd 12,32(1)
	.loc 1 897 0
	lfd 13,40(1)
	.loc 1 895 0
	fsub 10,10,31
	.loc 1 899 0
	lfd 30,48(1)
	.loc 1 896 0
	fsub 12,12,31
	.loc 1 897 0
	fsub 13,13,31
	.loc 1 899 0
	lfs 11,0(29)
	fsub 30,30,31
	.loc 1 895 0
	frsp 10,10
	.loc 1 896 0
	frsp 12,12
	.loc 1 897 0
	frsp 13,13
	.loc 1 899 0
	frsp 30,30
	.loc 1 895 0
	stfs 10,8(1)
	.loc 1 896 0
	stfs 12,12(1)
	.loc 1 897 0
	stfs 13,16(1)
	.loc 1 899 0
	fadds 30,30,11
	bl rand
.LVL290:
	rlwinm 3,3,0,30,31
	stw 31,56(1)
	xoris 3,3,0x8000
	.loc 1 900 0
	xoris 0,28,0x8000
	.loc 1 899 0
	stw 3,60(1)
	lfd 13,56(1)
	fsub 13,13,31
	frsp 13,13
	fadds 0,30,13
	stfs 0,0(22)
	.loc 1 900 0
	stw 0,68(1)
	stw 31,64(1)
	lfd 30,64(1)
	lfs 13,4(29)
	fsub 30,30,31
	frsp 30,30
	fadds 30,30,13
	bl rand
	rlwinm 3,3,0,30,31
	stw 31,72(1)
	xoris 3,3,0x8000
	.loc 1 901 0
	xoris 0,30,0x8000
	.loc 1 900 0
	stw 3,76(1)
	lfd 13,72(1)
	fsub 13,13,31
	frsp 13,13
	fadds 0,30,13
	stfs 0,4(22)
	.loc 1 901 0
	stw 0,84(1)
	stw 31,80(1)
	lfd 30,80(1)
	lfs 13,8(29)
	fsub 30,30,31
	frsp 30,30
	fadds 30,30,13
	bl rand
	rlwinm 3,3,0,30,31
	stw 31,88(1)
	xoris 3,3,0x8000
	stw 3,92(1)
	.loc 1 903 0
	addi 3,1,8
	.loc 1 901 0
	lfd 13,88(1)
	fsub 13,13,31
	frsp 13,13
	fadds 0,30,13
	stfs 0,8(22)
	.loc 1 903 0
	bl VectorNormalize
	.loc 1 904 0
	bl rand
.LVL291:
	stw 31,96(1)
	rlwinm 3,3,0,26,31
.LVL292:
	.loc 1 905 0
	addi 4,22,28
	.loc 1 904 0
	addi 0,3,50
	.loc 1 905 0
	addi 3,1,8
	.loc 1 904 0
	xoris 0,0,0x8000
	stw 0,100(1)
	lfd 0,96(1)
	fsub 31,0,31
	.loc 1 905 0
	frsp 1,31
	bl VectorScale
.LVL293:
	.loc 1 890 0
	cmpwi 7,30,28
	addi 30,30,4
.LVL294:
	bne+ 7,.L162
.LVL295:
	.loc 1 889 0
	cmpwi 7,28,12
	addi 28,28,4
.LVL296:
	bne+ 7,.L164
.LVL297:
	.loc 1 888 0
	cmpwi 7,27,12
	addi 27,27,4
.LVL298:
	bne- 7,.L160
.LVL299:
.L159:
	.loc 1 907 0
	lwz 0,164(1)
	lwz 22,104(1)
.LVL300:
	mtlr 0
	lwz 23,108(1)
	lwz 24,112(1)
.LVL301:
	lwz 25,116(1)
	lwz 26,120(1)
	lwz 27,124(1)
	lwz 28,128(1)
	lwz 29,132(1)
.LVL302:
	lwz 30,136(1)
	lwz 31,140(1)
	lfd 30,144(1)
	lfd 31,152(1)
	addi 1,1,160
.LCFI59:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
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
	blr
	.cfi_endproc
.LFE59:
	.size	R_TeleportSplash, .-R_TeleportSplash
	.align 2
	.globl R_RocketTrail
	.type	R_RocketTrail, @function
R_RocketTrail:
.LFB60:
	.loc 1 910 0
	.cfi_startproc
.LVL303:
	mflr 0
	stwu 1,-136(1)
.LCFI60:
	.cfi_def_cfa_offset 136
	.cfi_register 65, 0
	stw 28,96(1)
	mr 28,5
	.cfi_offset 28, -40
	stw 0,140(1)
	stw 31,108(1)
	mr 31,3
	.cfi_offset 31, -28
	.cfi_offset 65, 4
	.loc 1 919 0
	lfs 12,0(3)
	lfs 13,4(3)
	lfs 0,8(3)
	.loc 1 920 0
	addi 3,1,8
.LVL304:
	.loc 1 919 0
	lfs 9,0(4)
	lfs 10,4(4)
	lfs 11,8(4)
	fsubs 12,9,12
	fsubs 13,10,13
	.loc 1 910 0
	stfd 31,128(1)
	.loc 1 919 0
	fsubs 0,11,0
	.loc 1 910 0
	stfd 29,112(1)
	stfd 30,120(1)
	stw 20,64(1)
	stw 21,68(1)
	stw 22,72(1)
	stw 23,76(1)
	stw 24,80(1)
	stw 25,84(1)
	stw 26,88(1)
	stw 27,92(1)
	stw 29,100(1)
	stw 30,104(1)
	.loc 1 919 0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 920 0
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.cfi_offset 20, -72
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 63, -8
	bl VectorNormalize
.LVL305:
	.loc 1 921 0
	cmpwi 7,28,127
	.loc 1 920 0
	fmr 31,1
.LVL306:
	.loc 1 921 0
	bgt- 7,.L167
	.loc 1 923 0
	addi 26,28,-5
	.loc 1 924 0
	subfic 26,26,1
	subfe 26,26,26
	andi. 26,26,9
	addi 26,26,1
.LVL307:
.L168:
	.loc 1 935 0
	cmplwi 7,28,6
	ble- 7,.L202
	.loc 1 959 0
	lis 3,.LC52@ha
	la 3,.LC52@l(3)
	bl ParticleEffectForName
	mr 25,3
.LVL308:
.L178:
	.loc 1 964 0 discriminator 1
	lis 9,.LC35@ha
	lfs 29,.LC35@l(9)
	fcmpu 7,31,29
	bng- 7,.L166
	.loc 1 971 0
	lis 24,.L186@ha
	slwi 23,28,2
	la 24,.L186@l(24)
	.loc 1 984 0
	lis 29,0x2aaa
	.loc 1 971 0
	add 23,24,23
	lis 27,.LC23@ha
	.loc 1 988 0
	lis 30,0x4330
	.loc 1 984 0
	ori 29,29,43691
.LVL309:
.L195:
	.loc 1 968 0
	mr 3,25
	mr 4,31
	bl InitParticleFromEffect
.LVL310:
	.loc 1 969 0
	mr. 21,3
	beq- 0,.L166
	.loc 1 971 0
	cmplwi 7,28,6
	bgt- 7,.L194
	lwz 0,0(23)
	add 0,0,24
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L186:
	.long .L189-.L186
	.long .L190-.L186
	.long .L191-.L186
	.long .L194-.L186
	.long .L191-.L186
	.long .L194-.L186
	.long .L192-.L186
	.section	".text"
.L194:
	la 22,.LC23@l(27)
.LVL311:
.L181:
	.loc 1 966 0
	xoris 0,26,0x8000
	stw 30,56(1)
	stw 0,60(1)
	lfs 0,0(22)
	lfd 13,56(1)
	.loc 1 993 0
	lfs 12,0(31)
	.loc 1 966 0
	fsub 0,13,0
	.loc 1 993 0
	lfs 13,4(31)
	lfs 11,8(31)
	.loc 1 966 0
	frsp 0,0
	fsubs 31,31,0
	.loc 1 993 0
	lfs 0,8(1)
	fadds 12,12,0
	lfs 0,12(1)
	.loc 1 964 0
	fcmpu 7,31,29
	.loc 1 993 0
	fadds 13,13,0
	lfs 0,16(1)
	stfs 12,0(31)
	fadds 0,11,0
	stfs 13,4(31)
	stfs 0,8(31)
	.loc 1 964 0
	bgt+ 7,.L195
.LVL312:
.L166:
	.loc 1 995 0
	lwz 0,140(1)
	lwz 20,64(1)
	mtlr 0
	lwz 21,68(1)
	lwz 22,72(1)
	lwz 23,76(1)
	lwz 24,80(1)
	lwz 25,84(1)
	lwz 26,88(1)
.LVL313:
	lwz 27,92(1)
	lwz 28,96(1)
.LVL314:
	lwz 29,100(1)
	lwz 30,104(1)
	lwz 31,108(1)
.LVL315:
	lfd 29,112(1)
	lfd 30,120(1)
	lfd 31,128(1)
	addi 1,1,136
	.cfi_remember_state
.LCFI61:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
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
	blr
.LVL316:
.L192:
.LCFI62:
	.cfi_restore_state
	.loc 1 971 0
	li 20,0
	la 22,.LC23@l(27)
.LVL317:
.L185:
	.loc 1 988 0 discriminator 2
	lfsx 30,31,20
	bl rand
	srawi 0,3,3
	addze 0,0
	stw 30,48(1)
	slwi 0,0,3
	lfs 0,0(22)
	subf 3,0,3
	.loc 1 987 0 discriminator 2
	cmpwi 7,20,8
	.loc 1 988 0 discriminator 2
	addi 3,3,-4
	xoris 3,3,0x8000
	stw 3,52(1)
	lfd 13,48(1)
	fsub 0,13,0
	frsp 0,0
	fadds 0,30,0
	stfsx 0,21,20
	.loc 1 987 0 discriminator 2
	addi 20,20,4
	bne+ 7,.L185
	b .L181
.LVL318:
.L191:
	.loc 1 971 0
	li 20,0
	la 22,.LC23@l(27)
.L184:
	.loc 1 984 0 discriminator 2
	lfsx 30,31,20
	bl rand
	mulhw 9,3,29
	srawi 0,3,31
	stw 30,40(1)
	.loc 1 983 0 discriminator 2
	cmpwi 7,20,8
	.loc 1 984 0 discriminator 2
	lfs 0,0(22)
	subf 0,0,9
	mulli 0,0,6
	subf 3,0,3
	addi 3,3,-3
	xoris 3,3,0x8000
	stw 3,44(1)
	lfd 13,40(1)
	fsub 0,13,0
	frsp 0,0
	fadds 0,30,0
	stfsx 0,21,20
	.loc 1 983 0 discriminator 2
	addi 20,20,4
	bne+ 7,.L184
	b .L181
.L190:
	.loc 1 971 0
	li 20,0
	la 22,.LC23@l(27)
.L183:
	.loc 1 979 0 discriminator 2
	lfsx 30,31,20
	bl rand
	mulhw 9,3,29
	srawi 0,3,31
	stw 30,32(1)
	.loc 1 978 0 discriminator 2
	cmpwi 7,20,8
	.loc 1 979 0 discriminator 2
	lfs 0,0(22)
	subf 0,0,9
	mulli 0,0,6
	subf 3,0,3
	addi 3,3,-3
	xoris 3,3,0x8000
	stw 3,36(1)
	lfd 13,32(1)
	fsub 0,13,0
	frsp 0,0
	fadds 0,30,0
	stfsx 0,21,20
	.loc 1 978 0 discriminator 2
	addi 20,20,4
	bne+ 7,.L183
	b .L181
.L189:
	.loc 1 971 0
	li 20,0
	la 22,.LC23@l(27)
.L182:
	.loc 1 975 0 discriminator 2
	lfsx 30,31,20
	bl rand
	mulhw 9,3,29
	srawi 0,3,31
	stw 30,24(1)
	.loc 1 974 0 discriminator 2
	cmpwi 7,20,8
	.loc 1 975 0 discriminator 2
	lfs 0,0(22)
	subf 0,0,9
	mulli 0,0,6
	subf 3,0,3
	addi 3,3,-3
	xoris 3,3,0x8000
	stw 3,28(1)
	lfd 13,24(1)
	fsub 0,13,0
	frsp 0,0
	fadds 0,30,0
	stfsx 0,21,20
	.loc 1 974 0 discriminator 2
	addi 20,20,4
	bne+ 7,.L182
	b .L181
.LVL319:
.L202:
	.loc 1 935 0
	lis 9,.L177@ha
	slwi 0,28,2
	la 9,.L177@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L177:
	.long .L170-.L177
	.long .L171-.L177
	.long .L172-.L177
	.long .L173-.L177
	.long .L172-.L177
	.long .L175-.L177
	.long .L176-.L177
	.section	".text"
.L172:
	.loc 1 944 0
	lis 3,.LC61@ha
	la 3,.LC61@l(3)
	bl ParticleEffectForName
	mr 25,3
.LVL320:
	.loc 1 945 0
	b .L178
.LVL321:
.L167:
	.loc 1 929 0
	lis 3,.LC58@ha
	.loc 1 931 0
	addi 28,28,-128
.LVL322:
	.loc 1 929 0
	la 3,.LC58@l(3)
	.loc 1 930 0
	li 26,1
	.loc 1 929 0
	crxor 6,6,6
	bl Con_Printf
.LVL323:
	b .L168
.LVL324:
.L171:
	.loc 1 941 0
	lis 3,.LC60@ha
	la 3,.LC60@l(3)
	bl ParticleEffectForName
	mr 25,3
.LVL325:
	.loc 1 942 0
	b .L178
.LVL326:
.L173:
	.loc 1 950 0
	lis 3,.LC62@ha
	la 3,.LC62@l(3)
	bl ParticleEffectForName
	mr 25,3
.LVL327:
	.loc 1 951 0
	b .L178
.LVL328:
.L175:
	.loc 1 953 0
	lis 3,.LC63@ha
	la 3,.LC63@l(3)
	bl ParticleEffectForName
	mr 25,3
.LVL329:
	.loc 1 954 0
	b .L178
.LVL330:
.L176:
	.loc 1 956 0
	lis 3,.LC64@ha
	la 3,.LC64@l(3)
	bl ParticleEffectForName
	mr 25,3
.LVL331:
	.loc 1 957 0
	b .L178
.LVL332:
.L170:
	.loc 1 938 0
	lis 3,.LC59@ha
	la 3,.LC59@l(3)
	bl ParticleEffectForName
	mr 25,3
.LVL333:
	.loc 1 939 0
	b .L178
	.cfi_endproc
.LFE60:
	.size	R_RocketTrail, .-R_RocketTrail
	.align 2
	.globl R_EmitPostProcessQuad
	.type	R_EmitPostProcessQuad, @function
R_EmitPostProcessQuad:
.LFB62:
	.loc 1 1524 0
	.cfi_startproc
.LVL334:
	.loc 1 1526 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 11,8(9)
	cmpwi 7,11,255
	bgtlr- 7
	.loc 1 1524 0
	mulli 8,11,60
	li 0,4
	addi 10,9,12
	mtctr 0
	add 10,10,8
.LVL335:
.L205:
.LBB6:
.LBB7:
	.loc 1 1532 0
	lwz 0,0(3)
	stw 0,0(10)
.LVL336:
	lwz 0,4(3)
	stw 0,4(10)
.LVL337:
	lwz 0,8(3)
	addi 3,3,12
	stw 0,8(10)
.LVL338:
	addi 10,10,12
	.loc 1 1530 0
	bdnz .L205
	.loc 1 1535 0
	add 10,9,8
	.loc 1 1539 0
	addi 11,11,1
	.loc 1 1535 0
	stfs 1,60(10)
	.loc 1 1536 0
	stw 4,64(10)
	.loc 1 1537 0
	stfs 2,68(10)
	.loc 1 1539 0
	stw 11,8(9)
	blr
.LBE7:
.LBE6:
	.cfi_endproc
.LFE62:
	.size	R_EmitPostProcessQuad, .-R_EmitPostProcessQuad
	.align 2
	.globl R_DrawParticles
	.type	R_DrawParticles, @function
R_DrawParticles:
.LFB61:
	.loc 1 1246 0
	.cfi_startproc
	.loc 1 1259 0
	lis 9,gl_wireframe+12@ha
	.loc 1 1246 0
	mflr 0
	.loc 1 1259 0
	lfs 13,gl_wireframe+12@l(9)
	lis 9,.LC35@ha
	lfs 0,.LC35@l(9)
	.loc 1 1246 0
	stwu 1,-240(1)
.LCFI63:
	.cfi_def_cfa_offset 240
	.cfi_register 65, 0
	.loc 1 1259 0
	fcmpu 7,13,0
	.loc 1 1246 0
	stw 0,244(1)
	stfd 26,192(1)
	stfd 27,200(1)
	stfd 28,208(1)
	stfd 29,216(1)
	stfd 30,224(1)
	stfd 31,232(1)
	stw 19,140(1)
	stw 20,144(1)
	stw 21,148(1)
	stw 22,152(1)
	stw 23,156(1)
	stw 24,160(1)
	stw 25,164(1)
	stw 26,168(1)
	stw 27,172(1)
	stw 28,176(1)
	stw 29,180(1)
	stw 30,184(1)
	stw 31,188(1)
	.loc 1 1259 0
	beq- 7,.L270
	.cfi_offset 31, -52
	.cfi_offset 30, -56
	.cfi_offset 29, -60
	.cfi_offset 28, -64
	.cfi_offset 27, -68
	.cfi_offset 26, -72
	.cfi_offset 25, -76
	.cfi_offset 24, -80
	.cfi_offset 23, -84
	.cfi_offset 22, -88
	.cfi_offset 21, -92
	.cfi_offset 20, -96
	.cfi_offset 19, -100
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 65, 4
.L207:
	.loc 1 1510 0
	lwz 0,244(1)
	lwz 19,140(1)
	mtlr 0
	lwz 20,144(1)
	lwz 21,148(1)
	lwz 22,152(1)
	lwz 23,156(1)
	lwz 24,160(1)
	lwz 25,164(1)
	lwz 26,168(1)
	lwz 27,172(1)
	lwz 28,176(1)
	lwz 29,180(1)
	lwz 30,184(1)
	lwz 31,188(1)
	lfd 26,192(1)
	lfd 27,200(1)
	lfd 28,208(1)
	lfd 29,216(1)
	lfd 30,224(1)
	lfd 31,232(1)
	addi 1,1,240
	.cfi_remember_state
.LCFI64:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
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
.L270:
.LCFI65:
	.cfi_restore_state
	.loc 1 1262 0
	lis 4,color_black@ha
	li 3,2918
	la 4,color_black@l(4)
	.loc 1 1270 0
	lis 28,vup@ha
	.loc 1 1262 0
	bl glFogfv
	.loc 1 1263 0
	li 3,3042
	bl glEnable
	.loc 1 1264 0
	li 4,1
	li 3,1
	.loc 1 1270 0
	la 28,vup@l(28)
	.loc 1 1264 0
	bl glBlendFunc
	.loc 1 1265 0
	li 3,3008
	bl glEnable
	.loc 1 1266 0
	lis 9,.LC65@ha
	lfs 1,.LC65@l(9)
	li 3,516
	.loc 1 1271 0
	lis 29,vright@ha
	.loc 1 1274 0
	lis 30,cl@ha
	.loc 1 1266 0
	bl glAlphaFunc
	.loc 1 1267 0
	lis 9,.LC66@ha
	lfs 1,.LC66@l(9)
	li 4,8704
	li 3,8960
	.loc 1 1271 0
	la 29,vright@l(29)
	.loc 1 1267 0
	bl glTexEnvf
	.loc 1 1268 0
	li 3,0
	bl glDepthMask
	.loc 1 1270 0
	lis 9,.LC3@ha
	lfs 31,.LC3@l(9)
	mr 3,28
	addi 4,1,32
	.loc 1 1274 0
	la 30,cl@l(30)
	.loc 1 1270 0
	fmr 1,31
	bl VectorScale
	.loc 1 1271 0
	fmr 1,31
	mr 3,29
	addi 4,1,20
	bl VectorScale
	.loc 1 1272 0
	li 3,5890
	bl glMatrixMode
	.loc 1 1284 0
	lis 11,active_emitters@ha
	lwz 31,active_emitters@l(11)
	.loc 1 1274 0
	lfd 0,568(30)
	lfd 31,576(30)
	.loc 1 1285 0
	cmpwi 7,31,0
	.loc 1 1274 0
	fsub 31,0,31
	frsp 31,31
.LVL339:
	.loc 1 1285 0
	beq- 7,.L224
	lfs 13,4(31)
	fcmpu 7,0,13
	bng- 7,.L210
	lis 10,free_emitters@ha
	lwz 0,free_emitters@l(10)
.LVL340:
.L212:
	.loc 1 1287 0
	lwz 9,44(31)
	.loc 1 1288 0
	stw 0,44(31)
.LVL341:
	.loc 1 1285 0
	mr 0,31
	cmpwi 7,9,0
	beq- 7,.L271
.LVL342:
	.loc 1 1285 0 is_stmt 0 discriminator 1
	lfs 13,4(9)
	fcmpu 7,0,13
	bgt- 7,.L251
	.loc 1 1285 0
	stw 9,active_emitters@l(11)
	stw 31,free_emitters@l(10)
	.loc 1 1284 0 is_stmt 1
	mr 31,9
.LVL343:
.L210:
	.loc 1 1302 0
	lis 25,free_emitters@ha
.LBB8:
	.loc 1 1314 0
	lis 23,r_refdef@ha
	.loc 1 1316 0
	lis 24,.LC67@ha
.LVL344:
.L214:
.LBE8:
	.loc 1 1300 0
	lwz 9,44(31)
	.loc 1 1302 0
	cmpwi 7,9,0
	.loc 1 1300 0
	mr 0,9
.LVL345:
	.loc 1 1302 0
	beq- 7,.L215
.LVL346:
	lfs 13,4(9)
	lwz 11,free_emitters@l(25)
	fcmpu 7,13,0
	bnl- 7,.L215
	.loc 1 1304 0
	lwz 10,44(9)
	stw 10,44(31)
	.loc 1 1305 0
	stw 11,44(9)
	.loc 1 1302 0
	mr 11,0
	.loc 1 1300 0
	lwz 9,44(31)
	.loc 1 1302 0
	cmpwi 7,9,0
	beq- 7,.L269
.LVL347:
.L218:
	.loc 1 1302 0 is_stmt 0 discriminator 1
	lfs 13,4(9)
	fcmpu 7,13,0
	bnl- 7,.L269
	.loc 1 1304 0 is_stmt 1
	lwz 10,44(9)
	.loc 1 1302 0
	mr 0,9
	.loc 1 1304 0
	stw 10,44(31)
	.loc 1 1305 0
	stw 11,44(9)
	.loc 1 1302 0
	mr 11,0
	.loc 1 1300 0
	lwz 9,44(31)
.LVL348:
	.loc 1 1302 0
	cmpwi 7,9,0
	bne+ 7,.L218
.LVL349:
.L269:
	stw 0,free_emitters@l(25)
.L215:
	.loc 1 1312 0
	lfs 13,12(31)
	fcmpu 7,13,0
	blt- 7,.L272
.LVL350:
.L219:
	.loc 1 1296 0
	cmpwi 7,9,0
	mr 31,9
	beq- 7,.L224
	lfd 0,568(30)
	b .L214
.LVL351:
.L271:
	.loc 1 1285 0
	stw 9,active_emitters@l(11)
	stw 31,free_emitters@l(10)
.LVL352:
.L224:
	.loc 1 1328 0
	lis 11,active_particles@ha
	lwz 31,active_particles@l(11)
.LVL353:
	.loc 1 1329 0
	cmpwi 7,31,0
	beq- 7,.L250
	lfd 13,568(30)
	lfs 11,40(31)
	fcmpu 7,11,13
	bnl- 7,.L227
	lis 10,free_particles@ha
	lwz 0,free_particles@l(10)
.LVL354:
.L229:
	.loc 1 1331 0
	lwz 9,24(31)
	.loc 1 1332 0
	stw 0,24(31)
.LVL355:
	.loc 1 1329 0
	mr 0,31
	cmpwi 7,9,0
	beq- 7,.L273
.LVL356:
	.loc 1 1329 0 is_stmt 0 discriminator 1
	lfs 11,40(9)
	fcmpu 7,11,13
	blt- 7,.L253
	.loc 1 1329 0
	stw 9,active_particles@l(11)
	stw 31,free_particles@l(10)
	.loc 1 1328 0 is_stmt 1
	mr 31,9
.LVL357:
.L227:
	lis 27,.LC3@ha
	lis 25,.LC69@ha
	la 27,.LC3@l(27)
	lis 24,.LC71@ha
.LBB9:
	.loc 1 1371 0
	lis 20,vpn@ha
.LBE9:
	.loc 1 1361 0
	lfs 27,0(27)
	la 25,.LC69@l(25)
	la 24,.LC71@l(24)
	.loc 1 1346 0
	lis 26,free_particles@ha
.LBB10:
	.loc 1 1371 0
	la 20,vpn@l(20)
.LBE10:
	.loc 1 1395 0
	lis 23,.LC70@ha
.LBB11:
.LBB12:
	.loc 1 1473 0
	lis 21,.LC73@ha
	.loc 1 1474 0
	lis 22,.LC74@ha
.LVL358:
.L231:
.LBE12:
.LBE11:
	.loc 1 1344 0
	lwz 9,24(31)
.LVL359:
	.loc 1 1346 0
	lwz 0,free_particles@l(26)
	cmpwi 7,9,0
	beq- 7,.L233
.LVL360:
.L234:
	.loc 1 1346 0 is_stmt 0 discriminator 1
	lfs 0,40(9)
	fcmpu 7,0,13
	blt- 7,.L232
	lwz 11,52(9)
	cmpwi 7,11,0
	ble- 7,.L232
	.loc 1 1346 0
	stw 0,free_particles@l(26)
.LVL361:
.L233:
	.loc 1 1360 0 is_stmt 1
	fsub 11,11,13
	lfs 12,44(31)
	.loc 1 1356 0
	lfs 29,64(31)
.LVL362:
	.loc 1 1245 0
	addi 9,31,-4
	.loc 1 1357 0
	lfs 0,68(31)
	.loc 1 1362 0
	li 11,0
	.loc 1 1360 0
	fdiv 12,11,12
	frsp 12,12
.LVL363:
	.loc 1 1357 0
	fmadds 0,0,31,29
	.loc 1 1361 0
	fsubs 10,27,12
.LVL364:
	.loc 1 1357 0
	stfs 0,64(31)
.LVL365:
.L235:
	.loc 1 1363 0 discriminator 2
	lfs 0,92(9)
	.loc 1 1362 0 discriminator 2
	cmpwi 7,11,2
	.loc 1 1363 0 discriminator 2
	lfs 13,80(9)
	.loc 1 1245 0 discriminator 2
	addi 9,9,4
	.loc 1 1363 0 discriminator 2
	fmuls 0,10,0
	.loc 1 1362 0 discriminator 2
	addi 11,11,1
.LVL366:
	.loc 1 1363 0 discriminator 2
	fmadds 0,13,12,0
	stfs 0,12(9)
	.loc 1 1362 0 discriminator 2
	bne+ 7,.L235
	.loc 1 1367 0
	lbz 0,72(31)
	cmpwi 7,0,0
	bne- 7,.L274
	.loc 1 1376 0
	lwz 7,0(28)
	lwz 8,4(28)
	lwz 10,8(28)
	.loc 1 1377 0
	lwz 11,0(29)
.LVL367:
	lwz 9,4(29)
	lwz 0,8(29)
	.loc 1 1376 0
	stw 7,32(1)
	stw 8,36(1)
	stw 10,40(1)
	.loc 1 1377 0
	stw 11,20(1)
	stw 9,24(1)
	stw 0,28(1)
.LVL368:
.L237:
	.loc 1 1382 0
	lbz 0,140(31)
	.loc 1 1380 0
	fadd 30,11,11
	.loc 1 1382 0
	cmpwi 7,0,0
	.loc 1 1380 0
	frsp 30,30
.LVL369:
	.loc 1 1382 0
	bne- 7,.L238
	.loc 1 1383 0
	lfs 0,0(25)
	fcmpu 7,11,0
	bnl- 7,.L266
	.loc 1 1384 0
	lfs 1,12(31)
	fmr 4,30
	lfs 2,16(31)
	lfs 3,20(31)
	fmuls 1,30,1
	fmuls 2,30,2
	fmuls 3,30,3
	bl glColor4f
.L241:
	.loc 1 1389 0
	lwz 3,48(31)
	.loc 1 1397 0
	fneg 26,29
	.loc 1 1389 0
	bl GL_Bind
	.loc 1 1390 0
	lwz 3,100(31)
	lwz 4,104(31)
	bl glBlendFunc
	.loc 1 1392 0
	bl glLoadIdentity
	.loc 1 1393 0
	lfs 28,0(25)
	lis 9,.LC35@ha
	fmr 1,28
	lfs 3,.LC35@l(9)
	fmr 2,28
	bl glTranslatef
	.loc 1 1394 0
	lis 9,.LC35@ha
	lfs 30,0(27)
.LVL370:
	lfs 2,.LC35@l(9)
	fmr 4,30
	lfs 1,56(31)
	fmr 3,2
	bl glRotatef
	.loc 1 1395 0
	lfs 1,.LC70@l(23)
	lis 9,.LC35@ha
	fmr 2,1
	lfs 3,.LC35@l(9)
	bl glTranslatef
	.loc 1 1397 0
	lfs 0,0(24)
	.loc 1 1398 0
	mr 3,31
	addi 4,1,32
	.loc 1 1397 0
	fmuls 26,26,0
.LVL371:
	.loc 1 1398 0
	addi 5,1,8
	fmr 1,26
	bl VectorMA
	.loc 1 1399 0
	fmr 1,26
	addi 3,1,8
	addi 4,1,20
	mr 5,3
	bl VectorMA
	.loc 1 1404 0
	li 3,6
	bl glBegin
	.loc 1 1405 0
	lis 9,.LC35@ha
	lfs 1,.LC35@l(9)
	.loc 1 1402 0
	fmuls 29,29,28
.LVL372:
	.loc 1 1405 0
	fmr 2,1
	bl glTexCoord2f
	.loc 1 1406 0
	addi 3,1,8
	bl glVertex3fv
	.loc 1 1407 0
	lis 9,.LC35@ha
	fmr 2,30
	lfs 1,.LC35@l(9)
	bl glTexCoord2f
	.loc 1 1408 0
	lfs 0,8(1)
	lfs 1,32(1)
	lfs 3,40(1)
	fmadds 1,1,29,0
	lfs 0,16(1)
	lfs 2,36(1)
	fmadds 3,3,29,0
	lfs 0,12(1)
	fmadds 2,2,29,0
	bl glVertex3f
	.loc 1 1410 0
	fmr 1,30
	fmr 2,30
	bl glTexCoord2f
	.loc 1 1411 0
	lfs 13,32(1)
	lfs 0,8(1)
	lfs 12,36(1)
	fmadds 0,13,29,0
	lfs 13,12(1)
	.loc 1 1412 0
	lfs 11,40(1)
	.loc 1 1411 0
	fmadds 12,12,29,13
	.loc 1 1412 0
	lfs 13,16(1)
	.loc 1 1411 0
	lfs 2,24(1)
	.loc 1 1412 0
	fmadds 13,11,29,13
	.loc 1 1411 0
	lfs 3,28(1)
	lfs 1,20(1)
	fmadds 2,2,29,12
	fmadds 3,3,29,13
	fmadds 1,1,29,0
	bl glVertex3f
	.loc 1 1413 0
	lis 9,.LC35@ha
	fmr 1,30
	lfs 2,.LC35@l(9)
	bl glTexCoord2f
	.loc 1 1414 0
	lfs 0,8(1)
	lfs 1,20(1)
	lfs 2,24(1)
	fmadds 1,1,29,0
	lfs 0,12(1)
	lfs 3,28(1)
	fmadds 2,2,29,0
	lfs 0,16(1)
	fmadds 3,3,29,0
	bl glVertex3f
	.loc 1 1416 0
	bl glEnd
.LVL373:
.L242:
	.loc 1 1458 0
	lfs 11,56(31)
.LBB16:
	.loc 1 1465 0
	li 4,0
.LBE16:
	.loc 1 1458 0
	lfs 7,60(31)
.LBB17:
	.loc 1 1465 0
	li 5,40
.LBE17:
	.loc 1 1455 0
	lfs 12,0(31)
.LBB18:
	.loc 1 1465 0
	addi 3,1,44
.LBE18:
	.loc 1 1456 0
	lfs 13,4(31)
	.loc 1 1458 0
	fmadds 11,7,31,11
	.loc 1 1457 0
	lfs 0,8(31)
	.loc 1 1455 0
	lfs 8,28(31)
	.loc 1 1456 0
	lfs 9,32(31)
	.loc 1 1457 0
	lfs 10,36(31)
	.loc 1 1455 0
	fmadds 12,8,31,12
	.loc 1 1456 0
	fmadds 13,9,31,13
	.loc 1 1458 0
	stfs 11,56(31)
	.loc 1 1457 0
	fmadds 0,10,31,0
	.loc 1 1455 0
	stfs 12,8(1)
	.loc 1 1456 0
	stfs 13,12(1)
	.loc 1 1457 0
	stfs 0,16(1)
.LBB19:
	.loc 1 1465 0
	bl memset
	.loc 1 1466 0
	lfs 30,0(27)
	.loc 1 1467 0
	lis 9,.LC35@ha
	lwz 3,2688(30)
	li 4,0
	fmr 2,30
	lfs 1,.LC35@l(9)
	addi 3,3,236
	mr 5,31
	addi 6,1,8
	addi 7,1,44
	.loc 1 1466 0
	stfs 30,48(1)
	.loc 1 1467 0
	bl SV_RecursiveHullCheck
	.loc 1 1469 0
	lfs 0,48(1)
	fcmpu 7,0,30
	blt- 7,.L275
	.loc 1 1488 0
	lwz 0,8(1)
	stw 0,0(31)
	lwz 0,12(1)
	stw 0,4(31)
	lwz 0,16(1)
	stw 0,8(31)
.L247:
.LVL374:
.LBB13:
	.loc 1 1245 0 discriminator 1
	addi 9,31,24
.LBE13:
.LBE19:
	li 11,0
.LVL375:
.L249:
.LBB20:
	.loc 1 1488 0 discriminator 2
	addi 9,9,4
.LBE20:
	.loc 1 1492 0 discriminator 2
	cmpwi 7,11,2
	.loc 1 1493 0 discriminator 2
	lfs 0,0(9)
	.loc 1 1492 0 discriminator 2
	addi 11,11,1
.LVL376:
	.loc 1 1493 0 discriminator 2
	lfs 13,80(9)
	fmadds 0,13,31,0
	stfs 0,0(9)
	.loc 1 1492 0 discriminator 2
	bne+ 7,.L249
	.loc 1 1497 0
	lfs 9,28(31)
	lfs 10,32(31)
	lfs 11,36(31)
	lfs 12,120(31)
	lfs 13,124(31)
	lfs 0,128(31)
	fmuls 12,9,12
	fmuls 13,10,13
	fmuls 0,11,0
	stfs 12,28(31)
.LVL377:
	stfs 13,32(31)
.LVL378:
	stfs 0,36(31)
.LVL379:
	.loc 1 1340 0
	lwz 31,24(31)
.LVL380:
	cmpwi 7,31,0
	beq- 7,.L250
	lfd 13,568(30)
	lfs 11,40(31)
	b .L231
.LVL381:
.L273:
	.loc 1 1329 0
	stw 9,active_particles@l(11)
	stw 31,free_particles@l(10)
.LVL382:
.L250:
	.loc 1 1501 0
	li 3,1
	bl glDepthMask
	.loc 1 1502 0
	li 3,3042
	bl glDisable
	.loc 1 1503 0
	li 3,3008
	bl glDisable
	.loc 1 1504 0
	lis 9,.LC75@ha
	lfs 1,.LC75@l(9)
	li 3,516
	bl glAlphaFunc
	.loc 1 1505 0
	lis 9,.LC76@ha
	lfs 1,.LC76@l(9)
	li 4,8704
	li 3,8960
	bl glTexEnvf
	.loc 1 1507 0
	bl glLoadIdentity
	.loc 1 1508 0
	li 3,5888
	bl glMatrixMode
	.loc 1 1509 0
	lis 4,fog_color@ha
	li 3,2918
	la 4,fog_color@l(4)
	bl glFogfv
	b .L207
.LVL383:
.L232:
	.loc 1 1348 0
	lwz 11,24(9)
	stw 11,24(31)
	.loc 1 1349 0
	stw 0,24(9)
	.loc 1 1346 0
	mr 0,9
	.loc 1 1344 0
	lwz 11,24(31)
.LVL384:
	.loc 1 1346 0
	cmpwi 7,11,0
	beq- 7,.L276
	.loc 1 1344 0
	mr 9,11
	b .L234
.LVL385:
.L266:
	.loc 1 1386 0
	addi 3,31,12
	bl glColor3fv
	b .L241
.LVL386:
.L272:
.LBB21:
	.loc 1 1314 0
	la 9,r_refdef@l(23)
.LVL387:
	lfs 12,20(31)
	lfs 0,112(9)
	.loc 1 1316 0
	addi 3,1,84
	.loc 1 1314 0
	lfs 13,116(9)
	fsubs 12,12,0
	lfs 0,120(9)
	stfs 12,84(1)
	lfs 12,24(31)
	fsubs 13,12,13
	stfs 13,88(1)
	lfs 13,28(31)
	fsubs 0,13,0
	stfs 0,92(1)
	.loc 1 1316 0
	bl Length
	lfs 0,.LC67@l(24)
	fcmpu 7,1,0
	bnl- 7,.L221
.LVL388:
	.loc 1 1317 0 discriminator 1
	lwz 0,16(31)
	cmpwi 7,0,0
	ble- 7,.L221
	.loc 1 1317 0 is_stmt 0
	li 27,0
	addi 26,31,20
.LVL389:
.L223:
	.loc 1 1318 0 is_stmt 1 discriminator 2
	lwz 3,0(31)
	mr 4,26
	.loc 1 1317 0 discriminator 2
	addi 27,27,1
	.loc 1 1318 0 discriminator 2
	bl InitParticleFromEffect
.LVL390:
	.loc 1 1317 0 discriminator 2
	lwz 0,16(31)
	cmpw 7,0,27
	bgt+ 7,.L223
.LVL391:
.L221:
	.loc 1 1321 0
	lfd 0,568(30)
	lfs 13,8(31)
	lwz 9,44(31)
	fadd 0,13,0
	frsp 0,0
	stfs 0,12(31)
	b .L219
.LVL392:
.L238:
.LBE21:
.LBB22:
	.loc 1 1422 0
	fneg 28,29
	lfs 0,0(24)
	.loc 1 1423 0
	mr 3,31
	addi 4,1,32
	addi 5,1,8
	.loc 1 1422 0
	fmuls 28,28,0
.LVL393:
	.loc 1 1423 0
	fmr 1,28
	bl VectorMA
	.loc 1 1424 0
	fmr 1,28
	addi 3,1,8
	addi 4,1,20
	mr 5,3
	bl VectorMA
	.loc 1 1426 0
	lfs 5,0(25)
	.loc 1 1429 0
	lfs 13,12(1)
	.loc 1 1426 0
	fmuls 29,29,5
.LVL394:
	.loc 1 1430 0
	lfs 0,16(1)
	.loc 1 1428 0
	lfs 12,8(1)
	.loc 1 1432 0
	lfs 9,32(1)
	.loc 1 1433 0
	lfs 10,36(1)
	.loc 1 1434 0
	lfs 11,40(1)
	.loc 1 1432 0
	fmadds 9,9,29,12
	.loc 1 1433 0
	fmadds 10,10,29,13
	.loc 1 1436 0
	lfs 6,20(1)
	.loc 1 1434 0
	fmadds 11,11,29,0
	.loc 1 1437 0
	lfs 7,24(1)
	.loc 1 1438 0
	lfs 8,28(1)
	.loc 1 1436 0
	fmadds 2,6,29,9
	.loc 1 1437 0
	fmadds 3,7,29,10
	.loc 1 1430 0
	stfs 0,92(1)
	.loc 1 1441 0
	fmadds 7,7,29,13
	.loc 1 1428 0
	stfs 12,84(1)
	.loc 1 1438 0
	fmadds 4,8,29,11
	.loc 1 1436 0
	stfs 2,108(1)
	.loc 1 1440 0
	fmadds 6,6,29,12
	.loc 1 1429 0
	stfs 13,88(1)
	.loc 1 1442 0
	fmadds 29,8,29,0
.LVL395:
	.loc 1 1432 0
	stfs 9,96(1)
	.loc 1 1433 0
	stfs 10,100(1)
	.loc 1 1434 0
	stfs 11,104(1)
	.loc 1 1437 0
	stfs 3,112(1)
	.loc 1 1438 0
	stfs 4,116(1)
	.loc 1 1440 0
	stfs 6,120(1)
	.loc 1 1441 0
	stfs 7,124(1)
	.loc 1 1442 0
	stfs 29,128(1)
	.loc 1 1446 0
	lfd 0,568(30)
	lfs 13,40(31)
	lfs 2,0(27)
	fsub 13,13,0
	fmr 0,2
	fcmpu 7,13,0
	bnl- 7,.L267
	.loc 1 1447 0
	fmuls 2,30,5
	lfs 1,56(31)
	lwz 4,48(31)
	addi 3,1,84
	bl R_EmitPostProcessQuad
	b .L242
.LVL396:
.L274:
.LBE22:
.LBB23:
	.loc 1 1369 0
	lwz 11,28(31)
.LVL397:
	.loc 1 1370 0
	addi 3,1,32
	.loc 1 1369 0
	lwz 9,32(31)
	lwz 0,36(31)
	stw 11,32(1)
	stw 9,36(1)
	stw 0,40(1)
	.loc 1 1370 0
	bl VectorNormalize
.LVL398:
	.loc 1 1371 0
	addi 4,1,32
	addi 5,1,20
	mr 3,20
	bl CrossProduct
	.loc 1 1372 0
	addi 3,1,20
	bl VectorNormalize
	.loc 1 1373 0
	addi 3,31,28
	bl Length
.LVL399:
	lfs 0,132(31)
	.loc 1 1374 0
	addi 3,1,32
	fmuls 1,1,0
.LVL400:
	mr 4,3
	bl VectorScale
.LVL401:
	lfs 11,40(31)
	lfd 0,568(30)
	fsub 11,11,0
	b .L237
.LVL402:
.L275:
.LBE23:
.LBB24:
.LBB14:
	.loc 1 1472 0
	lfs 13,32(31)
	.loc 1 1473 0
	addi 19,31,28
	.loc 1 1472 0
	lfs 0,68(1)
	.loc 1 1473 0
	addi 4,1,64
.LVL403:
	.loc 1 1472 0
	lfs 12,28(31)
	.loc 1 1473 0
	mr 5,19
	.loc 1 1472 0
	fmuls 0,13,0
	lfs 13,64(1)
	lfs 1,36(31)
	.loc 1 1473 0
	mr 3,19
	.loc 1 1472 0
	fmadds 13,12,13,0
	lfs 12,72(1)
	.loc 1 1473 0
	lfs 0,.LC73@l(21)
	.loc 1 1472 0
	fmadds 1,1,12,13
	.loc 1 1473 0
	fmuls 1,1,0
	bl VectorMA
.LVL404:
	.loc 1 1474 0
	lfs 1,.LC74@l(22)
	mr 3,19
	mr 4,19
	bl VectorScale
	.loc 1 1477 0
	lwz 9,52(31)
	.loc 1 1479 0
	lwz 0,136(31)
	cmpwi 7,0,0
	.loc 1 1477 0
	addi 0,9,-1
	.loc 1 1475 0
	lwz 9,52(1)
	.loc 1 1477 0
	stw 0,52(31)
	.loc 1 1475 0
	stw 9,0(31)
	lwz 9,56(1)
	stw 9,4(31)
	lwz 9,60(1)
	stw 9,8(31)
	.loc 1 1479 0
	beq- 7,.L247
	.loc 1 1480 0
	addi 3,1,64
	mr 4,19
	addi 5,1,84
	bl CrossProduct
	.loc 1 1481 0
	lwz 6,136(31)
	lwz 0,240(6)
	cmpwi 7,0,2
	beq- 7,.L277
	.loc 1 1484 0
	mr 3,6
	mr 4,31
	bl InitParticleFromEffect
	b .L247
.LVL405:
.L267:
.LBE14:
.LBE24:
.LBB25:
	.loc 1 1449 0
	lfs 1,56(31)
	addi 3,1,84
	lwz 4,48(31)
	bl R_EmitPostProcessQuad
	b .L242
.LVL406:
.L276:
.LBE25:
	.loc 1 1346 0
	stw 9,free_particles@l(26)
	b .L233
.LVL407:
.L277:
.LBB26:
.LBB15:
	.loc 1 1482 0
	mr 3,31
	addi 4,1,64
	addi 5,1,84
	bl R_SpawnDecal
	b .L247
.LVL408:
.L251:
.LBE15:
.LBE26:
	.loc 1 1285 0
	mr 31,9
	b .L212
.LVL409:
.L253:
	.loc 1 1329 0
	mr 31,9
	b .L229
	.cfi_endproc
.LFE61:
	.size	R_DrawParticles, .-R_DrawParticles
	.align 2
	.globl R_DrawPostProcessQuads
	.type	R_DrawPostProcessQuads, @function
R_DrawPostProcessQuads:
.LFB63:
	.loc 1 1551 0
	.cfi_startproc
	.loc 1 1610 0
	lis 9,.LANCHOR0@ha
	li 0,0
	la 9,.LANCHOR0@l(9)
	stw 0,8(9)
	.loc 1 1611 0
	blr
	.cfi_endproc
.LFE63:
	.size	R_DrawPostProcessQuads, .-R_DrawPostProcessQuads
	.globl timescale
	.globl partstep
	.globl avelocity
	.globl beamlength
	.comm	avelocities,1944,4
	.comm	r_ppn,12,4
	.comm	r_pup,12,4
	.comm	r_pright,12,4
	.comm	particleEffects,4,4
	.comm	free_emitters,4,4
	.comm	active_emitters,4,4
	.comm	emitters,4,4
	.comm	r_numparticles,4,4
	.comm	particles,4,4
	.comm	free_particles,4,4
	.comm	active_particles,4,4
	.globl ramp3
	.globl ramp2
	.globl ramp1
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	-1048576000
.LC2:
	.4byte	1098907648
.LC3:
	.4byte	1065353216
.LC4:
	.4byte	1092616192
.LC23:
	.4byte	1501560836
.LC25:
	.4byte	1176256512
.LC31:
	.4byte	1120403456
.LC34:
	.4byte	1115684864
.LC35:
	.4byte	0
.LC54:
	.4byte	1031798784
.LC56:
	.4byte	1132462080
.LC65:
	.4byte	1008981770
.LC66:
	.4byte	1174667264
.LC67:
	.4byte	1142292480
.LC69:
	.4byte	1056964608
.LC70:
	.4byte	-1090519040
.LC71:
	.4byte	1048576000
.LC73:
	.4byte	-1073741824
.LC74:
	.4byte	1051260355
.LC75:
	.4byte	1059749626
.LC76:
	.4byte	1173358592
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC32:
	.4byte	1065646817
	.4byte	1202590843
	.section	".data"
	.align 2
	.type	avelocity, @object
	.size	avelocity, 12
avelocity:
	.long	1102577664
	.long	1088421888
	.long	1077936128
	.type	ramp3, @object
	.size	ramp3, 32
ramp3:
	.long	109
	.long	107
	.long	6
	.long	5
	.long	4
	.long	3
	.zero	8
	.type	ramp2, @object
	.size	ramp2, 32
ramp2:
	.long	111
	.long	110
	.long	109
	.long	108
	.long	107
	.long	106
	.long	104
	.long	102
	.type	ramp1, @object
	.size	ramp1, 32
ramp1:
	.long	111
	.long	109
	.long	107
	.long	105
	.long	103
	.long	101
	.long	99
	.long	97
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"noname"
	.zero	1
.LC5:
	.string	"particles"
	.zero	2
.LC6:
	.string	"particle"
	.zero	3
.LC7:
	.string	"Effect not defined: %s\n"
.LC8:
	.string	"\002Can't load particle effects from: %s\n"
	.zero	1
.LC9:
	.string	"Loading particle effects from: %s\n"
	.zero	1
.LC10:
	.string	"\002Script error at line %i: %s\n"
	.zero	2
.LC11:
	.string	"'{' expected"
	.zero	3
.LC12:
	.string	"box"
.LC13:
	.string	"Unknown emmiter shape"
	.zero	2
.LC14:
	.string	"postprocess"
.LC15:
	.string	"view"
	.zero	3
.LC16:
	.string	"vel"
.LC17:
	.string	"surface"
.LC18:
	.string	"\002Script error at line %i: Unknown orientation type %s\n"
	.zero	1
.LC19:
	.string	"\002Script error at line %i: Particle %s not defined yet \n"
.LC20:
	.string	"\002Script error at line %i: Unknown field (id%i/%s) for particle definition\n"
	.zero	1
.LC21:
	.string	"\002Script error at line %i: Expected definiton (found id%i/%s)\n"
	.zero	2
.LC26:
	.string	"-particles"
	.zero	1
.LC27:
	.string	"emitters"
	.zero	3
.LC28:
	.string	"glprogs/ppsprite_vp.txt"
.LC29:
	.string	"glprogs/ppsprite_fp.txt"
.LC33:
	.string	"pt_entityparticles"
	.zero	1
.LC36:
	.string	"maps/%s.pts"
.LC37:
	.string	"couldn't open %s\n"
	.zero	2
.LC38:
	.string	"pt_pointfile"
	.zero	3
.LC39:
	.string	"Reading %s...\n"
	.zero	1
.LC40:
	.string	"%f %f %f\n"
	.zero	2
.LC41:
	.string	"%i points read\n"
.LC42:
	.string	"pt_gunshot"
	.zero	1
.LC43:
	.string	"pt_gunshotsmoke"
.LC44:
	.string	"pt_spike"
	.zero	3
.LC45:
	.string	"pt_lightning"
	.zero	3
.LC46:
	.string	"pt_hitblood1"
	.zero	3
.LC47:
	.string	"pt_hitblood2"
	.zero	3
.LC48:
	.string	"pt_explosion1"
	.zero	2
.LC49:
	.string	"pt_explosion2"
	.zero	2
.LC50:
	.string	"pt_voreexplosion1"
	.zero	2
.LC51:
	.string	"pt_voreexplosion2"
	.zero	2
.LC52:
	.string	"pt_genericsmoke"
.LC55:
	.string	"pt_lavasplash"
	.zero	2
.LC57:
	.string	"teleportsplash"
	.zero	1
.LC58:
	.string	"ypt\n"
	.zero	3
.LC59:
	.string	"pt_rockettrail"
	.zero	1
.LC60:
	.string	"pt_smoke"
	.zero	3
.LC61:
	.string	"pt_bloodtrail"
	.zero	2
.LC62:
	.string	"pt_wizzardtrail"
.LC63:
	.string	"pt_hknighttrail"
.LC64:
	.string	"pt_voretrail"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	timescale, @object
	.size	timescale, 4
timescale:
	.long	1008981770
	.type	partstep, @object
	.size	partstep, 4
partstep:
	.long	1008981770
	.type	beamlength, @object
	.size	beamlength, 4
beamlength:
	.long	1098907648
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	ppSpriteVp, @object
	.size	ppSpriteVp, 4
ppSpriteVp:
	.zero	4
	.type	ppSpriteFp, @object
	.size	ppSpriteFp, 4
ppSpriteFp:
	.zero	4
	.type	numPostProcessQuads, @object
	.size	numPostProcessQuads, 4
numPostProcessQuads:
	.zero	4
	.type	postProcessQuads, @object
	.size	postProcessQuads, 15360
postProcessQuads:
	.zero	15360
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/_types.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/lock.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 5 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/_types.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/reent.h"
	.file 7 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdio.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/pr_comp.h"
	.file 21 "d:/Data/Nintendo/TenebraeGX/src/progdefs.h"
	.file 22 "d:/Data/Nintendo/TenebraeGX/src/progs.h"
	.file 23 "d:/Data/Nintendo/TenebraeGX/src/server.h"
	.file 24 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 25 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 26 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 27 "d:/Data/Nintendo/TenebraeGX/src/te_scripts.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4294
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF737
	.byte	0x1
	.4byte	.LASF738
	.4byte	.LASF739
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
	.4byte	.LASF7
	.byte	0x2
	.byte	0xa
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x7
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x161
	.4byte	0x48
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x46
	.4byte	0x9e
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x48
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x49
	.4byte	0x9e
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xae
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x43
	.4byte	0xd3
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x5
	.byte	0x45
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x5
	.byte	0x4a
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4b
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4f
	.4byte	0x68
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x18
	.byte	0x6
	.byte	0x2c
	.4byte	0x15c
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2e
	.4byte	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x30
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xfd
	.uleb128 0x8
	.4byte	0xeb
	.4byte	0x172
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x24
	.byte	0x6
	.byte	0x34
	.4byte	0x1fd
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x36
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x38
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x39
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF33
	.2byte	0x108
	.byte	0x6
	.byte	0x47
	.4byte	0x246
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x48
	.4byte	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x49
	.4byte	0x246
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x4b
	.4byte	0xeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4e
	.4byte	0xeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0x8
	.4byte	0xe9
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.2byte	0x190
	.byte	0x6
	.byte	0x59
	.4byte	0x29d
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x5a
	.4byte	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x5b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x5d
	.4byte	0x2a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x5e
	.4byte	0x1fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x256
	.uleb128 0x8
	.4byte	0x2b5
	.4byte	0x2b3
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x6
	.byte	0x69
	.4byte	0x2e4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x6a
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x6b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x70
	.byte	0x6
	.byte	0xa9
	.4byte	0x444
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xaa
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xab
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0xad
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0xae
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xaf
	.4byte	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0xb0
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0xb7
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb9
	.4byte	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbb
	.4byte	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbd
	.4byte	0x629
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbe
	.4byte	0x644
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xc1
	.4byte	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xc2
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xc3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc6
	.4byte	0x64a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc7
	.4byte	0x65a
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xca
	.4byte	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xce
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd1
	.4byte	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd5
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd7
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd8
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x463
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x5c7
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x469
	.uleb128 0x14
	.4byte	.LASF61
	.2byte	0x440
	.byte	0x6
	.2byte	0x244
	.4byte	0x5c7
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x246
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x24d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x24e
	.4byte	0x8d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x250
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x251
	.4byte	0x5f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x253
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x255
	.4byte	0x8ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x258
	.4byte	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x259
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x25a
	.4byte	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x25b
	.4byte	0x8f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x25e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x25f
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x282
	.4byte	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x285
	.4byte	0x29d
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x286
	.4byte	0x256
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x289
	.4byte	0x906
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x28e
	.4byte	0x676
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x28f
	.4byte	0x912
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5cd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF83
	.uleb128 0xf
	.byte	0x4
	.4byte	0x444
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x5f9
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x5f9
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ff
	.uleb128 0x16
	.4byte	0x5cd
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5da
	.uleb128 0x12
	.byte	0x1
	.4byte	0x5d
	.4byte	0x629
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x5d
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x60a
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x644
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62f
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x65a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x66a
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x111
	.4byte	0x2ea
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0xc
	.byte	0x6
	.2byte	0x115
	.4byte	0x6b1
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x117
	.4byte	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x118
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x119
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x676
	.uleb128 0xf
	.byte	0x4
	.4byte	0x66a
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0xe
	.byte	0x6
	.2byte	0x131
	.4byte	0x6f8
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x132
	.4byte	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x133
	.4byte	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x134
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x708
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.byte	0xd0
	.byte	0x6
	.2byte	0x263
	.4byte	0x838
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x265
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x266
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x267
	.4byte	0x838
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x268
	.4byte	0x172
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x269
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x26a
	.4byte	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x26b
	.4byte	0x6bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x26c
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x26d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x26e
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x26f
	.4byte	0x848
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x270
	.4byte	0x858
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x271
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x272
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x273
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x274
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x275
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x276
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x277
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x848
	.uleb128 0x9
	.4byte	0x48
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x858
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x868
	.uleb128 0x9
	.4byte	0x48
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.byte	0xf0
	.byte	0x6
	.2byte	0x27c
	.4byte	0x890
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x27f
	.4byte	0x890
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x280
	.4byte	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x2e4
	.4byte	0x8a0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x8b0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.byte	0xf0
	.byte	0x6
	.2byte	0x261
	.4byte	0x8d2
	.uleb128 0x1a
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x278
	.4byte	0x708
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x281
	.4byte	0x868
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x8e2
	.uleb128 0x9
	.4byte	0x48
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x8ee
	.uleb128 0x13
	.4byte	0x463
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x906
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x90c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8fa
	.uleb128 0x8
	.4byte	0x66a
	.4byte	0x922
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF114
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF115
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF116
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF117
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x7
	.byte	0x32
	.4byte	0x66a
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x8
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x1c
	.4byte	0x929
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c7
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x8
	.byte	0x22
	.4byte	0x96a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF121
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x10
	.byte	0x8
	.byte	0x28
	.4byte	0x9c4
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x8
	.byte	0x2a
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x8
	.byte	0x2b
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x8
	.byte	0x2c
	.4byte	0x9c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x8
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x8
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x949
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x8
	.byte	0x2f
	.4byte	0x971
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x8
	.byte	0x8
	.byte	0x3a
	.4byte	0x9fe
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x8
	.byte	0x3c
	.4byte	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x8
	.byte	0x3c
	.4byte	0x9fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9d5
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x8
	.byte	0x3d
	.4byte	0x9d5
	.uleb128 0xa
	.byte	0x40
	.byte	0x9
	.byte	0x52
	.4byte	0xa7a
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x54
	.4byte	0xa7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x54
	.4byte	0xa7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x55
	.4byte	0xa7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x9
	.byte	0x56
	.4byte	0xa8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x9
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x9
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x9
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xa8a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0xa9a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x9
	.byte	0x59
	.4byte	0xa0f
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xab5
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xac5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0xad5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0xa5
	.4byte	0xafa
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x9
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x9
	.byte	0xa8
	.4byte	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x9
	.byte	0xa9
	.4byte	0xad5
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xb1b
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0xb2b
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0xb3b
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x14
	.byte	0xa
	.byte	0x1c
	.4byte	0xb8a
	.uleb128 0xe
	.string	"x"
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"y"
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xa
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xa
	.byte	0x1f
	.4byte	0xb8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb3b
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xa
	.byte	0x20
	.4byte	0xb3b
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xbab
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0x4
	.byte	0xb
	.byte	0x6f
	.4byte	0xbc6
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xb
	.byte	0x71
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0xb
	.byte	0x72
	.4byte	0xbab
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0xc
	.byte	0x16
	.4byte	0x929
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0xc
	.byte	0x17
	.4byte	0xbe7
	.uleb128 0x8
	.4byte	0xbd1
	.4byte	0xbf7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xc07
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x48
	.byte	0xd
	.byte	0xef
	.4byte	0xcb8
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xd
	.byte	0xf1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xd
	.byte	0xf2
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xd
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xd
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xd
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xd
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xd
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xd
	.byte	0xf9
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xd
	.byte	0xfa
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xd
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xd
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xd
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF164
	.byte	0xd
	.byte	0xfe
	.4byte	0xc07
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0x14
	.byte	0xe
	.byte	0x38
	.4byte	0xd24
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xe
	.byte	0x3a
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xe
	.byte	0x3b
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xe
	.byte	0x3c
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xe
	.byte	0x3d
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xe
	.byte	0x3e
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xe
	.byte	0x3f
	.4byte	0xd24
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcc3
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0xe
	.byte	0x40
	.4byte	0xcc3
	.uleb128 0x8
	.4byte	0x949
	.4byte	0xd46
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xd56
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xd66
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0x44
	.byte	0xf
	.byte	0x23
	.4byte	0xd8f
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xf
	.byte	0x25
	.4byte	0xd46
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xf
	.byte	0x26
	.4byte	0xbc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0x10
	.byte	0x10
	.byte	0x1e
	.4byte	0xdd4
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x10
	.byte	0x20
	.4byte	0xe7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x10
	.byte	0x21
	.4byte	0xe81
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x10
	.byte	0x22
	.4byte	0x10f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x10
	.byte	0x23
	.4byte	0xe81
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0x40
	.byte	0x11
	.byte	0xca
	.4byte	0xe7b
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x11
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x11
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0x11
	.byte	0xd0
	.4byte	0x261d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0x11
	.byte	0xd2
	.4byte	0x1453
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0x11
	.byte	0xd5
	.4byte	0x9c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0x11
	.byte	0xd6
	.4byte	0x2648
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0x11
	.byte	0xd8
	.4byte	0x264e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0x11
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0x11
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x11
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0x11
	.byte	0xdc
	.4byte	0xb2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdd4
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd8f
	.uleb128 0x10
	.4byte	.LASF190
	.2byte	0x248
	.byte	0x10
	.byte	0x27
	.4byte	0x10f5
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x10
	.byte	0x29
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0x10
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0x10
	.byte	0x2d
	.4byte	0xcb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0x10
	.byte	0x2f
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x10
	.byte	0x30
	.4byte	0x1106
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x10
	.byte	0x31
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0x10
	.byte	0x32
	.4byte	0x1106
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x10
	.byte	0x33
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0x10
	.byte	0x34
	.4byte	0x13d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x10
	.byte	0x35
	.4byte	0xe81
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x10
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0x10
	.byte	0x37
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x10
	.byte	0x38
	.4byte	0x9c4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x10
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0x10
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x10
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0x10
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0x10
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0x10
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0x10
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0x10
	.byte	0x44
	.4byte	0x1453
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x10
	.byte	0x48
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0x10
	.byte	0x49
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0x10
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x10
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x10
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0x10
	.byte	0x50
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.4byte	.LASF207
	.byte	0x10
	.byte	0x51
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.4byte	.LASF208
	.byte	0x10
	.byte	0x52
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.4byte	.LASF209
	.byte	0x10
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.4byte	.LASF210
	.byte	0x10
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF211
	.byte	0x10
	.byte	0x57
	.4byte	0x1573
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.4byte	.LASF212
	.byte	0x10
	.byte	0x58
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x10
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x10
	.byte	0x5c
	.4byte	0x1579
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.4byte	.LASF215
	.byte	0x10
	.byte	0x5f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF216
	.byte	0x10
	.byte	0x60
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF217
	.byte	0x10
	.byte	0x61
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF218
	.byte	0x10
	.byte	0x62
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF219
	.byte	0x10
	.byte	0x63
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x10
	.byte	0x64
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe87
	.uleb128 0x4
	.4byte	.LASF221
	.byte	0x10
	.byte	0x24
	.4byte	0xd8f
	.uleb128 0x8
	.4byte	0xbd1
	.4byte	0x111c
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF222
	.2byte	0x1a4
	.byte	0x11
	.2byte	0x180
	.4byte	0x13d0
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x11
	.2byte	0x182
	.4byte	0xd46
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF223
	.byte	0x11
	.2byte	0x183
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF224
	.byte	0x11
	.2byte	0x185
	.4byte	0x2991
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF225
	.byte	0x11
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x11
	.2byte	0x187
	.4byte	0x2230
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF227
	.byte	0x11
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x11
	.2byte	0x18e
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0x11
	.2byte	0x18e
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF228
	.byte	0x11
	.2byte	0x18f
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF229
	.byte	0x11
	.2byte	0x194
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF230
	.byte	0x11
	.2byte	0x195
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x11
	.2byte	0x195
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF232
	.byte	0x11
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF233
	.byte	0x11
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF234
	.byte	0x11
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF235
	.byte	0x11
	.2byte	0x19d
	.4byte	0x299d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF236
	.byte	0x11
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF237
	.byte	0x11
	.2byte	0x1a0
	.4byte	0x2600
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF213
	.byte	0x11
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF238
	.byte	0x11
	.2byte	0x1a3
	.4byte	0x29a3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x15
	.4byte	.LASF239
	.byte	0x11
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF240
	.byte	0x11
	.2byte	0x1a6
	.4byte	0x29a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x15
	.4byte	.LASF241
	.byte	0x11
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF242
	.byte	0x11
	.2byte	0x1a9
	.4byte	0x29af
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x15
	.4byte	.LASF243
	.byte	0x11
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF244
	.byte	0x11
	.2byte	0x1ac
	.4byte	0x29b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x15
	.4byte	.LASF245
	.byte	0x11
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF246
	.byte	0x11
	.2byte	0x1af
	.4byte	0x260c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x15
	.4byte	.LASF247
	.byte	0x11
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x15
	.4byte	.LASF248
	.byte	0x11
	.2byte	0x1b2
	.4byte	0x2654
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x15
	.4byte	.LASF249
	.byte	0x11
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x15
	.4byte	.LASF250
	.byte	0x11
	.2byte	0x1b5
	.4byte	0x29bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x15
	.4byte	.LASF251
	.byte	0x11
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x15
	.4byte	.LASF252
	.byte	0x11
	.2byte	0x1b8
	.4byte	0x26c2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x15
	.4byte	.LASF187
	.byte	0x11
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x15
	.4byte	.LASF253
	.byte	0x11
	.2byte	0x1bb
	.4byte	0x264e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x15
	.4byte	.LASF254
	.byte	0x11
	.2byte	0x1bd
	.4byte	0x29c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x15
	.4byte	.LASF255
	.byte	0x11
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x15
	.4byte	.LASF256
	.byte	0x11
	.2byte	0x1c0
	.4byte	0x29d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x15
	.4byte	.LASF257
	.byte	0x11
	.2byte	0x1c2
	.4byte	0x9c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x15
	.4byte	.LASF258
	.byte	0x11
	.2byte	0x1c3
	.4byte	0x9c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x15
	.4byte	.LASF259
	.byte	0x11
	.2byte	0x1c4
	.4byte	0x5c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0x11
	.2byte	0x1c9
	.4byte	0xbc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x111c
	.uleb128 0xd
	.4byte	.LASF260
	.byte	0x34
	.byte	0x11
	.byte	0xb6
	.4byte	0x1453
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x11
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x11
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0x11
	.byte	0xbc
	.4byte	0x261d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0x11
	.byte	0xbe
	.4byte	0x1453
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF261
	.byte	0x11
	.byte	0xc1
	.4byte	0x2600
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x11
	.byte	0xc2
	.4byte	0x262d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF262
	.byte	0x11
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x11
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x13d6
	.uleb128 0x1e
	.4byte	.LASF263
	.4byte	0x20030
	.byte	0x12
	.2byte	0xa09
	.4byte	0x1573
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x12
	.2byte	0xa0f
	.4byte	0x1573
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x12
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x12
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF266
	.byte	0x12
	.2byte	0xa17
	.4byte	0x321b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF267
	.byte	0x12
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF268
	.byte	0x12
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF269
	.byte	0x12
	.2byte	0xa1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF270
	.byte	0x12
	.2byte	0xa1d
	.4byte	0x17f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF271
	.byte	0x12
	.2byte	0xa1f
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF272
	.byte	0x12
	.2byte	0xa21
	.4byte	0x321b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF273
	.byte	0x12
	.2byte	0xa25
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF274
	.byte	0x12
	.2byte	0xa2b
	.4byte	0x3227
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF275
	.byte	0x12
	.2byte	0xa2d
	.4byte	0x3227
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x15
	.4byte	.LASF276
	.byte	0x12
	.2byte	0xa2f
	.4byte	0x3227
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x15
	.4byte	.LASF277
	.byte	0x12
	.2byte	0xa31
	.4byte	0x3227
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x15
	.4byte	.LASF278
	.byte	0x12
	.2byte	0xa33
	.4byte	0x326c
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x15
	.4byte	.LASF279
	.byte	0x12
	.2byte	0xa37
	.4byte	0x327d
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1459
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x1589
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF280
	.byte	0x10
	.byte	0x66
	.4byte	0xe87
	.uleb128 0xa
	.byte	0x94
	.byte	0x10
	.byte	0x69
	.4byte	0x16fe
	.uleb128 0xb
	.4byte	.LASF281
	.byte	0x10
	.byte	0x6b
	.4byte	0xb90
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF282
	.byte	0x10
	.byte	0x6d
	.4byte	0xb90
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF283
	.byte	0x10
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF284
	.byte	0x10
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF285
	.byte	0x10
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF286
	.byte	0x10
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF287
	.byte	0x10
	.byte	0x70
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF288
	.byte	0x10
	.byte	0x72
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF289
	.byte	0x10
	.byte	0x72
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF290
	.byte	0x10
	.byte	0x73
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF291
	.byte	0x10
	.byte	0x73
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF292
	.byte	0x10
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF293
	.byte	0x10
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF294
	.byte	0x10
	.byte	0x76
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF295
	.byte	0x10
	.byte	0x76
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF296
	.byte	0x10
	.byte	0x78
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF297
	.byte	0x10
	.byte	0x79
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF298
	.byte	0x10
	.byte	0x7a
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF299
	.byte	0x10
	.byte	0x7c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.4byte	.LASF300
	.byte	0x10
	.byte	0x7d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.4byte	.LASF301
	.byte	0x10
	.byte	0x7f
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF302
	.byte	0x10
	.byte	0x80
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF303
	.byte	0x10
	.byte	0x82
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.4byte	.LASF304
	.byte	0x10
	.byte	0x82
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.4byte	.LASF305
	.byte	0x10
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x4
	.4byte	.LASF306
	.byte	0x10
	.byte	0x85
	.4byte	0x1594
	.uleb128 0xa
	.byte	0x18
	.byte	0x13
	.byte	0x16
	.4byte	0x174a
	.uleb128 0xb
	.4byte	.LASF302
	.byte	0x13
	.byte	0x18
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF307
	.byte	0x13
	.byte	0x1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF308
	.byte	0x13
	.byte	0x1c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF309
	.byte	0x13
	.byte	0x1d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF310
	.byte	0x13
	.byte	0x21
	.4byte	0x1709
	.uleb128 0x1f
	.2byte	0x402c
	.byte	0x13
	.byte	0x29
	.4byte	0x17a5
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x13
	.byte	0x2b
	.4byte	0xd56
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF311
	.byte	0x13
	.byte	0x2c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF312
	.byte	0x13
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF313
	.byte	0x13
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF314
	.byte	0x13
	.byte	0x2f
	.4byte	0xd35
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF315
	.byte	0x13
	.byte	0x30
	.4byte	0x1755
	.uleb128 0xa
	.byte	0x10
	.byte	0x13
	.byte	0x32
	.4byte	0x17d5
	.uleb128 0xb
	.4byte	.LASF316
	.byte	0x13
	.byte	0x34
	.4byte	0x17d5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF317
	.byte	0x13
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x17e5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF318
	.byte	0x13
	.byte	0x36
	.4byte	0x17b0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1589
	.uleb128 0xf
	.byte	0x4
	.4byte	0x93e
	.uleb128 0x1f
	.2byte	0xce8
	.byte	0x13
	.byte	0x9a
	.4byte	0x1a97
	.uleb128 0xb
	.4byte	.LASF319
	.byte	0x13
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0x13
	.byte	0xa0
	.4byte	0x174a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF320
	.byte	0x13
	.byte	0xa3
	.4byte	0x1a97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF321
	.byte	0x13
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.4byte	.LASF322
	.byte	0x13
	.byte	0xa5
	.4byte	0x1aa7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF323
	.byte	0x13
	.byte	0xa6
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.4byte	.LASF324
	.byte	0x13
	.byte	0xa8
	.4byte	0x1ab7
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xb
	.4byte	.LASF325
	.byte	0x13
	.byte	0xa9
	.4byte	0x1ab7
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xb
	.4byte	.LASF326
	.byte	0x13
	.byte	0xaf
	.4byte	0x1106
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xb
	.4byte	.LASF302
	.byte	0x13
	.byte	0xb1
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xb
	.4byte	.LASF327
	.byte	0x13
	.byte	0xb3
	.4byte	0x1106
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xb
	.4byte	.LASF328
	.byte	0x13
	.byte	0xb5
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xb
	.4byte	.LASF329
	.byte	0x13
	.byte	0xb7
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xb
	.4byte	.LASF330
	.byte	0x13
	.byte	0xba
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.4byte	.LASF331
	.byte	0x13
	.byte	0xbb
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xb
	.4byte	.LASF332
	.byte	0x13
	.byte	0xbc
	.4byte	0x95f
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.4byte	.LASF333
	.byte	0x13
	.byte	0xbd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF334
	.byte	0x13
	.byte	0xbe
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF335
	.byte	0x13
	.byte	0xc0
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF336
	.byte	0x13
	.byte	0xc1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF337
	.byte	0x13
	.byte	0xc3
	.4byte	0x95f
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF338
	.byte	0x13
	.byte	0xc4
	.4byte	0x95f
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0xb
	.4byte	.LASF339
	.byte	0x13
	.byte	0xc5
	.4byte	0x95f
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0xb
	.4byte	.LASF340
	.byte	0x13
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF341
	.byte	0x13
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF342
	.byte	0x13
	.byte	0xca
	.4byte	0x1ac7
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF343
	.byte	0x13
	.byte	0xcb
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF344
	.byte	0x13
	.byte	0xce
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xb
	.4byte	.LASF345
	.byte	0x13
	.byte	0xd2
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xb
	.4byte	.LASF346
	.byte	0x13
	.byte	0xd7
	.4byte	0x1ad7
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xb
	.4byte	.LASF347
	.byte	0x13
	.byte	0xd8
	.4byte	0x1ae7
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0xb
	.4byte	.LASF348
	.byte	0x13
	.byte	0xda
	.4byte	0x1afd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0xb
	.4byte	.LASF349
	.byte	0x13
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xb
	.4byte	.LASF350
	.byte	0x13
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xb
	.4byte	.LASF351
	.byte	0x13
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0xb
	.4byte	.LASF352
	.byte	0x13
	.byte	0xe0
	.4byte	0x13d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xb
	.4byte	.LASF353
	.byte	0x13
	.byte	0xe1
	.4byte	0xe81
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xb
	.4byte	.LASF354
	.byte	0x13
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xb
	.4byte	.LASF355
	.byte	0x13
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xb
	.4byte	.LASF356
	.byte	0x13
	.byte	0xe4
	.4byte	0x1589
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xb
	.4byte	.LASF357
	.byte	0x13
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0xb
	.4byte	.LASF358
	.byte	0x13
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0xb
	.4byte	.LASF359
	.byte	0x13
	.byte	0xe9
	.4byte	0x1b0d
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0xb
	.4byte	.LASF360
	.byte	0x13
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x1aa7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x1ab7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x17e5
	.4byte	0x1ac7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x922
	.4byte	0x1ad7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x13d0
	.4byte	0x1ae7
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x1af7
	.4byte	0x1af7
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd66
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x1b0d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x17a5
	.uleb128 0x4
	.4byte	.LASF361
	.byte	0x13
	.byte	0xf3
	.4byte	0x17fc
	.uleb128 0x4
	.4byte	.LASF362
	.byte	0x14
	.byte	0x17
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF363
	.byte	0x14
	.byte	0x18
	.4byte	0x41
	.uleb128 0x1f
	.2byte	0x1a4
	.byte	0x15
	.byte	0x3e
	.4byte	0x1fb1
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x15
	.byte	0x40
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF364
	.byte	0x15
	.byte	0x41
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF365
	.byte	0x15
	.byte	0x42
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF366
	.byte	0x15
	.byte	0x43
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF367
	.byte	0x15
	.byte	0x44
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF368
	.byte	0x15
	.byte	0x45
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x15
	.byte	0x46
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF369
	.byte	0x15
	.byte	0x47
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF328
	.byte	0x15
	.byte	0x48
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x15
	.byte	0x49
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF370
	.byte	0x15
	.byte	0x4a
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF329
	.byte	0x15
	.byte	0x4b
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF371
	.byte	0x15
	.byte	0x4c
	.4byte	0x1b29
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0x15
	.byte	0x4d
	.4byte	0x1b29
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x15
	.byte	0x4e
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x15
	.byte	0x4f
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x15
	.byte	0x50
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x15
	.byte	0x51
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x15
	.byte	0x52
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.4byte	.LASF372
	.byte	0x15
	.byte	0x53
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.4byte	.LASF373
	.byte	0x15
	.byte	0x54
	.4byte	0x1b1e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"use"
	.byte	0x15
	.byte	0x55
	.4byte	0x1b1e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.4byte	.LASF374
	.byte	0x15
	.byte	0x56
	.4byte	0x1b1e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.4byte	.LASF375
	.byte	0x15
	.byte	0x57
	.4byte	0x1b1e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.4byte	.LASF376
	.byte	0x15
	.byte	0x58
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.4byte	.LASF377
	.byte	0x15
	.byte	0x59
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.4byte	.LASF378
	.byte	0x15
	.byte	0x5a
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.4byte	.LASF312
	.byte	0x15
	.byte	0x5b
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.4byte	.LASF379
	.byte	0x15
	.byte	0x5c
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.4byte	.LASF380
	.byte	0x15
	.byte	0x5d
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.4byte	.LASF381
	.byte	0x15
	.byte	0x5e
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.4byte	.LASF382
	.byte	0x15
	.byte	0x5f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.4byte	.LASF383
	.byte	0x15
	.byte	0x60
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.4byte	.LASF384
	.byte	0x15
	.byte	0x61
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.4byte	.LASF385
	.byte	0x15
	.byte	0x62
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.4byte	.LASF386
	.byte	0x15
	.byte	0x63
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.4byte	.LASF321
	.byte	0x15
	.byte	0x64
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.4byte	.LASF387
	.byte	0x15
	.byte	0x65
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.4byte	.LASF388
	.byte	0x15
	.byte	0x66
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.4byte	.LASF389
	.byte	0x15
	.byte	0x67
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.4byte	.LASF390
	.byte	0x15
	.byte	0x68
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.4byte	.LASF391
	.byte	0x15
	.byte	0x69
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.4byte	.LASF392
	.byte	0x15
	.byte	0x6a
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.4byte	.LASF393
	.byte	0x15
	.byte	0x6b
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.4byte	.LASF394
	.byte	0x15
	.byte	0x6c
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.4byte	.LASF395
	.byte	0x15
	.byte	0x6d
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.4byte	.LASF396
	.byte	0x15
	.byte	0x6e
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.4byte	.LASF330
	.byte	0x15
	.byte	0x6f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xb
	.4byte	.LASF397
	.byte	0x15
	.byte	0x70
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xb
	.4byte	.LASF398
	.byte	0x15
	.byte	0x71
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x15
	.byte	0x72
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x15
	.byte	0x73
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0xb
	.4byte	.LASF399
	.byte	0x15
	.byte	0x74
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xb
	.4byte	.LASF400
	.byte	0x15
	.byte	0x75
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xb
	.4byte	.LASF401
	.byte	0x15
	.byte	0x76
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xb
	.4byte	.LASF402
	.byte	0x15
	.byte	0x77
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0xb
	.4byte	.LASF403
	.byte	0x15
	.byte	0x78
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xb
	.4byte	.LASF404
	.byte	0x15
	.byte	0x79
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0xb
	.4byte	.LASF405
	.byte	0x15
	.byte	0x7a
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xb
	.4byte	.LASF406
	.byte	0x15
	.byte	0x7b
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xb
	.4byte	.LASF407
	.byte	0x15
	.byte	0x7c
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0xb
	.4byte	.LASF408
	.byte	0x15
	.byte	0x7d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xb
	.4byte	.LASF409
	.byte	0x15
	.byte	0x7e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xb
	.4byte	.LASF410
	.byte	0x15
	.byte	0x7f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xb
	.4byte	.LASF411
	.byte	0x15
	.byte	0x80
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xb
	.4byte	.LASF412
	.byte	0x15
	.byte	0x81
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0xb
	.4byte	.LASF413
	.byte	0x15
	.byte	0x82
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xb
	.4byte	.LASF414
	.byte	0x15
	.byte	0x83
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0xb
	.4byte	.LASF415
	.byte	0x15
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0xb
	.4byte	.LASF416
	.byte	0x15
	.byte	0x85
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0xb
	.4byte	.LASF417
	.byte	0x15
	.byte	0x86
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.4byte	.LASF418
	.byte	0x15
	.byte	0x87
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xb
	.4byte	.LASF419
	.byte	0x15
	.byte	0x88
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xb
	.4byte	.LASF420
	.byte	0x15
	.byte	0x89
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0xb
	.4byte	.LASF421
	.byte	0x15
	.byte	0x8a
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xb
	.4byte	.LASF422
	.byte	0x15
	.byte	0x8b
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0xb
	.4byte	.LASF423
	.byte	0x15
	.byte	0x8c
	.4byte	0x1b29
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF424
	.byte	0x15
	.byte	0x8d
	.4byte	0x1b34
	.uleb128 0x10
	.4byte	.LASF425
	.2byte	0x400
	.byte	0x16
	.byte	0x25
	.4byte	0x202d
	.uleb128 0xb
	.4byte	.LASF426
	.byte	0x16
	.byte	0x27
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF427
	.byte	0x16
	.byte	0x28
	.4byte	0xa04
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF428
	.byte	0x16
	.byte	0x2a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x16
	.byte	0x2b
	.4byte	0x202d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0x16
	.byte	0x2d
	.4byte	0xcb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF429
	.byte	0x16
	.byte	0x2f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0xe
	.string	"v"
	.byte	0x16
	.byte	0x30
	.4byte	0x1fb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x203d
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF430
	.byte	0x16
	.byte	0x32
	.4byte	0x1fbc
	.uleb128 0x20
	.byte	0x4
	.byte	0x17
	.byte	0x21
	.4byte	0x205d
	.uleb128 0x21
	.4byte	.LASF431
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF432
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF433
	.byte	0x17
	.byte	0x21
	.4byte	0x2048
	.uleb128 0x22
	.4byte	0x10de8
	.byte	0x17
	.byte	0x23
	.4byte	0x21c9
	.uleb128 0xb
	.4byte	.LASF434
	.byte	0x17
	.byte	0x25
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF337
	.byte	0x17
	.byte	0x27
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF435
	.byte	0x17
	.byte	0x28
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF343
	.byte	0x17
	.byte	0x2a
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF436
	.byte	0x17
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF437
	.byte	0x17
	.byte	0x2d
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x17
	.byte	0x2f
	.4byte	0xd46
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF438
	.byte	0x17
	.byte	0x33
	.4byte	0xd46
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF352
	.byte	0x17
	.byte	0x34
	.4byte	0x13d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF346
	.byte	0x17
	.byte	0x35
	.4byte	0x21c9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.4byte	.LASF439
	.byte	0x17
	.byte	0x36
	.4byte	0x1ad7
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xb
	.4byte	.LASF347
	.byte	0x17
	.byte	0x37
	.4byte	0x21c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a4
	.uleb128 0xb
	.4byte	.LASF440
	.byte	0x17
	.byte	0x38
	.4byte	0x21d9
	.byte	0x3
	.byte	0x23
	.uleb128 0xca4
	.uleb128 0xb
	.4byte	.LASF441
	.byte	0x17
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda4
	.uleb128 0xb
	.4byte	.LASF442
	.byte	0x17
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda8
	.uleb128 0xb
	.4byte	.LASF443
	.byte	0x17
	.byte	0x3b
	.4byte	0x21e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xdac
	.uleb128 0xb
	.4byte	.LASF444
	.byte	0x17
	.byte	0x3e
	.4byte	0x205d
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb0
	.uleb128 0xb
	.4byte	.LASF445
	.byte	0x17
	.byte	0x40
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb4
	.uleb128 0xb
	.4byte	.LASF446
	.byte	0x17
	.byte	0x41
	.4byte	0xd35
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc4
	.uleb128 0xb
	.4byte	.LASF447
	.byte	0x17
	.byte	0x43
	.4byte	0x9ca
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dc4
	.uleb128 0xb
	.4byte	.LASF448
	.byte	0x17
	.byte	0x44
	.4byte	0xd35
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dd4
	.uleb128 0xb
	.4byte	.LASF449
	.byte	0x17
	.byte	0x46
	.4byte	0x9ca
	.byte	0x4
	.byte	0x23
	.uleb128 0x8dd4
	.uleb128 0xb
	.4byte	.LASF450
	.byte	0x17
	.byte	0x47
	.4byte	0x21ef
	.byte	0x4
	.byte	0x23
	.uleb128 0x8de4
	.byte	0
	.uleb128 0x8
	.4byte	0x5c7
	.4byte	0x21d9
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x5c7
	.4byte	0x21e9
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x203d
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x2200
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7fff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF451
	.byte	0x17
	.byte	0x48
	.4byte	0x2068
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x221b
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.byte	0x18
	.byte	0x34
	.4byte	0x2230
	.uleb128 0x21
	.4byte	.LASF452
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF453
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF454
	.byte	0x18
	.byte	0x34
	.4byte	0x221b
	.uleb128 0xa
	.byte	0x4
	.byte	0x18
	.byte	0x64
	.4byte	0x225e
	.uleb128 0xe
	.string	"v"
	.byte	0x18
	.byte	0x65
	.4byte	0x225e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF455
	.byte	0x18
	.byte	0x66
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x226e
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF456
	.byte	0x18
	.byte	0x67
	.4byte	0x223b
	.uleb128 0xa
	.byte	0xc
	.byte	0x11
	.byte	0x3b
	.4byte	0x2290
	.uleb128 0xb
	.4byte	.LASF457
	.byte	0x11
	.byte	0x3d
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF458
	.byte	0x11
	.byte	0x3e
	.4byte	0x2279
	.uleb128 0xd
	.4byte	.LASF459
	.byte	0x14
	.byte	0x11
	.byte	0x52
	.4byte	0x22ee
	.uleb128 0xb
	.4byte	.LASF460
	.byte	0x11
	.byte	0x54
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF461
	.byte	0x11
	.byte	0x55
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF224
	.byte	0x11
	.byte	0x56
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF462
	.byte	0x11
	.byte	0x57
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0x11
	.byte	0x58
	.4byte	0x22ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x22fe
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF463
	.byte	0x11
	.byte	0x59
	.4byte	0x229b
	.uleb128 0xd
	.4byte	.LASF464
	.byte	0x48
	.byte	0x11
	.byte	0x5b
	.4byte	0x23be
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x11
	.byte	0x5d
	.4byte	0xaa5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x11
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x11
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF465
	.byte	0x11
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF466
	.byte	0x11
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF467
	.byte	0x11
	.byte	0x61
	.4byte	0x24e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF468
	.byte	0x11
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF469
	.byte	0x11
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF470
	.byte	0x11
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF471
	.byte	0x11
	.byte	0x64
	.4byte	0x24e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF472
	.byte	0x11
	.byte	0x65
	.4byte	0x24e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF473
	.byte	0x11
	.byte	0x66
	.4byte	0xab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF474
	.byte	0x5c
	.byte	0x11
	.byte	0x96
	.4byte	0x24e3
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x11
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF261
	.byte	0x11
	.byte	0x9a
	.4byte	0x2600
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x11
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF475
	.byte	0x11
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF241
	.byte	0x11
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF476
	.byte	0x11
	.byte	0xa0
	.4byte	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF477
	.byte	0x11
	.byte	0xa1
	.4byte	0xac5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF478
	.byte	0x11
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF479
	.byte	0x11
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF480
	.byte	0x11
	.byte	0xa5
	.4byte	0x2606
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF467
	.byte	0x11
	.byte	0xa6
	.4byte	0x24e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF481
	.byte	0x11
	.byte	0xa7
	.4byte	0x24e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF246
	.byte	0x11
	.byte	0xa9
	.4byte	0x260c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0x11
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0x11
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF482
	.byte	0x11
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF483
	.byte	0x11
	.byte	0xb0
	.4byte	0xb2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF484
	.byte	0x11
	.byte	0xb1
	.4byte	0xa8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF485
	.byte	0x11
	.byte	0xb2
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF486
	.byte	0x11
	.byte	0xb3
	.4byte	0x9c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x23be
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2309
	.uleb128 0x4
	.4byte	.LASF487
	.byte	0x11
	.byte	0x67
	.4byte	0x2309
	.uleb128 0xa
	.byte	0x8
	.byte	0x11
	.byte	0x78
	.4byte	0x251d
	.uleb128 0xe
	.string	"v"
	.byte	0x11
	.byte	0x7a
	.4byte	0xb1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF488
	.byte	0x11
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF489
	.byte	0x11
	.byte	0x7c
	.4byte	0x24fa
	.uleb128 0xa
	.byte	0x2c
	.byte	0x11
	.byte	0x7e
	.4byte	0x2569
	.uleb128 0xb
	.4byte	.LASF490
	.byte	0x11
	.byte	0x80
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF491
	.byte	0x11
	.byte	0x81
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF492
	.byte	0x11
	.byte	0x82
	.4byte	0x2569
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x11
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x24ef
	.uleb128 0x4
	.4byte	.LASF493
	.byte	0x11
	.byte	0x84
	.4byte	0x2528
	.uleb128 0xd
	.4byte	.LASF494
	.byte	0x1c
	.byte	0x11
	.byte	0x8a
	.4byte	0x25e9
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x11
	.byte	0x8c
	.4byte	0x25e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF388
	.byte	0x11
	.byte	0x8d
	.4byte	0x25e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF495
	.byte	0x11
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x11
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0x11
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF496
	.byte	0x11
	.byte	0x92
	.4byte	0x25ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF497
	.byte	0x11
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x257a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x25e9
	.uleb128 0x4
	.4byte	.LASF498
	.byte	0x11
	.byte	0x94
	.4byte	0x257a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22fe
	.uleb128 0xf
	.byte	0x4
	.4byte	0x25f5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x256f
	.uleb128 0x4
	.4byte	.LASF499
	.byte	0x11
	.byte	0xb4
	.4byte	0x23be
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x262d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x1453
	.4byte	0x263d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF500
	.byte	0x11
	.byte	0xc6
	.4byte	0x13d6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x10fb
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2654
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2612
	.uleb128 0x4
	.4byte	.LASF501
	.byte	0x11
	.byte	0xdd
	.4byte	0xdd4
	.uleb128 0xa
	.byte	0x28
	.byte	0x11
	.byte	0xe0
	.4byte	0x26c2
	.uleb128 0xb
	.4byte	.LASF252
	.byte	0x11
	.byte	0xe2
	.4byte	0x26c2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF237
	.byte	0x11
	.byte	0xe3
	.4byte	0x2600
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF502
	.byte	0x11
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF503
	.byte	0x11
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF504
	.byte	0x11
	.byte	0xe6
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF505
	.byte	0x11
	.byte	0xe7
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xafa
	.uleb128 0x4
	.4byte	.LASF506
	.byte	0x11
	.byte	0xe8
	.4byte	0x2665
	.uleb128 0xf
	.byte	0x4
	.4byte	0x929
	.uleb128 0x18
	.byte	0x28
	.byte	0x11
	.2byte	0x11e
	.4byte	0x274c
	.uleb128 0x15
	.4byte	.LASF507
	.byte	0x11
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF508
	.byte	0x11
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x122
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF510
	.byte	0x11
	.2byte	0x123
	.4byte	0x226e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x124
	.4byte	0x226e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF155
	.byte	0x11
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x11
	.2byte	0x126
	.4byte	0xaa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF512
	.byte	0x11
	.2byte	0x127
	.4byte	0x26d9
	.uleb128 0x23
	.2byte	0x53c
	.byte	0x11
	.2byte	0x142
	.4byte	0x293d
	.uleb128 0x15
	.4byte	.LASF513
	.byte	0x11
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF514
	.byte	0x11
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF515
	.byte	0x11
	.2byte	0x145
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF516
	.byte	0x11
	.2byte	0x146
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x147
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF518
	.byte	0x11
	.2byte	0x148
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF520
	.byte	0x11
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF521
	.byte	0x11
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF495
	.byte	0x11
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF522
	.byte	0x11
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF225
	.byte	0x11
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x11
	.2byte	0x14f
	.4byte	0x2230
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF227
	.byte	0x11
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF372
	.byte	0x11
	.2byte	0x151
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x11
	.2byte	0x153
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0x11
	.2byte	0x153
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF508
	.byte	0x11
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF523
	.byte	0x11
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF524
	.byte	0x11
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF525
	.byte	0x11
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x15
	.4byte	.LASF237
	.byte	0x11
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF276
	.byte	0x11
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x15
	.4byte	.LASF527
	.byte	0x11
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF528
	.byte	0x11
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF529
	.byte	0x11
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF465
	.byte	0x11
	.2byte	0x15e
	.4byte	0x293d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF530
	.byte	0x11
	.2byte	0x15f
	.4byte	0x293d
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x15
	.4byte	.LASF531
	.byte	0x11
	.2byte	0x160
	.4byte	0x1a97
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x15
	.4byte	.LASF532
	.byte	0x11
	.2byte	0x161
	.4byte	0x2953
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x2953
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x274c
	.4byte	0x2963
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF533
	.byte	0x11
	.2byte	0x162
	.4byte	0x2758
	.uleb128 0x24
	.byte	0x4
	.byte	0x11
	.2byte	0x172
	.4byte	0x2991
	.uleb128 0x21
	.4byte	.LASF534
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF535
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF536
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF537
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF538
	.byte	0x11
	.2byte	0x172
	.4byte	0x296f
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa9a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x265a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2290
	.uleb128 0xf
	.byte	0x4
	.4byte	0x251d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x263d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x26c8
	.4byte	0x29d1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2569
	.uleb128 0xa
	.byte	0x10
	.byte	0x19
	.byte	0x16
	.4byte	0x29fc
	.uleb128 0xb
	.4byte	.LASF460
	.byte	0x19
	.byte	0x18
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF461
	.byte	0x19
	.byte	0x19
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF539
	.byte	0x19
	.byte	0x1a
	.4byte	0x29d7
	.uleb128 0xa
	.byte	0x28
	.byte	0x19
	.byte	0x1c
	.4byte	0x2a80
	.uleb128 0xb
	.4byte	.LASF540
	.byte	0x19
	.byte	0x1e
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF541
	.byte	0x19
	.byte	0x1f
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF542
	.byte	0x19
	.byte	0x20
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF339
	.byte	0x19
	.byte	0x20
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.4byte	.LASF543
	.byte	0x19
	.byte	0x21
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF544
	.byte	0x19
	.byte	0x22
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF261
	.byte	0x19
	.byte	0x23
	.4byte	0x29fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"ent"
	.byte	0x19
	.byte	0x24
	.4byte	0x21e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x4
	.4byte	.LASF545
	.byte	0x19
	.byte	0x25
	.4byte	0x2a07
	.uleb128 0x24
	.byte	0x4
	.byte	0x12
	.2byte	0x16b
	.4byte	0x2a9b
	.uleb128 0x21
	.4byte	.LASF546
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF547
	.byte	0x12
	.2byte	0x16f
	.4byte	0x2a8b
	.uleb128 0x24
	.byte	0x4
	.byte	0x12
	.2byte	0x173
	.4byte	0x2ac3
	.uleb128 0x21
	.4byte	.LASF548
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF549
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF550
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF551
	.byte	0x12
	.2byte	0x177
	.4byte	0x2aa7
	.uleb128 0x14
	.4byte	.LASF552
	.2byte	0x104
	.byte	0x12
	.2byte	0x17b
	.4byte	0x2cb7
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x12
	.2byte	0x17d
	.4byte	0xd46
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF553
	.byte	0x12
	.2byte	0x17f
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF554
	.byte	0x12
	.2byte	0x17f
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF555
	.byte	0x12
	.2byte	0x181
	.4byte	0x2a9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF556
	.byte	0x12
	.2byte	0x183
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x15
	.4byte	.LASF557
	.byte	0x12
	.2byte	0x183
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF558
	.byte	0x12
	.2byte	0x183
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF559
	.byte	0x12
	.2byte	0x183
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF560
	.byte	0x12
	.2byte	0x185
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF561
	.byte	0x12
	.2byte	0x185
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF562
	.byte	0x12
	.2byte	0x187
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF563
	.byte	0x12
	.2byte	0x187
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x15
	.4byte	.LASF367
	.byte	0x12
	.2byte	0x189
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF564
	.byte	0x12
	.2byte	0x18b
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x15
	.4byte	.LASF565
	.byte	0x12
	.2byte	0x18d
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF566
	.byte	0x12
	.2byte	0x18d
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x15
	.4byte	.LASF567
	.byte	0x12
	.2byte	0x18f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF568
	.byte	0x12
	.2byte	0x18f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x15
	.4byte	.LASF569
	.byte	0x12
	.2byte	0x191
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x15
	.4byte	.LASF570
	.byte	0x12
	.2byte	0x191
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x15
	.4byte	.LASF571
	.byte	0x12
	.2byte	0x193
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x15
	.4byte	.LASF572
	.byte	0x12
	.2byte	0x195
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x15
	.4byte	.LASF573
	.byte	0x12
	.2byte	0x195
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x15
	.4byte	.LASF574
	.byte	0x12
	.2byte	0x197
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x15
	.4byte	.LASF492
	.byte	0x12
	.2byte	0x199
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x15
	.4byte	.LASF575
	.byte	0x12
	.2byte	0x19b
	.4byte	0x2ac3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x15
	.4byte	.LASF576
	.byte	0x12
	.2byte	0x19d
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x15
	.4byte	.LASF577
	.byte	0x12
	.2byte	0x19f
	.4byte	0x95f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x15
	.4byte	.LASF578
	.byte	0x12
	.2byte	0x1a1
	.4byte	0x2cb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x12
	.2byte	0x1a3
	.4byte	0x2cb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2acf
	.uleb128 0x5
	.4byte	.LASF579
	.byte	0x12
	.2byte	0x1a5
	.4byte	0x2acf
	.uleb128 0x17
	.4byte	.LASF580
	.byte	0x90
	.byte	0x12
	.2byte	0x1ab
	.4byte	0x2e24
	.uleb128 0x25
	.string	"org"
	.byte	0x12
	.2byte	0x1af
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0x12
	.2byte	0x1b0
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x12
	.2byte	0x1b3
	.4byte	0x2e24
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x25
	.string	"vel"
	.byte	0x12
	.2byte	0x1b4
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x25
	.string	"die"
	.byte	0x12
	.2byte	0x1b5
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF581
	.byte	0x12
	.2byte	0x1b5
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF492
	.byte	0x12
	.2byte	0x1b8
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF574
	.byte	0x12
	.2byte	0x1b9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x25
	.string	"rot"
	.byte	0x12
	.2byte	0x1ba
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF582
	.byte	0x12
	.2byte	0x1bb
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF372
	.byte	0x12
	.2byte	0x1bc
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF583
	.byte	0x12
	.2byte	0x1bd
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF584
	.byte	0x12
	.2byte	0x1be
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF585
	.byte	0x12
	.2byte	0x1bf
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF586
	.byte	0x12
	.2byte	0x1bf
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF572
	.byte	0x12
	.2byte	0x1c0
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x15
	.4byte	.LASF573
	.byte	0x12
	.2byte	0x1c0
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF564
	.byte	0x12
	.2byte	0x1c1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF571
	.byte	0x12
	.2byte	0x1c2
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF576
	.byte	0x12
	.2byte	0x1c3
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x15
	.4byte	.LASF578
	.byte	0x12
	.2byte	0x1c4
	.4byte	0x2e2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF577
	.byte	0x12
	.2byte	0x1c5
	.4byte	0x95f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2cc9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2cbd
	.uleb128 0x5
	.4byte	.LASF587
	.byte	0x12
	.2byte	0x1c7
	.4byte	0x2cc9
	.uleb128 0x24
	.byte	0x4
	.byte	0x12
	.2byte	0x94f
	.4byte	0x2e76
	.uleb128 0x21
	.4byte	.LASF588
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF589
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF590
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF591
	.sleb128 3
	.uleb128 0x21
	.4byte	.LASF592
	.sleb128 4
	.uleb128 0x26
	.string	"ARB"
	.sleb128 5
	.uleb128 0x21
	.4byte	.LASF593
	.sleb128 6
	.uleb128 0x26
	.string	"GL2"
	.sleb128 7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF594
	.byte	0x12
	.2byte	0x961
	.4byte	0x2e3c
	.uleb128 0x17
	.4byte	.LASF595
	.byte	0x14
	.byte	0x12
	.2byte	0x981
	.4byte	0x2eae
	.uleb128 0x15
	.4byte	.LASF596
	.byte	0x12
	.2byte	0x983
	.4byte	0xa8a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF131
	.byte	0x12
	.2byte	0x985
	.4byte	0x2eae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2e82
	.uleb128 0x5
	.4byte	.LASF597
	.byte	0x12
	.2byte	0x987
	.4byte	0x2e82
	.uleb128 0x27
	.4byte	.LASF638
	.byte	0x4
	.byte	0x12
	.2byte	0x98d
	.4byte	0x2efe
	.uleb128 0x1a
	.4byte	.LASF598
	.byte	0x12
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1a
	.4byte	.LASF599
	.byte	0x12
	.2byte	0x991
	.4byte	0x929
	.uleb128 0x1a
	.4byte	.LASF600
	.byte	0x12
	.2byte	0x993
	.4byte	0xbd1
	.uleb128 0x1a
	.4byte	.LASF601
	.byte	0x12
	.2byte	0x995
	.4byte	0xe9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF602
	.byte	0x12
	.2byte	0x997
	.4byte	0x2ec0
	.uleb128 0x14
	.4byte	.LASF603
	.2byte	0x890
	.byte	0x12
	.2byte	0x99d
	.4byte	0x30be
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x12
	.2byte	0x99f
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF604
	.byte	0x12
	.2byte	0x9a1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0x12
	.2byte	0x9a1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF228
	.byte	0x12
	.2byte	0x9a3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF605
	.byte	0x12
	.2byte	0x9a7
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF606
	.byte	0x12
	.2byte	0x9a9
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF607
	.byte	0x12
	.2byte	0x9ab
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x15
	.4byte	.LASF608
	.byte	0x12
	.2byte	0x9ad
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x15
	.4byte	.LASF609
	.byte	0x12
	.2byte	0x9af
	.4byte	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x15
	.4byte	.LASF175
	.byte	0x12
	.2byte	0x9b1
	.4byte	0x29a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x25
	.string	"vis"
	.byte	0x12
	.2byte	0x9b3
	.4byte	0x30be
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF610
	.byte	0x12
	.2byte	0x9b5
	.4byte	0x30be
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x15
	.4byte	.LASF611
	.byte	0x12
	.2byte	0x9b7
	.4byte	0x264e
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x15
	.4byte	.LASF612
	.byte	0x12
	.2byte	0x9b9
	.4byte	0x29bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x15
	.4byte	.LASF613
	.byte	0x12
	.2byte	0x9bb
	.4byte	0x26d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x15
	.4byte	.LASF614
	.byte	0x12
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x15
	.4byte	.LASF615
	.byte	0x12
	.2byte	0x9bf
	.4byte	0x30cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x15
	.4byte	.LASF616
	.byte	0x12
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x12
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x15
	.4byte	.LASF416
	.byte	0x12
	.2byte	0x9c5
	.4byte	0x17f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x15
	.4byte	.LASF617
	.byte	0x12
	.2byte	0x9c7
	.4byte	0x2eb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x15
	.4byte	.LASF618
	.byte	0x12
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x15
	.4byte	.LASF153
	.byte	0x12
	.2byte	0x9cb
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x15
	.4byte	.LASF582
	.byte	0x12
	.2byte	0x9cd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x15
	.4byte	.LASF619
	.byte	0x12
	.2byte	0x9cf
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x15
	.4byte	.LASF620
	.byte	0x12
	.2byte	0x9d1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x15
	.4byte	.LASF621
	.byte	0x12
	.2byte	0x9d3
	.4byte	0xbdc
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x30cf
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2efe
	.uleb128 0x5
	.4byte	.LASF622
	.byte	0x12
	.2byte	0x9d5
	.4byte	0x2f0a
	.uleb128 0x1e
	.4byte	.LASF623
	.4byte	0x1e864
	.byte	0x12
	.2byte	0x9db
	.4byte	0x321b
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x12
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF624
	.byte	0x12
	.2byte	0x9e1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF625
	.byte	0x12
	.2byte	0x9e1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF626
	.byte	0x12
	.2byte	0x9e1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF627
	.byte	0x12
	.2byte	0x9e1
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF628
	.byte	0x12
	.2byte	0x9e3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF270
	.byte	0x12
	.2byte	0x9e5
	.4byte	0x17f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF629
	.byte	0x12
	.2byte	0x9e7
	.4byte	0x321b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF630
	.byte	0x12
	.2byte	0x9e9
	.4byte	0x3221
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF631
	.byte	0x12
	.2byte	0x9eb
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF301
	.byte	0x12
	.2byte	0x9eb
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF632
	.byte	0x12
	.2byte	0x9ed
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x15
	.4byte	.LASF633
	.byte	0x12
	.2byte	0x9f3
	.4byte	0x3227
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF634
	.byte	0x12
	.2byte	0x9f5
	.4byte	0x3227
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x15
	.4byte	.LASF635
	.byte	0x12
	.2byte	0x9f7
	.4byte	0x3227
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x15
	.4byte	.LASF313
	.byte	0x12
	.2byte	0x9f9
	.4byte	0x3227
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x15
	.4byte	.LASF636
	.byte	0x12
	.2byte	0x9fb
	.4byte	0x323e
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x15
	.4byte	.LASF529
	.byte	0x12
	.2byte	0x9ff
	.4byte	0x324f
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x15
	.4byte	.LASF522
	.byte	0x12
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2963
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30d5
	.uleb128 0x8
	.4byte	0xbd1
	.4byte	0x323e
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x95f
	.4byte	0x324f
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x3260
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF637
	.byte	0x12
	.2byte	0xa05
	.4byte	0x30e1
	.uleb128 0x8
	.4byte	0x29fc
	.4byte	0x327d
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3260
	.uleb128 0x27
	.4byte	.LASF639
	.byte	0x4
	.byte	0x1a
	.2byte	0x490
	.4byte	0x32e3
	.uleb128 0x28
	.string	"U8"
	.byte	0x1a
	.2byte	0x492
	.4byte	0x32e3
	.uleb128 0x28
	.string	"S8"
	.byte	0x1a
	.2byte	0x493
	.4byte	0x32e8
	.uleb128 0x28
	.string	"U16"
	.byte	0x1a
	.2byte	0x494
	.4byte	0x32ed
	.uleb128 0x28
	.string	"S16"
	.byte	0x1a
	.2byte	0x495
	.4byte	0x32f2
	.uleb128 0x28
	.string	"U32"
	.byte	0x1a
	.2byte	0x496
	.4byte	0x32f7
	.uleb128 0x28
	.string	"S32"
	.byte	0x1a
	.2byte	0x497
	.4byte	0x32fc
	.uleb128 0x28
	.string	"F32"
	.byte	0x1a
	.2byte	0x498
	.4byte	0x954
	.byte	0
	.uleb128 0x1c
	.4byte	0x2c
	.uleb128 0x1c
	.4byte	0x25
	.uleb128 0x1c
	.4byte	0x3a
	.uleb128 0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	0x48
	.uleb128 0x1c
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF640
	.byte	0x1a
	.2byte	0x499
	.4byte	0x3283
	.uleb128 0xd
	.4byte	.LASF641
	.byte	0x30
	.byte	0x1
	.byte	0x1f
	.4byte	0x338a
	.uleb128 0xb
	.4byte	.LASF642
	.byte	0x1
	.byte	0x20
	.4byte	0x2e2a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"die"
	.byte	0x1
	.byte	0x21
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF643
	.byte	0x1
	.byte	0x22
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF644
	.byte	0x1
	.byte	0x23
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF645
	.byte	0x1
	.byte	0x24
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x1
	.byte	0x25
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"vel"
	.byte	0x1
	.byte	0x26
	.4byte	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x1
	.byte	0x27
	.4byte	0x338a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x330d
	.uleb128 0x4
	.4byte	.LASF646
	.byte	0x1
	.byte	0x28
	.4byte	0x330d
	.uleb128 0x18
	.byte	0x3c
	.byte	0x1
	.2byte	0x5ea
	.4byte	0x33e1
	.uleb128 0x15
	.4byte	.LASF647
	.byte	0x1
	.2byte	0x5eb
	.4byte	0x33e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x25
	.string	"rot"
	.byte	0x1
	.2byte	0x5ec
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF648
	.byte	0x1
	.2byte	0x5ed
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF649
	.byte	0x1
	.2byte	0x5ee
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x8
	.4byte	0xbd1
	.4byte	0x33f7
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF650
	.byte	0x1
	.2byte	0x5ef
	.4byte	0x339b
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF740
	.byte	0x1
	.2byte	0x5f4
	.byte	0x1
	.byte	0x1
	.4byte	0x3457
	.uleb128 0x2a
	.4byte	.LASF647
	.byte	0x1
	.2byte	0x5f4
	.4byte	0x3457
	.uleb128 0x2b
	.string	"rot"
	.byte	0x1
	.2byte	0x5f4
	.4byte	0x929
	.uleb128 0x2a
	.4byte	.LASF648
	.byte	0x1
	.2byte	0x5f4
	.4byte	0x41
	.uleb128 0x2a
	.4byte	.LASF649
	.byte	0x1
	.2byte	0x5f4
	.4byte	0x929
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x5f5
	.4byte	0x41
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.2byte	0x5f5
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbdc
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF654
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x3490
	.uleb128 0x2e
	.string	"eff"
	.byte	0x1
	.byte	0x45
	.4byte	0x2e2a
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x41
	.4byte	.LLST0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF741
	.byte	0x1
	.2byte	0x117
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST1
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x11e
	.byte	0x1
	.4byte	0x2e2a
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST2
	.4byte	0x34e4
	.uleb128 0x32
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x11e
	.4byte	0x5f9
	.4byte	.LLST3
	.uleb128 0x33
	.4byte	.LASF651
	.byte	0x1
	.2byte	0x120
	.4byte	0x2e2a
	.4byte	.LLST4
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x12d
	.byte	0x1
	.4byte	0x2e2a
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST5
	.4byte	0x3523
	.uleb128 0x32
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x12d
	.4byte	0x5f9
	.4byte	.LLST6
	.uleb128 0x33
	.4byte	.LASF651
	.byte	0x1
	.2byte	0x12f
	.4byte	0x2e2a
	.4byte	.LLST7
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF655
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST8
	.4byte	0x35a4
	.uleb128 0x35
	.4byte	.LASF656
	.byte	0x1
	.byte	0x73
	.4byte	0x5f9
	.4byte	.LLST9
	.uleb128 0x36
	.4byte	.LASF657
	.byte	0x1
	.byte	0x75
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x2f
	.string	"var"
	.byte	0x1
	.byte	0x75
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x75
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x36
	.4byte	.LASF642
	.byte	0x1
	.byte	0x76
	.4byte	0x2e2a
	.4byte	.LLST13
	.uleb128 0x36
	.4byte	.LASF658
	.byte	0x1
	.byte	0x77
	.4byte	0x5c7
	.4byte	.LLST14
	.uleb128 0x2f
	.string	"str"
	.byte	0x1
	.byte	0x79
	.4byte	0x5c7
	.4byte	.LLST15
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x137
	.byte	0x1
	.4byte	0x929
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST16
	.4byte	0x35e3
	.uleb128 0x37
	.string	"min"
	.byte	0x1
	.2byte	0x137
	.4byte	0x929
	.4byte	.LLST17
	.uleb128 0x37
	.string	"max"
	.byte	0x1
	.2byte	0x137
	.4byte	0x929
	.4byte	.LLST18
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x13b
	.byte	0x1
	.4byte	0x363a
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST19
	.4byte	0x363a
	.uleb128 0x32
	.4byte	.LASF642
	.byte	0x1
	.2byte	0x13b
	.4byte	0x2e2a
	.4byte	.LLST20
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x3640
	.4byte	.LLST21
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x13d
	.4byte	0x363a
	.4byte	.LLST22
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2e30
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbd1
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x172
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST23
	.4byte	0x3685
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x174
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF742
	.byte	0x1
	.2byte	0x18b
	.4byte	0x41
	.byte	0x1
	.uleb128 0x3c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x198
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST25
	.4byte	0x36f3
	.uleb128 0x3d
	.string	"org"
	.byte	0x1
	.2byte	0x19a
	.4byte	0xbdc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x41
	.4byte	.LLST26
	.uleb128 0x33
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x19b
	.4byte	0x41
	.4byte	.LLST27
	.uleb128 0x3e
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x19c
	.4byte	0x5c7
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x2e2a
	.4byte	.LLST28
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.2byte	0x19e
	.4byte	0x363a
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF663
	.byte	0x1
	.2byte	0x1b3
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST29
	.4byte	0x3786
	.uleb128 0x2c
	.string	"org"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xbdc
	.uleb128 0x2c
	.string	"vel"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xbdc
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x41
	.4byte	.LLST30
	.uleb128 0x33
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x3e
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x5c7
	.uleb128 0x3d
	.string	"eff"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x2e2a
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.string	"emt"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x3786
	.4byte	.LLST32
	.uleb128 0x3e
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x929
	.uleb128 0x3e
	.4byte	.LASF643
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x929
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3390
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x1f3
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST33
	.4byte	0x385b
	.uleb128 0x37
	.string	"ent"
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x17f0
	.4byte	.LLST34
	.uleb128 0x3f
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x41
	.byte	0x32
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x41
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x363a
	.4byte	.LLST35
	.uleb128 0x33
	.4byte	.LASF665
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x929
	.4byte	.LLST36
	.uleb128 0x2c
	.string	"sr"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x929
	.uleb128 0x2c
	.string	"sp"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x929
	.uleb128 0x2c
	.string	"sy"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x929
	.uleb128 0x2c
	.string	"cr"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x929
	.uleb128 0x2c
	.string	"cp"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x929
	.uleb128 0x2c
	.string	"cy"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x929
	.uleb128 0x3e
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xbdc
	.uleb128 0x40
	.4byte	.LASF461
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x929
	.byte	0x4
	.4byte	0x42800000
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x2e2a
	.4byte	.LLST37
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x22a
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x3883
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x41
	.4byte	.LLST38
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x240
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST39
	.4byte	0x3906
	.uleb128 0x3d
	.string	"f"
	.byte	0x1
	.2byte	0x242
	.4byte	0x17f6
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3d
	.string	"org"
	.byte	0x1
	.2byte	0x243
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x38
	.string	"r"
	.byte	0x1
	.2byte	0x244
	.4byte	0x41
	.4byte	.LLST40
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.2byte	0x245
	.4byte	0x41
	.4byte	.LLST41
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x246
	.4byte	0x363a
	.4byte	.LLST42
	.uleb128 0x42
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x247
	.4byte	0xb9b
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x248
	.4byte	0x2e2a
	.4byte	.LLST43
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x28a
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST44
	.4byte	0x395f
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x3640
	.4byte	.LLST45
	.uleb128 0x32
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x28a
	.4byte	0x41
	.4byte	.LLST46
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x28c
	.4byte	0x41
	.4byte	.LLST47
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x2e2a
	.4byte	.LLST48
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x2cd
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST49
	.4byte	0x39b8
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0x3640
	.4byte	.LLST50
	.uleb128 0x32
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x2cd
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x2cf
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x2e2a
	.4byte	.LLST53
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x2e9
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST54
	.4byte	0x39fd
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x3640
	.4byte	.LLST55
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x2eb
	.4byte	0x41
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x2e2a
	.4byte	.LLST56
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF672
	.byte	0x1
	.2byte	0x301
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST57
	.4byte	0x3a62
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x301
	.4byte	0x3640
	.4byte	.LLST58
	.uleb128 0x32
	.4byte	.LASF673
	.byte	0x1
	.2byte	0x301
	.4byte	0x41
	.4byte	.LLST59
	.uleb128 0x32
	.4byte	.LASF674
	.byte	0x1
	.2byte	0x301
	.4byte	0x41
	.4byte	.LLST60
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x303
	.4byte	0x41
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x304
	.4byte	0x2e2a
	.4byte	.LLST61
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF675
	.byte	0x1
	.2byte	0x317
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST62
	.4byte	0x3aa7
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x317
	.4byte	0x3640
	.4byte	.LLST63
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x319
	.4byte	0x41
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x31a
	.4byte	0x2e2a
	.4byte	.LLST64
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF676
	.byte	0x1
	.2byte	0x32f
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST65
	.4byte	0x3b20
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x32f
	.4byte	0x3640
	.4byte	.LLST66
	.uleb128 0x37
	.string	"dir"
	.byte	0x1
	.2byte	0x32f
	.4byte	0x3640
	.4byte	.LLST67
	.uleb128 0x32
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x32f
	.4byte	0x41
	.4byte	.LLST68
	.uleb128 0x32
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x32f
	.4byte	0x41
	.4byte	.LLST69
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x331
	.4byte	0x41
	.4byte	.LLST70
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x332
	.4byte	0x2e2a
	.4byte	.LLST71
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF677
	.byte	0x1
	.2byte	0x26f
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST72
	.4byte	0x3b97
	.uleb128 0x3d
	.string	"org"
	.byte	0x1
	.2byte	0x271
	.4byte	0xbdc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3d
	.string	"dir"
	.byte	0x1
	.2byte	0x271
	.4byte	0xbdc
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x272
	.4byte	0x41
	.4byte	.LLST73
	.uleb128 0x33
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x272
	.4byte	0x41
	.4byte	.LLST74
	.uleb128 0x33
	.4byte	.LASF678
	.byte	0x1
	.2byte	0x272
	.4byte	0x41
	.4byte	.LLST75
	.uleb128 0x33
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x272
	.4byte	0x41
	.4byte	.LLST76
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF679
	.byte	0x1
	.2byte	0x34b
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST77
	.4byte	0x3c22
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x34b
	.4byte	0x3640
	.4byte	.LLST78
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x34d
	.4byte	0x41
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.2byte	0x34d
	.4byte	0x41
	.4byte	.LLST79
	.uleb128 0x38
	.string	"k"
	.byte	0x1
	.2byte	0x34d
	.4byte	0x41
	.4byte	.LLST80
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x34e
	.4byte	0x363a
	.4byte	.LLST81
	.uleb128 0x2c
	.string	"vel"
	.byte	0x1
	.2byte	0x34f
	.4byte	0x929
	.uleb128 0x3d
	.string	"dir"
	.byte	0x1
	.2byte	0x350
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x351
	.4byte	0x2e2a
	.4byte	.LLST82
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x36f
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST83
	.4byte	0x3cb1
	.uleb128 0x37
	.string	"org"
	.byte	0x1
	.2byte	0x36f
	.4byte	0x3640
	.4byte	.LLST84
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x371
	.4byte	0x41
	.4byte	.LLST85
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.2byte	0x371
	.4byte	0x41
	.4byte	.LLST86
	.uleb128 0x38
	.string	"k"
	.byte	0x1
	.2byte	0x371
	.4byte	0x41
	.4byte	.LLST87
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x372
	.4byte	0x363a
	.4byte	.LLST88
	.uleb128 0x2c
	.string	"vel"
	.byte	0x1
	.2byte	0x373
	.4byte	0x929
	.uleb128 0x3d
	.string	"dir"
	.byte	0x1
	.2byte	0x374
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x375
	.4byte	0x2e2a
	.4byte	.LLST89
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF681
	.byte	0x1
	.2byte	0x38d
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST90
	.4byte	0x3d60
	.uleb128 0x32
	.4byte	.LASF682
	.byte	0x1
	.2byte	0x38d
	.4byte	0x3640
	.4byte	.LLST91
	.uleb128 0x37
	.string	"end"
	.byte	0x1
	.2byte	0x38d
	.4byte	0x3640
	.4byte	.LLST92
	.uleb128 0x32
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x38d
	.4byte	0x41
	.4byte	.LLST93
	.uleb128 0x3d
	.string	"vec"
	.byte	0x1
	.2byte	0x38f
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.2byte	0x390
	.4byte	0x929
	.4byte	.LLST94
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.2byte	0x391
	.4byte	0x41
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x392
	.4byte	0x363a
	.4byte	.LLST95
	.uleb128 0x38
	.string	"dec"
	.byte	0x1
	.2byte	0x393
	.4byte	0x41
	.4byte	.LLST96
	.uleb128 0x3e
	.4byte	.LASF683
	.byte	0x1
	.2byte	0x394
	.4byte	0x41
	.uleb128 0x38
	.string	"eff"
	.byte	0x1
	.2byte	0x395
	.4byte	0x2e2a
	.4byte	.LLST97
	.byte	0
	.uleb128 0x43
	.4byte	0x3403
	.4byte	.LFB62
	.4byte	.LFE62
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x3ddc
	.uleb128 0x44
	.4byte	0x3412
	.4byte	.LLST98
	.uleb128 0x45
	.4byte	0x341e
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x45
	.4byte	0x342a
	.byte	0x1
	.byte	0x54
	.uleb128 0x45
	.4byte	0x3436
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x46
	.4byte	0x3442
	.uleb128 0x46
	.4byte	0x344c
	.uleb128 0x47
	.4byte	0x3403
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.2byte	0x5f4
	.uleb128 0x48
	.4byte	0x3436
	.uleb128 0x48
	.4byte	0x342a
	.uleb128 0x48
	.4byte	0x341e
	.uleb128 0x48
	.4byte	0x3412
	.uleb128 0x49
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x46
	.4byte	0x3442
	.uleb128 0x4a
	.4byte	0x344c
	.4byte	.LLST99
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF684
	.byte	0x1
	.2byte	0x4dd
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST100
	.4byte	0x3f91
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x4df
	.4byte	0x363a
	.4byte	.LLST101
	.uleb128 0x33
	.4byte	.LASF685
	.byte	0x1
	.2byte	0x4df
	.4byte	0x363a
	.4byte	.LLST102
	.uleb128 0x3e
	.4byte	.LASF686
	.byte	0x1
	.2byte	0x4e0
	.4byte	0x929
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x4e1
	.4byte	0x41
	.4byte	.LLST103
	.uleb128 0x3e
	.4byte	.LASF687
	.byte	0x1
	.2byte	0x4e2
	.4byte	0x929
	.uleb128 0x3e
	.4byte	.LASF688
	.byte	0x1
	.2byte	0x4e2
	.4byte	0x929
	.uleb128 0x3e
	.4byte	.LASF689
	.byte	0x1
	.2byte	0x4e3
	.4byte	0x929
	.uleb128 0x3e
	.4byte	.LASF690
	.byte	0x1
	.2byte	0x4e4
	.4byte	0x929
	.uleb128 0x33
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x4e4
	.4byte	0x929
	.4byte	.LLST104
	.uleb128 0x33
	.4byte	.LASF691
	.byte	0x1
	.2byte	0x4e4
	.4byte	0x929
	.4byte	.LLST105
	.uleb128 0x42
	.4byte	.LASF692
	.byte	0x1
	.2byte	0x4e5
	.4byte	0x929
	.byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.uleb128 0x3d
	.string	"up"
	.byte	0x1
	.2byte	0x4e6
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x42
	.4byte	.LASF693
	.byte	0x1
	.2byte	0x4e6
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x42
	.4byte	.LASF694
	.byte	0x1
	.2byte	0x4e6
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.4byte	.LASF515
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x929
	.4byte	.LLST106
	.uleb128 0x33
	.4byte	.LASF695
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x929
	.4byte	.LLST107
	.uleb128 0x33
	.4byte	.LASF696
	.byte	0x1
	.2byte	0x4e8
	.4byte	0x3786
	.4byte	.LLST108
	.uleb128 0x38
	.string	"emt"
	.byte	0x1
	.2byte	0x4e8
	.4byte	0x3786
	.4byte	.LLST109
	.uleb128 0x33
	.4byte	.LASF649
	.byte	0x1
	.2byte	0x4e9
	.4byte	0x929
	.4byte	.LLST110
	.uleb128 0x4b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x3f26
	.uleb128 0x42
	.4byte	.LASF697
	.byte	0x1
	.2byte	0x521
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x4b
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x3f40
	.uleb128 0x33
	.4byte	.LASF698
	.byte	0x1
	.2byte	0x558
	.4byte	0x929
	.4byte	.LLST111
	.byte	0
	.uleb128 0x4b
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x3f7a
	.uleb128 0x42
	.4byte	.LASF699
	.byte	0x1
	.2byte	0x5b6
	.4byte	0x2a80
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.2byte	0x5b7
	.4byte	0x929
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x42
	.4byte	.LASF700
	.byte	0x1
	.2byte	0x5be
	.4byte	0xbdc
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x42
	.4byte	.LASF647
	.byte	0x1
	.2byte	0x58c
	.4byte	0x33e1
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF743
	.byte	0x1
	.2byte	0x60f
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x4d
	.4byte	.LASF701
	.byte	0x1
	.byte	0x38
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	ppSpriteFp
	.uleb128 0x4d
	.4byte	.LASF702
	.byte	0x1
	.byte	0x39
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	ppSpriteVp
	.uleb128 0x42
	.4byte	.LASF703
	.byte	0x1
	.2byte	0x5f1
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	numPostProcessQuads
	.uleb128 0x8
	.4byte	0x33f7
	.4byte	0x3fea
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x42
	.4byte	.LASF704
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x3fda
	.byte	0x5
	.byte	0x3
	.4byte	postProcessQuads
	.uleb128 0x3e
	.4byte	.LASF705
	.byte	0x1
	.2byte	0x606
	.4byte	0x220b
	.uleb128 0x4e
	.4byte	.LASF706
	.byte	0x8
	.byte	0x9b
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.4byte	.LASF707
	.byte	0xc
	.byte	0x28
	.4byte	0xbdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.4byte	.LASF708
	.byte	0x12
	.2byte	0x23f
	.4byte	0x16fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.string	"vpn"
	.byte	0x12
	.2byte	0x231
	.4byte	0xbdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.4byte	.LASF709
	.byte	0x12
	.2byte	0x233
	.4byte	0xbdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.string	"vup"
	.byte	0x12
	.2byte	0x22f
	.4byte	0xbdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.string	"cl"
	.byte	0x13
	.2byte	0x11b
	.4byte	0x1b13
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.string	"sv"
	.byte	0x17
	.byte	0xcf
	.4byte	0x2200
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.4byte	.LASF710
	.byte	0x12
	.2byte	0x300
	.4byte	0xd2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.4byte	.LASF711
	.byte	0x12
	.2byte	0x30e
	.4byte	0xbf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.4byte	.LASF712
	.byte	0x12
	.2byte	0x32c
	.4byte	0xbf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x40b3
	.uleb128 0x9
	.4byte	0x48
	.byte	0xa1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x409d
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.4byte	.LASF714
	.byte	0x12
	.2byte	0x963
	.4byte	0x2e76
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.4byte	.LASF715
	.byte	0x12
	.2byte	0xc2c
	.4byte	0x2654
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x4f
	.4byte	.LASF716
	.byte	0x1a
	.2byte	0x548
	.4byte	0x40f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x40f5
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3301
	.uleb128 0x4e
	.4byte	.LASF717
	.byte	0x1b
	.byte	0x3c
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x4118
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x53
	.4byte	.LASF718
	.byte	0x1
	.byte	0x2a
	.4byte	0x4108
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ramp1
	.uleb128 0x53
	.4byte	.LASF719
	.byte	0x1
	.byte	0x2b
	.4byte	0x4108
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ramp2
	.uleb128 0x53
	.4byte	.LASF720
	.byte	0x1
	.byte	0x2c
	.4byte	0x4108
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ramp3
	.uleb128 0x53
	.4byte	.LASF721
	.byte	0x1
	.byte	0x2e
	.4byte	0x363a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	active_particles
	.uleb128 0x53
	.4byte	.LASF722
	.byte	0x1
	.byte	0x2e
	.4byte	0x363a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	free_particles
	.uleb128 0x53
	.4byte	.LASF723
	.byte	0x1
	.byte	0x30
	.4byte	0x363a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particles
	.uleb128 0x53
	.4byte	.LASF724
	.byte	0x1
	.byte	0x31
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_numparticles
	.uleb128 0x53
	.4byte	.LASF725
	.byte	0x1
	.byte	0x33
	.4byte	0x3786
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	emitters
	.uleb128 0x53
	.4byte	.LASF726
	.byte	0x1
	.byte	0x33
	.4byte	0x3786
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	active_emitters
	.uleb128 0x53
	.4byte	.LASF727
	.byte	0x1
	.byte	0x33
	.4byte	0x3786
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	free_emitters
	.uleb128 0x53
	.4byte	.LASF728
	.byte	0x1
	.byte	0x34
	.4byte	0x2e2a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particleEffects
	.uleb128 0x53
	.4byte	.LASF729
	.byte	0x1
	.byte	0x36
	.4byte	0xbdc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_pright
	.uleb128 0x53
	.4byte	.LASF730
	.byte	0x1
	.byte	0x36
	.4byte	0xbdc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_pup
	.uleb128 0x53
	.4byte	.LASF731
	.byte	0x1
	.byte	0x36
	.4byte	0xbdc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_ppn
	.uleb128 0x8
	.4byte	0xbd1
	.4byte	0x422a
	.uleb128 0x9
	.4byte	0x48
	.byte	0xa1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x52
	.4byte	.LASF732
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x4214
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	avelocities
	.uleb128 0x52
	.4byte	.LASF733
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	beamlength
	.uleb128 0x52
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x1ef
	.4byte	0xbdc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	avelocity
	.uleb128 0x52
	.4byte	.LASF734
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	partstep
	.uleb128 0x52
	.4byte	.LASF735
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	timescale
	.uleb128 0x4f
	.4byte	.LASF736
	.byte	0x1
	.2byte	0x4db
	.4byte	0xd2a
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB40-.Ltext0
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
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB41-.Ltext0
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
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	particleEffects
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB42-.Ltext0
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
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-1-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-1-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-1-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-1-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-1-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-1-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-1-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-1-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104-1-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	free_particles
	.4byte	.LVL104-1-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-1-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	free_emitters
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL156-1-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL204-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL202-1-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL209-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL212-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212-1-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL216-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI41-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL250-1-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL237-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL237-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL249-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL237-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL237-1-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL249-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL250-1-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL251-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL251-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL267-1-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x400
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL258-1-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL267-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL283-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL283-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL273-1-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL283-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL283-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xe8
	.byte	0x9f
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290-1-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL305-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL305-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL305-1-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x4
	.byte	0x8c
	.sleb128 128
	.byte	0x9f
	.4byte	.LVL323-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL319-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL324-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL333-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL338-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 240
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 240
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL408-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	active_particles
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 24
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 24
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 24
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL384-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 24
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL409-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL398-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL398-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 64
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	active_emitters
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 44
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 44
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 44
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 44
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL347-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL401-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
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
	.4byte	0
	.4byte	0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF581:
	.string	"lifetime"
.LASF163:
	.string	"pflags"
.LASF391:
	.string	"button0"
.LASF418:
	.string	"message"
.LASF448:
	.string	"reliable_datagram_buf"
.LASF686:
	.string	"grav"
.LASF595:
	.string	"screenrect_s"
.LASF597:
	.string	"screenrect_t"
.LASF286:
	.string	"aliasvrectbottom"
.LASF490:
	.string	"vecs"
.LASF309:
	.string	"upmove"
.LASF727:
	.string	"free_emitters"
.LASF399:
	.string	"team"
.LASF400:
	.string	"max_health"
.LASF404:
	.string	"waterlevel"
.LASF487:
	.string	"texture_t"
.LASF121:
	.string	"_Bool"
.LASF648:
	.string	"texNum"
.LASF190:
	.string	"entity_s"
.LASF280:
	.string	"entity_t"
.LASF59:
	.string	"_mbstate"
.LASF38:
	.string	"_atexit"
.LASF236:
	.string	"numplanes"
.LASF368:
	.string	"solid"
.LASF439:
	.string	"models"
.LASF206:
	.string	"frame_start_time"
.LASF201:
	.string	"lightTimestamp"
.LASF527:
	.string	"binormals"
.LASF725:
	.string	"emitters"
.LASF28:
	.string	"__tm_mon"
.LASF36:
	.string	"_fntypes"
.LASF455:
	.string	"lightnormalindex"
.LASF696:
	.string	"ekill"
.LASF66:
	.string	"_inc"
.LASF39:
	.string	"_ind"
.LASF444:
	.string	"state"
.LASF298:
	.string	"horizontalFieldOfView"
.LASF486:
	.string	"samples"
.LASF210:
	.string	"pose2"
.LASF552:
	.string	"ParticleEffect_s"
.LASF579:
	.string	"ParticleEffect_t"
.LASF271:
	.string	"lastshadowonly"
.LASF503:
	.string	"lastclipnode"
.LASF178:
	.string	"entnext"
.LASF205:
	.string	"topnode"
.LASF458:
	.string	"mvertex_t"
.LASF45:
	.string	"_flags"
.LASF431:
	.string	"ss_loading"
.LASF131:
	.string	"next"
.LASF539:
	.string	"plane_t"
.LASF697:
	.string	"length"
.LASF274:
	.string	"vertices"
.LASF219:
	.string	"angles1"
.LASF220:
	.string	"angles2"
.LASF283:
	.string	"vrectright"
.LASF350:
	.string	"maxclients"
.LASF76:
	.string	"_cvtlen"
.LASF80:
	.string	"_sig_func"
.LASF594:
	.string	"qcardtype"
.LASF619:
	.string	"cubescale"
.LASF544:
	.string	"endpos"
.LASF146:
	.string	"height"
.LASF416:
	.string	"owner"
.LASF58:
	.string	"_lock"
.LASF54:
	.string	"_nbuf"
.LASF113:
	.string	"_unused"
.LASF644:
	.string	"nexttick"
.LASF564:
	.string	"gravity"
.LASF525:
	.string	"commands"
.LASF212:
	.string	"brushlightinstant"
.LASF401:
	.string	"teleport_time"
.LASF335:
	.string	"viewheight"
.LASF553:
	.string	"emmiterParams1"
.LASF554:
	.string	"emmiterParams2"
.LASF222:
	.string	"model_s"
.LASF421:
	.string	"noise1"
.LASF422:
	.string	"noise2"
.LASF423:
	.string	"noise3"
.LASF492:
	.string	"texture"
.LASF409:
	.string	"goalentity"
.LASF707:
	.string	"vec3_origin"
.LASF69:
	.string	"_current_locale"
.LASF254:
	.string	"hulls"
.LASF184:
	.string	"compressed_vis"
.LASF734:
	.string	"partstep"
.LASF616:
	.string	"numVisSurf"
.LASF247:
	.string	"numsurfaces"
.LASF91:
	.string	"_add"
.LASF351:
	.string	"gametype"
.LASF385:
	.string	"ammo_rockets"
.LASF663:
	.string	"R_ParseExtendedEmitter"
.LASF571:
	.string	"drag"
.LASF711:
	.string	"fog_color"
.LASF417:
	.string	"movedir"
.LASF406:
	.string	"ideal_yaw"
.LASF151:
	.string	"vec_t"
.LASF373:
	.string	"touch"
.LASF398:
	.string	"enemy"
.LASF233:
	.string	"nummodelsurfaces"
.LASF710:
	.string	"gl_wireframe"
.LASF278:
	.string	"triplanes"
.LASF47:
	.string	"_lbfsize"
.LASF348:
	.string	"levelname"
.LASF297:
	.string	"fvrectbottom"
.LASF207:
	.string	"frame_interval"
.LASF493:
	.string	"mtexinfo_t"
.LASF282:
	.string	"aliasvrect"
.LASF706:
	.string	"com_argv"
.LASF119:
	.string	"byte"
.LASF680:
	.string	"R_TeleportSplash"
.LASF603:
	.string	"shadowlight_s"
.LASF622:
	.string	"shadowlight_t"
.LASF57:
	.string	"_data"
.LASF377:
	.string	"groundentity"
.LASF384:
	.string	"ammo_nails"
.LASF426:
	.string	"free"
.LASF388:
	.string	"chain"
.LASF188:
	.string	"index"
.LASF691:
	.string	"blend1"
.LASF566:
	.string	"rotmax"
.LASF191:
	.string	"forcelink"
.LASF61:
	.string	"_reent"
.LASF153:
	.string	"angles"
.LASF517:
	.string	"boundingradius"
.LASF567:
	.string	"growmin"
.LASF189:
	.string	"ambient_sound_level"
.LASF82:
	.string	"__sf"
.LASF226:
	.string	"synctype"
.LASF42:
	.string	"_base"
.LASF433:
	.string	"server_state_t"
.LASF211:
	.string	"aliasframeinstant"
.LASF334:
	.string	"laststop"
.LASF240:
	.string	"vertexes"
.LASF100:
	.string	"_mbtowc_state"
.LASF692:
	.string	"frametime"
.LASF718:
	.string	"ramp1"
.LASF719:
	.string	"ramp2"
.LASF720:
	.string	"ramp3"
.LASF310:
	.string	"usercmd_t"
.LASF215:
	.string	"translate_start_time"
.LASF425:
	.string	"edict_s"
.LASF430:
	.string	"edict_t"
.LASF627:
	.string	"lastvorg"
.LASF555:
	.string	"emmiterType"
.LASF369:
	.string	"oldorigin"
.LASF291:
	.string	"fvrecty_adj"
.LASF23:
	.string	"__tm"
.LASF443:
	.string	"edicts"
.LASF736:
	.string	"sv_gravity"
.LASF432:
	.string	"ss_active"
.LASF396:
	.string	"v_angle"
.LASF660:
	.string	"InitParticleFromEffect"
.LASF248:
	.string	"surfaces"
.LASF31:
	.string	"__tm_yday"
.LASF162:
	.string	"light_lev"
.LASF134:
	.string	"maxs"
.LASF224:
	.string	"type"
.LASF533:
	.string	"aliashdr_t"
.LASF244:
	.string	"nodes"
.LASF735:
	.string	"timescale"
.LASF466:
	.string	"gl_lumitex"
.LASF177:
	.string	"entity"
.LASF290:
	.string	"fvrectx_adj"
.LASF92:
	.string	"_unused_rand"
.LASF695:
	.string	"sscale"
.LASF329:
	.string	"punchangle"
.LASF708:
	.string	"r_refdef"
.LASF474:
	.string	"msurface_s"
.LASF499:
	.string	"msurface_t"
.LASF199:
	.string	"syncbase"
.LASF672:
	.string	"R_ParticleExplosion2"
.LASF285:
	.string	"aliasvrectright"
.LASF306:
	.string	"refdef_t"
.LASF349:
	.string	"viewentity"
.LASF294:
	.string	"fvrectright_adj"
.LASF620:
	.string	"haloalpha"
.LASF73:
	.string	"_result_k"
.LASF65:
	.string	"_stderr"
.LASF72:
	.string	"_result"
.LASF365:
	.string	"absmax"
.LASF35:
	.string	"_dso_handle"
.LASF262:
	.string	"firstsurface"
.LASF608:
	.string	"castShadow"
.LASF30:
	.string	"__tm_wday"
.LASF402:
	.string	"armortype"
.LASF715:
	.string	"causticschain"
.LASF32:
	.string	"__tm_isdst"
.LASF414:
	.string	"dmg_save"
.LASF261:
	.string	"plane"
.LASF265:
	.string	"updateframe"
.LASF208:
	.string	"blend"
.LASF318:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"_stdout"
.LASF295:
	.string	"fvrectbottom_adj"
.LASF472:
	.string	"alternate_anims"
.LASF107:
	.string	"_mbsrtowcs_state"
.LASF669:
	.string	"R_ParticleGunHits"
.LASF269:
	.string	"lastblend"
.LASF21:
	.string	"_wds"
.LASF637:
	.string	"aliaslightinstant_t"
.LASF115:
	.string	"float"
.LASF157:
	.string	"skin"
.LASF412:
	.string	"targetname"
.LASF635:
	.string	"tshalfangles"
.LASF139:
	.string	"numfaces"
.LASF43:
	.string	"_size"
.LASF662:
	.string	"R_ParseBasicEmitter"
.LASF478:
	.string	"light_s"
.LASF479:
	.string	"light_t"
.LASF538:
	.string	"modtype_t"
.LASF411:
	.string	"target"
.LASF529:
	.string	"indecies"
.LASF323:
	.string	"faceanimtime"
.LASF209:
	.string	"pose1"
.LASF50:
	.string	"_write"
.LASF577:
	.string	"isPostProcess"
.LASF613:
	.string	"volumeVerts"
.LASF424:
	.string	"entvars_t"
.LASF267:
	.string	"lastpose1"
.LASF268:
	.string	"lastpose2"
.LASF321:
	.string	"items"
.LASF123:
	.string	"allowoverflow"
.LASF646:
	.string	"ParticleEmitter_t"
.LASF126:
	.string	"maxsize"
.LASF642:
	.string	"effect"
.LASF610:
	.string	"entvis"
.LASF505:
	.string	"clip_maxs"
.LASF565:
	.string	"rotmin"
.LASF484:
	.string	"cached_light"
.LASF494:
	.string	"glpoly_s"
.LASF498:
	.string	"glpoly_t"
.LASF29:
	.string	"__tm_year"
.LASF137:
	.string	"visleafs"
.LASF90:
	.string	"_mult"
.LASF452:
	.string	"ST_SYNC"
.LASF344:
	.string	"oldtime"
.LASF229:
	.string	"clipbox"
.LASF105:
	.string	"_mbrlen_state"
.LASF596:
	.string	"coords"
.LASF180:
	.string	"contents"
.LASF353:
	.string	"free_efrags"
.LASF655:
	.string	"R_AddEffectsScript"
.LASF449:
	.string	"signon"
.LASF664:
	.string	"R_EntityParticles"
.LASF446:
	.string	"datagram_buf"
.LASF63:
	.string	"_stdin"
.LASF112:
	.string	"_nmalloc"
.LASF483:
	.string	"styles"
.LASF568:
	.string	"growmax"
.LASF515:
	.string	"scale"
.LASF573:
	.string	"dstblend"
.LASF198:
	.string	"efrag"
.LASF531:
	.string	"texels"
.LASF606:
	.string	"visible"
.LASF272:
	.string	"lastpaliashdr"
.LASF372:
	.string	"size"
.LASF118:
	.string	"FILE"
.LASF668:
	.string	"R_ReadPointFile_f"
.LASF693:
	.string	"right"
.LASF653:
	.string	"ParticleEffectForName"
.LASF303:
	.string	"fov_x"
.LASF304:
	.string	"fov_y"
.LASF154:
	.string	"modelindex"
.LASF216:
	.string	"origin1"
.LASF530:
	.string	"gl_lumatex"
.LASF541:
	.string	"startsolid"
.LASF263:
	.string	"aliasframeinstant_s"
.LASF470:
	.string	"anim_max"
.LASF95:
	.string	"_localtime_buf"
.LASF12:
	.string	"__count"
.LASF364:
	.string	"absmin"
.LASF405:
	.string	"watertype"
.LASF352:
	.string	"worldmodel"
.LASF625:
	.string	"lastlorg"
.LASF429:
	.string	"freetime"
.LASF617:
	.string	"scizz"
.LASF77:
	.string	"_cvtbuf"
.LASF512:
	.string	"maliasframedesc_t"
.LASF129:
	.string	"link_s"
.LASF132:
	.string	"link_t"
.LASF242:
	.string	"edges"
.LASF266:
	.string	"paliashdr"
.LASF445:
	.string	"datagram"
.LASF192:
	.string	"update_type"
.LASF516:
	.string	"scale_origin"
.LASF202:
	.string	"dlightframe"
.LASF11:
	.string	"__wchb"
.LASF106:
	.string	"_mbrtowc_state"
.LASF26:
	.string	"__tm_hour"
.LASF287:
	.string	"vrectrightedge"
.LASF543:
	.string	"fraction"
.LASF473:
	.string	"offsets"
.LASF138:
	.string	"firstface"
.LASF217:
	.string	"origin2"
.LASF9:
	.string	"wint_t"
.LASF338:
	.string	"onground"
.LASF78:
	.string	"_new"
.LASF561:
	.string	"velocitymax"
.LASF86:
	.string	"_niobs"
.LASF726:
	.string	"active_emitters"
.LASF650:
	.string	"ppQuad_t"
.LASF546:
	.string	"emt_box"
.LASF714:
	.string	"gl_cardtype"
.LASF636:
	.string	"triangleVis"
.LASF545:
	.string	"trace_t"
.LASF375:
	.string	"blocked"
.LASF270:
	.string	"lastent"
.LASF588:
	.string	"GENERIC"
.LASF62:
	.string	"_errno"
.LASF332:
	.string	"nodrift"
.LASF464:
	.string	"texture_s"
.LASF27:
	.string	"__tm_mday"
.LASF671:
	.string	"R_ParticleExplosion"
.LASF326:
	.string	"mviewangles"
.LASF654:
	.string	"DefaultEffect"
.LASF34:
	.string	"_fnargs"
.LASF253:
	.string	"marksurfaces"
.LASF454:
	.string	"synctype_t"
.LASF124:
	.string	"overflowed"
.LASF223:
	.string	"needload"
.LASF607:
	.string	"isStatic"
.LASF532:
	.string	"frames"
.LASF482:
	.string	"lightmaptexturenum"
.LASF611:
	.string	"visSurf"
.LASF170:
	.string	"value"
.LASF467:
	.string	"texturechain"
.LASF204:
	.string	"trivial_accept"
.LASF18:
	.string	"_next"
.LASF723:
	.string	"particles"
.LASF103:
	.string	"_signal_buf"
.LASF395:
	.string	"fixangle"
.LASF585:
	.string	"startcolor"
.LASF48:
	.string	"_cookie"
.LASF551:
	.string	"align_t"
.LASF676:
	.string	"R_RunParticleEffect"
.LASF410:
	.string	"spawnflags"
.LASF673:
	.string	"colorStart"
.LASF374:
	.string	"think"
.LASF643:
	.string	"tick"
.LASF481:
	.string	"shadowchain"
.LASF502:
	.string	"firstclipnode"
.LASF476:
	.string	"texturemins"
.LASF436:
	.string	"lastcheck"
.LASF363:
	.string	"string_t"
.LASF403:
	.string	"armorvalue"
.LASF659:
	.string	"RandomMinMax"
.LASF200:
	.string	"skinnum"
.LASF24:
	.string	"__tm_sec"
.LASF296:
	.string	"fvrectright"
.LASF740:
	.string	"R_EmitPostProcessQuad"
.LASF33:
	.string	"_on_exit_args"
.LASF724:
	.string	"r_numparticles"
.LASF704:
	.string	"postProcessQuads"
.LASF469:
	.string	"anim_min"
.LASF108:
	.string	"_wcrtomb_state"
.LASF238:
	.string	"leafs"
.LASF689:
	.string	"time1"
.LASF665:
	.string	"angle"
.LASF688:
	.string	"time3"
.LASF346:
	.string	"model_precache"
.LASF666:
	.string	"forward"
.LASF355:
	.string	"num_statics"
.LASF136:
	.string	"headnode"
.LASF230:
	.string	"clipmins"
.LASF670:
	.string	"R_ParticleHitBlood"
.LASF407:
	.string	"yaw_speed"
.LASF681:
	.string	"R_RocketTrail"
.LASF337:
	.string	"paused"
.LASF526:
	.string	"triangles"
.LASF330:
	.string	"idealpitch"
.LASF649:
	.string	"fade"
.LASF120:
	.string	"qboolean"
.LASF305:
	.string	"ambientlight"
.LASF383:
	.string	"ammo_shells"
.LASF166:
	.string	"name"
.LASF511:
	.string	"bboxmax"
.LASF702:
	.string	"ppSpriteVp"
.LASF16:
	.string	"__ULong"
.LASF376:
	.string	"nextthink"
.LASF716:
	.string	"wgPipe"
.LASF677:
	.string	"R_ParseParticleEffect"
.LASF179:
	.string	"mleaf_s"
.LASF501:
	.string	"mleaf_t"
.LASF548:
	.string	"align_view"
.LASF675:
	.string	"R_BlobExplosion"
.LASF591:
	.string	"RADEON"
.LASF196:
	.string	"msg_angles"
.LASF612:
	.string	"volumeCmds"
.LASF93:
	.string	"_strtok_last"
.LASF319:
	.string	"movemessages"
.LASF336:
	.string	"crouch"
.LASF359:
	.string	"scores"
.LASF251:
	.string	"numclipnodes"
.LASF371:
	.string	"classname"
.LASF560:
	.string	"velocitymin"
.LASF741:
	.string	"R_InitParticleEffects"
.LASF89:
	.string	"_seed"
.LASF299:
	.string	"xOrigin"
.LASF51:
	.string	"_seek"
.LASF712:
	.string	"color_black"
.LASF438:
	.string	"modelname"
.LASF652:
	.string	"ParticleEffectDefinedForName"
.LASF420:
	.string	"noise"
.LASF144:
	.string	"vrect_s"
.LASF148:
	.string	"vrect_t"
.LASF413:
	.string	"dmg_take"
.LASF3:
	.string	"short unsigned int"
.LASF347:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF308:
	.string	"sidemove"
.LASF657:
	.string	"token"
.LASF234:
	.string	"numsubmodels"
.LASF634:
	.string	"tslights"
.LASF682:
	.string	"start"
.LASF459:
	.string	"mplane_s"
.LASF463:
	.string	"mplane_t"
.LASF651:
	.string	"current"
.LASF656:
	.string	"filename"
.LASF645:
	.string	"count"
.LASF461:
	.string	"dist"
.LASF277:
	.string	"binomials"
.LASF75:
	.string	"_freelist"
.LASF435:
	.string	"loadgame"
.LASF456:
	.string	"trivertx_t"
.LASF249:
	.string	"numsurfedges"
.LASF694:
	.string	"neworg"
.LASF152:
	.string	"vec3_t"
.LASF528:
	.string	"texcoords"
.LASF317:
	.string	"percent"
.LASF255:
	.string	"numtextures"
.LASF176:
	.string	"leafnext"
.LASF186:
	.string	"firstmarksurface"
.LASF56:
	.string	"_offset"
.LASF141:
	.string	"planenum"
.LASF362:
	.string	"func_t"
.LASF341:
	.string	"completed_time"
.LASF485:
	.string	"cached_dlight"
.LASF320:
	.string	"stats"
.LASF41:
	.string	"__sbuf"
.LASF534:
	.string	"mod_brush"
.LASF640:
	.string	"WGPipe"
.LASF102:
	.string	"_l64a_buf"
.LASF513:
	.string	"ident"
.LASF518:
	.string	"eyeposition"
.LASF690:
	.string	"dvel"
.LASF475:
	.string	"firstedge"
.LASF259:
	.string	"entities"
.LASF674:
	.string	"colorLength"
.LASF333:
	.string	"driftmove"
.LASF602:
	.string	"lightcmd_t"
.LASF638:
	.string	"lightcmd_u"
.LASF94:
	.string	"_asctime_buf"
.LASF667:
	.string	"R_ClearParticles"
.LASF194:
	.string	"msgtime"
.LASF609:
	.string	"halo"
.LASF626:
	.string	"lasteangles"
.LASF10:
	.string	"__wch"
.LASF574:
	.string	"numbounces"
.LASF109:
	.string	"_wcsrtombs_state"
.LASF598:
	.string	"asInt"
.LASF679:
	.string	"R_LavaSplash"
.LASF730:
	.string	"r_pup"
.LASF366:
	.string	"ltime"
.LASF122:
	.string	"sizebuf_s"
.LASF128:
	.string	"sizebuf_t"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF343:
	.string	"time"
.LASF705:
	.string	"texconv_matrix"
.LASF542:
	.string	"inopen"
.LASF127:
	.string	"cursize"
.LASF370:
	.string	"avelocity"
.LASF243:
	.string	"numnodes"
.LASF117:
	.string	"long int"
.LASF570:
	.string	"sizemax"
.LASF101:
	.string	"_wctomb_state"
.LASF302:
	.string	"viewangles"
.LASF256:
	.string	"textures"
.LASF451:
	.string	"server_t"
.LASF164:
	.string	"entity_state_t"
.LASF345:
	.string	"last_received_message"
.LASF589:
	.string	"GEFORCE"
.LASF732:
	.string	"avelocities"
.LASF557:
	.string	"startcolormax"
.LASF87:
	.string	"_iobs"
.LASF67:
	.string	"_emergency"
.LASF510:
	.string	"bboxmin"
.LASF307:
	.string	"forwardmove"
.LASF111:
	.string	"_nextf"
.LASF97:
	.string	"_rand_next"
.LASF717:
	.string	"line_num"
.LASF631:
	.string	"lightpos"
.LASF394:
	.string	"impulse"
.LASF187:
	.string	"nummarksurfaces"
.LASF327:
	.string	"mvelocity"
.LASF699:
	.string	"trace"
.LASF19:
	.string	"_maxwds"
.LASF509:
	.string	"interval"
.LASF629:
	.string	"lasthdr"
.LASF618:
	.string	"filtercube"
.LASF182:
	.string	"minmaxs"
.LASF116:
	.string	"long double"
.LASF328:
	.string	"velocity"
.LASF354:
	.string	"num_entities"
.LASF225:
	.string	"numframes"
.LASF457:
	.string	"position"
.LASF390:
	.string	"view_ofs"
.LASF281:
	.string	"vrect"
.LASF17:
	.string	"long unsigned int"
.LASF397:
	.string	"netname"
.LASF357:
	.string	"cdtrack"
.LASF621:
	.string	"oldlightorigin"
.LASF276:
	.string	"tangents"
.LASF165:
	.string	"cvar_s"
.LASF171:
	.string	"cvar_t"
.LASF639:
	.string	"_wgpipe"
.LASF488:
	.string	"cachededgeoffset"
.LASF52:
	.string	"_close"
.LASF83:
	.string	"char"
.LASF85:
	.string	"_glue"
.LASF239:
	.string	"numvertexes"
.LASF213:
	.string	"numleafs"
.LASF535:
	.string	"mod_sprite"
.LASF292:
	.string	"vrect_x_adj_shift20"
.LASF604:
	.string	"baseColor"
.LASF508:
	.string	"numposes"
.LASF733:
	.string	"beamlength"
.LASF477:
	.string	"extents"
.LASF683:
	.string	"tracercount"
.LASF550:
	.string	"align_surf"
.LASF578:
	.string	"spawn"
.LASF273:
	.string	"shadowonly"
.LASF159:
	.string	"color"
.LASF497:
	.string	"firstvertex"
.LASF203:
	.string	"dlightbits"
.LASF22:
	.string	"_Bigint"
.LASF415:
	.string	"dmg_inflictor"
.LASF569:
	.string	"sizemin"
.LASF583:
	.string	"growspeed"
.LASF600:
	.string	"asVec"
.LASF172:
	.string	"sfx_s"
.LASF709:
	.string	"vright"
.LASF408:
	.string	"aiment"
.LASF275:
	.string	"normals"
.LASF520:
	.string	"skinwidth"
.LASF79:
	.string	"_atexit0"
.LASF149:
	.string	"cache_user_s"
.LASF150:
	.string	"cache_user_t"
.LASF575:
	.string	"align"
.LASF700:
	.string	"tangent"
.LASF447:
	.string	"reliable_datagram"
.LASF387:
	.string	"takedamage"
.LASF264:
	.string	"lockframe"
.LASF468:
	.string	"anim_total"
.LASF168:
	.string	"archive"
.LASF104:
	.string	"_getdate_err"
.LASF678:
	.string	"msgcount"
.LASF339:
	.string	"inwater"
.LASF257:
	.string	"visdata"
.LASF687:
	.string	"time2"
.LASF175:
	.string	"leaf"
.LASF729:
	.string	"r_pright"
.LASF523:
	.string	"poseverts"
.LASF558:
	.string	"endcolormin"
.LASF358:
	.string	"looptrack"
.LASF605:
	.string	"brightness"
.LASF521:
	.string	"skinheight"
.LASF592:
	.string	"PARHELIA"
.LASF360:
	.string	"server_proto_version"
.LASF314:
	.string	"translations"
.LASF55:
	.string	"_blksize"
.LASF300:
	.string	"yOrigin"
.LASF340:
	.string	"intermission"
.LASF293:
	.string	"vrectright_adj_shift20"
.LASF53:
	.string	"_ubuf"
.LASF379:
	.string	"weapon"
.LASF703:
	.string	"numPostProcessQuads"
.LASF99:
	.string	"_mblen_state"
.LASF81:
	.string	"__sglue"
.LASF442:
	.string	"max_edicts"
.LASF185:
	.string	"efrags"
.LASF71:
	.string	"__cleanup"
.LASF174:
	.string	"efrag_s"
.LASF221:
	.string	"efrag_t"
.LASF658:
	.string	"buffer"
.LASF556:
	.string	"startcolormin"
.LASF147:
	.string	"pnext"
.LASF382:
	.string	"currentammo"
.LASF7:
	.string	"_fpos_t"
.LASF46:
	.string	"_file"
.LASF142:
	.string	"children"
.LASF161:
	.string	"style"
.LASF549:
	.string	"align_vel"
.LASF44:
	.string	"__sFILE"
.LASF114:
	.string	"double"
.LASF40:
	.string	"_fns"
.LASF582:
	.string	"rspeed"
.LASF245:
	.string	"numtexinfo"
.LASF419:
	.string	"sounds"
.LASF14:
	.string	"_mbstate_t"
.LASF110:
	.string	"_h_errno"
.LASF316:
	.string	"destcolor"
.LASF615:
	.string	"lightCmds"
.LASF241:
	.string	"numedges"
.LASF279:
	.string	"lightinstant"
.LASF331:
	.string	"pitchvel"
.LASF465:
	.string	"gl_texturenum"
.LASF428:
	.string	"num_leafs"
.LASF489:
	.string	"medge_t"
.LASF258:
	.string	"lightdata"
.LASF284:
	.string	"vrectbottom"
.LASF156:
	.string	"colormap"
.LASF586:
	.string	"endcolor"
.LASF125:
	.string	"data"
.LASF599:
	.string	"asFloat"
.LASF13:
	.string	"__value"
.LASF356:
	.string	"viewent"
.LASF37:
	.string	"_is_cxa"
.LASF731:
	.string	"r_ppn"
.LASF181:
	.string	"visframe"
.LASF437:
	.string	"lastchecktime"
.LASF471:
	.string	"anim_next"
.LASF313:
	.string	"colors"
.LASF496:
	.string	"neighbours"
.LASF74:
	.string	"_p5s"
.LASF380:
	.string	"weaponmodel"
.LASF288:
	.string	"fvrectx"
.LASF289:
	.string	"fvrecty"
.LASF237:
	.string	"planes"
.LASF145:
	.string	"width"
.LASF133:
	.string	"mins"
.LASF460:
	.string	"normal"
.LASF685:
	.string	"kill"
.LASF195:
	.string	"msg_origins"
.LASF301:
	.string	"vieworg"
.LASF322:
	.string	"item_gettime"
.LASF641:
	.string	"particleemitter_s"
.LASF739:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF507:
	.string	"firstpose"
.LASF143:
	.string	"dclipnode_t"
.LASF462:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF183:
	.string	"parent"
.LASF593:
	.string	"NV3x"
.LASF96:
	.string	"_gamma_signgam"
.LASF713:
	.string	"r_avertexnormals"
.LASF647:
	.string	"points"
.LASF584:
	.string	"velaligned"
.LASF633:
	.string	"extvertices"
.LASF367:
	.string	"movetype"
.LASF68:
	.string	"_current_category"
.LASF563:
	.string	"lifemax"
.LASF324:
	.string	"cshifts"
.LASF441:
	.string	"num_edicts"
.LASF491:
	.string	"mipadjust"
.LASF684:
	.string	"R_DrawParticles"
.LASF698:
	.string	"lscale"
.LASF742:
	.string	"GL_LoadShader"
.LASF231:
	.string	"clipmaxs"
.LASF392:
	.string	"button1"
.LASF393:
	.string	"button2"
.LASF70:
	.string	"__sdidinit"
.LASF519:
	.string	"numskins"
.LASF158:
	.string	"effects"
.LASF614:
	.string	"numVolumeVerts"
.LASF311:
	.string	"entertime"
.LASF506:
	.string	"hull_t"
.LASF738:
	.string	"d:/Data/Nintendo/TenebraeGX/src/r_part.c"
.LASF601:
	.string	"asVoid"
.LASF15:
	.string	"_flock_t"
.LASF721:
	.string	"active_particles"
.LASF312:
	.string	"frags"
.LASF661:
	.string	"R_InitParticles"
.LASF197:
	.string	"model"
.LASF160:
	.string	"alpha"
.LASF495:
	.string	"numverts"
.LASF504:
	.string	"clip_mins"
.LASF381:
	.string	"weaponframe"
.LASF590:
	.string	"GEFORCE3"
.LASF522:
	.string	"numtris"
.LASF5:
	.string	"long long int"
.LASF60:
	.string	"_flags2"
.LASF378:
	.string	"health"
.LASF167:
	.string	"string"
.LASF427:
	.string	"area"
.LASF628:
	.string	"lastlradius"
.LASF342:
	.string	"mtime"
.LASF632:
	.string	"lastframeinstant"
.LASF536:
	.string	"mod_alias"
.LASF193:
	.string	"baseline"
.LASF537:
	.string	"mod_alias3"
.LASF246:
	.string	"texinfo"
.LASF252:
	.string	"clipnodes"
.LASF386:
	.string	"ammo_cells"
.LASF214:
	.string	"leafnums"
.LASF480:
	.string	"polys"
.LASF140:
	.string	"dmodel_t"
.LASF232:
	.string	"firstmodelsurface"
.LASF728:
	.string	"particleEffects"
.LASF540:
	.string	"allsolid"
.LASF361:
	.string	"client_state_t"
.LASF235:
	.string	"submodels"
.LASF84:
	.string	"__FILE"
.LASF701:
	.string	"ppSpriteFp"
.LASF135:
	.string	"origin"
.LASF20:
	.string	"_sign"
.LASF572:
	.string	"srcblend"
.LASF25:
	.string	"__tm_min"
.LASF630:
	.string	"lastlight"
.LASF173:
	.string	"cache"
.LASF737:
	.string	"GNU C 4.6.3"
.LASF514:
	.string	"version"
.LASF250:
	.string	"surfedges"
.LASF453:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF260:
	.string	"mnode_s"
.LASF500:
	.string	"mnode_t"
.LASF98:
	.string	"_r48"
.LASF547:
	.string	"emtype_t"
.LASF325:
	.string	"prev_cshifts"
.LASF434:
	.string	"active"
.LASF440:
	.string	"lightstyles"
.LASF2:
	.string	"short int"
.LASF743:
	.string	"R_DrawPostProcessQuads"
.LASF450:
	.string	"signon_buf"
.LASF722:
	.string	"free_particles"
.LASF389:
	.string	"deadflag"
.LASF49:
	.string	"_read"
.LASF130:
	.string	"prev"
.LASF169:
	.string	"server"
.LASF155:
	.string	"frame"
.LASF559:
	.string	"endcolormax"
.LASF88:
	.string	"_rand48"
.LASF624:
	.string	"lasteorg"
.LASF562:
	.string	"lifemin"
.LASF580:
	.string	"particle_s"
.LASF587:
	.string	"particle_t"
.LASF524:
	.string	"posedata"
.LASF315:
	.string	"scoreboard_t"
.LASF227:
	.string	"flags"
.LASF218:
	.string	"rotate_start_time"
.LASF576:
	.string	"velscale"
.LASF228:
	.string	"radius"
.LASF623:
	.string	"aliaslightinstant_s"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
