	.file	"pr_cmds.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl PF_fabs
	.type	PF_fabs, @function
PF_fabs:
.LFB72:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/pr_cmds.c"
	.loc 1 1029 0
	.cfi_startproc
	.loc 1 1031 0
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
.LVL0:
	.loc 1 1032 0
	lfs 0,16(9)
	fabs 0,0
	stfs 0,4(9)
	.loc 1 1033 0
	blr
	.cfi_endproc
.LFE72:
	.size	PF_fabs, .-PF_fabs
	.align 2
	.globl PF_precache_file
	.type	PF_precache_file, @function
PF_precache_file:
.LFB78:
	.loc 1 1156 0
	.cfi_startproc
	.loc 1 1157 0
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	lwz 0,16(9)
	stw 0,4(9)
	.loc 1 1158 0
	blr
	.cfi_endproc
.LFE78:
	.size	PF_precache_file, .-PF_precache_file
	.align 2
	.globl PF_traceon
	.type	PF_traceon, @function
PF_traceon:
.LFB82:
	.loc 1 1218 0
	.cfi_startproc
	.loc 1 1219 0
	li 0,1
	lis 9,pr_trace@ha
	stb 0,pr_trace@l(9)
	.loc 1 1220 0
	blr
	.cfi_endproc
.LFE82:
	.size	PF_traceon, .-PF_traceon
	.align 2
	.globl PF_traceoff
	.type	PF_traceoff, @function
PF_traceoff:
.LFB83:
	.loc 1 1223 0
	.cfi_startproc
	.loc 1 1224 0
	li 0,0
	lis 9,pr_trace@ha
	stb 0,pr_trace@l(9)
	.loc 1 1225 0
	blr
	.cfi_endproc
.LFE83:
	.size	PF_traceoff, .-PF_traceoff
	.align 2
	.globl PF_rint
	.type	PF_rint, @function
PF_rint:
.LFB88:
	.loc 1 1341 0
	.cfi_startproc
	.loc 1 1343 0
	lis 9,pr_globals@ha
	.loc 1 1344 0
	lis 11,.LC4@ha
	.loc 1 1343 0
	lwz 9,pr_globals@l(9)
	.loc 1 1344 0
	lfs 13,.LC4@l(11)
	.loc 1 1345 0
	lis 11,.LC1@ha
	.loc 1 1343 0
	lfs 0,16(9)
.LVL1:
	.loc 1 1341 0
	stwu 1,-32(1)
