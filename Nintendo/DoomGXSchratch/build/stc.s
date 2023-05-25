	.file	"stc.cpp"
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z9ShortSwaps
	.type	_Z9ShortSwaps, @function
_Z9ShortSwaps:
.LFB72:
	.file 1 "d:/Data/Nintendo/DoomGXSchratch/src/stc.cpp"
	.loc 1 112 0
	.cfi_startproc
.LVL0:
.LBB51:
	.loc 1 118 0
	rlwinm 0,3,0,0xff
	rlwinm 3,3,24,24,31
.LVL1:
	slwi 0,0,8
.LBE51:
	.loc 1 119 0
.LBB52:
	.loc 1 118 0
	add 3,3,0
.LBE52:
	.loc 1 119 0
	extsh 3,3
	blr
	.cfi_endproc
.LFE72:
	.size	_Z9ShortSwaps, .-_Z9ShortSwaps
	.align 2
	.globl _Z11ShortNoSwaps
	.type	_Z11ShortNoSwaps, @function
_Z11ShortNoSwaps:
.LFB73:
	.loc 1 126 0
	.cfi_startproc
.LVL2:
	.loc 1 128 0
	blr
	.cfi_endproc
.LFE73:
	.size	_Z11ShortNoSwaps, .-_Z11ShortNoSwaps
	.align 2
	.globl _Z8LongSwapi
	.type	_Z8LongSwapi, @function
_Z8LongSwapi:
.LFB74:
	.loc 1 135 0
	.cfi_startproc
.LVL3:
.LBB53:
	.loc 1 143 0
	slwi 9,3,24
	rlwinm 0,3,8,8,15
	add 0,9,0
	rlwinm 9,3,24,16,23
	add 0,0,9
	srwi 3,3,24
.LVL4:
.LBE53:
	.loc 1 144 0
	add 3,0,3
	blr
	.cfi_endproc
.LFE74:
	.size	_Z8LongSwapi, .-_Z8LongSwapi
	.align 2
	.globl _Z10LongNoSwapi
	.type	_Z10LongNoSwapi, @function
_Z10LongNoSwapi:
.LFB75:
	.loc 1 151 0
	.cfi_startproc
.LVL5:
	.loc 1 153 0
	blr
	.cfi_endproc
.LFE75:
	.size	_Z10LongNoSwapi, .-_Z10LongNoSwapi
	.align 2
	.globl _Z9FloatSwapf
	.type	_Z9FloatSwapf, @function
_Z9FloatSwapf:
.LFB76:
	.loc 1 160 0
	.cfi_startproc
.LVL6:
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
.LBB54:
	.loc 1 168 0
	li 0,0
.LVL7:
	.loc 1 167 0
	stfs 1,8(1)
	lwz 9,8(1)
	.loc 1 168 0
	rlwimi 0,9,24,0,7
.LVL8:
	.loc 1 169 0
	rlwimi 0,9,8,8,15
	.loc 1 170 0
	rlwimi 0,9,24,16,23
	.loc 1 171 0
	rlwimi 0,9,8,24,31
	.loc 1 172 0
	stw 0,8(1)
	lfs 1,8(1)
.LVL9:
.LBE54:
	.loc 1 173 0
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE76:
	.size	_Z9FloatSwapf, .-_Z9FloatSwapf
	.align 2
	.globl _Z11FloatNoSwapf
	.type	_Z11FloatNoSwapf, @function
_Z11FloatNoSwapf:
.LFB77:
	.loc 1 180 0
	.cfi_startproc
.LVL10:
	.loc 1 182 0
	blr
	.cfi_endproc
.LFE77:
	.size	_Z11FloatNoSwapf, .-_Z11FloatNoSwapf
	.align 2
	.globl _Z8BigShorts
	.type	_Z8BigShorts, @function
_Z8BigShorts:
.LFB61:
	.loc 1 94 0
	.cfi_startproc
.LVL11:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0@ha
	stw 0,12(1)
	.loc 1 94 0
	lwz 0,.LANCHOR0@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL12:
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE61:
	.size	_Z8BigShorts, .-_Z8BigShorts
	.align 2
	.globl _Z11LittleShorts
	.type	_Z11LittleShorts, @function
_Z11LittleShorts:
.LFB62:
	.loc 1 95 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+4@ha
	stw 0,12(1)
	.loc 1 95 0
	lwz 0,.LANCHOR0+4@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL14:
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE62:
	.size	_Z11LittleShorts, .-_Z11LittleShorts
	.align 2
	.globl _Z7BigLongi
	.type	_Z7BigLongi, @function
_Z7BigLongi:
.LFB63:
	.loc 1 96 0
	.cfi_startproc
.LVL15:
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+8@ha
	stw 0,12(1)
	.loc 1 96 0
	lwz 0,.LANCHOR0+8@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL16:
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE63:
	.size	_Z7BigLongi, .-_Z7BigLongi
	.align 2
	.globl _Z10LittleLongi
	.type	_Z10LittleLongi, @function
_Z10LittleLongi:
.LFB64:
	.loc 1 97 0
	.cfi_startproc
.LVL17:
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+12@ha
	stw 0,12(1)
	.loc 1 97 0
	lwz 0,.LANCHOR0+12@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL18:
	lwz 0,12(1)
	addi 1,1,8
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE64:
	.size	_Z10LittleLongi, .-_Z10LittleLongi
	.align 2
	.globl _Z8BigFloatf
	.type	_Z8BigFloatf, @function
_Z8BigFloatf:
.LFB65:
	.loc 1 98 0
	.cfi_startproc
.LVL19:
	mflr 0
	stwu 1,-8(1)
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+16@ha
	stw 0,12(1)
	.loc 1 98 0
	lwz 0,.LANCHOR0+16@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL20:
	lwz 0,12(1)
	addi 1,1,8
.LCFI11:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE65:
	.size	_Z8BigFloatf, .-_Z8BigFloatf
	.align 2
	.globl _Z11LittleFloatf
	.type	_Z11LittleFloatf, @function
_Z11LittleFloatf:
.LFB66:
	.loc 1 99 0
	.cfi_startproc
.LVL21:
	mflr 0
	stwu 1,-8(1)
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+20@ha
	stw 0,12(1)
	.loc 1 99 0
	lwz 0,.LANCHOR0+20@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL22:
	lwz 0,12(1)
	addi 1,1,8
.LCFI13:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE66:
	.size	_Z11LittleFloatf, .-_Z11LittleFloatf
	.align 2
	.globl _Z11BigRevBytesPvii
	.type	_Z11BigRevBytesPvii, @function
_Z11BigRevBytesPvii:
.LFB67:
	.loc 1 100 0
	.cfi_startproc
.LVL23:
	mflr 0
	stwu 1,-8(1)
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+24@ha
	stw 0,12(1)
	.loc 1 100 0
	lwz 0,.LANCHOR0+24@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL24:
	lwz 0,12(1)
	addi 1,1,8
.LCFI15:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE67:
	.size	_Z11BigRevBytesPvii, .-_Z11BigRevBytesPvii
	.align 2
	.globl _Z14LittleRevBytesPvii
	.type	_Z14LittleRevBytesPvii, @function
_Z14LittleRevBytesPvii:
.LFB68:
	.loc 1 101 0
	.cfi_startproc
.LVL25:
	mflr 0
	stwu 1,-8(1)
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+28@ha
	stw 0,12(1)
	.loc 1 101 0
	lwz 0,.LANCHOR0+28@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL26:
	lwz 0,12(1)
	addi 1,1,8
.LCFI17:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE68:
	.size	_Z14LittleRevBytesPvii, .-_Z14LittleRevBytesPvii
	.align 2
	.globl _Z14LittleBitFieldPvi
	.type	_Z14LittleBitFieldPvi, @function
_Z14LittleBitFieldPvi:
.LFB69:
	.loc 1 102 0
	.cfi_startproc
.LVL27:
	mflr 0
	stwu 1,-8(1)
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+32@ha
	stw 0,12(1)
	.loc 1 102 0
	lwz 0,.LANCHOR0+32@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL28:
	lwz 0,12(1)
	addi 1,1,8
.LCFI19:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE69:
	.size	_Z14LittleBitFieldPvi, .-_Z14LittleBitFieldPvi
	.align 2
	.globl _Z13SixtetsForIntPhi
	.type	_Z13SixtetsForIntPhi, @function
_Z13SixtetsForIntPhi:
.LFB70:
	.loc 1 104 0
	.cfi_startproc
.LVL29:
	mflr 0
	stwu 1,-8(1)
.LCFI20:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+36@ha
	stw 0,12(1)
	.loc 1 104 0
	lwz 0,.LANCHOR0+36@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL30:
	lwz 0,12(1)
	addi 1,1,8
.LCFI21:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE70:
	.size	_Z13SixtetsForIntPhi, .-_Z13SixtetsForIntPhi
	.align 2
	.globl _Z13IntForSixtetsPh
	.type	_Z13IntForSixtetsPh, @function
_Z13IntForSixtetsPh:
.LFB71:
	.loc 1 105 0
	.cfi_startproc
.LVL31:
	mflr 0
	stwu 1,-8(1)
