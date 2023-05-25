	.file	"operators.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl _ZnwjPKci
	.type	_ZnwjPKci, @function
_ZnwjPKci:
.LFB11:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/operators.cpp"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	mr 6,5
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB66:
	.loc 1 19 0
	lis 3,.LC0@ha
.LVL1:
.LBE66:
	.loc 1 18 0
	mr 0,4
	.cfi_offset 65, 4
.LBB67:
	.loc 1 19 0
	la 3,.LC0@l(3)
	mr 4,31
.LVL2:
	mr 5,0
.LVL3:
	crxor 6,6,6
	bl printf
.LVL4:
	.loc 1 21 0
	mr 3,31
	bl malloc
.LVL5:
.LBE67:
	.loc 1 24 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL6:
	mtlr 0
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE11:
	.size	_ZnwjPKci, .-_ZnwjPKci
	.align 2
	.globl _ZdlPv
	.type	_ZdlPv, @function
_ZdlPv:
.LFB12:
	.loc 1 26 0
	.cfi_startproc
.LVL7:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 27 0
	.cfi_offset 65, 4
	bl free
.LVL8:
	.loc 1 28 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE12:
	.size	_ZdlPv, .-_ZdlPv
	.align 2
	.globl _ZnajPKci
	.type	_ZnajPKci, @function
_ZnajPKci:
.LFB13:
	.loc 1 30 0
	.cfi_startproc
.LVL9:
	mflr 0
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	mr 6,5
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB68:
	.loc 1 31 0
	lis 3,.LC1@ha
.LVL10:
.LBE68:
	.loc 1 30 0
	mr 0,4
	.cfi_offset 65, 4
.LBB69:
	.loc 1 31 0
	la 3,.LC1@l(3)
	mr 4,31
.LVL11:
	mr 5,0
.LVL12:
	crxor 6,6,6
	bl printf
.LVL13:
	.loc 1 33 0
	mr 3,31
	bl malloc
.LVL14:
.LBE69:
	.loc 1 36 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL15:
	mtlr 0
	addi 1,1,16
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE13:
	.size	_ZnajPKci, .-_ZnajPKci
	.align 2
	.globl _ZdaPv
	.type	_ZdaPv, @function
_ZdaPv:
.LFB14:
	.loc 1 38 0
	.cfi_startproc
.LVL16:
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 39 0
	.cfi_offset 65, 4
	bl free
.LVL17:
	.loc 1 40 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE14:
	.size	_ZdaPv, .-_ZdaPv
	.align 2
	.globl _ZN11fileDataPtrC2Ev
	.type	_ZN11fileDataPtrC2Ev, @function
_ZN11fileDataPtrC2Ev:
.LFB16:
	.loc 1 94 0
	.cfi_startproc
.LVL18:
.LBB70:
	.loc 1 95 0
	lis 9,0x7fff
	.loc 1 97 0
	li 0,0
	.loc 1 95 0
	ori 9,9,65535
	.loc 1 97 0
	stw 0,0(3)
	.loc 1 95 0
	stw 9,12(3)
	.loc 1 96 0
	lis 9,0x8000
	.loc 1 98 0
	stb 0,20(3)
	.loc 1 99 0
	li 0,1
	.loc 1 96 0
	stw 9,16(3)
.LBE70:
	.loc 1 101 0
.LBB71:
	.loc 1 99 0
	stb 0,21(3)
.LBE71:
	.loc 1 101 0
	blr
	.cfi_endproc
.LFE16:
	.size	_ZN11fileDataPtrC2Ev, .-_ZN11fileDataPtrC2Ev
	.align 2
	.globl _ZN11fileDataPtrD2Ev
	.type	_ZN11fileDataPtrD2Ev, @function
_ZN11fileDataPtrD2Ev:
.LFB19:
	.loc 1 103 0
	.cfi_startproc
