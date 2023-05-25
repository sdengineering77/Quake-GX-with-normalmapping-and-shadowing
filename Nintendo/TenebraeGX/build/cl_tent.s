	.file	"cl_tent.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl CL_InitTEnts
	.type	CL_InitTEnts, @function
CL_InitTEnts:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/cl_tent.c"
	.loc 1 46 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 47 0
	lis 3,.LC0@ha
	la 3,.LC0@l(3)
	.loc 1 46 0
	stw 0,12(1)
	.loc 1 47 0
	.cfi_offset 65, 4
	bl S_PrecacheSound
	lis 9,cl_sfx_wizhit@ha
	stw 3,cl_sfx_wizhit@l(9)
	.loc 1 48 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	bl S_PrecacheSound
	lis 9,cl_sfx_knighthit@ha
	stw 3,cl_sfx_knighthit@l(9)
	.loc 1 49 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	bl S_PrecacheSound
	lis 9,cl_sfx_tink1@ha
	stw 3,cl_sfx_tink1@l(9)
	.loc 1 50 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	bl S_PrecacheSound
	lis 9,cl_sfx_ric1@ha
	stw 3,cl_sfx_ric1@l(9)
	.loc 1 51 0
	lis 3,.LC4@ha
	la 3,.LC4@l(3)
	bl S_PrecacheSound
	lis 9,cl_sfx_ric2@ha
	stw 3,cl_sfx_ric2@l(9)
	.loc 1 52 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	bl S_PrecacheSound
	lis 9,cl_sfx_ric3@ha
	stw 3,cl_sfx_ric3@l(9)
	.loc 1 53 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	bl S_PrecacheSound
	.loc 1 58 0
	lwz 0,12(1)
	.loc 1 53 0
	lis 9,cl_sfx_r_exp3@ha
	.loc 1 58 0
	mtlr 0
	.loc 1 53 0
	stw 3,cl_sfx_r_exp3@l(9)
	.loc 1 58 0
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE38:
	.size	CL_InitTEnts, .-CL_InitTEnts
	.align 2
	.globl CL_ParseBeam
	.type	CL_ParseBeam, @function
CL_ParseBeam:
.LFB39:
	.loc 1 66 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-56(1)
.LCFI2:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stfd 29,32(1)
	stw 0,60(1)
	stfd 30,40(1)
	stfd 31,48(1)
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -32
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.cfi_offset 61, -24
	stw 31,28(1)
	.loc 1 72 0
	.cfi_offset 31, -28
	bl MSG_ReadShort
.LVL1:
	mr 31,3
.LVL2:
	.loc 1 74 0
	bl MSG_ReadCoord
.LVL3:
	fmr 29,1
.LVL4:
	.loc 1 75 0
	bl MSG_ReadCoord
.LVL5:
	fmr 30,1
.LVL6:
	.loc 1 76 0
	bl MSG_ReadCoord
.LVL7:
	fmr 31,1
.LVL8:
	.loc 1 78 0
	bl MSG_ReadCoord
.LVL9:
	stfs 1,8(1)
	.loc 1 79 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 80 0
	bl MSG_ReadCoord
	.loc 1 83 0
	addi 3,1,8
	li 4,5
	.loc 1 80 0
	stfs 1,16(1)
	.loc 1 83 0
	bl R_ParticleGunHits
.LVL10:
	.loc 1 65 0
	lis 11,cl_beams@ha
	.loc 1 86 0
	li 0,24
	.loc 1 65 0
	la 11,cl_beams@l(11)
	.loc 1 86 0
	mtctr 0
	mr 9,11
	b .L5
.LVL11:
.L3:
	addi 9,9,36
.LVL12:
	bdz .L15
.LVL13:
.L5:
	.loc 1 87 0
	lwz 0,0(9)
	cmpw 7,0,31
	bne+ 7,.L3
	.loc 1 91 0
	lis 11,cl+568@ha
	.loc 1 89 0
	stw 31,0(9)
	.loc 1 91 0
	lfd 13,cl+568@l(11)
	lis 11,.LC7@ha
	lfd 0,.LC7@l(11)
	.loc 1 90 0
	stw 30,4(9)
	.loc 1 91 0
	fadd 0,13,0
	frsp 0,0
	stfs 0,8(9)
.L13:
	.loc 1 105 0
	stfs 29,12(9)
	stfs 30,16(9)
	stfs 31,20(9)
	.loc 1 111 0
	lwz 30,24(1)
.LVL14:
	.loc 1 106 0
	lwz 0,8(1)
	.loc 1 111 0
	lwz 31,28(1)
.LVL15:
	.loc 1 106 0
	stw 0,24(9)
	.loc 1 111 0
	lfd 29,32(1)
.LVL16:
	.loc 1 106 0
	lwz 0,12(1)
	.loc 1 111 0
	lfd 30,40(1)
.LVL17:
	.loc 1 106 0
	stw 0,28(9)
	.loc 1 111 0
	lfd 31,48(1)
