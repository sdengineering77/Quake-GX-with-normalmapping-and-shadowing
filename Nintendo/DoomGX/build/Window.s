	.file	"Window.cpp"
	.section	".text"
.Ltext0:
	.section	.text._ZN14idFixedWinding5ClearEv,"axG",@progbits,_ZN14idFixedWinding5ClearEv,comdat
	.align 2
	.weak	_ZN14idFixedWinding5ClearEv
	.type	_ZN14idFixedWinding5ClearEv, @function
_ZN14idFixedWinding5ClearEv:
.LFB1502:
	.file 1 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/geometry/Winding.h"
	.loc 1 398 0
	.cfi_startproc
.LVL0:
	.loc 1 399 0
	li 0,0
	.loc 1 400 0
	.loc 1 399 0
	stw 0,4(3)
	.loc 1 400 0
	blr
	.cfi_endproc
.LFE1502:
	.size	_ZN14idFixedWinding5ClearEv, .-_ZN14idFixedWinding5ClearEv
	.section	.text._ZN6idCVarD2Ev,"axG",@progbits,_ZN6idCVarD5Ev,comdat
	.align 2
	.weak	_ZN6idCVarD2Ev
	.type	_ZN6idCVarD2Ev, @function
_ZN6idCVarD2Ev:
.LFB2175:
	.file 2 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/CVarSystem.h"
	.loc 2 127 0
	.cfi_startproc
.LVL1:
.LBB3760:
	.loc 2 127 0
	lis 9,_ZTV6idCVar+8@ha
.LBE3760:
.LBB3761:
	la 0,_ZTV6idCVar+8@l(9)
	stw 0,0(3)
.LBE3761:
	blr
	.cfi_endproc
.LFE2175:
	.size	_ZN6idCVarD2Ev, .-_ZN6idCVarD2Ev
	.section	.text._ZN6idCVar17InternalSetStringEPKc,"axG",@progbits,_ZN6idCVar17InternalSetStringEPKc,comdat
	.align 2
	.weak	_ZN6idCVar17InternalSetStringEPKc
	.type	_ZN6idCVar17InternalSetStringEPKc, @function
_ZN6idCVar17InternalSetStringEPKc:
.LFB2197:
	.loc 2 173 0
	.cfi_startproc
.LVL2:
	.loc 2 173 0
	blr
	.cfi_endproc
.LFE2197:
	.size	_ZN6idCVar17InternalSetStringEPKc, .-_ZN6idCVar17InternalSetStringEPKc
	.section	.text._ZN6idCVar15InternalSetBoolEb,"axG",@progbits,_ZN6idCVar15InternalSetBoolEb,comdat
	.align 2
	.weak	_ZN6idCVar15InternalSetBoolEb
	.type	_ZN6idCVar15InternalSetBoolEb, @function
_ZN6idCVar15InternalSetBoolEb:
.LFB2198:
	.loc 2 174 0
	.cfi_startproc
.LVL3:
	.loc 2 174 0
	blr
	.cfi_endproc
.LFE2198:
	.size	_ZN6idCVar15InternalSetBoolEb, .-_ZN6idCVar15InternalSetBoolEb
	.section	.text._ZN6idCVar18InternalSetIntegerEi,"axG",@progbits,_ZN6idCVar18InternalSetIntegerEi,comdat
	.align 2
	.weak	_ZN6idCVar18InternalSetIntegerEi
	.type	_ZN6idCVar18InternalSetIntegerEi, @function
_ZN6idCVar18InternalSetIntegerEi:
.LFB2199:
	.loc 2 175 0
	.cfi_startproc
.LVL4:
	.loc 2 175 0
	blr
	.cfi_endproc
.LFE2199:
	.size	_ZN6idCVar18InternalSetIntegerEi, .-_ZN6idCVar18InternalSetIntegerEi
	.section	.text._ZN6idCVar16InternalSetFloatEf,"axG",@progbits,_ZN6idCVar16InternalSetFloatEf,comdat
	.align 2
	.weak	_ZN6idCVar16InternalSetFloatEf
	.type	_ZN6idCVar16InternalSetFloatEf, @function
_ZN6idCVar16InternalSetFloatEf:
.LFB2200:
	.loc 2 176 0
	.cfi_startproc
.LVL5:
	.loc 2 176 0
	blr
	.cfi_endproc
.LFE2200:
	.size	_ZN6idCVar16InternalSetFloatEf, .-_ZN6idCVar16InternalSetFloatEf
	.section	.text._ZN9idWinBool15WriteToSaveGameEP6idFile,"axG",@progbits,_ZN9idWinBool15WriteToSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN9idWinBool15WriteToSaveGameEP6idFile
	.type	_ZN9idWinBool15WriteToSaveGameEP6idFile, @function
_ZN9idWinBool15WriteToSaveGameEP6idFile:
.LFB2612:
	.file 3 "d:/Data/Nintendo/DoomGX/src/ui/Winvar.h"
	.loc 3 145 0
	.cfi_startproc
.LVL6:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 146 0
	li 5,1
	.loc 3 145 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 146 0
	lwz 9,0(4)
	addi 4,3,12
.LVL7:
	mr 3,31
.LVL8:
	lwz 0,24(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 147 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,13
	lwz 0,24(9)
	li 5,1
	mtctr 0
	bctrl
	.loc 3 148 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL9:
	mtlr 0
	lwz 31,12(1)
.LVL10:
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2612:
	.size	_ZN9idWinBool15WriteToSaveGameEP6idFile, .-_ZN9idWinBool15WriteToSaveGameEP6idFile
	.section	.text._ZN9idWinBool16ReadFromSaveGameEP6idFile,"axG",@progbits,_ZN9idWinBool16ReadFromSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN9idWinBool16ReadFromSaveGameEP6idFile
	.type	_ZN9idWinBool16ReadFromSaveGameEP6idFile, @function
_ZN9idWinBool16ReadFromSaveGameEP6idFile:
.LFB2613:
	.loc 3 149 0
	.cfi_startproc
.LVL11:
	mflr 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 150 0
	li 5,1
	.loc 3 149 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 150 0
	lwz 9,0(4)
	addi 4,3,12
.LVL12:
	mr 3,31
.LVL13:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 151 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,13
	lwz 0,20(9)
	li 5,1
	mtctr 0
	bctrl
	.loc 3 152 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL14:
	mtlr 0
	lwz 31,12(1)
.LVL15:
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2613:
	.size	_ZN9idWinBool16ReadFromSaveGameEP6idFile, .-_ZN9idWinBool16ReadFromSaveGameEP6idFile
	.section	.text._ZNK9idWinBool1xEv,"axG",@progbits,_ZNK9idWinBool1xEv,comdat
	.align 2
	.weak	_ZNK9idWinBool1xEv
	.type	_ZNK9idWinBool1xEv, @function
_ZNK9idWinBool1xEv:
.LFB2614:
	.loc 3 154 0
	.cfi_startproc
.LVL16:
	.loc 3 154 0
	lbz 0,13(3)
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	cmpwi 7,0,0
	beqlr+ 7
	lis 9,.LC0@ha
	lfs 1,.LC0@l(9)
	blr
	.cfi_endproc
.LFE2614:
	.size	_ZNK9idWinBool1xEv, .-_ZNK9idWinBool1xEv
	.section	.text._ZNK8idWinStr5c_strEv,"axG",@progbits,_ZNK8idWinStr5c_strEv,comdat
	.align 2
	.weak	_ZNK8idWinStr5c_strEv
	.type	_ZNK8idWinStr5c_strEv, @function
_ZNK8idWinStr5c_strEv:
.LFB2632:
	.loc 3 212 0
	.cfi_startproc
.LVL17:
	.loc 3 214 0
	lwz 3,20(3)
.LVL18:
	blr
	.cfi_endproc
.LFE2632:
	.size	_ZNK8idWinStr5c_strEv, .-_ZNK8idWinStr5c_strEv
	.section	.text._ZN8idWinStr15WriteToSaveGameEP6idFile,"axG",@progbits,_ZN8idWinStr15WriteToSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN8idWinStr15WriteToSaveGameEP6idFile
	.type	_ZN8idWinStr15WriteToSaveGameEP6idFile, @function
_ZN8idWinStr15WriteToSaveGameEP6idFile:
.LFB2636:
	.loc 3 236 0
	.cfi_startproc
.LVL19:
	mflr 0
	stwu 1,-32(1)
.LCFI4:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB3767:
	.loc 3 237 0
	li 5,1
.LBE3767:
	.loc 3 236 0
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,36(1)
.LBB3768:
	.loc 3 237 0
	lwz 9,0(4)
	addi 4,3,12
.LVL20:
	mr 3,31
.LVL21:
	lwz 0,24(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 239 0
	lwz 0,16(30)
	.loc 3 240 0
	lwz 9,0(31)
	.loc 3 239 0
	mr 4,1
	stwu 0,8(4)
.LVL22:
	.loc 3 240 0
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 241 0
	lwz 5,8(1)
	cmpwi 7,5,0
	ble- 7,.L15
	.loc 3 242 0
	lwz 9,0(31)
	mr 3,31
	lwz 4,20(30)
	lwz 0,24(9)
	mtctr 0
	bctrl
.L15:
.LBE3768:
	.loc 3 244 0
	lwz 0,36(1)
	lwz 30,24(1)
.LVL23:
	mtlr 0
	lwz 31,28(1)
.LVL24:
	addi 1,1,32
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2636:
	.size	_ZN8idWinStr15WriteToSaveGameEP6idFile, .-_ZN8idWinStr15WriteToSaveGameEP6idFile
	.section	.text._ZNK8idWinStr1xEv,"axG",@progbits,_ZNK8idWinStr1xEv,comdat
	.align 2
	.weak	_ZNK8idWinStr1xEv
	.type	_ZNK8idWinStr1xEv, @function
_ZNK8idWinStr1xEv:
.LFB2638:
	.loc 3 257 0
	.cfi_startproc
.LVL25:
.LBB3769:
.LBB3770:
	.file 4 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/Str.h"
	.loc 4 522 0
	lwz 9,20(3)
.LBE3770:
.LBE3769:
	.loc 3 257 0
	lis 11,.LC1@ha
	lfs 1,.LC1@l(11)
	lbz 0,0(9)
	cmpwi 7,0,0
	beqlr+ 7
	lis 9,.LC0@ha
	lfs 1,.LC0@l(9)
	blr
	.cfi_endproc
.LFE2638:
	.size	_ZNK8idWinStr1xEv, .-_ZNK8idWinStr1xEv
	.section	.text._ZN8idWinInt15WriteToSaveGameEP6idFile,"axG",@progbits,_ZN8idWinInt15WriteToSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN8idWinInt15WriteToSaveGameEP6idFile
	.type	_ZN8idWinInt15WriteToSaveGameEP6idFile, @function
_ZN8idWinInt15WriteToSaveGameEP6idFile:
.LFB2653:
	.loc 3 306 0
	.cfi_startproc
.LVL26:
	mflr 0
	stwu 1,-16(1)
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 307 0
	li 5,1
	.loc 3 306 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 307 0
	lwz 9,0(4)
	addi 4,3,12
.LVL27:
	mr 3,31
.LVL28:
	lwz 0,24(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 308 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,24(9)
	li 5,4
	mtctr 0
	bctrl
	.loc 3 309 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL29:
	mtlr 0
	lwz 31,12(1)
.LVL30:
	addi 1,1,16
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2653:
	.size	_ZN8idWinInt15WriteToSaveGameEP6idFile, .-_ZN8idWinInt15WriteToSaveGameEP6idFile
	.section	.text._ZN8idWinInt16ReadFromSaveGameEP6idFile,"axG",@progbits,_ZN8idWinInt16ReadFromSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN8idWinInt16ReadFromSaveGameEP6idFile
	.type	_ZN8idWinInt16ReadFromSaveGameEP6idFile, @function
_ZN8idWinInt16ReadFromSaveGameEP6idFile:
.LFB2654:
	.loc 3 310 0
	.cfi_startproc
.LVL31:
	mflr 0
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 311 0
	li 5,1
	.loc 3 310 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 311 0
	lwz 9,0(4)
	addi 4,3,12
.LVL32:
	mr 3,31
.LVL33:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 312 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,20(9)
	li 5,4
	mtctr 0
	bctrl
	.loc 3 313 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL34:
	mtlr 0
	lwz 31,12(1)
.LVL35:
	addi 1,1,16
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2654:
	.size	_ZN8idWinInt16ReadFromSaveGameEP6idFile, .-_ZN8idWinInt16ReadFromSaveGameEP6idFile
	.section	.text._ZNK8idWinInt1xEv,"axG",@progbits,_ZNK8idWinInt1xEv,comdat
	.align 2
	.weak	_ZNK8idWinInt1xEv
	.type	_ZNK8idWinInt1xEv, @function
_ZNK8idWinInt1xEv:
.LFB2655:
	.loc 3 316 0
	.cfi_startproc
.LVL36:
	.loc 3 316 0
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	blr
	.cfi_endproc
.LFE2655:
	.size	_ZNK8idWinInt1xEv, .-_ZNK8idWinInt1xEv
	.section	.text._ZN10idWinFloat15WriteToSaveGameEP6idFile,"axG",@progbits,_ZN10idWinFloat15WriteToSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN10idWinFloat15WriteToSaveGameEP6idFile
	.type	_ZN10idWinFloat15WriteToSaveGameEP6idFile, @function
_ZN10idWinFloat15WriteToSaveGameEP6idFile:
.LFB2670:
	.loc 3 363 0
	.cfi_startproc
.LVL37:
	mflr 0
	stwu 1,-16(1)
.LCFI10:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 364 0
	li 5,1
	.loc 3 363 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 364 0
	lwz 9,0(4)
	addi 4,3,12
.LVL38:
	mr 3,31
.LVL39:
	lwz 0,24(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 365 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,24(9)
	li 5,4
	mtctr 0
	bctrl
	.loc 3 366 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL40:
	mtlr 0
	lwz 31,12(1)
.LVL41:
	addi 1,1,16
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2670:
	.size	_ZN10idWinFloat15WriteToSaveGameEP6idFile, .-_ZN10idWinFloat15WriteToSaveGameEP6idFile
	.section	.text._ZN10idWinFloat16ReadFromSaveGameEP6idFile,"axG",@progbits,_ZN10idWinFloat16ReadFromSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN10idWinFloat16ReadFromSaveGameEP6idFile
	.type	_ZN10idWinFloat16ReadFromSaveGameEP6idFile, @function
_ZN10idWinFloat16ReadFromSaveGameEP6idFile:
.LFB2671:
	.loc 3 367 0
	.cfi_startproc
.LVL42:
	mflr 0
	stwu 1,-16(1)
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 368 0
	li 5,1
	.loc 3 367 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 368 0
	lwz 9,0(4)
	addi 4,3,12
.LVL43:
	mr 3,31
.LVL44:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 369 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,20(9)
	li 5,4
	mtctr 0
	bctrl
	.loc 3 370 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL45:
	mtlr 0
	lwz 31,12(1)
.LVL46:
	addi 1,1,16
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2671:
	.size	_ZN10idWinFloat16ReadFromSaveGameEP6idFile, .-_ZN10idWinFloat16ReadFromSaveGameEP6idFile
	.section	.text._ZNK10idWinFloat1xEv,"axG",@progbits,_ZNK10idWinFloat1xEv,comdat
	.align 2
	.weak	_ZNK10idWinFloat1xEv
	.type	_ZNK10idWinFloat1xEv, @function
_ZNK10idWinFloat1xEv:
.LFB2672:
	.loc 3 372 0
	.cfi_startproc
.LVL47:
	.loc 3 372 0
	lfs 1,16(3)
	blr
	.cfi_endproc
.LFE2672:
	.size	_ZNK10idWinFloat1xEv, .-_ZNK10idWinFloat1xEv
	.section	.text._ZNK14idWinRectangle1xEv,"axG",@progbits,_ZNK14idWinRectangle1xEv,comdat
	.align 2
	.weak	_ZNK14idWinRectangle1xEv
	.type	_ZNK14idWinRectangle1xEv, @function
_ZNK14idWinRectangle1xEv:
.LFB2686:
	.loc 3 422 0
	.cfi_startproc
.LVL48:
	.loc 3 424 0
	lfs 1,16(3)
	blr
	.cfi_endproc
.LFE2686:
	.size	_ZNK14idWinRectangle1xEv, .-_ZNK14idWinRectangle1xEv
	.section	.text._ZN14idWinRectangle15WriteToSaveGameEP6idFile,"axG",@progbits,_ZN14idWinRectangle15WriteToSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN14idWinRectangle15WriteToSaveGameEP6idFile
	.type	_ZN14idWinRectangle15WriteToSaveGameEP6idFile, @function
_ZN14idWinRectangle15WriteToSaveGameEP6idFile:
.LFB2696:
	.loc 3 471 0
	.cfi_startproc
.LVL49:
	mflr 0
	stwu 1,-16(1)
.LCFI14:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 472 0
	li 5,1
	.loc 3 471 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 472 0
	lwz 9,0(4)
	addi 4,3,12
.LVL50:
	mr 3,31
.LVL51:
	lwz 0,24(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 473 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,24(9)
	li 5,16
	mtctr 0
	bctrl
	.loc 3 474 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL52:
	mtlr 0
	lwz 31,12(1)
.LVL53:
	addi 1,1,16
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2696:
	.size	_ZN14idWinRectangle15WriteToSaveGameEP6idFile, .-_ZN14idWinRectangle15WriteToSaveGameEP6idFile
	.section	.text._ZN14idWinRectangle16ReadFromSaveGameEP6idFile,"axG",@progbits,_ZN14idWinRectangle16ReadFromSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN14idWinRectangle16ReadFromSaveGameEP6idFile
	.type	_ZN14idWinRectangle16ReadFromSaveGameEP6idFile, @function
_ZN14idWinRectangle16ReadFromSaveGameEP6idFile:
.LFB2697:
	.loc 3 475 0
	.cfi_startproc
.LVL54:
	mflr 0
	stwu 1,-16(1)
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 476 0
	li 5,1
	.loc 3 475 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 476 0
	lwz 9,0(4)
	addi 4,3,12
.LVL55:
	mr 3,31
.LVL56:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 477 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,20(9)
	li 5,16
	mtctr 0
	bctrl
	.loc 3 478 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL57:
	mtlr 0
	lwz 31,12(1)
.LVL58:
	addi 1,1,16
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2697:
	.size	_ZN14idWinRectangle16ReadFromSaveGameEP6idFile, .-_ZN14idWinRectangle16ReadFromSaveGameEP6idFile
	.section	.text._ZNK9idWinVec41xEv,"axG",@progbits,_ZNK9idWinVec41xEv,comdat
	.align 2
	.weak	_ZNK9idWinVec41xEv
	.type	_ZNK9idWinVec41xEv, @function
_ZNK9idWinVec41xEv:
.LFB2730:
	.loc 3 584 0
	.cfi_startproc
.LVL59:
	.loc 3 586 0
	lfs 1,16(3)
	blr
	.cfi_endproc
.LFE2730:
	.size	_ZNK9idWinVec41xEv, .-_ZNK9idWinVec41xEv
	.section	.text._ZN9idWinVec415WriteToSaveGameEP6idFile,"axG",@progbits,_ZN9idWinVec415WriteToSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN9idWinVec415WriteToSaveGameEP6idFile
	.type	_ZN9idWinVec415WriteToSaveGameEP6idFile, @function
_ZN9idWinVec415WriteToSaveGameEP6idFile:
.LFB2739:
	.loc 3 630 0
	.cfi_startproc
.LVL60:
	mflr 0
	stwu 1,-16(1)
.LCFI18:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 631 0
	li 5,1
	.loc 3 630 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 631 0
	lwz 9,0(4)
	addi 4,3,12
.LVL61:
	mr 3,31
.LVL62:
	lwz 0,24(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 632 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,24(9)
	li 5,16
	mtctr 0
	bctrl
	.loc 3 633 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL63:
	mtlr 0
	lwz 31,12(1)
.LVL64:
	addi 1,1,16
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2739:
	.size	_ZN9idWinVec415WriteToSaveGameEP6idFile, .-_ZN9idWinVec415WriteToSaveGameEP6idFile
	.section	.text._ZN9idWinVec416ReadFromSaveGameEP6idFile,"axG",@progbits,_ZN9idWinVec416ReadFromSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN9idWinVec416ReadFromSaveGameEP6idFile
	.type	_ZN9idWinVec416ReadFromSaveGameEP6idFile, @function
_ZN9idWinVec416ReadFromSaveGameEP6idFile:
.LFB2740:
	.loc 3 634 0
	.cfi_startproc
.LVL65:
	mflr 0
	stwu 1,-16(1)
.LCFI20:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 3 635 0
	li 5,1
	.loc 3 634 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 635 0
	lwz 9,0(4)
	addi 4,3,12
.LVL66:
	mr 3,31
.LVL67:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 636 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,16
	lwz 0,20(9)
	li 5,16
	mtctr 0
	bctrl
	.loc 3 637 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL68:
	mtlr 0
	lwz 31,12(1)
.LVL69:
	addi 1,1,16
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2740:
	.size	_ZN9idWinVec416ReadFromSaveGameEP6idFile, .-_ZN9idWinVec416ReadFromSaveGameEP6idFile
	.section	.text._ZNK15idWinBackground5c_strEv,"axG",@progbits,_ZNK15idWinBackground5c_strEv,comdat
	.align 2
	.weak	_ZNK15idWinBackground5c_strEv
	.type	_ZNK15idWinBackground5c_strEv, @function
_ZNK15idWinBackground5c_strEv:
.LFB2777:
	.loc 3 777 0
	.cfi_startproc
.LVL70:
	.loc 3 779 0
	lwz 3,52(3)
.LVL71:
	blr
	.cfi_endproc
.LFE2777:
	.size	_ZNK15idWinBackground5c_strEv, .-_ZNK15idWinBackground5c_strEv
	.section	.text._ZN15idWinBackground15WriteToSaveGameEP6idFile,"axG",@progbits,_ZN15idWinBackground15WriteToSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN15idWinBackground15WriteToSaveGameEP6idFile
	.type	_ZN15idWinBackground15WriteToSaveGameEP6idFile, @function
_ZN15idWinBackground15WriteToSaveGameEP6idFile:
.LFB2782:
	.loc 3 818 0
	.cfi_startproc
.LVL72:
	mflr 0
	stwu 1,-32(1)
.LCFI22:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB3776:
	.loc 3 819 0
	li 5,1
.LBE3776:
	.loc 3 818 0
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,36(1)
.LBB3777:
	.loc 3 819 0
	lwz 9,0(4)
	addi 4,3,12
.LVL73:
	mr 3,31
.LVL74:
	lwz 0,24(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 821 0
	lwz 0,48(30)
	.loc 3 822 0
	lwz 9,0(31)
	.loc 3 821 0
	mr 4,1
	stwu 0,8(4)
.LVL75:
	.loc 3 822 0
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 823 0
	lwz 5,8(1)
	cmpwi 7,5,0
	ble- 7,.L33
	.loc 3 824 0
	lwz 9,0(31)
	mr 3,31
	lwz 4,52(30)
	lwz 0,24(9)
	mtctr 0
	bctrl
.L33:
.LBE3777:
	.loc 3 826 0
	lwz 0,36(1)
	lwz 30,24(1)
.LVL76:
	mtlr 0
	lwz 31,28(1)
.LVL77:
	addi 1,1,32
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2782:
	.size	_ZN15idWinBackground15WriteToSaveGameEP6idFile, .-_ZN15idWinBackground15WriteToSaveGameEP6idFile
	.section	.text._ZN8idWindow8SetBuddyEPS_,"axG",@progbits,_ZN8idWindow8SetBuddyEPS_,comdat
	.align 2
	.weak	_ZN8idWindow8SetBuddyEPS_
	.type	_ZN8idWindow8SetBuddyEPS_, @function
_ZN8idWindow8SetBuddyEPS_:
.LFB2819:
	.file 5 "d:/Data/Nintendo/DoomGX/src/ui/Window.h"
	.loc 5 279 0
	.cfi_startproc
.LVL78:
	.loc 5 279 0
	blr
	.cfi_endproc
.LFE2819:
	.size	_ZN8idWindow8SetBuddyEPS_, .-_ZN8idWindow8SetBuddyEPS_
	.section	.text._ZN8idWindow17HandleBuddyUpdateEPS_,"axG",@progbits,_ZN8idWindow17HandleBuddyUpdateEPS_,comdat
	.align 2
	.weak	_ZN8idWindow17HandleBuddyUpdateEPS_
	.type	_ZN8idWindow17HandleBuddyUpdateEPS_, @function
_ZN8idWindow17HandleBuddyUpdateEPS_:
.LFB2820:
	.loc 5 280 0
	.cfi_startproc
.LVL79:
	.loc 5 280 0
	blr
	.cfi_endproc
.LFE2820:
	.size	_ZN8idWindow17HandleBuddyUpdateEPS_, .-_ZN8idWindow17HandleBuddyUpdateEPS_
	.section	.text._ZN8idWindow9HasActionEv,"axG",@progbits,_ZN8idWindow9HasActionEv,comdat
	.align 2
	.weak	_ZN8idWindow9HasActionEv
	.type	_ZN8idWindow9HasActionEv, @function
_ZN8idWindow9HasActionEv:
.LFB2821:
	.loc 5 293 0
	.cfi_startproc
.LVL80:
	.loc 5 293 0
	blr
	.cfi_endproc
.LFE2821:
	.size	_ZN8idWindow9HasActionEv, .-_ZN8idWindow9HasActionEv
	.section	.text._ZN8idWindow10HasScriptsEv,"axG",@progbits,_ZN8idWindow10HasScriptsEv,comdat
	.align 2
	.weak	_ZN8idWindow10HasScriptsEv
	.type	_ZN8idWindow10HasScriptsEv, @function
_ZN8idWindow10HasScriptsEv:
.LFB2822:
	.loc 5 294 0
	.cfi_startproc
.LVL81:
	.loc 5 294 0
	blr
	.cfi_endproc
.LFE2822:
	.size	_ZN8idWindow10HasScriptsEv, .-_ZN8idWindow10HasScriptsEv
	.section	".text"
	.align 2
	.globl _ZN8idWindow19ArchiveToDictionaryEP6idDictb
	.type	_ZN8idWindow19ArchiveToDictionaryEP6idDictb, @function
_ZN8idWindow19ArchiveToDictionaryEP6idDictb:
.LFB2931:
	.file 6 "d:/Data/Nintendo/DoomGX/src/ui/Window.cpp"
	.loc 6 1345 0
	.cfi_startproc
.LVL82:
	mflr 0
	stwu 1,-24(1)
.LCFI24:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB3778:
.LBB3779:
	.loc 6 4264 0
	lwz 30,680(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL83:
	.loc 6 1348 0
	cmpwi 7,30,0
	ble- 7,.L39
	li 31,0
.LVL84:
.L41:
	.loc 6 1349 0 discriminator 2
	lwz 9,692(29)
	slwi 0,31,2
	mr 4,28
	li 5,1
	lwzx 3,9,0
	.loc 6 1348 0 discriminator 2
	addi 31,31,1
.LVL85:
	.loc 6 1349 0 discriminator 2
	lwz 9,0(3)
	lwz 0,28(9)
	mtctr 0
	bctrl
.LVL86:
	.loc 6 1348 0 discriminator 2
	cmpw 7,31,30
	bne+ 7,.L41
.LVL87:
.L39:
.LBE3779:
.LBE3778:
	.loc 6 1351 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL88:
	mtlr 0
	lwz 29,12(1)
.LVL89:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2931:
	.size	_ZN8idWindow19ArchiveToDictionaryEP6idDictb, .-_ZN8idWindow19ArchiveToDictionaryEP6idDictb
	.align 2
	.globl _ZN8idWindow18InitFromDictionaryEP6idDictb
	.type	_ZN8idWindow18InitFromDictionaryEP6idDictb, @function
_ZN8idWindow18InitFromDictionaryEP6idDictb:
.LFB2932:
	.loc 6 1358 0
	.cfi_startproc
.LVL90:
	mflr 0
	stwu 1,-24(1)
.LCFI26:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB3780:
.LBB3781:
	.loc 6 4264 0
	lwz 30,680(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL91:
	.loc 6 1361 0
	cmpwi 7,30,0
	ble- 7,.L43
	li 31,0
.LVL92:
.L45:
	.loc 6 1362 0 discriminator 2
	lwz 9,692(29)
	slwi 0,31,2
	mr 4,28
	li 5,1
	lwzx 3,9,0
	.loc 6 1361 0 discriminator 2
	addi 31,31,1
.LVL93:
	.loc 6 1362 0 discriminator 2
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
.LVL94:
	.loc 6 1361 0 discriminator 2
	cmpw 7,31,30
	bne+ 7,.L45
.LVL95:
.L43:
.LBE3781:
.LBE3780:
	.loc 6 1364 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL96:
	mtlr 0
	lwz 29,12(1)
.LVL97:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2932:
	.size	_ZN8idWindow18InitFromDictionaryEP6idDictb, .-_ZN8idWindow18InitFromDictionaryEP6idDictb
	.align 2
	.globl _ZN8idWindow5MovedEv
	.type	_ZN8idWindow5MovedEv, @function
_ZN8idWindow5MovedEv:
.LFB2936:
	.loc 6 1463 0
	.cfi_startproc
.LVL98:
	.loc 6 1464 0
	blr
	.cfi_endproc
.LFE2936:
	.size	_ZN8idWindow5MovedEv, .-_ZN8idWindow5MovedEv
	.align 2
	.globl _ZN8idWindow5SizedEv
	.type	_ZN8idWindow5SizedEv, @function
_ZN8idWindow5SizedEv:
.LFB2937:
	.loc 6 1471 0
	.cfi_startproc
.LVL99:
	.loc 6 1472 0
	blr
	.cfi_endproc
.LFE2937:
	.size	_ZN8idWindow5SizedEv, .-_ZN8idWindow5SizedEv
	.align 2
	.globl _ZN8idWindow9GainFocusEv
	.type	_ZN8idWindow9GainFocusEv, @function
_ZN8idWindow9GainFocusEv:
.LFB2938:
	.loc 6 1479 0
	.cfi_startproc
.LVL100:
	.loc 6 1480 0
	blr
	.cfi_endproc
.LFE2938:
	.size	_ZN8idWindow9GainFocusEv, .-_ZN8idWindow9GainFocusEv
	.align 2
	.globl _ZN8idWindow9LoseFocusEv
	.type	_ZN8idWindow9LoseFocusEv, @function
_ZN8idWindow9LoseFocusEv:
.LFB2939:
	.loc 6 1487 0
	.cfi_startproc
.LVL101:
	.loc 6 1488 0
	blr
	.cfi_endproc
.LFE2939:
	.size	_ZN8idWindow9LoseFocusEv, .-_ZN8idWindow9LoseFocusEv
	.align 2
	.globl _ZN8idWindow11GainCaptureEv
	.type	_ZN8idWindow11GainCaptureEv, @function
_ZN8idWindow11GainCaptureEv:
.LFB2940:
	.loc 6 1495 0
	.cfi_startproc
.LVL102:
	.loc 6 1496 0
	blr
	.cfi_endproc
.LFE2940:
	.size	_ZN8idWindow11GainCaptureEv, .-_ZN8idWindow11GainCaptureEv
	.align 2
	.globl _ZN8idWindow11LoseCaptureEv
	.type	_ZN8idWindow11LoseCaptureEv, @function
_ZN8idWindow11LoseCaptureEv:
.LFB2941:
	.loc 6 1503 0
	.cfi_startproc
.LVL103:
	.loc 6 1504 0
	lwz 0,48(3)
	.loc 6 1505 0
	.loc 6 1504 0
	rlwinm 0,0,0,26,24
	stw 0,48(3)
	.loc 6 1505 0
	blr
	.cfi_endproc
.LFE2941:
	.size	_ZN8idWindow11LoseCaptureEv, .-_ZN8idWindow11LoseCaptureEv
	.align 2
	.globl _ZN8idWindow9PostParseEv
	.type	_ZN8idWindow9PostParseEv, @function
_ZN8idWindow9PostParseEv:
.LFB2953:
	.loc 6 1738 0
	.cfi_startproc
.LVL104:
	.loc 6 1739 0
	blr
	.cfi_endproc
.LFE2953:
	.size	_ZN8idWindow9PostParseEv, .-_ZN8idWindow9PostParseEv
	.align 2
	.globl _ZN8idWindow16ReadFromDemoFileEP10idDemoFileb
	.type	_ZN8idWindow16ReadFromDemoFileEP10idDemoFileb, @function
_ZN8idWindow16ReadFromDemoFileEP10idDemoFileb:
.LFB2984:
	.loc 6 3194 0
	.cfi_startproc
.LVL105:
	.loc 6 3346 0
	blr
	.cfi_endproc
.LFE2984:
	.size	_ZN8idWindow16ReadFromDemoFileEP10idDemoFileb, .-_ZN8idWindow16ReadFromDemoFileEP10idDemoFileb
	.align 2
	.globl _ZN8idWindow15WriteToDemoFileEP10idDemoFile
	.type	_ZN8idWindow15WriteToDemoFileEP10idDemoFile, @function
_ZN8idWindow15WriteToDemoFileEP10idDemoFile:
.LFB2985:
	.loc 6 3353 0
	.cfi_startproc
.LVL106:
	.loc 6 3431 0
	blr
	.cfi_endproc
.LFE2985:
	.size	_ZN8idWindow15WriteToDemoFileEP10idDemoFile, .-_ZN8idWindow15WriteToDemoFileEP10idDemoFile
	.section	.text._ZN9idWinding5ClearEv,"axG",@progbits,_ZN9idWinding5ClearEv,comdat
	.align 2
	.weak	_ZN9idWinding5ClearEv
	.type	_ZN9idWinding5ClearEv, @function
_ZN9idWinding5ClearEv:
.LFB1473:
	.loc 1 249 0
	.cfi_startproc
.LVL107:
	mflr 0
	stwu 1,-16(1)
.LCFI28:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 250 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 251 0
	lwz 3,8(3)
.LVL108:
	.loc 1 250 0
	stw 0,4(31)
	.loc 1 251 0
	cmpwi 7,3,0
	beq- 7,.L57
	.loc 1 251 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L57:
	.loc 1 252 0 is_stmt 1
	li 0,0
	stw 0,8(31)
	.loc 1 253 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL109:
	mtlr 0
	addi 1,1,16
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1473:
	.size	_ZN9idWinding5ClearEv, .-_ZN9idWinding5ClearEv
	.section	.text._ZN9idWindingD2Ev,"axG",@progbits,_ZN9idWindingD5Ev,comdat
	.align 2
	.weak	_ZN9idWindingD2Ev
	.type	_ZN9idWindingD2Ev, @function
_ZN9idWindingD2Ev:
.LFB1461:
	.loc 1 183 0
	.cfi_startproc
.LVL110:
	mflr 0
	stwu 1,-16(1)
.LCFI30:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3783:
	lis 9,_ZTV9idWinding+8@ha
.LBE3783:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB3784:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL111:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L59
	.loc 1 184 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L59:
	.loc 1 185 0 is_stmt 1
	li 0,0
	stw 0,8(31)
.LBE3784:
	.loc 1 186 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL112:
	mtlr 0
	addi 1,1,16
.LCFI31:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1461:
	.size	_ZN9idWindingD2Ev, .-_ZN9idWindingD2Ev
	.section	.text._ZN6idCVarD0Ev,"axG",@progbits,_ZN6idCVarD5Ev,comdat
	.align 2
	.weak	_ZN6idCVarD0Ev
	.type	_ZN6idCVarD0Ev, @function
_ZN6idCVarD0Ev:
.LFB2177:
	.loc 2 127 0
	.cfi_startproc
.LVL113:
	mflr 0
	stwu 1,-8(1)
.LCFI32:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3785:
.LBB3786:
.LBB3787:
	lis 9,_ZTV6idCVar+8@ha
.LBE3787:
.LBE3786:
.LBE3785:
	stw 0,12(1)
.LBB3790:
.LBB3789:
.LBB3788:
	.loc 2 127 0
	la 0,_ZTV6idCVar+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
.LBE3788:
.LBE3789:
.LBE3790:
	bl _ZdlPv
.LVL114:
	lwz 0,12(1)
	addi 1,1,8
.LCFI33:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2177:
	.size	_ZN6idCVarD0Ev, .-_ZN6idCVarD0Ev
	.section	.text._ZN8idWinVar4SizeEv,"axG",@progbits,_ZN8idWinVar4SizeEv,comdat
	.align 2
	.weak	_ZN8idWinVar4SizeEv
	.type	_ZN8idWinVar4SizeEv, @function
_ZN8idWinVar4SizeEv:
.LFB2594:
	.loc 3 83 0
	.cfi_startproc
.LVL115:
	mflr 0
	stwu 1,-8(1)
.LCFI34:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB3792:
	.loc 3 83 0
	lwz 0,8(3)
	.cfi_offset 65, 4
	li 3,16
.LVL116:
	cmpwi 7,0,0
	beq- 7,.L65
	.loc 3 83 0 is_stmt 0 discriminator 1
	mr 3,0
	bl strlen
	addi 3,3,16
.L65:
.LBE3792:
	.loc 3 83 0 discriminator 3
	lwz 0,12(1)
	addi 1,1,8
.LCFI35:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2594:
	.size	_ZN8idWinVar4SizeEv, .-_ZN8idWinVar4SizeEv
	.section	.text._ZNK10idWinFloat5c_strEv,"axG",@progbits,_ZNK10idWinFloat5c_strEv,comdat
	.align 2
	.weak	_ZNK10idWinFloat5c_strEv
	.type	_ZNK10idWinFloat5c_strEv, @function
_ZNK10idWinFloat5c_strEv:
.LFB2669:
	.loc 3 359 0 is_stmt 1
	.cfi_startproc
.LVL117:
	mflr 0
	stwu 1,-8(1)
.LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 3 360 0
	lfs 1,16(3)
	lis 3,.LC2@ha
.LVL118:
	la 3,.LC2@l(3)
	.cfi_offset 65, 4
	creqv 6,6,6
	bl _Z2vaPKcz
	.loc 3 361 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI37:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2669:
	.size	_ZNK10idWinFloat5c_strEv, .-_ZNK10idWinFloat5c_strEv
	.section	.text._ZNK8idWinInt5c_strEv,"axG",@progbits,_ZNK8idWinInt5c_strEv,comdat
	.align 2
	.weak	_ZNK8idWinInt5c_strEv
	.type	_ZNK8idWinInt5c_strEv, @function
_ZNK8idWinInt5c_strEv:
.LFB2652:
	.loc 3 301 0
	.cfi_startproc
.LVL119:
	mflr 0
	stwu 1,-8(1)
.LCFI38:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 3 302 0
	lwz 4,16(3)
	lis 3,.LC3@ha
.LVL120:
	la 3,.LC3@l(3)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z2vaPKcz
	.loc 3 303 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI39:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2652:
	.size	_ZNK8idWinInt5c_strEv, .-_ZNK8idWinInt5c_strEv
	.section	.text._ZNK9idWinBool5c_strEv,"axG",@progbits,_ZNK9idWinBool5c_strEv,comdat
	.align 2
	.weak	_ZNK9idWinBool5c_strEv
	.type	_ZNK9idWinBool5c_strEv, @function
_ZNK9idWinBool5c_strEv:
.LFB2611:
	.loc 3 142 0
	.cfi_startproc
.LVL121:
	mflr 0
	stwu 1,-8(1)
.LCFI40:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 3 142 0
	lbz 4,13(3)
	lis 3,.LC3@ha
.LVL122:
	la 3,.LC3@l(3)
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z2vaPKcz
	lwz 0,12(1)
	addi 1,1,8
.LCFI41:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2611:
	.size	_ZNK9idWinBool5c_strEv, .-_ZNK9idWinBool5c_strEv
	.section	.text._ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE,"axG",@progbits,_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE,comdat
	.align 2
	.weak	_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE
	.type	_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE, @function
_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE:
.LFB2158:
	.file 7 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/CmdSystem.h"
	.loc 7 131 0
	.cfi_startproc
.LVL123:
	mflr 0
	stwu 1,-24(1)
.LCFI42:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL124:
	stw 0,28(1)
	.loc 7 131 0
	stw 4,8(1)
.LBB3793:
.LBB3794:
	.file 8 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/CmdArgs.h"
	.loc 8 50 0
	lwz 0,0(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L73
.LVL125:
	lwz 4,4(3)
.LVL126:
.LBE3794:
.LBE3793:
	.loc 7 132 0
	lis 3,.LC5@ha
.LVL127:
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	lwz 0,8(1)
	mtctr 0
	bctrl
.LVL128:
.LBB3797:
.LBB3798:
	.loc 8 50 0
	lwz 0,0(31)
	cmpwi 7,0,0
	ble- 7,.L74
.L75:
	lwz 4,4(31)
.LBE3798:
.LBE3797:
	.loc 7 133 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	lwz 0,8(1)
	mtctr 0
	bctrl
	.loc 7 134 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL129:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI43:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL130:
.L73:
.LCFI44:
	.cfi_restore_state
.LBB3801:
.LBB3795:
	.loc 8 50 0
	lis 4,.LC4@ha
.LBE3795:
.LBE3801:
	.loc 7 132 0
	lis 3,.LC5@ha
.LVL131:
.LBB3802:
.LBB3796:
	.loc 8 50 0
	la 4,.LC4@l(4)
.LBE3796:
.LBE3802:
	.loc 7 132 0
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	lwz 0,8(1)
	mtctr 0
	bctrl
.LVL132:
.LBB3803:
.LBB3799:
	.loc 8 50 0
	lwz 0,0(31)
	cmpwi 7,0,0
	bgt+ 7,.L75
.L74:
	lis 4,.LC4@ha
.LBE3799:
.LBE3803:
	.loc 7 133 0
	lis 3,.LC6@ha
.LBB3804:
.LBB3800:
	.loc 8 50 0
	la 4,.LC4@l(4)
.LBE3800:
.LBE3804:
	.loc 7 133 0
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	lwz 0,8(1)
	mtctr 0
	bctrl
	.loc 7 134 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL133:
	mtlr 0
	addi 1,1,24
	.cfi_restore 31
.LCFI45:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2158:
	.size	_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE, .-_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE
	.section	.text._ZNK9idWinVec45c_strEv,"axG",@progbits,_ZNK9idWinVec45c_strEv,comdat
	.align 2
	.weak	_ZNK9idWinVec45c_strEv
	.type	_ZNK9idWinVec45c_strEv, @function
_ZNK9idWinVec45c_strEv:
.LFB2736:
	.loc 3 615 0
	.cfi_startproc
.LVL134:
	mflr 0
	stwu 1,-8(1)
.LCFI46:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 3 616 0
	addi 3,3,16
.LVL135:
	li 4,2
	.loc 3 615 0
	stw 0,12(1)
	.loc 3 616 0
	.cfi_offset 65, 4
	bl _ZNK6idVec48ToStringEi
.LVL136:
	.loc 3 617 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI47:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2736:
	.size	_ZNK9idWinVec45c_strEv, .-_ZNK9idWinVec45c_strEv
	.section	.text._ZNK14idWinRectangle5c_strEv,"axG",@progbits,_ZNK14idWinRectangle5c_strEv,comdat
	.align 2
	.weak	_ZNK14idWinRectangle5c_strEv
	.type	_ZNK14idWinRectangle5c_strEv, @function
_ZNK14idWinRectangle5c_strEv:
.LFB2695:
	.loc 3 467 0
	.cfi_startproc
.LVL137:
	mflr 0
	stwu 1,-8(1)
.LCFI48:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 3 468 0
	addi 3,3,16
.LVL138:
	li 4,2
	.loc 3 467 0
	stw 0,12(1)
	.loc 3 468 0
	.cfi_offset 65, 4
	bl _ZNK6idVec48ToStringEi
.LVL139:
	.loc 3 469 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI49:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2695:
	.size	_ZNK14idWinRectangle5c_strEv, .-_ZNK14idWinRectangle5c_strEv
	.section	.text._ZN9idWinVec4D2Ev,"axG",@progbits,_ZN9idWinVec4D5Ev,comdat
	.align 2
	.weak	_ZN9idWinVec4D2Ev
	.type	_ZN9idWinVec4D2Ev, @function
_ZN9idWinVec4D2Ev:
.LFB2722:
	.loc 3 558 0
	.cfi_startproc
.LVL140:
	mflr 0
	stwu 1,-8(1)
.LCFI50:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3806:
	lis 9,_ZTV9idWinVec4+8@ha
.LBE3806:
	stw 0,12(1)
.LBB3807:
	.loc 3 558 0
	la 0,_ZTV9idWinVec4+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL141:
.LBE3807:
	lwz 0,12(1)
	addi 1,1,8
.LCFI51:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2722:
	.size	_ZN9idWinVec4D2Ev, .-_ZN9idWinVec4D2Ev
	.section	.text._ZN10idWinFloatD2Ev,"axG",@progbits,_ZN10idWinFloatD5Ev,comdat
	.align 2
	.weak	_ZN10idWinFloatD2Ev
	.type	_ZN10idWinFloatD2Ev, @function
_ZN10idWinFloatD2Ev:
.LFB2660:
	.loc 3 325 0
	.cfi_startproc
.LVL142:
	mflr 0
	stwu 1,-8(1)
.LCFI52:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3809:
	lis 9,_ZTV10idWinFloat+8@ha
.LBE3809:
	stw 0,12(1)
.LBB3810:
	.loc 3 325 0
	la 0,_ZTV10idWinFloat+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL143:
.LBE3810:
	lwz 0,12(1)
	addi 1,1,8
.LCFI53:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2660:
	.size	_ZN10idWinFloatD2Ev, .-_ZN10idWinFloatD2Ev
	.section	.text._ZN8idWinIntD2Ev,"axG",@progbits,_ZN8idWinIntD5Ev,comdat
	.align 2
	.weak	_ZN8idWinIntD2Ev
	.type	_ZN8idWinIntD2Ev, @function
_ZN8idWinIntD2Ev:
.LFB2643:
	.loc 3 266 0
	.cfi_startproc
.LVL144:
	mflr 0
	stwu 1,-8(1)
.LCFI54:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3812:
	lis 9,_ZTV8idWinInt+8@ha
.LBE3812:
	stw 0,12(1)
.LBB3813:
	.loc 3 266 0
	la 0,_ZTV8idWinInt+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL145:
.LBE3813:
	lwz 0,12(1)
	addi 1,1,8
.LCFI55:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2643:
	.size	_ZN8idWinIntD2Ev, .-_ZN8idWinIntD2Ev
	.section	.text._ZN14idWinRectangleD2Ev,"axG",@progbits,_ZN14idWinRectangleD5Ev,comdat
	.align 2
	.weak	_ZN14idWinRectangleD2Ev
	.type	_ZN14idWinRectangleD2Ev, @function
_ZN14idWinRectangleD2Ev:
.LFB2677:
	.loc 3 380 0
	.cfi_startproc
.LVL146:
	mflr 0
	stwu 1,-8(1)
.LCFI56:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3815:
	lis 9,_ZTV14idWinRectangle+8@ha
.LBE3815:
	stw 0,12(1)
.LBB3816:
	.loc 3 380 0
	la 0,_ZTV14idWinRectangle+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL147:
.LBE3816:
	lwz 0,12(1)
	addi 1,1,8
.LCFI57:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2677:
	.size	_ZN14idWinRectangleD2Ev, .-_ZN14idWinRectangleD2Ev
	.section	.text._ZN9idWinBoolD2Ev,"axG",@progbits,_ZN9idWinBoolD5Ev,comdat
	.align 2
	.weak	_ZN9idWinBoolD2Ev
	.type	_ZN9idWinBoolD2Ev, @function
_ZN9idWinBoolD2Ev:
.LFB2601:
	.loc 3 106 0
	.cfi_startproc
.LVL148:
	mflr 0
	stwu 1,-8(1)
.LCFI58:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3818:
	lis 9,_ZTV9idWinBool+8@ha
.LBE3818:
	stw 0,12(1)
.LBB3819:
	.loc 3 106 0
	la 0,_ZTV9idWinBool+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL149:
.LBE3819:
	lwz 0,12(1)
	addi 1,1,8
.LCFI59:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2601:
	.size	_ZN9idWinBoolD2Ev, .-_ZN9idWinBoolD2Ev
	.section	.text._ZN8idWinStrD2Ev,"axG",@progbits,_ZN8idWinStrD5Ev,comdat
	.align 2
	.weak	_ZN8idWinStrD2Ev
	.type	_ZN8idWinStrD2Ev, @function
_ZN8idWinStrD2Ev:
.LFB2619:
	.loc 3 163 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2619
.LVL150:
	mflr 0
	stwu 1,-16(1)
.LCFI60:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3824:
	lis 9,_ZTV8idWinStr+8@ha
.LBE3824:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB3828:
	la 0,_ZTV8idWinStr+8@l(9)
	.cfi_offset 65, 4
.LBE3828:
	stw 30,8(1)
.LBB3829:
	.loc 3 163 0
	stw 0,0(3)
.LVL151:
.LBB3825:
.LBB3826:
.LBB3827:
	.loc 4 501 0
	addi 3,3,16
.LVL152:
.LEHB0:
	.cfi_offset 30, -8
	bl _ZN5idStr8FreeDataEv
.LEHE0:
.LBE3827:
.LBE3826:
.LBE3825:
	.loc 3 163 0 discriminator 1
	mr 3,31
.LEHB1:
	bl _ZN8idWinVarD2Ev
.LEHE1:
.LBE3829:
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL153:
	addi 1,1,16
	.cfi_remember_state
.LCFI61:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL154:
.L92:
.LCFI62:
	.cfi_restore_state
	mr 30,3
.LBB3830:
	.loc 3 163 0 is_stmt 0
	mr 3,31
	bl _ZN8idWinVarD2Ev
	mr 3,30
.LEHB2:
	bl _Unwind_Resume
.LEHE2:
.LBE3830:
	.cfi_endproc
.LFE2619:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2619:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2619-.LLSDACSB2619
.LLSDACSB2619:
	.uleb128 .LEHB0-.LFB2619
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L92-.LFB2619
	.uleb128 0
	.uleb128 .LEHB1-.LFB2619
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB2619
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2619:
	.section	.text._ZN8idWinStrD2Ev,"axG",@progbits,_ZN8idWinStrD5Ev,comdat
	.size	_ZN8idWinStrD2Ev, .-_ZN8idWinStrD2Ev
	.section	".text"
	.align 2
	.type	_ZeqRK5idStrPKc.isra.9, @function
_ZeqRK5idStrPKc.isra.9:
.LFB3400:
	.loc 4 651 0 is_stmt 1
	.cfi_startproc
.LVL155:
	mflr 0
	stwu 1,-8(1)
.LCFI63:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 4 653 0
	.cfi_offset 65, 4
	bl _ZN5idStr3CmpEPKcS1_
.LVL156:
	.loc 4 654 0
	lwz 0,12(1)
	cntlzw 3,3
	srwi 3,3,5
	mtlr 0
	addi 1,1,8
.LCFI64:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE3400:
	.size	_ZeqRK5idStrPKc.isra.9, .-_ZeqRK5idStrPKc.isra.9
	.align 2
	.type	_ZN5idStr7ToLowerEv.isra.14, @function
_ZN5idStr7ToLowerEv.isra.14:
.LFB3405:
	.loc 4 838 0
	.cfi_startproc
.LVL157:
.LBB3834:
	.loc 4 839 0
	lwz 10,0(3)
	lbz 9,0(10)
	mr 7,10
	cmpwi 7,9,0
	beqlr- 7
	li 11,0
.LVL158:
.L98:
.LBB3835:
.LBB3836:
	.loc 4 1036 0
	addi 8,9,-65
	addi 0,9,-192
	cmplwi 7,8,25
.LBE3836:
.LBE3835:
	.loc 4 839 0
	addi 11,11,1
	.loc 4 841 0
	addi 9,9,32
.LVL159:
.LBB3838:
.LBB3837:
	.loc 4 1036 0
	cmplwi 6,0,31
	ble- 7,.L96
	bgt- 6,.L97
.L96:
.LBE3837:
.LBE3838:
	.loc 4 841 0
	stb 9,0(7)
	lwz 10,0(3)
.L97:
.LVL160:
	.loc 4 839 0
	lbzx 9,10,11
	add 7,10,11
	cmpwi 7,9,0
	bne+ 7,.L98
	blr
.LBE3834:
	.cfi_endproc
.LFE3405:
	.size	_ZN5idStr7ToLowerEv.isra.14, .-_ZN5idStr7ToLowerEv.isra.14
	.align 2
	.type	_ZN8idWinVar7SetNameEPKc.isra.34, @function
_ZN8idWinVar7SetNameEPKc.isra.34:
.LFB3425:
	.loc 3 61 0
	.cfi_startproc
.LVL161:
	mflr 0
	stwu 1,-16(1)
.LCFI65:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 3 62 0
	lwz 3,0(3)
	cmpwi 7,3,0
	beq- 7,.L101
	.cfi_offset 65, 4
	bl _ZdaPv
.LVL162:
.L101:
	.loc 3 64 0
	cmpwi 7,30,0
	.loc 3 63 0
	li 0,0
	stw 0,0(31)
	.loc 3 64 0
	beq- 7,.L100
	.loc 3 65 0
	mr 3,30
	bl strlen
	addi 3,3,1
	bl _Znaj
	.loc 3 66 0
	mr 4,30
	.loc 3 65 0
	stw 3,0(31)
	.loc 3 66 0
	bl strcpy
.L100:
	.loc 3 68 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL163:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI66:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE3425:
	.size	_ZN8idWinVar7SetNameEPKc.isra.34, .-_ZN8idWinVar7SetNameEPKc.isra.34
	.align 2
	.globl _ZN8idWindow14DrawBackgroundERK11idRectangle
	.type	_ZN8idWindow14DrawBackgroundERK11idRectangle, @function
_ZN8idWindow14DrawBackgroundERK11idRectangle:
.LFB2925:
	.loc 6 1133 0
	.cfi_startproc
.LVL164:
	mflr 0
	stwu 1,-72(1)
.LCFI67:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
.LBB3846:
	.loc 6 1134 0
	lis 9,.LC1@ha
.LBE3846:
	.loc 6 1133 0
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -32
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -28
	stw 0,76(1)
	stfd 29,48(1)
	stfd 30,56(1)
	stfd 31,64(1)
	stw 29,36(1)
.LBB3848:
	.loc 6 1134 0
	lfs 0,.LC1@l(9)
	lfs 13,320(3)
	fcmpu 7,13,0
	bne- 7,.L108
	.cfi_offset 29, -36
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
.LVL165:
.L104:
.LBB3847:
	.loc 6 1138 0
	lwz 4,672(31)
	cmpwi 7,4,0
	beq- 7,.L103
	.loc 6 1138 0 is_stmt 0 discriminator 1
	lis 9,.LC1@ha
	lfs 13,352(31)
	lfs 0,.LC1@l(9)
	fcmpu 7,13,0
	beq- 7,.L103
.LVL166:
.LBE3847:
.LBE3848:
.LBB3849:
.LBB3850:
	.loc 6 1140 0 is_stmt 1 discriminator 4
	lwz 0,48(31)
	andis. 9,0,4
	bne- 0,.L109
	.loc 6 1144 0
	lfs 5,116(31)
.LVL167:
	.loc 6 1145 0
	lfs 6,120(31)
.LVL168:
.L107:
	.loc 6 1147 0
	lwz 3,728(31)
	addi 5,31,340
	lfs 1,0(30)
	lfs 2,4(30)
	lfs 3,8(30)
	lfs 4,12(30)
	bl _ZN15idDeviceContext12DrawMaterialEffffPK10idMaterialRK6idVec4ff
.LVL169:
.L103:
.LBE3850:
.LBE3849:
	.loc 6 1149 0
	lwz 0,76(1)
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
.LVL170:
	lwz 31,44(1)
.LVL171:
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI68:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL172:
.L108:
.LCFI69:
	.cfi_restore_state
.LBB3852:
	.loc 6 1135 0
	lfs 1,0(4)
	lfs 2,4(4)
	lfs 3,8(4)
	lfs 4,12(4)
	addi 4,31,308
.LVL173:
	lwz 3,728(3)
.LVL174:
	bl _ZN15idDeviceContext14DrawFilledRectEffffRK6idVec4
	b .L104
.LVL175:
.L109:
.LBE3852:
.LBB3853:
.LBB3851:
	.loc 6 1141 0
	mr 3,4
	lfs 29,8(30)
	bl _ZNK10idMaterial13GetImageWidthEv
	lis 29,0x4330
	xoris 3,3,0x8000
	stw 29,8(1)
	stw 3,12(1)
	lis 9,.LC8@ha
	lfs 31,.LC8@l(9)
	lfd 5,8(1)
	.loc 6 1142 0
	lwz 3,672(31)
	.loc 6 1141 0
	fsub 5,5,31
	.loc 6 1142 0
	lfs 30,12(30)
	.loc 6 1141 0
	frsp 5,5
	fdivs 5,29,5
.LVL176:
	.loc 6 1142 0
	stfd 5,24(1)
	bl _ZNK10idMaterial14GetImageHeightEv
.LVL177:
	xoris 3,3,0x8000
	stw 29,16(1)
	stw 3,20(1)
	lfd 5,24(1)
	lfd 6,16(1)
	lwz 4,672(31)
	fsub 31,6,31
	frsp 31,31
	fdivs 6,30,31
.LVL178:
	b .L107
.LBE3851:
.LBE3853:
	.cfi_endproc
.LFE2925:
	.size	_ZN8idWindow14DrawBackgroundERK11idRectangle, .-_ZN8idWindow14DrawBackgroundERK11idRectangle
	.section	.text._ZN8idWinIntD0Ev,"axG",@progbits,_ZN8idWinIntD5Ev,comdat
	.align 2
	.weak	_ZN8idWinIntD0Ev
	.type	_ZN8idWinIntD0Ev, @function
_ZN8idWinIntD0Ev:
.LFB2645:
	.loc 3 266 0
	.cfi_startproc
.LVL179:
	mflr 0
	stwu 1,-16(1)
.LCFI70:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3857:
.LBB3858:
.LBB3859:
	lis 9,_ZTV8idWinInt+8@ha
.LBE3859:
.LBE3858:
.LBE3857:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL180:
	stw 0,20(1)
.LBB3862:
.LBB3861:
.LBB3860:
	.loc 3 266 0
	la 0,_ZTV8idWinInt+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL181:
.LBE3860:
.LBE3861:
.LBE3862:
	mr 3,31
	bl _ZN8idWinVardlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL182:
	mtlr 0
	addi 1,1,16
.LCFI71:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2645:
	.size	_ZN8idWinIntD0Ev, .-_ZN8idWinIntD0Ev
	.section	.text._ZN15idWinBackground16ReadFromSaveGameEP6idFile,"axG",@progbits,_ZN15idWinBackground16ReadFromSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN15idWinBackground16ReadFromSaveGameEP6idFile
	.type	_ZN15idWinBackground16ReadFromSaveGameEP6idFile, @function
_ZN15idWinBackground16ReadFromSaveGameEP6idFile:
.LFB2783:
	.loc 3 827 0
	.cfi_startproc
.LVL183:
	mflr 0
	stwu 1,-40(1)
.LCFI72:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB3875:
	.loc 3 828 0
	li 5,1
.LBE3875:
	.loc 3 827 0
	stw 29,28(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,36(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,44(1)
.LBB3888:
	.loc 3 828 0
	lwz 9,0(4)
	addi 4,3,12
.LVL184:
	mr 3,31
.LVL185:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 831 0
	lwz 9,0(31)
	mr 3,31
	addi 4,1,8
	lwz 0,20(9)
	li 5,4
	mtctr 0
	bctrl
.LVL186:
	.loc 3 832 0
	lwz 29,8(1)
	cmpwi 7,29,0
	ble- 7,.L114
.LVL187:
.LBB3876:
.LBB3877:
.LBB3878:
.LBB3879:
	.loc 4 350 0
	lwz 0,56(30)
.LBE3879:
.LBE3878:
	.loc 4 889 0
	addi 4,29,1
.LVL188:
.LBB3882:
.LBB3880:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L118
.LVL189:
.L115:
.LBE3880:
.LBE3882:
	.loc 4 890 0
	stw 29,48(30)
	.loc 4 891 0
	li 4,32
	lwz 3,52(30)
	mr 5,29
	bl memset
	.loc 4 892 0
	lwz 9,52(30)
	lwz 0,48(30)
	li 11,0
.LBE3877:
.LBE3876:
	.loc 3 834 0
	mr 3,31
.LBB3886:
.LBB3884:
	.loc 4 892 0
	stbx 11,9,0
.LVL190:
.LBE3884:
.LBE3886:
	.loc 3 834 0
	lwz 9,0(31)
	lwz 4,52(30)
	lwz 0,20(9)
	lwz 5,8(1)
	mtctr 0
	bctrl
.LVL191:
.L114:
	.loc 3 836 0
	lwz 31,80(30)
.LVL192:
	cmpwi 7,31,0
	beq- 7,.L113
	.loc 3 837 0
	lwz 0,8(1)
	cmpwi 7,0,0
	bgt- 7,.L119
	.loc 3 840 0
	li 0,0
	stw 0,0(31)
.L113:
.LBE3888:
	.loc 3 843 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL193:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI73:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL194:
.L118:
.LCFI74:
	.cfi_restore_state
.LBB3889:
.LBB3887:
.LBB3885:
.LBB3883:
.LBB3881:
	.loc 4 351 0
	addi 3,30,48
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL195:
	b .L115
.LVL196:
.L119:
.LBE3881:
.LBE3883:
.LBE3885:
.LBE3887:
.LBE3889:
.LBB3890:
.LBB3891:
.LBB3892:
	.loc 3 838 0
	lis 9,declManager@ha
	lwz 4,52(30)
	lwz 3,declManager@l(9)
.LVL197:
	li 5,1
	li 6,0
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	stw 3,0(31)
.LBE3892:
.LBE3891:
.LBE3890:
	.loc 3 843 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL198:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI75:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2783:
	.size	_ZN15idWinBackground16ReadFromSaveGameEP6idFile, .-_ZN15idWinBackground16ReadFromSaveGameEP6idFile
	.section	.text._ZN14idWinRectangleD0Ev,"axG",@progbits,_ZN14idWinRectangleD5Ev,comdat
	.align 2
	.weak	_ZN14idWinRectangleD0Ev
	.type	_ZN14idWinRectangleD0Ev, @function
_ZN14idWinRectangleD0Ev:
.LFB2679:
	.loc 3 380 0
	.cfi_startproc
.LVL199:
	mflr 0
	stwu 1,-16(1)
.LCFI76:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3896:
.LBB3897:
.LBB3898:
	lis 9,_ZTV14idWinRectangle+8@ha
.LBE3898:
.LBE3897:
.LBE3896:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL200:
	stw 0,20(1)
.LBB3901:
.LBB3900:
.LBB3899:
	.loc 3 380 0
	la 0,_ZTV14idWinRectangle+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL201:
.LBE3899:
.LBE3900:
.LBE3901:
	mr 3,31
	bl _ZN8idWinVardlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL202:
	mtlr 0
	addi 1,1,16
.LCFI77:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2679:
	.size	_ZN14idWinRectangleD0Ev, .-_ZN14idWinRectangleD0Ev
	.section	.text._ZN10idWinFloatD0Ev,"axG",@progbits,_ZN10idWinFloatD5Ev,comdat
	.align 2
	.weak	_ZN10idWinFloatD0Ev
	.type	_ZN10idWinFloatD0Ev, @function
_ZN10idWinFloatD0Ev:
.LFB2662:
	.loc 3 325 0
	.cfi_startproc
.LVL203:
	mflr 0
	stwu 1,-16(1)
.LCFI78:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3905:
.LBB3906:
.LBB3907:
	lis 9,_ZTV10idWinFloat+8@ha
.LBE3907:
.LBE3906:
.LBE3905:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL204:
	stw 0,20(1)
.LBB3910:
.LBB3909:
.LBB3908:
	.loc 3 325 0
	la 0,_ZTV10idWinFloat+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL205:
.LBE3908:
.LBE3909:
.LBE3910:
	mr 3,31
	bl _ZN8idWinVardlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL206:
	mtlr 0
	addi 1,1,16
.LCFI79:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2662:
	.size	_ZN10idWinFloatD0Ev, .-_ZN10idWinFloatD0Ev
	.section	.text._ZN9idWindingD0Ev,"axG",@progbits,_ZN9idWindingD5Ev,comdat
	.align 2
	.weak	_ZN9idWindingD0Ev
	.type	_ZN9idWindingD0Ev, @function
_ZN9idWindingD0Ev:
.LFB1463:
	.loc 1 183 0
	.cfi_startproc
.LVL207:
	mflr 0
	stwu 1,-16(1)
.LCFI80:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3914:
.LBB3915:
.LBB3916:
	lis 9,_ZTV9idWinding+8@ha
.LBE3916:
.LBE3915:
.LBE3914:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL208:
	stw 0,20(1)
.LBB3921:
.LBB3919:
.LBB3917:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL209:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L127
	bl _ZdaPv
.LVL210:
.L127:
	.loc 1 185 0
	li 0,0
.LBE3917:
.LBE3919:
.LBE3921:
	.loc 1 186 0
	mr 3,31
.LBB3922:
.LBB3920:
.LBB3918:
	.loc 1 185 0
	stw 0,8(31)
.LBE3918:
.LBE3920:
.LBE3922:
	.loc 1 186 0
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL211:
	mtlr 0
	addi 1,1,16
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1463:
	.size	_ZN9idWindingD0Ev, .-_ZN9idWindingD0Ev
	.section	.text._ZN14idFixedWindingD2Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD2Ev
	.type	_ZN14idFixedWindingD2Ev, @function
_ZN14idFixedWindingD2Ev:
.LFB1498:
	.loc 1 380 0
	.cfi_startproc
.LVL212:
.LBB3928:
	.loc 1 381 0
	li 0,0
.LBB3929:
.LBB3930:
.LBB3931:
	.loc 1 183 0
	lis 9,_ZTV9idWinding+8@ha
.LBE3931:
.LBE3930:
.LBE3929:
	.loc 1 381 0
	stw 0,8(3)
.LVL213:
.LBB3934:
.LBB3933:
.LBB3932:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	stw 0,0(3)
.LBE3932:
.LBE3933:
.LBE3934:
.LBE3928:
	.loc 1 382 0
	blr
	.cfi_endproc
.LFE1498:
	.size	_ZN14idFixedWindingD2Ev, .-_ZN14idFixedWindingD2Ev
	.section	.text._ZN14idFixedWindingD0Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD0Ev
	.type	_ZN14idFixedWindingD0Ev, @function
_ZN14idFixedWindingD0Ev:
.LFB1500:
	.loc 1 380 0
	.cfi_startproc
.LVL214:
	mflr 0
	stwu 1,-8(1)
.LCFI82:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3941:
.LBB3942:
.LBB3943:
.LBB3944:
.LBB3945:
.LBB3946:
	.loc 1 183 0
	lis 11,_ZTV9idWinding+8@ha
.LBE3946:
.LBE3945:
.LBE3944:
.LBE3943:
.LBE3942:
.LBE3941:
	.loc 1 380 0
	stw 0,12(1)
.LBB3952:
.LBB3951:
.LBB3950:
	.loc 1 381 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,8(3)
.LVL215:
.LBB3949:
.LBB3948:
.LBB3947:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(11)
	stw 0,0(3)
.LBE3947:
.LBE3948:
.LBE3949:
.LBE3950:
.LBE3951:
.LBE3952:
	.loc 1 382 0
	bl _ZdlPv
.LVL216:
	lwz 0,12(1)
	addi 1,1,8
.LCFI83:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1500:
	.size	_ZN14idFixedWindingD0Ev, .-_ZN14idFixedWindingD0Ev
	.section	.text._ZN15idWinBackground4SizeEv,"axG",@progbits,_ZN15idWinBackground4SizeEv,comdat
	.align 2
	.weak	_ZN15idWinBackground4SizeEv
	.type	_ZN15idWinBackground4SizeEv, @function
_ZN15idWinBackground4SizeEv:
.LFB2780:
	.loc 3 809 0
	.cfi_startproc
.LVL217:
	mflr 0
	stwu 1,-16(1)
.LCFI84:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL218:
	stw 0,20(1)
.LBB3962:
.LBB3963:
.LBB3964:
	.loc 3 83 0
	li 0,16
	.cfi_offset 65, 4
	lwz 3,8(3)
.LVL219:
	cmpwi 7,3,0
	beq- 7,.L138
	bl strlen
	addi 0,3,16
.LVL220:
.L138:
.LBE3964:
.LBE3963:
.LBB3965:
.LBB3966:
	.loc 4 728 0
	lwz 11,52(31)
	addi 9,31,60
	li 3,0
	cmpw 7,11,9
	beq- 7,.L139
	lwz 3,56(31)
.L139:
.LBE3966:
.LBE3965:
.LBE3962:
	.loc 3 812 0
	add 3,3,0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL221:
	mtlr 0
	addi 1,1,16
.LCFI85:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2780:
	.size	_ZN15idWinBackground4SizeEv, .-_ZN15idWinBackground4SizeEv
	.section	.text._ZN8idWinStr4SizeEv,"axG",@progbits,_ZN8idWinStr4SizeEv,comdat
	.align 2
	.weak	_ZN8idWinStr4SizeEv
	.type	_ZN8idWinStr4SizeEv, @function
_ZN8idWinStr4SizeEv:
.LFB2635:
	.loc 3 230 0
	.cfi_startproc
.LVL222:
	mflr 0
	stwu 1,-16(1)
.LCFI86:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL223:
	stw 0,20(1)
.LBB3976:
.LBB3977:
.LBB3978:
	.loc 3 83 0
	li 0,16
	.cfi_offset 65, 4
	lwz 3,8(3)
.LVL224:
	cmpwi 7,3,0
	beq- 7,.L143
	bl strlen
	addi 0,3,16
.LVL225:
.L143:
.LBE3978:
.LBE3977:
.LBB3979:
.LBB3980:
	.loc 4 728 0
	lwz 11,20(31)
	addi 9,31,28
	li 3,0
	cmpw 7,11,9
	beq- 7,.L144
	lwz 3,24(31)
.L144:
.LBE3980:
.LBE3979:
.LBE3976:
	.loc 3 233 0
	add 3,3,0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL226:
	mtlr 0
	addi 1,1,16
.LCFI87:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2635:
	.size	_ZN8idWinStr4SizeEv, .-_ZN8idWinStr4SizeEv
	.section	.text._ZN9idWinBoolD0Ev,"axG",@progbits,_ZN9idWinBoolD5Ev,comdat
	.align 2
	.weak	_ZN9idWinBoolD0Ev
	.type	_ZN9idWinBoolD0Ev, @function
_ZN9idWinBoolD0Ev:
.LFB2603:
	.loc 3 106 0
	.cfi_startproc
.LVL227:
	mflr 0
	stwu 1,-16(1)
.LCFI88:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3984:
.LBB3985:
.LBB3986:
	lis 9,_ZTV9idWinBool+8@ha
.LBE3986:
.LBE3985:
.LBE3984:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL228:
	stw 0,20(1)
.LBB3989:
.LBB3988:
.LBB3987:
	.loc 3 106 0
	la 0,_ZTV9idWinBool+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL229:
.LBE3987:
.LBE3988:
.LBE3989:
	mr 3,31
	bl _ZN8idWinVardlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL230:
	mtlr 0
	addi 1,1,16
.LCFI89:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2603:
	.size	_ZN9idWinBoolD0Ev, .-_ZN9idWinBoolD0Ev
	.section	.text._ZN9idWinVec4D0Ev,"axG",@progbits,_ZN9idWinVec4D5Ev,comdat
	.align 2
	.weak	_ZN9idWinVec4D0Ev
	.type	_ZN9idWinVec4D0Ev, @function
_ZN9idWinVec4D0Ev:
.LFB2724:
	.loc 3 558 0
	.cfi_startproc
.LVL231:
	mflr 0
	stwu 1,-16(1)
.LCFI90:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3993:
.LBB3994:
.LBB3995:
	lis 9,_ZTV9idWinVec4+8@ha
.LBE3995:
.LBE3994:
.LBE3993:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL232:
	stw 0,20(1)
.LBB3998:
.LBB3997:
.LBB3996:
	.loc 3 558 0
	la 0,_ZTV9idWinVec4+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idWinVarD2Ev
.LVL233:
.LBE3996:
.LBE3997:
.LBE3998:
	mr 3,31
	bl _ZN8idWinVardlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL234:
	mtlr 0
	addi 1,1,16
.LCFI91:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2724:
	.size	_ZN9idWinVec4D0Ev, .-_ZN9idWinVec4D0Ev
	.section	.text._ZN8idWinStr16ReadFromSaveGameEP6idFile,"axG",@progbits,_ZN8idWinStr16ReadFromSaveGameEP6idFile,comdat
	.align 2
	.weak	_ZN8idWinStr16ReadFromSaveGameEP6idFile
	.type	_ZN8idWinStr16ReadFromSaveGameEP6idFile, @function
_ZN8idWinStr16ReadFromSaveGameEP6idFile:
.LFB2637:
	.loc 3 245 0
	.cfi_startproc
.LVL235:
	mflr 0
	stwu 1,-40(1)
.LCFI92:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB4009:
	.loc 3 246 0
	li 5,1
.LBE4009:
	.loc 3 245 0
	stw 29,28(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,36(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,44(1)
.LBB4022:
	.loc 3 246 0
	lwz 9,0(4)
	addi 4,3,12
.LVL236:
	mr 3,31
.LVL237:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	.loc 3 249 0
	lwz 9,0(31)
	mr 3,31
	addi 4,1,8
	lwz 0,20(9)
	li 5,4
	mtctr 0
	bctrl
.LVL238:
	.loc 3 250 0
	lwz 29,8(1)
	cmpwi 7,29,0
	ble- 7,.L153
.LVL239:
.LBB4010:
.LBB4011:
.LBB4012:
.LBB4013:
	.loc 4 350 0
	lwz 0,24(30)
.LBE4013:
.LBE4012:
	.loc 4 889 0
	addi 4,29,1
.LVL240:
.LBB4016:
.LBB4014:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L156
.LVL241:
.L155:
.LBE4014:
.LBE4016:
	.loc 4 890 0
	stw 29,16(30)
	.loc 4 891 0
	li 4,32
	lwz 3,20(30)
	mr 5,29
	bl memset
	.loc 4 892 0
	lwz 9,20(30)
	lwz 0,16(30)
	li 11,0
.LBE4011:
.LBE4010:
	.loc 3 252 0
	mr 3,31
.LBB4020:
.LBB4018:
	.loc 4 892 0
	stbx 11,9,0
.LVL242:
.LBE4018:
.LBE4020:
	.loc 3 252 0
	lwz 9,0(31)
	lwz 4,20(30)
	lwz 0,20(9)
	lwz 5,8(1)
	mtctr 0
	bctrl
.LVL243:
.L153:
.LBE4022:
	.loc 3 254 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL244:
	lwz 31,36(1)
.LVL245:
	addi 1,1,40
	.cfi_remember_state
.LCFI93:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL246:
.L156:
.LCFI94:
	.cfi_restore_state
.LBB4023:
.LBB4021:
.LBB4019:
.LBB4017:
.LBB4015:
	.loc 4 351 0
	addi 3,30,16
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL247:
	b .L155
.LBE4015:
.LBE4017:
.LBE4019:
.LBE4021:
.LBE4023:
	.cfi_endproc
.LFE2637:
	.size	_ZN8idWinStr16ReadFromSaveGameEP6idFile, .-_ZN8idWinStr16ReadFromSaveGameEP6idFile
	.section	.text._ZN8idWinStrD0Ev,"axG",@progbits,_ZN8idWinStrD5Ev,comdat
	.align 2
	.weak	_ZN8idWinStrD0Ev
	.type	_ZN8idWinStrD0Ev, @function
_ZN8idWinStrD0Ev:
.LFB2621:
	.loc 3 163 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2621
.LVL248:
	mflr 0
	stwu 1,-16(1)
.LCFI95:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB4030:
.LBB4031:
.LBB4032:
	lis 9,_ZTV8idWinStr+8@ha
.LBE4032:
.LBE4031:
.LBE4030:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL249:
	stw 0,20(1)
.LBB4042:
.LBB4039:
.LBB4036:
	la 0,_ZTV8idWinStr+8@l(9)
	.cfi_offset 65, 4
.LBE4036:
.LBE4039:
.LBE4042:
	stw 30,8(1)
.LBB4043:
.LBB4040:
.LBB4037:
	.loc 3 163 0
	stw 0,0(3)
.LVL250:
.LBB4033:
.LBB4034:
.LBB4035:
	.loc 4 501 0
	addi 3,3,16
.LVL251:
.LEHB3:
	.cfi_offset 30, -8
	bl _ZN5idStr8FreeDataEv
.LEHE3:
.LBE4035:
.LBE4034:
.LBE4033:
	.loc 3 163 0
	mr 3,31
.LEHB4:
	bl _ZN8idWinVarD2Ev
.LEHE4:
.LBE4037:
.LBE4040:
.LBE4043:
	mr 3,31
	bl _ZN8idWinVardlEPv
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL252:
	addi 1,1,16
	.cfi_remember_state
.LCFI96:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL253:
.L162:
.LCFI97:
	.cfi_restore_state
	mr 30,3
.LBB4044:
.LBB4041:
.LBB4038:
	mr 3,31
	bl _ZN8idWinVarD2Ev
	mr 3,30
.LEHB5:
	bl _Unwind_Resume
.LEHE5:
.LBE4038:
.LBE4041:
.LBE4044:
	.cfi_endproc
.LFE2621:
	.section	.gcc_except_table
.LLSDA2621:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2621-.LLSDACSB2621
.LLSDACSB2621:
	.uleb128 .LEHB3-.LFB2621
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L162-.LFB2621
	.uleb128 0
	.uleb128 .LEHB4-.LFB2621
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2621
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2621:
	.section	.text._ZN8idWinStrD0Ev,"axG",@progbits,_ZN8idWinStrD5Ev,comdat
	.size	_ZN8idWinStrD0Ev, .-_ZN8idWinStrD0Ev
	.section	.text._ZN15idWinBackgroundD2Ev,"axG",@progbits,_ZN15idWinBackgroundD5Ev,comdat
	.align 2
	.weak	_ZN15idWinBackgroundD2Ev
	.type	_ZN15idWinBackgroundD2Ev, @function
_ZN15idWinBackgroundD2Ev:
.LFB2766:
	.loc 3 725 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2766
.LVL254:
	mflr 0
	stwu 1,-16(1)
.LCFI98:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB4059:
	lis 9,_ZTV15idWinBackground+8@ha
.LBE4059:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4075:
	la 0,_ZTV15idWinBackground+8@l(9)
	.cfi_offset 65, 4
.LBE4075:
	stw 30,8(1)
.LBB4076:
	.loc 3 725 0
	stw 0,0(3)
.LVL255:
.LBB4060:
.LBB4061:
.LBB4062:
	.loc 4 501 0
	addi 3,3,48
.LVL256:
.LEHB6:
	.cfi_offset 30, -8
	bl _ZN5idStr8FreeDataEv
.LEHE6:
.LVL257:
.LBE4062:
.LBE4061:
.LBE4060:
.LBB4063:
.LBB4064:
.LBB4065:
	.loc 3 163 0 discriminator 1
	lis 9,_ZTV8idWinStr+8@ha
.LBB4066:
.LBB4067:
.LBB4068:
	.loc 4 501 0 discriminator 1
	addi 3,31,16
.LBE4068:
.LBE4067:
.LBE4066:
	.loc 3 163 0 discriminator 1
	la 0,_ZTV8idWinStr+8@l(9)
	stw 0,0(31)
.LVL258:
.LEHB7:
.LBB4071:
.LBB4070:
.LBB4069:
	.loc 4 501 0 discriminator 1
	bl _ZN5idStr8FreeDataEv
.LEHE7:
.LVL259:
.LBE4069:
.LBE4070:
.LBE4071:
	.loc 3 163 0
	mr 3,31
.LEHB8:
	bl _ZN8idWinVarD2Ev
.LEHE8:
.LBE4065:
.LBE4064:
.LBE4063:
.LBE4076:
	.loc 3 725 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL260:
	addi 1,1,16
	.cfi_remember_state
.LCFI99:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL261:
.L170:
.LCFI100:
	.cfi_restore_state
	mr 30,3
.LBB4077:
	mr 3,31
	bl _ZN8idWinStrD2Ev
	mr 3,30
.LEHB9:
	bl _Unwind_Resume
.LEHE9:
.LVL262:
.L171:
	mr 30,3
.LBB4074:
.LBB4073:
.LBB4072:
	.loc 3 163 0
	mr 3,31
	bl _ZN8idWinVarD2Ev
	mr 3,30
.LEHB10:
	bl _Unwind_Resume
.LEHE10:
.LBE4072:
.LBE4073:
.LBE4074:
.LBE4077:
	.cfi_endproc
.LFE2766:
	.section	.gcc_except_table
.LLSDA2766:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2766-.LLSDACSB2766
.LLSDACSB2766:
	.uleb128 .LEHB6-.LFB2766
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L170-.LFB2766
	.uleb128 0
	.uleb128 .LEHB7-.LFB2766
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L171-.LFB2766
	.uleb128 0
	.uleb128 .LEHB8-.LFB2766
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2766
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2766
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2766:
	.section	.text._ZN15idWinBackgroundD2Ev,"axG",@progbits,_ZN15idWinBackgroundD5Ev,comdat
	.size	_ZN15idWinBackgroundD2Ev, .-_ZN15idWinBackgroundD2Ev
	.section	.text._ZN15idWinBackgroundD0Ev,"axG",@progbits,_ZN15idWinBackgroundD5Ev,comdat
	.align 2
	.weak	_ZN15idWinBackgroundD0Ev
	.type	_ZN15idWinBackgroundD0Ev, @function
_ZN15idWinBackgroundD0Ev:
.LFB2768:
	.loc 3 725 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2768
.LVL263:
	mflr 0
	stwu 1,-16(1)
.LCFI101:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB4090:
.LBB4091:
.LBB4092:
	lis 9,_ZTV15idWinBackground+8@ha
.LBE4092:
.LBE4091:
.LBE4090:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL264:
	stw 0,20(1)
.LBB4114:
.LBB4111:
.LBB4108:
	la 0,_ZTV15idWinBackground+8@l(9)
	.cfi_offset 65, 4
.LBE4108:
.LBE4111:
.LBE4114:
	stw 30,8(1)
.LBB4115:
.LBB4112:
.LBB4109:
	.loc 3 725 0
	stw 0,0(3)
.LVL265:
.LBB4093:
.LBB4094:
.LBB4095:
	.loc 4 501 0
	addi 3,3,48
.LVL266:
.LEHB11:
	.cfi_offset 30, -8
	bl _ZN5idStr8FreeDataEv
.LEHE11:
.LVL267:
.LBE4095:
.LBE4094:
.LBE4093:
.LBB4096:
.LBB4097:
.LBB4098:
	.loc 3 163 0
	lis 9,_ZTV8idWinStr+8@ha
.LBB4099:
.LBB4100:
.LBB4101:
	.loc 4 501 0
	addi 3,31,16
.LVL268:
.LBE4101:
.LBE4100:
.LBE4099:
	.loc 3 163 0
	la 0,_ZTV8idWinStr+8@l(9)
	stw 0,0(31)
.LVL269:
.LEHB12:
.LBB4104:
.LBB4103:
.LBB4102:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE12:
.LVL270:
.LBE4102:
.LBE4103:
.LBE4104:
	.loc 3 163 0
	mr 3,31
.LEHB13:
	bl _ZN8idWinVarD2Ev
.LEHE13:
.LBE4098:
.LBE4097:
.LBE4096:
.LBE4109:
.LBE4112:
.LBE4115:
	.loc 3 725 0
	mr 3,31
	bl _ZN8idWinVardlEPv
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL271:
	addi 1,1,16
	.cfi_remember_state
.LCFI102:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL272:
.L180:
.LCFI103:
	.cfi_restore_state
	mr 30,3
.LBB4116:
.LBB4113:
.LBB4110:
	mr 3,31
	bl _ZN8idWinStrD2Ev
	mr 3,30
.LEHB14:
	bl _Unwind_Resume
.LEHE14:
.LVL273:
.L181:
	mr 30,3
.LBB4107:
.LBB4106:
.LBB4105:
	.loc 3 163 0
	mr 3,31
	bl _ZN8idWinVarD2Ev
	mr 3,30
.LEHB15:
	bl _Unwind_Resume
.LEHE15:
.LBE4105:
.LBE4106:
.LBE4107:
.LBE4110:
.LBE4113:
.LBE4116:
	.cfi_endproc
.LFE2768:
	.section	.gcc_except_table
.LLSDA2768:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2768-.LLSDACSB2768
.LLSDACSB2768:
	.uleb128 .LEHB11-.LFB2768
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L180-.LFB2768
	.uleb128 0
	.uleb128 .LEHB12-.LFB2768
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L181-.LFB2768
	.uleb128 0
	.uleb128 .LEHB13-.LFB2768
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB2768
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB2768
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2768:
	.section	.text._ZN15idWinBackgroundD0Ev,"axG",@progbits,_ZN15idWinBackgroundD5Ev,comdat
	.size	_ZN15idWinBackgroundD0Ev, .-_ZN15idWinBackgroundD0Ev
	.section	".text"
	.align 2
	.globl _ZN8idWindow9AllocatedEv
	.type	_ZN8idWindow9AllocatedEv, @function
_ZN8idWindow9AllocatedEv:
.LFB2879:
	.loc 6 179 0
	.cfi_startproc
.LVL274:
	mflr 0
	stwu 1,-56(1)
.LCFI104:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 24,24(1)
	mr 24,3
	.cfi_offset 24, -32
.LVL275:
	stw 0,60(1)
.LBB4189:
.LBB4190:
.LBB4191:
	.loc 4 728 0
	addi 0,3,148
	.cfi_offset 65, 4
.LBE4191:
.LBE4190:
.LBE4189:
	.loc 6 179 0
	stw 29,44(1)
.LBB4259:
.LBB4194:
.LBB4192:
	.loc 4 728 0
	li 29,32
	.cfi_offset 29, -12
.LBE4192:
.LBE4194:
.LBE4259:
	.loc 6 179 0
	stw 22,16(1)
	stw 23,20(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 30,48(1)
	stw 31,52(1)
.LBB4260:
.LBB4195:
.LBB4193:
	.loc 4 728 0
	lwz 9,140(3)
	cmpw 7,9,0
	beq- 7,.L183
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 23, -36
	.cfi_offset 22, -40
.LVL276:
	lwz 29,144(3)
	addi 29,29,32
.LVL277:
.L183:
.LBE4193:
.LBE4195:
.LBB4196:
.LBB4197:
.LBB4198:
.LBB4199:
	.loc 3 83 0
	lwz 3,500(24)
.LVL278:
	li 28,0
	cmpwi 7,3,0
	beq- 7,.L184
	bl strlen
	mr 28,3
.L184:
.LVL279:
.LBE4199:
.LBE4198:
.LBB4200:
.LBB4201:
	.loc 4 728 0
	lwz 9,512(24)
	addi 0,24,520
	li 31,0
	cmpw 7,9,0
	beq- 7,.L185
	lwz 31,516(24)
.L185:
.LVL280:
.LBE4201:
.LBE4200:
.LBE4197:
.LBE4196:
.LBB4202:
.LBB4203:
.LBB4204:
.LBB4205:
	.loc 3 83 0
	lwz 3,548(24)
	li 9,0
	cmpwi 7,3,0
	beq- 7,.L186
	bl strlen
	mr 9,3
.L186:
.LVL281:
.LBE4205:
.LBE4204:
.LBB4207:
.LBB4208:
	.loc 4 728 0
	lwz 11,592(24)
	addi 0,24,600
	cmpw 7,11,0
	li 0,0
	beq- 7,.L187
	lwz 0,596(24)
.L187:
.LBE4208:
.LBE4207:
.LBE4203:
.LBE4202:
	.loc 6 4264 0
	lwz 30,624(24)
	.loc 6 182 0
	add 29,28,29
.LBB4212:
.LBB4210:
.LBB4209:
.LBB4206:
	.loc 3 83 0
	add 31,29,31
.LBE4206:
.LBE4209:
.LBE4210:
.LBE4212:
	.loc 6 186 0
	cmpwi 7,30,0
.LBB4213:
.LBB4211:
	.loc 3 811 0
	add 9,31,9
.LVL282:
.LBE4211:
.LBE4213:
	.loc 6 183 0
	add 25,9,0
.LVL283:
	.loc 6 186 0
	ble- 7,.L188
	li 31,0
.LVL284:
.L189:
	.loc 6 187 0 discriminator 2
	lwz 9,636(24)
	slwi 0,31,2
	.loc 6 186 0 discriminator 2
	addi 31,31,1
.LVL285:
	.loc 6 187 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 6 186 0 discriminator 2
	cmpw 7,31,30
	.loc 6 187 0 discriminator 2
	add 25,25,3
.LVL286:
	.loc 6 186 0 discriminator 2
	bne+ 7,.L189
.LVL287:
.L188:
	.loc 6 179 0 discriminator 1
	li 0,11
	addi 23,24,732
	stw 0,8(1)
.LVL288:
.L195:
	.loc 6 191 0
	lwzu 27,4(23)
	cmpwi 7,27,0
	beq- 7,.L190
.LVL289:
.LBB4214:
.LBB4215:
.LBB4216:
	.file 9 "d:/Data/Nintendo/DoomGX/src/ui/GuiScript.h"
	.loc 9 120 0
	lwz 0,0(27)
	li 26,16
	cmpwi 7,0,0
	ble- 7,.L191
	li 28,0
.LVL290:
.L194:
	.loc 9 121 0
	lwz 11,12(27)
	slwi 9,28,2
.LBB4217:
.LBB4218:
.LBB4219:
	.loc 9 90 0
	li 29,32
.LBE4219:
.LBE4218:
.LBE4217:
	.loc 9 121 0
	lwzx 30,11,9
.LVL291:
.LBB4222:
.LBB4221:
.LBB4220:
	.loc 9 90 0
	lwz 9,12(30)
.LVL292:
	cmpwi 7,9,0
	ble- 7,.L192
	li 31,0
.LVL293:
.L193:
	.loc 9 91 0
	lwz 9,24(30)
	slwi 0,31,3
	.loc 9 90 0
	addi 31,31,1
.LVL294:
	.loc 9 91 0
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 9 90 0
	lwz 0,12(30)
	.loc 9 91 0
	add 29,29,3
.LVL295:
	.loc 9 90 0
	cmpw 7,31,0
	blt+ 7,.L193
	lwz 0,0(27)
.LVL296:
.L192:
.LBE4220:
.LBE4221:
.LBE4222:
	.loc 9 120 0
	addi 28,28,1
.LVL297:
	.loc 9 121 0
	add 26,29,26
.LVL298:
	.loc 9 120 0
	cmpw 7,28,0
	blt+ 7,.L194
.LVL299:
.L191:
.LBE4216:
.LBE4215:
.LBE4214:
	.loc 6 192 0
	add 25,26,25
.LVL300:
.L190:
	.loc 6 190 0
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L195
	.loc 6 4264 0
	lwz 22,784(24)
.LVL301:
	.loc 6 196 0
	cmpwi 7,22,0
	ble- 7,.L196
	li 23,0
.LVL302:
.L201:
	.loc 6 197 0 discriminator 2
	lwz 9,796(24)
	slwi 0,23,2
.LBB4223:
.LBB4224:
.LBB4225:
.LBB4226:
.LBB4227:
	.loc 9 120 0 discriminator 2
	li 27,16
.LBE4227:
.LBE4226:
.LBE4225:
.LBE4224:
.LBE4223:
	.loc 6 4264 0 discriminator 2
	lwzx 9,9,0
	lwz 26,4(9)
.LVL303:
.LBB4239:
.LBB4237:
.LBB4236:
.LBB4235:
.LBB4234:
	.loc 9 120 0 discriminator 2
	lwz 0,0(26)
.LVL304:
	cmpwi 7,0,0
	ble- 7,.L197
	.loc 9 120 0 is_stmt 0
	li 28,0
.LVL305:
.L200:
	.loc 9 121 0 is_stmt 1
	lwz 11,12(26)
	slwi 9,28,2
.LBB4228:
.LBB4229:
.LBB4230:
	.loc 9 90 0
	li 29,32
.LBE4230:
.LBE4229:
.LBE4228:
	.loc 9 121 0
	lwzx 30,11,9
.LVL306:
.LBB4233:
.LBB4232:
.LBB4231:
	.loc 9 90 0
	lwz 9,12(30)
.LVL307:
	cmpwi 7,9,0
	ble- 7,.L198
	li 31,0
.LVL308:
.L199:
	.loc 9 91 0
	lwz 9,24(30)
	slwi 0,31,3
	.loc 9 90 0
	addi 31,31,1
.LVL309:
	.loc 9 91 0
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 9 90 0
	lwz 0,12(30)
	.loc 9 91 0
	add 29,29,3
.LVL310:
	.loc 9 90 0
	cmpw 7,31,0
	blt+ 7,.L199
	lwz 0,0(26)
.LVL311:
.L198:
.LBE4231:
.LBE4232:
.LBE4233:
	.loc 9 120 0
	addi 28,28,1
.LVL312:
	.loc 9 121 0
	add 27,29,27
.LVL313:
	.loc 9 120 0
	cmpw 7,28,0
	blt+ 7,.L200
.LVL314:
.L197:
.LBE4234:
.LBE4235:
.LBE4236:
.LBE4237:
.LBE4239:
	.loc 6 196 0
	addi 23,23,1
.LVL315:
.LBB4240:
.LBB4238:
	.loc 5 134 0
	addi 25,25,12
.LVL316:
.LBE4238:
.LBE4240:
	.loc 6 196 0
	cmpw 7,23,22
	.loc 6 197 0
	add 25,25,27
.LVL317:
	.loc 6 196 0
	bne+ 7,.L201
.LVL318:
.L196:
	.loc 6 4264 0
	lwz 22,852(24)
.LVL319:
	.loc 6 201 0
	cmpwi 7,22,0
	ble- 7,.L202
	li 23,0
.LVL320:
.L207:
	.loc 6 202 0 discriminator 2
	lwz 9,864(24)
	slwi 0,23,2
.LBB4241:
.LBB4242:
.LBB4243:
.LBB4244:
.LBB4245:
	.loc 9 120 0 discriminator 2
	li 27,16
.LBE4245:
.LBE4244:
.LBE4243:
.LBE4242:
.LBE4241:
	.loc 6 4264 0 discriminator 2
	lwzx 9,9,0
	lwz 26,32(9)
.LVL321:
.LBB4257:
.LBB4255:
.LBB4254:
.LBB4253:
.LBB4252:
	.loc 9 120 0 discriminator 2
	lwz 0,0(26)
.LVL322:
	cmpwi 7,0,0
	ble- 7,.L203
	.loc 9 120 0 is_stmt 0
	li 28,0
.LVL323:
.L206:
	.loc 9 121 0 is_stmt 1
	lwz 11,12(26)
	slwi 9,28,2
.LBB4246:
.LBB4247:
.LBB4248:
	.loc 9 90 0
	li 29,32
.LBE4248:
.LBE4247:
.LBE4246:
	.loc 9 121 0
	lwzx 30,11,9
.LVL324:
.LBB4251:
.LBB4250:
.LBB4249:
	.loc 9 90 0
	lwz 9,12(30)
.LVL325:
	cmpwi 7,9,0
	ble- 7,.L204
	li 31,0
.LVL326:
.L205:
	.loc 9 91 0
	lwz 9,24(30)
	slwi 0,31,3
	.loc 9 90 0
	addi 31,31,1
.LVL327:
	.loc 9 91 0
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 9 90 0
	lwz 0,12(30)
	.loc 9 91 0
	add 29,29,3
.LVL328:
	.loc 9 90 0
	cmpw 7,31,0
	blt+ 7,.L205
	lwz 0,0(26)
.LVL329:
.L204:
.LBE4249:
.LBE4250:
.LBE4251:
	.loc 9 120 0
	addi 28,28,1
.LVL330:
	.loc 9 121 0
	add 27,29,27
.LVL331:
	.loc 9 120 0
	cmpw 7,28,0
	blt+ 7,.L206
.LVL332:
.L203:
.LBE4252:
.LBE4253:
.LBE4254:
.LBE4255:
.LBE4257:
	.loc 6 201 0
	addi 23,23,1
.LVL333:
.LBB4258:
.LBB4256:
	.loc 5 156 0
	addi 25,25,36
.LVL334:
.LBE4256:
.LBE4258:
	.loc 6 201 0
	cmpw 7,23,22
	.loc 6 202 0
	add 25,25,27
.LVL335:
	.loc 6 201 0
	bne+ 7,.L207
.LVL336:
.L202:
	.loc 6 4264 0
	lwz 30,696(24)
.LVL337:
	.loc 6 206 0
	cmpwi 7,30,0
	ble- 7,.L208
	li 31,0
.LVL338:
.L210:
	.loc 6 207 0
	lwz 9,708(24)
	slwi 0,31,3
	.loc 6 206 0
	addi 31,31,1
.LVL339:
	.loc 6 207 0
	add 9,9,0
	lwz 3,4(9)
	cmpwi 7,3,0
	beq- 7,.L209
	.loc 6 208 0
	bl _ZN14idSimpleWindow4SizeEv
	add 25,3,25
.LVL340:
.L209:
	.loc 6 206 0
	cmpw 7,31,30
	bne+ 7,.L210
.LVL341:
.L208:
.LBE4260:
	.loc 6 213 0
	lwz 0,60(1)
	mr 3,25
	lwz 22,16(1)
	mtlr 0
	lwz 23,20(1)
	lwz 24,24(1)
.LVL342:
	lwz 25,28(1)
.LVL343:
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
.LCFI105:
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
	blr
	.cfi_endproc
.LFE2879:
	.size	_ZN8idWindow9AllocatedEv, .-_ZN8idWindow9AllocatedEv
	.section	.text._ZN15idWinBackground6UpdateEv,"axG",@progbits,_ZN15idWinBackground6UpdateEv,comdat
	.align 2
	.weak	_ZN15idWinBackground6UpdateEv
	.type	_ZN15idWinBackground6UpdateEv, @function
_ZN15idWinBackground6UpdateEv:
.LFB2779:
	.loc 3 795 0
	.cfi_startproc
.LVL344:
	mflr 0
	stwu 1,-16(1)
.LCFI106:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4280:
.LBB4281:
.LBB4282:
	.loc 6 4264 0
	lwz 4,8(3)
	lwz 3,4(3)
.LVL345:
.LBE4282:
.LBE4281:
.LBB4287:
.LBB4288:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L240
	.cfi_offset 65, 4
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L233
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L243
.L236:
.LBE4288:
.LBE4287:
	.loc 3 797 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L244
.L233:
.LBE4280:
	.loc 3 807 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL346:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI107:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL347:
.L244:
.LCFI108:
	.cfi_restore_state
.LBB4310:
.LBB4302:
.LBB4284:
	.file 10 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/Dict.h"
	.loc 10 241 0
	bl _ZNK6idDict7FindKeyEPKc
	.loc 10 242 0
	mr. 9,3
.LBE4284:
.LBE4302:
	.loc 3 798 0
	addi 3,31,48
.LVL348:
.LBB4303:
.LBB4285:
	.loc 10 242 0
	beq- 0,.L242
.LVL349:
.LBB4283:
	.loc 6 4264 0
	lwz 9,4(9)
.LVL350:
	lwz 4,4(9)
.LVL351:
.L238:
.LBE4283:
.LBE4285:
.LBE4303:
	.loc 3 798 0
	bl _ZN5idStraSEPKc
	.loc 3 799 0
	lwz 0,80(31)
	cmpwi 7,0,0
	beq- 7,.L233
.LVL352:
.LBB4304:
.LBB4305:
	.loc 4 653 0
	lwz 3,52(31)
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE4305:
.LBE4304:
	.loc 3 800 0
	cmpwi 0,3,0
	bne- 0,.L239
	.loc 3 801 0
	lwz 9,80(31)
	stw 3,0(9)
.LBE4310:
	.loc 3 807 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL353:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI109:
	.cfi_def_cfa_offset 0
	blr
.LVL354:
.L239:
.LCFI110:
	.cfi_restore_state
.LBB4311:
.LBB4312:
	.loc 3 803 0
	lis 9,declManager@ha
	lwz 4,52(31)
	lwz 3,declManager@l(9)
.LVL355:
	li 5,1
	li 6,0
	lwz 31,80(31)
.LVL356:
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	stw 3,0(31)
.LBE4312:
.LBE4311:
	.loc 3 807 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI111:
	.cfi_def_cfa_offset 0
	blr
.LVL357:
.L240:
.LCFI112:
	.cfi_restore_state
.LBB4313:
.LBB4306:
.LBB4299:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.L234:
.LBE4299:
.LBE4306:
	.loc 3 797 0
	cmpwi 7,3,0
	bne+ 7,.L236
	b .L233
.L243:
.LVL358:
.LBB4307:
.LBB4300:
.LBB4289:
.LBB4290:
.LBB4291:
.LBB4292:
	.loc 10 241 0
	addi 4,4,1
.LVL359:
	bl _ZNK6idDict7FindKeyEPKc
.LVL360:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L241
.LVL361:
.LBB4293:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(31)
.LVL362:
	lwz 4,4(9)
	b .L234
.LVL363:
.L242:
.LBE4293:
.LBE4292:
.LBE4291:
.LBE4290:
.LBE4289:
.LBE4300:
.LBE4307:
.LBB4308:
.LBB4286:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L238
.LVL364:
.L241:
.LBE4286:
.LBE4308:
.LBB4309:
.LBB4301:
.LBB4298:
.LBB4297:
.LBB4296:
.LBB4295:
	lis 4,.LC4@ha
.LBB4294:
	.loc 6 4264 0
	lwz 3,4(31)
.LVL365:
.LBE4294:
	.loc 10 245 0
	la 4,.LC4@l(4)
	b .L234
.LBE4295:
.LBE4296:
.LBE4297:
.LBE4298:
.LBE4301:
.LBE4309:
.LBE4313:
	.cfi_endproc
.LFE2779:
	.size	_ZN15idWinBackground6UpdateEv, .-_ZN15idWinBackground6UpdateEv
	.section	.text._ZN9idWinVec46UpdateEv,"axG",@progbits,_ZN9idWinVec46UpdateEv,comdat
	.align 2
	.weak	_ZN9idWinVec46UpdateEv
	.type	_ZN9idWinVec46UpdateEv, @function
_ZN9idWinVec46UpdateEv:
.LFB2735:
	.loc 3 609 0
	.cfi_startproc
.LVL366:
	mflr 0
	stwu 1,-32(1)
.LCFI113:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
.LBB4325:
.LBB4326:
.LBB4327:
	.loc 6 4264 0
	lwz 4,8(3)
	lwz 3,4(3)
.LVL367:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L250
	.cfi_offset 65, 4
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L245
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L252
.L248:
.LBE4327:
.LBE4326:
	.loc 3 611 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	beq+ 7,.L245
.LVL368:
.LBB4336:
.LBB4337:
	.loc 10 274 0
	li 5,0
	addi 6,1,8
	bl _ZNK6idDict7GetVec4EPKcS1_R6idVec4
.LVL369:
	.loc 3 612 0
	lwz 0,8(1)
	stw 0,16(31)
	lwz 0,12(1)
	stw 0,20(31)
	lwz 0,16(1)
	stw 0,24(31)
	lwz 0,20(1)
	stw 0,28(31)
.LVL370:
.L245:
.LBE4337:
.LBE4336:
.LBE4325:
	.loc 3 614 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL371:
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI114:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL372:
.L250:
.LCFI115:
	.cfi_restore_state
.LBB4340:
.LBB4338:
.LBB4334:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.L246:
.LBE4334:
.LBE4338:
	.loc 3 611 0
	cmpwi 7,3,0
	bne+ 7,.L248
	b .L245
.L252:
.LVL373:
.LBB4339:
.LBB4335:
.LBB4328:
.LBB4329:
.LBB4330:
.LBB4331:
	.loc 10 241 0
	addi 4,4,1
.LVL374:
	bl _ZNK6idDict7FindKeyEPKc
.LVL375:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L251
.LVL376:
.LBB4332:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(31)
.LVL377:
	lwz 4,4(9)
	b .L246
.LVL378:
.L251:
.LBE4332:
	.loc 10 245 0
	lis 4,.LC4@ha
.LBB4333:
	.loc 6 4264 0
	lwz 3,4(31)
.LVL379:
.LBE4333:
	.loc 10 245 0
	la 4,.LC4@l(4)
	b .L246
.LBE4331:
.LBE4330:
.LBE4329:
.LBE4328:
.LBE4335:
.LBE4339:
.LBE4340:
	.cfi_endproc
.LFE2735:
	.size	_ZN9idWinVec46UpdateEv, .-_ZN9idWinVec46UpdateEv
	.section	.text._ZN14idWinRectangle6UpdateEv,"axG",@progbits,_ZN14idWinRectangle6UpdateEv,comdat
	.align 2
	.weak	_ZN14idWinRectangle6UpdateEv
	.type	_ZN14idWinRectangle6UpdateEv, @function
_ZN14idWinRectangle6UpdateEv:
.LFB2694:
	.loc 3 456 0
	.cfi_startproc
.LVL380:
	mflr 0
	stwu 1,-32(1)
.LCFI116:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
.LBB4354:
.LBB4355:
.LBB4356:
	.loc 6 4264 0
	lwz 4,8(3)
	lwz 3,4(3)
.LVL381:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L258
	.cfi_offset 65, 4
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L253
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L260
.L256:
.LBE4356:
.LBE4355:
.LBB4365:
	.loc 3 458 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	beq+ 7,.L253
.LVL382:
.LBB4366:
.LBB4367:
.LBB4368:
	.loc 10 274 0
	li 5,0
	addi 6,1,8
	bl _ZNK6idDict7GetVec4EPKcS1_R6idVec4
.LVL383:
.LBE4368:
.LBE4367:
	.loc 3 460 0
	lwz 0,8(1)
	stw 0,16(31)
	.loc 3 461 0
	lwz 0,12(1)
	stw 0,20(31)
	.loc 3 462 0
	lwz 0,16(1)
	stw 0,24(31)
	.loc 3 463 0
	lwz 0,20(1)
	stw 0,28(31)
.LVL384:
.L253:
.LBE4366:
.LBE4365:
.LBE4354:
	.loc 3 465 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL385:
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI117:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL386:
.L258:
.LCFI118:
	.cfi_restore_state
.LBB4372:
.LBB4369:
.LBB4363:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.L254:
.LBE4363:
.LBE4369:
.LBB4370:
	.loc 3 458 0
	cmpwi 7,3,0
	bne+ 7,.L256
	b .L253
.L260:
.LVL387:
.LBE4370:
.LBB4371:
.LBB4364:
.LBB4357:
.LBB4358:
.LBB4359:
.LBB4360:
	.loc 10 241 0
	addi 4,4,1
.LVL388:
	bl _ZNK6idDict7FindKeyEPKc
.LVL389:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L259
.LVL390:
.LBB4361:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(31)
.LVL391:
	lwz 4,4(9)
	b .L254
.LVL392:
.L259:
.LBE4361:
	.loc 10 245 0
	lis 4,.LC4@ha
.LBB4362:
	.loc 6 4264 0
	lwz 3,4(31)
.LVL393:
.LBE4362:
	.loc 10 245 0
	la 4,.LC4@l(4)
	b .L254
.LBE4360:
.LBE4359:
.LBE4358:
.LBE4357:
.LBE4364:
.LBE4371:
.LBE4372:
	.cfi_endproc
.LFE2694:
	.size	_ZN14idWinRectangle6UpdateEv, .-_ZN14idWinRectangle6UpdateEv
	.section	.text._ZN10idWinFloat6UpdateEv,"axG",@progbits,_ZN10idWinFloat6UpdateEv,comdat
	.align 2
	.weak	_ZN10idWinFloat6UpdateEv
	.type	_ZN10idWinFloat6UpdateEv, @function
_ZN10idWinFloat6UpdateEv:
.LFB2668:
	.loc 3 353 0
	.cfi_startproc
.LVL394:
	mflr 0
	stwu 1,-16(1)
.LCFI119:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4388:
.LBB4389:
.LBB4390:
.LBB4391:
.LBB4392:
	.loc 6 4264 0
	lwz 4,8(3)
	lwz 3,4(3)
.LVL395:
.LBE4392:
.LBE4391:
.LBE4390:
.LBE4389:
.LBB4400:
.LBB4401:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L267
	.cfi_offset 65, 4
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L261
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L270
.L264:
.LBE4401:
.LBE4400:
	.loc 3 355 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L271
.L261:
.LBE4388:
	.loc 3 358 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL396:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI120:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL397:
.L271:
.LCFI121:
	.cfi_restore_state
.LBB4420:
.LBB4415:
.LBB4398:
.LBB4396:
.LBB4394:
	.loc 10 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL398:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L269
.LVL399:
.LBB4393:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL400:
.L266:
.LBE4393:
.LBE4394:
.LBE4396:
	.loc 10 249 0
	bl atof
	frsp 1,1
	stfs 1,16(31)
.LBE4398:
.LBE4415:
.LBE4420:
	.loc 3 358 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL401:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI122:
	.cfi_def_cfa_offset 0
	blr
.LVL402:
.L267:
.LCFI123:
	.cfi_restore_state
.LBB4421:
.LBB4416:
.LBB4412:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.L262:
.LBE4412:
.LBE4416:
	.loc 3 355 0
	cmpwi 7,3,0
	bne+ 7,.L264
	b .L261
.L270:
.LVL403:
.LBB4417:
.LBB4413:
.LBB4402:
.LBB4403:
.LBB4404:
.LBB4405:
	.loc 10 241 0
	addi 4,4,1
.LVL404:
	bl _ZNK6idDict7FindKeyEPKc
.LVL405:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L268
.LVL406:
.LBB4406:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(31)
.LVL407:
	lwz 4,4(9)
	b .L262
.LVL408:
.L269:
.LBE4406:
.LBE4405:
.LBE4404:
.LBE4403:
.LBE4402:
.LBE4413:
.LBE4417:
.LBB4418:
.LBB4399:
.LBB4397:
.LBB4395:
	.loc 10 245 0
	lis 3,.LC9@ha
.LVL409:
	la 3,.LC9@l(3)
	b .L266
.LVL410:
.L268:
.LBE4395:
.LBE4397:
.LBE4399:
.LBE4418:
.LBB4419:
.LBB4414:
.LBB4411:
.LBB4410:
.LBB4409:
.LBB4408:
	lis 4,.LC4@ha
.LBB4407:
	.loc 6 4264 0
	lwz 3,4(31)
.LVL411:
.LBE4407:
	.loc 10 245 0
	la 4,.LC4@l(4)
	b .L262
.LBE4408:
.LBE4409:
.LBE4410:
.LBE4411:
.LBE4414:
.LBE4419:
.LBE4421:
	.cfi_endproc
.LFE2668:
	.size	_ZN10idWinFloat6UpdateEv, .-_ZN10idWinFloat6UpdateEv
	.section	.text._ZN8idWinInt6UpdateEv,"axG",@progbits,_ZN8idWinInt6UpdateEv,comdat
	.align 2
	.weak	_ZN8idWinInt6UpdateEv
	.type	_ZN8idWinInt6UpdateEv, @function
_ZN8idWinInt6UpdateEv:
.LFB2651:
	.loc 3 295 0
	.cfi_startproc
.LVL412:
	mflr 0
	stwu 1,-16(1)
.LCFI124:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4437:
.LBB4438:
.LBB4439:
.LBB4440:
.LBB4441:
	.loc 6 4264 0
	lwz 4,8(3)
	lwz 3,4(3)
.LVL413:
.LBE4441:
.LBE4440:
.LBE4439:
.LBE4438:
.LBB4449:
.LBB4450:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L278
	.cfi_offset 65, 4
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L272
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L281
.L275:
.LBE4450:
.LBE4449:
	.loc 3 297 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L282
.L272:
.LBE4437:
	.loc 3 300 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL414:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI125:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL415:
.L282:
.LCFI126:
	.cfi_restore_state
.LBB4469:
.LBB4464:
.LBB4447:
.LBB4445:
.LBB4443:
	.loc 10 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL416:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L280
.LVL417:
.LBB4442:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL418:
.L277:
.LBE4442:
.LBE4443:
.LBE4445:
	.loc 10 253 0
	bl atoi
.LBE4447:
.LBE4464:
	.loc 3 298 0
	stw 3,16(31)
.LBE4469:
	.loc 3 300 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL419:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI127:
	.cfi_def_cfa_offset 0
	blr
.LVL420:
.L278:
.LCFI128:
	.cfi_restore_state
.LBB4470:
.LBB4465:
.LBB4461:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.L273:
.LBE4461:
.LBE4465:
	.loc 3 297 0
	cmpwi 7,3,0
	bne+ 7,.L275
	b .L272
.L281:
.LVL421:
.LBB4466:
.LBB4462:
.LBB4451:
.LBB4452:
.LBB4453:
.LBB4454:
	.loc 10 241 0
	addi 4,4,1
.LVL422:
	bl _ZNK6idDict7FindKeyEPKc
.LVL423:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L279
.LVL424:
.LBB4455:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(31)
.LVL425:
	lwz 4,4(9)
	b .L273
.LVL426:
.L280:
.LBE4455:
.LBE4454:
.LBE4453:
.LBE4452:
.LBE4451:
.LBE4462:
.LBE4466:
.LBB4467:
.LBB4448:
.LBB4446:
.LBB4444:
	.loc 10 245 0
	lis 3,.LC9@ha
.LVL427:
	la 3,.LC9@l(3)
	b .L277
.LVL428:
.L279:
.LBE4444:
.LBE4446:
.LBE4448:
.LBE4467:
.LBB4468:
.LBB4463:
.LBB4460:
.LBB4459:
.LBB4458:
.LBB4457:
	lis 4,.LC4@ha
.LBB4456:
	.loc 6 4264 0
	lwz 3,4(31)
.LVL429:
.LBE4456:
	.loc 10 245 0
	la 4,.LC4@l(4)
	b .L273
.LBE4457:
.LBE4458:
.LBE4459:
.LBE4460:
.LBE4463:
.LBE4468:
.LBE4470:
	.cfi_endproc
.LFE2651:
	.size	_ZN8idWinInt6UpdateEv, .-_ZN8idWinInt6UpdateEv
	.section	.text._ZN8idWinStr6UpdateEv,"axG",@progbits,_ZN8idWinStr6UpdateEv,comdat
	.align 2
	.weak	_ZN8idWinStr6UpdateEv
	.type	_ZN8idWinStr6UpdateEv, @function
_ZN8idWinStr6UpdateEv:
.LFB2634:
	.loc 3 223 0
	.cfi_startproc
.LVL430:
	mflr 0
	stwu 1,-16(1)
.LCFI129:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4484:
.LBB4485:
.LBB4486:
	.loc 6 4264 0
	lwz 4,8(3)
	lwz 3,4(3)
.LVL431:
.LBE4486:
.LBE4485:
.LBB4491:
.LBB4492:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L289
	.cfi_offset 65, 4
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L283
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L292
.L286:
.LBE4492:
.LBE4491:
	.loc 3 225 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L293
.L283:
.LBE4484:
	.loc 3 228 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL432:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI130:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL433:
.L293:
.LCFI131:
	.cfi_restore_state
.LBB4512:
.LBB4506:
.LBB4488:
	.loc 10 241 0
	bl _ZNK6idDict7FindKeyEPKc
	.loc 10 242 0
	mr. 9,3
.LBE4488:
.LBE4506:
	.loc 3 226 0
	addi 3,31,16
.LVL434:
.LBB4507:
.LBB4489:
	.loc 10 242 0
	beq- 0,.L291
.LVL435:
.LBB4487:
	.loc 6 4264 0
	lwz 9,4(9)
.LVL436:
	lwz 4,4(9)
.LBE4487:
.LBE4489:
.LBE4507:
	.loc 3 226 0
	bl _ZN5idStraSEPKc
.LVL437:
.L294:
.LBE4512:
	.loc 3 228 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL438:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI132:
	.cfi_def_cfa_offset 0
	blr
.LVL439:
.L289:
.LCFI133:
	.cfi_restore_state
.LBB4513:
.LBB4508:
.LBB4503:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.L284:
.LBE4503:
.LBE4508:
	.loc 3 225 0
	cmpwi 7,3,0
	bne+ 7,.L286
	b .L283
.L292:
.LVL440:
.LBB4509:
.LBB4504:
.LBB4493:
.LBB4494:
.LBB4495:
.LBB4496:
	.loc 10 241 0
	addi 4,4,1
.LVL441:
	bl _ZNK6idDict7FindKeyEPKc
.LVL442:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L290
.LVL443:
.LBB4497:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(31)
.LVL444:
	lwz 4,4(9)
	b .L284
.LVL445:
.L291:
.LBE4497:
.LBE4496:
.LBE4495:
.LBE4494:
.LBE4493:
.LBE4504:
.LBE4509:
.LBB4510:
.LBB4490:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.LBE4490:
.LBE4510:
	.loc 3 226 0
	bl _ZN5idStraSEPKc
.LVL446:
	b .L294
.LVL447:
.L290:
.LBB4511:
.LBB4505:
.LBB4502:
.LBB4501:
.LBB4500:
.LBB4499:
	.loc 10 245 0
	lis 4,.LC4@ha
.LBB4498:
	.loc 6 4264 0
	lwz 3,4(31)
.LVL448:
.LBE4498:
	.loc 10 245 0
	la 4,.LC4@l(4)
	b .L284
.LBE4499:
.LBE4500:
.LBE4501:
.LBE4502:
.LBE4505:
.LBE4511:
.LBE4513:
	.cfi_endproc
.LFE2634:
	.size	_ZN8idWinStr6UpdateEv, .-_ZN8idWinStr6UpdateEv
	.section	.text._ZN9idWinBool6UpdateEv,"axG",@progbits,_ZN9idWinBool6UpdateEv,comdat
	.align 2
	.weak	_ZN9idWinBool6UpdateEv
	.type	_ZN9idWinBool6UpdateEv, @function
_ZN9idWinBool6UpdateEv:
.LFB2610:
	.loc 3 135 0
	.cfi_startproc
.LVL449:
	mflr 0
	stwu 1,-16(1)
.LCFI134:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4529:
.LBB4530:
.LBB4531:
.LBB4532:
.LBB4533:
	.loc 6 4264 0
	lwz 4,8(3)
	lwz 3,4(3)
.LVL450:
.LBE4533:
.LBE4532:
.LBE4531:
.LBE4530:
.LBB4541:
.LBB4542:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L301
	.cfi_offset 65, 4
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L295
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L304
.L298:
.LBE4542:
.LBE4541:
	.loc 3 137 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L305
.L295:
.LBE4529:
	.loc 3 140 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL451:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI135:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL452:
.L305:
.LCFI136:
	.cfi_restore_state
.LBB4561:
.LBB4556:
.LBB4539:
.LBB4537:
.LBB4535:
	.loc 10 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL453:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L303
.LVL454:
.LBB4534:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL455:
.L300:
.LBE4534:
.LBE4535:
.LBE4537:
	.loc 10 257 0
	bl atoi
	cntlzw 3,3
	srwi 3,3,5
	xori 3,3,1
.LBE4539:
.LBE4556:
	.loc 3 138 0
	stb 3,13(31)
.LBE4561:
	.loc 3 140 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL456:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI137:
	.cfi_def_cfa_offset 0
	blr
.LVL457:
.L301:
.LCFI138:
	.cfi_restore_state
.LBB4562:
.LBB4557:
.LBB4553:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
.L296:
.LBE4553:
.LBE4557:
	.loc 3 137 0
	cmpwi 7,3,0
	bne+ 7,.L298
	b .L295
.L304:
.LVL458:
.LBB4558:
.LBB4554:
.LBB4543:
.LBB4544:
.LBB4545:
.LBB4546:
	.loc 10 241 0
	addi 4,4,1
.LVL459:
	bl _ZNK6idDict7FindKeyEPKc
.LVL460:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L302
.LVL461:
.LBB4547:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(31)
.LVL462:
	lwz 4,4(9)
	b .L296
.LVL463:
.L303:
.LBE4547:
.LBE4546:
.LBE4545:
.LBE4544:
.LBE4543:
.LBE4554:
.LBE4558:
.LBB4559:
.LBB4540:
.LBB4538:
.LBB4536:
	.loc 10 245 0
	lis 3,.LC9@ha
.LVL464:
	la 3,.LC9@l(3)
	b .L300
.LVL465:
.L302:
.LBE4536:
.LBE4538:
.LBE4540:
.LBE4559:
.LBB4560:
.LBB4555:
.LBB4552:
.LBB4551:
.LBB4550:
.LBB4549:
	lis 4,.LC4@ha
.LBB4548:
	.loc 6 4264 0
	lwz 3,4(31)
.LVL466:
.LBE4548:
	.loc 10 245 0
	la 4,.LC4@l(4)
	b .L296
.LBE4549:
.LBE4550:
.LBE4551:
.LBE4552:
.LBE4555:
.LBE4560:
.LBE4562:
	.cfi_endproc
.LFE2610:
	.size	_ZN9idWinBool6UpdateEv, .-_ZN9idWinBool6UpdateEv
	.section	.text._ZN9idWinVec43SetEPKc,"axG",@progbits,_ZN9idWinVec43SetEPKc,comdat
	.align 2
	.weak	_ZN9idWinVec43SetEPKc
	.type	_ZN9idWinVec43SetEPKc, @function
_ZN9idWinVec43SetEPKc:
.LFB2734:
	.loc 3 599 0
	.cfi_startproc
.LVL467:
	stwu 1,-24(1)
.LCFI139:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 31,20(1)
	.loc 3 600 0
	li 4,44
.LVL468:
	.loc 3 599 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 3 600 0
	mr 3,29
.LVL469:
	.loc 3 599 0
	stw 30,16(1)
	.loc 3 601 0
	addi 30,31,16
	.cfi_offset 30, -8
	.loc 3 599 0
	stw 0,28(1)
	.loc 3 600 0
	.cfi_offset 65, 4
	bl strchr
	cmpwi 7,3,0
	.loc 3 601 0
	mr 3,29
	.loc 3 600 0
	beq- 7,.L307
	.loc 3 601 0
	lis 4,.LC10@ha
	la 4,.LC10@l(4)
.L314:
	.loc 3 603 0
	mr 5,30
	addi 6,31,20
	addi 7,31,24
	addi 8,31,28
	crxor 6,6,6
	bl sscanf
	.loc 3 605 0
	lwz 29,4(31)
.LVL470:
	cmpwi 7,29,0
	beq- 7,.L306
	.loc 6 4264 0
	lwz 31,8(31)
.LVL471:
.LBB4573:
.LBB4574:
	.loc 3 53 0
	cmpwi 7,31,0
	beq- 7,.L312
	.loc 3 54 0
	lbz 0,0(31)
	cmpwi 7,0,42
	beq- 7,.L315
.L310:
.LVL472:
.LBE4574:
.LBE4573:
.LBB4585:
.LBB4586:
	.loc 10 205 0
	li 4,2
	mr 3,30
	bl _ZNK6idVec48ToStringEi
	mr 4,31
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL473:
.L306:
.LBE4586:
.LBE4585:
	.loc 3 608 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL474:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI140:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL475:
.L307:
.LCFI141:
	.cfi_restore_state
	.loc 3 603 0
	lis 4,.LC11@ha
	la 4,.LC11@l(4)
	b .L314
.LVL476:
.L315:
.LBB4587:
.LBB4584:
.LBB4575:
.LBB4576:
.LBB4577:
.LBB4578:
	.loc 10 241 0
	mr 3,29
	addi 4,31,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL477:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L316
.LVL478:
.L312:
.LBE4578:
.LBE4577:
.LBE4576:
.LBE4575:
	.loc 3 59 0
	lis 31,.LC4@ha
	la 31,.LC4@l(31)
	b .L310
.LVL479:
.L316:
.LBB4583:
.LBB4582:
.LBB4581:
.LBB4580:
.LBB4579:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL480:
	b .L310
.LBE4579:
.LBE4580:
.LBE4581:
.LBE4582:
.LBE4583:
.LBE4584:
.LBE4587:
	.cfi_endproc
.LFE2734:
	.size	_ZN9idWinVec43SetEPKc, .-_ZN9idWinVec43SetEPKc
	.section	.text._ZN9idWinVec44InitEPKcP8idWindow,"axG",@progbits,_ZN9idWinVec44InitEPKcP8idWindow,comdat
	.align 2
	.weak	_ZN9idWinVec44InitEPKcP8idWindow
	.type	_ZN9idWinVec44InitEPKcP8idWindow, @function
_ZN9idWinVec44InitEPKcP8idWindow:
.LFB2725:
	.loc 3 559 0
	.cfi_startproc
.LVL481:
	stwu 1,-32(1)
.LCFI142:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,24(1)
	stw 0,36(1)
	.loc 3 560 0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN8idWinVar4InitEPKcP8idWindow
.LVL482:
	.loc 3 561 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L317
	.loc 6 4264 0
	lwz 4,8(31)
.LBB4598:
.LBB4599:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L321
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L323
.L319:
.LVL483:
.LBE4599:
.LBE4598:
.LBB4610:
.LBB4611:
	.loc 10 274 0
	mr 3,30
	li 5,0
	addi 6,1,8
	bl _ZNK6idDict7GetVec4EPKcS1_R6idVec4
	.loc 3 562 0
	lwz 0,8(1)
	stw 0,16(31)
	lwz 0,12(1)
	stw 0,20(31)
	lwz 0,16(1)
	stw 0,24(31)
	lwz 0,20(1)
	stw 0,28(31)
.LVL484:
.L317:
.LBE4611:
.LBE4610:
	.loc 3 564 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL485:
	addi 1,1,32
	.cfi_remember_state
.LCFI143:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL486:
.L323:
.LCFI144:
	.cfi_restore_state
.LBB4612:
.LBB4609:
.LBB4600:
.LBB4601:
.LBB4602:
.LBB4603:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL487:
	bl _ZNK6idDict7FindKeyEPKc
.LVL488:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L324
.LVL489:
.L321:
.LBE4603:
.LBE4602:
.LBE4601:
.LBE4600:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L319
.LVL490:
.L324:
.LBB4608:
.LBB4607:
.LBB4606:
.LBB4605:
.LBB4604:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L319
.LBE4604:
.LBE4605:
.LBE4606:
.LBE4607:
.LBE4608:
.LBE4609:
.LBE4612:
	.cfi_endproc
.LFE2725:
	.size	_ZN9idWinVec44InitEPKcP8idWindow, .-_ZN9idWinVec44InitEPKcP8idWindow
	.section	.text._ZN14idWinRectangle3SetEPKc,"axG",@progbits,_ZN14idWinRectangle3SetEPKc,comdat
	.align 2
	.weak	_ZN14idWinRectangle3SetEPKc
	.type	_ZN14idWinRectangle3SetEPKc, @function
_ZN14idWinRectangle3SetEPKc:
.LFB2693:
	.loc 3 445 0
	.cfi_startproc
.LVL491:
	stwu 1,-40(1)
.LCFI145:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,36(1)
.LBB4626:
	.loc 3 446 0
	li 4,44
.LVL492:
.LBE4626:
	.loc 3 445 0
	mr 31,3
	.cfi_offset 31, -4
.LBB4648:
	.loc 3 446 0
	mr 3,30
.LVL493:
.LBE4648:
	.loc 3 445 0
	stw 0,44(1)
	stw 29,28(1)
.LBB4649:
	.loc 3 446 0
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl strchr
	cmpwi 7,3,0
	.loc 3 447 0
	mr 3,30
	.loc 3 446 0
	beq- 7,.L326
	.loc 3 447 0
	lis 4,.LC10@ha
	la 4,.LC10@l(4)
.L333:
	.loc 3 449 0
	addi 5,31,16
	addi 6,31,20
	addi 7,31,24
	addi 8,31,28
	crxor 6,6,6
	bl sscanf
.LBB4627:
	.loc 3 451 0
	lwz 29,4(31)
	cmpwi 7,29,0
	beq- 7,.L325
.LBB4628:
	.loc 6 4264 0
	lwz 30,8(31)
.LVL494:
	.loc 3 452 0
	lwz 10,16(31)
.LBB4629:
.LBB4630:
	.loc 3 53 0
	cmpwi 7,30,0
.LBE4630:
.LBE4629:
	.loc 3 452 0
	lwz 11,20(31)
	lwz 9,24(31)
	lwz 0,28(31)
	stw 10,8(1)
	stw 11,12(1)
	stw 9,16(1)
	stw 0,20(1)
.LBB4642:
.LBB4640:
	.loc 3 53 0
	beq- 7,.L331
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L334
.L329:
.LVL495:
.LBE4640:
.LBE4642:
.LBB4643:
.LBB4644:
	.loc 10 205 0
	li 4,2
	addi 3,1,8
	bl _ZNK6idVec48ToStringEi
	mr 4,30
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL496:
.L325:
.LBE4644:
.LBE4643:
.LBE4628:
.LBE4627:
.LBE4649:
	.loc 3 455 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
	lwz 31,36(1)
.LVL497:
	addi 1,1,40
	.cfi_remember_state
.LCFI146:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL498:
.L326:
.LCFI147:
	.cfi_restore_state
.LBB4650:
	.loc 3 449 0
	lis 4,.LC11@ha
	la 4,.LC11@l(4)
	b .L333
.LVL499:
.L334:
.LBB4647:
.LBB4646:
.LBB4645:
.LBB4641:
.LBB4631:
.LBB4632:
.LBB4633:
.LBB4634:
	.loc 10 241 0
	mr 3,29
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL500:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L335
.LVL501:
.L331:
.LBE4634:
.LBE4633:
.LBE4632:
.LBE4631:
	.loc 3 59 0
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L329
.LVL502:
.L335:
.LBB4639:
.LBB4638:
.LBB4637:
.LBB4636:
.LBB4635:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL503:
	b .L329
.LBE4635:
.LBE4636:
.LBE4637:
.LBE4638:
.LBE4639:
.LBE4641:
.LBE4645:
.LBE4646:
.LBE4647:
.LBE4650:
	.cfi_endproc
.LFE2693:
	.size	_ZN14idWinRectangle3SetEPKc, .-_ZN14idWinRectangle3SetEPKc
	.section	.text._ZN14idWinRectangle4InitEPKcP8idWindow,"axG",@progbits,_ZN14idWinRectangle4InitEPKcP8idWindow,comdat
	.align 2
	.weak	_ZN14idWinRectangle4InitEPKcP8idWindow
	.type	_ZN14idWinRectangle4InitEPKcP8idWindow, @function
_ZN14idWinRectangle4InitEPKcP8idWindow:
.LFB2680:
	.loc 3 381 0
	.cfi_startproc
.LVL504:
	stwu 1,-32(1)
.LCFI148:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,24(1)
	stw 0,36(1)
.LBB4664:
	.loc 3 382 0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN8idWinVar4InitEPKcP8idWindow
.LVL505:
.LBB4665:
	.loc 3 383 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L336
	.loc 6 4264 0
	lwz 4,8(31)
.LBB4666:
.LBB4667:
.LBB4668:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L340
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L342
.L338:
.LVL506:
.LBE4668:
.LBE4667:
.LBB4679:
.LBB4680:
	.loc 10 274 0
	mr 3,30
	li 5,0
	addi 6,1,8
	bl _ZNK6idDict7GetVec4EPKcS1_R6idVec4
.LBE4680:
.LBE4679:
	.loc 3 385 0
	lwz 0,8(1)
	stw 0,16(31)
	.loc 3 386 0
	lwz 0,12(1)
	stw 0,20(31)
	.loc 3 387 0
	lwz 0,16(1)
	stw 0,24(31)
	.loc 3 388 0
	lwz 0,20(1)
	stw 0,28(31)
.LVL507:
.L336:
.LBE4666:
.LBE4665:
.LBE4664:
	.loc 3 390 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL508:
	addi 1,1,32
	.cfi_remember_state
.LCFI149:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL509:
.L342:
.LCFI150:
	.cfi_restore_state
.LBB4684:
.LBB4683:
.LBB4682:
.LBB4681:
.LBB4678:
.LBB4669:
.LBB4670:
.LBB4671:
.LBB4672:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL510:
	bl _ZNK6idDict7FindKeyEPKc
.LVL511:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L343
.LVL512:
.L340:
.LBE4672:
.LBE4671:
.LBE4670:
.LBE4669:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L338
.LVL513:
.L343:
.LBB4677:
.LBB4676:
.LBB4675:
.LBB4674:
.LBB4673:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L338
.LBE4673:
.LBE4674:
.LBE4675:
.LBE4676:
.LBE4677:
.LBE4678:
.LBE4681:
.LBE4682:
.LBE4683:
.LBE4684:
	.cfi_endproc
.LFE2680:
	.size	_ZN14idWinRectangle4InitEPKcP8idWindow, .-_ZN14idWinRectangle4InitEPKcP8idWindow
	.section	.text._ZN10idWinFloat3SetEPKc,"axG",@progbits,_ZN10idWinFloat3SetEPKc,comdat
	.align 2
	.weak	_ZN10idWinFloat3SetEPKc
	.type	_ZN10idWinFloat3SetEPKc, @function
_ZN10idWinFloat3SetEPKc:
.LFB2667:
	.loc 3 347 0
	.cfi_startproc
.LVL514:
	stwu 1,-24(1)
.LCFI151:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 3 348 0
	mr 3,4
.LVL515:
	.loc 3 347 0
	stw 30,16(1)
	stw 0,28(1)
	stw 29,12(1)
	.loc 3 348 0
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl atof
.LVL516:
	.loc 3 349 0
	lwz 30,4(31)
	.loc 3 348 0
	frsp 1,1
	.loc 3 349 0
	cmpwi 7,30,0
	.loc 3 348 0
	stfs 1,16(31)
	.loc 3 349 0
	beq- 7,.L344
	.loc 6 4264 0
	lwz 29,8(31)
.LBB4695:
.LBB4696:
	.loc 3 53 0
	cmpwi 7,29,0
	beq- 7,.L348
	.loc 3 54 0
	lbz 0,0(29)
	cmpwi 7,0,42
	beq- 7,.L350
.L346:
.LVL517:
.LBE4696:
.LBE4695:
.LBB4704:
.LBB4705:
	.loc 10 189 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL518:
	mr 4,29
	mr 5,3
	mr 3,30
	bl _ZN6idDict3SetEPKcS1_
.LVL519:
.L344:
.LBE4705:
.LBE4704:
	.loc 3 352 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL520:
	addi 1,1,24
	.cfi_remember_state
.LCFI152:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL521:
.L348:
.LCFI153:
	.cfi_restore_state
.LBB4706:
.LBB4703:
	.loc 3 59 0
	lis 29,.LC4@ha
	la 29,.LC4@l(29)
	b .L346
.L350:
.LVL522:
.LBB4697:
.LBB4698:
.LBB4699:
.LBB4700:
	.loc 10 241 0
	mr 3,30
	addi 4,29,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL523:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L349
.LVL524:
.LBB4701:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,16(31)
	lwz 29,4(9)
.LVL525:
	b .L346
.LVL526:
.L349:
.LBE4701:
	.loc 10 245 0
	lis 29,.LC4@ha
.LVL527:
.LBB4702:
	.loc 6 4264 0
	lfs 1,16(31)
.LBE4702:
	.loc 10 245 0
	la 29,.LC4@l(29)
	b .L346
.LBE4700:
.LBE4699:
.LBE4698:
.LBE4697:
.LBE4703:
.LBE4706:
	.cfi_endproc
.LFE2667:
	.size	_ZN10idWinFloat3SetEPKc, .-_ZN10idWinFloat3SetEPKc
	.section	.text._ZN10idWinFloat4InitEPKcP8idWindow,"axG",@progbits,_ZN10idWinFloat4InitEPKcP8idWindow,comdat
	.align 2
	.weak	_ZN10idWinFloat4InitEPKcP8idWindow
	.type	_ZN10idWinFloat4InitEPKcP8idWindow, @function
_ZN10idWinFloat4InitEPKcP8idWindow:
.LFB2663:
	.loc 3 326 0
	.cfi_startproc
.LVL528:
	stwu 1,-16(1)
.LCFI154:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	.loc 3 327 0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN8idWinVar4InitEPKcP8idWindow
.LVL529:
	.loc 3 328 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L351
	.loc 6 4264 0
	lwz 4,8(31)
.LBB4721:
.LBB4722:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L356
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L359
.L353:
.LVL530:
.LBE4722:
.LBE4721:
.LBB4734:
.LBB4735:
.LBB4736:
.LBB4737:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL531:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L358
.LVL532:
.LBB4738:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL533:
.L355:
.LBE4738:
.LBE4737:
.LBE4736:
	.loc 10 249 0
	bl atof
	frsp 1,1
	stfs 1,16(31)
.LVL534:
.L351:
.LBE4735:
.LBE4734:
	.loc 3 331 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL535:
	addi 1,1,16
	.cfi_remember_state
.LCFI155:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL536:
.L359:
.LCFI156:
	.cfi_restore_state
.LBB4742:
.LBB4732:
.LBB4723:
.LBB4724:
.LBB4725:
.LBB4726:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL537:
	bl _ZNK6idDict7FindKeyEPKc
.LVL538:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L360
.LVL539:
.L356:
.LBE4726:
.LBE4725:
.LBE4724:
.LBE4723:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L353
.LVL540:
.L358:
.LBE4732:
.LBE4742:
.LBB4743:
.LBB4741:
.LBB4740:
.LBB4739:
	.loc 10 245 0
	lis 3,.LC9@ha
.LVL541:
	la 3,.LC9@l(3)
	b .L355
.LVL542:
.L360:
.LBE4739:
.LBE4740:
.LBE4741:
.LBE4743:
.LBB4744:
.LBB4733:
.LBB4731:
.LBB4730:
.LBB4729:
.LBB4728:
.LBB4727:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L353
.LBE4727:
.LBE4728:
.LBE4729:
.LBE4730:
.LBE4731:
.LBE4733:
.LBE4744:
	.cfi_endproc
.LFE2663:
	.size	_ZN10idWinFloat4InitEPKcP8idWindow, .-_ZN10idWinFloat4InitEPKcP8idWindow
	.section	.text._ZN8idWinInt3SetEPKc,"axG",@progbits,_ZN8idWinInt3SetEPKc,comdat
	.align 2
	.weak	_ZN8idWinInt3SetEPKc
	.type	_ZN8idWinInt3SetEPKc, @function
_ZN8idWinInt3SetEPKc:
.LFB2650:
	.loc 3 288 0
	.cfi_startproc
.LVL543:
	stwu 1,-24(1)
.LCFI157:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 3 289 0
	mr 3,4
.LVL544:
	.loc 3 288 0
	stw 29,12(1)
	stw 0,28(1)
	stw 30,16(1)
	.loc 3 289 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	bl atoi
.LVL545:
	.loc 3 290 0
	lwz 29,4(31)
	.loc 3 289 0
	mr 4,3
	stw 3,16(31)
	.loc 3 290 0
	cmpwi 7,29,0
	beq- 7,.L361
	.loc 6 4264 0
	lwz 30,8(31)
.LBB4755:
.LBB4756:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L365
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L367
.L363:
.LVL546:
.LBE4756:
.LBE4755:
.LBB4764:
.LBB4765:
	.loc 10 193 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
.LVL547:
	mr 4,30
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL548:
.L361:
.LBE4765:
.LBE4764:
	.loc 3 293 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL549:
	addi 1,1,24
	.cfi_remember_state
.LCFI158:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL550:
.L365:
.LCFI159:
	.cfi_restore_state
.LBB4766:
.LBB4763:
	.loc 3 59 0
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L363
.L367:
.LVL551:
.LBB4757:
.LBB4758:
.LBB4759:
.LBB4760:
	.loc 10 241 0
	mr 3,29
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL552:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L366
.LVL553:
.LBB4761:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,16(31)
	lwz 30,4(9)
.LVL554:
	b .L363
.LVL555:
.L366:
.LBE4761:
	.loc 10 245 0
	lis 30,.LC4@ha
.LVL556:
.LBB4762:
	.loc 6 4264 0
	lwz 4,16(31)
.LBE4762:
	.loc 10 245 0
	la 30,.LC4@l(30)
	b .L363
.LBE4760:
.LBE4759:
.LBE4758:
.LBE4757:
.LBE4763:
.LBE4766:
	.cfi_endproc
.LFE2650:
	.size	_ZN8idWinInt3SetEPKc, .-_ZN8idWinInt3SetEPKc
	.section	.text._ZN8idWinInt4InitEPKcP8idWindow,"axG",@progbits,_ZN8idWinInt4InitEPKcP8idWindow,comdat
	.align 2
	.weak	_ZN8idWinInt4InitEPKcP8idWindow
	.type	_ZN8idWinInt4InitEPKcP8idWindow, @function
_ZN8idWinInt4InitEPKcP8idWindow:
.LFB2646:
	.loc 3 267 0
	.cfi_startproc
.LVL557:
	stwu 1,-16(1)
.LCFI160:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	.loc 3 268 0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN8idWinVar4InitEPKcP8idWindow
.LVL558:
	.loc 3 269 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L368
	.loc 6 4264 0
	lwz 4,8(31)
.LBB4781:
.LBB4782:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L373
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L376
.L370:
.LVL559:
.LBE4782:
.LBE4781:
.LBB4794:
.LBB4795:
.LBB4796:
.LBB4797:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL560:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L375
.LVL561:
.LBB4798:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL562:
.L372:
.LBE4798:
.LBE4797:
.LBE4796:
	.loc 10 253 0
	bl atoi
.LBE4795:
.LBE4794:
	.loc 3 270 0
	stw 3,16(31)
.LVL563:
.L368:
	.loc 3 272 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL564:
	addi 1,1,16
	.cfi_remember_state
.LCFI161:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL565:
.L376:
.LCFI162:
	.cfi_restore_state
.LBB4802:
.LBB4792:
.LBB4783:
.LBB4784:
.LBB4785:
.LBB4786:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL566:
	bl _ZNK6idDict7FindKeyEPKc
.LVL567:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L377
.LVL568:
.L373:
.LBE4786:
.LBE4785:
.LBE4784:
.LBE4783:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L370
.LVL569:
.L375:
.LBE4792:
.LBE4802:
.LBB4803:
.LBB4801:
.LBB4800:
.LBB4799:
	.loc 10 245 0
	lis 3,.LC9@ha
.LVL570:
	la 3,.LC9@l(3)
	b .L372
.LVL571:
.L377:
.LBE4799:
.LBE4800:
.LBE4801:
.LBE4803:
.LBB4804:
.LBB4793:
.LBB4791:
.LBB4790:
.LBB4789:
.LBB4788:
.LBB4787:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L370
.LBE4787:
.LBE4788:
.LBE4789:
.LBE4790:
.LBE4791:
.LBE4793:
.LBE4804:
	.cfi_endproc
.LFE2646:
	.size	_ZN8idWinInt4InitEPKcP8idWindow, .-_ZN8idWinInt4InitEPKcP8idWindow
	.section	.text._ZN8idWinStr3SetEPKc,"axG",@progbits,_ZN8idWinStr3SetEPKc,comdat
	.align 2
	.weak	_ZN8idWinStr3SetEPKc
	.type	_ZN8idWinStr3SetEPKc, @function
_ZN8idWinStr3SetEPKc:
.LFB2633:
	.loc 3 216 0
	.cfi_startproc
.LVL572:
	stwu 1,-16(1)
.LCFI163:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 3 217 0
	addi 3,3,16
.LVL573:
	.loc 3 216 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 3 217 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl _ZN5idStraSEPKc
.LVL574:
	.loc 3 218 0
	lwz 31,4(30)
	cmpwi 7,31,0
	beq- 7,.L378
	.loc 6 4264 0
	lwz 4,8(30)
.LBB4814:
.LBB4815:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L382
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L384
.L380:
.LVL575:
.LBE4815:
.LBE4814:
	.loc 3 219 0
	lwz 5,20(30)
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
.LVL576:
.L378:
	.loc 3 221 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL577:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI164:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL578:
.L384:
.LCFI165:
	.cfi_restore_state
.LBB4826:
.LBB4825:
.LBB4816:
.LBB4817:
.LBB4818:
.LBB4819:
	.loc 10 241 0
	mr 3,31
	addi 4,4,1
.LVL579:
	bl _ZNK6idDict7FindKeyEPKc
.LVL580:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L385
.LVL581:
.L382:
.LBE4819:
.LBE4818:
.LBE4817:
.LBE4816:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L380
.LVL582:
.L385:
.LBB4824:
.LBB4823:
.LBB4822:
.LBB4821:
.LBB4820:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L380
.LBE4820:
.LBE4821:
.LBE4822:
.LBE4823:
.LBE4824:
.LBE4825:
.LBE4826:
	.cfi_endproc
.LFE2633:
	.size	_ZN8idWinStr3SetEPKc, .-_ZN8idWinStr3SetEPKc
	.section	.text._ZN8idWinStr4InitEPKcP8idWindow,"axG",@progbits,_ZN8idWinStr4InitEPKcP8idWindow,comdat
	.align 2
	.weak	_ZN8idWinStr4InitEPKcP8idWindow
	.type	_ZN8idWinStr4InitEPKcP8idWindow, @function
_ZN8idWinStr4InitEPKcP8idWindow:
.LFB2622:
	.loc 3 164 0
	.cfi_startproc
.LVL583:
	stwu 1,-16(1)
.LCFI166:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	.loc 3 165 0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN8idWinVar4InitEPKcP8idWindow
.LVL584:
	.loc 3 166 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L386
	.loc 6 4264 0
	lwz 4,8(31)
	.loc 3 167 0
	addi 31,31,16
.LVL585:
.LBB4839:
.LBB4840:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L391
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L394
.L388:
.LVL586:
.LBE4840:
.LBE4839:
.LBB4852:
.LBB4853:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL587:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L393
.LVL588:
.LBB4854:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL589:
.L390:
.LBE4854:
.LBE4853:
.LBE4852:
	.loc 3 167 0
	mr 3,31
.LVL590:
	bl _ZN5idStraSEPKc
.LVL591:
.L386:
	.loc 3 169 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI167:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL592:
.L394:
.LCFI168:
	.cfi_restore_state
.LBB4856:
.LBB4850:
.LBB4841:
.LBB4842:
.LBB4843:
.LBB4844:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL593:
	bl _ZNK6idDict7FindKeyEPKc
.LVL594:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L395
.LVL595:
.L391:
.LBE4844:
.LBE4843:
.LBE4842:
.LBE4841:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L388
.LVL596:
.L393:
.LBE4850:
.LBE4856:
.LBB4857:
.LBB4855:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L390
.LVL597:
.L395:
.LBE4855:
.LBE4857:
.LBB4858:
.LBB4851:
.LBB4849:
.LBB4848:
.LBB4847:
.LBB4846:
.LBB4845:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L388
.LBE4845:
.LBE4846:
.LBE4847:
.LBE4848:
.LBE4849:
.LBE4851:
.LBE4858:
	.cfi_endproc
.LFE2622:
	.size	_ZN8idWinStr4InitEPKcP8idWindow, .-_ZN8idWinStr4InitEPKcP8idWindow
	.section	.text._ZN9idWinBool3SetEPKc,"axG",@progbits,_ZN9idWinBool3SetEPKc,comdat
	.align 2
	.weak	_ZN9idWinBool3SetEPKc
	.type	_ZN9idWinBool3SetEPKc, @function
_ZN9idWinBool3SetEPKc:
.LFB2609:
	.loc 3 128 0
	.cfi_startproc
.LVL598:
	stwu 1,-24(1)
.LCFI169:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 3 129 0
	mr 3,4
.LVL599:
	.loc 3 128 0
	stw 29,12(1)
	stw 0,28(1)
	stw 30,16(1)
	.loc 3 129 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	bl atoi
.LVL600:
	.loc 3 130 0
	lwz 29,4(31)
	.loc 3 129 0
	cntlzw 4,3
	srwi 4,4,5
	.loc 3 130 0
	cmpwi 7,29,0
	.loc 3 129 0
	xori 4,4,1
	stb 4,13(31)
	.loc 3 130 0
	beq- 7,.L396
	.loc 6 4264 0
	lwz 30,8(31)
.LBB4869:
.LBB4870:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L400
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L402
.L398:
.LVL601:
.LBE4870:
.LBE4869:
.LBB4878:
.LBB4879:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
.LVL602:
	mr 4,30
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL603:
.L396:
.LBE4879:
.LBE4878:
	.loc 3 133 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL604:
	addi 1,1,24
	.cfi_remember_state
.LCFI170:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL605:
.L400:
.LCFI171:
	.cfi_restore_state
.LBB4880:
.LBB4877:
	.loc 3 59 0
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L398
.L402:
.LVL606:
.LBB4871:
.LBB4872:
.LBB4873:
.LBB4874:
	.loc 10 241 0
	mr 3,29
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL607:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L401
.LVL608:
.LBB4875:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,13(31)
	lwz 30,4(9)
.LVL609:
	b .L398
.LVL610:
.L401:
.LBE4875:
	.loc 10 245 0
	lis 30,.LC4@ha
.LVL611:
.LBB4876:
	.loc 6 4264 0
	lbz 4,13(31)
.LBE4876:
	.loc 10 245 0
	la 30,.LC4@l(30)
	b .L398
.LBE4874:
.LBE4873:
.LBE4872:
.LBE4871:
.LBE4877:
.LBE4880:
	.cfi_endproc
.LFE2609:
	.size	_ZN9idWinBool3SetEPKc, .-_ZN9idWinBool3SetEPKc
	.section	.text._ZN9idWinBool4InitEPKcP8idWindow,"axG",@progbits,_ZN9idWinBool4InitEPKcP8idWindow,comdat
	.align 2
	.weak	_ZN9idWinBool4InitEPKcP8idWindow
	.type	_ZN9idWinBool4InitEPKcP8idWindow, @function
_ZN9idWinBool4InitEPKcP8idWindow:
.LFB2604:
	.loc 3 107 0
	.cfi_startproc
.LVL612:
	stwu 1,-16(1)
.LCFI172:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	.loc 3 107 0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN8idWinVar4InitEPKcP8idWindow
.LVL613:
	.loc 3 108 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L403
	.loc 6 4264 0
	lwz 4,8(31)
.LBB4895:
.LBB4896:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L408
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L411
.L405:
.LVL614:
.LBE4896:
.LBE4895:
.LBB4908:
.LBB4909:
.LBB4910:
.LBB4911:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL615:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L410
.LVL616:
.LBB4912:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL617:
.L407:
.LBE4912:
.LBE4911:
.LBE4910:
	.loc 10 257 0
	bl atoi
	cntlzw 3,3
	srwi 3,3,5
	xori 3,3,1
.LBE4909:
.LBE4908:
	.loc 3 109 0
	stb 3,13(31)
.LVL618:
.L403:
	.loc 3 111 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL619:
	addi 1,1,16
	.cfi_remember_state
.LCFI173:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL620:
.L411:
.LCFI174:
	.cfi_restore_state
.LBB4916:
.LBB4906:
.LBB4897:
.LBB4898:
.LBB4899:
.LBB4900:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL621:
	bl _ZNK6idDict7FindKeyEPKc
.LVL622:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L412
.LVL623:
.L408:
.LBE4900:
.LBE4899:
.LBE4898:
.LBE4897:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L405
.LVL624:
.L410:
.LBE4906:
.LBE4916:
.LBB4917:
.LBB4915:
.LBB4914:
.LBB4913:
	.loc 10 245 0
	lis 3,.LC9@ha
.LVL625:
	la 3,.LC9@l(3)
	b .L407
.LVL626:
.L412:
.LBE4913:
.LBE4914:
.LBE4915:
.LBE4917:
.LBB4918:
.LBB4907:
.LBB4905:
.LBB4904:
.LBB4903:
.LBB4902:
.LBB4901:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L405
.LBE4901:
.LBE4902:
.LBE4903:
.LBE4904:
.LBE4905:
.LBE4907:
.LBE4918:
	.cfi_endproc
.LFE2604:
	.size	_ZN9idWinBool4InitEPKcP8idWindow, .-_ZN9idWinBool4InitEPKcP8idWindow
	.section	.text._ZN15idWinBackground4InitEPKcP8idWindow,"axG",@progbits,_ZN15idWinBackground4InitEPKcP8idWindow,comdat
	.align 2
	.weak	_ZN15idWinBackground4InitEPKcP8idWindow
	.type	_ZN15idWinBackground4InitEPKcP8idWindow, @function
_ZN15idWinBackground4InitEPKcP8idWindow:
.LFB2769:
	.loc 3 726 0
	.cfi_startproc
.LVL627:
	stwu 1,-24(1)
.LCFI175:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL628:
	stw 30,16(1)
	stw 0,28(1)
	stw 29,12(1)
.LBB4945:
.LBB4946:
	.loc 3 165 0
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN8idWinVar4InitEPKcP8idWindow
.LVL629:
	.loc 3 166 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L413
.LBE4946:
	.loc 6 4264 0
	lwz 4,8(31)
.LBB4967:
	.loc 3 167 0
	addi 29,31,16
.LVL630:
.LBB4947:
.LBB4948:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L421
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L427
.L415:
.LVL631:
.LBE4948:
.LBE4947:
.LBB4960:
.LBB4961:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL632:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L423
.LVL633:
.LBB4962:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL634:
.L417:
.LBE4962:
.LBE4961:
.LBE4960:
	.loc 3 167 0
	mr 3,29
.LVL635:
	bl _ZN5idStraSEPKc
	lwz 30,4(31)
.LVL636:
.LBE4967:
.LBE4945:
	.loc 3 728 0
	cmpwi 7,30,0
	beq- 7,.L413
	.loc 6 4264 0
	lwz 4,8(31)
	.loc 3 729 0
	addi 31,31,48
.LVL637:
.LBB4971:
.LBB4972:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L424
.LVL638:
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L428
.L418:
.LVL639:
.LBE4972:
.LBE4971:
.LBB4984:
.LBB4985:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL640:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L426
.LVL641:
.LBB4986:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL642:
.L420:
.LBE4986:
.LBE4985:
.LBE4984:
	.loc 3 729 0
	mr 3,31
.LVL643:
	bl _ZN5idStraSEPKc
.LVL644:
.L413:
	.loc 3 731 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI176:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL645:
.L427:
.LCFI177:
	.cfi_restore_state
.LBB4988:
.LBB4968:
.LBB4964:
.LBB4958:
.LBB4949:
.LBB4950:
.LBB4951:
.LBB4952:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL646:
	bl _ZNK6idDict7FindKeyEPKc
.LVL647:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L429
.LVL648:
.L421:
.LBE4952:
.LBE4951:
.LBE4950:
.LBE4949:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L415
.LVL649:
.L428:
.LBE4958:
.LBE4964:
.LBE4968:
.LBE4988:
.LBB4989:
.LBB4982:
.LBB4973:
.LBB4974:
.LBB4975:
.LBB4976:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL650:
	bl _ZNK6idDict7FindKeyEPKc
.LVL651:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L430
.LVL652:
.L424:
.LBE4976:
.LBE4975:
.LBE4974:
.LBE4973:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L418
.LVL653:
.L426:
.LBE4982:
.LBE4989:
.LBB4990:
.LBB4987:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L420
.LVL654:
.L423:
.LBE4987:
.LBE4990:
.LBB4991:
.LBB4969:
.LBB4965:
.LBB4963:
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L417
.LVL655:
.L430:
.LBE4963:
.LBE4965:
.LBE4969:
.LBE4991:
.LBB4992:
.LBB4983:
.LBB4981:
.LBB4980:
.LBB4979:
.LBB4978:
.LBB4977:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L418
.LVL656:
.L429:
.LBE4977:
.LBE4978:
.LBE4979:
.LBE4980:
.LBE4981:
.LBE4983:
.LBE4992:
.LBB4993:
.LBB4970:
.LBB4966:
.LBB4959:
.LBB4957:
.LBB4956:
.LBB4955:
.LBB4954:
.LBB4953:
	lwz 9,4(3)
	lwz 4,4(9)
	b .L415
.LBE4953:
.LBE4954:
.LBE4955:
.LBE4956:
.LBE4957:
.LBE4959:
.LBE4966:
.LBE4970:
.LBE4993:
	.cfi_endproc
.LFE2769:
	.size	_ZN15idWinBackground4InitEPKcP8idWindow, .-_ZN15idWinBackground4InitEPKcP8idWindow
	.section	.text._ZN15idWinBackground3SetEPKc,"axG",@progbits,_ZN15idWinBackground3SetEPKc,comdat
	.align 2
	.weak	_ZN15idWinBackground3SetEPKc
	.type	_ZN15idWinBackground3SetEPKc, @function
_ZN15idWinBackground3SetEPKc:
.LFB2778:
	.loc 3 781 0
	.cfi_startproc
.LVL657:
	stwu 1,-16(1)
.LCFI178:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 3 782 0
	addi 3,3,48
.LVL658:
	.loc 3 781 0
	stw 30,8(1)
	stw 0,20(1)
	.loc 3 782 0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN5idStraSEPKc
.LVL659:
	.loc 3 783 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L432
	.loc 6 4264 0
	lwz 4,8(31)
.LBB5009:
.LBB5010:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L437
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L439
.L433:
.LVL660:
.LBE5010:
.LBE5009:
	.loc 3 784 0
	lwz 5,52(31)
	mr 3,30
	bl _ZN6idDict3SetEPKcS1_
.LVL661:
.L432:
	.loc 3 786 0
	lwz 0,80(31)
	cmpwi 7,0,0
	beq- 7,.L431
.LVL662:
.LBB5017:
.LBB5018:
	.loc 4 653 0
	lwz 3,52(31)
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE5018:
.LBE5017:
	.loc 3 787 0
	cmpwi 0,3,0
	bne- 0,.L436
	.loc 3 788 0
	lwz 9,80(31)
	stw 3,0(9)
.LVL663:
.L431:
	.loc 3 793 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL664:
	addi 1,1,16
	.cfi_remember_state
.LCFI179:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL665:
.L436:
.LCFI180:
	.cfi_restore_state
.LBB5019:
.LBB5020:
	.loc 3 790 0
	lis 9,declManager@ha
	lwz 4,52(31)
	lwz 3,declManager@l(9)
.LVL666:
	li 5,1
	li 6,0
	lwz 31,80(31)
.LVL667:
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	stw 3,0(31)
.LBE5020:
.LBE5019:
	.loc 3 793 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI181:
	.cfi_def_cfa_offset 0
	blr
.LVL668:
.L437:
.LCFI182:
	.cfi_restore_state
.LBB5021:
.LBB5016:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L433
.L439:
.LVL669:
.LBB5011:
.LBB5012:
.LBB5013:
.LBB5014:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL670:
	bl _ZNK6idDict7FindKeyEPKc
.LVL671:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L437
.LVL672:
.LBB5015:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L433
.LBE5015:
.LBE5014:
.LBE5013:
.LBE5012:
.LBE5011:
.LBE5016:
.LBE5021:
	.cfi_endproc
.LFE2778:
	.size	_ZN15idWinBackground3SetEPKc, .-_ZN15idWinBackground3SetEPKc
	.section	".text"
	.align 2
	.globl _ZN8idWindow4DrawEiff
	.type	_ZN8idWindow4DrawEiff, @function
_ZN8idWindow4DrawEiff:
.LFB2903:
	.loc 6 348 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2903
.LVL673:
	mflr 0
	stwu 1,-216(1)
.LCFI183:
	.cfi_def_cfa_offset 216
	.cfi_register 65, 0
	stw 31,196(1)
	mr 31,3
	.cfi_offset 31, -20
.LVL674:
	stw 0,220(1)
	stfd 30,200(1)
	stfd 31,208(1)
	stw 22,160(1)
	stw 23,164(1)
	stw 24,168(1)
	stw 25,172(1)
	stw 26,176(1)
	stw 27,180(1)
	stw 28,184(1)
	stw 29,188(1)
	stw 30,192(1)
.LBB5094:
.LBB5095:
.LBB5096:
	.loc 3 201 0
	lwz 30,496(3)
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 24, -48
	.cfi_offset 23, -52
	.cfi_offset 22, -56
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	cmpwi 7,30,0
	beq- 7,.L441
.LVL675:
	lwz 4,500(3)
.LVL676:
	cmpwi 7,4,0
	beq- 7,.L441
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L459
.LVL677:
.L441:
.LBE5096:
	.loc 6 4264 0
	lwz 28,508(31)
.LBE5095:
	.loc 6 349 0
	cmpwi 7,28,0
	beq- 7,.L440
.LBB5115:
	.loc 6 352 0
	lbz 0,208(31)
	addi 29,1,104
	addi 30,1,120
	andi. 9,0,0xff
	beq- 0,.L446
.LVL678:
.LBB5116:
.LBB5117:
.LBB5118:
	.loc 4 374 0
	addi 4,28,1
.LBB5119:
.LBB5120:
	.loc 4 356 0
	li 0,0
.LBE5120:
.LBE5119:
.LBB5122:
.LBB5123:
	.loc 4 350 0
	cmpwi 7,4,20
.LBE5123:
.LBE5122:
.LBB5126:
.LBB5121:
	.loc 4 358 0
	addi 3,1,76
	.loc 4 357 0
	li 9,20
	.loc 4 356 0
	stw 0,64(1)
	.loc 4 357 0
	stw 9,72(1)
	.loc 4 358 0
	stw 3,68(1)
	.loc 4 359 0
	stb 0,76(1)
.LVL679:
.LBE5121:
.LBE5126:
.LBB5127:
.LBB5124:
	.loc 4 350 0
	bgt- 7,.L460
.LVL680:
.L447:
.LBE5124:
.LBE5127:
	.loc 4 375 0
	lwz 4,512(31)
	bl strcpy
.LBE5118:
.LBE5117:
	.loc 6 354 0
	lwz 10,656(31)
	lwz 11,660(31)
	lwz 9,664(31)
	lwz 0,668(31)
.LBB5131:
.LBB5132:
	.loc 4 871 0
	lwz 3,68(1)
.LBE5132:
.LBE5131:
.LBB5137:
.LBB5129:
	.loc 4 376 0
	stw 28,64(1)
.LBE5129:
.LBE5137:
	.loc 6 354 0
	stw 10,48(1)
	stw 11,52(1)
	stw 9,56(1)
	stw 0,60(1)
	lfs 30,656(31)
.LVL681:
	lfs 31,660(31)
.LVL682:
.LEHB16:
.LBB5138:
.LBB5135:
	.loc 4 871 0
	bl _ZN5idStr12RemoveColorsEPc
.LVL683:
	.loc 4 872 0
	lwz 4,68(1)
.LVL684:
.LBB5133:
.LBB5134:
	.loc 4 952 0
	li 11,0
	lbz 0,0(4)
	cmpwi 7,0,0
	beq- 7,.L448
.LVL685:
.L449:
	addi 11,11,1
.LVL686:
	lbzx 0,4,11
	cmpwi 7,0,0
	bne+ 7,.L449
.LVL687:
.L448:
.LBE5134:
.LBE5133:
.LBE5135:
.LBE5138:
	.loc 6 357 0
	lbz 0,208(31)
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	.loc 6 360 0
	lis 10,colorBlack@ha
	.loc 6 357 0
	extsb 0,0
.LBB5139:
.LBB5136:
	.loc 4 872 0
	stw 11,64(1)
.LBE5136:
.LBE5139:
	.loc 6 357 0
	xoris 0,0,0x8000
	.loc 6 360 0
	lwz 25,colorBlack@l(10)
	.loc 6 357 0
	stw 0,100(1)
	lis 0,0x4330
	stw 0,96(1)
	.loc 6 360 0
	addi 29,1,104
	addi 30,1,120
	mr 6,29
	.loc 6 357 0
	lfd 13,96(1)
	.loc 6 360 0
	mr 7,30
	lwz 0,48(31)
	.loc 6 357 0
	fsub 0,13,0
	.loc 6 360 0
	lbz 5,211(31)
	andi. 9,0,32768
	la 9,colorBlack@l(10)
	lwz 26,4(9)
	li 0,0
	.loc 6 357 0
	frsp 0,0
.LVL688:
	.loc 6 360 0
	lwz 27,8(9)
	lwz 28,12(9)
	mfcr 8
	rlwinm 8,8,3,1
	.loc 6 4264 0
	lfs 1,468(31)
	.loc 6 360 0
	extsb 5,5
	.loc 6 357 0
	fadds 30,0,30
.LVL689:
	.loc 6 360 0
	lwz 3,728(31)
.LVL690:
	.loc 6 358 0
	fadds 31,0,31
.LVL691:
	.loc 6 360 0
	li 9,-1
	li 10,0
	stw 25,104(1)
	stfs 30,48(1)
	stfs 31,52(1)
	lwz 11,48(1)
	stw 26,108(1)
	stw 11,120(1)
	lwz 11,52(1)
	stw 27,112(1)
	stw 11,124(1)
	lwz 11,56(1)
	stw 28,116(1)
	stw 11,128(1)
	lwz 11,60(1)
	stw 0,8(1)
	stw 11,132(1)
	stw 0,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
.LEHE16:
.LVL692:
.LBB5140:
.LBB5141:
.LBB5142:
	.loc 4 501 0
	addi 3,1,64
.LEHB17:
	bl _ZN5idStr8FreeDataEv
.LVL693:
.L446:
.LBE5142:
.LBE5141:
.LBE5140:
.LBE5116:
.LBE5115:
	.loc 6 362 0
	lwz 0,48(31)
	li 28,0
	lbz 5,211(31)
	mr 6,29
	andi. 9,0,32768
	lfs 1,468(31)
	lwz 0,668(31)
	li 9,-1
	lwz 3,728(31)
	mfcr 8
	rlwinm 8,8,3,1
	lwz 4,512(31)
	extsb 5,5
	lwz 23,372(31)
	mr 7,30
	lwz 24,376(31)
	li 10,0
	lwz 25,380(31)
	lwz 26,384(31)
	lwz 12,656(31)
	lwz 27,660(31)
	lwz 11,664(31)
	stw 0,132(1)
	stw 23,104(1)
	stw 24,108(1)
	stw 25,112(1)
	stw 26,116(1)
	stw 12,120(1)
	stw 27,124(1)
	stw 11,128(1)
	stw 28,8(1)
	stw 28,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
.LBB5149:
.LBB5150:
	.loc 6 364 0
	lis 9,.LANCHOR0+44@ha
	.loc 2 142 0
	lwz 9,.LANCHOR0+44@l(9)
.LBE5150:
.LBE5149:
	.loc 6 364 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L461
.LVL694:
.L440:
.LBE5094:
	.loc 6 371 0
	lwz 0,220(1)
	lwz 22,160(1)
	mtlr 0
	lwz 23,164(1)
	lwz 24,168(1)
	lwz 25,172(1)
	lwz 26,176(1)
	lwz 27,180(1)
	lwz 28,184(1)
	lwz 29,188(1)
	lwz 30,192(1)
	lwz 31,196(1)
.LVL695:
	lfd 30,200(1)
	lfd 31,208(1)
	addi 1,1,216
	.cfi_remember_state
.LCFI184:
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
.LVL696:
.L461:
.LCFI185:
	.cfi_restore_state
.LBB5179:
	.loc 6 365 0
	lwz 9,728(31)
.LVL697:
	.loc 6 366 0
	lis 3,.LC12@ha
	la 3,.LC12@l(3)
	lis 26,_ZN15idDeviceContext10colorWhiteE@ha
.LBB5151:
.LBB5152:
	.file 11 "d:/Data/Nintendo/DoomGX/src/ui/DeviceContext.h"
	.loc 11 90 0
	stb 28,148(9)
.LBE5152:
.LBE5151:
	.loc 6 366 0
	addi 9,1,136
	la 27,_ZN15idDeviceContext10colorWhiteE@l(26)
	lfs 13,276(31)
	lfs 0,280(31)
	fctiwz 13,13
	fctiwz 0,0
	stfiwx 13,0,9
	addi 9,1,140
	stfiwx 0,0,9
	lwz 4,136(1)
	lwz 5,140(1)
	lwz 22,728(31)
.LVL698:
	crxor 6,6,6
	bl _Z2vaPKcz
	lis 9,.LC13@ha
	lfs 13,280(31)
	mr 6,29
	lfs 0,.LC13@l(9)
	lis 9,.LC16@ha
.LBB5153:
.LBB5154:
	.file 12 "d:/Data/Nintendo/DoomGX/src/ui/Rectangle.h"
	.loc 12 41 0
	lwz 0,276(31)
.LBE5154:
.LBE5153:
	.loc 6 366 0
	mr 7,30
	fsubs 0,13,0
	lwz 11,8(27)
.LBB5160:
.LBB5155:
	.loc 12 41 0
	stw 0,32(1)
.LBE5155:
.LBE5160:
	.loc 6 366 0
	mr 4,3
.LVL699:
	lwz 0,12(27)
	li 8,0
	lwz 23,4(27)
	li 10,0
.LBB5161:
.LBB5156:
	.loc 12 41 0
	stfs 0,36(1)
.LBE5156:
.LBE5161:
	.loc 6 366 0
	li 5,0
	stw 0,116(1)
	mr 3,22
	lwz 0,32(1)
	lfs 31,.LC16@l(9)
.LBB5162:
.LBB5157:
	.loc 12 41 0
	lis 9,.LC14@ha
.LBE5157:
.LBE5162:
	.loc 6 366 0
	stw 0,120(1)
	lwz 0,36(1)
	fmr 1,31
.LBB5163:
.LBB5158:
	.loc 12 41 0
	lwz 24,.LC14@l(9)
	lis 9,.LC15@ha
	lwz 25,.LC15@l(9)
.LBE5158:
.LBE5163:
	.loc 6 366 0
	li 9,-1
	lwz 12,_ZN15idDeviceContext10colorWhiteE@l(26)
	stw 0,124(1)
	lis 0,0x42c8
	stw 0,128(1)
	lis 0,0x41a0
	stw 12,104(1)
	stw 11,112(1)
	stw 0,132(1)
.LBB5164:
.LBB5159:
	.loc 12 41 0
	stw 24,40(1)
	stw 25,44(1)
.LBE5159:
.LBE5164:
	.loc 6 366 0
	stw 23,108(1)
	stw 28,8(1)
	stw 28,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
.LVL700:
	.loc 6 367 0
	lfs 13,284(31)
	addi 9,1,144
	lfs 0,288(31)
	lis 3,.LC17@ha
	fctiwz 13,13
	la 3,.LC17@l(3)
	fctiwz 0,0
	stfiwx 13,0,9
	addi 9,1,148
	stfiwx 0,0,9
	lwz 4,144(1)
	lwz 5,148(1)
	lwz 22,728(31)
	crxor 6,6,6
	bl _Z2vaPKcz
	.loc 6 4264 0
	lfs 0,284(31)
	.loc 6 367 0
	lfs 13,288(31)
	lis 9,.LC18@ha
	lfs 12,276(31)
	fmr 1,31
	fadds 13,0,13
	lfs 11,.LC18@l(9)
	fadds 0,0,12
	lwz 0,12(27)
	lwz 11,8(27)
	mr 4,3
.LVL701:
	fadds 13,13,11
.LVL702:
	lwz 23,_ZN15idDeviceContext10colorWhiteE@l(26)
.LBB5165:
.LBB5166:
	.loc 12 41 0
	stfs 0,16(1)
.LBE5166:
.LBE5165:
	.loc 6 367 0
	mr 3,22
	lwz 26,4(27)
	mr 6,29
.LBB5170:
.LBB5167:
	.loc 12 41 0
	stfs 13,20(1)
.LBE5167:
.LBE5170:
	.loc 6 367 0
	mr 7,30
	stw 0,116(1)
	li 9,-1
	lwz 0,16(1)
	li 5,0
	li 8,0
	li 10,0
	stw 0,120(1)
	lwz 0,20(1)
.LBB5171:
.LBB5168:
	.loc 12 41 0
	stw 24,24(1)
.LBE5168:
.LBE5171:
	.loc 6 367 0
	stw 0,124(1)
	lis 0,0x42c8
	stw 0,128(1)
	lis 0,0x41a0
.LBB5172:
.LBB5169:
	.loc 12 41 0
	stw 25,28(1)
.LBE5169:
.LBE5172:
	.loc 6 367 0
	stw 23,104(1)
	stw 26,108(1)
	stw 0,132(1)
	stw 28,8(1)
	stw 28,12(1)
	stw 11,112(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
.LVL703:
	.loc 6 368 0
	lwz 9,728(31)
.LVL704:
.LBB5173:
.LBB5174:
	.loc 11 90 0
	li 0,1
	stb 0,148(9)
.LBE5174:
.LBE5173:
.LBE5179:
	.loc 6 371 0
	lwz 0,220(1)
	lwz 22,160(1)
	mtlr 0
	lwz 23,164(1)
	lwz 24,168(1)
	lwz 25,172(1)
	lwz 26,176(1)
	lwz 27,180(1)
	lwz 28,184(1)
	lwz 29,188(1)
	lwz 30,192(1)
	lwz 31,196(1)
.LVL705:
	lfd 30,200(1)
	lfd 31,208(1)
	addi 1,1,216
	.cfi_remember_state
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
	.cfi_restore 62
	.cfi_restore 63
.LCFI186:
	.cfi_def_cfa_offset 0
	blr
.LVL706:
.L459:
.LCFI187:
	.cfi_restore_state
.LBB5180:
.LBB5175:
.LBB5113:
.LBB5097:
.LBB5098:
	.loc 3 54 0
	cmpwi 7,0,42
.LBE5098:
.LBE5097:
	.loc 3 202 0
	addi 29,3,508
.LBB5106:
.LBB5104:
	.loc 3 54 0
	beq- 7,.L462
.LVL707:
.L442:
.LBE5104:
.LBE5106:
.LBB5107:
.LBB5108:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL708:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L453
.LVL709:
.LBB5109:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL710:
.L444:
.LBE5109:
.LBE5108:
.LBE5107:
	.loc 3 202 0
	mr 3,29
.LVL711:
	bl _ZN5idStraSEPKc
	b .L441
.LVL712:
.L460:
.LBE5113:
.LBE5175:
.LBB5176:
.LBB5147:
.LBB5143:
.LBB5130:
.LBB5128:
.LBB5125:
	.loc 4 351 0
	addi 3,1,64
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL713:
	lwz 3,68(1)
	b .L447
.LVL714:
.L453:
.LBE5125:
.LBE5128:
.LBE5130:
.LBE5143:
.LBE5147:
.LBE5176:
.LBB5177:
.LBB5114:
.LBB5111:
.LBB5110:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L444
.LVL715:
.L462:
.LBE5110:
.LBE5111:
.LBB5112:
.LBB5105:
.LBB5099:
.LBB5100:
.LBB5101:
.LBB5102:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL716:
	bl _ZNK6idDict7FindKeyEPKc
.LEHE17:
.LVL717:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L452
.LVL718:
.LBB5103:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L442
.LVL719:
.L452:
.LBE5103:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L442
.LVL720:
.L456:
	mr 31,3
.LVL721:
.LBE5102:
.LBE5101:
.LBE5100:
.LBE5099:
.LBE5105:
.LBE5112:
.LBE5114:
.LBE5177:
.LBB5178:
.LBB5148:
.LBB5144:
.LBB5145:
.LBB5146:
	.loc 4 501 0
	addi 3,1,64
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB18:
	bl _Unwind_Resume
.LEHE18:
.LBE5146:
.LBE5145:
.LBE5144:
.LBE5148:
.LBE5178:
.LBE5180:
	.cfi_endproc
.LFE2903:
	.section	.gcc_except_table
.LLSDA2903:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2903-.LLSDACSB2903
.LLSDACSB2903:
	.uleb128 .LEHB16-.LFB2903
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L456-.LFB2903
	.uleb128 0
	.uleb128 .LEHB17-.LFB2903
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB2903
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE2903:
	.section	".text"
	.size	_ZN8idWindow4DrawEiff, .-_ZN8idWindow4DrawEiff
	.section	.text._ZN5idStraSERKS_,"axG",@progbits,_ZN5idStraSERKS_,comdat
	.align 2
	.weak	_ZN5idStraSERKS_
	.type	_ZN5idStraSERKS_, @function
_ZN5idStraSERKS_:
.LFB1631:
	.loc 4 530 0
	.cfi_startproc
.LVL722:
	mflr 0
	stwu 1,-24(1)
.LCFI188:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 30,16(1)
	.loc 6 4264 0
	lwz 30,0(4)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB5189:
.LBB5190:
.LBB5191:
	.loc 4 350 0
	lwz 0,8(3)
.LBE5191:
.LBE5190:
	.loc 4 534 0
	addi 4,30,1
.LVL723:
.LBB5193:
.LBB5192:
	.loc 4 350 0
	cmpw 7,4,0
	ble+ 7,.L464
	.loc 4 351 0
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL724:
.L464:
.LBE5192:
.LBE5193:
	.loc 4 535 0
	lwz 3,4(31)
	mr 5,30
	lwz 4,4(29)
	bl memcpy
	.loc 4 536 0
	lwz 9,4(31)
	li 0,0
	stbx 0,9,30
	.loc 4 537 0
	stw 30,0(31)
.LBE5189:
	.loc 4 538 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL725:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL726:
	addi 1,1,24
.LCFI189:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE1631:
	.size	_ZN5idStraSERKS_, .-_ZN5idStraSERKS_
	.section	.text._ZN6idCVarC2EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE,"axG",@progbits,_ZN6idCVarC5EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE,comdat
	.align 2
	.weak	_ZN6idCVarC2EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE
	.type	_ZN6idCVarC2EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE, @function
_ZN6idCVarC2EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE:
.LFB2202:
	.loc 2 181 0
	.cfi_startproc
.LVL727:
	mflr 0
.LBB5202:
	.loc 2 183 0
	cmpwi 0,8,0
.LBE5202:
	.loc 2 181 0
	stwu 1,-8(1)
.LCFI190:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB5205:
	.loc 2 182 0
	lis 9,_ZTV6idCVar+8@ha
.LBE5205:
	.loc 2 181 0
	stw 0,12(1)
.LBB5206:
	.loc 2 182 0
	la 0,_ZTV6idCVar+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	.loc 2 183 0
	beq- 0,.L469
.LVL728:
.L466:
.LBB5203:
.LBB5204:
	.loc 2 292 0
	lis 9,_ZN6idCVar10staticVarsE@ha
	.loc 2 285 0
	lis 10,.LC0@ha
	.loc 2 292 0
	lwz 11,_ZN6idCVar10staticVarsE@l(9)
	.loc 2 287 0
	li 0,0
	.loc 2 285 0
	lwz 10,.LC0@l(10)
	.loc 2 284 0
	ori 6,6,4096
.LVL729:
	.loc 2 292 0
	cmpwi 7,11,-1
	.loc 2 287 0
	stw 0,28(3)
	.loc 2 285 0
	stw 10,20(3)
	.loc 2 286 0
	lis 10,.LC19@ha
	lwz 10,.LC19@l(10)
	.loc 2 289 0
	stw 0,36(3)
	.loc 2 290 0
	li 0,0
	.loc 2 280 0
	stw 4,4(3)
	.loc 2 281 0
	stw 5,8(3)
	.loc 2 283 0
	stw 7,12(3)
	.loc 2 284 0
	stw 6,16(3)
	.loc 2 286 0
	stw 10,24(3)
	.loc 2 288 0
	stw 8,32(3)
	.loc 2 290 0
	stw 0,40(3)
	.loc 2 291 0
	stw 3,44(3)
	.loc 2 292 0
	beq- 7,.L467
.LVL730:
	.loc 2 293 0
	stw 11,48(3)
	.loc 2 294 0
	stw 3,_ZN6idCVar10staticVarsE@l(9)
.LBE5204:
.LBE5203:
.LBE5206:
	.loc 2 187 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI191:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL731:
.L469:
.LCFI192:
	.cfi_restore_state
.LBB5207:
	.loc 2 183 0 discriminator 1
	andi. 0,6,1
	beq- 0,.L466
	.loc 2 184 0
	lis 8,_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE@ha
.LVL732:
	la 8,_ZN11idCmdSystem21ArgCompletion_BooleanERK9idCmdArgsPFvPKcE@l(8)
	b .L466
.LVL733:
.L467:
.LBE5207:
.LBB5208:
.LBB5209:
.LBB5210:
.LBB5211:
	.loc 2 296 0
	lis 9,cvarSystem@ha
	mr 4,3
.LVL734:
	lwz 11,cvarSystem@l(9)
	lwz 9,0(11)
	mr 3,11
.LVL735:
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL736:
.LBE5211:
.LBE5210:
.LBE5209:
.LBE5208:
	.loc 2 187 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI193:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2202:
	.size	_ZN6idCVarC2EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE, .-_ZN6idCVarC2EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE
	.section	".text"
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.102, @function
_Z41__static_initialization_and_destruction_0ii.constprop.102:
.LFB3494:
	.loc 6 4264 0
	.cfi_startproc
.LVL737:
	cmpwi 7,3,1
	mflr 0
	stwu 1,-24(1)
.LCFI194:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 6 4264 0
	beq- 7,.L475
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 6 57 0
	cmpwi 7,3,0
	bne- 7,.L470
.LVL738:
.LBB5222:
.LBB5223:
.LBB5224:
.LBB5225:
.LBB5226:
	.loc 2 127 0
	lis 9,.LANCHOR0@ha
	lis 11,_ZTV6idCVar+8@ha
	la 0,_ZTV6idCVar+8@l(11)
	la 11,.LANCHOR0@l(9)
	stw 0,.LANCHOR0@l(9)
.LVL739:
.LBE5226:
.LBE5225:
.LBE5224:
.LBB5227:
.LBB5228:
.LBB5229:
	stw 0,56(11)
.LVL740:
.L470:
.LBE5229:
.LBE5228:
.LBE5227:
.LBE5223:
.LBE5222:
	.loc 6 4264 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI195:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL741:
.L475:
.LCFI196:
	.cfi_restore_state
	.loc 3 36 0
	lis 31,.LANCHOR0@ha
	li 0,5
	la 31,.LANCHOR0@l(31)
	.loc 6 56 0
	lis 29,.LC9@ha
	lis 30,.LC4@ha
	la 29,.LC9@l(29)
	la 30,.LC4@l(30)
	.loc 3 36 0
	stw 0,52(31)
	.loc 6 56 0
	lis 4,.LC20@ha
	addi 3,31,56
.LVL742:
	mr 5,29
	mr 7,30
	la 4,.LC20@l(4)
	li 6,65
	li 8,0
	bl _ZN6idCVarC1EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE
	.loc 6 57 0
	lis 4,.LC21@ha
	mr 3,31
	la 4,.LC21@l(4)
	mr 5,29
	li 6,65
	mr 7,30
	li 8,0
	bl _ZN6idCVarC1EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE
	b .L470
	.cfi_endproc
.LFE3494:
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.102, .-_Z41__static_initialization_and_destruction_0ii.constprop.102
	.section	.text._ZN8idWinStraSERK5idStr,"axG",@progbits,_ZN8idWinStraSERK5idStr,comdat
	.align 2
	.weak	_ZN8idWinStraSERK5idStr
	.type	_ZN8idWinStraSERK5idStr, @function
_ZN8idWinStraSERK5idStr:
.LFB2625:
	.loc 3 176 0
	.cfi_startproc
.LVL743:
	mflr 0
	stwu 1,-24(1)
.LCFI197:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	.loc 3 177 0
	addi 28,3,16
	.cfi_offset 28, -16
.LVL744:
	.loc 3 176 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
.LVL745:
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 30,16(1)
.LBB5247:
	.loc 6 4264 0
	lwz 30,0(4)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB5248:
.LBB5249:
.LBB5250:
	.loc 4 350 0
	lwz 0,24(3)
.LBE5250:
.LBE5249:
	.loc 4 534 0
	addi 4,30,1
.LVL746:
.LBB5252:
.LBB5251:
	.loc 4 350 0
	cmpw 7,4,0
	ble+ 7,.L477
	.loc 4 351 0
	mr 3,28
.LVL747:
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL748:
.L477:
.LBE5251:
.LBE5252:
	.loc 4 535 0
	lwz 3,20(31)
	mr 5,30
	lwz 4,4(29)
	bl memcpy
	.loc 4 536 0
	lwz 9,20(31)
	li 0,0
	stbx 0,9,30
	.loc 4 537 0
	stw 30,16(31)
.LBE5248:
.LBE5247:
	.loc 3 178 0
	lwz 30,4(31)
	cmpwi 7,30,0
	beq- 7,.L478
	.loc 6 4264 0
	lwz 4,8(31)
.LBB5253:
.LBB5254:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L481
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L483
.L479:
.LVL749:
.LBE5254:
.LBE5253:
	.loc 3 179 0
	lwz 5,20(31)
	mr 3,30
	bl _ZN6idDict3SetEPKcS1_
.LVL750:
.L478:
	.loc 3 182 0
	lwz 0,28(1)
	mr 3,28
	lwz 29,12(1)
.LVL751:
	mtlr 0
	lwz 28,8(1)
.LVL752:
	lwz 30,16(1)
	lwz 31,20(1)
.LVL753:
	addi 1,1,24
	.cfi_remember_state
.LCFI198:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL754:
.L483:
.LCFI199:
	.cfi_restore_state
.LBB5265:
.LBB5264:
.LBB5255:
.LBB5256:
.LBB5257:
.LBB5258:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL755:
	bl _ZNK6idDict7FindKeyEPKc
.LVL756:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L484
.LVL757:
.L481:
.LBE5258:
.LBE5257:
.LBE5256:
.LBE5255:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L479
.LVL758:
.L484:
.LBB5263:
.LBB5262:
.LBB5261:
.LBB5260:
.LBB5259:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L479
.LBE5259:
.LBE5260:
.LBE5261:
.LBE5262:
.LBE5263:
.LBE5264:
.LBE5265:
	.cfi_endproc
.LFE2625:
	.size	_ZN8idWinStraSERK5idStr, .-_ZN8idWinStraSERK5idStr
	.section	".text"
	.align 2
	.globl _ZN8idWindow10CommonInitEv
	.type	_ZN8idWindow10CommonInitEv, @function
_ZN8idWindow10CommonInitEv:
.LFB2877:
	.loc 6 112 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2877
.LVL759:
	mflr 0
	stwu 1,-72(1)
.LCFI200:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
.LBB5448:
	.loc 6 118 0
	li 10,-1
.LBB5449:
.LBB5450:
	.file 13 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Vector.h"
	.loc 13 120 0
	li 9,0
.LBE5450:
.LBE5449:
.LBE5448:
	.loc 6 112 0
	stw 29,60(1)
.LBB5847:
	.loc 6 123 0
	lis 29,.LC0@ha
	.cfi_offset 29, -12
.LBE5847:
	.loc 6 112 0
	stw 0,76(1)
.LBB5848:
	.loc 6 113 0
	li 0,0
	.cfi_offset 65, 4
.LBE5848:
	.loc 6 112 0
	stw 30,64(1)
	lis 30,.LC4@ha
	.cfi_offset 30, -8
	stw 31,68(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 27,52(1)
	stw 28,56(1)
.LBB5849:
	.loc 6 118 0
	stw 10,96(3)
	.loc 6 121 0
	lis 10,.LC23@ha
.LBB5452:
.LBB5453:
	.loc 3 115 0
	lwz 27,216(3)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LBE5453:
.LBE5452:
	.loc 6 121 0
	lwz 10,.LC23@l(10)
.LBB5477:
.LBB5472:
	.loc 3 115 0
	cmpwi 7,27,0
.LBE5472:
.LBE5477:
	.loc 6 123 0
	lwz 11,.LC0@l(29)
	.loc 6 121 0
	stw 10,108(3)
	.loc 6 122 0
	lis 10,.LC24@ha
	lwz 10,.LC24@l(10)
	.loc 6 113 0
	stw 0,44(3)
	.loc 6 114 0
	stw 0,48(3)
	.loc 6 115 0
	stw 0,52(3)
.LVL760:
.LBB5478:
.LBB5451:
	.loc 13 120 0
	stw 9,92(3)
	stw 9,88(3)
.LBE5451:
.LBE5478:
	.loc 6 117 0
	stb 0,209(3)
	.loc 6 119 0
	stw 9,104(3)
	stw 9,100(3)
	.loc 6 120 0
	stb 0,210(3)
	.loc 6 122 0
	stw 10,112(3)
	.loc 6 123 0
	stw 11,116(3)
	.loc 6 124 0
	stw 11,120(3)
	.loc 6 125 0
	stw 9,124(3)
.LVL761:
.LBB5479:
.LBB5473:
	.loc 3 114 0
	stb 0,225(3)
	.loc 3 115 0
	beq- 7,.L486
.LVL762:
.LBE5473:
	.loc 6 4264 0
	lwz 28,220(3)
.LBB5474:
.LBB5454:
.LBB5455:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L529
	.loc 3 54 0
	lbz 0,0(28)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L562
.LVL763:
.L487:
.LBE5455:
.LBE5454:
.LBB5468:
.LBB5469:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
.LEHB19:
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL764:
.L486:
.LBE5469:
.LBE5468:
.LBE5474:
.LBE5479:
.LBB5480:
.LBB5481:
	.loc 3 115 0
	lwz 27,232(31)
	.loc 3 114 0
	li 0,1
	stb 0,241(31)
	.loc 3 115 0
	cmpwi 7,27,0
	beq- 7,.L489
.LBE5481:
	.loc 6 4264 0
	lwz 28,236(31)
.LBB5502:
.LBB5482:
.LBB5483:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L532
	.loc 3 54 0
	lbz 0,0(28)
	li 4,1
	cmpwi 7,0,42
	beq- 7,.L563
.L490:
.LVL765:
.LBE5483:
.LBE5482:
.LBB5497:
.LBB5498:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL766:
.L489:
.LBE5498:
.LBE5497:
.LBE5502:
.LBE5480:
.LBB5506:
.LBB5507:
	.loc 3 115 0
	lwz 27,248(31)
.LBE5507:
.LBE5506:
	.loc 6 128 0
	li 0,0
	.loc 6 129 0
	li 9,0
	.loc 6 128 0
	stb 0,211(31)
.LBB5534:
.LBB5528:
	.loc 3 115 0
	cmpwi 7,27,0
.LBE5528:
.LBE5534:
	.loc 6 129 0
	stw 9,128(31)
	.loc 6 130 0
	stw 9,132(31)
.LVL767:
.LBB5535:
.LBB5529:
	.loc 3 114 0
	stb 0,257(31)
	.loc 3 115 0
	beq- 7,.L492
.LBE5529:
	.loc 6 4264 0
	lwz 28,252(31)
.LBB5530:
.LBB5508:
.LBB5509:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L535
	.loc 3 54 0
	lbz 0,0(28)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L564
.L493:
.LVL768:
.LBE5509:
.LBE5508:
.LBB5523:
.LBB5524:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL769:
.L492:
.LBE5524:
.LBE5523:
.LBE5530:
.LBE5535:
.LBB5536:
.LBB5537:
	.loc 3 339 0
	lwz 28,476(31)
	.loc 3 338 0
	li 0,0
	stw 0,488(31)
	.loc 3 339 0
	cmpwi 7,28,0
	beq- 7,.L495
.LBE5537:
	.loc 6 4264 0
	lwz 27,480(31)
.LBB5558:
.LBB5538:
.LBB5539:
	.loc 3 53 0
	cmpwi 7,27,0
	beq- 7,.L538
	.loc 3 54 0
	lbz 9,0(27)
	stw 0,40(1)
	cmpwi 7,9,42
	lfs 1,40(1)
	beq- 7,.L565
.L496:
.LVL770:
.LBE5539:
.LBE5538:
.LBB5553:
.LBB5554:
	.loc 10 189 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL771:
	mr 4,27
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL772:
.L495:
.LBE5554:
.LBE5553:
.LBE5558:
.LBE5536:
.LBB5562:
.LBB5563:
	.loc 3 339 0
	lwz 28,456(31)
	.loc 3 338 0
	lis 9,.LC22@ha
	lwz 9,.LC22@l(9)
.LBE5563:
.LBE5562:
.LBB5590:
.LBB5591:
	.loc 13 120 0
	li 0,0
.LBE5591:
.LBE5590:
.LBB5593:
.LBB5584:
	.loc 3 339 0
	cmpwi 7,28,0
.LBE5584:
.LBE5593:
.LBB5594:
.LBB5592:
	.loc 13 120 0
	stw 0,204(31)
	stw 0,200(31)
.LVL773:
.LBE5592:
.LBE5594:
.LBB5595:
.LBB5585:
	.loc 3 338 0
	stw 9,468(31)
	.loc 3 339 0
	beq- 7,.L498
.LBE5585:
	.loc 6 4264 0
	lwz 27,460(31)
.LBB5586:
.LBB5564:
.LBB5565:
	.loc 3 53 0
	cmpwi 7,27,0
	beq- 7,.L541
	.loc 3 54 0
	lbz 0,0(27)
	stw 9,40(1)
	cmpwi 7,0,42
	lfs 1,40(1)
	beq- 7,.L566
.L499:
.LVL774:
.LBE5565:
.LBE5564:
.LBB5579:
.LBB5580:
	.loc 10 189 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL775:
	mr 4,27
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL776:
.L498:
.LBE5580:
.LBE5579:
.LBE5586:
.LBE5595:
.LBB5596:
.LBB5597:
	.loc 3 621 0
	lwz 27,296(31)
.LBB5598:
.LBB5599:
	.loc 13 881 0
	li 0,0
	stw 0,320(31)
.LBE5599:
.LBE5598:
	.loc 3 621 0
	cmpwi 7,27,0
.LBB5601:
.LBB5600:
	.loc 13 881 0
	stw 0,316(31)
	stw 0,312(31)
	stw 0,308(31)
.LBE5600:
.LBE5601:
	.loc 3 621 0
	beq- 7,.L501
.LBE5597:
	.loc 6 4264 0
	lwz 28,300(31)
.LBB5619:
.LBB5602:
.LBB5603:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L544
	.loc 3 54 0
	lbz 0,0(28)
	cmpwi 7,0,42
	beq- 7,.L567
.L502:
.LVL777:
.LBE5603:
.LBE5602:
.LBB5611:
.LBB5612:
	.loc 10 205 0
	li 4,2
	addi 3,31,308
	bl _ZNK6idVec48ToStringEi
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL778:
.L501:
.LBE5612:
.LBE5611:
.LBE5619:
.LBE5596:
.LBB5624:
.LBB5625:
	.loc 3 575 0
	lwz 27,360(31)
.LBE5625:
.LBE5624:
.LBB5650:
.LBB5620:
.LBB5615:
.LBB5613:
	.loc 3 574 0
	lwz 0,.LC0@l(29)
.LBE5613:
.LBE5615:
.LBE5620:
.LBE5650:
.LBB5651:
.LBB5643:
	.loc 3 575 0
	cmpwi 7,27,0
.LBE5643:
.LBE5651:
.LBB5652:
.LBB5621:
.LBB5616:
.LBB5614:
	.loc 3 574 0
	stw 0,372(31)
	stw 0,376(31)
	stw 0,380(31)
	stw 0,384(31)
.LBE5614:
.LBE5616:
.LBE5621:
.LBE5652:
.LBB5653:
.LBB5644:
	.loc 3 575 0
	beq- 7,.L504
.LBE5644:
	.loc 6 4264 0
	lwz 28,364(31)
.LBB5645:
.LBB5626:
.LBB5627:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L546
	.loc 3 54 0
	lbz 0,0(28)
	cmpwi 7,0,42
	beq- 7,.L568
.L505:
.LVL779:
.LBE5627:
.LBE5626:
.LBB5635:
.LBB5636:
	.loc 10 205 0
	li 4,2
	addi 3,31,372
	bl _ZNK6idVec48ToStringEi
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL780:
.L504:
.LBE5636:
.LBE5635:
.LBE5645:
.LBE5653:
.LBB5654:
.LBB5655:
	.loc 3 575 0
	lwz 27,392(31)
.LBE5655:
.LBE5654:
.LBB5680:
.LBB5646:
.LBB5639:
.LBB5637:
	.loc 3 574 0
	lwz 0,.LC0@l(29)
.LBE5637:
.LBE5639:
.LBE5646:
.LBE5680:
.LBB5681:
.LBB5673:
	.loc 3 575 0
	cmpwi 7,27,0
.LBE5673:
.LBE5681:
.LBB5682:
.LBB5647:
.LBB5640:
.LBB5638:
	.loc 3 574 0
	stw 0,404(31)
	stw 0,408(31)
	stw 0,412(31)
	stw 0,416(31)
.LBE5638:
.LBE5640:
.LBE5647:
.LBE5682:
.LBB5683:
.LBB5674:
	.loc 3 575 0
	beq- 7,.L507
.LBE5674:
	.loc 6 4264 0
	lwz 28,396(31)
.LBB5675:
.LBB5656:
.LBB5657:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L548
	.loc 3 54 0
	lbz 0,0(28)
	cmpwi 7,0,42
	beq- 7,.L569
.L508:
.LVL781:
.LBE5657:
.LBE5656:
.LBB5665:
.LBB5666:
	.loc 10 205 0
	li 4,2
	addi 3,31,404
	bl _ZNK6idVec48ToStringEi
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL782:
.L507:
.LBE5666:
.LBE5665:
.LBE5675:
.LBE5683:
.LBB5684:
.LBB5685:
	.loc 3 575 0
	lwz 28,328(31)
.LBE5685:
.LBE5684:
.LBB5704:
.LBB5676:
.LBB5669:
.LBB5667:
	.loc 3 574 0
	lwz 0,.LC0@l(29)
.LBE5667:
.LBE5669:
.LBE5676:
.LBE5704:
.LBB5705:
.LBB5699:
	.loc 3 575 0
	cmpwi 7,28,0
.LBE5699:
.LBE5705:
.LBB5706:
.LBB5677:
.LBB5670:
.LBB5668:
	.loc 3 574 0
	stw 0,340(31)
	stw 0,344(31)
	stw 0,348(31)
	stw 0,352(31)
.LBE5668:
.LBE5670:
.LBE5677:
.LBE5706:
.LBB5707:
.LBB5700:
	.loc 3 575 0
	beq- 7,.L510
.LBE5700:
	.loc 6 4264 0
	lwz 29,332(31)
.LBB5701:
.LBB5686:
.LBB5687:
	.loc 3 53 0
	cmpwi 7,29,0
	beq- 7,.L550
	.loc 3 54 0
	lbz 0,0(29)
	cmpwi 7,0,42
	beq- 7,.L570
.L511:
.LVL783:
.LBE5687:
.LBE5686:
.LBB5695:
.LBB5696:
	.loc 10 205 0
	li 4,2
	addi 3,31,340
	bl _ZNK6idVec48ToStringEi
	mr 4,29
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL784:
.L510:
.LBE5696:
.LBE5695:
.LBE5701:
.LBE5707:
.LBB5708:
.LBB5709:
	.loc 3 621 0
	lwz 28,424(31)
.LBB5710:
.LBB5711:
	.loc 13 881 0
	li 0,0
	stw 0,448(31)
.LBE5711:
.LBE5710:
	.loc 3 621 0
	cmpwi 7,28,0
.LBB5713:
.LBB5712:
	.loc 13 881 0
	stw 0,444(31)
	stw 0,440(31)
	stw 0,436(31)
.LBE5712:
.LBE5713:
	.loc 3 621 0
	beq- 7,.L513
.LBE5709:
	.loc 6 4264 0
	lwz 29,428(31)
.LBB5727:
.LBB5714:
.LBB5715:
	.loc 3 53 0
	cmpwi 7,29,0
	beq- 7,.L552
	.loc 3 54 0
	lbz 0,0(29)
	cmpwi 7,0,42
	beq- 7,.L571
.L514:
.LVL785:
.LBE5715:
.LBE5714:
.LBB5723:
.LBB5724:
	.loc 10 205 0
	li 4,2
	addi 3,31,436
	bl _ZNK6idVec48ToStringEi
	mr 4,29
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LEHE19:
.LVL786:
.L513:
.LBE5724:
.LBE5723:
.LBE5727:
.LBE5708:
.LBB5730:
.LBB5731:
.LBB5732:
.LBB5733:
.LBB5734:
.LBB5735:
	.loc 4 350 0
	lwz 0,596(31)
.LBE5735:
.LBE5734:
.LBE5733:
.LBE5732:
.LBE5731:
.LBE5730:
.LBB5766:
.LBB5767:
.LBB5768:
.LBB5769:
	.loc 4 357 0
	li 11,20
	.loc 4 415 0
	lbz 9,.LC4@l(30)
.LBE5769:
.LBE5768:
.LBE5767:
.LBE5766:
.LBB5779:
.LBB5761:
.LBB5745:
.LBB5742:
.LBB5739:
.LBB5736:
	.loc 4 350 0
	cmpwi 7,0,0
.LBE5736:
.LBE5739:
.LBE5742:
.LBE5745:
.LBE5761:
.LBE5779:
.LBB5780:
.LBB5776:
.LBB5773:
.LBB5770:
	.loc 4 357 0
	stw 11,16(1)
.LBE5770:
.LBE5773:
.LBE5776:
.LBE5780:
	.loc 6 140 0
	li 0,0
.LBB5781:
.LBB5777:
.LBB5774:
.LBB5771:
	.loc 4 358 0
	addi 11,1,20
.LBE5771:
.LBE5774:
.LBE5777:
.LBE5781:
	.loc 6 140 0
	stw 0,672(31)
.LVL787:
.LBB5782:
.LBB5778:
.LBB5775:
.LBB5772:
	.loc 4 358 0
	stw 11,12(1)
.LVL788:
	.loc 4 415 0
	stb 9,20(1)
.LBE5772:
.LBE5775:
	.loc 4 416 0
	stw 0,8(1)
.LVL789:
.LBE5778:
.LBE5782:
.LBB5783:
.LBB5762:
.LBB5746:
.LBB5743:
.LBB5740:
.LBB5737:
	.loc 4 350 0
	ble- 7,.L572
.L516:
.LBE5737:
.LBE5740:
	.loc 4 536 0
	lwz 9,592(31)
	li 0,0
	stb 0,0(9)
	.loc 4 537 0
	li 0,0
	stw 0,588(31)
.LBE5743:
.LBE5746:
	.loc 3 740 0
	lwz 29,544(31)
	cmpwi 7,29,0
	beq- 7,.L517
.LBE5762:
	.loc 6 4264 0
	lwz 4,548(31)
.LBB5763:
.LBB5747:
.LBB5748:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L554
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L573
.L518:
.LVL790:
.LBE5748:
.LBE5747:
	.loc 3 741 0
	lwz 5,592(31)
	mr 3,29
.LEHB20:
	bl _ZN6idDict3SetEPKcS1_
.LVL791:
.L517:
	.loc 3 743 0
	lwz 0,620(31)
	cmpwi 7,0,0
	beq- 7,.L520
.LVL792:
.LBB5756:
.LBB5757:
	.loc 4 653 0
	lwz 3,592(31)
	la 4,.LC4@l(30)
	bl _ZN5idStr3CmpEPKcS1_
.LEHE20:
.LBE5757:
.LBE5756:
	.loc 3 744 0
	cmpwi 0,3,0
	bne- 0,.L521
	.loc 3 745 0
	lwz 9,620(31)
	stw 3,0(9)
.LVL793:
.L520:
.LBE5763:
.LBE5783:
.LBB5784:
.LBB5785:
.LBB5786:
	.loc 4 501 0
	addi 3,1,8
.LEHB21:
	bl _ZN5idStr8FreeDataEv
.LBE5786:
.LBE5785:
.LBE5784:
	.loc 6 148 0
	li 9,-1
	.loc 6 142 0
	li 0,0
	.loc 6 148 0
	stw 9,96(31)
.LBB5787:
.LBB5764:
.LBB5758:
.LBB5754:
	.loc 6 112 0
	li 9,11
.LBE5754:
.LBE5758:
.LBE5764:
.LBE5787:
	.loc 6 142 0
	stw 0,712(31)
	.loc 6 143 0
	stw 0,716(31)
.LBB5788:
	.loc 6 153 0
	mtctr 9
.LBE5788:
	.loc 6 144 0
	stw 0,720(31)
	.loc 6 112 0
	addi 11,31,732
	.loc 6 145 0
	stw 0,676(31)
	.loc 6 146 0
	stw 0,848(31)
	.loc 6 147 0
	stw 0,868(31)
	.loc 6 149 0
	stb 0,208(31)
	.loc 6 150 0
	stb 0,724(31)
.LVL794:
.L523:
.LBB5789:
	.loc 6 153 0 discriminator 2
	stwu 0,4(11)
	addi 9,9,-1
	.loc 6 152 0 discriminator 2
	bdnz .L523
.LVL795:
.LBE5789:
.LBB5790:
.LBB5791:
	.loc 3 115 0
	lwz 28,920(31)
	.loc 3 114 0
	stb 9,929(31)
	.loc 3 115 0
	cmpwi 7,28,0
	beq- 7,.L485
.LBE5791:
	.loc 6 4264 0
	lwz 29,924(31)
.LBB5812:
.LBB5792:
.LBB5793:
	.loc 3 53 0
	cmpwi 7,29,0
	beq- 7,.L556
	.loc 3 54 0
	lbz 0,0(29)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L574
.L525:
.LVL796:
.LBE5793:
.LBE5792:
.LBB5807:
.LBB5808:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,29
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LEHE21:
.LVL797:
.L485:
.LBE5808:
.LBE5807:
.LBE5812:
.LBE5790:
.LBE5849:
	.loc 6 157 0
	lwz 0,76(1)
	lwz 27,52(1)
	mtlr 0
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
.LVL798:
	addi 1,1,72
	.cfi_remember_state
.LCFI201:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL799:
.L521:
.LCFI202:
	.cfi_restore_state
.LBB5850:
.LBB5816:
.LBB5765:
	.loc 3 747 0
	lis 9,declManager@ha
	lwz 4,592(31)
	lwz 3,declManager@l(9)
.LVL800:
	li 5,1
	li 6,0
	lwz 29,620(31)
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
.LEHB22:
	bctrl
	stw 3,0(29)
	b .L520
.LVL801:
.L572:
.LBB5759:
.LBB5744:
.LBB5741:
.LBB5738:
	.loc 4 351 0
	addi 3,31,588
	li 4,1
	li 5,0
	bl _ZN5idStr10ReAllocateEib
	b .L516
.L573:
.LVL802:
.LBE5738:
.LBE5741:
.LBE5744:
.LBE5759:
.LBB5760:
.LBB5755:
.LBB5749:
.LBB5750:
.LBB5751:
.LBB5752:
	.loc 10 241 0
	mr 3,29
	addi 4,4,1
.LVL803:
	bl _ZNK6idDict7FindKeyEPKc
.LEHE22:
.LVL804:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L554
.LVL805:
.LBB5753:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L518
.LVL806:
.L554:
.LBE5753:
.LBE5752:
.LBE5751:
.LBE5750:
.LBE5749:
	.loc 3 59 0
	la 4,.LC4@l(30)
	b .L518
.LVL807:
.L544:
.LBE5755:
.LBE5760:
.LBE5765:
.LBE5816:
.LBB5817:
.LBB5622:
.LBB5617:
.LBB5609:
	la 28,.LC4@l(30)
	b .L502
.LVL808:
.L546:
.LBE5609:
.LBE5617:
.LBE5622:
.LBE5817:
.LBB5818:
.LBB5648:
.LBB5641:
.LBB5633:
	la 28,.LC4@l(30)
	b .L505
.LVL809:
.L548:
.LBE5633:
.LBE5641:
.LBE5648:
.LBE5818:
.LBB5819:
.LBB5678:
.LBB5671:
.LBB5663:
	la 28,.LC4@l(30)
	b .L508
.LVL810:
.L550:
.LBE5663:
.LBE5671:
.LBE5678:
.LBE5819:
.LBB5820:
.LBB5702:
.LBB5697:
.LBB5693:
	la 29,.LC4@l(30)
	b .L511
.LVL811:
.L552:
.LBE5693:
.LBE5697:
.LBE5702:
.LBE5820:
.LBB5821:
.LBB5728:
.LBB5725:
.LBB5721:
	la 29,.LC4@l(30)
	b .L514
.LVL812:
.L541:
.LBE5721:
.LBE5725:
.LBE5728:
.LBE5821:
.LBB5822:
.LBB5587:
.LBB5581:
.LBB5576:
	.loc 3 53 0
	stw 9,40(1)
	.loc 3 59 0
	la 27,.LC4@l(30)
	.loc 3 53 0
	lfs 1,40(1)
	b .L499
.LVL813:
.L556:
.LBE5576:
.LBE5581:
.LBE5587:
.LBE5822:
.LBB5823:
.LBB5813:
.LBB5809:
.LBB5804:
	li 4,0
	.loc 3 59 0
	la 29,.LC4@l(30)
	b .L525
.LVL814:
.L538:
.LBE5804:
.LBE5809:
.LBE5813:
.LBE5823:
.LBB5824:
.LBB5559:
.LBB5555:
.LBB5550:
	.loc 3 53 0
	stw 0,40(1)
	.loc 3 59 0
	la 27,.LC4@l(30)
	.loc 3 53 0
	lfs 1,40(1)
	b .L496
.LVL815:
.L532:
.LBE5550:
.LBE5555:
.LBE5559:
.LBE5824:
.LBB5825:
.LBB5503:
.LBB5499:
.LBB5494:
	li 4,1
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L490
.LVL816:
.L535:
.LBE5494:
.LBE5499:
.LBE5503:
.LBE5825:
.LBB5826:
.LBB5531:
.LBB5525:
.LBB5520:
	.loc 3 53 0
	li 4,0
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L493
.LVL817:
.L529:
.LBE5520:
.LBE5525:
.LBE5531:
.LBE5826:
.LBB5827:
.LBB5475:
.LBB5470:
.LBB5466:
	.loc 3 53 0
	li 4,0
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L487
.L562:
.LVL818:
.LBB5456:
.LBB5457:
.LBB5458:
.LBB5459:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
.LEHB23:
	bl _ZNK6idDict7FindKeyEPKc
.LVL819:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L531
.LVL820:
.LBB5460:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,225(31)
	lwz 28,4(9)
.LVL821:
	b .L487
.LVL822:
.L563:
.LBE5460:
.LBE5459:
.LBE5458:
.LBE5457:
.LBE5456:
.LBE5466:
.LBE5470:
.LBE5475:
.LBE5827:
.LBB5828:
.LBB5504:
.LBB5500:
.LBB5495:
.LBB5484:
.LBB5485:
.LBB5486:
.LBB5487:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL823:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L534
.LVL824:
.LBB5488:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,241(31)
	lwz 28,4(9)
.LVL825:
	b .L490
.LVL826:
.L574:
.LBE5488:
.LBE5487:
.LBE5486:
.LBE5485:
.LBE5484:
.LBE5495:
.LBE5500:
.LBE5504:
.LBE5828:
.LBB5829:
.LBB5814:
.LBB5810:
.LBB5805:
.LBB5794:
.LBB5795:
.LBB5796:
.LBB5797:
	.loc 10 241 0
	mr 3,28
	addi 4,29,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL827:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L558
.LVL828:
.LBB5798:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,929(31)
	lwz 29,4(9)
.LVL829:
	b .L525
.LVL830:
.L564:
.LBE5798:
.LBE5797:
.LBE5796:
.LBE5795:
.LBE5794:
.LBE5805:
.LBE5810:
.LBE5814:
.LBE5829:
.LBB5830:
.LBB5532:
.LBB5526:
.LBB5521:
.LBB5510:
.LBB5511:
.LBB5512:
.LBB5513:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL831:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L537
.LVL832:
.LBB5514:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,257(31)
	lwz 28,4(9)
.LVL833:
	b .L493
.LVL834:
.L565:
.LBE5514:
.LBE5513:
.LBE5512:
.LBE5511:
.LBE5510:
.LBE5521:
.LBE5526:
.LBE5532:
.LBE5830:
.LBB5831:
.LBB5560:
.LBB5556:
.LBB5551:
.LBB5540:
.LBB5541:
.LBB5542:
.LBB5543:
	.loc 10 241 0
	mr 3,28
	addi 4,27,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL835:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L540
.LVL836:
.LBB5544:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,488(31)
	lwz 27,4(9)
.LVL837:
	b .L496
.LVL838:
.L566:
.LBE5544:
.LBE5543:
.LBE5542:
.LBE5541:
.LBE5540:
.LBE5551:
.LBE5556:
.LBE5560:
.LBE5831:
.LBB5832:
.LBB5588:
.LBB5582:
.LBB5577:
.LBB5566:
.LBB5567:
.LBB5568:
.LBB5569:
	.loc 10 241 0
	mr 3,28
	addi 4,27,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL839:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L543
.LVL840:
.LBB5570:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,468(31)
	lwz 27,4(9)
.LVL841:
	b .L499
.LVL842:
.L567:
.LBE5570:
.LBE5569:
.LBE5568:
.LBE5567:
.LBE5566:
.LBE5577:
.LBE5582:
.LBE5588:
.LBE5832:
.LBB5833:
.LBB5623:
.LBB5618:
.LBB5610:
.LBB5604:
.LBB5605:
.LBB5606:
.LBB5607:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL843:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L544
.LVL844:
.LBB5608:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL845:
	b .L502
.LVL846:
.L568:
.LBE5608:
.LBE5607:
.LBE5606:
.LBE5605:
.LBE5604:
.LBE5610:
.LBE5618:
.LBE5623:
.LBE5833:
.LBB5834:
.LBB5649:
.LBB5642:
.LBB5634:
.LBB5628:
.LBB5629:
.LBB5630:
.LBB5631:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL847:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L546
.LVL848:
.LBB5632:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL849:
	b .L505
.LVL850:
.L569:
.LBE5632:
.LBE5631:
.LBE5630:
.LBE5629:
.LBE5628:
.LBE5634:
.LBE5642:
.LBE5649:
.LBE5834:
.LBB5835:
.LBB5679:
.LBB5672:
.LBB5664:
.LBB5658:
.LBB5659:
.LBB5660:
.LBB5661:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL851:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L548
.LVL852:
.LBB5662:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL853:
	b .L508
.LVL854:
.L570:
.LBE5662:
.LBE5661:
.LBE5660:
.LBE5659:
.LBE5658:
.LBE5664:
.LBE5672:
.LBE5679:
.LBE5835:
.LBB5836:
.LBB5703:
.LBB5698:
.LBB5694:
.LBB5688:
.LBB5689:
.LBB5690:
.LBB5691:
	.loc 10 241 0
	mr 3,28
	addi 4,29,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL855:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L550
.LVL856:
.LBB5692:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 29,4(9)
.LVL857:
	b .L511
.LVL858:
.L571:
.LBE5692:
.LBE5691:
.LBE5690:
.LBE5689:
.LBE5688:
.LBE5694:
.LBE5698:
.LBE5703:
.LBE5836:
.LBB5837:
.LBB5729:
.LBB5726:
.LBB5722:
.LBB5716:
.LBB5717:
.LBB5718:
.LBB5719:
	.loc 10 241 0
	mr 3,28
	addi 4,29,1
	bl _ZNK6idDict7FindKeyEPKc
.LEHE23:
.LVL859:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L552
.LVL860:
.LBB5720:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 29,4(9)
.LVL861:
	b .L514
.LVL862:
.L543:
.LBE5720:
.LBE5719:
.LBE5718:
.LBE5717:
.LBE5716:
.LBE5722:
.LBE5726:
.LBE5729:
.LBE5837:
.LBB5838:
.LBB5589:
.LBB5583:
.LBB5578:
.LBB5575:
.LBB5574:
.LBB5573:
.LBB5572:
	.loc 10 245 0
	la 27,.LC4@l(30)
.LVL863:
.LBB5571:
	.loc 6 4264 0
	lfs 1,468(31)
	b .L499
.LVL864:
.L540:
.LBE5571:
.LBE5572:
.LBE5573:
.LBE5574:
.LBE5575:
.LBE5578:
.LBE5583:
.LBE5589:
.LBE5838:
.LBB5839:
.LBB5561:
.LBB5557:
.LBB5552:
.LBB5549:
.LBB5548:
.LBB5547:
.LBB5546:
	.loc 10 245 0
	la 27,.LC4@l(30)
.LVL865:
.LBB5545:
	.loc 6 4264 0
	lfs 1,488(31)
	b .L496
.LVL866:
.L537:
.LBE5545:
.LBE5546:
.LBE5547:
.LBE5548:
.LBE5549:
.LBE5552:
.LBE5557:
.LBE5561:
.LBE5839:
.LBB5840:
.LBB5533:
.LBB5527:
.LBB5522:
.LBB5519:
.LBB5518:
.LBB5517:
.LBB5516:
	.loc 10 245 0
	la 28,.LC4@l(30)
.LVL867:
.LBB5515:
	.loc 6 4264 0
	lbz 4,257(31)
	b .L493
.LVL868:
.L558:
.LBE5515:
.LBE5516:
.LBE5517:
.LBE5518:
.LBE5519:
.LBE5522:
.LBE5527:
.LBE5533:
.LBE5840:
.LBB5841:
.LBB5815:
.LBB5811:
.LBB5806:
.LBB5803:
.LBB5802:
.LBB5801:
.LBB5800:
	.loc 10 245 0
	la 29,.LC4@l(30)
.LVL869:
.LBB5799:
	.loc 6 4264 0
	lbz 4,929(31)
	b .L525
.LVL870:
.L534:
.LBE5799:
.LBE5800:
.LBE5801:
.LBE5802:
.LBE5803:
.LBE5806:
.LBE5811:
.LBE5815:
.LBE5841:
.LBB5842:
.LBB5505:
.LBB5501:
.LBB5496:
.LBB5493:
.LBB5492:
.LBB5491:
.LBB5490:
	.loc 10 245 0
	la 28,.LC4@l(30)
.LVL871:
.LBB5489:
	.loc 6 4264 0
	lbz 4,241(31)
	b .L490
.LVL872:
.L531:
.LBE5489:
.LBE5490:
.LBE5491:
.LBE5492:
.LBE5493:
.LBE5496:
.LBE5501:
.LBE5505:
.LBE5842:
.LBB5843:
.LBB5476:
.LBB5471:
.LBB5467:
.LBB5465:
.LBB5464:
.LBB5463:
.LBB5462:
	.loc 10 245 0
	la 28,.LC4@l(30)
.LVL873:
.LBB5461:
	.loc 6 4264 0
	lbz 4,225(31)
	b .L487
.LVL874:
.L559:
	mr 31,3
.LVL875:
.LBE5461:
.LBE5462:
.LBE5463:
.LBE5464:
.LBE5465:
.LBE5467:
.LBE5471:
.LBE5476:
.LBE5843:
.LBB5844:
.LBB5845:
.LBB5846:
	.loc 4 501 0
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB24:
	bl _Unwind_Resume
.LEHE24:
.LBE5846:
.LBE5845:
.LBE5844:
.LBE5850:
	.cfi_endproc
.LFE2877:
	.section	.gcc_except_table
.LLSDA2877:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2877-.LLSDACSB2877
.LLSDACSB2877:
	.uleb128 .LEHB19-.LFB2877
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB2877
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L559-.LFB2877
	.uleb128 0
	.uleb128 .LEHB21-.LFB2877
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB2877
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L559-.LFB2877
	.uleb128 0
	.uleb128 .LEHB23-.LFB2877
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB2877
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE2877:
	.section	".text"
	.size	_ZN8idWindow10CommonInitEv, .-_ZN8idWindow10CommonInitEv
	.align 2
	.globl _ZN8idWindow4SizeEv
	.type	_ZN8idWindow4SizeEv, @function
_ZN8idWindow4SizeEv:
.LFB2878:
	.loc 6 164 0
	.cfi_startproc
.LVL876:
	mflr 0
	stwu 1,-24(1)
.LCFI203:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB5851:
.LBB5852:
	.loc 6 167 0
	li 30,0
	.cfi_offset 30, -8
.LBE5852:
.LBE5851:
	.loc 6 164 0
	stw 0,28(1)
	stw 28,8(1)
	stw 31,20(1)
.LBB5854:
.LBB5853:
	.loc 6 4264 0
	lwz 28,680(3)
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL877:
	.loc 6 167 0
	cmpwi 7,28,0
	ble- 7,.L576
	li 31,0
.LVL878:
.L577:
	.loc 6 168 0 discriminator 2
	lwz 9,692(29)
	slwi 0,31,2
	.loc 6 167 0 discriminator 2
	addi 31,31,1
.LVL879:
	.loc 6 168 0 discriminator 2
	lwzx 3,9,0
	bl _ZN8idWindow4SizeEv
	.loc 6 167 0 discriminator 2
	cmpw 7,31,28
	.loc 6 168 0 discriminator 2
	add 30,30,3
.LVL880:
	.loc 6 167 0 discriminator 2
	bne+ 7,.L577
.LVL881:
.L576:
.LBE5853:
	.loc 6 170 0
	lwz 9,0(29)
	mr 3,29
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL882:
.LBE5854:
	.loc 6 172 0
	lwz 0,28(1)
.LBB5855:
	.loc 6 170 0
	add 3,3,30
.LVL883:
.LBE5855:
	.loc 6 172 0
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL884:
	lwz 30,16(1)
	addi 3,3,932
.LVL885:
	lwz 31,20(1)
	addi 1,1,24
.LCFI204:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2878:
	.size	_ZN8idWindow4SizeEv, .-_ZN8idWindow4SizeEv
	.align 2
	.globl _ZN8idWindownwEj
	.type	_ZN8idWindownwEj, @function
_ZN8idWindownwEj:
.LFB2886:
	.loc 6 245 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2886
.LVL886:
	mflr 0
	stwu 1,-8(1)
.LCFI205:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LEHB25:
.LBB5856:
	.loc 6 246 0
	.cfi_offset 65, 4
	bl _Z11Mem_Alloc16i
.LVL887:
	.loc 6 247 0
	cmpwi 7,3,0
	beq- 7,.L585
.LBE5856:
	.loc 6 251 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI206:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L585:
.LCFI207:
	.cfi_restore_state
.LBB5861:
	.loc 6 248 0
	li 3,4
.LVL888:
	bl __cxa_allocate_exception
.LVL889:
.LBB5857:
.LBB5858:
	.file 14 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/c++/4.6.3/new"
	.loc 14 59 0
	lis 9,_ZTVSt9bad_alloc+8@ha
	la 0,_ZTVSt9bad_alloc+8@l(9)
.LBE5858:
.LBE5857:
	.loc 6 248 0
	lis 4,_ZTISt9bad_alloc@ha
	lis 5,_ZNSt9bad_allocD1Ev@ha
.LBB5860:
.LBB5859:
	.loc 14 59 0
	stw 0,0(3)
.LBE5859:
.LBE5860:
	.loc 6 248 0
	la 4,_ZTISt9bad_alloc@l(4)
	la 5,_ZNSt9bad_allocD1Ev@l(5)
	bl __cxa_throw
.LEHE25:
.LVL890:
.L584:
	.loc 6 250 0
	cmpwi 7,4,-1
	beq- 7,.L583
.LEHB26:
	bl _Unwind_Resume
.L583:
.LBE5861:
	.loc 6 245 0
	bl __cxa_call_unexpected
.LEHE26:
	.cfi_endproc
.LFE2886:
	.section	.gcc_except_table
	.align 2
.LLSDA2886:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2886-.LLSDATTD2886
.LLSDATTD2886:
	.byte	0x1
	.uleb128 .LLSDACSE2886-.LLSDACSB2886
.LLSDACSB2886:
	.uleb128 .LEHB25-.LFB2886
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L584-.LFB2886
	.uleb128 0x1
	.uleb128 .LEHB26-.LFB2886
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE2886:
	.byte	0x7f
	.byte	0
	.align 2
	.long	_ZTISt9bad_alloc
.LLSDATT2886:
	.byte	0x1
	.byte	0
	.section	".text"
	.size	_ZN8idWindownwEj, .-_ZN8idWindownwEj
	.align 2
	.globl _ZN8idWindowdlEPv
	.type	_ZN8idWindowdlEPv, @function
_ZN8idWindowdlEPv:
.LFB2893:
	.loc 6 253 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2893
.LVL891:
	mflr 0
	stwu 1,-8(1)
.LCFI208:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 6 254 0
	lis 0,0x8fff
	.cfi_offset 65, 4
	ori 0,0,65535
	cmplw 7,3,0
	ble- 7,.L587
.LEHB27:
	.loc 6 255 0
	bl _Z10Mem_Free16Pv
.LEHE27:
.LVL892:
	.loc 6 259 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI209:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL893:
.L587:
.LCFI210:
	.cfi_restore_state
	.loc 6 257 0
	bl free
.LVL894:
	.loc 6 259 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI211:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L591:
.LCFI212:
	.cfi_restore_state
	cmpwi 7,4,-1
	beq- 7,.L590
.LEHB28:
	bl _Unwind_Resume
.L590:
	.loc 6 253 0
	bl __cxa_call_unexpected
.LEHE28:
	.cfi_endproc
.LFE2893:
	.section	.gcc_except_table
	.align 2
.LLSDA2893:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2893-.LLSDATTD2893
.LLSDATTD2893:
	.byte	0x1
	.uleb128 .LLSDACSE2893-.LLSDACSB2893
.LLSDACSB2893:
	.uleb128 .LEHB27-.LFB2893
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L591-.LFB2893
	.uleb128 0x1
	.uleb128 .LEHB28-.LFB2893
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE2893:
	.byte	0x7f
	.byte	0
	.align 2
.LLSDATT2893:
	.byte	0
	.section	".text"
	.size	_ZN8idWindowdlEPv, .-_ZN8idWindowdlEPv
	.align 2
	.globl _ZN8idWindow4MoveEff
	.type	_ZN8idWindow4MoveEff, @function
_ZN8idWindow4MoveEff:
.LFB2899:
	.loc 6 303 0
	.cfi_startproc
.LVL895:
	mflr 0
	stwu 1,-72(1)
.LCFI213:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
.LBB5880:
	.loc 6 307 0
	lis 4,.LC25@ha
.LBE5880:
	.loc 6 303 0
	stfd 30,56(1)
.LBB5912:
	.loc 6 307 0
	la 4,.LC25@l(4)
.LBE5912:
	.loc 6 303 0
	stfd 31,64(1)
	fmr 30,2
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -20
.LVL896:
	stw 0,76(1)
	fmr 31,1
	stw 29,44(1)
	stw 30,48(1)
.LBB5913:
	.loc 6 304 0
	lwz 10,276(3)
	lwz 11,280(3)
	lwz 9,284(3)
	lwz 0,288(3)
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 65, 4
	.loc 6 307 0
	addi 3,3,872
.LVL897:
	.loc 6 304 0
	stw 10,24(1)
	stw 11,28(1)
	stw 9,32(1)
	stw 0,36(1)
.LVL898:
	.loc 6 307 0
	bl _ZN14idRegisterList7FindRegEPKc
.LVL899:
	.loc 6 308 0
	cmpwi 0,3,0
	beq- 0,.L593
.LVL900:
.LBB5881:
.LBB5882:
	.file 15 "d:/Data/Nintendo/DoomGX/src/ui/RegExp.h"
	.loc 15 53 0
	li 0,0
	stb 0,0(3)
.LVL901:
.L593:
.LBE5882:
.LBE5881:
.LBB5883:
.LBB5884:
.LBB5885:
	.loc 3 411 0
	lwz 29,264(31)
.LBE5885:
	.loc 3 410 0
	lwz 9,32(1)
.LBB5905:
	.loc 3 411 0
	cmpwi 7,29,0
.LBE5905:
	.loc 3 410 0
	lwz 0,36(1)
	stw 9,284(31)
	stw 0,288(31)
	stfs 31,276(31)
	stfs 30,280(31)
.LBB5906:
	.loc 3 411 0
	beq- 7,.L592
.LVL902:
.LBE5906:
.LBE5884:
	.loc 6 4264 0
	lwz 30,268(31)
.LBB5909:
.LBB5907:
.LBB5886:
	.loc 3 412 0
	lwz 10,276(31)
.LBB5887:
.LBB5888:
	.loc 3 53 0
	cmpwi 7,30,0
.LBE5888:
.LBE5887:
	.loc 3 412 0
	lwz 11,280(31)
	stw 10,8(1)
	stw 11,12(1)
	stw 9,16(1)
	stw 0,20(1)
.LBB5900:
.LBB5898:
	.loc 3 53 0
	beq- 7,.L597
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L599
.LVL903:
.L595:
.LBE5898:
.LBE5900:
.LBB5901:
.LBB5902:
	.loc 10 205 0
	li 4,2
	addi 3,1,8
	bl _ZNK6idVec48ToStringEi
	mr 4,30
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL904:
.L592:
.LBE5902:
.LBE5901:
.LBE5886:
.LBE5907:
.LBE5909:
.LBE5883:
.LBE5913:
	.loc 6 312 0
	lwz 0,76(1)
	lwz 29,44(1)
	mtlr 0
	lwz 30,48(1)
	lwz 31,52(1)
.LVL905:
	lfd 30,56(1)
.LVL906:
	lfd 31,64(1)
.LVL907:
	addi 1,1,72
	.cfi_remember_state
.LCFI214:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL908:
.L599:
.LCFI215:
	.cfi_restore_state
.LBB5914:
.LBB5911:
.LBB5910:
.LBB5908:
.LBB5904:
.LBB5903:
.LBB5899:
.LBB5889:
.LBB5890:
.LBB5891:
.LBB5892:
	.loc 10 241 0
	mr 3,29
.LVL909:
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL910:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L600
.LVL911:
.L597:
.LBE5892:
.LBE5891:
.LBE5890:
.LBE5889:
	.loc 3 59 0
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L595
.LVL912:
.L600:
.LBB5897:
.LBB5896:
.LBB5895:
.LBB5894:
.LBB5893:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL913:
	b .L595
.LBE5893:
.LBE5894:
.LBE5895:
.LBE5896:
.LBE5897:
.LBE5899:
.LBE5903:
.LBE5904:
.LBE5908:
.LBE5910:
.LBE5911:
.LBE5914:
	.cfi_endproc
.LFE2899:
	.size	_ZN8idWindow4MoveEff, .-_ZN8idWindow4MoveEff
	.align 2
	.globl _ZN8idWindow7SetFontEv
	.type	_ZN8idWindow7SetFontEv, @function
_ZN8idWindow7SetFontEv:
.LFB2900:
	.loc 6 319 0
	.cfi_startproc
.LVL914:
	mflr 0
	stwu 1,-8(1)
.LCFI216:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 9,3
	stw 0,12(1)
	.loc 6 320 0
	lwz 3,728(3)
.LVL915:
	lbz 4,209(9)
	.cfi_offset 65, 4
	bl _ZN15idDeviceContext7SetFontEi
.LVL916:
	.loc 6 321 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI217:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2900:
	.size	_ZN8idWindow7SetFontEv, .-_ZN8idWindow7SetFontEv
	.align 2
	.globl _ZN8idWindow16GetMaxCharHeightEv
	.type	_ZN8idWindow16GetMaxCharHeightEv, @function
_ZN8idWindow16GetMaxCharHeightEv:
.LFB2901:
	.loc 6 328 0
	.cfi_startproc
.LVL917:
	stwu 1,-24(1)
.LCFI218:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,28(1)
	.loc 6 329 0
	.cfi_offset 65, 4
	bl _ZN8idWindow7SetFontEv
.LVL918:
	.loc 6 330 0
	lfs 1,468(31)
	lwz 3,728(31)
	bl _ZN15idDeviceContext13MaxCharHeightEf
	lis 0,0x4330
	xoris 3,3,0x8000
	stw 0,8(1)
	stw 3,12(1)
	lis 9,.LC8@ha
	.loc 6 331 0
	lwz 0,28(1)
	.loc 6 330 0
	lfd 1,8(1)
	lfs 0,.LC8@l(9)
	.loc 6 331 0
	mtlr 0
	lwz 31,20(1)
.LVL919:
	.loc 6 330 0
	fsub 1,1,0
	.loc 6 331 0
	addi 1,1,24
.LCFI219:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	frsp 1,1
	blr
	.cfi_endproc
.LFE2901:
	.size	_ZN8idWindow16GetMaxCharHeightEv, .-_ZN8idWindow16GetMaxCharHeightEv
	.align 2
	.globl _ZN8idWindow15GetMaxCharWidthEv
	.type	_ZN8idWindow15GetMaxCharWidthEv, @function
_ZN8idWindow15GetMaxCharWidthEv:
.LFB2902:
	.loc 6 338 0
	.cfi_startproc
.LVL920:
	stwu 1,-24(1)
.LCFI220:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,28(1)
	.loc 6 339 0
	.cfi_offset 65, 4
	bl _ZN8idWindow7SetFontEv
.LVL921:
	.loc 6 340 0
	lfs 1,468(31)
	lwz 3,728(31)
	bl _ZN15idDeviceContext12MaxCharWidthEf
	lis 0,0x4330
	xoris 3,3,0x8000
	stw 0,8(1)
	stw 3,12(1)
	lis 9,.LC8@ha
	.loc 6 341 0
	lwz 0,28(1)
	.loc 6 340 0
	lfd 1,8(1)
	lfs 0,.LC8@l(9)
	.loc 6 341 0
	mtlr 0
	lwz 31,20(1)
.LVL922:
	.loc 6 340 0
	fsub 1,1,0
	.loc 6 341 0
	addi 1,1,24
.LCFI221:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	frsp 1,1
	blr
	.cfi_endproc
.LFE2902:
	.size	_ZN8idWindow15GetMaxCharWidthEv, .-_ZN8idWindow15GetMaxCharWidthEv
	.align 2
	.globl _ZN8idWindow10BringToTopEPS_
	.type	_ZN8idWindow10BringToTopEPS_, @function
_ZN8idWindow10BringToTopEPS_:
.LFB2904:
	.loc 6 378 0
	.cfi_startproc
.LVL923:
.LBB5931:
	.loc 6 380 0
	cmpwi 0,4,0
	beq- 0,.L605
	.loc 6 380 0 is_stmt 0 discriminator 1
	lwz 0,48(4)
	andi. 9,0,512
	beqlr- 0
.L605:
.LVL924:
.LBE5931:
.LBB5932:
	.loc 6 4264 0 is_stmt 1
	lwz 8,680(3)
.LVL925:
.LBB5933:
.LBB5934:
	.loc 6 385 0
	cmpwi 7,8,0
	blelr- 7
.LVL926:
.LBE5934:
.LBE5933:
	.loc 6 4264 0
	lwz 11,692(3)
.LVL927:
.LBB5943:
.LBB5942:
.LBB5935:
	.loc 6 386 0
	li 9,0
	mtctr 8
	lwz 0,0(11)
	cmpw 7,4,0
	bne+ 7,.L608
	b .L619
.LVL928:
.L612:
	lwzx 0,11,0
	cmpw 7,4,0
	beq- 7,.L618
.LVL929:
.L608:
.LBE5935:
	.loc 6 385 0
	addi 9,9,1
.LVL930:
.LBB5940:
	.loc 6 386 0
	slwi 0,9,2
.LBE5940:
	.loc 6 385 0
	bdnz .L612
	blr
.LVL931:
.L618:
.LBB5941:
	.loc 6 386 0
	addi 9,9,1
.LVL932:
.L607:
.LBB5936:
.LBB5937:
	.loc 6 388 0
	cmpw 7,8,9
	ble- 7,.L609
	slwi 10,9,2
	subf 9,9,8
.LVL933:
	mtctr 9
.L611:
	.loc 6 389 0
	lwzux 0,11,10
	.loc 6 388 0
	addi 10,10,4
	.loc 6 389 0
	stw 0,-4(11)
	.loc 6 388 0
	lwz 11,692(3)
	bdnz .L611
.L609:
.LVL934:
.LBE5937:
.LBB5938:
.LBB5939:
	.file 16 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/containers/List.h"
	.loc 16 589 0
	addi 8,8,-1
.LBE5939:
.LBE5938:
	.loc 6 391 0
	slwi 8,8,2
	stwx 4,11,8
	blr
.LVL935:
.L619:
.LBE5936:
	.loc 6 386 0
	li 9,1
	b .L607
.LBE5941:
.LBE5942:
.LBE5943:
.LBE5932:
	.cfi_endproc
.LFE2904:
	.size	_ZN8idWindow10BringToTopEPS_, .-_ZN8idWindow10BringToTopEPS_
	.align 2
	.globl _ZN8idWindow10SetCaptureEPS_
	.type	_ZN8idWindow10SetCaptureEPS_, @function
_ZN8idWindow10SetCaptureEPS_:
.LFB2912:
	.loc 6 575 0
	.cfi_startproc
.LVL936:
	mflr 0
	stwu 1,-24(1)
.LCFI222:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB5944:
.LBB5945:
	.loc 6 578 0
	li 30,0
	.cfi_offset 30, -8
.LBE5945:
.LBE5944:
	.loc 6 575 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
.LBB5948:
.LBB5946:
	.loc 6 4264 0
	lwz 0,680(3)
	.cfi_offset 65, 4
.LVL937:
	.loc 6 580 0
	cmpwi 7,0,0
	ble- 7,.L621
	.loc 6 4264 0
	lwz 11,692(3)
.LVL938:
	.loc 6 581 0
	lwz 30,0(11)
	lwz 9,48(30)
	andi. 10,9,64
	bne- 0,.L622
	li 9,0
	mtctr 0
	b .L623
.LVL939:
.L624:
	lwzx 30,11,0
	lwz 0,48(30)
	andi. 10,0,64
	bne- 0,.L622
.LVL940:
.L623:
	.loc 6 580 0
	addi 9,9,1
.LVL941:
	.loc 6 581 0
	slwi 0,9,2
	.loc 6 580 0
	bdnz .L624
	.loc 6 578 0
	li 30,0
.LVL942:
.L621:
.LBE5946:
	.loc 6 589 0
	lwz 0,48(29)
	.loc 6 590 0
	mr 3,29
	lwz 9,0(29)
	.loc 6 589 0
	ori 0,0,64
	stw 0,48(29)
	.loc 6 590 0
	lwz 0,56(9)
	mtctr 0
	bctrl
	.loc 6 4264 0
	lwz 9,732(31)
.LBE5948:
	.loc 6 593 0
	mr 3,30
.LBB5949:
	.loc 6 4264 0
	lwz 9,52(9)
	.loc 6 591 0
	stw 29,716(9)
.LBE5949:
	.loc 6 593 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL943:
	mtlr 0
	lwz 30,16(1)
.LVL944:
	lwz 31,20(1)
.LVL945:
	addi 1,1,24
	.cfi_remember_state
.LCFI223:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL946:
.L622:
.LCFI224:
	.cfi_restore_state
.LBB5950:
.LBB5947:
	.loc 6 584 0
	lwz 9,0(30)
	mr 3,30
.LVL947:
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL948:
	.loc 6 585 0
	b .L621
.LBE5947:
.LBE5950:
	.cfi_endproc
.LFE2912:
	.size	_ZN8idWindow10SetCaptureEPS_, .-_ZN8idWindow10SetCaptureEPS_
	.align 2
	.globl _ZN8idWindow13UpdateWinVarsEv
	.type	_ZN8idWindow13UpdateWinVarsEv, @function
_ZN8idWindow13UpdateWinVarsEv:
.LFB2914:
	.loc 6 609 0
	.cfi_startproc
.LVL949:
	mflr 0
	stwu 1,-24(1)
.LCFI225:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB5951:
.LBB5952:
	.loc 6 4264 0
	lwz 30,640(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL950:
	.loc 6 611 0
	cmpwi 7,30,0
	ble- 7,.L627
	li 31,0
.LVL951:
.L629:
	.loc 6 612 0 discriminator 2
	lwz 9,652(29)
	slwi 0,31,2
	.loc 6 611 0 discriminator 2
	addi 31,31,1
.LVL952:
	.loc 6 612 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL953:
	.loc 6 611 0 discriminator 2
	cmpw 7,31,30
	bne+ 7,.L629
.LVL954:
.L627:
.LBE5952:
.LBE5951:
	.loc 6 614 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL955:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI226:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2914:
	.size	_ZN8idWindow13UpdateWinVarsEv, .-_ZN8idWindow13UpdateWinVarsEv
	.align 2
	.globl _ZN8idWindow8ContainsERK11idRectangleff
	.type	_ZN8idWindow8ContainsERK11idRectangleff, @function
_ZN8idWindow8ContainsERK11idRectangleff:
.LFB2917:
	.loc 6 694 0
	.cfi_startproc
.LVL956:
.LBB5960:
.LBB5961:
.LBB5962:
	.loc 12 49 0
	lis 9,.LC1@ha
	.loc 6 695 0
	lfs 13,8(4)
	.loc 12 49 0
	lfs 0,.LC1@l(9)
	.loc 6 695 0
	lfs 12,0(4)
.LVL957:
	.loc 12 49 0
	fcmpu 7,13,0
	.loc 6 695 0
	lfs 8,4(4)
.LVL958:
	lfs 9,12(4)
.LVL959:
.LBE5962:
.LBE5961:
	.loc 6 696 0
	lfs 10,36(3)
	lfs 11,56(3)
	.loc 6 697 0
	lfs 6,40(3)
	lfs 7,60(3)
.LVL960:
.LBB5970:
.LBB5967:
	.loc 12 49 0
	bne- 7,.L632
.LVL961:
	fcmpu 7,9,0
	.loc 12 50 0
	li 3,0
.LVL962:
	.loc 12 49 0
	beqlr- 7
.LVL963:
.L632:
.LBE5967:
.LBE5970:
	.loc 6 696 0
	fsubs 0,10,11
	fadds 0,0,12
.LBB5971:
.LBB5968:
	.loc 12 52 0
	fcmpu 7,0,1
	cror 30,28,30
	bne- 7,.L645
.LBB5963:
.LBB5964:
	.loc 12 43 0
	fadds 13,0,13
.LBE5964:
.LBE5963:
	.loc 12 52 0
	fcmpu 7,1,13
	cror 30,28,30
	bne- 7,.L645
.LBE5968:
.LBE5971:
	.loc 6 697 0
	fsubs 7,6,7
	fadds 8,7,8
.LBB5972:
.LBB5969:
	.loc 12 52 0
	fcmpu 7,8,2
	cror 30,28,30
	bne- 7,.L646
.LBB5965:
.LBB5966:
	.loc 12 42 0
	fadds 8,8,9
.LBE5966:
.LBE5965:
	.loc 12 52 0
	fcmpu 7,2,8
	cror 30,28,30
	mfcr 3
	rlwinm 3,3,31,1
	blr
.L645:
	.loc 12 55 0
	li 3,0
	blr
.L646:
	li 3,0
.LBE5969:
.LBE5972:
.LBE5960:
	.loc 6 699 0
	blr
	.cfi_endproc
.LFE2917:
	.size	_ZN8idWindow8ContainsERK11idRectangleff, .-_ZN8idWindow8ContainsERK11idRectangleff
	.align 2
	.globl _ZN8idWindow8ContainsEff
	.type	_ZN8idWindow8ContainsEff, @function
_ZN8idWindow8ContainsEff:
.LFB2918:
	.loc 6 706 0
	.cfi_startproc
.LVL964:
.LBB5980:
.LBB5981:
.LBB5982:
	.loc 12 49 0
	lis 9,.LC1@ha
	.loc 6 707 0
	lfs 13,64(3)
.LVL965:
	.loc 12 49 0
	lfs 0,.LC1@l(9)
	.loc 6 707 0
	lfs 11,68(3)
.LVL966:
	.loc 12 49 0
	fcmpu 7,13,0
.LBE5982:
.LBE5981:
	.loc 6 708 0
	lfs 12,36(3)
	.loc 6 709 0
	lfs 10,40(3)
.LVL967:
.LBB5988:
.LBB5987:
	.loc 12 49 0
	bne- 7,.L648
.LVL968:
	fcmpu 7,11,0
	.loc 12 50 0
	li 3,0
.LVL969:
	.loc 12 49 0
	beqlr- 7
.LVL970:
.L648:
	.loc 12 52 0
	fcmpu 7,12,1
	cror 30,28,30
	bne- 7,.L661
.LBB5983:
.LBB5984:
	.loc 12 43 0
	fadds 13,12,13
.LVL971:
.LBE5984:
.LBE5983:
	.loc 12 52 0
	fcmpu 7,1,13
	cror 30,28,30
	bne- 7,.L661
	fcmpu 7,10,2
	cror 30,28,30
	bne- 7,.L662
.LBB5985:
.LBB5986:
	.loc 12 42 0
	fadds 11,10,11
.LVL972:
.LBE5986:
.LBE5985:
	.loc 12 52 0
	fcmpu 7,2,11
	cror 30,28,30
	mfcr 3
	rlwinm 3,3,31,1
	blr
.LVL973:
.L661:
	.loc 12 55 0
	li 3,0
	blr
.L662:
	li 3,0
.LBE5987:
.LBE5988:
.LBE5980:
	.loc 6 711 0
	blr
	.cfi_endproc
.LFE2918:
	.size	_ZN8idWindow8ContainsEff, .-_ZN8idWindow8ContainsEff
	.align 2
	.globl _ZN8idWindow10AddCommandEPKc
	.type	_ZN8idWindow10AddCommandEPKc, @function
_ZN8idWindow10AddCommandEPKc:
.LFB2919:
	.loc 6 718 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2919
.LVL974:
	mflr 0
	stwu 1,-56(1)
.LCFI227:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
.LBB6026:
.LBB6027:
.LBB6028:
.LBB6029:
.LBB6030:
	.loc 4 356 0
	li 9,0
	.loc 4 357 0
	li 11,20
.LBE6030:
.LBE6029:
.LBE6028:
.LBE6027:
.LBE6026:
	.loc 6 718 0
	stw 30,48(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,60(1)
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL975:
	stw 28,40(1)
	stw 29,44(1)
.LBB6117:
.LBB6052:
.LBB6047:
.LBB6035:
.LBB6031:
	.loc 4 356 0
	stw 9,8(1)
.LBE6031:
.LBE6035:
.LBE6047:
	.loc 6 4264 0
	lwz 28,4(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LBB6048:
.LBB6036:
.LBB6032:
	.loc 4 358 0
	addi 3,1,20
.LVL976:
	.loc 4 357 0
	stw 11,16(1)
.LBE6032:
.LBE6036:
	.loc 4 374 0
	addi 0,28,1
.LVL977:
.LBB6037:
.LBB6033:
	.loc 4 358 0
	stw 3,12(1)
.LBE6033:
.LBE6037:
.LBB6038:
.LBB6039:
	.loc 4 350 0
	cmpwi 7,0,20
.LBE6039:
.LBE6038:
.LBB6043:
.LBB6034:
	.loc 4 359 0
	stb 9,20(1)
.LBE6034:
.LBE6043:
.LBB6044:
.LBB6040:
	.loc 4 350 0
	ble+ 7,.L664
	.loc 4 351 0
	addi 3,1,8
	mr 4,0
.LVL978:
	li 5,1
.LEHB29:
	bl _ZN5idStr10ReAllocateEib
.LEHE29:
.LVL979:
	lwz 3,12(1)
.LVL980:
.L664:
.LBE6040:
.LBE6044:
	.loc 4 375 0
	lwz 4,8(31)
	bl strcpy
.LBE6048:
.LBE6052:
	.loc 6 720 0
	cmpwi 7,28,0
.LBB6053:
.LBB6049:
	.loc 4 376 0
	stw 28,8(1)
.LBE6049:
.LBE6053:
	.loc 6 720 0
	beq- 7,.L665
.LVL981:
.LBB6054:
.LBB6055:
.LBB6056:
.LBB6057:
.LBB6058:
	.loc 4 350 0
	lwz 0,16(1)
.LBE6058:
.LBE6057:
	.loc 4 776 0
	addi 4,28,4
	.loc 4 775 0
	addi 29,28,3
.LVL982:
.LBB6062:
.LBB6059:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L666
.LVL983:
.L668:
	lis 11,.LC26@ha
.LBE6059:
.LBE6062:
.LBE6056:
.LBE6055:
.LBE6054:
.LBB6073:
.LBB6050:
.LBB6045:
.LBB6041:
	li 0,32
.LBE6041:
.LBE6045:
.LBE6050:
.LBE6073:
.LBB6074:
.LBB6069:
.LBB6065:
.LBB6063:
.LBB6060:
	la 11,.LC26@l(11)
.LBE6060:
.LBE6063:
.LBE6065:
.LBE6069:
.LBE6074:
.LBB6075:
.LBB6051:
.LBB6046:
.LBB6042:
	li 9,0
	b .L667
.LVL984:
.L684:
.LBE6042:
.LBE6046:
.LBE6051:
.LBE6075:
.LBB6076:
.LBB6070:
.LBB6066:
	.loc 4 777 0
	lwz 28,8(1)
.LVL985:
.L667:
	.loc 4 778 0
	lwz 10,12(1)
	add 28,10,28
	stbx 0,28,9
	.loc 4 777 0
	addi 9,9,1
.LVL986:
	lbzu 0,1(11)
	cmpwi 7,0,0
	bne+ 7,.L684
.LBE6066:
.LBE6070:
.LBE6076:
.LBB6077:
.LBB6078:
.LBB6079:
	.loc 4 774 0
	cmpwi 7,30,0
.LBE6079:
.LBE6078:
.LBE6077:
.LBB6090:
.LBB6071:
.LBB6067:
	.loc 4 781 0
	lwz 9,12(1)
.LVL987:
	.loc 4 780 0
	stw 29,8(1)
	.loc 4 781 0
	stbx 0,9,29
.LVL988:
.LBE6067:
.LBE6071:
.LBE6090:
.LBB6091:
.LBB6088:
.LBB6086:
	.loc 4 774 0
	beq- 7,.L670
	.loc 4 775 0
	mr 3,30
	bl strlen
	lwz 29,8(1)
.LVL989:
.LBB6080:
.LBB6081:
	.loc 4 350 0
	lwz 0,16(1)
.LBE6081:
.LBE6080:
	.loc 4 775 0
	add 29,3,29
.LVL990:
	.loc 4 776 0
	addi 4,29,1
.LVL991:
.LBB6084:
.LBB6082:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L671
.LVL992:
.L674:
.LBE6082:
.LBE6084:
	.loc 4 777 0
	lbz 0,0(30)
	li 9,0
	cmpwi 7,0,0
	beq- 7,.L673
.LVL993:
.L682:
	.loc 4 778 0
	lwz 11,8(1)
	lwz 10,12(1)
	add 11,10,11
	stbx 0,11,9
	.loc 4 777 0
	addi 9,9,1
.LVL994:
	lbzx 0,30,9
	cmpwi 7,0,0
	bne+ 7,.L682
.LVL995:
.L673:
	.loc 4 781 0
	lwz 9,12(1)
	li 0,0
	.loc 4 780 0
	stw 29,8(1)
	.loc 4 781 0
	stbx 0,9,29
.LVL996:
.LBE6086:
.LBE6088:
.LBE6091:
.LBB6092:
	.loc 6 4264 0
	lwz 30,8(1)
.LVL997:
.LBB6093:
.LBB6094:
.LBB6095:
	.loc 4 350 0
	lwz 0,12(31)
.LBE6095:
.LBE6094:
	.loc 4 534 0
	addi 4,30,1
.LVL998:
.LBB6099:
.LBB6096:
	.loc 4 350 0
	cmpw 7,4,0
	ble+ 7,.L675
.LVL999:
.L685:
	.loc 4 351 0
	addi 3,31,4
	li 5,0
.LEHB30:
	bl _ZN5idStr10ReAllocateEib
.LVL1000:
	b .L675
.LVL1001:
.L665:
.LBE6096:
.LBE6099:
.LBE6093:
.LBE6092:
	.loc 6 724 0
	addi 3,1,8
	mr 4,30
	bl _ZN5idStraSEPKc
.LEHE30:
.L670:
.LVL1002:
.LBB6104:
	.loc 6 4264 0
	lwz 30,8(1)
.LVL1003:
.LBB6102:
.LBB6100:
.LBB6097:
	.loc 4 350 0
	lwz 0,12(31)
.LBE6097:
.LBE6100:
	.loc 4 534 0
	addi 4,30,1
.LVL1004:
.LBB6101:
.LBB6098:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L685
.LVL1005:
.L675:
.LBE6098:
.LBE6101:
	.loc 4 535 0
	lwz 4,12(1)
	mr 5,30
	lwz 3,8(31)
	bl memcpy
	.loc 4 536 0
	lwz 9,8(31)
	li 0,0
.LBE6102:
.LBE6104:
.LBB6105:
.LBB6106:
.LBB6107:
	.loc 4 501 0
	addi 3,1,8
.LBE6107:
.LBE6106:
.LBE6105:
.LBB6110:
.LBB6103:
	.loc 4 536 0
	stbx 0,9,30
	.loc 4 537 0
	stw 30,4(31)
.LVL1006:
.LEHB31:
.LBE6103:
.LBE6110:
.LBB6111:
.LBB6109:
.LBB6108:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE31:
.LBE6108:
.LBE6109:
.LBE6111:
.LBE6117:
	.loc 6 727 0
	lwz 0,60(1)
	lwz 28,40(1)
	mtlr 0
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL1007:
	addi 1,1,56
	.cfi_remember_state
.LCFI228:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1008:
.L666:
.LCFI229:
	.cfi_restore_state
.LBB6118:
.LBB6112:
.LBB6072:
.LBB6068:
.LBB6064:
.LBB6061:
	.loc 4 351 0
	addi 3,1,8
	li 5,1
.LEHB32:
	bl _ZN5idStr10ReAllocateEib
.LVL1009:
	lwz 28,8(1)
	b .L668
.LVL1010:
.L671:
.LBE6061:
.LBE6064:
.LBE6068:
.LBE6072:
.LBE6112:
.LBB6113:
.LBB6089:
.LBB6087:
.LBB6085:
.LBB6083:
	addi 3,1,8
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE32:
.LVL1011:
	b .L674
.LVL1012:
.L681:
	mr 31,3
.LVL1013:
.LBE6083:
.LBE6085:
.LBE6087:
.LBE6089:
.LBE6113:
.LBB6114:
.LBB6115:
.LBB6116:
	.loc 4 501 0
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB33:
	bl _Unwind_Resume
.LEHE33:
.LBE6116:
.LBE6115:
.LBE6114:
.LBE6118:
	.cfi_endproc
.LFE2919:
	.section	.gcc_except_table
.LLSDA2919:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2919-.LLSDACSB2919
.LLSDACSB2919:
	.uleb128 .LEHB29-.LFB2919
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB2919
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L681-.LFB2919
	.uleb128 0
	.uleb128 .LEHB31-.LFB2919
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB2919
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L681-.LFB2919
	.uleb128 0
	.uleb128 .LEHB33-.LFB2919
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSE2919:
	.section	".text"
	.size	_ZN8idWindow10AddCommandEPKc, .-_ZN8idWindow10AddCommandEPKc
	.align 2
	.globl _ZN8idWindow16RouteMouseCoordsEff
	.type	_ZN8idWindow16RouteMouseCoordsEff, @function
_ZN8idWindow16RouteMouseCoordsEff:
.LFB2908:
	.loc 6 446 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2908
.LVL1014:
	mflr 0
	stwu 1,-88(1)
.LCFI230:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
.LVL1015:
	stfd 30,72(1)
	fmr 30,2
	.cfi_offset 62, -16
	stw 0,92(1)
.LBB6153:
.LBB6154:
.LBB6155:
.LBB6156:
	.loc 4 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE6156:
.LBE6155:
.LBE6154:
.LBE6153:
	.loc 6 446 0
	stfd 31,80(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -28
	stfd 29,64(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
.LBB6217:
.LBB6163:
.LBB6160:
.LBB6157:
	.loc 4 356 0
	stw 0,8(1)
.LBE6157:
.LBE6160:
.LBE6163:
.LBB6164:
.LBB6165:
	.loc 6 1541 0
	lwz 9,48(3)
.LBE6165:
.LBE6164:
.LBB6169:
.LBB6161:
.LBB6158:
	.loc 4 359 0
	stb 0,20(1)
.LVL1016:
.LBE6158:
.LBE6161:
.LBE6169:
.LBB6170:
.LBB6166:
	.loc 6 1541 0
	andis. 11,9,4096
.LBE6166:
.LBE6170:
.LBB6171:
.LBB6162:
.LBB6159:
	.loc 4 357 0
	li 9,20
	stw 9,16(1)
	.loc 4 358 0
	addi 9,1,20
	stw 9,12(1)
.LBE6159:
.LBE6162:
.LBE6171:
.LBB6172:
.LBB6167:
	.loc 6 1541 0
	bne- 0,.L716
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 61, -24
.LVL1017:
.L687:
.LBE6167:
.LBE6172:
	.loc 6 453 0
	lis 9,.LC27@ha
	lfs 0,.LC27@l(9)
	fcmpu 7,31,0
	bne- 7,.L717
.LVL1018:
.L706:
	addi 30,1,8
.LVL1019:
	.loc 6 498 0
	lis 29,.LC4@ha
.LBB6173:
.LBB6174:
.LBB6175:
	.loc 4 501 0
	mr 3,30
.LBE6175:
.LBE6174:
.LBE6173:
	.loc 6 498 0
	la 29,.LC4@l(29)
.LEHB34:
.LBB6180:
.LBB6178:
.LBB6176:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE34:
.LBE6176:
.LBE6178:
.LBE6180:
.LBE6217:
	.loc 6 499 0
	lwz 0,92(1)
	mr 3,29
	lwz 27,44(1)
	mtlr 0
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL1020:
	lfd 29,64(1)
	lfd 30,72(1)
.LVL1021:
	lfd 31,80(1)
.LVL1022:
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI231:
	.cfi_def_cfa_offset 0
	blr
.LVL1023:
.L716:
.LCFI232:
	.cfi_restore_state
.LBB6218:
.LBB6181:
	.loc 6 4264 0
	lwz 9,732(3)
.LBB6168:
	.loc 6 1542 0
	lwz 9,52(9)
	lwz 3,716(9)
.LVL1024:
.LBE6168:
.LBE6181:
	.loc 6 448 0
	cmpwi 7,3,0
	beq- 7,.L687
	.loc 6 450 0
	lwz 9,0(3)
	addi 30,1,8
	lwz 0,88(9)
	mtctr 0
.LEHB35:
	bctrl
.LEHE35:
.LVL1025:
	mr 29,3
	addi 30,1,8
.L688:
.LVL1026:
.LBB6182:
.LBB6179:
.LBB6177:
	.loc 4 501 0
	mr 3,30
.LEHB36:
	bl _ZN5idStr8FreeDataEv
.LEHE36:
.LBE6177:
.LBE6179:
.LBE6182:
.LBE6218:
	.loc 6 499 0
	lwz 0,92(1)
	mr 3,29
	lwz 27,44(1)
	mtlr 0
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL1027:
	lfd 29,64(1)
	lfd 30,72(1)
.LVL1028:
	lfd 31,80(1)
.LVL1029:
	addi 1,1,88
	.cfi_remember_state
.LCFI233:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1030:
.L717:
.LCFI234:
	.cfi_restore_state
.LBB6219:
	.loc 6 453 0 discriminator 1
	fcmpu 7,30,0
	beq- 7,.L706
	.loc 6 4264 0
	lwz 28,680(31)
.LVL1031:
	.loc 6 458 0
	cmpwi 7,28,0
	ble- 7,.L689
	.loc 6 446 0
	addi 28,28,-1
	.loc 6 458 0
	slwi 27,28,2
	b .L699
.LVL1032:
.L690:
	cmpwi 7,28,0
.LBB6183:
.LBB6184:
.LBB6185:
	.loc 4 501 0
	addi 27,27,-4
.LBE6185:
.LBE6184:
.LBE6183:
	.loc 6 458 0
	beq- 7,.L689
	addi 28,28,-1
.LVL1033:
.L699:
.LBB6188:
	.loc 6 459 0
	lwz 9,692(31)
	lwzx 29,9,27
.LVL1034:
	.loc 6 460 0
	lbz 0,241(29)
	cmpwi 7,0,0
	beq- 7,.L690
	.loc 6 460 0 is_stmt 0 discriminator 1
	lbz 0,257(29)
	cmpwi 7,0,0
	bne+ 7,.L690
	.loc 6 460 0 discriminator 3
	lwz 3,732(31)
	addi 30,1,8
	lwz 9,0(3)
	lwz 0,124(9)
	mtctr 0
.LEHB37:
	bctrl
.LVL1035:
	lwz 3,732(31)
	fmr 29,1
	addi 30,1,8
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	.loc 6 460 0 discriminator 1
	fmr 2,1
	mr 3,29
	fmr 1,29
	addi 4,29,56
	bl _ZN8idWindow8ContainsERK11idRectangleff
	cmpwi 7,3,0
	beq- 7,.L690
	.loc 6 462 0 is_stmt 1
	lwz 3,728(31)
	addi 30,1,8
	lbz 4,210(29)
	bl _ZN15idDeviceContext9SetCursorEi
	.loc 6 463 0
	li 0,1
	stb 0,724(29)
	.loc 6 465 0
	lwz 3,720(31)
	cmpw 7,3,29
	beq- 7,.L691
	.loc 6 466 0
	cmpwi 7,3,0
	addi 30,1,8
	beq- 7,.L692
	.loc 6 467 0
	lwz 9,0(3)
	addi 30,1,8
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 6 468 0
	lwz 27,720(31)
.LVL1036:
	addi 30,1,8
.LBB6189:
.LBB6190:
.LBB6191:
.LBB6192:
	.loc 4 350 0
	lwz 0,16(1)
.LBE6192:
.LBE6191:
.LBE6190:
	.loc 6 4264 0
	lwz 28,4(27)
.LVL1037:
.LBB6197:
	.loc 4 534 0
	addi 4,28,1
.LVL1038:
.LBB6195:
.LBB6193:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L718
.LVL1039:
.L693:
.LBE6193:
.LBE6195:
	.loc 4 535 0
	lwz 3,12(1)
	mr 5,28
	lwz 4,8(27)
	bl memcpy
.LBE6197:
.LBE6189:
	.loc 6 469 0
	cmpwi 7,28,0
.LBB6200:
.LBB6198:
	.loc 4 536 0
	lwz 9,12(1)
	li 0,0
	stbx 0,9,28
	.loc 4 537 0
	stw 28,8(1)
.LBE6198:
.LBE6200:
	.loc 6 469 0
	bne- 7,.L719
.LVL1040:
.L692:
	.loc 6 474 0
	stw 29,720(31)
	.loc 6 475 0
	mr 3,29
	lwz 9,0(29)
	lwz 0,80(9)
	mtctr 0
	bctrl
	.loc 6 476 0
	lwz 28,720(31)
.LVL1041:
.LBB6201:
.LBB6202:
.LBB6203:
.LBB6204:
	.loc 4 350 0
	lwz 0,16(1)
.LBE6204:
.LBE6203:
.LBE6202:
	.loc 6 4264 0
	lwz 29,4(28)
.LVL1042:
.LBB6209:
	.loc 4 534 0
	addi 4,29,1
.LVL1043:
.LBB6207:
.LBB6205:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L720
.LVL1044:
.L694:
.LBE6205:
.LBE6207:
	.loc 4 535 0
	lwz 3,12(1)
	mr 5,29
	lwz 4,8(28)
	bl memcpy
.LBE6209:
.LBE6201:
	.loc 6 477 0
	cmpwi 7,29,0
.LBB6212:
.LBB6210:
	.loc 4 536 0
	lwz 9,12(1)
	li 0,0
	stbx 0,9,29
	.loc 4 537 0
	stw 29,8(1)
.LBE6210:
.LBE6212:
	.loc 6 477 0
	bne- 7,.L721
	.loc 6 486 0
	lis 29,.LC4@ha
	la 29,.LC4@l(29)
	b .L688
.LVL1045:
.L720:
.LBB6213:
.LBB6211:
.LBB6208:
.LBB6206:
	.loc 4 351 0
	mr 3,30
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL1046:
	b .L694
.LVL1047:
.L718:
.LBE6206:
.LBE6208:
.LBE6211:
.LBE6213:
.LBB6214:
.LBB6199:
.LBB6196:
.LBB6194:
	mr 3,30
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL1048:
	b .L693
.LVL1049:
.L721:
.LBE6194:
.LBE6196:
.LBE6199:
.LBE6214:
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 478 0
	lwz 4,12(1)
	lwz 3,52(9)
	bl _ZN8idWindow10AddCommandEPKc
	.loc 6 479 0
	lwz 3,720(31)
	lis 29,.LC4@ha
	la 29,.LC4@l(29)
	addi 3,3,4
	mr 4,29
	bl _ZN5idStraSEPKc
	b .L688
.LVL1050:
.L719:
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 470 0
	lwz 4,12(1)
	lwz 3,52(9)
	bl _ZN8idWindow10AddCommandEPKc
	.loc 6 471 0
	lwz 3,720(31)
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	addi 3,3,4
	bl _ZN5idStraSEPKc
	b .L692
.LVL1051:
.L689:
.LBE6188:
	.loc 6 489 0
	lwz 3,720(31)
	cmpwi 7,3,0
	beq- 7,.L706
	.loc 6 490 0
	lwz 9,0(3)
	addi 30,1,8
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 6 491 0
	lwz 4,720(31)
	addi 30,1,8
	mr 3,30
	addi 4,4,4
	bl _ZN5idStraSERKS_
	.loc 6 492 0
	lwz 0,8(1)
	cmpwi 7,0,0
	bne- 7,.L715
	lis 29,.LC4@ha
	la 29,.LC4@l(29)
.L695:
	.loc 6 496 0
	li 0,0
	stw 0,720(31)
	b .L688
.LVL1052:
.L691:
.LBB6215:
	.loc 6 482 0
	lwz 0,48(29)
	andi. 9,0,16384
	bne+ 0,.L706
	.loc 6 483 0
	lwz 9,0(29)
	mr 3,29
	fmr 1,31
	addi 30,1,8
	lwz 0,88(9)
	fmr 2,30
	mtctr 0
	bctrl
	b .L706
.LVL1053:
.L715:
.LBE6215:
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 493 0
	lwz 4,12(1)
	lwz 3,52(9)
	bl _ZN8idWindow10AddCommandEPKc
	.loc 6 494 0
	lwz 3,720(31)
	lis 29,.LC4@ha
	la 29,.LC4@l(29)
	addi 3,3,4
	mr 4,29
	bl _ZN5idStraSEPKc
.LEHE37:
	b .L695
.LVL1054:
.L707:
	mr 31,3
.LVL1055:
.LBB6216:
.LBB6187:
.LBB6186:
	.loc 4 501 0
	mr 3,30
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB38:
	bl _Unwind_Resume
.LEHE38:
.LBE6186:
.LBE6187:
.LBE6216:
.LBE6219:
	.cfi_endproc
.LFE2908:
	.section	.gcc_except_table
.LLSDA2908:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2908-.LLSDACSB2908
.LLSDACSB2908:
	.uleb128 .LEHB34-.LFB2908
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB2908
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L707-.LFB2908
	.uleb128 0
	.uleb128 .LEHB36-.LFB2908
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB2908
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L707-.LFB2908
	.uleb128 0
	.uleb128 .LEHB38-.LFB2908
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE2908:
	.section	".text"
	.size	_ZN8idWindow16RouteMouseCoordsEff, .-_ZN8idWindow16RouteMouseCoordsEff
	.align 2
	.globl _ZN8idWindow9DebugDrawEiff
	.type	_ZN8idWindow9DebugDrawEiff, @function
_ZN8idWindow9DebugDrawEiff:
.LFB2921:
	.loc 6 985 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2921
.LVL1056:
	mflr 0
	stwu 1,-1160(1)
.LCFI235:
	.cfi_def_cfa_offset 1160
	.cfi_register 65, 0
	stw 31,1148(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,1164(1)
	stfd 31,1152(1)
	stw 24,1120(1)
	stw 25,1124(1)
	stw 26,1128(1)
	stw 27,1132(1)
	stw 28,1136(1)
	stw 29,1140(1)
	stw 30,1144(1)
.LBB6220:
.LBB6221:
	.loc 6 987 0
	lwz 9,728(3)
	cmpwi 7,9,0
	beq- 7,.L722
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 63, -8
	.cfi_offset 65, 4
.LVL1057:
.LBB6222:
.LBB6223:
.LBB6224:
.LBB6225:
	.loc 6 989 0
	lis 30,.LANCHOR0@ha
.LBE6225:
.LBE6224:
.LBE6223:
.LBB6248:
.LBB6249:
	.loc 11 90 0
	li 0,0
.LBE6249:
.LBE6248:
.LBB6251:
.LBB6228:
.LBB6226:
	.loc 6 989 0
	la 30,.LANCHOR0@l(30)
.LBE6226:
.LBE6228:
.LBE6251:
.LBB6252:
.LBB6250:
	.loc 11 90 0
	stb 0,148(9)
.LBE6250:
.LBE6252:
.LBB6253:
.LBB6229:
.LBB6227:
	.loc 2 143 0
	lwz 9,100(30)
	lwz 0,36(9)
.LBE6227:
.LBE6229:
	.loc 6 989 0
	cmpwi 7,0,1
	beq- 7,.L732
.LBB6230:
	.loc 6 991 0
	cmpwi 7,0,2
	beq- 7,.L733
.LVL1058:
.L725:
.LBE6230:
.LBE6253:
	.loc 6 1015 0
	lwz 9,728(31)
.LVL1059:
.LBB6254:
.LBB6255:
	.loc 11 90 0
	li 0,1
	stb 0,148(9)
.LVL1060:
.L722:
.LBE6255:
.LBE6254:
.LBE6222:
.LBE6221:
.LBE6220:
	.loc 6 1017 0
	lwz 0,1164(1)
	lwz 24,1120(1)
	mtlr 0
	lwz 25,1124(1)
	lwz 26,1128(1)
	lwz 27,1132(1)
	lwz 28,1136(1)
	lwz 29,1140(1)
	lwz 30,1144(1)
	lwz 31,1148(1)
.LVL1061:
	lfd 31,1152(1)
	addi 1,1,1160
	.cfi_remember_state
.LCFI236:
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
	blr
.LVL1062:
.L732:
.LCFI237:
	.cfi_restore_state
.LBB6259:
.LBB6258:
.LBB6257:
.LBB6256:
	.loc 6 990 0
	lis 9,.LC0@ha
	lwz 3,728(3)
.LVL1063:
	lfs 1,56(31)
.LVL1064:
	lis 4,_ZN15idDeviceContext8colorRedE@ha
.LVL1065:
	lfs 2,60(31)
.LVL1066:
	la 4,_ZN15idDeviceContext8colorRedE@l(4)
	lfs 3,64(31)
	lfs 4,68(31)
	lfs 5,.LC0@l(9)
.LEHB39:
	bl _ZN15idDeviceContext8DrawRectEfffffRK6idVec4
.LEHE39:
	b .L725
.LVL1067:
.L733:
.LBB6247:
.LBB6231:
.LBB6232:
.LBB6233:
.LBB6234:
	.loc 4 357 0
	li 9,20
.LBE6234:
.LBE6233:
.LBE6232:
	.loc 6 994 0
	lwz 4,512(3)
.LVL1068:
.LBB6239:
.LBB6237:
.LBB6235:
	.loc 4 356 0
	li 0,0
	.loc 4 357 0
	stw 9,24(1)
.LBE6235:
.LBE6237:
.LBE6239:
	.loc 6 994 0
	addi 3,1,16
.LBB6240:
.LBB6238:
.LBB6236:
	.loc 4 358 0
	addi 9,1,28
	.loc 4 356 0
	stw 0,16(1)
	.loc 4 358 0
	stw 9,20(1)
	.loc 4 359 0
	stb 0,28(1)
.LVL1069:
.LEHB40:
.LBE6236:
.LBE6238:
.LBE6240:
	.loc 6 994 0
	bl _ZN5idStraSEPKc
.LVL1070:
	.loc 6 996 0
	lwz 0,16(1)
	cmpwi 7,0,0
	bne- 7,.L731
	lis 30,.LANCHOR0+108@ha
	la 30,.LANCHOR0+108@l(30)
.L726:
.LVL1071:
	.loc 6 1000 0
	lfs 1,276(31)
	lis 4,.LC29@ha
	lfs 2,280(31)
	la 4,.LC29@l(4)
	lfs 3,284(31)
	addi 3,1,48
	lfs 4,288(31)
	creqv 6,6,6
	bl sprintf
	.loc 6 1001 0
	addi 4,1,48
	mr 3,30
	bl strcat
	.loc 6 1002 0
	lfs 1,56(31)
	lfs 2,60(31)
	lis 4,.LC30@ha
	lfs 3,64(31)
	la 4,.LC30@l(4)
	lfs 4,68(31)
	addi 3,1,48
	creqv 6,6,6
	bl sprintf
	.loc 6 1003 0
	addi 4,1,48
	mr 3,30
	bl strcat
	.loc 6 1004 0
	lfs 1,72(31)
	lfs 2,76(31)
	lis 4,.LC31@ha
	lfs 3,80(31)
	la 4,.LC31@l(4)
	lfs 4,84(31)
	addi 3,1,48
	creqv 6,6,6
	bl sprintf
	.loc 6 1005 0
	mr 3,30
	addi 4,1,48
	bl strcat
	.loc 6 1006 0
	lwz 3,732(31)
	lwz 9,0(3)
	lwz 0,124(9)
	mtctr 0
	bctrl
	lwz 3,732(31)
	fmr 31,1
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	.loc 6 1006 0 is_stmt 0 discriminator 1
	fmr 2,1
	lis 4,.LC32@ha
	fmr 1,31
	la 4,.LC32@l(4)
	addi 3,1,48
	creqv 6,6,6
	bl sprintf
	.loc 6 1007 0 is_stmt 1 discriminator 1
	addi 4,1,48
	mr 3,30
	bl strcat
.LVL1072:
	.loc 6 1013 0 discriminator 1
	lbz 5,211(31)
	lfs 1,468(31)
	li 0,0
	lwz 3,728(31)
	mr 4,30
	lwz 24,372(31)
	extsb 5,5
	lwz 25,376(31)
	addi 6,1,1080
	lwz 26,380(31)
	addi 7,1,1096
	lwz 27,384(31)
	li 8,1
	lwz 28,656(31)
	li 9,-1
	lwz 29,660(31)
	li 10,0
	lwz 12,664(31)
	lwz 11,668(31)
	stw 24,1080(1)
	stw 25,1084(1)
	stw 26,1088(1)
	stw 27,1092(1)
	stw 28,1096(1)
	stw 29,1100(1)
	stw 12,1104(1)
	stw 11,1108(1)
	stw 0,8(1)
	stw 0,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
.LEHE40:
.LVL1073:
.LBB6241:
.LBB6242:
.LBB6243:
	.loc 4 501 0
	addi 3,1,16
.LEHB41:
	bl _ZN5idStr8FreeDataEv
.LEHE41:
	b .L725
.LVL1074:
.L731:
.LBE6243:
.LBE6242:
.LBE6241:
	.loc 6 997 0
	addi 30,30,108
	lwz 5,20(1)
	lis 4,.LC28@ha
	mr 3,30
	la 4,.LC28@l(4)
	crxor 6,6,6
	bl sprintf
	b .L726
.L729:
	mr 31,3
.LVL1075:
.LBB6244:
.LBB6245:
.LBB6246:
	.loc 4 501 0
	addi 3,1,16
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB42:
	bl _Unwind_Resume
.LEHE42:
.LBE6246:
.LBE6245:
.LBE6244:
.LBE6231:
.LBE6247:
.LBE6256:
.LBE6257:
.LBE6258:
.LBE6259:
	.cfi_endproc
.LFE2921:
	.section	.gcc_except_table
.LLSDA2921:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2921-.LLSDACSB2921
.LLSDACSB2921:
	.uleb128 .LEHB39-.LFB2921
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB2921
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L729-.LFB2921
	.uleb128 0
	.uleb128 .LEHB41-.LFB2921
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB2921
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE2921:
	.section	".text"
	.size	_ZN8idWindow9DebugDrawEiff, .-_ZN8idWindow9DebugDrawEiff
	.align 2
	.globl _ZN8idWindow20DrawBorderAndCaptionERK11idRectangle
	.type	_ZN8idWindow20DrawBorderAndCaptionERK11idRectangle, @function
_ZN8idWindow20DrawBorderAndCaptionERK11idRectangle:
.LFB2926:
	.loc 6 1156 0
	.cfi_startproc
.LVL1076:
	mflr 0
	stwu 1,-8(1)
.LCFI238:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 9,3
	stw 0,12(1)
	.loc 6 1157 0
	lwz 0,48(3)
	.cfi_offset 65, 4
	andi. 11,0,4
	beq- 0,.L734
	.loc 6 1157 0 is_stmt 0 discriminator 1
	lis 11,.LC1@ha
	lfs 5,124(3)
	lfs 0,.LC1@l(11)
	fcmpu 7,5,0
	beq- 7,.L734
	.loc 6 1157 0 discriminator 3
	lfs 13,448(3)
	fcmpu 7,13,0
	beq- 7,.L734
.LVL1077:
	.loc 6 1158 0 is_stmt 1 discriminator 5
	lfs 1,0(4)
	lfs 2,4(4)
	lfs 3,8(4)
	lfs 4,12(4)
	addi 4,9,436
.LVL1078:
	lwz 3,728(3)
.LVL1079:
	bl _ZN15idDeviceContext8DrawRectEfffffRK6idVec4
.LVL1080:
.L734:
	.loc 6 1160 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI239:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2926:
	.size	_ZN8idWindow20DrawBorderAndCaptionERK11idRectangle, .-_ZN8idWindow20DrawBorderAndCaptionERK11idRectangle
	.align 2
	.globl _ZN8idWindow15SetupTransformsEff
	.type	_ZN8idWindow15SetupTransformsEff, @function
_ZN8idWindow15SetupTransformsEff:
.LFB2927:
	.loc 6 1167 0
	.cfi_startproc
.LVL1081:
	stwu 1,-80(1)
.LCFI240:
	.cfi_def_cfa_offset 80
	mflr 0
	stw 30,56(1)
.LBB6336:
	.loc 6 1168 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -24
	.cfi_register 65, 0
	la 30,.LANCHOR0@l(30)
.LBE6336:
	.loc 6 1167 0
	stw 26,40(1)
.LBB6452:
	.loc 6 1168 0
	addi 26,30,16528
	.cfi_offset 26, -40
.LBE6452:
	.loc 6 1167 0
	stw 28,48(1)
	mr 28,3
	.cfi_offset 28, -32
.LBB6453:
	.loc 6 1168 0
	mr 3,26
.LVL1082:
.LBE6453:
	.loc 6 1167 0
	stfd 30,64(1)
	fmr 30,2
	.cfi_offset 62, -16
	stfd 31,72(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,84(1)
	stw 25,36(1)
	stw 27,44(1)
	stw 29,52(1)
	stw 31,60(1)
.LBB6454:
	.loc 6 1168 0
	.cfi_offset 31, -20
	.cfi_offset 29, -28
	.cfi_offset 27, -36
	.cfi_offset 25, -44
	.cfi_offset 65, 4
	bl __cxa_guard_acquire
.LVL1083:
	cmpwi 7,3,0
	bne- 7,.L755
	.loc 6 1169 0
	addi 31,30,16536
	mr 3,31
	bl __cxa_guard_acquire
	cmpwi 7,3,0
	bne- 7,.L756
.L738:
	lis 27,mat3_identity@ha
	lis 31,.LANCHOR0+16492@ha
.LBE6454:
	.loc 6 1167 0
	li 10,0
	la 31,.LANCHOR0+16492@l(31)
	la 29,mat3_identity@l(27)
.L739:
.LBB6455:
.LBB6337:
.LBB6338:
.LBB6339:
.LBB6340:
.LBB6341:
	.loc 13 424 0
	mr 11,29
.LBE6341:
.LBE6340:
	.file 17 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Matrix.h"
	.loc 17 333 0
	cmpwi 7,10,24
.LBB6344:
.LBB6342:
	.loc 13 424 0
	lwzux 0,11,10
	mr 9,31
	stwux 0,9,10
.LBE6342:
.LBE6344:
	.loc 17 333 0
	addi 10,10,12
.LBB6345:
.LBB6343:
	.loc 13 425 0
	lwz 8,4(11)
	.loc 13 426 0
	lwz 0,8(11)
	.loc 13 425 0
	stw 8,4(9)
	.loc 13 426 0
	stw 0,8(9)
.LBE6343:
.LBE6345:
	.loc 17 333 0
	bne+ 7,.L739
.LBE6339:
.LBE6338:
.LBE6337:
.LBB6346:
.LBB6347:
	.loc 13 412 0
	lis 9,.LC1@ha
.LBE6347:
.LBE6346:
.LBB6351:
	.loc 6 1174 0
	lfs 11,488(28)
.LBE6351:
.LBB6386:
.LBB6348:
	.loc 13 412 0
	lfs 0,.LC1@l(9)
.LBE6348:
.LBE6386:
	.loc 6 1172 0
	lfs 12,92(28)
	lfs 13,88(28)
.LBB6387:
	.loc 6 1174 0
	fcmpu 7,11,0
.LBE6387:
	.loc 6 1172 0
	fadds 2,30,12
.LVL1084:
.LBB6388:
.LBB6349:
	.loc 13 412 0
	stfs 0,16552(30)
.LBE6349:
.LBE6388:
	.loc 6 1172 0
	fadds 31,13,31
.LVL1085:
.LBB6389:
.LBB6350:
	.loc 13 411 0
	stfs 2,16548(30)
	.loc 13 410 0
	stfs 31,16544(30)
.LBE6350:
.LBE6389:
.LBB6390:
	.loc 6 1174 0
	bne- 7,.L757
.LVL1086:
.L740:
.LBE6390:
.LBB6391:
	.loc 6 1181 0
	lis 9,.LC1@ha
	lfs 13,200(28)
	lfs 0,.LC1@l(9)
	fcmpu 7,13,0
	bne- 7,.L744
	.loc 6 1181 0 is_stmt 0 discriminator 1
	lfs 13,204(28)
	fcmpu 7,13,0
	bne- 7,.L744
.L745:
.LVL1087:
.LBE6391:
.LBB6411:
.LBB6412:
.LBB6413:
.LBB6414:
.LBB6415:
	.loc 13 501 0 is_stmt 1
	lfs 13,16492(30)
	lis 9,.LC33@ha
	lfs 0,mat3_identity@l(27)
	fsubs 0,13,0
	stfs 0,24(1)
	lfs 0,.LC33@l(9)
	lwz 0,24(1)
.LBB6416:
.LBB6417:
	.file 18 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Math.h"
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6417:
.LBE6416:
	.loc 13 501 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,13,0
	bgt- 7,.L749
.LVL1088:
	.loc 13 505 0
	lfs 12,16496(30)
	lfs 13,4(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6418:
.LBB6419:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6419:
.LBE6418:
	.loc 13 505 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,13,0
	bgt- 7,.L749
.LVL1089:
.LBB6420:
.LBB6421:
	.loc 13 509 0
	lfs 12,16500(30)
	lfs 13,8(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6422:
.LBB6423:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6423:
.LBE6422:
.LBE6421:
.LBE6420:
.LBE6415:
.LBE6414:
	.loc 17 571 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,0,13
	blt- 7,.L749
.LVL1090:
.LBB6424:
.LBB6425:
	.loc 13 501 0
	lfs 12,16504(30)
	lfs 13,12(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6426:
.LBB6427:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6427:
.LBE6426:
	.loc 13 501 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,13,0
	bgt- 7,.L749
.LVL1091:
	.loc 13 505 0
	lfs 12,16508(30)
	lfs 13,16(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6428:
.LBB6429:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6429:
.LBE6428:
	.loc 13 505 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,13,0
	bgt- 7,.L749
.LVL1092:
.LBB6430:
.LBB6431:
	.loc 13 509 0
	lfs 12,16512(30)
	lfs 13,20(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6432:
.LBB6433:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6433:
.LBE6432:
.LBE6431:
.LBE6430:
.LBE6425:
.LBE6424:
	.loc 17 571 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,0,13
	blt- 7,.L749
.LVL1093:
.LBB6434:
.LBB6435:
	.loc 13 501 0
	lfs 12,16516(30)
	lfs 13,24(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6436:
.LBB6437:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6437:
.LBE6436:
	.loc 13 501 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,13,0
	bgt- 7,.L749
.LVL1094:
	.loc 13 505 0
	lfs 12,16520(30)
	lfs 13,28(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6438:
.LBB6439:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6439:
.LBE6438:
	.loc 13 505 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,13,0
	bgt- 7,.L749
.LVL1095:
.LBB6440:
.LBB6441:
	.loc 13 509 0
	lfs 12,16524(30)
	lfs 13,32(29)
	fsubs 13,12,13
	stfs 13,24(1)
	lwz 0,24(1)
.LBB6442:
.LBB6443:
	.loc 18 781 0
	rlwinm 0,0,0,1,31
.LBE6443:
.LBE6442:
.LBE6441:
.LBE6440:
.LBE6435:
.LBE6434:
	.loc 17 571 0
	stw 0,24(1)
	lfs 13,24(1)
	fcmpu 7,0,13
	bnl+ 7,.L736
.LVL1096:
.L749:
.LBE6413:
.LBE6412:
.LBE6411:
	.loc 6 1190 0
	lwz 3,728(28)
	addi 4,30,16544
	mr 5,31
	bl _ZN15idDeviceContext16SetTransformInfoERK6idVec3RK6idMat3
.LVL1097:
.L736:
.LBE6455:
	.loc 6 1192 0
	lwz 0,84(1)
	lwz 25,36(1)
	mtlr 0
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
.LVL1098:
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 30,64(1)
.LVL1099:
	lfd 31,72(1)
.LVL1100:
	addi 1,1,80
	.cfi_remember_state
.LCFI241:
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
	blr
.LVL1101:
.L744:
.LCFI242:
	.cfi_restore_state
.LBB6456:
.LBB6444:
.LBB6392:
	.loc 6 1182 0
	addi 25,30,16656
	mr 3,25
	bl __cxa_guard_acquire
	cmpwi 7,3,0
	bne- 7,.L758
.L746:
	lis 9,.LANCHOR0+16664@ha
.LBE6392:
.LBE6444:
.LBB6445:
.LBB6352:
.LBB6353:
.LBB6354:
	.loc 17 333 0
	li 8,0
	la 9,.LANCHOR0+16664@l(9)
.L747:
.LBE6354:
.LBE6353:
.LBE6352:
.LBE6445:
.LBB6446:
.LBB6408:
.LBB6393:
.LBB6394:
.LBB6395:
.LBB6396:
.LBB6397:
	.loc 13 424 0
	mr 10,29
.LBE6397:
.LBE6396:
	.loc 17 333 0
	cmpwi 7,8,24
.LBB6400:
.LBB6398:
	.loc 13 424 0
	lwzux 0,10,8
	mr 11,9
	stwux 0,11,8
.LBE6398:
.LBE6400:
	.loc 17 333 0
	addi 8,8,12
.LBB6401:
.LBB6399:
	.loc 13 425 0
	lwz 7,4(10)
	.loc 13 426 0
	lwz 0,8(10)
	.loc 13 425 0
	stw 7,4(11)
	.loc 13 426 0
	stw 0,8(11)
.LBE6399:
.LBE6401:
	.loc 17 333 0
	bne+ 7,.L747
.LVL1102:
.LBE6395:
.LBE6394:
.LBE6393:
	.loc 6 1185 0
	lwz 0,204(28)
	.loc 6 1184 0
	lwz 11,200(28)
	.loc 6 1185 0
	stw 0,16676(30)
	.loc 6 1184 0
	stw 11,16668(30)
.LVL1103:
.LBE6408:
.LBE6446:
.LBB6447:
.LBB6383:
.LBB6363:
.LBB6361:
	.loc 6 1186 0
	mr 11,31
.LVL1104:
.L748:
.LBE6361:
.LBE6363:
.LBE6383:
.LBE6447:
.LBB6448:
.LBB6409:
	.loc 6 1167 0
	lfs 0,4(11)
.LBB6402:
.LBB6403:
	.loc 17 520 0
	lfs 13,20(9)
	lfs 11,12(9)
	lfs 12,16(9)
	fmuls 11,0,11
	lfs 8,0(9)
	fmuls 12,0,12
	lfs 9,4(9)
	fmuls 0,0,13
	lfs 10,8(9)
.LBE6403:
.LBE6402:
	.loc 6 1167 0
	lfs 13,0(11)
.LBB6406:
.LBB6404:
	.loc 17 520 0
	fmadds 11,8,13,11
	lfs 8,24(9)
	fmadds 12,9,13,12
	lfs 9,28(9)
	fmadds 13,10,13,0
.LBE6404:
.LBE6406:
	.loc 6 1167 0
	lfs 0,8(11)
.LBB6407:
.LBB6405:
	.loc 17 520 0
	lfs 10,32(9)
	fmadds 11,8,0,11
	fmadds 12,9,0,12
	fmadds 0,10,0,13
	.loc 17 522 0
	stfs 11,0(11)
	stfs 12,4(11)
	stfs 0,8(11)
	.loc 17 523 0
	addi 11,11,12
	.loc 17 516 0
	cmpw 7,11,26
	.loc 17 520 0
	stfs 11,8(1)
.LVL1105:
	stfs 12,12(1)
.LVL1106:
	stfs 0,16(1)
.LVL1107:
	.loc 17 516 0
	bne+ 7,.L748
	b .L745
.LVL1108:
.L755:
.LBE6405:
.LBE6407:
.LBE6409:
.LBE6448:
	.loc 6 1168 0 discriminator 1
	mr 3,26
	.loc 6 1169 0 discriminator 1
	addi 31,30,16536
	.loc 6 1168 0 discriminator 1
	bl __cxa_guard_release
	.loc 6 1169 0 discriminator 1
	mr 3,31
	bl __cxa_guard_acquire
	cmpwi 7,3,0
	beq+ 7,.L738
.L756:
	mr 3,31
	bl __cxa_guard_release
	b .L738
.LVL1109:
.L757:
.LBB6449:
.LBB6384:
	.loc 6 1175 0
	addi 25,30,16560
	mr 3,25
	bl __cxa_guard_acquire
.LVL1110:
	cmpwi 7,3,0
	bne- 7,.L759
.L741:
	.loc 6 1176 0
	addi 25,30,16568
	mr 3,25
	bl __cxa_guard_acquire
	cmpwi 7,3,0
	bne- 7,.L760
.L742:
	.loc 6 4264 0
	lwz 0,488(28)
.LVL1111:
	.loc 6 1178 0
	addi 3,30,16588
.LBB6364:
.LBB6365:
.LBB6366:
.LBB6367:
	.loc 13 424 0
	lwz 10,16576(30)
.LBE6367:
.LBE6366:
.LBB6371:
.LBB6372:
	lwz 6,16544(30)
	.loc 13 425 0
	lwz 7,16548(30)
	.loc 13 426 0
	lwz 8,16552(30)
.LBE6372:
.LBE6371:
.LBB6374:
.LBB6368:
	.loc 13 425 0
	lwz 11,16580(30)
	.loc 13 426 0
	lwz 9,16584(30)
.LBE6368:
.LBE6374:
	.file 19 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Rotation.h"
	.loc 19 111 0
	stw 0,16612(30)
	.loc 19 112 0
	li 0,0
.LBB6375:
.LBB6369:
	.loc 13 424 0
	stw 10,16600(30)
.LBE6369:
.LBE6375:
.LBB6376:
.LBB6373:
	stw 6,16588(30)
	.loc 13 425 0
	stw 7,16592(30)
	.loc 13 426 0
	stw 8,16596(30)
.LVL1112:
.LBE6373:
.LBE6376:
.LBB6377:
.LBB6370:
	.loc 13 425 0
	stw 11,16604(30)
	.loc 13 426 0
	stw 9,16608(30)
.LBE6370:
.LBE6377:
	.loc 19 112 0
	stb 0,16652(30)
.LBE6365:
.LBE6364:
	.loc 6 1178 0
	bl _ZNK10idRotation6ToMat3Ev
.LVL1113:
.LBB6378:
.LBB6362:
	.loc 17 333 0
	li 10,0
.L743:
.LBB6355:
.LBB6356:
	.loc 13 424 0
	mr 11,3
	mr 9,31
	lwzux 0,11,10
.LBE6356:
.LBE6355:
	.loc 17 333 0
	cmpwi 7,10,24
.LBB6359:
.LBB6357:
	.loc 13 424 0
	stwux 0,9,10
.LBE6357:
.LBE6359:
	.loc 17 333 0
	addi 10,10,12
.LBB6360:
.LBB6358:
	.loc 13 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 13 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE6358:
.LBE6360:
	.loc 17 333 0
	bne+ 7,.L743
	b .L740
.LVL1114:
.L758:
.LBE6362:
.LBE6378:
.LBE6384:
.LBE6449:
.LBB6450:
.LBB6410:
	.loc 6 1182 0 discriminator 1
	mr 3,25
	bl __cxa_guard_release
	b .L746
.L760:
.LVL1115:
.LBE6410:
.LBE6450:
.LBB6451:
.LBB6385:
.LBB6379:
.LBB6380:
	.loc 13 396 0 discriminator 1
	li 0,0
	.loc 13 398 0 discriminator 1
	lis 9,.LC0@ha
	.loc 13 396 0 discriminator 1
	stw 0,16576(30)
.LBE6380:
.LBE6379:
	.loc 6 1176 0 discriminator 1
	mr 3,25
.LBB6382:
.LBB6381:
	.loc 13 397 0 discriminator 1
	stw 0,16580(30)
	.loc 13 398 0 discriminator 1
	lwz 0,.LC0@l(9)
	stw 0,16584(30)
.LBE6381:
.LBE6382:
	.loc 6 1176 0 discriminator 1
	bl __cxa_guard_release
	b .L742
.LVL1116:
.L759:
	.loc 6 1175 0 discriminator 1
	mr 3,25
	bl __cxa_guard_release
	b .L741
.LBE6385:
.LBE6451:
.LBE6456:
	.cfi_endproc
.LFE2927:
	.size	_ZN8idWindow15SetupTransformsEff, .-_ZN8idWindow15SetupTransformsEff
	.align 2
	.globl _ZN8idWindow5SetDCEP15idDeviceContext
	.type	_ZN8idWindow5SetDCEP15idDeviceContext, @function
_ZN8idWindow5SetDCEP15idDeviceContext:
.LFB2930:
	.loc 6 1329 0
	.cfi_startproc
.LVL1117:
	stwu 1,-24(1)
.LCFI243:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 28,8(1)
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 0,28(1)
	stw 31,20(1)
.LBB6457:
	.loc 6 1330 0
	stw 4,728(30)
	.loc 6 1332 0
	lfs 1,108(3)
	lfs 2,112(3)
	mr 3,4
.LVL1118:
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl _ZN15idDeviceContext7SetSizeEff
.LVL1119:
	.loc 6 4264 0
	lwz 28,680(30)
.LVL1120:
.LBB6458:
	.loc 6 1335 0
	cmpwi 7,28,0
	ble- 7,.L761
	li 31,0
.LVL1121:
.L763:
	.loc 6 1336 0 discriminator 2
	lwz 9,692(30)
	slwi 0,31,2
	mr 4,29
	.loc 6 1335 0 discriminator 2
	addi 31,31,1
.LVL1122:
	.loc 6 1336 0 discriminator 2
	lwzx 3,9,0
	bl _ZN8idWindow5SetDCEP15idDeviceContext
.LVL1123:
	.loc 6 1335 0 discriminator 2
	cmpw 7,31,28
	bne+ 7,.L763
.LVL1124:
.L761:
.LBE6458:
.LBE6457:
	.loc 6 1338 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1125:
	lwz 30,16(1)
.LVL1126:
	lwz 31,20(1)
	addi 1,1,24
.LCFI244:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2930:
	.size	_ZN8idWindow5SetDCEP15idDeviceContext, .-_ZN8idWindow5SetDCEP15idDeviceContext
	.align 2
	.globl _ZN8idWindow14CalcClientRectEff
	.type	_ZN8idWindow14CalcClientRectEff, @function
_ZN8idWindow14CalcClientRectEff:
.LFB2933:
	.loc 6 1371 0
	.cfi_startproc
.LVL1127:
	.loc 6 1374 0
	lwz 0,48(3)
	.loc 6 1372 0
	lwz 8,276(3)
	.loc 6 1374 0
	andis. 9,0,2
	.loc 6 1372 0
	lwz 10,280(3)
	lwz 11,284(3)
	lwz 9,288(3)
	stw 8,56(3)
	stw 10,60(3)
	stw 11,64(3)
	stw 9,68(3)
	.loc 6 1374 0
	bne- 0,.L766
	lfs 13,284(3)
	lfs 10,280(3)
	lfs 0,288(3)
	lfs 9,276(3)
.L767:
	.loc 6 1379 0
	andi. 11,0,384
	beq- 0,.L778
	.loc 6 1379 0 is_stmt 0 discriminator 1
	lwz 9,676(3)
	cmpwi 7,9,0
	beq- 7,.L778
	.loc 6 1382 0 is_stmt 1
	andi. 11,0,128
	beq- 0,.L771
	.loc 6 1383 0
	lfs 11,284(9)
	lis 9,.LC34@ha
	lfs 8,.LC34@l(9)
	.loc 6 1393 0
	lis 11,.LC1@ha
	.loc 6 1383 0
	fsubs 11,11,13
	lfs 12,60(3)
	.loc 6 1392 0
	lwz 10,64(3)
	.loc 6 1390 0
	fadds 2,2,12
.LVL1128:
	.loc 6 1383 0
	fmuls 11,11,8
	.loc 6 1392 0
	stw 10,80(3)
	.loc 6 1390 0
	stfs 2,60(3)
	.loc 6 1389 0
	fadds 1,1,11
.LVL1129:
	.loc 6 1393 0
	lfs 11,.LC1@l(11)
	.loc 6 1392 0
	lwz 8,60(3)
	.loc 6 1393 0
	fcmpu 7,0,11
	.loc 6 1392 0
	lwz 11,68(3)
	.loc 6 1389 0
	stfs 1,56(3)
	.loc 6 1392 0
	stw 8,76(3)
	lwz 7,56(3)
	stw 11,84(3)
	stw 7,72(3)
	.loc 6 1393 0
	bgt- 7,.L779
.L772:
.LVL1130:
.LBB6459:
.LBB6460:
	.loc 6 1412 0
	lfs 12,.LC34@l(9)
.LBE6460:
.LBE6459:
	.loc 6 1414 0
.LBB6465:
.LBB6461:
	.loc 6 1412 0
	fmadds 13,13,12,9
.LVL1131:
	fmadds 0,0,12,10
.LVL1132:
	.loc 13 115 0
	stfs 13,88(3)
	.loc 13 116 0
	stfs 0,92(3)
.LBE6461:
.LBE6465:
	.loc 6 1414 0
	blr
.LVL1133:
.L778:
	.loc 6 1379 0
	lfs 11,56(3)
	lis 9,.LC34@ha
	lfs 12,60(3)
.L769:
	.loc 6 1389 0
	fadds 1,1,11
.LVL1134:
	.loc 6 1393 0
	lis 11,.LC1@ha
	.loc 6 1390 0
	fadds 2,2,12
.LVL1135:
	.loc 6 1393 0
	lfs 11,.LC1@l(11)
	.loc 6 1392 0
	lwz 10,64(3)
	.loc 6 1389 0
	stfs 1,56(3)
	.loc 6 1393 0
	fcmpu 7,0,11
	.loc 6 1390 0
	stfs 2,60(3)
	.loc 6 1392 0
	lwz 7,56(3)
	lwz 8,60(3)
	lwz 11,68(3)
	stw 7,72(3)
	stw 8,76(3)
	stw 10,80(3)
	stw 11,84(3)
	.loc 6 1393 0
	bng- 7,.L772
.L779:
	.loc 6 1393 0 is_stmt 0 discriminator 1
	fcmpu 7,13,11
	bng- 7,.L772
	.loc 6 1395 0 is_stmt 1 discriminator 4
	andi. 11,0,4
	beq- 0,.L775
	.loc 6 1395 0 is_stmt 0 discriminator 1
	lfs 12,124(3)
	fcmpu 7,12,11
	beq- 7,.L775
	.loc 6 1398 0 is_stmt 1
	lfs 11,80(3)
	.loc 6 1396 0
	fadds 1,1,12
	.loc 6 1399 0
	lfs 8,84(3)
	.loc 6 1397 0
	fadds 2,2,12
	.loc 6 1398 0
	fsubs 11,11,12
	.loc 6 1399 0
	fsubs 12,8,12
	.loc 6 1396 0
	stfs 1,72(3)
	.loc 6 1397 0
	stfs 2,76(3)
	.loc 6 1398 0
	stfs 11,80(3)
	.loc 6 1399 0
	stfs 12,84(3)
.L775:
	.loc 6 1402 0
	lwz 11,72(3)
	.loc 6 1403 0
	lis 10,.LC35@ha
	.loc 6 1402 0
	lwz 0,76(3)
	.loc 6 1414 0
	.loc 6 1402 0
	stw 11,656(3)
	stw 0,660(3)
	lwz 11,80(3)
	lwz 0,84(3)
	stw 11,664(3)
	stw 0,668(3)
	.loc 6 1403 0
	lfs 12,.LC35@l(10)
	lfs 8,656(3)
	.loc 6 1405 0
	lfs 11,660(3)
	.loc 6 1404 0
	lfs 7,664(3)
	.loc 6 1403 0
	fadds 8,8,12
	.loc 6 1406 0
	lfs 4,668(3)
	.loc 6 1405 0
	fadds 11,11,12
	.loc 6 1404 0
	fsubs 7,7,12
	.loc 6 1408 0
	lfs 5,128(3)
	.loc 6 1406 0
	fsubs 12,4,12
	.loc 6 1409 0
	lfs 6,132(3)
	.loc 6 1408 0
	fadds 8,8,5
	.loc 6 1409 0
	fadds 11,11,6
	.loc 6 1404 0
	stfs 7,664(3)
	.loc 6 1406 0
	stfs 12,668(3)
.LBB6466:
.LBB6462:
	.loc 6 1412 0
	lfs 12,.LC34@l(9)
.LBE6462:
.LBE6466:
	.loc 6 1408 0
	stfs 8,656(3)
.LBB6467:
.LBB6463:
	.loc 6 1412 0
	fmadds 13,13,12,9
.LBE6463:
.LBE6467:
	.loc 6 1409 0
	stfs 11,660(3)
.LVL1136:
.LBB6468:
.LBB6464:
	.loc 6 1412 0
	fmadds 0,0,12,10
.LVL1137:
	.loc 13 115 0
	stfs 13,88(3)
	.loc 13 116 0
	stfs 0,92(3)
.LBE6464:
.LBE6468:
	.loc 6 1414 0
	blr
.LVL1138:
.L766:
.LBB6469:
.LBB6470:
	.loc 3 423 0
	lfs 9,276(3)
	.loc 6 4264 0
	lfs 13,284(3)
.LBE6470:
.LBE6469:
	lfs 10,280(3)
	lfs 0,288(3)
	.loc 6 1375 0
	fsubs 11,9,13
	.loc 6 1376 0
	fsubs 12,10,0
	.loc 6 1375 0
	stfs 11,56(3)
	.loc 6 1376 0
	stfs 12,60(3)
	b .L767
.LVL1139:
.L771:
	.loc 6 1385 0
	lfs 12,288(9)
	lis 9,.LC34@ha
	lfs 8,.LC34@l(9)
	fsubs 12,12,0
	lfs 11,56(3)
	fmuls 12,12,8
	b .L769
	.cfi_endproc
.LFE2933:
	.size	_ZN8idWindow14CalcClientRectEff, .-_ZN8idWindow14CalcClientRectEff
	.align 2
	.globl _ZN8idWindow4SizeEffff
	.type	_ZN8idWindow4SizeEffff, @function
_ZN8idWindow4SizeEffff:
.LFB2905:
	.loc 6 402 0
	.cfi_startproc
.LVL1140:
	mflr 0
	stwu 1,-40(1)
.LCFI245:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL1141:
	stw 0,44(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB6487:
.LBB6488:
.LBB6489:
.LBB6490:
.LBB6491:
.LBB6492:
	.loc 3 410 0
	stfs 1,276(3)
.LBE6492:
.LBE6491:
.LBE6490:
	.loc 3 411 0
	lwz 29,264(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LBB6514:
.LBB6507:
.LBB6502:
	.loc 3 410 0
	stfs 2,280(3)
.LBE6502:
.LBE6507:
.LBE6514:
	.loc 3 411 0
	cmpwi 7,29,0
.LBB6515:
.LBB6508:
.LBB6503:
	.loc 3 410 0
	stfs 3,284(3)
	stfs 4,288(3)
.LBE6503:
.LBE6508:
.LBE6515:
	.loc 3 411 0
	beq- 7,.L781
.LVL1142:
.LBE6489:
	.loc 6 4264 0
	lwz 30,268(3)
.LBB6518:
.LBB6516:
	.loc 3 412 0
	lwz 10,276(3)
.LBB6509:
.LBB6504:
	.loc 3 53 0
	cmpwi 7,30,0
.LBE6504:
.LBE6509:
	.loc 3 412 0
	lwz 11,280(3)
	lwz 9,284(3)
	lwz 0,288(3)
	stw 10,8(1)
	stw 11,12(1)
	stw 9,16(1)
	stw 0,20(1)
.LBB6510:
.LBB6505:
	.loc 3 53 0
	beq- 7,.L784
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L786
.LVL1143:
.L782:
.LBE6505:
.LBE6510:
.LBB6511:
.LBB6512:
	.loc 10 205 0
	li 4,2
	addi 3,1,8
	bl _ZNK6idVec48ToStringEi
	mr 4,30
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL1144:
.L781:
.LBE6512:
.LBE6511:
.LBE6516:
.LBE6518:
.LBE6488:
	.loc 6 409 0
	lis 9,.LC1@ha
	mr 3,31
	lfs 1,.LC1@l(9)
	fmr 2,1
	bl _ZN8idWindow14CalcClientRectEff
.LBE6487:
	.loc 6 410 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1145:
	addi 1,1,40
	.cfi_remember_state
.LCFI246:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1146:
.L786:
.LCFI247:
	.cfi_restore_state
.LBB6521:
.LBB6520:
.LBB6519:
.LBB6517:
.LBB6513:
.LBB6506:
.LBB6493:
.LBB6494:
.LBB6495:
.LBB6496:
	.loc 10 241 0
	mr 3,29
.LVL1147:
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1148:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L787
.LVL1149:
.L784:
.LBE6496:
.LBE6495:
.LBE6494:
.LBE6493:
	.loc 3 59 0
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L782
.LVL1150:
.L787:
.LBB6501:
.LBB6500:
.LBB6499:
.LBB6498:
.LBB6497:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL1151:
	b .L782
.LBE6497:
.LBE6498:
.LBE6499:
.LBE6500:
.LBE6501:
.LBE6506:
.LBE6513:
.LBE6517:
.LBE6519:
.LBE6520:
.LBE6521:
	.cfi_endproc
.LFE2905:
	.size	_ZN8idWindow4SizeEffff, .-_ZN8idWindow4SizeEffff
	.align 2
	.globl _ZN8idWindow9CalcRectsEff
	.type	_ZN8idWindow9CalcRectsEff, @function
_ZN8idWindow9CalcRectsEff:
.LFB2928:
	.loc 6 1199 0
	.cfi_startproc
.LVL1152:
	stwu 1,-40(1)
.LCFI248:
	.cfi_def_cfa_offset 40
.LBB6522:
	.loc 6 1200 0
	lis 9,.LC1@ha
.LBE6522:
	.loc 6 1199 0
	mflr 0
	stfd 30,24(1)
	fmr 30,1
	.cfi_offset 62, -16
	.cfi_register 65, 0
.LBB6549:
	.loc 6 1200 0
	lfs 1,.LC1@l(9)
.LVL1153:
.LBE6549:
	.loc 6 1199 0
	stfd 31,32(1)
	fmr 31,2
	.cfi_offset 63, -8
.LBB6550:
	.loc 6 1200 0
	fmr 2,1
.LVL1154:
.LBE6550:
	.loc 6 1199 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -20
	stw 29,12(1)
	stw 0,44(1)
	stw 30,16(1)
.LBB6551:
	.loc 6 1200 0
	.cfi_offset 30, -24
	.cfi_offset 65, 4
	.cfi_offset 29, -28
	bl _ZN8idWindow14CalcClientRectEff
.LVL1155:
	.loc 6 4264 0
	lwz 29,696(31)
.LBB6523:
.LBB6524:
	.loc 12 45 0
	lfs 11,56(31)
	.loc 12 46 0
	lfs 12,60(31)
.LBE6524:
.LBE6523:
.LBB6528:
	.loc 6 1206 0
	cmpwi 7,29,0
.LBE6528:
.LBB6529:
.LBB6530:
	.loc 12 45 0
	lfs 13,72(31)
.LBE6530:
.LBE6529:
.LBB6534:
.LBB6525:
	fadds 11,30,11
.LBE6525:
.LBE6534:
.LBB6535:
.LBB6531:
	.loc 12 46 0
	lfs 0,76(31)
.LBE6531:
.LBE6535:
.LBB6536:
.LBB6526:
	fadds 12,31,12
.LBE6526:
.LBE6536:
.LBB6537:
.LBB6532:
	.loc 12 45 0
	fadds 13,30,13
	.loc 12 46 0
	fadds 0,31,0
.LBE6532:
.LBE6537:
.LBB6538:
.LBB6527:
	.loc 12 45 0
	stfs 11,56(31)
	.loc 12 46 0
	stfs 12,60(31)
.LVL1156:
.LBE6527:
.LBE6538:
.LBB6539:
.LBB6533:
	.loc 12 45 0
	stfs 13,72(31)
	.loc 12 46 0
	stfs 0,76(31)
.LBE6533:
.LBE6539:
	.loc 6 1203 0
	stfs 11,36(31)
	.loc 6 1204 0
	stfs 12,40(31)
.LBB6540:
	.loc 6 1206 0
	ble- 7,.L789
	li 30,0
.LVL1157:
.L791:
	.loc 6 1207 0
	lwz 9,708(31)
	slwi 0,30,3
	.loc 6 1206 0
	addi 30,30,1
.LVL1158:
	.loc 6 1207 0
	lwzx 3,9,0
	cmpwi 7,3,0
	beq- 7,.L790
	.loc 6 1208 0
	lfs 1,100(31)
	lfs 2,104(31)
	fadds 1,13,1
	fadds 2,0,2
	bl _ZN8idWindow9CalcRectsEff
	lfs 13,72(31)
	lfs 0,76(31)
.L790:
.LVL1159:
	.loc 6 1206 0
	cmpw 7,30,29
	bne+ 7,.L791
	lfs 11,56(31)
	lfs 12,60(31)
.LVL1160:
.L789:
.LBE6540:
.LBB6541:
.LBB6542:
	.loc 12 45 0
	fsubs 11,11,30
	.loc 12 46 0
	fsubs 12,12,31
.LBE6542:
.LBE6541:
.LBB6544:
.LBB6545:
	.loc 12 45 0
	fsubs 30,13,30
.LVL1161:
	.loc 12 46 0
	fsubs 31,0,31
.LVL1162:
.LBE6545:
.LBE6544:
.LBB6547:
.LBB6543:
	.loc 12 45 0
	stfs 11,56(31)
	.loc 12 46 0
	stfs 12,60(31)
.LBE6543:
.LBE6547:
.LBB6548:
.LBB6546:
	.loc 12 45 0
	stfs 30,72(31)
	.loc 12 46 0
	stfs 31,76(31)
.LBE6546:
.LBE6548:
.LBE6551:
	.loc 6 1213 0
	lwz 0,44(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1163:
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
.LCFI249:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2928:
	.size	_ZN8idWindow9CalcRectsEff, .-_ZN8idWindow9CalcRectsEff
	.align 2
	.globl _ZN8idWindow15SetupBackgroundEv
	.type	_ZN8idWindow15SetupBackgroundEv, @function
_ZN8idWindow15SetupBackgroundEv:
.LFB2934:
	.loc 6 1421 0
	.cfi_startproc
.LVL1164:
	mflr 0
	stwu 1,-24(1)
.LCFI250:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL1165:
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB6573:
.LBB6574:
	.loc 3 772 0
	lwz 30,544(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,30,0
	beq- 7,.L794
.LVL1166:
.LBE6574:
	.loc 6 4264 0
	lwz 4,548(3)
.LBB6591:
	.loc 3 773 0
	addi 29,3,588
.LVL1167:
.LBB6575:
.LBB6576:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L799
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L802
.LVL1168:
.L795:
.LBE6576:
.LBE6575:
.LBB6584:
.LBB6585:
	.loc 10 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL1169:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L801
.LVL1170:
.LBB6586:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL1171:
.L797:
.LBE6586:
.LBE6585:
.LBE6584:
	.loc 3 773 0
	mr 3,29
.LVL1172:
	bl _ZN5idStraSEPKc
.LVL1173:
.L794:
.LBE6591:
.LBE6573:
	.loc 6 1422 0
	lwz 0,588(31)
	cmpwi 7,0,0
	bne- 7,.L803
.L798:
.LVL1174:
	.loc 6 1429 0
	addi 0,31,672
.LBB6593:
.LBB6594:
	.loc 3 815 0
	stw 0,620(31)
.LBE6594:
.LBE6593:
	.loc 6 1430 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1175:
	addi 1,1,24
	.cfi_remember_state
.LCFI251:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1176:
.L803:
.LCFI252:
	.cfi_restore_state
	.loc 6 1423 0
	lis 9,declManager@ha
	lwz 4,592(31)
	lwz 3,declManager@l(9)
.LVL1177:
	li 5,1
	li 6,0
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	.loc 6 1424 0
	li 4,1
	.loc 6 1423 0
	stw 3,672(31)
	.loc 6 1424 0
	bl _ZNK10idMaterial23SetImageClassificationsEi
	.loc 6 1425 0
	lwz 9,672(31)
	cmpwi 7,9,0
	beq- 7,.L798
.LVL1178:
.LBB6596:
.LBB6597:
	.file 20 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../renderer/Material.h"
	.loc 20 494 0 discriminator 1
	lwz 0,104(9)
.LBE6597:
.LBE6596:
	.loc 6 1425 0 discriminator 1
	andi. 11,0,1
	bne- 0,.L798
.LVL1179:
.LBB6598:
.LBB6599:
	.loc 20 513 0 discriminator 4
	lis 11,.LC36@ha
	lwz 0,.LC36@l(11)
	stw 0,148(9)
.LVL1180:
.LBE6599:
.LBE6598:
	.loc 6 1429 0 discriminator 4
	addi 0,31,672
.LBB6600:
.LBB6595:
	.loc 3 815 0 discriminator 4
	stw 0,620(31)
.LBE6595:
.LBE6600:
	.loc 6 1430 0 discriminator 4
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1181:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI253:
	.cfi_def_cfa_offset 0
	blr
.LVL1182:
.L799:
.LCFI254:
	.cfi_restore_state
.LBB6601:
.LBB6592:
.LBB6588:
.LBB6582:
	.loc 3 59 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L795
.LVL1183:
.L801:
.LBE6582:
.LBE6588:
.LBB6589:
.LBB6587:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L797
.LVL1184:
.L802:
.LBE6587:
.LBE6589:
.LBB6590:
.LBB6583:
.LBB6577:
.LBB6578:
.LBB6579:
.LBB6580:
	.loc 10 241 0
	mr 3,30
	addi 4,4,1
.LVL1185:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1186:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L799
.LVL1187:
.LBB6581:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L795
.LBE6581:
.LBE6580:
.LBE6579:
.LBE6578:
.LBE6577:
.LBE6583:
.LBE6590:
.LBE6592:
.LBE6601:
	.cfi_endproc
.LFE2934:
	.size	_ZN8idWindow15SetupBackgroundEv, .-_ZN8idWindow15SetupBackgroundEv
	.align 2
	.globl _ZN8idWindow14SetupFromStateEv
	.type	_ZN8idWindow14SetupFromStateEv, @function
_ZN8idWindow14SetupFromStateEv:
.LFB2935:
	.loc 6 1437 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2935
.LVL1188:
	mflr 0
	stwu 1,-48(1)
.LCFI255:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
.LVL1189:
.LBB6602:
.LBB6603:
.LBB6604:
.LBB6605:
	.loc 4 357 0
	li 9,20
.LBE6605:
.LBE6604:
.LBE6603:
.LBE6602:
	.loc 6 1437 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
.LBB6618:
.LBB6610:
.LBB6608:
.LBB6606:
	.loc 4 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE6606:
.LBE6608:
.LBE6610:
.LBE6618:
	.loc 6 1437 0
	stw 30,40(1)
.LBB6619:
	.loc 6 1439 0
	stw 0,672(3)
.LBB6611:
.LBB6609:
.LBB6607:
	.loc 4 357 0
	stw 9,16(1)
	.loc 4 358 0
	addi 9,1,20
	.loc 4 356 0
	stw 0,8(1)
	.loc 4 358 0
	stw 9,12(1)
	.loc 4 359 0
	stb 0,20(1)
.LEHB43:
.LBE6607:
.LBE6609:
.LBE6611:
	.loc 6 1441 0
	.cfi_offset 30, -8
	bl _ZN8idWindow15SetupBackgroundEv
.LVL1190:
	.loc 6 1443 0
	lis 9,.LC1@ha
	lfs 13,124(31)
	lfs 0,.LC1@l(9)
	fcmpu 7,13,0
	beq- 7,.L805
	.loc 6 1444 0
	lwz 0,48(31)
	ori 0,0,4
	stw 0,48(31)
.L805:
	.loc 6 1447 0
	addi 30,31,872
	lis 4,.LC37@ha
	mr 3,30
	la 4,.LC37@l(4)
	bl _ZN14idRegisterList7FindRegEPKc
.LEHE43:
	cmpwi 7,3,0
	beq- 7,.L813
.L806:
	.loc 6 1448 0 discriminator 4
	lwz 0,48(31)
	ori 0,0,8192
	stw 0,48(31)
.L807:
	.loc 6 1451 0
	lis 9,.LC1@ha
	mr 3,31
	lfs 1,.LC1@l(9)
	fmr 2,1
	bl _ZN8idWindow14CalcClientRectEff
	.loc 6 1452 0
	lwz 0,744(31)
	cmpwi 7,0,0
	beq- 7,.L808
	.loc 6 1454 0
	lwz 0,48(31)
	.loc 6 1453 0
	li 9,1
	stb 9,210(31)
	.loc 6 1454 0
	ori 0,0,2048
	stw 0,48(31)
.L808:
.LVL1191:
.LBB6612:
.LBB6613:
.LBB6614:
	.loc 4 501 0
	addi 3,1,8
.LEHB44:
	bl _ZN5idStr8FreeDataEv
.LEHE44:
.LBE6614:
.LBE6613:
.LBE6612:
.LBE6619:
	.loc 6 1456 0
	lwz 0,52(1)
	lwz 30,40(1)
	mtlr 0
	lwz 31,44(1)
.LVL1192:
	addi 1,1,48
	.cfi_remember_state
.LCFI256:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1193:
.L813:
.LCFI257:
	.cfi_restore_state
.LBB6620:
	.loc 6 1447 0 discriminator 2
	lis 4,.LC38@ha
	mr 3,30
	la 4,.LC38@l(4)
.LEHB45:
	bl _ZN14idRegisterList7FindRegEPKc
.LEHE45:
	cmpwi 7,3,0
	bne+ 7,.L806
	b .L807
.L812:
	mr 31,3
.LVL1194:
.LBB6615:
.LBB6616:
.LBB6617:
	.loc 4 501 0
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB46:
	bl _Unwind_Resume
.LEHE46:
.LBE6617:
.LBE6616:
.LBE6615:
.LBE6620:
	.cfi_endproc
.LFE2935:
	.section	.gcc_except_table
.LLSDA2935:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2935-.LLSDACSB2935
.LLSDACSB2935:
	.uleb128 .LEHB43-.LFB2935
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L812-.LFB2935
	.uleb128 0
	.uleb128 .LEHB44-.LFB2935
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB2935
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L812-.LFB2935
	.uleb128 0
	.uleb128 .LEHB46-.LFB2935
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
.LLSDACSE2935:
	.section	".text"
	.size	_ZN8idWindow14SetupFromStateEv, .-_ZN8idWindow14SetupFromStateEv
	.align 2
	.globl _ZN8idWindow7SetFlagEj
	.type	_ZN8idWindow7SetFlagEj, @function
_ZN8idWindow7SetFlagEj:
.LFB2942:
	.loc 6 1512 0
	.cfi_startproc
.LVL1195:
	.loc 6 1513 0
	lwz 0,48(3)
	.loc 6 1514 0
	.loc 6 1513 0
	or 0,0,4
	stw 0,48(3)
	.loc 6 1514 0
	blr
	.cfi_endproc
.LFE2942:
	.size	_ZN8idWindow7SetFlagEj, .-_ZN8idWindow7SetFlagEj
	.align 2
	.globl _ZN8idWindow9ClearFlagEj
	.type	_ZN8idWindow9ClearFlagEj, @function
_ZN8idWindow9ClearFlagEj:
.LFB2943:
	.loc 6 1521 0
	.cfi_startproc
.LVL1196:
	.loc 6 1522 0
	lwz 0,48(3)
	.loc 6 1523 0
	.loc 6 1522 0
	andc 0,0,4
	stw 0,48(3)
	.loc 6 1523 0
	blr
	.cfi_endproc
.LFE2943:
	.size	_ZN8idWindow9ClearFlagEj, .-_ZN8idWindow9ClearFlagEj
	.align 2
	.globl _ZN8idWindow9SetParentEPS_
	.type	_ZN8idWindow9SetParentEPS_, @function
_ZN8idWindow9SetParentEPS_:
.LFB2944:
	.loc 6 1531 0
	.cfi_startproc
.LVL1197:
	.loc 6 1532 0
	stw 4,676(3)
	.loc 6 1533 0
	blr
	.cfi_endproc
.LFE2944:
	.size	_ZN8idWindow9SetParentEPS_, .-_ZN8idWindow9SetParentEPS_
	.align 2
	.globl _ZN8idWindow15GetCaptureChildEv
	.type	_ZN8idWindow15GetCaptureChildEv, @function
_ZN8idWindow15GetCaptureChildEv:
.LFB2945:
	.loc 6 1540 0
	.cfi_startproc
.LVL1198:
	.loc 6 1541 0
	lwz 9,48(3)
	.loc 6 1544 0
	li 0,0
	.loc 6 1541 0
	andis. 11,9,4096
	beq- 0,.L818
	.loc 6 4264 0
	lwz 9,732(3)
	.loc 6 1542 0
	lwz 9,52(9)
	lwz 0,716(9)
.L818:
	.loc 6 1545 0
	mr 3,0
.LVL1199:
	blr
	.cfi_endproc
.LFE2945:
	.size	_ZN8idWindow15GetCaptureChildEv, .-_ZN8idWindow15GetCaptureChildEv
	.align 2
	.globl _ZN8idWindow15GetFocusedChildEv
	.type	_ZN8idWindow15GetFocusedChildEv, @function
_ZN8idWindow15GetFocusedChildEv:
.LFB2946:
	.loc 6 1552 0
	.cfi_startproc
.LVL1200:
	.loc 6 1553 0
	lwz 9,48(3)
	.loc 6 1556 0
	li 0,0
	.loc 6 1553 0
	andis. 11,9,4096
	beq- 0,.L821
	.loc 6 4264 0
	lwz 9,732(3)
	.loc 6 1554 0
	lwz 9,52(9)
	lwz 0,712(9)
.L821:
	.loc 6 1557 0
	mr 3,0
.LVL1201:
	blr
	.cfi_endproc
.LFE2946:
	.size	_ZN8idWindow15GetFocusedChildEv, .-_ZN8idWindow15GetFocusedChildEv
	.align 2
	.globl _ZN8idWindow8SetFocusEPS_b
	.type	_ZN8idWindow8SetFocusEPS_b, @function
_ZN8idWindow8SetFocusEPS_b:
.LFB2947:
	.loc 6 1565 0
	.cfi_startproc
.LVL1202:
	mflr 0
	stwu 1,-24(1)
.LCFI258:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
.LBB6621:
	.loc 6 1568 0
	lwz 0,48(4)
	.cfi_offset 65, 4
.LBE6621:
	.loc 6 1565 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
.LBB6622:
	.loc 6 1568 0
	andi. 9,0,2048
.LBE6622:
	.loc 6 1565 0
	stw 31,20(1)
.LBB6623:
	.loc 6 1567 0
	li 31,0
	.cfi_offset 31, -4
	.loc 6 1568 0
	beq- 0,.L824
	.loc 6 4264 0
	lwz 9,732(3)
	.loc 6 1569 0
	lwz 9,52(9)
	lwz 31,712(9)
.LVL1203:
	.loc 6 1570 0
	cmpwi 7,31,0
	beq- 7,.L825
	.loc 6 1571 0
	lwz 0,48(31)
	.loc 6 1572 0
	mr 3,31
.LVL1204:
	lwz 9,0(31)
	.loc 6 1571 0
	rlwinm 0,0,0,27,25
	stw 0,48(31)
	.loc 6 1572 0
	lwz 0,52(9)
	mtctr 0
	bctrl
.LVL1205:
	lwz 0,48(30)
.L825:
	.loc 6 1586 0
	ori 0,0,32
	.loc 6 1587 0
	lwz 9,0(30)
	.loc 6 1586 0
	stw 0,48(30)
	.loc 6 1587 0
	mr 3,30
	lwz 0,48(9)
	mtctr 0
	bctrl
	.loc 6 4264 0
	lwz 9,732(29)
	lwz 9,52(9)
	.loc 6 1588 0
	stw 30,712(9)
.LVL1206:
.L824:
.LBE6623:
	.loc 6 1592 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
.LVL1207:
	mtlr 0
	lwz 30,16(1)
.LVL1208:
	lwz 31,20(1)
.LVL1209:
	addi 1,1,24
.LCFI259:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2947:
	.size	_ZN8idWindow8SetFocusEPS_b, .-_ZN8idWindow8SetFocusEPS_b
	.align 2
	.globl _ZN8idWindow24SaveExpressionParseStateEv
	.type	_ZN8idWindow24SaveExpressionParseStateEv, @function
_ZN8idWindow24SaveExpressionParseStateEv:
.LFB2949:
	.loc 6 1690 0
	.cfi_startproc
.LVL1210:
	stwu 1,-16(1)
.LCFI260:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 6 1691 0
	li 3,2048
.LVL1211:
	.loc 6 1690 0
	stw 0,20(1)
	.loc 6 1691 0
	.cfi_offset 65, 4
	bl _Z9Mem_Alloci
	.loc 6 1692 0
	lis 4,.LANCHOR0@ha
	.loc 6 1691 0
	stw 3,780(31)
	.loc 6 1692 0
	la 4,.LANCHOR0@l(4)
	addi 4,4,16700
	li 5,2048
	bl memcpy
	.loc 6 1693 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1212:
	mtlr 0
	addi 1,1,16
.LCFI261:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2949:
	.size	_ZN8idWindow24SaveExpressionParseStateEv, .-_ZN8idWindow24SaveExpressionParseStateEv
	.align 2
	.globl _ZN8idWindow27RestoreExpressionParseStateEv
	.type	_ZN8idWindow27RestoreExpressionParseStateEv, @function
_ZN8idWindow27RestoreExpressionParseStateEv:
.LFB2950:
	.loc 6 1700 0
	.cfi_startproc
.LVL1213:
	mflr 0
	stwu 1,-16(1)
.LCFI262:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 6 1701 0
	li 5,2048
	.loc 6 1700 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 6 1701 0
	lwz 4,780(3)
	lis 3,.LANCHOR0@ha
.LVL1214:
	la 3,.LANCHOR0@l(3)
	addi 3,3,16700
	.cfi_offset 65, 4
	bl memcpy
	.loc 6 1702 0
	lwz 3,780(31)
	bl _Z8Mem_FreePv
	.loc 6 1703 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1215:
	mtlr 0
	addi 1,1,16
.LCFI263:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2950:
	.size	_ZN8idWindow27RestoreExpressionParseStateEv, .-_ZN8idWindow27RestoreExpressionParseStateEv
	.align 2
	.globl _ZN8idWindow15DisableRegisterEPKc
	.type	_ZN8idWindow15DisableRegisterEPKc, @function
_ZN8idWindow15DisableRegisterEPKc:
.LFB2952:
	.loc 6 1726 0
	.cfi_startproc
.LVL1216:
	mflr 0
	stwu 1,-8(1)
.LCFI264:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB6624:
	.loc 6 1727 0
	addi 3,3,872
.LVL1217:
.LBE6624:
	.loc 6 1726 0
	stw 0,12(1)
.LBB6627:
	.loc 6 1727 0
	.cfi_offset 65, 4
	bl _ZN14idRegisterList7FindRegEPKc
.LVL1218:
	.loc 6 1728 0
	cmpwi 0,3,0
	beq- 0,.L829
.LVL1219:
.LBB6625:
.LBB6626:
	.loc 15 53 0
	li 0,0
	stb 0,0(3)
.LVL1220:
.L829:
.LBE6626:
.LBE6625:
.LBE6627:
	.loc 6 1731 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI265:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2952:
	.size	_ZN8idWindow15DisableRegisterEPKc, .-_ZN8idWindow15DisableRegisterEPKc
	.align 2
	.globl _ZN8idWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t
	.type	_ZN8idWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t, @function
_ZN8idWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t:
.LFB2954:
	.loc 6 1746 0
	.cfi_startproc
.LVL1221:
	mflr 0
	stwu 1,-24(1)
.LCFI266:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 0,28(1)
.LBB6628:
	.loc 6 1749 0
	addi 0,3,260
	.cfi_offset 65, 4
	cmpw 7,4,0
.LBE6628:
	.loc 6 1746 0
	stw 29,12(1)
	stw 31,20(1)
	mr 29,4
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	mr 31,3
	stw 30,16(1)
.LBB6634:
	.loc 6 1750 0
	li 3,260
.LVL1222:
	.loc 6 1749 0
	beq- 7,.L832
	.cfi_offset 30, -8
	.loc 6 1747 0
	li 3,-1
.L832:
.LVL1223:
	.loc 6 1753 0
	addi 0,31,292
	cmpw 7,29,0
	beq- 7,.L855
	.loc 6 1757 0
	addi 0,31,324
	cmpw 7,29,0
	beq- 7,.L856
.L834:
	.loc 6 1761 0
	addi 0,31,356
	cmpw 7,29,0
	beq- 7,.L857
.L835:
	.loc 6 1765 0
	addi 0,31,388
	cmpw 7,29,0
	beq- 7,.L858
.L836:
	.loc 6 1769 0
	addi 0,31,420
	cmpw 7,29,0
	beq- 7,.L859
.L837:
	.loc 6 1773 0
	addi 0,31,452
	cmpw 7,29,0
	beq- 7,.L860
.LVL1224:
.L838:
	.loc 6 1777 0
	addi 0,31,472
	cmpw 7,29,0
	beq- 7,.L851
	.loc 6 1781 0
	cmpwi 7,3,-1
	beq- 7,.L861
.LVL1225:
.L839:
	.loc 6 1782 0
	stw 31,0(28)
.LVL1226:
.L841:
.LBE6634:
	.loc 6 1798 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL1227:
	mtlr 0
	lwz 29,12(1)
.LVL1228:
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1229:
	addi 1,1,24
	.cfi_remember_state
.LCFI267:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1230:
.L861:
.LCFI268:
	.cfi_restore_state
.LBB6635:
.LBB6629:
	.loc 6 1786 0 discriminator 1
	lwz 0,696(31)
	li 30,0
	cmpwi 7,0,0
	bgt+ 7,.L853
	b .L841
.LVL1231:
.L862:
	.loc 6 1788 0
	bl _ZN8idWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t
.LVL1232:
.L843:
	.loc 6 1792 0
	cmpwi 7,3,-1
	.loc 6 1786 0
	addi 30,30,1
.LVL1233:
	.loc 6 1792 0
	bne- 7,.L841
.LVL1234:
	.loc 6 1786 0
	lwz 0,696(31)
	cmpw 7,0,30
	ble- 7,.L841
.LVL1235:
.L853:
.LBB6630:
.LBB6631:
	.loc 16 589 0
	lwz 9,708(31)
	.loc 6 1746 0
	slwi 0,30,3
.LBE6631:
.LBE6630:
	.loc 6 1788 0
	mr 4,29
	mr 5,28
	.loc 6 1787 0
	lwzx 3,9,0
.LBB6633:
.LBB6632:
	.loc 16 589 0
	add 9,9,0
.LBE6632:
.LBE6633:
	.loc 6 1787 0
	cmpwi 7,3,0
	bne+ 7,.L862
.LVL1236:
	.loc 6 1790 0
	lwz 3,4(9)
	mr 4,29
	mr 5,28
	bl _ZN14idSimpleWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t
.LVL1237:
	b .L843
.LVL1238:
.L851:
.LBE6629:
	.loc 6 1778 0
	li 3,472
.LVL1239:
	b .L839
.LVL1240:
.L855:
	.loc 6 1757 0
	addi 0,31,324
	.loc 6 1754 0
	li 3,292
.LVL1241:
	.loc 6 1757 0
	cmpw 7,29,0
	bne+ 7,.L834
.L856:
	.loc 6 1761 0
	addi 0,31,356
	.loc 6 1758 0
	li 3,324
.LVL1242:
	.loc 6 1761 0
	cmpw 7,29,0
	bne+ 7,.L835
.L857:
	.loc 6 1765 0
	addi 0,31,388
	.loc 6 1762 0
	li 3,356
.LVL1243:
	.loc 6 1765 0
	cmpw 7,29,0
	bne+ 7,.L836
.L858:
	.loc 6 1769 0
	addi 0,31,420
	.loc 6 1766 0
	li 3,388
.LVL1244:
	.loc 6 1769 0
	cmpw 7,29,0
	bne+ 7,.L837
.L859:
	.loc 6 1773 0
	addi 0,31,452
	.loc 6 1770 0
	li 3,420
.LVL1245:
	.loc 6 1773 0
	cmpw 7,29,0
	bne+ 7,.L838
.L860:
	.loc 6 1774 0
	li 3,452
.LVL1246:
	b .L838
.LBE6635:
	.cfi_endproc
.LFE2954:
	.size	_ZN8idWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t, .-_ZN8idWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t
	.align 2
	.globl _ZN8idWindow11ParseStringEP8idParserR5idStr
	.type	_ZN8idWindow11ParseStringEP8idParserR5idStr, @function
_ZN8idWindow11ParseStringEP8idParserR5idStr:
.LFB2956:
	.loc 6 1912 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2956
.LVL1247:
	mflr 0
	stwu 1,-96(1)
.LCFI269:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
.LVL1248:
.LBB6658:
.LBB6659:
.LBB6660:
.LBB6661:
.LBB6662:
	.loc 4 357 0
	li 9,20
.LBE6662:
.LBE6661:
.LBE6660:
.LBE6659:
	.loc 6 1914 0
	mr 3,4
.LVL1249:
.LBB6672:
.LBB6669:
.LBB6666:
.LBB6663:
	.loc 4 357 0
	stw 9,16(1)
.LBE6663:
.LBE6666:
.LBE6669:
.LBE6672:
	.loc 6 1914 0
	addi 4,1,8
.LVL1250:
.LBE6658:
	.loc 6 1912 0
	stw 0,100(1)
.LBB6695:
.LBB6673:
.LBB6670:
.LBB6667:
.LBB6664:
	.loc 4 358 0
	addi 9,1,20
	.loc 4 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE6664:
.LBE6667:
.LBE6670:
.LBE6673:
.LBE6695:
	.loc 6 1912 0
	stw 31,92(1)
	stw 30,88(1)
	.loc 6 1912 0
	mr 31,5
	.cfi_offset 30, -8
	.cfi_offset 31, -4
.LBB6696:
.LBB6674:
.LBB6671:
.LBB6668:
.LBB6665:
	.loc 4 356 0
	stw 0,8(1)
	.loc 4 358 0
	stw 9,12(1)
	.loc 4 359 0
	stb 0,20(1)
.LEHB47:
.LBE6665:
.LBE6668:
.LBE6671:
.LBE6674:
	.loc 6 1914 0
	bl _ZN8idParser9ReadTokenEP7idToken
.LEHE47:
.LVL1251:
	cmpwi 7,3,0
	beq- 7,.L864
.LVL1252:
.LBB6675:
	.loc 6 4264 0
	lwz 30,8(1)
.LBB6676:
.LBB6677:
.LBB6678:
	.loc 4 350 0
	lwz 0,8(31)
.LBE6678:
.LBE6677:
	.loc 4 534 0
	addi 4,30,1
.LVL1253:
.LBB6681:
.LBB6679:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L872
.LVL1254:
.L865:
.LBE6679:
.LBE6681:
	.loc 4 535 0
	lwz 3,4(31)
	mr 5,30
	lwz 4,12(1)
	bl memcpy
	.loc 4 536 0
	lwz 9,4(31)
	li 0,0
	stbx 0,9,30
	.loc 4 537 0
	stw 30,0(31)
.LVL1255:
.L864:
.LBE6676:
.LBE6675:
.LBB6684:
.LBB6685:
.LBB6686:
.LBB6687:
.LBB6688:
	.loc 4 501 0
	addi 3,1,8
.LEHB48:
	bl _ZN5idStr8FreeDataEv
.LEHE48:
.LBE6688:
.LBE6687:
.LBE6686:
.LBE6685:
.LBE6684:
.LBE6696:
	.loc 6 1917 0
	lwz 0,100(1)
	lwz 30,88(1)
	mtlr 0
	lwz 31,92(1)
.LVL1256:
	addi 1,1,96
	.cfi_remember_state
.LCFI270:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1257:
.L872:
.LCFI271:
	.cfi_restore_state
.LBB6697:
.LBB6689:
.LBB6683:
.LBB6682:
.LBB6680:
	.loc 4 351 0
	mr 3,31
	li 5,0
.LEHB49:
	bl _ZN5idStr10ReAllocateEib
.LEHE49:
.LVL1258:
	b .L865
.LVL1259:
.L871:
	mr 31,3
.LVL1260:
.LBE6680:
.LBE6682:
.LBE6683:
.LBE6689:
.LBB6690:
.LBB6691:
.LBB6692:
.LBB6693:
.LBB6694:
	.loc 4 501 0
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB50:
	bl _Unwind_Resume
.LEHE50:
.LBE6694:
.LBE6693:
.LBE6692:
.LBE6691:
.LBE6690:
.LBE6697:
	.cfi_endproc
.LFE2956:
	.section	.gcc_except_table
.LLSDA2956:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2956-.LLSDACSB2956
.LLSDACSB2956:
	.uleb128 .LEHB47-.LFB2956
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L871-.LFB2956
	.uleb128 0
	.uleb128 .LEHB48-.LFB2956
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB2956
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L871-.LFB2956
	.uleb128 0
	.uleb128 .LEHB50-.LFB2956
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE2956:
	.section	".text"
	.size	_ZN8idWindow11ParseStringEP8idParserR5idStr, .-_ZN8idWindow11ParseStringEP8idParserR5idStr
	.align 2
	.globl _ZN8idWindow16ParseInternalVarEPKcP8idParser
	.type	_ZN8idWindow16ParseInternalVarEPKcP8idParser, @function
_ZN8idWindow16ParseInternalVarEPKcP8idParser:
.LFB2958:
	.loc 6 1944 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2958
.LVL1261:
	stwu 1,-104(1)
.LCFI272:
	.cfi_def_cfa_offset 104
	mflr 0
	stw 29,92(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBB6698:
	.loc 6 1946 0
	lis 4,.LC39@ha
.LVL1262:
.LBE6698:
	.loc 6 1944 0
	stw 31,100(1)
.LBB6769:
	.loc 6 1946 0
	la 4,.LC39@l(4)
.LBE6769:
	.loc 6 1944 0
	mr 31,3
	.cfi_offset 31, -4
.LBB6770:
	.loc 6 1946 0
	mr 3,29
.LVL1263:
.LBE6770:
	.loc 6 1944 0
	stw 30,96(1)
	stw 0,108(1)
	mr 30,5
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	stw 28,88(1)
.LEHB51:
.LBB6771:
	.loc 6 1946 0
	.cfi_offset 28, -16
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1264:
	cmpwi 7,3,0
	bne- 7,.L874
	.loc 6 1947 0
	mr 3,30
	.loc 6 1950 0
	li 28,1
	.loc 6 1947 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 1948 0
	lwz 0,48(31)
	oris 0,0,0x80
	stw 0,48(31)
.LVL1265:
.L902:
.LBE6771:
	.loc 6 2075 0
	lwz 0,108(1)
	mr 3,28
	lwz 29,92(1)
	mtlr 0
	lwz 28,88(1)
	lwz 30,96(1)
.LVL1266:
	lwz 31,100(1)
.LVL1267:
	addi 1,1,104
	.cfi_remember_state
.LCFI273:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1268:
.L874:
.LCFI274:
	.cfi_restore_state
.LBB6772:
	.loc 6 1952 0
	lis 4,.LC40@ha
	mr 3,29
	la 4,.LC40@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L876
	.loc 6 1953 0
	mr 3,30
	.loc 6 1956 0
	li 28,1
	.loc 6 1953 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 1954 0
	lwz 0,48(31)
.LBE6772:
	.loc 6 2075 0
	mr 3,28
.LBB6773:
	.loc 6 1954 0
	oris 0,0,0x40
	stw 0,48(31)
.LBE6773:
	.loc 6 2075 0
	lwz 0,108(1)
	lwz 28,88(1)
	mtlr 0
	lwz 29,92(1)
.LVL1269:
	lwz 30,96(1)
.LVL1270:
	lwz 31,100(1)
.LVL1271:
	addi 1,1,104
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI275:
	.cfi_def_cfa_offset 0
	blr
.LVL1272:
.L876:
.LCFI276:
	.cfi_restore_state
.LBB6774:
	.loc 6 1958 0
	lis 4,.LC41@ha
	mr 3,29
	la 4,.LC41@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L927
	.loc 6 1962 0
	lis 4,.LC42@ha
	mr 3,29
	la 4,.LC42@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L928
	.loc 6 1966 0
	lis 4,.LC43@ha
	mr 3,29
	la 4,.LC43@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L929
	.loc 6 1970 0
	lis 4,.LC44@ha
	mr 3,29
	la 4,.LC44@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L930
	.loc 6 1974 0
	lis 4,.LC45@ha
	mr 3,29
	la 4,.LC45@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L931
	.loc 6 1978 0
	lis 4,.LC46@ha
	mr 3,29
	la 4,.LC46@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L882
	.loc 6 1979 0
	mr 3,30
	.loc 6 1982 0
	li 28,1
	.loc 6 1979 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 1980 0
	lwz 0,48(31)
	ori 0,0,32768
	stw 0,48(31)
	b .L902
.L927:
	.loc 6 1959 0
	mr 3,30
	.loc 6 1960 0
	li 28,1
	.loc 6 1959 0
	bl _ZN8idParser10ParseFloatEv
	stfs 1,108(31)
	.loc 6 1960 0
	b .L902
.L928:
	.loc 6 1963 0
	mr 3,30
	.loc 6 1964 0
	li 28,1
	.loc 6 1963 0
	bl _ZN8idParser10ParseFloatEv
	stfs 1,112(31)
	.loc 6 1964 0
	b .L902
.L930:
	.loc 6 1971 0
	mr 3,30
	.loc 6 1972 0
	li 28,1
	.loc 6 1971 0
	bl _ZN8idParser10ParseFloatEv
	stfs 1,120(31)
	.loc 6 1972 0
	b .L902
.L929:
	.loc 6 1967 0
	mr 3,30
	.loc 6 1968 0
	li 28,1
	.loc 6 1967 0
	bl _ZN8idParser10ParseFloatEv
	stfs 1,116(31)
	.loc 6 1968 0
	b .L902
.L931:
	.loc 6 1975 0
	mr 3,30
	.loc 6 1976 0
	li 28,1
	.loc 6 1975 0
	bl _ZN8idParser10ParseFloatEv
	stfs 1,124(31)
	.loc 6 1976 0
	b .L902
.L882:
	.loc 6 1984 0
	lis 4,.LC47@ha
	mr 3,29
	la 4,.LC47@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L932
	.loc 6 1988 0
	lis 4,.LC48@ha
	mr 3,29
	la 4,.LC48@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L933
	.loc 6 1992 0
	lis 4,.LC49@ha
	mr 3,29
	la 4,.LC49@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L934
	.loc 6 1996 0
	lis 4,.LC50@ha
	mr 3,29
	la 4,.LC50@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L935
.LBB6699:
	.loc 6 2000 0
	lis 4,.LC38@ha
	mr 3,29
	la 4,.LC38@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	mr. 28,3
	bne- 0,.L887
.LBB6700:
	.loc 6 2001 0
	mr 3,30
	.loc 6 2003 0
	addi 29,1,8
.LVL1273:
	.loc 6 2001 0
	bl _ZN8idParser10ParseFloatEv
.LEHE51:
.LBB6701:
.LBB6702:
.LBB6703:
.LBB6704:
	.loc 4 357 0
	li 0,20
.LBE6704:
.LBE6703:
.LBE6702:
.LBE6701:
	.loc 6 2001 0
	stfs 1,200(31)
.LVL1274:
	.loc 6 2003 0
	mr 3,30
.LBB6711:
.LBB6709:
.LBB6707:
.LBB6705:
	.loc 4 357 0
	stw 0,16(1)
.LBE6705:
.LBE6707:
.LBE6709:
.LBE6711:
	.loc 6 2003 0
	mr 4,29
.LBB6712:
.LBB6710:
.LBB6708:
.LBB6706:
	.loc 4 358 0
	addi 0,1,20
	.loc 4 356 0
	stw 28,8(1)
	.loc 4 358 0
	stw 0,12(1)
	.loc 4 359 0
	stb 28,20(1)
.LEHB52:
.LBE6706:
.LBE6708:
.LBE6710:
.LBE6712:
	.loc 6 2003 0
	bl _ZN8idParser9ReadTokenEP7idToken
.LVL1275:
.LBB6713:
.LBB6714:
	.loc 4 690 0
	lis 4,.LC51@ha
	lwz 3,12(1)
	la 4,.LC51@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
.LBE6714:
.LBE6713:
	.loc 6 2004 0
	cmpwi 7,3,0
	.loc 6 2005 0
	mr 3,30
	.loc 6 2004 0
	beq- 7,.L888
	.loc 6 2005 0
	lis 4,.LC52@ha
	la 4,.LC52@l(4)
	crxor 6,6,6
	bl _ZNK8idParser5ErrorEPKcz
.LEHE52:
	.loc 6 2006 0
	li 28,0
.L889:
.LVL1276:
.LBB6715:
.LBB6716:
.LBB6717:
.LBB6718:
.LBB6719:
	.loc 4 501 0
	mr 3,29
.LEHB53:
	bl _ZN5idStr8FreeDataEv
	b .L902
.LVL1277:
.L932:
.LBE6719:
.LBE6718:
.LBE6717:
.LBE6716:
.LBE6715:
.LBE6700:
.LBE6699:
	.loc 6 1985 0
	mr 3,30
	.loc 6 1986 0
	li 28,1
	.loc 6 1985 0
	bl _ZN8idParser8ParseIntEv
	stb 3,208(31)
	.loc 6 1986 0
	b .L902
.L933:
	.loc 6 1989 0
	mr 3,30
	.loc 6 1990 0
	li 28,1
	.loc 6 1989 0
	bl _ZN8idParser8ParseIntEv
	stb 3,211(31)
	.loc 6 1990 0
	b .L902
.L934:
	.loc 6 1993 0
	mr 3,30
	.loc 6 1994 0
	li 28,1
	.loc 6 1993 0
	bl _ZN8idParser10ParseFloatEv
	stfs 1,128(31)
	.loc 6 1994 0
	b .L902
.L935:
	.loc 6 1997 0
	mr 3,30
	.loc 6 1998 0
	li 28,1
	.loc 6 1997 0
	bl _ZN8idParser10ParseFloatEv
	stfs 1,132(31)
	.loc 6 1998 0
	b .L902
.L887:
	.loc 6 2011 0
	lis 4,.LC53@ha
	mr 3,29
	la 4,.LC53@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L890
	.loc 6 2012 0
	mr 3,30
	.loc 6 2015 0
	li 28,1
	.loc 6 2012 0
	bl _ZN8idParser9ParseBoolEv
.LEHE53:
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 2013 0
	lwz 0,48(31)
	oris 0,0,0x100
	stw 0,48(31)
	b .L902
.LVL1278:
.L888:
.LEHB54:
.LBB6727:
.LBB6725:
	.loc 6 2008 0
	bl _ZN8idParser10ParseFloatEv
.LEHE54:
	stfs 1,204(31)
	.loc 6 2009 0
	li 28,1
	b .L889
.LVL1279:
.L890:
.LBE6725:
.LBE6727:
	.loc 6 2017 0
	lis 4,.LC54@ha
	mr 3,29
	la 4,.LC54@l(4)
.LEHB55:
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L891
	.loc 6 2018 0
	mr 3,30
	.loc 6 2021 0
	li 28,1
	.loc 6 2018 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 2019 0
	lwz 0,48(31)
	oris 0,0,0x4
	stw 0,48(31)
	b .L902
.L891:
	.loc 6 2023 0
	lis 4,.LC55@ha
	mr 3,29
	la 4,.LC55@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L892
	.loc 6 2024 0
	mr 3,30
	.loc 6 2027 0
	li 28,1
	.loc 6 2024 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 2025 0
	lwz 0,48(31)
	oris 0,0,0x1
	stw 0,48(31)
	b .L902
.L892:
	.loc 6 2029 0
	lis 4,.LC56@ha
	mr 3,29
	la 4,.LC56@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L893
	.loc 6 2030 0
	mr 3,30
	.loc 6 2033 0
	li 28,1
	.loc 6 2030 0
	bl _ZN8idParser9ParseBoolEv
.LEHE55:
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 2031 0
	lwz 0,48(31)
	oris 0,0,0x8
	stw 0,48(31)
	b .L902
.LVL1280:
.L922:
	mr 31,3
.LVL1281:
.LBB6728:
.LBB6726:
.LBB6720:
.LBB6721:
.LBB6722:
.LBB6723:
.LBB6724:
	.loc 4 501 0
	mr 3,29
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB56:
	bl _Unwind_Resume
.LVL1282:
.L893:
.LBE6724:
.LBE6723:
.LBE6722:
.LBE6721:
.LBE6720:
.LBE6726:
.LBE6728:
	.loc 6 2035 0
	lis 4,.LC57@ha
	mr 3,29
	la 4,.LC57@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L894
	.loc 6 2036 0
	mr 3,30
	.loc 6 2039 0
	li 28,1
	.loc 6 2036 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 2037 0
	lwz 0,48(31)
	oris 0,0,0x10
	stw 0,48(31)
	b .L902
.L894:
	.loc 6 2041 0
	lis 4,.LC58@ha
	mr 3,29
	la 4,.LC58@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L895
	.loc 6 2042 0
	mr 3,30
	.loc 6 2045 0
	li 28,1
	.loc 6 2042 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 2043 0
	lwz 0,48(31)
	ori 0,0,512
	stw 0,48(31)
	b .L902
.L895:
	.loc 6 2047 0
	lis 4,.LC59@ha
	mr 3,29
	la 4,.LC59@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L896
	.loc 6 2048 0
	mr 3,30
	.loc 6 2051 0
	li 28,1
	.loc 6 2048 0
	bl _ZN8idParser9ParseBoolEv
	cmpwi 7,3,0
	beq- 7,.L902
	.loc 6 2049 0
	lwz 0,48(31)
	oris 0,0,0x2
	stw 0,48(31)
	b .L902
.L896:
	.loc 6 2053 0
	lis 4,.LC60@ha
	mr 3,29
	la 4,.LC60@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L936
.LBB6729:
	.loc 6 2057 0
	lis 4,.LC61@ha
	mr 3,29
	la 4,.LC61@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	mr. 28,3
	bne- 0,.L898
.LBB6730:
	.loc 6 2058 0
	lis 9,common@ha
	lis 4,.LC62@ha
	lwz 3,common@l(9)
	la 4,.LC62@l(4)
	.loc 6 2060 0
	addi 29,1,8
.LVL1283:
	.loc 6 2058 0
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LEHE56:
.LVL1284:
.LBB6731:
.LBB6732:
.LBB6733:
	.loc 4 357 0
	li 0,20
	stw 0,16(1)
.LBE6733:
.LBE6732:
.LBE6731:
	.loc 6 2060 0
	mr 3,31
.LBB6738:
.LBB6736:
.LBB6734:
	.loc 4 358 0
	addi 0,1,20
.LBE6734:
.LBE6736:
.LBE6738:
	.loc 6 2060 0
	mr 4,30
	mr 5,29
.LBB6739:
.LBB6737:
.LBB6735:
	.loc 4 356 0
	stw 28,8(1)
	.loc 4 358 0
	stw 0,12(1)
	.loc 4 359 0
	stb 28,20(1)
.LEHB57:
.LBE6735:
.LBE6737:
.LBE6739:
	.loc 6 2060 0
	bl _ZN8idWindow11ParseStringEP8idParserR5idStr
.LEHE57:
.LVL1285:
.L926:
.LBE6730:
.LBE6729:
.LBB6744:
.LBB6745:
.LBB6746:
.LBB6747:
.LBB6748:
	.loc 4 501 0
	mr 3,29
	.loc 6 2071 0
	li 28,1
.LEHB58:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
	b .L902
.LVL1286:
.L936:
.LBE6748:
.LBE6747:
.LBE6746:
.LBE6745:
.LBE6744:
	.loc 6 2054 0
	mr 3,31
	mr 4,30
	addi 5,31,136
	.loc 6 2055 0
	li 28,1
	.loc 6 2054 0
	bl _ZN8idWindow11ParseStringEP8idParserR5idStr
.LEHE58:
	.loc 6 2055 0
	b .L902
.LVL1287:
.L923:
	mr 31,3
.LVL1288:
.LBB6766:
.LBB6743:
.LBB6740:
.LBB6741:
.LBB6742:
	.loc 4 501 0
	mr 3,29
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB59:
	bl _Unwind_Resume
.LVL1289:
.L898:
.LBE6742:
.LBE6741:
.LBE6740:
.LBE6743:
.LBE6766:
	.loc 6 2063 0
	lis 4,.LC63@ha
	mr 3,29
	la 4,.LC63@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L937
.LBB6767:
	.loc 6 2067 0
	lis 4,.LC64@ha
	mr 3,29
	la 4,.LC64@l(4)
	.loc 6 2074 0
	li 28,0
	.loc 6 2067 0
	bl _ZN5idStr4IcmpEPKcS1_
.LEHE59:
	mr. 0,3
	bne+ 0,.L902
.LVL1290:
.LBB6764:
.LBB6749:
.LBB6750:
.LBB6751:
	.loc 4 357 0
	li 9,20
.LBE6751:
.LBE6750:
.LBE6749:
	.loc 6 2069 0
	addi 29,1,8
.LVL1291:
.LBB6758:
.LBB6755:
.LBB6752:
	.loc 4 357 0
	stw 9,16(1)
.LBE6752:
.LBE6755:
.LBE6758:
	.loc 6 2069 0
	mr 3,31
.LBB6759:
.LBB6756:
.LBB6753:
	.loc 4 358 0
	addi 9,1,20
.LBE6753:
.LBE6756:
.LBE6759:
	.loc 6 2069 0
	mr 4,30
	mr 5,29
.LBB6760:
.LBB6757:
.LBB6754:
	.loc 4 356 0
	stw 0,8(1)
	.loc 4 358 0
	stw 9,12(1)
	.loc 4 359 0
	stb 0,20(1)
.LEHB60:
.LBE6754:
.LBE6757:
.LBE6760:
	.loc 6 2069 0
	bl _ZN8idWindow11ParseStringEP8idParserR5idStr
.LVL1292:
	.loc 6 2070 0
	lwz 3,728(31)
	lwz 4,12(1)
	bl _ZN15idDeviceContext8FindFontEPKc
.LEHE60:
	stb 3,209(31)
	b .L926
.LVL1293:
.L937:
.LBE6764:
.LBE6767:
	.loc 6 2064 0
	mr 3,31
	mr 4,30
	addi 5,31,168
	.loc 6 2065 0
	li 28,1
.LEHB61:
	.loc 6 2064 0
	bl _ZN8idWindow11ParseStringEP8idParserR5idStr
.LEHE61:
	.loc 6 2065 0
	b .L902
.LVL1294:
.L924:
	mr 31,3
.LVL1295:
.LBB6768:
.LBB6765:
.LBB6761:
.LBB6762:
.LBB6763:
	.loc 4 501 0
	mr 3,29
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB62:
	bl _Unwind_Resume
.LEHE62:
.LBE6763:
.LBE6762:
.LBE6761:
.LBE6765:
.LBE6768:
.LBE6774:
	.cfi_endproc
.LFE2958:
	.section	.gcc_except_table
.LLSDA2958:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2958-.LLSDACSB2958
.LLSDACSB2958:
	.uleb128 .LEHB51-.LFB2958
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB2958
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L922-.LFB2958
	.uleb128 0
	.uleb128 .LEHB53-.LFB2958
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB2958
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L922-.LFB2958
	.uleb128 0
	.uleb128 .LEHB55-.LFB2958
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB2958
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB2958
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L923-.LFB2958
	.uleb128 0
	.uleb128 .LEHB58-.LFB2958
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB2958
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB2958
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L924-.LFB2958
	.uleb128 0
	.uleb128 .LEHB61-.LFB2958
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB62-.LFB2958
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
.LLSDACSE2958:
	.section	".text"
	.size	_ZN8idWindow16ParseInternalVarEPKcP8idParser, .-_ZN8idWindow16ParseInternalVarEPKcP8idParser
	.align 2
	.globl _ZN8idWindow9ParseVec4EP8idParserR6idVec4
	.type	_ZN8idWindow9ParseVec4EP8idParserR6idVec4, @function
_ZN8idWindow9ParseVec4EP8idParserR6idVec4:
.LFB2957:
	.loc 6 1924 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2957
.LVL1296:
	mflr 0
	stwu 1,-104(1)
.LCFI277:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
.LVL1297:
.LBB6775:
.LBB6776:
.LBB6777:
.LBB6778:
.LBB6779:
	.loc 4 357 0
	li 9,20
.LBE6779:
.LBE6778:
.LBE6777:
.LBE6776:
	.loc 6 1926 0
	mr 3,4
.LVL1298:
.LBE6775:
	.loc 6 1924 0
	stw 31,100(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,108(1)
.LBB6803:
	.loc 6 1926 0
	addi 4,1,8
.LVL1299:
.LBB6786:
.LBB6784:
.LBB6782:
.LBB6780:
	.loc 4 356 0
	li 0,0
	.cfi_offset 65, 4
	.loc 4 357 0
	stw 9,16(1)
	.loc 4 358 0
	addi 9,1,20
.LBE6780:
.LBE6782:
.LBE6784:
.LBE6786:
.LBE6803:
	.loc 6 1924 0
	stw 30,96(1)
	stw 29,92(1)
	.loc 6 1924 0
	mr 30,5
	.cfi_offset 29, -12
	.cfi_offset 30, -8
.LBB6804:
.LBB6787:
.LBB6785:
.LBB6783:
.LBB6781:
	.loc 4 356 0
	stw 0,8(1)
	.loc 4 358 0
	stw 9,12(1)
	.loc 4 359 0
	stb 0,20(1)
.LEHB63:
.LBE6781:
.LBE6783:
.LBE6785:
.LBE6787:
	.loc 6 1926 0
	bl _ZN8idParser9ReadTokenEP7idToken
.LVL1300:
	.loc 6 1927 0
	lwz 3,12(1)
	.loc 6 1928 0
	lis 29,.LC51@ha
	la 29,.LC51@l(29)
	.loc 6 1927 0
	bl atof
	.loc 6 1928 0
	mr 3,31
	.loc 6 1927 0
	frsp 1,1
	.loc 6 1928 0
	mr 4,29
	.loc 6 1927 0
	stfs 1,0(30)
	.loc 6 1928 0
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 1929 0
	mr 3,31
	addi 4,1,8
	bl _ZN8idParser9ReadTokenEP7idToken
.LVL1301:
	.loc 6 1930 0
	lwz 3,12(1)
	bl atof
	.loc 6 1931 0
	mr 3,31
	.loc 6 1930 0
	frsp 1,1
	.loc 6 1931 0
	mr 4,29
	.loc 6 1930 0
	stfs 1,4(30)
	.loc 6 1931 0
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 1932 0
	mr 3,31
	addi 4,1,8
	bl _ZN8idParser9ReadTokenEP7idToken
.LVL1302:
	.loc 6 1933 0
	lwz 3,12(1)
	bl atof
	.loc 6 1934 0
	mr 3,31
	.loc 6 1933 0
	frsp 1,1
	.loc 6 1934 0
	mr 4,29
	.loc 6 1933 0
	stfs 1,8(30)
	.loc 6 1934 0
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 1935 0
	mr 3,31
	addi 4,1,8
	bl _ZN8idParser9ReadTokenEP7idToken
.LEHE63:
.LVL1303:
	.loc 6 1936 0
	lwz 3,12(1)
	bl atof
.LBB6788:
.LBB6789:
.LBB6790:
.LBB6791:
.LBB6792:
	.loc 4 501 0
	addi 3,1,8
.LBE6792:
.LBE6791:
.LBE6790:
.LBE6789:
.LBE6788:
	.loc 6 1936 0
	frsp 1,1
	stfs 1,12(30)
.LVL1304:
.LEHB64:
.LBB6797:
.LBB6796:
.LBB6795:
.LBB6794:
.LBB6793:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE64:
.LBE6793:
.LBE6794:
.LBE6795:
.LBE6796:
.LBE6797:
.LBE6804:
	.loc 6 1937 0
	lwz 0,108(1)
	lwz 29,92(1)
	mtlr 0
	lwz 30,96(1)
.LVL1305:
	lwz 31,100(1)
.LVL1306:
	addi 1,1,104
	.cfi_remember_state
.LCFI278:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1307:
.L944:
.LCFI279:
	.cfi_restore_state
	mr 31,3
.LVL1308:
.LBB6805:
.LBB6798:
.LBB6799:
.LBB6800:
.LBB6801:
.LBB6802:
	.loc 4 501 0
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB65:
	bl _Unwind_Resume
.LEHE65:
.LBE6802:
.LBE6801:
.LBE6800:
.LBE6799:
.LBE6798:
.LBE6805:
	.cfi_endproc
.LFE2957:
	.section	.gcc_except_table
.LLSDA2957:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2957-.LLSDACSB2957
.LLSDACSB2957:
	.uleb128 .LEHB63-.LFB2957
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L944-.LFB2957
	.uleb128 0
	.uleb128 .LEHB64-.LFB2957
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB2957
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSE2957:
	.section	".text"
	.size	_ZN8idWindow9ParseVec4EP8idParserR6idVec4, .-_ZN8idWindow9ParseVec4EP8idParserR6idVec4
	.align 2
	.globl _ZN8idWindow15SetInitialStateEPKc
	.type	_ZN8idWindow15SetInitialStateEPKc, @function
_ZN8idWindow15SetInitialStateEPKc:
.LFB2960:
	.loc 6 2145 0
	.cfi_startproc
.LVL1309:
	stwu 1,-24(1)
.LCFI280:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 6 2146 0
	addi 3,3,136
.LVL1310:
	.loc 6 2145 0
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 6 2146 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl _ZN5idStraSEPKc
.LVL1311:
	.loc 6 2147 0
	lis 9,.LC0@ha
.LBB6830:
.LBB6831:
	.loc 3 115 0
	lwz 29,216(31)
.LBE6831:
.LBE6830:
	.loc 6 2147 0
	lwz 0,.LC0@l(9)
	.loc 6 2149 0
	lis 9,.LC23@ha
.LBB6858:
.LBB6852:
	.loc 3 115 0
	cmpwi 7,29,0
.LBE6852:
.LBE6858:
	.loc 6 2147 0
	stw 0,116(31)
	.loc 6 2148 0
	stw 0,120(31)
	.loc 6 2149 0
	lwz 0,.LC23@l(9)
	.loc 6 2150 0
	lis 9,.LC24@ha
	.loc 6 2149 0
	stw 0,108(31)
	.loc 6 2150 0
	lwz 0,.LC24@l(9)
	stw 0,112(31)
.LVL1312:
.LBB6859:
.LBB6853:
	.loc 3 114 0
	li 0,0
	stb 0,225(31)
	.loc 3 115 0
	beq- 7,.L946
.LBE6853:
	.loc 6 4264 0
	lwz 30,220(31)
.LBB6854:
.LBB6832:
.LBB6833:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L952
	.loc 3 54 0
	lbz 0,0(30)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L958
.L947:
.LVL1313:
.LBE6833:
.LBE6832:
.LBB6847:
.LBB6848:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,30
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL1314:
.L946:
.LBE6848:
.LBE6847:
.LBE6854:
.LBE6859:
.LBB6860:
.LBB6861:
	.loc 3 115 0
	lwz 29,232(31)
	.loc 3 114 0
	li 0,1
	stb 0,241(31)
	.loc 3 115 0
	cmpwi 7,29,0
	beq- 7,.L949
.LBE6861:
	.loc 6 4264 0
	lwz 30,236(31)
.LBB6882:
.LBB6862:
.LBB6863:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L955
	.loc 3 54 0
	lbz 0,0(30)
	li 4,1
	cmpwi 7,0,42
	beq- 7,.L959
.L950:
.LVL1315:
.LBE6863:
.LBE6862:
.LBB6877:
.LBB6878:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,30
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL1316:
.L949:
.LBE6878:
.LBE6877:
.LBE6882:
.LBE6860:
	.loc 6 2153 0
	li 0,0
	stw 0,48(31)
	.loc 6 2154 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1317:
	addi 1,1,24
	.cfi_remember_state
.LCFI281:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1318:
.L952:
.LCFI282:
	.cfi_restore_state
.LBB6886:
.LBB6855:
.LBB6849:
.LBB6844:
	.loc 3 59 0
	lis 30,.LC4@ha
	.loc 3 53 0
	li 4,0
	.loc 3 59 0
	la 30,.LC4@l(30)
	b .L947
.LVL1319:
.L955:
.LBE6844:
.LBE6849:
.LBE6855:
.LBE6886:
.LBB6887:
.LBB6883:
.LBB6879:
.LBB6874:
	lis 30,.LC4@ha
	.loc 3 53 0
	li 4,1
	.loc 3 59 0
	la 30,.LC4@l(30)
	b .L950
.LVL1320:
.L958:
.LBE6874:
.LBE6879:
.LBE6883:
.LBE6887:
.LBB6888:
.LBB6856:
.LBB6850:
.LBB6845:
.LBB6834:
.LBB6835:
.LBB6836:
.LBB6837:
	.loc 10 241 0
	mr 3,29
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1321:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L954
.LVL1322:
.LBB6838:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,225(31)
	lwz 30,4(9)
.LVL1323:
	b .L947
.LVL1324:
.L959:
.LBE6838:
.LBE6837:
.LBE6836:
.LBE6835:
.LBE6834:
.LBE6845:
.LBE6850:
.LBE6856:
.LBE6888:
.LBB6889:
.LBB6884:
.LBB6880:
.LBB6875:
.LBB6864:
.LBB6865:
.LBB6866:
.LBB6867:
	.loc 10 241 0
	mr 3,29
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1325:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L957
.LVL1326:
.LBB6868:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,241(31)
	lwz 30,4(9)
.LVL1327:
	b .L950
.LVL1328:
.L954:
.LBE6868:
.LBE6867:
.LBE6866:
.LBE6865:
.LBE6864:
.LBE6875:
.LBE6880:
.LBE6884:
.LBE6889:
.LBB6890:
.LBB6857:
.LBB6851:
.LBB6846:
.LBB6843:
.LBB6842:
.LBB6841:
.LBB6840:
	.loc 10 245 0
	lis 30,.LC4@ha
.LVL1329:
.LBB6839:
	.loc 6 4264 0
	lbz 4,225(31)
.LBE6839:
	.loc 10 245 0
	la 30,.LC4@l(30)
	b .L947
.LVL1330:
.L957:
.LBE6840:
.LBE6841:
.LBE6842:
.LBE6843:
.LBE6846:
.LBE6851:
.LBE6857:
.LBE6890:
.LBB6891:
.LBB6885:
.LBB6881:
.LBB6876:
.LBB6873:
.LBB6872:
.LBB6871:
.LBB6870:
	lis 30,.LC4@ha
.LVL1331:
.LBB6869:
	.loc 6 4264 0
	lbz 4,241(31)
.LBE6869:
	.loc 10 245 0
	la 30,.LC4@l(30)
	b .L950
.LBE6870:
.LBE6871:
.LBE6872:
.LBE6873:
.LBE6876:
.LBE6881:
.LBE6885:
.LBE6891:
	.cfi_endproc
.LFE2960:
	.size	_ZN8idWindow15SetInitialStateEPKc, .-_ZN8idWindow15SetInitialStateEPKc
	.align 2
	.globl _ZN8idWindow19FindSimpleWinByNameEPKc
	.type	_ZN8idWindow19FindSimpleWinByNameEPKc, @function
_ZN8idWindow19FindSimpleWinByNameEPKc:
.LFB2962:
	.loc 6 2589 0
	.cfi_startproc
.LVL1332:
	mflr 0
	stwu 1,-32(1)
.LCFI283:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,36(1)
	stw 28,16(1)
	stw 30,24(1)
	stw 31,28(1)
.LBB6892:
.LBB6893:
	.loc 6 4264 0
	lwz 28,696(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL1333:
	.loc 6 2599 0
	li 3,0
.LVL1334:
	.loc 6 2591 0
	cmpwi 7,28,0
	ble- 7,.L961
	li 31,0
.LVL1335:
.L963:
	.loc 6 2592 0
	lwz 9,708(29)
	.loc 6 2589 0
	slwi 30,31,3
	.loc 6 2595 0
	mr 4,27
	.loc 6 2591 0
	addi 31,31,1
.LVL1336:
	.loc 6 2592 0
	add 9,9,30
	lwz 9,4(9)
	cmpwi 7,9,0
	beq- 7,.L962
.LVL1337:
	.loc 6 2595 0
	lwz 3,8(9)
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1338:
	cmpwi 7,3,0
	beq- 7,.L966
.L962:
.LVL1339:
	.loc 6 2591 0
	cmpw 7,31,28
	bne+ 7,.L963
	.loc 6 2599 0
	li 3,0
.LVL1340:
.L961:
.LBE6893:
.LBE6892:
	.loc 6 2600 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL1341:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1342:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI284:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1343:
.L966:
.LCFI285:
	.cfi_restore_state
.LBB6897:
.LBB6894:
	.loc 6 2596 0
	lwz 0,708(29)
.LBE6894:
.LBE6897:
	.loc 6 2600 0
	lwz 27,12(1)
.LVL1344:
.LBB6898:
.LBB6895:
	.loc 6 2596 0
	add 30,0,30
.LBE6895:
.LBE6898:
	.loc 6 2600 0
	lwz 0,36(1)
.LBB6899:
.LBB6896:
	.loc 6 2596 0
	lwz 3,4(30)
.LBE6896:
.LBE6899:
	.loc 6 2600 0
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1345:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1346:
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI286:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2962:
	.size	_ZN8idWindow19FindSimpleWinByNameEPKc, .-_ZN8idWindow19FindSimpleWinByNameEPKc
	.align 2
	.globl _ZN8idWindow15FindChildByNameEPKc
	.type	_ZN8idWindow15FindChildByNameEPKc, @function
_ZN8idWindow15FindChildByNameEPKc:
.LFB2963:
	.loc 6 2607 0
	.cfi_startproc
.LVL1347:
	mflr 0
	stwu 1,-32(1)
.LCFI287:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 28,16(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 0,36(1)
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1348:
	stw 27,12(1)
	stw 30,24(1)
	stw 31,28(1)
.LBB6925:
	.loc 6 2609 0
	lwz 3,140(3)
.LVL1349:
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1350:
	mr. 0,3
	beq- 0,.L978
.LVL1351:
.LBE6925:
.LBB6926:
	.loc 6 4264 0
	lwz 27,696(29)
.LVL1352:
.LBB6927:
.LBB6928:
	.loc 6 2630 0
	li 3,0
	.loc 6 2615 0
	cmpwi 7,27,0
	ble- 7,.L969
	li 31,0
	b .L974
.LVL1353:
.L980:
.LBB6929:
.LBB6930:
	.loc 6 2617 0
	lwz 3,140(11)
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1354:
	.loc 6 2620 0
	mr 4,28
	.loc 6 2617 0
	cmpwi 7,3,0
	beq- 7,.L977
	.loc 6 2620 0
	lwz 9,708(29)
	lwzx 3,9,30
	bl _ZN8idWindow15FindChildByNameEPKc
.LVL1355:
	.loc 6 2621 0
	cmpwi 0,3,0
	bne- 0,.L969
.LVL1356:
.L973:
.LBE6930:
.LBE6929:
	.loc 6 2615 0
	cmpw 7,31,27
	beq- 7,.L979
.LVL1357:
.L974:
.LBB6939:
.LBB6931:
.LBB6932:
	.loc 16 589 0
	lwz 9,708(29)
.LBE6932:
.LBE6931:
.LBE6939:
	.loc 6 2607 0
	slwi 30,31,3
.LBB6940:
.LBB6934:
	.loc 6 2617 0
	mr 4,28
.LBE6934:
.LBE6940:
	.loc 6 2615 0
	addi 31,31,1
.LVL1358:
.LBB6941:
	.loc 6 2616 0
	lwzx 11,9,30
.LBB6935:
.LBB6933:
	.loc 16 589 0
	add 9,9,30
.LBE6933:
.LBE6935:
	.loc 6 2616 0
	cmpwi 7,11,0
	bne+ 7,.L980
.LVL1359:
.LBB6936:
	.loc 6 4264 0
	lwz 9,4(9)
.LBE6936:
	.loc 6 2625 0
	mr 4,28
	lwz 3,8(9)
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1360:
	cmpwi 7,3,0
	bne+ 7,.L973
.L977:
.LBB6937:
.LBB6938:
	.loc 16 589 0
	lwz 3,708(29)
	add 3,3,30
.LVL1361:
.L969:
.LBE6938:
.LBE6937:
.LBE6941:
.LBE6928:
.LBE6927:
.LBE6926:
	.loc 6 2631 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL1362:
	lwz 29,20(1)
.LVL1363:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI288:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1364:
.L978:
.LCFI289:
	.cfi_restore_state
.LBB6944:
	.loc 6 2610 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 6 2611 0
	mr 3,9
	.loc 6 2610 0
	stw 0,18752(9)
	.loc 6 2611 0
	stwu 29,18748(3)
.LBE6944:
	.loc 6 2631 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL1365:
	lwz 29,20(1)
.LVL1366:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI290:
	.cfi_def_cfa_offset 0
	blr
.LVL1367:
.L979:
.LCFI291:
	.cfi_restore_state
	lwz 0,36(1)
.LBB6945:
.LBB6943:
.LBB6942:
	.loc 6 2630 0
	li 3,0
.LBE6942:
.LBE6943:
.LBE6945:
	.loc 6 2631 0
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL1368:
	lwz 29,20(1)
.LVL1369:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1370:
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI292:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2963:
	.size	_ZN8idWindow15FindChildByNameEPKc, .-_ZN8idWindow15FindChildByNameEPKc
	.align 2
	.globl _ZN8idWindow15GetStrPtrByNameEPKc
	.type	_ZN8idWindow15GetStrPtrByNameEPKc, @function
_ZN8idWindow15GetStrPtrByNameEPKc:
.LFB2964:
	.loc 6 2638 0
	.cfi_startproc
.LVL1371:
	.loc 6 2640 0
	li 3,0
.LVL1372:
	blr
	.cfi_endproc
.LFE2964:
	.size	_ZN8idWindow15GetStrPtrByNameEPKc, .-_ZN8idWindow15GetStrPtrByNameEPKc
	.align 2
	.globl _ZN8idWindow15StartTransitionEv
	.type	_ZN8idWindow15StartTransitionEv, @function
_ZN8idWindow15StartTransitionEv:
.LFB2969:
	.loc 6 2660 0
	.cfi_startproc
.LVL1373:
	.loc 6 2661 0
	lwz 0,48(3)
	.loc 6 2662 0
	.loc 6 2661 0
	ori 0,0,1024
	stw 0,48(3)
	.loc 6 2662 0
	blr
	.cfi_endproc
.LFE2969:
	.size	_ZN8idWindow15StartTransitionEv, .-_ZN8idWindow15StartTransitionEv
	.align 2
	.globl _ZN8idWindow15ResetCinematicsEv
	.type	_ZN8idWindow15ResetCinematicsEv, @function
_ZN8idWindow15ResetCinematicsEv:
.LFB2970:
	.loc 6 2669 0
	.cfi_startproc
.LVL1374:
	mflr 0
	stwu 1,-8(1)
.LCFI293:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 6 2670 0
	lwz 0,672(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L983
	.loc 6 4264 0
	lwz 9,732(3)
	.loc 6 2671 0
	mr 3,0
.LVL1375:
	lwz 4,200(9)
	bl _ZNK10idMaterial18ResetCinematicTimeEi
.L983:
	.loc 6 2673 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI294:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2970:
	.size	_ZN8idWindow15ResetCinematicsEv, .-_ZN8idWindow15ResetCinematicsEv
	.align 2
	.globl _ZN8idWindow9ResetTimeEi
	.type	_ZN8idWindow9ResetTimeEi, @function
_ZN8idWindow9ResetTimeEi:
.LFB2971:
	.loc 6 2680 0
	.cfi_startproc
.LVL1376:
	mflr 0
	stwu 1,-48(1)
.LCFI295:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 0,52(1)
	stfd 31,40(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 31,36(1)
.LBB6973:
	.loc 6 4264 0
	lwz 0,784(3)
	.cfi_offset 31, -12
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 63, -8
	.cfi_offset 65, 4
.LVL1377:
	lwz 9,732(3)
	.loc 6 2685 0
	cmpwi 7,0,0
	.loc 6 2682 0
	lwz 9,200(9)
	subf 9,4,9
	stw 9,96(3)
	.loc 6 2685 0
	ble- 7,.L986
	.loc 6 2687 0
	mtctr 0
	.loc 6 2685 0
	li 9,0
	.loc 6 2687 0
	li 10,1
.LVL1378:
.L988:
	.loc 6 2686 0
	lwz 11,796(30)
	slwi 0,9,2
	.loc 6 2685 0
	addi 9,9,1
.LVL1379:
	.loc 6 2686 0
	lwzx 11,11,0
	lwz 0,0(11)
	cmpw 7,4,0
	bgt- 7,.L987
	.loc 6 2687 0
	stb 10,8(11)
.L987:
.LVL1380:
	.loc 6 2685 0
	bdnz .L988
.LVL1381:
.L986:
.LBB6974:
.LBB6975:
	.loc 3 115 0
	lwz 29,216(30)
	.loc 3 114 0
	li 0,0
	stb 0,225(30)
	.loc 3 115 0
	cmpwi 7,29,0
	beq- 7,.L989
.LBE6975:
	.loc 6 4264 0
	lwz 31,220(30)
.LBB6988:
.LBB6976:
.LBB6977:
	.loc 3 53 0
	cmpwi 7,31,0
	beq- 7,.L998
	.loc 3 54 0
	lbz 0,0(31)
	li 4,0
.LVL1382:
	cmpwi 7,0,42
	beq- 7,.L1004
.LVL1383:
.L990:
.LBE6977:
.LBE6976:
.LBB6985:
.LBB6986:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,31
	mr 5,3
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LVL1384:
.L989:
	.loc 6 4264 0
	lwz 27,800(30)
.LVL1385:
.LBE6986:
.LBE6985:
.LBE6988:
.LBE6974:
.LBB6990:
	.loc 6 2694 0
	cmpwi 7,27,0
	ble- 7,.L985
	lis 9,.LC8@ha
	li 29,0
.LBB6991:
	.loc 6 2696 0
	lfs 31,.LC8@l(9)
	lis 26,0x4330
.LVL1386:
.L997:
	.loc 6 4264 0
	lwz 9,732(30)
.LBB6992:
.LBB6993:
	.loc 16 589 0
	mulli 31,29,136
.LBE6993:
.LBE6992:
.LBE6991:
	.loc 6 4264 0
	lwz 4,812(30)
.LVL1387:
.LBB7006:
	.loc 6 2696 0
	lwz 0,200(9)
	stw 26,8(1)
.LBB6995:
.LBB6994:
	.loc 16 589 0
	add 3,4,31
.LVL1388:
.LBE6994:
.LBE6995:
	.loc 6 2696 0
	xoris 0,0,0x8000
	stw 0,12(1)
.LBB6996:
.LBB6997:
	.file 21 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Interpolate.h"
	.loc 21 141 0
	lfs 13,8(3)
	lfs 0,12(3)
	lfs 12,16(3)
	fadds 0,13,0
.LBE6997:
.LBE6996:
	.loc 6 2696 0
	lfd 13,8(1)
	fsub 13,13,31
.LBB7000:
.LBB6998:
	.loc 21 141 0
	fadds 0,0,12
	lfs 12,20(3)
.LBE6998:
.LBE7000:
	.loc 6 2696 0
	frsp 13,13
.LBB7001:
.LBB6999:
	.loc 21 141 0
	fadds 0,0,12
.LBE6999:
.LBE7001:
	.loc 6 2696 0
	fcmpu 7,13,0
	cror 30,29,30
	bne- 7,.L993
	.loc 6 2696 0 is_stmt 0 discriminator 1
	lwzx 0,4,31
	cmpwi 7,0,0
	beq- 7,.L993
.LVL1389:
.LBB7002:
.LBB7003:
	.loc 16 864 0 is_stmt 1
	lwz 9,800(30)
	cmpw 7,9,29
	ble- 7,.L995
.LVL1390:
.LBE7003:
.LBB7004:
.LBB7005:
	.loc 16 868 0
	addi 9,9,-1
	.loc 16 869 0
	cmpw 7,9,29
	.loc 16 868 0
	stw 9,800(30)
.LVL1391:
	.loc 16 869 0
	ble- 7,.L995
	mr 28,29
	b .L996
.LVL1392:
.L1005:
	lwz 4,812(30)
	add 3,4,31
.L996:
	.loc 6 2680 0
	addi 31,31,136
	.loc 16 870 0
	li 5,136
	add 4,4,31
	.loc 16 869 0
	addi 28,28,1
.LVL1393:
	.loc 16 870 0
	bl memcpy
.LVL1394:
	.loc 16 869 0
	lwz 0,800(30)
	cmpw 7,28,0
	blt+ 7,.L1005
.LVL1395:
.L995:
.LBE7005:
.LBE7004:
.LBE7002:
	.loc 6 2698 0
	addi 29,29,-1
.LVL1396:
	.loc 6 2699 0
	addi 27,27,-1
.LVL1397:
.L993:
.LBE7006:
	.loc 6 2694 0
	addi 29,29,1
.LVL1398:
	cmpw 7,27,29
	bgt+ 7,.L997
.LVL1399:
.L985:
.LBE6990:
.LBE6973:
	.loc 6 2703 0
	lwz 0,52(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
.LVL1400:
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL1401:
	lwz 31,36(1)
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI296:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1402:
.L998:
.LCFI297:
	.cfi_restore_state
.LBB7008:
.LBB7007:
.LBB6989:
.LBB6987:
.LBB6984:
	.loc 3 59 0
	lis 31,.LC4@ha
	.loc 3 53 0
	li 4,0
.LVL1403:
	.loc 3 59 0
	la 31,.LC4@l(31)
	b .L990
.L1004:
.LVL1404:
.LBB6978:
.LBB6979:
.LBB6980:
.LBB6981:
	.loc 10 241 0
	mr 3,29
.LVL1405:
	addi 4,31,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1406:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1000
.LVL1407:
.LBB6982:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,225(30)
	lwz 31,4(9)
.LVL1408:
	b .L990
.LVL1409:
.L1000:
.LBE6982:
	.loc 10 245 0
	lis 31,.LC4@ha
.LVL1410:
.LBB6983:
	.loc 6 4264 0
	lbz 4,225(30)
.LBE6983:
	.loc 10 245 0
	la 31,.LC4@l(31)
	b .L990
.LBE6981:
.LBE6980:
.LBE6979:
.LBE6978:
.LBE6984:
.LBE6987:
.LBE6989:
.LBE7007:
.LBE7008:
	.cfi_endproc
.LFE2971:
	.size	_ZN8idWindow9ResetTimeEi, .-_ZN8idWindow9ResetTimeEi
	.align 2
	.globl _ZN8idWindow13RunScriptListEP15idGuiScriptList
	.type	_ZN8idWindow13RunScriptListEP15idGuiScriptList, @function
_ZN8idWindow13RunScriptListEP15idGuiScriptList:
.LFB2972:
	.loc 6 2711 0
	.cfi_startproc
.LVL1411:
	mflr 0
	stwu 1,-8(1)
.LCFI298:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 6 2712 0
	mr. 0,4
	.cfi_offset 65, 4
	.loc 6 2711 0
	mr 4,3
.LVL1412:
	.loc 6 2713 0
	li 3,0
.LVL1413:
	.loc 6 2712 0
	beq- 0,.L1007
	.loc 6 2715 0
	mr 3,0
	bl _ZN15idGuiScriptList7ExecuteEP8idWindow
.LVL1414:
	.loc 6 2716 0
	li 3,1
.L1007:
	.loc 6 2717 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI299:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2972:
	.size	_ZN8idWindow13RunScriptListEP15idGuiScriptList, .-_ZN8idWindow13RunScriptListEP15idGuiScriptList
	.align 2
	.globl _ZN8idWindow4TimeEv
	.type	_ZN8idWindow4TimeEv, @function
_ZN8idWindow4TimeEv:
.LFB2923:
	.loc 6 1074 0
	.cfi_startproc
.LVL1415:
	mflr 0
	stwu 1,-32(1)
.LCFI300:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
.LBB7028:
	.loc 6 1076 0
	lbz 0,225(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L1009
	.loc 6 1080 0
	lwz 0,96(3)
	cmpwi 7,0,-1
	beq- 7,.L1021
	.loc 6 1084 0
	addi 30,31,4
	lis 4,.LC4@ha
	mr 3,30
.LVL1416:
	la 4,.LC4@l(4)
	bl _ZN5idStraSEPKc
	.loc 6 4264 0
	lwz 27,784(31)
.LBB7029:
	.loc 6 1087 0
	lwz 29,732(31)
	li 28,0
	cmpwi 7,27,0
.LBB7030:
	.loc 6 1090 0
	li 26,0
.LBE7030:
	.loc 6 1087 0
	ble- 7,.L1013
.L1015:
.LVL1417:
.LBB7031:
	.loc 6 1089 0
	lwz 9,796(31)
.LBE7031:
	.loc 6 1074 0
	slwi 0,28,2
.LBB7032:
	.loc 6 1088 0
	addi 28,28,1
.LVL1418:
	.loc 6 1089 0
	lwzx 9,9,0
	lbz 11,8(9)
	cmpwi 7,11,0
	beq- 7,.L1014
	.loc 6 1089 0 is_stmt 0 discriminator 1
	lwz 8,200(29)
	.loc 6 1091 0 is_stmt 1 discriminator 1
	mr 3,31
	.loc 6 1089 0 discriminator 1
	lwz 10,96(31)
	lwz 11,0(9)
	subf 10,10,8
	cmpw 7,10,11
	blt- 7,.L1014
	.loc 6 1090 0 discriminator 4
	stb 26,8(9)
	.loc 6 1091 0 discriminator 4
	lwz 9,796(31)
	lwzx 9,9,0
	lwz 4,4(9)
	bl _ZN8idWindow13RunScriptListEP15idGuiScriptList
	lwz 29,732(31)
.L1014:
.LVL1419:
	.loc 6 1088 0
	cmpw 7,28,27
	bne+ 7,.L1015
.LVL1420:
.L1013:
.LBE7032:
.LBE7029:
	.loc 6 1095 0
	lbz 0,4(29)
	cmpwi 7,0,0
	bne- 7,.L1022
.L1009:
.LBE7028:
	.loc 6 1098 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1421:
	addi 1,1,32
	.cfi_remember_state
.LCFI301:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1422:
.L1022:
.LCFI302:
	.cfi_restore_state
.LBB7055:
.LBB7034:
.LBB7035:
	.loc 6 4264 0
	lwz 0,4(31)
.LBE7035:
.LBE7034:
	.loc 6 1096 0
	addi 28,29,124
.LVL1423:
.LBB7050:
.LBB7048:
.LBB7036:
	.loc 4 761 0
	lwz 27,124(29)
.LBB7037:
.LBB7038:
	.loc 4 350 0
	lwz 9,132(29)
.LBE7038:
.LBE7037:
	.loc 4 761 0
	add 27,0,27
.LVL1424:
	.loc 4 762 0
	addi 4,27,1
.LVL1425:
.LBB7041:
.LBB7039:
	.loc 4 350 0
	cmpw 7,4,9
	bgt- 7,.L1023
.LVL1426:
.L1016:
.LBE7039:
.LBE7041:
	.loc 4 763 0
	cmpwi 7,0,0
	ble- 7,.L1017
	li 9,0
.LVL1427:
.L1018:
.LBB7042:
.LBB7043:
	.loc 4 522 0
	lwz 8,4(30)
.LBE7043:
.LBE7042:
	.loc 4 764 0
	lwz 10,4(28)
	lwz 11,0(28)
.LBB7045:
.LBB7044:
	.loc 4 522 0
	lbzx 0,8,9
.LBE7044:
.LBE7045:
	.loc 4 764 0
	add 11,10,11
	stbx 0,11,9
	.loc 4 763 0
	addi 9,9,1
.LVL1428:
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L1018
.LVL1429:
.L1017:
	.loc 4 767 0
	lwz 9,128(29)
	li 0,0
	.loc 4 766 0
	stw 27,124(29)
	.loc 4 767 0
	stbx 0,9,27
.LBE7036:
.LBE7048:
.LBE7050:
.LBE7055:
	.loc 6 1098 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL1430:
	lwz 28,16(1)
.LVL1431:
	lwz 29,20(1)
.LVL1432:
	lwz 30,24(1)
.LVL1433:
	lwz 31,28(1)
.LVL1434:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI303:
	.cfi_def_cfa_offset 0
	blr
.LVL1435:
.L1021:
.LCFI304:
	.cfi_restore_state
.LBB7056:
	.loc 6 4264 0
	lwz 9,732(3)
	.loc 6 1084 0
	addi 30,31,4
	lis 4,.LC4@ha
.LBB7051:
	.loc 6 1087 0
	li 28,0
.LBE7051:
	.loc 6 4264 0
	lwz 0,200(9)
	.loc 6 1084 0
	la 4,.LC4@l(4)
.LBB7052:
.LBB7033:
	.loc 6 1090 0
	li 26,0
.LBE7033:
.LBE7052:
	.loc 6 1081 0
	stw 0,96(3)
	.loc 6 1084 0
	mr 3,30
.LVL1436:
	bl _ZN5idStraSEPKc
	.loc 6 4264 0
	lwz 27,784(31)
.LBB7053:
	.loc 6 1087 0
	lwz 29,732(31)
	cmpwi 7,27,0
	bgt+ 7,.L1015
	b .L1013
.LVL1437:
.L1023:
.LBE7053:
.LBB7054:
.LBB7049:
.LBB7047:
.LBB7046:
.LBB7040:
	.loc 4 351 0
	mr 3,28
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL1438:
	lwz 0,4(31)
	b .L1016
.LBE7040:
.LBE7046:
.LBE7047:
.LBE7049:
.LBE7054:
.LBE7056:
	.cfi_endproc
.LFE2923:
	.size	_ZN8idWindow4TimeEv, .-_ZN8idWindow4TimeEv
	.align 2
	.globl _ZN8idWindow9RunScriptEi
	.type	_ZN8idWindow9RunScriptEi, @function
_ZN8idWindow9RunScriptEi:
.LFB2973:
	.loc 6 2724 0
	.cfi_startproc
.LVL1439:
	.loc 6 2725 0
	cmplwi 7,4,10
	ble- 7,.L1026
	.loc 6 2729 0
	li 3,0
.LVL1440:
	blr
.LVL1441:
.L1026:
.LBB7059:
.LBB7060:
	.loc 6 2726 0
	addi 4,4,184
.LVL1442:
	slwi 4,4,2
.LVL1443:
	lwzx 4,3,4
.LBE7060:
.LBE7059:
	.loc 6 2729 0
.LBB7062:
.LBB7061:
	.loc 6 2726 0
	b _ZN8idWindow13RunScriptListEP15idGuiScriptList
.LVL1444:
.LVL1445:
.LBE7061:
.LBE7062:
	.cfi_endproc
.LFE2973:
	.size	_ZN8idWindow9RunScriptEi, .-_ZN8idWindow9RunScriptEi
	.align 2
	.globl _ZN8idWindow9MouseExitEv
	.type	_ZN8idWindow9MouseExitEv, @function
_ZN8idWindow9MouseExitEv:
.LFB2907:
	.loc 6 431 0
	.cfi_startproc
.LVL1446:
	.loc 6 433 0
	lbz 0,257(3)
	cmpwi 7,0,0
	bnelr+ 7
.LBB7067:
.LBB7068:
	.loc 6 437 0
	li 4,1
.LBE7068:
.LBE7067:
	.loc 6 438 0
.LBB7070:
.LBB7069:
	.loc 6 437 0
	b _ZN8idWindow9RunScriptEi
.LVL1447:
.LBE7069:
.LBE7070:
	.cfi_endproc
.LFE2907:
	.size	_ZN8idWindow9MouseExitEv, .-_ZN8idWindow9MouseExitEv
	.align 2
	.globl _ZN8idWindow10MouseEnterEv
	.type	_ZN8idWindow10MouseEnterEv, @function
_ZN8idWindow10MouseEnterEv:
.LFB2906:
	.loc 6 417 0
	.cfi_startproc
.LVL1448:
	.loc 6 419 0
	lbz 0,257(3)
	cmpwi 7,0,0
	bnelr+ 7
.LBB7075:
.LBB7076:
	.loc 6 423 0
	li 4,0
.LBE7076:
.LBE7075:
	.loc 6 424 0
.LBB7078:
.LBB7077:
	.loc 6 423 0
	b _ZN8idWindow9RunScriptEi
.LVL1449:
.LBE7077:
.LBE7078:
	.cfi_endproc
.LFE2906:
	.size	_ZN8idWindow10MouseEnterEv, .-_ZN8idWindow10MouseEnterEv
	.align 2
	.globl _ZN8idWindow7TriggerEv
	.type	_ZN8idWindow7TriggerEv, @function
_ZN8idWindow7TriggerEv:
.LFB2910:
	.loc 6 529 0
	.cfi_startproc
.LVL1450:
	stwu 1,-24(1)
.LCFI305:
	.cfi_def_cfa_offset 24
	mflr 0
.LBB7079:
	.loc 6 530 0
	li 4,7
.LBE7079:
	.loc 6 529 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 29,12(1)
	stw 0,28(1)
	stw 30,16(1)
.LBB7081:
	.loc 6 530 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	bl _ZN8idWindow9RunScriptEi
.LVL1451:
	.loc 6 4264 0
	lwz 29,680(31)
.LVL1452:
.LBB7080:
	.loc 6 532 0
	cmpwi 7,29,0
	ble- 7,.L1032
	li 30,0
.LVL1453:
.L1033:
	.loc 6 533 0 discriminator 2
	lwz 9,692(31)
	slwi 0,30,2
	.loc 6 532 0 discriminator 2
	addi 30,30,1
.LVL1454:
	.loc 6 533 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
.LVL1455:
	.loc 6 532 0 discriminator 2
	cmpw 7,30,29
	bne+ 7,.L1033
.LVL1456:
.L1032:
.LBE7080:
	.loc 6 535 0
	lwz 9,0(31)
	mr 3,31
	li 4,1
	lwz 0,100(9)
	mtctr 0
	bctrl
.LBE7081:
	.loc 6 536 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1457:
	addi 1,1,24
.LCFI306:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2910:
	.size	_ZN8idWindow7TriggerEv, .-_ZN8idWindow7TriggerEv
	.align 2
	.globl _ZN8idWindow8ActivateEbR5idStr
	.type	_ZN8idWindow8ActivateEbR5idStr, @function
_ZN8idWindow8ActivateEbR5idStr:
.LFB2909:
	.loc 6 506 0
	.cfi_startproc
.LVL1458:
	mflr 0
	stwu 1,-32(1)
.LCFI307:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 26,8(1)
	stw 27,12(1)
.LBB7108:
	.loc 6 508 0
	mr 27,4
	.cfi_offset 27, -20
	.cfi_offset 26, -24
.LBE7108:
	.loc 6 506 0
	stw 29,20(1)
.LBB7115:
	.loc 6 508 0
	cntlzw 4,4
.LVL1459:
.LBE7115:
	.loc 6 506 0
	stw 30,24(1)
.LBB7116:
	.loc 6 508 0
	srwi 4,4,5
.LBE7116:
	.loc 6 506 0
	stw 0,36(1)
	mr 30,3
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 28,16(1)
	mr 29,5
	stw 31,28(1)
.LBB7117:
	.loc 6 508 0
	addi 26,4,3
.LVL1460:
.LBB7109:
	.loc 6 4264 0
	lwz 31,640(3)
	.cfi_offset 31, -4
	.cfi_offset 28, -16
.LBB7110:
.LBB7111:
	.loc 6 611 0
	cmpwi 7,31,0
	ble- 7,.L1037
	li 28,0
.LVL1461:
.L1038:
	.loc 6 612 0
	lwz 9,652(30)
	slwi 0,28,2
	.loc 6 611 0
	addi 28,28,1
.LVL1462:
	.loc 6 612 0
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL1463:
	.loc 6 611 0
	cmpw 7,28,31
	bne+ 7,.L1038
.LVL1464:
.L1037:
.LBE7111:
.LBE7110:
.LBE7109:
	.loc 6 513 0 discriminator 3
	mr 3,30
	mr 4,26
	bl _ZN8idWindow9RunScriptEi
	.loc 6 4264 0 discriminator 3
	lwz 28,680(30)
.LVL1465:
.LBB7112:
	.loc 6 515 0 discriminator 3
	cmpwi 7,28,0
	ble- 7,.L1039
	.loc 6 515 0 is_stmt 0
	li 31,0
.LVL1466:
.L1040:
	.loc 6 516 0 is_stmt 1 discriminator 2
	lwz 9,692(30)
	slwi 0,31,2
	mr 4,27
	mr 5,29
	lwzx 3,9,0
	.loc 6 515 0 discriminator 2
	addi 31,31,1
.LVL1467:
	.loc 6 516 0 discriminator 2
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
.LVL1468:
	.loc 6 515 0 discriminator 2
	cmpw 7,31,28
	bne+ 7,.L1040
.LVL1469:
.L1039:
	.loc 6 4264 0
	lwz 11,0(29)
.LBE7112:
	.loc 6 519 0
	cmpwi 7,11,0
	bne- 7,.L1049
.LBE7117:
	.loc 6 522 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL1470:
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1471:
	lwz 30,24(1)
.LVL1472:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI308:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1473:
.L1049:
.LCFI309:
	.cfi_restore_state
.LBB7118:
.LBB7119:
.LBB7120:
.LBB7121:
.LBB7122:
.LBB7123:
.LBB7124:
.LBB7125:
	.loc 4 350 0
	lwz 0,8(29)
.LBE7125:
.LBE7124:
	.loc 4 776 0
	addi 4,11,4
	.loc 4 775 0
	addi 31,11,3
.LVL1474:
.LBB7128:
.LBB7126:
	.loc 4 350 0
	cmpw 7,4,0
	ble+ 7,.L1044
	.loc 4 351 0
	mr 3,29
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL1475:
	lwz 11,0(29)
.LVL1476:
.L1044:
	.loc 4 350 0
	lis 10,.LC26@ha
.LBE7126:
.LBE7128:
.LBE7123:
.LBE7122:
.LBE7121:
.LBE7120:
.LBE7119:
.LBE7118:
.LBB7140:
.LBB7113:
	.loc 6 515 0
	li 0,32
.LBE7113:
.LBE7140:
.LBB7141:
.LBB7138:
.LBB7136:
.LBB7134:
.LBB7132:
.LBB7130:
.LBB7129:
.LBB7127:
	.loc 4 350 0
	la 10,.LC26@l(10)
.LBE7127:
.LBE7129:
.LBE7130:
.LBE7132:
.LBE7134:
.LBE7136:
.LBE7138:
.LBE7141:
.LBB7142:
.LBB7114:
	.loc 6 515 0
	li 9,0
	b .L1043
.LVL1477:
.L1050:
.LBE7114:
.LBE7142:
.LBB7143:
.LBB7139:
.LBB7137:
.LBB7135:
.LBB7133:
.LBB7131:
	.loc 4 777 0
	lwz 11,0(29)
.LVL1478:
.L1043:
	.loc 4 778 0
	lwz 8,4(29)
	add 11,8,11
	stbx 0,11,9
	.loc 4 777 0
	addi 9,9,1
.LVL1479:
	lbzu 0,1(10)
	cmpwi 7,0,0
	bne+ 7,.L1050
	.loc 4 781 0
	lwz 9,4(29)
.LVL1480:
	.loc 4 780 0
	stw 31,0(29)
	.loc 4 781 0
	stbx 0,9,31
.LBE7131:
.LBE7133:
.LBE7135:
.LBE7137:
.LBE7139:
.LBE7143:
	.loc 6 522 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL1481:
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1482:
	lwz 30,24(1)
.LVL1483:
	lwz 31,28(1)
.LVL1484:
	addi 1,1,32
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI310:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2909:
	.size	_ZN8idWindow8ActivateEbR5idStr, .-_ZN8idWindow8ActivateEbR5idStr
	.align 2
	.globl _ZN8idWindow17EvaluateRegistersEPf
	.type	_ZN8idWindow17EvaluateRegistersEPf, @function
_ZN8idWindow17EvaluateRegistersEPf:
.LFB2983:
	.loc 6 3061 0
	.cfi_startproc
.LVL1485:
	mflr 0
	stwu 1,-152(1)
.LCFI311:
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	stw 27,124(1)
	mr 27,4
	.cfi_offset 27, -28
	stw 28,128(1)
	mr 28,3
	.cfi_offset 28, -24
	stw 0,156(1)
	stfd 31,144(1)
	stw 17,84(1)
	stw 18,88(1)
	stw 19,92(1)
	stw 20,96(1)
	stw 21,100(1)
	stw 22,104(1)
	stw 23,108(1)
	stw 24,112(1)
	stw 25,116(1)
	stw 26,120(1)
	stw 29,132(1)
	stw 30,136(1)
	stw 31,140(1)
.LBB7144:
.LBB7145:
.LBB7146:
.LBB7147:
.LBB7148:
	.loc 6 4264 0
	lwz 9,832(3)
	lwz 26,816(3)
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
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
	.cfi_offset 63, -8
	.cfi_offset 65, 4
.LVL1486:
.LBE7148:
.LBE7147:
.LBE7146:
.LBE7145:
	.loc 6 3069 0
	cmpwi 7,9,1
	ble- 7,.L1052
	addi 9,9,-1
	mr 10,4
	mtctr 9
	li 11,1
.LVL1487:
.L1053:
	.loc 6 3070 0 discriminator 2
	lwz 9,844(28)
	slwi 0,11,2
	.loc 6 3069 0 discriminator 2
	addi 11,11,1
.LVL1488:
	.loc 6 3070 0 discriminator 2
	lwzx 0,9,0
	stwu 0,4(10)
	.loc 6 3069 0 discriminator 2
	bdnz .L1053
.LVL1489:
.L1052:
	.loc 6 4264 0
	lwz 9,732(28)
	.loc 6 3074 0
	lis 23,.LC8@ha
	lfs 0,.LC8@l(23)
.LBB7186:
	.loc 6 3076 0
	cmpwi 7,26,0
.LBE7186:
	.loc 6 3074 0
	lwz 0,200(9)
	lis 9,0x4330
	stw 9,24(1)
	xoris 0,0,0x8000
	stw 0,28(1)
	lfd 13,24(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,0(27)
.LVL1490:
.LBB7187:
	.loc 6 3076 0
	ble- 7,.L1051
.LBB7182:
.LBB7176:
.LBB7171:
	.loc 6 3183 0
	lis 20,.LC69@ha
.LBE7171:
	.loc 6 3081 0
	lis 25,.L1077@ha
.LBB7172:
.LBB7149:
	.loc 6 3179 0
	lis 9,.LC1@ha
.LBE7149:
	.loc 6 3093 0
	lis 18,.LC65@ha
.LBE7172:
.LBE7176:
.LBE7182:
	.loc 6 3076 0
	li 31,0
	li 29,0
.LBB7183:
.LBB7177:
.LBB7173:
	.loc 6 3183 0
	lis 22,common@ha
	la 20,.LC69@l(20)
.LBE7173:
	.loc 6 3081 0
	la 25,.L1077@l(25)
.LBB7174:
.LBB7152:
	.loc 6 3179 0
	lfs 31,.LC1@l(9)
.LBB7150:
	.loc 6 3177 0
	lis 19,.LC67@ha
.LBE7150:
.LBE7152:
.LBB7153:
	.loc 6 3142 0
	lis 17,.LC68@ha
.LBE7153:
	.loc 6 3135 0
	lis 24,.LC0@ha
.LBB7155:
	.loc 6 3106 0
	lis 21,declManager@ha
.LBE7155:
	.loc 6 3093 0
	la 18,.LC65@l(18)
	b .L1102
.LVL1491:
.L1056:
	.loc 6 3183 0
	lwz 3,common@l(22)
	mr 4,20
	lwz 9,0(3)
	lwz 0,100(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.L1055:
.LBE7174:
.LBE7177:
.LBE7183:
	.loc 6 3076 0
	addi 29,29,1
.LVL1492:
	addi 31,31,20
	cmpw 7,29,26
	beq- 7,.L1051
.LVL1493:
.L1102:
.LBB7184:
.LBB7178:
.LBB7179:
	.loc 16 589 0
	lwz 9,828(28)
	add 30,9,31
.LBE7179:
.LBE7178:
	.loc 6 3078 0
	lwz 0,8(30)
	cmpwi 7,0,-2
	beq- 7,.L1055
.LBB7180:
	.loc 6 3081 0
	lwzx 9,9,31
	cmplwi 7,9,19
	bgt- 7,.L1056
	slwi 9,9,2
	lwzx 9,25,9
	add 9,9,25
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L1077:
	.long .L1057-.L1077
	.long .L1058-.L1077
	.long .L1059-.L1077
	.long .L1060-.L1077
	.long .L1061-.L1077
	.long .L1062-.L1077
	.long .L1063-.L1077
	.long .L1064-.L1077
	.long .L1065-.L1077
	.long .L1066-.L1077
	.long .L1067-.L1077
	.long .L1068-.L1077
	.long .L1069-.L1077
	.long .L1070-.L1077
	.long .L1071-.L1077
	.long .L1072-.L1077
	.long .L1073-.L1077
	.long .L1074-.L1077
	.long .L1075-.L1077
	.long .L1076-.L1077
	.section	".text"
.LVL1494:
.L1051:
.LBE7180:
.LBE7184:
.LBE7187:
.LBE7144:
	.loc 6 3187 0
	lwz 0,156(1)
	lwz 17,84(1)
	mtlr 0
	lwz 18,88(1)
	lwz 19,92(1)
	lwz 20,96(1)
	lwz 21,100(1)
	lwz 22,104(1)
	lwz 23,108(1)
	lwz 24,112(1)
	lwz 25,116(1)
	lwz 26,120(1)
	lwz 27,124(1)
.LVL1495:
	lwz 28,128(1)
.LVL1496:
	lwz 29,132(1)
	lwz 30,136(1)
	lwz 31,140(1)
	lfd 31,144(1)
	addi 1,1,152
	.cfi_remember_state
.LCFI312:
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
	blr
.LVL1497:
.L1075:
.LCFI313:
	.cfi_restore_state
.LBB7189:
.LBB7188:
.LBB7185:
.LBB7181:
.LBB7175:
.LBB7156:
	.loc 6 3175 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1101
.LVL1498:
.LBB7151:
	.loc 6 3177 0
	lbz 9,13(9)
	lwz 0,12(30)
	stw 9,60(1)
	lis 9,0x4330
	stw 9,56(1)
	slwi 0,0,2
	lfs 0,.LC67@l(19)
	lfd 13,56(1)
	fsub 0,13,0
	frsp 0,0
	stfsx 0,27,0
	b .L1055
.LVL1499:
.L1074:
.LBE7151:
.LBE7156:
.LBB7157:
	.loc 6 3167 0
	lwz 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L1101
.LVL1500:
.LBB7158:
	.loc 6 3169 0
	lwz 9,16(9)
	lwz 0,12(30)
	xoris 9,9,0x8000
	lfs 0,.LC8@l(23)
	stw 9,52(1)
	lis 9,0x4330
	stw 9,48(1)
	slwi 0,0,2
	lfd 13,48(1)
	fsub 0,13,0
	frsp 0,0
	stfsx 0,27,0
	b .L1055
.LVL1501:
.L1073:
.LBE7158:
.LBE7157:
.LBB7159:
	.loc 6 3159 0
	lwz 9,4(30)
.LBB7160:
	.loc 6 3161 0
	lwz 0,12(30)
.LBE7160:
	.loc 6 3159 0
	cmpwi 7,9,0
	beq- 7,.L1122
.LVL1502:
	.loc 6 4264 0
	lwz 9,16(9)
.LBB7161:
	.loc 6 3161 0
	slwi 0,0,2
	stwx 9,27,0
	b .L1055
.LVL1503:
.L1072:
.LBE7161:
.LBE7159:
.LBB7162:
	.loc 6 3151 0
	lwz 3,4(30)
	cmpwi 7,3,0
	bne- 7,.L1130
.L1098:
	.loc 6 3155 0
	lwz 0,12(30)
	slwi 0,0,2
	stfsx 31,27,0
	b .L1055
.L1071:
.LBE7162:
	.loc 6 3138 0
	lwz 3,4(30)
	cmpwi 7,3,0
	beq- 7,.L1098
.LBB7164:
	.loc 6 3142 0
	cmpwi 7,0,0
	blt- 7,.L1095
	.loc 6 3142 0 is_stmt 0 discriminator 1
	slwi 0,0,2
	lfsx 0,27,0
	fcmpu 7,0,31
	cror 30,29,30
	bne- 7,.L1095
	.loc 6 3142 0 discriminator 2
	lfs 13,.LC68@l(17)
	fcmpu 7,0,13
	bnl- 7,.L1095
.LBB7154:
	.loc 6 3145 0 is_stmt 1
	fctiwz 0,0
	addi 9,1,64
	lwz 0,12(30)
	addi 11,1,8
	stfiwx 0,0,9
	slwi 0,0,2
	.loc 6 3144 0
	stw 3,8(1)
.LVL1504:
	.loc 6 3145 0
	lwz 9,64(1)
	slwi 9,9,2
	lwzx 9,11,9
	stwx 9,27,0
.LBE7154:
	b .L1055
.LVL1505:
.L1070:
.LBE7164:
	.loc 6 3135 0
	lwz 11,4(30)
	lwz 9,12(30)
	slwi 11,11,2
	lfsx 0,27,11
	slwi 9,9,2
	fcmpu 7,0,31
	lfs 0,.LC0@l(24)
	beq- 7,.L1131
	.loc 6 3135 0 is_stmt 0 discriminator 4
	stfsx 0,27,9
	.loc 6 3136 0 is_stmt 1 discriminator 4
	b .L1055
.L1069:
	.loc 6 3132 0
	lwz 9,4(30)
	lwz 11,12(30)
	slwi 9,9,2
	lfsx 0,27,9
	slwi 11,11,2
	li 9,0
	fcmpu 7,0,31
	beq- 7,.L1092
	.loc 6 3132 0 is_stmt 0 discriminator 1
	slwi 0,0,2
	lfsx 0,27,0
	fcmpu 7,0,31
	beq- 7,.L1092
	.loc 6 3132 0
	lwz 9,.LC0@l(24)
.L1092:
	.loc 6 3132 0 discriminator 4
	stwx 9,27,11
	.loc 6 3133 0 is_stmt 1 discriminator 4
	b .L1055
.L1063:
	.loc 6 3111 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	slwi 9,9,2
	lwz 0,.LC0@l(24)
	lfsx 13,27,9
	lwz 9,12(30)
	fcmpu 7,13,0
	slwi 9,9,2
	bng- 7,.L1127
.L1123:
	.loc 6 3129 0 discriminator 3
	stwx 0,27,9
	.loc 6 3130 0 discriminator 3
	b .L1055
.L1067:
	.loc 6 3123 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	li 0,0
	slwi 9,9,2
	lfsx 13,27,9
	lwz 9,12(30)
	fcmpu 7,13,0
	slwi 9,9,2
	bne- 7,.L1123
	.loc 6 3126 0
	lwz 0,.LC0@l(24)
.L1133:
	.loc 6 3129 0
	stwx 0,27,9
	b .L1055
.L1066:
	.loc 6 3120 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	slwi 9,9,2
	lwz 0,.LC0@l(24)
	lfsx 13,27,9
	lwz 9,12(30)
	fcmpu 7,13,0
	slwi 9,9,2
	cror 30,28,30
	beq- 7,.L1123
.L1127:
	li 0,0
	.loc 6 3129 0
	stwx 0,27,9
	b .L1055
.L1059:
	.loc 6 3089 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	slwi 9,9,2
	lwz 0,12(30)
	lfsx 13,27,9
	slwi 0,0,2
	fmuls 0,13,0
	stfsx 0,27,0
	.loc 6 3090 0
	b .L1055
.L1058:
	.loc 6 3086 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	slwi 9,9,2
	lwz 0,12(30)
	lfsx 13,27,9
	slwi 0,0,2
	fsubs 0,13,0
	stfsx 0,27,0
	.loc 6 3087 0
	b .L1055
.L1057:
	.loc 6 3083 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	slwi 9,9,2
	lwz 0,12(30)
	lfsx 13,27,9
	slwi 0,0,2
	fadds 0,13,0
	stfsx 0,27,0
	.loc 6 3084 0
	b .L1055
.L1076:
	.loc 6 3129 0
	lwz 11,4(30)
	lwz 9,12(30)
	slwi 11,11,2
	lfsx 0,27,11
	slwi 9,9,2
	fcmpu 7,0,31
	beq- 7,.L1090
	.loc 6 3129 0 is_stmt 0 discriminator 2
	slwi 0,0,2
	lwzx 0,27,0
.L1134:
	.loc 6 3129 0
	stwx 0,27,9
	b .L1055
.L1061:
	.loc 6 3100 0 is_stmt 1
	slwi 0,0,2
	addi 11,1,72
	lfsx 0,27,0
	.loc 6 3101 0
	li 9,0
	.loc 6 3100 0
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 0,72(1)
.LVL1506:
	.loc 6 3101 0
	cmpwi 7,0,0
	beq- 7,.L1079
	lwz 9,4(30)
	lfs 0,.LC8@l(23)
	slwi 9,9,2
	lfsx 13,27,9
	lis 9,0x4330
	stw 9,32(1)
	addi 9,1,68
	fctiwz 13,13
	stfiwx 13,0,9
	lwz 9,68(1)
	divw 11,9,0
.LVL1507:
	mullw 0,11,0
	subf 0,0,9
	xoris 0,0,0x8000
	stw 0,36(1)
	lfd 13,32(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,76(1)
	lwz 9,76(1)
.L1079:
.LVL1508:
	.loc 6 3102 0 discriminator 3
	lwz 0,12(30)
	slwi 0,0,2
	stwx 9,27,0
	.loc 6 3103 0 discriminator 3
	b .L1055
.L1062:
.LBB7165:
	.loc 6 3106 0
	lwz 3,declManager@l(21)
	li 4,0
	lwz 5,4(30)
	li 6,1
	lwz 9,0(3)
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 6 3107 0
	lwz 0,8(30)
	lwz 30,12(30)
	slwi 0,0,2
	lfsx 1,27,0
	slwi 30,30,2
	bl _ZNK11idDeclTable11TableLookupEf
	stfsx 1,27,30
.LBE7165:
	.loc 6 3109 0
	b .L1055
.L1060:
	.loc 6 3092 0
	slwi 0,0,2
	lfsx 0,27,0
	fcmpu 7,0,31
	beq- 7,.L1132
	.loc 6 3096 0
	lwz 9,4(30)
	lwz 0,12(30)
	slwi 9,9,2
	lfsx 13,27,9
	slwi 0,0,2
	fdivs 0,13,0
	stfsx 0,27,0
	b .L1055
.L1068:
	.loc 6 3126 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	li 0,0
	slwi 9,9,2
	lfsx 13,27,9
	lwz 9,12(30)
	fcmpu 7,13,0
	slwi 9,9,2
	beq- 7,.L1123
	lwz 0,.LC0@l(24)
	b .L1133
.L1065:
	.loc 6 3117 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	slwi 9,9,2
	lwz 0,.LC0@l(24)
	lfsx 13,27,9
	lwz 9,12(30)
	fcmpu 7,13,0
	slwi 9,9,2
	bnl- 7,.L1127
	.loc 6 3129 0
	stwx 0,27,9
	b .L1055
.L1064:
	.loc 6 3114 0
	lwz 9,4(30)
	slwi 0,0,2
	lfsx 0,27,0
	slwi 9,9,2
	lwz 0,.LC0@l(24)
	lfsx 13,27,9
	lwz 9,12(30)
	fcmpu 7,13,0
	slwi 9,9,2
	cror 30,29,30
	bne- 7,.L1127
	.loc 6 3129 0
	stwx 0,27,9
	b .L1055
.L1101:
.LBB7166:
	.loc 6 3179 0
	lwz 0,12(30)
.L1122:
	slwi 0,0,2
	stfsx 31,27,0
	b .L1055
.L1090:
.LBE7166:
	.loc 6 3129 0 discriminator 2
	lwz 0,16(30)
	slwi 0,0,2
	lwzx 0,27,0
	b .L1134
.L1131:
	.loc 6 3135 0 discriminator 2
	slwi 0,0,2
	.loc 6 3061 0 discriminator 2
	lfsx 0,27,0
	.loc 6 3135 0 discriminator 2
	lis 0,0x4330
	stw 0,40(1)
	.loc 6 3061 0 discriminator 2
	fcmpu 7,0,31
	.loc 6 3135 0 discriminator 2
	lfs 0,.LC67@l(19)
	.loc 6 3061 0 discriminator 2
	crnot 30,30
	.loc 6 3135 0 discriminator 2
	mfcr 0
	rlwinm 0,0,31,1
	stw 0,44(1)
	lfd 13,40(1)
	fsub 0,13,0
	frsp 0,0
	stfsx 0,27,9
	b .L1055
.L1095:
.LBB7167:
	.loc 6 3147 0
	lwz 9,0(3)
	lwz 30,12(30)
	lwz 0,36(9)
	slwi 30,30,2
	mtctr 0
	bctrl
	stfsx 1,27,30
	b .L1055
.L1130:
.LVL1509:
.LBE7167:
.LBB7168:
.LBB7163:
	.loc 6 3153 0
	lwz 9,0(3)
	lwz 30,12(30)
	lwz 0,20(9)
	slwi 30,30,2
	mtctr 0
	bctrl
.LVL1510:
	bl atof
	frsp 1,1
	stfsx 1,27,30
	b .L1055
.L1132:
.LBE7163:
.LBE7168:
	.loc 6 3093 0
	lwz 3,common@l(22)
.LVL1511:
	mr 4,18
.LBB7169:
.LBB7170:
	.loc 6 4264 0
	lwz 9,732(28)
.LBE7170:
.LBE7169:
	.loc 6 3093 0
	lwz 11,0(3)
	lwz 6,64(9)
	lwz 0,80(11)
	lwz 5,140(28)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL1512:
	.loc 6 3094 0
	lwz 9,4(30)
	lwz 0,12(30)
	slwi 9,9,2
	lwzx 9,27,9
	slwi 0,0,2
	stwx 9,27,0
	b .L1055
.LBE7175:
.LBE7181:
.LBE7185:
.LBE7188:
.LBE7189:
	.cfi_endproc
.LFE2983:
	.size	_ZN8idWindow17EvaluateRegistersEPf, .-_ZN8idWindow17EvaluateRegistersEPf
	.align 2
	.globl _ZN8idWindow8EvalRegsEib
	.type	_ZN8idWindow8EvalRegsEib, @function
_ZN8idWindow8EvalRegsEib:
.LFB2924:
	.loc 6 1105 0
	.cfi_startproc
.LVL1513:
.LBB7190:
	.loc 6 1109 0
	cmpwi 7,5,0
.LBE7190:
	.loc 6 1105 0
	mflr 0
	stwu 1,-32(1)
.LCFI314:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
.LBB7191:
	.loc 6 1109 0
	bne- 7,.L1146
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 6 1109 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	blt- 7,.L1146
	.loc 6 1109 0 discriminator 2
	cmpwi 7,4,2047
	lis 29,.LANCHOR0@ha
	la 29,.LANCHOR0@l(29)
	bgt- 7,.L1136
	.loc 6 1109 0 discriminator 3
	lwz 0,18756(29)
	cmpw 7,0,3
	beq- 7,.L1147
	.loc 6 1115 0 is_stmt 1
	lwz 0,832(31)
	.loc 6 1113 0
	stw 31,18756(29)
	.loc 6 1115 0
	cmpwi 7,0,0
	beq+ 7,.L1138
.L1149:
	.loc 6 1116 0
	addi 28,29,18760
	addi 27,31,872
	mr 3,27
.LVL1514:
	mr 4,28
.LVL1515:
	bl _ZN14idRegisterList9SetToRegsEPf
.LVL1516:
	.loc 6 1117 0
	mr 3,31
	mr 4,28
	bl _ZN8idWindow17EvaluateRegistersEPf
	.loc 6 1118 0
	mr 3,27
	mr 4,28
	bl _ZN14idRegisterList11GetFromRegsEPf
	b .L1138
.LVL1517:
.L1146:
	lis 29,.LANCHOR0@ha
	la 29,.LANCHOR0@l(29)
.L1136:
	.loc 6 1115 0
	lwz 0,832(31)
	.loc 6 1113 0
	stw 31,18756(29)
	.loc 6 1115 0
	cmpwi 7,0,0
	bne- 7,.L1149
.LVL1518:
.L1138:
	.loc 6 1121 0
	cmplwi 7,30,2047
	.loc 6 1125 0
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	.loc 6 1121 0
	bgt- 7,.L1137
.L1147:
	.loc 6 1122 0
	slwi 30,30,2
.LVL1519:
	add 29,29,30
	lfs 1,18760(29)
.L1137:
.LBE7191:
	.loc 6 1126 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1520:
	addi 1,1,32
.LCFI315:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2924:
	.size	_ZN8idWindow8EvalRegsEib, .-_ZN8idWindow8EvalRegsEib
	.align 2
	.globl _ZN8idWindow13RunNamedEventEPKc
	.type	_ZN8idWindow13RunNamedEventEPKc, @function
_ZN8idWindow13RunNamedEventEPKc:
.LFB2916:
	.loc 6 659 0
	.cfi_startproc
.LVL1521:
	mflr 0
	stwu 1,-32(1)
.LCFI316:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
.LBB7192:
	.loc 6 4264 0
	lwz 27,852(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
.LVL1522:
	.loc 6 665 0
	cmpwi 7,27,0
	ble- 7,.L1151
	li 28,0
.LVL1523:
.L1153:
	.loc 6 666 0
	lwz 9,864(31)
	.loc 6 658 0
	slwi 29,28,2
.LVL1524:
.LBB7193:
.LBB7194:
	.loc 4 690 0
	mr 4,30
.LBE7194:
.LBE7193:
	.loc 6 665 0
	addi 28,28,1
.LVL1525:
.LBB7196:
.LBB7195:
	.loc 6 4264 0
	lwzx 9,9,29
	.loc 4 690 0
	lwz 3,4(9)
	bl _ZN5idStr4IcmpEPKcS1_
.LBE7195:
.LBE7196:
	.loc 6 665 0
	cmpw 6,28,27
	.loc 6 666 0
	cmpwi 7,3,0
	beq- 7,.L1152
.LVL1526:
	.loc 6 665 0
	bne+ 6,.L1153
.LVL1527:
.L1151:
	.loc 6 4264 0
	lwz 28,680(31)
.LVL1528:
	.loc 6 684 0
	cmpwi 7,28,0
	ble- 7,.L1150
	li 29,0
.LVL1529:
.L1158:
	.loc 6 685 0 discriminator 2
	lwz 9,692(31)
	slwi 0,29,2
	mr 4,30
	.loc 6 684 0 discriminator 2
	addi 29,29,1
.LVL1530:
	.loc 6 685 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
.LVL1531:
	.loc 6 684 0 discriminator 2
	cmpw 7,29,28
	bne+ 7,.L1158
.LVL1532:
.L1150:
.LBE7192:
	.loc 6 687 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL1533:
	lwz 31,28(1)
.LVL1534:
	addi 1,1,32
	.cfi_remember_state
.LCFI317:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1535:
.L1152:
.LCFI318:
	.cfi_restore_state
.LBB7200:
.LBB7197:
	.loc 6 4264 0
	lwz 27,640(31)
.LVL1536:
.LBB7198:
.LBB7199:
	.loc 6 611 0
	cmpwi 7,27,0
	ble- 7,.L1154
	li 28,0
.LVL1537:
.L1155:
	.loc 6 612 0
	lwz 9,652(31)
	slwi 0,28,2
	.loc 6 611 0
	addi 28,28,1
.LVL1538:
	.loc 6 612 0
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL1539:
	.loc 6 611 0
	cmpw 7,28,27
	bne+ 7,.L1155
.LVL1540:
.L1154:
.LBE7199:
.LBE7198:
.LBE7197:
	.loc 6 673 0
	lwz 0,832(31)
	cmpwi 7,0,0
	beq- 7,.L1156
	.loc 6 673 0 is_stmt 0 discriminator 1
	lwz 0,816(31)
	cmpwi 7,0,0
	beq- 7,.L1156
	.loc 6 674 0 is_stmt 1 discriminator 4
	mr 3,31
	li 4,-1
	li 5,1
	bl _ZN8idWindow8EvalRegsEib
.L1156:
	.loc 6 677 0
	lwz 9,864(31)
	mr 3,31
	lwzx 9,9,29
	lwz 4,32(9)
	bl _ZN8idWindow13RunScriptListEP15idGuiScriptList
	.loc 6 679 0
	b .L1151
.LBE7200:
	.cfi_endproc
.LFE2916:
	.size	_ZN8idWindow13RunNamedEventEPKc, .-_ZN8idWindow13RunNamedEventEPKc
	.align 2
	.globl _ZN8idWindow12StateChangedEb
	.type	_ZN8idWindow12StateChangedEb, @function
_ZN8idWindow12StateChangedEb:
.LFB2911:
	.loc 6 543 0
	.cfi_startproc
.LVL1541:
	mflr 0
	stwu 1,-24(1)
.LCFI319:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL1542:
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
.LBB7201:
.LBB7202:
	.loc 6 4264 0
	lwz 29,640(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL1543:
.LBB7203:
.LBB7204:
	.loc 6 611 0
	cmpwi 7,29,0
	ble- 7,.L1163
	li 28,0
.LVL1544:
.L1164:
	.loc 6 612 0
	lwz 9,652(31)
	slwi 0,28,2
	.loc 6 611 0
	addi 28,28,1
.LVL1545:
	.loc 6 612 0
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL1546:
	.loc 6 611 0
	cmpw 7,28,29
	bne+ 7,.L1164
.LVL1547:
.L1163:
.LBE7204:
.LBE7203:
.LBE7202:
	.loc 6 547 0
	lwz 0,832(31)
	cmpwi 7,0,0
	beq- 7,.L1165
	.loc 6 547 0 is_stmt 0 discriminator 1
	lwz 0,816(31)
	cmpwi 7,0,0
	bne- 7,.L1174
.L1165:
	.loc 6 4264 0 is_stmt 1
	lwz 28,696(31)
.LVL1548:
.LBB7205:
	.loc 6 552 0
	cmpwi 7,28,0
	ble- 7,.L1166
	li 29,0
	b .L1169
.LVL1549:
.L1175:
	.loc 6 554 0
	lwz 9,0(9)
	.loc 6 552 0
	addi 29,29,1
.LVL1550:
	.loc 6 554 0
	lwz 0,100(9)
	mtctr 0
	bctrl
.LVL1551:
	.loc 6 552 0
	cmpw 7,29,28
	beq- 7,.L1166
.LVL1552:
.L1169:
.LBB7206:
.LBB7207:
	.loc 16 589 0
	lwz 11,708(31)
	.loc 6 543 0
	slwi 0,29,3
.LBE7207:
.LBE7206:
	.loc 6 554 0
	mr 4,30
	.loc 6 553 0
	lwzx 9,11,0
.LBB7209:
.LBB7208:
	.loc 16 589 0
	add 11,11,0
.LBE7208:
.LBE7209:
	.loc 6 553 0
	cmpwi 7,9,0
	.loc 6 554 0
	mr 3,9
	.loc 6 553 0
	bne+ 7,.L1175
.LVL1553:
	.loc 6 556 0
	lwz 3,4(11)
	mr 4,30
	.loc 6 552 0
	addi 29,29,1
.LVL1554:
	.loc 6 556 0
	bl _ZN14idSimpleWindow12StateChangedEb
.LVL1555:
	.loc 6 552 0
	cmpw 7,29,28
	bne+ 7,.L1169
.LVL1556:
.L1166:
.LBE7205:
	.loc 6 560 0
	cmpwi 7,30,0
	beq- 7,.L1162
	.loc 6 561 0
	lwz 0,48(31)
	andis. 9,0,4096
	bne- 0,.L1176
	.loc 6 564 0
	lwz 3,672(31)
	cmpwi 7,3,0
	beq- 7,.L1162
.L1177:
	.loc 6 564 0 is_stmt 0 discriminator 1
	bl _ZNK10idMaterial15CinematicLengthEv
	cmpwi 7,3,0
	beq- 7,.L1162
	.loc 6 4264 0 is_stmt 1 discriminator 4
	lwz 9,732(31)
	.loc 6 565 0 discriminator 4
	lwz 3,672(31)
	lwz 4,200(9)
	bl _ZNK10idMaterial15UpdateCinematicEi
.L1162:
.LBE7201:
	.loc 6 568 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1557:
	addi 1,1,24
	.cfi_remember_state
.LCFI320:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1558:
.L1174:
.LCFI321:
	.cfi_restore_state
.LBB7210:
	.loc 6 548 0 discriminator 4
	mr 3,31
	li 4,-1
	li 5,0
	bl _ZN8idWindow8EvalRegsEib
	b .L1165
.L1176:
	.loc 6 562 0
	lwz 9,0(31)
	lis 11,.LC1@ha
	lfs 1,.LC1@l(11)
	mr 3,31
	lwz 0,24(9)
	fmr 2,1
	mtctr 0
	bctrl
	.loc 6 564 0
	lwz 3,672(31)
	cmpwi 7,3,0
	bne+ 7,.L1177
	b .L1162
.LBE7210:
	.cfi_endproc
.LFE2911:
	.size	_ZN8idWindow12StateChangedEb, .-_ZN8idWindow12StateChangedEb
	.align 2
	.globl _ZN8idWindow19WriteSaveGameStringEPKcP6idFile
	.type	_ZN8idWindow19WriteSaveGameStringEPKcP6idFile, @function
_ZN8idWindow19WriteSaveGameStringEPKcP6idFile:
.LFB2986:
	.loc 6 3438 0
	.cfi_startproc
.LVL1559:
	stwu 1,-32(1)
.LCFI322:
	.cfi_def_cfa_offset 32
	mflr 0
.LBB7211:
	.loc 6 3439 0
	mr 3,4
.LVL1560:
.LBE7211:
	.loc 6 3438 0
	stw 31,28(1)
	mr 31,5
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,36(1)
	stw 30,24(1)
	.loc 6 3438 0
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB7212:
	.loc 6 3439 0
	bl strlen
.LVL1561:
	.loc 6 3441 0
	lwz 9,0(31)
	.loc 6 3439 0
	mr 4,1
	.loc 6 3441 0
	li 5,4
	lwz 0,24(9)
	.loc 6 3439 0
	stwu 3,8(4)
.LVL1562:
	.loc 6 3441 0
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3442 0
	lwz 9,0(31)
	mr 3,31
	mr 4,30
	lwz 0,24(9)
	lwz 5,8(1)
	mtctr 0
	bctrl
.LBE7212:
	.loc 6 3443 0
	lwz 0,36(1)
	lwz 30,24(1)
.LVL1563:
	mtlr 0
	lwz 31,28(1)
.LVL1564:
	addi 1,1,32
.LCFI323:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2986:
	.size	_ZN8idWindow19WriteSaveGameStringEPKcP6idFile, .-_ZN8idWindow19WriteSaveGameStringEPKcP6idFile
	.align 2
	.globl _ZN8idWindow23WriteSaveGameTransitionER16idTransitionDataP6idFile
	.type	_ZN8idWindow23WriteSaveGameTransitionER16idTransitionDataP6idFile, @function
_ZN8idWindow23WriteSaveGameTransitionER16idTransitionDataP6idFile:
.LFB2987:
	.loc 6 3450 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2987
.LVL1565:
	mflr 0
	stwu 1,-72(1)
.LCFI324:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
.LVL1566:
.LBB7231:
.LBB7232:
.LBB7233:
.LBB7234:
.LBB7235:
	.loc 4 415 0
	lis 11,.LC4@ha
.LBE7235:
.LBE7234:
.LBE7233:
.LBE7232:
.LBE7231:
	.loc 6 3450 0
	stw 28,56(1)
.LBB7263:
	.loc 6 3454 0
	mr 9,1
.LBE7263:
	.loc 6 3450 0
	stw 0,76(1)
.LBB7264:
.LBB7246:
.LBB7242:
	.loc 4 416 0
	li 0,0
	.cfi_offset 65, 4
	.cfi_offset 28, -16
.LBE7242:
.LBE7246:
.LBE7264:
	.loc 6 3450 0
	stw 29,60(1)
	mr 28,4
	stw 30,64(1)
	mr 29,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,68(1)
	.loc 6 3450 0
	mr 30,5
.LBB7265:
	.loc 6 3454 0
	stwu 0,12(9)
	addi 31,1,20
	.cfi_offset 31, -4
	.loc 6 4264 0
	lwz 10,732(3)
.LBB7247:
.LBB7243:
.LBB7239:
.LBB7236:
	.loc 4 415 0
	lbz 11,.LC4@l(11)
.LBE7236:
.LBE7239:
.LBE7243:
.LBE7247:
	.loc 6 3455 0
	mr 5,9
.LVL1567:
	lwz 3,52(10)
.LVL1568:
.LBB7248:
.LBB7244:
.LBB7240:
.LBB7237:
	.loc 4 357 0
	li 9,20
.LBE7237:
.LBE7240:
.LBE7244:
.LBE7248:
	.loc 6 3455 0
	lwz 4,0(4)
.LVL1569:
.LBB7249:
.LBB7245:
.LBB7241:
.LBB7238:
	.loc 4 357 0
	stw 9,28(1)
	.loc 4 358 0
	addi 9,1,32
	stw 9,24(1)
.LVL1570:
	.loc 4 415 0
	stb 11,32(1)
.LBE7238:
.LBE7241:
	.loc 4 416 0
	stw 0,20(1)
.LBE7245:
.LBE7249:
	.loc 6 3453 0
	stw 0,16(1)
.LEHB66:
	.loc 6 3455 0
	bl _ZN8idWindow15GetWinVarOffsetEP8idWinVarP9drawWin_t
	.loc 6 3456 0
	lwz 9,12(1)
	.loc 6 3455 0
	stw 3,8(1)
.LVL1571:
	.loc 6 3456 0
	cmpwi 7,9,0
	beq- 7,.L1191
.LVL1572:
.LBB7250:
.LBB7251:
	.loc 6 4264 0 discriminator 1
	lwz 4,140(9)
.LVL1573:
.L1183:
.LBE7251:
.LBE7250:
	.loc 6 3457 0 discriminator 3
	addi 31,1,20
	mr 3,31
	bl _ZN5idStraSEPKc
.L1182:
.LVL1574:
	.loc 6 4264 0
	lwz 9,732(29)
	.loc 6 3459 0
	lwz 4,4(31)
	lwz 3,52(9)
	bl _ZN8idWindow15FindChildByNameEPKc
.LVL1575:
	.loc 6 3460 0
	lwz 0,8(1)
	cmpwi 7,0,-1
	beq- 7,.L1184
	.loc 6 3460 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L1184
	.loc 6 3460 0 discriminator 2
	lwz 0,0(3)
	cmpwi 7,0,0
	beq- 7,.L1192
.L1185:
	.loc 6 3461 0 is_stmt 1
	lwz 9,0(30)
	mr 3,30
.LVL1576:
	addi 4,1,8
	li 5,4
	lwz 0,24(9)
	mtctr 0
	bctrl
.LVL1577:
	.loc 6 3462 0
	lwz 4,4(31)
	mr 3,29
	mr 5,30
	bl _ZN8idWindow19WriteSaveGameStringEPKcP6idFile
	.loc 6 3463 0
	lwz 9,0(30)
	mr 3,30
	addi 4,28,8
	li 5,128
	lwz 0,24(9)
	mtctr 0
	bctrl
.LEHE66:
.LVL1578:
.LBB7253:
.LBB7254:
.LBB7255:
	.loc 4 501 0
	mr 3,31
.LEHB67:
	bl _ZN5idStr8FreeDataEv
.LEHE67:
.LBE7255:
.LBE7254:
.LBE7253:
.LBE7265:
	.loc 6 3468 0
	lwz 0,76(1)
	lwz 28,56(1)
.LVL1579:
	mtlr 0
	lwz 29,60(1)
.LVL1580:
	lwz 30,64(1)
.LVL1581:
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI325:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1582:
.L1192:
.LCFI326:
	.cfi_restore_state
.LBB7266:
	.loc 6 3460 0 discriminator 3
	lwz 0,4(3)
	cmpwi 7,0,0
	bne+ 7,.L1185
.L1184:
	.loc 6 3466 0
	lwz 9,0(30)
	.loc 6 3465 0
	li 0,-1
	mr 4,1
	.loc 6 3466 0
	mr 3,30
.LVL1583:
	.loc 6 3465 0
	stwu 0,8(4)
.LVL1584:
	.loc 6 3466 0
	li 5,4
	lwz 0,24(9)
	mtctr 0
.LEHB68:
	bctrl
.LEHE68:
.LVL1585:
.LBB7258:
.LBB7257:
.LBB7256:
	.loc 4 501 0
	mr 3,31
.LEHB69:
	bl _ZN5idStr8FreeDataEv
.LEHE69:
.LBE7256:
.LBE7257:
.LBE7258:
.LBE7266:
	.loc 6 3468 0
	lwz 0,76(1)
	lwz 28,56(1)
.LVL1586:
	mtlr 0
	lwz 29,60(1)
.LVL1587:
	lwz 30,64(1)
.LVL1588:
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI327:
	.cfi_def_cfa_offset 0
	blr
.LVL1589:
.L1191:
.LCFI328:
	.cfi_restore_state
.LBB7267:
	.loc 6 3456 0 discriminator 1
	lwz 9,16(1)
	addi 31,1,20
	cmpwi 7,9,0
	beq- 7,.L1182
.LBB7259:
.LBB7252:
	.loc 6 4264 0 discriminator 2
	lwz 4,8(9)
	b .L1183
.L1190:
	mr 30,3
.LVL1590:
.LBE7252:
.LBE7259:
.LBB7260:
.LBB7261:
.LBB7262:
	.loc 4 501 0
	mr 3,31
	bl _ZN5idStr8FreeDataEv
	mr 3,30
.LEHB70:
	bl _Unwind_Resume
.LEHE70:
.LBE7262:
.LBE7261:
.LBE7260:
.LBE7267:
	.cfi_endproc
.LFE2987:
	.section	.gcc_except_table
.LLSDA2987:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2987-.LLSDACSB2987
.LLSDACSB2987:
	.uleb128 .LEHB66-.LFB2987
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1190-.LFB2987
	.uleb128 0
	.uleb128 .LEHB67-.LFB2987
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB2987
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1190-.LFB2987
	.uleb128 0
	.uleb128 .LEHB69-.LFB2987
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB70-.LFB2987
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE2987:
	.section	".text"
	.size	_ZN8idWindow23WriteSaveGameTransitionER16idTransitionDataP6idFile, .-_ZN8idWindow23WriteSaveGameTransitionER16idTransitionDataP6idFile
	.align 2
	.globl _ZN8idWindow15WriteToSaveGameEP6idFile
	.type	_ZN8idWindow15WriteToSaveGameEP6idFile, @function
_ZN8idWindow15WriteToSaveGameEP6idFile:
.LFB2989:
	.loc 6 3498 0
	.cfi_startproc
.LVL1591:
	mflr 0
	stwu 1,-40(1)
.LCFI329:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
.LBB7337:
.LBB7338:
.LBB7339:
	.loc 3 239 0
	mr 29,1
	.cfi_offset 29, -12
.LBE7339:
.LBE7338:
.LBE7337:
	.loc 6 3498 0
	stw 0,44(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL1592:
	stw 31,36(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 28,24(1)
.LBB7378:
	.loc 6 3501 0
	mr 5,31
	lwz 4,8(3)
.LVL1593:
	.cfi_offset 28, -16
	bl _ZN8idWindow19WriteSaveGameStringEPKcP6idFile
.LVL1594:
	.loc 6 3503 0
	lwz 9,0(31)
	addi 4,30,36
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3504 0
	lwz 9,0(31)
	addi 4,30,40
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3505 0
	lwz 9,0(31)
	addi 4,30,44
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3506 0
	lwz 9,0(31)
	addi 4,30,48
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3507 0
	lwz 9,0(31)
	addi 4,30,52
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3508 0
	lwz 9,0(31)
	addi 4,30,56
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3509 0
	lwz 9,0(31)
	addi 4,30,72
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3510 0
	lwz 9,0(31)
	addi 4,30,88
	li 5,8
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3511 0
	lwz 9,0(31)
	addi 4,30,209
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3512 0
	lwz 9,0(31)
	addi 4,30,96
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3513 0
	lwz 9,0(31)
	addi 4,30,100
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3514 0
	lwz 9,0(31)
	addi 4,30,104
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3515 0
	lwz 9,0(31)
	addi 4,30,210
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3516 0
	lwz 9,0(31)
	addi 4,30,108
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3517 0
	lwz 9,0(31)
	addi 4,30,112
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3518 0
	lwz 9,0(31)
	addi 4,30,116
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3519 0
	lwz 9,0(31)
	addi 4,30,120
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3520 0
	lwz 9,0(31)
	addi 4,30,124
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3521 0
	lwz 9,0(31)
	addi 4,30,211
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3522 0
	lwz 9,0(31)
	addi 4,30,128
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3523 0
	lwz 9,0(31)
	addi 4,30,132
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3524 0
	lwz 9,0(31)
	addi 4,30,208
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 6 3525 0
	lwz 9,0(31)
	addi 4,30,200
	li 5,8
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1595:
	.loc 6 3527 0
	lwz 4,140(30)
	mr 3,30
	mr 5,31
	bl _ZN8idWindow19WriteSaveGameStringEPKcP6idFile
.LVL1596:
	.loc 6 3528 0
	lwz 4,172(30)
	mr 3,30
	mr 5,31
	bl _ZN8idWindow19WriteSaveGameStringEPKcP6idFile
.LVL1597:
.LBB7341:
.LBB7342:
	.loc 3 146 0
	lwz 9,0(31)
	addi 4,30,224
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 147 0
	lwz 9,0(31)
	addi 4,30,225
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1598:
.LBE7342:
.LBE7341:
.LBB7343:
.LBB7344:
	.loc 3 146 0
	lwz 9,0(31)
	addi 4,30,240
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 147 0
	lwz 9,0(31)
	addi 4,30,241
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1599:
.LBE7344:
.LBE7343:
.LBB7345:
.LBB7346:
	.loc 3 472 0
	lwz 9,0(31)
	addi 4,30,272
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 473 0
	lwz 9,0(31)
	addi 4,30,276
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1600:
.LBE7346:
.LBE7345:
.LBB7347:
.LBB7348:
	.loc 3 631 0
	lwz 9,0(31)
	addi 4,30,304
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 632 0
	lwz 9,0(31)
	addi 4,30,308
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1601:
.LBE7348:
.LBE7347:
.LBB7349:
.LBB7350:
	.loc 3 631 0
	lwz 9,0(31)
	addi 4,30,336
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 632 0
	lwz 9,0(31)
	addi 4,30,340
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1602:
.LBE7350:
.LBE7349:
.LBB7351:
.LBB7352:
	.loc 3 631 0
	lwz 9,0(31)
	addi 4,30,368
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 632 0
	lwz 9,0(31)
	addi 4,30,372
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1603:
.LBE7352:
.LBE7351:
.LBB7353:
.LBB7354:
	.loc 3 631 0
	lwz 9,0(31)
	addi 4,30,400
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 632 0
	lwz 9,0(31)
	addi 4,30,404
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1604:
.LBE7354:
.LBE7353:
.LBB7355:
.LBB7356:
	.loc 3 631 0
	lwz 9,0(31)
	addi 4,30,432
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 632 0
	lwz 9,0(31)
	addi 4,30,436
	li 5,16
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1605:
.LBE7356:
.LBE7355:
.LBB7357:
.LBB7358:
	.loc 3 364 0
	lwz 9,0(31)
	addi 4,30,464
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 365 0
	lwz 9,0(31)
	addi 4,30,468
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1606:
.LBE7358:
.LBE7357:
.LBB7359:
.LBB7360:
	.loc 3 146 0
	lwz 9,0(31)
	addi 4,30,256
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 147 0
	lwz 9,0(31)
	addi 4,30,257
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1607:
.LBE7360:
.LBE7359:
.LBB7361:
.LBB7362:
	.loc 3 364 0
	lwz 9,0(31)
	addi 4,30,484
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 365 0
	lwz 9,0(31)
	addi 4,30,488
	li 5,4
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
.LVL1608:
.LBE7362:
.LBE7361:
.LBB7363:
.LBB7340:
	.loc 3 237 0
	lwz 9,0(31)
	addi 4,30,504
	li 5,1
	lwz 0,24(9)
	mr 3,31
	mtctr 0
	bctrl
	.loc 3 239 0
	lwz 0,508(30)
	.loc 3 240 0
	lwz 9,0(31)
	li 5,4
	.loc 3 239 0
	stwu 0,8(29)
.LVL1609:
	.loc 3 240 0
	mr 3,31
	lwz 0,24(9)
	mr 4,29
	mtctr 0
	bctrl
	.loc 3 241 0
	lwz 5,8(1)
	cmpwi 7,5,0
	ble- 7,.L1194
	.loc 3 242 0
	lwz 9,0(31)
	mr 3,31
	lwz 4,512(30)
	lwz 0,24(9)
	mtctr 0
	bctrl
.L1194:
.LVL1610:
.LBE7340:
.LBE7363:
.LBB7364:
.LBB7365:
	.loc 3 819 0
	lwz 9,0(31)
	addi 4,30,552
	li 5,1
	mr 3,31
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 3 821 0
	lwz 0,588(30)
	.loc 3 822 0
	lwz 9,0(31)
	li 5,4
	.loc 3 821 0
	stw 0,8(1)
.LVL1611:
	.loc 3 822 0
	mr 3,31
	mr 4,29
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 3 823 0
	lwz 5,8(1)
	cmpwi 7,5,0
	ble- 7,.L1195
	.loc 3 824 0
	lwz 9,0(31)
	mr 3,31
	lwz 4,592(30)
	lwz 0,24(9)
	mtctr 0
	bctrl
.L1195:
.LVL1612:
.LBE7365:
.LBE7364:
.LBB7366:
.LBB7367:
	.loc 3 146 0
	lwz 9,0(31)
	addi 4,30,928
	li 5,1
	mr 3,31
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 3 147 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,929
	lwz 0,24(9)
	li 5,1
	mtctr 0
	bctrl
.LVL1613:
.LBE7367:
.LBE7366:
	.loc 6 3547 0
	lwz 0,624(30)
	cmpwi 7,0,0
	ble- 7,.L1196
	li 29,0
.LVL1614:
.L1197:
	.loc 6 3548 0 discriminator 2
	lwz 9,636(30)
	slwi 0,29,2
	mr 4,31
	.loc 6 3547 0 discriminator 2
	addi 29,29,1
.LVL1615:
	.loc 6 3548 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,28(9)
	mtctr 0
	bctrl
.LVL1616:
	.loc 6 3547 0 discriminator 2
	lwz 0,624(30)
	cmpw 7,0,29
	bgt+ 7,.L1197
.LVL1617:
.L1196:
	.loc 6 3551 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,656
	li 5,16
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 6 3556 0
	lwz 9,712(30)
	li 0,-1
.LVL1618:
	cmpwi 7,9,0
	beq- 7,.L1198
	.loc 6 3556 0 is_stmt 0 discriminator 1
	lwz 0,44(9)
.L1198:
	.loc 6 3557 0 is_stmt 1 discriminator 3
	lwz 9,0(31)
	.loc 6 3556 0 discriminator 3
	mr 29,1
.LVL1619:
	stwu 0,16(29)
	.loc 6 3557 0 discriminator 3
	mr 3,31
	lwz 0,24(9)
.LVL1620:
	li 5,4
	mr 4,29
	mtctr 0
	bctrl
	.loc 6 3559 0 discriminator 3
	lwz 9,716(30)
	li 0,-1
.LVL1621:
	cmpwi 7,9,0
	beq- 7,.L1199
	.loc 6 3559 0 is_stmt 0 discriminator 1
	lwz 0,44(9)
.L1199:
	.loc 6 3560 0 is_stmt 1 discriminator 3
	lwz 9,0(31)
	mr 3,31
.LVL1622:
	.loc 6 3559 0 discriminator 3
	stw 0,16(1)
	.loc 6 3560 0 discriminator 3
	mr 4,29
	lwz 0,24(9)
.LVL1623:
	li 5,4
	mtctr 0
	bctrl
	.loc 6 3562 0 discriminator 3
	lwz 9,720(30)
	li 0,-1
.LVL1624:
	cmpwi 7,9,0
	beq- 7,.L1200
	.loc 6 3562 0 is_stmt 0 discriminator 1
	lwz 0,44(9)
.L1200:
	.loc 6 3563 0 is_stmt 1 discriminator 3
	lwz 9,0(31)
	mr 4,29
.LVL1625:
	.loc 6 3562 0 discriminator 3
	stw 0,16(1)
	.loc 6 3563 0 discriminator 3
	mr 3,31
	lwz 0,24(9)
.LVL1626:
	li 5,4
	.loc 6 3498 0 discriminator 3
	addi 29,30,732
	.loc 6 3567 0 discriminator 3
	li 28,0
	.loc 6 3563 0 discriminator 3
	mtctr 0
	bctrl
.LVL1627:
.L1202:
	.loc 6 3568 0
	lwzu 3,4(29)
	.loc 6 3569 0
	mr 4,31
	.loc 6 3568 0
	cmpwi 7,3,0
	beq- 7,.L1201
	.loc 6 3569 0
	bl _ZN15idGuiScriptList15WriteToSaveGameEP6idFile
.L1201:
.LVL1628:
	.loc 6 3567 0
	cmpwi 7,28,10
	addi 28,28,1
.LVL1629:
	bne+ 7,.L1202
.LVL1630:
	.loc 6 3574 0 discriminator 1
	lwz 0,784(30)
	cmpwi 7,0,0
	ble- 7,.L1203
	.loc 6 3574 0 is_stmt 0
	li 29,0
.LVL1631:
.L1205:
	.loc 6 3575 0 is_stmt 1
	lwz 9,796(30)
	.loc 6 3498 0
	slwi 28,29,2
	.loc 6 3576 0
	mr 3,31
	li 5,1
	.loc 6 3575 0
	lwzx 9,9,28
	cmpwi 7,9,0
	.loc 6 3576 0
	addi 4,9,8
	.loc 6 3575 0
	beq- 7,.L1204
.LVL1632:
	.loc 6 3576 0
	lwz 9,0(31)
	lwz 0,24(9)
	mtctr 0
	bctrl
.LVL1633:
	.loc 6 3577 0
	lwz 11,0(31)
	lwz 9,796(30)
	li 5,4
	lwz 0,24(11)
	mr 3,31
	lwzx 4,9,28
	mtctr 0
	bctrl
.LVL1634:
	.loc 6 3578 0
	lwz 9,796(30)
	.loc 6 3579 0
	mr 4,31
	.loc 6 3578 0
	lwzx 9,9,28
	lwz 3,4(9)
	cmpwi 7,3,0
	beq- 7,.L1228
.LVL1635:
	.loc 6 3579 0
	bl _ZN15idGuiScriptList15WriteToSaveGameEP6idFile
.LVL1636:
.L1228:
	lwz 0,784(30)
.LVL1637:
.L1204:
	.loc 6 3574 0
	addi 29,29,1
.LVL1638:
	cmpw 7,0,29
	bgt+ 7,.L1205
.LVL1639:
.L1203:
	.loc 6 3585 0
	lwz 0,800(30)
	mr 4,1
	.loc 6 3587 0
	lwz 9,0(31)
	mr 3,31
	.loc 6 3585 0
	stwu 0,12(4)
.LVL1640:
	.loc 6 3587 0
	li 5,4
	lwz 0,24(9)
	mtctr 0
	bctrl
.LVL1641:
	.loc 6 3588 0
	lwz 0,800(30)
	cmpwi 7,0,0
	ble- 7,.L1206
	li 28,0
	li 29,0
.LVL1642:
.L1207:
.LBB7368:
.LBB7369:
	.loc 16 589 0 discriminator 2
	lwz 4,812(30)
.LBE7369:
.LBE7368:
	.loc 6 3589 0 discriminator 2
	mr 3,30
	mr 5,31
	.loc 6 3588 0 discriminator 2
	addi 29,29,1
.LVL1643:
	.loc 6 3589 0 discriminator 2
	add 4,4,28
	.loc 6 3588 0 discriminator 2
	addi 28,28,136
	.loc 6 3589 0 discriminator 2
	bl _ZN8idWindow23WriteSaveGameTransitionER16idTransitionDataP6idFile
.LVL1644:
	.loc 6 3588 0 discriminator 2
	lwz 0,800(30)
	cmpw 7,0,29
	bgt+ 7,.L1207
.LVL1645:
.L1206:
	.loc 6 3594 0 discriminator 1
	lwz 0,852(30)
	cmpwi 7,0,0
	ble- 7,.L1208
	.loc 6 3594 0 is_stmt 0
	li 29,0
.LVL1646:
.L1210:
	.loc 6 3595 0 is_stmt 1
	lwz 9,864(30)
	.loc 6 3498 0
	slwi 28,29,2
	.loc 6 3596 0
	mr 3,30
	mr 5,31
	.loc 6 3595 0
	lwzx 9,9,28
	cmpwi 7,9,0
	beq- 7,.L1209
.LVL1647:
	.loc 6 3596 0
	lwz 4,4(9)
	bl _ZN8idWindow19WriteSaveGameStringEPKcP6idFile
.LVL1648:
	.loc 6 3597 0
	lwz 9,864(30)
	.loc 6 3598 0
	mr 4,31
	.loc 6 3597 0
	lwzx 9,9,28
	lwz 3,32(9)
	cmpwi 7,3,0
	beq- 7,.L1229
.LVL1649:
	.loc 6 3598 0
	bl _ZN15idGuiScriptList15WriteToSaveGameEP6idFile
.LVL1650:
.L1229:
	lwz 0,852(30)
.LVL1651:
.L1209:
	.loc 6 3594 0
	addi 29,29,1
.LVL1652:
	cmpw 7,0,29
	bgt+ 7,.L1210
.LVL1653:
.L1208:
	.loc 6 3604 0
	addi 3,30,872
	mr 4,31
	bl _ZN14idRegisterList15WriteToSaveGameEP6idFile
.LVL1654:
.LBB7370:
	.loc 6 3608 0
	lwz 10,696(30)
	cmpwi 7,10,0
	ble- 7,.L1193
	li 29,0
	b .L1214
.LVL1655:
.L1230:
.LBB7371:
	.loc 6 3612 0
	lwz 9,0(9)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL1656:
	lwz 10,696(30)
.L1213:
.LBE7371:
	.loc 6 3608 0
	addi 29,29,1
.LVL1657:
	cmpw 7,10,29
	ble- 7,.L1193
.LVL1658:
.L1214:
.LBB7376:
.LBB7372:
.LBB7373:
	.loc 16 589 0
	lwz 11,708(30)
	.loc 6 3498 0
	slwi 0,29,3
.LBE7373:
.LBE7372:
	.loc 6 3612 0
	mr 4,31
.LBB7375:
.LBB7374:
	.loc 16 589 0
	add 9,11,0
	.loc 6 3609 0
	lwzx 11,11,0
.LVL1659:
	lwz 9,4(9)
.LVL1660:
.LBE7374:
.LBE7375:
	.loc 6 3611 0
	cmpwi 7,9,0
	.loc 6 3612 0
	mr 3,9
	.loc 6 3611 0
	bne+ 7,.L1230
	.loc 6 3613 0
	cmpwi 7,11,0
	.loc 6 3614 0
	mr 3,11
	mr 4,31
	.loc 6 3613 0
	beq- 7,.L1213
	.loc 6 3614 0
	lwz 9,0(11)
.LVL1661:
.LBE7376:
	.loc 6 3608 0
	addi 29,29,1
.LVL1662:
.LBB7377:
	.loc 6 3614 0
	lwz 0,112(9)
	mtctr 0
	bctrl
.LVL1663:
	lwz 10,696(30)
.LBE7377:
	.loc 6 3608 0
	cmpw 7,10,29
	bgt+ 7,.L1214
.LVL1664:
.L1193:
.LBE7370:
.LBE7378:
	.loc 6 3617 0
	lwz 0,44(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
.LVL1665:
	lwz 31,36(1)
.LVL1666:
	addi 1,1,40
.LCFI330:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2989:
	.size	_ZN8idWindow15WriteToSaveGameEP6idFile, .-_ZN8idWindow15WriteToSaveGameEP6idFile
	.align 2
	.globl _ZN8idWindow18ReadSaveGameStringER5idStrP6idFile
	.type	_ZN8idWindow18ReadSaveGameStringER5idStrP6idFile, @function
_ZN8idWindow18ReadSaveGameStringER5idStrP6idFile:
.LFB2990:
	.loc 6 3624 0
	.cfi_startproc
.LVL1667:
	mflr 0
	stwu 1,-40(1)
.LCFI331:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB7386:
	.loc 6 3627 0
	mr 3,5
.LVL1668:
.LBE7386:
	.loc 6 3624 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,32(1)
	stw 31,36(1)
	mr 31,4
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 0,44(1)
.LBB7395:
	.loc 6 3627 0
	addi 4,1,8
.LVL1669:
	lwz 9,0(5)
	li 5,4
.LVL1670:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL1671:
	.loc 6 3628 0
	lwz 30,8(1)
	cmpwi 7,30,0
	blt- 7,.L1234
.L1232:
.LVL1672:
.LBB7387:
.LBB7388:
.LBB7389:
.LBB7390:
	.loc 4 350 0
	lwz 0,8(31)
.LBE7390:
.LBE7389:
	.loc 4 889 0
	addi 4,30,1
.LVL1673:
.LBB7392:
.LBB7391:
	.loc 4 350 0
	cmpw 7,4,0
	ble+ 7,.L1233
	.loc 4 351 0
	mr 3,31
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL1674:
.L1233:
.LBE7391:
.LBE7392:
	.loc 4 890 0
	stw 30,0(31)
	.loc 4 891 0
	mr 5,30
	lwz 3,4(31)
	li 4,32
	bl memset
	.loc 4 892 0
	lwz 9,4(31)
	lwz 0,0(31)
	li 11,0
.LBE7388:
.LBE7387:
	.loc 6 3633 0
	mr 3,29
.LBB7394:
.LBB7393:
	.loc 4 892 0
	stbx 11,9,0
.LVL1675:
.LBE7393:
.LBE7394:
	.loc 6 3633 0
	lwz 9,0(29)
	lwz 4,4(31)
	lwz 0,20(9)
	lwz 5,8(1)
	mtctr 0
	bctrl
.LBE7395:
	.loc 6 3634 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL1676:
	mtlr 0
	lwz 30,32(1)
.LVL1677:
	lwz 31,36(1)
.LVL1678:
	addi 1,1,40
	.cfi_remember_state
.LCFI332:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1679:
.L1234:
.LCFI333:
	.cfi_restore_state
.LBB7396:
	.loc 6 3629 0
	lis 9,common@ha
	lis 4,.LC70@ha
	lwz 3,common@l(9)
	la 4,.LC70@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	lwz 30,8(1)
	b .L1232
.LBE7396:
	.cfi_endproc
.LFE2990:
	.size	_ZN8idWindow18ReadSaveGameStringER5idStrP6idFile, .-_ZN8idWindow18ReadSaveGameStringER5idStrP6idFile
	.align 2
	.globl _ZN8idWindow22ReadSaveGameTransitionER16idTransitionDataP6idFile
	.type	_ZN8idWindow22ReadSaveGameTransitionER16idTransitionDataP6idFile, @function
_ZN8idWindow22ReadSaveGameTransitionER16idTransitionDataP6idFile:
.LFB2988:
	.loc 6 3475 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2988
.LVL1680:
	mflr 0
	stwu 1,-72(1)
.LCFI334:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 29,60(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,64(1)
.LBB7418:
	.loc 6 3478 0
	mr 3,5
.LVL1681:
.LBE7418:
	.loc 6 3475 0
	stw 31,68(1)
	mr 30,4
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 0,76(1)
	.loc 6 3475 0
	mr 31,5
.LBB7459:
	.loc 6 3478 0
	addi 4,1,8
.LVL1682:
	lwz 9,0(5)
	li 5,4
.LVL1683:
	lwz 0,20(9)
	.cfi_offset 65, 4
	mtctr 0
.LEHB71:
	bctrl
.LEHE71:
.LVL1684:
.LBB7419:
	.loc 6 3479 0
	lwz 0,8(1)
	cmpwi 7,0,-1
	beq- 7,.L1235
.LVL1685:
.LBB7420:
.LBB7421:
.LBB7422:
.LBB7423:
	.loc 4 357 0
	li 9,20
	.loc 4 356 0
	li 0,0
	.loc 4 357 0
	stw 9,20(1)
.LBE7423:
.LBE7422:
.LBE7421:
	.loc 6 3481 0
	mr 3,29
.LBB7428:
.LBB7426:
.LBB7424:
	.loc 4 358 0
	addi 9,1,24
.LBE7424:
.LBE7426:
.LBE7428:
	.loc 6 3481 0
	addi 4,1,12
	mr 5,31
.LBB7429:
.LBB7427:
.LBB7425:
	.loc 4 356 0
	stw 0,12(1)
	.loc 4 358 0
	stw 9,16(1)
	.loc 4 359 0
	stb 0,24(1)
.LEHB72:
.LBE7425:
.LBE7427:
.LBE7429:
	.loc 6 3481 0
	bl _ZN8idWindow18ReadSaveGameStringER5idStrP6idFile
	.loc 6 3482 0
	lwz 9,0(31)
	mr 3,31
	addi 4,30,8
	li 5,128
	lwz 0,20(9)
	mtctr 0
	bctrl
.LBB7430:
	.loc 6 3485 0
	lwz 0,12(1)
	cmpwi 7,0,0
.LBE7430:
	.loc 6 3483 0
	li 0,0
	stw 0,0(30)
	.loc 6 3484 0
	lwz 0,8(1)
	stw 0,4(30)
.LBB7449:
	.loc 6 3485 0
	beq- 7,.L1237
.LBB7431:
	.loc 6 3486 0
	li 3,48
	bl _ZN8idWinVarnwEj
.LEHE72:
	mr 31,3
.LVL1686:
.LEHB73:
.LBB7432:
.LBB7433:
	.loc 3 162 0
	bl _ZN8idWinVarC2Ev
.LEHE73:
.LVL1687:
	lis 9,_ZTV8idWinStr+8@ha
.LBB7434:
.LBB7435:
.LBB7436:
	.loc 4 357 0
	li 11,20
.LBE7436:
.LBE7435:
.LBE7434:
	.loc 3 162 0
	la 0,_ZTV8idWinStr+8@l(9)
.LBB7443:
.LBB7440:
.LBB7437:
	.loc 4 358 0
	addi 9,31,28
.LBE7437:
.LBE7440:
.LBE7443:
	.loc 3 162 0
	stw 0,0(31)
.LVL1688:
.LBB7444:
.LBB7441:
.LBB7438:
	.loc 4 356 0
	li 0,0
	stw 0,16(31)
.LBE7438:
.LBE7441:
.LBE7444:
.LBE7433:
.LBE7432:
	.loc 6 3487 0
	mr 3,31
.LBB7447:
.LBB7446:
.LBB7445:
.LBB7442:
.LBB7439:
	.loc 4 357 0
	stw 11,24(31)
	.loc 4 358 0
	stw 9,20(31)
	.loc 4 359 0
	stb 0,28(31)
.LVL1689:
.LBE7439:
.LBE7442:
.LBE7445:
.LBE7446:
.LBE7447:
	.loc 6 3487 0
	lwz 4,16(1)
.LEHB74:
	bl _ZN8idWinStr3SetEPKc
.LEHE74:
	.loc 6 3488 0
	stw 31,0(30)
.LVL1690:
.L1237:
.LBE7431:
.LBE7449:
.LBB7450:
.LBB7451:
.LBB7452:
	.loc 4 501 0
	addi 3,1,12
.LEHB75:
	bl _ZN5idStr8FreeDataEv
.LEHE75:
.LVL1691:
.L1235:
.LBE7452:
.LBE7451:
.LBE7450:
.LBE7420:
.LBE7419:
.LBE7459:
	.loc 6 3491 0
	lwz 0,76(1)
	lwz 29,60(1)
.LVL1692:
	mtlr 0
	lwz 30,64(1)
.LVL1693:
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI335:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1694:
.L1242:
.LCFI336:
	.cfi_restore_state
	mr 30,3
.LVL1695:
.LBB7460:
.LBB7458:
.LBB7457:
.LBB7453:
.LBB7448:
	.loc 6 3486 0
	mr 3,31
	bl _ZN8idWinVardlEPv
	mr 31,30
.LVL1696:
.L1239:
.LBE7448:
.LBE7453:
.LBB7454:
.LBB7455:
.LBB7456:
	.loc 4 501 0
	addi 3,1,12
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB76:
	bl _Unwind_Resume
.LEHE76:
.LVL1697:
.L1241:
	mr 31,3
	b .L1239
.LBE7456:
.LBE7455:
.LBE7454:
.LBE7457:
.LBE7458:
.LBE7460:
	.cfi_endproc
.LFE2988:
	.section	.gcc_except_table
.LLSDA2988:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2988-.LLSDACSB2988
.LLSDACSB2988:
	.uleb128 .LEHB71-.LFB2988
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB2988
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1241-.LFB2988
	.uleb128 0
	.uleb128 .LEHB73-.LFB2988
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1242-.LFB2988
	.uleb128 0
	.uleb128 .LEHB74-.LFB2988
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1241-.LFB2988
	.uleb128 0
	.uleb128 .LEHB75-.LFB2988
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB2988
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
.LLSDACSE2988:
	.section	".text"
	.size	_ZN8idWindow22ReadSaveGameTransitionER16idTransitionDataP6idFile, .-_ZN8idWindow22ReadSaveGameTransitionER16idTransitionDataP6idFile
	.align 2
	.globl _ZN8idWindow14NumTransitionsEv
	.type	_ZN8idWindow14NumTransitionsEv, @function
_ZN8idWindow14NumTransitionsEv:
.LFB2992:
	.loc 6 3791 0
	.cfi_startproc
.LVL1698:
	mflr 0
	stwu 1,-24(1)
.LCFI337:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB7461:
.LBB7462:
	.loc 6 4264 0
	lwz 29,680(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	lwz 30,800(3)
.LVL1699:
	.loc 6 3793 0
	cmpwi 7,29,0
	ble- 7,.L1244
.LVL1700:
	lwz 28,692(3)
	li 31,0
.LVL1701:
.L1245:
	.loc 6 3794 0 discriminator 2
	slwi 0,31,2
	.loc 6 3793 0 discriminator 2
	addi 31,31,1
.LVL1702:
	.loc 6 3794 0 discriminator 2
	lwzx 3,28,0
	bl _ZN8idWindow14NumTransitionsEv
	.loc 6 3793 0 discriminator 2
	cmpw 7,31,29
	.loc 6 3794 0 discriminator 2
	add 30,30,3
.LVL1703:
	.loc 6 3793 0 discriminator 2
	bne+ 7,.L1245
.LVL1704:
.L1244:
.LBE7462:
.LBE7461:
	.loc 6 3797 0
	lwz 0,28(1)
	mr 3,30
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL1705:
	lwz 31,20(1)
	addi 1,1,24
.LCFI338:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2992:
	.size	_ZN8idWindow14NumTransitionsEv, .-_ZN8idWindow14NumTransitionsEv
	.align 2
	.globl _ZN8idWindow16FixupTransitionsEv
	.type	_ZN8idWindow16FixupTransitionsEv, @function
_ZN8idWindow16FixupTransitionsEv:
.LFB2993:
	.loc 6 3805 0
	.cfi_startproc
.LVL1706:
	mflr 0
	stwu 1,-32(1)
.LCFI339:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
.LBB7463:
	.loc 6 4264 0
	lwz 27,800(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
.LVL1707:
.LBB7464:
	.loc 6 3807 0
	cmpwi 7,27,0
	ble- 7,.L1248
.LVL1708:
	li 29,0
.LBB7465:
	.loc 6 3810 0
	li 26,0
	b .L1269
.LVL1709:
.L1254:
	.loc 6 3815 0
	cmpwi 7,0,292
	beq- 7,.L1275
.LVL1710:
	.loc 6 3817 0
	cmpwi 7,0,324
	beq- 7,.L1276
.LVL1711:
	.loc 6 3819 0
	cmpwi 7,0,356
	beq- 7,.L1277
.LVL1712:
	.loc 6 3821 0
	cmpwi 7,0,420
	beq- 7,.L1278
.LVL1713:
	.loc 6 3823 0
	cmpwi 7,0,452
	beq- 7,.L1279
.LVL1714:
	.loc 6 3825 0
	cmpwi 7,0,472
	beq- 7,.L1280
.LVL1715:
.L1251:
	.loc 6 3846 0
	lwz 0,0(3)
	cmpwi 7,0,0
	beq- 7,.L1281
.L1266:
.LVL1716:
.LBE7465:
	.loc 6 3807 0
	addi 29,29,1
.LVL1717:
	cmpw 7,27,29
	ble- 7,.L1248
.LVL1718:
.L1269:
.LBB7480:
.LBB7466:
.LBB7467:
	.loc 16 589 0
	mulli 30,29,136
.LBE7467:
.LBE7466:
	.loc 6 3808 0
	lwz 11,812(31)
.LBE7480:
	.loc 6 4264 0
	lwz 9,732(31)
.LBB7481:
	.loc 6 3808 0
	lwzx 3,11,30
.LBE7481:
	.loc 6 4264 0
	lwz 28,52(9)
.LVL1719:
.LBB7482:
	.loc 6 3808 0
	lwz 9,0(3)
	lwz 0,20(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,28
	bl _ZN8idWindow15FindChildByNameEPKc
.LBB7468:
.LBB7469:
	.loc 16 589 0
	lwz 9,812(31)
.LBE7469:
.LBE7468:
	.loc 6 3808 0
	mr 28,3
.LVL1720:
	.loc 6 3809 0
	lwzx 3,9,30
.LVL1721:
.LBB7471:
.LBB7470:
	.loc 16 589 0
	add 9,9,30
.LBE7470:
.LBE7471:
	.loc 6 3809 0
	cmpwi 7,3,0
	beq- 7,.L1249
	.loc 6 3809 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
	bctrl
	lwz 9,812(31)
	add 9,9,30
.L1249:
.LVL1722:
	.loc 6 3811 0 is_stmt 1
	cmpwi 7,28,0
	.loc 6 3810 0
	stw 26,0(9)
	.loc 6 3811 0
	beq- 7,.L1274
	.loc 6 3811 0 is_stmt 0 discriminator 1
	lwz 9,0(28)
	cmpwi 7,9,0
	beq- 7,.L1282
	.loc 6 4264 0 is_stmt 1
	lwz 4,812(31)
.LVL1723:
.LBB7472:
.LBB7473:
	.loc 16 589 0
	add 3,4,30
.LBE7473:
.LBE7472:
	.loc 6 3813 0
	lwz 0,4(3)
	cmpwi 7,0,260
	bne+ 7,.L1254
.LVL1724:
	.loc 6 3814 0
	addi 9,9,260
	stwx 9,4,30
	lwz 4,812(31)
	add 3,4,30
.LVL1725:
	.loc 6 3846 0
	lwz 0,0(3)
	cmpwi 7,0,0
	bne+ 7,.L1266
.LVL1726:
.L1281:
.LBB7474:
.LBB7475:
	.loc 16 864 0
	lwz 9,800(31)
	cmpw 7,29,9
	bge- 7,.L1267
.LVL1727:
.LBE7475:
.LBB7476:
.LBB7477:
	.loc 16 868 0
	addi 9,9,-1
	.loc 16 869 0
	cmpw 7,29,9
	.loc 16 868 0
	stw 9,800(31)
.LVL1728:
	.loc 16 869 0
	bge- 7,.L1267
	mr 28,29
.LVL1729:
	b .L1268
.LVL1730:
.L1283:
	lwz 4,812(31)
	add 3,4,30
.L1268:
	.loc 6 3805 0
	addi 30,30,136
	.loc 16 870 0
	li 5,136
	add 4,4,30
	.loc 16 869 0
	addi 28,28,1
.LVL1731:
	.loc 16 870 0
	bl memcpy
.LVL1732:
	.loc 16 869 0
	lwz 0,800(31)
	cmpw 7,28,0
	blt+ 7,.L1283
.LVL1733:
.L1267:
.LBE7477:
.LBE7476:
.LBE7474:
	.loc 6 3848 0
	addi 29,29,-1
.LVL1734:
	.loc 6 3849 0
	addi 27,27,-1
.LVL1735:
.LBE7482:
	.loc 6 3807 0
	addi 29,29,1
.LVL1736:
	cmpw 7,27,29
	bgt+ 7,.L1269
.LVL1737:
.L1248:
.LBE7464:
	.loc 6 3852 0 discriminator 1
	lwz 0,680(31)
	cmpwi 7,0,0
	ble- 7,.L1247
	.loc 6 3852 0 is_stmt 0
	li 30,0
.LVL1738:
.L1271:
	.loc 6 3853 0 is_stmt 1 discriminator 2
	lwz 9,692(31)
	slwi 0,30,2
	.loc 6 3852 0 discriminator 2
	addi 30,30,1
.LVL1739:
	.loc 6 3853 0 discriminator 2
	lwzx 3,9,0
	bl _ZN8idWindow16FixupTransitionsEv
.LVL1740:
	.loc 6 3852 0 discriminator 2
	lwz 0,680(31)
	cmpw 7,0,30
	bgt+ 7,.L1271
.LVL1741:
.L1247:
.LBE7463:
	.loc 6 3855 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1742:
	addi 1,1,32
	.cfi_remember_state
.LCFI340:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1743:
.L1282:
.LCFI341:
	.cfi_restore_state
.LBB7485:
.LBB7484:
.LBB7483:
	.loc 6 3811 0 discriminator 2
	lwz 9,4(28)
	.loc 6 4264 0 discriminator 2
	lwz 4,812(31)
.LVL1744:
	.loc 6 3811 0 discriminator 2
	cmpwi 7,9,0
.LBB7478:
.LBB7479:
	.loc 16 589 0 discriminator 2
	add 3,4,30
.LBE7479:
.LBE7478:
	.loc 6 3811 0 discriminator 2
	beq- 7,.L1251
	.loc 6 3829 0
	lwz 0,4(3)
	cmpwi 7,0,200
	beq- 7,.L1284
.LVL1745:
	.loc 6 3831 0
	cmpwi 7,0,232
	beq- 7,.L1285
.LVL1746:
	.loc 6 3833 0
	cmpwi 7,0,264
	beq- 7,.L1286
.LVL1747:
	.loc 6 3835 0
	cmpwi 7,0,296
	beq- 7,.L1287
.LVL1748:
	.loc 6 3837 0
	cmpwi 7,0,328
	beq- 7,.L1288
.LVL1749:
	.loc 6 3839 0
	cmpwi 7,0,360
	beq- 7,.L1289
.LVL1750:
	.loc 6 3841 0
	cmpwi 7,0,380
	bne+ 7,.L1251
.LVL1751:
	.loc 6 3842 0
	addi 9,9,380
	stw 9,0(3)
.LVL1752:
.L1274:
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1753:
.L1275:
	.loc 6 3816 0
	addi 9,9,292
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1754:
.L1276:
	.loc 6 3818 0
	addi 9,9,324
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1755:
.L1277:
	.loc 6 3820 0
	addi 9,9,356
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1756:
.L1278:
	.loc 6 3822 0
	addi 9,9,420
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1757:
.L1279:
	.loc 6 3824 0
	addi 9,9,452
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1758:
.L1284:
	.loc 6 3830 0
	addi 9,9,200
	stwx 9,4,30
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1759:
.L1280:
	.loc 6 3826 0
	addi 9,9,472
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1760:
.L1285:
	.loc 6 3832 0
	addi 9,9,232
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1761:
.L1286:
	.loc 6 3834 0
	addi 9,9,264
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1762:
.L1289:
	.loc 6 3840 0
	addi 9,9,360
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1763:
.L1287:
	.loc 6 3836 0
	addi 9,9,296
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LVL1764:
.L1288:
	.loc 6 3838 0
	addi 9,9,328
	stw 9,0(3)
	lwz 4,812(31)
	add 3,4,30
	b .L1251
.LBE7483:
.LBE7484:
.LBE7485:
	.cfi_endproc
.LFE2993:
	.size	_ZN8idWindow16FixupTransitionsEv, .-_ZN8idWindow16FixupTransitionsEv
	.align 2
	.globl _ZN8idWindow10FixupParmsEv
	.type	_ZN8idWindow10FixupParmsEv, @function
_ZN8idWindow10FixupParmsEv:
.LFB2995:
	.loc 6 3872 0
	.cfi_startproc
.LVL1765:
	mflr 0
	stwu 1,-40(1)
.LCFI342:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB7486:
.LBB7487:
	.loc 6 4264 0
	lwz 29,680(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
.LVL1766:
.LBE7487:
	.loc 6 3875 0
	cmpwi 7,29,0
	ble- 7,.L1291
	li 30,0
.LVL1767:
.L1292:
	.loc 6 3876 0 discriminator 2
	lwz 9,692(31)
	slwi 0,30,2
	.loc 6 3875 0 discriminator 2
	addi 30,30,1
.LVL1768:
	.loc 6 3876 0 discriminator 2
	lwzx 3,9,0
	bl _ZN8idWindow10FixupParmsEv
.LVL1769:
	.loc 6 3875 0 discriminator 2
	cmpw 7,30,29
	bne+ 7,.L1292
.LVL1770:
.L1291:
.LBE7486:
	.loc 6 3872 0
	addi 30,31,732
	addi 29,31,776
.LVL1771:
.L1294:
.LBB7502:
	.loc 6 3879 0
	lwzu 3,4(30)
	.loc 6 3880 0
	mr 4,31
	.loc 6 3879 0
	cmpwi 7,3,0
	beq- 7,.L1293
	.loc 6 3880 0
	bl _ZN15idGuiScriptList10FixupParmsEP8idWindow
.L1293:
	.loc 6 3878 0
	cmpw 7,30,29
	bne+ 7,.L1294
	.loc 6 4264 0
	lwz 29,784(31)
.LVL1772:
	.loc 6 3885 0
	cmpwi 7,29,0
	ble- 7,.L1295
	li 30,0
.LVL1773:
.L1296:
	.loc 6 3886 0 discriminator 2
	lwz 9,796(31)
	slwi 0,30,2
	mr 4,31
	.loc 6 3885 0 discriminator 2
	addi 30,30,1
.LVL1774:
	.loc 6 3886 0 discriminator 2
	lwzx 9,9,0
	lwz 3,4(9)
	bl _ZN15idGuiScriptList10FixupParmsEP8idWindow
.LVL1775:
	.loc 6 3885 0 discriminator 2
	cmpw 7,30,29
	bne+ 7,.L1296
.LVL1776:
.L1295:
	.loc 6 4264 0
	lwz 29,852(31)
.LVL1777:
	.loc 6 3890 0
	cmpwi 7,29,0
	ble- 7,.L1297
	li 30,0
.LVL1778:
.L1298:
	.loc 6 3891 0 discriminator 2
	lwz 9,864(31)
	slwi 0,30,2
	mr 4,31
	.loc 6 3890 0 discriminator 2
	addi 30,30,1
.LVL1779:
	.loc 6 3891 0 discriminator 2
	lwzx 9,9,0
	lwz 3,32(9)
	bl _ZN15idGuiScriptList10FixupParmsEP8idWindow
.LVL1780:
	.loc 6 3890 0 discriminator 2
	cmpw 7,30,29
	bne+ 7,.L1298
.LVL1781:
.L1297:
	.loc 6 4264 0
	lwz 28,816(31)
.LVL1782:
.LBB7501:
	.loc 6 3895 0
	cmpwi 7,28,0
	ble- 7,.L1299
	li 30,0
	li 29,0
.LBB7488:
.LBB7489:
	.loc 6 3902 0
	li 26,-1
	b .L1302
.LVL1783:
.L1300:
.LBE7489:
.LBE7488:
	.loc 6 3895 0
	cmpw 7,29,28
	addi 30,30,20
	beq- 7,.L1299
.LVL1784:
.L1302:
.LBB7497:
.LBB7490:
.LBB7491:
	.loc 16 589 0
	lwz 9,828(31)
.LBE7491:
.LBE7490:
.LBE7497:
	.loc 6 3895 0
	addi 29,29,1
.LVL1785:
.LBB7498:
.LBB7493:
.LBB7492:
	.loc 16 589 0
	add 9,9,30
.LBE7492:
.LBE7493:
	.loc 6 3896 0
	lwz 0,8(9)
	cmpwi 7,0,-2
	bne+ 7,.L1300
.LVL1786:
.LBB7494:
	.loc 6 3898 0
	lwz 27,4(9)
.LVL1787:
	.loc 6 3899 0
	li 5,1
	lwz 9,0(31)
.LVL1788:
	li 6,0
	mr 4,27
	mr 3,31
	lwz 0,12(9)
	mtctr 0
	bctrl
	.loc 6 3900 0
	cmpwi 7,27,0
	.loc 6 3899 0
	mr 25,3
.LVL1789:
	.loc 6 3900 0
	mr 3,27
.LVL1790:
	beq- 7,.L1301
	.loc 6 3900 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L1301:
.LVL1791:
	.loc 6 3901 0 is_stmt 1
	lwz 9,828(31)
.LBE7494:
.LBE7498:
	.loc 6 3895 0
	cmpw 7,29,28
.LBB7499:
.LBB7495:
	.loc 6 3901 0
	add 9,9,30
	stw 25,4(9)
.LVL1792:
	.loc 6 3902 0
	lwz 9,828(31)
	add 9,9,30
.LBE7495:
.LBE7499:
	.loc 6 3895 0
	addi 30,30,20
.LBB7500:
.LBB7496:
	.loc 6 3902 0
	stw 26,8(9)
.LVL1793:
.LBE7496:
.LBE7500:
	.loc 6 3895 0
	bne+ 7,.L1302
.LVL1794:
.L1299:
.LBE7501:
	.loc 6 3907 0
	lwz 0,48(31)
	andis. 9,0,4096
	bne- 0,.L1309
.LBE7502:
	.loc 6 3911 0
	lwz 0,44(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1795:
	addi 1,1,40
	.cfi_remember_state
.LCFI343:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1796:
.L1309:
.LCFI344:
	.cfi_restore_state
.LBB7503:
	.loc 6 3908 0
	lis 9,.LC1@ha
.LBE7503:
	.loc 6 3911 0
	lwz 0,44(1)
.LBB7504:
	.loc 6 3908 0
	lfs 1,.LC1@l(9)
	mr 3,31
.LBE7504:
	.loc 6 3911 0
	lwz 25,12(1)
	mtlr 0
.LBB7505:
	.loc 6 3908 0
	fmr 2,1
.LBE7505:
	.loc 6 3911 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1797:
	addi 1,1,40
.LCFI345:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
.LBB7506:
	.loc 6 3908 0
	b _ZN8idWindow9CalcRectsEff
.LVL1798:
.LBE7506:
	.cfi_endproc
.LFE2995:
	.size	_ZN8idWindow10FixupParmsEv, .-_ZN8idWindow10FixupParmsEv
	.align 2
	.globl _ZN8idWindow8IsSimpleEv
	.type	_ZN8idWindow8IsSimpleEv, @function
_ZN8idWindow8IsSimpleEv:
.LFB2996:
	.loc 6 3918 0
	.cfi_startproc
.LVL1799:
.LBB7507:
	.loc 6 3921 0
	lis 9,com_editors@ha
	lwz 0,com_editors@l(9)
	.loc 6 3922 0
	li 9,0
	.loc 6 3921 0
	andi. 0,0,4
	bne- 0,.L1311
	.loc 6 3925 0
	lwz 11,816(3)
	.loc 6 3926 0
	mr 9,0
	.loc 6 3925 0
	cmpwi 7,11,0
	bne- 7,.L1311
	.loc 6 3928 0
	lwz 0,48(3)
	.loc 6 3929 0
	mr 9,11
	.loc 6 3928 0
	andi. 0,0,384
	bne- 0,.L1311
	.loc 6 3931 0
	lwz 11,680(3)
	.loc 6 3932 0
	mr 9,0
	.loc 6 3931 0
	cmpwi 7,11,0
	bne- 7,.L1311
	.loc 6 3931 0 is_stmt 0 discriminator 2
	lwz 0,696(3)
	.loc 6 3932 0 is_stmt 1 discriminator 2
	mr 9,11
	.loc 6 3931 0 discriminator 2
	cmpwi 7,0,0
	bne- 7,.L1311
.LBE7507:
	.loc 6 3918 0
	li 0,11
.LBB7510:
	addi 9,3,732
.LBE7510:
	mtctr 0
.L1312:
.LBB7511:
.LBB7508:
	.loc 6 3935 0
	lwzu 0,4(9)
	cmpwi 7,0,0
	bne- 7,.L1318
	.loc 6 3934 0
	bdnz .L1312
.LBE7508:
	.loc 6 3939 0
	lwz 0,784(3)
	.loc 6 3940 0
	li 9,0
	.loc 6 3939 0
	cmpwi 7,0,0
	bne- 7,.L1311
	.loc 6 3918 0
	lwz 9,852(3)
	cntlzw 9,9
	srwi 9,9,5
.LVL1800:
.L1311:
.LBE7511:
	.loc 6 3948 0
	mr 3,9
.LVL1801:
	blr
.LVL1802:
.L1318:
.LBB7512:
.LBB7509:
	.loc 6 3936 0
	li 9,0
	b .L1311
.LBE7509:
.LBE7512:
	.cfi_endproc
.LFE2996:
	.size	_ZN8idWindow8IsSimpleEv, .-_ZN8idWindow8IsSimpleEv
	.align 2
	.globl _ZN8idWindow17ContainsStateVarsEv
	.type	_ZN8idWindow17ContainsStateVarsEv, @function
_ZN8idWindow17ContainsStateVarsEv:
.LFB2997:
	.loc 6 3955 0
	.cfi_startproc
.LVL1803:
	mflr 0
	stwu 1,-24(1)
.LCFI346:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	stw 0,28(1)
.LBB7513:
	.loc 6 3957 0
	li 0,1
	.cfi_offset 65, 4
	.cfi_offset 29, -12
.LBE7513:
	.loc 6 3955 0
	stw 30,16(1)
	stw 31,20(1)
.LBB7516:
	.loc 6 3956 0
	lwz 9,640(3)
	cmpwi 7,9,0
	bne- 7,.L1322
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 6 4264 0
	lwz 30,680(3)
.LVL1804:
.LBB7514:
	.loc 6 3965 0
	li 0,0
	.loc 6 3960 0
	cmpwi 7,30,0
	ble- 7,.L1322
	lwz 29,692(3)
	li 31,0
	b .L1323
.LVL1805:
.L1329:
	beq- 6,.L1328
.LVL1806:
.L1323:
	.loc 6 3961 0
	slwi 0,31,2
	.loc 6 3960 0
	addi 31,31,1
.LVL1807:
	.loc 6 3961 0
	lwzx 3,29,0
	bl _ZN8idWindow17ContainsStateVarsEv
	.loc 6 3960 0
	cmpw 6,31,30
	.loc 6 3961 0
	cmpwi 7,3,0
	beq+ 7,.L1329
	.loc 6 3962 0
	li 0,1
.LVL1808:
.L1322:
.LBE7514:
.LBE7516:
	.loc 6 3966 0
	mr 3,0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI347:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1809:
.L1328:
.LCFI348:
	.cfi_restore_state
.LBB7517:
.LBB7515:
	.loc 6 3965 0
	li 0,0
.LBE7515:
.LBE7517:
	.loc 6 3966 0
	lwz 29,12(1)
	mr 3,0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL1810:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI349:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2997:
	.size	_ZN8idWindow17ContainsStateVarsEv, .-_ZN8idWindow17ContainsStateVarsEv
	.align 2
	.globl _ZN8idWindow11InteractiveEv
	.type	_ZN8idWindow11InteractiveEv, @function
_ZN8idWindow11InteractiveEv:
.LFB2998:
	.loc 6 3973 0
	.cfi_startproc
.LVL1811:
	mflr 0
	stwu 1,-24(1)
.LCFI350:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	stw 0,28(1)
.LBB7518:
	.loc 6 3975 0
	li 0,1
	.cfi_offset 65, 4
	.cfi_offset 29, -12
.LBE7518:
	.loc 6 3973 0
	stw 30,16(1)
	stw 31,20(1)
.LBB7521:
	.loc 6 3974 0
	lwz 9,744(3)
	cmpwi 7,9,0
	beq- 7,.L1337
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.L1331:
.LBE7521:
	.loc 6 3984 0
	mr 3,0
.LVL1812:
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI351:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1813:
.L1337:
.LCFI352:
	.cfi_restore_state
.LBB7522:
	.loc 6 4264 0
	lwz 30,680(3)
.LVL1814:
.LBB7519:
	.loc 6 3983 0
	li 0,0
	.loc 6 3978 0
	cmpwi 7,30,0
	ble- 7,.L1331
	lwz 29,692(3)
	li 31,0
	b .L1332
.LVL1815:
.L1339:
	beq- 6,.L1338
.LVL1816:
.L1332:
	.loc 6 3979 0
	slwi 0,31,2
	.loc 6 3978 0
	addi 31,31,1
.LVL1817:
	.loc 6 3979 0
	lwzx 3,29,0
	bl _ZN8idWindow11InteractiveEv
	.loc 6 3978 0
	cmpw 6,31,30
	.loc 6 3979 0
	cmpwi 7,3,0
	beq+ 7,.L1339
	.loc 6 3980 0
	li 0,1
.LBE7519:
.LBE7522:
	.loc 6 3984 0
	lwz 29,12(1)
	mr 3,0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL1818:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI353:
	.cfi_def_cfa_offset 0
	blr
.LVL1819:
.L1338:
.LCFI354:
	.cfi_restore_state
.LBB7523:
.LBB7520:
	.loc 6 3983 0
	li 0,0
.LBE7520:
.LBE7523:
	.loc 6 3984 0
	lwz 29,12(1)
	mr 3,0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL1820:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI355:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2998:
	.size	_ZN8idWindow11InteractiveEv, .-_ZN8idWindow11InteractiveEv
	.align 2
	.globl _ZN8idWindow17SetChildWinVarValEPKcS1_S1_
	.type	_ZN8idWindow17SetChildWinVarValEPKcS1_S1_, @function
_ZN8idWindow17SetChildWinVarValEPKcS1_S1_:
.LFB2999:
	.loc 6 3991 0
	.cfi_startproc
.LVL1821:
	mflr 0
	stwu 1,-16(1)
.LCFI356:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,6
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB7524:
	.loc 6 3992 0
	.cfi_offset 65, 4
	bl _ZN8idWindow15FindChildByNameEPKc
.LVL1822:
	.loc 6 3994 0
	mr. 9,3
	beq- 0,.L1340
	.loc 6 3994 0 is_stmt 0 discriminator 1
	lwz 3,4(9)
.LVL1823:
	cmpwi 7,3,0
	beq- 7,.L1342
	.loc 6 3995 0 is_stmt 1
	mr 4,30
	bl _ZN14idSimpleWindow15GetWinVarByNameEPKc
.LVL1824:
	mr 30,3
.LVL1825:
.L1343:
	.loc 6 3999 0
	cmpwi 7,30,0
	beq- 7,.L1340
	.loc 6 4000 0
	lwz 9,0(30)
	mr 3,30
	mr 4,31
	lwz 0,12(9)
	mtctr 0
	bctrl
.LVL1826:
.LBB7525:
.LBB7526:
	.loc 3 91 0
	li 0,0
	stb 0,12(30)
.LVL1827:
.L1340:
.LBE7526:
.LBE7525:
.LBE7524:
	.loc 6 4003 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1828:
	addi 1,1,16
	.cfi_remember_state
.LCFI357:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1829:
.L1342:
.LCFI358:
	.cfi_restore_state
.LBB7527:
	.loc 6 3996 0 discriminator 1
	lwz 3,0(9)
	cmpwi 7,3,0
	beq- 7,.L1340
	.loc 6 3997 0
	lwz 9,0(3)
.LVL1830:
	mr 4,30
	li 5,0
	li 6,0
	lwz 0,12(9)
	mtctr 0
	bctrl
	mr 30,3
.LVL1831:
	b .L1343
.LBE7527:
	.cfi_endproc
.LFE2999:
	.size	_ZN8idWindow17SetChildWinVarValEPKcS1_S1_, .-_ZN8idWindow17SetChildWinVarValEPKcS1_S1_
	.align 2
	.globl _ZN8idWindow16FindChildByPointEffPPS_
	.type	_ZN8idWindow16FindChildByPointEffPPS_, @function
_ZN8idWindow16FindChildByPointEffPPS_:
.LFB3000:
	.loc 6 4013 0
	.cfi_startproc
.LVL1832:
	mflr 0
	stwu 1,-40(1)
.LCFI359:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stfd 30,24(1)
	fmr 30,2
	.cfi_offset 62, -16
	stfd 31,32(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -32
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -28
	stw 0,44(1)
	stw 30,16(1)
	stw 31,20(1)
.LBB7528:
	.loc 6 4018 0
	lwz 0,0(4)
	.cfi_offset 31, -20
	.cfi_offset 30, -24
	.cfi_offset 65, 4
.LBB7529:
	.loc 6 4264 0
	lwz 31,680(3)
.LBE7529:
	.loc 6 4018 0
	cmpw 7,0,3
	beq- 7,.L1352
	.loc 6 4023 0
	addi 4,3,56
.LVL1833:
	bl _ZN8idWindow8ContainsERK11idRectangleff
.LVL1834:
	cmpwi 7,3,0
	.loc 6 4024 0
	li 3,0
	.loc 6 4023 0
	beq- 7,.L1346
.LVL1835:
.LBB7534:
	.loc 6 4027 0
	addic. 31,31,-1
.LVL1836:
	mr 3,28
	blt- 0,.L1346
	slwi 30,31,2
.LVL1837:
.L1348:
.LBB7530:
	.loc 6 4028 0
	lwz 9,692(28)
	fmr 1,31
	fmr 2,30
	mr 4,29
	lwzx 3,9,30
.LBE7530:
	.loc 6 4027 0
	addi 30,30,-4
.LBB7531:
	.loc 6 4028 0
	bl _ZN8idWindow16FindChildByPointEffPPS_
.LVL1838:
.LBE7531:
	.loc 6 4027 0
	cmpwi 7,31,0
.LBB7532:
	.loc 6 4029 0
	cmpwi 0,3,0
.LBE7532:
	.loc 6 4027 0
	addi 31,31,-1
.LVL1839:
.LBB7533:
	.loc 6 4029 0
	beq- 0,.L1347
	.loc 6 4030 0
	lwz 0,0(29)
	cmpwi 6,0,0
	beq- 6,.L1346
.L1347:
.LBE7533:
	.loc 6 4027 0
	bne+ 7,.L1348
	mr 3,28
.LVL1840:
.L1346:
.LBE7534:
.LBE7528:
	.loc 6 4039 0
	lwz 0,44(1)
	lwz 28,8(1)
.LVL1841:
	mtlr 0
	lwz 29,12(1)
.LVL1842:
	lwz 30,16(1)
	lwz 31,20(1)
	lfd 30,24(1)
.LVL1843:
	lfd 31,32(1)
.LVL1844:
	addi 1,1,40
	.cfi_remember_state
.LCFI360:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1845:
.L1352:
.LCFI361:
	.cfi_restore_state
.LBB7535:
	.loc 6 4019 0
	li 0,0
	.loc 6 4020 0
	li 3,0
.LVL1846:
	.loc 6 4019 0
	stw 0,0(4)
	.loc 6 4020 0
	b .L1346
.LBE7535:
	.cfi_endproc
.LFE3000:
	.size	_ZN8idWindow16FindChildByPointEffPPS_, .-_ZN8idWindow16FindChildByPointEffPPS_
	.align 2
	.globl _ZN8idWindow16FindChildByPointEffPS_
	.type	_ZN8idWindow16FindChildByPointEffPS_, @function
_ZN8idWindow16FindChildByPointEffPS_:
.LFB3001:
	.loc 6 4047 0
	.cfi_startproc
.LVL1847:
	stwu 1,-16(1)
.LCFI362:
	.cfi_def_cfa_offset 16
	mflr 0
	mr 9,1
	stw 0,20(1)
	.loc 6 4047 0
	stwu 4,8(9)
	.loc 6 4048 0
	mr 4,9
.LVL1848:
	.cfi_offset 65, 4
	bl _ZN8idWindow16FindChildByPointEffPPS_
.LVL1849:
	.loc 6 4049 0
	lwz 0,20(1)
	addi 1,1,16
.LCFI363:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3001:
	.size	_ZN8idWindow16FindChildByPointEffPS_, .-_ZN8idWindow16FindChildByPointEffPS_
	.align 2
	.globl _ZN8idWindow13GetChildCountEv
	.type	_ZN8idWindow13GetChildCountEv, @function
_ZN8idWindow13GetChildCountEv:
.LFB3002:
	.loc 6 4059 0
	.cfi_startproc
.LVL1850:
	.loc 6 4061 0
	lwz 3,696(3)
.LVL1851:
	blr
	.cfi_endproc
.LFE3002:
	.size	_ZN8idWindow13GetChildCountEv, .-_ZN8idWindow13GetChildCountEv
	.align 2
	.globl _ZN8idWindow8GetChildEi
	.type	_ZN8idWindow8GetChildEi, @function
_ZN8idWindow8GetChildEi:
.LFB3003:
	.loc 6 4071 0
	.cfi_startproc
.LVL1852:
	.loc 6 4072 0
	lwz 9,708(3)
	slwi 4,4,3
.LVL1853:
	.loc 6 4073 0
	lwzx 3,9,4
.LVL1854:
	blr
	.cfi_endproc
.LFE3003:
	.size	_ZN8idWindow8GetChildEi, .-_ZN8idWindow8GetChildEi
	.align 2
	.globl _ZN8idWindow13GetChildIndexEPS_
	.type	_ZN8idWindow13GetChildIndexEPS_, @function
_ZN8idWindow13GetChildIndexEPS_:
.LFB3004:
	.loc 6 4082 0
	.cfi_startproc
.LVL1855:
.LBB7536:
	.loc 6 4264 0
	lwz 0,696(3)
.LBE7536:
	.loc 6 4082 0
	mr 9,3
.LBB7537:
	.loc 6 4089 0
	li 3,-1
.LVL1856:
	.loc 6 4084 0
	cmpwi 7,0,0
	blelr- 7
	.loc 6 4264 0
	lwz 9,708(9)
.LVL1857:
	.loc 6 4084 0
	li 3,0
	.loc 6 4085 0
	mtctr 0
	lwz 11,0(9)
	cmpw 7,11,4
	bne+ 7,.L1359
	blr
.LVL1858:
.L1360:
	lwzx 0,9,0
	cmpw 7,0,4
	beqlr- 7
.LVL1859:
.L1359:
	.loc 6 4084 0
	addi 3,3,1
.LVL1860:
	.loc 6 4085 0
	slwi 0,3,3
	.loc 6 4084 0
	bdnz .L1360
	.loc 6 4089 0
	li 3,-1
.LVL1861:
.LBE7537:
	.loc 6 4090 0
	blr
	.cfi_endproc
.LFE3004:
	.size	_ZN8idWindow13GetChildIndexEPS_, .-_ZN8idWindow13GetChildIndexEPS_
	.align 2
	.globl _ZN8idWindow11RemoveChildEPS_
	.type	_ZN8idWindow11RemoveChildEPS_, @function
_ZN8idWindow11RemoveChildEPS_:
.LFB3005:
	.loc 6 4100 0
	.cfi_startproc
.LVL1862:
.LBB7538:
.LBB7539:
	.loc 6 4264 0
	lwz 9,680(3)
.LVL1863:
.LBB7540:
.LBB7541:
.LBB7542:
	.loc 16 772 0
	cmpwi 7,9,0
	ble- 7,.L1364
	.loc 16 773 0
	lwz 8,692(3)
	lwz 0,0(8)
	cmpw 7,0,4
	beq- 7,.L1374
	mr 10,8
	.loc 16 772 0
	li 11,0
	mtctr 9
	b .L1366
.LVL1864:
.L1367:
	.loc 16 773 0
	lwzu 0,4(10)
	cmpw 7,0,4
	beq- 7,.L1365
.LVL1865:
.L1366:
	.loc 16 772 0
	addi 11,11,1
.LVL1866:
	bdnz .L1367
.LVL1867:
.L1364:
.LBE7542:
.LBE7541:
.LBB7544:
.LBB7545:
	.loc 6 4264 0
	lwz 10,696(3)
.LBE7545:
.LBE7544:
.LBE7540:
.LBE7539:
	.loc 6 4106 0
	cmpwi 7,10,0
	blelr- 7
.L1380:
	.loc 6 4264 0
	lwz 11,708(3)
.LVL1868:
	.loc 6 4106 0
	li 9,0
	.loc 6 4108 0
	mtctr 10
	lwz 0,0(11)
	cmpw 7,0,4
	bne+ 7,.L1371
	b .L1370
.LVL1869:
.L1373:
	lwzx 0,11,0
	cmpw 7,0,4
	beq- 7,.L1378
.LVL1870:
.L1371:
	.loc 6 4106 0
	addi 9,9,1
.LVL1871:
	.loc 6 4108 0
	slwi 0,9,3
	.loc 6 4106 0
	bdnz .L1373
	blr
.LVL1872:
.L1374:
.LBB7550:
.LBB7549:
.LBB7547:
.LBB7543:
	.loc 16 772 0
	li 11,0
.LVL1873:
.L1365:
.LBE7543:
.LBE7547:
.LBB7548:
.LBB7546:
	.loc 16 868 0
	addi 9,9,-1
	.loc 16 869 0
	cmpw 7,11,9
	.loc 16 868 0
	stw 9,680(3)
.LVL1874:
	.loc 16 869 0
	bge- 7,.L1364
	slwi 9,11,2
	b .L1368
.LVL1875:
.L1379:
	lwz 8,692(3)
.L1368:
	.loc 16 870 0
	add 10,8,9
	.loc 6 4100 0
	addi 9,9,4
	.loc 16 870 0
	lwzx 0,8,9
	.loc 16 869 0
	addi 11,11,1
.LVL1876:
	.loc 16 870 0
	stw 0,0(10)
	.loc 16 869 0
	lwz 0,680(3)
	cmpw 7,11,0
	blt+ 7,.L1379
.LVL1877:
	.loc 6 4264 0
	lwz 10,696(3)
.LBE7546:
.LBE7548:
.LBE7549:
.LBE7550:
	.loc 6 4106 0
	cmpwi 7,10,0
	bgt+ 7,.L1380
	blr
.LVL1878:
.L1378:
.LBB7551:
.LBB7552:
	.loc 16 864 0
	cmpwi 7,9,0
	bltlr- 7
.LVL1879:
.L1370:
	.loc 16 868 0
	addi 10,10,-1
	.loc 16 869 0
	cmpw 7,10,9
	.loc 16 868 0
	stw 10,696(3)
.LVL1880:
	.loc 16 869 0
	blelr- 7
	slwi 8,9,3
	addi 9,9,1
.LVL1881:
	.loc 16 870 0
	add 7,11,8
	.loc 6 4100 0
	addi 8,8,8
	.loc 16 870 0
	add 11,11,8
	lwz 10,0(11)
	lwz 11,4(11)
	stw 10,0(7)
	stw 11,4(7)
	.loc 16 869 0
	lwz 0,696(3)
	cmpw 7,9,0
	bgelr- 7
.L1381:
	lwz 11,708(3)
	addi 9,9,1
.LVL1882:
	.loc 16 870 0
	add 7,11,8
	.loc 6 4100 0
	addi 8,8,8
	.loc 16 870 0
	add 11,11,8
	lwz 10,0(11)
	lwz 11,4(11)
	stw 10,0(7)
	stw 11,4(7)
	.loc 16 869 0
	lwz 0,696(3)
	cmpw 7,9,0
	blt+ 7,.L1381
	blr
.LBE7552:
.LBE7551:
.LBE7538:
	.cfi_endproc
.LFE3005:
	.size	_ZN8idWindow11RemoveChildEPS_, .-_ZN8idWindow11RemoveChildEPS_
	.align 2
	.globl _ZN8idWindow14ScreenToClientEP11idRectangle
	.type	_ZN8idWindow14ScreenToClientEP11idRectangle, @function
_ZN8idWindow14ScreenToClientEP11idRectangle:
.LFB3007:
	.loc 6 4152 0
	.cfi_startproc
.LVL1883:
.LBB7553:
	.loc 6 4157 0
	cmpwi 0,3,0
.LVL1884:
.LBE7553:
	.loc 6 4152 0
	stwu 1,-48(1)
.LCFI364:
	.cfi_def_cfa_offset 48
.LBB7554:
	.loc 6 4157 0
	beq- 0,.L1385
	lis 9,.LC8@ha
	li 0,0
	.loc 6 4158 0
	lfs 0,.LC8@l(9)
	lis 11,0x4330
	.loc 6 4157 0
	li 9,0
.LVL1885:
.L1384:
	.loc 6 4158 0 discriminator 2
	xoris 9,9,0x8000
	stw 11,8(1)
	stw 9,12(1)
	.loc 6 4159 0 discriminator 2
	xoris 0,0,0x8000
	.loc 6 4158 0 discriminator 2
	addi 8,1,40
	lis 10,0x4330
	lfd 12,8(1)
	lfs 13,276(3)
	fsub 12,12,0
	.loc 6 4159 0 discriminator 2
	stw 0,20(1)
	stw 11,16(1)
	.loc 6 4158 0 discriminator 2
	frsp 12,12
	fadds 12,12,13
	.loc 6 4159 0 discriminator 2
	lfd 13,16(1)
	fsub 13,13,0
	.loc 6 4158 0 discriminator 2
	fctiwz 12,12
	.loc 6 4159 0 discriminator 2
	frsp 13,13
	.loc 6 4158 0 discriminator 2
	stfiwx 12,0,8
	.loc 6 4159 0 discriminator 2
	addi 8,1,44
	lfs 12,280(3)
	.loc 6 4158 0 discriminator 2
	lwz 9,40(1)
.LVL1886:
	.loc 6 4159 0 discriminator 2
	fadds 13,13,12
	fctiwz 13,13
	stfiwx 13,0,8
	.loc 6 4157 0 discriminator 2
	lwz 3,676(3)
.LVL1887:
	.loc 6 4159 0 discriminator 2
	lwz 0,44(1)
.LVL1888:
	.loc 6 4157 0 discriminator 2
	cmpwi 7,3,0
	bne+ 7,.L1384
	.loc 6 4157 0 is_stmt 0
	xoris 9,9,0x8000
	xoris 0,0,0x8000
	stw 9,28(1)
	stw 10,24(1)
	stw 0,36(1)
	stw 10,32(1)
	lfd 13,24(1)
	lfd 12,32(1)
	fsub 13,13,0
	fsub 0,12,0
	frsp 13,13
	frsp 0,0
.LVL1889:
.L1383:
	.loc 6 4162 0 is_stmt 1
	lfs 11,0(4)
.LBE7554:
	.loc 6 4164 0
.LBB7555:
	.loc 6 4163 0
	lfs 12,4(4)
.LBE7555:
	.loc 6 4164 0
	addi 1,1,48
	.cfi_remember_state
.LCFI365:
	.cfi_def_cfa_offset 0
.LBB7556:
	.loc 6 4162 0
	fsubs 13,11,13
	.loc 6 4163 0
	fsubs 0,12,0
	.loc 6 4162 0
	stfs 13,0(4)
	.loc 6 4163 0
	stfs 0,4(4)
.LBE7556:
	.loc 6 4164 0
	blr
.LVL1890:
.L1385:
.LCFI366:
	.cfi_restore_state
.LBB7557:
	.loc 6 4157 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fmr 13,0
	b .L1383
.LBE7557:
	.cfi_endproc
.LFE3007:
	.size	_ZN8idWindow14ScreenToClientEP11idRectangle, .-_ZN8idWindow14ScreenToClientEP11idRectangle
	.align 2
	.globl _ZN8idWindow14ClientToScreenEP11idRectangle
	.type	_ZN8idWindow14ClientToScreenEP11idRectangle, @function
_ZN8idWindow14ClientToScreenEP11idRectangle:
.LFB3008:
	.loc 6 4171 0
	.cfi_startproc
.LVL1891:
.LBB7558:
	.loc 6 4176 0
	cmpwi 0,3,0
.LBE7558:
	.loc 6 4171 0
	stwu 1,-48(1)
.LCFI367:
	.cfi_def_cfa_offset 48
.LBB7559:
	.loc 6 4176 0
	beq- 0,.L1390
	lis 9,.LC8@ha
	li 0,0
	.loc 6 4177 0
	lfs 0,.LC8@l(9)
	lis 11,0x4330
	.loc 6 4176 0
	li 9,0
.LVL1892:
.L1389:
	.loc 6 4177 0 discriminator 2
	xoris 9,9,0x8000
	stw 11,8(1)
	stw 9,12(1)
	.loc 6 4178 0 discriminator 2
	xoris 0,0,0x8000
	.loc 6 4177 0 discriminator 2
	addi 8,1,40
	lis 10,0x4330
	lfd 12,8(1)
	lfs 13,276(3)
	fsub 12,12,0
	.loc 6 4178 0 discriminator 2
	stw 0,20(1)
	stw 11,16(1)
	.loc 6 4177 0 discriminator 2
	frsp 12,12
	fadds 12,12,13
	.loc 6 4178 0 discriminator 2
	lfd 13,16(1)
	fsub 13,13,0
	.loc 6 4177 0 discriminator 2
	fctiwz 12,12
	.loc 6 4178 0 discriminator 2
	frsp 13,13
	.loc 6 4177 0 discriminator 2
	stfiwx 12,0,8
	.loc 6 4178 0 discriminator 2
	addi 8,1,44
	lfs 12,280(3)
	.loc 6 4177 0 discriminator 2
	lwz 9,40(1)
.LVL1893:
	.loc 6 4178 0 discriminator 2
	fadds 13,13,12
	fctiwz 13,13
	stfiwx 13,0,8
	.loc 6 4176 0 discriminator 2
	lwz 3,676(3)
.LVL1894:
	.loc 6 4178 0 discriminator 2
	lwz 0,44(1)
.LVL1895:
	.loc 6 4176 0 discriminator 2
	cmpwi 7,3,0
	bne+ 7,.L1389
	.loc 6 4176 0 is_stmt 0
	xoris 9,9,0x8000
	xoris 0,0,0x8000
	stw 9,28(1)
	stw 10,24(1)
	stw 0,36(1)
	stw 10,32(1)
	lfd 13,24(1)
	lfd 12,32(1)
	fsub 13,13,0
	fsub 0,12,0
	frsp 13,13
	frsp 0,0
.LVL1896:
.L1388:
	.loc 6 4181 0 is_stmt 1
	lfs 11,0(4)
.LBE7559:
	.loc 6 4183 0
.LBB7560:
	.loc 6 4182 0
	lfs 12,4(4)
.LBE7560:
	.loc 6 4183 0
	addi 1,1,48
	.cfi_remember_state
.LCFI368:
	.cfi_def_cfa_offset 0
.LBB7561:
	.loc 6 4181 0
	fadds 13,11,13
	.loc 6 4182 0
	fadds 0,12,0
	.loc 6 4181 0
	stfs 13,0(4)
	.loc 6 4182 0
	stfs 0,4(4)
.LBE7561:
	.loc 6 4183 0
	blr
.LVL1897:
.L1390:
.LCFI369:
	.cfi_restore_state
.LBB7562:
	.loc 6 4176 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fmr 13,0
	b .L1388
.LBE7562:
	.cfi_endproc
.LFE3008:
	.size	_ZN8idWindow14ClientToScreenEP11idRectangle, .-_ZN8idWindow14ClientToScreenEP11idRectangle
	.align 2
	.globl _ZN8idWindow11SetDefaultsEv
	.type	_ZN8idWindow11SetDefaultsEv, @function
_ZN8idWindow11SetDefaultsEv:
.LFB3009:
	.loc 6 4193 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3009
.LVL1898:
	mflr 0
	stwu 1,-104(1)
.LCFI370:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	.loc 6 4194 0
	lis 9,.LC23@ha
	.loc 6 4193 0
	stw 29,92(1)
	.loc 6 4196 0
	lis 29,.LC0@ha
	.cfi_offset 29, -12
	.loc 6 4193 0
	stw 0,108(1)
	stw 30,96(1)
	lis 30,.LC4@ha
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,100(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 27,84(1)
	stw 28,88(1)
	.loc 6 4194 0
	lwz 9,.LC23@l(9)
.LBB7760:
.LBB7761:
	.loc 3 115 0
	lwz 27,216(3)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LBE7761:
.LBE7760:
	.loc 6 4196 0
	lwz 0,.LC0@l(29)
.LBB7789:
.LBB7782:
	.loc 3 115 0
	cmpwi 7,27,0
.LBE7782:
.LBE7789:
	.loc 6 4194 0
	stw 9,108(3)
	.loc 6 4195 0
	lis 9,.LC24@ha
	.loc 6 4196 0
	stw 0,116(3)
	.loc 6 4195 0
	lwz 9,.LC24@l(9)
	.loc 6 4197 0
	stw 0,120(3)
	.loc 6 4198 0
	li 0,0
	stw 0,124(3)
.LVL1899:
.LBB7790:
.LBB7783:
	.loc 3 114 0
	li 0,0
.LBE7783:
.LBE7790:
	.loc 6 4195 0
	stw 9,112(3)
.LBB7791:
.LBB7784:
	.loc 3 114 0
	stb 0,225(3)
	.loc 3 115 0
	beq- 7,.L1393
.LBE7784:
	.loc 6 4264 0
	lwz 28,220(3)
.LBB7785:
.LBB7762:
.LBB7763:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L1439
	.loc 3 54 0
	lbz 0,0(28)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L1471
.LVL1900:
.L1394:
.LBE7763:
.LBE7762:
.LBB7777:
.LBB7778:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
.LEHB77:
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL1901:
.L1393:
.LBE7778:
.LBE7777:
.LBE7785:
.LBE7791:
.LBB7792:
.LBB7793:
	.loc 3 115 0
	lwz 27,232(31)
	.loc 3 114 0
	li 0,1
	stb 0,241(31)
	.loc 3 115 0
	cmpwi 7,27,0
	beq- 7,.L1396
.LBE7793:
	.loc 6 4264 0
	lwz 28,236(31)
.LBB7814:
.LBB7794:
.LBB7795:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L1442
	.loc 3 54 0
	lbz 0,0(28)
	li 4,1
	cmpwi 7,0,42
	beq- 7,.L1472
.L1397:
.LVL1902:
.LBE7795:
.LBE7794:
.LBB7809:
.LBB7810:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL1903:
.L1396:
.LBE7810:
.LBE7809:
.LBE7814:
.LBE7792:
.LBB7818:
.LBB7819:
	.loc 3 115 0
	lwz 27,248(31)
.LBE7819:
.LBE7818:
	.loc 6 4201 0
	li 0,0
	.loc 6 4202 0
	li 9,0
	.loc 6 4201 0
	stb 0,211(31)
.LBB7846:
.LBB7840:
	.loc 3 115 0
	cmpwi 7,27,0
.LBE7840:
.LBE7846:
	.loc 6 4202 0
	stw 9,128(31)
	.loc 6 4203 0
	stw 9,132(31)
.LVL1904:
.LBB7847:
.LBB7841:
	.loc 3 114 0
	stb 0,257(31)
	.loc 3 115 0
	beq- 7,.L1399
.LBE7841:
	.loc 6 4264 0
	lwz 28,252(31)
.LBB7842:
.LBB7820:
.LBB7821:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L1445
	.loc 3 54 0
	lbz 0,0(28)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L1473
.L1400:
.LVL1905:
.LBE7821:
.LBE7820:
.LBB7835:
.LBB7836:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL1906:
.L1399:
.LBE7836:
.LBE7835:
.LBE7842:
.LBE7847:
.LBB7848:
.LBB7849:
	.loc 3 339 0
	lwz 28,476(31)
	.loc 3 338 0
	li 0,0
	stw 0,488(31)
	.loc 3 339 0
	cmpwi 7,28,0
	beq- 7,.L1402
.LBE7849:
	.loc 6 4264 0
	lwz 27,480(31)
.LBB7870:
.LBB7850:
.LBB7851:
	.loc 3 53 0
	cmpwi 7,27,0
	beq- 7,.L1448
	.loc 3 54 0
	lbz 9,0(27)
	stw 0,72(1)
	cmpwi 7,9,42
	lfs 1,72(1)
	beq- 7,.L1474
.L1403:
.LVL1907:
.LBE7851:
.LBE7850:
.LBB7865:
.LBB7866:
	.loc 10 189 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL1908:
	mr 4,27
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL1909:
.L1402:
.LBE7866:
.LBE7865:
.LBE7870:
.LBE7848:
.LBB7874:
.LBB7875:
	.loc 3 339 0
	lwz 28,456(31)
	.loc 3 338 0
	lis 9,.LC22@ha
	lwz 9,.LC22@l(9)
.LBE7875:
.LBE7874:
.LBB7902:
.LBB7903:
	.loc 13 120 0
	li 0,0
.LBE7903:
.LBE7902:
.LBB7905:
.LBB7896:
	.loc 3 339 0
	cmpwi 7,28,0
.LBE7896:
.LBE7905:
.LBB7906:
.LBB7904:
	.loc 13 120 0
	stw 0,204(31)
	stw 0,200(31)
.LVL1910:
.LBE7904:
.LBE7906:
.LBB7907:
.LBB7897:
	.loc 3 338 0
	stw 9,468(31)
	.loc 3 339 0
	beq- 7,.L1405
.LBE7897:
	.loc 6 4264 0
	lwz 27,460(31)
.LBB7898:
.LBB7876:
.LBB7877:
	.loc 3 53 0
	cmpwi 7,27,0
	beq- 7,.L1451
	.loc 3 54 0
	lbz 0,0(27)
	stw 9,72(1)
	cmpwi 7,0,42
	lfs 1,72(1)
	beq- 7,.L1475
.L1406:
.LVL1911:
.LBE7877:
.LBE7876:
.LBB7891:
.LBB7892:
	.loc 10 189 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL1912:
	mr 4,27
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL1913:
.L1405:
.LBE7892:
.LBE7891:
.LBE7898:
.LBE7907:
.LBB7908:
.LBB7909:
	.loc 3 621 0
	lwz 27,296(31)
.LBB7910:
.LBB7911:
	.loc 13 881 0
	li 0,0
	stw 0,320(31)
.LBE7911:
.LBE7910:
	.loc 3 621 0
	cmpwi 7,27,0
.LBB7913:
.LBB7912:
	.loc 13 881 0
	stw 0,316(31)
	stw 0,312(31)
	stw 0,308(31)
.LBE7912:
.LBE7913:
	.loc 3 621 0
	beq- 7,.L1408
.LBE7909:
	.loc 6 4264 0
	lwz 28,300(31)
.LBB7935:
.LBB7914:
.LBB7915:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L1454
	.loc 3 54 0
	lbz 0,0(28)
	cmpwi 7,0,42
	beq- 7,.L1476
.L1409:
.LVL1914:
.LBE7915:
.LBE7914:
.LBB7927:
.LBB7928:
	.loc 10 205 0
	li 4,2
	addi 3,31,308
	bl _ZNK6idVec48ToStringEi
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL1915:
.L1408:
.LBE7928:
.LBE7927:
.LBE7935:
.LBE7908:
.LBB7940:
.LBB7941:
	.loc 3 575 0
	lwz 27,360(31)
.LBE7941:
.LBE7940:
.LBB7970:
.LBB7936:
.LBB7931:
.LBB7929:
	.loc 3 574 0
	lwz 0,.LC0@l(29)
.LBE7929:
.LBE7931:
.LBE7936:
.LBE7970:
.LBB7971:
.LBB7963:
	.loc 3 575 0
	cmpwi 7,27,0
.LBE7963:
.LBE7971:
.LBB7972:
.LBB7937:
.LBB7932:
.LBB7930:
	.loc 3 574 0
	stw 0,372(31)
	stw 0,376(31)
	stw 0,380(31)
	stw 0,384(31)
.LBE7930:
.LBE7932:
.LBE7937:
.LBE7972:
.LBB7973:
.LBB7964:
	.loc 3 575 0
	beq- 7,.L1411
.LBE7964:
	.loc 6 4264 0
	lwz 28,364(31)
.LBB7965:
.LBB7942:
.LBB7943:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L1456
	.loc 3 54 0
	lbz 0,0(28)
	cmpwi 7,0,42
	beq- 7,.L1477
.L1412:
.LVL1916:
.LBE7943:
.LBE7942:
.LBB7955:
.LBB7956:
	.loc 10 205 0
	li 4,2
	addi 3,31,372
	bl _ZNK6idVec48ToStringEi
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL1917:
.L1411:
.LBE7956:
.LBE7955:
.LBE7965:
.LBE7973:
.LBB7974:
.LBB7975:
	.loc 3 575 0
	lwz 27,392(31)
.LBE7975:
.LBE7974:
.LBB8004:
.LBB7966:
.LBB7959:
.LBB7957:
	.loc 3 574 0
	lwz 0,.LC0@l(29)
.LBE7957:
.LBE7959:
.LBE7966:
.LBE8004:
.LBB8005:
.LBB7997:
	.loc 3 575 0
	cmpwi 7,27,0
.LBE7997:
.LBE8005:
.LBB8006:
.LBB7967:
.LBB7960:
.LBB7958:
	.loc 3 574 0
	stw 0,404(31)
	stw 0,408(31)
	stw 0,412(31)
	stw 0,416(31)
.LBE7958:
.LBE7960:
.LBE7967:
.LBE8006:
.LBB8007:
.LBB7998:
	.loc 3 575 0
	beq- 7,.L1414
.LBE7998:
	.loc 6 4264 0
	lwz 28,396(31)
.LBB7999:
.LBB7976:
.LBB7977:
	.loc 3 53 0
	cmpwi 7,28,0
	beq- 7,.L1458
	.loc 3 54 0
	lbz 0,0(28)
	cmpwi 7,0,42
	beq- 7,.L1478
.L1415:
.LVL1918:
.LBE7977:
.LBE7976:
.LBB7989:
.LBB7990:
	.loc 10 205 0
	li 4,2
	addi 3,31,404
	bl _ZNK6idVec48ToStringEi
	mr 4,28
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL1919:
.L1414:
.LBE7990:
.LBE7989:
.LBE7999:
.LBE8007:
.LBB8008:
.LBB8009:
	.loc 3 575 0
	lwz 28,328(31)
.LBE8009:
.LBE8008:
.LBB8032:
.LBB8000:
.LBB7993:
.LBB7991:
	.loc 3 574 0
	lwz 0,.LC0@l(29)
.LBE7991:
.LBE7993:
.LBE8000:
.LBE8032:
.LBB8033:
.LBB8027:
	.loc 3 575 0
	cmpwi 7,28,0
.LBE8027:
.LBE8033:
.LBB8034:
.LBB8001:
.LBB7994:
.LBB7992:
	.loc 3 574 0
	stw 0,340(31)
	stw 0,344(31)
	stw 0,348(31)
	stw 0,352(31)
.LBE7992:
.LBE7994:
.LBE8001:
.LBE8034:
.LBB8035:
.LBB8028:
	.loc 3 575 0
	beq- 7,.L1417
.LBE8028:
	.loc 6 4264 0
	lwz 29,332(31)
.LBB8029:
.LBB8010:
.LBB8011:
	.loc 3 53 0
	cmpwi 7,29,0
	beq- 7,.L1460
	.loc 3 54 0
	lbz 0,0(29)
	cmpwi 7,0,42
	beq- 7,.L1479
.L1418:
.LVL1920:
.LBE8011:
.LBE8010:
.LBB8023:
.LBB8024:
	.loc 10 205 0
	li 4,2
	addi 3,31,340
	bl _ZNK6idVec48ToStringEi
	mr 4,29
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL1921:
.L1417:
.LBE8024:
.LBE8023:
.LBE8029:
.LBE8035:
.LBB8036:
.LBB8037:
	.loc 3 621 0
	lwz 28,424(31)
.LBB8038:
.LBB8039:
	.loc 13 881 0
	li 0,0
	stw 0,448(31)
.LBE8039:
.LBE8038:
	.loc 3 621 0
	cmpwi 7,28,0
.LBB8041:
.LBB8040:
	.loc 13 881 0
	stw 0,444(31)
	stw 0,440(31)
	stw 0,436(31)
.LBE8040:
.LBE8041:
	.loc 3 621 0
	beq- 7,.L1420
.LBE8037:
	.loc 6 4264 0
	lwz 29,428(31)
.LBB8059:
.LBB8042:
.LBB8043:
	.loc 3 53 0
	cmpwi 7,29,0
	beq- 7,.L1462
	.loc 3 54 0
	lbz 0,0(29)
	cmpwi 7,0,42
	beq- 7,.L1480
.L1421:
.LVL1922:
.LBE8043:
.LBE8042:
.LBB8055:
.LBB8056:
	.loc 10 205 0
	li 4,2
	addi 3,31,436
	bl _ZNK6idVec48ToStringEi
	mr 4,29
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LEHE77:
.LVL1923:
.L1420:
.LBE8056:
.LBE8055:
.LBE8059:
.LBE8036:
.LBB8062:
.LBB8063:
.LBB8064:
.LBB8065:
.LBB8066:
.LBB8067:
	.loc 4 350 0
	lwz 9,516(31)
.LBE8067:
.LBE8066:
.LBE8065:
.LBE8064:
.LBE8063:
.LBE8062:
.LBB8101:
.LBB8102:
.LBB8103:
.LBB8104:
	.loc 4 415 0
	lbz 0,.LC4@l(30)
.LBE8104:
.LBE8103:
.LBE8102:
.LBE8101:
.LBB8110:
.LBB8095:
.LBB8077:
.LBB8074:
.LBB8071:
.LBB8068:
	.loc 4 350 0
	cmpwi 7,9,0
.LBE8068:
.LBE8071:
.LBE8074:
.LBE8077:
.LBE8095:
.LBE8110:
.LBB8111:
.LBB8109:
.LBB8107:
.LBB8105:
	.loc 4 357 0
	li 9,20
	stw 9,48(1)
	.loc 4 358 0
	addi 9,1,52
	.loc 4 415 0
	stb 0,52(1)
.LBE8105:
.LBE8107:
	.loc 4 416 0
	li 0,0
.LBB8108:
.LBB8106:
	.loc 4 358 0
	stw 9,44(1)
.LVL1924:
.LBE8106:
.LBE8108:
	.loc 4 416 0
	stw 0,40(1)
.LVL1925:
.LBE8109:
.LBE8111:
.LBB8112:
.LBB8096:
.LBB8078:
.LBB8075:
.LBB8072:
.LBB8069:
	.loc 4 350 0
	ble- 7,.L1481
.L1423:
.LBE8069:
.LBE8072:
	.loc 4 536 0
	lwz 9,512(31)
	li 0,0
	stb 0,0(9)
	.loc 4 537 0
	li 0,0
	stw 0,508(31)
.LBE8075:
.LBE8078:
	.loc 3 178 0
	lwz 29,496(31)
	cmpwi 7,29,0
	beq- 7,.L1424
.LBE8096:
	.loc 6 4264 0
	lwz 4,500(31)
.LBB8097:
.LBB8079:
.LBB8080:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L1464
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L1482
.L1425:
.LVL1926:
.LBE8080:
.LBE8079:
	.loc 3 179 0
	lwz 5,512(31)
	mr 3,29
.LEHB78:
	bl _ZN6idDict3SetEPKcS1_
.LEHE78:
.LVL1927:
.L1424:
.LBE8097:
.LBE8112:
.LBB8113:
.LBB8114:
.LBB8115:
	.loc 4 501 0
	addi 3,1,40
.LEHB79:
	bl _ZN5idStr8FreeDataEv
.LEHE79:
.LBE8115:
.LBE8114:
.LBE8113:
.LBB8116:
.LBB8117:
.LBB8118:
.LBB8119:
.LBB8120:
.LBB8121:
	.loc 4 350 0
	lwz 0,596(31)
.LBE8121:
.LBE8120:
.LBE8119:
.LBE8118:
.LBE8117:
.LBE8116:
.LBB8154:
.LBB8155:
.LBB8156:
.LBB8157:
	.loc 4 357 0
	li 11,20
	.loc 4 415 0
	lbz 9,.LC4@l(30)
.LBE8157:
.LBE8156:
.LBE8155:
.LBE8154:
.LBB8167:
.LBB8147:
.LBB8131:
.LBB8128:
.LBB8125:
.LBB8122:
	.loc 4 350 0
	cmpwi 7,0,0
.LBE8122:
.LBE8125:
.LBE8128:
.LBE8131:
.LBE8147:
.LBE8167:
.LBB8168:
.LBB8164:
.LBB8161:
.LBB8158:
	.loc 4 357 0
	stw 11,16(1)
.LBE8158:
.LBE8161:
.LBE8164:
.LBE8168:
	.loc 6 4215 0
	li 0,0
.LBB8169:
.LBB8165:
.LBB8162:
.LBB8159:
	.loc 4 358 0
	addi 11,1,20
.LBE8159:
.LBE8162:
.LBE8165:
.LBE8169:
	.loc 6 4215 0
	stw 0,672(31)
.LVL1928:
.LBB8170:
.LBB8166:
.LBB8163:
.LBB8160:
	.loc 4 358 0
	stw 11,12(1)
.LVL1929:
	.loc 4 415 0
	stb 9,20(1)
.LBE8160:
.LBE8163:
	.loc 4 416 0
	stw 0,8(1)
.LVL1930:
.LBE8166:
.LBE8170:
.LBB8171:
.LBB8148:
.LBB8132:
.LBB8129:
.LBB8126:
.LBB8123:
	.loc 4 350 0
	ble- 7,.L1483
.L1428:
.LBE8123:
.LBE8126:
	.loc 4 536 0
	lwz 9,592(31)
	li 0,0
	stb 0,0(9)
	.loc 4 537 0
	li 0,0
	stw 0,588(31)
.LBE8129:
.LBE8132:
	.loc 3 740 0
	lwz 29,544(31)
	cmpwi 7,29,0
	beq- 7,.L1429
.LBE8148:
	.loc 6 4264 0
	lwz 4,548(31)
.LBB8149:
.LBB8133:
.LBB8134:
	.loc 3 53 0
	cmpwi 7,4,0
	beq- 7,.L1466
	.loc 3 54 0
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L1484
.L1430:
.LVL1931:
.LBE8134:
.LBE8133:
	.loc 3 741 0
	lwz 5,592(31)
	mr 3,29
.LEHB80:
	bl _ZN6idDict3SetEPKcS1_
.LVL1932:
.L1429:
	.loc 3 743 0
	lwz 0,620(31)
	cmpwi 7,0,0
	beq- 7,.L1432
.LVL1933:
.LBB8142:
.LBB8143:
	.loc 4 653 0
	lwz 3,592(31)
	la 4,.LC4@l(30)
	bl _ZN5idStr3CmpEPKcS1_
.LEHE80:
.LBE8143:
.LBE8142:
	.loc 3 744 0
	cmpwi 0,3,0
	bne- 0,.L1433
	.loc 3 745 0
	lwz 9,620(31)
	stw 3,0(9)
.LVL1934:
.L1432:
.LBE8149:
.LBE8171:
.LBB8172:
.LBB8173:
.LBB8174:
	.loc 4 501 0
	addi 3,1,8
.LEHB81:
	bl _ZN5idStr8FreeDataEv
.LEHE81:
.LBE8174:
.LBE8173:
.LBE8172:
	.loc 6 4217 0
	lwz 0,108(1)
	lwz 27,84(1)
	mtlr 0
	lwz 28,88(1)
	lwz 29,92(1)
	lwz 30,96(1)
	lwz 31,100(1)
.LVL1935:
	addi 1,1,104
	.cfi_remember_state
.LCFI371:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1936:
.L1433:
.LCFI372:
	.cfi_restore_state
.LBB8177:
.LBB8150:
	.loc 3 747 0
	lis 9,declManager@ha
	lwz 4,592(31)
	lwz 3,declManager@l(9)
.LVL1937:
	li 5,1
	li 6,0
	lwz 31,620(31)
.LVL1938:
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
.LEHB82:
	bctrl
.LEHE82:
	stw 3,0(31)
.LVL1939:
.LBE8150:
.LBE8177:
.LBB8178:
.LBB8176:
.LBB8175:
	.loc 4 501 0
	addi 3,1,8
.LEHB83:
	bl _ZN5idStr8FreeDataEv
.LEHE83:
.LBE8175:
.LBE8176:
.LBE8178:
	.loc 6 4217 0
	lwz 0,108(1)
	lwz 27,84(1)
	mtlr 0
	lwz 28,88(1)
	lwz 29,92(1)
	lwz 30,96(1)
	lwz 31,100(1)
	addi 1,1,104
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI373:
	.cfi_def_cfa_offset 0
	blr
.LVL1940:
.L1483:
.LCFI374:
	.cfi_restore_state
.LBB8179:
.LBB8151:
.LBB8144:
.LBB8130:
.LBB8127:
.LBB8124:
	.loc 4 351 0
	addi 3,31,588
	li 4,1
	li 5,0
.LEHB84:
	bl _ZN5idStr10ReAllocateEib
.LEHE84:
	b .L1428
.LVL1941:
.L1481:
.LBE8124:
.LBE8127:
.LBE8130:
.LBE8144:
.LBE8151:
.LBE8179:
.LBB8180:
.LBB8098:
.LBB8092:
.LBB8076:
.LBB8073:
.LBB8070:
	addi 3,31,508
	li 4,1
	li 5,0
.LEHB85:
	bl _ZN5idStr10ReAllocateEib
.LEHE85:
	b .L1423
.LVL1942:
.L1476:
.LBE8070:
.LBE8073:
.LBE8076:
.LBE8092:
.LBE8098:
.LBE8180:
.LBB8181:
.LBB7938:
.LBB7933:
.LBB7925:
.LBB7916:
.LBB7917:
.LBB7918:
.LBB7919:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
.LEHB86:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1943:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L1485
.LVL1944:
.L1454:
.LBE7919:
.LBE7918:
.LBE7917:
.LBE7916:
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L1409
.LVL1945:
.L1477:
.LBE7925:
.LBE7933:
.LBE7938:
.LBE8181:
.LBB8182:
.LBB7968:
.LBB7961:
.LBB7953:
.LBB7944:
.LBB7945:
.LBB7946:
.LBB7947:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1946:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L1486
.LVL1947:
.L1456:
.LBE7947:
.LBE7946:
.LBE7945:
.LBE7944:
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L1412
.LVL1948:
.L1478:
.LBE7953:
.LBE7961:
.LBE7968:
.LBE8182:
.LBB8183:
.LBB8002:
.LBB7995:
.LBB7987:
.LBB7978:
.LBB7979:
.LBB7980:
.LBB7981:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1949:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L1487
.LVL1950:
.L1458:
.LBE7981:
.LBE7980:
.LBE7979:
.LBE7978:
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L1415
.LVL1951:
.L1479:
.LBE7987:
.LBE7995:
.LBE8002:
.LBE8183:
.LBB8184:
.LBB8030:
.LBB8025:
.LBB8021:
.LBB8012:
.LBB8013:
.LBB8014:
.LBB8015:
	.loc 10 241 0
	mr 3,28
	addi 4,29,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1952:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L1488
.LVL1953:
.L1460:
.LBE8015:
.LBE8014:
.LBE8013:
.LBE8012:
	.loc 3 59 0
	la 29,.LC4@l(30)
	b .L1418
.LVL1954:
.L1480:
.LBE8021:
.LBE8025:
.LBE8030:
.LBE8184:
.LBB8185:
.LBB8060:
.LBB8057:
.LBB8053:
.LBB8044:
.LBB8045:
.LBB8046:
.LBB8047:
	.loc 10 241 0
	mr 3,28
	addi 4,29,1
	bl _ZNK6idDict7FindKeyEPKc
.LEHE86:
.LVL1955:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L1489
.LVL1956:
.L1462:
.LBE8047:
.LBE8046:
.LBE8045:
.LBE8044:
	.loc 3 59 0
	la 29,.LC4@l(30)
	b .L1421
.LVL1957:
.L1482:
.LBE8053:
.LBE8057:
.LBE8060:
.LBE8185:
.LBB8186:
.LBB8099:
.LBB8093:
.LBB8090:
.LBB8081:
.LBB8082:
.LBB8083:
.LBB8084:
	.loc 10 241 0
	mr 3,29
	addi 4,4,1
.LVL1958:
.LEHB87:
	bl _ZNK6idDict7FindKeyEPKc
.LEHE87:
.LVL1959:
	.loc 10 242 0
	cmpwi 0,3,0
	bne+ 0,.L1490
.LVL1960:
.L1464:
.LBE8084:
.LBE8083:
.LBE8082:
.LBE8081:
	.loc 3 59 0
	la 4,.LC4@l(30)
	b .L1425
.LVL1961:
.L1439:
.LBE8090:
.LBE8093:
.LBE8099:
.LBE8186:
.LBB8187:
.LBB7786:
.LBB7779:
.LBB7774:
	.loc 3 53 0
	li 4,0
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L1394
.LVL1962:
.L1451:
.LBE7774:
.LBE7779:
.LBE7786:
.LBE8187:
.LBB8188:
.LBB7899:
.LBB7893:
.LBB7888:
	.loc 3 53 0
	stw 9,72(1)
	.loc 3 59 0
	la 27,.LC4@l(30)
	.loc 3 53 0
	lfs 1,72(1)
	b .L1406
.LVL1963:
.L1445:
.LBE7888:
.LBE7893:
.LBE7899:
.LBE8188:
.LBB8189:
.LBB7843:
.LBB7837:
.LBB7832:
	li 4,0
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L1400
.LVL1964:
.L1448:
.LBE7832:
.LBE7837:
.LBE7843:
.LBE8189:
.LBB8190:
.LBB7871:
.LBB7867:
.LBB7862:
	.loc 3 53 0
	stw 0,72(1)
	.loc 3 59 0
	la 27,.LC4@l(30)
	.loc 3 53 0
	lfs 1,72(1)
	b .L1403
.LVL1965:
.L1442:
.LBE7862:
.LBE7867:
.LBE7871:
.LBE8190:
.LBB8191:
.LBB7815:
.LBB7811:
.LBB7806:
	li 4,1
	.loc 3 59 0
	la 28,.LC4@l(30)
	b .L1397
.LVL1966:
.L1466:
.LBE7806:
.LBE7811:
.LBE7815:
.LBE8191:
.LBB8192:
.LBB8152:
.LBB8145:
.LBB8140:
	la 4,.LC4@l(30)
	b .L1430
.LVL1967:
.L1473:
.LBE8140:
.LBE8145:
.LBE8152:
.LBE8192:
.LBB8193:
.LBB7844:
.LBB7838:
.LBB7833:
.LBB7822:
.LBB7823:
.LBB7824:
.LBB7825:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
.LEHB88:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1968:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1447
.LVL1969:
.LBB7826:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,257(31)
	lwz 28,4(9)
.LVL1970:
	b .L1400
.LVL1971:
.L1474:
.LBE7826:
.LBE7825:
.LBE7824:
.LBE7823:
.LBE7822:
.LBE7833:
.LBE7838:
.LBE7844:
.LBE8193:
.LBB8194:
.LBB7872:
.LBB7868:
.LBB7863:
.LBB7852:
.LBB7853:
.LBB7854:
.LBB7855:
	.loc 10 241 0
	mr 3,28
	addi 4,27,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1972:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1450
.LVL1973:
.LBB7856:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,488(31)
	lwz 27,4(9)
.LVL1974:
	b .L1403
.LVL1975:
.L1475:
.LBE7856:
.LBE7855:
.LBE7854:
.LBE7853:
.LBE7852:
.LBE7863:
.LBE7868:
.LBE7872:
.LBE8194:
.LBB8195:
.LBB7900:
.LBB7894:
.LBB7889:
.LBB7878:
.LBB7879:
.LBB7880:
.LBB7881:
	.loc 10 241 0
	mr 3,28
	addi 4,27,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1976:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1453
.LVL1977:
.LBB7882:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,468(31)
	lwz 27,4(9)
.LVL1978:
	b .L1406
.LVL1979:
.L1471:
.LBE7882:
.LBE7881:
.LBE7880:
.LBE7879:
.LBE7878:
.LBE7889:
.LBE7894:
.LBE7900:
.LBE8195:
.LBB8196:
.LBB7787:
.LBB7780:
.LBB7775:
.LBB7764:
.LBB7765:
.LBB7766:
.LBB7767:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL1980:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1441
.LVL1981:
.LBB7768:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,225(31)
	lwz 28,4(9)
.LVL1982:
	b .L1394
.LVL1983:
.L1472:
.LBE7768:
.LBE7767:
.LBE7766:
.LBE7765:
.LBE7764:
.LBE7775:
.LBE7780:
.LBE7787:
.LBE8196:
.LBB8197:
.LBB7816:
.LBB7812:
.LBB7807:
.LBB7796:
.LBB7797:
.LBB7798:
.LBB7799:
	.loc 10 241 0
	mr 3,27
	addi 4,28,1
	bl _ZNK6idDict7FindKeyEPKc
.LEHE88:
.LVL1984:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1444
.LVL1985:
.LBB7800:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,241(31)
	lwz 28,4(9)
.LVL1986:
	b .L1397
.LVL1987:
.L1489:
.LBE7800:
.LBE7799:
.LBE7798:
.LBE7797:
.LBE7796:
.LBE7807:
.LBE7812:
.LBE7816:
.LBE8197:
.LBB8198:
.LBB8061:
.LBB8058:
.LBB8054:
.LBB8052:
.LBB8051:
.LBB8050:
.LBB8049:
.LBB8048:
	lwz 9,4(3)
	lwz 29,4(9)
.LVL1988:
	b .L1421
.LVL1989:
.L1490:
.LBE8048:
.LBE8049:
.LBE8050:
.LBE8051:
.LBE8052:
.LBE8054:
.LBE8058:
.LBE8061:
.LBE8198:
.LBB8199:
.LBB8100:
.LBB8094:
.LBB8091:
.LBB8089:
.LBB8088:
.LBB8087:
.LBB8086:
.LBB8085:
	lwz 9,4(3)
	lwz 4,4(9)
	b .L1425
.LVL1990:
.L1486:
.LBE8085:
.LBE8086:
.LBE8087:
.LBE8088:
.LBE8089:
.LBE8091:
.LBE8094:
.LBE8100:
.LBE8199:
.LBB8200:
.LBB7969:
.LBB7962:
.LBB7954:
.LBB7952:
.LBB7951:
.LBB7950:
.LBB7949:
.LBB7948:
	lwz 9,4(3)
	lwz 28,4(9)
.LVL1991:
	b .L1412
.LVL1992:
.L1485:
.LBE7948:
.LBE7949:
.LBE7950:
.LBE7951:
.LBE7952:
.LBE7954:
.LBE7962:
.LBE7969:
.LBE8200:
.LBB8201:
.LBB7939:
.LBB7934:
.LBB7926:
.LBB7924:
.LBB7923:
.LBB7922:
.LBB7921:
.LBB7920:
	lwz 9,4(3)
	lwz 28,4(9)
.LVL1993:
	b .L1409
.LVL1994:
.L1488:
.LBE7920:
.LBE7921:
.LBE7922:
.LBE7923:
.LBE7924:
.LBE7926:
.LBE7934:
.LBE7939:
.LBE8201:
.LBB8202:
.LBB8031:
.LBB8026:
.LBB8022:
.LBB8020:
.LBB8019:
.LBB8018:
.LBB8017:
.LBB8016:
	lwz 9,4(3)
	lwz 29,4(9)
.LVL1995:
	b .L1418
.LVL1996:
.L1487:
.LBE8016:
.LBE8017:
.LBE8018:
.LBE8019:
.LBE8020:
.LBE8022:
.LBE8026:
.LBE8031:
.LBE8202:
.LBB8203:
.LBB8003:
.LBB7996:
.LBB7988:
.LBB7986:
.LBB7985:
.LBB7984:
.LBB7983:
.LBB7982:
	lwz 9,4(3)
	lwz 28,4(9)
.LVL1997:
	b .L1415
.LVL1998:
.L1484:
.LBE7982:
.LBE7983:
.LBE7984:
.LBE7985:
.LBE7986:
.LBE7988:
.LBE7996:
.LBE8003:
.LBE8203:
.LBB8204:
.LBB8153:
.LBB8146:
.LBB8141:
.LBB8135:
.LBB8136:
.LBB8137:
.LBB8138:
	.loc 10 241 0
	mr 3,29
	addi 4,4,1
.LVL1999:
.LEHB89:
	bl _ZNK6idDict7FindKeyEPKc
.LEHE89:
.LVL2000:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1466
.LVL2001:
.LBB8139:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L1430
.LVL2002:
.L1444:
.LBE8139:
.LBE8138:
.LBE8137:
.LBE8136:
.LBE8135:
.LBE8141:
.LBE8146:
.LBE8153:
.LBE8204:
.LBB8205:
.LBB7817:
.LBB7813:
.LBB7808:
.LBB7805:
.LBB7804:
.LBB7803:
.LBB7802:
	.loc 10 245 0
	la 28,.LC4@l(30)
.LVL2003:
.LBB7801:
	.loc 6 4264 0
	lbz 4,241(31)
	b .L1397
.LVL2004:
.L1450:
.LBE7801:
.LBE7802:
.LBE7803:
.LBE7804:
.LBE7805:
.LBE7808:
.LBE7813:
.LBE7817:
.LBE8205:
.LBB8206:
.LBB7873:
.LBB7869:
.LBB7864:
.LBB7861:
.LBB7860:
.LBB7859:
.LBB7858:
	.loc 10 245 0
	la 27,.LC4@l(30)
.LVL2005:
.LBB7857:
	.loc 6 4264 0
	lfs 1,488(31)
	b .L1403
.LVL2006:
.L1447:
.LBE7857:
.LBE7858:
.LBE7859:
.LBE7860:
.LBE7861:
.LBE7864:
.LBE7869:
.LBE7873:
.LBE8206:
.LBB8207:
.LBB7845:
.LBB7839:
.LBB7834:
.LBB7831:
.LBB7830:
.LBB7829:
.LBB7828:
	.loc 10 245 0
	la 28,.LC4@l(30)
.LVL2007:
.LBB7827:
	.loc 6 4264 0
	lbz 4,257(31)
	b .L1400
.LVL2008:
.L1441:
.LBE7827:
.LBE7828:
.LBE7829:
.LBE7830:
.LBE7831:
.LBE7834:
.LBE7839:
.LBE7845:
.LBE8207:
.LBB8208:
.LBB7788:
.LBB7781:
.LBB7776:
.LBB7773:
.LBB7772:
.LBB7771:
.LBB7770:
	.loc 10 245 0
	la 28,.LC4@l(30)
.LVL2009:
.LBB7769:
	.loc 6 4264 0
	lbz 4,225(31)
	b .L1394
.LVL2010:
.L1453:
.LBE7769:
.LBE7770:
.LBE7771:
.LBE7772:
.LBE7773:
.LBE7776:
.LBE7781:
.LBE7788:
.LBE8208:
.LBB8209:
.LBB7901:
.LBB7895:
.LBB7890:
.LBB7887:
.LBB7886:
.LBB7885:
.LBB7884:
	.loc 10 245 0
	la 27,.LC4@l(30)
.LVL2011:
.LBB7883:
	.loc 6 4264 0
	lfs 1,468(31)
	b .L1406
.LVL2012:
.L1468:
	mr 31,3
.LVL2013:
.LBE7883:
.LBE7884:
.LBE7885:
.LBE7886:
.LBE7887:
.LBE7890:
.LBE7895:
.LBE7901:
.LBE8209:
.LBB8210:
.LBB8211:
.LBB8212:
	.loc 4 501 0
	addi 3,1,40
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB90:
	bl _Unwind_Resume
.LEHE90:
.LVL2014:
.L1469:
	mr 31,3
.LVL2015:
.LBE8212:
.LBE8211:
.LBE8210:
.LBB8213:
.LBB8214:
.LBB8215:
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB91:
	bl _Unwind_Resume
.LEHE91:
.LBE8215:
.LBE8214:
.LBE8213:
	.cfi_endproc
.LFE3009:
	.section	.gcc_except_table
.LLSDA3009:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3009-.LLSDACSB3009
.LLSDACSB3009:
	.uleb128 .LEHB77-.LFB3009
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB3009
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1468-.LFB3009
	.uleb128 0
	.uleb128 .LEHB79-.LFB3009
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB80-.LFB3009
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1469-.LFB3009
	.uleb128 0
	.uleb128 .LEHB81-.LFB3009
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB3009
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1469-.LFB3009
	.uleb128 0
	.uleb128 .LEHB83-.LFB3009
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB84-.LFB3009
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1469-.LFB3009
	.uleb128 0
	.uleb128 .LEHB85-.LFB3009
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1468-.LFB3009
	.uleb128 0
	.uleb128 .LEHB86-.LFB3009
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB87-.LFB3009
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1468-.LFB3009
	.uleb128 0
	.uleb128 .LEHB88-.LFB3009
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB3009
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1469-.LFB3009
	.uleb128 0
	.uleb128 .LEHB90-.LFB3009
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB3009
	.uleb128 .LEHE91-.LEHB91
	.uleb128 0
	.uleb128 0
.LLSDACSE3009:
	.section	".text"
	.size	_ZN8idWindow11SetDefaultsEv, .-_ZN8idWindow11SetDefaultsEv
	.section	.text._ZN6idListI9drawWin_tE5ClearEv,"axG",@progbits,_ZN6idListI9drawWin_tE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI9drawWin_tE5ClearEv
	.type	_ZN6idListI9drawWin_tE5ClearEv, @function
_ZN6idListI9drawWin_tE5ClearEv:
.LFB3272:
	.loc 16 192 0
	.cfi_startproc
.LVL2016:
	mflr 0
	stwu 1,-16(1)
.LCFI375:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2017:
	cmpwi 7,3,0
	beq- 7,.L1492
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1492:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2018:
	mtlr 0
	addi 1,1,16
.LCFI376:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3272:
	.size	_ZN6idListI9drawWin_tE5ClearEv, .-_ZN6idListI9drawWin_tE5ClearEv
	.section	.text._ZN6idListIP15idTimeLineEventE5ClearEv,"axG",@progbits,_ZN6idListIP15idTimeLineEventE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP15idTimeLineEventE5ClearEv
	.type	_ZN6idListIP15idTimeLineEventE5ClearEv, @function
_ZN6idListIP15idTimeLineEventE5ClearEv:
.LFB3284:
	.loc 16 192 0
	.cfi_startproc
.LVL2019:
	mflr 0
	stwu 1,-16(1)
.LCFI377:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2020:
	cmpwi 7,3,0
	beq- 7,.L1494
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1494:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2021:
	mtlr 0
	addi 1,1,16
.LCFI378:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3284:
	.size	_ZN6idListIP15idTimeLineEventE5ClearEv, .-_ZN6idListIP15idTimeLineEventE5ClearEv
	.section	.text._ZN6idListI16idTransitionDataE5ClearEv,"axG",@progbits,_ZN6idListI16idTransitionDataE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI16idTransitionDataE5ClearEv
	.type	_ZN6idListI16idTransitionDataE5ClearEv, @function
_ZN6idListI16idTransitionDataE5ClearEv:
.LFB3285:
	.loc 16 192 0
	.cfi_startproc
.LVL2022:
	mflr 0
	stwu 1,-16(1)
.LCFI379:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2023:
	cmpwi 7,3,0
	beq- 7,.L1496
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1496:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2024:
	mtlr 0
	addi 1,1,16
.LCFI380:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3285:
	.size	_ZN6idListI16idTransitionDataE5ClearEv, .-_ZN6idListI16idTransitionDataE5ClearEv
	.section	.text._ZN6idListIfE5ClearEv,"axG",@progbits,_ZN6idListIfE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIfE5ClearEv
	.type	_ZN6idListIfE5ClearEv, @function
_ZN6idListIfE5ClearEv:
.LFB3303:
	.loc 16 192 0
	.cfi_startproc
.LVL2025:
	mflr 0
	stwu 1,-16(1)
.LCFI381:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2026:
	cmpwi 7,3,0
	beq- 7,.L1498
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1498:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2027:
	mtlr 0
	addi 1,1,16
.LCFI382:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3303:
	.size	_ZN6idListIfE5ClearEv, .-_ZN6idListIfE5ClearEv
	.section	.text._ZN6idListI8wexpOp_tE5ClearEv,"axG",@progbits,_ZN6idListI8wexpOp_tE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI8wexpOp_tE5ClearEv
	.type	_ZN6idListI8wexpOp_tE5ClearEv, @function
_ZN6idListI8wexpOp_tE5ClearEv:
.LFB3304:
	.loc 16 192 0
	.cfi_startproc
.LVL2028:
	mflr 0
	stwu 1,-16(1)
.LCFI383:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2029:
	cmpwi 7,3,0
	beq- 7,.L1500
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1500:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2030:
	mtlr 0
	addi 1,1,16
.LCFI384:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3304:
	.size	_ZN6idListI8wexpOp_tE5ClearEv, .-_ZN6idListI8wexpOp_tE5ClearEv
	.section	.text._ZN6idListIP10idRegisterE5ClearEv,"axG",@progbits,_ZN6idListIP10idRegisterE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP10idRegisterE5ClearEv
	.type	_ZN6idListIP10idRegisterE5ClearEv, @function
_ZN6idListIP10idRegisterE5ClearEv:
.LFB3339:
	.loc 16 192 0
	.cfi_startproc
.LVL2031:
	mflr 0
	stwu 1,-16(1)
.LCFI385:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2032:
	cmpwi 7,3,0
	beq- 7,.L1502
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1502:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2033:
	mtlr 0
	addi 1,1,16
.LCFI386:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3339:
	.size	_ZN6idListIP10idRegisterE5ClearEv, .-_ZN6idListIP10idRegisterE5ClearEv
	.section	.text._ZN14idRegisterListD2Ev,"axG",@progbits,_ZN14idRegisterListD5Ev,comdat
	.align 2
	.weak	_ZN14idRegisterListD2Ev
	.type	_ZN14idRegisterListD2Ev, @function
_ZN14idRegisterListD2Ev:
.LFB2587:
	.loc 15 108 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2587
.LVL2034:
	stwu 1,-16(1)
.LCFI387:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL2035:
.LBB8238:
.LBB8239:
.LBB8240:
.LBB8241:
	.file 22 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/containers/HashIndex.h"
	.loc 22 130 0
	addi 3,3,16
.LVL2036:
.LBE8241:
.LBE8240:
.LBE8239:
.LBE8238:
	.loc 15 108 0
	stw 0,20(1)
	stw 30,8(1)
.LEHB92:
.LBB8252:
.LBB8244:
.LBB8243:
.LBB8242:
	.loc 22 130 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN11idHashIndex4FreeEv
.LEHE92:
.LVL2037:
.LBE8242:
.LBE8243:
.LBE8244:
.LBB8245:
.LBB8246:
.LBB8247:
.LBB8248:
	.loc 16 193 0 discriminator 1
	lwz 3,12(31)
	cmpwi 7,3,0
	beq- 7,.L1505
	.loc 16 194 0
	bl _ZdaPv
.LVL2038:
.L1505:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
.LBE8248:
.LBE8247:
.LBE8246:
.LBE8245:
.LBE8252:
	.loc 15 109 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL2039:
	addi 1,1,16
	.cfi_remember_state
.LCFI388:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2040:
.L1510:
.LCFI389:
	.cfi_restore_state
	mr 30,3
.LVL2041:
.LBB8253:
.LBB8249:
.LBB8250:
.LBB8251:
	.loc 16 181 0
	mr 3,31
	bl _ZN6idListIP10idRegisterE5ClearEv
	mr 3,30
.LEHB93:
	bl _Unwind_Resume
.LEHE93:
.LBE8251:
.LBE8250:
.LBE8249:
.LBE8253:
	.cfi_endproc
.LFE2587:
	.section	.gcc_except_table
.LLSDA2587:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2587-.LLSDACSB2587
.LLSDACSB2587:
	.uleb128 .LEHB92-.LFB2587
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1510-.LFB2587
	.uleb128 0
	.uleb128 .LEHB93-.LFB2587
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
.LLSDACSE2587:
	.section	.text._ZN14idRegisterListD2Ev,"axG",@progbits,_ZN14idRegisterListD5Ev,comdat
	.size	_ZN14idRegisterListD2Ev, .-_ZN14idRegisterListD2Ev
	.section	.text._ZN6idListIP11idGuiScriptE5ClearEv,"axG",@progbits,_ZN6idListIP11idGuiScriptE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP11idGuiScriptE5ClearEv
	.type	_ZN6idListIP11idGuiScriptE5ClearEv, @function
_ZN6idListIP11idGuiScriptE5ClearEv:
.LFB3341:
	.loc 16 192 0
	.cfi_startproc
.LVL2042:
	mflr 0
	stwu 1,-16(1)
.LCFI390:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2043:
	cmpwi 7,3,0
	beq- 7,.L1512
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1512:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2044:
	mtlr 0
	addi 1,1,16
.LCFI391:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3341:
	.size	_ZN6idListIP11idGuiScriptE5ClearEv, .-_ZN6idListIP11idGuiScriptE5ClearEv
	.section	.text._ZN15idGuiScriptListD2Ev,"axG",@progbits,_ZN15idGuiScriptListD5Ev,comdat
	.align 2
	.weak	_ZN15idGuiScriptListD2Ev
	.type	_ZN15idGuiScriptListD2Ev, @function
_ZN15idGuiScriptListD2Ev:
.LFB2793:
	.loc 9 113 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2793
.LVL2045:
	mflr 0
	stwu 1,-32(1)
.LCFI392:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 28,16(1)
	mr 28,3
	.cfi_offset 28, -16
.LVL2046:
	stw 0,36(1)
	stw 27,12(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
.LBB8276:
.LBB8277:
.LBB8278:
	.loc 16 218 0
	lwz 0,0(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L1514
	li 31,0
	.loc 16 220 0
	li 27,0
.LVL2047:
.L1516:
	.loc 16 219 0
	lwz 9,12(28)
	.loc 9 113 0
	slwi 30,31,2
	.loc 16 219 0
	lwzx 29,9,30
	add 9,9,30
	cmpwi 7,29,0
	beq- 7,.L1515
	mr 3,29
.LEHB94:
	bl _ZN11idGuiScriptD1Ev
.LEHE94:
	mr 3,29
	bl _ZN11idGuiScriptdlEPv
	lwz 9,12(28)
	add 9,9,30
.L1515:
	.loc 16 220 0
	stw 27,0(9)
	.loc 16 218 0
	addi 31,31,1
.LVL2048:
	lwz 0,0(28)
	cmpw 7,31,0
	blt+ 7,.L1516
.LVL2049:
.L1514:
.LBB8279:
.LBB8280:
	.loc 16 193 0
	lwz 3,12(28)
	cmpwi 7,3,0
	beq- 7,.L1517
	.loc 16 194 0
	bl _ZdaPv
.L1517:
.LVL2050:
.LBE8280:
.LBE8279:
.LBE8278:
.LBE8277:
.LBB8281:
.LBB8282:
.LBB8283:
.LBB8284:
	.loc 16 197 0
	li 0,0
	stw 0,12(28)
	.loc 16 198 0
	stw 0,0(28)
	.loc 16 199 0
	stw 0,4(28)
.LBE8284:
.LBE8283:
.LBE8282:
.LBE8281:
.LBE8276:
	.loc 9 113 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL2051:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI393:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL2052:
.L1522:
.LCFI394:
	.cfi_restore_state
	mr 31,3
.LVL2053:
.LBB8288:
.LBB8285:
.LBB8286:
.LBB8287:
	.loc 16 181 0
	mr 3,28
	bl _ZN6idListIP11idGuiScriptE5ClearEv
	mr 3,31
.LEHB95:
	bl _Unwind_Resume
.LEHE95:
.LBE8287:
.LBE8286:
.LBE8285:
.LBE8288:
	.cfi_endproc
.LFE2793:
	.section	.gcc_except_table
.LLSDA2793:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2793-.LLSDACSB2793
.LLSDACSB2793:
	.uleb128 .LEHB94-.LFB2793
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1522-.LFB2793
	.uleb128 0
	.uleb128 .LEHB95-.LFB2793
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
.LLSDACSE2793:
	.section	.text._ZN15idGuiScriptListD2Ev,"axG",@progbits,_ZN15idGuiScriptListD5Ev,comdat
	.size	_ZN15idGuiScriptListD2Ev, .-_ZN15idGuiScriptListD2Ev
	.section	.text._ZN15idGuiScriptListC2Ev,"axG",@progbits,_ZN15idGuiScriptListC5Ev,comdat
	.align 2
	.weak	_ZN15idGuiScriptListC2Ev
	.type	_ZN15idGuiScriptListC2Ev, @function
_ZN15idGuiScriptListC2Ev:
.LFB2790:
	.loc 9 112 0
	.cfi_startproc
.LVL2054:
.LBB8312:
.LBB8313:
.LBB8314:
	.loc 16 197 0
	li 0,0
.LBE8314:
.LBE8313:
.LBE8312:
	.loc 9 112 0
.LBB8317:
.LBB8316:
.LBB8315:
	.loc 16 197 0
	stw 0,12(3)
	.loc 16 198 0
	stw 0,0(3)
	.loc 16 199 0
	stw 0,4(3)
.LVL2055:
.LBE8315:
.LBE8316:
.LBE8317:
.LBB8318:
.LBB8319:
	.loc 16 317 0
	li 0,4
	stw 0,8(3)
.LBE8319:
.LBE8318:
	.loc 9 112 0
	blr
	.cfi_endproc
.LFE2790:
	.size	_ZN15idGuiScriptListC2Ev, .-_ZN15idGuiScriptListC2Ev
	.section	.text._ZN6idListIP12rvNamedEventE14DeleteContentsEb,"axG",@progbits,_ZN6idListIP12rvNamedEventE14DeleteContentsEb,comdat
	.align 2
	.weak	_ZN6idListIP12rvNamedEventE14DeleteContentsEb
	.type	_ZN6idListIP12rvNamedEventE14DeleteContentsEb, @function
_ZN6idListIP12rvNamedEventE14DeleteContentsEb:
.LFB3271:
	.loc 16 215 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3271
.LVL2056:
	mflr 0
	stwu 1,-48(1)
.LCFI395:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 22,8(1)
	mr 22,4
	.cfi_offset 22, -40
	stw 25,20(1)
	mr 25,3
	.cfi_offset 25, -28
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
.LBB8359:
	.loc 16 218 0
	lwz 0,0(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L1526
	li 24,0
.LBB8360:
.LBB8361:
.LBB8362:
.LBB8363:
.LBB8364:
.LBB8365:
.LBB8366:
.LBB8367:
.LBB8368:
.LBB8369:
	.loc 16 197 0
	li 27,0
.LVL2057:
.L1540:
.LBE8369:
.LBE8368:
.LBE8367:
.LBE8366:
.LBE8365:
.LBE8364:
.LBE8363:
.LBE8362:
.LBE8361:
.LBE8360:
	.loc 16 219 0
	lwz 9,12(25)
	.loc 16 215 0
	slwi 23,24,2
	.loc 16 219 0
	lwzx 26,9,23
	add 9,9,23
	cmpwi 7,26,0
	beq- 7,.L1527
.LVL2058:
.LBB8407:
.LBB8405:
.LBB8403:
	.loc 5 152 0
	lwz 28,32(26)
	cmpwi 7,28,0
	beq- 7,.L1528
.LVL2059:
.LBB8391:
.LBB8388:
.LBB8385:
.LBB8376:
.LBB8377:
	.loc 16 218 0
	lwz 0,0(28)
	cmpwi 7,0,0
	ble- 7,.L1529
	li 31,0
.LVL2060:
.L1531:
	.loc 16 219 0
	lwz 9,12(28)
	.loc 16 215 0
	slwi 30,31,2
	.loc 16 219 0
	lwzx 29,9,30
	add 9,9,30
	cmpwi 7,29,0
	beq- 7,.L1530
	mr 3,29
.LEHB96:
	bl _ZN11idGuiScriptD1Ev
.LEHE96:
	mr 3,29
	bl _ZN11idGuiScriptdlEPv
	lwz 9,12(28)
	add 9,9,30
.L1530:
	.loc 16 220 0
	stw 27,0(9)
	.loc 16 218 0
	addi 31,31,1
.LVL2061:
	lwz 0,0(28)
	cmpw 7,31,0
	blt+ 7,.L1531
.LVL2062:
.L1529:
.LBB8378:
.LBB8379:
	.loc 16 193 0
	lwz 3,12(28)
	cmpwi 7,3,0
	beq- 7,.L1532
	.loc 16 194 0
	bl _ZdaPv
.L1532:
.LVL2063:
.LBE8379:
.LBE8378:
.LBE8377:
.LBE8376:
.LBB8380:
.LBB8374:
.LBB8372:
.LBB8370:
	.loc 16 197 0
	stw 27,12(28)
.LBE8370:
.LBE8372:
.LBE8374:
.LBE8380:
.LBE8385:
.LBE8388:
.LBE8391:
	.loc 5 152 0
	mr 3,28
.LBB8392:
.LBB8389:
.LBB8386:
.LBB8381:
.LBB8375:
.LBB8373:
.LBB8371:
	.loc 16 198 0
	stw 27,0(28)
	.loc 16 199 0
	stw 27,4(28)
.LBE8371:
.LBE8373:
.LBE8375:
.LBE8381:
.LBE8386:
.LBE8389:
.LBE8392:
	.loc 5 152 0
	bl _ZdlPv
.LVL2064:
.L1528:
.LBB8393:
.LBB8394:
.LBB8395:
	.loc 4 501 0
	mr 3,26
.LEHB97:
	bl _ZN5idStr8FreeDataEv
.LEHE97:
.LBE8395:
.LBE8394:
.LBE8393:
.LBE8403:
.LBE8405:
.LBE8407:
	.loc 16 219 0
	mr 3,26
	bl _ZdlPv
	lwz 9,12(25)
	add 9,9,23
.LVL2065:
.L1527:
	.loc 16 220 0
	stw 27,0(9)
	.loc 16 218 0
	addi 24,24,1
.LVL2066:
	lwz 0,0(25)
	cmpw 7,0,24
	bgt+ 7,.L1540
.LVL2067:
.L1526:
	.loc 16 223 0
	cmpwi 7,22,0
	bne- 7,.L1547
.LVL2068:
.LBE8359:
.LBB8411:
.LBB8412:
.LBB8413:
	.loc 16 226 0
	lwz 5,4(25)
	li 4,0
	lwz 3,12(25)
	slwi 5,5,2
	bl memset
.LBE8413:
.LBE8412:
.LBE8411:
	.loc 16 228 0
	lwz 0,52(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
.LVL2069:
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI396:
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
	blr
.LVL2070:
.L1547:
.LCFI397:
	.cfi_restore_state
.LBB8414:
.LBB8408:
.LBB8409:
	.loc 16 193 0
	lwz 3,12(25)
	cmpwi 7,3,0
	beq- 7,.L1542
	.loc 16 194 0
	bl _ZdaPv
.L1542:
	.loc 16 197 0
	li 0,0
	stw 0,12(25)
	.loc 16 198 0
	stw 0,0(25)
	.loc 16 199 0
	stw 0,4(25)
.LBE8409:
.LBE8408:
.LBE8414:
	.loc 16 228 0
	lwz 0,52(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
.LVL2071:
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
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
.LCFI398:
	.cfi_def_cfa_offset 0
	blr
.LVL2072:
.L1544:
.LCFI399:
	.cfi_restore_state
	mr 31,3
.LVL2073:
.LBB8415:
.LBB8410:
.LBB8406:
.LBB8404:
.LBB8398:
.LBB8390:
.LBB8387:
.LBB8382:
.LBB8383:
.LBB8384:
	.loc 16 181 0
	mr 3,28
	bl _ZN6idListIP11idGuiScriptE5ClearEv
.LVL2074:
.LBE8384:
.LBE8383:
.LBE8382:
.LBE8387:
.LBE8390:
.LBE8398:
.LBB8399:
.LBB8400:
.LBB8401:
	.loc 4 501 0
	mr 3,26
	bl _ZN5idStr8FreeDataEv
.LBE8401:
.LBE8400:
.LBE8399:
.LBB8402:
.LBB8397:
.LBB8396:
	mr 3,31
.LEHB98:
	bl _Unwind_Resume
.LEHE98:
.LBE8396:
.LBE8397:
.LBE8402:
.LBE8404:
.LBE8406:
.LBE8410:
.LBE8415:
	.cfi_endproc
.LFE3271:
	.section	.gcc_except_table
.LLSDA3271:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3271-.LLSDACSB3271
.LLSDACSB3271:
	.uleb128 .LEHB96-.LFB3271
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1544-.LFB3271
	.uleb128 0
	.uleb128 .LEHB97-.LFB3271
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB3271
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
.LLSDACSE3271:
	.section	.text._ZN6idListIP12rvNamedEventE14DeleteContentsEb,"axG",@progbits,_ZN6idListIP12rvNamedEventE14DeleteContentsEb,comdat
	.size	_ZN6idListIP12rvNamedEventE14DeleteContentsEb, .-_ZN6idListIP12rvNamedEventE14DeleteContentsEb
	.section	".text"
	.align 2
	.globl _ZN8idWindow7CleanUpEv
	.type	_ZN8idWindow7CleanUpEv, @function
_ZN8idWindow7CleanUpEv:
.LFB2894:
	.loc 6 267 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2894
.LVL2075:
	mflr 0
	stwu 1,-48(1)
.LCFI400:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 26,24(1)
	mr 26,3
	.cfi_offset 26, -24
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
.LBB8466:
.LBB8467:
.LBB8468:
.LBB8469:
.LBB8470:
.LBB8471:
	.loc 6 4264 0
	lwz 30,696(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
.LVL2076:
.LBE8471:
.LBE8470:
.LBE8469:
.LBE8468:
.LBE8467:
	.loc 6 269 0
	cmpwi 7,30,0
	ble- 7,.L1549
	li 31,0
.LVL2077:
.L1551:
	.loc 6 270 0
	lwz 9,708(26)
	slwi 0,31,3
	add 9,9,0
	lwz 3,4(9)
	cmpwi 7,3,0
	beq- 7,.L1550
	.loc 6 270 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
.LEHB99:
	bctrl
.L1550:
	.loc 6 269 0 is_stmt 1
	addi 31,31,1
.LVL2078:
	cmpw 7,31,30
	bne+ 7,.L1551
.LVL2079:
.L1549:
	.loc 6 274 0
	addi 3,26,872
	bl _ZN14idRegisterList5ResetEv
	.loc 6 277 0
	addi 3,26,852
	li 4,1
	bl _ZN6idListIP12rvNamedEventE14DeleteContentsEb
.LVL2080:
.LBB8499:
.LBB8500:
	.loc 16 193 0
	lwz 3,708(26)
	cmpwi 7,3,0
	beq- 7,.L1552
	.loc 16 194 0
	bl _ZdaPv
.L1552:
.LBE8500:
.LBE8499:
.LBB8503:
.LBB8504:
	.loc 16 218 0
	lwz 9,680(26)
.LBE8504:
.LBE8503:
.LBB8515:
.LBB8501:
	.loc 16 197 0
	li 0,0
	stw 0,708(26)
.LBE8501:
.LBE8515:
.LBB8516:
.LBB8511:
	.loc 16 218 0
	cmpwi 7,9,0
.LBE8511:
.LBE8516:
.LBB8517:
.LBB8502:
	.loc 16 198 0
	stw 0,696(26)
	.loc 16 199 0
	stw 0,700(26)
.LVL2081:
.LBE8502:
.LBE8517:
.LBB8518:
.LBB8512:
	.loc 16 218 0
	ble- 7,.L1553
	li 31,0
	.loc 16 220 0
	li 29,0
.LVL2082:
.L1555:
	.loc 16 219 0
	lwz 9,692(26)
	.loc 6 267 0
	slwi 30,31,2
	.loc 16 219 0
	lwzx 3,9,30
	add 9,9,30
	cmpwi 7,3,0
	beq- 7,.L1554
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
	bctrl
	lwz 9,692(26)
	add 9,9,30
.L1554:
	.loc 16 220 0
	stw 29,0(9)
	.loc 16 218 0
	addi 31,31,1
.LVL2083:
	lwz 0,680(26)
	cmpw 7,31,0
	blt+ 7,.L1555
.LVL2084:
.L1553:
.LBB8505:
.LBB8506:
	.loc 16 193 0
	lwz 3,692(26)
	cmpwi 7,3,0
	beq- 7,.L1556
	.loc 16 194 0
	bl _ZdaPv
.L1556:
.LBE8506:
.LBE8505:
.LBE8512:
.LBE8518:
.LBB8519:
.LBB8520:
	.loc 16 218 0
	lwz 9,624(26)
.LBE8520:
.LBE8519:
.LBB8531:
.LBB8513:
.LBB8509:
.LBB8507:
	.loc 16 197 0
	li 0,0
	stw 0,692(26)
.LBE8507:
.LBE8509:
.LBE8513:
.LBE8531:
.LBB8532:
.LBB8527:
	.loc 16 218 0
	cmpwi 7,9,0
.LBE8527:
.LBE8532:
.LBB8533:
.LBB8514:
.LBB8510:
.LBB8508:
	.loc 16 198 0
	stw 0,680(26)
	.loc 16 199 0
	stw 0,684(26)
.LVL2085:
.LBE8508:
.LBE8510:
.LBE8514:
.LBE8533:
.LBB8534:
.LBB8528:
	.loc 16 218 0
	ble- 7,.L1557
	li 31,0
	.loc 16 220 0
	li 29,0
.LVL2086:
.L1559:
	.loc 16 219 0
	lwz 9,636(26)
	.loc 6 267 0
	slwi 30,31,2
	.loc 16 219 0
	lwzx 3,9,30
	add 9,9,30
	cmpwi 7,3,0
	beq- 7,.L1558
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
	bctrl
.LEHE99:
	lwz 9,636(26)
	add 9,9,30
.L1558:
	.loc 16 220 0
	stw 29,0(9)
	.loc 16 218 0
	addi 31,31,1
.LVL2087:
	lwz 0,624(26)
	cmpw 7,31,0
	blt+ 7,.L1559
.LVL2088:
.L1557:
.LBB8521:
.LBB8522:
	.loc 16 193 0
	lwz 3,636(26)
	cmpwi 7,3,0
	beq- 7,.L1560
	.loc 16 194 0
	bl _ZdaPv
.L1560:
.LBE8522:
.LBE8521:
.LBE8528:
.LBE8534:
.LBB8535:
.LBB8536:
	.loc 16 218 0
	lwz 9,784(26)
.LBE8536:
.LBE8535:
.LBB8586:
.LBB8529:
.LBB8525:
.LBB8523:
	.loc 16 197 0
	li 0,0
	stw 0,636(26)
.LBE8523:
.LBE8525:
.LBE8529:
.LBE8586:
.LBB8587:
.LBB8582:
	.loc 16 218 0
	cmpwi 7,9,0
.LBE8582:
.LBE8587:
.LBB8588:
.LBB8530:
.LBB8526:
.LBB8524:
	.loc 16 198 0
	stw 0,624(26)
	.loc 16 199 0
	stw 0,628(26)
.LVL2089:
.LBE8524:
.LBE8526:
.LBE8530:
.LBE8588:
.LBB8589:
.LBB8583:
	.loc 16 218 0
	ble- 7,.L1561
	li 25,0
.LBB8537:
.LBB8538:
.LBB8539:
.LBB8540:
.LBB8541:
.LBB8542:
.LBB8543:
.LBB8544:
.LBB8545:
.LBB8546:
	.loc 16 197 0
	li 27,0
.LVL2090:
.L1572:
.LBE8546:
.LBE8545:
.LBE8544:
.LBE8543:
.LBE8542:
.LBE8541:
.LBE8540:
.LBE8539:
.LBE8538:
.LBE8537:
	.loc 16 219 0
	lwz 9,796(26)
	.loc 6 267 0
	slwi 24,25,2
	.loc 16 219 0
	lwzx 23,9,24
	add 9,9,24
	cmpwi 7,23,0
	beq- 7,.L1562
.LBE8583:
	.loc 6 4264 0
	lwz 28,4(23)
.LBB8584:
.LBB8574:
.LBB8572:
.LBB8570:
	.loc 5 128 0
	cmpwi 7,28,0
	beq- 7,.L1563
.LVL2091:
.LBB8567:
.LBB8564:
.LBB8561:
.LBB8553:
.LBB8554:
	.loc 16 218 0
	lwz 0,0(28)
	cmpwi 7,0,0
	ble- 7,.L1564
	li 31,0
.LVL2092:
.L1566:
	.loc 16 219 0
	lwz 9,12(28)
	.loc 6 267 0
	slwi 30,31,2
	.loc 16 219 0
	lwzx 29,9,30
	add 9,9,30
	cmpwi 7,29,0
	beq- 7,.L1565
	mr 3,29
.LEHB100:
	bl _ZN11idGuiScriptD1Ev
.LEHE100:
	mr 3,29
	bl _ZN11idGuiScriptdlEPv
	lwz 9,12(28)
	add 9,9,30
.L1565:
	.loc 16 220 0
	stw 27,0(9)
	.loc 16 218 0
	addi 31,31,1
.LVL2093:
	lwz 0,0(28)
	cmpw 7,31,0
	blt+ 7,.L1566
.LVL2094:
.L1564:
.LBB8555:
.LBB8556:
	.loc 16 193 0
	lwz 3,12(28)
	cmpwi 7,3,0
	beq- 7,.L1567
	.loc 16 194 0
	bl _ZdaPv
.L1567:
.LVL2095:
.LBE8556:
.LBE8555:
.LBE8554:
.LBE8553:
.LBB8558:
.LBB8551:
.LBB8549:
.LBB8547:
	.loc 16 197 0
	stw 27,12(28)
.LBE8547:
.LBE8549:
.LBE8551:
.LBE8558:
.LBE8561:
.LBE8564:
.LBE8567:
	.loc 5 128 0
	mr 3,28
.LBB8568:
.LBB8565:
.LBB8562:
.LBB8559:
.LBB8552:
.LBB8550:
.LBB8548:
	.loc 16 198 0
	stw 27,0(28)
	.loc 16 199 0
	stw 27,4(28)
.LBE8548:
.LBE8550:
.LBE8552:
.LBE8559:
.LBE8562:
.LBE8565:
.LBE8568:
	.loc 5 128 0
	bl _ZdlPv
.LVL2096:
.L1563:
.LBE8570:
.LBE8572:
.LBE8574:
	.loc 16 219 0
	mr 3,23
	bl _ZdlPv
	lwz 9,796(26)
	add 9,9,24
.L1562:
	.loc 16 220 0
	stw 27,0(9)
	.loc 16 218 0
	addi 25,25,1
.LVL2097:
	lwz 0,784(26)
	cmpw 7,25,0
	blt+ 7,.L1572
.LVL2098:
.L1561:
.LBB8575:
.LBB8576:
	.loc 16 193 0
	lwz 3,796(26)
	cmpwi 7,3,0
	beq- 7,.L1573
	.loc 16 194 0
	bl _ZdaPv
.L1573:
	.loc 16 197 0
	li 0,0
	.loc 6 267 0
	addi 24,26,732
	.loc 16 197 0
	stw 0,796(26)
.LBE8576:
.LBE8575:
.LBB8579:
.LBB8573:
.LBB8571:
.LBB8569:
.LBB8566:
.LBB8563:
.LBB8560:
.LBB8557:
	.loc 6 283 0
	li 25,0
.LBE8557:
.LBE8560:
.LBE8563:
.LBE8566:
.LBE8569:
.LBE8571:
.LBE8573:
.LBE8579:
.LBB8580:
.LBB8577:
	.loc 16 198 0
	stw 0,784(26)
.LBE8577:
.LBE8580:
.LBE8584:
.LBE8589:
.LBB8590:
.LBB8495:
.LBB8491:
.LBB8475:
.LBB8476:
.LBB8477:
.LBB8478:
	.loc 16 197 0
	li 27,0
.LBE8478:
.LBE8477:
.LBE8476:
.LBE8475:
.LBE8491:
.LBE8495:
.LBE8590:
.LBB8591:
.LBB8585:
.LBB8581:
.LBB8578:
	.loc 16 199 0
	stw 0,788(26)
.LVL2099:
.L1583:
.LBE8578:
.LBE8581:
.LBE8585:
.LBE8591:
	.loc 6 284 0
	lwzu 28,4(24)
	cmpwi 7,28,0
	beq- 7,.L1574
.LVL2100:
.LBB8592:
.LBB8496:
.LBB8492:
.LBB8485:
.LBB8474:
	.loc 16 218 0
	lwz 0,0(28)
	cmpwi 7,0,0
	ble- 7,.L1575
	li 31,0
.LVL2101:
.L1577:
	.loc 16 219 0
	lwz 9,12(28)
	.loc 6 267 0
	slwi 30,31,2
	.loc 16 219 0
	lwzx 29,9,30
	add 9,9,30
	cmpwi 7,29,0
	beq- 7,.L1576
	mr 3,29
.LEHB101:
	bl _ZN11idGuiScriptD1Ev
.LEHE101:
	mr 3,29
	bl _ZN11idGuiScriptdlEPv
	lwz 9,12(28)
	add 9,9,30
.L1576:
	.loc 16 220 0
	stw 27,0(9)
	.loc 16 218 0
	addi 31,31,1
.LVL2102:
	lwz 0,0(28)
	cmpw 7,31,0
	blt+ 7,.L1577
.LVL2103:
.L1575:
.LBB8472:
.LBB8473:
	.loc 16 193 0
	lwz 3,12(28)
	cmpwi 7,3,0
	beq- 7,.L1578
	.loc 16 194 0
	bl _ZdaPv
.L1578:
.LVL2104:
.LBE8473:
.LBE8472:
.LBE8474:
.LBE8485:
.LBB8486:
.LBB8483:
.LBB8481:
.LBB8479:
	.loc 16 197 0
	stw 27,12(28)
.LBE8479:
.LBE8481:
.LBE8483:
.LBE8486:
.LBE8492:
.LBE8496:
.LBE8592:
	.loc 6 284 0
	mr 3,28
.LBB8593:
.LBB8497:
.LBB8493:
.LBB8487:
.LBB8484:
.LBB8482:
.LBB8480:
	.loc 16 198 0
	stw 27,0(28)
	.loc 16 199 0
	stw 27,4(28)
.LBE8480:
.LBE8482:
.LBE8484:
.LBE8487:
.LBE8493:
.LBE8497:
.LBE8593:
	.loc 6 284 0
	bl _ZdlPv
.LVL2105:
.L1574:
	.loc 6 283 0
	cmpwi 7,25,10
	addi 25,25,1
.LVL2106:
	bne+ 7,.L1583
.LBE8466:
	.loc 6 287 0
	lwz 0,52(1)
.LBB8595:
	.loc 6 286 0
	mr 3,26
.LBE8595:
	.loc 6 287 0
	lwz 23,12(1)
	lwz 24,16(1)
	mtlr 0
	lwz 25,20(1)
.LVL2107:
	lwz 26,24(1)
.LVL2108:
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI401:
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
.LEHB102:
.LBB8596:
	.loc 6 286 0
	b _ZN8idWindow10CommonInitEv
.LVL2109:
.L1584:
.L1593:
.LCFI402:
	.cfi_restore_state
	mr 31,3
.LVL2110:
.LBB8594:
.LBB8498:
.LBB8494:
.LBB8488:
.LBB8489:
.LBB8490:
	.loc 16 181 0
	mr 3,28
	bl _ZN6idListIP11idGuiScriptE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE102:
.LVL2111:
.L1585:
	b .L1593
.LBE8490:
.LBE8489:
.LBE8488:
.LBE8494:
.LBE8498:
.LBE8594:
.LBE8596:
	.cfi_endproc
.LFE2894:
	.section	.gcc_except_table
.LLSDA2894:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2894-.LLSDACSB2894
.LLSDACSB2894:
	.uleb128 .LEHB99-.LFB2894
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB100-.LFB2894
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1584-.LFB2894
	.uleb128 0
	.uleb128 .LEHB101-.LFB2894
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1585-.LFB2894
	.uleb128 0
	.uleb128 .LEHB102-.LFB2894
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
.LLSDACSE2894:
	.section	".text"
	.size	_ZN8idWindow7CleanUpEv, .-_ZN8idWindow7CleanUpEv
	.section	.text._ZN6idListIP11idGuiScriptE6ResizeEi,"axG",@progbits,_ZN6idListIP11idGuiScriptE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListIP11idGuiScriptE6ResizeEi
	.type	_ZN6idListIP11idGuiScriptE6ResizeEi, @function
_ZN6idListIP11idGuiScriptE6ResizeEi:
.LFB3342:
	.loc 16 368 0
	.cfi_startproc
.LVL2112:
.LBB8601:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE8601:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI403:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB8604:
	.loc 16 375 0
	ble- 0,.L1601
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L1594
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL2113:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L1602
.L1598:
	.loc 16 392 0
	slwi 3,4,2
.LVL2114:
	bl _Znaj
.LVL2115:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL2116:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L1599
	.loc 16 368 0
	addi 11,30,-4
.LBE8604:
	.loc 16 393 0
	li 9,0
	b .L1600
.LVL2117:
.L1603:
.LBB8605:
	lwz 3,12(31)
.LVL2118:
.L1600:
	.loc 16 394 0 discriminator 2
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0 discriminator 2
	addi 9,9,1
.LVL2119:
	.loc 16 394 0 discriminator 2
	stwx 10,3,0
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L1603
.LVL2120:
.L1599:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L1594
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL2121:
.L1594:
.LBE8605:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL2122:
	addi 1,1,16
	.cfi_remember_state
.LCFI404:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2123:
.L1602:
.LCFI405:
	.cfi_restore_state
.LBB8606:
	.loc 16 388 0
	stw 4,0(3)
	b .L1598
.LVL2124:
.L1601:
.LBB8602:
.LBB8603:
	.loc 16 193 0
	lwz 3,12(3)
.LVL2125:
	cmpwi 7,3,0
	beq- 7,.L1596
	.loc 16 194 0
	bl _ZdaPv
.LVL2126:
.L1596:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L1594
.LBE8603:
.LBE8602:
.LBE8606:
	.cfi_endproc
.LFE3342:
	.size	_ZN6idListIP11idGuiScriptE6ResizeEi, .-_ZN6idListIP11idGuiScriptE6ResizeEi
	.section	.text._ZN6idListIP8idWinVarE5ClearEv,"axG",@progbits,_ZN6idListIP8idWinVarE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP8idWinVarE5ClearEv
	.type	_ZN6idListIP8idWinVarE5ClearEv, @function
_ZN6idListIP8idWinVarE5ClearEv:
.LFB3344:
	.loc 16 192 0
	.cfi_startproc
.LVL2127:
	mflr 0
	stwu 1,-16(1)
.LCFI406:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2128:
	cmpwi 7,3,0
	beq- 7,.L1605
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1605:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2129:
	mtlr 0
	addi 1,1,16
.LCFI407:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3344:
	.size	_ZN6idListIP8idWinVarE5ClearEv, .-_ZN6idListIP8idWinVarE5ClearEv
	.section	.text._ZN6idListIP8idWindowE5ClearEv,"axG",@progbits,_ZN6idListIP8idWindowE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP8idWindowE5ClearEv
	.type	_ZN6idListIP8idWindowE5ClearEv, @function
_ZN6idListIP8idWindowE5ClearEv:
.LFB3345:
	.loc 16 192 0
	.cfi_startproc
.LVL2130:
	mflr 0
	stwu 1,-16(1)
.LCFI408:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2131:
	cmpwi 7,3,0
	beq- 7,.L1607
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1607:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2132:
	mtlr 0
	addi 1,1,16
.LCFI409:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3345:
	.size	_ZN6idListIP8idWindowE5ClearEv, .-_ZN6idListIP8idWindowE5ClearEv
	.section	.text._ZN6idListIP12rvNamedEventE5ClearEv,"axG",@progbits,_ZN6idListIP12rvNamedEventE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP12rvNamedEventE5ClearEv
	.type	_ZN6idListIP12rvNamedEventE5ClearEv, @function
_ZN6idListIP12rvNamedEventE5ClearEv:
.LFB3346:
	.loc 16 192 0
	.cfi_startproc
.LVL2133:
	mflr 0
	stwu 1,-16(1)
.LCFI410:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 16 193 0
	lwz 3,12(3)
.LVL2134:
	cmpwi 7,3,0
	beq- 7,.L1609
	.cfi_offset 65, 4
	.loc 16 194 0 discriminator 1
	bl _ZdaPv
.L1609:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	.loc 16 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2135:
	mtlr 0
	addi 1,1,16
.LCFI411:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3346:
	.size	_ZN6idListIP12rvNamedEventE5ClearEv, .-_ZN6idListIP12rvNamedEventE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN8idWindowD2Ev
	.type	_ZN8idWindowD2Ev, @function
_ZN8idWindowD2Ev:
.LFB2896:
	.loc 6 294 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2896
.LVL2136:
	mflr 0
	stwu 1,-24(1)
.LCFI412:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB8766:
	lis 9,_ZTV8idWindow+8@ha
.LBE8766:
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
.LBB9097:
	la 0,_ZTV8idWindow+8@l(9)
	.cfi_offset 65, 4
.LBE9097:
	stw 29,12(1)
	stw 30,16(1)
.LBB9098:
	.loc 6 294 0
	stw 0,0(3)
.LEHB103:
	.loc 6 295 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	bl _ZN8idWindow7CleanUpEv
.LEHE103:
.LVL2137:
.LBB8767:
.LBB8768:
.LBB8769:
	.loc 3 106 0
	lis 29,_ZTV9idWinBool+8@ha
	mr 3,31
	la 29,_ZTV9idWinBool+8@l(29)
	stwu 29,916(3)
.LEHB104:
	bl _ZN8idWinVarD2Ev
.LEHE104:
.LVL2138:
.LBE8769:
.LBE8768:
.LBE8767:
.LBB8770:
.LBB8771:
.LBB8772:
.LBB8773:
.LBB8774:
.LBB8775:
	.loc 22 130 0 discriminator 1
	addi 3,31,888
.LEHB105:
	bl _ZN11idHashIndex4FreeEv
.LEHE105:
.LVL2139:
.LBE8775:
.LBE8774:
.LBE8773:
.LBB8776:
.LBB8777:
.LBB8778:
.LBB8779:
	.loc 16 193 0
	lwz 3,884(31)
	cmpwi 7,3,0
	beq- 7,.L1613
	.loc 16 194 0
	bl _ZdaPv
.L1613:
.LBE8779:
.LBE8778:
.LBE8777:
.LBE8776:
.LBE8772:
.LBE8771:
.LBE8770:
.LBB8797:
.LBB8798:
.LBB8799:
.LBB8800:
	.loc 16 193 0
	lwz 3,864(31)
.LBE8800:
.LBE8799:
.LBE8798:
.LBE8797:
.LBB8813:
.LBB8794:
.LBB8791:
.LBB8786:
.LBB8784:
.LBB8782:
.LBB8780:
	.loc 16 197 0
	li 0,0
	stw 0,884(31)
.LBE8780:
.LBE8782:
.LBE8784:
.LBE8786:
.LBE8791:
.LBE8794:
.LBE8813:
.LBB8814:
.LBB8809:
.LBB8805:
.LBB8801:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8801:
.LBE8805:
.LBE8809:
.LBE8814:
.LBB8815:
.LBB8795:
.LBB8792:
.LBB8787:
.LBB8785:
.LBB8783:
.LBB8781:
	.loc 16 198 0
	stw 0,872(31)
	.loc 16 199 0
	stw 0,876(31)
.LVL2140:
.LBE8781:
.LBE8783:
.LBE8785:
.LBE8787:
.LBE8792:
.LBE8795:
.LBE8815:
.LBB8816:
.LBB8810:
.LBB8806:
.LBB8802:
	.loc 16 193 0
	beq- 7,.L1619
	.loc 16 194 0
	bl _ZdaPv
.L1619:
.LBE8802:
.LBE8806:
.LBE8810:
.LBE8816:
.LBB8817:
.LBB8818:
.LBB8819:
.LBB8820:
	.loc 16 193 0
	lwz 3,844(31)
.LBE8820:
.LBE8819:
.LBE8818:
.LBE8817:
.LBB8833:
.LBB8811:
.LBB8807:
.LBB8803:
	.loc 16 197 0
	li 0,0
	stw 0,864(31)
.LBE8803:
.LBE8807:
.LBE8811:
.LBE8833:
.LBB8834:
.LBB8829:
.LBB8825:
.LBB8821:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8821:
.LBE8825:
.LBE8829:
.LBE8834:
.LBB8835:
.LBB8812:
.LBB8808:
.LBB8804:
	.loc 16 198 0
	stw 0,852(31)
	.loc 16 199 0
	stw 0,856(31)
.LVL2141:
.LBE8804:
.LBE8808:
.LBE8812:
.LBE8835:
.LBB8836:
.LBB8830:
.LBB8826:
.LBB8822:
	.loc 16 193 0
	beq- 7,.L1621
	.loc 16 194 0
	bl _ZdaPv
.L1621:
.LBE8822:
.LBE8826:
.LBE8830:
.LBE8836:
.LBB8837:
.LBB8838:
.LBB8839:
.LBB8840:
	.loc 16 193 0
	lwz 3,828(31)
.LBE8840:
.LBE8839:
.LBE8838:
.LBE8837:
.LBB8853:
.LBB8831:
.LBB8827:
.LBB8823:
	.loc 16 197 0
	li 0,0
	stw 0,844(31)
.LBE8823:
.LBE8827:
.LBE8831:
.LBE8853:
.LBB8854:
.LBB8849:
.LBB8845:
.LBB8841:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8841:
.LBE8845:
.LBE8849:
.LBE8854:
.LBB8855:
.LBB8832:
.LBB8828:
.LBB8824:
	.loc 16 198 0
	stw 0,832(31)
	.loc 16 199 0
	stw 0,836(31)
.LVL2142:
.LBE8824:
.LBE8828:
.LBE8832:
.LBE8855:
.LBB8856:
.LBB8850:
.LBB8846:
.LBB8842:
	.loc 16 193 0
	beq- 7,.L1623
	.loc 16 194 0
	bl _ZdaPv
.L1623:
.LBE8842:
.LBE8846:
.LBE8850:
.LBE8856:
.LBB8857:
.LBB8858:
.LBB8859:
.LBB8860:
	.loc 16 193 0
	lwz 3,812(31)
.LBE8860:
.LBE8859:
.LBE8858:
.LBE8857:
.LBB8873:
.LBB8851:
.LBB8847:
.LBB8843:
	.loc 16 197 0
	li 0,0
	stw 0,828(31)
.LBE8843:
.LBE8847:
.LBE8851:
.LBE8873:
.LBB8874:
.LBB8869:
.LBB8865:
.LBB8861:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8861:
.LBE8865:
.LBE8869:
.LBE8874:
.LBB8875:
.LBB8852:
.LBB8848:
.LBB8844:
	.loc 16 198 0
	stw 0,816(31)
	.loc 16 199 0
	stw 0,820(31)
.LVL2143:
.LBE8844:
.LBE8848:
.LBE8852:
.LBE8875:
.LBB8876:
.LBB8870:
.LBB8866:
.LBB8862:
	.loc 16 193 0
	beq- 7,.L1625
	.loc 16 194 0
	bl _ZdaPv
.L1625:
.LBE8862:
.LBE8866:
.LBE8870:
.LBE8876:
.LBB8877:
.LBB8878:
.LBB8879:
.LBB8880:
	.loc 16 193 0
	lwz 3,796(31)
.LBE8880:
.LBE8879:
.LBE8878:
.LBE8877:
.LBB8893:
.LBB8871:
.LBB8867:
.LBB8863:
	.loc 16 197 0
	li 0,0
	stw 0,812(31)
.LBE8863:
.LBE8867:
.LBE8871:
.LBE8893:
.LBB8894:
.LBB8889:
.LBB8885:
.LBB8881:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8881:
.LBE8885:
.LBE8889:
.LBE8894:
.LBB8895:
.LBB8872:
.LBB8868:
.LBB8864:
	.loc 16 198 0
	stw 0,800(31)
	.loc 16 199 0
	stw 0,804(31)
.LVL2144:
.LBE8864:
.LBE8868:
.LBE8872:
.LBE8895:
.LBB8896:
.LBB8890:
.LBB8886:
.LBB8882:
	.loc 16 193 0
	beq- 7,.L1627
	.loc 16 194 0
	bl _ZdaPv
.L1627:
.LBE8882:
.LBE8886:
.LBE8890:
.LBE8896:
.LBB8897:
.LBB8898:
.LBB8899:
.LBB8900:
	.loc 16 193 0
	lwz 3,708(31)
.LBE8900:
.LBE8899:
.LBE8898:
.LBE8897:
.LBB8913:
.LBB8891:
.LBB8887:
.LBB8883:
	.loc 16 197 0
	li 0,0
	stw 0,796(31)
.LBE8883:
.LBE8887:
.LBE8891:
.LBE8913:
.LBB8914:
.LBB8909:
.LBB8905:
.LBB8901:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8901:
.LBE8905:
.LBE8909:
.LBE8914:
.LBB8915:
.LBB8892:
.LBB8888:
.LBB8884:
	.loc 16 198 0
	stw 0,784(31)
	.loc 16 199 0
	stw 0,788(31)
.LVL2145:
.LBE8884:
.LBE8888:
.LBE8892:
.LBE8915:
.LBB8916:
.LBB8910:
.LBB8906:
.LBB8902:
	.loc 16 193 0
	beq- 7,.L1629
	.loc 16 194 0
	bl _ZdaPv
.L1629:
.LBE8902:
.LBE8906:
.LBE8910:
.LBE8916:
.LBB8917:
.LBB8918:
.LBB8919:
.LBB8920:
	.loc 16 193 0
	lwz 3,692(31)
.LBE8920:
.LBE8919:
.LBE8918:
.LBE8917:
.LBB8933:
.LBB8911:
.LBB8907:
.LBB8903:
	.loc 16 197 0
	li 0,0
	stw 0,708(31)
.LBE8903:
.LBE8907:
.LBE8911:
.LBE8933:
.LBB8934:
.LBB8929:
.LBB8925:
.LBB8921:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8921:
.LBE8925:
.LBE8929:
.LBE8934:
.LBB8935:
.LBB8912:
.LBB8908:
.LBB8904:
	.loc 16 198 0
	stw 0,696(31)
	.loc 16 199 0
	stw 0,700(31)
.LVL2146:
.LBE8904:
.LBE8908:
.LBE8912:
.LBE8935:
.LBB8936:
.LBB8930:
.LBB8926:
.LBB8922:
	.loc 16 193 0
	beq- 7,.L1631
	.loc 16 194 0
	bl _ZdaPv
.L1631:
.LBE8922:
.LBE8926:
.LBE8930:
.LBE8936:
.LBB8937:
.LBB8938:
.LBB8939:
.LBB8940:
	.loc 16 193 0
	lwz 3,652(31)
.LBE8940:
.LBE8939:
.LBE8938:
.LBE8937:
.LBB8953:
.LBB8931:
.LBB8927:
.LBB8923:
	.loc 16 197 0
	li 0,0
	stw 0,692(31)
.LBE8923:
.LBE8927:
.LBE8931:
.LBE8953:
.LBB8954:
.LBB8949:
.LBB8945:
.LBB8941:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8941:
.LBE8945:
.LBE8949:
.LBE8954:
.LBB8955:
.LBB8932:
.LBB8928:
.LBB8924:
	.loc 16 198 0
	stw 0,680(31)
	.loc 16 199 0
	stw 0,684(31)
.LVL2147:
.LBE8924:
.LBE8928:
.LBE8932:
.LBE8955:
.LBB8956:
.LBB8950:
.LBB8946:
.LBB8942:
	.loc 16 193 0
	beq- 7,.L1633
	.loc 16 194 0
	bl _ZdaPv
.L1633:
.LBE8942:
.LBE8946:
.LBE8950:
.LBE8956:
.LBB8957:
.LBB8958:
.LBB8959:
.LBB8960:
	.loc 16 193 0
	lwz 3,636(31)
.LBE8960:
.LBE8959:
.LBE8958:
.LBE8957:
.LBB8973:
.LBB8951:
.LBB8947:
.LBB8943:
	.loc 16 197 0
	li 0,0
	stw 0,652(31)
.LBE8943:
.LBE8947:
.LBE8951:
.LBE8973:
.LBB8974:
.LBB8969:
.LBB8965:
.LBB8961:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE8961:
.LBE8965:
.LBE8969:
.LBE8974:
.LBB8975:
.LBB8952:
.LBB8948:
.LBB8944:
	.loc 16 198 0
	stw 0,640(31)
	.loc 16 199 0
	stw 0,644(31)
.LVL2148:
.LBE8944:
.LBE8948:
.LBE8952:
.LBE8975:
.LBB8976:
.LBB8970:
.LBB8966:
.LBB8962:
	.loc 16 193 0
	beq- 7,.L1635
	.loc 16 194 0
	bl _ZdaPv
.L1635:
	.loc 16 197 0
	li 0,0
.LBE8962:
.LBE8966:
.LBE8970:
.LBE8976:
.LBB8977:
.LBB8978:
.LBB8979:
	.loc 3 725 0
	lis 9,_ZTV15idWinBackground+8@ha
.LBE8979:
.LBE8978:
.LBE8977:
.LBB9004:
.LBB8971:
.LBB8967:
.LBB8963:
	.loc 16 197 0
	stw 0,636(31)
.LBE8963:
.LBE8967:
.LBE8971:
.LBE9004:
.LBB9005:
.LBB9001:
.LBB8998:
.LBB8980:
.LBB8981:
.LBB8982:
	.loc 4 501 0
	addi 3,31,588
.LBE8982:
.LBE8981:
.LBE8980:
.LBE8998:
.LBE9001:
.LBE9005:
.LBB9006:
.LBB8972:
.LBB8968:
.LBB8964:
	.loc 16 198 0
	stw 0,624(31)
	.loc 16 199 0
	stw 0,628(31)
.LVL2149:
.LBE8964:
.LBE8968:
.LBE8972:
.LBE9006:
.LBB9007:
.LBB9002:
.LBB8999:
	.loc 3 725 0
	la 0,_ZTV15idWinBackground+8@l(9)
	stw 0,540(31)
.LVL2150:
.LEHB106:
.LBB8985:
.LBB8984:
.LBB8983:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE106:
.LVL2151:
.LBE8983:
.LBE8984:
.LBE8985:
.LBB8986:
.LBB8987:
.LBB8988:
	.loc 3 163 0
	lis 30,_ZTV8idWinStr+8@ha
.LBB8989:
.LBB8990:
.LBB8991:
	.loc 4 501 0
	addi 3,31,556
.LBE8991:
.LBE8990:
.LBE8989:
	.loc 3 163 0
	la 30,_ZTV8idWinStr+8@l(30)
	stw 30,540(31)
.LVL2152:
.LEHB107:
.LBB8994:
.LBB8993:
.LBB8992:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE107:
.LVL2153:
.LBE8992:
.LBE8993:
.LBE8994:
	.loc 3 163 0
	addi 3,31,540
.LEHB108:
	bl _ZN8idWinVarD2Ev
.LEHE108:
.LVL2154:
.LBE8988:
.LBE8987:
.LBE8986:
.LBE8999:
.LBE9002:
.LBE9007:
.LBB9008:
.LBB9009:
.LBB9010:
	.loc 3 163 0 is_stmt 0 discriminator 12
	stw 30,492(31)
.LVL2155:
.LBB9011:
.LBB9012:
.LBB9013:
	.loc 4 501 0 is_stmt 1 discriminator 12
	addi 3,31,508
.LEHB109:
	bl _ZN5idStr8FreeDataEv
.LEHE109:
.LBE9013:
.LBE9012:
.LBE9011:
	.loc 3 163 0
	addi 3,31,492
.LEHB110:
	bl _ZN8idWinVarD2Ev
.LEHE110:
.LVL2156:
.LBE9010:
.LBE9009:
.LBE9008:
.LBB9016:
.LBB9017:
.LBB9018:
	.loc 3 325 0 discriminator 13
	lis 30,_ZTV10idWinFloat+8@ha
	mr 3,31
	la 30,_ZTV10idWinFloat+8@l(30)
	stwu 30,472(3)
.LEHB111:
	bl _ZN8idWinVarD2Ev
.LEHE111:
.LVL2157:
.LBE9018:
.LBE9017:
.LBE9016:
.LBB9019:
.LBB9020:
.LBB9021:
	.loc 3 325 0 is_stmt 0 discriminator 14
	mr 3,31
	stwu 30,452(3)
.LEHB112:
	bl _ZN8idWinVarD2Ev
.LEHE112:
.LVL2158:
.LBE9021:
.LBE9020:
.LBE9019:
.LBB9022:
.LBB9023:
.LBB9024:
	.loc 3 558 0 is_stmt 1 discriminator 15
	lis 30,_ZTV9idWinVec4+8@ha
	mr 3,31
	la 30,_ZTV9idWinVec4+8@l(30)
	stwu 30,420(3)
.LEHB113:
	bl _ZN8idWinVarD2Ev
.LEHE113:
.LVL2159:
.LBE9024:
.LBE9023:
.LBE9022:
.LBB9025:
.LBB9026:
.LBB9027:
	.loc 3 558 0 is_stmt 0 discriminator 16
	mr 3,31
	stwu 30,388(3)
.LEHB114:
	bl _ZN8idWinVarD2Ev
.LEHE114:
.LVL2160:
.LBE9027:
.LBE9026:
.LBE9025:
.LBB9028:
.LBB9029:
.LBB9030:
	.loc 3 558 0 discriminator 17
	mr 3,31
	stwu 30,356(3)
.LEHB115:
	bl _ZN8idWinVarD2Ev
.LEHE115:
.LVL2161:
.LBE9030:
.LBE9029:
.LBE9028:
.LBB9031:
.LBB9032:
.LBB9033:
	.loc 3 558 0 discriminator 18
	mr 3,31
	stwu 30,324(3)
.LEHB116:
	bl _ZN8idWinVarD2Ev
.LEHE116:
.LVL2162:
.LBE9033:
.LBE9032:
.LBE9031:
.LBB9034:
.LBB9035:
.LBB9036:
	.loc 3 558 0 discriminator 19
	mr 3,31
	stwu 30,292(3)
.LEHB117:
	bl _ZN8idWinVarD2Ev
.LEHE117:
.LVL2163:
.LBE9036:
.LBE9035:
.LBE9034:
.LBB9037:
.LBB9038:
.LBB9039:
	.loc 3 380 0 is_stmt 1 discriminator 20
	lis 9,_ZTV14idWinRectangle+8@ha
	mr 3,31
	la 0,_ZTV14idWinRectangle+8@l(9)
	stwu 0,260(3)
.LEHB118:
	bl _ZN8idWinVarD2Ev
.LEHE118:
.LVL2164:
.LBE9039:
.LBE9038:
.LBE9037:
.LBB9040:
.LBB9041:
.LBB9042:
	.loc 3 106 0 discriminator 21
	mr 3,31
	stwu 29,244(3)
.LEHB119:
	bl _ZN8idWinVarD2Ev
.LEHE119:
.LVL2165:
.LBE9042:
.LBE9041:
.LBE9040:
.LBB9043:
.LBB9044:
.LBB9045:
	.loc 3 106 0 is_stmt 0 discriminator 22
	mr 3,31
	stwu 29,228(3)
.LEHB120:
	bl _ZN8idWinVarD2Ev
.LEHE120:
.LVL2166:
.LBE9045:
.LBE9044:
.LBE9043:
.LBB9046:
.LBB9047:
.LBB9048:
	.loc 3 106 0 discriminator 23
	mr 3,31
	stwu 29,212(3)
.LEHB121:
	bl _ZN8idWinVarD2Ev
.LEHE121:
.LVL2167:
.LBE9048:
.LBE9047:
.LBE9046:
.LBB9049:
.LBB9050:
.LBB9051:
	.loc 4 501 0 is_stmt 1 discriminator 24
	addi 3,31,168
.LEHB122:
	bl _ZN5idStr8FreeDataEv
.LEHE122:
.LVL2168:
.LBE9051:
.LBE9050:
.LBE9049:
.LBB9052:
.LBB9053:
.LBB9054:
	.loc 4 501 0 is_stmt 0 discriminator 25
	addi 3,31,136
.LEHB123:
	bl _ZN5idStr8FreeDataEv
.LEHE123:
.LVL2169:
.LBE9054:
.LBE9053:
.LBE9052:
.LBB9055:
.LBB9056:
.LBB9057:
	.loc 4 501 0 discriminator 26
	addi 3,31,4
.LEHB124:
	bl _ZN5idStr8FreeDataEv
.LEHE124:
.LBE9057:
.LBE9056:
.LBE9055:
.LBE9098:
	.loc 6 296 0 is_stmt 1 discriminator 26
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL2170:
	addi 1,1,24
	.cfi_remember_state
.LCFI413:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2171:
.L1690:
.LCFI414:
	.cfi_restore_state
	mr 30,3
.LBB9099:
	.loc 6 294 0
	addi 3,31,916
	bl _ZN9idWinBoolD1Ev
.L1664:
	addi 3,31,872
	bl _ZN14idRegisterListD1Ev
.L1617:
.LVL2172:
.LBB9058:
.LBB9059:
.LBB9060:
	.loc 16 181 0
	addi 3,31,852
	bl _ZN6idListIP12rvNamedEventE5ClearEv
.LVL2173:
.LBE9060:
.LBE9059:
.LBE9058:
.LBB9061:
.LBB9062:
.LBB9063:
	addi 3,31,832
	bl _ZN6idListIfE5ClearEv
.LVL2174:
.LBE9063:
.LBE9062:
.LBE9061:
.LBB9064:
.LBB9065:
.LBB9066:
	addi 3,31,816
	bl _ZN6idListI8wexpOp_tE5ClearEv
.LVL2175:
.LBE9066:
.LBE9065:
.LBE9064:
.LBB9067:
.LBB9068:
.LBB9069:
	addi 3,31,800
	bl _ZN6idListI16idTransitionDataE5ClearEv
.LVL2176:
.LBE9069:
.LBE9068:
.LBE9067:
.LBB9070:
.LBB9071:
.LBB9072:
	addi 3,31,784
	bl _ZN6idListIP15idTimeLineEventE5ClearEv
.LVL2177:
.LBE9072:
.LBE9071:
.LBE9070:
.LBB9073:
.LBB9074:
.LBB9075:
	addi 3,31,696
	bl _ZN6idListI9drawWin_tE5ClearEv
.LVL2178:
.LBE9075:
.LBE9074:
.LBE9073:
.LBB9076:
.LBB9077:
.LBB9078:
	addi 3,31,680
	bl _ZN6idListIP8idWindowE5ClearEv
.LVL2179:
.LBE9078:
.LBE9077:
.LBE9076:
.LBB9079:
.LBB9080:
.LBB9081:
	addi 3,31,640
	bl _ZN6idListIP8idWinVarE5ClearEv
.LVL2180:
.LBE9081:
.LBE9080:
.LBE9079:
.LBB9082:
.LBB9083:
.LBB9084:
	addi 3,31,624
	bl _ZN6idListIP8idWinVarE5ClearEv
.LBE9084:
.LBE9083:
.LBE9082:
	.loc 6 294 0
	addi 3,31,540
	bl _ZN15idWinBackgroundD1Ev
.LVL2181:
.L1641:
	addi 3,31,492
	bl _ZN8idWinStrD1Ev
.L1647:
	addi 3,31,472
	bl _ZN10idWinFloatD1Ev
.L1674:
	addi 3,31,452
	bl _ZN10idWinFloatD1Ev
.L1675:
	addi 3,31,420
	bl _ZN9idWinVec4D1Ev
.L1676:
	addi 3,31,388
	bl _ZN9idWinVec4D1Ev
.L1677:
	addi 3,31,356
	bl _ZN9idWinVec4D1Ev
.L1678:
	addi 3,31,324
	bl _ZN9idWinVec4D1Ev
.L1679:
	addi 3,31,292
	bl _ZN9idWinVec4D1Ev
.L1680:
	addi 3,31,260
	bl _ZN14idWinRectangleD1Ev
.L1681:
	addi 3,31,244
	bl _ZN9idWinBoolD1Ev
.L1682:
	addi 3,31,228
	bl _ZN9idWinBoolD1Ev
.L1683:
	addi 3,31,212
	bl _ZN9idWinBoolD1Ev
.L1684:
.LVL2182:
.LBB9085:
.LBB9086:
.LBB9087:
	.loc 4 501 0
	addi 3,31,168
	bl _ZN5idStr8FreeDataEv
.LVL2183:
.L1686:
.LBE9087:
.LBE9086:
.LBE9085:
.LBB9088:
.LBB9089:
.LBB9090:
	addi 3,31,136
	bl _ZN5idStr8FreeDataEv
.LVL2184:
.L1688:
.LBE9090:
.LBE9089:
.LBE9088:
.LBB9091:
.LBB9092:
.LBB9093:
	addi 3,31,4
	bl _ZN5idStr8FreeDataEv
	mr 3,30
.LEHB125:
	bl _Unwind_Resume
.LEHE125:
.LVL2185:
.L1706:
	mr 30,3
	b .L1688
.LVL2186:
.L1705:
	mr 30,3
	b .L1686
.LVL2187:
.L1704:
	mr 30,3
	b .L1684
.LVL2188:
.L1703:
	mr 30,3
	b .L1683
.LVL2189:
.L1702:
	mr 30,3
	b .L1682
.LVL2190:
.L1701:
	mr 30,3
	b .L1681
.LVL2191:
.L1700:
	mr 30,3
	b .L1680
.LVL2192:
.L1699:
	mr 30,3
	b .L1679
.LVL2193:
.L1698:
	mr 30,3
	b .L1678
.LVL2194:
.L1697:
	mr 30,3
	b .L1677
.LVL2195:
.L1696:
	mr 30,3
	b .L1676
.LVL2196:
.L1695:
	mr 30,3
	b .L1675
.LVL2197:
.L1694:
	mr 30,3
	b .L1674
.LVL2198:
.L1693:
	mr 30,3
	b .L1647
.L1710:
	mr 30,3
.LBE9093:
.LBE9092:
.LBE9091:
.LBB9094:
.LBB9015:
.LBB9014:
	.loc 3 163 0
	addi 3,31,492
	bl _ZN8idWinVarD2Ev
	b .L1647
.LVL2199:
.L1692:
	mr 30,3
	b .L1641
.L1709:
	mr 30,3
.LBE9014:
.LBE9015:
.LBE9094:
.LBB9095:
.LBB9003:
.LBB9000:
.LBB8997:
.LBB8996:
.LBB8995:
	addi 3,31,540
	bl _ZN8idWinVarD2Ev
	b .L1641
.LVL2200:
.L1708:
	mr 30,3
.LBE8995:
.LBE8996:
.LBE8997:
	.loc 3 725 0
	addi 3,31,540
	bl _ZN8idWinStrD2Ev
	b .L1641
.LVL2201:
.L1707:
	mr 30,3
.LVL2202:
.LBE9000:
.LBE9003:
.LBE9095:
.LBB9096:
.LBB8796:
.LBB8793:
.LBB8788:
.LBB8789:
.LBB8790:
	.loc 16 181 0
	addi 3,31,872
	bl _ZN6idListIP10idRegisterE5ClearEv
	b .L1617
.LVL2203:
.L1691:
	mr 30,3
	b .L1664
.LBE8790:
.LBE8789:
.LBE8788:
.LBE8793:
.LBE8796:
.LBE9096:
.LBE9099:
	.cfi_endproc
.LFE2896:
	.section	.gcc_except_table
.LLSDA2896:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2896-.LLSDACSB2896
.LLSDACSB2896:
	.uleb128 .LEHB103-.LFB2896
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1690-.LFB2896
	.uleb128 0
	.uleb128 .LEHB104-.LFB2896
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1691-.LFB2896
	.uleb128 0
	.uleb128 .LEHB105-.LFB2896
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1707-.LFB2896
	.uleb128 0
	.uleb128 .LEHB106-.LFB2896
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1708-.LFB2896
	.uleb128 0
	.uleb128 .LEHB107-.LFB2896
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1709-.LFB2896
	.uleb128 0
	.uleb128 .LEHB108-.LFB2896
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L1692-.LFB2896
	.uleb128 0
	.uleb128 .LEHB109-.LFB2896
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1710-.LFB2896
	.uleb128 0
	.uleb128 .LEHB110-.LFB2896
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1693-.LFB2896
	.uleb128 0
	.uleb128 .LEHB111-.LFB2896
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1694-.LFB2896
	.uleb128 0
	.uleb128 .LEHB112-.LFB2896
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1695-.LFB2896
	.uleb128 0
	.uleb128 .LEHB113-.LFB2896
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1696-.LFB2896
	.uleb128 0
	.uleb128 .LEHB114-.LFB2896
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1697-.LFB2896
	.uleb128 0
	.uleb128 .LEHB115-.LFB2896
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1698-.LFB2896
	.uleb128 0
	.uleb128 .LEHB116-.LFB2896
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1699-.LFB2896
	.uleb128 0
	.uleb128 .LEHB117-.LFB2896
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1700-.LFB2896
	.uleb128 0
	.uleb128 .LEHB118-.LFB2896
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1701-.LFB2896
	.uleb128 0
	.uleb128 .LEHB119-.LFB2896
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1702-.LFB2896
	.uleb128 0
	.uleb128 .LEHB120-.LFB2896
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1703-.LFB2896
	.uleb128 0
	.uleb128 .LEHB121-.LFB2896
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1704-.LFB2896
	.uleb128 0
	.uleb128 .LEHB122-.LFB2896
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1705-.LFB2896
	.uleb128 0
	.uleb128 .LEHB123-.LFB2896
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1706-.LFB2896
	.uleb128 0
	.uleb128 .LEHB124-.LFB2896
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB2896
	.uleb128 .LEHE125-.LEHB125
	.uleb128 0
	.uleb128 0
.LLSDACSE2896:
	.section	".text"
	.size	_ZN8idWindowD2Ev, .-_ZN8idWindowD2Ev
	.align 2
	.globl _ZN8idWindowD0Ev
	.type	_ZN8idWindowD0Ev, @function
_ZN8idWindowD0Ev:
.LFB2898:
	.loc 6 294 0
	.cfi_startproc
.LVL2204:
	mflr 0
	stwu 1,-16(1)
.LCFI415:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 6 296 0
	.cfi_offset 65, 4
	bl _ZN8idWindowD1Ev
.LVL2205:
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
.LVL2206:
	mtlr 0
	addi 1,1,16
.LCFI416:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	b _ZN8idWindowdlEPv
.LVL2207:
	.cfi_endproc
.LFE2898:
	.size	_ZN8idWindowD0Ev, .-_ZN8idWindowD0Ev
	.align 2
	.globl _ZN8idWindowC2EP15idDeviceContextP20idUserInterfaceLocal
	.type	_ZN8idWindowC2EP15idDeviceContextP20idUserInterfaceLocal, @function
_ZN8idWindowC2EP15idDeviceContextP20idUserInterfaceLocal:
.LFB2884:
	.loc 6 235 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2884
.LVL2208:
	mflr 0
	stwu 1,-88(1)
.LCFI417:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
.LBB9267:
	lis 6,_ZTV8idWindow+8@ha
.LBB9268:
.LBB9269:
.LBB9270:
	.loc 4 356 0
	li 9,0
	.loc 4 357 0
	li 11,20
	.loc 4 358 0
	addi 7,3,16
.LBE9270:
.LBE9269:
.LBE9268:
.LBE9267:
	.loc 6 235 0
	stw 0,92(1)
.LBB9598:
.LBB9273:
.LBB9274:
.LBB9275:
	.loc 4 358 0
	addi 8,3,148
.LBE9275:
.LBE9274:
.LBE9273:
.LBB9278:
.LBB9279:
	.loc 12 40 0
	li 0,0
	.cfi_offset 65, 4
.LBE9279:
.LBE9278:
.LBB9281:
.LBB9282:
.LBB9283:
	.loc 4 358 0
	addi 10,3,180
.LBE9283:
.LBE9282:
.LBE9281:
	.loc 6 235 0
	la 6,_ZTV8idWindow+8@l(6)
.LBE9598:
	stw 14,16(1)
	stw 31,84(1)
.LBB9599:
.LBB9286:
.LBB9287:
	.loc 3 105 0
	addi 14,3,212
	.cfi_offset 31, -4
	.cfi_offset 14, -72
.LBE9287:
.LBE9286:
.LBE9599:
	.loc 6 235 0
	stw 15,20(1)
	mr 31,3
	stw 16,24(1)
	stw 17,28(1)
	stw 18,32(1)
	stw 19,36(1)
	stw 20,40(1)
	stw 21,44(1)
	stw 22,48(1)
	stw 23,52(1)
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 27,68(1)
	stw 28,72(1)
	stw 29,76(1)
	stw 30,80(1)
.LBB9600:
	.loc 6 235 0
	stw 6,0(3)
.LVL2209:
.LBB9292:
.LBB9272:
.LBB9271:
	.loc 4 356 0
	stw 9,4(3)
	.loc 4 357 0
	stw 11,12(3)
	.loc 4 358 0
	stw 7,8(3)
	.loc 4 359 0
	stb 9,16(3)
.LVL2210:
.LBE9271:
.LBE9272:
.LBE9292:
.LBB9293:
.LBB9280:
	.loc 12 40 0
	stw 0,68(3)
	stw 0,64(3)
	stw 0,60(3)
	stw 0,56(3)
.LVL2211:
.LBE9280:
.LBE9293:
.LBB9294:
.LBB9295:
	stw 0,84(3)
	stw 0,80(3)
	stw 0,76(3)
	stw 0,72(3)
.LVL2212:
.LBE9295:
.LBE9294:
.LBB9296:
.LBB9277:
.LBB9276:
	.loc 4 356 0
	stw 9,136(3)
	.loc 4 357 0
	stw 11,144(3)
	.loc 4 358 0
	stw 8,140(3)
	.loc 4 359 0
	stb 9,148(3)
.LVL2213:
.LBE9276:
.LBE9277:
.LBE9296:
.LBB9297:
.LBB9285:
.LBB9284:
	.loc 4 356 0
	stw 9,168(3)
	.loc 4 357 0
	stw 11,176(3)
	.loc 4 358 0
	stw 10,172(3)
	.loc 4 359 0
	stb 9,180(3)
.LVL2214:
.LBE9284:
.LBE9285:
.LBE9297:
.LBB9298:
.LBB9288:
	.loc 3 105 0
	mr 3,14
.LVL2215:
.LBE9288:
.LBE9298:
.LBE9600:
	.loc 6 235 0
	stw 4,8(1)
	stw 5,12(1)
.LEHB126:
.LBB9601:
.LBB9299:
.LBB9289:
	.loc 3 105 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	bl _ZN8idWinVarC2Ev
.LEHE126:
.LVL2216:
	lis 29,_ZTV9idWinBool+8@ha
.LBE9289:
.LBE9299:
.LBB9300:
.LBB9301:
	addi 15,31,228
.LBE9301:
.LBE9300:
.LBB9305:
.LBB9290:
	la 29,_ZTV9idWinBool+8@l(29)
.LBE9290:
.LBE9305:
.LBB9306:
.LBB9302:
	mr 3,15
.LBE9302:
.LBE9306:
.LBB9307:
.LBB9291:
	stw 29,212(31)
.LVL2217:
.LEHB127:
.LBE9291:
.LBE9307:
.LBB9308:
.LBB9303:
	bl _ZN8idWinVarC2Ev
.LEHE127:
.LBE9303:
.LBE9308:
.LBB9309:
.LBB9310:
	addi 16,31,244
.LBE9310:
.LBE9309:
.LBB9313:
.LBB9304:
	stw 29,228(31)
.LVL2218:
.LBE9304:
.LBE9313:
.LBB9314:
.LBB9311:
	mr 3,16
.LEHB128:
	bl _ZN8idWinVarC2Ev
.LEHE128:
.LBE9311:
.LBE9314:
.LBB9315:
.LBB9316:
	.loc 3 379 0
	addi 17,31,260
.LBE9316:
.LBE9315:
.LBB9324:
.LBB9312:
	.loc 3 105 0
	stw 29,244(31)
.LVL2219:
.LBE9312:
.LBE9324:
.LBB9325:
.LBB9321:
	.loc 3 379 0
	mr 3,17
.LEHB129:
	bl _ZN8idWinVarC2Ev
.LEHE129:
	lis 9,_ZTV14idWinRectangle+8@ha
.LBB9317:
.LBB9318:
	.loc 12 40 0
	li 0,0
.LBE9318:
.LBE9317:
	.loc 3 379 0
	la 9,_ZTV14idWinRectangle+8@l(9)
.LBE9321:
.LBE9325:
.LBB9326:
.LBB9327:
	.loc 3 557 0
	addi 18,31,292
.LBE9327:
.LBE9326:
.LBB9332:
.LBB9322:
	.loc 3 379 0
	stw 9,260(31)
.LVL2220:
.LBE9322:
.LBE9332:
.LBB9333:
.LBB9328:
	.loc 3 557 0
	mr 3,18
.LBE9328:
.LBE9333:
.LBB9334:
.LBB9323:
.LBB9320:
.LBB9319:
	.loc 12 40 0
	stw 0,288(31)
	stw 0,284(31)
	stw 0,280(31)
	stw 0,276(31)
.LVL2221:
.LEHB130:
.LBE9319:
.LBE9320:
.LBE9323:
.LBE9334:
.LBB9335:
.LBB9329:
	.loc 3 557 0
	bl _ZN8idWinVarC2Ev
.LEHE130:
	lis 30,_ZTV9idWinVec4+8@ha
.LBE9329:
.LBE9335:
.LBB9336:
.LBB9337:
	addi 19,31,324
.LBE9337:
.LBE9336:
.LBB9341:
.LBB9330:
	la 30,_ZTV9idWinVec4+8@l(30)
.LBE9330:
.LBE9341:
.LBB9342:
.LBB9338:
	mr 3,19
.LBE9338:
.LBE9342:
.LBB9343:
.LBB9331:
	stw 30,292(31)
.LVL2222:
.LEHB131:
.LBE9331:
.LBE9343:
.LBB9344:
.LBB9339:
	bl _ZN8idWinVarC2Ev
.LEHE131:
.LBE9339:
.LBE9344:
.LBB9345:
.LBB9346:
	addi 20,31,356
.LBE9346:
.LBE9345:
.LBB9349:
.LBB9340:
	stw 30,324(31)
.LVL2223:
.LBE9340:
.LBE9349:
.LBB9350:
.LBB9347:
	mr 3,20
.LEHB132:
	bl _ZN8idWinVarC2Ev
.LEHE132:
.LBE9347:
.LBE9350:
.LBB9351:
.LBB9352:
	addi 21,31,388
.LBE9352:
.LBE9351:
.LBB9355:
.LBB9348:
	stw 30,356(31)
.LVL2224:
.LBE9348:
.LBE9355:
.LBB9356:
.LBB9353:
	mr 3,21
.LEHB133:
	bl _ZN8idWinVarC2Ev
.LEHE133:
.LBE9353:
.LBE9356:
.LBB9357:
.LBB9358:
	addi 22,31,420
.LBE9358:
.LBE9357:
.LBB9361:
.LBB9354:
	stw 30,388(31)
.LVL2225:
.LBE9354:
.LBE9361:
.LBB9362:
.LBB9359:
	mr 3,22
.LEHB134:
	bl _ZN8idWinVarC2Ev
.LEHE134:
.LBE9359:
.LBE9362:
.LBB9363:
.LBB9364:
	.loc 3 324 0
	addi 23,31,452
.LBE9364:
.LBE9363:
.LBB9368:
.LBB9360:
	.loc 3 557 0
	stw 30,420(31)
.LVL2226:
.LBE9360:
.LBE9368:
.LBB9369:
.LBB9365:
	.loc 3 324 0
	mr 3,23
.LEHB135:
	bl _ZN8idWinVarC2Ev
.LEHE135:
	lis 30,_ZTV10idWinFloat+8@ha
.LBE9365:
.LBE9369:
.LBB9370:
.LBB9371:
	addi 24,31,472
.LBE9371:
.LBE9370:
.LBB9375:
.LBB9366:
	la 30,_ZTV10idWinFloat+8@l(30)
.LBE9366:
.LBE9375:
.LBB9376:
.LBB9372:
	mr 3,24
.LBE9372:
.LBE9376:
.LBB9377:
.LBB9367:
	stw 30,452(31)
.LVL2227:
.LEHB136:
.LBE9367:
.LBE9377:
.LBB9378:
.LBB9373:
	bl _ZN8idWinVarC2Ev
.LEHE136:
.LBE9373:
.LBE9378:
.LBB9379:
.LBB9380:
	.loc 3 162 0
	addi 26,31,492
.LBE9380:
.LBE9379:
.LBB9399:
.LBB9374:
	.loc 3 324 0
	stw 30,472(31)
.LVL2228:
.LBE9374:
.LBE9399:
.LBB9400:
.LBB9396:
	.loc 3 162 0
	mr 3,26
.LEHB137:
	bl _ZN8idWinVarC2Ev
.LEHE137:
	lis 11,_ZTV8idWinStr+8@ha
.LBB9381:
.LBB9382:
.LBB9383:
	.loc 4 356 0
	li 0,0
.LBE9383:
.LBE9382:
.LBE9381:
	.loc 3 162 0
	la 11,_ZTV8idWinStr+8@l(11)
.LBB9392:
.LBB9388:
.LBB9384:
	.loc 4 358 0
	addi 9,31,520
.LBE9384:
.LBE9388:
.LBE9392:
	.loc 3 162 0
	stw 11,492(31)
.LVL2229:
.LBB9393:
.LBB9389:
.LBB9385:
	.loc 4 357 0
	li 11,20
.LBE9385:
.LBE9389:
.LBE9393:
.LBE9396:
.LBE9400:
.LBB9401:
.LBB9402:
.LBB9403:
.LBB9404:
	.loc 3 162 0
	addi 25,31,540
.LBE9404:
.LBE9403:
.LBE9402:
.LBE9401:
.LBB9443:
.LBB9397:
.LBB9394:
.LBB9390:
.LBB9386:
	.loc 4 356 0
	stw 0,508(31)
	.loc 4 357 0
	stw 11,516(31)
.LBE9386:
.LBE9390:
.LBE9394:
.LBE9397:
.LBE9443:
.LBB9444:
.LBB9436:
.LBB9422:
.LBB9417:
	.loc 3 162 0
	mr 3,25
.LBE9417:
.LBE9422:
.LBE9436:
.LBE9444:
.LBB9445:
.LBB9398:
.LBB9395:
.LBB9391:
.LBB9387:
	.loc 4 358 0
	stw 9,512(31)
	.loc 4 359 0
	stb 0,520(31)
.LVL2230:
.LEHB138:
.LBE9387:
.LBE9391:
.LBE9395:
.LBE9398:
.LBE9445:
.LBB9446:
.LBB9437:
.LBB9423:
.LBB9418:
	.loc 3 162 0
	bl _ZN8idWinVarC2Ev
.LEHE138:
.LVL2231:
.LBB9405:
.LBB9406:
.LBB9407:
	.loc 4 358 0
	addi 7,31,568
	.loc 4 356 0
	li 0,0
	.loc 4 358 0
	stw 7,560(31)
.LBE9407:
.LBE9406:
.LBE9405:
.LBE9418:
.LBE9423:
	.loc 3 722 0
	lis 7,_ZTV15idWinBackground+8@ha
.LBE9437:
.LBE9446:
.LBB9447:
.LBB9448:
	.loc 16 159 0
	li 9,16
.LBE9448:
.LBE9447:
.LBB9452:
.LBB9453:
	.loc 12 40 0
	li 11,0
.LBE9453:
.LBE9452:
.LBB9455:
.LBB9438:
.LBB9424:
.LBB9419:
.LBB9414:
.LBB9411:
.LBB9408:
	.loc 4 357 0
	li 10,20
.LBE9408:
.LBE9411:
.LBE9414:
.LBE9419:
.LBE9424:
.LBB9425:
.LBB9426:
.LBB9427:
	.loc 4 358 0
	addi 8,31,600
.LBE9427:
.LBE9426:
.LBE9425:
	.loc 3 722 0
	la 7,_ZTV15idWinBackground+8@l(7)
.LBB9432:
.LBB9420:
.LBB9415:
.LBB9412:
.LBB9409:
	.loc 4 356 0
	stw 0,556(31)
	.loc 4 357 0
	stw 10,564(31)
.LBE9409:
.LBE9412:
.LBE9415:
.LBE9420:
.LBE9432:
.LBE9438:
.LBE9455:
.LBB9456:
.LBB9457:
	.loc 15 102 0
	addi 28,31,888
.LBE9457:
.LBE9456:
.LBB9510:
.LBB9439:
.LBB9433:
.LBB9421:
.LBB9416:
.LBB9413:
.LBB9410:
	.loc 4 359 0
	stb 0,568(31)
.LBE9410:
.LBE9413:
.LBE9416:
.LBE9421:
.LBE9433:
.LBE9439:
.LBE9510:
.LBB9511:
.LBB9502:
.LBB9458:
.LBB9459:
	.loc 22 112 0
	mr 3,28
.LBE9459:
.LBE9458:
.LBE9502:
.LBE9511:
.LBB9512:
.LBB9440:
	.loc 3 722 0
	stw 7,540(31)
.LVL2232:
.LBE9440:
.LBE9512:
.LBB9513:
.LBB9503:
.LBB9463:
.LBB9460:
	.loc 22 112 0
	li 4,1024
.LBE9460:
.LBE9463:
.LBE9503:
.LBE9513:
.LBB9514:
.LBB9441:
.LBB9434:
.LBB9430:
.LBB9428:
	.loc 4 356 0
	stw 0,588(31)
.LBE9428:
.LBE9430:
.LBE9434:
.LBE9441:
.LBE9514:
.LBB9515:
.LBB9504:
.LBB9464:
.LBB9461:
	.loc 22 112 0
	li 5,1024
.LBE9461:
.LBE9464:
.LBE9504:
.LBE9515:
.LBB9516:
.LBB9442:
.LBB9435:
.LBB9431:
.LBB9429:
	.loc 4 357 0
	stw 10,596(31)
	.loc 4 358 0
	stw 8,592(31)
	.loc 4 359 0
	stb 0,600(31)
.LBE9429:
.LBE9431:
.LBE9435:
	.loc 3 723 0
	stw 0,620(31)
.LVL2233:
.LBE9442:
.LBE9516:
.LBB9517:
.LBB9451:
	.loc 16 159 0
	stw 9,632(31)
.LVL2234:
.LBB9449:
.LBB9450:
	.loc 16 197 0
	stw 0,636(31)
	.loc 16 198 0
	stw 0,624(31)
	.loc 16 199 0
	stw 0,628(31)
.LVL2235:
.LBE9450:
.LBE9449:
.LBE9451:
.LBE9517:
.LBB9518:
.LBB9519:
	.loc 16 159 0
	stw 9,648(31)
.LVL2236:
.LBB9520:
.LBB9521:
	.loc 16 197 0
	stw 0,652(31)
	.loc 16 198 0
	stw 0,640(31)
	.loc 16 199 0
	stw 0,644(31)
.LVL2237:
.LBE9521:
.LBE9520:
.LBE9519:
.LBE9518:
.LBB9522:
.LBB9454:
	.loc 12 40 0
	stw 11,668(31)
	stw 11,664(31)
	stw 11,660(31)
	stw 11,656(31)
.LVL2238:
.LBE9454:
.LBE9522:
.LBB9523:
.LBB9524:
	.loc 16 159 0
	stw 9,688(31)
.LVL2239:
.LBB9525:
.LBB9526:
	.loc 16 197 0
	stw 0,692(31)
	.loc 16 198 0
	stw 0,680(31)
	.loc 16 199 0
	stw 0,684(31)
.LVL2240:
.LBE9526:
.LBE9525:
.LBE9524:
.LBE9523:
.LBB9527:
.LBB9528:
	.loc 16 159 0
	stw 9,704(31)
.LVL2241:
.LBB9529:
.LBB9530:
	.loc 16 197 0
	stw 0,708(31)
	.loc 16 198 0
	stw 0,696(31)
	.loc 16 199 0
	stw 0,700(31)
.LVL2242:
.LBE9530:
.LBE9529:
.LBE9528:
.LBE9527:
.LBB9531:
.LBB9532:
	.loc 16 159 0
	stw 9,792(31)
.LVL2243:
.LBB9533:
.LBB9534:
	.loc 16 197 0
	stw 0,796(31)
	.loc 16 198 0
	stw 0,784(31)
	.loc 16 199 0
	stw 0,788(31)
.LVL2244:
.LBE9534:
.LBE9533:
.LBE9532:
.LBE9531:
.LBB9535:
.LBB9536:
	.loc 16 159 0
	stw 9,808(31)
.LVL2245:
.LBB9537:
.LBB9538:
	.loc 16 197 0
	stw 0,812(31)
	.loc 16 198 0
	stw 0,800(31)
	.loc 16 199 0
	stw 0,804(31)
.LVL2246:
.LBE9538:
.LBE9537:
.LBE9536:
.LBE9535:
.LBB9539:
.LBB9540:
	.loc 16 159 0
	stw 9,824(31)
.LVL2247:
.LBB9541:
.LBB9542:
	.loc 16 197 0
	stw 0,828(31)
	.loc 16 198 0
	stw 0,816(31)
	.loc 16 199 0
	stw 0,820(31)
.LVL2248:
.LBE9542:
.LBE9541:
.LBE9540:
.LBE9539:
.LBB9543:
.LBB9544:
	.loc 16 159 0
	stw 9,840(31)
.LVL2249:
.LBB9545:
.LBB9546:
	.loc 16 197 0
	stw 0,844(31)
	.loc 16 198 0
	stw 0,832(31)
	.loc 16 199 0
	stw 0,836(31)
.LVL2250:
.LBE9546:
.LBE9545:
.LBE9544:
.LBE9543:
.LBB9547:
.LBB9548:
	.loc 16 159 0
	stw 9,860(31)
.LVL2251:
.LBB9549:
.LBB9550:
	.loc 16 197 0
	stw 0,864(31)
	.loc 16 198 0
	stw 0,852(31)
	.loc 16 199 0
	stw 0,856(31)
.LVL2252:
.LBE9550:
.LBE9549:
.LBE9548:
.LBE9547:
.LBB9551:
.LBB9505:
.LBB9465:
.LBB9466:
	.loc 16 159 0
	stw 9,880(31)
.LVL2253:
.LBB9467:
.LBB9468:
	.loc 16 197 0
	stw 0,884(31)
	.loc 16 198 0
	stw 0,872(31)
	.loc 16 199 0
	stw 0,876(31)
.LEHB139:
.LBE9468:
.LBE9467:
.LBE9466:
.LBE9465:
.LBB9469:
.LBB9462:
	.loc 22 112 0
	bl _ZN11idHashIndex4InitEii
.LEHE139:
.LBE9462:
.LBE9469:
.LBB9470:
.LBB9471:
	.loc 16 319 0
	lwz 27,884(31)
	.loc 16 317 0
	li 0,4
.LBE9471:
.LBE9470:
.LBE9505:
.LBE9551:
	.loc 6 235 0
	addi 30,31,872
.LVL2254:
.LBB9552:
.LBB9506:
.LBB9483:
.LBB9480:
	.loc 16 317 0
	stw 0,880(31)
	.loc 16 319 0
	cmpwi 7,27,0
	beq- 7,.L1717
	.loc 16 321 0
	lwz 9,872(31)
	.loc 16 323 0
	lwz 0,876(31)
	.loc 16 321 0
	addi 3,9,3
.LVL2255:
	.loc 16 322 0
	srawi 3,3,2
	addze 3,3
.LVL2256:
	slwi 3,3,2
.LVL2257:
	.loc 16 323 0
	cmpw 7,3,0
	beq- 7,.L1717
.LVL2258:
.LBB9472:
.LBB9473:
	.loc 16 375 0
	cmpwi 7,3,0
	ble- 7,.L1774
.LVL2259:
	.loc 16 387 0
	cmpw 7,9,3
	.loc 16 386 0
	stw 3,876(31)
	.loc 16 387 0
	bgt- 7,.L1775
.L1719:
	.loc 16 392 0
	slwi 3,3,2
.LVL2260:
.LEHB140:
	bl _Znaj
.LVL2261:
	.loc 16 393 0
	lwz 0,872(31)
	.loc 16 392 0
	stw 3,884(31)
.LVL2262:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L1720
	.loc 6 235 0
	addi 11,27,-4
.LBE9473:
.LBE9472:
.LBE9480:
.LBE9483:
.LBE9506:
.LBE9552:
.LBE9601:
	.loc 16 393 0
	li 9,0
	b .L1721
.LVL2263:
.L1776:
.LBB9602:
.LBB9553:
.LBB9507:
.LBB9484:
.LBB9481:
.LBB9478:
.LBB9476:
	lwz 3,884(31)
.LVL2264:
.L1721:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL2265:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L1776
.LVL2266:
.L1720:
	.loc 16 399 0
	mr 3,27
	bl _ZdaPv
.LVL2267:
.L1717:
.LBE9476:
.LBE9478:
.LBE9481:
.LBE9484:
.LBB9485:
.LBB9486:
	.loc 22 371 0
	li 0,4
.LBE9486:
.LBE9485:
.LBB9488:
.LBB9489:
	.loc 22 341 0
	mr 3,28
.LBE9489:
.LBE9488:
.LBB9492:
.LBB9487:
	.loc 22 371 0
	stw 0,904(31)
.LVL2268:
.LBE9487:
.LBE9492:
.LBB9493:
.LBB9490:
	.loc 22 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE140:
	.loc 22 342 0
	li 0,32
.LBE9490:
.LBE9493:
.LBE9507:
.LBE9553:
.LBB9554:
.LBB9555:
	.loc 3 105 0
	addi 28,31,916
.LVL2269:
.LBE9555:
.LBE9554:
.LBB9558:
.LBB9508:
.LBB9494:
.LBB9491:
	.loc 22 342 0
	stw 0,888(31)
	.loc 22 343 0
	li 0,4
	stw 0,896(31)
.LVL2270:
.LBE9491:
.LBE9494:
.LBE9508:
.LBE9558:
.LBB9559:
.LBB9556:
	.loc 3 105 0
	mr 3,28
.LEHB141:
	bl _ZN8idWinVarC2Ev
.LEHE141:
.LBE9556:
.LBE9559:
	.loc 6 237 0
	lis 3,.LC71@ha
.LBB9560:
.LBB9557:
	.loc 3 105 0
	stw 29,916(31)
.LBE9557:
.LBE9560:
	.loc 6 237 0
	la 3,.LC71@l(3)
	li 4,932
	mr 5,31
.LEHB142:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
	.loc 6 240 0
	lwz 0,8(1)
	.loc 6 242 0
	mr 3,31
	.loc 6 240 0
	stw 0,728(31)
	.loc 6 241 0
	lwz 0,12(1)
	stw 0,732(31)
	.loc 6 242 0
	bl _ZN8idWindow10CommonInitEv
.LEHE142:
.LBE9602:
	.loc 6 243 0
	lwz 0,92(1)
	lwz 14,16(1)
.LVL2271:
	mtlr 0
	lwz 15,20(1)
.LVL2272:
	lwz 16,24(1)
.LVL2273:
	lwz 17,28(1)
.LVL2274:
	lwz 18,32(1)
.LVL2275:
	lwz 19,36(1)
.LVL2276:
	lwz 20,40(1)
.LVL2277:
	lwz 21,44(1)
.LVL2278:
	lwz 22,48(1)
.LVL2279:
	lwz 23,52(1)
.LVL2280:
	lwz 24,56(1)
.LVL2281:
	lwz 25,60(1)
.LVL2282:
	lwz 26,64(1)
.LVL2283:
	lwz 27,68(1)
	lwz 28,72(1)
.LVL2284:
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
.LVL2285:
	addi 1,1,88
	.cfi_remember_state
.LCFI418:
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
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL2286:
.L1775:
.LCFI419:
	.cfi_restore_state
.LBB9603:
.LBB9561:
.LBB9509:
.LBB9495:
.LBB9482:
.LBB9479:
.LBB9477:
	.loc 16 388 0
	stw 3,872(31)
	b .L1719
.LVL2287:
.L1774:
.LBB9474:
.LBB9475:
	.loc 16 194 0
	mr 3,27
.LVL2288:
	bl _ZdaPv
	.loc 16 197 0
	li 0,0
	stw 0,884(31)
	.loc 16 198 0
	stw 0,872(31)
	.loc 16 199 0
	stw 0,876(31)
	b .L1717
.LVL2289:
.L1771:
	mr 29,3
.LVL2290:
.LBE9475:
.LBE9474:
.LBE9477:
.LBE9479:
.LBE9482:
.LBE9495:
.LBB9496:
.LBB9497:
.LBB9498:
	.loc 22 130 0
	mr 3,28
	bl _ZN11idHashIndex4FreeEv
.LVL2291:
.L1725:
.LBE9498:
.LBE9497:
.LBE9496:
.LBB9499:
.LBB9500:
.LBB9501:
	.loc 16 181 0
	mr 3,30
	mr 30,29
	bl _ZN6idListIP10idRegisterE5ClearEv
.LVL2292:
.L1727:
.LBE9501:
.LBE9500:
.LBE9499:
.LBE9509:
.LBE9561:
.LBB9562:
.LBB9563:
.LBB9564:
	addi 3,31,852
	bl _ZN6idListIP12rvNamedEventE5ClearEv
.LVL2293:
.LBE9564:
.LBE9563:
.LBE9562:
.LBB9565:
.LBB9566:
.LBB9567:
	addi 3,31,832
	bl _ZN6idListIfE5ClearEv
.LVL2294:
.LBE9567:
.LBE9566:
.LBE9565:
.LBB9568:
.LBB9569:
.LBB9570:
	addi 3,31,816
	bl _ZN6idListI8wexpOp_tE5ClearEv
.LVL2295:
.LBE9570:
.LBE9569:
.LBE9568:
.LBB9571:
.LBB9572:
.LBB9573:
	addi 3,31,800
	bl _ZN6idListI16idTransitionDataE5ClearEv
.LVL2296:
.LBE9573:
.LBE9572:
.LBE9571:
.LBB9574:
.LBB9575:
.LBB9576:
	addi 3,31,784
	bl _ZN6idListIP15idTimeLineEventE5ClearEv
.LVL2297:
.LBE9576:
.LBE9575:
.LBE9574:
.LBB9577:
.LBB9578:
.LBB9579:
	addi 3,31,696
	bl _ZN6idListI9drawWin_tE5ClearEv
.LVL2298:
.LBE9579:
.LBE9578:
.LBE9577:
.LBB9580:
.LBB9581:
.LBB9582:
	addi 3,31,680
	bl _ZN6idListIP8idWindowE5ClearEv
.LVL2299:
.LBE9582:
.LBE9581:
.LBE9580:
.LBB9583:
.LBB9584:
.LBB9585:
	addi 3,31,640
	bl _ZN6idListIP8idWinVarE5ClearEv
.LVL2300:
.LBE9585:
.LBE9584:
.LBE9583:
.LBB9586:
.LBB9587:
.LBB9588:
	addi 3,31,624
	bl _ZN6idListIP8idWinVarE5ClearEv
.LBE9588:
.LBE9587:
.LBE9586:
	.loc 6 235 0
	mr 3,25
	bl _ZN15idWinBackgroundD1Ev
.LVL2301:
.L1739:
	mr 3,26
	bl _ZN8idWinStrD1Ev
.LVL2302:
.L1740:
	mr 3,24
	bl _ZN10idWinFloatD1Ev
.LVL2303:
.L1741:
	mr 3,23
	bl _ZN10idWinFloatD1Ev
.LVL2304:
.L1742:
	mr 3,22
	bl _ZN9idWinVec4D1Ev
.LVL2305:
.L1743:
	mr 3,21
	bl _ZN9idWinVec4D1Ev
.LVL2306:
.L1744:
	mr 3,20
	bl _ZN9idWinVec4D1Ev
.LVL2307:
.L1745:
	mr 3,19
	bl _ZN9idWinVec4D1Ev
.LVL2308:
.L1746:
	mr 3,18
	bl _ZN9idWinVec4D1Ev
.LVL2309:
.L1747:
	mr 3,17
	bl _ZN14idWinRectangleD1Ev
.LVL2310:
.L1748:
	mr 3,16
	bl _ZN9idWinBoolD1Ev
.LVL2311:
.L1749:
	mr 3,15
	bl _ZN9idWinBoolD1Ev
.LVL2312:
.L1750:
	mr 3,14
	bl _ZN9idWinBoolD1Ev
.LVL2313:
.L1751:
.LBB9589:
.LBB9590:
.LBB9591:
	.loc 4 501 0
	addi 3,31,168
	bl _ZN5idStr8FreeDataEv
.LVL2314:
.LBE9591:
.LBE9590:
.LBE9589:
.LBB9592:
.LBB9593:
.LBB9594:
	addi 3,31,136
	bl _ZN5idStr8FreeDataEv
.LVL2315:
.LBE9594:
.LBE9593:
.LBE9592:
.LBB9595:
.LBB9596:
.LBB9597:
	addi 3,31,4
	bl _ZN5idStr8FreeDataEv
	mr 3,30
.LEHB143:
	bl _Unwind_Resume
.LEHE143:
.LVL2316:
.L1770:
	mr 29,3
	addi 30,31,872
	b .L1725
.LVL2317:
.L1767:
	mr 30,3
	b .L1739
.LVL2318:
.L1766:
	mr 30,3
	b .L1740
.LVL2319:
.L1765:
	mr 30,3
	b .L1741
.LVL2320:
.L1764:
	mr 30,3
	b .L1742
.LVL2321:
.L1763:
	mr 30,3
	b .L1743
.LVL2322:
.L1762:
	mr 30,3
	b .L1744
.LVL2323:
.L1761:
	mr 30,3
	b .L1745
.LVL2324:
.L1760:
	mr 30,3
	b .L1746
.LVL2325:
.L1759:
	mr 30,3
	b .L1747
.LVL2326:
.L1758:
	mr 30,3
	b .L1748
.LVL2327:
.L1757:
	mr 30,3
	b .L1749
.LVL2328:
.L1756:
	mr 30,3
	b .L1750
.LVL2329:
.L1755:
	mr 30,3
	b .L1751
.LVL2330:
.L1769:
	mr 29,3
.LBE9597:
.LBE9596:
.LBE9595:
	.loc 6 235 0
	mr 3,28
	bl _ZN9idWinBoolD1Ev
.L1729:
	mr 3,30
	mr 30,29
.LVL2331:
	bl _ZN14idRegisterListD1Ev
.LVL2332:
	b .L1727
.L1768:
	mr 29,3
	b .L1729
.LBE9603:
	.cfi_endproc
.LFE2884:
	.section	.gcc_except_table
.LLSDA2884:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2884-.LLSDACSB2884
.LLSDACSB2884:
	.uleb128 .LEHB126-.LFB2884
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1755-.LFB2884
	.uleb128 0
	.uleb128 .LEHB127-.LFB2884
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1756-.LFB2884
	.uleb128 0
	.uleb128 .LEHB128-.LFB2884
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1757-.LFB2884
	.uleb128 0
	.uleb128 .LEHB129-.LFB2884
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1758-.LFB2884
	.uleb128 0
	.uleb128 .LEHB130-.LFB2884
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1759-.LFB2884
	.uleb128 0
	.uleb128 .LEHB131-.LFB2884
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1760-.LFB2884
	.uleb128 0
	.uleb128 .LEHB132-.LFB2884
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1761-.LFB2884
	.uleb128 0
	.uleb128 .LEHB133-.LFB2884
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L1762-.LFB2884
	.uleb128 0
	.uleb128 .LEHB134-.LFB2884
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1763-.LFB2884
	.uleb128 0
	.uleb128 .LEHB135-.LFB2884
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1764-.LFB2884
	.uleb128 0
	.uleb128 .LEHB136-.LFB2884
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1765-.LFB2884
	.uleb128 0
	.uleb128 .LEHB137-.LFB2884
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1766-.LFB2884
	.uleb128 0
	.uleb128 .LEHB138-.LFB2884
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1767-.LFB2884
	.uleb128 0
	.uleb128 .LEHB139-.LFB2884
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L1770-.LFB2884
	.uleb128 0
	.uleb128 .LEHB140-.LFB2884
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1771-.LFB2884
	.uleb128 0
	.uleb128 .LEHB141-.LFB2884
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L1768-.LFB2884
	.uleb128 0
	.uleb128 .LEHB142-.LFB2884
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L1769-.LFB2884
	.uleb128 0
	.uleb128 .LEHB143-.LFB2884
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
.LLSDACSE2884:
	.section	".text"
	.size	_ZN8idWindowC2EP15idDeviceContextP20idUserInterfaceLocal, .-_ZN8idWindowC2EP15idDeviceContextP20idUserInterfaceLocal
	.align 2
	.globl _ZN8idWindowC2EP20idUserInterfaceLocal
	.type	_ZN8idWindowC2EP20idUserInterfaceLocal, @function
_ZN8idWindowC2EP20idUserInterfaceLocal:
.LFB2881:
	.loc 6 220 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2881
.LVL2333:
	mflr 0
	stwu 1,-88(1)
.LCFI420:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
.LBB9771:
	lis 6,_ZTV8idWindow+8@ha
.LBB9772:
.LBB9773:
.LBB9774:
	.loc 4 356 0
	li 9,0
	.loc 4 357 0
	li 11,20
	.loc 4 358 0
	addi 7,3,16
.LBE9774:
.LBE9773:
.LBE9772:
.LBE9771:
	.loc 6 220 0
	stw 0,92(1)
.LBB10102:
.LBB9777:
.LBB9778:
.LBB9779:
	.loc 4 358 0
	addi 8,3,148
.LBE9779:
.LBE9778:
.LBE9777:
.LBB9782:
.LBB9783:
	.loc 12 40 0
	li 0,0
	.cfi_offset 65, 4
.LBE9783:
.LBE9782:
.LBB9785:
.LBB9786:
.LBB9787:
	.loc 4 358 0
	addi 10,3,180
.LBE9787:
.LBE9786:
.LBE9785:
	.loc 6 220 0
	la 6,_ZTV8idWindow+8@l(6)
.LBE10102:
	stw 14,16(1)
	stw 31,84(1)
.LBB10103:
.LBB9790:
.LBB9791:
	.loc 3 105 0
	addi 14,3,212
	.cfi_offset 31, -4
	.cfi_offset 14, -72
.LBE9791:
.LBE9790:
.LBE10103:
	.loc 6 220 0
	stw 15,20(1)
	mr 31,3
	stw 16,24(1)
	stw 17,28(1)
	stw 18,32(1)
	stw 19,36(1)
	stw 20,40(1)
	stw 21,44(1)
	stw 22,48(1)
	stw 23,52(1)
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 27,68(1)
	stw 28,72(1)
	stw 29,76(1)
	stw 30,80(1)
.LBB10104:
	.loc 6 220 0
	stw 6,0(3)
.LVL2334:
.LBB9796:
.LBB9776:
.LBB9775:
	.loc 4 356 0
	stw 9,4(3)
	.loc 4 357 0
	stw 11,12(3)
	.loc 4 358 0
	stw 7,8(3)
	.loc 4 359 0
	stb 9,16(3)
.LVL2335:
.LBE9775:
.LBE9776:
.LBE9796:
.LBB9797:
.LBB9784:
	.loc 12 40 0
	stw 0,68(3)
	stw 0,64(3)
	stw 0,60(3)
	stw 0,56(3)
.LVL2336:
.LBE9784:
.LBE9797:
.LBB9798:
.LBB9799:
	stw 0,84(3)
	stw 0,80(3)
	stw 0,76(3)
	stw 0,72(3)
.LVL2337:
.LBE9799:
.LBE9798:
.LBB9800:
.LBB9781:
.LBB9780:
	.loc 4 356 0
	stw 9,136(3)
	.loc 4 357 0
	stw 11,144(3)
	.loc 4 358 0
	stw 8,140(3)
	.loc 4 359 0
	stb 9,148(3)
.LVL2338:
.LBE9780:
.LBE9781:
.LBE9800:
.LBB9801:
.LBB9789:
.LBB9788:
	.loc 4 356 0
	stw 9,168(3)
	.loc 4 357 0
	stw 11,176(3)
	.loc 4 358 0
	stw 10,172(3)
	.loc 4 359 0
	stb 9,180(3)
.LVL2339:
.LBE9788:
.LBE9789:
.LBE9801:
.LBB9802:
.LBB9792:
	.loc 3 105 0
	mr 3,14
.LVL2340:
.LBE9792:
.LBE9802:
.LBE10104:
	.loc 6 220 0
	stw 4,8(1)
.LEHB144:
.LBB10105:
.LBB9803:
.LBB9793:
	.loc 3 105 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	bl _ZN8idWinVarC2Ev
.LEHE144:
.LVL2341:
	lis 29,_ZTV9idWinBool+8@ha
.LBE9793:
.LBE9803:
.LBB9804:
.LBB9805:
	addi 15,31,228
.LBE9805:
.LBE9804:
.LBB9809:
.LBB9794:
	la 29,_ZTV9idWinBool+8@l(29)
.LBE9794:
.LBE9809:
.LBB9810:
.LBB9806:
	mr 3,15
.LBE9806:
.LBE9810:
.LBB9811:
.LBB9795:
	stw 29,212(31)
.LVL2342:
.LEHB145:
.LBE9795:
.LBE9811:
.LBB9812:
.LBB9807:
	bl _ZN8idWinVarC2Ev
.LEHE145:
.LBE9807:
.LBE9812:
.LBB9813:
.LBB9814:
	addi 16,31,244
.LBE9814:
.LBE9813:
.LBB9817:
.LBB9808:
	stw 29,228(31)
.LVL2343:
.LBE9808:
.LBE9817:
.LBB9818:
.LBB9815:
	mr 3,16
.LEHB146:
	bl _ZN8idWinVarC2Ev
.LEHE146:
.LBE9815:
.LBE9818:
.LBB9819:
.LBB9820:
	.loc 3 379 0
	addi 17,31,260
.LBE9820:
.LBE9819:
.LBB9828:
.LBB9816:
	.loc 3 105 0
	stw 29,244(31)
.LVL2344:
.LBE9816:
.LBE9828:
.LBB9829:
.LBB9825:
	.loc 3 379 0
	mr 3,17
.LEHB147:
	bl _ZN8idWinVarC2Ev
.LEHE147:
	lis 9,_ZTV14idWinRectangle+8@ha
.LBB9821:
.LBB9822:
	.loc 12 40 0
	li 0,0
.LBE9822:
.LBE9821:
	.loc 3 379 0
	la 9,_ZTV14idWinRectangle+8@l(9)
.LBE9825:
.LBE9829:
.LBB9830:
.LBB9831:
	.loc 3 557 0
	addi 18,31,292
.LBE9831:
.LBE9830:
.LBB9836:
.LBB9826:
	.loc 3 379 0
	stw 9,260(31)
.LVL2345:
.LBE9826:
.LBE9836:
.LBB9837:
.LBB9832:
	.loc 3 557 0
	mr 3,18
.LBE9832:
.LBE9837:
.LBB9838:
.LBB9827:
.LBB9824:
.LBB9823:
	.loc 12 40 0
	stw 0,288(31)
	stw 0,284(31)
	stw 0,280(31)
	stw 0,276(31)
.LVL2346:
.LEHB148:
.LBE9823:
.LBE9824:
.LBE9827:
.LBE9838:
.LBB9839:
.LBB9833:
	.loc 3 557 0
	bl _ZN8idWinVarC2Ev
.LEHE148:
	lis 30,_ZTV9idWinVec4+8@ha
.LBE9833:
.LBE9839:
.LBB9840:
.LBB9841:
	addi 19,31,324
.LBE9841:
.LBE9840:
.LBB9845:
.LBB9834:
	la 30,_ZTV9idWinVec4+8@l(30)
.LBE9834:
.LBE9845:
.LBB9846:
.LBB9842:
	mr 3,19
.LBE9842:
.LBE9846:
.LBB9847:
.LBB9835:
	stw 30,292(31)
.LVL2347:
.LEHB149:
.LBE9835:
.LBE9847:
.LBB9848:
.LBB9843:
	bl _ZN8idWinVarC2Ev
.LEHE149:
.LBE9843:
.LBE9848:
.LBB9849:
.LBB9850:
	addi 20,31,356
.LBE9850:
.LBE9849:
.LBB9853:
.LBB9844:
	stw 30,324(31)
.LVL2348:
.LBE9844:
.LBE9853:
.LBB9854:
.LBB9851:
	mr 3,20
.LEHB150:
	bl _ZN8idWinVarC2Ev
.LEHE150:
.LBE9851:
.LBE9854:
.LBB9855:
.LBB9856:
	addi 21,31,388
.LBE9856:
.LBE9855:
.LBB9859:
.LBB9852:
	stw 30,356(31)
.LVL2349:
.LBE9852:
.LBE9859:
.LBB9860:
.LBB9857:
	mr 3,21
.LEHB151:
	bl _ZN8idWinVarC2Ev
.LEHE151:
.LBE9857:
.LBE9860:
.LBB9861:
.LBB9862:
	addi 22,31,420
.LBE9862:
.LBE9861:
.LBB9865:
.LBB9858:
	stw 30,388(31)
.LVL2350:
.LBE9858:
.LBE9865:
.LBB9866:
.LBB9863:
	mr 3,22
.LEHB152:
	bl _ZN8idWinVarC2Ev
.LEHE152:
.LBE9863:
.LBE9866:
.LBB9867:
.LBB9868:
	.loc 3 324 0
	addi 23,31,452
.LBE9868:
.LBE9867:
.LBB9872:
.LBB9864:
	.loc 3 557 0
	stw 30,420(31)
.LVL2351:
.LBE9864:
.LBE9872:
.LBB9873:
.LBB9869:
	.loc 3 324 0
	mr 3,23
.LEHB153:
	bl _ZN8idWinVarC2Ev
.LEHE153:
	lis 30,_ZTV10idWinFloat+8@ha
.LBE9869:
.LBE9873:
.LBB9874:
.LBB9875:
	addi 24,31,472
.LBE9875:
.LBE9874:
.LBB9879:
.LBB9870:
	la 30,_ZTV10idWinFloat+8@l(30)
.LBE9870:
.LBE9879:
.LBB9880:
.LBB9876:
	mr 3,24
.LBE9876:
.LBE9880:
.LBB9881:
.LBB9871:
	stw 30,452(31)
.LVL2352:
.LEHB154:
.LBE9871:
.LBE9881:
.LBB9882:
.LBB9877:
	bl _ZN8idWinVarC2Ev
.LEHE154:
.LBE9877:
.LBE9882:
.LBB9883:
.LBB9884:
	.loc 3 162 0
	addi 26,31,492
.LBE9884:
.LBE9883:
.LBB9903:
.LBB9878:
	.loc 3 324 0
	stw 30,472(31)
.LVL2353:
.LBE9878:
.LBE9903:
.LBB9904:
.LBB9900:
	.loc 3 162 0
	mr 3,26
.LEHB155:
	bl _ZN8idWinVarC2Ev
.LEHE155:
	lis 11,_ZTV8idWinStr+8@ha
.LBB9885:
.LBB9886:
.LBB9887:
	.loc 4 356 0
	li 0,0
.LBE9887:
.LBE9886:
.LBE9885:
	.loc 3 162 0
	la 11,_ZTV8idWinStr+8@l(11)
.LBB9896:
.LBB9892:
.LBB9888:
	.loc 4 358 0
	addi 9,31,520
.LBE9888:
.LBE9892:
.LBE9896:
	.loc 3 162 0
	stw 11,492(31)
.LVL2354:
.LBB9897:
.LBB9893:
.LBB9889:
	.loc 4 357 0
	li 11,20
.LBE9889:
.LBE9893:
.LBE9897:
.LBE9900:
.LBE9904:
.LBB9905:
.LBB9906:
.LBB9907:
.LBB9908:
	.loc 3 162 0
	addi 25,31,540
.LBE9908:
.LBE9907:
.LBE9906:
.LBE9905:
.LBB9947:
.LBB9901:
.LBB9898:
.LBB9894:
.LBB9890:
	.loc 4 356 0
	stw 0,508(31)
	.loc 4 357 0
	stw 11,516(31)
.LBE9890:
.LBE9894:
.LBE9898:
.LBE9901:
.LBE9947:
.LBB9948:
.LBB9940:
.LBB9926:
.LBB9921:
	.loc 3 162 0
	mr 3,25
.LBE9921:
.LBE9926:
.LBE9940:
.LBE9948:
.LBB9949:
.LBB9902:
.LBB9899:
.LBB9895:
.LBB9891:
	.loc 4 358 0
	stw 9,512(31)
	.loc 4 359 0
	stb 0,520(31)
.LVL2355:
.LEHB156:
.LBE9891:
.LBE9895:
.LBE9899:
.LBE9902:
.LBE9949:
.LBB9950:
.LBB9941:
.LBB9927:
.LBB9922:
	.loc 3 162 0
	bl _ZN8idWinVarC2Ev
.LEHE156:
.LVL2356:
.LBB9909:
.LBB9910:
.LBB9911:
	.loc 4 358 0
	addi 7,31,568
	.loc 4 356 0
	li 0,0
	.loc 4 358 0
	stw 7,560(31)
.LBE9911:
.LBE9910:
.LBE9909:
.LBE9922:
.LBE9927:
	.loc 3 722 0
	lis 7,_ZTV15idWinBackground+8@ha
.LBE9941:
.LBE9950:
.LBB9951:
.LBB9952:
	.loc 16 159 0
	li 9,16
.LBE9952:
.LBE9951:
.LBB9956:
.LBB9957:
	.loc 12 40 0
	li 11,0
.LBE9957:
.LBE9956:
.LBB9959:
.LBB9942:
.LBB9928:
.LBB9923:
.LBB9918:
.LBB9915:
.LBB9912:
	.loc 4 357 0
	li 10,20
.LBE9912:
.LBE9915:
.LBE9918:
.LBE9923:
.LBE9928:
.LBB9929:
.LBB9930:
.LBB9931:
	.loc 4 358 0
	addi 8,31,600
.LBE9931:
.LBE9930:
.LBE9929:
	.loc 3 722 0
	la 7,_ZTV15idWinBackground+8@l(7)
.LBB9936:
.LBB9924:
.LBB9919:
.LBB9916:
.LBB9913:
	.loc 4 356 0
	stw 0,556(31)
	.loc 4 357 0
	stw 10,564(31)
.LBE9913:
.LBE9916:
.LBE9919:
.LBE9924:
.LBE9936:
.LBE9942:
.LBE9959:
.LBB9960:
.LBB9961:
	.loc 15 102 0
	addi 28,31,888
.LBE9961:
.LBE9960:
.LBB10014:
.LBB9943:
.LBB9937:
.LBB9925:
.LBB9920:
.LBB9917:
.LBB9914:
	.loc 4 359 0
	stb 0,568(31)
.LBE9914:
.LBE9917:
.LBE9920:
.LBE9925:
.LBE9937:
.LBE9943:
.LBE10014:
.LBB10015:
.LBB10006:
.LBB9962:
.LBB9963:
	.loc 22 112 0
	mr 3,28
.LBE9963:
.LBE9962:
.LBE10006:
.LBE10015:
.LBB10016:
.LBB9944:
	.loc 3 722 0
	stw 7,540(31)
.LVL2357:
.LBE9944:
.LBE10016:
.LBB10017:
.LBB10007:
.LBB9967:
.LBB9964:
	.loc 22 112 0
	li 4,1024
.LBE9964:
.LBE9967:
.LBE10007:
.LBE10017:
.LBB10018:
.LBB9945:
.LBB9938:
.LBB9934:
.LBB9932:
	.loc 4 356 0
	stw 0,588(31)
.LBE9932:
.LBE9934:
.LBE9938:
.LBE9945:
.LBE10018:
.LBB10019:
.LBB10008:
.LBB9968:
.LBB9965:
	.loc 22 112 0
	li 5,1024
.LBE9965:
.LBE9968:
.LBE10008:
.LBE10019:
.LBB10020:
.LBB9946:
.LBB9939:
.LBB9935:
.LBB9933:
	.loc 4 357 0
	stw 10,596(31)
	.loc 4 358 0
	stw 8,592(31)
	.loc 4 359 0
	stb 0,600(31)
.LBE9933:
.LBE9935:
.LBE9939:
	.loc 3 723 0
	stw 0,620(31)
.LVL2358:
.LBE9946:
.LBE10020:
.LBB10021:
.LBB9955:
	.loc 16 159 0
	stw 9,632(31)
.LVL2359:
.LBB9953:
.LBB9954:
	.loc 16 197 0
	stw 0,636(31)
	.loc 16 198 0
	stw 0,624(31)
	.loc 16 199 0
	stw 0,628(31)
.LVL2360:
.LBE9954:
.LBE9953:
.LBE9955:
.LBE10021:
.LBB10022:
.LBB10023:
	.loc 16 159 0
	stw 9,648(31)
.LVL2361:
.LBB10024:
.LBB10025:
	.loc 16 197 0
	stw 0,652(31)
	.loc 16 198 0
	stw 0,640(31)
	.loc 16 199 0
	stw 0,644(31)
.LVL2362:
.LBE10025:
.LBE10024:
.LBE10023:
.LBE10022:
.LBB10026:
.LBB9958:
	.loc 12 40 0
	stw 11,668(31)
	stw 11,664(31)
	stw 11,660(31)
	stw 11,656(31)
.LVL2363:
.LBE9958:
.LBE10026:
.LBB10027:
.LBB10028:
	.loc 16 159 0
	stw 9,688(31)
.LVL2364:
.LBB10029:
.LBB10030:
	.loc 16 197 0
	stw 0,692(31)
	.loc 16 198 0
	stw 0,680(31)
	.loc 16 199 0
	stw 0,684(31)
.LVL2365:
.LBE10030:
.LBE10029:
.LBE10028:
.LBE10027:
.LBB10031:
.LBB10032:
	.loc 16 159 0
	stw 9,704(31)
.LVL2366:
.LBB10033:
.LBB10034:
	.loc 16 197 0
	stw 0,708(31)
	.loc 16 198 0
	stw 0,696(31)
	.loc 16 199 0
	stw 0,700(31)
.LVL2367:
.LBE10034:
.LBE10033:
.LBE10032:
.LBE10031:
.LBB10035:
.LBB10036:
	.loc 16 159 0
	stw 9,792(31)
.LVL2368:
.LBB10037:
.LBB10038:
	.loc 16 197 0
	stw 0,796(31)
	.loc 16 198 0
	stw 0,784(31)
	.loc 16 199 0
	stw 0,788(31)
.LVL2369:
.LBE10038:
.LBE10037:
.LBE10036:
.LBE10035:
.LBB10039:
.LBB10040:
	.loc 16 159 0
	stw 9,808(31)
.LVL2370:
.LBB10041:
.LBB10042:
	.loc 16 197 0
	stw 0,812(31)
	.loc 16 198 0
	stw 0,800(31)
	.loc 16 199 0
	stw 0,804(31)
.LVL2371:
.LBE10042:
.LBE10041:
.LBE10040:
.LBE10039:
.LBB10043:
.LBB10044:
	.loc 16 159 0
	stw 9,824(31)
.LVL2372:
.LBB10045:
.LBB10046:
	.loc 16 197 0
	stw 0,828(31)
	.loc 16 198 0
	stw 0,816(31)
	.loc 16 199 0
	stw 0,820(31)
.LVL2373:
.LBE10046:
.LBE10045:
.LBE10044:
.LBE10043:
.LBB10047:
.LBB10048:
	.loc 16 159 0
	stw 9,840(31)
.LVL2374:
.LBB10049:
.LBB10050:
	.loc 16 197 0
	stw 0,844(31)
	.loc 16 198 0
	stw 0,832(31)
	.loc 16 199 0
	stw 0,836(31)
.LVL2375:
.LBE10050:
.LBE10049:
.LBE10048:
.LBE10047:
.LBB10051:
.LBB10052:
	.loc 16 159 0
	stw 9,860(31)
.LVL2376:
.LBB10053:
.LBB10054:
	.loc 16 197 0
	stw 0,864(31)
	.loc 16 198 0
	stw 0,852(31)
	.loc 16 199 0
	stw 0,856(31)
.LVL2377:
.LBE10054:
.LBE10053:
.LBE10052:
.LBE10051:
.LBB10055:
.LBB10009:
.LBB9969:
.LBB9970:
	.loc 16 159 0
	stw 9,880(31)
.LVL2378:
.LBB9971:
.LBB9972:
	.loc 16 197 0
	stw 0,884(31)
	.loc 16 198 0
	stw 0,872(31)
	.loc 16 199 0
	stw 0,876(31)
.LEHB157:
.LBE9972:
.LBE9971:
.LBE9970:
.LBE9969:
.LBB9973:
.LBB9966:
	.loc 22 112 0
	bl _ZN11idHashIndex4InitEii
.LEHE157:
.LBE9966:
.LBE9973:
.LBB9974:
.LBB9975:
	.loc 16 319 0
	lwz 27,884(31)
	.loc 16 317 0
	li 0,4
.LBE9975:
.LBE9974:
.LBE10009:
.LBE10055:
	.loc 6 220 0
	addi 30,31,872
.LVL2379:
.LBB10056:
.LBB10010:
.LBB9987:
.LBB9984:
	.loc 16 317 0
	stw 0,880(31)
	.loc 16 319 0
	cmpwi 7,27,0
	beq- 7,.L1778
	.loc 16 321 0
	lwz 9,872(31)
	.loc 16 323 0
	lwz 0,876(31)
	.loc 16 321 0
	addi 3,9,3
.LVL2380:
	.loc 16 322 0
	srawi 3,3,2
	addze 3,3
.LVL2381:
	slwi 3,3,2
.LVL2382:
	.loc 16 323 0
	cmpw 7,3,0
	beq- 7,.L1778
.LVL2383:
.LBB9976:
.LBB9977:
	.loc 16 375 0
	cmpwi 7,3,0
	ble- 7,.L1835
.LVL2384:
	.loc 16 387 0
	cmpw 7,9,3
	.loc 16 386 0
	stw 3,876(31)
	.loc 16 387 0
	bgt- 7,.L1836
.L1780:
	.loc 16 392 0
	slwi 3,3,2
.LVL2385:
.LEHB158:
	bl _Znaj
.LVL2386:
	.loc 16 393 0
	lwz 0,872(31)
	.loc 16 392 0
	stw 3,884(31)
.LVL2387:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L1781
	.loc 6 220 0
	addi 11,27,-4
.LBE9977:
.LBE9976:
.LBE9984:
.LBE9987:
.LBE10010:
.LBE10056:
.LBE10105:
	.loc 16 393 0
	li 9,0
	b .L1782
.LVL2388:
.L1837:
.LBB10106:
.LBB10057:
.LBB10011:
.LBB9988:
.LBB9985:
.LBB9982:
.LBB9980:
	lwz 3,884(31)
.LVL2389:
.L1782:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL2390:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L1837
.LVL2391:
.L1781:
	.loc 16 399 0
	mr 3,27
	bl _ZdaPv
.LVL2392:
.L1778:
.LBE9980:
.LBE9982:
.LBE9985:
.LBE9988:
.LBB9989:
.LBB9990:
	.loc 22 371 0
	li 0,4
.LBE9990:
.LBE9989:
.LBB9992:
.LBB9993:
	.loc 22 341 0
	mr 3,28
.LBE9993:
.LBE9992:
.LBB9996:
.LBB9991:
	.loc 22 371 0
	stw 0,904(31)
.LVL2393:
.LBE9991:
.LBE9996:
.LBB9997:
.LBB9994:
	.loc 22 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE158:
	.loc 22 342 0
	li 0,32
.LBE9994:
.LBE9997:
.LBE10011:
.LBE10057:
.LBB10058:
.LBB10059:
	.loc 3 105 0
	addi 28,31,916
.LVL2394:
.LBE10059:
.LBE10058:
.LBB10062:
.LBB10012:
.LBB9998:
.LBB9995:
	.loc 22 342 0
	stw 0,888(31)
	.loc 22 343 0
	li 0,4
	stw 0,896(31)
.LVL2395:
.LBE9995:
.LBE9998:
.LBE10012:
.LBE10062:
.LBB10063:
.LBB10060:
	.loc 3 105 0
	mr 3,28
.LEHB159:
	bl _ZN8idWinVarC2Ev
.LEHE159:
.LBE10060:
.LBE10063:
	.loc 6 222 0
	lis 3,.LC72@ha
.LBB10064:
.LBB10061:
	.loc 3 105 0
	stw 29,916(31)
.LBE10061:
.LBE10064:
	.loc 6 222 0
	la 3,.LC72@l(3)
	li 4,932
.LEHB160:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
	.loc 6 225 0
	li 0,0
	.loc 6 227 0
	mr 3,31
	.loc 6 225 0
	stw 0,728(31)
	.loc 6 226 0
	lwz 0,8(1)
	stw 0,732(31)
	.loc 6 227 0
	bl _ZN8idWindow10CommonInitEv
.LEHE160:
.LBE10106:
	.loc 6 228 0
	lwz 0,92(1)
	lwz 14,16(1)
.LVL2396:
	mtlr 0
	lwz 15,20(1)
.LVL2397:
	lwz 16,24(1)
.LVL2398:
	lwz 17,28(1)
.LVL2399:
	lwz 18,32(1)
.LVL2400:
	lwz 19,36(1)
.LVL2401:
	lwz 20,40(1)
.LVL2402:
	lwz 21,44(1)
.LVL2403:
	lwz 22,48(1)
.LVL2404:
	lwz 23,52(1)
.LVL2405:
	lwz 24,56(1)
.LVL2406:
	lwz 25,60(1)
.LVL2407:
	lwz 26,64(1)
.LVL2408:
	lwz 27,68(1)
	lwz 28,72(1)
.LVL2409:
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
.LVL2410:
	addi 1,1,88
	.cfi_remember_state
.LCFI421:
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
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL2411:
.L1836:
.LCFI422:
	.cfi_restore_state
.LBB10107:
.LBB10065:
.LBB10013:
.LBB9999:
.LBB9986:
.LBB9983:
.LBB9981:
	.loc 16 388 0
	stw 3,872(31)
	b .L1780
.LVL2412:
.L1835:
.LBB9978:
.LBB9979:
	.loc 16 194 0
	mr 3,27
.LVL2413:
	bl _ZdaPv
	.loc 16 197 0
	li 0,0
	stw 0,884(31)
	.loc 16 198 0
	stw 0,872(31)
	.loc 16 199 0
	stw 0,876(31)
	b .L1778
.LVL2414:
.L1832:
	mr 29,3
.LVL2415:
.LBE9979:
.LBE9978:
.LBE9981:
.LBE9983:
.LBE9986:
.LBE9999:
.LBB10000:
.LBB10001:
.LBB10002:
	.loc 22 130 0
	mr 3,28
	bl _ZN11idHashIndex4FreeEv
.LVL2416:
.L1786:
.LBE10002:
.LBE10001:
.LBE10000:
.LBB10003:
.LBB10004:
.LBB10005:
	.loc 16 181 0
	mr 3,30
	mr 30,29
	bl _ZN6idListIP10idRegisterE5ClearEv
.LVL2417:
.L1788:
.LBE10005:
.LBE10004:
.LBE10003:
.LBE10013:
.LBE10065:
.LBB10066:
.LBB10067:
.LBB10068:
	addi 3,31,852
	bl _ZN6idListIP12rvNamedEventE5ClearEv
.LVL2418:
.LBE10068:
.LBE10067:
.LBE10066:
.LBB10069:
.LBB10070:
.LBB10071:
	addi 3,31,832
	bl _ZN6idListIfE5ClearEv
.LVL2419:
.LBE10071:
.LBE10070:
.LBE10069:
.LBB10072:
.LBB10073:
.LBB10074:
	addi 3,31,816
	bl _ZN6idListI8wexpOp_tE5ClearEv
.LVL2420:
.LBE10074:
.LBE10073:
.LBE10072:
.LBB10075:
.LBB10076:
.LBB10077:
	addi 3,31,800
	bl _ZN6idListI16idTransitionDataE5ClearEv
.LVL2421:
.LBE10077:
.LBE10076:
.LBE10075:
.LBB10078:
.LBB10079:
.LBB10080:
	addi 3,31,784
	bl _ZN6idListIP15idTimeLineEventE5ClearEv
.LVL2422:
.LBE10080:
.LBE10079:
.LBE10078:
.LBB10081:
.LBB10082:
.LBB10083:
	addi 3,31,696
	bl _ZN6idListI9drawWin_tE5ClearEv
.LVL2423:
.LBE10083:
.LBE10082:
.LBE10081:
.LBB10084:
.LBB10085:
.LBB10086:
	addi 3,31,680
	bl _ZN6idListIP8idWindowE5ClearEv
.LVL2424:
.LBE10086:
.LBE10085:
.LBE10084:
.LBB10087:
.LBB10088:
.LBB10089:
	addi 3,31,640
	bl _ZN6idListIP8idWinVarE5ClearEv
.LVL2425:
.LBE10089:
.LBE10088:
.LBE10087:
.LBB10090:
.LBB10091:
.LBB10092:
	addi 3,31,624
	bl _ZN6idListIP8idWinVarE5ClearEv
.LBE10092:
.LBE10091:
.LBE10090:
	.loc 6 220 0
	mr 3,25
	bl _ZN15idWinBackgroundD1Ev
.LVL2426:
.L1800:
	mr 3,26
	bl _ZN8idWinStrD1Ev
.LVL2427:
.L1801:
	mr 3,24
	bl _ZN10idWinFloatD1Ev
.LVL2428:
.L1802:
	mr 3,23
	bl _ZN10idWinFloatD1Ev
.LVL2429:
.L1803:
	mr 3,22
	bl _ZN9idWinVec4D1Ev
.LVL2430:
.L1804:
	mr 3,21
	bl _ZN9idWinVec4D1Ev
.LVL2431:
.L1805:
	mr 3,20
	bl _ZN9idWinVec4D1Ev
.LVL2432:
.L1806:
	mr 3,19
	bl _ZN9idWinVec4D1Ev
.LVL2433:
.L1807:
	mr 3,18
	bl _ZN9idWinVec4D1Ev
.LVL2434:
.L1808:
	mr 3,17
	bl _ZN14idWinRectangleD1Ev
.LVL2435:
.L1809:
	mr 3,16
	bl _ZN9idWinBoolD1Ev
.LVL2436:
.L1810:
	mr 3,15
	bl _ZN9idWinBoolD1Ev
.LVL2437:
.L1811:
	mr 3,14
	bl _ZN9idWinBoolD1Ev
.LVL2438:
.L1812:
.LBB10093:
.LBB10094:
.LBB10095:
	.loc 4 501 0
	addi 3,31,168
	bl _ZN5idStr8FreeDataEv
.LVL2439:
.LBE10095:
.LBE10094:
.LBE10093:
.LBB10096:
.LBB10097:
.LBB10098:
	addi 3,31,136
	bl _ZN5idStr8FreeDataEv
.LVL2440:
.LBE10098:
.LBE10097:
.LBE10096:
.LBB10099:
.LBB10100:
.LBB10101:
	addi 3,31,4
	bl _ZN5idStr8FreeDataEv
	mr 3,30
.LEHB161:
	bl _Unwind_Resume
.LEHE161:
.LVL2441:
.L1831:
	mr 29,3
	addi 30,31,872
	b .L1786
.LVL2442:
.L1828:
	mr 30,3
	b .L1800
.LVL2443:
.L1827:
	mr 30,3
	b .L1801
.LVL2444:
.L1826:
	mr 30,3
	b .L1802
.LVL2445:
.L1825:
	mr 30,3
	b .L1803
.LVL2446:
.L1824:
	mr 30,3
	b .L1804
.LVL2447:
.L1823:
	mr 30,3
	b .L1805
.LVL2448:
.L1822:
	mr 30,3
	b .L1806
.LVL2449:
.L1821:
	mr 30,3
	b .L1807
.LVL2450:
.L1820:
	mr 30,3
	b .L1808
.LVL2451:
.L1819:
	mr 30,3
	b .L1809
.LVL2452:
.L1818:
	mr 30,3
	b .L1810
.LVL2453:
.L1817:
	mr 30,3
	b .L1811
.LVL2454:
.L1816:
	mr 30,3
	b .L1812
.LVL2455:
.L1830:
	mr 29,3
.LBE10101:
.LBE10100:
.LBE10099:
	.loc 6 220 0
	mr 3,28
	bl _ZN9idWinBoolD1Ev
.L1790:
	mr 3,30
	mr 30,29
.LVL2456:
	bl _ZN14idRegisterListD1Ev
.LVL2457:
	b .L1788
.L1829:
	mr 29,3
	b .L1790
.LBE10107:
	.cfi_endproc
.LFE2881:
	.section	.gcc_except_table
.LLSDA2881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2881-.LLSDACSB2881
.LLSDACSB2881:
	.uleb128 .LEHB144-.LFB2881
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L1816-.LFB2881
	.uleb128 0
	.uleb128 .LEHB145-.LFB2881
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L1817-.LFB2881
	.uleb128 0
	.uleb128 .LEHB146-.LFB2881
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L1818-.LFB2881
	.uleb128 0
	.uleb128 .LEHB147-.LFB2881
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L1819-.LFB2881
	.uleb128 0
	.uleb128 .LEHB148-.LFB2881
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L1820-.LFB2881
	.uleb128 0
	.uleb128 .LEHB149-.LFB2881
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L1821-.LFB2881
	.uleb128 0
	.uleb128 .LEHB150-.LFB2881
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L1822-.LFB2881
	.uleb128 0
	.uleb128 .LEHB151-.LFB2881
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L1823-.LFB2881
	.uleb128 0
	.uleb128 .LEHB152-.LFB2881
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L1824-.LFB2881
	.uleb128 0
	.uleb128 .LEHB153-.LFB2881
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L1825-.LFB2881
	.uleb128 0
	.uleb128 .LEHB154-.LFB2881
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L1826-.LFB2881
	.uleb128 0
	.uleb128 .LEHB155-.LFB2881
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L1827-.LFB2881
	.uleb128 0
	.uleb128 .LEHB156-.LFB2881
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L1828-.LFB2881
	.uleb128 0
	.uleb128 .LEHB157-.LFB2881
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L1831-.LFB2881
	.uleb128 0
	.uleb128 .LEHB158-.LFB2881
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L1832-.LFB2881
	.uleb128 0
	.uleb128 .LEHB159-.LFB2881
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L1829-.LFB2881
	.uleb128 0
	.uleb128 .LEHB160-.LFB2881
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L1830-.LFB2881
	.uleb128 0
	.uleb128 .LEHB161-.LFB2881
	.uleb128 .LEHE161-.LEHB161
	.uleb128 0
	.uleb128 0
.LLSDACSE2881:
	.section	".text"
	.size	_ZN8idWindowC2EP20idUserInterfaceLocal, .-_ZN8idWindowC2EP20idUserInterfaceLocal
	.section	.text._ZN6idListI16idTransitionDataE6ResizeEi,"axG",@progbits,_ZN6idListI16idTransitionDataE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListI16idTransitionDataE6ResizeEi
	.type	_ZN6idListI16idTransitionDataE6ResizeEi, @function
_ZN6idListI16idTransitionDataE6ResizeEi:
.LFB3349:
	.loc 16 368 0
	.cfi_startproc
.LVL2458:
	stwu 1,-24(1)
.LCFI423:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
.LBB10119:
	.loc 16 375 0
	mr. 31,4
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBE10119:
	.loc 16 368 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 28,8(1)
	stw 30,16(1)
.LBB10132:
	.loc 16 375 0
	ble- 0,.L1848
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,31
	beq- 7,.L1838
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 28,12(3)
.LVL2459:
	.loc 16 387 0
	cmpw 7,31,0
	.loc 16 386 0
	stw 31,4(3)
	.loc 16 387 0
	blt- 7,.L1849
.L1842:
	.loc 16 392 0
	mulli 3,31,136
.LVL2460:
	bl _Znaj
.LVL2461:
	cmpwi 7,31,0
	beq- 7,.L1843
	lis 9,.LC19@ha
.LBB10120:
.LBB10121:
.LBB10122:
.LBB10123:
.LBB10124:
	.file 23 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Extrapolate.h"
	.loc 23 92 0
	mtctr 31
	lwz 30,.LC19@l(9)
.LBE10124:
.LBE10123:
.LBE10122:
.LBE10121:
.LBE10120:
	.loc 16 368 0
	addi 11,3,20
	addi 9,3,56
.LBB10129:
.LBB10128:
.LBB10127:
.LBB10126:
.LBB10125:
	.loc 23 87 0
	li 4,1
	.loc 23 88 0
	li 10,0
	.loc 23 89 0
	li 0,0
.L1844:
.LVL2462:
	.loc 23 93 0
	li 7,0
	.loc 23 87 0
	stw 4,0(9)
	.loc 23 88 0
	stw 10,8(9)
	stw 10,4(9)
	.loc 23 89 0
	stw 0,12(9)
	stw 0,16(9)
	stw 0,20(9)
	stw 0,24(9)
	.loc 23 90 0
	stw 0,28(9)
	stw 0,32(9)
	stw 0,36(9)
	stw 0,40(9)
	.loc 23 91 0
	stw 0,44(9)
	stw 0,48(9)
	stw 0,52(9)
	stw 0,56(9)
	.loc 23 92 0
	stw 30,60(9)
	.loc 23 93 0
	stw 7,64(9)
	stw 7,68(9)
	stw 7,72(9)
	stw 7,76(9)
.LBE10125:
.LBE10126:
	.loc 21 171 0
	stw 10,0(11)
	stw 10,-4(11)
	stw 10,-8(11)
	stw 10,-12(11)
	.loc 21 172 0
	stw 0,-32(9)
	stw 0,-28(9)
	stw 0,-24(9)
	stw 0,-20(9)
	.loc 21 173 0
	addi 9,9,136
.LVL2463:
	lwz 5,4(11)
	lwz 7,12(11)
	lwz 8,16(11)
	lwz 6,8(11)
	stw 5,20(11)
	stw 6,24(11)
	stw 7,28(11)
	stw 8,32(11)
	addi 11,11,136
.LBE10127:
.LBE10128:
.LBE10129:
	.loc 16 392 0
	bdnz .L1844
.LVL2464:
.L1843:
	.loc 16 393 0 discriminator 4
	lwz 0,0(29)
	.loc 16 392 0 discriminator 4
	stw 3,12(29)
.LVL2465:
	.loc 16 393 0 discriminator 4
	cmpwi 7,0,0
	ble- 7,.L1845
	.loc 16 393 0 is_stmt 0
	li 31,0
.LVL2466:
	li 30,0
	b .L1846
.LVL2467:
.L1850:
	lwz 3,12(29)
.LVL2468:
.L1846:
	.loc 16 394 0 is_stmt 1 discriminator 2
	add 3,3,31
	add 4,28,31
	li 5,136
	.loc 16 393 0 discriminator 2
	addi 30,30,1
	.loc 16 394 0 discriminator 2
	bl memcpy
.LVL2469:
	.loc 16 393 0 discriminator 2
	lwz 0,0(29)
	addi 31,31,136
	cmpw 7,0,30
	bgt+ 7,.L1850
.LVL2470:
.L1845:
	.loc 16 398 0
	cmpwi 7,28,0
	beq- 7,.L1838
	.loc 16 399 0 discriminator 1
	mr 3,28
	bl _ZdaPv
.LVL2471:
.L1838:
.LBE10132:
	.loc 16 401 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL2472:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI424:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2473:
.L1849:
.LCFI425:
	.cfi_restore_state
.LBB10133:
	.loc 16 388 0
	stw 31,0(3)
	b .L1842
.LVL2474:
.L1848:
.LBB10130:
.LBB10131:
	.loc 16 193 0
	lwz 3,12(3)
.LVL2475:
	cmpwi 7,3,0
	beq- 7,.L1840
	.loc 16 194 0
	bl _ZdaPv
.LVL2476:
.L1840:
	.loc 16 197 0
	li 0,0
	stw 0,12(29)
	.loc 16 198 0
	stw 0,0(29)
	.loc 16 199 0
	stw 0,4(29)
	b .L1838
.LBE10131:
.LBE10130:
.LBE10133:
	.cfi_endproc
.LFE3349:
	.size	_ZN6idListI16idTransitionDataE6ResizeEi, .-_ZN6idListI16idTransitionDataE6ResizeEi
	.section	".text"
	.align 2
	.globl _ZN8idWindow13AddTransitionEP8idWinVar6idVec4S2_iff
	.type	_ZN8idWindow13AddTransitionEP8idWinVar6idVec4S2_iff, @function
_ZN8idWindow13AddTransitionEP8idWinVar6idVec4S2_iff:
.LFB2965:
	.loc 6 2647 0
	.cfi_startproc
.LVL2477:
	mflr 0
	stwu 1,-176(1)
.LCFI426:
	.cfi_def_cfa_offset 176
	.cfi_register 65, 0
.LBB10167:
	.loc 6 2650 0
	lis 9,0x4330
	xoris 7,7,0x8000
.LVL2478:
.LBE10167:
	.loc 6 2647 0
	stw 31,172(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,180(1)
	stw 30,168(1)
.LBB10283:
	.loc 6 4264 0
	lwz 11,732(3)
	.loc 6 2650 0
	lwz 0,200(11)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB10168:
.LBB10169:
.LBB10170:
.LBB10171:
.LBB10172:
	.loc 23 88 0
	lis 11,.LC1@ha
	lfs 9,.LC1@l(11)
.LBE10172:
.LBE10171:
.LBE10170:
.LBE10169:
.LBE10168:
	.loc 6 2650 0
	lis 11,.LC8@ha
	lfs 0,.LC8@l(11)
.LBB10195:
.LBB10189:
.LBB10183:
.LBB10178:
.LBB10173:
	.loc 23 87 0
	li 11,1
.LBE10173:
.LBE10178:
.LBE10183:
.LBE10189:
.LBE10195:
	.loc 6 2650 0
	xoris 0,0,0x8000
.LBB10196:
.LBB10190:
.LBB10184:
.LBB10179:
.LBB10174:
	.loc 23 87 0
	stw 11,64(1)
	.loc 23 92 0
	lis 11,.LC19@ha
.LBE10174:
.LBE10179:
.LBE10184:
.LBE10190:
.LBE10196:
	.loc 6 2650 0
	stw 0,156(1)
	stw 9,152(1)
.LBB10197:
.LBB10191:
.LBB10185:
.LBB10180:
.LBB10175:
	.loc 23 89 0
	li 0,0
	.loc 23 92 0
	lwz 11,.LC19@l(11)
.LBE10175:
.LBE10180:
.LBE10185:
.LBE10191:
.LBE10197:
.LBB10198:
.LBB10199:
.LBB10200:
.LBB10201:
	.loc 16 663 0
	lfs 10,0(5)
.LVL2479:
	lfs 11,4(5)
.LVL2480:
	lfs 12,8(5)
.LVL2481:
	lfs 13,12(5)
.LVL2482:
.LBE10201:
.LBE10200:
.LBE10199:
.LBE10198:
.LBB10209:
.LBB10192:
.LBB10186:
.LBB10181:
.LBB10176:
	.loc 23 89 0
	stw 0,76(1)
	stw 0,80(1)
	stw 0,84(1)
	stw 0,88(1)
	.loc 23 90 0
	stw 0,92(1)
	stw 0,96(1)
	stw 0,100(1)
	stw 0,104(1)
	.loc 23 91 0
	stw 0,108(1)
	stw 0,112(1)
	stw 0,116(1)
	stw 0,120(1)
	.loc 23 92 0
	stw 11,124(1)
	.loc 23 93 0
	stw 0,128(1)
	stw 0,132(1)
	.loc 23 88 0
	stfs 9,72(1)
	stfs 9,68(1)
	.loc 23 93 0
	stw 0,136(1)
.LBE10176:
.LBE10181:
.LBE10186:
.LBE10192:
.LBE10209:
	.loc 6 2650 0
	stw 9,160(1)
	stw 7,164(1)
	lfd 8,152(1)
	lfd 7,160(1)
	fsub 8,8,0
.LBB10210:
.LBB10193:
.LBB10187:
.LBB10182:
.LBB10177:
	.loc 23 93 0
	stw 0,140(1)
.LBE10177:
.LBE10182:
.LBE10187:
.LBE10193:
.LBE10210:
	.loc 6 2650 0
	fsub 0,7,0
.LBB10211:
.LBB10212:
	.loc 21 189 0
	lwz 10,0(6)
	lwz 11,4(6)
.LBE10212:
.LBE10211:
	.loc 6 2650 0
	frsp 8,8
.LBB10271:
.LBB10263:
	.loc 21 189 0
	lwz 9,8(6)
.LBE10263:
.LBE10271:
	.loc 6 2650 0
	frsp 0,0
.LBB10272:
.LBB10264:
	.loc 21 189 0
	lwz 0,12(6)
.LBE10264:
.LBE10272:
.LBB10273:
.LBB10194:
.LBB10188:
	.loc 21 171 0
	stfs 9,24(1)
.LBE10188:
.LBE10194:
.LBE10273:
	.loc 6 2649 0
	stw 4,8(1)
.LBB10274:
.LBB10265:
	.loc 21 191 0
	fcmpu 7,0,9
	.loc 21 185 0
	stfs 8,16(1)
.LBE10265:
.LBE10274:
	.loc 6 2650 0
	fmuls 1,0,1
.LVL2483:
.LBB10275:
.LBB10266:
	.loc 21 188 0
	stfs 10,32(1)
	.loc 21 191 0
	cror 30,28,30
.LBE10266:
.LBE10275:
	.loc 6 2650 0
	fmuls 2,0,2
.LVL2484:
.LBB10276:
.LBB10267:
	.loc 21 188 0
	stfs 11,36(1)
	.loc 21 186 0
	stfs 1,20(1)
	.loc 21 187 0
	stfs 2,28(1)
	.loc 21 188 0
	stfs 12,40(1)
	stfs 13,44(1)
	.loc 21 189 0
	stw 10,48(1)
	stw 11,52(1)
	stw 9,56(1)
	stw 0,60(1)
	.loc 21 191 0
	beq- 7,.L1852
	.loc 21 195 0
	fadds 9,1,2
	fcmpu 7,0,9
	blt- 7,.L1853
	fsubs 0,0,1
.LVL2485:
.L1854:
	.loc 21 199 0
	fsubs 0,0,2
	.loc 21 200 0
	lis 9,.LC34@ha
	lfs 7,.LC34@l(9)
	lis 9,.LC73@ha
.LBB10213:
.LBB10214:
	.loc 13 897 0
	lfs 3,0(6)
.LBE10214:
.LBE10213:
	.loc 21 200 0
	fmadds 9,9,7,0
	lfs 7,.LC73@l(9)
	.loc 21 202 0
	lis 9,.LC1@ha
.LBB10218:
.LBB10215:
	.loc 13 897 0
	lfs 4,4(6)
	lfs 5,8(6)
	fsubs 3,3,10
.LBE10215:
.LBE10218:
	.loc 21 200 0
	fdivs 9,7,9
	.loc 21 202 0
	lfs 7,.LC1@l(9)
.LBB10219:
.LBB10216:
	.loc 13 897 0
	lfs 6,12(6)
.LBE10216:
.LBE10219:
	.loc 21 199 0
	stfs 0,24(1)
.LVL2486:
	.loc 21 202 0
	fcmpu 7,1,7
.LBB10220:
.LBB10217:
	.loc 13 897 0
	fsubs 4,4,11
	fsubs 5,5,12
	fsubs 6,6,13
.LBE10217:
.LBE10220:
.LBB10221:
.LBB10222:
	.loc 13 905 0
	fmuls 3,3,9
	fmuls 4,4,9
	fmuls 5,5,9
	fmuls 9,6,9
.LVL2487:
.LBE10222:
.LBE10221:
	.loc 21 202 0
	bne- 7,.L1862
	.loc 21 204 0
	fcmpu 7,0,7
.LBB10223:
.LBB10224:
	.loc 13 897 0
	fsubs 1,10,10
.LBE10224:
.LBE10223:
	.loc 21 204 0
	bne- 7,.L1863
.LVL2488:
.LBB10228:
.LBB10229:
	.loc 23 103 0
	li 0,8
.LBE10229:
.LBE10228:
.LBB10232:
.LBB10233:
	.loc 13 897 0
	fsubs 6,11,11
	fsubs 7,12,12
.LBE10233:
.LBE10232:
.LBB10235:
.LBB10230:
	.loc 23 103 0
	stw 0,64(1)
.LBE10230:
.LBE10235:
.LBB10236:
.LBB10234:
	.loc 13 897 0
	fsubs 0,13,13
.LBE10234:
.LBE10236:
.LBB10237:
.LBB10231:
	.loc 23 104 0
	stfs 8,68(1)
	.loc 23 105 0
	stfs 2,72(1)
	.loc 23 106 0
	stfs 10,76(1)
	stfs 11,80(1)
	stfs 12,84(1)
	stfs 13,88(1)
.LBE10231:
.LBE10237:
.LBE10267:
	.loc 23 107 0
	stfs 1,92(1)
.LVL2489:
.L1860:
	stfs 6,96(1)
	stfs 7,100(1)
	stfs 0,104(1)
.LVL2490:
.L1861:
	.loc 23 108 0
	stfs 3,108(1)
	stfs 4,112(1)
	stfs 5,116(1)
	stfs 9,120(1)
	.loc 23 110 0
	stfs 10,128(1)
	stfs 11,132(1)
	stfs 12,136(1)
	stfs 13,140(1)
.LVL2491:
.L1852:
.LBE10276:
.LBB10277:
.LBB10205:
	.loc 16 655 0
	lwz 0,812(31)
.LBE10205:
.LBE10277:
	.loc 6 2651 0
	addi 30,31,800
.LVL2492:
.LBB10278:
.LBB10206:
	.loc 16 655 0
	cmpwi 7,0,0
	beq- 7,.L1864
.LVL2493:
.L1857:
.LBB10203:
	.loc 16 659 0
	lwz 4,800(31)
	lwz 0,804(31)
	cmpw 7,4,0
	beq- 7,.L1865
.LBE10203:
	.loc 16 669 0
	mulli 0,4,136
	lwz 3,812(31)
	addi 4,1,8
	li 5,136
	add 3,3,0
	bl memcpy
	.loc 16 670 0
	lwz 9,800(31)
	addi 0,9,1
	stw 0,800(31)
.LBE10206:
.LBE10278:
.LBE10283:
	.loc 6 2652 0
	lwz 0,180(1)
	lwz 30,168(1)
.LVL2494:
	mtlr 0
	lwz 31,172(1)
.LVL2495:
	addi 1,1,176
	.cfi_remember_state
.LCFI427:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2496:
.L1853:
.LCFI428:
	.cfi_restore_state
.LBB10284:
.LBB10279:
.LBB10268:
	.loc 21 196 0
	fmuls 1,0,1
.LVL2497:
	fdivs 1,1,9
	.loc 21 197 0
	fsubs 0,0,1
.LVL2498:
	.loc 21 196 0
	stfs 1,20(1)
	.loc 21 197 0
	fadds 9,1,0
	stfs 0,28(1)
	fmr 2,0
.LVL2499:
	b .L1854
.LVL2500:
.L1865:
.LBE10268:
.LBE10279:
.LBB10280:
.LBB10207:
.LBB10204:
.LBB10202:
	.loc 16 662 0
	lwz 0,808(31)
	cmpwi 7,0,0
	bne- 7,.L1859
	.loc 16 663 0
	li 0,16
	stw 0,808(31)
.L1859:
	.loc 16 665 0
	add 4,0,4
.LVL2501:
	.loc 16 666 0
	mr 3,30
	divw 4,4,0
.LVL2502:
	mullw 4,4,0
	bl _ZN6idListI16idTransitionDataE6ResizeEi
	lwz 4,800(31)
.LBE10202:
.LBE10204:
	.loc 16 669 0
	lwz 3,812(31)
	li 5,136
	mulli 0,4,136
	addi 4,1,8
	add 3,3,0
	bl memcpy
	.loc 16 670 0
	lwz 9,800(31)
	addi 0,9,1
	stw 0,800(31)
.LBE10207:
.LBE10280:
.LBE10284:
	.loc 6 2652 0
	lwz 0,180(1)
	lwz 30,168(1)
.LVL2503:
	mtlr 0
	lwz 31,172(1)
.LVL2504:
	addi 1,1,176
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI429:
	.cfi_def_cfa_offset 0
	blr
.LVL2505:
.L1862:
.LCFI430:
	.cfi_restore_state
.LBB10285:
.LBB10281:
.LBB10269:
.LBB10238:
.LBB10239:
	.loc 13 897 0
	fsubs 2,10,10
.LBE10239:
.LBE10238:
.LBB10243:
.LBB10244:
	.loc 23 103 0
	li 0,4
.LBE10244:
.LBE10243:
.LBB10248:
.LBB10240:
	.loc 13 897 0
	fsubs 6,11,11
.LBE10240:
.LBE10248:
.LBB10249:
.LBB10245:
	.loc 23 103 0
	stw 0,64(1)
.LBE10245:
.LBE10249:
.LBB10250:
.LBB10241:
	.loc 13 897 0
	fsubs 7,12,12
.LBE10241:
.LBE10250:
.LBB10251:
.LBB10246:
	.loc 23 104 0
	stfs 8,68(1)
.LBE10246:
.LBE10251:
.LBB10252:
.LBB10242:
	.loc 13 897 0
	fsubs 0,13,13
.LBE10242:
.LBE10252:
.LBB10253:
.LBB10247:
	.loc 23 105 0
	stfs 1,72(1)
	.loc 23 106 0
	stfs 10,76(1)
	stfs 11,80(1)
	stfs 12,84(1)
	stfs 13,88(1)
.LBE10247:
.LBE10253:
.LBE10269:
	.loc 23 107 0
	stfs 2,92(1)
	b .L1860
.LVL2506:
.L1863:
.LBB10270:
.LBB10254:
.LBB10225:
	.loc 13 897 0
	fsubs 2,11,11
.LBE10225:
.LBE10254:
.LBB10255:
.LBB10256:
	.loc 23 103 0
	li 0,2
.LBE10256:
.LBE10255:
.LBB10259:
.LBB10226:
	.loc 13 897 0
	fsubs 6,12,12
.LBE10226:
.LBE10259:
.LBB10260:
.LBB10257:
	.loc 23 103 0
	stw 0,64(1)
.LBE10257:
.LBE10260:
.LBB10261:
.LBB10227:
	.loc 13 897 0
	fsubs 7,13,13
.LBE10227:
.LBE10261:
.LBB10262:
.LBB10258:
	.loc 23 104 0
	stfs 8,68(1)
	.loc 23 105 0
	stfs 0,72(1)
	.loc 23 106 0
	stfs 10,76(1)
	stfs 11,80(1)
	stfs 12,84(1)
	stfs 13,88(1)
.LBE10258:
.LBE10262:
.LBE10270:
	.loc 23 107 0
	stfs 1,92(1)
	stfs 2,96(1)
	stfs 6,100(1)
	stfs 7,104(1)
	b .L1861
.LVL2507:
.L1864:
.LBE10281:
.LBB10282:
.LBB10208:
	.loc 16 656 0
	lwz 4,808(31)
.LVL2508:
	mr 3,30
.LVL2509:
	bl _ZN6idListI16idTransitionDataE6ResizeEi
.LVL2510:
	b .L1857
.LBE10208:
.LBE10282:
.LBE10285:
	.cfi_endproc
.LFE2965:
	.size	_ZN8idWindow13AddTransitionEP8idWinVar6idVec4S2_iff, .-_ZN8idWindow13AddTransitionEP8idWinVar6idVec4S2_iff
	.align 2
	.globl _ZN8idWindow10TransitionEv
	.type	_ZN8idWindow10TransitionEv, @function
_ZN8idWindow10TransitionEv:
.LFB2922:
	.loc 6 1024 0
	.cfi_startproc
.LVL2511:
	mflr 0
	stwu 1,-160(1)
.LCFI431:
	.cfi_def_cfa_offset 160
	.cfi_register 65, 0
	mfcr 12
	stw 26,104(1)
	mr 26,3
	.cfi_offset 26, -56
	.cfi_register 70, 12
	stw 0,164(1)
	stfd 28,128(1)
	stfd 29,136(1)
	stfd 30,144(1)
	stfd 31,152(1)
	stw 16,64(1)
	stw 17,68(1)
	stw 18,72(1)
	stw 19,76(1)
	stw 20,80(1)
	stw 21,84(1)
	stw 22,88(1)
	stw 23,92(1)
	stw 24,96(1)
	stw 25,100(1)
	stw 27,108(1)
	stw 28,112(1)
	stw 29,116(1)
	stw 30,120(1)
	stw 31,124(1)
	stw 12,60(1)
.LBB10635:
.LBB10636:
.LBB10637:
.LBB10638:
.LBB10639:
	.loc 6 4264 0
	lwz 24,800(3)
	.cfi_offset 70, -100
	.cfi_offset 31, -36
	.cfi_offset 30, -40
	.cfi_offset 29, -44
	.cfi_offset 28, -48
	.cfi_offset 27, -52
	.cfi_offset 25, -60
	.cfi_offset 24, -64
	.cfi_offset 23, -68
	.cfi_offset 22, -72
	.cfi_offset 21, -76
	.cfi_offset 20, -80
	.cfi_offset 19, -84
	.cfi_offset 18, -88
	.cfi_offset 17, -92
	.cfi_offset 16, -96
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 65, 4
.LVL2512:
.LBE10639:
.LBE10638:
.LBE10637:
	.loc 6 1028 0
	cmpwi 7,24,0
	ble- 7,.L1867
	lis 9,.LC8@ha
.LBB11043:
	.loc 6 1031 0
	lis 22,_ZTI8idWinVar@ha
	lis 21,_ZTI9idWinVec4@ha
	.loc 6 1034 0
	lis 17,_ZTI14idWinRectangle@ha
	.loc 6 1036 0
	lis 18,_ZTI10idWinFloat@ha
.LBB10660:
.LBB10661:
.LBB10662:
.LBB10663:
	.loc 10 189 0
	lis 20,.LC2@ha
.LBE10663:
.LBE10662:
.LBE10661:
.LBE10660:
	.loc 6 1058 0
	lis 19,.LC75@ha
	.loc 6 1039 0
	lfs 31,.LC8@l(9)
.LBE11043:
	.loc 6 1028 0
	li 29,0
	li 23,1
	li 28,0
.LBB11044:
	.loc 6 1031 0
	la 22,_ZTI8idWinVar@l(22)
	la 21,_ZTI9idWinVec4@l(21)
	.loc 6 1034 0
	la 17,_ZTI14idWinRectangle@l(17)
	.loc 6 1036 0
	la 18,_ZTI10idWinFloat@l(18)
.LBB10692:
.LBB10686:
.LBB10666:
.LBB10664:
	.loc 10 189 0
	la 20,.LC2@l(20)
.LBE10664:
.LBE10666:
.LBE10686:
.LBE10692:
	.loc 6 1058 0
	la 19,.LC75@l(19)
	b .L1965
.LVL2513:
.L2034:
	.loc 6 1039 0 discriminator 1
	beq- 4,.L1871
	.loc 6 1040 0 discriminator 4
	cmpwi 7,30,0
	beq- 7,.L1872
.LVL2514:
.LBB10693:
.LBB10694:
	.loc 3 575 0
	lwz 27,4(30)
	.loc 3 574 0
	lwz 10,40(31)
	.loc 3 575 0
	cmpwi 7,27,0
	.loc 3 574 0
	lwz 11,44(31)
	lwz 9,48(31)
	lwz 0,52(31)
	stw 10,16(30)
	stw 11,20(30)
	stw 9,24(30)
	stw 0,28(30)
	.loc 3 575 0
	beq- 7,.L1873
.LBE10694:
	.loc 6 4264 0
	lwz 31,8(30)
.LVL2515:
.LBB10708:
.LBB10695:
.LBB10696:
	.loc 3 53 0
	cmpwi 7,31,0
	beq- 7,.L1972
	.loc 3 54 0
	lbz 0,0(31)
	cmpwi 7,0,42
	beq- 7,.L2031
.LVL2516:
.L1874:
.LBE10696:
.LBE10695:
.LBB10704:
.LBB10705:
	.loc 10 205 0
	li 4,2
	addi 3,30,16
	bl _ZNK6idVec48ToStringEi
	mr 4,31
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL2517:
.L1873:
.LBE10705:
.LBE10704:
.LBE10708:
.LBE10693:
.LBE11044:
	.loc 6 1028 0
	addi 28,28,1
.LVL2518:
	addi 29,29,136
	cmpw 7,28,24
	beq- 7,.L2032
.LVL2519:
.L1965:
.LBB11045:
.LBB10711:
.LBB10712:
	.loc 16 589 0
	lwz 31,812(26)
.LBE10712:
.LBE10711:
	.loc 6 1031 0
	lwzx 27,31,29
.LBB10714:
.LBB10713:
	.loc 16 589 0
	add 31,31,29
.LVL2520:
.LBE10713:
.LBE10714:
	.loc 6 1031 0
	cmpwi 4,27,0
	beq- 4,.L1969
	.loc 6 1031 0 is_stmt 0 discriminator 2
	mr 3,27
	mr 4,22
	mr 5,21
	li 6,0
	bl __dynamic_cast
.LVL2521:
	.loc 6 1032 0 is_stmt 1 discriminator 2
	li 16,0
	.loc 6 1033 0 discriminator 2
	mr. 30,3
	.loc 6 1030 0 discriminator 2
	li 25,0
	.loc 6 1033 0 discriminator 2
	beq- 0,.L2033
.LVL2522:
.L1868:
	.loc 6 1039 0
	lwz 9,732(26)
	lis 11,0x4330
	lwz 0,200(9)
	stw 11,40(1)
	xoris 0,0,0x8000
	stw 0,44(1)
.LBB10715:
.LBB10716:
	.loc 21 141 0
	lfs 12,8(31)
	lfs 13,12(31)
	lfs 11,16(31)
	fadds 9,12,13
.LBE10716:
.LBE10715:
	.loc 6 1039 0
	lfd 0,40(1)
.LBB10720:
.LBB10717:
	.loc 21 141 0
	lfs 10,20(31)
.LBE10717:
.LBE10720:
	.loc 6 1039 0
	fsub 0,0,31
.LBB10721:
.LBB10718:
	.loc 21 141 0
	fadds 8,9,11
.LBE10718:
.LBE10721:
	.loc 6 1039 0
	frsp 0,0
.LVL2523:
.LBB10722:
.LBB10719:
	.loc 21 141 0
	fadds 7,8,10
.LBE10719:
.LBE10722:
	.loc 6 1039 0
	fcmpu 7,0,7
	cror 30,29,30
	beq- 7,.L2034
.LVL2524:
	.loc 6 1049 0
	beq- 4,.L1871
	.loc 6 1050 0
	cmpwi 7,30,0
.LBB10723:
.LBB10724:
.LBB10725:
	.loc 21 230 0
	fsubs 7,0,12
.LBE10725:
.LBE10724:
.LBE10723:
	.loc 6 1050 0
	beq- 7,.L1881
.LVL2525:
.LBB10795:
.LBB10752:
.LBB10748:
	.loc 21 231 0
	fcmpu 7,13,7
	bng- 7,.L2002
	.loc 21 232 0
	lwz 0,56(31)
	cmpwi 7,0,4
	beq- 7,.L2012
.LVL2526:
.LBB10726:
.LBB10727:
	.loc 23 109 0
	lis 7,.LC19@ha
	.loc 23 106 0
	lwz 8,24(31)
	lwz 10,28(31)
	lwz 11,32(31)
	lwz 9,36(31)
	.loc 23 109 0
	lwz 0,.LC19@l(7)
	.loc 23 103 0
	li 7,4
	stw 7,56(31)
	.loc 23 104 0
	stfs 12,60(31)
	.loc 23 105 0
	stfs 13,64(31)
	.loc 23 106 0
	stw 8,68(31)
	stw 10,72(31)
	stw 11,76(31)
	stw 9,80(31)
	.loc 23 109 0
	stw 0,116(31)
	.loc 23 110 0
	stw 8,120(31)
	stw 10,124(31)
	stw 11,128(31)
	stw 9,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2527:
.L1885:
.LBE10727:
.LBE10726:
.LBE10748:
.LBE10752:
.LBB10753:
.LBB10754:
	.loc 23 122 0
	fcmpu 7,0,13
	beq- 7,.L1895
	.loc 23 128 0
	lfs 13,60(31)
	.loc 23 126 0
	stfs 0,116(31)
	.loc 23 128 0
	fcmpu 7,0,13
	blt- 7,.L2035
.LVL2528:
.LBE10754:
.LBE10753:
.LBB10756:
.LBB10757:
.LBB10758:
	.loc 23 132 0
	lwz 0,56(31)
	andi. 9,0,64
	bne- 0,.L1894
	lfs 12,64(31)
	fadds 12,13,12
	fcmpu 7,0,12
	bgt- 7,.L2036
.LVL2529:
.L1894:
	.loc 23 136 0
	rlwinm 0,0,0,26,24
	cmplwi 7,0,32
	bgt- 7,.L1895
	lis 9,.L1902@ha
	slwi 0,0,2
	la 9,.L1902@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L1902:
	.long .L1895-.L1902
	.long .L1896-.L1902
	.long .L1897-.L1902
	.long .L1895-.L1902
	.long .L1898-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1899-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1900-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1895-.L1902
	.long .L1901-.L1902
	.section	".text"
.L1900:
	.loc 23 168 0
	lis 9,.LC1@ha
	lfs 30,64(31)
	lfs 12,.LC1@l(9)
	fcmpu 7,30,12
	beq- 7,.L2014
	.loc 23 171 0
	fsubs 0,0,13
.LVL2530:
	.loc 23 172 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 1,_ZN6idMath7HALF_PIE@l(9)
	.loc 23 171 0
	fdivs 29,0,30
.LVL2531:
.LBB10759:
.LBB10760:
	.loc 18 347 0
	fmuls 1,29,1
	bl cosf
.LVL2532:
.LBE10760:
.LBE10759:
	.loc 23 172 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	lis 9,_ZN6idMath11SQRT_1OVER2E@ha
	.loc 13 918 0
	lfs 6,88(31)
	.loc 23 172 0
	fsubs 0,0,1
	fmuls 5,30,0
	lfs 0,_ZN6idMath11SQRT_1OVER2E@l(9)
	lis 9,.LC74@ha
	lfs 13,.LC74@l(9)
	fmuls 5,5,13
.LVL2533:
.L2016:
	.loc 13 918 0
	lfs 7,92(31)
	.loc 23 182 0
	fmuls 0,5,0
.LVL2534:
	.loc 13 918 0
	lfs 8,96(31)
.LBE10758:
	lfs 9,84(31)
	lfs 10,68(31)
.LBB10771:
	lfs 11,72(31)
	lfs 12,76(31)
	lfs 13,80(31)
	fmadds 11,29,6,11
	fmadds 12,29,7,12
	lfs 7,104(31)
	fmadds 13,29,8,13
	lfs 8,108(31)
.LBE10771:
	fmadds 29,29,9,10
.LVL2535:
.LBB10772:
	lfs 9,112(31)
.LBE10772:
	lfs 10,100(31)
.LBB10773:
	fmadds 11,0,7,11
	fmadds 12,0,8,12
.LVL2536:
	fmadds 13,0,9,13
.LVL2537:
.LBE10773:
	fmadds 0,0,10,29
.LVL2538:
	.loc 23 183 0
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stfs 0,120(31)
.LVL2539:
.L1895:
.LBB10774:
	.loc 23 188 0
	lwz 10,120(31)
	lwz 11,124(31)
	lwz 9,128(31)
	lwz 0,132(31)
	stw 10,24(1)
	stw 11,28(1)
	stw 9,32(1)
	stw 0,36(1)
.L1891:
.LVL2540:
.LBE10774:
.LBE10757:
.LBE10756:
.LBE10795:
.LBB10796:
.LBB10655:
	.loc 3 574 0
	lwz 0,24(1)
	.loc 6 1048 0
	li 23,0
	.loc 3 575 0
	lwz 27,4(30)
	.loc 3 574 0
	stw 0,16(30)
	lwz 0,28(1)
	.loc 3 575 0
	cmpwi 7,27,0
	.loc 3 574 0
	stw 0,20(30)
	lwz 0,32(1)
	stw 0,24(30)
	lwz 0,36(1)
	stw 0,28(30)
	.loc 3 575 0
	beq- 7,.L1873
.LBE10655:
	.loc 6 4264 0
	lwz 31,8(30)
.LVL2541:
.LBB10656:
.LBB10640:
.LBB10641:
	.loc 3 53 0
	cmpwi 7,31,0
	beq- 7,.L1980
	.loc 3 54 0
	lbz 0,0(31)
	cmpwi 7,0,42
	beq- 7,.L2037
.L1907:
.LVL2542:
.LBE10641:
.LBE10640:
.LBB10649:
.LBB10650:
	.loc 10 205 0
	li 4,2
	addi 3,30,16
	bl _ZNK6idVec48ToStringEi
.LBE10650:
.LBE10649:
.LBE10656:
.LBE10796:
.LBE11045:
	.loc 6 1028 0
	addi 28,28,1
.LVL2543:
.LBB11046:
.LBB10797:
.LBB10657:
.LBB10652:
.LBB10651:
	.loc 10 205 0
	mr 5,3
	mr 4,31
	mr 3,27
	.loc 6 1048 0
	li 23,0
	.loc 10 205 0
	bl _ZN6idDict3SetEPKcS1_
.LVL2544:
.LBE10651:
.LBE10652:
.LBE10657:
.LBE10797:
.LBE11046:
	.loc 6 1028 0
	cmpw 7,28,24
	addi 29,29,136
	bne+ 7,.L1965
.LVL2545:
.L2032:
.LBE10636:
	.loc 6 1063 0
	cmpwi 7,23,0
	beq- 7,.L1866
.LVL2546:
.L1867:
.LBB11049:
.LBB11050:
	.loc 16 299 0
	lwz 0,804(26)
	cmpwi 7,0,0
	blt- 7,.L2038
.L1967:
.LBE11050:
.LBE11049:
	.loc 6 1065 0
	lwz 0,48(26)
.LBB11053:
.LBB11051:
	.loc 16 302 0
	li 9,0
	stw 9,800(26)
.LBE11051:
.LBE11053:
	.loc 6 1065 0
	rlwinm 0,0,0,22,20
	stw 0,48(26)
.LVL2547:
.L1866:
.LBE10635:
	.loc 6 1067 0
	lwz 0,164(1)
	lwz 12,60(1)
	mtlr 0
	lwz 16,64(1)
	lwz 17,68(1)
	mtcrf 8,12
	lwz 18,72(1)
	lwz 19,76(1)
	lwz 20,80(1)
	lwz 21,84(1)
	lwz 22,88(1)
	lwz 23,92(1)
	lwz 24,96(1)
	lwz 25,100(1)
	lwz 26,104(1)
.LVL2548:
	lwz 27,108(1)
	lwz 28,112(1)
	lwz 29,116(1)
	lwz 30,120(1)
	lwz 31,124(1)
	lfd 28,128(1)
	lfd 29,136(1)
	lfd 30,144(1)
	lfd 31,152(1)
	addi 1,1,160
	.cfi_remember_state
.LCFI432:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
	.cfi_restore 16
	blr
.LVL2549:
.L2002:
.LCFI433:
	.cfi_restore_state
.LBB11057:
.LBB11054:
.LBB11047:
.LBB10798:
.LBB10789:
.LBB10749:
	.loc 21 235 0
	fadds 12,13,11
	.loc 21 236 0
	lwz 0,56(31)
	.loc 21 235 0
	fcmpu 7,7,12
	bnl- 7,.L2003
	.loc 21 236 0
	cmpwi 7,0,2
	beq- 7,.L2012
.LVL2550:
	.loc 21 237 0
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 3,100(31)
	.loc 21 237 0
	lfs 12,.LC74@l(9)
	lis 9,.LC34@ha
	.loc 13 918 0
	lfs 8,24(31)
	.loc 21 237 0
	fmuls 13,13,12
	lfs 12,.LC34@l(9)
	.loc 13 918 0
	lfs 4,104(31)
.LBB10728:
.LBB10729:
	.loc 23 109 0
	lis 9,.LC19@ha
.LBE10729:
.LBE10728:
	.loc 13 918 0
	lfs 10,28(31)
	.loc 21 237 0
	fmuls 13,13,12
.LVL2551:
	.loc 13 918 0
	lfs 5,108(31)
	lfs 12,32(31)
	lfs 6,112(31)
	lfs 7,36(31)
.LVL2552:
	fmadds 8,13,3,8
	fmadds 10,13,4,10
.LBB10734:
.LBB10730:
	.loc 23 109 0
	lwz 0,.LC19@l(9)
.LBE10730:
.LBE10734:
	.loc 13 918 0
	fmadds 12,13,5,12
.LBB10735:
.LBB10731:
	.loc 23 103 0
	li 9,2
.LBE10731:
.LBE10735:
	.loc 13 918 0
	fmadds 13,13,6,7
.LVL2553:
.LBB10736:
.LBB10732:
	.loc 23 103 0
	stw 9,56(31)
	.loc 23 104 0
	stfs 9,60(31)
	.loc 23 105 0
	stfs 11,64(31)
.LBE10732:
.LBE10736:
.LBE10749:
	.loc 23 106 0
	stfs 8,68(31)
	stfs 10,72(31)
	stfs 12,76(31)
	stfs 13,80(31)
.LBB10750:
.LBB10737:
.LBB10733:
	.loc 23 109 0
	stw 0,116(31)
.LBE10733:
.LBE10737:
.LBE10750:
	.loc 23 110 0
	stfs 8,120(31)
	stfs 10,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2554:
	b .L1885
.LVL2555:
.L1872:
.LBE10789:
.LBE10798:
	.loc 6 1042 0
	cmpwi 7,16,0
	beq- 7,.L1876
.LVL2556:
.LBB10799:
.LBB10800:
	.loc 3 339 0
	lwz 30,4(16)
.LBE10800:
.LBE10799:
.LBB10832:
.LBB10833:
	.loc 13 885 0
	lfs 1,40(31)
.LVL2557:
.LBE10833:
.LBE10832:
.LBB10834:
.LBB10825:
	.loc 3 339 0
	cmpwi 7,30,0
	.loc 3 338 0
	stfs 1,16(16)
	.loc 3 339 0
	beq- 7,.L1873
.LBE10825:
	.loc 6 4264 0
	lwz 31,8(16)
.LVL2558:
.LBB10826:
.LBB10801:
.LBB10802:
	.loc 3 53 0
	cmpwi 7,31,0
	beq- 7,.L1974
	.loc 3 54 0
	lbz 0,0(31)
	cmpwi 7,0,42
	beq- 7,.L2039
.LVL2559:
.L1877:
.LBE10802:
.LBE10801:
.LBB10816:
.LBB10817:
	.loc 10 189 0
	mr 3,20
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL2560:
	mr 4,31
	mr 5,3
	mr 3,30
	bl _ZN6idDict3SetEPKcS1_
	b .L1873
.LVL2561:
.L1969:
.LBE10817:
.LBE10816:
.LBE10826:
.LBE10834:
	.loc 6 1031 0
	li 30,0
	.loc 6 1036 0
	li 16,0
	.loc 6 1031 0
	li 25,0
	b .L1868
.LVL2562:
.L1881:
	.loc 6 1052 0
	cmpwi 7,16,0
	beq- 7,.L1909
.LVL2563:
.LBB10835:
.LBB10836:
.LBB10837:
	.loc 21 231 0
	fcmpu 7,13,7
	bng- 7,.L2005
	.loc 21 232 0
	lwz 0,56(31)
	cmpwi 7,0,4
	beq- 7,.L2018
.LVL2564:
.LBB10838:
.LBB10839:
	.loc 23 109 0
	lis 7,.LC19@ha
	.loc 23 106 0
	lwz 8,24(31)
	lwz 10,28(31)
	lwz 11,32(31)
	lwz 9,36(31)
	.loc 23 109 0
	lwz 0,.LC19@l(7)
	.loc 23 103 0
	li 7,4
	stw 7,56(31)
	.loc 23 104 0
	stfs 12,60(31)
	.loc 23 105 0
	stfs 13,64(31)
	.loc 23 106 0
	stw 8,68(31)
	stw 10,72(31)
	stw 11,76(31)
	stw 9,80(31)
	.loc 23 109 0
	stw 0,116(31)
	.loc 23 110 0
	stw 8,120(31)
	stw 10,124(31)
	stw 11,128(31)
	stw 9,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2565:
.L1913:
.LBE10839:
.LBE10838:
.LBE10837:
.LBE10836:
.LBB10864:
.LBB10865:
	.loc 23 122 0
	fcmpu 7,0,13
	beq- 7,.L2021
.LVL2566:
.L1918:
	.loc 23 128 0
	lfs 13,60(31)
	.loc 23 126 0
	stfs 0,116(31)
	.loc 23 128 0
	fcmpu 7,0,13
	blt- 7,.L2040
.LVL2567:
.LBE10865:
.LBE10864:
.LBB10868:
.LBB10869:
.LBB10870:
	.loc 23 132 0
	lwz 0,56(31)
	andi. 9,0,64
	bne- 0,.L1922
	lfs 12,64(31)
	fadds 12,13,12
	fcmpu 7,0,12
	bgt- 7,.L2041
.LVL2568:
.L1922:
	.loc 23 136 0
	rlwinm 0,0,0,26,24
	cmplwi 7,0,32
	bgt- 7,.L2021
	lis 9,.L1930@ha
	slwi 0,0,2
	la 9,.L1930@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L1930:
	.long .L2021-.L1930
	.long .L1924-.L1930
	.long .L1925-.L1930
	.long .L2021-.L1930
	.long .L1926-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L1927-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L1928-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L2021-.L1930
	.long .L1929-.L1930
	.section	".text"
.LVL2569:
.L2012:
.LBE10870:
.LBE10869:
.LBE10868:
.LBE10835:
.LBB10898:
.LBB10790:
.LBB10751:
	.loc 21 240 0
	lfs 13,116(31)
	b .L1885
.L2003:
	cmpwi 7,0,8
	beq- 7,.L2012
.LVL2570:
	.loc 21 241 0
	lis 9,.LC74@ha
	.loc 13 897 0
	lfs 3,100(31)
	.loc 21 241 0
	lfs 12,.LC74@l(9)
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
.LBB10738:
.LBB10739:
	.loc 23 109 0
	lis 9,.LC19@ha
.LBE10739:
.LBE10738:
	.loc 21 241 0
	fmuls 12,10,12
	.loc 13 897 0
	lfs 9,40(31)
	lfs 4,104(31)
	lfs 11,44(31)
	.loc 21 241 0
	fmuls 13,12,13
.LVL2571:
	.loc 13 897 0
	lfs 5,108(31)
	lfs 12,48(31)
	lfs 6,112(31)
	.loc 6 1024 0
	fneg 13,13
.LVL2572:
	.loc 13 897 0
	lfs 7,52(31)
.LVL2573:
.LBB10744:
.LBB10740:
	.loc 23 109 0
	lwz 0,.LC19@l(9)
	.loc 23 103 0
	li 9,8
	stw 9,56(31)
.LBE10740:
.LBE10744:
	.loc 13 897 0
	fmadds 9,13,3,9
.LBB10745:
.LBB10741:
	.loc 23 104 0
	stfs 8,60(31)
.LBE10741:
.LBE10745:
	.loc 13 897 0
	fmadds 11,13,4,11
.LBB10746:
.LBB10742:
	.loc 23 105 0
	stfs 10,64(31)
.LBE10742:
.LBE10746:
	.loc 13 897 0
	fmadds 12,13,5,12
.LBB10747:
.LBB10743:
	.loc 23 109 0
	stw 0,116(31)
.LBE10743:
.LBE10747:
	.loc 13 897 0
	fmadds 13,13,6,7
.LVL2574:
.LBE10751:
	.loc 23 106 0
	stfs 9,68(31)
	stfs 11,72(31)
	stfs 12,76(31)
	stfs 13,80(31)
	.loc 23 110 0
	stfs 9,120(31)
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2575:
	b .L1885
.LVL2576:
.L2035:
.LBE10790:
.LBB10791:
.LBB10755:
	.loc 23 129 0
	lwz 10,68(31)
	lwz 11,72(31)
	lwz 9,76(31)
	lwz 0,80(31)
	stw 10,24(1)
	stw 11,28(1)
	stw 9,32(1)
	stw 0,36(1)
	b .L1891
.LVL2577:
.L2005:
.LBE10755:
.LBE10791:
.LBE10898:
.LBB10899:
.LBB10890:
.LBB10860:
	.loc 21 235 0
	fadds 12,13,11
	.loc 21 236 0
	lwz 0,56(31)
	.loc 21 235 0
	fcmpu 7,7,12
	bnl- 7,.L2006
	.loc 21 236 0
	cmpwi 7,0,2
	beq- 7,.L2018
.LVL2578:
	.loc 21 237 0
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 3,100(31)
	.loc 21 237 0
	lfs 12,.LC74@l(9)
	lis 9,.LC34@ha
	.loc 13 918 0
	lfs 8,24(31)
	.loc 21 237 0
	fmuls 13,13,12
	lfs 12,.LC34@l(9)
	.loc 13 918 0
	lfs 4,104(31)
.LBB10840:
.LBB10841:
	.loc 23 109 0
	lis 9,.LC19@ha
.LBE10841:
.LBE10840:
	.loc 13 918 0
	lfs 10,28(31)
	.loc 21 237 0
	fmuls 13,13,12
.LVL2579:
	.loc 13 918 0
	lfs 5,108(31)
	lfs 12,32(31)
	lfs 6,112(31)
	lfs 7,36(31)
.LVL2580:
	fmadds 8,13,3,8
	fmadds 10,13,4,10
.LBB10846:
.LBB10842:
	.loc 23 109 0
	lwz 0,.LC19@l(9)
.LBE10842:
.LBE10846:
	.loc 13 918 0
	fmadds 12,13,5,12
.LBB10847:
.LBB10843:
	.loc 23 103 0
	li 9,2
.LBE10843:
.LBE10847:
	.loc 13 918 0
	fmadds 13,13,6,7
.LVL2581:
.LBB10848:
.LBB10844:
	.loc 23 103 0
	stw 9,56(31)
	.loc 23 104 0
	stfs 9,60(31)
	.loc 23 105 0
	stfs 11,64(31)
.LBE10844:
.LBE10848:
.LBE10860:
	.loc 23 106 0
	stfs 8,68(31)
	stfs 10,72(31)
	stfs 12,76(31)
	stfs 13,80(31)
.LBB10861:
.LBB10849:
.LBB10845:
	.loc 23 109 0
	stw 0,116(31)
.LBE10845:
.LBE10849:
.LBE10861:
	.loc 23 110 0
	stfs 8,120(31)
	stfs 10,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2582:
.LBE10890:
.LBB10891:
.LBB10866:
	.loc 23 122 0
	fcmpu 7,0,13
	bne+ 7,.L1918
.LVL2583:
.L2021:
.LBE10866:
.LBE10891:
.LBB10892:
.LBB10886:
.LBB10879:
	.loc 23 179 0
	lfs 1,120(31)
.LVL2584:
.L1919:
.LBE10879:
.LBE10886:
.LBE10892:
.LBE10899:
.LBB10900:
.LBB10687:
	.loc 3 339 0
	lwz 31,4(16)
.LVL2585:
	.loc 6 1048 0
	li 23,0
	.loc 3 338 0
	stfs 1,16(16)
	.loc 3 339 0
	cmpwi 7,31,0
	beq- 7,.L1873
.LBE10687:
	.loc 6 4264 0
	lwz 30,8(16)
.LBB10688:
.LBB10667:
.LBB10668:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L1984
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L2042
.L1936:
.LVL2586:
.LBE10668:
.LBE10667:
.LBB10682:
.LBB10665:
	.loc 10 189 0
	mr 3,20
	.loc 6 1048 0
	li 23,0
	.loc 10 189 0
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL2587:
	mr 4,30
	mr 5,3
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
	b .L1873
.LVL2588:
.L2036:
.LBE10665:
.LBE10682:
.LBE10688:
.LBE10900:
.LBB10901:
.LBB10792:
.LBB10786:
.LBB10775:
	.loc 23 133 0
	fmr 0,12
.LVL2589:
	b .L1894
.LVL2590:
.L2006:
.LBE10775:
.LBE10786:
.LBE10792:
.LBE10901:
.LBB10902:
.LBB10893:
.LBB10862:
	.loc 21 240 0
	cmpwi 7,0,8
	beq- 7,.L2018
.LVL2591:
	.loc 21 241 0
	lis 9,.LC74@ha
	.loc 13 897 0
	lfs 3,100(31)
	.loc 21 241 0
	lfs 12,.LC74@l(9)
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
.LBB10850:
.LBB10851:
	.loc 23 109 0
	lis 9,.LC19@ha
.LBE10851:
.LBE10850:
	.loc 21 241 0
	fmuls 12,10,12
	.loc 13 897 0
	lfs 9,40(31)
	lfs 4,104(31)
	lfs 11,44(31)
	.loc 21 241 0
	fmuls 13,12,13
.LVL2592:
	.loc 13 897 0
	lfs 5,108(31)
	lfs 12,48(31)
	lfs 6,112(31)
	.loc 6 1024 0
	fneg 13,13
.LVL2593:
	.loc 13 897 0
	lfs 7,52(31)
.LVL2594:
.LBB10856:
.LBB10852:
	.loc 23 109 0
	lwz 0,.LC19@l(9)
	.loc 23 103 0
	li 9,8
	stw 9,56(31)
.LBE10852:
.LBE10856:
	.loc 13 897 0
	fmadds 9,13,3,9
.LBB10857:
.LBB10853:
	.loc 23 104 0
	stfs 8,60(31)
.LBE10853:
.LBE10857:
	.loc 13 897 0
	fmadds 11,13,4,11
.LBB10858:
.LBB10854:
	.loc 23 105 0
	stfs 10,64(31)
.LBE10854:
.LBE10858:
	.loc 13 897 0
	fmadds 12,13,5,12
.LBB10859:
.LBB10855:
	.loc 23 109 0
	stw 0,116(31)
.LBE10855:
.LBE10859:
	.loc 13 897 0
	fmadds 13,13,6,7
.LVL2595:
.LBE10862:
	.loc 23 106 0
	stfs 9,68(31)
	stfs 11,72(31)
	stfs 12,76(31)
	stfs 13,80(31)
	.loc 23 110 0
	stfs 9,120(31)
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2596:
	b .L1913
.LVL2597:
.L2018:
.LBB10863:
	.loc 21 240 0
	lfs 13,116(31)
	b .L1913
.LVL2598:
.L1871:
.LBE10863:
.LBE10893:
.LBE10902:
	.loc 6 1058 0
	lis 11,common@ha
	mr 4,19
	lwz 3,common@l(11)
.LVL2599:
	.loc 6 1048 0
	li 23,0
	.loc 6 1058 0
	lwz 5,140(26)
	lwz 11,0(3)
	lwz 6,64(9)
	lwz 0,80(11)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL2600:
	b .L1873
.LVL2601:
.L1972:
.LBB10903:
.LBB10709:
.LBB10706:
.LBB10702:
	.loc 3 59 0
	lis 31,.LC4@ha
	la 31,.LC4@l(31)
	b .L1874
.LVL2602:
.L2040:
.LBE10702:
.LBE10706:
.LBE10709:
.LBE10903:
.LBB10904:
.LBB10894:
.LBB10867:
	.loc 23 129 0
	lfs 1,68(31)
	b .L1919
.LVL2603:
.L1980:
.LBE10867:
.LBE10894:
.LBE10904:
.LBB10905:
.LBB10658:
.LBB10653:
.LBB10647:
	.loc 3 59 0
	lis 31,.LC4@ha
	la 31,.LC4@l(31)
	b .L1907
.LVL2604:
.L1876:
.LBE10647:
.LBE10653:
.LBE10658:
.LBE10905:
.LBB10906:
.LBB10907:
	.loc 3 403 0
	lwz 27,4(25)
.LBE10907:
.LBE10906:
.LBB10928:
.LBB10827:
.LBB10820:
.LBB10818:
	.loc 10 189 0
	lwz 10,40(31)
.LVL2605:
.LBE10818:
.LBE10820:
.LBE10827:
.LBE10928:
.LBB10929:
.LBB10923:
	.loc 3 403 0
	cmpwi 7,27,0
.LBE10923:
.LBE10929:
.LBB10930:
.LBB10828:
.LBB10821:
.LBB10819:
	.loc 10 189 0
	lwz 11,44(31)
.LVL2606:
	lwz 9,48(31)
.LVL2607:
	lwz 0,52(31)
.LVL2608:
.LBE10819:
.LBE10821:
.LBE10828:
.LBE10930:
.LBB10931:
.LBB10924:
.LBB10908:
.LBB10909:
	.loc 12 168 0
	stw 10,16(25)
	.loc 12 169 0
	stw 11,20(25)
	.loc 12 170 0
	stw 9,24(25)
	.loc 12 171 0
	stw 0,28(25)
.LBE10909:
.LBE10908:
	.loc 3 403 0
	beq- 7,.L1873
.LBE10924:
	.loc 6 4264 0
	lwz 30,8(25)
.LBB10925:
.LBB10910:
.LBB10911:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L1976
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L2043
.LVL2609:
.L1879:
.LBE10911:
.LBE10910:
.LBB10919:
.LBB10920:
	.loc 10 205 0
	addi 3,31,40
	li 4,2
	bl _ZNK6idVec48ToStringEi
	mr 4,30
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
	b .L1873
.LVL2610:
.L1909:
.LBE10920:
.LBE10919:
.LBE10925:
.LBE10931:
.LBB10932:
.LBB10933:
.LBB10934:
	.loc 21 231 0
	fcmpu 7,13,7
	bng- 7,.L2008
	.loc 21 232 0
	lwz 0,56(31)
	cmpwi 7,0,4
	beq- 7,.L2026
.LVL2611:
.LBB10935:
.LBB10936:
	.loc 23 109 0
	lis 7,.LC19@ha
	.loc 23 106 0
	lwz 8,24(31)
	lwz 10,28(31)
	lwz 11,32(31)
	lwz 9,36(31)
	.loc 23 109 0
	lwz 0,.LC19@l(7)
	.loc 23 103 0
	li 7,4
	stw 7,56(31)
	.loc 23 104 0
	stfs 12,60(31)
	.loc 23 105 0
	stfs 13,64(31)
	.loc 23 106 0
	stw 8,68(31)
	stw 10,72(31)
	stw 11,76(31)
	stw 9,80(31)
	.loc 23 109 0
	stw 0,116(31)
	.loc 23 110 0
	stw 8,120(31)
	stw 10,124(31)
	stw 11,128(31)
	stw 9,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2612:
.L1941:
.LBE10936:
.LBE10935:
.LBE10934:
.LBE10933:
.LBB10961:
.LBB10962:
	.loc 23 122 0
	fcmpu 7,0,13
	beq- 7,.L1951
	.loc 23 128 0
	lfs 13,60(31)
	.loc 23 126 0
	stfs 0,116(31)
	.loc 23 128 0
	fcmpu 7,0,13
	blt- 7,.L2044
.LVL2613:
.LBE10962:
.LBE10961:
.LBB10964:
.LBB10965:
.LBB10966:
	.loc 23 132 0
	lwz 0,56(31)
	andi. 9,0,64
	bne- 0,.L1950
	lfs 12,64(31)
	fadds 12,13,12
	fcmpu 7,0,12
	bng- 7,.L1950
	.loc 23 133 0
	fmr 0,12
.LVL2614:
.L1950:
	.loc 23 136 0
	rlwinm 0,0,0,26,24
	cmplwi 7,0,32
	ble- 7,.L2045
.LVL2615:
.L1951:
	.loc 23 188 0
	lwz 10,120(31)
	lwz 11,124(31)
	lwz 9,128(31)
	lwz 0,132(31)
	stw 10,8(1)
	stw 11,12(1)
	stw 9,16(1)
	stw 0,20(1)
.L1947:
.LVL2616:
.LBE10966:
.LBE10965:
.LBE10964:
.LBE10932:
.LBB11002:
.LBB11003:
.LBB11004:
.LBB11005:
	.loc 12 169 0
	lwz 0,12(1)
.LBE11005:
.LBE11004:
	.loc 6 1048 0
	li 23,0
	.loc 3 403 0
	lwz 30,4(25)
.LVL2617:
.LBB11008:
.LBB11006:
	.loc 12 169 0
	stw 0,20(25)
	.loc 12 168 0
	lwz 0,8(1)
.LBE11006:
.LBE11008:
	.loc 3 403 0
	cmpwi 7,30,0
.LVL2618:
.LBB11009:
.LBB11007:
	.loc 12 168 0
	stw 0,16(25)
	.loc 12 170 0
	lwz 0,16(1)
	stw 0,24(25)
	.loc 12 171 0
	lwz 0,20(1)
	stw 0,28(25)
.LBE11007:
.LBE11009:
	.loc 3 403 0
	beq- 7,.L1873
.LBE11003:
	.loc 6 4264 0
	lwz 31,8(25)
.LVL2619:
.LBB11021:
.LBB11010:
.LBB11011:
	.loc 3 53 0
	cmpwi 7,31,0
	beq- 7,.L1988
	.loc 3 54 0
	lbz 0,0(31)
	cmpwi 7,0,42
	beq- 7,.L2046
.LVL2620:
.L1963:
.LBE11011:
.LBE11010:
.LBB11018:
.LBB11019:
	.loc 10 205 0
	li 4,2
	addi 3,1,8
	bl _ZNK6idVec48ToStringEi
	mr 4,31
	mr 5,3
	mr 3,30
	bl _ZN6idDict3SetEPKcS1_
	.loc 6 1048 0
	li 23,0
	b .L1873
.LVL2621:
.L2041:
.LBE11019:
.LBE11018:
.LBE11021:
.LBE11002:
.LBB11023:
.LBB10895:
.LBB10887:
.LBB10880:
	.loc 23 133 0
	fmr 0,12
.LVL2622:
	b .L1922
.LVL2623:
.L2008:
.LBE10880:
.LBE10887:
.LBE10895:
.LBE11023:
.LBB11024:
.LBB10996:
.LBB10957:
	.loc 21 235 0
	fadds 12,13,11
	.loc 21 236 0
	lwz 0,56(31)
	.loc 21 235 0
	fcmpu 7,7,12
	bnl- 7,.L2009
	.loc 21 236 0
	cmpwi 7,0,2
	beq- 7,.L2026
.LVL2624:
	.loc 21 237 0
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 3,100(31)
	.loc 21 237 0
	lfs 12,.LC74@l(9)
	lis 9,.LC34@ha
	.loc 13 918 0
	lfs 8,24(31)
	.loc 21 237 0
	fmuls 13,13,12
	lfs 12,.LC34@l(9)
	.loc 13 918 0
	lfs 4,104(31)
.LBB10937:
.LBB10938:
	.loc 23 109 0
	lis 9,.LC19@ha
.LBE10938:
.LBE10937:
	.loc 13 918 0
	lfs 10,28(31)
	.loc 21 237 0
	fmuls 13,13,12
.LVL2625:
	.loc 13 918 0
	lfs 5,108(31)
	lfs 12,32(31)
	lfs 6,112(31)
	lfs 7,36(31)
.LVL2626:
	fmadds 8,13,3,8
	fmadds 10,13,4,10
.LBB10943:
.LBB10939:
	.loc 23 109 0
	lwz 0,.LC19@l(9)
.LBE10939:
.LBE10943:
	.loc 13 918 0
	fmadds 12,13,5,12
.LBB10944:
.LBB10940:
	.loc 23 103 0
	li 9,2
.LBE10940:
.LBE10944:
	.loc 13 918 0
	fmadds 13,13,6,7
.LVL2627:
.LBB10945:
.LBB10941:
	.loc 23 103 0
	stw 9,56(31)
	.loc 23 104 0
	stfs 9,60(31)
	.loc 23 105 0
	stfs 11,64(31)
.LBE10941:
.LBE10945:
.LBE10957:
	.loc 23 106 0
	stfs 8,68(31)
	stfs 10,72(31)
	stfs 12,76(31)
	stfs 13,80(31)
.LBB10958:
.LBB10946:
.LBB10942:
	.loc 23 109 0
	stw 0,116(31)
.LBE10942:
.LBE10946:
.LBE10958:
	.loc 23 110 0
	stfs 8,120(31)
	stfs 10,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2628:
	b .L1941
.LVL2629:
.L1898:
.LBE10996:
.LBE11024:
.LBB11025:
.LBB10793:
.LBB10787:
.LBB10776:
	.loc 23 148 0
	lis 9,.LC1@ha
	lfs 12,64(31)
	lfs 11,.LC1@l(9)
	fcmpu 7,12,11
	beq- 7,.L2014
	.loc 23 151 0
	fsubs 0,0,13
.LVL2630:
	.loc 23 152 0
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 30,88(31)
	.loc 23 151 0
	fdivs 0,0,12
.LVL2631:
	.loc 13 918 0
	lfs 10,72(31)
	.loc 23 152 0
	lfs 29,.LC74@l(9)
	.loc 13 918 0
	lfs 1,92(31)
	lfs 11,76(31)
	lfs 2,96(31)
	lfs 8,80(31)
.LBE10776:
	lfs 3,84(31)
	lfs 4,68(31)
.LBB10777:
	lfs 5,104(31)
	lfs 6,108(31)
	lfs 7,112(31)
.LBE10777:
	lfs 9,100(31)
.LBB10778:
	.loc 23 152 0
	fmuls 13,0,13
	fmuls 12,12,29
	.loc 13 918 0
	fmadds 10,0,30,10
	.loc 23 152 0
	fmuls 13,0,13
.L2015:
	.loc 23 162 0
	fmuls 13,13,12
.LVL2632:
	.loc 13 918 0
	fmadds 11,0,1,11
	fmadds 8,0,2,8
.LBE10778:
	fmadds 0,0,3,4
.LVL2633:
.LBB10779:
	fmadds 10,13,5,10
	fmadds 11,13,6,11
	fmadds 12,13,7,8
.LVL2634:
.LBE10779:
	fmadds 13,13,9,0
.LVL2635:
	.loc 23 163 0
	stfs 10,124(31)
	stfs 11,128(31)
	stfs 12,132(31)
	stfs 13,120(31)
	b .L1895
.LVL2636:
.L1899:
.LBB10780:
	.loc 23 158 0
	lis 9,.LC1@ha
	lfs 12,64(31)
	lfs 11,.LC1@l(9)
	fcmpu 7,12,11
	beq- 7,.L2014
	.loc 23 161 0
	fsubs 0,0,13
.LVL2637:
	.loc 23 162 0
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 29,88(31)
	.loc 23 161 0
	fdivs 0,0,12
.LVL2638:
	.loc 13 918 0
	lfs 10,72(31)
	.loc 23 162 0
	lfs 28,.LC74@l(9)
	.loc 13 918 0
	lfs 1,92(31)
	lfs 11,76(31)
	lfs 2,96(31)
	lfs 8,80(31)
.LBE10780:
	lfs 3,84(31)
	lfs 4,68(31)
.LBB10781:
	lfs 5,104(31)
	lfs 6,108(31)
	lfs 7,112(31)
.LBE10781:
	lfs 9,100(31)
.LBB10782:
	.loc 6 1024 0
	fneg 30,0
	.loc 23 162 0
	fmuls 13,0,13
	fmuls 12,12,28
	.loc 13 918 0
	fmadds 10,0,29,10
	.loc 23 162 0
	fmadds 13,30,13,0
	b .L2015
.LVL2639:
.L1901:
	.loc 23 178 0
	lis 9,.LC1@ha
	lfs 30,64(31)
	lfs 12,.LC1@l(9)
	fcmpu 7,30,12
	beq- 7,.L2014
	.loc 23 181 0
	fsubs 0,0,13
.LVL2640:
	.loc 23 182 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 1,_ZN6idMath7HALF_PIE@l(9)
	.loc 23 181 0
	fdivs 29,0,30
.LVL2641:
.LBB10761:
.LBB10762:
	.loc 18 311 0
	fmuls 1,29,1
	bl sinf
.LVL2642:
.LBE10762:
.LBE10761:
	.loc 23 182 0
	lis 9,.LC74@ha
	fmuls 5,30,1
	lfs 0,.LC74@l(9)
	lis 9,_ZN6idMath11SQRT_1OVER2E@ha
	.loc 13 918 0
	lfs 6,88(31)
	.loc 23 182 0
	fmuls 5,5,0
	lfs 0,_ZN6idMath11SQRT_1OVER2E@l(9)
	b .L2016
.LVL2643:
.L1897:
	.loc 23 143 0
	fsubs 0,0,13
.LVL2644:
	lis 9,.LC74@ha
.LBB10763:
.LBB10764:
	.loc 13 918 0
	lfs 5,88(31)
	lfs 6,104(31)
	lfs 7,92(31)
	lfs 10,108(31)
	fadds 6,5,6
.LBE10764:
.LBE10763:
	.loc 23 143 0
	lfs 4,.LC74@l(9)
.LBB10768:
.LBB10765:
	.loc 13 918 0
	lfs 11,112(31)
	fadds 7,7,10
	lfs 12,100(31)
.LBE10765:
.LBE10768:
	.loc 23 143 0
	fmuls 0,0,4
.LVL2645:
.LBB10769:
.LBB10766:
	.loc 13 918 0
	lfs 8,96(31)
	lfs 9,84(31)
	fadds 8,8,11
.LBE10766:
.LBE10769:
	lfs 13,80(31)
.LBB10770:
.LBB10767:
	fadds 9,9,12
.LBE10767:
.LBE10770:
	lfs 11,72(31)
	lfs 12,76(31)
.LVL2646:
.L2013:
.LBE10782:
	lfs 10,68(31)
.LBB10783:
	fmadds 11,0,6,11
	fmadds 12,0,7,12
	fmadds 13,0,8,13
.LVL2647:
.LBE10783:
	fmadds 0,0,9,10
.LVL2648:
	.loc 23 144 0
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stfs 0,120(31)
	b .L1895
.LVL2649:
.L1896:
.LBB10784:
	.loc 23 138 0
	fsubs 0,0,13
.LVL2650:
	lis 9,.LC74@ha
	lfs 12,.LC74@l(9)
	.loc 13 918 0
	lfs 6,88(31)
	.loc 23 138 0
	fmuls 0,0,12
.LVL2651:
	.loc 13 918 0
	lfs 11,72(31)
	lfs 7,92(31)
	lfs 12,76(31)
	lfs 8,96(31)
	lfs 13,80(31)
.LBE10784:
	lfs 9,84(31)
	b .L2013
.LVL2652:
.L1929:
.LBE10787:
.LBE10793:
.LBE11025:
.LBB11026:
.LBB10896:
.LBB10888:
.LBB10881:
	.loc 23 178 0
	lis 9,.LC1@ha
	lfs 30,64(31)
	lfs 12,.LC1@l(9)
	fcmpu 7,30,12
	bne- 7,.L1935
.L2020:
	.loc 23 179 0
	lwz 10,68(31)
	lwz 11,72(31)
	lwz 9,76(31)
	lwz 0,80(31)
	stw 10,120(31)
	stw 11,124(31)
	stw 9,128(31)
	stw 0,132(31)
	b .L2021
.L1928:
	.loc 23 168 0
	lis 9,.LC1@ha
	lfs 30,64(31)
	lfs 12,.LC1@l(9)
	fcmpu 7,30,12
	beq- 7,.L2020
	.loc 23 171 0
	fsubs 0,0,13
.LVL2653:
	.loc 23 172 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 1,_ZN6idMath7HALF_PIE@l(9)
	.loc 23 171 0
	fdivs 29,0,30
.LVL2654:
.LBB10871:
.LBB10872:
	.loc 18 347 0
	fmuls 1,29,1
	bl cosf
.LVL2655:
.LBE10872:
.LBE10871:
	.loc 23 172 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	lis 9,_ZN6idMath11SQRT_1OVER2E@ha
	.loc 13 918 0
	lfs 6,84(31)
	.loc 23 172 0
	fsubs 0,0,1
	fmuls 5,30,0
	lfs 0,_ZN6idMath11SQRT_1OVER2E@l(9)
	lis 9,.LC74@ha
	lfs 13,.LC74@l(9)
	fmuls 5,5,13
.LVL2656:
.L2019:
	.loc 13 918 0
	lfs 9,92(31)
	.loc 23 182 0
	fmuls 0,5,0
.LVL2657:
	.loc 13 918 0
	lfs 10,96(31)
	lfs 11,80(31)
	lfs 8,68(31)
	lfs 7,88(31)
	lfs 12,72(31)
	fmadds 8,29,6,8
	lfs 13,76(31)
	fmadds 12,29,7,12
	lfs 1,100(31)
	fmadds 13,29,9,13
	lfs 9,104(31)
	fmadds 29,29,10,11
.LVL2658:
	lfs 10,108(31)
	lfs 11,112(31)
	fmadds 1,0,1,8
	fmadds 12,0,9,12
.LVL2659:
	fmadds 13,0,10,13
.LVL2660:
	fmadds 0,0,11,29
.LVL2661:
.LBE10881:
	.loc 23 183 0
	stfs 1,120(31)
	stfs 12,124(31)
	stfs 13,128(31)
	stfs 0,132(31)
	b .L1919
.LVL2662:
.L1927:
.LBB10882:
	.loc 23 158 0
	lis 9,.LC1@ha
	lfs 12,64(31)
	lfs 11,.LC1@l(9)
	fcmpu 7,12,11
	bne- 7,.L1933
.L2024:
	.loc 23 159 0
	lwz 10,68(31)
	lwz 11,72(31)
	lwz 9,76(31)
	lwz 0,80(31)
	stw 10,120(31)
	stw 11,124(31)
	stw 9,128(31)
	stw 0,132(31)
	lfs 1,120(31)
	b .L1919
.L1924:
	.loc 23 138 0
	fsubs 0,0,13
.LVL2663:
	lis 9,.LC74@ha
	lfs 12,.LC74@l(9)
	.loc 13 918 0
	lfs 1,84(31)
	.loc 23 138 0
	fmuls 0,0,12
.LVL2664:
	.loc 13 918 0
	lfs 7,68(31)
	lfs 8,88(31)
	lfs 12,72(31)
	lfs 9,92(31)
	lfs 13,76(31)
	lfs 10,96(31)
.LVL2665:
.L2022:
	lfs 11,80(31)
	fmadds 1,0,1,7
	fmadds 12,0,8,12
	fmadds 13,0,9,13
	fmadds 0,0,10,11
.LVL2666:
.LBE10882:
	.loc 23 144 0
	stfs 1,120(31)
	stfs 12,124(31)
	stfs 13,128(31)
	stfs 0,132(31)
	b .L1919
.LVL2667:
.L1926:
.LBB10883:
	.loc 23 148 0
	lis 9,.LC1@ha
	lfs 12,64(31)
	lfs 11,.LC1@l(9)
	fcmpu 7,12,11
	beq- 7,.L2024
	.loc 23 151 0
	fsubs 0,0,13
.LVL2668:
	.loc 23 152 0
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 30,84(31)
	.loc 23 151 0
	fdivs 0,0,12
.LVL2669:
	.loc 13 918 0
	lfs 6,68(31)
	.loc 23 152 0
	lfs 29,.LC74@l(9)
	.loc 13 918 0
	lfs 2,88(31)
	lfs 11,72(31)
	lfs 3,92(31)
	lfs 9,76(31)
	lfs 4,96(31)
	lfs 5,80(31)
	lfs 1,100(31)
	lfs 7,104(31)
	lfs 8,108(31)
	lfs 10,112(31)
	.loc 23 152 0
	fmuls 13,0,13
	fmuls 12,12,29
	.loc 13 918 0
	fmadds 6,0,30,6
	.loc 23 152 0
	fmuls 13,0,13
.L2023:
	.loc 23 162 0
	fmuls 13,13,12
.LVL2670:
	.loc 13 918 0
	fmadds 11,0,2,11
	fmadds 9,0,3,9
	fmadds 0,0,4,5
.LVL2671:
	fmadds 1,13,1,6
	fmadds 11,13,7,11
	fmadds 12,13,8,9
	fmadds 13,13,10,0
.LVL2672:
.LBE10883:
	.loc 23 163 0
	stfs 1,120(31)
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	b .L1919
.LVL2673:
.L1925:
.LBB10884:
	.loc 23 143 0
	fsubs 0,0,13
.LVL2674:
	lis 9,.LC74@ha
.LBB10873:
.LBB10874:
	.loc 13 918 0
	lfs 7,88(31)
	lfs 12,112(31)
	lfs 1,84(31)
	lfs 6,100(31)
	lfs 8,104(31)
	lfs 9,92(31)
	fadds 1,1,6
	lfs 11,108(31)
	fadds 8,7,8
	lfs 10,96(31)
.LBE10874:
.LBE10873:
	.loc 23 143 0
	lfs 5,.LC74@l(9)
.LBB10876:
.LBB10875:
	.loc 13 918 0
	fadds 9,9,11
	fadds 10,10,12
.LBE10875:
.LBE10876:
	lfs 7,68(31)
	.loc 23 143 0
	fmuls 0,0,5
.LVL2675:
	.loc 13 918 0
	lfs 12,72(31)
	lfs 13,76(31)
	b .L2022
.LVL2676:
.L2009:
.LBE10884:
.LBE10888:
.LBE10896:
.LBE11026:
.LBB11027:
.LBB10997:
.LBB10959:
	.loc 21 240 0
	cmpwi 7,0,8
	bne+ 7,.L1945
.L2026:
	lfs 13,116(31)
	b .L1941
.LVL2677:
.L2014:
.LBE10959:
.LBE10997:
.LBE11027:
.LBB11028:
.LBB10794:
.LBB10788:
.LBB10785:
	.loc 23 179 0
	lwz 10,68(31)
	lwz 11,72(31)
	lwz 9,76(31)
	lwz 0,80(31)
	stw 10,120(31)
	stw 11,124(31)
	stw 9,128(31)
	stw 0,132(31)
	b .L1895
.LVL2678:
.L2031:
.LBE10785:
.LBE10788:
.LBE10794:
.LBE11028:
.LBB11029:
.LBB10710:
.LBB10707:
.LBB10703:
.LBB10697:
.LBB10698:
.LBB10699:
.LBB10700:
	.loc 10 241 0
	mr 3,27
	addi 4,31,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL2679:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1972
.LVL2680:
.LBB10701:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL2681:
	b .L1874
.LVL2682:
.L2037:
.LBE10701:
.LBE10700:
.LBE10699:
.LBE10698:
.LBE10697:
.LBE10703:
.LBE10707:
.LBE10710:
.LBE11029:
.LBB11030:
.LBB10659:
.LBB10654:
.LBB10648:
.LBB10642:
.LBB10643:
.LBB10644:
.LBB10645:
	.loc 10 241 0
	mr 3,27
	addi 4,31,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL2683:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1980
.LVL2684:
.LBB10646:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL2685:
	b .L1907
.LVL2686:
.L1974:
.LBE10646:
.LBE10645:
.LBE10644:
.LBE10643:
.LBE10642:
.LBE10648:
.LBE10654:
.LBE10659:
.LBE11030:
.LBB11031:
.LBB10829:
.LBB10822:
.LBB10813:
	.loc 3 59 0
	lis 31,.LC4@ha
	la 31,.LC4@l(31)
	b .L1877
.LVL2687:
.L1984:
.LBE10813:
.LBE10822:
.LBE10829:
.LBE11031:
.LBB11032:
.LBB10689:
.LBB10683:
.LBB10679:
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L1936
.LVL2688:
.L2038:
.LBE10679:
.LBE10683:
.LBE10689:
.LBE11032:
.LBE11047:
.LBE11054:
.LBB11055:
.LBB11052:
	.loc 16 300 0
	addi 3,26,800
	li 4,0
	bl _ZN6idListI16idTransitionDataE6ResizeEi
	b .L1967
.LVL2689:
.L2039:
.LBE11052:
.LBE11055:
.LBB11056:
.LBB11048:
.LBB11033:
.LBB10830:
.LBB10823:
.LBB10814:
.LBB10803:
.LBB10804:
.LBB10805:
.LBB10806:
	.loc 10 241 0
	mr 3,30
	addi 4,31,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL2690:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1975
.LVL2691:
.LBB10807:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,16(16)
	lwz 31,4(9)
.LVL2692:
	b .L1877
.LVL2693:
.L2042:
.LBE10807:
.LBE10806:
.LBE10805:
.LBE10804:
.LBE10803:
.LBE10814:
.LBE10823:
.LBE10830:
.LBE11033:
.LBB11034:
.LBB10690:
.LBB10684:
.LBB10680:
.LBB10669:
.LBB10670:
.LBB10671:
.LBB10672:
	.loc 10 241 0
	mr 3,31
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL2694:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1985
.LVL2695:
.LBB10673:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,16(16)
	lwz 30,4(9)
.LVL2696:
	b .L1936
.LVL2697:
.L2044:
.LBE10673:
.LBE10672:
.LBE10671:
.LBE10670:
.LBE10669:
.LBE10680:
.LBE10684:
.LBE10690:
.LBE11034:
.LBB11035:
.LBB10998:
.LBB10963:
	.loc 23 129 0
	lwz 10,68(31)
	lwz 11,72(31)
	lwz 9,76(31)
	lwz 0,80(31)
	stw 10,8(1)
	stw 11,12(1)
	stw 9,16(1)
	stw 0,20(1)
	b .L1947
.LVL2698:
.L2045:
.LBE10963:
.LBE10998:
.LBB10999:
.LBB10994:
.LBB10979:
	.loc 23 136 0
	lis 9,.L1958@ha
	slwi 0,0,2
	la 9,.L1958@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L1958:
	.long .L1951-.L1958
	.long .L1952-.L1958
	.long .L1953-.L1958
	.long .L1951-.L1958
	.long .L1954-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1955-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1956-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1951-.L1958
	.long .L1957-.L1958
	.section	".text"
.LVL2699:
.L1945:
.LBE10979:
.LBE10994:
.LBE10999:
.LBB11000:
.LBB10960:
	.loc 21 241 0
	lis 9,.LC74@ha
	.loc 13 897 0
	lfs 3,100(31)
	.loc 21 241 0
	lfs 12,.LC74@l(9)
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
.LBB10947:
.LBB10948:
	.loc 23 109 0
	lis 9,.LC19@ha
.LBE10948:
.LBE10947:
	.loc 21 241 0
	fmuls 12,10,12
	.loc 13 897 0
	lfs 9,40(31)
	lfs 4,104(31)
	lfs 11,44(31)
	.loc 21 241 0
	fmuls 13,12,13
.LVL2700:
	.loc 13 897 0
	lfs 5,108(31)
	lfs 12,48(31)
	lfs 6,112(31)
	.loc 6 1024 0
	fneg 13,13
.LVL2701:
	.loc 13 897 0
	lfs 7,52(31)
.LVL2702:
.LBB10953:
.LBB10949:
	.loc 23 109 0
	lwz 0,.LC19@l(9)
	.loc 23 103 0
	li 9,8
	stw 9,56(31)
.LBE10949:
.LBE10953:
	.loc 13 897 0
	fmadds 9,13,3,9
.LBB10954:
.LBB10950:
	.loc 23 104 0
	stfs 8,60(31)
.LBE10950:
.LBE10954:
	.loc 13 897 0
	fmadds 11,13,4,11
.LBB10955:
.LBB10951:
	.loc 23 105 0
	stfs 10,64(31)
.LBE10951:
.LBE10955:
	.loc 13 897 0
	fmadds 12,13,5,12
.LBB10956:
.LBB10952:
	.loc 23 109 0
	stw 0,116(31)
.LBE10952:
.LBE10956:
	.loc 13 897 0
	fmadds 13,13,6,7
.LVL2703:
.LBE10960:
	.loc 23 106 0
	stfs 9,68(31)
	stfs 11,72(31)
	stfs 12,76(31)
	stfs 13,80(31)
	.loc 23 110 0
	stfs 9,120(31)
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stw 0,48(1)
	lfs 13,48(1)
.LVL2704:
	b .L1941
.LVL2705:
.L1933:
.LBE11000:
.LBE11035:
.LBB11036:
.LBB10897:
.LBB10889:
.LBB10885:
	.loc 23 161 0
	fsubs 0,0,13
.LVL2706:
	.loc 23 162 0
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 29,84(31)
	.loc 23 161 0
	fdivs 0,0,12
.LVL2707:
	.loc 13 918 0
	lfs 6,68(31)
	.loc 23 162 0
	lfs 28,.LC74@l(9)
	.loc 13 918 0
	lfs 2,88(31)
	lfs 11,72(31)
	lfs 3,92(31)
	lfs 9,76(31)
	lfs 4,96(31)
	lfs 5,80(31)
	lfs 1,100(31)
	lfs 7,104(31)
	lfs 8,108(31)
	lfs 10,112(31)
	.loc 6 1024 0
	fneg 30,0
	.loc 23 162 0
	fmuls 13,0,13
	fmuls 12,12,28
	.loc 13 918 0
	fmadds 6,0,29,6
	.loc 23 162 0
	fmadds 13,30,13,0
	b .L2023
.LVL2708:
.L1935:
	.loc 23 181 0
	fsubs 0,0,13
.LVL2709:
	.loc 23 182 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 1,_ZN6idMath7HALF_PIE@l(9)
	.loc 23 181 0
	fdivs 29,0,30
.LVL2710:
.LBB10877:
.LBB10878:
	.loc 18 311 0
	fmuls 1,29,1
	bl sinf
.LVL2711:
.LBE10878:
.LBE10877:
	.loc 23 182 0
	lis 9,.LC74@ha
	fmuls 5,30,1
	lfs 0,.LC74@l(9)
	lis 9,_ZN6idMath11SQRT_1OVER2E@ha
	.loc 13 918 0
	lfs 6,84(31)
	.loc 23 182 0
	fmuls 5,5,0
	lfs 0,_ZN6idMath11SQRT_1OVER2E@l(9)
	b .L2019
.LVL2712:
.L1957:
.LBE10885:
.LBE10889:
.LBE10897:
.LBE11036:
.LBB11037:
.LBB11001:
.LBB10995:
.LBB10980:
	.loc 23 178 0
	lis 9,.LC1@ha
	lfs 29,64(31)
	lfs 12,.LC1@l(9)
	fcmpu 7,29,12
	beq- 7,.L2028
	.loc 23 181 0
	fsubs 0,0,13
.LVL2713:
	.loc 23 182 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 1,_ZN6idMath7HALF_PIE@l(9)
	.loc 23 181 0
	fdivs 30,0,29
.LVL2714:
.LBB10967:
.LBB10968:
	.loc 18 311 0
	fmuls 1,30,1
	bl sinf
.LVL2715:
.LBE10968:
.LBE10967:
	.loc 23 182 0
	lis 9,.LC74@ha
	fmuls 5,29,1
	lfs 0,.LC74@l(9)
	lis 9,_ZN6idMath11SQRT_1OVER2E@ha
	.loc 13 918 0
	lfs 6,88(31)
	.loc 23 182 0
	fmuls 5,5,0
	lfs 0,_ZN6idMath11SQRT_1OVER2E@l(9)
.LVL2716:
.L2030:
	.loc 13 918 0
	lfs 7,92(31)
	.loc 23 182 0
	fmuls 0,5,0
.LVL2717:
	.loc 13 918 0
	lfs 8,96(31)
.LBE10980:
	lfs 9,84(31)
	lfs 10,68(31)
.LBB10981:
	lfs 11,72(31)
	lfs 12,76(31)
	lfs 13,80(31)
	fmadds 11,30,6,11
	fmadds 12,30,7,12
	lfs 7,104(31)
	fmadds 13,30,8,13
	lfs 8,108(31)
.LBE10981:
	fmadds 30,30,9,10
.LVL2718:
.LBB10982:
	lfs 9,112(31)
.LBE10982:
	lfs 10,100(31)
.LBB10983:
	fmadds 11,0,7,11
	fmadds 12,0,8,12
.LVL2719:
	fmadds 13,0,9,13
.LVL2720:
.LBE10983:
	fmadds 0,0,10,30
.LVL2721:
	.loc 23 183 0
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stfs 0,120(31)
	b .L1951
.LVL2722:
.L1956:
.LBB10984:
	.loc 23 168 0
	lis 9,.LC1@ha
	lfs 29,64(31)
	lfs 12,.LC1@l(9)
	fcmpu 7,29,12
	beq- 7,.L2028
	.loc 23 171 0
	fsubs 0,0,13
.LVL2723:
	.loc 23 172 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 1,_ZN6idMath7HALF_PIE@l(9)
	.loc 23 171 0
	fdivs 30,0,29
.LVL2724:
.LBB10969:
.LBB10970:
	.loc 18 347 0
	fmuls 1,30,1
	bl cosf
.LVL2725:
.LBE10970:
.LBE10969:
	.loc 23 172 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	lis 9,_ZN6idMath11SQRT_1OVER2E@ha
	.loc 13 918 0
	lfs 6,88(31)
	.loc 23 172 0
	fsubs 0,0,1
	fmuls 5,29,0
	lfs 0,_ZN6idMath11SQRT_1OVER2E@l(9)
	lis 9,.LC74@ha
	lfs 13,.LC74@l(9)
	fmuls 5,5,13
	b .L2030
.LVL2726:
.L1955:
	.loc 23 158 0
	lis 9,.LC1@ha
	lfs 12,64(31)
	lfs 11,.LC1@l(9)
	fcmpu 7,12,11
	beq- 7,.L2028
	.loc 23 161 0
	fsubs 0,0,13
.LVL2727:
	.loc 23 162 0
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 29,88(31)
	.loc 23 161 0
	fdivs 0,0,12
.LVL2728:
	.loc 13 918 0
	lfs 10,72(31)
	.loc 23 162 0
	lfs 28,.LC74@l(9)
	.loc 13 918 0
	lfs 1,92(31)
	lfs 11,76(31)
	lfs 2,96(31)
	lfs 8,80(31)
.LBE10984:
	lfs 3,84(31)
	lfs 4,68(31)
.LBB10985:
	lfs 5,104(31)
	lfs 6,108(31)
	lfs 7,112(31)
.LBE10985:
	lfs 9,100(31)
.LBB10986:
	.loc 6 1024 0
	fneg 30,0
	.loc 23 162 0
	fmuls 13,0,13
	fmuls 12,12,28
	.loc 13 918 0
	fmadds 10,0,29,10
	.loc 23 162 0
	fmadds 13,30,13,0
.L2029:
	fmuls 13,13,12
.LVL2729:
	.loc 13 918 0
	fmadds 11,0,1,11
	fmadds 8,0,2,8
.LBE10986:
	fmadds 0,0,3,4
.LVL2730:
.LBB10987:
	fmadds 10,13,5,10
	fmadds 11,13,6,11
	fmadds 12,13,7,8
.LVL2731:
.LBE10987:
	fmadds 13,13,9,0
.LVL2732:
	.loc 23 163 0
	stfs 10,124(31)
	stfs 11,128(31)
	stfs 12,132(31)
	stfs 13,120(31)
	b .L1951
.LVL2733:
.L1954:
.LBB10988:
	.loc 23 148 0
	lis 9,.LC1@ha
	lfs 12,64(31)
	lfs 11,.LC1@l(9)
	fcmpu 7,12,11
	beq- 7,.L2028
	.loc 23 151 0
	fsubs 0,0,13
.LVL2734:
	.loc 23 152 0
	lis 9,.LC34@ha
	lfs 13,.LC34@l(9)
	lis 9,.LC74@ha
	.loc 13 918 0
	lfs 30,88(31)
	.loc 23 151 0
	fdivs 0,0,12
.LVL2735:
	.loc 13 918 0
	lfs 10,72(31)
	.loc 23 152 0
	lfs 29,.LC74@l(9)
	.loc 13 918 0
	lfs 1,92(31)
	lfs 11,76(31)
	lfs 2,96(31)
	lfs 8,80(31)
.LBE10988:
	lfs 3,84(31)
	lfs 4,68(31)
.LBB10989:
	lfs 5,104(31)
	lfs 6,108(31)
	lfs 7,112(31)
.LBE10989:
	lfs 9,100(31)
.LBB10990:
	.loc 23 152 0
	fmuls 13,0,13
	fmuls 12,12,29
	.loc 13 918 0
	fmadds 10,0,30,10
	.loc 23 152 0
	fmuls 13,0,13
	b .L2029
.LVL2736:
.L1953:
	.loc 23 143 0
	fsubs 0,0,13
.LVL2737:
	lis 9,.LC74@ha
.LBB10971:
.LBB10972:
	.loc 13 918 0
	lfs 5,88(31)
	lfs 6,104(31)
	lfs 7,92(31)
	lfs 10,108(31)
	fadds 6,5,6
.LBE10972:
.LBE10971:
	.loc 23 143 0
	lfs 4,.LC74@l(9)
.LBB10976:
.LBB10973:
	.loc 13 918 0
	lfs 11,112(31)
	fadds 7,7,10
	lfs 12,100(31)
.LBE10973:
.LBE10976:
	.loc 23 143 0
	fmuls 0,0,4
.LVL2738:
.LBB10977:
.LBB10974:
	.loc 13 918 0
	lfs 8,96(31)
	lfs 9,84(31)
	fadds 8,8,11
.LBE10974:
.LBE10977:
	lfs 13,80(31)
.LBB10978:
.LBB10975:
	fadds 9,9,12
.LBE10975:
.LBE10978:
	lfs 11,72(31)
	lfs 12,76(31)
.LVL2739:
.L2027:
.LBE10990:
	lfs 10,68(31)
.LBB10991:
	fmadds 11,0,6,11
	fmadds 12,0,7,12
	fmadds 13,0,8,13
.LVL2740:
.LBE10991:
	fmadds 0,0,9,10
.LVL2741:
	.loc 23 144 0
	stfs 11,124(31)
	stfs 12,128(31)
	stfs 13,132(31)
	stfs 0,120(31)
	b .L1951
.LVL2742:
.L1952:
.LBB10992:
	.loc 23 138 0
	fsubs 0,0,13
.LVL2743:
	lis 9,.LC74@ha
	lfs 12,.LC74@l(9)
	.loc 13 918 0
	lfs 6,88(31)
	.loc 23 138 0
	fmuls 0,0,12
.LVL2744:
	.loc 13 918 0
	lfs 11,72(31)
	lfs 7,92(31)
	lfs 12,76(31)
	lfs 8,96(31)
	lfs 13,80(31)
.LBE10992:
	lfs 9,84(31)
	b .L2027
.LVL2745:
.L2028:
.LBB10993:
	.loc 23 179 0
	lwz 10,68(31)
	lwz 11,72(31)
	lwz 9,76(31)
	lwz 0,80(31)
	stw 10,120(31)
	stw 11,124(31)
	stw 9,128(31)
	stw 0,132(31)
	b .L1951
.LVL2746:
.L1976:
.LBE10993:
.LBE10995:
.LBE11001:
.LBE11037:
.LBB11038:
.LBB10926:
.LBB10921:
.LBB10917:
	.loc 3 59 0
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L1879
.LVL2747:
.L1988:
.LBE10917:
.LBE10921:
.LBE10926:
.LBE11038:
.LBB11039:
.LBB11022:
.LBB11020:
.LBB11017:
	lis 31,.LC4@ha
	la 31,.LC4@l(31)
	b .L1963
.LVL2748:
.L2046:
.LBB11012:
.LBB11013:
.LBB11014:
.LBB11015:
	.loc 10 241 0
	mr 3,30
	addi 4,31,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL2749:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1988
.LVL2750:
.LBB11016:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL2751:
	b .L1963
.LVL2752:
.L2043:
.LBE11016:
.LBE11015:
.LBE11014:
.LBE11013:
.LBE11012:
.LBE11017:
.LBE11020:
.LBE11022:
.LBE11039:
.LBB11040:
.LBB10927:
.LBB10922:
.LBB10918:
.LBB10912:
.LBB10913:
.LBB10914:
.LBB10915:
	.loc 10 241 0
	mr 3,27
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL2753:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L1976
.LVL2754:
.LBB10916:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL2755:
	b .L1879
.LVL2756:
.L1985:
.LBE10916:
.LBE10915:
.LBE10914:
.LBE10913:
.LBE10912:
.LBE10918:
.LBE10922:
.LBE10927:
.LBE11040:
.LBB11041:
.LBB10691:
.LBB10685:
.LBB10681:
.LBB10678:
.LBB10677:
.LBB10676:
.LBB10675:
	.loc 10 245 0
	lis 30,.LC4@ha
.LVL2757:
.LBB10674:
	.loc 6 4264 0
	lfs 1,16(16)
.LBE10674:
	.loc 10 245 0
	la 30,.LC4@l(30)
	b .L1936
.LVL2758:
.L1975:
.LBE10675:
.LBE10676:
.LBE10677:
.LBE10678:
.LBE10681:
.LBE10685:
.LBE10691:
.LBE11041:
.LBB11042:
.LBB10831:
.LBB10824:
.LBB10815:
.LBB10812:
.LBB10811:
.LBB10810:
.LBB10809:
	lis 31,.LC4@ha
.LVL2759:
.LBB10808:
	.loc 6 4264 0
	lfs 1,16(16)
.LBE10808:
	.loc 10 245 0
	la 31,.LC4@l(31)
	b .L1877
.LVL2760:
.L2033:
.LBE10809:
.LBE10810:
.LBE10811:
.LBE10812:
.LBE10815:
.LBE10824:
.LBE10831:
.LBE11042:
	.loc 6 1034 0
	mr 3,27
.LVL2761:
	mr 4,22
	mr 5,17
	li 6,0
	bl __dynamic_cast
.LVL2762:
	.loc 6 1032 0
	mr 16,30
	.loc 6 1035 0
	mr. 25,3
	bne+ 0,.L1868
	.loc 6 1036 0 discriminator 2
	mr 3,27
.LVL2763:
	mr 4,22
	mr 5,18
	li 6,0
	bl __dynamic_cast
	mr 16,3
	b .L1868
.LBE11048:
.LBE11056:
.LBE11057:
	.cfi_endproc
.LFE2922:
	.size	_ZN8idWindow10TransitionEv, .-_ZN8idWindow10TransitionEv
	.align 2
	.globl _ZN8idWindow13RunTimeEventsEi
	.type	_ZN8idWindow13RunTimeEventsEi, @function
_ZN8idWindow13RunTimeEventsEi:
.LFB2915:
	.loc 6 621 0
	.cfi_startproc
.LVL2764:
	mflr 0
	stwu 1,-24(1)
.LCFI434:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
.LBB11070:
	.loc 6 623 0
	lwz 0,52(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 6 625 0
	li 3,0
.LVL2765:
	.loc 6 623 0
	subf 0,0,4
	cmpwi 7,0,15
	ble- 7,.L2048
.LVL2766:
.LBE11070:
.LBB11071:
.LBB11072:
.LBB11073:
	.loc 6 4264 0
	lwz 28,640(31)
.LBE11073:
	.loc 6 628 0
	stw 4,52(31)
.LVL2767:
.LBB11076:
.LBB11074:
.LBB11075:
	.loc 6 611 0
	cmpwi 7,28,0
	ble- 7,.L2049
	li 29,0
.LVL2768:
.L2050:
	.loc 6 612 0
	lwz 9,652(31)
	slwi 0,29,2
	.loc 6 611 0
	addi 29,29,1
.LVL2769:
	.loc 6 612 0
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL2770:
	.loc 6 611 0
	cmpw 7,29,28
	bne+ 7,.L2050
.LVL2771:
.L2049:
.LBE11075:
.LBE11074:
.LBE11076:
	.loc 6 632 0
	lwz 0,832(31)
	cmpwi 7,0,0
	beq- 7,.L2051
	lwz 0,816(31)
	cmpwi 7,0,0
	beq- 7,.L2051
	.loc 6 633 0
	mr 3,31
	li 4,-1
	li 5,0
	bl _ZN8idWindow8EvalRegsEib
.L2051:
	.loc 6 636 0
	lwz 0,48(31)
	andi. 9,0,1024
	bne- 0,.L2058
.L2052:
	.loc 6 640 0
	mr 3,31
	bl _ZN8idWindow4TimeEv
	.loc 6 643 0
	mr 3,31
	li 4,6
	bl _ZN8idWindow9RunScriptEi
.LBE11072:
	.loc 6 4264 0
	lwz 28,680(31)
.LVL2772:
.LBB11078:
.LBB11077:
	.loc 6 646 0
	li 3,1
	cmpwi 7,28,0
	ble- 7,.L2048
	li 29,0
.LVL2773:
.L2053:
	.loc 6 647 0
	lwz 9,692(31)
	slwi 0,29,2
	mr 4,30
	.loc 6 646 0
	addi 29,29,1
.LVL2774:
	.loc 6 647 0
	lwzx 3,9,0
	bl _ZN8idWindow13RunTimeEventsEi
.LVL2775:
	.loc 6 646 0
	cmpw 7,29,28
	bne+ 7,.L2053
	li 3,1
.LVL2776:
.L2048:
.LBE11077:
.LBE11078:
.LBE11071:
	.loc 6 651 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL2777:
	lwz 31,20(1)
.LVL2778:
	addi 1,1,24
	.cfi_remember_state
.LCFI435:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2779:
.L2058:
.LCFI436:
	.cfi_restore_state
.LBB11080:
.LBB11079:
	.loc 6 637 0
	mr 3,31
	bl _ZN8idWindow10TransitionEv
	b .L2052
.LBE11079:
.LBE11080:
	.cfi_endproc
.LFE2915:
	.size	_ZN8idWindow13RunTimeEventsEi, .-_ZN8idWindow13RunTimeEventsEi
	.align 2
	.globl _ZN8idWindow6RedrawEff
	.type	_ZN8idWindow6RedrawEff, @function
_ZN8idWindow6RedrawEff:
.LFB2929:
	.loc 6 1220 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2929
.LVL2780:
	mflr 0
	stwu 1,-304(1)
.LCFI437:
	.cfi_def_cfa_offset 304
	.cfi_register 65, 0
.LVL2781:
.LBB11153:
.LBB11154:
.LBB11155:
.LBB11156:
	.loc 4 356 0
	li 9,0
.LBE11156:
.LBE11155:
.LBE11154:
.LBE11153:
	.loc 6 1220 0
	stfd 30,288(1)
	fmr 30,2
	.cfi_offset 62, -16
	stfd 31,296(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 30,256(1)
.LBB11345:
.LBB11165:
.LBB11166:
	.loc 6 1223 0
	lis 30,r_skipGuiShaders@ha
	.cfi_offset 30, -48
.LBE11166:
.LBE11165:
.LBE11345:
	.loc 6 1220 0
	stw 31,260(1)
.LBB11346:
.LBB11170:
.LBB11167:
	.loc 6 1223 0
	la 30,r_skipGuiShaders@l(30)
.LBE11167:
.LBE11170:
.LBE11346:
	.loc 6 1220 0
	stw 0,308(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -44
	stfd 27,264(1)
	stfd 28,272(1)
	stfd 29,280(1)
	stw 22,224(1)
	stw 23,228(1)
	stw 24,232(1)
	stw 25,236(1)
	stw 26,240(1)
	stw 27,244(1)
	stw 28,248(1)
	stw 29,252(1)
.LBB11347:
.LBB11171:
.LBB11161:
.LBB11157:
	.loc 4 356 0
	stw 9,92(1)
.LBE11157:
.LBE11161:
.LBE11171:
.LBB11172:
.LBB11168:
	.loc 2 143 0
	lwz 11,44(30)
.LBE11168:
.LBE11172:
.LBB11173:
.LBB11162:
.LBB11158:
	.loc 4 359 0
	stb 9,104(1)
.LBE11158:
.LBE11162:
.LBE11173:
.LBB11174:
.LBB11169:
	.loc 2 143 0
	lwz 0,36(11)
.LBE11169:
.LBE11174:
.LBB11175:
.LBB11163:
.LBB11159:
	.loc 4 357 0
	li 11,20
	stw 11,100(1)
	.loc 4 358 0
	addi 11,1,104
.LBE11159:
.LBE11163:
.LBE11175:
	.loc 6 1223 0
	cmpwi 7,0,1
.LBB11176:
.LBB11164:
.LBB11160:
	.loc 4 358 0
	stw 11,96(1)
.LBE11160:
.LBE11164:
.LBE11176:
	.loc 6 1223 0
	beq- 7,.L2094
	.cfi_offset 29, -52
	.cfi_offset 28, -56
	.cfi_offset 27, -60
	.cfi_offset 26, -64
	.cfi_offset 25, -68
	.cfi_offset 24, -72
	.cfi_offset 23, -76
	.cfi_offset 22, -80
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.loc 6 1223 0 is_stmt 0 discriminator 2
	lwz 9,728(3)
	cmpwi 7,9,0
	beq- 7,.L2094
	.loc 6 1229 0 is_stmt 1
	lwz 9,48(3)
.LBB11177:
.LBB11178:
.LBB11179:
	.loc 6 4264 0
	lwz 11,732(3)
.LBE11179:
.LBE11178:
.LBE11177:
	.loc 6 1229 0
	andis. 10,9,4096
.LBB11184:
.LBB11182:
.LBB11180:
	.loc 6 4264 0
	lwz 29,200(11)
.LBE11180:
.LBE11182:
.LBE11184:
	.loc 6 1229 0
	beq- 0,.L2082
	.loc 6 1229 0 is_stmt 0 discriminator 1
	cmpwi 7,0,3
	beq- 7,.L2062
	.loc 6 1230 0 is_stmt 1 discriminator 4
	mr 4,29
	addi 28,1,92
.LEHB162:
	bl _ZN8idWindow13RunTimeEventsEi
.LVL2782:
	.loc 6 1230 0 is_stmt 0
	lwz 9,44(30)
	lwz 0,36(9)
.L2082:
	.loc 6 1233 0 is_stmt 1
	cmpwi 7,0,2
	beq- 7,.L2094
	lwz 9,48(31)
.L2062:
	.loc 6 1237 0
	andis. 0,9,128
	bne- 0,.L2095
.L2063:
	.loc 6 1241 0
	andis. 0,9,64
	addi 28,1,92
	bne- 0,.L2096
.L2065:
	.loc 6 1248 0
	lbz 0,241(31)
	cmpwi 7,0,0
	beq+ 7,.L2060
	.loc 6 1252 0
	lis 9,.LC1@ha
	mr 3,31
	lfs 1,.LC1@l(9)
	fmr 2,1
	bl _ZN8idWindow14CalcClientRectEff
	.loc 6 1254 0
	mr 3,31
	bl _ZN8idWindow7SetFontEv
	.loc 6 1257 0
	lwz 3,728(31)
	lfs 1,108(31)
	lfs 2,112(31)
	bl _ZN15idDeviceContext7SetSizeEff
.LVL2783:
.LBB11185:
.LBB11186:
	.loc 12 45 0
	lfs 13,56(31)
.LBE11186:
.LBE11185:
	.loc 6 1270 0
	addi 4,1,16
.LBB11192:
.LBB11187:
	.loc 12 46 0
	lfs 0,60(31)
.LBE11187:
.LBE11192:
	.loc 6 1270 0
	addi 5,1,124
.LBB11193:
.LBB11194:
	.loc 12 45 0
	lfs 9,72(31)
.LBE11194:
.LBE11193:
.LBB11199:
.LBB11188:
	fadds 13,31,13
.LBE11188:
.LBE11199:
.LBB11200:
.LBB11195:
	.loc 12 46 0
	lfs 10,76(31)
.LBE11195:
.LBE11200:
.LBB11201:
.LBB11189:
	fadds 0,30,0
.LBE11189:
.LBE11201:
.LBB11202:
.LBB11203:
	.loc 12 45 0
	lfs 11,656(31)
.LBE11203:
.LBE11202:
.LBB11208:
.LBB11196:
	fadds 9,9,31
.LBE11196:
.LBE11208:
.LBB11209:
.LBB11204:
	.loc 12 46 0
	lfs 12,660(31)
.LBE11204:
.LBE11209:
.LBB11210:
.LBB11197:
	fadds 10,10,30
.LBE11197:
.LBE11210:
.LBB11211:
.LBB11205:
	.loc 12 45 0
	fadds 11,11,31
.LBE11205:
.LBE11211:
.LBB11212:
.LBB11190:
	stfs 13,56(31)
.LBE11190:
.LBE11212:
.LBB11213:
.LBB11206:
	.loc 12 46 0
	fadds 12,12,30
.LBE11206:
.LBE11213:
.LBB11214:
.LBB11191:
	stfs 0,60(31)
.LVL2784:
.LBE11191:
.LBE11214:
.LBB11215:
.LBB11198:
	.loc 12 45 0
	stfs 9,72(31)
	.loc 12 46 0
	stfs 10,76(31)
.LVL2785:
.LBE11198:
.LBE11215:
.LBB11216:
.LBB11207:
	.loc 12 45 0
	stfs 11,656(31)
	.loc 12 46 0
	stfs 12,660(31)
.LBE11207:
.LBE11216:
	.loc 6 1264 0
	stfs 13,36(31)
	.loc 6 1265 0
	stfs 0,40(31)
	.loc 6 1270 0
	lwz 3,728(31)
	bl _ZN15idDeviceContext16GetTransformInfoER6idVec3R6idMat3
	.loc 6 1272 0
	fmr 1,31
	mr 3,31
	fmr 2,30
	bl _ZN8idWindow15SetupTransformsEff
	.loc 6 1273 0
	lwz 9,0(31)
	addi 27,31,56
	mr 3,31
	mr 4,27
	lwz 0,84(9)
	mtctr 0
	bctrl
	.loc 6 1274 0
	mr 3,31
	mr 4,27
	bl _ZN8idWindow20DrawBorderAndCaptionERK11idRectangle
	.loc 6 1276 0
	lwz 0,48(31)
	andis. 9,0,1
	beq- 0,.L2097
.L2066:
.LBB11217:
.LBB11218:
	.loc 2 143 0
	lwz 9,44(30)
.LBE11218:
.LBE11217:
	.loc 6 1280 0
	lwz 0,36(9)
	cmpwi 7,0,4
	ble- 7,.L2098
.L2067:
.LBB11219:
.LBB11220:
	.loc 6 1284 0
	lis 26,.LANCHOR0@ha
	la 26,.LANCHOR0@l(26)
	addi 27,26,56
	.loc 2 143 0
	lwz 9,44(27)
.LBE11220:
.LBE11219:
	.loc 6 1284 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L2099
.L2068:
	.loc 6 4264 0
	lwz 29,696(31)
.LVL2786:
.LBB11221:
	.loc 6 1289 0
	cmpwi 7,29,0
	ble- 7,.L2069
	li 30,0
	b .L2072
.LVL2787:
.L2100:
	.loc 6 1292 0
	lwz 9,0(3)
	lfs 1,72(31)
	lfs 13,100(31)
	lfs 2,76(31)
	lfs 0,104(31)
	fadds 1,1,13
	lwz 0,24(9)
	fadds 2,2,0
	mtctr 0
	bctrl
.LVL2788:
	.loc 6 1289 0
	addi 30,30,1
.LVL2789:
	cmpw 7,30,29
	beq- 7,.L2069
.LVL2790:
.L2072:
.LBB11222:
.LBB11223:
	.loc 16 589 0
	lwz 9,708(31)
	.loc 6 1220 0
	slwi 0,30,3
.LBE11223:
.LBE11222:
	.loc 6 1290 0
	lwzx 3,9,0
.LBB11225:
.LBB11224:
	.loc 16 589 0
	add 9,9,0
.LBE11224:
.LBE11225:
	.loc 6 1290 0
	cmpwi 7,3,0
	bne+ 7,.L2100
.LVL2791:
	.loc 6 1295 0
	lfs 1,72(31)
	lfs 13,100(31)
	lfs 2,76(31)
	lfs 0,104(31)
	fadds 1,1,13
	lwz 3,4(9)
	fadds 2,2,0
	bl _ZN14idSimpleWindow6RedrawEff
	.loc 6 1289 0
	addi 30,30,1
.LVL2792:
	cmpw 7,30,29
	bne+ 7,.L2072
.LVL2793:
.L2069:
.LBE11221:
	.loc 6 1300 0
	lwz 3,728(31)
	addi 4,1,16
	addi 5,1,124
	bl _ZN15idDeviceContext16SetTransformInfoERK6idVec3RK6idMat3
	.loc 6 1302 0
	lwz 0,48(31)
	andis. 9,0,1
	beq- 0,.L2101
.L2073:
.LBB11226:
.LBB11227:
	.loc 2 142 0
	lwz 9,44(26)
.LBE11227:
.LBE11226:
	.loc 6 1306 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L2102
.L2074:
	.loc 6 1307 0 discriminator 7
	lis 4,vec3_origin@ha
	lis 5,mat3_identity@ha
	lwz 3,728(31)
	la 4,vec3_origin@l(4)
	la 5,mat3_identity@l(5)
	bl _ZN15idDeviceContext16SetTransformInfoERK6idVec3RK6idMat3
	.loc 6 1308 0
	lwz 3,732(31)
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
.L2075:
.LBB11228:
.LBB11229:
	.loc 2 143 0
	lwz 9,44(27)
.LBE11229:
.LBE11228:
	.loc 6 1311 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L2076
	.loc 6 1311 0 is_stmt 0 discriminator 1
	lwz 0,48(31)
	andis. 9,0,4096
	beq- 0,.L2076
	.loc 6 1312 0 is_stmt 1 discriminator 4
	lwz 9,728(31)
.LVL2794:
.LBB11230:
.LBB11231:
	.loc 11 90 0 discriminator 4
	li 0,0
	stb 0,148(9)
.LBE11231:
.LBE11230:
	.loc 6 1313 0 discriminator 4
	lwz 3,732(31)
	lwz 9,0(3)
	lwz 0,124(9)
	mtctr 0
	bctrl
	lwz 3,732(31)
	fmr 29,1
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	.loc 6 1313 0 is_stmt 0 discriminator 1
	fmr 2,1
	lis 4,.LC79@ha
	fmr 1,29
	mr 3,28
	la 4,.LC79@l(4)
	creqv 6,6,6
	bl _Z7sprintfR5idStrPKcz
.LBB11232:
.LBB11233:
	.loc 12 41 0 is_stmt 1
	li 11,0
.LBE11233:
.LBE11232:
	.loc 6 1314 0
	lis 29,_ZN15idDeviceContext10colorWhiteE@ha
.LBB11240:
.LBB11234:
	.loc 12 41 0
	stw 11,44(1)
.LBE11234:
.LBE11240:
	.loc 6 1314 0
	la 30,_ZN15idDeviceContext10colorWhiteE@l(29)
.LBB11241:
.LBB11235:
	.loc 12 41 0
	stw 11,48(1)
	lis 11,.LC14@ha
	lwz 11,.LC14@l(11)
.LBE11235:
.LBE11241:
	.loc 6 1314 0
	lis 26,.LC16@ha
.LBB11242:
.LBB11236:
	.loc 12 41 0
	lis 27,.LC15@ha
.LBE11236:
.LBE11242:
.LBB11243:
	.loc 6 4264 0
	lwz 4,4(28)
.LBE11243:
.LBB11244:
.LBB11237:
	.loc 12 41 0
	stw 11,52(1)
.LBE11237:
.LBE11244:
	.loc 6 1314 0
	li 11,0
	lwz 3,728(31)
.LVL2795:
	li 0,0
	lwz 24,4(30)
	li 5,0
	lwz 12,8(30)
	addi 6,1,168
	lwz 25,12(30)
	addi 7,1,184
.LBB11245:
.LBB11238:
	.loc 12 41 0
	lwz 22,.LC15@l(27)
.LBE11238:
.LBE11245:
	.loc 6 1314 0
	li 8,0
	lwz 23,_ZN15idDeviceContext10colorWhiteE@l(29)
	li 9,-1
	stw 11,184(1)
	li 10,0
	stw 11,188(1)
	lis 11,0x42c8
	lfs 1,.LC16@l(26)
	stw 11,192(1)
	lis 11,0x41a0
.LBB11246:
.LBB11239:
	.loc 12 41 0
	stw 22,56(1)
.LBE11239:
.LBE11246:
	.loc 6 1314 0
	stw 23,168(1)
	stw 24,172(1)
	stw 12,176(1)
	stw 25,180(1)
	stw 11,196(1)
	stw 0,8(1)
	stw 0,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
.LBB11247:
.LBB11248:
	.loc 12 41 0
	lwz 11,.LC15@l(27)
	li 25,0
.LBE11248:
.LBE11247:
.LBB11254:
.LBB11255:
	.loc 6 4264 0
	lwz 9,732(31)
.LBE11255:
.LBE11254:
	.loc 6 1315 0
	li 0,0
.LBB11257:
.LBB11249:
	.loc 12 41 0
	stw 11,32(1)
.LBE11249:
.LBE11257:
	.loc 6 1315 0
	li 5,0
.LBB11258:
.LBB11250:
	.loc 12 41 0
	stw 11,40(1)
.LBE11250:
.LBE11258:
	.loc 6 1315 0
	li 11,0
.LBB11259:
.LBB11256:
	.loc 6 4264 0
	lwz 4,64(9)
.LBE11256:
.LBE11259:
	.loc 6 1315 0
	addi 6,1,168
	lwz 27,4(30)
	addi 7,1,184
	lwz 3,728(31)
.LVL2796:
	li 8,0
	lfs 1,.LC16@l(26)
	li 9,-1
	lwz 26,_ZN15idDeviceContext10colorWhiteE@l(29)
	li 10,0
	lwz 29,8(30)
.LBB11260:
.LBB11251:
	.loc 12 41 0
	stw 25,28(1)
	lis 25,.LC80@ha
.LBE11251:
.LBE11260:
	.loc 6 1315 0
	lwz 30,12(30)
	stw 11,184(1)
	lis 11,0x41a0
.LBB11261:
.LBB11252:
	.loc 12 41 0
	lwz 25,.LC80@l(25)
.LBE11252:
.LBE11261:
	.loc 6 1315 0
	stw 11,188(1)
	lis 11,0x4396
	stw 11,192(1)
	lis 11,0x41a0
.LBB11262:
.LBB11253:
	.loc 12 41 0
	stw 25,36(1)
.LBE11253:
.LBE11262:
	.loc 6 1315 0
	stw 26,168(1)
	stw 27,172(1)
	stw 29,176(1)
	stw 30,180(1)
	stw 11,196(1)
	stw 0,8(1)
	stw 0,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
.LEHE162:
.LVL2797:
	.loc 6 1316 0
	lwz 9,728(31)
.LVL2798:
.LBB11263:
.LBB11264:
	.loc 11 90 0
	li 0,1
	stb 0,148(9)
.LVL2799:
.L2076:
.LBE11264:
.LBE11263:
.LBB11265:
.LBB11266:
	.loc 12 45 0
	lfs 11,56(31)
.LBE11266:
.LBE11265:
.LBB11272:
.LBB11273:
.LBB11274:
	.loc 4 501 0
	mr 3,28
.LBE11274:
.LBE11273:
.LBE11272:
.LBB11277:
.LBB11267:
	.loc 12 46 0
	lfs 12,60(31)
.LBE11267:
.LBE11277:
.LBB11278:
.LBB11279:
	.loc 12 45 0
	lfs 13,72(31)
.LBE11279:
.LBE11278:
.LBB11284:
.LBB11268:
	fsubs 11,11,31
.LBE11268:
.LBE11284:
.LBB11285:
.LBB11280:
	.loc 12 46 0
	lfs 0,76(31)
.LBE11280:
.LBE11285:
.LBB11286:
.LBB11269:
	fsubs 12,12,30
.LBE11269:
.LBE11286:
.LBB11287:
.LBB11288:
	.loc 12 45 0
	lfs 9,656(31)
.LBE11288:
.LBE11287:
.LBB11293:
.LBB11281:
	fsubs 13,13,31
.LBE11281:
.LBE11293:
.LBB11294:
.LBB11289:
	.loc 12 46 0
	lfs 10,660(31)
.LBE11289:
.LBE11294:
.LBB11295:
.LBB11282:
	fsubs 0,0,30
.LBE11282:
.LBE11295:
.LBB11296:
.LBB11290:
	.loc 12 45 0
	fsubs 31,9,31
.LVL2800:
.LBE11290:
.LBE11296:
.LBB11297:
.LBB11270:
	stfs 11,56(31)
.LBE11270:
.LBE11297:
.LBB11298:
.LBB11291:
	.loc 12 46 0
	fsubs 30,10,30
.LVL2801:
.LBE11291:
.LBE11298:
.LBB11299:
.LBB11271:
	stfs 12,60(31)
.LBE11271:
.LBE11299:
.LBB11300:
.LBB11283:
	.loc 12 45 0
	stfs 13,72(31)
	.loc 12 46 0
	stfs 0,76(31)
.LBE11283:
.LBE11300:
.LBB11301:
.LBB11292:
	.loc 12 45 0
	stfs 31,656(31)
	.loc 12 46 0
	stfs 30,660(31)
.LVL2802:
.LEHB163:
.LBE11292:
.LBE11301:
.LBB11302:
.LBB11276:
.LBB11275:
	.loc 4 501 0
	bl _ZN5idStr8FreeDataEv
	b .L2059
.LVL2803:
.L2094:
	addi 28,1,92
.L2060:
.LVL2804:
.LBE11275:
.LBE11276:
.LBE11302:
.LBB11303:
.LBB11304:
.LBB11305:
	mr 3,28
	bl _ZN5idStr8FreeDataEv
.LEHE163:
.LVL2805:
.L2059:
.LBE11305:
.LBE11304:
.LBE11303:
.LBE11347:
	.loc 6 1322 0
	lwz 0,308(1)
	lwz 22,224(1)
	mtlr 0
	lwz 23,228(1)
	lwz 24,232(1)
	lwz 25,236(1)
	lwz 26,240(1)
	lwz 27,244(1)
	lwz 28,248(1)
	lwz 29,252(1)
	lwz 30,256(1)
	lwz 31,260(1)
.LVL2806:
	lfd 27,264(1)
	lfd 28,272(1)
	lfd 29,280(1)
	lfd 30,288(1)
	lfd 31,296(1)
	addi 1,1,304
	.cfi_remember_state
.LCFI438:
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
	blr
.LVL2807:
.L2096:
.LCFI439:
	.cfi_restore_state
.LBB11348:
	.loc 6 1242 0
	lwz 9,728(31)
.LVL2808:
.LBB11306:
.LBB11307:
	.loc 11 90 0
	li 0,0
	stb 0,148(9)
.LVL2809:
.LBE11307:
.LBE11306:
	.loc 6 1243 0
	lwz 3,732(31)
.LBB11308:
.LBB11309:
	.loc 3 423 0
	lfs 28,276(31)
.LBE11309:
.LBE11308:
	.loc 6 1243 0
	lwz 9,0(3)
.LBB11311:
.LBB11310:
	.loc 6 4264 0
	lfs 29,280(31)
.LBE11310:
.LBE11311:
	.loc 6 1243 0
	lwz 0,124(9)
	mtctr 0
.LEHB164:
	bctrl
	lwz 3,732(31)
	fmr 27,1
	addi 28,1,92
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	.loc 6 1243 0 is_stmt 0 discriminator 1
	fctiwz 28,28
	addi 9,1,200
	fctiwz 29,29
	addi 10,1,204
	fctiwz 27,27
	addi 28,1,92
	fctiwz 1,1
	stfiwx 28,0,9
	stfiwx 29,0,10
	addi 9,1,208
	addi 10,1,212
	stfiwx 27,0,9
	stfiwx 1,0,10
	lis 4,.LC78@ha
	mr 3,28
	la 4,.LC78@l(4)
	lwz 5,200(1)
	lwz 6,204(1)
	lwz 7,208(1)
	lwz 8,212(1)
	crxor 6,6,6
	bl _Z7sprintfR5idStrPKcz
	.loc 6 1244 0 is_stmt 1
	lis 11,_ZN15idDeviceContext10colorWhiteE@ha
	lis 10,.LC16@ha
	la 9,_ZN15idDeviceContext10colorWhiteE@l(11)
	lwz 25,_ZN15idDeviceContext10colorWhiteE@l(11)
.LBB11312:
.LBB11313:
	.loc 12 41 0
	li 11,0
.LBE11313:
.LBE11312:
	.loc 6 1244 0
	lwz 12,4(9)
.LBB11318:
.LBB11314:
	.loc 12 41 0
	stw 11,60(1)
.LBE11314:
.LBE11318:
	.loc 6 1244 0
	li 0,0
.LBB11319:
.LBB11315:
	.loc 12 41 0
	stw 11,64(1)
	lis 11,.LC14@ha
	lwz 11,.LC14@l(11)
.LBE11315:
.LBE11319:
	.loc 6 1244 0
	li 5,0
	lwz 26,8(9)
	addi 6,1,168
.LBB11320:
.LBB11316:
	.loc 12 41 0
	stw 11,68(1)
	lis 11,.LC15@ha
	lwz 11,.LC15@l(11)
.LBE11316:
.LBE11320:
	.loc 6 1244 0
	addi 7,1,184
	lwz 27,12(9)
	li 8,0
.LBB11321:
.LBB11317:
	.loc 12 41 0
	stw 11,72(1)
.LBE11317:
.LBE11321:
	.loc 6 1244 0
	li 11,0
.LBB11322:
	.loc 6 4264 0
	lwz 4,4(28)
.LBE11322:
	.loc 6 1244 0
	li 9,-1
	lwz 3,728(31)
.LVL2810:
	lfs 1,.LC16@l(10)
	li 10,0
	stw 11,184(1)
	stw 11,188(1)
	lis 11,0x42c8
	stw 11,192(1)
	lis 11,0x41a0
	stw 25,168(1)
	stw 12,172(1)
	stw 26,176(1)
	stw 27,180(1)
	stw 11,196(1)
	stw 0,8(1)
	stw 0,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
	.loc 6 1245 0
	lwz 9,728(31)
.LVL2811:
.LBB11323:
.LBB11324:
	.loc 11 90 0
	li 0,1
	stb 0,148(9)
	b .L2065
.LVL2812:
.L2095:
.LBE11324:
.LBE11323:
	.loc 6 1238 0
	lwz 3,732(31)
	addi 28,1,92
	lwz 27,728(31)
	lwz 9,0(3)
	lwz 26,96(31)
	lwz 0,48(9)
	mtctr 0
	bctrl
.LVL2813:
.LBB11325:
.LBB11326:
	.loc 10 241 0
	lis 4,.LC60@ha
	addi 28,1,92
	la 4,.LC60@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2814:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L2083
.LVL2815:
.LBB11327:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL2816:
.L2064:
.LBE11327:
.LBE11326:
.LBE11325:
	.loc 6 1238 0
	subf 26,26,29
	lis 0,0x4330
	xoris 26,26,0x8000
	stw 0,160(1)
	stw 26,164(1)
	lis 9,.LC8@ha
	lfs 0,.LC8@l(9)
	lis 9,.LC73@ha
	lfd 1,160(1)
	lis 3,.LC76@ha
.LVL2817:
	la 3,.LC76@l(3)
	addi 28,1,92
	fsub 1,1,0
	lfs 0,.LC73@l(9)
	frsp 1,1
	fdivs 1,1,0
	creqv 6,6,6
	bl _Z2vaPKcz
	lis 11,.LC22@ha
	lis 10,_ZN15idDeviceContext10colorWhiteE@ha
	lfs 1,.LC22@l(11)
.LBB11329:
.LBB11330:
	.loc 12 41 0
	lis 11,.LC77@ha
	lwz 11,.LC77@l(11)
.LBE11330:
.LBE11329:
	.loc 6 1238 0
	mr 4,3
.LVL2818:
	mr 3,27
.LBB11337:
.LBB11331:
	.loc 12 41 0
	lis 27,.LC14@ha
.LBE11331:
.LBE11337:
	.loc 6 1238 0
	la 9,_ZN15idDeviceContext10colorWhiteE@l(10)
.LBB11338:
.LBB11332:
	.loc 12 41 0
	lwz 27,.LC14@l(27)
	stw 11,84(1)
.LBE11332:
.LBE11338:
	.loc 6 1238 0
	li 0,0
.LBB11339:
.LBB11333:
	.loc 12 41 0
	stw 11,88(1)
.LBE11333:
.LBE11339:
	.loc 6 1238 0
	lis 11,0x42c8
	lwz 28,12(9)
	li 5,0
	lwz 25,4(9)
	addi 6,1,168
	lwz 26,8(9)
	addi 7,1,184
	lwz 12,_ZN15idDeviceContext10colorWhiteE@l(10)
	li 8,0
	stw 11,184(1)
	li 11,0
.LBB11340:
.LBB11334:
	.loc 12 41 0
	stw 27,76(1)
.LBE11334:
.LBE11340:
	.loc 6 1238 0
	li 9,-1
.LBB11341:
.LBB11335:
	.loc 12 41 0
	li 27,0
.LBE11335:
.LBE11341:
	.loc 6 1238 0
	stw 11,188(1)
	li 10,0
	lis 11,0x42a0
	stw 28,180(1)
	addi 28,1,92
.LBB11342:
.LBB11336:
	.loc 12 41 0
	stw 27,80(1)
.LBE11336:
.LBE11342:
	.loc 6 1238 0
	stw 12,168(1)
	stw 25,172(1)
	stw 26,176(1)
	stw 11,192(1)
	stw 11,196(1)
	stw 0,8(1)
	stw 0,12(1)
	bl _ZN15idDeviceContext8DrawTextEPKcfi6idVec411idRectanglebibP6idListIiEi
	lwz 9,48(31)
	b .L2063
.LVL2819:
.L2102:
	.loc 6 1306 0 discriminator 2
	lwz 0,48(31)
	lis 9,0x1000
	andis. 11,0,0x1008
	cmpw 7,11,9
	bne+ 7,.L2075
	.loc 6 1306 0 is_stmt 0 discriminator 3
	lbz 9,929(31)
	cmpwi 7,9,0
	bne- 7,.L2075
	.loc 6 4264 0 is_stmt 1 discriminator 5
	lwz 9,732(31)
	.loc 6 1306 0 discriminator 5
	lbz 9,4(9)
	cmpwi 7,9,0
	bne- 7,.L2074
	.loc 6 1306 0 is_stmt 0 discriminator 6
	andis. 9,0,16
	beq- 0,.L2075
	b .L2074
.L2099:
	.loc 6 1285 0 is_stmt 1
	fmr 1,31
	mr 3,31
	fmr 2,30
	mr 4,29
	bl _ZN8idWindow9DebugDrawEiff
	b .L2068
.L2098:
	.loc 6 1281 0
	lwz 9,0(31)
	mr 3,31
	mr 4,29
	fmr 1,31
	lwz 0,72(9)
	fmr 2,30
	mtctr 0
	bctrl
	b .L2067
.L2101:
	.loc 6 1303 0
	lwz 3,728(31)
	bl _ZN15idDeviceContext11PopClipRectEv
	b .L2073
.L2097:
	.loc 6 1277 0
	lwz 10,72(31)
	addi 4,1,168
	lwz 11,76(31)
	lwz 9,80(31)
	lwz 0,84(31)
	lwz 3,728(31)
	stw 10,168(1)
	stw 11,172(1)
	stw 9,176(1)
	stw 0,180(1)
	bl _ZN15idDeviceContext12PushClipRectE11idRectangle
.LEHE164:
	b .L2066
.LVL2820:
.L2083:
.LBB11343:
.LBB11328:
	.loc 10 245 0
	lis 4,.LC4@ha
	la 4,.LC4@l(4)
	b .L2064
.LVL2821:
.L2084:
	mr 31,3
.LVL2822:
.LBE11328:
.LBE11343:
.LBB11344:
.LBB11183:
.LBB11181:
	.loc 4 501 0
	mr 3,28
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB165:
	bl _Unwind_Resume
.LEHE165:
.LBE11181:
.LBE11183:
.LBE11344:
.LBE11348:
	.cfi_endproc
.LFE2929:
	.section	.gcc_except_table
.LLSDA2929:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2929-.LLSDACSB2929
.LLSDACSB2929:
	.uleb128 .LEHB162-.LFB2929
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L2084-.LFB2929
	.uleb128 0
	.uleb128 .LEHB163-.LFB2929
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB164-.LFB2929
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L2084-.LFB2929
	.uleb128 0
	.uleb128 .LEHB165-.LFB2929
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
.LLSDACSE2929:
	.section	".text"
	.size	_ZN8idWindow6RedrawEff, .-_ZN8idWindow6RedrawEff
	.align 2
	.globl _ZN8idWindow11HandleEventEPK10sysEvent_tPb
	.type	_ZN8idWindow11HandleEventEPK10sysEvent_tPb, @function
_ZN8idWindow11HandleEventEPK10sysEvent_tPb:
.LFB2920:
	.loc 6 735 0
	.cfi_startproc
.LVL2823:
	stwu 1,-80(1)
.LCFI440:
	.cfi_def_cfa_offset 80
	mflr 0
	stw 28,48(1)
.LBB11503:
	.loc 6 739 0
	lis 28,.LC4@ha
	.cfi_offset 28, -32
	.cfi_register 65, 0
.LBE11503:
	.loc 6 735 0
	stw 27,44(1)
.LBB11787:
	.loc 6 739 0
	la 28,.LC4@l(28)
	addi 27,3,4
	.cfi_offset 27, -36
.LBE11787:
	.loc 6 735 0
	stw 29,52(1)
	stw 31,60(1)
	mr 29,4
	.cfi_offset 31, -20
	.cfi_offset 29, -28
	mr 31,3
.LBB11788:
	.loc 6 739 0
	mr 4,28
.LVL2824:
	mr 3,27
.LVL2825:
.LBE11788:
	.loc 6 735 0
	stw 0,84(1)
	stw 26,40(1)
	mr 26,5
	.cfi_offset 26, -40
	.cfi_offset 65, 4
	stfd 30,64(1)
	stfd 31,72(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 30,56(1)
.LBB11789:
	.loc 6 739 0
	.cfi_offset 30, -24
	.cfi_offset 25, -44
	.cfi_offset 24, -48
	.cfi_offset 23, -52
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	bl _ZN5idStraSEPKc
.LVL2826:
	.loc 6 741 0
	lwz 0,48(31)
	andis. 9,0,4096
	beq- 0,.L2104
	.loc 6 744 0
	lwz 0,832(31)
	.loc 6 742 0
	lis 30,.LANCHOR0@ha
	la 30,.LANCHOR0@l(30)
	.loc 6 744 0
	cmpwi 7,0,0
	.loc 6 742 0
	li 0,0
	stb 0,26952(30)
	.loc 6 743 0
	stb 0,26953(30)
	.loc 6 744 0
	bne- 7,.L2236
.L2105:
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 747 0
	mr 3,31
	lwz 4,200(9)
	bl _ZN8idWindow13RunTimeEventsEi
	.loc 6 748 0
	lis 11,.LC1@ha
	lfs 1,.LC1@l(11)
	mr 3,31
	fmr 2,1
	bl _ZN8idWindow9CalcRectsEff
	.loc 6 749 0
	lwz 3,728(31)
	li 4,0
	bl _ZN15idDeviceContext9SetCursorEi
.L2104:
.LBB11504:
	.loc 6 752 0
	lbz 0,241(31)
	cmpwi 7,0,0
	beq- 7,.L2233
	.loc 6 752 0 is_stmt 0 discriminator 1
	lbz 0,257(31)
	cmpwi 7,0,0
	beq- 7,.L2108
.LVL2827:
.L2233:
.LBB11505:
.LBB11506:
.LBB11507:
.LBB11508:
.LBB11509:
.LBB11510:
	.loc 6 963 0 is_stmt 1
	lwz 30,732(31)
.L2107:
.LVL2828:
.LBE11510:
.LBE11509:
.LBE11508:
.LBE11507:
.LBE11506:
.LBE11505:
.LBE11504:
.LBB11727:
	.loc 6 4264 0
	lwz 29,4(31)
.LVL2829:
.LBB11728:
.LBB11729:
.LBB11730:
	.loc 4 350 0
	lwz 0,164(30)
.LBE11730:
.LBE11729:
	.loc 4 534 0
	addi 4,29,1
.LVL2830:
.LBB11732:
.LBB11731:
	.loc 4 350 0
	cmpw 7,4,0
	ble+ 7,.L2181
	.loc 4 351 0
	addi 3,30,156
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL2831:
.L2181:
.LBE11731:
.LBE11732:
	.loc 4 535 0
	lwz 3,160(30)
	mr 5,29
	lwz 4,8(31)
	bl memcpy
	.loc 4 536 0
	lwz 9,160(30)
	li 0,0
	stbx 0,9,29
	.loc 4 537 0
	stw 29,156(30)
.LBE11728:
.LBE11727:
	.loc 6 971 0
	lwz 30,732(31)
.LVL2832:
	lwz 0,124(30)
	cmpwi 7,0,0
	bne- 7,.L2237
.LVL2833:
.L2182:
	.loc 6 976 0
	mr 3,27
	mr 4,28
	bl _ZN5idStraSEPKc
.LVL2834:
.LBB11733:
	.loc 6 4264 0
	lwz 9,732(31)
	lwz 3,160(9)
.LVL2835:
.L2113:
.LBE11733:
.LBE11789:
	.loc 6 978 0
	lwz 0,84(1)
	lwz 23,28(1)
	mtlr 0
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL2836:
	lfd 30,64(1)
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI441:
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
.LVL2837:
.L2108:
.LCFI442:
	.cfi_restore_state
.LBB11790:
.LBB11734:
.LBB11722:
	.loc 6 754 0 discriminator 4
	lwz 30,4(29)
	cmpwi 7,30,1
	beq- 7,.L2238
.LBB11527:
	.loc 6 951 0
	cmpwi 7,30,3
	beq- 7,.L2239
.LBB11523:
	.loc 6 959 0
	cmpwi 7,30,0
	beq- 7,.L2233
.LBB11520:
	.loc 6 960 0
	cmpwi 7,30,2
	bne+ 7,.L2233
.LVL2838:
.LBB11517:
.LBB11511:
.LBB11512:
	.loc 6 1553 0
	lwz 0,48(31)
	.loc 6 1554 0
	lwz 30,732(31)
	.loc 6 1553 0
	andis. 9,0,4096
	bne- 0,.L2179
	b .L2107
.LVL2839:
.L2236:
.LBE11512:
.LBE11511:
.LBE11517:
.LBE11520:
.LBE11523:
.LBE11527:
.LBE11722:
.LBE11734:
	.loc 6 744 0 discriminator 1
	lwz 0,816(31)
	cmpwi 7,0,0
	beq- 7,.L2105
	.loc 6 745 0 discriminator 4
	mr 3,31
	li 4,-1
	li 5,0
	bl _ZN8idWindow8EvalRegsEib
	b .L2105
.LVL2840:
.L2237:
.LBB11735:
.LBB11736:
.LBB11737:
	.loc 4 775 0
	lwz 11,156(30)
.LBE11737:
.LBE11736:
.LBE11735:
	.loc 6 972 0
	addi 29,30,156
.LVL2841:
.LBB11754:
.LBB11750:
.LBB11746:
.LBB11738:
.LBB11739:
	.loc 4 350 0
	lwz 0,164(30)
.LBE11739:
.LBE11738:
	.loc 4 776 0
	addi 4,11,4
	.loc 4 775 0
	addi 26,11,3
.LVL2842:
.LBB11743:
.LBB11740:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L2183
.LVL2843:
.L2185:
	lis 10,.LC26@ha
.LBE11740:
.LBE11743:
.LBE11746:
.LBE11750:
.LBE11754:
.LBB11755:
.LBB11723:
.LBB11528:
.LBB11529:
.LBB11530:
.LBB11531:
.LBB11532:
.LBB11533:
.LBB11534:
.LBB11535:
	.loc 6 875 0
	li 0,32
.LBE11535:
.LBE11534:
.LBE11533:
.LBE11532:
.LBE11531:
.LBE11530:
.LBE11529:
.LBE11528:
.LBE11723:
.LBE11755:
.LBB11756:
.LBB11751:
.LBB11747:
.LBB11744:
.LBB11741:
	.loc 4 350 0
	la 10,.LC26@l(10)
.LBE11741:
.LBE11744:
.LBE11747:
.LBE11751:
.LBE11756:
.LBB11757:
.LBB11724:
.LBB11716:
.LBB11712:
.LBB11667:
.LBB11625:
.LBB11595:
.LBB11567:
.LBB11560:
.LBB11550:
	.loc 6 875 0
	li 9,0
	b .L2184
.LVL2844:
.L2240:
.LBE11550:
.LBE11560:
.LBE11567:
.LBE11595:
.LBE11625:
.LBE11667:
.LBE11712:
.LBE11716:
.LBE11724:
.LBE11757:
.LBB11758:
.LBB11752:
.LBB11748:
	.loc 4 777 0
	lwz 11,156(30)
.LVL2845:
.L2184:
	.loc 4 778 0
	lwz 8,4(29)
	add 11,8,11
	stbx 0,11,9
	.loc 4 777 0
	addi 9,9,1
.LVL2846:
	lbzu 0,1(10)
	cmpwi 7,0,0
	bne+ 7,.L2240
	.loc 4 781 0
	lwz 9,160(30)
.LVL2847:
	.loc 4 780 0
	stw 26,156(30)
	.loc 4 781 0
	stbx 0,9,26
.LBE11748:
.LBE11752:
.LBE11758:
	.loc 6 973 0
	lwz 26,732(31)
.LVL2848:
.LBB11759:
.LBB11760:
	.loc 6 4264 0
	lwz 0,124(26)
.LBE11760:
.LBE11759:
	.loc 6 973 0
	addi 30,26,156
.LVL2849:
.LBB11777:
.LBB11774:
.LBB11761:
	.loc 4 761 0
	lwz 25,156(26)
.LBE11761:
.LBE11774:
.LBE11777:
	.loc 6 973 0
	addi 29,26,124
.LVL2850:
.LBB11778:
.LBB11775:
.LBB11772:
.LBB11762:
.LBB11763:
	.loc 4 350 0
	lwz 9,164(26)
.LBE11763:
.LBE11762:
	.loc 4 761 0
	add 25,0,25
.LVL2851:
	.loc 4 762 0
	addi 4,25,1
.LVL2852:
.LBB11766:
.LBB11764:
	.loc 4 350 0
	cmpw 7,4,9
	bgt- 7,.L2241
.LVL2853:
.L2187:
.LBE11764:
.LBE11766:
	.loc 4 763 0
	cmpwi 7,0,0
	ble- 7,.L2188
	li 9,0
.LVL2854:
.L2189:
.LBB11767:
.LBB11768:
	.loc 4 522 0
	lwz 8,4(29)
.LBE11768:
.LBE11767:
	.loc 4 764 0
	lwz 10,4(30)
	lwz 11,0(30)
.LBB11770:
.LBB11769:
	.loc 4 522 0
	lbzx 0,8,9
.LBE11769:
.LBE11770:
	.loc 4 764 0
	add 11,10,11
	stbx 0,11,9
	.loc 4 763 0
	addi 9,9,1
.LVL2855:
	lwz 0,0(29)
	cmpw 7,9,0
	blt+ 7,.L2189
.LVL2856:
.L2188:
	.loc 4 767 0
	lwz 9,160(26)
	li 0,0
	.loc 4 766 0
	stw 25,156(26)
	.loc 4 767 0
	stbx 0,9,25
.LBE11772:
.LBE11775:
.LBE11778:
	.loc 6 974 0
	lwz 30,732(31)
.LVL2857:
.LBB11779:
.LBB11780:
	.loc 4 746 0
	addi 3,30,124
	bl _ZN5idStr8FreeDataEv
.LVL2858:
.LBB11781:
.LBB11782:
	.loc 4 356 0
	li 0,0
	.loc 4 358 0
	addi 9,30,136
	.loc 4 357 0
	li 11,20
	.loc 4 356 0
	stw 0,124(30)
	.loc 4 357 0
	stw 11,132(30)
	.loc 4 358 0
	stw 9,128(30)
	.loc 4 359 0
	stb 0,136(30)
	b .L2182
.LVL2859:
.L2241:
.LBE11782:
.LBE11781:
.LBE11780:
.LBE11779:
.LBB11783:
.LBB11776:
.LBB11773:
.LBB11771:
.LBB11765:
	.loc 4 351 0
	mr 3,30
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL2860:
	lwz 0,124(26)
	b .L2187
.LVL2861:
.L2183:
.LBE11765:
.LBE11771:
.LBE11773:
.LBE11776:
.LBE11783:
.LBB11784:
.LBB11753:
.LBB11749:
.LBB11745:
.LBB11742:
	mr 3,29
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL2862:
	lwz 11,156(30)
	b .L2185
.LVL2863:
.L2239:
.LBE11742:
.LBE11745:
.LBE11749:
.LBE11753:
.LBE11784:
.LBB11785:
.LBB11725:
.LBB11717:
.LBB11524:
	.loc 6 952 0
	cmpwi 7,26,0
	beq- 7,.L2175
	.loc 6 953 0
	li 0,1
	stb 0,0(26)
.L2175:
	.loc 6 955 0
	lwz 11,8(29)
	lis 0,0x4330
	lwz 9,12(29)
	mr 3,31
	xoris 11,11,0x8000
	stw 0,8(1)
	xoris 9,9,0x8000
	stw 11,12(1)
	stw 9,20(1)
	lis 9,.LC8@ha
	stw 0,16(1)
	lfs 0,.LC8@l(9)
	lfd 1,8(1)
	lfd 2,16(1)
	lwz 9,0(31)
	fsub 1,1,0
	fsub 2,2,0
	lwz 0,88(9)
	frsp 1,1
	frsp 2,2
	mtctr 0
	bctrl
.LVL2864:
	.loc 6 956 0
	cmpwi 0,3,0
	beq- 0,.L2233
.LVL2865:
.L2180:
.LBE11524:
.LBB11525:
.LBB11521:
.LBB11518:
.LBB11514:
	.loc 6 963 0 discriminator 1
	lbz 0,0(3)
	cmpwi 7,0,0
	beq+ 7,.L2233
	b .L2113
.L2238:
.LBE11514:
.LBE11518:
.LBE11521:
.LBE11525:
.LBE11717:
.LBB11718:
	.loc 6 755 0
	mr 3,31
	li 4,-1
	li 5,1
	bl _ZN8idWindow8EvalRegsEib
	.loc 6 756 0
	cmpwi 7,26,0
	beq- 7,.L2110
	.loc 6 757 0
	stb 30,0(26)
.L2110:
.LBB11713:
	.loc 6 760 0
	lwz 0,8(29)
	cmpwi 7,0,187
	beq- 7,.L2242
.LBB11668:
	.loc 6 809 0
	cmpwi 7,0,188
	beq- 7,.L2243
.LBB11626:
	.loc 6 839 0
	cmpwi 7,0,189
	beq- 7,.L2244
.LBB11596:
	.loc 6 854 0
	cmpwi 7,0,9
	beq- 7,.L2245
.LBB11568:
	.loc 6 920 0
	cmpwi 7,0,27
	beq- 7,.L2246
.LBB11569:
	.loc 6 928 0
	cmpwi 7,0,13
	beq- 7,.L2247
.L2145:
.LVL2866:
.LBB11570:
.LBB11571:
.LBB11572:
	.loc 6 1553 0
	lwz 0,48(31)
	.loc 6 1554 0
	lwz 30,732(31)
	.loc 6 1553 0
	andis. 11,0,4096
	beq- 0,.L2107
.LVL2867:
.L2179:
.LBE11572:
.LBE11571:
.LBE11570:
.LBE11569:
.LBE11568:
.LBE11596:
.LBE11626:
.LBE11668:
.LBE11713:
.LBE11718:
.LBB11719:
.LBB11526:
.LBB11522:
.LBB11519:
.LBB11515:
.LBB11513:
	.loc 6 1554 0
	lwz 9,52(30)
	lwz 3,712(9)
.LBE11513:
.LBE11515:
	.loc 6 961 0
	cmpwi 7,3,0
	beq- 7,.L2107
.LVL2868:
.LBB11516:
	.loc 6 962 0
	lwz 9,0(3)
	mr 4,29
	mr 5,26
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL2869:
	.loc 6 963 0
	cmpwi 0,3,0
	bne+ 0,.L2180
	b .L2233
.LVL2870:
.L2244:
.LBE11516:
.LBE11519:
.LBE11522:
.LBE11526:
.LBE11719:
.LBB11720:
.LBB11714:
.LBB11669:
.LBB11627:
.LBB11597:
.LBB11598:
.LBB11599:
	.loc 6 840 0
	lis 9,.LANCHOR0+44@ha
	.loc 2 142 0
	lwz 9,.LANCHOR0+44@l(9)
.LBE11599:
.LBE11598:
	.loc 6 840 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L2233
	.loc 6 4264 0
	lwz 24,680(31)
.LVL2871:
.LBB11600:
.LBB11601:
.LBB11602:
.LBB11603:
	.loc 12 49 0
	lis 11,.LC1@ha
.LBE11603:
.LBE11602:
	.loc 6 842 0
	li 30,0
.LBB11610:
.LBB11608:
	.loc 12 49 0
	lfs 30,.LC1@l(11)
.LBE11608:
.LBE11610:
	.loc 6 842 0
	cmpwi 7,24,0
	ble- 7,.L2233
.LVL2872:
.L2220:
	.loc 6 843 0
	lwz 3,732(31)
	.loc 6 735 0
	slwi 25,30,2
	.loc 6 843 0
	lwz 9,692(31)
	lwz 11,0(3)
	lwzx 26,9,25
	lwz 0,124(11)
	mtctr 0
	bctrl
	lwz 3,732(31)
	fmr 31,1
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
.LVL2873:
.LBB11611:
.LBB11609:
	.loc 12 49 0
	lfs 0,64(26)
	fcmpu 7,0,30
	bne- 7,.L2138
	lfs 13,68(26)
	fcmpu 7,13,30
	beq- 7,.L2139
.L2138:
	.loc 12 52 0
	lfs 13,56(26)
	fcmpu 7,31,13
	cror 30,29,30
	bne- 7,.L2139
.LBB11604:
.LBB11605:
	.loc 12 43 0
	fadds 0,0,13
.LBE11605:
.LBE11604:
	.loc 12 52 0
	fcmpu 7,31,0
	cror 30,28,30
	bne- 7,.L2139
	lfs 0,60(26)
	fcmpu 7,1,0
	cror 30,29,30
	bne- 7,.L2139
.LBB11606:
.LBB11607:
	.loc 12 42 0
	lfs 13,68(26)
	fadds 0,0,13
.LBE11607:
.LBE11606:
	.loc 12 52 0
	fcmpu 7,1,0
	cror 30,28,30
	bne- 7,.L2139
.LBE11609:
.LBE11611:
	.loc 6 844 0
	lwz 0,12(29)
	cmpwi 7,0,0
	beq- 7,.L2139
.LVL2874:
	.loc 6 845 0
	lwz 9,692(31)
	lwzx 9,9,25
	lwz 0,48(9)
	xori 0,0,4096
	stw 0,48(9)
.LVL2875:
	.loc 6 846 0
	lwz 9,692(31)
	lwzx 9,9,25
	lwz 0,48(9)
	andi. 9,0,4096
	bne- 0,.L2248
.LVL2876:
.L2139:
	.loc 6 842 0
	addi 30,30,1
.LVL2877:
	cmpw 7,30,24
	bne+ 7,.L2220
	b .L2233
.LVL2878:
.L2242:
.LBE11601:
.LBE11600:
.LBE11597:
.LBE11627:
.LBE11669:
.LBB11670:
	.loc 6 762 0
	lwz 30,12(29)
	cmpwi 7,30,0
	bne- 7,.L2112
.LVL2879:
.LBB11671:
.LBB11672:
	.loc 6 1541 0
	lwz 0,48(31)
	andis. 9,0,4096
	beq- 0,.L2112
.LBE11672:
	.loc 6 4264 0
	lwz 9,732(31)
.LBB11673:
	.loc 6 1542 0
	lwz 9,52(9)
	lwz 3,716(9)
.LBE11673:
.LBE11671:
	.loc 6 762 0
	cmpwi 7,3,0
	beq- 7,.L2112
.LVL2880:
	.loc 6 763 0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 765 0
	mr 3,28
	.loc 6 4264 0
	lwz 9,52(9)
	.loc 6 764 0
	stw 30,716(9)
	.loc 6 765 0
	b .L2113
.LVL2881:
.L2243:
.LBE11670:
.LBB11697:
.LBB11628:
	.loc 6 811 0
	lwz 25,12(29)
	cmpwi 7,25,0
	beq- 7,.L2225
	lwz 3,732(31)
.L2124:
.LBE11628:
.LBE11697:
.LBB11698:
	.loc 6 4264 0
	lwz 24,680(31)
.LBE11698:
.LBB11699:
.LBB11656:
.LBB11629:
.LBB11630:
.LBB11631:
.LBB11632:
.LBB11633:
.LBB11634:
	.loc 6 826 0
	lis 23,.LANCHOR0@ha
.LBE11634:
.LBE11633:
.LBE11632:
.LBE11631:
.LBE11630:
.LBE11629:
.LBE11656:
.LBE11699:
.LBB11700:
	.loc 6 735 0
	addi 24,24,-1
	.loc 6 4264 0
	slwi 25,24,2
.LBE11700:
.LBB11701:
.LBB11657:
	.loc 6 818 0
	b .L2191
.LVL2882:
.L2129:
.LBB11650:
.LBB11647:
.LBB11644:
.LBB11637:
	.loc 6 833 0 discriminator 1
	addi 25,25,-4
	addi 24,24,-1
.LVL2883:
.L2191:
.LBE11637:
.LBE11644:
.LBE11647:
.LBE11650:
	.loc 6 818 0 discriminator 1
	cmpwi 7,24,0
	blt- 7,.L2249
.LVL2884:
.LBB11651:
	.loc 6 819 0
	lwz 9,692(31)
	lwzx 30,9,25
	lbz 0,241(30)
	cmpwi 7,0,0
	beq+ 7,.L2129
.LVL2885:
	.loc 6 819 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	lwz 0,124(9)
	mtctr 0
	bctrl
	lwz 3,732(31)
	fmr 31,1
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	mr 3,30
	fmr 2,1
	addi 4,30,56
	fmr 1,31
	bl _ZN8idWindow8ContainsERK11idRectangleff
	cmpwi 7,3,0
	beq- 7,.L2231
.LVL2886:
	.loc 6 819 0 discriminator 3
	lwz 9,692(31)
	lwzx 30,9,25
	lbz 0,257(30)
	cmpwi 7,0,0
	bne- 7,.L2231
.LVL2887:
.LBB11648:
	.loc 6 821 0 is_stmt 1 discriminator 5
	lwz 0,12(29)
	cmpwi 7,0,0
	beq+ 7,.L2126
	.loc 6 822 0
	mr 3,31
	mr 4,30
	bl _ZN8idWindow10BringToTopEPS_
.LVL2888:
	.loc 6 823 0
	mr 3,31
	mr 4,30
	li 5,1
	bl _ZN8idWindow8SetFocusEPS_b
.L2126:
.LBB11645:
	.loc 6 825 0
	lwz 3,732(31)
	lwz 9,0(3)
	lwz 0,124(9)
	mtctr 0
	bctrl
	lwz 3,732(31)
	fmr 31,1
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	mr 3,30
	fmr 2,1
	addi 4,30,72
	fmr 1,31
	bl _ZN8idWindow8ContainsERK11idRectangleff
	cmpwi 7,3,0
	beq- 7,.L2250
.L2127:
.LBB11638:
.LBB11636:
.LBB11635:
	.loc 6 826 0 discriminator 4
	la 9,.LANCHOR0@l(23)
	.loc 2 142 0 discriminator 4
	lwz 9,44(9)
.LBE11635:
.LBE11636:
	.loc 6 826 0 discriminator 4
	lwz 0,36(9)
	cmpwi 7,0,0
	lwz 0,48(30)
	bne- 7,.L2251
	andi. 11,0,16
	beq- 0,.L2132
.L2131:
	.loc 6 827 0 discriminator 6
	mr 3,31
	mr 4,30
	bl _ZN8idWindow10SetCaptureEPS_
.L2132:
	.loc 6 829 0
	lwz 9,0(30)
	mr 3,30
	mr 4,29
	mr 5,26
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL2889:
	.loc 6 830 0
	cmpwi 0,3,0
	beq- 0,.L2133
	.loc 6 830 0 is_stmt 0 discriminator 1
	lbz 0,0(3)
	cmpwi 7,0,0
	bne- 7,.L2113
.L2133:
	.loc 6 833 0 is_stmt 1
	lwz 0,48(30)
	andi. 9,0,512
	bne- 0,.L2198
.LVL2890:
.L2231:
	lwz 3,732(31)
	b .L2129
.LVL2891:
.L2254:
.LBE11638:
.LBE11645:
.LBE11648:
.LBE11651:
.LBE11657:
.LBE11701:
.LBB11702:
.LBB11674:
.LBB11675:
.LBB11676:
.LBB11677:
	.loc 6 783 0
	mr 4,24
	li 5,1
	mr 3,31
	bl _ZN8idWindow8SetFocusEPS_b
	.loc 6 784 0
	lwz 9,0(24)
	mr 3,24
	mr 4,29
	lwz 0,20(9)
	mr 5,26
	mtctr 0
	bctrl
.LVL2892:
	.loc 6 785 0
	cmpwi 0,3,0
	beq- 0,.L2117
	.loc 6 785 0 is_stmt 0 discriminator 1
	lbz 0,0(3)
	cmpwi 7,0,0
	bne- 7,.L2113
.L2117:
	.loc 6 788 0 is_stmt 1
	lwz 0,48(24)
	andi. 9,0,512
	beq+ 0,.L2118
.LVL2893:
.L2198:
.LBE11677:
.LBE11676:
.LBE11675:
.LBE11674:
.LBE11702:
.LBB11703:
.LBB11658:
.LBB11652:
.LBB11649:
.LBB11646:
.LBB11639:
	.loc 6 834 0
	mr 3,28
	b .L2113
.LVL2894:
.L2250:
.LBE11639:
.LBB11640:
.LBB11641:
	.loc 6 1541 0
	lwz 9,48(31)
	.loc 6 1544 0
	li 0,0
	.loc 6 1541 0
	andis. 11,9,4096
	beq- 0,.L2128
.LBE11641:
	.loc 6 4264 0
	lwz 3,732(31)
.LBB11642:
	.loc 6 1542 0
	lwz 9,52(3)
	lwz 0,716(9)
.L2128:
.LBE11642:
.LBE11640:
	.loc 6 825 0
	cmpw 7,30,0
	beq- 7,.L2127
	lwz 3,732(31)
	b .L2129
.LVL2895:
.L2251:
.LBB11643:
	.loc 6 826 0 discriminator 1
	andi. 9,0,4096
	bne- 0,.L2131
	b .L2132
.LVL2896:
.L2112:
.LBE11643:
.LBE11646:
.LBE11649:
.LBE11652:
.LBE11658:
.LBE11703:
.LBE11714:
.LBE11720:
.LBE11725:
.LBE11785:
	.loc 6 4264 0
	lwz 25,680(31)
	.loc 6 735 0
	addi 25,25,-1
	.loc 6 4264 0
	slwi 30,25,2
.LBB11786:
.LBB11726:
.LBB11721:
.LBB11715:
.LBB11704:
	.loc 6 769 0
	b .L2190
.LVL2897:
.L2118:
.LBB11694:
.LBB11691:
.LBB11688:
.LBB11678:
.LBB11679:
	.loc 6 796 0 discriminator 1
	addi 30,30,-4
	addi 25,25,-1
.LVL2898:
.L2190:
.LBE11679:
.LBE11678:
.LBE11688:
.LBE11691:
.LBE11694:
	.loc 6 769 0 discriminator 1
	cmpwi 7,25,0
	blt- 7,.L2252
.LVL2899:
.LBB11695:
	.loc 6 770 0
	lwz 9,692(31)
	lwzx 24,9,30
	lbz 0,241(24)
	cmpwi 7,0,0
	beq+ 7,.L2118
.LVL2900:
	.loc 6 770 0 is_stmt 0 discriminator 1
	lwz 3,732(31)
	lwz 9,0(3)
	lwz 0,124(9)
	mtctr 0
	bctrl
	lwz 3,732(31)
	fmr 31,1
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	mr 3,24
	fmr 2,1
	addi 4,24,56
	fmr 1,31
	bl _ZN8idWindow8ContainsERK11idRectangleff
	cmpwi 7,3,0
	beq- 7,.L2118
.LVL2901:
	.loc 6 770 0 discriminator 3
	lwz 9,692(31)
	lwzx 24,9,30
	lbz 0,257(24)
	cmpwi 7,0,0
	bne- 7,.L2118
.LVL2902:
.LBB11692:
	.loc 6 772 0 is_stmt 1 discriminator 5
	lwz 0,12(29)
	cmpwi 7,0,0
	bne- 7,.L2253
.LVL2903:
.L2115:
.LBB11689:
	.loc 6 779 0
	lwz 3,732(31)
	lwz 9,0(3)
	lwz 0,124(9)
	mtctr 0
	bctrl
	lwz 3,732(31)
	fmr 31,1
	lwz 9,0(3)
	lwz 0,128(9)
	mtctr 0
	bctrl
	mr 3,24
	fmr 2,1
	addi 4,24,72
	fmr 1,31
	bl _ZN8idWindow8ContainsERK11idRectangleff
	cmpwi 7,3,0
	bne- 7,.L2254
.LBB11686:
	.loc 6 792 0
	lwz 0,12(29)
	cmpwi 7,0,0
	beq+ 7,.L2118
.LBB11684:
	.loc 6 793 0
	mr 3,31
	mr 4,24
	li 5,1
	bl _ZN8idWindow8SetFocusEPS_b
.LVL2904:
	.loc 6 795 0
	lwz 0,48(24)
	andi. 11,0,16
	beq- 0,.L2255
.L2119:
	.loc 6 796 0 discriminator 5
	mr 3,31
	mr 4,24
	bl _ZN8idWindow10SetCaptureEPS_
	.loc 6 798 0 discriminator 5
	mr 3,28
	b .L2113
.LVL2905:
.L2253:
.LBE11684:
.LBE11686:
.LBE11689:
	.loc 6 773 0
	mr 3,31
	mr 4,24
	bl _ZN8idWindow10BringToTopEPS_
	.loc 6 774 0
	mr 3,31
	mr 4,24
	li 5,1
	bl _ZN8idWindow8SetFocusEPS_b
	.loc 6 775 0
	lwz 0,48(24)
	andi. 9,0,16384
	beq+ 0,.L2115
	.loc 6 776 0
	mr 3,31
	mr 4,24
	bl _ZN8idWindow10SetCaptureEPS_
	b .L2115
.LVL2906:
.L2245:
.LBE11692:
.LBE11695:
.LBE11704:
.LBB11705:
.LBB11659:
.LBB11616:
	.loc 6 854 0 discriminator 1
	lwz 0,12(29)
	cmpwi 7,0,0
	beq- 7,.L2145
.LVL2907:
.LBB11588:
.LBB11561:
.LBB11562:
	.loc 6 1553 0
	lwz 0,48(31)
	.loc 6 1554 0
	lwz 30,732(31)
	.loc 6 1553 0
	andis. 11,0,4096
	beq- 0,.L2107
	.loc 6 1554 0
	lwz 9,52(30)
	lwz 3,712(9)
.LBE11562:
.LBE11561:
	.loc 6 855 0
	cmpwi 7,3,0
	beq- 7,.L2107
.LVL2908:
.LBB11563:
	.loc 6 856 0
	lwz 9,0(3)
	mr 4,29
	mr 5,26
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL2909:
	.loc 6 857 0
	cmpwi 0,3,0
	beq- 0,.L2147
	.loc 6 857 0 is_stmt 0 discriminator 1
	lbz 0,0(3)
	cmpwi 7,0,0
	bne- 7,.L2113
.L2147:
.LVL2910:
	.loc 6 865 0 is_stmt 1
	li 3,142
.LVL2911:
	bl _ZN10idKeyInput6IsDownEi
	.loc 6 866 0
	li 10,-1
	.loc 6 865 0
	cmpwi 7,3,0
	bne- 7,.L2148
	.loc 6 864 0
	li 10,1
.L2148:
.LVL2912:
.LBB11551:
.LBB11552:
	.loc 6 1553 0
	lwz 0,48(31)
	.loc 6 1556 0
	li 5,0
	.loc 6 1553 0
	andis. 9,0,4096
	beq- 0,.L2149
.LBE11552:
	.loc 6 4264 0
	lwz 9,732(31)
.LBB11553:
	.loc 6 1554 0
	lwz 9,52(9)
	lwz 5,712(9)
.LVL2913:
.L2149:
	.loc 6 4264 0
	lwz 7,676(5)
.LVL2914:
.LBE11553:
.LBE11551:
	.loc 6 872 0
	cmpwi 7,7,0
	beq- 7,.L2233
.LBB11554:
	.loc 6 878 0
	cmpwi 0,10,-1
.LBE11554:
	.loc 6 872 0
	mr 8,5
.LBB11555:
	.loc 6 735 0
	slwi 3,10,3
.LVL2915:
.L2151:
	.loc 6 876 0
	cmpwi 7,8,0
.LBB11536:
	.loc 6 4264 0
	lwz 11,696(7)
.LBE11536:
	.loc 6 876 0
	beq- 7,.L2152
.LVL2916:
.LBB11539:
.LBB11537:
	.loc 6 4084 0
	cmpwi 7,11,0
	.loc 6 4089 0
	li 9,-1
	.loc 6 4084 0
	ble- 7,.L2153
.LBE11537:
	.loc 6 4264 0
	lwz 6,708(7)
.LVL2917:
.LBB11538:
	.loc 6 4085 0
	li 9,0
	mtctr 11
	lwz 0,0(6)
	cmpw 7,8,0
	bne+ 7,.L2154
	b .L2153
.LVL2918:
.L2155:
	lwzx 0,6,0
	cmpw 7,8,0
	beq- 7,.L2153
.LVL2919:
.L2154:
	.loc 6 4084 0
	addi 9,9,1
.LVL2920:
	.loc 6 4085 0
	slwi 0,9,3
	.loc 6 4084 0
	bdnz .L2155
	.loc 6 4089 0
	li 9,-1
.LVL2921:
.L2153:
.LBE11538:
.LBE11539:
	.loc 6 877 0
	add 0,10,9
.LVL2922:
.L2160:
	.loc 6 881 0 discriminator 1
	cmpw 7,11,0
	ble- 7,.L2156
	.loc 6 881 0 is_stmt 0
	cmpwi 7,0,0
	blt- 7,.L2156
.LVL2923:
.LBB11540:
.LBB11541:
	.loc 6 4264 0 is_stmt 1
	lwz 6,708(7)
.LVL2924:
.LBB11542:
	.loc 6 4072 0
	slwi 9,0,3
	lwzx 4,6,9
.LVL2925:
.LBE11542:
.LBE11541:
	.loc 6 883 0
	cmpw 7,4,5
	beq- 7,.L2233
.LBE11540:
	.loc 6 735 0
	add 8,10,0
	slwi 8,8,3
.LVL2926:
.L2164:
.LBB11545:
	.loc 6 888 0
	cmpwi 7,4,0
	.loc 6 735 0
	add 0,0,10
.LVL2927:
.LBE11545:
	.loc 6 881 0
	cmpw 6,0,11
	cmpwi 1,0,0
.LBB11546:
	.loc 6 888 0
	beq- 7,.L2161
	.loc 6 888 0 is_stmt 0 discriminator 1
	lbz 9,257(4)
	cmpwi 7,9,0
	bne- 7,.L2161
	.loc 6 888 0 discriminator 3
	lbz 9,241(4)
	cmpwi 7,9,0
	beq- 7,.L2161
	.loc 6 889 0 is_stmt 1 discriminator 5
	lwz 9,48(4)
	rlwinm 30,9,21,31,31
	cmpwi 7,30,0
	bne- 7,.L2256
.LVL2928:
	.loc 6 893 0
	lwz 9,696(4)
	cmpwi 7,9,0
	bgt- 7,.L2163
.LVL2929:
.L2161:
.LBE11546:
	.loc 6 881 0
	bge- 6,.L2156
	.loc 6 881 0 is_stmt 0 discriminator 2
	blt- 1,.L2156
.LVL2930:
.LBB11547:
.LBB11544:
.LBB11543:
	.loc 6 4072 0 is_stmt 1 discriminator 5
	lwzx 4,6,8
.LVL2931:
	add 8,8,3
.LVL2932:
.LBE11543:
.LBE11544:
	.loc 6 883 0 discriminator 5
	cmpw 7,5,4
	bne+ 7,.L2164
	b .L2233
.LVL2933:
.L2163:
	.loc 6 895 0
	li 8,0
	mr 7,4
	b .L2151
.LVL2934:
.L2156:
.LBE11547:
	.loc 6 912 0
	lwz 30,732(31)
.LBE11555:
.LBE11563:
.LBE11588:
.LBE11616:
.LBB11617:
.LBB11614:
.LBB11612:
	.loc 6 4264 0
	lwz 4,676(7)
.LVL2935:
.LBE11612:
.LBE11614:
.LBE11617:
.LBB11618:
.LBB11589:
.LBB11564:
.LBB11556:
	.loc 6 912 0
	lwz 0,52(30)
.LVL2936:
	cmpw 7,4,0
	beq- 7,.L2107
.LVL2937:
.LBE11556:
	.loc 6 872 0 discriminator 1
	cmpwi 7,4,0
	beq- 7,.L2107
	.loc 6 872 0 is_stmt 0
	mr 8,7
.LBB11557:
.LBB11548:
	.loc 6 895 0 is_stmt 1
	mr 7,4
.LVL2938:
	b .L2151
.LVL2939:
.L2225:
.LBE11548:
.LBE11557:
.LBE11564:
.LBE11589:
.LBE11618:
.LBE11659:
.LBB11660:
.LBB11653:
.LBB11654:
	.loc 6 1541 0
	lwz 0,48(31)
.LBE11654:
	.loc 6 4264 0
	lwz 3,732(31)
.LBB11655:
	.loc 6 1541 0
	andis. 30,0,4096
	beq- 0,.L2124
	.loc 6 1542 0
	lwz 9,52(3)
	lwz 11,716(9)
.LBE11655:
.LBE11653:
	.loc 6 811 0
	cmpwi 7,11,0
	beq- 7,.L2124
.LVL2940:
	.loc 6 812 0
	lwz 9,0(11)
	mr 3,11
	lwz 0,60(9)
	mtctr 0
	bctrl
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 814 0
	mr 3,28
	.loc 6 4264 0
	lwz 9,52(9)
	.loc 6 813 0
	stw 25,716(9)
	.loc 6 814 0
	b .L2113
.LVL2941:
.L2246:
.LBE11660:
.LBB11661:
.LBB11619:
.LBB11590:
	.loc 6 920 0 discriminator 1
	lwz 0,12(29)
	cmpwi 7,0,0
	beq- 7,.L2145
.LVL2942:
.LBB11580:
.LBB11581:
.LBB11582:
.LBB11583:
	.loc 6 1553 0
	lwz 0,48(31)
	andis. 9,0,4096
	beq- 0,.L2167
.LBE11583:
	.loc 6 4264 0
	lwz 9,732(31)
.LBB11584:
	.loc 6 1554 0
	lwz 9,52(9)
	lwz 3,712(9)
.LBE11584:
.LBE11582:
	.loc 6 921 0
	cmpwi 7,3,0
	beq- 7,.L2167
.LVL2943:
.LBB11585:
	.loc 6 922 0
	lwz 9,0(3)
	mr 4,29
	mr 5,26
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL2944:
	.loc 6 923 0
	cmpwi 0,3,0
	beq- 0,.L2167
	.loc 6 923 0 is_stmt 0 discriminator 1
	lbz 0,0(3)
	cmpwi 7,0,0
	bne- 7,.L2113
.LVL2945:
.L2167:
.LBE11585:
.LBE11581:
	.loc 6 927 0 is_stmt 1
	mr 3,31
	li 4,5
	bl _ZN8idWindow9RunScriptEi
	lwz 30,732(31)
.LBE11580:
	b .L2107
.LVL2946:
.L2252:
.LBE11590:
.LBE11619:
.LBE11661:
.LBE11705:
.LBB11706:
	.loc 6 804 0
	lwz 0,12(29)
	lis 30,.LANCHOR0@ha
	la 30,.LANCHOR0@l(30)
	cmpwi 7,0,0
	beq- 7,.L2121
	.loc 6 804 0 is_stmt 0 discriminator 1
	lbz 0,26952(30)
	cmpwi 7,0,0
	beq- 7,.L2257
.L2121:
	.loc 6 806 0 is_stmt 1
	lbz 0,26953(30)
	cmpwi 7,0,0
	bne+ 7,.L2233
	.loc 6 807 0
	mr 3,31
	li 4,8
	bl _ZN8idWindow9RunScriptEi
	stb 3,26953(30)
	lwz 30,732(31)
	b .L2107
.LVL2947:
.L2247:
.LBE11706:
.LBB11707:
.LBB11662:
.LBB11620:
.LBB11591:
.LBB11586:
.LBB11573:
.LBB11574:
.LBB11575:
.LBB11576:
	.loc 6 1553 0
	lwz 0,48(31)
	andis. 9,0,4096
	beq- 0,.L2168
.LBE11576:
	.loc 6 4264 0
	lwz 9,732(31)
.LBB11577:
	.loc 6 1554 0
	lwz 9,52(9)
	lwz 3,712(9)
.LBE11577:
.LBE11575:
	.loc 6 929 0
	cmpwi 7,3,0
	beq- 7,.L2168
.LVL2948:
.LBB11578:
	.loc 6 930 0
	lwz 9,0(3)
	mr 4,29
	mr 5,26
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL2949:
	.loc 6 931 0
	cmpwi 0,3,0
	beq- 0,.L2232
	.loc 6 931 0 is_stmt 0 discriminator 1
	lbz 0,0(3)
	cmpwi 7,0,0
	bne- 7,.L2113
.L2232:
	.loc 6 931 0
	lwz 0,48(31)
.LVL2950:
.L2168:
.LBE11578:
.LBE11574:
	.loc 6 935 0 is_stmt 1
	andis. 9,0,256
	beq- 0,.L2233
	.loc 6 936 0
	lwz 0,12(29)
	.loc 6 937 0
	mr 3,31
	.loc 6 936 0
	cmpwi 7,0,0
	beq- 7,.L2171
	.loc 6 937 0
	li 4,2
	bl _ZN8idWindow9RunScriptEi
	lwz 30,732(31)
	b .L2107
.LVL2951:
.L2249:
.LBE11573:
.LBE11586:
.LBE11591:
.LBE11620:
.LBE11662:
.LBB11663:
	.loc 6 818 0
	mr 30,3
	b .L2107
.LVL2952:
.L2152:
.LBE11663:
.LBB11664:
.LBB11621:
.LBB11592:
.LBB11565:
.LBB11558:
	.loc 6 878 0
	beq- 0,.L2159
	.loc 6 875 0
	li 0,0
	b .L2160
.LVL2953:
.L2256:
.LBB11549:
	.loc 6 890 0
	mr 3,31
	li 5,1
	bl _ZN8idWindow8SetFocusEPS_b
.LVL2954:
	.loc 6 892 0
	b .L2233
.LVL2955:
.L2255:
.LBE11549:
.LBE11558:
.LBE11565:
.LBE11592:
.LBE11621:
.LBE11664:
.LBE11707:
.LBB11708:
.LBB11696:
.LBB11693:
.LBB11690:
.LBB11687:
.LBB11685:
.LBB11680:
.LBB11681:
	.loc 6 795 0 discriminator 4
	lis 9,.LANCHOR0+44@ha
.LBE11681:
.LBE11680:
	.loc 6 798 0 discriminator 4
	mr 3,28
.LBB11683:
.LBB11682:
	.loc 2 142 0 discriminator 4
	lwz 9,.LANCHOR0+44@l(9)
.LBE11682:
.LBE11683:
	.loc 6 795 0 discriminator 4
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L2113
	b .L2119
.LVL2956:
.L2248:
.LBE11685:
.LBE11687:
.LBE11690:
.LBE11693:
.LBE11696:
.LBE11708:
.LBB11709:
.LBB11665:
.LBB11622:
.LBB11615:
.LBB11613:
	.loc 6 847 0
	lwz 0,48(31)
	.loc 6 848 0
	lis 3,.LC81@ha
	la 3,.LC81@l(3)
	.loc 6 847 0
	rlwinm 0,0,0,20,18
	stw 0,48(31)
	.loc 6 848 0
	b .L2113
.LVL2957:
.L2171:
.LBE11613:
.LBE11615:
.LBE11622:
.LBB11623:
.LBB11593:
.LBB11587:
.LBB11579:
	.loc 6 939 0
	li 4,8
	bl _ZN8idWindow9RunScriptEi
	lwz 30,732(31)
	b .L2107
.LVL2958:
.L2257:
.LBE11579:
.LBE11587:
.LBE11593:
.LBE11623:
.LBE11665:
.LBE11709:
.LBB11710:
	.loc 6 805 0
	mr 3,31
	li 4,2
	bl _ZN8idWindow9RunScriptEi
	stb 3,26952(30)
	lwz 30,732(31)
	b .L2107
.LVL2959:
.L2159:
.LBE11710:
.LBB11711:
.LBB11666:
.LBB11624:
.LBB11594:
.LBB11566:
.LBB11559:
	.loc 6 879 0
	addi 0,11,-1
.LVL2960:
	b .L2160
.LBE11559:
.LBE11566:
.LBE11594:
.LBE11624:
.LBE11666:
.LBE11711:
.LBE11715:
.LBE11721:
.LBE11726:
.LBE11786:
.LBE11790:
	.cfi_endproc
.LFE2920:
	.size	_ZN8idWindow11HandleEventEPK10sysEvent_tPb, .-_ZN8idWindow11HandleEventEPK10sysEvent_tPb
	.align 2
	.globl _ZN8idWindow16ReadFromSaveGameEP6idFile
	.type	_ZN8idWindow16ReadFromSaveGameEP6idFile, @function
_ZN8idWindow16ReadFromSaveGameEP6idFile:
.LFB2991:
	.loc 6 3641 0
	.cfi_startproc
.LVL2961:
	mflr 0
	stwu 1,-224(1)
.LCFI443:
	.cfi_def_cfa_offset 224
	.cfi_register 65, 0
	stw 30,216(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,220(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL2962:
	stw 0,228(1)
	stw 19,172(1)
	stw 20,176(1)
	stw 21,180(1)
	stw 22,184(1)
	stw 23,188(1)
	stw 24,192(1)
	stw 25,196(1)
	stw 26,200(1)
	stw 27,204(1)
	stw 28,208(1)
	stw 29,212(1)
.LBB11914:
.LBB11915:
.LBB11916:
	.loc 16 193 0
	lwz 3,812(3)
.LVL2963:
	cmpwi 7,3,0
	beq- 7,.L2259
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 65, 4
	.loc 16 194 0
	bl _ZdaPv
.LVL2964:
.L2259:
	.loc 16 197 0
	li 0,0
.LBE11916:
.LBE11915:
	.loc 6 3646 0
	mr 3,31
.LBB11920:
.LBB11917:
	.loc 16 197 0
	stw 0,812(31)
.LBE11917:
.LBE11920:
	.loc 6 3646 0
	addi 4,31,4
.LBB11921:
.LBB11918:
	.loc 16 198 0
	stw 0,800(31)
.LBE11918:
.LBE11921:
	.loc 6 3646 0
	mr 5,30
.LBB11922:
.LBB11919:
	.loc 16 199 0
	stw 0,804(31)
.LBE11919:
.LBE11922:
	.loc 6 3646 0
	bl _ZN8idWindow18ReadSaveGameStringER5idStrP6idFile
	.loc 6 3648 0
	lwz 9,0(30)
	addi 4,31,36
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3649 0
	lwz 9,0(30)
	addi 4,31,40
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3650 0
	lwz 9,0(30)
	addi 4,31,44
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3651 0
	lwz 9,0(30)
	addi 4,31,48
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3652 0
	lwz 9,0(30)
	addi 4,31,52
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3653 0
	lwz 9,0(30)
	addi 4,31,56
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3654 0
	lwz 9,0(30)
	addi 4,31,72
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3655 0
	lwz 9,0(30)
	addi 4,31,88
	li 5,8
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3656 0
	lwz 9,0(30)
	addi 4,31,209
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3657 0
	lwz 9,0(30)
	addi 4,31,96
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3658 0
	lwz 9,0(30)
	addi 4,31,100
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3659 0
	lwz 9,0(30)
	addi 4,31,104
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3660 0
	lwz 9,0(30)
	addi 4,31,210
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3661 0
	lwz 9,0(30)
	addi 4,31,108
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3662 0
	lwz 9,0(30)
	addi 4,31,112
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3663 0
	lwz 9,0(30)
	addi 4,31,116
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3664 0
	lwz 9,0(30)
	addi 4,31,120
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3665 0
	lwz 9,0(30)
	addi 4,31,124
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3666 0
	lwz 9,0(30)
	addi 4,31,211
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3667 0
	lwz 9,0(30)
	addi 4,31,128
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3668 0
	lwz 9,0(30)
	addi 4,31,132
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3669 0
	lwz 9,0(30)
	addi 4,31,208
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3670 0
	lwz 9,0(30)
	addi 4,31,200
	li 5,8
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 6 3672 0
	mr 3,31
	addi 4,31,136
	mr 5,30
	bl _ZN8idWindow18ReadSaveGameStringER5idStrP6idFile
	.loc 6 3673 0
	mr 3,31
	addi 4,31,168
	mr 5,30
	bl _ZN8idWindow18ReadSaveGameStringER5idStrP6idFile
.LVL2965:
.LBB11923:
.LBB11924:
	.loc 3 150 0
	lwz 9,0(30)
	addi 4,31,224
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 151 0
	lwz 9,0(30)
	addi 4,31,225
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2966:
.LBE11924:
.LBE11923:
.LBB11925:
.LBB11926:
	.loc 3 150 0
	lwz 9,0(30)
	addi 4,31,240
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 151 0
	lwz 9,0(30)
	addi 4,31,241
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2967:
.LBE11926:
.LBE11925:
.LBB11927:
.LBB11928:
	.loc 3 476 0
	lwz 9,0(30)
	addi 4,31,272
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 477 0
	lwz 9,0(30)
	addi 4,31,276
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2968:
.LBE11928:
.LBE11927:
.LBB11929:
.LBB11930:
	.loc 3 635 0
	lwz 9,0(30)
	addi 4,31,304
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 636 0
	lwz 9,0(30)
	addi 4,31,308
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2969:
.LBE11930:
.LBE11929:
.LBB11931:
.LBB11932:
	.loc 3 635 0
	lwz 9,0(30)
	addi 4,31,336
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 636 0
	lwz 9,0(30)
	addi 4,31,340
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2970:
.LBE11932:
.LBE11931:
.LBB11933:
.LBB11934:
	.loc 3 635 0
	lwz 9,0(30)
	addi 4,31,368
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 636 0
	lwz 9,0(30)
	addi 4,31,372
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2971:
.LBE11934:
.LBE11933:
.LBB11935:
.LBB11936:
	.loc 3 635 0
	lwz 9,0(30)
	addi 4,31,400
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 636 0
	lwz 9,0(30)
	addi 4,31,404
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2972:
.LBE11936:
.LBE11935:
.LBB11937:
.LBB11938:
	.loc 3 635 0
	lwz 9,0(30)
	addi 4,31,432
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 636 0
	lwz 9,0(30)
	addi 4,31,436
	li 5,16
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2973:
.LBE11938:
.LBE11937:
.LBB11939:
.LBB11940:
	.loc 3 368 0
	lwz 9,0(30)
	addi 4,31,464
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 369 0
	lwz 9,0(30)
	addi 4,31,468
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2974:
.LBE11940:
.LBE11939:
.LBB11941:
.LBB11942:
	.loc 3 150 0
	lwz 9,0(30)
	addi 4,31,256
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 151 0
	lwz 9,0(30)
	addi 4,31,257
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2975:
.LBE11942:
.LBE11941:
.LBB11943:
.LBB11944:
	.loc 3 368 0
	lwz 9,0(30)
	addi 4,31,484
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 369 0
	lwz 9,0(30)
	addi 4,31,488
	li 5,4
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
.LVL2976:
.LBE11944:
.LBE11943:
.LBB11945:
.LBB11946:
	.loc 3 246 0
	lwz 9,0(30)
	addi 4,31,504
	li 5,1
	lwz 0,20(9)
	mr 3,30
	mtctr 0
	bctrl
	.loc 3 249 0
	lwz 9,0(30)
	mr 3,30
	addi 4,1,8
	lwz 0,20(9)
	li 5,4
	mtctr 0
	bctrl
.LVL2977:
	.loc 3 250 0
	lwz 29,8(1)
	cmpwi 7,29,0
	ble- 7,.L2260
.LVL2978:
.LBB11947:
.LBB11948:
.LBB11949:
.LBB11950:
	.loc 4 350 0
	lwz 0,516(31)
.LBE11950:
.LBE11949:
	.loc 4 889 0
	addi 4,29,1
.LVL2979:
.LBB11953:
.LBB11951:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L2331
.LVL2980:
.L2261:
.LBE11951:
.LBE11953:
	.loc 4 890 0
	stw 29,508(31)
	.loc 4 891 0
	li 4,32
	lwz 3,512(31)
	mr 5,29
	bl memset
	.loc 4 892 0
	lwz 9,512(31)
	lwz 0,508(31)
	li 11,0
.LBE11948:
.LBE11947:
	.loc 3 252 0
	mr 3,30
.LBB11957:
.LBB11955:
	.loc 4 892 0
	stbx 11,9,0
.LVL2981:
.LBE11955:
.LBE11957:
	.loc 3 252 0
	lwz 9,0(30)
	lwz 4,512(31)
	lwz 0,20(9)
	lwz 5,8(1)
	mtctr 0
	bctrl
.LVL2982:
.L2260:
.LBE11946:
.LBE11945:
.LBB11960:
.LBB11961:
	.loc 3 828 0
	lwz 9,0(30)
	addi 4,31,552
	li 5,1
	mr 3,30
	lwz 0,20(9)
	mtctr 0
	bctrl
	.loc 3 831 0
	lwz 9,0(30)
	mr 3,30
	addi 4,1,8
	lwz 0,20(9)
	li 5,4
	mtctr 0
	bctrl
.LVL2983:
	.loc 3 832 0
	lwz 29,8(1)
	cmpwi 7,29,0
	ble- 7,.L2262
.LVL2984:
.LBB11962:
.LBB11963:
.LBB11964:
.LBB11965:
	.loc 4 350 0
	lwz 0,596(31)
.LBE11965:
.LBE11964:
	.loc 4 889 0
	addi 4,29,1
.LVL2985:
.LBB11968:
.LBB11966:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L2332
.LVL2986:
.L2263:
.LBE11966:
.LBE11968:
	.loc 4 890 0
	stw 29,588(31)
	.loc 4 891 0
	li 4,32
	lwz 3,592(31)
	mr 5,29
	bl memset
	.loc 4 892 0
	lwz 9,592(31)
	lwz 0,588(31)
	li 11,0
.LBE11963:
.LBE11962:
	.loc 3 834 0
	mr 3,30
.LBB11972:
.LBB11970:
	.loc 4 892 0
	stbx 11,9,0
.LVL2987:
.LBE11970:
.LBE11972:
	.loc 3 834 0
	lwz 9,0(30)
	lwz 4,592(31)
	lwz 0,20(9)
	lwz 5,8(1)
	mtctr 0
	bctrl
.LVL2988:
.L2262:
	.loc 3 836 0
	lwz 29,620(31)
	cmpwi 7,29,0
	beq- 7,.L2264
	.loc 3 837 0
	lwz 0,8(1)
	cmpwi 7,0,0
	bgt- 7,.L2333
	.loc 3 840 0
	li 0,0
	stw 0,0(29)
.L2264:
.LBE11961:
.LBE11960:
	.loc 6 3690 0
	lis 9,session@ha
	lwz 3,session@l(9)
	lwz 9,0(3)
	lwz 0,112(9)
	mtctr 0
	bctrl
	cmpwi 7,3,16
	ble- 7,.L2266
.LVL2989:
.LBB11978:
.LBB11979:
	.loc 3 150 0
	lwz 9,0(30)
	addi 4,31,928
	li 5,1
	mr 3,30
	lwz 0,20(9)
	mtctr 0
	bctrl
	.loc 3 151 0
	lwz 9,0(30)
	mr 3,30
	addi 4,31,929
	lwz 0,20(9)
	li 5,1
	mtctr 0
	bctrl
.LVL2990:
.L2267:
.LBE11979:
.LBE11978:
	.loc 6 3697 0 discriminator 1
	lwz 0,624(31)
	cmpwi 7,0,0
	ble- 7,.L2270
	.loc 6 3697 0 is_stmt 0
	li 29,0
.LVL2991:
.L2271:
	.loc 6 3698 0 is_stmt 1 discriminator 2
	lwz 9,636(31)
	slwi 0,29,2
	mr 4,30
	.loc 6 3697 0 discriminator 2
	addi 29,29,1
.LVL2992:
	.loc 6 3698 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
.LVL2993:
	.loc 6 3697 0 discriminator 2
	lwz 0,624(31)
	cmpw 7,0,29
	bgt+ 7,.L2271
.LVL2994:
.L2270:
	.loc 6 3701 0
	lwz 9,0(30)
	addi 4,31,656
	li 5,16
	mr 3,30
	lwz 0,20(9)
	.loc 6 3704 0
	mr 29,1
	.loc 6 3701 0
	mtctr 0
	bctrl
	.loc 6 3706 0
	lwz 9,0(30)
	.loc 6 3704 0
	li 0,-1
	.loc 6 3706 0
	mr 3,30
	.loc 6 3704 0
	stwu 0,16(29)
.LVL2995:
	.loc 6 3706 0
	li 5,4
	lwz 0,20(9)
	mr 4,29
	mtctr 0
	bctrl
.LVL2996:
	.loc 6 4264 0
	lwz 0,680(31)
	.loc 6 3707 0
	cmpwi 7,0,0
	ble- 7,.L2272
	lwz 8,692(31)
	mtctr 0
	lwz 10,16(1)
	li 9,0
.LVL2997:
.L2274:
	.loc 6 3708 0
	slwi 0,9,2
	.loc 6 3707 0
	addi 9,9,1
.LVL2998:
	.loc 6 3708 0
	lwzx 11,8,0
	lwz 0,44(11)
	cmpw 7,0,10
	beq- 7,.L2334
.LVL2999:
	.loc 6 3707 0
	bdnz .L2274
.LVL3000:
.L2272:
	.loc 6 3712 0
	lwz 9,0(30)
	mr 3,30
	mr 4,29
	li 5,4
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL3001:
	.loc 6 4264 0
	lwz 0,680(31)
	.loc 6 3713 0
	cmpwi 7,0,0
	ble- 7,.L2275
	lwz 8,692(31)
	mtctr 0
	lwz 10,16(1)
	li 9,0
.LVL3002:
.L2277:
	.loc 6 3714 0
	slwi 0,9,2
	.loc 6 3713 0
	addi 9,9,1
.LVL3003:
	.loc 6 3714 0
	lwzx 11,8,0
	lwz 0,44(11)
	cmpw 7,0,10
	beq- 7,.L2335
.LVL3004:
	.loc 6 3713 0
	bdnz .L2277
.LVL3005:
.L2275:
	.loc 6 3718 0
	lwz 9,0(30)
	mr 3,30
	mr 4,29
	li 5,4
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL3006:
	.loc 6 4264 0
	lwz 0,680(31)
	.loc 6 3719 0
	cmpwi 7,0,0
	ble- 7,.L2278
	lwz 8,692(31)
	mtctr 0
	lwz 10,16(1)
	li 9,0
.LVL3007:
.L2280:
	.loc 6 3720 0
	slwi 0,9,2
	.loc 6 3719 0
	addi 9,9,1
.LVL3008:
	.loc 6 3720 0
	lwzx 11,8,0
	lwz 0,44(11)
	cmpw 7,0,10
	beq- 7,.L2336
.LVL3009:
	.loc 6 3719 0
	bdnz .L2280
.LVL3010:
.L2278:
.LBE11914:
	.loc 6 3641 0
	addi 28,31,732
.LBB12064:
	li 29,0
.LVL3011:
.L2282:
	.loc 6 3727 0
	lwzu 3,4(28)
	.loc 6 3728 0
	mr 4,30
	.loc 6 3727 0
	cmpwi 7,3,0
	beq- 7,.L2281
	.loc 6 3728 0
	bl _ZN15idGuiScriptList16ReadFromSaveGameEP6idFile
.L2281:
.LVL3012:
	.loc 6 3726 0
	cmpwi 7,29,10
	addi 29,29,1
.LVL3013:
	bne+ 7,.L2282
.LVL3014:
	.loc 6 3733 0 discriminator 1
	lwz 0,784(31)
	cmpwi 7,0,0
	ble- 7,.L2283
	.loc 6 3733 0 is_stmt 0
	li 29,0
.LVL3015:
.L2285:
	.loc 6 3734 0 is_stmt 1
	lwz 9,796(31)
	.loc 6 3641 0
	slwi 28,29,2
	.loc 6 3735 0
	mr 3,30
	li 5,1
	.loc 6 3734 0
	lwzx 9,9,28
	cmpwi 7,9,0
	.loc 6 3735 0
	addi 4,9,8
	.loc 6 3734 0
	beq- 7,.L2284
.LVL3016:
	.loc 6 3735 0
	lwz 9,0(30)
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL3017:
	.loc 6 3736 0
	lwz 11,0(30)
	lwz 9,796(31)
	li 5,4
	lwz 0,20(11)
	mr 3,30
	lwzx 4,9,28
	mtctr 0
	bctrl
.LVL3018:
	.loc 6 3737 0
	lwz 9,796(31)
	.loc 6 3738 0
	mr 4,30
	.loc 6 3737 0
	lwzx 9,9,28
	lwz 3,4(9)
	cmpwi 7,3,0
	beq- 7,.L2327
.LVL3019:
	.loc 6 3738 0
	bl _ZN15idGuiScriptList16ReadFromSaveGameEP6idFile
.LVL3020:
.L2327:
	lwz 0,784(31)
.LVL3021:
.L2284:
	.loc 6 3733 0
	addi 29,29,1
.LVL3022:
	cmpw 7,0,29
	bgt+ 7,.L2285
.LVL3023:
.L2283:
	.loc 6 3746 0
	lwz 9,0(30)
	mr 3,30
	addi 4,1,12
	li 5,4
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL3024:
.LBB11980:
	.loc 6 3747 0
	lwz 0,12(1)
	cmpwi 7,0,0
	ble- 7,.L2286
	lis 20,.LC19@ha
	li 24,0
	la 20,.LC19@l(20)
.LBB11981:
.LBB11982:
.LBB11983:
.LBB11984:
.LBB11985:
.LBB11986:
	.loc 23 87 0
	li 23,1
	.loc 23 92 0
	lwz 21,0(20)
	.loc 23 88 0
	li 28,0
	.loc 23 89 0
	li 29,0
.LBE11986:
.LBE11985:
.LBE11984:
.LBE11983:
.LBE11982:
	.loc 6 3752 0
	addi 22,31,800
.LBB11997:
.LBB11998:
.LBB11999:
.LBB12000:
	.loc 16 663 0
	li 19,16
	b .L2301
.LVL3025:
.L2328:
.LBB12001:
.LBB12002:
	.loc 16 380 0
	mulli 0,0,136
	add 3,25,0
.LVL3026:
.L2290:
.LBE12002:
.LBE12001:
.LBE12000:
.LBE11999:
	.loc 16 669 0
	addi 4,1,20
.LVL3027:
	li 5,136
	bl memcpy
.LVL3028:
	.loc 16 670 0
	lwz 9,800(31)
	addi 0,9,1
	stw 0,800(31)
.LVL3029:
.L2287:
.LBE11998:
.LBE11997:
.LBE11981:
	.loc 6 3747 0
	lwz 0,12(1)
	addi 24,24,1
.LVL3030:
	cmpw 7,0,24
	ble- 7,.L2286
.LVL3031:
.L2301:
.LBB12031:
.LBB12026:
.LBB11995:
.LBB11993:
.LBB11990:
.LBB11987:
	.loc 23 93 0
	li 0,0
.LBE11987:
.LBE11990:
.LBE11993:
.LBE11995:
.LBE12026:
	.loc 6 3750 0
	mr 3,31
	addi 4,1,20
.LVL3032:
	mr 5,30
.LBB12027:
.LBB11996:
.LBB11994:
.LBB11991:
.LBB11988:
	.loc 23 93 0
	stw 0,140(1)
	stw 0,144(1)
	stw 0,148(1)
	stw 0,152(1)
.LBE11988:
.LBE11991:
	.loc 21 173 0
	stw 0,60(1)
	stw 0,64(1)
	stw 0,68(1)
	stw 0,72(1)
.LBB11992:
.LBB11989:
	.loc 23 87 0
	stw 23,76(1)
	.loc 23 88 0
	stw 28,84(1)
	stw 28,80(1)
	.loc 23 89 0
	stw 29,88(1)
	stw 29,92(1)
	stw 29,96(1)
	stw 29,100(1)
	.loc 23 90 0
	stw 29,104(1)
	stw 29,108(1)
	stw 29,112(1)
	stw 29,116(1)
	.loc 23 91 0
	stw 29,120(1)
	stw 29,124(1)
	stw 29,128(1)
	stw 29,132(1)
	.loc 23 92 0
	stw 21,136(1)
.LBE11989:
.LBE11992:
	.loc 21 171 0
	stw 28,40(1)
	stw 28,36(1)
	stw 28,32(1)
	stw 28,28(1)
	.loc 21 172 0
	stw 29,44(1)
	stw 29,48(1)
	stw 29,52(1)
	stw 29,56(1)
.LBE11994:
.LBE11996:
.LBE12027:
	.loc 6 3749 0
	stw 29,20(1)
	.loc 6 3750 0
	bl _ZN8idWindow22ReadSaveGameTransitionER16idTransitionDataP6idFile
.LVL3033:
	.loc 6 3751 0
	lwz 0,20(1)
	cmpwi 7,0,0
	beq- 7,.L2287
.LVL3034:
.LBB12028:
.LBB12023:
	.loc 16 655 0
	lwz 25,812(31)
	cmpwi 7,25,0
	beq- 7,.L2337
.L2288:
.LBB12021:
	.loc 16 659 0
	lwz 0,800(31)
	lwz 9,804(31)
	cmpw 7,0,9
	bne+ 7,.L2328
.LBB12019:
	.loc 16 662 0
	lwz 11,808(31)
	cmpwi 7,11,0
	bne- 7,.L2291
	.loc 16 663 0
	stw 19,808(31)
	li 11,16
.L2291:
	.loc 16 665 0
	add 27,9,11
.LVL3035:
	.loc 16 666 0
	divw 27,27,11
.LVL3036:
.LBB12017:
.LBB12015:
	.loc 16 375 0
	mullw. 27,27,11
.LVL3037:
	ble- 0,.L2338
	.loc 16 380 0
	cmpw 7,9,27
	beq- 7,.L2328
.LVL3038:
	.loc 16 387 0
	cmpw 7,0,27
	.loc 16 386 0
	stw 27,804(31)
	.loc 16 387 0
	ble- 7,.L2295
	.loc 16 388 0
	stw 27,800(31)
.L2295:
	.loc 16 392 0
	mulli 3,27,136
	bl _Znaj
	cmpwi 7,27,0
	beq- 7,.L2296
.LBB12003:
.LBB12004:
.LBB12005:
.LBB12006:
.LBB12007:
	.loc 23 92 0
	lwz 5,0(20)
	mtctr 27
.LBE12007:
.LBE12006:
.LBE12005:
.LBE12004:
.LBE12003:
	.loc 6 3641 0
	addi 9,3,56
	addi 11,3,20
.LVL3039:
.L2297:
.LBB12012:
.LBB12011:
.LBB12010:
.LBB12009:
.LBB12008:
	.loc 23 93 0
	li 0,0
	.loc 23 87 0
	stw 23,0(9)
	.loc 23 88 0
	stw 28,8(9)
	stw 28,4(9)
	.loc 23 89 0
	stw 29,12(9)
	stw 29,16(9)
	stw 29,20(9)
	stw 29,24(9)
	.loc 23 90 0
	stw 29,28(9)
	stw 29,32(9)
	stw 29,36(9)
	stw 29,40(9)
	.loc 23 91 0
	stw 29,44(9)
	stw 29,48(9)
	stw 29,52(9)
	stw 29,56(9)
	.loc 23 92 0
	stw 5,60(9)
	.loc 23 93 0
	stw 0,64(9)
	stw 0,68(9)
	stw 0,72(9)
	stw 0,76(9)
.LBE12008:
.LBE12009:
	.loc 21 171 0
	stw 28,0(11)
	stw 28,-4(11)
	stw 28,-8(11)
	stw 28,-12(11)
	.loc 21 172 0
	stw 29,-32(9)
	stw 29,-28(9)
	stw 29,-24(9)
	stw 29,-20(9)
	.loc 21 173 0
	addi 9,9,136
.LVL3040:
	lwz 7,4(11)
	lwz 10,12(11)
	lwz 0,16(11)
	lwz 8,8(11)
	stw 7,20(11)
	stw 8,24(11)
	stw 10,28(11)
	stw 0,32(11)
	addi 11,11,136
.LBE12010:
.LBE12011:
.LBE12012:
	.loc 16 392 0
	bdnz .L2297
.LVL3041:
.L2296:
	.loc 16 393 0
	lwz 0,800(31)
	.loc 16 392 0
	stw 3,812(31)
.LVL3042:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2298
	li 27,0
.LVL3043:
	li 26,0
	b .L2299
.LVL3044:
.L2339:
	lwz 3,812(31)
.LVL3045:
.L2299:
	.loc 16 394 0
	add 3,3,27
	add 4,25,27
	li 5,136
	.loc 16 393 0
	addi 26,26,1
	.loc 16 394 0
	bl memcpy
.LVL3046:
	.loc 16 393 0
	lwz 0,0(22)
	addi 27,27,136
	cmpw 7,26,0
	blt+ 7,.L2339
.LVL3047:
.L2298:
	.loc 16 398 0
	cmpwi 7,25,0
	beq- 7,.L2329
	.loc 16 399 0
	mr 3,25
	bl _ZdaPv
.L2329:
	lwz 0,800(31)
	lwz 3,812(31)
	mulli 0,0,136
	add 3,3,0
	b .L2290
.LVL3048:
.L2334:
.LBE12015:
.LBE12017:
.LBE12019:
.LBE12021:
.LBE12023:
.LBE12028:
.LBE12031:
.LBE11980:
	.loc 6 3709 0
	stw 11,712(31)
.LVL3049:
	.loc 6 3707 0
	bdnz .L2274
	b .L2272
.LVL3050:
.L2335:
	.loc 6 3715 0
	stw 11,716(31)
.LVL3051:
	.loc 6 3713 0
	bdnz .L2277
	b .L2275
.LVL3052:
.L2336:
	.loc 6 3721 0
	stw 11,720(31)
.LVL3053:
	.loc 6 3719 0
	bdnz .L2280
	b .L2278
.LVL3054:
.L2286:
	.loc 6 3758 0 discriminator 1
	lwz 9,852(31)
	cmpwi 7,9,0
	ble- 7,.L2302
	.loc 6 3758 0 is_stmt 0
	li 29,0
.LVL3055:
.L2304:
	.loc 6 3759 0 is_stmt 1
	lwz 11,864(31)
	.loc 6 3641 0
	slwi 28,29,2
	.loc 6 3760 0
	mr 3,31
	mr 5,30
	.loc 6 3759 0
	lwzx 0,11,28
.LVL3056:
	cmpwi 7,0,0
	.loc 6 3760 0
	mr 4,0
	.loc 6 3759 0
	beq- 7,.L2303
.LVL3057:
	.loc 6 3760 0
	bl _ZN8idWindow18ReadSaveGameStringER5idStrP6idFile
.LVL3058:
	.loc 6 3761 0
	lwz 9,864(31)
	.loc 6 3762 0
	mr 4,30
	.loc 6 3761 0
	lwzx 9,9,28
	lwz 3,32(9)
	cmpwi 7,3,0
	beq- 7,.L2330
.LVL3059:
	.loc 6 3762 0
	bl _ZN15idGuiScriptList16ReadFromSaveGameEP6idFile
.LVL3060:
.L2330:
	lwz 9,852(31)
.LVL3061:
.L2303:
	.loc 6 3758 0
	addi 29,29,1
.LVL3062:
	cmpw 7,9,29
	bgt+ 7,.L2304
.LVL3063:
.L2302:
	.loc 6 3768 0
	addi 3,31,872
	mr 4,30
	bl _ZN14idRegisterList16ReadFromSaveGameEP6idFile
.LVL3064:
.LBB12034:
	.loc 6 3771 0
	lwz 10,696(31)
	cmpwi 7,10,0
	ble- 7,.L2305
	li 29,0
	b .L2308
.LVL3065:
.L2340:
.LBB12035:
	.loc 6 3775 0
	lwz 9,0(9)
	lwz 0,12(9)
	mtctr 0
	bctrl
.LVL3066:
	lwz 10,696(31)
.L2307:
.LBE12035:
	.loc 6 3771 0
	addi 29,29,1
.LVL3067:
	cmpw 7,10,29
	ble- 7,.L2305
.LVL3068:
.L2308:
.LBB12040:
.LBB12036:
.LBB12037:
	.loc 16 589 0
	lwz 11,708(31)
	.loc 6 3641 0
	slwi 0,29,3
.LBE12037:
.LBE12036:
	.loc 6 3775 0
	mr 4,30
.LBB12039:
.LBB12038:
	.loc 16 589 0
	add 9,11,0
	.loc 6 3772 0
	lwzx 11,11,0
.LVL3069:
	lwz 9,4(9)
.LVL3070:
.LBE12038:
.LBE12039:
	.loc 6 3774 0
	cmpwi 7,9,0
	.loc 6 3775 0
	mr 3,9
	.loc 6 3774 0
	bne+ 7,.L2340
	.loc 6 3776 0
	cmpwi 7,11,0
	.loc 6 3777 0
	mr 3,11
	mr 4,30
	.loc 6 3776 0
	beq- 7,.L2307
	.loc 6 3777 0
	lwz 9,0(11)
.LVL3071:
.LBE12040:
	.loc 6 3771 0
	addi 29,29,1
.LVL3072:
.LBB12041:
	.loc 6 3777 0
	lwz 0,116(9)
	mtctr 0
	bctrl
.LVL3073:
	lwz 10,696(31)
.LBE12041:
	.loc 6 3771 0
	cmpw 7,10,29
	bgt+ 7,.L2308
.LVL3074:
.L2305:
.LBE12034:
	.loc 6 3781 0
	lwz 0,48(31)
	andis. 9,0,4096
	beq+ 0,.L2258
	.loc 6 3782 0
	mr 3,31
	bl _ZN8idWindow16FixupTransitionsEv
.L2258:
.LBE12064:
	.loc 6 3784 0
	lwz 0,228(1)
	lwz 19,172(1)
	mtlr 0
	lwz 20,176(1)
	lwz 21,180(1)
	lwz 22,184(1)
	lwz 23,188(1)
	lwz 24,192(1)
	lwz 25,196(1)
	lwz 26,200(1)
	lwz 27,204(1)
	lwz 28,208(1)
	lwz 29,212(1)
	lwz 30,216(1)
.LVL3075:
	lwz 31,220(1)
.LVL3076:
	addi 1,1,224
	.cfi_remember_state
.LCFI444:
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
	.cfi_restore 20
	.cfi_restore 19
	blr
.LVL3077:
.L2266:
.LCFI445:
	.cfi_restore_state
.LBB12065:
.LBB12042:
.LBB12043:
	.loc 3 115 0
	lwz 28,920(31)
	.loc 3 114 0
	li 0,0
	stb 0,929(31)
	.loc 3 115 0
	cmpwi 7,28,0
	beq- 7,.L2267
.LBE12043:
	.loc 6 4264 0
	lwz 29,924(31)
.LBB12056:
.LBB12044:
.LBB12045:
	.loc 3 53 0
	cmpwi 7,29,0
	beq- 7,.L2310
	.loc 3 54 0
	lbz 0,0(29)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L2341
.L2268:
.LVL3078:
.LBE12045:
.LBE12044:
.LBB12053:
.LBB12054:
	.loc 10 197 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,29
	mr 5,3
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
	b .L2267
.LVL3079:
.L2331:
.LBE12054:
.LBE12053:
.LBE12056:
.LBE12042:
.LBB12058:
.LBB11959:
.LBB11958:
.LBB11956:
.LBB11954:
.LBB11952:
	.loc 4 351 0
	addi 3,31,508
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL3080:
	b .L2261
.LVL3081:
.L2332:
.LBE11952:
.LBE11954:
.LBE11956:
.LBE11958:
.LBE11959:
.LBE12058:
.LBB12059:
.LBB11974:
.LBB11973:
.LBB11971:
.LBB11969:
.LBB11967:
	addi 3,31,588
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL3082:
	b .L2263
.LVL3083:
.L2337:
.LBE11967:
.LBE11969:
.LBE11971:
.LBE11973:
.LBE11974:
.LBE12059:
.LBB12060:
.LBB12032:
.LBB12029:
.LBB12024:
	.loc 16 656 0
	lwz 4,808(31)
	mr 3,22
	bl _ZN6idListI16idTransitionDataE6ResizeEi
	lwz 25,812(31)
	b .L2288
.LVL3084:
.L2333:
.LBE12024:
.LBE12029:
.LBE12032:
.LBE12060:
.LBB12061:
.LBB11975:
.LBB11976:
.LBB11977:
	.loc 3 838 0
	lis 9,declManager@ha
	lwz 4,592(31)
	lwz 3,declManager@l(9)
.LVL3085:
	li 5,1
	li 6,0
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	stw 3,0(29)
	b .L2264
.LVL3086:
.L2338:
.LBE11977:
.LBE11976:
.LBE11975:
.LBE12061:
.LBB12062:
.LBB12033:
.LBB12030:
.LBB12025:
.LBB12022:
.LBB12020:
.LBB12018:
.LBB12016:
.LBB12013:
.LBB12014:
	.loc 16 193 0
	cmpwi 7,25,0
	beq- 7,.L2293
	.loc 16 194 0
	mr 3,25
	bl _ZdaPv
.L2293:
	.loc 16 197 0
	stw 29,812(31)
	.loc 16 199 0
	li 3,0
	.loc 16 198 0
	stw 29,800(31)
	.loc 16 199 0
	stw 29,804(31)
	b .L2290
.LVL3087:
.L2310:
.LBE12014:
.LBE12013:
.LBE12016:
.LBE12018:
.LBE12020:
.LBE12022:
.LBE12025:
.LBE12030:
.LBE12033:
.LBE12062:
.LBB12063:
.LBB12057:
.LBB12055:
.LBB12052:
	.loc 3 59 0
	lis 29,.LC4@ha
	.loc 3 53 0
	li 4,0
	.loc 3 59 0
	la 29,.LC4@l(29)
	b .L2268
.L2341:
.LVL3088:
.LBB12046:
.LBB12047:
.LBB12048:
.LBB12049:
	.loc 10 241 0
	mr 3,28
	addi 4,29,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL3089:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L2312
.LVL3090:
.LBB12050:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,929(31)
	lwz 29,4(9)
.LVL3091:
	b .L2268
.LVL3092:
.L2312:
.LBE12050:
	.loc 10 245 0
	lis 29,.LC4@ha
.LVL3093:
.LBB12051:
	.loc 6 4264 0
	lbz 4,929(31)
.LBE12051:
	.loc 10 245 0
	la 29,.LC4@l(29)
	b .L2268
.LBE12049:
.LBE12048:
.LBE12047:
.LBE12046:
.LBE12052:
.LBE12055:
.LBE12057:
.LBE12063:
.LBE12065:
	.cfi_endproc
.LFE2991:
	.size	_ZN8idWindow16ReadFromSaveGameEP6idFile, .-_ZN8idWindow16ReadFromSaveGameEP6idFile
	.section	.text._ZN6idListIP8idWinVarE6ResizeEi,"axG",@progbits,_ZN6idListIP8idWinVarE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListIP8idWinVarE6ResizeEi
	.type	_ZN6idListIP8idWinVarE6ResizeEi, @function
_ZN6idListIP8idWinVarE6ResizeEi:
.LFB3350:
	.loc 16 368 0
	.cfi_startproc
.LVL3094:
.LBB12070:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE12070:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI446:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB12073:
	.loc 16 375 0
	ble- 0,.L2349
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L2342
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL3095:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L2350
.L2346:
	.loc 16 392 0
	slwi 3,4,2
.LVL3096:
	bl _Znaj
.LVL3097:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3098:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2347
	.loc 16 368 0
	addi 11,30,-4
.LBE12073:
	.loc 16 393 0
	li 9,0
	b .L2348
.LVL3099:
.L2351:
.LBB12074:
	lwz 3,12(31)
.LVL3100:
.L2348:
	.loc 16 394 0 discriminator 2
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0 discriminator 2
	addi 9,9,1
.LVL3101:
	.loc 16 394 0 discriminator 2
	stwx 10,3,0
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L2351
.LVL3102:
.L2347:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2342
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL3103:
.L2342:
.LBE12074:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3104:
	addi 1,1,16
	.cfi_remember_state
.LCFI447:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3105:
.L2350:
.LCFI448:
	.cfi_restore_state
.LBB12075:
	.loc 16 388 0
	stw 4,0(3)
	b .L2346
.LVL3106:
.L2349:
.LBB12071:
.LBB12072:
	.loc 16 193 0
	lwz 3,12(3)
.LVL3107:
	cmpwi 7,3,0
	beq- 7,.L2344
	.loc 16 194 0
	bl _ZdaPv
.LVL3108:
.L2344:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2342
.LBE12072:
.LBE12071:
.LBE12075:
	.cfi_endproc
.LFE3350:
	.size	_ZN6idListIP8idWinVarE6ResizeEi, .-_ZN6idListIP8idWinVarE6ResizeEi
	.section	.text._ZN6idListIP8idWinVarE6AppendERKS1_,"axG",@progbits,_ZN6idListIP8idWinVarE6AppendERKS1_,comdat
	.align 2
	.weak	_ZN6idListIP8idWinVarE6AppendERKS1_
	.type	_ZN6idListIP8idWinVarE6AppendERKS1_, @function
_ZN6idListIP8idWinVarE6AppendERKS1_:
.LFB3283:
	.loc 16 654 0
	.cfi_startproc
.LVL3109:
	mflr 0
	stwu 1,-24(1)
.LCFI449:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 30,16(1)
.LBB12087:
	.loc 16 655 0
	lwz 30,12(3)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmpwi 7,30,0
	beq- 7,.L2365
.LVL3110:
.L2353:
.LBB12088:
	.loc 16 659 0
	lwz 0,0(31)
	lwz 9,4(31)
	cmpw 7,0,9
	beq- 7,.L2354
.L2364:
.LBB12089:
.LBB12090:
.LBB12091:
	.loc 16 399 0
	slwi 0,0,2
	add 30,30,0
.L2355:
.LBE12091:
.LBE12090:
.LBE12089:
.LBE12088:
	.loc 16 669 0
	lwz 9,0(29)
	stw 9,0(30)
	.loc 16 670 0
	lwz 3,0(31)
	addi 0,3,1
	stw 0,0(31)
.LBE12087:
	.loc 16 673 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL3111:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL3112:
	addi 1,1,24
	.cfi_remember_state
.LCFI450:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL3113:
.L2354:
.LCFI451:
	.cfi_restore_state
.LBB12106:
.LBB12104:
.LBB12102:
	.loc 16 662 0
	lwz 11,8(31)
	cmpwi 7,11,0
	beq- 7,.L2366
.L2356:
	.loc 16 665 0
	add 10,9,11
.LVL3114:
	.loc 16 666 0
	divw 10,10,11
.LVL3115:
.LBB12098:
.LBB12094:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3116:
	ble- 0,.L2367
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2364
.LVL3117:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,4(31)
	.loc 16 387 0
	bgt- 7,.L2368
.L2360:
	.loc 16 392 0
	slwi 3,11,2
	bl _Znaj
.LVL3118:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3119:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2361
	.loc 16 654 0
	addi 11,30,-4
.LBE12094:
.LBE12098:
	.loc 16 393 0
	li 9,0
	b .L2362
.LVL3120:
.L2369:
.LBB12099:
.LBB12095:
	lwz 3,12(31)
.LVL3121:
.L2362:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL3122:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(31)
	cmpw 7,9,0
	blt+ 7,.L2369
.LVL3123:
.L2361:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2370
	.loc 16 399 0
	mr 3,30
	bl _ZdaPv
	lwz 0,0(31)
	lwz 30,12(31)
.LVL3124:
	b .L2364
.LVL3125:
.L2366:
.LBE12095:
.LBE12099:
	.loc 16 663 0
	li 11,16
	stw 11,8(31)
	b .L2356
.LVL3126:
.L2368:
.LBB12100:
.LBB12096:
	.loc 16 388 0
	stw 11,0(31)
	b .L2360
.LVL3127:
.L2365:
.LBE12096:
.LBE12100:
.LBE12102:
.LBE12104:
	.loc 16 656 0
	lwz 4,8(3)
	bl _ZN6idListIP8idWinVarE6ResizeEi
	lwz 30,12(31)
	b .L2353
.LVL3128:
.L2367:
.LBB12105:
.LBB12103:
.LBB12101:
.LBB12097:
.LBB12092:
.LBB12093:
	.loc 16 193 0
	cmpwi 7,30,0
	beq- 7,.L2358
	.loc 16 194 0
	mr 3,30
	bl _ZdaPv
.LVL3129:
.L2358:
	.loc 16 197 0
	li 0,0
	.loc 16 199 0
	li 30,0
	.loc 16 197 0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2355
.LVL3130:
.L2370:
.LBE12093:
.LBE12092:
	.loc 16 398 0
	lwz 30,12(31)
.LVL3131:
	slwi 0,0,2
	add 30,30,0
	b .L2355
.LBE12097:
.LBE12101:
.LBE12103:
.LBE12105:
.LBE12106:
	.cfi_endproc
.LFE3283:
	.size	_ZN6idListIP8idWinVarE6AppendERKS1_, .-_ZN6idListIP8idWinVarE6AppendERKS1_
	.section	".text"
	.align 2
	.globl _ZN8idWindow13ParseRegEntryEPKcP8idParser
	.type	_ZN8idWindow13ParseRegEntryEPKcP8idParser, @function
_ZN8idWindow13ParseRegEntryEPKcP8idParser:
.LFB2959:
	.loc 6 2082 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2959
.LVL3132:
	mflr 0
	stwu 1,-168(1)
.LCFI452:
	.cfi_def_cfa_offset 168
	.cfi_register 65, 0
.LVL3133:
.LBB12189:
.LBB12190:
.LBB12191:
.LBB12192:
	.loc 4 357 0
	li 9,20
.LBE12192:
.LBE12191:
.LBE12190:
.LBE12189:
	.loc 6 2082 0
	mfcr 12
	stw 29,156(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_register 70, 12
	stw 0,172(1)
.LBB12338:
	.loc 6 2084 0
	addi 3,1,24
.LVL3134:
.LBB12197:
.LBB12195:
.LBB12193:
	.loc 4 356 0
	li 0,0
	.cfi_offset 65, 4
	.loc 4 357 0
	stw 9,32(1)
	.loc 4 358 0
	addi 9,1,36
.LBE12193:
.LBE12195:
.LBE12197:
.LBE12338:
	.loc 6 2082 0
	stw 27,148(1)
	stw 26,144(1)
	mr 27,5
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	stw 28,152(1)
	stw 30,160(1)
	stw 31,164(1)
	stw 12,140(1)
.LBB12339:
.LBB12198:
.LBB12196:
.LBB12194:
	.loc 4 356 0
	stw 0,24(1)
	.loc 4 358 0
	stw 9,28(1)
	.loc 4 359 0
	stb 0,36(1)
.LEHB166:
.LBE12194:
.LBE12196:
.LBE12198:
	.loc 6 2084 0
	.cfi_offset 70, -28
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	bl _ZN5idStraSEPKc
.LVL3135:
.LBB12199:
.LBB12200:
	.loc 4 839 0
	lwz 10,28(1)
	lbz 9,0(10)
	mr 4,10
	cmpwi 7,9,0
	beq- 7,.L2372
	li 11,0
.LVL3136:
.L2375:
.LBB12201:
.LBB12202:
	.loc 4 1036 0
	addi 0,9,-65
	cmplwi 7,0,25
	ble- 7,.L2373
	addi 0,9,-192
	cmplwi 7,0,31
	bgt- 7,.L2374
.L2373:
.LBE12202:
.LBE12201:
	.loc 4 841 0
	addi 9,9,32
.LVL3137:
	stb 9,0(10)
.LVL3138:
.L2374:
	.loc 4 839 0
	lwz 4,28(1)
	addi 11,11,1
.LVL3139:
	lbzx 9,4,11
	add 10,4,11
	cmpwi 7,9,0
	bne+ 7,.L2375
.LVL3140:
.L2372:
.LBE12200:
.LBE12199:
	.loc 6 2087 0
	lwz 9,0(29)
	mr 3,29
	li 5,0
	li 6,0
	lwz 0,12(9)
	mtctr 0
	bctrl
.LVL3141:
.LBB12203:
	.loc 6 2088 0
	cmpwi 4,3,0
	mr 26,3
	beq- 4,.L2376
	lis 28,.LANCHOR1@ha
	li 30,0
	la 28,.LANCHOR1@l(28)
	mr 31,28
.LVL3142:
.L2379:
.LBB12204:
	.loc 6 2090 0
	lwz 3,28(1)
	lwz 4,0(31)
	bl _ZN5idStr4IcmpEPKcS1_
.LEHE166:
	cmpwi 7,3,0
	beq- 7,.L2418
.LVL3143:
	.loc 6 2089 0
	cmpwi 7,30,25
	addi 31,31,12
	addi 30,30,1
.LVL3144:
	bne+ 7,.L2379
.LVL3145:
.L2376:
.LBE12204:
.LBE12203:
.LBB12206:
.LBB12207:
.LBB12208:
.LBB12209:
	.loc 4 357 0
	li 9,20
	.loc 4 356 0
	li 0,0
	.loc 4 357 0
	stw 9,64(1)
.LBE12209:
.LBE12208:
.LBE12207:
.LBE12206:
	.loc 6 2103 0
	mr 3,27
.LBB12216:
.LBB12214:
.LBB12212:
.LBB12210:
	.loc 4 358 0
	addi 9,1,68
.LBE12210:
.LBE12212:
.LBE12214:
.LBE12216:
	.loc 6 2103 0
	addi 4,1,56
.LBB12217:
.LBB12215:
.LBB12213:
.LBB12211:
	.loc 4 356 0
	stw 0,56(1)
	.loc 4 358 0
	stw 9,60(1)
	.loc 4 359 0
	stb 0,68(1)
.LEHB167:
.LBE12211:
.LBE12213:
.LBE12215:
.LBE12217:
	.loc 6 2103 0
	bl _ZN8idParser9ReadTokenEP7idToken
	cmpwi 7,3,0
	beq- 7,.L2380
	.loc 6 2105 0
	beq- 4,.L2381
.LVL3146:
	.loc 6 2106 0
	lwz 9,0(26)
	mr 3,26
	lwz 4,60(1)
	lwz 0,12(9)
	mtctr 0
	bctrl
.LEHE167:
.LVL3147:
.L2380:
.LBB12218:
.LBB12219:
.LBB12220:
.LBB12221:
.LBB12222:
	.loc 4 501 0
	addi 3,1,56
.LEHB168:
	bl _ZN5idStr8FreeDataEv
.LEHE168:
.LVL3148:
.LBE12222:
.LBE12221:
.LBE12220:
.LBE12219:
.LBE12218:
.LBB12223:
.LBB12224:
.LBB12225:
	addi 3,1,24
.LEHB169:
	bl _ZN5idStr8FreeDataEv
.LEHE169:
.LBE12225:
.LBE12224:
.LBE12223:
.LBE12339:
	.loc 6 2138 0
	lwz 0,172(1)
	lwz 12,140(1)
	li 3,1
	mtlr 0
	lwz 26,144(1)
.LVL3149:
	lwz 27,148(1)
.LVL3150:
	mtcrf 8,12
	lwz 28,152(1)
	lwz 29,156(1)
.LVL3151:
	lwz 30,160(1)
	lwz 31,164(1)
	addi 1,1,168
	.cfi_remember_state
.LCFI453:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL3152:
.L2418:
.LCFI454:
	.cfi_restore_state
.LBB12340:
.LBB12228:
.LBB12205:
	.loc 6 2091 0
	mulli 30,30,12
	lwz 4,28(1)
	addi 3,29,872
	mr 6,27
	add 28,28,30
	mr 7,29
	lwz 5,4(28)
	mr 8,26
.LEHB170:
	bl _ZN14idRegisterList6AddRegEPKciP8idParserP8idWindowP8idWinVar
.LEHE170:
.LVL3153:
.LBE12205:
.LBE12228:
.LBB12229:
.LBB12227:
.LBB12226:
	.loc 4 501 0
	addi 3,1,24
.LEHB171:
	bl _ZN5idStr8FreeDataEv
.LEHE171:
.LBE12226:
.LBE12227:
.LBE12229:
.LBE12340:
	.loc 6 2138 0
	lwz 0,172(1)
	lwz 12,140(1)
	li 3,1
	mtlr 0
	lwz 26,144(1)
.LVL3154:
	lwz 27,148(1)
.LVL3155:
	mtcrf 8,12
	lwz 28,152(1)
	lwz 29,156(1)
.LVL3156:
	lwz 30,160(1)
	lwz 31,164(1)
	addi 1,1,168
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI455:
	.cfi_def_cfa_offset 0
	blr
.LVL3157:
.L2381:
.LCFI456:
	.cfi_restore_state
.LBB12341:
	.loc 6 2109 0
	lwz 0,88(1)
	cmpwi 7,0,3
	beq- 7,.L2419
	.loc 6 2129 0
	li 3,48
.LEHB172:
	bl _ZN8idWinVarnwEj
.LEHE172:
	mr 31,3
.LVL3158:
.LEHB173:
.LBB12230:
.LBB12231:
	.loc 3 162 0
	bl _ZN8idWinVarC2Ev
.LEHE173:
.LVL3159:
	lis 11,_ZTV8idWinStr+8@ha
.LBB12232:
.LBB12233:
.LBB12234:
	.loc 4 356 0
	li 0,0
.LBE12234:
.LBE12233:
.LBE12232:
	.loc 3 162 0
	la 11,_ZTV8idWinStr+8@l(11)
.LBB12243:
.LBB12239:
.LBB12235:
	.loc 4 358 0
	addi 9,31,28
.LBE12235:
.LBE12239:
.LBE12243:
	.loc 3 162 0
	stw 11,0(31)
.LVL3160:
.LBB12244:
.LBB12240:
.LBB12236:
	.loc 4 357 0
	li 11,20
	.loc 4 356 0
	stw 0,16(31)
.LBE12236:
.LBE12240:
.LBE12244:
.LBE12231:
.LBE12230:
	.loc 6 2130 0
	mr 3,31
.LBB12249:
.LBB12247:
.LBB12245:
.LBB12241:
.LBB12237:
	.loc 4 357 0
	stw 11,24(31)
.LBE12237:
.LBE12241:
.LBE12245:
.LBE12247:
.LBE12249:
	.loc 6 2130 0
	addi 4,1,56
.LBB12250:
.LBB12248:
.LBB12246:
.LBB12242:
.LBB12238:
	.loc 4 358 0
	stw 9,20(31)
	.loc 4 359 0
	stb 0,28(31)
.LVL3161:
.LEHB174:
.LBE12238:
.LBE12242:
.LBE12246:
.LBE12248:
.LBE12250:
	.loc 6 2130 0
	bl _ZN8idWinStraSERK5idStr
.LVL3162:
	.loc 6 2131 0
	lwz 4,28(1)
	addi 3,31,8
	bl _ZN8idWinVar7SetNameEPKc.isra.34
	.loc 6 2132 0
	mr 4,1
	addi 3,29,624
	stwu 31,8(4)
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
	b .L2380
.LVL3163:
.L2419:
	.loc 6 2111 0
	lwz 0,92(1)
	andi. 9,0,1
	bne- 0,.L2420
	.loc 6 2116 0
	andi. 9,0,128
	beq- 0,.L2388
	.loc 6 2117 0
	li 3,20
	bl _ZN8idWinVarnwEj
.LEHE174:
	mr 31,3
.LVL3164:
.LEHB175:
.LBB12251:
.LBB12252:
	.loc 3 324 0
	bl _ZN8idWinVarC2Ev
.LEHE175:
.LVL3165:
	lis 9,_ZTV10idWinFloat+8@ha
	la 0,_ZTV10idWinFloat+8@l(9)
	stw 0,0(31)
.LVL3166:
.LBE12252:
.LBE12251:
	.loc 6 2118 0
	lwz 3,60(1)
	bl atof
.LBB12253:
.LBB12254:
	.loc 3 339 0
	lwz 28,4(31)
.LBE12254:
.LBE12253:
	.loc 6 2118 0
	frsp 1,1
.LVL3167:
.LBB12280:
.LBB12275:
	.loc 3 339 0
	cmpwi 7,28,0
	.loc 3 338 0
	stfs 1,16(31)
	.loc 3 339 0
	beq- 7,.L2389
.LBE12275:
	.loc 6 4264 0
	lwz 30,8(31)
.LBB12276:
.LBB12255:
.LBB12256:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L2406
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L2421
.L2390:
.LVL3168:
.LBE12256:
.LBE12255:
.LBB12270:
.LBB12271:
	.loc 10 189 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
.LEHB176:
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL3169:
	mr 5,3
	mr 4,30
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL3170:
.L2389:
.LBE12271:
.LBE12270:
.LBE12276:
.LBE12280:
	.loc 6 2119 0
	lwz 4,28(1)
	addi 3,31,8
	bl _ZN8idWinVar7SetNameEPKc.isra.34
	.loc 6 2120 0
	mr 4,1
	addi 3,29,624
	stwu 31,16(4)
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
	b .L2380
.LVL3171:
.L2388:
	.loc 6 2122 0
	li 3,48
	bl _ZN8idWinVarnwEj
.LEHE176:
	mr 31,3
.LVL3172:
.LEHB177:
.LBB12281:
.LBB12282:
	.loc 3 162 0
	bl _ZN8idWinVarC2Ev
.LEHE177:
.LVL3173:
	lis 11,_ZTV8idWinStr+8@ha
.LBB12283:
.LBB12284:
.LBB12285:
	.loc 4 356 0
	li 0,0
.LBE12285:
.LBE12284:
.LBE12283:
	.loc 3 162 0
	la 11,_ZTV8idWinStr+8@l(11)
.LBB12294:
.LBB12290:
.LBB12286:
	.loc 4 358 0
	addi 9,31,28
.LBE12286:
.LBE12290:
.LBE12294:
	.loc 3 162 0
	stw 11,0(31)
.LVL3174:
.LBB12295:
.LBB12291:
.LBB12287:
	.loc 4 357 0
	li 11,20
	.loc 4 356 0
	stw 0,16(31)
.LBE12287:
.LBE12291:
.LBE12295:
.LBE12282:
.LBE12281:
	.loc 6 2123 0
	mr 3,31
.LBB12300:
.LBB12298:
.LBB12296:
.LBB12292:
.LBB12288:
	.loc 4 357 0
	stw 11,24(31)
.LBE12288:
.LBE12292:
.LBE12296:
.LBE12298:
.LBE12300:
	.loc 6 2123 0
	addi 4,1,56
.LBB12301:
.LBB12299:
.LBB12297:
.LBB12293:
.LBB12289:
	.loc 4 358 0
	stw 9,20(31)
	.loc 4 359 0
	stb 0,28(31)
.LVL3175:
.LEHB178:
.LBE12289:
.LBE12293:
.LBE12297:
.LBE12299:
.LBE12301:
	.loc 6 2123 0
	bl _ZN8idWinStraSERK5idStr
.LVL3176:
	.loc 6 2124 0
	lwz 4,28(1)
	addi 3,31,8
	bl _ZN8idWinVar7SetNameEPKc.isra.34
	.loc 6 2125 0
	mr 4,1
	addi 3,29,624
	stwu 31,12(4)
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
	b .L2380
.LVL3177:
.L2420:
	.loc 6 2112 0
	li 3,20
	bl _ZN8idWinVarnwEj
.LEHE178:
	mr 31,3
.LVL3178:
.LEHB179:
.LBB12302:
.LBB12303:
	.loc 3 265 0
	bl _ZN8idWinVarC2Ev
.LEHE179:
.LVL3179:
	lis 9,_ZTV8idWinInt+8@ha
	la 0,_ZTV8idWinInt+8@l(9)
	stw 0,0(31)
.LVL3180:
.LBE12303:
.LBE12302:
	.loc 6 2113 0
	lwz 3,60(1)
	bl atoi
.LBB12304:
.LBB12305:
	.loc 3 275 0
	lwz 28,4(31)
.LBE12305:
.LBE12304:
	.loc 6 2113 0
	mr 4,3
.LVL3181:
.LBB12324:
.LBB12320:
	.loc 3 274 0
	stw 3,16(31)
	.loc 3 275 0
	cmpwi 7,28,0
	beq- 7,.L2385
.LBE12320:
	.loc 6 4264 0
	lwz 30,8(31)
.LBB12321:
.LBB12306:
.LBB12307:
	.loc 3 53 0
	cmpwi 7,30,0
	beq- 7,.L2404
	.loc 3 54 0
	lbz 0,0(30)
	cmpwi 7,0,42
	beq- 7,.L2422
.L2386:
.LVL3182:
.LBE12307:
.LBE12306:
.LBB12316:
.LBB12317:
	.loc 10 193 0
	lis 3,.LC3@ha
	la 3,.LC3@l(3)
.LEHB180:
	crxor 6,6,6
	bl _Z2vaPKcz
.LVL3183:
	mr 5,3
	mr 4,30
	mr 3,28
	bl _ZN6idDict3SetEPKcS1_
.LVL3184:
.L2385:
.LBE12317:
.LBE12316:
.LBE12321:
.LBE12324:
	.loc 6 2114 0
	lwz 4,28(1)
	addi 3,31,8
	bl _ZN8idWinVar7SetNameEPKc.isra.34
	.loc 6 2115 0
	mr 4,1
	addi 3,29,624
	stwu 31,20(4)
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
	b .L2380
.LVL3185:
.L2406:
.LBB12325:
.LBB12277:
.LBB12272:
.LBB12267:
	.loc 3 59 0
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L2390
.LVL3186:
.L2404:
.LBE12267:
.LBE12272:
.LBE12277:
.LBE12325:
.LBB12326:
.LBB12322:
.LBB12318:
.LBB12314:
	lis 30,.LC4@ha
	la 30,.LC4@l(30)
	b .L2386
.LVL3187:
.L2421:
.LBE12314:
.LBE12318:
.LBE12322:
.LBE12326:
.LBB12327:
.LBB12278:
.LBB12273:
.LBB12268:
.LBB12257:
.LBB12258:
.LBB12259:
.LBB12260:
	.loc 10 241 0
	mr 3,28
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL3188:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L2407
.LVL3189:
.LBB12261:
	.loc 6 4264 0
	lwz 9,4(3)
	lfs 1,16(31)
	lwz 30,4(9)
.LVL3190:
	b .L2390
.LVL3191:
.L2422:
.LBE12261:
.LBE12260:
.LBE12259:
.LBE12258:
.LBE12257:
.LBE12268:
.LBE12273:
.LBE12278:
.LBE12327:
.LBB12328:
.LBB12323:
.LBB12319:
.LBB12315:
.LBB12308:
.LBB12309:
.LBB12310:
.LBB12311:
	.loc 10 241 0
	mr 3,28
	addi 4,30,1
	bl _ZNK6idDict7FindKeyEPKc
.LEHE180:
.LVL3192:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L2405
.LVL3193:
.LBB12312:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,16(31)
	lwz 30,4(9)
.LVL3194:
	b .L2386
.LVL3195:
.L2405:
.LBE12312:
	.loc 10 245 0
	lis 30,.LC4@ha
.LVL3196:
.LBB12313:
	.loc 6 4264 0
	lwz 4,16(31)
.LBE12313:
	.loc 10 245 0
	la 30,.LC4@l(30)
	b .L2386
.LVL3197:
.L2407:
.LBE12311:
.LBE12310:
.LBE12309:
.LBE12308:
.LBE12315:
.LBE12319:
.LBE12323:
.LBE12328:
.LBB12329:
.LBB12279:
.LBB12274:
.LBB12269:
.LBB12266:
.LBB12265:
.LBB12264:
.LBB12263:
	lis 30,.LC4@ha
.LVL3198:
.LBB12262:
	.loc 6 4264 0
	lfs 1,16(31)
.LBE12262:
	.loc 10 245 0
	la 30,.LC4@l(30)
	b .L2390
.LVL3199:
.L2409:
	mr 31,3
.L2395:
.LVL3200:
.LBE12263:
.LBE12264:
.LBE12265:
.LBE12266:
.LBE12269:
.LBE12274:
.LBE12279:
.LBE12329:
.LBB12330:
.LBB12331:
.LBB12332:
.LBB12333:
.LBB12334:
	.loc 4 501 0
	addi 3,1,56
	bl _ZN5idStr8FreeDataEv
.LVL3201:
.L2401:
.LBE12334:
.LBE12333:
.LBE12332:
.LBE12331:
.LBE12330:
.LBB12335:
.LBB12336:
.LBB12337:
	addi 3,1,24
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB181:
	bl _Unwind_Resume
.LEHE181:
.LVL3202:
.L2408:
	mr 31,3
	b .L2401
.LVL3203:
.L2410:
.L2417:
	mr 30,3
.LBE12337:
.LBE12336:
.LBE12335:
	.loc 6 2122 0
	mr 3,31
	bl _ZN8idWinVardlEPv
	mr 31,30
	b .L2395
.LVL3204:
.L2413:
	b .L2417
.LVL3205:
.L2411:
	b .L2417
.LVL3206:
.L2412:
	b .L2417
.LBE12341:
	.cfi_endproc
.LFE2959:
	.section	.gcc_except_table
.LLSDA2959:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2959-.LLSDACSB2959
.LLSDACSB2959:
	.uleb128 .LEHB166-.LFB2959
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2408-.LFB2959
	.uleb128 0
	.uleb128 .LEHB167-.LFB2959
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L2409-.LFB2959
	.uleb128 0
	.uleb128 .LEHB168-.LFB2959
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L2408-.LFB2959
	.uleb128 0
	.uleb128 .LEHB169-.LFB2959
	.uleb128 .LEHE169-.LEHB169
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB170-.LFB2959
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L2408-.LFB2959
	.uleb128 0
	.uleb128 .LEHB171-.LFB2959
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB172-.LFB2959
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L2409-.LFB2959
	.uleb128 0
	.uleb128 .LEHB173-.LFB2959
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L2413-.LFB2959
	.uleb128 0
	.uleb128 .LEHB174-.LFB2959
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L2409-.LFB2959
	.uleb128 0
	.uleb128 .LEHB175-.LFB2959
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2411-.LFB2959
	.uleb128 0
	.uleb128 .LEHB176-.LFB2959
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L2409-.LFB2959
	.uleb128 0
	.uleb128 .LEHB177-.LFB2959
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L2412-.LFB2959
	.uleb128 0
	.uleb128 .LEHB178-.LFB2959
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L2409-.LFB2959
	.uleb128 0
	.uleb128 .LEHB179-.LFB2959
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2410-.LFB2959
	.uleb128 0
	.uleb128 .LEHB180-.LFB2959
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L2409-.LFB2959
	.uleb128 0
	.uleb128 .LEHB181-.LFB2959
	.uleb128 .LEHE181-.LEHB181
	.uleb128 0
	.uleb128 0
.LLSDACSE2959:
	.section	".text"
	.size	_ZN8idWindow13ParseRegEntryEPKcP8idParser, .-_ZN8idWindow13ParseRegEntryEPKcP8idParser
	.align 2
	.globl _ZN8idWindow20UpdateFromDictionaryER6idDict
	.type	_ZN8idWindow20UpdateFromDictionaryER6idDict, @function
_ZN8idWindow20UpdateFromDictionaryER6idDict:
.LFB3010:
	.loc 6 4228 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3010
.LVL3207:
	stwu 1,-160(1)
.LCFI457:
	.cfi_def_cfa_offset 160
	mflr 0
	stw 28,144(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_register 65, 0
	stw 0,164(1)
	stw 27,140(1)
	mr 27,4
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	stw 22,120(1)
	stw 23,124(1)
	stw 24,128(1)
	stw 25,132(1)
	stw 26,136(1)
	stw 29,148(1)
	stw 30,152(1)
	stw 31,156(1)
.LEHB182:
.LBB12365:
	.loc 6 4232 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	bl _ZN8idWindow11SetDefaultsEv
.LVL3208:
	.loc 6 4235 0
	addi 3,28,872
	bl _ZN14idRegisterList5ResetEv
.LVL3209:
.LBB12366:
.LBB12367:
	.loc 16 193 0
	lwz 3,844(28)
	cmpwi 7,3,0
	beq- 7,.L2424
	.loc 16 194 0
	bl _ZdaPv
.L2424:
.LBE12367:
.LBE12366:
.LBB12370:
.LBB12371:
	.loc 16 193 0
	lwz 3,828(28)
.LBE12371:
.LBE12370:
.LBB12374:
.LBB12368:
	.loc 16 197 0
	li 0,0
	stw 0,844(28)
.LBE12368:
.LBE12374:
.LBB12375:
.LBB12372:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE12372:
.LBE12375:
.LBB12376:
.LBB12369:
	.loc 16 198 0
	stw 0,832(28)
	.loc 16 199 0
	stw 0,836(28)
.LVL3210:
.LBE12369:
.LBE12376:
.LBB12377:
.LBB12373:
	.loc 16 193 0
	beq- 7,.L2425
	.loc 16 194 0
	bl _ZdaPv
.L2425:
	.loc 16 197 0
	li 0,0
	stw 0,828(28)
	.loc 16 198 0
	stw 0,816(28)
	.loc 16 199 0
	stw 0,820(28)
.LVL3211:
.LBE12373:
.LBE12377:
.LBB12378:
	.loc 6 4239 0
	lwz 0,0(27)
	cmpwi 7,0,0
	ble- 7,.L2426
	lis 26,.LC60@ha
.LBB12379:
	.loc 6 4249 0
	lis 24,.LC4@ha
.LBE12379:
	.loc 6 4239 0
	li 31,0
	la 26,.LC60@l(26)
.LBB12403:
	.loc 6 4249 0
	la 24,.LC4@l(24)
.LBB12380:
.LBB12381:
	.loc 4 536 0
	li 25,0
.LBE12381:
.LBE12380:
	.loc 6 4244 0
	addi 23,28,136
	b .L2431
.LVL3212:
.L2435:
	.loc 6 4264 0
	lwz 29,4(22)
.LVL3213:
.LBB12389:
.LBB12386:
.LBB12382:
.LBB12383:
	.loc 4 350 0
	lwz 0,144(28)
.LBE12383:
.LBE12382:
.LBE12386:
	.loc 6 4264 0
	lwz 30,0(29)
.LBB12387:
	.loc 4 534 0
	addi 4,30,1
.LVL3214:
.LBB12385:
.LBB12384:
	.loc 4 350 0
	cmpw 7,4,0
	ble+ 7,.L2428
	.loc 4 351 0
	mr 3,23
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL3215:
.L2428:
.LBE12384:
.LBE12385:
	.loc 4 535 0
	lwz 3,140(28)
	mr 5,30
	lwz 4,4(29)
.LBE12387:
.LBE12389:
.LBE12403:
	.loc 6 4239 0
	addi 31,31,1
.LVL3216:
.LBB12404:
.LBB12390:
.LBB12388:
	.loc 4 535 0
	bl memcpy
.LVL3217:
	.loc 4 536 0
	lwz 9,140(28)
	stbx 25,9,30
	.loc 4 537 0
	stw 30,136(28)
.LBE12388:
.LBE12390:
.LBE12404:
	.loc 6 4239 0
	lwz 0,0(27)
	cmpw 7,31,0
	bge- 7,.L2426
.LVL3218:
.L2431:
.LBB12405:
.LBB12391:
.LBB12392:
.LBB12393:
	.loc 16 573 0
	lwz 29,12(27)
	.loc 6 4228 0
	slwi 30,31,3
.LBE12393:
.LBE12392:
.LBE12391:
.LBB12396:
.LBB12397:
	.loc 4 690 0
	mr 4,26
	.loc 6 4264 0
	lwzx 9,29,30
.LBE12397:
.LBE12396:
.LBB12399:
.LBB12395:
.LBB12394:
	.loc 16 573 0
	add 22,29,30
.LVL3219:
.LBE12394:
.LBE12395:
.LBE12399:
.LBB12400:
.LBB12398:
	.loc 4 690 0
	lwz 3,4(9)
	bl _ZN5idStr4IcmpEPKcS1_
.LVL3220:
.LBE12398:
.LBE12400:
	.loc 6 4243 0
	cmpwi 7,3,0
	beq- 7,.L2435
	.loc 6 4264 0
	lwz 9,4(22)
	.loc 6 4249 0
	addi 3,1,8
	mr 6,24
	li 7,6156
	lwz 4,4(9)
	lwz 5,0(9)
	bl _ZN8idParserC1EPKciS1_i
.LEHE182:
.LVL3221:
	.loc 6 4250 0
	lwz 11,0(28)
.LBB12401:
	.loc 6 4264 0
	lwzx 9,29,30
.LBE12401:
	.loc 6 4250 0
	mr 3,28
	lwz 0,132(11)
	addi 5,1,8
	lwz 4,4(9)
	mtctr 0
.LEHB183:
	bctrl
.LVL3222:
	cmpwi 7,3,0
	bne- 7,.L2430
.LVL3223:
.LBB12402:
	.loc 6 4264 0
	lwzx 9,29,30
.LBE12402:
	.loc 6 4252 0
	mr 3,28
	addi 5,1,8
	lwz 4,4(9)
	bl _ZN8idWindow13ParseRegEntryEPKcP8idParser
.LEHE183:
.LVL3224:
.L2430:
	.loc 6 4256 0
	addi 3,1,8
.LBE12405:
	.loc 6 4239 0
	addi 31,31,1
.LVL3225:
.LEHB184:
.LBB12406:
	.loc 6 4256 0
	bl _ZN8idParserD1Ev
.LVL3226:
.LBE12406:
	.loc 6 4239 0
	lwz 0,0(27)
	cmpw 7,31,0
	blt+ 7,.L2431
.LVL3227:
.L2426:
.LBE12378:
	.loc 6 4258 0
	li 4,-1
	li 5,1
	mr 3,28
	bl _ZN8idWindow8EvalRegsEib
	.loc 6 4260 0
	mr 3,28
	bl _ZN8idWindow14SetupFromStateEv
	.loc 6 4261 0
	lwz 9,0(28)
	mr 3,28
	lwz 0,36(9)
	mtctr 0
	bctrl
.LEHE184:
.LBE12365:
	.loc 6 4264 0
	lwz 0,164(1)
	lwz 22,120(1)
	li 3,1
	mtlr 0
	lwz 23,124(1)
	lwz 24,128(1)
	lwz 25,132(1)
	lwz 26,136(1)
	lwz 27,140(1)
.LVL3228:
	lwz 28,144(1)
.LVL3229:
	lwz 29,148(1)
	lwz 30,152(1)
	lwz 31,156(1)
	addi 1,1,160
	.cfi_remember_state
.LCFI458:
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
	blr
.LVL3230:
.L2433:
.LCFI459:
	.cfi_restore_state
	mr 31,3
.LVL3231:
.LBB12409:
.LBB12408:
.LBB12407:
	.loc 6 4256 0
	addi 3,1,8
	bl _ZN8idParserD1Ev
	mr 3,31
.LEHB185:
	bl _Unwind_Resume
.LEHE185:
.LBE12407:
.LBE12408:
.LBE12409:
	.cfi_endproc
.LFE3010:
	.section	.gcc_except_table
.LLSDA3010:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3010-.LLSDACSB3010
.LLSDACSB3010:
	.uleb128 .LEHB182-.LFB3010
	.uleb128 .LEHE182-.LEHB182
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB183-.LFB3010
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L2433-.LFB3010
	.uleb128 0
	.uleb128 .LEHB184-.LFB3010
	.uleb128 .LEHE184-.LEHB184
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB185-.LFB3010
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
.LLSDACSE3010:
	.section	".text"
	.size	_ZN8idWindow20UpdateFromDictionaryER6idDict, .-_ZN8idWindow20UpdateFromDictionaryER6idDict
	.align 2
	.globl _ZN8idWindow15GetWinVarByNameEPKcbPP9drawWin_t
	.type	_ZN8idWindow15GetWinVarByNameEPKcbPP9drawWin_t, @function
_ZN8idWindow15GetWinVarByNameEPKcbPP9drawWin_t:
.LFB2955:
	.loc 6 1805 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2955
.LVL3232:
	mfcr 12
.LBB12497:
	.loc 6 1808 0
	cmpwi 3,6,0
.LBE12497:
	.loc 6 1805 0
	mflr 0
	stwu 1,-168(1)
.LCFI460:
	.cfi_def_cfa_offset 168
	.cfi_register 65, 0
	.cfi_register 70, 12
	stw 21,124(1)
	mr 21,5
	.cfi_offset 21, -44
	stw 23,132(1)
.LBB12624:
	.loc 6 1808 0
	mr 23,6
	.cfi_offset 23, -36
.LBE12624:
	.loc 6 1805 0
	stw 28,152(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 29,156(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,172(1)
	stw 22,128(1)
	stw 24,136(1)
	stw 25,140(1)
	stw 26,144(1)
	stw 27,148(1)
	stw 30,160(1)
	stw 31,164(1)
	stw 12,120(1)
.LBB12625:
	.loc 6 1808 0
	beq- 3,.L2437
	.cfi_offset 70, -48
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	.loc 6 1809 0
	li 0,0
	stw 0,0(6)
.L2437:
	.loc 6 1812 0
	lis 4,.LC82@ha
.LVL3233:
	mr 3,29
.LVL3234:
	la 4,.LC82@l(4)
	.loc 6 1806 0
	li 25,0
.LEHB186:
	.loc 6 1812 0
	bl _ZN5idStr4IcmpEPKcS1_
.LVL3235:
	cmpwi 7,3,0
	bne- 7,.L2438
	.loc 6 1813 0
	addi 25,28,212
.LVL3236:
.L2438:
	.loc 6 1815 0
	lis 4,.LC83@ha
	mr 3,29
	la 4,.LC83@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2439
	.loc 6 1816 0
	addi 25,28,540
.LVL3237:
.L2439:
	.loc 6 1818 0
	lis 4,.LC84@ha
	mr 3,29
	la 4,.LC84@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2440
	.loc 6 1819 0
	addi 25,28,228
.LVL3238:
.L2440:
	.loc 6 1821 0
	lis 4,.LC25@ha
	mr 3,29
	la 4,.LC25@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2441
	.loc 6 1822 0
	addi 25,28,260
.LVL3239:
.L2441:
	.loc 6 1824 0
	lis 4,.LC85@ha
	mr 3,29
	la 4,.LC85@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2442
	.loc 6 1825 0
	addi 25,28,292
.LVL3240:
.L2442:
	.loc 6 1827 0
	lis 4,.LC86@ha
	mr 3,29
	la 4,.LC86@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2443
	.loc 6 1828 0
	addi 25,28,324
.LVL3241:
.L2443:
	.loc 6 1830 0
	lis 4,.LC87@ha
	mr 3,29
	la 4,.LC87@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2444
	.loc 6 1831 0
	addi 25,28,356
.LVL3242:
.L2444:
	.loc 6 1833 0
	lis 4,.LC88@ha
	mr 3,29
	la 4,.LC88@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2445
	.loc 6 1834 0
	addi 25,28,388
.LVL3243:
.L2445:
	.loc 6 1836 0
	lis 4,.LC89@ha
	mr 3,29
	la 4,.LC89@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2446
	.loc 6 1837 0
	addi 25,28,420
.LVL3244:
.L2446:
	.loc 6 1839 0
	lis 4,.LC90@ha
	mr 3,29
	la 4,.LC90@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2447
	.loc 6 1840 0
	addi 25,28,452
.LVL3245:
.L2447:
	.loc 6 1842 0
	lis 4,.LC37@ha
	mr 3,29
	la 4,.LC37@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2448
	.loc 6 1843 0
	addi 25,28,472
.LVL3246:
.L2448:
	.loc 6 1845 0
	lis 4,.LC91@ha
	mr 3,29
	la 4,.LC91@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2449
	.loc 6 1846 0
	addi 25,28,244
.LVL3247:
.L2449:
	.loc 6 1848 0
	lis 4,.LC92@ha
	mr 3,29
	la 4,.LC92@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2450
	.loc 6 1849 0
	addi 25,28,492
.LVL3248:
.L2450:
	.loc 6 1851 0
	lis 4,.LC93@ha
	mr 3,29
	la 4,.LC93@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L2451
	.loc 6 1852 0
	addi 25,28,540
.LVL3249:
.L2451:
	.loc 6 1854 0
	lis 4,.LC94@ha
	mr 3,29
	la 4,.LC94@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
.LEHE186:
	cmpwi 7,3,0
	bne- 7,.L2452
	.loc 6 1855 0
	addi 25,28,916
.LVL3250:
.L2452:
.LBB12498:
.LBB12499:
	.loc 4 412 0
	cmpwi 7,29,0
.LBB12500:
.LBB12501:
	.loc 4 356 0
	li 0,0
	.loc 4 358 0
	addi 27,1,88
	.loc 4 357 0
	li 9,20
	.loc 4 356 0
	stw 0,76(1)
.LBE12501:
.LBE12500:
	.loc 4 358 0
	mr 3,27
.LBB12504:
.LBB12502:
	.loc 4 357 0
	stw 9,84(1)
.LBE12502:
.LBE12504:
	.loc 4 412 0
	li 31,0
.LBB12505:
.LBB12503:
	.loc 4 358 0
	stw 27,80(1)
	.loc 4 359 0
	stb 0,88(1)
.LBE12503:
.LBE12505:
	.loc 4 412 0
	beq- 7,.L2453
	.loc 4 413 0
	mr 3,29
	bl strlen
	.loc 4 414 0
	addi 4,3,1
	.loc 4 413 0
	mr 30,3
.LBB12506:
.LBB12507:
	.loc 4 350 0
	cmpwi 7,4,20
.LBE12507:
.LBE12506:
	.loc 4 413 0
	mr 31,3
.LVL3251:
.LBB12510:
.LBB12508:
	.loc 4 358 0
	mr 3,27
.LVL3252:
	.loc 4 350 0
	bgt- 7,.L2503
.LVL3253:
.L2454:
.LBE12508:
.LBE12510:
	.loc 4 415 0
	mr 4,29
	bl strcpy
	.loc 4 416 0
	stw 30,76(1)
	lwz 3,80(1)
.LVL3254:
.L2453:
.LBE12499:
.LBE12498:
.LBB12513:
.LBB12514:
	.loc 4 906 0
	lis 4,.LC95@ha
	li 5,1
	la 4,.LC95@l(4)
	li 6,0
	mr 7,31
.LEHB187:
	bl _ZN5idStr8FindTextEPKcS1_bii
.LBE12514:
.LBE12513:
	.loc 6 4264 0
	lwz 27,624(28)
	.loc 6 1859 0
	nor 3,3,3
	srwi 22,3,31
.LVL3255:
.LBB12515:
	.loc 6 1861 0
	cmpwi 7,27,0
	ble- 7,.L2455
	.loc 6 1862 0
	lis 26,.LC96@ha
	cmpwi 4,22,0
	.loc 6 1861 0
	li 31,0
.LVL3256:
	li 30,0
.LBB12516:
.LBB12517:
	.loc 3 59 0
	lis 24,.LC4@ha
.LBE12517:
.LBE12516:
	.loc 6 1862 0
	la 26,.LC96@l(26)
	b .L2463
.LVL3257:
.L2506:
.LBB12524:
.LBB12525:
	.loc 3 53 0 discriminator 1
	beq- 7,.L2488
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L2457
	lbz 0,0(4)
	cmpwi 7,0,42
	beq- 7,.L2504
.L2457:
.LBE12525:
.LBE12524:
	.loc 6 1862 0
	mr 3,26
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,3
.LVL3258:
.L2459:
	.loc 6 1862 0 is_stmt 0 discriminator 5
	mr 3,29
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L2505
	.loc 6 1861 0 is_stmt 1
	addi 30,30,1
.LVL3259:
	addi 31,31,4
	cmpw 7,30,27
	beq- 7,.L2455
.LVL3260:
.L2463:
	.loc 6 1862 0
	lwz 9,636(28)
	lwzx 9,9,31
	.loc 6 4264 0
	lwz 4,8(9)
	lwz 3,4(9)
.LBB12534:
.LBB12531:
	.loc 3 53 0
	cmpwi 7,4,0
.LBE12531:
.LBE12534:
	.loc 6 1862 0
	bne- 4,.L2506
.LVL3261:
.LBB12535:
.LBB12523:
	.loc 3 53 0 discriminator 2
	beq- 7,.L2490
	.loc 3 54 0
	cmpwi 7,3,0
	beq- 7,.L2459
	lbz 0,0(4)
	cmpwi 7,0,42
	bne+ 7,.L2459
.LVL3262:
.LBB12518:
.LBB12519:
.LBB12520:
.LBB12521:
	.loc 10 241 0
	addi 4,4,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL3263:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L2490
.LVL3264:
.LBB12522:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L2459
.LVL3265:
.L2490:
.LBE12522:
.LBE12521:
.LBE12520:
.LBE12519:
.LBE12518:
	.loc 3 59 0
	la 4,.LC4@l(24)
	b .L2459
.LVL3266:
.L2488:
.LBE12523:
.LBE12535:
.LBB12536:
.LBB12532:
	la 4,.LC4@l(24)
	b .L2457
.LVL3267:
.L2505:
.LBE12532:
.LBE12536:
	.loc 6 1863 0
	lwz 9,636(28)
	slwi 30,30,2
.LVL3268:
	lwzx 25,9,30
.LVL3269:
.L2455:
.LBE12515:
	.loc 6 1868 0
	cmpwi 7,25,0
	beq- 7,.L2464
	.loc 6 1869 0
	cmpwi 7,21,0
	bne- 7,.L2507
.L2465:
	.loc 6 1873 0
	beq- 3,.L2466
	.loc 6 1873 0 is_stmt 0 discriminator 1
	lwz 3,676(28)
	cmpwi 7,3,0
	beq- 7,.L2466
.LVL3270:
	.loc 6 1874 0 is_stmt 1
	lwz 4,140(28)
	bl _ZN8idWindow15FindChildByNameEPKc
.LEHE187:
	stw 3,0(23)
.LVL3271:
.L2466:
.LBB12538:
.LBB12539:
.LBB12540:
	.loc 4 501 0
	addi 3,1,76
.LEHB188:
	bl _ZN5idStr8FreeDataEv
.LEHE188:
.LBE12540:
.LBE12539:
.LBE12538:
.LBE12625:
	.loc 6 1905 0
	lwz 0,172(1)
	lwz 12,120(1)
	mr 3,25
	mtlr 0
	lwz 21,124(1)
	lwz 22,128(1)
.LVL3272:
	mtcrf 24,12
	lwz 23,132(1)
.LVL3273:
	lwz 24,136(1)
	lwz 25,140(1)
	lwz 26,144(1)
	lwz 27,148(1)
	lwz 28,152(1)
.LVL3274:
	lwz 29,156(1)
.LVL3275:
	lwz 30,160(1)
	lwz 31,164(1)
	addi 1,1,168
	.cfi_remember_state
.LCFI461:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL3276:
.L2504:
.LCFI462:
	.cfi_restore_state
.LBB12626:
.LBB12541:
.LBB12537:
.LBB12533:
.LBB12526:
.LBB12527:
.LBB12528:
.LBB12529:
	.loc 10 241 0
	addi 4,4,1
.LVL3277:
.LEHB189:
	bl _ZNK6idDict7FindKeyEPKc
.LVL3278:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L2488
.LVL3279:
.LBB12530:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L2457
.LVL3280:
.L2507:
.LBE12530:
.LBE12529:
.LBE12528:
.LBE12527:
.LBE12526:
.LBE12533:
.LBE12537:
.LBE12541:
	.loc 6 1869 0 discriminator 1
	lbz 0,0(29)
	cmpwi 7,0,36
	beq- 7,.L2465
	.loc 6 1870 0
	mr 3,28
	mr 4,29
	bl _ZN8idWindow15DisableRegisterEPKc
.LEHE189:
	b .L2465
.LVL3281:
.L2503:
.LBB12542:
.LBB12512:
.LBB12511:
.LBB12509:
	.loc 4 351 0
	addi 3,1,76
	li 5,1
.LEHB190:
	bl _ZN5idStr10ReAllocateEib
.LEHE190:
.LVL3282:
	lwz 3,80(1)
	b .L2454
.LVL3283:
.L2464:
.LBE12509:
.LBE12511:
.LBE12512:
.LBE12542:
	.loc 6 1880 0
	lwz 7,76(1)
.LBB12543:
	.loc 6 1881 0
	cmpwi 7,7,5
	ble- 7,.L2467
	.loc 6 1881 0 is_stmt 0 discriminator 1
	cmpwi 7,22,0
	bne- 7,.L2508
.L2467:
.LBB12544:
	.loc 6 1886 0 is_stmt 1
	cmpwi 7,21,0
	beq- 7,.L2466
.LVL3284:
.LBB12545:
.LBB12546:
.LBB12547:
	.loc 4 906 0
	lis 4,.LC97@ha
	lwz 3,80(1)
	la 4,.LC97@l(4)
	li 5,1
	li 6,0
.LEHB191:
	bl _ZN5idStr8FindTextEPKcS1_bii
.LVL3285:
.LBE12547:
.LBE12546:
.LBB12548:
	.loc 6 1888 0
	mr. 31,3
	ble- 0,.L2466
.LVL3286:
.LBB12549:
.LBB12550:
.LBB12551:
	.loc 4 926 0
	addi 3,1,44
.LVL3287:
	addi 4,1,76
	li 5,0
	mr 6,31
	bl _ZNK5idStr3MidEii
.LEHE191:
	.loc 6 1890 0
	lwz 30,76(1)
.LBE12551:
.LBE12550:
	subf 6,31,30
	addi 6,6,-2
.LVL3288:
.LBB12552:
.LBB12553:
	.loc 4 930 0
	cmpw 7,30,6
	ble- 7,.L2509
	.loc 4 933 0
	addi 31,1,12
.LVL3289:
	addi 4,1,76
	mr 3,31
	subf 5,6,30
.LEHB192:
	bl _ZNK5idStr3MidEii
.LEHE192:
.LVL3290:
.L2470:
.LBE12553:
.LBE12552:
	.loc 6 4264 0
	lwz 9,732(28)
	.loc 6 1891 0
	lwz 4,48(1)
	lwz 3,52(9)
.LEHB193:
	bl _ZN8idWindow15FindChildByNameEPKc
.LVL3291:
	.loc 6 1892 0
	mr. 9,3
	beq- 0,.L2473
	.loc 6 1893 0
	lwz 3,0(9)
.LVL3292:
	cmpwi 7,3,0
	beq- 7,.L2472
.LVL3293:
	.loc 6 1894 0
	lwz 9,0(3)
.LVL3294:
	li 5,0
	lwz 4,4(31)
	mr 6,23
	lwz 0,12(9)
	mtctr 0
	bctrl
.LEHE193:
.LVL3295:
.L2500:
	.loc 6 1899 0
	mr 25,3
.LVL3296:
.L2473:
.LBB12570:
.LBB12571:
.LBB12572:
	.loc 4 501 0
	mr 3,31
.LEHB194:
	bl _ZN5idStr8FreeDataEv
.LEHE194:
.LVL3297:
.LBE12572:
.LBE12571:
.LBE12570:
.LBB12573:
.LBB12574:
.LBB12575:
	addi 3,1,44
.LVL3298:
.LEHB195:
	bl _ZN5idStr8FreeDataEv
.LEHE195:
.LVL3299:
	b .L2466
.LVL3300:
.L2509:
.LBE12575:
.LBE12574:
.LBE12573:
.LBB12576:
.LBB12568:
.LBB12554:
.LBB12555:
	.loc 4 374 0
	addi 4,30,1
.LBB12556:
.LBB12557:
	.loc 4 356 0
	li 0,0
.LBE12557:
.LBE12556:
.LBB12559:
.LBB12560:
	.loc 4 350 0
	cmpwi 7,4,20
.LBE12560:
.LBE12559:
.LBB12563:
.LBB12558:
	.loc 4 358 0
	addi 3,1,24
	.loc 4 357 0
	li 9,20
	.loc 4 356 0
	stw 0,12(1)
	.loc 4 357 0
	stw 9,20(1)
	.loc 4 358 0
	addi 31,1,12
.LVL3301:
	stw 3,16(1)
	.loc 4 359 0
	stb 0,24(1)
.LVL3302:
.LBE12558:
.LBE12563:
.LBB12564:
.LBB12561:
	.loc 4 350 0
	bgt- 7,.L2510
.LVL3303:
.L2469:
.LBE12561:
.LBE12564:
	.loc 4 375 0
	lwz 4,80(1)
	bl strcpy
	.loc 4 376 0
	stw 30,12(1)
	b .L2470
.LVL3304:
.L2472:
.LBE12555:
.LBE12554:
.LBE12568:
.LBE12576:
	.loc 6 1896 0
	beq- 3,.L2474
	.loc 6 1897 0
	stw 9,0(23)
.L2474:
.LVL3305:
	.loc 6 1899 0
	lwz 3,4(9)
	lwz 4,4(31)
.LEHB196:
	bl _ZN14idSimpleWindow15GetWinVarByNameEPKc
.LEHE196:
.LVL3306:
	b .L2500
.LVL3307:
.L2508:
.LBE12549:
.LBE12548:
.LBE12545:
.LBE12544:
.LBB12590:
	.loc 6 1882 0
	li 3,48
.LEHB197:
	bl _ZN8idWinVarnwEj
.LEHE197:
	mr 31,3
.LVL3308:
.LEHB198:
.LBB12591:
.LBB12592:
	.loc 3 162 0
	bl _ZN8idWinVarC2Ev
.LEHE198:
.LVL3309:
	lis 9,_ZTV8idWinStr+8@ha
.LBB12593:
.LBB12594:
.LBB12595:
	.loc 4 357 0
	li 11,20
.LBE12595:
.LBE12594:
.LBE12593:
	.loc 3 162 0
	la 0,_ZTV8idWinStr+8@l(9)
.LBB12606:
.LBB12601:
.LBB12596:
	.loc 4 358 0
	addi 9,31,28
.LBE12596:
.LBE12601:
.LBE12606:
	.loc 3 162 0
	stw 0,0(31)
.LVL3310:
.LBB12607:
.LBB12602:
.LBB12597:
	.loc 4 356 0
	li 0,0
.LBE12597:
.LBE12602:
.LBE12607:
.LBE12592:
.LBE12591:
	.loc 6 1882 0
	stw 31,8(1)
	.loc 6 1883 0
	mr 3,31
.LBB12614:
.LBB12611:
.LBB12608:
.LBB12603:
.LBB12598:
	.loc 4 358 0
	stw 9,20(31)
.LBE12598:
.LBE12603:
.LBE12608:
.LBE12611:
.LBE12614:
	.loc 6 1883 0
	mr 4,29
.LBB12615:
.LBB12612:
.LBB12609:
.LBB12604:
.LBB12599:
	.loc 4 356 0
	stw 0,16(31)
.LBE12599:
.LBE12604:
.LBE12609:
.LBE12612:
.LBE12615:
	.loc 6 1883 0
	mr 5,28
.LBB12616:
.LBB12613:
.LBB12610:
.LBB12605:
.LBB12600:
	.loc 4 357 0
	stw 11,24(31)
	.loc 4 359 0
	stb 0,28(31)
.LBE12600:
.LBE12605:
.LBE12610:
.LBE12613:
.LBE12616:
	.loc 6 1883 0
	lwz 9,0(31)
	lwz 0,8(9)
	mtctr 0
.LEHB199:
	bctrl
	.loc 6 1884 0
	addi 3,28,624
	addi 4,1,8
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
.LEHE199:
	.loc 6 1885 0
	lwz 25,8(1)
.LVL3311:
	b .L2466
.LVL3312:
.L2510:
.LBE12590:
.LBB12617:
.LBB12588:
.LBB12586:
.LBB12584:
.LBB12577:
.LBB12569:
.LBB12567:
.LBB12566:
.LBB12565:
.LBB12562:
	.loc 4 351 0
	mr 3,31
	li 5,1
.LEHB200:
	bl _ZN5idStr10ReAllocateEib
.LEHE200:
.LVL3313:
	lwz 3,16(1)
	b .L2469
.LVL3314:
.L2495:
	mr 31,3
.L2482:
.LVL3315:
.LBE12562:
.LBE12565:
.LBE12566:
.LBE12567:
.LBE12569:
.LBE12577:
.LBB12578:
.LBB12579:
.LBB12580:
	.loc 4 501 0
	addi 3,1,44
.LVL3316:
	bl _ZN5idStr8FreeDataEv
.LVL3317:
.L2479:
.LBE12580:
.LBE12579:
.LBE12578:
.LBE12584:
.LBE12586:
.LBE12588:
.LBE12617:
.LBE12543:
.LBB12620:
.LBB12621:
.LBB12622:
	addi 3,1,76
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB201:
	bl _Unwind_Resume
.LEHE201:
.LVL3318:
.L2493:
	mr 31,3
	b .L2479
.LVL3319:
.L2496:
	mr 30,3
.LVL3320:
.LBE12622:
.LBE12621:
.LBE12620:
.LBB12623:
.LBB12618:
.LBB12589:
.LBB12587:
.LBB12585:
.LBB12581:
.LBB12582:
.LBB12583:
	mr 3,31
	bl _ZN5idStr8FreeDataEv
	mr 31,30
.LVL3321:
	b .L2482
.LVL3322:
.L2494:
	mr 30,3
.LBE12583:
.LBE12582:
.LBE12581:
.LBE12585:
.LBE12587:
.LBE12589:
.LBE12618:
.LBB12619:
	.loc 6 1882 0
	mr 3,31
	bl _ZN8idWinVardlEPv
	mr 31,30
.LVL3323:
	b .L2479
.LBE12619:
.LBE12623:
.LBE12626:
	.cfi_endproc
.LFE2955:
	.section	.gcc_except_table
.LLSDA2955:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2955-.LLSDACSB2955
.LLSDACSB2955:
	.uleb128 .LEHB186-.LFB2955
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB187-.LFB2955
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L2493-.LFB2955
	.uleb128 0
	.uleb128 .LEHB188-.LFB2955
	.uleb128 .LEHE188-.LEHB188
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB189-.LFB2955
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L2493-.LFB2955
	.uleb128 0
	.uleb128 .LEHB190-.LFB2955
	.uleb128 .LEHE190-.LEHB190
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB191-.LFB2955
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L2493-.LFB2955
	.uleb128 0
	.uleb128 .LEHB192-.LFB2955
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L2495-.LFB2955
	.uleb128 0
	.uleb128 .LEHB193-.LFB2955
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L2496-.LFB2955
	.uleb128 0
	.uleb128 .LEHB194-.LFB2955
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L2495-.LFB2955
	.uleb128 0
	.uleb128 .LEHB195-.LFB2955
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L2493-.LFB2955
	.uleb128 0
	.uleb128 .LEHB196-.LFB2955
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L2496-.LFB2955
	.uleb128 0
	.uleb128 .LEHB197-.LFB2955
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L2493-.LFB2955
	.uleb128 0
	.uleb128 .LEHB198-.LFB2955
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L2494-.LFB2955
	.uleb128 0
	.uleb128 .LEHB199-.LFB2955
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L2493-.LFB2955
	.uleb128 0
	.uleb128 .LEHB200-.LFB2955
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L2495-.LFB2955
	.uleb128 0
	.uleb128 .LEHB201-.LFB2955
	.uleb128 .LEHE201-.LEHB201
	.uleb128 0
	.uleb128 0
.LLSDACSE2955:
	.section	".text"
	.size	_ZN8idWindow15GetWinVarByNameEPKcbPP9drawWin_t, .-_ZN8idWindow15GetWinVarByNameEPKcbPP9drawWin_t
	.align 2
	.globl _ZN8idWindow12AddUpdateVarEP8idWinVar
	.type	_ZN8idWindow12AddUpdateVarEP8idWinVar, @function
_ZN8idWindow12AddUpdateVarEP8idWinVar:
.LFB2913:
	.loc 6 600 0
	.cfi_startproc
.LVL3324:
	mflr 0
	stwu 1,-24(1)
.LCFI463:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
.LVL3325:
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB12636:
	.loc 6 4264 0
	lwz 0,640(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL3326:
.LBB12637:
.LBB12638:
.LBB12639:
	.loc 16 773 0
	lwz 8,652(3)
	.loc 16 772 0
	cmpwi 7,0,0
	ble- 7,.L2513
	.loc 16 773 0
	lwz 9,0(8)
	cmpw 7,9,4
	beq- 7,.L2511
	mr 11,8
	.loc 16 772 0
	li 9,0
	mtctr 0
	b .L2515
.LVL3327:
.L2517:
	.loc 16 773 0
	lwzu 10,4(11)
	cmpw 7,10,31
	beq- 7,.L2516
.LVL3328:
.L2515:
	.loc 16 772 0
	addi 9,9,1
.LVL3329:
	bdnz .L2517
.LVL3330:
.L2513:
.LBE12639:
.LBE12638:
.LBB12640:
.LBB12641:
	.loc 16 655 0
	cmpwi 7,8,0
.LBE12641:
.LBE12640:
.LBE12637:
.LBE12636:
	.loc 6 601 0
	addi 29,30,640
.LVL3331:
.LBB12652:
.LBB12649:
.LBB12647:
.LBB12645:
	.loc 16 655 0
	beq- 7,.L2522
.LVL3332:
.L2518:
.LBB12642:
	.loc 16 659 0
	lwz 9,644(30)
	cmpw 7,9,0
	beq- 7,.L2523
.L2519:
.LBE12642:
	.loc 16 669 0
	lwz 9,652(30)
	slwi 0,0,2
	stwx 31,9,0
	.loc 16 670 0
	lwz 9,640(30)
	addi 0,9,1
	stw 0,640(30)
.LVL3333:
.L2511:
.LBE12645:
.LBE12647:
.LBE12649:
.LBE12652:
	.loc 6 602 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL3334:
	lwz 31,20(1)
.LVL3335:
	addi 1,1,24
	.cfi_remember_state
.LCFI464:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL3336:
.L2516:
.LCFI465:
	.cfi_restore_state
.LBB12653:
.LBB12650:
	.loc 16 754 0
	cmpwi 7,9,0
	blt- 7,.L2513
.LBE12650:
.LBE12653:
	.loc 6 602 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI466:
	.cfi_def_cfa_offset 0
	blr
.LVL3337:
.L2523:
.LCFI467:
	.cfi_restore_state
.LBB12654:
.LBB12651:
.LBB12648:
.LBB12646:
.LBB12644:
.LBB12643:
	.loc 16 662 0
	lwz 0,648(30)
	cmpwi 7,0,0
	bne- 7,.L2520
	.loc 16 663 0
	li 0,16
	stw 0,648(30)
.L2520:
	.loc 16 665 0
	add 9,9,0
.LVL3338:
	.loc 16 666 0
	mr 3,29
	divw 4,9,0
	mullw 4,4,0
	bl _ZN6idListIP8idWinVarE6ResizeEi
.LVL3339:
	lwz 0,640(30)
	b .L2519
.L2522:
.LBE12643:
.LBE12644:
	.loc 16 656 0
	lwz 4,648(30)
	mr 3,29
	bl _ZN6idListIP8idWinVarE6ResizeEi
	lwz 0,640(30)
	b .L2518
.LBE12646:
.LBE12648:
.LBE12651:
.LBE12654:
	.cfi_endproc
.LFE2913:
	.size	_ZN8idWindow12AddUpdateVarEP8idWinVar, .-_ZN8idWindow12AddUpdateVarEP8idWinVar
	.section	.text._ZN6idListI9drawWin_tE6ResizeEi,"axG",@progbits,_ZN6idListI9drawWin_tE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListI9drawWin_tE6ResizeEi
	.type	_ZN6idListI9drawWin_tE6ResizeEi, @function
_ZN6idListI9drawWin_tE6ResizeEi:
.LFB3351:
	.loc 16 368 0
	.cfi_startproc
.LVL3340:
.LBB12659:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE12659:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI468:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB12662:
	.loc 16 375 0
	ble- 0,.L2531
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L2524
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL3341:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L2532
.L2528:
	.loc 16 392 0
	slwi 3,4,3
.LVL3342:
	bl _Znaj
.LVL3343:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3344:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2529
	.loc 16 368 0
	addi 8,30,-8
.LBE12662:
	.loc 16 393 0
	li 9,0
	b .L2530
.LVL3345:
.L2533:
.LBB12663:
	lwz 3,12(31)
.LVL3346:
.L2530:
	.loc 16 394 0 discriminator 2
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 16 393 0 discriminator 2
	addi 9,9,1
.LVL3347:
	.loc 16 394 0 discriminator 2
	stw 10,0(3)
	stw 11,4(3)
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L2533
.LVL3348:
.L2529:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2524
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL3349:
.L2524:
.LBE12663:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3350:
	addi 1,1,16
	.cfi_remember_state
.LCFI469:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3351:
.L2532:
.LCFI470:
	.cfi_restore_state
.LBB12664:
	.loc 16 388 0
	stw 4,0(3)
	b .L2528
.LVL3352:
.L2531:
.LBB12660:
.LBB12661:
	.loc 16 193 0
	lwz 3,12(3)
.LVL3353:
	cmpwi 7,3,0
	beq- 7,.L2526
	.loc 16 194 0
	bl _ZdaPv
.LVL3354:
.L2526:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2524
.LBE12661:
.LBE12660:
.LBE12664:
	.cfi_endproc
.LFE3351:
	.size	_ZN6idListI9drawWin_tE6ResizeEi, .-_ZN6idListI9drawWin_tE6ResizeEi
	.section	.text._ZN6idListI9drawWin_tE6AppendERKS0_,"axG",@progbits,_ZN6idListI9drawWin_tE6AppendERKS0_,comdat
	.align 2
	.weak	_ZN6idListI9drawWin_tE6AppendERKS0_
	.type	_ZN6idListI9drawWin_tE6AppendERKS0_, @function
_ZN6idListI9drawWin_tE6AppendERKS0_:
.LFB3286:
	.loc 16 654 0
	.cfi_startproc
.LVL3355:
	mflr 0
	stwu 1,-24(1)
.LCFI471:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 30,16(1)
.LBB12676:
	.loc 16 655 0
	lwz 30,12(3)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmpwi 7,30,0
	beq- 7,.L2547
.LVL3356:
.L2535:
.LBB12677:
	.loc 16 659 0
	lwz 0,0(31)
	lwz 9,4(31)
	cmpw 7,0,9
	beq- 7,.L2536
.L2546:
.LBB12678:
.LBB12679:
.LBB12680:
	.loc 16 399 0
	slwi 0,0,3
	add 30,30,0
.L2537:
.LBE12680:
.LBE12679:
.LBE12678:
.LBE12677:
	.loc 16 669 0
	lwz 10,0(29)
	lwz 11,4(29)
	stw 10,0(30)
	stw 11,4(30)
	.loc 16 670 0
	lwz 3,0(31)
	addi 0,3,1
	stw 0,0(31)
.LBE12676:
	.loc 16 673 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL3357:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL3358:
	addi 1,1,24
	.cfi_remember_state
.LCFI472:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL3359:
.L2536:
.LCFI473:
	.cfi_restore_state
.LBB12695:
.LBB12693:
.LBB12691:
	.loc 16 662 0
	lwz 11,8(31)
	cmpwi 7,11,0
	beq- 7,.L2548
.L2538:
	.loc 16 665 0
	add 10,9,11
.LVL3360:
	.loc 16 666 0
	divw 10,10,11
.LVL3361:
.LBB12687:
.LBB12683:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3362:
	ble- 0,.L2549
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2546
.LVL3363:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,4(31)
	.loc 16 387 0
	bgt- 7,.L2550
.L2542:
	.loc 16 392 0
	slwi 3,11,3
	bl _Znaj
.LVL3364:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3365:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2543
	.loc 16 654 0
	addi 8,30,-8
.LBE12683:
.LBE12687:
	.loc 16 393 0
	li 9,0
	b .L2544
.LVL3366:
.L2551:
.LBB12688:
.LBB12684:
	lwz 3,12(31)
.LVL3367:
.L2544:
	.loc 16 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 16 393 0
	addi 9,9,1
.LVL3368:
	.loc 16 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 16 393 0
	lwz 0,0(31)
	cmpw 7,9,0
	blt+ 7,.L2551
.LVL3369:
.L2543:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2552
	.loc 16 399 0
	mr 3,30
	bl _ZdaPv
	lwz 0,0(31)
	lwz 30,12(31)
.LVL3370:
	b .L2546
.LVL3371:
.L2548:
.LBE12684:
.LBE12688:
	.loc 16 663 0
	li 11,16
	stw 11,8(31)
	b .L2538
.LVL3372:
.L2550:
.LBB12689:
.LBB12685:
	.loc 16 388 0
	stw 11,0(31)
	b .L2542
.LVL3373:
.L2547:
.LBE12685:
.LBE12689:
.LBE12691:
.LBE12693:
	.loc 16 656 0
	lwz 4,8(3)
	bl _ZN6idListI9drawWin_tE6ResizeEi
	lwz 30,12(31)
	b .L2535
.LVL3374:
.L2549:
.LBB12694:
.LBB12692:
.LBB12690:
.LBB12686:
.LBB12681:
.LBB12682:
	.loc 16 193 0
	cmpwi 7,30,0
	beq- 7,.L2540
	.loc 16 194 0
	mr 3,30
	bl _ZdaPv
.LVL3375:
.L2540:
	.loc 16 197 0
	li 0,0
	.loc 16 199 0
	li 30,0
	.loc 16 197 0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2537
.LVL3376:
.L2552:
.LBE12682:
.LBE12681:
	.loc 16 398 0
	lwz 30,12(31)
.LVL3377:
	slwi 0,0,3
	add 30,30,0
	b .L2537
.LBE12686:
.LBE12690:
.LBE12692:
.LBE12694:
.LBE12695:
	.cfi_endproc
.LFE3286:
	.size	_ZN6idListI9drawWin_tE6AppendERKS0_, .-_ZN6idListI9drawWin_tE6AppendERKS0_
	.section	.text._ZN6idListIP12rvNamedEventE6ResizeEi,"axG",@progbits,_ZN6idListIP12rvNamedEventE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListIP12rvNamedEventE6ResizeEi
	.type	_ZN6idListIP12rvNamedEventE6ResizeEi, @function
_ZN6idListIP12rvNamedEventE6ResizeEi:
.LFB3352:
	.loc 16 368 0
	.cfi_startproc
.LVL3378:
.LBB12699:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE12699:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI474:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB12702:
	.loc 16 375 0
	ble- 0,.L2560
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L2553
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL3379:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L2561
.L2557:
	.loc 16 392 0
	slwi 3,4,2
.LVL3380:
	bl _Znaj
.LVL3381:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3382:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2558
	.loc 16 368 0
	addi 11,30,-4
.LBE12702:
	.loc 16 393 0
	li 9,0
	b .L2559
.LVL3383:
.L2562:
.LBB12703:
	lwz 3,12(31)
.LVL3384:
.L2559:
	.loc 16 394 0 discriminator 2
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0 discriminator 2
	addi 9,9,1
.LVL3385:
	.loc 16 394 0 discriminator 2
	stwx 10,3,0
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L2562
.LVL3386:
.L2558:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2553
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL3387:
.L2553:
.LBE12703:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3388:
	addi 1,1,16
	.cfi_remember_state
.LCFI475:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3389:
.L2561:
.LCFI476:
	.cfi_restore_state
.LBB12704:
	.loc 16 388 0
	stw 4,0(3)
	b .L2557
.LVL3390:
.L2560:
.LBB12700:
.LBB12701:
	.loc 16 193 0
	lwz 3,12(3)
.LVL3391:
	cmpwi 7,3,0
	beq- 7,.L2555
	.loc 16 194 0
	bl _ZdaPv
.LVL3392:
.L2555:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2553
.LBE12701:
.LBE12700:
.LBE12704:
	.cfi_endproc
.LFE3352:
	.size	_ZN6idListIP12rvNamedEventE6ResizeEi, .-_ZN6idListIP12rvNamedEventE6ResizeEi
	.section	.text._ZN6idListIP15idTimeLineEventE6ResizeEi,"axG",@progbits,_ZN6idListIP15idTimeLineEventE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListIP15idTimeLineEventE6ResizeEi
	.type	_ZN6idListIP15idTimeLineEventE6ResizeEi, @function
_ZN6idListIP15idTimeLineEventE6ResizeEi:
.LFB3353:
	.loc 16 368 0
	.cfi_startproc
.LVL3393:
.LBB12708:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE12708:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI477:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB12711:
	.loc 16 375 0
	ble- 0,.L2570
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L2563
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL3394:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L2571
.L2567:
	.loc 16 392 0
	slwi 3,4,2
.LVL3395:
	bl _Znaj
.LVL3396:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3397:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2568
	.loc 16 368 0
	addi 11,30,-4
.LBE12711:
	.loc 16 393 0
	li 9,0
	b .L2569
.LVL3398:
.L2572:
.LBB12712:
	lwz 3,12(31)
.LVL3399:
.L2569:
	.loc 16 394 0 discriminator 2
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0 discriminator 2
	addi 9,9,1
.LVL3400:
	.loc 16 394 0 discriminator 2
	stwx 10,3,0
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L2572
.LVL3401:
.L2568:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2563
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL3402:
.L2563:
.LBE12712:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3403:
	addi 1,1,16
	.cfi_remember_state
.LCFI478:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3404:
.L2571:
.LCFI479:
	.cfi_restore_state
.LBB12713:
	.loc 16 388 0
	stw 4,0(3)
	b .L2567
.LVL3405:
.L2570:
.LBB12709:
.LBB12710:
	.loc 16 193 0
	lwz 3,12(3)
.LVL3406:
	cmpwi 7,3,0
	beq- 7,.L2565
	.loc 16 194 0
	bl _ZdaPv
.LVL3407:
.L2565:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2563
.LBE12710:
.LBE12709:
.LBE12713:
	.cfi_endproc
.LFE3353:
	.size	_ZN6idListIP15idTimeLineEventE6ResizeEi, .-_ZN6idListIP15idTimeLineEventE6ResizeEi
	.section	.text._ZN6idListIfE6ResizeEi,"axG",@progbits,_ZN6idListIfE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListIfE6ResizeEi
	.type	_ZN6idListIfE6ResizeEi, @function
_ZN6idListIfE6ResizeEi:
.LFB3358:
	.loc 16 368 0
	.cfi_startproc
.LVL3408:
.LBB12718:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE12718:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI480:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB12721:
	.loc 16 375 0
	ble- 0,.L2580
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L2573
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL3409:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L2581
.L2577:
	.loc 16 392 0
	slwi 3,4,2
.LVL3410:
	bl _Znaj
.LVL3411:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3412:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2578
	.loc 16 368 0
	addi 11,30,-4
.LBE12721:
	.loc 16 393 0
	li 9,0
	b .L2579
.LVL3413:
.L2582:
.LBB12722:
	lwz 3,12(31)
.LVL3414:
.L2579:
	.loc 16 394 0 discriminator 2
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0 discriminator 2
	addi 9,9,1
.LVL3415:
	.loc 16 394 0 discriminator 2
	stwx 10,3,0
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L2582
.LVL3416:
.L2578:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2573
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL3417:
.L2573:
.LBE12722:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3418:
	addi 1,1,16
	.cfi_remember_state
.LCFI481:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3419:
.L2581:
.LCFI482:
	.cfi_restore_state
.LBB12723:
	.loc 16 388 0
	stw 4,0(3)
	b .L2577
.LVL3420:
.L2580:
.LBB12719:
.LBB12720:
	.loc 16 193 0
	lwz 3,12(3)
.LVL3421:
	cmpwi 7,3,0
	beq- 7,.L2575
	.loc 16 194 0
	bl _ZdaPv
.LVL3422:
.L2575:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2573
.LBE12720:
.LBE12719:
.LBE12723:
	.cfi_endproc
.LFE3358:
	.size	_ZN6idListIfE6ResizeEi, .-_ZN6idListIfE6ResizeEi
	.section	".text"
	.align 2
	.globl _ZN8idWindow18ExpressionConstantEf
	.type	_ZN8idWindow18ExpressionConstantEf, @function
_ZN8idWindow18ExpressionConstantEf:
.LFB2974:
	.loc 6 2736 0
	.cfi_startproc
.LVL3423:
	mflr 0
	stwu 1,-48(1)
.LCFI483:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stfd 31,40(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,52(1)
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB12749:
	.loc 6 4264 0
	lwz 28,832(3)
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 65, 4
	.loc 6 2739 0
	cmpwi 7,28,1
	ble- 7,.L2584
	lis 29,.LANCHOR0@ha
	addi 28,28,-1
	la 29,.LANCHOR0@l(29)
	mtctr 28
	li 3,1
.LVL3424:
	addi 11,29,16700
.LVL3425:
.L2611:
	.loc 6 2740 0
	lbzx 0,11,3
	slwi 9,3,2
	cmpwi 7,0,0
	bne- 7,.L2585
.LVL3426:
	.loc 6 2740 0 is_stmt 0 discriminator 1
	lwz 10,844(31)
	lfsx 0,10,9
	fcmpu 7,0,31
	bne- 7,.L2585
.LVL3427:
.L2586:
.LBE12749:
	.loc 6 2760 0 is_stmt 1
	lwz 0,52(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL3428:
	lfd 31,40(1)
.LVL3429:
	addi 1,1,48
	.cfi_remember_state
.LCFI484:
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
	blr
.LVL3430:
.L2585:
.LCFI485:
	.cfi_restore_state
.LBB12798:
	.loc 6 2739 0
	addi 3,3,1
.LVL3431:
	bdnz .L2611
	.loc 6 2744 0
	cmpwi 7,3,2048
	addi 30,31,832
	beq- 7,.L2621
.LVL3432:
.L2587:
.LBB12750:
.LBB12751:
	.loc 16 655 0
	lwz 28,844(31)
	cmpwi 7,28,0
	beq- 7,.L2622
.L2600:
.LBB12752:
	.loc 16 659 0
	lwz 0,832(31)
	lwz 9,836(31)
	cmpw 7,0,9
	beq- 7,.L2601
.L2620:
.LBB12753:
.LBB12754:
.LBB12755:
	.loc 16 399 0
	slwi 0,0,2
	add 28,28,0
.L2602:
.LBE12755:
.LBE12754:
.LBE12753:
.LBE12752:
	.loc 16 669 0
	stfs 31,0(28)
	.loc 16 670 0
	lwz 3,832(31)
	addi 0,3,1
.LBE12751:
.LBE12750:
	.loc 6 2758 0
	add 29,29,3
.LBB12771:
.LBB12768:
	.loc 16 670 0
	stw 0,832(31)
.LBE12768:
.LBE12771:
	.loc 6 2758 0
	li 0,0
	stb 0,16700(29)
.LBE12798:
	.loc 6 2760 0
	lwz 0,52(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL3433:
	lwz 31,36(1)
.LVL3434:
	lfd 31,40(1)
.LVL3435:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI486:
	.cfi_def_cfa_offset 0
	blr
.LVL3436:
.L2601:
.LCFI487:
	.cfi_restore_state
.LBB12799:
.LBB12772:
.LBB12769:
.LBB12766:
.LBB12764:
	.loc 16 662 0
	lwz 11,840(31)
	cmpwi 7,11,0
	bne- 7,.L2603
	.loc 16 663 0
	li 11,16
	stw 11,840(31)
.L2603:
	.loc 16 665 0
	add 10,9,11
.LVL3437:
	.loc 16 666 0
	divw 10,10,11
.LVL3438:
.LBB12761:
.LBB12758:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3439:
	ble- 0,.L2623
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2620
.LVL3440:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,836(31)
	.loc 16 387 0
	ble- 7,.L2607
	.loc 16 388 0
	stw 11,832(31)
.L2607:
	.loc 16 392 0
	slwi 3,11,2
	bl _Znaj
.LVL3441:
	.loc 16 393 0
	lwz 0,832(31)
	.loc 16 392 0
	stw 3,844(31)
.LVL3442:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2608
	.loc 6 2736 0
	addi 11,28,-4
.LBE12758:
.LBE12761:
	.loc 16 393 0
	li 9,0
	b .L2609
.LVL3443:
.L2624:
.LBB12762:
.LBB12759:
	lwz 3,844(31)
.LVL3444:
.L2609:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL3445:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L2624
.LVL3446:
.L2608:
	.loc 16 398 0
	cmpwi 7,28,0
	beq- 7,.L2625
	.loc 16 399 0
	mr 3,28
	bl _ZdaPv
	lwz 0,832(31)
	lwz 28,844(31)
.LVL3447:
	b .L2620
.LVL3448:
.L2621:
.LBE12759:
.LBE12762:
.LBE12764:
.LBE12766:
.LBE12769:
.LBE12772:
	.loc 6 2745 0
	lis 9,common@ha
	lis 4,.LC98@ha
	lwz 3,common@l(9)
.LVL3449:
	la 4,.LC98@l(4)
.LBB12773:
.LBB12774:
	.loc 6 4264 0
	lwz 9,732(31)
.LBE12774:
.LBE12773:
	.loc 6 2745 0
	lwz 11,0(3)
	lwz 5,64(9)
	lwz 0,80(11)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL3450:
	.loc 6 2746 0
	li 3,0
	b .L2586
.LVL3451:
.L2584:
	.loc 6 2750 0
	cmpwi 7,28,0
	bgt- 7,.L2626
	lis 27,.LC99@ha
	.loc 6 2739 0
	li 29,1
	addi 30,3,832
	la 27,.LC99@l(27)
.LBB12775:
.LBB12776:
.LBB12777:
.LBB12778:
	.loc 16 393 0
	li 25,0
	.loc 16 663 0
	li 26,16
	b .L2599
.LVL3452:
.L2619:
.LBB12779:
.LBB12780:
	.loc 16 399 0
	slwi 0,0,2
	add 24,24,0
.L2590:
.LBE12780:
.LBE12779:
.LBE12778:
.LBE12777:
	.loc 16 669 0
	lwz 9,0(27)
.LBE12776:
.LBE12775:
	.loc 6 2753 0
	addi 29,29,-1
.LVL3453:
	.loc 6 2751 0
	cmpw 7,29,28
.LBB12795:
.LBB12793:
	.loc 16 669 0
	stw 9,0(24)
	.loc 16 670 0
	lwz 9,832(31)
	addi 0,9,1
	stw 0,832(31)
.LBE12793:
.LBE12795:
	.loc 6 2751 0
	beq- 7,.L2627
.LVL3454:
.L2599:
.LBB12796:
.LBB12794:
	.loc 16 655 0
	lwz 24,844(31)
	cmpwi 7,24,0
	beq- 7,.L2628
.L2588:
.LBB12791:
	.loc 16 659 0
	lwz 0,832(31)
	lwz 9,836(31)
	cmpw 7,0,9
	bne+ 7,.L2619
.LBB12789:
	.loc 16 662 0
	lwz 11,840(31)
	cmpwi 7,11,0
	bne- 7,.L2591
	.loc 16 663 0
	stw 26,840(31)
	li 11,16
.L2591:
	.loc 16 665 0
	add 10,9,11
.LVL3455:
	.loc 16 666 0
	divw 10,10,11
.LVL3456:
.LBB12786:
.LBB12783:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3457:
	ble- 0,.L2629
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2619
.LVL3458:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,836(31)
	.loc 16 387 0
	ble- 7,.L2595
	.loc 16 388 0
	stw 11,832(31)
.L2595:
	.loc 16 392 0
	slwi 3,11,2
	bl _Znaj
.LVL3459:
	.loc 16 393 0
	lwz 0,832(31)
	.loc 16 392 0
	stw 3,844(31)
.LVL3460:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2596
	.loc 6 2736 0
	addi 11,24,-4
.LBE12783:
.LBE12786:
	.loc 16 393 0
	li 9,0
	b .L2597
.LVL3461:
.L2630:
.LBB12787:
.LBB12784:
	lwz 3,844(31)
.LVL3462:
.L2597:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL3463:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L2630
.LVL3464:
.L2596:
	.loc 16 398 0
	cmpwi 7,24,0
	beq- 7,.L2631
	.loc 16 399 0
	mr 3,24
	bl _ZdaPv
	lwz 0,832(31)
	lwz 24,844(31)
.LVL3465:
	b .L2619
.LVL3466:
.L2627:
	lis 29,.LANCHOR0@ha
.LVL3467:
	la 29,.LANCHOR0@l(29)
	b .L2587
.L2628:
.LBE12784:
.LBE12787:
.LBE12789:
.LBE12791:
	.loc 16 656 0
	lwz 4,840(31)
	mr 3,30
	bl _ZN6idListIfE6ResizeEi
	lwz 24,844(31)
	b .L2588
.LVL3468:
.L2629:
.LBB12792:
.LBB12790:
.LBB12788:
.LBB12785:
.LBB12781:
.LBB12782:
	.loc 16 193 0
	cmpwi 7,24,0
	beq- 7,.L2593
	.loc 16 194 0
	mr 3,24
	bl _ZdaPv
.LVL3469:
.L2593:
	.loc 16 197 0
	stw 25,844(31)
	.loc 16 199 0
	li 24,0
	.loc 16 198 0
	stw 25,832(31)
	.loc 16 199 0
	stw 25,836(31)
	b .L2590
.LVL3470:
.L2631:
.LBE12782:
.LBE12781:
	.loc 16 398 0
	lwz 0,832(31)
	lwz 24,844(31)
.LVL3471:
	slwi 0,0,2
	add 24,24,0
	b .L2590
.LVL3472:
.L2622:
.LBE12785:
.LBE12788:
.LBE12790:
.LBE12792:
.LBE12794:
.LBE12796:
.LBB12797:
.LBB12770:
	.loc 16 656 0
	lwz 4,840(31)
	mr 3,30
	bl _ZN6idListIfE6ResizeEi
	lwz 28,844(31)
	b .L2600
.LVL3473:
.L2623:
.LBB12767:
.LBB12765:
.LBB12763:
.LBB12760:
.LBB12756:
.LBB12757:
	.loc 16 193 0
	cmpwi 7,28,0
	beq- 7,.L2605
	.loc 16 194 0
	mr 3,28
	bl _ZdaPv
.LVL3474:
.L2605:
	.loc 16 197 0
	li 0,0
	.loc 16 199 0
	li 28,0
	.loc 16 197 0
	stw 0,844(31)
	.loc 16 198 0
	stw 0,832(31)
	.loc 16 199 0
	stw 0,836(31)
	b .L2602
.LVL3475:
.L2625:
.LBE12757:
.LBE12756:
	.loc 16 398 0
	lwz 0,832(31)
	lwz 28,844(31)
.LVL3476:
	slwi 0,0,2
	add 28,28,0
	b .L2602
.LVL3477:
.L2626:
	lis 29,.LANCHOR0@ha
	addi 30,3,832
	la 29,.LANCHOR0@l(29)
	b .L2587
.LBE12760:
.LBE12763:
.LBE12765:
.LBE12767:
.LBE12770:
.LBE12797:
.LBE12799:
	.cfi_endproc
.LFE2974:
	.size	_ZN8idWindow18ExpressionConstantEf, .-_ZN8idWindow18ExpressionConstantEf
	.align 2
	.globl _ZN8idWindow19ExpressionTemporaryEv
	.type	_ZN8idWindow19ExpressionTemporaryEv, @function
_ZN8idWindow19ExpressionTemporaryEv:
.LFB2975:
	.loc 6 2767 0
	.cfi_startproc
.LVL3478:
	mflr 0
	stwu 1,-24(1)
.LCFI488:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB12813:
	.loc 6 4264 0
	lwz 0,832(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 6 2768 0
	cmpwi 7,0,2048
	beq- 7,.L2647
	.loc 6 2773 0
	lis 9,.LANCHOR0@ha
	.loc 6 2774 0
	addi 30,3,832
.LVL3479:
	.loc 6 2773 0
	la 9,.LANCHOR0@l(9)
	add 9,9,0
	li 0,1
	stb 0,16700(9)
.LBB12814:
.LBB12815:
	.loc 16 655 0
	lwz 29,844(3)
	cmpwi 7,29,0
	beq- 7,.L2648
.LVL3480:
.L2635:
.LBB12816:
	.loc 16 659 0
	lwz 0,832(31)
	lwz 9,836(31)
	cmpw 7,0,9
	beq- 7,.L2636
.L2646:
.LBB12817:
.LBB12818:
.LBB12819:
	.loc 16 399 0
	slwi 0,0,2
	add 29,29,0
.L2637:
.LBE12819:
.LBE12818:
.LBE12817:
.LBE12816:
	.loc 16 669 0
	li 9,0
	stw 9,0(29)
	.loc 16 670 0
	lwz 3,832(31)
	addi 0,3,1
	stw 0,832(31)
.LBE12815:
.LBE12814:
.LBE12813:
	.loc 6 2776 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL3481:
	addi 1,1,24
	.cfi_remember_state
.LCFI489:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL3482:
.L2636:
.LCFI490:
	.cfi_restore_state
.LBB12840:
.LBB12836:
.LBB12834:
.LBB12832:
.LBB12830:
	.loc 16 662 0
	lwz 11,840(31)
	cmpwi 7,11,0
	beq- 7,.L2649
.L2638:
	.loc 16 665 0
	add 10,9,11
.LVL3483:
	.loc 16 666 0
	divw 10,10,11
.LVL3484:
.LBB12826:
.LBB12822:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3485:
	ble- 0,.L2650
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2646
.LVL3486:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,836(31)
	.loc 16 387 0
	bgt- 7,.L2651
.L2642:
	.loc 16 392 0
	slwi 3,11,2
	bl _Znaj
.LVL3487:
	.loc 16 393 0
	lwz 0,832(31)
	.loc 16 392 0
	stw 3,844(31)
.LVL3488:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2643
	.loc 6 2767 0
	addi 11,29,-4
.LBE12822:
.LBE12826:
	.loc 16 393 0
	li 9,0
	b .L2644
.LVL3489:
.L2652:
.LBB12827:
.LBB12823:
	lwz 3,844(31)
.LVL3490:
.L2644:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL3491:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L2652
.LVL3492:
.L2643:
	.loc 16 398 0
	cmpwi 7,29,0
	beq- 7,.L2653
	.loc 16 399 0
	mr 3,29
	bl _ZdaPv
	lwz 0,832(31)
	lwz 29,844(31)
.LVL3493:
	b .L2646
.LVL3494:
.L2649:
.LBE12823:
.LBE12827:
	.loc 16 663 0
	li 11,16
	stw 11,840(31)
	b .L2638
.LVL3495:
.L2651:
.LBB12828:
.LBB12824:
	.loc 16 388 0
	stw 11,832(31)
	b .L2642
.LVL3496:
.L2647:
.LBE12824:
.LBE12828:
.LBE12830:
.LBE12832:
.LBE12834:
.LBE12836:
	.loc 6 2769 0
	lis 9,common@ha
	lis 4,.LC100@ha
	lwz 3,common@l(9)
.LVL3497:
	la 4,.LC100@l(4)
.LBB12837:
.LBB12838:
	.loc 6 4264 0
	lwz 9,732(31)
.LBE12838:
.LBE12837:
	.loc 6 2769 0
	lwz 11,0(3)
	lwz 5,64(9)
	lwz 0,80(11)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL3498:
.LBE12840:
	.loc 6 2776 0
	lwz 0,28(1)
	lwz 29,12(1)
.LBB12841:
	.loc 6 2770 0
	li 3,0
.LBE12841:
	.loc 6 2776 0
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL3499:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI491:
	.cfi_def_cfa_offset 0
	blr
.LVL3500:
.L2648:
.LCFI492:
	.cfi_restore_state
.LBB12842:
.LBB12839:
.LBB12835:
	.loc 16 656 0
	lwz 4,840(3)
	mr 3,30
.LVL3501:
	bl _ZN6idListIfE6ResizeEi
	lwz 29,844(31)
	b .L2635
.LVL3502:
.L2653:
.LBB12833:
.LBB12831:
.LBB12829:
.LBB12825:
	.loc 16 398 0
	lwz 0,832(31)
	lwz 29,844(31)
.LVL3503:
	slwi 0,0,2
	add 29,29,0
	b .L2637
.LVL3504:
.L2650:
.LBB12820:
.LBB12821:
	.loc 16 193 0
	cmpwi 7,29,0
	beq- 7,.L2640
	.loc 16 194 0
	mr 3,29
	bl _ZdaPv
.LVL3505:
.L2640:
	.loc 16 197 0
	li 0,0
	.loc 16 199 0
	li 29,0
	.loc 16 197 0
	stw 0,844(31)
	.loc 16 198 0
	stw 0,832(31)
	.loc 16 199 0
	stw 0,836(31)
	b .L2637
.LBE12821:
.LBE12820:
.LBE12825:
.LBE12829:
.LBE12831:
.LBE12833:
.LBE12835:
.LBE12839:
.LBE12842:
	.cfi_endproc
.LFE2975:
	.size	_ZN8idWindow19ExpressionTemporaryEv, .-_ZN8idWindow19ExpressionTemporaryEv
	.section	.text._ZN6idListI8wexpOp_tE6ResizeEi,"axG",@progbits,_ZN6idListI8wexpOp_tE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListI8wexpOp_tE6ResizeEi
	.type	_ZN6idListI8wexpOp_tE6ResizeEi, @function
_ZN6idListI8wexpOp_tE6ResizeEi:
.LFB3359:
	.loc 16 368 0
	.cfi_startproc
.LVL3506:
.LBB12846:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE12846:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI493:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB12849:
	.loc 16 375 0
	ble- 0,.L2661
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L2654
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL3507:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L2662
.L2658:
	.loc 16 392 0
	mulli 3,4,20
.LVL3508:
	bl _Znaj
.LVL3509:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3510:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2659
	li 10,0
	li 8,0
	b .L2660
.LVL3511:
.L2663:
	lwz 3,12(31)
.LVL3512:
.L2660:
	.loc 16 394 0 discriminator 2
	mr 9,30
	add 11,3,10
	lwzux 5,9,10
	.loc 16 393 0 discriminator 2
	addi 8,8,1
.LVL3513:
	.loc 16 394 0 discriminator 2
	lwz 0,12(9)
	lwz 6,4(9)
	lwz 7,8(9)
	stwx 5,3,10
	.loc 16 393 0 discriminator 2
	addi 10,10,20
	.loc 16 394 0 discriminator 2
	stw 6,4(11)
	stw 7,8(11)
	stw 0,12(11)
	lwz 0,16(9)
	stw 0,16(11)
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,8
	bgt+ 7,.L2663
.LVL3514:
.L2659:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2654
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL3515:
.L2654:
.LBE12849:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3516:
	addi 1,1,16
	.cfi_remember_state
.LCFI494:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3517:
.L2662:
.LCFI495:
	.cfi_restore_state
.LBB12850:
	.loc 16 388 0
	stw 4,0(3)
	b .L2658
.LVL3518:
.L2661:
.LBB12847:
.LBB12848:
	.loc 16 193 0
	lwz 3,12(3)
.LVL3519:
	cmpwi 7,3,0
	beq- 7,.L2656
	.loc 16 194 0
	bl _ZdaPv
.LVL3520:
.L2656:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2654
.LBE12848:
.LBE12847:
.LBE12850:
	.cfi_endproc
.LFE3359:
	.size	_ZN6idListI8wexpOp_tE6ResizeEi, .-_ZN6idListI8wexpOp_tE6ResizeEi
	.section	".text"
	.align 2
	.globl _ZN8idWindow12ExpressionOpEv
	.type	_ZN8idWindow12ExpressionOpEv, @function
_ZN8idWindow12ExpressionOpEv:
.LFB2976:
	.loc 6 2783 0
	.cfi_startproc
.LVL3521:
	mflr 0
	stwu 1,-48(1)
.LCFI496:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 30,40(1)
.LBB12851:
.LBB12852:
.LBB12853:
.LBB12854:
.LBB12855:
	.loc 6 4264 0
	lwz 9,816(3)
.LBE12855:
.LBE12854:
.LBE12853:
.LBE12852:
	.loc 6 2784 0
	cmpwi 7,9,2048
	beq- 7,.L2670
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB12866:
.LBB12859:
	.loc 16 655 0
	lwz 11,828(3)
.LBE12859:
.LBE12866:
	.loc 6 2789 0
	li 0,0
	stw 0,8(1)
	.loc 6 2790 0
	addi 30,3,816
.LVL3522:
.LBB12867:
.LBB12860:
	.loc 16 655 0
	cmpwi 7,11,0
.LBE12860:
.LBE12867:
	.loc 6 2789 0
	stw 0,12(1)
	stw 0,16(1)
	stw 0,20(1)
	stw 0,24(1)
.LBB12868:
.LBB12861:
	.loc 16 655 0
	beq- 7,.L2671
.LVL3523:
.L2667:
.LBB12857:
	.loc 16 659 0
	lwz 4,820(31)
	cmpw 7,4,9
	beq- 7,.L2672
.L2668:
.LBE12857:
	.loc 16 669 0
	lwz 11,828(31)
	mulli 0,9,20
	lwz 10,8(1)
	add 9,11,0
	stwx 10,11,0
	lwz 0,12(1)
	stw 0,4(9)
	lwz 0,16(1)
	stw 0,8(9)
	lwz 0,20(1)
	stw 0,12(9)
	lwz 0,24(1)
	stw 0,16(9)
	.loc 16 670 0
	lwz 9,816(31)
.LBE12861:
.LBE12868:
.LBB12869:
.LBB12870:
	.loc 16 589 0
	lwz 3,828(31)
.LBE12870:
.LBE12869:
.LBB12873:
.LBB12862:
	.loc 16 670 0
	addi 0,9,1
.LBE12862:
.LBE12873:
.LBB12874:
.LBB12871:
	.loc 16 589 0
	mulli 9,9,20
.LBE12871:
.LBE12874:
.LBB12875:
.LBB12863:
	.loc 16 670 0
	stw 0,816(31)
.LVL3524:
.LBE12863:
.LBE12875:
.LBB12876:
.LBB12872:
	.loc 16 589 0
	add 3,3,9
.LBE12872:
.LBE12876:
.LBE12851:
	.loc 6 2792 0
	lwz 0,52(1)
	lwz 30,40(1)
	mtlr 0
	lwz 31,44(1)
.LVL3525:
	addi 1,1,48
	.cfi_remember_state
.LCFI497:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3526:
.L2672:
.LCFI498:
	.cfi_restore_state
.LBB12881:
.LBB12877:
.LBB12864:
.LBB12858:
.LBB12856:
	.loc 16 662 0
	lwz 0,824(31)
	cmpwi 7,0,0
	bne- 7,.L2669
	.loc 16 663 0
	li 0,16
	stw 0,824(31)
.L2669:
	.loc 16 665 0
	add 4,4,0
.LVL3527:
	.loc 16 666 0
	mr 3,30
	divw 4,4,0
.LVL3528:
	mullw 4,4,0
	bl _ZN6idListI8wexpOp_tE6ResizeEi
	lwz 9,816(31)
	b .L2668
.LVL3529:
.L2670:
.LBE12856:
.LBE12858:
.LBE12864:
.LBE12877:
	.loc 6 2785 0
	lis 9,common@ha
	lis 4,.LC101@ha
	lwz 3,common@l(9)
.LVL3530:
	la 4,.LC101@l(4)
.LBB12878:
.LBB12879:
	.loc 6 4264 0
	lwz 9,732(31)
.LBE12879:
.LBE12878:
	.loc 6 2785 0
	lwz 11,0(3)
	lwz 5,64(9)
	lwz 0,80(11)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL3531:
.LBE12881:
	.loc 6 2792 0
	lwz 0,52(1)
.LBB12882:
	.loc 6 4264 0
	lwz 3,828(31)
.LVL3532:
.LBE12882:
	.loc 6 2792 0
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
.LVL3533:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI499:
	.cfi_def_cfa_offset 0
	blr
.LVL3534:
.L2671:
.LCFI500:
	.cfi_restore_state
.LBB12883:
.LBB12880:
.LBB12865:
	.loc 16 656 0
	lwz 4,824(3)
	mr 3,30
.LVL3535:
	bl _ZN6idListI8wexpOp_tE6ResizeEi
	lwz 9,816(31)
	b .L2667
.LBE12865:
.LBE12880:
.LBE12883:
	.cfi_endproc
.LFE2976:
	.size	_ZN8idWindow12ExpressionOpEv, .-_ZN8idWindow12ExpressionOpEv
	.align 2
	.globl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
	.type	_ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t, @function
_ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t:
.LFB2977:
	.loc 6 2800 0
	.cfi_startproc
.LVL3536:
	mflr 0
	stwu 1,-32(1)
.LCFI501:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 26,8(1)
	mr 26,7
	.cfi_offset 26, -24
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	mr 28,6
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	stw 29,20(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,28(1)
	.loc 6 2800 0
	mr 31,3
	.cfi_offset 31, -4
.LBB12884:
	.loc 6 2833 0
	bl _ZN8idWindow12ExpressionOpEv
.LVL3537:
	.loc 6 2835 0
	stw 28,0(3)
	.loc 6 2833 0
	mr 27,3
.LVL3538:
	.loc 6 2836 0
	stw 30,4(3)
	.loc 6 2837 0
	stw 29,8(3)
	.loc 6 2838 0
	mr 3,31
.LVL3539:
	bl _ZN8idWindow19ExpressionTemporaryEv
	.loc 6 2840 0
	cmpwi 7,26,0
	.loc 6 2838 0
	stw 3,12(27)
	.loc 6 2840 0
	beq- 7,.L2674
	.loc 6 2841 0
	stw 27,0(26)
	lwz 3,12(27)
.L2674:
.LBE12884:
	.loc 6 2844 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL3540:
	mtlr 0
	lwz 27,12(1)
.LVL3541:
	lwz 28,16(1)
.LVL3542:
	lwz 29,20(1)
.LVL3543:
	lwz 30,24(1)
.LVL3544:
	lwz 31,28(1)
.LVL3545:
	addi 1,1,32
.LCFI502:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE2977:
	.size	_ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t, .-_ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
	.align 2
	.globl _ZN8idWindow9ParseTermEP8idParserP8idWinVari
	.type	_ZN8idWindow9ParseTermEP8idParserP8idWinVari, @function
_ZN8idWindow9ParseTermEP8idParserP8idWinVari:
.LFB2979:
	.loc 6 2864 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2979
.LVL3546:
	mflr 0
	stwu 1,-112(1)
.LCFI503:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
.LVL3547:
.LBB12927:
.LBB12928:
.LBB12929:
.LBB12930:
.LBB12931:
	.loc 4 357 0
	li 9,20
.LBE12931:
.LBE12930:
.LBE12929:
.LBE12928:
.LBE12927:
	.loc 6 2864 0
	stw 29,100(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,116(1)
.LBB13018:
	.loc 6 2868 0
	mr 3,4
.LVL3548:
.LBB12944:
.LBB12940:
.LBB12936:
.LBB12932:
	.loc 4 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE12932:
.LBE12936:
.LBE12940:
.LBE12944:
.LBE13018:
	.loc 6 2864 0
	stw 31,108(1)
.LBB13019:
.LBB12945:
.LBB12941:
.LBB12937:
.LBB12933:
	.loc 4 357 0
	stw 9,16(1)
.LBE12933:
.LBE12937:
.LBE12941:
.LBE12945:
.LBE13019:
	.loc 6 2864 0
	mr 31,4
	.cfi_offset 31, -4
.LBB13020:
.LBB12946:
.LBB12942:
.LBB12938:
.LBB12934:
	.loc 4 358 0
	addi 9,1,20
.LBE12934:
.LBE12938:
.LBE12942:
.LBE12946:
	.loc 6 2868 0
	addi 4,1,8
.LVL3549:
.LBE13020:
	.loc 6 2864 0
	stw 27,92(1)
	mr 27,6
	.cfi_offset 27, -20
	stw 28,96(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 30,104(1)
.LBB13021:
.LBB12947:
.LBB12943:
.LBB12939:
.LBB12935:
	.loc 4 356 0
	stw 0,8(1)
	.loc 4 358 0
	stw 9,12(1)
	.loc 4 359 0
	stb 0,20(1)
.LEHB202:
.LBE12935:
.LBE12939:
.LBE12943:
.LBE12947:
	.loc 6 2868 0
	.cfi_offset 30, -8
	bl _ZN8idParser9ReadTokenEP7idToken
.LVL3550:
.LBB12948:
.LBB12949:
	.loc 4 653 0
	lis 4,.LC103@ha
	lwz 3,12(1)
	la 4,.LC103@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE12949:
.LBE12948:
	.loc 6 2870 0
	cmpwi 7,3,0
	bne- 7,.L2676
	.loc 6 2871 0
	mr 3,29
	mr 4,31
	li 5,0
	li 6,0
	bl _ZN8idWindow15ParseExpressionEP8idParserP8idWinVari
	.loc 6 2872 0
	lis 4,.LC104@ha
	.loc 6 2871 0
	mr 30,3
.LVL3551:
	.loc 6 2872 0
	la 4,.LC104@l(4)
	mr 3,31
.LVL3552:
	bl _ZN8idParser17ExpectTokenStringEPKc
.LEHE202:
.LVL3553:
.L2677:
.LBB12950:
.LBB12951:
.LBB12952:
.LBB12953:
.LBB12954:
	.loc 4 501 0
	addi 3,1,8
.LEHB203:
	bl _ZN5idStr8FreeDataEv
.LEHE203:
.LBE12954:
.LBE12953:
.LBE12952:
.LBE12951:
.LBE12950:
.LBE13021:
	.loc 6 2944 0
	lwz 0,116(1)
	mr 3,30
	lwz 27,92(1)
.LVL3554:
	mtlr 0
	lwz 28,96(1)
.LVL3555:
	lwz 29,100(1)
.LVL3556:
	lwz 30,104(1)
	lwz 31,108(1)
.LVL3557:
	addi 1,1,112
	.cfi_remember_state
.LCFI504:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL3558:
.L2676:
.LCFI505:
	.cfi_restore_state
.LBB13022:
.LBB12959:
.LBB12960:
	.loc 4 690 0
	lis 4,.LC105@ha
	lwz 3,12(1)
	la 4,.LC105@l(4)
.LEHB204:
	bl _ZN5idStr4IcmpEPKcS1_
.LBE12960:
.LBE12959:
	.loc 6 2876 0
	cmpwi 7,3,0
	.loc 6 2877 0
	li 30,0
	.loc 6 2876 0
	beq+ 7,.L2677
.LVL3559:
.LBB12961:
.LBB12962:
	.loc 4 653 0
	lis 30,.LC106@ha
	lwz 3,12(1)
	la 30,.LC106@l(30)
	mr 4,30
	bl _ZN5idStr3CmpEPKcS1_
.LBE12962:
.LBE12961:
	.loc 6 2881 0
	cmpwi 7,3,0
	beq- 7,.L2715
	.loc 6 2890 0
	lwz 0,40(1)
	cmpwi 7,0,3
	bne- 7,.L2716
.L2683:
.LBB12963:
.LBB12964:
.LBB12965:
.LBB12966:
	.file 24 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/Token.h"
	.loc 24 134 0
	lwz 0,44(1)
	andis. 9,0,1
	beq- 0,.L2717
	.loc 24 137 0
	lfd 1,64(1)
	b .L2686
.L2716:
.LVL3560:
.LBE12966:
.LBE12965:
.LBE12964:
.LBE12963:
.LBB12973:
.LBB12974:
	.loc 4 653 0 discriminator 2
	lis 4,.LC107@ha
	lwz 3,12(1)
	la 4,.LC107@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE12974:
.LBE12973:
	.loc 6 2890 0 discriminator 2
	cmpwi 7,3,0
	bne- 7,.L2718
.L2684:
.LVL3561:
.LBB12975:
.LBB12971:
.LBB12969:
.LBB12967:
	.loc 24 131 0 discriminator 5
	lwz 0,40(1)
	.loc 24 132 0 discriminator 5
	lis 9,.LC102@ha
	lfd 1,.LC102@l(9)
	.loc 24 131 0 discriminator 5
	cmpwi 7,0,3
	beq- 7,.L2683
.LVL3562:
.L2686:
.LBE12967:
.LBE12969:
.LBE12971:
.LBE12975:
	.loc 6 2891 0
	frsp 1,1
	mr 3,29
	bl _ZN8idWindow18ExpressionConstantEf
.LEHE204:
.LBB12976:
.LBB12977:
	.loc 6 2941 0 discriminator 1
	mr 30,3
.LVL3563:
.L2720:
.LBE12977:
.LBE12976:
.LBB12986:
.LBB12958:
.LBB12957:
.LBB12956:
.LBB12955:
	.loc 4 501 0
	addi 3,1,8
.LEHB205:
	bl _ZN5idStr8FreeDataEv
.LEHE205:
.LBE12955:
.LBE12956:
.LBE12957:
.LBE12958:
.LBE12986:
.LBE13022:
	.loc 6 2944 0
	lwz 0,116(1)
	mr 3,30
	lwz 27,92(1)
.LVL3564:
	mtlr 0
	lwz 28,96(1)
	lwz 29,100(1)
.LVL3565:
	lwz 30,104(1)
	lwz 31,108(1)
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI506:
	.cfi_def_cfa_offset 0
	blr
.LVL3566:
.L2718:
.LCFI507:
	.cfi_restore_state
.LBB13023:
.LBB12987:
.LBB12988:
	.loc 4 653 0 discriminator 3
	lwz 3,12(1)
	mr 4,30
.LEHB206:
	bl _ZN5idStr3CmpEPKcS1_
.LBE12988:
.LBE12987:
	.loc 6 2890 0 discriminator 3
	cmpwi 7,3,0
	beq- 7,.L2684
	.loc 6 2895 0
	lis 9,declManager@ha
	li 4,0
	lwz 3,declManager@l(9)
	li 6,0
	lwz 5,12(1)
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL3567:
	.loc 6 2896 0
	cmpwi 0,3,0
	beq- 0,.L2719
	.loc 6 4264 0
	lwz 3,4(3)
.LVL3568:
.LBB12989:
.LBB12990:
	.file 25 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/DeclManager.h"
	.loc 25 165 0
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
.LBE12990:
.LBE12989:
	.loc 6 2899 0
	lis 4,.LC108@ha
.LBB12992:
.LBB12991:
	.loc 25 165 0
	mr 28,3
.LVL3569:
.LBE12991:
.LBE12992:
	.loc 6 2899 0
	la 4,.LC108@l(4)
	mr 3,31
.LVL3570:
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 2900 0
	mr 3,29
	mr 4,31
	li 5,0
	li 6,0
	bl _ZN8idWindow15ParseExpressionEP8idParserP8idWinVari
	.loc 6 2901 0
	lis 4,.LC109@ha
	.loc 6 2900 0
	mr 30,3
.LVL3571:
	.loc 6 2901 0
	la 4,.LC109@l(4)
	mr 3,31
.LVL3572:
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 2902 0
	mr 3,29
	mr 4,28
	mr 5,30
	li 6,5
	li 7,0
	bl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
.LBB12993:
.LBB12978:
	.loc 6 2941 0
	mr 30,3
.LVL3573:
	b .L2720
.LVL3574:
.L2717:
.LBE12978:
.LBE12993:
.LBB12994:
.LBB12972:
.LBB12970:
.LBB12968:
	.loc 24 135 0
	addi 3,1,8
	bl _ZN7idToken11NumberValueEv
	.loc 24 137 0
	lfd 1,64(1)
	b .L2686
.L2715:
.LBE12968:
.LBE12970:
.LBE12972:
.LBE12994:
	.loc 6 2882 0
	mr 3,31
	addi 4,1,8
	bl _ZN8idParser9ReadTokenEP7idToken
	.loc 6 2883 0
	lwz 0,40(1)
	cmpwi 7,0,3
	bne- 7,.L2721
.L2679:
.LBB12995:
.LBB12996:
.LBB12997:
.LBB12998:
	.loc 24 134 0
	lwz 0,44(1)
	andis. 9,0,1
	beq- 0,.L2722
.L2682:
	.loc 24 137 0
	lfd 1,64(1)
.L2681:
.LBE12998:
.LBE12997:
	.loc 24 141 0
	frsp 1,1
.LBE12996:
.LBE12995:
	.loc 6 2884 0
	mr 3,29
	fneg 1,1
	bl _ZN8idWindow18ExpressionConstantEf
.LBB13005:
.LBB12979:
	.loc 6 2941 0
	mr 30,3
	b .L2720
.L2722:
.LBE12979:
.LBE13005:
.LBB13006:
.LBB13003:
.LBB13001:
.LBB12999:
	.loc 24 135 0
	addi 3,1,8
	bl _ZN7idToken11NumberValueEv
	b .L2682
.L2721:
.LVL3575:
.LBE12999:
.LBE13001:
.LBE13003:
.LBE13006:
.LBB13007:
.LBB13008:
	.loc 4 653 0 discriminator 2
	lis 4,.LC107@ha
	lwz 3,12(1)
	la 4,.LC107@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13008:
.LBE13007:
	.loc 6 2883 0 discriminator 2
	cmpwi 7,3,0
	bne- 7,.L2680
.LVL3576:
.LBB13009:
.LBB13004:
.LBB13002:
.LBB13000:
	.loc 24 131 0 discriminator 4
	lwz 0,40(1)
	.loc 24 132 0 discriminator 4
	lis 9,.LC102@ha
	lfd 1,.LC102@l(9)
	.loc 24 131 0 discriminator 4
	cmpwi 7,0,3
	bne+ 7,.L2681
	b .L2679
.LVL3577:
.L2719:
.LBE13000:
.LBE13002:
.LBE13004:
.LBE13009:
	.loc 6 2905 0
	cmpwi 7,28,0
	beq- 7,.L2723
.LVL3578:
.L2689:
.LBB13010:
	.loc 6 2911 0
	lwz 9,0(28)
	mr 3,28
	lwz 4,12(1)
	mr 5,29
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL3579:
	.loc 6 2913 0 discriminator 1
	lis 30,_ZTI8idWinVar@ha
	lis 5,_ZTI9idWinVec4@ha
	la 30,_ZTI8idWinVar@l(30)
	mr 3,28
	mr 4,30
	la 5,_ZTI9idWinVec4@l(5)
	li 6,0
	bl __dynamic_cast
	cmpwi 7,3,0
	beq- 7,.L2691
	.loc 6 2914 0 discriminator 3
	mr 3,31
	addi 4,1,8
	bl _ZN8idParser9ReadTokenEP7idToken
	cmpwi 7,3,0
	.loc 6 2912 0 discriminator 3
	mr 30,27
	.loc 6 2914 0 discriminator 3
	beq- 7,.L2692
	.loc 6 2915 0
	lis 4,.LC108@ha
	lwz 3,12(1)
	la 4,.LC108@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2693
	.loc 6 2916 0
	mr 3,29
	mr 4,31
	li 5,0
	li 6,0
	bl _ZN8idWindow15ParseExpressionEP8idParserP8idWinVari
	.loc 6 2917 0
	lis 4,.LC109@ha
	.loc 6 2916 0
	mr 30,3
.LVL3580:
	.loc 6 2917 0
	la 4,.LC109@l(4)
	mr 3,31
.LVL3581:
	bl _ZN8idParser17ExpectTokenStringEPKc
.L2692:
	.loc 6 2922 0
	mr 3,29
	mr 4,28
	mr 5,30
	li 6,14
	li 7,0
	bl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
.LBB12980:
	.loc 6 2941 0
	mr 30,3
.LVL3582:
	b .L2720
.LVL3583:
.L2680:
.LBE12980:
.LBE13010:
	.loc 6 2886 0
	lis 4,.LC110@ha
	lwz 5,12(1)
	mr 3,31
	la 4,.LC110@l(4)
	crxor 6,6,6
	bl _ZNK8idParser7WarningEPKcz
.LBB13011:
	.loc 6 2934 0
	li 30,0
	b .L2677
.LVL3584:
.L2691:
	.loc 6 2923 0
	lis 5,_ZTI10idWinFloat@ha
	mr 3,28
	mr 4,30
	la 5,_ZTI10idWinFloat@l(5)
	li 6,0
	bl __dynamic_cast
	cmpwi 7,3,0
	beq- 7,.L2724
	.loc 6 2924 0 discriminator 3
	mr 3,29
	mr 4,28
	mr 5,27
	li 6,16
	li 7,0
	bl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
.LBB12981:
	.loc 6 2941 0
	mr 30,3
	b .L2720
.L2724:
.LBE12981:
	.loc 6 2925 0
	lis 5,_ZTI8idWinInt@ha
	mr 3,28
	mr 4,30
	la 5,_ZTI8idWinInt@l(5)
	li 6,0
	bl __dynamic_cast
	cmpwi 7,3,0
	beq- 7,.L2725
	.loc 6 2926 0 discriminator 3
	mr 3,29
	mr 4,28
	mr 5,27
	li 6,17
	li 7,0
	bl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
.LBB12982:
	.loc 6 2941 0
	mr 30,3
	b .L2720
.L2725:
.LBE12982:
	.loc 6 2927 0
	lis 5,_ZTI9idWinBool@ha
	mr 3,28
	mr 4,30
	la 5,_ZTI9idWinBool@l(5)
	li 6,0
	bl __dynamic_cast
	cmpwi 7,3,0
	beq- 7,.L2726
	.loc 6 2928 0 discriminator 3
	mr 3,29
	mr 4,28
	mr 5,27
	li 6,18
	li 7,0
	bl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
.LBB12983:
	.loc 6 2941 0
	mr 30,3
	b .L2720
.L2726:
.LBE12983:
	.loc 6 2929 0
	lis 5,_ZTI8idWinStr@ha
	mr 3,28
	mr 4,30
	la 5,_ZTI8idWinStr@l(5)
	li 6,0
	bl __dynamic_cast
	cmpwi 7,3,0
	beq- 7,.L2727
	.loc 6 2930 0 discriminator 3
	mr 3,29
	mr 4,28
	mr 5,27
	li 6,15
	li 7,0
	bl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
.LBB12984:
	.loc 6 2941 0
	mr 30,3
	b .L2720
.LVL3585:
.L2723:
.LBE12984:
.LBE13011:
	.loc 6 2906 0
	lwz 9,0(29)
	mr 3,29
.LVL3586:
	lwz 4,12(1)
	li 5,1
	lwz 0,12(9)
	li 6,0
	mtctr 0
	bctrl
.LVL3587:
.LBB13012:
	.loc 6 2908 0
	mr. 28,3
	bne- 0,.L2689
.LBB12985:
	.loc 6 2937 0
	lwz 3,8(1)
.LVL3588:
	addi 3,3,1
	bl _Znaj
	.loc 6 2938 0
	lwz 4,12(1)
	.loc 6 2937 0
	mr 31,3
.LVL3589:
	.loc 6 2938 0
	bl strcpy
.LVL3590:
	.loc 6 2941 0
	mr 3,29
	mr 4,31
	li 5,-2
	li 6,14
	li 7,0
	bl _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
	mr 30,3
	b .L2720
.LVL3591:
.L2693:
.LBE12985:
	.loc 6 2919 0
	mr 3,31
	addi 4,1,8
	bl _ZN8idParser11UnreadTokenEP7idToken
	.loc 6 2912 0
	mr 30,27
	b .L2692
.L2727:
	.loc 6 2932 0
	lis 4,.LC111@ha
	lwz 5,12(1)
	mr 3,31
	la 4,.LC111@l(4)
	crxor 6,6,6
	bl _ZNK8idParser7WarningEPKcz
.LEHE206:
	.loc 6 2934 0
	li 30,0
	b .L2677
.LVL3592:
.L2710:
	mr 31,3
.LVL3593:
.LBE13012:
.LBB13013:
.LBB13014:
.LBB13015:
.LBB13016:
.LBB13017:
	.loc 4 501 0
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB207:
	bl _Unwind_Resume
.LEHE207:
.LBE13017:
.LBE13016:
.LBE13015:
.LBE13014:
.LBE13013:
.LBE13023:
	.cfi_endproc
.LFE2979:
	.section	.gcc_except_table
.LLSDA2979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2979-.LLSDACSB2979
.LLSDACSB2979:
	.uleb128 .LEHB202-.LFB2979
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L2710-.LFB2979
	.uleb128 0
	.uleb128 .LEHB203-.LFB2979
	.uleb128 .LEHE203-.LEHB203
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB204-.LFB2979
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L2710-.LFB2979
	.uleb128 0
	.uleb128 .LEHB205-.LFB2979
	.uleb128 .LEHE205-.LEHB205
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB206-.LFB2979
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L2710-.LFB2979
	.uleb128 0
	.uleb128 .LEHB207-.LFB2979
	.uleb128 .LEHE207-.LEHB207
	.uleb128 0
	.uleb128 0
.LLSDACSE2979:
	.section	".text"
	.size	_ZN8idWindow9ParseTermEP8idParserP8idWinVari, .-_ZN8idWindow9ParseTermEP8idParserP8idWinVari
	.align 2
	.globl _ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari
	.type	_ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari, @function
_ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari:
.LFB2980:
	.loc 6 2954 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2980
.LVL3594:
	stwu 1,-136(1)
.LCFI508:
	.cfi_def_cfa_offset 136
.LVL3595:
	mflr 0
.LBB13059:
.LBB13060:
.LBB13061:
.LBB13062:
.LBB13063:
	.loc 4 357 0
	li 11,20
	.loc 4 356 0
	li 9,0
.LBE13063:
.LBE13062:
.LBE13061:
.LBE13060:
.LBE13059:
	.loc 6 2954 0
	stw 29,124(1)
.LBB13102:
	.loc 6 2958 0
	mr. 29,5
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBB13070:
.LBB13068:
.LBB13066:
.LBB13064:
	.loc 4 357 0
	stw 11,24(1)
	.loc 4 358 0
	addi 11,1,28
.LBE13064:
.LBE13066:
.LBE13068:
.LBE13070:
.LBE13102:
	.loc 6 2954 0
	stw 26,112(1)
	mr 26,3
	.cfi_offset 26, -24
	stw 27,116(1)
	mr 27,6
	.cfi_offset 27, -20
	stw 28,120(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 0,140(1)
	stw 25,108(1)
	stw 30,128(1)
	stw 31,132(1)
.LBB13103:
.LBB13071:
.LBB13069:
.LBB13067:
.LBB13065:
	.loc 4 356 0
	stw 9,16(1)
	.loc 4 358 0
	stw 11,20(1)
	.loc 4 359 0
	stb 9,28(1)
.LBE13065:
.LBE13067:
.LBE13069:
.LBE13071:
	.loc 6 2958 0
	bne- 0,.L2729
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	.loc 6 2959 0
	mr 5,6
.LVL3596:
	mr 6,7
.LVL3597:
	addi 31,1,16
.LEHB208:
	bl _ZN8idWindow9ParseTermEP8idParserP8idWinVari
.LEHE208:
.LVL3598:
	mr 30,3
	addi 31,1,16
.LVL3599:
.L2730:
.LBB13072:
.LBB13073:
.LBB13074:
.LBB13075:
.LBB13076:
	.loc 4 501 0
	mr 3,31
.LEHB209:
	bl _ZN5idStr8FreeDataEv
.LEHE209:
.LBE13076:
.LBE13075:
.LBE13074:
.LBE13073:
.LBE13072:
.LBE13103:
	.loc 6 3028 0
	lwz 0,140(1)
	mr 3,30
	lwz 25,108(1)
	mtlr 0
	lwz 26,112(1)
.LVL3600:
	lwz 27,116(1)
.LVL3601:
	lwz 28,120(1)
.LVL3602:
	lwz 29,124(1)
	lwz 30,128(1)
	lwz 31,132(1)
	addi 1,1,136
	.cfi_remember_state
.LCFI509:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL3603:
.L2729:
.LCFI510:
	.cfi_restore_state
.LBB13104:
	.loc 6 2962 0
	addi 25,29,-1
	addi 31,1,16
	mr 5,25
.LVL3604:
.LEHB210:
	bl _ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari
.LVL3605:
	.loc 6 2964 0
	addi 31,1,16
	.loc 6 2962 0
	mr 30,3
.LVL3606:
	.loc 6 2964 0
	mr 4,31
	mr 3,28
.LVL3607:
	bl _ZN8idParser9ReadTokenEP7idToken
	.loc 6 2964 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L2730
	.loc 6 2970 0 is_stmt 1
	cmpwi 7,29,1
	beq- 7,.L2779
	.loc 6 2979 0
	cmpwi 7,29,2
	beq- 7,.L2750
	.loc 6 2985 0
	cmpwi 7,29,3
	beq- 7,.L2751
	.loc 6 3003 0
	cmpwi 7,29,4
	beq- 7,.L2752
.L2744:
	.loc 6 3025 0
	mr 3,28
	mr 4,31
	bl _ZN8idParser11UnreadTokenEP7idToken
	b .L2730
.L2750:
.LVL3608:
.LBB13077:
.LBB13078:
	.loc 4 653 0 discriminator 1
	lis 4,.LC113@ha
	lwz 3,4(31)
	la 4,.LC113@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13078:
.LBE13077:
	.loc 6 2979 0 discriminator 1
	cmpwi 7,3,0
	bne- 7,.L2735
	.loc 6 2980 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,0
	li 7,2
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0 discriminator 4
	mr 30,3
.LVL3609:
	b .L2730
.LVL3610:
.L2752:
	.loc 6 3003 0 discriminator 1
	lis 4,.LC115@ha
	lwz 3,4(31)
	la 4,.LC115@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2742
	.loc 6 3004 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,12
	li 7,4
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3611:
	b .L2730
.LVL3612:
.L2779:
.LBB13079:
.LBB13080:
	.loc 4 653 0 discriminator 1
	lis 4,.LC112@ha
	lwz 3,4(31)
	la 4,.LC112@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13080:
.LBE13079:
	.loc 6 2970 0 discriminator 1
	cmpwi 7,3,0
	bne- 7,.L2732
	.loc 6 2971 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,2
	li 7,1
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3613:
	b .L2730
.LVL3614:
.L2732:
.LBB13081:
.LBB13082:
	.loc 4 653 0
	lis 4,.LC117@ha
	lwz 3,4(31)
	la 4,.LC117@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13082:
.LBE13081:
	.loc 6 2973 0
	cmpwi 7,3,0
	beq- 7,.L2766
.LVL3615:
.LBB13083:
.LBB13084:
	.loc 4 653 0
	lis 4,.LC118@ha
	lwz 3,4(31)
	la 4,.LC118@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13084:
.LBE13083:
	.loc 6 2976 0
	cmpwi 7,3,0
	bne- 7,.L2744
	.loc 6 2977 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,4
	li 7,1
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3616:
	b .L2730
.LVL3617:
.L2766:
	.loc 6 2974 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,3
	li 7,1
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3618:
	b .L2730
.LVL3619:
.L2751:
.LBB13085:
.LBB13086:
	.loc 4 653 0 discriminator 1
	lis 4,.LC114@ha
	lwz 3,4(31)
	la 4,.LC114@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13086:
.LBE13085:
	.loc 6 2985 0 discriminator 1
	cmpwi 7,3,0
	bne- 7,.L2736
	.loc 6 2986 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,6
	li 7,3
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3620:
	b .L2730
.LVL3621:
.L2735:
.LBB13087:
.LBB13088:
	.loc 4 653 0
	lis 4,.LC106@ha
	lwz 3,4(31)
	la 4,.LC106@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13088:
.LBE13087:
	.loc 6 2982 0
	cmpwi 7,3,0
	bne- 7,.L2744
	.loc 6 2983 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,1
	li 7,2
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3622:
	b .L2730
.LVL3623:
.L2736:
.LBB13089:
.LBB13090:
	.loc 4 653 0
	lis 4,.LC119@ha
	lwz 3,4(31)
	la 4,.LC119@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13090:
.LBE13089:
	.loc 6 2988 0
	cmpwi 7,3,0
	beq- 7,.L2769
.LVL3624:
.LBB13091:
.LBB13092:
	.loc 4 653 0
	lis 4,.LC120@ha
	lwz 3,4(31)
	la 4,.LC120@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13092:
.LBE13091:
	.loc 6 2991 0
	cmpwi 7,3,0
	beq- 7,.L2770
.LVL3625:
.LBB13093:
.LBB13094:
	.loc 4 653 0
	lis 4,.LC121@ha
	lwz 3,4(31)
	la 4,.LC121@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE13094:
.LBE13093:
	.loc 6 2994 0
	cmpwi 7,3,0
	beq- 7,.L2771
	.loc 6 2997 0
	lis 4,.LC122@ha
	lwz 3,4(31)
	la 4,.LC122@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	bne- 7,.L2772
	.loc 6 3000 0
	lis 4,.LC123@ha
	lwz 3,4(31)
	la 4,.LC123@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2744
	.loc 6 3001 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,11
	li 7,3
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3626:
	b .L2730
.LVL3627:
.L2769:
	.loc 6 2989 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,7
	li 7,3
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3628:
	b .L2730
.LVL3629:
.L2770:
	.loc 6 2992 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,8
	li 7,3
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3630:
	b .L2730
.LVL3631:
.L2771:
	.loc 6 2995 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,9
	li 7,3
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3632:
	b .L2730
.LVL3633:
.L2772:
	.loc 6 2998 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,10
	li 7,3
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.loc 6 3007 0
	mr 30,3
.LVL3634:
	b .L2730
.LVL3635:
.L2742:
	.loc 6 3006 0
	lis 4,.LC124@ha
	lwz 3,4(31)
	la 4,.LC124@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	bne- 7,.L2774
.LBB13095:
	.loc 6 3009 0
	lis 4,.LC125@ha
	lwz 3,4(31)
	la 4,.LC125@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2744
.LBB13096:
	.loc 6 3010 0 discriminator 4
	mr 8,1
	li 0,0
	stwu 0,8(8)
.LVL3636:
	.loc 6 3011 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,19
	li 7,4
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	mr 29,3
.LVL3637:
	.loc 6 3012 0 discriminator 4
	mr 4,31
	mr 3,28
.LVL3638:
	bl _ZN8idParser9ReadTokenEP7idToken
	.loc 6 3012 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	.loc 6 3013 0 is_stmt 1 discriminator 1
	mr 30,29
.LVL3639:
	.loc 6 3012 0 discriminator 1
	beq+ 7,.L2730
	.loc 6 3015 0
	lis 4,.LC116@ha
	lwz 3,4(31)
	la 4,.LC116@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq+ 7,.L2730
	.loc 6 3016 0
	mr 3,26
	mr 4,28
	mr 5,25
	mr 6,27
	li 7,0
	bl _ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari
.LVL3640:
	.loc 6 3017 0
	lwz 9,8(1)
	stw 3,16(9)
	b .L2730
.LVL3641:
.L2774:
.LBE13096:
.LBE13095:
	.loc 6 3007 0 discriminator 4
	mr 3,26
	mr 4,28
	mr 5,30
	li 6,13
	li 7,4
	li 8,0
	bl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
.LEHE210:
	.loc 6 3007 0 is_stmt 0
	mr 30,3
.LVL3642:
	b .L2730
.LVL3643:
.L2765:
	mr 30,3
.LVL3644:
.LBB13097:
.LBB13098:
.LBB13099:
.LBB13100:
.LBB13101:
	.loc 4 501 0 is_stmt 1
	mr 3,31
	bl _ZN5idStr8FreeDataEv
	mr 3,30
.LEHB211:
	bl _Unwind_Resume
.LEHE211:
.LBE13101:
.LBE13100:
.LBE13099:
.LBE13098:
.LBE13097:
.LBE13104:
	.cfi_endproc
.LFE2980:
	.section	.gcc_except_table
.LLSDA2980:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2980-.LLSDACSB2980
.LLSDACSB2980:
	.uleb128 .LEHB208-.LFB2980
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L2765-.LFB2980
	.uleb128 0
	.uleb128 .LEHB209-.LFB2980
	.uleb128 .LEHE209-.LEHB209
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB210-.LFB2980
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L2765-.LFB2980
	.uleb128 0
	.uleb128 .LEHB211-.LFB2980
	.uleb128 .LEHE211-.LEHB211
	.uleb128 0
	.uleb128 0
.LLSDACSE2980:
	.section	".text"
	.size	_ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari, .-_ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari
	.align 2
	.globl _ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.type	_ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t, @function
_ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t:
.LFB2978:
	.loc 6 2851 0
	.cfi_startproc
.LVL3645:
	stwu 1,-24(1)
.LCFI511:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,5
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,20(1)
.LBB13105:
	.loc 6 2852 0
	mr 5,7
.LVL3646:
.LBE13105:
	.loc 6 2851 0
	mr 31,6
	.cfi_offset 31, -4
.LBB13106:
	.loc 6 2852 0
	li 7,0
.LVL3647:
	li 6,0
.LVL3648:
.LBE13106:
	.loc 6 2851 0
	stw 0,28(1)
	stw 28,8(1)
	mr 28,8
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,12(1)
	.loc 6 2851 0
	mr 29,3
	.cfi_offset 29, -12
.LBB13107:
	.loc 6 2852 0
	bl _ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari
.LVL3649:
.LBE13107:
	.loc 6 2854 0
	lwz 0,28(1)
.LBB13108:
	.loc 6 2852 0
	mr 5,3
.LVL3650:
	.loc 6 2853 0
	mr 4,30
	mr 3,29
.LVL3651:
.LBE13108:
	.loc 6 2854 0
	lwz 30,16(1)
.LVL3652:
	lwz 29,12(1)
.LVL3653:
.LBB13109:
	.loc 6 2853 0
	mr 6,31
	mr 7,28
.LBE13109:
	.loc 6 2854 0
	lwz 31,20(1)
.LVL3654:
	lwz 28,8(1)
.LVL3655:
	mtlr 0
	addi 1,1,24
.LCFI512:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
.LBB13110:
	.loc 6 2853 0
	b _ZN8idWindow6EmitOpEii12wexpOpType_tPP8wexpOp_t
.LVL3656:
.LVL3657:
.LVL3658:
.LVL3659:
.LVL3660:
.LBE13110:
	.cfi_endproc
.LFE2978:
	.size	_ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t, .-_ZN8idWindow11ParseEmitOpEP8idParseri12wexpOpType_tiPP8wexpOp_t
	.align 2
	.globl _ZN8idWindow15ParseExpressionEP8idParserP8idWinVari
	.type	_ZN8idWindow15ParseExpressionEP8idParserP8idWinVari, @function
_ZN8idWindow15ParseExpressionEP8idParserP8idWinVari:
.LFB2981:
	.loc 6 3037 0
	.cfi_startproc
.LVL3661:
	.loc 6 3037 0
	mr 6,5
.LVL3662:
	.loc 6 3038 0
	li 7,0
	li 5,4
.LVL3663:
	.loc 6 3039 0
	.loc 6 3038 0
	b _ZN8idWindow23ParseExpressionPriorityEP8idParseriP8idWinVari
.LVL3664:
.LVL3665:
.LVL3666:
	.cfi_endproc
.LFE2981:
	.size	_ZN8idWindow15ParseExpressionEP8idParserP8idWinVari, .-_ZN8idWindow15ParseExpressionEP8idParserP8idWinVari
	.align 2
	.globl _ZN8idWindow21ParseBracedExpressionEP8idParser
	.type	_ZN8idWindow21ParseBracedExpressionEP8idParser, @function
_ZN8idWindow21ParseBracedExpressionEP8idParser:
.LFB2982:
	.loc 6 3046 0
	.cfi_startproc
.LVL3667:
	stwu 1,-16(1)
.LCFI513:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 6 3047 0
	lis 4,.LC126@ha
.LVL3668:
	.loc 6 3046 0
	stw 30,8(1)
	.loc 6 3047 0
	la 4,.LC126@l(4)
	.loc 6 3046 0
	mr 30,3
	.cfi_offset 30, -8
	.loc 6 3047 0
	mr 3,31
.LVL3669:
	.loc 6 3046 0
	stw 0,20(1)
	.loc 6 3047 0
	.cfi_offset 65, 4
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 3048 0
	mr 4,31
	mr 3,30
	li 5,0
	li 6,0
	bl _ZN8idWindow15ParseExpressionEP8idParserP8idWinVari
	.loc 6 3049 0
	lis 4,.LC127@ha
	mr 3,31
	la 4,.LC127@l(4)
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 3050 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL3670:
	mtlr 0
	lwz 31,12(1)
.LVL3671:
	addi 1,1,16
.LCFI514:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2982:
	.size	_ZN8idWindow21ParseBracedExpressionEP8idParser, .-_ZN8idWindow21ParseBracedExpressionEP8idParser
	.align 2
	.globl _ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib
	.type	_ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib, @function
_ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib:
.LFB2948:
	.loc 6 1599 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2948
.LVL3672:
	mflr 0
	mfcr 12
.LBB13190:
	.loc 6 1610 0
	cmpwi 7,7,0
.LBE13190:
	.loc 6 1599 0
	stwu 1,-152(1)
.LCFI515:
	.cfi_def_cfa_offset 152
	.cfi_register 70, 12
	.cfi_register 65, 0
.LVL3673:
.LBB13395:
.LBB13191:
.LBB13192:
.LBB13193:
.LBB13194:
	.loc 4 357 0
	li 9,20
.LBE13194:
.LBE13193:
.LBE13192:
.LBE13191:
.LBE13395:
	.loc 6 1599 0
	stw 0,156(1)
.LBB13396:
.LBB13201:
.LBB13199:
.LBB13197:
.LBB13195:
	.loc 4 356 0
	li 0,0
	.cfi_offset 65, 4
	.loc 4 357 0
	stw 9,16(1)
	.loc 4 358 0
	addi 9,1,20
.LBE13195:
.LBE13197:
.LBE13199:
.LBE13201:
.LBE13396:
	.loc 6 1599 0
	stw 23,116(1)
	mr 23,3
	.cfi_offset 23, -36
	stw 30,144(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,148(1)
	mr 31,5
	.cfi_offset 31, -4
	stw 18,96(1)
	stw 19,100(1)
	stw 20,104(1)
	stw 21,108(1)
	stw 22,112(1)
	stw 24,120(1)
	stw 25,124(1)
	stw 26,128(1)
	stw 27,132(1)
	stw 28,136(1)
	stw 29,140(1)
	stw 12,92(1)
.LBB13397:
.LBB13202:
.LBB13200:
.LBB13198:
.LBB13196:
	.loc 4 356 0
	stw 0,8(1)
	.loc 4 358 0
	stw 9,12(1)
	.loc 4 359 0
	stb 0,20(1)
.LBE13196:
.LBE13198:
.LBE13200:
.LBE13202:
	.loc 6 1610 0
	beq- 7,.L2784
	.cfi_offset 70, -60
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.loc 6 1611 0
	addi 28,1,8
	mr 3,4
.LVL3674:
	mr 4,28
.LVL3675:
.LEHB212:
	bl _ZN8idParser9ReadTokenEP7idToken
.LVL3676:
.LBB13203:
.LBB13204:
	.loc 4 690 0
	lis 4,.LC128@ha
	lwz 3,12(1)
	la 4,.LC128@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	mr 29,3
.LVL3677:
.LBE13204:
.LBE13203:
	.loc 6 1617 0
	mr 4,28
	mr 3,30
.LVL3678:
	bl _ZN8idParser11UnreadTokenEP7idToken
	.loc 6 1599 0
	cntlzw 29,29
.LVL3679:
	srwi 29,29,5
	.loc 6 1619 0
	cmpwi 7,29,0
	beq- 7,.L2837
.LVL3680:
.L2824:
.LBB13205:
.LBB13206:
.LBB13207:
	.loc 4 653 0
	lis 24,.LC126@ha
.LBE13207:
.LBE13206:
.LBB13210:
.LBB13211:
	lis 22,.LC127@ha
.LBE13211:
.LBE13210:
.LBB13215:
.LBB13216:
	.loc 4 690 0
	lis 21,.LC128@ha
.LBE13216:
.LBE13215:
.LBB13219:
.LBB13220:
	.loc 4 653 0
	lis 19,.LC130@ha
.LBE13220:
.LBE13219:
	.loc 6 1664 0
	cmpwi 4,29,0
.LBB13223:
.LBB13208:
	.loc 4 653 0
	la 24,.LC126@l(24)
.LBE13208:
.LBE13223:
.LBE13205:
	.loc 6 1627 0
	li 29,0
.LVL3681:
.LBB13381:
.LBB13224:
.LBB13212:
	.loc 4 653 0
	la 22,.LC127@l(22)
.LBE13212:
.LBE13224:
.LBB13225:
.LBB13217:
	.loc 4 690 0
	la 21,.LC128@l(21)
.LBE13217:
.LBE13225:
.LBB13226:
.LBB13227:
.LBB13228:
.LBB13229:
.LBB13230:
.LBB13231:
	.loc 16 393 0
	li 26,0
	.loc 16 663 0
	li 18,16
.LBE13231:
.LBE13230:
.LBE13229:
.LBE13228:
.LBE13227:
.LBE13226:
.LBB13279:
.LBB13280:
.LBB13281:
	.loc 16 317 0
	li 20,4
.LBE13281:
.LBE13280:
.LBE13279:
.LBB13293:
.LBB13221:
	.loc 4 653 0
	la 19,.LC130@l(19)
.LVL3682:
.L2834:
.LBE13221:
.LBE13293:
	.loc 6 1630 0
	mr 3,30
	mr 4,28
	bl _ZN8idParser9ReadTokenEP7idToken
	cmpwi 7,3,0
	beq- 7,.L2838
.LVL3683:
.LBB13294:
.LBB13209:
	.loc 4 653 0
	lwz 3,12(1)
	mr 4,24
	bl _ZN5idStr3CmpEPKcS1_
.LBE13209:
.LBE13294:
	.loc 6 1636 0
	subfic 0,3,0
	addze 0,29
.LBB13295:
.LBB13213:
	.loc 4 653 0
	lwz 3,12(1)
	mr 4,22
.LBE13213:
.LBE13295:
	.loc 6 1636 0
	mr 29,0
.LVL3684:
.LBB13296:
.LBB13214:
	.loc 4 653 0
	bl _ZN5idStr3CmpEPKcS1_
.LVL3685:
.LBE13214:
.LBE13296:
	.loc 6 1639 0
	cmpwi 7,3,0
	bne- 7,.L2790
.LVL3686:
	.loc 6 1640 0
	cmpwi 7,29,0
	beq- 7,.L2829
	addi 29,29,-1
.LVL3687:
.L2790:
	.loc 6 1645 0
	li 3,32
	bl _ZN11idGuiScriptnwEj
.LEHE212:
	mr 27,3
.LEHB213:
	bl _ZN11idGuiScriptC1Ev
.LEHE213:
.LVL3688:
.LBB13297:
.LBB13218:
	.loc 4 690 0 discriminator 2
	lwz 3,12(1)
	mr 4,21
.LEHB214:
	bl _ZN5idStr4IcmpEPKcS1_
.LBE13218:
.LBE13297:
	.loc 6 1646 0 discriminator 2
	cmpwi 7,3,0
	bne- 7,.L2791
	.loc 6 1647 0
	mr 3,23
	mr 4,30
	li 5,0
	li 6,0
	bl _ZN8idWindow15ParseExpressionEP8idParserP8idWinVari
	stw 3,0(27)
	.loc 6 1648 0
	li 3,16
	bl _Znwj
.LBB13298:
.LBB13283:
.LBB13284:
.LBB13285:
	.loc 16 197 0 discriminator 1
	stw 26,12(3)
.LBE13285:
.LBE13284:
.LBE13283:
.LBE13298:
	.loc 6 1648 0 discriminator 1
	mr 5,3
.LVL3689:
.LBB13299:
.LBB13290:
.LBB13288:
.LBB13286:
	.loc 16 198 0 discriminator 1
	stw 26,0(3)
.LBE13286:
.LBE13288:
.LBE13290:
.LBE13299:
	.loc 6 1649 0 discriminator 1
	mr 4,30
.LBB13300:
.LBB13291:
.LBB13289:
.LBB13287:
	.loc 16 199 0 discriminator 1
	stw 26,4(3)
.LVL3690:
.LBE13287:
.LBE13289:
.LBE13291:
.LBE13300:
	.loc 6 1649 0 discriminator 1
	li 6,0
.LBB13301:
.LBB13292:
.LBB13282:
	.loc 16 317 0 discriminator 1
	stw 20,8(3)
.LBE13282:
.LBE13292:
.LBE13301:
	.loc 6 1649 0 discriminator 1
	li 7,0
	.loc 6 1648 0 discriminator 1
	stw 3,4(27)
	.loc 6 1649 0 discriminator 1
	mr 3,23
.LVL3691:
	bl _ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib
.LVL3692:
	.loc 6 1650 0
	mr 3,30
	mr 4,28
	bl _ZN8idParser9ReadTokenEP7idToken
	cmpwi 7,3,0
	beq- 7,.L2792
.LVL3693:
.LBB13302:
.LBB13222:
	.loc 4 653 0
	lwz 3,12(1)
	mr 4,19
	bl _ZN5idStr3CmpEPKcS1_
.LBE13222:
.LBE13302:
	.loc 6 1651 0
	cmpwi 7,3,0
	bne- 7,.L2793
	.loc 6 1652 0
	li 3,16
	bl _Znwj
.LBB13303:
.LBB13304:
.LBB13305:
.LBB13306:
	.loc 16 197 0
	stw 26,12(3)
.LBE13306:
.LBE13305:
.LBE13304:
.LBE13303:
	.loc 6 1652 0
	mr 5,3
.LVL3694:
.LBB13315:
.LBB13311:
.LBB13309:
.LBB13307:
	.loc 16 198 0
	stw 26,0(3)
.LBE13307:
.LBE13309:
.LBE13311:
.LBE13315:
	.loc 6 1654 0
	mr 4,30
.LBB13316:
.LBB13312:
.LBB13310:
.LBB13308:
	.loc 16 199 0
	stw 26,4(3)
.LVL3695:
.LBE13308:
.LBE13310:
.LBE13312:
.LBE13316:
	.loc 6 1654 0
	li 6,0
.LBB13317:
.LBB13313:
.LBB13314:
	.loc 16 317 0
	stw 20,8(3)
.LBE13314:
.LBE13313:
.LBE13317:
	.loc 6 1654 0
	li 7,1
	.loc 6 1652 0
	stw 3,8(27)
	.loc 6 1654 0
	mr 3,23
.LVL3696:
	bl _ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib
.LEHE214:
.LVL3697:
.L2792:
.LBB13318:
.LBB13319:
.LBB13320:
.LBB13321:
	.loc 16 655 0
	lwz 25,12(31)
	cmpwi 7,25,0
	beq- 7,.L2839
.L2794:
.LBB13322:
	.loc 16 659 0
	lwz 0,0(31)
	lwz 9,4(31)
	cmpw 7,0,9
	beq- 7,.L2795
.L2835:
.LBB13323:
.LBB13324:
.LBB13325:
	.loc 16 399 0
	slwi 0,0,2
	add 25,25,0
.L2796:
.LBE13325:
.LBE13324:
.LBE13323:
.LBE13322:
	.loc 16 669 0
	stw 27,0(25)
	.loc 16 670 0
	lwz 9,0(31)
	addi 0,9,1
	stw 0,0(31)
.LBE13321:
.LBE13320:
.LBE13319:
.LBE13318:
	.loc 6 1664 0
	beq- 4,.L2834
.LVL3698:
.L2829:
	.loc 6 1665 0
	li 27,1
.LVL3699:
.L2786:
.LBE13381:
.LBB13382:
.LBB13383:
.LBB13384:
.LBB13385:
.LBB13386:
	.loc 4 501 0
	mr 3,28
.LEHB215:
	bl _ZN5idStr8FreeDataEv
.LEHE215:
.LBE13386:
.LBE13385:
.LBE13384:
.LBE13383:
.LBE13382:
.LBE13397:
	.loc 6 1683 0
	lwz 0,156(1)
	lwz 12,92(1)
	mr 3,27
	mtlr 0
	lwz 18,96(1)
	lwz 19,100(1)
	mtcrf 8,12
	lwz 20,104(1)
	lwz 21,108(1)
	lwz 22,112(1)
	lwz 23,116(1)
.LVL3700:
	lwz 24,120(1)
	lwz 25,124(1)
	lwz 26,128(1)
	lwz 27,132(1)
	lwz 28,136(1)
	lwz 29,140(1)
	lwz 30,144(1)
.LVL3701:
	lwz 31,148(1)
.LVL3702:
	addi 1,1,152
	.cfi_remember_state
.LCFI516:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
	blr
.LVL3703:
.L2791:
.LCFI517:
	.cfi_restore_state
.LBB13398:
.LBB13387:
	.loc 6 1669 0
	mr 3,30
	mr 4,28
.LEHB216:
	bl _ZN8idParser11UnreadTokenEP7idToken
.LVL3704:
.LBB13366:
.LBB13367:
	.loc 4 653 0
	lwz 3,12(1)
	mr 4,24
	bl _ZN5idStr3CmpEPKcS1_
.LBE13367:
.LBE13366:
	.loc 6 1673 0
	cmpwi 7,3,0
	beq- 7,.L2840
	.loc 6 1678 0
	mr 3,27
	mr 4,30
	bl _ZN11idGuiScript5ParseEP8idParser
.LVL3705:
.LBB13368:
.LBB13272:
.LBB13265:
.LBB13258:
	.loc 16 655 0
	lwz 25,12(31)
	cmpwi 7,25,0
	beq- 7,.L2841
.L2807:
.LBB13252:
	.loc 16 659 0
	lwz 0,0(31)
	lwz 9,4(31)
	cmpw 7,0,9
	beq- 7,.L2808
.L2836:
.LBB13246:
.LBB13232:
.LBB13233:
	.loc 16 399 0
	slwi 0,0,2
	add 25,25,0
.L2809:
.LBE13233:
.LBE13232:
.LBE13246:
.LBE13252:
	.loc 16 669 0
	stw 27,0(25)
	.loc 16 670 0
	lwz 9,0(31)
	addi 0,9,1
	stw 0,0(31)
	b .L2834
.LVL3706:
.L2784:
.LBE13258:
.LBE13265:
.LBE13272:
.LBE13368:
.LBE13387:
	.loc 6 1623 0
	mr 3,4
	lis 4,.LC126@ha
	la 4,.LC126@l(4)
	addi 28,1,8
	bl _ZN8idParser17ExpectTokenStringEPKc
.LVL3707:
	cmpwi 7,3,0
	.loc 6 1624 0
	li 27,0
	addi 28,1,8
	.loc 6 1623 0
	beq- 7,.L2786
	.loc 6 1601 0
	li 29,0
	b .L2824
.LVL3708:
.L2795:
.LBB13388:
.LBB13369:
.LBB13360:
.LBB13354:
.LBB13348:
.LBB13343:
.LBB13338:
	.loc 16 662 0
	lwz 11,8(31)
	cmpwi 7,11,0
	beq- 7,.L2842
.L2797:
	.loc 16 665 0
	add 10,11,9
.LVL3709:
	.loc 16 666 0
	divw 10,10,11
.LVL3710:
.LBB13333:
.LBB13328:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3711:
	ble- 0,.L2843
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2835
.LVL3712:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,4(31)
	.loc 16 387 0
	bgt- 7,.L2844
.L2801:
	.loc 16 392 0
	slwi 3,11,2
	bl _Znaj
.LVL3713:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3714:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2802
	.loc 6 1599 0
	addi 11,25,-4
.LBE13328:
.LBE13333:
	.loc 16 393 0
	li 9,0
	b .L2803
.LVL3715:
.L2845:
.LBB13334:
.LBB13329:
	lwz 3,12(31)
.LVL3716:
.L2803:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL3717:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(31)
	cmpw 7,9,0
	blt+ 7,.L2845
.LVL3718:
.L2802:
	.loc 16 398 0
	cmpwi 7,25,0
	beq- 7,.L2846
	.loc 16 399 0
	mr 3,25
	bl _ZdaPv
	lwz 0,0(31)
	lwz 25,12(31)
.LVL3719:
	b .L2835
.LVL3720:
.L2808:
.LBE13329:
.LBE13334:
.LBE13338:
.LBE13343:
.LBE13348:
.LBE13354:
.LBE13360:
.LBE13369:
.LBB13370:
.LBB13273:
.LBB13266:
.LBB13259:
.LBB13253:
.LBB13247:
	.loc 16 662 0
	lwz 11,8(31)
	cmpwi 7,11,0
	beq- 7,.L2847
.L2810:
	.loc 16 665 0
	add 10,11,9
.LVL3721:
	.loc 16 666 0
	divw 10,10,11
.LVL3722:
.LBB13241:
.LBB13236:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3723:
	ble- 0,.L2848
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2836
.LVL3724:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,4(31)
	.loc 16 387 0
	bgt- 7,.L2849
.L2814:
	.loc 16 392 0
	slwi 3,11,2
	bl _Znaj
.LVL3725:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3726:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2815
	.loc 6 1599 0
	addi 11,25,-4
.LBE13236:
.LBE13241:
	.loc 16 393 0
	li 9,0
	b .L2816
.LVL3727:
.L2850:
.LBB13242:
.LBB13237:
	lwz 3,12(31)
.LVL3728:
.L2816:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL3729:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(31)
	cmpw 7,9,0
	blt+ 7,.L2850
.LVL3730:
.L2815:
	.loc 16 398 0
	cmpwi 7,25,0
	beq- 7,.L2851
	.loc 16 399 0
	mr 3,25
	bl _ZdaPv
	lwz 0,0(31)
	lwz 25,12(31)
.LVL3731:
	b .L2836
.LVL3732:
.L2793:
.LBE13237:
.LBE13242:
.LBE13247:
.LBE13253:
.LBE13259:
.LBE13266:
.LBE13273:
.LBE13370:
	.loc 6 1656 0
	mr 3,30
	mr 4,28
	bl _ZN8idParser11UnreadTokenEP7idToken
	b .L2792
.LVL3733:
.L2842:
.LBB13371:
.LBB13361:
.LBB13355:
.LBB13349:
.LBB13344:
.LBB13339:
	.loc 16 663 0
	stw 18,8(31)
	li 11,16
	b .L2797
.LVL3734:
.L2847:
.LBE13339:
.LBE13344:
.LBE13349:
.LBE13355:
.LBE13361:
.LBE13371:
.LBB13372:
.LBB13274:
.LBB13267:
.LBB13260:
.LBB13254:
.LBB13248:
	stw 18,8(31)
	li 11,16
	b .L2810
.LVL3735:
.L2837:
.LBE13248:
.LBE13254:
.LBE13260:
.LBE13267:
.LBE13274:
.LBE13372:
.LBE13388:
	.loc 6 1619 0 discriminator 1
	lis 4,.LC126@ha
	mr 3,30
	la 4,.LC126@l(4)
	bl _ZN8idParser17ExpectTokenStringEPKc
	cmpwi 7,3,0
	.loc 6 1620 0 discriminator 1
	li 27,0
	.loc 6 1619 0 discriminator 1
	beq- 7,.L2786
	b .L2824
.LVL3736:
.L2844:
.LBB13389:
.LBB13373:
.LBB13362:
.LBB13356:
.LBB13350:
.LBB13345:
.LBB13340:
.LBB13335:
.LBB13330:
	.loc 16 388 0
	stw 11,0(31)
	b .L2801
.LVL3737:
.L2849:
.LBE13330:
.LBE13335:
.LBE13340:
.LBE13345:
.LBE13350:
.LBE13356:
.LBE13362:
.LBE13373:
.LBB13374:
.LBB13275:
.LBB13268:
.LBB13261:
.LBB13255:
.LBB13249:
.LBB13243:
.LBB13238:
	stw 11,0(31)
	b .L2814
.LVL3738:
.L2839:
.LBE13238:
.LBE13243:
.LBE13249:
.LBE13255:
.LBE13261:
.LBE13268:
.LBE13275:
.LBE13374:
.LBB13375:
.LBB13363:
.LBB13357:
.LBB13351:
	.loc 16 656 0
	lwz 4,8(31)
	mr 3,31
	bl _ZN6idListIP11idGuiScriptE6ResizeEi
	lwz 25,12(31)
	b .L2794
.LVL3739:
.L2841:
.LBE13351:
.LBE13357:
.LBE13363:
.LBE13375:
.LBB13376:
.LBB13276:
.LBB13269:
.LBB13262:
	lwz 4,8(31)
	mr 3,31
	bl _ZN6idListIP11idGuiScriptE6ResizeEi
	lwz 25,12(31)
	b .L2807
.LVL3740:
.L2838:
.LBE13262:
.LBE13269:
.LBE13276:
.LBE13376:
	.loc 6 1631 0
	lis 4,.LC129@ha
	mr 3,30
	la 4,.LC129@l(4)
	crxor 6,6,6
	bl _ZNK8idParser5ErrorEPKcz
.L2830:
	.loc 6 1676 0
	li 27,0
	b .L2786
.LVL3741:
.L2843:
.LBB13377:
.LBB13364:
.LBB13358:
.LBB13352:
.LBB13346:
.LBB13341:
.LBB13336:
.LBB13331:
.LBB13326:
.LBB13327:
	.loc 16 193 0
	cmpwi 7,25,0
	beq- 7,.L2799
	.loc 16 194 0
	mr 3,25
	bl _ZdaPv
.LVL3742:
.L2799:
	.loc 16 197 0
	stw 26,12(31)
	.loc 16 199 0
	li 25,0
	.loc 16 198 0
	stw 26,0(31)
	.loc 16 199 0
	stw 26,4(31)
	b .L2796
.LVL3743:
.L2848:
.LBE13327:
.LBE13326:
.LBE13331:
.LBE13336:
.LBE13341:
.LBE13346:
.LBE13352:
.LBE13358:
.LBE13364:
.LBE13377:
.LBB13378:
.LBB13277:
.LBB13270:
.LBB13263:
.LBB13256:
.LBB13250:
.LBB13244:
.LBB13239:
.LBB13234:
.LBB13235:
	.loc 16 193 0
	cmpwi 7,25,0
	beq- 7,.L2812
	.loc 16 194 0
	mr 3,25
	bl _ZdaPv
.LVL3744:
.L2812:
	.loc 16 197 0
	stw 26,12(31)
	.loc 16 199 0
	li 25,0
	.loc 16 198 0
	stw 26,0(31)
	.loc 16 199 0
	stw 26,4(31)
	b .L2809
.LVL3745:
.L2846:
.LBE13235:
.LBE13234:
.LBE13239:
.LBE13244:
.LBE13250:
.LBE13256:
.LBE13263:
.LBE13270:
.LBE13277:
.LBE13378:
.LBB13379:
.LBB13365:
.LBB13359:
.LBB13353:
.LBB13347:
.LBB13342:
.LBB13337:
.LBB13332:
	.loc 16 398 0
	lwz 0,0(31)
	lwz 25,12(31)
.LVL3746:
	slwi 0,0,2
	add 25,25,0
	b .L2796
.LVL3747:
.L2851:
.LBE13332:
.LBE13337:
.LBE13342:
.LBE13347:
.LBE13353:
.LBE13359:
.LBE13365:
.LBE13379:
.LBB13380:
.LBB13278:
.LBB13271:
.LBB13264:
.LBB13257:
.LBB13251:
.LBB13245:
.LBB13240:
	lwz 0,0(31)
	lwz 25,12(31)
.LVL3748:
	slwi 0,0,2
	add 25,25,0
	b .L2809
.LVL3749:
.L2840:
.LBE13240:
.LBE13245:
.LBE13251:
.LBE13257:
.LBE13264:
.LBE13271:
.LBE13278:
.LBE13380:
	.loc 6 1674 0
	lis 4,.LC131@ha
	mr 3,30
	la 4,.LC131@l(4)
	crxor 6,6,6
	bl _ZNK8idParser5ErrorEPKcz
	.loc 6 1675 0
	cmpwi 7,27,0
	beq- 7,.L2830
	.loc 6 1675 0 is_stmt 0 discriminator 1
	mr 3,27
	bl _ZN11idGuiScriptD1Ev
.LEHE216:
	mr 3,27
	.loc 6 1676 0 is_stmt 1 discriminator 1
	li 27,0
.LVL3750:
	.loc 6 1675 0 discriminator 1
	bl _ZN11idGuiScriptdlEPv
.LVL3751:
	b .L2786
.LVL3752:
.L2832:
	mr 31,3
.LVL3753:
	.loc 6 1645 0
	mr 3,27
	bl _ZN11idGuiScriptdlEPv
.LVL3754:
.L2821:
.LBE13389:
.LBB13390:
.LBB13391:
.LBB13392:
.LBB13393:
.LBB13394:
	.loc 4 501 0
	mr 3,28
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB217:
	bl _Unwind_Resume
.LEHE217:
.LVL3755:
.L2831:
	mr 31,3
.LVL3756:
	b .L2821
.LBE13394:
.LBE13393:
.LBE13392:
.LBE13391:
.LBE13390:
.LBE13398:
	.cfi_endproc
.LFE2948:
	.section	.gcc_except_table
.LLSDA2948:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2948-.LLSDACSB2948
.LLSDACSB2948:
	.uleb128 .LEHB212-.LFB2948
	.uleb128 .LEHE212-.LEHB212
	.uleb128 .L2831-.LFB2948
	.uleb128 0
	.uleb128 .LEHB213-.LFB2948
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L2832-.LFB2948
	.uleb128 0
	.uleb128 .LEHB214-.LFB2948
	.uleb128 .LEHE214-.LEHB214
	.uleb128 .L2831-.LFB2948
	.uleb128 0
	.uleb128 .LEHB215-.LFB2948
	.uleb128 .LEHE215-.LEHB215
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB216-.LFB2948
	.uleb128 .LEHE216-.LEHB216
	.uleb128 .L2831-.LFB2948
	.uleb128 0
	.uleb128 .LEHB217-.LFB2948
	.uleb128 .LEHE217-.LEHB217
	.uleb128 0
	.uleb128 0
.LLSDACSE2948:
	.section	".text"
	.size	_ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib, .-_ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib
	.align 2
	.globl _ZN8idWindow16ParseScriptEntryEPKcP8idParser
	.type	_ZN8idWindow16ParseScriptEntryEPKcP8idParser, @function
_ZN8idWindow16ParseScriptEntryEPKcP8idParser:
.LFB2951:
	.loc 6 1710 0
	.cfi_startproc
.LVL3757:
	stwu 1,-32(1)
.LCFI518:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 28,16(1)
.LBB13417:
	.loc 6 1718 0
	lis 28,.LANCHOR2@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
	la 28,.LANCHOR2@l(28)
.LBE13417:
	.loc 6 1710 0
	stw 0,36(1)
	stw 27,12(1)
.LBB13432:
	.loc 6 1718 0
	addi 28,28,-4
.LBE13432:
	.loc 6 1710 0
	stw 29,20(1)
	mr 27,5
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	stw 30,24(1)
	.loc 6 1711 0
	li 29,0
	.loc 6 1710 0
	stw 31,28(1)
	.loc 6 1710 0
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	mr 31,4
.LVL3758:
.L2855:
.LBB13433:
	.loc 6 1712 0
	lwzu 4,4(28)
	mr 3,31
	bl _ZN5idStr4IcmpEPKcS1_
	.loc 6 1711 0
	cmpwi 6,29,10
	.loc 6 1712 0
	cmpwi 7,3,0
	beq- 7,.L2857
.LVL3759:
	.loc 6 1711 0
	addi 29,29,1
.LVL3760:
	bne+ 6,.L2855
.LBE13433:
	.loc 6 1719 0
	lwz 0,36(1)
	li 3,0
	lwz 27,12(1)
.LVL3761:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL3762:
	lwz 30,24(1)
.LVL3763:
	lwz 31,28(1)
.LVL3764:
	addi 1,1,32
	.cfi_remember_state
.LCFI519:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL3765:
.L2857:
.LCFI520:
	.cfi_restore_state
.LBB13434:
	.loc 6 1713 0
	addi 29,29,184
	slwi 0,29,2
	lwzx 31,30,0
.LVL3766:
	cmpwi 7,31,0
	beq- 7,.L2854
	.loc 6 1713 0 is_stmt 0 discriminator 1
	mr 3,31
	bl _ZN15idGuiScriptListD1Ev
	mr 3,31
	bl _ZdlPv
.L2854:
	.loc 6 1714 0 is_stmt 1
	li 3,16
	slwi 29,29,2
	bl _Znwj
.LBB13418:
.LBB13419:
.LBB13420:
.LBB13421:
	.loc 16 197 0
	li 0,0
	stw 0,12(3)
.LBE13421:
.LBE13420:
.LBE13419:
.LBE13418:
	.loc 6 1714 0
	mr 9,3
.LVL3767:
.LBB13430:
.LBB13426:
.LBB13424:
.LBB13422:
	.loc 16 198 0
	stw 0,0(3)
.LBE13422:
.LBE13424:
.LBE13426:
.LBE13430:
	.loc 6 1715 0
	mr 4,27
.LBB13431:
.LBB13427:
.LBB13425:
.LBB13423:
	.loc 16 199 0
	stw 0,4(3)
.LVL3768:
.LBE13423:
.LBE13425:
.LBE13427:
.LBB13428:
.LBB13429:
	.loc 16 317 0
	li 0,4
	stw 0,8(3)
.LBE13429:
.LBE13428:
.LBE13431:
	.loc 6 1715 0
	mr 5,9
	.loc 6 1714 0
	stwx 3,30,29
	.loc 6 1715 0
	mr 3,30
.LVL3769:
	li 6,0
	li 7,0
.LBE13434:
	.loc 6 1719 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL3770:
	lwz 28,16(1)
	mtlr 0
	lwz 29,20(1)
	lwz 30,24(1)
.LVL3771:
	lwz 31,28(1)
	addi 1,1,32
.LCFI521:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
.LBB13435:
	.loc 6 1715 0
	b _ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib
.LVL3772:
.LVL3773:
.LVL3774:
.LVL3775:
.LVL3776:
.LVL3777:
.LBE13435:
	.cfi_endproc
.LFE2951:
	.size	_ZN8idWindow16ParseScriptEntryEPKcP8idParser, .-_ZN8idWindow16ParseScriptEntryEPKcP8idParser
	.section	.text._ZN6idListIP8idWindowE6ResizeEi,"axG",@progbits,_ZN6idListIP8idWindowE6ResizeEi,comdat
	.align 2
	.weak	_ZN6idListIP8idWindowE6ResizeEi
	.type	_ZN6idListIP8idWindowE6ResizeEi, @function
_ZN6idListIP8idWindowE6ResizeEi:
.LFB3360:
	.loc 16 368 0
	.cfi_startproc
.LVL3778:
.LBB13440:
	.loc 16 375 0
	cmpwi 0,4,0
.LBE13440:
	.loc 16 368 0
	mflr 0
	stwu 1,-16(1)
.LCFI522:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LBB13443:
	.loc 16 375 0
	ble- 0,.L2865
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 16 380 0
	lwz 0,4(3)
	cmpw 7,0,4
	beq- 7,.L2858
	.loc 16 387 0
	lwz 0,0(3)
	.loc 16 385 0
	lwz 30,12(3)
.LVL3779:
	.loc 16 387 0
	cmpw 7,4,0
	.loc 16 386 0
	stw 4,4(3)
	.loc 16 387 0
	blt- 7,.L2866
.L2862:
	.loc 16 392 0
	slwi 3,4,2
.LVL3780:
	bl _Znaj
.LVL3781:
	.loc 16 393 0
	lwz 0,0(31)
	.loc 16 392 0
	stw 3,12(31)
.LVL3782:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2863
	.loc 16 368 0
	addi 11,30,-4
.LBE13443:
	.loc 16 393 0
	li 9,0
	b .L2864
.LVL3783:
.L2867:
.LBB13444:
	lwz 3,12(31)
.LVL3784:
.L2864:
	.loc 16 394 0 discriminator 2
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0 discriminator 2
	addi 9,9,1
.LVL3785:
	.loc 16 394 0 discriminator 2
	stwx 10,3,0
	.loc 16 393 0 discriminator 2
	lwz 0,0(31)
	cmpw 7,0,9
	bgt+ 7,.L2867
.LVL3786:
.L2863:
	.loc 16 398 0
	cmpwi 7,30,0
	beq- 7,.L2858
	.loc 16 399 0 discriminator 1
	mr 3,30
	bl _ZdaPv
.LVL3787:
.L2858:
.LBE13444:
	.loc 16 401 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3788:
	addi 1,1,16
	.cfi_remember_state
.LCFI523:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3789:
.L2866:
.LCFI524:
	.cfi_restore_state
.LBB13445:
	.loc 16 388 0
	stw 4,0(3)
	b .L2862
.LVL3790:
.L2865:
.LBB13441:
.LBB13442:
	.loc 16 193 0
	lwz 3,12(3)
.LVL3791:
	cmpwi 7,3,0
	beq- 7,.L2860
	.loc 16 194 0
	bl _ZdaPv
.LVL3792:
.L2860:
	.loc 16 197 0
	li 0,0
	stw 0,12(31)
	.loc 16 198 0
	stw 0,0(31)
	.loc 16 199 0
	stw 0,4(31)
	b .L2858
.LBE13442:
.LBE13441:
.LBE13445:
	.cfi_endproc
.LFE3360:
	.size	_ZN6idListIP8idWindowE6ResizeEi, .-_ZN6idListIP8idWindowE6ResizeEi
	.section	".text"
	.align 2
	.globl _ZN8idWindow8AddChildEPS_
	.type	_ZN8idWindow8AddChildEPS_, @function
_ZN8idWindow8AddChildEPS_:
.LFB2994:
	.loc 6 3863 0
	.cfi_startproc
.LVL3793:
	mflr 0
	stwu 1,-24(1)
.LCFI525:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 30,16(1)
	.loc 6 3864 0
	addi 30,3,680
	.cfi_offset 30, -8
.LVL3794:
	.loc 6 3863 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB13455:
.LBB13456:
	.loc 16 655 0
	lwz 29,692(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,29,0
	beq- 7,.L2881
.LVL3795:
.L2869:
.LBB13457:
	.loc 16 659 0
	lwz 0,680(31)
	lwz 9,684(31)
	cmpw 7,0,9
	beq- 7,.L2870
.L2880:
.LBB13458:
.LBB13459:
.LBB13460:
	.loc 16 399 0
	slwi 0,0,2
	add 29,29,0
.L2871:
.LBE13460:
.LBE13459:
.LBE13458:
.LBE13457:
	.loc 16 669 0
	stw 28,0(29)
	.loc 16 670 0
	lwz 9,680(31)
	addi 0,9,1
	stw 0,680(31)
.LBE13456:
.LBE13455:
	.loc 6 3864 0
	stw 9,44(28)
	.loc 6 3865 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL3796:
	mtlr 0
	lwz 29,12(1)
.LVL3797:
	lwz 30,16(1)
.LVL3798:
	lwz 31,20(1)
.LVL3799:
	addi 1,1,24
	.cfi_remember_state
.LCFI526:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL3800:
.L2870:
.LCFI527:
	.cfi_restore_state
.LBB13476:
.LBB13475:
.LBB13473:
.LBB13471:
	.loc 16 662 0
	lwz 11,688(31)
	cmpwi 7,11,0
	beq- 7,.L2882
.L2872:
	.loc 16 665 0
	add 10,9,11
.LVL3801:
	.loc 16 666 0
	divw 10,10,11
.LVL3802:
.LBB13467:
.LBB13463:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3803:
	ble- 0,.L2883
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L2880
.LVL3804:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,684(31)
	.loc 16 387 0
	bgt- 7,.L2884
.L2876:
	.loc 16 392 0
	slwi 3,11,2
	bl _Znaj
.LVL3805:
	.loc 16 393 0
	lwz 0,680(31)
	.loc 16 392 0
	stw 3,692(31)
.LVL3806:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2877
	.loc 6 3863 0
	addi 11,29,-4
.LBE13463:
.LBE13467:
	.loc 16 393 0
	li 9,0
	b .L2878
.LVL3807:
.L2885:
.LBB13468:
.LBB13464:
	lwz 3,692(31)
.LVL3808:
.L2878:
	.loc 16 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 16 393 0
	addi 9,9,1
.LVL3809:
	.loc 16 394 0
	stwx 10,3,0
	.loc 16 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L2885
.LVL3810:
.L2877:
	.loc 16 398 0
	cmpwi 7,29,0
	beq- 7,.L2886
	.loc 16 399 0
	mr 3,29
	bl _ZdaPv
	lwz 0,680(31)
	lwz 29,692(31)
.LVL3811:
	b .L2880
.LVL3812:
.L2882:
.LBE13464:
.LBE13468:
	.loc 16 663 0
	li 11,16
	stw 11,688(31)
	b .L2872
.LVL3813:
.L2884:
.LBB13469:
.LBB13465:
	.loc 16 388 0
	stw 11,680(31)
	b .L2876
.LVL3814:
.L2881:
.LBE13465:
.LBE13469:
.LBE13471:
.LBE13473:
	.loc 16 656 0
	lwz 4,688(3)
	mr 3,30
	bl _ZN6idListIP8idWindowE6ResizeEi
	lwz 29,692(31)
	b .L2869
.LVL3815:
.L2883:
.LBB13474:
.LBB13472:
.LBB13470:
.LBB13466:
.LBB13461:
.LBB13462:
	.loc 16 193 0
	cmpwi 7,29,0
	beq- 7,.L2874
	.loc 16 194 0
	mr 3,29
	bl _ZdaPv
.LVL3816:
.L2874:
	.loc 16 197 0
	li 0,0
	.loc 16 199 0
	li 29,0
	.loc 16 197 0
	stw 0,692(31)
	.loc 16 198 0
	stw 0,680(31)
	.loc 16 199 0
	stw 0,684(31)
	b .L2871
.LVL3817:
.L2886:
.LBE13462:
.LBE13461:
	.loc 16 398 0
	lwz 0,680(31)
	lwz 29,692(31)
.LVL3818:
	slwi 0,0,2
	add 29,29,0
	b .L2871
.LBE13466:
.LBE13470:
.LBE13472:
.LBE13474:
.LBE13475:
.LBE13476:
	.cfi_endproc
.LFE2994:
	.size	_ZN8idWindow8AddChildEPS_, .-_ZN8idWindow8AddChildEPS_
	.align 2
	.globl _ZN8idWindow11InsertChildEPS_S0_
	.type	_ZN8idWindow11InsertChildEPS_S0_, @function
_ZN8idWindow11InsertChildEPS_S0_:
.LFB3006:
	.loc 6 4124 0
	.cfi_startproc
.LVL3819:
	stwu 1,-24(1)
.LCFI528:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 31,20(1)
.LBB13494:
	.loc 6 4125 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl _ZN8idWindow8AddChildEPS_
.LVL3820:
.LBB13495:
	.loc 6 4134 0
	cmpwi 7,29,0
.LBE13495:
	.loc 6 4127 0
	stw 30,676(28)
.LVL3821:
.LBB13518:
	.loc 6 4134 0
	beq- 7,.L2888
.LVL3822:
.LBB13496:
.LBB13497:
	.loc 6 4264 0
	lwz 11,696(30)
	lwz 9,708(30)
.LBB13498:
	.loc 6 4084 0
	cmpwi 7,11,0
	ble- 7,.L2890
.LVL3823:
	.loc 6 4085 0
	lwz 0,0(9)
	li 31,0
	mtctr 11
	cmpw 7,29,0
	bne+ 7,.L2892
	b .L2891
.LVL3824:
.L2894:
	lwzx 0,9,0
	cmpw 7,29,0
	beq- 7,.L2893
.LVL3825:
.L2892:
	.loc 6 4084 0
	addi 31,31,1
.LVL3826:
	.loc 6 4085 0
	slwi 0,31,3
	.loc 6 4084 0
	bdnz .L2894
.LVL3827:
.L2890:
.LBE13498:
.LBE13497:
.LBE13496:
.LBE13518:
.LBB13519:
.LBB13520:
	.loc 16 655 0
	cmpwi 7,9,0
.LBE13520:
.LBE13519:
	.loc 6 4143 0
	addi 31,30,696
.LVL3828:
.LBB13528:
.LBB13524:
	.loc 16 655 0
	beq- 7,.L2908
.L2902:
.LBB13521:
	.loc 16 659 0
	lwz 9,696(30)
	lwz 0,700(30)
	cmpw 7,9,0
	beq- 7,.L2909
.L2903:
.LBE13521:
	.loc 16 669 0
	lwz 11,708(30)
	slwi 9,9,3
	li 0,0
.LBE13524:
.LBE13528:
.LBE13494:
	.loc 6 4145 0
	li 3,1
.LBB13536:
.LBB13529:
.LBB13525:
	.loc 16 669 0
	add 10,11,9
	stwx 28,11,9
	stw 0,4(10)
	.loc 16 670 0
	lwz 9,696(30)
	addi 0,9,1
	stw 0,696(30)
.LBE13525:
.LBE13529:
.LBE13536:
	.loc 6 4145 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL3829:
	mtlr 0
	lwz 29,12(1)
.LVL3830:
	lwz 30,16(1)
.LVL3831:
	lwz 31,20(1)
.LVL3832:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI529:
	.cfi_def_cfa_offset 0
	blr
.LVL3833:
.L2893:
.LCFI530:
	.cfi_restore_state
.LBB13537:
.LBB13530:
.LBB13514:
	.loc 6 4137 0
	cmpwi 7,31,-1
	beq- 7,.L2890
.LVL3834:
.L2891:
.LBB13499:
.LBB13500:
.LBB13501:
	.loc 16 692 0
	lwz 4,700(30)
.LBE13501:
.LBE13500:
.LBE13499:
	.loc 6 4138 0
	addi 3,30,696
.LVL3835:
.LBB13511:
.LBB13508:
.LBB13504:
	.loc 16 692 0
	cmpw 7,4,11
	beq- 7,.L2910
.LBE13504:
	.loc 16 702 0
	cmpwi 7,31,0
	li 7,0
	.loc 16 703 0
	li 0,0
	.loc 16 702 0
	blt- 7,.L2897
.LVL3836:
.L2911:
	cmpw 7,11,31
	mr 0,11
	ble- 7,.L2898
	mr 0,31
.L2898:
	slwi 7,0,3
.L2897:
.LVL3837:
.LBB13505:
	.loc 16 708 0
	cmpw 7,0,11
	bge- 7,.L2899
	subf 0,0,11
.LVL3838:
	slwi 9,11,3
	mtctr 0
.LVL3839:
.L2900:
	.loc 16 709 0
	lwz 8,708(30)
	add 8,8,9
	.loc 16 708 0
	addi 9,9,-8
	.loc 16 709 0
	lwz 10,-8(8)
	lwz 11,-4(8)
	stw 10,0(8)
	stw 11,4(8)
	.loc 16 708 0
	bdnz .L2900
	lwz 11,696(30)
.L2899:
.LBE13505:
	.loc 16 712 0
	lwz 9,708(30)
	li 0,0
	.loc 16 711 0
	addi 11,11,1
.LBE13508:
.LBE13511:
.LBE13514:
.LBE13530:
.LBE13537:
	.loc 6 4145 0
	li 3,1
.LBB13538:
.LBB13531:
.LBB13515:
.LBB13512:
.LBB13509:
	.loc 16 712 0
	add 10,9,7
	.loc 16 711 0
	stw 11,696(30)
	.loc 16 712 0
	stwx 28,9,7
	stw 0,4(10)
.LBE13509:
.LBE13512:
.LBE13515:
.LBE13531:
.LBE13538:
	.loc 6 4145 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL3840:
	mtlr 0
	lwz 29,12(1)
.LVL3841:
	lwz 30,16(1)
.LVL3842:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI531:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL3843:
.L2910:
.LCFI532:
	.cfi_restore_state
.LBB13539:
.LBB13532:
.LBB13516:
.LBB13513:
.LBB13510:
.LBB13506:
.LBB13502:
	.loc 16 695 0
	lwz 0,704(30)
	cmpwi 7,0,0
	bne- 7,.L2896
	.loc 16 696 0
	li 0,16
	stw 0,704(30)
.L2896:
	.loc 16 698 0
	add 4,4,0
.LVL3844:
	.loc 16 699 0
	divw 4,4,0
.LVL3845:
	mullw 4,4,0
	bl _ZN6idListI9drawWin_tE6ResizeEi
.LVL3846:
.LBE13502:
.LBE13506:
	.loc 16 702 0
	cmpwi 7,31,0
.LBB13507:
.LBB13503:
	.loc 16 699 0
	lwz 11,696(30)
.LBE13503:
.LBE13507:
	.loc 16 702 0
	li 7,0
	.loc 16 703 0
	li 0,0
	.loc 16 702 0
	bge+ 7,.L2911
	b .L2897
.LVL3847:
.L2909:
.LBE13510:
.LBE13513:
.LBE13516:
.LBE13532:
.LBB13533:
.LBB13526:
.LBB13523:
.LBB13522:
	.loc 16 662 0
	lwz 0,704(30)
	cmpwi 7,0,0
	bne- 7,.L2904
	.loc 16 663 0
	li 0,16
	stw 0,704(30)
.L2904:
	.loc 16 665 0
	add 9,9,0
.LVL3848:
	.loc 16 666 0
	mr 3,31
	divw 4,9,0
	mullw 4,4,0
	bl _ZN6idListI9drawWin_tE6ResizeEi
.LVL3849:
	lwz 9,696(30)
	b .L2903
.LVL3850:
.L2888:
.LBE13522:
.LBE13523:
.LBE13526:
.LBE13533:
.LBB13534:
.LBB13517:
	.loc 6 4139 0
	lwz 9,708(30)
	b .L2890
.LVL3851:
.L2908:
.LBE13517:
.LBE13534:
.LBB13535:
.LBB13527:
	.loc 16 656 0
	lwz 4,704(30)
	mr 3,31
	bl _ZN6idListI9drawWin_tE6ResizeEi
	b .L2902
.LBE13527:
.LBE13535:
.LBE13539:
	.cfi_endproc
.LFE3006:
	.size	_ZN8idWindow11InsertChildEPS_S0_, .-_ZN8idWindow11InsertChildEPS_S0_
	.align 2
	.globl _ZN8idWindow5ParseEP8idParserb
	.type	_ZN8idWindow5ParseEP8idParserb, @function
_ZN8idWindow5ParseEP8idParserb:
.LFB2961:
	.loc 6 2162 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2961
.LVL3852:
	stwu 1,-720(1)
.LCFI533:
	.cfi_def_cfa_offset 720
.LVL3853:
	mflr 0
.LBB13868:
.LBB13869:
.LBB13870:
.LBB13871:
.LBB13872:
	.loc 4 357 0
	li 9,20
	.loc 4 358 0
	addi 11,1,572
.LBE13872:
.LBE13871:
.LBE13870:
.LBE13869:
.LBE13868:
	.loc 6 2162 0
	stw 20,672(1)
.LBB14541:
.LBB13885:
.LBB13881:
.LBB13877:
.LBB13873:
	.loc 4 358 0
	stw 11,564(1)
.LBE13873:
.LBE13877:
.LBE13881:
.LBE13885:
.LBB13886:
.LBB13887:
.LBB13888:
.LBB13889:
	addi 11,1,492
	stw 11,484(1)
.LBE13889:
.LBE13888:
.LBE13887:
.LBE13886:
.LBB13896:
.LBB13897:
.LBB13898:
.LBB13899:
	addi 11,1,412
.LBE13899:
.LBE13898:
.LBE13897:
.LBE13896:
.LBE14541:
	.loc 6 2162 0
	stw 0,724(1)
.LBB14542:
	.loc 6 2165 0
	mr. 20,5
	.cfi_offset 20, -48
	.cfi_offset 65, 4
.LBB13909:
.LBB13882:
.LBB13878:
.LBB13874:
	.loc 4 356 0
	li 0,0
.LBE13874:
.LBE13878:
.LBE13882:
.LBE13909:
.LBB13910:
.LBB13906:
.LBB13903:
.LBB13900:
	.loc 4 358 0
	stw 11,404(1)
.LBE13900:
.LBE13903:
.LBE13906:
.LBE13910:
.LBB13911:
.LBB13912:
.LBB13913:
.LBB13914:
	addi 11,1,332
.LBE13914:
.LBE13913:
.LBE13912:
.LBE13911:
.LBE14542:
	.loc 6 2162 0
	stw 29,708(1)
	stw 31,716(1)
	mr 29,4
	.cfi_offset 31, -4
	.cfi_offset 29, -12
.LBB14543:
.LBB13921:
.LBB13883:
.LBB13879:
.LBB13875:
	.loc 4 357 0
	stw 9,568(1)
.LBE13875:
.LBE13879:
.LBE13883:
.LBE13921:
.LBE14543:
	.loc 6 2162 0
	mr 31,3
.LBB14544:
.LBB13922:
.LBB13894:
.LBB13892:
.LBB13890:
	.loc 4 357 0
	stw 9,488(1)
.LBE13890:
.LBE13892:
.LBE13894:
.LBE13922:
.LBB13923:
.LBB13907:
.LBB13904:
.LBB13901:
	stw 9,408(1)
.LBE13901:
.LBE13904:
.LBE13907:
.LBE13923:
.LBE14544:
	.loc 6 2162 0
	stw 14,648(1)
	stw 15,652(1)
	stw 16,656(1)
	stw 17,660(1)
	stw 18,664(1)
	stw 19,668(1)
	stw 21,676(1)
	stw 22,680(1)
	stw 23,684(1)
	stw 24,688(1)
	stw 25,692(1)
	stw 26,696(1)
	stw 27,700(1)
	stw 28,704(1)
	stw 30,712(1)
.LBB14545:
.LBB13924:
.LBB13884:
.LBB13880:
.LBB13876:
	.loc 4 356 0
	stw 0,560(1)
	.loc 4 359 0
	stb 0,572(1)
.LVL3854:
.LBE13876:
.LBE13880:
.LBE13884:
.LBE13924:
.LBB13925:
.LBB13895:
.LBB13893:
.LBB13891:
	.loc 4 356 0
	stw 0,480(1)
	.loc 4 359 0
	stb 0,492(1)
.LVL3855:
.LBE13891:
.LBE13893:
.LBE13895:
.LBE13925:
.LBB13926:
.LBB13908:
.LBB13905:
.LBB13902:
	.loc 4 356 0
	stw 0,400(1)
	.loc 4 359 0
	stb 0,412(1)
.LVL3856:
.LBE13902:
.LBE13905:
.LBE13908:
.LBE13926:
.LBB13927:
.LBB13919:
.LBB13917:
.LBB13915:
	.loc 4 356 0
	stw 0,320(1)
	.loc 4 357 0
	stw 9,328(1)
	.loc 4 358 0
	stw 11,324(1)
.LBE13915:
.LBE13917:
.LBE13919:
.LBE13927:
.LBB13928:
.LBB13929:
.LBB13930:
.LBB13931:
	addi 11,1,252
	stw 11,244(1)
.LBE13931:
.LBE13930:
.LBE13929:
.LBE13928:
.LBB13938:
.LBB13939:
.LBB13940:
.LBB13941:
	addi 11,1,172
.LBE13941:
.LBE13940:
.LBE13939:
.LBE13938:
.LBB13948:
.LBB13936:
.LBB13934:
.LBB13932:
	.loc 4 357 0
	stw 9,248(1)
.LBE13932:
.LBE13934:
.LBE13936:
.LBE13948:
.LBB13949:
.LBB13946:
.LBB13944:
.LBB13942:
	stw 9,168(1)
	.loc 4 358 0
	stw 11,164(1)
.LBE13942:
.LBE13944:
.LBE13946:
.LBE13949:
.LBB13950:
.LBB13951:
.LBB13952:
.LBB13953:
	addi 11,1,92
	.loc 4 357 0
	stw 9,88(1)
.LBE13953:
.LBE13952:
.LBE13951:
.LBE13950:
.LBB13957:
.LBB13958:
.LBB13959:
	stw 9,52(1)
	.loc 4 358 0
	addi 9,1,56
.LBE13959:
.LBE13958:
.LBE13957:
.LBB13962:
.LBB13920:
.LBB13918:
.LBB13916:
	.loc 4 359 0
	stb 0,332(1)
.LVL3857:
.LBE13916:
.LBE13918:
.LBE13920:
.LBE13962:
.LBB13963:
.LBB13937:
.LBB13935:
.LBB13933:
	.loc 4 356 0
	stw 0,240(1)
	.loc 4 359 0
	stb 0,252(1)
.LVL3858:
.LBE13933:
.LBE13935:
.LBE13937:
.LBE13963:
.LBB13964:
.LBB13947:
.LBB13945:
.LBB13943:
	.loc 4 356 0
	stw 0,160(1)
	.loc 4 359 0
	stb 0,172(1)
.LVL3859:
.LBE13943:
.LBE13945:
.LBE13947:
.LBE13964:
.LBB13965:
.LBB13956:
.LBB13955:
.LBB13954:
	.loc 4 356 0
	stw 0,80(1)
	.loc 4 358 0
	stw 11,84(1)
	.loc 4 359 0
	stb 0,92(1)
.LVL3860:
.LBE13954:
.LBE13955:
.LBE13956:
.LBE13965:
.LBB13966:
.LBB13961:
.LBB13960:
	.loc 4 356 0
	stw 0,44(1)
	.loc 4 358 0
	stw 9,48(1)
	.loc 4 359 0
	stb 0,56(1)
.LBE13960:
.LBE13961:
.LBE13966:
	.loc 6 2165 0
	beq- 0,.L2913
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	.cfi_offset 14, -72
	addi 30,1,560
	addi 28,1,480
	addi 24,1,44
.LEHB218:
	.loc 6 2166 0
	bl _ZN8idWindow7CleanUpEv
.LVL3861:
.L2913:
.LBB13967:
.LBB13968:
	.loc 16 193 0
	lwz 3,796(31)
	cmpwi 7,3,0
	beq- 7,.L2914
	.loc 16 194 0
	bl _ZdaPv
.L2914:
.LBE13968:
.LBE13967:
.LBB13971:
.LBB13972:
	.loc 16 193 0
	lwz 3,812(31)
.LBE13972:
.LBE13971:
.LBB13978:
.LBB13969:
	.loc 16 197 0
	li 0,0
	stw 0,796(31)
.LBE13969:
.LBE13978:
.LBB13979:
.LBB13973:
	.loc 16 193 0
	cmpwi 7,3,0
.LBE13973:
.LBE13979:
.LBB13980:
.LBB13970:
	.loc 16 198 0
	stw 0,784(31)
	.loc 16 199 0
	stw 0,788(31)
.LVL3862:
.LBE13970:
.LBE13980:
.LBB13981:
.LBB13974:
	.loc 16 193 0
	beq- 7,.L2915
	.loc 16 194 0
	bl _ZdaPv
.L2915:
	.loc 16 197 0
	li 0,0
.LBE13974:
.LBE13981:
	.loc 6 2174 0
	addi 17,31,852
.LBB13982:
.LBB13975:
	.loc 16 197 0
	stw 0,812(31)
.LBE13975:
.LBE13982:
	.loc 6 2174 0
	mr 3,17
.LBB13983:
.LBB13976:
	.loc 16 198 0
	stw 0,800(31)
.LBE13976:
.LBE13983:
	.loc 6 2174 0
	li 4,1
.LBB13984:
.LBB13977:
	.loc 16 199 0
	stw 0,804(31)
	addi 30,1,560
	addi 28,1,480
	addi 24,1,44
.LBE13977:
.LBE13984:
	.loc 6 2174 0
	bl _ZN6idListIP12rvNamedEventE14DeleteContentsEb
	.loc 6 2176 0
	addi 30,1,560
	mr 3,29
	li 4,4
	li 5,0
	mr 6,30
	addi 28,1,480
	addi 24,1,44
	bl _ZN8idParser15ExpectTokenTypeEiiP7idToken
.LVL3863:
	.loc 6 2178 0
	lwz 4,4(30)
	mr 3,31
	addi 28,1,480
	addi 24,1,44
	bl _ZN8idWindow15SetInitialStateEPKc
	.loc 6 2180 0
	lis 4,.LC126@ha
	mr 3,29
	la 4,.LC126@l(4)
	addi 28,1,480
	addi 24,1,44
	bl _ZN8idParser17ExpectTokenStringEPKc
	.loc 6 2181 0
	mr 3,29
	mr 4,30
	addi 28,1,480
	addi 24,1,44
	bl _ZN8idParser14ExpectAnyTokenEP7idToken
	lis 23,.LC127@ha
.LBB13985:
.LBB13986:
.LBB13987:
.LBB13988:
	.loc 4 653 0
	lis 21,.LC132@ha
.LBE13988:
.LBE13987:
.LBB13991:
.LBB13992:
.LBB13993:
.LBB13994:
.LBB13995:
	.loc 10 197 0
	lis 18,.LC3@ha
.LBE13995:
.LBE13994:
.LBE13993:
.LBE13992:
.LBE13991:
.LBB14140:
.LBB14141:
	.loc 4 653 0
	lis 26,.LC133@ha
.LBE14141:
.LBE14140:
.LBB14144:
.LBB14145:
.LBB14146:
	lis 16,.LC151@ha
.LBE14146:
.LBE14145:
.LBB14149:
.LBB14150:
.LBB14151:
	lis 19,.LC134@ha
.LBE14151:
.LBE14150:
.LBB14154:
.LBB14155:
.LBB14156:
	lis 15,.LC135@ha
	addi 28,1,480
	addi 24,1,44
	la 23,.LC127@l(23)
.LBE14156:
.LBE14155:
.LBE14154:
.LBE14149:
.LBE14144:
.LBB14425:
.LBB13989:
	la 21,.LC132@l(21)
.LBE13989:
.LBE14425:
.LBB14426:
.LBB14030:
.LBB14022:
.LBB14000:
.LBB13996:
	.loc 3 410 0
	li 22,0
	.loc 10 197 0
	la 18,.LC3@l(18)
.LBE13996:
.LBE14000:
.LBE14022:
.LBE14030:
.LBE14426:
.LBB14427:
.LBB14142:
	.loc 4 653 0
	la 26,.LC133@l(26)
.LBE14142:
.LBE14427:
.LBB14428:
.LBB14367:
.LBB14147:
	la 16,.LC151@l(16)
.LBE14147:
.LBE14367:
.LBB14368:
.LBB14352:
.LBB14152:
	la 19,.LC134@l(19)
.LBE14152:
.LBE14352:
.LBB14353:
.LBB14159:
.LBB14157:
	la 15,.LC135@l(15)
.LVL3864:
.L2916:
.LBE14157:
.LBE14159:
.LBE14353:
.LBE14368:
.LBE14428:
.LBE13986:
.LBE13985:
.LBB14458:
.LBB14459:
.LBB14460:
	.loc 4 653 0 is_stmt 0 discriminator 1
	lwz 3,4(30)
	mr 4,23
	bl _ZN5idStr3CmpEPKcS1_
.LBE14460:
.LBE14459:
.LBE14458:
	.loc 6 2192 0 is_stmt 1 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3175
.LBB14461:
	.loc 6 2194 0
	mr 3,29
	bl _ZN8idParser9SetMarkerEv
.LVL3865:
.LBB14453:
.LBB14429:
.LBB13990:
	.loc 4 653 0
	lwz 3,4(30)
	mr 4,21
	bl _ZN5idStr3CmpEPKcS1_
.LBE13990:
.LBE14429:
	.loc 6 2196 0
	cmpwi 7,3,0
	mr 27,26
	bne- 7,.L3176
.L2917:
.LVL3866:
.LBB14430:
.LBB14031:
.LBB14032:
	.loc 4 653 0 discriminator 4
	lwz 3,4(30)
	mr 4,27
	bl _ZN5idStr3CmpEPKcS1_
.LBE14032:
.LBE14031:
	.loc 6 2197 0 discriminator 4
	cmpwi 0,3,0
	beq- 0,.L3177
.L2919:
	.loc 6 2201 0
	mr 3,29
	li 4,4
	li 5,0
	mr 6,30
	bl _ZN8idParser15ExpectTokenTypeEiiP7idToken
.LVL3867:
.LBB14033:
.LBB14034:
.LBB14035:
	.loc 6 4264 0
	lwz 27,0(30)
.LBB14036:
.LBB14037:
.LBB14038:
	.loc 4 350 0
	lwz 0,488(1)
.LBE14038:
.LBE14037:
	.loc 4 534 0
	addi 4,27,1
.LVL3868:
.LBB14041:
.LBB14039:
	.loc 4 350 0
	cmpw 7,4,0
	bgt- 7,.L3178
.LVL3869:
.L2925:
.LBE14039:
.LBE14041:
	.loc 4 535 0
	lwz 4,564(1)
	mr 5,27
	lwz 3,484(1)
	bl memcpy
	.loc 4 536 0
	lwz 9,484(1)
	li 0,0
.LBE14036:
.LBE14035:
.LBE14034:
.LBE14033:
	.loc 6 2203 0
	mr 3,29
.LBB14052:
.LBB14049:
.LBB14046:
.LBB14043:
	.loc 4 536 0
	stbx 0,9,27
.LBE14043:
.LBE14046:
.LBE14049:
.LBE14052:
	.loc 6 2203 0
	mr 4,30
.LBB14053:
.LBB14050:
.LBB14047:
.LBB14044:
	.loc 4 537 0
	stw 27,480(1)
.LBE14044:
.LBE14047:
	.loc 24 71 0
	lwz 0,592(1)
	lfd 0,616(1)
	stw 0,512(1)
	lwz 0,596(1)
	stfd 0,536(1)
	stw 0,516(1)
	lwz 0,600(1)
	stw 0,520(1)
	lwz 0,604(1)
	stw 0,524(1)
	lwz 0,608(1)
	stw 0,528(1)
	lwz 0,612(1)
	stw 0,532(1)
	lwz 0,624(1)
	stw 0,544(1)
	lwz 0,628(1)
	stw 0,548(1)
	lwz 0,632(1)
	stw 0,552(1)
.LBE14050:
.LBE14053:
	.loc 6 2203 0
	bl _ZN8idParser11UnreadTokenEP7idToken
	.loc 6 2204 0
	lwz 4,4(28)
	mr 3,31
	bl _ZN8idWindow15FindChildByNameEPKc
.LVL3870:
.LBB14054:
	.loc 6 2205 0
	mr. 27,3
	beq- 0,.L2926
	.loc 6 2205 0 is_stmt 0 discriminator 1
	lwz 0,0(27)
	cmpwi 7,0,0
	beq- 7,.L2926
	.loc 6 2206 0 is_stmt 1
	mr 3,31
.LVL3871:
	bl _ZN8idWindow24SaveExpressionParseStateEv
	.loc 6 2207 0
	lwz 3,0(27)
	mr 4,29
	mr 5,20
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
	.loc 6 2208 0
	mr 3,31
	bl _ZN8idWindow27RestoreExpressionParseStateEv
.LVL3872:
.L2927:
.LBE14054:
.LBE14430:
.LBE14453:
	.loc 6 2556 0
	mr 3,29
	mr 4,30
	bl _ZN8idParser9ReadTokenEP7idToken
	cmpwi 7,3,0
	bne+ 7,.L2916
	.loc 6 2557 0
	lis 4,.LC129@ha
	mr 3,29
	la 4,.LC129@l(4)
	crxor 6,6,6
	bl _ZNK8idParser5ErrorEPKcz
.L2979:
.LVL3873:
.LBB14454:
.LBB14431:
.LBB14369:
.LBB14354:
.LBB14160:
.LBB14161:
.LBB14162:
.LBB14163:
.LBB14164:
.LBB14165:
.LBB14166:
.LBB14167:
	.loc 16 663 0
	li 29,0
.LVL3874:
.L3048:
.LBE14167:
.LBE14166:
.LBE14165:
.LBE14164:
.LBE14163:
.LBE14162:
.LBE14161:
.LBE14160:
.LBE14354:
.LBE14369:
.LBE14431:
.LBE14454:
.LBE14461:
	.loc 6 2567 0
	mr 3,31
	bl _ZN8idWindow14SetupFromStateEv
	.loc 6 2568 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 6 2580 0
	bl _Z21Sys_PrintMainHeapInfov
.LEHE218:
.L2974:
.LVL3875:
.LBB14462:
.LBB14463:
.LBB14464:
	.loc 4 501 0
	mr 3,24
.LEHB219:
	bl _ZN5idStr8FreeDataEv
.LEHE219:
.LVL3876:
.LBE14464:
.LBE14463:
.LBE14462:
.LBB14465:
.LBB14466:
.LBB14467:
.LBB14468:
.LBB14469:
	addi 3,1,80
.LEHB220:
	bl _ZN5idStr8FreeDataEv
.LEHE220:
.LVL3877:
.LBE14469:
.LBE14468:
.LBE14467:
.LBE14466:
.LBE14465:
.LBB14470:
.LBB14471:
.LBB14472:
.LBB14473:
.LBB14474:
	addi 3,1,160
.LEHB221:
	bl _ZN5idStr8FreeDataEv
.LEHE221:
.LVL3878:
.LBE14474:
.LBE14473:
.LBE14472:
.LBE14471:
.LBE14470:
.LBB14475:
.LBB14476:
.LBB14477:
.LBB14478:
.LBB14479:
	addi 3,1,240
.LEHB222:
	bl _ZN5idStr8FreeDataEv
.LEHE222:
.LVL3879:
.LBE14479:
.LBE14478:
.LBE14477:
.LBE14476:
.LBE14475:
.LBB14480:
.LBB14481:
.LBB14482:
.LBB14483:
.LBB14484:
	addi 3,1,320
.LEHB223:
	bl _ZN5idStr8FreeDataEv
.LEHE223:
.LVL3880:
.LBE14484:
.LBE14483:
.LBE14482:
.LBE14481:
.LBE14480:
.LBB14485:
.LBB14486:
.LBB14487:
.LBB14488:
.LBB14489:
	addi 3,1,400
.LEHB224:
	bl _ZN5idStr8FreeDataEv
.LEHE224:
.LVL3881:
.LBE14489:
.LBE14488:
.LBE14487:
.LBE14486:
.LBE14485:
.LBB14490:
.LBB14491:
.LBB14492:
.LBB14493:
.LBB14494:
	mr 3,28
.LEHB225:
	bl _ZN5idStr8FreeDataEv
.LEHE225:
.LVL3882:
.LBE14494:
.LBE14493:
.LBE14492:
.LBE14491:
.LBE14490:
.LBB14495:
.LBB14496:
.LBB14497:
.LBB14498:
.LBB14499:
	mr 3,30
.LEHB226:
	bl _ZN5idStr8FreeDataEv
.LEHE226:
.LBE14499:
.LBE14498:
.LBE14497:
.LBE14496:
.LBE14495:
.LBE14545:
	.loc 6 2582 0
	lwz 0,724(1)
	mr 3,29
	lwz 14,648(1)
	mtlr 0
	lwz 15,652(1)
	lwz 16,656(1)
	lwz 17,660(1)
	lwz 18,664(1)
	lwz 19,668(1)
	lwz 20,672(1)
	lwz 21,676(1)
	lwz 22,680(1)
	lwz 23,684(1)
	lwz 24,688(1)
	lwz 25,692(1)
	lwz 26,696(1)
	lwz 27,700(1)
	lwz 28,704(1)
	lwz 29,708(1)
	lwz 30,712(1)
	lwz 31,716(1)
.LVL3883:
	addi 1,1,720
	.cfi_remember_state
.LCFI534:
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
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL3884:
.L3177:
.LCFI535:
	.cfi_restore_state
.LBB14546:
.LBB14500:
.LBB14455:
.LBB14432:
.LBB14098:
.LBB14023:
	.loc 3 115 0
	lwz 25,232(31)
	.loc 3 114 0
	stb 3,241(31)
	.loc 3 115 0
	cmpwi 7,25,0
	beq- 7,.L2920
.LBE14023:
	.loc 6 4264 0
	lwz 27,236(31)
.LBB14024:
.LBB14001:
.LBB14002:
	.loc 3 53 0
	cmpwi 7,27,0
	beq- 7,.L3049
	.loc 3 54 0
	lbz 0,0(27)
	li 4,0
	cmpwi 7,0,42
	beq- 7,.L3179
.L2921:
.LVL3885:
.LBE14002:
.LBE14001:
.LBB14016:
.LBB13997:
	.loc 10 197 0
	mr 3,18
.LEHB227:
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 5,3
	mr 4,27
	mr 3,25
	bl _ZN6idDict3SetEPKcS1_
.LVL3886:
.L2920:
.LBE13997:
.LBE14016:
.LBE14024:
.LBE14098:
.LBB14099:
.LBB14100:
	.loc 3 411 0
	lwz 25,264(31)
.LBE14100:
.LBE14099:
.LBB14124:
.LBB14025:
.LBB14017:
.LBB13998:
	.loc 3 410 0
	stw 22,276(31)
.LBE13998:
.LBE14017:
.LBE14025:
.LBE14124:
.LBB14125:
.LBB14119:
	.loc 3 411 0
	cmpwi 7,25,0
.LBE14119:
.LBE14125:
.LBB14126:
.LBB14026:
.LBB14018:
.LBB13999:
	.loc 3 410 0
	stw 22,280(31)
	stw 22,284(31)
	stw 22,288(31)
.LBE13999:
.LBE14018:
.LBE14026:
.LBE14126:
.LBB14127:
.LBB14120:
	.loc 3 411 0
	beq- 7,.L2919
.LVL3887:
.LBE14120:
	.loc 6 4264 0
	lwz 27,268(31)
.LBB14121:
.LBB14101:
	.loc 3 412 0
	lwz 10,276(31)
.LBB14102:
.LBB14103:
	.loc 3 53 0
	cmpwi 7,27,0
.LBE14103:
.LBE14102:
	.loc 3 412 0
	lwz 11,280(31)
	lwz 9,284(31)
	lwz 0,288(31)
	stw 10,28(1)
	stw 11,32(1)
	stw 9,36(1)
	stw 0,40(1)
.LBB14112:
.LBB14109:
	.loc 3 53 0
	beq- 7,.L3052
	.loc 3 54 0
	lbz 0,0(27)
	cmpwi 7,0,42
	beq- 7,.L3180
.L2923:
.LVL3888:
.LBE14109:
.LBE14112:
.LBB14113:
.LBB14114:
	.loc 10 205 0
	addi 3,1,28
	li 4,2
	bl _ZNK6idVec48ToStringEi
	mr 5,3
	mr 4,27
	mr 3,25
	bl _ZN6idDict3SetEPKcS1_
	b .L2919
.LVL3889:
.L3176:
.LBE14114:
.LBE14113:
.LBE14101:
.LBE14121:
.LBE14127:
.LBE14432:
.LBB14433:
.LBB14143:
	.loc 4 653 0 discriminator 2
	lwz 3,4(30)
	mr 4,26
	bl _ZN5idStr3CmpEPKcS1_
.LBE14143:
.LBE14433:
	.loc 6 2196 0 discriminator 2
	cmpwi 7,3,0
	beq- 7,.L2917
.LVL3890:
.LBB14434:
.LBB14370:
.LBB14148:
	.loc 4 653 0
	lwz 3,4(30)
	mr 4,16
	bl _ZN5idStr3CmpEPKcS1_
.LBE14148:
.LBE14370:
	.loc 6 2230 0
	cmpwi 7,3,0
	beq- 7,.L3181
.LVL3891:
.LBB14371:
.LBB14355:
.LBB14153:
	.loc 4 653 0
	lwz 3,4(30)
	mr 4,19
	bl _ZN5idStr3CmpEPKcS1_
.LBE14153:
.LBE14355:
	.loc 6 2241 0
	cmpwi 7,3,0
	bne- 7,.L2947
.LBB14356:
	.loc 6 2242 0
	li 3,1312
	bl _ZN8idWindownwEj
.LEHE227:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB228:
	bl _ZN14idChoiceWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE228:
.L3171:
.LVL3892:
.LBE14356:
.LBB14357:
.LBB14322:
	.loc 6 2254 0 discriminator 2
	mr 3,31
.LEHB229:
	bl _ZN8idWindow24SaveExpressionParseStateEv
	.loc 6 2255 0
	lwz 9,0(27)
	mr 3,27
	mr 4,29
	mr 5,20
	lwz 0,16(9)
	mtctr 0
	bctrl
	.loc 6 2256 0
	mr 3,31
	bl _ZN8idWindow27RestoreExpressionParseStateEv
	.loc 6 2257 0
	mr 3,31
	mr 4,27
	bl _ZN8idWindow8AddChildEPS_
.LVL3893:
.LBB14323:
.LBB14324:
	.loc 6 1532 0
	stw 31,676(27)
.LBE14324:
.LBE14323:
	.loc 6 2259 0
	li 9,0
	.loc 6 2260 0
	stw 27,20(1)
	.loc 6 2261 0
	addi 27,31,696
.LVL3894:
.LBB14325:
.LBB14326:
	.loc 16 655 0
	lwz 0,708(31)
.LBE14326:
.LBE14325:
	.loc 6 2259 0
	stw 9,24(1)
.LBB14336:
.LBB14332:
	.loc 16 655 0
	cmpwi 7,0,0
	beq- 7,.L3145
.LVL3895:
.L2952:
.LBB14327:
	.loc 16 659 0
	lwz 4,696(31)
	lwz 0,700(31)
	cmpw 7,4,0
	beq- 7,.L3182
.L2953:
.LBE14327:
	.loc 16 669 0
	lwz 0,708(31)
	slwi 4,4,3
	lwz 10,20(1)
	lwz 11,24(1)
	add 4,0,4
	stw 10,0(4)
	stw 11,4(4)
	.loc 16 670 0
	lwz 9,696(31)
	addi 0,9,1
	stw 0,696(31)
	b .L2927
.LVL3896:
.L3181:
.LBE14332:
.LBE14336:
.LBE14322:
.LBE14357:
.LBE14371:
.LBB14372:
	.loc 6 2231 0
	li 3,1156
	bl _ZN8idWindownwEj
.LEHE229:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB230:
	bl _ZN12idEditWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE230:
.LVL3897:
	.loc 6 2232 0 discriminator 2
	mr 3,31
.LEHB231:
	bl _ZN8idWindow24SaveExpressionParseStateEv
	.loc 6 2233 0
	lwz 9,0(27)
	mr 3,27
	mr 4,29
	mr 5,20
	lwz 0,16(9)
	mtctr 0
	bctrl
	.loc 6 2234 0
	mr 3,31
	bl _ZN8idWindow27RestoreExpressionParseStateEv
	.loc 6 2235 0
	mr 3,31
	mr 4,27
	bl _ZN8idWindow8AddChildEPS_
.LVL3898:
.LBB14373:
.LBB14374:
	.loc 6 1532 0
	stw 31,676(27)
.LBE14374:
.LBE14373:
	.loc 6 2237 0
	li 0,0
	.loc 6 2238 0
	stw 27,20(1)
	.loc 6 2239 0
	addi 27,31,696
.LVL3899:
.LBB14375:
.LBB14376:
	.loc 16 655 0
	lwz 25,708(31)
.LBE14376:
.LBE14375:
	.loc 6 2237 0
	stw 0,24(1)
.LBB14405:
.LBB14399:
	.loc 16 655 0
	cmpwi 7,25,0
	beq- 7,.L3183
.LVL3900:
.L2936:
.LBB14377:
	.loc 16 659 0
	lwz 0,696(31)
	lwz 9,700(31)
	cmpw 7,0,9
	beq- 7,.L2937
.L3091:
.LBB14378:
.LBB14379:
.LBB14380:
	.loc 16 399 0
	slwi 0,0,3
	add 25,25,0
.L2938:
.LBE14380:
.LBE14379:
.LBE14378:
.LBE14377:
	.loc 16 669 0
	lwz 10,20(1)
	lwz 11,24(1)
	stw 10,0(25)
	stw 11,4(25)
	.loc 16 670 0
	lwz 9,696(31)
	addi 0,9,1
	stw 0,696(31)
	b .L2927
.LVL3901:
.L3178:
.LBE14399:
.LBE14405:
.LBE14372:
.LBE14434:
.LBB14435:
.LBB14128:
.LBB14051:
.LBB14048:
.LBB14045:
.LBB14042:
.LBB14040:
	.loc 4 351 0
	mr 3,28
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL3902:
	b .L2925
.LVL3903:
.L2926:
.LBE14040:
.LBE14042:
.LBE14045:
.LBE14048:
.LBE14051:
.LBE14128:
.LBB14129:
.LBB14055:
	.loc 6 2210 0
	li 3,932
.LVL3904:
	bl _ZN8idWindownwEj
.LEHE231:
	lwz 4,728(31)
	mr 27,3
.LVL3905:
	lwz 5,732(31)
.LEHB232:
	bl _ZN8idWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE232:
.LVL3906:
	.loc 6 2211 0 discriminator 2
	mr 3,31
.LEHB233:
	bl _ZN8idWindow24SaveExpressionParseStateEv
	.loc 6 2212 0
	lwz 9,0(27)
	mr 3,27
	mr 4,29
	mr 5,20
	lwz 0,16(9)
	mtctr 0
	bctrl
	.loc 6 2213 0
	mr 3,31
	bl _ZN8idWindow27RestoreExpressionParseStateEv
.LVL3907:
.LBB14056:
.LBB14057:
	.loc 6 1532 0
	stw 31,676(27)
.LBE14057:
.LBE14056:
	.loc 6 2215 0
	li 0,0
.LBB14058:
	.loc 6 2217 0
	mr 3,27
.LBE14058:
	.loc 6 2215 0
	stw 0,24(1)
	.loc 6 2216 0
	stw 0,20(1)
.LBB14087:
	.loc 6 2217 0
	bl _ZN8idWindow8IsSimpleEv
	cmpwi 7,3,0
	beq- 7,.L2928
.LBB14059:
	.loc 6 2218 0
	li 3,532
	bl _ZN14idSimpleWindownwEj
.LEHE233:
	mr 4,27
	mr 25,3
.LEHB234:
	bl _ZN14idSimpleWindowC1EP8idWindow
.LEHE234:
.LVL3908:
.LBB14060:
.LBB14061:
	.loc 16 655 0 discriminator 2
	lwz 0,708(31)
.LBE14061:
.LBE14060:
	.loc 6 2219 0 discriminator 2
	stw 25,24(1)
	.loc 6 2220 0 discriminator 2
	addi 25,31,696
.LVL3909:
.LBB14073:
.LBB14067:
	.loc 16 655 0 discriminator 2
	cmpwi 7,0,0
	beq- 7,.L3184
.LVL3910:
.L2929:
.LBB14062:
	.loc 16 659 0
	lwz 4,696(31)
	lwz 0,700(31)
	cmpw 7,4,0
	beq- 7,.L3185
.LBE14062:
	.loc 16 669 0
	lwz 0,708(31)
	slwi 4,4,3
	lwz 10,20(1)
.LBE14067:
.LBE14073:
	.loc 6 2221 0
	mr 3,27
.LBB14074:
.LBB14068:
	.loc 16 669 0
	lwz 11,24(1)
	add 4,0,4
	stw 10,0(4)
	stw 11,4(4)
	.loc 16 670 0
	lwz 9,696(31)
	addi 0,9,1
	stw 0,696(31)
.LBE14068:
.LBE14074:
	.loc 6 2221 0
	lwz 9,0(27)
	lwz 0,4(9)
	mtctr 0
.LEHB235:
	bctrl
	b .L2927
.LVL3911:
.L2947:
.LBE14059:
.LBE14087:
.LBE14055:
.LBE14129:
.LBE14435:
.LBB14436:
.LBB14411:
.LBB14358:
.LBB14340:
.LBB14158:
	.loc 4 653 0
	lwz 3,4(30)
	mr 4,15
	bl _ZN5idStr3CmpEPKcS1_
.LBE14158:
.LBE14340:
	.loc 6 2252 0
	cmpwi 7,3,0
	bne- 7,.L2951
.LBB14341:
	.loc 6 2253 0
	li 3,1156
	bl _ZN8idWindownwEj
.LEHE235:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB236:
	bl _ZN14idSliderWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE236:
	b .L3171
.LVL3912:
.L3182:
.LBB14337:
.LBB14333:
.LBB14330:
.LBB14328:
	.loc 16 662 0
	lwz 0,704(31)
	cmpwi 7,0,0
	beq- 7,.L3186
.L2954:
	.loc 16 665 0
	add 4,0,4
.LVL3913:
	.loc 16 666 0
	mr 3,27
	divw 4,4,0
.LVL3914:
	mullw 4,4,0
.LEHB237:
	bl _ZN6idListI9drawWin_tE6ResizeEi
	lwz 4,696(31)
	b .L2953
.LVL3915:
.L2937:
.LBE14328:
.LBE14330:
.LBE14333:
.LBE14337:
.LBE14341:
.LBE14358:
.LBE14411:
.LBB14412:
.LBB14406:
.LBB14400:
.LBB14395:
.LBB14391:
	.loc 16 662 0
	lwz 11,704(31)
	cmpwi 7,11,0
	beq- 7,.L3187
.L2939:
	.loc 16 665 0
	add 10,9,11
.LVL3916:
	.loc 16 666 0
	divw 10,10,11
.LVL3917:
.LBB14387:
.LBB14383:
	.loc 16 375 0
	mullw. 11,10,11
.LVL3918:
	ble- 0,.L3188
	.loc 16 380 0
	cmpw 7,9,11
	beq- 7,.L3091
.LVL3919:
	.loc 16 387 0
	cmpw 7,0,11
	.loc 16 386 0
	stw 11,700(31)
	.loc 16 387 0
	ble- 7,.L2943
	.loc 16 388 0
	stw 11,696(31)
.L2943:
	.loc 16 392 0
	slwi 3,11,3
	bl _Znaj
.LVL3920:
	.loc 16 393 0
	lwz 0,696(31)
	.loc 16 392 0
	stw 3,708(31)
.LVL3921:
	.loc 16 393 0
	cmpwi 7,0,0
	ble- 7,.L2944
	.loc 6 2162 0
	addi 8,25,-8
.LBE14383:
.LBE14387:
	.loc 16 393 0
	li 9,0
	b .L2945
.LVL3922:
.L3189:
.LBB14388:
.LBB14384:
	lwz 3,708(31)
.LVL3923:
.L2945:
	.loc 16 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 16 393 0
	addi 9,9,1
.LVL3924:
	.loc 16 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 16 393 0
	lwz 0,0(27)
	cmpw 7,9,0
	blt+ 7,.L3189
.LVL3925:
.L2944:
	.loc 16 398 0
	cmpwi 7,25,0
	beq- 7,.L3190
	.loc 16 399 0
	mr 3,25
	bl _ZdaPv
	lwz 0,696(31)
	lwz 25,708(31)
.LVL3926:
	b .L3091
.LVL3927:
.L2928:
.LBE14384:
.LBE14388:
.LBE14391:
.LBE14395:
.LBE14400:
.LBE14406:
.LBE14412:
.LBE14436:
.LBB14437:
.LBB14130:
.LBB14093:
.LBB14088:
	.loc 6 2223 0
	mr 3,31
	mr 4,27
	bl _ZN8idWindow8AddChildEPS_
	.loc 6 2224 0
	mr 3,31
	mr 4,27
	li 5,0
	bl _ZN8idWindow8SetFocusEPS_b
.LBB14079:
.LBB14080:
	.loc 16 655 0
	lwz 0,708(31)
.LBE14080:
.LBE14079:
	.loc 6 2225 0
	stw 27,20(1)
	.loc 6 2226 0
	addi 27,31,696
.LVL3928:
.LBB14082:
.LBB14081:
	.loc 16 655 0
	cmpwi 7,0,0
	bne+ 7,.L2952
.LVL3929:
.L3145:
.LBE14081:
.LBE14082:
.LBE14088:
.LBE14093:
.LBE14130:
.LBE14437:
.LBB14438:
.LBB14413:
.LBB14359:
.LBB14342:
.LBB14338:
.LBB14334:
	.loc 16 656 0
	lwz 4,704(31)
	mr 3,27
	bl _ZN6idListI9drawWin_tE6ResizeEi
	b .L2952
.LVL3930:
.L2951:
.LBE14334:
.LBE14338:
.LBE14342:
.LBB14343:
.LBB14312:
.LBB14313:
	.loc 4 653 0
	lis 4,.LC136@ha
	lwz 3,4(30)
	la 4,.LC136@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE14313:
.LBE14312:
	.loc 6 2263 0
	cmpwi 7,3,0
	beq- 7,.L3191
.LVL3931:
.LBB14314:
.LBB14302:
.LBB14303:
	.loc 4 653 0
	lis 4,.LC137@ha
	lwz 3,4(30)
	la 4,.LC137@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE14303:
.LBE14302:
	.loc 6 2274 0
	cmpwi 7,3,0
	bne- 7,.L2959
.LBB14304:
	.loc 6 2275 0
	li 3,984
	bl _ZN8idWindownwEj
.LEHE237:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB238:
	bl _ZN12idBindWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE238:
.LVL3932:
.L3173:
.LBE14304:
.LBB14305:
.LBB14181:
	.loc 6 2287 0 discriminator 2
	mr 3,31
.LEHB239:
	bl _ZN8idWindow24SaveExpressionParseStateEv
	.loc 6 2288 0
	lwz 9,0(27)
	mr 3,27
	mr 4,29
	mr 5,20
	lwz 0,16(9)
	mtctr 0
	bctrl
	.loc 6 2289 0
	mr 3,31
	bl _ZN8idWindow27RestoreExpressionParseStateEv
	.loc 6 2290 0
	mr 3,31
	mr 4,27
	bl _ZN8idWindow8AddChildEPS_
.LVL3933:
.LBB14175:
.LBB14176:
	.loc 6 1532 0
	stw 31,676(27)
.LBE14176:
.LBE14175:
	.loc 6 2292 0
	li 9,0
	.loc 6 2293 0
	stw 27,20(1)
	.loc 6 2294 0
	addi 27,31,696
.LVL3934:
.LBB14177:
.LBB14171:
	.loc 16 655 0
	lwz 0,708(31)
.LBE14171:
.LBE14177:
	.loc 6 2292 0
	stw 9,24(1)
.LBB14178:
.LBB14172:
	.loc 16 655 0
	cmpwi 7,0,0
	beq- 7,.L3192
.LVL3935:
.L2964:
.LBB14169:
	.loc 16 659 0
	lwz 9,696(31)
	lwz 0,700(31)
	cmpw 7,9,0
	beq- 7,.L3193
.L2965:
.LBE14169:
	.loc 16 669 0
	lwz 0,708(31)
	slwi 9,9,3
	lwz 10,20(1)
	lwz 11,24(1)
	add 9,0,9
	stw 10,0(9)
	stw 11,4(9)
	.loc 16 670 0
	lwz 9,696(31)
	addi 0,9,1
	stw 0,696(31)
	b .L2927
.LVL3936:
.L3186:
.LBE14172:
.LBE14178:
.LBE14181:
.LBE14305:
.LBE14314:
.LBE14343:
.LBB14344:
.LBB14339:
.LBB14335:
.LBB14331:
.LBB14329:
	.loc 16 663 0
	li 0,16
	stw 0,704(31)
	b .L2954
.LVL3937:
.L3187:
.LBE14329:
.LBE14331:
.LBE14335:
.LBE14339:
.LBE14344:
.LBE14359:
.LBE14413:
.LBB14414:
.LBB14407:
.LBB14401:
.LBB14396:
.LBB14392:
	li 11,16
	stw 11,704(31)
	b .L2939
.LVL3938:
.L3185:
.LBE14392:
.LBE14396:
.LBE14401:
.LBE14407:
.LBE14414:
.LBE14438:
.LBB14439:
.LBB14131:
.LBB14094:
.LBB14089:
.LBB14083:
.LBB14075:
.LBB14069:
.LBB14065:
.LBB14063:
	.loc 16 662 0
	lwz 0,704(31)
	cmpwi 7,0,0
	beq- 7,.L3194
.L2931:
	.loc 16 665 0
	add 4,4,0
.LVL3939:
	.loc 16 666 0
	mr 3,25
	divw 4,4,0
.LVL3940:
	mullw 4,4,0
	bl _ZN6idListI9drawWin_tE6ResizeEi
	lwz 4,696(31)
.LBE14063:
.LBE14065:
.LBE14069:
.LBE14075:
	.loc 6 2221 0
	mr 3,27
.LBB14076:
.LBB14070:
	.loc 16 669 0
	lwz 0,708(31)
	lwz 10,20(1)
	slwi 4,4,3
	lwz 11,24(1)
	add 4,0,4
	stw 10,0(4)
	stw 11,4(4)
	.loc 16 670 0
	lwz 9,696(31)
	addi 0,9,1
	stw 0,696(31)
.LBE14070:
.LBE14076:
	.loc 6 2221 0
	lwz 9,0(27)
	lwz 0,4(9)
	mtctr 0
	bctrl
	b .L2927
.LVL3941:
.L3191:
.LBE14083:
.LBE14089:
.LBE14094:
.LBE14131:
.LBE14439:
.LBB14440:
.LBB14415:
.LBB14360:
.LBB14345:
.LBB14315:
	.loc 6 2264 0
	li 3,2944
	bl _ZN8idWindownwEj
.LEHE239:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB240:
	bl _ZN14idMarkerWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE240:
	b .L3173
.LVL3942:
.L3194:
.LBE14315:
.LBE14345:
.LBE14360:
.LBE14415:
.LBE14440:
.LBB14441:
.LBB14132:
.LBB14095:
.LBB14090:
.LBB14084:
.LBB14077:
.LBB14071:
.LBB14066:
.LBB14064:
	.loc 16 663 0
	li 0,16
	stw 0,704(31)
	b .L2931
.LVL3943:
.L3052:
.LBE14064:
.LBE14066:
.LBE14071:
.LBE14077:
.LBE14084:
.LBE14090:
.LBE14095:
.LBE14132:
.LBB14133:
.LBB14122:
.LBB14117:
.LBB14115:
.LBB14110:
	.loc 3 59 0
	lis 27,.LC4@ha
	la 27,.LC4@l(27)
	b .L2923
.LVL3944:
.L3193:
.LBE14110:
.LBE14115:
.LBE14117:
.LBE14122:
.LBE14133:
.LBE14441:
.LBB14442:
.LBB14416:
.LBB14361:
.LBB14346:
.LBB14316:
.LBB14306:
.LBB14182:
.LBB14179:
.LBB14173:
.LBB14170:
.LBB14168:
	.loc 16 662 0
	lwz 0,704(31)
	cmpwi 7,0,0
	bne- 7,.L2966
	.loc 16 663 0
	li 0,16
	stw 0,704(31)
.L2966:
	.loc 16 665 0
	add 9,0,9
.LVL3945:
	.loc 16 666 0
	mr 3,27
	divw 4,9,0
	mullw 4,4,0
.LEHB241:
	bl _ZN6idListI9drawWin_tE6ResizeEi
.LVL3946:
	lwz 9,696(31)
	b .L2965
.LVL3947:
.L3175:
.LBE14168:
.LBE14170:
.LBE14173:
.LBE14179:
.LBE14182:
.LBE14306:
.LBE14316:
.LBE14346:
.LBE14361:
.LBE14416:
.LBE14442:
.LBE14455:
.LBE14500:
	.loc 6 2564 0
	mr 3,31
	li 4,-1
	li 5,1
	bl _ZN8idWindow8EvalRegsEib
	.loc 6 2183 0
	li 29,1
.LVL3948:
	b .L3048
.LVL3949:
.L3049:
.LBB14501:
.LBB14456:
.LBB14443:
.LBB14134:
.LBB14027:
.LBB14019:
.LBB14013:
	.loc 3 59 0
	lis 27,.LC4@ha
	.loc 3 53 0
	li 4,0
	.loc 3 59 0
	la 27,.LC4@l(27)
	b .L2921
.LVL3950:
.L3183:
.LBE14013:
.LBE14019:
.LBE14027:
.LBE14134:
.LBE14443:
.LBB14444:
.LBB14417:
.LBB14408:
.LBB14402:
	.loc 16 656 0
	lwz 4,704(31)
	mr 3,27
	bl _ZN6idListI9drawWin_tE6ResizeEi
.LVL3951:
	lwz 25,708(31)
	b .L2936
.LVL3952:
.L2959:
.LBE14402:
.LBE14408:
.LBE14417:
.LBB14418:
.LBB14362:
.LBB14347:
.LBB14317:
.LBB14307:
.LBB14183:
.LBB14184:
	.loc 4 653 0
	lis 4,.LC138@ha
	lwz 3,4(30)
	la 4,.LC138@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE14184:
.LBE14183:
	.loc 6 2285 0
	cmpwi 7,3,0
	beq- 7,.L3195
.LVL3953:
.LBB14185:
.LBB14186:
.LBB14187:
	.loc 4 653 0
	lis 4,.LC139@ha
	lwz 3,4(30)
	la 4,.LC139@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE14187:
.LBE14186:
	.loc 6 2296 0
	cmpwi 7,3,0
	bne- 7,.L2967
.LBB14188:
	.loc 6 2297 0
	li 3,984
	bl _ZN8idWindownwEj
.LEHE241:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB242:
	bl _ZN13idFieldWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE242:
.L3136:
.LVL3954:
.LBE14188:
.LBB14189:
.LBB14190:
.LBB14191:
.LBB14192:
.LBB14193:
	.loc 6 2342 0 discriminator 2
	mr 3,31
.LEHB243:
	bl _ZN8idWindow24SaveExpressionParseStateEv
	.loc 6 2343 0
	lwz 9,0(27)
	mr 3,27
	mr 4,29
	mr 5,20
	lwz 0,16(9)
	mtctr 0
	bctrl
	.loc 6 2344 0
	mr 3,31
	bl _ZN8idWindow27RestoreExpressionParseStateEv
	.loc 6 2345 0
	mr 3,31
	mr 4,27
	bl _ZN8idWindow8AddChildEPS_
.LVL3955:
	.loc 6 2348 0
	mr 4,1
	.loc 6 2347 0
	li 0,0
	.loc 6 2348 0
	stwu 27,20(4)
	.loc 6 2349 0
	addi 3,31,696
.LBB14194:
.LBB14195:
	.loc 6 1532 0
	stw 31,676(27)
.LBE14195:
.LBE14194:
	.loc 6 2347 0
	stw 0,24(1)
	.loc 6 2349 0
	bl _ZN6idListI9drawWin_tE6AppendERKS0_
	b .L2927
.LVL3956:
.L3179:
.LBE14193:
.LBE14192:
.LBE14191:
.LBE14190:
.LBE14189:
.LBE14185:
.LBE14307:
.LBE14317:
.LBE14347:
.LBE14362:
.LBE14418:
.LBE14444:
.LBB14445:
.LBB14135:
.LBB14028:
.LBB14020:
.LBB14014:
.LBB14003:
.LBB14004:
.LBB14005:
.LBB14006:
	.loc 10 241 0
	mr 3,25
	addi 4,27,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL3957:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L3051
.LVL3958:
.LBB14007:
	.loc 6 4264 0
	lwz 9,4(3)
	lbz 4,241(31)
	lwz 27,4(9)
.LVL3959:
	b .L2921
.LVL3960:
.L3180:
.LBE14007:
.LBE14006:
.LBE14005:
.LBE14004:
.LBE14003:
.LBE14014:
.LBE14020:
.LBE14028:
.LBE14135:
.LBB14136:
.LBB14123:
.LBB14118:
.LBB14116:
.LBB14111:
.LBB14104:
.LBB14105:
.LBB14106:
.LBB14107:
	.loc 10 241 0
	mr 3,25
	addi 4,27,1
	bl _ZNK6idDict7FindKeyEPKc
.LVL3961:
	.loc 10 242 0
	cmpwi 0,3,0
	beq- 0,.L3052
.LVL3962:
.LBB14108:
	.loc 6 4264 0
	lwz 9,4(3)
	lwz 27,4(9)
.LVL3963:
	b .L2923
.LVL3964:
.L3188:
.LBE14108:
.LBE14107:
.LBE14106:
.LBE14105:
.LBE14104:
.LBE14111:
.LBE14116:
.LBE14118:
.LBE14123:
.LBE14136:
.LBE14445:
.LBB14446:
.LBB14419:
.LBB14409:
.LBB14403:
.LBB14397:
.LBB14393:
.LBB14389:
.LBB14385:
.LBB14381:
.LBB14382:
	.loc 16 193 0
	cmpwi 7,25,0
	beq- 7,.L2941
	.loc 16 194 0
	mr 3,25
	bl _ZdaPv
.LVL3965:
.L2941:
	.loc 16 197 0
	li 0,0
	.loc 16 199 0
	li 25,0
	.loc 16 197 0
	stw 0,708(31)
	.loc 16 198 0
	stw 0,696(31)
	.loc 16 199 0
	stw 0,700(31)
	b .L2938
.LVL3966:
.L3195:
.LBE14382:
.LBE14381:
.LBE14385:
.LBE14389:
.LBE14393:
.LBE14397:
.LBE14403:
.LBE14409:
.LBE14419:
.LBB14420:
.LBB14363:
.LBB14348:
.LBB14318:
.LBB14308:
.LBB14296:
	.loc 6 2286 0
	li 3,1280
	bl _ZN8idWindownwEj
.LEHE243:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB244:
	bl _ZN12idListWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE244:
	b .L3173
.LVL3967:
.L3190:
.LBE14296:
.LBE14308:
.LBE14318:
.LBE14348:
.LBE14363:
.LBE14420:
.LBB14421:
.LBB14410:
.LBB14404:
.LBB14398:
.LBB14394:
.LBB14390:
.LBB14386:
	.loc 16 398 0
	lwz 0,696(31)
	lwz 25,708(31)
.LVL3968:
	slwi 0,0,3
	add 25,25,0
	b .L2938
.LVL3969:
.L3184:
.LBE14386:
.LBE14390:
.LBE14394:
.LBE14398:
.LBE14404:
.LBE14410:
.LBE14421:
.LBE14446:
.LBB14447:
.LBB14137:
.LBB14096:
.LBB14091:
.LBB14085:
.LBB14078:
.LBB14072:
	.loc 16 656 0
	lwz 4,704(31)
	mr 3,25
.LEHB245:
	bl _ZN6idListI9drawWin_tE6ResizeEi
.LVL3970:
	b .L2929
.LVL3971:
.L2967:
.LBE14072:
.LBE14078:
.LBE14085:
.LBE14091:
.LBE14096:
.LBE14137:
.LBE14447:
.LBB14448:
.LBB14422:
.LBB14364:
.LBB14349:
.LBB14319:
.LBB14309:
.LBB14297:
.LBB14292:
.LBB14286:
.LBB14287:
	.loc 4 653 0
	lis 4,.LC140@ha
	lwz 3,4(30)
	la 4,.LC140@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE14287:
.LBE14286:
	.loc 6 2307 0
	cmpwi 7,3,0
	bne- 7,.L2968
.LBB14288:
	.loc 6 2308 0
	li 3,1828
	bl _ZN8idWindownwEj
.LEHE245:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB246:
	bl _ZN14idRenderWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE246:
	b .L3136
.LVL3972:
.L3192:
.LBE14288:
.LBE14292:
.LBE14297:
.LBB14298:
.LBB14180:
.LBB14174:
	.loc 16 656 0
	lwz 4,704(31)
	mr 3,27
.LEHB247:
	bl _ZN6idListI9drawWin_tE6ResizeEi
.LVL3973:
	b .L2964
.LVL3974:
.L2968:
.LBE14174:
.LBE14180:
.LBE14298:
.LBB14299:
.LBB14293:
.LBB14289:
.LBB14281:
.LBB14282:
	.loc 4 653 0
	lis 4,.LC141@ha
	lwz 3,4(30)
	la 4,.LC141@l(4)
	bl _ZN5idStr3CmpEPKcS1_
.LBE14282:
.LBE14281:
	.loc 6 2318 0
	cmpwi 7,3,0
	bne- 7,.L2969
.LBB14283:
	.loc 6 2319 0
	li 3,1224
	bl _ZN8idWindownwEj
.LEHE247:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB248:
	bl _ZN15idGameSSDWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE248:
	b .L3136
.LVL3975:
.L3051:
.LBE14283:
.LBE14289:
.LBE14293:
.LBE14299:
.LBE14309:
.LBE14319:
.LBE14349:
.LBE14364:
.LBE14422:
.LBE14448:
.LBB14449:
.LBB14138:
.LBB14029:
.LBB14021:
.LBB14015:
.LBB14012:
.LBB14011:
.LBB14010:
.LBB14009:
	.loc 10 245 0
	lis 27,.LC4@ha
.LVL3976:
.LBB14008:
	.loc 6 4264 0
	lbz 4,241(31)
.LBE14008:
	.loc 10 245 0
	la 27,.LC4@l(27)
	b .L2921
.LVL3977:
.L2969:
.LBE14009:
.LBE14010:
.LBE14011:
.LBE14012:
.LBE14015:
.LBE14021:
.LBE14029:
.LBE14138:
.LBE14449:
.LBB14450:
.LBB14423:
.LBB14365:
.LBB14350:
.LBB14320:
.LBB14310:
.LBB14300:
.LBB14294:
.LBB14290:
.LBB14284:
.LBB14276:
.LBB14277:
	.loc 4 653 0
	lis 4,.LC142@ha
	lwz 3,4(30)
	la 4,.LC142@l(4)
.LEHB249:
	bl _ZN5idStr3CmpEPKcS1_
.LBE14277:
.LBE14276:
	.loc 6 2329 0
	cmpwi 7,3,0
	bne- 7,.L2970
.LBB14278:
	.loc 6 2330 0
	li 3,1088
	bl _ZN8idWindownwEj
.LEHE249:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB250:
	bl _ZN21idGameBearShootWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE250:
	b .L3136
.L2970:
.LVL3978:
.LBE14278:
.LBB14279:
.LBB14196:
.LBB14197:
	.loc 4 653 0
	lis 4,.LC143@ha
	lwz 3,4(30)
	la 4,.LC143@l(4)
.LEHB251:
	bl _ZN5idStr3CmpEPKcS1_
.LBE14197:
.LBE14196:
	.loc 6 2340 0
	cmpwi 7,3,0
	bne- 7,.L2971
.LBB14198:
	.loc 6 2341 0
	li 3,1320
	bl _ZN8idWindownwEj
.LEHE251:
	lwz 4,728(31)
	mr 27,3
	lwz 5,732(31)
.LEHB252:
	bl _ZN19idGameBustOutWindowC1EP15idDeviceContextP20idUserInterfaceLocal
.LEHE252:
	b .L3136
.L2971:
.LBE14198:
.LBB14199:
	.loc 6 2353 0
	lis 4,.LC144@ha
	lwz 3,4(30)
	la 4,.LC144@l(4)
.LEHB253:
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2972
.LBB14200:
	.loc 6 2355 0
	mr 3,29
	mr 4,30
	bl _ZN8idParser9ReadTokenEP7idToken
	cmpwi 7,3,0
	beq- 7,.L3196
.LVL3979:
	.loc 6 2360 0
	li 3,36
.LBB14201:
	.loc 6 4264 0
	lwz 25,4(30)
.LBE14201:
	.loc 6 2360 0
	bl _Znwj
.LEHE253:
.LBB14202:
.LBB14203:
.LBB14204:
.LBB14205:
.LBB14206:
	.loc 4 356 0
	li 0,0
	.loc 4 358 0
	addi 9,3,12
	.loc 4 357 0
	li 11,20
.LBE14206:
.LBE14205:
.LBE14204:
.LBE14203:
.LBE14202:
	.loc 6 2360 0
	mr 27,3
.LVL3980:
.LBB14221:
.LBB14219:
.LBB14213:
.LBB14210:
.LBB14207:
	.loc 4 356 0
	stw 0,0(3)
.LBE14207:
.LBE14210:
.LBE14213:
	.loc 5 145 0
	li 4,36
.LBB14214:
.LBB14211:
.LBB14208:
	.loc 4 357 0
	stw 11,8(3)
.LBE14208:
.LBE14211:
.LBE14214:
	.loc 5 145 0
	mr 5,25
.LBB14215:
.LBB14212:
.LBB14209:
	.loc 4 358 0
	stw 9,4(3)
	.loc 4 359 0
	stb 0,12(3)
.LBE14209:
.LBE14212:
.LBE14215:
	.loc 5 145 0
	lis 3,.LC146@ha
.LVL3981:
	la 3,.LC146@l(3)
.LEHB254:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
	.loc 5 147 0
	li 3,16
	bl _Znwj
	mr 14,3
	bl _ZN15idGuiScriptListC1Ev
	stw 14,32(27)
	.loc 5 148 0
	mr 3,27
	mr 4,25
	bl _ZN5idStraSEPKc
.LEHE254:
.LVL3982:
.LBE14219:
.LBE14221:
	.loc 6 2362 0 discriminator 2
	mr 3,29
.LEHB255:
	bl _ZN8idParser9SetMarkerEv
	.loc 6 2364 0
	lwz 5,32(27)
	mr 3,31
	mr 4,29
	li 6,0
	li 7,0
	bl _ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib
	cmpwi 7,3,0
	beq- 7,.L2979
.LVL3983:
.LBB14222:
.LBB14223:
	.loc 16 655 0
	lwz 0,864(31)
	cmpwi 7,0,0
	beq- 7,.L3197
.L2980:
.LBB14224:
	.loc 16 659 0
	lwz 9,852(31)
	lwz 0,856(31)
	cmpw 7,9,0
	beq- 7,.L3198
.L2981:
.LBE14224:
	.loc 16 669 0
	lwz 11,864(31)
	slwi 9,9,2
	stwx 27,11,9
	.loc 16 670 0
	lwz 0,852(31)
	addic 0,0,1
	stw 0,852(31)
	b .L2927
.LVL3984:
.L2972:
.LBE14223:
.LBE14222:
.LBE14200:
.LBB14230:
	.loc 6 2389 0
	lis 4,.LC147@ha
	lwz 3,4(30)
	la 4,.LC147@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2983
.LBB14231:
	.loc 6 2390 0
	li 3,12
	bl _Znwj
.LEHE255:
	mr 27,3
.LBB14232:
.LBB14233:
	.loc 5 125 0
	li 3,16
.LEHB256:
	bl _Znwj
.LEHE256:
	.loc 5 125 0 is_stmt 0 discriminator 1
	mr 25,3
	bl _ZN15idGuiScriptListC1Ev
	stw 25,4(27)
.LVL3985:
.LBE14233:
.LBE14232:
	.loc 6 2392 0 is_stmt 1 discriminator 1
	mr 3,29
	mr 4,30
.LEHB257:
	bl _ZN8idParser9ReadTokenEP7idToken
	.loc 6 2392 0 is_stmt 0
	cmpwi 7,3,0
	beq- 7,.L3199
	.loc 6 2396 0 is_stmt 1
	lwz 3,4(30)
	bl atoi
	stw 3,0(27)
	.loc 6 2399 0
	mr 3,29
	bl _ZN8idParser9SetMarkerEv
	.loc 6 2401 0
	lwz 5,4(27)
	mr 3,31
	mr 4,29
	mr 6,27
	li 7,0
	bl _ZN8idWindow11ParseScriptEP8idParserR15idGuiScriptListPib
	cmpwi 7,3,0
	beq- 7,.L2979
	.loc 6 2426 0
	li 0,1
	.loc 6 2427 0
	addi 25,31,784
.LVL3986:
	.loc 6 2426 0
	stb 0,8(27)
.LBB14234:
.LBB14235:
	.loc 16 655 0
	lwz 0,796(31)
	cmpwi 7,0,0
	beq- 7,.L3200
.L2985:
.LBB14236:
	.loc 16 659 0
	lwz 9,784(31)
	lwz 0,788(31)
	cmpw 7,9,0
	beq- 7,.L3201
.L2986:
.LBE14236:
	.loc 16 669 0
	lwz 11,796(31)
	slwi 9,9,2
	stwx 27,11,9
	.loc 16 670 0
	lwz 0,784(31)
	addic 0,0,1
	stw 0,784(31)
	b .L2927
.LVL3987:
.L2983:
.LBE14235:
.LBE14234:
.LBE14231:
.LBB14241:
	.loc 6 2430 0
	lis 4,.LC148@ha
	lwz 3,4(30)
	la 4,.LC148@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2988
.LBB14242:
	.loc 6 2431 0
	mr 3,29
	mr 4,30
	bl _ZN8idParser9ReadTokenEP7idToken
	.loc 6 2432 0
	mr 3,24
	mr 4,30
	bl _ZN5idStraSERKS_
	.loc 6 2433 0
	addi 3,1,48
	bl _ZN5idStr7ToLowerEv.isra.14
	.loc 6 2434 0
	li 3,20
	bl _ZN8idWinVarnwEj
.LEHE257:
	mr 27,3
.LVL3988:
.LEHB258:
.LBB14243:
.LBB14244:
	.loc 3 324 0
	bl _ZN8idWinVarC2Ev
.LEHE258:
.LVL3989:
	lis 9,_ZTV10idWinFloat+8@ha
.LBE14244:
.LBE14243:
	.loc 6 2435 0
	addi 3,27,8
.LBB14246:
.LBB14245:
	.loc 3 324 0
	la 0,_ZTV10idWinFloat+8@l(9)
	stw 0,0(27)
.LVL3990:
.LBE14245:
.LBE14246:
	.loc 6 2435 0
	lwz 4,4(24)
.LEHB259:
	bl _ZN8idWinVar7SetNameEPKc.isra.34
	.loc 6 2436 0
	mr 4,1
	addi 3,31,624
	stwu 27,16(4)
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
.LVL3991:
.L3112:
.LBE14242:
.LBB14247:
.LBB14248:
.LBB14249:
	.loc 6 2495 0
	mr 3,29
	bl _ZN8idParser9SetMarkerEv
.LVL3992:
	.loc 6 2498 0
	lwz 4,4(24)
	addi 3,31,872
	li 5,1
	mr 6,29
	mr 7,31
	mr 8,27
	bl _ZN14idRegisterList6AddRegEPKciP8idParserP8idWindowP8idWinVar
.LEHE259:
	b .L2927
.LVL3993:
.L3076:
.L3103:
	mr 31,3
.LVL3994:
.LBE14249:
.LBE14248:
.LBE14247:
.LBE14241:
.LBE14230:
.LBE14199:
.LBB14274:
	.loc 6 2341 0
	mr 3,27
	bl _ZN8idWindowdlEPv
.LVL3995:
.L2978:
.LBE14274:
.LBE14279:
.LBE14284:
.LBE14290:
.LBE14294:
.LBE14300:
.LBE14310:
.LBE14320:
.LBE14350:
.LBE14365:
.LBE14423:
.LBE14450:
.LBE14456:
.LBE14501:
.LBB14502:
.LBB14503:
.LBB14504:
	.loc 4 501 0
	mr 3,24
	bl _ZN5idStr8FreeDataEv
.LVL3996:
.L3026:
.LBE14504:
.LBE14503:
.LBE14502:
.LBB14505:
.LBB14506:
.LBB14507:
.LBB14508:
.LBB14509:
	addi 3,1,80
	bl _ZN5idStr8FreeDataEv
.LVL3997:
.L3029:
.LBE14509:
.LBE14508:
.LBE14507:
.LBE14506:
.LBE14505:
.LBB14510:
.LBB14511:
.LBB14512:
.LBB14513:
.LBB14514:
	addi 3,1,160
	bl _ZN5idStr8FreeDataEv
.LVL3998:
.L3032:
.LBE14514:
.LBE14513:
.LBE14512:
.LBE14511:
.LBE14510:
.LBB14515:
.LBB14516:
.LBB14517:
.LBB14518:
.LBB14519:
	addi 3,1,240
	bl _ZN5idStr8FreeDataEv
.LVL3999:
.L3035:
.LBE14519:
.LBE14518:
.LBE14517:
.LBE14516:
.LBE14515:
.LBB14520:
.LBB14521:
.LBB14522:
.LBB14523:
.LBB14524:
	addi 3,1,320
	bl _ZN5idStr8FreeDataEv
.LVL4000:
.L3038:
.LBE14524:
.LBE14523:
.LBE14522:
.LBE14521:
.LBE14520:
.LBB14525:
.LBB14526:
.LBB14527:
.LBB14528:
.LBB14529:
	addi 3,1,400
	bl _ZN5idStr8FreeDataEv
.LVL4001:
.L3041:
.LBE14529:
.LBE14528:
.LBE14527:
.LBE14526:
.LBE14525:
.LBB14530:
.LBB14531:
.LBB14532:
.LBB14533:
.LBB14534:
	mr 3,28
	bl _ZN5idStr8FreeDataEv
.LVL4002:
.L3044:
.LBE14534:
.LBE14533:
.LBE14532:
.LBE14531:
.LBE14530:
.LBB14535:
.LBB14536:
.LBB14537:
.LBB14538:
.LBB14539:
	mr 3,30
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB260:
	bl _Unwind_Resume
.LEHE260:
.LVL4003:
.L3078:
.L3102:
	mr 31,3
.LVL4004:
.LBE14539:
.LBE14538:
.LBE14537:
.LBE14536:
.LBE14535:
.LBB14540:
.LBB14457:
.LBB14451:
.LBB14424:
.LBB14366:
.LBB14351:
.LBB14321:
.LBB14311:
.LBB14301:
.LBB14295:
.LBB14291:
.LBB14285:
.LBB14280:
.LBB14275:
.LBB14271:
.LBB14267:
.LBB14264:
.LBB14256:
.LBB14254:
	.loc 6 2489 0
	mr 3,27
	bl _ZN8idWinVardlEPv
	b .L2978
.LVL4005:
.L2988:
.LBE14254:
.LBE14256:
	.loc 6 2456 0
	lis 4,.LC149@ha
	lwz 3,4(30)
	la 4,.LC149@l(4)
.LEHB261:
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2989
.LBB14257:
	.loc 6 2457 0
	mr 3,29
	mr 4,30
	bl _ZN8idParser9ReadTokenEP7idToken
	.loc 6 2458 0
	mr 3,24
	mr 4,30
	bl _ZN5idStraSERKS_
	.loc 6 2459 0
	addi 3,1,48
	bl _ZN5idStr7ToLowerEv.isra.14
	.loc 6 2460 0
	li 3,32
	bl _ZN8idWinVarnwEj
.LEHE261:
	mr 27,3
.LVL4006:
.LEHB262:
.LBB14258:
.LBB14259:
	.loc 3 557 0
	bl _ZN8idWinVarC2Ev
.LEHE262:
.LVL4007:
	lis 9,_ZTV9idWinVec4+8@ha
.LBE14259:
.LBE14258:
	.loc 6 2461 0
	addi 3,27,8
.LBB14261:
.LBB14260:
	.loc 3 557 0
	la 0,_ZTV9idWinVec4+8@l(9)
	stw 0,0(27)
.LVL4008:
.LBE14260:
.LBE14261:
	.loc 6 2461 0
	lwz 4,4(24)
.LEHB263:
	bl _ZN8idWinVar7SetNameEPKc.isra.34
	.loc 6 2465 0
	mr 3,29
	bl _ZN8idParser9SetMarkerEv
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 2470 0
	mr 4,1
	stwu 27,12(4)
	lwz 3,52(9)
	addi 3,3,624
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
	.loc 6 4264 0
	lwz 9,732(31)
	.loc 6 2471 0
	li 5,0
	lwz 4,4(24)
	mr 6,29
	.loc 6 4264 0
	lwz 7,52(9)
.LVL4009:
	.loc 6 2471 0
	mr 8,27
	addi 3,7,872
	bl _ZN14idRegisterList6AddRegEPKciP8idParserP8idWindowP8idWinVar
	b .L2927
.LVL4010:
.L3201:
.LBE14257:
.LBE14264:
.LBE14267:
.LBB14268:
.LBB14240:
.LBB14239:
.LBB14238:
.LBB14237:
	.loc 16 662 0
	lwz 0,792(31)
	cmpwi 7,0,0
	bne- 7,.L2987
	.loc 16 663 0
	li 0,16
	stw 0,792(31)
.L2987:
	.loc 16 665 0
	add 9,9,0
.LVL4011:
	.loc 16 666 0
	mr 3,25
	divw 4,9,0
	mullw 4,4,0
	bl _ZN6idListIP15idTimeLineEventE6ResizeEi
.LVL4012:
	lwz 9,784(31)
	b .L2986
.L3200:
.LBE14237:
.LBE14238:
	.loc 16 656 0
	lwz 4,792(31)
	mr 3,25
	bl _ZN6idListIP15idTimeLineEventE6ResizeEi
	b .L2985
.LVL4013:
.L3199:
.LBE14239:
.LBE14240:
	.loc 6 2393 0
	lis 4,.LC129@ha
	mr 3,29
	la 4,.LC129@l(4)
	crxor 6,6,6
	bl _ZNK8idParser5ErrorEPKcz
.LVL4014:
.L3087:
	.loc 6 2394 0
	li 29,0
.LVL4015:
	b .L2974
.LVL4016:
.L3077:
	mr 31,3
	.loc 6 2390 0
	mr 3,27
	bl _ZdlPv
	b .L2978
.LVL4017:
.L3079:
	b .L3102
.LVL4018:
.L2989:
.LBE14268:
.LBB14269:
.LBB14265:
.LBB14262:
	.loc 6 2485 0
	lis 4,.LC150@ha
	lwz 3,4(30)
	la 4,.LC150@l(4)
	bl _ZeqRK5idStrPKc.isra.9
	cmpwi 7,3,0
	beq- 7,.L2990
.LBB14255:
	.loc 6 2486 0
	mr 3,29
	mr 4,30
	bl _ZN8idParser9ReadTokenEP7idToken
	.loc 6 2487 0
	mr 3,24
	mr 4,30
	bl _ZN5idStraSERKS_
	.loc 6 2488 0
	addi 3,1,48
	bl _ZN5idStr7ToLowerEv.isra.14
	.loc 6 2489 0
	li 3,20
	bl _ZN8idWinVarnwEj
.LEHE263:
	mr 27,3
.LVL4019:
.LEHB264:
.LBB14250:
.LBB14251:
	.loc 3 324 0
	bl _ZN8idWinVarC2Ev
.LEHE264:
.LVL4020:
	lis 9,_ZTV10idWinFloat+8@ha
.LBE14251:
.LBE14250:
	.loc 6 2490 0
	addi 3,27,8
.LBB14253:
.LBB14252:
	.loc 3 324 0
	la 0,_ZTV10idWinFloat+8@l(9)
	stw 0,0(27)
.LVL4021:
.LBE14252:
.LBE14253:
	.loc 6 2490 0
	lwz 4,4(24)
.LEHB265:
	bl _ZN8idWinVar7SetNameEPKc.isra.34
	.loc 6 2491 0
	mr 4,1
	addi 3,31,624
	stwu 27,8(4)
	bl _ZN6idListIP8idWinVarE6AppendERKS1_
	b .L3112
.LVL4022:
.L3072:
	b .L3103
.LVL4023:
.L3069:
	b .L3103
.LVL4024:
.L3198:
.LBE14255:
.LBE14262:
.LBE14265:
.LBE14269:
.LBE14271:
.LBB14272:
.LBB14228:
.LBB14227:
.LBB14226:
.LBB14225:
	.loc 16 662 0
	lwz 0,860(31)
	cmpwi 7,0,0
	bne- 7,.L2982
	.loc 16 663 0
	li 0,16
	stw 0,860(31)
.L2982:
	.loc 16 665 0
	add 9,9,0
.LVL4025:
	.loc 16 666 0
	mr 3,17
	divw 4,9,0
	mullw 4,4,0
	bl _ZN6idListIP12rvNamedEventE6ResizeEi
.LVL4026:
	lwz 9,852(31)
	b .L2981
.L3197:
.LBE14225:
.LBE14226:
	.loc 16 656 0
	lwz 4,860(31)
	mr 3,17
	bl _ZN6idListIP12rvNamedEventE6ResizeEi
.LEHE265:
	b .L2980
.LVL4027:
.L3082:
	mr 31,3
.LVL4028:
.LBE14227:
.LBE14228:
.LBB14229:
.LBB14220:
.LBB14216:
.LBB14217:
.LBB14218:
	.loc 4 501 0
	mr 3,27
	bl _ZN5idStr8FreeDataEv
.LBE14218:
.LBE14217:
.LBE14216:
.LBE14220:
.LBE14229:
	.loc 6 2360 0
	mr 3,27
	bl _ZdlPv
	b .L2978
.LVL4029:
.L3196:
	.loc 6 2356 0
	lis 4,.LC145@ha
	mr 3,29
	la 4,.LC145@l(4)
.LEHB266:
	crxor 6,6,6
	bl _ZNK8idParser5ErrorEPKcz
	b .L3087
.LVL4030:
.L3074:
	b .L3103
.LVL4031:
.L3075:
	b .L3103
.LVL4032:
.L3080:
	b .L3102
.LVL4033:
.L2990:
.LBE14272:
.LBB14273:
.LBB14270:
.LBB14266:
.LBB14263:
	.loc 6 2511 0
	lwz 4,4(30)
	mr 3,31
	mr 5,29
	bl _ZN8idWindow16ParseScriptEntryEPKcP8idParser
	cmpwi 7,3,0
	bne+ 7,.L2927
.LVL4034:
	.loc 6 2531 0
	lwz 9,0(31)
	mr 3,31
	lwz 4,4(30)
	mr 5,29
	lwz 0,132(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	bne+ 7,.L2927
.LVL4035:
	.loc 6 2544 0
	lwz 4,4(30)
	mr 3,31
	mr 5,29
	bl _ZN8idWindow13ParseRegEntryEPKcP8idParser
.LEHE266:
	b .L2927
.LVL4036:
.L3070:
	b .L3103
.LVL4037:
.L3067:
	b .L3103
.LVL4038:
.L3073:
	b .L3103
.LVL4039:
.L3071:
	b .L3103
.LVL4040:
.L3062:
	mr 31,3
	b .L3029
.LVL4041:
.L3081:
	mr 31,3
	b .L3026
.LVL4042:
.L3057:
	mr 31,3
	b .L3044
.LVL4043:
.L3065:
	mr 31,3
.LBE14263:
.LBE14266:
.LBE14270:
.LBE14273:
.LBE14275:
.LBE14280:
.LBE14285:
.LBE14291:
.LBE14295:
.LBE14301:
.LBE14311:
.LBE14321:
.LBE14351:
.LBE14366:
.LBE14424:
.LBE14451:
.LBB14452:
.LBB14139:
.LBB14097:
.LBB14092:
.LBB14086:
	.loc 6 2218 0
	mr 3,25
	bl _ZN14idSimpleWindowdlEPv
	b .L2978
.LVL4044:
.L3066:
	b .L3103
.LVL4045:
.L3063:
	mr 31,3
.LVL4046:
	b .L2978
.LVL4047:
.L3058:
	mr 31,3
.LVL4048:
	b .L3041
.LVL4049:
.L3059:
	mr 31,3
	b .L3038
.LVL4050:
.L3060:
	mr 31,3
	b .L3035
.LVL4051:
.L3061:
	mr 31,3
	b .L3032
.LVL4052:
.L3068:
	b .L3103
.LVL4053:
.L3064:
	b .L3103
.LBE14086:
.LBE14092:
.LBE14097:
.LBE14139:
.LBE14452:
.LBE14457:
.LBE14540:
.LBE14546:
	.cfi_endproc
.LFE2961:
	.section	.gcc_except_table
.LLSDA2961:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2961-.LLSDACSB2961
.LLSDACSB2961:
	.uleb128 .LEHB218-.LFB2961
	.uleb128 .LEHE218-.LEHB218
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB219-.LFB2961
	.uleb128 .LEHE219-.LEHB219
	.uleb128 .L3081-.LFB2961
	.uleb128 0
	.uleb128 .LEHB220-.LFB2961
	.uleb128 .LEHE220-.LEHB220
	.uleb128 .L3062-.LFB2961
	.uleb128 0
	.uleb128 .LEHB221-.LFB2961
	.uleb128 .LEHE221-.LEHB221
	.uleb128 .L3061-.LFB2961
	.uleb128 0
	.uleb128 .LEHB222-.LFB2961
	.uleb128 .LEHE222-.LEHB222
	.uleb128 .L3060-.LFB2961
	.uleb128 0
	.uleb128 .LEHB223-.LFB2961
	.uleb128 .LEHE223-.LEHB223
	.uleb128 .L3059-.LFB2961
	.uleb128 0
	.uleb128 .LEHB224-.LFB2961
	.uleb128 .LEHE224-.LEHB224
	.uleb128 .L3058-.LFB2961
	.uleb128 0
	.uleb128 .LEHB225-.LFB2961
	.uleb128 .LEHE225-.LEHB225
	.uleb128 .L3057-.LFB2961
	.uleb128 0
	.uleb128 .LEHB226-.LFB2961
	.uleb128 .LEHE226-.LEHB226
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB227-.LFB2961
	.uleb128 .LEHE227-.LEHB227
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB228-.LFB2961
	.uleb128 .LEHE228-.LEHB228
	.uleb128 .L3067-.LFB2961
	.uleb128 0
	.uleb128 .LEHB229-.LFB2961
	.uleb128 .LEHE229-.LEHB229
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB230-.LFB2961
	.uleb128 .LEHE230-.LEHB230
	.uleb128 .L3066-.LFB2961
	.uleb128 0
	.uleb128 .LEHB231-.LFB2961
	.uleb128 .LEHE231-.LEHB231
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB232-.LFB2961
	.uleb128 .LEHE232-.LEHB232
	.uleb128 .L3064-.LFB2961
	.uleb128 0
	.uleb128 .LEHB233-.LFB2961
	.uleb128 .LEHE233-.LEHB233
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB234-.LFB2961
	.uleb128 .LEHE234-.LEHB234
	.uleb128 .L3065-.LFB2961
	.uleb128 0
	.uleb128 .LEHB235-.LFB2961
	.uleb128 .LEHE235-.LEHB235
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB236-.LFB2961
	.uleb128 .LEHE236-.LEHB236
	.uleb128 .L3068-.LFB2961
	.uleb128 0
	.uleb128 .LEHB237-.LFB2961
	.uleb128 .LEHE237-.LEHB237
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB238-.LFB2961
	.uleb128 .LEHE238-.LEHB238
	.uleb128 .L3070-.LFB2961
	.uleb128 0
	.uleb128 .LEHB239-.LFB2961
	.uleb128 .LEHE239-.LEHB239
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB240-.LFB2961
	.uleb128 .LEHE240-.LEHB240
	.uleb128 .L3069-.LFB2961
	.uleb128 0
	.uleb128 .LEHB241-.LFB2961
	.uleb128 .LEHE241-.LEHB241
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB242-.LFB2961
	.uleb128 .LEHE242-.LEHB242
	.uleb128 .L3072-.LFB2961
	.uleb128 0
	.uleb128 .LEHB243-.LFB2961
	.uleb128 .LEHE243-.LEHB243
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB244-.LFB2961
	.uleb128 .LEHE244-.LEHB244
	.uleb128 .L3071-.LFB2961
	.uleb128 0
	.uleb128 .LEHB245-.LFB2961
	.uleb128 .LEHE245-.LEHB245
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB246-.LFB2961
	.uleb128 .LEHE246-.LEHB246
	.uleb128 .L3073-.LFB2961
	.uleb128 0
	.uleb128 .LEHB247-.LFB2961
	.uleb128 .LEHE247-.LEHB247
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB248-.LFB2961
	.uleb128 .LEHE248-.LEHB248
	.uleb128 .L3074-.LFB2961
	.uleb128 0
	.uleb128 .LEHB249-.LFB2961
	.uleb128 .LEHE249-.LEHB249
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB250-.LFB2961
	.uleb128 .LEHE250-.LEHB250
	.uleb128 .L3075-.LFB2961
	.uleb128 0
	.uleb128 .LEHB251-.LFB2961
	.uleb128 .LEHE251-.LEHB251
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB252-.LFB2961
	.uleb128 .LEHE252-.LEHB252
	.uleb128 .L3076-.LFB2961
	.uleb128 0
	.uleb128 .LEHB253-.LFB2961
	.uleb128 .LEHE253-.LEHB253
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB254-.LFB2961
	.uleb128 .LEHE254-.LEHB254
	.uleb128 .L3082-.LFB2961
	.uleb128 0
	.uleb128 .LEHB255-.LFB2961
	.uleb128 .LEHE255-.LEHB255
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB256-.LFB2961
	.uleb128 .LEHE256-.LEHB256
	.uleb128 .L3077-.LFB2961
	.uleb128 0
	.uleb128 .LEHB257-.LFB2961
	.uleb128 .LEHE257-.LEHB257
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB258-.LFB2961
	.uleb128 .LEHE258-.LEHB258
	.uleb128 .L3078-.LFB2961
	.uleb128 0
	.uleb128 .LEHB259-.LFB2961
	.uleb128 .LEHE259-.LEHB259
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB260-.LFB2961
	.uleb128 .LEHE260-.LEHB260
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB261-.LFB2961
	.uleb128 .LEHE261-.LEHB261
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB262-.LFB2961
	.uleb128 .LEHE262-.LEHB262
	.uleb128 .L3079-.LFB2961
	.uleb128 0
	.uleb128 .LEHB263-.LFB2961
	.uleb128 .LEHE263-.LEHB263
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB264-.LFB2961
	.uleb128 .LEHE264-.LEHB264
	.uleb128 .L3080-.LFB2961
	.uleb128 0
	.uleb128 .LEHB265-.LFB2961
	.uleb128 .LEHE265-.LEHB265
	.uleb128 .L3063-.LFB2961
	.uleb128 0
	.uleb128 .LEHB266-.LFB2961
	.uleb128 .LEHE266-.LEHB266
	.uleb128 .L3063-.LFB2961
	.uleb128 0
.LLSDACSE2961:
	.section	".text"
	.size	_ZN8idWindow5ParseEP8idParserb, .-_ZN8idWindow5ParseEP8idParserb
	.section	.text.startup,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I__ZN8idWindow19registerIsTemporaryE, @function
_GLOBAL__sub_I__ZN8idWindow19registerIsTemporaryE:
.LFB3389:
	.loc 6 4264 0
	.cfi_startproc
	.loc 6 4264 0
	li 3,1
	b _Z41__static_initialization_and_destruction_0ii.constprop.102
	.cfi_endproc
.LFE3389:
	.size	_GLOBAL__sub_I__ZN8idWindow19registerIsTemporaryE, .-_GLOBAL__sub_I__ZN8idWindow19registerIsTemporaryE
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I__ZN8idWindow19registerIsTemporaryE
	.section	.text.exit,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_D__ZN8idWindow19registerIsTemporaryE, @function
_GLOBAL__sub_D__ZN8idWindow19registerIsTemporaryE:
.LFB3390:
	.loc 6 4264 0
	.cfi_startproc
	.loc 6 4264 0
	li 3,0
	b _Z41__static_initialization_and_destruction_0ii.constprop.102
	.cfi_endproc
.LFE3390:
	.size	_GLOBAL__sub_D__ZN8idWindow19registerIsTemporaryE, .-_GLOBAL__sub_D__ZN8idWindow19registerIsTemporaryE
	.section	.dtors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_D__ZN8idWindow19registerIsTemporaryE
	.weak	_ZTS9idWinding
	.section	.rodata._ZTS9idWinding,"aG",@progbits,_ZTS9idWinding,comdat
	.align 2
	.type	_ZTS9idWinding, @object
	.size	_ZTS9idWinding, 11
_ZTS9idWinding:
	.string	"9idWinding"
	.weak	_ZTI9idWinding
	.section	.sdata._ZTI9idWinding,"awG",@progbits,_ZTI9idWinding,comdat
	.align 2
	.type	_ZTI9idWinding, @object
	.size	_ZTI9idWinding, 8
_ZTI9idWinding:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS9idWinding
	.weak	_ZTS14idFixedWinding
	.section	.rodata._ZTS14idFixedWinding,"aG",@progbits,_ZTS14idFixedWinding,comdat
	.align 2
	.type	_ZTS14idFixedWinding, @object
	.size	_ZTS14idFixedWinding, 17
_ZTS14idFixedWinding:
	.string	"14idFixedWinding"
	.weak	_ZTI14idFixedWinding
	.section	.rodata._ZTI14idFixedWinding,"aG",@progbits,_ZTI14idFixedWinding,comdat
	.align 2
	.type	_ZTI14idFixedWinding, @object
	.size	_ZTI14idFixedWinding, 12
_ZTI14idFixedWinding:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14idFixedWinding
	.long	_ZTI9idWinding
	.weak	_ZTS8idWindow
	.section	.rodata._ZTS8idWindow,"aG",@progbits,_ZTS8idWindow,comdat
	.align 2
	.type	_ZTS8idWindow, @object
	.size	_ZTS8idWindow, 10
_ZTS8idWindow:
	.string	"8idWindow"
	.weak	_ZTI8idWindow
	.section	.sdata._ZTI8idWindow,"awG",@progbits,_ZTI8idWindow,comdat
	.align 2
	.type	_ZTI8idWindow, @object
	.size	_ZTI8idWindow, 8
_ZTI8idWindow:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS8idWindow
	.weak	_ZTV9idWinding
	.section	.rodata._ZTV9idWinding,"aG",@progbits,_ZTV9idWinding,comdat
	.align 3
	.type	_ZTV9idWinding, @object
	.size	_ZTV9idWinding, 24
_ZTV9idWinding:
	.long	0
	.long	_ZTI9idWinding
	.long	_ZN9idWindingD1Ev
	.long	_ZN9idWindingD0Ev
	.long	_ZN9idWinding5ClearEv
	.long	_ZN9idWinding10ReAllocateEib
	.weak	_ZTV14idFixedWinding
	.section	.rodata._ZTV14idFixedWinding,"aG",@progbits,_ZTV14idFixedWinding,comdat
	.align 3
	.type	_ZTV14idFixedWinding, @object
	.size	_ZTV14idFixedWinding, 24
_ZTV14idFixedWinding:
	.long	0
	.long	_ZTI14idFixedWinding
	.long	_ZN14idFixedWindingD1Ev
	.long	_ZN14idFixedWindingD0Ev
	.long	_ZN14idFixedWinding5ClearEv
	.long	_ZN14idFixedWinding10ReAllocateEib
	.weak	_ZTV8idWindow
	.section	.rodata._ZTV8idWindow,"aG",@progbits,_ZTV8idWindow,comdat
	.align 3
	.type	_ZTV8idWindow, @object
	.size	_ZTV8idWindow, 144
_ZTV8idWindow:
	.long	0
	.long	_ZTI8idWindow
	.long	_ZN8idWindowD1Ev
	.long	_ZN8idWindowD0Ev
	.long	_ZN8idWindow9AllocatedEv
	.long	_ZN8idWindow15GetWinVarByNameEPKcbPP9drawWin_t
	.long	_ZN8idWindow5ParseEP8idParserb
	.long	_ZN8idWindow11HandleEventEPK10sysEvent_tPb
	.long	_ZN8idWindow6RedrawEff
	.long	_ZN8idWindow19ArchiveToDictionaryEP6idDictb
	.long	_ZN8idWindow18InitFromDictionaryEP6idDictb
	.long	_ZN8idWindow9PostParseEv
	.long	_ZN8idWindow8ActivateEbR5idStr
	.long	_ZN8idWindow7TriggerEv
	.long	_ZN8idWindow9GainFocusEv
	.long	_ZN8idWindow9LoseFocusEv
	.long	_ZN8idWindow11GainCaptureEv
	.long	_ZN8idWindow11LoseCaptureEv
	.long	_ZN8idWindow5SizedEv
	.long	_ZN8idWindow5MovedEv
	.long	_ZN8idWindow4DrawEiff
	.long	_ZN8idWindow9MouseExitEv
	.long	_ZN8idWindow10MouseEnterEv
	.long	_ZN8idWindow14DrawBackgroundERK11idRectangle
	.long	_ZN8idWindow16RouteMouseCoordsEff
	.long	_ZN8idWindow8SetBuddyEPS_
	.long	_ZN8idWindow17HandleBuddyUpdateEPS_
	.long	_ZN8idWindow12StateChangedEb
	.long	_ZN8idWindow16ReadFromDemoFileEP10idDemoFileb
	.long	_ZN8idWindow15WriteToDemoFileEP10idDemoFile
	.long	_ZN8idWindow15WriteToSaveGameEP6idFile
	.long	_ZN8idWindow16ReadFromSaveGameEP6idFile
	.long	_ZN8idWindow9HasActionEv
	.long	_ZN8idWindow10HasScriptsEv
	.long	_ZN8idWindow13RunNamedEventEPKc
	.long	_ZN8idWindow16ParseInternalVarEPKcP8idParser
	.globl _ZN8idWindow11ScriptNamesE
	.globl _ZN8idWindow15NumRegisterVarsE
	.globl _ZN8idWindow12RegisterVarsE
	.globl _ZN8idWindow8gui_editE
	.globl _ZN8idWindow9gui_debugE
	.globl _ZN8idWindow19registerIsTemporaryE
	.weak	_ZTV14idWinRectangle
	.section	.rodata._ZTV14idWinRectangle,"aG",@progbits,_ZTV14idWinRectangle,comdat
	.align 3
	.type	_ZTV14idWinRectangle, @object
	.size	_ZTV14idWinRectangle, 48
_ZTV14idWinRectangle:
	.long	0
	.long	_ZTI14idWinRectangle
	.long	_ZN14idWinRectangleD1Ev
	.long	_ZN14idWinRectangleD0Ev
	.long	_ZN14idWinRectangle4InitEPKcP8idWindow
	.long	_ZN14idWinRectangle3SetEPKc
	.long	_ZN14idWinRectangle6UpdateEv
	.long	_ZNK14idWinRectangle5c_strEv
	.long	_ZN8idWinVar4SizeEv
	.long	_ZN14idWinRectangle15WriteToSaveGameEP6idFile
	.long	_ZN14idWinRectangle16ReadFromSaveGameEP6idFile
	.long	_ZNK14idWinRectangle1xEv
	.weak	_ZTV15idWinBackground
	.section	.rodata._ZTV15idWinBackground,"aG",@progbits,_ZTV15idWinBackground,comdat
	.align 3
	.type	_ZTV15idWinBackground, @object
	.size	_ZTV15idWinBackground, 48
_ZTV15idWinBackground:
	.long	0
	.long	_ZTI15idWinBackground
	.long	_ZN15idWinBackgroundD1Ev
	.long	_ZN15idWinBackgroundD0Ev
	.long	_ZN15idWinBackground4InitEPKcP8idWindow
	.long	_ZN15idWinBackground3SetEPKc
	.long	_ZN15idWinBackground6UpdateEv
	.long	_ZNK15idWinBackground5c_strEv
	.long	_ZN15idWinBackground4SizeEv
	.long	_ZN15idWinBackground15WriteToSaveGameEP6idFile
	.long	_ZN15idWinBackground16ReadFromSaveGameEP6idFile
	.long	_ZNK8idWinStr1xEv
	.weak	_ZTI8idWinStr
	.section	.rodata._ZTI8idWinStr,"aG",@progbits,_ZTI8idWinStr,comdat
	.align 2
	.type	_ZTI8idWinStr, @object
	.size	_ZTI8idWinStr, 12
_ZTI8idWinStr:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS8idWinStr
	.long	_ZTI8idWinVar
	.weak	_ZTI14idWinRectangle
	.section	.rodata._ZTI14idWinRectangle,"aG",@progbits,_ZTI14idWinRectangle,comdat
	.align 2
	.type	_ZTI14idWinRectangle, @object
	.size	_ZTI14idWinRectangle, 12
_ZTI14idWinRectangle:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14idWinRectangle
	.long	_ZTI8idWinVar
	.weak	_ZTV8idWinStr
	.section	.rodata._ZTV8idWinStr,"aG",@progbits,_ZTV8idWinStr,comdat
	.align 3
	.type	_ZTV8idWinStr, @object
	.size	_ZTV8idWinStr, 48
_ZTV8idWinStr:
	.long	0
	.long	_ZTI8idWinStr
	.long	_ZN8idWinStrD1Ev
	.long	_ZN8idWinStrD0Ev
	.long	_ZN8idWinStr4InitEPKcP8idWindow
	.long	_ZN8idWinStr3SetEPKc
	.long	_ZN8idWinStr6UpdateEv
	.long	_ZNK8idWinStr5c_strEv
	.long	_ZN8idWinStr4SizeEv
	.long	_ZN8idWinStr15WriteToSaveGameEP6idFile
	.long	_ZN8idWinStr16ReadFromSaveGameEP6idFile
	.long	_ZNK8idWinStr1xEv
	.weak	_ZTV9idWinBool
	.section	.rodata._ZTV9idWinBool,"aG",@progbits,_ZTV9idWinBool,comdat
	.align 3
	.type	_ZTV9idWinBool, @object
	.size	_ZTV9idWinBool, 48
_ZTV9idWinBool:
	.long	0
	.long	_ZTI9idWinBool
	.long	_ZN9idWinBoolD1Ev
	.long	_ZN9idWinBoolD0Ev
	.long	_ZN9idWinBool4InitEPKcP8idWindow
	.long	_ZN9idWinBool3SetEPKc
	.long	_ZN9idWinBool6UpdateEv
	.long	_ZNK9idWinBool5c_strEv
	.long	_ZN8idWinVar4SizeEv
	.long	_ZN9idWinBool15WriteToSaveGameEP6idFile
	.long	_ZN9idWinBool16ReadFromSaveGameEP6idFile
	.long	_ZNK9idWinBool1xEv
	.weak	_ZTI9idWinBool
	.section	.rodata._ZTI9idWinBool,"aG",@progbits,_ZTI9idWinBool,comdat
	.align 2
	.type	_ZTI9idWinBool, @object
	.size	_ZTI9idWinBool, 12
_ZTI9idWinBool:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS9idWinBool
	.long	_ZTI8idWinVar
	.weak	_ZTV9idWinVec4
	.section	.rodata._ZTV9idWinVec4,"aG",@progbits,_ZTV9idWinVec4,comdat
	.align 3
	.type	_ZTV9idWinVec4, @object
	.size	_ZTV9idWinVec4, 48
_ZTV9idWinVec4:
	.long	0
	.long	_ZTI9idWinVec4
	.long	_ZN9idWinVec4D1Ev
	.long	_ZN9idWinVec4D0Ev
	.long	_ZN9idWinVec44InitEPKcP8idWindow
	.long	_ZN9idWinVec43SetEPKc
	.long	_ZN9idWinVec46UpdateEv
	.long	_ZNK9idWinVec45c_strEv
	.long	_ZN8idWinVar4SizeEv
	.long	_ZN9idWinVec415WriteToSaveGameEP6idFile
	.long	_ZN9idWinVec416ReadFromSaveGameEP6idFile
	.long	_ZNK9idWinVec41xEv
	.weak	_ZTI9idWinVec4
	.section	.rodata._ZTI9idWinVec4,"aG",@progbits,_ZTI9idWinVec4,comdat
	.align 2
	.type	_ZTI9idWinVec4, @object
	.size	_ZTI9idWinVec4, 12
_ZTI9idWinVec4:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS9idWinVec4
	.long	_ZTI8idWinVar
	.weak	_ZTV10idWinFloat
	.section	.rodata._ZTV10idWinFloat,"aG",@progbits,_ZTV10idWinFloat,comdat
	.align 3
	.type	_ZTV10idWinFloat, @object
	.size	_ZTV10idWinFloat, 48
_ZTV10idWinFloat:
	.long	0
	.long	_ZTI10idWinFloat
	.long	_ZN10idWinFloatD1Ev
	.long	_ZN10idWinFloatD0Ev
	.long	_ZN10idWinFloat4InitEPKcP8idWindow
	.long	_ZN10idWinFloat3SetEPKc
	.long	_ZN10idWinFloat6UpdateEv
	.long	_ZNK10idWinFloat5c_strEv
	.long	_ZN8idWinVar4SizeEv
	.long	_ZN10idWinFloat15WriteToSaveGameEP6idFile
	.long	_ZN10idWinFloat16ReadFromSaveGameEP6idFile
	.long	_ZNK10idWinFloat1xEv
	.weak	_ZTI10idWinFloat
	.section	.rodata._ZTI10idWinFloat,"aG",@progbits,_ZTI10idWinFloat,comdat
	.align 2
	.type	_ZTI10idWinFloat, @object
	.size	_ZTI10idWinFloat, 12
_ZTI10idWinFloat:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS10idWinFloat
	.long	_ZTI8idWinVar
	.weak	_ZTV8idWinInt
	.section	.rodata._ZTV8idWinInt,"aG",@progbits,_ZTV8idWinInt,comdat
	.align 3
	.type	_ZTV8idWinInt, @object
	.size	_ZTV8idWinInt, 48
_ZTV8idWinInt:
	.long	0
	.long	_ZTI8idWinInt
	.long	_ZN8idWinIntD1Ev
	.long	_ZN8idWinIntD0Ev
	.long	_ZN8idWinInt4InitEPKcP8idWindow
	.long	_ZN8idWinInt3SetEPKc
	.long	_ZN8idWinInt6UpdateEv
	.long	_ZNK8idWinInt5c_strEv
	.long	_ZN8idWinVar4SizeEv
	.long	_ZN8idWinInt15WriteToSaveGameEP6idFile
	.long	_ZN8idWinInt16ReadFromSaveGameEP6idFile
	.long	_ZNK8idWinInt1xEv
	.weak	_ZTI8idWinInt
	.section	.rodata._ZTI8idWinInt,"aG",@progbits,_ZTI8idWinInt,comdat
	.align 2
	.type	_ZTI8idWinInt, @object
	.size	_ZTI8idWinInt, 12
_ZTI8idWinInt:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS8idWinInt
	.long	_ZTI8idWinVar
	.weak	_ZTV6idCVar
	.section	.rodata._ZTV6idCVar,"aG",@progbits,_ZTV6idCVar,comdat
	.align 3
	.type	_ZTV6idCVar, @object
	.size	_ZTV6idCVar, 32
_ZTV6idCVar:
	.long	0
	.long	_ZTI6idCVar
	.long	_ZN6idCVarD1Ev
	.long	_ZN6idCVarD0Ev
	.long	_ZN6idCVar17InternalSetStringEPKc
	.long	_ZN6idCVar15InternalSetBoolEb
	.long	_ZN6idCVar18InternalSetIntegerEi
	.long	_ZN6idCVar16InternalSetFloatEf
	.weak	_ZTI15idWinBackground
	.section	.rodata._ZTI15idWinBackground,"aG",@progbits,_ZTI15idWinBackground,comdat
	.align 2
	.type	_ZTI15idWinBackground, @object
	.size	_ZTI15idWinBackground, 12
_ZTI15idWinBackground:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS15idWinBackground
	.long	_ZTI8idWinStr
	.weak	_ZTS8idWinStr
	.section	.rodata._ZTS8idWinStr,"aG",@progbits,_ZTS8idWinStr,comdat
	.align 2
	.type	_ZTS8idWinStr, @object
	.size	_ZTS8idWinStr, 10
_ZTS8idWinStr:
	.string	"8idWinStr"
	.weak	_ZTS14idWinRectangle
	.section	.rodata._ZTS14idWinRectangle,"aG",@progbits,_ZTS14idWinRectangle,comdat
	.align 2
	.type	_ZTS14idWinRectangle, @object
	.size	_ZTS14idWinRectangle, 17
_ZTS14idWinRectangle:
	.string	"14idWinRectangle"
	.weak	_ZTS9idWinBool
	.section	.rodata._ZTS9idWinBool,"aG",@progbits,_ZTS9idWinBool,comdat
	.align 2
	.type	_ZTS9idWinBool, @object
	.size	_ZTS9idWinBool, 11
_ZTS9idWinBool:
	.string	"9idWinBool"
	.weak	_ZTS9idWinVec4
	.section	.rodata._ZTS9idWinVec4,"aG",@progbits,_ZTS9idWinVec4,comdat
	.align 2
	.type	_ZTS9idWinVec4, @object
	.size	_ZTS9idWinVec4, 11
_ZTS9idWinVec4:
	.string	"9idWinVec4"
	.weak	_ZTS10idWinFloat
	.section	.rodata._ZTS10idWinFloat,"aG",@progbits,_ZTS10idWinFloat,comdat
	.align 2
	.type	_ZTS10idWinFloat, @object
	.size	_ZTS10idWinFloat, 13
_ZTS10idWinFloat:
	.string	"10idWinFloat"
	.weak	_ZTS8idWinInt
	.section	.rodata._ZTS8idWinInt,"aG",@progbits,_ZTS8idWinInt,comdat
	.align 2
	.type	_ZTS8idWinInt, @object
	.size	_ZTS8idWinInt, 10
_ZTS8idWinInt:
	.string	"8idWinInt"
	.weak	_ZTI6idCVar
	.section	.sdata._ZTI6idCVar,"awG",@progbits,_ZTI6idCVar,comdat
	.align 2
	.type	_ZTI6idCVar, @object
	.size	_ZTI6idCVar, 8
_ZTI6idCVar:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS6idCVar
	.weak	_ZTS15idWinBackground
	.section	.rodata._ZTS15idWinBackground,"aG",@progbits,_ZTS15idWinBackground,comdat
	.align 2
	.type	_ZTS15idWinBackground, @object
	.size	_ZTS15idWinBackground, 18
_ZTS15idWinBackground:
	.string	"15idWinBackground"
	.weak	_ZTS6idCVar
	.section	.sdata._ZTS6idCVar,"awG",@progbits,_ZTS6idCVar,comdat
	.align 2
	.type	_ZTS6idCVar, @object
	.size	_ZTS6idCVar, 8
_ZTS6idCVar:
	.string	"6idCVar"
	.weak	_ZN6idCVarD1Ev
	.set	_ZN6idCVarD1Ev,_ZN6idCVarD2Ev
	.weak	_ZN9idWindingD1Ev
	.set	_ZN9idWindingD1Ev,_ZN9idWindingD2Ev
	.weak	_ZN9idWinVec4D1Ev
	.set	_ZN9idWinVec4D1Ev,_ZN9idWinVec4D2Ev
	.weak	_ZN10idWinFloatD1Ev
	.set	_ZN10idWinFloatD1Ev,_ZN10idWinFloatD2Ev
	.weak	_ZN8idWinIntD1Ev
	.set	_ZN8idWinIntD1Ev,_ZN8idWinIntD2Ev
	.weak	_ZN14idWinRectangleD1Ev
	.set	_ZN14idWinRectangleD1Ev,_ZN14idWinRectangleD2Ev
	.weak	_ZN9idWinBoolD1Ev
	.set	_ZN9idWinBoolD1Ev,_ZN9idWinBoolD2Ev
	.weak	_ZN8idWinStrD1Ev
	.set	_ZN8idWinStrD1Ev,_ZN8idWinStrD2Ev
	.weak	_ZN14idFixedWindingD1Ev
	.set	_ZN14idFixedWindingD1Ev,_ZN14idFixedWindingD2Ev
	.weak	_ZN15idWinBackgroundD1Ev
	.set	_ZN15idWinBackgroundD1Ev,_ZN15idWinBackgroundD2Ev
	.weak	_ZN6idCVarC1EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE
	.set	_ZN6idCVarC1EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE,_ZN6idCVarC2EPKcS1_iS1_PFvRK9idCmdArgsPFvS1_EE
	.weak	_ZN14idRegisterListD1Ev
	.set	_ZN14idRegisterListD1Ev,_ZN14idRegisterListD2Ev
	.weak	_ZN15idGuiScriptListD1Ev
	.set	_ZN15idGuiScriptListD1Ev,_ZN15idGuiScriptListD2Ev
	.weak	_ZN15idGuiScriptListC1Ev
	.set	_ZN15idGuiScriptListC1Ev,_ZN15idGuiScriptListC2Ev
	.globl _ZN8idWindowD1Ev
	.set	_ZN8idWindowD1Ev,_ZN8idWindowD2Ev
	.globl _ZN8idWindowC1EP15idDeviceContextP20idUserInterfaceLocal
	.set	_ZN8idWindowC1EP15idDeviceContextP20idUserInterfaceLocal,_ZN8idWindowC2EP15idDeviceContextP20idUserInterfaceLocal
	.globl _ZN8idWindowC1EP20idUserInterfaceLocal
	.set	_ZN8idWindowC1EP20idUserInterfaceLocal,_ZN8idWindowC2EP20idUserInterfaceLocal
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	_ZN8idWindow12RegisterVarsE, @object
	.size	_ZN8idWindow12RegisterVarsE, 312
_ZN8idWindow12RegisterVarsE:
	.long	.LC163
	.long	0
	.zero	4
	.long	.LC164
	.long	0
	.zero	4
	.long	.LC165
	.long	0
	.zero	4
	.long	.LC166
	.long	0
	.zero	4
	.long	.LC25
	.long	7
	.zero	4
	.long	.LC167
	.long	0
	.zero	4
	.long	.LC168
	.long	5
	.zero	4
	.long	.LC169
	.long	5
	.zero	4
	.long	.LC37
	.long	1
	.zero	4
	.long	.LC170
	.long	1
	.zero	4
	.long	.LC84
	.long	2
	.zero	4
	.long	.LC171
	.long	2
	.zero	4
	.long	.LC92
	.long	4
	.zero	4
	.long	.LC83
	.long	4
	.zero	4
	.long	.LC172
	.long	4
	.zero	4
	.long	.LC173
	.long	4
	.zero	4
	.long	.LC174
	.long	4
	.zero	4
	.long	.LC175
	.long	4
	.zero	4
	.long	.LC176
	.long	4
	.zero	4
	.long	.LC177
	.long	4
	.zero	4
	.long	.LC178
	.long	0
	.zero	4
	.long	.LC179
	.long	0
	.zero	4
	.long	.LC180
	.long	0
	.zero	4
	.long	.LC181
	.long	0
	.zero	4
	.long	.LC182
	.long	0
	.zero	4
	.long	.LC183
	.long	2
	.zero	4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC1:
	.4byte	0
.LC8:
	.4byte	1501560836
.LC13:
	.4byte	1097859072
.LC14:
	.4byte	1120403456
.LC15:
	.4byte	1101004800
.LC16:
	.4byte	1048576000
.LC18:
	.4byte	1084227584
.LC19:
	.4byte	-1082130432
.LC22:
	.4byte	1051931443
.LC23:
	.4byte	1142947840
.LC24:
	.4byte	1139802112
.LC27:
	.4byte	-990248960
.LC33:
	.4byte	897988541
.LC34:
	.4byte	1056964608
.LC35:
	.4byte	1073741824
.LC36:
	.4byte	-1073741824
.LC67:
	.4byte	1501560832
.LC68:
	.4byte	1082130432
.LC73:
	.4byte	1148846080
.LC74:
	.4byte	981668463
.LC77:
	.4byte	1117782016
.LC80:
	.4byte	1133903872
.LC99:
	.4byte	-887581057
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC102:
	.4byte	0
	.4byte	0
	.section	".data"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	_ZN8idWindow11ScriptNamesE, @object
	.size	_ZN8idWindow11ScriptNamesE, 44
_ZN8idWindow11ScriptNamesE:
	.long	.LC152
	.long	.LC153
	.long	.LC154
	.long	.LC155
	.long	.LC156
	.long	.LC157
	.long	.LC158
	.long	.LC159
	.long	.LC160
	.long	.LC161
	.long	.LC162
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC2:
	.string	"%f"
	.zero	1
.LC3:
	.string	"%i"
	.zero	1
.LC4:
	.string	""
	.zero	3
.LC5:
	.string	"%s 0"
	.zero	3
.LC6:
	.string	"%s 1"
	.zero	3
.LC9:
	.string	"0"
	.zero	2
.LC10:
	.string	"%f,%f,%f,%f"
.LC11:
	.string	"%f %f %f %f"
.LC12:
	.string	"x: %i  y: %i"
	.zero	3
.LC17:
	.string	"w: %i  h: %i"
	.zero	3
.LC20:
	.string	"gui_debug"
	.zero	2
.LC21:
	.string	"gui_edit"
	.zero	3
.LC25:
	.string	"rect"
	.zero	3
.LC26:
	.string	" ; "
.LC28:
	.string	"%s\n"
.LC29:
	.string	"Rect: %0.1f, %0.1f, %0.1f, %0.1f\n"
	.zero	2
.LC30:
	.string	"Draw Rect: %0.1f, %0.1f, %0.1f, %0.1f\n"
	.zero	1
.LC31:
	.string	"Client Rect: %0.1f, %0.1f, %0.1f, %0.1f\n"
	.zero	3
.LC32:
	.string	"Cursor: %0.1f : %0.1f\n"
	.zero	1
.LC37:
	.string	"rotate"
	.zero	1
.LC38:
	.string	"shear"
	.zero	2
.LC39:
	.string	"showtime"
	.zero	3
.LC40:
	.string	"showcoords"
	.zero	1
.LC41:
	.string	"forceaspectwidth"
	.zero	3
.LC42:
	.string	"forceaspectheight"
	.zero	2
.LC43:
	.string	"matscalex"
	.zero	2
.LC44:
	.string	"matscaley"
	.zero	2
.LC45:
	.string	"bordersize"
	.zero	1
.LC46:
	.string	"nowrap"
	.zero	1
.LC47:
	.string	"shadow"
	.zero	1
.LC48:
	.string	"textalign"
	.zero	2
.LC49:
	.string	"textalignx"
	.zero	1
.LC50:
	.string	"textaligny"
	.zero	1
.LC51:
	.string	","
	.zero	2
.LC52:
	.string	"Expected comma in shear definiation"
.LC53:
	.string	"wantenter"
	.zero	2
.LC54:
	.string	"naturalmatscale"
.LC55:
	.string	"noclip"
	.zero	1
.LC56:
	.string	"nocursor"
	.zero	3
.LC57:
	.string	"menugui"
.LC58:
	.string	"modal"
	.zero	2
.LC59:
	.string	"invertrect"
	.zero	1
.LC60:
	.string	"name"
	.zero	3
.LC61:
	.string	"play"
	.zero	3
.LC62:
	.string	"play encountered during gui parse.. see Robert\n"
.LC63:
	.string	"comment"
.LC64:
	.string	"font"
	.zero	3
.LC65:
	.string	"Divide by zero in window '%s' in %s"
.LC69:
	.string	"R_EvaluateExpression: bad opcode"
	.zero	3
.LC70:
	.string	"idWindow::ReadSaveGameString: invalid length"
	.zero	3
.LC71:
	.string	"idWindow::idWindow(idDeviceContext *d, idUserInterfaceLocal *ui) size %d @%p\r\n"
	.zero	1
.LC72:
	.string	"idWindow::idWindow(idUserInterfaceLocal *ui) size %d\r\n"
	.zero	1
.LC75:
	.string	"Invalid transitional data for window %s in gui %s"
	.zero	2
.LC76:
	.string	" %0.1f seconds\n%s"
	.zero	2
.LC78:
	.string	"x: %i y: %i  cursorx: %i cursory: %i"
	.zero	3
.LC79:
	.string	"x: %1.f y: %1.f"
.LC81:
	.string	"childsel"
	.zero	3
.LC82:
	.string	"notime"
	.zero	1
.LC83:
	.string	"background"
	.zero	1
.LC84:
	.string	"visible"
.LC85:
	.string	"backColor"
	.zero	2
.LC86:
	.string	"matColor"
	.zero	3
.LC87:
	.string	"foreColor"
	.zero	2
.LC88:
	.string	"hoverColor"
	.zero	1
.LC89:
	.string	"borderColor"
.LC90:
	.string	"textScale"
	.zero	2
.LC91:
	.string	"noEvents"
	.zero	3
.LC92:
	.string	"text"
	.zero	3
.LC93:
	.string	"backGroundName"
	.zero	1
.LC94:
	.string	"hidecursor"
	.zero	1
.LC95:
	.string	"gui::"
	.zero	2
.LC96:
	.string	"%s"
	.zero	1
.LC97:
	.string	"::"
	.zero	1
.LC98:
	.string	"expressionConstant: gui %s hit MAX_EXPRESSION_REGISTERS"
.LC100:
	.string	"expressionTemporary: gui %s hit MAX_EXPRESSION_REGISTERS"
	.zero	3
.LC101:
	.string	"expressionOp: gui %s hit MAX_EXPRESSION_OPS"
.LC103:
	.string	"("
	.zero	2
.LC104:
	.string	")"
	.zero	2
.LC105:
	.string	"time"
	.zero	3
.LC106:
	.string	"-"
	.zero	2
.LC107:
	.string	"."
	.zero	2
.LC108:
	.string	"["
	.zero	2
.LC109:
	.string	"]"
	.zero	2
.LC110:
	.string	"Bad negative number '%s'"
	.zero	3
.LC111:
	.string	"Var expression not vec4, float or int '%s'"
	.zero	1
.LC112:
	.string	"*"
	.zero	2
.LC113:
	.string	"+"
	.zero	2
.LC114:
	.string	">"
	.zero	2
.LC115:
	.string	"&&"
	.zero	1
.LC116:
	.string	":"
	.zero	2
.LC117:
	.string	"/"
	.zero	2
.LC118:
	.string	"%"
	.zero	2
.LC119:
	.string	">="
	.zero	1
.LC120:
	.string	"<"
	.zero	2
.LC121:
	.string	"<="
	.zero	1
.LC122:
	.string	"=="
	.zero	1
.LC123:
	.string	"!="
	.zero	1
.LC124:
	.string	"||"
	.zero	1
.LC125:
	.string	"?"
	.zero	2
.LC126:
	.string	"{"
	.zero	2
.LC127:
	.string	"}"
	.zero	2
.LC128:
	.string	"if"
	.zero	1
.LC129:
	.string	"Unexpected end of file"
	.zero	1
.LC130:
	.string	"else"
	.zero	3
.LC131:
	.string	"Unexpected {"
	.zero	3
.LC132:
	.string	"windowDef"
	.zero	2
.LC133:
	.string	"animationDef"
	.zero	3
.LC134:
	.string	"choiceDef"
	.zero	2
.LC135:
	.string	"sliderDef"
	.zero	2
.LC136:
	.string	"markerDef"
	.zero	2
.LC137:
	.string	"bindDef"
.LC138:
	.string	"listDef"
.LC139:
	.string	"fieldDef"
	.zero	3
.LC140:
	.string	"renderDef"
	.zero	2
.LC141:
	.string	"gameSSDDef"
	.zero	1
.LC142:
	.string	"gameBearShootDef"
	.zero	3
.LC143:
	.string	"gameBustOutDef"
	.zero	1
.LC144:
	.string	"onNamedEvent"
	.zero	3
.LC145:
	.string	"Expected event name"
.LC146:
	.string	"rvNamedEvent size %d %s\r\n"
	.zero	2
.LC147:
	.string	"onTime"
	.zero	1
.LC148:
	.string	"definefloat"
.LC149:
	.string	"definevec4"
	.zero	1
.LC150:
	.string	"float"
	.zero	2
.LC151:
	.string	"editDef"
.LC152:
	.string	"onMouseEnter"
	.zero	3
.LC153:
	.string	"onMouseExit"
.LC154:
	.string	"onAction"
	.zero	3
.LC155:
	.string	"onActivate"
	.zero	1
.LC156:
	.string	"onDeactivate"
	.zero	3
.LC157:
	.string	"onESC"
	.zero	2
.LC158:
	.string	"onEvent"
.LC159:
	.string	"onTrigger"
	.zero	2
.LC160:
	.string	"onActionRelease"
.LC161:
	.string	"onEnter"
.LC162:
	.string	"onEnterRelease"
	.zero	1
.LC163:
	.string	"forecolor"
	.zero	2
.LC164:
	.string	"hovercolor"
	.zero	1
.LC165:
	.string	"backcolor"
	.zero	2
.LC166:
	.string	"bordercolor"
.LC167:
	.string	"matcolor"
	.zero	3
.LC168:
	.string	"scale"
	.zero	2
.LC169:
	.string	"translate"
	.zero	2
.LC170:
	.string	"textscale"
	.zero	2
.LC171:
	.string	"noevents"
	.zero	3
.LC172:
	.string	"runscript"
	.zero	2
.LC173:
	.string	"varbackground"
	.zero	2
.LC174:
	.string	"cvar"
	.zero	3
.LC175:
	.string	"choices"
.LC176:
	.string	"choiceVar"
	.zero	2
.LC177:
	.string	"bind"
	.zero	3
.LC178:
	.string	"modelRotate"
.LC179:
	.string	"modelOrigin"
.LC180:
	.string	"lightOrigin"
.LC181:
	.string	"lightColor"
	.zero	1
.LC182:
	.string	"viewOffset"
	.zero	1
.LC183:
	.string	"hideCursor"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	_ZN8idWindow15NumRegisterVarsE, @object
	.size	_ZN8idWindow15NumRegisterVarsE, 4
_ZN8idWindow15NumRegisterVarsE:
	.long	26
	.section	".bss"
	.align 3
	.set	.LANCHOR0,. + 0
	.type	_ZN8idWindow8gui_editE, @object
	.size	_ZN8idWindow8gui_editE, 52
_ZN8idWindow8gui_editE:
	.zero	52
	.type	_ZL17VAR_GUIPREFIX_LEN, @object
	.size	_ZL17VAR_GUIPREFIX_LEN, 4
_ZL17VAR_GUIPREFIX_LEN:
	.zero	4
	.type	_ZN8idWindow9gui_debugE, @object
	.size	_ZN8idWindow9gui_debugE, 52
_ZN8idWindow9gui_debugE:
	.zero	52
	.type	_ZZN8idWindow9DebugDrawEiffE4buff, @object
	.size	_ZZN8idWindow9DebugDrawEiffE4buff, 16384
_ZZN8idWindow9DebugDrawEiffE4buff:
	.zero	16384
	.type	_ZZN8idWindow15SetupTransformsEffE5trans, @object
	.size	_ZZN8idWindow15SetupTransformsEffE5trans, 36
_ZZN8idWindow15SetupTransformsEffE5trans:
	.zero	36
	.type	_ZGVZN8idWindow15SetupTransformsEffE5trans, @object
	.size	_ZGVZN8idWindow15SetupTransformsEffE5trans, 8
_ZGVZN8idWindow15SetupTransformsEffE5trans:
	.zero	8
	.type	_ZGVZN8idWindow15SetupTransformsEffE3org, @object
	.size	_ZGVZN8idWindow15SetupTransformsEffE3org, 8
_ZGVZN8idWindow15SetupTransformsEffE3org:
	.zero	8
	.type	_ZZN8idWindow15SetupTransformsEffE3org, @object
	.size	_ZZN8idWindow15SetupTransformsEffE3org, 12
_ZZN8idWindow15SetupTransformsEffE3org:
	.zero	12
	.zero	4
	.type	_ZGVZN8idWindow15SetupTransformsEffE3rot, @object
	.size	_ZGVZN8idWindow15SetupTransformsEffE3rot, 8
_ZGVZN8idWindow15SetupTransformsEffE3rot:
	.zero	8
	.type	_ZGVZN8idWindow15SetupTransformsEffE3vec, @object
	.size	_ZGVZN8idWindow15SetupTransformsEffE3vec, 8
_ZGVZN8idWindow15SetupTransformsEffE3vec:
	.zero	8
	.type	_ZZN8idWindow15SetupTransformsEffE3vec, @object
	.size	_ZZN8idWindow15SetupTransformsEffE3vec, 12
_ZZN8idWindow15SetupTransformsEffE3vec:
	.zero	12
	.type	_ZZN8idWindow15SetupTransformsEffE3rot, @object
	.size	_ZZN8idWindow15SetupTransformsEffE3rot, 68
_ZZN8idWindow15SetupTransformsEffE3rot:
	.zero	68
	.type	_ZGVZN8idWindow15SetupTransformsEffE4smat, @object
	.size	_ZGVZN8idWindow15SetupTransformsEffE4smat, 8
_ZGVZN8idWindow15SetupTransformsEffE4smat:
	.zero	8
	.type	_ZZN8idWindow15SetupTransformsEffE4smat, @object
	.size	_ZZN8idWindow15SetupTransformsEffE4smat, 36
_ZZN8idWindow15SetupTransformsEffE4smat:
	.zero	36
	.type	_ZN8idWindow19registerIsTemporaryE, @object
	.size	_ZN8idWindow19registerIsTemporaryE, 2048
_ZN8idWindow19registerIsTemporaryE:
	.zero	2048
	.type	_ZZN8idWindow15FindChildByNameEPKcE2dw, @object
	.size	_ZZN8idWindow15FindChildByNameEPKcE2dw, 8
_ZZN8idWindow15FindChildByNameEPKcE2dw:
	.zero	8
	.type	_ZZN8idWindow8EvalRegsEibE8lastEval, @object
	.size	_ZZN8idWindow8EvalRegsEibE8lastEval, 4
_ZZN8idWindow8EvalRegsEibE8lastEval:
	.zero	4
	.type	_ZZN8idWindow8EvalRegsEibE4regs, @object
	.size	_ZZN8idWindow8EvalRegsEibE4regs, 8192
_ZZN8idWindow8EvalRegsEibE4regs:
	.zero	8192
	.type	_ZZN8idWindow11HandleEventEPK10sysEvent_tPbE13actionDownRun, @object
	.size	_ZZN8idWindow11HandleEventEPK10sysEvent_tPbE13actionDownRun, 1
_ZZN8idWindow11HandleEventEPK10sysEvent_tPbE13actionDownRun:
	.zero	1
	.type	_ZZN8idWindow11HandleEventEPK10sysEvent_tPbE11actionUpRun, @object
	.size	_ZZN8idWindow11HandleEventEPK10sysEvent_tPbE11actionUpRun, 1
_ZZN8idWindow11HandleEventEPK10sysEvent_tPbE11actionUpRun:
	.zero	1
	.section	".text"
.Letext0:
	.file 26 "<built-in>"
	.file 27 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 28 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 29 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../sys/sys_public.h"
	.file 30 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/Common.h"
	.file 31 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/FileSystem.h"
	.file 32 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/Lib.h"
	.file 33 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Random.h"
	.file 34 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Angles.h"
	.file 35 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Quat.h"
	.file 36 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Plane.h"
	.file 37 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Ode.h"
	.file 38 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/bv/Sphere.h"
	.file 39 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/bv/Bounds.h"
	.file 40 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/bv/Box.h"
	.file 41 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/bv/Frustum.h"
	.file 42 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/geometry/DrawVert.h"
	.file 43 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/geometry/JointTransform.h"
	.file 44 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/geometry/Surface.h"
	.file 45 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/geometry/TraceModel.h"
	.file 46 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/Lexer.h"
	.file 47 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/File.h"
	.file 48 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/Parser.h"
	.file 49 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/containers/StrList.h"
	.file 50 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/containers/StrPool.h"
	.file 51 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/containers/PlaneSet.h"
	.file 52 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/LangDict.h"
	.file 53 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/BitMsg.h"
	.file 54 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/MapFile.h"
	.file 55 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/UsercmdGen.h"
	.file 56 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/DeclParticle.h"
	.file 57 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../renderer/RenderWorld.h"
	.file 58 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../renderer/Cinematic.h"
	.file 59 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../renderer/Model.h"
	.file 60 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/c++/4.6.3/powerpc-eabi/bits/c++config.h"
	.file 61 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/c++/4.6.3/exception"
	.file 62 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../renderer/RenderSystem.h"
	.file 63 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../sound/sound.h"
	.file 64 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../ui/UserInterface.h"
	.file 65 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../cm/CollisionModel.h"
	.file 66 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../tools/compilers/aas/AASFile.h"
	.file 67 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../game/Game.h"
	.file 68 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/async/NetworkSystem.h"
	.file 69 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../renderer/ModelManager.h"
	.file 70 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../tools/compilers/aas/AASFileManager.h"
	.file 71 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/KeyInput.h"
	.file 72 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/Session.h"
	.file 73 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../ui/ListGUI.h"
	.file 74 "d:/Data/Nintendo/DoomGX/src/ui/SimpleWindow.h"
	.file 75 "d:/Data/Nintendo/DoomGX/src/ui/UserInterfaceLocal.h"
	.file 76 "d:/Data/Nintendo/DoomGX/src/ui/GameBearShootWindow.h"
	.file 77 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/Console.h"
	.file 78 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Curve.h"
	.file 79 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../idlib/math/Simd.h"
	.file 80 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/BuildVersion.h"
	.file 81 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/precompiled.h"
	.file 82 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/EventLoop.h"
	.file 83 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/EditField.h"
	.file 84 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/async/AsyncNetwork.h"
	.file 85 "d:/Data/Nintendo/DoomGX/src/ui/../idlib/../framework/async/AsyncServer.h"
	.file 86 "d:/Data/Nintendo/DoomGX/src/ui/EditWindow.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x41707
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF6973
	.byte	0x4
	.4byte	.LASF6974
	.4byte	.LASF6975
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x8d30
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x1b
	.byte	0xd4
	.4byte	0x34
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF271
	.byte	0xc
	.byte	0x1a
	.byte	0
	.4byte	0x8e
	.uleb128 0x5
	.string	"gpr"
	.byte	0x1a
	.byte	0
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"fpr"
	.byte	0x1a
	.byte	0
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1a
	.byte	0
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1a
	.byte	0
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x1a
	.byte	0
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x9
	.4byte	0x8e
	.4byte	0xd1
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeb
	.uleb128 0xc
	.4byte	0xde
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x100
	.uleb128 0xa
	.4byte	0x34
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x1c
	.byte	0x6e
	.4byte	0x100
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0xd
	.byte	0x4
	.byte	0x1d
	.byte	0xae
	.4byte	.LASF34
	.4byte	0x199
	.uleb128 0xe
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF19
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF20
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF21
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF22
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF23
	.sleb128 16
	.uleb128 0xe
	.4byte	.LASF24
	.sleb128 32
	.uleb128 0xe
	.4byte	.LASF25
	.sleb128 64
	.uleb128 0xe
	.4byte	.LASF26
	.sleb128 128
	.uleb128 0xe
	.4byte	.LASF27
	.sleb128 256
	.uleb128 0xe
	.4byte	.LASF28
	.sleb128 512
	.uleb128 0xe
	.4byte	.LASF29
	.sleb128 4096
	.uleb128 0xe
	.4byte	.LASF30
	.sleb128 8192
	.uleb128 0xe
	.4byte	.LASF31
	.sleb128 16384
	.uleb128 0xe
	.4byte	.LASF32
	.sleb128 32768
	.byte	0
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x1d
	.byte	0xbe
	.4byte	0x127
	.uleb128 0xd
	.byte	0x4
	.byte	0x1d
	.byte	0xe0
	.4byte	.LASF35
	.4byte	0x1d5
	.uleb128 0xe
	.4byte	.LASF36
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF37
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF38
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF39
	.sleb128 3
	.uleb128 0xe
	.4byte	.LASF40
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF41
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x1d
	.byte	0xe7
	.4byte	0x1a4
	.uleb128 0xf
	.byte	0x18
	.byte	0x1d
	.2byte	0x102
	.4byte	.LASF55
	.4byte	0x248
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1d
	.2byte	0x103
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1d
	.2byte	0x104
	.4byte	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1d
	.2byte	0x105
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1d
	.2byte	0x106
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1d
	.2byte	0x107
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1d
	.2byte	0x108
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1d
	.2byte	0x109
	.4byte	0x1e0
	.uleb128 0x12
	.byte	0x4
	.byte	0x1d
	.2byte	0x1bd
	.4byte	.LASF3553
	.4byte	0x27a
	.uleb128 0xe
	.4byte	.LASF50
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF51
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF52
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF53
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1d
	.2byte	0x1c2
	.4byte	0x254
	.uleb128 0xf
	.byte	0xc
	.byte	0x1d
	.2byte	0x1c4
	.4byte	.LASF56
	.4byte	0x2c0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1d
	.2byte	0x1c5
	.4byte	0x27a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"ip"
	.byte	0x1d
	.2byte	0x1c6
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1d
	.2byte	0x1c7
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1d
	.2byte	0x1c8
	.4byte	0x286
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x4
	.byte	0x1e
	.byte	0x70
	.4byte	0x2cc
	.4byte	0x7d6
	.uleb128 0x15
	.4byte	.LASF120
	.4byte	0x27243
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1e
	.byte	0x72
	.byte	0x1
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x2ff
	.4byte	0x30c
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1e
	.byte	0x77
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x329
	.4byte	0x33f
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1183e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1e
	.byte	0x7a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x35c
	.4byte	0x363
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1e
	.byte	0x7d
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x380
	.4byte	0x387
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1e
	.byte	0x80
	.4byte	.LASF108
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x3a8
	.4byte	0x3af
	.uleb128 0x17
	.4byte	0x2b02a
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1e
	.byte	0x83
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x3cc
	.4byte	0x3d3
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1e
	.byte	0x86
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x3f0
	.4byte	0x401
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x159e
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1e
	.byte	0x8a
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x41e
	.4byte	0x425
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1e
	.byte	0x90
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x442
	.4byte	0x453
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1e
	.byte	0x93
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x470
	.4byte	0x481
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x16f2b
	.uleb128 0x19
	.4byte	0x1406f
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1e
	.byte	0x96
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x49e
	.4byte	0x4aa
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1e
	.byte	0x99
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x4c7
	.4byte	0x4d3
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1e
	.byte	0x9c
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x4f0
	.4byte	0x506
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1e
	.byte	0x9f
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x523
	.4byte	0x539
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x16e15
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1e
	.byte	0xa2
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x556
	.4byte	0x55d
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1e
	.byte	0xa5
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x57a
	.4byte	0x586
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1e
	.byte	0xa8
	.4byte	.LASF89
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x5a3
	.4byte	0x5b0
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF90
	.byte	0x1e
	.byte	0xab
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x5cd
	.4byte	0x5de
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xf66d
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1e
	.byte	0xaf
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x5fb
	.4byte	0x608
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF94
	.byte	0x1e
	.byte	0xb2
	.4byte	.LASF95
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x625
	.4byte	0x632
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1e
	.byte	0xb5
	.4byte	.LASF97
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x64f
	.4byte	0x65c
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1e
	.byte	0xb8
	.4byte	.LASF99
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x679
	.4byte	0x680
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF100
	.byte	0x1e
	.byte	0xbb
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x69d
	.4byte	0x6a9
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF102
	.byte	0x1e
	.byte	0xbf
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x6c6
	.4byte	0x6d3
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1e
	.byte	0xc3
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x6f0
	.4byte	0x6fd
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1e
	.byte	0xc6
	.4byte	.LASF109
	.4byte	0x148d7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1a
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x71e
	.4byte	0x725
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1e
	.byte	0xc9
	.4byte	.LASF111
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1b
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x746
	.4byte	0x752
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1e
	.byte	0xcc
	.4byte	.LASF113
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x773
	.4byte	0x77f
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1e
	.byte	0xcf
	.4byte	.LASF115
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1d
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x7a0
	.4byte	0x7ac
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1e
	.byte	0xd2
	.4byte	.LASF117
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1e
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x7c9
	.uleb128 0x17
	.4byte	0x7d6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2cc
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x4
	.byte	0x2
	.byte	0xd0
	.4byte	0x7dc
	.4byte	0xc3a
	.uleb128 0x15
	.4byte	.LASF121
	.4byte	0x27243
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF123
	.byte	0x2
	.byte	0xd2
	.byte	0x1
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x80f
	.4byte	0x81c
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0x2
	.byte	0xd4
	.4byte	.LASF124
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x839
	.4byte	0x840
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x2
	.byte	0xd5
	.4byte	.LASF125
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x85d
	.4byte	0x864
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0x2
	.byte	0xd6
	.4byte	.LASF126
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x885
	.4byte	0x88c
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF127
	.byte	0x2
	.byte	0xd9
	.4byte	.LASF128
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x8a9
	.4byte	0x8b5
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1f782
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF129
	.byte	0x2
	.byte	0xdd
	.4byte	.LASF130
	.4byte	0x1f782
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x8d6
	.4byte	0x8e2
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF131
	.byte	0x2
	.byte	0xe0
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x8ff
	.4byte	0x915
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF133
	.byte	0x2
	.byte	0xe1
	.4byte	.LASF134
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x932
	.4byte	0x948
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF135
	.byte	0x2
	.byte	0xe2
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x965
	.4byte	0x97b
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF137
	.byte	0x2
	.byte	0xe3
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x998
	.4byte	0x9ae
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF139
	.byte	0x2
	.byte	0xe6
	.4byte	.LASF140
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x9cf
	.4byte	0x9db
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF141
	.byte	0x2
	.byte	0xe7
	.4byte	.LASF142
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0x7dc
	.byte	0x1
	.4byte	0x9fc
	.4byte	0xa08
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF143
	.byte	0x2
	.byte	0xe8
	.4byte	.LASF144
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xa29
	.4byte	0xa35
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF145
	.byte	0x2
	.byte	0xe9
	.4byte	.LASF146
	.4byte	0x119
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xa56
	.4byte	0xa62
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF147
	.byte	0x2
	.byte	0xed
	.4byte	.LASF148
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xa83
	.4byte	0xa8f
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15a5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF149
	.byte	0x2
	.byte	0xf0
	.4byte	.LASF150
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xaac
	.4byte	0xab8
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x16e15
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF151
	.byte	0x2
	.byte	0xf1
	.4byte	.LASF152
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xad5
	.4byte	0xae6
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x16e15
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF153
	.byte	0x2
	.byte	0xf4
	.4byte	.LASF154
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xb03
	.4byte	0xb0f
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF155
	.byte	0x2
	.byte	0xf5
	.4byte	.LASF156
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xb30
	.4byte	0xb37
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF157
	.byte	0x2
	.byte	0xf6
	.4byte	.LASF158
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xb54
	.4byte	0xb60
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF159
	.byte	0x2
	.byte	0xf9
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xb7d
	.4byte	0xb89
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF161
	.byte	0x2
	.byte	0xfc
	.4byte	.LASF162
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xba6
	.4byte	0xbb2
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF163
	.byte	0x2
	.byte	0xff
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xbcf
	.4byte	0xbe5
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xfdb7
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x102
	.4byte	.LASF245
	.4byte	0x1406f
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xc07
	.4byte	0xc13
	.uleb128 0x17
	.4byte	0x2b035
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF1177
	.byte	0x2
	.2byte	0x103
	.4byte	.LASF1179
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0x7dc
	.byte	0x1
	.4byte	0xc2d
	.uleb128 0x17
	.4byte	0xc3a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1553a
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7dc
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0x4
	.byte	0x1f
	.byte	0x94
	.4byte	0xc40
	.4byte	0x1566
	.uleb128 0x15
	.4byte	.LASF167
	.4byte	0x27243
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF168
	.byte	0x1f
	.byte	0x96
	.byte	0x1
	.4byte	0xc40
	.byte	0x1
	.4byte	0xc73
	.4byte	0xc80
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1f
	.byte	0x98
	.4byte	.LASF169
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0xc40
	.byte	0x1
	.4byte	0xc9d
	.4byte	0xca4
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1f
	.byte	0x9a
	.4byte	.LASF171
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0xc40
	.byte	0x1
	.4byte	0xcc1
	.4byte	0xcc8
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1f
	.byte	0x9c
	.4byte	.LASF172
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0xc40
	.byte	0x1
	.4byte	0xce5
	.4byte	0xcf1
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1f
	.byte	0x9e
	.4byte	.LASF173
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0xc40
	.byte	0x1
	.4byte	0xd12
	.4byte	0xd19
	.uleb128 0x17
	.4byte	0x2b007
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1f
	.byte	0xa0
	.4byte	.LASF175
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0xc40
	.byte	0x1
	.4byte	0xd3a
	.4byte	0xd41
	.uleb128 0x17
	.4byte	0x2b007
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1f
	.byte	0xa4
	.4byte	.LASF177
	.4byte	0x2b012
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0xc40
	.byte	0x1
	.4byte	0xd62
	.4byte	0xd69
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1f
	.byte	0xa6
	.4byte	.LASF179
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0xc40
	.byte	0x1
	.4byte	0xd86
	.4byte	0xd92
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2b012
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1f
	.byte	0xac
	.4byte	.LASF181
	.4byte	0x2b018
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0xc40
	.byte	0x1
	.4byte	0xdb3
	.4byte	0xdd3
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.uleb128 0x19
	.4byte	0x159e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1f
	.byte	0xb1
	.4byte	.LASF183
	.4byte	0x2b018
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0xc40
	.byte	0x1
	.4byte	0xdf4
	.4byte	0xe0f
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1f
	.byte	0xb3
	.4byte	.LASF185
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0xc40
	.byte	0x1
	.4byte	0xe2c
	.4byte	0xe38
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2b018
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1f
	.byte	0xb5
	.4byte	.LASF187
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0xc40
	.byte	0x1
	.4byte	0xe59
	.4byte	0xe65
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1f
	.byte	0xb7
	.4byte	.LASF189
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0xc40
	.byte	0x1
	.4byte	0xe86
	.4byte	0xe97
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1f
	.byte	0xb9
	.4byte	.LASF191
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0xc40
	.byte	0x1
	.4byte	0xeb8
	.4byte	0xece
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1f
	.byte	0xbb
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0xc40
	.byte	0x1
	.4byte	0xeeb
	.4byte	0xef7
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1f
	.byte	0xbd
	.4byte	.LASF195
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0xc40
	.byte	0x1
	.4byte	0xf18
	.4byte	0xf24
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1f
	.byte	0xc0
	.4byte	.LASF197
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0xc40
	.byte	0x1
	.4byte	0xf41
	.4byte	0xf48
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1f
	.byte	0xc2
	.4byte	.LASF199
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0xc40
	.byte	0x1
	.4byte	0xf69
	.4byte	0xf70
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1f
	.byte	0xca
	.4byte	.LASF201
	.4byte	0x17010
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0xc40
	.byte	0x1
	.4byte	0xf91
	.4byte	0xfac
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x847c
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8476
	.uleb128 0x19
	.4byte	0x8476
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF202
	.byte	0x1f
	.byte	0xcd
	.4byte	.LASF203
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0xc40
	.byte	0x1
	.4byte	0xfc9
	.4byte	0xfdf
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8476
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8476
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF204
	.byte	0x1f
	.byte	0xd0
	.4byte	.LASF205
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0xc40
	.byte	0x1
	.4byte	0xffc
	.4byte	0x100d
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x847c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF206
	.byte	0x1f
	.byte	0xd2
	.4byte	.LASF207
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0xc40
	.byte	0x1
	.4byte	0x102a
	.4byte	0x1031
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF208
	.byte	0x1f
	.byte	0xd4
	.4byte	.LASF209
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1052
	.4byte	0x1059
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF210
	.byte	0x1f
	.byte	0xdc
	.4byte	.LASF211
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0xc40
	.byte	0x1
	.4byte	0x107a
	.4byte	0x1090
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x2b01e
	.uleb128 0x19
	.4byte	0x2b024
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF212
	.byte	0x1f
	.byte	0xde
	.4byte	.LASF213
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0xc40
	.byte	0x1
	.4byte	0x10ad
	.4byte	0x10b9
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF214
	.byte	0x1f
	.byte	0xe1
	.4byte	.LASF215
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1a
	.4byte	0xc40
	.byte	0x1
	.4byte	0x10da
	.4byte	0x10f5
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x9216
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF216
	.byte	0x1f
	.byte	0xe3
	.4byte	.LASF217
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1b
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1112
	.4byte	0x111e
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF218
	.byte	0x1f
	.byte	0xe5
	.4byte	.LASF219
	.4byte	0xfdb7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.4byte	0xc40
	.byte	0x1
	.4byte	0x113f
	.4byte	0x1155
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1f
	.byte	0xe7
	.4byte	.LASF221
	.4byte	0xfdb7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1d
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1176
	.4byte	0x1187
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF222
	.byte	0x1f
	.byte	0xe9
	.4byte	.LASF223
	.4byte	0xfdb7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1e
	.4byte	0xc40
	.byte	0x1
	.4byte	0x11a8
	.4byte	0x11be
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF224
	.byte	0x1f
	.byte	0xeb
	.4byte	.LASF225
	.4byte	0xfdb7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1f
	.4byte	0xc40
	.byte	0x1
	.4byte	0x11df
	.4byte	0x11f0
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x16fe0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF226
	.byte	0x1f
	.byte	0xed
	.4byte	.LASF227
	.4byte	0xfdb7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1211
	.4byte	0x121d
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF228
	.byte	0x1f
	.byte	0xef
	.4byte	.LASF229
	.4byte	0xfdb7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x21
	.4byte	0xc40
	.byte	0x1
	.4byte	0x123e
	.4byte	0x124a
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF230
	.byte	0x1f
	.byte	0xf1
	.4byte	.LASF231
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x22
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1267
	.4byte	0x1273
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xfdb7
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF232
	.byte	0x1f
	.byte	0xf3
	.4byte	.LASF233
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x23
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1290
	.4byte	0x129c
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0x298da
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF234
	.byte	0x1f
	.byte	0xf5
	.4byte	.LASF235
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.4byte	0xc40
	.byte	0x1
	.4byte	0x12b9
	.4byte	0x12c0
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF236
	.byte	0x1f
	.byte	0xf7
	.4byte	.LASF237
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x25
	.4byte	0xc40
	.byte	0x1
	.4byte	0x12e1
	.4byte	0x12e8
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF238
	.byte	0x1f
	.byte	0xf9
	.4byte	.LASF239
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x26
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1305
	.4byte	0x1311
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF240
	.byte	0x1f
	.byte	0xfb
	.4byte	.LASF241
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x27
	.4byte	0xc40
	.byte	0x1
	.4byte	0x132e
	.4byte	0x1344
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF242
	.byte	0x1f
	.byte	0xff
	.4byte	.LASF243
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x28
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1361
	.4byte	0x1368
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF244
	.byte	0x1f
	.2byte	0x102
	.4byte	.LASF246
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x29
	.4byte	0xc40
	.byte	0x1
	.4byte	0x138a
	.4byte	0x1391
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF247
	.byte	0x1f
	.2byte	0x104
	.4byte	.LASF248
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2a
	.4byte	0xc40
	.byte	0x1
	.4byte	0x13b3
	.4byte	0x13ba
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF249
	.byte	0x1f
	.2byte	0x107
	.4byte	.LASF263
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2b
	.4byte	0xc40
	.byte	0x1
	.4byte	0x13d8
	.4byte	0x13e9
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF250
	.byte	0x1f
	.2byte	0x10a
	.4byte	.LASF251
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2c
	.4byte	0xc40
	.byte	0x1
	.4byte	0x140b
	.4byte	0x1421
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF252
	.byte	0x1f
	.2byte	0x10c
	.4byte	.LASF253
	.4byte	0xfdb7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2d
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1443
	.4byte	0x144a
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF254
	.byte	0x1f
	.2byte	0x10f
	.4byte	.LASF255
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2e
	.4byte	0xc40
	.byte	0x1
	.4byte	0x146c
	.4byte	0x1478
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF256
	.byte	0x1f
	.2byte	0x113
	.4byte	.LASF257
	.4byte	0x17094
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2f
	.4byte	0xc40
	.byte	0x1
	.4byte	0x149a
	.4byte	0x14ab
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF258
	.byte	0x1f
	.2byte	0x117
	.4byte	.LASF259
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x30
	.4byte	0xc40
	.byte	0x1
	.4byte	0x14cd
	.4byte	0x14d4
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF260
	.byte	0x1f
	.2byte	0x118
	.4byte	.LASF261
	.4byte	0x1406f
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x31
	.4byte	0xc40
	.byte	0x1
	.4byte	0x14f6
	.4byte	0x1502
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF262
	.byte	0x1f
	.2byte	0x119
	.4byte	.LASF264
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x32
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1520
	.4byte	0x1536
	.uleb128 0x17
	.4byte	0x1566
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF265
	.byte	0x1f
	.2byte	0x11c
	.4byte	.LASF266
	.4byte	0x159e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x33
	.4byte	0xc40
	.byte	0x1
	.4byte	0x1554
	.uleb128 0x17
	.4byte	0x2b007
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc40
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x20
	.byte	0x4b
	.4byte	0x8e
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x20
	.byte	0x4d
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x20
	.byte	0x51
	.4byte	0xac
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x159e
	.uleb128 0x21
	.4byte	0x34
	.2byte	0x3ff
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF270
	.uleb128 0x22
	.byte	0x4
	.4byte	0x15ab
	.uleb128 0xc
	.4byte	0x15b0
	.uleb128 0x23
	.4byte	.LASF272
	.2byte	0x904
	.byte	0x8
	.byte	0x28
	.4byte	0x175e
	.uleb128 0x24
	.4byte	.LASF273
	.byte	0x8
	.byte	0x41
	.4byte	0x18d3
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x40
	.uleb128 0x25
	.4byte	.LASF274
	.byte	0x8
	.byte	0x42
	.4byte	0x18d3
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.2byte	0x800
	.uleb128 0x26
	.4byte	.LASF275
	.byte	0x8
	.byte	0x44
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF276
	.byte	0x8
	.byte	0x45
	.4byte	0x11806
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF277
	.byte	0x8
	.byte	0x46
	.4byte	0x11816
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF272
	.byte	0x8
	.byte	0x2a
	.byte	0x1
	.4byte	0x161b
	.4byte	0x1622
	.uleb128 0x17
	.4byte	0x11827
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF272
	.byte	0x8
	.byte	0x2b
	.byte	0x1
	.4byte	0x1633
	.4byte	0x1644
	.uleb128 0x17
	.4byte	0x11827
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF284
	.byte	0x8
	.byte	0x2d
	.4byte	.LASF286
	.byte	0x1
	.4byte	0x1659
	.4byte	0x1665
	.uleb128 0x17
	.4byte	0x11827
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1182d
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF278
	.byte	0x8
	.byte	0x30
	.4byte	.LASF280
	.4byte	0xac
	.byte	0x1
	.4byte	0x167e
	.4byte	0x1685
	.uleb128 0x17
	.4byte	0x11838
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF279
	.byte	0x8
	.byte	0x32
	.4byte	.LASF281
	.4byte	0xe5
	.byte	0x1
	.4byte	0x169e
	.4byte	0x16aa
	.uleb128 0x17
	.4byte	0x11838
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF282
	.byte	0x8
	.byte	0x35
	.4byte	.LASF283
	.4byte	0xe5
	.byte	0x1
	.4byte	0x16c3
	.4byte	0x16d9
	.uleb128 0x17
	.4byte	0x11838
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF285
	.byte	0x8
	.byte	0x3a
	.4byte	.LASF287
	.byte	0x1
	.4byte	0x16ee
	.4byte	0x16ff
	.uleb128 0x17
	.4byte	0x11827
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF288
	.byte	0x8
	.byte	0x3c
	.4byte	.LASF289
	.byte	0x1
	.4byte	0x1714
	.4byte	0x1720
	.uleb128 0x17
	.4byte	0x11827
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF290
	.byte	0x8
	.byte	0x3d
	.4byte	.LASF291
	.byte	0x1
	.4byte	0x1735
	.4byte	0x173c
	.uleb128 0x17
	.4byte	0x11827
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF292
	.byte	0x8
	.byte	0x3e
	.4byte	.LASF293
	.4byte	0x1183e
	.byte	0x1
	.4byte	0x1751
	.uleb128 0x17
	.4byte	0x11827
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8476
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF297
	.byte	0x1
	.byte	0x12
	.byte	0x6c
	.4byte	0x17b8
	.uleb128 0x2c
	.byte	0x1
	.string	"Sin"
	.byte	0x12
	.byte	0x7b
	.4byte	.LASF294
	.4byte	0x119
	.byte	0x1
	.4byte	0x1785
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Cos"
	.byte	0x12
	.byte	0x7f
	.4byte	.LASF295
	.4byte	0x119
	.byte	0x1
	.4byte	0x17a0
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF296
	.byte	0x12
	.byte	0xb6
	.4byte	.LASF370
	.4byte	0x119
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x119
	.uleb128 0x22
	.byte	0x4
	.4byte	0x119
	.uleb128 0xb
	.byte	0x4
	.4byte	0x17b8
	.uleb128 0x2b
	.4byte	.LASF298
	.byte	0x4
	.byte	0x21
	.byte	0x28
	.4byte	0x18d3
	.uleb128 0x2e
	.4byte	.LASF645
	.byte	0x21
	.byte	0x34
	.4byte	0x18d3
	.byte	0x1
	.byte	0x1
	.2byte	0x7fff
	.uleb128 0x26
	.4byte	.LASF299
	.byte	0x21
	.byte	0x37
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF298
	.byte	0x21
	.byte	0x2a
	.byte	0x1
	.4byte	0x1804
	.4byte	0x1810
	.uleb128 0x17
	.4byte	0x18d8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF300
	.byte	0x21
	.byte	0x2c
	.4byte	.LASF301
	.byte	0x1
	.4byte	0x1825
	.4byte	0x1831
	.uleb128 0x17
	.4byte	0x18d8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF302
	.byte	0x21
	.byte	0x2d
	.4byte	.LASF303
	.4byte	0xac
	.byte	0x1
	.4byte	0x184a
	.4byte	0x1851
	.uleb128 0x17
	.4byte	0x18de
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF304
	.byte	0x21
	.byte	0x2f
	.4byte	.LASF305
	.4byte	0xac
	.byte	0x1
	.4byte	0x186a
	.4byte	0x1871
	.uleb128 0x17
	.4byte	0x18d8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF304
	.byte	0x21
	.byte	0x30
	.4byte	.LASF306
	.4byte	0xac
	.byte	0x1
	.4byte	0x188a
	.4byte	0x1896
	.uleb128 0x17
	.4byte	0x18d8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF307
	.byte	0x21
	.byte	0x31
	.4byte	.LASF308
	.4byte	0x119
	.byte	0x1
	.4byte	0x18af
	.4byte	0x18b6
	.uleb128 0x17
	.4byte	0x18d8
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF309
	.byte	0x21
	.byte	0x32
	.4byte	.LASF310
	.4byte	0x119
	.byte	0x1
	.4byte	0x18cb
	.uleb128 0x17
	.4byte	0x18d8
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x17c9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x18e4
	.uleb128 0xc
	.4byte	0x17c9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x119
	.uleb128 0x2b
	.4byte	.LASF311
	.byte	0x8
	.byte	0xd
	.byte	0x34
	.4byte	0x1dd5
	.uleb128 0x5
	.string	"x"
	.byte	0xd
	.byte	0x36
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0xd
	.byte	0x37
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF311
	.byte	0xd
	.byte	0x39
	.byte	0x1
	.4byte	0x1924
	.4byte	0x192b
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF311
	.byte	0xd
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x193d
	.4byte	0x194e
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Set"
	.byte	0xd
	.byte	0x3c
	.4byte	.LASF312
	.byte	0x1
	.4byte	0x1963
	.4byte	0x1974
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF313
	.byte	0xd
	.byte	0x3d
	.4byte	.LASF314
	.byte	0x1
	.4byte	0x1989
	.4byte	0x1990
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.byte	0x3f
	.4byte	.LASF316
	.4byte	0x119
	.byte	0x1
	.4byte	0x19a9
	.4byte	0x19b5
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.byte	0x40
	.4byte	.LASF317
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x19ce
	.4byte	0x19da
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.byte	0x41
	.4byte	.LASF319
	.4byte	0x18ef
	.byte	0x1
	.4byte	0x19f3
	.4byte	0x19fa
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.byte	0x42
	.4byte	.LASF321
	.4byte	0x119
	.byte	0x1
	.4byte	0x1a13
	.4byte	0x1a1f
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.byte	0x43
	.4byte	.LASF322
	.4byte	0x18ef
	.byte	0x1
	.4byte	0x1a38
	.4byte	0x1a44
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF323
	.byte	0xd
	.byte	0x44
	.4byte	.LASF324
	.4byte	0x18ef
	.byte	0x1
	.4byte	0x1a5d
	.4byte	0x1a69
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF325
	.byte	0xd
	.byte	0x45
	.4byte	.LASF326
	.4byte	0x18ef
	.byte	0x1
	.4byte	0x1a82
	.4byte	0x1a8e
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.byte	0x46
	.4byte	.LASF327
	.4byte	0x18ef
	.byte	0x1
	.4byte	0x1aa7
	.4byte	0x1ab3
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF328
	.byte	0xd
	.byte	0x47
	.4byte	.LASF329
	.4byte	0x1df1
	.byte	0x1
	.4byte	0x1acc
	.4byte	0x1ad8
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF330
	.byte	0xd
	.byte	0x48
	.4byte	.LASF331
	.4byte	0x1df1
	.byte	0x1
	.4byte	0x1af1
	.4byte	0x1afd
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.byte	0x49
	.4byte	.LASF333
	.4byte	0x1df1
	.byte	0x1
	.4byte	0x1b16
	.4byte	0x1b22
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.byte	0x4a
	.4byte	.LASF334
	.4byte	0x1df1
	.byte	0x1
	.4byte	0x1b3b
	.4byte	0x1b47
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF335
	.byte	0xd
	.byte	0x4b
	.4byte	.LASF336
	.4byte	0x1df1
	.byte	0x1
	.4byte	0x1b60
	.4byte	0x1b6c
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.byte	0x4f
	.4byte	.LASF338
	.4byte	0x159e
	.byte	0x1
	.4byte	0x1b85
	.4byte	0x1b91
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.byte	0x50
	.4byte	.LASF339
	.4byte	0x159e
	.byte	0x1
	.4byte	0x1baa
	.4byte	0x1bbb
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF340
	.byte	0xd
	.byte	0x51
	.4byte	.LASF341
	.4byte	0x159e
	.byte	0x1
	.4byte	0x1bd4
	.4byte	0x1be0
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF342
	.byte	0xd
	.byte	0x52
	.4byte	.LASF343
	.4byte	0x159e
	.byte	0x1
	.4byte	0x1bf9
	.4byte	0x1c05
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF344
	.byte	0xd
	.byte	0x54
	.4byte	.LASF345
	.4byte	0x119
	.byte	0x1
	.4byte	0x1c1e
	.4byte	0x1c25
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF346
	.byte	0xd
	.byte	0x55
	.4byte	.LASF347
	.4byte	0x119
	.byte	0x1
	.4byte	0x1c3e
	.4byte	0x1c45
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF348
	.byte	0xd
	.byte	0x56
	.4byte	.LASF349
	.4byte	0x119
	.byte	0x1
	.4byte	0x1c5e
	.4byte	0x1c65
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF350
	.byte	0xd
	.byte	0x57
	.4byte	.LASF351
	.4byte	0x119
	.byte	0x1
	.4byte	0x1c7e
	.4byte	0x1c85
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF352
	.byte	0xd
	.byte	0x58
	.4byte	.LASF353
	.4byte	0x119
	.byte	0x1
	.4byte	0x1c9e
	.4byte	0x1ca5
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF354
	.byte	0xd
	.byte	0x59
	.4byte	.LASF355
	.4byte	0x1df1
	.byte	0x1
	.4byte	0x1cbe
	.4byte	0x1cca
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF356
	.byte	0xd
	.byte	0x5a
	.4byte	.LASF357
	.byte	0x1
	.4byte	0x1cdf
	.4byte	0x1cf0
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.uleb128 0x19
	.4byte	0x1de6
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF358
	.byte	0xd
	.byte	0x5b
	.4byte	.LASF359
	.byte	0x1
	.4byte	0x1d05
	.4byte	0x1d0c
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF360
	.byte	0xd
	.byte	0x5c
	.4byte	.LASF361
	.byte	0x1
	.4byte	0x1d21
	.4byte	0x1d28
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF362
	.byte	0xd
	.byte	0x5e
	.4byte	.LASF363
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d41
	.4byte	0x1d48
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.byte	0x60
	.4byte	.LASF365
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x1d61
	.4byte	0x1d68
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.byte	0x61
	.4byte	.LASF366
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x1d81
	.4byte	0x1d88
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF367
	.byte	0xd
	.byte	0x62
	.4byte	.LASF368
	.4byte	0xe5
	.byte	0x1
	.4byte	0x1da1
	.4byte	0x1dad
	.uleb128 0x17
	.4byte	0x1ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF369
	.byte	0xd
	.byte	0x64
	.4byte	.LASF371
	.byte	0x1
	.4byte	0x1dbe
	.uleb128 0x17
	.4byte	0x1dd5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1de6
	.uleb128 0x19
	.4byte	0x1de6
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x18ef
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1de1
	.uleb128 0xc
	.4byte	0x18ef
	.uleb128 0x22
	.byte	0x4
	.4byte	0x1dec
	.uleb128 0xc
	.4byte	0x18ef
	.uleb128 0x22
	.byte	0x4
	.4byte	0x18ef
	.uleb128 0x32
	.4byte	.LASF372
	.byte	0xc
	.byte	0xd
	.2byte	0x13c
	.4byte	0x25ad
	.uleb128 0x13
	.string	"x"
	.byte	0xd
	.2byte	0x13e
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0xd
	.2byte	0x13f
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0xd
	.2byte	0x140
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF372
	.byte	0xd
	.2byte	0x142
	.byte	0x1
	.4byte	0x1e3d
	.4byte	0x1e44
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF372
	.byte	0xd
	.2byte	0x143
	.byte	0x1
	.byte	0x1
	.4byte	0x1e57
	.4byte	0x1e6d
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0xd
	.2byte	0x145
	.4byte	.LASF483
	.byte	0x1
	.4byte	0x1e83
	.4byte	0x1e99
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0xd
	.2byte	0x146
	.4byte	.LASF404
	.byte	0x1
	.4byte	0x1eaf
	.4byte	0x1eb6
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x148
	.4byte	.LASF373
	.4byte	0x119
	.byte	0x1
	.4byte	0x1ed0
	.4byte	0x1edc
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x149
	.4byte	.LASF374
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x1ef6
	.4byte	0x1f02
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x14a
	.4byte	.LASF375
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x1f1c
	.4byte	0x1f23
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF284
	.byte	0xd
	.2byte	0x14b
	.4byte	.LASF376
	.4byte	0x25be
	.byte	0x1
	.4byte	0x1f3d
	.4byte	0x1f49
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x14c
	.4byte	.LASF377
	.4byte	0x119
	.byte	0x1
	.4byte	0x1f63
	.4byte	0x1f6f
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x14d
	.4byte	.LASF378
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x1f89
	.4byte	0x1f95
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF323
	.byte	0xd
	.2byte	0x14e
	.4byte	.LASF379
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x1faf
	.4byte	0x1fbb
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0xd
	.2byte	0x14f
	.4byte	.LASF380
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x1fd5
	.4byte	0x1fe1
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x150
	.4byte	.LASF381
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x1ffb
	.4byte	0x2007
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0xd
	.2byte	0x151
	.4byte	.LASF382
	.4byte	0x25be
	.byte	0x1
	.4byte	0x2021
	.4byte	0x202d
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0xd
	.2byte	0x152
	.4byte	.LASF383
	.4byte	0x25be
	.byte	0x1
	.4byte	0x2047
	.4byte	0x2053
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x153
	.4byte	.LASF384
	.4byte	0x25be
	.byte	0x1
	.4byte	0x206d
	.4byte	0x2079
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x154
	.4byte	.LASF385
	.4byte	0x25be
	.byte	0x1
	.4byte	0x2093
	.4byte	0x209f
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0xd
	.2byte	0x155
	.4byte	.LASF386
	.4byte	0x25be
	.byte	0x1
	.4byte	0x20b9
	.4byte	0x20c5
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x159
	.4byte	.LASF387
	.4byte	0x159e
	.byte	0x1
	.4byte	0x20df
	.4byte	0x20eb
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x15a
	.4byte	.LASF388
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2105
	.4byte	0x2116
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0xd
	.2byte	0x15b
	.4byte	.LASF389
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2130
	.4byte	0x213c
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0xd
	.2byte	0x15c
	.4byte	.LASF390
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2156
	.4byte	0x2162
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF391
	.byte	0xd
	.2byte	0x15e
	.4byte	.LASF392
	.4byte	0x159e
	.byte	0x1
	.4byte	0x217c
	.4byte	0x2183
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF393
	.byte	0xd
	.2byte	0x15f
	.4byte	.LASF394
	.4byte	0x159e
	.byte	0x1
	.4byte	0x219d
	.4byte	0x21a4
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF395
	.byte	0xd
	.2byte	0x161
	.4byte	.LASF396
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x21be
	.4byte	0x21ca
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF395
	.byte	0xd
	.2byte	0x162
	.4byte	.LASF397
	.4byte	0x25be
	.byte	0x1
	.4byte	0x21e4
	.4byte	0x21f5
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF344
	.byte	0xd
	.2byte	0x163
	.4byte	.LASF398
	.4byte	0x119
	.byte	0x1
	.4byte	0x220f
	.4byte	0x2216
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF348
	.byte	0xd
	.2byte	0x164
	.4byte	.LASF399
	.4byte	0x119
	.byte	0x1
	.4byte	0x2230
	.4byte	0x2237
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF346
	.byte	0xd
	.2byte	0x165
	.4byte	.LASF400
	.4byte	0x119
	.byte	0x1
	.4byte	0x2251
	.4byte	0x2258
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF350
	.byte	0xd
	.2byte	0x166
	.4byte	.LASF401
	.4byte	0x119
	.byte	0x1
	.4byte	0x2272
	.4byte	0x2279
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF352
	.byte	0xd
	.2byte	0x167
	.4byte	.LASF402
	.4byte	0x119
	.byte	0x1
	.4byte	0x2293
	.4byte	0x229a
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF354
	.byte	0xd
	.2byte	0x168
	.4byte	.LASF403
	.4byte	0x25be
	.byte	0x1
	.4byte	0x22b4
	.4byte	0x22c0
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF356
	.byte	0xd
	.2byte	0x169
	.4byte	.LASF405
	.byte	0x1
	.4byte	0x22d6
	.4byte	0x22e7
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x25c4
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF358
	.byte	0xd
	.2byte	0x16a
	.4byte	.LASF406
	.byte	0x1
	.4byte	0x22fd
	.4byte	0x2304
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF360
	.byte	0xd
	.2byte	0x16b
	.4byte	.LASF407
	.byte	0x1
	.4byte	0x231a
	.4byte	0x2321
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0xd
	.2byte	0x16d
	.4byte	.LASF408
	.4byte	0xac
	.byte	0x1
	.4byte	0x233b
	.4byte	0x2342
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF409
	.byte	0xd
	.2byte	0x16f
	.4byte	.LASF410
	.4byte	0x119
	.byte	0x1
	.4byte	0x235c
	.4byte	0x2363
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF411
	.byte	0xd
	.2byte	0x170
	.4byte	.LASF412
	.4byte	0x119
	.byte	0x1
	.4byte	0x237d
	.4byte	0x2384
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF413
	.byte	0xd
	.2byte	0x171
	.4byte	.LASF414
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x239e
	.4byte	0x23a5
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF415
	.byte	0xd
	.2byte	0x172
	.4byte	.LASF416
	.4byte	0x2ad0
	.byte	0x1
	.4byte	0x23bf
	.4byte	0x23c6
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF417
	.byte	0xd
	.2byte	0x173
	.4byte	.LASF418
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x23e0
	.4byte	0x23e7
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF419
	.byte	0xd
	.2byte	0x174
	.4byte	.LASF420
	.4byte	0x3433
	.byte	0x1
	.4byte	0x2401
	.4byte	0x2408
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF419
	.byte	0xd
	.2byte	0x175
	.4byte	.LASF421
	.4byte	0x3439
	.byte	0x1
	.4byte	0x2422
	.4byte	0x2429
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x176
	.4byte	.LASF422
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x2443
	.4byte	0x244a
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x177
	.4byte	.LASF423
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x2464
	.4byte	0x246b
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF367
	.byte	0xd
	.2byte	0x178
	.4byte	.LASF424
	.4byte	0xe5
	.byte	0x1
	.4byte	0x2485
	.4byte	0x2491
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF425
	.byte	0xd
	.2byte	0x17a
	.4byte	.LASF426
	.byte	0x1
	.4byte	0x24a7
	.4byte	0x24b8
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25be
	.uleb128 0x19
	.4byte	0x25be
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF427
	.byte	0xd
	.2byte	0x17b
	.4byte	.LASF428
	.byte	0x1
	.4byte	0x24ce
	.4byte	0x24df
	.uleb128 0x17
	.4byte	0x25b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25be
	.uleb128 0x19
	.4byte	0x25be
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF429
	.byte	0xd
	.2byte	0x17d
	.4byte	.LASF430
	.byte	0x1
	.4byte	0x24f5
	.4byte	0x2506
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF431
	.byte	0xd
	.2byte	0x17e
	.4byte	.LASF432
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2520
	.4byte	0x2536
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF433
	.byte	0xd
	.2byte	0x17f
	.4byte	.LASF434
	.byte	0x1
	.4byte	0x254c
	.4byte	0x2558
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF369
	.byte	0xd
	.2byte	0x181
	.4byte	.LASF435
	.byte	0x1
	.4byte	0x256e
	.4byte	0x2584
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF436
	.byte	0xd
	.2byte	0x182
	.4byte	.LASF599
	.byte	0x1
	.4byte	0x2596
	.uleb128 0x17
	.4byte	0x25ad
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x25c4
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1df7
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25b9
	.uleb128 0xc
	.4byte	0x1df7
	.uleb128 0x22
	.byte	0x4
	.4byte	0x1df7
	.uleb128 0x22
	.byte	0x4
	.4byte	0x25ca
	.uleb128 0xc
	.4byte	0x1df7
	.uleb128 0x4
	.4byte	.LASF437
	.byte	0xc
	.byte	0x22
	.byte	0x33
	.4byte	0x2ad0
	.uleb128 0x6
	.4byte	.LASF438
	.byte	0x22
	.byte	0x35
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"yaw"
	.byte	0x22
	.byte	0x36
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF439
	.byte	0x22
	.byte	0x37
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF437
	.byte	0x22
	.byte	0x39
	.byte	0x1
	.4byte	0x2616
	.4byte	0x261d
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF437
	.byte	0x22
	.byte	0x3a
	.byte	0x1
	.4byte	0x262e
	.4byte	0x2644
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF437
	.byte	0x22
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x2656
	.4byte	0x2662
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Set"
	.byte	0x22
	.byte	0x3d
	.4byte	.LASF440
	.byte	0x1
	.4byte	0x2677
	.4byte	0x268d
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF313
	.byte	0x22
	.byte	0x3e
	.4byte	.LASF441
	.4byte	0x8488
	.byte	0x1
	.4byte	0x26a6
	.4byte	0x26ad
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0x22
	.byte	0x40
	.4byte	.LASF442
	.4byte	0x119
	.byte	0x1
	.4byte	0x26c6
	.4byte	0x26d2
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0x22
	.byte	0x41
	.4byte	.LASF443
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x26eb
	.4byte	0x26f7
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0x22
	.byte	0x42
	.4byte	.LASF444
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x2710
	.4byte	0x2717
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF284
	.byte	0x22
	.byte	0x43
	.4byte	.LASF445
	.4byte	0x8488
	.byte	0x1
	.4byte	0x2730
	.4byte	0x273c
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF325
	.byte	0x22
	.byte	0x44
	.4byte	.LASF446
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x2755
	.4byte	0x2761
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF328
	.byte	0x22
	.byte	0x45
	.4byte	.LASF447
	.4byte	0x8488
	.byte	0x1
	.4byte	0x277a
	.4byte	0x2786
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0x22
	.byte	0x46
	.4byte	.LASF448
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x279f
	.4byte	0x27ab
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF330
	.byte	0x22
	.byte	0x47
	.4byte	.LASF449
	.4byte	0x8488
	.byte	0x1
	.4byte	0x27c4
	.4byte	0x27d0
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x22
	.byte	0x48
	.4byte	.LASF450
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x27e9
	.4byte	0x27f5
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF335
	.byte	0x22
	.byte	0x49
	.4byte	.LASF451
	.4byte	0x8488
	.byte	0x1
	.4byte	0x280e
	.4byte	0x281a
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF323
	.byte	0x22
	.byte	0x4a
	.4byte	.LASF452
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x2833
	.4byte	0x283f
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF332
	.byte	0x22
	.byte	0x4b
	.4byte	.LASF453
	.4byte	0x8488
	.byte	0x1
	.4byte	0x2858
	.4byte	0x2864
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0x22
	.byte	0x4f
	.4byte	.LASF454
	.4byte	0x159e
	.byte	0x1
	.4byte	0x287d
	.4byte	0x2889
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0x22
	.byte	0x50
	.4byte	.LASF455
	.4byte	0x159e
	.byte	0x1
	.4byte	0x28a2
	.4byte	0x28b3
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF340
	.byte	0x22
	.byte	0x51
	.4byte	.LASF456
	.4byte	0x159e
	.byte	0x1
	.4byte	0x28cc
	.4byte	0x28d8
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF342
	.byte	0x22
	.byte	0x52
	.4byte	.LASF457
	.4byte	0x159e
	.byte	0x1
	.4byte	0x28f1
	.4byte	0x28fd
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF458
	.byte	0x22
	.byte	0x54
	.4byte	.LASF459
	.4byte	0x8488
	.byte	0x1
	.4byte	0x2916
	.4byte	0x291d
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF460
	.byte	0x22
	.byte	0x55
	.4byte	.LASF461
	.4byte	0x8488
	.byte	0x1
	.4byte	0x2936
	.4byte	0x293d
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF356
	.byte	0x22
	.byte	0x57
	.4byte	.LASF462
	.byte	0x1
	.4byte	0x2952
	.4byte	0x2963
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8499
	.uleb128 0x19
	.4byte	0x8499
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF362
	.byte	0x22
	.byte	0x59
	.4byte	.LASF463
	.4byte	0xac
	.byte	0x1
	.4byte	0x297c
	.4byte	0x2983
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF464
	.byte	0x22
	.byte	0x5b
	.4byte	.LASF465
	.byte	0x1
	.4byte	0x2998
	.4byte	0x29ae
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x25ad
	.uleb128 0x19
	.4byte	0x25ad
	.uleb128 0x19
	.4byte	0x25ad
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF466
	.byte	0x22
	.byte	0x5c
	.4byte	.LASF467
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x29c7
	.4byte	0x29ce
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF468
	.byte	0x22
	.byte	0x5d
	.4byte	.LASF469
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x29e7
	.4byte	0x29ee
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF470
	.byte	0x22
	.byte	0x5e
	.4byte	.LASF471
	.4byte	0x5534
	.byte	0x1
	.4byte	0x2a07
	.4byte	0x2a0e
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF417
	.byte	0x22
	.byte	0x5f
	.4byte	.LASF472
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x2a27
	.4byte	0x2a2e
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF473
	.byte	0x22
	.byte	0x60
	.4byte	.LASF474
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x2a47
	.4byte	0x2a4e
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF475
	.byte	0x22
	.byte	0x61
	.4byte	.LASF476
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x2a67
	.4byte	0x2a6e
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0x22
	.byte	0x62
	.4byte	.LASF477
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x2a87
	.4byte	0x2a8e
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0x22
	.byte	0x63
	.4byte	.LASF478
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x2aa7
	.4byte	0x2aae
	.uleb128 0x17
	.4byte	0x8482
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF367
	.byte	0x22
	.byte	0x64
	.4byte	.LASF479
	.4byte	0xe5
	.byte	0x1
	.4byte	0x2ac3
	.uleb128 0x17
	.4byte	0x848e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF480
	.byte	0xc
	.byte	0xd
	.2byte	0x785
	.4byte	0x2c29
	.uleb128 0x10
	.4byte	.LASF481
	.byte	0xd
	.2byte	0x787
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF482
	.byte	0xd
	.2byte	0x787
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"phi"
	.byte	0xd
	.2byte	0x787
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF480
	.byte	0xd
	.2byte	0x789
	.byte	0x1
	.4byte	0x2b1c
	.4byte	0x2b23
	.uleb128 0x17
	.4byte	0x479d
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF480
	.byte	0xd
	.2byte	0x78a
	.byte	0x1
	.byte	0x1
	.4byte	0x2b36
	.4byte	0x2b4c
	.uleb128 0x17
	.4byte	0x479d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0xd
	.2byte	0x78c
	.4byte	.LASF484
	.byte	0x1
	.4byte	0x2b62
	.4byte	0x2b78
	.uleb128 0x17
	.4byte	0x479d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x78e
	.4byte	.LASF485
	.4byte	0x119
	.byte	0x1
	.4byte	0x2b92
	.4byte	0x2b9e
	.uleb128 0x17
	.4byte	0x47a3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x78f
	.4byte	.LASF486
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x2bb8
	.4byte	0x2bc4
	.uleb128 0x17
	.4byte	0x479d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x790
	.4byte	.LASF487
	.4byte	0x2ad0
	.byte	0x1
	.4byte	0x2bde
	.4byte	0x2be5
	.uleb128 0x17
	.4byte	0x47a3
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF284
	.byte	0xd
	.2byte	0x791
	.4byte	.LASF488
	.4byte	0x47ae
	.byte	0x1
	.4byte	0x2bff
	.4byte	0x2c0b
	.uleb128 0x17
	.4byte	0x479d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x47b4
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF489
	.byte	0xd
	.2byte	0x793
	.4byte	.LASF490
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x2c21
	.uleb128 0x17
	.4byte	0x47a3
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF491
	.byte	0x24
	.byte	0x11
	.2byte	0x14d
	.4byte	0x3433
	.uleb128 0x3b
	.string	"mat"
	.byte	0x11
	.2byte	0x198
	.4byte	0x4d21
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF491
	.byte	0x11
	.2byte	0x14f
	.byte	0x1
	.4byte	0x2c58
	.4byte	0x2c5f
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF491
	.byte	0x11
	.2byte	0x150
	.byte	0x1
	.byte	0x1
	.4byte	0x2c72
	.4byte	0x2c88
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF491
	.byte	0x11
	.2byte	0x151
	.byte	0x1
	.byte	0x1
	.4byte	0x2c9b
	.4byte	0x2ccf
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF491
	.byte	0x11
	.2byte	0x152
	.byte	0x1
	.byte	0x1
	.4byte	0x2ce2
	.4byte	0x2cee
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d37
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x154
	.4byte	.LASF492
	.4byte	0x3977
	.byte	0x1
	.4byte	0x2d08
	.4byte	0x2d14
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x155
	.4byte	.LASF493
	.4byte	0x397d
	.byte	0x1
	.4byte	0x2d2e
	.4byte	0x2d3a
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.2byte	0x156
	.4byte	.LASF494
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x2d54
	.4byte	0x2d5b
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x157
	.4byte	.LASF495
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x2d75
	.4byte	0x2d81
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x158
	.4byte	.LASF496
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x2d9b
	.4byte	0x2da7
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x159
	.4byte	.LASF497
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x2dc1
	.4byte	0x2dcd
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0x11
	.2byte	0x15a
	.4byte	.LASF498
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x2de7
	.4byte	0x2df3
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.2byte	0x15b
	.4byte	.LASF499
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x2e0d
	.4byte	0x2e19
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x15c
	.4byte	.LASF500
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x2e33
	.4byte	0x2e3f
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x15d
	.4byte	.LASF501
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x2e59
	.4byte	0x2e65
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0x11
	.2byte	0x15e
	.4byte	.LASF502
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x2e7f
	.4byte	0x2e8b
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0x11
	.2byte	0x15f
	.4byte	.LASF503
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x2ea5
	.4byte	0x2eb1
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x165
	.4byte	.LASF504
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2ecb
	.4byte	0x2ed7
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x166
	.4byte	.LASF505
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2ef1
	.4byte	0x2f02
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0x11
	.2byte	0x167
	.4byte	.LASF506
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2f1c
	.4byte	0x2f28
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0x11
	.2byte	0x168
	.4byte	.LASF507
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2f42
	.4byte	0x2f4e
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0x11
	.2byte	0x16a
	.4byte	.LASF508
	.byte	0x1
	.4byte	0x2f64
	.4byte	0x2f6b
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x16b
	.4byte	.LASF510
	.byte	0x1
	.4byte	0x2f81
	.4byte	0x2f88
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x16c
	.4byte	.LASF512
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2fa2
	.4byte	0x2fae
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.2byte	0x16d
	.4byte	.LASF514
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2fc8
	.4byte	0x2fd4
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.2byte	0x16e
	.4byte	.LASF516
	.4byte	0x159e
	.byte	0x1
	.4byte	0x2fee
	.4byte	0x2ffa
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x16f
	.4byte	.LASF518
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3014
	.4byte	0x301b
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x171
	.4byte	.LASF520
	.byte	0x1
	.4byte	0x3031
	.4byte	0x3042
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x397d
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF521
	.byte	0x11
	.2byte	0x172
	.4byte	.LASF522
	.byte	0x1
	.4byte	0x3058
	.4byte	0x3069
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x397d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF523
	.byte	0x11
	.2byte	0x174
	.4byte	.LASF524
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3083
	.4byte	0x308a
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF393
	.byte	0x11
	.2byte	0x175
	.4byte	.LASF525
	.4byte	0x159e
	.byte	0x1
	.4byte	0x30a4
	.4byte	0x30ab
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x177
	.4byte	.LASF527
	.4byte	0x119
	.byte	0x1
	.4byte	0x30c5
	.4byte	0x30cc
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF528
	.byte	0x11
	.2byte	0x178
	.4byte	.LASF529
	.4byte	0x119
	.byte	0x1
	.4byte	0x30e6
	.4byte	0x30ed
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF530
	.byte	0x11
	.2byte	0x179
	.4byte	.LASF531
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x3107
	.4byte	0x310e
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF532
	.byte	0x11
	.2byte	0x17a
	.4byte	.LASF533
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x3128
	.4byte	0x312f
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF534
	.byte	0x11
	.2byte	0x17b
	.4byte	.LASF535
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x3149
	.4byte	0x3150
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF536
	.byte	0x11
	.2byte	0x17c
	.4byte	.LASF537
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x316a
	.4byte	0x3171
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF538
	.byte	0x11
	.2byte	0x17d
	.4byte	.LASF539
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x318b
	.4byte	0x3192
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF540
	.byte	0x11
	.2byte	0x17e
	.4byte	.LASF541
	.4byte	0x159e
	.byte	0x1
	.4byte	0x31ac
	.4byte	0x31b3
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF542
	.byte	0x11
	.2byte	0x17f
	.4byte	.LASF543
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x31cd
	.4byte	0x31d4
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF544
	.byte	0x11
	.2byte	0x180
	.4byte	.LASF545
	.4byte	0x159e
	.byte	0x1
	.4byte	0x31ee
	.4byte	0x31f5
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF546
	.byte	0x11
	.2byte	0x181
	.4byte	.LASF547
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x320f
	.4byte	0x321b
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF548
	.byte	0x11
	.2byte	0x183
	.4byte	.LASF549
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x3235
	.4byte	0x324b
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF550
	.byte	0x11
	.2byte	0x184
	.4byte	.LASF551
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x3265
	.4byte	0x327b
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF552
	.byte	0x11
	.2byte	0x185
	.4byte	.LASF553
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x3295
	.4byte	0x32a1
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF554
	.byte	0x11
	.2byte	0x186
	.4byte	.LASF555
	.4byte	0x4d63
	.byte	0x1
	.4byte	0x32bb
	.4byte	0x32c7
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d58
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0x11
	.2byte	0x188
	.4byte	.LASF556
	.4byte	0xac
	.byte	0x1
	.4byte	0x32e1
	.4byte	0x32e8
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF413
	.byte	0x11
	.2byte	0x18a
	.4byte	.LASF557
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x3302
	.4byte	0x3309
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF468
	.byte	0x11
	.2byte	0x18b
	.4byte	.LASF558
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x3323
	.4byte	0x332a
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF559
	.byte	0x11
	.2byte	0x18c
	.4byte	.LASF560
	.4byte	0x527f
	.byte	0x1
	.4byte	0x3344
	.4byte	0x334b
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x18d
	.4byte	.LASF561
	.4byte	0x5534
	.byte	0x1
	.4byte	0x3365
	.4byte	0x336c
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x18e
	.4byte	.LASF562
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x3386
	.4byte	0x338d
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x18f
	.4byte	.LASF563
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x33a7
	.4byte	0x33ae
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x190
	.4byte	.LASF564
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x33c8
	.4byte	0x33cf
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x191
	.4byte	.LASF565
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x33e9
	.4byte	0x33f0
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF367
	.byte	0x11
	.2byte	0x192
	.4byte	.LASF566
	.4byte	0xe5
	.byte	0x1
	.4byte	0x340a
	.4byte	0x3416
	.uleb128 0x17
	.4byte	0x4d4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF284
	.4byte	0xd56a
	.byte	0x1
	.byte	0x1
	.4byte	0x3426
	.uleb128 0x17
	.4byte	0x4d31
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f50
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x1de1
	.uleb128 0x22
	.byte	0x4
	.4byte	0x18ef
	.uleb128 0x32
	.4byte	.LASF567
	.byte	0x10
	.byte	0xd
	.2byte	0x328
	.4byte	0x3955
	.uleb128 0x13
	.string	"x"
	.byte	0xd
	.2byte	0x32a
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0xd
	.2byte	0x32b
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0xd
	.2byte	0x32c
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"w"
	.byte	0xd
	.2byte	0x32d
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF567
	.byte	0xd
	.2byte	0x32f
	.byte	0x1
	.4byte	0x3492
	.4byte	0x3499
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF567
	.byte	0xd
	.2byte	0x330
	.byte	0x1
	.byte	0x1
	.4byte	0x34ac
	.4byte	0x34c7
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0xd
	.2byte	0x332
	.4byte	.LASF568
	.byte	0x1
	.4byte	0x34dd
	.4byte	0x34f8
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0xd
	.2byte	0x333
	.4byte	.LASF569
	.byte	0x1
	.4byte	0x350e
	.4byte	0x3515
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x335
	.4byte	.LASF570
	.4byte	0x119
	.byte	0x1
	.4byte	0x352f
	.4byte	0x353b
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x336
	.4byte	.LASF571
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x3555
	.4byte	0x3561
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x337
	.4byte	.LASF572
	.4byte	0x343f
	.byte	0x1
	.4byte	0x357b
	.4byte	0x3582
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x338
	.4byte	.LASF573
	.4byte	0x119
	.byte	0x1
	.4byte	0x359c
	.4byte	0x35a8
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x339
	.4byte	.LASF574
	.4byte	0x343f
	.byte	0x1
	.4byte	0x35c2
	.4byte	0x35ce
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF323
	.byte	0xd
	.2byte	0x33a
	.4byte	.LASF575
	.4byte	0x343f
	.byte	0x1
	.4byte	0x35e8
	.4byte	0x35f4
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0xd
	.2byte	0x33b
	.4byte	.LASF576
	.4byte	0x343f
	.byte	0x1
	.4byte	0x360e
	.4byte	0x361a
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x33c
	.4byte	.LASF577
	.4byte	0x343f
	.byte	0x1
	.4byte	0x3634
	.4byte	0x3640
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0xd
	.2byte	0x33d
	.4byte	.LASF578
	.4byte	0x3971
	.byte	0x1
	.4byte	0x365a
	.4byte	0x3666
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0xd
	.2byte	0x33e
	.4byte	.LASF579
	.4byte	0x3971
	.byte	0x1
	.4byte	0x3680
	.4byte	0x368c
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x33f
	.4byte	.LASF580
	.4byte	0x3971
	.byte	0x1
	.4byte	0x36a6
	.4byte	0x36b2
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x340
	.4byte	.LASF581
	.4byte	0x3971
	.byte	0x1
	.4byte	0x36cc
	.4byte	0x36d8
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0xd
	.2byte	0x341
	.4byte	.LASF582
	.4byte	0x3971
	.byte	0x1
	.4byte	0x36f2
	.4byte	0x36fe
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x345
	.4byte	.LASF583
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3718
	.4byte	0x3724
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x346
	.4byte	.LASF584
	.4byte	0x159e
	.byte	0x1
	.4byte	0x373e
	.4byte	0x374f
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0xd
	.2byte	0x347
	.4byte	.LASF585
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3769
	.4byte	0x3775
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0xd
	.2byte	0x348
	.4byte	.LASF586
	.4byte	0x159e
	.byte	0x1
	.4byte	0x378f
	.4byte	0x379b
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF344
	.byte	0xd
	.2byte	0x34a
	.4byte	.LASF587
	.4byte	0x119
	.byte	0x1
	.4byte	0x37b5
	.4byte	0x37bc
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF348
	.byte	0xd
	.2byte	0x34b
	.4byte	.LASF588
	.4byte	0x119
	.byte	0x1
	.4byte	0x37d6
	.4byte	0x37dd
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF350
	.byte	0xd
	.2byte	0x34c
	.4byte	.LASF589
	.4byte	0x119
	.byte	0x1
	.4byte	0x37f7
	.4byte	0x37fe
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF352
	.byte	0xd
	.2byte	0x34d
	.4byte	.LASF590
	.4byte	0x119
	.byte	0x1
	.4byte	0x3818
	.4byte	0x381f
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0xd
	.2byte	0x34f
	.4byte	.LASF591
	.4byte	0xac
	.byte	0x1
	.4byte	0x3839
	.4byte	0x3840
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF419
	.byte	0xd
	.2byte	0x351
	.4byte	.LASF592
	.4byte	0x3433
	.byte	0x1
	.4byte	0x385a
	.4byte	0x3861
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF419
	.byte	0xd
	.2byte	0x352
	.4byte	.LASF593
	.4byte	0x3439
	.byte	0x1
	.4byte	0x387b
	.4byte	0x3882
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF489
	.byte	0xd
	.2byte	0x353
	.4byte	.LASF594
	.4byte	0x3977
	.byte	0x1
	.4byte	0x389c
	.4byte	0x38a3
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF489
	.byte	0xd
	.2byte	0x354
	.4byte	.LASF595
	.4byte	0x397d
	.byte	0x1
	.4byte	0x38bd
	.4byte	0x38c4
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x355
	.4byte	.LASF596
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x38de
	.4byte	0x38e5
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x356
	.4byte	.LASF597
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x38ff
	.4byte	0x3906
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF367
	.byte	0xd
	.2byte	0x357
	.4byte	.LASF598
	.4byte	0xe5
	.byte	0x1
	.4byte	0x3920
	.4byte	0x392c
	.uleb128 0x17
	.4byte	0x395b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF369
	.byte	0xd
	.2byte	0x359
	.4byte	.LASF600
	.byte	0x1
	.4byte	0x393e
	.uleb128 0x17
	.4byte	0x3955
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3966
	.uleb128 0x19
	.4byte	0x3966
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x343f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3961
	.uleb128 0xc
	.4byte	0x343f
	.uleb128 0x22
	.byte	0x4
	.4byte	0x396c
	.uleb128 0xc
	.4byte	0x343f
	.uleb128 0x22
	.byte	0x4
	.4byte	0x343f
	.uleb128 0x22
	.byte	0x4
	.4byte	0x25b9
	.uleb128 0x22
	.byte	0x4
	.4byte	0x1df7
	.uleb128 0x32
	.4byte	.LASF601
	.byte	0x14
	.byte	0xd
	.2byte	0x42a
	.4byte	0x3ba7
	.uleb128 0x13
	.string	"x"
	.byte	0xd
	.2byte	0x42c
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0xd
	.2byte	0x42d
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0xd
	.2byte	0x42e
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"s"
	.byte	0xd
	.2byte	0x42f
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"t"
	.byte	0xd
	.2byte	0x430
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF601
	.byte	0xd
	.2byte	0x432
	.byte	0x1
	.4byte	0x39e3
	.4byte	0x39ea
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF601
	.byte	0xd
	.2byte	0x433
	.byte	0x1
	.byte	0x1
	.4byte	0x39fd
	.4byte	0x3a0e
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x3433
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF601
	.byte	0xd
	.2byte	0x434
	.byte	0x1
	.byte	0x1
	.4byte	0x3a21
	.4byte	0x3a41
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x436
	.4byte	.LASF602
	.4byte	0x119
	.byte	0x1
	.4byte	0x3a5b
	.4byte	0x3a67
	.uleb128 0x17
	.4byte	0x3bad
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x437
	.4byte	.LASF603
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x3a81
	.4byte	0x3a8d
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF284
	.byte	0xd
	.2byte	0x438
	.4byte	.LASF604
	.4byte	0x3bb8
	.byte	0x1
	.4byte	0x3aa7
	.4byte	0x3ab3
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0xd
	.2byte	0x43a
	.4byte	.LASF605
	.4byte	0xac
	.byte	0x1
	.4byte	0x3acd
	.4byte	0x3ad4
	.uleb128 0x17
	.4byte	0x3bad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF489
	.byte	0xd
	.2byte	0x43c
	.4byte	.LASF606
	.4byte	0x3977
	.byte	0x1
	.4byte	0x3aee
	.4byte	0x3af5
	.uleb128 0x17
	.4byte	0x3bad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF489
	.byte	0xd
	.2byte	0x43d
	.4byte	.LASF607
	.4byte	0x397d
	.byte	0x1
	.4byte	0x3b0f
	.4byte	0x3b16
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x43e
	.4byte	.LASF608
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x3b30
	.4byte	0x3b37
	.uleb128 0x17
	.4byte	0x3bad
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x43f
	.4byte	.LASF609
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x3b51
	.4byte	0x3b58
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF367
	.byte	0xd
	.2byte	0x440
	.4byte	.LASF610
	.4byte	0xe5
	.byte	0x1
	.4byte	0x3b72
	.4byte	0x3b7e
	.uleb128 0x17
	.4byte	0x3bad
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF369
	.byte	0xd
	.2byte	0x442
	.4byte	.LASF611
	.byte	0x1
	.4byte	0x3b90
	.uleb128 0x17
	.4byte	0x3ba7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3bbe
	.uleb128 0x19
	.4byte	0x3bbe
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3983
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3bb3
	.uleb128 0xc
	.4byte	0x3983
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3983
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3bc4
	.uleb128 0xc
	.4byte	0x3983
	.uleb128 0x32
	.4byte	.LASF612
	.byte	0x18
	.byte	0xd
	.2byte	0x486
	.4byte	0x4062
	.uleb128 0x3b
	.string	"p"
	.byte	0xd
	.2byte	0x4b1
	.4byte	0x4062
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF612
	.byte	0xd
	.2byte	0x488
	.byte	0x1
	.4byte	0x3bf6
	.4byte	0x3bfd
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF612
	.byte	0xd
	.2byte	0x489
	.byte	0x1
	.byte	0x1
	.4byte	0x3c10
	.4byte	0x3c1c
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0x17c3
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF612
	.byte	0xd
	.2byte	0x48a
	.byte	0x1
	.byte	0x1
	.4byte	0x3c2f
	.4byte	0x3c54
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0xd
	.2byte	0x48c
	.4byte	.LASF613
	.byte	0x1
	.4byte	0x3c6a
	.4byte	0x3c8f
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0xd
	.2byte	0x48d
	.4byte	.LASF614
	.byte	0x1
	.4byte	0x3ca5
	.4byte	0x3cac
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x48f
	.4byte	.LASF615
	.4byte	0x119
	.byte	0x1
	.4byte	0x3cc6
	.4byte	0x3cd2
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x490
	.4byte	.LASF616
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x3cec
	.4byte	0x3cf8
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x491
	.4byte	.LASF617
	.4byte	0x3bc9
	.byte	0x1
	.4byte	0x3d12
	.4byte	0x3d19
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x492
	.4byte	.LASF618
	.4byte	0x3bc9
	.byte	0x1
	.4byte	0x3d33
	.4byte	0x3d3f
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF323
	.byte	0xd
	.2byte	0x493
	.4byte	.LASF619
	.4byte	0x3bc9
	.byte	0x1
	.4byte	0x3d59
	.4byte	0x3d65
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x494
	.4byte	.LASF620
	.4byte	0x119
	.byte	0x1
	.4byte	0x3d7f
	.4byte	0x3d8b
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x495
	.4byte	.LASF621
	.4byte	0x3bc9
	.byte	0x1
	.4byte	0x3da5
	.4byte	0x3db1
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0xd
	.2byte	0x496
	.4byte	.LASF622
	.4byte	0x3bc9
	.byte	0x1
	.4byte	0x3dcb
	.4byte	0x3dd7
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0xd
	.2byte	0x497
	.4byte	.LASF623
	.4byte	0x408e
	.byte	0x1
	.4byte	0x3df1
	.4byte	0x3dfd
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x498
	.4byte	.LASF624
	.4byte	0x408e
	.byte	0x1
	.4byte	0x3e17
	.4byte	0x3e23
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0xd
	.2byte	0x499
	.4byte	.LASF625
	.4byte	0x408e
	.byte	0x1
	.4byte	0x3e3d
	.4byte	0x3e49
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0xd
	.2byte	0x49a
	.4byte	.LASF626
	.4byte	0x408e
	.byte	0x1
	.4byte	0x3e63
	.4byte	0x3e6f
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x49e
	.4byte	.LASF627
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3e89
	.4byte	0x3e95
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x49f
	.4byte	.LASF628
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3eaf
	.4byte	0x3ec0
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0xd
	.2byte	0x4a0
	.4byte	.LASF629
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3eda
	.4byte	0x3ee6
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0xd
	.2byte	0x4a1
	.4byte	.LASF630
	.4byte	0x159e
	.byte	0x1
	.4byte	0x3f00
	.4byte	0x3f0c
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4083
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF344
	.byte	0xd
	.2byte	0x4a3
	.4byte	.LASF631
	.4byte	0x119
	.byte	0x1
	.4byte	0x3f26
	.4byte	0x3f2d
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF348
	.byte	0xd
	.2byte	0x4a4
	.4byte	.LASF632
	.4byte	0x119
	.byte	0x1
	.4byte	0x3f47
	.4byte	0x3f4e
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF350
	.byte	0xd
	.2byte	0x4a5
	.4byte	.LASF633
	.4byte	0x119
	.byte	0x1
	.4byte	0x3f68
	.4byte	0x3f6f
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF352
	.byte	0xd
	.2byte	0x4a6
	.4byte	.LASF634
	.4byte	0x119
	.byte	0x1
	.4byte	0x3f89
	.4byte	0x3f90
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0xd
	.2byte	0x4a8
	.4byte	.LASF635
	.4byte	0xac
	.byte	0x1
	.4byte	0x3faa
	.4byte	0x3fb1
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF636
	.byte	0xd
	.2byte	0x4aa
	.4byte	.LASF637
	.4byte	0x3977
	.byte	0x1
	.4byte	0x3fcb
	.4byte	0x3fd7
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF636
	.byte	0xd
	.2byte	0x4ab
	.4byte	.LASF638
	.4byte	0x397d
	.byte	0x1
	.4byte	0x3ff1
	.4byte	0x3ffd
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x4ac
	.4byte	.LASF639
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x4017
	.4byte	0x401e
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x4ad
	.4byte	.LASF640
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x4038
	.4byte	0x403f
	.uleb128 0x17
	.4byte	0x4072
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF367
	.byte	0xd
	.2byte	0x4ae
	.4byte	.LASF641
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4055
	.uleb128 0x17
	.4byte	0x4078
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x119
	.4byte	0x4072
	.uleb128 0xa
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3bc9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x407e
	.uleb128 0xc
	.4byte	0x3bc9
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4089
	.uleb128 0xc
	.4byte	0x3bc9
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3bc9
	.uleb128 0x32
	.4byte	.LASF642
	.byte	0xc
	.byte	0xd
	.2byte	0x59b
	.4byte	0x475e
	.uleb128 0x3d
	.4byte	.LASF643
	.byte	0xd
	.2byte	0x5d5
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3d
	.4byte	.LASF644
	.byte	0xd
	.2byte	0x5d6
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x3b
	.string	"p"
	.byte	0xd
	.2byte	0x5d7
	.4byte	0x18e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x3e
	.4byte	.LASF646
	.byte	0xd
	.2byte	0x5d9
	.4byte	0x475e
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF647
	.byte	0xd
	.2byte	0x5da
	.4byte	0x18e9
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF648
	.byte	0xd
	.2byte	0x5db
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF642
	.byte	0xd
	.2byte	0x59f
	.byte	0x1
	.4byte	0x410e
	.4byte	0x4115
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF642
	.byte	0xd
	.2byte	0x5a0
	.byte	0x1
	.byte	0x1
	.4byte	0x4128
	.4byte	0x4134
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF642
	.byte	0xd
	.2byte	0x5a1
	.byte	0x1
	.byte	0x1
	.4byte	0x4147
	.4byte	0x4158
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x18e9
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF649
	.byte	0xd
	.2byte	0x5a2
	.byte	0x1
	.4byte	0x416a
	.4byte	0x4177
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x5a4
	.4byte	.LASF650
	.4byte	0x119
	.byte	0x1
	.4byte	0x4191
	.4byte	0x419d
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0xd
	.2byte	0x5a5
	.4byte	.LASF651
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x41b7
	.4byte	0x41c3
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x5a6
	.4byte	.LASF652
	.4byte	0x4094
	.byte	0x1
	.4byte	0x41dd
	.4byte	0x41e4
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF284
	.byte	0xd
	.2byte	0x5a7
	.4byte	.LASF653
	.4byte	0x4780
	.byte	0x1
	.4byte	0x41fe
	.4byte	0x420a
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x5a8
	.4byte	.LASF654
	.4byte	0x4094
	.byte	0x1
	.4byte	0x4224
	.4byte	0x4230
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF323
	.byte	0xd
	.2byte	0x5a9
	.4byte	.LASF655
	.4byte	0x4094
	.byte	0x1
	.4byte	0x424a
	.4byte	0x4256
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0xd
	.2byte	0x5aa
	.4byte	.LASF656
	.4byte	0x119
	.byte	0x1
	.4byte	0x4270
	.4byte	0x427c
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0xd
	.2byte	0x5ab
	.4byte	.LASF657
	.4byte	0x4094
	.byte	0x1
	.4byte	0x4296
	.4byte	0x42a2
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0xd
	.2byte	0x5ac
	.4byte	.LASF658
	.4byte	0x4094
	.byte	0x1
	.4byte	0x42bc
	.4byte	0x42c8
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0xd
	.2byte	0x5ad
	.4byte	.LASF659
	.4byte	0x4780
	.byte	0x1
	.4byte	0x42e2
	.4byte	0x42ee
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF332
	.byte	0xd
	.2byte	0x5ae
	.4byte	.LASF660
	.4byte	0x4780
	.byte	0x1
	.4byte	0x4308
	.4byte	0x4314
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0xd
	.2byte	0x5af
	.4byte	.LASF661
	.4byte	0x4780
	.byte	0x1
	.4byte	0x432e
	.4byte	0x433a
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0xd
	.2byte	0x5b0
	.4byte	.LASF662
	.4byte	0x4780
	.byte	0x1
	.4byte	0x4354
	.4byte	0x4360
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x5b4
	.4byte	.LASF663
	.4byte	0x159e
	.byte	0x1
	.4byte	0x437a
	.4byte	0x4386
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x5b5
	.4byte	.LASF664
	.4byte	0x159e
	.byte	0x1
	.4byte	0x43a0
	.4byte	0x43b1
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0xd
	.2byte	0x5b6
	.4byte	.LASF665
	.4byte	0x159e
	.byte	0x1
	.4byte	0x43cb
	.4byte	0x43d7
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0xd
	.2byte	0x5b7
	.4byte	.LASF666
	.4byte	0x159e
	.byte	0x1
	.4byte	0x43f1
	.4byte	0x43fd
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4786
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF667
	.byte	0xd
	.2byte	0x5b9
	.4byte	.LASF668
	.byte	0x1
	.4byte	0x4413
	.4byte	0x441f
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF669
	.byte	0xd
	.2byte	0x5ba
	.4byte	.LASF670
	.byte	0x1
	.4byte	0x4435
	.4byte	0x4446
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF671
	.byte	0xd
	.2byte	0x5bb
	.4byte	.LASF672
	.4byte	0xac
	.byte	0x1
	.4byte	0x4460
	.4byte	0x4467
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF673
	.byte	0xd
	.2byte	0x5bc
	.4byte	.LASF674
	.byte	0x1
	.4byte	0x447d
	.4byte	0x448e
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x18e9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0xd
	.2byte	0x5bd
	.4byte	.LASF675
	.byte	0x1
	.4byte	0x44a4
	.4byte	0x44ab
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0xd
	.2byte	0x5be
	.4byte	.LASF676
	.byte	0x1
	.4byte	0x44c1
	.4byte	0x44cd
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF677
	.byte	0xd
	.2byte	0x5bf
	.4byte	.LASF678
	.byte	0x1
	.4byte	0x44e3
	.4byte	0x44f9
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF677
	.byte	0xd
	.2byte	0x5c0
	.4byte	.LASF679
	.byte	0x1
	.4byte	0x450f
	.4byte	0x452a
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF680
	.byte	0xd
	.2byte	0x5c1
	.4byte	.LASF681
	.byte	0x1
	.4byte	0x4540
	.4byte	0x4547
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF356
	.byte	0xd
	.2byte	0x5c2
	.4byte	.LASF682
	.byte	0x1
	.4byte	0x455d
	.4byte	0x456e
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF683
	.byte	0xd
	.2byte	0x5c3
	.4byte	.LASF684
	.4byte	0x4780
	.byte	0x1
	.4byte	0x4588
	.4byte	0x4599
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF344
	.byte	0xd
	.2byte	0x5c5
	.4byte	.LASF685
	.4byte	0x119
	.byte	0x1
	.4byte	0x45b3
	.4byte	0x45ba
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF348
	.byte	0xd
	.2byte	0x5c6
	.4byte	.LASF686
	.4byte	0x119
	.byte	0x1
	.4byte	0x45d4
	.4byte	0x45db
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF350
	.byte	0xd
	.2byte	0x5c7
	.4byte	.LASF687
	.4byte	0x4094
	.byte	0x1
	.4byte	0x45f5
	.4byte	0x45fc
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF688
	.byte	0xd
	.2byte	0x5c8
	.4byte	.LASF689
	.4byte	0x119
	.byte	0x1
	.4byte	0x4616
	.4byte	0x461d
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0xd
	.2byte	0x5ca
	.4byte	.LASF690
	.4byte	0xac
	.byte	0x1
	.4byte	0x4637
	.4byte	0x463e
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF636
	.byte	0xd
	.2byte	0x5cc
	.4byte	.LASF691
	.4byte	0x3977
	.byte	0x1
	.4byte	0x4658
	.4byte	0x4664
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF636
	.byte	0xd
	.2byte	0x5cd
	.4byte	.LASF692
	.4byte	0x397d
	.byte	0x1
	.4byte	0x467e
	.4byte	0x468a
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF693
	.byte	0xd
	.2byte	0x5ce
	.4byte	.LASF694
	.4byte	0x4791
	.byte	0x1
	.4byte	0x46a4
	.4byte	0x46b0
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF693
	.byte	0xd
	.2byte	0x5cf
	.4byte	.LASF695
	.4byte	0x4797
	.byte	0x1
	.4byte	0x46ca
	.4byte	0x46d6
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x5d0
	.4byte	.LASF696
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x46f0
	.4byte	0x46f7
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0xd
	.2byte	0x5d1
	.4byte	.LASF697
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x4711
	.4byte	0x4718
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF367
	.byte	0xd
	.2byte	0x5d2
	.4byte	.LASF698
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4732
	.4byte	0x473e
	.uleb128 0x17
	.4byte	0x4775
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF699
	.byte	0xd
	.2byte	0x5de
	.4byte	.LASF700
	.byte	0x3
	.byte	0x1
	.4byte	0x4751
	.uleb128 0x17
	.4byte	0x476f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x119
	.4byte	0x476f
	.uleb128 0x21
	.4byte	0x34
	.2byte	0x403
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4094
	.uleb128 0xb
	.byte	0x4
	.4byte	0x477b
	.uleb128 0xc
	.4byte	0x4094
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4094
	.uleb128 0x22
	.byte	0x4
	.4byte	0x478c
	.uleb128 0xc
	.4byte	0x4094
	.uleb128 0x22
	.byte	0x4
	.4byte	0x407e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3bc9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2ad0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x47a9
	.uleb128 0xc
	.4byte	0x2ad0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x2ad0
	.uleb128 0x22
	.byte	0x4
	.4byte	0x47ba
	.uleb128 0xc
	.4byte	0x2ad0
	.uleb128 0x2b
	.4byte	.LASF701
	.byte	0x10
	.byte	0x11
	.byte	0x37
	.4byte	0x4cd9
	.uleb128 0x40
	.string	"mat"
	.byte	0x11
	.byte	0x6a
	.4byte	0x4cd9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF701
	.byte	0x11
	.byte	0x39
	.byte	0x1
	.4byte	0x47eb
	.4byte	0x47f2
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF701
	.byte	0x11
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x4804
	.4byte	0x4815
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3433
	.uleb128 0x19
	.4byte	0x3433
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF701
	.byte	0x11
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x4827
	.4byte	0x4842
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF701
	.byte	0x11
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.4byte	0x4854
	.4byte	0x4860
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4cef
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.byte	0x3e
	.4byte	.LASF702
	.4byte	0x3433
	.byte	0x1
	.4byte	0x4879
	.4byte	0x4885
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.byte	0x3f
	.4byte	.LASF703
	.4byte	0x3439
	.byte	0x1
	.4byte	0x489e
	.4byte	0x48aa
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.byte	0x40
	.4byte	.LASF704
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x48c3
	.4byte	0x48ca
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.byte	0x41
	.4byte	.LASF705
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x48e3
	.4byte	0x48ef
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.byte	0x42
	.4byte	.LASF706
	.4byte	0x18ef
	.byte	0x1
	.4byte	0x4908
	.4byte	0x4914
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3433
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.byte	0x43
	.4byte	.LASF707
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x492d
	.4byte	0x4939
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF325
	.byte	0x11
	.byte	0x44
	.4byte	.LASF708
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x4952
	.4byte	0x495e
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.byte	0x45
	.4byte	.LASF709
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x4977
	.4byte	0x4983
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.byte	0x46
	.4byte	.LASF710
	.4byte	0x4d1b
	.byte	0x1
	.4byte	0x499c
	.4byte	0x49a8
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.byte	0x47
	.4byte	.LASF711
	.4byte	0x4d1b
	.byte	0x1
	.4byte	0x49c1
	.4byte	0x49cd
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF328
	.byte	0x11
	.byte	0x48
	.4byte	.LASF712
	.4byte	0x4d1b
	.byte	0x1
	.4byte	0x49e6
	.4byte	0x49f2
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF330
	.byte	0x11
	.byte	0x49
	.4byte	.LASF713
	.4byte	0x4d1b
	.byte	0x1
	.4byte	0x4a0b
	.4byte	0x4a17
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.byte	0x4f
	.4byte	.LASF714
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4a30
	.4byte	0x4a3c
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.byte	0x50
	.4byte	.LASF715
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4a55
	.4byte	0x4a66
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF340
	.byte	0x11
	.byte	0x51
	.4byte	.LASF716
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4a7f
	.4byte	0x4a8b
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF342
	.byte	0x11
	.byte	0x52
	.4byte	.LASF717
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4aa4
	.4byte	0x4ab0
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4d10
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF313
	.byte	0x11
	.byte	0x54
	.4byte	.LASF718
	.byte	0x1
	.4byte	0x4ac5
	.4byte	0x4acc
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.byte	0x55
	.4byte	.LASF719
	.byte	0x1
	.4byte	0x4ae1
	.4byte	0x4ae8
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.byte	0x56
	.4byte	.LASF720
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4b01
	.4byte	0x4b0d
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.byte	0x57
	.4byte	.LASF721
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4b26
	.4byte	0x4b32
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.byte	0x58
	.4byte	.LASF722
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4b4b
	.4byte	0x4b57
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.byte	0x5a
	.4byte	.LASF723
	.4byte	0x119
	.byte	0x1
	.4byte	0x4b70
	.4byte	0x4b77
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF528
	.byte	0x11
	.byte	0x5b
	.4byte	.LASF724
	.4byte	0x119
	.byte	0x1
	.4byte	0x4b90
	.4byte	0x4b97
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF534
	.byte	0x11
	.byte	0x5c
	.4byte	.LASF725
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x4bb0
	.4byte	0x4bb7
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF536
	.byte	0x11
	.byte	0x5d
	.4byte	.LASF726
	.4byte	0x4d1b
	.byte	0x1
	.4byte	0x4bd0
	.4byte	0x4bd7
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF538
	.byte	0x11
	.byte	0x5e
	.4byte	.LASF727
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x4bf0
	.4byte	0x4bf7
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF540
	.byte	0x11
	.byte	0x5f
	.4byte	.LASF728
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4c10
	.4byte	0x4c17
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF542
	.byte	0x11
	.byte	0x60
	.4byte	.LASF729
	.4byte	0x47bf
	.byte	0x1
	.4byte	0x4c30
	.4byte	0x4c37
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF544
	.byte	0x11
	.byte	0x61
	.4byte	.LASF730
	.4byte	0x159e
	.byte	0x1
	.4byte	0x4c50
	.4byte	0x4c57
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF362
	.byte	0x11
	.byte	0x63
	.4byte	.LASF731
	.4byte	0xac
	.byte	0x1
	.4byte	0x4c70
	.4byte	0x4c77
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.byte	0x65
	.4byte	.LASF732
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x4c90
	.4byte	0x4c97
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.byte	0x66
	.4byte	.LASF733
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x4cb0
	.4byte	0x4cb7
	.uleb128 0x17
	.4byte	0x4ce9
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF367
	.byte	0x11
	.byte	0x67
	.4byte	.LASF734
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4ccc
	.uleb128 0x17
	.4byte	0x4d05
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x18ef
	.4byte	0x4ce9
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x47bf
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4cf5
	.uleb128 0x9
	.4byte	0x119
	.4byte	0x4d05
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4d0b
	.uleb128 0xc
	.4byte	0x47bf
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4d16
	.uleb128 0xc
	.4byte	0x47bf
	.uleb128 0x22
	.byte	0x4
	.4byte	0x47bf
	.uleb128 0x9
	.4byte	0x1df7
	.4byte	0x4d31
	.uleb128 0xa
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c29
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4d3d
	.uleb128 0x9
	.4byte	0x119
	.4byte	0x4d4d
	.uleb128 0xa
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4d53
	.uleb128 0xc
	.4byte	0x2c29
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4d5e
	.uleb128 0xc
	.4byte	0x2c29
	.uleb128 0x22
	.byte	0x4
	.4byte	0x2c29
	.uleb128 0x4
	.4byte	.LASF735
	.byte	0x10
	.byte	0x23
	.byte	0x30
	.4byte	0x527f
	.uleb128 0x5
	.string	"x"
	.byte	0x23
	.byte	0x32
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0x23
	.byte	0x33
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"z"
	.byte	0x23
	.byte	0x34
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"w"
	.byte	0x23
	.byte	0x35
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF735
	.byte	0x23
	.byte	0x37
	.byte	0x1
	.4byte	0x4db6
	.4byte	0x4dbd
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF735
	.byte	0x23
	.byte	0x38
	.byte	0x1
	.4byte	0x4dce
	.4byte	0x4de9
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Set"
	.byte	0x23
	.byte	0x3a
	.4byte	.LASF736
	.byte	0x1
	.4byte	0x4dfe
	.4byte	0x4e19
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0x23
	.byte	0x3c
	.4byte	.LASF737
	.4byte	0x119
	.byte	0x1
	.4byte	0x4e32
	.4byte	0x4e3e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF315
	.byte	0x23
	.byte	0x3d
	.4byte	.LASF738
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x4e57
	.4byte	0x4e63
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0x23
	.byte	0x3e
	.4byte	.LASF739
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x4e7c
	.4byte	0x4e83
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF284
	.byte	0x23
	.byte	0x3f
	.4byte	.LASF740
	.4byte	0x84b5
	.byte	0x1
	.4byte	0x4e9c
	.4byte	0x4ea8
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF325
	.byte	0x23
	.byte	0x40
	.4byte	.LASF741
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x4ec1
	.4byte	0x4ecd
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF328
	.byte	0x23
	.byte	0x41
	.4byte	.LASF742
	.4byte	0x84b5
	.byte	0x1
	.4byte	0x4ee6
	.4byte	0x4ef2
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0x23
	.byte	0x42
	.4byte	.LASF743
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x4f0b
	.4byte	0x4f17
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF330
	.byte	0x23
	.byte	0x43
	.4byte	.LASF744
	.4byte	0x84b5
	.byte	0x1
	.4byte	0x4f30
	.4byte	0x4f3c
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x23
	.byte	0x44
	.4byte	.LASF745
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x4f55
	.4byte	0x4f61
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x23
	.byte	0x45
	.4byte	.LASF746
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x4f7a
	.4byte	0x4f86
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x23
	.byte	0x46
	.4byte	.LASF747
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x4f9f
	.4byte	0x4fab
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF335
	.byte	0x23
	.byte	0x47
	.4byte	.LASF748
	.4byte	0x84b5
	.byte	0x1
	.4byte	0x4fc4
	.4byte	0x4fd0
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF335
	.byte	0x23
	.byte	0x48
	.4byte	.LASF749
	.4byte	0x84b5
	.byte	0x1
	.4byte	0x4fe9
	.4byte	0x4ff5
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0x23
	.byte	0x4d
	.4byte	.LASF750
	.4byte	0x159e
	.byte	0x1
	.4byte	0x500e
	.4byte	0x501a
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF337
	.byte	0x23
	.byte	0x4e
	.4byte	.LASF751
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5033
	.4byte	0x5044
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF340
	.byte	0x23
	.byte	0x4f
	.4byte	.LASF752
	.4byte	0x159e
	.byte	0x1
	.4byte	0x505d
	.4byte	0x5069
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF342
	.byte	0x23
	.byte	0x50
	.4byte	.LASF753
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5082
	.4byte	0x508e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF538
	.byte	0x23
	.byte	0x52
	.4byte	.LASF754
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x50a7
	.4byte	0x50ae
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF344
	.byte	0x23
	.byte	0x53
	.4byte	.LASF755
	.4byte	0x119
	.byte	0x1
	.4byte	0x50c7
	.4byte	0x50ce
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF350
	.byte	0x23
	.byte	0x54
	.4byte	.LASF756
	.4byte	0x84b5
	.byte	0x1
	.4byte	0x50e7
	.4byte	0x50ee
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF757
	.byte	0x23
	.byte	0x56
	.4byte	.LASF758
	.4byte	0x119
	.byte	0x1
	.4byte	0x5107
	.4byte	0x510e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF362
	.byte	0x23
	.byte	0x57
	.4byte	.LASF759
	.4byte	0xac
	.byte	0x1
	.4byte	0x5127
	.4byte	0x512e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF413
	.byte	0x23
	.byte	0x59
	.4byte	.LASF760
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x5147
	.4byte	0x514e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF470
	.byte	0x23
	.byte	0x5a
	.4byte	.LASF761
	.4byte	0x5534
	.byte	0x1
	.4byte	0x5167
	.4byte	0x516e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF417
	.byte	0x23
	.byte	0x5b
	.4byte	.LASF762
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x5187
	.4byte	0x518e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF473
	.byte	0x23
	.byte	0x5c
	.4byte	.LASF763
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x51a7
	.4byte	0x51ae
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF559
	.byte	0x23
	.byte	0x5d
	.4byte	.LASF764
	.4byte	0x527f
	.byte	0x1
	.4byte	0x51c7
	.4byte	0x51ce
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF475
	.byte	0x23
	.byte	0x5e
	.4byte	.LASF765
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x51e7
	.4byte	0x51ee
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0x23
	.byte	0x5f
	.4byte	.LASF766
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x5207
	.4byte	0x520e
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF364
	.byte	0x23
	.byte	0x60
	.4byte	.LASF767
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x5227
	.4byte	0x522e
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF367
	.byte	0x23
	.byte	0x61
	.4byte	.LASF768
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5247
	.4byte	0x5253
	.uleb128 0x17
	.4byte	0x84aa
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF769
	.byte	0x23
	.byte	0x63
	.4byte	.LASF770
	.4byte	0x84b5
	.byte	0x1
	.4byte	0x5268
	.uleb128 0x17
	.4byte	0x84a4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84bb
	.uleb128 0x19
	.4byte	0x84bb
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF771
	.byte	0xc
	.byte	0x23
	.2byte	0x132
	.4byte	0x5534
	.uleb128 0x13
	.string	"x"
	.byte	0x23
	.2byte	0x134
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x23
	.2byte	0x135
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x23
	.2byte	0x136
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF771
	.byte	0x23
	.2byte	0x138
	.byte	0x1
	.4byte	0x52c5
	.4byte	0x52cc
	.uleb128 0x17
	.4byte	0x84c6
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF771
	.byte	0x23
	.2byte	0x139
	.byte	0x1
	.4byte	0x52de
	.4byte	0x52f4
	.uleb128 0x17
	.4byte	0x84c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0x23
	.2byte	0x13b
	.4byte	.LASF772
	.byte	0x1
	.4byte	0x530a
	.4byte	0x5320
	.uleb128 0x17
	.4byte	0x84c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x23
	.2byte	0x13d
	.4byte	.LASF773
	.4byte	0x119
	.byte	0x1
	.4byte	0x533a
	.4byte	0x5346
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x23
	.2byte	0x13e
	.4byte	.LASF774
	.4byte	0x17bd
	.byte	0x1
	.4byte	0x5360
	.4byte	0x536c
	.uleb128 0x17
	.4byte	0x84c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x23
	.2byte	0x140
	.4byte	.LASF775
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5386
	.4byte	0x5392
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84d7
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x23
	.2byte	0x141
	.4byte	.LASF776
	.4byte	0x159e
	.byte	0x1
	.4byte	0x53ac
	.4byte	0x53bd
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84d7
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0x23
	.2byte	0x142
	.4byte	.LASF777
	.4byte	0x159e
	.byte	0x1
	.4byte	0x53d7
	.4byte	0x53e3
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84d7
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0x23
	.2byte	0x143
	.4byte	.LASF778
	.4byte	0x159e
	.byte	0x1
	.4byte	0x53fd
	.4byte	0x5409
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x84d7
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0x23
	.2byte	0x145
	.4byte	.LASF779
	.4byte	0xac
	.byte	0x1
	.4byte	0x5423
	.4byte	0x542a
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF413
	.byte	0x23
	.2byte	0x147
	.4byte	.LASF780
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x5444
	.4byte	0x544b
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF470
	.byte	0x23
	.2byte	0x148
	.4byte	.LASF781
	.4byte	0x5534
	.byte	0x1
	.4byte	0x5465
	.4byte	0x546c
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF417
	.byte	0x23
	.2byte	0x149
	.4byte	.LASF782
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x5486
	.4byte	0x548d
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF473
	.byte	0x23
	.2byte	0x14a
	.4byte	.LASF783
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x54a7
	.4byte	0x54ae
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF468
	.byte	0x23
	.2byte	0x14b
	.4byte	.LASF784
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x54c8
	.4byte	0x54cf
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x23
	.2byte	0x14c
	.4byte	.LASF785
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x54e9
	.4byte	0x54f0
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x23
	.2byte	0x14d
	.4byte	.LASF786
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x550a
	.4byte	0x5511
	.uleb128 0x17
	.4byte	0x84c6
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF367
	.byte	0x23
	.2byte	0x14e
	.4byte	.LASF787
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5527
	.uleb128 0x17
	.4byte	0x84cc
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF788
	.byte	0x44
	.byte	0x13
	.byte	0x2e
	.4byte	0x58ef
	.uleb128 0x26
	.4byte	.LASF789
	.byte	0x13
	.byte	0x5a
	.4byte	0x1df7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x40
	.string	"vec"
	.byte	0x13
	.byte	0x5b
	.4byte	0x1df7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF790
	.byte	0x13
	.byte	0x5c
	.4byte	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF791
	.byte	0x13
	.byte	0x5d
	.4byte	0x2c29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x26
	.4byte	.LASF792
	.byte	0x13
	.byte	0x5e
	.4byte	0x159e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF788
	.byte	0x13
	.byte	0x35
	.byte	0x1
	.4byte	0x559c
	.4byte	0x55a3
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF788
	.byte	0x13
	.byte	0x36
	.byte	0x1
	.4byte	0x55b4
	.4byte	0x55ca
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Set"
	.byte	0x13
	.byte	0x38
	.4byte	.LASF793
	.byte	0x1
	.4byte	0x55df
	.4byte	0x55f5
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x3977
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF794
	.byte	0x13
	.byte	0x39
	.4byte	.LASF795
	.byte	0x1
	.4byte	0x560a
	.4byte	0x5616
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF796
	.byte	0x13
	.byte	0x3a
	.4byte	.LASF797
	.byte	0x1
	.4byte	0x562b
	.4byte	0x5637
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF796
	.byte	0x13
	.byte	0x3b
	.4byte	.LASF798
	.byte	0x1
	.4byte	0x564c
	.4byte	0x5662
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF799
	.byte	0x13
	.byte	0x3c
	.4byte	.LASF800
	.byte	0x1
	.4byte	0x5677
	.4byte	0x5683
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF801
	.byte	0x13
	.byte	0x3d
	.4byte	.LASF802
	.byte	0x1
	.4byte	0x5698
	.4byte	0x56a4
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF803
	.byte	0x13
	.byte	0x3e
	.4byte	.LASF804
	.byte	0x1
	.4byte	0x56b9
	.4byte	0x56c0
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF805
	.byte	0x13
	.byte	0x3f
	.4byte	.LASF806
	.4byte	0x3977
	.byte	0x1
	.4byte	0x56d9
	.4byte	0x56e0
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF807
	.byte	0x13
	.byte	0x40
	.4byte	.LASF808
	.4byte	0x3977
	.byte	0x1
	.4byte	0x56f9
	.4byte	0x5700
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF809
	.byte	0x13
	.byte	0x41
	.4byte	.LASF810
	.4byte	0x119
	.byte	0x1
	.4byte	0x5719
	.4byte	0x5720
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF318
	.byte	0x13
	.byte	0x43
	.4byte	.LASF811
	.4byte	0x5534
	.byte	0x1
	.4byte	0x5739
	.4byte	0x5740
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x13
	.byte	0x44
	.4byte	.LASF812
	.4byte	0x5534
	.byte	0x1
	.4byte	0x5759
	.4byte	0x5765
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF323
	.byte	0x13
	.byte	0x45
	.4byte	.LASF813
	.4byte	0x5534
	.byte	0x1
	.4byte	0x577e
	.4byte	0x578a
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF335
	.byte	0x13
	.byte	0x46
	.4byte	.LASF814
	.4byte	0x84f3
	.byte	0x1
	.4byte	0x57a3
	.4byte	0x57af
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF332
	.byte	0x13
	.byte	0x47
	.4byte	.LASF815
	.4byte	0x84f3
	.byte	0x1
	.4byte	0x57c8
	.4byte	0x57d4
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF320
	.byte	0x13
	.byte	0x48
	.4byte	.LASF816
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x57ed
	.4byte	0x57f9
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF413
	.byte	0x13
	.byte	0x4e
	.4byte	.LASF817
	.4byte	0x25cf
	.byte	0x1
	.4byte	0x5812
	.4byte	0x5819
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF468
	.byte	0x13
	.byte	0x4f
	.4byte	.LASF818
	.4byte	0x4d69
	.byte	0x1
	.4byte	0x5832
	.4byte	0x5839
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF417
	.byte	0x13
	.byte	0x50
	.4byte	.LASF819
	.4byte	0x5f50
	.byte	0x1
	.4byte	0x5852
	.4byte	0x5859
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF473
	.byte	0x13
	.byte	0x51
	.4byte	.LASF820
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5872
	.4byte	0x5879
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF475
	.byte	0x13
	.byte	0x52
	.4byte	.LASF821
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x5892
	.4byte	0x5899
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF822
	.byte	0x13
	.byte	0x54
	.4byte	.LASF823
	.byte	0x1
	.4byte	0x58ae
	.4byte	0x58ba
	.uleb128 0x17
	.4byte	0x84e8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x397d
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF460
	.byte	0x13
	.byte	0x56
	.4byte	.LASF824
	.byte	0x1
	.4byte	0x58cf
	.4byte	0x58d6
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF458
	.byte	0x13
	.byte	0x57
	.4byte	.LASF825
	.byte	0x1
	.4byte	0x58e7
	.uleb128 0x17
	.4byte	0x84e2
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF826
	.byte	0x40
	.byte	0x11
	.2byte	0x2fc
	.4byte	0x5f34
	.uleb128 0x3b
	.string	"mat"
	.byte	0x11
	.2byte	0x33a
	.4byte	0x5f34
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF826
	.byte	0x11
	.2byte	0x2fe
	.byte	0x1
	.4byte	0x591e
	.4byte	0x5925
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF826
	.byte	0x11
	.2byte	0x2ff
	.byte	0x1
	.byte	0x1
	.4byte	0x5938
	.4byte	0x5953
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f4a
	.uleb128 0x19
	.4byte	0x5f4a
	.uleb128 0x19
	.4byte	0x5f4a
	.uleb128 0x19
	.4byte	0x5f4a
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF826
	.byte	0x11
	.2byte	0x300
	.byte	0x1
	.byte	0x1
	.4byte	0x5966
	.4byte	0x59bd
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF826
	.byte	0x11
	.2byte	0x304
	.byte	0x1
	.byte	0x1
	.4byte	0x59d0
	.4byte	0x59e1
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF826
	.byte	0x11
	.2byte	0x305
	.byte	0x1
	.byte	0x1
	.4byte	0x59f4
	.4byte	0x5a00
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f56
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x307
	.4byte	.LASF827
	.4byte	0x5f4a
	.byte	0x1
	.4byte	0x5a1a
	.4byte	0x5a26
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x308
	.4byte	.LASF828
	.4byte	0x5f77
	.byte	0x1
	.4byte	0x5a40
	.4byte	0x5a4c
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x309
	.4byte	.LASF829
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5a66
	.4byte	0x5a72
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x30a
	.4byte	.LASF830
	.4byte	0x343f
	.byte	0x1
	.4byte	0x5a8c
	.4byte	0x5a98
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f4a
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x30b
	.4byte	.LASF831
	.4byte	0x1df7
	.byte	0x1
	.4byte	0x5ab2
	.4byte	0x5abe
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3977
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x30c
	.4byte	.LASF832
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5ad8
	.4byte	0x5ae4
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0x11
	.2byte	0x30d
	.4byte	.LASF833
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5afe
	.4byte	0x5b0a
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.2byte	0x30e
	.4byte	.LASF834
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5b24
	.4byte	0x5b30
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x30f
	.4byte	.LASF835
	.4byte	0x5f88
	.byte	0x1
	.4byte	0x5b4a
	.4byte	0x5b56
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x310
	.4byte	.LASF836
	.4byte	0x5f88
	.byte	0x1
	.4byte	0x5b70
	.4byte	0x5b7c
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0x11
	.2byte	0x311
	.4byte	.LASF837
	.4byte	0x5f88
	.byte	0x1
	.4byte	0x5b96
	.4byte	0x5ba2
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0x11
	.2byte	0x312
	.4byte	.LASF838
	.4byte	0x5f88
	.byte	0x1
	.4byte	0x5bbc
	.4byte	0x5bc8
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x31a
	.4byte	.LASF839
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5be2
	.4byte	0x5bee
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x31b
	.4byte	.LASF840
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5c08
	.4byte	0x5c19
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0x11
	.2byte	0x31c
	.4byte	.LASF841
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5c33
	.4byte	0x5c3f
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0x11
	.2byte	0x31d
	.4byte	.LASF842
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5c59
	.4byte	0x5c65
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0x11
	.2byte	0x31f
	.4byte	.LASF843
	.byte	0x1
	.4byte	0x5c7b
	.4byte	0x5c82
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x320
	.4byte	.LASF844
	.byte	0x1
	.4byte	0x5c98
	.4byte	0x5c9f
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x321
	.4byte	.LASF845
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5cb9
	.4byte	0x5cc5
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.2byte	0x322
	.4byte	.LASF846
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5cdf
	.4byte	0x5ceb
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.2byte	0x323
	.4byte	.LASF847
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5d05
	.4byte	0x5d11
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x324
	.4byte	.LASF848
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5d2b
	.4byte	0x5d32
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x326
	.4byte	.LASF849
	.byte	0x1
	.4byte	0x5d48
	.4byte	0x5d59
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f4a
	.uleb128 0x19
	.4byte	0x5f77
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF521
	.byte	0x11
	.2byte	0x327
	.4byte	.LASF850
	.byte	0x1
	.4byte	0x5d6f
	.4byte	0x5d80
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f4a
	.uleb128 0x19
	.4byte	0x5f77
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x329
	.4byte	.LASF851
	.4byte	0x119
	.byte	0x1
	.4byte	0x5d9a
	.4byte	0x5da1
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF528
	.byte	0x11
	.2byte	0x32a
	.4byte	.LASF852
	.4byte	0x119
	.byte	0x1
	.4byte	0x5dbb
	.4byte	0x5dc2
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF534
	.byte	0x11
	.2byte	0x32b
	.4byte	.LASF853
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5ddc
	.4byte	0x5de3
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF536
	.byte	0x11
	.2byte	0x32c
	.4byte	.LASF854
	.4byte	0x5f88
	.byte	0x1
	.4byte	0x5dfd
	.4byte	0x5e04
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF538
	.byte	0x11
	.2byte	0x32d
	.4byte	.LASF855
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5e1e
	.4byte	0x5e25
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF540
	.byte	0x11
	.2byte	0x32e
	.4byte	.LASF856
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5e3f
	.4byte	0x5e46
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF542
	.byte	0x11
	.2byte	0x32f
	.4byte	.LASF857
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5e60
	.4byte	0x5e67
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF544
	.byte	0x11
	.2byte	0x330
	.4byte	.LASF858
	.4byte	0x159e
	.byte	0x1
	.4byte	0x5e81
	.4byte	0x5e88
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF546
	.byte	0x11
	.2byte	0x331
	.4byte	.LASF859
	.4byte	0x58ef
	.byte	0x1
	.4byte	0x5ea2
	.4byte	0x5eae
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f7d
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0x11
	.2byte	0x333
	.4byte	.LASF860
	.4byte	0xac
	.byte	0x1
	.4byte	0x5ec8
	.4byte	0x5ecf
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x335
	.4byte	.LASF861
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x5ee9
	.4byte	0x5ef0
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x336
	.4byte	.LASF862
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x5f0a
	.4byte	0x5f11
	.uleb128 0x17
	.4byte	0x5f44
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF367
	.byte	0x11
	.2byte	0x337
	.4byte	.LASF863
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5f27
	.uleb128 0x17
	.4byte	0x5f6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x343f
	.4byte	0x5f44
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x58ef
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3961
	.uleb128 0x22
	.byte	0x4
	.4byte	0x4d53
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5f5c
	.uleb128 0x9
	.4byte	0x119
	.4byte	0x5f6c
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5f72
	.uleb128 0xc
	.4byte	0x58ef
	.uleb128 0x22
	.byte	0x4
	.4byte	0x343f
	.uleb128 0x22
	.byte	0x4
	.4byte	0x5f83
	.uleb128 0xc
	.4byte	0x58ef
	.uleb128 0x22
	.byte	0x4
	.4byte	0x58ef
	.uleb128 0x32
	.4byte	.LASF864
	.byte	0x64
	.byte	0x11
	.2byte	0x480
	.4byte	0x648f
	.uleb128 0x3b
	.string	"mat"
	.byte	0x11
	.2byte	0x4b1
	.4byte	0x648f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF864
	.byte	0x11
	.2byte	0x482
	.byte	0x1
	.4byte	0x5fbd
	.4byte	0x5fc4
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF864
	.byte	0x11
	.2byte	0x483
	.byte	0x1
	.byte	0x1
	.4byte	0x5fd7
	.4byte	0x5ff7
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64a5
	.uleb128 0x19
	.4byte	0x64a5
	.uleb128 0x19
	.4byte	0x64a5
	.uleb128 0x19
	.4byte	0x64a5
	.uleb128 0x19
	.4byte	0x64a5
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF864
	.byte	0x11
	.2byte	0x484
	.byte	0x1
	.byte	0x1
	.4byte	0x600a
	.4byte	0x6016
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64ab
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x486
	.4byte	.LASF865
	.4byte	0x64a5
	.byte	0x1
	.4byte	0x6030
	.4byte	0x603c
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x487
	.4byte	.LASF866
	.4byte	0x64cc
	.byte	0x1
	.4byte	0x6056
	.4byte	0x6062
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x488
	.4byte	.LASF867
	.4byte	0x5f8e
	.byte	0x1
	.4byte	0x607c
	.4byte	0x6088
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x489
	.4byte	.LASF868
	.4byte	0x3983
	.byte	0x1
	.4byte	0x60a2
	.4byte	0x60ae
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64a5
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x48a
	.4byte	.LASF869
	.4byte	0x5f8e
	.byte	0x1
	.4byte	0x60c8
	.4byte	0x60d4
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0x11
	.2byte	0x48b
	.4byte	.LASF870
	.4byte	0x5f8e
	.byte	0x1
	.4byte	0x60ee
	.4byte	0x60fa
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.2byte	0x48c
	.4byte	.LASF871
	.4byte	0x5f8e
	.byte	0x1
	.4byte	0x6114
	.4byte	0x6120
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x48d
	.4byte	.LASF872
	.4byte	0x64dd
	.byte	0x1
	.4byte	0x613a
	.4byte	0x6146
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x48e
	.4byte	.LASF873
	.4byte	0x64dd
	.byte	0x1
	.4byte	0x6160
	.4byte	0x616c
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0x11
	.2byte	0x48f
	.4byte	.LASF874
	.4byte	0x64dd
	.byte	0x1
	.4byte	0x6186
	.4byte	0x6192
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0x11
	.2byte	0x490
	.4byte	.LASF875
	.4byte	0x64dd
	.byte	0x1
	.4byte	0x61ac
	.4byte	0x61b8
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x496
	.4byte	.LASF876
	.4byte	0x159e
	.byte	0x1
	.4byte	0x61d2
	.4byte	0x61de
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x497
	.4byte	.LASF877
	.4byte	0x159e
	.byte	0x1
	.4byte	0x61f8
	.4byte	0x6209
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0x11
	.2byte	0x498
	.4byte	.LASF878
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6223
	.4byte	0x622f
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0x11
	.2byte	0x499
	.4byte	.LASF879
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6249
	.4byte	0x6255
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x64d2
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0x11
	.2byte	0x49b
	.4byte	.LASF880
	.byte	0x1
	.4byte	0x626b
	.4byte	0x6272
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x49c
	.4byte	.LASF881
	.byte	0x1
	.4byte	0x6288
	.4byte	0x628f
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x49d
	.4byte	.LASF882
	.4byte	0x159e
	.byte	0x1
	.4byte	0x62a9
	.4byte	0x62b5
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.2byte	0x49e
	.4byte	.LASF883
	.4byte	0x159e
	.byte	0x1
	.4byte	0x62cf
	.4byte	0x62db
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.2byte	0x49f
	.4byte	.LASF884
	.4byte	0x159e
	.byte	0x1
	.4byte	0x62f5
	.4byte	0x6301
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x4a1
	.4byte	.LASF885
	.4byte	0x119
	.byte	0x1
	.4byte	0x631b
	.4byte	0x6322
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF528
	.byte	0x11
	.2byte	0x4a2
	.4byte	.LASF886
	.4byte	0x119
	.byte	0x1
	.4byte	0x633c
	.4byte	0x6343
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF534
	.byte	0x11
	.2byte	0x4a3
	.4byte	.LASF887
	.4byte	0x5f8e
	.byte	0x1
	.4byte	0x635d
	.4byte	0x6364
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF536
	.byte	0x11
	.2byte	0x4a4
	.4byte	.LASF888
	.4byte	0x64dd
	.byte	0x1
	.4byte	0x637e
	.4byte	0x6385
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF538
	.byte	0x11
	.2byte	0x4a5
	.4byte	.LASF889
	.4byte	0x5f8e
	.byte	0x1
	.4byte	0x639f
	.4byte	0x63a6
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF540
	.byte	0x11
	.2byte	0x4a6
	.4byte	.LASF890
	.4byte	0x159e
	.byte	0x1
	.4byte	0x63c0
	.4byte	0x63c7
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF542
	.byte	0x11
	.2byte	0x4a7
	.4byte	.LASF891
	.4byte	0x5f8e
	.byte	0x1
	.4byte	0x63e1
	.4byte	0x63e8
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF544
	.byte	0x11
	.2byte	0x4a8
	.4byte	.LASF892
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6402
	.4byte	0x6409
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0x11
	.2byte	0x4aa
	.4byte	.LASF893
	.4byte	0xac
	.byte	0x1
	.4byte	0x6423
	.4byte	0x642a
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x4ac
	.4byte	.LASF894
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x6444
	.4byte	0x644b
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x4ad
	.4byte	.LASF895
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x6465
	.4byte	0x646c
	.uleb128 0x17
	.4byte	0x649f
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF367
	.byte	0x11
	.2byte	0x4ae
	.4byte	.LASF896
	.4byte	0xe5
	.byte	0x1
	.4byte	0x6482
	.uleb128 0x17
	.4byte	0x64c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3983
	.4byte	0x649f
	.uleb128 0xa
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5f8e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3bb3
	.uleb128 0xb
	.byte	0x4
	.4byte	0x64b1
	.uleb128 0x9
	.4byte	0x119
	.4byte	0x64c1
	.uleb128 0xa
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x64c7
	.uleb128 0xc
	.4byte	0x5f8e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x3983
	.uleb128 0x22
	.byte	0x4
	.4byte	0x64d8
	.uleb128 0xc
	.4byte	0x5f8e
	.uleb128 0x22
	.byte	0x4
	.4byte	0x5f8e
	.uleb128 0x32
	.4byte	.LASF897
	.byte	0x90
	.byte	0x11
	.2byte	0x5a9
	.4byte	0x6a3d
	.uleb128 0x3b
	.string	"mat"
	.byte	0x11
	.2byte	0x5dc
	.4byte	0x6a3d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF897
	.byte	0x11
	.2byte	0x5ab
	.byte	0x1
	.4byte	0x6512
	.4byte	0x6519
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF897
	.byte	0x11
	.2byte	0x5ac
	.byte	0x1
	.byte	0x1
	.4byte	0x652c
	.4byte	0x6551
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4791
	.uleb128 0x19
	.4byte	0x4791
	.uleb128 0x19
	.4byte	0x4791
	.uleb128 0x19
	.4byte	0x4791
	.uleb128 0x19
	.4byte	0x4791
	.uleb128 0x19
	.4byte	0x4791
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF897
	.byte	0x11
	.2byte	0x5ad
	.byte	0x1
	.byte	0x1
	.4byte	0x6564
	.4byte	0x657f
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x5f50
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF897
	.byte	0x11
	.2byte	0x5ae
	.byte	0x1
	.byte	0x1
	.4byte	0x6592
	.4byte	0x659e
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a53
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x5b0
	.4byte	.LASF898
	.4byte	0x4791
	.byte	0x1
	.4byte	0x65b8
	.4byte	0x65c4
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x5b1
	.4byte	.LASF899
	.4byte	0x4797
	.byte	0x1
	.4byte	0x65de
	.4byte	0x65ea
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x5b2
	.4byte	.LASF900
	.4byte	0x64e3
	.byte	0x1
	.4byte	0x6604
	.4byte	0x6610
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x5b3
	.4byte	.LASF901
	.4byte	0x3bc9
	.byte	0x1
	.4byte	0x662a
	.4byte	0x6636
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4791
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x5b4
	.4byte	.LASF902
	.4byte	0x64e3
	.byte	0x1
	.4byte	0x6650
	.4byte	0x665c
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0x11
	.2byte	0x5b5
	.4byte	.LASF903
	.4byte	0x64e3
	.byte	0x1
	.4byte	0x6676
	.4byte	0x6682
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.2byte	0x5b6
	.4byte	.LASF904
	.4byte	0x64e3
	.byte	0x1
	.4byte	0x669c
	.4byte	0x66a8
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x5b7
	.4byte	.LASF905
	.4byte	0x6a6f
	.byte	0x1
	.4byte	0x66c2
	.4byte	0x66ce
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x5b8
	.4byte	.LASF906
	.4byte	0x6a6f
	.byte	0x1
	.4byte	0x66e8
	.4byte	0x66f4
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0x11
	.2byte	0x5b9
	.4byte	.LASF907
	.4byte	0x6a6f
	.byte	0x1
	.4byte	0x670e
	.4byte	0x671a
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0x11
	.2byte	0x5ba
	.4byte	.LASF908
	.4byte	0x6a6f
	.byte	0x1
	.4byte	0x6734
	.4byte	0x6740
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x5c0
	.4byte	.LASF909
	.4byte	0x159e
	.byte	0x1
	.4byte	0x675a
	.4byte	0x6766
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x5c1
	.4byte	.LASF910
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6780
	.4byte	0x6791
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0x11
	.2byte	0x5c2
	.4byte	.LASF911
	.4byte	0x159e
	.byte	0x1
	.4byte	0x67ab
	.4byte	0x67b7
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0x11
	.2byte	0x5c3
	.4byte	.LASF912
	.4byte	0x159e
	.byte	0x1
	.4byte	0x67d1
	.4byte	0x67dd
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6a64
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0x11
	.2byte	0x5c5
	.4byte	.LASF913
	.byte	0x1
	.4byte	0x67f3
	.4byte	0x67fa
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x5c6
	.4byte	.LASF914
	.byte	0x1
	.4byte	0x6810
	.4byte	0x6817
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x5c7
	.4byte	.LASF915
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6831
	.4byte	0x683d
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.2byte	0x5c8
	.4byte	.LASF916
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6857
	.4byte	0x6863
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.2byte	0x5c9
	.4byte	.LASF917
	.4byte	0x159e
	.byte	0x1
	.4byte	0x687d
	.4byte	0x6889
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF918
	.byte	0x11
	.2byte	0x5cb
	.4byte	.LASF919
	.4byte	0x2c29
	.byte	0x1
	.4byte	0x68a3
	.4byte	0x68af
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x5cc
	.4byte	.LASF920
	.4byte	0x119
	.byte	0x1
	.4byte	0x68c9
	.4byte	0x68d0
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF528
	.byte	0x11
	.2byte	0x5cd
	.4byte	.LASF921
	.4byte	0x119
	.byte	0x1
	.4byte	0x68ea
	.4byte	0x68f1
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF534
	.byte	0x11
	.2byte	0x5ce
	.4byte	.LASF922
	.4byte	0x64e3
	.byte	0x1
	.4byte	0x690b
	.4byte	0x6912
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF536
	.byte	0x11
	.2byte	0x5cf
	.4byte	.LASF923
	.4byte	0x6a6f
	.byte	0x1
	.4byte	0x692c
	.4byte	0x6933
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF538
	.byte	0x11
	.2byte	0x5d0
	.4byte	.LASF924
	.4byte	0x64e3
	.byte	0x1
	.4byte	0x694d
	.4byte	0x6954
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF540
	.byte	0x11
	.2byte	0x5d1
	.4byte	.LASF925
	.4byte	0x159e
	.byte	0x1
	.4byte	0x696e
	.4byte	0x6975
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF542
	.byte	0x11
	.2byte	0x5d2
	.4byte	.LASF926
	.4byte	0x64e3
	.byte	0x1
	.4byte	0x698f
	.4byte	0x6996
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF544
	.byte	0x11
	.2byte	0x5d3
	.4byte	.LASF927
	.4byte	0x159e
	.byte	0x1
	.4byte	0x69b0
	.4byte	0x69b7
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0x11
	.2byte	0x5d5
	.4byte	.LASF928
	.4byte	0xac
	.byte	0x1
	.4byte	0x69d1
	.4byte	0x69d8
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x5d7
	.4byte	.LASF929
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x69f2
	.4byte	0x69f9
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x5d8
	.4byte	.LASF930
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x6a13
	.4byte	0x6a1a
	.uleb128 0x17
	.4byte	0x6a4d
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF367
	.byte	0x11
	.2byte	0x5d9
	.4byte	.LASF931
	.4byte	0xe5
	.byte	0x1
	.4byte	0x6a30
	.uleb128 0x17
	.4byte	0x6a59
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3bc9
	.4byte	0x6a4d
	.uleb128 0xa
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x64e3
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4062
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6a5f
	.uleb128 0xc
	.4byte	0x64e3
	.uleb128 0x22
	.byte	0x4
	.4byte	0x6a6a
	.uleb128 0xc
	.4byte	0x64e3
	.uleb128 0x22
	.byte	0x4
	.4byte	0x64e3
	.uleb128 0x32
	.4byte	.LASF932
	.byte	0x10
	.byte	0x11
	.2byte	0x6fa
	.4byte	0x8448
	.uleb128 0x3d
	.4byte	.LASF933
	.byte	0x11
	.2byte	0x7b2
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3d
	.4byte	.LASF934
	.byte	0x11
	.2byte	0x7b3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x3d
	.4byte	.LASF644
	.byte	0x11
	.2byte	0x7b4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x3b
	.string	"mat"
	.byte	0x11
	.2byte	0x7b5
	.4byte	0x18e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x3e
	.4byte	.LASF646
	.byte	0x11
	.2byte	0x7b7
	.4byte	0x475e
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF647
	.byte	0x11
	.2byte	0x7b8
	.4byte	0x18e9
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF648
	.byte	0x11
	.2byte	0x7b9
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF932
	.byte	0x11
	.2byte	0x6fc
	.byte	0x1
	.4byte	0x6b01
	.4byte	0x6b08
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF932
	.byte	0x11
	.2byte	0x6fd
	.byte	0x1
	.byte	0x1
	.4byte	0x6b1b
	.4byte	0x6b2c
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF932
	.byte	0x11
	.2byte	0x6fe
	.byte	0x1
	.byte	0x1
	.4byte	0x6b3f
	.4byte	0x6b55
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x18e9
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF935
	.byte	0x11
	.2byte	0x6ff
	.byte	0x1
	.4byte	0x6b67
	.4byte	0x6b74
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.2byte	0x701
	.4byte	.LASF936
	.byte	0x1
	.4byte	0x6b8a
	.4byte	0x6ba0
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x17c3
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.2byte	0x702
	.4byte	.LASF937
	.byte	0x1
	.4byte	0x6bb6
	.4byte	0x6bc7
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x5f50
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.2byte	0x703
	.4byte	.LASF938
	.byte	0x1
	.4byte	0x6bdd
	.4byte	0x6bf8
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x5f50
	.uleb128 0x19
	.4byte	0x5f50
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x705
	.4byte	.LASF939
	.4byte	0x17c3
	.byte	0x1
	.4byte	0x6c12
	.4byte	0x6c1e
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF315
	.byte	0x11
	.2byte	0x706
	.4byte	.LASF940
	.4byte	0x18e9
	.byte	0x1
	.4byte	0x6c38
	.4byte	0x6c44
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF284
	.byte	0x11
	.2byte	0x707
	.4byte	.LASF941
	.4byte	0x8459
	.byte	0x1
	.4byte	0x6c5e
	.4byte	0x6c6a
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x708
	.4byte	.LASF942
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x6c84
	.4byte	0x6c90
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x709
	.4byte	.LASF943
	.4byte	0x4094
	.byte	0x1
	.4byte	0x6caa
	.4byte	0x6cb6
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF320
	.byte	0x11
	.2byte	0x70a
	.4byte	.LASF944
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x6cd0
	.4byte	0x6cdc
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF325
	.byte	0x11
	.2byte	0x70b
	.4byte	.LASF945
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x6cf6
	.4byte	0x6d02
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF318
	.byte	0x11
	.2byte	0x70c
	.4byte	.LASF946
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x6d1c
	.4byte	0x6d28
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x70d
	.4byte	.LASF947
	.4byte	0x8459
	.byte	0x1
	.4byte	0x6d42
	.4byte	0x6d4e
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF335
	.byte	0x11
	.2byte	0x70e
	.4byte	.LASF948
	.4byte	0x8459
	.byte	0x1
	.4byte	0x6d68
	.4byte	0x6d74
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF328
	.byte	0x11
	.2byte	0x70f
	.4byte	.LASF949
	.4byte	0x8459
	.byte	0x1
	.4byte	0x6d8e
	.4byte	0x6d9a
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF330
	.byte	0x11
	.2byte	0x710
	.4byte	.LASF950
	.4byte	0x8459
	.byte	0x1
	.4byte	0x6db4
	.4byte	0x6dc0
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x716
	.4byte	.LASF951
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6dda
	.4byte	0x6de6
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF337
	.byte	0x11
	.2byte	0x717
	.4byte	.LASF952
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6e00
	.4byte	0x6e11
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF340
	.byte	0x11
	.2byte	0x718
	.4byte	.LASF953
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6e2b
	.4byte	0x6e37
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF342
	.byte	0x11
	.2byte	0x719
	.4byte	.LASF954
	.4byte	0x159e
	.byte	0x1
	.4byte	0x6e51
	.4byte	0x6e5d
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF667
	.byte	0x11
	.2byte	0x71b
	.4byte	.LASF955
	.byte	0x1
	.4byte	0x6e73
	.4byte	0x6e84
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF669
	.byte	0x11
	.2byte	0x71c
	.4byte	.LASF956
	.byte	0x1
	.4byte	0x6e9a
	.4byte	0x6eb0
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x159e
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF957
	.byte	0x11
	.2byte	0x71d
	.4byte	.LASF958
	.4byte	0xac
	.byte	0x1
	.4byte	0x6eca
	.4byte	0x6ed1
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF959
	.byte	0x11
	.2byte	0x71e
	.4byte	.LASF960
	.4byte	0xac
	.byte	0x1
	.4byte	0x6eeb
	.4byte	0x6ef2
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF673
	.byte	0x11
	.2byte	0x71f
	.4byte	.LASF961
	.byte	0x1
	.4byte	0x6f08
	.4byte	0x6f1e
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x18e9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0x11
	.2byte	0x720
	.4byte	.LASF962
	.byte	0x1
	.4byte	0x6f34
	.4byte	0x6f3b
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF313
	.byte	0x11
	.2byte	0x721
	.4byte	.LASF963
	.byte	0x1
	.4byte	0x6f51
	.4byte	0x6f62
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x722
	.4byte	.LASF964
	.byte	0x1
	.4byte	0x6f78
	.4byte	0x6f7f
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x723
	.4byte	.LASF965
	.byte	0x1
	.4byte	0x6f95
	.4byte	0x6fa6
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF966
	.byte	0x11
	.2byte	0x724
	.4byte	.LASF967
	.byte	0x1
	.4byte	0x6fbc
	.4byte	0x6fc8
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF677
	.byte	0x11
	.2byte	0x725
	.4byte	.LASF968
	.byte	0x1
	.4byte	0x6fde
	.4byte	0x6ff4
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF677
	.byte	0x11
	.2byte	0x726
	.4byte	.LASF969
	.byte	0x1
	.4byte	0x700a
	.4byte	0x702a
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF680
	.byte	0x11
	.2byte	0x727
	.4byte	.LASF970
	.byte	0x1
	.4byte	0x7040
	.4byte	0x7047
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF356
	.byte	0x11
	.2byte	0x728
	.4byte	.LASF971
	.byte	0x1
	.4byte	0x705d
	.4byte	0x706e
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF972
	.byte	0x11
	.2byte	0x729
	.4byte	.LASF973
	.4byte	0x8459
	.byte	0x1
	.4byte	0x7088
	.4byte	0x7099
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF974
	.byte	0x11
	.2byte	0x72a
	.4byte	.LASF975
	.4byte	0x8459
	.byte	0x1
	.4byte	0x70b3
	.4byte	0x70c4
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF976
	.byte	0x11
	.2byte	0x72b
	.4byte	.LASF977
	.4byte	0x8459
	.byte	0x1
	.4byte	0x70de
	.4byte	0x70ef
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF978
	.byte	0x11
	.2byte	0x72c
	.4byte	.LASF979
	.4byte	0x8459
	.byte	0x1
	.4byte	0x7109
	.4byte	0x7115
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF980
	.byte	0x11
	.2byte	0x72d
	.4byte	.LASF981
	.4byte	0x8459
	.byte	0x1
	.4byte	0x712f
	.4byte	0x713b
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF982
	.byte	0x11
	.2byte	0x72e
	.4byte	.LASF983
	.4byte	0x8459
	.byte	0x1
	.4byte	0x7155
	.4byte	0x7161
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF984
	.byte	0x11
	.2byte	0x72f
	.4byte	.LASF985
	.byte	0x1
	.4byte	0x7177
	.4byte	0x717e
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF986
	.byte	0x11
	.2byte	0x730
	.4byte	.LASF987
	.byte	0x1
	.4byte	0x7194
	.4byte	0x719b
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF988
	.byte	0x11
	.2byte	0x731
	.4byte	.LASF989
	.byte	0x1
	.4byte	0x71b1
	.4byte	0x71c2
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF990
	.byte	0x11
	.2byte	0x732
	.4byte	.LASF991
	.4byte	0x119
	.byte	0x1
	.4byte	0x71dc
	.4byte	0x71e8
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF992
	.byte	0x11
	.2byte	0x734
	.4byte	.LASF993
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7202
	.4byte	0x7209
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF994
	.byte	0x11
	.2byte	0x735
	.4byte	.LASF995
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7223
	.4byte	0x722f
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x736
	.4byte	.LASF996
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7249
	.4byte	0x7255
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.2byte	0x737
	.4byte	.LASF997
	.4byte	0x159e
	.byte	0x1
	.4byte	0x726f
	.4byte	0x727b
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF998
	.byte	0x11
	.2byte	0x738
	.4byte	.LASF999
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7295
	.4byte	0x72a1
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.2byte	0x739
	.4byte	.LASF1000
	.4byte	0x159e
	.byte	0x1
	.4byte	0x72bb
	.4byte	0x72c7
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1001
	.byte	0x11
	.2byte	0x73a
	.4byte	.LASF1002
	.4byte	0x159e
	.byte	0x1
	.4byte	0x72e1
	.4byte	0x72ed
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1003
	.byte	0x11
	.2byte	0x73b
	.4byte	.LASF1004
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7307
	.4byte	0x7313
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1005
	.byte	0x11
	.2byte	0x73c
	.4byte	.LASF1006
	.4byte	0x159e
	.byte	0x1
	.4byte	0x732d
	.4byte	0x7339
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1007
	.byte	0x11
	.2byte	0x73d
	.4byte	.LASF1008
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7353
	.4byte	0x735f
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1009
	.byte	0x11
	.2byte	0x73e
	.4byte	.LASF1010
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7379
	.4byte	0x7385
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1011
	.byte	0x11
	.2byte	0x73f
	.4byte	.LASF1012
	.4byte	0x159e
	.byte	0x1
	.4byte	0x739f
	.4byte	0x73ab
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1013
	.byte	0x11
	.2byte	0x740
	.4byte	.LASF1014
	.4byte	0x159e
	.byte	0x1
	.4byte	0x73c5
	.4byte	0x73d1
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1015
	.byte	0x11
	.2byte	0x741
	.4byte	.LASF1016
	.4byte	0x159e
	.byte	0x1
	.4byte	0x73eb
	.4byte	0x73f7
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x119
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x743
	.4byte	.LASF1017
	.4byte	0x119
	.byte	0x1
	.4byte	0x7411
	.4byte	0x7418
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF528
	.byte	0x11
	.2byte	0x744
	.4byte	.LASF1018
	.4byte	0x119
	.byte	0x1
	.4byte	0x7432
	.4byte	0x7439
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF534
	.byte	0x11
	.2byte	0x745
	.4byte	.LASF1019
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x7453
	.4byte	0x745a
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF536
	.byte	0x11
	.2byte	0x746
	.4byte	.LASF1020
	.4byte	0x8459
	.byte	0x1
	.4byte	0x7474
	.4byte	0x747b
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF538
	.byte	0x11
	.2byte	0x747
	.4byte	.LASF1021
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x7495
	.4byte	0x749c
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF540
	.byte	0x11
	.2byte	0x748
	.4byte	.LASF1022
	.4byte	0x159e
	.byte	0x1
	.4byte	0x74b6
	.4byte	0x74bd
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF542
	.byte	0x11
	.2byte	0x749
	.4byte	.LASF1023
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x74d7
	.4byte	0x74de
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF544
	.byte	0x11
	.2byte	0x74a
	.4byte	.LASF1024
	.4byte	0x159e
	.byte	0x1
	.4byte	0x74f8
	.4byte	0x74ff
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1025
	.byte	0x11
	.2byte	0x74c
	.4byte	.LASF1026
	.4byte	0x159e
	.byte	0x1
	.4byte	0x7519
	.4byte	0x7520
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1027
	.byte	0x11
	.2byte	0x74d
	.4byte	.LASF1028
	.4byte	0x159e
	.byte	0x1
	.4byte	0x753a
	.4byte	0x7541
	.uleb128 0x17
	.4byte	0x8448
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1029
	.byte	0x11
	.2byte	0x74f
	.4byte	.LASF1030
	.4byte	0x4094
	.byte	0x1
	.4byte	0x755b
	.4byte	0x7567
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF546
	.byte	0x11
	.2byte	0x750
	.4byte	.LASF1031
	.4byte	0x4094
	.byte	0x1
	.4byte	0x7581
	.4byte	0x758d
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF1029
	.byte	0x11
	.2byte	0x752
	.4byte	.LASF1032
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x75a7
	.4byte	0x75b3
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF546
	.byte	0x11
	.2byte	0x753
	.4byte	.LASF1033
	.4byte	0x6a75
	.byte	0x1
	.4byte	0x75cd
	.4byte	0x75d9
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF1029
	.byte	0x11
	.2byte	0x755
	.4byte	.LASF1034
	.byte	0x1
	.4byte	0x75ef
	.4byte	0x7600
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8470
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF1035
	.byte	0x11
	.2byte	0x756
	.4byte	.LASF1036
	.byte	0x1
	.4byte	0x7616
	.4byte	0x7627
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8470
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF1037
	.byte	0x11
	.2byte	0x757
	.4byte	.LASF1038
	.byte	0x1
	.4byte	0x763d
	.4byte	0x764e
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8470
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF546
	.byte	0x11
	.2byte	0x758
	.4byte	.LASF1039
	.byte	0x1
	.4byte	0x7664
	.4byte	0x7675
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8470
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF1040
	.byte	0x11
	.2byte	0x759
	.4byte	.LASF1041
	.byte	0x1
	.4byte	0x768b
	.4byte	0x769c
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8470
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF1042
	.byte	0x11
	.2byte	0x75a
	.4byte	.LASF1043
	.byte	0x1
	.4byte	0x76b2
	.4byte	0x76c3
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8470
	.uleb128 0x19
	.4byte	0x846a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF1029
	.byte	0x11
	.2byte	0x75c
	.4byte	.LASF1044
	.byte	0x1
	.4byte	0x76d9
	.4byte	0x76ea
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8459
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF546
	.byte	0x11
	.2byte	0x75d
	.4byte	.LASF1045
	.byte	0x1
	.4byte	0x7700
	.4byte	0x7711
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8459
	.uleb128 0x19
	.4byte	0x845f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF362
	.byte	0x11
	.2byte	0x75f
	.4byte	.LASF1046
	.4byte	0xac
	.byte	0x1
	.4byte	0x772b
	.4byte	0x7732
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF693
	.byte	0x11
	.2byte	0x761
	.4byte	.LASF1047
	.4byte	0x4791
	.byte	0x1
	.4byte	0x774c
	.4byte	0x7758
	.uleb128 0x17
	.4byte	0x844e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF693
	.byte	0x11
	.2byte	0x762
	.4byte	.LASF1048
	.4byte	0x4797
	.byte	0x1
	.4byte	0x7772
	.byte	0x1