.LVL19:
	mflr 0
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB76:
	.loc 1 104 0
	lbz 0,21(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L7
.LVL20:
.LBE76:
.LBB77:
.LBB78:
.LBB79:
	.loc 1 105 0
	lis 3,.LC2@ha
.LVL21:
	la 3,.LC2@l(3)
	bl puts
	.loc 1 106 0
	lwz 3,4(31)
	cmpwi 7,3,0
	beq- 7,.L6
	lbz 0,20(31)
	cmpwi 7,0,0
	beq- 7,.L11
.L6:
.LBE79:
.LBE78:
.LBE77:
	.loc 1 115 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL22:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL23:
.L7:
.LCFI10:
	.cfi_restore_state
.LBB82:
	.loc 1 113 0
	lis 3,.LC3@ha
.LVL24:
	la 3,.LC3@l(3)
	bl puts
.LBE82:
	.loc 1 115 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL25:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI11:
	.cfi_def_cfa_offset 0
	blr
.LVL26:
.L11:
.LCFI12:
	.cfi_restore_state
.LBB83:
.LBB81:
.LBB80:
	.loc 1 107 0
	bl free
.LBE80:
.LBE81:
.LBE83:
	.loc 1 115 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL27:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI13:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE19:
	.size	_ZN11fileDataPtrD2Ev, .-_ZN11fileDataPtrD2Ev
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.2, @function
_Z41__static_initialization_and_destruction_0ii.constprop.2:
.LFB65:
	.loc 1 466 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA65
.LVL28:
	cmpwi 7,3,1
	mflr 0
	stwu 1,-40(1)
.LCFI14:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 0,44(1)
	mr 0,3
	.cfi_offset 65, 4
	stfd 31,32(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 466 0
	beq- 7,.L20
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 63, -8
.LVL29:
	.loc 1 398 0
	cmpwi 7,3,0
	bne- 7,.L12
.LVL30:
	.loc 1 466 0
	lwz 0,44(1)
.LVL31:
.LBB98:
.LBB99:
.LBB100:
.LBB101:
.LBB102:
	.loc 1 326 0
	lis 3,.LANCHOR0@ha
.LVL32:
.LBE102:
.LBE101:
.LBE100:
.LBE99:
.LBE98:
	.loc 1 466 0
	lwz 28,16(1)
.LBB111:
.LBB109:
.LBB107:
.LBB105:
.LBB103:
	.loc 1 326 0
	la 3,.LANCHOR0@l(3)
.LBE103:
.LBE105:
.LBE107:
.LBE109:
.LBE111:
	.loc 1 466 0
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
.LEHB0:
.LBB112:
.LBB110:
.LBB108:
.LBB106:
.LBB104:
	.loc 1 326 0
	b _ZN11fileDataPtrD1Ev
.LEHE0:
.LVL33:
.L20:
.LCFI16:
	.cfi_restore_state
.LBE104:
.LBE106:
.LBE108:
.LBE110:
.LBE112:
.LBB113:
.LBB114:
.LBB115:
.LBB116:
	.loc 1 95 0
	lis 11,.LANCHOR0@ha
	lis 10,0x7fff
	la 30,.LANCHOR0@l(11)
	ori 10,10,65535
.LBE116:
.LBE115:
.LBB120:
	.loc 1 320 0
	lis 4,.LC4@ha
.LBE120:
.LBB124:
.LBB117:
	.loc 1 97 0
	li 9,0
	.loc 1 95 0
	stw 10,12(30)
.LBE117:
.LBE124:
.LBB125:
	.loc 1 320 0
	li 3,128
.LBE125:
.LBB126:
.LBB118:
	.loc 1 96 0
	lis 10,0x8000
.LBE118:
.LBE126:
.LBB127:
	.loc 1 320 0
	la 4,.LC4@l(4)
	li 5,320
.LBE127:
.LBB128:
.LBB119:
	.loc 1 96 0
	stw 10,16(30)
	.loc 1 97 0
	stw 9,.LANCHOR0@l(11)
	.loc 1 98 0
	stb 9,20(30)
	.loc 1 99 0
	stb 0,21(30)
.LEHB1:
.LBE119:
.LBE128:
.LBB129:
	.loc 1 320 0
	bl _ZnajPKci
.LVL34:
.LBB121:
	.loc 1 322 0
	lis 9,.LC6@ha
	lis 29,.LC7@ha
.LBE121:
	.loc 1 320 0
	stw 3,24(30)
.LVL35:
	.loc 1 321 0
	li 31,0
.LBB122:
	.loc 1 322 0
	lfs 31,.LC6@l(9)
	la 29,.LC7@l(29)
	lis 28,0x4330
.LVL36:
.L14:
	xoris 0,31,0x8000
	stw 28,8(1)
	stw 0,12(1)
.LBE122:
	.loc 1 466 0
	slwi 0,31,2
.LBB123:
	.loc 1 322 0
	lwz 9,24(30)
	.loc 1 323 0
	mr 3,29
	.loc 1 322 0
	lfd 0,8(1)
	fsub 0,0,31
	frsp 0,0
	stfsx 0,9,0
	.loc 1 323 0
	lwz 9,24(30)
	lfsx 1,9,0
	creqv 6,6,6
	bl printf
.LEHE1:
.LVL37:
	.loc 1 321 0
	cmpwi 7,31,31
	addi 31,31,1
.LVL38:
	bne+ 7,.L14
.LVL39:
.L12:
.LBE123:
.LBE129:
.LBE114:
.LBE113:
	.loc 1 466 0
	lwz 0,44(1)
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL40:
.L18:
.LCFI18:
	.cfi_restore_state
	mr 31,3
.LBB131:
.LBB130:
	.loc 1 319 0
	mr 3,30
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB2:
	bl _Unwind_Resume
.LEHE2:
.LBE130:
.LBE131:
	.cfi_endproc
.LFE65:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA65:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE65-.LLSDACSB65
.LLSDACSB65:
	.uleb128 .LEHB0-.LFB65
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB65
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L18-.LFB65
	.uleb128 0
	.uleb128 .LEHB2-.LFB65
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE65:
	.section	".text"
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.2, .-_Z41__static_initialization_and_destruction_0ii.constprop.2
	.align 2
	.globl _ZN11fileDataPtrC2ERKS_
	.type	_ZN11fileDataPtrC2ERKS_, @function
_ZN11fileDataPtrC2ERKS_:
.LFB22:
	.loc 1 117 0
	.cfi_startproc
.LVL41:
.LBB132:
	.loc 1 118 0
	lwz 9,8(4)
.LBE132:
	.loc 1 120 0
.LBB133:
	.loc 1 118 0
	lwz 0,12(4)
	lwz 10,0(4)
	lwz 11,4(4)
	stw 10,0(3)
	stw 11,4(3)
	stw 9,8(3)
	stw 0,12(3)
	lhz 0,20(4)
	lwz 9,16(4)
	sth 0,20(3)
	.loc 1 119 0
	li 0,0
	.loc 1 118 0
	stw 9,16(3)
	.loc 1 119 0
	stb 0,21(3)
.LBE133:
	.loc 1 120 0
	blr
	.cfi_endproc
.LFE22:
	.size	_ZN11fileDataPtrC2ERKS_, .-_ZN11fileDataPtrC2ERKS_
	.align 2
	.globl _ZN11fileDataPtrC2ERS_
	.type	_ZN11fileDataPtrC2ERS_, @function
_ZN11fileDataPtrC2ERS_:
.LFB25:
	.loc 1 122 0
	.cfi_startproc
.LVL42:
.LBB134:
	.loc 1 123 0
	lwz 9,8(4)
.LBE134:
	.loc 1 125 0
.LBB135:
	.loc 1 123 0
	lwz 0,12(4)
	lwz 10,0(4)
	lwz 11,4(4)
	stw 10,0(3)
	stw 11,4(3)
	stw 9,8(3)
	stw 0,12(3)
	lhz 0,20(4)
	lwz 9,16(4)
	sth 0,20(3)
	.loc 1 124 0
	li 0,0
	.loc 1 123 0
	stw 9,16(3)
	.loc 1 124 0
	stb 0,21(3)
.LBE135:
	.loc 1 125 0
	blr
	.cfi_endproc
.LFE25:
	.size	_ZN11fileDataPtrC2ERS_, .-_ZN11fileDataPtrC2ERS_
	.align 2
	.globl _ZN11fileDataPtr7setFileEPKc
	.type	_ZN11fileDataPtr7setFileEPKc, @function
_ZN11fileDataPtr7setFileEPKc:
.LFB27:
	.loc 1 130 0
	.cfi_startproc
.LVL43:
	.loc 1 173 0
	li 0,0
	.loc 1 174 0
	.loc 1 173 0
	stb 0,20(3)
	.loc 1 174 0
	blr
	.cfi_endproc
.LFE27:
	.size	_ZN11fileDataPtr7setFileEPKc, .-_ZN11fileDataPtr7setFileEPKc
	.align 2
	.globl _ZN11fileDataPtr9setBufferEPci
	.type	_ZN11fileDataPtr9setBufferEPci, @function
_ZN11fileDataPtr9setBufferEPci:
.LFB28:
	.loc 1 176 0
	.cfi_startproc
.LVL44:
	.loc 1 181 0
	li 0,0
	.loc 1 180 0
	stw 4,4(3)
	.loc 1 181 0
	stw 0,12(3)
	.loc 1 183 0
	li 0,1
	.loc 1 182 0
	stw 5,16(3)
	.loc 1 184 0
	.loc 1 183 0
	stb 0,20(3)
	.loc 1 184 0
	blr
	.cfi_endproc
.LFE28:
	.size	_ZN11fileDataPtr9setBufferEPci, .-_ZN11fileDataPtr9setBufferEPci
	.align 2
	.globl _ZNK11fileDataPtrcvKiEv
	.type	_ZNK11fileDataPtrcvKiEv, @function
_ZNK11fileDataPtrcvKiEv:
.LFB29:
	.loc 1 186 0
	.cfi_startproc
.LVL45:
	mflr 0
	stwu 1,-16(1)
.LCFI19:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 187 0
	lwz 4,0(3)
	lis 3,.LC8@ha
.LVL46:
	la 3,.LC8@l(3)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl printf
	.loc 1 189 0
	lwz 0,20(1)
	lwz 3,0(31)
	mtlr 0
	lwz 31,12(1)
.LVL47:
	addi 1,1,16
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE29:
	.size	_ZNK11fileDataPtrcvKiEv, .-_ZNK11fileDataPtrcvKiEv
	.align 2
	.globl _ZN11fileDataPtrcvKiEv
	.type	_ZN11fileDataPtrcvKiEv, @function
_ZN11fileDataPtrcvKiEv:
.LFB30:
	.loc 1 191 0
	.cfi_startproc
.LVL48:
	mflr 0
	stwu 1,-16(1)
.LCFI21:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 192 0
	lwz 4,0(3)
	lis 3,.LC9@ha
.LVL49:
	la 3,.LC9@l(3)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl printf
	.loc 1 194 0
	lwz 0,20(1)
	lwz 3,0(31)
	mtlr 0
	lwz 31,12(1)
.LVL50:
	addi 1,1,16
.LCFI22:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE30:
	.size	_ZN11fileDataPtrcvKiEv, .-_ZN11fileDataPtrcvKiEv
	.align 2
	.globl _ZN11fileDataPtrdeEv
	.type	_ZN11fileDataPtrdeEv, @function
_ZN11fileDataPtrdeEv:
.LFB31:
	.loc 1 197 0
	.cfi_startproc
.LVL51:
	mflr 0
	stwu 1,-16(1)
.LCFI23:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB136:
	.loc 1 198 0
	lwz 4,0(3)
	lwz 5,12(3)
	lis 3,.LC10@ha
.LVL52:
	la 3,.LC10@l(3)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl printf
.LBB137:
	.loc 1 199 0
	lwz 0,0(31)
	lwz 9,12(31)
	cmpw 7,0,9
	blt- 7,.L28
	.loc 1 199 0 is_stmt 0 discriminator 1
	lwz 11,16(31)
	cmpw 7,0,11
	ble- 7,.L30
.L28:
.LVL53:
.LBB138:
	.loc 1 206 0 is_stmt 1
	stw 0,12(31)
	.loc 1 207 0
	stw 0,16(31)
	li 0,0
.LBE138:
.LBE137:
	.loc 1 210 0
	lwz 3,4(31)
.LBE136:
	.loc 1 211 0
	lwz 31,12(1)
.LVL54:
	add 3,3,0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	mtlr 0
	blr
.LVL55:
.L30:
.LCFI25:
	.cfi_restore_state
.LBB140:
	.loc 1 210 0
	lwz 3,4(31)
.LBB139:
	.loc 1 199 0
	subf 0,9,0
.LBE139:
.LBE140:
	.loc 1 211 0
	lwz 31,12(1)
.LVL56:
	add 3,3,0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_restore 31
.LCFI26:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE31:
	.size	_ZN11fileDataPtrdeEv, .-_ZN11fileDataPtrdeEv
	.align 2
	.globl _ZN11fileDataPtrixERi
	.type	_ZN11fileDataPtrixERi, @function
_ZN11fileDataPtrixERi:
.LFB32:
	.loc 1 213 0
	.cfi_startproc
.LVL57:
.LBB141:
	.loc 1 214 0
	lwz 0,0(3)
	lwz 11,0(4)
.LBB142:
	.loc 1 215 0
	lwz 9,12(3)
.LBE142:
	.loc 1 214 0
	add 0,0,11
.LVL58:
.LBB144:
	.loc 1 215 0
	cmpw 7,0,9
	blt- 7,.L32
	.loc 1 215 0 is_stmt 0 discriminator 1
	lwz 11,16(3)
	cmpw 7,0,11
	ble- 7,.L34
.L32:
.LVL59:
.LBB143:
	.loc 1 222 0 is_stmt 1
	stw 0,12(3)
	.loc 1 223 0
	stw 0,16(3)
	li 0,0
.LVL60:
.LBE143:
.LBE144:
	.loc 1 226 0
	lwz 3,4(3)
.LVL61:
.LBE141:
	.loc 1 227 0
	add 3,3,0
	blr
.LVL62:
.L34:
.LBB146:
	.loc 1 226 0
	lwz 3,4(3)
.LVL63:
.LBB145:
	.loc 1 215 0
	subf 0,9,0
.LVL64:
.LBE145:
.LBE146:
	.loc 1 227 0
	add 3,3,0
	blr
	.cfi_endproc
.LFE32:
	.size	_ZN11fileDataPtrixERi, .-_ZN11fileDataPtrixERi
	.align 2
	.globl _ZN11fileDataPtrppEv
	.type	_ZN11fileDataPtrppEv, @function
_ZN11fileDataPtrppEv:
.LFB33:
	.loc 1 230 0
	.cfi_startproc
.LVL65:
	mflr 0
	stwu 1,-16(1)
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 231 0
	lwz 4,0(3)
	addi 4,4,1
	stw 4,0(3)
	.loc 1 232 0
	lis 3,.LC11@ha
.LVL66:
	la 3,.LC11@l(3)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl printf
	.loc 1 234 0
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
.LVL67:
	mtlr 0
	addi 1,1,16
.LCFI28:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE33:
	.size	_ZN11fileDataPtrppEv, .-_ZN11fileDataPtrppEv
	.align 2
	.globl _ZN11fileDataPtrppEi
	.type	_ZN11fileDataPtrppEi, @function
_ZN11fileDataPtrppEi:
.LFB34:
	.loc 1 236 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA34
.LVL68:
	stwu 1,-16(1)
.LCFI29:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB147:
	.loc 1 237 0
	.cfi_offset 65, 4
	bl _ZN11fileDataPtrC1ERS_
.LVL69:
	.loc 1 238 0
	lwz 4,0(30)
	.loc 1 239 0
	lis 3,.LC12@ha
	la 3,.LC12@l(3)
	.loc 1 238 0
	addi 4,4,1
	stw 4,0(30)
.LEHB3:
	.loc 1 239 0
	crxor 6,6,6
	bl printf
.LEHE3:
.LBE147:
	.loc 1 241 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL70:
	mtlr 0
	lwz 31,12(1)
.LVL71:
	addi 1,1,16
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL72:
.L38:
.LCFI31:
	.cfi_restore_state
	mr 30,3
.LVL73:
.LBB148:
	.loc 1 240 0
	mr 3,31
	bl _ZN11fileDataPtrD1Ev
	mr 3,30
.LEHB4:
	bl _Unwind_Resume
.LEHE4:
.LBE148:
	.cfi_endproc
.LFE34:
	.section	.gcc_except_table
.LLSDA34:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE34-.LLSDACSB34
.LLSDACSB34:
	.uleb128 .LEHB3-.LFB34
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L38-.LFB34
	.uleb128 0
	.uleb128 .LEHB4-.LFB34
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE34:
	.section	".text"
	.size	_ZN11fileDataPtrppEi, .-_ZN11fileDataPtrppEi
	.align 2
	.globl _ZN11fileDataPtrmmEv
	.type	_ZN11fileDataPtrmmEv, @function
_ZN11fileDataPtrmmEv:
.LFB35:
	.loc 1 243 0
	.cfi_startproc
.LVL74:
	mflr 0
	stwu 1,-16(1)
.LCFI32:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 244 0
	lwz 4,0(3)
	addi 4,4,-1
	stw 4,0(3)
	.loc 1 245 0
	lis 3,.LC13@ha
.LVL75:
	la 3,.LC13@l(3)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl printf
	.loc 1 247 0
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
.LVL76:
	mtlr 0
	addi 1,1,16
.LCFI33:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE35:
	.size	_ZN11fileDataPtrmmEv, .-_ZN11fileDataPtrmmEv
	.align 2
	.globl _ZN11fileDataPtrmmEi
	.type	_ZN11fileDataPtrmmEi, @function
_ZN11fileDataPtrmmEi:
.LFB36:
	.loc 1 249 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA36
.LVL77:
	stwu 1,-16(1)
.LCFI34:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB149:
	.loc 1 250 0
	.cfi_offset 65, 4
	bl _ZN11fileDataPtrC1ERS_
.LVL78:
	.loc 1 251 0
	lwz 4,0(30)
	.loc 1 252 0
	lis 3,.LC14@ha
	la 3,.LC14@l(3)
	.loc 1 251 0
	addi 4,4,-1
	stw 4,0(30)
.LEHB5:
	.loc 1 252 0
	crxor 6,6,6
	bl printf
.LEHE5:
.LBE149:
	.loc 1 254 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL79:
	mtlr 0
	lwz 31,12(1)
.LVL80:
	addi 1,1,16
	.cfi_remember_state
.LCFI35:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL81:
.L43:
.LCFI36:
	.cfi_restore_state
	mr 30,3
.LVL82:
.LBB150:
	.loc 1 253 0
	mr 3,31
	bl _ZN11fileDataPtrD1Ev
	mr 3,30
.LEHB6:
	bl _Unwind_Resume
.LEHE6:
.LBE150:
	.cfi_endproc
.LFE36:
	.section	.gcc_except_table
.LLSDA36:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE36-.LLSDACSB36
.LLSDACSB36:
	.uleb128 .LEHB5-.LFB36
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L43-.LFB36
	.uleb128 0
	.uleb128 .LEHB6-.LFB36
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE36:
	.section	".text"
	.size	_ZN11fileDataPtrmmEi, .-_ZN11fileDataPtrmmEi
	.align 2
	.globl _ZN11fileDataPtrpLERKi
	.type	_ZN11fileDataPtrpLERKi, @function
_ZN11fileDataPtrpLERKi:
.LFB37:
	.loc 1 256 0
	.cfi_startproc
.LVL83:
	mflr 0
	stwu 1,-16(1)
.LCFI37:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 256 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 257 0
	lis 3,.LC15@ha
.LVL84:
	lwz 4,0(4)
.LVL85:
	la 3,.LC15@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 258 0
	lwz 9,0(31)
	lwz 0,0(30)
	.loc 1 260 0
	mr 3,31
	.loc 1 258 0
	add 0,9,0
	stw 0,0(31)
	.loc 1 260 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL86:
	mtlr 0
	lwz 31,12(1)
.LVL87:
	addi 1,1,16
.LCFI38:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE37:
	.size	_ZN11fileDataPtrpLERKi, .-_ZN11fileDataPtrpLERKi
	.align 2
	.globl _ZN11fileDataPtrmIERKi
	.type	_ZN11fileDataPtrmIERKi, @function
_ZN11fileDataPtrmIERKi:
.LFB38:
	.loc 1 262 0
	.cfi_startproc
.LVL88:
	mflr 0
	stwu 1,-16(1)
.LCFI39:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 262 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 263 0
	lis 3,.LC16@ha
.LVL89:
	lwz 4,0(4)
.LVL90:
	la 3,.LC16@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 264 0
	lwz 9,0(31)
	lwz 0,0(30)
	.loc 1 266 0
	mr 3,31
	.loc 1 264 0
	subf 0,0,9
	stw 0,0(31)
	.loc 1 266 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL91:
	mtlr 0
	lwz 31,12(1)
.LVL92:
	addi 1,1,16
.LCFI40:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE38:
	.size	_ZN11fileDataPtrmIERKi, .-_ZN11fileDataPtrmIERKi
	.align 2
	.globl _ZN11fileDataPtrplERKi
	.type	_ZN11fileDataPtrplERKi, @function
_ZN11fileDataPtrplERKi:
.LFB39:
	.loc 1 268 0
	.cfi_startproc
.LVL93:
	stwu 1,-24(1)
.LCFI41:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
.LBB151:
	.loc 1 269 0
	lwz 4,0(5)
.LVL94:
	lis 3,.LC17@ha
.LVL95:
	la 3,.LC17@l(3)
.LBE151:
	.loc 1 268 0
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 268 0
	mr 30,5
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB152:
	.loc 1 269 0
	crxor 6,6,6
	bl printf
.LVL96:
	.loc 1 270 0
	mr 3,31
	mr 4,29
	bl _ZN11fileDataPtrC1ERS_
	.loc 1 271 0
	lwz 9,0(31)
	lwz 0,0(30)
.LBE152:
	.loc 1 273 0
	mr 3,31
.LBB153:
	.loc 1 271 0
	add 0,9,0
	stw 0,0(31)
.LBE153:
	.loc 1 273 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL97:
	mtlr 0
	lwz 30,16(1)
.LVL98:
	lwz 31,20(1)
.LVL99:
	addi 1,1,24
.LCFI42:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE39:
	.size	_ZN11fileDataPtrplERKi, .-_ZN11fileDataPtrplERKi
	.align 2
	.globl _ZN11fileDataPtrmiERKi
	.type	_ZN11fileDataPtrmiERKi, @function
_ZN11fileDataPtrmiERKi:
.LFB40:
	.loc 1 275 0
	.cfi_startproc
.LVL100:
	stwu 1,-24(1)
.LCFI43:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
.LBB154:
	.loc 1 276 0
	lwz 4,0(5)
.LVL101:
	lis 3,.LC18@ha
.LVL102:
	la 3,.LC18@l(3)
.LBE154:
	.loc 1 275 0
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 275 0
	mr 30,5
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB155:
	.loc 1 276 0
	crxor 6,6,6
	bl printf
.LVL103:
	.loc 1 277 0
	mr 3,31
	mr 4,29
	bl _ZN11fileDataPtrC1ERS_
	.loc 1 278 0
	lwz 9,0(31)
	lwz 0,0(30)
.LBE155:
	.loc 1 281 0
	mr 3,31
.LBB156:
	.loc 1 278 0
	subf 0,0,9
	stw 0,0(31)
.LBE156:
	.loc 1 281 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL104:
	mtlr 0
	lwz 30,16(1)
.LVL105:
	lwz 31,20(1)
.LVL106:
	addi 1,1,24
.LCFI44:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE40:
	.size	_ZN11fileDataPtrmiERKi, .-_ZN11fileDataPtrmiERKi
	.align 2
	.globl _ZN11fileDataPtraSERKi
	.type	_ZN11fileDataPtraSERKi, @function
_ZN11fileDataPtraSERKi:
.LFB41:
	.loc 1 283 0
	.cfi_startproc
.LVL107:
	mflr 0
	stwu 1,-16(1)
.LCFI45:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 283 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 284 0
	lis 3,.LC19@ha
.LVL108:
	lwz 4,0(4)
.LVL109:
	la 3,.LC19@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 285 0
	lwz 0,0(30)
	.loc 1 287 0
	mr 3,31
	.loc 1 285 0
	stw 0,0(31)
	.loc 1 287 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL110:
	mtlr 0
	lwz 31,12(1)
.LVL111:
	addi 1,1,16
.LCFI46:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE41:
	.size	_ZN11fileDataPtraSERKi, .-_ZN11fileDataPtraSERKi
	.align 2
	.globl _ZNK11fileDataPtreqERKi
	.type	_ZNK11fileDataPtreqERKi, @function
_ZNK11fileDataPtreqERKi:
.LFB42:
	.loc 1 290 0
	.cfi_startproc
.LVL112:
	.loc 1 291 0
	lwz 0,0(3)
	.loc 1 292 0
	.loc 1 291 0
	lwz 3,0(4)
.LVL113:
	.loc 1 292 0
	xor 3,0,3
	cntlzw 3,3
	srwi 3,3,5
	blr
	.cfi_endproc
.LFE42:
	.size	_ZNK11fileDataPtreqERKi, .-_ZNK11fileDataPtreqERKi
	.align 2
	.globl _ZNK11fileDataPtrneERKi
	.type	_ZNK11fileDataPtrneERKi, @function
_ZNK11fileDataPtrneERKi:
.LFB43:
	.loc 1 294 0
	.cfi_startproc
.LVL114:
	.loc 1 295 0
	lwz 0,0(3)
	.loc 1 296 0
	.loc 1 295 0
	lwz 9,0(4)
	xor 0,0,9
	cntlzw 0,0
	srwi 0,0,5
	.loc 1 296 0
	xori 3,0,1
.LVL115:
	blr
	.cfi_endproc
.LFE43:
	.size	_ZNK11fileDataPtrneERKi, .-_ZNK11fileDataPtrneERKi
	.align 2
	.globl _ZNK11fileDataPtrltERKi
	.type	_ZNK11fileDataPtrltERKi, @function
_ZNK11fileDataPtrltERKi:
.LFB44:
	.loc 1 298 0
	.cfi_startproc
.LVL116:
	.loc 1 299 0
	lwz 0,0(3)
	.loc 1 300 0
	.loc 1 299 0
	lwz 9,0(4)
	cmpw 7,0,9
	.loc 1 300 0
	mfcr 3
	rlwinm 3,3,29,1
.LVL117:
	blr
	.cfi_endproc
.LFE44:
	.size	_ZNK11fileDataPtrltERKi, .-_ZNK11fileDataPtrltERKi
	.align 2
	.globl _ZNK11fileDataPtrgtERKi
	.type	_ZNK11fileDataPtrgtERKi, @function
_ZNK11fileDataPtrgtERKi:
.LFB45:
	.loc 1 302 0
	.cfi_startproc
.LVL118:
	.loc 1 303 0
	lwz 0,0(3)
	.loc 1 304 0
	.loc 1 303 0
	lwz 9,0(4)
	cmpw 7,0,9
	.loc 1 304 0
	mfcr 3
	rlwinm 3,3,30,1
.LVL119:
	blr
	.cfi_endproc
.LFE45:
	.size	_ZNK11fileDataPtrgtERKi, .-_ZNK11fileDataPtrgtERKi
	.align 2
	.globl _ZNK11fileDataPtrleERKi
	.type	_ZNK11fileDataPtrleERKi, @function
_ZNK11fileDataPtrleERKi:
.LFB46:
	.loc 1 306 0
	.cfi_startproc
.LVL120:
	.loc 1 307 0
	lwz 0,0(3)
	.loc 1 308 0
	.loc 1 307 0
	lwz 9,0(4)
	cmpw 7,0,9
	crnot 30,29
	.loc 1 308 0
	mfcr 3
	rlwinm 3,3,31,1
.LVL121:
	blr
	.cfi_endproc
.LFE46:
	.size	_ZNK11fileDataPtrleERKi, .-_ZNK11fileDataPtrleERKi
	.align 2
	.globl _ZNK11fileDataPtrgeERKi
	.type	_ZNK11fileDataPtrgeERKi, @function
_ZNK11fileDataPtrgeERKi:
.LFB47:
	.loc 1 310 0
	.cfi_startproc
.LVL122:
	.loc 1 311 0
	lwz 0,0(3)
	.loc 1 312 0
	.loc 1 311 0
	lwz 9,0(4)
	cmpw 7,0,9
	crnot 30,28
	.loc 1 312 0
	mfcr 3
	rlwinm 3,3,31,1
.LVL123:
	blr
	.cfi_endproc
.LFE47:
	.size	_ZNK11fileDataPtrgeERKi, .-_ZNK11fileDataPtrgeERKi
	.align 2
	.globl _Z9backtracePPvi
	.type	_Z9backtracePPvi, @function
_Z9backtracePPvi:
.LFB57:
	.loc 1 400 0
	.cfi_startproc
.LVL124:
	stwu 1,-24(1)
.LCFI47:
	.cfi_def_cfa_offset 24
.LBB157:
	.loc 1 404 0
 # 404 "d:/Data/Nintendo/DoomGXSchratch/src/operators.cpp" 1
	mflr 9
 # 0 "" 2
.LVL125:
	.loc 1 406 0
	addi 0,9,-4
	.loc 1 408 0
	addi 9,1,8
.LVL126:
	.loc 1 406 0
	stw 0,0(3)
	.loc 1 408 0
 # 408 "d:/Data/Nintendo/DoomGXSchratch/src/operators.cpp" 1
	stw %sp, 0(9)
 # 0 "" 2
.LVL127:
	.loc 1 410 0
	lwz 11,8(1)
.LVL128:
	.loc 1 412 0
	lwz 0,0(11)
.LVL129:
	cmpwi 7,0,0
	beq- 7,.L57
.LVL130:
	.loc 1 416 0
	mr 11,0
.LVL131:
	.loc 1 417 0
	lwz 0,0(11)
	cmpwi 7,0,0
	bne- 7,.L64
.LVL132:
.L57:
.LBB158:
	.loc 1 421 0 discriminator 1
	cmpwi 7,4,1
	li 10,1
	ble- 7,.L58
	.loc 1 421 0 is_stmt 0
	lwz 9,0(11)
	addi 4,4,-1
.LVL133:
	mtctr 4
	cmpwi 7,9,0
	beq- 7,.L58
.LVL134:
.L59:
.LBB159:
	.loc 1 423 0 is_stmt 1 discriminator 5
	lwz 11,4(11)
	.loc 1 422 0 discriminator 5
	mr 0,9
.LBE159:
	.loc 1 421 0 discriminator 5
	addi 10,10,1
.LBB160:
	.loc 1 423 0 discriminator 5
	addi 11,11,-4
	stwu 11,4(3)
.LVL135:
.LBE160:
	.loc 1 421 0 discriminator 5
	bdnz .L60
.LVL136:
.L58:
.LBE158:
.LBE157:
	.loc 1 428 0
	mr 3,10
	addi 1,1,24
	.cfi_remember_state
.LCFI48:
	.cfi_def_cfa_offset 0
	blr
.LVL137:
.L60:
.LCFI49:
	.cfi_restore_state
.LBB162:
.LBB161:
	.loc 1 421 0 discriminator 2
	lwz 9,0(9)
	mr 11,0
	cmpwi 7,9,0
	bne- 7,.L59
.LBE161:
.LBE162:
	.loc 1 428 0
	mr 3,10
	addi 1,1,24
	.cfi_remember_state
.LCFI50:
	.cfi_def_cfa_offset 0
	blr
.LVL138:
.L64:
.LCFI51:
	.cfi_restore_state
.LBB163:
	.loc 1 418 0
	mr 11,0
.LVL139:
	b .L57
.LBE163:
	.cfi_endproc
.LFE57:
	.size	_Z9backtracePPvi, .-_Z9backtracePPvi
	.align 2
	.globl _Z4testv
	.type	_Z4testv, @function
_Z4testv:
.LFB56:
	.loc 1 392 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA56
	mflr 0
	stwu 1,-336(1)
.LCFI52:
	.cfi_def_cfa_offset 336
	.cfi_register 65, 0
.LVL140:
.LBB204:
.LBB205:
.LBB206:
.LBB207:
.LBB208:
	.loc 1 95 0
	lis 9,0x7fff
.LBE208:
.LBE207:
.LBB214:
	.loc 1 320 0
	lis 4,.LC4@ha
.LBE214:
.LBB219:
.LBB209:
	.loc 1 95 0
	ori 9,9,65535
.LBE209:
.LBE219:
.LBB220:
	.loc 1 320 0
	li 3,128
.LBE220:
.LBE206:
.LBE205:
.LBE204:
	.loc 1 392 0
	stw 0,340(1)
.LBB291:
.LBB231:
.LBB228:
.LBB221:
.LBB210:
	.loc 1 97 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 95 0
	stw 9,196(1)
.LBE210:
.LBE221:
.LBB222:
	.loc 1 320 0
	la 4,.LC4@l(4)
.LBE222:
.LBB223:
.LBB211:
	.loc 1 96 0
	lis 9,0x8000
	.loc 1 97 0
	stw 0,184(1)
	.loc 1 98 0
	stb 0,204(1)
.LBE211:
.LBE223:
.LBB224:
	.loc 1 320 0
	li 5,320
.LBE224:
.LBB225:
.LBB212:
	.loc 1 99 0
	li 0,1
.LBE212:
.LBE225:
.LBE228:
.LBE231:
.LBE291:
	.loc 1 392 0
	stfd 31,328(1)
	stw 26,304(1)
	stw 27,308(1)
	stw 28,312(1)
	stw 29,316(1)
	stw 30,320(1)
	stw 31,324(1)
.LBB292:
.LBB232:
.LBB229:
.LBB226:
.LBB213:
	.loc 1 96 0
	stw 9,200(1)
	.loc 1 99 0
	stb 0,205(1)
.LEHB7:
.LBE213:
.LBE226:
.LBB227:
	.loc 1 320 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 63, -8
	bl _ZnajPKci
.LBB215:
	.loc 1 322 0
	lis 11,.LC6@ha
	lis 30,.LC7@ha
.LBE215:
	.loc 1 320 0
	mr 9,3
	stw 3,208(1)
.LVL141:
.LBB216:
	.loc 1 322 0
	lfs 31,.LC6@l(11)
.LBE216:
	.loc 1 321 0
	li 31,0
	la 30,.LC7@l(30)
.LBB217:
	.loc 1 322 0
	lis 29,0x4330
	b .L67
.LVL142:
.L109:
	.loc 1 321 0
	lwz 9,208(1)
.LVL143:
.L67:
	.loc 1 322 0
	xoris 0,31,0x8000
	stw 29,296(1)
	stw 0,300(1)
.LBE217:
	.loc 1 392 0
	slwi 0,31,2
.LBB218:
	.loc 1 323 0
	mr 3,30
	.loc 1 322 0
	lfd 0,296(1)
	fsub 0,0,31
	frsp 0,0
	stfsx 0,9,0
	.loc 1 323 0
	lwz 9,208(1)
	lfsx 1,9,0
	creqv 6,6,6
	bl printf
.LEHE7:
.LVL144:
	.loc 1 321 0
	cmpwi 7,31,31
	addi 31,31,1
.LVL145:
	bne+ 7,.L109
.LVL146:
.LBE218:
.LBE227:
.LBE229:
.LBE232:
.LBB233:
.LBB234:
	.loc 1 330 0
	addi 26,1,244
	lis 4,.LC20@ha
	la 4,.LC20@l(4)
	li 5,42
	mr 3,26
	bl memcpy
.LVL147:
	.loc 1 334 0
	addi 3,1,212
	li 4,8
	bl _Z9backtracePPvi
.LVL148:
.LBB235:
	.loc 1 335 0
	mr. 28,3
	ble- 0,.L69
	lis 27,.LC21@ha
	addi 29,1,208
	li 30,0
	la 27,.LC21@l(27)
.LVL149:
.L70:
	.loc 1 336 0
	lwzu 5,4(29)
	mr 3,27
	mr 4,30
	addi 31,1,184
.LEHB8:
	crxor 6,6,6
	bl printf
	.loc 1 335 0
	addi 30,30,1
.LVL150:
	cmpw 7,30,28
	bne+ 7,.L70
.LVL151:
.L69:
.LBE235:
	.loc 1 339 0
	lis 27,.LC22@ha
	li 4,0
	la 27,.LC22@l(27)
	addi 31,1,184
	mr 3,27
	crxor 6,6,6
	bl printf
.LVL152:
.LBB236:
.LBB237:
	.loc 1 181 0
	li 0,0
.LBE237:
.LBE236:
.LBB240:
	.loc 1 347 0
	lis 29,.LC24@ha
.LBE240:
.LBB241:
.LBB238:
	.loc 1 181 0
	stw 0,196(1)
	.loc 1 182 0
	li 0,42
	stw 0,200(1)
.LBE238:
.LBE241:
.LBB242:
	.loc 1 345 0
	lis 28,.LC23@ha
.LVL153:
.LBE242:
.LBB243:
.LBB239:
	.loc 1 183 0
	li 0,1
	.loc 1 180 0
	stw 26,188(1)
	.loc 1 183 0
	stb 0,204(1)
	addi 31,1,184
.LBE239:
.LBE243:
.LBB244:
	.loc 1 347 0
	la 29,.LC24@l(29)
	.loc 1 345 0
	la 28,.LC23@l(28)
	b .L71
.LVL154:
.L111:
	mr 3,28
	bl puts
.L73:
	.loc 1 349 0
	addi 3,1,40
	mr 4,31
	li 5,0
	bl _ZN11fileDataPtrppEi
	addi 3,1,40
	bl _ZN11fileDataPtrD1Ev
.LVL155:
.L71:
.LBE244:
	.loc 1 342 0
	mr 3,31
	bl _ZN11fileDataPtrdeEv
	lbz 0,0(3)
	cmplwi 7,0,31
	ble- 7,.L110
.LBB245:
	.loc 1 343 0
	mr 3,31
	bl _ZN11fileDataPtrdeEv
	lbz 30,0(3)
.LVL156:
	.loc 1 344 0
	mr 3,31
	bl _ZN11fileDataPtrdeEv
	lbz 0,0(3)
	cmplwi 7,0,32
	ble- 7,.L111
	.loc 1 347 0
	mr 3,29
	mr 4,30
	crxor 6,6,6
	bl printf
	b .L73
.LVL157:
.L110:
.LBE245:
	.loc 1 351 0
	mr 4,1
	li 0,4
	stwu 0,8(4)
	mr 3,31
	bl _ZN11fileDataPtraSERKi
.LVL158:
	.loc 1 352 0
	mr 3,27
	li 4,1
	crxor 6,6,6
	bl printf
	.loc 1 353 0
	li 0,0
	addi 3,1,64
	mr 4,31
	addi 5,1,12
	stw 0,12(1)
	bl _ZN11fileDataPtrplERKi
.LEHE8:
	addi 3,1,64
.LEHB9:
	bl _ZN11fileDataPtrdeEv
	lis 29,.LC24@ha
	lbz 4,0(3)
	la 29,.LC24@l(29)
	mr 3,29
	crxor 6,6,6
	bl printf
.LEHE9:
	addi 3,1,64
.LEHB10:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 354 0
	li 0,1
	addi 3,1,88
	mr 4,31
	addi 5,1,16
	stw 0,16(1)
	bl _ZN11fileDataPtrplERKi
.LEHE10:
	addi 3,1,88
.LEHB11:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,29
	crxor 6,6,6
	bl printf
.LEHE11:
	addi 3,1,88
.LEHB12:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 355 0
	li 0,2
	addi 3,1,112
	mr 4,31
	addi 5,1,20
	stw 0,20(1)
	bl _ZN11fileDataPtrplERKi
.LEHE12:
	addi 3,1,112
.LEHB13:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,29
	crxor 6,6,6
	bl printf
.LEHE13:
	addi 3,1,112
.LEHB14:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 356 0
	li 0,3
	addi 3,1,136
	mr 4,31
	addi 5,1,24
	stw 0,24(1)
	bl _ZN11fileDataPtrplERKi
.LEHE14:
	addi 3,1,136
.LEHB15:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,29
	crxor 6,6,6
	bl printf
.LEHE15:
	addi 3,1,136
.LEHB16:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 357 0
	mr 4,1
	li 0,1
	stwu 0,28(4)
	mr 3,31
	bl _ZN11fileDataPtrpLERKi
	.loc 1 358 0
	li 0,3
	addi 3,1,160
	mr 4,31
	addi 5,1,32
	stw 0,32(1)
	bl _ZN11fileDataPtrplERKi
.LEHE16:
	addi 3,1,160
.LEHB17:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,29
	crxor 6,6,6
	bl printf
.LEHE17:
	addi 3,1,160
.LEHB18:
	bl _ZN11fileDataPtrD1Ev
.LVL159:
	.loc 1 360 0
	mr 3,27
	li 4,2
	crxor 6,6,6
	bl printf
	.loc 1 361 0
	mr 4,1
	li 0,0
	stwu 0,36(4)
	mr 3,31
	bl _ZN11fileDataPtraSERKi
	.loc 1 362 0
	mr 3,31
	bl _ZN11fileDataPtrppEv
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,29
	crxor 6,6,6
	bl printf
	.loc 1 363 0
	mr 3,31
	bl _ZN11fileDataPtrppEv
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,29
	crxor 6,6,6
	bl printf
	.loc 1 364 0
	mr 3,31
	bl _ZN11fileDataPtrcvKiEv
	mr 4,3
.LVL160:
	.loc 1 365 0
	lis 3,.LC25@ha
.LVL161:
	la 3,.LC25@l(3)
	crxor 6,6,6
	bl printf
.LVL162:
.LBB246:
	.loc 1 370 0
	lis 28,.LC23@ha
.LBE246:
	.loc 1 365 0
	li 30,0
.LBB258:
	.loc 1 370 0
	la 28,.LC23@l(28)
.L75:
.LVL163:
.LBE258:
.LBB259:
.LBB260:
	.loc 1 214 0
	lwz 7,184(1)
.LBB261:
	.loc 1 215 0
	lwz 9,196(1)
.LBE261:
	.loc 1 214 0
	add 0,30,7
.LVL164:
.LBB263:
	.loc 1 215 0
	cmpw 7,0,9
	blt- 7,.L80
	lwz 11,200(1)
	subf 10,9,0
	cmpw 7,0,11
	ble- 7,.L81
.L80:
.LVL165:
.LBB262:
	.loc 1 222 0
	stw 0,196(1)
	.loc 1 214 0
	mr 9,0
	.loc 1 223 0
	stw 0,200(1)
	li 10,0
.LVL166:
.L81:
.LBE262:
.LBE263:
	.loc 1 226 0
	lwz 11,188(1)
.LBE260:
.LBE259:
	.loc 1 367 0
	lbzx 4,11,10
	cmplwi 7,4,31
	ble- 7,.L112
.LVL167:
.LBB264:
.LBB247:
.LBB248:
.LBB249:
	.loc 1 215 0
	cmpw 7,0,9
	blt- 7,.L76
	lwz 9,200(1)
	cmpw 7,9,0
	blt- 7,.L76
.LBE249:
.LBE248:
.LBE247:
	.loc 1 368 0
	lwz 9,196(1)
.LBB253:
.LBB254:
	.loc 1 226 0
	subf 0,9,0
.LVL168:
.LBE254:
.LBE253:
	.loc 1 369 0
	lbzx 0,11,0
	cmplwi 7,0,32
	bgt- 7,.L78
.L113:
	.loc 1 370 0
	mr 3,28
	bl puts
	.loc 1 374 0
	addi 30,30,1
.LVL169:
	b .L75
.LVL170:
.L76:
.LBB256:
.LBB252:
.LBB251:
.LBB250:
	.loc 1 222 0
	stw 0,196(1)
	.loc 1 223 0
	stw 0,200(1)
.LBE250:
.LBE251:
.LBE252:
.LBE256:
	.loc 1 368 0
	lwz 9,196(1)
	lbz 4,0(11)
.LVL171:
.LBB257:
.LBB255:
	.loc 1 226 0
	subf 0,9,0
.LVL172:
.LBE255:
.LBE257:
	.loc 1 369 0
	lbzx 0,11,0
	cmplwi 7,0,32
	ble- 7,.L113
.LVL173:
.L78:
	.loc 1 372 0
	mr 3,29
	crxor 6,6,6
	bl printf
	.loc 1 374 0
	addi 30,30,1
.LVL174:
	b .L75
.LVL175:
.L112:
.LBE264:
	.loc 1 367 0
	lis 10,.LC26@ha
	.loc 1 383 0
	li 8,100
	.loc 1 367 0
	la 10,.LC26@l(10)
	subf 7,10,7
	b .L86
.LVL176:
.L115:
.LBB265:
.LBB266:
.LBB267:
.LBB268:
.LBB269:
	.loc 1 215 0
	lwz 6,200(1)
	cmpw 7,0,6
	bgt- 7,.L83
	subf 0,9,0
.LVL177:
.LBE269:
.LBE268:
.LBE267:
	.loc 1 384 0
	lbzx 0,11,0
	cmpw 7,0,8
	bne- 7,.L97
.L116:
	.loc 1 383 0
	lbzu 8,1(10)
	cmpwi 7,8,0
	beq- 7,.L114
.LVL178:
.L86:
.LBE266:
.LBE265:
	.loc 1 392 0
	add 0,7,10
.LVL179:
.LBB276:
.LBB274:
.LBB273:
.LBB272:
.LBB271:
	.loc 1 215 0
	cmpw 7,0,9
	bge- 7,.L115
.L83:
.LVL180:
.LBB270:
	.loc 1 222 0
	stw 0,196(1)
	.loc 1 214 0
	mr 9,0
	.loc 1 223 0
	stw 0,200(1)
	li 0,0
.LVL181:
.LBE270:
.LBE271:
.LBE272:
.LBE273:
	.loc 1 384 0
	lbzx 0,11,0
	cmpw 7,0,8
	beq+ 7,.L116
.LVL182:
.L97:
	.loc 1 385 0
	li 4,0
.L85:
.LBE274:
.LBE276:
	.loc 1 377 0
	lis 3,.LC27@ha
	la 3,.LC27@l(3)
	crxor 6,6,6
	bl printf
.LEHE18:
.LVL183:
.LBE234:
.LBE233:
.LBB281:
.LBB282:
.LBB283:
	.loc 1 326 0
	mr 3,31
.LEHB19:
	bl _ZN11fileDataPtrD1Ev
.LEHE19:
.LBE283:
.LBE282:
.LBE281:
.LBE292:
	.loc 1 396 0
	lwz 0,340(1)
	lwz 26,304(1)
.LVL184:
	mtlr 0
	lwz 27,308(1)
	lwz 28,312(1)
	lwz 29,316(1)
	lwz 30,320(1)
.LVL185:
	lwz 31,324(1)
	lfd 31,328(1)
	addi 1,1,336
	.cfi_remember_state
.LCFI53:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL186:
.L114:
.LCFI54:
	.cfi_restore_state
.LBB293:
.LBB284:
.LBB278:
.LBB277:
.LBB275:
	.loc 1 388 0
	li 4,1
	b .L85
.LVL187:
.L99:
	mr 31,3
.LBE275:
.LBE277:
.LBE278:
.LBE284:
.LBB285:
.LBB230:
	.loc 1 319 0
	addi 3,1,184
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB20:
	bl _Unwind_Resume
.LEHE20:
.LVL188:
.L104:
	mr 30,3
.LBE230:
.LBE285:
.LBB286:
.LBB279:
	.loc 1 353 0
	addi 3,1,64
	bl _ZN11fileDataPtrD1Ev
.LVL189:
.L89:
.LBE279:
.LBE286:
.LBB287:
.LBB288:
.LBB289:
	.loc 1 326 0
	mr 3,31
	bl _ZN11fileDataPtrD1Ev
	mr 3,30
.LEHB21:
	bl _Unwind_Resume
.LEHE21:
.LVL190:
.L98:
	mr 30,3
	b .L89
.LVL191:
.L100:
	mr 30,3
.LBE289:
.LBE288:
.LBE287:
.LBB290:
.LBB280:
	.loc 1 358 0
	addi 3,1,160
	bl _ZN11fileDataPtrD1Ev
	b .L89
.L101:
	mr 30,3
	.loc 1 356 0
	addi 3,1,136
	bl _ZN11fileDataPtrD1Ev
	b .L89
.L102:
	mr 30,3
	.loc 1 355 0
	addi 3,1,112
	bl _ZN11fileDataPtrD1Ev
	b .L89
.L103:
	mr 30,3
	.loc 1 354 0
	addi 3,1,88
	bl _ZN11fileDataPtrD1Ev
	b .L89
.LBE280:
.LBE290:
.LBE293:
	.cfi_endproc
.LFE56:
	.section	.gcc_except_table
.LLSDA56:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE56-.LLSDACSB56
.LLSDACSB56:
	.uleb128 .LEHB7-.LFB56
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L99-.LFB56
	.uleb128 0
	.uleb128 .LEHB8-.LFB56
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L98-.LFB56
	.uleb128 0
	.uleb128 .LEHB9-.LFB56
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L104-.LFB56
	.uleb128 0
	.uleb128 .LEHB10-.LFB56
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L98-.LFB56
	.uleb128 0
	.uleb128 .LEHB11-.LFB56
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L103-.LFB56
	.uleb128 0
	.uleb128 .LEHB12-.LFB56
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L98-.LFB56
	.uleb128 0
	.uleb128 .LEHB13-.LFB56
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L102-.LFB56
	.uleb128 0
	.uleb128 .LEHB14-.LFB56
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L98-.LFB56
	.uleb128 0
	.uleb128 .LEHB15-.LFB56
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L101-.LFB56
	.uleb128 0
	.uleb128 .LEHB16-.LFB56
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L98-.LFB56
	.uleb128 0
	.uleb128 .LEHB17-.LFB56
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L100-.LFB56
	.uleb128 0
	.uleb128 .LEHB18-.LFB56
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L98-.LFB56
	.uleb128 0
	.uleb128 .LEHB19-.LFB56
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB56
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB56
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE56:
	.section	".text"
	.size	_Z4testv, .-_Z4testv
	.align 2
	.globl _Z6__mainiPPc
	.type	_Z6__mainiPPc, @function
_Z6__mainiPPc:
.LFB58:
	.loc 1 430 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA58
.LVL192:
	stwu 1,-568(1)
.LCFI55:
	.cfi_def_cfa_offset 568
	mflr 0
.LBB365:
	.loc 1 435 0
	lis 3,.LC28@ha
.LVL193:
.LBE365:
	.loc 1 430 0
	stw 31,556(1)
.LBB526:
	.loc 1 433 0
	addi 31,1,72
	.cfi_offset 31, -12
	.cfi_register 65, 0
.LVL194:
	.loc 1 435 0
	mr 4,31
.LVL195:
	la 3,.LC28@l(3)
.LBE526:
	.loc 1 430 0
	stw 0,572(1)
	stfd 31,560(1)
	stw 14,488(1)
	stw 15,492(1)
	stw 16,496(1)
	stw 17,500(1)
	stw 18,504(1)
	stw 19,508(1)
	stw 20,512(1)
	stw 21,516(1)
	stw 22,520(1)
	stw 23,524(1)
	stw 24,528(1)
	stw 25,532(1)
	stw 26,536(1)
	stw 27,540(1)
	stw 28,544(1)
	stw 29,548(1)
	stw 30,552(1)
.LEHB22:
.LBB527:
	.loc 1 435 0
	.cfi_offset 30, -16
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
	.cfi_offset 18, -64
	.cfi_offset 17, -68
	.cfi_offset 16, -72
	.cfi_offset 15, -76
	.cfi_offset 14, -80
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	crxor 6,6,6
	bl printf
	.loc 1 436 0
 # 436 "d:/Data/Nintendo/DoomGXSchratch/src/operators.cpp" 1
	stw %sp, 0(31)
 # 0 "" 2
	.loc 1 438 0
	lis 9,.LC32@ha
.LVL196:
	lwz 4,72(1)
	lwz 3,.LC32@l(9)
	crxor 6,6,6
	bl printf
	.loc 1 441 0
	addi 3,1,396
	li 4,8
	bl _Z9backtracePPvi
.LVL197:
.LBB366:
	.loc 1 442 0
	mr. 29,3
	ble- 0,.L118
	lis 26,.LC21@ha
	.loc 1 442 0 is_stmt 0 discriminator 2
	addi 30,1,392
	li 31,0
.LVL198:
	la 26,.LC21@l(26)
.LVL199:
.L119:
	.loc 1 443 0 is_stmt 1 discriminator 2
	lwzu 5,4(30)
	mr 4,31
	mr 3,26
	.loc 1 442 0 discriminator 2
	addi 31,31,1
	.loc 1 443 0 discriminator 2
	crxor 6,6,6
	bl printf
.LVL200:
	.loc 1 442 0 discriminator 2
	cmpw 7,31,29
	bne+ 7,.L119
.LVL201:
.L118:
.LBE366:
	.loc 1 448 0
	lis 30,.LC30@ha
	.loc 1 449 0
	lis 24,.LC4@ha
	.loc 1 448 0
	la 30,.LC30@l(30)
	.loc 1 447 0
	bl _Z4testv
	.loc 1 449 0
	la 24,.LC4@l(24)
	.loc 1 448 0
	mr 3,30
	bl puts
	.loc 1 449 0
	mr 4,24
	li 5,449
	li 3,28
	bl _ZnwjPKci
.LEHE22:
.LBB367:
.LBB368:
.LBB369:
.LBB370:
	.loc 1 95 0
	lis 9,0x7fff
	.loc 1 97 0
	li 0,0
	.loc 1 95 0
	ori 9,9,65535
	stw 9,12(3)
	.loc 1 96 0
	lis 9,0x8000
	.loc 1 97 0
	stw 0,0(3)
.LBE370:
.LBE369:
.LBE368:
.LBE367:
	.loc 1 449 0
	mr 31,3
.LVL202:
.LBB381:
.LBB379:
.LBB373:
.LBB371:
	.loc 1 98 0
	stb 0,20(3)
	.loc 1 99 0
	li 0,1
	.loc 1 96 0
	stw 9,16(3)
.LBE371:
.LBE373:
.LBB374:
	.loc 1 320 0
	mr 4,24
.LBE374:
.LBB377:
.LBB372:
	.loc 1 99 0
	stb 0,21(3)
.LBE372:
.LBE377:
.LBB378:
	.loc 1 320 0
	li 5,320
	li 3,128
.LVL203:
.LEHB23:
	bl _ZnajPKci
	lis 21,.LC6@ha
	lis 29,.LC7@ha
.LVL204:
	la 21,.LC6@l(21)
	mr 9,3
	stw 3,24(31)
.LVL205:
	.loc 1 321 0
	li 28,0
.LBB375:
	.loc 1 322 0
	lfs 31,0(21)
	la 29,.LC7@l(29)
	lis 27,0x4330
	b .L121
.LVL206:
.L198:
	.loc 1 321 0
	lwz 9,24(31)
.LVL207:
.L121:
	.loc 1 322 0
	xoris 0,28,0x8000
	stw 27,472(1)
	stw 0,476(1)
.LBE375:
	.loc 1 430 0
	slwi 0,28,2
.LBB376:
	.loc 1 323 0
	mr 3,29
	.loc 1 322 0
	lfd 0,472(1)
	fsub 0,0,31
	frsp 0,0
	stfsx 0,9,0
	.loc 1 323 0
	lwz 9,24(31)
	lfsx 1,9,0
	creqv 6,6,6
	bl printf
.LEHE23:
.LVL208:
	.loc 1 321 0
	cmpwi 7,28,31
	addi 28,28,1
.LVL209:
	bne+ 7,.L198
.LVL210:
.LBE376:
.LBE378:
.LBE379:
.LBE381:
.LBB382:
.LBB383:
	.loc 1 330 0
	lis 15,.LC20@ha
.LBE383:
.LBE382:
	.loc 1 450 0
	mr 3,30
.LBB433:
.LBB426:
	.loc 1 330 0
	la 15,.LC20@l(15)
	addi 22,1,428
.LEHB24:
.LBE426:
.LBE433:
	.loc 1 450 0
	bl puts
.LVL211:
.LBB434:
.LBB427:
	.loc 1 330 0
	mr 4,15
	li 5,42
	mr 3,22
	bl memcpy
.LVL212:
	.loc 1 334 0
	addi 3,1,364
	li 4,8
	bl _Z9backtracePPvi
.LVL213:
.LBB384:
	.loc 1 335 0
	mr. 25,3
	ble- 0,.L123
	lis 26,.LC21@ha
	addi 27,1,360
	li 28,0
.LVL214:
	la 26,.LC21@l(26)
.LVL215:
.L124:
	.loc 1 336 0
	lwzu 5,4(27)
	mr 4,28
	mr 3,26
	.loc 1 335 0
	addi 28,28,1
	.loc 1 336 0
	crxor 6,6,6
	bl printf
.LVL216:
	.loc 1 335 0
	cmpw 7,28,25
	bne+ 7,.L124
.LVL217:
.L123:
.LBE384:
	.loc 1 339 0
	lis 25,.LC22@ha
.LVL218:
	li 4,0
	la 25,.LC22@l(25)
.LBB385:
	.loc 1 347 0
	lis 27,.LC24@ha
.LBE385:
	.loc 1 339 0
	mr 3,25
.LBB386:
	.loc 1 345 0
	lis 28,.LC23@ha
.LBE386:
	.loc 1 339 0
	crxor 6,6,6
	bl printf
.LVL219:
.LBB387:
.LBB388:
	.loc 1 181 0
	li 0,0
	stw 0,12(31)
	.loc 1 182 0
	li 0,42
	stw 0,16(31)
	.loc 1 183 0
	li 0,1
	.loc 1 180 0
	stw 22,4(31)
.LBE388:
.LBE387:
.LBB390:
	.loc 1 347 0
	la 27,.LC24@l(27)
.LBE390:
.LBB391:
.LBB389:
	.loc 1 183 0
	stb 0,20(31)
.LBE389:
.LBE391:
.LBB392:
	.loc 1 345 0
	la 28,.LC23@l(28)
	b .L125
.LVL220:
.L200:
	mr 3,28
	bl puts
.L127:
	.loc 1 349 0
	addi 3,1,220
	mr 4,31
	li 5,0
	bl _ZN11fileDataPtrppEi
	addi 3,1,220
	bl _ZN11fileDataPtrD1Ev
.LVL221:
.L125:
.LBE392:
	.loc 1 342 0
	mr 3,31
	bl _ZN11fileDataPtrdeEv
	lbz 0,0(3)
	cmplwi 7,0,31
	ble- 7,.L199
.LBB393:
	.loc 1 343 0
	mr 3,31
	bl _ZN11fileDataPtrdeEv
	lbz 26,0(3)
.LVL222:
	.loc 1 344 0
	mr 3,31
	bl _ZN11fileDataPtrdeEv
	lbz 0,0(3)
	cmplwi 7,0,32
	ble- 7,.L200
	.loc 1 347 0
	mr 3,27
	mr 4,26
	crxor 6,6,6
	bl printf
	b .L127
.LVL223:
.L199:
.LBE393:
	.loc 1 351 0
	li 0,4
	mr 4,1
	stwu 0,40(4)
	mr 3,31
	bl _ZN11fileDataPtraSERKi
.LVL224:
	.loc 1 352 0
	li 4,1
	mr 3,25
	crxor 6,6,6
	bl printf
	.loc 1 353 0
	addi 3,1,244
	li 0,0
	mr 4,31
	addi 5,1,44
	stw 0,44(1)
	bl _ZN11fileDataPtrplERKi
.LEHE24:
	addi 3,1,244
.LEHB25:
	bl _ZN11fileDataPtrdeEv
	lis 27,.LC24@ha
	lbz 4,0(3)
	la 27,.LC24@l(27)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE25:
	addi 3,1,244
.LEHB26:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 354 0
	addi 3,1,268
	li 0,1
	mr 4,31
	addi 5,1,48
	stw 0,48(1)
	bl _ZN11fileDataPtrplERKi
.LEHE26:
	addi 3,1,268
.LEHB27:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE27:
	addi 3,1,268
.LEHB28:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 355 0
	addi 3,1,292
	li 0,2
	mr 4,31
	addi 5,1,52
	stw 0,52(1)
	bl _ZN11fileDataPtrplERKi
.LEHE28:
	addi 3,1,292
.LEHB29:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE29:
	addi 3,1,292
.LEHB30:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 356 0
	addi 3,1,316
	li 0,3
	mr 4,31
	addi 5,1,56
	stw 0,56(1)
	bl _ZN11fileDataPtrplERKi
.LEHE30:
	addi 3,1,316
.LEHB31:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE31:
	addi 3,1,316
.LEHB32:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 357 0
	mr 4,1
	li 0,1
	mr 3,31
	stwu 0,60(4)
	bl _ZN11fileDataPtrpLERKi
	.loc 1 358 0
	addi 3,1,340
	li 0,3
	mr 4,31
	addi 5,1,64
	stw 0,64(1)
	bl _ZN11fileDataPtrplERKi
.LEHE32:
	addi 3,1,340
.LEHB33:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE33:
	addi 3,1,340
	.loc 1 365 0
	lis 14,.LC25@ha
.LEHB34:
	.loc 1 358 0
	bl _ZN11fileDataPtrD1Ev
.LVL225:
	.loc 1 360 0
	li 4,2
	mr 3,25
	.loc 1 365 0
	la 14,.LC25@l(14)
	.loc 1 360 0
	crxor 6,6,6
	bl printf
	.loc 1 361 0
	li 0,0
	mr 4,1
	mr 3,31
	stwu 0,68(4)
.LBB394:
	.loc 1 370 0
	lis 26,.LC23@ha
.LBE394:
	.loc 1 366 0
	li 28,0
.LBB406:
	.loc 1 370 0
	la 26,.LC23@l(26)
.LBE406:
	.loc 1 361 0
	bl _ZN11fileDataPtraSERKi
	.loc 1 362 0
	mr 3,31
	bl _ZN11fileDataPtrppEv
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
	.loc 1 363 0
	mr 3,31
	bl _ZN11fileDataPtrppEv
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
	.loc 1 364 0
	mr 3,31
	bl _ZN11fileDataPtrcvKiEv
	mr 4,3
.LVL226:
	.loc 1 365 0
	mr 3,14
.LVL227:
	crxor 6,6,6
	bl printf
.LVL228:
.L129:
.LBB407:
.LBB408:
	.loc 1 214 0
	lwz 7,0(31)
.LBB409:
	.loc 1 215 0
	lwz 9,12(31)
.LBE409:
	.loc 1 214 0
	add 0,28,7
.LVL229:
.LBB411:
	.loc 1 215 0
	cmpw 7,0,9
	blt- 7,.L134
	lwz 11,16(31)
	subf 10,9,0
	cmpw 7,0,11
	ble- 7,.L135
.L134:
.LVL230:
.LBB410:
	.loc 1 222 0
	stw 0,12(31)
	.loc 1 214 0
	mr 9,0
	.loc 1 223 0
	stw 0,16(31)
	li 10,0
.LVL231:
.L135:
.LBE410:
.LBE411:
	.loc 1 226 0
	lwz 11,4(31)
.LBE408:
.LBE407:
	.loc 1 367 0
	lbzx 4,11,10
	cmplwi 7,4,31
	ble- 7,.L201
.LVL232:
.LBB412:
.LBB395:
.LBB396:
.LBB397:
	.loc 1 215 0
	cmpw 7,0,9
	blt- 7,.L130
	lwz 9,16(31)
	cmpw 7,9,0
	blt- 7,.L130
.LBE397:
.LBE396:
.LBE395:
	.loc 1 368 0
	lwz 9,12(31)
.LBB401:
.LBB402:
	.loc 1 226 0
	subf 0,9,0
.LVL233:
.LBE402:
.LBE401:
	.loc 1 369 0
	lbzx 0,11,0
	cmplwi 7,0,32
	bgt- 7,.L132
.L202:
	.loc 1 370 0
	mr 3,26
	.loc 1 374 0
	addi 28,28,1
.LVL234:
	.loc 1 370 0
	bl puts
.LVL235:
	b .L129
.LVL236:
.L130:
.LBB404:
.LBB400:
.LBB399:
.LBB398:
	.loc 1 222 0
	stw 0,12(31)
	.loc 1 223 0
	stw 0,16(31)
.LBE398:
.LBE399:
.LBE400:
.LBE404:
	.loc 1 368 0
	lwz 9,12(31)
	lbz 4,0(11)
.LVL237:
.LBB405:
.LBB403:
	.loc 1 226 0
	subf 0,9,0
.LVL238:
.LBE403:
.LBE405:
	.loc 1 369 0
	lbzx 0,11,0
	cmplwi 7,0,32
	ble- 7,.L202
.LVL239:
.L132:
	.loc 1 372 0
	mr 3,27
	.loc 1 374 0
	addi 28,28,1
.LVL240:
	.loc 1 372 0
	crxor 6,6,6
	bl printf
.LVL241:
	b .L129
.LVL242:
.L201:
.LBE412:
	.loc 1 367 0
	lis 20,.LC26@ha
	.loc 1 383 0
	li 10,100
	.loc 1 367 0
	la 20,.LC26@l(20)
	mr 8,20
	subf 7,20,7
	b .L140
.LVL243:
.L204:
.LBB413:
.LBB414:
.LBB415:
.LBB416:
.LBB417:
	.loc 1 215 0
	lwz 6,16(31)
	cmpw 7,6,0
	blt- 7,.L137
	subf 0,9,0
.LVL244:
.LBE417:
.LBE416:
.LBE415:
	.loc 1 384 0
	lbzx 0,11,0
	cmpw 7,0,10
	bne- 7,.L178
.L205:
	.loc 1 383 0
	lbzu 10,1(8)
	cmpwi 7,10,0
	beq- 7,.L203
.LVL245:
.L140:
.LBE414:
.LBE413:
	.loc 1 430 0
	add 0,7,8
.LVL246:
.LBB424:
.LBB422:
.LBB421:
.LBB420:
.LBB419:
	.loc 1 215 0
	cmpw 7,9,0
	ble- 7,.L204
.L137:
.LVL247:
.LBB418:
	.loc 1 222 0
	stw 0,12(31)
	.loc 1 214 0
	mr 9,0
	.loc 1 223 0
	stw 0,16(31)
	li 0,0
.LVL248:
.LBE418:
.LBE419:
.LBE420:
.LBE421:
	.loc 1 384 0
	lbzx 0,11,0
	cmpw 7,0,10
	beq+ 7,.L205
.LVL249:
.L178:
	.loc 1 385 0
	li 4,0
.L139:
.LBE422:
.LBE424:
	.loc 1 377 0
	lis 9,.LC33@ha
.LBE427:
.LBE434:
.LBB435:
.LBB436:
.LBB437:
.LBB438:
	.loc 1 95 0
	lis 16,0x7fff
.LBE438:
.LBE437:
.LBE436:
.LBE435:
.LBB463:
.LBB428:
	.loc 1 377 0
	lwz 3,.LC33@l(9)
.LBE428:
.LBE463:
	.loc 1 453 0
	li 26,1
.LBB464:
.LBB460:
.LBB445:
.LBB439:
	.loc 1 95 0
	ori 16,16,65535
	.loc 1 96 0
	lis 17,0x8000
.LBE439:
.LBE445:
.LBE460:
.LBE464:
.LBB465:
.LBB429:
	.loc 1 377 0
	crxor 6,6,6
	bl printf
.LBE429:
.LBE465:
	.loc 1 452 0
	mr 3,30
	bl puts
	.loc 1 453 0
	li 3,60
	mr 4,24
	li 5,453
	bl _ZnajPKci
.LEHE34:
	li 0,2
	addi 19,3,4
	stw 0,0(3)
	mr 30,19
.LBB466:
.LBB461:
.LBB446:
.LBB440:
	.loc 1 97 0
	li 23,0
	.loc 1 99 0
	li 18,1
.LBE440:
.LBE446:
.LBB447:
.LBB448:
	.loc 1 322 0
	lis 28,0x4330
.LVL250:
.L141:
.LBE448:
.LBE447:
.LBB452:
.LBB441:
	.loc 1 95 0
	stw 16,12(30)
.LBE441:
.LBE452:
.LBB453:
	.loc 1 320 0
	li 3,128
.LBE453:
.LBB454:
.LBB442:
	.loc 1 96 0
	stw 17,16(30)
.LBE442:
.LBE454:
.LBB455:
	.loc 1 320 0
	mr 4,24
.LBE455:
.LBB456:
.LBB443:
	.loc 1 97 0
	stw 23,0(30)
.LBE443:
.LBE456:
.LBB457:
	.loc 1 320 0
	li 5,320
.LBE457:
.LBB458:
.LBB444:
	.loc 1 98 0
	stb 23,20(30)
	.loc 1 99 0
	stb 18,21(30)
.LEHB35:
.LBE444:
.LBE458:
.LBB459:
	.loc 1 320 0
	bl _ZnajPKci
	mr 9,3
	stw 3,24(30)
.LVL251:
.LBB449:
	.loc 1 322 0
	lfs 31,0(21)
.LBE449:
	.loc 1 321 0
	li 31,0
	b .L148
.LVL252:
.L206:
.LBB450:
	lwz 9,24(30)
.LVL253:
.L148:
	.loc 1 322 0
	xoris 0,31,0x8000
	stw 28,480(1)
	stw 0,484(1)
.LBE450:
	.loc 1 430 0
	slwi 0,31,2
.LBB451:
	.loc 1 323 0
	mr 3,29
	.loc 1 322 0
	lfd 0,480(1)
	fsub 0,0,31
	frsp 0,0
	stfsx 0,9,0
	.loc 1 323 0
	lwz 9,24(30)
	lfsx 1,9,0
	creqv 6,6,6
	bl printf
.LEHE35:
.LVL254:
	.loc 1 321 0
	cmpwi 7,31,31
	addi 31,31,1
.LVL255:
	bne+ 7,.L206
.LBE451:
.LBE459:
.LBE461:
.LBE466:
	.loc 1 453 0 discriminator 2
	cmpwi 7,26,0
	addi 30,30,28
.LVL256:
	addi 26,26,-1
	bne- 7,.L141
.LVL257:
	.loc 1 454 0 discriminator 4
	lis 3,.LC31@ha
	mr 4,19
	la 3,.LC31@l(3)
.LEHB36:
	crxor 6,6,6
	bl printf
.LVL258:
.LBB467:
.LBB468:
	.loc 1 330 0 discriminator 4
	mr 4,15
	li 5,42
	mr 3,22
	bl memcpy
	.loc 1 334 0 discriminator 4
	addi 3,1,364
	li 4,8
	bl _Z9backtracePPvi
.LVL259:
.LBB469:
	.loc 1 335 0 discriminator 4
	mr. 29,3
	ble- 0,.L152
	lis 26,.LC21@ha
	.loc 1 335 0 is_stmt 0
	addi 30,1,360
.LVL260:
	li 31,0
.LVL261:
	la 26,.LC21@l(26)
.LVL262:
.L153:
	.loc 1 336 0 is_stmt 1
	lwzu 5,4(30)
	mr 4,31
	mr 3,26
	.loc 1 335 0
	addi 31,31,1
	.loc 1 336 0
	crxor 6,6,6
	bl printf
.LVL263:
	.loc 1 335 0
	cmpw 7,31,29
	bne+ 7,.L153
.LVL264:
.L152:
.LBE469:
	.loc 1 339 0
	mr 3,25
	li 4,0
.LBB470:
.LBB471:
	.loc 1 180 0
	lis 31,.LANCHOR0@ha
.LBE471:
.LBE470:
	.loc 1 339 0
	crxor 6,6,6
	bl printf
.LVL265:
.LBB474:
.LBB472:
	.loc 1 180 0
	la 31,.LANCHOR0@l(31)
	.loc 1 181 0
	li 0,0
	stw 0,12(31)
	.loc 1 182 0
	li 0,42
	stw 0,16(31)
.LBE472:
.LBE474:
.LBB475:
	.loc 1 345 0
	lis 29,.LC23@ha
.LVL266:
.LBE475:
.LBB476:
.LBB473:
	.loc 1 183 0
	li 0,1
	.loc 1 180 0
	stw 22,4(31)
	.loc 1 183 0
	stb 0,20(31)
.LBE473:
.LBE476:
	.loc 1 342 0
	mr 30,31
.LBB477:
	.loc 1 345 0
	la 29,.LC23@l(29)
	b .L154
.LVL267:
.L208:
	mr 3,29
	bl puts
.L156:
	.loc 1 349 0
	addi 3,1,76
	mr 4,30
	li 5,0
	bl _ZN11fileDataPtrppEi
	addi 3,1,76
	bl _ZN11fileDataPtrD1Ev
.LVL268:
.L154:
.LBE477:
	.loc 1 342 0
	mr 3,30
	bl _ZN11fileDataPtrdeEv
	lbz 0,0(3)
	cmplwi 7,0,31
	ble- 7,.L207
.LBB478:
	.loc 1 343 0
	mr 3,30
	bl _ZN11fileDataPtrdeEv
	lbz 28,0(3)
.LVL269:
	.loc 1 344 0
	mr 3,30
	bl _ZN11fileDataPtrdeEv
	lbz 0,0(3)
	cmplwi 7,0,32
	ble- 7,.L208
	.loc 1 347 0
	mr 3,27
	mr 4,28
	crxor 6,6,6
	bl printf
	b .L156
.LVL270:
.L207:
.LBE478:
	.loc 1 351 0
	li 0,4
	mr 4,1
	stwu 0,8(4)
	mr 3,30
	bl _ZN11fileDataPtraSERKi
.LVL271:
	.loc 1 352 0
	li 4,1
	mr 3,25
	crxor 6,6,6
	bl printf
	.loc 1 353 0
	addi 3,1,100
	li 0,0
	mr 4,30
	addi 5,1,12
	stw 0,12(1)
	bl _ZN11fileDataPtrplERKi
.LEHE36:
	addi 3,1,100
.LEHB37:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE37:
	addi 3,1,100
.LEHB38:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 354 0
	addi 3,1,124
	li 0,1
	mr 4,31
	addi 5,1,16
	stw 0,16(1)
	bl _ZN11fileDataPtrplERKi
.LEHE38:
	addi 3,1,124
.LEHB39:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE39:
	addi 3,1,124
.LEHB40:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 355 0
	addi 3,1,148
	li 0,2
	mr 4,31
	addi 5,1,20
	stw 0,20(1)
	bl _ZN11fileDataPtrplERKi
.LEHE40:
	addi 3,1,148
.LEHB41:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE41:
	addi 3,1,148
.LEHB42:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 356 0
	addi 3,1,172
	li 0,3
	mr 4,31
	addi 5,1,24
	stw 0,24(1)
	bl _ZN11fileDataPtrplERKi
.LEHE42:
	addi 3,1,172
.LEHB43:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE43:
	addi 3,1,172
.LEHB44:
	bl _ZN11fileDataPtrD1Ev
	.loc 1 357 0
	mr 4,1
	li 0,1
	mr 3,31
	stwu 0,28(4)
	bl _ZN11fileDataPtrpLERKi
	.loc 1 358 0
	addi 3,1,196
	li 0,3
	mr 4,31
	addi 5,1,32
	stw 0,32(1)
	bl _ZN11fileDataPtrplERKi
.LEHE44:
	addi 3,1,196
.LEHB45:
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
.LEHE45:
	addi 3,1,196
.LBB479:
	.loc 1 370 0
	lis 29,.LC23@ha
.LEHB46:
.LBE479:
	.loc 1 358 0
	bl _ZN11fileDataPtrD1Ev
.LVL272:
	.loc 1 360 0
	li 4,2
	mr 3,25
	.loc 1 366 0
	li 30,0
	.loc 1 360 0
	crxor 6,6,6
	bl printf
	.loc 1 361 0
	li 0,0
	mr 4,1
	mr 3,31
	stwu 0,36(4)
.LBB491:
	.loc 1 370 0
	la 29,.LC23@l(29)
.LBE491:
	.loc 1 361 0
	bl _ZN11fileDataPtraSERKi
	.loc 1 362 0
	mr 3,31
	bl _ZN11fileDataPtrppEv
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
	.loc 1 363 0
	mr 3,31
	bl _ZN11fileDataPtrppEv
	bl _ZN11fileDataPtrdeEv
	lbz 4,0(3)
	mr 3,27
	crxor 6,6,6
	bl printf
	.loc 1 364 0
	mr 3,31
	bl _ZN11fileDataPtrcvKiEv
	mr 4,3
.LVL273:
	.loc 1 365 0
	mr 3,14
.LVL274:
	crxor 6,6,6
	bl printf
.LVL275:
.L158:
.LBB492:
.LBB493:
	.loc 1 214 0
	lwz 8,0(31)
.LBB494:
	.loc 1 215 0
	lwz 9,12(31)
.LBE494:
	.loc 1 214 0
	add 0,30,8
.LVL276:
.LBB496:
	.loc 1 215 0
	cmpw 7,0,9
	blt- 7,.L163
	lwz 11,16(31)
	subf 10,9,0
	cmpw 7,0,11
	ble- 7,.L164
.L163:
.LVL277:
.LBB495:
	.loc 1 222 0
	stw 0,12(31)
	.loc 1 214 0
	mr 9,0
	.loc 1 223 0
	stw 0,16(31)
	li 10,0
.LVL278:
.L164:
.LBE495:
.LBE496:
	.loc 1 226 0
	lwz 11,4(31)
.LBE493:
.LBE492:
	.loc 1 367 0
	lbzx 4,11,10
	cmplwi 7,4,31
	ble- 7,.L209
.LVL279:
.LBB497:
.LBB480:
.LBB481:
.LBB482:
	.loc 1 215 0
	cmpw 7,0,9
	blt- 7,.L159
	lwz 9,16(31)
	cmpw 7,9,0
	blt- 7,.L159
.LBE482:
.LBE481:
.LBE480:
	.loc 1 368 0
	lwz 9,12(31)
.LBB486:
.LBB487:
	.loc 1 226 0
	subf 0,9,0
.LVL280:
.LBE487:
.LBE486:
	.loc 1 369 0
	lbzx 0,11,0
	cmplwi 7,0,32
	bgt- 7,.L161
.L210:
	.loc 1 370 0
	mr 3,29
	.loc 1 374 0
	addi 30,30,1
.LVL281:
	.loc 1 370 0
	bl puts
.LVL282:
	b .L158
.LVL283:
.L159:
.LBB489:
.LBB485:
.LBB484:
.LBB483:
	.loc 1 222 0
	stw 0,12(31)
	.loc 1 223 0
	stw 0,16(31)
.LBE483:
.LBE484:
.LBE485:
.LBE489:
	.loc 1 368 0
	lwz 9,12(31)
	lbz 4,0(11)
.LVL284:
.LBB490:
.LBB488:
	.loc 1 226 0
	subf 0,9,0
.LVL285:
.LBE488:
.LBE490:
	.loc 1 369 0
	lbzx 0,11,0
	cmplwi 7,0,32
	ble- 7,.L210
.LVL286:
.L161:
	.loc 1 372 0
	mr 3,27
	.loc 1 374 0
	addi 30,30,1
.LVL287:
	.loc 1 372 0
	crxor 6,6,6
	bl printf
.LVL288:
	b .L158
.LVL289:
.L209:
.LBE497:
	.loc 1 383 0
	li 10,100
	subf 8,20,8
	b .L169
.LVL290:
.L212:
.LBB498:
.LBB499:
.LBB500:
.LBB501:
.LBB502:
	.loc 1 215 0
	lwz 7,16(31)
	cmpw 7,0,7
	bgt- 7,.L166
	subf 0,9,0
.LVL291:
.LBE502:
.LBE501:
.LBE500:
	.loc 1 384 0
	lbzx 0,11,0
	cmpw 7,0,10
	bne- 7,.L179
.L213:
	.loc 1 383 0
	lbzu 10,1(20)
	cmpwi 7,10,0
	beq- 7,.L211
.LVL292:
.L169:
.LBE499:
.LBE498:
	.loc 1 430 0
	add 0,8,20
.LVL293:
.LBB509:
.LBB507:
.LBB506:
.LBB505:
.LBB504:
	.loc 1 215 0
	cmpw 7,0,9
	bge- 7,.L212
.L166:
.LVL294:
.LBB503:
	.loc 1 222 0
	stw 0,12(31)
	.loc 1 214 0
	mr 9,0
	.loc 1 223 0
	stw 0,16(31)
	li 0,0
.LVL295:
.LBE503:
.LBE504:
.LBE505:
.LBE506:
	.loc 1 384 0
	lbzx 0,11,0
	cmpw 7,0,10
	beq+ 7,.L213
.LVL296:
.L179:
	.loc 1 385 0
	li 4,0
.L168:
.LBE507:
.LBE509:
	.loc 1 377 0
	lis 9,.LC33@ha
	lwz 3,.LC33@l(9)
	crxor 6,6,6
	bl printf
.LBE468:
.LBE467:
	.loc 1 459 0
 # 459 "d:/Data/Nintendo/DoomGXSchratch/src/operators.cpp" 1
	stw %sp, 0(0)
 # 0 "" 2
	.loc 1 461 0
	lis 9,.LC32@ha
	mr 4,0
	lwz 3,.LC32@l(9)
	.loc 1 459 0
	stw 0,72(1)
	.loc 1 461 0
	crxor 6,6,6
	bl printf
.LEHE46:
.LBE527:
	.loc 1 466 0
	lwz 0,572(1)
	lwz 14,488(1)
	li 3,0
	mtlr 0
	lwz 15,492(1)
	lwz 16,496(1)
	lwz 17,500(1)
	lwz 18,504(1)
	lwz 19,508(1)
.LVL297:
	lwz 20,512(1)
	lwz 21,516(1)
	lwz 22,520(1)
.LVL298:
	lwz 23,524(1)
	lwz 24,528(1)
	lwz 25,532(1)
	lwz 26,536(1)
	lwz 27,540(1)
	lwz 28,544(1)
	lwz 29,548(1)
	lwz 30,552(1)
.LVL299:
	lwz 31,556(1)
	lfd 31,560(1)
	addi 1,1,568
	.cfi_remember_state
.LCFI56:
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
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL300:
.L211:
.LCFI57:
	.cfi_restore_state
.LBB528:
.LBB513:
.LBB511:
.LBB510:
.LBB508:
	.loc 1 388 0
	li 4,1
	b .L168
.LVL301:
.L203:
.LBE508:
.LBE510:
.LBE511:
.LBE513:
.LBB514:
.LBB430:
.LBB425:
.LBB423:
	li 4,1
	b .L139
.LVL302:
.L186:
	mr 29,3
.LBE423:
.LBE425:
.LBE430:
.LBE514:
.LBB515:
.LBB462:
	.loc 1 319 0
	mr 3,30
	bl _ZN11fileDataPtrD1Ev
.LBE462:
.LBE515:
	.loc 1 453 0
	cmpwi 7,19,0
	beq- 7,.L151
	.loc 1 453 0 is_stmt 0 discriminator 5
	subfic 31,26,1
	mulli 31,31,28
	add 31,19,31
	cmpw 7,19,31
	beq- 7,.L151
.L177:
.LVL303:
.LBB516:
.LBB517:
.LBB518:
	.loc 1 326 0 is_stmt 1 discriminator 7
	addi 31,31,-28
.LVL304:
	mr 3,31
	bl _ZN11fileDataPtrD1Ev
.LBE518:
.LBE517:
.LBE516:
	.loc 1 453 0 discriminator 7
	cmpw 7,19,31
	bne+ 7,.L177
.LVL305:
.L151:
.LBB521:
.LBB520:
.LBB519:
	.loc 1 326 0
	mr 3,29
.LEHB47:
	bl _Unwind_Resume
.LEHE47:
.LVL306:
.L191:
	mr 31,3
.LBE519:
.LBE520:
.LBE521:
.LBB522:
.LBB512:
	.loc 1 353 0
	addi 3,1,100
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB48:
	bl _Unwind_Resume
.LEHE48:
.L190:
	mr 31,3
	.loc 1 354 0
	addi 3,1,124
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB49:
	bl _Unwind_Resume
.LEHE49:
.L189:
	mr 31,3
	.loc 1 355 0
	addi 3,1,148
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB50:
	bl _Unwind_Resume
.LEHE50:
.L188:
	mr 31,3
	.loc 1 356 0
	addi 3,1,172
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB51:
	bl _Unwind_Resume
.LEHE51:
.L187:
	mr 31,3
	.loc 1 358 0
	addi 3,1,196
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB52:
	bl _Unwind_Resume
.LEHE52:
.LVL307:
.L182:
	mr 31,3
.LVL308:
.LBE512:
.LBE522:
.LBB523:
.LBB431:
	.loc 1 356 0
	addi 3,1,316
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB53:
	bl _Unwind_Resume
.LEHE53:
.LVL309:
.L183:
	mr 31,3
.LVL310:
	.loc 1 355 0
	addi 3,1,292
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB54:
	bl _Unwind_Resume
.LEHE54:
.LVL311:
.L181:
	mr 31,3
.LVL312:
	.loc 1 358 0
	addi 3,1,340
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB55:
	bl _Unwind_Resume
.LEHE55:
.LVL313:
.L180:
	mr 30,3
.LBE431:
.LBE523:
.LBB524:
.LBB380:
	.loc 1 319 0
	mr 3,31
	bl _ZN11fileDataPtrD1Ev
	mr 3,30
.LEHB56:
	bl _Unwind_Resume
.LEHE56:
.LVL314:
.L184:
	mr 31,3
.LVL315:
.LBE380:
.LBE524:
.LBB525:
.LBB432:
	.loc 1 354 0
	addi 3,1,268
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB57:
	bl _Unwind_Resume
.LEHE57:
.LVL316:
.L185:
	mr 31,3
.LVL317:
	.loc 1 353 0
	addi 3,1,244
	bl _ZN11fileDataPtrD1Ev
	mr 3,31
.LEHB58:
	bl _Unwind_Resume
.LEHE58:
.LBE432:
.LBE525:
.LBE528:
	.cfi_endproc
.LFE58:
	.section	.gcc_except_table
.LLSDA58:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE58-.LLSDACSB58
.LLSDACSB58:
	.uleb128 .LEHB22-.LFB58
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB58
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L180-.LFB58
	.uleb128 0
	.uleb128 .LEHB24-.LFB58
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB58
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L185-.LFB58
	.uleb128 0
	.uleb128 .LEHB26-.LFB58
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB58
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L184-.LFB58
	.uleb128 0
	.uleb128 .LEHB28-.LFB58
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB58
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L183-.LFB58
	.uleb128 0
	.uleb128 .LEHB30-.LFB58
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB58
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L182-.LFB58
	.uleb128 0
	.uleb128 .LEHB32-.LFB58
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB58
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L181-.LFB58
	.uleb128 0
	.uleb128 .LEHB34-.LFB58
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB58
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L186-.LFB58
	.uleb128 0
	.uleb128 .LEHB36-.LFB58
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB58
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L191-.LFB58
	.uleb128 0
	.uleb128 .LEHB38-.LFB58
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB58
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L190-.LFB58
	.uleb128 0
	.uleb128 .LEHB40-.LFB58
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB58
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L189-.LFB58
	.uleb128 0
	.uleb128 .LEHB42-.LFB58
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB58
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L188-.LFB58
	.uleb128 0
	.uleb128 .LEHB44-.LFB58
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB58
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L187-.LFB58
	.uleb128 0
	.uleb128 .LEHB46-.LFB58
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB58
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB58
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB58
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB58
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB58
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB58
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB58
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB58
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB58
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB58
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB58
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB58
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE58:
	.section	".text"
	.size	_Z6__mainiPPc, .-_Z6__mainiPPc
	.section	.text.startup,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I__ZnwjPKci, @function
_GLOBAL__sub_I__ZnwjPKci:
.LFB60:
	.loc 1 466 0
	.cfi_startproc
	.loc 1 466 0
	li 3,1
	b _Z41__static_initialization_and_destruction_0ii.constprop.2
	.cfi_endproc
.LFE60:
	.size	_GLOBAL__sub_I__ZnwjPKci, .-_GLOBAL__sub_I__ZnwjPKci
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I__ZnwjPKci
	.section	.text.exit,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_D__ZnwjPKci, @function
_GLOBAL__sub_D__ZnwjPKci:
.LFB61:
	.loc 1 466 0
	.cfi_startproc
	.loc 1 466 0
	li 3,0
	b _Z41__static_initialization_and_destruction_0ii.constprop.2
	.cfi_endproc
.LFE61:
	.size	_GLOBAL__sub_D__ZnwjPKci, .-_GLOBAL__sub_D__ZnwjPKci
	.section	.dtors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_D__ZnwjPKci
	.globl exttestptr
	.globl _ZN11fileDataPtrC1Ev
	.set	_ZN11fileDataPtrC1Ev,_ZN11fileDataPtrC2Ev
	.globl _ZN11fileDataPtrD1Ev
	.set	_ZN11fileDataPtrD1Ev,_ZN11fileDataPtrD2Ev
	.globl _ZN11fileDataPtrC1ERKS_
	.set	_ZN11fileDataPtrC1ERKS_,_ZN11fileDataPtrC2ERKS_
	.globl _ZN11fileDataPtrC1ERS_
	.set	_ZN11fileDataPtrC1ERS_,_ZN11fileDataPtrC2ERS_
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC6:
	.4byte	1501560836
.LC32:
	.4byte	.LC29
.LC33:
	.4byte	.LC27
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	">>> alloc new size %d %s %d\r\n"
	.zero	2
.LC1:
	.string	">>> alloc new[] size %d %s %d\r\n"
.LC2:
	.string	"MASTER IS DELETED\r"
	.zero	1
.LC3:
	.string	"COPY IS DELETED\r"
	.zero	3
.LC4:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/operators.cpp"
	.zero	2
.LC7:
	.string	">>> testFloat[i] %f\r\n"
	.zero	2
.LC8:
	.string	">>> operator const int() const %d\r\n"
.LC9:
	.string	">>> operator const int() %d\r\n"
	.zero	2
.LC10:
	.string	">>> fileDataPtr::operator*() %d %d\r\n"
	.zero	3
.LC11:
	.string	">>> fileDataPtr::operator++ ptr = %d\r\n"
	.zero	1
.LC12:
	.string	">>> fileDataPtr::operator++(int) ptr = %d\r\n"
.LC13:
	.string	">>> fileDataPtr::operator-- ptr = %d\r\n"
	.zero	1
.LC14:
	.string	">>> fileDataPtr::operator--(int) ptr = %d\r\n"
.LC15:
	.string	">>> fileDataPtr::operator+= %d\r\n"
	.zero	3
.LC16:
	.string	">>> fileDataPtr::operator-= %d\r\n"
	.zero	3
.LC17:
	.string	">>> fileDataPtr::operator+ %d\r\n"
.LC18:
	.string	">>> fileDataPtr::operator- %d\r\n"
.LC19:
	.string	">>> fileDataPtr::operator= %d\r\n"
.LC21:
	.string	">>> stack[%d] %p\r\n"
	.zero	1
.LC22:
	.string	"===== test %d ===== "
	.zero	3
.LC23:
	.string	"break\r"
	.zero	1
.LC24:
	.string	"%c\r\n"
	.zero	3
.LC25:
	.string	"int: %d\r\n"
	.zero	2
.LC26:
	.string	"data"
	.zero	3
.LC27:
	.string	"checkString %d\r\n"
	.zero	3
.LC20:
	.string	"Een stukje test data met wat tekst enzo\r\n"
	.zero	2
.LC28:
	.string	">>> addr: %X\r\n"
	.zero	1
.LC29:
	.string	">>> stack pointer: %X\r\n"
.LC30:
	.string	"==================================================\r"
.LC31:
	.string	"================================================== %p\r\n"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	exttestptr, @object
	.size	exttestptr, 28
exttestptr:
	.zero	28
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/_types.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/lock.h"
	.file 5 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/_types.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/reent.h"
	.file 7 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdio.h"
	.file 8 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 9 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2103
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x4
	.4byte	.LASF214
	.4byte	.LASF215
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x860
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd4
	.4byte	0x34
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0xa
	.4byte	0x60
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x7
	.4byte	0x59
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x2
	.2byte	0x161
	.4byte	0x34
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x44
	.4byte	.LASF216
	.4byte	0xd8
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x47
	.4byte	0xbb
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x5
	.byte	0x48
	.4byte	0x84
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x5
	.byte	0x49
	.4byte	0xd8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x5
	.byte	0x45
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4a
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x3b
	.4byte	0xe8
	.uleb128 0xc
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4b
	.4byte	0x90
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4f
	.4byte	0x79
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x6
	.byte	0x15
	.4byte	0x109
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x18
	.byte	0x6
	.byte	0x2c
	.4byte	0x16f
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2e
	.4byte	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x2f
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2f
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2f
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2f
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x30
	.4byte	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x110
	.uleb128 0xb
	.4byte	0x109
	.4byte	0x185
	.uleb128 0xc
	.4byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x24
	.byte	0x6
	.byte	0x34
	.4byte	0x210
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0x36
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.byte	0x38
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0x39
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3a
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3b
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3c
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3d
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3e
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.2byte	0x108
	.byte	0x6
	.byte	0x47
	.4byte	0x259
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x48
	.4byte	0x259
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x49
	.4byte	0x259
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4b
	.4byte	0xfe
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4e
	.4byte	0xfe
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0xb
	.4byte	0x49
	.4byte	0x269
	.uleb128 0xc
	.4byte	0x34
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.2byte	0x190
	.byte	0x6
	.byte	0x59
	.4byte	0x2b0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x5a
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x5b
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x5d
	.4byte	0x2b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5e
	.4byte	0x210
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x269
	.uleb128 0xb
	.4byte	0x2c7
	.4byte	0x2c6
	.uleb128 0xc
	.4byte	0x34
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c6
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6
	.byte	0x69
	.4byte	0x2f6
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x6a
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x6b
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3b
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x70
	.byte	0x6
	.byte	0xa9
	.4byte	0x456
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xaa
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xab
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xac
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0xad
	.4byte	0x52
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0xae
	.4byte	0x52
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xaf
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.byte	0xb0
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb7
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0xb9
	.4byte	0x75f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbb
	.4byte	0x78e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbd
	.4byte	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbe
	.4byte	0x7cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xc1
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xc2
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xc3
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc6
	.4byte	0x7d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc7
	.4byte	0x7e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xca
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcd
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x6
	.byte	0xce
	.4byte	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd1
	.4byte	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd5
	.4byte	0xf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd7
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd8
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x12
	.4byte	0x59
	.4byte	0x474
	.uleb128 0x13
	.4byte	0x474
	.uleb128 0x13
	.4byte	0x49
	.uleb128 0x13
	.4byte	0x752
	.uleb128 0x13
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x47a
	.uleb128 0x14
	.4byte	.LASF62
	.2byte	0x440
	.byte	0x6
	.2byte	0x244
	.4byte	0x752
	.uleb128 0x15
	.byte	0xf0
	.byte	0x6
	.2byte	0x262
	.4byte	0x602
	.uleb128 0x16
	.byte	0xd0
	.byte	0x6
	.2byte	0x264
	.4byte	0x5c1
	.uleb128 0x17
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x265
	.4byte	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x266
	.4byte	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x267
	.4byte	0x890
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x268
	.4byte	0x185
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x269
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x26a
	.4byte	0x67
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x26b
	.4byte	0x845
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26c
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26d
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26e
	.4byte	0xe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26f
	.4byte	0x8a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x270
	.4byte	0x8b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x271
	.4byte	0x59
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x272
	.4byte	0xe8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x273
	.4byte	0xe8
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x274
	.4byte	0xe8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x275
	.4byte	0xe8
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x276
	.4byte	0xe8
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x277
	.4byte	0x59
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0
	.uleb128 0x16
	.byte	0xf0
	.byte	0x6
	.2byte	0x27d
	.4byte	0x5e9
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27f
	.4byte	0x8c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x280
	.4byte	0x8d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x278
	.4byte	0x491
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x281
	.4byte	0x5c1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x246
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x24b
	.4byte	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x24b
	.4byte	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x24b
	.4byte	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x24d
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x24e
	.4byte	0x8e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x250
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x251
	.4byte	0x783
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x253
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x255
	.4byte	0x901
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x258
	.4byte	0x907
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x259
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x25a
	.4byte	0x907
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x25b
	.4byte	0x90d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x25e
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x25f
	.4byte	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x282
	.4byte	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x285
	.4byte	0x913
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x286
	.4byte	0x269
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x289
	.4byte	0x924
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28e
	.4byte	0x7fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28f
	.4byte	0x930
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x758
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF106
	.uleb128 0xf
	.byte	0x4
	.4byte	0x456
	.uleb128 0x12
	.4byte	0x59
	.4byte	0x783
	.uleb128 0x13
	.4byte	0x474
	.uleb128 0x13
	.4byte	0x49
	.uleb128 0x13
	.4byte	0x783
	.uleb128 0x13
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x789
	.uleb128 0x19
	.4byte	0x758
	.uleb128 0xf
	.byte	0x4
	.4byte	0x765
	.uleb128 0x12
	.4byte	0x6e
	.4byte	0x7b2
	.uleb128 0x13
	.4byte	0x474
	.uleb128 0x13
	.4byte	0x49
	.uleb128 0x13
	.4byte	0x6e
	.uleb128 0x13
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x794
	.uleb128 0x12
	.4byte	0x59
	.4byte	0x7cc
	.uleb128 0x13
	.4byte	0x474
	.uleb128 0x13
	.4byte	0x49
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7b8
	.uleb128 0xb
	.4byte	0x3b
	.4byte	0x7e2
	.uleb128 0xc
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x3b
	.4byte	0x7f2
	.uleb128 0xc
	.4byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x111
	.4byte	0x2fc
	.uleb128 0x1a
	.4byte	.LASF108
	.byte	0xc
	.byte	0x6
	.2byte	0x115
	.4byte	0x839
	.uleb128 0x17
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x117
	.4byte	0x839
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x118
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x119
	.4byte	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7fe
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7f2
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0xe
	.byte	0x6
	.2byte	0x131
	.4byte	0x880
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x132
	.4byte	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x133
	.4byte	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x134
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x890
	.uleb128 0xc
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x758
	.4byte	0x8a0
	.uleb128 0xc
	.4byte	0x34
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	0x758
	.4byte	0x8b0
	.uleb128 0xc
	.4byte	0x34
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x758
	.4byte	0x8c0
	.uleb128 0xc
	.4byte	0x34
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.4byte	0x2f6
	.4byte	0x8d0
	.uleb128 0xc
	.4byte	0x34
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x34
	.4byte	0x8e0
	.uleb128 0xc
	.4byte	0x34
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x758
	.4byte	0x8f0
	.uleb128 0xc
	.4byte	0x34
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.4byte	0x8fb
	.uleb128 0x13
	.4byte	0x8fb
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x47a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x110
	.uleb128 0xf
	.byte	0x4
	.4byte	0x907
	.uleb128 0xf
	.byte	0x4
	.4byte	0x269
	.uleb128 0x1b
	.4byte	0x924
	.uleb128 0x13
	.4byte	0x59
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x92a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x919
	.uleb128 0xb
	.4byte	0x2fc
	.4byte	0x940
	.uleb128 0xc
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF115
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x7
	.byte	0x32
	.4byte	0x7f2
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x8
	.byte	0x50
	.4byte	0x34
	.uleb128 0x1c
	.string	"u32"
	.byte	0x9
	.byte	0x13
	.4byte	0x952
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF118
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF119
	.uleb128 0xf
	.byte	0x4
	.4byte	0x752
	.uleb128 0x1d
	.string	"std"
	.byte	0xa
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.byte	0xe
	.4byte	0x97c
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x18
	.byte	0x1
	.byte	0x2e
	.4byte	0xd58
	.uleb128 0xe
	.string	"ptr"
	.byte	0x1
	.byte	0x4f
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.byte	0x52
	.4byte	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF120
	.byte	0x1
	.byte	0x53
	.4byte	0xd58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF121
	.byte	0x1
	.byte	0x55
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.byte	0x56
	.4byte	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x57
	.4byte	0xd5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x58
	.4byte	0xd5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	0xa0f
	.4byte	0xa16
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0xa27
	.4byte	0xa34
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x23
	.4byte	0x59
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0xa45
	.4byte	0xa51
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd6b
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	0xa62
	.4byte	0xa6e
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd76
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.byte	0x36
	.4byte	.LASF129
	.byte	0x1
	.4byte	0xa83
	.4byte	0xa8f
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0x783
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.byte	0x37
	.4byte	.LASF130
	.byte	0x1
	.4byte	0xaa4
	.4byte	0xab5
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0x752
	.uleb128 0x13
	.4byte	0x59
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.byte	0x39
	.4byte	.LASF132
	.4byte	0xd7c
	.byte	0x1
	.4byte	0xace
	.4byte	0xad5
	.uleb128 0x23
	.4byte	0xd81
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.byte	0x3a
	.4byte	.LASF133
	.4byte	0xd7c
	.byte	0x1
	.4byte	0xaee
	.4byte	0xaf5
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.byte	0x3c
	.4byte	.LASF135
	.4byte	0xd8c
	.byte	0x1
	.4byte	0xb0e
	.4byte	0xb15
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.byte	0x3d
	.4byte	.LASF137
	.4byte	0xd8c
	.byte	0x1
	.4byte	0xb2e
	.4byte	0xb3a
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd92
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.byte	0x3e
	.4byte	.LASF139
	.4byte	0xd76
	.byte	0x1
	.4byte	0xb53
	.4byte	0xb5a
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.byte	0x3f
	.4byte	.LASF140
	.4byte	0x98a
	.byte	0x1
	.4byte	0xb73
	.4byte	0xb7f
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0x59
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0x40
	.4byte	.LASF142
	.4byte	0xd76
	.byte	0x1
	.4byte	0xb98
	.4byte	0xb9f
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0x41
	.4byte	.LASF143
	.4byte	0x98a
	.byte	0x1
	.4byte	0xbb8
	.4byte	0xbc4
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0x59
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0x42
	.4byte	.LASF145
	.4byte	0xd76
	.byte	0x1
	.4byte	0xbdd
	.4byte	0xbe9
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0x43
	.4byte	.LASF147
	.4byte	0xd76
	.byte	0x1
	.4byte	0xc02
	.4byte	0xc0e
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0x44
	.4byte	.LASF149
	.4byte	0x98a
	.byte	0x1
	.4byte	0xc27
	.4byte	0xc33
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.byte	0x45
	.4byte	.LASF151
	.4byte	0x98a
	.byte	0x1
	.4byte	0xc4c
	.4byte	0xc58
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.byte	0x46
	.4byte	.LASF153
	.4byte	0xd76
	.byte	0x1
	.4byte	0xc71
	.4byte	0xc7d
	.uleb128 0x23
	.4byte	0xd65
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.byte	0x47
	.4byte	.LASF155
	.4byte	0xd5e
	.byte	0x1
	.4byte	0xc96
	.4byte	0xca2
	.uleb128 0x23
	.4byte	0xd81
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0x48
	.4byte	.LASF157
	.4byte	0xd5e
	.byte	0x1
	.4byte	0xcbb
	.4byte	0xcc7
	.uleb128 0x23
	.4byte	0xd81
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.byte	0x49
	.4byte	.LASF159
	.4byte	0xd5e
	.byte	0x1
	.4byte	0xce0
	.4byte	0xcec
	.uleb128 0x23
	.4byte	0xd81
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.byte	0x4a
	.4byte	.LASF161
	.4byte	0xd5e
	.byte	0x1
	.4byte	0xd05
	.4byte	0xd11
	.uleb128 0x23
	.4byte	0xd81
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.byte	0x4b
	.4byte	.LASF163
	.4byte	0xd5e
	.byte	0x1
	.4byte	0xd2a
	.4byte	0xd36
	.uleb128 0x23
	.4byte	0xd81
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF164
	.byte	0x1
	.byte	0x4c
	.4byte	.LASF165
	.4byte	0xd5e
	.byte	0x1
	.4byte	0xd4b
	.uleb128 0x23
	.4byte	0xd81
	.byte	0x1
	.uleb128 0x13
	.4byte	0xd98
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x947
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF166
	.uleb128 0xf
	.byte	0x4
	.4byte	0x98a
	.uleb128 0x27
	.byte	0x4
	.4byte	0xd71
	.uleb128 0x19
	.4byte	0x98a
	.uleb128 0x27
	.byte	0x4
	.4byte	0x98a
	.uleb128 0x19
	.4byte	0x59
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd87
	.uleb128 0x19
	.4byte	0x98a
	.uleb128 0x27
	.byte	0x4
	.4byte	0x758
	.uleb128 0x27
	.byte	0x4
	.4byte	0x59
	.uleb128 0x27
	.byte	0x4
	.4byte	0xd7c
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0x1c
	.byte	0x1
	.2byte	0x13a
	.4byte	0xe43
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x98a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x2a
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x13d
	.4byte	0xe43
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x13f
	.byte	0x1
	.4byte	0xddd
	.4byte	0xde4
	.uleb128 0x23
	.4byte	0xe49
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x146
	.byte	0x1
	.4byte	0xdf6
	.4byte	0xe03
	.uleb128 0x23
	.4byte	0xe49
	.byte	0x1
	.uleb128 0x23
	.4byte	0x59
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x148
	.4byte	.LASF172
	.byte	0x1
	.4byte	0xe19
	.4byte	0xe20
	.uleb128 0x23
	.4byte	0xe49
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x17c
	.4byte	.LASF173
	.4byte	0x59
	.byte	0x1
	.4byte	0xe36
	.uleb128 0x23
	.4byte	0xe49
	.byte	0x1
	.uleb128 0x13
	.4byte	0x783
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x968
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd9e
	.uleb128 0x2e
	.4byte	0xa16
	.byte	0x67
	.byte	0x1
	.4byte	0xe5e
	.4byte	0xe73
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF175
	.4byte	0xd7c
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.4byte	0xd65
	.uleb128 0x2e
	.4byte	0x9fe
	.byte	0x5e
	.byte	0x1
	.4byte	0xe87
	.4byte	0xe92
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.4byte	0xde4
	.byte	0x3
	.4byte	0xea0
	.4byte	0xeb5
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xeb5
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF175
	.4byte	0xd7c
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.4byte	0xe49
	.uleb128 0x31
	.4byte	.LASF217
	.byte	0x1
	.byte	0x1
	.4byte	0xede
	.uleb128 0x32
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x59
	.uleb128 0x32
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x59
	.byte	0
	.uleb128 0x2e
	.4byte	0xb15
	.byte	0xd5
	.byte	0x1
	.4byte	0xeed
	.4byte	0xf1d
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF178
	.byte	0x1
	.byte	0xd5
	.4byte	0xf1d
	.uleb128 0x34
	.uleb128 0x35
	.string	"ptr"
	.byte	0x1
	.byte	0xd6
	.4byte	0x59
	.uleb128 0x34
	.uleb128 0x36
	.4byte	.LASF179
	.byte	0x1
	.byte	0xd8
	.4byte	0x59
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xd92
	.uleb128 0x2e
	.4byte	0xa8f
	.byte	0xb0
	.byte	0x1
	.4byte	0xf31
	.4byte	0xf52
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF180
	.byte	0x1
	.byte	0xb0
	.4byte	0x752
	.uleb128 0x33
	.4byte	.LASF181
	.byte	0x1
	.byte	0xb0
	.4byte	0x59
	.byte	0
	.uleb128 0x30
	.4byte	0xe20
	.byte	0x3
	.4byte	0xf60
	.4byte	0xf83
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xeb5
	.byte	0x1
	.uleb128 0x37
	.string	"str"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x783
	.uleb128 0x34
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.byte	0x12
	.4byte	.LASF189
	.4byte	0x49
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST0
	.4byte	0xfe4
	.uleb128 0x3a
	.4byte	.LASF182
	.byte	0x1
	.byte	0x12
	.4byte	0x29
	.4byte	.LLST1
	.uleb128 0x3a
	.4byte	.LASF120
	.byte	0x1
	.byte	0x12
	.4byte	0x783
	.4byte	.LLST2
	.uleb128 0x3a
	.4byte	.LASF183
	.byte	0x1
	.byte	0x12
	.4byte	0x59
	.4byte	.LLST3
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3c
	.4byte	.LASF191
	.byte	0x1
	.byte	0x14
	.4byte	0x49
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.byte	0x1a
	.4byte	.LASF185
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST4
	.4byte	0x1010
	.uleb128 0x3a
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1a
	.4byte	0x49
	.4byte	.LLST5
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1e
	.4byte	.LASF190
	.4byte	0x49
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST6
	.4byte	0x1071
	.uleb128 0x3a
	.4byte	.LASF182
	.byte	0x1
	.byte	0x1e
	.4byte	0x29
	.4byte	.LLST7
	.uleb128 0x3a
	.4byte	.LASF120
	.byte	0x1
	.byte	0x1e
	.4byte	0x783
	.4byte	.LLST8
	.uleb128 0x3a
	.4byte	.LASF183
	.byte	0x1
	.byte	0x1e
	.4byte	0x59
	.4byte	.LLST9
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x3c
	.4byte	.LASF191
	.byte	0x1
	.byte	0x20
	.4byte	0x49
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.byte	0x26
	.4byte	.LASF193
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST10
	.4byte	0x109d
	.uleb128 0x3a
	.4byte	.LASF186
	.byte	0x1
	.byte	0x26
	.4byte	0x49
	.4byte	.LLST11
	.byte	0
	.uleb128 0x3e
	.4byte	0xe78
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x10b5
	.4byte	0x10bd
	.uleb128 0x3f
	.4byte	0xe87
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x40
	.4byte	0xe4f
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST12
	.4byte	0x10d6
	.4byte	0x10f9
	.uleb128 0x41
	.4byte	0xe5e
	.4byte	.LLST13
	.uleb128 0x42
	.4byte	0xe4f
	.4byte	.LBB77
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x67
	.uleb128 0x41
	.4byte	0xe5e
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0xdcb
	.byte	0x2
	.4byte	0x1107
	.4byte	0x111e
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xeb5
	.byte	0x1
	.uleb128 0x34
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x141
	.4byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	0xeba
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST15
	.4byte	0x11ce
	.uleb128 0x41
	.4byte	0xec5
	.4byte	.LLST16
	.uleb128 0x44
	.4byte	0xed1
	.2byte	0xffff
	.uleb128 0x45
	.4byte	0xeba
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x1186
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x46
	.4byte	0xec5
	.uleb128 0x41
	.4byte	0xed1
	.4byte	.LLST17
	.uleb128 0x47
	.4byte	0xe92
	.4byte	.LBB100
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x18e
	.uleb128 0x41
	.4byte	0xea0
	.4byte	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0x10f9
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x18e
	.uleb128 0x41
	.4byte	0x1107
	.4byte	.LLST19
	.uleb128 0x45
	.4byte	0xe78
	.4byte	.LBB115
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x13f
	.4byte	0x11bd
	.uleb128 0x41
	.4byte	0xe87
	.4byte	.LLST19
	.byte	0
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x48
	.4byte	0x1112
	.4byte	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xa34
	.byte	0x75
	.byte	0
	.4byte	0x11dd
	.4byte	0x11f3
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF194
	.byte	0x1
	.byte	0x75
	.4byte	0x11f3
	.byte	0
	.uleb128 0x19
	.4byte	0xd6b
	.uleb128 0x3e
	.4byte	0x11ce
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1210
	.4byte	0x121f
	.uleb128 0x3f
	.4byte	0x11dd
	.byte	0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	0x11e7
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2e
	.4byte	0xa51
	.byte	0x7a
	.byte	0
	.4byte	0x122e
	.4byte	0x1244
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF194
	.byte	0x1
	.byte	0x7a
	.4byte	0x1244
	.byte	0
	.uleb128 0x19
	.4byte	0xd76
	.uleb128 0x3e
	.4byte	0x121f
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1261
	.4byte	0x1270
	.uleb128 0x3f
	.4byte	0x122e
	.byte	0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	0x1238
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x49
	.4byte	0xa6e
	.byte	0x82
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1289
	.4byte	0x12a3
	.uleb128 0x4a
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.byte	0x1
	.byte	0x53
	.uleb128 0x4b
	.4byte	.LASF195
	.byte	0x1
	.byte	0x82
	.4byte	0x783
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3e
	.4byte	0xf22
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x12bb
	.4byte	0x12d1
	.uleb128 0x3f
	.4byte	0xf31
	.byte	0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	0xf3b
	.byte	0x1
	.byte	0x54
	.uleb128 0x3f
	.4byte	0xf46
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4c
	.4byte	0xab5
	.byte	0xba
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST22
	.4byte	0x12eb
	.4byte	0x12fa
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0x12fa
	.byte	0x1
	.4byte	.LLST23
	.byte	0
	.uleb128 0x19
	.4byte	0xd81
	.uleb128 0x4c
	.4byte	0xad5
	.byte	0xbf
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST24
	.4byte	0x1319
	.4byte	0x1328
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST25
	.byte	0
	.uleb128 0x4c
	.4byte	0xaf5
	.byte	0xc5
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST26
	.4byte	0x1342
	.4byte	0x136a
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST27
	.uleb128 0x4e
	.4byte	.LBB138
	.4byte	.LBE138
	.uleb128 0x4f
	.4byte	.LASF179
	.byte	0x1
	.byte	0xc8
	.4byte	0x59
	.4byte	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0xede
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1382
	.4byte	0x13b5
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST29
	.uleb128 0x3f
	.4byte	0xef7
	.byte	0x1
	.byte	0x54
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x108
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST30
	.uleb128 0x4e
	.4byte	.LBB143
	.4byte	.LBE143
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	0xb3a
	.byte	0xe6
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST32
	.4byte	0x13cf
	.4byte	0x13de
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST33
	.byte	0
	.uleb128 0x4c
	.4byte	0xb5a
	.byte	0xec
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST34
	.4byte	0x13f8
	.4byte	0x1423
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST35
	.uleb128 0x50
	.4byte	0x59
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x120
	.uleb128 0x51
	.string	"cpy"
	.byte	0x1
	.byte	0xed
	.4byte	0x98a
	.4byte	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	0xb7f
	.byte	0xf3
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST37
	.4byte	0x143d
	.4byte	0x144c
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST38
	.byte	0
	.uleb128 0x4c
	.4byte	0xb9f
	.byte	0xf9
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST39
	.4byte	0x1466
	.4byte	0x1491
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST40
	.uleb128 0x50
	.4byte	0x59
	.byte	0x1
	.byte	0x55
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x138
	.uleb128 0x51
	.string	"cpy"
	.byte	0x1
	.byte	0xfa
	.4byte	0x98a
	.4byte	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x52
	.4byte	0xbc4
	.2byte	0x100
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST42
	.4byte	0x14ac
	.4byte	0x14cb
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST43
	.uleb128 0x53
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x100
	.4byte	0x14cb
	.4byte	.LLST44
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x52
	.4byte	0xbe9
	.2byte	0x106
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST45
	.4byte	0x14eb
	.4byte	0x150a
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST46
	.uleb128 0x53
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x106
	.4byte	0x150a
	.4byte	.LLST47
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x52
	.4byte	0xc0e
	.2byte	0x10c
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST48
	.4byte	0x152a
	.4byte	0x155f
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST49
	.uleb128 0x53
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x10c
	.4byte	0x155f
	.4byte	.LLST50
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x150
	.uleb128 0x54
	.string	"cpy"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x98a
	.4byte	.LLST51
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x52
	.4byte	0xc33
	.2byte	0x113
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST52
	.4byte	0x157f
	.4byte	0x15b4
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST53
	.uleb128 0x53
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x113
	.4byte	0x15b4
	.4byte	.LLST54
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x170
	.uleb128 0x54
	.string	"cpy"
	.byte	0x1
	.2byte	0x115
	.4byte	0x98a
	.4byte	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x52
	.4byte	0xc58
	.2byte	0x11b
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST56
	.4byte	0x15d4
	.4byte	0x15f3
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0xe73
	.byte	0x1
	.4byte	.LLST57
	.uleb128 0x55
	.string	"ptr"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x15f3
	.4byte	.LLST58
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x56
	.4byte	0xc7d
	.2byte	0x122
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1612
	.4byte	0x162f
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0x12fa
	.byte	0x1
	.4byte	.LLST59
	.uleb128 0x57
	.string	"ptr"
	.byte	0x1
	.2byte	0x122
	.4byte	0x162f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x56
	.4byte	0xca2
	.2byte	0x126
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x164e
	.4byte	0x166b
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0x12fa
	.byte	0x1
	.4byte	.LLST60
	.uleb128 0x57
	.string	"ptr"
	.byte	0x1
	.2byte	0x126
	.4byte	0x166b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x56
	.4byte	0xcc7
	.2byte	0x12a
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x168a
	.4byte	0x16a7
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0x12fa
	.byte	0x1
	.4byte	.LLST61
	.uleb128 0x57
	.string	"ptr"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x16a7
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x56
	.4byte	0xcec
	.2byte	0x12e
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x16c6
	.4byte	0x16e3
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0x12fa
	.byte	0x1
	.4byte	.LLST62
	.uleb128 0x57
	.string	"ptr"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x16e3
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x56
	.4byte	0xd11
	.2byte	0x132
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1702
	.4byte	0x171f
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0x12fa
	.byte	0x1
	.4byte	.LLST63
	.uleb128 0x57
	.string	"ptr"
	.byte	0x1
	.2byte	0x132
	.4byte	0x171f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x56
	.4byte	0xd36
	.2byte	0x136
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x173e
	.4byte	0x175b
	.uleb128 0x4d
	.4byte	.LASF174
	.4byte	0x12fa
	.byte	0x1
	.4byte	.LLST64
	.uleb128 0x57
	.string	"ptr"
	.byte	0x1
	.2byte	0x136
	.4byte	0x175b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x19
	.4byte	0xd98
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x190
	.4byte	.LASF206
	.4byte	0x59
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST65
	.4byte	0x17fc
	.uleb128 0x53
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x190
	.4byte	0x17fc
	.4byte	.LLST66
	.uleb128 0x53
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x190
	.4byte	0x59
	.4byte	.LLST67
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x190
	.uleb128 0x59
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x191
	.4byte	0x59
	.4byte	.LLST68
	.uleb128 0x5a
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x192
	.4byte	0x95d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x54
	.string	"lr"
	.byte	0x1
	.2byte	0x192
	.4byte	0x95d
	.4byte	.LLST69
	.uleb128 0x59
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x192
	.4byte	0x1802
	.4byte	.LLST70
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x1b0
	.uleb128 0x59
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x1802
	.4byte	.LLST71
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x49
	.uleb128 0xf
	.byte	0x4
	.4byte	0x95d
	.uleb128 0x30
	.4byte	0xe03
	.byte	0x3
	.4byte	0x1816
	.4byte	0x188b
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	0xeb5
	.byte	0x1
	.uleb128 0x34
	.uleb128 0x5b
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x149
	.4byte	0x59
	.uleb128 0x5b
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x14a
	.4byte	0x189b
	.uleb128 0x5b
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x14b
	.4byte	0x59
	.uleb128 0x5b
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x14d
	.4byte	0x18a0
	.uleb128 0x5b
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x14e
	.4byte	0x59
	.uleb128 0x5c
	.4byte	0x186d
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x59
	.byte	0
	.uleb128 0x5c
	.4byte	0x187d
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.2byte	0x157
	.4byte	0x758
	.byte	0
	.uleb128 0x34
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.2byte	0x170
	.4byte	0x758
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x758
	.4byte	0x189b
	.uleb128 0xc
	.4byte	0x34
	.byte	0x29
	.byte	0
	.uleb128 0x19
	.4byte	0x188b
	.uleb128 0xb
	.4byte	0x49
	.4byte	0x18b0
	.uleb128 0xc
	.4byte	0x34
	.byte	0x7
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x188
	.4byte	.LASF218
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST72
	.4byte	0x1b5e
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x1c8
	.uleb128 0x5a
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x189
	.4byte	0xd9e
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x45
	.4byte	0x10f9
	.4byte	.LBB205
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x189
	.4byte	0x192f
	.uleb128 0x3f
	.4byte	0x1107
	.byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.uleb128 0x45
	.4byte	0xe78
	.4byte	.LBB207
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x1
	.2byte	0x13f
	.4byte	0x191f
	.uleb128 0x3f
	.4byte	0xe87
	.byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.byte	0
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x250
	.uleb128 0x48
	.4byte	0x1112
	.4byte	.LLST73
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x1808
	.4byte	.LBB233
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x1
	.2byte	0x18a
	.4byte	0x1b24
	.uleb128 0x41
	.4byte	0x1816
	.4byte	.LLST74
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x2a0
	.uleb128 0x48
	.4byte	0x1821
	.4byte	.LLST75
	.uleb128 0x5e
	.4byte	0x182d
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x5e
	.4byte	0x1845
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x48
	.4byte	0x1851
	.4byte	.LLST76
	.uleb128 0x48
	.4byte	0x1839
	.4byte	.LLST77
	.uleb128 0x5f
	.4byte	.LBB235
	.4byte	.LBE235
	.4byte	0x1995
	.uleb128 0x48
	.4byte	0x1862
	.4byte	.LLST78
	.byte	0
	.uleb128 0x45
	.4byte	0xf22
	.4byte	.LBB236
	.4byte	.Ldebug_ranges0+0x2c8
	.byte	0x1
	.2byte	0x154
	.4byte	0x19c5
	.uleb128 0x41
	.4byte	0xf3b
	.4byte	.LLST79
	.uleb128 0x41
	.4byte	0xf46
	.4byte	.LLST80
	.uleb128 0x41
	.4byte	0xf31
	.4byte	.LLST81
	.byte	0
	.uleb128 0x60
	.4byte	.Ldebug_ranges0+0x2e8
	.4byte	0x19d8
	.uleb128 0x48
	.4byte	0x1872
	.4byte	.LLST82
	.byte	0
	.uleb128 0x60
	.4byte	.Ldebug_ranges0+0x310
	.4byte	0x1a66
	.uleb128 0x48
	.4byte	0x187e
	.4byte	.LLST83
	.uleb128 0x45
	.4byte	0xede
	.4byte	.LBB247
	.4byte	.Ldebug_ranges0+0x330
	.byte	0x1
	.2byte	0x170
	.4byte	0x1a33
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST84
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST85
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x348
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST86
	.uleb128 0x4e
	.4byte	.LBB250
	.4byte	.LBE250
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST87
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0xede
	.4byte	.LBB253
	.4byte	.Ldebug_ranges0+0x360
	.byte	0x1
	.2byte	0x171
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST88
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST89
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x378
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST90
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	0xede
	.4byte	.LBB259
	.4byte	.LBE259
	.byte	0x1
	.2byte	0x16f
	.4byte	0x1ab3
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST91
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST92
	.uleb128 0x4e
	.4byte	.LBB260
	.4byte	.LBE260
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST93
	.uleb128 0x4e
	.4byte	.LBB262
	.4byte	.LBE262
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST87
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0xf52
	.4byte	.LBB265
	.4byte	.Ldebug_ranges0+0x390
	.byte	0x1
	.2byte	0x179
	.uleb128 0x46
	.4byte	0xf6a
	.uleb128 0x46
	.4byte	0xf60
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x3b0
	.uleb128 0x48
	.4byte	0xf77
	.4byte	.LLST94
	.uleb128 0x47
	.4byte	0xede
	.4byte	.LBB267
	.4byte	.Ldebug_ranges0+0x3d0
	.byte	0x1
	.2byte	0x180
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST95
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST96
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x3e8
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST97
	.uleb128 0x4e
	.4byte	.LBB270
	.4byte	.LBE270
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST87
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	0xe92
	.4byte	.LBB281
	.4byte	.LBE281
	.byte	0x1
	.2byte	0x18a
	.4byte	0x1b42
	.uleb128 0x41
	.4byte	0xea0
	.4byte	.LLST98
	.byte	0
	.uleb128 0x62
	.4byte	0xe92
	.4byte	.LBB287
	.4byte	.LBE287
	.byte	0x1
	.2byte	0x18a
	.uleb128 0x41
	.4byte	0xea0
	.4byte	.LLST99
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1ae
	.4byte	.LASF207
	.4byte	0x59
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST100
	.4byte	0x20d1
	.uleb128 0x53
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x59
	.4byte	.LLST101
	.uleb128 0x53
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x976
	.4byte	.LLST102
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x400
	.uleb128 0x5a
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1af
	.4byte	0x95d
	.byte	0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x95d
	.uleb128 0x63
	.string	"y"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x95d
	.byte	0x1
	.uleb128 0x59
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1af
	.4byte	0x95d
	.4byte	.LLST103
	.uleb128 0x5a
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x18a0
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x59
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x59
	.4byte	.LLST104
	.uleb128 0x54
	.string	"ptr"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xe49
	.4byte	.LLST105
	.uleb128 0x59
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xe49
	.4byte	.LLST106
	.uleb128 0x5f
	.4byte	.LBB366
	.4byte	.LBE366
	.4byte	0x1c35
	.uleb128 0x54
	.string	"i"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x59
	.4byte	.LLST107
	.byte	0
	.uleb128 0x45
	.4byte	0x10f9
	.4byte	.LBB367
	.4byte	.Ldebug_ranges0+0x428
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x1c80
	.uleb128 0x41
	.4byte	0x1107
	.4byte	.LLST108
	.uleb128 0x45
	.4byte	0xe78
	.4byte	.LBB369
	.4byte	.Ldebug_ranges0+0x448
	.byte	0x1
	.2byte	0x13f
	.4byte	0x1c70
	.uleb128 0x41
	.4byte	0xe87
	.4byte	.LLST109
	.byte	0
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x468
	.uleb128 0x48
	.4byte	0x1112
	.4byte	.LLST110
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x1808
	.4byte	.LBB382
	.4byte	.Ldebug_ranges0+0x480
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x1e75
	.uleb128 0x41
	.4byte	0x1816
	.4byte	.LLST111
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x4c8
	.uleb128 0x48
	.4byte	0x1821
	.4byte	.LLST112
	.uleb128 0x5e
	.4byte	0x182d
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x5e
	.4byte	0x1845
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x48
	.4byte	0x1851
	.4byte	.LLST113
	.uleb128 0x48
	.4byte	0x1839
	.4byte	.LLST114
	.uleb128 0x5f
	.4byte	.LBB384
	.4byte	.LBE384
	.4byte	0x1ce6
	.uleb128 0x48
	.4byte	0x1862
	.4byte	.LLST115
	.byte	0
	.uleb128 0x60
	.4byte	.Ldebug_ranges0+0x510
	.4byte	0x1cf9
	.uleb128 0x48
	.4byte	0x1872
	.4byte	.LLST116
	.byte	0
	.uleb128 0x45
	.4byte	0xf22
	.4byte	.LBB387
	.4byte	.Ldebug_ranges0+0x540
	.byte	0x1
	.2byte	0x154
	.4byte	0x1d29
	.uleb128 0x41
	.4byte	0xf3b
	.4byte	.LLST117
	.uleb128 0x41
	.4byte	0xf46
	.4byte	.LLST118
	.uleb128 0x41
	.4byte	0xf31
	.4byte	.LLST119
	.byte	0
	.uleb128 0x60
	.4byte	.Ldebug_ranges0+0x558
	.4byte	0x1db7
	.uleb128 0x48
	.4byte	0x187e
	.4byte	.LLST120
	.uleb128 0x45
	.4byte	0xede
	.4byte	.LBB395
	.4byte	.Ldebug_ranges0+0x578
	.byte	0x1
	.2byte	0x170
	.4byte	0x1d84
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST121
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST122
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x590
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST123
	.uleb128 0x4e
	.4byte	.LBB398
	.4byte	.LBE398
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0xede
	.4byte	.LBB401
	.4byte	.Ldebug_ranges0+0x5a8
	.byte	0x1
	.2byte	0x171
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST125
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST126
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x5c0
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST127
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	0xede
	.4byte	.LBB407
	.4byte	.LBE407
	.byte	0x1
	.2byte	0x16f
	.4byte	0x1e04
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST128
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST129
	.uleb128 0x4e
	.4byte	.LBB408
	.4byte	.LBE408
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST130
	.uleb128 0x4e
	.4byte	.LBB410
	.4byte	.LBE410
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0xf52
	.4byte	.LBB413
	.4byte	.Ldebug_ranges0+0x5d8
	.byte	0x1
	.2byte	0x179
	.uleb128 0x46
	.4byte	0xf6a
	.uleb128 0x46
	.4byte	0xf60
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x5f8
	.uleb128 0x48
	.4byte	0xf77
	.4byte	.LLST131
	.uleb128 0x47
	.4byte	0xede
	.4byte	.LBB415
	.4byte	.Ldebug_ranges0+0x618
	.byte	0x1
	.2byte	0x180
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST132
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST133
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x630
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST134
	.uleb128 0x4e
	.4byte	.LBB418
	.4byte	.LBE418
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x10f9
	.4byte	.LBB435
	.4byte	.Ldebug_ranges0+0x648
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x1ec0
	.uleb128 0x41
	.4byte	0x1107
	.4byte	.LLST135
	.uleb128 0x45
	.4byte	0xe78
	.4byte	.LBB437
	.4byte	.Ldebug_ranges0+0x670
	.byte	0x1
	.2byte	0x13f
	.4byte	0x1eb0
	.uleb128 0x41
	.4byte	0xe87
	.4byte	.LLST135
	.byte	0
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x6b0
	.uleb128 0x48
	.4byte	0x1112
	.4byte	.LLST137
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	0x1808
	.4byte	.LBB467
	.4byte	.Ldebug_ranges0+0x6d8
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x20b5
	.uleb128 0x41
	.4byte	0x1816
	.4byte	.LLST138
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x6f8
	.uleb128 0x48
	.4byte	0x1821
	.4byte	.LLST139
	.uleb128 0x5e
	.4byte	0x182d
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x5e
	.4byte	0x1845
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x48
	.4byte	0x1851
	.4byte	.LLST140
	.uleb128 0x48
	.4byte	0x1839
	.4byte	.LLST114
	.uleb128 0x5f
	.4byte	.LBB469
	.4byte	.LBE469
	.4byte	0x1f26
	.uleb128 0x48
	.4byte	0x1862
	.4byte	.LLST141
	.byte	0
	.uleb128 0x45
	.4byte	0xf22
	.4byte	.LBB470
	.4byte	.Ldebug_ranges0+0x718
	.byte	0x1
	.2byte	0x154
	.4byte	0x1f56
	.uleb128 0x41
	.4byte	0xf3b
	.4byte	.LLST142
	.uleb128 0x41
	.4byte	0xf46
	.4byte	.LLST118
	.uleb128 0x41
	.4byte	0xf31
	.4byte	.LLST119
	.byte	0
	.uleb128 0x60
	.4byte	.Ldebug_ranges0+0x738
	.4byte	0x1f69
	.uleb128 0x48
	.4byte	0x1872
	.4byte	.LLST143
	.byte	0
	.uleb128 0x60
	.4byte	.Ldebug_ranges0+0x758
	.4byte	0x1ff7
	.uleb128 0x48
	.4byte	0x187e
	.4byte	.LLST144
	.uleb128 0x45
	.4byte	0xede
	.4byte	.LBB480
	.4byte	.Ldebug_ranges0+0x778
	.byte	0x1
	.2byte	0x170
	.4byte	0x1fc4
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST121
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST122
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x790
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST146
	.uleb128 0x4e
	.4byte	.LBB483
	.4byte	.LBE483
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0xede
	.4byte	.LBB486
	.4byte	.Ldebug_ranges0+0x7a8
	.byte	0x1
	.2byte	0x171
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST125
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST126
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x7c0
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST147
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	0xede
	.4byte	.LBB492
	.4byte	.LBE492
	.byte	0x1
	.2byte	0x16f
	.4byte	0x2044
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST128
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST129
	.uleb128 0x4e
	.4byte	.LBB493
	.4byte	.LBE493
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST148
	.uleb128 0x4e
	.4byte	.LBB495
	.4byte	.LBE495
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0xf52
	.4byte	.LBB498
	.4byte	.Ldebug_ranges0+0x7d8
	.byte	0x1
	.2byte	0x179
	.uleb128 0x46
	.4byte	0xf6a
	.uleb128 0x46
	.4byte	0xf60
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x7f8
	.uleb128 0x48
	.4byte	0xf77
	.4byte	.LLST149
	.uleb128 0x47
	.4byte	0xede
	.4byte	.LBB500
	.4byte	.Ldebug_ranges0+0x818
	.byte	0x1
	.2byte	0x180
	.uleb128 0x41
	.4byte	0xef7
	.4byte	.LLST150
	.uleb128 0x41
	.4byte	0xeed
	.4byte	.LLST133
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x830
	.uleb128 0x48
	.4byte	0xf03
	.4byte	.LLST152
	.uleb128 0x4e
	.4byte	.LBB503
	.4byte	.LBE503
	.uleb128 0x48
	.4byte	0xf0f
	.4byte	.LLST124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	0xe92
	.4byte	.LBB516
	.4byte	.Ldebug_ranges0+0x848
	.byte	0x1
	.2byte	0x1c5
	.uleb128 0x41
	.4byte	0xea0
	.4byte	.LLST153
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x64
	.4byte	.LASF211
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x64
	.4byte	.LASF212
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x65
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x18e
	.4byte	0xd9e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	exttestptr
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
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2
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
	.uleb128 0x20
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x32
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2
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
	.uleb128 0x29
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x3e
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
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
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
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x5e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x62
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
	.uleb128 0x63
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.4byte	.LFB11
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI1
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB12
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB13
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB14
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI7
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB19
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI13
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB65
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18
	.4byte	.LFE65
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xa
	.2byte	0xffff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE65
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB29
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI20
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB30
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI22
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB31
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI24
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI26
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LFB33
	.4byte	.LCFI27
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27
	.4byte	.LCFI28
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI28
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL67
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB34
	.4byte	.LCFI29
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29
	.4byte	.LCFI30
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI30
	.4byte	.LCFI31
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69-1
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL69-1
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL72
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB35
	.4byte	.LCFI32
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32
	.4byte	.LCFI33
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI33
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL76
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB36
	.4byte	.LCFI34
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34
	.4byte	.LCFI35
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI35
	.4byte	.LCFI36
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78-1
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL78-1
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL81
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB37
	.4byte	.LCFI37
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37
	.4byte	.LCFI38
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI38
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL87
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB38
	.4byte	.LCFI39
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39
	.4byte	.LCFI40
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI40
	.4byte	.LFE38
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL92
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB39
	.4byte	.LCFI41
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41
	.4byte	.LCFI42
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI42
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL93
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96-1
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL99
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LFB40
	.4byte	.LCFI43
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI43
	.4byte	.LCFI44
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI44
	.4byte	.LFE40
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL100
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103-1
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL106
	.4byte	.LFE40
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB41
	.4byte	.LCFI45
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45
	.4byte	.LCFI46
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI46
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL111
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LFB57
	.4byte	.LCFI47
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47
	.4byte	.LCFI48
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI48
	.4byte	.LCFI49
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49
	.4byte	.LCFI50
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI50
	.4byte	.LCFI51
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51
	.4byte	.LFE57
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL124
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL124
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE57
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.4byte	.LVL139
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LFB56
	.4byte	.LCFI52
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52
	.4byte	.LCFI53
	.2byte	0x3
	.byte	0x71
	.sleb128 336
	.4byte	.LCFI53
	.4byte	.LCFI54
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54
	.4byte	.LFE56
	.2byte	0x3
	.byte	0x71
	.sleb128 336
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL146
	.4byte	.LVL187
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LFE56
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LFE56
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL147
	.4byte	.LVL187
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LFE56
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL152
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL191
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL152
	.4byte	.LVL187
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LFE56
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL152
	.4byte	.LVL187
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LFE56
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL167
	.4byte	.LVL175
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6481
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL167
	.4byte	.LVL175
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6481
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL163
	.4byte	.LVL187
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6481
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL163
	.4byte	.LVL187
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL164
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL176
	.4byte	.LVL187
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6866
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL176
	.4byte	.LVL187
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LFB58
	.4byte	.LCFI55
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55
	.4byte	.LCFI56
	.2byte	0x3
	.byte	0x71
	.sleb128 568
	.4byte	.LCFI56
	.4byte	.LCFI57
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57
	.4byte	.LFE58
	.2byte	0x3
	.byte	0x71
	.sleb128 568
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL192
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL194
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL198
	.4byte	.LFE58
	.2byte	0x4
	.byte	0x91
	.sleb128 -496
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL199
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL210
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL257
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL313
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL250
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL256
	.4byte	.LVL260
	.2byte	0x3
	.byte	0x8e
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL302
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL313
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL211
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL211
	.4byte	.LVL217
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL224
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227
	.4byte	.LVL228-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL228
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL307
	.4byte	.LVL313
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LFE58
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL213
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL212
	.4byte	.LVL313
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LFE58
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL213
	.4byte	.LVL215
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL219
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL298
	.4byte	.LVL300
	.2byte	0x4
	.byte	0x91
	.sleb128 -140
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL313
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL314
	.4byte	.LFE58
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL219
	.4byte	.LVL313
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LFE58
	.2byte	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL219
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL265
	.4byte	.LVL301
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL232
	.4byte	.LVL242
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7330
	.sleb128 0
	.4byte	.LVL279
	.4byte	.LVL289
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7906
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL279
	.4byte	.LVL289
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL236
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL239
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL283
	.4byte	.LVL286
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL296
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7330
	.sleb128 0
	.4byte	.LVL284
	.4byte	.LVL286
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7906
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL284
	.4byte	.LVL286
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL228
	.4byte	.LVL275
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7330
	.sleb128 0
	.4byte	.LVL275
	.4byte	.LVL301
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7906
	.sleb128 0
	.4byte	.LVL301
	.4byte	.LVL307
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7330
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL228
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL275
	.4byte	.LVL301
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL229
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL236
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL243
	.4byte	.LVL307
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7715
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL290
	.4byte	.LVL301
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL246
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL250
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL256
	.4byte	.LVL260
	.2byte	0x3
	.byte	0x8e
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL302
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL258
	.4byte	.LVL301
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x6
	.byte	0x3
	.4byte	exttestptr
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL258
	.4byte	.LVL264
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL271
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL274
	.4byte	.LVL275-1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL275
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL259
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL262
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL259
	.4byte	.LVL262
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL265
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL298
	.4byte	.LVL300
	.2byte	0x4
	.byte	0x91
	.sleb128 -140
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL284
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL283
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x5
	.byte	0x3
	.4byte	exttestptr+12
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL284
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x5
	.byte	0x3
	.4byte	exttestptr+12
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL276
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL283
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x5
	.byte	0x3
	.4byte	exttestptr+12
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL290
	.4byte	.LVL301
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+8291
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL293
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x3
	.byte	0x8f
	.sleb128 -28
	.byte	0x9f
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	0
	.4byte	0
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	0
	.4byte	0
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB126
	.4byte	.LBE126
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	0
	.4byte	0
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	0
	.4byte	0
	.4byte	.LBB141
	.4byte	.LBE141
	.4byte	.LBB146
	.4byte	.LBE146
	.4byte	0
	.4byte	0
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	.LBB148
	.4byte	.LBE148
	.4byte	0
	.4byte	0
	.4byte	.LBB149
	.4byte	.LBE149
	.4byte	.LBB150
	.4byte	.LBE150
	.4byte	0
	.4byte	0
	.4byte	.LBB151
	.4byte	.LBE151
	.4byte	.LBB152
	.4byte	.LBE152
	.4byte	.LBB153
	.4byte	.LBE153
	.4byte	0
	.4byte	0
	.4byte	.LBB154
	.4byte	.LBE154
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	0
	.4byte	0
	.4byte	.LBB157
	.4byte	.LBE157
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	.LBB163
	.4byte	.LBE163
	.4byte	0
	.4byte	0
	.4byte	.LBB159
	.4byte	.LBE159
	.4byte	.LBB160
	.4byte	.LBE160
	.4byte	0
	.4byte	0
	.4byte	.LBB204
	.4byte	.LBE204
	.4byte	.LBB291
	.4byte	.LBE291
	.4byte	.LBB292
	.4byte	.LBE292
	.4byte	.LBB293
	.4byte	.LBE293
	.4byte	0
	.4byte	0
	.4byte	.LBB205
	.4byte	.LBE205
	.4byte	.LBB231
	.4byte	.LBE231
	.4byte	.LBB232
	.4byte	.LBE232
	.4byte	.LBB285
	.4byte	.LBE285
	.4byte	0
	.4byte	0
	.4byte	.LBB207
	.4byte	.LBE207
	.4byte	.LBB219
	.4byte	.LBE219
	.4byte	.LBB221
	.4byte	.LBE221
	.4byte	.LBB223
	.4byte	.LBE223
	.4byte	.LBB225
	.4byte	.LBE225
	.4byte	.LBB226
	.4byte	.LBE226
	.4byte	0
	.4byte	0
	.4byte	.LBB215
	.4byte	.LBE215
	.4byte	.LBB216
	.4byte	.LBE216
	.4byte	.LBB217
	.4byte	.LBE217
	.4byte	.LBB218
	.4byte	.LBE218
	.4byte	0
	.4byte	0
	.4byte	.LBB233
	.4byte	.LBE233
	.4byte	.LBB284
	.4byte	.LBE284
	.4byte	.LBB286
	.4byte	.LBE286
	.4byte	.LBB290
	.4byte	.LBE290
	.4byte	0
	.4byte	0
	.4byte	.LBB234
	.4byte	.LBE234
	.4byte	.LBB278
	.4byte	.LBE278
	.4byte	.LBB279
	.4byte	.LBE279
	.4byte	.LBB280
	.4byte	.LBE280
	.4byte	0
	.4byte	0
	.4byte	.LBB236
	.4byte	.LBE236
	.4byte	.LBB241
	.4byte	.LBE241
	.4byte	.LBB243
	.4byte	.LBE243
	.4byte	0
	.4byte	0
	.4byte	.LBB240
	.4byte	.LBE240
	.4byte	.LBB242
	.4byte	.LBE242
	.4byte	.LBB244
	.4byte	.LBE244
	.4byte	.LBB245
	.4byte	.LBE245
	.4byte	0
	.4byte	0
	.4byte	.LBB246
	.4byte	.LBE246
	.4byte	.LBB258
	.4byte	.LBE258
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	0
	.4byte	0
	.4byte	.LBB247
	.4byte	.LBE247
	.4byte	.LBB256
	.4byte	.LBE256
	.4byte	0
	.4byte	0
	.4byte	.LBB248
	.4byte	.LBE248
	.4byte	.LBB252
	.4byte	.LBE252
	.4byte	0
	.4byte	0
	.4byte	.LBB253
	.4byte	.LBE253
	.4byte	.LBB257
	.4byte	.LBE257
	.4byte	0
	.4byte	0
	.4byte	.LBB254
	.4byte	.LBE254
	.4byte	.LBB255
	.4byte	.LBE255
	.4byte	0
	.4byte	0
	.4byte	.LBB265
	.4byte	.LBE265
	.4byte	.LBB276
	.4byte	.LBE276
	.4byte	.LBB277
	.4byte	.LBE277
	.4byte	0
	.4byte	0
	.4byte	.LBB266
	.4byte	.LBE266
	.4byte	.LBB274
	.4byte	.LBE274
	.4byte	.LBB275
	.4byte	.LBE275
	.4byte	0
	.4byte	0
	.4byte	.LBB267
	.4byte	.LBE267
	.4byte	.LBB273
	.4byte	.LBE273
	.4byte	0
	.4byte	0
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	.LBB272
	.4byte	.LBE272
	.4byte	0
	.4byte	0
	.4byte	.LBB365
	.4byte	.LBE365
	.4byte	.LBB526
	.4byte	.LBE526
	.4byte	.LBB527
	.4byte	.LBE527
	.4byte	.LBB528
	.4byte	.LBE528
	.4byte	0
	.4byte	0
	.4byte	.LBB367
	.4byte	.LBE367
	.4byte	.LBB381
	.4byte	.LBE381
	.4byte	.LBB524
	.4byte	.LBE524
	.4byte	0
	.4byte	0
	.4byte	.LBB369
	.4byte	.LBE369
	.4byte	.LBB373
	.4byte	.LBE373
	.4byte	.LBB377
	.4byte	.LBE377
	.4byte	0
	.4byte	0
	.4byte	.LBB375
	.4byte	.LBE375
	.4byte	.LBB376
	.4byte	.LBE376
	.4byte	0
	.4byte	0
	.4byte	.LBB382
	.4byte	.LBE382
	.4byte	.LBB433
	.4byte	.LBE433
	.4byte	.LBB434
	.4byte	.LBE434
	.4byte	.LBB463
	.4byte	.LBE463
	.4byte	.LBB465
	.4byte	.LBE465
	.4byte	.LBB514
	.4byte	.LBE514
	.4byte	.LBB523
	.4byte	.LBE523
	.4byte	.LBB525
	.4byte	.LBE525
	.4byte	0
	.4byte	0
	.4byte	.LBB383
	.4byte	.LBE383
	.4byte	.LBB426
	.4byte	.LBE426
	.4byte	.LBB427
	.4byte	.LBE427
	.4byte	.LBB428
	.4byte	.LBE428
	.4byte	.LBB429
	.4byte	.LBE429
	.4byte	.LBB430
	.4byte	.LBE430
	.4byte	.LBB431
	.4byte	.LBE431
	.4byte	.LBB432
	.4byte	.LBE432
	.4byte	0
	.4byte	0
	.4byte	.LBB385
	.4byte	.LBE385
	.4byte	.LBB386
	.4byte	.LBE386
	.4byte	.LBB390
	.4byte	.LBE390
	.4byte	.LBB392
	.4byte	.LBE392
	.4byte	.LBB393
	.4byte	.LBE393
	.4byte	0
	.4byte	0
	.4byte	.LBB387
	.4byte	.LBE387
	.4byte	.LBB391
	.4byte	.LBE391
	.4byte	0
	.4byte	0
	.4byte	.LBB394
	.4byte	.LBE394
	.4byte	.LBB406
	.4byte	.LBE406
	.4byte	.LBB412
	.4byte	.LBE412
	.4byte	0
	.4byte	0
	.4byte	.LBB395
	.4byte	.LBE395
	.4byte	.LBB404
	.4byte	.LBE404
	.4byte	0
	.4byte	0
	.4byte	.LBB396
	.4byte	.LBE396
	.4byte	.LBB400
	.4byte	.LBE400
	.4byte	0
	.4byte	0
	.4byte	.LBB401
	.4byte	.LBE401
	.4byte	.LBB405
	.4byte	.LBE405
	.4byte	0
	.4byte	0
	.4byte	.LBB402
	.4byte	.LBE402
	.4byte	.LBB403
	.4byte	.LBE403
	.4byte	0
	.4byte	0
	.4byte	.LBB413
	.4byte	.LBE413
	.4byte	.LBB424
	.4byte	.LBE424
	.4byte	.LBB425
	.4byte	.LBE425
	.4byte	0
	.4byte	0
	.4byte	.LBB414
	.4byte	.LBE414
	.4byte	.LBB422
	.4byte	.LBE422
	.4byte	.LBB423
	.4byte	.LBE423
	.4byte	0
	.4byte	0
	.4byte	.LBB415
	.4byte	.LBE415
	.4byte	.LBB421
	.4byte	.LBE421
	.4byte	0
	.4byte	0
	.4byte	.LBB416
	.4byte	.LBE416
	.4byte	.LBB420
	.4byte	.LBE420
	.4byte	0
	.4byte	0
	.4byte	.LBB435
	.4byte	.LBE435
	.4byte	.LBB464
	.4byte	.LBE464
	.4byte	.LBB466
	.4byte	.LBE466
	.4byte	.LBB515
	.4byte	.LBE515
	.4byte	0
	.4byte	0
	.4byte	.LBB437
	.4byte	.LBE437
	.4byte	.LBB445
	.4byte	.LBE445
	.4byte	.LBB446
	.4byte	.LBE446
	.4byte	.LBB452
	.4byte	.LBE452
	.4byte	.LBB454
	.4byte	.LBE454
	.4byte	.LBB456
	.4byte	.LBE456
	.4byte	.LBB458
	.4byte	.LBE458
	.4byte	0
	.4byte	0
	.4byte	.LBB448
	.4byte	.LBE448
	.4byte	.LBB449
	.4byte	.LBE449
	.4byte	.LBB450
	.4byte	.LBE450
	.4byte	.LBB451
	.4byte	.LBE451
	.4byte	0
	.4byte	0
	.4byte	.LBB467
	.4byte	.LBE467
	.4byte	.LBB513
	.4byte	.LBE513
	.4byte	.LBB522
	.4byte	.LBE522
	.4byte	0
	.4byte	0
	.4byte	.LBB468
	.4byte	.LBE468
	.4byte	.LBB511
	.4byte	.LBE511
	.4byte	.LBB512
	.4byte	.LBE512
	.4byte	0
	.4byte	0
	.4byte	.LBB470
	.4byte	.LBE470
	.4byte	.LBB474
	.4byte	.LBE474
	.4byte	.LBB476
	.4byte	.LBE476
	.4byte	0
	.4byte	0
	.4byte	.LBB475
	.4byte	.LBE475
	.4byte	.LBB477
	.4byte	.LBE477
	.4byte	.LBB478
	.4byte	.LBE478
	.4byte	0
	.4byte	0
	.4byte	.LBB479
	.4byte	.LBE479
	.4byte	.LBB491
	.4byte	.LBE491
	.4byte	.LBB497
	.4byte	.LBE497
	.4byte	0
	.4byte	0
	.4byte	.LBB480
	.4byte	.LBE480
	.4byte	.LBB489
	.4byte	.LBE489
	.4byte	0
	.4byte	0
	.4byte	.LBB481
	.4byte	.LBE481
	.4byte	.LBB485
	.4byte	.LBE485
	.4byte	0
	.4byte	0
	.4byte	.LBB486
	.4byte	.LBE486
	.4byte	.LBB490
	.4byte	.LBE490
	.4byte	0
	.4byte	0
	.4byte	.LBB487
	.4byte	.LBE487
	.4byte	.LBB488
	.4byte	.LBE488
	.4byte	0
	.4byte	0
	.4byte	.LBB498
	.4byte	.LBE498
	.4byte	.LBB509
	.4byte	.LBE509
	.4byte	.LBB510
	.4byte	.LBE510
	.4byte	0
	.4byte	0
	.4byte	.LBB499
	.4byte	.LBE499
	.4byte	.LBB507
	.4byte	.LBE507
	.4byte	.LBB508
	.4byte	.LBE508
	.4byte	0
	.4byte	0
	.4byte	.LBB500
	.4byte	.LBE500
	.4byte	.LBB506
	.4byte	.LBE506
	.4byte	0
	.4byte	0
	.4byte	.LBB501
	.4byte	.LBE501
	.4byte	.LBB505
	.4byte	.LBE505
	.4byte	0
	.4byte	0
	.4byte	.LBB516
	.4byte	.LBE516
	.4byte	.LBB521
	.4byte	.LBE521
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF161:
	.string	"_ZNK11fileDataPtrgtERKi"
.LASF188:
	.string	"operator new []"
.LASF206:
	.string	"_Z9backtracePPvi"
.LASF157:
	.string	"_ZNK11fileDataPtrneERKi"
.LASF34:
	.string	"_on_exit_args"
.LASF130:
	.string	"_ZN11fileDataPtr9setBufferEPci"
.LASF72:
	.string	"_wctomb_state"
.LASF180:
	.string	"buffer"
.LASF132:
	.string	"_ZNK11fileDataPtrcvKiEv"
.LASF69:
	.string	"_r48"
.LASF74:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF202:
	.string	"next"
.LASF159:
	.string	"_ZNK11fileDataPtrltERKi"
.LASF48:
	.string	"_lbfsize"
.LASF46:
	.string	"_flags"
.LASF178:
	.string	"index"
.LASF123:
	.string	"inMem"
.LASF85:
	.string	"_errno"
.LASF170:
	.string	"test"
.LASF198:
	.string	"backtrace"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF50:
	.string	"_read"
.LASF76:
	.string	"_mbrlen_state"
.LASF193:
	.string	"_ZdaPv"
.LASF87:
	.string	"_stdout"
.LASF8:
	.string	"_fpos_t"
.LASF41:
	.string	"_fns"
.LASF49:
	.string	"_cookie"
.LASF23:
	.string	"_Bigint"
.LASF31:
	.string	"__tm_wday"
.LASF153:
	.string	"_ZN11fileDataPtraSERKi"
.LASF95:
	.string	"_result"
.LASF117:
	.string	"uint32_t"
.LASF27:
	.string	"__tm_hour"
.LASF13:
	.string	"__count"
.LASF118:
	.string	"float"
.LASF26:
	.string	"__tm_min"
.LASF82:
	.string	"_nextf"
.LASF165:
	.string	"_ZNK11fileDataPtrgeERKi"
.LASF205:
	.string	"__main"
.LASF78:
	.string	"_mbsrtowcs_state"
.LASF96:
	.string	"_result_k"
.LASF6:
	.string	"long long unsigned int"
.LASF65:
	.string	"_asctime_buf"
.LASF111:
	.string	"_rand48"
.LASF45:
	.string	"__sFILE"
.LASF22:
	.string	"_wds"
.LASF192:
	.string	"operator delete []"
.LASF107:
	.string	"__FILE"
.LASF57:
	.string	"_offset"
.LASF125:
	.string	"fileDataPtr"
.LASF90:
	.string	"_emergency"
.LASF176:
	.string	"__initialize_p"
.LASF163:
	.string	"_ZNK11fileDataPtrleERKi"
.LASF7:
	.string	"size_t"
.LASF129:
	.string	"_ZN11fileDataPtr7setFileEPKc"
.LASF25:
	.string	"__tm_sec"
.LASF32:
	.string	"__tm_yday"
.LASF89:
	.string	"_inc"
.LASF40:
	.string	"_ind"
.LASF127:
	.string	"setFile"
.LASF144:
	.string	"operator+="
.LASF19:
	.string	"_next"
.LASF133:
	.string	"_ZN11fileDataPtrcvKiEv"
.LASF172:
	.string	"_ZN11testfileptr4testEv"
.LASF138:
	.string	"operator++"
.LASF196:
	.string	"plus"
.LASF14:
	.string	"__value"
.LASF97:
	.string	"_p5s"
.LASF216:
	.string	"10_mbstate_t"
.LASF80:
	.string	"_wcsrtombs_state"
.LASF70:
	.string	"_mblen_state"
.LASF106:
	.string	"char"
.LASF28:
	.string	"__tm_mday"
.LASF103:
	.string	"_sig_func"
.LASF77:
	.string	"_mbrtowc_state"
.LASF102:
	.string	"_atexit0"
.LASF195:
	.string	"filename"
.LASF16:
	.string	"_flock_t"
.LASF120:
	.string	"file"
.LASF11:
	.string	"__wch"
.LASF110:
	.string	"_iobs"
.LASF135:
	.string	"_ZN11fileDataPtrdeEv"
.LASF186:
	.string	"pMem"
.LASF53:
	.string	"_close"
.LASF93:
	.string	"__sdidinit"
.LASF86:
	.string	"_stdin"
.LASF67:
	.string	"_gamma_signgam"
.LASF177:
	.string	"__priority"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"_base"
.LASF98:
	.string	"_freelist"
.LASF113:
	.string	"_mult"
.LASF17:
	.string	"__ULong"
.LASF141:
	.string	"operator--"
.LASF185:
	.string	"_ZdlPv"
.LASF79:
	.string	"_wcrtomb_state"
.LASF149:
	.string	"_ZN11fileDataPtrplERKi"
.LASF47:
	.string	"_file"
.LASF146:
	.string	"operator-="
.LASF171:
	.string	"checkString"
.LASF134:
	.string	"operator*"
.LASF148:
	.string	"operator+"
.LASF150:
	.string	"operator-"
.LASF94:
	.string	"__cleanup"
.LASF190:
	.string	"_ZnajPKci"
.LASF15:
	.string	"_mbstate_t"
.LASF203:
	.string	"testnum"
.LASF158:
	.string	"operator<"
.LASF152:
	.string	"operator="
.LASF160:
	.string	"operator>"
.LASF169:
	.string	"~testfileptr"
.LASF182:
	.string	"size"
.LASF137:
	.string	"_ZN11fileDataPtrixERi"
.LASF33:
	.string	"__tm_isdst"
.LASF136:
	.string	"operator[]"
.LASF162:
	.string	"operator<="
.LASF215:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGXSchratch\\\\build"
.LASF81:
	.string	"_h_errno"
.LASF219:
	.string	"exttestptr"
.LASF131:
	.string	"operator const int"
.LASF204:
	.string	"stack"
.LASF122:
	.string	"posEnd"
.LASF208:
	.string	"argc"
.LASF184:
	.string	"operator delete"
.LASF29:
	.string	"__tm_mon"
.LASF187:
	.string	"operator new"
.LASF209:
	.string	"argv"
.LASF218:
	.string	"_Z4testv"
.LASF51:
	.string	"_write"
.LASF174:
	.string	"this"
.LASF164:
	.string	"operator>="
.LASF217:
	.string	"__static_initialization_and_destruction_0"
.LASF39:
	.string	"_atexit"
.LASF60:
	.string	"_mbstate"
.LASF128:
	.string	"setBuffer"
.LASF191:
	.string	"alloc"
.LASF4:
	.string	"short int"
.LASF145:
	.string	"_ZN11fileDataPtrpLERKi"
.LASF214:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/operators.cpp"
.LASF115:
	.string	"long int"
.LASF121:
	.string	"posStart"
.LASF181:
	.string	"length"
.LASF105:
	.string	"__sf"
.LASF21:
	.string	"_sign"
.LASF154:
	.string	"operator=="
.LASF92:
	.string	"_current_locale"
.LASF58:
	.string	"_data"
.LASF12:
	.string	"__wchb"
.LASF210:
	.string	"ptr2"
.LASF30:
	.string	"__tm_year"
.LASF140:
	.string	"_ZN11fileDataPtrppEi"
.LASF139:
	.string	"_ZN11fileDataPtrppEv"
.LASF156:
	.string	"operator!="
.LASF166:
	.string	"bool"
.LASF211:
	.string	"_GLOBAL__sub_I__ZnwjPKci"
.LASF66:
	.string	"_localtime_buf"
.LASF84:
	.string	"_unused"
.LASF101:
	.string	"_new"
.LASF99:
	.string	"_cvtlen"
.LASF20:
	.string	"_maxwds"
.LASF73:
	.string	"_l64a_buf"
.LASF151:
	.string	"_ZN11fileDataPtrmiERKi"
.LASF91:
	.string	"_current_category"
.LASF175:
	.string	"__in_chrg"
.LASF56:
	.string	"_blksize"
.LASF24:
	.string	"__tm"
.LASF168:
	.string	"testFloat"
.LASF59:
	.string	"_lock"
.LASF18:
	.string	"long unsigned int"
.LASF124:
	.string	"master"
.LASF109:
	.string	"_niobs"
.LASF10:
	.string	"wint_t"
.LASF143:
	.string	"_ZN11fileDataPtrmmEi"
.LASF36:
	.string	"_dso_handle"
.LASF173:
	.string	"_ZN11testfileptr11checkStringEPKc"
.LASF142:
	.string	"_ZN11fileDataPtrmmEv"
.LASF100:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF183:
	.string	"line"
.LASF75:
	.string	"_getdate_err"
.LASF114:
	.string	"_add"
.LASF201:
	.string	"addr"
.LASF199:
	.string	"depth"
.LASF212:
	.string	"_GLOBAL__sub_D__ZnwjPKci"
.LASF42:
	.string	"__sbuf"
.LASF155:
	.string	"_ZNK11fileDataPtreqERKi"
.LASF108:
	.string	"_glue"
.LASF126:
	.string	"~fileDataPtr"
.LASF104:
	.string	"__sglue"
.LASF64:
	.string	"_strtok_last"
.LASF71:
	.string	"_mbtowc_state"
.LASF179:
	.string	"numread"
.LASF35:
	.string	"_fnargs"
.LASF3:
	.string	"signed char"
.LASF147:
	.string	"_ZN11fileDataPtrmIERKi"
.LASF62:
	.string	"_reent"
.LASF2:
	.string	"short unsigned int"
.LASF207:
	.string	"_Z6__mainiPPc"
.LASF194:
	.string	"other"
.LASF213:
	.string	"GNU C++ 4.6.3"
.LASF37:
	.string	"_fntypes"
.LASF44:
	.string	"_size"
.LASF119:
	.string	"double"
.LASF200:
	.string	"stackptr"
.LASF55:
	.string	"_nbuf"
.LASF63:
	.string	"_unused_rand"
.LASF197:
	.string	"minus"
.LASF189:
	.string	"_ZnwjPKci"
.LASF116:
	.string	"FILE"
.LASF167:
	.string	"testfileptr"
.LASF61:
	.string	"_flags2"
.LASF38:
	.string	"_is_cxa"
.LASF112:
	.string	"_seed"
.LASF68:
	.string	"_rand_next"
.LASF52:
	.string	"_seek"
.LASF88:
	.string	"_stderr"
.LASF83:
	.string	"_nmalloc"
.LASF54:
	.string	"_ubuf"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