.LVL18:
	.loc 1 106 0
	lwz 0,16(1)
	stw 0,32(9)
	.loc 1 111 0
	lwz 0,60(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	mtlr 0
	blr
.LVL19:
.L15:
.LCFI4:
	.cfi_restore_state
	.loc 1 86 0
	li 0,24
	lis 9,cl+568@ha
.LVL20:
	mtctr 0
	lfd 13,cl+568@l(9)
	mr 9,11
.L9:
	.loc 1 100 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L6
	.loc 1 100 0 is_stmt 0 discriminator 1
	lfs 0,8(9)
	fcmpu 7,0,13
	blt- 7,.L6
	.loc 1 98 0 is_stmt 1
	addi 9,9,36
.LVL21:
	bdnz .L9
	.loc 1 110 0
	lis 3,.LC8@ha
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL22:
	.loc 1 111 0
	lwz 0,60(1)
	lwz 30,24(1)
.LVL23:
	mtlr 0
	lwz 31,28(1)
.LVL24:
	lfd 29,32(1)
.LVL25:
	lfd 30,40(1)
.LVL26:
	lfd 31,48(1)
.LVL27:
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
.LVL28:
.L6:
.LCFI6:
	.cfi_restore_state
	.loc 1 104 0
	lis 11,.LC7@ha
	.loc 1 102 0
	stw 31,0(9)
	.loc 1 104 0
	lfd 0,.LC7@l(11)
	.loc 1 103 0
	stw 30,4(9)
	.loc 1 104 0
	fadd 13,13,0
	frsp 13,13
	stfs 13,8(9)
	b .L13
	.cfi_endproc
.LFE39:
	.size	CL_ParseBeam, .-CL_ParseBeam
	.align 2
	.globl CL_ParseTEnt
	.type	CL_ParseTEnt, @function
CL_ParseTEnt:
.LFB40:
	.loc 1 119 0
	.cfi_startproc
	mflr 0
	stwu 1,-32(1)
.LCFI7:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	stw 0,36(1)
	.loc 1 129 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl MSG_ReadByte
.LVL29:
	.loc 1 130 0
	cmplwi 7,3,13
	ble- 7,.L49
	.loc 1 302 0
	lis 3,.LC18@ha
.LVL30:
	la 3,.LC18@l(3)
	crxor 6,6,6
	bl Sys_Error
.L16:
	.loc 1 304 0
	lwz 0,36(1)
	lwz 31,28(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL31:
.L49:
.LCFI9:
	.cfi_restore_state
	.loc 1 130 0
	lis 9,.L32@ha
	slwi 3,3,2
.LVL32:
	la 9,.L32@l(9)
	lwzx 0,9,3
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L32:
	.long .L18-.L32
	.long .L19-.L32
	.long .L20-.L32
	.long .L21-.L32
	.long .L22-.L32
	.long .L23-.L32
	.long .L24-.L32
	.long .L25-.L32
	.long .L26-.L32
	.long .L27-.L32
	.long .L28-.L32
	.long .L29-.L32
	.long .L30-.L32
	.long .L31-.L32
	.section	".text"
.L30:
	.loc 1 260 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 261 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 262 0
	bl MSG_ReadCoord
	stfs 1,16(1)
	.loc 1 263 0
	bl MSG_ReadByte
	mr 31,3
.LVL33:
	.loc 1 264 0
	bl MSG_ReadByte
.LVL34:
	mr 5,3
.LVL35:
	.loc 1 265 0
	mr 4,31
	addi 3,1,8
.LVL36:
	bl R_ParticleExplosion2
.LVL37:
.L41:
	.loc 1 266 0
	li 3,0
	bl CL_AllocDlight
.LVL38:
	.loc 1 267 0
	lwz 0,8(1)
	.loc 1 269 0
	lis 9,cl+568@ha
	.loc 1 271 0
	addi 6,1,8
	.loc 1 269 0
	lfd 13,cl+568@l(9)
	lis 9,.LC12@ha
	.loc 1 267 0
	stw 0,0(3)
	.loc 1 271 0
	li 4,0
	.loc 1 269 0
	lfs 0,.LC12@l(9)
	.loc 1 271 0
	lis 9,.LC9@ha
	.loc 1 267 0
	lwz 0,12(1)
	.loc 1 269 0
	fadd 0,13,0
	.loc 1 271 0
	lfs 1,.LC9@l(9)
	.loc 1 267 0
	stw 0,4(3)
	.loc 1 268 0
	lis 9,.LC10@ha
	.loc 1 271 0
	fmr 2,1
	.loc 1 267 0
	lwz 0,16(1)
	.loc 1 269 0
	frsp 0,0
	.loc 1 267 0
	stw 0,8(3)
	.loc 1 268 0
	lwz 0,.LC10@l(9)
	.loc 1 270 0
	lis 9,.LC13@ha
	.loc 1 269 0
	stfs 0,16(3)
	.loc 1 268 0
	stw 0,12(3)
	.loc 1 270 0
	lwz 0,.LC13@l(9)
	.loc 1 271 0
	lis 9,cl_sfx_r_exp3@ha
	lwz 5,cl_sfx_r_exp3@l(9)
	.loc 1 270 0
	stw 0,20(3)
	.loc 1 271 0
	li 3,-1
.LVL39:
	bl S_StartSound
	.loc 1 304 0
	lwz 0,36(1)
	lwz 31,28(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
.LCFI10:
	.cfi_def_cfa_offset 0
	blr
.L31:
.LCFI11:
	.cfi_restore_state
	.loc 1 241 0
	lis 3,.LC17@ha
	li 4,1
	la 3,.LC17@l(3)
	bl Mod_ForName
	bl CL_ParseBeam
	.loc 1 242 0
	b .L16
.L18:
	.loc 1 149 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 150 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 151 0
	bl MSG_ReadCoord
	.loc 1 160 0
	addi 3,1,8
	li 4,0
.L48:
	.loc 1 177 0
	stfs 1,16(1)
	.loc 1 180 0
	bl R_ParticleGunHits
	.loc 1 182 0
	bl rand
	lis 0,0x6666
	ori 0,0,26215
	srawi 9,3,31
	mulhw 0,3,0
	srawi 0,0,1
	subf 0,9,0
	mulli 0,0,5
	cmpw 7,3,0
	bne- 7,.L50
	.loc 1 186 0
	bl rand
	.loc 1 188 0
	lis 9,.LC9@ha
	.loc 1 186 0
	rlwinm 3,3,0,30,31
.LVL40:
	.loc 1 188 0
	lfs 1,.LC9@l(9)
	.loc 1 187 0
	cmpwi 7,3,1
	beq- 7,.L51
	.loc 1 189 0
	cmpwi 7,3,2
	beq- 7,.L52
	.loc 1 192 0
	lis 9,cl_sfx_ric3@ha
	lwz 5,cl_sfx_ric3@l(9)
.LVL41:
.L40:
	.loc 1 145 0
	fmr 2,1
	addi 6,1,8
	li 3,-1
	li 4,0
	bl S_StartSound
	.loc 1 304 0
	lwz 0,36(1)
	lwz 31,28(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 31
.LCFI12:
	.cfi_def_cfa_offset 0
	blr
.L19:
.LCFI13:
	.cfi_restore_state
	.loc 1 175 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 176 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 177 0
	bl MSG_ReadCoord
	.loc 1 180 0
	addi 3,1,8
	li 4,1
	b .L48
.L20:
	.loc 1 197 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 198 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 199 0
	bl MSG_ReadCoord
	.loc 1 202 0
	addi 3,1,8
	li 4,2
	.loc 1 199 0
	stfs 1,16(1)
	.loc 1 202 0
	bl R_ParticleGunHits
	.loc 1 203 0
	b .L16
.L21:
	.loc 1 206 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 207 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 208 0
	bl MSG_ReadCoord
	.loc 1 209 0
	addi 3,1,8
	.loc 1 208 0
	stfs 1,16(1)
	.loc 1 209 0
	bl R_ParticleExplosion
	b .L41
.L22:
	.loc 1 219 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 220 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 221 0
	bl MSG_ReadCoord
	.loc 1 222 0
	addi 3,1,8
	.loc 1 221 0
	stfs 1,16(1)
	.loc 1 222 0
	bl R_BlobExplosion
	.loc 1 224 0
	lis 9,.LC9@ha
	lfs 1,.LC9@l(9)
	lis 9,cl_sfx_r_exp3@ha
	lwz 5,cl_sfx_r_exp3@l(9)
	b .L40
.L23:
	.loc 1 228 0
	lis 3,.LC14@ha
	li 4,1
	la 3,.LC14@l(3)
	bl Mod_ForName
	bl CL_ParseBeam
	.loc 1 229 0
	b .L16
.L24:
	.loc 1 232 0
	lis 3,.LC15@ha
	li 4,1
	la 3,.LC15@l(3)
	bl Mod_ForName
	bl CL_ParseBeam
	.loc 1 233 0
	b .L16
.L25:
	.loc 1 133 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 134 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 135 0
	bl MSG_ReadCoord
	.loc 1 136 0
	lis 4,vec3_origin@ha
	li 5,20
	addi 3,1,8
	la 4,vec3_origin@l(4)
	li 6,30
	.loc 1 135 0
	stfs 1,16(1)
	.loc 1 136 0
	bl R_RunParticleEffect
	.loc 1 137 0
	lis 9,.LC9@ha
	lfs 1,.LC9@l(9)
	lis 9,cl_sfx_wizhit@ha
	lwz 5,cl_sfx_wizhit@l(9)
	b .L40
.L26:
	.loc 1 141 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 142 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 143 0
	bl MSG_ReadCoord
	.loc 1 144 0
	lis 4,vec3_origin@ha
	li 5,226
	addi 3,1,8
	la 4,vec3_origin@l(4)
	li 6,20
	.loc 1 143 0
	stfs 1,16(1)
	.loc 1 144 0
	bl R_RunParticleEffect
	.loc 1 145 0
	lis 9,.LC9@ha
	lfs 1,.LC9@l(9)
	lis 9,cl_sfx_knighthit@ha
	lwz 5,cl_sfx_knighthit@l(9)
	b .L40
.L27:
	.loc 1 236 0
	lis 3,.LC16@ha
	li 4,1
	la 3,.LC16@l(3)
	bl Mod_ForName
	bl CL_ParseBeam
	.loc 1 237 0
	b .L16
.L28:
	.loc 1 246 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 247 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 248 0
	bl MSG_ReadCoord
	.loc 1 249 0
	addi 3,1,8
	.loc 1 248 0
	stfs 1,16(1)
	.loc 1 249 0
	bl R_LavaSplash
	.loc 1 250 0
	b .L16
.L29:
	.loc 1 253 0
	bl MSG_ReadCoord
	stfs 1,8(1)
	.loc 1 254 0
	bl MSG_ReadCoord
	stfs 1,12(1)
	.loc 1 255 0
	bl MSG_ReadCoord
	.loc 1 256 0
	addi 3,1,8
	.loc 1 255 0
	stfs 1,16(1)
	.loc 1 256 0
	bl R_TeleportSplash
	.loc 1 257 0
	b .L16
.L50:
	.loc 1 183 0
	lis 9,.LC9@ha
	lfs 1,.LC9@l(9)
	lis 9,cl_sfx_tink1@ha
	lwz 5,cl_sfx_tink1@l(9)
	b .L40
.LVL42:
.L52:
	.loc 1 190 0
	lis 9,cl_sfx_ric2@ha
	lwz 5,cl_sfx_ric2@l(9)
	b .L40
.L51:
	.loc 1 188 0
	lis 9,cl_sfx_ric1@ha
	lwz 5,cl_sfx_ric1@l(9)
	b .L40
	.cfi_endproc
.LFE40:
	.size	CL_ParseTEnt, .-CL_ParseTEnt
	.align 2
	.globl CL_NewTempEntity
	.type	CL_NewTempEntity, @function
CL_NewTempEntity:
.LFB41:
	.loc 1 313 0
	.cfi_startproc
	stwu 1,-32(1)
.LCFI14:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
	.loc 1 316 0
	lis 28,cl_numvisedicts@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
	.loc 1 313 0
	stw 30,24(1)
	.loc 1 316 0
	lwz 30,cl_numvisedicts@l(28)
	.cfi_offset 30, -8
	.loc 1 313 0
	stw 31,28(1)
	.loc 1 317 0
	li 31,0
	.cfi_offset 31, -4
	.loc 1 316 0
	cmpwi 7,30,256
	.loc 1 313 0
	stw 0,36(1)
	stw 27,12(1)
	stw 29,20(1)
	.loc 1 316 0
	beq- 7,.L54
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 1 318 0
	lis 27,num_temp_entities@ha
	lwz 29,num_temp_entities@l(27)
	cmpwi 7,29,64
	beq- 7,.L54
	.loc 1 320 0
	mulli 0,29,584
	lis 31,cl_temp_entities@ha
	la 31,cl_temp_entities@l(31)
	.loc 1 321 0
	li 4,0
	li 5,584
	.loc 1 320 0
	add 31,0,31
.LVL43:
	.loc 1 322 0
	addi 29,29,1
	.loc 1 321 0
	mr 3,31
	bl memset
	.loc 1 326 0
	lis 9,vid+4@ha
	lwz 9,vid+4@l(9)
	.loc 1 323 0
	lis 10,cl_visedicts@ha
	.loc 1 327 0
	li 0,-1
	.loc 1 323 0
	slwi 11,30,2
	la 10,cl_visedicts@l(10)
	.loc 1 324 0
	addi 30,30,1
	.loc 1 322 0
	stw 29,num_temp_entities@l(27)
	.loc 1 323 0
	stwx 31,10,11
	.loc 1 324 0
	stw 30,cl_numvisedicts@l(28)
	.loc 1 326 0
	stw 9,176(31)
	.loc 1 327 0
	stw 0,256(31)
	stw 0,252(31)
.LVL44:
.L54:
	.loc 1 329 0
	lwz 0,36(1)
	mr 3,31
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE41:
	.size	CL_NewTempEntity, .-CL_NewTempEntity
	.align 2
	.globl CL_UpdateTEnts
	.type	CL_UpdateTEnts, @function
CL_UpdateTEnts:
.LFB42:
	.loc 1 338 0
	.cfi_startproc
	mflr 0
	stwu 1,-168(1)
.LCFI16:
	.cfi_def_cfa_offset 168
	.cfi_register 65, 0
	.loc 1 347 0
	lis 9,num_temp_entities@ha
	.loc 1 338 0
	stfd 31,160(1)
	stw 0,172(1)
	.loc 1 347 0
	li 0,0
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	stw 0,num_temp_entities@l(9)
.LVL45:
	.loc 1 364 0
	lis 9,.LC28@ha
	.loc 1 338 0
	stw 21,84(1)
	.loc 1 358 0
	lis 21,cl_entities@ha
	.cfi_offset 21, -84
	.loc 1 338 0
	stw 26,104(1)
	.loc 1 396 0
	lis 26,0xb60b
	.cfi_offset 26, -64
	.loc 1 338 0
	stw 30,120(1)
	.loc 1 350 0
	lis 30,cl_beams@ha
	.cfi_offset 30, -48
	.loc 1 338 0
	stfd 27,128(1)
	.loc 1 350 0
	la 30,cl_beams@l(30)
	.loc 1 338 0
	stfd 28,136(1)
	.loc 1 396 0
	ori 26,26,24759
	.loc 1 338 0
	stfd 29,144(1)
	.loc 1 358 0
	la 21,cl_entities@l(21)
	.loc 1 338 0
	stfd 30,152(1)
	stw 28,112(1)
	.loc 1 364 0
	lfs 31,.LC28@l(9)
	.loc 1 338 0
	stw 19,76(1)
	.loc 1 370 0
	lis 19,.LC19@ha
	.cfi_offset 19, -92
	.cfi_offset 28, -56
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.loc 1 338 0
	stw 20,80(1)
	.loc 1 368 0
	lis 20,.LC20@ha
	.cfi_offset 20, -88
	.loc 1 338 0
	stw 22,88(1)
	.loc 1 381 0
	lis 22,.LC26@ha
	.cfi_offset 22, -80
	.loc 1 338 0
	stw 23,92(1)
	.loc 1 374 0
	lis 23,.LC22@ha
	.cfi_offset 23, -76
	.loc 1 338 0
	stw 24,96(1)
	.loc 1 374 0
	lis 24,.LC23@ha
	.cfi_offset 24, -72
	.loc 1 338 0
	stw 25,100(1)
	.loc 1 352 0
	lis 25,cl@ha
	.cfi_offset 25, -68
	.loc 1 338 0
	stw 27,108(1)
	.loc 1 399 0
	lis 27,.LC27@ha
	.cfi_offset 27, -60
	.loc 1 338 0
	stw 29,116(1)
	.loc 1 396 0
	lis 29,.LC25@ha
	.cfi_offset 29, -52
	.loc 1 338 0
	stw 31,124(1)
	.loc 1 350 0
	li 31,0
	.cfi_offset 31, -44
.LVL46:
.L80:
	.loc 1 352 0
	lwz 0,4(30)
	cmpwi 7,0,0
	beq- 7,.L59
	.loc 1 352 0 is_stmt 0 discriminator 1
	la 9,cl@l(25)
	lfs 13,8(30)
	lfd 0,568(9)
	fcmpu 7,13,0
	blt- 7,.L59
	.loc 1 356 0 is_stmt 1
	lwz 0,0(30)
	lwz 9,2676(9)
	cmpw 7,0,9
	beq- 7,.L60
	lfs 12,12(30)
	lfs 13,16(30)
	lfs 0,20(30)
.L61:
	.loc 1 362 0
	lfs 1,28(30)
	lfs 2,24(30)
	fsubs 1,1,13
	lfs 11,32(30)
	fsubs 2,2,12
	fsubs 11,11,0
	.loc 1 364 0
	fcmpu 7,1,31
	.loc 1 362 0
	stfs 1,24(1)
	stfs 2,20(1)
	stfs 11,28(1)
	.loc 1 364 0
	bne- 7,.L62
	.loc 1 364 0 is_stmt 0 discriminator 1
	fcmpu 7,2,31
	bne- 7,.L62
.LVL47:
	.loc 1 367 0 is_stmt 1
	fcmpu 7,11,31
	bng- 7,.L78
	.loc 1 366 0
	lis 9,.LC28@ha
	.loc 1 368 0
	lfs 29,.LC20@l(20)
	.loc 1 366 0
	lfs 30,.LC28@l(9)
	b .L63
.LVL48:
.L59:
	.loc 1 350 0
	addi 31,31,1
.LVL49:
	cmpwi 7,31,23
	bgt- 7,.L57
	addi 30,30,36
.LVL50:
	b .L80
.LVL51:
.L62:
	.loc 1 374 0
	bl atan2
	lfs 13,.LC22@l(23)
	lfd 0,.LC23@l(24)
	lis 0,0x4330
	fmul 13,1,13
	addi 9,1,68
	stw 0,40(1)
	fdiv 0,13,0
	lfs 13,.LC25@l(29)
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,68(1)
	xoris 0,0,0x8000
	stw 0,44(1)
	lfd 30,40(1)
	fsub 30,30,13
	frsp 30,30
.LVL52:
	.loc 1 375 0
	fcmpu 7,30,31
	bnl- 7,.L65
	.loc 1 376 0
	lfs 0,.LC26@l(22)
	fadds 30,30,0
.LVL53:
.L65:
	.loc 1 378 0
	lfs 13,24(1)
	lfs 0,20(1)
	fmuls 13,13,13
	fmadds 0,0,0,13
	fmr 1,0
	bl sqrt
.LVL54:
	frsp 2,1
	.loc 1 379 0
	lfs 1,28(1)
.LVL55:
	bl atan2
.LVL56:
	lfs 13,.LC22@l(23)
	lfd 0,.LC23@l(24)
	lis 0,0x4330
	fmul 13,1,13
	addi 9,1,64
	stw 0,48(1)
	fdiv 0,13,0
	lfs 13,.LC25@l(29)
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,64(1)
	xoris 0,0,0x8000
	stw 0,52(1)
	lfd 29,48(1)
	fsub 29,29,13
	frsp 29,29
.LVL57:
	.loc 1 380 0
	fcmpu 7,29,31
	blt- 7,.L67
	lfs 12,12(30)
	lfs 13,16(30)
	lfs 0,20(30)
.LVL58:
.L63:
	.loc 1 386 0
	addi 3,1,20
	.loc 1 385 0
	stfs 12,8(1)
	stfs 13,12(1)
	.loc 1 396 0
	lis 28,0x4330
	.loc 1 385 0
	stfs 0,16(1)
	.loc 1 386 0
	bl VectorNormalize
	.loc 1 387 0
	fcmpu 7,1,31
	.loc 1 386 0
	fmr 28,1
.LVL59:
	.loc 1 387 0
	bgt+ 7,.L76
	b .L59
.LVL60:
.L82:
	.loc 1 392 0
	lwz 9,12(1)
	.loc 1 393 0
	lwz 0,4(30)
	.loc 1 392 0
	lfs 27,8(1)
	stw 9,116(31)
	lwz 9,16(1)
	stfs 27,112(31)
	stw 9,120(31)
	.loc 1 393 0
	stw 0,160(31)
	.loc 1 394 0
	stfs 29,148(31)
	.loc 1 395 0
	stfs 30,152(31)
	.loc 1 396 0
	bl rand
.LVL61:
	stw 28,56(1)
	mulhw 0,3,26
	srawi 9,3,31
	lfs 13,.LC25@l(29)
	.loc 1 399 0
	lfs 0,.LC27@l(27)
	lfs 11,24(1)
	.loc 1 396 0
	add 0,0,3
	.loc 1 400 0
	fsubs 28,28,0
.LVL62:
	.loc 1 396 0
	srawi 0,0,8
	.loc 1 399 0
	lfs 10,28(1)
	.loc 1 396 0
	subf 0,9,0
	mulli 0,0,360
	.loc 1 387 0
	fcmpu 7,28,31
	.loc 1 396 0
	subf 3,0,3
	xoris 3,3,0x8000
	stw 3,60(1)
	lfd 12,56(1)
	fsub 12,12,13
	.loc 1 399 0
	lfs 13,20(1)
	fmadds 27,13,0,27
	lfs 13,12(1)
	.loc 1 396 0
	frsp 12,12
	.loc 1 399 0
	fmadds 13,11,0,13
	lfs 11,16(1)
	stfs 27,8(1)
	fmadds 0,10,0,11
	.loc 1 396 0
	stfs 12,156(31)
.LVL63:
	.loc 1 399 0
	stfs 13,12(1)
.LVL64:
	stfs 0,16(1)
.LVL65:
	.loc 1 387 0
	bng- 7,.L81
.LVL66:
.L76:
	.loc 1 389 0
	bl CL_NewTempEntity
.LVL67:
	.loc 1 390 0
	mr. 31,3
	bne+ 0,.L82
.LVL68:
.L57:
	.loc 1 404 0
	lwz 0,172(1)
	lwz 19,76(1)
	mtlr 0
	lwz 20,80(1)
	lwz 21,84(1)
	lwz 22,88(1)
	lwz 23,92(1)
	lwz 24,96(1)
	lwz 25,100(1)
	lwz 26,104(1)
	lwz 27,108(1)
	lwz 28,112(1)
	lwz 29,116(1)
	lwz 30,120(1)
	lwz 31,124(1)
	lfd 27,128(1)
	lfd 28,136(1)
	lfd 29,144(1)
	lfd 30,152(1)
	lfd 31,160(1)
	addi 1,1,168
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
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
.LVL69:
.L81:
.LCFI18:
	.cfi_restore_state
	.loc 1 350 0
	addi 30,30,36
.LVL70:
	li 31,4
.LVL71:
	b .L80
.LVL72:
.L67:
	.loc 1 381 0
	lfs 0,.LC26@l(22)
	lfs 12,12(30)
	fadds 29,29,0
.LVL73:
	lfs 13,16(30)
	lfs 0,20(30)
	b .L63
.LVL74:
.L78:
	.loc 1 366 0
	lis 9,.LC28@ha
	.loc 1 370 0
	lfs 29,.LC19@l(19)
	.loc 1 366 0
	lfs 30,.LC28@l(9)
	b .L63
.LVL75:
.L60:
	.loc 1 358 0
	mulli 0,0,584
	add 9,21,0
	lfs 12,112(9)
	lfs 13,116(9)
	lfs 0,120(9)
	stfs 12,12(30)
	stfs 13,16(30)
	stfs 0,20(30)
	b .L61
	.cfi_endproc
.LFE42:
	.size	CL_UpdateTEnts, .-CL_UpdateTEnts
	.comm	cl_sfx_r_exp3,4,4
	.comm	cl_sfx_ric3,4,4
	.comm	cl_sfx_ric2,4,4
	.comm	cl_sfx_ric1,4,4
	.comm	cl_sfx_tink1,4,4
	.comm	cl_sfx_knighthit,4,4
	.comm	cl_sfx_wizhit,4,4
	.comm	cl_beams,864,4
	.comm	cl_temp_entities,37376,8
	.comm	num_temp_entities,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC9:
	.4byte	1065353216
.LC10:
	.4byte	1135542272
.LC12:
	.4byte	1056964608
.LC13:
	.4byte	1133903872
.LC19:
	.4byte	1132920832
.LC20:
	.4byte	1119092736
.LC22:
	.4byte	1127481344
.LC25:
	.4byte	1501560836
.LC26:
	.4byte	1135869952
.LC27:
	.4byte	1106247680
.LC28:
	.4byte	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC7:
	.4byte	1070176665
	.4byte	-1717986918
.LC23:
	.4byte	1074340347
	.4byte	1413754136
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"wizard/hit.wav"
	.zero	1
.LC1:
	.string	"hknight/hit.wav"
.LC2:
	.string	"weapons/tink1.wav"
	.zero	2
.LC3:
	.string	"weapons/ric1.wav"
	.zero	3
.LC4:
	.string	"weapons/ric2.wav"
	.zero	3
.LC5:
	.string	"weapons/ric3.wav"
	.zero	3
.LC6:
	.string	"weapons/r_exp3.wav"
	.zero	1
.LC8:
	.string	"beam list overflow!\n"
	.zero	3
.LC14:
	.string	"progs/bolt.mdl"
	.zero	1
.LC15:
	.string	"progs/bolt2.mdl"
.LC16:
	.string	"progs/bolt3.mdl"
.LC17:
	.string	"progs/beam.mdl"
	.zero	1
.LC18:
	.string	"CL_ParseTEnt: bad type"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 15 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2165
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF400
	.byte	0x1
	.4byte	.LASF401
	.4byte	.LASF402
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
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1a
	.4byte	0x8f
	.uleb128 0x8
	.byte	0x44
	.byte	0x4
	.byte	0x22
	.4byte	0x2e5
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x24
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x25
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x26
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x2b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2e
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.byte	0x34
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x4
	.byte	0x36
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.4byte	0x317
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x5
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x72
	.4byte	0x2fc
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x6
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x6
	.byte	0x17
	.4byte	0x338
	.uleb128 0xa
	.4byte	0x322
	.4byte	0x348
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x48
	.byte	0x7
	.byte	0xef
	.4byte	0x3f9
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x7
	.byte	0xf1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0xf2
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf9
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x7
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x7
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x7
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0xfe
	.4byte	0x348
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x415
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x425
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x435
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x44
	.byte	0x8
	.byte	0x23
	.4byte	0x45e
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x8
	.byte	0x25
	.4byte	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x8
	.byte	0x26
	.4byte	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x8
	.byte	0x27
	.4byte	0x435
	.uleb128 0x5
	.byte	0x4
	.4byte	0x45e
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x4b4
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x9
	.byte	0x20
	.4byte	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x9
	.byte	0x21
	.4byte	0x561
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x9
	.byte	0x22
	.4byte	0x7d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x9
	.byte	0x23
	.4byte	0x561
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x40
	.byte	0xa
	.byte	0xca
	.4byte	0x55b
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xa
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xa
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xa
	.byte	0xd0
	.4byte	0x159b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xa
	.byte	0xd2
	.4byte	0xb33
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xa
	.byte	0xd5
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xa
	.byte	0xd6
	.4byte	0x15c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xa
	.byte	0xd8
	.4byte	0x15cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xa
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0xa
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xa
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xa
	.byte	0xdc
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4b4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x46f
	.uleb128 0xf
	.4byte	.LASF82
	.2byte	0x248
	.byte	0x9
	.byte	0x27
	.4byte	0x7d5
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x9
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x9
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x9
	.byte	0x2d
	.4byte	0x3f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x9
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x9
	.byte	0x30
	.4byte	0x7e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x9
	.byte	0x31
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x9
	.byte	0x32
	.4byte	0x7e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x33
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x9
	.byte	0x34
	.4byte	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x9
	.byte	0x35
	.4byte	0x561
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x9
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x9
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x9
	.byte	0x38
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x9
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x9
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x9
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x9
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x9
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x9
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x9
	.byte	0x44
	.4byte	0xb33
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x9
	.byte	0x48
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x9
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x9
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x9
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x9
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x9
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x9
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x9
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x9
	.byte	0x57
	.4byte	0xc53
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x9
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x9
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x9
	.byte	0x5c
	.4byte	0xc59
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x9
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x9
	.byte	0x60
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x9
	.byte	0x61
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x9
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x9
	.byte	0x63
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x9
	.byte	0x64
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x567
	.uleb128 0x6
	.4byte	.LASF113
	.byte	0x9
	.byte	0x24
	.4byte	0x46f
	.uleb128 0xa
	.4byte	0x322
	.4byte	0x7fc
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF114
	.2byte	0x1a4
	.byte	0xa
	.2byte	0x180
	.4byte	0xab0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x182
	.4byte	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x185
	.4byte	0x190f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x187
	.4byte	0x11ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xa
	.2byte	0x18e
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xa
	.2byte	0x18e
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x195
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x195
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x19d
	.4byte	0x191b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x1a0
	.4byte	0x157e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x1921
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x1a6
	.4byte	0x1927
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x192d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x1ac
	.4byte	0x1933
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x1af
	.4byte	0x158a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x1b2
	.4byte	0x15d2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x1b5
	.4byte	0x1939
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x1b8
	.4byte	0x1640
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x1bb
	.4byte	0x15cc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x1bd
	.4byte	0x193f
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x1c0
	.4byte	0x194f
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x1c2
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x1c3
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x1c9
	.4byte	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x34
	.byte	0xa
	.byte	0xb6
	.4byte	0xb33
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xa
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xa
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xa
	.byte	0xbc
	.4byte	0x159b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xa
	.byte	0xbe
	.4byte	0xb33
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0xa
	.byte	0xc1
	.4byte	0x157e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xa
	.byte	0xc2
	.4byte	0x15ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0xa
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0xa
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab6
	.uleb128 0x12
	.4byte	.LASF155
	.4byte	0x20030
	.byte	0xb
	.2byte	0xa09
	.4byte	0xc53
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xb
	.2byte	0xa0f
	.4byte	0xc53
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xb
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xb
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xb
	.2byte	0xa17
	.4byte	0x1d2a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xb
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xb
	.2byte	0xa1d
	.4byte	0xe0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xb
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xb
	.2byte	0xa21
	.4byte	0x1d2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0xb
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0xb
	.2byte	0xa2b
	.4byte	0x1d36
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0xb
	.2byte	0xa2d
	.4byte	0x1d36
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xb
	.2byte	0xa2f
	.4byte	0x1d36
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0xb
	.2byte	0xa31
	.4byte	0x1d36
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0xb
	.2byte	0xa33
	.4byte	0x1d7b
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0xb
	.2byte	0xa37
	.4byte	0x1d8c
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb39
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xc69
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF173
	.byte	0x9
	.byte	0x66
	.4byte	0x567
	.uleb128 0x8
	.byte	0x18
	.byte	0xc
	.byte	0x16
	.4byte	0xcb5
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xc
	.byte	0x18
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0xc
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0xc
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0xc
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF178
	.byte	0xc
	.byte	0x21
	.4byte	0xc74
	.uleb128 0x13
	.2byte	0x402c
	.byte	0xc
	.byte	0x29
	.4byte	0xd10
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xc
	.byte	0x2b
	.4byte	0x425
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0xc
	.byte	0x2c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0xc
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0xc
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0xc
	.byte	0x2f
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0xc
	.byte	0x30
	.4byte	0xcc0
	.uleb128 0x8
	.byte	0x10
	.byte	0xc
	.byte	0x32
	.4byte	0xd40
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0xc
	.byte	0x34
	.4byte	0xd40
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0xc
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xd50
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF186
	.byte	0xc
	.byte	0x36
	.4byte	0xd1b
	.uleb128 0x8
	.byte	0x48
	.byte	0xc
	.byte	0x48
	.4byte	0xe0c
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0xc
	.byte	0x4a
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0xc
	.byte	0x4b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"die"
	.byte	0xc
	.byte	0x4c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0xc
	.byte	0x4d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xc
	.byte	0x4e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"key"
	.byte	0xc
	.byte	0x4f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0xc
	.byte	0x50
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0xc
	.byte	0x51
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0xc
	.byte	0x52
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xc
	.byte	0x53
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xc
	.byte	0x54
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0xc
	.byte	0x58
	.4byte	0xe0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc69
	.uleb128 0x6
	.4byte	.LASF191
	.byte	0xc
	.byte	0x59
	.4byte	0xd5b
	.uleb128 0x8
	.byte	0x24
	.byte	0xc
	.byte	0x5d
	.4byte	0xe6c
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xc
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0xc
	.byte	0x60
	.4byte	0xab0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0xc
	.byte	0x61
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0xc
	.byte	0x62
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"end"
	.byte	0xc
	.byte	0x62
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF194
	.byte	0xc
	.byte	0x63
	.4byte	0xe1d
	.uleb128 0x13
	.2byte	0xce8
	.byte	0xc
	.byte	0x9a
	.4byte	0x1112
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xc
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0xc
	.byte	0xa0
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xc
	.byte	0xa3
	.4byte	0x1112
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0xc
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xc
	.byte	0xa5
	.4byte	0x1122
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0xc
	.byte	0xa6
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xc
	.byte	0xa8
	.4byte	0x1132
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0xc
	.byte	0xa9
	.4byte	0x1132
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0xc
	.byte	0xaf
	.4byte	0x7e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xc
	.byte	0xb1
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xc
	.byte	0xb3
	.4byte	0x7e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xc
	.byte	0xb5
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xc
	.byte	0xb7
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xc
	.byte	0xba
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xc
	.byte	0xbb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xc
	.byte	0xbc
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xc
	.byte	0xbd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xc
	.byte	0xbe
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xc
	.byte	0xc0
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0xc
	.byte	0xc1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xc
	.byte	0xc3
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xc
	.byte	0xc4
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xc
	.byte	0xc5
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0xc
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xc
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0xc
	.byte	0xca
	.4byte	0x1142
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0xc
	.byte	0xcb
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xc
	.byte	0xce
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0xc
	.byte	0xd2
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xc
	.byte	0xd7
	.4byte	0x1152
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xc
	.byte	0xd8
	.4byte	0x1162
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0xc
	.byte	0xda
	.4byte	0x1178
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0xc
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0xc
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0xc
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xc
	.byte	0xe0
	.4byte	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xc
	.byte	0xe1
	.4byte	0x561
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xc
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0xc
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xc
	.byte	0xe4
	.4byte	0xc69
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0xc
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0xc
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0xc
	.byte	0xe9
	.4byte	0x1188
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0xc
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1122
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1132
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0xd50
	.4byte	0x1142
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x73
	.4byte	0x1152
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xab0
	.4byte	0x1162
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	0x1172
	.4byte	0x1172
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x435
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x1188
	.uleb128 0xb
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd10
	.uleb128 0x6
	.4byte	.LASF237
	.byte	0xc
	.byte	0xf3
	.4byte	0xe77
	.uleb128 0x14
	.byte	0x4
	.byte	0xd
	.byte	0x34
	.4byte	0x11ae
	.uleb128 0x15
	.4byte	.LASF238
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF239
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF240
	.byte	0xd
	.byte	0x34
	.4byte	0x1199
	.uleb128 0x8
	.byte	0x4
	.byte	0xd
	.byte	0x64
	.4byte	0x11dc
	.uleb128 0xe
	.string	"v"
	.byte	0xd
	.byte	0x65
	.4byte	0x11dc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0xd
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x11ec
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF242
	.byte	0xd
	.byte	0x67
	.4byte	0x11b9
	.uleb128 0x8
	.byte	0xc
	.byte	0xa
	.byte	0x3b
	.4byte	0x120e
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0xa
	.byte	0x3d
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF244
	.byte	0xa
	.byte	0x3e
	.4byte	0x11f7
	.uleb128 0xc
	.4byte	.LASF245
	.byte	0x14
	.byte	0xa
	.byte	0x52
	.4byte	0x126c
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xa
	.byte	0x54
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0xa
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0xa
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF248
	.byte	0xa
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0xa
	.byte	0x58
	.4byte	0x126c
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x127c
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF249
	.byte	0xa
	.byte	0x59
	.4byte	0x1219
	.uleb128 0xc
	.4byte	.LASF250
	.byte	0x48
	.byte	0xa
	.byte	0x5b
	.4byte	0x133c
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF251
	.byte	0xa
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0xa
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0xa
	.byte	0x61
	.4byte	0x1461
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF254
	.byte	0xa
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF255
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF256
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF257
	.byte	0xa
	.byte	0x64
	.4byte	0x1467
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0xa
	.byte	0x65
	.4byte	0x1467
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0xa
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF260
	.byte	0x5c
	.byte	0xa
	.byte	0x96
	.4byte	0x1461
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xa
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0xa
	.byte	0x9a
	.4byte	0x157e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0xa
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF261
	.byte	0xa
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0xa
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF262
	.byte	0xa
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0xa
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF264
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0xa
	.byte	0xa5
	.4byte	0x1584
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF253
	.byte	0xa
	.byte	0xa6
	.4byte	0x1461
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF267
	.byte	0xa
	.byte	0xa7
	.4byte	0x1461
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0xa
	.byte	0xa9
	.4byte	0x158a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0xa
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF269
	.byte	0xa
	.byte	0xb0
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF270
	.byte	0xa
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF271
	.byte	0xa
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF272
	.byte	0xa
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x133c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1287
	.uleb128 0x6
	.4byte	.LASF273
	.byte	0xa
	.byte	0x67
	.4byte	0x1287
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x78
	.4byte	0x149b
	.uleb128 0xe
	.string	"v"
	.byte	0xa
	.byte	0x7a
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF274
	.byte	0xa
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF275
	.byte	0xa
	.byte	0x7c
	.4byte	0x1478
	.uleb128 0x8
	.byte	0x2c
	.byte	0xa
	.byte	0x7e
	.4byte	0x14e7
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0xa
	.byte	0x80
	.4byte	0x1ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0xa
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF278
	.byte	0xa
	.byte	0x82
	.4byte	0x14e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0xa
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x146d
	.uleb128 0x6
	.4byte	.LASF279
	.byte	0xa
	.byte	0x84
	.4byte	0x14a6
	.uleb128 0xc
	.4byte	.LASF280
	.byte	0x1c
	.byte	0xa
	.byte	0x8a
	.4byte	0x1567
	.uleb128 0x9
	.4byte	.LASF281
	.byte	0xa
	.byte	0x8c
	.4byte	0x1567
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0xa
	.byte	0x8d
	.4byte	0x1567
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF283
	.byte	0xa
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0xa
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF284
	.byte	0xa
	.byte	0x92
	.4byte	0x156d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF285
	.byte	0xa
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14f8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1567
	.uleb128 0x6
	.4byte	.LASF286
	.byte	0xa
	.byte	0x94
	.4byte	0x14f8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x127c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1573
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14ed
	.uleb128 0x6
	.4byte	.LASF287
	.byte	0xa
	.byte	0xb4
	.4byte	0x133c
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x15ab
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xb33
	.4byte	0x15bb
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF288
	.byte	0xa
	.byte	0xc6
	.4byte	0xab6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7db
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15d2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1590
	.uleb128 0x6
	.4byte	.LASF289
	.byte	0xa
	.byte	0xdd
	.4byte	0x4b4
	.uleb128 0x8
	.byte	0x28
	.byte	0xa
	.byte	0xe0
	.4byte	0x1640
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0xa
	.byte	0xe2
	.4byte	0x1640
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0xa
	.byte	0xe3
	.4byte	0x157e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF290
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF291
	.byte	0xa
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF292
	.byte	0xa
	.byte	0xe6
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF293
	.byte	0xa
	.byte	0xe7
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	.LASF294
	.byte	0xa
	.byte	0xe8
	.4byte	0x15e3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x16
	.byte	0x28
	.byte	0xa
	.2byte	0x11e
	.4byte	0x16ca
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0xa
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF296
	.byte	0xa
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF297
	.byte	0xa
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF298
	.byte	0xa
	.2byte	0x123
	.4byte	0x11ec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF299
	.byte	0xa
	.2byte	0x124
	.4byte	0x11ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0xa
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x126
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF300
	.byte	0xa
	.2byte	0x127
	.4byte	0x1657
	.uleb128 0x18
	.2byte	0x53c
	.byte	0xa
	.2byte	0x142
	.4byte	0x18bb
	.uleb128 0x11
	.4byte	.LASF301
	.byte	0xa
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF302
	.byte	0xa
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF303
	.byte	0xa
	.2byte	0x145
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF304
	.byte	0xa
	.2byte	0x146
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF305
	.byte	0xa
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF306
	.byte	0xa
	.2byte	0x148
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF307
	.byte	0xa
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0xa
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF309
	.byte	0xa
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF283
	.byte	0xa
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF310
	.byte	0xa
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x14f
	.4byte	0x11ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF311
	.byte	0xa
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xa
	.2byte	0x153
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xa
	.2byte	0x153
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF296
	.byte	0xa
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF312
	.byte	0xa
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF313
	.byte	0xa
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF314
	.byte	0xa
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF315
	.byte	0xa
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF316
	.byte	0xa
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF317
	.byte	0xa
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF318
	.byte	0xa
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF251
	.byte	0xa
	.2byte	0x15e
	.4byte	0x18bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF319
	.byte	0xa
	.2byte	0x15f
	.4byte	0x18bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF320
	.byte	0xa
	.2byte	0x160
	.4byte	0x1112
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF321
	.byte	0xa
	.2byte	0x161
	.4byte	0x18d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x18d1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x16ca
	.4byte	0x18e1
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF322
	.byte	0xa
	.2byte	0x162
	.4byte	0x16d6
	.uleb128 0x19
	.byte	0x4
	.byte	0xa
	.2byte	0x172
	.4byte	0x190f
	.uleb128 0x15
	.4byte	.LASF323
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF324
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF325
	.sleb128 2
	.uleb128 0x15
	.4byte	.LASF326
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF327
	.byte	0xa
	.2byte	0x172
	.4byte	0x18ed
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15d8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x120e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x149b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15bb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x1646
	.4byte	0x194f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14e7
	.uleb128 0x17
	.4byte	.LASF328
	.byte	0xa
	.2byte	0x1cb
	.4byte	0x7fc
	.uleb128 0x8
	.byte	0x10
	.byte	0xe
	.byte	0x16
	.4byte	0x1986
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xe
	.byte	0x18
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0xe
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF329
	.byte	0xe
	.byte	0x1a
	.4byte	0x1961
	.uleb128 0x1a
	.4byte	.LASF330
	.byte	0x14
	.byte	0xb
	.2byte	0x981
	.4byte	0x19bd
	.uleb128 0x11
	.4byte	.LASF331
	.byte	0xb
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0xb
	.2byte	0x985
	.4byte	0x19bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1991
	.uleb128 0x17
	.4byte	.LASF332
	.byte	0xb
	.2byte	0x987
	.4byte	0x1991
	.uleb128 0x1b
	.4byte	.LASF374
	.byte	0x4
	.byte	0xb
	.2byte	0x98d
	.4byte	0x1a0d
	.uleb128 0x1c
	.4byte	.LASF333
	.byte	0xb
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1c
	.4byte	.LASF334
	.byte	0xb
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1c
	.4byte	.LASF335
	.byte	0xb
	.2byte	0x993
	.4byte	0x322
	.uleb128 0x1c
	.4byte	.LASF336
	.byte	0xb
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF337
	.byte	0xb
	.2byte	0x997
	.4byte	0x19cf
	.uleb128 0x10
	.4byte	.LASF338
	.2byte	0x890
	.byte	0xb
	.2byte	0x99d
	.4byte	0x1bcd
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xb
	.2byte	0x99f
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF339
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF340
	.byte	0xb
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF341
	.byte	0xb
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF342
	.byte	0xb
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF343
	.byte	0xb
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF344
	.byte	0xb
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xb
	.2byte	0x9b1
	.4byte	0x1921
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.string	"vis"
	.byte	0xb
	.2byte	0x9b3
	.4byte	0x1bcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF345
	.byte	0xb
	.2byte	0x9b5
	.4byte	0x1bcd
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF346
	.byte	0xb
	.2byte	0x9b7
	.4byte	0x15cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF347
	.byte	0xb
	.2byte	0x9b9
	.4byte	0x1939
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF348
	.byte	0xb
	.2byte	0x9bb
	.4byte	0x1651
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF349
	.byte	0xb
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF350
	.byte	0xb
	.2byte	0x9bf
	.4byte	0x1bde
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF351
	.byte	0xb
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xb
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0xb
	.2byte	0x9c5
	.4byte	0xe0c
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF352
	.byte	0xb
	.2byte	0x9c7
	.4byte	0x19c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0xb
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x9cb
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF353
	.byte	0xb
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF354
	.byte	0xb
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF355
	.byte	0xb
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF356
	.byte	0xb
	.2byte	0x9d3
	.4byte	0x32d
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1bde
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a0d
	.uleb128 0x17
	.4byte	.LASF357
	.byte	0xb
	.2byte	0x9d5
	.4byte	0x1a19
	.uleb128 0x12
	.4byte	.LASF358
	.4byte	0x1e864
	.byte	0xb
	.2byte	0x9db
	.4byte	0x1d2a
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF359
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF360
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF361
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF362
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF363
	.byte	0xb
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x9e5
	.4byte	0xe0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF364
	.byte	0xb
	.2byte	0x9e7
	.4byte	0x1d2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF365
	.byte	0xb
	.2byte	0x9e9
	.4byte	0x1d30
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF366
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF367
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF368
	.byte	0xb
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF369
	.byte	0xb
	.2byte	0x9f3
	.4byte	0x1d36
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF370
	.byte	0xb
	.2byte	0x9f5
	.4byte	0x1d36
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF371
	.byte	0xb
	.2byte	0x9f7
	.4byte	0x1d36
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x9f9
	.4byte	0x1d36
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF372
	.byte	0xb
	.2byte	0x9fb
	.4byte	0x1d4d
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF318
	.byte	0xb
	.2byte	0x9ff
	.4byte	0x1d5e
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF310
	.byte	0xb
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18e1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1be4
	.uleb128 0xa
	.4byte	0x322
	.4byte	0x1d4d
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x1d5e
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1d6f
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF373
	.byte	0xb
	.2byte	0xa05
	.4byte	0x1bf0
	.uleb128 0xa
	.4byte	0x1986
	.4byte	0x1d8c
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d6f
	.uleb128 0x1b
	.4byte	.LASF375
	.byte	0x4
	.byte	0xf
	.2byte	0x490
	.4byte	0x1df2
	.uleb128 0x1e
	.string	"U8"
	.byte	0xf
	.2byte	0x492
	.4byte	0x1df2
	.uleb128 0x1e
	.string	"S8"
	.byte	0xf
	.2byte	0x493
	.4byte	0x1df7
	.uleb128 0x1e
	.string	"U16"
	.byte	0xf
	.2byte	0x494
	.4byte	0x1dfc
	.uleb128 0x1e
	.string	"S16"
	.byte	0xf
	.2byte	0x495
	.4byte	0x1e01
	.uleb128 0x1e
	.string	"U32"
	.byte	0xf
	.2byte	0x496
	.4byte	0x1e06
	.uleb128 0x1e
	.string	"S32"
	.byte	0xf
	.2byte	0x497
	.4byte	0x1e0b
	.uleb128 0x1e
	.string	"F32"
	.byte	0xf
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
	.4byte	.LASF376
	.byte	0xf
	.2byte	0x499
	.4byte	0x1d92
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF403
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF377
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST1
	.4byte	0x1e9e
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.byte	0x41
	.4byte	0x1e9e
	.4byte	.LLST2
	.uleb128 0x22
	.string	"ent"
	.byte	0x1
	.byte	0x43
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF193
	.byte	0x1
	.byte	0x44
	.4byte	0x32d
	.4byte	.LLST4
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.byte	0x44
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.byte	0x45
	.4byte	0x1ea4
	.4byte	.LLST5
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x46
	.4byte	0x41
	.4byte	.LLST6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1955
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe6c
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF378
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST7
	.4byte	0x1f1c
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x1
	.byte	0x78
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x24
	.string	"pos"
	.byte	0x1
	.byte	0x79
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"dl"
	.byte	0x1
	.byte	0x7d
	.4byte	0x1f1c
	.4byte	.LLST9
	.uleb128 0x22
	.string	"rnd"
	.byte	0x1
	.byte	0x7e
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF379
	.byte	0x1
	.byte	0x7f
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LASF380
	.byte	0x1
	.byte	0x7f
	.4byte	0x41
	.4byte	.LLST12
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe12
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x138
	.byte	0x1
	.4byte	0xe0c
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST13
	.4byte	0x1f51
	.uleb128 0x26
	.string	"ent"
	.byte	0x1
	.2byte	0x13a
	.4byte	0xe0c
	.4byte	.LLST14
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x151
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST15
	.4byte	0x1ff6
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x153
	.4byte	0x41
	.4byte	.LLST16
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.2byte	0x154
	.4byte	0x1ea4
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x155
	.4byte	0x32d
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.string	"org"
	.byte	0x1
	.2byte	0x155
	.4byte	0x32d
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.2byte	0x156
	.4byte	0x7a
	.4byte	.LLST18
	.uleb128 0x26
	.string	"ent"
	.byte	0x1
	.2byte	0x157
	.4byte	0xe0c
	.4byte	.LLST19
	.uleb128 0x26
	.string	"yaw"
	.byte	0x1
	.2byte	0x158
	.4byte	0x7a
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x158
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0x2a
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x159
	.4byte	0x7a
	.4byte	.LLST22
	.byte	0
	.uleb128 0x2b
	.string	"vid"
	.byte	0x4
	.byte	0x38
	.4byte	0x2f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF384
	.byte	0x6
	.byte	0x28
	.4byte	0x32d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"cl"
	.byte	0xc
	.2byte	0x11b
	.4byte	0x118e
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xc69
	.4byte	0x202e
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF385
	.byte	0xc
	.2byte	0x11f
	.4byte	0x201d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xc69
	.4byte	0x204c
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF386
	.byte	0x1
	.byte	0x19
	.4byte	0x203c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_temp_entities
	.uleb128 0xa
	.4byte	0xe6c
	.4byte	0x206e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x17
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF387
	.byte	0x1
	.byte	0x1a
	.4byte	0x205e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_beams
	.uleb128 0x2e
	.4byte	.LASF388
	.byte	0xc
	.2byte	0x13b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xe0c
	.4byte	0x209e
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF389
	.byte	0xc
	.2byte	0x13c
	.4byte	0x208e
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF390
	.byte	0xb
	.2byte	0xc2c
	.4byte	0x15d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x2e
	.4byte	.LASF391
	.byte	0xf
	.2byte	0x548
	.4byte	0x20cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	0x20d2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e10
	.uleb128 0x2f
	.4byte	.LASF392
	.byte	0x1
	.byte	0x18
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	num_temp_entities
	.uleb128 0x2f
	.4byte	.LASF393
	.byte	0x1
	.byte	0x1c
	.4byte	0x469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_sfx_wizhit
	.uleb128 0x2f
	.4byte	.LASF394
	.byte	0x1
	.byte	0x1d
	.4byte	0x469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_sfx_knighthit
	.uleb128 0x2f
	.4byte	.LASF395
	.byte	0x1
	.byte	0x1e
	.4byte	0x469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_sfx_tink1
	.uleb128 0x2f
	.4byte	.LASF396
	.byte	0x1
	.byte	0x1f
	.4byte	0x469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_sfx_ric1
	.uleb128 0x2f
	.4byte	.LASF397
	.byte	0x1
	.byte	0x20
	.4byte	0x469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_sfx_ric2
	.uleb128 0x2f
	.4byte	.LASF398
	.byte	0x1
	.byte	0x21
	.4byte	0x469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_sfx_ric3
	.uleb128 0x2f
	.4byte	.LASF399
	.byte	0x1
	.byte	0x22
	.4byte	0x469
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cl_sfx_r_exp3
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.sleb128 56
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-1-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL5-1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0xc
	.byte	0x79
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0xc
	.byte	0x79
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x79
	.sleb128 16
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0xc
	.byte	0x79
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x79
	.sleb128 16
	.byte	0x93
	.uleb128 0x4
	.byte	0x79
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	cl_beams
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	cl_beams
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 36
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
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
.LASF337:
	.string	"lightcmd_t"
.LASF374:
	.string	"lightcmd_u"
.LASF220:
	.string	"oldtime"
.LASF66:
	.string	"efrag_s"
.LASF113:
	.string	"efrag_t"
.LASF177:
	.string	"upmove"
.LASF153:
	.string	"plane"
.LASF297:
	.string	"interval"
.LASF114:
	.string	"model_s"
.LASF328:
	.string	"model_t"
.LASF395:
	.string	"cl_sfx_tink1"
.LASF172:
	.string	"lightinstant"
.LASF191:
	.string	"dlight_t"
.LASF305:
	.string	"boundingradius"
.LASF129:
	.string	"planes"
.LASF322:
	.string	"aliashdr_t"
.LASF325:
	.string	"mod_alias"
.LASF134:
	.string	"edges"
.LASF154:
	.string	"firstsurface"
.LASF170:
	.string	"binomials"
.LASF157:
	.string	"lockframe"
.LASF340:
	.string	"brightness"
.LASF98:
	.string	"frame_start_time"
.LASF22:
	.string	"numfaces"
.LASF136:
	.string	"nodes"
.LASF28:
	.string	"buffer"
.LASF72:
	.string	"contents"
.LASF142:
	.string	"surfedges"
.LASF281:
	.string	"next"
.LASF302:
	.string	"version"
.LASF371:
	.string	"tshalfangles"
.LASF162:
	.string	"lastblend"
.LASF317:
	.string	"texcoords"
.LASF358:
	.string	"aliaslightinstant_s"
.LASF366:
	.string	"lightpos"
.LASF108:
	.string	"origin1"
.LASF109:
	.string	"origin2"
.LASF227:
	.string	"gametype"
.LASF256:
	.string	"anim_max"
.LASF178:
	.string	"usercmd_t"
.LASF186:
	.string	"cshift_t"
.LASF209:
	.string	"driftmove"
.LASF144:
	.string	"clipnodes"
.LASF27:
	.string	"pixel_t"
.LASF187:
	.string	"decay"
.LASF226:
	.string	"maxclients"
.LASF188:
	.string	"minlight"
.LASF368:
	.string	"lastframeinstant"
.LASF84:
	.string	"update_type"
.LASF194:
	.string	"beam_t"
.LASF224:
	.string	"levelname"
.LASF384:
	.string	"vec3_origin"
.LASF206:
	.string	"idealpitch"
.LASF36:
	.string	"numpages"
.LASF118:
	.string	"synctype"
.LASF131:
	.string	"numvertexes"
.LASF234:
	.string	"looptrack"
.LASF241:
	.string	"lightnormalindex"
.LASF83:
	.string	"forcelink"
.LASF221:
	.string	"last_received_message"
.LASF77:
	.string	"efrags"
.LASF71:
	.string	"mleaf_s"
.LASF289:
	.string	"mleaf_t"
.LASF262:
	.string	"texturemins"
.LASF398:
	.string	"cl_sfx_ric3"
.LASF386:
	.string	"cl_temp_entities"
.LASF111:
	.string	"angles1"
.LASF112:
	.string	"angles2"
.LASF141:
	.string	"numsurfedges"
.LASF139:
	.string	"numsurfaces"
.LASF276:
	.string	"vecs"
.LASF239:
	.string	"ST_RAND"
.LASF298:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF25:
	.string	"children"
.LASF205:
	.string	"punchangle"
.LASF32:
	.string	"rowbytes"
.LASF244:
	.string	"mvertex_t"
.LASF80:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF41:
	.string	"conheight"
.LASF290:
	.string	"firstclipnode"
.LASF344:
	.string	"halo"
.LASF42:
	.string	"maxwarpwidth"
.LASF146:
	.string	"hulls"
.LASF251:
	.string	"gl_texturenum"
.LASF101:
	.string	"pose1"
.LASF102:
	.string	"pose2"
.LASF53:
	.string	"skin"
.LASF293:
	.string	"clip_maxs"
.LASF382:
	.string	"pitch"
.LASF307:
	.string	"numskins"
.LASF107:
	.string	"translate_start_time"
.LASF402:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF51:
	.string	"modelindex"
.LASF85:
	.string	"baseline"
.LASF90:
	.string	"efrag"
.LASF219:
	.string	"time"
.LASF348:
	.string	"volumeVerts"
.LASF120:
	.string	"radius"
.LASF365:
	.string	"lastlight"
.LASF190:
	.string	"owner"
.LASF164:
	.string	"lastshadowonly"
.LASF54:
	.string	"effects"
.LASF16:
	.string	"mins"
.LASF380:
	.string	"colorLength"
.LASF152:
	.string	"mnode_s"
.LASF288:
	.string	"mnode_t"
.LASF253:
	.string	"texturechain"
.LASF55:
	.string	"color"
.LASF39:
	.string	"conrowbytes"
.LASF268:
	.string	"lightmaptexturenum"
.LASF106:
	.string	"leafnums"
.LASF388:
	.string	"cl_numvisedicts"
.LASF292:
	.string	"clip_mins"
.LASF229:
	.string	"free_efrags"
.LASF254:
	.string	"anim_total"
.LASF33:
	.string	"width"
.LASF364:
	.string	"lasthdr"
.LASF355:
	.string	"haloalpha"
.LASF335:
	.string	"asVec"
.LASF201:
	.string	"prev_cshifts"
.LASF375:
	.string	"_wgpipe"
.LASF15:
	.string	"_Bool"
.LASF82:
	.string	"entity_s"
.LASF173:
	.string	"entity_t"
.LASF40:
	.string	"conwidth"
.LASF213:
	.string	"paused"
.LASF125:
	.string	"nummodelsurfaces"
.LASF208:
	.string	"nodrift"
.LASF310:
	.string	"numtris"
.LASF119:
	.string	"flags"
.LASF257:
	.string	"anim_next"
.LASF329:
	.string	"plane_t"
.LASF393:
	.string	"cl_sfx_wizhit"
.LASF18:
	.string	"origin"
.LASF394:
	.string	"cl_sfx_knighthit"
.LASF378:
	.string	"CL_ParseTEnt"
.LASF127:
	.string	"submodels"
.LASF278:
	.string	"texture"
.LASF31:
	.string	"fullbright"
.LASF44:
	.string	"direct"
.LASF128:
	.string	"numplanes"
.LASF151:
	.string	"entities"
.LASF30:
	.string	"colormap16"
.LASF376:
	.string	"WGPipe"
.LASF20:
	.string	"visleafs"
.LASF320:
	.string	"texels"
.LASF89:
	.string	"model"
.LASF67:
	.string	"leaf"
.LASF336:
	.string	"asVoid"
.LASF324:
	.string	"mod_sprite"
.LASF8:
	.string	"char"
.LASF269:
	.string	"styles"
.LASF24:
	.string	"planenum"
.LASF59:
	.string	"pflags"
.LASF271:
	.string	"cached_dlight"
.LASF103:
	.string	"aliasframeinstant"
.LASF49:
	.string	"vec3_t"
.LASF202:
	.string	"mviewangles"
.LASF354:
	.string	"cubescale"
.LASF341:
	.string	"visible"
.LASF60:
	.string	"entity_state_t"
.LASF21:
	.string	"firstface"
.LASF73:
	.string	"visframe"
.LASF78:
	.string	"firstmarksurface"
.LASF275:
	.string	"medge_t"
.LASF81:
	.string	"ambient_sound_level"
.LASF312:
	.string	"poseverts"
.LASF46:
	.string	"data"
.LASF301:
	.string	"ident"
.LASF279:
	.string	"mtexinfo_t"
.LASF240:
	.string	"synctype_t"
.LASF143:
	.string	"numclipnodes"
.LASF321:
	.string	"frames"
.LASF137:
	.string	"numtexinfo"
.LASF70:
	.string	"entnext"
.LASF91:
	.string	"syncbase"
.LASF150:
	.string	"lightdata"
.LASF215:
	.string	"inwater"
.LASF121:
	.string	"clipbox"
.LASF369:
	.string	"extvertices"
.LASF35:
	.string	"aspect"
.LASF214:
	.string	"onground"
.LASF390:
	.string	"causticschain"
.LASF174:
	.string	"viewangles"
.LASF43:
	.string	"maxwarpheight"
.LASF97:
	.string	"topnode"
.LASF100:
	.string	"blend"
.LASF138:
	.string	"texinfo"
.LASF327:
	.string	"modtype_t"
.LASF29:
	.string	"colormap"
.LASF272:
	.string	"samples"
.LASF295:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF270:
	.string	"cached_light"
.LASF225:
	.string	"viewentity"
.LASF216:
	.string	"intermission"
.LASF58:
	.string	"light_lev"
.LASF349:
	.string	"numVolumeVerts"
.LASF180:
	.string	"frags"
.LASF211:
	.string	"viewheight"
.LASF19:
	.string	"headnode"
.LASF26:
	.string	"dclipnode_t"
.LASF381:
	.string	"CL_UpdateTEnts"
.LASF274:
	.string	"cachededgeoffset"
.LASF323:
	.string	"mod_brush"
.LASF217:
	.string	"completed_time"
.LASF184:
	.string	"destcolor"
.LASF308:
	.string	"skinwidth"
.LASF303:
	.string	"scale"
.LASF105:
	.string	"numleafs"
.LASF372:
	.string	"triangleVis"
.LASF383:
	.string	"forward"
.LASF306:
	.string	"eyeposition"
.LASF277:
	.string	"mipadjust"
.LASF230:
	.string	"num_entities"
.LASF62:
	.string	"sfx_s"
.LASF65:
	.string	"sfx_t"
.LASF311:
	.string	"size"
.LASF339:
	.string	"baseColor"
.LASF247:
	.string	"dist"
.LASF69:
	.string	"entity"
.LASF252:
	.string	"gl_lumitex"
.LASF250:
	.string	"texture_s"
.LASF273:
	.string	"texture_t"
.LASF362:
	.string	"lastvorg"
.LASF181:
	.string	"colors"
.LASF34:
	.string	"height"
.LASF260:
	.string	"msurface_s"
.LASF287:
	.string	"msurface_t"
.LASF148:
	.string	"textures"
.LASF300:
	.string	"maliasframedesc_t"
.LASF64:
	.string	"cache"
.LASF48:
	.string	"vec_t"
.LASF197:
	.string	"items"
.LASF316:
	.string	"binormals"
.LASF123:
	.string	"clipmaxs"
.LASF314:
	.string	"commands"
.LASF235:
	.string	"scores"
.LASF267:
	.string	"shadowchain"
.LASF159:
	.string	"paliashdr"
.LASF255:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF199:
	.string	"faceanimtime"
.LASF203:
	.string	"mvelocity"
.LASF403:
	.string	"CL_InitTEnts"
.LASF93:
	.string	"lightTimestamp"
.LASF263:
	.string	"extents"
.LASF92:
	.string	"skinnum"
.LASF385:
	.string	"cl_entities"
.LASF404:
	.string	"CL_NewTempEntity"
.LASF133:
	.string	"numedges"
.LASF210:
	.string	"laststop"
.LASF315:
	.string	"triangles"
.LASF352:
	.string	"scizz"
.LASF291:
	.string	"lastclipnode"
.LASF45:
	.string	"viddef_t"
.LASF236:
	.string	"server_proto_version"
.LASF346:
	.string	"visSurf"
.LASF75:
	.string	"parent"
.LASF342:
	.string	"isStatic"
.LASF223:
	.string	"sound_precache"
.LASF2:
	.string	"short int"
.LASF166:
	.string	"shadowonly"
.LASF163:
	.string	"lastent"
.LASF175:
	.string	"forwardmove"
.LASF331:
	.string	"coords"
.LASF389:
	.string	"cl_visedicts"
.LASF12:
	.string	"long int"
.LASF68:
	.string	"leafnext"
.LASF200:
	.string	"cshifts"
.LASF248:
	.string	"signbits"
.LASF264:
	.string	"light_s"
.LASF265:
	.string	"light_t"
.LASF259:
	.string	"offsets"
.LASF299:
	.string	"bboxmax"
.LASF396:
	.string	"cl_sfx_ric1"
.LASF397:
	.string	"cl_sfx_ric2"
.LASF38:
	.string	"conbuffer"
.LASF373:
	.string	"aliaslightinstant_t"
.LASF126:
	.string	"numsubmodels"
.LASF361:
	.string	"lasteangles"
.LASF392:
	.string	"num_temp_entities"
.LASF283:
	.string	"numverts"
.LASF330:
	.string	"screenrect_s"
.LASF332:
	.string	"screenrect_t"
.LASF171:
	.string	"triplanes"
.LASF99:
	.string	"frame_interval"
.LASF334:
	.string	"asFloat"
.LASF258:
	.string	"alternate_anims"
.LASF135:
	.string	"numnodes"
.LASF167:
	.string	"vertices"
.LASF212:
	.string	"crouch"
.LASF233:
	.string	"cdtrack"
.LASF76:
	.string	"compressed_vis"
.LASF222:
	.string	"model_precache"
.LASF63:
	.string	"name"
.LASF193:
	.string	"start"
.LASF363:
	.string	"lastlradius"
.LASF4:
	.string	"unsigned int"
.LASF115:
	.string	"needload"
.LASF132:
	.string	"vertexes"
.LASF401:
	.string	"d:/Data/Nintendo/TenebraeGX/src/cl_tent.c"
.LASF359:
	.string	"lasteorg"
.LASF192:
	.string	"endtime"
.LASF204:
	.string	"velocity"
.LASF333:
	.string	"asInt"
.LASF61:
	.string	"cache_user_s"
.LASF145:
	.string	"marksurfaces"
.LASF47:
	.string	"cache_user_t"
.LASF218:
	.string	"mtime"
.LASF232:
	.string	"viewent"
.LASF7:
	.string	"long unsigned int"
.LASF318:
	.string	"indecies"
.LASF86:
	.string	"msgtime"
.LASF351:
	.string	"numVisSurf"
.LASF379:
	.string	"colorStart"
.LASF242:
	.string	"trivertx_t"
.LASF56:
	.string	"alpha"
.LASF353:
	.string	"rspeed"
.LASF74:
	.string	"minmaxs"
.LASF168:
	.string	"normals"
.LASF280:
	.string	"glpoly_s"
.LASF286:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF360:
	.string	"lastlorg"
.LASF400:
	.string	"GNU C 4.6.3"
.LASF185:
	.string	"percent"
.LASF179:
	.string	"entertime"
.LASF231:
	.string	"num_statics"
.LASF246:
	.string	"normal"
.LASF110:
	.string	"rotate_start_time"
.LASF158:
	.string	"updateframe"
.LASF116:
	.string	"type"
.LASF377:
	.string	"CL_ParseBeam"
.LASF96:
	.string	"trivial_accept"
.LASF1:
	.string	"unsigned char"
.LASF309:
	.string	"skinheight"
.LASF294:
	.string	"hull_t"
.LASF104:
	.string	"brushlightinstant"
.LASF266:
	.string	"polys"
.LASF160:
	.string	"lastpose1"
.LASF161:
	.string	"lastpose2"
.LASF284:
	.string	"neighbours"
.LASF350:
	.string	"lightCmds"
.LASF130:
	.string	"leafs"
.LASF228:
	.string	"worldmodel"
.LASF176:
	.string	"sidemove"
.LASF57:
	.string	"style"
.LASF79:
	.string	"nummarksurfaces"
.LASF195:
	.string	"movemessages"
.LASF149:
	.string	"visdata"
.LASF338:
	.string	"shadowlight_s"
.LASF357:
	.string	"shadowlight_t"
.LASF147:
	.string	"numtextures"
.LASF196:
	.string	"stats"
.LASF183:
	.string	"scoreboard_t"
.LASF165:
	.string	"lastpaliashdr"
.LASF117:
	.string	"numframes"
.LASF88:
	.string	"msg_angles"
.LASF52:
	.string	"frame"
.LASF23:
	.string	"dmodel_t"
.LASF94:
	.string	"dlightframe"
.LASF207:
	.string	"pitchvel"
.LASF0:
	.string	"signed char"
.LASF304:
	.string	"scale_origin"
.LASF140:
	.string	"surfaces"
.LASF17:
	.string	"maxs"
.LASF347:
	.string	"volumeCmds"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"recalc_refdef"
.LASF282:
	.string	"chain"
.LASF370:
	.string	"tslights"
.LASF391:
	.string	"wgPipe"
.LASF50:
	.string	"angles"
.LASF285:
	.string	"firstvertex"
.LASF238:
	.string	"ST_SYNC"
.LASF367:
	.string	"vieworg"
.LASF313:
	.string	"posedata"
.LASF182:
	.string	"translations"
.LASF9:
	.string	"double"
.LASF399:
	.string	"cl_sfx_r_exp3"
.LASF124:
	.string	"firstmodelsurface"
.LASF189:
	.string	"filtercube"
.LASF319:
	.string	"gl_lumatex"
.LASF356:
	.string	"oldlightorigin"
.LASF198:
	.string	"item_gettime"
.LASF326:
	.string	"mod_alias3"
.LASF169:
	.string	"tangents"
.LASF245:
	.string	"mplane_s"
.LASF249:
	.string	"mplane_t"
.LASF95:
	.string	"dlightbits"
.LASF122:
	.string	"clipmins"
.LASF387:
	.string	"cl_beams"
.LASF87:
	.string	"msg_origins"
.LASF156:
	.string	"_next"
.LASF343:
	.string	"castShadow"
.LASF237:
	.string	"client_state_t"
.LASF243:
	.string	"position"
.LASF296:
	.string	"numposes"
.LASF155:
	.string	"aliasframeinstant_s"
.LASF14:
	.string	"qboolean"
.LASF261:
	.string	"firstedge"
.LASF345:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