.LCFI22:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	lis 9,.LANCHOR0+40@ha
	stw 0,12(1)
	.loc 1 105 0
	lwz 0,.LANCHOR0+40@l(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL32:
	lwz 0,12(1)
	addi 1,1,8
.LCFI23:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE71:
	.size	_Z13IntForSixtetsPh, .-_Z13IntForSixtetsPh
	.align 2
	.globl _Z5_mainiPPc
	.type	_Z5_mainiPPc, @function
_Z5_mainiPPc:
.LFB79:
	.loc 1 417 0
	.cfi_startproc
.LVL33:
	mflr 0
	stwu 1,-1440(1)
.LCFI24:
	.cfi_def_cfa_offset 1440
	.cfi_register 65, 0
	mfcr 12
	stfd 31,1432(1)
	stw 12,1356(1)
	stw 0,1444(1)
	stw 24,1400(1)
.LBB84:
	.loc 1 472 0
	lis 24,.LC8@ha
	.cfi_offset 24, -40
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	.cfi_offset 70, -84
.LBE84:
	.loc 1 417 0
	stw 25,1404(1)
.LBB146:
	.loc 1 472 0
	la 24,.LC8@l(24)
.LBE146:
	.loc 1 417 0
	stw 27,1412(1)
.LBB147:
	.loc 1 459 0
	lis 27,.LC6@ha
	.cfi_offset 27, -28
	.cfi_offset 25, -36
.LBE147:
	.loc 1 417 0
	stw 28,1416(1)
.LBB148:
	.loc 1 459 0
	lis 28,.LC5@ha
	.cfi_offset 28, -24
.LBE148:
	.loc 1 417 0
	stw 29,1420(1)
.LBB149:
	.loc 1 459 0
	lis 29,.LC4@ha
	.cfi_offset 29, -20
.LBE149:
	.loc 1 417 0
	stw 30,1424(1)
.LBB150:
	.loc 1 459 0
	lis 30,.LC3@ha
	.cfi_offset 30, -16
.LBE150:
	.loc 1 417 0
	stw 31,1428(1)
	stw 14,1360(1)
	stw 15,1364(1)
	stw 16,1368(1)
	stw 17,1372(1)
	stw 18,1376(1)
	stw 19,1380(1)
	stw 20,1384(1)
	stw 21,1388(1)
	stw 22,1392(1)
	stw 23,1396(1)
	stw 26,1408(1)
.LBB151:
	.loc 1 421 0
	.cfi_offset 26, -32
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
	.cfi_offset 31, -12
	bl _Z8Vid_Initv
.LVL34:
	.loc 1 422 0
	bl _Z7qgxInitv
	.loc 1 424 0
	bl _Z20qgxInitDefaultShaderv
	.loc 1 425 0
	lis 9,.LC1@ha
	lfs 31,.LC1@l(9)
	fmr 1,31
	fmr 2,31
	fmr 3,31
	fmr 4,31
	bl _Z13qgxSetKColor0ffff
	.loc 1 428 0
	lis 11,_Z11ShortNoSwaps@ha
	la 11,_Z11ShortNoSwaps@l(11)
	lis 9,.LANCHOR0@ha
	stw 11,.LANCHOR0@l(9)
	la 31,.LANCHOR0@l(9)
	.loc 1 429 0
	lis 9,_Z9ShortSwaps@ha
	.loc 1 445 0
	li 0,0
	.loc 1 429 0
	la 9,_Z9ShortSwaps@l(9)
	.loc 1 445 0
	stw 0,36(1)
	.loc 1 429 0
	stw 9,4(31)
	.loc 1 430 0
	lis 9,_Z10LongNoSwapi@ha
	la 9,_Z10LongNoSwapi@l(9)
	.loc 1 445 0
	stw 0,40(1)
	.loc 1 430 0
	stw 9,8(31)
	.loc 1 431 0
	lis 9,_Z8LongSwapi@ha
	la 9,_Z8LongSwapi@l(9)
	.loc 1 445 0
	stw 0,44(1)
	.loc 1 431 0
	stw 9,12(31)
	.loc 1 432 0
	lis 9,_Z11FloatNoSwapf@ha
	la 9,_Z11FloatNoSwapf@l(9)
	.loc 1 446 0
	stw 0,24(1)
	.loc 1 432 0
	stw 9,16(31)
	.loc 1 433 0
	lis 9,_Z9FloatSwapf@ha
	la 9,_Z9FloatSwapf@l(9)
	.loc 1 446 0
	stw 0,32(1)
	.loc 1 433 0
	stw 9,20(31)
	.loc 1 447 0
	lis 9,.LC2@ha
	stw 0,12(1)
	.loc 1 451 0
	lis 4,.LANCHOR1@ha
	.loc 1 447 0
	stw 0,16(1)
	.loc 1 451 0
	la 4,.LANCHOR1@l(4)
	.loc 1 447 0
	lwz 0,.LC2@l(9)
	.loc 1 451 0
	li 5,36
	addi 3,1,64
	.loc 1 446 0
	stfs 31,28(1)
	.loc 1 447 0
	stw 0,20(1)
	.loc 1 451 0
	bl memcpy
	.loc 1 453 0
	bl WPAD_Init
	.loc 1 457 0
	addi 4,1,36
	addi 5,1,24
	addi 6,1,12
	addi 3,1,196
	bl guLookAt
	.loc 1 459 0
	lfs 1,.LC3@l(30)
	lfs 2,.LC4@l(29)
	addi 3,1,244
	lfs 3,.LC5@l(28)
	lfs 4,.LC6@l(27)
	bl guPerspective
	.loc 1 462 0
	bl fatInitDefault
	.loc 1 467 0
	lis 3,.LC7@ha
	la 3,.LC7@l(3)
	bl opendir
	mr 25,3
.LVL35:
	.loc 1 470 0
	b .L19
.LVL36:
.L20:
	.loc 1 471 0
	addi 26,3,5
	li 5,1024
	mr 4,26
	addi 3,1,308
.LVL37:
	bl strncpy
	.loc 1 472 0
	mr 3,24
	addi 4,1,308
	mr 5,26
	crxor 6,6,6
	bl printf
.LVL38:
.L19:
	.loc 1 470 0 discriminator 1
	mr 3,25
	bl readdir
.LVL39:
	cmpwi 0,3,0
	bne+ 0,.L20
	.loc 1 474 0
	mr 3,25
.LVL40:
	bl closedir
.LVL41:
.LBB85:
.LBB86:
.LBB87:
	.loc 1 202 0
	lis 4,.LC9@ha
	la 4,.LC9@l(4)
	addi 3,1,308
.LVL42:
	bl fopen
.LVL43:
	.loc 1 203 0
	li 5,0
	li 6,0
	li 7,2
	.loc 1 202 0
	mr 25,3
.LVL44:
	.loc 1 203 0
	bl fseek
.LVL45:
	.loc 1 204 0
	mr 3,25
	bl ftell
	.loc 1 205 0
	mr 4,3
	.loc 1 204 0
	mr 24,3
.LVL46:
	.loc 1 205 0
	lis 3,.LC10@ha
.LVL47:
	la 3,.LC10@l(3)
	crxor 6,6,6
	bl printf
.LVL48:
	.loc 1 206 0
	mr 3,24
	bl malloc
	.loc 1 207 0
	li 7,0
	.loc 1 206 0
	mr 26,3
.LVL49:
	.loc 1 207 0
	li 5,0
	li 6,0
	mr 3,25
.LVL50:
	bl fseek
	.loc 1 208 0
	mr 4,24
	li 5,1
	mr 6,25
	mr 3,26
	bl fread
.LBB88:
.LBB89:
	.loc 1 95 0
	lwz 0,4(31)
	lha 3,3(26)
	mtctr 0
.LBE89:
.LBE88:
	.loc 1 212 0
	lbz 22,2(26)
	.loc 1 210 0
	lbz 19,0(26)
.LVL51:
	.loc 1 211 0
	lbz 20,1(26)
.LVL52:
.LBB91:
.LBB90:
	.loc 1 95 0
	bctrl
.LVL53:
.LBE90:
.LBE91:
.LBB92:
.LBB93:
	lwz 0,4(31)
.LBE93:
.LBE92:
	.loc 1 228 0
	addi 9,26,18
.LBB95:
.LBB94:
	.loc 1 95 0
	lha 3,5(26)
	mtctr 0
	stw 9,1344(1)
	bctrl
.LVL54:
.LBE94:
.LBE95:
.LBB96:
.LBB97:
	lwz 0,4(31)
	lha 3,8(26)
	mtctr 0
	bctrl
.LVL55:
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	lwz 0,4(31)
	lha 3,10(26)
	mtctr 0
	bctrl
.LVL56:
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	lwz 0,4(31)
	lha 3,12(26)
	mtctr 0
	bctrl
.LVL57:
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	lwz 0,4(31)
.LBE103:
.LBE102:
	.loc 1 223 0
	rlwinm 23,3,0,0xffff
.LVL58:
.LBB105:
.LBB104:
	.loc 1 95 0
	lha 3,14(26)
	mtctr 0
	bctrl
.LVL59:
.LBE104:
.LBE105:
	.loc 1 230 0
	cmpwi 7,22,2
	.loc 1 227 0
	lbz 0,16(26)
	.loc 1 225 0
	rlwinm 21,3,0,0xffff
.LVL60:
	.loc 1 230 0
	lwz 9,1344(1)
	.loc 1 227 0
	stw 0,1336(1)
.LVL61:
	.loc 1 230 0
	beq- 7,.L21
	cmpwi 7,22,10
	beq- 7,.L21
	cmpwi 7,22,3
	beq- 7,.L21
	.loc 1 231 0
	lis 3,.LC11@ha
	addi 4,1,308
.LVL62:
	la 3,.LC11@l(3)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL63:
	lwz 9,1344(1)
.L21:
	.loc 1 234 0
	cmpwi 7,20,0
	bne- 7,.L73
.L22:
	.loc 1 238 0
	lwz 11,1336(1)
	cmpwi 3,11,32
	beq- 3,.L23
	cmpwi 7,11,24
	beq- 7,.L23
	cmpwi 7,22,3
	beq- 7,.L58
	.loc 1 239 0
	lis 3,.LC13@ha
	addi 4,1,308
.LVL64:
	la 3,.LC13@l(3)
	stw 9,1344(1)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL65:
	lwz 9,1344(1)
.L23:
	.loc 1 242 0
	addi 20,22,-2
.LVL66:
	rlwinm 20,20,0,0xff
	cmplwi 7,20,1
	ble- 7,.L24
	mullw 31,23,21
.L25:
.LVL67:
	.loc 1 260 0
	slwi 3,31,2
	stw 9,1344(1)
	bl malloc
	.loc 1 263 0
	cmpwi 7,19,0
	.loc 1 260 0
	mr 31,3
.LVL68:
	.loc 1 263 0
	lwz 9,1344(1)
	beq- 7,.L26
	.loc 1 264 0
	add 9,9,19
.LVL69:
.L26:
.LBB106:
	.loc 1 267 0
	cmplwi 7,20,1
	ble- 7,.L74
.LBB107:
	.loc 1 315 0
	cmpwi 7,22,10
	beq- 7,.L75
.LVL70:
.L28:
.LBE107:
.LBE106:
	.loc 1 413 0
	mr 3,26
.LBE87:
.LBE86:
.LBE85:
.LBB131:
	.loc 1 492 0
	lis 22,.LC18@ha
.LBE131:
.LBB140:
.LBB129:
.LBB127:
	.loc 1 413 0
	bl free
	.loc 1 414 0
	mr 3,25
	bl fclose
.LBE127:
.LBE129:
.LBE140:
	.loc 1 481 0
	lis 3,.LC16@ha
	mr 5,23
	mr 6,21
	mr 4,31
	la 3,.LC16@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 482 0
	addi 4,1,8
	li 3,1
.LBB141:
	.loc 1 525 0
	lis 24,.LC19@ha
.LBE141:
	.loc 1 482 0
	bl _Z14qgxGenTexturesiPj
.LVL71:
	.loc 1 483 0
	lwz 3,8(1)
.LBB142:
	.loc 1 526 0
	lis 25,.LC20@ha
.LVL72:
	lis 26,wgPipe@ha
.LVL73:
.LBE142:
	.loc 1 483 0
	bl _Z14qgxBindTexturej
	.loc 1 484 0
	li 3,0
	bl _Z15qgxActiveTexMapj
	.loc 1 486 0
	li 4,0
	mr 5,23
	mr 8,31
	ori 4,4,33776
	mr 6,21
	li 7,6408
	li 3,0
	bl _Z13qgxTexImage2DiiiiiPh
	.loc 1 488 0
	lis 3,.LC17@ha
	la 3,.LC17@l(3)
.LBB143:
	.loc 1 513 0
	lis 31,.LANCHOR2@ha
.LVL74:
.LBE143:
	.loc 1 488 0
	bl puts
.LVL75:
	.loc 1 490 0
	lis 11,.LC22@ha
	lfs 31,.LC22@l(11)
.LVL76:
.LBB144:
	.loc 1 494 0
	bl WPAD_ScanPads
	.loc 1 495 0
	li 3,0
	.loc 1 513 0
	la 31,.LANCHOR2@l(31)
	.loc 1 495 0
	bl WPAD_ButtonsDown
	.loc 1 514 0
	addi 23,31,12
.LVL77:
	.loc 1 495 0
	andi. 0,3,128
	bne- 0,.L76
.LVL78:
.L55:
	.loc 1 492 0
	lfs 0,.LC18@l(22)
	.loc 1 497 0
	li 3,0
	.loc 1 492 0
	fadds 31,31,0
	.loc 1 497 0
	bl WPAD_ButtonsHeld
	.loc 1 506 0
	lfs 4,.LC6@l(27)
	addi 3,1,244
	lfs 2,.LC4@l(29)
	lfs 3,.LC5@l(28)
	lfs 1,.LC3@l(30)
	bl guPerspective
	.loc 1 507 0
	addi 3,1,244
	li 4,0
	bl GX_LoadProjectionMtx
	.loc 1 510 0
	li 7,0
	li 8,0
	li 9,2
	li 6,1
	li 4,0
	li 5,0
	li 3,4
	bl GX_SetChanCtrl
	.loc 1 511 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 513 0
	li 3,9
	mr 4,31
	li 5,20
	bl _Z19qgxSetVertexPointeriPvi
	.loc 1 514 0
	li 5,20
	mr 4,23
	li 3,13
	bl _Z19qgxSetVertexPointeriPvi
	.loc 1 517 0
	li 3,0
	bl _Z15qgxActiveTexMapj
	.loc 1 518 0
	lwz 3,8(1)
	bl _Z14qgxBindTexturej
	.loc 1 521 0
	li 3,1
	li 4,0
	bl GX_SetDstAlpha
	.loc 1 522 0
	li 6,5
	li 5,1
	li 4,1
	li 3,1
	bl GX_SetBlendMode
	.loc 1 524 0
	addi 3,1,148
	bl ps_guMtxIdentity
	.loc 1 525 0
	lfs 1,.LC19@l(24)
	addi 3,1,148
	addi 4,1,64
	fmuls 1,31,1
	bl ps_guMtxRotAxisRad
	.loc 1 526 0
	lis 9,.LC22@ha
	lfs 1,.LC22@l(9)
	addi 3,1,148
	lfs 3,.LC20@l(25)
	mr 4,3
	fmr 2,1
	bl ps_guMtxTransApply
	.loc 1 527 0
	addi 5,1,100
	addi 3,1,196
	addi 4,1,148
	bl ps_guMtxConcat
	.loc 1 528 0
	addi 3,1,100
	li 4,0
	bl GX_LoadPosMtxImm
	.loc 1 529 0
	li 4,0
	addi 3,1,100
	bl GX_LoadNrmMtxImm
	.loc 1 530 0
	li 3,0
	bl GX_SetCurrentMtx
	.loc 1 532 0
	addi 3,1,48
	bl _Z21qgxGetCurrentGXVtxFmtv
	.loc 1 533 0
	lbz 4,51(1)
	li 3,128
	li 5,24
	bl GX_Begin
.LVL79:
.LBB132:
.LBB133:
.LBB134:
	.file 2 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 2219 0
	li 0,24
	lwz 11,wgPipe@l(26)
	mtctr 0
.LBE134:
.LBE133:
.LBE132:
	.loc 1 534 0
	li 9,0
.LVL80:
.L56:
.LBB139:
	.loc 1 535 0 discriminator 2
	rlwinm 0,9,0,0xffff
.LVL81:
.LBB136:
.LBB135:
	.loc 2 2219 0 discriminator 2
	sth 0,0(11)
	.loc 2 2220 0 discriminator 2
.LVL82:
.LBE135:
.LBE136:
.LBB137:
.LBB138:
	.loc 2 2399 0 discriminator 2
	sth 0,0(11)
	.loc 2 2400 0 discriminator 2
.LBE138:
.LBE137:
	.loc 1 534 0 discriminator 2
	addi 9,9,1
.LVL83:
	bdnz .L56
.LBE139:
	.loc 1 540 0
	li 4,3
	li 5,1
	li 3,1
	bl GX_SetZMode
.LVL84:
	.loc 1 541 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 543 0
	li 3,1
	bl _Z15Vid_SwapBuffersb
.LVL85:
	.loc 1 494 0
	bl WPAD_ScanPads
	.loc 1 495 0
	li 3,0
	bl WPAD_ButtonsDown
	andi. 0,3,128
	beq+ 0,.L55
.LVL86:
.L76:
	.loc 1 495 0 is_stmt 0 discriminator 1
	li 3,0
	bl exit
.LVL87:
.L75:
.LBE144:
.LBB145:
.LBB130:
.LBB128:
.LBB124:
.LBB110:
.LBB108:
	.loc 1 323 0 is_stmt 1
	cmpwi 7,21,0
	addi 15,21,-1
	beq- 7,.L28
	cmpwi 7,23,0
	li 16,0
	li 17,0
	li 18,0
	mfcr 0
	rlwinm 0,0,28,0xf0000000
	stw 0,1340(1)
	lwz 0,1336(1)
	cmpwi 4,0,24
	li 0,255
.LVL88:
.L54:
	.loc 1 325 0
	lwz 11,1340(1)
	rlwinm 11,11,4,0xffffffff
	mtcrf 1,11
	rlwinm 11,11,28,0xffffffff
	beq- 7,.L37
	.loc 1 324 0
	mullw 24,23,15
	.loc 1 325 0
	li 22,0
	.loc 1 324 0
	slwi 24,24,2
	add 24,31,24
.LVL89:
.L53:
	.loc 1 326 0
	lbz 14,0(9)
.LVL90:
	addi 20,9,1
.LVL91:
	.loc 1 328 0
	li 19,0
	andi. 11,14,128
	.loc 1 327 0
	rlwinm 14,14,0,25,31
.LVL92:
	addi 14,14,1
.LVL93:
	.loc 1 328 0
	bne- 0,.L77
.L61:
	.loc 1 367 0
	beq- 4,.L49
	beq- 3,.L78
	.loc 1 388 0
	lis 9,.LC21@ha
	lwz 5,1336(1)
	lwz 3,.LC21@l(9)
	addi 4,1,308
.LVL94:
	stw 0,1344(1)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL95:
	lwz 0,1344(1)
.L51:
.LVL96:
	.loc 1 391 0
	addi 22,22,1
.LVL97:
	.loc 1 392 0
	cmpw 7,23,22
	beq- 7,.L79
.LVL98:
.L52:
	.loc 1 366 0
	addi 19,19,1
	rlwinm 19,19,0,0xff
.LVL99:
	cmplw 7,14,19
	bgt+ 7,.L61
	mr 9,20
.LVL100:
.L47:
	.loc 1 325 0
	cmpw 7,23,22
	bgt+ 7,.L53
.LVL101:
.L37:
	.loc 1 323 0
	cmpwi 7,15,0
	addi 15,15,-1
.LVL102:
	bne+ 7,.L54
	b .L28
.LVL103:
.L77:
	.loc 1 329 0
	beq- 4,.L40
	beq- 3,.L80
	.loc 1 343 0
	lis 9,.LC21@ha
	lwz 5,1336(1)
	lwz 3,.LC21@l(9)
	addi 4,1,308
.LVL104:
	stw 0,1344(1)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL105:
	.loc 1 326 0
	lwz 0,1344(1)
	mr 9,20
.LVL106:
.L42:
	.loc 1 347 0
	li 11,0
	b .L46
.LVL107:
.L81:
	.loc 1 351 0
	addi 24,24,4
.LVL108:
.L44:
	.loc 1 347 0
	addi 11,11,1
	rlwinm 11,11,0,0xff
.LVL109:
	cmplw 7,14,11
	ble- 7,.L47
.LVL110:
.L46:
	.loc 1 352 0
	addi 22,22,1
.LVL111:
	.loc 1 348 0
	stb 18,0(24)
.LVL112:
	.loc 1 353 0
	cmpw 7,23,22
	.loc 1 349 0
	stb 17,1(24)
.LVL113:
	.loc 1 350 0
	stb 16,2(24)
.LVL114:
	.loc 1 351 0
	stb 0,3(24)
.LVL115:
	.loc 1 353 0
	bne+ 7,.L81
.LVL116:
	.loc 1 355 0
	cmpwi 7,15,0
	beq- 7,.L28
	.loc 1 356 0
	addi 15,15,-1
.LVL117:
	.loc 1 354 0
	li 22,0
	.loc 1 361 0
	mullw 24,23,15
.LVL118:
	slwi 24,24,2
	add 24,31,24
.LVL119:
	b .L44
.LVL120:
.L58:
.LBE108:
.LBE110:
.LBE124:
	.loc 1 242 0
	li 20,1
.LVL121:
.L24:
	.loc 1 243 0
	mullw 31,23,21
	lwz 0,1336(1)
	srawi 11,0,3
	.loc 1 244 0
	addi 0,24,-18
	.loc 1 243 0
	mullw 11,31,11
	.loc 1 244 0
	subf 0,19,0
	cmpw 7,11,0
	ble+ 7,.L25
	.loc 1 245 0
	lis 3,.LC14@ha
	addi 4,1,308
.LVL122:
	la 3,.LC14@l(3)
	stw 9,1344(1)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL123:
	lwz 9,1344(1)
	b .L25
.LVL124:
.L78:
.LBB125:
.LBB111:
.LBB109:
	.loc 1 391 0
	addi 22,22,1
	.loc 1 378 0
	lbz 16,0(20)
.LVL125:
	.loc 1 392 0
	cmpw 7,23,22
	.loc 1 379 0
	lbz 17,1(20)
.LVL126:
	.loc 1 380 0
	lbz 18,2(20)
.LVL127:
	.loc 1 381 0
	lbz 0,3(20)
.LVL128:
	addi 20,20,4
.LVL129:
	.loc 1 382 0
	stb 18,0(24)
	.loc 1 383 0
	stb 17,1(24)
	.loc 1 384 0
	stb 16,2(24)
	.loc 1 385 0
	stb 0,3(24)
	addi 24,24,4
.LVL130:
	.loc 1 392 0
	bne+ 7,.L52
.L79:
.LVL131:
	.loc 1 394 0
	cmpwi 7,15,0
	beq- 7,.L28
	.loc 1 395 0
	addi 15,15,-1
.LVL132:
	.loc 1 393 0
	li 22,0
	.loc 1 400 0
	mullw 24,23,15
.LVL133:
	slwi 24,24,2
	add 24,31,24
.LVL134:
	b .L52
.LVL135:
.L49:
	.loc 1 369 0
	lbz 16,0(20)
.LVL136:
	.loc 1 375 0
	li 11,-1
	.loc 1 370 0
	lbz 17,1(20)
.LVL137:
	.loc 1 371 0
	lbz 18,2(20)
.LVL138:
	addi 20,20,3
.LVL139:
	.loc 1 373 0
	stb 17,1(24)
	.loc 1 372 0
	stb 18,0(24)
	.loc 1 374 0
	stb 16,2(24)
	.loc 1 375 0
	stb 11,3(24)
	addi 24,24,4
.LVL140:
	b .L51
.LVL141:
.L80:
	.loc 1 337 0
	lbz 16,1(9)
.LVL142:
	.loc 1 338 0
	lbz 17,2(9)
.LVL143:
	.loc 1 339 0
	lbz 18,3(9)
.LVL144:
	.loc 1 340 0
	lbz 0,4(9)
.LVL145:
	addi 9,9,5
.LVL146:
	b .L42
.LVL147:
.L40:
	.loc 1 331 0
	lbz 16,1(9)
.LVL148:
	.loc 1 334 0
	li 0,255
	.loc 1 332 0
	lbz 17,2(9)
.LVL149:
	.loc 1 333 0
	lbz 18,3(9)
.LVL150:
	addi 9,9,4
.LVL151:
	b .L42
.LVL152:
.L73:
.LBE109:
.LBE111:
.LBE125:
	.loc 1 235 0
	lis 3,.LC12@ha
	addi 4,1,308
.LVL153:
	la 3,.LC12@l(3)
	stw 9,1344(1)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL154:
	lwz 9,1344(1)
	b .L22
.LVL155:
.L74:
.LBB126:
.LBB112:
	.loc 1 270 0
	cmpwi 7,21,0
	addi 19,21,-1
.LVL156:
	beq- 7,.L28
	.loc 1 417 0
	slwi 18,19,2
	cmpwi 7,23,0
	mullw 18,23,18
	lwz 0,1336(1)
.LBB113:
.LBB114:
.LBB115:
	.loc 1 309 0
	lis 17,.LC15@ha
	cmpwi 4,0,24
	.loc 1 276 0
	cmpwi 2,0,8
	mfcr 11
	rlwinm 11,11,28,0xf0000000
.LBE115:
.LBE114:
.LBE113:
	.loc 1 417 0
	add 18,31,18
	mulli 16,23,-4
.LBB122:
.LBB119:
.LBB116:
	.loc 1 296 0
	li 20,-1
	stw 11,1340(1)
	.loc 1 309 0
	la 17,.LC15@l(17)
.LVL157:
.L36:
.LBE116:
	.loc 1 273 0
	lwz 11,1340(1)
	rlwinm 11,11,4,0xffffffff
	mtcrf 1,11
	rlwinm 11,11,28,0xffffffff
	beq- 7,.L29
.LBE119:
	.loc 1 272 0
	mr 24,18
	.loc 1 273 0
	li 22,0
.LVL158:
.L35:
.LBB120:
.LBB117:
	.loc 1 276 0
	beq- 4,.L32
	beq- 3,.L33
	beq- 2,.L82
	.loc 1 309 0
	lwz 5,1336(1)
	mr 3,17
	addi 4,1,308
.LVL159:
	stw 9,1344(1)
	crxor 6,6,6
	bl _Z9Sys_ErrorPKcz
.LVL160:
	lwz 9,1344(1)
.L34:
.LVL161:
.LBE117:
	.loc 1 273 0
	addi 22,22,1
.LVL162:
	cmpw 7,23,22
	bgt+ 7,.L35
.LVL163:
.L29:
.LBE120:
.LBE122:
	.loc 1 270 0
	cmpwi 7,19,0
	add 18,18,16
	addi 19,19,-1
.LVL164:
	bne+ 7,.L36
	b .L28
.L82:
.LBB123:
.LBB121:
.LBB118:
	.loc 1 280 0
	lbz 0,0(9)
.LVL165:
	addi 9,9,1
.LVL166:
	.loc 1 286 0
	stb 20,3(24)
	.loc 1 283 0
	stb 0,0(24)
	.loc 1 284 0
	stb 0,1(24)
.LVL167:
	.loc 1 285 0
	stb 0,2(24)
	.loc 1 286 0
	addi 24,24,4
.LVL168:
	b .L34
.LVL169:
.L33:
	.loc 1 299 0
	lbz 11,0(9)
.LVL170:
	.loc 1 300 0
	lbz 10,1(9)
.LVL171:
	.loc 1 301 0
	lbz 8,2(9)
.LVL172:
	.loc 1 302 0
	lbz 0,3(9)
.LVL173:
	addi 9,9,4
.LVL174:
	.loc 1 303 0
	stb 8,0(24)
	.loc 1 304 0
	stb 10,1(24)
	.loc 1 305 0
	stb 11,2(24)
	.loc 1 306 0
	stb 0,3(24)
	addi 24,24,4
.LVL175:
	b .L34
.LVL176:
.L32:
	.loc 1 290 0
	lbz 0,0(9)
.LVL177:
	.loc 1 291 0
	lbz 10,1(9)
.LVL178:
	.loc 1 292 0
	lbz 11,2(9)
.LVL179:
	addi 9,9,3
.LVL180:
	.loc 1 294 0
	stb 10,1(24)
	.loc 1 293 0
	stb 11,0(24)
	.loc 1 295 0
	stb 0,2(24)
	.loc 1 296 0
	stb 20,3(24)
	addi 24,24,4
.LVL181:
	b .L34
.LBE118:
.LBE121:
.LBE123:
.LBE112:
.LBE126:
.LBE128:
.LBE130:
.LBE145:
.LBE151:
	.cfi_endproc
.LFE79:
	.size	_Z5_mainiPPc, .-_Z5_mainiPPc
	.globl cubedata
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
.LC0:
	.long	0
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1065353216
.LC2:
	.4byte	-1082130432
.LC3:
	.4byte	1110704128
.LC4:
	.4byte	1068149419
.LC5:
	.4byte	1036831949
.LC6:
	.4byte	1325400064
.LC18:
	.4byte	1008981770
.LC19:
	.4byte	1016003125
.LC20:
	.4byte	-1061158912
.LC21:
	.4byte	.LC15
.LC22:
	.4byte	0
	.section	".data"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	cubedata, @object
	.size	cubedata, 480
cubedata:
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC7:
	.string	"/"
	.zero	2
.LC8:
	.string	"2) fnmatch %s (%s)\n"
.LC9:
	.string	"rb"
	.zero	1
.LC10:
	.string	">>> tga end %d\r\n"
	.zero	3
.LC11:
	.string	"LoadTGA( %s ): Only type 2 (RGB), 3 (gray), and 10 (RGB) TGA images supported\n"
	.zero	1
.LC12:
	.string	"LoadTGA( %s ): colormaps not supported\n"
.LC13:
	.string	"LoadTGA( %s ): Only 32 or 24 bit images supported (no colormaps)\n"
	.zero	2
.LC14:
	.string	"LoadTGA( %s ): incomplete file\n"
.LC15:
	.string	"LoadTGA( %s ): illegal pixel_size '%d'\n"
.LC16:
	.string	"loaded tga %p %d %d\r\n"
	.zero	2
.LC17:
	.string	"initalized\r"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZL9_BigShort, @object
	.size	_ZL9_BigShort, 4
_ZL9_BigShort:
	.zero	4
	.type	_ZL12_LittleShort, @object
	.size	_ZL12_LittleShort, 4
_ZL12_LittleShort:
	.zero	4
	.type	_ZL8_BigLong, @object
	.size	_ZL8_BigLong, 4
_ZL8_BigLong:
	.zero	4
	.type	_ZL11_LittleLong, @object
	.size	_ZL11_LittleLong, 4
_ZL11_LittleLong:
	.zero	4
	.type	_ZL9_BigFloat, @object
	.size	_ZL9_BigFloat, 4
_ZL9_BigFloat:
	.zero	4
	.type	_ZL12_LittleFloat, @object
	.size	_ZL12_LittleFloat, 4
_ZL12_LittleFloat:
	.zero	4
	.type	_ZL12_BigRevBytes, @object
	.size	_ZL12_BigRevBytes, 4
_ZL12_BigRevBytes:
	.zero	4
	.type	_ZL15_LittleRevBytes, @object
	.size	_ZL15_LittleRevBytes, 4
_ZL15_LittleRevBytes:
	.zero	4
	.type	_ZL15_LittleBitField, @object
	.size	_ZL15_LittleBitField, 4
_ZL15_LittleBitField:
	.zero	4
	.type	_ZL14_SixtetsForInt, @object
	.size	_ZL14_SixtetsForInt, 4
_ZL14_SixtetsForInt:
	.zero	4
	.type	_ZL14_IntForSixtets, @object
	.size	_ZL14_IntForSixtets, 4
_ZL14_IntForSixtets:
	.zero	4
	.section	".text"
.Letext0:
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdint.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/_types.h"
	.file 7 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/lock.h"
	.file 8 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/_types.h"
	.file 9 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 10 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/reent.h"
	.file 11 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 12 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdio.h"
	.file 13 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/stat.h"
	.file 14 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/iosupport.h"
	.file 15 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/dirent.h"
	.file 16 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_qgx.h"
	.file 17 "d:/Data/Nintendo/DoomGXSchratch/src/gx/gx_shader.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a35
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF288
	.byte	0x4
	.4byte	.LASF289
	.4byte	.LASF290
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x29
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2a
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x35
	.4byte	0x54
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x36
	.4byte	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.4byte	0x78
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x50
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.string	"u8"
	.byte	0x4
	.byte	0x11
	.4byte	0x37
	.uleb128 0x5
	.string	"u16"
	.byte	0x4
	.byte	0x12
	.4byte	0x5b
	.uleb128 0x5
	.string	"u32"
	.byte	0x4
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x5
	.string	"s8"
	.byte	0x4
	.byte	0x16
	.4byte	0x25
	.uleb128 0x5
	.string	"s16"
	.byte	0x4
	.byte	0x17
	.4byte	0x49
	.uleb128 0x5
	.string	"s32"
	.byte	0x4
	.byte	0x18
	.4byte	0x6d
	.uleb128 0x5
	.string	"vu8"
	.byte	0x4
	.byte	0x1b
	.4byte	0xea
	.uleb128 0x6
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1c
	.4byte	0xfa
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x1d
	.4byte	0x10a
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x5
	.string	"vs8"
	.byte	0x4
	.byte	0x20
	.4byte	0x11a
	.uleb128 0x6
	.4byte	0xbf
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x12a
	.uleb128 0x6
	.4byte	0xc9
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.4byte	0x13a
	.uleb128 0x6
	.4byte	0xd4
	.uleb128 0x5
	.string	"f32"
	.byte	0x4
	.byte	0x2b
	.4byte	0x14a
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2e
	.4byte	0x163
	.uleb128 0x6
	.4byte	0x14a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x16e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x7
	.byte	0x4
	.4byte	0x168
	.uleb128 0x7
	.byte	0x4
	.4byte	0x181
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x4
	.uleb128 0xa
	.4byte	0x42
	.4byte	0x194
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0xc
	.byte	0x5
	.byte	0x5e
	.4byte	0x1d3
	.uleb128 0xd
	.string	"x"
	.byte	0x5
	.byte	0x5f
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"y"
	.byte	0x5
	.byte	0x5f
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"z"
	.byte	0x5
	.byte	0x5f
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x60
	.4byte	0x1a2
	.uleb128 0x5
	.string	"Mtx"
	.byte	0x5
	.byte	0x73
	.4byte	0x1e9
	.uleb128 0xa
	.4byte	0x14a
	.4byte	0x1ff
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x2
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x89
	.4byte	0x20a
	.uleb128 0xa
	.4byte	0x14a
	.4byte	0x220
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x3
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF291
	.byte	0x4
	.byte	0x2
	.2byte	0x490
	.4byte	0x280
	.uleb128 0xf
	.string	"U8"
	.byte	0x2
	.2byte	0x492
	.4byte	0xdf
	.uleb128 0xf
	.string	"S8"
	.byte	0x2
	.2byte	0x493
	.4byte	0x10f
	.uleb128 0xf
	.string	"U16"
	.byte	0x2
	.2byte	0x494
	.4byte	0xef
	.uleb128 0xf
	.string	"S16"
	.byte	0x2
	.2byte	0x495
	.4byte	0x11f
	.uleb128 0xf
	.string	"U32"
	.byte	0x2
	.2byte	0x496
	.4byte	0xff
	.uleb128 0xf
	.string	"S32"
	.byte	0x2
	.2byte	0x497
	.4byte	0x12f
	.uleb128 0xf
	.string	"F32"
	.byte	0x2
	.2byte	0x498
	.4byte	0x158
	.byte	0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x499
	.4byte	0x220
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa
	.4byte	0x91
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0xd
	.4byte	0x91
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x7
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x8
	.byte	0x18
	.4byte	0x54
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1d
	.4byte	0x66
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x20
	.4byte	0x66
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x9
	.2byte	0x161
	.4byte	0x8a
	.uleb128 0x11
	.byte	0x8
	.byte	0x8
	.byte	0x44
	.4byte	.LASF164
	.4byte	0x322
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.byte	0x47
	.4byte	0x305
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x8
	.byte	0x48
	.4byte	0x2ce
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x8
	.byte	0x49
	.4byte	0x184
	.byte	0
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x8
	.byte	0x45
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x8
	.byte	0x4a
	.4byte	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4b
	.4byte	0x2da
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4f
	.4byte	0x2a2
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0xa
	.byte	0x15
	.4byte	0x19b
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x18
	.byte	0xa
	.byte	0x2c
	.4byte	0x3a2
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0xa
	.byte	0x2e
	.4byte	0x3a2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"_k"
	.byte	0xa
	.byte	0x2f
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0xa
	.byte	0x2f
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0xa
	.byte	0x2f
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0xa
	.byte	0x2f
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_x"
	.byte	0xa
	.byte	0x30
	.4byte	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x343
	.uleb128 0xa
	.4byte	0x19b
	.4byte	0x3b8
	.uleb128 0xb
	.4byte	0x8a
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x24
	.byte	0xa
	.byte	0x34
	.4byte	0x443
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0xa
	.byte	0x36
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0xa
	.byte	0x37
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0xa
	.byte	0x38
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0xa
	.byte	0x39
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xa
	.byte	0x3a
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0xa
	.byte	0x3b
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0xa
	.byte	0x3c
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xa
	.byte	0x3d
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xa
	.byte	0x3e
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LASF56
	.2byte	0x108
	.byte	0xa
	.byte	0x47
	.4byte	0x48c
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xa
	.byte	0x48
	.4byte	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xa
	.byte	0x49
	.4byte	0x48c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xa
	.byte	0x4b
	.4byte	0x338
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xa
	.byte	0x4e
	.4byte	0x338
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x182
	.4byte	0x49c
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF61
	.2byte	0x190
	.byte	0xa
	.byte	0x59
	.4byte	0x4e3
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0xa
	.byte	0x5a
	.4byte	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0xa
	.byte	0x5b
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0xa
	.byte	0x5d
	.4byte	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xa
	.byte	0x5e
	.4byte	0x443
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x49c
	.uleb128 0xa
	.4byte	0x17b
	.4byte	0x4f9
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0xa
	.byte	0x69
	.4byte	0x522
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0xa
	.byte	0x6a
	.4byte	0x522
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0xa
	.byte	0x6b
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x42
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x70
	.byte	0xa
	.byte	0xa9
	.4byte	0x682
	.uleb128 0xd
	.string	"_p"
	.byte	0xa
	.byte	0xaa
	.4byte	0x522
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"_r"
	.byte	0xa
	.byte	0xab
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_w"
	.byte	0xa
	.byte	0xac
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0xa
	.byte	0xad
	.4byte	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0xa
	.byte	0xae
	.4byte	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"_bf"
	.byte	0xa
	.byte	0xaf
	.4byte	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0xa
	.byte	0xb0
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0xa
	.byte	0xb7
	.4byte	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0xa
	.byte	0xb9
	.4byte	0x97e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0xa
	.byte	0xbb
	.4byte	0x9ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0xa
	.byte	0xbd
	.4byte	0x9d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0xa
	.byte	0xbe
	.4byte	0x9eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_ub"
	.byte	0xa
	.byte	0xc1
	.4byte	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_up"
	.byte	0xa
	.byte	0xc2
	.4byte	0x522
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_ur"
	.byte	0xa
	.byte	0xc3
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0xa
	.byte	0xc6
	.4byte	0x9f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0xa
	.byte	0xc7
	.4byte	0xa01
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xd
	.string	"_lb"
	.byte	0xa
	.byte	0xca
	.4byte	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0xa
	.byte	0xcd
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0xa
	.byte	0xce
	.4byte	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0xa
	.byte	0xd1
	.4byte	0x6a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0xa
	.byte	0xd5
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0xa
	.byte	0xd7
	.4byte	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0xa
	.byte	0xd8
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x16
	.4byte	0x78
	.4byte	0x6a0
	.uleb128 0x17
	.4byte	0x6a0
	.uleb128 0x17
	.4byte	0x182
	.uleb128 0x17
	.4byte	0x168
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6a6
	.uleb128 0x18
	.4byte	.LASF84
	.2byte	0x440
	.byte	0xa
	.2byte	0x244
	.4byte	0x97e
	.uleb128 0x19
	.byte	0xf0
	.byte	0xa
	.2byte	0x262
	.4byte	0x82e
	.uleb128 0x1a
	.byte	0xd0
	.byte	0xa
	.2byte	0x264
	.4byte	0x7ed
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x265
	.4byte	0x8a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0xa
	.2byte	0x266
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x267
	.4byte	0xaaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0xa
	.2byte	0x268
	.4byte	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x269
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x26a
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0xa
	.2byte	0x26b
	.4byte	0xa64
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1b
	.4byte	.LASF92
	.byte	0xa
	.2byte	0x26c
	.4byte	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x26d
	.4byte	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x26e
	.4byte	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x26f
	.4byte	0xabf
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x270
	.4byte	0xacf
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1b
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x271
	.4byte	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0xa
	.2byte	0x272
	.4byte	0x322
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x273
	.4byte	0x322
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x274
	.4byte	0x322
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x275
	.4byte	0x322
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x276
	.4byte	0x322
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x277
	.4byte	0x78
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0xa
	.2byte	0x27d
	.4byte	0x815
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x27f
	.4byte	0xadf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x280
	.4byte	0xaef
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0xa
	.2byte	0x278
	.4byte	0x6bd
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x281
	.4byte	0x7ed
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x246
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x24b
	.4byte	0xa5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x24b
	.4byte	0xa5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x24b
	.4byte	0xa5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x24d
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x24e
	.4byte	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x250
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x251
	.4byte	0x9a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x253
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x255
	.4byte	0xb20
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x258
	.4byte	0xb26
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x259
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x25a
	.4byte	0xb26
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x25b
	.4byte	0xb2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x25e
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x25f
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x282
	.4byte	0x6b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1b
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x285
	.4byte	0xb32
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x286
	.4byte	0x49c
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x289
	.4byte	0xb43
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x28e
	.4byte	0xa1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x28f
	.4byte	0xb4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x682
	.uleb128 0x16
	.4byte	0x78
	.4byte	0x9a2
	.uleb128 0x17
	.4byte	0x6a0
	.uleb128 0x17
	.4byte	0x182
	.uleb128 0x17
	.4byte	0x9a2
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9a8
	.uleb128 0x1d
	.4byte	0x16e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x984
	.uleb128 0x16
	.4byte	0x28c
	.4byte	0x9d1
	.uleb128 0x17
	.4byte	0x6a0
	.uleb128 0x17
	.4byte	0x182
	.uleb128 0x17
	.4byte	0x28c
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9b3
	.uleb128 0x16
	.4byte	0x78
	.4byte	0x9eb
	.uleb128 0x17
	.4byte	0x6a0
	.uleb128 0x17
	.4byte	0x182
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9d7
	.uleb128 0xa
	.4byte	0x42
	.4byte	0xa01
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x42
	.4byte	0xa11
	.uleb128 0xb
	.4byte	0x8a
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x111
	.4byte	0x528
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0xc
	.byte	0xa
	.2byte	0x115
	.4byte	0xa58
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0xa
	.2byte	0x117
	.4byte	0xa58
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x118
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x119
	.4byte	0xa5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa1d
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa11
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0xe
	.byte	0xa
	.2byte	0x131
	.4byte	0xa9f
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x132
	.4byte	0xa9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x133
	.4byte	0xa9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x134
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x66
	.4byte	0xaaf
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x16e
	.4byte	0xabf
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x16e
	.4byte	0xacf
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x16e
	.4byte	0xadf
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	0x522
	.4byte	0xaef
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x8a
	.4byte	0xaff
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x16e
	.4byte	0xb0f
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x18
	.byte	0
	.uleb128 0x1f
	.4byte	0xb1a
	.uleb128 0x17
	.4byte	0xb1a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6a6
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb0f
	.uleb128 0x7
	.byte	0x4
	.4byte	0x343
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb26
	.uleb128 0x7
	.byte	0x4
	.4byte	0x49c
	.uleb128 0x1f
	.4byte	0xb43
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb49
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb38
	.uleb128 0xa
	.4byte	0x528
	.4byte	0xb5f
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF136
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xb
	.byte	0x6e
	.4byte	0xb5f
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xb
	.byte	0x86
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xb
	.byte	0xa3
	.4byte	0x297
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xb
	.byte	0xa4
	.4byte	0x2ad
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0xb
	.byte	0xa5
	.4byte	0x2b8
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0xb
	.byte	0xa6
	.4byte	0x2c3
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0xb
	.byte	0xc4
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0xb
	.byte	0xc9
	.4byte	0x66
	.uleb128 0xa
	.4byte	0xb5f
	.4byte	0xbce
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0xc
	.byte	0x32
	.4byte	0xa11
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x48
	.byte	0xd
	.byte	0x19
	.4byte	0xcda
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0xd
	.byte	0x1b
	.4byte	0xb87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0xd
	.byte	0x1c
	.4byte	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0xd
	.byte	0x1d
	.4byte	0xba8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0xd
	.byte	0x1e
	.4byte	0xbb3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF151
	.byte	0xd
	.byte	0x1f
	.4byte	0xb92
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.4byte	.LASF152
	.byte	0xd
	.byte	0x20
	.4byte	0xb9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0xd
	.byte	0x21
	.4byte	0xb87
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x14
	.4byte	.LASF154
	.byte	0xd
	.byte	0x22
	.4byte	0xb7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0xd
	.byte	0x30
	.4byte	0xb66
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0xd
	.byte	0x31
	.4byte	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0xd
	.byte	0x32
	.4byte	0xb66
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0xd
	.byte	0x33
	.4byte	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0xd
	.byte	0x34
	.4byte	0xb66
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0xd
	.byte	0x35
	.4byte	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.4byte	.LASF161
	.byte	0xd
	.byte	0x36
	.4byte	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0xd
	.byte	0x37
	.4byte	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0xd
	.byte	0x38
	.4byte	0xbbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0xe
	.byte	0x1c
	.4byte	.LASF165
	.4byte	0xd03
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0xe
	.byte	0x1d
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0xe
	.byte	0x1e
	.4byte	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0xe
	.byte	0x1f
	.4byte	0xcda
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd03
	.uleb128 0x15
	.4byte	.LASF169
	.2byte	0x308
	.byte	0xf
	.byte	0x1e
	.4byte	0xd4c
	.uleb128 0x14
	.4byte	.LASF170
	.byte	0xf
	.byte	0x1f
	.4byte	0xb71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0xf
	.byte	0x20
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF172
	.byte	0xf
	.byte	0x21
	.4byte	0xd4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x16e
	.4byte	0xd5d
	.uleb128 0x20
	.4byte	0x8a
	.2byte	0x2ff
	.byte	0
	.uleb128 0x21
	.2byte	0x310
	.byte	0xf
	.byte	0x24
	.4byte	.LASF292
	.4byte	0xd95
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0xf
	.byte	0x25
	.4byte	0xb5f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0xf
	.byte	0x26
	.4byte	0xd0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF175
	.byte	0xf
	.byte	0x27
	.4byte	0xd14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.string	"DIR"
	.byte	0xf
	.byte	0x28
	.4byte	0xd5d
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x10
	.byte	0xb
	.4byte	0x42
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0x10
	.byte	0x11
	.byte	0xb
	.4byte	0xdf0
	.uleb128 0x14
	.4byte	.LASF178
	.byte	0x11
	.byte	0xc
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF179
	.byte	0x11
	.byte	0xd
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0x11
	.byte	0xe
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF181
	.byte	0x11
	.byte	0xf
	.4byte	0x78
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF182
	.byte	0x11
	.byte	0x11
	.4byte	0xdab
	.uleb128 0xc
	.4byte	.LASF183
	.byte	0x14
	.byte	0x1
	.byte	0x40
	.4byte	0xeb0
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0x1
	.byte	0x41
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF185
	.byte	0x1
	.byte	0x41
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0x1
	.byte	0x41
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.4byte	.LASF187
	.byte	0x1
	.byte	0x42
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF188
	.byte	0x1
	.byte	0x42
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x1
	.byte	0x43
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF190
	.byte	0x1
	.byte	0x44
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x14
	.4byte	.LASF191
	.byte	0x1
	.byte	0x44
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF192
	.byte	0x1
	.byte	0x44
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.4byte	.LASF193
	.byte	0x1
	.byte	0x44
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF194
	.byte	0x1
	.byte	0x45
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x14
	.4byte	.LASF195
	.byte	0x1
	.byte	0x45
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x1
	.byte	0x46
	.4byte	0xdfb
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF293
	.byte	0x1
	.byte	0x5f
	.4byte	0x54
	.byte	0x1
	.4byte	0xed6
	.uleb128 0x23
	.string	"l"
	.byte	0x1
	.byte	0x5f
	.4byte	0x54
	.byte	0
	.uleb128 0x24
	.4byte	.LASF216
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0x103d
	.uleb128 0x25
	.4byte	.LASF197
	.byte	0x1
	.byte	0xbd
	.4byte	0x9a2
	.uleb128 0x23
	.string	"pic"
	.byte	0x1
	.byte	0xbd
	.4byte	0x103d
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x1
	.byte	0xbd
	.4byte	0xbce
	.uleb128 0x25
	.4byte	.LASF193
	.byte	0x1
	.byte	0xbd
	.4byte	0xbce
	.uleb128 0x25
	.4byte	.LASF198
	.byte	0x1
	.byte	0xbd
	.4byte	0x1049
	.uleb128 0x26
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x195
	.uleb128 0x27
	.uleb128 0x28
	.4byte	.LASF199
	.byte	0x1
	.byte	0xbe
	.4byte	0x78
	.uleb128 0x28
	.4byte	.LASF200
	.byte	0x1
	.byte	0xbe
	.4byte	0x78
	.uleb128 0x28
	.4byte	.LASF201
	.byte	0x1
	.byte	0xbe
	.4byte	0x78
	.uleb128 0x28
	.4byte	.LASF202
	.byte	0x1
	.byte	0xbe
	.4byte	0x78
	.uleb128 0x28
	.4byte	.LASF203
	.byte	0x1
	.byte	0xbe
	.4byte	0x78
	.uleb128 0x28
	.4byte	.LASF204
	.byte	0x1
	.byte	0xbf
	.4byte	0x1043
	.uleb128 0x29
	.string	"row"
	.byte	0x1
	.byte	0xc0
	.4byte	0x78
	.uleb128 0x28
	.4byte	.LASF205
	.byte	0x1
	.byte	0xc0
	.4byte	0x78
	.uleb128 0x28
	.4byte	.LASF206
	.byte	0x1
	.byte	0xc1
	.4byte	0x1043
	.uleb128 0x28
	.4byte	.LASF207
	.byte	0x1
	.byte	0xc1
	.4byte	0x1043
	.uleb128 0x28
	.4byte	.LASF208
	.byte	0x1
	.byte	0xc2
	.4byte	0xeb0
	.uleb128 0x28
	.4byte	.LASF209
	.byte	0x1
	.byte	0xc3
	.4byte	0x1043
	.uleb128 0x28
	.4byte	.LASF210
	.byte	0x1
	.byte	0xca
	.4byte	0x104f
	.uleb128 0x2a
	.4byte	0xfe7
	.uleb128 0x2b
	.string	"red"
	.byte	0x1
	.2byte	0x113
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x113
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x113
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x113
	.4byte	0x42
	.byte	0
	.uleb128 0x27
	.uleb128 0x2b
	.string	"red"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x13c
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x13c
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x13c
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x13c
	.4byte	0x42
	.uleb128 0x2c
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x13c
	.4byte	0x42
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1043
	.uleb128 0x7
	.byte	0x4
	.4byte	0xda0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb66
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbd4
	.uleb128 0x2d
	.4byte	.LASF217
	.byte	0x2
	.2byte	0x8a9
	.byte	0x3
	.4byte	0x106f
	.uleb128 0x2e
	.4byte	.LASF218
	.byte	0x2
	.2byte	0x8a9
	.4byte	0xa9
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF219
	.byte	0x2
	.2byte	0x95d
	.byte	0x3
	.4byte	0x1089
	.uleb128 0x2e
	.4byte	.LASF218
	.byte	0x2
	.2byte	0x95d
	.4byte	0xa9
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF295
	.byte	0x2
	.2byte	0x845
	.byte	0x3
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1
	.byte	0x70
	.4byte	.LASF222
	.4byte	0x54
	.4byte	.LFB72
	.4byte	.LFE72
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x10e1
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0x70
	.4byte	0x54
	.4byte	.LLST0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x33
	.string	"b1"
	.byte	0x1
	.byte	0x71
	.4byte	0xda0
	.4byte	.LLST0
	.uleb128 0x33
	.string	"b2"
	.byte	0x1
	.byte	0x71
	.4byte	0xda0
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF221
	.byte	0x1
	.byte	0x7e
	.4byte	.LASF223
	.4byte	0x54
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x110c
	.uleb128 0x34
	.string	"l"
	.byte	0x1
	.byte	0x7e
	.4byte	0x54
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF224
	.byte	0x1
	.byte	0x87
	.4byte	.LASF225
	.4byte	0x78
	.4byte	.LFB74
	.4byte	.LFE74
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x117b
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0x87
	.4byte	0x78
	.4byte	.LLST3
	.uleb128 0x35
	.4byte	.LBB53
	.4byte	.LBE53
	.uleb128 0x33
	.string	"b1"
	.byte	0x1
	.byte	0x88
	.4byte	0xda0
	.4byte	.LLST3
	.uleb128 0x33
	.string	"b2"
	.byte	0x1
	.byte	0x88
	.4byte	0xda0
	.4byte	.LLST5
	.uleb128 0x33
	.string	"b3"
	.byte	0x1
	.byte	0x88
	.4byte	0xda0
	.4byte	.LLST6
	.uleb128 0x33
	.string	"b4"
	.byte	0x1
	.byte	0x88
	.4byte	0xda0
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF226
	.byte	0x1
	.byte	0x97
	.4byte	.LASF227
	.4byte	0x78
	.4byte	.LFB75
	.4byte	.LFE75
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x11a6
	.uleb128 0x34
	.string	"l"
	.byte	0x1
	.byte	0x97
	.4byte	0x78
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF228
	.byte	0x1
	.byte	0xa0
	.4byte	.LASF229
	.4byte	0x14a
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST8
	.4byte	0x1215
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.byte	0xa0
	.4byte	0x14a
	.4byte	.LLST9
	.uleb128 0x37
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0x11fd
	.uleb128 0x38
	.4byte	.LASF230
	.byte	0x1
	.byte	0xa4
	.4byte	0x11fd
	.byte	0x1
	.byte	0x59
	.uleb128 0x39
	.4byte	.LASF231
	.byte	0x1
	.byte	0xa4
	.4byte	0x11fd
	.4byte	.LLST10
	.byte	0
	.uleb128 0x3a
	.byte	0x4
	.byte	0x1
	.byte	0xa1
	.uleb128 0x3b
	.string	"f"
	.byte	0x1
	.byte	0xa2
	.4byte	0x14a
	.uleb128 0x3b
	.string	"b"
	.byte	0x1
	.byte	0xa3
	.4byte	0x184
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF232
	.byte	0x1
	.byte	0xb4
	.4byte	.LASF233
	.4byte	0x14a
	.4byte	.LFB77
	.4byte	.LFE77
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1241
	.uleb128 0x34
	.string	"f"
	.byte	0x1
	.byte	0xb4
	.4byte	0x14a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF234
	.byte	0x1
	.byte	0x5e
	.4byte	.LASF235
	.4byte	0x54
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST11
	.4byte	0x126f
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0x5e
	.4byte	0x54
	.4byte	.LLST12
	.byte	0
	.uleb128 0x3c
	.4byte	0xebb
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST13
	.4byte	0x128e
	.uleb128 0x3d
	.4byte	0xecc
	.4byte	.LLST14
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF236
	.byte	0x1
	.byte	0x60
	.4byte	.LASF237
	.4byte	0x78
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST15
	.4byte	0x12bc
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0x60
	.4byte	0x78
	.4byte	.LLST16
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF238
	.byte	0x1
	.byte	0x61
	.4byte	.LASF239
	.4byte	0x78
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST17
	.4byte	0x12ea
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0x61
	.4byte	0x78
	.4byte	.LLST18
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF240
	.byte	0x1
	.byte	0x62
	.4byte	.LASF241
	.4byte	0x14a
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST19
	.4byte	0x1318
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0x62
	.4byte	0x14a
	.4byte	.LLST20
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF242
	.byte	0x1
	.byte	0x63
	.4byte	.LASF243
	.4byte	0x14a
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST21
	.4byte	0x1346
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.byte	0x63
	.4byte	0x14a
	.4byte	.LLST22
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF246
	.byte	0x1
	.byte	0x64
	.4byte	.LASF248
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST23
	.4byte	0x138f
	.uleb128 0x31
	.string	"bp"
	.byte	0x1
	.byte	0x64
	.4byte	0x182
	.4byte	.LLST24
	.uleb128 0x3f
	.4byte	.LASF244
	.byte	0x1
	.byte	0x64
	.4byte	0x78
	.4byte	.LLST25
	.uleb128 0x3f
	.4byte	.LASF245
	.byte	0x1
	.byte	0x64
	.4byte	0x78
	.4byte	.LLST26
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF247
	.byte	0x1
	.byte	0x65
	.4byte	.LASF249
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST27
	.4byte	0x13d8
	.uleb128 0x31
	.string	"bp"
	.byte	0x1
	.byte	0x65
	.4byte	0x182
	.4byte	.LLST28
	.uleb128 0x3f
	.4byte	.LASF244
	.byte	0x1
	.byte	0x65
	.4byte	0x78
	.4byte	.LLST29
	.uleb128 0x3f
	.4byte	.LASF245
	.byte	0x1
	.byte	0x65
	.4byte	0x78
	.4byte	.LLST30
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF250
	.byte	0x1
	.byte	0x66
	.4byte	.LASF251
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST31
	.4byte	0x1412
	.uleb128 0x31
	.string	"bp"
	.byte	0x1
	.byte	0x66
	.4byte	0x182
	.4byte	.LLST32
	.uleb128 0x3f
	.4byte	.LASF244
	.byte	0x1
	.byte	0x66
	.4byte	0x78
	.4byte	.LLST33
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF252
	.byte	0x1
	.byte	0x68
	.4byte	.LASF253
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST34
	.4byte	0x144d
	.uleb128 0x31
	.string	"out"
	.byte	0x1
	.byte	0x68
	.4byte	0x1043
	.4byte	.LLST35
	.uleb128 0x31
	.string	"src"
	.byte	0x1
	.byte	0x68
	.4byte	0x78
	.4byte	.LLST36
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF254
	.byte	0x1
	.byte	0x69
	.4byte	.LASF255
	.4byte	0x78
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST37
	.4byte	0x147c
	.uleb128 0x31
	.string	"in"
	.byte	0x1
	.byte	0x69
	.4byte	0x1043
	.4byte	.LLST38
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LASF296
	.4byte	0x78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LLST39
	.4byte	0x185b
	.uleb128 0x41
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x78
	.4byte	.LLST40
	.uleb128 0x41
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x175
	.4byte	.LLST41
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x42
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x78
	.4byte	.LLST42
	.uleb128 0x43
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x78
	.byte	0x18
	.uleb128 0x44
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x1de
	.byte	0x3
	.byte	0x91
	.sleb128 -1244
	.uleb128 0x44
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x1de
	.byte	0x3
	.byte	0x91
	.sleb128 -1292
	.uleb128 0x44
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x1de
	.byte	0x3
	.byte	0x91
	.sleb128 -1340
	.uleb128 0x2b
	.string	"mvi"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x1de
	.uleb128 0x44
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x1ff
	.byte	0x3
	.byte	0x91
	.sleb128 -1196
	.uleb128 0x45
	.string	"cam"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x1d3
	.byte	0x3
	.byte	0x91
	.sleb128 -1404
	.uleb128 0x45
	.string	"up"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x1d3
	.byte	0x3
	.byte	0x91
	.sleb128 -1416
	.uleb128 0x44
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x1d3
	.byte	0x3
	.byte	0x91
	.sleb128 -1428
	.uleb128 0x44
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x185b
	.byte	0x3
	.byte	0x91
	.sleb128 -1376
	.uleb128 0x2c
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1cd
	.4byte	0xbdf
	.uleb128 0x42
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x186b
	.4byte	.LLST43
	.uleb128 0x42
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x1871
	.4byte	.LLST44
	.uleb128 0x44
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x1877
	.byte	0x3
	.byte	0x91
	.sleb128 -1132
	.uleb128 0x42
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x78
	.4byte	.LLST45
	.uleb128 0x42
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x78
	.4byte	.LLST46
	.uleb128 0x42
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x1dd
	.4byte	0xb4
	.4byte	.LLST47
	.uleb128 0x46
	.string	"pic"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x1043
	.4byte	.LLST48
	.uleb128 0x42
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x14a
	.4byte	.LLST49
	.uleb128 0x47
	.4byte	0xed6
	.4byte	.LBB85
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x1df
	.4byte	0x17df
	.uleb128 0x48
	.4byte	0xf03
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5558
	.sleb128 0
	.uleb128 0x48
	.4byte	0xef8
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5542
	.sleb128 0
	.uleb128 0x48
	.4byte	0xeed
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5590
	.sleb128 0
	.uleb128 0x3d
	.4byte	0xee2
	.4byte	.LLST50
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x49
	.4byte	0xf19
	.4byte	.L37
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x4a
	.4byte	0xf22
	.4byte	.LLST45
	.uleb128 0x4a
	.4byte	0xf2d
	.4byte	.LLST46
	.uleb128 0x4a
	.4byte	0xf38
	.4byte	.LLST53
	.uleb128 0x4a
	.4byte	0xf43
	.4byte	.LLST54
	.uleb128 0x4a
	.4byte	0xf4e
	.4byte	.LLST55
	.uleb128 0x4a
	.4byte	0xf59
	.4byte	.LLST56
	.uleb128 0x4a
	.4byte	0xf64
	.4byte	.LLST57
	.uleb128 0x4a
	.4byte	0xf6f
	.4byte	.LLST58
	.uleb128 0x4a
	.4byte	0xf7a
	.4byte	.LLST59
	.uleb128 0x4a
	.4byte	0xf85
	.4byte	.LLST60
	.uleb128 0x4b
	.4byte	0xf90
	.uleb128 0x4a
	.4byte	0xf9b
	.4byte	.LLST61
	.uleb128 0x4a
	.4byte	0xfa6
	.4byte	.LLST62
	.uleb128 0x4c
	.4byte	0xebb
	.4byte	.LBB88
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xd6
	.4byte	0x16d8
	.uleb128 0x3d
	.4byte	0xecc
	.4byte	.LLST63
	.byte	0
	.uleb128 0x4c
	.4byte	0xebb
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xd8
	.4byte	0x16f5
	.uleb128 0x3d
	.4byte	0xecc
	.4byte	.LLST64
	.byte	0
	.uleb128 0x4d
	.4byte	0xebb
	.4byte	.LBB96
	.4byte	.LBE96
	.byte	0x1
	.byte	0xdb
	.4byte	0x1712
	.uleb128 0x3d
	.4byte	0xecc
	.4byte	.LLST65
	.byte	0
	.uleb128 0x4d
	.4byte	0xebb
	.4byte	.LBB98
	.4byte	.LBE98
	.byte	0x1
	.byte	0xdd
	.4byte	0x172f
	.uleb128 0x3d
	.4byte	0xecc
	.4byte	.LLST66
	.byte	0
	.uleb128 0x4d
	.4byte	0xebb
	.4byte	.LBB100
	.4byte	.LBE100
	.byte	0x1
	.byte	0xdf
	.4byte	0x174c
	.uleb128 0x3d
	.4byte	0xecc
	.4byte	.LLST67
	.byte	0
	.uleb128 0x4c
	.4byte	0xebb
	.4byte	.LBB102
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0xe1
	.4byte	0x1769
	.uleb128 0x3d
	.4byte	0xecc
	.4byte	.LLST68
	.byte	0
	.uleb128 0x4e
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0x17b2
	.uleb128 0x4a
	.4byte	0xfe8
	.4byte	.LLST69
	.uleb128 0x4a
	.4byte	0xff4
	.4byte	.LLST70
	.uleb128 0x4a
	.4byte	0x1000
	.4byte	.LLST71
	.uleb128 0x4a
	.4byte	0x100c
	.4byte	.LLST72
	.uleb128 0x4a
	.4byte	0x1018
	.4byte	.LLST73
	.uleb128 0x4a
	.4byte	0x1024
	.4byte	.LLST74
	.uleb128 0x4a
	.4byte	0x1030
	.4byte	.LLST75
	.byte	0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x118
	.uleb128 0x4a
	.4byte	0xfb6
	.4byte	.LLST76
	.uleb128 0x4a
	.4byte	0xfc2
	.4byte	.LLST77
	.uleb128 0x4a
	.4byte	0xfce
	.4byte	.LLST78
	.uleb128 0x4a
	.4byte	0xfda
	.4byte	.LLST79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x140
	.uleb128 0x2c
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x1f1
	.4byte	0xb4
	.uleb128 0x2c
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x1f2
	.4byte	0xb4
	.uleb128 0x44
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x214
	.4byte	0xdf0
	.byte	0x3
	.byte	0x91
	.sleb128 -1392
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x170
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.2byte	0x216
	.4byte	0x78
	.4byte	.LLST80
	.uleb128 0x47
	.4byte	0x1055
	.4byte	.LBB133
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.2byte	0x217
	.4byte	0x183d
	.uleb128 0x3d
	.4byte	0x1062
	.4byte	.LLST81
	.byte	0
	.uleb128 0x4f
	.4byte	0x106f
	.4byte	.LBB137
	.4byte	.LBE137
	.byte	0x1
	.2byte	0x218
	.uleb128 0x3d
	.4byte	0x107c
	.4byte	.LLST82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x1a2
	.4byte	0x186b
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd95
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd14
	.uleb128 0xa
	.4byte	0x16e
	.4byte	0x1888
	.uleb128 0x20
	.4byte	0x8a
	.2byte	0x3ff
	.byte	0
	.uleb128 0x50
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x548
	.4byte	0x1896
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x189b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x280
	.uleb128 0xa
	.4byte	0x14a
	.4byte	0x18b7
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x17
	.uleb128 0xb
	.4byte	0x8a
	.byte	0x4
	.byte	0
	.uleb128 0x51
	.4byte	.LASF276
	.byte	0x1
	.byte	0x17
	.4byte	0x18a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cubedata
	.uleb128 0x16
	.4byte	0x54
	.4byte	0x18d8
	.uleb128 0x17
	.4byte	0x54
	.byte	0
	.uleb128 0x38
	.4byte	.LASF277
	.byte	0x1
	.byte	0x52
	.4byte	0x18e9
	.byte	0x5
	.byte	0x3
	.4byte	_ZL9_BigShort
	.uleb128 0x7
	.byte	0x4
	.4byte	0x18c9
	.uleb128 0x38
	.4byte	.LASF278
	.byte	0x1
	.byte	0x53
	.4byte	0x18e9
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12_LittleShort
	.uleb128 0x16
	.4byte	0x78
	.4byte	0x190f
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x38
	.4byte	.LASF279
	.byte	0x1
	.byte	0x54
	.4byte	0x1920
	.byte	0x5
	.byte	0x3
	.4byte	_ZL8_BigLong
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1900
	.uleb128 0x38
	.4byte	.LASF280
	.byte	0x1
	.byte	0x55
	.4byte	0x1920
	.byte	0x5
	.byte	0x3
	.4byte	_ZL11_LittleLong
	.uleb128 0x16
	.4byte	0x14a
	.4byte	0x1946
	.uleb128 0x17
	.4byte	0x14a
	.byte	0
	.uleb128 0x38
	.4byte	.LASF281
	.byte	0x1
	.byte	0x56
	.4byte	0x1957
	.byte	0x5
	.byte	0x3
	.4byte	_ZL9_BigFloat
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1937
	.uleb128 0x38
	.4byte	.LASF282
	.byte	0x1
	.byte	0x57
	.4byte	0x1957
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12_LittleFloat
	.uleb128 0x1f
	.4byte	0x1983
	.uleb128 0x17
	.4byte	0x182
	.uleb128 0x17
	.4byte	0x78
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x38
	.4byte	.LASF283
	.byte	0x1
	.byte	0x58
	.4byte	0x1994
	.byte	0x5
	.byte	0x3
	.4byte	_ZL12_BigRevBytes
	.uleb128 0x1d
	.4byte	0x1999
	.uleb128 0x7
	.byte	0x4
	.4byte	0x196e
	.uleb128 0x38
	.4byte	.LASF284
	.byte	0x1
	.byte	0x59
	.4byte	0x19b0
	.byte	0x5
	.byte	0x3
	.4byte	_ZL15_LittleRevBytes
	.uleb128 0x1d
	.4byte	0x1999
	.uleb128 0x1f
	.4byte	0x19c5
	.uleb128 0x17
	.4byte	0x182
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x38
	.4byte	.LASF285
	.byte	0x1
	.byte	0x5a
	.4byte	0x19d6
	.byte	0x5
	.byte	0x3
	.4byte	_ZL15_LittleBitField
	.uleb128 0x1d
	.4byte	0x19db
	.uleb128 0x7
	.byte	0x4
	.4byte	0x19b5
	.uleb128 0x1f
	.4byte	0x19f1
	.uleb128 0x17
	.4byte	0x1043
	.uleb128 0x17
	.4byte	0x78
	.byte	0
	.uleb128 0x38
	.4byte	.LASF286
	.byte	0x1
	.byte	0x5b
	.4byte	0x1a02
	.byte	0x5
	.byte	0x3
	.4byte	_ZL14_SixtetsForInt
	.uleb128 0x1d
	.4byte	0x1a07
	.uleb128 0x7
	.byte	0x4
	.4byte	0x19e1
	.uleb128 0x16
	.4byte	0x78
	.4byte	0x1a1c
	.uleb128 0x17
	.4byte	0x1043
	.byte	0
	.uleb128 0x38
	.4byte	.LASF287
	.byte	0x1
	.byte	0x5c
	.4byte	0x1a2d
	.byte	0x5
	.byte	0x3
	.4byte	_ZL14_IntForSixtets
	.uleb128 0x1d
	.4byte	0x1a32
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1a0d
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x43
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB76-.Ltext0
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
	.4byte	.LFE76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB61-.Ltext0
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
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB62-.Ltext0
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
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB63-.Ltext0
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
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB64-.Ltext0
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
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB79-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1440
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 -5
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -1432
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-1-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63-1-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL65-1-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95-1-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105-1-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123-1-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL154-1-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160-1-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -1132
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x6
	.byte	0x87
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x6
	.byte	0x87
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x6
	.byte	0x87
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x6
	.byte	0x87
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-1-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1a
	.byte	0x91
	.sleb128 -101
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x33
	.byte	0x26
	.byte	0x87
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x1e
	.byte	0x85
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x3
	.byte	0x85
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x3
	.byte	0x85
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x3
	.byte	0x83
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x3
	.byte	0x86
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 10
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-1-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x3
	.byte	0x84
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL160-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL180-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-1-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 3
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 5
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 10
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 14
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL178-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL177-.Ltext0
	.4byte	.LFE79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0x1
	.byte	0x50
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
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB146-.Ltext0
	.4byte	.LBE146-.Ltext0
	.4byte	.LBB147-.Ltext0
	.4byte	.LBE147-.Ltext0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB139-.Ltext0
	.4byte	.LBE139-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF174:
	.string	"dirData"
.LASF136:
	.string	"long int"
.LASF270:
	.string	"pathbuf"
.LASF43:
	.string	"_maxwds"
.LASF293:
	.string	"LittleShort"
.LASF56:
	.string	"_on_exit_args"
.LASF167:
	.string	"dirStruct"
.LASF290:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGXSchratch\\\\build"
.LASF255:
	.string	"_Z13IntForSixtetsPh"
.LASF94:
	.string	"_wctomb_state"
.LASF228:
	.string	"FloatSwap"
.LASF280:
	.string	"_LittleLong"
.LASF244:
	.string	"elsize"
.LASF233:
	.string	"_Z11FloatNoSwapf"
.LASF47:
	.string	"__tm_sec"
.LASF234:
	.string	"BigShort"
.LASF96:
	.string	"_signal_buf"
.LASF165:
	.string	"8DIR_ITER"
.LASF66:
	.string	"_size"
.LASF161:
	.string	"st_blksize"
.LASF70:
	.string	"_lbfsize"
.LASF68:
	.string	"_flags"
.LASF206:
	.string	"buf_p"
.LASF107:
	.string	"_errno"
.LASF24:
	.string	"Mtx44"
.LASF247:
	.string	"LittleRevBytes"
.LASF229:
	.string	"_Z9FloatSwapf"
.LASF223:
	.string	"_Z11ShortNoSwaps"
.LASF209:
	.string	"targa_rgba"
.LASF10:
	.string	"unsigned int"
.LASF82:
	.string	"_mbstate"
.LASF72:
	.string	"_read"
.LASF91:
	.string	"_r48"
.LASF39:
	.string	"__ULong"
.LASF98:
	.string	"_mbrlen_state"
.LASF191:
	.string	"y_origin"
.LASF273:
	.string	"buttonsHeld"
.LASF172:
	.string	"d_name"
.LASF236:
	.string	"BigLong"
.LASF184:
	.string	"id_length"
.LASF109:
	.string	"_stdout"
.LASF26:
	.string	"_fpos_t"
.LASF63:
	.string	"_fns"
.LASF232:
	.string	"FloatNoSwap"
.LASF71:
	.string	"_cookie"
.LASF250:
	.string	"LittleBitField"
.LASF272:
	.string	"rquad"
.LASF268:
	.string	"direntry"
.LASF200:
	.string	"rows"
.LASF53:
	.string	"__tm_wday"
.LASF194:
	.string	"pixel_size"
.LASF284:
	.string	"_LittleRevBytes"
.LASF117:
	.string	"_result"
.LASF166:
	.string	"device"
.LASF138:
	.string	"ino_t"
.LASF221:
	.string	"ShortNoSwap"
.LASF203:
	.string	"numBytes"
.LASF0:
	.string	"int8_t"
.LASF286:
	.string	"_SixtetsForInt"
.LASF256:
	.string	"_main"
.LASF188:
	.string	"colormap_length"
.LASF35:
	.string	"__count"
.LASF13:
	.string	"vu16"
.LASF201:
	.string	"numPixels"
.LASF17:
	.string	"float"
.LASF224:
	.string	"LongSwap"
.LASF48:
	.string	"__tm_min"
.LASF196:
	.string	"TargaHeader"
.LASF104:
	.string	"_nextf"
.LASF218:
	.string	"index"
.LASF4:
	.string	"int16_t"
.LASF100:
	.string	"_mbsrtowcs_state"
.LASF12:
	.string	"long long unsigned int"
.LASF185:
	.string	"colormap_type"
.LASF210:
	.string	"file"
.LASF132:
	.string	"_rand48"
.LASF67:
	.string	"__sFILE"
.LASF45:
	.string	"_wds"
.LASF181:
	.string	"numtexmaps"
.LASF157:
	.string	"st_mtime"
.LASF219:
	.string	"GX_TexCoord1x16"
.LASF128:
	.string	"__FILE"
.LASF79:
	.string	"_offset"
.LASF76:
	.string	"_ubuf"
.LASF265:
	.string	"look"
.LASF264:
	.string	"perspective"
.LASF112:
	.string	"_emergency"
.LASF147:
	.string	"st_dev"
.LASF199:
	.string	"columns"
.LASF263:
	.string	"modelview"
.LASF274:
	.string	"buttonsInv"
.LASF192:
	.string	"width"
.LASF222:
	.string	"_Z9ShortSwaps"
.LASF171:
	.string	"d_type"
.LASF87:
	.string	"_asctime_buf"
.LASF54:
	.string	"__tm_yday"
.LASF36:
	.string	"__value"
.LASF111:
	.string	"_inc"
.LASF62:
	.string	"_ind"
.LASF14:
	.string	"vu32"
.LASF152:
	.string	"st_gid"
.LASF42:
	.string	"_next"
.LASF149:
	.string	"st_mode"
.LASF285:
	.string	"_LittleBitField"
.LASF296:
	.string	"_Z5_mainiPPc"
.LASF243:
	.string	"_Z11LittleFloatf"
.LASF150:
	.string	"st_nlink"
.LASF249:
	.string	"_Z14LittleRevBytesPvii"
.LASF227:
	.string	"_Z10LongNoSwapi"
.LASF248:
	.string	"_Z11BigRevBytesPvii"
.LASF119:
	.string	"_p5s"
.LASF19:
	.string	"vf32"
.LASF230:
	.string	"dat1"
.LASF231:
	.string	"dat2"
.LASF164:
	.string	"10_mbstate_t"
.LASF262:
	.string	"model"
.LASF214:
	.string	"packetHeader"
.LASF102:
	.string	"_wcsrtombs_state"
.LASF92:
	.string	"_mblen_state"
.LASF237:
	.string	"_Z7BigLongi"
.LASF20:
	.string	"char"
.LASF50:
	.string	"__tm_mday"
.LASF125:
	.string	"_sig_func"
.LASF99:
	.string	"_mbrtowc_state"
.LASF124:
	.string	"_atexit0"
.LASF15:
	.string	"vs16"
.LASF225:
	.string	"_Z8LongSwapi"
.LASF239:
	.string	"_Z10LittleLongi"
.LASF118:
	.string	"_result_k"
.LASF155:
	.string	"st_atime"
.LASF33:
	.string	"__wch"
.LASF1:
	.string	"uint8_t"
.LASF279:
	.string	"_BigLong"
.LASF137:
	.string	"time_t"
.LASF75:
	.string	"_close"
.LASF186:
	.string	"image_type"
.LASF115:
	.string	"__sdidinit"
.LASF245:
	.string	"elcount"
.LASF148:
	.string	"st_ino"
.LASF189:
	.string	"colormap_size"
.LASF108:
	.string	"_stdin"
.LASF168:
	.string	"DIR_ITER"
.LASF11:
	.string	"long long int"
.LASF65:
	.string	"_base"
.LASF120:
	.string	"_freelist"
.LASF29:
	.string	"__dev_t"
.LASF134:
	.string	"_mult"
.LASF135:
	.string	"_add"
.LASF101:
	.string	"_wcrtomb_state"
.LASF141:
	.string	"uid_t"
.LASF140:
	.string	"dev_t"
.LASF21:
	.string	"bool"
.LASF116:
	.string	"__cleanup"
.LASF16:
	.string	"vs32"
.LASF238:
	.string	"LittleLong"
.LASF37:
	.string	"_mbstate_t"
.LASF207:
	.string	"buffer"
.LASF38:
	.string	"_flock_t"
.LASF55:
	.string	"__tm_isdst"
.LASF215:
	.string	"packetSize"
.LASF226:
	.string	"LongNoSwap"
.LASF40:
	.string	"_vecf"
.LASF193:
	.string	"height"
.LASF103:
	.string	"_h_errno"
.LASF156:
	.string	"st_spare1"
.LASF158:
	.string	"st_spare2"
.LASF160:
	.string	"st_spare3"
.LASF163:
	.string	"st_spare4"
.LASF204:
	.string	"pixbuf"
.LASF254:
	.string	"IntForSixtets"
.LASF257:
	.string	"argc"
.LASF220:
	.string	"ShortSwap"
.LASF126:
	.string	"__sglue"
.LASF51:
	.string	"__tm_mon"
.LASF211:
	.string	"green"
.LASF258:
	.string	"argv"
.LASF162:
	.string	"st_blocks"
.LASF31:
	.string	"__gid_t"
.LASF6:
	.string	"uint16_t"
.LASF281:
	.string	"_BigFloat"
.LASF73:
	.string	"_write"
.LASF169:
	.string	"dirent"
.LASF253:
	.string	"_Z13SixtetsForIntPhi"
.LASF142:
	.string	"gid_t"
.LASF90:
	.string	"_rand_next"
.LASF175:
	.string	"fileData"
.LASF61:
	.string	"_atexit"
.LASF267:
	.string	"statbuf"
.LASF251:
	.string	"_Z14LittleBitFieldPvi"
.LASF5:
	.string	"short int"
.LASF180:
	.string	"numcolors"
.LASF261:
	.string	"view"
.LASF41:
	.string	"_Bigint"
.LASF289:
	.string	"d:/Data/Nintendo/DoomGXSchratch/src/stc.cpp"
.LASF276:
	.string	"cubedata"
.LASF241:
	.string	"_Z8BigFloatf"
.LASF283:
	.string	"_BigRevBytes"
.LASF291:
	.string	"_wgpipe"
.LASF127:
	.string	"__sf"
.LASF44:
	.string	"_sign"
.LASF25:
	.string	"WGPipe"
.LASF114:
	.string	"_current_locale"
.LASF80:
	.string	"_data"
.LASF235:
	.string	"_Z8BigShorts"
.LASF34:
	.string	"__wchb"
.LASF212:
	.string	"blue"
.LASF205:
	.string	"column"
.LASF52:
	.string	"__tm_year"
.LASF69:
	.string	"_file"
.LASF86:
	.string	"_strtok_last"
.LASF88:
	.string	"_localtime_buf"
.LASF106:
	.string	"_unused"
.LASF159:
	.string	"st_ctime"
.LASF123:
	.string	"_new"
.LASF121:
	.string	"_cvtlen"
.LASF197:
	.string	"name"
.LASF95:
	.string	"_l64a_buf"
.LASF113:
	.string	"_current_category"
.LASF242:
	.string	"LittleFloat"
.LASF178:
	.string	"gxvtxfmt"
.LASF78:
	.string	"_blksize"
.LASF146:
	.string	"stat"
.LASF46:
	.string	"__tm"
.LASF81:
	.string	"_lock"
.LASF271:
	.string	"texnum"
.LASF22:
	.string	"long unsigned int"
.LASF89:
	.string	"_gamma_signgam"
.LASF278:
	.string	"_LittleShort"
.LASF130:
	.string	"_niobs"
.LASF32:
	.string	"wint_t"
.LASF8:
	.string	"int32_t"
.LASF240:
	.string	"BigFloat"
.LASF294:
	.string	"breakOut"
.LASF58:
	.string	"_dso_handle"
.LASF176:
	.string	"byte"
.LASF269:
	.string	"entry"
.LASF144:
	.string	"nlink_t"
.LASF122:
	.string	"_cvtbuf"
.LASF3:
	.string	"unsigned char"
.LASF292:
	.string	"3DIR"
.LASF295:
	.string	"GX_End"
.LASF259:
	.string	"buttonState"
.LASF190:
	.string	"x_origin"
.LASF28:
	.string	"_LOCK_RECURSIVE_T"
.LASF49:
	.string	"__tm_hour"
.LASF287:
	.string	"_IntForSixtets"
.LASF195:
	.string	"attributes"
.LASF23:
	.string	"guVector"
.LASF64:
	.string	"__sbuf"
.LASF187:
	.string	"colormap_index"
.LASF202:
	.string	"fileSize"
.LASF30:
	.string	"__uid_t"
.LASF179:
	.string	"numnormals"
.LASF154:
	.string	"st_size"
.LASF129:
	.string	"_glue"
.LASF170:
	.string	"d_ino"
.LASF60:
	.string	"_is_cxa"
.LASF198:
	.string	"timestamp"
.LASF97:
	.string	"_getdate_err"
.LASF151:
	.string	"st_uid"
.LASF93:
	.string	"_mbtowc_state"
.LASF277:
	.string	"_BigShort"
.LASF57:
	.string	"_fnargs"
.LASF2:
	.string	"signed char"
.LASF143:
	.string	"mode_t"
.LASF266:
	.string	"cubeAxis"
.LASF84:
	.string	"_reent"
.LASF139:
	.string	"off_t"
.LASF7:
	.string	"short unsigned int"
.LASF275:
	.string	"wgPipe"
.LASF213:
	.string	"alphabyte"
.LASF288:
	.string	"GNU C++ 4.6.3"
.LASF59:
	.string	"_fntypes"
.LASF216:
	.string	"LoadTGA"
.LASF246:
	.string	"BigRevBytes"
.LASF18:
	.string	"double"
.LASF282:
	.string	"_LittleFloat"
.LASF27:
	.string	"_off_t"
.LASF252:
	.string	"SixtetsForInt"
.LASF77:
	.string	"_nbuf"
.LASF85:
	.string	"_unused_rand"
.LASF153:
	.string	"st_rdev"
.LASF145:
	.string	"FILE"
.LASF83:
	.string	"_flags2"
.LASF9:
	.string	"uint32_t"
.LASF217:
	.string	"GX_Position1x16"
.LASF133:
	.string	"_seed"
.LASF260:
	.string	"numverts"
.LASF208:
	.string	"targa_header"
.LASF74:
	.string	"_seek"
.LASF183:
	.string	"_TargaHeader"
.LASF173:
	.string	"position"
.LASF110:
	.string	"_stderr"
.LASF105:
	.string	"_nmalloc"
.LASF131:
	.string	"_iobs"
.LASF177:
	.string	"gxvtxfmt_s"
.LASF182:
	.string	"gxvtxfmt_t"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