.LCFI0:
	.cfi_def_cfa_offset 32
	.loc 1 1344 0
	fcmpu 7,0,13
	.loc 1 1345 0
	lfs 13,.LC1@l(11)
	.loc 1 1344 0
	bgt- 7,.L13
	.loc 1 1347 0
	fsub 0,0,13
	addi 11,1,24
	lis 0,0x4330
	stw 0,16(1)
	fctiwz 0,0
	stfiwx 0,0,11
	lis 11,.LC3@ha
	lfs 0,.LC3@l(11)
	lwz 0,24(1)
	xoris 0,0,0x8000
	stw 0,20(1)
	lfd 13,16(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,4(9)
	.loc 1 1348 0
	addi 1,1,32
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
.L13:
.LCFI2:
	.cfi_restore_state
	.loc 1 1345 0
	fadd 0,0,13
	addi 11,1,28
	lis 0,0x4330
	stw 0,8(1)
	fctiwz 0,0
	stfiwx 0,0,11
	.loc 1 1347 0
	lis 11,.LC3@ha
	lfs 0,.LC3@l(11)
	.loc 1 1345 0
	lwz 0,28(1)
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 13,8(1)
	.loc 1 1347 0
	fsub 0,13,0
	frsp 0,0
	stfs 0,4(9)
	.loc 1 1348 0
	addi 1,1,32
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE88:
	.size	PF_rint, .-PF_rint
	.align 2
	.globl PF_Fixme
	.type	PF_Fixme, @function
PF_Fixme:
.LFB108:
	.loc 1 1935 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1936 0
	lis 3,.LC5@ha
	la 3,.LC5@l(3)
	.loc 1 1935 0
	stw 0,12(1)
	.loc 1 1936 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl PR_RunError
	.loc 1 1937 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE108:
	.size	PF_Fixme, .-PF_Fixme
	.align 2
	.globl PF_localcmd
	.type	PF_localcmd, @function
PF_localcmd:
.LFB65:
	.loc 1 911 0
	.cfi_startproc
.LVL2:
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 914 0
	lis 9,pr_globals@ha
	lis 11,pr_strings@ha
	lwz 9,pr_globals@l(9)
	.loc 1 911 0
	stw 0,12(1)
	.loc 1 914 0
	lwz 3,pr_strings@l(11)
	lwz 0,16(9)
	.cfi_offset 65, 4
	.loc 1 915 0
	add 3,3,0
	bl Cbuf_AddText
.LVL3:
	.loc 1 916 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE65:
	.size	PF_localcmd, .-PF_localcmd
	.align 2
	.globl PF_setspawnparms
	.type	PF_setspawnparms, @function
PF_setspawnparms:
.LFB106:
	.loc 1 1726 0
	.cfi_startproc
.LVL4:
	mflr 0
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1731 0
	lis 9,pr_globals@ha
	lis 11,sv+3500@ha
	lwz 9,pr_globals@l(9)
	.loc 1 1726 0
	stw 0,20(1)
	.loc 1 1731 0
	lwz 3,sv+3500@l(11)
	lwz 0,16(9)
	.cfi_offset 65, 4
	.loc 1 1726 0
	stw 30,8(1)
	.loc 1 1732 0
	add 3,3,0
	.loc 1 1726 0
	stw 31,12(1)
	.loc 1 1732 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	bl NUM_FOR_EDICT
.LVL5:
	lis 31,svs@ha
	.loc 1 1733 0
	mr. 30,3
	ble- 0,.L17
	.loc 1 1733 0 is_stmt 0 discriminator 1
	lwz 0,svs@l(31)
	cmpw 7,30,0
	bgt- 7,.L17
.LVL6:
.L18:
	.loc 1 1737 0 is_stmt 1
	addi 30,30,-1
.LVL7:
	la 31,svs@l(31)
	slwi 9,30,8
	slwi 0,30,2
	subf 0,0,9
	lwz 11,8(31)
	subf 0,30,0
	.loc 1 1734 0
	lis 9,pr_global_struct@ha
	.loc 1 1737 0
	slwi 0,0,5
	.loc 1 1734 0
	lwz 8,pr_global_struct@l(9)
	.loc 1 1737 0
	subf 30,30,0
.LVL8:
	.loc 1 1725 0
	li 0,16
	.loc 1 1737 0
	slwi 30,30,3
	.loc 1 1725 0
	mtctr 0
	.loc 1 1737 0
	add 11,11,30
	.loc 1 1725 0
	li 9,0
	addis 11,11,0x1
	addi 11,11,-1360
.LVL9:
.L19:
	.loc 1 1740 0 discriminator 2
	lwzu 0,4(11)
	add 10,8,9
	addi 9,9,4
	stw 0,172(10)
	.loc 1 1739 0 discriminator 2
	bdnz .L19
	.loc 1 1741 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL10:
.L17:
.LCFI10:
	.cfi_restore_state
	.loc 1 1734 0
	lis 3,.LC6@ha
.LVL11:
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl PR_RunError
	b .L18
	.cfi_endproc
.LFE106:
	.size	PF_setspawnparms, .-PF_setspawnparms
	.align 2
	.globl PF_makestatic
	.type	PF_makestatic, @function
PF_makestatic:
.LFB105:
	.loc 1 1678 0
	.cfi_startproc
	mflr 0
	stwu 1,-72(1)
.LCFI11:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	.loc 1 1682 0
	lis 9,pr_globals@ha
	lis 11,sv+3500@ha
	lwz 9,pr_globals@l(9)
	.loc 1 1684 0
	li 4,20
	.loc 1 1678 0
	stw 0,76(1)
	stw 31,68(1)
	.loc 1 1684 0
	lis 31,sv+36308@ha
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	la 31,sv+36308@l(31)
	.loc 1 1682 0
	lwz 0,16(9)
	.loc 1 1678 0
	stw 29,60(1)
	.loc 1 1684 0
	mr 3,31
	.loc 1 1682 0
	lwz 29,sv+3500@l(11)
	.cfi_offset 29, -12
	.loc 1 1678 0
	stw 24,40(1)
	.loc 1 1682 0
	add 29,29,0
.LVL12:
	.loc 1 1678 0
	stw 25,44(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 30,64(1)
	.loc 1 1684 0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	bl MSG_WriteByte
	.loc 1 1686 0
	lis 9,pr_strings@ha
	lwz 0,720(29)
	lwz 3,pr_strings@l(9)
	add 3,3,0
	bl SV_ModelIndex
	mr 4,3
	mr 3,31
	bl MSG_WriteByte
	.loc 1 1688 0
	lfs 0,724(29)
	addi 9,1,28
	mr 3,31
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,28(1)
	bl MSG_WriteByte
	.loc 1 1689 0
	lfs 0,912(29)
	addi 9,1,32
	mr 3,31
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,32(1)
	bl MSG_WriteByte
	.loc 1 1690 0
	lfs 0,728(29)
	addi 9,1,36
	mr 3,31
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,36(1)
	bl MSG_WriteByte
	.loc 1 1702 0
	lis 9,eval_alpha@ha
	lwz 0,eval_alpha@l(9)
	li 4,0
	cmpwi 7,0,0
	beq- 7,.L24
	.loc 1 1702 0 is_stmt 0 discriminator 1
	add 9,29,0
	lfs 13,604(9)
	lis 9,.LC7@ha
	lfs 0,.LC7@l(9)
	addi 9,1,24
	fmuls 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,24(1)
.L24:
	.loc 1 1702 0 discriminator 3
	mr 3,31
	bl MSG_WriteByte
	.loc 1 1703 0 is_stmt 1 discriminator 3
	lis 9,eval_style@ha
	lwz 0,eval_style@l(9)
	li 4,0
	cmpwi 7,0,0
	beq- 7,.L25
	.loc 1 1703 0 is_stmt 0 discriminator 1
	add 9,29,0
	lfs 0,604(9)
	addi 9,1,20
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,20(1)
.L25:
	.loc 1 1703 0 discriminator 3
	mr 3,31
	bl MSG_WriteByte
	.loc 1 1704 0 is_stmt 1 discriminator 3
	lis 9,eval_light_lev@ha
	lwz 0,eval_light_lev@l(9)
	li 4,300
	cmpwi 7,0,0
	beq- 7,.L26
	.loc 1 1704 0 is_stmt 0 discriminator 1
	add 9,29,0
	lfs 0,604(9)
	addi 9,1,16
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,16(1)
.L26:
	.loc 1 1704 0 discriminator 3
	mr 3,31
	bl MSG_WriteShort
	.loc 1 1705 0 is_stmt 1 discriminator 3
	lis 9,eval_pflags@ha
	lwz 0,eval_pflags@l(9)
	li 4,0
	cmpwi 7,0,0
	beq- 7,.L27
	.loc 1 1705 0 is_stmt 0 discriminator 1
	add 9,29,0
	lfs 0,604(9)
	addi 9,1,12
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,12(1)
.L27:
	.loc 1 1705 0 discriminator 3
	mr 3,31
	lis 25,eval_color@ha
	lis 26,.LC7@ha
	bl MSG_WriteByte
.LVL13:
	.loc 1 1677 0 is_stmt 1 discriminator 3
	addi 28,29,640
	li 30,0
	la 25,eval_color@l(25)
	la 26,.LC7@l(26)
	.loc 1 1711 0 discriminator 3
	lis 27,vec3_origin@ha
	addi 24,29,604
.LVL14:
.L29:
	.loc 1 1709 0
	lfsu 1,4(28)
	mr 3,31
	bl MSG_WriteCoord
	.loc 1 1710 0
	lfs 1,36(28)
	mr 3,31
	bl MSG_WriteAngle
	.loc 1 1711 0
	lwz 0,0(25)
	la 9,vec3_origin@l(27)
	cmpwi 7,0,0
	beq- 7,.L28
	.loc 1 1711 0 is_stmt 0 discriminator 1
	add 9,24,0
.L28:
	.loc 1 1711 0 discriminator 3
	lfsx 13,9,30
	addi 9,1,8
	lfs 0,0(26)
	mr 3,31
	fmuls 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,8(1)
	bl MSG_WriteByte
	.loc 1 1707 0 is_stmt 1 discriminator 3
	cmpwi 7,30,8
	addi 30,30,4
	bne+ 7,.L29
	.loc 1 1715 0
	mr 3,29
	bl ED_Free
	.loc 1 1716 0
	lwz 0,76(1)
	lwz 24,40(1)
	mtlr 0
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
.LVL15:
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
.LCFI12:
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
.LFE105:
	.size	PF_makestatic, .-PF_makestatic
	.align 2
	.globl PF_Remove
	.type	PF_Remove, @function
PF_Remove:
.LFB75:
	.loc 1 1059 0
	.cfi_startproc
.LVL16:
	mflr 0
	stwu 1,-8(1)
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1062 0
	lis 9,pr_globals@ha
	lis 11,sv+3500@ha
	lwz 9,pr_globals@l(9)
	.loc 1 1059 0
	stw 0,12(1)
	.loc 1 1062 0
	lwz 3,sv+3500@l(11)
	lwz 0,16(9)
	.cfi_offset 65, 4
	.loc 1 1063 0
	add 3,3,0
	bl ED_Free
.LVL17:
	.loc 1 1064 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI14:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE75:
	.size	PF_Remove, .-PF_Remove
	.align 2
	.globl PF_lightstyle
	.type	PF_lightstyle, @function
PF_lightstyle:
.LFB87:
	.loc 1 1315 0
	.cfi_startproc
	mflr 0
	stwu 1,-40(1)
.LCFI15:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 1321 0
	lis 9,pr_globals@ha
	lwz 11,pr_globals@l(9)
	.loc 1 1325 0
	lis 9,sv@ha
	.loc 1 1315 0
	stw 0,44(1)
	.loc 1 1325 0
	la 9,sv@l(9)
	.loc 1 1321 0
	addi 10,1,8
	.loc 1 1315 0
	stw 26,16(1)
	.loc 1 1321 0
	lfs 0,16(11)
	.loc 1 1328 0
	lwz 0,3504(9)
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 1 1321 0
	fctiwz 0,0
	.loc 1 1315 0
	stw 27,20(1)
	stw 28,24(1)
	.loc 1 1328 0
	cmpwi 7,0,1
	.loc 1 1315 0
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 1321 0
	stfiwx 0,0,10
	.loc 1 1322 0
	lis 10,pr_strings@ha
	.loc 1 1321 0
	lwz 27,8(1)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL18:
	.loc 1 1322 0
	lwz 11,28(11)
	lwz 26,pr_strings@l(10)
	.loc 1 1325 0
	addi 0,27,808
	slwi 0,0,2
	.loc 1 1322 0
	add 26,26,11
.LVL19:
	.loc 1 1325 0
	add 9,9,0
	stw 26,4(9)
	.loc 1 1328 0
	beq- 7,.L43
.L37:
	.loc 1 1338 0
	lwz 0,44(1)
	lwz 26,16(1)
.LVL20:
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.L43:
.LCFI17:
	.cfi_restore_state
.LVL21:
	.loc 1 1331 0
	lis 28,svs@ha
	lwz 0,svs@l(28)
	la 28,svs@l(28)
	lwz 31,8(28)
.LVL22:
	cmpwi 7,0,0
	ble- 7,.L37
	li 29,0
.LVL23:
.L41:
	.loc 1 1332 0
	lbz 0,0(31)
	.loc 1 1334 0
	addi 30,31,56
	.loc 1 1331 0
	addi 29,29,1
	.loc 1 1334 0
	mr 3,30
	.loc 1 1332 0
	cmpwi 7,0,0
	.loc 1 1334 0
	li 4,12
	.loc 1 1332 0
	bne- 7,.L39
	.loc 1 1332 0 is_stmt 0 discriminator 1
	lbz 0,1(31)
	cmpwi 7,0,0
	beq- 7,.L40
.L39:
	.loc 1 1334 0 is_stmt 1
	bl MSG_WriteChar
	.loc 1 1335 0
	mr 3,30
	mr 4,27
	bl MSG_WriteChar
	.loc 1 1336 0
	mr 3,30
	mr 4,26
	bl MSG_WriteString
.L40:
.LVL24:
	.loc 1 1331 0
	lwz 0,0(28)
	addis 31,31,0x1
.LVL25:
	addi 31,31,-1288
.LVL26:
	cmpw 7,0,29
	bgt+ 7,.L41
	.loc 1 1338 0
	lwz 0,44(1)
	lwz 26,16(1)
.LVL27:
	mtlr 0
	lwz 27,20(1)
.LVL28:
	lwz 28,24(1)
	lwz 29,28(1)
.LVL29:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL30:
	addi 1,1,40
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE87:
	.size	PF_lightstyle, .-PF_lightstyle
	.align 2
	.globl PF_changeyaw
	.type	PF_changeyaw, @function
PF_changeyaw:
.LFB95:
	.loc 1 1506 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI19:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1510 0
	lis 9,pr_global_struct@ha
	lis 11,sv+3500@ha
	lwz 9,pr_global_struct@l(9)
	.loc 1 1506 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 1510 0
	lwz 0,112(9)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	lwz 31,sv+3500@l(11)
	add 31,31,0
.LVL31:
	.loc 1 1511 0
	lfs 1,684(31)
	bl anglemod
.LVL32:
	.loc 1 1512 0
	lfs 0,944(31)
.LVL33:
	.loc 1 1513 0
	lfs 13,948(31)
.LVL34:
	.loc 1 1515 0
	fcmpu 7,1,0
	beq- 7,.L44
	.loc 1 1518 0
	fcmpu 7,0,1
	.loc 1 1517 0
	fsubs 0,0,1
.LVL35:
	.loc 1 1518 0
	bng- 7,.L60
	.loc 1 1520 0
	lis 9,.LC8@ha
	lfs 12,.LC8@l(9)
	fcmpu 7,0,12
	cror 30,29,30
	beq- 7,.L63
.L48:
	.loc 1 1528 0
	lis 9,.LC4@ha
	lfs 12,.LC4@l(9)
	fcmpu 7,0,12
	bng- 7,.L61
.L64:
	.loc 1 1530 0
	fcmpu 7,0,13
	bng- 7,.L53
	.loc 1 1536 0
	fmr 0,13
.LVL36:
.L53:
	.loc 1 1539 0
	fadds 1,1,0
.LVL37:
	bl anglemod
.LVL38:
	stfs 1,684(31)
.L44:
	.loc 1 1540 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL39:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL40:
.L60:
.LCFI21:
	.cfi_restore_state
	.loc 1 1525 0
	lis 9,.LC10@ha
	lfs 12,.LC10@l(9)
	fcmpu 7,0,12
	cror 30,28,30
	bne- 7,.L48
	.loc 1 1526 0
	lis 9,.LC9@ha
	lfs 12,.LC9@l(9)
	.loc 1 1528 0
	lis 9,.LC4@ha
	.loc 1 1526 0
	fadds 0,0,12
.LVL41:
	.loc 1 1528 0
	lfs 12,.LC4@l(9)
	fcmpu 7,0,12
	bgt- 7,.L64
.L61:
	.loc 1 1535 0
	fneg 13,13
.LVL42:
	fcmpu 7,13,0
	bng- 7,.L53
	.loc 1 1536 0
	fmr 0,13
.LVL43:
	b .L53
.LVL44:
.L63:
	.loc 1 1521 0
	lis 9,.LC9@ha
	lfs 12,.LC9@l(9)
	fsubs 0,0,12
.LVL45:
	b .L48
	.cfi_endproc
.LFE95:
	.size	PF_changeyaw, .-PF_changeyaw
	.align 2
	.globl PF_traceline
	.type	PF_traceline, @function
PF_traceline:
.LFB60:
	.loc 1 690 0
	.cfi_startproc
	mflr 0
	stwu 1,-104(1)
.LCFI22:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	.loc 1 696 0
	lis 9,pr_globals@ha
	.loc 1 701 0
	lis 5,vec3_origin@ha
	.loc 1 696 0
	lwz 7,pr_globals@l(9)
.LVL46:
	.loc 1 701 0
	addi 9,1,88
.LVL47:
	.loc 1 690 0
	stw 0,108(1)
	.loc 1 701 0
	la 5,vec3_origin@l(5)
	.loc 1 690 0
	stw 31,100(1)
	.loc 1 699 0
	lis 31,sv@ha
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 698 0
	lfs 0,40(7)
	.loc 1 699 0
	la 31,sv@l(31)
	lwz 0,52(7)
	.loc 1 701 0
	addi 4,7,16
	fctiwz 0,0
	addi 3,1,8
	mr 6,5
	addi 7,7,28
	stfiwx 0,0,9
	.loc 1 699 0
	lwz 9,3500(31)
	.loc 1 701 0
	lwz 8,88(1)
	add 9,9,0
	bl SV_Move
.LVL48:
	.loc 1 703 0
	lbz 9,8(1)
	lis 0,0x4330
	.loc 1 704 0
	lbz 11,9(1)
	.loc 1 703 0
	stw 9,60(1)
	lis 9,.LC12@ha
	stw 0,56(1)
	lfs 0,.LC12@l(9)
	lis 9,pr_global_struct@ha
	lfd 13,56(1)
	lwz 9,pr_global_struct@l(9)
	fsub 13,13,0
	.loc 1 706 0
	lbz 8,11(1)
	.loc 1 707 0
	lbz 10,10(1)
	.loc 1 703 0
	frsp 13,13
	stfs 13,272(9)
	.loc 1 704 0
	stw 11,68(1)
	stw 0,64(1)
	.loc 1 705 0
	lwz 11,12(1)
	.loc 1 704 0
	lfd 13,64(1)
	.loc 1 705 0
	stw 11,280(9)
	.loc 1 704 0
	fsub 13,13,0
	.loc 1 701 0
	lwz 11,44(1)
	.loc 1 711 0
	cmpwi 7,11,0
	.loc 1 704 0
	frsp 13,13
	stfs 13,276(9)
	.loc 1 706 0
	stw 0,72(1)
	stw 8,76(1)
	lfd 13,72(1)
	fsub 13,13,0
	frsp 13,13
	stfs 13,320(9)
	.loc 1 707 0
	stw 0,80(1)
	stw 10,84(1)
	.loc 1 708 0
	lwz 0,16(1)
	.loc 1 707 0
	lfd 13,80(1)
	.loc 1 708 0
	stw 0,284(9)
	lwz 0,20(1)
	.loc 1 707 0
	fsub 0,13,0
	.loc 1 708 0
	stw 0,288(9)
	lwz 0,24(1)
	.loc 1 707 0
	frsp 0,0
	.loc 1 708 0
	stw 0,292(9)
	.loc 1 709 0
	lwz 0,28(1)
	.loc 1 707 0
	stfs 0,316(9)
	.loc 1 709 0
	stw 0,296(9)
	lwz 0,32(1)
	stw 0,300(9)
	lwz 0,36(1)
	stw 0,304(9)
	.loc 1 710 0
	lwz 0,40(1)
	stw 0,308(9)
	.loc 1 711 0
	beq- 7,.L66
	.loc 1 712 0
	lwz 0,3500(31)
	.loc 1 715 0
	lwz 31,100(1)
	.loc 1 712 0
	subf 11,0,11
	.loc 1 715 0
	lwz 0,108(1)
	.loc 1 712 0
	stw 11,312(9)
	.loc 1 715 0
	mtlr 0
	addi 1,1,104
	.cfi_remember_state
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L66:
.LCFI24:
	.cfi_restore_state
	lwz 0,108(1)
	lwz 31,100(1)
	mtlr 0
	.loc 1 714 0
	stw 11,312(9)
	.loc 1 715 0
	addi 1,1,104
	.cfi_restore 31
.LCFI25:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE60:
	.size	PF_traceline, .-PF_traceline
	.align 2
	.globl PF_aim
	.type	PF_aim, @function
PF_aim:
.LFB94:
	.loc 1 1427 0
	.cfi_startproc
	stwu 1,-184(1)
.LCFI26:
	.cfi_def_cfa_offset 184
	mflr 0
	stw 21,108(1)
	.loc 1 1435 0
	lis 21,pr_globals@ha
	.cfi_offset 21, -76
	.cfi_register 65, 0
	.loc 1 1427 0
	stw 0,188(1)
	.loc 1 1443 0
	addi 3,1,32
	.loc 1 1435 0
	lwz 9,pr_globals@l(21)
	.loc 1 1443 0
	addi 4,1,20
	.loc 1 1427 0
	stw 28,136(1)
	.loc 1 1435 0
	lis 28,sv@ha
	.cfi_offset 28, -48
	.cfi_offset 65, 4
	la 28,sv@l(28)
	lwz 0,16(9)
	.loc 1 1427 0
	stw 29,140(1)
	.loc 1 1439 0
	lis 9,.LC13@ha
	.loc 1 1435 0
	lwz 29,3500(28)
	.cfi_offset 29, -44
	.loc 1 1443 0
	addi 5,1,8
	.loc 1 1427 0
	stw 25,124(1)
	.loc 1 1442 0
	lis 25,pr_global_struct@ha
	.cfi_offset 25, -60
	.loc 1 1435 0
	add 29,29,0
.LVL49:
	.loc 1 1442 0
	lwz 7,pr_global_struct@l(25)
	.loc 1 1439 0
	lfs 13,652(29)
	lfs 0,.LC13@l(9)
	.loc 1 1442 0
	lwz 11,236(7)
	lwz 9,240(7)
	.loc 1 1439 0
	fadds 0,13,0
	.loc 1 1442 0
	lwz 0,244(7)
	.loc 1 1443 0
	lis 7,.LC14@ha
	.loc 1 1438 0
	lwz 10,648(29)
	.loc 1 1443 0
	lfs 1,.LC14@l(7)
	.loc 1 1438 0
	lwz 8,644(29)
	.loc 1 1427 0
	stw 24,120(1)
	.loc 1 1444 0
	lis 24,vec3_origin@ha
	.cfi_offset 24, -64
	la 24,vec3_origin@l(24)
	.loc 1 1427 0
	stfd 28,152(1)
	stfd 29,160(1)
	stfd 30,168(1)
	stfd 31,176(1)
	stw 17,92(1)
	stw 18,96(1)
	stw 19,100(1)
	stw 20,104(1)
	stw 22,112(1)
	stw 23,116(1)
	stw 26,128(1)
	stw 27,132(1)
	stw 30,144(1)
	stw 31,148(1)
	.loc 1 1438 0
	stw 8,32(1)
	stw 10,36(1)
	.loc 1 1439 0
	stfs 0,40(1)
	.loc 1 1442 0
	stw 11,20(1)
	stw 9,24(1)
	stw 0,28(1)
	.loc 1 1443 0
	.cfi_offset 31, -36
	.cfi_offset 30, -40
	.cfi_offset 27, -52
	.cfi_offset 26, -56
	.cfi_offset 23, -68
	.cfi_offset 22, -72
	.cfi_offset 20, -80
	.cfi_offset 19, -84
	.cfi_offset 18, -88
	.cfi_offset 17, -92
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	bl VectorMA
.LVL50:
	.loc 1 1444 0
	mr 9,29
	addi 3,1,44
	addi 4,1,32
	mr 5,24
	mr 6,24
	addi 7,1,8
	li 8,0
	bl SV_Move
	lwz 9,80(1)
	.loc 1 1445 0
	cmpwi 7,9,0
	beq- 7,.L69
	.loc 1 1445 0 is_stmt 0 discriminator 1
	lis 11,.LC15@ha
	lfs 13,840(9)
	lfs 0,.LC15@l(11)
	fcmpu 7,13,0
	beq- 7,.L81
.L69:
	.loc 1 1459 0 is_stmt 1
	lwz 0,3492(28)
	.loc 1 1458 0
	lis 26,pr_edict_size@ha
	.loc 1 1455 0
	lis 9,.LANCHOR0+12@ha
	.loc 1 1454 0
	lwz 17,20(1)
.LVL51:
	.loc 1 1459 0
	cmpwi 7,0,1
	.loc 1 1454 0
	lwz 18,24(1)
.LVL52:
	lwz 19,28(1)
.LVL53:
	.loc 1 1455 0
	lfs 29,.LANCHOR0+12@l(9)
.LVL54:
	.loc 1 1458 0
	lwz 31,3500(28)
	lwz 0,pr_edict_size@l(26)
.LVL55:
	.loc 1 1459 0
	ble- 7,.L72
	lis 11,.LC15@ha
	.loc 1 1465 0
	lis 9,.LC4@ha
	.loc 1 1461 0
	lfs 31,.LC15@l(11)
	.loc 1 1458 0
	add 31,31,0
	.loc 1 1465 0
	lfs 30,.LC4@l(9)
	.loc 1 1459 0
	li 30,1
	.loc 1 1456 0
	li 20,0
	la 26,pr_edict_size@l(26)
.LVL56:
	.loc 1 1465 0
	lis 23,teamplay@ha
	.loc 1 1426 0
	addi 27,1,16
	lis 22,.LC1@ha
.LVL57:
.L77:
	.loc 1 1461 0
	lfs 0,840(31)
	fcmpu 7,0,31
	bne- 7,.L73
	.loc 1 1463 0
	cmpw 7,31,29
	beq- 7,.L73
	.loc 1 1465 0
	la 9,teamplay@l(23)
	lfs 0,12(9)
	fcmpu 7,0,30
	beq- 7,.L74
	.loc 1 1465 0 is_stmt 0 discriminator 1
	lfs 0,916(29)
	fcmpu 7,0,30
	bng- 7,.L74
	lfs 13,916(31)
	fcmpu 7,0,13
	beq- 7,.L73
.L74:
	.loc 1 1469 0 is_stmt 1 discriminator 2
	lfs 11,.LC1@l(22)
	.loc 1 1426 0 discriminator 2
	addi 9,31,640
	.loc 1 1465 0 discriminator 2
	addi 11,1,4
.L76:
	addi 9,9,4
	.loc 1 1469 0 discriminator 2
	lfs 12,92(9)
	lfs 0,104(9)
	lfs 13,0(9)
	fadds 0,12,0
	fmadd 0,0,11,13
	.loc 1 1468 0 discriminator 2
	frsp 0,0
	stfsu 0,4(11)
	.loc 1 1467 0 discriminator 2
	cmpw 7,11,27
	bne+ 7,.L76
	.loc 1 1470 0
	lfs 0,32(1)
	.loc 1 1471 0
	addi 3,1,20
	.loc 1 1470 0
	lfs 12,8(1)
	lfs 13,12(1)
	fsubs 12,12,0
	lfs 0,36(1)
	lfs 11,16(1)
	fsubs 13,13,0
	lfs 0,40(1)
	stfs 12,20(1)
	fsubs 0,11,0
	stfs 13,24(1)
	stfs 0,28(1)
	.loc 1 1471 0
	bl VectorNormalize
	.loc 1 1472 0
	lwz 9,pr_global_struct@l(25)
	lfs 13,24(1)
	lfs 0,240(9)
	lfs 28,20(1)
	fmuls 13,13,0
	lfs 0,236(9)
	fmadds 0,28,0,13
	lfs 13,244(9)
	lfs 28,28(1)
	fmadds 28,28,13,0
.LVL58:
	.loc 1 1473 0
	fcmpu 7,28,29
	bnl- 7,.L82
.LVL59:
.L73:
	.loc 1 1459 0
	lwz 0,3492(28)
	addi 30,30,1
.LVL60:
	cmpw 7,0,30
	lwz 0,0(26)
	add 31,31,0
.LVL61:
	bgt+ 7,.L77
.L83:
	.loc 1 1483 0
	cmpwi 7,20,0
	beq- 7,.L72
	.loc 1 1485 0
	lfs 0,648(29)
	.loc 1 1487 0
	addi 4,1,8
	.loc 1 1485 0
	lfs 13,648(20)
	.loc 1 1486 0
	lwz 3,pr_global_struct@l(25)
	.loc 1 1485 0
	fsubs 13,13,0
	lfs 12,644(20)
	lfs 0,644(29)
	.loc 1 1486 0
	lfs 11,240(3)
	.loc 1 1485 0
	fsubs 12,12,0
	.loc 1 1486 0
	lfs 10,236(3)
	fmuls 11,13,11
	.loc 1 1485 0
	lfs 9,652(20)
	lfs 0,652(29)
	.loc 1 1486 0
	lfs 1,244(3)
	.loc 1 1487 0
	addi 3,3,236
	.loc 1 1485 0
	fsubs 0,9,0
	stfs 12,20(1)
	.loc 1 1486 0
	fmadds 11,12,10,11
	.loc 1 1485 0
	stfs 13,24(1)
	stfs 0,28(1)
	.loc 1 1487 0
	fmadds 1,0,1,11
	bl VectorScale
	.loc 1 1488 0
	lwz 0,28(1)
	.loc 1 1489 0
	addi 3,1,8
	.loc 1 1488 0
	stw 0,16(1)
	.loc 1 1489 0
	bl VectorNormalize
	.loc 1 1490 0
	lwz 0,8(1)
	lwz 9,pr_globals@l(21)
	stw 0,4(9)
	lwz 0,12(1)
	stw 0,8(9)
	lwz 0,16(1)
	stw 0,12(9)
.LVL62:
.L68:
	.loc 1 1496 0
	lwz 0,188(1)
	lwz 17,92(1)
	mtlr 0
	lwz 18,96(1)
	lwz 19,100(1)
	lwz 20,104(1)
	lwz 21,108(1)
	lwz 22,112(1)
	lwz 23,116(1)
	lwz 24,120(1)
	lwz 25,124(1)
	lwz 26,128(1)
	lwz 27,132(1)
	lwz 28,136(1)
	lwz 29,140(1)
.LVL63:
	lwz 30,144(1)
	lwz 31,148(1)
	lfd 28,152(1)
	lfd 29,160(1)
	lfd 30,168(1)
	lfd 31,176(1)
	addi 1,1,184
	.cfi_remember_state
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
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	blr
.LVL64:
.L82:
.LCFI28:
	.cfi_restore_state
	.loc 1 1475 0
	addi 3,1,44
	addi 4,1,32
	mr 5,24
	mr 6,24
	addi 7,1,8
	li 8,0
	mr 9,29
	bl SV_Move
	.loc 1 1476 0
	lwz 0,80(1)
	cmpw 7,0,31
	bne+ 7,.L73
	.loc 1 1459 0
	lwz 0,3492(28)
	addi 30,30,1
	.loc 1 1476 0
	mr 20,31
	.loc 1 1478 0
	fmr 29,28
.LVL65:
	.loc 1 1459 0
	cmpw 7,0,30
	lwz 0,0(26)
	add 31,31,0
.LVL66:
	bgt+ 7,.L77
	b .L83
.LVL67:
.L81:
	.loc 1 1446 0
	lis 11,teamplay+12@ha
	lfs 13,teamplay+12@l(11)
	lis 11,.LC4@ha
	lfs 0,.LC4@l(11)
	fcmpu 7,13,0
	beq- 7,.L70
	.loc 1 1446 0 is_stmt 0 discriminator 1
	lfs 13,916(29)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L70
	lfs 0,916(9)
	fcmpu 7,13,0
	beq+ 7,.L69
.L70:
	.loc 1 1448 0 is_stmt 1
	lwz 11,pr_global_struct@l(25)
	lwz 9,pr_globals@l(21)
	lwz 0,236(11)
	stw 0,4(9)
	lwz 0,240(11)
	stw 0,8(9)
	lwz 0,244(11)
	stw 0,12(9)
	.loc 1 1449 0
	b .L68
.LVL68:
.L72:
	.loc 1 1494 0
	lwz 9,pr_globals@l(21)
	stw 17,4(9)
	stw 18,8(9)
	stw 19,12(9)
	b .L68
	.cfi_endproc
.LFE94:
	.size	PF_aim, .-PF_aim
	.align 2
	.globl PF_nextent
	.type	PF_nextent, @function
PF_nextent:
.LFB93:
	.loc 1 1395 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI29:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	.loc 1 1399 0
	lis 29,pr_globals@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 1395 0
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 1399 0
	lis 30,sv@ha
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	lwz 9,pr_globals@l(29)
	la 30,sv@l(30)
	lwz 3,3500(30)
	lwz 0,16(9)
	.loc 1 1395 0
	stw 31,20(1)
	.loc 1 1399 0
	add 3,3,0
	.cfi_offset 31, -4
	bl NUM_FOR_EDICT
	mr 31,3
.LVL69:
	b .L87
.L85:
	.loc 1 1408 0
	bl EDICT_NUM
.LVL70:
	.loc 1 1409 0
	lbz 0,0(3)
	cmpwi 7,0,0
	beq- 7,.L89
.LVL71:
.L87:
	.loc 1 1403 0
	lwz 0,3492(30)
	.loc 1 1402 0
	addi 31,31,1
.LVL72:
	.loc 1 1408 0
	mr 3,31
	.loc 1 1403 0
	cmpw 7,0,31
	bne+ 7,.L85
	.loc 1 1405 0
	lwz 9,pr_globals@l(29)
	li 0,0
	.loc 1 1415 0
	lwz 29,12(1)
	.loc 1 1405 0
	stw 0,4(9)
	.loc 1 1415 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL73:
	addi 1,1,24
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL74:
.L89:
.LCFI31:
	.cfi_restore_state
	.loc 1 1411 0
	lwz 0,3500(30)
	lwz 9,pr_globals@l(29)
	subf 3,0,3
.LVL75:
	.loc 1 1415 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL76:
	.loc 1 1411 0
	stw 3,4(9)
	.loc 1 1415 0
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI32:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE93:
	.size	PF_nextent, .-PF_nextent
	.align 2
	.globl PF_pointcontents
	.type	PF_pointcontents, @function
PF_pointcontents:
.LFB92:
	.loc 1 1379 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI33:
	.cfi_def_cfa_offset 24
	.loc 1 1382 0
	lis 9,pr_globals@ha
	.loc 1 1379 0
	mflr 0
	stw 31,20(1)
	.loc 1 1382 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL77:
	.loc 1 1379 0
	stw 0,28(1)
	.loc 1 1384 0
	addi 3,31,16
	.cfi_offset 65, 4
	bl SV_PointContents
.LVL78:
	lis 0,0x4330
	xoris 3,3,0x8000
	stw 0,8(1)
	stw 3,12(1)
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	lfd 13,8(1)
	.loc 1 1385 0
	lwz 0,28(1)
	.loc 1 1384 0
	fsub 0,13,0
	.loc 1 1385 0
	mtlr 0
	.loc 1 1384 0
	frsp 0,0
	stfs 0,4(31)
	.loc 1 1385 0
	lwz 31,20(1)
.LVL79:
	addi 1,1,24
.LCFI34:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE92:
	.size	PF_pointcontents, .-PF_pointcontents
	.align 2
	.globl PF_checkbottom
	.type	PF_checkbottom, @function
PF_checkbottom:
.LFB91:
	.loc 1 1365 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI35:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1368 0
	lis 9,pr_globals@ha
	.loc 1 1365 0
	stw 31,20(1)
	stw 0,28(1)
	.loc 1 1368 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL80:
	lis 9,sv+3500@ha
.LVL81:
	lwz 3,sv+3500@l(9)
	lwz 0,16(31)
	.loc 1 1370 0
	add 3,3,0
	bl SV_CheckBottom
.LVL82:
	lis 0,0x4330
	stw 0,8(1)
	lis 9,.LC12@ha
	stw 3,12(1)
	lfs 0,.LC12@l(9)
	lfd 13,8(1)
	.loc 1 1371 0
	lwz 0,28(1)
	.loc 1 1370 0
	fsub 0,13,0
	.loc 1 1371 0
	mtlr 0
	.loc 1 1370 0
	frsp 0,0
	stfs 0,4(31)
	.loc 1 1371 0
	lwz 31,20(1)
	addi 1,1,24
.LCFI36:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE91:
	.size	PF_checkbottom, .-PF_checkbottom
	.align 2
	.globl PF_ceil
	.type	PF_ceil, @function
PF_ceil:
.LFB90:
	.loc 1 1354 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI37:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1355 0
	lis 9,pr_globals@ha
	.loc 1 1354 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 1355 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	lfs 1,16(31)
	bl ceil
	.loc 1 1356 0
	lwz 0,20(1)
	.loc 1 1355 0
	frsp 1,1
	.loc 1 1356 0
	mtlr 0
	.loc 1 1355 0
	stfs 1,4(31)
	.loc 1 1356 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI38:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE90:
	.size	PF_ceil, .-PF_ceil
	.align 2
	.globl PF_floor
	.type	PF_floor, @function
PF_floor:
.LFB89:
	.loc 1 1350 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI39:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 1351 0
	lis 9,pr_globals@ha
	.loc 1 1350 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 1351 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	lfs 1,16(31)
	bl floor
	.loc 1 1352 0
	lwz 0,20(1)
	.loc 1 1351 0
	frsp 1,1
	.loc 1 1352 0
	mtlr 0
	.loc 1 1351 0
	stfs 1,4(31)
	.loc 1 1352 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI40:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE89:
	.size	PF_floor, .-PF_floor
	.align 2
	.globl PF_droptofloor
	.type	PF_droptofloor, @function
PF_droptofloor:
.LFB86:
	.loc 1 1283 0
	.cfi_startproc
	mflr 0
	stwu 1,-104(1)
.LCFI41:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	.loc 1 1288 0
	lis 9,pr_global_struct@ha
	.loc 1 1293 0
	li 8,0
	.loc 1 1288 0
	lwz 9,pr_global_struct@l(9)
	.loc 1 1293 0
	addi 3,1,20
	.loc 1 1283 0
	stw 0,108(1)
	.loc 1 1293 0
	addi 7,1,8
	.loc 1 1283 0
	stw 30,88(1)
	.loc 1 1288 0
	lis 30,sv@ha
	.cfi_offset 30, -16
	.cfi_offset 65, 4
	la 30,sv@l(30)
	lwz 0,112(9)
	.loc 1 1283 0
	stw 31,92(1)
	.loc 1 1291 0
	lis 9,.LC16@ha
	.loc 1 1288 0
	lwz 31,3500(30)
	.cfi_offset 31, -12
	.loc 1 1291 0
	lfs 0,.LC16@l(9)
	.loc 1 1288 0
	add 31,31,0
.LVL83:
	.loc 1 1283 0
	stfd 31,96(1)
	.loc 1 1291 0
	lfs 13,652(31)
	.loc 1 1293 0
	mr 9,31
	.loc 1 1290 0
	lwz 11,644(31)
	.loc 1 1293 0
	addi 4,31,644
	.loc 1 1291 0
	fsubs 0,13,0
	.loc 1 1290 0
	lwz 0,648(31)
	.loc 1 1293 0
	addi 5,31,736
	addi 6,31,748
	.loc 1 1290 0
	stw 11,8(1)
	.loc 1 1291 0
	stfs 0,16(1)
	.loc 1 1290 0
	stw 0,12(1)
	.loc 1 1293 0
	.cfi_offset 63, -8
	bl SV_Move
	.loc 1 1295 0
	lis 9,.LC17@ha
	lfs 0,24(1)
	lfs 31,.LC17@l(9)
	fcmpu 7,0,31
	beq- 7,.L95
	.loc 1 1295 0 is_stmt 0 discriminator 1
	lbz 0,20(1)
	cmpwi 7,0,0
	beq- 7,.L96
.L95:
	.loc 1 1296 0 is_stmt 1
	lis 9,pr_globals@ha
	li 0,0
	lwz 9,pr_globals@l(9)
	.loc 1 1305 0
	lwz 30,88(1)
	.loc 1 1296 0
	stw 0,4(9)
	.loc 1 1305 0
	lwz 0,108(1)
	lwz 31,92(1)
.LVL84:
	mtlr 0
	lfd 31,96(1)
	addi 1,1,104
	.cfi_remember_state
.LCFI42:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL85:
.L96:
.LCFI43:
	.cfi_restore_state
	.loc 1 1299 0
	lwz 0,28(1)
	.loc 1 1300 0
	mr 3,31
	li 4,0
	.loc 1 1299 0
	stw 0,644(31)
	lwz 0,32(1)
	stw 0,648(31)
	lwz 0,36(1)
	stw 0,652(31)
	.loc 1 1300 0
	bl SV_LinkEdict
	.loc 1 1301 0
	lfs 0,908(31)
	addi 9,1,80
	lis 0,0x4330
	fctiwz 0,0
	stw 0,72(1)
	stfiwx 0,0,9
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	.loc 1 1303 0
	lis 9,pr_globals@ha
	.loc 1 1301 0
	lwz 0,80(1)
	.loc 1 1302 0
	lwz 11,56(1)
	.loc 1 1301 0
	ori 0,0,512
	.loc 1 1303 0
	lwz 9,pr_globals@l(9)
	.loc 1 1301 0
	xoris 0,0,0x8000
	stw 0,76(1)
	.loc 1 1302 0
	lwz 0,3500(30)
	.loc 1 1301 0
	lfd 13,72(1)
	.loc 1 1302 0
	subf 0,0,11
	.loc 1 1305 0
	lwz 30,88(1)
	.loc 1 1302 0
	stw 0,792(31)
	.loc 1 1301 0
	fsub 0,13,0
	.loc 1 1305 0
	lwz 0,108(1)
	mtlr 0
	.loc 1 1301 0
	frsp 0,0
	stfs 0,908(31)
	.loc 1 1303 0
	stfs 31,4(9)
	.loc 1 1305 0
	lwz 31,92(1)
.LVL86:
	lfd 31,96(1)
	addi 1,1,104
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI44:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE86:
	.size	PF_droptofloor, .-PF_droptofloor
	.align 2
	.globl PF_setorigin
	.type	PF_setorigin, @function
PF_setorigin:
.LFB42:
	.loc 1 121 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI45:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 125 0
	lis 9,pr_globals@ha
	.loc 1 128 0
	li 4,0
	.loc 1 125 0
	lwz 11,pr_globals@l(9)
	lis 9,sv+3500@ha
	.loc 1 121 0
	stw 0,12(1)
	.loc 1 125 0
	lwz 10,sv+3500@l(9)
	lwz 9,16(11)
	.loc 1 127 0
	lwz 0,28(11)
	.cfi_offset 65, 4
	.loc 1 125 0
	add 9,10,9
.LVL87:
	.loc 1 127 0
	stw 0,644(9)
	.loc 1 128 0
	mr 3,9
	.loc 1 127 0
	lwz 0,32(11)
	stw 0,648(9)
	lwz 0,36(11)
	stw 0,652(9)
	.loc 1 128 0
	bl SV_LinkEdict
.LVL88:
	.loc 1 129 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI46:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE42:
	.size	PF_setorigin, .-PF_setorigin
	.align 2
	.globl PF_walkmove
	.type	PF_walkmove, @function
PF_walkmove:
.LFB85:
	.loc 1 1240 0
	.cfi_startproc
	stwu 1,-80(1)
.LCFI47:
	.cfi_def_cfa_offset 80
	mflr 0
	stw 29,52(1)
	.loc 1 1247 0
	lis 29,pr_global_struct@ha
	.cfi_offset 29, -28
	.cfi_register 65, 0
	.loc 1 1240 0
	stw 0,84(1)
	.loc 1 1247 0
	lwz 9,pr_global_struct@l(29)
	.loc 1 1240 0
	stw 30,56(1)
	.loc 1 1247 0
	lwz 30,112(9)
	.cfi_offset 30, -24
	.cfi_offset 65, 4
	lis 9,sv+3500@ha
	.loc 1 1240 0
	stw 27,44(1)
	.loc 1 1247 0
	lwz 27,sv+3500@l(9)
	.cfi_offset 27, -36
	.loc 1 1248 0
	lis 9,pr_globals@ha
	.loc 1 1240 0
	stw 31,60(1)
	.loc 1 1247 0
	add 27,27,30
.LVL89:
	.loc 1 1248 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 31, -20
	.loc 1 1251 0
	lfs 0,908(27)
	addi 9,1,32
	.loc 1 1240 0
	stfd 31,72(1)
	.loc 1 1251 0
	fctiwz 0,0
	.loc 1 1240 0
	stfd 30,64(1)
	stw 28,48(1)
	.loc 1 1248 0
	lfs 13,16(31)
.LVL90:
	.loc 1 1249 0
	lfs 31,28(31)
	.cfi_offset 28, -32
	.cfi_offset 62, -16
	.cfi_offset 63, -8
.LVL91:
	.loc 1 1251 0
	stfiwx 0,0,9
	lwz 0,32(1)
	andi. 9,0,515
	bne- 0,.L100
	.loc 1 1253 0
	li 0,0
	.loc 1 1273 0
	lwz 27,44(1)
.LVL92:
	.loc 1 1253 0
	stw 0,4(31)
	.loc 1 1273 0
	lwz 0,84(1)
	lwz 28,48(1)
	mtlr 0
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 30,64(1)
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI48:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL93:
.L100:
.LCFI49:
	.cfi_restore_state
	.loc 1 1257 0
	lis 9,.LC18@ha
	.loc 1 1264 0
	lis 28,pr_xfunction@ha
	.loc 1 1257 0
	lfd 0,.LC18@l(9)
	lis 9,.LC9@ha
	fmul 13,13,0
	lfs 0,.LC9@l(9)
	fadd 13,13,13
	fdiv 30,13,0
.LVL94:
	frsp 30,30
.LVL95:
	.loc 1 1259 0
	fmr 1,30
	bl cos
.LVL96:
	fmul 0,1,31
	.loc 1 1260 0
	fmr 1,30
	.loc 1 1259 0
	frsp 0,0
	stfs 0,8(1)
	.loc 1 1260 0
	bl sin
	fmul 31,31,1
.LVL97:
	.loc 1 1261 0
	li 0,0
	.loc 1 1267 0
	mr 3,27
	addi 4,1,8
	li 5,1
	.loc 1 1264 0
	lwz 27,pr_xfunction@l(28)
.LVL98:
	.loc 1 1261 0
	stw 0,16(1)
	.loc 1 1260 0
	frsp 31,31
	stfs 31,12(1)
	.loc 1 1267 0
	bl SV_movestep
.LVL99:
	lis 0,0x4330
	stw 3,28(1)
	stw 0,24(1)
	lis 11,.LC12@ha
	lfs 0,.LC12@l(11)
	lfd 13,24(1)
	.loc 1 1273 0
	lwz 0,84(1)
	.loc 1 1267 0
	fsub 0,13,0
	.loc 1 1272 0
	lwz 9,pr_global_struct@l(29)
	.loc 1 1273 0
	mtlr 0
	.loc 1 1271 0
	stw 27,pr_xfunction@l(28)
	.loc 1 1273 0
	lwz 29,52(1)
	.loc 1 1267 0
	frsp 0,0
	.loc 1 1273 0
	lwz 27,44(1)
.LVL100:
	lwz 28,48(1)
.LVL101:
	lfd 30,64(1)
.LVL102:
	.loc 1 1267 0
	stfs 0,4(31)
	.loc 1 1273 0
	lfd 31,72(1)
	.loc 1 1272 0
	stw 30,112(9)
	.loc 1 1273 0
	lwz 31,60(1)
	lwz 30,56(1)
.LVL103:
	addi 1,1,80
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI50:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE85:
	.size	PF_walkmove, .-PF_walkmove
	.align 2
	.globl PF_eprint
	.type	PF_eprint, @function
PF_eprint:
.LFB84:
	.loc 1 1228 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI51:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1229 0
	lis 9,pr_globals@ha
	lis 11,sv+3500@ha
	lwz 9,pr_globals@l(9)
	.loc 1 1228 0
	stw 0,12(1)
	.loc 1 1229 0
	lwz 3,sv+3500@l(11)
	lwz 0,16(9)
	.cfi_offset 65, 4
	add 3,3,0
	bl NUM_FOR_EDICT
	bl ED_PrintNum
	.loc 1 1230 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI52:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE84:
	.size	PF_eprint, .-PF_eprint
	.align 2
	.globl PF_coredump
	.type	PF_coredump, @function
PF_coredump:
.LFB81:
	.loc 1 1213 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI53:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1214 0
	.cfi_offset 65, 4
	bl ED_PrintEdicts
	.loc 1 1215 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI54:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE81:
	.size	PF_coredump, .-PF_coredump
	.align 2
	.globl PF_Find
	.type	PF_Find, @function
PF_Find:
.LFB76:
	.loc 1 1118 0
	.cfi_startproc
	stwu 1,-40(1)
.LCFI55:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 25,12(1)
	.loc 1 1124 0
	lis 25,pr_globals@ha
	.cfi_offset 25, -28
	.cfi_register 65, 0
	lwz 9,pr_globals@l(25)
	.loc 1 1118 0
	stw 0,44(1)
	stw 29,28(1)
	.loc 1 1124 0
	lis 29,sv@ha
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	la 29,sv@l(29)
	lwz 0,16(9)
	lwz 3,3500(29)
	.loc 1 1118 0
	stw 26,16(1)
	.loc 1 1126 0
	lis 26,pr_strings@ha
	.cfi_offset 26, -24
	.loc 1 1124 0
	add 3,3,0
	.loc 1 1118 0
	stw 27,20(1)
	stw 28,24(1)
	stw 31,36(1)
	stw 30,32(1)
	.loc 1 1124 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	bl NUM_FOR_EDICT
	.loc 1 1125 0
	lwz 9,pr_globals@l(25)
	.loc 1 1124 0
	mr 31,3
.LVL104:
	.loc 1 1126 0
	lwz 28,pr_strings@l(26)
	lwz 0,40(9)
	.loc 1 1125 0
	lwz 27,28(9)
.LVL105:
	.loc 1 1127 0
	add. 28,28,0
	beq- 0,.L111
.LVL106:
.L105:
	.loc 1 1130 0
	lwz 0,3492(29)
	addi 31,31,1
.LVL107:
	cmpw 7,31,0
	bge- 7,.L106
	.loc 1 1135 0
	slwi 27,27,2
.LVL108:
.L109:
	.loc 1 1132 0
	mr 3,31
	.loc 1 1130 0
	addi 31,31,1
.LVL109:
	.loc 1 1132 0
	bl EDICT_NUM
.LVL110:
	.loc 1 1138 0
	mr 4,28
	.loc 1 1133 0
	lbz 0,0(3)
	.loc 1 1132 0
	mr 30,3
.LVL111:
	.loc 1 1135 0
	add 9,3,27
	.loc 1 1133 0
	cmpwi 7,0,0
	bne- 7,.L107
	.loc 1 1135 0
	lwz 3,pr_strings@l(26)
.LVL112:
	lwz 0,604(9)
.LVL113:
	.loc 1 1136 0
	add. 3,3,0
	beq- 0,.L107
	.loc 1 1138 0
	bl strcmp
.LVL114:
	cmpwi 7,3,0
	beq- 7,.L112
.L107:
.LVL115:
	.loc 1 1130 0
	lwz 0,3492(29)
	cmpw 7,0,31
	bgt+ 7,.L109
.LVL116:
.L106:
	.loc 1 1145 0
	lwz 9,pr_globals@l(25)
	li 0,0
	.loc 1 1146 0
	lwz 25,12(1)
	.loc 1 1145 0
	stw 0,4(9)
	.loc 1 1146 0
	lwz 0,44(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
.LVL117:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL118:
	addi 1,1,40
	.cfi_remember_state
.LCFI56:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL119:
.L112:
.LCFI57:
	.cfi_restore_state
	.loc 1 1140 0
	lwz 0,3500(29)
	lwz 9,pr_globals@l(25)
	subf 30,0,30
.LVL120:
	.loc 1 1146 0
	lwz 0,44(1)
	.loc 1 1140 0
	stw 30,4(9)
	.loc 1 1146 0
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
.LVL121:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL122:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI58:
	.cfi_def_cfa_offset 0
	blr
.LVL123:
.L111:
.LCFI59:
	.cfi_restore_state
	.loc 1 1128 0
	lis 3,.LC20@ha
.LVL124:
	la 3,.LC20@l(3)
	crxor 6,6,6
	bl PR_RunError
	b .L105
	.cfi_endproc
.LFE76:
	.size	PF_Find, .-PF_Find
	.align 2
	.globl PF_Spawn
	.type	PF_Spawn, @function
PF_Spawn:
.LFB74:
	.loc 1 1052 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI60:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1054 0
	.cfi_offset 65, 4
	bl ED_Alloc
.LVL125:
	.loc 1 1055 0
	lis 9,sv+3500@ha
	lwz 0,sv+3500@l(9)
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	subf 0,0,3
	stw 0,4(9)
	.loc 1 1056 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI61:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE74:
	.size	PF_Spawn, .-PF_Spawn
	.align 2
	.globl PF_vtos
	.type	PF_vtos, @function
PF_vtos:
.LFB73:
	.loc 1 1036 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI62:
	.cfi_def_cfa_offset 16
.LBB6:
.LBB7:
	.loc 1 1012 0
	lis 9,.LANCHOR1@ha
.LBE7:
.LBE6:
	.loc 1 1036 0
	mflr 0
.LBB15:
.LBB8:
	.loc 1 1012 0
	lwz 8,.LANCHOR1@l(9)
.LBE8:
.LBE15:
	.loc 1 1036 0
	stw 30,8(1)
	.loc 1 1039 0
	lis 30,pr_globals@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	lwz 11,pr_globals@l(30)
.LBB16:
.LBB9:
	.loc 1 1013 0
	addi 10,8,1
.LBE9:
.LBE16:
	.loc 1 1036 0
	stw 0,20(1)
.LBB17:
.LBB10:
	.loc 1 1012 0
	slwi 8,8,7
.LBE10:
.LBE17:
	.loc 1 1036 0
	stw 31,12(1)
.LBB18:
.LBB11:
	.loc 1 1012 0
	la 31,.LANCHOR1@l(9)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 1013 0
	srawi 0,10,4
	addze 0,0
	.loc 1 1012 0
	addi 31,31,4
	add 31,31,8
.LVL126:
.LBE11:
.LBE18:
	.loc 1 1039 0
	lfs 1,16(11)
.LBB19:
.LBB12:
	.loc 1 1013 0
	slwi 0,0,4
.LBE12:
.LBE19:
	.loc 1 1039 0
	lfs 2,20(11)
	lfs 3,24(11)
	lis 4,.LC21@ha
.LBB20:
.LBB13:
	.loc 1 1013 0
	subf 0,0,10
.LBE13:
.LBE20:
	.loc 1 1039 0
	mr 3,31
	la 4,.LC21@l(4)
.LBB21:
.LBB14:
	.loc 1 1013 0
	stw 0,.LANCHOR1@l(9)
.LBE14:
.LBE21:
	.loc 1 1039 0
	creqv 6,6,6
	bl sprintf
	.loc 1 1040 0
	lis 9,pr_strings@ha
	lwz 0,pr_strings@l(9)
	lwz 9,pr_globals@l(30)
	subf 31,0,31
.LVL127:
	.loc 1 1041 0
	lwz 0,20(1)
	.loc 1 1040 0
	stw 31,4(9)
	.loc 1 1041 0
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
.LCFI63:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE73:
	.size	PF_vtos, .-PF_vtos
	.align 2
	.globl PF_ftos
	.type	PF_ftos, @function
PF_ftos:
.LFB71:
	.loc 1 1018 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI64:
	.cfi_def_cfa_offset 16
	mflr 0
.LBB22:
.LBB23:
	.loc 1 1012 0
	lis 9,.LANCHOR1@ha
.LBE23:
.LBE22:
	.loc 1 1024 0
	lis 4,.LC22@ha
	.loc 1 1018 0
	stw 30,8(1)
	.loc 1 1021 0
	lis 30,pr_globals@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBB28:
.LBB24:
	.loc 1 1012 0
	lwz 10,.LANCHOR1@l(9)
.LBE24:
.LBE28:
	.loc 1 1024 0
	la 4,.LC22@l(4)
	.loc 1 1018 0
	stw 0,20(1)
	.loc 1 1021 0
	lwz 11,pr_globals@l(30)
	.loc 1 1018 0
	stw 31,12(1)
.LBB29:
.LBB25:
	.loc 1 1012 0
	la 31,.LANCHOR1@l(9)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LBE25:
.LBE29:
	.loc 1 1021 0
	lfs 1,16(11)
.LVL128:
.LBB30:
.LBB26:
	.loc 1 1013 0
	addi 11,10,1
	srawi 0,11,4
	addze 0,0
	.loc 1 1012 0
	slwi 10,10,7
	addi 31,31,4
	add 31,31,10
.LVL129:
	.loc 1 1013 0
	slwi 0,0,4
	subf 0,0,11
.LBE26:
.LBE30:
	.loc 1 1024 0
	mr 3,31
.LBB31:
.LBB27:
	.loc 1 1013 0
	stw 0,.LANCHOR1@l(9)
.LBE27:
.LBE31:
	.loc 1 1024 0
	creqv 6,6,6
	bl sprintf
.LVL130:
	.loc 1 1025 0
	lis 9,pr_strings@ha
	lwz 0,pr_strings@l(9)
	lwz 9,pr_globals@l(30)
	subf 31,0,31
.LVL131:
	.loc 1 1026 0
	lwz 0,20(1)
	.loc 1 1025 0
	stw 31,4(9)
	.loc 1 1026 0
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
.LCFI65:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE71:
	.size	PF_ftos, .-PF_ftos
	.align 2
	.globl PF_findradius
	.type	PF_findradius, @function
PF_findradius:
.LFB68:
	.loc 1 961 0
	.cfi_startproc
	stwu 1,-80(1)
.LCFI66:
	.cfi_def_cfa_offset 80
	mflr 0
	stw 29,52(1)
	.loc 1 968 0
	lis 29,sv@ha
	.cfi_offset 29, -28
	.cfi_register 65, 0
	la 29,sv@l(29)
	.loc 1 961 0
	stw 0,84(1)
	.loc 1 974 0
	lwz 0,3492(29)
	.cfi_offset 65, 4
	.loc 1 961 0
	stw 23,28(1)
	.loc 1 970 0
	lis 23,pr_globals@ha
	.cfi_offset 23, -52
	.loc 1 974 0
	cmpwi 7,0,1
	.loc 1 961 0
	stw 26,40(1)
	.loc 1 970 0
	lwz 26,pr_globals@l(23)
	.cfi_offset 26, -40
	.loc 1 974 0
	li 0,0
	.loc 1 961 0
	stw 28,48(1)
	.loc 1 973 0
	lis 28,pr_edict_size@ha
	.cfi_offset 28, -32
	.loc 1 961 0
	stfd 30,64(1)
	stw 25,36(1)
	stw 31,60(1)
	stfd 31,72(1)
	stw 24,32(1)
	stw 27,44(1)
	stw 30,56(1)
	.loc 1 968 0
	lwz 25,3500(29)
	.cfi_offset 30, -24
	.cfi_offset 27, -36
	.cfi_offset 24, -48
	.cfi_offset 63, -8
	.cfi_offset 31, -20
	.cfi_offset 25, -44
	.cfi_offset 62, -16
.LVL132:
	.loc 1 971 0
	lfs 30,28(26)
.LVL133:
	.loc 1 973 0
	lwz 31,pr_edict_size@l(28)
.LVL134:
	.loc 1 974 0
	ble- 7,.L117
	.loc 1 978 0
	lis 9,.LC4@ha
	.loc 1 973 0
	add 31,25,31
	.loc 1 978 0
	lfs 31,.LC4@l(9)
	.loc 1 974 0
	li 30,1
	la 28,pr_edict_size@l(28)
.LVL135:
	lis 24,.LC1@ha
	addi 27,1,8
.LVL136:
.L120:
	.loc 1 976 0
	lbz 0,0(31)
	cmpwi 7,0,0
	bne- 7,.L118
	.loc 1 978 0
	lfs 0,640(31)
	fcmpu 7,0,31
	beq- 7,.L118
	.loc 1 981 0
	lfs 11,.LC1@l(24)
	.loc 1 960 0
	addi 10,26,12
	.loc 1 978 0
	mr 9,31
	.loc 1 960 0
	li 11,0
.L119:
	.loc 1 981 0 discriminator 2
	lfs 13,736(9)
	.loc 1 980 0 discriminator 2
	cmpwi 7,11,8
	.loc 1 981 0 discriminator 2
	lfs 0,748(9)
	lfs 12,644(9)
	addi 9,9,4
	fadds 0,13,0
	lfsu 13,4(10)
	fmadd 0,0,11,12
	fsub 0,13,0
	frsp 0,0
	stfsx 0,27,11
	.loc 1 980 0 discriminator 2
	addi 11,11,4
	bne+ 7,.L119
	.loc 1 982 0
	mr 3,27
	bl Length
	fcmpu 7,1,30
	bgt- 7,.L118
	.loc 1 985 0
	lwz 0,3500(29)
	subf 25,0,25
.LVL137:
	stw 25,844(31)
.LVL138:
	mr 25,31
.LVL139:
.L118:
	.loc 1 974 0
	lwz 0,3492(29)
	addi 30,30,1
.LVL140:
	cmpw 7,0,30
	lwz 0,0(28)
	add 31,31,0
.LVL141:
	bgt+ 7,.L120
	lwz 0,3500(29)
	lwz 26,pr_globals@l(23)
.LVL142:
	subf 0,0,25
.LVL143:
.L117:
	.loc 1 989 0
	stw 0,4(26)
	.loc 1 990 0
	lwz 0,84(1)
	lwz 23,28(1)
	mtlr 0
	lwz 24,32(1)
	lwz 25,36(1)
.LVL144:
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 30,64(1)
.LVL145:
	lfd 31,72(1)
	addi 1,1,80
.LCFI67:
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
	blr
	.cfi_endproc
.LFE68:
	.size	PF_findradius, .-PF_findradius
	.align 2
	.globl PF_cvar_set
	.type	PF_cvar_set, @function
PF_cvar_set:
.LFB67:
	.loc 1 942 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI68:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 945 0
	lis 9,pr_globals@ha
	lis 11,pr_strings@ha
	lwz 9,pr_globals@l(9)
	.loc 1 942 0
	stw 0,12(1)
	.loc 1 945 0
	lwz 0,pr_strings@l(11)
	.cfi_offset 65, 4
.LVL146:
	lwz 3,16(9)
	.loc 1 946 0
	lwz 4,28(9)
	.loc 1 948 0
	add 3,0,3
	add 4,0,4
	bl Cvar_Set
.LVL147:
	.loc 1 949 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI69:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE67:
	.size	PF_cvar_set, .-PF_cvar_set
	.align 2
	.globl PF_cvar
	.type	PF_cvar, @function
PF_cvar:
.LFB66:
	.loc 1 926 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI70:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 929 0
	lis 9,pr_globals@ha
	.loc 1 926 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 929 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL148:
	lis 9,pr_strings@ha
.LVL149:
	lwz 3,pr_strings@l(9)
	lwz 0,16(31)
	.loc 1 931 0
	add 3,3,0
	bl Cvar_VariableValue
.LVL150:
	.loc 1 932 0
	lwz 0,20(1)
	.loc 1 931 0
	stfs 1,4(31)
	.loc 1 932 0
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI71:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE66:
	.size	PF_cvar, .-PF_cvar
	.align 2
	.globl PF_stuffcmd
	.type	PF_stuffcmd, @function
PF_stuffcmd:
.LFB64:
	.loc 1 885 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI72:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 1 890 0
	lis 11,sv+3500@ha
	.loc 1 885 0
	stw 31,20(1)
	.loc 1 890 0
	lis 31,pr_globals@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 885 0
	stw 0,28(1)
	.loc 1 890 0
	lwz 9,pr_globals@l(31)
	lwz 3,sv+3500@l(11)
	lwz 0,16(9)
	.cfi_offset 65, 4
	.loc 1 885 0
	stw 29,12(1)
	lis 29,svs@ha
	.cfi_offset 29, -12
	.loc 1 890 0
	add 3,3,0
	.loc 1 885 0
	stw 30,16(1)
	.loc 1 890 0
	.cfi_offset 30, -8
	bl NUM_FOR_EDICT
.LVL151:
	.loc 1 891 0
	mr. 30,3
	ble- 0,.L127
	.loc 1 891 0 is_stmt 0 discriminator 1
	lwz 0,svs@l(29)
	cmpw 7,30,0
	ble- 7,.L128
.L127:
	.loc 1 892 0 is_stmt 1
	lis 3,.LC23@ha
.LVL152:
	la 3,.LC23@l(3)
	crxor 6,6,6
	bl PR_RunError
.L128:
	.loc 1 896 0
	addi 30,30,-1
.LVL153:
	la 29,svs@l(29)
	slwi 9,30,8
	slwi 0,30,2
	subf 0,0,9
	.loc 1 893 0
	lwz 9,pr_globals@l(31)
	.loc 1 896 0
	subf 0,30,0
	.loc 1 893 0
	lis 11,pr_strings@ha
	.loc 1 896 0
	slwi 0,0,5
	.loc 1 893 0
	lwz 4,pr_strings@l(11)
	lwz 9,28(9)
.LVL154:
	.loc 1 896 0
	subf 0,30,0
	lwz 11,8(29)
.LVL155:
	slwi 0,0,3
	.loc 1 897 0
	lis 3,.LC24@ha
	.loc 1 895 0
	lis 31,host_client@ha
.LVL156:
	.loc 1 896 0
	add 0,11,0
	.loc 1 897 0
	la 3,.LC24@l(3)
	add 4,4,9
	.loc 1 895 0
	lwz 30,host_client@l(31)
.LVL157:
	.loc 1 896 0
	stw 0,host_client@l(31)
	.loc 1 897 0
	crxor 6,6,6
	bl Host_ClientCommands
.LVL158:
	.loc 1 899 0
	lwz 0,28(1)
	.loc 1 898 0
	stw 30,host_client@l(31)
	.loc 1 899 0
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL159:
	lwz 31,20(1)
.LVL160:
	addi 1,1,24
.LCFI73:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE64:
	.size	PF_stuffcmd, .-PF_stuffcmd
	.align 2
	.globl PF_break
	.type	PF_break, @function
PF_break:
.LFB59:
	.loc 1 672 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI74:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 673 0
	lis 3,.LC25@ha
	la 3,.LC25@l(3)
	.loc 1 672 0
	stw 0,12(1)
	.loc 1 673 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Con_Printf
	.loc 1 674 0
	li 0,0
	li 9,-4
	stw 0,0(9)
	.loc 1 676 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI75:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE59:
	.size	PF_break, .-PF_break
	.align 2
	.globl PF_ambientsound
	.type	PF_ambientsound, @function
PF_ambientsound:
.LFB57:
	.loc 1 587 0
	.cfi_startproc
	mflr 0
	stwu 1,-56(1)
.LCFI76:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	.loc 1 594 0
	lis 9,pr_globals@ha
	.loc 1 587 0
	mfcr 12
	stw 30,32(1)
	.loc 1 600 0
	lis 30,sv@ha
	.cfi_offset 30, -24
	.cfi_register 70, 12
	.loc 1 587 0
	stw 0,60(1)
	.loc 1 600 0
	la 30,sv@l(30)
	.loc 1 587 0
	stw 28,24(1)
	.loc 1 600 0
	lwz 3,2212(30)
	.loc 1 594 0
	lwz 28,pr_globals@l(9)
	.cfi_offset 28, -32
	.cfi_offset 65, 4
.LVL161:
	.loc 1 595 0
	lis 9,pr_strings@ha
.LVL162:
	.loc 1 600 0
	cmpwi 4,3,0
	.loc 1 587 0
	stw 29,28(1)
	.loc 1 595 0
	lwz 0,28(28)
	lwz 29,pr_strings@l(9)
	.cfi_offset 29, -28
	.loc 1 587 0
	stfd 30,40(1)
	stfd 31,48(1)
	.loc 1 595 0
	add 29,29,0
.LVL163:
	.loc 1 587 0
	stw 31,36(1)
	stw 12,20(1)
	.loc 1 596 0
	lfs 30,40(28)
	.cfi_offset 70, -36
	.cfi_offset 31, -20
	.cfi_offset 63, -8
	.cfi_offset 62, -16
.LVL164:
	.loc 1 597 0
	lfs 31,52(28)
.LVL165:
	.loc 1 600 0
	beq- 4,.L133
	addi 30,30,2212
	li 31,0
	b .L135
.LVL166:
.L139:
	lwzu 3,4(30)
	addi 31,31,1
.LVL167:
	cmpwi 4,3,0
	beq- 4,.L133
.LVL168:
.L135:
	.loc 1 601 0
	mr 4,29
	bl strcmp
	cmpwi 7,3,0
	bne+ 7,.L139
	.loc 1 604 0
	beq- 4,.L133
	.loc 1 612 0
	lis 30,sv+36308@ha
	li 4,29
	la 30,sv+36308@l(30)
	mr 3,30
	bl MSG_WriteByte
.LVL169:
	.loc 1 614 0
	lfs 1,16(28)
	mr 3,30
	bl MSG_WriteCoord
.LVL170:
	lfs 1,20(28)
	mr 3,30
	bl MSG_WriteCoord
.LVL171:
	lfs 1,24(28)
	mr 3,30
	bl MSG_WriteCoord
.LVL172:
	.loc 1 616 0
	mr 3,30
	mr 4,31
	bl MSG_WriteByte
	.loc 1 618 0
	lis 9,.LC7@ha
	lfs 0,.LC7@l(9)
	addi 9,1,8
	mr 3,30
	fmuls 30,30,0
.LVL173:
	fctiwz 30,30
	stfiwx 30,0,9
	lwz 4,8(1)
	bl MSG_WriteByte
	.loc 1 619 0
	lis 9,.LC27@ha
	lfs 0,.LC27@l(9)
	addi 9,1,12
	mr 3,30
	fmuls 31,31,0
.LVL174:
	fctiwz 31,31
	stfiwx 31,0,9
	lwz 4,12(1)
	bl MSG_WriteByte
	.loc 1 621 0
	lwz 0,60(1)
	lwz 12,20(1)
	mtlr 0
	lwz 28,24(1)
.LVL175:
	lwz 29,28(1)
.LVL176:
	mtcrf 8,12
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 30,40(1)
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI77:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL177:
.L133:
.LCFI78:
	.cfi_restore_state
	.loc 1 606 0
	lis 3,.LC26@ha
	mr 4,29
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 621 0
	lwz 0,60(1)
	lwz 12,20(1)
	mtlr 0
	lwz 28,24(1)
.LVL178:
	lwz 29,28(1)
.LVL179:
	mtcrf 8,12
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 30,40(1)
.LVL180:
	lfd 31,48(1)
.LVL181:
	addi 1,1,56
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
	.cfi_restore 70
.LCFI79:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE57:
	.size	PF_ambientsound, .-PF_ambientsound
	.align 2
	.globl PF_sound
	.type	PF_sound, @function
PF_sound:
.LFB58:
	.loc 1 639 0
	.cfi_startproc
	mflr 0
	stwu 1,-40(1)
.LCFI80:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 646 0
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	.loc 1 647 0
	addi 10,1,8
	.loc 1 639 0
	stw 0,44(1)
	stfd 31,32(1)
	.loc 1 647 0
	lfs 0,28(9)
	.loc 1 639 0
	stw 28,16(1)
	.loc 1 647 0
	fctiwz 0,0
	.loc 1 639 0
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 646 0
	lwz 11,16(9)
	.loc 1 647 0
	stfiwx 0,0,10
	.loc 1 649 0
	lis 10,.LC7@ha
	lfs 0,.LC7@l(10)
	.loc 1 646 0
	lis 10,sv+3500@ha
	.loc 1 649 0
	lfs 13,52(9)
	.loc 1 646 0
	lwz 28,sv+3500@l(10)
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 648 0
	lis 10,pr_strings@ha
	.loc 1 649 0
	fmuls 0,13,0
	.loc 1 648 0
	lwz 29,pr_strings@l(10)
	.loc 1 649 0
	addi 10,1,12
	.loc 1 648 0
	lwz 0,40(9)
	.loc 1 646 0
	add 28,28,11
.LVL182:
	.loc 1 649 0
	fctiwz 0,0
	.loc 1 648 0
	add 29,29,0
	.loc 1 649 0
	stfiwx 0,0,10
	lwz 31,12(1)
	.loc 1 647 0
	lwz 30,8(1)
.LVL183:
	.loc 1 652 0
	cmplwi 7,31,255
	.loc 1 650 0
	lfs 31,64(9)
.LVL184:
	.loc 1 652 0
	bgt- 7,.L146
.LVL185:
.L141:
	.loc 1 655 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	fcmpu 7,31,0
	blt- 7,.L142
	.loc 1 655 0 is_stmt 0 discriminator 1
	lis 9,.LC29@ha
	lfs 0,.LC29@l(9)
	fcmpu 7,31,0
	bgt- 7,.L142
.L143:
	.loc 1 658 0 is_stmt 1
	cmplwi 7,30,7
	ble+ 7,.L145
	.loc 1 659 0
	lis 3,.LC31@ha
	mr 4,30
	la 3,.LC31@l(3)
	crxor 6,6,6
	bl Sys_Error
.L145:
	.loc 1 661 0
	fmr 1,31
	mr 3,28
	mr 4,30
	mr 5,29
	mr 6,31
	bl SV_StartSound
	.loc 1 662 0
	lwz 0,44(1)
	lwz 28,16(1)
.LVL186:
	mtlr 0
	lwz 29,20(1)
.LVL187:
	lwz 30,24(1)
.LVL188:
	lwz 31,28(1)
.LVL189:
	lfd 31,32(1)
.LVL190:
	addi 1,1,40
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL191:
.L142:
.LCFI82:
	.cfi_restore_state
	.loc 1 656 0
	fmr 1,31
	lis 3,.LC30@ha
	la 3,.LC30@l(3)
	creqv 6,6,6
	bl Sys_Error
	b .L143
.L146:
	.loc 1 653 0
	lis 3,.LC28@ha
	mr 4,31
	la 3,.LC28@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L141
	.cfi_endproc
.LFE58:
	.size	PF_sound, .-PF_sound
	.align 2
	.globl PF_ExtendedEmitter
	.type	PF_ExtendedEmitter, @function
PF_ExtendedEmitter:
.LFB56:
	.loc 1 548 0
	.cfi_startproc
	mflr 0
	stwu 1,-64(1)
.LCFI83:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	.loc 1 554 0
	lis 9,pr_globals@ha
	.loc 1 548 0
	stw 31,36(1)
	stw 0,68(1)
	.loc 1 554 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -28
.LVL192:
	.loc 1 559 0
	lis 9,pr_strings@ha
.LVL193:
	.loc 1 548 0
	stw 29,28(1)
	.loc 1 559 0
	lwz 0,76(31)
	lwz 29,pr_strings@l(9)
	.cfi_offset 29, -36
	.loc 1 548 0
	stw 30,32(1)
	.loc 1 564 0
	lis 30,sv@ha
	.cfi_offset 30, -32
	.loc 1 559 0
	add 29,29,0
	.loc 1 564 0
	la 30,sv@l(30)
	.loc 1 561 0
	mr 3,29
	.loc 1 548 0
	stfd 29,40(1)
	stfd 30,48(1)
	stfd 31,56(1)
	.loc 1 561 0
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	bl strlen
.LVL194:
	.loc 1 564 0
	lwz 0,3520(30)
	subfic 3,3,16346
	.loc 1 556 0
	lfs 29,40(31)
.LVL195:
	.loc 1 564 0
	cmpw 7,0,3
	.loc 1 557 0
	lfs 31,52(31)
.LVL196:
	.loc 1 558 0
	lfs 30,64(31)
.LVL197:
	.loc 1 564 0
	bgt+ 7,.L147
	.loc 1 567 0
	addi 30,30,3508
	li 4,36
	mr 3,30
	bl MSG_WriteByte
.LVL198:
	.loc 1 568 0
	lfs 1,16(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 569 0
	lfs 1,20(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 570 0
	lfs 1,24(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 571 0
	lfs 1,28(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 572 0
	lfs 1,32(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 573 0
	lfs 1,36(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 574 0
	fctiwz 29,29
.LVL199:
	addi 9,1,8
	mr 3,30
	stfiwx 29,0,9
	lwz 4,8(1)
	bl MSG_WriteByte
	.loc 1 575 0
	lis 9,.LC32@ha
	lfs 29,.LC32@l(9)
	addi 9,1,12
	mr 3,30
	fmuls 30,30,29
.LVL200:
	fctiwz 30,30
	stfiwx 30,0,9
	lwz 4,12(1)
	bl MSG_WriteLong
	.loc 1 576 0
	fmuls 31,31,29
.LVL201:
	addi 9,1,16
	mr 3,30
	fctiwz 31,31
	stfiwx 31,0,9
	lwz 4,16(1)
	bl MSG_WriteLong
	.loc 1 577 0
	mr 3,30
	mr 4,29
	bl MSG_WriteString
.L147:
	.loc 1 578 0
	lwz 0,68(1)
	lwz 29,28(1)
.LVL202:
	mtlr 0
	lwz 30,32(1)
	lwz 31,36(1)
.LVL203:
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
.LCFI84:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE56:
	.size	PF_ExtendedEmitter, .-PF_ExtendedEmitter
	.align 2
	.globl PF_BasicEmitter
	.type	PF_BasicEmitter, @function
PF_BasicEmitter:
.LFB55:
	.loc 1 516 0
	.cfi_startproc
	mflr 0
	stwu 1,-40(1)
.LCFI85:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 522 0
	lis 9,pr_globals@ha
	.loc 1 516 0
	stw 31,28(1)
	stw 0,44(1)
	.loc 1 522 0
	lwz 31,pr_globals@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -12
.LVL204:
	.loc 1 524 0
	lis 9,pr_strings@ha
.LVL205:
	.loc 1 516 0
	stw 29,20(1)
	.loc 1 524 0
	lwz 0,40(31)
	lwz 29,pr_strings@l(9)
	.cfi_offset 29, -20
	.loc 1 516 0
	stw 30,24(1)
	.loc 1 529 0
	lis 30,sv@ha
	.cfi_offset 30, -16
	.loc 1 524 0
	add 29,29,0
	.loc 1 529 0
	la 30,sv@l(30)
	.loc 1 526 0
	mr 3,29
	.loc 1 516 0
	stfd 31,32(1)
	.loc 1 526 0
	.cfi_offset 63, -8
	bl strlen
.LVL206:
	.loc 1 529 0
	lwz 0,3520(30)
	subfic 3,3,16360
	.loc 1 523 0
	lfs 31,28(31)
.LVL207:
	.loc 1 529 0
	cmpw 7,0,3
	bgt+ 7,.L149
	.loc 1 532 0
	addi 30,30,3508
	li 4,35
	mr 3,30
	bl MSG_WriteByte
.LVL208:
	.loc 1 533 0
	lfs 1,16(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 534 0
	lfs 1,20(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 535 0
	lfs 1,24(31)
	mr 3,30
	bl MSG_WriteCoord
	.loc 1 536 0
	fctiwz 31,31
.LVL209:
	addi 9,1,8
	mr 3,30
	stfiwx 31,0,9
	lwz 4,8(1)
	bl MSG_WriteByte
	.loc 1 537 0
	mr 3,30
	mr 4,29
	bl MSG_WriteString
.L149:
	.loc 1 538 0
	lwz 0,44(1)
	lwz 29,20(1)
.LVL210:
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL211:
	lfd 31,32(1)
	addi 1,1,40
.LCFI86:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE55:
	.size	PF_BasicEmitter, .-PF_BasicEmitter
	.align 2
	.globl PF_particle
	.type	PF_particle, @function
PF_particle:
.LFB54:
	.loc 1 496 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI87:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 501 0
	lis 9,pr_globals@ha
	lwz 4,pr_globals@l(9)
.LVL212:
	.loc 1 505 0
	addi 9,1,8
.LVL213:
	.loc 1 496 0
	stw 0,20(1)
	.loc 1 505 0
	addi 3,4,16
	lfs 13,40(4)
	lfs 0,52(4)
	addi 4,4,28
	fctiwz 13,13
	fctiwz 0,0
	stfiwx 13,0,9
	addi 9,1,12
	stfiwx 0,0,9
	lwz 5,8(1)
	lwz 6,12(1)
	.cfi_offset 65, 4
	bl SV_StartParticle
.LVL214:
	.loc 1 506 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI88:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE54:
	.size	PF_particle, .-PF_particle
	.align 2
	.globl PF_random
	.type	PF_random, @function
PF_random:
.LFB53:
	.loc 1 480 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI89:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 483 0
	.cfi_offset 65, 4
	bl rand
.LVL215:
	rlwinm 3,3,0,17,31
.LVL216:
	lis 0,0x4330
	xoris 3,3,0x8000
	stw 0,8(1)
	stw 3,12(1)
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	lis 11,.LC33@ha
	lfd 13,8(1)
	.loc 1 485 0
	lis 9,pr_globals@ha
	.loc 1 486 0
	lwz 0,20(1)
	.loc 1 483 0
	fsub 0,13,0
	lfs 13,.LC33@l(11)
	.loc 1 486 0
	mtlr 0
	.loc 1 485 0
	lwz 9,pr_globals@l(9)
	.loc 1 483 0
	frsp 0,0
	fdivs 0,0,13
	.loc 1 485 0
	stfs 0,4(9)
	.loc 1 486 0
	addi 1,1,16
.LCFI90:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE53:
	.size	PF_random, .-PF_random
	.align 2
	.globl PF_vectoyaw
	.type	PF_vectoyaw, @function
PF_vectoyaw:
.LFB51:
	.loc 1 403 0
	.cfi_startproc
	stwu 1,-32(1)
.LCFI91:
	.cfi_def_cfa_offset 32
	mflr 0
	.loc 1 409 0
	lis 11,.LC4@ha
	.loc 1 403 0
	stw 31,28(1)
	.loc 1 407 0
	lis 31,pr_globals@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 403 0
	stw 0,36(1)
	.loc 1 407 0
	lwz 9,pr_globals@l(31)
.LVL217:
	.loc 1 409 0
	lfs 0,.LC4@l(11)
	lfs 1,20(9)
	lfs 2,16(9)
	fcmpu 7,1,0
	bne- 7,.L155
	.cfi_offset 65, 4
	.loc 1 409 0 is_stmt 0 discriminator 1
	fcmpu 7,2,0
	beq- 7,.L156
.L155:
	.loc 1 413 0 is_stmt 1
	bl atan2
.LVL218:
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	lis 9,.LC18@ha
	lfd 13,.LC18@l(9)
	lis 0,0x4330
	fmul 0,1,0
	addi 9,1,16
	stw 0,8(1)
	.loc 1 414 0
	lis 11,.LC4@ha
	.loc 1 413 0
	fdiv 0,0,13
	fctiwz 0,0
	stfiwx 0,0,9
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	lwz 0,16(1)
	.loc 1 415 0
	lwz 9,pr_globals@l(31)
	.loc 1 413 0
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 13,8(1)
	fsub 0,13,0
	.loc 1 414 0
	lfs 13,.LC4@l(11)
	.loc 1 413 0
	frsp 0,0
.LVL219:
	.loc 1 414 0
	fcmpu 7,0,13
	bnl- 7,.L156
	.loc 1 415 0
	lis 11,.LC9@ha
	lfs 13,.LC9@l(11)
	fadds 0,0,13
.LVL220:
.L156:
	.loc 1 419 0
	lwz 0,36(1)
	lwz 31,28(1)
	mtlr 0
	.loc 1 418 0
	stfs 0,4(9)
	.loc 1 419 0
	addi 1,1,32
.LCFI92:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE51:
	.size	PF_vectoyaw, .-PF_vectoyaw
	.align 2
	.globl PF_vectoangles
	.type	PF_vectoangles, @function
PF_vectoangles:
.LFB52:
	.loc 1 430 0
	.cfi_startproc
	stwu 1,-56(1)
.LCFI93:
	.cfi_def_cfa_offset 56
	mflr 0
	.loc 1 437 0
	lis 9,.LC4@ha
	.loc 1 430 0
	stw 30,32(1)
	.loc 1 435 0
	lis 30,pr_globals@ha
	.cfi_offset 30, -24
	.cfi_register 65, 0
	.loc 1 430 0
	stw 0,60(1)
	stw 31,36(1)
	.loc 1 435 0
	lwz 31,pr_globals@l(30)
	.cfi_offset 31, -20
	.cfi_offset 65, 4
.LVL221:
	.loc 1 430 0
	stfd 31,48(1)
	.loc 1 437 0
	lfs 1,20(31)
	lfs 31,.LC4@l(9)
	.cfi_offset 63, -8
	.loc 1 430 0
	stfd 30,40(1)
	.loc 1 437 0
	fcmpu 7,1,31
	.loc 1 430 0
	stw 28,24(1)
	stw 29,28(1)
	.loc 1 437 0
	lfs 2,16(31)
	bne- 7,.L161
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 62, -16
	.loc 1 437 0 is_stmt 0 discriminator 1
	fcmpu 7,2,31
	beq- 7,.L176
.L161:
	.loc 1 448 0 is_stmt 1
	lis 9,.LC4@ha
	lfs 30,.LC4@l(9)
	fcmpu 7,2,30
	bne- 7,.L177
	.loc 1 454 0
	fcmpu 7,1,30
	bgt- 7,.L178
	.loc 1 457 0
	lis 9,.LC36@ha
	lis 28,.LC8@ha
	lfs 31,.LC36@l(9)
	lis 29,.LC18@ha
.LVL222:
.L166:
	.loc 1 459 0
	fmuls 1,1,1
	fmadds 2,2,2,1
	fmr 1,2
	bl sqrt
.LVL223:
	frsp 2,1
	.loc 1 460 0
	lfs 1,24(31)
.LVL224:
	bl atan2
.LVL225:
	lfs 13,.LC8@l(28)
	lfd 0,.LC18@l(29)
	lis 0,0x4330
	fmul 13,1,13
	addi 9,1,16
	stw 0,8(1)
	fdiv 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	.loc 1 461 0
	lis 9,.LC4@ha
	.loc 1 460 0
	lwz 0,16(1)
	.loc 1 462 0
	lwz 31,pr_globals@l(30)
.LVL226:
	.loc 1 460 0
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 13,8(1)
	fsub 0,13,0
	.loc 1 461 0
	lfs 13,.LC4@l(9)
	.loc 1 460 0
	frsp 0,0
.LVL227:
	.loc 1 461 0
	fcmpu 7,0,13
	bnl- 7,.L162
	.loc 1 462 0
	lis 9,.LC9@ha
	lfs 13,.LC9@l(9)
	fadds 0,0,13
.LVL228:
.L162:
	.loc 1 467 0
	li 0,0
	.loc 1 466 0
	stfs 31,8(31)
	.loc 1 467 0
	stw 0,12(31)
	.loc 1 468 0
	lwz 0,60(1)
	.loc 1 465 0
	stfs 0,4(31)
	.loc 1 468 0
	mtlr 0
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 30,40(1)
	lfd 31,48(1)
.LVL229:
	addi 1,1,56
	.cfi_remember_state
.LCFI94:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL230:
.L178:
.LCFI95:
	.cfi_restore_state
	.loc 1 455 0
	lis 9,.LC35@ha
	lis 28,.LC8@ha
	lfs 31,.LC35@l(9)
	lis 29,.LC18@ha
	b .L166
.L176:
.LVL231:
	.loc 1 440 0
	lfs 0,24(31)
	fcmpu 7,0,31
	bng- 7,.L173
	.loc 1 467 0
	li 0,0
	.loc 1 441 0
	lis 9,.LC35@ha
	.loc 1 467 0
	stw 0,12(31)
	.loc 1 468 0
	lwz 0,60(1)
	.loc 1 441 0
	lfs 0,.LC35@l(9)
.LVL232:
	.loc 1 468 0
	mtlr 0
	.loc 1 466 0
	stfs 31,8(31)
	.loc 1 465 0
	stfs 0,4(31)
	.loc 1 468 0
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL233:
	lfd 30,40(1)
	lfd 31,48(1)
.LVL234:
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI96:
	.cfi_def_cfa_offset 0
	blr
.LVL235:
.L177:
.LCFI97:
	.cfi_restore_state
	.loc 1 450 0
	lis 28,.LC8@ha
	bl atan2
.LVL236:
	lfs 31,.LC8@l(28)
	lis 29,.LC18@ha
	lfd 0,.LC18@l(29)
	fmul 31,1,31
	.loc 1 452 0
	lfs 2,16(31)
	.loc 1 450 0
	fdiv 31,31,0
	frsp 31,31
.LVL237:
	.loc 1 451 0
	fcmpu 7,31,30
	bnl- 7,.L175
	.loc 1 452 0
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	fadds 31,31,0
.LVL238:
.L175:
	lfs 1,20(31)
	b .L166
.LVL239:
.L173:
	.loc 1 467 0
	li 0,0
	.loc 1 443 0
	lis 9,.LC36@ha
	.loc 1 467 0
	stw 0,12(31)
	.loc 1 468 0
	lwz 0,60(1)
	.loc 1 443 0
	lfs 0,.LC36@l(9)
.LVL240:
	.loc 1 468 0
	mtlr 0
	.loc 1 466 0
	stfs 31,8(31)
	.loc 1 465 0
	stfs 0,4(31)
	.loc 1 468 0
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL241:
	lfd 30,40(1)
	lfd 31,48(1)
.LVL242:
	addi 1,1,56
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI98:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE52:
	.size	PF_vectoangles, .-PF_vectoangles
	.align 2
	.globl PF_vlen
	.type	PF_vlen, @function
PF_vlen:
.LFB50:
	.loc 1 383 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI99:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 387 0
	lis 31,pr_globals@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 383 0
	stw 0,20(1)
	.loc 1 387 0
	lwz 9,pr_globals@l(31)
.LVL243:
	.loc 1 389 0
	lfs 1,20(9)
	lfs 0,16(9)
	fmuls 13,1,1
	lfs 1,24(9)
.LVL244:
	fmadds 0,0,0,13
	fmadds 1,1,1,0
	.loc 1 390 0
	.cfi_offset 65, 4
	bl sqrt
.LVL245:
	.loc 1 393 0
	lwz 0,20(1)
	.loc 1 390 0
	frsp 1,1
.LVL246:
	.loc 1 392 0
	lwz 9,pr_globals@l(31)
	.loc 1 393 0
	mtlr 0
	lwz 31,12(1)
	.loc 1 390 0
	stfs 1,4(9)
	.loc 1 393 0
	addi 1,1,16
.LCFI100:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE50:
	.size	PF_vlen, .-PF_vlen
	.align 2
	.globl PF_normalize
	.type	PF_normalize, @function
PF_normalize:
.LFB49:
	.loc 1 352 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI101:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	.loc 1 357 0
	lis 30,pr_globals@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 352 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 357 0
	lwz 31,pr_globals@l(30)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL247:
	.loc 1 359 0
	lfs 1,20(31)
	lfs 0,16(31)
	fmuls 13,1,1
	lfs 1,24(31)
.LVL248:
	fmadds 0,0,0,13
	fmadds 1,1,1,0
	.loc 1 360 0
	bl sqrt
.LVL249:
	.loc 1 362 0
	lis 9,.LC4@ha
	.loc 1 360 0
	frsp 1,1
.LVL250:
	.loc 1 362 0
	lfs 0,.LC4@l(9)
	fcmpu 7,1,0
	beq- 7,.L182
	.loc 1 366 0
	lis 9,.LC17@ha
	.loc 1 373 0
	lwz 0,20(1)
	.loc 1 366 0
	lfs 13,.LC17@l(9)
	.loc 1 367 0
	lfs 0,16(31)
	.loc 1 373 0
	mtlr 0
	.loc 1 366 0
	fdivs 1,13,1
.LVL251:
	.loc 1 369 0
	lfs 12,24(31)
	.loc 1 368 0
	lfs 13,20(31)
	.loc 1 372 0
	lwz 9,pr_globals@l(30)
	.loc 1 373 0
	lwz 31,12(1)
.LVL252:
	lwz 30,8(1)
	.loc 1 367 0
	fmuls 0,1,0
.LVL253:
	.loc 1 368 0
	fmuls 13,1,13
.LVL254:
	.loc 1 369 0
	fmuls 1,1,12
.LVL255:
	.loc 1 372 0
	stfs 0,4(9)
	stfs 13,8(9)
	stfs 1,12(9)
	.loc 1 373 0
	addi 1,1,16
	.cfi_remember_state
.LCFI102:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL256:
.L182:
.LCFI103:
	.cfi_restore_state
	lwz 0,20(1)
	.loc 1 363 0
	fmr 13,0
	fmr 1,0
.LVL257:
	.loc 1 372 0
	lwz 9,pr_globals@l(30)
	.loc 1 373 0
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
.LVL258:
	.loc 1 372 0
	stfs 0,4(9)
	stfs 13,8(9)
	stfs 1,12(9)
	.loc 1 373 0
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI104:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE49:
	.size	PF_normalize, .-PF_normalize
	.align 2
	.globl PF_makevectors
	.type	PF_makevectors, @function
PF_makevectors:
.LFB41:
	.loc 1 107 0
	.cfi_startproc
	.loc 1 108 0
	lis 9,pr_global_struct@ha
	.loc 1 107 0
	mflr 0
	.loc 1 108 0
	lwz 6,pr_global_struct@l(9)
	lis 9,pr_globals@ha
	lwz 3,pr_globals@l(9)
	.loc 1 107 0
	stwu 1,-8(1)
.LCFI105:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 108 0
	addi 4,6,236
	addi 5,6,260
	addi 3,3,16
	addi 6,6,248
	.loc 1 107 0
	stw 0,12(1)
	.loc 1 108 0
	.cfi_offset 65, 4
	bl AngleVectors
	.loc 1 109 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI106:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE41:
	.size	PF_makevectors, .-PF_makevectors
	.align 2
	.globl PF_changelevel
	.type	PF_changelevel, @function
PF_changelevel:
.LFB107:
	.loc 1 1749 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI107:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1768 0
	lis 9,svs@ha
	la 9,svs@l(9)
	.loc 1 1749 0
	stw 0,12(1)
	.loc 1 1768 0
	lbz 0,16(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne+ 7,.L184
.LBB34:
.LBB35:
	.loc 1 1772 0
	lis 11,pr_globals@ha
	lis 10,pr_strings@ha
	lwz 11,pr_globals@l(11)
	.loc 1 1773 0
	lis 3,.LC37@ha
	.loc 1 1772 0
	lwz 4,pr_strings@l(10)
	.loc 1 1773 0
	la 3,.LC37@l(3)
	.loc 1 1772 0
	lwz 0,16(11)
	.loc 1 1773 0
	add 4,4,0
	.loc 1 1770 0
	li 0,1
	stb 0,16(9)
.LVL259:
	.loc 1 1773 0
	crxor 6,6,6
	bl va
.LVL260:
	bl Cbuf_AddText
.L184:
.LBE35:
.LBE34:
	.loc 1 1775 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI108:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE107:
	.size	PF_changelevel, .-PF_changelevel
	.align 2
	.globl PF_VarString
	.type	PF_VarString, @function
PF_VarString:
.LFB38:
	.loc 1 34 0
	.cfi_startproc
.LVL261:
	stwu 1,-32(1)
.LCFI109:
	.cfi_def_cfa_offset 32
	.loc 1 39 0
	lis 9,pr_argc@ha
	.loc 1 34 0
	mflr 0
	stw 28,16(1)
	.loc 1 39 0
	lwz 28,pr_argc@l(9)
	.cfi_offset 28, -16
	.cfi_register 65, 0
	.loc 1 38 0
	lis 9,.LANCHOR1@ha
	.loc 1 34 0
	stw 0,36(1)
	.loc 1 38 0
	la 9,.LANCHOR1@l(9)
	.loc 1 39 0
	cmpw 7,3,28
	.loc 1 38 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 34 0
	stw 29,20(1)
	addi 29,9,2052
	.cfi_offset 29, -12
	stw 27,12(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 38 0
	stb 0,2052(9)
.LVL262:
	.loc 1 39 0
	bge- 7,.L187
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.loc 1 33 0
	mulli 30,3,3
	lis 11,pr_globals@ha
	lwz 0,pr_globals@l(11)
	.loc 1 39 0
	lis 11,pr_strings@ha
	.loc 1 33 0
	addi 30,30,4
	.loc 1 39 0
	lwz 27,pr_strings@l(11)
	.loc 1 33 0
	slwi 30,30,2
	mr 31,3
	add 30,0,30
.LVL263:
.L188:
	.loc 1 41 0 discriminator 2
	lwz 4,0(30)
	mr 3,29
	.loc 1 39 0 discriminator 2
	addi 31,31,1
.LVL264:
	addi 30,30,12
	.loc 1 41 0 discriminator 2
	add 4,27,4
	bl strcat
.LVL265:
	.loc 1 39 0 discriminator 2
	cmpw 7,31,28
	bne+ 7,.L188
.LVL266:
.L187:
	.loc 1 44 0
	lwz 0,36(1)
	mr 3,29
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI110:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE38:
	.size	PF_VarString, .-PF_VarString
	.align 2
	.globl PF_dprint
	.type	PF_dprint, @function
PF_dprint:
.LFB69:
	.loc 1 999 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI111:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1000 0
	li 3,0
	.loc 1 999 0
	stw 0,12(1)
	.loc 1 1000 0
	.cfi_offset 65, 4
	bl PF_VarString
	mr 4,3
	lis 3,.LC24@ha
	la 3,.LC24@l(3)
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 1001 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI112:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE69:
	.size	PF_dprint, .-PF_dprint
	.align 2
	.globl PF_centerprint
	.type	PF_centerprint, @function
PF_centerprint:
.LFB48:
	.loc 1 323 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI113:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 328 0
	lis 9,pr_globals@ha
	lis 11,sv+3500@ha
	lwz 9,pr_globals@l(9)
	.loc 1 323 0
	stw 0,20(1)
	.loc 1 328 0
	lwz 3,sv+3500@l(11)
	lwz 0,16(9)
	.cfi_offset 65, 4
	.loc 1 323 0
	stw 30,8(1)
	.loc 1 328 0
	add 3,3,0
	.loc 1 323 0
	stw 31,12(1)
	.loc 1 328 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	bl NUM_FOR_EDICT
	mr 30,3
.LVL267:
	.loc 1 329 0
	li 3,1
.LVL268:
	bl PF_VarString
	.loc 1 331 0
	cmpwi 7,30,0
	.loc 1 329 0
	mr 31,3
.LVL269:
	.loc 1 331 0
	ble- 7,.L193
	.loc 1 331 0 is_stmt 0 discriminator 1
	lis 9,svs@ha
	lwz 0,svs@l(9)
	la 9,svs@l(9)
	cmpw 7,30,0
	ble- 7,.L194
.L193:
	.loc 1 333 0 is_stmt 1
	lis 3,.LC38@ha
.LVL270:
	la 3,.LC38@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 341 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL271:
	mtlr 0
	lwz 31,12(1)
.LVL272:
	addi 1,1,16
	.cfi_remember_state
.LCFI114:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL273:
.L194:
.LCFI115:
	.cfi_restore_state
	.loc 1 337 0
	addi 30,30,-1
.LVL274:
	.loc 1 339 0
	li 4,26
	.loc 1 337 0
	slwi 11,30,8
	slwi 0,30,2
	subf 0,0,11
	subf 0,30,0
	slwi 0,0,5
	subf 30,30,0
.LVL275:
	lwz 0,8(9)
	slwi 30,30,3
	add 30,0,30
	.loc 1 339 0
	addi 30,30,56
	mr 3,30
.LVL276:
	bl MSG_WriteChar
	.loc 1 340 0
	mr 3,30
	mr 4,31
	bl MSG_WriteString
	.loc 1 341 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL277:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI116:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE48:
	.size	PF_centerprint, .-PF_centerprint
	.align 2
	.globl PF_sprint
	.type	PF_sprint, @function
PF_sprint:
.LFB47:
	.loc 1 292 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI117:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 297 0
	lis 9,pr_globals@ha
	lis 11,sv+3500@ha
	lwz 9,pr_globals@l(9)
	.loc 1 292 0
	stw 0,20(1)
	.loc 1 297 0
	lwz 3,sv+3500@l(11)
	lwz 0,16(9)
	.cfi_offset 65, 4
	.loc 1 292 0
	stw 30,8(1)
	.loc 1 297 0
	add 3,3,0
	.loc 1 292 0
	stw 31,12(1)
	.loc 1 297 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	bl NUM_FOR_EDICT
	mr 30,3
.LVL278:
	.loc 1 298 0
	li 3,1
.LVL279:
	bl PF_VarString
	.loc 1 300 0
	cmpwi 7,30,0
	.loc 1 298 0
	mr 31,3
.LVL280:
	.loc 1 300 0
	ble- 7,.L197
	.loc 1 300 0 is_stmt 0 discriminator 1
	lis 9,svs@ha
	lwz 0,svs@l(9)
	la 9,svs@l(9)
	cmpw 7,30,0
	ble- 7,.L198
.L197:
	.loc 1 302 0 is_stmt 1
	lis 3,.LC38@ha
.LVL281:
	la 3,.LC38@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 310 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL282:
	mtlr 0
	lwz 31,12(1)
.LVL283:
	addi 1,1,16
	.cfi_remember_state
.LCFI118:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL284:
.L198:
.LCFI119:
	.cfi_restore_state
	.loc 1 306 0
	addi 30,30,-1
.LVL285:
	.loc 1 308 0
	li 4,8
	.loc 1 306 0
	slwi 11,30,8
	slwi 0,30,2
	subf 0,0,11
	subf 0,30,0
	slwi 0,0,5
	subf 30,30,0
.LVL286:
	lwz 0,8(9)
	slwi 30,30,3
	add 30,0,30
	.loc 1 308 0
	addi 30,30,56
	mr 3,30
.LVL287:
	bl MSG_WriteChar
	.loc 1 309 0
	mr 3,30
	mr 4,31
	bl MSG_WriteString
	.loc 1 310 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL288:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI120:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE47:
	.size	PF_sprint, .-PF_sprint
	.align 2
	.globl PF_bprint
	.type	PF_bprint, @function
PF_bprint:
.LFB46:
	.loc 1 275 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI121:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 278 0
	li 3,0
	.loc 1 275 0
	stw 0,12(1)
	.loc 1 278 0
	.cfi_offset 65, 4
	bl PF_VarString
	mr 4,3
.LVL289:
	.loc 1 279 0
	lis 3,.LC24@ha
.LVL290:
	la 3,.LC24@l(3)
	crxor 6,6,6
	bl SV_BroadcastPrintf
.LVL291:
	.loc 1 280 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI122:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE46:
	.size	PF_bprint, .-PF_bprint
	.align 2
	.globl PF_objerror
	.type	PF_objerror, @function
PF_objerror:
.LFB40:
	.loc 1 82 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI123:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 86 0
	li 3,0
	.loc 1 82 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 86 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl PF_VarString
	.loc 1 88 0
	lis 9,pr_xfunction@ha
	.loc 1 87 0
	lis 11,pr_strings@ha
	.loc 1 88 0
	lwz 9,pr_xfunction@l(9)
	.loc 1 86 0
	mr 5,3
.LVL292:
	.loc 1 87 0
	lwz 4,pr_strings@l(11)
	lis 3,.LC39@ha
.LVL293:
	lwz 0,16(9)
	la 3,.LC39@l(3)
	add 4,4,0
	crxor 6,6,6
	bl Con_Printf
.LVL294:
	.loc 1 89 0
	lis 9,pr_global_struct@ha
	lwz 9,pr_global_struct@l(9)
	lis 11,sv+3500@ha
	lwz 31,sv+3500@l(11)
	lwz 0,112(9)
	add 31,31,0
.LVL295:
	.loc 1 90 0
	mr 3,31
	bl ED_Print
	.loc 1 91 0
	mr 3,31
	bl ED_Free
	.loc 1 93 0
	lis 3,.LC40@ha
	la 3,.LC40@l(3)
	crxor 6,6,6
	bl Host_Error
	.loc 1 94 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL296:
	mtlr 0
	addi 1,1,16
.LCFI124:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE40:
	.size	PF_objerror, .-PF_objerror
	.align 2
	.globl PF_error
	.type	PF_error, @function
PF_error:
.LFB39:
	.loc 1 58 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI125:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 62 0
	li 3,0
	.loc 1 58 0
	stw 0,12(1)
	.loc 1 62 0
	.cfi_offset 65, 4
	bl PF_VarString
	.loc 1 64 0
	lis 9,pr_xfunction@ha
	.loc 1 63 0
	lis 11,pr_strings@ha
	.loc 1 64 0
	lwz 9,pr_xfunction@l(9)
	.loc 1 62 0
	mr 5,3
.LVL297:
	.loc 1 63 0
	lwz 4,pr_strings@l(11)
	lis 3,.LC41@ha
.LVL298:
	lwz 0,16(9)
	la 3,.LC41@l(3)
	add 4,4,0
	crxor 6,6,6
	bl Con_Printf
.LVL299:
	.loc 1 65 0
	lis 9,pr_global_struct@ha
	lwz 9,pr_global_struct@l(9)
	lis 11,sv+3500@ha
	lwz 3,sv+3500@l(11)
	lwz 0,112(9)
	.loc 1 66 0
	add 3,3,0
	bl ED_Print
.LVL300:
	.loc 1 68 0
	lis 3,.LC40@ha
	la 3,.LC40@l(3)
	crxor 6,6,6
	bl Host_Error
	.loc 1 69 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI126:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE39:
	.size	PF_error, .-PF_error
	.align 2
	.globl SetMinMaxSize
	.type	SetMinMaxSize, @function
SetMinMaxSize:
.LFB43:
	.loc 1 133 0
	.cfi_startproc
.LVL301:
	mflr 0
	stwu 1,-32(1)
.LCFI127:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	.loc 1 144 0
	lis 27,.LC42@ha
	.cfi_offset 27, -20
	.loc 1 133 0
	stw 0,36(1)
	.loc 1 144 0
	la 27,.LC42@l(27)
	.loc 1 133 0
	stw 28,16(1)
	li 28,0
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,20(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,28(1)
	.loc 1 133 0
	mr 31,3
	.cfi_offset 31, -4
.LVL302:
.L206:
	.loc 1 143 0
	lfsx 13,30,28
	lfsx 0,29,28
	fcmpu 7,13,0
	bgt- 7,.L209
.L204:
	.loc 1 142 0
	cmpwi 7,28,8
	addi 28,28,4
	bne+ 7,.L206
.LVL303:
	.loc 1 151 0
	lwz 0,8(29)
	.loc 1 203 0
	mr 3,31
	.loc 1 150 0
	lwz 7,0(30)
.LVL304:
	.loc 1 203 0
	li 4,0
	.loc 1 150 0
	lwz 8,4(30)
.LVL305:
	lwz 10,8(30)
.LVL306:
	.loc 1 151 0
	lwz 11,0(29)
.LVL307:
	lwz 9,4(29)
.LVL308:
	.loc 1 200 0
	stw 0,756(31)
	.loc 1 199 0
	stw 7,736(31)
	stw 8,740(31)
	stw 10,744(31)
	.loc 1 200 0
	stw 11,748(31)
	stw 9,752(31)
	.loc 1 201 0
	lfs 13,0(29)
	lfs 0,0(30)
	fsubs 0,13,0
	stfs 0,760(31)
	lfs 13,4(29)
	lfs 0,4(30)
	fsubs 0,13,0
	stfs 0,764(31)
	lfs 13,8(29)
	lfs 0,8(30)
	fsubs 0,13,0
	stfs 0,768(31)
	.loc 1 203 0
	bl SV_LinkEdict
.LVL309:
	.loc 1 204 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL310:
	lwz 30,24(1)
.LVL311:
	lwz 31,28(1)
.LVL312:
	addi 1,1,32
	.cfi_remember_state
.LCFI128:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL313:
.L209:
.LCFI129:
	.cfi_restore_state
	.loc 1 144 0
	mr 3,27
	crxor 6,6,6
	bl PR_RunError
	b .L204
	.cfi_endproc
.LFE43:
	.size	SetMinMaxSize, .-SetMinMaxSize
	.align 2
	.globl PF_setmodel
	.type	PF_setmodel, @function
PF_setmodel:
.LFB45:
	.loc 1 235 0
	.cfi_startproc
	mflr 0
	stwu 1,-56(1)
.LCFI130:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	.loc 1 241 0
	lis 9,pr_globals@ha
	.loc 1 235 0
	mfcr 12
	stw 28,40(1)
	.loc 1 241 0
	lis 28,sv@ha
	.cfi_offset 28, -16
	.cfi_register 70, 12
	.loc 1 235 0
	stw 0,60(1)
	.loc 1 241 0
	la 28,sv@l(28)
	lwz 9,pr_globals@l(9)
	.loc 1 245 0
	lwz 3,164(28)
	.loc 1 235 0
	stw 25,28(1)
	.loc 1 242 0
	lis 25,pr_strings@ha
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	.loc 1 245 0
	cmpwi 4,3,0
	.loc 1 235 0
	stw 26,32(1)
	stw 27,36(1)
	stw 29,44(1)
	.loc 1 241 0
	lwz 27,3500(28)
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	lwz 0,16(9)
	.loc 1 242 0
	lwz 26,pr_strings@l(25)
	lwz 29,28(9)
	.loc 1 241 0
	add 27,27,0
.LVL314:
	.loc 1 235 0
	stw 30,48(1)
	stw 31,52(1)
	.loc 1 242 0
	add 29,26,29
.LVL315:
	.loc 1 235 0
	stw 12,24(1)
	.loc 1 245 0
	beq- 4,.L217
	.cfi_offset 70, -32
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	addi 30,28,164
	li 31,0
	b .L213
.LVL316:
.L220:
	lwzu 3,4(30)
	addi 31,31,1
.LVL317:
	cmpwi 4,3,0
	beq- 4,.L216
.LVL318:
.L213:
	.loc 1 246 0
	mr 4,29
	bl strcmp
	cmpwi 7,3,0
	bne+ 7,.L220
	.loc 1 249 0
	beq- 4,.L216
.L214:
	.loc 1 255 0
	lis 0,0x4330
	.loc 1 254 0
	subf 29,26,29
.LVL319:
	.loc 1 255 0
	xoris 31,31,0x8000
	.loc 1 254 0
	stw 29,720(27)
	.loc 1 255 0
	stw 0,8(1)
	lis 9,.LC3@ha
	stw 31,12(1)
	lfs 0,.LC3@l(9)
	.loc 1 257 0
	addi 9,1,16
	.loc 1 255 0
	lfd 13,8(1)
	fsub 0,13,0
	frsp 0,0
	.loc 1 257 0
	fctiwz 13,0
	.loc 1 255 0
	stfs 0,604(27)
	.loc 1 257 0
	stfiwx 13,0,9
	lwz 9,16(1)
	addi 0,9,296
	slwi 0,0,2
	add 28,28,0
	lwz 5,4(28)
.LVL320:
	.loc 1 259 0
	cmpwi 7,5,0
	beq- 7,.L215
	.loc 1 263 0
	lwz 0,60(1)
	.loc 1 260 0
	mr 3,27
	.loc 1 263 0
	lwz 12,24(1)
	.loc 1 260 0
	addi 4,5,84
	.loc 1 263 0
	lwz 25,28(1)
	mtlr 0
	lwz 26,32(1)
	mtcrf 8,12
	lwz 27,36(1)
.LVL321:
	.loc 1 260 0
	addi 5,5,96
	.loc 1 263 0
	lwz 28,40(1)
.LVL322:
	.loc 1 262 0
	li 6,1
	.loc 1 263 0
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI131:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.loc 1 262 0
	b SetMinMaxSize
.LVL323:
.L215:
.LCFI132:
	.cfi_restore_state
	.loc 1 263 0
	lwz 0,60(1)
	.loc 1 262 0
	lis 4,vec3_origin@ha
	.loc 1 263 0
	lwz 12,24(1)
	.loc 1 262 0
	la 4,vec3_origin@l(4)
	.loc 1 263 0
	lwz 25,28(1)
	.loc 1 262 0
	mr 3,27
	.loc 1 263 0
	lwz 26,32(1)
	mtlr 0
	lwz 27,36(1)
.LVL324:
	mtcrf 8,12
	lwz 28,40(1)
	.loc 1 262 0
	mr 5,4
.LVL325:
	.loc 1 263 0
	lwz 29,44(1)
	.loc 1 262 0
	li 6,1
	.loc 1 263 0
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI133:
	.cfi_def_cfa_offset 0
	.loc 1 262 0
	b SetMinMaxSize
.LVL326:
.L217:
.LCFI134:
	.cfi_restore_state
	.loc 1 245 0
	li 31,0
.LVL327:
.L216:
	.loc 1 250 0
	lis 3,.LC26@ha
	mr 4,29
	la 3,.LC26@l(3)
	crxor 6,6,6
	bl PR_RunError
	lwz 26,pr_strings@l(25)
	b .L214
	.cfi_endproc
.LFE45:
	.size	PF_setmodel, .-PF_setmodel
	.align 2
	.globl PF_setsize
	.type	PF_setsize, @function
PF_setsize:
.LFB44:
	.loc 1 216 0
	.cfi_startproc
	.loc 1 220 0
	lis 9,pr_globals@ha
	.loc 1 223 0
	li 6,0
	.loc 1 220 0
	lwz 5,pr_globals@l(9)
.LVL328:
	lis 9,sv+3500@ha
.LVL329:
	lwz 3,sv+3500@l(9)
	lwz 0,16(5)
	.loc 1 223 0
	addi 4,5,28
	addi 5,5,40
	.loc 1 224 0
	.loc 1 223 0
	add 3,3,0
	b SetMinMaxSize
.LVL330:
.LVL331:
.LVL332:
	.cfi_endproc
.LFE44:
	.size	PF_setsize, .-PF_setsize
	.align 2
	.globl PF_checkpos
	.type	PF_checkpos, @function
PF_checkpos:
.LFB61:
	.loc 1 759 0
	.cfi_startproc
	.loc 1 760 0
	blr
	.cfi_endproc
.LFE61:
	.size	PF_checkpos, .-PF_checkpos
	.align 2
	.globl PF_newcheckclient
	.type	PF_newcheckclient, @function
PF_newcheckclient:
.LFB62:
	.loc 1 767 0
	.cfi_startproc
.LVL333:
	stwu 1,-56(1)
.LCFI135:
	.cfi_def_cfa_offset 56
	mflr 0
	stw 30,40(1)
	.loc 1 776 0
	mr. 30,3
	.cfi_offset 30, -16
	.cfi_register 65, 0
	.loc 1 767 0
	stw 0,60(1)
	stfd 31,48(1)
	stw 29,36(1)
	stw 31,44(1)
	.loc 1 776 0
	ble- 0,.L235
	.cfi_offset 31, -12
	.cfi_offset 29, -20
	.cfi_offset 63, -8
	.cfi_offset 65, 4
.L224:
.LVL334:
	.loc 1 778 0
	lis 29,svs@ha
	lwz 9,svs@l(29)
	cmpw 7,30,9
	bgt- 7,.L231
	.loc 1 781 0
	beq- 7,.L232
	.loc 1 784 0
	addi 31,30,1
.LVL335:
.L229:
	.loc 1 798 0
	lis 11,.LC4@ha
	lfs 31,.LC4@l(11)
	b .L234
.LVL336:
.L226:
	.loc 1 791 0
	mr 3,31
	bl EDICT_NUM
.LVL337:
	.loc 1 793 0
	cmpw 7,31,30
	beq- 7,.L227
.L236:
	.loc 1 796 0
	lbz 0,0(3)
	cmpwi 7,0,0
	bne- 7,.L228
	.loc 1 798 0
	lfs 0,796(3)
	fcmpu 7,0,31
	cror 30,28,30
	beq- 7,.L228
	.loc 1 800 0
	lfs 0,908(3)
	addi 9,1,24
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,24(1)
	andi. 11,0,128
	beq- 0,.L227
.L228:
	.loc 1 786 0
	lwz 9,svs@l(29)
	addi 31,31,1
.LVL338:
.L234:
	.loc 1 788 0
	addi 9,9,1
	cmpw 7,9,31
	bne+ 7,.L226
	.loc 1 789 0
	li 31,1
.LVL339:
	.loc 1 791 0
	mr 3,31
	bl EDICT_NUM
.LVL340:
	.loc 1 793 0
	cmpw 7,31,30
	bne+ 7,.L236
.L227:
	.loc 1 808 0
	lfs 9,644(3)
	.loc 1 809 0
	lis 30,sv@ha
	.loc 1 808 0
	lfs 10,648(3)
	.loc 1 809 0
	la 30,sv@l(30)
	.loc 1 808 0
	lfs 11,652(3)
	lfs 12,852(3)
	lfs 13,856(3)
	lfs 0,860(3)
	fadds 12,9,12
	fadds 13,10,13
	.loc 1 809 0
	lwz 4,160(30)
	.loc 1 808 0
	fadds 0,11,0
	.loc 1 809 0
	addi 3,1,8
.LVL341:
	.loc 1 808 0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 809 0
	bl Mod_PointInLeaf
	.loc 1 810 0
	lwz 4,160(30)
	bl Mod_LeafPVS
	.loc 1 811 0
	lwz 9,160(30)
	.loc 1 810 0
	mr 4,3
.LVL342:
	.loc 1 811 0
	lis 3,checkpvs@ha
.LVL343:
	lwz 5,164(9)
	la 3,checkpvs@l(3)
	addi 5,5,7
	srawi 5,5,3
	bl memcpy
.LVL344:
	.loc 1 814 0
	lwz 0,60(1)
	mr 3,31
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
.LVL345:
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI136:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL346:
.L231:
.LCFI137:
	.cfi_restore_state
	.loc 1 778 0
	mr 30,9
.LVL347:
	.loc 1 782 0
	li 31,1
	b .L229
.LVL348:
.L235:
	.loc 1 777 0
	li 30,1
	b .L224
.LVL349:
.L232:
	.loc 1 782 0
	li 31,1
	b .L229
	.cfi_endproc
.LFE62:
	.size	PF_newcheckclient, .-PF_newcheckclient
	.align 2
	.globl PF_checkclient
	.type	PF_checkclient, @function
PF_checkclient:
.LFB63:
	.loc 1 834 0
	.cfi_startproc
	mflr 0
	stwu 1,-32(1)
.LCFI138:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 841 0
	lis 9,.LC43@ha
	.loc 1 834 0
	stw 31,28(1)
	.loc 1 841 0
	lis 31,sv@ha
	.cfi_offset 31, -4
	.loc 1 834 0
	stw 0,36(1)
	.loc 1 841 0
	la 31,sv@l(31)
	.loc 1 834 0
	stw 30,24(1)
	.loc 1 841 0
	lfd 0,24(31)
	lfd 13,8(31)
	.loc 1 843 0
	lwz 3,16(31)
	.loc 1 841 0
	fsub 13,13,0
	lfd 0,.LC43@l(9)
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L238
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.L239:
	.loc 1 848 0
	bl EDICT_NUM
	.loc 1 849 0
	lbz 0,0(3)
	.loc 1 848 0
	mr 30,3
.LVL350:
	.loc 1 849 0
	cmpwi 7,0,0
	bne- 7,.L240
	.loc 1 849 0 is_stmt 0 discriminator 1
	lis 9,.LC4@ha
	lfs 13,796(3)
	lfs 0,.LC4@l(9)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L246
.L240:
	.loc 1 851 0 is_stmt 1
	lis 9,pr_globals@ha
	li 0,0
	lwz 9,pr_globals@l(9)
	.loc 1 870 0
	lwz 30,24(1)
	.loc 1 851 0
	stw 0,4(9)
	.loc 1 870 0
	lwz 0,36(1)
	lwz 31,28(1)
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI139:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L246:
.LCFI140:
	.cfi_restore_state
	.loc 1 856 0
	lis 9,pr_global_struct@ha
	.loc 1 858 0
	lwz 4,160(31)
	.loc 1 856 0
	lwz 11,pr_global_struct@l(9)
	.loc 1 858 0
	addi 3,1,8
.LVL351:
	.loc 1 856 0
	lwz 9,3500(31)
	lwz 0,112(11)
	add 9,9,0
.LVL352:
	.loc 1 857 0
	lfs 9,644(9)
	lfs 12,852(9)
	lfs 10,648(9)
	lfs 13,856(9)
	fadds 12,9,12
	lfs 11,652(9)
	lfs 0,860(9)
	fadds 13,10,13
	stfs 12,8(1)
	fadds 0,11,0
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 858 0
	bl Mod_PointInLeaf
.LVL353:
	.loc 1 859 0
	lwz 9,160(31)
	lwz 0,168(9)
	subf 0,0,3
	srawi 0,0,6
.LVL354:
	.loc 1 860 0
	addic. 0,0,-1
.LVL355:
	blt- 0,.L244
	.loc 1 860 0 is_stmt 0 discriminator 1
	lis 11,checkpvs@ha
	srawi 9,0,3
	la 11,checkpvs@l(11)
	rlwinm 0,0,0,29,31
.LVL356:
	lbzx 9,11,9
	sraw 0,9,0
	andi. 9,0,1
	beq- 0,.L244
	.loc 1 868 0 is_stmt 1
	lis 9,c_invis@ha
	.loc 1 869 0
	lwz 10,3500(31)
	.loc 1 868 0
	lwz 8,c_invis@l(9)
	.loc 1 869 0
	lis 11,pr_globals@ha
	lwz 11,pr_globals@l(11)
	subf 30,10,30
.LVL357:
	.loc 1 868 0
	addi 0,8,1
	.loc 1 870 0
	lwz 31,28(1)
	.loc 1 868 0
	stw 0,c_invis@l(9)
	.loc 1 870 0
	lwz 0,36(1)
	.loc 1 869 0
	stw 30,4(11)
	.loc 1 870 0
	mtlr 0
	lwz 30,24(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI141:
	.cfi_def_cfa_offset 0
	blr
.LVL358:
.L238:
.LCFI142:
	.cfi_restore_state
	.loc 1 843 0
	bl PF_newcheckclient
	.loc 1 844 0
	lfd 0,8(31)
	.loc 1 843 0
	stw 3,16(31)
	.loc 1 844 0
	stfd 0,24(31)
	b .L239
.LVL359:
.L244:
	.loc 1 862 0
	lis 9,c_notvis@ha
	.loc 1 863 0
	lis 11,pr_globals@ha
	.loc 1 862 0
	lwz 10,c_notvis@l(9)
	.loc 1 863 0
	lwz 11,pr_globals@l(11)
	.loc 1 862 0
	addi 0,10,1
	.loc 1 870 0
	lwz 30,24(1)
.LVL360:
	.loc 1 862 0
	stw 0,c_notvis@l(9)
	.loc 1 863 0
	li 0,0
	stw 0,4(11)
	.loc 1 870 0
	lwz 0,36(1)
	lwz 31,28(1)
	mtlr 0
	addi 1,1,32
	.cfi_restore 30
	.cfi_restore 31
.LCFI143:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE63:
	.size	PF_checkclient, .-PF_checkclient
	.align 2
	.globl PR_CheckEmptyString
	.type	PR_CheckEmptyString, @function
PR_CheckEmptyString:
.LFB77:
	.loc 1 1150 0
	.cfi_startproc
.LVL361:
	mflr 0
	stwu 1,-8(1)
.LCFI144:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1151 0
	lbz 0,0(3)
	.cfi_offset 65, 4
	cmplwi 7,0,32
	bgt+ 7,.L247
	.loc 1 1152 0
	lis 3,.LC44@ha
.LVL362:
	la 3,.LC44@l(3)
	crxor 6,6,6
	bl PR_RunError
.L247:
	.loc 1 1153 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI145:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE77:
	.size	PR_CheckEmptyString, .-PR_CheckEmptyString
	.align 2
	.globl PF_precache_model
	.type	PF_precache_model, @function
PF_precache_model:
.LFB80:
	.loc 1 1186 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI146:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	.loc 1 1190 0
	lis 28,sv@ha
	.cfi_offset 28, -16
	.loc 1 1186 0
	stw 0,28(1)
	.loc 1 1190 0
	la 28,sv@l(28)
	.loc 1 1186 0
	stw 29,12(1)
	.loc 1 1190 0
	lwz 0,3504(28)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 1186 0
	stw 30,16(1)
	.loc 1 1190 0
	cmpwi 7,0,0
	.loc 1 1186 0
	stw 31,20(1)
	.loc 1 1190 0
	bne- 7,.L255
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.L250:
	.loc 1 1193 0
	lis 9,pr_globals@ha
	lis 11,pr_strings@ha
	lwz 9,pr_globals@l(9)
	.loc 1 1195 0
	lis 30,sv+160@ha
	.loc 1 1193 0
	lwz 29,pr_strings@l(11)
	.loc 1 1195 0
	la 30,sv+160@l(30)
	.loc 1 1193 0
	lwz 0,16(9)
	.loc 1 1197 0
	li 31,0
	.loc 1 1193 0
	add 29,29,0
.LVL363:
	.loc 1 1194 0
	stw 0,4(9)
	.loc 1 1195 0
	mr 3,29
	bl PR_CheckEmptyString
.LVL364:
	b .L253
.LVL365:
.L251:
	.loc 1 1205 0
	bl strcmp
	.loc 1 1197 0
	cmpwi 6,31,255
	.loc 1 1205 0
	cmpwi 7,3,0
	.loc 1 1197 0
	addi 31,31,1
	.loc 1 1205 0
	beq- 7,.L249
	.loc 1 1197 0
	beq- 6,.L256
.L253:
	.loc 1 1199 0
	lwzu 0,4(30)
	.loc 1 1205 0
	mr 4,29
	.loc 1 1199 0
	cmpwi 7,0,0
	.loc 1 1205 0
	mr 3,0
	.loc 1 1199 0
	bne+ 7,.L251
	.loc 1 1201 0
	addi 9,31,40
	.loc 1 1202 0
	addi 31,31,296
	.loc 1 1201 0
	slwi 9,9,2
	.loc 1 1202 0
	mr 3,29
	.loc 1 1201 0
	add 9,28,9
	.loc 1 1202 0
	li 4,1
	.loc 1 1201 0
	stw 29,4(9)
	.loc 1 1202 0
	slwi 31,31,2
	add 28,28,31
	bl Mod_ForName
	stw 3,4(28)
.L249:
	.loc 1 1209 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL366:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI147:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L255:
.LCFI148:
	.cfi_restore_state
	.loc 1 1191 0
	lis 3,.LC45@ha
	la 3,.LC45@l(3)
	crxor 6,6,6
	bl PR_RunError
	b .L250
.LVL367:
.L256:
	.loc 1 1208 0
	lis 3,.LC46@ha
	la 3,.LC46@l(3)
	crxor 6,6,6
	bl PR_RunError
	.loc 1 1209 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL368:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI149:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE80:
	.size	PF_precache_model, .-PF_precache_model
	.align 2
	.globl PF_precache_sound
	.type	PF_precache_sound, @function
PF_precache_sound:
.LFB79:
	.loc 1 1161 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI150:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	.loc 1 1165 0
	lis 28,sv@ha
	.cfi_offset 28, -16
	.loc 1 1161 0
	stw 0,28(1)
	.loc 1 1165 0
	la 28,sv@l(28)
	.loc 1 1161 0
	stw 29,12(1)
	.loc 1 1165 0
	lwz 0,3504(28)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 1161 0
	stw 30,16(1)
	.loc 1 1165 0
	cmpwi 7,0,0
	.loc 1 1161 0
	stw 31,20(1)
	.loc 1 1165 0
	bne- 7,.L263
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.L258:
	.loc 1 1168 0
	lis 9,pr_globals@ha
	lis 11,pr_strings@ha
	lwz 9,pr_globals@l(9)
	.loc 1 1170 0
	lis 30,sv+2208@ha
	.loc 1 1168 0
	lwz 29,pr_strings@l(11)
	.loc 1 1170 0
	la 30,sv+2208@l(30)
	.loc 1 1168 0
	lwz 0,16(9)
	.loc 1 1172 0
	li 31,0
	.loc 1 1168 0
	add 29,29,0
.LVL369:
	.loc 1 1169 0
	stw 0,4(9)
	.loc 1 1170 0
	mr 3,29
	bl PR_CheckEmptyString
.LVL370:
	b .L261
.LVL371:
.L259:
	.loc 1 1179 0
	bl strcmp
	.loc 1 1172 0
	cmpwi 6,31,255
	.loc 1 1179 0
	cmpwi 7,3,0
	.loc 1 1172 0
	addi 31,31,1
	.loc 1 1179 0
	beq- 7,.L257
	.loc 1 1172 0
	beq- 6,.L264
.L261:
	.loc 1 1174 0
	lwzu 0,4(30)
	.loc 1 1179 0
	mr 4,29
	.loc 1 1174 0
	cmpwi 7,0,0
	.loc 1 1179 0
	mr 3,0
	.loc 1 1174 0
	bne+ 7,.L259
	.loc 1 1176 0
	addi 31,31,552
	slwi 31,31,2
	add 28,28,31
	stw 29,4(28)
.L257:
	.loc 1 1183 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL372:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI151:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L263:
.LCFI152:
	.cfi_restore_state
	.loc 1 1166 0
	lis 3,.LC45@ha
	la 3,.LC45@l(3)
	crxor 6,6,6
	bl PR_RunError
	b .L258
.LVL373:
.L264:
	.loc 1 1182 0
	lis 3,.LC47@ha
	la 3,.LC47@l(3)
	crxor 6,6,6
	bl PR_RunError
	.loc 1 1183 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL374:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI153:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE79:
	.size	PF_precache_sound, .-PF_precache_sound
	.align 2
	.globl WriteDest
	.type	WriteDest, @function
WriteDest:
.LFB96:
	.loc 1 1600 0
	.cfi_startproc
.LVL375:
	mflr 0
	stwu 1,-24(1)
.LCFI154:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1605 0
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	.loc 1 1600 0
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 1605 0
	lfs 0,16(9)
	addi 9,1,8
	.loc 1 1600 0
	stw 31,20(1)
	.loc 1 1605 0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,8(1)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 1606 0
	cmpwi 7,0,1
	beq- 7,.L268
	ble- 7,.L277
	cmpwi 7,0,2
	beq- 7,.L274
	cmpwi 7,0,3
	beq- 7,.L278
.L266:
	.loc 1 1625 0
	lis 3,.LC49@ha
	la 3,.LC49@l(3)
	crxor 6,6,6
	bl PR_RunError
.LVL376:
	.loc 1 1630 0
	lwz 0,28(1)
	lwz 30,16(1)
	.loc 1 1629 0
	li 3,0
	.loc 1 1630 0
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI155:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL377:
.L274:
.LCFI156:
	.cfi_restore_state
	lwz 0,28(1)
	.loc 1 1619 0
	lis 3,sv+19908@ha
	.loc 1 1630 0
	lwz 30,16(1)
	.loc 1 1619 0
	la 3,sv+19908@l(3)
	.loc 1 1630 0
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI157:
	.cfi_def_cfa_offset 0
	blr
.L278:
.LCFI158:
	.cfi_restore_state
	lwz 0,28(1)
	.loc 1 1622 0
	lis 3,sv+36308@ha
	.loc 1 1630 0
	lwz 30,16(1)
	.loc 1 1622 0
	la 3,sv+36308@l(3)
	.loc 1 1630 0
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI159:
	.cfi_def_cfa_offset 0
	blr
.L268:
.LCFI160:
	.cfi_restore_state
.LVL378:
.LBB38:
.LBB39:
	.loc 1 1612 0
	lis 9,pr_global_struct@ha
	lis 11,sv+3500@ha
	lwz 9,pr_global_struct@l(9)
	lis 30,svs@ha
	lwz 3,sv+3500@l(11)
	lwz 0,324(9)
	.loc 1 1613 0
	add 3,3,0
	bl NUM_FOR_EDICT
.LVL379:
	.loc 1 1614 0
	mr. 31,3
	ble- 0,.L272
	lwz 0,svs@l(30)
	cmpw 7,31,0
	ble- 7,.L273
.L272:
	.loc 1 1615 0
	lis 3,.LC48@ha
.LVL380:
	la 3,.LC48@l(3)
	crxor 6,6,6
	bl PR_RunError
.L273:
	.loc 1 1616 0
	addi 31,31,-1
.LVL381:
	la 30,svs@l(30)
	slwi 0,31,2
	slwi 3,31,8
	subf 3,0,3
.LBE39:
.LBE38:
	.loc 1 1630 0
	lwz 0,28(1)
.LBB44:
.LBB40:
	.loc 1 1616 0
	subf 3,31,3
	slwi 3,3,5
.LBE40:
.LBE44:
	.loc 1 1630 0
	mtlr 0
.LBB45:
.LBB41:
	.loc 1 1616 0
	subf 31,31,3
.LVL382:
	lwz 3,8(30)
	slwi 31,31,3
.LBE41:
.LBE45:
	.loc 1 1630 0
	lwz 30,16(1)
.LBB46:
.LBB42:
	.loc 1 1616 0
	add 3,3,31
.LBE42:
.LBE46:
	.loc 1 1630 0
	lwz 31,20(1)
.LBB47:
.LBB43:
	.loc 1 1616 0
	addi 3,3,56
.LBE43:
.LBE47:
	.loc 1 1630 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI161:
	.cfi_def_cfa_offset 0
	blr
.LVL383:
.L277:
.LCFI162:
	.cfi_restore_state
	.loc 1 1606 0
	cmpwi 7,0,0
	bne- 7,.L266
	.loc 1 1630 0
	lwz 0,28(1)
	.loc 1 1609 0
	lis 3,sv+3508@ha
	.loc 1 1630 0
	lwz 30,16(1)
	.loc 1 1609 0
	la 3,sv+3508@l(3)
	.loc 1 1630 0
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 30
	.cfi_restore 31
.LCFI163:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE96:
	.size	WriteDest, .-WriteDest
	.align 2
	.globl PF_WriteEntity
	.type	PF_WriteEntity, @function
PF_WriteEntity:
.LFB104:
	.loc 1 1669 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI164:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 1670 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl WriteDest
	lis 9,pr_globals@ha
	lis 11,sv+3500@ha
	lwz 9,pr_globals@l(9)
	mr 31,3
	lwz 3,sv+3500@l(11)
	lwz 0,28(9)
	add 3,3,0
	bl NUM_FOR_EDICT
	mr 4,3
	mr 3,31
	bl MSG_WriteShort
	.loc 1 1671 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI165:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE104:
	.size	PF_WriteEntity, .-PF_WriteEntity
	.align 2
	.globl PF_WriteString
	.type	PF_WriteString, @function
PF_WriteString:
.LFB103:
	.loc 1 1663 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI166:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1664 0
	.cfi_offset 65, 4
	bl WriteDest
	lis 9,pr_globals@ha
	lis 11,pr_strings@ha
	lwz 9,pr_globals@l(9)
	lwz 4,pr_strings@l(11)
	lwz 0,28(9)
	add 4,4,0
	bl MSG_WriteString
	.loc 1 1665 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI167:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE103:
	.size	PF_WriteString, .-PF_WriteString
	.align 2
	.globl PF_WriteCoord
	.type	PF_WriteCoord, @function
PF_WriteCoord:
.LFB102:
	.loc 1 1658 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI168:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1659 0
	.cfi_offset 65, 4
	bl WriteDest
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	lfs 1,28(9)
	bl MSG_WriteCoord
	.loc 1 1660 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI169:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE102:
	.size	PF_WriteCoord, .-PF_WriteCoord
	.align 2
	.globl PF_WriteAngle
	.type	PF_WriteAngle, @function
PF_WriteAngle:
.LFB101:
	.loc 1 1653 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI170:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 1654 0
	.cfi_offset 65, 4
	bl WriteDest
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	lfs 1,28(9)
	bl MSG_WriteAngle
	.loc 1 1655 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI171:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE101:
	.size	PF_WriteAngle, .-PF_WriteAngle
	.align 2
	.globl PF_WriteLong
	.type	PF_WriteLong, @function
PF_WriteLong:
.LFB100:
	.loc 1 1648 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI172:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 1649 0
	.cfi_offset 65, 4
	bl WriteDest
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	lfs 0,28(9)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,8(1)
	bl MSG_WriteLong
	.loc 1 1650 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI173:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE100:
	.size	PF_WriteLong, .-PF_WriteLong
	.align 2
	.globl PF_WriteShort
	.type	PF_WriteShort, @function
PF_WriteShort:
.LFB99:
	.loc 1 1643 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI174:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 1644 0
	.cfi_offset 65, 4
	bl WriteDest
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	lfs 0,28(9)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,8(1)
	bl MSG_WriteShort
	.loc 1 1645 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI175:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE99:
	.size	PF_WriteShort, .-PF_WriteShort
	.align 2
	.globl PF_WriteChar
	.type	PF_WriteChar, @function
PF_WriteChar:
.LFB98:
	.loc 1 1638 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI176:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 1639 0
	.cfi_offset 65, 4
	bl WriteDest
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	lfs 0,28(9)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,8(1)
	bl MSG_WriteChar
	.loc 1 1640 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI177:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE98:
	.size	PF_WriteChar, .-PF_WriteChar
	.align 2
	.globl PF_WriteByte
	.type	PF_WriteByte, @function
PF_WriteByte:
.LFB97:
	.loc 1 1633 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI178:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 1634 0
	.cfi_offset 65, 4
	bl WriteDest
	lis 9,pr_globals@ha
	lwz 9,pr_globals@l(9)
	lfs 0,28(9)
	addi 9,1,8
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 4,8(1)
	bl MSG_WriteByte
	.loc 1 1635 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI179:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE97:
	.size	PF_WriteByte, .-PF_WriteByte
	.globl pr_numbuiltins
	.globl pr_builtins
	.globl pr_builtin
	.globl sv_aim
	.comm	c_notvis,4,4
	.comm	c_invis,4,4
	.comm	checkpvs,1024,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1056964608
.LC3:
	.4byte	1501560836
.LC4:
	.4byte	0
.LC7:
	.4byte	1132396544
.LC8:
	.4byte	1127481344
.LC9:
	.4byte	1135869952
.LC10:
	.4byte	-1020002304
.LC12:
	.4byte	1501560832
.LC13:
	.4byte	1101004800
.LC14:
	.4byte	1157627904
.LC15:
	.4byte	1073741824
.LC16:
	.4byte	1132462080
.LC17:
	.4byte	1065353216
.LC27:
	.4byte	1115684864
.LC29:
	.4byte	1082130432
.LC32:
	.4byte	1120403456
.LC33:
	.4byte	1191181824
.LC35:
	.4byte	1119092736
.LC36:
	.4byte	1132920832
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC18:
	.4byte	1074340347
	.4byte	1413754136
.LC43:
	.4byte	1069128089
	.4byte	-1717986918
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	sv_aim, @object
	.size	sv_aim, 20
sv_aim:
	.long	.LC50
	.long	.LC51
	.zero	12
	.type	pr_builtin, @object
	.size	pr_builtin, 324
pr_builtin:
	.long	PF_Fixme
	.long	PF_makevectors
	.long	PF_setorigin
	.long	PF_setmodel
	.long	PF_setsize
	.long	PF_Fixme
	.long	PF_break
	.long	PF_random
	.long	PF_sound
	.long	PF_normalize
	.long	PF_error
	.long	PF_objerror
	.long	PF_vlen
	.long	PF_vectoyaw
	.long	PF_Spawn
	.long	PF_Remove
	.long	PF_traceline
	.long	PF_checkclient
	.long	PF_Find
	.long	PF_precache_sound
	.long	PF_precache_model
	.long	PF_stuffcmd
	.long	PF_findradius
	.long	PF_bprint
	.long	PF_sprint
	.long	PF_dprint
	.long	PF_ftos
	.long	PF_vtos
	.long	PF_coredump
	.long	PF_traceon
	.long	PF_traceoff
	.long	PF_eprint
	.long	PF_walkmove
	.long	PF_Fixme
	.long	PF_droptofloor
	.long	PF_lightstyle
	.long	PF_rint
	.long	PF_floor
	.long	PF_ceil
	.long	PF_Fixme
	.long	PF_checkbottom
	.long	PF_pointcontents
	.long	PF_Fixme
	.long	PF_fabs
	.long	PF_aim
	.long	PF_cvar
	.long	PF_localcmd
	.long	PF_nextent
	.long	PF_particle
	.long	PF_changeyaw
	.long	PF_Fixme
	.long	PF_vectoangles
	.long	PF_WriteByte
	.long	PF_WriteChar
	.long	PF_WriteShort
	.long	PF_WriteLong
	.long	PF_WriteCoord
	.long	PF_WriteAngle
	.long	PF_WriteString
	.long	PF_WriteEntity
	.long	PF_Fixme
	.long	PF_Fixme
	.long	PF_Fixme
	.long	PF_Fixme
	.long	PF_Fixme
	.long	PF_Fixme
	.long	PF_Fixme
	.long	SV_MoveToGoal
	.long	PF_precache_file
	.long	PF_makestatic
	.long	PF_changelevel
	.long	PF_Fixme
	.long	PF_cvar_set
	.long	PF_centerprint
	.long	PF_ambientsound
	.long	PF_precache_model
	.long	PF_precache_sound
	.long	PF_precache_file
	.long	PF_setspawnparms
	.long	PF_BasicEmitter
	.long	PF_ExtendedEmitter
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC5:
	.string	"unimplemented bulitin"
	.zero	2
.LC6:
	.string	"Entity is not a client"
	.zero	1
.LC20:
	.string	"PF_Find: bad search string"
	.zero	1
.LC21:
	.string	"'%5.1f %5.1f %5.1f'"
.LC22:
	.string	"%g"
	.zero	1
.LC23:
	.string	"Parm 0 not a client"
.LC24:
	.string	"%s"
	.zero	1
.LC25:
	.string	"break statement\n"
	.zero	3
.LC26:
	.string	"no precache: %s\n"
	.zero	3
.LC28:
	.string	"SV_StartSound: volume = %i"
	.zero	1
.LC30:
	.string	"SV_StartSound: attenuation = %f"
.LC31:
	.string	"SV_StartSound: channel = %i"
.LC37:
	.string	"changelevel %s\n"
.LC38:
	.string	"tried to sprint to a non-client\n"
	.zero	3
.LC39:
	.string	"======OBJECT ERROR in %s:\n%s\n"
	.zero	2
.LC40:
	.string	"Program error"
	.zero	2
.LC41:
	.string	"======SERVER ERROR in %s:\n%s\n"
	.zero	2
.LC42:
	.string	"backwards mins/maxs"
.LC44:
	.string	"Bad string"
	.zero	1
.LC45:
	.string	"PF_Precache_*: Precache can only be done in spawn functions"
.LC46:
	.string	"PF_precache_model: overflow"
.LC47:
	.string	"PF_precache_sound: overflow"
.LC48:
	.string	"WriteDest: not a client"
.LC49:
	.string	"WriteDest: bad destination"
	.zero	1
.LC50:
	.string	"sv_aim"
	.zero	1
.LC51:
	.string	"2"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	pr_numbuiltins, @object
	.size	pr_numbuiltins, 4
pr_numbuiltins:
	.long	81
	.type	pr_builtins, @object
	.size	pr_builtins, 4
pr_builtins:
	.long	pr_builtin
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	pr_string_tempindex, @object
	.size	pr_string_tempindex, 4
pr_string_tempindex:
	.zero	4
	.type	pr_string_temp, @object
	.size	pr_string_temp, 2048
pr_string_temp:
	.zero	2048
	.type	out.14918, @object
	.size	out.14918, 256
out.14918:
	.zero	256
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/net.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/pr_comp.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/progdefs.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/progs.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/server.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 19 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3b22
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF665
	.byte	0x1
	.4byte	.LASF666
	.4byte	.LASF667
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
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
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
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x82
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x10
	.byte	0x2
	.byte	0x28
	.4byte	0x112
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x2
	.byte	0x2a
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x2
	.byte	0x2b
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x2
	.byte	0x2c
	.4byte	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x2
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x2
	.byte	0x2f
	.4byte	0xbf
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.byte	0x2
	.byte	0x3a
	.4byte	0x14c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.byte	0x3c
	.4byte	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x2
	.byte	0x3c
	.4byte	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x123
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x2
	.byte	0x3d
	.4byte	0x123
	.uleb128 0xb
	.byte	0x40
	.byte	0x3
	.byte	0x52
	.4byte	0x1c8
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.byte	0x54
	.4byte	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x3
	.byte	0x54
	.4byte	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x3
	.byte	0x55
	.4byte	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.byte	0x56
	.4byte	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x3
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xc
	.4byte	0x82
	.4byte	0x1d8
	.uleb128 0xd
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x41
	.4byte	0x1e8
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x3
	.byte	0x59
	.4byte	0x15d
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x203
	.uleb128 0xd
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x48
	.4byte	0x213
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x223
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x248
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x3
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x3
	.byte	0xa8
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x3
	.byte	0xa9
	.4byte	0x223
	.uleb128 0xc
	.4byte	0x82
	.4byte	0x269
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x3a
	.4byte	0x279
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x289
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x4
	.byte	0x6f
	.4byte	0x2a4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x72
	.4byte	0x289
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0x16
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x5
	.byte	0x17
	.4byte	0x2c5
	.uleb128 0xc
	.4byte	0x2af
	.4byte	0x2d5
	.uleb128 0xd
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x48
	.byte	0x6
	.byte	0xef
	.4byte	0x386
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0xf1
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0xf2
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0xf9
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.byte	0xfa
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x6
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x6
	.byte	0xfe
	.4byte	0x2d5
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x14
	.byte	0x7
	.byte	0x38
	.4byte	0x3f2
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x7
	.byte	0x3a
	.4byte	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x7
	.byte	0x3b
	.4byte	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x7
	.byte	0x3c
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x7
	.byte	0x3d
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x7
	.byte	0x3e
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x7
	.byte	0x3f
	.4byte	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x391
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x7
	.byte	0x40
	.4byte	0x391
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x10
	.byte	0x8
	.byte	0x16
	.4byte	0x42c
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.byte	0x18
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x8
	.byte	0x19
	.4byte	0x42c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x2c
	.4byte	0x43c
	.uleb128 0xd
	.4byte	0x48
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.2byte	0x80a0
	.byte	0x8
	.byte	0x78
	.4byte	0x58a
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0x7a
	.4byte	0x58a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0x7b
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x8
	.byte	0x7c
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x8
	.byte	0x7d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x8
	.byte	0x7f
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x8
	.byte	0x80
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x8
	.byte	0x81
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x8
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x8
	.byte	0x84
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x8
	.byte	0x85
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x8
	.byte	0x86
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x8
	.byte	0x88
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x8
	.byte	0x89
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x8
	.byte	0x8a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x8
	.byte	0x8b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x8
	.byte	0x8c
	.4byte	0x590
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x8
	.byte	0x8e
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4044
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x8
	.byte	0x8f
	.4byte	0x48
	.byte	0x4
	.byte	0x23
	.uleb128 0x4048
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x8
	.byte	0x90
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x404c
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x8
	.byte	0x91
	.4byte	0x590
	.byte	0x4
	.byte	0x23
	.uleb128 0x4050
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x8
	.byte	0x93
	.4byte	0x403
	.byte	0x4
	.byte	0x23
	.uleb128 0x8050
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x8
	.byte	0x94
	.4byte	0x5a1
	.byte	0x4
	.byte	0x23
	.uleb128 0x8060
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43c
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x5a1
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x5b1
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x118
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x5c7
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x60c
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x9
	.byte	0x20
	.4byte	0x6b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x9
	.byte	0x21
	.4byte	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x9
	.byte	0x22
	.4byte	0x92d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x9
	.byte	0x23
	.4byte	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x40
	.byte	0xa
	.byte	0xca
	.4byte	0x6b3
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xa
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xa
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xa
	.byte	0xd0
	.4byte	0x1ed9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xa
	.byte	0xd2
	.4byte	0xc8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xa
	.byte	0xd5
	.4byte	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xa
	.byte	0xd6
	.4byte	0x1f04
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xa
	.byte	0xd8
	.4byte	0x1f0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xa
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"key"
	.byte	0xa
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xa
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0xa
	.byte	0xdc
	.4byte	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x60c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c7
	.uleb128 0xe
	.4byte	.LASF102
	.2byte	0x248
	.byte	0x9
	.byte	0x27
	.4byte	0x92d
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x9
	.byte	0x29
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x9
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x9
	.byte	0x2d
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x9
	.byte	0x2f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x9
	.byte	0x30
	.4byte	0x93e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x9
	.byte	0x31
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x9
	.byte	0x32
	.4byte	0x93e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x9
	.byte	0x33
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x9
	.byte	0x34
	.4byte	0xc08
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x9
	.byte	0x35
	.4byte	0x6b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x9
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x9
	.byte	0x37
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x9
	.byte	0x38
	.4byte	0x112
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x9
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x9
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x9
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0x9
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x9
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0x9
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x9
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x9
	.byte	0x44
	.4byte	0xc8b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x9
	.byte	0x48
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x9
	.byte	0x49
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x9
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x9
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x9
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x9
	.byte	0x50
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0x9
	.byte	0x51
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0x9
	.byte	0x52
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x9
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0x9
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0x9
	.byte	0x57
	.4byte	0xdab
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0x9
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0x9
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x9
	.byte	0x5c
	.4byte	0xdb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x9
	.byte	0x5f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0x9
	.byte	0x60
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x9
	.byte	0x61
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x9
	.byte	0x62
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x9
	.byte	0x63
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x9
	.byte	0x64
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6bf
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x9
	.byte	0x24
	.4byte	0x5c7
	.uleb128 0xc
	.4byte	0x2af
	.4byte	0x954
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.uleb128 0xd
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF134
	.2byte	0x1a4
	.byte	0xa
	.2byte	0x180
	.4byte	0xc08
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x182
	.4byte	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x183
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x185
	.4byte	0x224d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x187
	.4byte	0x1adc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0xa
	.2byte	0x18e
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x18e
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x18f
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x194
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x195
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x195
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x19d
	.4byte	0x2259
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x1a0
	.4byte	0x1ebc
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x225f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x1a6
	.4byte	0x2265
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x226b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x1ac
	.4byte	0x2271
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x1af
	.4byte	0x1ec8
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x1b2
	.4byte	0x1f10
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x1b5
	.4byte	0x2277
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x1b8
	.4byte	0x1f7e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x1bb
	.4byte	0x1f0a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x1bd
	.4byte	0x227d
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x1c0
	.4byte	0x228d
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x1c2
	.4byte	0x112
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x1c3
	.4byte	0x112
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x1c4
	.4byte	0x6e
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x1c9
	.4byte	0x2a4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x954
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x34
	.byte	0xa
	.byte	0xb6
	.4byte	0xc8b
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xa
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xa
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xa
	.byte	0xbc
	.4byte	0x1ed9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xa
	.byte	0xbe
	.4byte	0xc8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xa
	.byte	0xc1
	.4byte	0x1ebc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xa
	.byte	0xc2
	.4byte	0x1ee9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0xa
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF159
	.byte	0xa
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc0e
	.uleb128 0x13
	.4byte	.LASF176
	.4byte	0x20030
	.byte	0xb
	.2byte	0xa09
	.4byte	0xdab
	.uleb128 0x12
	.4byte	.LASF177
	.byte	0xb
	.2byte	0xa0f
	.4byte	0xdab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0xb
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0xb
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0xb
	.2byte	0xa17
	.4byte	0x26ec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF183
	.byte	0xb
	.2byte	0xa1b
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0xb
	.2byte	0xa1d
	.4byte	0xe18
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF185
	.byte	0xb
	.2byte	0xa1f
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF186
	.byte	0xb
	.2byte	0xa21
	.4byte	0x26ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0xb
	.2byte	0xa25
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF188
	.byte	0xb
	.2byte	0xa2b
	.4byte	0x26f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xb
	.2byte	0xa2d
	.4byte	0x26f8
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0xb
	.2byte	0xa2f
	.4byte	0x26f8
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0xb
	.2byte	0xa31
	.4byte	0x26f8
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0xb
	.2byte	0xa33
	.4byte	0x273d
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xb
	.2byte	0xa37
	.4byte	0x274e
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc91
	.uleb128 0xc
	.4byte	0x33
	.4byte	0xdc1
	.uleb128 0xd
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF194
	.byte	0x9
	.byte	0x66
	.4byte	0x6bf
	.uleb128 0xb
	.byte	0x18
	.byte	0xc
	.byte	0x16
	.4byte	0xe0d
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0xc
	.byte	0x18
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0xc
	.byte	0x1b
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xc
	.byte	0x1c
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0xc
	.byte	0x1d
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF199
	.byte	0xc
	.byte	0x21
	.4byte	0xdcc
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdc1
	.uleb128 0xc
	.4byte	0x41
	.4byte	0xe2e
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	0xc08
	.4byte	0xe3e
	.uleb128 0xd
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x7
	.4byte	.LASF200
	.byte	0xd
	.byte	0x17
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF201
	.byte	0xd
	.byte	0x18
	.4byte	0x41
	.uleb128 0xb
	.byte	0x24
	.byte	0xd
	.byte	0x8a
	.4byte	0xecd
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0xd
	.byte	0x8c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0xd
	.byte	0x8d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xd
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0xd
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0xd
	.byte	0x92
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0xd
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF208
	.byte	0xd
	.byte	0x95
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0xd
	.byte	0x96
	.4byte	0xecd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0x97
	.4byte	0xedd
	.uleb128 0xd
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF210
	.byte	0xd
	.byte	0x97
	.4byte	0xe54
	.uleb128 0x14
	.2byte	0x170
	.byte	0xe
	.byte	0x4
	.4byte	0x1226
	.uleb128 0x10
	.string	"pad"
	.byte	0xe
	.byte	0x5
	.4byte	0x1226
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0xe
	.byte	0x6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF212
	.byte	0xe
	.byte	0x7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0xe
	.byte	0x8
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0xe
	.byte	0x9
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0xe
	.byte	0xa
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0xe
	.byte	0xb
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0xe
	.byte	0xc
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0xe
	.byte	0xd
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0xe
	.byte	0xe
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.4byte	.LASF220
	.byte	0xe
	.byte	0xf
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0xe
	.byte	0x10
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xa
	.4byte	.LASF222
	.byte	0xe
	.byte	0x11
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.4byte	.LASF223
	.byte	0xe
	.byte	0x12
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF224
	.byte	0xe
	.byte	0x13
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF225
	.byte	0xe
	.byte	0x14
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0xe
	.byte	0x15
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF227
	.byte	0xe
	.byte	0x16
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0xe
	.byte	0x17
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF229
	.byte	0xe
	.byte	0x18
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0xe
	.byte	0x19
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF231
	.byte	0xe
	.byte	0x1a
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF232
	.byte	0xe
	.byte	0x1b
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF233
	.byte	0xe
	.byte	0x1c
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF234
	.byte	0xe
	.byte	0x1d
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF235
	.byte	0xe
	.byte	0x1e
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0xe
	.byte	0x1f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF237
	.byte	0xe
	.byte	0x20
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xa
	.4byte	.LASF238
	.byte	0xe
	.byte	0x21
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xa
	.4byte	.LASF239
	.byte	0xe
	.byte	0x22
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF240
	.byte	0xe
	.byte	0x23
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0xe
	.byte	0x24
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF242
	.byte	0xe
	.byte	0x25
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF243
	.byte	0xe
	.byte	0x26
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF244
	.byte	0xe
	.byte	0x27
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF245
	.byte	0xe
	.byte	0x28
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF246
	.byte	0xe
	.byte	0x29
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xa
	.4byte	.LASF247
	.byte	0xe
	.byte	0x2a
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xa
	.4byte	.LASF248
	.byte	0xe
	.byte	0x2b
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xa
	.4byte	.LASF249
	.byte	0xe
	.byte	0x2c
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xa
	.4byte	.LASF250
	.byte	0xe
	.byte	0x2d
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0xa
	.4byte	.LASF251
	.byte	0xe
	.byte	0x2e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xa
	.4byte	.LASF252
	.byte	0xe
	.byte	0x2f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xa
	.4byte	.LASF253
	.byte	0xe
	.byte	0x30
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xa
	.4byte	.LASF254
	.byte	0xe
	.byte	0x31
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0xa
	.4byte	.LASF255
	.byte	0xe
	.byte	0x32
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xa
	.4byte	.LASF256
	.byte	0xe
	.byte	0x33
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0xa
	.4byte	.LASF257
	.byte	0xe
	.byte	0x34
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xa
	.4byte	.LASF258
	.byte	0xe
	.byte	0x35
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xa
	.4byte	.LASF259
	.byte	0xe
	.byte	0x36
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0xa
	.4byte	.LASF260
	.byte	0xe
	.byte	0x37
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xa
	.4byte	.LASF261
	.byte	0xe
	.byte	0x38
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xa
	.4byte	.LASF262
	.byte	0xe
	.byte	0x39
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xa
	.4byte	.LASF263
	.byte	0xe
	.byte	0x3a
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xa
	.4byte	.LASF264
	.byte	0xe
	.byte	0x3b
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.byte	0
	.uleb128 0xc
	.4byte	0x41
	.4byte	0x1236
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	.LASF265
	.byte	0xe
	.byte	0x3c
	.4byte	0xee8
	.uleb128 0x14
	.2byte	0x1a4
	.byte	0xe
	.byte	0x3e
	.4byte	0x16be
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0xe
	.byte	0x40
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF266
	.byte	0xe
	.byte	0x41
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF267
	.byte	0xe
	.byte	0x42
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF268
	.byte	0xe
	.byte	0x43
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF269
	.byte	0xe
	.byte	0x44
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF270
	.byte	0xe
	.byte	0x45
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xe
	.byte	0x46
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF271
	.byte	0xe
	.byte	0x47
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF272
	.byte	0xe
	.byte	0x48
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0xe
	.byte	0x49
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF273
	.byte	0xe
	.byte	0x4a
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF274
	.byte	0xe
	.byte	0x4b
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF275
	.byte	0xe
	.byte	0x4c
	.4byte	0xe49
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xe
	.byte	0x4d
	.4byte	0xe49
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0xe
	.byte	0x4e
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xe
	.byte	0x4f
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xe
	.byte	0x50
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xe
	.byte	0x51
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xe
	.byte	0x52
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.4byte	.LASF276
	.byte	0xe
	.byte	0x53
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.4byte	.LASF277
	.byte	0xe
	.byte	0x54
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x10
	.string	"use"
	.byte	0xe
	.byte	0x55
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF278
	.byte	0xe
	.byte	0x56
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF279
	.byte	0xe
	.byte	0x57
	.4byte	0xe3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF280
	.byte	0xe
	.byte	0x58
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF281
	.byte	0xe
	.byte	0x59
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF282
	.byte	0xe
	.byte	0x5a
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF283
	.byte	0xe
	.byte	0x5b
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF284
	.byte	0xe
	.byte	0x5c
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF285
	.byte	0xe
	.byte	0x5d
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF286
	.byte	0xe
	.byte	0x5e
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0xe
	.byte	0x5f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF288
	.byte	0xe
	.byte	0x60
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0xe
	.byte	0x61
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xa
	.4byte	.LASF290
	.byte	0xe
	.byte	0x62
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF291
	.byte	0xe
	.byte	0x63
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF292
	.byte	0xe
	.byte	0x64
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF293
	.byte	0xe
	.byte	0x65
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF294
	.byte	0xe
	.byte	0x66
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xa
	.4byte	.LASF295
	.byte	0xe
	.byte	0x67
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xa
	.4byte	.LASF296
	.byte	0xe
	.byte	0x68
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF297
	.byte	0xe
	.byte	0x69
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF298
	.byte	0xe
	.byte	0x6a
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.4byte	.LASF299
	.byte	0xe
	.byte	0x6b
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.4byte	.LASF300
	.byte	0xe
	.byte	0x6c
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF301
	.byte	0xe
	.byte	0x6d
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xa
	.4byte	.LASF302
	.byte	0xe
	.byte	0x6e
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xa
	.4byte	.LASF303
	.byte	0xe
	.byte	0x6f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xa
	.4byte	.LASF304
	.byte	0xe
	.byte	0x70
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xa
	.4byte	.LASF305
	.byte	0xe
	.byte	0x71
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0xe
	.byte	0x72
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0xe
	.byte	0x73
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0xa
	.4byte	.LASF306
	.byte	0xe
	.byte	0x74
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xa
	.4byte	.LASF307
	.byte	0xe
	.byte	0x75
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xa
	.4byte	.LASF308
	.byte	0xe
	.byte	0x76
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xa
	.4byte	.LASF309
	.byte	0xe
	.byte	0x77
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0xa
	.4byte	.LASF310
	.byte	0xe
	.byte	0x78
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xa
	.4byte	.LASF311
	.byte	0xe
	.byte	0x79
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0xa
	.4byte	.LASF312
	.byte	0xe
	.byte	0x7a
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xa
	.4byte	.LASF313
	.byte	0xe
	.byte	0x7b
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xa
	.4byte	.LASF314
	.byte	0xe
	.byte	0x7c
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0xa
	.4byte	.LASF315
	.byte	0xe
	.byte	0x7d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xa
	.4byte	.LASF316
	.byte	0xe
	.byte	0x7e
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xa
	.4byte	.LASF317
	.byte	0xe
	.byte	0x7f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xa
	.4byte	.LASF318
	.byte	0xe
	.byte	0x80
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xa
	.4byte	.LASF319
	.byte	0xe
	.byte	0x81
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0xa
	.4byte	.LASF320
	.byte	0xe
	.byte	0x82
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xa
	.4byte	.LASF321
	.byte	0xe
	.byte	0x83
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0xa
	.4byte	.LASF322
	.byte	0xe
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0xa
	.4byte	.LASF323
	.byte	0xe
	.byte	0x85
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0xa
	.4byte	.LASF324
	.byte	0xe
	.byte	0x86
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xa
	.4byte	.LASF325
	.byte	0xe
	.byte	0x87
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xa
	.4byte	.LASF326
	.byte	0xe
	.byte	0x88
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xa
	.4byte	.LASF327
	.byte	0xe
	.byte	0x89
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0xa
	.4byte	.LASF328
	.byte	0xe
	.byte	0x8a
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xa
	.4byte	.LASF329
	.byte	0xe
	.byte	0x8b
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0xa
	.4byte	.LASF330
	.byte	0xe
	.byte	0x8c
	.4byte	0xe49
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF331
	.byte	0xe
	.byte	0x8d
	.4byte	0x1241
	.uleb128 0xe
	.4byte	.LASF332
	.2byte	0x400
	.byte	0xf
	.byte	0x25
	.4byte	0x173a
	.uleb128 0xa
	.4byte	.LASF333
	.byte	0xf
	.byte	0x27
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF334
	.byte	0xf
	.byte	0x28
	.4byte	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF335
	.byte	0xf
	.byte	0x2a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xf
	.byte	0x2b
	.4byte	0x173a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xf
	.byte	0x2d
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF336
	.byte	0xf
	.byte	0x2f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x10
	.string	"v"
	.byte	0xf
	.byte	0x30
	.4byte	0x16be
	.byte	0x3
	.byte	0x23
	.uleb128 0x25c
	.byte	0
	.uleb128 0xc
	.4byte	0x33
	.4byte	0x174a
	.uleb128 0xd
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x7
	.4byte	.LASF337
	.byte	0xf
	.byte	0x32
	.4byte	0x16c9
	.uleb128 0x7
	.4byte	.LASF338
	.byte	0xf
	.byte	0x7e
	.4byte	0x68
	.uleb128 0xb
	.byte	0x14
	.byte	0x10
	.byte	0x16
	.4byte	0x17af
	.uleb128 0xa
	.4byte	.LASF339
	.byte	0x10
	.byte	0x18
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF340
	.byte	0x10
	.byte	0x19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF341
	.byte	0x10
	.byte	0x1a
	.4byte	0x18c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0x10
	.byte	0x1b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF342
	.byte	0x10
	.byte	0x1c
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF343
	.2byte	0xfaf8
	.byte	0x10
	.byte	0x4e
	.4byte	0x18c7
	.uleb128 0xa
	.4byte	.LASF344
	.byte	0x10
	.byte	0x50
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF345
	.byte	0x10
	.byte	0x51
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF346
	.byte	0x10
	.byte	0x52
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF347
	.byte	0x10
	.byte	0x53
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.4byte	.LASF348
	.byte	0x10
	.byte	0x54
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF349
	.byte	0x10
	.byte	0x56
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF350
	.byte	0x10
	.byte	0x59
	.4byte	0x58a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"cmd"
	.byte	0x10
	.byte	0x5b
	.4byte	0xe0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF351
	.byte	0x10
	.byte	0x5c
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF325
	.byte	0x10
	.byte	0x5e
	.4byte	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF352
	.byte	0x10
	.byte	0x60
	.4byte	0x1a9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF353
	.byte	0x10
	.byte	0x61
	.4byte	0x1a79
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa48
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x10
	.byte	0x62
	.4byte	0x5b7
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa4c
	.uleb128 0xa
	.4byte	.LASF354
	.byte	0x10
	.byte	0x63
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa6c
	.uleb128 0xa
	.4byte	.LASF355
	.byte	0x10
	.byte	0x65
	.4byte	0x1aac
	.byte	0x4
	.byte	0x23
	.uleb128 0xfa70
	.uleb128 0xa
	.4byte	.LASF356
	.byte	0x10
	.byte	0x66
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfab0
	.uleb128 0xa
	.4byte	.LASF357
	.byte	0x10
	.byte	0x69
	.4byte	0x1aac
	.byte	0x4
	.byte	0x23
	.uleb128 0xfab4
	.uleb128 0xa
	.4byte	.LASF358
	.byte	0x10
	.byte	0x6c
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0xfaf4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17af
	.uleb128 0x7
	.4byte	.LASF359
	.byte	0x10
	.byte	0x1d
	.4byte	0x1760
	.uleb128 0x15
	.byte	0x4
	.byte	0x10
	.byte	0x21
	.4byte	0x18ed
	.uleb128 0x16
	.4byte	.LASF360
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF361
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF362
	.byte	0x10
	.byte	0x21
	.4byte	0x18d8
	.uleb128 0x17
	.4byte	0x10de8
	.byte	0x10
	.byte	0x23
	.4byte	0x1a59
	.uleb128 0xa
	.4byte	.LASF344
	.byte	0x10
	.byte	0x25
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF363
	.byte	0x10
	.byte	0x27
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF364
	.byte	0x10
	.byte	0x28
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0x10
	.byte	0x2a
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF365
	.byte	0x10
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF366
	.byte	0x10
	.byte	0x2d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x10
	.byte	0x2f
	.4byte	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF367
	.byte	0x10
	.byte	0x33
	.4byte	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF368
	.byte	0x10
	.byte	0x34
	.4byte	0xc08
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF369
	.byte	0x10
	.byte	0x35
	.4byte	0x1a59
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF370
	.byte	0x10
	.byte	0x36
	.4byte	0xe2e
	.byte	0x3
	.byte	0x23
	.uleb128 0x4a4
	.uleb128 0xa
	.4byte	.LASF371
	.byte	0x10
	.byte	0x37
	.4byte	0x1a59
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a4
	.uleb128 0xa
	.4byte	.LASF372
	.byte	0x10
	.byte	0x38
	.4byte	0x1a69
	.byte	0x3
	.byte	0x23
	.uleb128 0xca4
	.uleb128 0xa
	.4byte	.LASF373
	.byte	0x10
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda4
	.uleb128 0xa
	.4byte	.LASF374
	.byte	0x10
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xda8
	.uleb128 0xa
	.4byte	.LASF375
	.byte	0x10
	.byte	0x3b
	.4byte	0x1a79
	.byte	0x3
	.byte	0x23
	.uleb128 0xdac
	.uleb128 0xa
	.4byte	.LASF376
	.byte	0x10
	.byte	0x3e
	.4byte	0x18ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb0
	.uleb128 0xa
	.4byte	.LASF377
	.byte	0x10
	.byte	0x40
	.4byte	0x118
	.byte	0x3
	.byte	0x23
	.uleb128 0xdb4
	.uleb128 0xa
	.4byte	.LASF378
	.byte	0x10
	.byte	0x41
	.4byte	0x590
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc4
	.uleb128 0xa
	.4byte	.LASF379
	.byte	0x10
	.byte	0x43
	.4byte	0x118
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dc4
	.uleb128 0xa
	.4byte	.LASF380
	.byte	0x10
	.byte	0x44
	.4byte	0x590
	.byte	0x4
	.byte	0x23
	.uleb128 0x4dd4
	.uleb128 0xa
	.4byte	.LASF381
	.byte	0x10
	.byte	0x46
	.4byte	0x118
	.byte	0x4
	.byte	0x23
	.uleb128 0x8dd4
	.uleb128 0xa
	.4byte	.LASF382
	.byte	0x10
	.byte	0x47
	.4byte	0x1a7f
	.byte	0x4
	.byte	0x23
	.uleb128 0x8de4
	.byte	0
	.uleb128 0xc
	.4byte	0x6e
	.4byte	0x1a69
	.uleb128 0xd
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.4byte	0x6e
	.4byte	0x1a79
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x174a
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x1a90
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7fff
	.byte	0
	.uleb128 0x7
	.4byte	.LASF383
	.byte	0x10
	.byte	0x48
	.4byte	0x18f8
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x1aac
	.uleb128 0xf
	.4byte	0x48
	.2byte	0xf9ff
	.byte	0
	.uleb128 0xc
	.4byte	0x82
	.4byte	0x1abc
	.uleb128 0xd
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF384
	.byte	0x10
	.byte	0x6d
	.4byte	0x17af
	.uleb128 0x15
	.byte	0x4
	.byte	0x11
	.byte	0x34
	.4byte	0x1adc
	.uleb128 0x16
	.4byte	.LASF385
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF386
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF387
	.byte	0x11
	.byte	0x34
	.4byte	0x1ac7
	.uleb128 0xb
	.byte	0x4
	.byte	0x11
	.byte	0x64
	.4byte	0x1b0a
	.uleb128 0x10
	.string	"v"
	.byte	0x11
	.byte	0x65
	.4byte	0x1b0a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF388
	.byte	0x11
	.byte	0x66
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x1b1a
	.uleb128 0xd
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF389
	.byte	0x11
	.byte	0x67
	.4byte	0x1ae7
	.uleb128 0xb
	.byte	0xc
	.byte	0xa
	.byte	0x3b
	.4byte	0x1b3c
	.uleb128 0xa
	.4byte	.LASF390
	.byte	0xa
	.byte	0x3d
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF391
	.byte	0xa
	.byte	0x3e
	.4byte	0x1b25
	.uleb128 0xc
	.4byte	0x82
	.4byte	0x1b57
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF392
	.byte	0x14
	.byte	0xa
	.byte	0x52
	.4byte	0x1baa
	.uleb128 0xa
	.4byte	.LASF393
	.byte	0xa
	.byte	0x54
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF394
	.byte	0xa
	.byte	0x55
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0xa
	.byte	0x56
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF395
	.byte	0xa
	.byte	0x57
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x10
	.string	"pad"
	.byte	0xa
	.byte	0x58
	.4byte	0x1baa
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x1bba
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF396
	.byte	0xa
	.byte	0x59
	.4byte	0x1b57
	.uleb128 0x9
	.4byte	.LASF397
	.byte	0x48
	.byte	0xa
	.byte	0x5b
	.4byte	0x1c7a
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xa
	.byte	0x5d
	.4byte	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF398
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF399
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF400
	.byte	0xa
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF401
	.byte	0xa
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF402
	.byte	0xa
	.byte	0x61
	.4byte	0x1d9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF403
	.byte	0xa
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF404
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF405
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF406
	.byte	0xa
	.byte	0x64
	.4byte	0x1da5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF407
	.byte	0xa
	.byte	0x65
	.4byte	0x1da5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF408
	.byte	0xa
	.byte	0x66
	.4byte	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF409
	.byte	0x5c
	.byte	0xa
	.byte	0x96
	.4byte	0x1d9f
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xa
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xa
	.byte	0x9a
	.4byte	0x1ebc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0xa
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF410
	.byte	0xa
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0xa
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF411
	.byte	0xa
	.byte	0xa0
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF412
	.byte	0xa
	.byte	0xa1
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF413
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF414
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF415
	.byte	0xa
	.byte	0xa5
	.4byte	0x1ec2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF402
	.byte	0xa
	.byte	0xa6
	.4byte	0x1d9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF416
	.byte	0xa
	.byte	0xa7
	.4byte	0x1d9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0xa
	.byte	0xa9
	.4byte	0x1ec8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0xa
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xa
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF417
	.byte	0xa
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF418
	.byte	0xa
	.byte	0xb0
	.4byte	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF419
	.byte	0xa
	.byte	0xb1
	.4byte	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF420
	.byte	0xa
	.byte	0xb2
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF421
	.byte	0xa
	.byte	0xb3
	.4byte	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c7a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bc5
	.uleb128 0x7
	.4byte	.LASF422
	.byte	0xa
	.byte	0x67
	.4byte	0x1bc5
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0x78
	.4byte	0x1dd9
	.uleb128 0x10
	.string	"v"
	.byte	0xa
	.byte	0x7a
	.4byte	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF423
	.byte	0xa
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF424
	.byte	0xa
	.byte	0x7c
	.4byte	0x1db6
	.uleb128 0xb
	.byte	0x2c
	.byte	0xa
	.byte	0x7e
	.4byte	0x1e25
	.uleb128 0xa
	.4byte	.LASF425
	.byte	0xa
	.byte	0x80
	.4byte	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF426
	.byte	0xa
	.byte	0x81
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF427
	.byte	0xa
	.byte	0x82
	.4byte	0x1e25
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0xa
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dab
	.uleb128 0x7
	.4byte	.LASF428
	.byte	0xa
	.byte	0x84
	.4byte	0x1de4
	.uleb128 0x9
	.4byte	.LASF429
	.byte	0x1c
	.byte	0xa
	.byte	0x8a
	.4byte	0x1ea5
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0xa
	.byte	0x8c
	.4byte	0x1ea5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF294
	.byte	0xa
	.byte	0x8d
	.4byte	0x1ea5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF430
	.byte	0xa
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0xa
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0xa
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF431
	.byte	0xa
	.byte	0x92
	.4byte	0x1eab
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF432
	.byte	0xa
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e36
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ea5
	.uleb128 0x7
	.4byte	.LASF433
	.byte	0xa
	.byte	0x94
	.4byte	0x1e36
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bba
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1eb1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e2b
	.uleb128 0x7
	.4byte	.LASF434
	.byte	0xa
	.byte	0xb4
	.4byte	0x1c7a
	.uleb128 0xc
	.4byte	0x82
	.4byte	0x1ee9
	.uleb128 0xd
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	0xc8b
	.4byte	0x1ef9
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF435
	.byte	0xa
	.byte	0xc6
	.4byte	0xc0e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x933
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ece
	.uleb128 0x7
	.4byte	.LASF436
	.byte	0xa
	.byte	0xdd
	.4byte	0x60c
	.uleb128 0xb
	.byte	0x28
	.byte	0xa
	.byte	0xe0
	.4byte	0x1f7e
	.uleb128 0xa
	.4byte	.LASF164
	.byte	0xa
	.byte	0xe2
	.4byte	0x1f7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF149
	.byte	0xa
	.byte	0xe3
	.4byte	0x1ebc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF437
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF438
	.byte	0xa
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF439
	.byte	0xa
	.byte	0xe6
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF440
	.byte	0xa
	.byte	0xe7
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x248
	.uleb128 0x7
	.4byte	.LASF441
	.byte	0xa
	.byte	0xe8
	.4byte	0x1f21
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82
	.uleb128 0x18
	.byte	0x28
	.byte	0xa
	.2byte	0x11e
	.4byte	0x2008
	.uleb128 0x12
	.4byte	.LASF442
	.byte	0xa
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF443
	.byte	0xa
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF444
	.byte	0xa
	.2byte	0x122
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF445
	.byte	0xa
	.2byte	0x123
	.4byte	0x1b1a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF446
	.byte	0xa
	.2byte	0x124
	.4byte	0x1b1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0xa
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x126
	.4byte	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x19
	.4byte	.LASF447
	.byte	0xa
	.2byte	0x127
	.4byte	0x1f95
	.uleb128 0x1a
	.2byte	0x53c
	.byte	0xa
	.2byte	0x142
	.4byte	0x21f9
	.uleb128 0x12
	.4byte	.LASF448
	.byte	0xa
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF449
	.byte	0xa
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF450
	.byte	0xa
	.2byte	0x145
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF451
	.byte	0xa
	.2byte	0x146
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF452
	.byte	0xa
	.2byte	0x147
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF453
	.byte	0xa
	.2byte	0x148
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF454
	.byte	0xa
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF455
	.byte	0xa
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF456
	.byte	0xa
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF430
	.byte	0xa
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF457
	.byte	0xa
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x14f
	.4byte	0x1adc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF276
	.byte	0xa
	.2byte	0x151
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0xa
	.2byte	0x153
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x153
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF443
	.byte	0xa
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF458
	.byte	0xa
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF459
	.byte	0xa
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF460
	.byte	0xa
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF461
	.byte	0xa
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0xa
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF462
	.byte	0xa
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF463
	.byte	0xa
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF464
	.byte	0xa
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF400
	.byte	0xa
	.2byte	0x15e
	.4byte	0x21f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF465
	.byte	0xa
	.2byte	0x15f
	.4byte	0x21f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x12
	.4byte	.LASF466
	.byte	0xa
	.2byte	0x160
	.4byte	0xe1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x12
	.4byte	.LASF467
	.byte	0xa
	.2byte	0x161
	.4byte	0x220f
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xc
	.4byte	0x41
	.4byte	0x220f
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x2008
	.4byte	0x221f
	.uleb128 0xd
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF468
	.byte	0xa
	.2byte	0x162
	.4byte	0x2014
	.uleb128 0x1b
	.byte	0x4
	.byte	0xa
	.2byte	0x172
	.4byte	0x224d
	.uleb128 0x16
	.4byte	.LASF469
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF470
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF471
	.sleb128 2
	.uleb128 0x16
	.4byte	.LASF472
	.sleb128 3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF473
	.byte	0xa
	.2byte	0x172
	.4byte	0x222b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f16
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b3c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dd9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ef9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41
	.uleb128 0xc
	.4byte	0x1f84
	.4byte	0x228d
	.uleb128 0xd
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e25
	.uleb128 0x19
	.4byte	.LASF474
	.byte	0xa
	.2byte	0x1cb
	.4byte	0x954
	.uleb128 0xb
	.byte	0x10
	.byte	0x12
	.byte	0x16
	.4byte	0x22c4
	.uleb128 0xa
	.4byte	.LASF393
	.byte	0x12
	.byte	0x18
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF394
	.byte	0x12
	.byte	0x19
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF475
	.byte	0x12
	.byte	0x1a
	.4byte	0x229f
	.uleb128 0xb
	.byte	0x28
	.byte	0x12
	.byte	0x1c
	.4byte	0x2348
	.uleb128 0xa
	.4byte	.LASF476
	.byte	0x12
	.byte	0x1e
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF477
	.byte	0x12
	.byte	0x1f
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF478
	.byte	0x12
	.byte	0x20
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF479
	.byte	0x12
	.byte	0x20
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.4byte	.LASF480
	.byte	0x12
	.byte	0x21
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF481
	.byte	0x12
	.byte	0x22
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0x12
	.byte	0x23
	.4byte	0x22c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"ent"
	.byte	0x12
	.byte	0x24
	.4byte	0x1a79
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF482
	.byte	0x12
	.byte	0x25
	.4byte	0x22cf
	.uleb128 0x1c
	.4byte	.LASF483
	.byte	0x14
	.byte	0xb
	.2byte	0x981
	.4byte	0x237f
	.uleb128 0x12
	.4byte	.LASF484
	.byte	0xb
	.2byte	0x983
	.4byte	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0xb
	.2byte	0x985
	.4byte	0x237f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2353
	.uleb128 0x19
	.4byte	.LASF485
	.byte	0xb
	.2byte	0x987
	.4byte	0x2353
	.uleb128 0x1d
	.4byte	.LASF528
	.byte	0x4
	.byte	0xb
	.2byte	0x98d
	.4byte	0x23cf
	.uleb128 0x1e
	.4byte	.LASF486
	.byte	0xb
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1e
	.4byte	.LASF487
	.byte	0xb
	.2byte	0x991
	.4byte	0x82
	.uleb128 0x1e
	.4byte	.LASF488
	.byte	0xb
	.2byte	0x993
	.4byte	0x2af
	.uleb128 0x1e
	.4byte	.LASF489
	.byte	0xb
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x19
	.4byte	.LASF490
	.byte	0xb
	.2byte	0x997
	.4byte	0x2391
	.uleb128 0x11
	.4byte	.LASF491
	.2byte	0x890
	.byte	0xb
	.2byte	0x99d
	.4byte	0x258f
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0xb
	.2byte	0x99f
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF492
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x9a3
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF493
	.byte	0xb
	.2byte	0x9a7
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF494
	.byte	0xb
	.2byte	0x9a9
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF495
	.byte	0xb
	.2byte	0x9ab
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.4byte	.LASF496
	.byte	0xb
	.2byte	0x9ad
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x12
	.4byte	.LASF497
	.byte	0xb
	.2byte	0x9af
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x9b1
	.4byte	0x225f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1f
	.string	"vis"
	.byte	0xb
	.2byte	0x9b3
	.4byte	0x258f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF498
	.byte	0xb
	.2byte	0x9b5
	.4byte	0x258f
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x12
	.4byte	.LASF499
	.byte	0xb
	.2byte	0x9b7
	.4byte	0x1f0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x12
	.4byte	.LASF500
	.byte	0xb
	.2byte	0x9b9
	.4byte	0x2277
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x12
	.4byte	.LASF501
	.byte	0xb
	.2byte	0x9bb
	.4byte	0x1f8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x12
	.4byte	.LASF502
	.byte	0xb
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x12
	.4byte	.LASF503
	.byte	0xb
	.2byte	0x9bf
	.4byte	0x25a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x12
	.4byte	.LASF504
	.byte	0xb
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x12
	.4byte	.LASF323
	.byte	0xb
	.2byte	0x9c5
	.4byte	0xe18
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x12
	.4byte	.LASF505
	.byte	0xb
	.2byte	0x9c7
	.4byte	0x2385
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x12
	.4byte	.LASF506
	.byte	0xb
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0xb
	.2byte	0x9cb
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x12
	.4byte	.LASF507
	.byte	0xb
	.2byte	0x9cd
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x12
	.4byte	.LASF508
	.byte	0xb
	.2byte	0x9cf
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x12
	.4byte	.LASF509
	.byte	0xb
	.2byte	0x9d1
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x12
	.4byte	.LASF510
	.byte	0xb
	.2byte	0x9d3
	.4byte	0x2ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xc
	.4byte	0x97
	.4byte	0x25a0
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23cf
	.uleb128 0x19
	.4byte	.LASF511
	.byte	0xb
	.2byte	0x9d5
	.4byte	0x23db
	.uleb128 0x13
	.4byte	.LASF512
	.4byte	0x1e864
	.byte	0xb
	.2byte	0x9db
	.4byte	0x26ec
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF513
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF514
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF515
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF516
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF517
	.byte	0xb
	.2byte	0x9e3
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x9e5
	.4byte	0xe18
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF518
	.byte	0xb
	.2byte	0x9e7
	.4byte	0x26ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF519
	.byte	0xb
	.2byte	0x9e9
	.4byte	0x26f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF520
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF521
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF522
	.byte	0xb
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF523
	.byte	0xb
	.2byte	0x9f3
	.4byte	0x26f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF524
	.byte	0xb
	.2byte	0x9f5
	.4byte	0x26f8
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x12
	.4byte	.LASF525
	.byte	0xb
	.2byte	0x9f7
	.4byte	0x26f8
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x12
	.4byte	.LASF354
	.byte	0xb
	.2byte	0x9f9
	.4byte	0x26f8
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x12
	.4byte	.LASF526
	.byte	0xb
	.2byte	0x9fb
	.4byte	0x270f
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x12
	.4byte	.LASF464
	.byte	0xb
	.2byte	0x9ff
	.4byte	0x2720
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x12
	.4byte	.LASF457
	.byte	0xb
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x221f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25a6
	.uleb128 0xc
	.4byte	0x2af
	.4byte	0x270f
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xd
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0xad
	.4byte	0x2720
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xc
	.4byte	0x41
	.4byte	0x2731
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x19
	.4byte	.LASF527
	.byte	0xb
	.2byte	0xa05
	.4byte	0x25b2
	.uleb128 0xc
	.4byte	0x22c4
	.4byte	0x274e
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2731
	.uleb128 0x1d
	.4byte	.LASF529
	.byte	0x4
	.byte	0x13
	.2byte	0x490
	.4byte	0x27b4
	.uleb128 0x20
	.string	"U8"
	.byte	0x13
	.2byte	0x492
	.4byte	0x27b4
	.uleb128 0x20
	.string	"S8"
	.byte	0x13
	.2byte	0x493
	.4byte	0x27b9
	.uleb128 0x20
	.string	"U16"
	.byte	0x13
	.2byte	0x494
	.4byte	0x27be
	.uleb128 0x20
	.string	"S16"
	.byte	0x13
	.2byte	0x495
	.4byte	0x27c3
	.uleb128 0x20
	.string	"U32"
	.byte	0x13
	.2byte	0x496
	.4byte	0x27c8
	.uleb128 0x20
	.string	"S32"
	.byte	0x13
	.2byte	0x497
	.4byte	0x27cd
	.uleb128 0x20
	.string	"F32"
	.byte	0x13
	.2byte	0x498
	.4byte	0xa2
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
	.uleb128 0x19
	.4byte	.LASF530
	.byte	0x13
	.2byte	0x499
	.4byte	0x2754
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x6d4
	.byte	0x1
	.byte	0x1
	.4byte	0x27f8
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.2byte	0x6e5
	.4byte	0x6e
	.byte	0
	.uleb128 0x23
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x3f1
	.byte	0x1
	.4byte	0x6e
	.byte	0x1
	.4byte	0x2815
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.2byte	0x3f3
	.4byte	0x6e
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x63f
	.byte	0x1
	.4byte	0x5b1
	.byte	0x1
	.4byte	0x284d
	.uleb128 0x25
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x641
	.4byte	0x41
	.uleb128 0x25
	.4byte	.LASF532
	.byte	0x1
	.2byte	0x642
	.4byte	0x41
	.uleb128 0x22
	.string	"ent"
	.byte	0x1
	.2byte	0x643
	.4byte	0x1a79
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF536
	.byte	0x1
	.2byte	0x404
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2871
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.2byte	0x406
	.4byte	0x82
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF533
	.byte	0x1
	.2byte	0x483
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF534
	.byte	0x1
	.2byte	0x4c1
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF535
	.byte	0x1
	.2byte	0x4c6
	.byte	0x1
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF537
	.byte	0x1
	.2byte	0x53c
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LLST0
	.4byte	0x28d5
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.2byte	0x53e
	.4byte	0x82
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF538
	.byte	0x1
	.2byte	0x78e
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST1
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF539
	.byte	0x1
	.2byte	0x38e
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST2
	.4byte	0x2912
	.uleb128 0x22
	.string	"str"
	.byte	0x1
	.2byte	0x390
	.4byte	0x6e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF540
	.byte	0x1
	.2byte	0x6bd
	.byte	0x1
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST3
	.4byte	0x2957
	.uleb128 0x22
	.string	"ent"
	.byte	0x1
	.2byte	0x6bf
	.4byte	0x1a79
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x6c0
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x2b
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x2957
	.4byte	.LLST5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1abc
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF542
	.byte	0x1
	.2byte	0x68d
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST6
	.4byte	0x2996
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x68f
	.4byte	0x1a79
	.4byte	.LLST7
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x690
	.4byte	0x41
	.4byte	.LLST8
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF543
	.byte	0x1
	.2byte	0x422
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST9
	.4byte	0x29bc
	.uleb128 0x22
	.string	"ed"
	.byte	0x1
	.2byte	0x424
	.4byte	0x1a79
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x522
	.byte	0x1
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LLST10
	.4byte	0x2a15
	.uleb128 0x2b
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x524
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.2byte	0x525
	.4byte	0x6e
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x526
	.4byte	0x2957
	.4byte	.LLST13
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.2byte	0x527
	.4byte	0x41
	.4byte	.LLST14
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF545
	.byte	0x1
	.2byte	0x5e1
	.byte	0x1
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LLST15
	.4byte	0x2a80
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x5e3
	.4byte	0x1a79
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	.LASF546
	.byte	0x1
	.2byte	0x5e4
	.4byte	0x82
	.4byte	.LLST17
	.uleb128 0x2b
	.4byte	.LASF547
	.byte	0x1
	.2byte	0x5e4
	.4byte	0x82
	.4byte	.LLST18
	.uleb128 0x2b
	.4byte	.LASF548
	.byte	0x1
	.2byte	0x5e4
	.4byte	0x82
	.4byte	.LLST19
	.uleb128 0x2b
	.4byte	.LASF549
	.byte	0x1
	.2byte	0x5e4
	.4byte	0x82
	.4byte	.LLST20
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF550
	.byte	0x1
	.2byte	0x2b1
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST21
	.4byte	0x2ad9
	.uleb128 0x22
	.string	"v1"
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x1f8f
	.uleb128 0x22
	.string	"v2"
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x1f8f
	.uleb128 0x2c
	.4byte	.LASF551
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x2348
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.4byte	.LASF552
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x41
	.uleb128 0x22
	.string	"ent"
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x1a79
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x592
	.byte	0x1
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LLST22
	.4byte	0x2bb7
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x594
	.4byte	0x1a79
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x594
	.4byte	0x1a79
	.4byte	.LLST24
	.uleb128 0x2b
	.4byte	.LASF555
	.byte	0x1
	.2byte	0x594
	.4byte	0x1a79
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	.LASF556
	.byte	0x1
	.2byte	0x595
	.4byte	0x2ba
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"dir"
	.byte	0x1
	.2byte	0x595
	.4byte	0x2ba
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.string	"end"
	.byte	0x1
	.2byte	0x595
	.4byte	0x2ba
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.4byte	.LASF557
	.byte	0x1
	.2byte	0x595
	.4byte	0x2ba
	.4byte	.LLST26
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x596
	.4byte	0x41
	.4byte	.LLST27
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.2byte	0x596
	.4byte	0x41
	.uleb128 0x2d
	.string	"tr"
	.byte	0x1
	.2byte	0x597
	.4byte	0x2348
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x598
	.4byte	0x82
	.4byte	.LLST28
	.uleb128 0x2b
	.4byte	.LASF558
	.byte	0x1
	.2byte	0x598
	.4byte	0x82
	.4byte	.LLST29
	.uleb128 0x25
	.4byte	.LASF549
	.byte	0x1
	.2byte	0x599
	.4byte	0x82
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF559
	.byte	0x1
	.2byte	0x572
	.byte	0x1
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LLST30
	.4byte	0x2bf0
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x574
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x575
	.4byte	0x1a79
	.4byte	.LLST32
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF560
	.byte	0x1
	.2byte	0x562
	.byte	0x1
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LLST33
	.4byte	0x2c19
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.2byte	0x564
	.4byte	0x1f8f
	.4byte	.LLST34
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF561
	.byte	0x1
	.2byte	0x554
	.byte	0x1
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LLST35
	.4byte	0x2c40
	.uleb128 0x22
	.string	"ent"
	.byte	0x1
	.2byte	0x556
	.4byte	0x1a79
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x549
	.byte	0x1
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LLST36
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x545
	.byte	0x1
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LLST37
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF564
	.byte	0x1
	.2byte	0x502
	.byte	0x1
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LLST38
	.4byte	0x2cb7
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x504
	.4byte	0x1a79
	.4byte	.LLST39
	.uleb128 0x2d
	.string	"end"
	.byte	0x1
	.2byte	0x505
	.4byte	0x2ba
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.4byte	.LASF551
	.byte	0x1
	.2byte	0x506
	.4byte	0x2348
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF565
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST40
	.4byte	0x2ce9
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.byte	0x7a
	.4byte	0x1a79
	.4byte	.LLST41
	.uleb128 0x30
	.string	"org"
	.byte	0x1
	.byte	0x7b
	.4byte	0x1f8f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x4d7
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST42
	.4byte	0x2d64
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x4d9
	.4byte	0x1a79
	.4byte	.LLST43
	.uleb128 0x2a
	.string	"yaw"
	.byte	0x1
	.2byte	0x4da
	.4byte	0x82
	.4byte	.LLST44
	.uleb128 0x2b
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x4da
	.4byte	0x82
	.4byte	.LLST45
	.uleb128 0x2c
	.4byte	.LASF548
	.byte	0x1
	.2byte	0x4db
	.4byte	0x2ba
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x4dc
	.4byte	0x2d64
	.4byte	.LLST46
	.uleb128 0x2b
	.4byte	.LASF568
	.byte	0x1
	.2byte	0x4dd
	.4byte	0x41
	.4byte	.LLST47
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xedd
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF569
	.byte	0x1
	.2byte	0x4cb
	.byte	0x1
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST48
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF570
	.byte	0x1
	.2byte	0x4bc
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LLST49
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF571
	.byte	0x1
	.2byte	0x42c
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST50
	.4byte	0x2df4
	.uleb128 0x2a
	.string	"e"
	.byte	0x1
	.2byte	0x45f
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.2byte	0x460
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.2byte	0x461
	.4byte	0x6e
	.4byte	.LLST53
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.2byte	0x461
	.4byte	0x6e
	.uleb128 0x2a
	.string	"ed"
	.byte	0x1
	.2byte	0x462
	.4byte	0x1a79
	.4byte	.LLST54
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF572
	.byte	0x1
	.2byte	0x41b
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST55
	.4byte	0x2e1c
	.uleb128 0x2d
	.string	"ed"
	.byte	0x1
	.2byte	0x41d
	.4byte	0x1a79
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF573
	.byte	0x1
	.2byte	0x40b
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST56
	.4byte	0x2e63
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x40d
	.4byte	0x6e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x31
	.4byte	0x27f8
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x40e
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x33
	.4byte	0x280a
	.4byte	.LLST57
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF574
	.byte	0x1
	.2byte	0x3f9
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST58
	.4byte	0x2eb4
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.2byte	0x3fb
	.4byte	0x82
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x6e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x31
	.4byte	0x27f8
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x3ff
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x33
	.4byte	0x280a
	.4byte	.LLST59
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF575
	.byte	0x1
	.2byte	0x3c0
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST60
	.4byte	0x2f37
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x3c2
	.4byte	0x1a79
	.4byte	.LLST61
	.uleb128 0x2b
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x3c2
	.4byte	0x1a79
	.4byte	.LLST62
	.uleb128 0x2a
	.string	"rad"
	.byte	0x1
	.2byte	0x3c3
	.4byte	0x82
	.4byte	.LLST63
	.uleb128 0x2a
	.string	"org"
	.byte	0x1
	.2byte	0x3c4
	.4byte	0x1f8f
	.4byte	.LLST64
	.uleb128 0x2c
	.4byte	.LASF576
	.byte	0x1
	.2byte	0x3c5
	.4byte	0x2ba
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x41
	.4byte	.LLST65
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x41
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x3ad
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST66
	.4byte	0x2f6a
	.uleb128 0x22
	.string	"var"
	.byte	0x1
	.2byte	0x3af
	.4byte	0x6e
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.2byte	0x3af
	.4byte	0x6e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF578
	.byte	0x1
	.2byte	0x39d
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST67
	.4byte	0x2f91
	.uleb128 0x22
	.string	"str"
	.byte	0x1
	.2byte	0x39f
	.4byte	0x6e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x374
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST68
	.4byte	0x2fd8
	.uleb128 0x2b
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x376
	.4byte	0x41
	.4byte	.LLST69
	.uleb128 0x22
	.string	"str"
	.byte	0x1
	.2byte	0x377
	.4byte	0x6e
	.uleb128 0x2a
	.string	"old"
	.byte	0x1
	.2byte	0x378
	.4byte	0x2957
	.4byte	.LLST70
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x29f
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST71
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x24a
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST72
	.4byte	0x3073
	.uleb128 0x25
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x24c
	.4byte	0xa7
	.uleb128 0x2b
	.4byte	.LASF582
	.byte	0x1
	.2byte	0x24d
	.4byte	0x6e
	.4byte	.LLST73
	.uleb128 0x2a
	.string	"pos"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x1f8f
	.4byte	.LLST74
	.uleb128 0x2a
	.string	"vol"
	.byte	0x1
	.2byte	0x24f
	.4byte	0x82
	.4byte	.LLST75
	.uleb128 0x2b
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x24f
	.4byte	0x82
	.4byte	.LLST76
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x250
	.4byte	0x41
	.4byte	.LLST77
	.uleb128 0x2b
	.4byte	.LASF584
	.byte	0x1
	.2byte	0x250
	.4byte	0x41
	.4byte	.LLST78
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF585
	.byte	0x1
	.2byte	0x27e
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST79
	.4byte	0x30de
	.uleb128 0x2b
	.4byte	.LASF586
	.byte	0x1
	.2byte	0x280
	.4byte	0x6e
	.4byte	.LLST80
	.uleb128 0x2b
	.4byte	.LASF587
	.byte	0x1
	.2byte	0x281
	.4byte	0x41
	.4byte	.LLST81
	.uleb128 0x2b
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x282
	.4byte	0x1a79
	.4byte	.LLST82
	.uleb128 0x2b
	.4byte	.LASF588
	.byte	0x1
	.2byte	0x283
	.4byte	0x41
	.4byte	.LLST83
	.uleb128 0x2b
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x284
	.4byte	0x82
	.4byte	.LLST84
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF589
	.byte	0x1
	.2byte	0x223
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST85
	.4byte	0x3165
	.uleb128 0x2a
	.string	"org"
	.byte	0x1
	.2byte	0x225
	.4byte	0x1f8f
	.4byte	.LLST86
	.uleb128 0x2a
	.string	"vel"
	.byte	0x1
	.2byte	0x225
	.4byte	0x1f8f
	.4byte	.LLST87
	.uleb128 0x2b
	.4byte	.LASF590
	.byte	0x1
	.2byte	0x226
	.4byte	0x82
	.4byte	.LLST88
	.uleb128 0x2b
	.4byte	.LASF591
	.byte	0x1
	.2byte	0x226
	.4byte	0x82
	.4byte	.LLST89
	.uleb128 0x2b
	.4byte	.LASF592
	.byte	0x1
	.2byte	0x226
	.4byte	0x82
	.4byte	.LLST90
	.uleb128 0x2b
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x227
	.4byte	0x6e
	.4byte	.LLST91
	.uleb128 0x25
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x228
	.4byte	0x41
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF593
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST92
	.4byte	0x31bc
	.uleb128 0x2a
	.string	"org"
	.byte	0x1
	.2byte	0x205
	.4byte	0x1f8f
	.4byte	.LLST93
	.uleb128 0x2b
	.4byte	.LASF590
	.byte	0x1
	.2byte	0x206
	.4byte	0x82
	.4byte	.LLST94
	.uleb128 0x2b
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x207
	.4byte	0x6e
	.4byte	.LLST95
	.uleb128 0x25
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x208
	.4byte	0x41
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF594
	.byte	0x1
	.2byte	0x1ef
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST96
	.4byte	0x3207
	.uleb128 0x22
	.string	"org"
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x1f8f
	.uleb128 0x22
	.string	"dir"
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x1f8f
	.uleb128 0x25
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x82
	.uleb128 0x25
	.4byte	.LASF595
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x82
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF596
	.byte	0x1
	.2byte	0x1df
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST97
	.4byte	0x322e
	.uleb128 0x22
	.string	"num"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x82
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF597
	.byte	0x1
	.2byte	0x192
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST98
	.4byte	0x3264
	.uleb128 0x25
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x194
	.4byte	0x1f8f
	.uleb128 0x2d
	.string	"yaw"
	.byte	0x1
	.2byte	0x195
	.4byte	0x82
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x1ad
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST99
	.4byte	0x32bf
	.uleb128 0x2b
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x1af
	.4byte	0x1f8f
	.4byte	.LLST100
	.uleb128 0x2b
	.4byte	.LASF600
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x82
	.4byte	.LLST101
	.uleb128 0x2a
	.string	"yaw"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x82
	.4byte	.LLST102
	.uleb128 0x2b
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x82
	.4byte	.LLST103
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x17e
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST104
	.4byte	0x32f6
	.uleb128 0x25
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x180
	.4byte	0x1f8f
	.uleb128 0x2a
	.string	"new"
	.byte	0x1
	.2byte	0x181
	.4byte	0x82
	.4byte	.LLST105
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x15f
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST106
	.4byte	0x3341
	.uleb128 0x2b
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x161
	.4byte	0x1f8f
	.4byte	.LLST107
	.uleb128 0x2b
	.4byte	.LASF604
	.byte	0x1
	.2byte	0x162
	.4byte	0x2ba
	.4byte	.LLST108
	.uleb128 0x2a
	.string	"new"
	.byte	0x1
	.2byte	0x163
	.4byte	0x82
	.4byte	.LLST109
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF605
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST110
	.uleb128 0x35
	.4byte	0x27de
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST111
	.4byte	0x3391
	.uleb128 0x36
	.4byte	0x27ed
	.uleb128 0x37
	.4byte	0x27de
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0x1
	.2byte	0x6d4
	.uleb128 0x38
	.4byte	.LBB35
	.4byte	.LBE35
	.uleb128 0x36
	.4byte	0x27ed
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF625
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0x6e
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST112
	.4byte	0x33dc
	.uleb128 0x3a
	.4byte	.LASF613
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.4byte	.LLST113
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x23
	.4byte	0x41
	.4byte	.LLST114
	.uleb128 0x3b
	.string	"out"
	.byte	0x1
	.byte	0x24
	.4byte	0x33dc
	.byte	0x5
	.byte	0x3
	.4byte	out.14918
	.byte	0
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x33ec
	.uleb128 0xd
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF606
	.byte	0x1
	.2byte	0x3e6
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST115
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF607
	.byte	0x1
	.2byte	0x142
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST116
	.4byte	0x344b
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.2byte	0x144
	.4byte	0x6e
	.4byte	.LLST117
	.uleb128 0x2b
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x145
	.4byte	0x2957
	.4byte	.LLST118
	.uleb128 0x2b
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x146
	.4byte	0x41
	.4byte	.LLST119
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF608
	.byte	0x1
	.2byte	0x123
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST120
	.4byte	0x3494
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.2byte	0x125
	.4byte	0x6e
	.4byte	.LLST121
	.uleb128 0x2b
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x126
	.4byte	0x2957
	.4byte	.LLST122
	.uleb128 0x2b
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x127
	.4byte	0x41
	.4byte	.LLST123
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF609
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST124
	.4byte	0x34bd
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.2byte	0x114
	.4byte	0x6e
	.4byte	.LLST125
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF610
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST126
	.4byte	0x34f2
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.byte	0x53
	.4byte	0x6e
	.4byte	.LLST127
	.uleb128 0x2f
	.string	"ed"
	.byte	0x1
	.byte	0x54
	.4byte	0x1a79
	.4byte	.LLST128
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF611
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST129
	.4byte	0x3523
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.byte	0x3b
	.4byte	0x6e
	.4byte	.LLST130
	.uleb128 0x30
	.string	"ed"
	.byte	0x1
	.byte	0x3c
	.4byte	0x1a79
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF612
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST131
	.4byte	0x3608
	.uleb128 0x3c
	.string	"e"
	.byte	0x1
	.byte	0x84
	.4byte	0x1a79
	.4byte	.LLST132
	.uleb128 0x3c
	.string	"min"
	.byte	0x1
	.byte	0x84
	.4byte	0x1f8f
	.4byte	.LLST133
	.uleb128 0x3c
	.string	"max"
	.byte	0x1
	.byte	0x84
	.4byte	0x1f8f
	.4byte	.LLST134
	.uleb128 0x3a
	.4byte	.LASF614
	.byte	0x1
	.byte	0x84
	.4byte	0xad
	.4byte	.LLST135
	.uleb128 0x3d
	.4byte	.LASF42
	.byte	0x1
	.byte	0x86
	.4byte	0x1f8f
	.uleb128 0x3e
	.4byte	.LASF615
	.byte	0x1
	.byte	0x87
	.4byte	0x2ba
	.4byte	.LLST136
	.uleb128 0x3e
	.4byte	.LASF616
	.byte	0x1
	.byte	0x87
	.4byte	0x2ba
	.4byte	.LLST137
	.uleb128 0x3d
	.4byte	.LASF617
	.byte	0x1
	.byte	0x88
	.4byte	0x3608
	.uleb128 0x3d
	.4byte	.LASF618
	.byte	0x1
	.byte	0x89
	.4byte	0x1b47
	.uleb128 0x3d
	.4byte	.LASF619
	.byte	0x1
	.byte	0x89
	.4byte	0x1b47
	.uleb128 0x30
	.string	"a"
	.byte	0x1
	.byte	0x8a
	.4byte	0x82
	.uleb128 0x3d
	.4byte	.LASF620
	.byte	0x1
	.byte	0x8b
	.4byte	0x2ba
	.uleb128 0x3d
	.4byte	.LASF621
	.byte	0x1
	.byte	0x8b
	.4byte	0x2ba
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.4byte	.LLST138
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.uleb128 0x30
	.string	"k"
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.uleb128 0x30
	.string	"l"
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.byte	0
	.uleb128 0xc
	.4byte	0x82
	.4byte	0x361e
	.uleb128 0xd
	.4byte	0x48
	.byte	0x1
	.uleb128 0xd
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF622
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST139
	.4byte	0x3679
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.byte	0xec
	.4byte	0x1a79
	.4byte	.LLST140
	.uleb128 0x2f
	.string	"m"
	.byte	0x1
	.byte	0xed
	.4byte	0x6e
	.4byte	.LLST141
	.uleb128 0x3d
	.4byte	.LASF554
	.byte	0x1
	.byte	0xed
	.4byte	0xa7
	.uleb128 0x2f
	.string	"mod"
	.byte	0x1
	.byte	0xee
	.4byte	0x3679
	.4byte	.LLST142
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0xef
	.4byte	0x41
	.4byte	.LLST143
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2293
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF623
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x36b7
	.uleb128 0x30
	.string	"e"
	.byte	0x1
	.byte	0xd9
	.4byte	0x1a79
	.uleb128 0x30
	.string	"min"
	.byte	0x1
	.byte	0xda
	.4byte	0x1f8f
	.uleb128 0x30
	.string	"max"
	.byte	0x1
	.byte	0xda
	.4byte	0x1f8f
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF624
	.byte	0x1
	.2byte	0x2f6
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF626
	.byte	0x1
	.2byte	0x2fe
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST144
	.4byte	0x3744
	.uleb128 0x41
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x2fe
	.4byte	0x41
	.4byte	.LLST145
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x300
	.4byte	0x41
	.4byte	.LLST146
	.uleb128 0x2a
	.string	"pvs"
	.byte	0x1
	.2byte	0x301
	.4byte	0x112
	.4byte	.LLST147
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x302
	.4byte	0x1a79
	.4byte	.LLST148
	.uleb128 0x25
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x303
	.4byte	0x225f
	.uleb128 0x2d
	.string	"org"
	.byte	0x1
	.2byte	0x304
	.4byte	0x2ba
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF627
	.byte	0x1
	.2byte	0x341
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST149
	.4byte	0x37ac
	.uleb128 0x2a
	.string	"ent"
	.byte	0x1
	.2byte	0x343
	.4byte	0x1a79
	.4byte	.LLST150
	.uleb128 0x2b
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x343
	.4byte	0x1a79
	.4byte	.LLST151
	.uleb128 0x2b
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x344
	.4byte	0x225f
	.4byte	.LLST152
	.uleb128 0x2a
	.string	"l"
	.byte	0x1
	.2byte	0x345
	.4byte	0x41
	.4byte	.LLST153
	.uleb128 0x2c
	.4byte	.LASF628
	.byte	0x1
	.2byte	0x346
	.4byte	0x2ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF629
	.byte	0x1
	.2byte	0x47d
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST154
	.4byte	0x37d5
	.uleb128 0x42
	.string	"s"
	.byte	0x1
	.2byte	0x47d
	.4byte	0x6e
	.4byte	.LLST155
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF630
	.byte	0x1
	.2byte	0x4a1
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LLST156
	.4byte	0x380c
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.2byte	0x4a3
	.4byte	0x6e
	.4byte	.LLST157
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x4a4
	.4byte	0x41
	.4byte	.LLST158
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF631
	.byte	0x1
	.2byte	0x488
	.byte	0x1
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST159
	.4byte	0x3843
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.2byte	0x48a
	.4byte	0x6e
	.4byte	.LLST160
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x48b
	.4byte	0x41
	.4byte	.LLST161
	.byte	0
	.uleb128 0x35
	.4byte	0x2815
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LLST162
	.4byte	0x3892
	.uleb128 0x36
	.4byte	0x2828
	.uleb128 0x36
	.4byte	0x2834
	.uleb128 0x36
	.4byte	0x2840
	.uleb128 0x31
	.4byte	0x2815
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x63f
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x120
	.uleb128 0x33
	.4byte	0x2828
	.4byte	.LLST163
	.uleb128 0x36
	.4byte	0x2834
	.uleb128 0x36
	.4byte	0x2840
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF632
	.byte	0x1
	.2byte	0x684
	.byte	0x1
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LLST164
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF633
	.byte	0x1
	.2byte	0x67e
	.byte	0x1
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LLST165
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF634
	.byte	0x1
	.2byte	0x679
	.byte	0x1
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LLST166
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF635
	.byte	0x1
	.2byte	0x674
	.byte	0x1
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LLST167
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF636
	.byte	0x1
	.2byte	0x66f
	.byte	0x1
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LLST168
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF637
	.byte	0x1
	.2byte	0x66a
	.byte	0x1
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LLST169
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF638
	.byte	0x1
	.2byte	0x665
	.byte	0x1
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LLST170
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF639
	.byte	0x1
	.2byte	0x660
	.byte	0x1
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LLST171
	.uleb128 0xc
	.4byte	0x74
	.4byte	0x3958
	.uleb128 0xd
	.4byte	0x48
	.byte	0xf
	.uleb128 0xd
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF640
	.byte	0x1
	.2byte	0x3ee
	.4byte	0x3942
	.byte	0x5
	.byte	0x3
	.4byte	pr_string_temp
	.uleb128 0x2c
	.4byte	.LASF641
	.byte	0x1
	.2byte	0x3ef
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	pr_string_tempindex
	.uleb128 0x43
	.4byte	.LASF642
	.byte	0x5
	.byte	0x28
	.4byte	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF643
	.byte	0xf
	.byte	0x35
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF644
	.byte	0xf
	.byte	0x36
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF645
	.byte	0xf
	.byte	0x37
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF646
	.byte	0xf
	.byte	0x38
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF647
	.byte	0xf
	.byte	0x39
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF648
	.byte	0xf
	.byte	0x41
	.4byte	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF649
	.byte	0xf
	.byte	0x45
	.4byte	0x39e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1236
	.uleb128 0x43
	.4byte	.LASF650
	.byte	0xf
	.byte	0x46
	.4byte	0x1f8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF651
	.byte	0xf
	.byte	0x48
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x7fe
	.4byte	0x3a17
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pr_builtins
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1755
	.uleb128 0x44
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x7ff
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pr_numbuiltins
	.uleb128 0x43
	.4byte	.LASF654
	.byte	0xf
	.byte	0x82
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF655
	.byte	0xf
	.byte	0x84
	.4byte	0xad
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF656
	.byte	0xf
	.byte	0x85
	.4byte	0x2d64
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF220
	.byte	0x10
	.byte	0xc7
	.4byte	0x3f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"svs"
	.byte	0x10
	.byte	0xce
	.4byte	0x18cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"sv"
	.byte	0x10
	.byte	0xcf
	.4byte	0x1a90
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF657
	.byte	0x10
	.byte	0xd1
	.4byte	0x2957
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF658
	.byte	0xb
	.2byte	0xc2c
	.4byte	0x1f10
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x46
	.4byte	.LASF659
	.byte	0x13
	.2byte	0x548
	.4byte	0x3aab
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	0x3ab0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27d2
	.uleb128 0x44
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x2fc
	.4byte	0x258f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	checkpvs
	.uleb128 0x44
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x340
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	c_invis
	.uleb128 0x44
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x340
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	c_notvis
	.uleb128 0x44
	.4byte	.LASF663
	.byte	0x1
	.2byte	0x591
	.4byte	0x3f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sv_aim
	.uleb128 0xc
	.4byte	0x1755
	.4byte	0x3b12
	.uleb128 0xd
	.4byte	0x48
	.byte	0x50
	.byte	0
	.uleb128 0x44
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x795
	.4byte	0x3b02
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pr_builtin
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.4byte	.LFB88-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI1-.Ltext0
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
	.4byte	.LFE88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB108-.Ltext0
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
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB65-.Ltext0
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
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB106-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 -1
	.byte	0xa
	.2byte	0xfaf8
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xa
	.2byte	0xfaf8
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB105-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB87-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x5
	.byte	0x8f
	.sleb128 -65536
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB95-.Ltext0
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
	.4byte	.LFE95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 944
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 944
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 948
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE95-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 948
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB94-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 184
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 184
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x5
	.byte	0x8c
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -164
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0xc
	.byte	0x91
	.sleb128 -164
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0xf
	.byte	0x91
	.sleb128 -164
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -156
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x9
	.byte	0x61
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x9
	.byte	0x61
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x9
	.byte	0x61
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x63
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	sv_aim+12
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE94-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB93-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LFB92-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL78-1-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LFB91-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB90-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB89-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI40-.Ltext0
	.4byte	.LFE89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LFB86-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI44-.Ltext0
	.4byte	.LFE86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB85-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL96-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL96-1-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL99-1-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI52-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB81-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110-1-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL123-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL123-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI61-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI63-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI67-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 3500
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 3500
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI69-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI71-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI73-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL158-1-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI75-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI76-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI77-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI81-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI82-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL191-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL191-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL191-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL191-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL191-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI83-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI84-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL194-1-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL194-1-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL198-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 40
	.4byte	.LVL198-1-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL198-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 52
	.4byte	.LVL198-1-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-1-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 64
	.4byte	.LVL198-1-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI85-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI86-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL206-1-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 28
	.4byte	.LVL208-1-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI87-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI88-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI89-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI90-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI91-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI92-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI93-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI94-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI97-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI98-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL236-1-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL242-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL240-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI99-.Ltext0
	.4byte	.LCFI100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI100-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL246-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI101-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI102-.Ltext0
	.4byte	.LCFI103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI103-.Ltext0
	.4byte	.LCFI104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI104-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL249-1-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL257-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI105-.Ltext0
	.4byte	.LCFI106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI106-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI107-.Ltext0
	.4byte	.LCFI108-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI108-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI109-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI109-.Ltext0
	.4byte	.LCFI110-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI110-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI111-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI111-.Ltext0
	.4byte	.LCFI112-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI112-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI113-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI113-.Ltext0
	.4byte	.LCFI114-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI114-.Ltext0
	.4byte	.LCFI115-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI115-.Ltext0
	.4byte	.LCFI116-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI116-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 -1
	.byte	0xa
	.2byte	0xfaf8
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xa
	.2byte	0xfaf8
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI117-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI117-.Ltext0
	.4byte	.LCFI118-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI118-.Ltext0
	.4byte	.LCFI119-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI119-.Ltext0
	.4byte	.LCFI120-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI120-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 -1
	.byte	0xa
	.2byte	0xfaf8
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xa
	.2byte	0xfaf8
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI121-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI121-.Ltext0
	.4byte	.LCFI122-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI122-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI123-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI123-.Ltext0
	.4byte	.LCFI124-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI124-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI125-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI125-.Ltext0
	.4byte	.LCFI126-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI126-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI127-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI127-.Ltext0
	.4byte	.LCFI128-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI128-.Ltext0
	.4byte	.LCFI129-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI129-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL313-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL313-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL313-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0xa
	.byte	0x8e
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL309-1-.Ltext0
	.2byte	0xc
	.byte	0x8e
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-1-.Ltext0
	.2byte	0xc
	.byte	0x8d
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8d
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x8d
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI130-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI130-.Ltext0
	.4byte	.LCFI131-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI131-.Ltext0
	.4byte	.LCFI132-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI132-.Ltext0
	.4byte	.LCFI133-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI133-.Ltext0
	.4byte	.LCFI134-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI134-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL323-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL326-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL326-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL326-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 4
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-1-.Ltext0
	.2byte	0x4
	.byte	0x74
	.sleb128 -84
	.byte	0x9f
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI135-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI135-.Ltext0
	.4byte	.LCFI136-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI136-.Ltext0
	.4byte	.LCFI137-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI137-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL335-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL349-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI138-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI138-.Ltext0
	.4byte	.LCFI139-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI139-.Ltext0
	.4byte	.LCFI140-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI140-.Ltext0
	.4byte	.LCFI141-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI141-.Ltext0
	.4byte	.LCFI142-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI142-.Ltext0
	.4byte	.LCFI143-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI143-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL359-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI144-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI144-.Ltext0
	.4byte	.LCFI145-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI145-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LFB80-.Ltext0
	.4byte	.LCFI146-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI146-.Ltext0
	.4byte	.LCFI147-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI147-.Ltext0
	.4byte	.LCFI148-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI148-.Ltext0
	.4byte	.LCFI149-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI149-.Ltext0
	.4byte	.LFE80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI150-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI150-.Ltext0
	.4byte	.LCFI151-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI151-.Ltext0
	.4byte	.LCFI152-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI152-.Ltext0
	.4byte	.LCFI153-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI153-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LFB96-.Ltext0
	.4byte	.LCFI154-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI154-.Ltext0
	.4byte	.LCFI155-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI155-.Ltext0
	.4byte	.LCFI156-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI156-.Ltext0
	.4byte	.LCFI157-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI157-.Ltext0
	.4byte	.LCFI158-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI158-.Ltext0
	.4byte	.LCFI159-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI159-.Ltext0
	.4byte	.LCFI160-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI160-.Ltext0
	.4byte	.LCFI161-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI161-.Ltext0
	.4byte	.LCFI162-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI162-.Ltext0
	.4byte	.LCFI163-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI163-.Ltext0
	.4byte	.LFE96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LFB104-.Ltext0
	.4byte	.LCFI164-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI164-.Ltext0
	.4byte	.LCFI165-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI165-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LFB103-.Ltext0
	.4byte	.LCFI166-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI166-.Ltext0
	.4byte	.LCFI167-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI167-.Ltext0
	.4byte	.LFE103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LFB102-.Ltext0
	.4byte	.LCFI168-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI168-.Ltext0
	.4byte	.LCFI169-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI169-.Ltext0
	.4byte	.LFE102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LFB101-.Ltext0
	.4byte	.LCFI170-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI170-.Ltext0
	.4byte	.LCFI171-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI171-.Ltext0
	.4byte	.LFE101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LFB100-.Ltext0
	.4byte	.LCFI172-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI172-.Ltext0
	.4byte	.LCFI173-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI173-.Ltext0
	.4byte	.LFE100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LFB99-.Ltext0
	.4byte	.LCFI174-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI174-.Ltext0
	.4byte	.LCFI175-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI175-.Ltext0
	.4byte	.LFE99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LFB98-.Ltext0
	.4byte	.LCFI176-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI176-.Ltext0
	.4byte	.LCFI177-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI177-.Ltext0
	.4byte	.LFE98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LFB97-.Ltext0
	.4byte	.LCFI178-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI178-.Ltext0
	.4byte	.LCFI179-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI179-.Ltext0
	.4byte	.LFE97-.Ltext0
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
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
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
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF69:
	.string	"canSend"
.LASF52:
	.string	"pflags"
.LASF297:
	.string	"button0"
.LASF325:
	.string	"message"
.LASF380:
	.string	"reliable_datagram_buf"
.LASF483:
	.string	"screenrect_s"
.LASF485:
	.string	"screenrect_t"
.LASF425:
	.string	"vecs"
.LASF198:
	.string	"upmove"
.LASF306:
	.string	"team"
.LASF593:
	.string	"PF_BasicEmitter"
.LASF311:
	.string	"waterlevel"
.LASF422:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF102:
	.string	"entity_s"
.LASF194:
	.string	"entity_t"
.LASF519:
	.string	"lastlight"
.LASF264:
	.string	"SetChangeParms"
.LASF552:
	.string	"nomonsters"
.LASF148:
	.string	"numplanes"
.LASF338:
	.string	"builtin_t"
.LASF244:
	.string	"v_right"
.LASF270:
	.string	"solid"
.LASF370:
	.string	"models"
.LASF118:
	.string	"frame_start_time"
.LASF113:
	.string	"lightTimestamp"
.LASF462:
	.string	"binormals"
.LASF407:
	.string	"alternate_anims"
.LASF388:
	.string	"lightnormalindex"
.LASF421:
	.string	"samples"
.LASF303:
	.string	"idealpitch"
.LASF185:
	.string	"lastshadowonly"
.LASF438:
	.string	"lastclipnode"
.LASF90:
	.string	"entnext"
.LASF63:
	.string	"sa_data"
.LASF117:
	.string	"topnode"
.LASF391:
	.string	"mvertex_t"
.LASF360:
	.string	"ss_loading"
.LASF25:
	.string	"next"
.LASF475:
	.string	"plane_t"
.LASF188:
	.string	"vertices"
.LASF131:
	.string	"angles1"
.LASF132:
	.string	"angles2"
.LASF339:
	.string	"maxclients"
.LASF265:
	.string	"globalvars_t"
.LASF246:
	.string	"trace_startsolid"
.LASF508:
	.string	"cubescale"
.LASF481:
	.string	"endpos"
.LASF630:
	.string	"PF_precache_model"
.LASF399:
	.string	"height"
.LASF418:
	.string	"styles"
.LASF518:
	.string	"lasthdr"
.LASF460:
	.string	"commands"
.LASF124:
	.string	"brushlightinstant"
.LASF308:
	.string	"teleport_time"
.LASF669:
	.string	"PR_GetTempString"
.LASF623:
	.string	"PF_setsize"
.LASF494:
	.string	"visible"
.LASF134:
	.string	"model_s"
.LASF474:
	.string	"model_t"
.LASF328:
	.string	"noise1"
.LASF329:
	.string	"noise2"
.LASF330:
	.string	"noise3"
.LASF427:
	.string	"texture"
.LASF316:
	.string	"goalentity"
.LASF626:
	.string	"PF_newcheckclient"
.LASF340:
	.string	"maxclientslimit"
.LASF166:
	.string	"hulls"
.LASF96:
	.string	"compressed_vis"
.LASF222:
	.string	"total_secrets"
.LASF62:
	.string	"sa_family"
.LASF504:
	.string	"numVisSurf"
.LASF598:
	.string	"value1"
.LASF159:
	.string	"numsurfaces"
.LASF290:
	.string	"ammo_rockets"
.LASF203:
	.string	"parm_start"
.LASF533:
	.string	"PF_precache_file"
.LASF324:
	.string	"movedir"
.LASF313:
	.string	"ideal_yaw"
.LASF40:
	.string	"vec_t"
.LASF277:
	.string	"touch"
.LASF305:
	.string	"enemy"
.LASF145:
	.string	"nummodelsurfaces"
.LASF192:
	.string	"triplanes"
.LASF221:
	.string	"serverflags"
.LASF202:
	.string	"first_statement"
.LASF638:
	.string	"PF_WriteChar"
.LASF428:
	.string	"mtexinfo_t"
.LASF13:
	.string	"byte"
.LASF491:
	.string	"shadowlight_s"
.LASF511:
	.string	"shadowlight_t"
.LASF605:
	.string	"PF_makevectors"
.LASF281:
	.string	"groundentity"
.LASF289:
	.string	"ammo_nails"
.LASF333:
	.string	"free"
.LASF531:
	.string	"entnum"
.LASF294:
	.string	"chain"
.LASF100:
	.string	"index"
.LASF103:
	.string	"forcelink"
.LASF532:
	.string	"dest"
.LASF42:
	.string	"angles"
.LASF452:
	.string	"boundingradius"
.LASF101:
	.string	"ambient_sound_level"
.LASF207:
	.string	"s_file"
.LASF160:
	.string	"surfaces"
.LASF138:
	.string	"synctype"
.LASF362:
	.string	"server_state_t"
.LASF123:
	.string	"aliasframeinstant"
.LASF75:
	.string	"ackSequence"
.LASF152:
	.string	"vertexes"
.LASF663:
	.string	"sv_aim"
.LASF215:
	.string	"frametime"
.LASF79:
	.string	"sendMessage"
.LASF199:
	.string	"usercmd_t"
.LASF127:
	.string	"translate_start_time"
.LASF332:
	.string	"edict_s"
.LASF337:
	.string	"edict_t"
.LASF516:
	.string	"lastvorg"
.LASF271:
	.string	"oldorigin"
.LASF375:
	.string	"edicts"
.LASF204:
	.string	"locals"
.LASF361:
	.string	"ss_active"
.LASF302:
	.string	"v_angle"
.LASF652:
	.string	"pr_builtins"
.LASF592:
	.string	"life"
.LASF65:
	.string	"connecttime"
.LASF51:
	.string	"light_lev"
.LASF28:
	.string	"maxs"
.LASF136:
	.string	"type"
.LASF468:
	.string	"aliashdr_t"
.LASF259:
	.string	"ClientKill"
.LASF539:
	.string	"PF_localcmd"
.LASF561:
	.string	"PF_checkbottom"
.LASF156:
	.string	"nodes"
.LASF401:
	.string	"gl_lumitex"
.LASF641:
	.string	"pr_string_tempindex"
.LASF89:
	.string	"entity"
.LASF274:
	.string	"punchangle"
.LASF409:
	.string	"msurface_s"
.LASF434:
	.string	"msurface_t"
.LASF550:
	.string	"PF_traceline"
.LASF111:
	.string	"syncbase"
.LASF646:
	.string	"eval_light_lev"
.LASF509:
	.string	"haloalpha"
.LASF267:
	.string	"absmax"
.LASF175:
	.string	"firstsurface"
.LASF496:
	.string	"castShadow"
.LASF357:
	.string	"spawn_parms"
.LASF309:
	.string	"armortype"
.LASF658:
	.string	"causticschain"
.LASF321:
	.string	"dmg_save"
.LASF570:
	.string	"PF_coredump"
.LASF174:
	.string	"plane"
.LASF179:
	.string	"updateframe"
.LASF120:
	.string	"blend"
.LASF1:
	.string	"unsigned char"
.LASF341:
	.string	"clients"
.LASF594:
	.string	"PF_particle"
.LASF183:
	.string	"lastblend"
.LASF505:
	.string	"scizz"
.LASF527:
	.string	"aliaslightinstant_t"
.LASF256:
	.string	"StartFrame"
.LASF10:
	.string	"float"
.LASF46:
	.string	"skin"
.LASF545:
	.string	"PF_changeyaw"
.LASF319:
	.string	"targetname"
.LASF619:
	.string	"yvector"
.LASF525:
	.string	"tshalfangles"
.LASF33:
	.string	"numfaces"
.LASF627:
	.string	"PF_checkclient"
.LASF569:
	.string	"PF_eprint"
.LASF413:
	.string	"light_s"
.LASF414:
	.string	"light_t"
.LASF473:
	.string	"modtype_t"
.LASF318:
	.string	"target"
.LASF464:
	.string	"indecies"
.LASF410:
	.string	"firstedge"
.LASF121:
	.string	"pose1"
.LASF122:
	.string	"pose2"
.LASF640:
	.string	"pr_string_temp"
.LASF206:
	.string	"s_name"
.LASF651:
	.string	"pr_edict_size"
.LASF331:
	.string	"entvars_t"
.LASF668:
	.string	"PF_changelevel"
.LASF181:
	.string	"lastpose1"
.LASF182:
	.string	"lastpose2"
.LASF292:
	.string	"items"
.LASF16:
	.string	"allowoverflow"
.LASF19:
	.string	"maxsize"
.LASF247:
	.string	"trace_fraction"
.LASF216:
	.string	"force_retouch"
.LASF498:
	.string	"entvis"
.LASF440:
	.string	"clip_maxs"
.LASF419:
	.string	"cached_light"
.LASF358:
	.string	"old_frags"
.LASF429:
	.string	"glpoly_s"
.LASF433:
	.string	"glpoly_t"
.LASF31:
	.string	"visleafs"
.LASF355:
	.string	"ping_times"
.LASF603:
	.string	"PF_normalize"
.LASF614:
	.string	"rotate"
.LASF141:
	.string	"clipbox"
.LASF596:
	.string	"PF_random"
.LASF484:
	.string	"coords"
.LASF92:
	.string	"contents"
.LASF359:
	.string	"server_static_t"
.LASF212:
	.string	"other"
.LASF381:
	.string	"signon"
.LASF662:
	.string	"c_notvis"
.LASF378:
	.string	"datagram_buf"
.LASF450:
	.string	"scale"
.LASF110:
	.string	"efrag"
.LASF466:
	.string	"texels"
.LASF186:
	.string	"lastpaliashdr"
.LASF276:
	.string	"size"
.LASF501:
	.string	"volumeVerts"
.LASF595:
	.string	"count"
.LASF343:
	.string	"client_s"
.LASF384:
	.string	"client_t"
.LASF323:
	.string	"owner"
.LASF43:
	.string	"modelindex"
.LASF622:
	.string	"PF_setmodel"
.LASF572:
	.string	"PF_Spawn"
.LASF128:
	.string	"origin1"
.LASF465:
	.string	"gl_lumatex"
.LASF654:
	.string	"pr_argc"
.LASF477:
	.string	"startsolid"
.LASF535:
	.string	"PF_traceoff"
.LASF176:
	.string	"aliasframeinstant_s"
.LASF405:
	.string	"anim_max"
.LASF582:
	.string	"samp"
.LASF266:
	.string	"absmin"
.LASF312:
	.string	"watertype"
.LASF368:
	.string	"worldmodel"
.LASF514:
	.string	"lastlorg"
.LASF336:
	.string	"freetime"
.LASF648:
	.string	"pr_strings"
.LASF258:
	.string	"PlayerPostThink"
.LASF636:
	.string	"PF_WriteLong"
.LASF447:
	.string	"maliasframedesc_t"
.LASF23:
	.string	"link_s"
.LASF26:
	.string	"link_t"
.LASF154:
	.string	"edges"
.LASF180:
	.string	"paliashdr"
.LASF348:
	.string	"sendsignon"
.LASF579:
	.string	"PF_stuffcmd"
.LASF84:
	.string	"addr"
.LASF218:
	.string	"deathmatch"
.LASF217:
	.string	"mapname"
.LASF377:
	.string	"datagram"
.LASF104:
	.string	"update_type"
.LASF451:
	.string	"scale_origin"
.LASF114:
	.string	"dlightframe"
.LASF415:
	.string	"polys"
.LASF558:
	.string	"bestdist"
.LASF613:
	.string	"first"
.LASF647:
	.string	"eval_style"
.LASF480:
	.string	"fraction"
.LASF210:
	.string	"dfunction_t"
.LASF408:
	.string	"offsets"
.LASF32:
	.string	"firstface"
.LASF129:
	.string	"origin2"
.LASF571:
	.string	"PF_Find"
.LASF345:
	.string	"spawned"
.LASF245:
	.string	"trace_allsolid"
.LASF526:
	.string	"triangleVis"
.LASF482:
	.string	"trace_t"
.LASF279:
	.string	"blocked"
.LASF184:
	.string	"lastent"
.LASF119:
	.string	"frame_interval"
.LASF397:
	.string	"texture_s"
.LASF349:
	.string	"last_message"
.LASF66:
	.string	"lastMessageTime"
.LASF644:
	.string	"eval_alpha"
.LASF568:
	.string	"oldself"
.LASF165:
	.string	"marksurfaces"
.LASF387:
	.string	"synctype_t"
.LASF17:
	.string	"overflowed"
.LASF350:
	.string	"netconnection"
.LASF135:
	.string	"needload"
.LASF495:
	.string	"isStatic"
.LASF467:
	.string	"frames"
.LASF417:
	.string	"lightmaptexturenum"
.LASF499:
	.string	"visSurf"
.LASF578:
	.string	"PF_cvar"
.LASF59:
	.string	"value"
.LASF402:
	.string	"texturechain"
.LASF116:
	.string	"trivial_accept"
.LASF257:
	.string	"PlayerPreThink"
.LASF177:
	.string	"_next"
.LASF301:
	.string	"fixangle"
.LASF85:
	.string	"address"
.LASF317:
	.string	"spawnflags"
.LASF250:
	.string	"trace_plane_dist"
.LASF628:
	.string	"view"
.LASF554:
	.string	"check"
.LASF416:
	.string	"shadowchain"
.LASF437:
	.string	"firstclipnode"
.LASF601:
	.string	"pitch"
.LASF76:
	.string	"sendSequence"
.LASF411:
	.string	"texturemins"
.LASF587:
	.string	"channel"
.LASF365:
	.string	"lastcheck"
.LASF201:
	.string	"string_t"
.LASF612:
	.string	"SetMinMaxSize"
.LASF310:
	.string	"armorvalue"
.LASF112:
	.string	"skinnum"
.LASF611:
	.string	"PF_error"
.LASF307:
	.string	"max_health"
.LASF655:
	.string	"pr_trace"
.LASF205:
	.string	"profile"
.LASF557:
	.string	"bestdir"
.LASF404:
	.string	"anim_min"
.LASF150:
	.string	"leafs"
.LASF624:
	.string	"PF_checkpos"
.LASF369:
	.string	"model_precache"
.LASF600:
	.string	"forward"
.LASF30:
	.string	"headnode"
.LASF142:
	.string	"clipmins"
.LASF314:
	.string	"yaw_speed"
.LASF363:
	.string	"paused"
.LASF461:
	.string	"triangles"
.LASF633:
	.string	"PF_WriteString"
.LASF14:
	.string	"qboolean"
.LASF288:
	.string	"ammo_shells"
.LASF55:
	.string	"name"
.LASF446:
	.string	"bboxmax"
.LASF211:
	.string	"self"
.LASF280:
	.string	"nextthink"
.LASF659:
	.string	"wgPipe"
.LASF91:
	.string	"mleaf_s"
.LASF436:
	.string	"mleaf_t"
.LASF74:
	.string	"driverdata"
.LASF108:
	.string	"msg_angles"
.LASF500:
	.string	"volumeCmds"
.LASF548:
	.string	"move"
.LASF583:
	.string	"attenuation"
.LASF637:
	.string	"PF_WriteShort"
.LASF261:
	.string	"PutClientInServer"
.LASF163:
	.string	"numclipnodes"
.LASF664:
	.string	"pr_builtin"
.LASF353:
	.string	"edict"
.LASF367:
	.string	"modelname"
.LASF320:
	.string	"dmg_take"
.LASF3:
	.string	"short unsigned int"
.LASF275:
	.string	"classname"
.LASF0:
	.string	"signed char"
.LASF346:
	.string	"dropasap"
.LASF197:
	.string	"sidemove"
.LASF146:
	.string	"numsubmodels"
.LASF524:
	.string	"tslights"
.LASF556:
	.string	"start"
.LASF392:
	.string	"mplane_s"
.LASF396:
	.string	"mplane_t"
.LASF547:
	.string	"current"
.LASF226:
	.string	"parm1"
.LASF227:
	.string	"parm2"
.LASF228:
	.string	"parm3"
.LASF229:
	.string	"parm4"
.LASF230:
	.string	"parm5"
.LASF231:
	.string	"parm6"
.LASF232:
	.string	"parm7"
.LASF233:
	.string	"parm8"
.LASF234:
	.string	"parm9"
.LASF251:
	.string	"trace_ent"
.LASF394:
	.string	"dist"
.LASF347:
	.string	"privileged"
.LASF191:
	.string	"binomials"
.LASF364:
	.string	"loadgame"
.LASF389:
	.string	"trivertx_t"
.LASF254:
	.string	"msg_entity"
.LASF161:
	.string	"numsurfedges"
.LASF577:
	.string	"PF_cvar_set"
.LASF41:
	.string	"vec3_t"
.LASF661:
	.string	"c_invis"
.LASF463:
	.string	"texcoords"
.LASF584:
	.string	"soundnum"
.LASF167:
	.string	"numtextures"
.LASF88:
	.string	"leafnext"
.LASF98:
	.string	"firstmarksurface"
.LASF590:
	.string	"pcount"
.LASF35:
	.string	"planenum"
.LASF200:
	.string	"func_t"
.LASF61:
	.string	"qsockaddr"
.LASF376:
	.string	"state"
.LASF420:
	.string	"cached_dlight"
.LASF566:
	.string	"PF_walkmove"
.LASF469:
	.string	"mod_brush"
.LASF530:
	.string	"WGPipe"
.LASF625:
	.string	"PF_VarString"
.LASF448:
	.string	"ident"
.LASF453:
	.string	"eyeposition"
.LASF171:
	.string	"entities"
.LASF219:
	.string	"coop"
.LASF223:
	.string	"total_monsters"
.LASF660:
	.string	"checkpvs"
.LASF490:
	.string	"lightcmd_t"
.LASF528:
	.string	"lightcmd_u"
.LASF106:
	.string	"msgtime"
.LASF563:
	.string	"PF_floor"
.LASF497:
	.string	"halo"
.LASF515:
	.string	"lasteangles"
.LASF225:
	.string	"killed_monsters"
.LASF576:
	.string	"eorg"
.LASF352:
	.string	"msgbuf"
.LASF235:
	.string	"parm10"
.LASF236:
	.string	"parm11"
.LASF237:
	.string	"parm12"
.LASF238:
	.string	"parm13"
.LASF239:
	.string	"parm14"
.LASF240:
	.string	"parm15"
.LASF241:
	.string	"parm16"
.LASF268:
	.string	"ltime"
.LASF540:
	.string	"PF_setspawnparms"
.LASF22:
	.string	"sizebuf_s"
.LASF21:
	.string	"sizebuf_t"
.LASF618:
	.string	"xvector"
.LASF214:
	.string	"time"
.LASF478:
	.string	"inopen"
.LASF20:
	.string	"cursize"
.LASF273:
	.string	"avelocity"
.LASF155:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF639:
	.string	"PF_WriteByte"
.LASF670:
	.string	"WriteDest"
.LASF195:
	.string	"viewangles"
.LASF168:
	.string	"textures"
.LASF537:
	.string	"PF_rint"
.LASF383:
	.string	"server_t"
.LASF53:
	.string	"entity_state_t"
.LASF573:
	.string	"PF_vtos"
.LASF445:
	.string	"bboxmin"
.LASF196:
	.string	"forwardmove"
.LASF597:
	.string	"PF_vectoyaw"
.LASF220:
	.string	"teamplay"
.LASF520:
	.string	"lightpos"
.LASF300:
	.string	"impulse"
.LASF99:
	.string	"nummarksurfaces"
.LASF534:
	.string	"PF_traceon"
.LASF551:
	.string	"trace"
.LASF444:
	.string	"interval"
.LASF588:
	.string	"volume"
.LASF506:
	.string	"filtercube"
.LASF253:
	.string	"trace_inwater"
.LASF94:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF503:
	.string	"lightCmds"
.LASF272:
	.string	"velocity"
.LASF137:
	.string	"numframes"
.LASF555:
	.string	"bestent"
.LASF224:
	.string	"found_secrets"
.LASF390:
	.string	"position"
.LASF296:
	.string	"view_ofs"
.LASF70:
	.string	"sendNext"
.LASF7:
	.string	"long unsigned int"
.LASF304:
	.string	"netname"
.LASF510:
	.string	"oldlightorigin"
.LASF190:
	.string	"tangents"
.LASF54:
	.string	"cvar_s"
.LASF60:
	.string	"cvar_t"
.LASF529:
	.string	"_wgpipe"
.LASF585:
	.string	"PF_sound"
.LASF581:
	.string	"PF_ambientsound"
.LASF423:
	.string	"cachededgeoffset"
.LASF8:
	.string	"char"
.LASF544:
	.string	"PF_lightstyle"
.LASF650:
	.string	"pr_globals"
.LASF151:
	.string	"numvertexes"
.LASF470:
	.string	"mod_sprite"
.LASF492:
	.string	"baseColor"
.LASF443:
	.string	"numposes"
.LASF602:
	.string	"PF_vlen"
.LASF412:
	.string	"extents"
.LASF83:
	.string	"receiveMessage"
.LASF187:
	.string	"shadowonly"
.LASF48:
	.string	"color"
.LASF432:
	.string	"firstvertex"
.LASF115:
	.string	"dlightbits"
.LASF632:
	.string	"PF_WriteEntity"
.LASF322:
	.string	"dmg_inflictor"
.LASF488:
	.string	"asVec"
.LASF315:
	.string	"aiment"
.LASF189:
	.string	"normals"
.LASF455:
	.string	"skinwidth"
.LASF38:
	.string	"cache_user_s"
.LASF39:
	.string	"cache_user_t"
.LASF379:
	.string	"reliable_datagram"
.LASF293:
	.string	"takedamage"
.LASF178:
	.string	"lockframe"
.LASF604:
	.string	"newvalue"
.LASF403:
	.string	"anim_total"
.LASF57:
	.string	"archive"
.LASF666:
	.string	"d:/Data/Nintendo/TenebraeGX/src/pr_cmds.c"
.LASF479:
	.string	"inwater"
.LASF169:
	.string	"visdata"
.LASF87:
	.string	"leaf"
.LASF458:
	.string	"poseverts"
.LASF77:
	.string	"unreliableSendSequence"
.LASF243:
	.string	"v_up"
.LASF486:
	.string	"asInt"
.LASF493:
	.string	"brightness"
.LASF456:
	.string	"skinheight"
.LASF542:
	.string	"PF_makestatic"
.LASF426:
	.string	"mipadjust"
.LASF334:
	.string	"area"
.LASF653:
	.string	"pr_numbuiltins"
.LASF71:
	.string	"driver"
.LASF629:
	.string	"PR_CheckEmptyString"
.LASF284:
	.string	"weapon"
.LASF374:
	.string	"max_edicts"
.LASF97:
	.string	"efrags"
.LASF86:
	.string	"efrag_s"
.LASF133:
	.string	"efrag_t"
.LASF559:
	.string	"PF_nextent"
.LASF631:
	.string	"PF_precache_sound"
.LASF287:
	.string	"currentammo"
.LASF295:
	.string	"deadflag"
.LASF543:
	.string	"PF_Remove"
.LASF36:
	.string	"children"
.LASF643:
	.string	"eval_color"
.LASF50:
	.string	"style"
.LASF9:
	.string	"double"
.LASF385:
	.string	"ST_SYNC"
.LASF507:
	.string	"rspeed"
.LASF157:
	.string	"numtexinfo"
.LASF326:
	.string	"sounds"
.LASF541:
	.string	"client"
.LASF278:
	.string	"think"
.LASF249:
	.string	"trace_plane_normal"
.LASF153:
	.string	"numedges"
.LASF193:
	.string	"lightinstant"
.LASF400:
	.string	"gl_texturenum"
.LASF68:
	.string	"disconnected"
.LASF549:
	.string	"speed"
.LASF335:
	.string	"num_leafs"
.LASF424:
	.string	"medge_t"
.LASF170:
	.string	"lightdata"
.LASF45:
	.string	"colormap"
.LASF18:
	.string	"data"
.LASF487:
	.string	"asFloat"
.LASF93:
	.string	"visframe"
.LASF366:
	.string	"lastchecktime"
.LASF406:
	.string	"anim_next"
.LASF354:
	.string	"colors"
.LASF431:
	.string	"neighbours"
.LASF608:
	.string	"PF_sprint"
.LASF285:
	.string	"weaponmodel"
.LASF149:
	.string	"planes"
.LASF398:
	.string	"width"
.LASF620:
	.string	"base"
.LASF27:
	.string	"mins"
.LASF393:
	.string	"normal"
.LASF73:
	.string	"socket"
.LASF642:
	.string	"vec3_origin"
.LASF107:
	.string	"msg_origins"
.LASF81:
	.string	"unreliableReceiveSequence"
.LASF521:
	.string	"vieworg"
.LASF667:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF617:
	.string	"bounds"
.LASF442:
	.string	"firstpose"
.LASF616:
	.string	"rmax"
.LASF606:
	.string	"PF_dprint"
.LASF37:
	.string	"dclipnode_t"
.LASF395:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF356:
	.string	"num_pings"
.LASF95:
	.string	"parent"
.LASF586:
	.string	"sample"
.LASF523:
	.string	"extvertices"
.LASF269:
	.string	"movetype"
.LASF209:
	.string	"parm_size"
.LASF72:
	.string	"landriver"
.LASF536:
	.string	"PF_fabs"
.LASF373:
	.string	"num_edicts"
.LASF560:
	.string	"PF_pointcontents"
.LASF371:
	.string	"sound_precache"
.LASF609:
	.string	"PF_bprint"
.LASF143:
	.string	"clipmaxs"
.LASF298:
	.string	"button1"
.LASF299:
	.string	"button2"
.LASF454:
	.string	"numskins"
.LASF47:
	.string	"effects"
.LASF502:
	.string	"numVolumeVerts"
.LASF634:
	.string	"PF_WriteCoord"
.LASF441:
	.string	"hull_t"
.LASF489:
	.string	"asVoid"
.LASF553:
	.string	"PF_aim"
.LASF125:
	.string	"numleafs"
.LASF283:
	.string	"frags"
.LASF109:
	.string	"model"
.LASF607:
	.string	"PF_centerprint"
.LASF49:
	.string	"alpha"
.LASF430:
	.string	"numverts"
.LASF439:
	.string	"clip_mins"
.LASF565:
	.string	"PF_setorigin"
.LASF286:
	.string	"weaponframe"
.LASF567:
	.string	"oldf"
.LASF263:
	.string	"SetNewParms"
.LASF635:
	.string	"PF_WriteAngle"
.LASF457:
	.string	"numtris"
.LASF5:
	.string	"long long int"
.LASF282:
	.string	"health"
.LASF610:
	.string	"PF_objerror"
.LASF656:
	.string	"pr_xfunction"
.LASF574:
	.string	"PF_ftos"
.LASF599:
	.string	"PF_vectoangles"
.LASF252:
	.string	"trace_inopen"
.LASF56:
	.string	"string"
.LASF562:
	.string	"PF_ceil"
.LASF517:
	.string	"lastlradius"
.LASF327:
	.string	"noise"
.LASF522:
	.string	"lastframeinstant"
.LASF471:
	.string	"mod_alias"
.LASF80:
	.string	"receiveSequence"
.LASF105:
	.string	"baseline"
.LASF342:
	.string	"changelevel_issued"
.LASF213:
	.string	"world"
.LASF158:
	.string	"texinfo"
.LASF164:
	.string	"clipnodes"
.LASF291:
	.string	"ammo_cells"
.LASF126:
	.string	"leafnums"
.LASF242:
	.string	"v_forward"
.LASF34:
	.string	"dmodel_t"
.LASF144:
	.string	"firstmodelsurface"
.LASF621:
	.string	"transformed"
.LASF82:
	.string	"receiveMessageLength"
.LASF476:
	.string	"allsolid"
.LASF649:
	.string	"pr_global_struct"
.LASF147:
	.string	"submodels"
.LASF260:
	.string	"ClientConnect"
.LASF29:
	.string	"origin"
.LASF78:
	.string	"sendMessageLength"
.LASF575:
	.string	"PF_findradius"
.LASF255:
	.string	"main"
.LASF248:
	.string	"trace_endpos"
.LASF172:
	.string	"cache"
.LASF538:
	.string	"PF_Fixme"
.LASF564:
	.string	"PF_droptofloor"
.LASF665:
	.string	"GNU C 4.6.3"
.LASF449:
	.string	"version"
.LASF615:
	.string	"rmin"
.LASF162:
	.string	"surfedges"
.LASF64:
	.string	"qsocket_s"
.LASF386:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF173:
	.string	"mnode_s"
.LASF435:
	.string	"mnode_t"
.LASF262:
	.string	"ClientDisconnect"
.LASF67:
	.string	"lastSendTime"
.LASF580:
	.string	"PF_break"
.LASF208:
	.string	"numparms"
.LASF657:
	.string	"host_client"
.LASF344:
	.string	"active"
.LASF372:
	.string	"lightstyles"
.LASF2:
	.string	"short int"
.LASF382:
	.string	"signon_buf"
.LASF351:
	.string	"wishdir"
.LASF472:
	.string	"mod_alias3"
.LASF24:
	.string	"prev"
.LASF58:
	.string	"server"
.LASF44:
	.string	"frame"
.LASF513:
	.string	"lasteorg"
.LASF591:
	.string	"tick"
.LASF459:
	.string	"posedata"
.LASF139:
	.string	"flags"
.LASF130:
	.string	"rotate_start_time"
.LASF645:
	.string	"eval_pflags"
.LASF140:
	.string	"radius"
.LASF589:
	.string	"PF_ExtendedEmitter"
.LASF512:
	.string	"aliaslightinstant_s"
.LASF546:
	.string	"ideal"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
