	.file	"Game_local.cpp"
	.section	".text"
.Ltext0:
	.section	.text._ZN14idFixedWinding5ClearEv,"axG",@progbits,_ZN14idFixedWinding5ClearEv,comdat
	.align 2
	.weak	_ZN14idFixedWinding5ClearEv
	.type	_ZN14idFixedWinding5ClearEv, @function
_ZN14idFixedWinding5ClearEv:
.LFB1502:
	.file 1 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/Winding.h"
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
	.section	.text._ZN6idDeclD2Ev,"axG",@progbits,_ZN6idDeclD5Ev,comdat
	.align 2
	.weak	_ZN6idDeclD2Ev
	.type	_ZN6idDeclD2Ev, @function
_ZN6idDeclD2Ev:
.LFB2259:
	.file 2 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclManager.h"
	.loc 2 137 0
	.cfi_startproc
.LVL1:
.LBB3460:
	.loc 2 137 0
	lis 9,_ZTV6idDecl+8@ha
.LBE3460:
.LBB3461:
	la 0,_ZTV6idDecl+8@l(9)
	stw 0,0(3)
.LBE3461:
	blr
	.cfi_endproc
.LFE2259:
	.size	_ZN6idDeclD2Ev, .-_ZN6idDeclD2Ev
	.section	.text._ZN6idDecl14SetDefaultTextEv,"axG",@progbits,_ZN6idDecl14SetDefaultTextEv,comdat
	.align 2
	.weak	_ZN6idDecl14SetDefaultTextEv
	.type	_ZN6idDecl14SetDefaultTextEv, @function
_ZN6idDecl14SetDefaultTextEv:
.LFB2279:
	.loc 2 200 0
	.cfi_startproc
.LVL2:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 200 0
	lwz 3,4(3)
.LVL3:
	lwz 9,0(3)
	lwz 0,80(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2279:
	.size	_ZN6idDecl14SetDefaultTextEv, .-_ZN6idDecl14SetDefaultTextEv
	.section	.text._ZNK6idDecl17DefaultDefinitionEv,"axG",@progbits,_ZNK6idDecl17DefaultDefinitionEv,comdat
	.align 2
	.weak	_ZNK6idDecl17DefaultDefinitionEv
	.type	_ZNK6idDecl17DefaultDefinitionEv, @function
_ZNK6idDecl17DefaultDefinitionEv:
.LFB2280:
	.loc 2 207 0
	.cfi_startproc
.LVL4:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 207 0
	lwz 3,4(3)
.LVL5:
	lwz 9,0(3)
	lwz 0,84(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2280:
	.size	_ZNK6idDecl17DefaultDefinitionEv, .-_ZNK6idDecl17DefaultDefinitionEv
	.section	.text._ZN6idDecl5ParseEPKci,"axG",@progbits,_ZN6idDecl5ParseEPKci,comdat
	.align 2
	.weak	_ZN6idDecl5ParseEPKci
	.type	_ZN6idDecl5ParseEPKci, @function
_ZN6idDecl5ParseEPKci:
.LFB2281:
	.loc 2 214 0
	.cfi_startproc
.LVL6:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 214 0
	lwz 3,4(3)
.LVL7:
	lwz 9,0(3)
	lwz 0,88(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL8:
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2281:
	.size	_ZN6idDecl5ParseEPKci, .-_ZN6idDecl5ParseEPKci
	.section	.text._ZN6idDecl8FreeDataEv,"axG",@progbits,_ZN6idDecl8FreeDataEv,comdat
	.align 2
	.weak	_ZN6idDecl8FreeDataEv
	.type	_ZN6idDecl8FreeDataEv, @function
_ZN6idDecl8FreeDataEv:
.LFB2282:
	.loc 2 220 0
	.cfi_startproc
.LVL9:
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 220 0
	lwz 3,4(3)
.LVL10:
	lwz 9,0(3)
	lwz 0,92(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2282:
	.size	_ZN6idDecl8FreeDataEv, .-_ZN6idDecl8FreeDataEv
	.section	.text._ZNK6idDecl4SizeEv,"axG",@progbits,_ZNK6idDecl4SizeEv,comdat
	.align 2
	.weak	_ZNK6idDecl4SizeEv
	.type	_ZNK6idDecl4SizeEv, @function
_ZNK6idDecl4SizeEv:
.LFB2283:
	.loc 2 223 0
	.cfi_startproc
.LVL11:
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 223 0
	lwz 3,4(3)
.LVL12:
	lwz 9,0(3)
	lwz 0,96(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	lwz 0,12(1)
	addi 1,1,8
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2283:
	.size	_ZNK6idDecl4SizeEv, .-_ZNK6idDecl4SizeEv
	.section	.text._ZNK6idDecl4ListEv,"axG",@progbits,_ZNK6idDecl4ListEv,comdat
	.align 2
	.weak	_ZNK6idDecl4ListEv
	.type	_ZNK6idDecl4ListEv, @function
_ZNK6idDecl4ListEv:
.LFB2284:
	.loc 2 228 0
	.cfi_startproc
.LVL13:
	mflr 0
	stwu 1,-8(1)
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 228 0
	lwz 3,4(3)
.LVL14:
	lwz 9,0(3)
	lwz 0,100(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	lwz 0,12(1)
	addi 1,1,8
.LCFI11:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2284:
	.size	_ZNK6idDecl4ListEv, .-_ZNK6idDecl4ListEv
	.section	.text._ZNK6idDecl5PrintEv,"axG",@progbits,_ZNK6idDecl5PrintEv,comdat
	.align 2
	.weak	_ZNK6idDecl5PrintEv
	.type	_ZNK6idDecl5PrintEv, @function
_ZNK6idDecl5PrintEv:
.LFB2285:
	.loc 2 233 0
	.cfi_startproc
.LVL15:
	mflr 0
	stwu 1,-8(1)
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 233 0
	lwz 3,4(3)
.LVL16:
	lwz 9,0(3)
	lwz 0,104(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
	lwz 0,12(1)
	addi 1,1,8
.LCFI13:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2285:
	.size	_ZNK6idDecl5PrintEv, .-_ZNK6idDecl5PrintEv
	.section	.text._ZN6idGameD2Ev,"axG",@progbits,_ZN6idGameD5Ev,comdat
	.align 2
	.weak	_ZN6idGameD2Ev
	.type	_ZN6idGameD2Ev, @function
_ZN6idGameD2Ev:
.LFB2502:
	.file 3 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../game/Game.h"
	.loc 3 74 0
	.cfi_startproc
.LVL17:
.LBB3462:
	.loc 3 74 0
	lis 9,_ZTV6idGame+8@ha
.LBE3462:
.LBB3463:
	la 0,_ZTV6idGame+8@l(9)
	stw 0,0(3)
.LBE3463:
	blr
	.cfi_endproc
.LFE2502:
	.size	_ZN6idGameD2Ev, .-_ZN6idGameD2Ev
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal14SetLocalClientEi
	.type	_ZN11idGameLocal14SetLocalClientEi, @function
_ZN11idGameLocal14SetLocalClientEi:
.LFB2851:
	.file 4 "d:/Data/Nintendo/DoomGX/src/game/Game_local.cpp"
	.loc 4 698 0
	.cfi_startproc
.LVL18:
	.loc 4 699 0
	addis 3,3,0x25
.LVL19:
	stw 4,2020(3)
	.loc 4 700 0
	blr
	.cfi_endproc
.LFE2851:
	.size	_ZN11idGameLocal14SetLocalClientEi, .-_ZN11idGameLocal14SetLocalClientEi
	.align 2
	.globl _ZN11idGameLocal11GetUserInfoEi
	.type	_ZN11idGameLocal11GetUserInfoEi, @function
_ZN11idGameLocal11GetUserInfoEi:
.LFB2853:
	.loc 4 764 0
	.cfi_startproc
.LVL20:
	mflr 0
	stwu 1,-24(1)
.LCFI14:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,28(1)
	.loc 4 765 0
	addi 0,4,132
	.cfi_offset 65, 4
	.loc 4 764 0
	stw 30,16(1)
	.loc 4 765 0
	slwi 0,0,2
	.loc 4 764 0
	stw 31,20(1)
	.loc 4 765 0
	add 9,3,0
	.loc 4 764 0
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 4 768 0
	li 31,0
	.loc 4 765 0
	lwz 3,4(9)
.LVL21:
	cmpwi 7,3,0
	beq- 7,.L15
.LVL22:
.LBB3464:
.LBB3465:
	.file 5 "d:/Data/Nintendo/DoomGX/src/game/gamesys/Class.h"
	.loc 5 340 0 discriminator 1
	lwz 9,0(3)
.LVL23:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL24:
.LBE3465:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB3468:
.LBB3466:
.LBB3467:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L15
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L15
.LBE3467:
.LBE3466:
.LBE3468:
.LBE3464:
	.loc 4 766 0 is_stmt 1 discriminator 4
	mulli 31,29,44
	add 31,30,31
	addi 31,31,52
.LVL25:
.L15:
	.loc 4 769 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
.LVL26:
	mtlr 0
	lwz 30,16(1)
.LVL27:
	lwz 31,20(1)
	addi 1,1,24
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2853:
	.size	_ZN11idGameLocal11GetUserInfoEi, .-_ZN11idGameLocal11GetUserInfoEi
	.align 2
	.globl _ZN11idGameLocal22HandleMainMenuCommandsEPKcP15idUserInterface
	.type	_ZN11idGameLocal22HandleMainMenuCommandsEPKcP15idUserInterface, @function
_ZN11idGameLocal22HandleMainMenuCommandsEPKcP15idUserInterface:
.LFB2893:
	.loc 4 2393 0
	.cfi_startproc
.LVL28:
	.loc 4 2393 0
	blr
	.cfi_endproc
.LFE2893:
	.size	_ZN11idGameLocal22HandleMainMenuCommandsEPKcP15idUserInterface, .-_ZN11idGameLocal22HandleMainMenuCommandsEPKcP15idUserInterface
	.align 2
	.globl _ZN11idGameLocal15sortSpawnPointsEPKvS1_
	.type	_ZN11idGameLocal15sortSpawnPointsEPKvS1_, @function
_ZN11idGameLocal15sortSpawnPointsEPKvS1_:
.LFB2957:
	.loc 4 3978 0
	.cfi_startproc
.LVL29:
	stwu 1,-16(1)
.LCFI16:
	.cfi_def_cfa_offset 16
.LBB3469:
	.loc 4 3983 0
	lwz 0,4(3)
	.loc 4 3985 0
	li 3,1
.LVL30:
	.loc 4 3983 0
	lwz 9,4(4)
	subf 0,9,0
	lis 9,.LC1@ha
	xoris 0,0,0x8000
	lfs 0,.LC1@l(9)
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	.loc 4 3984 0
	lis 9,.LC2@ha
	.loc 4 3983 0
	lfd 13,8(1)
	fsub 13,13,0
	.loc 4 3984 0
	lfs 0,.LC2@l(9)
	.loc 4 3983 0
	frsp 13,13
.LVL31:
	.loc 4 3984 0
	fcmpu 7,13,0
	blt- 7,.L22
	.loc 4 3986 0
	bgt- 7,.L28
	.loc 4 3989 0
	li 3,0
.L22:
.LBE3469:
	.loc 4 3991 0
	addi 1,1,16
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
.L28:
.LCFI18:
	.cfi_restore_state
.LBB3470:
	.loc 4 3987 0
	li 3,-1
	b .L22
.LBE3470:
	.cfi_endproc
.LFE2957:
	.size	_ZN11idGameLocal15sortSpawnPointsEPKvS1_, .-_ZN11idGameLocal15sortSpawnPointsEPKvS1_
	.align 2
	.globl _ZN11idGameLocal15SelectTimeGroupEi
	.type	_ZN11idGameLocal15SelectTimeGroupEi, @function
_ZN11idGameLocal15SelectTimeGroupEi:
.LFB2965:
	.loc 4 4181 0
	.cfi_startproc
.LVL32:
	.loc 4 4181 0
	blr
	.cfi_endproc
.LFE2965:
	.size	_ZN11idGameLocal15SelectTimeGroupEi, .-_ZN11idGameLocal15SelectTimeGroupEi
	.align 2
	.globl _ZN11idGameLocal16GetTimeGroupTimeEi
	.type	_ZN11idGameLocal16GetTimeGroupTimeEi, @function
_ZN11idGameLocal16GetTimeGroupTimeEi:
.LFB2966:
	.loc 4 4188 0
	.cfi_startproc
.LVL33:
	.loc 4 4189 0
	lis 9,.LANCHOR0+2426836@ha
	.loc 4 4190 0
	lwz 3,.LANCHOR0+2426836@l(9)
.LVL34:
	blr
	.cfi_endproc
.LFE2966:
	.size	_ZN11idGameLocal16GetTimeGroupTimeEi, .-_ZN11idGameLocal16GetTimeGroupTimeEi
	.align 2
	.globl _ZN11idGameLocal16GetMapLoadingGUIEPc
	.type	_ZN11idGameLocal16GetMapLoadingGUIEPc, @function
_ZN11idGameLocal16GetMapLoadingGUIEPc:
.LFB2971:
	.loc 4 4268 0
	.cfi_startproc
.LVL35:
	.loc 4 4268 0
	blr
	.cfi_endproc
.LFE2971:
	.size	_ZN11idGameLocal16GetMapLoadingGUIEPc, .-_ZN11idGameLocal16GetMapLoadingGUIEPc
	.section	.text._Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs,"axG",@progbits,_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs,comdat
	.align 2
	.weak	_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs
	.type	_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs, @function
_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs:
.LFB3227:
	.loc 2 332 0
	.cfi_startproc
.LVL36:
	mflr 0
	stwu 1,-8(1)
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 333 0
	lis 9,declManager@ha
	.loc 2 332 0
	mr 4,3
	.loc 2 333 0
	lwz 9,declManager@l(9)
	li 5,5
	.loc 2 332 0
	stw 0,12(1)
	.loc 2 333 0
	mr 3,9
.LVL37:
	lwz 11,0(9)
	lwz 0,80(11)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL38:
	.loc 2 334 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI20:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3227:
	.size	_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs, .-_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs
	.section	.text._Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs,"axG",@progbits,_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs,comdat
	.align 2
	.weak	_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs
	.type	_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs, @function
_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs:
.LFB3228:
	.loc 2 337 0
	.cfi_startproc
.LVL39:
	mflr 0
	stwu 1,-8(1)
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 338 0
	lis 9,declManager@ha
	.loc 2 337 0
	mr 4,3
	.loc 2 338 0
	lwz 9,declManager@l(9)
	li 5,5
	.loc 2 337 0
	stw 0,12(1)
	.loc 2 338 0
	mr 3,9
.LVL40:
	lwz 11,0(9)
	lwz 0,84(11)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL41:
	.loc 2 339 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI22:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3228:
	.size	_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs, .-_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs
	.section	.text._ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE,"axG",@progbits,_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE,comdat
	.align 2
	.weak	_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE
	.type	_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE, @function
_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE:
.LFB3229:
	.file 6 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/CmdSystem.h"
	.loc 6 148 0
	.cfi_startproc
.LVL42:
	mflr 0
	stwu 1,-8(1)
.LCFI23:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 6 149 0
	lis 9,cmdSystem@ha
	.loc 6 148 0
	mr 11,3
	.loc 6 149 0
	lwz 9,cmdSystem@l(9)
	.loc 6 148 0
	mr 5,4
	stw 0,12(1)
	.loc 6 149 0
	mr 4,11
.LVL43:
	mr 3,9
.LVL44:
	li 6,5
	lwz 10,0(9)
	lwz 0,48(10)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL45:
	.loc 6 150 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI24:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3229:
	.size	_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE, .-_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE
	.section	.text._ZN9idWinding5ClearEv,"axG",@progbits,_ZN9idWinding5ClearEv,comdat
	.align 2
	.weak	_ZN9idWinding5ClearEv
	.type	_ZN9idWinding5ClearEv, @function
_ZN9idWinding5ClearEv:
.LFB1473:
	.loc 1 249 0
	.cfi_startproc
.LVL46:
	mflr 0
	stwu 1,-16(1)
.LCFI25:
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
.LVL47:
	.loc 1 250 0
	stw 0,4(31)
	.loc 1 251 0
	cmpwi 7,3,0
	beq- 7,.L36
	.loc 1 251 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L36:
	.loc 1 252 0 is_stmt 1
	li 0,0
	stw 0,8(31)
	.loc 1 253 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL48:
	mtlr 0
	addi 1,1,16
.LCFI26:
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
.LVL49:
	mflr 0
	stwu 1,-16(1)
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3472:
	lis 9,_ZTV9idWinding+8@ha
.LBE3472:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB3473:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL50:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L38
	.loc 1 184 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L38:
	.loc 1 185 0 is_stmt 1
	li 0,0
	stw 0,8(31)
.LBE3473:
	.loc 1 186 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL51:
	mtlr 0
	addi 1,1,16
.LCFI28:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1461:
	.size	_ZN9idWindingD2Ev, .-_ZN9idWindingD2Ev
	.section	.text._ZN6idGameD0Ev,"axG",@progbits,_ZN6idGameD5Ev,comdat
	.align 2
	.weak	_ZN6idGameD0Ev
	.type	_ZN6idGameD0Ev, @function
_ZN6idGameD0Ev:
.LFB2504:
	.loc 3 74 0
	.cfi_startproc
.LVL52:
	mflr 0
	stwu 1,-8(1)
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3474:
.LBB3475:
.LBB3476:
	lis 9,_ZTV6idGame+8@ha
.LBE3476:
.LBE3475:
.LBE3474:
	stw 0,12(1)
.LBB3479:
.LBB3478:
.LBB3477:
	.loc 3 74 0
	la 0,_ZTV6idGame+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
.LBE3477:
.LBE3478:
.LBE3479:
	bl _ZdlPv
.LVL53:
	lwz 0,12(1)
	addi 1,1,8
.LCFI30:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2504:
	.size	_ZN6idGameD0Ev, .-_ZN6idGameD0Ev
	.section	.text._ZN6idDeclD0Ev,"axG",@progbits,_ZN6idDeclD5Ev,comdat
	.align 2
	.weak	_ZN6idDeclD0Ev
	.type	_ZN6idDeclD0Ev, @function
_ZN6idDeclD0Ev:
.LFB2261:
	.loc 2 137 0
	.cfi_startproc
.LVL54:
	mflr 0
	stwu 1,-8(1)
.LCFI31:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3480:
.LBB3481:
.LBB3482:
	lis 9,_ZTV6idDecl+8@ha
.LBE3482:
.LBE3481:
.LBE3480:
	stw 0,12(1)
.LBB3485:
.LBB3484:
.LBB3483:
	.loc 2 137 0
	la 0,_ZTV6idDecl+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
.LBE3483:
.LBE3484:
.LBE3485:
	bl _ZdlPv
.LVL55:
	lwz 0,12(1)
	addi 1,1,8
.LCFI32:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2261:
	.size	_ZN6idDeclD0Ev, .-_ZN6idDeclD0Ev
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal10SwitchTeamEii
	.type	_ZN11idGameLocal10SwitchTeamEii, @function
_ZN11idGameLocal10SwitchTeamEii:
.LFB2970:
	.loc 4 4243 0
	.cfi_startproc
.LVL56:
.LBB3486:
	.loc 4 4246 0
	mr. 9,4
.LBE3486:
	.loc 4 4243 0
	mflr 0
	stwu 1,-8(1)
.LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 6,5
	stw 0,12(1)
.LBB3487:
	.loc 4 4246 0
	blt- 0,.L46
	.cfi_offset 65, 4
	.loc 4 4246 0 is_stmt 0 discriminator 1
	addi 9,9,132
	lis 11,.LANCHOR0@ha
	slwi 9,9,2
	la 11,.LANCHOR0@l(11)
	add 11,11,9
	lwz 11,4(11)
.LVL57:
	.loc 4 4248 0 is_stmt 1 discriminator 1
	cmpwi 7,11,0
	beq- 7,.L46
	.loc 4 4254 0
	cmpwi 7,5,-1
	.loc 4 4251 0
	lwz 5,2260(11)
.LVL58:
	.loc 4 4254 0
	beq- 7,.L49
	.loc 4 4259 0
	addis 3,3,0x25
.LVL59:
	addi 3,3,1416
.LVL60:
	bl _ZN17idMultiplayerGame12SwitchToTeamEiii
.LVL61:
.L46:
.LBE3487:
	.loc 4 4261 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI34:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL62:
.L49:
.LCFI35:
	.cfi_restore_state
.LBB3488:
	.loc 4 4255 0
	add 9,3,9
	li 4,1
.LVL63:
	lwz 3,4(9)
.LVL64:
	bl _ZN8idPlayer8SpectateEb
.LVL65:
.LBE3488:
	.loc 4 4261 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI36:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2970:
	.size	_ZN11idGameLocal10SwitchTeamEii, .-_ZN11idGameLocal10SwitchTeamEii
	.align 2
	.globl _ZN11idGameLocal14GetClientStatsEiPci
	.type	_ZN11idGameLocal14GetClientStatsEiPci, @function
_ZN11idGameLocal14GetClientStatsEiPci:
.LFB2969:
	.loc 4 4233 0
	.cfi_startproc
.LVL66:
	mflr 0
	stwu 1,-8(1)
.LCFI37:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 4234 0
	addis 3,3,0x25
.LVL67:
	addi 3,3,1416
.LVL68:
	.loc 4 4233 0
	stw 0,12(1)
	.loc 4 4234 0
	.cfi_offset 65, 4
	bl _ZN17idMultiplayerGame11PlayerStatsEiPci
.LVL69:
	.loc 4 4235 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI38:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2969:
	.size	_ZN11idGameLocal14GetClientStatsEiPci, .-_ZN11idGameLocal14GetClientStatsEiPci
	.align 2
	.globl _ZN11idGameLocal23SetPersistentPlayerInfoEiRK6idDict
	.type	_ZN11idGameLocal23SetPersistentPlayerInfoEiRK6idDict, @function
_ZN11idGameLocal23SetPersistentPlayerInfoEiRK6idDict:
.LFB2844:
	.loc 4 567 0
	.cfi_startproc
.LVL70:
	mflr 0
	stwu 1,-8(1)
.LCFI39:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 4 568 0
	mulli 0,4,44
	.cfi_offset 65, 4
	mr 4,5
.LVL71:
	add 3,3,0
.LVL72:
	addi 3,3,356
	bl _ZN6idDictaSERKS_
.LVL73:
	.loc 4 569 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI40:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2844:
	.size	_ZN11idGameLocal23SetPersistentPlayerInfoEiRK6idDict, .-_ZN11idGameLocal23SetPersistentPlayerInfoEiRK6idDict
	.align 2
	.globl _ZN11idGameLocal15GetBestGameTypeEPKcS1_Pc
	.type	_ZN11idGameLocal15GetBestGameTypeEPKcS1_Pc, @function
_ZN11idGameLocal15GetBestGameTypeEPKcS1_Pc:
.LFB2967:
	.loc 4 4197 0
	.cfi_startproc
.LVL74:
	mflr 0
	stwu 1,-16(1)
.LCFI41:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 4 4198 0
	mr 4,5
.LVL75:
	mr 3,6
.LVL76:
	li 5,1024
.LVL77:
	.loc 4 4197 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 4 4197 0
	mr 31,6
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 4 4198 0
	bl strncpy
.LVL78:
	.loc 4 4199 0
	li 0,0
	stb 0,1023(31)
	.loc 4 4200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL79:
	mtlr 0
	addi 1,1,16
.LCFI42:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2967:
	.size	_ZN11idGameLocal15GetBestGameTypeEPKcS1_Pc, .-_ZN11idGameLocal15GetBestGameTypeEPKcS1_Pc
	.align 2
	.globl _ZN11idGameLocal16ThrottleUserInfoEv
	.type	_ZN11idGameLocal16ThrottleUserInfoEv, @function
_ZN11idGameLocal16ThrottleUserInfoEv:
.LFB2964:
	.loc 4 4172 0
	.cfi_startproc
.LVL80:
	mflr 0
	stwu 1,-8(1)
.LCFI43:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 4173 0
	addis 3,3,0x25
.LVL81:
	addi 3,3,1416
.LVL82:
	.loc 4 4172 0
	stw 0,12(1)
	.loc 4 4173 0
	.cfi_offset 65, 4
	bl _ZN17idMultiplayerGame16ThrottleUserInfoEv
.LVL83:
	.loc 4 4174 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI44:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2964:
	.size	_ZN11idGameLocal16ThrottleUserInfoEv, .-_ZN11idGameLocal16ThrottleUserInfoEv
	.section	.text._Z15idDeclAllocatorI6idDeclEPS0_v,"axG",@progbits,_Z15idDeclAllocatorI6idDeclEPS0_v,comdat
	.align 2
	.weak	_Z15idDeclAllocatorI6idDeclEPS0_v
	.type	_Z15idDeclAllocatorI6idDeclEPS0_v, @function
_Z15idDeclAllocatorI6idDeclEPS0_v:
.LFB3226:
	.loc 2 241 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI45:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 242 0
	li 3,8
	.loc 2 241 0
	stw 0,12(1)
	.loc 2 242 0
	.cfi_offset 65, 4
	bl _Znwj
.LVL84:
.LBB3489:
.LBB3490:
	.loc 2 136 0
	lis 11,_ZTV6idDecl+8@ha
	la 0,_ZTV6idDecl+8@l(11)
	stw 0,0(3)
	li 0,0
	stw 0,4(3)
.LBE3490:
.LBE3489:
	.loc 2 243 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI46:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3226:
	.size	_Z15idDeclAllocatorI6idDeclEPS0_v, .-_Z15idDeclAllocatorI6idDeclEPS0_v
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal17HandleGuiCommandsEPKc
	.type	_ZN11idGameLocal17HandleGuiCommandsEPKc, @function
_ZN11idGameLocal17HandleGuiCommandsEPKc:
.LFB2892:
	.loc 4 2381 0
	.cfi_startproc
.LVL85:
	mflr 0
	stwu 1,-8(1)
.LCFI47:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 2382 0
	addis 9,3,0x25
	.loc 4 2383 0
	li 3,0
.LVL86:
	.loc 4 2381 0
	stw 0,12(1)
	.loc 4 2382 0
	lbz 0,2016(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L56
	.loc 4 2385 0
	addi 3,9,1416
	bl _ZN17idMultiplayerGame17HandleGuiCommandsEPKc
.LVL87:
.L56:
	.loc 4 2386 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI48:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2892:
	.size	_ZN11idGameLocal17HandleGuiCommandsEPKc, .-_ZN11idGameLocal17HandleGuiCommandsEPKc
	.align 2
	.globl _ZN11idGameLocal9StartMenuEv
	.type	_ZN11idGameLocal9StartMenuEv, @function
_ZN11idGameLocal9StartMenuEv:
.LFB2891:
	.loc 4 2369 0
	.cfi_startproc
.LVL88:
	mflr 0
	stwu 1,-8(1)
.LCFI49:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 2370 0
	addis 9,3,0x25
	.loc 4 2371 0
	li 3,0
.LVL89:
	.loc 4 2369 0
	stw 0,12(1)
	.loc 4 2370 0
	lbz 0,2016(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L59
	.loc 4 2373 0
	addi 3,9,1416
	bl _ZN17idMultiplayerGame9StartMenuEv
.LVL90:
.L59:
	.loc 4 2374 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI50:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2891:
	.size	_ZN11idGameLocal9StartMenuEv, .-_ZN11idGameLocal9StartMenuEv
	.align 2
	.globl _ZN11idGameLocal23GetPersistentPlayerInfoEi
	.type	_ZN11idGameLocal23GetPersistentPlayerInfoEi, @function
_ZN11idGameLocal23GetPersistentPlayerInfoEi:
.LFB2843:
	.loc 4 550 0
	.cfi_startproc
.LVL91:
	stwu 1,-24(1)
.LCFI51:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
.LBB3491:
	.loc 4 553 0
	mulli 30,4,44
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE3491:
	.loc 4 550 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
.LBB3497:
	.loc 4 553 0
	add 30,3,30
	.loc 4 554 0
	addi 29,29,132
.LBE3497:
	.loc 4 550 0
	stw 31,20(1)
.LBB3498:
	.loc 4 553 0
	addi 30,30,356
.LBE3498:
	.loc 4 550 0
	mr 31,3
	.cfi_offset 31, -4
.LBB3499:
	.loc 4 554 0
	slwi 29,29,2
	.loc 4 553 0
	mr 3,30
.LVL92:
	.loc 4 554 0
	add 31,31,29
.LVL93:
.LBE3499:
	.loc 4 550 0
	stw 0,28(1)
.LBB3500:
	.loc 4 553 0
	.cfi_offset 65, 4
	bl _ZN6idDict5ClearEv
.LVL94:
	.loc 4 554 0
	lwz 31,4(31)
.LVL95:
	.loc 4 555 0
	cmpwi 7,31,0
	beq- 7,.L62
.LVL96:
.LBB3492:
.LBB3493:
	.loc 5 340 0 discriminator 1
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL97:
.LBE3493:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB3496:
.LBB3494:
.LBB3495:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L62
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L62
.LBE3495:
.LBE3494:
.LBE3496:
.LBE3492:
	.loc 4 556 0 is_stmt 1 discriminator 4
	mr 3,31
.LVL98:
	bl _ZN8idPlayer18SavePersistantInfoEv
.LVL99:
.L62:
.LBE3500:
	.loc 4 560 0
	lwz 0,28(1)
	mr 3,30
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL100:
	addi 1,1,24
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2843:
	.size	_ZN11idGameLocal23GetPersistentPlayerInfoEi, .-_ZN11idGameLocal23GetPersistentPlayerInfoEi
	.section	.text._Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv,"axG",@progbits,_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv,comdat
	.align 2
	.weak	_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv
	.type	_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv, @function
_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv:
.LFB3225:
	.loc 2 241 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3225
	mflr 0
	stwu 1,-16(1)
.LCFI53:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 2 242 0
	li 3,156
	.loc 2 241 0
	stw 31,12(1)
	stw 0,20(1)
	stw 30,8(1)
.LEHB0:
	.loc 2 242 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl _Znwj
.LEHE0:
	mr 31,3
.LEHB1:
	bl _ZN14idDeclModelDefC1Ev
.LEHE1:
	.loc 2 243 0 discriminator 1
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI54:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L65:
.LCFI55:
	.cfi_restore_state
	mr 30,3
	.loc 2 242 0
	mr 3,31
	bl _ZdlPv
	mr 3,30
.LEHB2:
	bl _Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE3225:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3225:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3225-.LLSDACSB3225
.LLSDACSB3225:
	.uleb128 .LEHB0-.LFB3225
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3225
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L65-.LFB3225
	.uleb128 0
	.uleb128 .LEHB2-.LFB3225
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3225:
	.section	.text._Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv,"axG",@progbits,_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv,comdat
	.size	_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv, .-_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal4DrawEi
	.type	_ZN11idGameLocal4DrawEi, @function
_ZN11idGameLocal4DrawEi:
.LFB2889:
	.loc 4 2325 0
	.cfi_startproc
.LVL101:
	mflr 0
	stwu 1,-8(1)
.LCFI56:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3505:
	.loc 4 2326 0
	addis 9,3,0x25
.LBE3505:
	.loc 4 2325 0
	stw 0,12(1)
.LBB3506:
	.loc 4 2326 0
	lbz 0,2016(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L70
	.loc 4 2330 0
	addi 11,4,132
	slwi 11,11,2
	add 3,3,11
.LVL102:
	lwz 9,4(3)
.LVL103:
	.loc 4 2333 0
	li 3,0
.LVL104:
	.loc 4 2332 0
	cmpwi 7,9,0
	beq- 7,.L68
	.loc 4 2337 0
	lwz 4,5140(9)
.LVL105:
	addi 3,9,3976
	bl _ZN12idPlayerView16RenderPlayerViewEP15idUserInterface
.LVL106:
	.loc 4 2339 0
	li 3,1
.L68:
.LBE3506:
	.loc 4 2340 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI57:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL107:
.L70:
.LCFI58:
	.cfi_restore_state
.LBB3507:
.LBB3508:
	.loc 4 2327 0
	addi 3,9,1416
.LVL108:
	bl _ZN17idMultiplayerGame4DrawEi
.LVL109:
.LBE3508:
.LBE3507:
	.loc 4 2340 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI59:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2889:
	.size	_ZN11idGameLocal4DrawEi, .-_ZN11idGameLocal4DrawEi
	.section	.text._ZN14idFixedWindingD2Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD2Ev
	.type	_ZN14idFixedWindingD2Ev, @function
_ZN14idFixedWindingD2Ev:
.LFB1498:
	.loc 1 380 0
	.cfi_startproc
.LVL110:
.LBB3514:
	.loc 1 381 0
	li 0,0
.LBB3515:
.LBB3516:
.LBB3517:
	.loc 1 183 0
	lis 9,_ZTV9idWinding+8@ha
.LBE3517:
.LBE3516:
.LBE3515:
	.loc 1 381 0
	stw 0,8(3)
.LVL111:
.LBB3520:
.LBB3519:
.LBB3518:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	stw 0,0(3)
.LBE3518:
.LBE3519:
.LBE3520:
.LBE3514:
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
.LVL112:
	mflr 0
	stwu 1,-8(1)
.LCFI60:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3527:
.LBB3528:
.LBB3529:
.LBB3530:
.LBB3531:
.LBB3532:
	.loc 1 183 0
	lis 11,_ZTV9idWinding+8@ha
.LBE3532:
.LBE3531:
.LBE3530:
.LBE3529:
.LBE3528:
.LBE3527:
	.loc 1 380 0
	stw 0,12(1)
.LBB3538:
.LBB3537:
.LBB3536:
	.loc 1 381 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,8(3)
.LVL113:
.LBB3535:
.LBB3534:
.LBB3533:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(11)
	stw 0,0(3)
.LBE3533:
.LBE3534:
.LBE3535:
.LBE3536:
.LBE3537:
.LBE3538:
	.loc 1 382 0
	bl _ZdlPv
.LVL114:
	lwz 0,12(1)
	addi 1,1,8
.LCFI61:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1500:
	.size	_ZN14idFixedWindingD0Ev, .-_ZN14idFixedWindingD0Ev
	.section	.text._ZN9idWindingD0Ev,"axG",@progbits,_ZN9idWindingD5Ev,comdat
	.align 2
	.weak	_ZN9idWindingD0Ev
	.type	_ZN9idWindingD0Ev, @function
_ZN9idWindingD0Ev:
.LFB1463:
	.loc 1 183 0
	.cfi_startproc
.LVL115:
	mflr 0
	stwu 1,-16(1)
.LCFI62:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3542:
.LBB3543:
.LBB3544:
	lis 9,_ZTV9idWinding+8@ha
.LBE3544:
.LBE3543:
.LBE3542:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL116:
	stw 0,20(1)
.LBB3549:
.LBB3547:
.LBB3545:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL117:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L79
	bl _ZdaPv
.LVL118:
.L79:
	.loc 1 185 0
	li 0,0
.LBE3545:
.LBE3547:
.LBE3549:
	.loc 1 186 0
	mr 3,31
.LBB3550:
.LBB3548:
.LBB3546:
	.loc 1 185 0
	stw 0,8(31)
.LBE3546:
.LBE3548:
.LBE3550:
	.loc 1 186 0
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL119:
	mtlr 0
	addi 1,1,16
.LCFI63:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1463:
	.size	_ZN9idWindingD0Ev, .-_ZN9idWindingD0Ev
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal8SaveGameEP6idFile
	.type	_ZN11idGameLocal8SaveGameEP6idFile, @function
_ZN11idGameLocal8SaveGameEP6idFile:
.LFB2842:
	.loc 4 375 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2842
.LVL120:
	stwu 1,-72(1)
.LCFI64:
	.cfi_def_cfa_offset 72
	mflr 0
	stw 28,56(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_register 65, 0
.LBB3593:
	.loc 4 380 0
	addi 3,1,8
.LVL121:
.LBE3593:
	.loc 4 375 0
	stw 0,76(1)
	stw 31,68(1)
	mr 31,4
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	stw 26,48(1)
	stw 27,52(1)
	stw 29,60(1)
	stw 30,64(1)
.LEHB3:
.LBB3642:
	.loc 4 380 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	bl _ZN10idSaveGameC1EP6idFile
.LEHE3:
.LVL122:
.LBB3594:
.LBB3595:
	.loc 4 382 0
	lis 9,g_flushSave+44@ha
	.file 7 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/CVarSystem.h"
	.loc 7 142 0
	lwz 9,g_flushSave+44@l(9)
.LBE3595:
.LBE3594:
	.loc 4 382 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L83
	.loc 4 385 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,40(9)
	mtctr 0
.LEHB4:
	bctrl
.L83:
	.loc 4 388 0
	addi 3,1,8
	li 4,1304
	bl _ZN10idSaveGame16WriteBuildNumberEi
	.loc 4 375 0
	addi 30,28,528
.LBE3642:
	li 0,4096
	mr 29,30
	stw 0,40(1)
	b .L88
.LVL123:
.L143:
.LBB3643:
	.loc 4 395 0 discriminator 1
	mr 3,31
	bl _ZNK8idEntity13GetTeamMasterEv
	cmpw 7,31,3
	beq- 7,.L86
.L84:
	.loc 4 391 0
	lwz 0,40(1)
	addic. 9,0,-1
	stw 9,40(1)
	beq- 0,.L142
.LVL124:
.L88:
	.loc 4 392 0
	lwzu 31,4(29)
.LVL125:
	.loc 4 394 0
	cmpwi 7,31,0
	beq- 7,.L84
	.loc 4 395 0
	mr 3,31
	bl _ZNK8idEntity13GetTeamMasterEv
.LVL126:
	cmpwi 7,3,0
	bne+ 7,.L143
.LVL127:
.L86:
	.loc 4 399 0
	addi 3,1,8
	mr 4,31
	bl _ZN10idSaveGame9AddObjectEPK7idClass
	.loc 4 398 0
	mr 3,31
	bl _ZNK8idEntity17GetNextTeamEntityEv
.LEHE4:
.LVL128:
	mr. 31,3
	bne+ 0,.L86
	.loc 4 391 0
	lwz 0,40(1)
	addic. 9,0,-1
	stw 9,40(1)
	bne+ 0,.L88
.LVL129:
.L142:
.LBB3596:
.LBB3597:
	.file 8 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/List.h"
	.loc 8 546 0
	lis 9,_ZN8idThread10threadListE@ha
	la 31,_ZN8idThread10threadListE@l(9)
	lwz 29,_ZN8idThread10threadListE@l(9)
	.loc 8 547 0
	lwz 3,4(31)
	.loc 8 550 0
	cmpwi 7,3,0
	bne- 7,.L89
.LVL130:
.LBE3597:
.LBE3596:
	.loc 4 407 0 discriminator 1
	cmpwi 7,29,0
	.loc 8 197 0 discriminator 1
	li 27,0
	.loc 4 407 0 discriminator 1
	ble- 7,.L91
.LVL131:
.L90:
	.loc 8 197 0
	li 31,0
.L93:
.LVL132:
	.loc 4 408 0
	slwi 0,31,2
	addi 3,1,8
	lwzx 4,27,0
.LEHB5:
	bl _ZN10idSaveGame9AddObjectEPK7idClass
	.loc 4 407 0
	addi 31,31,1
.LVL133:
	cmpw 7,31,29
	blt+ 7,.L93
.LVL134:
.L91:
	.loc 4 412 0
	addi 3,1,8
	bl _ZN10idSaveGame15WriteObjectListEv
	.loc 4 414 0
	addis 26,28,0x1
	addi 4,1,8
	addi 3,26,-32060
	bl _ZNK9idProgram4SaveEP10idSaveGame
.LBB3601:
.LBB3602:
	.loc 4 416 0
	lis 9,g_skill+44@ha
.LBE3602:
.LBE3601:
	addi 3,1,8
.LBB3604:
.LBB3603:
	.loc 7 143 0
	lwz 9,g_skill+44@l(9)
.LBE3603:
.LBE3604:
	.loc 4 416 0
	lwz 4,36(9)
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 418 0
	addi 3,1,8
	addi 4,28,4
	bl _ZN10idSaveGame9WriteDictEPK6idDict
	.loc 4 420 0
	lwz 4,48(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
.LVL135:
	.loc 4 421 0 discriminator 1
	lwz 0,48(28)
	cmpwi 7,0,0
	ble- 7,.L94
	.loc 4 421 0 is_stmt 0
	li 31,0
.LVL136:
.L95:
	.loc 4 422 0 is_stmt 1
	mulli 29,31,44
	addi 3,1,8
	add 4,28,29
	addi 4,4,52
	bl _ZN10idSaveGame9WriteDictEPK6idDict
	.loc 4 423 0
	addi 4,31,7
	addi 3,1,8
	slwi 4,4,5
	add 4,28,4
	addi 4,4,4
	bl _ZN10idSaveGame12WriteUsercmdERK9usercmd_t
	.loc 4 424 0
	add 4,28,29
	addi 3,1,8
	addi 4,4,356
	bl _ZN10idSaveGame9WriteDictEPK6idDict
	.loc 4 421 0
	lwz 0,48(28)
	addi 31,31,1
.LVL137:
	cmpw 7,0,31
	bgt+ 7,.L95
.LVL138:
.L94:
	li 0,4096
	stw 0,40(1)
.LVL139:
.L96:
	.loc 4 428 0
	lwzu 4,4(30)
	addi 3,1,8
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
	.loc 4 429 0
	lwz 4,16384(30)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 427 0
	lwz 0,40(1)
	addic. 9,0,-1
	stw 9,40(1)
	bne+ 0,.L96
	.loc 4 432 0
	lwz 4,-32236(26)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 433 0
	lwz 4,-32232(26)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 437 0
	lwz 4,-32200(26)
	addi 3,1,8
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
	.loc 4 4268 0
	lwz 11,-32196(26)
.LVL140:
.LBB3605:
.LBB3606:
	.file 9 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/LinkList.h"
	.loc 9 141 0
	li 4,0
	.loc 9 142 0
	lwz 9,4(11)
.LVL141:
	cmpw 7,11,9
	beq- 7,.L97
.LVL142:
.L98:
	lwz 9,4(9)
.LVL143:
	.loc 9 143 0
	addi 4,4,1
.LVL144:
	.loc 9 142 0
	cmpw 7,11,9
	bne+ 7,.L98
.LVL145:
.L97:
.LBE3606:
.LBE3605:
	.loc 4 439 0
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
.LVL146:
	.loc 4 4268 0
	lwz 9,-32192(26)
	lwz 0,-32196(26)
.LBB3607:
.LBB3608:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L99
.L138:
.LBE3608:
.LBE3607:
.LBB3610:
.LBB3611:
	cmpw 7,0,9
	beq- 7,.L99
.LBE3611:
.LBE3610:
.LBB3613:
.LBB3609:
	.loc 9 271 0
	lwz 31,12(9)
.LVL147:
.LBE3609:
.LBE3613:
	.loc 4 440 0
	cmpwi 7,31,0
	beq- 7,.L99
	.loc 4 441 0
	addi 3,1,8
	mr 4,31
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
.LVL148:
	.loc 4 4268 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBB3614:
.LBB3612:
	.loc 9 268 0
	cmpwi 7,9,0
	bne+ 7,.L138
.LVL149:
.L99:
.LBE3612:
.LBE3614:
	.loc 4 4268 0
	lwz 11,-32180(26)
.LVL150:
.LBB3615:
.LBB3616:
	.loc 9 141 0
	li 4,0
	.loc 9 142 0
	lwz 9,4(11)
.LVL151:
	cmpw 7,11,9
	beq- 7,.L101
.LVL152:
.L102:
	lwz 9,4(9)
.LVL153:
	.loc 9 143 0
	addi 4,4,1
.LVL154:
	.loc 9 142 0
	cmpw 7,11,9
	bne+ 7,.L102
.LVL155:
.L101:
.LBE3616:
.LBE3615:
	.loc 4 444 0
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
.LVL156:
	.loc 4 4268 0
	lwz 9,-32176(26)
	lwz 0,-32180(26)
.LBB3619:
.LBB3620:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L103
.L140:
.LBE3620:
.LBE3619:
.LBB3622:
.LBB3623:
	cmpw 7,0,9
	beq- 7,.L103
.LBE3623:
.LBE3622:
.LBB3625:
.LBB3621:
	.loc 9 271 0
	lwz 31,12(9)
.LVL157:
.LBE3621:
.LBE3625:
	.loc 4 445 0
	cmpwi 7,31,0
	beq- 7,.L103
	.loc 4 446 0
	addi 3,1,8
	mr 4,31
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
.LVL158:
	.loc 4 4268 0
	lwz 9,32(31)
	lwz 0,28(31)
.LBB3626:
.LBB3624:
	.loc 9 268 0
	cmpwi 7,9,0
	bne+ 7,.L140
.LVL159:
.L103:
.LBE3624:
.LBE3626:
	.loc 4 449 0
	lwz 4,-32164(26)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 450 0
	lbz 4,-32160(26)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 451 0
	lbz 4,-32159(26)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 452 0
	addi 3,1,8
	addi 4,26,-32156
	bl _ZN10idSaveGame9WriteDictEPK6idDict
.LBB3627:
.LBB3617:
	.loc 4 375 0
	li 0,12
.LBE3617:
.LBE3627:
	addi 31,26,-32116
.LBB3628:
.LBB3618:
	stw 0,40(1)
.L105:
.LBE3618:
.LBE3628:
	.loc 4 455 0
	lfsu 1,4(31)
	addi 3,1,8
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 454 0
	lwz 0,40(1)
	addic. 9,0,-1
	stw 9,40(1)
	bne+ 0,.L105
.LVL160:
	.loc 4 458 0
	lwz 4,-32064(26)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 459 0
	addis 9,28,0x23
	addi 3,1,8
	lwz 4,17268(9)
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
	.loc 4 465 0
	addis 28,28,0x25
.LVL161:
	li 0,0
	stw 0,1376(28)
	.loc 4 468 0
	addi 3,1,8
	.loc 4 466 0
	stw 0,1380(28)
.LVL162:
	.loc 4 468 0
	lwz 4,1388(28)
	bl _ZN10idSaveGame11WriteStringEPKc
.LVL163:
	.loc 4 472 0
	lwz 4,1980(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 473 0
	lwz 4,1984(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 474 0
	lwz 4,1988(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 475 0
	lbz 4,1992(28)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 476 0
	lbz 4,1993(28)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 478 0
	lbz 4,2016(28)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 479 0
	lwz 4,2012(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 481 0
	lwz 4,1996(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 482 0
	lwz 4,2000(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 483 0
	lwz 4,2004(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 485 0
	lwz 4,2008(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 487 0
	lwz 4,2052(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 488 0
	lbz 4,2017(28)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 489 0
	lbz 4,2018(28)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 491 0
	lwz 4,2020(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 495 0
	lwz 4,2040(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 496 0
	lbz 4,2044(28)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 497 0
	lfs 1,2048(28)
	addi 3,1,8
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 499 0
	lbz 4,2100(28)
	addi 3,1,8
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 500 0
	lwz 4,2104(28)
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 502 0
	lwz 0,2112(28)
	cmpwi 7,0,0
	beq- 7,.L144
	.loc 4 505 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
	lwz 9,0(3)
	lwz 0,100(9)
	mtctr 0
	bctrl
	mr 4,3
	addi 3,1,8
	bl _ZN10idSaveGame8WriteIntEi
	lis 30,gameRenderWorld@ha
	li 31,0
	la 30,gameRenderWorld@l(30)
	b .L108
.LVL164:
.L109:
	.loc 4 507 0
	lwz 9,2112(28)
	slwi 0,31,2
	addi 3,1,8
	lwzx 4,9,0
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
	.loc 4 506 0
	addi 31,31,1
.LVL165:
.L108:
	.loc 4 506 0 is_stmt 0 discriminator 1
	lwz 3,0(30)
	lwz 9,0(3)
	lwz 0,100(9)
	mtctr 0
	bctrl
	cmpw 7,31,3
	blt+ 7,.L109
.LVL166:
.L107:
	.loc 4 511 0 is_stmt 1
	lwz 4,2116(28)
	addi 3,1,8
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
	.loc 4 513 0
	lwz 4,2120(28)
	addi 3,1,8
	bl _ZN10idSaveGame13WriteMaterialEPK10idMaterial
.LVL167:
.LBB3629:
.LBB3630:
	.file 10 "d:/Data/Nintendo/DoomGX/src/game/Game_local.h"
	.loc 10 595 0
	lwz 4,2156(28)
	addi 3,1,8
.LVL168:
	bl _ZN10idSaveGame8WriteIntEi
.LVL169:
.LBE3630:
.LBE3629:
	.loc 4 516 0
	lwz 4,2160(28)
	addi 3,1,8
.LVL170:
	bl _ZN10idSaveGame8WriteIntEi
.LVL171:
	.loc 4 518 0
	addi 3,1,8
.LVL172:
	addi 4,28,2164
	bl _ZN10idSaveGame9WriteDictEPK6idDict
.LVL173:
	.loc 4 520 0
	lwz 4,2208(28)
	addi 3,1,8
.LVL174:
	bl _ZN10idSaveGame8WriteIntEi
.LVL175:
	.loc 4 521 0
	lwz 4,2212(28)
	addi 3,1,8
.LVL176:
	bl _ZN10idSaveGame8WriteIntEi
.LVL177:
	.loc 4 522 0
	lwz 4,2216(28)
	addi 3,1,8
.LVL178:
	bl _ZN10idSaveGame8WriteIntEi
.LVL179:
	.loc 4 523 0
	lwz 4,2220(28)
	addi 3,1,8
.LVL180:
	bl _ZN10idSaveGame8WriteIntEi
.LVL181:
	.loc 4 525 0
	addi 3,1,8
.LVL182:
	addi 4,28,2224
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
.LVL183:
	.loc 4 529 0
	lbz 4,2240(28)
	addi 3,1,8
.LVL184:
	bl _ZN10idSaveGame9WriteBoolEb
.LVL185:
	.loc 4 530 0
	lwz 4,2244(28)
	addi 3,1,8
.LVL186:
	bl _ZN10idSaveGame8WriteIntEi
.LVL187:
	.loc 4 540 0
	addi 3,1,8
.LVL188:
	bl _ZN7idEvent4SaveEP10idSaveGame
.LVL189:
	.loc 4 542 0
	addi 3,1,8
.LVL190:
	bl _ZN10idSaveGame5CloseEv
.LEHE5:
.LVL191:
.LBB3631:
.LBB3632:
.LBB3633:
.LBB3634:
	.loc 8 193 0
	cmpwi 7,27,0
	beq- 7,.L111
	.loc 8 194 0
	mr 3,27
	bl _ZdaPv
.L111:
.LBE3634:
.LBE3633:
.LBE3632:
.LBE3631:
	.loc 4 542 0 discriminator 1
	addi 3,1,8
.LVL192:
.LEHB6:
	bl _ZN10idSaveGameD1Ev
.LEHE6:
.LVL193:
.LBE3643:
	.loc 4 543 0 discriminator 1
	lwz 0,76(1)
	lwz 26,48(1)
.LVL194:
	mtlr 0
	lwz 27,52(1)
	lwz 28,56(1)
.LVL195:
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI65:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL196:
.L89:
.LCFI66:
	.cfi_restore_state
.LBB3644:
.LBB3635:
.LBB3598:
	.loc 8 551 0
	slwi 3,3,2
.LEHB7:
	bl _Znaj
.LEHE7:
	.loc 8 552 0
	cmpwi 7,29,0
	.loc 8 551 0
	mr 27,3
.LVL197:
	.loc 8 552 0
	ble- 7,.L91
.LBE3598:
.LBE3635:
.LBE3644:
	mtctr 29
.LBB3645:
.LBB3636:
.LBB3599:
	.loc 4 375 0
	addi 11,3,-4
.LBE3599:
.LBE3636:
.LBE3645:
	.loc 8 552 0
	li 9,0
.LVL198:
.L92:
.LBB3646:
.LBB3637:
.LBB3600:
	.loc 8 553 0
	lwz 10,12(31)
	slwi 0,9,2
	.loc 8 552 0
	addi 9,9,1
.LVL199:
	.loc 8 553 0
	lwzx 0,10,0
	stwu 0,4(11)
	.loc 8 552 0
	bdnz .L92
	b .L90
.LVL200:
.L144:
.LBE3600:
.LBE3637:
	.loc 4 503 0
	addi 3,1,8
	li 4,0
.LEHB8:
	bl _ZN10idSaveGame8WriteIntEi
.LEHE8:
	b .L107
.LVL201:
.L122:
.L141:
	mr 31,3
.LVL202:
.L115:
	.loc 4 542 0
	addi 3,1,8
	bl _ZN10idSaveGameD1Ev
	mr 3,31
.LEHB9:
	bl _Unwind_Resume
.LEHE9:
.LVL203:
.L121:
.LBB3638:
.LBB3639:
.LBB3640:
.LBB3641:
	.loc 8 193 0
	cmpwi 7,27,0
	mr 31,3
.LVL204:
	beq- 7,.L115
	.loc 8 194 0
	mr 3,27
	bl _ZdaPv
	b .L115
.LVL205:
.L120:
	b .L141
.LBE3641:
.LBE3640:
.LBE3639:
.LBE3638:
.LBE3646:
	.cfi_endproc
.LFE2842:
	.section	.gcc_except_table
.LLSDA2842:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2842-.LLSDACSB2842
.LLSDACSB2842:
	.uleb128 .LEHB3-.LFB2842
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2842
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L120-.LFB2842
	.uleb128 0
	.uleb128 .LEHB5-.LFB2842
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L121-.LFB2842
	.uleb128 0
	.uleb128 .LEHB6-.LFB2842
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2842
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L122-.LFB2842
	.uleb128 0
	.uleb128 .LEHB8-.LFB2842
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L121-.LFB2842
	.uleb128 0
	.uleb128 .LEHB9-.LFB2842
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2842:
	.section	".text"
	.size	_ZN11idGameLocal8SaveGameEP6idFile, .-_ZN11idGameLocal8SaveGameEP6idFile
	.align 2
	.globl _ZN11idGameLocal11SetUserInfoEiRK6idDictbb
	.type	_ZN11idGameLocal11SetUserInfoEiRK6idDictbb, @function
_ZN11idGameLocal11SetUserInfoEiRK6idDictbb:
.LFB2852:
	.loc 4 707 0
	.cfi_startproc
.LVL206:
.LBB3676:
	.loc 4 713 0
	cmplwi 7,4,3
.LBE3676:
	.loc 4 707 0
	stwu 1,-64(1)
.LCFI67:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 28,48(1)
.LBB3721:
	.loc 4 711 0
	addis 28,3,0x25
	.cfi_offset 28, -16
	.cfi_register 65, 0
.LBE3721:
	.loc 4 707 0
	stw 25,36(1)
.LBB3722:
	.loc 4 756 0
	li 25,0
	.cfi_offset 25, -28
.LBE3722:
	.loc 4 707 0
	stw 26,40(1)
	mr 26,7
	.cfi_offset 26, -24
	stw 29,52(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 30,56(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
	stw 19,12(1)
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 27,44(1)
.LBB3723:
	.loc 4 711 0
	stb 6,2018(28)
	.loc 4 713 0
	ble- 7,.L177
	.cfi_offset 27, -20
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 65, 4
.LVL207:
.L146:
.LBE3723:
	.loc 4 757 0
	lwz 0,68(1)
	mr 3,25
	lwz 19,12(1)
	mtlr 0
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
.LVL208:
	lwz 29,52(1)
	lwz 30,56(1)
.LVL209:
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI68:
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
.LVL210:
.L177:
.LCFI69:
	.cfi_restore_state
.LBB3724:
	.loc 4 714 0
	mulli 27,4,44
	mr 4,5
.LVL211:
	.loc 4 709 0
	li 20,0
	.loc 4 714 0
	add 27,3,27
	addi 27,27,52
	mr 3,27
.LVL212:
	bl _ZN6idDictaSERKS_
.LVL213:
	.loc 4 717 0
	cmpwi 7,26,0
	bne- 7,.L178
.LVL214:
.L147:
	.loc 4 741 0
	addi 25,30,132
	slwi 25,25,2
	add 25,31,25
	lwz 3,4(25)
	cmpwi 7,3,0
	beq- 7,.L161
.LVL215:
.LBB3677:
.LBB3678:
	.loc 5 340 0 discriminator 1
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL216:
.LBE3678:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB3683:
.LBB3679:
.LBB3680:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L179
.LVL217:
.L161:
.LBE3680:
.LBE3679:
.LBE3683:
.LBE3677:
	.loc 4 745 0
	cmpwi 7,29,0
	beq- 7,.L180
.L160:
	.loc 4 751 0
	cmpwi 7,20,0
	.loc 4 756 0
	li 25,0
	.loc 4 751 0
	beq- 7,.L146
	.loc 4 753 0
	addis 31,31,0x27
.LVL218:
	mr 4,27
	addi 25,31,-9932
	mr 3,25
	bl _ZN6idDictaSERKS_
	.loc 4 754 0
	b .L146
.LVL219:
.L179:
.LBB3685:
.LBB3684:
.LBB3682:
.LBB3681:
	.loc 5 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L161
.LBE3681:
.LBE3682:
.LBE3684:
.LBE3685:
	.loc 4 742 0 discriminator 4
	lwz 3,4(25)
.LVL220:
	mr 4,26
	bl _ZN8idPlayer15UserInfoChangedEb
	or 20,3,20
.LVL221:
	rlwinm 20,20,0,0xff
.LVL222:
	b .L161
.LVL223:
.L178:
.LBB3686:
.LBB3687:
	.file 11 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Dict.h"
	.loc 11 241 0
	lis 25,.LC4@ha
	mr 3,27
	la 25,.LC4@l(25)
	mr 4,25
	bl _ZNK6idDict7FindKeyEPKc
.LVL224:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L164
.LVL225:
.LBB3688:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL226:
.L148:
.LBE3688:
.LBE3687:
.LBE3686:
	.loc 4 720 0
	bl _ZN5idStr9IsNumericEPKc
	.loc 4 709 0
	li 20,0
	.loc 4 720 0
	cmpwi 7,3,0
	bne- 7,.L181
.LVL227:
.L149:
	.loc 4 726 0 discriminator 1
	lwz 0,48(31)
	cmpwi 7,0,0
	ble- 7,.L147
	.loc 4 732 0
	lis 23,.LC5@ha
	.loc 4 726 0
	li 21,0
.LBB3690:
	.loc 4 4268 0
	lis 24,_ZN8idPlayer4TypeE@ha
.LBE3690:
	.loc 4 732 0
	la 23,.LC5@l(23)
.LBB3695:
.LBB3696:
	.loc 11 245 0
	lis 22,.LC3@ha
	b .L158
.LVL228:
.L151:
.LBE3696:
.LBE3695:
	.loc 4 730 0
	addi 9,21,132
	slwi 9,9,2
	add 9,31,9
	lwz 3,4(9)
	cmpwi 7,3,0
	beq- 7,.L153
.LVL229:
.LBB3700:
.LBB3691:
	.loc 5 340 0 discriminator 1
	lwz 9,0(3)
.LVL230:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL231:
.LBE3691:
	.loc 4 4268 0 discriminator 1
	la 9,_ZN8idPlayer4TypeE@l(24)
	lwz 0,56(3)
.LBB3694:
.LBB3692:
.LBB3693:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L176
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L176
.LVL232:
.LBE3693:
.LBE3692:
.LBE3694:
.LBE3700:
.LBB3701:
.LBB3702:
	.loc 11 241 0 is_stmt 1 discriminator 4
	mr 3,27
.LVL233:
	mr 4,25
	bl _ZNK6idDict7FindKeyEPKc
.LVL234:
	.loc 11 242 0 discriminator 4
	cmpwi 0,3,0
	beq- 0,.L167
.LVL235:
.LBB3703:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 19,4(9)
.LVL236:
.L154:
.LBE3703:
.LBE3702:
.LBE3701:
	.loc 4 731 0
	mulli 3,21,44
.LVL237:
.LBB3705:
.LBB3706:
	.loc 11 241 0
	mr 4,25
.LBE3706:
.LBE3705:
	.loc 4 731 0
	add 3,31,3
.LBB3710:
.LBB3708:
	.loc 11 241 0
	addi 3,3,52
	bl _ZNK6idDict7FindKeyEPKc
.LVL238:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L168
.LVL239:
.LBB3707:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL240:
.L155:
.LBE3707:
.LBE3708:
.LBE3710:
	.loc 4 731 0
	mr 3,19
.LVL241:
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L156
	lwz 0,48(31)
	addi 21,21,1
.LVL242:
.L152:
	.loc 4 726 0
	cmpw 7,21,0
	bge- 7,.L147
.LVL243:
.L158:
	.loc 4 727 0
	cmpw 7,21,30
	bne+ 7,.L151
.L153:
	.loc 4 754 0
	addi 21,21,1
	b .L152
.LVL244:
.L176:
	lwz 0,48(31)
	addi 21,21,1
	b .L152
.LVL245:
.L180:
	.loc 4 747 0
	addi 3,28,1416
	mr 4,30
	bl _ZN17idMultiplayerGame9EnterGameEi
	b .L160
.LVL246:
.L156:
.LBB3711:
.LBB3698:
	.loc 11 241 0
	mr 3,27
	mr 4,25
	bl _ZNK6idDict7FindKeyEPKc
.LVL247:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L169
.LVL248:
.LBB3697:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL249:
.L157:
.LBE3697:
.LBE3698:
.LBE3711:
	.loc 4 732 0
	mr 3,23
.LVL250:
	.loc 4 735 0
	li 21,0
.LVL251:
	.loc 4 732 0
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,25
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL252:
	.loc 4 733 0
	li 20,1
	lwz 0,48(31)
	.loc 4 735 0
	b .L152
.LVL253:
.L169:
.LBB3712:
.LBB3699:
	.loc 11 245 0
	la 4,.LC3@l(22)
	b .L157
.LVL254:
.L181:
.LBE3699:
.LBE3712:
.LBB3713:
.LBB3714:
	.loc 11 241 0
	mr 3,27
	mr 4,25
	bl _ZNK6idDict7FindKeyEPKc
.LVL255:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L166
.LVL256:
.LBB3715:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL257:
.L150:
.LBE3715:
.LBE3714:
.LBE3713:
	.loc 4 721 0
	lis 3,.LC5@ha
.LVL258:
	.loc 4 722 0
	li 20,1
	.loc 4 721 0
	la 3,.LC5@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,25
	mr 5,3
	mr 3,27
	bl _ZN6idDict3SetEPKcS1_
.LVL259:
	b .L149
.LVL260:
.L168:
.LBB3717:
.LBB3709:
	.loc 11 245 0
	la 4,.LC3@l(22)
	b .L155
.LVL261:
.L167:
.LBE3709:
.LBE3717:
.LBB3718:
.LBB3704:
	la 19,.LC3@l(22)
	b .L154
.LVL262:
.L164:
.LBE3704:
.LBE3718:
.LBB3719:
.LBB3689:
	lis 3,.LC3@ha
.LVL263:
	la 3,.LC3@l(3)
	b .L148
.LVL264:
.L166:
.LBE3689:
.LBE3719:
.LBB3720:
.LBB3716:
	lis 4,.LC3@ha
	la 4,.LC3@l(4)
	b .L150
.LBE3716:
.LBE3720:
.LBE3724:
	.cfi_endproc
.LFE2852:
	.size	_ZN11idGameLocal11SetUserInfoEiRK6idDictbb, .-_ZN11idGameLocal11SetUserInfoEiRK6idDictbb
	.align 2
	.globl GetGameAPI
	.type	GetGameAPI, @function
GetGameAPI:
.LFB2810:
	.loc 4 88 0
	.cfi_startproc
.LVL265:
	mflr 0
	stwu 1,-8(1)
.LCFI70:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 89 0
	lis 3,.LC6@ha
.LVL266:
	la 3,.LC6@l(3)
	.loc 4 88 0
	stw 0,12(1)
	.loc 4 89 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 91 0
	lwz 0,12(1)
	li 3,0
	addi 1,1,8
.LCFI71:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2810:
	.size	GetGameAPI, .-GetGameAPI
	.align 2
	.globl _Z11TestGameAPIv
	.type	_Z11TestGameAPIv, @function
_Z11TestGameAPIv:
.LFB2811:
	.loc 4 102 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI72:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 103 0
	lis 3,.LC7@ha
	la 3,.LC7@l(3)
	.loc 4 102 0
	stw 0,12(1)
	.loc 4 103 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 104 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI73:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2811:
	.size	_Z11TestGameAPIv, .-_Z11TestGameAPIv
	.section	.text._ZN6idClipD2Ev,"axG",@progbits,_ZN6idClipD5Ev,comdat
	.align 2
	.weak	_ZN6idClipD2Ev
	.type	_ZN6idClipD2Ev, @function
_ZN6idClipD2Ev:
.LFB2817:
	.file 12 "d:/Data/Nintendo/DoomGX/src/game/physics/Clip.h"
	.loc 12 248 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2817
.LVL267:
	stwu 1,-16(1)
.LCFI74:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB3726:
	addi 3,3,172
.LVL268:
.LBE3726:
	stw 0,20(1)
	stw 30,8(1)
.LEHB10:
.LBB3727:
	.loc 12 248 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN11idClipModelD1Ev
.LEHE10:
	.loc 12 248 0 is_stmt 0 discriminator 1
	addi 3,31,32
.LEHB11:
	bl _ZN11idClipModelD1Ev
.LEHE11:
.LBE3727:
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL269:
	addi 1,1,16
	.cfi_remember_state
.LCFI75:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL270:
.L187:
.LCFI76:
	.cfi_restore_state
	mr 30,3
.LBB3728:
	.loc 12 248 0
	addi 3,31,32
	bl _ZN11idClipModelD1Ev
	mr 3,30
.LEHB12:
	bl _Unwind_Resume
.LEHE12:
.LBE3728:
	.cfi_endproc
.LFE2817:
	.section	.gcc_except_table
.LLSDA2817:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2817-.LLSDACSB2817
.LLSDACSB2817:
	.uleb128 .LEHB10-.LFB2817
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L187-.LFB2817
	.uleb128 0
	.uleb128 .LEHB11-.LFB2817
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB2817
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE2817:
	.section	.text._ZN6idClipD2Ev,"axG",@progbits,_ZN6idClipD5Ev,comdat
	.size	_ZN6idClipD2Ev, .-_ZN6idClipD2Ev
	.section	.text._ZN17idMultiplayerGameD2Ev,"axG",@progbits,_ZN17idMultiplayerGameD5Ev,comdat
	.align 2
	.weak	_ZN17idMultiplayerGameD2Ev
	.type	_ZN17idMultiplayerGameD2Ev, @function
_ZN17idMultiplayerGameD2Ev:
.LFB2829:
	.file 13 "d:/Data/Nintendo/DoomGX/src/game/MultiplayerGame.h"
	.loc 13 95 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2829
.LVL271:
	stwu 1,-24(1)
.LCFI77:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
.LBB3754:
	addic. 30,3,308
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE3754:
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 31,20(1)
.LBB3779:
	addi 31,3,488
	.cfi_offset 31, -4
.LBE3779:
	stw 0,28(1)
.LBB3780:
	.loc 13 95 0
	beq- 0,.L189
	.cfi_offset 65, 4
.LVL272:
.L190:
.LBB3755:
.LBB3756:
.LBB3757:
	.loc 13 76 0 discriminator 4
	addi 31,31,-36
.LVL273:
.LBB3758:
.LBB3759:
.LBB3760:
	.file 14 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Str.h"
	.loc 14 501 0 discriminator 4
	mr 3,31
.LEHB13:
	bl _ZN5idStr8FreeDataEv
.LEHE13:
.LBE3760:
.LBE3759:
.LBE3758:
.LBE3757:
.LBE3756:
.LBE3755:
	.loc 13 95 0 discriminator 3
	cmpw 7,30,31
	bne+ 7,.L190
.LVL274:
.L189:
.LBB3761:
.LBB3762:
.LBB3763:
	.loc 14 501 0 discriminator 2
	addi 3,29,236
.LEHB14:
	bl _ZN5idStr8FreeDataEv
.LEHE14:
.LVL275:
.LBE3763:
.LBE3762:
.LBE3761:
.LBB3764:
.LBB3765:
.LBB3766:
	.loc 14 501 0 is_stmt 0 discriminator 6
	addi 3,29,160
.LEHB15:
	bl _ZN5idStr8FreeDataEv
.LEHE15:
.LVL276:
.LBE3766:
.LBE3765:
.LBE3764:
.LBB3767:
.LBB3768:
.LBB3769:
	.loc 14 501 0 discriminator 7
	addi 3,29,128
.LEHB16:
	bl _ZN5idStr8FreeDataEv
.LEHE16:
.LBE3769:
.LBE3768:
.LBE3767:
.LBE3780:
	.loc 13 95 0 is_stmt 1 discriminator 7
	lwz 0,28(1)
	lwz 29,12(1)
.LVL277:
	mtlr 0
	lwz 30,16(1)
.LVL278:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI78:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL279:
.L203:
.LCFI79:
	.cfi_restore_state
	mr 31,3
.LVL280:
.LBB3781:
.LBB3770:
.LBB3771:
.LBB3772:
	.loc 14 501 0
	addi 3,29,236
	bl _ZN5idStr8FreeDataEv
.LVL281:
.L199:
.LBE3772:
.LBE3771:
.LBE3770:
.LBB3773:
.LBB3774:
.LBB3775:
	addi 3,29,160
	bl _ZN5idStr8FreeDataEv
.LVL282:
.L201:
.LBE3775:
.LBE3774:
.LBE3773:
.LBB3776:
.LBB3777:
.LBB3778:
	addi 3,29,128
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB17:
	bl _Unwind_Resume
.LEHE17:
.LVL283:
.L205:
	mr 31,3
	b .L201
.LVL284:
.L204:
	mr 31,3
	b .L199
.LBE3778:
.LBE3777:
.LBE3776:
.LBE3781:
	.cfi_endproc
.LFE2829:
	.section	.gcc_except_table
.LLSDA2829:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2829-.LLSDACSB2829
.LLSDACSB2829:
	.uleb128 .LEHB13-.LFB2829
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L203-.LFB2829
	.uleb128 0
	.uleb128 .LEHB14-.LFB2829
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L204-.LFB2829
	.uleb128 0
	.uleb128 .LEHB15-.LFB2829
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L205-.LFB2829
	.uleb128 0
	.uleb128 .LEHB16-.LFB2829
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2829
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2829:
	.section	.text._ZN17idMultiplayerGameD2Ev,"axG",@progbits,_ZN17idMultiplayerGameD5Ev,comdat
	.size	_ZN17idMultiplayerGameD2Ev, .-_ZN17idMultiplayerGameD2Ev
	.section	".text"
	.align 2
	.globl _ZNK11idGameLocal6PrintfEPKcz
	.type	_ZNK11idGameLocal6PrintfEPKcz, @function
_ZNK11idGameLocal6PrintfEPKcz:
.LFB2845:
	.loc 4 576 0
	.cfi_startproc
.LVL285:
	mflr 0
	stwu 1,-1136(1)
.LCFI80:
	.cfi_def_cfa_offset 1136
	.cfi_register 65, 0
	stw 5,1048(1)
	stw 0,1140(1)
	stw 6,1052(1)
	stw 7,1056(1)
	stw 8,1060(1)
	stw 9,1064(1)
	stw 10,1068(1)
	bne- 1,.L208
	.cfi_offset 65, 4
	.loc 4 576 0
	stfd 1,1072(1)
	stfd 2,1080(1)
	stfd 3,1088(1)
	stfd 4,1096(1)
	stfd 5,1104(1)
	stfd 6,1112(1)
	stfd 7,1120(1)
	stfd 8,1128(1)
.L208:
.LBB3782:
	.loc 4 580 0
	li 0,2
.LBE3782:
	.loc 4 576 0
	mr 5,4
.LBB3783:
	.loc 4 580 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,1144
	.loc 4 581 0
	addi 6,1,8
	.loc 4 580 0
	stw 0,12(1)
	.loc 4 581 0
	li 4,1024
.LVL286:
	.loc 4 580 0
	addi 0,1,1040
	.loc 4 581 0
	addi 3,1,20
.LVL287:
	.loc 4 580 0
	stw 0,16(1)
	.loc 4 581 0
	bl _ZN5idStr9vsnPrintfEPciPKcP13__va_list_tag
.LVL288:
	.loc 4 584 0
	lis 9,common@ha
	lwz 3,common@l(9)
	lis 4,.LC8@ha
	addi 5,1,20
	la 4,.LC8@l(4)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LBE3783:
	.loc 4 585 0
	lwz 0,1140(1)
	addi 1,1,1136
.LCFI81:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2845:
	.size	_ZNK11idGameLocal6PrintfEPKcz, .-_ZNK11idGameLocal6PrintfEPKcz
	.align 2
	.globl _ZNK11idGameLocal7DPrintfEPKcz
	.type	_ZNK11idGameLocal7DPrintfEPKcz, @function
_ZNK11idGameLocal7DPrintfEPKcz:
.LFB2846:
	.loc 4 592 0
	.cfi_startproc
.LVL289:
	mflr 0
	stwu 1,-1136(1)
.LCFI82:
	.cfi_def_cfa_offset 1136
	.cfi_register 65, 0
	stw 5,1048(1)
	stw 0,1140(1)
	stw 6,1052(1)
	stw 7,1056(1)
	stw 8,1060(1)
	stw 9,1064(1)
	stw 10,1068(1)
	bne- 1,.L210
	.cfi_offset 65, 4
	.loc 4 592 0
	stfd 1,1072(1)
	stfd 2,1080(1)
	stfd 3,1088(1)
	stfd 4,1096(1)
	stfd 5,1104(1)
	stfd 6,1112(1)
	stfd 7,1120(1)
	stfd 8,1128(1)
.L210:
.LBB3784:
.LBB3785:
.LBB3786:
	.loc 4 596 0
	lis 9,developer+44@ha
.LBE3786:
.LBE3785:
.LBE3784:
	.loc 4 592 0
	mr 5,4
.LBB3789:
.LBB3788:
.LBB3787:
	.loc 7 142 0
	lwz 9,developer+44@l(9)
.LBE3787:
.LBE3788:
	.loc 4 596 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L209
	.loc 4 600 0
	li 0,2
	.loc 4 601 0
	li 4,1024
.LVL290:
	.loc 4 600 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,1144
	stw 0,12(1)
	.loc 4 601 0
	addi 3,1,20
.LVL291:
	.loc 4 600 0
	addi 0,1,1040
	.loc 4 601 0
	addi 6,1,8
	.loc 4 600 0
	stw 0,16(1)
	.loc 4 601 0
	bl _ZN5idStr9vsnPrintfEPciPKcP13__va_list_tag
.LVL292:
	.loc 4 604 0
	lis 9,common@ha
	lis 4,.LC8@ha
	lwz 3,common@l(9)
	la 4,.LC8@l(4)
	addi 5,1,20
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.L209:
.LBE3789:
	.loc 4 605 0
	lwz 0,1140(1)
	addi 1,1,1136
.LCFI83:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2846:
	.size	_ZNK11idGameLocal7DPrintfEPKcz, .-_ZNK11idGameLocal7DPrintfEPKcz
	.align 2
	.globl _ZNK11idGameLocal7WarningEPKcz
	.type	_ZNK11idGameLocal7WarningEPKcz, @function
_ZNK11idGameLocal7WarningEPKcz:
.LFB2847:
	.loc 4 612 0
	.cfi_startproc
.LVL293:
	mflr 0
	stwu 1,-1136(1)
.LCFI84:
	.cfi_def_cfa_offset 1136
	.cfi_register 65, 0
	stw 5,1048(1)
	stw 0,1140(1)
	stw 6,1052(1)
	stw 7,1056(1)
	stw 8,1060(1)
	stw 9,1064(1)
	stw 10,1068(1)
	bne- 1,.L213
	.cfi_offset 65, 4
	.loc 4 612 0
	stfd 1,1072(1)
	stfd 2,1080(1)
	stfd 3,1088(1)
	stfd 4,1096(1)
	stfd 5,1104(1)
	stfd 6,1112(1)
	stfd 7,1120(1)
	stfd 8,1128(1)
.L213:
.LBB3790:
	.loc 4 617 0
	li 0,2
.LBE3790:
	.loc 4 612 0
	mr 5,4
.LBB3791:
	.loc 4 617 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,1144
	.loc 4 618 0
	li 4,1024
.LVL294:
	addi 6,1,8
	.loc 4 617 0
	stw 0,12(1)
	.loc 4 618 0
	addi 3,1,20
.LVL295:
	.loc 4 617 0
	addi 0,1,1040
	stw 0,16(1)
	.loc 4 618 0
	bl _ZN5idStr9vsnPrintfEPciPKcP13__va_list_tag
.LVL296:
	.loc 4 621 0
	bl _ZN8idThread13CurrentThreadEv
.LVL297:
	.loc 4 622 0
	cmpwi 7,3,0
	beq- 7,.L214
	.loc 4 623 0
	lis 4,.LC8@ha
	addi 5,1,20
	la 4,.LC8@l(4)
	crxor 6,6,6
	bl _ZNK8idThread7WarningEPKcz
.LVL298:
.LBE3791:
	.loc 4 627 0
	lwz 0,1140(1)
	addi 1,1,1136
	.cfi_remember_state
.LCFI85:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL299:
.L214:
.LCFI86:
	.cfi_restore_state
.LBB3792:
	.loc 4 625 0
	lis 9,common@ha
	lis 4,.LC8@ha
	lwz 3,common@l(9)
.LVL300:
	addi 5,1,20
	la 4,.LC8@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LBE3792:
	.loc 4 627 0
	lwz 0,1140(1)
	addi 1,1,1136
.LCFI87:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2847:
	.size	_ZNK11idGameLocal7WarningEPKcz, .-_ZNK11idGameLocal7WarningEPKcz
	.align 2
	.globl _ZNK11idGameLocal8DWarningEPKcz
	.type	_ZNK11idGameLocal8DWarningEPKcz, @function
_ZNK11idGameLocal8DWarningEPKcz:
.LFB2848:
	.loc 4 634 0
	.cfi_startproc
.LVL301:
	mflr 0
	stwu 1,-1136(1)
.LCFI88:
	.cfi_def_cfa_offset 1136
	.cfi_register 65, 0
	stw 5,1048(1)
	stw 0,1140(1)
	stw 6,1052(1)
	stw 7,1056(1)
	stw 8,1060(1)
	stw 9,1064(1)
	stw 10,1068(1)
	bne- 1,.L217
	.cfi_offset 65, 4
	.loc 4 634 0
	stfd 1,1072(1)
	stfd 2,1080(1)
	stfd 3,1088(1)
	stfd 4,1096(1)
	stfd 5,1104(1)
	stfd 6,1112(1)
	stfd 7,1120(1)
	stfd 8,1128(1)
.L217:
.LBB3793:
.LBB3794:
.LBB3795:
	.loc 4 639 0
	lis 9,developer+44@ha
.LBE3795:
.LBE3794:
.LBE3793:
	.loc 4 634 0
	mr 5,4
.LBB3798:
.LBB3797:
.LBB3796:
	.loc 7 142 0
	lwz 9,developer+44@l(9)
.LBE3796:
.LBE3797:
	.loc 4 639 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L220
.LVL302:
.L216:
.LBE3798:
	.loc 4 653 0
	lwz 0,1140(1)
	addi 1,1,1136
	.cfi_remember_state
.LCFI89:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL303:
.L220:
.LCFI90:
	.cfi_restore_state
.LBB3799:
	.loc 4 643 0
	li 0,2
	.loc 4 644 0
	li 4,1024
.LVL304:
	.loc 4 643 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,1144
	.loc 4 644 0
	addi 6,1,8
	.loc 4 643 0
	stw 0,12(1)
	.loc 4 644 0
	addi 3,1,20
.LVL305:
	.loc 4 643 0
	addi 0,1,1040
	stw 0,16(1)
	.loc 4 644 0
	bl _ZN5idStr9vsnPrintfEPciPKcP13__va_list_tag
.LVL306:
	.loc 4 647 0
	bl _ZN8idThread13CurrentThreadEv
.LVL307:
	.loc 4 648 0
	cmpwi 7,3,0
	beq- 7,.L219
	.loc 4 649 0
	lis 4,.LC8@ha
	addi 5,1,20
	la 4,.LC8@l(4)
	crxor 6,6,6
	bl _ZNK8idThread7WarningEPKcz
.LVL308:
.LBE3799:
	.loc 4 653 0
	lwz 0,1140(1)
	addi 1,1,1136
	.cfi_remember_state
.LCFI91:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL309:
.L219:
.LCFI92:
	.cfi_restore_state
.LBB3800:
	.loc 4 651 0
	lis 9,common@ha
	lis 4,.LC8@ha
	lwz 3,common@l(9)
.LVL310:
	la 4,.LC8@l(4)
	addi 5,1,20
	lwz 9,0(3)
	lwz 0,84(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	b .L216
.LBE3800:
	.cfi_endproc
.LFE2848:
	.size	_ZNK11idGameLocal8DWarningEPKcz, .-_ZNK11idGameLocal8DWarningEPKcz
	.align 2
	.globl _ZNK11idGameLocal5ErrorEPKcz
	.type	_ZNK11idGameLocal5ErrorEPKcz, @function
_ZNK11idGameLocal5ErrorEPKcz:
.LFB2849:
	.loc 4 660 0
	.cfi_startproc
.LVL311:
	mflr 0
	stwu 1,-1136(1)
.LCFI93:
	.cfi_def_cfa_offset 1136
	.cfi_register 65, 0
	stw 5,1048(1)
	stw 0,1140(1)
	stw 6,1052(1)
	stw 7,1056(1)
	stw 8,1060(1)
	stw 9,1064(1)
	stw 10,1068(1)
	bne- 1,.L222
	.cfi_offset 65, 4
	.loc 4 660 0
	stfd 1,1072(1)
	stfd 2,1080(1)
	stfd 3,1088(1)
	stfd 4,1096(1)
	stfd 5,1104(1)
	stfd 6,1112(1)
	stfd 7,1120(1)
	stfd 8,1128(1)
.L222:
.LBB3801:
	.loc 4 665 0
	li 0,2
.LBE3801:
	.loc 4 660 0
	mr 5,4
.LBB3802:
	.loc 4 665 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,1144
	.loc 4 666 0
	li 4,1024
.LVL312:
	addi 6,1,8
	.loc 4 665 0
	stw 0,12(1)
	.loc 4 666 0
	addi 3,1,20
.LVL313:
	.loc 4 665 0
	addi 0,1,1040
	stw 0,16(1)
	.loc 4 666 0
	bl _ZN5idStr9vsnPrintfEPciPKcP13__va_list_tag
.LVL314:
	.loc 4 669 0
	bl _ZN8idThread13CurrentThreadEv
.LVL315:
	.loc 4 670 0
	cmpwi 7,3,0
	beq- 7,.L223
	.loc 4 671 0
	lis 4,.LC8@ha
	addi 5,1,20
	la 4,.LC8@l(4)
	crxor 6,6,6
	bl _ZNK8idThread5ErrorEPKcz
.LVL316:
.LBE3802:
	.loc 4 675 0
	lwz 0,1140(1)
	addi 1,1,1136
	.cfi_remember_state
.LCFI94:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL317:
.L223:
.LCFI95:
	.cfi_restore_state
.LBB3803:
	.loc 4 673 0
	lis 9,common@ha
	lis 4,.LC8@ha
	lwz 3,common@l(9)
.LVL318:
	addi 5,1,20
	la 4,.LC8@l(4)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LBE3803:
	.loc 4 675 0
	lwz 0,1140(1)
	addi 1,1,1136
.LCFI96:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2849:
	.size	_ZNK11idGameLocal5ErrorEPKcz, .-_ZNK11idGameLocal5ErrorEPKcz
	.align 2
	.globl _Z9gameErrorPKcz
	.type	_Z9gameErrorPKcz, @function
_Z9gameErrorPKcz:
.LFB2850:
	.loc 4 682 0
	.cfi_startproc
.LVL319:
	mflr 0
	stwu 1,-1144(1)
.LCFI97:
	.cfi_def_cfa_offset 1144
	.cfi_register 65, 0
	stw 4,1052(1)
	stw 0,1148(1)
	stw 5,1056(1)
	stw 6,1060(1)
	stw 7,1064(1)
	stw 8,1068(1)
	stw 9,1072(1)
	stw 10,1076(1)
	bne- 1,.L226
	.cfi_offset 65, 4
	.loc 4 682 0
	stfd 1,1080(1)
	stfd 2,1088(1)
	stfd 3,1096(1)
	stfd 4,1104(1)
	stfd 5,1112(1)
	stfd 6,1120(1)
	stfd 7,1128(1)
	stfd 8,1136(1)
.L226:
.LBB3804:
	.loc 4 686 0
	li 0,1
.LBE3804:
	.loc 4 682 0
	mr 5,3
.LBB3805:
	.loc 4 686 0
	stb 0,8(1)
	li 0,0
	stb 0,9(1)
	addi 0,1,1152
	.loc 4 687 0
	addi 6,1,8
	.loc 4 686 0
	stw 0,12(1)
	.loc 4 687 0
	li 4,1024
	.loc 4 686 0
	addi 0,1,1048
	.loc 4 687 0
	addi 3,1,20
.LVL320:
	.loc 4 686 0
	stw 0,16(1)
	.loc 4 687 0
	bl _ZN5idStr9vsnPrintfEPciPKcP13__va_list_tag
.LVL321:
	.loc 4 690 0
	lis 3,.LANCHOR0@ha
	lis 4,.LC8@ha
	addi 5,1,20
	la 3,.LANCHOR0@l(3)
	la 4,.LC8@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LBE3805:
	.loc 4 691 0
	lwz 0,1148(1)
	addi 1,1,1144
.LCFI98:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2850:
	.size	_Z9gameErrorPKcz, .-_Z9gameErrorPKcz
	.align 2
	.globl _ZN11idGameLocal8MapClearEb
	.type	_ZN11idGameLocal8MapClearEb, @function
_ZN11idGameLocal8MapClearEb:
.LFB2864:
	.loc 4 1409 0
	.cfi_startproc
.LVL322:
	stwu 1,-48(1)
.LCFI99:
	.cfi_def_cfa_offset 48
	mfcr 12
.LBB3842:
	.loc 4 1412 0
	cmpwi 4,4,0
.LBE3842:
	.loc 4 1409 0
	mflr 0
	stw 31,44(1)
.LBB3915:
	.loc 4 1412 0
	mfcr 31
	rlwinm 31,31,19,1
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.cfi_register 70, 12
.LBE3915:
	.loc 4 1409 0
	stw 30,40(1)
	stw 0,52(1)
.LBB3916:
	.loc 4 1412 0
	slwi 31,31,2
.LVL323:
.LBE3916:
	.loc 4 1409 0
	stw 23,12(1)
.LBB3917:
	addi 30,31,131
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	.cfi_offset 30, -8
.LBE3917:
	stw 24,16(1)
.LBB3918:
	slwi 30,30,2
.LBE3918:
	stw 25,20(1)
.LBB3919:
	add 30,3,30
.LBE3919:
	stw 26,24(1)
	stw 27,28(1)
.LBB3920:
	addi 30,30,4
.LBE3920:
	stw 12,8(1)
	stw 28,32(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 70, -40
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	stw 29,36(1)
.LBB3921:
	.loc 4 1417 0
	li 29,-1
	.cfi_offset 29, -12
.LVL324:
.L230:
	.loc 4 1413 0
	lwzu 9,4(30)
	.loc 4 1412 0
	addi 31,31,1
.LVL325:
	.loc 4 1413 0
	cmpwi 7,9,0
	mr 3,9
	beq- 7,.L229
	.loc 4 1413 0 is_stmt 0 discriminator 1
	lwz 9,0(9)
	lwz 0,8(9)
	mtctr 0
	bctrl
.L229:
.LVL326:
	.loc 4 1412 0 is_stmt 1
	cmpwi 7,31,4095
	.loc 4 1417 0
	stw 29,16384(30)
	.loc 4 1412 0
	ble+ 7,.L230
	.loc 4 1420 0
	addis 30,28,0x1
	addi 24,30,-32228
.LVL327:
.LBB3843:
.LBB3844:
	.file 15 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/HashIndex.h"
	.loc 15 341 0
	mr 3,24
	bl _ZN11idHashIndex4FreeEv
	.loc 15 342 0
	li 0,1024
	stw 0,-32228(30)
	.loc 15 343 0
	li 0,4096
	stw 0,-32220(30)
.LBE3844:
.LBE3843:
	.loc 4 1422 0
	bne- 4,.L231
.LBB3845:
.LBB3846:
	.loc 15 197 0
	lis 23,_ZN11idHashIndex13INVALID_INDEXE@ha
.LBE3846:
.LBE3845:
	.loc 4 1409 0
	addi 26,28,528
	li 27,1
	li 29,0
.LBB3853:
.LBB3847:
	.loc 15 197 0
	la 23,_ZN11idHashIndex13INVALID_INDEXE@l(23)
.LVL328:
.L238:
.LBE3847:
.LBE3853:
	.loc 4 1425 0
	lwzu 9,4(26)
	cmpwi 7,9,0
	beq- 7,.L232
	.loc 4 4268 0
	lwz 11,72(9)
.LVL329:
.LBB3854:
.LBB3855:
.LBB3856:
.LBB3857:
	.loc 14 976 0
	li 31,0
	lbz 0,0(11)
	cmpwi 7,0,0
	beq- 7,.L233
.LBE3857:
.LBE3856:
.LBE3855:
.LBE3854:
	.loc 4 1409 0
	li 9,119
.LVL330:
.L234:
.LBB3863:
.LBB3860:
.LBB3859:
.LBB3858:
	.loc 14 977 0
	mullw 10,0,9
	.loc 14 976 0
	lbzu 0,1(11)
	addi 9,9,1
	cmpwi 7,0,0
	.loc 14 977 0
	add 31,31,10
.LVL331:
	.loc 14 976 0
	bne+ 7,.L234
.LVL332:
.L233:
.LBE3858:
.LBE3859:
.LBE3860:
.LBE3863:
.LBB3864:
.LBB3848:
	.loc 15 197 0
	lwz 9,-32224(30)
.LBE3848:
.LBE3864:
.LBB3865:
.LBB3861:
	.loc 15 381 0
	lwz 25,-32208(30)
.LVL333:
.LBE3861:
.LBE3865:
.LBB3866:
.LBB3849:
	.loc 15 197 0
	cmpw 7,9,23
	beq- 7,.L260
	.loc 15 200 0
	lwz 11,-32220(30)
	mr 0,25
	cmpw 7,29,11
	blt+ 7,.L237
	.loc 15 201 0
	mr 3,24
	mr 4,27
	bl _ZN11idHashIndex11ResizeIndexEi
.LVL334:
	lwz 0,-32208(30)
	lwz 9,-32224(30)
.L237:
.LVL335:
.LBE3849:
.LBE3866:
.LBB3867:
.LBB3862:
	.loc 15 381 0
	and 31,31,25
.LVL336:
.LBE3862:
.LBE3867:
.LBB3868:
.LBB3850:
	.loc 15 204 0
	lwz 11,-32216(30)
	.loc 15 203 0
	and 0,31,0
.LVL337:
	.loc 15 204 0
	slwi 0,0,2
.LVL338:
	lwzx 10,9,0
	slwi 9,29,2
	stwx 10,11,9
	.loc 15 205 0
	lwz 9,-32224(30)
	stwx 29,9,0
.LVL339:
.L232:
.LBE3850:
.LBE3868:
	.loc 4 1424 0
	cmpwi 7,29,3
.LBB3869:
.LBB3851:
	.loc 15 205 0
	addi 27,27,1
.LBE3851:
.LBE3869:
	.loc 4 1424 0
	addi 29,29,1
	bne+ 7,.L238
.L231:
	.loc 4 1432 0
	addis 31,28,0x23
	lwz 3,17268(31)
	cmpwi 7,3,0
	beq- 7,.L239
	.loc 4 1432 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
.L239:
	.loc 4 1433 0 is_stmt 1
	li 0,0
	.loc 4 1435 0
	addis 28,28,0x25
.LVL340:
	.loc 4 1433 0
	stw 0,17268(31)
	.loc 4 1435 0
	lwz 30,1976(28)
	cmpwi 7,30,0
	beq- 7,.L240
.LVL341:
.LBB3870:
.LBB3871:
.LBB3872:
.LBB3873:
.LBB3874:
.LBB3875:
	.loc 8 193 0
	lwz 3,32(30)
	cmpwi 7,3,0
	beq- 7,.L241
	.loc 8 194 0
	bl _ZdaPv
.LVL342:
.L241:
.LBE3875:
.LBE3874:
.LBE3873:
.LBE3872:
.LBB3882:
.LBB3883:
.LBB3884:
.LBB3885:
	.loc 8 193 0
	lwz 3,16(30)
.LBE3885:
.LBE3884:
.LBE3883:
.LBE3882:
.LBB3907:
.LBB3880:
.LBB3878:
.LBB3876:
	.loc 8 197 0
	li 0,0
	stw 0,32(30)
.LBE3876:
.LBE3878:
.LBE3880:
.LBE3907:
.LBB3908:
.LBB3904:
.LBB3901:
.LBB3898:
	.loc 8 193 0
	cmpwi 7,3,0
.LBE3898:
.LBE3901:
.LBE3904:
.LBE3908:
.LBB3909:
.LBB3881:
.LBB3879:
.LBB3877:
	.loc 8 198 0
	stw 0,20(30)
	.loc 8 199 0
	stw 0,24(30)
.LVL343:
.LBE3877:
.LBE3879:
.LBE3881:
.LBE3909:
.LBB3910:
.LBB3905:
.LBB3902:
.LBB3899:
	.loc 8 193 0
	beq- 7,.L243
	.loc 8 194 0
	lwz 9,-4(3)
	mulli 9,9,36
	add 9,3,9
	cmpw 7,3,9
	beq- 7,.L244
.L258:
.LBB3886:
.LBB3887:
.LBB3888:
.LBB3889:
.LBB3890:
.LBB3891:
	.loc 14 501 0
	addi 3,9,-32
.LBE3891:
.LBE3890:
.LBE3889:
.LBE3888:
.LBE3887:
.LBE3886:
	.loc 8 194 0
	addi 31,9,-36
.LVL344:
.LBB3897:
.LBB3896:
.LBB3895:
.LBB3894:
.LBB3893:
.LBB3892:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LVL345:
.LBE3892:
.LBE3893:
.LBE3894:
.LBE3895:
.LBE3896:
.LBE3897:
	.loc 8 194 0
	lwz 3,16(30)
	mr 9,31
	cmpw 7,3,31
	bne+ 7,.L258
.LVL346:
.L244:
	addi 3,3,-4
	bl _ZdaPv
.L243:
	.loc 8 197 0
	li 31,0
.LBE3899:
.LBE3902:
.LBE3905:
.LBE3910:
.LBE3871:
.LBE3870:
	.loc 4 1436 0
	mr 3,30
.LBB3913:
.LBB3912:
.LBB3911:
.LBB3906:
.LBB3903:
.LBB3900:
	.loc 8 197 0
	stw 31,16(30)
	.loc 8 198 0
	stw 31,4(30)
	.loc 8 199 0
	stw 31,8(30)
.LBE3900:
.LBE3903:
.LBE3906:
.LBE3911:
.LBE3912:
.LBE3913:
	.loc 4 1436 0
	bl _ZdlPv
	.loc 4 1437 0
	stw 31,1976(28)
.LVL347:
.L240:
	.loc 4 1440 0
	lwz 3,2112(28)
	cmpwi 7,3,0
	beq- 7,.L251
	.loc 4 1440 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L251:
	.loc 4 1441 0 is_stmt 1
	li 0,0
	stw 0,2112(28)
.LBE3921:
	.loc 4 1442 0
	lwz 0,52(1)
	lwz 12,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
.LVL348:
	mtcrf 8,12
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
.LVL349:
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI100:
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
	blr
.LVL350:
.L260:
.LCFI101:
	.cfi_restore_state
.LBB3922:
.LBB3914:
.LBB3852:
	.loc 15 198 0
	lwz 5,-32220(30)
	lwz 4,-32228(30)
	cmpw 7,29,5
	blt- 7,.L236
	mr 5,27
.L236:
	mr 3,24
	bl _ZN11idHashIndex8AllocateEii
.LVL351:
	lwz 0,-32208(30)
	lwz 9,-32224(30)
	b .L237
.LBE3852:
.LBE3914:
.LBE3922:
	.cfi_endproc
.LFE2864:
	.size	_ZN11idGameLocal8MapClearEb, .-_ZN11idGameLocal8MapClearEb
	.align 2
	.globl _ZN11idGameLocal11MapShutdownEv
	.type	_ZN11idGameLocal11MapShutdownEv, @function
_ZN11idGameLocal11MapShutdownEv:
.LFB2868:
	.loc 4 1449 0
	.cfi_startproc
.LVL352:
	stwu 1,-24(1)
.LCFI102:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 4 1450 0
	lis 4,.LC9@ha
	.loc 4 1449 0
	stw 29,12(1)
	.loc 4 1450 0
	la 4,.LC9@l(4)
	.loc 4 1454 0
	lis 29,gameRenderWorld@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 4 1449 0
	stw 0,28(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,20(1)
	.loc 4 1450 0
	.cfi_offset 31, -4
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL353:
	.loc 4 1454 0
	lwz 3,gameRenderWorld@l(29)
	.loc 4 1452 0
	addis 31,30,0x25
	li 0,4
	.loc 4 1454 0
	cmpwi 7,3,0
	.loc 4 1452 0
	stw 0,2236(31)
	.loc 4 1454 0
	beq- 7,.L262
	.loc 4 1456 0
	lwz 9,0(3)
	li 4,0
	lwz 0,152(9)
	mtctr 0
	bctrl
	.loc 4 1457 0
	lwz 3,gameRenderWorld@l(29)
	li 4,0
	lwz 9,0(3)
	lwz 0,196(9)
	mtctr 0
	bctrl
.L262:
	.loc 4 1461 0
	lbz 0,1992(31)
	cmpwi 7,0,0
	beq- 7,.L263
	.loc 4 1462 0
	li 0,0
	stw 0,2116(31)
	.loc 4 1463 0
	stb 0,1992(31)
.L263:
	.loc 4 1466 0
	mr 3,30
	li 4,1
	bl _ZN11idGameLocal8MapClearEb
	.loc 4 1469 0
	addis 3,30,0x1
	addi 3,3,-32060
	bl _ZN9idProgram7RestartEv
	.loc 4 1471 0
	lwz 3,1972(31)
	cmpwi 7,3,0
	beq- 7,.L264
	.loc 4 1472 0
	bl _ZN16idSmokeParticles8ShutdownEv
.L264:
	.loc 4 1475 0
	addi 3,31,1236
	bl _ZN5idPVS8ShutdownEv
	.loc 4 1477 0
	addis 3,30,0x23
	addi 3,3,17272
	bl _ZN6idClip8ShutdownEv
	.loc 4 1478 0
	bl _ZN11idClipModel20ClearTraceModelCacheEv
	.loc 4 1480 0
	mr 3,30
	bl _ZN11idGameLocal20ShutdownAsyncNetworkEv
.LVL354:
.LBB3923:
.LBB3924:
	.loc 14 746 0
	addi 3,31,2064
	bl _ZN5idStr8FreeDataEv
.LVL355:
.LBB3925:
.LBB3926:
	.loc 14 358 0
	addi 9,31,2076
	stw 9,2068(31)
	.loc 14 356 0
	li 0,0
.LBE3926:
.LBE3925:
.LBE3924:
.LBE3923:
	.loc 4 1487 0
	li 9,1
.LBB3939:
.LBB3935:
.LBB3931:
.LBB3927:
	.loc 14 357 0
	li 11,20
.LBE3927:
.LBE3931:
.LBE3935:
.LBE3939:
	.loc 4 1487 0
	stw 9,2236(31)
	.loc 4 1485 0
	lis 9,gameSoundWorld@ha
.LBB3940:
.LBB3936:
.LBB3932:
.LBB3928:
	.loc 14 356 0
	stw 0,2064(31)
.LBE3928:
.LBE3932:
.LBE3936:
.LBE3940:
	.loc 4 1489 0
	mr 3,30
.LBB3941:
.LBB3937:
.LBB3933:
.LBB3929:
	.loc 14 357 0
	stw 11,2072(31)
.LBE3929:
.LBE3933:
.LBE3937:
.LBE3941:
	.loc 4 1489 0
	lis 4,.LC10@ha
.LBB3942:
.LBB3938:
.LBB3934:
.LBB3930:
	.loc 14 359 0
	stb 0,2076(31)
.LBE3930:
.LBE3934:
.LBE3938:
.LBE3942:
	.loc 4 1489 0
	la 4,.LC10@l(4)
	.loc 4 1484 0
	stw 0,gameRenderWorld@l(29)
	.loc 4 1485 0
	stw 0,gameSoundWorld@l(9)
	.loc 4 1490 0
	lwz 0,28(1)
	lwz 29,12(1)
	lwz 30,16(1)
.LVL356:
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
.LCFI103:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.loc 4 1489 0
	crxor 6,6,6
	b _ZNK11idGameLocal6PrintfEPKcz
.LVL357:
.LVL358:
.LVL359:
	.cfi_endproc
.LFE2868:
	.size	_ZN11idGameLocal11MapShutdownEv, .-_ZN11idGameLocal11MapShutdownEv
	.align 2
	.globl _ZN11idGameLocal13DumpOggSoundsEv
	.type	_ZN11idGameLocal13DumpOggSoundsEv, @function
_ZN11idGameLocal13DumpOggSoundsEv:
.LFB2869:
	.loc 4 1497 0
	.cfi_startproc
.LVL360:
	mflr 0
	stwu 1,-8(1)
.LCFI104:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 1498 0
	lis 3,.LC11@ha
.LVL361:
	la 3,.LC11@l(3)
	.loc 4 1497 0
	stw 0,12(1)
	.loc 4 1498 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 1499 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI105:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2869:
	.size	_ZN11idGameLocal13DumpOggSoundsEv, .-_ZN11idGameLocal13DumpOggSoundsEv
	.align 2
	.globl _ZN11idGameLocal14GetShakeSoundsEPK6idDict
	.type	_ZN11idGameLocal14GetShakeSoundsEPK6idDict, @function
_ZN11idGameLocal14GetShakeSoundsEPK6idDict:
.LFB2870:
	.loc 4 1507 0
	.cfi_startproc
.LVL362:
	mflr 0
	stwu 1,-8(1)
.LCFI106:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 1508 0
	lis 3,.LC12@ha
.LVL363:
	la 3,.LC12@l(3)
	.loc 4 1507 0
	stw 0,12(1)
	.loc 4 1508 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL364:
	.loc 4 1509 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI107:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2870:
	.size	_ZN11idGameLocal14GetShakeSoundsEPK6idDict, .-_ZN11idGameLocal14GetShakeSoundsEPK6idDict
	.align 2
	.globl _ZN11idGameLocal16InitScriptForMapEv
	.type	_ZN11idGameLocal16InitScriptForMapEv, @function
_ZN11idGameLocal16InitScriptForMapEv:
.LFB2872:
	.loc 4 1683 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2872
.LVL365:
	stwu 1,-24(1)
.LCFI108:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBB3943:
	.loc 4 1685 0
	li 3,7068
.LVL366:
.LBE3943:
	.loc 4 1683 0
	stw 31,20(1)
	stw 0,28(1)
	stw 29,12(1)
.LEHB18:
.LBB3948:
	.loc 4 1685 0
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl _ZN7idClassnwEj
.LEHE18:
	mr 31,3
.LEHB19:
	bl _ZN8idThreadC1Ev
.LEHE19:
	.loc 4 1685 0 is_stmt 0 discriminator 1
	addis 29,30,0x23
	.loc 4 1686 0 is_stmt 1 discriminator 1
	mr 3,31
	.loc 4 1685 0 discriminator 1
	stw 31,17268(29)
.LEHB20:
	.loc 4 1686 0 discriminator 1
	bl _ZN8idThread12ManualDeleteEv
	.loc 4 1687 0 discriminator 1
	lwz 3,17268(29)
	lis 4,.LC13@ha
	la 4,.LC13@l(4)
	bl _ZN8idThread13SetThreadNameEPKc
	.loc 4 1690 0 discriminator 1
	addis 3,30,0x1
	lis 4,.LC14@ha
	addi 3,3,-32060
	la 4,.LC14@l(4)
	bl _ZNK9idProgram12FindFunctionEPKc
.LVL367:
.LBB3944:
	.loc 4 1691 0 discriminator 1
	mr. 30,3
.LVL368:
	beq- 0,.L267
.LBB3945:
	.loc 4 1692 0
	li 3,7068
.LVL369:
	bl _ZN7idClassnwEj
.LEHE20:
	mr 4,30
	mr 31,3
.LEHB21:
	bl _ZN8idThreadC1EPK10function_t
.LEHE21:
.LVL370:
	.loc 4 1693 0 discriminator 1
	mr 3,31
.LEHB22:
	bl _ZN8idThread5StartEv
	cmpwi 7,3,0
	beq- 7,.L267
	.loc 4 1695 0
	cmpwi 7,31,0
	beq- 7,.L267
	.loc 4 1695 0 is_stmt 0 discriminator 1
	lwz 9,0(31)
	mr 3,31
	lwz 0,8(9)
	mtctr 0
	bctrl
.LEHE22:
.LVL371:
.L267:
.LBE3945:
.LBE3944:
.LBE3948:
	.loc 4 1698 0 is_stmt 1
	lwz 0,28(1)
	lwz 29,12(1)
.LVL372:
	mtlr 0
	lwz 30,16(1)
.LVL373:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI109:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL374:
.L272:
.LCFI110:
	.cfi_restore_state
	mr 30,3
.LVL375:
.LBB3949:
.LBB3947:
.LBB3946:
	.loc 4 1692 0
	mr 3,31
	bl _ZN7idClassdlEPv
	mr 3,30
.LEHB23:
	bl _Unwind_Resume
.LEHE23:
.LVL376:
.L271:
	mr 30,3
.LVL377:
.LBE3946:
.LBE3947:
	.loc 4 1685 0
	mr 3,31
	bl _ZN7idClassdlEPv
	mr 3,30
.LEHB24:
	bl _Unwind_Resume
.LEHE24:
.LBE3949:
	.cfi_endproc
.LFE2872:
	.section	.gcc_except_table
.LLSDA2872:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2872-.LLSDACSB2872
.LLSDACSB2872:
	.uleb128 .LEHB18-.LFB2872
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2872
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L271-.LFB2872
	.uleb128 0
	.uleb128 .LEHB20-.LFB2872
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB2872
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L272-.LFB2872
	.uleb128 0
	.uleb128 .LEHB22-.LFB2872
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB2872
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB2872
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE2872:
	.section	".text"
	.size	_ZN11idGameLocal16InitScriptForMapEv, .-_ZN11idGameLocal16InitScriptForMapEv
	.align 2
	.globl _ZNK11idGameLocal14GetClientByNumEi
	.type	_ZNK11idGameLocal14GetClientByNumEi, @function
_ZNK11idGameLocal14GetClientByNumEi:
.LFB2874:
	.loc 4 1736 0
	.cfi_startproc
.LVL378:
	.loc 4 1737 0
	cmpwi 0,4,0
	blt- 0,.L275
	.loc 4 1737 0 is_stmt 0 discriminator 1
	lwz 0,48(3)
	cmpw 7,4,0
	.loc 4 1738 0 is_stmt 1 discriminator 1
	mfcr 0
	rlwinm 0,0,29,1
	neg 0,0
	and 4,4,0
.LVL379:
	.loc 4 1740 0 discriminator 1
	addi 4,4,132
.LVL380:
	slwi 4,4,2
.LVL381:
	add 3,3,4
.LVL382:
	.loc 4 1744 0 discriminator 1
	lwz 3,4(3)
	blr
.LVL383:
.L275:
	.loc 4 1738 0
	li 4,0
.LVL384:
	.loc 4 1740 0
	addi 4,4,132
.LVL385:
	slwi 4,4,2
.LVL386:
	add 3,3,4
.LVL387:
	.loc 4 1744 0
	lwz 3,4(3)
	blr
	.cfi_endproc
.LFE2874:
	.size	_ZNK11idGameLocal14GetClientByNumEi, .-_ZNK11idGameLocal14GetClientByNumEi
	.align 2
	.globl _ZNK11idGameLocal15GetClientByNameEPKc
	.type	_ZNK11idGameLocal15GetClientByNameEPKc, @function
_ZNK11idGameLocal15GetClientByNameEPKc:
.LFB2875:
	.loc 4 1751 0
	.cfi_startproc
.LVL388:
	mflr 0
	stwu 1,-40(1)
.LCFI111:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 26,16(1)
	mr 26,4
	.cfi_offset 26, -24
	stw 28,24(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 31,36(1)
.LBB3959:
	.loc 4 1762 0
	li 31,0
	.cfi_offset 31, -4
.LBE3959:
	.loc 4 1751 0
	stw 0,44(1)
	stw 24,8(1)
	stw 25,12(1)
	stw 27,20(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB3977:
	.loc 4 1754 0
	lwz 0,48(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L278
.LBB3960:
.LBB3961:
	.loc 11 241 0
	lis 25,.LC4@ha
.LBE3961:
.LBE3960:
	.loc 4 1751 0
	addi 29,3,528
.LBE3977:
	.loc 4 1754 0
	li 30,0
.LBB3978:
.LBB3967:
	.loc 4 4268 0
	lis 27,_ZN8idPlayer4TypeE@ha
.LBE3967:
.LBB3972:
.LBB3963:
	.loc 11 241 0
	la 25,.LC4@l(25)
	.loc 11 245 0
	lis 24,.LC3@ha
.LVL389:
.L281:
.LBE3963:
.LBE3972:
	.loc 4 1755 0
	lwzu 31,4(29)
.LVL390:
	.loc 4 1756 0
	cmpwi 7,31,0
	beq- 7,.L282
.LVL391:
.LBB3973:
.LBB3968:
	.loc 5 340 0 discriminator 1
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL392:
.LBE3968:
	.loc 4 4268 0 discriminator 1
	la 9,_ZN8idPlayer4TypeE@l(27)
	lwz 0,56(3)
.LBB3971:
.LBB3969:
.LBB3970:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L290
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L290
.LVL393:
.LBE3970:
.LBE3969:
.LBE3971:
.LBE3973:
	.loc 4 1757 0 is_stmt 1 discriminator 4
	mulli 3,30,44
.LVL394:
.LBB3974:
.LBB3964:
	.loc 11 241 0 discriminator 4
	mr 4,25
.LBE3964:
.LBE3974:
	.loc 4 1757 0 discriminator 4
	add 3,28,3
.LBB3975:
.LBB3965:
	.loc 11 241 0 discriminator 4
	addi 3,3,52
	bl _ZNK6idDict7FindKeyEPKc
.LVL395:
	.loc 11 242 0 discriminator 4
	cmpwi 0,3,0
	beq- 0,.L284
.LVL396:
.LBB3962:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL397:
.L280:
.LBE3962:
.LBE3965:
.LBE3975:
	.loc 4 1757 0
	mr 3,26
.LVL398:
	bl _ZN5idStr11IcmpNoColorEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L278
.LVL399:
.L290:
	lwz 0,48(28)
.LVL400:
.L282:
	.loc 4 1754 0
	addi 30,30,1
.LVL401:
	cmpw 7,0,30
	bgt+ 7,.L281
	.loc 4 1762 0
	li 31,0
.LVL402:
.L278:
.LBE3978:
	.loc 4 1763 0
	lwz 0,44(1)
	mr 3,31
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
.LVL403:
	lwz 27,20(1)
	lwz 28,24(1)
.LVL404:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI112:
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
.LVL405:
.L284:
.LCFI113:
	.cfi_restore_state
.LBB3979:
.LBB3976:
.LBB3966:
	.loc 11 245 0
	la 4,.LC3@l(24)
	b .L280
.LBE3966:
.LBE3976:
.LBE3979:
	.cfi_endproc
.LFE2875:
	.size	_ZNK11idGameLocal15GetClientByNameEPKc, .-_ZNK11idGameLocal15GetClientByNameEPKc
	.align 2
	.globl _ZNK11idGameLocal18GetClientByCmdArgsERK9idCmdArgs
	.type	_ZNK11idGameLocal18GetClientByCmdArgsERK9idCmdArgs, @function
_ZNK11idGameLocal18GetClientByCmdArgsERK9idCmdArgs:
.LFB2876:
	.loc 4 1770 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2876
.LVL406:
	mflr 0
	stwu 1,-56(1)
.LCFI114:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 30,48(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,60(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 31,52(1)
.LBB4000:
.LBB4001:
.LBB4002:
	.file 16 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/CmdArgs.h"
	.loc 16 50 0
	lwz 0,0(4)
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	cmpwi 7,0,1
	ble- 7,.L292
.LVL407:
	lwz 28,8(4)
.LVL408:
.LBE4002:
.LBE4001:
.LBB4003:
.LBB4004:
.LBB4005:
.LBB4006:
	.loc 14 357 0
	li 9,20
	.loc 14 356 0
	li 0,0
	.loc 14 357 0
	stw 9,16(1)
.LBE4006:
.LBE4005:
	.loc 14 412 0
	cmpwi 7,28,0
.LBB4009:
.LBB4007:
	.loc 14 358 0
	addi 9,1,20
	.loc 14 356 0
	stw 0,8(1)
	.loc 14 358 0
	stw 9,12(1)
	.loc 14 359 0
	stb 0,20(1)
.LBE4007:
.LBE4009:
	.loc 14 412 0
	beq- 7,.L301
	.loc 4 1770 0
	mr 3,28
.LVL409:
	addi 31,1,8
	bl strlen
.LVL410:
	addi 4,3,1
	mr 29,3
.LVL411:
.LBB4010:
.LBB4011:
	.loc 14 350 0
	cmpwi 7,4,20
	bgt- 7,.L307
.LVL412:
.L294:
.LBE4011:
.LBE4010:
	.loc 14 415 0
	lwz 3,12(1)
	mr 4,28
	bl strcpy
.LBE4004:
.LBE4003:
	.loc 4 1773 0
	cmpwi 7,29,0
.LBB4018:
.LBB4015:
	.loc 14 416 0
	stw 29,8(1)
.LBE4015:
.LBE4018:
	.loc 4 1773 0
	beq- 7,.L302
.LBB4019:
.LBB4020:
	.loc 14 855 0
	lwz 3,12(1)
.LEHB25:
	bl _ZN5idStr9IsNumericEPKc
.LBE4020:
.LBE4019:
	.loc 4 1777 0
	cmpwi 7,3,0
	beq- 7,.L295
	.loc 4 1778 0
	lwz 3,12(1)
	bl atoi
.LVL413:
.LBB4021:
.LBB4022:
	.loc 4 1737 0
	cmpwi 0,3,0
	blt- 0,.L303
	lwz 0,48(30)
	cmpw 7,3,0
	.loc 4 1738 0
	mfcr 0
	rlwinm 0,0,29,1
	neg 0,0
	and 3,3,0
.LVL414:
.L296:
	.loc 4 1740 0
	addi 3,3,132
.LVL415:
	slwi 3,3,2
.LVL416:
	add 30,30,3
.LVL417:
	lwz 30,4(30)
	cmpwi 7,30,0
	bne+ 7,.L293
.L297:
.LBE4022:
.LBE4021:
	.loc 4 1783 0
	lis 9,common@ha
	lis 4,.LC15@ha
	lwz 3,common@l(9)
	la 4,.LC15@l(4)
	lwz 5,12(1)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.L302:
	.loc 4 1774 0
	li 30,0
	b .L293
.LVL418:
.L295:
	.loc 4 1780 0
	lwz 4,12(1)
	mr 3,30
	bl _ZNK11idGameLocal15GetClientByNameEPKc
.LEHE25:
.LVL419:
	.loc 4 1782 0
	mr. 30,3
.LVL420:
	beq- 0,.L297
.LVL421:
.L293:
.LBB4024:
.LBB4025:
.LBB4026:
	.loc 14 501 0
	mr 3,31
.LEHB26:
	bl _ZN5idStr8FreeDataEv
.LBE4026:
.LBE4025:
.LBE4024:
.LBE4000:
	.loc 4 1786 0
	lwz 0,60(1)
	mr 3,30
	lwz 28,40(1)
	mtlr 0
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL422:
	addi 1,1,56
	.cfi_remember_state
.LCFI115:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL423:
.L307:
.LCFI116:
	.cfi_restore_state
.LBB4036:
.LBB4029:
.LBB4016:
.LBB4013:
.LBB4012:
	.loc 14 351 0
	mr 3,31
.LVL424:
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LVL425:
	b .L294
.LVL426:
.L292:
.LBE4012:
.LBE4013:
.LBB4014:
.LBB4008:
	.loc 14 357 0
	li 9,20
	.loc 14 356 0
	li 0,0
	.loc 14 357 0
	stw 9,16(1)
	.loc 16 50 0
	lis 28,.LC3@ha
	.loc 14 358 0
	addi 9,1,20
	.loc 14 356 0
	stw 0,8(1)
	.loc 14 358 0
	stw 9,12(1)
	.loc 14 359 0
	li 29,0
	stb 0,20(1)
.LVL427:
	.loc 16 50 0
	la 28,.LC3@l(28)
	addi 31,1,8
.LVL428:
	b .L294
.LVL429:
.L303:
.LBE4008:
.LBE4014:
.LBE4016:
.LBE4029:
.LBB4030:
.LBB4023:
	.loc 4 1738 0
	li 3,0
.LVL430:
	b .L296
.LVL431:
.L301:
	addi 31,1,8
.LVL432:
.LBE4023:
.LBE4030:
.LBB4031:
.LBB4017:
	.loc 4 1774 0
	li 30,0
.LVL433:
.LBE4017:
.LBE4031:
.LBB4032:
.LBB4028:
.LBB4027:
	.loc 14 501 0
	mr 3,31
.LVL434:
	bl _ZN5idStr8FreeDataEv
.LEHE26:
.LVL435:
.LBE4027:
.LBE4028:
.LBE4032:
.LBE4036:
	.loc 4 1786 0
	lwz 0,60(1)
	mr 3,30
	lwz 28,40(1)
.LVL436:
	mtlr 0
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI117:
	.cfi_def_cfa_offset 0
	blr
.LVL437:
.L305:
.LCFI118:
	.cfi_restore_state
	mr 30,3
.LVL438:
.LBB4037:
.LBB4033:
.LBB4034:
.LBB4035:
	.loc 14 501 0
	mr 3,31
	bl _ZN5idStr8FreeDataEv
	mr 3,30
.LEHB27:
	bl _Unwind_Resume
.LEHE27:
.LBE4035:
.LBE4034:
.LBE4033:
.LBE4037:
	.cfi_endproc
.LFE2876:
	.section	.gcc_except_table
.LLSDA2876:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2876-.LLSDACSB2876
.LLSDACSB2876:
	.uleb128 .LEHB25-.LFB2876
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L305-.LFB2876
	.uleb128 0
	.uleb128 .LEHB26-.LFB2876
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB2876
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE2876:
	.section	".text"
	.size	_ZNK11idGameLocal18GetClientByCmdArgsERK9idCmdArgs, .-_ZNK11idGameLocal18GetClientByCmdArgsERK9idCmdArgs
	.align 2
	.globl _ZNK11idGameLocal16GetNextClientNumEi
	.type	_ZNK11idGameLocal16GetNextClientNumEi, @function
_ZNK11idGameLocal16GetNextClientNumEi:
.LFB2877:
	.loc 4 1793 0
	.cfi_startproc
.LVL439:
	mflr 0
	stwu 1,-32(1)
.LCFI119:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 28,16(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,20(1)
.LBB4038:
	.loc 4 1796 0
	li 29,0
	.cfi_offset 29, -12
.LBE4038:
	.loc 4 1793 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 27,12(1)
	stw 30,24(1)
.LBB4047:
	.loc 4 1797 0
	lwz 0,48(3)
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L309
	li 30,1
.LBB4039:
	.loc 4 4268 0
	lis 27,_ZN8idPlayer4TypeE@ha
.LVL440:
.L311:
.LBE4039:
	.loc 4 1793 0
	add 9,30,28
	.loc 4 1798 0
	divw 29,9,0
	mullw 29,29,0
	subf 29,29,9
.LVL441:
	.loc 4 1799 0
	addi 9,29,132
	slwi 9,9,2
	add 9,31,9
	lwz 9,4(9)
	cmpwi 7,9,0
.LBB4045:
.LBB4040:
	.loc 5 340 0
	mr 3,9
.LBE4040:
.LBE4045:
	.loc 4 1799 0
	beq- 7,.L310
.LVL442:
.LBB4046:
.LBB4043:
	.loc 5 340 0 discriminator 1
	lwz 9,0(9)
.LVL443:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL444:
.LBE4043:
	.loc 4 4268 0 discriminator 1
	la 9,_ZN8idPlayer4TypeE@l(27)
	lwz 0,56(3)
.LBB4044:
.LBB4041:
.LBB4042:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L317
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L317
.LVL445:
.L309:
.LBE4042:
.LBE4041:
.LBE4044:
.LBE4046:
.LBE4047:
	.loc 4 1805 0 is_stmt 1
	lwz 0,36(1)
	mr 3,29
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL446:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL447:
	addi 1,1,32
	.cfi_remember_state
.LCFI120:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL448:
.L317:
.LCFI121:
	.cfi_restore_state
	lwz 0,48(31)
.LVL449:
.L310:
.LBB4048:
	.loc 4 1797 0
	cmpw 7,0,30
	addi 30,30,1
.LVL450:
	bgt+ 7,.L311
.LBE4048:
	.loc 4 1805 0
	lwz 0,36(1)
	mr 3,29
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL451:
	lwz 29,20(1)
	lwz 30,24(1)
.LVL452:
	lwz 31,28(1)
.LVL453:
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI122:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2877:
	.size	_ZNK11idGameLocal16GetNextClientNumEi, .-_ZNK11idGameLocal16GetNextClientNumEi
	.align 2
	.globl _ZNK11idGameLocal14GetLocalPlayerEv
	.type	_ZNK11idGameLocal14GetLocalPlayerEv, @function
_ZNK11idGameLocal14GetLocalPlayerEv:
.LFB2878:
	.loc 4 1817 0
	.cfi_startproc
.LVL454:
	mflr 0
	stwu 1,-24(1)
.LCFI123:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	.loc 4 1818 0
	addis 29,3,0x25
	.cfi_offset 29, -12
	.loc 4 1817 0
	stw 30,16(1)
	.loc 4 1819 0
	li 30,0
	.cfi_offset 30, -8
	.loc 4 1817 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	.loc 4 1818 0
	lwz 9,2020(29)
	cmpwi 7,9,0
	blt- 7,.L319
	.cfi_offset 65, 4
	.loc 4 1822 0
	addi 9,9,132
	slwi 9,9,2
	add 9,3,9
	lwz 3,4(9)
.LVL455:
	cmpwi 7,3,0
	beq- 7,.L319
.LVL456:
.LBB4049:
.LBB4050:
	.loc 5 340 0 discriminator 2
	lwz 9,0(3)
.LVL457:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL458:
.LBE4050:
	.loc 4 4268 0 discriminator 2
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB4053:
.LBB4051:
.LBB4052:
	.loc 5 311 0 discriminator 2
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L319
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L319
.LBE4052:
.LBE4051:
.LBE4053:
.LBE4049:
	.loc 4 1826 0 is_stmt 1
	lwz 9,2020(29)
	addi 0,9,132
	slwi 0,0,2
	add 31,31,0
.LVL459:
	lwz 30,4(31)
.LVL460:
.L319:
	.loc 4 1827 0
	lwz 0,28(1)
	mr 3,30
	lwz 29,12(1)
.LVL461:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI124:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2878:
	.size	_ZNK11idGameLocal14GetLocalPlayerEv, .-_ZNK11idGameLocal14GetLocalPlayerEv
	.align 2
	.globl _ZN11idGameLocal9HandleESCEPP15idUserInterface
	.type	_ZN11idGameLocal9HandleESCEPP15idUserInterface, @function
_ZN11idGameLocal9HandleESCEPP15idUserInterface:
.LFB2890:
	.loc 4 2347 0
	.cfi_startproc
.LVL462:
	mflr 0
	stwu 1,-16(1)
.LCFI125:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB4058:
	.loc 4 2348 0
	addis 11,3,0x25
.LBE4058:
	.loc 4 2347 0
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4059:
	.loc 4 2348 0
	lbz 0,2016(11)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L325
	.loc 4 2349 0
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	bctrl
.LVL463:
	.loc 4 2351 0
	li 0,2
	.loc 4 2349 0
	stw 3,0(31)
.L326:
.LBE4059:
	.loc 4 2362 0
	mr 3,0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL464:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI126:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL465:
.L325:
.LCFI127:
	.cfi_restore_state
.LBB4060:
.LBB4061:
.LBB4062:
	.loc 4 2353 0
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL466:
	.loc 4 2361 0
	li 0,1
	.loc 4 2354 0
	cmpwi 7,3,0
	beq- 7,.L326
	.loc 4 2355 0
	bl _ZN8idPlayer9HandleESCEv
.LVL467:
.LBE4062:
.LBE4061:
.LBE4060:
	.loc 4 2362 0
	lwz 31,12(1)
.LVL468:
.LBB4065:
.LBB4064:
.LBB4063:
	.loc 4 2347 0
	xori 0,3,1
	.loc 4 2361 0
	rlwinm 0,0,0,0xff
.LBE4063:
.LBE4064:
.LBE4065:
	.loc 4 2362 0
	mr 3,0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_restore 31
.LCFI128:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2890:
	.size	_ZN11idGameLocal9HandleESCEPP15idUserInterface, .-_ZN11idGameLocal9HandleESCEPP15idUserInterface
	.align 2
	.globl _ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t
	.type	_ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t, @function
_ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t:
.LFB2879:
	.loc 4 1834 0
	.cfi_startproc
.LVL469:
	mflr 0
	stwu 1,-24(1)
.LCFI129:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	.loc 4 4268 0
	lwz 0,6220(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 4 1835 0
	cmpwi 7,0,0
	beq- 7,.L330
	.loc 4 1836 0
	mr 3,0
.LVL470:
	addis 31,31,0x25
.LVL471:
	bl _ZN8idEntity11GetPVSAreasEv
.LVL472:
	mr 29,3
	lwz 3,6220(30)
	bl _ZN8idEntity14GetNumPVSAreasEv
	mr 4,29
	mr 5,3
	li 6,0
	addi 3,31,1236
	bl _ZNK5idPVS15SetupCurrentPVSEPKii9pvsType_t
.LVL473:
.L331:
	.loc 4 1842 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL474:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI130:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL475:
.L330:
.LCFI131:
	.cfi_restore_state
.LBB4074:
.LBB4075:
	.loc 4 1837 0
	addis 31,3,0x25
	lwz 3,2116(31)
.LVL476:
	cmpwi 7,3,0
	beq- 7,.L332
.LVL477:
	.loc 4 1838 0
	bl _ZN8idEntity11GetPVSAreasEv
.LVL478:
	mr 30,3
.LVL479:
	lwz 3,2116(31)
	bl _ZN8idEntity14GetNumPVSAreasEv
	mr 4,30
	mr 5,3
	li 6,0
	addi 3,31,1236
.LVL480:
	bl _ZNK5idPVS15SetupCurrentPVSEPKii9pvsType_t
.LBE4075:
.LBE4074:
	.loc 4 1842 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL481:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI132:
	.cfi_def_cfa_offset 0
	blr
.LVL482:
.L332:
.LCFI133:
	.cfi_restore_state
.LBB4077:
.LBB4076:
	.loc 4 1840 0
	mr 3,4
	bl _ZN8idEntity11GetPVSAreasEv
.LVL483:
	mr 29,3
	mr 3,30
	bl _ZN8idEntity14GetNumPVSAreasEv
	mr 4,29
	mr 5,3
	li 6,0
.LVL484:
	addi 3,31,1236
	bl _ZNK5idPVS15SetupCurrentPVSEPKii9pvsType_t
	b .L331
.LBE4076:
.LBE4077:
	.cfi_endproc
.LFE2879:
	.size	_ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t, .-_ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t
	.align 2
	.globl _ZN11idGameLocal14SetupPlayerPVSEv
	.type	_ZN11idGameLocal14SetupPlayerPVSEv, @function
_ZN11idGameLocal14SetupPlayerPVSEv:
.LFB2880:
	.loc 4 1849 0
	.cfi_startproc
.LVL485:
	mflr 0
	stwu 1,-72(1)
.LCFI134:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 29,60(1)
.LBB4078:
	.loc 4 1855 0
	addis 29,3,0x25
	.cfi_offset 29, -12
.LBE4078:
	.loc 4 1849 0
	stw 0,76(1)
.LBB4085:
	.loc 4 1855 0
	li 0,-1
	.cfi_offset 65, 4
.LBE4085:
	.loc 4 1849 0
	stw 26,48(1)
	mr 26,3
	.cfi_offset 26, -24
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 30,64(1)
	stw 31,68(1)
.LBB4086:
	.loc 4 1855 0
	stw 0,2208(29)
.LVL486:
	.loc 4 1856 0
	lwz 0,48(3)
	cmpwi 7,0,0
	ble- 7,.L334
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.loc 4 1849 0
	addi 25,3,528
.LBE4086:
	.loc 4 1856 0
	li 28,0
.LBB4087:
.LBB4079:
	.loc 4 4268 0
	lis 24,_ZN8idPlayer4TypeE@ha
.LBE4079:
	.loc 4 1878 0
	addi 27,29,1236
.LVL487:
.L341:
	.loc 4 1857 0
	lwzu 21,4(25)
.LVL488:
	.loc 4 1858 0
	cmpwi 7,21,0
	beq- 7,.L338
.LVL489:
.LBB4084:
.LBB4080:
	.loc 5 340 0 discriminator 2
	lwz 9,0(21)
	mr 3,21
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL490:
.LBE4080:
	.loc 4 4268 0 discriminator 2
	la 9,_ZN8idPlayer4TypeE@l(24)
	lwz 0,56(3)
.LBB4083:
.LBB4081:
.LBB4082:
	.loc 5 311 0 discriminator 2
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L348
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L348
.LVL491:
.LBE4082:
.LBE4081:
.LBE4083:
.LBE4084:
	.loc 4 1864 0 is_stmt 1
	lwz 0,2208(29)
	cmpwi 7,0,-1
	beq- 7,.L349
	.loc 4 1867 0
	li 5,0
	mr 3,26
.LVL492:
	mr 4,21
	bl _ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t
	.loc 4 1868 0
	lwz 10,2208(29)
	lwz 11,2212(29)
	.loc 4 1867 0
	mr 31,4
.LVL493:
	mr 30,3
	.loc 4 1868 0
	addi 5,1,16
	mr 3,27
	addi 4,1,8
	stw 10,8(1)
	stw 11,12(1)
	stw 30,16(1)
	stw 31,20(1)
.LVL494:
	bl _ZNK5idPVS15MergeCurrentPVSE11pvsHandle_sS0_
	.loc 4 1869 0
	lwz 10,2208(29)
	.loc 4 1868 0
	mr 23,4
.LVL495:
	.loc 4 1869 0
	lwz 11,2212(29)
	.loc 4 1868 0
	mr 22,3
	.loc 4 1869 0
	addi 4,1,8
	mr 3,27
	stw 10,8(1)
	stw 11,12(1)
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 1870 0
	mr 3,27
	addi 4,1,8
	stw 30,8(1)
	stw 31,12(1)
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 1871 0
	stw 22,2208(29)
	stw 23,2212(29)
.LVL496:
.L339:
	.loc 4 1874 0
	lwz 0,2216(29)
	cmpwi 7,0,-1
	beq- 7,.L350
	.loc 4 1877 0
	li 5,2
	mr 3,26
	mr 4,21
	bl _ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t
	.loc 4 1878 0
	lwz 10,2216(29)
	lwz 11,2220(29)
	.loc 4 1877 0
	mr 31,4
.LVL497:
	mr 30,3
	.loc 4 1878 0
	addi 5,1,16
	mr 3,27
	addi 4,1,8
	stw 10,8(1)
	stw 11,12(1)
	stw 30,16(1)
	stw 31,20(1)
.LVL498:
	bl _ZNK5idPVS15MergeCurrentPVSE11pvsHandle_sS0_
	.loc 4 1879 0
	lwz 10,2216(29)
	.loc 4 1878 0
	mr 23,4
.LVL499:
	.loc 4 1879 0
	lwz 11,2220(29)
	.loc 4 1878 0
	mr 22,3
	.loc 4 1879 0
	addi 4,1,8
	mr 3,27
	stw 10,8(1)
	stw 11,12(1)
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 1880 0
	mr 3,27
	addi 4,1,8
	stw 30,8(1)
	stw 31,12(1)
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 1881 0
	stw 22,2216(29)
	stw 23,2220(29)
.LVL500:
.L348:
	lwz 0,48(26)
.LVL501:
.L338:
	.loc 4 1856 0
	addi 28,28,1
.LVL502:
	cmpw 7,0,28
	bgt+ 7,.L341
.LVL503:
.L334:
.LBE4087:
	.loc 4 1884 0
	lwz 0,76(1)
	lwz 21,28(1)
	mtlr 0
	lwz 22,32(1)
.LVL504:
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
.LVL505:
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
.LVL506:
	lwz 30,64(1)
.LVL507:
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI135:
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
.LVL508:
.L350:
.LCFI136:
	.cfi_restore_state
.LBB4088:
	.loc 4 1875 0
	mr 3,26
	mr 4,21
	li 5,2
	bl _ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t
	stw 3,2216(29)
	stw 4,2220(29)
	lwz 0,48(26)
	b .L338
.LVL509:
.L349:
	.loc 4 1865 0
	mr 3,26
.LVL510:
	mr 4,21
	li 5,0
	bl _ZN11idGameLocal12GetClientPVSEP8idPlayer9pvsType_t
	stw 3,2208(29)
	stw 4,2212(29)
	b .L339
.LBE4088:
	.cfi_endproc
.LFE2880:
	.size	_ZN11idGameLocal14SetupPlayerPVSEv, .-_ZN11idGameLocal14SetupPlayerPVSEv
	.align 2
	.globl _ZN11idGameLocal13FreePlayerPVSEv
	.type	_ZN11idGameLocal13FreePlayerPVSEv, @function
_ZN11idGameLocal13FreePlayerPVSEv:
.LFB2881:
	.loc 4 1891 0
	.cfi_startproc
.LVL511:
	mflr 0
	stwu 1,-24(1)
.LCFI137:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	.loc 4 1892 0
	addis 31,3,0x25
	.cfi_offset 31, -4
	.loc 4 1891 0
	stw 0,28(1)
	.loc 4 1892 0
	lwz 0,2208(31)
	.cfi_offset 65, 4
	cmpwi 7,0,-1
	beq- 7,.L352
	.loc 4 1893 0
	lwz 10,2208(31)
	mr 4,1
	lwz 11,2212(31)
	addi 3,31,1236
.LVL512:
	stwu 10,8(4)
	stw 11,4(4)
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 1894 0
	li 0,-1
	stw 0,2208(31)
.L352:
	.loc 4 1896 0
	lwz 0,2216(31)
	cmpwi 7,0,-1
	beq- 7,.L351
	.loc 4 1897 0
	lwz 10,2216(31)
	mr 4,1
	lwz 11,2220(31)
	addi 3,31,1236
	stwu 10,8(4)
	stw 11,4(4)
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 1898 0
	li 0,-1
	stw 0,2216(31)
.L351:
	.loc 4 1900 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL513:
	mtlr 0
	addi 1,1,24
.LCFI138:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2881:
	.size	_ZN11idGameLocal13FreePlayerPVSEv, .-_ZN11idGameLocal13FreePlayerPVSEv
	.align 2
	.globl _ZNK11idGameLocal11InPlayerPVSEP8idEntity
	.type	_ZNK11idGameLocal11InPlayerPVSEP8idEntity, @function
_ZNK11idGameLocal11InPlayerPVSEP8idEntity:
.LFB2882:
	.loc 4 1909 0
	.cfi_startproc
.LVL514:
	mflr 0
	stwu 1,-32(1)
.LCFI139:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 31,28(1)
	.loc 4 1910 0
	addis 31,3,0x25
	.cfi_offset 31, -4
	.loc 4 1909 0
	stw 0,36(1)
	.loc 4 1911 0
	li 3,0
.LVL515:
	.loc 4 1909 0
	stw 30,24(1)
	.loc 4 1910 0
	lwz 0,2208(31)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmpwi 7,0,-1
	beq- 7,.L355
	.loc 4 1913 0
	mr 3,4
	bl _ZN8idEntity11GetPVSAreasEv
.LVL516:
	mr 30,3
	mr 3,29
	bl _ZN8idEntity14GetNumPVSAreasEv
	lwz 10,2208(31)
	mr 4,1
	lwz 11,2212(31)
	stwu 10,8(4)
	mr 6,3
	mr 5,30
	addi 3,31,1236
	stw 11,4(4)
	bl _ZNK5idPVS12InCurrentPVSE11pvsHandle_sPKii
.L355:
	.loc 4 1914 0
	lwz 0,36(1)
	lwz 29,20(1)
.LVL517:
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL518:
	addi 1,1,32
.LCFI140:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2882:
	.size	_ZNK11idGameLocal11InPlayerPVSEP8idEntity, .-_ZNK11idGameLocal11InPlayerPVSEP8idEntity
	.align 2
	.globl _ZNK11idGameLocal21InPlayerConnectedAreaEP8idEntity
	.type	_ZNK11idGameLocal21InPlayerConnectedAreaEP8idEntity, @function
_ZNK11idGameLocal21InPlayerConnectedAreaEP8idEntity:
.LFB2883:
	.loc 4 1923 0
	.cfi_startproc
.LVL519:
	mflr 0
	stwu 1,-32(1)
.LCFI141:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 31,28(1)
	.loc 4 1924 0
	addis 31,3,0x25
	.cfi_offset 31, -4
	.loc 4 1923 0
	stw 0,36(1)
	.loc 4 1925 0
	li 3,0
.LVL520:
	.loc 4 1923 0
	stw 30,24(1)
	.loc 4 1924 0
	lwz 0,2216(31)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmpwi 7,0,-1
	beq- 7,.L358
	.loc 4 1927 0
	mr 3,4
	bl _ZN8idEntity11GetPVSAreasEv
.LVL521:
	mr 30,3
	mr 3,29
	bl _ZN8idEntity14GetNumPVSAreasEv
	lwz 10,2216(31)
	mr 4,1
	lwz 11,2220(31)
	stwu 10,8(4)
	mr 6,3
	mr 5,30
	addi 3,31,1236
	stw 11,4(4)
	bl _ZNK5idPVS12InCurrentPVSE11pvsHandle_sPKii
.L358:
	.loc 4 1928 0
	lwz 0,36(1)
	lwz 29,20(1)
.LVL522:
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL523:
	addi 1,1,32
.LCFI142:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2883:
	.size	_ZNK11idGameLocal21InPlayerConnectedAreaEP8idEntity, .-_ZNK11idGameLocal21InPlayerConnectedAreaEP8idEntity
	.align 2
	.globl _ZN11idGameLocal13UpdateGravityEv
	.type	_ZN11idGameLocal13UpdateGravityEv, @function
_ZN11idGameLocal13UpdateGravityEv:
.LFB2884:
	.loc 4 1935 0
	.cfi_startproc
.LVL524:
	stwu 1,-24(1)
.LCFI143:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	.loc 4 1938 0
	lis 29,g_gravity@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	la 29,g_gravity@l(29)
	.loc 4 1935 0
	stw 31,20(1)
	stw 0,28(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	stw 28,8(1)
	stw 30,16(1)
	.loc 4 1938 0
	lwz 9,44(29)
.LBB4089:
.LBB4090:
.LBB4091:
.LBB4092:
	.loc 7 137 0
	lwz 0,16(9)
.LBE4092:
.LBE4091:
	.loc 4 1938 0
	andis. 11,0,4
	beq- 0,.L360
	.cfi_offset 30, -8
	.cfi_offset 28, -16
.LBB4093:
	.loc 4 1939 0
	lis 11,.LC2@ha
.LBB4094:
.LBB4095:
	.loc 7 144 0
	lfs 0,40(9)
.LBE4095:
.LBE4094:
	.loc 4 1939 0
	lfs 13,.LC2@l(11)
	fcmpu 7,0,13
	beq- 7,.L370
.LVL525:
.L362:
	.loc 4 1942 0
	fneg 0,0
.LVL526:
.LBB4096:
.LBB4097:
	.file 17 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Vector.h"
	.loc 17 410 0
	addis 28,31,0x25
	li 0,0
	.loc 4 4268 0
	addis 31,31,0x1
.LVL527:
	.loc 17 410 0
	stw 0,2224(28)
	.loc 17 411 0
	stw 0,2228(28)
	.loc 17 412 0
	stfs 0,2232(28)
	.loc 4 4268 0
	lwz 11,-32192(31)
	lwz 0,-32196(31)
.LBE4097:
.LBE4096:
.LBB4098:
.LBB4099:
.LBB4100:
	.loc 9 268 0
	cmpwi 7,11,0
	beq- 7,.L363
.LVL528:
	cmpw 7,0,11
	beq- 7,.L363
	.loc 9 271 0
	lwz 31,12(11)
.LVL529:
.LBE4100:
.LBE4099:
	.loc 4 1945 0
	cmpwi 7,31,0
	beq- 7,.L363
	lis 30,_ZN18idAFEntity_Generic4TypeE@ha
.LBB4101:
.LBB4102:
	.loc 4 1949 0
	addi 28,28,2224
.LVL530:
	la 30,_ZN18idAFEntity_Generic4TypeE@l(30)
.LVL531:
.L367:
.LBE4102:
.LBB4103:
.LBB4104:
	.loc 5 340 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL532:
.LBB4105:
.LBB4106:
	.loc 5 311 0
	lwz 9,56(30)
.LBE4106:
.LBE4105:
.LBE4104:
	.loc 4 4268 0
	lwz 0,56(3)
.LBB4111:
.LBB4109:
.LBB4107:
	.loc 5 311 0
	cmpw 7,0,9
	blt- 7,.L364
.LVL533:
	lwz 9,60(30)
.LBE4107:
.LBE4109:
.LBE4111:
.LBE4103:
.LBB4113:
	.loc 4 1947 0
	mr 3,31
.LVL534:
.LBE4113:
.LBB4114:
.LBB4112:
.LBB4110:
.LBB4108:
	.loc 5 311 0
	cmpw 7,0,9
	bgt- 7,.L364
.LBE4108:
.LBE4110:
.LBE4112:
.LBE4114:
.LBB4115:
	.loc 4 1947 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL535:
	.loc 4 1949 0
	mr 4,28
	.loc 4 1948 0
	mr. 9,3
	beq- 0,.L364
	.loc 4 1949 0
	lwz 9,0(9)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL536:
.L364:
	.loc 4 4268 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBE4115:
.LBE4101:
.LBB4116:
.LBB4117:
	.loc 9 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	beq- 7,.L369
	beq- 6,.L369
	.loc 9 271 0
	lwz 31,12(9)
.LVL537:
.LBE4117:
.LBE4116:
	.loc 4 1945 0
	cmpwi 7,31,0
	bne+ 7,.L367
.LVL538:
.L369:
	lwz 9,44(29)
.LVL539:
.L363:
.LBE4098:
.LBB4118:
.LBB4119:
	.loc 7 139 0
	lwz 0,16(9)
	rlwinm 0,0,0,14,12
	stw 0,16(9)
.LVL540:
.L360:
.LBE4119:
.LBE4118:
.LBE4093:
.LBE4090:
.LBE4089:
	.loc 4 1955 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI144:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL541:
.L370:
.LCFI145:
	.cfi_restore_state
.LBB4124:
.LBB4123:
.LBB4122:
.LBB4120:
.LBB4121:
	.loc 7 149 0
	lwz 11,0(9)
	mr 3,9
.LVL542:
	lis 9,.LC16@ha
	lwz 0,20(11)
	lfs 1,.LC16@l(9)
	mtctr 0
	bctrl
	lwz 9,44(29)
	lfs 0,40(9)
	b .L362
.LBE4121:
.LBE4120:
.LBE4122:
.LBE4123:
.LBE4124:
	.cfi_endproc
.LFE2884:
	.size	_ZN11idGameLocal13UpdateGravityEv, .-_ZN11idGameLocal13UpdateGravityEv
	.align 2
	.globl _ZNK11idGameLocal10GetGravityEv
	.type	_ZNK11idGameLocal10GetGravityEv, @function
_ZNK11idGameLocal10GetGravityEv:
.LFB2885:
	.loc 4 1962 0
	.cfi_startproc
.LVL543:
	.loc 4 1963 0
	addis 3,3,0x25
.LVL544:
	.loc 4 1964 0
	addi 3,3,2224
.LVL545:
	blr
	.cfi_endproc
.LFE2885:
	.size	_ZNK11idGameLocal10GetGravityEv, .-_ZNK11idGameLocal10GetGravityEv
	.align 2
	.globl _ZN11idGameLocal20SortActiveEntityListEv
	.type	_ZN11idGameLocal20SortActiveEntityListEv, @function
_ZN11idGameLocal20SortActiveEntityListEv:
.LFB2886:
	.loc 4 1974 0
	.cfi_startproc
.LVL546:
	mflr 0
	stwu 1,-32(1)
.LCFI146:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
.LBB4125:
	.loc 4 1978 0
	addis 27,3,0x1
	.cfi_offset 27, -20
.LBE4125:
	.loc 4 1974 0
	stw 0,36(1)
	stw 26,8(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
.LBB4183:
	.loc 4 1978 0
	lbz 0,-32159(27)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L373
	.loc 4 4268 0
	lwz 9,-32176(27)
	lwz 0,-32180(27)
.LBB4126:
.LBB4127:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L373
	cmpw 7,0,9
	beq- 7,.L373
	.loc 9 271 0
	lwz 31,12(9)
.LVL547:
.LBE4127:
.LBE4126:
	.loc 4 1979 0
	cmpwi 7,31,0
	beq- 7,.L373
.LVL548:
.L407:
	.loc 4 4268 0
	lwz 9,32(31)
	.loc 4 1981 0
	mr 3,31
	.loc 4 4268 0
	lwz 0,28(31)
.LBB4128:
.LBB4129:
	.loc 9 269 0
	li 30,0
	.loc 9 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	beq- 7,.L374
.LVL549:
	beq- 6,.L374
	.loc 9 271 0
	lwz 30,12(9)
.L374:
.LBE4129:
.LBE4128:
	.loc 4 1981 0
	bl _ZNK8idEntity13GetTeamMasterEv
.LVL550:
	.loc 4 1979 0
	cmpwi 7,30,0
	.loc 4 1982 0
	cmpwi 0,3,0
	cmpw 6,31,3
	beq- 0,.L375
	.loc 4 1982 0 is_stmt 0 discriminator 1
	beq- 6,.L412
.L375:
.LVL551:
	.loc 4 1979 0 is_stmt 1 discriminator 1
	beq- 7,.L373
	.loc 4 1979 0 is_stmt 0
	mr 31,30
	b .L407
.LVL552:
.L373:
	.loc 4 1990 0 is_stmt 1
	lbz 0,-32160(27)
	cmpwi 7,0,0
	beq- 7,.L377
	.loc 4 4268 0
	lwz 9,-32176(27)
	lwz 0,-32180(27)
.LBB4130:
.LBB4131:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L377
	cmpw 7,0,9
	beq- 7,.L377
	.loc 9 271 0
	lwz 30,12(9)
.LVL553:
	lis 26,_ZN15idPhysics_Actor4TypeE@ha
.LBE4131:
.LBE4130:
	.loc 4 1992 0
	cmpwi 6,30,0
	bne+ 6,.L409
	b .L378
.LVL554:
.L414:
	.loc 4 1995 0 discriminator 1
	cmpw 7,30,3
	beq- 7,.L397
.LVL555:
.L381:
	.loc 4 1992 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L413
.L398:
	.loc 4 1992 0 is_stmt 0
	mr 30,28
.LVL556:
.L409:
	.loc 4 4268 0 is_stmt 1
	lwz 9,32(30)
.LBB4132:
.LBB4133:
	.loc 9 269 0
	li 28,0
.LBE4133:
.LBE4132:
	.loc 4 4268 0
	lwz 0,28(30)
.LBB4135:
.LBB4134:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L379
	cmpw 7,0,9
	beq- 7,.L379
	.loc 9 271 0
	lwz 28,12(9)
.L379:
.LBE4134:
.LBE4135:
	.loc 4 1994 0
	mr 3,30
	bl _ZNK8idEntity13GetTeamMasterEv
.LVL557:
	.loc 4 1995 0
	cmpwi 0,3,0
	bne+ 0,.L414
.L397:
	mr 31,30
	la 29,_ZN15idPhysics_Actor4TypeE@l(26)
.LVL558:
.L404:
	.loc 4 1998 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
.LVL559:
.LBB4136:
.LBB4137:
	.loc 5 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL560:
.LBB4138:
.LBB4139:
	.loc 5 311 0
	lwz 9,56(29)
.LBE4139:
.LBE4138:
.LBE4137:
	.loc 4 4268 0
	lwz 0,56(3)
.LBE4136:
	.loc 4 1997 0
	mr 3,31
.LVL561:
.LBB4143:
.LBB4142:
.LBB4141:
.LBB4140:
	.loc 5 311 0
	cmpw 7,0,9
	blt- 7,.L382
	lwz 9,60(29)
	cmpw 7,0,9
	bgt- 7,.L382
.LBE4140:
.LBE4141:
.LBE4142:
.LBE4143:
	.loc 4 2003 0
	cmpwi 7,31,0
	beq- 7,.L381
.LBB4144:
.LBB4145:
	.loc 9 176 0
	lwz 9,36(30)
.LBE4145:
.LBE4144:
	.loc 4 2004 0
	addi 0,30,28
.LVL562:
.LBB4148:
.LBB4146:
	.loc 9 176 0
	lwz 11,32(30)
.LBE4146:
.LBE4148:
	.loc 4 1992 0
	cmpwi 7,28,0
.LBB4149:
.LBB4147:
	.loc 9 176 0
	stw 11,4(9)
	.loc 9 177 0
	lwz 9,32(30)
	lwz 11,36(30)
	stw 11,8(9)
	.loc 9 179 0
	stw 0,32(30)
	.loc 9 180 0
	stw 0,36(30)
	.loc 9 181 0
	stw 0,28(30)
	.loc 4 4268 0
	lwz 9,-32180(27)
.LVL563:
.LBE4147:
.LBE4149:
.LBB4150:
.LBB4151:
.LBB4152:
	.loc 9 215 0
	stw 9,36(30)
	.loc 9 216 0
	lwz 11,4(9)
	stw 11,32(30)
	.loc 9 217 0
	stw 0,4(9)
	.loc 9 218 0
	lwz 11,32(30)
	stw 0,8(11)
	.loc 9 219 0
	lwz 0,0(9)
.LVL564:
	stw 0,28(30)
.LVL565:
.LBE4152:
.LBE4151:
.LBE4150:
	.loc 4 1992 0
	bne+ 7,.L398
.LVL566:
.L413:
	lwz 9,-32176(27)
	lwz 0,-32180(27)
.LBB4153:
.LBB4154:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L377
	cmpw 7,0,9
.LVL567:
.L378:
	beq- 7,.L377
	.loc 9 271 0
	lwz 30,12(9)
.LVL568:
	lis 26,_ZN20idPhysics_Parametric4TypeE@ha
.LBE4154:
.LBE4153:
	.loc 4 2010 0
	cmpwi 7,30,0
	bne+ 7,.L411
	b .L377
.LVL569:
.L415:
	.loc 4 2013 0 discriminator 1
	cmpw 7,30,3
	beq- 7,.L401
.LVL570:
.L386:
	.loc 4 2010 0 discriminator 1
	cmpwi 7,28,0
	beq- 7,.L377
.L402:
	.loc 4 2010 0 is_stmt 0
	mr 30,28
.LVL571:
.L411:
	.loc 4 4268 0 is_stmt 1
	lwz 9,32(30)
.LBB4155:
.LBB4156:
	.loc 9 269 0
	li 28,0
.LBE4156:
.LBE4155:
	.loc 4 4268 0
	lwz 0,28(30)
.LBB4158:
.LBB4157:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L384
	cmpw 7,0,9
	beq- 7,.L384
	.loc 9 271 0
	lwz 28,12(9)
.L384:
.LBE4157:
.LBE4158:
	.loc 4 2012 0
	mr 3,30
	bl _ZNK8idEntity13GetTeamMasterEv
.LVL572:
	.loc 4 2013 0
	cmpwi 0,3,0
	bne+ 0,.L415
.L401:
	mr 31,30
	la 29,_ZN20idPhysics_Parametric4TypeE@l(26)
.LVL573:
.L403:
	.loc 4 2016 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
.LVL574:
.LBB4159:
.LBB4160:
	.loc 5 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL575:
.LBB4161:
.LBB4162:
	.loc 5 311 0
	lwz 9,56(29)
.LBE4162:
.LBE4161:
.LBE4160:
	.loc 4 4268 0
	lwz 0,56(3)
.LBE4159:
	.loc 4 2015 0
	mr 3,31
.LVL576:
.LBB4166:
.LBB4165:
.LBB4164:
.LBB4163:
	.loc 5 311 0
	cmpw 7,0,9
	blt- 7,.L387
	lwz 9,60(29)
	cmpw 7,0,9
	bgt- 7,.L387
.LBE4163:
.LBE4164:
.LBE4165:
.LBE4166:
	.loc 4 2021 0
	cmpwi 7,31,0
	beq- 7,.L386
.LBB4167:
.LBB4168:
	.loc 9 176 0
	lwz 9,36(30)
.LBE4168:
.LBE4167:
	.loc 4 2022 0
	addi 0,30,28
.LVL577:
.LBB4171:
.LBB4169:
	.loc 9 176 0
	lwz 11,32(30)
.LBE4169:
.LBE4171:
	.loc 4 2010 0
	cmpwi 7,28,0
.LBB4172:
.LBB4170:
	.loc 9 176 0
	stw 11,4(9)
	.loc 9 177 0
	lwz 9,32(30)
	lwz 11,36(30)
	stw 11,8(9)
	.loc 9 179 0
	stw 0,32(30)
	.loc 9 180 0
	stw 0,36(30)
	.loc 9 181 0
	stw 0,28(30)
	.loc 4 4268 0
	lwz 9,-32180(27)
.LVL578:
.LBE4170:
.LBE4172:
.LBB4173:
.LBB4174:
.LBB4175:
	.loc 9 215 0
	stw 9,36(30)
	.loc 9 216 0
	lwz 11,4(9)
	stw 11,32(30)
	.loc 9 217 0
	stw 0,4(9)
	.loc 9 218 0
	lwz 11,32(30)
	stw 0,8(11)
	.loc 9 219 0
	lwz 0,0(9)
.LVL579:
	stw 0,28(30)
.LVL580:
.LBE4175:
.LBE4174:
.LBE4173:
	.loc 4 2010 0
	bne+ 7,.L402
.LVL581:
.L377:
	.loc 4 2029 0
	li 0,0
	stb 0,-32159(27)
	.loc 4 2030 0
	stb 0,-32160(27)
.LBE4183:
	.loc 4 2031 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL582:
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI147:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL583:
.L412:
.LCFI148:
	.cfi_restore_state
.LBB4184:
.LBB4176:
.LBB4177:
	.loc 9 176 0
	lwz 9,36(31)
.LBE4177:
.LBE4176:
	.loc 4 1983 0
	addi 0,31,28
.LVL584:
.LBB4179:
.LBB4178:
	.loc 9 176 0
	lwz 11,32(31)
	stw 11,4(9)
	.loc 9 177 0
	lwz 9,32(31)
	lwz 11,36(31)
	stw 11,8(9)
	.loc 9 179 0
	stw 0,32(31)
	.loc 9 180 0
	stw 0,36(31)
	.loc 9 181 0
	stw 0,28(31)
	.loc 4 4268 0
	lwz 9,-32180(27)
.LVL585:
.LBE4178:
.LBE4179:
.LBB4180:
.LBB4181:
.LBB4182:
	.loc 9 215 0
	stw 9,36(31)
	.loc 9 216 0
	lwz 11,4(9)
	stw 11,32(31)
	.loc 9 217 0
	stw 0,4(9)
	.loc 9 218 0
	lwz 11,32(31)
	stw 0,8(11)
	.loc 9 219 0
	lwz 0,0(9)
.LVL586:
	stw 0,28(31)
	b .L375
.LVL587:
.L382:
.LBE4182:
.LBE4181:
.LBE4180:
	.loc 4 1997 0
	bl _ZNK8idEntity17GetNextTeamEntityEv
.LVL588:
	mr. 31,3
	bne+ 0,.L404
	b .L381
.LVL589:
.L387:
	.loc 4 2015 0
	bl _ZNK8idEntity17GetNextTeamEntityEv
.LVL590:
	mr. 31,3
	bne+ 0,.L403
	b .L386
.LBE4184:
	.cfi_endproc
.LFE2886:
	.size	_ZN11idGameLocal20SortActiveEntityListEv, .-_ZN11idGameLocal20SortActiveEntityListEv
	.align 2
	.globl _ZNK11idGameLocal7CalcFovEfRfS0_
	.type	_ZNK11idGameLocal7CalcFovEfRfS0_, @function
_ZNK11idGameLocal7CalcFovEfRfS0_:
.LFB2888:
	.loc 4 2257 0
	.cfi_startproc
.LVL591:
	stwu 1,-80(1)
.LCFI149:
	.cfi_def_cfa_offset 80
	mflr 0
	stw 30,24(1)
.LBB4185:
	.loc 4 2263 0
	lis 30,sys@ha
	.cfi_offset 30, -56
	.cfi_register 65, 0
.LBE4185:
	.loc 4 2257 0
	stfd 30,64(1)
	fmr 30,1
	.cfi_offset 62, -16
	stw 28,16(1)
	mr 28,5
	.cfi_offset 28, -64
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -60
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -52
	stw 0,84(1)
	stfd 26,32(1)
	stfd 27,40(1)
	stfd 28,48(1)
	stfd 29,56(1)
	stfd 31,72(1)
	stw 27,12(1)
.LBB4188:
	.loc 4 2263 0
	lwz 9,sys@l(30)
	lwz 11,0(9)
	mr 3,9
.LVL592:
	lwz 0,28(11)
	.cfi_offset 27, -68
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL593:
	cmpwi 7,3,0
	beq- 7,.L431
.L417:
	.loc 4 2269 0
	lis 27,.LC20@ha
	lis 9,_ZN6idMath2PIE@ha
	lfs 29,.LC20@l(27)
	lfs 31,_ZN6idMath2PIE@l(9)
	fdivs 1,30,29
	fmuls 1,1,31
	bl tan
	lis 9,.LC24@ha
	lfs 2,.LC24@l(9)
	.loc 4 2270 0
	lis 9,.LC22@ha
	.loc 4 2269 0
	fmr 28,1
.LVL594:
	fdiv 2,2,1
	.loc 4 2270 0
	lfs 1,.LC22@l(9)
.LVL595:
	.loc 4 2269 0
	frsp 2,2
	.loc 4 2270 0
	bl atan2
.LVL596:
	.loc 4 2275 0
	lis 9,.LC2@ha
	.loc 4 2270 0
	frsp 1,1
.LVL597:
	.loc 4 2275 0
	lfs 0,.LC2@l(9)
	.loc 4 2271 0
	fmuls 29,1,29
	fdivs 29,29,31
	.loc 4 2275 0
	fcmpu 7,29,0
	.loc 4 2271 0
	stfs 29,0(28)
	.loc 4 2275 0
	cror 30,28,30
	beq- 7,.L432
.LVL598:
.L418:
.LBB4186:
.LBB4187:
	.loc 4 2280 0
	lis 9,r_aspectRatio+44@ha
	.loc 7 143 0
	lwz 9,r_aspectRatio+44@l(9)
.LBE4187:
.LBE4186:
	.loc 4 2280 0
	lwz 0,36(9)
	cmpwi 7,0,1
	beq- 7,.L421
	cmpwi 7,0,2
	beq- 7,.L433
	.loc 4 2284 0
	stfs 30,0(29)
.LVL599:
.L416:
.LBE4188:
	.loc 4 2316 0
	lwz 0,84(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL600:
	lwz 29,20(1)
.LVL601:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL602:
	lfd 26,32(1)
	lfd 27,40(1)
	lfd 28,48(1)
	lfd 29,56(1)
	lfd 30,64(1)
.LVL603:
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI150:
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
	blr
.LVL604:
.L421:
.LCFI151:
	.cfi_restore_state
.LBB4189:
	.loc 4 2291 0
	lis 9,.LC18@ha
	lfs 27,.LC18@l(9)
.L422:
.LVL605:
	.loc 4 2301 0
	lfs 29,.LC20@l(27)
	fmr 26,27
	lfs 1,0(28)
	fdivs 1,1,29
	fmuls 1,31,1
	bl tan
.LVL606:
	.loc 4 2302 0
	lis 9,.LC27@ha
	.loc 4 2301 0
	fdiv 2,26,1
	.loc 4 2302 0
	lfs 26,.LC27@l(9)
.LVL607:
	.loc 4 2301 0
	frsp 2,2
.LVL608:
	.loc 4 2302 0
	fmr 1,26
	bl atan2
.LVL609:
	fmul 0,1,29
	fdiv 0,0,31
	frsp 0,0
	.loc 4 2304 0
	fcmpu 7,30,0
	.loc 4 2302 0
	stfs 0,0(29)
	.loc 4 2304 0
	bgt- 7,.L424
	lfs 31,0(28)
.LVL610:
.L425:
	.loc 4 2312 0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	fcmpu 7,31,0
	cror 30,28,30
	beq- 7,.L426
	.loc 4 2312 0 is_stmt 0 discriminator 1
	lfs 13,0(29)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L416
.L426:
	.loc 4 2313 0 is_stmt 1
	lwz 3,sys@l(30)
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LBE4189:
	.loc 4 2316 0
	lwz 0,84(1)
	lwz 27,12(1)
.LBB4190:
	.loc 4 2314 0
	mr 3,31
.LBE4190:
	.loc 4 2316 0
	lwz 28,16(1)
.LVL611:
.LBB4191:
	.loc 4 2314 0
	lis 4,.LC25@ha
.LBE4191:
	.loc 4 2316 0
	lwz 29,20(1)
.LVL612:
	mtlr 0
	lwz 30,24(1)
.LBB4192:
	.loc 4 2314 0
	la 4,.LC25@l(4)
.LBE4192:
	.loc 4 2316 0
	lwz 31,28(1)
.LVL613:
	lfd 26,32(1)
	lfd 27,40(1)
.LVL614:
	lfd 28,48(1)
	lfd 29,56(1)
	lfd 30,64(1)
.LVL615:
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI152:
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
.LBB4193:
	.loc 4 2314 0
	crxor 6,6,6
	b _ZNK11idGameLocal5ErrorEPKcz
.LVL616:
.L433:
.LCFI153:
	.cfi_restore_state
	.loc 4 2297 0
	lis 9,.LC17@ha
	lfs 27,.LC17@l(9)
	b .L422
.LVL617:
.L432:
	.loc 4 2276 0
	lwz 3,sys@l(30)
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
.LVL618:
	mr 4,3
	mr 3,31
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 2277 0
	lis 4,.LC25@ha
	mr 3,31
	la 4,.LC25@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L418
.LVL619:
.L431:
	.loc 4 2264 0
	lwz 3,sys@l(30)
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 2265 0
	lis 4,.LC19@ha
	mr 3,31
	la 4,.LC19@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L417
.LVL620:
.L424:
	.loc 4 2306 0
	fdiv 28,26,28
.LVL621:
	.loc 4 2305 0
	stfs 30,0(29)
	.loc 4 2306 0
	frsp 2,28
	.loc 4 2307 0
	fmr 1,27
	bl atan2
	fmul 29,1,29
	fdiv 31,29,31
	frsp 31,31
	stfs 31,0(28)
	b .L425
.LBE4193:
	.cfi_endproc
.LFE2888:
	.size	_ZNK11idGameLocal7CalcFovEfRfS0_, .-_ZNK11idGameLocal7CalcFovEfRfS0_
	.align 2
	.globl _ZNK11idGameLocal10GetMapNameEv
	.type	_ZNK11idGameLocal10GetMapNameEv, @function
_ZNK11idGameLocal10GetMapNameEv:
.LFB2895:
	.loc 4 2428 0
	.cfi_startproc
.LVL622:
	.loc 4 4268 0
	addis 3,3,0x25
.LVL623:
	.loc 4 2430 0
	lwz 3,2068(3)
.LVL624:
	blr
	.cfi_endproc
.LFE2895:
	.size	_ZNK11idGameLocal10GetMapNameEv, .-_ZNK11idGameLocal10GetMapNameEv
	.align 2
	.globl _ZN11idGameLocal16CallFrameCommandEP8idEntityPK10function_t
	.type	_ZN11idGameLocal16CallFrameCommandEP8idEntityPK10function_t, @function
_ZN11idGameLocal16CallFrameCommandEP8idEntityPK10function_t:
.LFB2896:
	.loc 4 2437 0
	.cfi_startproc
.LVL625:
	mflr 0
	stwu 1,-16(1)
.LCFI154:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 4 2438 0
	li 6,1
	.loc 4 2437 0
	stw 31,12(1)
	.loc 4 2438 0
	addis 31,3,0x23
	.cfi_offset 31, -4
	.loc 4 2437 0
	stw 0,20(1)
	.loc 4 2438 0
	lwz 3,17268(31)
.LVL626:
	.cfi_offset 65, 4
	bl _ZN8idThread12CallFunctionEP8idEntityPK10function_tb
.LVL627:
	.loc 4 2439 0
	lwz 3,17268(31)
	bl _ZN8idThread7ExecuteEv
	.loc 4 2440 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL628:
	mtlr 0
	addi 1,1,16
.LCFI155:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2896:
	.size	_ZN11idGameLocal16CallFrameCommandEP8idEntityPK10function_t, .-_ZN11idGameLocal16CallFrameCommandEP8idEntityPK10function_t
	.align 2
	.globl _ZN11idGameLocal22CallObjectFrameCommandEP8idEntityPKc
	.type	_ZN11idGameLocal22CallObjectFrameCommandEP8idEntityPKc, @function
_ZN11idGameLocal22CallObjectFrameCommandEP8idEntityPKc:
.LFB2897:
	.loc 4 2447 0
	.cfi_startproc
.LVL629:
	stwu 1,-24(1)
.LCFI156:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,20(1)
.LBB4194:
	.loc 4 2450 0
	mr 4,5
.LVL630:
.LBE4194:
	.loc 4 2447 0
	mr 31,3
	.cfi_offset 31, -4
.LBB4200:
	.loc 4 2450 0
	addi 3,30,144
.LVL631:
.LBE4200:
	.loc 4 2447 0
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 0,28(1)
.LBB4201:
	.loc 4 2450 0
	.cfi_offset 65, 4
	bl _ZNK14idScriptObject11GetFunctionEPKc
.LVL632:
	.loc 4 2451 0
	mr. 5,3
	beq- 0,.L440
	.loc 4 2456 0
	addis 31,31,0x23
.LVL633:
	mr 4,30
	lwz 3,17268(31)
.LVL634:
	li 6,1
	bl _ZN8idThread12CallFunctionEP8idEntityPK10function_tb
.LVL635:
	.loc 4 2457 0
	lwz 3,17268(31)
	bl _ZN8idThread7ExecuteEv
.LVL636:
.L436:
.LBE4201:
	.loc 4 2459 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL637:
	mtlr 0
	lwz 30,16(1)
.LVL638:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI157:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL639:
.L440:
.LCFI158:
	.cfi_restore_state
.LBB4202:
.LBB4195:
.LBB4196:
	.loc 5 340 0
	lwz 9,0(30)
	mr 3,30
.LVL640:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL641:
.LBE4196:
	.loc 4 4268 0
	lis 9,_ZN11idTestModel4TypeE@ha
	la 9,_ZN11idTestModel4TypeE@l(9)
	lwz 0,56(3)
.LBB4199:
.LBB4197:
.LBB4198:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L438
	lwz 9,60(9)
	cmpw 7,0,9
	ble- 7,.L436
.L438:
.LBE4198:
.LBE4197:
.LBE4199:
.LBE4195:
.LBE4202:
	.loc 4 2459 0
	lwz 0,28(1)
.LBB4203:
	.loc 4 2453 0
	mr 3,31
.LVL642:
	lwz 6,72(30)
	lis 4,.LC29@ha
.LBE4203:
	.loc 4 2459 0
	lwz 30,16(1)
.LVL643:
.LBB4204:
	.loc 4 2453 0
	mr 5,29
.LBE4204:
	.loc 4 2459 0
	lwz 31,20(1)
.LVL644:
	mtlr 0
	lwz 29,12(1)
.LVL645:
.LBB4205:
	.loc 4 2453 0
	la 4,.LC29@l(4)
.LBE4205:
	.loc 4 2459 0
	addi 1,1,24
.LCFI159:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
.LBB4206:
	.loc 4 2453 0
	crxor 6,6,6
	b _ZNK11idGameLocal5ErrorEPKcz
.LVL646:
.LVL647:
.LBE4206:
	.cfi_endproc
.LFE2897:
	.size	_ZN11idGameLocal22CallObjectFrameCommandEP8idEntityPKc, .-_ZN11idGameLocal22CallObjectFrameCommandEP8idEntityPKc
	.align 2
	.globl _ZN11idGameLocal11ShowTargetsEv
	.type	_ZN11idGameLocal11ShowTargetsEv, @function
_ZN11idGameLocal11ShowTargetsEv:
.LFB2898:
	.loc 4 2466 0
	.cfi_startproc
.LVL648:
	mflr 0
	stwu 1,-488(1)
.LCFI160:
	.cfi_def_cfa_offset 488
	.cfi_register 65, 0
	stfd 14,344(1)
	stw 0,492(1)
	stfd 15,352(1)
	stfd 16,360(1)
	stfd 17,368(1)
	stfd 18,376(1)
	stfd 19,384(1)
	stfd 20,392(1)
	stfd 21,400(1)
	stfd 23,416(1)
	stfd 24,424(1)
	stfd 25,432(1)
	stfd 26,440(1)
	stfd 27,448(1)
	stfd 28,456(1)
	stfd 30,472(1)
	stw 21,300(1)
.LBB4417:
.LBB4418:
.LBB4419:
	.file 18 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Bounds.h"
	.loc 18 323 0
	lis 21,.LC34@ha
	.cfi_offset 21, -188
	.cfi_offset 62, -16
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 53, -88
	.cfi_offset 52, -96
	.cfi_offset 51, -104
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	.cfi_offset 47, -136
	.cfi_offset 65, 4
	.cfi_offset 46, -144
.LBE4419:
.LBE4418:
.LBE4417:
	.loc 4 2466 0
	stfd 22,408(1)
	stfd 29,464(1)
	stfd 31,480(1)
	stw 14,272(1)
	stw 15,276(1)
	stw 16,280(1)
	stw 17,284(1)
	stw 18,288(1)
	stw 19,292(1)
	stw 20,296(1)
	stw 22,304(1)
	stw 23,308(1)
	stw 24,312(1)
	stw 25,316(1)
	stw 26,320(1)
	stw 27,324(1)
	stw 28,328(1)
	stw 31,340(1)
	mr 31,3
	.cfi_offset 31, -148
	.cfi_offset 28, -160
	.cfi_offset 27, -164
	.cfi_offset 26, -168
	.cfi_offset 25, -172
	.cfi_offset 24, -176
	.cfi_offset 23, -180
	.cfi_offset 22, -184
	.cfi_offset 20, -192
	.cfi_offset 19, -196
	.cfi_offset 18, -200
	.cfi_offset 17, -204
	.cfi_offset 16, -208
	.cfi_offset 15, -212
	.cfi_offset 14, -216
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 54, -80
	stw 29,332(1)
	stw 30,336(1)
.LBB4772:
	.loc 4 2467 0
	.cfi_offset 30, -152
	.cfi_offset 29, -156
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL649:
	addi 4,3,4644
	addi 3,1,216
	bl _ZNK8idAngles6ToMat3Ev
.LVL650:
.LBB4426:
.LBB4427:
	.loc 17 439 0
	lis 9,.LC30@ha
	lfs 0,.LC30@l(9)
.LBE4427:
.LBE4426:
	.loc 4 2469 0
	mr 3,31
.LBB4430:
.LBB4428:
	.loc 17 439 0
	lfs 25,240(1)
.LBE4428:
.LBE4430:
.LBB4431:
.LBB4420:
	.loc 4 4268 0
	addis 31,31,0x1
.LVL651:
.LBE4420:
.LBE4431:
.LBB4432:
.LBB4429:
	.loc 17 439 0
	lfs 24,244(1)
	lfs 23,248(1)
	fmuls 25,25,0
	fmuls 24,24,0
	fmuls 23,23,0
.LVL652:
.LBE4429:
.LBE4432:
	.loc 4 2469 0
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL653:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB4433:
.LBB4421:
	.loc 4 4268 0
	lwz 11,-32192(31)
.LBE4421:
.LBE4433:
.LBB4434:
.LBB4435:
	.loc 18 323 0
	lis 9,.LC33@ha
.LBE4435:
.LBE4434:
.LBB4442:
.LBB4443:
.LBB4444:
	.loc 17 424 0
	lis 10,.LC32@ha
.LBE4444:
.LBE4443:
.LBE4442:
.LBB4459:
.LBB4460:
.LBB4461:
	.loc 9 268 0
	cmpwi 7,11,0
.LBE4461:
.LBE4460:
.LBE4459:
.LBB4741:
.LBB4436:
	.loc 18 323 0
	lfs 14,.LC33@l(9)
.LBE4436:
.LBE4741:
.LBB4742:
.LBB4448:
.LBB4449:
	.loc 17 424 0
	lis 9,.LC31@ha
.LBE4449:
.LBE4448:
.LBE4742:
.LBB4743:
.LBB4744:
.LBB4745:
	lfs 26,0(3)
	.loc 17 425 0
	lfs 20,4(3)
.LBE4745:
.LBE4744:
.LBE4743:
	.loc 4 2469 0
	mr 28,3
.LVL654:
.LBB4748:
.LBB4747:
.LBB4746:
	.loc 17 426 0
	lfs 18,8(3)
.LVL655:
.LBE4746:
.LBE4747:
.LBE4748:
.LBB4749:
.LBB4437:
	.loc 18 323 0
	fsubs 21,26,14
.LBE4437:
.LBE4749:
.LBB4750:
.LBB4422:
	lfs 0,.LC34@l(21)
.LBE4422:
.LBE4750:
.LBB4751:
.LBB4438:
	.loc 18 324 0
	fsubs 19,20,14
.LBE4438:
.LBE4751:
.LBB4752:
.LBB4453:
.LBB4445:
	.loc 17 424 0
	lwz 0,.LC32@l(10)
.LBE4445:
.LBE4453:
.LBE4752:
.LBB4753:
.LBB4439:
	.loc 18 325 0
	fsubs 17,18,14
.LBE4439:
.LBE4753:
.LBB4754:
.LBB4454:
.LBB4450:
	.loc 17 424 0
	lwz 9,.LC31@l(9)
.LBE4450:
.LBE4454:
.LBE4754:
.LBB4755:
.LBB4440:
	.loc 18 326 0
	fadds 16,26,14
	.loc 18 327 0
	fadds 15,20,14
.LBE4440:
.LBE4755:
.LBB4756:
.LBB4455:
.LBB4446:
	.loc 17 424 0
	stw 0,204(1)
	.loc 17 425 0
	stw 0,208(1)
.LBE4446:
.LBE4455:
.LBE4756:
.LBB4757:
.LBB4441:
	.loc 18 328 0
	fadds 14,18,14
.LBE4441:
.LBE4757:
.LBB4758:
.LBB4456:
.LBB4447:
	.loc 17 426 0
	stw 0,212(1)
.LBE4447:
.LBE4456:
.LBE4758:
.LBB4759:
.LBB4423:
	.loc 18 323 0
	fsubs 30,26,0
	.loc 18 324 0
	fsubs 28,20,0
.LBE4423:
.LBE4759:
.LBB4760:
.LBB4457:
.LBB4451:
	.loc 17 424 0
	stw 9,192(1)
.LBE4451:
.LBE4457:
.LBE4760:
.LBB4761:
.LBB4424:
	.loc 18 325 0
	fsubs 27,18,0
.LBE4424:
.LBE4761:
.LBB4762:
.LBB4458:
.LBB4452:
	.loc 17 425 0
	stw 9,196(1)
	.loc 17 426 0
	stw 9,200(1)
.LVL656:
.LBE4452:
.LBE4458:
.LBE4762:
.LBB4763:
.LBB4425:
	.loc 18 326 0
	fadds 26,26,0
.LVL657:
	.loc 18 327 0
	fadds 20,20,0
.LVL658:
	.loc 4 4268 0
	lwz 0,-32196(31)
	.loc 18 328 0
	fadds 18,18,0
.LBE4425:
.LBE4763:
.LBB4764:
.LBB4463:
.LBB4462:
	.loc 9 268 0
	beq- 7,.L441
	cmpw 7,0,11
	beq- 7,.L441
	.loc 9 271 0
	lwz 31,12(11)
.LVL659:
.LBE4462:
.LBE4463:
	.loc 4 2480 0
	cmpwi 7,31,0
	beq- 7,.L441
	lis 30,.LANCHOR0@ha
.LBB4464:
	.loc 4 2498 0
	lis 9,.LC2@ha
	la 30,.LANCHOR0@l(30)
	.loc 4 2502 0
	lis 17,vec3_origin@ha
.LBB4465:
.LBB4466:
	.loc 4 2507 0
	lis 14,.LC39@ha
.LBE4466:
.LBE4465:
	.loc 4 2498 0
	lfs 29,.LC2@l(9)
.LBB4617:
.LBB4618:
	.loc 10 635 0
	mr 29,30
.LBE4618:
.LBE4617:
.LBE4464:
.LBE4764:
.LBE4772:
	.loc 17 431 0
	lis 27,.LC35@ha
.LBB4773:
.LBB4765:
.LBB4732:
.LBB4620:
.LBB4621:
.LBB4622:
.LBB4623:
	.file 19 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Math.h"
	.loc 19 250 0
	lis 22,.LC36@ha
.LBE4623:
.LBE4622:
.LBE4621:
.LBE4620:
	.loc 4 2497 0
	lis 23,.LC37@ha
	.loc 4 2502 0
	lis 18,gameRenderWorld@ha
	la 17,vec3_origin@l(17)
.LBB4631:
.LBB4632:
	.loc 17 905 0
	lis 24,colorYellow@ha
.LBE4632:
.LBE4631:
.LBB4645:
.LBB4611:
	.loc 4 2507 0
	la 14,.LC39@l(14)
.LVL660:
.L474:
.LBE4611:
.LBE4645:
	.loc 4 2481 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL661:
	.loc 4 2482 0
	lwz 0,172(31)
.LBB4646:
.LBB4647:
.LBB4648:
	.loc 17 424 0
	lwz 7,0(3)
.LBE4648:
.LBE4647:
.LBE4646:
	.loc 4 2482 0
	cmpwi 7,0,0
.LBB4651:
.LBB4650:
.LBB4649:
	.loc 17 425 0
	lwz 8,4(3)
	.loc 17 426 0
	lwz 10,8(3)
	.loc 17 424 0
	lfs 0,12(3)
	.loc 17 425 0
	lwz 11,16(3)
	.loc 17 426 0
	lwz 9,20(3)
	.loc 17 424 0
	stw 7,168(1)
	.loc 17 425 0
	stw 8,172(1)
	.loc 17 426 0
	stw 10,176(1)
.LVL662:
	.loc 17 424 0
	stfs 0,180(1)
	.loc 17 425 0
	stw 11,184(1)
	.loc 17 426 0
	stw 9,188(1)
.LVL663:
.LBE4649:
.LBE4650:
.LBE4651:
	.loc 4 2482 0
	ble- 7,.L443
	li 25,0
	addi 26,1,168
	b .L456
.LVL664:
.L444:
	addi 25,25,1
.LVL665:
	cmpw 7,0,25
	ble- 7,.L482
.LVL666:
.L456:
.LBB4652:
.LBB4619:
	.loc 10 634 0
	lwz 11,184(31)
	slwi 9,25,2
	lwzx 9,11,9
	rlwinm 11,9,0,20,31
.LVL667:
	.loc 10 635 0
	srawi 9,9,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,30,10
	lwz 10,4(10)
	cmpw 7,10,9
	bne+ 7,.L444
	.loc 10 636 0
	addi 11,11,132
.LVL668:
	slwi 11,11,2
.LVL669:
	add 11,29,11
	lwz 3,4(11)
.LBE4619:
.LBE4652:
	.loc 4 2484 0
	cmpwi 7,3,0
	beq- 7,.L444
	.loc 4 2485 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL670:
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL671:
.LBB4653:
.LBB4654:
	.loc 18 257 0
	lfs 13,0(26)
.LBB4655:
.LBB4656:
	.loc 17 402 0
	lfs 0,0(3)
.LVL672:
.LBE4656:
.LBE4655:
	.loc 18 257 0
	fcmpu 7,0,13
	bnl- 7,.L445
.LVL673:
	.loc 18 258 0
	stfs 0,168(1)
.LVL674:
.L445:
.LBB4657:
.LBB4658:
	.loc 17 402 0
	lfs 0,4(3)
.LVL675:
.LBE4658:
.LBE4657:
	.loc 18 261 0
	lfs 13,4(26)
	fcmpu 7,0,13
	bnl- 7,.L447
.LVL676:
	.loc 18 262 0
	stfs 0,172(1)
.LVL677:
.L447:
.LBB4659:
.LBB4660:
	.loc 17 402 0
	lfs 0,8(3)
.LVL678:
.LBE4660:
.LBE4659:
	.loc 18 265 0
	lfs 13,8(26)
	fcmpu 7,0,13
	bnl- 7,.L449
.LVL679:
	.loc 18 266 0
	stfs 0,176(1)
.LVL680:
.L449:
.LBB4661:
.LBB4662:
	.loc 17 402 0
	lfs 0,12(3)
.LVL681:
.LBE4662:
.LBE4661:
	.loc 18 269 0
	lfs 13,12(26)
	fcmpu 7,0,13
	bng- 7,.L451
.LVL682:
	.loc 18 270 0
	stfs 0,180(1)
.LVL683:
.L451:
.LBB4663:
.LBB4664:
	.loc 17 402 0
	lfs 0,16(3)
.LVL684:
.LBE4664:
.LBE4663:
	.loc 18 273 0
	lfs 13,16(26)
	fcmpu 7,0,13
	bng- 7,.L453
.LVL685:
	.loc 18 274 0
	stfs 0,184(1)
.LVL686:
.L453:
.LBB4665:
.LBB4666:
	.loc 17 402 0
	lfs 0,20(3)
.LVL687:
.LBE4666:
.LBE4665:
	.loc 18 277 0
	lfs 13,20(26)
	fcmpu 7,0,13
	bng- 7,.L481
.LVL688:
	.loc 18 278 0
	stfs 0,188(1)
.LVL689:
.L481:
	lwz 0,172(31)
.LBE4654:
.LBE4653:
	.loc 4 2482 0
	addi 25,25,1
.LVL690:
	cmpw 7,0,25
	bgt+ 7,.L456
.LVL691:
.L482:
	lfs 0,12(26)
.LVL692:
.L443:
.LBB4667:
.LBB4668:
	.loc 18 362 0
	fcmpu 7,30,0
	bgt- 7,.L457
.LVL693:
.LBB4669:
.LBB4670:
	.loc 4 2489 0
	addi 26,1,168
	.loc 17 402 0
	lfs 13,16(26)
.LVL694:
.LBE4670:
.LBE4669:
	.loc 18 362 0
	fcmpu 7,28,13
	bgt- 7,.L457
.LVL695:
.LBB4671:
.LBB4672:
	.loc 17 402 0
	lfs 12,20(26)
.LVL696:
.LBE4672:
.LBE4671:
	.loc 18 362 0
	fcmpu 7,27,12
	bgt- 7,.L457
.LVL697:
.LBB4673:
.LBB4674:
	.loc 17 402 0
	lfs 8,0(26)
.LVL698:
.LBE4674:
.LBE4673:
	.loc 18 362 0
	fcmpu 7,26,8
	blt- 7,.L457
.LVL699:
.LBB4675:
.LBB4676:
	.loc 17 402 0
	lfs 9,4(26)
.LVL700:
.LBE4676:
.LBE4675:
	.loc 18 362 0
	fcmpu 7,20,9
	bnl- 7,.L483
.LVL701:
.L457:
.LBE4668:
.LBE4667:
	.loc 4 4268 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBE4732:
.LBB4733:
.LBB4734:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L441
	cmpw 7,0,9
	beq- 7,.L441
	.loc 9 271 0
	lwz 31,12(9)
.LVL702:
.LBE4734:
.LBE4733:
	.loc 4 2480 0
	cmpwi 7,31,0
	bne+ 7,.L474
.LVL703:
.L441:
.LBE4765:
.LBE4773:
	.loc 4 2518 0
	lwz 0,492(1)
	lwz 14,272(1)
	mtlr 0
	lwz 15,276(1)
	lwz 16,280(1)
	lwz 17,284(1)
	lwz 18,288(1)
	lwz 19,292(1)
	lwz 20,296(1)
	lwz 21,300(1)
	lwz 22,304(1)
	lwz 23,308(1)
	lwz 24,312(1)
	lwz 25,316(1)
	lwz 26,320(1)
	lwz 27,324(1)
	lwz 28,328(1)
.LVL704:
	lwz 29,332(1)
	lwz 30,336(1)
	lwz 31,340(1)
	lfd 14,344(1)
	lfd 15,352(1)
	lfd 16,360(1)
	lfd 17,368(1)
	lfd 18,376(1)
	lfd 19,384(1)
	lfd 20,392(1)
	lfd 21,400(1)
	lfd 22,408(1)
	lfd 23,416(1)
.LVL705:
	lfd 24,424(1)
.LVL706:
	lfd 25,432(1)
.LVL707:
	lfd 26,440(1)
	lfd 27,448(1)
	lfd 28,456(1)
	lfd 29,464(1)
	lfd 30,472(1)
	lfd 31,480(1)
	addi 1,1,488
	.cfi_remember_state
.LCFI161:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 56
	.cfi_restore 55
	.cfi_restore 54
	.cfi_restore 53
	.cfi_restore 52
	.cfi_restore 51
	.cfi_restore 50
	.cfi_restore 49
	.cfi_restore 48
	.cfi_restore 47
	.cfi_restore 46
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
.LVL708:
.L483:
.LCFI162:
	.cfi_restore_state
.LBB4774:
.LBB4766:
.LBB4735:
.LBB4680:
.LBB4679:
.LBB4677:
.LBB4678:
	.loc 17 402 0
	lfs 10,8(26)
.LVL709:
.LBE4678:
.LBE4677:
	.loc 18 362 0
	fcmpu 7,18,10
	blt- 7,.L457
.LVL710:
.LBE4679:
.LBE4680:
.LBB4681:
.LBB4682:
	.loc 18 212 0
	fadds 9,13,9
.LVL711:
.LBE4682:
.LBE4681:
.LBE4735:
.LBE4766:
.LBE4774:
	.loc 17 431 0
	lfs 11,4(28)
	lfs 13,.LC35@l(27)
.LVL712:
.LBB4775:
.LBB4767:
.LBB4736:
.LBB4684:
.LBB4683:
	.loc 18 212 0
	fadds 0,8,0
.LVL713:
	fadds 10,12,10
.LBE4683:
.LBE4684:
.LBE4736:
.LBE4767:
.LBE4775:
	.loc 17 431 0
	lfs 12,8(28)
.LVL714:
	fmsubs 11,9,13,11
	lfs 9,0(28)
.LBB4776:
.LBB4768:
.LBB4737:
	.loc 4 2496 0
	mr 3,26
	mr 4,28
.LBE4737:
.LBE4768:
.LBE4776:
	.loc 17 431 0
	fmsubs 0,0,13,9
.LBB4777:
.LBB4769:
.LBB4738:
	.loc 4 2496 0
	addi 5,1,60
.LBB4685:
.LBB4628:
	.loc 17 527 0
	fmuls 9,11,11
.LBE4628:
.LBE4685:
	.loc 4 2496 0
	addi 6,1,8
.LBE4738:
.LBE4769:
.LBE4777:
	.loc 17 431 0
	fmsubs 12,10,13,12
.LVL715:
.LBB4778:
.LBB4770:
.LBB4739:
.LBB4686:
.LBB4629:
.LBB4626:
.LBB4624:
	.loc 19 250 0
	lfs 10,.LC36@l(22)
.LBE4624:
.LBE4626:
.LBE4629:
.LBE4686:
.LBE4739:
.LBE4770:
.LBE4778:
	.loc 17 431 0
	la 25,.LC35@l(27)
	.loc 17 527 0
	fmadds 9,0,0,9
	fmadds 9,12,12,9
	stfs 9,264(1)
.LVL716:
.LBB4779:
.LBB4771:
.LBB4740:
.LBB4687:
.LBB4630:
.LBB4627:
.LBB4625:
	.loc 19 246 0
	fmuls 13,9,13
	.loc 19 248 0
	lwz 9,264(1)
	.loc 4 2466 0
	fneg 13,13
	.loc 19 248 0
	srawi 0,9,1
	.loc 19 249 0
	lis 9,0x5f37
	ori 9,9,23007
	subf 9,0,9
	stw 9,264(1)
.LVL717:
	.loc 19 250 0
	lfs 7,264(1)
	fmuls 9,7,7
.LVL718:
	fmadds 13,13,9,10
	fmuls 13,7,13
.LVL719:
.LBE4625:
.LBE4627:
	.loc 17 529 0
	fmuls 0,0,13
.LVL720:
	.loc 17 530 0
	fmuls 11,11,13
.LVL721:
	.loc 17 531 0
	fmuls 13,12,13
.LVL722:
	.loc 17 529 0
	stfs 0,60(1)
	.loc 17 530 0
	stfs 11,64(1)
	.loc 17 531 0
	stfs 13,68(1)
.LBE4630:
.LBE4687:
	.loc 4 2496 0
	bl _ZNK8idBounds15RayIntersectionERK6idVec3S2_Rf
.LVL723:
	.loc 4 2497 0
	lfs 31,.LC34@l(21)
	lfs 13,8(1)
	lfs 0,.LC37@l(23)
	fsubs 31,31,13
	fmuls 31,31,0
.LVL724:
	.loc 4 2498 0
	fcmpu 7,31,29
	blt+ 7,.L457
	.loc 4 2502 0
	lwz 19,gameRenderWorld@l(18)
	mr 3,31
	la 26,gameRenderWorld@l(18)
.LVL725:
	lwz 9,0(19)
	lwz 20,176(9)
	bl _ZNK8idEntity8IsHiddenEv
	cmpwi 7,3,0
	beq- 7,.L467
	lis 9,colorLtGrey@ha
	la 9,colorLtGrey@l(9)
.L459:
.LVL726:
.LBB4688:
.LBB4689:
	.loc 17 905 0 discriminator 3
	lfs 11,4(9)
.LBE4689:
.LBE4688:
	.loc 4 2502 0 discriminator 3
	mr 3,31
.LBB4693:
.LBB4692:
	.loc 17 905 0 discriminator 3
	lfs 13,8(9)
	lfs 0,12(9)
	fmuls 11,31,11
	lfs 12,0(9)
	fmuls 13,31,13
	fmuls 0,31,0
.LVL727:
	fmuls 12,31,12
.LBB4690:
.LBB4691:
	.loc 17 868 0 discriminator 3
	stfs 11,156(1)
	.loc 17 869 0 discriminator 3
	stfs 13,160(1)
	.loc 17 870 0 discriminator 3
	stfs 0,164(1)
	.loc 17 867 0 discriminator 3
	stfs 12,152(1)
.LBE4691:
.LBE4690:
.LBE4692:
.LBE4693:
	.loc 4 2502 0 discriminator 3
	bl _ZNK8idEntity10GetPhysicsEv
.LVL728:
	lwz 9,0(3)
	li 4,-1
	lwz 0,60(9)
	mtctr 0
	bctrl
	addi 4,1,152
	mr 5,3
	mr 6,17
	li 7,0
	mtctr 20
	mr 3,19
	bctrl
.LBB4694:
	.loc 4 2503 0 discriminator 3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL729:
.LBB4612:
.LBB4613:
	.loc 18 362 0 discriminator 3
	lfs 0,12(3)
	fcmpu 7,21,0
	bgt- 7,.L460
.LVL730:
	.loc 18 362 0 is_stmt 0
	lfs 0,16(3)
	fcmpu 7,19,0
	bgt- 7,.L460
.LVL731:
	lfs 0,20(3)
	fcmpu 7,17,0
	bng- 7,.L484
.LVL732:
.L460:
.LBE4613:
.LBE4612:
.LBE4694:
	.loc 4 2510 0 is_stmt 1 discriminator 1
	lwz 0,172(31)
	cmpwi 7,0,0
	ble- 7,.L457
	.loc 4 2510 0 is_stmt 0
	li 20,0
.LBB4695:
.LBB4696:
	.loc 17 905 0 is_stmt 1
	lis 16,colorGreen@ha
	b .L464
.LVL733:
.L463:
.LBE4696:
.LBE4695:
	.loc 4 2510 0
	cmpw 7,0,20
	ble- 7,.L457
.LVL734:
.L464:
.LBB4706:
.LBB4707:
	.loc 10 634 0
	lwz 11,184(31)
	slwi 9,20,2
.LBE4707:
.LBE4706:
	.loc 4 2510 0
	addi 20,20,1
.LVL735:
.LBB4711:
.LBB4708:
	.loc 10 634 0
	lwzx 9,11,9
	rlwinm 11,9,0,20,31
.LVL736:
	.loc 10 635 0
	srawi 9,9,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,30,10
	lwz 10,4(10)
	cmpw 7,10,9
	bne+ 7,.L463
	.loc 10 636 0
	addi 11,11,132
.LVL737:
.LBE4708:
.LBE4711:
.LBB4712:
.LBB4639:
	.loc 17 905 0
	la 9,colorYellow@l(24)
.LBE4639:
.LBE4712:
.LBB4713:
.LBB4709:
	.loc 10 636 0
	slwi 11,11,2
.LVL738:
.LBE4709:
.LBE4713:
	.loc 4 2513 0
	mr 3,31
.LBB4714:
.LBB4710:
	.loc 10 636 0
	add 11,29,11
	lwz 19,4(11)
.LBE4710:
.LBE4714:
	.loc 4 2512 0
	cmpwi 7,19,0
	beq- 7,.L463
.LBB4715:
.LBB4640:
	.loc 17 905 0
	lfs 11,4(9)
	lfs 13,8(9)
	lfs 0,12(9)
	fmuls 11,31,11
	lfs 12,colorYellow@l(24)
	fmuls 13,31,13
.LBE4640:
.LBE4715:
	.loc 4 2513 0
	lwz 9,0(26)
.LBB4716:
.LBB4641:
	.loc 17 905 0
	fmuls 0,31,0
	fmuls 12,31,12
.LBE4641:
.LBE4716:
	.loc 4 2513 0
	lwz 11,0(9)
.LBB4717:
.LBB4642:
.LBB4633:
.LBB4634:
	.loc 17 868 0
	stfs 11,92(1)
.LBE4634:
.LBE4633:
.LBE4642:
.LBE4717:
	.loc 4 2513 0
	lwz 15,160(11)
.LVL739:
.LBB4718:
.LBB4643:
.LBB4637:
.LBB4635:
	.loc 17 867 0
	stfs 12,88(1)
.LBE4635:
.LBE4637:
.LBE4643:
.LBE4718:
	.loc 4 2513 0
	stw 9,268(1)
.LBB4719:
.LBB4644:
.LBB4638:
.LBB4636:
	.loc 17 869 0
	stfs 13,96(1)
	.loc 17 870 0
	stfs 0,100(1)
.LBE4636:
.LBE4638:
.LBE4644:
.LBE4719:
	.loc 4 2513 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL740:
	lwz 11,0(3)
	li 4,-1
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL741:
.LBB4720:
.LBB4721:
	.loc 18 212 0
	lfs 9,16(3)
	lfs 10,20(3)
	lfs 0,0(3)
	lfs 12,4(3)
	lfs 13,8(3)
	lfs 11,12(3)
	fadds 12,9,12
	fadds 13,10,13
.LBE4721:
.LBE4720:
	.loc 4 2513 0
	mr 3,19
.LVL742:
.LBB4725:
.LBB4724:
	.loc 18 212 0
	fadds 11,11,0
	lfs 0,0(25)
	fmuls 12,12,0
.LVL743:
	fmuls 13,13,0
.LVL744:
	fmuls 0,11,0
.LBB4722:
.LBB4723:
	.loc 17 397 0
	stfs 12,16(1)
	.loc 17 398 0
	stfs 13,20(1)
	.loc 17 396 0
	stfs 0,12(1)
.LBE4723:
.LBE4722:
.LBE4724:
.LBE4725:
	.loc 4 2513 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL745:
	lwz 11,0(3)
	li 4,0
	lwz 0,132(11)
	mtctr 0
	bctrl
	lwz 9,268(1)
	mr 6,3
	addi 5,1,12
	li 7,10
	li 8,0
	mtctr 15
	mr 3,9
	addi 4,1,88
	bctrl
.LBB4726:
.LBB4701:
	.loc 17 905 0
	la 9,colorGreen@l(16)
	lfs 12,4(9)
.LBE4701:
.LBE4726:
	.loc 4 2514 0
	mr 3,19
.LBB4727:
.LBB4702:
	.loc 17 905 0
	lfs 13,8(9)
	lfs 0,12(9)
	fmuls 12,31,12
	lfs 11,colorGreen@l(16)
	fmuls 13,31,13
.LBE4702:
.LBE4727:
	.loc 4 2514 0
	lwz 15,0(26)
.LBB4728:
.LBB4703:
	.loc 17 905 0
	fmuls 0,31,0
	fmuls 11,31,11
.LBE4703:
.LBE4728:
	.loc 4 2514 0
	lwz 9,0(15)
.LBB4729:
.LBB4704:
.LBB4697:
.LBB4698:
	.loc 17 868 0
	stfs 12,76(1)
.LBE4698:
.LBE4697:
.LBE4704:
.LBE4729:
	.loc 4 2514 0
	lwz 19,176(9)
.LVL746:
.LBB4730:
.LBB4705:
.LBB4700:
.LBB4699:
	.loc 17 867 0
	stfs 11,72(1)
	.loc 17 869 0
	stfs 13,80(1)
	.loc 17 870 0
	stfs 0,84(1)
.LBE4699:
.LBE4700:
.LBE4705:
.LBE4730:
	.loc 4 2514 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL747:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	addi 4,1,72
	mr 6,3
	addi 5,1,192
	mr 3,15
	li 7,0
	mtctr 19
	bctrl
	lwz 0,172(31)
	b .L463
.LVL748:
.L467:
	.loc 4 2502 0
	lis 9,colorOrange@ha
	la 9,colorOrange@l(9)
	b .L459
.LVL749:
.L484:
.LBB4731:
.LBB4615:
.LBB4614:
	.loc 18 362 0
	lfs 0,0(3)
	fcmpu 7,16,0
	blt- 7,.L460
.LVL750:
	lfs 0,4(3)
	fcmpu 7,15,0
	blt- 7,.L460
.LVL751:
	lfs 0,8(3)
	fcmpu 7,14,0
	blt- 7,.L460
.LBE4614:
.LBE4615:
.LBB4616:
	.loc 4 2504 0
	mr 3,31
.LVL752:
.LBB4467:
.LBB4468:
	.loc 17 905 0
	lis 16,colorWhite@ha
.LBE4468:
.LBE4467:
	.loc 4 2504 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
.LBB4483:
.LBB4473:
	.loc 17 905 0
	la 20,colorWhite@l(16)
.LBE4473:
.LBE4483:
	.loc 4 2504 0
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL753:
.LBB4484:
.LBB4474:
	.loc 17 905 0
	lfs 11,colorWhite@l(16)
.LBE4474:
.LBE4484:
.LBB4485:
.LBB4486:
	.loc 18 212 0
	lfs 12,0(3)
.LBE4486:
.LBE4485:
	.loc 4 2505 0
	lis 11,.LC38@ha
.LBB4505:
.LBB4493:
	.loc 18 212 0
	lfs 13,4(3)
.LBE4493:
.LBE4505:
.LBB4506:
.LBB4475:
	.loc 17 905 0
	fmuls 11,31,11
.LBE4475:
.LBE4506:
.LBB4507:
.LBB4494:
	.loc 18 212 0
	lfs 0,8(3)
.LBE4494:
.LBE4507:
	.loc 4 2505 0
	addi 5,1,36
.LBB4508:
.LBB4495:
	.loc 18 212 0
	lfs 8,12(3)
.LBE4495:
.LBE4508:
	.loc 4 2505 0
	addi 6,1,136
.LBB4509:
.LBB4496:
	.loc 18 212 0
	lfs 9,16(3)
.LBE4496:
.LBE4509:
	.loc 4 2505 0
	addi 7,1,216
.LVL754:
.LBB4510:
.LBB4497:
	.loc 18 212 0
	lfs 10,20(3)
	fadds 8,8,12
	fadds 9,9,13
.LBE4497:
.LBE4510:
	.loc 4 2505 0
	lwz 3,gameRenderWorld@l(18)
.LVL755:
.LBB4511:
.LBB4498:
	.loc 18 212 0
	fadds 10,10,0
	lfs 0,.LC35@l(27)
.LBE4498:
.LBE4511:
.LBB4512:
.LBB4476:
	.loc 17 905 0
	lfs 12,4(20)
.LBE4476:
.LBE4512:
	.loc 4 2505 0
	li 8,1
.LBB4513:
.LBB4499:
	.loc 18 212 0
	fmuls 8,8,0
.LVL756:
.LBE4499:
.LBE4513:
.LBB4514:
.LBB4477:
	.loc 17 905 0
	lfs 13,8(20)
.LBE4477:
.LBE4514:
.LBB4515:
.LBB4500:
	.loc 18 212 0
	fmuls 9,9,0
.LVL757:
.LBE4500:
.LBE4515:
	.loc 4 2505 0
	lfs 22,.LC38@l(11)
.LBB4516:
.LBB4501:
	.loc 18 212 0
	fmuls 10,10,0
.LVL758:
.LBE4501:
.LBE4516:
.LBB4517:
.LBB4478:
	.loc 17 905 0
	lfs 0,12(20)
.LBE4478:
.LBE4517:
.LBB4518:
.LBB4502:
.LBB4487:
.LBB4488:
	.loc 17 396 0
	stfs 8,48(1)
.LBE4488:
.LBE4487:
.LBE4502:
.LBE4518:
.LBB4519:
.LBB4479:
	.loc 17 905 0
	fmuls 12,31,12
.LBE4479:
.LBE4519:
.LBB4520:
.LBB4503:
.LBB4491:
.LBB4489:
	.loc 17 397 0
	stfs 9,52(1)
.LBE4489:
.LBE4491:
.LBE4503:
.LBE4520:
.LBB4521:
.LBB4522:
	.loc 17 431 0
	fsubs 8,8,25
.LVL759:
.LBE4522:
.LBE4521:
.LBB4533:
.LBB4504:
.LBB4492:
.LBB4490:
	.loc 17 398 0
	stfs 10,56(1)
.LBE4490:
.LBE4492:
.LBE4504:
.LBE4533:
.LBB4534:
.LBB4529:
	.loc 17 431 0
	fsubs 9,9,24
.LVL760:
	fsubs 10,10,23
.LVL761:
.LBE4529:
.LBE4534:
	.loc 4 4268 0
	lwz 4,72(31)
.LVL762:
	.loc 4 2505 0
	lwz 9,0(3)
.LBB4535:
.LBB4480:
	.loc 17 905 0
	fmuls 13,31,13
	fmuls 0,31,0
.LBE4480:
.LBE4535:
.LBB4536:
.LBB4530:
.LBB4523:
.LBB4524:
	.loc 17 396 0
	stfs 8,36(1)
.LBE4524:
.LBE4523:
.LBE4530:
.LBE4536:
	.loc 4 2505 0
	lwz 0,204(9)
	fmr 1,22
.LBB4537:
.LBB4531:
.LBB4527:
.LBB4525:
	.loc 17 397 0
	stfs 9,40(1)
.LBE4525:
.LBE4527:
.LBE4531:
.LBE4537:
	.loc 4 2505 0
	li 10,0
.LBB4538:
.LBB4532:
.LBB4528:
.LBB4526:
	.loc 17 398 0
	stfs 10,44(1)
.LVL763:
.LBE4526:
.LBE4528:
.LBE4532:
.LBE4538:
	.loc 4 2505 0
	mtctr 0
.LBB4539:
.LBB4481:
.LBB4469:
.LBB4470:
	.loc 17 867 0
	stfs 11,136(1)
.LBE4470:
.LBE4469:
.LBE4481:
.LBE4539:
	.loc 4 2505 0
	li 9,0
.LBB4540:
.LBB4482:
.LBB4472:
.LBB4471:
	.loc 17 868 0
	stfs 12,140(1)
	.loc 17 869 0
	stfs 13,144(1)
	.loc 17 870 0
	stfs 0,148(1)
.LBE4471:
.LBE4472:
.LBE4482:
.LBE4540:
	.loc 4 2505 0
	bctrl
.LVL764:
	.loc 4 2506 0
	lwz 15,gameRenderWorld@l(18)
	mr 3,31
	lwz 9,0(15)
	lwz 19,204(9)
	bl _ZNK8idEntity16GetEntityDefNameEv
.LBB4541:
.LBB4542:
	.loc 17 905 0
	lfs 12,4(20)
.LBE4542:
.LBE4541:
	.loc 4 2506 0
	addi 5,1,48
.LBB4558:
.LBB4551:
	.loc 17 905 0
	lfs 13,8(20)
.LBE4551:
.LBE4558:
	.loc 4 2506 0
	fmr 1,22
.LBB4559:
.LBB4552:
	.loc 17 905 0
	lfs 0,12(20)
	fmuls 12,31,12
	lfs 11,colorWhite@l(16)
	fmuls 13,31,13
	fmuls 0,31,0
.LBE4552:
.LBE4559:
	.loc 4 2506 0
	addi 6,1,120
.LBB4560:
.LBB4553:
	.loc 17 905 0
	fmuls 11,31,11
.LBE4553:
.LBE4560:
	.loc 4 2506 0
	addi 7,1,216
.LVL765:
.LBB4561:
.LBB4554:
.LBB4543:
.LBB4544:
	.loc 17 868 0
	stfs 12,124(1)
.LBE4544:
.LBE4543:
.LBE4554:
.LBE4561:
	.loc 4 2506 0
	mtctr 19
.LBB4562:
.LBB4555:
.LBB4548:
.LBB4545:
	.loc 17 869 0
	stfs 13,128(1)
.LBE4545:
.LBE4548:
.LBE4555:
.LBE4562:
	.loc 4 2506 0
	mr 4,3
.LVL766:
.LBB4563:
.LBB4556:
.LBB4549:
.LBB4546:
	.loc 17 867 0
	stfs 11,120(1)
.LBE4546:
.LBE4549:
.LBE4556:
.LBE4563:
	.loc 4 2506 0
	mr 3,15
.LBB4564:
.LBB4557:
.LBB4550:
.LBB4547:
	.loc 17 870 0
	stfs 0,132(1)
.LBE4547:
.LBE4550:
.LBE4557:
.LBE4564:
	.loc 4 2506 0
	li 8,1
	li 10,0
	li 9,0
	bctrl
.LVL767:
	.loc 4 2507 0
	lwz 15,gameRenderWorld@l(18)
	lwz 4,4(31)
	mr 3,14
	lwz 9,0(15)
	lwz 19,204(9)
	crxor 6,6,6
	bl _Z2vaPKcz
.LBB4565:
.LBB4566:
	.loc 17 905 0
	lfs 12,4(20)
.LBE4566:
.LBE4565:
	.loc 4 2507 0
	mr 4,3
.LVL768:
.LBB4583:
.LBB4575:
	.loc 17 905 0
	lfs 13,8(20)
.LBE4575:
.LBE4583:
	.loc 4 2507 0
	mr 3,15
.LBB4584:
.LBB4576:
	.loc 17 905 0
	lfs 0,12(20)
	fmuls 12,31,12
	lfs 11,colorWhite@l(16)
	fmuls 13,31,13
.LBE4576:
.LBE4584:
.LBB4585:
.LBB4586:
	.loc 17 452 0
	lfs 9,52(1)
.LBE4586:
.LBE4585:
.LBB4599:
.LBB4577:
	.loc 17 905 0
	fmuls 0,31,0
.LBE4577:
.LBE4599:
.LBB4600:
.LBB4593:
	.loc 17 452 0
	lfs 10,56(1)
.LBE4593:
.LBE4600:
.LBB4601:
.LBB4578:
	.loc 17 905 0
	fmuls 11,31,11
.LBE4578:
.LBE4601:
.LBB4602:
.LBB4594:
	.loc 17 452 0
	lfs 8,48(1)
	fadds 9,24,9
	fadds 10,23,10
.LVL769:
.LBE4594:
.LBE4602:
.LBB4603:
.LBB4579:
.LBB4567:
.LBB4568:
	.loc 17 868 0
	stfs 12,108(1)
.LBE4568:
.LBE4567:
.LBE4579:
.LBE4603:
.LBB4604:
.LBB4595:
	.loc 17 452 0
	fadds 8,25,8
.LBE4595:
.LBE4604:
.LBB4605:
.LBB4580:
.LBB4572:
.LBB4569:
	.loc 17 867 0
	stfs 11,104(1)
.LBE4569:
.LBE4572:
.LBE4580:
.LBE4605:
.LBB4606:
.LBB4596:
.LBB4587:
.LBB4588:
	.loc 17 397 0
	stfs 9,28(1)
.LBE4588:
.LBE4587:
.LBE4596:
.LBE4606:
	.loc 4 2507 0
	addi 5,1,24
.LBB4607:
.LBB4597:
.LBB4591:
.LBB4589:
	.loc 17 398 0
	stfs 10,32(1)
.LVL770:
.LBE4589:
.LBE4591:
.LBE4597:
.LBE4607:
	.loc 4 2507 0
	fmr 1,22
.LBB4608:
.LBB4598:
.LBB4592:
.LBB4590:
	.loc 17 396 0
	stfs 8,24(1)
.LBE4590:
.LBE4592:
.LBE4598:
.LBE4608:
	.loc 4 2507 0
	addi 6,1,104
.LBB4609:
.LBB4581:
.LBB4573:
.LBB4570:
	.loc 17 869 0
	stfs 13,112(1)
.LBE4570:
.LBE4573:
.LBE4581:
.LBE4609:
	.loc 4 2507 0
	addi 7,1,216
.LVL771:
.LBB4610:
.LBB4582:
.LBB4574:
.LBB4571:
	.loc 17 870 0
	stfs 0,116(1)
.LBE4571:
.LBE4574:
.LBE4582:
.LBE4610:
	.loc 4 2507 0
	li 8,1
	li 9,0
	li 10,0
	mtctr 19
	bctrl
.LVL772:
	b .L460
.LBE4616:
.LBE4731:
.LBE4740:
.LBE4771:
.LBE4779:
	.cfi_endproc
.LFE2898:
	.size	_ZN11idGameLocal11ShowTargetsEv, .-_ZN11idGameLocal11ShowTargetsEv
	.align 2
	.globl _ZNK11idGameLocal6NumAASEv
	.type	_ZNK11idGameLocal6NumAASEv, @function
_ZNK11idGameLocal6NumAASEv:
.LFB2906:
	.loc 4 2665 0
	.cfi_startproc
.LVL773:
	.loc 4 4268 0
	addis 3,3,0x25
.LVL774:
	.loc 4 2667 0
	lwz 3,2124(3)
.LVL775:
	blr
	.cfi_endproc
.LFE2906:
	.size	_ZNK11idGameLocal6NumAASEv, .-_ZNK11idGameLocal6NumAASEv
	.align 2
	.globl _ZNK11idGameLocal6GetAASEi
	.type	_ZNK11idGameLocal6GetAASEi, @function
_ZNK11idGameLocal6GetAASEi:
.LFB2907:
	.loc 4 2674 0
	.cfi_startproc
.LVL776:
	.loc 4 2675 0
	cmpwi 0,4,0
	.loc 4 2674 0
	mflr 0
	stwu 1,-24(1)
.LCFI163:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	.loc 4 2680 0
	li 31,0
	.cfi_offset 31, -4
	.loc 4 2674 0
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 4 2675 0
	blt- 0,.L487
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 4 4268 0 discriminator 1
	addis 30,3,0x25
	.loc 4 2675 0 discriminator 1
	lwz 0,2124(30)
	cmpw 7,4,0
	bge- 7,.L487
.LVL777:
	.loc 4 2676 0 discriminator 4
	lwz 9,2136(30)
.LBB4780:
.LBB4781:
	.loc 8 573 0 discriminator 4
	slwi 29,4,2
.LBE4781:
.LBE4780:
	.loc 4 2676 0 discriminator 4
	lwzx 3,9,29
.LVL778:
	cmpwi 7,3,0
	beq- 7,.L487
	.loc 4 2676 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL779:
	cmpwi 7,3,0
	beq- 7,.L487
	.loc 4 2677 0 is_stmt 1 discriminator 4
	lwz 9,2136(30)
	lwzx 31,9,29
.LVL780:
.L487:
	.loc 4 2681 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI164:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2907:
	.size	_ZNK11idGameLocal6GetAASEi, .-_ZNK11idGameLocal6GetAASEi
	.align 2
	.globl _ZN11idGameLocal12RunDebugInfoEv
	.type	_ZN11idGameLocal12RunDebugInfoEv, @function
_ZN11idGameLocal12RunDebugInfoEv:
.LFB2899:
	.loc 4 2525 0
	.cfi_startproc
.LVL781:
	mflr 0
	stwu 1,-368(1)
.LCFI165:
	.cfi_def_cfa_offset 368
	.cfi_register 65, 0
	stw 26,208(1)
	stw 0,372(1)
	stw 27,212(1)
	mr 27,3
	.cfi_offset 27, -156
	.cfi_offset 65, 4
	.cfi_offset 26, -160
	stfd 15,232(1)
	stfd 16,240(1)
	stfd 17,248(1)
	stfd 18,256(1)
	stfd 19,264(1)
	stfd 20,272(1)
	stfd 21,280(1)
	stfd 22,288(1)
	stfd 23,296(1)
	stfd 24,304(1)
	stfd 25,312(1)
	stfd 26,320(1)
	stfd 27,328(1)
	stfd 28,336(1)
	stfd 29,344(1)
	stfd 30,352(1)
	stfd 31,360(1)
	stw 16,168(1)
	stw 17,172(1)
	stw 18,176(1)
	stw 19,180(1)
	stw 20,184(1)
	stw 21,188(1)
	stw 22,192(1)
	stw 23,196(1)
	stw 24,200(1)
	stw 25,204(1)
	stw 28,216(1)
	stw 29,220(1)
	stw 30,224(1)
	stw 31,228(1)
.LBB5051:
	.loc 4 2529 0
	.cfi_offset 31, -140
	.cfi_offset 30, -144
	.cfi_offset 29, -148
	.cfi_offset 28, -152
	.cfi_offset 25, -164
	.cfi_offset 24, -168
	.cfi_offset 23, -172
	.cfi_offset 22, -176
	.cfi_offset 21, -180
	.cfi_offset 20, -184
	.cfi_offset 19, -188
	.cfi_offset 18, -192
	.cfi_offset 17, -196
	.cfi_offset 16, -200
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	.cfi_offset 52, -96
	.cfi_offset 51, -104
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	.cfi_offset 47, -136
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL782:
	.loc 4 2530 0
	mr. 26,3
	beq- 0,.L492
	.loc 4 2534 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL783:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB5052:
.LBB5053:
.LBB5054:
	.loc 4 2536 0
	lis 9,g_showEntityInfo+44@ha
	.loc 7 142 0
	lwz 9,g_showEntityInfo+44@l(9)
.LBE5054:
.LBE5053:
.LBE5052:
	.loc 4 2534 0
	mr 24,3
.LVL784:
.LBB5218:
	.loc 4 2536 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L550
.LVL785:
.L494:
.LBE5218:
.LBB5219:
.LBB5220:
.LBB5221:
	.loc 4 2578 0
	lis 9,g_showActiveEntities+44@ha
	.loc 7 142 0
	lwz 9,g_showActiveEntities+44@l(9)
.LBE5221:
.LBE5220:
	.loc 4 2578 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L510
	.loc 4 4268 0
	addis 11,27,0x1
	lwz 9,-32176(11)
	lwz 0,-32180(11)
.LBB5222:
.LBB5223:
.LBB5224:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L510
	cmpw 7,0,9
	beq- 7,.L510
	.loc 9 271 0
	lwz 30,12(9)
.LVL786:
.LBE5224:
.LBE5223:
	.loc 4 2579 0
	cmpwi 7,30,0
	beq- 7,.L510
.LBB5225:
	.loc 4 2581 0
	lis 9,.LC2@ha
	lis 29,gameRenderWorld@ha
	.loc 4 2588 0
	lis 23,colorGreen@ha
	.loc 4 2586 0
	lis 25,colorYellow@ha
	.loc 4 2581 0
	lfs 31,.LC2@l(9)
	addi 31,1,80
	la 29,gameRenderWorld@l(29)
	.loc 4 2582 0
	lis 21,.LC41@ha
	.loc 4 2583 0
	lis 22,.LC40@ha
	.loc 4 2588 0
	la 23,colorGreen@l(23)
	.loc 4 2586 0
	la 25,colorYellow@l(25)
.LVL787:
.L516:
	.loc 4 2580 0
	mr 3,30
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,56(9)
	mtctr 0
	bctrl
	lwz 9,8(3)
	lwz 0,12(3)
	lwz 10,0(3)
	lwz 11,4(3)
	stw 10,80(1)
	stw 11,84(1)
	stw 9,88(1)
	stw 0,92(1)
	lwz 9,16(3)
	lwz 0,20(3)
	stw 9,96(1)
	stw 0,100(1)
.LVL788:
.LBB5226:
.LBB5227:
.LBB5228:
.LBB5229:
	.loc 17 402 0
	lfs 0,0(31)
.LVL789:
.LBE5229:
.LBE5228:
.LBB5230:
.LBB5231:
	lfs 13,12(31)
.LBE5231:
.LBE5230:
	.loc 18 216 0
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L511
.LVL790:
.LBB5232:
.LBB5233:
	.loc 17 402 0
	lfs 12,4(31)
.LVL791:
.LBE5233:
.LBE5232:
.LBB5234:
.LBB5235:
	lfs 11,16(31)
.LBE5235:
.LBE5234:
	.loc 18 216 0
	fcmpu 7,12,11
	cror 30,29,30
	beq- 7,.L511
.LVL792:
.LBB5236:
.LBB5237:
	.loc 17 402 0
	lfs 10,8(31)
.LVL793:
.LBE5237:
.LBE5236:
.LBB5238:
.LBB5239:
	lfs 9,20(31)
.LBE5239:
.LBE5238:
	.loc 18 216 0
	fcmpu 7,10,9
	cror 30,29,30
	beq- 7,.L511
.LVL794:
.LBB5240:
.LBB5241:
	.loc 18 219 0
	fsubs 0,13,0
	fsubs 12,11,12
	fsubs 9,9,10
	fmuls 10,0,12
	fmuls 10,10,9
.LBE5241:
.LBE5240:
.LBE5227:
.LBE5226:
	.loc 4 2581 0
	fcmpu 7,10,31
	cror 30,28,30
	beq- 7,.L511
	.loc 4 2586 0
	lwz 20,0(29)
	mr 3,30
	.loc 4 2585 0
	lwz 0,192(30)
	.loc 4 2586 0
	lwz 9,0(20)
	lwz 28,176(9)
	.loc 4 2585 0
	andis. 9,0,64
	beq- 0,.L514
.LVL795:
.L561:
	.loc 4 2586 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,25
	mr 6,3
	mr 5,31
	mr 3,20
	li 7,0
	mtctr 28
	bctrl
.L515:
	.loc 4 4268 0
	lwz 9,32(30)
	lwz 0,28(30)
.LBE5225:
.LBB5242:
.LBB5243:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L510
	cmpw 7,0,9
	beq- 7,.L510
	.loc 9 271 0
	lwz 30,12(9)
.LVL796:
.LBE5243:
.LBE5242:
	.loc 4 2579 0
	cmpwi 7,30,0
	bne+ 7,.L516
.LVL797:
.L510:
.LBE5222:
.LBE5219:
.LBB5246:
.LBB5247:
	.loc 4 2593 0
	lis 9,g_showTargets+44@ha
	.loc 7 142 0
	lwz 9,g_showTargets+44@l(9)
.LBE5247:
.LBE5246:
	.loc 4 2593 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L551
.LBB5248:
.LBB5249:
	.loc 4 2597 0
	lis 9,g_showTriggers+44@ha
	.loc 7 142 0
	lwz 9,g_showTriggers+44@l(9)
.LBE5249:
.LBE5248:
	.loc 4 2597 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L552
.L518:
.LBB5251:
.LBB5252:
	.loc 4 2601 0
	lis 9,ai_showCombatNodes+44@ha
	.loc 7 142 0
	lwz 9,ai_showCombatNodes+44@l(9)
.LBE5252:
.LBE5251:
	.loc 4 2601 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L553
.L519:
.LBB5254:
.LBB5255:
	.loc 4 2605 0
	lis 9,ai_showPaths+44@ha
	.loc 7 142 0
	lwz 9,ai_showPaths+44@l(9)
.LBE5255:
.LBE5254:
	.loc 4 2605 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L554
.L520:
.LBB5257:
.LBB5258:
	.loc 4 2609 0
	lis 9,g_editEntityMode+44@ha
	.loc 7 142 0
	lwz 9,g_editEntityMode+44@l(9)
.LBE5258:
.LBE5257:
	.loc 4 2609 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L555
.L521:
.LBB5260:
.LBB5261:
	.loc 4 2613 0
	lis 9,g_showCollisionWorld+44@ha
	lis 31,collisionModelManager@ha
	.loc 7 142 0
	lwz 9,g_showCollisionWorld+44@l(9)
.LBE5261:
.LBE5260:
	.loc 4 2613 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L556
.L522:
.LBB5262:
.LBB5263:
	.loc 4 2617 0
	lis 9,g_showCollisionModels+44@ha
	.loc 7 142 0
	lwz 9,g_showCollisionModels+44@l(9)
.LBE5263:
.LBE5262:
	.loc 4 2617 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L557
.LBB5264:
.LBB5265:
	.loc 4 2621 0
	lis 9,g_showCollisionTraces+44@ha
	.loc 7 142 0
	lwz 9,g_showCollisionTraces+44@l(9)
.LBE5265:
.LBE5264:
	.loc 4 2621 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L558
.L525:
.LBB5267:
.LBB5268:
	.loc 4 2625 0
	lis 9,g_showPVS+44@ha
	.loc 7 143 0
	lwz 9,g_showPVS+44@l(9)
	lwz 5,36(9)
.LBE5268:
.LBE5267:
	.loc 4 2625 0
	cmpwi 7,5,0
	beq- 7,.L526
	.loc 4 2626 0
	xori 5,5,2
	addis 3,27,0x25
	cntlzw 5,5
	addi 3,3,1236
	mr 4,24
	srwi 5,5,5
	bl _ZNK5idPVS7DrawPVSERK6idVec39pvsType_t
.L526:
.LBB5269:
.LBB5270:
.LBB5271:
	.loc 4 2629 0
	lis 9,aas_test+44@ha
	.loc 7 143 0
	lwz 9,aas_test+44@l(9)
	lwz 4,36(9)
.LBE5271:
.LBE5270:
	.loc 4 2629 0
	cmpwi 7,4,0
	blt- 7,.L527
.LBB5272:
	.loc 4 2630 0
	mr 3,27
	bl _ZNK11idGameLocal6GetAASEi
.LVL798:
.LBB5273:
	.loc 4 2631 0
	mr. 30,3
	beq- 0,.L527
.LBB5274:
	.loc 4 2632 0
	lwz 9,0(30)
	mr 4,24
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL799:
.LBB5275:
.LBB5276:
.LBB5277:
	.loc 4 2633 0
	lis 9,ai_testPredictPath+44@ha
	.loc 7 142 0
	lwz 9,ai_testPredictPath+44@l(9)
.LBE5277:
.LBE5276:
	.loc 4 2633 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L559
.LVL800:
.L527:
.LBE5275:
.LBE5274:
.LBE5273:
.LBE5272:
.LBE5269:
.LBB5283:
.LBB5284:
.LBB5285:
	.loc 4 2645 0
	lis 9,ai_showObstacleAvoidance+44@ha
	.loc 7 143 0
	lwz 9,ai_showObstacleAvoidance+44@l(9)
.LBE5285:
.LBE5284:
	.loc 4 2645 0
	lwz 0,36(9)
	cmpwi 7,0,2
	beq- 7,.L560
.L528:
.LBE5283:
	.loc 4 2657 0
	lwz 31,collisionModelManager@l(31)
	addi 3,1,8
	mr 4,26
	lwz 9,0(31)
	lwz 30,72(9)
	bl _ZNK8idPlayer14GetEyePositionEv
	mr 3,31
	addi 4,1,8
	mtctr 30
	bctrl
.LVL801:
.L492:
.LBE5051:
	.loc 4 2658 0
	lwz 0,372(1)
	lwz 16,168(1)
	mtlr 0
	lwz 17,172(1)
	lwz 18,176(1)
	lwz 19,180(1)
	lwz 20,184(1)
	lwz 21,188(1)
	lwz 22,192(1)
	lwz 23,196(1)
	lwz 24,200(1)
	lwz 25,204(1)
	lwz 26,208(1)
.LVL802:
	lwz 27,212(1)
.LVL803:
	lwz 28,216(1)
	lwz 29,220(1)
	lwz 30,224(1)
	lwz 31,228(1)
	lfd 15,232(1)
	lfd 16,240(1)
	lfd 17,248(1)
	lfd 18,256(1)
	lfd 19,264(1)
	lfd 20,272(1)
	lfd 21,280(1)
	lfd 22,288(1)
	lfd 23,296(1)
	lfd 24,304(1)
	lfd 25,312(1)
	lfd 26,320(1)
	lfd 27,328(1)
	lfd 28,336(1)
	lfd 29,344(1)
	lfd 30,352(1)
	lfd 31,360(1)
	addi 1,1,368
	.cfi_remember_state
.LCFI166:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 56
	.cfi_restore 55
	.cfi_restore 54
	.cfi_restore 53
	.cfi_restore 52
	.cfi_restore 51
	.cfi_restore 50
	.cfi_restore 49
	.cfi_restore 48
	.cfi_restore 47
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
.LVL804:
.L511:
.LCFI167:
	.cfi_restore_state
.LBB5310:
.LBB5295:
.LBB5245:
.LBB5244:
	.loc 4 2582 0
	lwz 9,.LC41@l(21)
	.loc 4 2586 0
	mr 3,30
	.loc 4 2583 0
	lwz 0,.LC40@l(22)
	.loc 4 2582 0
	stw 9,88(1)
	stw 9,84(1)
	stw 9,80(1)
.LVL805:
	.loc 4 2583 0
	stw 0,100(1)
	stw 0,96(1)
	stw 0,92(1)
	.loc 4 2586 0
	lwz 20,0(29)
	.loc 4 2585 0
	lwz 0,192(30)
	.loc 4 2586 0
	lwz 9,0(20)
	lwz 28,176(9)
	.loc 4 2585 0
	andis. 9,0,64
	bne- 0,.L561
.LVL806:
.L514:
	.loc 4 2588 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,23
	mr 6,3
	mr 5,31
	mr 3,20
	li 7,0
	mtctr 28
	bctrl
	b .L515
.LVL807:
.L557:
.LBE5244:
.LBE5245:
.LBE5295:
	.loc 4 2618 0
	addi 3,1,20
	mr 4,26
	bl _ZNK8idPlayer14GetEyePositionEv
.LBB5296:
.LBB5297:
	lis 9,pm_thirdPerson+44@ha
	.loc 7 142 0
	lwz 11,pm_thirdPerson+44@l(9)
.LBE5297:
.LBE5296:
.LBB5298:
.LBB5299:
	.loc 4 2618 0
	lis 9,g_maxShowDistance+44@ha
	.loc 7 144 0
	lwz 9,g_maxShowDistance+44@l(9)
.LBE5299:
.LBE5298:
	.loc 4 2618 0
	addis 30,27,0x23
	lwz 5,36(11)
	addi 30,30,17272
	lfs 1,40(9)
	mr 3,30
	addic 5,5,-1
	subfe 5,5,5
	addi 4,1,20
	and 5,26,5
	bl _ZN6idClip14DrawClipModelsERK6idVec3fPK8idEntity
.LBB5300:
.LBB5266:
	.loc 4 2621 0
	lis 9,g_showCollisionTraces+44@ha
	.loc 7 142 0
	lwz 9,g_showCollisionTraces+44@l(9)
.LBE5266:
.LBE5300:
	.loc 4 2621 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L525
.L558:
	.loc 4 2622 0
	addis 3,27,0x23
	addi 3,3,17272
	bl _ZN6idClip15PrintStatisticsEv
	b .L525
.L556:
	.loc 4 2614 0
	lwz 3,collisionModelManager@l(31)
	lis 5,vec3_origin@ha
	lis 6,mat3_identity@ha
	li 4,0
	lwz 9,0(3)
	la 5,vec3_origin@l(5)
	la 6,mat3_identity@l(6)
	mr 7,24
	lwz 0,76(9)
	lis 9,.LC33@ha
	lfs 1,.LC33@l(9)
	mtctr 0
	bctrl
	b .L522
.L551:
	.loc 4 2594 0
	mr 3,27
	bl _ZN11idGameLocal11ShowTargetsEv
.LBB5301:
.LBB5250:
	.loc 4 2597 0
	lis 9,g_showTriggers+44@ha
	.loc 7 142 0
	lwz 9,g_showTriggers+44@l(9)
.LBE5250:
.LBE5301:
	.loc 4 2597 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L518
.L552:
	.loc 4 2598 0
	bl _ZN9idTrigger13DrawDebugInfoEv
.LBB5302:
.LBB5253:
	.loc 4 2601 0
	lis 9,ai_showCombatNodes+44@ha
	.loc 7 142 0
	lwz 9,ai_showCombatNodes+44@l(9)
.LBE5253:
.LBE5302:
	.loc 4 2601 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L519
.L553:
	.loc 4 2602 0
	bl _ZN12idCombatNode13DrawDebugInfoEv
.LBB5303:
.LBB5256:
	.loc 4 2605 0
	lis 9,ai_showPaths+44@ha
	.loc 7 142 0
	lwz 9,ai_showPaths+44@l(9)
.LBE5256:
.LBE5303:
	.loc 4 2605 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L520
.L554:
	.loc 4 2606 0
	bl _ZN12idPathCorner13DrawDebugInfoEv
.LBB5304:
.LBB5259:
	.loc 4 2609 0
	lis 9,g_editEntityMode+44@ha
	.loc 7 142 0
	lwz 9,g_editEntityMode+44@l(9)
.LBE5259:
.LBE5304:
	.loc 4 2609 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L521
.L555:
	.loc 4 2610 0
	addis 9,27,0x25
	lwz 3,1976(9)
	bl _ZN14idEditEntities15DisplayEntitiesEv
	b .L521
.L550:
.LBB5305:
.LBB5055:
	.loc 4 2537 0
	addi 31,1,80
.LBB5056:
.LBB5057:
	.loc 4 4268 0
	addis 25,27,0x1
.LBE5057:
.LBE5056:
	.loc 4 2537 0
	mr 3,31
	addi 4,26,4644
	bl _ZNK8idAngles6ToMat3Ev
.LVL808:
.LBB5064:
.LBB5058:
	.loc 4 4268 0
	lwz 9,-32192(25)
.LBE5058:
.LBE5064:
.LBB5065:
.LBB5066:
	.loc 18 323 0
	lis 11,.LC33@ha
.LBE5066:
.LBE5065:
.LBB5074:
.LBB5075:
.LBB5076:
	.loc 17 424 0
	lfs 21,0(24)
.LBE5076:
.LBE5075:
.LBE5074:
.LBB5081:
.LBB5067:
	.loc 18 323 0
	lfs 15,.LC33@l(11)
.LBE5067:
.LBE5081:
.LBB5082:
.LBB5083:
.LBB5084:
	.loc 9 268 0
	cmpwi 7,9,0
.LBE5084:
.LBE5083:
.LBE5082:
.LBB5188:
.LBB5059:
	.loc 18 323 0
	lis 11,.LC34@ha
.LBE5059:
.LBE5188:
.LBB5189:
.LBB5079:
.LBB5077:
	.loc 17 425 0
	lfs 19,4(24)
.LBE5077:
.LBE5079:
.LBE5189:
.LBB5190:
.LBB5060:
	.loc 18 323 0
	lfs 0,.LC34@l(11)
.LBE5060:
.LBE5190:
.LBB5191:
.LBB5192:
	.loc 17 439 0
	lis 11,.LC30@ha
.LBE5192:
.LBE5191:
.LBB5198:
.LBB5080:
.LBB5078:
	.loc 17 426 0
	lfs 17,8(24)
.LBE5078:
.LBE5080:
.LBE5198:
.LBB5199:
.LBB5068:
	.loc 18 323 0
	fsubs 27,21,15
.LBE5068:
.LBE5199:
.LBB5200:
.LBB5193:
	.loc 17 439 0
	lfs 13,.LC30@l(11)
.LBE5193:
.LBE5200:
.LBB5201:
.LBB5069:
	.loc 18 324 0
	fsubs 22,19,15
.LBE5069:
.LBE5201:
.LBB5202:
.LBB5194:
	.loc 17 439 0
	lfs 25,104(1)
.LBE5194:
.LBE5202:
.LBB5203:
.LBB5070:
	.loc 18 325 0
	fsubs 20,17,15
.LBE5070:
.LBE5203:
.LBB5204:
.LBB5195:
	.loc 17 439 0
	lfs 24,108(1)
.LBE5195:
.LBE5204:
.LBB5205:
.LBB5071:
	.loc 18 326 0
	fadds 18,21,15
.LBE5071:
.LBE5205:
.LBB5206:
.LBB5196:
	.loc 17 439 0
	lfs 23,112(1)
.LBE5196:
.LBE5206:
.LBB5207:
.LBB5072:
	.loc 18 327 0
	fadds 16,19,15
.LBE5072:
.LBE5207:
.LBB5208:
.LBB5061:
	.loc 18 323 0
	fsubs 30,21,0
	.loc 4 4268 0
	lwz 0,-32196(25)
.LBE5061:
.LBE5208:
.LBB5209:
.LBB5073:
	.loc 18 328 0
	fadds 15,17,15
.LBE5073:
.LBE5209:
.LBB5210:
.LBB5062:
	.loc 18 324 0
	fsubs 29,19,0
	.loc 18 325 0
	fsubs 26,17,0
.LBE5062:
.LBE5210:
.LBB5211:
.LBB5197:
	.loc 17 439 0
	fmuls 25,25,13
	fmuls 24,24,13
	fmuls 23,23,13
.LVL809:
.LBE5197:
.LBE5211:
.LBB5212:
.LBB5063:
	.loc 18 326 0
	fadds 21,21,0
.LVL810:
	.loc 18 327 0
	fadds 19,19,0
.LVL811:
	.loc 18 328 0
	fadds 17,17,0
.LBE5063:
.LBE5212:
.LBB5213:
.LBB5086:
.LBB5085:
	.loc 9 268 0
	beq- 7,.L494
	cmpw 7,0,9
	beq- 7,.L494
	.loc 9 271 0
	lwz 30,12(9)
.LVL812:
.LBE5085:
.LBE5086:
	.loc 4 2544 0
	cmpwi 7,30,0
	beq- 7,.L494
.LBB5087:
	.loc 4 2571 0
	lis 23,colorWhite@ha
	.loc 4 2572 0
	lis 21,.LC39@ha
	.loc 4 2565 0
	lis 19,colorMdGrey@ha
	lis 22,vec3_origin@ha
	.loc 4 2562 0
	lis 17,colorGreen@ha
	.loc 4 2560 0
	lis 18,colorOrange@ha
.LBB5088:
.LBB5089:
	.loc 18 212 0
	lis 20,.LC35@ha
.LBE5089:
.LBE5088:
	.loc 4 2571 0
	la 23,colorWhite@l(23)
	.loc 4 2572 0
	la 21,.LC39@l(21)
	.loc 4 2565 0
	la 19,colorMdGrey@l(19)
	la 22,vec3_origin@l(22)
	.loc 4 2562 0
	la 17,colorGreen@l(17)
	.loc 4 2560 0
	la 18,colorOrange@l(18)
.LVL813:
.L537:
	.loc 4 2546 0
	lwz 0,-32200(25)
	cmpw 7,0,30
	beq- 7,.L495
	.loc 4 2551 0
	mr 3,30
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL814:
.LBB5104:
.LBB5105:
	.loc 18 362 0
	lfs 0,12(3)
	fcmpu 7,30,0
	bgt- 7,.L495
.LVL815:
	lfs 0,16(3)
	fcmpu 7,29,0
	bgt- 7,.L495
.LVL816:
	lfs 0,20(3)
	fcmpu 7,26,0
	bgt- 7,.L495
.LVL817:
	lfs 0,0(3)
	fcmpu 7,21,0
	blt- 7,.L495
.LVL818:
	lfs 0,4(3)
	fcmpu 7,19,0
	blt- 7,.L495
.LVL819:
	lfs 0,8(3)
	fcmpu 7,17,0
	blt- 7,.L495
.LBE5105:
.LBE5104:
	.loc 4 2555 0
	mr 3,30
.LVL820:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
	mr 28,3
.LVL821:
	.loc 4 2556 0
	mr 3,30
.LVL822:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,44(9)
	mtctr 0
	bctrl
.LVL823:
	.loc 4 2557 0
	andi. 0,3,256
	bne- 0,.L562
	.loc 4 2559 0
	andi. 0,3,4096
	bne- 0,.L563
	.loc 4 2561 0
	andi. 0,3,1
	bne- 0,.L564
.LVL824:
.LBB5106:
.LBB5107:
.LBB5108:
.LBB5109:
	.loc 17 402 0
	lfs 13,0(28)
.LVL825:
.LBE5109:
.LBE5108:
.LBB5110:
.LBB5111:
	lfs 12,12(28)
.LBE5111:
.LBE5110:
	.loc 18 216 0
	lfs 10,4(28)
	fcmpu 7,13,12
	cror 30,29,30
	bne- 7,.L541
	lfs 8,8(28)
	lfs 11,16(28)
	lfs 9,20(28)
.L502:
.LBE5107:
.LBE5106:
.LBB5120:
.LBB5121:
	.loc 18 319 0
	lis 9,.LC40@ha
.LBE5121:
.LBE5120:
	.loc 4 2565 0
	lis 29,gameRenderWorld@ha
.LBB5134:
.LBB5130:
	.loc 18 319 0
	lfs 0,.LC40@l(9)
.LBE5130:
.LBE5134:
	.loc 4 2565 0
	mr 4,19
	lwz 3,gameRenderWorld@l(29)
.LVL826:
	addi 5,1,56
.LBB5135:
.LBB5131:
	.loc 18 319 0
	fsubs 13,13,0
	fsubs 10,10,0
.LBE5131:
.LBE5135:
	.loc 4 2565 0
	lwz 9,0(3)
.LBB5136:
.LBB5132:
	.loc 18 319 0
	fsubs 8,8,0
	fadds 12,12,0
.LBE5132:
.LBE5136:
	.loc 4 2565 0
	lwz 0,176(9)
.LBB5137:
.LBB5133:
	.loc 18 319 0
	fadds 11,11,0
.LVL827:
.LBB5122:
.LBB5123:
.LBB5124:
	.loc 17 424 0
	stfs 13,56(1)
.LBE5124:
.LBE5123:
.LBE5122:
	.loc 18 319 0
	fadds 0,9,0
.LBB5129:
.LBB5126:
.LBB5125:
	.loc 17 425 0
	stfs 10,60(1)
	.loc 17 426 0
	stfs 8,64(1)
.LVL828:
.LBE5125:
.LBE5126:
.LBB5127:
.LBB5128:
	.loc 17 424 0
	stfs 12,68(1)
	.loc 17 425 0
	stfs 11,72(1)
	.loc 17 426 0
	stfs 0,76(1)
.LVL829:
.L549:
.LBE5128:
.LBE5127:
.LBE5129:
.LBE5133:
.LBE5137:
	.loc 4 2567 0
	mr 6,22
	li 7,0
	mtctr 0
	la 29,gameRenderWorld@l(29)
	bctrl
.LVL830:
.LBB5138:
.LBB5139:
.LBB5140:
.LBB5141:
	.loc 17 402 0
	lfs 12,12(28)
.LVL831:
.LBE5141:
.LBE5140:
	.loc 18 362 0
	fcmpu 7,27,12
	bgt- 7,.L495
.LVL832:
.LBB5142:
.LBB5143:
	.loc 17 402 0
	lfs 13,16(28)
.LVL833:
.LBE5143:
.LBE5142:
	.loc 18 362 0
	fcmpu 7,22,13
	bgt- 7,.L495
.LVL834:
.LBB5144:
.LBB5145:
	.loc 17 402 0
	lfs 0,20(28)
.LVL835:
.LBE5145:
.LBE5144:
	.loc 18 362 0
	fcmpu 7,20,0
	bgt- 7,.L495
.LVL836:
.LBB5146:
.LBB5147:
	.loc 17 402 0
	lfs 11,0(28)
.LVL837:
.LBE5147:
.LBE5146:
	.loc 18 362 0
	fcmpu 7,18,11
	bnl- 7,.L565
.LVL838:
.L495:
	.loc 4 4268 0
	lwz 9,16(30)
	lwz 0,12(30)
.LBE5139:
.LBE5138:
.LBE5087:
.LBB5184:
.LBB5185:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L494
	cmpw 7,0,9
	beq- 7,.L494
	.loc 9 271 0
	lwz 30,12(9)
.LVL839:
.LBE5185:
.LBE5184:
	.loc 4 2544 0
	cmpwi 7,30,0
	bne+ 7,.L537
	b .L494
.LVL840:
.L559:
.LBE5213:
.LBE5055:
.LBE5305:
.LBB5306:
.LBB5282:
.LBB5281:
.LBB5280:
.LBB5279:
.LBB5278:
	.loc 4 2637 0
	lis 9,_ZN6idMath9M_DEG2RADE@ha
	lfs 30,4648(26)
	lfs 0,_ZN6idMath9M_DEG2RADE@l(9)
	fmuls 30,30,0
	fmr 1,30
	bl cos
	lis 9,.LC43@ha
	lfs 31,.LC43@l(9)
	fmul 0,1,31
	.loc 4 2638 0
	fmr 1,30
	.loc 4 2637 0
	frsp 0,0
	stfs 0,80(1)
	.loc 4 2638 0
	bl sin
	fmul 31,1,31
	.loc 4 2639 0
	li 0,0
	.loc 4 2640 0
	mr 3,26
	mr 4,30
	mr 5,24
	addi 6,1,80
	li 7,1000
	li 8,100
	.loc 4 2638 0
	frsp 31,31
	.loc 4 2640 0
	li 9,7
	addi 10,1,116
	.loc 4 2639 0
	stw 0,88(1)
	.loc 4 2638 0
	stfs 31,84(1)
	.loc 4 2640 0
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
	b .L527
.LVL841:
.L562:
.LBE5278:
.LBE5279:
.LBE5280:
.LBE5281:
.LBE5282:
.LBE5306:
.LBB5307:
.LBB5216:
.LBB5214:
.LBB5186:
	.loc 4 2558 0
	lis 29,gameRenderWorld@ha
	lis 4,colorCyan@ha
	lwz 3,gameRenderWorld@l(29)
.LVL842:
	la 4,colorCyan@l(4)
	.loc 4 2567 0
	mr 5,28
	.loc 4 2558 0
	lwz 9,0(3)
	lwz 0,176(9)
	b .L549
.LVL843:
.L560:
.LBE5186:
.LBE5214:
.LBE5216:
.LBE5307:
.LBB5308:
.LBB5286:
	.loc 4 2646 0
	mr 3,27
	li 4,0
	bl _ZNK11idGameLocal6GetAASEi
.LVL844:
.LBB5287:
	.loc 4 2647 0
	mr. 30,3
	beq- 0,.L528
.LBB5288:
	.loc 4 2651 0
	mr 3,26
.LVL845:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL846:
	.loc 17 452 0
	lis 9,.LC44@ha
.LBB5289:
.LBB5290:
	lfs 11,0(3)
.LBE5290:
.LBE5289:
	lfs 8,2272(26)
	lfs 9,2276(26)
.LBB5293:
.LBB5291:
	lfs 10,2268(26)
.LBE5291:
.LBE5293:
	lfs 12,4(3)
	lfs 13,8(3)
	.loc 4 2652 0
	mr 3,26
.LVL847:
	.loc 17 452 0
	lfs 0,.LC44@l(9)
	fmadds 12,8,0,12
	fmadds 13,9,0,13
.LVL848:
.LBB5294:
.LBB5292:
	fmadds 0,10,0,11
	.loc 17 425 0
	stfs 12,84(1)
	.loc 17 426 0
	stfs 13,88(1)
	.loc 17 424 0
	stfs 0,80(1)
.LBE5292:
.LBE5294:
	.loc 4 2652 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL849:
	mr 29,3
	mr 3,26
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,30
	mr 6,3
	li 5,0
	mr 3,29
	addi 7,1,80
.LVL850:
	addi 8,1,116
	bl _ZN4idAI23FindPathAroundObstaclesEPK9idPhysicsPK5idAASPK8idEntityRK6idVec3SB_R14obstaclePath_s
.LVL851:
	b .L528
.LVL852:
.L563:
.LBE5288:
.LBE5287:
.LBE5286:
.LBE5308:
.LBB5309:
.LBB5217:
.LBB5215:
.LBB5187:
	.loc 4 2560 0
	lis 29,gameRenderWorld@ha
	mr 4,18
	lwz 3,gameRenderWorld@l(29)
.LVL853:
	mr 5,28
	lwz 9,0(3)
	lwz 0,176(9)
	b .L549
.LVL854:
.L541:
.LBB5153:
.LBB5118:
.LBB5112:
.LBB5113:
	.loc 17 402 0
	lfs 11,16(28)
.LBE5113:
.LBE5112:
	.loc 18 216 0
	lfs 8,8(28)
	fcmpu 7,10,11
	lfs 9,20(28)
	cror 30,29,30
	beq- 7,.L502
.LVL855:
	fcmpu 7,8,9
	cror 30,29,30
	beq- 7,.L502
.LVL856:
.LBB5114:
.LBB5115:
	.loc 18 219 0
	fsubs 6,12,13
.LBE5115:
.LBE5114:
.LBE5118:
.LBE5153:
	.loc 4 2564 0
	lis 9,.LC2@ha
.LBB5154:
.LBB5119:
.LBB5117:
.LBB5116:
	.loc 18 219 0
	fsubs 7,11,10
	fsubs 0,9,8
	fmuls 7,6,7
	fmuls 7,7,0
.LBE5116:
.LBE5117:
.LBE5119:
.LBE5154:
	.loc 4 2564 0
	lfs 0,.LC2@l(9)
	fcmpu 7,7,0
	beq- 7,.L502
	.loc 4 2567 0
	lis 29,gameRenderWorld@ha
	mr 4,19
	lwz 3,gameRenderWorld@l(29)
.LVL857:
	mr 5,28
	lwz 9,0(3)
	lwz 0,176(9)
	b .L549
.LVL858:
.L564:
	.loc 4 2562 0
	lis 29,gameRenderWorld@ha
	mr 4,17
	lwz 3,gameRenderWorld@l(29)
.LVL859:
	mr 5,28
	lwz 9,0(3)
	lwz 0,176(9)
	b .L549
.LVL860:
.L565:
.LBB5155:
.LBB5152:
.LBB5148:
.LBB5149:
	.loc 17 402 0
	lfs 10,4(28)
.LVL861:
.LBE5149:
.LBE5148:
	.loc 18 362 0
	fcmpu 7,16,10
	blt- 7,.L495
.LVL862:
.LBB5150:
.LBB5151:
	.loc 17 402 0
	lfs 9,8(28)
.LVL863:
.LBE5151:
.LBE5150:
	.loc 18 362 0
	fcmpu 7,15,9
	blt- 7,.L495
.LBE5152:
.LBE5155:
.LBB5156:
.LBB5096:
	.loc 18 212 0
	fadds 12,12,11
.LBE5096:
.LBE5156:
	.loc 4 2571 0
	lwz 3,0(29)
.LBB5157:
.LBB5097:
	.loc 18 212 0
	fadds 13,13,10
	lfs 31,.LC35@l(20)
	fadds 0,0,9
.LBE5097:
.LBE5157:
	.loc 4 2571 0
	lwz 9,0(3)
.LBB5158:
.LBB5098:
	.loc 18 212 0
	fmuls 12,12,31
.LBE5098:
.LBE5158:
	.loc 4 2571 0
	lis 11,.LC38@ha
.LBB5159:
.LBB5099:
	.loc 18 212 0
	fmuls 13,13,31
.LBE5099:
.LBE5159:
	.loc 4 2571 0
	lfs 28,.LC38@l(11)
.LBB5160:
.LBB5100:
	.loc 18 212 0
	fmuls 0,0,31
.LBE5100:
.LBE5160:
	.loc 4 2571 0
	lwz 0,204(9)
	addi 5,1,44
	fmr 1,28
	mr 6,23
	mr 7,31
.LBB5161:
.LBB5101:
.LBB5090:
.LBB5091:
	.loc 17 396 0
	stfs 12,44(1)
.LBE5091:
.LBE5090:
.LBE5101:
.LBE5161:
	.loc 4 2571 0
	mtctr 0
.LBB5162:
.LBB5102:
.LBB5094:
.LBB5092:
	.loc 17 397 0
	stfs 13,48(1)
.LBE5092:
.LBE5094:
.LBE5102:
.LBE5162:
	.loc 4 2571 0
	li 8,1
.LBB5163:
.LBB5103:
.LBB5095:
.LBB5093:
	.loc 17 398 0
	stfs 0,52(1)
.LBE5093:
.LBE5095:
.LBE5103:
.LBE5163:
	.loc 4 2571 0
	li 10,0
	.loc 4 4268 0
	lwz 4,72(30)
.LVL864:
	.loc 4 2571 0
	li 9,0
	bctrl
.LVL865:
	.loc 4 2572 0
	lwz 16,0(29)
	lwz 4,4(30)
	mr 3,21
	lwz 9,0(16)
	lwz 29,204(9)
	crxor 6,6,6
	bl _Z2vaPKcz
.LBB5164:
.LBB5165:
	.loc 18 212 0
	lfs 12,0(28)
.LBE5165:
.LBE5164:
	.loc 4 2572 0
	mr 4,3
.LVL866:
.LBB5172:
.LBB5166:
	.loc 18 212 0
	lfs 13,4(28)
.LBE5166:
.LBE5172:
	.loc 4 2572 0
	mr 3,16
.LBB5173:
.LBB5167:
	.loc 18 212 0
	lfs 0,8(28)
.LBE5167:
.LBE5173:
	.loc 4 2572 0
	addi 5,1,32
.LBB5174:
.LBB5168:
	.loc 18 212 0
	lfs 9,16(28)
.LBE5168:
.LBE5174:
	.loc 4 2572 0
	fmr 1,28
.LBB5175:
.LBB5169:
	.loc 18 212 0
	lfs 10,20(28)
.LBE5169:
.LBE5175:
	.loc 4 2572 0
	mr 6,23
.LBB5176:
.LBB5170:
	.loc 18 212 0
	lfs 11,12(28)
	fadds 13,9,13
	fadds 0,10,0
.LBE5170:
.LBE5176:
	.loc 4 2572 0
	mr 7,31
.LBB5177:
.LBB5171:
	.loc 18 212 0
	fadds 12,11,12
.LBE5171:
.LBE5177:
	.loc 4 2572 0
	li 8,1
	.loc 17 452 0
	fmadds 13,13,31,24
	.loc 4 2572 0
	li 9,0
	.loc 17 452 0
	fmadds 0,0,31,23
.LVL867:
	.loc 4 2572 0
	li 10,0
.LBB5178:
.LBB5179:
.LBB5180:
	.loc 17 452 0
	fmadds 31,12,31,25
.LBE5180:
.LBE5179:
.LBE5178:
	.loc 4 2572 0
	mtctr 29
.LBB5183:
.LBB5182:
.LBB5181:
	.loc 17 397 0
	stfs 13,36(1)
	.loc 17 398 0
	stfs 0,40(1)
	.loc 17 396 0
	stfs 31,32(1)
.LBE5181:
.LBE5182:
.LBE5183:
	.loc 4 2572 0
	bctrl
.LVL868:
	b .L495
.LBE5187:
.LBE5215:
.LBE5217:
.LBE5309:
.LBE5310:
	.cfi_endproc
.LFE2899:
	.size	_ZN11idGameLocal12RunDebugInfoEv, .-_ZN11idGameLocal12RunDebugInfoEv
	.align 2
	.globl _ZN11idGameLocal8RunFrameEPK9usercmd_t
	.type	_ZN11idGameLocal8RunFrameEPK9usercmd_t, @function
_ZN11idGameLocal8RunFrameEPK9usercmd_t:
.LFB2887:
	.loc 4 2038 0
	.cfi_startproc
.LVL869:
	stwu 1,-248(1)
.LCFI168:
	.cfi_def_cfa_offset 248
	mflr 0
	mfcr 12
	stw 24,176(1)
.LBB5392:
.LBB5393:
.LBB5394:
	.file 20 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Timer.h"
	.loc 20 76 0
	lis 24,.LC45@ha
	.cfi_offset 24, -72
	.cfi_register 70, 12
	.cfi_register 65, 0
	lfd 0,.LC45@l(24)
.LBE5394:
.LBE5393:
.LBE5392:
	.loc 4 2038 0
	stw 22,168(1)
	mr 22,3
	.cfi_offset 22, -80
.LBB5578:
	.loc 4 2046 0
	lis 3,.LC46@ha
.LVL870:
.LBE5578:
	.loc 4 2038 0
	stw 0,252(1)
	stw 27,188(1)
.LBB5579:
.LBB5398:
.LBB5395:
	.loc 20 75 0
	li 0,1
	.cfi_offset 27, -60
	.cfi_offset 65, 4
.LBE5395:
.LBE5398:
.LBE5579:
	.loc 4 2038 0
	mr 27,4
.LBB5580:
	.loc 4 2046 0
	la 3,.LC46@l(3)
.LBB5399:
.LBB5396:
	.loc 20 75 0
	stw 0,56(1)
.LBE5396:
.LBE5399:
.LBB5400:
.LBB5401:
	stw 0,32(1)
.LBE5401:
.LBE5400:
.LBB5403:
.LBB5404:
	stw 0,8(1)
.LBE5404:
.LBE5403:
.LBE5580:
	.loc 4 2038 0
	stw 12,132(1)
	stw 5,112(1)
.LBB5581:
.LBB5406:
.LBB5397:
	.loc 20 76 0
	stfd 0,72(1)
.LBE5397:
.LBE5406:
.LBB5407:
.LBB5402:
	stfd 0,48(1)
.LBE5402:
.LBE5407:
.LBE5581:
	.loc 4 2038 0
	stw 20,160(1)
	stw 30,200(1)
.LBB5582:
.LBB5408:
	.loc 4 2055 0
	addis 30,4,0x25
	.cfi_offset 30, -48
	.cfi_offset 20, -88
	.cfi_offset 70, -116
.LBE5408:
.LBE5582:
	.loc 4 2038 0
	stfd 27,208(1)
	stfd 28,216(1)
	stfd 29,224(1)
	stfd 30,232(1)
	stfd 31,240(1)
	stw 14,136(1)
	stw 15,140(1)
	stw 16,144(1)
	stw 17,148(1)
	stw 18,152(1)
	stw 19,156(1)
	stw 21,164(1)
	stw 23,172(1)
	stw 25,180(1)
	stw 26,184(1)
	stw 28,192(1)
	stw 29,196(1)
	stw 31,204(1)
.LBB5583:
.LBB5573:
.LBB5405:
	.loc 20 76 0
	stfd 0,24(1)
.LBE5405:
.LBE5573:
	.loc 4 2046 0
	.cfi_offset 31, -44
	.cfi_offset 29, -52
	.cfi_offset 28, -56
	.cfi_offset 26, -64
	.cfi_offset 25, -68
	.cfi_offset 23, -76
	.cfi_offset 21, -84
	.cfi_offset 19, -92
	.cfi_offset 18, -96
	.cfi_offset 17, -100
	.cfi_offset 16, -104
	.cfi_offset 15, -108
	.cfi_offset 14, -112
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL871:
	.loc 4 2053 0
	mr 3,27
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LBB5574:
	.loc 4 2055 0
	lbz 0,2016(30)
.LBE5574:
	.loc 4 2053 0
	mr 20,3
.LVL872:
.LBB5575:
	.loc 4 2055 0
	cmpwi 7,0,0
	beq- 7,.L638
	addi 0,27,228
	lis 16,gameRenderWorld@ha
	stw 0,120(1)
	lis 29,_ZN5idLib3sysE@ha
	lis 19,g_timeentities@ha
	lis 25,_ZN7idTimer4baseE@ha
	lis 9,g_frametime@ha
.L649:
	la 9,g_frametime@l(9)
.LBB5409:
.LBB5410:
.LBB5411:
.LBB5412:
	.file 21 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Random.h"
	.loc 21 71 0
	lis 15,0x1
	stw 9,116(1)
.LBE5412:
.LBE5411:
	.loc 4 2119 0
	lis 9,.LC2@ha
	.loc 4 2132 0
	lis 14,.LC48@ha
	cmpwi 4,20,0
	.loc 4 2119 0
	lfs 31,.LC2@l(9)
	addis 23,27,0x1
	la 16,gameRenderWorld@l(16)
	la 24,.LC45@l(24)
	la 29,_ZN5idLib3sysE@l(29)
	la 19,g_timeentities@l(19)
	la 25,_ZN7idTimer4baseE@l(25)
.LBB5415:
.LBB5413:
	.loc 21 71 0
	ori 15,15,3533
.LBE5413:
.LBE5415:
.LBB5416:
.LBB5417:
	.loc 20 193 0
	lis 18,.LC47@ha
.LBE5417:
.LBE5416:
	.loc 4 2132 0
	la 14,.LC48@l(14)
.LVL873:
.L633:
	.loc 4 2068 0
	lwz 9,2004(30)
	.loc 4 2067 0
	lwz 11,1996(30)
	.loc 4 2069 0
	addi 4,9,16
	.loc 4 2068 0
	stw 9,2000(30)
	.loc 4 2067 0
	addi 0,11,1
	.loc 4 2069 0
	stw 4,2004(30)
	.loc 4 2067 0
	stw 0,1996(30)
	.loc 4 2070 0
	stw 4,2040(30)
.LBB5423:
.LBB5414:
	.loc 21 71 0
	lwz 9,-32064(23)
	mullw 9,15,9
	addi 0,9,1
	stw 0,-32064(23)
.LBE5414:
.LBE5423:
	.loc 4 2083 0
	beq- 4,.L570
	.loc 4 2085 0
	lwz 9,0(20)
	mr 3,20
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL874:
	.loc 4 2086 0
	mr. 4,3
	beq- 0,.L650
	.loc 4 2087 0
	lwz 3,0(16)
.LVL875:
	lwz 9,0(3)
	lwz 0,72(9)
	mtctr 0
	bctrl
.LVL876:
.L650:
	lwz 4,2004(30)
.L570:
	.loc 4 2092 0
	lwz 3,0(16)
	lwz 9,0(3)
	lwz 0,152(9)
	mtctr 0
	bctrl
	.loc 4 2095 0
	lwz 3,0(16)
	lwz 4,2004(30)
	lwz 9,0(3)
	lwz 0,196(9)
	mtctr 0
	bctrl
	.loc 4 2098 0
	lwz 5,48(27)
	lwz 4,112(1)
	lwz 3,120(1)
	slwi 5,5,5
	bl memcpy
	.loc 4 2101 0
	lwz 3,1972(30)
	bl _ZN16idSmokeParticles10FreeSmokesEv
	.loc 4 2104 0
	mr 3,27
	bl _ZN11idGameLocal36ServerProcessEntityNetworkEventQueueEv
	.loc 4 2107 0
	mr 3,27
	bl _ZN11idGameLocal13UpdateGravityEv
	.loc 4 2110 0
	mr 3,27
	bl _ZN11idGameLocal14SetupPlayerPVSEv
	.loc 4 2113 0
	mr 3,27
	bl _ZN11idGameLocal20SortActiveEntityListEv
.LBB5424:
.LBB5425:
	.loc 20 173 0
	lfd 0,0(24)
.LBE5425:
.LBE5424:
.LBB5427:
.LBB5428:
	.loc 20 146 0
	li 0,0
	.loc 20 147 0
	lwz 9,0(29)
.LBE5428:
.LBE5427:
.LBB5431:
.LBB5426:
	.loc 20 173 0
	stfd 0,72(1)
.LBE5426:
.LBE5431:
.LBB5432:
.LBB5429:
	.loc 20 146 0
	stw 0,56(1)
	.loc 20 147 0
	mr 3,9
	lwz 9,0(9)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LBE5429:
.LBE5432:
.LBB5433:
.LBB5434:
	.loc 7 144 0
	lwz 9,44(19)
.LBE5434:
.LBE5433:
.LBB5435:
.LBB5430:
	.loc 20 147 0
	stfd 1,64(1)
.LBE5430:
.LBE5435:
	.loc 4 2119 0
	lfs 0,40(9)
	fcmpu 7,0,31
	beq- 7,.L572
.LVL877:
	.loc 4 4268 0
	lwz 9,-32176(23)
.LBB5436:
.LBB5437:
	.loc 9 268 0
	li 28,0
.LBE5437:
.LBE5436:
	.loc 4 4268 0
	lwz 0,-32180(23)
.LBB5439:
.LBB5438:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L573
	cmpw 7,0,9
	beq- 7,.L573
	.loc 9 271 0
	lwz 31,12(9)
.LVL878:
.LBE5438:
.LBE5439:
	.loc 4 2121 0
	cmpwi 7,31,0
	beq- 7,.L573
	lis 9,g_cinematic@ha
.LBB5440:
.LBB5441:
	.loc 20 146 0
	li 21,0
	la 26,g_cinematic@l(9)
.LBE5441:
.LBE5440:
.LBB5445:
.LBB5446:
	.loc 20 164 0
	li 17,1
.LVL879:
.L580:
.LBE5446:
.LBE5445:
.LBB5451:
.LBB5452:
	.loc 7 142 0
	lwz 9,44(26)
.LBE5452:
.LBE5451:
	.loc 4 2122 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L574
	.loc 4 2122 0 is_stmt 0 discriminator 1
	lbz 0,1992(30)
	cmpwi 7,0,0
	beq- 7,.L574
	.loc 4 2122 0 discriminator 3
	lbz 0,160(31)
	cmpwi 7,0,0
	bne- 7,.L574
	.loc 4 2123 0 is_stmt 1 discriminator 5
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 4,2004(30)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	bctrl
.L575:
.LVL880:
	.loc 4 4268 0
	lwz 9,32(31)
	lwz 0,28(31)
.LBB5453:
.LBB5454:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L573
	cmpw 7,0,9
	beq- 7,.L573
	.loc 9 271 0
	lwz 31,12(9)
.LVL881:
.LBE5454:
.LBE5453:
	.loc 4 2121 0
	cmpwi 7,31,0
	bne+ 7,.L580
.LVL882:
.L573:
.LBB5455:
	.loc 4 2157 0
	lwz 0,-32164(23)
	cmpwi 7,0,0
	beq- 7,.L585
.LVL883:
	.loc 4 4268 0
	lwz 9,-32176(23)
	lwz 0,-32180(23)
.LBB5456:
.LBB5457:
.LBB5458:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L586
	cmpw 7,0,9
	beq- 7,.L586
	.loc 9 271 0
	lwz 9,12(9)
.LVL884:
.LBE5458:
.LBE5457:
	.loc 4 2160 0
	cmpwi 7,9,0
	beq- 7,.L586
.LVL885:
.L640:
	.loc 4 4268 0
	lwz 11,32(9)
	.loc 4 2163 0
	addi 10,9,28
	.loc 4 4268 0
	lwz 8,28(9)
.LBB5459:
.LBB5460:
	.loc 9 269 0
	li 0,0
	.loc 9 268 0
	cmpwi 7,11,0
	cmpw 6,8,11
	beq- 7,.L587
	beq- 6,.L587
	.loc 9 271 0
	lwz 0,12(11)
.L587:
.LBE5460:
.LBE5459:
	.loc 4 2162 0
	lwz 8,152(9)
	.loc 4 2160 0
	cmpwi 7,0,0
	.loc 4 2162 0
	cmpwi 6,8,0
	bne- 6,.L588
.LVL886:
.LBB5461:
.LBB5462:
	.loc 9 176 0
	lwz 8,36(9)
	stw 11,4(8)
	.loc 9 177 0
	lwz 11,32(9)
	lwz 8,36(9)
	stw 8,8(11)
	.loc 9 179 0
	stw 10,32(9)
	.loc 9 180 0
	stw 10,36(9)
	.loc 9 181 0
	stw 10,28(9)
.LVL887:
.L588:
.LBE5462:
.LBE5461:
	.loc 4 2160 0 discriminator 1
	beq- 7,.L586
	.loc 4 2160 0 is_stmt 0
	mr 9,0
	b .L640
.LVL888:
.L574:
.LBE5456:
.LBE5455:
.LBB5464:
.LBB5465:
	.loc 20 173 0 is_stmt 1
	lfd 30,0(24)
.LBE5465:
.LBE5464:
.LBB5467:
.LBB5442:
	.loc 20 147 0
	lwz 9,0(29)
.LBE5442:
.LBE5467:
.LBB5468:
.LBB5466:
	.loc 20 173 0
	stfd 30,24(1)
.LBE5466:
.LBE5468:
.LBB5469:
.LBB5443:
	.loc 20 146 0
	stw 21,8(1)
	.loc 20 147 0
	mr 3,9
	lwz 9,0(9)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LBE5443:
.LBE5469:
	.loc 4 2128 0
	mr 3,31
.LBB5470:
.LBB5444:
	.loc 20 147 0
	stfd 1,16(1)
.LBE5444:
.LBE5470:
	.loc 4 2128 0
	lwz 9,0(31)
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL889:
.LBB5471:
.LBB5447:
	.loc 20 157 0
	lwz 3,0(29)
	lfd 29,24(1)
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
	lfd 13,16(1)
	.loc 20 158 0
	lfd 0,0(25)
	.loc 20 157 0
	fsub 13,1,13
	.loc 20 158 0
	fcmpu 7,0,30
	.loc 20 157 0
	fadd 29,29,13
	stfd 29,24(1)
	.loc 20 158 0
	blt- 7,.L653
.L611:
	.loc 20 161 0
	fcmpu 7,0,29
	bnl- 7,.L576
	.loc 20 162 0
	fsub 29,29,0
	stfd 29,24(1)
.L576:
.LBE5447:
.LBE5471:
.LBB5472:
.LBB5418:
	.loc 20 193 0
	lwz 9,0(29)
.LBE5418:
.LBE5472:
.LBB5473:
.LBB5448:
	.loc 20 164 0
	stw 17,8(1)
.LBE5448:
.LBE5473:
.LBB5474:
.LBB5419:
	.loc 20 193 0
	mr 3,9
.LBE5419:
.LBE5474:
.LBB5475:
.LBB5449:
	.loc 4 2130 0
	lfd 30,24(1)
.LBE5449:
.LBE5475:
.LBB5476:
.LBB5420:
	.loc 20 193 0
	lwz 9,0(9)
	lwz 0,12(9)
	mtctr 0
	bctrl
	lfd 0,.LC47@l(18)
.LBE5420:
.LBE5476:
.LBB5477:
.LBB5478:
	.loc 7 144 0
	lwz 9,44(19)
.LBE5478:
.LBE5477:
.LBB5479:
.LBB5421:
	.loc 20 193 0
	fmul 1,1,0
.LBE5421:
.LBE5479:
	.loc 4 2131 0
	lfs 13,40(9)
.LBB5480:
.LBB5422:
	.loc 20 193 0
	fdiv 30,30,1
.LBE5422:
.LBE5480:
	.loc 4 2130 0
	frsp 1,30
.LVL890:
	.loc 4 2131 0
	fcmpu 7,1,13
	cror 30,29,30
	beq- 7,.L654
	.loc 4 2134 0
	addi 28,28,1
.LVL891:
	b .L575
.LVL892:
.L654:
	.loc 4 2132 0
	lwz 5,2004(30)
	mr 3,27
	lwz 6,72(31)
	mr 4,14
	.loc 4 2134 0
	addi 28,28,1
	.loc 4 2132 0
	creqv 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL893:
	b .L575
.LVL894:
.L586:
.LBB5481:
.LBB5463:
	.loc 4 2168 0
	li 0,0
	stw 0,-32164(23)
.L585:
.LVL895:
.LBE5463:
.LBE5481:
.LBB5482:
.LBB5483:
	.loc 20 157 0
	lwz 3,0(29)
	lfd 30,72(1)
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
	lfd 13,64(1)
	.loc 20 158 0
	lfd 0,0(25)
	.loc 20 157 0
	fsub 13,1,13
	.loc 20 158 0
	lfd 12,0(24)
	fcmpu 7,0,12
	.loc 20 157 0
	fadd 30,30,13
	stfd 30,72(1)
	.loc 20 158 0
	blt- 7,.L655
.L590:
	.loc 20 161 0
	fcmpu 7,30,0
	bng- 7,.L592
	.loc 20 162 0
	fsub 30,30,0
	stfd 30,72(1)
.L592:
.LBE5483:
.LBE5482:
.LBB5486:
.LBB5487:
	.loc 20 173 0
	lfd 30,0(24)
.LBE5487:
.LBE5486:
.LBB5489:
.LBB5484:
	.loc 20 164 0
	li 0,1
	stw 0,56(1)
.LBE5484:
.LBE5489:
.LBB5490:
.LBB5491:
	.loc 20 146 0
	li 0,0
	.loc 20 147 0
	lwz 9,0(29)
.LBE5491:
.LBE5490:
.LBB5493:
.LBB5488:
	.loc 20 173 0
	stfd 30,48(1)
.LBE5488:
.LBE5493:
.LBB5494:
.LBB5492:
	.loc 20 146 0
	stw 0,32(1)
	.loc 20 147 0
	mr 3,9
	lwz 9,0(9)
	lwz 0,8(9)
	mtctr 0
	bctrl
	stfd 1,40(1)
.LBE5492:
.LBE5494:
	.loc 4 2176 0
	bl _ZN7idEvent13ServiceEventsEv
.LVL896:
.LBB5495:
.LBB5496:
	.loc 20 157 0
	lwz 3,0(29)
	lfd 29,48(1)
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
	lfd 13,40(1)
	.loc 20 158 0
	lfd 0,0(25)
	.loc 20 157 0
	fsub 13,1,13
	.loc 20 158 0
	fcmpu 7,0,30
	.loc 20 157 0
	fadd 29,29,13
	stfd 29,48(1)
	.loc 20 158 0
	blt- 7,.L656
.L594:
	.loc 20 161 0
	fcmpu 7,0,29
	bnl- 7,.L596
	.loc 20 162 0
	fsub 29,29,0
	stfd 29,48(1)
.L596:
	.loc 20 164 0
	li 0,1
.LBE5496:
.LBE5495:
	.loc 4 2181 0
	mr 3,27
.LBB5499:
.LBB5497:
	.loc 20 164 0
	stw 0,32(1)
.LBE5497:
.LBE5499:
	.loc 4 2181 0
	bl _ZN11idGameLocal13FreePlayerPVSEv
	.loc 4 2184 0
	lbz 0,2016(30)
	cmpwi 7,0,0
	bne- 7,.L657
.L598:
.LBB5500:
.LBB5501:
	.loc 7 142 0
	lwz 11,116(1)
	lwz 9,44(11)
.LBE5501:
.LBE5500:
	.loc 4 2189 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L658
.L599:
	.loc 4 2199 0
	lbz 9,2016(30)
	.loc 4 2196 0
	li 0,0
	stw 0,1024(22)
	.loc 4 2199 0
	cmpwi 7,9,0
	.loc 4 2197 0
	stb 0,0(22)
	.loc 4 2199 0
	bne- 7,.L600
	.loc 4 2199 0 is_stmt 0 discriminator 1
	beq- 4,.L600
	.loc 4 2206 0 is_stmt 1
	lwz 11,5200(20)
.LBB5502:
.LBB5503:
	.loc 19 825 0
	addi 10,22,1036
	lfs 0,5216(20)
.LBE5503:
.LBE5502:
	.loc 4 2206 0
	cmpwi 7,11,0
	.loc 4 2200 0
	lwz 8,188(20)
.LBB5506:
.LBB5504:
	.loc 19 825 0
	fctiwz 0,0
.LBE5504:
.LBE5506:
	.loc 4 2201 0
	lwz 0,5164(20)
	.loc 4 2200 0
	stw 8,1028(22)
	.loc 4 2201 0
	stw 0,1032(22)
.LVL897:
.LBB5507:
.LBB5505:
	.loc 19 825 0
	stfiwx 0,0,10
.LBE5505:
.LBE5507:
	.loc 4 2205 0
	stw 9,1040(22)
	.loc 4 2206 0
	ble- 7,.L601
	.loc 4 2206 0 is_stmt 0 discriminator 1
	lwz 0,2004(30)
	addi 9,11,9999
	cmpw 7,9,0
	blt- 7,.L601
	.loc 4 2207 0 is_stmt 1
	subf 0,11,0
	lis 11,.LC1@ha
	xoris 0,0,0x8000
	lfs 0,.LC1@l(11)
	stw 0,92(1)
	lis 0,0x4330
	stw 0,88(1)
	lis 9,.LC50@ha
	lfs 12,.LC50@l(9)
	lis 11,.LC51@ha
	lfd 13,88(1)
	addi 9,22,1040
	fsub 0,13,0
	lfs 13,.LC51@l(11)
	frsp 0,0
	fmuls 0,0,12
	fdivs 0,0,13
	fadds 0,0,31
	fctiwz 0,0
	stfiwx 0,0,9
.L601:
	.loc 4 2209 0
	lwz 9,4680(20)
	cmpwi 7,9,0
	ble- 7,.L600
	.loc 4 2209 0 is_stmt 0 discriminator 1
	lwz 0,2004(30)
	addi 11,9,9999
	cmpw 7,11,0
	blt- 7,.L600
	.loc 4 2210 0 is_stmt 1
	subf 0,9,0
	lis 11,0x4330
	xoris 0,0,0x8000
	stw 11,104(1)
	stw 0,108(1)
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	lis 9,.LC50@ha
	lfd 13,104(1)
	lfs 11,.LC50@l(9)
	lis 9,.LC51@ha
	fsub 13,13,0
	lfs 12,.LC51@l(9)
	lwz 0,1040(22)
	addi 9,22,1040
	stw 11,96(1)
	frsp 13,13
	xoris 0,0,0x8000
	stw 0,100(1)
	fmuls 13,13,11
	fdivs 13,13,12
	lfd 12,96(1)
	fsub 0,12,0
	frsp 0,0
	fadds 0,0,13
	fctiwz 0,0
	stfiwx 0,0,9
.LVL898:
.L600:
	.loc 4 2215 0
	lwz 31,1384(30)
	cmpwi 7,31,0
	bne- 7,.L659
	.loc 4 2221 0
	lbz 0,1993(30)
	cmpwi 7,0,0
	beq- 7,.L603
	.loc 4 2221 0 is_stmt 0 discriminator 1
	lwz 11,2004(30)
	lwz 9,1988(30)
	cmpw 6,11,9
	bgt- 6,.L660
.L603:
.LBE5410:
	.loc 4 2065 0 is_stmt 1
	lbz 9,1992(30)
	cmpwi 6,9,0
	bne- 6,.L605
	.loc 4 2065 0 is_stmt 0 discriminator 2
	lwz 11,2004(30)
	lwz 9,1984(30)
	cmpw 6,11,9
	blt- 6,.L605
.LVL899:
.L569:
.LBE5409:
.LBE5575:
	.loc 4 2228 0 is_stmt 1
	stb 0,1044(22)
	.loc 4 2229 0
	beq- 7,.L606
	.loc 4 2231 0
	li 0,0
	stb 0,1993(30)
	b .L606
.LVL900:
.L653:
.LBB5576:
.LBB5568:
.LBB5565:
.LBB5508:
.LBB5450:
	.loc 20 159 0
	addi 3,1,8
	bl _ZNK7idTimer18InitBaseClockTicksEv
	lfd 29,24(1)
	lfd 0,0(25)
	b .L611
.LVL901:
.L605:
.LBE5450:
.LBE5508:
.LBE5565:
	.loc 4 2065 0 discriminator 1
	bne- 7,.L633
.L604:
.LBE5568:
.LBE5576:
	.loc 4 2228 0
	li 0,0
	stb 0,1044(22)
.LVL902:
.L606:
	.loc 4 2235 0
	mr 3,27
	bl _ZN11idGameLocal12RunDebugInfoEv
	.loc 4 2236 0
	bl _Z16D_DrawDebugLinesv
.LBE5583:
	.loc 4 2239 0
	lwz 0,252(1)
	lwz 12,132(1)
	mr 3,22
	mtlr 0
	lwz 14,136(1)
	lwz 15,140(1)
	mtcrf 8,12
	lwz 16,144(1)
	lwz 17,148(1)
	lwz 18,152(1)
	lwz 19,156(1)
	lwz 20,160(1)
.LVL903:
	lwz 21,164(1)
	lwz 22,168(1)
.LVL904:
	lwz 23,172(1)
	lwz 24,176(1)
	lwz 25,180(1)
	lwz 26,184(1)
	lwz 27,188(1)
.LVL905:
	lwz 28,192(1)
	lwz 29,196(1)
	lwz 30,200(1)
.LVL906:
	lwz 31,204(1)
	lfd 27,208(1)
	lfd 28,216(1)
	lfd 29,224(1)
	lfd 30,232(1)
	lfd 31,240(1)
	addi 1,1,248
	.cfi_remember_state
.LCFI169:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL907:
.L572:
.LCFI170:
	.cfi_restore_state
.LBB5584:
.LBB5577:
.LBB5569:
.LBB5566:
	.loc 4 2137 0
	lbz 0,1992(30)
	.loc 4 4268 0
	lwz 9,-32176(23)
	.loc 4 2137 0
	cmpwi 7,0,0
	.loc 4 4268 0
	lwz 0,-32180(23)
	.loc 4 2137 0
	beq- 7,.L581
.LVL908:
.LBB5509:
.LBB5510:
	.loc 9 268 0
	cmpwi 7,9,0
	li 28,0
	beq- 7,.L573
	cmpw 7,0,9
	beq- 7,.L573
	.loc 9 271 0
	lwz 31,12(9)
.LVL909:
.LBE5510:
.LBE5509:
	.loc 4 2139 0
	cmpwi 7,31,0
	beq- 7,.L573
	lis 9,g_cinematic@ha
	.loc 4 2144 0
	mr 3,31
	la 26,g_cinematic@l(9)
.LBB5511:
.LBB5512:
	.loc 7 142 0
	lwz 9,44(26)
.LBE5512:
.LBE5511:
	.loc 4 2140 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L582
.LVL910:
.L661:
	.loc 4 2140 0 is_stmt 0 discriminator 1
	lbz 0,160(31)
	cmpwi 7,0,0
	bne- 7,.L582
	.loc 4 2141 0 is_stmt 1 discriminator 4
	bl _ZNK8idEntity10GetPhysicsEv
.LVL911:
	lwz 4,2004(30)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	bctrl
.L612:
.LVL912:
	.loc 4 4268 0
	lwz 9,32(31)
	lwz 0,28(31)
.LBB5514:
.LBB5515:
	.loc 9 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	beq- 7,.L573
	beq- 6,.L573
	.loc 9 271 0
	lwz 31,12(9)
.LVL913:
.LBE5515:
.LBE5514:
	.loc 4 2139 0
	cmpwi 7,31,0
	beq- 7,.L573
.LBB5516:
.LBB5513:
	.loc 7 142 0
	lwz 9,44(26)
.LVL914:
.LBE5513:
.LBE5516:
	.loc 4 2144 0
	mr 3,31
	.loc 4 2140 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L661
.LVL915:
.L582:
	.loc 4 2144 0
	lwz 9,0(31)
	.loc 4 2145 0
	addi 28,28,1
	.loc 4 2144 0
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL916:
	b .L612
.LVL917:
.L658:
.LBB5517:
.LBB5518:
	.loc 20 193 0
	lwz 3,0(29)
.LBE5518:
.LBE5517:
	.loc 4 2191 0
	lfd 30,72(1)
.LBB5524:
.LBB5519:
	.loc 20 193 0
	lwz 9,0(3)
.LBE5519:
.LBE5524:
	.loc 4 2192 0
	lwz 31,2004(30)
.LBB5525:
.LBB5520:
	.loc 20 193 0
	lwz 0,12(9)
	mtctr 0
	bctrl
.LBE5520:
.LBE5525:
.LBB5526:
.LBB5527:
	lwz 3,0(29)
.LBE5527:
.LBE5526:
.LBB5532:
.LBB5521:
	lfd 28,.LC47@l(18)
.LBE5521:
.LBE5532:
.LBB5533:
.LBB5528:
	lwz 9,0(3)
.LBE5528:
.LBE5533:
.LBB5534:
.LBB5522:
	fmul 1,1,28
	.loc 4 2191 0
	lfd 29,48(1)
.LBE5522:
.LBE5534:
.LBB5535:
.LBB5529:
	.loc 20 193 0
	lwz 0,12(9)
	mtctr 0
.LBE5529:
.LBE5535:
.LBB5536:
.LBB5523:
	fdiv 27,30,1
.LBE5523:
.LBE5536:
.LBB5537:
.LBB5530:
	bctrl
.LBE5530:
.LBE5537:
.LBB5538:
.LBB5539:
	lwz 3,0(29)
.LBE5539:
.LBE5538:
	.loc 4 2192 0
	lfd 30,72(1)
.LBB5544:
.LBB5540:
	.loc 20 193 0
	lwz 9,0(3)
	lwz 0,12(9)
	mtctr 0
.LBE5540:
.LBE5544:
.LBB5545:
.LBB5531:
	fmul 1,1,28
	fdiv 29,29,1
.LBE5531:
.LBE5545:
.LBB5546:
.LBB5541:
	bctrl
.LBE5541:
.LBE5546:
.LBB5547:
.LBB5548:
	lwz 3,0(29)
	lwz 9,0(3)
	lwz 0,12(9)
	mtctr 0
.LBE5548:
.LBE5547:
.LBB5551:
.LBB5542:
	fmul 1,1,28
.LBE5542:
.LBE5551:
	.loc 4 2192 0
	fadd 29,27,29
.LBB5552:
.LBB5543:
	.loc 20 193 0
	fdiv 27,30,1
	.loc 4 2192 0
	lfd 30,48(1)
.LBE5543:
.LBE5552:
.LBB5553:
.LBB5549:
	.loc 20 193 0
	bctrl
.LBE5549:
.LBE5553:
	.loc 4 2192 0
	lis 9,.LC53@ha
	lwz 4,.LC53@l(9)
	mr 3,27
	mr 5,31
	mr 6,28
.LBB5554:
.LBB5550:
	.loc 20 193 0
	fmul 0,1,28
.LBE5550:
.LBE5554:
	.loc 4 2192 0
	fmr 2,27
	fmr 1,29
	fdiv 3,30,0
	creqv 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	b .L599
.L657:
	.loc 4 2185 0
	addi 3,30,1416
	bl _ZN17idMultiplayerGame3RunEv
	b .L598
.L656:
.LBB5555:
.LBB5498:
	.loc 20 159 0
	addi 3,1,32
	bl _ZNK7idTimer18InitBaseClockTicksEv
	lfd 29,48(1)
	lfd 0,0(25)
	b .L594
.LVL918:
.L655:
.LBE5498:
.LBE5555:
.LBB5556:
.LBB5485:
	addi 3,1,56
	bl _ZNK7idTimer18InitBaseClockTicksEv
	lfd 30,72(1)
	lfd 0,0(25)
	b .L590
.LVL919:
.L581:
.LBE5485:
.LBE5556:
.LBB5557:
.LBB5558:
	.loc 9 268 0
	cmpwi 7,9,0
	li 28,0
	beq- 7,.L573
	cmpw 7,0,9
	bne+ 7,.L651
	b .L573
.LVL920:
.L662:
.LBE5558:
.LBE5557:
.LBB5560:
.LBB5561:
	beq- 6,.L573
.LVL921:
.L651:
.LBE5561:
.LBE5560:
.LBB5563:
.LBB5559:
	.loc 9 271 0
	lwz 31,12(9)
.LVL922:
.LBE5559:
.LBE5563:
	.loc 4 2149 0
	cmpwi 7,31,0
	beq- 7,.L573
	.loc 4 2150 0
	lwz 9,0(31)
.LVL923:
	mr 3,31
	.loc 4 2151 0
	addi 28,28,1
	.loc 4 2150 0
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL924:
	.loc 4 4268 0
	lwz 9,32(31)
	lwz 0,28(31)
.LBB5564:
.LBB5562:
	.loc 9 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	bne+ 7,.L662
	b .L573
.LVL925:
.L638:
.LBE5562:
.LBE5564:
.LBE5566:
.LBE5569:
.LBB5570:
.LBB5571:
	.loc 4 2055 0 discriminator 1
	lis 9,g_stopTime+44@ha
	.loc 7 142 0 discriminator 1
	lwz 9,g_stopTime+44@l(9)
.LBE5571:
.LBE5570:
	.loc 4 2055 0 discriminator 1
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L663
	.loc 4 2057 0 discriminator 4
	lis 9,gameRenderWorld@ha
	lwz 4,2004(30)
	lwz 3,gameRenderWorld@l(9)
	addi 4,4,1
	lwz 9,0(3)
	lwz 0,152(9)
	mtctr 0
	bctrl
	.loc 4 2060 0 discriminator 4
	lwz 5,48(27)
	lwz 4,112(1)
	addi 3,27,228
	slwi 5,5,5
	bl memcpy
	.loc 4 2062 0 discriminator 4
	cmpwi 7,20,0
	beq- 7,.L568
	.loc 4 2063 0
	lwz 9,0(20)
	mr 3,20
	lwz 0,20(9)
	mtctr 0
	bctrl
	lbz 0,1993(30)
	cmpwi 7,0,0
	b .L569
.L663:
	addi 11,27,228
	lis 16,gameRenderWorld@ha
	lis 29,_ZN5idLib3sysE@ha
	lis 19,g_timeentities@ha
	lis 25,_ZN7idTimer4baseE@ha
	lis 9,g_frametime@ha
	stw 11,120(1)
	b .L649
.L568:
.LBB5572:
	.loc 4 2065 0
	lbz 0,1993(30)
	cmpwi 7,0,0
	b .L569
.LVL926:
.L659:
.LBB5567:
	.loc 4 2216 0
	lwz 4,1388(30)
	mr 3,22
	li 5,1024
	bl strncpy
	lbz 0,1993(30)
	cmpwi 7,0,0
	.loc 4 2217 0
	b .L569
.LVL927:
.L660:
	.loc 4 2222 0
	lis 4,.LC52@ha
	mr 3,27
	la 4,.LC52@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	.loc 4 2223 0
	stb 31,1993(30)
	.loc 4 2224 0
	b .L604
.LBE5567:
.LBE5572:
.LBE5577:
.LBE5584:
	.cfi_endproc
.LFE2887:
	.size	_ZN11idGameLocal8RunFrameEPK9usercmd_t, .-_ZN11idGameLocal8RunFrameEPK9usercmd_t
	.align 2
	.globl _ZNK11idGameLocal6GetAASEPKc
	.type	_ZNK11idGameLocal6GetAASEPKc, @function
_ZNK11idGameLocal6GetAASEPKc:
.LFB2908:
	.loc 4 2688 0
	.cfi_startproc
.LVL928:
	mflr 0
	stwu 1,-24(1)
.LCFI171:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB5585:
	.loc 4 4268 0
	addis 30,3,0x25
	.cfi_offset 30, -8
.LBE5585:
	.loc 4 2688 0
	stw 0,28(1)
.LBB5590:
	.loc 4 2700 0
	li 3,0
.LVL929:
.LBE5590:
	.loc 4 2688 0
	stw 31,20(1)
.LBB5591:
	.loc 4 2691 0
	lwz 0,2140(30)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L665
	li 31,0
	b .L667
.LVL930:
.L666:
	lwz 0,2140(30)
	addi 31,31,1
.LVL931:
	cmpw 7,0,31
	ble- 7,.L671
.LVL932:
.L667:
.LBB5586:
.LBB5587:
	.loc 4 4268 0
	lwz 9,2152(30)
	slwi 0,31,5
	.loc 14 653 0
	mr 4,29
	.loc 4 4268 0
	add 9,9,0
	.loc 14 653 0
	lwz 3,4(9)
	bl _ZN5idStr3CmpEPKcS1_
.LBE5587:
.LBE5586:
	.loc 4 2692 0
	cmpwi 7,3,0
	bne+ 7,.L666
.LVL933:
	.loc 4 2693 0
	lwz 9,2136(30)
.LBB5588:
.LBB5589:
	.loc 8 573 0
	slwi 31,31,2
.LVL934:
.LBE5589:
.LBE5588:
	.loc 4 2693 0
	lwzx 3,9,31
	lwz 9,0(3)
	lwz 0,20(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	.loc 4 2694 0
	li 3,0
	.loc 4 2693 0
	beq- 7,.L665
	.loc 4 2696 0
	lwz 9,2136(30)
	lwzx 3,9,31
.LVL935:
.L665:
.LBE5591:
	.loc 4 2701 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL936:
	mtlr 0
	lwz 30,16(1)
.LVL937:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI172:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL938:
.L671:
.LCFI173:
	.cfi_restore_state
	lwz 0,28(1)
.LBB5592:
	.loc 4 2700 0
	li 3,0
.LBE5592:
	.loc 4 2701 0
	lwz 29,12(1)
.LVL939:
	mtlr 0
	lwz 30,16(1)
.LVL940:
	lwz 31,20(1)
.LVL941:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI174:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2908:
	.size	_ZNK11idGameLocal6GetAASEPKc, .-_ZNK11idGameLocal6GetAASEPKc
	.align 2
	.globl _ZN11idGameLocal15SetAASAreaStateERK8idBoundsib
	.type	_ZN11idGameLocal15SetAASAreaStateERK8idBoundsib, @function
_ZN11idGameLocal15SetAASAreaStateERK8idBoundsib:
.LFB2909:
	.loc 4 2708 0
	.cfi_startproc
.LVL942:
	mflr 0
	stwu 1,-32(1)
.LCFI175:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,6
	.cfi_offset 27, -20
	stw 28,16(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,24(1)
.LBB5593:
	.loc 4 4268 0
	addis 30,3,0x25
	.cfi_offset 30, -8
.LBE5593:
	.loc 4 2708 0
	stw 0,36(1)
	stw 31,28(1)
.LBB5594:
	.loc 4 2711 0
	lwz 0,2124(30)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L672
	li 31,0
.LVL943:
.L674:
	.loc 4 2712 0 discriminator 2
	lwz 9,2136(30)
	slwi 0,31,2
	mr 4,29
	mr 5,28
	lwzx 3,9,0
	mr 6,27
	.loc 4 2711 0 discriminator 2
	addi 31,31,1
.LVL944:
	.loc 4 2712 0 discriminator 2
	lwz 9,0(3)
	lwz 0,76(9)
	mtctr 0
	bctrl
.LVL945:
	.loc 4 2711 0 discriminator 2
	lwz 0,2124(30)
	cmpw 7,0,31
	bgt+ 7,.L674
.LVL946:
.L672:
.LBE5594:
	.loc 4 2714 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL947:
	lwz 29,20(1)
.LVL948:
	lwz 30,24(1)
.LVL949:
	lwz 31,28(1)
	addi 1,1,32
.LCFI176:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2909:
	.size	_ZN11idGameLocal15SetAASAreaStateERK8idBoundsib, .-_ZN11idGameLocal15SetAASAreaStateERK8idBoundsib
	.align 2
	.globl _ZN11idGameLocal14AddAASObstacleERK8idBounds
	.type	_ZN11idGameLocal14AddAASObstacleERK8idBounds, @function
_ZN11idGameLocal14AddAASObstacleERK8idBounds:
.LFB2910:
	.loc 4 2721 0
	.cfi_startproc
.LVL950:
	mflr 0
	stwu 1,-24(1)
.LCFI177:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
.LBB5595:
	.loc 4 2727 0
	li 28,-1
	.cfi_offset 28, -16
.LBE5595:
	.loc 4 2721 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB5596:
	.loc 4 4268 0
	addis 30,3,0x25
	.cfi_offset 30, -8
.LBE5596:
	.loc 4 2721 0
	stw 0,28(1)
	stw 31,20(1)
.LBB5597:
	.loc 4 2726 0
	lwz 0,2124(30)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L677
.LVL951:
	.loc 4 2730 0
	lwz 9,2136(30)
	lwz 3,0(9)
.LVL952:
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	bctrl
.LVL953:
	.loc 4 2731 0
	lwz 0,2124(30)
	.loc 4 2730 0
	mr 28,3
.LVL954:
	.loc 4 2731 0
	cmpwi 7,0,1
	ble- 7,.L677
	li 31,1
.LVL955:
.L678:
	.loc 4 2732 0 discriminator 2
	lwz 9,2136(30)
	slwi 0,31,2
	mr 4,29
	.loc 4 2731 0 discriminator 2
	addi 31,31,1
.LVL956:
	.loc 4 2732 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	bctrl
.LVL957:
	.loc 4 2731 0 discriminator 2
	lwz 0,2124(30)
	cmpw 7,0,31
	bgt+ 7,.L678
.LVL958:
.L677:
.LBE5597:
	.loc 4 2737 0
	lwz 0,28(1)
	mr 3,28
	lwz 29,12(1)
.LVL959:
	mtlr 0
	lwz 28,8(1)
	lwz 30,16(1)
.LVL960:
	lwz 31,20(1)
	addi 1,1,24
.LCFI178:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2910:
	.size	_ZN11idGameLocal14AddAASObstacleERK8idBounds, .-_ZN11idGameLocal14AddAASObstacleERK8idBounds
	.align 2
	.globl _ZN11idGameLocal17RemoveAASObstacleEi
	.type	_ZN11idGameLocal17RemoveAASObstacleEi, @function
_ZN11idGameLocal17RemoveAASObstacleEi:
.LFB2911:
	.loc 4 2744 0
	.cfi_startproc
.LVL961:
	mflr 0
	stwu 1,-24(1)
.LCFI179:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
.LBB5598:
	.loc 4 4268 0
	addis 30,3,0x25
	.cfi_offset 30, -8
.LBE5598:
	.loc 4 2744 0
	stw 0,28(1)
	stw 31,20(1)
.LBB5599:
	.loc 4 2747 0
	lwz 0,2124(30)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L681
	li 31,0
.LVL962:
.L683:
	.loc 4 2748 0 discriminator 2
	lwz 9,2136(30)
	slwi 0,31,2
	mr 4,29
	.loc 4 2747 0 discriminator 2
	addi 31,31,1
.LVL963:
	.loc 4 2748 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,84(9)
	mtctr 0
	bctrl
.LVL964:
	.loc 4 2747 0 discriminator 2
	lwz 0,2124(30)
	cmpw 7,0,31
	bgt+ 7,.L683
.LVL965:
.L681:
.LBE5599:
	.loc 4 2750 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL966:
	mtlr 0
	lwz 30,16(1)
.LVL967:
	lwz 31,20(1)
	addi 1,1,24
.LCFI180:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2911:
	.size	_ZN11idGameLocal17RemoveAASObstacleEi, .-_ZN11idGameLocal17RemoveAASObstacleEi
	.align 2
	.globl _ZN11idGameLocal21RemoveAllAASObstaclesEv
	.type	_ZN11idGameLocal21RemoveAllAASObstaclesEv, @function
_ZN11idGameLocal21RemoveAllAASObstaclesEv:
.LFB2912:
	.loc 4 2757 0
	.cfi_startproc
.LVL968:
	mflr 0
	stwu 1,-16(1)
.LCFI181:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
.LBB5600:
	.loc 4 4268 0
	addis 30,3,0x25
	.cfi_offset 30, -8
.LBE5600:
	.loc 4 2757 0
	stw 0,20(1)
	stw 31,12(1)
.LBB5601:
	.loc 4 2760 0
	lwz 0,2124(30)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L685
	li 31,0
.LVL969:
.L687:
	.loc 4 2761 0 discriminator 2
	lwz 9,2136(30)
	slwi 0,31,2
	.loc 4 2760 0 discriminator 2
	addi 31,31,1
.LVL970:
	.loc 4 2761 0 discriminator 2
	lwzx 3,9,0
	lwz 9,0(3)
	lwz 0,88(9)
	mtctr 0
	bctrl
.LVL971:
	.loc 4 2760 0 discriminator 2
	lwz 0,2124(30)
	cmpw 7,0,31
	bgt+ 7,.L687
.LVL972:
.L685:
.LBE5601:
	.loc 4 2763 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL973:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI182:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2912:
	.size	_ZN11idGameLocal21RemoveAllAASObstaclesEv, .-_ZN11idGameLocal21RemoveAllAASObstaclesEv
	.align 2
	.globl _ZN11idGameLocal8CheatsOkEb
	.type	_ZN11idGameLocal8CheatsOkEb, @function
_ZN11idGameLocal8CheatsOkEb:
.LFB2913:
	.loc 4 2770 0
	.cfi_startproc
.LVL974:
	mflr 0
	stwu 1,-24(1)
.LCFI183:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5602:
	.loc 4 2773 0
	addis 9,3,0x25
.LBE5602:
	.loc 4 2770 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
.LBB5607:
	.loc 4 2773 0
	lbz 0,2016(9)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L698
.LVL975:
.L690:
.LBB5603:
.LBB5604:
	.loc 4 2778 0
	lis 9,developer+44@ha
.LBE5604:
.LBE5603:
	.loc 4 2779 0
	li 29,1
.LBB5606:
.LBB5605:
	.loc 7 142 0
	lwz 9,developer+44@l(9)
.LBE5605:
.LBE5606:
	.loc 4 2778 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L699
.L691:
.LBE5607:
	.loc 4 2790 0
	lwz 0,28(1)
	mr 3,29
	lwz 30,16(1)
	mtlr 0
	lwz 29,12(1)
	lwz 31,20(1)
.LVL976:
	addi 1,1,24
	.cfi_remember_state
.LCFI184:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL977:
.L699:
.LCFI185:
	.cfi_restore_state
.LBB5608:
	.loc 4 2782 0
	mr 3,31
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL978:
	.loc 4 2783 0
	cmpwi 7,30,0
	beq- 7,.L691
	.loc 4 2783 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L692
	.loc 4 2783 0 discriminator 2
	lwz 0,188(3)
	cmpwi 7,0,0
	bgt+ 7,.L691
.L692:
	.loc 4 2787 0 is_stmt 1
	lis 4,.LC56@ha
	mr 3,31
.LVL979:
	la 4,.LC56@l(4)
	.loc 4 2789 0
	li 29,0
	.loc 4 2787 0
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 2789 0
	b .L691
.LVL980:
.L698:
	.loc 4 2773 0 discriminator 1
	lis 9,cvarSystem@ha
	lis 4,.LC54@ha
.LVL981:
	lwz 3,cvarSystem@l(9)
	la 4,.LC54@l(4)
	lwz 9,0(3)
	lwz 0,48(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	bne- 7,.L690
	.loc 4 2774 0 discriminator 4
	lis 4,.LC55@ha
	mr 3,31
	la 4,.LC55@l(4)
	.loc 4 2775 0 discriminator 4
	li 29,0
	.loc 4 2774 0 discriminator 4
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LBE5608:
	.loc 4 2790 0 discriminator 4
	lwz 0,28(1)
	mr 3,29
	lwz 30,16(1)
	mtlr 0
	lwz 29,12(1)
	lwz 31,20(1)
.LVL982:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI186:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2913:
	.size	_ZN11idGameLocal8CheatsOkEb, .-_ZN11idGameLocal8CheatsOkEb
	.align 2
	.globl _ZN11idGameLocal14RegisterEntityEP8idEntity
	.type	_ZN11idGameLocal14RegisterEntityEP8idEntity, @function
_ZN11idGameLocal14RegisterEntityEP8idEntity:
.LFB2914:
	.loc 4 2797 0
	.cfi_startproc
.LVL983:
	mflr 0
	stwu 1,-48(1)
.LCFI187:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 29,36(1)
.LBB5609:
	.loc 4 2800 0
	addis 29,3,0x25
	.cfi_offset 29, -12
.LBE5609:
	.loc 4 2797 0
	stw 0,52(1)
.LBB5625:
	.loc 4 2800 0
	lis 0,0xf
	.cfi_offset 65, 4
.LBE5625:
	.loc 4 2797 0
	stw 30,40(1)
.LBB5626:
	.loc 4 2800 0
	ori 0,0,65535
.LBE5626:
	.loc 4 2797 0
	stw 31,44(1)
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 27,28(1)
	mr 31,4
	stw 28,32(1)
.LBB5627:
	.loc 4 2800 0
	lwz 9,2104(29)
	cmpw 7,9,0
	bgt- 7,.L712
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL984:
.L701:
	.loc 4 2804 0
	addi 28,29,2164
	lis 4,.LC58@ha
	lis 5,.LC59@ha
	mr 3,28
	la 4,.LC58@l(4)
	la 5,.LC59@l(5)
	addi 6,1,8
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	cmpwi 7,3,0
	beq- 7,.L702
.LVL985:
	lwz 9,8(1)
	addis 27,30,0x1
.L703:
	.loc 4 2814 0
	addi 11,9,132
	.loc 4 2815 0
	addi 0,9,4228
	.loc 4 2814 0
	slwi 11,11,2
	.loc 4 2815 0
	slwi 0,0,2
	.loc 4 2814 0
	add 11,30,11
	.loc 4 2815 0
	add 30,30,0
.LVL986:
	.loc 4 2814 0
	stw 31,4(11)
	.loc 4 2818 0
	addi 3,31,100
	mr 4,28
	.loc 4 2815 0
	lwz 11,2104(29)
	addi 0,11,1
	stw 11,4(30)
	stw 0,2104(29)
	.loc 4 2816 0
	stw 9,4(31)
.LBB5610:
.LBB5611:
.LBB5612:
.LBB5613:
.LBB5614:
	.loc 9 176 0
	lwz 11,20(31)
	lwz 0,16(31)
.LBE5614:
.LBE5613:
.LBE5612:
.LBE5611:
.LBE5610:
	.loc 4 4268 0
	lwz 9,-32196(27)
.LBB5623:
.LBB5621:
.LBB5619:
.LBB5617:
.LBB5615:
	.loc 9 176 0
	stw 0,4(11)
.LBE5615:
.LBE5617:
.LBE5619:
.LBE5621:
.LBE5623:
	.loc 4 2817 0
	addi 0,31,12
.LVL987:
.LBB5624:
.LBB5622:
.LBB5620:
.LBB5618:
.LBB5616:
	.loc 9 177 0
	lwz 10,20(31)
	lwz 11,16(31)
	stw 10,8(11)
	.loc 9 180 0
	stw 0,20(31)
	.loc 9 181 0
	stw 0,12(31)
.LBE5616:
.LBE5618:
	.loc 9 196 0
	stw 9,16(31)
	.loc 9 197 0
	lwz 11,8(9)
	stw 11,20(31)
	.loc 9 198 0
	stw 0,8(9)
	.loc 9 199 0
	lwz 11,20(31)
	stw 0,4(11)
	.loc 9 200 0
	lwz 0,0(9)
.LVL988:
	stw 0,12(31)
.LBE5620:
.LBE5622:
.LBE5624:
	.loc 4 2818 0
	bl _ZN6idDict17TransferKeyValuesERS_
.LVL989:
	.loc 4 2820 0
	lwz 9,-32232(27)
	lwz 0,8(1)
	cmpw 7,9,0
	bgt- 7,.L700
	.loc 4 2821 0
	addi 9,9,1
	stw 9,-32232(27)
.L700:
.LBE5627:
	.loc 4 2823 0
	lwz 0,52(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
.LVL990:
	lwz 30,40(1)
	lwz 31,44(1)
.LVL991:
	addi 1,1,48
	.cfi_remember_state
.LCFI188:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL992:
.L702:
.LCFI189:
	.cfi_restore_state
.LBB5628:
	.loc 4 2805 0 discriminator 1
	addis 27,30,0x1
	lwz 9,-32236(27)
	addi 11,9,132
	slwi 11,11,2
	add 11,30,11
	lwz 0,4(11)
	addi 11,11,4
	cmpwi 7,0,0
	beq- 7,.L704
	.loc 4 2805 0 is_stmt 0
	cmpwi 7,9,4093
	.loc 4 2797 0 is_stmt 1
	subfic 0,9,4094
	mtctr 0
	.loc 4 2805 0
	ble- 7,.L706
.L710:
	.loc 4 2809 0
	lis 4,.LC60@ha
	mr 3,30
	la 4,.LC60@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.L708:
	.loc 4 2811 0
	lwz 9,-32236(27)
	addi 0,9,1
	stw 9,8(1)
.LVL993:
	stw 0,-32236(27)
	b .L703
.LVL994:
.L706:
	.loc 4 2805 0 discriminator 5
	lwzu 0,4(11)
	.loc 4 2806 0 discriminator 5
	addi 9,9,1
	.loc 4 2805 0 discriminator 5
	cmpwi 7,0,0
	beq- 7,.L713
	.loc 4 2805 0 is_stmt 0 discriminator 2
	bdnz .L706
	.loc 4 2805 0
	stw 9,-32236(27)
	b .L710
.L713:
	stw 9,-32236(27)
.L704:
	.loc 4 2808 0 is_stmt 1
	cmpwi 7,9,4093
	ble+ 7,.L708
	b .L710
.L712:
	.loc 4 2801 0
	lis 4,.LC57@ha
	la 4,.LC57@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L701
.LBE5628:
	.cfi_endproc
.LFE2914:
	.size	_ZN11idGameLocal14RegisterEntityEP8idEntity, .-_ZN11idGameLocal14RegisterEntityEP8idEntity
	.align 2
	.globl _ZN11idGameLocal16UnregisterEntityEP8idEntity
	.type	_ZN11idGameLocal16UnregisterEntityEP8idEntity, @function
_ZN11idGameLocal16UnregisterEntityEP8idEntity:
.LFB2915:
	.loc 4 2830 0
	.cfi_startproc
.LVL995:
	mflr 0
	stwu 1,-16(1)
.LCFI190:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 4 2833 0
	addis 9,3,0x25
	.loc 4 2830 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 4 2833 0
	lwz 3,1976(9)
.LVL996:
	cmpwi 7,3,0
	beq- 7,.L715
	.cfi_offset 65, 4
	.loc 4 2834 0
	bl _ZN14idEditEntities20RemoveSelectedEntityEP8idEntity
.LVL997:
.L715:
	.loc 4 2837 0
	lwz 9,4(31)
	cmpwi 7,9,4095
	beq- 7,.L714
	.loc 4 2837 0 is_stmt 0 discriminator 1
	addi 9,9,132
	slwi 9,9,2
	add 9,30,9
	lwz 9,4(9)
	cmpw 7,9,31
	beq- 7,.L718
.L714:
	.loc 4 2846 0 is_stmt 1
	lwz 0,20(1)
	lwz 30,8(1)
.LVL998:
	mtlr 0
	lwz 31,12(1)
.LVL999:
	addi 1,1,16
	.cfi_remember_state
.LCFI191:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1000:
.L718:
.LCFI192:
	.cfi_restore_state
.LBB5629:
.LBB5630:
	.loc 9 176 0
	lwz 11,20(31)
.LBE5630:
.LBE5629:
	.loc 4 2838 0
	addi 0,31,12
.LVL1001:
.LBB5634:
.LBB5631:
	.loc 9 176 0
	lwz 10,16(31)
	stw 10,4(11)
	.loc 9 177 0
	lwz 11,16(31)
	lwz 10,20(31)
	stw 10,8(11)
	.loc 9 179 0
	stw 0,16(31)
.LBE5631:
.LBE5634:
	.loc 4 2839 0
	lwz 11,4(31)
.LBB5635:
.LBB5632:
	.loc 9 180 0
	stw 0,20(31)
.LBE5632:
.LBE5635:
	.loc 4 2839 0
	addi 11,11,132
.LBB5636:
.LBB5633:
	.loc 9 181 0
	stw 0,12(31)
.LBE5633:
.LBE5636:
	.loc 4 2839 0
	slwi 11,11,2
	li 0,0
.LVL1002:
	add 11,30,11
	stw 0,4(11)
	.loc 4 2840 0
	li 0,-1
	lwz 11,4(31)
	addi 11,11,4228
	slwi 11,11,2
	add 11,30,11
	stw 0,4(11)
	.loc 4 2841 0
	lwz 0,4(31)
	cmpwi 7,0,3
	ble- 7,.L717
	.loc 4 2841 0 is_stmt 0 discriminator 1
	addis 30,30,0x1
.LVL1003:
	lwz 11,-32236(30)
	cmpw 7,0,11
	bge- 7,.L717
	.loc 4 2842 0 is_stmt 1
	stw 0,-32236(30)
.LVL1004:
.L717:
	.loc 4 2844 0
	li 0,4095
	stw 0,4(9)
	.loc 4 2846 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1005:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI193:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2915:
	.size	_ZN11idGameLocal16UnregisterEntityEP8idEntity, .-_ZN11idGameLocal16UnregisterEntityEP8idEntity
	.align 2
	.globl _ZN11idGameLocal15SpawnEntityTypeERK10idTypeInfoPK6idDictb
	.type	_ZN11idGameLocal15SpawnEntityTypeERK10idTypeInfoPK6idDictb, @function
_ZN11idGameLocal15SpawnEntityTypeERK10idTypeInfoPK6idDictb:
.LFB2916:
	.loc 4 2853 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2916
.LVL1006:
	mflr 0
	stwu 1,-24(1)
.LCFI194:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5637:
.LBB5638:
.LBB5639:
	.loc 4 2862 0
	lis 9,_ZN8idEntity4TypeE@ha
.LBE5639:
.LBE5638:
.LBE5637:
	.loc 4 2853 0
	stw 29,12(1)
.LBB5646:
.LBB5642:
.LBB5640:
	.loc 4 2862 0
	la 9,_ZN8idEntity4TypeE@l(9)
.LBE5640:
.LBE5642:
.LBE5646:
	.loc 4 2853 0
	stw 30,16(1)
	mr 29,5
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,20(1)
	mr 30,3
	stw 0,28(1)
	.loc 4 2853 0
	mr 31,4
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBB5647:
.LBB5643:
	.loc 4 4268 0
	lwz 0,56(4)
.LBE5643:
.LBB5644:
.LBB5641:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L720
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L720
.LBE5641:
.LBE5644:
	.loc 4 2867 0
	cmpwi 7,29,0
	.loc 4 2868 0
	addis 30,30,0x25
	addi 3,30,2164
.LVL1007:
	.loc 4 2867 0
	beq- 7,.L721
.LVL1008:
.L729:
	.loc 4 2868 0
	mr 4,29
.LEHB28:
	bl _ZN6idDictaSERKS_
.L722:
	.loc 4 2872 0
	lwz 0,8(31)
	mtctr 0
	bctrl
	mr 31,3
.LVL1009:
	.loc 4 2873 0
	bl _ZN7idClass9CallSpawnEv
.LEHE28:
.LVL1010:
.L726:
	.loc 4 2879 0
	addi 3,30,2164
.LEHB29:
	bl _ZN6idDict5ClearEv
.LBE5647:
	.loc 4 2882 0
	lwz 0,28(1)
	mr 3,31
	lwz 29,12(1)
.LVL1011:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1012:
	addi 1,1,24
	.cfi_remember_state
.LCFI195:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1013:
.L720:
.LCFI196:
	.cfi_restore_state
.LBB5648:
	.loc 4 2863 0
	lwz 5,0(31)
.LVL1014:
	lis 4,.LC61@ha
.LVL1015:
	mr 3,30
.LVL1016:
	la 4,.LC61@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LEHE29:
.LVL1017:
	.loc 4 2867 0
	cmpwi 7,29,0
	.loc 4 2868 0
	addis 30,30,0x25
.LVL1018:
	addi 3,30,2164
	.loc 4 2867 0
	bne+ 7,.L729
.LVL1019:
.L721:
.LEHB30:
	.loc 4 2870 0
	bl _ZN6idDict5ClearEv
.LEHE30:
	b .L722
.LVL1020:
.L728:
	.loc 4 2881 0
	cmpwi 7,4,1
	beq- 7,.L725
.LEHB31:
	bl _Unwind_Resume
.LEHE31:
.L725:
.LBB5645:
	.loc 4 2876 0
	bl __cxa_begin_catch
.LVL1021:
	.loc 4 2877 0
	li 31,0
	.loc 4 2876 0
	bl __cxa_end_catch
	b .L726
.LBE5645:
.LBE5648:
	.cfi_endproc
.LFE2916:
	.section	.gcc_except_table
	.align 2
.LLSDA2916:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2916-.LLSDATTD2916
.LLSDATTD2916:
	.byte	0x1
	.uleb128 .LLSDACSE2916-.LLSDACSB2916
.LLSDACSB2916:
	.uleb128 .LEHB28-.LFB2916
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L728-.LFB2916
	.uleb128 0x1
	.uleb128 .LEHB29-.LFB2916
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB2916
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L728-.LFB2916
	.uleb128 0x1
	.uleb128 .LEHB31-.LFB2916
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE2916:
	.byte	0x1
	.byte	0
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2916:
	.section	".text"
	.size	_ZN11idGameLocal15SpawnEntityTypeERK10idTypeInfoPK6idDictb, .-_ZN11idGameLocal15SpawnEntityTypeERK10idTypeInfoPK6idDictb
	.align 2
	.globl _ZNK11idGameLocal13FindEntityDefEPKcbb
	.type	_ZNK11idGameLocal13FindEntityDefEPKcbb, @function
_ZNK11idGameLocal13FindEntityDefEPKcbb:
.LFB2918:
	.loc 4 2968 0
	.cfi_startproc
.LVL1022:
	mflr 0
	stwu 1,-32(1)
.LCFI197:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	mfcr 12
.LBB5649:
	.loc 4 2970 0
	addis 3,3,0x25
.LVL1023:
.LBE5649:
	.loc 4 2968 0
	stw 29,20(1)
.LBB5650:
	.loc 4 2971 0
	cmpwi 4,6,0
.LBE5650:
	.loc 4 2968 0
	stw 30,24(1)
	mr 29,4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_register 70, 12
	stw 31,28(1)
	mr 30,5
	stw 0,36(1)
.LBB5651:
	.loc 4 2972 0
	lis 31,declManager@ha
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBE5651:
	.loc 4 2968 0
	stw 27,12(1)
	stw 28,16(1)
	stw 12,8(1)
.LBB5652:
	.loc 4 2970 0
	lbz 0,2016(3)
	cmpwi 7,0,0
	bne- 7,.L737
	.cfi_offset 70, -24
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL1024:
.L731:
	.loc 4 2980 0
	lwz 3,declManager@l(31)
	li 4,4
	lwz 9,0(3)
	.loc 4 2979 0
	bne- 4,.L738
	.loc 4 2982 0
	lwz 0,64(9)
	mr 5,29
	mr 6,30
	mtctr 0
	bctrl
.LVL1025:
.LBE5652:
	.loc 4 2986 0
	lwz 0,36(1)
	lwz 12,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	mtcrf 8,12
	lwz 29,20(1)
.LVL1026:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI198:
	.cfi_def_cfa_offset 0
	blr
.LVL1027:
.L737:
.LCFI199:
	.cfi_restore_state
.LBB5653:
	.loc 4 2972 0
	lwz 27,declManager@l(31)
	lis 3,.LC62@ha
.LVL1028:
	la 3,.LC62@l(3)
	lwz 9,0(27)
	.loc 4 2971 0
	bne- 4,.L739
	.loc 4 2974 0
	lwz 28,64(9)
	crxor 6,6,6
	bl _Z2vaPKcz
.LVL1029:
	mr 5,3
	li 4,4
	mr 3,27
	mr 6,30
	mtctr 28
	bctrl
.LVL1030:
.L733:
	.loc 4 2978 0
	cmpwi 7,3,0
	beq- 7,.L731
.L734:
.LBE5653:
	.loc 4 2986 0
	lwz 0,36(1)
	lwz 12,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	mtcrf 8,12
	lwz 29,20(1)
.LVL1031:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI200:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1032:
.L739:
.LCFI201:
	.cfi_restore_state
.LBB5654:
	.loc 4 2972 0
	lwz 28,60(9)
	crxor 6,6,6
	bl _Z2vaPKcz
.LVL1033:
	mr 5,3
	li 4,4
	mr 3,27
	li 6,0
	li 7,0
	mtctr 28
	bctrl
.LVL1034:
	b .L733
.LVL1035:
.L738:
	.loc 4 2980 0
	lwz 0,60(9)
	mr 5,29
	mr 6,30
	li 7,0
	mtctr 0
	bctrl
.LVL1036:
	b .L734
.LBE5654:
	.cfi_endproc
.LFE2918:
	.size	_ZNK11idGameLocal13FindEntityDefEPKcbb, .-_ZNK11idGameLocal13FindEntityDefEPKcbb
	.align 2
	.globl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	.type	_ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb, @function
_ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb:
.LFB2917:
	.loc 4 2892 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2917
.LVL1037:
	mflr 0
	mfcr 12
.LBB5687:
	.loc 4 2900 0
	cmpwi 4,5,0
.LBE5687:
	.loc 4 2892 0
	stwu 1,-72(1)
.LCFI202:
	.cfi_def_cfa_offset 72
	.cfi_register 70, 12
	.cfi_register 65, 0
.LVL1038:
.LBB5735:
.LBB5688:
.LBB5689:
.LBB5690:
	.loc 14 357 0
	li 9,20
.LBE5690:
.LBE5689:
.LBE5688:
.LBE5735:
	.loc 4 2892 0
	stw 0,76(1)
.LBB5736:
.LBB5695:
.LBB5693:
.LBB5691:
	.loc 14 356 0
	li 0,0
	.cfi_offset 65, 4
	.loc 14 357 0
	stw 9,16(1)
	.loc 14 358 0
	addi 9,1,20
.LBE5691:
.LBE5693:
.LBE5695:
.LBE5736:
	.loc 4 2892 0
	stw 26,48(1)
.LBB5737:
	.loc 4 2900 0
	mr 26,5
	.cfi_offset 26, -24
.LBE5737:
	.loc 4 2892 0
	stw 29,60(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 27,52(1)
	stw 28,56(1)
	stw 30,64(1)
	stw 31,68(1)
	stw 12,44(1)
.LBB5738:
.LBB5696:
.LBB5694:
.LBB5692:
	.loc 14 356 0
	stw 0,8(1)
	.loc 14 358 0
	stw 9,12(1)
	.loc 14 359 0
	stb 0,20(1)
.LBE5692:
.LBE5694:
.LBE5696:
	.loc 4 2900 0
	beq- 4,.L741
	.cfi_offset 70, -28
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.loc 4 2901 0
	stw 0,0(5)
.L741:
	.loc 4 2904 0
	addis 31,29,0x25
	addi 30,1,8
	addi 31,31,2164
	mr 3,31
.LVL1039:
.LEHB32:
	bl _ZN6idDictaSERKS_
.LVL1040:
.LBB5697:
.LBB5698:
	.loc 11 221 0
	lis 4,.LC63@ha
	mr 3,31
	la 4,.LC63@l(4)
	addi 30,1,8
	bl _ZNK6idDict7FindKeyEPKc
.LVL1041:
	.loc 11 222 0
	cmpwi 0,3,0
	beq- 0,.L771
.LVL1042:
.LBB5699:
	.loc 4 4268 0
	lwz 9,4(3)
.LBE5699:
.LBE5698:
.LBE5697:
	.loc 4 2907 0
	addi 30,1,8
	lis 4,.LC64@ha
	mr 3,30
.LVL1043:
	lwz 5,4(9)
	la 4,.LC64@l(4)
	crxor 6,6,6
	bl _Z7sprintfR5idStrPKcz
.LVL1044:
.L742:
.LBB5700:
.LBB5701:
	.loc 11 221 0
	lis 4,.LC65@ha
	mr 3,31
	la 4,.LC65@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1045:
	.loc 11 222 0
	cmpwi 0,3,0
	.loc 11 226 0
	li 28,0
	.loc 11 222 0
	beq- 0,.L743
.LVL1046:
.LBB5702:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL1047:
.L743:
.LBE5702:
.LBE5701:
.LBE5700:
	.loc 4 2913 0
	mr 3,29
.LVL1048:
	mr 4,28
	li 5,0
	li 6,1
	bl _ZNK11idGameLocal13FindEntityDefEPKcbb
.LVL1049:
	.loc 4 2915 0
	mr. 4,3
	beq- 0,.L772
	.loc 4 2920 0
	mr 3,31
.LVL1050:
	addi 4,4,8
.LVL1051:
	bl _ZN6idDict11SetDefaultsEPKS_
.LVL1052:
.LBB5703:
.LBB5704:
	.loc 11 221 0
	lis 4,.LC67@ha
	mr 3,31
	la 4,.LC67@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1053:
	.loc 11 222 0
	cmpwi 0,3,0
	beq- 0,.L746
.LVL1054:
.LBB5705:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 27,4(9)
.LVL1055:
.LBE5705:
.LBE5704:
.LBE5703:
	.loc 4 2924 0
	cmpwi 7,27,0
	beq- 7,.L746
	.loc 4 2926 0
	mr 3,27
.LVL1056:
	bl _ZN7idClass8GetClassEPKc
.LVL1057:
	.loc 4 2927 0
	cmpwi 0,3,0
	beq- 0,.L773
	.loc 4 2932 0
	lwz 0,8(3)
	mtctr 0
	bctrl
.LVL1058:
	.loc 4 2933 0
	mr. 31,3
.LVL1059:
	beq- 0,.L774
	.loc 4 2938 0
	bl _ZN7idClass9CallSpawnEv
.LVL1060:
	.loc 4 2940 0
	beq- 4,.L770
.LVL1061:
.LBB5706:
.LBB5707:
	.loc 5 340 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1062:
.LBE5707:
	.loc 4 4268 0
	lis 9,_ZN8idEntity4TypeE@ha
	lwz 0,56(3)
	la 9,_ZN8idEntity4TypeE@l(9)
.LBB5710:
.LBB5708:
.LBB5709:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L770
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L770
.LBE5709:
.LBE5708:
.LBE5710:
.LBE5706:
	.loc 4 2941 0 discriminator 4
	stw 31,0(26)
	.loc 4 2943 0 discriminator 4
	li 31,1
.LVL1063:
	b .L745
.LVL1064:
.L746:
.LBB5711:
.LBB5712:
	.loc 11 221 0
	lis 4,.LC70@ha
	mr 3,31
.LVL1065:
	la 4,.LC70@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1066:
	.loc 11 222 0
	cmpwi 0,3,0
	beq- 0,.L750
.LVL1067:
.LBB5713:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL1068:
.LBE5713:
.LBE5712:
.LBE5711:
.LBB5714:
	.loc 4 2948 0
	cmpwi 7,31,0
	beq- 7,.L750
.LBB5715:
	.loc 4 2949 0
	addis 3,29,0x1
.LVL1069:
	mr 4,31
	addi 3,3,-32060
	bl _ZNK9idProgram12FindFunctionEPKc
.LVL1070:
	.loc 4 2950 0
	mr. 27,3
	beq- 0,.L775
	.loc 4 2954 0
	li 3,7068
.LVL1071:
	bl _ZN7idClassnwEj
.LEHE32:
	mr 4,27
	mr 31,3
.LVL1072:
.LEHB33:
	bl _ZN8idThreadC1EPK10function_t
.LEHE33:
.LVL1073:
	.loc 4 2955 0 discriminator 2
	mr 3,31
	li 4,0
.LEHB34:
	bl _ZN8idThread12DelayedStartEi
.LEHE34:
.LVL1074:
.L770:
	.loc 4 2956 0
	li 31,1
.L745:
.LVL1075:
.LBE5715:
.LBE5714:
.LBB5721:
.LBB5722:
.LBB5723:
	.loc 14 501 0
	mr 3,30
.LEHB35:
	bl _ZN5idStr8FreeDataEv
.LEHE35:
.LBE5723:
.LBE5722:
.LBE5721:
.LBE5738:
	.loc 4 2961 0
	lwz 0,76(1)
	lwz 12,44(1)
	mr 3,31
	mtlr 0
	lwz 26,48(1)
.LVL1076:
	lwz 27,52(1)
	mtcrf 8,12
	lwz 28,56(1)
.LVL1077:
	lwz 29,60(1)
.LVL1078:
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI203:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1079:
.L771:
.LCFI204:
	.cfi_restore_state
	addi 30,1,8
	b .L742
.LVL1080:
.L772:
.LBB5739:
	.loc 4 2916 0
	lis 4,.LC66@ha
	lwz 6,12(1)
	mr 3,29
.LVL1081:
	la 4,.LC66@l(4)
	mr 5,28
.LEHB36:
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LEHE36:
.LBB5726:
.LBB5716:
	.loc 4 2952 0
	li 31,0
.LVL1082:
.L776:
.LBE5716:
.LBE5726:
.LBB5727:
.LBB5725:
.LBB5724:
	.loc 14 501 0
	mr 3,30
.LEHB37:
	bl _ZN5idStr8FreeDataEv
.LEHE37:
.LBE5724:
.LBE5725:
.LBE5727:
.LBE5739:
	.loc 4 2961 0
	lwz 0,76(1)
	lwz 12,44(1)
	mr 3,31
	mtlr 0
	lwz 26,48(1)
.LVL1083:
	lwz 27,52(1)
	mtcrf 8,12
	lwz 28,56(1)
.LVL1084:
	lwz 29,60(1)
.LVL1085:
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI205:
	.cfi_def_cfa_offset 0
	blr
.LVL1086:
.L773:
.LCFI206:
	.cfi_restore_state
.LBB5740:
	.loc 4 2928 0
	lis 4,.LC68@ha
	lwz 7,12(1)
	mr 3,29
.LVL1087:
	la 4,.LC68@l(4)
	mr 5,28
	mr 6,27
.LEHB38:
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LBB5728:
.LBB5717:
	.loc 4 2952 0
	li 31,0
.LVL1088:
	b .L776
.LVL1089:
.L774:
.LBE5717:
.LBE5728:
	.loc 4 2934 0
	lis 4,.LC69@ha
	lwz 6,12(1)
	mr 3,29
.LVL1090:
	la 4,.LC69@l(4)
	mr 5,28
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LBB5729:
.LBB5718:
	.loc 4 2952 0
	li 31,0
.LVL1091:
	b .L776
.LVL1092:
.L750:
.LBE5718:
.LBE5729:
	.loc 4 2959 0
	lis 4,.LC72@ha
	lwz 6,12(1)
	mr 3,29
.LVL1093:
	la 4,.LC72@l(4)
	mr 5,28
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LBB5730:
.LBB5719:
	.loc 4 2952 0
	li 31,0
	b .L776
.LVL1094:
.L775:
	.loc 4 2951 0
	lis 4,.LC71@ha
	lwz 7,12(1)
	mr 3,29
.LVL1095:
	la 4,.LC71@l(4)
	mr 5,28
	mr 6,31
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LEHE38:
	.loc 4 2952 0
	li 31,0
.LVL1096:
	b .L776
.LVL1097:
.L762:
	mr 31,3
.LVL1098:
.L754:
.LBE5719:
.LBE5730:
.LBB5731:
.LBB5732:
.LBB5733:
	.loc 14 501 0
	mr 3,30
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB39:
	bl _Unwind_Resume
.LEHE39:
.LVL1099:
.L763:
	mr 29,3
.LVL1100:
.LBE5733:
.LBE5732:
.LBE5731:
.LBB5734:
.LBB5720:
	.loc 4 2954 0
	mr 3,31
	bl _ZN7idClassdlEPv
	mr 31,29
	b .L754
.LBE5720:
.LBE5734:
.LBE5740:
	.cfi_endproc
.LFE2917:
	.section	.gcc_except_table
.LLSDA2917:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2917-.LLSDACSB2917
.LLSDACSB2917:
	.uleb128 .LEHB32-.LFB2917
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L762-.LFB2917
	.uleb128 0
	.uleb128 .LEHB33-.LFB2917
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L763-.LFB2917
	.uleb128 0
	.uleb128 .LEHB34-.LFB2917
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L762-.LFB2917
	.uleb128 0
	.uleb128 .LEHB35-.LFB2917
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB2917
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L762-.LFB2917
	.uleb128 0
	.uleb128 .LEHB37-.LFB2917
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB2917
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L762-.LFB2917
	.uleb128 0
	.uleb128 .LEHB39-.LFB2917
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE2917:
	.section	".text"
	.size	_ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb, .-_ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	.align 2
	.globl _ZN11idGameLocal20CacheDictionaryMediaEPK6idDict
	.type	_ZN11idGameLocal20CacheDictionaryMediaEPK6idDict, @function
_ZN11idGameLocal20CacheDictionaryMediaEPK6idDict:
.LFB2871:
	.loc 4 1521 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2871
.LVL1101:
	mflr 0
	stwu 1,-120(1)
.LCFI207:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
.LBB5799:
	.loc 4 1525 0
	lis 9,cvarSystem@ha
.LBE5799:
	.loc 4 1521 0
	stw 22,80(1)
	mr 22,3
	.cfi_offset 22, -40
	stw 31,116(1)
.LBB5884:
	.loc 4 1524 0
	mr. 31,4
	.cfi_offset 31, -4
.LBE5884:
	.loc 4 1521 0
	stw 0,124(1)
.LBB5885:
	.loc 4 1525 0
	lis 4,.LC74@ha
.LVL1102:
.LBE5885:
	.loc 4 1521 0
	stw 21,76(1)
.LBB5886:
	.loc 4 1525 0
	la 4,.LC74@l(4)
.LBE5886:
	.loc 4 1521 0
	stw 23,84(1)
	stw 24,88(1)
	stw 25,92(1)
	stw 26,96(1)
	stw 27,100(1)
	stw 28,104(1)
	stw 29,108(1)
	stw 30,112(1)
.LBB5887:
	.loc 4 1525 0
	lwz 3,cvarSystem@l(9)
.LVL1103:
	lwz 9,0(3)
	lwz 0,48(9)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 21, -44
	.cfi_offset 65, 4
	mtctr 0
	.loc 4 1524 0
	beq- 0,.L858
.LEHB40:
	.loc 4 1531 0
	bctrl
	cmpwi 7,3,0
	bne- 7,.L859
.L780:
	.loc 4 1535 0
	lis 29,.LC75@ha
	mr 3,31
	la 29,.LC75@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1104:
	.loc 4 1536 0
	mr. 30,3
	beq- 0,.L781
	.loc 4 1538 0
	lis 27,.LC76@ha
	lis 28,declManager@ha
	la 27,.LC76@l(27)
	.loc 4 1542 0
	lis 25,renderModelManager@ha
	.loc 4 1544 0
	lis 26,collisionModelManager@ha
	b .L845
.LVL1105:
.L782:
	.loc 4 1547 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1106:
	.loc 4 1536 0
	mr. 30,3
	beq- 0,.L781
.L845:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1537 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L782
	.loc 4 1538 0
	lwz 3,declManager@l(28)
.LVL1107:
	mr 4,27
	lwz 5,4(9)
	lwz 11,0(3)
	lwz 0,96(11)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 1540 0
	lwz 3,declManager@l(28)
.LVL1108:
.LBB5800:
	.loc 4 4268 0
	lwz 9,4(30)
.LBE5800:
	.loc 4 1540 0
	li 4,5
	lwz 11,0(3)
	li 6,0
	lwz 5,4(9)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1109:
	cmpwi 7,3,0
	bne+ 7,.L782
	.loc 4 1542 0
	lwz 3,renderModelManager@l(25)
.LVL1110:
.LBB5801:
	.loc 4 4268 0
	lwz 11,4(30)
.LBE5801:
	.loc 4 1542 0
	lwz 9,0(3)
	lwz 4,4(11)
	lwz 0,32(9)
	mtctr 0
	bctrl
.LVL1111:
	.loc 4 1544 0
	lwz 3,collisionModelManager@l(26)
.LVL1112:
.LBB5802:
	.loc 4 4268 0
	lwz 9,4(30)
.LBE5802:
	.loc 4 1544 0
	li 5,1
	lwz 11,0(3)
	lwz 4,4(9)
	lwz 0,20(11)
	mtctr 0
	bctrl
.LVL1113:
	.loc 4 1547 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1114:
	.loc 4 1536 0
	mr. 30,3
	bne+ 0,.L845
.L781:
	.loc 4 1550 0
	lis 4,.LC77@ha
	mr 3,31
.LVL1115:
	la 4,.LC77@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1116:
	.loc 4 1551 0
	cmpwi 0,3,0
	beq- 0,.L784
	.loc 4 4268 0 discriminator 1
	lwz 9,4(3)
	.loc 4 1551 0 discriminator 1
	lwz 0,0(9)
	cmpwi 7,0,0
	bne- 7,.L860
.LVL1117:
.L784:
	.loc 4 1555 0
	lis 29,.LC78@ha
	mr 3,31
	la 29,.LC78@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1118:
	.loc 4 1556 0
	mr. 30,3
	beq- 0,.L785
	.loc 4 1558 0
	lis 28,declManager@ha
	b .L844
.L786:
	.loc 4 1560 0
	mr 5,30
	mr 3,31
.LVL1119:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1120:
	.loc 4 1556 0
	mr. 30,3
	beq- 0,.L785
.L844:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1557 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L786
	.loc 4 1558 0
	lwz 3,declManager@l(28)
.LVL1121:
	li 4,3
	lwz 5,4(9)
	li 6,1
	lwz 11,0(3)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1122:
	.loc 4 1560 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1123:
	.loc 4 1556 0
	mr. 30,3
	bne+ 0,.L844
.L785:
	.loc 4 1564 0
	lis 29,.LC79@ha
	mr 3,31
.LVL1124:
	la 29,.LC79@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1125:
	.loc 4 1565 0
	mr. 30,3
	beq- 0,.L788
.LBB5803:
.LBB5804:
.LBB5805:
	.loc 4 1567 0
	lis 28,.LC80@ha
	.loc 4 1568 0
	lis 27,.LC81@ha
	.loc 4 1569 0
	lis 24,.LC82@ha
.LBB5806:
	.loc 4 1572 0
	lis 23,.LC97@ha
.LBE5806:
	.loc 4 1567 0
	la 28,.LC80@l(28)
	.loc 4 1568 0
	la 27,.LC81@l(27)
	.loc 4 1569 0
	la 24,.LC82@l(24)
.LBB5808:
	.loc 4 1572 0
	lis 21,declManager@ha
	la 23,.LC97@l(23)
	.loc 4 1573 0
	lis 26,uiManager@ha
	b .L843
.LVL1126:
.L789:
.LBE5808:
.LBE5805:
.LBE5804:
	.loc 4 1580 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1127:
.LBE5803:
	.loc 4 1565 0
	mr. 30,3
	beq- 0,.L788
.L843:
.LBB5815:
.LBB5814:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1566 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L789
.LVL1128:
.LBB5813:
.LBB5809:
	.loc 4 4268 0
	lwz 9,0(30)
.LBE5809:
	.loc 4 1567 0
	mr 4,28
	lwz 3,4(9)
.LVL1129:
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1130:
	cmpwi 7,3,0
	beq+ 7,.L789
.LVL1131:
.LBB5810:
	.loc 4 4268 0 discriminator 2
	lwz 9,0(30)
.LBE5810:
	.loc 4 1568 0 discriminator 2
	mr 4,27
	li 5,8
	lwz 3,4(9)
	bl _ZN5idStr5IcmpnEPKcS1_i
.LVL1132:
	.loc 4 1567 0 discriminator 2
	cmpwi 7,3,0
	beq+ 7,.L789
.LVL1133:
.LBB5811:
	.loc 4 4268 0 discriminator 3
	lwz 9,0(30)
.LBE5811:
	.loc 4 1569 0 discriminator 3
	mr 4,24
	lwz 3,4(9)
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1134:
	.loc 4 1567 0 discriminator 3
	cmpwi 7,3,0
	beq- 7,.L789
.LBB5812:
	.loc 4 1572 0
	lwz 3,declManager@l(21)
	mr 4,23
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1572 0
	lwz 11,0(3)
	lwz 5,4(9)
	lwz 0,96(11)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 1573 0
	lwz 3,uiManager@l(26)
	lwz 9,0(3)
	lwz 0,52(9)
	mtctr 0
	bctrl
.LVL1135:
	.loc 4 1574 0
	mr. 25,3
	beq- 0,.L789
.LVL1136:
	.loc 4 1575 0
	lwz 11,0(25)
	li 5,1
.LBB5807:
	.loc 4 4268 0
	lwz 9,4(30)
.LBE5807:
	.loc 4 1575 0
	li 6,1
	lwz 0,28(11)
	lwz 4,4(9)
	mtctr 0
	bctrl
.LVL1137:
	.loc 4 1576 0
	lwz 3,uiManager@l(26)
	mr 4,25
	lwz 9,0(3)
	lwz 0,56(9)
	mtctr 0
	bctrl
.LBE5812:
.LBE5813:
.LBE5814:
	.loc 4 1580 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1138:
.LBE5815:
	.loc 4 1565 0
	mr. 30,3
	bne+ 0,.L843
.LVL1139:
.L788:
	.loc 4 1583 0
	lis 4,.LC83@ha
	mr 3,31
.LVL1140:
	la 4,.LC83@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1141:
	.loc 4 1584 0
	cmpwi 0,3,0
	beq- 0,.L793
	.loc 4 4268 0 discriminator 1
	lwz 9,4(3)
	.loc 4 1584 0 discriminator 1
	lwz 0,0(9)
	cmpwi 7,0,0
	bne- 7,.L861
.LVL1142:
.L793:
	.loc 4 1588 0
	lis 29,.LC84@ha
	mr 3,31
	la 29,.LC84@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1143:
	.loc 4 1589 0
	mr. 30,3
	beq- 0,.L794
	.loc 4 1591 0
	lis 28,declManager@ha
	b .L842
.L795:
	.loc 4 1593 0
	mr 5,30
	mr 3,31
.LVL1144:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1145:
	.loc 4 1589 0
	mr. 30,3
	beq- 0,.L794
.L842:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1590 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L795
	.loc 4 1591 0
	lwz 3,declManager@l(28)
.LVL1146:
	li 4,1
	lwz 5,4(9)
	li 6,1
	lwz 11,0(3)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1147:
	.loc 4 1593 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1148:
	.loc 4 1589 0
	mr. 30,3
	bne+ 0,.L842
.L794:
	.loc 4 1597 0
	lis 29,.LC85@ha
	mr 3,31
.LVL1149:
	la 29,.LC85@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1150:
	.loc 4 1598 0
	mr. 30,3
	beq- 0,.L797
	.loc 4 1600 0
	lis 28,declManager@ha
	b .L841
.L798:
	.loc 4 1602 0
	mr 5,30
	mr 3,31
.LVL1151:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1152:
	.loc 4 1598 0
	mr. 30,3
	beq- 0,.L797
.L841:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1599 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L798
	.loc 4 1600 0
	lwz 3,declManager@l(28)
.LVL1153:
	li 4,1
	lwz 5,4(9)
	li 6,1
	lwz 11,0(3)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1154:
	.loc 4 1602 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1155:
	.loc 4 1598 0
	mr. 30,3
	bne+ 0,.L841
.L797:
	.loc 4 1607 0
	lis 4,.LC86@ha
	mr 3,31
.LVL1156:
	la 4,.LC86@l(4)
	li 5,0
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1157:
.LBB5816:
	.loc 4 1608 0
	cmpwi 0,3,0
	beq- 0,.L800
	.loc 4 4268 0 discriminator 1
	lwz 9,4(3)
	.loc 4 1608 0 discriminator 1
	lwz 0,0(9)
	cmpwi 7,0,0
	bne- 7,.L862
.LVL1158:
.L800:
.LBE5816:
	.loc 4 1614 0
	lis 29,.LC88@ha
	mr 3,31
	la 29,.LC88@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1159:
	.loc 4 1615 0
	mr. 30,3
	beq- 0,.L802
	.loc 4 1617 0
	lis 27,.LC89@ha
	lis 28,declManager@ha
	la 27,.LC89@l(27)
	b .L840
.L803:
	.loc 4 1620 0
	mr 5,30
	mr 3,31
.LVL1160:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1161:
	.loc 4 1615 0
	mr. 30,3
	beq- 0,.L802
.L840:
	.loc 4 4268 0
	lwz 11,4(30)
	.loc 4 1616 0
	lwz 0,0(11)
	cmpwi 7,0,0
	beq+ 7,.L803
	.loc 4 1617 0
	lwz 3,declManager@l(28)
.LVL1162:
	mr 4,27
	lwz 5,4(11)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 1618 0
	lwz 3,declManager@l(28)
.LVL1163:
.LBB5819:
	.loc 4 4268 0
	lwz 9,4(30)
.LBE5819:
	.loc 4 1618 0
	li 4,6
	lwz 11,0(3)
	li 6,1
	lwz 5,4(9)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1164:
	.loc 4 1620 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1165:
	.loc 4 1615 0
	mr. 30,3
	bne+ 0,.L840
.L802:
	.loc 4 1623 0
	lis 28,.LC90@ha
	mr 3,31
.LVL1166:
	la 28,.LC90@l(28)
	li 5,0
	mr 4,28
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LEHE40:
.LVL1167:
	.loc 4 1624 0
	mr. 30,3
	beq- 0,.L805
.LBB5820:
.LBB5821:
.LBB5822:
.LBB5823:
.LBB5824:
.LBB5825:
.LBB5826:
	.loc 14 356 0
	li 27,0
	.loc 14 357 0
	li 24,20
	.loc 14 358 0
	addi 26,1,52
.LBE5826:
.LBE5825:
.LBE5824:
.LBE5823:
	.loc 4 1631 0
	lis 25,declManager@ha
.LBB5838:
.LBB5839:
	.loc 14 536 0
	li 23,0
	b .L839
.LVL1168:
.L809:
	.loc 14 535 0
	lwz 3,44(1)
	mr 5,29
	lwz 4,12(1)
	bl memcpy
	.loc 14 536 0
	lwz 9,44(1)
.LBE5839:
.LBE5838:
.LBB5846:
.LBB5847:
.LBB5848:
	.loc 14 501 0
	addi 3,1,8
.LVL1169:
.LBE5848:
.LBE5847:
.LBE5846:
.LBB5851:
.LBB5844:
	.loc 14 536 0
	stbx 23,9,29
	.loc 14 537 0
	stw 29,40(1)
.LVL1170:
.LEHB41:
.LBE5844:
.LBE5851:
.LBB5852:
.LBB5850:
.LBB5849:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LVL1171:
.L808:
.LBE5849:
.LBE5850:
.LBE5852:
	.loc 4 1631 0
	lwz 3,declManager@l(25)
.LVL1172:
	li 4,7
	lwz 5,44(1)
	li 6,1
	lwz 9,0(3)
	li 7,0
	lwz 0,60(9)
	mtctr 0
	bctrl
.LEHE41:
.LVL1173:
.LBB5853:
.LBB5854:
.LBB5855:
	.loc 14 501 0
	addi 3,1,40
.LEHB42:
	bl _ZN5idStr8FreeDataEv
.LVL1174:
.L806:
.LBE5855:
.LBE5854:
.LBE5853:
.LBE5822:
.LBE5821:
	.loc 4 1633 0
	mr 5,30
	mr 3,31
	mr 4,28
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1175:
.LBE5820:
	.loc 4 1624 0
	mr. 30,3
	beq- 0,.L805
.L839:
	.loc 4 4268 0
	lwz 21,4(30)
.LBB5875:
.LBB5873:
	.loc 4 1625 0
	lwz 0,0(21)
	cmpwi 7,0,0
	beq- 7,.L806
.LVL1176:
.LBB5871:
.LBB5856:
.LBB5835:
.LBB5829:
.LBB5827:
	.loc 14 356 0
	stw 27,40(1)
.LBE5827:
.LBE5829:
.LBB5830:
.LBB5831:
	.loc 14 358 0
	mr 3,26
.LVL1177:
.LBE5831:
.LBE5830:
.LBB5833:
.LBB5828:
	.loc 14 357 0
	stw 24,48(1)
	.loc 14 358 0
	stw 26,44(1)
	.loc 14 359 0
	stb 27,52(1)
.LBE5828:
.LBE5833:
.LBE5835:
	.loc 4 4268 0
	lwz 29,0(21)
.LBB5836:
	.loc 14 374 0
	addi 4,29,1
.LVL1178:
.LBB5834:
.LBB5832:
	.loc 14 350 0
	cmpwi 7,4,20
	ble+ 7,.L807
	.loc 14 351 0
	addi 3,1,40
.LVL1179:
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE42:
.LVL1180:
	lwz 3,44(1)
.L807:
.LBE5832:
.LBE5834:
	.loc 14 375 0
	lwz 4,4(21)
	bl strcpy
.LBE5836:
.LBE5856:
.LBB5857:
.LBB5858:
	.loc 14 899 0
	lwz 3,44(1)
	li 4,45
	li 5,0
	mr 6,29
.LBE5858:
.LBE5857:
.LBB5860:
.LBB5837:
	.loc 14 376 0
	stw 29,40(1)
.LVL1181:
.LEHB43:
.LBE5837:
.LBE5860:
.LBB5861:
.LBB5859:
	.loc 14 899 0
	bl _ZN5idStr8FindCharEPKccii
.LVL1182:
.LBE5859:
.LBE5861:
	.loc 4 1628 0
	mr. 6,3
	ble- 0,.L808
.LVL1183:
.LBB5862:
.LBB5863:
	.loc 14 926 0
	addi 3,1,8
.LVL1184:
	addi 4,1,40
.LVL1185:
	li 5,0
	bl _ZNK5idStr3MidEii
.LEHE43:
.LVL1186:
.LBE5863:
.LBE5862:
.LBB5864:
	.loc 4 4268 0
	lwz 29,8(1)
.LVL1187:
.LBB5845:
.LBB5840:
.LBB5841:
	.loc 14 350 0
	lwz 0,48(1)
.LBE5841:
.LBE5840:
	.loc 14 534 0
	addi 4,29,1
.LVL1188:
.LBB5843:
.LBB5842:
	.loc 14 350 0
	cmpw 7,4,0
	ble+ 7,.L809
	.loc 14 351 0
	addi 3,1,40
.LVL1189:
	li 5,0
.LEHB44:
	bl _ZN5idStr10ReAllocateEib
.LEHE44:
.LVL1190:
	b .L809
.LVL1191:
.L805:
.LBE5842:
.LBE5843:
.LBE5845:
.LBE5864:
.LBE5871:
.LBE5873:
.LBE5875:
	.loc 4 1636 0
	lis 29,.LC91@ha
	mr 3,31
.LVL1192:
	la 29,.LC91@l(29)
	li 5,0
	mr 4,29
.LEHB45:
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1193:
	.loc 4 1637 0
	mr. 30,3
	beq- 0,.L811
	.loc 4 1639 0
	lis 27,.LC92@ha
	lis 28,declManager@ha
	la 27,.LC92@l(27)
	b .L838
.L812:
	.loc 4 1642 0
	mr 5,30
	mr 3,31
.LVL1194:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1195:
	.loc 4 1637 0
	mr. 30,3
	beq- 0,.L811
.L838:
	.loc 4 4268 0
	lwz 11,4(30)
	.loc 4 1638 0
	lwz 0,0(11)
	cmpwi 7,0,0
	beq+ 7,.L812
	.loc 4 1639 0
	lwz 3,declManager@l(28)
.LVL1196:
	mr 4,27
	lwz 5,4(11)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 1640 0
	lwz 3,declManager@l(28)
.LVL1197:
.LBB5876:
	.loc 4 4268 0
	lwz 9,4(30)
.LBE5876:
	.loc 4 1640 0
	li 4,2
	lwz 11,0(3)
	li 6,1
	lwz 5,4(9)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1198:
	.loc 4 1642 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1199:
	.loc 4 1637 0
	mr. 30,3
	bne+ 0,.L838
.L811:
	.loc 4 1645 0
	lis 29,.LC93@ha
	mr 3,31
.LVL1200:
	la 29,.LC93@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1201:
	.loc 4 1646 0
	mr. 30,3
	bne+ 0,.L837
	b .L814
.L815:
	.loc 4 1650 0
	mr 5,30
	mr 3,31
.LVL1202:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1203:
	.loc 4 1646 0
	mr. 30,3
	beq- 0,.L814
.L837:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1647 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L815
	.loc 4 1648 0
	lwz 4,4(9)
	li 5,0
	li 6,1
	mr 3,22
.LVL1204:
	bl _ZNK11idGameLocal13FindEntityDefEPKcbb
	.loc 4 1650 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1205:
	.loc 4 1646 0
	mr. 30,3
	bne+ 0,.L837
.L814:
	.loc 4 1653 0
	lis 29,.LC94@ha
	mr 3,31
.LVL1206:
	la 29,.LC94@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1207:
	.loc 4 1654 0
	mr. 30,3
	beq- 0,.L817
	.loc 4 1656 0
	lis 28,declManager@ha
	b .L836
.L818:
	.loc 4 1658 0
	mr 5,30
	mr 3,31
.LVL1208:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1209:
	.loc 4 1654 0
	mr. 30,3
	beq- 0,.L817
.L836:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1655 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L818
	.loc 4 1656 0
	lwz 3,declManager@l(28)
.LVL1210:
	li 4,9
	lwz 5,4(9)
	li 6,0
	lwz 11,0(3)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
	.loc 4 1658 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1211:
	.loc 4 1654 0
	mr. 30,3
	bne+ 0,.L836
.L817:
	.loc 4 1661 0
	lis 29,.LC95@ha
	mr 3,31
.LVL1212:
	la 29,.LC95@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1213:
	.loc 4 1662 0
	mr. 30,3
	beq- 0,.L820
	.loc 4 1664 0
	lis 28,declManager@ha
	b .L835
.L821:
	.loc 4 1666 0
	mr 5,30
	mr 3,31
.LVL1214:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1215:
	.loc 4 1662 0
	mr. 30,3
	beq- 0,.L820
.L835:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1663 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L821
	.loc 4 1664 0
	lwz 3,declManager@l(28)
.LVL1216:
	li 4,10
	lwz 5,4(9)
	li 6,0
	lwz 11,0(3)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
	.loc 4 1666 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1217:
	.loc 4 1662 0
	mr. 30,3
	bne+ 0,.L835
.L820:
	.loc 4 1669 0
	lis 29,.LC96@ha
	mr 3,31
.LVL1218:
	la 29,.LC96@l(29)
	li 5,0
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1219:
	.loc 4 1670 0
	mr. 30,3
	beq- 0,.L777
	.loc 4 1672 0
	lis 28,declManager@ha
	b .L834
.L823:
	.loc 4 1674 0
	mr 5,30
	mr 3,31
.LVL1220:
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1221:
	.loc 4 1670 0
	mr. 30,3
	beq- 0,.L777
.L834:
	.loc 4 4268 0
	lwz 9,4(30)
	.loc 4 1671 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq+ 7,.L823
	.loc 4 1672 0
	lwz 3,declManager@l(28)
.LVL1222:
	li 4,11
	lwz 5,4(9)
	li 6,0
	lwz 11,0(3)
	li 7,0
	lwz 0,60(11)
	mtctr 0
	bctrl
	.loc 4 1674 0
	mr 5,30
	mr 3,31
	mr 4,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1223:
	.loc 4 1670 0
	mr. 30,3
	bne+ 0,.L834
.LVL1224:
.L777:
.LBE5887:
	.loc 4 1676 0
	lwz 0,124(1)
	lwz 21,76(1)
	mtlr 0
	lwz 22,80(1)
.LVL1225:
	lwz 23,84(1)
	lwz 24,88(1)
	lwz 25,92(1)
	lwz 26,96(1)
	lwz 27,100(1)
	lwz 28,104(1)
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
.LVL1226:
	addi 1,1,120
	.cfi_remember_state
.LCFI208:
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
.LVL1227:
.L862:
.LCFI209:
	.cfi_restore_state
.LBB5888:
.LBB5877:
.LBB5817:
	.loc 4 1609 0 discriminator 4
	lwz 3,4(9)
.LVL1228:
	bl atoi
.LVL1229:
	.loc 4 1610 0 discriminator 4
	mr. 4,3
	bne- 0,.L863
	.loc 4 1610 0 is_stmt 0
	lis 5,.LC73@ha
	la 5,.LC73@l(5)
.LVL1230:
.L801:
	.loc 4 1611 0 is_stmt 1 discriminator 3
	lis 9,declManager@ha
	li 4,6
	lwz 3,declManager@l(9)
	li 6,1
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1231:
	b .L800
.LVL1232:
.L861:
.LBE5817:
.LBE5877:
	.loc 4 1585 0 discriminator 4
	lis 11,declManager@ha
	li 4,1
	lwz 3,declManager@l(11)
.LVL1233:
	li 6,1
	lwz 5,4(9)
	li 7,0
	lwz 11,0(3)
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1234:
	b .L793
.LVL1235:
.L860:
	.loc 4 1552 0 discriminator 4
	lis 11,declManager@ha
	li 4,3
	lwz 3,declManager@l(11)
.LVL1236:
	li 6,1
	lwz 5,4(9)
	li 7,0
	lwz 11,0(3)
	lwz 0,60(11)
	mtctr 0
	bctrl
.LVL1237:
	b .L784
.L859:
.LVL1238:
.LBB5878:
.LBB5879:
	.loc 4 1508 0
	lis 3,.LC12@ha
	la 3,.LC12@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	b .L780
.LVL1239:
.L858:
.LBE5879:
.LBE5878:
	.loc 4 1525 0
	bctrl
	cmpwi 7,3,0
	beq+ 7,.L777
.LBB5880:
.LBB5881:
	.loc 4 1498 0
	lis 3,.LC11@ha
	la 3,.LC11@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	b .L777
.LVL1240:
.L863:
.LBE5881:
.LBE5880:
.LBB5882:
.LBB5818:
	.loc 4 1610 0 discriminator 1
	lis 3,.LC87@ha
.LVL1241:
	la 3,.LC87@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
.LEHE45:
.LVL1242:
	mr 5,3
	b .L801
.LVL1243:
.L832:
	mr 31,3
.LVL1244:
.L827:
.LBE5818:
.LBE5882:
.LBB5883:
.LBB5874:
.LBB5872:
.LBB5865:
.LBB5866:
.LBB5867:
	.loc 14 501 0
	addi 3,1,40
.LVL1245:
	bl _ZN5idStr8FreeDataEv
.LVL1246:
	mr 3,31
.LEHB46:
	bl _Unwind_Resume
.LEHE46:
.LVL1247:
.L833:
	mr 31,3
.LVL1248:
.LBE5867:
.LBE5866:
.LBE5865:
.LBB5868:
.LBB5869:
.LBB5870:
	addi 3,1,8
.LVL1249:
	bl _ZN5idStr8FreeDataEv
.LVL1250:
	b .L827
.LBE5870:
.LBE5869:
.LBE5868:
.LBE5872:
.LBE5874:
.LBE5883:
.LBE5888:
	.cfi_endproc
.LFE2871:
	.section	.gcc_except_table
.LLSDA2871:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2871-.LLSDACSB2871
.LLSDACSB2871:
	.uleb128 .LEHB40-.LFB2871
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB2871
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L832-.LFB2871
	.uleb128 0
	.uleb128 .LEHB42-.LFB2871
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB2871
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L832-.LFB2871
	.uleb128 0
	.uleb128 .LEHB44-.LFB2871
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L833-.LFB2871
	.uleb128 0
	.uleb128 .LEHB45-.LFB2871
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB2871
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
.LLSDACSE2871:
	.section	".text"
	.size	_ZN11idGameLocal20CacheDictionaryMediaEPK6idDict, .-_ZN11idGameLocal20CacheDictionaryMediaEPK6idDict
	.align 2
	.globl _ZNK11idGameLocal17FindEntityDefDictEPKcb
	.type	_ZNK11idGameLocal17FindEntityDefDictEPKcb, @function
_ZNK11idGameLocal17FindEntityDefDictEPKcb:
.LFB2919:
	.loc 4 2993 0
	.cfi_startproc
.LVL1251:
	mflr 0
	stwu 1,-8(1)
.LCFI210:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB5889:
	.loc 4 2994 0
	li 6,1
.LBE5889:
	.loc 4 2993 0
	stw 0,12(1)
.LBB5890:
	.loc 4 2994 0
	.cfi_offset 65, 4
	bl _ZNK11idGameLocal13FindEntityDefEPKcbb
.LVL1252:
	.loc 4 2995 0
	mr. 9,3
	li 3,0
.LVL1253:
	beq- 0,.L865
	.loc 4 2995 0 is_stmt 0 discriminator 1
	addi 3,9,8
.L865:
.LBE5890:
	.loc 4 2996 0 is_stmt 1 discriminator 3
	lwz 0,12(1)
	addi 1,1,8
.LCFI211:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2919:
	.size	_ZNK11idGameLocal17FindEntityDefDictEPKcb, .-_ZNK11idGameLocal17FindEntityDefDictEPKcb
	.align 2
	.globl _ZN11idGameLocal18InhibitEntitySpawnER6idDict
	.type	_ZN11idGameLocal18InhibitEntitySpawnER6idDict, @function
_ZN11idGameLocal18InhibitEntitySpawnER6idDict:
.LFB2920:
	.loc 4 3003 0
	.cfi_startproc
.LVL1254:
	mflr 0
	stwu 1,-32(1)
.LCFI212:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB5906:
	.loc 4 3007 0
	addis 3,3,0x25
.LVL1255:
.LBE5906:
	.loc 4 3003 0
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,36(1)
	stw 31,28(1)
.LBB5925:
	.loc 4 3007 0
	lbz 0,2016(3)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,0,0
	.loc 4 3005 0
	li 0,0
	stb 0,8(1)
.LVL1256:
	.loc 4 3007 0
	bne- 7,.L883
.LBB5907:
.LBB5908:
	.loc 4 3009 0
	lis 31,g_skill@ha
.LBE5908:
.LBE5907:
	.loc 4 3010 0
	mr 3,4
.LVL1257:
.LBB5910:
.LBB5909:
	.loc 4 3009 0
	la 31,g_skill@l(31)
	.loc 7 143 0
	lwz 9,44(31)
	lwz 0,36(9)
.LBE5909:
.LBE5910:
	.loc 4 3009 0
	cmpwi 7,0,0
	beq- 7,.L884
	.loc 4 3011 0
	cmpwi 7,0,1
	beq- 7,.L885
	.loc 4 3014 0
	lis 4,.LC101@ha
.LVL1258:
	lis 5,.LC59@ha
	la 4,.LC101@l(4)
	la 5,.LC59@l(5)
	addi 6,1,8
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
.LVL1259:
.L869:
.LBB5911:
.LBB5912:
	.loc 7 143 0
	lwz 9,44(31)
.LBE5912:
.LBE5911:
	.loc 4 3019 0
	lwz 0,36(9)
	cmpwi 7,0,3
	beq- 7,.L886
.L872:
	.loc 4 3027 0
	lis 9,.LANCHOR0+2426848@ha
	lbz 0,.LANCHOR0+2426848@l(9)
	cmpwi 7,0,0
	bne- 7,.L875
.LVL1260:
.L882:
	.loc 4 3029 0
	lbz 31,8(1)
.L876:
.LBE5925:
	.loc 4 3035 0
	lwz 0,36(1)
	mr 3,31
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI213:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1261:
.L875:
.LCFI214:
	.cfi_restore_state
.LBB5926:
.LBB5914:
.LBB5915:
	.loc 11 241 0
	lis 4,.LC65@ha
	mr 3,30
	la 4,.LC65@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1262:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L879
.LVL1263:
.LBB5916:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL1264:
.L877:
.LBE5916:
.LBE5915:
.LBE5914:
	.loc 4 3029 0
	lis 4,.LC104@ha
	mr 3,30
.LVL1265:
	la 4,.LC104@l(4)
	li 31,1
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq+ 7,.L876
	.loc 4 3029 0 is_stmt 0 discriminator 2
	lis 4,.LC105@ha
	mr 3,30
	la 4,.LC105@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L876
	b .L882
.LVL1266:
.L883:
	.loc 4 3008 0 is_stmt 1
	mr 3,4
.LVL1267:
	lis 5,.LC59@ha
	lis 4,.LC98@ha
.LVL1268:
	lis 31,g_skill@ha
	la 4,.LC98@l(4)
	la 5,.LC59@l(5)
	addi 6,1,8
	la 31,g_skill@l(31)
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
.LBB5918:
.LBB5913:
	.loc 7 143 0
	lwz 9,44(31)
.LBE5913:
.LBE5918:
	.loc 4 3019 0
	lwz 0,36(9)
	cmpwi 7,0,3
	bne+ 7,.L872
.L886:
.LVL1269:
.LBB5919:
.LBB5920:
	.loc 11 241 0
	lis 4,.LC65@ha
	mr 3,30
	la 4,.LC65@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1270:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L878
.LVL1271:
.LBB5921:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL1272:
.L873:
.LBE5921:
.LBE5920:
.LBE5919:
	.loc 4 3021 0
	lis 4,.LC102@ha
	mr 3,31
.LVL1273:
	la 4,.LC102@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L887
.L874:
	.loc 4 3022 0 discriminator 4
	li 0,1
	stb 0,8(1)
	b .L872
.LVL1274:
.L884:
	.loc 4 3010 0
	lis 4,.LC99@ha
	lis 5,.LC59@ha
	la 4,.LC99@l(4)
	la 5,.LC59@l(5)
	addi 6,1,8
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
	b .L869
.L885:
	.loc 4 3012 0
	lis 4,.LC100@ha
	lis 5,.LC59@ha
	la 4,.LC100@l(4)
	la 5,.LC59@l(5)
	addi 6,1,8
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
	b .L869
.LVL1275:
.L887:
	.loc 4 3021 0 discriminator 2
	lis 4,.LC103@ha
	mr 3,31
	la 4,.LC103@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L872
	b .L874
.LVL1276:
.L879:
.LBB5923:
.LBB5917:
	.loc 11 245 0
	lis 30,.LC3@ha
.LVL1277:
	la 30,.LC3@l(30)
	b .L877
.LVL1278:
.L878:
.LBE5917:
.LBE5923:
.LBB5924:
.LBB5922:
	lis 31,.LC3@ha
	la 31,.LC3@l(31)
	b .L873
.LBE5922:
.LBE5924:
.LBE5926:
	.cfi_endproc
.LFE2920:
	.size	_ZN11idGameLocal18InhibitEntitySpawnER6idDict, .-_ZN11idGameLocal18InhibitEntitySpawnER6idDict
	.align 2
	.globl _ZN11idGameLocal8SetSkillEi
	.type	_ZN11idGameLocal8SetSkillEi, @function
_ZN11idGameLocal8SetSkillEi:
.LFB2921:
	.loc 4 3042 0
	.cfi_startproc
.LVL1279:
	cmpwi 7,4,3
	mflr 0
	stwu 1,-8(1)
.LCFI215:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 4 3042 0
	ble- 7,.L889
	.cfi_offset 65, 4
	li 4,3
.LVL1280:
.L889:
	.loc 4 3053 0
	lis 9,g_skill+44@ha
	lwz 3,g_skill+44@l(9)
.LVL1281:
.LBB5927:
.LBB5928:
.LBB5929:
	.loc 7 148 0
	nor 9,4,4
	srawi 9,9,31
	lwz 11,0(3)
	and 4,4,9
.LVL1282:
	lwz 0,16(11)
	mtctr 0
	bctrl
.LBE5929:
.LBE5928:
.LBE5927:
	.loc 4 3054 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI216:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2921:
	.size	_ZN11idGameLocal8SetSkillEi, .-_ZN11idGameLocal8SetSkillEi
	.align 2
	.globl _ZNK11idGameLocal9GameStateEv
	.type	_ZNK11idGameLocal9GameStateEv, @function
_ZNK11idGameLocal9GameStateEv:
.LFB2922:
	.loc 4 3063 0
	.cfi_startproc
.LVL1283:
	.loc 4 3064 0
	addis 3,3,0x25
.LVL1284:
	.loc 4 3065 0
	lwz 3,2236(3)
.LVL1285:
	blr
	.cfi_endproc
.LFE2922:
	.size	_ZNK11idGameLocal9GameStateEv, .-_ZNK11idGameLocal9GameStateEv
	.align 2
	.globl _ZN11idGameLocal20RemoveEntityFromHashEPKcP8idEntity
	.type	_ZN11idGameLocal20RemoveEntityFromHashEPKcP8idEntity, @function
_ZN11idGameLocal20RemoveEntityFromHashEPKcP8idEntity:
.LFB2925:
	.loc 4 3154 0
	.cfi_startproc
.LVL1286:
	mflr 0
	stwu 1,-32(1)
.LCFI217:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
.LVL1287:
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 26,8(1)
	stw 28,16(1)
	stw 29,20(1)
.LBB5955:
.LBB5956:
.LBB5957:
.LBB5958:
.LBB5959:
	.loc 14 976 0
	lbz 0,0(4)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L906
.LVL1288:
	mr 11,4
.LBE5959:
.LBE5958:
.LBE5957:
.LBE5956:
.LBE5955:
	.loc 4 3154 0
	li 9,119
	li 26,0
.LVL1289:
.L894:
.LBB5988:
.LBB5966:
.LBB5964:
.LBB5962:
.LBB5960:
	.loc 14 977 0
	mullw 10,0,9
	.loc 14 976 0
	lbzu 0,1(11)
	addi 9,9,1
	cmpwi 7,0,0
	.loc 14 977 0
	add 26,26,10
.LVL1290:
	.loc 14 976 0
	bne+ 7,.L894
	addis 28,31,0x1
	lwz 0,-32208(28)
	lwz 9,-32204(28)
	and 26,26,0
.LVL1291:
	and 0,0,9
	and 0,0,26
	slwi 0,0,2
.L893:
.LVL1292:
.LBE5960:
.LBE5962:
.LBE5964:
.LBE5966:
.LBB5967:
.LBB5968:
	.loc 15 239 0
	lwz 9,-32224(28)
.LBE5968:
.LBE5967:
	.loc 4 3164 0
	li 3,0
.LVL1293:
.LBB5970:
.LBB5969:
	.loc 15 239 0
	lwzx 29,9,0
.LVL1294:
.LBE5969:
.LBE5970:
	.loc 4 3158 0
	cmpwi 7,29,-1
	bne+ 7,.L909
	b .L895
.LVL1295:
.L896:
.LBB5971:
.LBB5972:
	.loc 15 249 0
	lwz 0,-32204(28)
	lwz 9,-32216(28)
	and 29,29,0
.LVL1296:
	slwi 29,29,2
	lwzx 29,9,29
.LVL1297:
.LBE5972:
.LBE5971:
	.loc 4 3158 0
	cmpwi 7,29,-1
	beq- 7,.L914
.L909:
	.loc 4 3159 0
	addi 9,29,132
	slwi 9,9,2
	add 9,31,9
	lwz 0,4(9)
	cmpwi 7,0,0
	cmpw 6,0,27
	beq- 7,.L896
	.loc 4 3159 0 is_stmt 0 discriminator 1
	bne+ 6,.L896
.LVL1298:
.LBB5973:
.LBB5974:
	.loc 14 690 0 is_stmt 1 discriminator 3
	lwz 3,72(27)
	mr 4,30
	bl _ZN5idStr4IcmpEPKcS1_
.LBE5974:
.LBE5973:
	.loc 4 3159 0 discriminator 3
	cmpwi 7,3,0
	bne- 7,.L896
.LVL1299:
.LBB5975:
.LBB5976:
	.loc 15 216 0
	lwz 9,-32224(28)
	lis 11,_ZN11idHashIndex13INVALID_INDEXE@ha
	la 0,_ZN11idHashIndex13INVALID_INDEXE@l(11)
	.loc 4 3161 0
	li 3,1
	.loc 15 216 0
	cmpw 7,9,0
	.loc 15 214 0
	lwz 0,-32208(28)
.LVL1300:
	.loc 15 216 0
	beq- 7,.L895
	.loc 15 214 0
	and 26,26,0
.LVL1301:
.LBB5977:
	.loc 15 219 0
	slwi 26,26,2
.LVL1302:
	lwzx 10,9,26
	cmpw 7,10,29
	beq- 7,.L915
.LVL1303:
.LBB5978:
	.loc 15 223 0
	cmpwi 7,10,-1
	beq- 7,.L916
	.loc 15 224 0
	lwz 11,-32216(28)
	slwi 10,10,2
	lwzx 0,11,10
	add 10,11,10
	cmpw 7,0,29
	bne+ 7,.L913
	b .L899
.LVL1304:
.L901:
	lwzx 0,11,9
.LVL1305:
	cmpw 7,0,29
	beq- 7,.L899
.L913:
.LVL1306:
	.loc 15 223 0
	cmpwi 7,0,-1
	.loc 15 224 0
	slwi 9,0,2
	add 10,11,9
	.loc 15 223 0
	bne+ 7,.L901
	.loc 15 224 0
	slwi 29,29,2
.LVL1307:
.L898:
.LBE5978:
.LBE5977:
	.loc 15 230 0
	li 0,-1
	.loc 4 3161 0
	li 3,1
	.loc 15 230 0
	stwx 0,11,29
.LVL1308:
.L895:
.LBE5976:
.LBE5975:
.LBE5988:
	.loc 4 3165 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL1309:
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL1310:
	lwz 31,28(1)
.LVL1311:
	addi 1,1,32
	.cfi_remember_state
.LCFI218:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1312:
.L914:
.LCFI219:
	.cfi_restore_state
	lwz 0,36(1)
.LBB5989:
	.loc 4 3164 0
	li 3,0
.LBE5989:
	.loc 4 3165 0
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL1313:
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1314:
	lwz 30,24(1)
.LVL1315:
	lwz 31,28(1)
.LVL1316:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI220:
	.cfi_def_cfa_offset 0
	blr
.LVL1317:
.L899:
.LCFI221:
	.cfi_restore_state
.LBB5990:
.LBB5985:
.LBB5983:
.LBB5981:
.LBB5979:
	.loc 15 225 0
	slwi 29,29,2
.LVL1318:
	lwzx 0,11,29
	stw 0,0(10)
	lwz 11,-32216(28)
	b .L898
.LVL1319:
.L915:
.LBE5979:
	.loc 15 220 0
	lwz 11,-32216(28)
	slwi 29,29,2
.LVL1320:
	lwzx 0,11,29
	stwx 0,9,26
	lwz 11,-32216(28)
	b .L898
.LVL1321:
.L906:
.LBE5981:
.LBE5983:
.LBE5985:
.LBB5986:
.LBB5965:
.LBB5963:
.LBB5961:
	.loc 14 976 0
	li 26,0
	li 0,0
	addis 28,3,0x1
	b .L893
.LVL1322:
.L916:
.LBE5961:
.LBE5963:
.LBE5965:
.LBE5986:
.LBB5987:
.LBB5984:
.LBB5982:
.LBB5980:
	.loc 15 223 0
	slwi 29,29,2
.LVL1323:
	lwz 11,-32216(28)
	b .L898
.LBE5980:
.LBE5982:
.LBE5984:
.LBE5987:
.LBE5990:
	.cfi_endproc
.LFE2925:
	.size	_ZN11idGameLocal20RemoveEntityFromHashEPKcP8idEntity, .-_ZN11idGameLocal20RemoveEntityFromHashEPKcP8idEntity
	.align 2
	.globl _ZNK11idGameLocal14GetTraceEntityERK7trace_s
	.type	_ZNK11idGameLocal14GetTraceEntityERK7trace_s, @function
_ZNK11idGameLocal14GetTraceEntityERK7trace_s:
.LFB2927:
	.loc 4 3204 0
	.cfi_startproc
.LVL1324:
	mflr 0
.LBB5991:
	.loc 4 3207 0
	lwz 9,100(4)
.LBE5991:
	.loc 4 3204 0
	stwu 1,-16(1)
.LCFI222:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB5992:
	.loc 4 3207 0
	addi 9,9,132
.LBE5992:
	.loc 4 3204 0
	stw 30,8(1)
.LBB5993:
	.loc 4 3207 0
	slwi 9,9,2
.LBE5993:
	.loc 4 3204 0
	stw 31,12(1)
.LBB5994:
	.loc 4 3207 0
	add 9,3,9
.LBE5994:
	.loc 4 3204 0
	stw 0,20(1)
	.loc 4 3204 0
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	mr 30,4
.LBB5995:
	.loc 4 3208 0
	li 3,0
.LVL1325:
	.loc 4 3207 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L918
	.loc 4 3210 0
	mr 3,0
	bl _ZNK8idEntity13GetBindMasterEv
.LVL1326:
	.loc 4 3211 0
	cmpwi 0,3,0
	beq- 0,.L920
.LVL1327:
.L918:
.LBE5995:
	.loc 4 3215 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL1328:
	mtlr 0
	lwz 31,12(1)
.LVL1329:
	addi 1,1,16
	.cfi_remember_state
.LCFI223:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1330:
.L920:
.LCFI224:
	.cfi_restore_state
.LBB5996:
	.loc 4 3214 0
	lwz 9,100(30)
.LBE5996:
	.loc 4 3215 0
	lwz 30,8(1)
.LVL1331:
.LBB5997:
	.loc 4 3214 0
	addi 0,9,132
	slwi 0,0,2
	add 31,31,0
.LVL1332:
.LBE5997:
	.loc 4 3215 0
	lwz 0,20(1)
.LBB5998:
	.loc 4 3214 0
	lwz 3,4(31)
.LVL1333:
.LBE5998:
	.loc 4 3215 0
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI225:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2927:
	.size	_ZNK11idGameLocal14GetTraceEntityERK7trace_s, .-_ZNK11idGameLocal14GetTraceEntityERK7trace_s
	.align 2
	.globl _ZN11idGameLocal24ArgCompletion_EntityNameERK9idCmdArgsPFvPKcE
	.type	_ZN11idGameLocal24ArgCompletion_EntityNameERK9idCmdArgsPFvPKcE, @function
_ZN11idGameLocal24ArgCompletion_EntityNameERK9idCmdArgsPFvPKcE:
.LFB2928:
	.loc 4 3224 0
	.cfi_startproc
.LVL1334:
	stwu 1,-40(1)
.LCFI226:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 30,32(1)
.LBB5999:
	.loc 4 3227 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE5999:
	.loc 4 3224 0
	stw 28,24(1)
.LBB6004:
	.loc 4 3227 0
	la 30,.LANCHOR0@l(30)
.LBE6004:
	.loc 4 3224 0
	stw 29,28(1)
.LBB6005:
	.loc 4 3227 0
	addis 28,30,0x1
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LBE6005:
	.loc 4 3224 0
	stw 0,44(1)
	mr 29,3
	stw 26,16(1)
	stw 27,20(1)
	stw 31,36(1)
	.loc 4 3224 0
	stw 4,8(1)
.LBB6006:
	.loc 4 3227 0
	lwz 0,-32232(28)
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L921
	.loc 4 3229 0
	lis 27,.LC106@ha
	.loc 4 3227 0
	addi 30,30,528
	li 31,0
	.loc 4 3229 0
	la 27,.LC106@l(27)
.LBB6000:
.LBB6001:
	.loc 16 50 0
	lis 26,.LC3@ha
	b .L925
.LVL1335:
.L928:
	lwz 4,4(29)
.L924:
.LBE6001:
.LBE6000:
	.loc 4 3229 0
	lwz 5,72(9)
	mr 3,27
	crxor 6,6,6
	bl _Z2vaPKcz
	lwz 0,8(1)
	mtctr 0
	bctrl
.LVL1336:
.L923:
	.loc 4 3227 0
	lwz 0,-32232(28)
	addi 31,31,1
.LVL1337:
	cmpw 7,0,31
	ble- 7,.L921
.LVL1338:
.L925:
	.loc 4 3228 0
	lwzu 9,4(30)
	cmpwi 7,9,0
	beq- 7,.L923
.LVL1339:
.LBB6003:
.LBB6002:
	.loc 16 50 0
	lwz 0,0(29)
	cmpwi 7,0,0
	bgt+ 7,.L928
	la 4,.LC3@l(26)
	b .L924
.LVL1340:
.L921:
.LBE6002:
.LBE6003:
.LBE6006:
	.loc 4 3232 0
	lwz 0,44(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1341:
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
.LCFI227:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE2928:
	.size	_ZN11idGameLocal24ArgCompletion_EntityNameERK9idCmdArgsPFvPKcE, .-_ZN11idGameLocal24ArgCompletion_EntityNameERK9idCmdArgsPFvPKcE
	.align 2
	.globl _ZNK11idGameLocal10FindEntityEPKc
	.type	_ZNK11idGameLocal10FindEntityEPKc, @function
_ZNK11idGameLocal10FindEntityEPKc:
.LFB2929:
	.loc 4 3241 0
	.cfi_startproc
.LVL1342:
	mflr 0
	stwu 1,-32(1)
.LCFI228:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB6028:
.LBB6029:
.LBB6030:
.LBB6031:
.LBB6032:
	.loc 14 976 0
	li 11,0
.LBE6032:
.LBE6031:
.LBE6030:
.LBE6029:
.LBE6028:
	.loc 4 3241 0
	stw 27,12(1)
	mr 27,4
	.cfi_offset 27, -20
.LVL1343:
	stw 28,16(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 30,24(1)
	addis 30,3,0x1
	.cfi_offset 30, -8
	stw 0,36(1)
	stw 29,20(1)
	stw 31,28(1)
.LBB6051:
.LBB6039:
.LBB6037:
.LBB6035:
.LBB6033:
	.loc 14 976 0
	lbz 0,0(4)
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L930
.LVL1344:
	mr 10,4
.LBE6033:
.LBE6035:
.LBE6037:
.LBE6039:
.LBE6051:
	.loc 4 3241 0
	li 9,119
.LVL1345:
.L931:
.LBB6052:
.LBB6040:
.LBB6038:
.LBB6036:
.LBB6034:
	.loc 14 977 0
	mullw 8,0,9
	.loc 14 976 0
	lbzu 0,1(10)
	addi 9,9,1
	cmpwi 7,0,0
	.loc 14 977 0
	add 11,11,8
.LVL1346:
	.loc 14 976 0
	bne+ 7,.L931
	addis 30,28,0x1
	lwz 9,-32208(30)
	lwz 0,-32204(30)
	and 0,9,0
	and 11,0,11
.LVL1347:
	slwi 11,11,2
.L930:
.LVL1348:
.LBE6034:
.LBE6036:
.LBE6038:
.LBE6040:
.LBB6041:
.LBB6042:
	.loc 15 239 0
	lwz 9,-32224(30)
.LBE6042:
.LBE6041:
	.loc 4 3251 0
	li 3,0
.LVL1349:
.LBB6044:
.LBB6043:
	.loc 15 239 0
	lwzx 31,9,11
.LVL1350:
.LBE6043:
.LBE6044:
	.loc 4 3245 0
	cmpwi 7,31,-1
	beq- 7,.L932
.LVL1351:
.L937:
	.loc 4 3246 0
	addi 29,31,132
.LBB6045:
.LBB6046:
	.loc 14 690 0
	mr 4,27
.LBE6046:
.LBE6045:
	.loc 4 3246 0
	slwi 29,29,2
	add 29,28,29
	lwz 9,4(29)
	addi 29,29,4
	cmpwi 7,9,0
	beq- 7,.L933
.LVL1352:
.LBB6048:
.LBB6047:
	.loc 14 690 0 discriminator 1
	lwz 3,72(9)
	bl _ZN5idStr4IcmpEPKcS1_
.LBE6047:
.LBE6048:
	.loc 4 3246 0 discriminator 1
	cmpwi 7,3,0
	bne- 7,.L933
	.loc 4 3247 0
	lwz 3,0(29)
.LVL1353:
.L932:
.LBE6052:
	.loc 4 3252 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL1354:
	mtlr 0
	lwz 28,16(1)
.LVL1355:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1356:
	addi 1,1,32
	.cfi_remember_state
.LCFI229:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1357:
.L933:
.LCFI230:
	.cfi_restore_state
.LBB6053:
.LBB6049:
.LBB6050:
	.loc 15 249 0
	lwz 0,-32204(30)
	lwz 9,-32216(30)
	and 31,31,0
.LVL1358:
	slwi 31,31,2
	lwzx 31,9,31
.LVL1359:
.LBE6050:
.LBE6049:
	.loc 4 3245 0
	cmpwi 7,31,-1
	bne+ 7,.L937
.LBE6053:
	.loc 4 3252 0
	lwz 0,36(1)
.LBB6054:
	.loc 4 3251 0
	li 3,0
.LBE6054:
	.loc 4 3252 0
	lwz 27,12(1)
.LVL1360:
	mtlr 0
	lwz 28,16(1)
.LVL1361:
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1362:
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI231:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2929:
	.size	_ZNK11idGameLocal10FindEntityEPKc, .-_ZNK11idGameLocal10FindEntityEPKc
	.align 2
	.globl _ZN11idGameLocal15AddEntityToHashEPKcP8idEntity
	.type	_ZN11idGameLocal15AddEntityToHashEPKcP8idEntity, @function
_ZN11idGameLocal15AddEntityToHashEPKcP8idEntity:
.LFB2924:
	.loc 4 3142 0
	.cfi_startproc
.LVL1363:
	mflr 0
	stwu 1,-32(1)
.LCFI232:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,36(1)
	stw 28,16(1)
	stw 31,28(1)
	.loc 4 3143 0
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	bl _ZNK11idGameLocal10FindEntityEPKc
.LVL1364:
	cmpwi 7,3,0
	beq- 7,.L941
	.loc 4 3144 0
	lis 4,.LC107@ha
	mr 3,30
	la 4,.LC107@l(4)
	mr 5,29
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.L941:
.LBB6072:
.LBB6073:
.LBB6074:
.LBB6075:
	.loc 14 976 0
	lbz 0,0(29)
.LBE6075:
.LBE6074:
.LBE6073:
.LBE6072:
	.loc 4 3146 0
	addis 30,30,0x1
.LVL1365:
	addi 3,30,-32228
.LVL1366:
.LBB6084:
.LBB6080:
.LBB6078:
.LBB6076:
	.loc 14 976 0
	li 31,0
	cmpwi 7,0,0
	beq- 7,.L942
.LBE6076:
.LBE6078:
.LBE6080:
.LBE6084:
	.loc 4 3142 0
	li 9,119
.LVL1367:
.L943:
.LBB6085:
.LBB6081:
.LBB6079:
.LBB6077:
	.loc 14 977 0
	mullw 11,0,9
	.loc 14 976 0
	lbzu 0,1(29)
	addi 9,9,1
	cmpwi 7,0,0
	.loc 14 977 0
	add 31,31,11
.LVL1368:
	.loc 14 976 0
	bne+ 7,.L943
.LVL1369:
.L942:
.LBE6077:
.LBE6079:
.LBE6081:
.LBE6085:
.LBB6086:
.LBB6087:
	.loc 15 197 0
	lwz 9,-32224(30)
	lis 11,_ZN11idHashIndex13INVALID_INDEXE@ha
	la 0,_ZN11idHashIndex13INVALID_INDEXE@l(11)
.LBE6087:
.LBE6086:
.LBB6092:
.LBB6082:
	.loc 15 381 0
	lwz 28,-32208(30)
.LBE6082:
.LBE6092:
.LBB6093:
.LBB6088:
	.loc 15 197 0
	cmpw 7,9,0
.LBE6088:
.LBE6093:
	.loc 4 3146 0
	lwz 29,4(27)
.LVL1370:
.LBB6094:
.LBB6089:
	.loc 15 197 0
	beq- 7,.L950
	.loc 15 200 0
	lwz 11,-32220(30)
	mr 0,28
	cmpw 7,29,11
	blt+ 7,.L946
	.loc 15 201 0
	addi 4,29,1
	bl _ZN11idHashIndex11ResizeIndexEi
.LVL1371:
	lwz 0,-32208(30)
	lwz 9,-32224(30)
.L946:
.LVL1372:
.LBE6089:
.LBE6094:
.LBB6095:
.LBB6083:
	.loc 15 381 0
	and 31,31,28
.LVL1373:
.LBE6083:
.LBE6095:
.LBB6096:
.LBB6090:
	.loc 15 203 0
	and 31,31,0
.LVL1374:
	.loc 15 204 0
	slwi 0,29,2
	slwi 31,31,2
.LVL1375:
	lwzx 11,9,31
	lwz 9,-32216(30)
	stwx 11,9,0
	.loc 15 205 0
	lwz 9,-32224(30)
	stwx 29,9,31
.LBE6090:
.LBE6096:
	.loc 4 3147 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL1376:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1377:
	lwz 30,24(1)
.LVL1378:
	lwz 31,28(1)
.LVL1379:
	addi 1,1,32
	.cfi_remember_state
.LCFI233:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1380:
.L950:
.LCFI234:
	.cfi_restore_state
.LBB6097:
.LBB6091:
	.loc 15 198 0
	lwz 5,-32220(30)
	lwz 4,-32228(30)
	cmpw 7,29,5
	blt- 7,.L945
	addi 5,29,1
.L945:
	bl _ZN11idHashIndex8AllocateEii
.LVL1381:
	lwz 0,-32208(30)
	lwz 9,-32224(30)
	b .L946
.LBE6091:
.LBE6097:
	.cfi_endproc
.LFE2924:
	.size	_ZN11idGameLocal15AddEntityToHashEPKcP8idEntity, .-_ZN11idGameLocal15AddEntityToHashEPKcP8idEntity
	.align 2
	.globl _ZNK11idGameLocal10GetTargetsERK6idDictR6idListI11idEntityPtrI8idEntityEEPKc
	.type	_ZNK11idGameLocal10GetTargetsERK6idDictR6idListI11idEntityPtrI8idEntityEEPKc, @function
_ZNK11idGameLocal10GetTargetsERK6idDictR6idListI11idEntityPtrI8idEntityEEPKc:
.LFB2926:
	.loc 4 3172 0
	.cfi_startproc
.LVL1382:
	mflr 0
	stwu 1,-64(1)
.LCFI235:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	mfcr 12
	stw 26,40(1)
	mr 26,6
	.cfi_offset 26, -24
	.cfi_register 70, 12
	stw 29,52(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,56(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,60(1)
	mr 31,5
	.cfi_offset 31, -4
.LVL1383:
	stw 0,68(1)
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 12,12(1)
.LBB6132:
.LBB6133:
.LBB6134:
	.loc 8 193 0
	lwz 0,12(5)
	.cfi_offset 70, -52
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L952
	.loc 8 194 0
	mr 3,0
.LVL1384:
	bl _ZdaPv
.LVL1385:
.L952:
	.loc 8 197 0
	li 0,0
.LBE6134:
.LBE6133:
	.loc 4 3179 0
	mr 3,26
.LBB6136:
.LBB6135:
	.loc 8 197 0
	stw 0,12(31)
	.loc 8 198 0
	stw 0,0(31)
	.loc 8 199 0
	stw 0,4(31)
.LBE6135:
.LBE6136:
	.loc 4 3179 0
	bl strlen
.LBB6137:
	.loc 4 4268 0
	lwz 0,0(30)
.LBE6137:
	.loc 4 3179 0
	mr 24,3
.LVL1386:
.LBB6138:
	.loc 4 3181 0
	li 3,0
.LVL1387:
	cmpwi 7,0,0
.LBE6138:
.LBB6212:
	.loc 4 4268 0
	mr 25,0
.LVL1388:
.LBE6212:
.LBB6213:
	.loc 4 3181 0
	ble- 7,.L953
.LBB6139:
.LBB6140:
.LBB6141:
.LBB6142:
.LBB6143:
.LBB6144:
	.loc 10 608 0
	lis 22,.LANCHOR0@ha
.LBE6144:
.LBE6143:
.LBE6142:
.LBE6141:
.LBE6140:
.LBE6139:
	.loc 4 3181 0
	li 28,0
.LBB6202:
.LBB6203:
	.loc 11 298 0
	li 23,0
.LBE6203:
.LBE6202:
.LBB6207:
.LBB6196:
.LBB6191:
.LBB6187:
.LBB6147:
.LBB6145:
	.loc 10 608 0
	la 22,.LANCHOR0@l(22)
	b .L976
.LVL1389:
.L955:
.LBE6145:
.LBE6147:
.LBE6187:
.LBE6191:
.LBE6196:
.LBE6207:
	.loc 4 3181 0
	addi 28,28,1
.LVL1390:
	cmpw 7,28,25
	beq- 7,.L986
.LVL1391:
.L990:
	lwz 0,0(30)
.LVL1392:
.L976:
.LBB6208:
.LBB6206:
	.loc 11 295 0
	cmpw 7,0,28
	.loc 11 298 0
	li 27,0
	.loc 11 295 0
	ble- 7,.L954
.LVL1393:
.LBB6204:
.LBB6205:
	.loc 8 573 0
	lwz 27,12(30)
	.loc 4 3172 0
	slwi 0,28,3
	.loc 8 573 0
	add 27,27,0
.LVL1394:
.L954:
.LBE6205:
.LBE6204:
.LBE6206:
.LBE6208:
.LBB6209:
.LBB6197:
.LBB6198:
	.loc 4 4268 0
	lwz 9,0(27)
	.loc 14 695 0
	mr 4,26
	mr 5,24
	lwz 3,4(9)
	bl _ZN5idStr5IcmpnEPKcS1_i
.LBE6198:
.LBE6197:
	.loc 4 3184 0
	cmpwi 7,3,0
	bne+ 7,.L955
.LVL1395:
.LBB6199:
.LBB6192:
	.loc 4 4268 0
	lwz 9,4(27)
.LBE6192:
	.loc 4 3186 0
	mr 3,29
	lwz 4,4(9)
	bl _ZNK11idGameLocal10FindEntityEPKc
.LVL1396:
.LBB6193:
	.loc 4 3187 0
	mr. 21,3
	beq- 0,.L955
.LVL1397:
.LBB6188:
.LBB6148:
.LBB6149:
	.loc 8 633 0
	lwz 27,12(31)
.LVL1398:
	cmpwi 7,27,0
	beq- 7,.L956
	lwz 9,0(31)
	lwz 11,4(31)
.LVL1399:
.L957:
	.loc 8 637 0
	cmpw 7,11,9
	beq- 7,.L989
.L988:
.LBB6150:
.LBB6151:
	.loc 8 399 0
	slwi 0,9,2
	addi 9,9,1
	add 27,27,0
.L966:
.LBE6151:
.LBE6150:
	.loc 8 641 0
	stw 9,0(31)
.LVL1400:
.LBE6149:
.LBE6148:
.LBE6188:
.LBE6193:
.LBE6199:
.LBE6209:
	.loc 4 3181 0
	addi 28,28,1
.LVL1401:
	cmpw 7,28,25
.LBB6210:
.LBB6200:
.LBB6194:
.LBB6189:
.LBB6185:
.LBB6146:
	.loc 10 608 0
	lwz 9,4(21)
	addi 11,9,4228
	slwi 11,11,2
	add 11,22,11
	lwz 0,4(11)
	slwi 0,0,12
	or 9,0,9
	stw 9,0(27)
.LBE6146:
.LBE6185:
.LBE6189:
.LBE6194:
.LBE6200:
.LBE6210:
	.loc 4 3181 0
	bne+ 7,.L990
.LVL1402:
.L986:
	lwz 3,0(31)
.LVL1403:
.L953:
.LBE6213:
.LBE6132:
	.loc 4 3195 0
	lwz 0,68(1)
	lwz 12,12(1)
	mtlr 0
	lwz 20,16(1)
	lwz 21,20(1)
	mtcrf 8,12
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
.LVL1404:
	lwz 25,36(1)
.LVL1405:
	lwz 26,40(1)
.LVL1406:
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
.LVL1407:
	lwz 30,56(1)
.LVL1408:
	lwz 31,60(1)
.LVL1409:
	addi 1,1,64
	.cfi_remember_state
.LCFI236:
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
	blr
.LVL1410:
.L989:
.LCFI237:
	.cfi_restore_state
	lwz 20,8(31)
.L959:
.LVL1411:
.LBB6215:
.LBB6214:
.LBB6211:
.LBB6201:
.LBB6195:
.LBB6190:
.LBB6186:
.LBB6184:
.LBB6162:
.LBB6158:
	.loc 8 375 0
	add 20,11,20
.LVL1412:
	cmpwi 4,20,0
	ble- 4,.L991
	.loc 8 380 0
	cmpw 7,20,11
	beq- 7,.L987
.LVL1413:
	.loc 8 386 0
	stw 20,4(31)
	.loc 8 387 0
	blt- 7,.L992
.L970:
	.loc 8 392 0
	slwi 3,20,2
	bl _Znaj
	beq- 4,.L971
.LBB6152:
.LBB6153:
	.loc 10 590 0
	mtctr 20
.LBE6153:
.LBE6152:
	.loc 4 3172 0
	addi 9,3,-4
.L972:
.LBB6155:
.LBB6154:
	.loc 10 590 0
	stwu 23,4(9)
.LBE6154:
.LBE6155:
	.loc 8 392 0
	bdnz .L972
.L971:
	.loc 8 393 0
	lwz 11,0(31)
	.loc 8 392 0
	stw 3,12(31)
.LVL1414:
	.loc 8 393 0
	cmpwi 7,11,0
	ble- 7,.L973
	.loc 4 3172 0
	addi 10,27,-4
.LBE6158:
.LBE6162:
.LBB6163:
.LBB6164:
.LBB6165:
.LBB6166:
	.loc 8 393 0
	li 9,0
	b .L974
.LVL1415:
.L993:
.LBE6166:
.LBE6165:
.LBE6164:
.LBE6163:
.LBB6177:
.LBB6159:
	lwz 3,12(31)
.LVL1416:
.L974:
	.loc 8 394 0
	lwzu 11,4(10)
	slwi 0,9,2
	.loc 8 393 0
	addi 9,9,1
.LVL1417:
	.loc 8 394 0
	stwx 11,3,0
	.loc 8 393 0
	lwz 11,0(31)
	cmpw 7,9,11
	blt+ 7,.L993
.LVL1418:
.L973:
	.loc 8 398 0
	cmpwi 7,27,0
	beq- 7,.L994
	.loc 8 399 0
	mr 3,27
	bl _ZdaPv
	lwz 9,0(31)
	lwz 27,12(31)
.LVL1419:
	b .L988
.LVL1420:
.L992:
	.loc 8 388 0
	stw 20,0(31)
	b .L970
.LVL1421:
.L956:
.LBE6159:
.LBE6177:
	.loc 8 634 0
	lwz 11,8(31)
.LBB6178:
.LBB6173:
	.loc 8 375 0
	cmpwi 4,11,0
.LBE6173:
.LBE6178:
	.loc 8 634 0
	mr 20,11
.LVL1422:
.LBB6179:
.LBB6174:
	.loc 8 375 0
	ble- 4,.L995
	.loc 8 380 0
	lwz 0,4(31)
	cmpw 7,11,0
	beq- 7,.L996
.LVL1423:
	.loc 8 387 0
	lwz 0,0(31)
	.loc 8 386 0
	stw 11,4(31)
	.loc 8 387 0
	cmpw 7,11,0
	bge- 7,.L961
	.loc 8 388 0
	stw 11,0(31)
.L961:
	.loc 8 392 0
	slwi 3,20,2
	bl _Znaj
.LVL1424:
	mr 27,3
	beq- 4,.L962
.LBB6168:
.LBB6169:
	.loc 10 590 0
	mtctr 20
.LBE6169:
.LBE6168:
	.loc 4 3172 0
	addi 9,3,-4
.L963:
.LBB6171:
.LBB6170:
	.loc 10 590 0
	stwu 23,4(9)
.LBE6170:
.LBE6171:
	.loc 8 392 0
	bdnz .L963
.L962:
	.loc 8 393 0
	lwz 9,0(31)
	li 11,0
	.loc 8 392 0
	stw 27,12(31)
.LVL1425:
	.loc 8 393 0
	li 10,0
	cmpwi 7,9,0
	bgt+ 7,.L984
	b .L999
.LVL1426:
.L998:
	lwz 27,12(31)
.LVL1427:
.L984:
	.loc 8 394 0
	lwz 0,0(11)
	.loc 8 393 0
	addi 10,10,1
.LVL1428:
	.loc 8 394 0
	stwx 0,27,11
	.loc 8 393 0
	addi 11,11,4
	lwz 9,0(31)
	cmpw 7,10,9
	blt+ 7,.L998
	lwz 11,4(31)
	lwz 27,12(31)
	b .L957
.LVL1429:
.L994:
.LBE6174:
.LBE6179:
.LBB6180:
.LBB6160:
	.loc 8 398 0
	lwz 27,12(31)
.LVL1430:
.L987:
	slwi 0,11,2
	addi 9,11,1
	add 27,27,0
	b .L966
.LVL1431:
.L996:
.LBE6160:
.LBE6180:
.LBB6181:
.LBB6175:
	.loc 8 380 0
	lwz 9,0(31)
	b .L957
.LVL1432:
.L991:
.LBE6175:
.LBE6181:
.LBB6182:
.LBB6161:
.LBB6156:
.LBB6157:
	.loc 8 193 0
	cmpwi 7,27,0
	beq- 7,.L968
	.loc 8 194 0
	mr 3,27
	bl _ZdaPv
.L968:
	.loc 8 197 0
	stw 23,12(31)
	.loc 8 199 0
	li 9,1
	stw 23,4(31)
	li 27,0
	b .L966
.LVL1433:
.L995:
.LBE6157:
.LBE6156:
.LBE6161:
.LBE6182:
.LBB6183:
.LBB6176:
.LBB6172:
.LBB6167:
	.loc 8 198 0
	stw 27,0(31)
	.loc 8 199 0
	li 11,0
.LVL1434:
	stw 27,4(31)
	b .L959
.LVL1435:
.L999:
.LBE6167:
.LBE6172:
	.loc 8 393 0
	lwz 11,4(31)
	b .L957
.LBE6176:
.LBE6183:
.LBE6184:
.LBE6186:
.LBE6190:
.LBE6195:
.LBE6201:
.LBE6211:
.LBE6214:
.LBE6215:
	.cfi_endproc
.LFE2926:
	.size	_ZNK11idGameLocal10GetTargetsERK6idDictR6idListI11idEntityPtrI8idEntityEEPKc, .-_ZNK11idGameLocal10GetTargetsERK6idDictR6idListI11idEntityPtrI8idEntityEEPKc
	.align 2
	.globl _ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc
	.type	_ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc, @function
_ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc:
.LFB2930:
	.loc 4 3264 0
	.cfi_startproc
.LVL1436:
.LBB6216:
	.loc 4 3267 0
	cmpwi 0,4,0
.LBE6216:
	.loc 4 3264 0
	mflr 0
	stwu 1,-16(1)
.LCFI238:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
.LBB6235:
	.loc 4 3267 0
	beq- 0,.L1016
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LBB6217:
.LBB6218:
	.loc 4 4268 0
	lwz 9,16(4)
.LBE6218:
.LBE6217:
.LBB6222:
.LBB6223:
	.loc 4 3280 0
	li 31,0
.LBE6223:
.LBE6222:
.LBB6226:
.LBB6219:
	.loc 4 4268 0
	lwz 0,12(4)
.LBE6219:
.LBE6226:
.LBB6227:
.LBB6224:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L1002
.LVL1437:
.L1014:
	cmpw 7,0,9
	bne+ 7,.L1015
	b .L1002
.LVL1438:
.L1017:
.LBE6224:
.LBE6227:
.LBB6228:
.LBB6229:
	beq- 6,.L1010
.LVL1439:
.L1015:
.LBE6229:
.LBE6228:
.LBB6231:
.LBB6225:
	.loc 9 271 0
	lwz 31,12(9)
.LVL1440:
.LBE6225:
.LBE6231:
	.loc 4 3273 0
	cmpwi 7,31,0
	beq- 7,.L1002
	.loc 4 3275 0
	mr 3,31
	bl _ZNK8idEntity16GetEntityDefNameEv
.LVL1441:
	mr 4,30
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	beq- 7,.L1002
	.loc 4 4268 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBB6232:
.LBB6230:
	.loc 9 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	bne+ 7,.L1017
.L1010:
	.loc 4 3280 0
	li 31,0
.LVL1442:
.L1002:
.LBE6230:
.LBE6232:
.LBE6235:
	.loc 4 3281 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
.LVL1443:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI239:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1444:
.L1016:
.LCFI240:
	.cfi_restore_state
.LBB6236:
	.loc 4 4268 0
	addis 3,3,0x1
.LVL1445:
.LBB6233:
.LBB6220:
	.loc 4 3280 0
	li 31,0
.LBE6220:
.LBE6233:
	.loc 4 4268 0
	lwz 9,-32192(3)
	lwz 0,-32196(3)
.LBB6234:
.LBB6221:
	.loc 9 268 0
	cmpwi 7,9,0
	bne+ 7,.L1014
	b .L1002
.LBE6221:
.LBE6234:
.LBE6236:
	.cfi_endproc
.LFE2930:
	.size	_ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc, .-_ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc
	.align 2
	.globl _ZNK11idGameLocal15FindTraceEntityE6idVec3S0_RK10idTypeInfoPK8idEntity
	.type	_ZNK11idGameLocal15FindTraceEntityE6idVec3S0_RK10idTypeInfoPK8idEntity, @function
_ZNK11idGameLocal15FindTraceEntityE6idVec3S0_RK10idTypeInfoPK8idEntity:
.LFB2931:
	.loc 4 3291 0
	.cfi_startproc
.LVL1446:
	mflr 0
	stwu 1,-104(1)
.LCFI241:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
.LBB6237:
.LBB6238:
.LBB6239:
	.loc 4 4268 0
	addis 3,3,0x1
.LVL1447:
.LBE6239:
.LBE6238:
.LBE6237:
	.loc 4 3291 0
	stw 25,60(1)
.LBB6295:
.LBB6242:
.LBB6240:
	.loc 9 268 0
	li 25,0
	.cfi_offset 25, -44
.LBE6240:
.LBE6242:
.LBE6295:
	.loc 4 3291 0
	stw 27,68(1)
	mr 27,7
	.cfi_offset 27, -36
	stw 29,76(1)
	mr 29,5
	.cfi_offset 29, -28
	stw 30,80(1)
	mr 30,6
	.cfi_offset 30, -24
	stw 31,84(1)
	mr 31,4
	.cfi_offset 31, -20
	stw 0,108(1)
	stfd 30,88(1)
	stfd 31,96(1)
	stw 26,64(1)
	stw 28,72(1)
.LBB6296:
.LBB6243:
.LBB6241:
	.loc 4 4268 0
	lwz 9,-32192(3)
	lwz 0,-32196(3)
	.cfi_offset 28, -32
	.cfi_offset 26, -40
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L1019
	cmpw 7,0,9
	beq- 7,.L1019
	.loc 9 271 0
	lwz 28,12(9)
.LVL1448:
.LBE6241:
.LBE6243:
	.loc 4 3300 0
	cmpwi 7,28,0
	beq- 7,.L1019
	lis 9,.LC16@ha
.LBB6244:
.LBB6245:
	.loc 18 319 0
	lis 26,.LC27@ha
.LBE6245:
.LBE6244:
	.loc 4 3300 0
	lfs 30,.LC16@l(9)
	.loc 4 3304 0
	lis 9,.LC2@ha
	lfs 31,.LC2@l(9)
.LVL1449:
.L1022:
.LBB6253:
.LBB6254:
	.loc 5 340 0
	lwz 9,0(28)
	mr 3,28
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1450:
.LBB6255:
.LBB6256:
	.loc 5 311 0
	lwz 9,56(30)
.LBE6256:
.LBE6255:
.LBE6254:
	.loc 4 4268 0
	lwz 0,56(3)
.LBB6261:
.LBB6259:
.LBB6257:
	.loc 5 311 0
	cmpw 7,0,9
	blt- 7,.L1020
.LVL1451:
	lwz 9,60(30)
.LBE6257:
.LBE6259:
.LBE6261:
.LBE6253:
	.loc 4 3302 0
	mr 3,28
.LVL1452:
	.loc 4 3301 0
	cmpw 6,28,27
.LBB6263:
.LBB6262:
.LBB6260:
.LBB6258:
	.loc 5 311 0
	cmpw 7,0,9
	bgt- 7,.L1020
.LBE6258:
.LBE6260:
.LBE6262:
.LBE6263:
	.loc 4 3301 0
	beq- 6,.L1020
	.loc 4 3302 0 discriminator 4
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1453:
.LBB6264:
.LBB6246:
	.loc 18 319 0 discriminator 4
	lfs 0,.LC27@l(26)
	lfs 2,0(3)
.LBE6246:
.LBE6264:
	.loc 4 3303 0 discriminator 4
	mr 4,31
.LBB6265:
.LBB6247:
	.loc 18 319 0 discriminator 4
	lfs 6,4(3)
.LBE6247:
.LBE6265:
	.loc 4 3303 0 discriminator 4
	addi 5,1,12
.LBB6266:
.LBB6248:
	.loc 18 319 0 discriminator 4
	lfs 7,8(3)
.LBE6248:
.LBE6266:
	.loc 4 3303 0 discriminator 4
	addi 6,1,8
.LBB6267:
.LBB6249:
	.loc 18 319 0 discriminator 4
	lfs 8,12(3)
	fsubs 6,6,0
	lfs 9,16(3)
.LVL1454:
	fsubs 7,7,0
.LVL1455:
	lfs 10,20(3)
	fadds 8,8,0
.LVL1456:
.LBE6249:
.LBE6267:
.LBB6268:
.LBB6269:
	.loc 17 431 0 discriminator 4
	lfs 3,4(29)
.LBE6269:
.LBE6268:
.LBB6278:
.LBB6250:
	.loc 18 319 0 discriminator 4
	fadds 9,9,0
.LVL1457:
.LBE6250:
.LBE6278:
.LBB6279:
.LBB6272:
	.loc 17 431 0 discriminator 4
	lfs 12,4(31)
.LBE6272:
.LBE6279:
.LBB6280:
.LBB6251:
	.loc 18 319 0 discriminator 4
	fadds 10,10,0
.LVL1458:
.LBE6251:
.LBE6280:
.LBB6281:
.LBB6273:
	.loc 17 431 0 discriminator 4
	lfs 4,8(29)
.LBE6273:
.LBE6281:
.LBB6282:
.LBB6252:
	.loc 18 319 0 discriminator 4
	fsubs 0,2,0
.LBE6252:
.LBE6282:
.LBB6283:
.LBB6274:
	.loc 17 431 0 discriminator 4
	lfs 13,8(31)
	fsubs 12,3,12
	lfs 5,0(29)
.LBE6274:
.LBE6283:
	.loc 4 3303 0 discriminator 4
	addi 3,1,24
.LVL1459:
.LBB6284:
.LBB6275:
	.loc 17 431 0 discriminator 4
	lfs 11,0(31)
	fsubs 13,4,13
.LBE6275:
.LBE6284:
.LBB6285:
.LBB6286:
.LBB6287:
	.loc 17 424 0 discriminator 4
	stfs 0,24(1)
.LBE6287:
.LBE6286:
.LBE6285:
.LBB6290:
.LBB6276:
	.loc 17 431 0 discriminator 4
	fsubs 11,5,11
.LBE6276:
.LBE6290:
.LBB6291:
.LBB6289:
.LBB6288:
	.loc 17 425 0 discriminator 4
	stfs 6,28(1)
	.loc 17 426 0 discriminator 4
	stfs 7,32(1)
.LVL1460:
	.loc 17 424 0 discriminator 4
	stfs 8,36(1)
	.loc 17 425 0 discriminator 4
	stfs 9,40(1)
	.loc 17 426 0 discriminator 4
	stfs 10,44(1)
.LVL1461:
.LBE6288:
.LBE6289:
.LBE6291:
.LBB6292:
.LBB6277:
.LBB6270:
.LBB6271:
	.loc 17 396 0 discriminator 4
	stfs 11,12(1)
	.loc 17 397 0 discriminator 4
	stfs 12,16(1)
	.loc 17 398 0 discriminator 4
	stfs 13,20(1)
.LBE6271:
.LBE6270:
.LBE6277:
.LBE6292:
	.loc 4 3303 0 discriminator 4
	bl _ZNK8idBounds15RayIntersectionERK6idVec3S2_Rf
.LVL1462:
	cmpwi 7,3,0
	beq- 7,.L1020
	.loc 4 3304 0
	lfs 0,8(1)
	fcmpu 7,0,31
	cror 30,29,30
	bne- 7,.L1020
	.loc 4 3304 0 is_stmt 0 discriminator 1
	fcmpu 7,30,0
	bgt- 7,.L1029
.LVL1463:
.L1020:
	.loc 4 4268 0 is_stmt 1
	lwz 9,16(28)
	lwz 0,12(28)
.LBB6293:
.LBB6294:
	.loc 9 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	beq- 7,.L1019
	beq- 6,.L1019
	.loc 9 271 0
	lwz 28,12(9)
.LVL1464:
.LBE6294:
.LBE6293:
	.loc 4 3300 0
	cmpwi 7,28,0
	bne+ 7,.L1022
.LVL1465:
.L1019:
.LBE6296:
	.loc 4 3313 0
	lwz 0,108(1)
	mr 3,25
	lwz 26,64(1)
	mtlr 0
	lwz 25,60(1)
	lwz 27,68(1)
.LVL1466:
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
.LVL1467:
	lwz 31,84(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
	.cfi_remember_state
.LCFI242:
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
.LVL1468:
.L1029:
.LCFI243:
	.cfi_restore_state
.LBB6297:
	.loc 4 3304 0
	mr 25,28
	.loc 4 3306 0
	fmr 30,0
	b .L1020
.LBE6297:
	.cfi_endproc
.LFE2931:
	.size	_ZNK11idGameLocal15FindTraceEntityE6idVec3S0_RK10idTypeInfoPK8idEntity, .-_ZNK11idGameLocal15FindTraceEntityE6idVec3S0_RK10idTypeInfoPK8idEntity
	.align 2
	.globl _ZNK11idGameLocal20EntitiesWithinRadiusE6idVec3fPP8idEntityi
	.type	_ZNK11idGameLocal20EntitiesWithinRadiusE6idVec3fPP8idEntityi, @function
_ZNK11idGameLocal20EntitiesWithinRadiusE6idVec3fPP8idEntityi:
.LFB2932:
	.loc 4 3320 0
	.cfi_startproc
.LVL1469:
	mflr 0
	stwu 1,-72(1)
.LCFI244:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
.LBB6336:
.LBB6337:
.LBB6338:
	.loc 4 4268 0
	addis 3,3,0x1
.LVL1470:
.LBE6338:
.LBE6337:
.LBE6336:
	.loc 4 3320 0
	stfd 26,24(1)
	stfd 27,32(1)
	stfd 28,40(1)
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -60
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	stw 30,16(1)
.LBB6357:
.LBB6341:
.LBB6342:
	.loc 9 268 0
	li 30,0
	.cfi_offset 30, -56
.LBE6342:
.LBE6341:
.LBE6357:
	.loc 4 3320 0
	stw 0,76(1)
	stfd 29,48(1)
	stfd 30,56(1)
	stfd 31,64(1)
	stw 31,20(1)
.LBB6358:
.LBB6345:
.LBB6339:
	.loc 4 4268 0
	lwz 9,-32192(3)
.LBE6339:
.LBE6345:
.LBB6346:
.LBB6343:
	.loc 9 268 0
	lfs 31,0(4)
	.cfi_offset 31, -52
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
.LVL1471:
	cmpwi 7,9,0
	lfs 30,4(4)
.LVL1472:
	lfs 29,8(4)
.LVL1473:
.LBE6343:
.LBE6346:
.LBB6347:
.LBB6340:
	.loc 18 323 0
	fsubs 28,31,1
.LVL1474:
	.loc 18 324 0
	fsubs 27,30,1
.LVL1475:
	.loc 4 4268 0
	lwz 0,-32196(3)
	.loc 18 325 0
	fsubs 26,29,1
.LVL1476:
	.loc 18 326 0
	fadds 31,1,31
.LVL1477:
	.loc 18 327 0
	fadds 30,1,30
.LVL1478:
	.loc 18 328 0
	fadds 29,1,29
.LBE6340:
.LBE6347:
.LBB6348:
.LBB6344:
	.loc 9 268 0
	beq- 7,.L1031
.LVL1479:
	cmpw 7,0,9
	beq- 7,.L1031
.LVL1480:
.L1041:
	.loc 9 271 0
	lwz 31,12(9)
.LVL1481:
.LBE6344:
.LBE6348:
	.loc 4 3326 0
	cmpwi 7,31,0
	beq- 7,.L1031
	.loc 4 3327 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1482:
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1483:
.LBB6349:
.LBB6350:
	.loc 18 362 0
	lfs 0,0(3)
	fcmpu 7,31,0
	blt- 7,.L1032
.LVL1484:
	lfs 0,4(3)
	fcmpu 7,30,0
	blt- 7,.L1032
.LVL1485:
	lfs 0,8(3)
	fcmpu 7,29,0
	blt- 7,.L1032
.LVL1486:
	lfs 0,12(3)
	fcmpu 7,28,0
	bgt- 7,.L1032
.LVL1487:
	lfs 0,16(3)
	fcmpu 7,27,0
	bng- 7,.L1042
.LVL1488:
.L1032:
	.loc 4 4268 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBE6350:
.LBE6349:
.LBB6353:
.LBB6354:
	.loc 9 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	beq- 7,.L1031
	bne+ 6,.L1041
.LVL1489:
.L1031:
.LBE6354:
.LBE6353:
.LBE6358:
	.loc 4 3333 0
	lwz 0,76(1)
	mr 3,30
	lwz 29,12(1)
.LVL1490:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	lfd 26,24(1)
	lfd 27,32(1)
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI245:
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
.LVL1491:
.L1042:
.LCFI246:
	.cfi_restore_state
.LBB6359:
.LBB6355:
.LBB6351:
	.loc 18 362 0
	lfs 0,20(3)
.LBE6351:
.LBE6355:
	.loc 4 3328 0
	slwi 0,30,2
.LBB6356:
.LBB6352:
	.loc 18 362 0
	fcmpu 7,26,0
	bgt- 7,.L1032
.LBE6352:
.LBE6356:
	.loc 4 3328 0
	stwx 31,29,0
	addi 30,30,1
.LVL1492:
	b .L1032
.LBE6359:
	.cfi_endproc
.LFE2932:
	.size	_ZNK11idGameLocal20EntitiesWithinRadiusE6idVec3fPP8idEntityi, .-_ZNK11idGameLocal20EntitiesWithinRadiusE6idVec3fPP8idEntityi
	.align 2
	.globl _ZN11idGameLocal7KillBoxEP8idEntityb
	.type	_ZN11idGameLocal7KillBoxEP8idEntityb, @function
_ZN11idGameLocal7KillBoxEP8idEntityb:
.LFB2933:
	.loc 4 3344 0
	.cfi_startproc
.LVL1493:
	stwu 1,-16456(1)
.LCFI247:
	.cfi_def_cfa_offset 16456
	mflr 0
	mfcr 12
	stw 23,16420(1)
	mr 23,3
	.cfi_offset 23, -36
	.cfi_register 70, 12
	.cfi_register 65, 0
.LBB6360:
	.loc 4 3352 0
	mr 3,4
.LVL1494:
.LBE6360:
	.loc 4 3344 0
	stw 0,16460(1)
	stw 26,16432(1)
	stw 27,16436(1)
	mr 27,4
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	stw 31,16452(1)
	mr 31,5
	.cfi_offset 31, -4
	stw 12,16392(1)
	stw 17,16396(1)
	stw 18,16400(1)
	stw 19,16404(1)
	stw 20,16408(1)
	stw 21,16412(1)
	stw 22,16416(1)
	stw 24,16424(1)
	stw 25,16428(1)
	stw 28,16440(1)
	stw 29,16444(1)
	stw 30,16448(1)
.LBB6379:
	.loc 4 3352 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 70, -64
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1495:
	.loc 4 3353 0
	lwz 9,0(3)
	.loc 4 3352 0
	mr 26,3
.LVL1496:
	.loc 4 3353 0
	lwz 0,28(9)
	mtctr 0
	bctrl
.LVL1497:
	cmpwi 7,3,0
	bne- 7,.L1053
.L1043:
.LBE6379:
	.loc 4 3387 0
	lwz 0,16460(1)
	lwz 12,16392(1)
	mtlr 0
	lwz 17,16396(1)
	lwz 18,16400(1)
	mtcrf 8,12
	lwz 19,16404(1)
	lwz 20,16408(1)
	lwz 21,16412(1)
	lwz 22,16416(1)
	lwz 23,16420(1)
.LVL1498:
	lwz 24,16424(1)
	lwz 25,16428(1)
	lwz 26,16432(1)
.LVL1499:
	lwz 27,16436(1)
.LVL1500:
	lwz 28,16440(1)
	lwz 29,16444(1)
	lwz 30,16448(1)
	lwz 31,16452(1)
	addi 1,1,16456
	.cfi_remember_state
.LCFI248:
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
	.cfi_restore 17
	blr
.LVL1501:
.L1053:
.LCFI249:
	.cfi_restore_state
.LBB6380:
	.loc 4 3357 0
	lwz 9,0(26)
	li 4,-1
	mr 3,26
	lwz 0,60(9)
	mtctr 0
	bctrl
	lwz 9,0(26)
	mr 30,3
	li 4,-1
	lwz 0,52(9)
	mr 3,26
	mtctr 0
	bctrl
	mr 4,30
	mr 5,3
	addis 3,23,0x23
	addi 3,3,17272
	addi 6,1,8
	li 7,4096
	bl _ZNK6idClip24ClipModelsTouchingBoundsERK8idBoundsiPP11idClipModeli
.LVL1502:
	.loc 4 3358 0
	mr. 29,3
	ble- 0,.L1043
.LBB6361:
.LBB6362:
.LBB6363:
	.loc 10 635 0
	lis 25,.LANCHOR0@ha
.LBE6363:
.LBE6362:
.LBE6361:
	.loc 4 3379 0
	lis 18,vec3_origin@ha
.LBB6370:
.LBB6367:
.LBB6364:
	.loc 10 635 0
	la 25,.LANCHOR0@l(25)
.LBE6364:
.LBE6367:
.LBE6370:
	.loc 4 3379 0
	lis 19,.LC108@ha
	.loc 4 3384 0
	lis 21,.LC109@ha
	.loc 4 3378 0
	cmpwi 4,31,0
	.loc 4 3358 0
	addi 30,1,4
	li 31,0
.LBB6371:
	.loc 4 4268 0
	lis 22,_ZN8idPlayer4TypeE@ha
.LBE6371:
	.loc 4 3379 0
	la 18,vec3_origin@l(18)
	la 19,.LC108@l(19)
	lis 20,.LC16@ha
	.loc 4 3384 0
	la 21,.LC109@l(21)
.LBB6376:
.LBB6368:
.LBB6365:
	.loc 10 635 0
	mr 17,25
	b .L1048
.LVL1503:
.L1045:
.LBE6365:
.LBE6368:
.LBE6376:
	.loc 4 3358 0
	addi 31,31,1
.LVL1504:
	cmpw 7,31,29
	beq- 7,.L1043
.LVL1505:
.L1048:
	.loc 4 3359 0
	lwzu 4,4(30)
.LVL1506:
	.loc 4 3362 0
	lwz 0,128(4)
	cmpwi 7,0,-1
	bne+ 7,.L1045
	.loc 4 4268 0
	lwz 28,4(4)
	.loc 4 3367 0
	cmpw 7,27,28
	beq- 7,.L1045
	.loc 4 3367 0 is_stmt 0 discriminator 1
	lwz 0,192(28)
	andis. 9,0,8192
	beq+ 0,.L1045
	.loc 4 3371 0 is_stmt 1
	lwz 9,0(26)
	mr 3,26
	lwz 0,176(9)
	mtctr 0
	bctrl
.LVL1507:
	cmpwi 7,3,0
	beq+ 7,.L1045
.LVL1508:
.LBB6377:
.LBB6372:
	.loc 5 340 0
	lwz 9,0(28)
	mr 3,28
	mr 24,25
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1509:
.LBE6372:
	.loc 4 4268 0
	la 9,_ZN8idPlayer4TypeE@l(22)
	lwz 0,56(3)
.LBB6375:
.LBB6373:
.LBB6374:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1046
	lwz 9,60(9)
	cmpw 7,0,9
	ble- 7,.L1054
.L1046:
.LBE6374:
.LBE6373:
.LBE6375:
.LBE6377:
	.loc 4 3378 0
	bne+ 4,.L1047
	.loc 4 3379 0
	lwz 9,0(28)
	mr 3,28
.LVL1510:
	mr 4,27
	mr 5,27
	lwz 0,164(9)
	mr 6,18
	mr 7,19
	lfs 1,.LC16@l(20)
	li 8,-1
	mtctr 0
	bctrl
.L1047:
	.loc 4 3382 0
	addis 24,24,0x25
	lbz 0,2016(24)
	cmpwi 7,0,0
	bne+ 7,.L1045
	.loc 4 3384 0
	lwz 5,72(27)
	mr 3,23
	lwz 6,72(28)
	mr 4,21
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	b .L1045
.LVL1511:
.L1054:
.LBB6378:
.LBB6369:
.LBB6366:
	.loc 10 634 0
	lwz 0,5296(28)
	rlwinm 9,0,0,20,31
.LVL1512:
	.loc 10 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,25,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L1046
	.loc 10 636 0
	addi 9,9,132
.LVL1513:
	slwi 9,9,2
.LVL1514:
	add 9,17,9
.LBE6366:
.LBE6369:
.LBE6378:
	.loc 4 3376 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1046
	.loc 4 3377 0 discriminator 4
	lwz 4,4(27)
	mr 3,28
.LVL1515:
	bl _ZN8idPlayer13TeleportDeathEi
	b .L1047
.LBE6380:
	.cfi_endproc
.LFE2933:
	.size	_ZN11idGameLocal7KillBoxEP8idEntityb, .-_ZN11idGameLocal7KillBoxEP8idEntityb
	.align 2
	.globl _ZN11idGameLocal14RequirementMetEP8idEntityRK5idStri
	.type	_ZN11idGameLocal14RequirementMetEP8idEntityRK5idStri, @function
_ZN11idGameLocal14RequirementMetEP8idEntityRK5idStri:
.LFB2934:
	.loc 4 3394 0
	.cfi_startproc
.LVL1516:
	mflr 0
	stwu 1,-24(1)
.LCFI250:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
.LBB6381:
	.loc 4 3410 0
	li 30,1
	.cfi_offset 30, -8
.LBE6381:
	.loc 4 3394 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,28(1)
.LBB6389:
	.loc 4 3395 0
	lwz 0,0(5)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L1062
.LVL1517:
.L1056:
.LBE6389:
	.loc 4 3411 0
	lwz 0,28(1)
	mr 3,30
	lwz 31,20(1)
.LVL1518:
	mtlr 0
	lwz 30,16(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI251:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1519:
.L1062:
.LCFI252:
	.cfi_restore_state
.LBB6390:
.LBB6382:
.LBB6383:
.LBB6384:
	.loc 5 340 0
	lwz 9,0(4)
	mr 3,4
.LVL1520:
	lwz 0,0(9)
	stw 5,8(1)
	mtctr 0
	stw 6,12(1)
	bctrl
.LVL1521:
.LBE6384:
	.loc 4 4268 0
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB6387:
.LBB6385:
.LBB6386:
	.loc 5 311 0
	lwz 11,56(9)
	lwz 5,8(1)
	cmpw 7,0,11
	blt- 7,.L1056
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1056
.LVL1522:
.LBE6386:
.LBE6385:
.LBE6387:
.LBE6383:
.LBB6388:
	.loc 4 3398 0
	lwz 4,4(5)
	mr 3,31
.LVL1523:
	.loc 4 3405 0
	li 30,0
	.loc 4 3398 0
	bl _ZN8idPlayer17FindInventoryItemEPKc
.LVL1524:
	.loc 4 3399 0
	lwz 6,12(1)
	mr. 4,3
	beq- 0,.L1056
	.loc 4 3400 0
	cmpwi 7,6,0
	.loc 4 3403 0
	li 30,1
	.loc 4 3400 0
	beq+ 7,.L1056
	.loc 4 3401 0
	mr 3,31
.LVL1525:
	bl _ZN8idPlayer19RemoveInventoryItemEP6idDict
.LVL1526:
	b .L1056
.LBE6388:
.LBE6382:
.LBE6390:
	.cfi_endproc
.LFE2934:
	.size	_ZN11idGameLocal14RequirementMetEP8idEntityRK5idStri, .-_ZN11idGameLocal14RequirementMetEP8idEntityRK5idStri
	.align 2
	.globl _ZN11idGameLocal7AlertAIEP8idEntity
	.type	_ZN11idGameLocal7AlertAIEP8idEntity, @function
_ZN11idGameLocal7AlertAIEP8idEntity:
.LFB2935:
	.loc 4 3418 0
	.cfi_startproc
.LVL1527:
	stwu 1,-16(1)
.LCFI253:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 4 3419 0
	mr. 31,4
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 4 3418 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	.loc 4 3419 0
	beq- 0,.L1063
	.cfi_offset 65, 4
.LVL1528:
.LBB6391:
.LBB6392:
	.loc 5 340 0 discriminator 1
	lwz 9,0(31)
	mr 3,31
.LVL1529:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1530:
.LBE6392:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB6395:
.LBB6393:
.LBB6394:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1063
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1063
.LBE6394:
.LBE6393:
.LBE6395:
.LBE6391:
	.loc 4 3421 0 is_stmt 1 discriminator 4
	addis 30,30,0x25
.LVL1531:
.LBB6396:
.LBB6397:
	.loc 10 608 0 discriminator 4
	lis 11,.LANCHOR0@ha
.LBE6397:
.LBE6396:
	.loc 4 3421 0 discriminator 4
	lwz 9,2004(30)
.LBB6400:
.LBB6398:
	.loc 10 608 0 discriminator 4
	la 11,.LANCHOR0@l(11)
.LBE6398:
.LBE6400:
	.loc 4 3421 0 discriminator 4
	addi 0,9,16
	stw 0,2160(30)
.LVL1532:
.LBB6401:
.LBB6399:
	.loc 10 608 0 discriminator 4
	lwz 9,4(31)
	addi 0,9,4228
	slwi 0,0,2
	add 11,11,0
	lwz 0,4(11)
	slwi 0,0,12
	or 9,0,9
	stw 9,2156(30)
.LVL1533:
.L1063:
.LBE6399:
.LBE6401:
	.loc 4 3424 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1534:
	addi 1,1,16
.LCFI254:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2935:
	.size	_ZN11idGameLocal7AlertAIEP8idEntity, .-_ZN11idGameLocal7AlertAIEP8idEntity
	.align 2
	.globl _ZN11idGameLocal14GetAlertEntityEv
	.type	_ZN11idGameLocal14GetAlertEntityEv, @function
_ZN11idGameLocal14GetAlertEntityEv:
.LFB2936:
	.loc 4 3431 0
	.cfi_startproc
.LVL1535:
	.loc 4 3432 0
	addis 9,3,0x25
	.loc 4 3436 0
	li 3,0
.LVL1536:
	.loc 4 3432 0
	lwz 11,2160(9)
	lwz 0,2004(9)
	cmpw 7,11,0
	bltlr- 7
.LBB6402:
.LBB6403:
	.loc 10 634 0
	lwz 0,2156(9)
	.loc 10 635 0
	lis 9,.LANCHOR0@ha
.LVL1537:
	la 9,.LANCHOR0@l(9)
	.loc 10 634 0
	rlwinm 11,0,0,20,31
.LVL1538:
	.loc 10 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bnelr+ 7
	.loc 10 636 0
	addi 11,11,132
.LVL1539:
	slwi 11,11,2
.LVL1540:
	add 9,9,11
	lwz 3,4(9)
.LBE6403:
.LBE6402:
	.loc 4 3437 0
	blr
	.cfi_endproc
.LFE2936:
	.size	_ZN11idGameLocal14GetAlertEntityEv, .-_ZN11idGameLocal14GetAlertEntityEv
	.align 2
	.globl _ZN11idGameLocal19RadiusPushClipModelERK6idVec3fPK11idClipModel
	.type	_ZN11idGameLocal19RadiusPushClipModelERK6idVec3fPK11idClipModel, @function
_ZN11idGameLocal19RadiusPushClipModelERK6idVec3fPK11idClipModel:
.LFB2942:
	.loc 4 3624 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2942
.LVL1541:
	mflr 0
	stwu 1,-1352(1)
.LCFI255:
	.cfi_def_cfa_offset 1352
	.cfi_register 65, 0
.LVL1542:
.LBB6445:
.LBB6446:
.LBB6447:
.LBB6448:
.LBB6449:
	.loc 1 133 0
	li 9,0
.LBE6449:
.LBE6448:
.LBE6447:
.LBE6446:
.LBE6445:
	.loc 4 3624 0
	stfd 31,1344(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 29,1332(1)
	mr 29,3
	.cfi_offset 29, -20
	stw 30,1336(1)
	mr 30,4
	.cfi_offset 30, -16
	stw 31,1340(1)
	mr 31,5
	.cfi_offset 31, -12
	stw 0,1356(1)
.LBB6521:
.LBB6455:
.LBB6452:
.LBB6451:
.LBB6450:
	.loc 1 133 0
	stw 9,24(1)
.LBE6450:
.LBE6451:
	.loc 1 307 0
	lis 9,_ZTV14idFixedWinding+8@ha
.LBE6452:
.LBE6455:
.LBB6456:
	.loc 4 4268 0
	lwz 0,124(5)
	.cfi_offset 65, 4
.LBE6456:
.LBB6464:
.LBB6453:
	.loc 1 307 0
	la 9,_ZTV14idFixedWinding+8@l(9)
	stw 9,20(1)
	.loc 1 309 0
	addi 9,1,36
.LBE6453:
.LBE6464:
.LBB6465:
.LBB6457:
	.loc 12 235 0
	cmpwi 7,0,-1
.LBE6457:
.LBE6465:
.LBB6466:
.LBB6454:
	.loc 1 309 0
	stw 9,28(1)
	.loc 1 310 0
	li 9,64
	stw 9,32(1)
.LVL1543:
.LBE6454:
.LBE6466:
.LBB6467:
.LBB6458:
	.loc 12 235 0
	beq- 7,.L1070
.LVL1544:
	.loc 12 238 0
	mr 3,0
.LVL1545:
.LEHB47:
	bl _ZN11idClipModel19GetCachedTraceModelEi
.LVL1546:
.L1070:
.LBE6458:
.LBE6467:
.LBB6468:
.LBB6469:
	.loc 18 212 0
	lfs 0,92(31)
.LBE6469:
.LBE6468:
.LBB6476:
.LBB6459:
	.loc 17 431 0
	lis 9,.LC35@ha
.LBE6459:
.LBE6476:
.LBB6477:
.LBB6470:
	.loc 18 212 0
	lfs 12,104(31)
.LBE6470:
.LBE6477:
	.loc 4 3637 0
	addis 29,29,0x1
.LVL1547:
.LBB6478:
.LBB6471:
	.loc 18 212 0
	lfs 10,100(31)
.LBE6471:
.LBE6478:
	.loc 4 3637 0
	addi 6,31,16
.LBB6479:
.LBB6472:
	.loc 18 212 0
	fadds 12,12,0
.LBE6472:
.LBE6479:
.LBB6480:
.LBB6460:
	.loc 17 431 0
	lfs 13,4(30)
	lfs 0,.LC35@l(9)
.LBE6460:
.LBE6480:
.LBB6481:
.LBB6482:
.LBB6483:
.LBB6484:
	.loc 19 278 0
	lis 9,.LC36@ha
.LBE6484:
.LBE6483:
.LBE6482:
.LBE6481:
.LBB6501:
.LBB6473:
	.loc 18 212 0
	lfs 11,88(31)
.LBE6473:
.LBE6501:
	.loc 4 3637 0
	addi 7,1,8
.LBB6502:
.LBB6461:
	.loc 17 431 0
	fmsubs 12,12,0,13
	lfs 9,0(30)
.LBE6461:
.LBE6502:
.LBB6503:
.LBB6474:
	.loc 18 212 0
	fadds 11,10,11
	lfs 13,96(31)
	lfs 10,108(31)
.LBE6474:
.LBE6503:
.LBB6504:
.LBB6495:
.LBB6490:
.LBB6485:
	.loc 19 278 0
	lfs 8,.LC36@l(9)
.LBE6485:
.LBE6490:
.LBE6495:
.LBE6504:
.LBB6505:
.LBB6462:
	.loc 17 431 0
	fmsubs 11,11,0,9
	lfs 9,8(30)
.LBE6462:
.LBE6505:
.LBB6506:
.LBB6475:
	.loc 18 212 0
	fadds 13,10,13
.LBE6475:
.LBE6506:
.LBB6507:
.LBB6496:
	.loc 17 649 0
	fmuls 10,12,12
.LBE6496:
.LBE6507:
.LBB6508:
.LBB6463:
	.loc 17 431 0
	fmsubs 13,13,0,9
.LVL1548:
	.loc 17 649 0
	fmadds 10,11,11,10
	fmadds 10,13,13,10
	stfs 10,1320(1)
.LVL1549:
.LBE6463:
.LBE6508:
.LBB6509:
.LBB6497:
.LBB6491:
.LBB6486:
	.loc 19 275 0
	fmuls 7,10,0
	.loc 19 270 0
	lwz 0,1320(1)
.LVL1550:
	.loc 4 3624 0
	fneg 7,7
	.loc 19 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	or 0,0,9
	.loc 19 277 0
	stw 0,1324(1)
	lfs 0,1324(1)
	.loc 4 4268 0
	lwz 3,4(31)
	.loc 19 277 0
	fmr 9,0
.LVL1551:
.LBE6486:
.LBE6491:
.LBE6497:
.LBE6509:
	.loc 4 3637 0
	lwz 4,-32200(29)
	lwz 9,0(3)
	.loc 4 4268 0
	lwz 5,8(31)
.LBB6510:
.LBB6498:
.LBB6492:
.LBB6487:
	.loc 19 278 0
	fmul 10,9,9
.LVL1552:
.LBE6487:
.LBE6492:
.LBE6498:
.LBE6510:
	.loc 4 3637 0
	lwz 0,132(9)
.LBB6511:
.LBB6512:
	.loc 4 3636 0
	lis 9,.LC16@ha
.LBE6512:
.LBE6511:
	.loc 4 3637 0
	mtctr 0
.LBB6517:
.LBB6499:
.LBB6493:
.LBB6488:
	.loc 19 278 0
	fmadd 10,7,10,8
	fmul 10,9,10
.LVL1553:
	.loc 19 279 0
	fmul 0,10,10
	fmadd 0,7,0,8
.LVL1554:
	fmul 0,10,0
.LVL1555:
.LBE6488:
.LBE6493:
.LBE6499:
.LBE6517:
.LBB6518:
.LBB6515:
	.loc 4 3636 0
	lfs 10,.LC16@l(9)
.LBE6515:
.LBE6518:
.LBB6519:
.LBB6500:
.LBB6494:
.LBB6489:
	.loc 19 280 0
	frsp 0,0
.LVL1556:
.LBE6489:
.LBE6494:
	.loc 17 651 0
	fmuls 11,11,0
.LVL1557:
	.loc 17 652 0
	fmuls 12,12,0
.LVL1558:
.LBE6500:
.LBE6519:
.LBB6520:
.LBB6516:
	.loc 4 3636 0
	fmadds 0,13,0,10
.LVL1559:
	.loc 17 448 0
	fmuls 11,31,11
.LVL1560:
	fmuls 12,31,12
.LVL1561:
	fmuls 31,0,31
.LVL1562:
.LBB6513:
.LBB6514:
	.loc 17 396 0
	stfs 11,8(1)
	.loc 17 397 0
	stfs 12,12(1)
	.loc 17 398 0
	stfs 31,16(1)
.LBE6514:
.LBE6513:
.LBE6516:
.LBE6520:
	.loc 4 3637 0
	bctrl
.LEHE47:
.LVL1563:
.LBE6521:
	.loc 4 3674 0
	lwz 0,1356(1)
	lwz 29,1332(1)
.LVL1564:
	mtlr 0
	lwz 30,1336(1)
.LVL1565:
	lwz 31,1340(1)
.LVL1566:
	lfd 31,1344(1)
.LVL1567:
	addi 1,1,1352
	.cfi_remember_state
.LCFI256:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1568:
.L1074:
.LCFI257:
	.cfi_restore_state
	mr 31,3
.LVL1569:
.LBB6522:
	.loc 4 3673 0
	addi 3,1,20
	bl _ZN14idFixedWindingD1Ev
	mr 3,31
.LEHB48:
	bl _Unwind_Resume
.LEHE48:
.LBE6522:
	.cfi_endproc
.LFE2942:
	.section	.gcc_except_table
.LLSDA2942:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2942-.LLSDACSB2942
.LLSDACSB2942:
	.uleb128 .LEHB47-.LFB2942
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L1074-.LFB2942
	.uleb128 0
	.uleb128 .LEHB48-.LFB2942
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
.LLSDACSE2942:
	.section	".text"
	.size	_ZN11idGameLocal19RadiusPushClipModelERK6idVec3fPK11idClipModel, .-_ZN11idGameLocal19RadiusPushClipModelERK6idVec3fPK11idClipModel
	.align 2
	.globl _ZN11idGameLocal10RadiusPushERK6idVec3ffPK8idEntityS5_fb
	.type	_ZN11idGameLocal10RadiusPushERK6idVec3ffPK8idEntityS5_fb, @function
_ZN11idGameLocal10RadiusPushERK6idVec3ffPK8idEntityS5_fb:
.LFB2938:
	.loc 4 3549 0
	.cfi_startproc
.LVL1570:
	mflr 0
	stwu 1,-16568(1)
.LCFI258:
	.cfi_def_cfa_offset 16568
	.cfi_register 65, 0
	mfcr 12
	stfd 30,16552(1)
	fmr 30,3
	.cfi_offset 62, -16
	.cfi_register 70, 12
	stfd 31,16560(1)
	fmr 31,2
	.cfi_offset 63, -8
	stw 22,16512(1)
	mr 22,3
	.cfi_offset 22, -56
	stw 24,16520(1)
.LBB6523:
	.loc 4 3564 0
	addis 3,3,0x23
.LVL1571:
.LBE6523:
	.loc 4 3549 0
	stw 25,16524(1)
	mr 24,5
	.cfi_offset 25, -44
	.cfi_offset 24, -48
	stw 26,16528(1)
	mr 25,4
.LVL1572:
	stw 29,16540(1)
	mr 26,6
	.cfi_offset 29, -28
	.cfi_offset 26, -40
	stw 31,16548(1)
.LBB6606:
	.loc 4 3564 0
	addi 3,3,17272
.LBE6606:
	.loc 4 3549 0
	stw 0,16572(1)
	mr 31,7
	.cfi_offset 65, 4
	.cfi_offset 31, -20
	stw 15,16484(1)
.LBB6607:
	.loc 4 3564 0
	li 5,-1
.LVL1573:
.LBE6607:
	.loc 4 3549 0
	stw 16,16488(1)
.LBB6608:
	.loc 4 3564 0
	addi 6,1,84
.LVL1574:
.LBE6608:
	.loc 4 3549 0
	stw 17,16492(1)
.LBB6609:
	.loc 4 3564 0
	li 7,4096
.LVL1575:
.LBE6609:
	.loc 4 3549 0
	stw 18,16496(1)
	stw 19,16500(1)
	stw 20,16504(1)
	stw 21,16508(1)
	stw 23,16516(1)
	stw 27,16532(1)
	stw 28,16536(1)
	stw 30,16544(1)
	stw 12,16480(1)
.LBB6610:
.LBB6524:
.LBB6525:
.LBB6526:
	.loc 17 424 0
	lfs 12,0(4)
	.loc 17 425 0
	lfs 13,4(4)
	.loc 17 426 0
	lfs 0,8(4)
.LVL1576:
.LBE6526:
.LBE6525:
.LBE6524:
.LBB6527:
.LBB6528:
	.loc 18 319 0
	fsubs 9,12,1
	fsubs 10,13,1
.LBE6528:
.LBE6527:
	.loc 4 3564 0
	addi 4,1,20
.LVL1577:
.LBB6532:
.LBB6529:
	.loc 18 319 0
	fsubs 11,0,1
	fadds 12,1,12
.LBE6529:
.LBE6532:
.LBB6533:
.LBB6534:
.LBB6535:
	.loc 17 424 0
	stfs 9,20(1)
.LBE6535:
.LBE6534:
.LBE6533:
.LBB6540:
.LBB6530:
	.loc 18 319 0
	fadds 13,1,13
.LBE6530:
.LBE6540:
.LBB6541:
.LBB6538:
.LBB6536:
	.loc 17 425 0
	stfs 10,24(1)
.LBE6536:
.LBE6538:
.LBE6541:
.LBB6542:
.LBB6531:
	.loc 18 319 0
	fadds 0,1,0
.LBE6531:
.LBE6542:
.LBB6543:
.LBB6539:
.LBB6537:
	.loc 17 426 0
	stfs 11,28(1)
.LVL1578:
	.loc 17 424 0
	stfs 12,32(1)
	.loc 17 425 0
	stfs 13,36(1)
	.loc 17 426 0
	stfs 0,40(1)
.LBE6537:
.LBE6539:
.LBE6543:
	.loc 4 3564 0
	.cfi_offset 70, -88
	.cfi_offset 30, -24
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.cfi_offset 23, -52
	.cfi_offset 21, -60
	.cfi_offset 20, -64
	.cfi_offset 19, -68
	.cfi_offset 18, -72
	.cfi_offset 17, -76
	.cfi_offset 16, -80
	.cfi_offset 15, -84
	bl _ZNK6idClip24ClipModelsTouchingBoundsERK8idBoundsiPP11idClipModeli
.LVL1579:
	.loc 4 3566 0
	cmpwi 7,24,0
	.loc 4 3564 0
	mr 29,3
.LVL1580:
	.loc 4 3566 0
	beq- 7,.L1088
.LVL1581:
.LBB6544:
.LBB6545:
	.loc 5 340 0 discriminator 1
	lwz 9,0(24)
	mr 3,24
.LVL1582:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1583:
.LBE6545:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN14idAFAttachment4TypeE@ha
	la 9,_ZN14idAFAttachment4TypeE@l(9)
	lwz 0,56(3)
.LBB6550:
.LBB6546:
.LBB6547:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1098
.LVL1584:
.L1088:
.LBE6547:
.LBE6546:
.LBE6550:
.LBE6544:
	.loc 4 3569 0
	cmpwi 7,26,0
	beq- 7,.L1089
.LVL1585:
.LBB6552:
.LBB6553:
	.loc 5 340 0 discriminator 1
	lwz 9,0(26)
	mr 3,26
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1586:
.LBE6553:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN14idAFAttachment4TypeE@ha
	la 9,_ZN14idAFAttachment4TypeE@l(9)
	lwz 0,56(3)
.LBB6558:
.LBB6554:
.LBB6555:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1099
.LVL1587:
.L1089:
.LBE6555:
.LBE6554:
.LBE6558:
.LBE6552:
	.loc 4 3574 0
	cmpwi 7,29,0
	ble- 7,.L1076
.LBB6560:
	.loc 4 4268 0
	lis 23,_ZN14idAFAttachment4TypeE@ha
.LBE6560:
	.loc 4 3611 0
	cmpwi 4,31,0
	.loc 4 3574 0
	addi 30,1,80
	li 31,0
.LBB6567:
	.loc 4 4268 0
	lis 28,_ZN12idProjectile4TypeE@ha
.LBE6567:
.LBB6572:
	lis 27,_ZN8idPlayer4TypeE@ha
.LBE6572:
.LBB6577:
	la 23,_ZN14idAFAttachment4TypeE@l(23)
.LBE6577:
	.loc 4 3600 0
	lis 21,gameRenderWorld@ha
	.loc 4 3612 0
	addis 18,22,0x1
.LBB6578:
.LBB6579:
	.loc 17 448 0
	li 19,0
.LBE6579:
.LBE6578:
	.loc 4 3608 0
	lis 20,.LC16@ha
	b .L1087
.LVL1588:
.L1080:
	.loc 4 3574 0
	addi 31,31,1
.LVL1589:
	cmpw 7,31,29
	beq- 7,.L1076
.LVL1590:
.L1087:
	.loc 4 3576 0
	lwzu 17,4(30)
.LVL1591:
	.loc 4 3579 0
	lwz 0,128(17)
	cmpwi 7,0,-1
	bne+ 7,.L1080
	.loc 4 4268 0
	lwz 16,4(17)
.LVL1592:
.LBB6589:
.LBB6568:
	.loc 5 340 0
	lwz 9,0(16)
	mr 3,16
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1593:
.LBE6568:
	.loc 4 4268 0
	la 9,_ZN12idProjectile4TypeE@l(28)
	lwz 0,56(3)
.LBB6571:
.LBB6569:
.LBB6570:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1081
	lwz 9,60(9)
	cmpw 7,0,9
	ble- 7,.L1080
.L1081:
.LVL1594:
.LBE6570:
.LBE6569:
.LBE6571:
.LBE6589:
.LBB6590:
.LBB6573:
	.loc 5 340 0
	lwz 9,0(16)
	mr 3,16
.LVL1595:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1596:
.LBE6573:
	.loc 4 4268 0
	la 9,_ZN8idPlayer4TypeE@l(27)
	lwz 0,56(3)
.LBB6576:
.LBB6574:
.LBB6575:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1082
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1082
.LBE6575:
.LBE6574:
.LBE6576:
.LBE6590:
	.loc 4 3591 0
	beq- 4,.L1080
.L1082:
	.loc 4 3596 0
	cmpw 7,26,16
	beq- 7,.L1080
.LVL1597:
.LBB6591:
.LBB6561:
	.loc 5 340 0 discriminator 2
	lwz 9,0(16)
	mr 3,16
.LVL1598:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1599:
.LBB6562:
.LBB6563:
	.loc 5 311 0 discriminator 2
	lwz 9,56(23)
.LBE6563:
.LBE6562:
.LBE6561:
	.loc 4 4268 0 discriminator 2
	lwz 0,56(3)
.LBB6566:
.LBB6565:
.LBB6564:
	.loc 5 311 0 discriminator 2
	cmpw 7,0,9
	blt- 7,.L1083
	.loc 5 311 0 is_stmt 0
	lwz 9,60(23)
	cmpw 7,0,9
	ble- 7,.L1100
.LVL1600:
.L1083:
.LBE6564:
.LBE6565:
.LBE6566:
.LBE6591:
	.loc 4 3600 0 is_stmt 1
	lwz 3,gameRenderWorld@l(21)
.LVL1601:
	addi 15,17,16
	addi 4,1,44
	mr 5,25
	lwz 9,0(3)
	mr 6,15
	lwz 0,132(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	bne- 7,.L1080
	.loc 4 3605 0
	cmpw 7,24,16
	beq- 7,.L1084
.LVL1602:
.LBB6592:
.LBB6593:
	.loc 5 340 0 discriminator 2
	lwz 9,0(16)
	mr 3,16
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1603:
.LBB6594:
.LBB6595:
	.loc 5 311 0 discriminator 2
	lwz 9,56(23)
.LBE6595:
.LBE6594:
.LBE6593:
	.loc 4 4268 0 discriminator 2
	lwz 0,56(3)
.LBB6598:
.LBB6597:
.LBB6596:
	.loc 5 311 0 discriminator 2
	cmpw 7,0,9
	blt- 7,.L1085
	.loc 5 311 0 is_stmt 0
	lwz 9,60(23)
	cmpw 7,0,9
	bgt- 7,.L1085
.LBE6596:
.LBE6597:
.LBE6598:
.LBE6592:
	.loc 4 3605 0 is_stmt 1
	mr 3,16
.LVL1604:
	bl _ZNK14idAFAttachment7GetBodyEv
	cmpw 7,24,3
	beq- 7,.L1084
.L1085:
	.loc 4 3608 0
	lfs 1,.LC16@l(20)
.LVL1605:
.L1094:
	.loc 4 3612 0
	fmuls 1,1,31
.LVL1606:
	.loc 4 3611 0
	beq- 4,.L1086
	.loc 4 4268 0
	lwz 3,4(17)
	.loc 4 3612 0
	mr 6,15
	.loc 4 4268 0
	lwz 5,8(17)
	.loc 4 3612 0
	addi 7,1,8
.LBB6599:
.LBB6584:
	.loc 17 448 0
	stw 19,16472(1)
.LBE6584:
.LBE6599:
	.loc 4 3574 0
	addi 31,31,1
.LBB6600:
.LBB6585:
	.loc 17 448 0
	lfs 13,16472(1)
.LBE6585:
.LBE6600:
	.loc 4 3612 0
	lwz 9,0(3)
.LBB6601:
.LBB6586:
	.loc 17 448 0
	fmuls 0,1,13
.LBE6586:
.LBE6601:
	.loc 4 3612 0
	lwz 4,-32200(18)
.LVL1607:
	lwz 0,132(9)
.LBB6602:
.LBB6587:
.LBB6580:
.LBB6581:
	.loc 17 398 0
	stfs 1,16(1)
	.loc 17 396 0
	stfs 0,8(1)
.LBE6581:
.LBE6580:
.LBE6587:
.LBE6602:
	.loc 4 3612 0
	mtctr 0
.LBB6603:
.LBB6588:
.LBB6583:
.LBB6582:
	.loc 17 397 0
	stfs 0,12(1)
.LBE6582:
.LBE6583:
.LBE6588:
.LBE6603:
	.loc 4 3612 0
	bctrl
.LVL1608:
	.loc 4 3574 0
	cmpw 7,31,29
	bne+ 7,.L1087
.LVL1609:
.L1076:
.LBE6610:
	.loc 4 3617 0
	lwz 0,16572(1)
	lwz 12,16480(1)
	mtlr 0
	lwz 15,16484(1)
	lwz 16,16488(1)
	mtcrf 8,12
	lwz 17,16492(1)
	lwz 18,16496(1)
	lwz 19,16500(1)
	lwz 20,16504(1)
	lwz 21,16508(1)
	lwz 22,16512(1)
.LVL1610:
	lwz 23,16516(1)
	lwz 24,16520(1)
.LVL1611:
	lwz 25,16524(1)
.LVL1612:
	lwz 26,16528(1)
.LVL1613:
	lwz 27,16532(1)
	lwz 28,16536(1)
	lwz 29,16540(1)
.LVL1614:
	lwz 30,16544(1)
	lwz 31,16548(1)
	lfd 30,16552(1)
.LVL1615:
	lfd 31,16560(1)
.LVL1616:
	addi 1,1,16568
	.cfi_remember_state
.LCFI259:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	blr
.LVL1617:
.L1100:
.LCFI260:
	.cfi_restore_state
.LBB6611:
	.loc 4 3596 0
	mr 3,16
.LVL1618:
	bl _ZNK14idAFAttachment7GetBodyEv
	cmpw 7,26,3
	bne+ 7,.L1083
	b .L1080
.LVL1619:
.L1099:
.LBB6604:
.LBB6559:
.LBB6557:
.LBB6556:
	.loc 5 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1089
.LBE6556:
.LBE6557:
.LBE6559:
.LBE6604:
	.loc 4 3570 0 discriminator 4
	mr 3,26
.LVL1620:
	bl _ZNK14idAFAttachment7GetBodyEv
	mr 26,3
.LVL1621:
	b .L1089
.LVL1622:
.L1098:
.LBB6605:
.LBB6551:
.LBB6549:
.LBB6548:
	.loc 5 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1088
.LBE6548:
.LBE6549:
.LBE6551:
.LBE6605:
	.loc 4 3567 0 discriminator 4
	mr 3,24
.LVL1623:
	bl _ZNK14idAFAttachment7GetBodyEv
	mr 24,3
.LVL1624:
	b .L1088
.LVL1625:
.L1086:
	.loc 4 3614 0
	mr 3,22
	mr 4,25
	mr 5,17
	bl _ZN11idGameLocal19RadiusPushClipModelERK6idVec3fPK11idClipModel
	b .L1080
.L1084:
.LVL1626:
	.loc 4 3606 0 discriminator 5
	fmr 1,30
	b .L1094
.LBE6611:
	.cfi_endproc
.LFE2938:
	.size	_ZN11idGameLocal10RadiusPushERK6idVec3ffPK8idEntityS5_fb, .-_ZN11idGameLocal10RadiusPushERK6idVec3ffPK8idEntityS5_fb
	.align 2
	.globl _ZN11idGameLocal12RadiusDamageERK6idVec3P8idEntityS4_S4_S4_PKcf
	.type	_ZN11idGameLocal12RadiusDamageERK6idVec3P8idEntityS4_S4_S4_PKcf, @function
_ZN11idGameLocal12RadiusDamageERK6idVec3P8idEntityS4_S4_S4_PKcf:
.LFB2937:
	.loc 4 3444 0
	.cfi_startproc
.LVL1627:
	stwu 1,-16632(1)
.LCFI261:
	.cfi_def_cfa_offset 16632
	mflr 0
	stw 26,16584(1)
	mr 26,5
	.cfi_offset 26, -48
	.cfi_register 65, 0
	stw 27,16588(1)
.LBB6690:
	.loc 4 3453 0
	li 5,0
.LVL1628:
.LBE6690:
	.loc 4 3444 0
	mr 27,4
	.cfi_offset 27, -44
.LBB6850:
	.loc 4 3453 0
	mr 4,9
.LVL1629:
.LBE6850:
	.loc 4 3444 0
	stfd 31,16624(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 16,16544(1)
	mr 16,9
	.cfi_offset 16, -88
	stw 17,16548(1)
	mr 17,3
	.cfi_offset 17, -84
	stw 18,16552(1)
	mr 18,6
	.cfi_offset 18, -80
	stw 25,16580(1)
	mr 25,7
	.cfi_offset 25, -52
	stw 31,16604(1)
	stw 0,16636(1)
	stfd 29,16608(1)
	stfd 30,16616(1)
	stw 14,16536(1)
	stw 15,16540(1)
	stw 19,16556(1)
	stw 20,16560(1)
	stw 21,16564(1)
	stw 22,16568(1)
	stw 23,16572(1)
	stw 24,16576(1)
	stw 28,16592(1)
	stw 29,16596(1)
	stw 30,16600(1)
	.loc 4 3444 0
	stw 8,16516(1)
.LBB6851:
	.loc 4 3453 0
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.cfi_offset 20, -72
	.cfi_offset 19, -76
	.cfi_offset 15, -92
	.cfi_offset 14, -96
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.cfi_offset 31, -28
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL1630:
	.loc 4 3454 0
	mr. 31,3
	beq- 0,.L1137
	.loc 4 3459 0
	lis 4,.LC112@ha
	lis 5,.LC113@ha
	la 4,.LC112@l(4)
	la 5,.LC113@l(5)
	addi 6,1,16
	bl _ZNK6idDict6GetIntEPKcS1_Ri
.LVL1631:
	.loc 4 3460 0
	lis 5,.LC115@ha
	lis 4,.LC114@ha
	la 5,.LC115@l(5)
	addi 6,1,12
	la 4,.LC114@l(4)
	mr 3,31
	bl _ZNK6idDict6GetIntEPKcS1_Ri
.LVL1632:
	.loc 4 3461 0
	lwz 4,16(1)
	lis 3,.LC116@ha
	mulli 4,4,100
	la 3,.LC116@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	lis 4,.LC117@ha
	mr 5,3
	la 4,.LC117@l(4)
	addi 6,1,8
	mr 3,31
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	.loc 4 3462 0
	lis 4,.LC118@ha
	lis 5,.LC119@ha
	la 4,.LC118@l(4)
	la 5,.LC119@l(5)
	addi 6,1,24
	mr 3,31
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 3463 0
	lis 4,.LC120@ha
	lis 5,.LC59@ha
	mr 3,31
	la 4,.LC120@l(4)
	la 5,.LC59@l(5)
	addi 6,1,20
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
.LVL1633:
	.loc 4 3465 0
	lwz 0,12(1)
	cmpwi 7,0,0
	ble- 7,.L1138
.L1104:
.LVL1634:
	.loc 4 3469 0
	xoris 0,0,0x8000
	lis 23,.LC1@ha
	stw 0,16476(1)
	lis 0,0x4330
	stw 0,16472(1)
	.loc 4 3472 0
	addis 3,17,0x23
	.loc 4 3469 0
	lfs 0,.LC1@l(23)
	.loc 4 3472 0
	addi 3,3,17272
	.loc 4 3469 0
	lfd 13,16472(1)
	.loc 4 3472 0
	addi 4,1,64
.LBB6691:
.LBB6692:
.LBB6693:
	.loc 17 424 0
	lfs 11,0(27)
.LBE6693:
.LBE6692:
.LBE6691:
	.loc 4 3472 0
	li 5,-1
	.loc 4 3469 0
	fsub 0,13,0
.LBB6696:
.LBB6695:
.LBB6694:
	.loc 17 425 0
	lfs 12,4(27)
	.loc 17 426 0
	lfs 13,8(27)
.LVL1635:
.LBE6694:
.LBE6695:
.LBE6696:
	.loc 4 3472 0
	addi 6,1,88
	li 7,4096
	.loc 4 3469 0
	frsp 0,0
.LVL1636:
.LBB6697:
.LBB6698:
	.loc 18 319 0
	fsubs 8,11,0
	fsubs 9,12,0
	fsubs 10,13,0
	fadds 11,0,11
.LBE6698:
.LBE6697:
.LBB6701:
.LBB6702:
.LBB6703:
	.loc 17 424 0
	stfs 8,64(1)
.LBE6703:
.LBE6702:
.LBE6701:
.LBB6708:
.LBB6699:
	.loc 18 319 0
	fadds 12,0,12
.LBE6699:
.LBE6708:
.LBB6709:
.LBB6706:
.LBB6704:
	.loc 17 425 0
	stfs 9,68(1)
.LBE6704:
.LBE6706:
.LBE6709:
.LBB6710:
.LBB6700:
	.loc 18 319 0
	fadds 0,0,13
.LVL1637:
.LBE6700:
.LBE6710:
.LBB6711:
.LBB6707:
.LBB6705:
	.loc 17 426 0
	stfs 10,72(1)
.LVL1638:
	.loc 17 424 0
	stfs 11,76(1)
	.loc 17 425 0
	stfs 12,80(1)
	.loc 17 426 0
	stfs 0,84(1)
.LBE6705:
.LBE6707:
.LBE6711:
	.loc 4 3472 0
	bl _ZNK6idClip22EntitiesTouchingBoundsERK8idBoundsiPP8idEntityi
.LVL1639:
	.loc 4 3474 0
	cmpwi 7,26,0
	.loc 4 3472 0
	mr 29,3
.LVL1640:
	.loc 4 3474 0
	beq- 7,.L1123
.LVL1641:
.LBB6712:
.LBB6713:
	.loc 5 340 0 discriminator 1
	lwz 9,0(26)
	mr 3,26
.LVL1642:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1643:
.LBE6713:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN14idAFAttachment4TypeE@ha
	la 9,_ZN14idAFAttachment4TypeE@l(9)
	lwz 0,56(3)
.LBB6718:
.LBB6714:
.LBB6715:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1139
.LVL1644:
.L1123:
.LBE6715:
.LBE6714:
.LBE6718:
.LBE6712:
	.loc 4 3477 0
	cmpwi 7,18,0
	beq- 7,.L1124
.LVL1645:
.LBB6720:
.LBB6721:
	.loc 5 340 0 discriminator 1
	lwz 9,0(18)
	mr 3,18
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1646:
.LBE6721:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN14idAFAttachment4TypeE@ha
	la 9,_ZN14idAFAttachment4TypeE@l(9)
	lwz 0,56(3)
.LBB6726:
.LBB6722:
.LBB6723:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1140
.LVL1647:
.L1124:
.LBE6723:
.LBE6722:
.LBE6726:
.LBE6720:
	.loc 4 3480 0
	cmpwi 7,25,0
	beq- 7,.L1125
.LVL1648:
.LBB6728:
.LBB6729:
	.loc 5 340 0 discriminator 1
	lwz 9,0(25)
	mr 3,25
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1649:
.LBE6729:
	.loc 4 4268 0 discriminator 1
	lis 9,_ZN14idAFAttachment4TypeE@ha
	la 9,_ZN14idAFAttachment4TypeE@l(9)
	lwz 0,56(3)
.LBB6734:
.LBB6730:
.LBB6731:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1141
.LVL1650:
.L1125:
.LBE6731:
.LBE6730:
.LBE6734:
.LBE6728:
	.loc 4 3485 0
	cmpwi 7,29,0
	ble- 7,.L1108
.LBB6736:
	.loc 4 4268 0
	lis 28,_ZN14idAFAttachment4TypeE@ha
.LBE6736:
.LBB6743:
.LBB6744:
.LBB6745:
.LBB6746:
.LBB6747:
.LBB6748:
	.loc 19 276 0
	lis 20,_ZN6idMath5iSqrtE@ha
.LBE6748:
.LBE6747:
.LBE6746:
.LBE6745:
.LBE6744:
.LBE6743:
	.loc 4 3485 0
	addi 30,1,84
	li 31,0
.LVL1651:
.LBB6783:
	.loc 4 4268 0
	la 28,_ZN14idAFAttachment4TypeE@l(28)
.LBE6783:
	.loc 4 3502 0
	addis 24,17,0x25
	.loc 4 3513 0
	li 22,0
.LBB6784:
.LBB6775:
.LBB6769:
.LBB6763:
.LBB6756:
.LBB6749:
	.loc 19 275 0
	lis 19,.LC35@ha
	.loc 19 276 0
	la 20,_ZN6idMath5iSqrtE@l(20)
	.loc 19 278 0
	lis 21,.LC36@ha
.LBE6749:
.LBE6756:
.LBE6763:
.LBE6769:
.LBE6775:
.LBE6784:
	.loc 4 3526 0
	lis 14,.LC121@ha
.LBB6785:
	.loc 4 4268 0
	lis 15,_ZN8idPlayer4TypeE@ha
.LVL1652:
.L1122:
.LBE6785:
	.loc 4 3486 0
	lwzu 9,4(30)
.LVL1653:
	.loc 4 3489 0
	lwz 0,192(9)
	andis. 10,0,8192
	beq- 0,.L1109
	.loc 4 3493 0
	cmpw 7,9,26
	beq- 7,.L1109
.LVL1654:
.LBB6790:
.LBB6737:
	.loc 5 340 0 discriminator 2
	lwz 11,0(9)
	mr 3,9
	lwz 0,0(11)
	stw 9,16524(1)
	mtctr 0
	bctrl
.LVL1655:
.LBB6738:
.LBB6739:
	.loc 5 311 0 discriminator 2
	lwz 11,56(28)
.LBE6739:
.LBE6738:
.LBE6737:
	.loc 4 4268 0 discriminator 2
	lwz 0,56(3)
.LBB6742:
.LBB6741:
.LBB6740:
	.loc 5 311 0 discriminator 2
	lwz 9,16524(1)
	cmpw 7,0,11
	blt- 7,.L1111
	.loc 5 311 0 is_stmt 0
	lwz 11,60(28)
	cmpw 7,0,11
	bgt- 7,.L1111
.LBE6740:
.LBE6741:
.LBE6742:
.LBE6790:
	.loc 4 3493 0 is_stmt 1
	mr 3,9
.LVL1656:
	bl _ZNK14idAFAttachment7GetBodyEv
	lwz 9,16524(1)
	cmpw 7,26,3
	beq- 7,.L1109
.L1111:
	.loc 4 3497 0
	cmpw 7,9,25
	beq- 7,.L1109
.LVL1657:
.LBB6791:
.LBB6792:
	.loc 5 340 0 discriminator 2
	lwz 11,0(9)
	mr 3,9
	lwz 0,0(11)
	stw 9,16524(1)
	mtctr 0
	bctrl
.LVL1658:
.LBB6793:
.LBB6794:
	.loc 5 311 0 discriminator 2
	lwz 11,56(28)
.LBE6794:
.LBE6793:
.LBE6792:
	.loc 4 4268 0 discriminator 2
	lwz 0,56(3)
.LBB6797:
.LBB6796:
.LBB6795:
	.loc 5 311 0 discriminator 2
	lwz 9,16524(1)
	cmpw 7,0,11
	blt- 7,.L1112
	.loc 5 311 0 is_stmt 0
	lwz 11,60(28)
	cmpw 7,0,11
	bgt- 7,.L1112
.LBE6795:
.LBE6796:
.LBE6797:
.LBE6791:
	.loc 4 3497 0 is_stmt 1
	mr 3,9
.LVL1659:
	bl _ZNK14idAFAttachment7GetBodyEv
	lwz 9,16524(1)
	cmpw 7,25,3
	beq- 7,.L1109
.L1112:
	.loc 4 3502 0
	lbz 0,2016(24)
	cmpwi 7,0,0
	beq- 7,.L1113
	.loc 4 3502 0 is_stmt 0 discriminator 1
	lwz 0,4(9)
	cmpwi 7,0,3
	ble- 7,.L1142
.L1113:
.LVL1660:
	.loc 4 3485 0 is_stmt 1
	li 11,0
.LVL1661:
.L1119:
	.loc 4 3508 0
	mr 3,9
.LBB6798:
.LBB6799:
	.loc 17 402 0
	lfsx 30,27,11
.LBE6799:
.LBE6798:
	.loc 4 3508 0
	stw 9,16524(1)
	stw 11,16520(1)
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 10,0(3)
	li 4,-1
.LBB6802:
.LBB6800:
	.loc 17 402 0
	lwz 11,16520(1)
.LBE6800:
.LBE6802:
	.loc 4 3508 0
	lwz 0,60(10)
.LBB6803:
.LBB6801:
	.loc 17 402 0
	add 10,27,11
	stw 10,16512(1)
.LBE6801:
.LBE6803:
	.loc 4 3508 0
	mtctr 0
	bctrl
.LVL1662:
	lwz 11,16520(1)
	.loc 4 3510 0
	lwz 9,16524(1)
	.loc 4 3508 0
	lfsx 0,3,11
	.loc 4 3510 0
	mr 3,9
.LVL1663:
	.loc 4 3508 0
	fcmpu 7,30,0
	bnl- 7,.L1134
.LVL1664:
	.loc 4 3509 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 10,0(3)
	lwz 0,60(10)
	mtctr 0
	bctrl
.LVL1665:
	lwz 11,16520(1)
	addi 10,1,52
	lfsx 13,3,11
	lfsx 0,27,11
	fsubs 0,13,0
	stfsx 0,10,11
	lwz 9,16524(1)
.LVL1666:
.L1116:
	.loc 4 3507 0
	cmpwi 7,11,8
	addi 11,11,4
	bne+ 7,.L1119
.LVL1667:
.LBB6804:
.LBB6776:
	.loc 17 632 0
	lfs 0,56(1)
.LBE6776:
.LBE6804:
	.loc 4 3518 0
	lis 0,0x4330
.LBB6805:
.LBB6777:
	.loc 17 632 0
	lfs 13,52(1)
	fmuls 12,0,0
	lfs 0,60(1)
.LBB6770:
.LBB6764:
.LBB6757:
.LBB6750:
	.loc 19 275 0
	lfs 11,.LC35@l(19)
.LBE6750:
.LBE6757:
.LBE6764:
.LBE6770:
.LBE6777:
.LBE6805:
	.loc 4 3518 0
	lwz 10,12(1)
.LVL1668:
.LBB6806:
.LBB6778:
	.loc 17 632 0
	fmadds 13,13,13,12
.LBB6771:
.LBB6765:
.LBB6758:
.LBB6751:
	.loc 19 278 0
	lfs 12,.LC36@l(21)
.LBE6751:
.LBE6758:
.LBE6765:
.LBE6771:
.LBE6778:
.LBE6806:
	.loc 4 3518 0
	xoris 10,10,0x8000
	stw 0,16480(1)
	stw 10,16484(1)
.LBB6807:
.LBB6779:
	.loc 17 632 0
	fmadds 13,0,0,13
.LBE6779:
.LBE6807:
	.loc 4 3518 0
	lfs 29,.LC1@l(23)
	lfd 10,16480(1)
.LBB6808:
.LBB6780:
	.loc 17 632 0
	stfs 13,16512(1)
.LVL1669:
.LBB6772:
.LBB6766:
.LBB6759:
.LBB6752:
	.loc 19 275 0
	fmuls 11,13,11
.LBE6752:
.LBE6759:
.LBE6766:
.LBE6772:
.LBE6780:
.LBE6808:
	.loc 4 3518 0
	fsub 10,10,29
.LBB6809:
.LBB6781:
.LBB6773:
.LBB6767:
.LBB6760:
.LBB6753:
	.loc 19 270 0
	lwz 11,16512(1)
.LVL1670:
	.loc 4 3444 0
	fneg 11,11
	.loc 19 276 0
	rlwinm 8,11,19,21,29
	rlwinm 7,11,9,24,31
	subfic 11,7,380
	lwzx 8,20,8
	rlwinm 11,11,22,0,8
	or 11,11,8
	.loc 19 277 0
	stw 11,16528(1)
	lfs 0,16528(1)
	fmr 13,0
.LVL1671:
	.loc 19 278 0
	fmul 0,13,13
.LVL1672:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL1673:
.LBE6753:
.LBE6760:
.LBE6767:
.LBE6773:
.LBE6781:
.LBE6809:
	.loc 4 3518 0
	frsp 13,10
.LBB6810:
.LBB6782:
.LBB6774:
.LBB6768:
.LBB6761:
.LBB6754:
	.loc 19 279 0
	fmul 30,0,0
	fmadd 30,11,30,12
.LVL1674:
	fmul 30,0,30
.LVL1675:
.LBE6754:
.LBE6761:
	.loc 19 303 0
	lfs 0,16512(1)
.LVL1676:
.LBB6762:
.LBB6755:
	.loc 19 280 0
	frsp 30,30
.LVL1677:
.LBE6755:
.LBE6762:
	.loc 19 303 0
	fmuls 30,0,30
.LBE6768:
.LBE6774:
.LBE6782:
.LBE6810:
	.loc 4 3518 0
	fcmpu 7,13,30
	cror 30,28,30
	bne- 7,.L1143
.LVL1678:
.L1109:
	.loc 4 3485 0
	addi 31,31,1
.LVL1679:
	cmpw 7,31,29
	bne+ 7,.L1122
.LVL1680:
.L1108:
	.loc 4 3539 0
	lwz 0,8(1)
	cmpwi 7,0,0
	beq+ 7,.L1101
	.loc 4 3540 0
	lis 9,0x4330
	xoris 0,0,0x8000
	stw 0,16508(1)
	mr 3,17
	stw 9,16504(1)
	mr 4,27
	lwz 0,12(1)
	mr 5,18
	lfs 0,.LC1@l(23)
	li 7,0
	xoris 0,0,0x8000
	lfd 2,16504(1)
	stw 0,16500(1)
	stw 9,16496(1)
	fsub 2,2,0
.LVL1681:
	lfs 3,20(1)
	lfd 13,16496(1)
	frsp 2,2
	lwz 6,16516(1)
	fsub 0,13,0
	fmuls 2,2,31
	frsp 1,0
	bl _ZN11idGameLocal10RadiusPushERK6idVec3ffPK8idEntityS5_fb
.LVL1682:
.L1101:
.LBE6851:
	.loc 4 3542 0
	lwz 0,16636(1)
	lwz 14,16536(1)
	mtlr 0
	lwz 15,16540(1)
	lwz 16,16544(1)
.LVL1683:
	lwz 17,16548(1)
.LVL1684:
	lwz 18,16552(1)
.LVL1685:
	lwz 19,16556(1)
	lwz 20,16560(1)
	lwz 21,16564(1)
	lwz 22,16568(1)
	lwz 23,16572(1)
	lwz 24,16576(1)
	lwz 25,16580(1)
.LVL1686:
	lwz 26,16584(1)
.LVL1687:
	lwz 27,16588(1)
.LVL1688:
	lwz 28,16592(1)
	lwz 29,16596(1)
	lwz 30,16600(1)
	lwz 31,16604(1)
	lfd 29,16608(1)
	lfd 30,16616(1)
	lfd 31,16624(1)
.LVL1689:
	addi 1,1,16632
	.cfi_remember_state
.LCFI262:
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
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL1690:
.L1142:
.LCFI263:
	.cfi_restore_state
.LBB6852:
.LBB6811:
.LBB6786:
	.loc 5 340 0 discriminator 3
	lwz 11,0(9)
	mr 3,9
	lwz 0,0(11)
	stw 9,16524(1)
	mtctr 0
	bctrl
.LVL1691:
.LBE6786:
	.loc 4 4268 0 discriminator 3
	la 11,_ZN8idPlayer4TypeE@l(15)
	lwz 0,56(3)
.LBB6789:
.LBB6787:
.LBB6788:
	.loc 5 311 0 discriminator 3
	lwz 10,56(11)
	lwz 9,16524(1)
	cmpw 7,0,10
	blt- 7,.L1113
	.loc 5 311 0 is_stmt 0
	lwz 11,60(11)
	cmpw 7,0,11
	bgt- 7,.L1113
.LBE6788:
.LBE6787:
.LBE6789:
.LBE6811:
	.loc 4 3502 0 is_stmt 1
	lwz 0,188(9)
	cmpwi 7,0,0
	bge+ 7,.L1113
	b .L1109
.LVL1692:
.L1134:
.LBB6812:
.LBB6813:
	.loc 17 402 0
	lfsx 30,27,11
.LBE6813:
.LBE6812:
	.loc 4 3510 0
	stw 9,16524(1)
	stw 11,16520(1)
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 10,0(3)
	li 4,-1
	lwz 0,60(10)
	mtctr 0
	bctrl
.LVL1693:
.LBB6814:
.LBB6815:
	.loc 17 402 0
	lwz 11,16520(1)
.LBE6815:
.LBE6814:
	.loc 4 3510 0
	lwz 9,16524(1)
.LBB6817:
.LBB6816:
	.loc 17 402 0
	add 3,3,11
.LVL1694:
.LBE6816:
.LBE6817:
	.loc 4 3510 0
	lfs 0,12(3)
	fcmpu 7,30,0
	bgt- 7,.L1144
.LVL1695:
	.loc 4 3513 0
	addi 10,1,52
.LVL1696:
	stwx 22,10,11
	b .L1116
.LVL1697:
.L1144:
.LBB6818:
.LBB6819:
	.loc 17 402 0
	lwz 10,16512(1)
.LBE6819:
.LBE6818:
	.loc 4 3511 0
	mr 3,9
.LBB6821:
.LBB6820:
	.loc 17 402 0
	lfs 30,0(10)
.LBE6820:
.LBE6821:
	.loc 4 3511 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 10,0(3)
	li 4,-1
	lwz 0,60(10)
	mtctr 0
	bctrl
.LVL1698:
.LBB6822:
.LBB6823:
	.loc 17 402 0
	lwz 11,16520(1)
.LBE6823:
.LBE6822:
	.loc 4 3511 0
	addi 10,1,52
.LVL1699:
.LBB6825:
.LBB6824:
	.loc 17 402 0
	add 3,3,11
.LVL1700:
.LBE6824:
.LBE6825:
	.loc 4 3511 0
	lfs 0,12(3)
	fsubs 0,30,0
	stfsx 0,10,11
	lwz 9,16524(1)
	b .L1116
.LVL1701:
.L1143:
	.loc 4 3522 0
	lwz 11,0(9)
	mr 3,9
	mr 4,27
	addi 5,1,40
	lwz 11,160(11)
	stw 9,16524(1)
	stw 0,16520(1)
	mtctr 11
	bctrl
.LVL1702:
	lwz 9,16524(1)
	cmpwi 7,3,0
	beq+ 7,.L1109
	.loc 4 3525 0
	mr 3,9
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 11,0(3)
	lwz 11,132(11)
	mtctr 11
	bctrl
.LVL1703:
	.loc 4 3529 0
	lwz 11,12(1)
	lwz 0,16520(1)
	lis 10,.LC16@ha
	xoris 11,11,0x8000
.LBB6826:
.LBB6827:
	.loc 17 431 0
	lfs 9,0(3)
	lfs 8,4(3)
	lfs 10,8(3)
.LBE6827:
.LBE6826:
	.loc 4 3529 0
	stw 11,16492(1)
	stw 0,16488(1)
	.loc 4 3530 0
	lwz 9,16524(1)
	.loc 4 3529 0
	lfd 7,16488(1)
.LBB6832:
.LBB6828:
	.loc 17 431 0
	lfs 0,8(27)
.LBE6828:
.LBE6832:
	.loc 4 3530 0
	cmpw 7,9,18
	.loc 4 3529 0
	fsub 7,7,29
.LBB6833:
.LBB6829:
	.loc 17 431 0
	lfs 13,4(27)
	fsubs 10,10,0
.LVL1704:
	lfs 12,0(27)
.LBE6829:
.LBE6833:
	.loc 4 3526 0
	lfs 0,.LC121@l(14)
.LBB6834:
.LBB6830:
	.loc 17 431 0
	fsubs 13,8,13
.LVL1705:
.LBE6830:
.LBE6834:
	.loc 4 3529 0
	frsp 7,7
	lfs 11,.LC16@l(10)
.LBB6835:
.LBB6831:
	.loc 17 431 0
	fsubs 12,9,12
.LBE6831:
.LBE6835:
	.loc 4 3526 0
	fadds 0,10,0
.LBB6836:
.LBB6837:
	.loc 17 425 0
	stfs 13,32(1)
.LVL1706:
.LBE6837:
.LBE6836:
	.loc 4 3529 0
	fdivs 30,30,7
.LBB6839:
.LBB6838:
	.loc 17 424 0
	stfs 12,28(1)
.LBE6838:
.LBE6839:
	.loc 4 3526 0
	stfs 0,36(1)
	.loc 4 3529 0
	fsubs 30,11,30
	fmuls 30,30,31
.LVL1707:
	.loc 4 3530 0
	beq- 7,.L1120
.LVL1708:
.LBB6840:
.LBB6841:
	.loc 5 340 0 discriminator 2
	lwz 11,0(9)
	mr 3,9
.LVL1709:
	lwz 0,0(11)
	mtctr 0
	bctrl
.LVL1710:
.LBB6842:
.LBB6843:
	.loc 5 311 0 discriminator 2
	lwz 11,56(28)
.LBE6843:
.LBE6842:
.LBE6841:
	.loc 4 4268 0 discriminator 2
	lwz 0,56(3)
.LBB6846:
.LBB6845:
.LBB6844:
	.loc 5 311 0 discriminator 2
	lwz 9,16524(1)
	cmpw 7,0,11
	blt- 7,.L1129
	.loc 5 311 0 is_stmt 0
	lwz 11,60(28)
	cmpw 7,0,11
	bgt- 7,.L1129
.LBE6844:
.LBE6845:
.LBE6846:
.LBE6840:
	.loc 4 3530 0 is_stmt 1
	mr 3,9
.LVL1711:
	bl _ZNK14idAFAttachment7GetBodyEv
	lwz 9,16524(1)
	cmpw 7,18,3
	beq- 7,.L1120
.LVL1712:
.L1129:
	.loc 4 3534 0
	lwz 11,0(9)
	mr 3,9
	mr 4,26
	mr 5,18
	lwz 0,164(11)
	addi 6,1,28
	mr 7,16
	fmr 1,30
	li 8,-1
	mtctr 0
	bctrl
	b .L1109
.LVL1713:
.L1141:
.LBB6847:
.LBB6735:
.LBB6733:
.LBB6732:
	.loc 5 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1125
.LBE6732:
.LBE6733:
.LBE6735:
.LBE6847:
	.loc 4 3481 0 discriminator 4
	mr 3,25
.LVL1714:
	bl _ZNK14idAFAttachment7GetBodyEv
	mr 25,3
.LVL1715:
	b .L1125
.LVL1716:
.L1140:
.LBB6848:
.LBB6727:
.LBB6725:
.LBB6724:
	.loc 5 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1124
.LBE6724:
.LBE6725:
.LBE6727:
.LBE6848:
	.loc 4 3478 0 discriminator 4
	mr 3,18
.LVL1717:
	bl _ZNK14idAFAttachment7GetBodyEv
	mr 18,3
.LVL1718:
	b .L1124
.LVL1719:
.L1139:
.LBB6849:
.LBB6719:
.LBB6717:
.LBB6716:
	.loc 5 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1123
.LBE6716:
.LBE6717:
.LBE6719:
.LBE6849:
	.loc 4 3475 0 discriminator 4
	mr 3,26
.LVL1720:
	bl _ZNK14idAFAttachment7GetBodyEv
	mr 26,3
.LVL1721:
	b .L1123
.LVL1722:
.L1138:
	.loc 4 3466 0
	li 0,1
	stw 0,12(1)
	b .L1104
.LVL1723:
.L1137:
	.loc 4 3455 0
	lis 4,.LC111@ha
	mr 3,17
	la 4,.LC111@l(4)
	mr 5,16
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	.loc 4 3456 0
	b .L1101
.LVL1724:
.L1120:
	.loc 4 3531 0 discriminator 5
	lfs 0,24(1)
	fmuls 30,30,0
.LVL1725:
	b .L1129
.LBE6852:
	.cfi_endproc
.LFE2937:
	.size	_ZN11idGameLocal12RadiusDamageERK6idVec3P8idEntityS4_S4_S4_PKcf, .-_ZN11idGameLocal12RadiusDamageERK6idVec3P8idEntityS4_S4_S4_PKcf
	.align 2
	.globl _ZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcf
	.type	_ZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcf, @function
_ZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcf:
.LFB2943:
	.loc 4 3681 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2943
.LVL1726:
	stwu 1,-1504(1)
.LCFI264:
	.cfi_def_cfa_offset 1504
.LVL1727:
	mflr 0
.LBB7028:
.LBB7029:
.LBB7030:
	.loc 1 307 0
	lis 9,_ZTV14idFixedWinding+8@ha
.LBE7030:
.LBE7029:
.LBE7028:
	.loc 4 3681 0
	stw 31,1364(1)
.LBB7393:
	.loc 4 3692 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -140
	.cfi_register 65, 0
.LBE7393:
	.loc 4 3681 0
	stw 0,1508(1)
.LBB7394:
	.loc 4 3692 0
	la 31,.LANCHOR0@l(31)
.LBB7041:
.LBB7035:
.LBB7031:
.LBB7032:
	.loc 1 133 0
	li 0,0
	.cfi_offset 65, 4
.LBE7032:
.LBE7031:
.LBE7035:
.LBE7041:
	.loc 4 3692 0
	addis 31,31,0x27
.LBB7042:
.LBB7036:
.LBB7034:
.LBB7033:
	.loc 1 133 0
	stw 0,24(1)
.LBE7033:
.LBE7034:
	.loc 1 307 0
	la 0,_ZTV14idFixedWinding+8@l(9)
.LBE7036:
.LBE7042:
.LBE7394:
	.loc 4 3681 0
	stw 27,1348(1)
.LBB7395:
	.loc 4 3692 0
	addi 27,31,6512
	.cfi_offset 27, -156
.LBB7043:
.LBB7037:
	.loc 1 307 0
	stw 0,20(1)
	.loc 1 309 0
	addi 0,1,36
.LBE7037:
.LBE7043:
.LBE7395:
	.loc 4 3681 0
	stw 25,1340(1)
	mr 25,3
	.cfi_offset 25, -164
.LBB7396:
.LBB7044:
.LBB7038:
	.loc 1 309 0
	stw 0,28(1)
.LBE7038:
.LBE7044:
	.loc 4 3692 0
	mr 3,27
.LVL1728:
.LBB7045:
.LBB7039:
	.loc 1 310 0
	li 0,64
.LBE7039:
.LBE7045:
.LBE7396:
	.loc 4 3681 0
	stfd 26,1456(1)
	stfd 28,1472(1)
	fmr 26,1
	.cfi_offset 60, -32
	.cfi_offset 58, -48
	stfd 29,1480(1)
	fmr 28,3
	stw 24,1336(1)
	fmr 29,2
	.cfi_offset 24, -168
	.cfi_offset 61, -24
	stw 26,1344(1)
	mr 24,7
	stw 28,1352(1)
	mr 26,6
	.cfi_offset 28, -152
	.cfi_offset 26, -160
	stw 29,1356(1)
	mr 28,5
	stfd 15,1368(1)
	mr 29,4
	.cfi_offset 47, -136
	.cfi_offset 29, -148
	stfd 16,1376(1)
	stfd 17,1384(1)
	stfd 18,1392(1)
	stfd 19,1400(1)
	stfd 20,1408(1)
	stfd 21,1416(1)
	stfd 22,1424(1)
	stfd 23,1432(1)
	stfd 24,1440(1)
	stfd 25,1448(1)
	stfd 27,1464(1)
	stfd 30,1488(1)
	stfd 31,1496(1)
	stw 30,1360(1)
.LBB7397:
.LBB7046:
.LBB7040:
	.loc 1 310 0
	stw 0,32(1)
.LBE7040:
.LBE7046:
	.loc 4 3692 0
	.cfi_offset 30, -144
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 59, -40
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	.cfi_offset 52, -96
	.cfi_offset 51, -104
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	bl __cxa_guard_acquire
.LVL1729:
	cmpwi 7,3,0
	bne- 7,.L1187
.L1146:
.LBB7047:
.LBB7048:
	.loc 4 3694 0
	lis 9,g_decals+44@ha
	.loc 7 142 0
	lwz 9,g_decals+44@l(9)
.LBE7048:
.LBE7047:
	.loc 4 3694 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L1145
	.loc 4 3699 0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	fcmpu 7,28,0
	bne- 7,.L1188
.LVL1730:
.LBB7049:
.LBB7050:
.LBB7051:
.LBB7052:
	.loc 21 71 0 discriminator 2
	addis 9,25,0x1
	lis 11,0x1
	lwz 10,-32064(9)
	ori 11,11,3533
.LBE7052:
.LBE7051:
	.loc 21 83 0 discriminator 2
	lis 0,0x4330
.LBB7056:
.LBB7053:
	.loc 21 71 0 discriminator 2
	mullw 11,11,10
.LBE7053:
.LBE7056:
	.loc 21 83 0 discriminator 2
	stw 0,1320(1)
.LBB7057:
.LBB7054:
	.loc 21 71 0 discriminator 2
	addi 0,11,1
	.loc 21 72 0 discriminator 2
	rlwinm 11,0,0,17,31
.LBE7054:
.LBE7057:
	.loc 21 83 0 discriminator 2
	xoris 11,11,0x8000
	stw 11,1324(1)
	lis 11,.LC1@ha
	lfs 0,.LC1@l(11)
.LBE7050:
.LBE7049:
	.loc 4 3699 0 discriminator 2
	lis 11,_ZN6idMath6TWO_PIE@ha
.LBB7061:
.LBB7059:
	.loc 21 83 0 discriminator 2
	lfd 28,1320(1)
.LVL1731:
.LBB7058:
.LBB7055:
	.loc 21 71 0 discriminator 2
	stw 0,-32064(9)
.LBE7055:
.LBE7058:
	.loc 21 83 0 discriminator 2
	lis 9,.LC123@ha
	fsub 28,28,0
	lfs 0,.LC123@l(9)
.LBE7059:
.LBE7061:
	.loc 4 3699 0 discriminator 2
	lfs 31,_ZN6idMath6TWO_PIE@l(11)
.LBB7062:
.LBB7060:
	.loc 21 83 0 discriminator 2
	frsp 28,28
	fmuls 28,28,0
.LBE7060:
.LBE7062:
	.loc 4 3699 0 discriminator 2
	fmuls 28,31,28
.LVL1732:
.L1149:
.LBB7063:
.LBB7064:
	.loc 19 409 0 discriminator 3
	lis 11,.LC2@ha
	lfs 0,.LC2@l(11)
	fcmpu 7,28,0
	blt- 7,.L1150
	.loc 19 409 0 is_stmt 0
	fcmpu 7,28,31
	cror 30,29,30
	bne- 7,.L1151
.L1150:
	.loc 19 410 0 is_stmt 1
	fdivs 1,28,31
	addi 27,1,20
.LEHB49:
	bl floorf
	.loc 4 3681 0
	fneg 1,1
	.loc 19 410 0
	fmadds 28,1,31,28
.LVL1733:
.L1151:
	.loc 19 413 0
	lis 9,_ZN6idMath2PIE@ha
	lfs 0,_ZN6idMath2PIE@l(9)
	.loc 19 414 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 13,_ZN6idMath7HALF_PIE@l(9)
	.loc 19 413 0
	fcmpu 7,0,28
	bng- 7,.L1184
	.loc 19 414 0
	fcmpu 7,28,13
	bng- 7,.L1185
.L1186:
	.loc 19 426 0
	lis 9,.LC122@ha
	.loc 19 425 0
	fsubs 28,0,28
.LVL1734:
	.loc 19 426 0
	lfs 21,.LC122@l(9)
	lis 30,.LC16@ha
.LVL1735:
.L1155:
.LBE7064:
.LBE7063:
.LBB7081:
.LBB7082:
	.loc 17 425 0
	lfs 31,4(28)
.LBE7082:
.LBE7081:
.LBB7086:
.LBB7087:
.LBB7088:
.LBB7089:
	.loc 19 276 0
	lis 9,_ZN6idMath5iSqrtE@ha
.LBE7089:
.LBE7088:
.LBE7087:
.LBE7086:
.LBB7118:
.LBB7083:
	.loc 17 424 0
	lfs 30,0(28)
.LBE7083:
.LBE7118:
.LBB7119:
.LBB7106:
.LBB7098:
.LBB7090:
	.loc 19 276 0
	la 9,_ZN6idMath5iSqrtE@l(9)
.LBE7090:
.LBE7098:
	.loc 17 649 0
	fmuls 0,31,31
.LBE7106:
.LBE7119:
.LBB7120:
.LBB7084:
	.loc 17 426 0
	lfs 11,8(28)
.LBE7084:
.LBE7120:
.LBB7121:
.LBB7065:
	.loc 19 440 0
	lis 28,.LC35@ha
.LVL1736:
	.loc 19 439 0
	lfs 20,.LC16@l(30)
	.loc 19 440 0
	lfs 9,.LC35@l(28)
.LBE7065:
.LBE7121:
.LBB7122:
.LBB7085:
	.loc 17 649 0
	fmadds 0,30,30,0
	fmadds 0,11,11,0
	stfs 0,1328(1)
.LBE7085:
.LBE7122:
.LBB7123:
.LBB7107:
.LBB7099:
.LBB7091:
	.loc 19 275 0
	fmuls 8,0,9
	.loc 19 270 0
	lwz 0,1328(1)
	.loc 4 3681 0
	fneg 8,8
	.loc 19 276 0
	rlwinm 11,0,19,21,29
	rlwinm 10,0,9,24,31
	lwzx 11,9,11
	subfic 0,10,380
	rlwinm 0,0,22,0,8
	or 0,0,11
	.loc 19 278 0
	lis 11,.LC36@ha
	.loc 19 277 0
	stw 0,1332(1)
	.loc 19 278 0
	lfs 12,.LC36@l(11)
.LBE7091:
.LBE7099:
.LBE7107:
.LBE7123:
.LBB7124:
.LBB7066:
	.loc 19 439 0
	lis 11,.LC125@ha
.LBE7066:
.LBE7124:
.LBB7125:
.LBB7108:
.LBB7100:
.LBB7092:
	.loc 19 277 0
	lfs 0,1332(1)
	fmr 10,0
.LBE7092:
.LBE7100:
.LBE7108:
.LBE7125:
.LBB7126:
.LBB7067:
	.loc 19 438 0
	fmuls 0,28,28
.LBE7067:
.LBE7126:
.LBB7127:
.LBB7109:
.LBB7101:
.LBB7093:
	.loc 19 278 0
	fmul 13,10,10
.LVL1737:
	fmadd 13,8,13,12
	fmul 13,10,13
.LBE7093:
.LBE7101:
.LBE7109:
.LBE7127:
.LBB7128:
.LBB7068:
	.loc 19 439 0
	lfs 10,.LC125@l(11)
	lis 11,.LC124@ha
	lfs 18,.LC124@l(11)
	.loc 19 440 0
	lis 11,.LC130@ha
.LBE7068:
.LBE7128:
.LBB7129:
.LBB7110:
.LBB7102:
.LBB7094:
	.loc 19 279 0
	fmul 27,13,13
.LBE7094:
.LBE7102:
.LBE7110:
.LBE7129:
.LBB7130:
.LBB7069:
	.loc 19 439 0
	fmadds 18,0,18,10
	.loc 19 440 0
	lfs 10,.LC130@l(11)
	lis 11,.LC129@ha
.LBE7069:
.LBE7130:
.LBB7131:
.LBB7111:
.LBB7103:
.LBB7095:
	.loc 19 279 0
	fmadd 27,8,27,12
.LBE7095:
.LBE7103:
.LBE7111:
.LBE7131:
.LBB7132:
.LBB7070:
	.loc 19 440 0
	lfs 8,.LC129@l(11)
	.loc 19 439 0
	lis 11,.LC126@ha
	.loc 19 440 0
	fmadds 10,0,8,10
.LBE7070:
.LBE7132:
.LBB7133:
.LBB7112:
.LBB7104:
.LBB7096:
	.loc 19 279 0
	fmul 27,13,27
.LBE7096:
.LBE7104:
.LBE7112:
.LBE7133:
.LBB7134:
.LBB7071:
	.loc 19 439 0
	lfs 13,.LC126@l(11)
	.loc 19 440 0
	lis 11,.LC131@ha
	.loc 19 439 0
	fmsubs 18,0,18,13
	.loc 19 440 0
	lfs 13,.LC131@l(11)
	.loc 19 439 0
	lis 11,.LC127@ha
.LBE7071:
.LBE7134:
.LBB7135:
.LBB7113:
.LBB7105:
.LBB7097:
	.loc 19 280 0
	frsp 27,27
.LBE7097:
.LBE7105:
.LBE7113:
.LBE7135:
.LBB7136:
.LBB7072:
	.loc 19 439 0
	lfs 8,.LC127@l(11)
	.loc 19 440 0
	fmsubs 10,0,10,13
	lis 11,.LC132@ha
	.loc 19 439 0
	fmadds 18,0,18,8
	.loc 19 440 0
	lfs 8,.LC132@l(11)
.LBE7072:
.LBE7136:
.LBB7137:
.LBB7114:
	.loc 17 652 0
	fmuls 31,31,27
.LBE7114:
.LBE7137:
.LBB7138:
.LBB7073:
	.loc 19 439 0
	lis 11,.LC128@ha
.LBE7073:
.LBE7138:
.LBB7139:
.LBB7115:
	.loc 17 651 0
	fmuls 30,30,27
.LBE7115:
.LBE7139:
.LBB7140:
.LBB7074:
	.loc 19 440 0
	fmadds 10,0,10,8
.LBE7074:
.LBE7140:
.LBB7141:
.LBB7142:
	.loc 17 730 0
	fmuls 13,31,31
.LBE7142:
.LBE7141:
.LBB7156:
.LBB7116:
	.loc 17 653 0
	fmuls 27,11,27
.LBE7116:
.LBE7156:
.LBB7157:
.LBB7075:
	.loc 19 440 0
	fmsubs 10,0,10,9
.LBE7075:
.LBE7157:
.LBB7158:
.LBB7117:
	.loc 17 730 0
	fmadds 13,30,30,13
	stfs 13,1328(1)
.LBE7117:
.LBE7158:
.LBB7159:
.LBB7076:
	.loc 19 439 0
	lfs 13,.LC128@l(11)
.LBE7076:
.LBE7159:
.LBB7160:
.LBB7151:
	.loc 17 733 0
	lis 11,.LC2@ha
	.loc 17 731 0
	lfs 8,1328(1)
.LBE7151:
.LBE7160:
.LBB7161:
.LBB7077:
	.loc 19 439 0
	fmsubs 18,0,18,13
.LBE7077:
.LBE7161:
.LBB7162:
.LBB7152:
	.loc 17 733 0
	lfs 13,.LC2@l(11)
	.loc 17 731 0
	fcmpu 7,8,13
.LBE7152:
.LBE7162:
.LBB7163:
.LBB7078:
	.loc 19 439 0
	fmadds 18,0,18,20
	.loc 19 440 0
	fmadds 0,0,10,20
.LVL1738:
	.loc 19 439 0
	fmuls 28,28,18
.LVL1739:
	.loc 19 440 0
	fmuls 0,0,21
.LVL1740:
.LBE7078:
.LBE7163:
.LBB7164:
.LBB7153:
	.loc 17 731 0
	beq- 7,.L1159
.LVL1741:
.LBB7143:
.LBB7144:
	.loc 19 270 0
	lwz 0,1328(1)
.LVL1742:
	.loc 19 275 0
	fmuls 9,8,9
.LBE7144:
.LBE7143:
	.loc 17 737 0
	fneg 20,31
.LBB7146:
.LBB7145:
	.loc 19 276 0
	rlwinm 11,0,19,21,29
	rlwinm 10,0,9,24,31
.LVL1743:
	lwzx 9,9,11
	subfic 0,10,380
	rlwinm 0,0,22,0,8
	.loc 4 3681 0
	fneg 9,9
.LVL1744:
	.loc 19 276 0
	or 0,0,9
	.loc 19 277 0
	stw 0,1332(1)
	lfs 13,1332(1)
	fmr 10,13
.LVL1745:
	.loc 19 278 0
	fmul 11,10,10
	fmadd 11,9,11,12
	fmul 11,10,11
.LVL1746:
	.loc 19 279 0
	fmul 13,11,11
	fmadd 13,9,13,12
.LVL1747:
	fmul 13,11,13
.LVL1748:
	.loc 19 280 0
	frsp 13,13
.LVL1749:
.LBE7145:
.LBE7146:
	.loc 17 737 0
	fmuls 20,20,13
.LVL1750:
	.loc 17 738 0
	fmuls 13,30,13
.LVL1751:
.L1159:
.LBB7147:
.LBB7148:
	.loc 17 620 0
	lis 9,.LC2@ha
	fmuls 19,20,27
	lfs 12,.LC2@l(9)
	fmuls 18,13,30
.LBE7148:
.LBE7147:
.LBE7153:
.LBE7164:
	.loc 4 3705 0
	fneg 28,28
.LVL1752:
	.loc 4 3709 0
	cmpwi 7,26,0
.LBB7165:
.LBB7154:
.LBB7150:
.LBB7149:
	.loc 17 620 0
	fmuls 10,31,12
.LBE7149:
.LBE7150:
.LBE7154:
.LBE7165:
.LBB7166:
.LBB7167:
	.loc 17 452 0
	lfs 8,0(29)
.LBE7167:
.LBE7166:
	.loc 4 3706 0
	fneg 11,0
.LBB7171:
.LBB7168:
	.loc 17 452 0
	lfs 9,4(29)
.LBE7168:
.LBE7171:
.LBB7172:
.LBB7155:
	.loc 17 620 0
	fmsubs 18,20,31,18
.LVL1753:
	fmsubs 10,13,27,10
.LVL1754:
	fmsubs 19,30,12,19
.LVL1755:
.LBE7155:
.LBE7172:
.LBB7173:
.LBB7174:
	.loc 17 439 0
	fmuls 21,28,18
.LVL1756:
	fmuls 23,28,10
	fmuls 22,28,19
.LBE7174:
.LBE7173:
.LBB7175:
.LBB7176:
	fmuls 4,11,10
.LBE7176:
.LBE7175:
.LBB7178:
.LBB7169:
	.loc 17 452 0
	lfs 10,8(29)
.LVL1757:
.LBE7169:
.LBE7178:
.LBB7179:
.LBB7177:
	.loc 17 439 0
	fmuls 19,11,19
.LVL1758:
	fmuls 18,11,18
.LVL1759:
.LBE7177:
.LBE7179:
.LBB7180:
.LBB7181:
	.loc 17 448 0
	fmuls 5,26,30
	fmuls 6,26,31
	fmuls 7,26,27
.LBE7181:
.LBE7180:
	.loc 17 452 0
	fmadds 23,20,0,23
.LVL1760:
	fmadds 22,13,0,22
.LVL1761:
	fmadds 21,0,12,21
.LVL1762:
	fmadds 20,28,20,4
	fmadds 19,28,13,19
	fmadds 18,28,12,18
.LVL1763:
.LBB7182:
.LBB7170:
	fadds 17,5,8
	fadds 16,6,9
	fadds 15,7,10
.LVL1764:
.LBE7170:
.LBE7182:
	.loc 4 3709 0
	beq- 7,.L1160
.LVL1765:
.LBB7183:
.LBB7184:
.LBB7185:
.LBB7186:
.LBB7187:
	.loc 1 260 0
	lwz 0,32(1)
.LBE7187:
.LBE7186:
.LBE7185:
.LBE7184:
.LBE7183:
.LBB7214:
.LBB7215:
	.loc 17 431 0
	fsubs 8,8,5
	fsubs 9,9,6
.LBE7215:
.LBE7214:
	.loc 4 3715 0
	lfs 0,.LC35@l(28)
.LVL1766:
.LBB7217:
.LBB7203:
.LBB7198:
.LBB7193:
.LBB7188:
	.loc 1 260 0
	cmpwi 7,0,0
.LBE7188:
.LBE7193:
.LBE7198:
.LBE7203:
.LBE7217:
.LBB7218:
.LBB7216:
	.loc 17 431 0
	fsubs 10,10,7
.LBE7216:
.LBE7218:
.LBB7219:
.LBB7220:
	.loc 1 399 0
	li 0,0
.LBE7220:
.LBE7219:
.LBB7224:
.LBB7225:
	.loc 17 424 0
	stfs 8,8(1)
	.loc 17 425 0
	stfs 9,12(1)
.LBE7225:
.LBE7224:
	.loc 4 3715 0
	fmuls 29,29,0
.LVL1767:
.LBB7227:
.LBB7226:
	.loc 17 426 0
	stfs 10,16(1)
	addi 27,1,20
.LBE7226:
.LBE7227:
.LBB7228:
.LBB7221:
	.loc 1 399 0
	stw 0,24(1)
.LVL1768:
.LBE7221:
.LBE7228:
.LBB7229:
.LBB7230:
	.file 22 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Matrix.h"
	.loc 22 454 0
	lfs 28,6520(31)
.LVL1769:
	lfs 25,6524(31)
	lfs 24,6528(31)
.LVL1770:
.LBE7230:
.LBE7229:
.LBB7234:
.LBB7204:
.LBB7199:
.LBB7194:
.LBB7189:
	.loc 1 260 0
	ble- 7,.L1189
.LVL1771:
.L1162:
.LBE7189:
.LBE7194:
.LBE7199:
.LBE7204:
.LBE7234:
.LBB7235:
.LBB7231:
	.loc 22 454 0
	fmuls 13,23,28
.LBE7231:
.LBE7235:
.LBB7236:
.LBB7205:
.LBB7206:
.LBB7207:
	.loc 1 234 0
	lwz 9,28(1)
.LBE7207:
.LBE7206:
.LBE7205:
.LBE7236:
.LBB7237:
.LBB7232:
	.loc 22 454 0
	fmuls 0,22,28
	fmuls 28,21,28
.LBE7232:
.LBE7237:
.LBB7238:
.LBB7210:
.LBB7209:
.LBB7208:
	.loc 1 234 0
	add 11,9,0
	.loc 22 454 0
	fmadds 13,20,25,13
	fmadds 0,19,25,0
	fmadds 25,18,25,28
	fmadds 13,30,24,13
	fmadds 0,31,24,0
	fmadds 24,27,24,25
	.loc 17 452 0
	fmadds 13,29,13,17
	fmadds 0,29,0,16
	fmadds 24,29,24,15
	.loc 1 234 0
	stfsx 13,9,0
	stfs 0,4(11)
	lwz 0,.LC16@l(30)
	.loc 1 235 0
	lwz 9,24(1)
	.loc 1 234 0
	stfs 24,8(11)
	.loc 1 235 0
	addi 9,9,1
	.loc 1 234 0
	stw 0,12(11)
	stw 0,16(11)
	.loc 1 235 0
	stw 9,24(1)
.LVL1772:
.L1164:
.LBE7208:
.LBE7209:
.LBE7210:
.LBE7238:
.LBB7239:
.LBB7240:
.LBB7241:
.LBB7242:
.LBB7243:
	.loc 1 260 0
	lwz 0,32(1)
.LBE7243:
.LBE7242:
	.loc 1 231 0
	addi 4,9,1
.LBE7241:
.LBE7240:
.LBE7239:
.LBB7265:
.LBB7266:
	.loc 22 454 0
	lfs 28,6532(31)
.LBE7266:
.LBE7265:
.LBB7271:
.LBB7253:
.LBB7250:
.LBB7247:
.LBB7244:
	.loc 1 260 0
	cmpw 7,4,0
.LBE7244:
.LBE7247:
.LBE7250:
.LBE7253:
.LBE7271:
.LBB7272:
.LBB7267:
	.loc 22 454 0
	lfs 25,6536(31)
	lfs 24,6540(31)
.LVL1773:
.LBE7267:
.LBE7272:
.LBB7273:
.LBB7254:
.LBB7251:
.LBB7248:
.LBB7245:
	.loc 1 260 0
	bgt- 7,.L1190
.LVL1774:
.L1165:
.LBE7245:
.LBE7248:
.LBE7251:
.LBE7254:
.LBE7273:
.LBB7274:
.LBB7268:
	.loc 22 454 0
	fmuls 13,23,28
.LBE7268:
.LBE7274:
.LBB7275:
.LBB7255:
.LBB7256:
.LBB7257:
	.loc 1 234 0
	lwz 10,28(1)
.LBE7257:
.LBE7256:
.LBE7255:
.LBE7275:
.LBB7276:
.LBB7269:
	.loc 22 454 0
	fmuls 0,22,28
.LBE7269:
.LBE7276:
.LBB7277:
.LBB7262:
.LBB7260:
.LBB7258:
	.loc 1 234 0
	mulli 9,9,20
.LBE7258:
.LBE7260:
.LBE7262:
.LBE7277:
.LBB7278:
.LBB7270:
	.loc 22 454 0
	fmuls 28,21,28
.LVL1775:
.LBE7270:
.LBE7278:
.LBB7279:
.LBB7263:
.LBB7261:
.LBB7259:
	.loc 1 234 0
	lwz 0,.LC16@l(30)
	.loc 22 454 0
	fmadds 13,20,25,13
	.loc 1 234 0
	add 11,10,9
	.loc 22 454 0
	fmadds 0,19,25,0
	fmadds 25,18,25,28
	fmadds 13,30,24,13
	fmadds 0,31,24,0
	fmadds 24,27,24,25
	.loc 17 452 0
	fmadds 13,29,13,17
	fmadds 0,29,0,16
	fmadds 24,29,24,15
	.loc 1 234 0
	stfsx 13,10,9
	li 10,0
	stfs 0,4(11)
	stfs 24,8(11)
	.loc 1 235 0
	lwz 9,24(1)
	.loc 1 234 0
	stw 10,12(11)
	.loc 1 235 0
	addi 9,9,1
	.loc 1 234 0
	stw 0,16(11)
	.loc 1 235 0
	stw 9,24(1)
.LVL1776:
.L1167:
.LBE7259:
.LBE7261:
.LBE7263:
.LBE7279:
.LBB7280:
.LBB7281:
.LBB7282:
.LBB7283:
.LBB7284:
	.loc 1 260 0
	lwz 0,32(1)
.LBE7284:
.LBE7283:
	.loc 1 231 0
	addi 4,9,1
.LBE7282:
.LBE7281:
.LBE7280:
.LBB7306:
.LBB7307:
	.loc 22 454 0
	lfs 28,6544(31)
.LBE7307:
.LBE7306:
.LBB7312:
.LBB7294:
.LBB7291:
.LBB7288:
.LBB7285:
	.loc 1 260 0
	cmpw 7,4,0
.LBE7285:
.LBE7288:
.LBE7291:
.LBE7294:
.LBE7312:
.LBB7313:
.LBB7308:
	.loc 22 454 0
	lfs 25,6548(31)
	lfs 24,6552(31)
.LVL1777:
.LBE7308:
.LBE7313:
.LBB7314:
.LBB7295:
.LBB7292:
.LBB7289:
.LBB7286:
	.loc 1 260 0
	bgt- 7,.L1191
.LVL1778:
.L1168:
.LBE7286:
.LBE7289:
.LBE7292:
.LBE7295:
.LBE7314:
.LBB7315:
.LBB7309:
	.loc 22 454 0
	fmuls 13,23,28
.LBE7309:
.LBE7315:
.LBB7316:
.LBB7296:
.LBB7297:
.LBB7298:
	.loc 1 234 0
	lwz 10,28(1)
.LBE7298:
.LBE7297:
.LBE7296:
.LBE7316:
.LBB7317:
.LBB7310:
	.loc 22 454 0
	fmuls 0,22,28
.LBE7310:
.LBE7317:
.LBB7318:
.LBB7303:
.LBB7301:
.LBB7299:
	.loc 1 234 0
	mulli 9,9,20
.LBE7299:
.LBE7301:
.LBE7303:
.LBE7318:
.LBB7319:
.LBB7311:
	.loc 22 454 0
	fmuls 28,21,28
.LVL1779:
.LBE7311:
.LBE7319:
.LBB7320:
.LBB7304:
.LBB7302:
.LBB7300:
	.loc 1 234 0
	li 0,0
	.loc 22 454 0
	fmadds 13,20,25,13
	.loc 1 234 0
	add 11,10,9
	.loc 22 454 0
	fmadds 0,19,25,0
	fmadds 25,18,25,28
	fmadds 13,30,24,13
	fmadds 0,31,24,0
	fmadds 24,27,24,25
	.loc 17 452 0
	fmadds 13,29,13,17
	fmadds 0,29,0,16
	fmadds 24,29,24,15
	.loc 1 234 0
	stfsx 13,10,9
	stfs 0,4(11)
	stfs 24,8(11)
	.loc 1 235 0
	lwz 9,24(1)
	.loc 1 234 0
	stw 0,12(11)
	.loc 1 235 0
	addi 9,9,1
	.loc 1 234 0
	stw 0,16(11)
	.loc 1 235 0
	stw 9,24(1)
.LVL1780:
.L1170:
.LBE7300:
.LBE7302:
.LBE7304:
.LBE7320:
.LBB7321:
.LBB7322:
.LBB7323:
.LBB7324:
.LBB7325:
	.loc 1 260 0
	lwz 0,32(1)
.LBE7325:
.LBE7324:
	.loc 1 231 0
	addi 4,9,1
.LBE7323:
.LBE7322:
.LBE7321:
.LBB7347:
.LBB7348:
	.loc 22 454 0
	lfs 28,6556(31)
.LBE7348:
.LBE7347:
.LBB7353:
.LBB7335:
.LBB7332:
.LBB7329:
.LBB7326:
	.loc 1 260 0
	cmpw 7,4,0
.LBE7326:
.LBE7329:
.LBE7332:
.LBE7335:
.LBE7353:
.LBB7354:
.LBB7349:
	.loc 22 454 0
	lfs 25,6560(31)
	lfs 24,6564(31)
.LVL1781:
.LBE7349:
.LBE7354:
.LBB7355:
.LBB7336:
.LBB7333:
.LBB7330:
.LBB7327:
	.loc 1 260 0
	bgt- 7,.L1192
.LVL1782:
.L1171:
.LBE7327:
.LBE7330:
.LBE7333:
.LBE7336:
.LBE7355:
.LBB7356:
.LBB7350:
	.loc 22 454 0
	fmuls 23,23,28
.LVL1783:
.LBE7350:
.LBE7356:
.LBB7357:
.LBB7337:
.LBB7338:
.LBB7339:
	.loc 1 234 0
	lwz 10,28(1)
.LBE7339:
.LBE7338:
.LBE7337:
.LBE7357:
.LBB7358:
.LBB7351:
	.loc 22 454 0
	fmuls 22,22,28
.LVL1784:
.LBE7351:
.LBE7358:
.LBB7359:
.LBB7344:
.LBB7342:
.LBB7340:
	.loc 1 234 0
	mulli 9,9,20
.LBE7340:
.LBE7342:
.LBE7344:
.LBE7359:
.LBB7360:
.LBB7352:
	.loc 22 454 0
	fmuls 28,21,28
.LVL1785:
.LBE7352:
.LBE7360:
.LBB7361:
.LBB7345:
.LBB7343:
.LBB7341:
	fmadds 20,20,25,23
.LVL1786:
	.loc 1 234 0
	add 11,10,9
	.loc 22 454 0
	fmadds 19,19,25,22
.LVL1787:
	fmadds 25,18,25,28
	fmadds 30,30,24,20
.LVL1788:
	fmadds 31,31,24,19
.LVL1789:
	fmadds 27,27,24,25
.LVL1790:
	.loc 17 452 0
	fmadds 17,29,30,17
.LVL1791:
	fmadds 16,29,31,16
.LVL1792:
	fmadds 29,29,27,15
.LVL1793:
	.loc 1 234 0
	stfsx 17,10,9
	stfs 16,4(11)
	lwz 9,.LC16@l(30)
	.loc 1 235 0
	lwz 10,24(1)
	.loc 1 234 0
	stw 9,12(11)
	li 9,0
	.loc 1 235 0
	addi 0,10,1
	.loc 1 234 0
	stfs 29,8(11)
	stw 9,16(11)
	.loc 1 235 0
	stw 0,24(1)
.LVL1794:
.L1172:
.LBE7341:
.LBE7343:
.LBE7345:
.LBE7361:
	.loc 4 3722 0
	lis 9,declManager@ha
	lis 11,gameRenderWorld@ha
	lwz 3,declManager@l(9)
	mr 4,24
	lwz 31,gameRenderWorld@l(11)
	li 5,1
	lwz 9,0(3)
	li 6,0
	lwz 0,104(9)
	lwz 9,0(31)
	mtctr 0
	lwz 30,56(9)
	bctrl
	lfs 1,.LC35@l(28)
	addis 25,25,0x25
.LVL1795:
	mr 7,3
	mr 4,27
	mr 3,31
	addi 5,1,8
	mr 6,26
	fmuls 1,26,1
	lwz 8,2004(25)
	mtctr 30
	bctrl
.LVL1796:
.L1145:
.LBE7397:
	.loc 4 3723 0
	lwz 0,1508(1)
	lwz 24,1336(1)
.LVL1797:
	mtlr 0
	lwz 25,1340(1)
	lwz 26,1344(1)
	lwz 27,1348(1)
	lwz 28,1352(1)
	lwz 29,1356(1)
.LVL1798:
	lwz 30,1360(1)
	lwz 31,1364(1)
	lfd 15,1368(1)
	lfd 16,1376(1)
	lfd 17,1384(1)
	lfd 18,1392(1)
	lfd 19,1400(1)
	lfd 20,1408(1)
	lfd 21,1416(1)
	lfd 22,1424(1)
	lfd 23,1432(1)
	lfd 24,1440(1)
	lfd 25,1448(1)
	lfd 26,1456(1)
.LVL1799:
	lfd 27,1464(1)
	lfd 28,1472(1)
	lfd 29,1480(1)
	lfd 30,1488(1)
	lfd 31,1496(1)
	addi 1,1,1504
	.cfi_remember_state
.LCFI265:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 56
	.cfi_restore 55
	.cfi_restore 54
	.cfi_restore 53
	.cfi_restore 52
	.cfi_restore 51
	.cfi_restore 50
	.cfi_restore 49
	.cfi_restore 48
	.cfi_restore 47
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL1800:
.L1188:
.LCFI266:
	.cfi_restore_state
.LBB7398:
	.loc 4 3699 0
	lis 9,_ZN6idMath6TWO_PIE@ha
	lfs 31,_ZN6idMath6TWO_PIE@l(9)
	b .L1149
.LVL1801:
.L1184:
.LBB7362:
.LBB7079:
	.loc 19 421 0
	fadds 13,0,13
	fcmpu 7,28,13
	bng+ 7,.L1186
	.loc 19 423 0
	lis 30,.LC16@ha
	.loc 19 422 0
	fsubs 28,28,31
.LVL1802:
	.loc 19 423 0
	lfs 21,.LC16@l(30)
	b .L1155
.LVL1803:
.L1160:
.LBE7079:
.LBE7362:
.LBB7363:
.LBB7211:
.LBB7200:
.LBB7195:
.LBB7190:
	.loc 1 260 0
	lwz 0,32(1)
	addi 27,1,20
.LBE7190:
.LBE7195:
.LBE7200:
.LBE7211:
.LBE7363:
	.loc 4 3715 0
	lfs 0,.LC35@l(28)
.LVL1804:
.LBB7364:
.LBB7212:
.LBB7201:
.LBB7196:
.LBB7191:
	.loc 1 260 0
	cmpwi 7,0,0
.LBE7191:
.LBE7196:
.LBE7201:
.LBE7212:
.LBE7364:
.LBB7365:
.LBB7222:
	.loc 1 399 0
	li 0,0
.LBE7222:
.LBE7365:
.LBB7366:
.LBB7367:
	.loc 17 424 0
	stfs 8,8(1)
.LBE7367:
.LBE7366:
	.loc 4 3715 0
	fmuls 29,29,0
.LVL1805:
.LBB7369:
.LBB7368:
	.loc 17 425 0
	stfs 9,12(1)
	.loc 17 426 0
	stfs 10,16(1)
.LBE7368:
.LBE7369:
.LBB7370:
.LBB7223:
	.loc 1 399 0
	stw 0,24(1)
.LVL1806:
.LBE7223:
.LBE7370:
.LBB7371:
.LBB7233:
	.loc 22 454 0
	lfs 28,6520(31)
.LVL1807:
	lfs 25,6524(31)
	lfs 24,6528(31)
.LVL1808:
.LBE7233:
.LBE7371:
.LBB7372:
.LBB7213:
.LBB7202:
.LBB7197:
.LBB7192:
	.loc 1 260 0
	bgt+ 7,.L1162
.LVL1809:
.L1189:
	.loc 1 261 0
	lwz 9,20(1)
	mr 3,27
	li 4,1
	li 5,1
	lwz 0,12(9)
	mtctr 0
	bctrl
.LVL1810:
.LBE7192:
.LBE7197:
	.loc 1 231 0
	cmpwi 7,3,0
	lwz 9,24(1)
	beq+ 7,.L1164
	lwz 0,24(1)
	mulli 0,0,20
	b .L1162
.LVL1811:
.L1187:
.LBE7202:
.LBE7213:
.LBE7372:
.LBB7373:
.LBB7374:
	.loc 17 396 0 discriminator 1
	lis 30,.LC16@ha
.LBE7374:
.LBE7373:
.LBB7377:
.LBB7378:
	lis 9,.LC122@ha
.LBE7378:
.LBE7377:
.LBB7381:
.LBB7375:
	lwz 11,.LC16@l(30)
	.loc 17 398 0 discriminator 1
	li 0,0
.LBE7375:
.LBE7381:
.LBB7382:
.LBB7379:
	.loc 17 396 0 discriminator 1
	lwz 9,.LC122@l(9)
.LBE7379:
.LBE7382:
	.loc 4 3692 0 discriminator 1
	mr 3,27
.LBB7383:
.LBB7376:
	.loc 17 396 0 discriminator 1
	stw 11,6520(31)
	.loc 17 397 0 discriminator 1
	stw 11,6524(31)
	.loc 17 398 0 discriminator 1
	stw 0,6528(31)
.LVL1812:
.LBE7376:
.LBE7383:
.LBB7384:
.LBB7380:
	.loc 17 396 0 discriminator 1
	stw 9,6532(31)
	.loc 17 397 0 discriminator 1
	stw 11,6536(31)
	.loc 17 398 0 discriminator 1
	stw 0,6540(31)
.LVL1813:
.LBE7380:
.LBE7384:
.LBB7385:
.LBB7386:
	.loc 17 396 0 discriminator 1
	stw 9,6544(31)
	.loc 17 397 0 discriminator 1
	stw 9,6548(31)
	.loc 17 398 0 discriminator 1
	stw 0,6552(31)
.LVL1814:
.LBE7386:
.LBE7385:
.LBB7387:
.LBB7388:
	.loc 17 396 0 discriminator 1
	stw 11,6556(31)
	.loc 17 397 0 discriminator 1
	stw 9,6560(31)
	.loc 17 398 0 discriminator 1
	stw 0,6564(31)
.LBE7388:
.LBE7387:
	.loc 4 3692 0 discriminator 1
	bl __cxa_guard_release
	b .L1146
.LVL1815:
.L1192:
.LBB7389:
.LBB7346:
.LBB7334:
.LBB7331:
.LBB7328:
	.loc 1 261 0
	lwz 9,20(1)
	mr 3,27
	li 5,1
	lwz 0,12(9)
	mtctr 0
	bctrl
.LVL1816:
.LBE7328:
.LBE7331:
	.loc 1 231 0
	cmpwi 7,3,0
	beq+ 7,.L1172
	lwz 9,24(1)
	b .L1171
.LVL1817:
.L1191:
.LBE7334:
.LBE7346:
.LBE7389:
.LBB7390:
.LBB7305:
.LBB7293:
.LBB7290:
.LBB7287:
	.loc 1 261 0
	lwz 9,20(1)
	mr 3,27
	li 5,1
	lwz 0,12(9)
	mtctr 0
	bctrl
.LVL1818:
.LBE7287:
.LBE7290:
	.loc 1 231 0
	cmpwi 7,3,0
	lwz 9,24(1)
	beq+ 7,.L1170
	b .L1168
.LVL1819:
.L1190:
.LBE7293:
.LBE7305:
.LBE7390:
.LBB7391:
.LBB7264:
.LBB7252:
.LBB7249:
.LBB7246:
	.loc 1 261 0
	lwz 9,20(1)
	mr 3,27
	li 5,1
	lwz 0,12(9)
	mtctr 0
	bctrl
.LEHE49:
.LVL1820:
.LBE7246:
.LBE7249:
	.loc 1 231 0
	cmpwi 7,3,0
	lwz 9,24(1)
	beq+ 7,.L1167
	b .L1165
.LVL1821:
.L1185:
.LBE7252:
.LBE7264:
.LBE7391:
.LBB7392:
.LBB7080:
	.loc 19 418 0
	lis 30,.LC16@ha
	lfs 21,.LC16@l(30)
	b .L1155
.LVL1822:
.L1180:
	mr 31,3
.LBE7080:
.LBE7392:
	.loc 4 3722 0
	mr 3,27
	bl _ZN14idFixedWindingD1Ev
	mr 3,31
.LEHB50:
	bl _Unwind_Resume
.LEHE50:
.LBE7398:
	.cfi_endproc
.LFE2943:
	.section	.gcc_except_table
.LLSDA2943:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2943-.LLSDACSB2943
.LLSDACSB2943:
	.uleb128 .LEHB49-.LFB2943
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L1180-.LFB2943
	.uleb128 0
	.uleb128 .LEHB50-.LFB2943
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE2943:
	.section	".text"
	.size	_ZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcf, .-_ZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcf
	.align 2
	.globl _ZN11idGameLocal10BloodSplatERK6idVec3S2_fPKc
	.type	_ZN11idGameLocal10BloodSplatERK6idVec3S2_fPKc, @function
_ZN11idGameLocal10BloodSplatERK6idVec3S2_fPKc:
.LFB2944:
	.loc 4 3730 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2944
.LVL1823:
	stwu 1,-3184(1)
.LCFI267:
	.cfi_def_cfa_offset 3184
.LBB7399:
	.loc 4 3731 0
	lis 9,.LC35@ha
.LBE7399:
	.loc 4 3730 0
	mflr 0
	stfd 31,3176(1)
.LBB7462:
	.loc 4 3731 0
	lfs 31,.LC35@l(9)
	.cfi_offset 63, -8
	.cfi_register 65, 0
.LBB7400:
.LBB7401:
	.file 23 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/TraceModel.h"
	.loc 23 161 0
	li 9,0
.LBE7401:
.LBE7400:
.LBE7462:
	.loc 4 3730 0
	stw 0,3188(1)
.LBB7463:
.LBB7405:
.LBB7406:
	.loc 17 396 0
	li 0,0
	.cfi_offset 65, 4
.LBE7406:
.LBE7405:
	.loc 4 3731 0
	fmuls 31,1,31
.LVL1824:
.LBE7463:
	.loc 4 3730 0
	stw 29,3164(1)
	mr 29,3
	.cfi_offset 29, -20
.LBB7464:
	.loc 4 3737 0
	addi 3,1,176
.LVL1825:
.LBE7464:
	.loc 4 3730 0
	stw 28,3160(1)
	mr 28,6
	.cfi_offset 28, -24
.LBB7465:
	.loc 4 3735 0
	fneg 0,31
.LVL1826:
.LBE7465:
	.loc 4 3730 0
	stw 30,3168(1)
	stw 31,3172(1)
	mr 30,4
	.cfi_offset 31, -12
	.cfi_offset 30, -16
.LBB7466:
.LBB7409:
.LBB7407:
	.loc 17 396 0
	stw 0,20(1)
.LBE7407:
.LBE7409:
.LBE7466:
	.loc 4 3730 0
	mr 31,5
.LBB7467:
.LBB7410:
.LBB7411:
	.loc 17 396 0
	stw 0,32(1)
.LBE7411:
.LBE7410:
.LBB7413:
.LBB7414:
	stw 0,44(1)
.LBE7414:
.LBE7413:
.LBB7416:
.LBB7417:
	stw 0,56(1)
.LBE7417:
.LBE7416:
.LBB7419:
.LBB7404:
	.loc 23 161 0
	stw 9,316(1)
	.loc 23 162 0
	stw 9,1372(1)
	stw 9,708(1)
	stw 9,320(1)
.LBB7402:
.LBB7403:
	.loc 18 208 0
	stw 0,3136(1)
	stw 0,3132(1)
	stw 0,3128(1)
	stw 0,3124(1)
	stw 0,3120(1)
	stw 0,3116(1)
.LBE7403:
.LBE7402:
.LBE7404:
.LBE7419:
.LBE7467:
	.loc 4 3730 0
	stw 27,3156(1)
.LBB7468:
.LBB7420:
.LBB7408:
	.loc 17 397 0
	stfs 31,24(1)
	.loc 17 398 0
	stfs 31,28(1)
.LBE7408:
.LBE7420:
.LBB7421:
.LBB7412:
	.loc 17 397 0
	stfs 31,36(1)
	.loc 17 398 0
	stfs 0,40(1)
.LVL1827:
.LBE7412:
.LBE7421:
.LBB7422:
.LBB7415:
	.loc 17 397 0
	stfs 0,48(1)
	.loc 17 398 0
	stfs 0,52(1)
.LVL1828:
.LBE7415:
.LBE7422:
.LBB7423:
.LBB7418:
	.loc 17 397 0
	stfs 0,60(1)
	.loc 17 398 0
	stfs 31,64(1)
.LVL1829:
.LEHB51:
.LBE7418:
.LBE7423:
	.loc 4 3737 0
	.cfi_offset 27, -28
	bl _ZN11idClipModelC1Ev
.LEHE51:
.LVL1830:
.LBB7424:
.LBB7425:
	.loc 4 3741 0
	lis 9,g_bloodEffects+44@ha
	.loc 7 142 0
	lwz 9,g_bloodEffects+44@l(9)
.LBE7425:
.LBE7424:
	.loc 4 3741 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L1194
.LVL1831:
.LBB7426:
.LBB7427:
.LBB7428:
.LBB7429:
	.loc 21 71 0
	addis 9,29,0x1
	lis 27,0x1
	lwz 0,-32064(9)
	ori 27,27,3533
.LBE7429:
.LBE7428:
.LBE7427:
.LBE7426:
	.loc 4 3746 0
	addi 3,1,316
	addi 4,1,20
.LBB7441:
.LBB7436:
.LBB7433:
.LBB7430:
	.loc 21 71 0
	mullw 27,27,0
.LBE7430:
.LBE7433:
.LBE7436:
.LBE7441:
	.loc 4 3746 0
	li 5,4
.LBB7442:
.LBB7437:
.LBB7434:
.LBB7431:
	.loc 21 71 0
	addi 27,27,1
	stw 27,-32064(9)
.LVL1832:
.LEHB52:
.LBE7431:
.LBE7434:
.LBE7437:
.LBE7442:
	.loc 4 3746 0
	bl _ZN12idTraceModel12SetupPolygonEPK6idVec3i
	.loc 4 3747 0
	addi 3,1,176
	addi 4,1,316
	bl _ZN11idClipModel9LoadModelERK12idTraceModel
.LVL1833:
	.loc 17 452 0
	lis 9,.LC133@ha
	lfs 8,4(31)
	lfs 0,.LC133@l(9)
	.loc 4 3748 0
	addis 3,29,0x23
	.loc 17 452 0
	lfs 12,4(30)
	.loc 4 3748 0
	lis 8,mat3_identity@ha
	.loc 17 452 0
	lfs 9,8(31)
	.loc 4 3748 0
	addi 3,3,17272
	.loc 17 452 0
	lfs 13,8(30)
	fmadds 12,8,0,12
.LBB7443:
.LBB7444:
.LBB7445:
.LBB7446:
	lfs 10,0(31)
.LBE7446:
.LBE7445:
.LBE7444:
.LBE7443:
	.loc 4 3748 0
	addi 4,1,68
.LBB7456:
.LBB7453:
.LBB7450:
.LBB7447:
	.loc 17 452 0
	lfs 11,0(30)
.LBE7447:
.LBE7450:
.LBE7453:
.LBE7456:
	fmadds 13,9,0,13
.LVL1834:
	.loc 4 3748 0
	mr 5,30
	addi 6,1,8
.LBB7457:
.LBB7454:
.LBB7451:
.LBB7448:
	.loc 17 452 0
	fmadds 0,10,0,11
.LBE7448:
.LBE7451:
.LBE7454:
.LBE7457:
	.loc 4 3748 0
	addi 7,1,176
	la 8,mat3_identity@l(8)
	li 9,1
	li 10,0
.LBB7458:
.LBB7455:
.LBB7452:
.LBB7449:
	.loc 17 397 0
	stfs 12,12(1)
	.loc 17 396 0
	stfs 0,8(1)
	.loc 17 398 0
	stfs 13,16(1)
.LBE7449:
.LBE7452:
.LBE7455:
.LBE7458:
	.loc 4 3748 0
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LVL1835:
.LBB7459:
.LBB7438:
.LBB7435:
.LBB7432:
	.loc 21 72 0
	rlwinm 27,27,0,17,31
.LVL1836:
.LBE7432:
.LBE7435:
	.loc 21 83 0
	lis 0,0x4330
	xoris 27,27,0x8000
.LVL1837:
	stw 0,3144(1)
	stw 27,3148(1)
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	lis 9,.LC123@ha
	lfd 2,3144(1)
.LBE7438:
.LBE7459:
	.loc 4 3749 0
	mr 3,29
	addi 4,1,72
	mr 5,31
.LBB7460:
.LBB7439:
	.loc 21 83 0
	fsub 2,2,0
	lfs 0,.LC123@l(9)
.LBE7439:
.LBE7460:
	.loc 4 3749 0
	lis 9,.LC2@ha
	li 6,1
	lfs 3,.LC2@l(9)
	mr 7,28
.LBB7461:
.LBB7440:
	.loc 21 83 0
	frsp 2,2
	fmuls 2,2,0
.LBE7440:
.LBE7461:
	.loc 4 3745 0
	fmadds 2,31,2,31
	.loc 4 3749 0
	fadds 1,2,2
	bl _ZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcf
.LEHE52:
.LVL1838:
.L1194:
	addi 3,1,176
.LEHB53:
	bl _ZN11idClipModelD1Ev
.LEHE53:
.LBE7468:
	.loc 4 3750 0
	lwz 0,3188(1)
	lwz 27,3156(1)
	mtlr 0
	lwz 28,3160(1)
.LVL1839:
	lwz 29,3164(1)
.LVL1840:
	lwz 30,3168(1)
.LVL1841:
	lwz 31,3172(1)
.LVL1842:
	lfd 31,3176(1)
.LVL1843:
	addi 1,1,3184
	.cfi_remember_state
.LCFI268:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1844:
.L1197:
.LCFI269:
	.cfi_restore_state
	mr 31,3
.LVL1845:
.LBB7469:
	.loc 4 3749 0
	addi 3,1,176
	bl _ZN11idClipModelD1Ev
	mr 3,31
.LEHB54:
	bl _Unwind_Resume
.LEHE54:
.LBE7469:
	.cfi_endproc
.LFE2944:
	.section	.gcc_except_table
.LLSDA2944:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2944-.LLSDACSB2944
.LLSDACSB2944:
	.uleb128 .LEHB51-.LFB2944
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB2944
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L1197-.LFB2944
	.uleb128 0
	.uleb128 .LEHB53-.LFB2944
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB2944
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE2944:
	.section	".text"
	.size	_ZN11idGameLocal10BloodSplatERK6idVec3S2_fPKc, .-_ZN11idGameLocal10BloodSplatERK6idVec3S2_fPKc
	.align 2
	.globl _ZN11idGameLocal9SetCameraEP8idCamera
	.type	_ZN11idGameLocal9SetCameraEP8idCamera, @function
_ZN11idGameLocal9SetCameraEP8idCamera:
.LFB2951:
	.loc 4 3757 0
	.cfi_startproc
.LVL1846:
	mflr 0
	stwu 1,-40(1)
.LCFI270:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,44(1)
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 30,32(1)
.LBB7510:
	.loc 4 3763 0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL1847:
	.loc 4 3764 0
	lwz 0,188(3)
	cmpwi 7,0,0
	ble- 7,.L1198
.LVL1848:
.LBB7511:
.LBB7512:
	.file 24 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Program.h"
	.loc 24 249 0 discriminator 2
	lwz 9,4732(3)
	cmpwi 7,9,0
	beq- 7,.L1200
.LBE7512:
.LBE7511:
	.loc 4 3764 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L1200
.LVL1849:
.L1198:
.LBE7510:
	.loc 4 3839 0
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
	.cfi_remember_state
.LCFI271:
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
.LVL1850:
.L1200:
.LCFI272:
	.cfi_restore_state
.LBB7589:
.LBB7513:
	.loc 4 3769 0
	cmpwi 7,29,0
.LBE7513:
	.loc 4 3768 0
	addis 30,31,0x25
	stw 29,2116(30)
.LBB7588:
	.loc 4 3769 0
	beq- 7,.L1230
	.loc 4 3772 0
	lbz 0,1993(30)
	addi 29,29,100
.LVL1851:
	cmpwi 7,0,0
	.loc 4 3770 0
	li 0,1
	stb 0,1992(30)
	.loc 4 3772 0
	bne- 7,.L1231
.LVL1852:
.L1201:
	.loc 4 3780 0
	lwz 0,2004(30)
	lwz 9,1984(30)
	cmpw 7,0,9
	ble- 7,.L1218
	.loc 4 3781 0
	lis 9,.LANCHOR0+2562472@ha
	lwz 9,.LANCHOR0+2562472@l(9)
	add 0,0,9
	stw 0,1980(30)
.L1218:
	.loc 4 3785 0
	lis 9,cvarSystem@ha
	lis 4,.LC136@ha
	lwz 3,cvarSystem@l(9)
	la 4,.LC136@l(4)
	li 5,0
	lwz 9,0(3)
	lwz 0,40(9)
	lis 9,.LC16@ha
	lfs 1,.LC16@l(9)
	mtctr 0
	bctrl
.LVL1853:
	.loc 4 3788 0
	lwz 0,48(31)
	cmpwi 7,0,0
	ble- 7,.L1203
	.loc 4 3757 0
	addi 28,31,528
.LBB7514:
.LBB7515:
.LBB7516:
.LBB7517:
	.loc 4 3788 0
	li 30,0
.LVL1854:
.L1205:
.LBE7517:
.LBE7516:
.LBE7515:
.LBE7514:
	.loc 4 3789 0
	lwzu 3,4(28)
	.loc 4 3788 0
	addi 30,30,1
	.loc 4 3789 0
	cmpwi 7,3,0
	beq- 7,.L1204
	.loc 4 3791 0
	bl _ZN8idPlayer14EnterCinematicEv
	lwz 0,48(31)
.L1204:
.LVL1855:
	.loc 4 3788 0
	cmpw 7,0,30
	bgt+ 7,.L1205
.LVL1856:
.L1203:
.LBB7525:
.LBB7526:
.LBB7527:
.LBB7528:
	.loc 11 241 0
	lis 4,.LC139@ha
	mr 3,29
	la 4,.LC139@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1857:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1223
.LVL1858:
.LBB7529:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1859:
.L1206:
.LBE7529:
.LBE7528:
.LBE7527:
	.loc 11 257 0
	bl atoi
.LBE7526:
.LBE7525:
	.loc 4 3795 0
	cmpwi 7,3,0
	bne- 7,.L1198
	.loc 4 4268 0
	addis 11,31,0x1
	lwz 9,-32192(11)
	lwz 0,-32196(11)
.LBB7533:
.LBB7534:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L1198
	cmpw 7,0,9
	beq- 7,.L1198
	.loc 9 271 0
	lwz 30,12(9)
.LVL1860:
.LBE7534:
.LBE7533:
	.loc 4 3797 0
	cmpwi 7,30,0
	beq- 7,.L1198
.LBB7535:
.LBB7536:
.LBB7537:
.LBB7538:
	.loc 11 241 0
	lis 25,.LC141@ha
.LBE7538:
.LBE7537:
.LBE7536:
.LBE7535:
	.loc 4 3819 0
	lis 27,.LC140@ha
	.loc 4 3820 0
	lis 28,EV_Remove@ha
.LBB7552:
	.loc 4 4268 0
	lis 29,_ZN4idAI4TypeE@ha
.LVL1861:
.LBE7552:
.LBB7557:
	lis 26,_ZN12idProjectile4TypeE@ha
.LBE7557:
.LBB7565:
.LBB7548:
.LBB7544:
.LBB7540:
	.loc 11 241 0
	la 25,.LC141@l(25)
	.loc 11 245 0
	lis 24,.LC59@ha
.LBE7540:
.LBE7544:
.LBE7548:
.LBE7565:
	.loc 4 3819 0
	la 27,.LC140@l(27)
	.loc 4 3820 0
	la 28,EV_Remove@l(28)
.LVL1862:
.L1225:
	.loc 4 3798 0
	lbz 0,160(30)
	cmpwi 7,0,0
	bne- 7,.L1207
	.loc 4 3798 0 is_stmt 0 discriminator 1
	lwz 0,192(30)
	andis. 9,0,64
	beq- 0,.L1232
.L1207:
	.loc 4 4268 0 is_stmt 1
	lwz 9,16(30)
	lwz 0,12(30)
.LBB7566:
.LBB7567:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L1198
	cmpw 7,0,9
	beq- 7,.L1198
	.loc 9 271 0
	lwz 30,12(9)
.LVL1863:
.LBE7567:
.LBE7566:
	.loc 4 3797 0
	cmpwi 7,30,0
	bne+ 7,.L1225
	b .L1198
.LVL1864:
.L1232:
.LBB7568:
.LBB7553:
	.loc 5 340 0
	lwz 9,0(30)
	mr 3,30
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1865:
.LBE7553:
	.loc 4 4268 0
	la 9,_ZN4idAI4TypeE@l(29)
	lwz 0,56(3)
.LBB7556:
.LBB7554:
.LBB7555:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1208
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1208
.LVL1866:
.LBE7555:
.LBE7554:
.LBE7556:
.LBE7568:
	.loc 4 3805 0
	mr 3,30
.LVL1867:
	bl _ZNK4idAI8GetEnemyEv
	cmpwi 7,3,0
	beq- 7,.L1207
	.loc 4 3805 0 is_stmt 0 discriminator 2
	mr 3,30
	bl _ZNK8idEntity8IsActiveEv
	cmpwi 7,3,0
	bne- 7,.L1210
	b .L1207
.LVL1868:
.L1208:
.LBB7569:
.LBB7558:
	.loc 5 340 0 is_stmt 1
	lwz 9,0(30)
	mr 3,30
.LVL1869:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1870:
.LBE7558:
	.loc 4 4268 0
	la 9,_ZN12idProjectile4TypeE@l(26)
	lwz 0,56(3)
.LBB7563:
.LBB7559:
.LBB7560:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1219
.L1211:
.LVL1871:
.LBE7560:
.LBE7559:
.LBE7563:
.LBE7569:
.LBB7570:
.LBB7549:
.LBB7545:
.LBB7541:
	.loc 11 241 0
	addi 3,30,100
.LVL1872:
	mr 4,25
	bl _ZNK6idDict7FindKeyEPKc
.LVL1873:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1233
.LVL1874:
.LBB7539:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1875:
.L1221:
.LBE7539:
.LBE7541:
.LBE7545:
	.loc 11 257 0
	bl atoi
.LBE7549:
.LBE7570:
	.loc 4 3811 0
	cmpwi 7,3,0
	beq- 7,.L1207
	b .L1210
.LVL1876:
.L1219:
.LBB7571:
.LBB7564:
.LBB7562:
.LBB7561:
	.loc 5 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1211
.LVL1877:
.L1210:
.LBE7561:
.LBE7562:
.LBE7564:
.LBE7571:
	.loc 4 3819 0
	mr 3,30
	bl _ZNK8idEntity7GetNameEv
	mr 4,27
	mr 5,3
	mr 3,31
	crxor 6,6,6
	bl _ZNK11idGameLocal7DPrintfEPKcz
	.loc 4 3820 0
	mr 3,30
	mr 4,28
	li 5,0
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
	b .L1207
.LVL1878:
.L1231:
.LBB7572:
.LBB7523:
.LBB7521:
.LBB7519:
	.loc 11 241 0 discriminator 1
	lis 28,.LC134@ha
	mr 3,29
.LVL1879:
	la 28,.LC134@l(28)
	mr 4,28
	bl _ZNK6idDict7FindKeyEPKc
.LVL1880:
	.loc 11 242 0 discriminator 1
	cmpwi 0,3,0
	beq- 0,.L1222
.LVL1881:
.LBB7518:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1882:
.L1202:
.LBE7518:
.LBE7519:
.LBE7521:
	.loc 11 257 0
	bl atoi
.LBE7523:
.LBE7572:
	.loc 4 3772 0
	cmpwi 7,3,0
	beq- 7,.L1201
	.loc 4 3773 0 discriminator 4
	lwz 31,2116(30)
.LVL1883:
.LBB7573:
.LBB7574:
	.loc 11 197 0 discriminator 4
	lis 3,.LC135@ha
	li 4,0
	la 3,.LC135@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
.LBE7574:
.LBE7573:
	.loc 4 3773 0 discriminator 4
	addi 31,31,100
.LVL1884:
.LBB7576:
.LBB7575:
	.loc 11 197 0 discriminator 4
	mr 5,3
	mr 4,28
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
.LBE7575:
.LBE7576:
	.loc 4 3774 0 discriminator 4
	lis 9,cvarSystem@ha
	lwz 3,cvarSystem@l(9)
	lis 4,.LC136@ha
	la 4,.LC136@l(4)
	li 5,0
	lwz 9,0(3)
	lwz 0,40(9)
	lis 9,.LC137@ha
	lfs 1,.LC137@l(9)
	mtctr 0
	bctrl
	.loc 4 3775 0 discriminator 4
	lis 9,cmdSystem@ha
	lwz 3,cmdSystem@l(9)
	lis 5,.LC138@ha
	li 4,2
	la 5,.LC138@l(5)
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 3776 0 discriminator 4
	li 0,0
	stb 0,1993(30)
	.loc 4 3777 0 discriminator 4
	b .L1198
.LVL1885:
.L1223:
.LBB7577:
.LBB7532:
.LBB7531:
.LBB7530:
	.loc 11 245 0
	lis 3,.LC59@ha
.LVL1886:
	la 3,.LC59@l(3)
	b .L1206
.LVL1887:
.L1230:
.LBE7530:
.LBE7531:
.LBE7532:
.LBE7577:
.LBB7578:
	.loc 4 3826 0
	lwz 0,2004(30)
	.loc 4 3829 0
	lis 9,cvarSystem@ha
	.loc 4 3825 0
	stb 29,1992(30)
	.loc 4 3829 0
	lis 4,.LC136@ha
	.loc 4 3826 0
	addic 0,0,16
	.loc 4 3829 0
	lwz 3,cvarSystem@l(9)
.LVL1888:
	.loc 4 3826 0
	stw 0,1984(30)
	.loc 4 3829 0
	la 4,.LC136@l(4)
	li 5,0
	lwz 9,0(3)
	lwz 0,40(9)
	lis 9,.LC137@ha
	lfs 1,.LC137@l(9)
	mtctr 0
	bctrl
.LVL1889:
.LBB7579:
	.loc 4 3832 0
	lwz 0,48(31)
	cmpwi 7,0,0
	ble- 7,.L1198
	.loc 4 3757 0
	addi 29,31,528
.LVL1890:
.LBE7579:
.LBE7578:
.LBB7584:
.LBB7550:
.LBB7546:
.LBB7542:
	.loc 4 3832 0
	li 30,0
.LVL1891:
.L1214:
.LBE7542:
.LBE7546:
.LBE7550:
.LBE7584:
.LBB7585:
.LBB7583:
.LBB7580:
	.loc 4 3833 0
	lwzu 3,4(29)
.LBE7580:
	.loc 4 3832 0
	addi 30,30,1
.LBB7582:
	.loc 4 3833 0
	cmpwi 7,3,0
	beq- 7,.L1213
.LBB7581:
	.loc 4 3835 0
	bl _ZN8idPlayer13ExitCinematicEv
	lwz 0,48(31)
.L1213:
.LVL1892:
.LBE7581:
.LBE7582:
	.loc 4 3832 0
	cmpw 7,0,30
	bgt+ 7,.L1214
	b .L1198
.LVL1893:
.L1222:
.LBE7583:
.LBE7585:
.LBB7586:
.LBB7524:
.LBB7522:
.LBB7520:
	.loc 11 245 0
	lis 3,.LC59@ha
.LVL1894:
	la 3,.LC59@l(3)
	b .L1202
.LVL1895:
.L1233:
.LBE7520:
.LBE7522:
.LBE7524:
.LBE7586:
.LBB7587:
.LBB7551:
.LBB7547:
.LBB7543:
	la 3,.LC59@l(24)
.LVL1896:
	b .L1221
.LBE7543:
.LBE7547:
.LBE7551:
.LBE7587:
.LBE7588:
.LBE7589:
	.cfi_endproc
.LFE2951:
	.size	_ZN11idGameLocal9SetCameraEP8idCamera, .-_ZN11idGameLocal9SetCameraEP8idCamera
	.align 2
	.globl _ZNK11idGameLocal9GetCameraEv
	.type	_ZNK11idGameLocal9GetCameraEv, @function
_ZNK11idGameLocal9GetCameraEv:
.LFB2952:
	.loc 4 3846 0
	.cfi_startproc
.LVL1897:
	.loc 4 3847 0
	addis 3,3,0x25
.LVL1898:
	.loc 4 3848 0
	lwz 3,2116(3)
.LVL1899:
	blr
	.cfi_endproc
.LFE2952:
	.size	_ZNK11idGameLocal9GetCameraEv, .-_ZNK11idGameLocal9GetCameraEv
	.align 2
	.globl _ZN11idGameLocal13SkipCinematicEv
	.type	_ZN11idGameLocal13SkipCinematicEv, @function
_ZN11idGameLocal13SkipCinematicEv:
.LFB2953:
	.loc 4 3855 0
	.cfi_startproc
.LVL1900:
	mflr 0
	stwu 1,-32(1)
.LCFI273:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	.loc 4 3856 0
	addis 31,3,0x25
	.cfi_offset 31, -4
	.loc 4 3855 0
	stw 0,36(1)
	stw 29,20(1)
	stw 30,24(1)
	.loc 4 3856 0
	lwz 3,2116(31)
.LVL1901:
	cmpwi 7,3,0
	beq- 7,.L1236
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1902:
.LBB7608:
.LBB7609:
.LBB7610:
.LBB7611:
	.loc 11 241 0
	lis 30,.LC134@ha
	addi 3,3,100
	la 30,.LC134@l(30)
	mr 4,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL1903:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1241
.LVL1904:
.LBB7612:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1905:
.L1237:
.LBE7612:
.LBE7611:
.LBE7610:
	.loc 11 257 0
	bl atoi
.LBE7609:
.LBE7608:
	.loc 4 3857 0
	cmpwi 7,3,0
	bne- 7,.L1244
.LVL1906:
	.loc 4 3865 0
	lwz 3,2116(31)
.LBB7616:
.LBB7617:
.LBB7618:
.LBB7619:
	.loc 11 241 0
	lis 4,.LC142@ha
	la 4,.LC142@l(4)
	addi 3,3,100
	bl _ZNK6idDict7FindKeyEPKc
.LVL1907:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1242
.LVL1908:
.LBB7620:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1909:
.L1240:
.LBE7620:
.LBE7619:
.LBE7618:
	.loc 11 257 0
	bl atoi
.LBE7617:
.LBE7616:
	.loc 4 3865 0
	cmpwi 7,3,0
	bne- 7,.L1245
.LVL1910:
.L1236:
	.loc 4 3872 0
	lbz 0,1993(31)
	.loc 4 3877 0
	li 3,1
	.loc 4 3872 0
	cmpwi 7,0,0
	bne- 7,.L1239
.LBB7624:
.LBB7625:
	.loc 7 144 0
	lis 9,g_cinematicMaxSkipTime+44@ha
.LBE7625:
.LBE7624:
	.loc 4 3873 0
	stb 3,1993(31)
.LVL1911:
.LBB7627:
.LBB7626:
	.loc 7 144 0
	lwz 9,g_cinematicMaxSkipTime+44@l(9)
.LBE7626:
.LBE7627:
.LBB7628:
.LBB7629:
	.loc 19 825 0
	addi 11,1,8
.LBE7629:
.LBE7628:
	.loc 4 3874 0
	lfs 0,40(9)
	lis 9,_ZN6idMath8M_SEC2MSE@ha
	lfs 13,_ZN6idMath8M_SEC2MSE@l(9)
	lis 9,.LANCHOR0+2426836@ha
	lwz 9,.LANCHOR0+2426836@l(9)
	fmuls 0,13,0
.LBB7631:
.LBB7630:
	.loc 19 825 0
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 0,8(1)
.LBE7630:
.LBE7631:
	.loc 4 3874 0
	add 0,9,0
	stw 0,1988(31)
.LVL1912:
.L1239:
	.loc 4 3878 0
	lwz 0,36(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1913:
	addi 1,1,32
	.cfi_remember_state
.LCFI274:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1914:
.L1244:
.LCFI275:
	.cfi_restore_state
	.loc 4 3858 0
	lwz 29,2116(31)
.LBB7632:
.LBB7633:
	.loc 11 197 0
	lis 3,.LC135@ha
	li 4,0
	la 3,.LC135@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
.LBE7633:
.LBE7632:
	.loc 4 3858 0
	addi 29,29,100
.LVL1915:
.LBB7635:
.LBB7634:
	.loc 11 197 0
	mr 5,3
	mr 4,30
	mr 3,29
	bl _ZN6idDict3SetEPKcS1_
.LBE7634:
.LBE7635:
	.loc 4 3859 0
	lis 9,cvarSystem@ha
	lwz 3,cvarSystem@l(9)
	lis 4,.LC136@ha
	la 4,.LC136@l(4)
	li 5,0
	lwz 9,0(3)
	lwz 0,40(9)
	lis 9,.LC137@ha
	lfs 1,.LC137@l(9)
	mtctr 0
	bctrl
	.loc 4 3860 0
	lis 9,cmdSystem@ha
	lwz 3,cmdSystem@l(9)
	lis 5,.LC138@ha
	li 4,2
	la 5,.LC138@l(5)
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 3861 0
	li 0,0
	stb 0,1993(31)
	.loc 4 3862 0
	li 3,0
	.loc 4 3878 0
	lwz 0,36(1)
	lwz 29,20(1)
.LVL1916:
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
.LVL1917:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI276:
	.cfi_def_cfa_offset 0
	blr
.LVL1918:
.L1245:
.LCFI277:
	.cfi_restore_state
	.loc 4 3866 0
	lwz 3,2116(31)
	lwz 9,0(3)
	lwz 0,232(9)
	mtctr 0
	bctrl
	.loc 4 3867 0
	li 3,0
	b .L1239
.LVL1919:
.L1241:
.LBB7636:
.LBB7615:
.LBB7614:
.LBB7613:
	.loc 11 245 0
	lis 3,.LC59@ha
.LVL1920:
	la 3,.LC59@l(3)
	b .L1237
.LVL1921:
.L1242:
.LBE7613:
.LBE7614:
.LBE7615:
.LBE7636:
.LBB7637:
.LBB7623:
.LBB7622:
.LBB7621:
	lis 3,.LC59@ha
.LVL1922:
	la 3,.LC59@l(3)
	b .L1240
.LBE7621:
.LBE7622:
.LBE7623:
.LBE7637:
	.cfi_endproc
.LFE2953:
	.size	_ZN11idGameLocal13SkipCinematicEv, .-_ZN11idGameLocal13SkipCinematicEv
	.align 2
	.globl _ZN11idGameLocal15SpreadLocationsEv
	.type	_ZN11idGameLocal15SpreadLocationsEv, @function
_ZN11idGameLocal15SpreadLocationsEv:
.LFB2954:
	.loc 4 3888 0
	.cfi_startproc
.LVL1923:
	stwu 1,-96(1)
.LCFI278:
	.cfi_def_cfa_offset 96
	mflr 0
	mfcr 12
	stw 25,68(1)
.LBB7664:
	.loc 4 3892 0
	lis 25,gameRenderWorld@ha
	.cfi_offset 25, -28
	.cfi_register 70, 12
	.cfi_register 65, 0
	lwz 9,gameRenderWorld@l(25)
.LBE7664:
	.loc 4 3888 0
	stw 12,28(1)
	stw 23,60(1)
	mr 23,3
	.cfi_offset 23, -36
	.cfi_offset 70, -68
	stw 26,72(1)
.LBB7714:
	.loc 4 3892 0
	mr 3,9
.LVL1924:
.LBE7714:
	.loc 4 3888 0
	stw 27,76(1)
.LBB7715:
	.loc 4 3893 0
	addis 26,23,0x25
	.cfi_offset 27, -20
	.cfi_offset 26, -24
.LBE7715:
	.loc 4 3888 0
	stw 31,92(1)
	stw 0,100(1)
	stw 16,32(1)
	stw 17,36(1)
	stw 18,40(1)
	stw 19,44(1)
	stw 20,48(1)
	stw 21,52(1)
	stw 22,56(1)
	stw 24,64(1)
	stw 28,80(1)
	stw 29,84(1)
	stw 30,88(1)
.LBB7716:
	.loc 4 3892 0
	lwz 11,0(9)
	lwz 0,100(11)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 24, -32
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	mtctr 0
	bctrl
	.loc 4 3893 0
	slwi 31,3,2
	.loc 4 3892 0
	mr 27,3
.LVL1925:
	.loc 4 3893 0
	mr 3,31
.LVL1926:
	bl _Znaj
	.loc 4 3894 0
	li 4,0
	.loc 4 3893 0
	stw 3,2112(26)
	.loc 4 3894 0
	mr 5,31
	bl memset
	.loc 4 4268 0
	addis 11,23,0x1
	lwz 9,-32192(11)
	lwz 0,-32196(11)
.LBB7665:
.LBB7666:
.LBB7667:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L1246
	cmpw 7,0,9
	beq- 7,.L1246
	.loc 9 271 0
	lwz 31,12(9)
.LVL1927:
.LBE7667:
.LBE7666:
	.loc 4 3897 0
	cmpwi 7,31,0
	beq- 7,.L1246
	lis 28,_ZN16idLocationEntity4TypeE@ha
.LBB7668:
.LBB7669:
.LBB7670:
	.loc 11 262 0
	lis 21,.LC143@ha
.LBE7670:
.LBE7669:
.LBB7674:
.LBB7675:
	.loc 11 241 0
	lis 22,.LC63@ha
.LBE7675:
.LBE7674:
	.loc 4 3912 0
	lis 20,.LC146@ha
	.loc 4 3908 0
	lis 19,.LC145@ha
	.loc 4 3904 0
	lis 17,.LC144@ha
.LBB7680:
	.loc 4 3918 0
	cmpwi 4,27,0
	la 28,_ZN16idLocationEntity4TypeE@l(28)
.LBE7680:
.LBB7681:
.LBB7671:
	.loc 11 262 0
	la 21,.LC143@l(21)
.LBE7671:
.LBE7681:
.LBB7682:
.LBB7677:
	.loc 11 241 0
	la 22,.LC63@l(22)
.LBE7677:
.LBE7682:
	.loc 4 3912 0
	la 20,.LC146@l(20)
.LBB7683:
.LBB7684:
	.loc 11 245 0
	lis 18,.LC3@ha
.LBE7684:
.LBE7683:
	.loc 4 3908 0
	la 19,.LC145@l(19)
	.loc 4 3904 0
	la 17,.LC144@l(17)
.LVL1928:
.L1257:
.LBB7689:
.LBB7690:
	.loc 5 340 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1929:
.LBB7691:
.LBB7692:
	.loc 5 311 0
	lwz 9,56(28)
.LBE7692:
.LBE7691:
.LBE7690:
	.loc 4 4268 0
	lwz 0,56(3)
.LBB7695:
.LBB7694:
.LBB7693:
	.loc 5 311 0
	cmpw 7,0,9
	blt- 7,.L1248
	lwz 9,60(28)
	cmpw 7,0,9
	bgt- 7,.L1248
.LBE7693:
.LBE7694:
.LBE7695:
.LBE7689:
	.loc 4 3901 0
	addi 30,31,100
.LVL1930:
.LBB7696:
.LBB7672:
	.loc 11 262 0
	mr 4,21
	li 5,0
	addi 6,1,8
	mr 3,30
.LVL1931:
.LBE7672:
.LBE7696:
	.loc 4 3902 0
	la 24,gameRenderWorld@l(25)
.LBB7697:
.LBB7673:
	.loc 11 262 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LBE7673:
.LBE7697:
	.loc 4 3902 0
	lwz 3,gameRenderWorld@l(25)
	addi 4,1,8
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
.LVL1932:
	.loc 4 3903 0
	mr. 29,3
	blt- 0,.L1263
	.loc 4 3907 0
	cmpw 7,27,29
	ble- 7,.L1264
.LVL1933:
.L1251:
	.loc 4 3910 0
	lwz 9,2112(26)
	slwi 16,29,2
	lwzx 0,9,16
	cmpwi 7,0,0
	beq- 7,.L1252
.LVL1934:
.LBB7698:
.LBB7678:
	.loc 11 241 0
	mr 3,30
	mr 4,22
	bl _ZNK6idDict7FindKeyEPKc
.LVL1935:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1259
.LVL1936:
.LBB7676:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL1937:
.L1253:
.LBE7676:
.LBE7678:
.LBE7698:
	.loc 4 3912 0
	lwz 9,2112(26)
.LBB7699:
.LBB7686:
	.loc 11 241 0
	mr 4,22
.LBE7686:
.LBE7699:
	.loc 4 3912 0
	lwzx 3,9,16
.LVL1938:
.LBB7700:
.LBB7687:
	.loc 11 241 0
	addi 3,3,100
	bl _ZNK6idDict7FindKeyEPKc
.LVL1939:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1260
.LVL1940:
.LBB7685:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 6,4(9)
.LVL1941:
.L1254:
.LBE7685:
.LBE7687:
.LBE7700:
	.loc 4 3912 0
	mr 3,23
.LVL1942:
	mr 4,20
	mr 5,30
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LVL1943:
.L1248:
.LBB7701:
	.loc 4 4268 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBE7701:
.LBE7668:
.LBB7710:
.LBB7711:
	.loc 9 268 0
	cmpwi 7,9,0
	beq- 7,.L1246
	cmpw 7,0,9
	beq- 7,.L1246
	.loc 9 271 0
	lwz 31,12(9)
.LVL1944:
.LBE7711:
.LBE7710:
	.loc 4 3897 0
	cmpwi 7,31,0
	bne+ 7,.L1257
.LVL1945:
.L1246:
.LBE7665:
.LBE7716:
	.loc 4 3927 0
	lwz 0,100(1)
	lwz 12,28(1)
	mtlr 0
	lwz 16,32(1)
	lwz 17,36(1)
	mtcrf 8,12
	lwz 18,40(1)
	lwz 19,44(1)
	lwz 20,48(1)
	lwz 21,52(1)
	lwz 22,56(1)
	lwz 23,60(1)
.LVL1946:
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
.LVL1947:
	lwz 27,76(1)
.LVL1948:
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI279:
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
	.cfi_restore 17
	.cfi_restore 16
	blr
.LVL1949:
.L1252:
.LCFI280:
	.cfi_restore_state
.LBB7717:
.LBB7713:
.LBB7712:
	.loc 4 3915 0
	stwx 31,9,16
.LVL1950:
.LBB7702:
	.loc 4 3918 0
	ble- 4,.L1248
	li 30,0
.LVL1951:
.L1256:
	.loc 4 3919 0
	cmpw 7,30,29
	.loc 4 3922 0
	mr 5,30
	mr 4,29
	li 6,2
	.loc 4 3919 0
	beq- 7,.L1255
	.loc 4 3922 0
	lwz 3,0(24)
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	bctrl
	.loc 4 3923 0
	slwi 0,30,2
	.loc 4 3922 0
	cmpwi 7,3,0
	beq- 7,.L1255
	.loc 4 3923 0
	lwz 9,2112(26)
	stwx 31,9,0
.L1255:
	.loc 4 3918 0
	addi 30,30,1
.LVL1952:
	cmpw 7,30,27
	bne+ 7,.L1256
	b .L1248
.LVL1953:
.L1264:
.LBE7702:
	.loc 4 3908 0
	mr 3,23
	mr 4,19
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1251
.L1263:
.LVL1954:
.LBB7703:
.LBB7704:
	.loc 11 241 0
	mr 3,30
	mr 4,22
	bl _ZNK6idDict7FindKeyEPKc
.LVL1955:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1258
.LVL1956:
.LBB7705:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL1957:
.L1250:
.LBE7705:
.LBE7704:
.LBE7703:
	.loc 4 3904 0
	mr 3,23
.LVL1958:
	mr 4,17
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 3905 0
	b .L1248
.LVL1959:
.L1260:
.LBB7707:
.LBB7688:
	.loc 11 245 0
	la 6,.LC3@l(18)
	b .L1254
.LVL1960:
.L1259:
.LBE7688:
.LBE7707:
.LBB7708:
.LBB7679:
	la 30,.LC3@l(18)
.LVL1961:
	b .L1253
.LVL1962:
.L1258:
.LBE7679:
.LBE7708:
.LBB7709:
.LBB7706:
	la 5,.LC3@l(18)
	b .L1250
.LBE7706:
.LBE7709:
.LBE7712:
.LBE7713:
.LBE7717:
	.cfi_endproc
.LFE2954:
	.size	_ZN11idGameLocal15SpreadLocationsEv, .-_ZN11idGameLocal15SpreadLocationsEv
	.align 2
	.globl _ZN11idGameLocal16LocationForPointERK6idVec3
	.type	_ZN11idGameLocal16LocationForPointERK6idVec3, @function
_ZN11idGameLocal16LocationForPointERK6idVec3:
.LFB2955:
	.loc 4 3937 0
	.cfi_startproc
.LVL1963:
	mflr 0
	stwu 1,-32(1)
.LCFI281:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,3
	.cfi_offset 27, -20
	stw 30,24(1)
.LBB7718:
	.loc 4 3938 0
	addis 30,3,0x25
	.cfi_offset 30, -8
.LBE7718:
	.loc 4 3937 0
	stw 31,28(1)
.LBB7719:
	.loc 4 3940 0
	li 31,0
	.cfi_offset 31, -4
.LBE7719:
	.loc 4 3937 0
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
.LBB7720:
	.loc 4 3938 0
	lwz 0,2112(30)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1266
	.loc 4 3943 0
	lis 29,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(29)
.LVL1964:
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
.LVL1965:
	.loc 4 3944 0
	mr. 28,3
	blt- 0,.L1266
	.loc 4 3947 0
	lwz 3,gameRenderWorld@l(29)
.LVL1966:
	lwz 9,0(3)
	lwz 0,100(9)
	mtctr 0
	bctrl
	cmpw 7,28,3
	bge- 7,.L1270
.L1267:
	.loc 4 3951 0
	lwz 9,2112(30)
	slwi 28,28,2
.LVL1967:
	lwzx 31,9,28
.L1266:
.LBE7720:
	.loc 4 3952 0
	lwz 0,36(1)
	mr 3,31
	lwz 27,12(1)
.LVL1968:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL1969:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI282:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1970:
.L1270:
.LCFI283:
	.cfi_restore_state
.LBB7721:
	.loc 4 3948 0
	lis 4,.LC147@ha
	mr 3,27
	la 4,.LC147@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1267
.LBE7721:
	.cfi_endproc
.LFE2955:
	.size	_ZN11idGameLocal16LocationForPointERK6idVec3, .-_ZN11idGameLocal16LocationForPointERK6idVec3
	.align 2
	.globl _ZN11idGameLocal14SetPortalStateEii
	.type	_ZN11idGameLocal14SetPortalStateEii, @function
_ZN11idGameLocal14SetPortalStateEii:
.LFB2956:
	.loc 4 3959 0
	.cfi_startproc
.LVL1971:
	stwu 1,-8248(1)
.LCFI284:
	.cfi_def_cfa_offset 8248
	mflr 0
	stw 29,8236(1)
.LBB7722:
	.loc 4 3963 0
	lis 29,.LANCHOR0@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 4 3960 0
	addi 3,1,8
.LVL1972:
	.loc 4 3963 0
	la 29,.LANCHOR0@l(29)
.LBE7722:
	.loc 4 3959 0
	stw 0,8252(1)
	stw 30,8240(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,8244(1)
	.loc 4 3959 0
	mr 31,5
	.cfi_offset 31, -4
.LBB7743:
	.loc 4 3960 0
	bl _ZN8idBitMsgC1Ev
.LVL1973:
	.loc 4 3963 0
	addis 9,29,0x25
	lbz 0,2018(9)
	cmpwi 7,0,0
	beq- 7,.L1274
	.loc 4 3970 0
	lis 9,gameRenderWorld@ha
	mr 4,30
	lwz 3,gameRenderWorld@l(9)
	mr 5,31
	lwz 9,0(3)
	lwz 0,88(9)
	mtctr 0
	bctrl
.LBE7743:
	.loc 4 3971 0
	lwz 0,8252(1)
	lwz 29,8236(1)
	mtlr 0
	lwz 30,8240(1)
.LVL1974:
	lwz 31,8244(1)
.LVL1975:
	addi 1,1,8248
	.cfi_remember_state
.LCFI285:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1976:
.L1274:
.LCFI286:
	.cfi_restore_state
.LBB7744:
.LBB7723:
.LBB7724:
	.file 25 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/BitMsg.h"
	.loc 25 156 0
	addi 0,1,40
.LBE7724:
.LBE7723:
.LBB7729:
.LBB7730:
	.loc 25 284 0
	addi 3,1,8
.LVL1977:
.LBE7730:
.LBE7729:
.LBB7734:
.LBB7725:
	.loc 25 156 0
	stw 0,8(1)
.LBE7725:
.LBE7734:
.LBB7735:
.LBB7731:
	.loc 25 284 0
	li 5,8
.LBE7731:
.LBE7735:
.LBB7736:
.LBB7726:
	.loc 25 157 0
	stw 0,12(1)
.LBE7726:
.LBE7736:
.LBB7737:
.LBB7732:
	.loc 25 284 0
	li 4,19
.LBE7732:
.LBE7737:
.LBB7738:
.LBB7727:
	.loc 25 158 0
	li 0,8192
.LBE7727:
.LBE7738:
	.loc 4 3967 0
	addis 29,29,0x27
.LBB7739:
.LBB7728:
	.loc 25 158 0
	stw 0,16(1)
.LVL1978:
.LBE7728:
.LBE7739:
.LBB7740:
.LBB7733:
	.loc 25 284 0
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1979:
.LBE7733:
.LBE7740:
.LBB7741:
.LBB7742:
	.loc 25 296 0
	addi 3,1,8
.LVL1980:
	mr 4,30
	li 5,32
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1981:
.LBE7742:
.LBE7741:
	.loc 4 3967 0
	lwz 5,6572(29)
	addi 3,1,8
.LVL1982:
	mr 4,31
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1983:
	.loc 4 3968 0
	lis 9,networkSystem@ha
	lwz 3,networkSystem@l(9)
	addi 5,1,8
.LVL1984:
	li 4,-1
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL1985:
	.loc 4 3970 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
	mr 4,30
	mr 5,31
	lwz 9,0(3)
	lwz 0,88(9)
	mtctr 0
	bctrl
.LBE7744:
	.loc 4 3971 0
	lwz 0,8252(1)
	lwz 29,8236(1)
	mtlr 0
	lwz 30,8240(1)
.LVL1986:
	lwz 31,8244(1)
.LVL1987:
	addi 1,1,8248
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI287:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2956:
	.size	_ZN11idGameLocal14SetPortalStateEii, .-_ZN11idGameLocal14SetPortalStateEii
	.align 2
	.globl _ZN11idGameLocal22RandomizeInitialSpawnsEv
	.type	_ZN11idGameLocal22RandomizeInitialSpawnsEv, @function
_ZN11idGameLocal22RandomizeInitialSpawnsEv:
.LFB2958:
	.loc 4 4000 0
	.cfi_startproc
.LVL1988:
	mflr 0
	stwu 1,-48(1)
.LCFI288:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
.LBB7768:
	.loc 4 4005 0
	addis 9,3,0x25
.LBE7768:
	.loc 4 4000 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
.LBB7824:
	.loc 4 4005 0
	lbz 0,2016(9)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1275
	.loc 4 4005 0 is_stmt 0 discriminator 1
	lbz 0,2018(9)
	cmpwi 7,0,0
	beq- 7,.L1296
.LVL1989:
.L1275:
.LBE7824:
	.loc 4 4039 0 is_stmt 1
	lwz 0,52(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL1990:
	addi 1,1,48
	.cfi_remember_state
.LCFI289:
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
.LVL1991:
.L1296:
.LCFI290:
	.cfi_restore_state
.LBB7825:
.LBB7769:
.LBB7770:
	.file 26 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/StaticList.h"
	.loc 26 120 0
	addis 29,3,0x26
.LBE7770:
.LBE7769:
.LBB7772:
.LBB7773:
	addis 30,3,0x27
.LBE7773:
.LBE7772:
	.loc 4 4011 0
	lis 27,.LC148@ha
.LBB7775:
.LBB7771:
	.loc 26 120 0
	stw 0,6440(29)
.LBE7771:
.LBE7775:
	.loc 4 4011 0
	la 27,.LC148@l(27)
.LBB7776:
.LBB7774:
	.loc 26 120 0
	stw 0,-26324(30)
.LVL1992:
.LBE7774:
.LBE7776:
	.loc 4 4011 0
	li 4,0
	mr 5,27
	bl _ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc
.LVL1993:
	.loc 4 4012 0
	mr. 28,3
	beq- 0,.L1277
	lis 25,.LC149@ha
.LBB7777:
.LBB7778:
	.loc 26 312 0
	addi 26,29,6440
	la 25,.LC149@l(25)
	li 24,0
.LBE7778:
.LBE7777:
.LBB7781:
.LBB7782:
.LBB7783:
.LBB7784:
	.loc 11 245 0
	lis 23,.LC59@ha
	b .L1281
.LVL1994:
.L1297:
.LBB7785:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1995:
.L1279:
.LBE7785:
.LBE7784:
.LBE7783:
	.loc 11 257 0
	bl atoi
.LBE7782:
.LBE7781:
	.loc 4 4017 0
	mr 4,28
	.loc 4 4014 0
	cmpwi 7,3,0
	.loc 4 4017 0
	mr 5,27
	mr 3,31
	.loc 4 4014 0
	beq- 7,.L1280
.LVL1996:
.LBB7792:
.LBB7793:
	.loc 26 311 0
	lwz 9,-26324(30)
	cmpwi 7,9,4095
	.loc 26 312 0
	slwi 0,9,2
	add 11,30,0
	.loc 26 313 0
	addi 9,9,1
	.loc 26 311 0
	bgt- 7,.L1280
	.loc 26 312 0
	stw 28,-26320(11)
	.loc 26 313 0
	stw 9,-26324(30)
.LVL1997:
.L1280:
.LBE7793:
.LBE7792:
	.loc 4 4017 0
	bl _ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc
.LVL1998:
	.loc 4 4012 0
	mr. 28,3
.LVL1999:
	beq- 0,.L1277
.LVL2000:
.L1281:
.LBB7794:
.LBB7779:
	.loc 26 311 0
	lwz 0,6440(29)
.LBE7779:
.LBE7794:
.LBB7795:
.LBB7790:
.LBB7788:
.LBB7786:
	.loc 11 241 0
	mr 4,25
	addi 3,28,100
.LVL2001:
.LBE7786:
.LBE7788:
.LBE7790:
.LBE7795:
.LBB7796:
.LBB7780:
	.loc 26 311 0
	cmpwi 7,0,4095
	.loc 26 312 0
	slwi 9,0,3
	add 9,26,9
	.loc 26 311 0
	bgt- 7,.L1278
	.loc 26 312 0
	stw 28,4(9)
	stw 24,8(9)
	.loc 26 313 0
	lwz 9,6440(29)
	addi 0,9,1
	stw 0,6440(29)
.L1278:
.LVL2002:
.LBE7780:
.LBE7796:
.LBB7797:
.LBB7791:
.LBB7789:
.LBB7787:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2003:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L1297
	.loc 11 245 0
	la 3,.LC59@l(23)
.LVL2004:
	b .L1279
.LVL2005:
.L1277:
.LBE7787:
.LBE7789:
.LBE7791:
.LBE7797:
	.loc 4 4268 0
	lwz 5,6440(29)
	.loc 4 4019 0
	cmpwi 7,5,0
	beq- 7,.L1298
	.loc 4 4023 0
	lis 28,common@ha
	lis 4,.LC151@ha
	lwz 3,common@l(28)
.LVL2006:
	la 4,.LC151@l(4)
	lwz 6,-26324(30)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 4268 0
	lwz 7,-26324(30)
	.loc 4 4025 0
	cmpwi 7,7,0
	beq- 7,.L1283
.L1287:
.LVL2007:
	.loc 4 4031 0 discriminator 1
	ble- 7,.L1285
.LBB7798:
.LBB7799:
.LBB7800:
.LBB7801:
.LBB7802:
	.loc 21 71 0
	slwi 11,7,2
	lis 5,0x1
	addi 11,11,-4
.LBE7802:
.LBE7801:
.LBE7800:
.LBE7799:
.LBE7798:
	.loc 4 4000 0
	addi 4,30,-26324
.LBB7817:
.LBB7814:
.LBB7811:
.LBB7807:
.LBB7803:
	.loc 21 71 0
	srwi 11,11,2
.LBE7803:
.LBE7807:
.LBE7811:
.LBE7814:
.LBE7817:
	.loc 4 4000 0
	addi 9,30,-26328
.LBB7818:
.LBB7815:
.LBB7812:
.LBB7808:
.LBB7804:
	.loc 21 71 0
	addi 11,11,1
	addis 6,31,0x1
	mtctr 11
	ori 5,5,3533
.LVL2008:
.L1290:
	.loc 21 71 0 is_stmt 0 discriminator 2
	lwz 8,-32064(6)
.LBE7804:
.LBE7808:
	.loc 21 79 0 is_stmt 1 discriminator 2
	addi 9,9,4
	.loc 4 4000 0 discriminator 2
	subf 10,31,9
.LBB7809:
.LBB7805:
	.loc 21 71 0 discriminator 2
	mullw 8,5,8
.LBE7805:
.LBE7809:
	.loc 4 4000 0 discriminator 2
	add 10,4,10
	addis 10,10,0xffd9
.LBB7810:
.LBB7806:
	.loc 21 71 0 discriminator 2
	addi 8,8,1
	.loc 21 72 0 discriminator 2
	rlwinm 0,8,0,17,31
	.loc 21 71 0 discriminator 2
	stw 8,-32064(6)
.LBE7806:
.LBE7810:
	.loc 21 79 0 discriminator 2
	divw 11,0,7
.LBE7812:
.LBE7815:
.LBE7818:
	.loc 4 4033 0 discriminator 2
	lwz 8,26328(10)
.LBB7819:
.LBB7816:
.LBB7813:
	.loc 21 79 0 discriminator 2
	mullw 11,11,7
	subf 11,11,0
.LVL2009:
.LBE7813:
.LBE7816:
.LBE7819:
	.loc 4 4034 0 discriminator 2
	slwi 11,11,2
	add 11,30,11
	lwz 0,-26320(11)
	stw 0,26328(10)
.LVL2010:
	.loc 4 4035 0 discriminator 2
	stw 8,-26320(11)
	.loc 4 4031 0 discriminator 2
	bdnz .L1290
.LVL2011:
.L1285:
	.loc 4 4038 0
	li 0,0
	stw 0,-9936(30)
.LBE7825:
	.loc 4 4039 0
	lwz 0,52(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL2012:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI291:
	.cfi_def_cfa_offset 0
	blr
.LVL2013:
.L1298:
.LCFI292:
	.cfi_restore_state
.LBB7826:
	.loc 4 4020 0
	lis 9,common@ha
	lis 4,.LC150@ha
	lwz 3,common@l(9)
.LVL2014:
	la 4,.LC150@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 4021 0
	b .L1275
.LVL2015:
.L1283:
	.loc 4 4026 0
	lwz 3,common@l(28)
	lis 4,.LC152@ha
	la 4,.LC152@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL2016:
	.loc 4 4268 0
	lwz 0,6440(29)
	.loc 4 4027 0
	lwz 7,-26324(30)
	cmpwi 7,0,0
	ble- 7,.L1295
.LBB7820:
.LBB7821:
	.loc 4 4028 0
	mtctr 0
.LBE7821:
.LBE7820:
	.loc 4 4027 0
	li 9,0
.LBB7823:
.LBB7822:
	.loc 4 4028 0
	addi 29,29,6440
.LVL2017:
.L1289:
	.loc 26 311 0 discriminator 2
	cmpwi 7,7,4095
	.loc 4 4028 0 discriminator 2
	slwi 0,9,3
	.loc 26 312 0 discriminator 2
	add 10,29,0
	slwi 0,7,2
	add 11,30,0
	.loc 26 311 0 discriminator 2
	bgt- 7,.L1288
	.loc 26 312 0
	lwz 0,4(10)
	.loc 26 313 0
	addi 7,7,1
	.loc 26 312 0
	stw 0,-26320(11)
	.loc 26 313 0
	stw 7,-26324(30)
.L1288:
.LBE7822:
.LBE7823:
	.loc 4 4027 0
	addi 9,9,1
.LVL2018:
	bdnz .L1289
.LVL2019:
.L1295:
	cmpwi 7,7,0
	b .L1287
.LBE7826:
	.cfi_endproc
.LFE2958:
	.size	_ZN11idGameLocal22RandomizeInitialSpawnsEv, .-_ZN11idGameLocal22RandomizeInitialSpawnsEv
	.align 2
	.globl _ZN11idGameLocal23SelectInitialSpawnPointEP8idPlayer
	.type	_ZN11idGameLocal23SelectInitialSpawnPointEP8idPlayer, @function
_ZN11idGameLocal23SelectInitialSpawnPointEP8idPlayer:
.LFB2959:
	.loc 4 4050 0
	.cfi_startproc
.LVL2020:
	mflr 0
	stwu 1,-96(1)
.LCFI293:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
.LBB7856:
	.loc 4 4057 0
	addis 9,3,0x25
.LBE7856:
	.loc 4 4050 0
	stw 25,44(1)
	mr 25,4
	.cfi_offset 25, -52
	stw 30,64(1)
	mr 30,3
	.cfi_offset 30, -32
	stw 0,100(1)
	stfd 29,72(1)
	stfd 30,80(1)
	stfd 31,88(1)
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 31,68(1)
.LBB7892:
	.loc 4 4057 0
	lbz 0,2016(9)
	.cfi_offset 31, -28
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.cfi_offset 20, -72
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L1324
.LVL2021:
.L1300:
	.loc 4 4058 0 discriminator 4
	lis 5,.LC153@ha
	mr 3,30
.LVL2022:
	li 4,0
	la 5,.LC153@l(5)
	bl _ZNK11idGameLocal18FindEntityUsingDefEP8idEntityPKc
.LVL2023:
	.loc 4 4059 0 discriminator 4
	mr. 31,3
	beq- 0,.L1325
.LVL2024:
.L1302:
.LBE7892:
	.loc 4 4109 0
	lwz 0,100(1)
	mr 3,31
	lwz 20,24(1)
	mtlr 0
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
.LVL2025:
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 29,72(1)
	lfd 30,80(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI294:
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
.LVL2026:
.L1324:
.LCFI295:
	.cfi_restore_state
.LBB7893:
	.loc 4 4268 0 discriminator 2
	addis 31,3,0x26
	lwz 4,6440(31)
.LVL2027:
	.loc 4 4057 0 discriminator 2
	cmpwi 1,4,0
	beq- 1,.L1300
	.loc 4 4064 0
	lbz 0,5267(25)
	cmpwi 7,0,0
	bne- 7,.L1322
	.loc 4 4067 0
	lbz 0,5276(25)
	cmpwi 7,0,0
	beq- 7,.L1303
	.loc 4 4067 0 is_stmt 0 discriminator 1
	addis 9,30,0x27
	lwz 11,-9936(9)
	lwz 0,-26324(9)
	cmpw 7,11,0
	blt- 7,.L1326
.L1303:
.LBE7893:
	.loc 4 4050 0 is_stmt 1
	li 0,4
.LBB7894:
	addi 24,30,528
.LBE7894:
	mtctr 0
	mr 9,24
.L1307:
.LBB7895:
	.loc 4 4073 0
	lwzu 0,4(9)
	cmpwi 7,0,0
	cmpw 6,25,0
	beq- 7,.L1304
	.loc 4 4073 0 is_stmt 0 discriminator 1
	bne- 6,.L1327
.L1304:
	.loc 4 4072 0 is_stmt 1
	bdnz .L1307
.LVL2028:
.L1322:
.LBB7857:
.LBB7858:
.LBB7859:
.LBB7860:
.LBB7861:
	.loc 21 71 0
	addis 30,30,0x1
	lis 9,0x1
	lwz 0,-32064(30)
	ori 9,9,3533
	mullw 9,9,0
	addi 9,9,1
	.loc 21 72 0
	rlwinm 0,9,0,17,31
	.loc 21 71 0
	stw 9,-32064(30)
.LVL2029:
.LBE7861:
.LBE7860:
	.loc 21 79 0
	divw 11,0,4
	mullw 4,11,4
	subf 0,4,0
.LBE7859:
.LBE7858:
.LBE7857:
	.loc 4 4080 0
	slwi 0,0,3
	add 31,31,0
.LVL2030:
	lwz 31,6444(31)
	b .L1302
.LVL2031:
.L1327:
	.loc 4 4084 0 discriminator 1
	ble- 1,.L1306
	.loc 4 4086 0
	lis 23,0x7fff
	.loc 4 4084 0
	li 28,0
	.loc 4 4085 0
	addi 22,31,6440
	.loc 4 4086 0
	ori 23,23,65535
.LBB7862:
	.loc 4 4268 0
	lis 26,_ZN8idPlayer4TypeE@ha
.LBE7862:
	.loc 4 4095 0
	lis 20,0x4330
	lis 21,.LC1@ha
.LVL2032:
.L1305:
	.loc 4 4085 0
	slwi 27,28,3
	.loc 4 4086 0
	mr 29,24
	.loc 4 4085 0
	add 27,22,27
	lwz 3,4(27)
	addi 27,27,4
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL2033:
	.loc 4 4086 0
	li 0,4
.LBB7868:
.LBB7869:
	.loc 17 424 0
	lfs 29,0(3)
.LVL2034:
	.loc 17 425 0
	lfs 30,4(3)
.LVL2035:
	.loc 17 426 0
	lfs 31,8(3)
.LVL2036:
.LBE7869:
.LBE7868:
	.loc 4 4086 0
	stw 0,16(1)
	stw 23,4(27)
.LVL2037:
.L1312:
	.loc 4 4088 0
	lwzu 9,4(29)
	cmpwi 7,9,0
.LBB7870:
.LBB7863:
	.loc 5 340 0
	mr 3,9
.LBE7863:
.LBE7870:
	.loc 4 4088 0
	beq- 7,.L1311
.LVL2038:
.LBB7871:
.LBB7866:
	.loc 5 340 0 discriminator 2
	lwz 9,0(9)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2039:
.LBE7866:
	.loc 4 4268 0 discriminator 2
	la 9,_ZN8idPlayer4TypeE@l(26)
	lwz 0,56(3)
.LBB7867:
.LBB7864:
.LBB7865:
	.loc 5 311 0 discriminator 2
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1311
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1311
.LBE7865:
.LBE7864:
.LBE7867:
.LBE7871:
	.loc 4 4089 0 is_stmt 1
	lwz 9,0(29)
	.loc 4 4088 0
	cmpw 7,9,25
	.loc 4 4094 0
	mr 3,9
.LVL2040:
	.loc 4 4088 0
	beq- 7,.L1311
	.loc 4 4088 0 is_stmt 0 discriminator 4
	lbz 0,5267(9)
	cmpwi 7,0,0
	bne- 7,.L1311
	.loc 4 4094 0 is_stmt 1
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL2041:
	.loc 4 4095 0
	lwz 0,4(27)
.LBB7872:
.LBB7873:
	.loc 17 431 0
	lfs 12,4(3)
.LBE7873:
.LBE7872:
	.loc 4 4096 0
	addi 9,27,4
.LBB7879:
.LBB7874:
	.loc 17 431 0
	lfs 13,0(3)
.LBE7874:
.LBE7879:
	.loc 4 4095 0
	xoris 0,0,0x8000
.LBB7880:
.LBB7875:
	.loc 17 431 0
	fsubs 12,30,12
	lfs 0,8(3)
	fsubs 13,29,13
.LBE7875:
.LBE7880:
	.loc 4 4095 0
	stw 0,12(1)
	stw 20,8(1)
.LBB7881:
.LBB7876:
	.loc 17 431 0
	fsubs 0,31,0
.LVL2042:
.LBE7876:
.LBE7881:
.LBB7882:
.LBB7883:
	.loc 17 636 0
	fmuls 12,12,12
.LVL2043:
.LBE7883:
.LBE7882:
	.loc 4 4095 0
	lfs 11,.LC1@l(21)
.LBB7884:
.LBB7877:
	.loc 17 636 0
	fmadds 13,13,13,12
.LVL2044:
.LBE7877:
.LBE7884:
	.loc 4 4095 0
	lfd 12,8(1)
	fsub 11,12,11
.LBB7885:
.LBB7878:
	.loc 17 636 0
	fmadds 0,0,0,13
.LVL2045:
.LBE7878:
.LBE7885:
	.loc 4 4095 0
	frsp 13,11
	fcmpu 7,13,0
	bng- 7,.L1311
	.loc 4 4096 0
	fctiwz 0,0
	stfiwx 0,0,9
.LVL2046:
.L1311:
	.loc 4 4087 0
	lwz 0,16(1)
	addic. 9,0,-1
	stw 9,16(1)
	bne+ 0,.L1312
	.loc 4 4268 0
	lwz 4,6440(31)
	.loc 4 4084 0
	addi 28,28,1
.LVL2047:
	cmpw 7,4,28
	bgt+ 7,.L1305
.LVL2048:
.L1306:
	.loc 4 4102 0
	lis 6,_ZN11idGameLocal15sortSpawnPointsEPKvS1_@ha
	addi 3,31,6444
	li 5,8
	la 6,_ZN11idGameLocal15sortSpawnPointsEPKvS1_@l(6)
	bl qsort
.LVL2049:
	.loc 4 4105 0
	lwz 0,6440(31)
.LVL2050:
.LBB7886:
.LBB7887:
	.loc 21 77 0
	li 9,0
	.loc 21 76 0
	srawi 0,0,1
	addze. 0,0
	beq- 0,.L1313
.LVL2051:
.LBB7888:
.LBB7889:
.LBB7890:
.LBB7891:
	.loc 21 71 0
	addis 30,30,0x1
.LVL2052:
	lis 11,0x1
	lwz 9,-32064(30)
	ori 11,11,3533
	mullw 11,11,9
	addi 11,11,1
	.loc 21 72 0
	rlwinm 9,11,0,17,31
	.loc 21 71 0
	stw 11,-32064(30)
.LBE7891:
.LBE7890:
	.loc 21 79 0
	divw 10,9,0
	mullw 0,10,0
	subf 9,0,9
.LVL2053:
.L1313:
	.loc 4 4106 0
	slwi 9,9,3
	add 31,31,9
.LVL2054:
	lwz 31,6444(31)
.LVL2055:
.LBE7889:
.LBE7888:
.LBE7887:
.LBE7886:
	.loc 4 4108 0
	b .L1302
.LVL2056:
.L1326:
	.loc 4 4068 0 discriminator 4
	addi 0,11,1
	slwi 11,11,2
	stw 0,-9936(9)
	add 9,9,11
	lwz 31,-26320(9)
	b .L1302
.LVL2057:
.L1325:
	.loc 4 4060 0
	lis 4,.LC154@ha
	mr 3,30
.LVL2058:
	la 4,.LC154@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1302
.LBE7895:
	.cfi_endproc
.LFE2959:
	.size	_ZN11idGameLocal23SelectInitialSpawnPointEP8idPlayer, .-_ZN11idGameLocal23SelectInitialSpawnPointEP8idPlayer
	.align 2
	.globl _ZN11idGameLocal21UpdateServerInfoFlagsEv
	.type	_ZN11idGameLocal21UpdateServerInfoFlagsEv, @function
_ZN11idGameLocal21UpdateServerInfoFlagsEv:
.LFB2960:
	.loc 4 4116 0
	.cfi_startproc
.LVL2059:
	mflr 0
	stwu 1,-24(1)
.LCFI296:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
.LBB7928:
.LBB7929:
	.loc 11 241 0
	lis 29,.LC155@ha
	.cfi_offset 29, -12
.LBE7929:
.LBE7928:
	.loc 4 4116 0
	stw 0,28(1)
	.loc 4 4117 0
	li 0,0
	.cfi_offset 65, 4
	.loc 4 4116 0
	stw 30,16(1)
	.loc 4 4117 0
	addis 30,3,0x25
	.cfi_offset 30, -8
	.loc 4 4116 0
	stw 31,20(1)
.LBB7934:
.LBB7931:
	.loc 11 241 0
	la 29,.LC155@l(29)
.LBE7931:
.LBE7934:
	.loc 4 4118 0
	addi 31,3,4
	.cfi_offset 31, -4
.LVL2060:
	.loc 4 4117 0
	stw 0,2012(30)
.LBB7935:
.LBB7932:
	.loc 11 241 0
	mr 3,31
.LVL2061:
	mr 4,29
	bl _ZNK6idDict7FindKeyEPKc
.LVL2062:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1342
.LVL2063:
.LBB7930:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2064:
.L1329:
.LBE7930:
.LBE7932:
.LBE7935:
	.loc 4 4118 0
	lis 4,.LC156@ha
	la 4,.LC156@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L1330
	.loc 4 4119 0
	li 0,1
	stw 0,2012(30)
.LVL2065:
.L1328:
	.loc 4 4137 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL2066:
	addi 1,1,24
	.cfi_remember_state
.LCFI297:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2067:
.L1330:
.LCFI298:
	.cfi_restore_state
.LBB7936:
.LBB7937:
	.loc 11 241 0
	mr 3,31
	mr 4,29
	bl _ZNK6idDict7FindKeyEPKc
.LVL2068:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1343
.LVL2069:
.LBB7938:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2070:
.L1332:
.LBE7938:
.LBE7937:
.LBE7936:
	.loc 4 4120 0
	lis 4,.LC157@ha
	la 4,.LC157@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L1333
	.loc 4 4121 0
	li 0,2
	stw 0,2012(30)
	.loc 4 4137 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL2071:
	lwz 31,20(1)
.LVL2072:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI299:
	.cfi_def_cfa_offset 0
	blr
.LVL2073:
.L1342:
.LCFI300:
	.cfi_restore_state
.LBB7940:
.LBB7933:
	.loc 11 245 0
	lis 3,.LC3@ha
.LVL2074:
	la 3,.LC3@l(3)
	b .L1329
.LVL2075:
.L1333:
.LBE7933:
.LBE7940:
.LBB7941:
.LBB7942:
	.loc 11 241 0
	mr 3,31
	mr 4,29
	bl _ZNK6idDict7FindKeyEPKc
.LVL2076:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1344
.LVL2077:
.LBB7943:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2078:
.L1334:
.LBE7943:
.LBE7942:
.LBE7941:
	.loc 4 4122 0
	lis 4,.LC158@ha
	la 4,.LC158@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L1335
	.loc 4 4123 0
	li 0,3
	stw 0,2012(30)
	b .L1328
.LVL2079:
.L1343:
.LBB7945:
.LBB7939:
	.loc 11 245 0
	lis 3,.LC3@ha
.LVL2080:
	la 3,.LC3@l(3)
	b .L1332
.LVL2081:
.L1335:
.LBE7939:
.LBE7945:
.LBB7946:
.LBB7947:
	.loc 11 241 0
	mr 3,31
	mr 4,29
	bl _ZNK6idDict7FindKeyEPKc
.LVL2082:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1345
.LVL2083:
.LBB7948:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2084:
.L1336:
.LBE7948:
.LBE7947:
.LBE7946:
	.loc 4 4124 0
	lis 4,.LC159@ha
	la 4,.LC159@l(4)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne- 7,.L1337
	.loc 4 4125 0
	li 0,4
	stw 0,2012(30)
.L1338:
.LVL2085:
.LBB7950:
.LBB7951:
.LBB7952:
.LBB7953:
	.loc 11 241 0
	lis 30,.LC160@ha
.LVL2086:
	mr 3,31
	la 30,.LC160@l(30)
	mr 4,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL2087:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1346
.LVL2088:
.LBB7954:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2089:
.L1339:
.LBE7954:
.LBE7953:
.LBE7952:
	.loc 11 253 0
	bl atoi
.LBE7951:
.LBE7950:
	.loc 4 4128 0
	cmpwi 7,3,0
	beq- 7,.L1348
.L1340:
.LVL2090:
.LBB7958:
.LBB7959:
.LBB7960:
.LBB7961:
	.loc 11 241 0
	lis 30,.LC162@ha
	mr 3,31
	la 30,.LC162@l(30)
	mr 4,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL2091:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1347
.LVL2092:
.LBB7962:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2093:
.L1341:
.LBE7962:
.LBE7961:
.LBE7960:
	.loc 11 253 0
	bl atoi
.LBE7959:
.LBE7958:
	.loc 4 4132 0
	cmpwi 7,3,0
	bgt+ 7,.L1328
	.loc 4 4133 0
	lis 9,common@ha
	lis 4,.LC163@ha
	lwz 3,common@l(9)
	la 4,.LC163@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL2094:
.LBB7966:
.LBB7967:
	.loc 11 193 0
	lis 3,.LC135@ha
	li 4,1
	la 3,.LC135@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,30
	mr 5,3
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
	b .L1328
.LVL2095:
.L1348:
.LBE7967:
.LBE7966:
	.loc 4 4129 0
	lis 9,common@ha
	lis 4,.LC161@ha
	lwz 3,common@l(9)
	la 4,.LC161@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL2096:
.LBB7968:
.LBB7969:
	.loc 11 193 0
	lis 3,.LC135@ha
	li 4,1
	la 3,.LC135@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,30
	mr 5,3
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
	b .L1340
.LVL2097:
.L1346:
.LBE7969:
.LBE7968:
.LBB7970:
.LBB7957:
.LBB7956:
.LBB7955:
	.loc 11 245 0
	lis 3,.LC59@ha
.LVL2098:
	la 3,.LC59@l(3)
	b .L1339
.LVL2099:
.L1347:
.LBE7955:
.LBE7956:
.LBE7957:
.LBE7970:
.LBB7971:
.LBB7965:
.LBB7964:
.LBB7963:
	lis 3,.LC59@ha
.LVL2100:
	la 3,.LC59@l(3)
	b .L1341
.LVL2101:
.L1337:
.LBE7963:
.LBE7964:
.LBE7965:
.LBE7971:
	.loc 4 4127 0
	lwz 0,2012(30)
	cmpwi 7,0,4
	beq+ 7,.L1338
	b .L1328
.LVL2102:
.L1344:
.LBB7972:
.LBB7944:
	.loc 11 245 0
	lis 3,.LC3@ha
.LVL2103:
	la 3,.LC3@l(3)
	b .L1334
.LVL2104:
.L1345:
.LBE7944:
.LBE7972:
.LBB7973:
.LBB7949:
	lis 3,.LC3@ha
.LVL2105:
	la 3,.LC3@l(3)
	b .L1336
.LBE7949:
.LBE7973:
	.cfi_endproc
.LFE2960:
	.size	_ZN11idGameLocal21UpdateServerInfoFlagsEv, .-_ZN11idGameLocal21UpdateServerInfoFlagsEv
	.align 2
	.globl _ZN11idGameLocal13SetServerInfoERK6idDict
	.type	_ZN11idGameLocal13SetServerInfoERK6idDict, @function
_ZN11idGameLocal13SetServerInfoERK6idDict:
.LFB2854:
	.loc 4 776 0
	.cfi_startproc
.LVL2106:
	stwu 1,-8248(1)
.LCFI301:
	.cfi_def_cfa_offset 8248
	mflr 0
	stw 31,8244(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB7974:
	.loc 4 777 0
	addi 3,1,8
.LVL2107:
.LBE7974:
	.loc 4 776 0
	stw 0,8252(1)
.LBB7983:
	.loc 4 777 0
	stw 4,8232(1)
	.cfi_offset 65, 4
	bl _ZN8idBitMsgC1Ev
.LVL2108:
	.loc 4 780 0
	lwz 4,8232(1)
	addi 3,31,4
	bl _ZN6idDictaSERKS_
	.loc 4 781 0
	mr 3,31
	.loc 4 783 0
	addis 31,31,0x25
.LVL2109:
	.loc 4 781 0
	bl _ZN11idGameLocal21UpdateServerInfoFlagsEv
.LVL2110:
	.loc 4 783 0
	lbz 0,2018(31)
	cmpwi 7,0,0
	bne+ 7,.L1349
.LVL2111:
.LBB7975:
.LBB7976:
	.loc 25 156 0
	addi 0,1,40
.LBE7976:
.LBE7975:
.LBB7978:
.LBB7979:
	.loc 25 284 0
	addi 3,1,8
.LVL2112:
	li 4,12
	li 5,8
.LBE7979:
.LBE7978:
.LBB7981:
.LBB7977:
	.loc 25 156 0
	stw 0,8(1)
	.loc 25 157 0
	stw 0,12(1)
	.loc 25 158 0
	li 0,8192
	stw 0,16(1)
.LVL2113:
.LBE7977:
.LBE7981:
.LBB7982:
.LBB7980:
	.loc 25 284 0
	bl _ZN8idBitMsg9WriteBitsEii
.LVL2114:
.LBE7980:
.LBE7982:
	.loc 4 787 0
	lis 4,.LANCHOR0@ha
	li 5,0
	la 4,.LANCHOR0@l(4)
	addi 3,1,8
.LVL2115:
	addi 4,4,4
	bl _ZN8idBitMsg14WriteDeltaDictERK6idDictPS1_
.LVL2116:
	.loc 4 788 0
	lis 9,networkSystem@ha
	lwz 3,networkSystem@l(9)
	li 4,-1
	addi 5,1,8
.LVL2117:
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL2118:
.L1349:
.LBE7983:
	.loc 4 790 0
	lwz 0,8252(1)
	lwz 31,8244(1)
.LVL2119:
	mtlr 0
	addi 1,1,8248
.LCFI302:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2854:
	.size	_ZN11idGameLocal13SetServerInfoERK6idDict, .-_ZN11idGameLocal13SetServerInfoERK6idDict
	.align 2
	.globl _ZN11idGameLocal17SetGlobalMaterialEPK10idMaterial
	.type	_ZN11idGameLocal17SetGlobalMaterialEPK10idMaterial, @function
_ZN11idGameLocal17SetGlobalMaterialEPK10idMaterial:
.LFB2961:
	.loc 4 4145 0
	.cfi_startproc
.LVL2120:
	.loc 4 4146 0
	addis 3,3,0x25
.LVL2121:
	stw 4,2120(3)
	.loc 4 4147 0
	blr
	.cfi_endproc
.LFE2961:
	.size	_ZN11idGameLocal17SetGlobalMaterialEPK10idMaterial, .-_ZN11idGameLocal17SetGlobalMaterialEPK10idMaterial
	.align 2
	.globl _ZN11idGameLocal17GetGlobalMaterialEv
	.type	_ZN11idGameLocal17GetGlobalMaterialEv, @function
_ZN11idGameLocal17GetGlobalMaterialEv:
.LFB2962:
	.loc 4 4154 0
	.cfi_startproc
.LVL2122:
	.loc 4 4155 0
	addis 3,3,0x25
.LVL2123:
	.loc 4 4156 0
	lwz 3,2120(3)
.LVL2124:
	blr
	.cfi_endproc
.LFE2962:
	.size	_ZN11idGameLocal17GetGlobalMaterialEv, .-_ZN11idGameLocal17GetGlobalMaterialEv
	.align 2
	.globl _ZNK11idGameLocal10GetSpawnIdEPK8idEntity
	.type	_ZNK11idGameLocal10GetSpawnIdEPK8idEntity, @function
_ZNK11idGameLocal10GetSpawnIdEPK8idEntity:
.LFB2963:
	.loc 4 4163 0
	.cfi_startproc
.LVL2125:
	.loc 4 4164 0
	lwz 9,4(4)
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	addi 0,9,4228
	slwi 0,0,2
	add 11,11,0
	lwz 3,4(11)
.LVL2126:
	.loc 4 4165 0
	.loc 4 4164 0
	slwi 3,3,12
	.loc 4 4165 0
	or 3,3,9
	blr
	.cfi_endproc
.LFE2963:
	.size	_ZNK11idGameLocal10GetSpawnIdEPK8idEntity, .-_ZNK11idGameLocal10GetSpawnIdEPK8idEntity
	.section	.text._ZN6idListIiE5ClearEv,"axG",@progbits,_ZN6idListIiE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIiE5ClearEv
	.type	_ZN6idListIiE5ClearEv, @function
_ZN6idListIiE5ClearEv:
.LFB3012:
	.loc 8 192 0
	.cfi_startproc
.LVL2127:
	mflr 0
	stwu 1,-16(1)
.LCFI303:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 8 193 0
	lwz 3,12(3)
.LVL2128:
	cmpwi 7,3,0
	beq- 7,.L1355
	.cfi_offset 65, 4
	.loc 8 194 0 discriminator 1
	bl _ZdaPv
.L1355:
	.loc 8 197 0
	li 0,0
	stw 0,12(31)
	.loc 8 198 0
	stw 0,0(31)
	.loc 8 199 0
	stw 0,4(31)
	.loc 8 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2129:
	mtlr 0
	addi 1,1,16
.LCFI304:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3012:
	.size	_ZN6idListIiE5ClearEv, .-_ZN6idListIiE5ClearEv
	.section	.text._ZN10idLinkListI8idEntityE5ClearEv,"axG",@progbits,_ZN10idLinkListI8idEntityE5ClearEv,comdat
	.align 2
	.weak	_ZN10idLinkListI8idEntityE5ClearEv
	.type	_ZN10idLinkListI8idEntityE5ClearEv, @function
_ZN10idLinkListI8idEntityE5ClearEv:
.LFB3220:
	.loc 9 157 0
	.cfi_startproc
.LVL2130:
	.loc 9 158 0
	lwz 11,0(3)
	cmpw 7,11,3
	beq- 7,.L1362
.LVL2131:
.LBB7992:
.LBB7993:
	.loc 9 176 0
	lwz 9,8(3)
	lwz 0,4(3)
	stw 0,4(9)
	.loc 9 177 0
	lwz 9,4(3)
	lwz 0,8(3)
	stw 0,8(9)
	.loc 9 179 0
	stw 3,4(3)
	.loc 9 180 0
	stw 3,8(3)
	.loc 9 181 0
	stw 3,0(3)
	blr
.LVL2132:
.L1362:
.LBE7993:
.LBE7992:
.LBB7994:
.LBB7995:
	.loc 9 159 0
	lwz 9,4(11)
	cmpw 7,11,9
	beqlr- 7
.L1360:
.LVL2133:
.LBB7996:
.LBB7997:
	.loc 9 176 0
	lwz 10,8(9)
	lwz 0,4(9)
	stw 0,4(10)
	.loc 9 177 0
	lwz 10,4(9)
	lwz 0,8(9)
	stw 0,8(10)
	.loc 9 179 0
	stw 9,4(9)
	.loc 9 180 0
	stw 9,8(9)
	.loc 9 181 0
	stw 9,0(9)
.LBE7997:
.LBE7996:
	.loc 9 159 0
	lwz 9,4(11)
.LVL2134:
	cmpw 7,11,9
	bne+ 7,.L1360
	blr
.LBE7995:
.LBE7994:
	.cfi_endproc
.LFE3220:
	.size	_ZN10idLinkListI8idEntityE5ClearEv, .-_ZN10idLinkListI8idEntityE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal5ClearEv
	.type	_ZN11idGameLocal5ClearEv, @function
_ZN11idGameLocal5ClearEv:
.LFB2836:
	.loc 4 125 0
	.cfi_startproc
.LVL2135:
	stwu 1,-32(1)
.LCFI305:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBB8024:
	.loc 4 128 0
	addi 3,3,4
.LVL2136:
.LBE8024:
	.loc 4 125 0
	stw 0,36(1)
	stw 31,28(1)
.LBB8094:
	.loc 4 130 0
	li 31,0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LBE8094:
	.loc 4 125 0
	stw 27,12(1)
	stw 28,16(1)
	stw 30,24(1)
.LBB8095:
	.loc 4 128 0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	bl _ZN6idDict5ClearEv
	.loc 4 129 0
	li 0,0
	stw 0,48(29)
.LVL2137:
.L1364:
	.loc 4 131 0 discriminator 2
	mulli 30,31,44
	add 3,29,30
	addi 3,3,52
	bl _ZN6idDict5ClearEv
	.loc 4 132 0 discriminator 2
	add 3,29,30
	addi 3,3,356
	bl _ZN6idDict5ClearEv
.LVL2138:
	.loc 4 130 0 discriminator 2
	cmpwi 7,31,3
	addi 31,31,1
.LVL2139:
	bne+ 7,.L1364
	.loc 4 134 0
	li 4,0
	li 5,128
	addi 3,29,228
	.loc 4 137 0
	li 30,0
	.loc 4 134 0
	bl memset
	.loc 4 135 0
	li 4,0
	li 5,16384
	addi 3,29,532
	.loc 4 137 0
	addis 28,29,0x1
	.loc 4 135 0
	bl memset
	.loc 4 136 0
	li 4,-1
	li 5,16384
	addi 3,29,16916
	.loc 4 149 0
	addis 31,29,0x25
.LVL2140:
	.loc 4 136 0
	bl memset
	.loc 4 137 0
	stw 30,-32236(28)
	.loc 4 138 0
	stw 30,-32232(28)
	.loc 4 139 0
	addi 3,28,-32196
.LBB8025:
.LBB8026:
.LBB8027:
.LBB8028:
	.loc 14 357 0
	li 27,20
.LBE8028:
.LBE8027:
.LBE8026:
.LBE8025:
	.loc 4 139 0
	bl _ZN10idLinkListI8idEntityE5ClearEv
	.loc 4 140 0
	addi 3,28,-32180
	bl _ZN10idLinkListI8idEntityE5ClearEv
	.loc 4 141 0
	stw 30,-32164(28)
	.loc 4 142 0
	stb 30,-32160(28)
	.loc 4 144 0
	addi 3,28,-32156
	.loc 4 143 0
	stb 30,-32159(28)
	.loc 4 144 0
	bl _ZN6idDict5ClearEv
	.loc 4 145 0
	li 4,0
	li 5,48
	addi 3,28,-32112
	bl memset
.LVL2141:
	.loc 4 148 0
	addis 3,29,0x23
.LBB8035:
.LBB8036:
	.loc 21 63 0
	stw 30,-32064(28)
.LBE8036:
.LBE8035:
	.loc 4 147 0
	stw 30,-32200(28)
	.loc 4 148 0
	stw 30,17268(3)
	.loc 4 151 0
	addi 3,3,17272
	.loc 4 149 0
	stw 30,1376(31)
	.loc 4 150 0
	stw 30,1380(31)
	.loc 4 151 0
	bl _ZN6idClip8ShutdownEv
	.loc 4 152 0
	addi 3,31,1236
	bl _ZN5idPVS8ShutdownEv
.LVL2142:
.LBB8037:
.LBB8033:
	.loc 14 746 0
	addi 3,31,1384
	bl _ZN5idStr8FreeDataEv
.LVL2143:
.LBB8031:
.LBB8029:
	.loc 14 358 0
	addi 0,31,1396
	stw 0,1388(31)
.LBE8029:
.LBE8031:
.LBE8033:
.LBE8037:
.LBB8038:
.LBB8039:
	.loc 15 341 0
	addi 3,28,-32228
.LBE8039:
.LBE8038:
.LBB8041:
.LBB8034:
.LBB8032:
.LBB8030:
	.loc 14 356 0
	stw 30,1384(31)
	.loc 14 357 0
	stw 27,1392(31)
	.loc 14 359 0
	stb 30,1396(31)
.LBE8030:
.LBE8032:
.LBE8034:
.LBE8041:
	.loc 4 154 0
	stw 30,2112(31)
	.loc 4 155 0
	stw 30,1972(31)
	.loc 4 156 0
	stw 30,1976(31)
.LVL2144:
.LBB8042:
.LBB8040:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
	.loc 15 342 0
	li 0,1024
	stw 0,-32228(28)
	.loc 15 343 0
	li 0,4096
	stw 0,-32220(28)
.LBE8040:
.LBE8042:
.LBB8043:
.LBB8044:
	.loc 14 746 0
	addi 3,31,2064
.LBE8044:
.LBE8043:
	.loc 4 158 0
	stb 30,1992(31)
	.loc 4 159 0
	stw 30,1980(31)
	.loc 4 160 0
	stw 30,1984(31)
	.loc 4 161 0
	stw 30,1988(31)
	.loc 4 162 0
	stw 30,1996(31)
	.loc 4 163 0
	stw 30,2000(31)
	.loc 4 164 0
	stw 30,2004(31)
	.loc 4 165 0
	stw 30,2008(31)
.LVL2145:
.LBB8055:
.LBB8051:
	.loc 14 746 0
	bl _ZN5idStr8FreeDataEv
.LVL2146:
.LBE8051:
.LBE8055:
.LBB8056:
.LBB8057:
	.loc 8 193 0
	lwz 3,2136(31)
.LBE8057:
.LBE8056:
.LBB8062:
.LBB8052:
.LBB8045:
.LBB8046:
	.loc 14 358 0
	addi 0,31,2076
	.loc 14 356 0
	stw 30,2064(31)
.LBE8046:
.LBE8045:
.LBE8052:
.LBE8062:
.LBB8063:
.LBB8058:
	.loc 8 193 0
	cmpwi 7,3,0
.LBE8058:
.LBE8063:
.LBB8064:
.LBB8053:
.LBB8049:
.LBB8047:
	.loc 14 358 0
	stw 0,2068(31)
.LBE8047:
.LBE8049:
.LBE8053:
.LBE8064:
	.loc 4 168 0
	li 0,1
.LBB8065:
.LBB8054:
.LBB8050:
.LBB8048:
	.loc 14 357 0
	stw 27,2072(31)
	.loc 14 359 0
	stb 30,2076(31)
.LBE8048:
.LBE8050:
.LBE8054:
.LBE8065:
	.loc 4 167 0
	stw 30,2096(31)
	.loc 4 168 0
	stw 0,2104(31)
	.loc 4 169 0
	stw 30,2108(31)
	.loc 4 170 0
	stw 30,2116(31)
.LVL2147:
.LBB8066:
.LBB8059:
	.loc 8 193 0
	beq- 7,.L1365
	.loc 8 194 0
	bl _ZdaPv
.L1365:
.LBE8059:
.LBE8066:
.LBB8067:
.LBB8068:
	.loc 8 193 0
	lwz 3,2152(31)
.LBE8068:
.LBE8067:
.LBB8077:
.LBB8060:
	.loc 8 197 0
	li 0,0
	stw 0,2136(31)
.LBE8060:
.LBE8077:
	.loc 4 172 0
	addi 28,31,2140
.LVL2148:
.LBB8078:
.LBB8072:
	.loc 8 193 0
	cmpwi 7,3,0
.LBE8072:
.LBE8078:
.LBB8079:
.LBB8061:
	.loc 8 198 0
	stw 0,2124(31)
	.loc 8 199 0
	stw 0,2128(31)
.LBE8061:
.LBE8079:
.LBB8080:
.LBB8073:
	.loc 8 193 0
	beq- 7,.L1366
	.loc 8 194 0
	lwz 30,-4(3)
	slwi 30,30,5
	add 30,3,30
	cmpw 7,3,30
	beq- 7,.L1367
.L1372:
	addi 30,30,-32
.LVL2149:
.LBB8069:
.LBB8070:
.LBB8071:
	.loc 14 501 0
	mr 3,30
	bl _ZN5idStr8FreeDataEv
.LBE8071:
.LBE8070:
.LBE8069:
	.loc 8 194 0
	lwz 3,12(28)
	cmpw 7,3,30
	bne+ 7,.L1372
.LVL2150:
.L1367:
	addi 3,3,-4
	bl _ZdaPv
.L1366:
	.loc 8 197 0
	li 30,0
.LBE8073:
.LBE8080:
	.loc 4 175 0
	addi 3,31,2164
.LBB8081:
.LBB8074:
	.loc 8 197 0
	stw 30,2152(31)
.LBE8074:
.LBE8081:
	.loc 4 194 0
	addis 28,29,0x27
.LVL2151:
.LBB8082:
.LBB8075:
	.loc 8 198 0
	stw 30,2140(31)
.LBE8075:
.LBE8082:
	.loc 4 199 0
	addis 29,29,0x26
.LVL2152:
.LBB8083:
.LBB8076:
	.loc 8 199 0
	stw 30,2144(31)
.LVL2153:
.LBE8076:
.LBE8083:
.LBB8084:
.LBB8085:
	.loc 10 606 0
	stw 30,2156(31)
.LBE8085:
.LBE8084:
	.loc 4 174 0
	stw 30,2160(31)
	.loc 4 175 0
	bl _ZN6idDict5ClearEv
.LVL2154:
.LBB8086:
.LBB8087:
	.loc 17 410 0
	li 9,0
	stw 9,2224(31)
.LBE8087:
.LBE8086:
	.loc 4 177 0
	li 0,-1
.LBB8090:
.LBB8088:
	.loc 17 411 0
	stw 9,2228(31)
	.loc 17 412 0
	lis 9,.LC122@ha
	lwz 9,.LC122@l(9)
.LBE8088:
.LBE8090:
	.loc 4 194 0
	addi 3,28,-9932
	.loc 4 177 0
	stw 0,2212(31)
.LBB8091:
.LBB8089:
	.loc 17 412 0
	stw 9,2232(31)
.LBE8089:
.LBE8091:
	.loc 4 189 0
	lis 9,.LC38@ha
	.loc 4 178 0
	stw 0,2220(31)
	.loc 4 188 0
	li 0,1
	stb 0,2044(31)
	.loc 4 189 0
	lwz 0,.LC38@l(9)
	.loc 4 179 0
	stw 30,2236(31)
	.loc 4 189 0
	stw 0,2048(31)
	.loc 4 180 0
	stb 30,1993(31)
	.loc 4 181 0
	stb 30,2240(31)
	.loc 4 183 0
	stw 30,2020(31)
	.loc 4 184 0
	stb 30,2016(31)
	.loc 4 185 0
	stb 30,2017(31)
	.loc 4 186 0
	stb 30,2018(31)
	.loc 4 187 0
	stw 30,2040(31)
	.loc 4 190 0
	stw 30,2052(31)
	.loc 4 192 0
	stw 30,2244(31)
	.loc 4 193 0
	stw 30,2120(31)
	.loc 4 194 0
	bl _ZN6idDict5ClearEv
.LVL2155:
.LBB8092:
.LBB8093:
	.loc 10 606 0
	stw 30,2056(31)
.LBE8093:
.LBE8092:
	.loc 4 196 0
	stw 30,2060(31)
	.loc 4 198 0
	li 4,0
	lis 5,0x1
	addi 3,31,4296
	bl memset
	.loc 4 199 0
	li 4,0
	li 5,2048
	addi 3,29,4296
	bl memset
	.loc 4 200 0
	stw 30,6344(29)
	stw 30,6348(29)
	.loc 4 202 0
	addi 3,29,6392
	.loc 4 200 0
	stw 30,6352(29)
	stw 30,6356(29)
	.loc 4 202 0
	bl _ZN12idEventQueue4InitEv
	.loc 4 203 0
	addi 3,29,6416
	bl _ZN12idEventQueue4InitEv
	.loc 4 205 0
	addi 3,28,-9872
	li 4,0
	li 5,16384
	bl memset
.LBE8095:
	.loc 4 206 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL2156:
	lwz 29,20(1)
.LVL2157:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL2158:
	addi 1,1,32
.LCFI306:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2836:
	.size	_ZN11idGameLocal5ClearEv, .-_ZN11idGameLocal5ClearEv
	.align 2
	.globl _ZN11idGameLocal4InitEv
	.type	_ZN11idGameLocal4InitEv, @function
_ZN11idGameLocal4InitEv:
.LFB2837:
	.loc 4 216 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2837
.LVL2159:
	mflr 0
	stwu 1,-80(1)
.LCFI307:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	mfcr 12
	stw 29,68(1)
.LBB8158:
	.loc 4 242 0
	lis 29,declManager@ha
	.cfi_offset 29, -12
	.cfi_register 70, 12
.LBE8158:
	.loc 4 216 0
	stw 12,12(1)
	stw 0,84(1)
	stw 30,72(1)
.LBB8318:
	.loc 4 253 0
	lis 30,cmdSystem@ha
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 70, -68
.LBE8318:
	.loc 4 216 0
	stw 31,76(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 16,16(1)
	stw 17,20(1)
	stw 18,24(1)
	stw 19,28(1)
	stw 20,32(1)
	stw 21,36(1)
	stw 22,40(1)
	stw 23,44(1)
	stw 24,48(1)
	stw 25,52(1)
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
.LEHB55:
.LBB8319:
	.loc 4 222 0
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
	bl _Z11TestGameAPIv
.LVL2160:
	.loc 4 237 0
	lis 4,.LC164@ha
	mr 3,31
	la 4,.LC164@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 238 0
	lis 4,.LC165@ha
	lis 5,.LC166@ha
	mr 3,31
	la 4,.LC165@l(4)
	la 5,.LC166@l(5)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 239 0
	lis 4,.LC167@ha
	lis 5,.LC168@ha
	mr 3,31
	la 4,.LC167@l(4)
	la 5,.LC168@l(5)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 242 0
	lwz 3,declManager@l(29)
	lis 4,.LC75@ha
	lis 6,_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv@ha
	lwz 9,0(3)
	la 4,.LC75@l(4)
	li 5,5
	la 6,_Z15idDeclAllocatorI14idDeclModelDefEP6idDeclv@l(6)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 243 0
	lwz 3,declManager@l(29)
	lis 4,.LC169@ha
	lis 6,_Z15idDeclAllocatorI6idDeclEPS0_v@ha
	lwz 9,0(3)
	la 4,.LC169@l(4)
	li 5,13
	la 6,_Z15idDeclAllocatorI6idDeclEPS0_v@l(6)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 246 0
	lwz 3,declManager@l(29)
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 4 247 0
	lwz 3,declManager@l(29)
	lis 4,.LC93@ha
	lis 5,.LC170@ha
	lwz 9,0(3)
	la 4,.LC93@l(4)
	la 5,.LC170@l(5)
	li 6,4
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 4 248 0
	lwz 3,declManager@l(29)
	lis 4,.LC88@ha
	lis 5,.LC171@ha
	lwz 9,0(3)
	la 4,.LC88@l(4)
	la 5,.LC171@l(5)
	li 6,6
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 4 249 0
	lwz 3,declManager@l(29)
	lis 4,.LC172@ha
	lis 5,.LC173@ha
	lwz 9,0(3)
	la 4,.LC172@l(4)
	la 5,.LC173@l(5)
	li 6,7
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 4 250 0
	lwz 3,declManager@l(29)
	lis 4,.LC174@ha
	lis 5,.LC175@ha
	lwz 9,0(3)
	la 4,.LC174@l(4)
	la 5,.LC175@l(5)
	li 6,8
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 4 251 0
	lwz 3,declManager@l(29)
	lis 4,.LC176@ha
	lis 5,.LC177@ha
	lwz 9,0(3)
	la 4,.LC176@l(4)
	la 5,.LC177@l(5)
	li 6,9
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 4 253 0
	lwz 3,cmdSystem@l(30)
	lis 4,.LC178@ha
	lis 5,_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs@ha
	lwz 9,0(3)
	lis 7,.LC179@ha
	la 4,.LC178@l(4)
	la 5,_Z13idListDecls_fIL10declType_t5EEvRK9idCmdArgs@l(5)
	lwz 0,16(9)
	li 6,18
	la 7,.LC179@l(7)
	li 8,0
	mtctr 0
	bctrl
	.loc 4 254 0
	lwz 3,cmdSystem@l(30)
	lis 5,_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs@ha
	lis 7,.LC181@ha
	lwz 9,0(3)
	lis 8,_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE@ha
	lis 4,.LC180@ha
	la 5,_Z14idPrintDecls_fIL10declType_t5EEvRK9idCmdArgs@l(5)
	lwz 0,16(9)
	li 6,18
	la 7,.LC181@l(7)
	la 8,_ZN11idCmdSystem18ArgCompletion_DeclILi5EEEvRK9idCmdArgsPFvPKcE@l(8)
	mtctr 0
	la 4,.LC180@l(4)
	bctrl
	.loc 4 256 0
	mr 3,31
	bl _ZN11idGameLocal5ClearEv
	.loc 4 258 0
	bl _ZN7idEvent4InitEv
	.loc 4 259 0
	bl _ZN7idClass4InitEv
	.loc 4 261 0
	mr 3,31
	bl _ZN11idGameLocal19InitConsoleCommandsEv
	.loc 4 264 0
	addis 3,31,0x1
	lis 4,.LC182@ha
	addi 3,3,-32060
	la 4,.LC182@l(4)
	bl _ZN9idProgram7StartupEPKc
	.loc 4 266 0
	lis 3,0x2
	ori 3,3,29180
	bl _Znwj
.LEHE55:
	mr 30,3
.LEHB56:
	bl _ZN16idSmokeParticlesC1Ev
.LEHE56:
	.loc 4 266 0 is_stmt 0 discriminator 1
	addis 29,31,0x25
	.loc 4 269 0 is_stmt 1 discriminator 1
	lis 4,.LC183@ha
	.loc 4 266 0 discriminator 1
	stw 30,1972(29)
	.loc 4 269 0 discriminator 1
	mr 3,31
	la 4,.LC183@l(4)
	li 5,1
.LEHB57:
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL2161:
	.loc 4 270 0 discriminator 1
	mr. 18,3
	beq- 0,.L1446
.LVL2162:
.L1374:
	.loc 4 275 0
	lis 17,.LC185@ha
	mr 3,18
	la 17,.LC185@l(17)
	li 5,0
	mr 4,17
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL2163:
	.loc 4 276 0
	mr. 21,3
	beq- 0,.L1375
.LBB8159:
.LBB8160:
.LBB8161:
.LBB8162:
	.loc 8 393 0
	li 24,0
.LBE8162:
.LBE8161:
.LBB8168:
.LBB8169:
	.loc 8 663 0
	li 16,16
.LBE8169:
.LBE8168:
.LBE8160:
.LBE8159:
.LBB8208:
.LBB8209:
.LBB8210:
.LBB8211:
.LBB8212:
.LBB8213:
.LBB8214:
.LBB8215:
	.loc 14 536 0
	li 22,0
.LBE8215:
.LBE8214:
.LBB8222:
.LBB8223:
.LBB8224:
	.loc 14 357 0
	li 19,20
	b .L1434
.LVL2164:
.L1444:
.LBE8224:
.LBE8223:
.LBE8222:
.LBE8213:
.LBE8212:
.LBE8211:
.LBE8210:
.LBE8209:
.LBE8208:
.LBB8297:
.LBB8197:
.LBB8189:
.LBB8184:
.LBB8170:
.LBB8171:
	.loc 8 399 0
	slwi 0,0,2
	add 30,30,0
.L1384:
.LBE8171:
.LBE8170:
.LBE8184:
.LBE8189:
	.loc 8 669 0
	stw 27,0(30)
.LBE8197:
.LBE8297:
	.loc 4 279 0
	addi 23,29,2140
.LBB8298:
.LBB8287:
	.loc 8 655 0
	lwz 28,2152(29)
.LVL2165:
.LBE8287:
.LBE8298:
.LBB8299:
.LBB8198:
	.loc 8 670 0
	lwz 9,2124(29)
.LBE8198:
.LBE8299:
.LBB8300:
.LBB8288:
	.loc 8 655 0
	cmpwi 7,28,0
.LBE8288:
.LBE8300:
.LBB8301:
.LBB8199:
	.loc 8 670 0
	addi 0,9,1
	stw 0,2124(29)
.LBE8199:
.LBE8301:
	.loc 4 4268 0
	lwz 20,4(21)
.LVL2166:
.LBB8302:
.LBB8289:
	.loc 8 655 0
	beq- 7,.L1393
	lwz 0,2140(29)
	lwz 30,2144(29)
.LVL2167:
.L1394:
.LBB8253:
	.loc 8 659 0
	cmpw 7,0,30
	beq- 7,.L1430
.L1445:
.LBB8249:
.LBB8245:
.LBB8241:
	.loc 8 398 0
	slwi 0,0,5
	add 28,28,0
.L1404:
.LVL2168:
.LBE8241:
.LBE8245:
.LBE8249:
.LBE8253:
.LBB8254:
	.loc 4 4268 0
	lwz 30,0(20)
.LBB8255:
.LBB8256:
.LBB8257:
	.loc 14 350 0
	lwz 0,8(28)
.LBE8257:
.LBE8256:
	.loc 14 534 0
	addi 4,30,1
.LVL2169:
.LBB8259:
.LBB8258:
	.loc 14 350 0
	cmpw 7,4,0
	ble+ 7,.L1424
	.loc 14 351 0
	mr 3,28
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL2170:
.L1424:
.LBE8258:
.LBE8259:
	.loc 14 535 0
	lwz 4,4(20)
	mr 5,30
	lwz 3,4(28)
	bl memcpy
	.loc 14 536 0
	lwz 9,4(28)
.LBE8255:
.LBE8254:
.LBE8289:
.LBE8302:
	.loc 4 280 0
	mr 5,21
	mr 3,18
.LBB8303:
.LBB8290:
.LBB8262:
.LBB8260:
	.loc 14 536 0
	stbx 22,9,30
.LBE8260:
.LBE8262:
.LBE8290:
.LBE8303:
	.loc 4 280 0
	mr 4,17
.LBB8304:
.LBB8291:
.LBB8263:
.LBB8261:
	.loc 14 537 0
	stw 30,0(28)
.LBE8261:
.LBE8263:
	.loc 8 670 0
	lwz 9,2140(29)
	addi 0,9,1
	stw 0,2140(29)
.LBE8291:
.LBE8304:
	.loc 4 280 0
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL2171:
	.loc 4 276 0
	mr. 21,3
	beq- 0,.L1375
.LVL2172:
.L1434:
	.loc 4 277 0
	bl _ZN5idAAS5AllocEv
.LVL2173:
.LBB8305:
.LBB8200:
	.loc 8 655 0
	lwz 30,2136(29)
.LBE8200:
.LBE8305:
	.loc 4 277 0
	mr 27,3
.LVL2174:
	.loc 4 278 0
	addi 28,29,2124
.LVL2175:
.LBB8306:
.LBB8201:
	.loc 8 655 0
	cmpwi 7,30,0
	beq- 7,.L1376
	lwz 0,2124(29)
	lwz 9,2128(29)
.LVL2176:
.L1377:
.LBB8190:
	.loc 8 659 0
	cmpw 7,9,0
	bne+ 7,.L1444
	mr 10,9
.L1379:
.LBB8185:
	.loc 8 662 0
	lwz 0,2132(29)
	cmpwi 7,0,0
	bne- 7,.L1385
	.loc 8 663 0
	stw 16,2132(29)
	li 0,16
.L1385:
	.loc 8 665 0
	add 11,10,0
.LVL2177:
	.loc 8 666 0
	divw 11,11,0
.LVL2178:
.LBB8179:
.LBB8174:
	.loc 8 375 0
	mullw. 0,11,0
.LVL2179:
	ble- 0,.L1447
	.loc 8 380 0
	cmpw 7,0,10
	beq- 7,.L1448
.LVL2180:
	.loc 8 387 0
	cmpw 7,0,9
	.loc 8 386 0
	stw 0,2128(29)
	.loc 8 387 0
	bge- 7,.L1389
	.loc 8 388 0
	stw 0,2124(29)
.L1389:
	.loc 8 392 0
	slwi 3,0,2
	bl _Znaj
.LVL2181:
	.loc 8 393 0
	lwz 0,2124(29)
	.loc 8 392 0
	stw 3,2136(29)
.LVL2182:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1390
	.loc 4 216 0
	addi 11,30,-4
.LBE8174:
.LBE8179:
	.loc 8 393 0
	li 9,0
	b .L1391
.LVL2183:
.L1449:
.LBB8180:
.LBB8175:
	lwz 3,2136(29)
.LVL2184:
.L1391:
	.loc 8 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 8 393 0
	addi 9,9,1
.LVL2185:
	.loc 8 394 0
	stwx 10,3,0
	.loc 8 393 0
	lwz 0,0(28)
	cmpw 7,9,0
	blt+ 7,.L1449
.LVL2186:
.L1390:
	.loc 8 398 0
	cmpwi 7,30,0
	beq- 7,.L1450
	.loc 8 399 0
	mr 3,30
	bl _ZdaPv
	lwz 0,2124(29)
	lwz 30,2136(29)
.LVL2187:
	b .L1444
.LVL2188:
.L1430:
.LBE8175:
.LBE8180:
.LBE8185:
.LBE8190:
.LBE8201:
.LBE8306:
.LBB8307:
.LBB8292:
.LBB8264:
	.loc 8 659 0
	mr 11,0
.L1396:
.LBB8250:
	.loc 8 662 0
	lwz 9,2148(29)
	cmpwi 7,9,0
	bne- 7,.L1405
	.loc 8 663 0
	stw 16,2148(29)
	li 9,16
.L1405:
	.loc 8 665 0
	add 27,11,9
.LVL2189:
	.loc 8 666 0
	divw 27,27,9
.LVL2190:
.LBB8246:
.LBB8242:
	.loc 8 375 0
	mullw 27,27,9
.LVL2191:
	cmpwi 4,27,0
	ble- 4,.L1451
	.loc 8 380 0
	cmpw 7,27,11
	beq- 7,.L1445
.LVL2192:
	.loc 8 387 0
	cmpw 7,27,0
	.loc 8 386 0
	stw 27,2144(29)
	.loc 8 387 0
	bge- 7,.L1413
	.loc 8 388 0
	stw 27,2140(29)
.L1413:
	.loc 8 392 0
	slwi 3,27,5
	addi 3,3,4
	bl _Znaj
	stw 27,0(3)
	addi 30,3,4
	beq- 4,.L1414
.LBB8229:
.LBB8227:
.LBB8225:
	.loc 14 357 0
	mtctr 27
.LBE8225:
.LBE8227:
.LBE8229:
	.loc 8 392 0
	mr 9,30
.L1415:
.LVL2193:
.LBB8230:
.LBB8228:
.LBB8226:
	.loc 14 358 0
	addi 0,9,12
	.loc 14 356 0
	stw 24,0(9)
	.loc 14 357 0
	stw 19,8(9)
	.loc 14 358 0
	stw 0,4(9)
	.loc 14 359 0
	stb 24,12(9)
	addi 9,9,32
.LVL2194:
.LBE8226:
.LBE8228:
.LBE8230:
	.loc 8 392 0
	bdnz .L1415
.LVL2195:
.L1414:
	.loc 8 393 0
	lwz 0,2140(29)
	.loc 8 392 0
	stw 30,2152(29)
.LVL2196:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1416
	li 27,0
.LVL2197:
	li 25,0
	b .L1418
.LVL2198:
.L1452:
	lwz 30,2152(29)
.LVL2199:
.L1418:
	.loc 8 394 0
	add 30,30,27
.LVL2200:
.LBB8231:
	.loc 4 4268 0
	lwzx 26,28,27
.LBB8220:
.LBB8216:
.LBB8217:
	.loc 14 350 0
	lwz 0,8(30)
.LBE8217:
.LBE8216:
	.loc 14 534 0
	addi 4,26,1
.LVL2201:
.LBB8219:
.LBB8218:
	.loc 14 350 0
	cmpw 7,4,0
	ble+ 7,.L1417
	.loc 14 351 0
	mr 3,30
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL2202:
.L1417:
.LBE8218:
.LBE8219:
	.loc 4 216 0
	add 9,28,27
	.loc 14 535 0
	lwz 3,4(30)
	lwz 4,4(9)
	mr 5,26
.LBE8220:
.LBE8231:
	.loc 8 393 0
	addi 25,25,1
	addi 27,27,32
.LVL2203:
.LBB8232:
.LBB8221:
	.loc 14 535 0
	bl memcpy
.LVL2204:
	.loc 14 536 0
	lwz 9,4(30)
	stbx 22,9,26
	.loc 14 537 0
	stw 26,0(30)
.LBE8221:
.LBE8232:
	.loc 8 393 0
	lwz 0,0(23)
	cmpw 7,25,0
	blt+ 7,.L1452
.LVL2205:
.L1416:
	.loc 8 398 0
	cmpwi 7,28,0
	beq- 7,.L1453
	.loc 8 399 0
	lwz 30,-4(28)
	slwi 30,30,5
	add 30,28,30
	cmpw 7,28,30
	beq- 7,.L1420
.L1443:
	addi 30,30,-32
.LVL2206:
.LBB8233:
.LBB8234:
.LBB8235:
	.loc 14 501 0
	mr 3,30
	bl _ZN5idStr8FreeDataEv
.LBE8235:
.LBE8234:
.LBE8233:
	.loc 8 399 0
	cmpw 7,28,30
	bne+ 7,.L1443
.LVL2207:
.L1420:
	addi 3,28,-4
	bl _ZdaPv
	lwz 28,2140(29)
.LVL2208:
	lwz 0,2152(29)
	slwi 28,28,5
	add 28,0,28
	b .L1404
.LVL2209:
.L1375:
.LBE8242:
.LBE8246:
.LBE8250:
.LBE8264:
.LBE8292:
.LBE8307:
	.loc 4 283 0
	li 0,1
	.loc 4 285 0
	lwz 5,2124(29)
	.loc 4 283 0
	stw 0,2236(29)
	.loc 4 285 0
	lis 4,.LC186@ha
	mr 3,31
.LVL2210:
	la 4,.LC186@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 286 0
	lis 4,.LC187@ha
	mr 3,31
	la 4,.LC187@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LBE8319:
	.loc 4 288 0
	lwz 0,84(1)
	lwz 12,12(1)
.LBB8320:
	.loc 4 287 0
	mr 3,31
.LBE8320:
	.loc 4 288 0
	lwz 16,16(1)
.LBB8321:
	.loc 4 287 0
	lis 4,.LC10@ha
.LBE8321:
	.loc 4 288 0
	lwz 17,20(1)
	mtlr 0
	lwz 18,24(1)
.LVL2211:
	mtcrf 8,12
	lwz 19,28(1)
.LBB8322:
	.loc 4 287 0
	la 4,.LC10@l(4)
.LBE8322:
	.loc 4 288 0
	lwz 20,32(1)
	lwz 21,36(1)
.LVL2212:
	lwz 22,40(1)
	lwz 23,44(1)
	lwz 24,48(1)
	lwz 25,52(1)
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
.LVL2213:
	addi 1,1,80
	.cfi_remember_state
.LCFI308:
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
	.cfi_restore 17
	.cfi_restore 16
.LBB8323:
	.loc 4 287 0
	crxor 6,6,6
	b _ZNK11idGameLocal6PrintfEPKcz
.LVL2214:
.L1376:
.LCFI309:
	.cfi_restore_state
.LBB8308:
.LBB8202:
	.loc 8 656 0
	lwz 9,2132(29)
.LVL2215:
.LBB8191:
.LBB8165:
	.loc 8 375 0
	cmpwi 7,9,0
	ble- 7,.L1454
	.loc 8 380 0
	lwz 0,2128(29)
	cmpw 7,9,0
	lwz 0,2124(29)
	beq- 7,.L1377
.LVL2216:
	.loc 8 387 0
	cmpw 7,9,0
	.loc 8 386 0
	stw 9,2128(29)
	.loc 8 387 0
	bge- 7,.L1381
	.loc 8 388 0
	stw 9,2124(29)
.L1381:
	.loc 8 392 0
	slwi 3,9,2
.LVL2217:
	bl _Znaj
.LVL2218:
	.loc 8 393 0
	lwz 0,2124(29)
	.loc 8 392 0
	mr 30,3
	stw 3,2136(29)
.LVL2219:
	.loc 8 393 0
	cmpwi 7,0,0
	li 9,0
	li 11,0
	bgt+ 7,.L1438
	b .L1460
.LVL2220:
.L1456:
	lwz 30,2136(29)
.LVL2221:
.L1438:
	.loc 8 394 0
	lwz 0,0(9)
	.loc 8 393 0
	addi 11,11,1
.LVL2222:
	.loc 8 394 0
	stwx 0,30,9
	.loc 8 393 0
	addi 9,9,4
	lwz 0,0(28)
	cmpw 7,11,0
	blt+ 7,.L1456
	lwz 9,2128(29)
	lwz 30,2136(29)
	b .L1377
.LVL2223:
.L1393:
.LBE8165:
.LBE8191:
.LBE8202:
.LBE8308:
.LBB8309:
.LBB8293:
	.loc 8 656 0
	lwz 30,2148(29)
.LVL2224:
.LBB8265:
.LBB8266:
	.loc 8 375 0
	cmpwi 4,30,0
	ble- 4,.L1457
	.loc 8 380 0
	lwz 0,2144(29)
	cmpw 7,30,0
	lwz 0,2140(29)
	beq- 7,.L1394
.LVL2225:
	.loc 8 387 0
	cmpw 7,30,0
	.loc 8 386 0
	stw 30,2144(29)
	.loc 8 387 0
	bge- 7,.L1398
	.loc 8 388 0
	stw 30,2140(29)
.L1398:
	.loc 8 392 0
	slwi 3,30,5
	addi 3,3,4
	bl _Znaj
.LVL2226:
	stw 30,0(3)
	addi 28,3,4
	beq- 4,.L1399
.LBB8267:
.LBB8268:
.LBB8269:
	.loc 14 357 0
	mtctr 30
.LBE8269:
.LBE8268:
.LBE8267:
	.loc 8 392 0
	mr 9,28
.L1400:
.LVL2227:
.LBB8272:
.LBB8271:
.LBB8270:
	.loc 14 358 0
	addi 0,9,12
	.loc 14 356 0
	stw 24,0(9)
	.loc 14 357 0
	stw 19,8(9)
	.loc 14 358 0
	stw 0,4(9)
	.loc 14 359 0
	stb 24,12(9)
	addi 9,9,32
.LVL2228:
.LBE8270:
.LBE8271:
.LBE8272:
	.loc 8 392 0
	bdnz .L1400
.LVL2229:
.L1399:
	.loc 8 393 0
	lwz 0,2140(29)
	li 30,0
.LVL2230:
	.loc 8 392 0
	stw 28,2152(29)
.LVL2231:
	.loc 8 393 0
	li 26,0
	cmpwi 7,0,0
	bgt+ 7,.L1439
	b .L1461
.LVL2232:
.L1459:
	lwz 28,2152(29)
.LVL2233:
.L1439:
	.loc 8 394 0
	add 28,28,30
.LVL2234:
.LBB8273:
	.loc 4 4268 0
	lwz 27,0(30)
.LBB8274:
.LBB8275:
.LBB8276:
	.loc 14 350 0
	lwz 0,8(28)
.LBE8276:
.LBE8275:
	.loc 14 534 0
	addi 4,27,1
.LVL2235:
.LBB8278:
.LBB8277:
	.loc 14 350 0
	cmpw 7,4,0
	ble+ 7,.L1402
	.loc 14 351 0
	mr 3,28
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL2236:
.L1402:
.LBE8277:
.LBE8278:
	.loc 14 535 0
	lwz 4,4(30)
	mr 5,27
	lwz 3,4(28)
.LBE8274:
.LBE8273:
	.loc 8 393 0
	addi 26,26,1
	addi 30,30,32
.LVL2237:
.LBB8280:
.LBB8279:
	.loc 14 535 0
	bl memcpy
.LVL2238:
	.loc 14 536 0
	lwz 9,4(28)
	stbx 22,9,27
	.loc 14 537 0
	stw 27,0(28)
.LBE8279:
.LBE8280:
	.loc 8 393 0
	lwz 0,0(23)
	cmpw 7,26,0
	blt+ 7,.L1459
	lwz 30,2144(29)
.LVL2239:
	lwz 28,2152(29)
.LVL2240:
	b .L1394
.LVL2241:
.L1448:
.LBE8266:
.LBE8265:
.LBE8293:
.LBE8309:
.LBB8310:
.LBB8203:
.LBB8192:
.LBB8186:
.LBB8181:
.LBB8176:
	.loc 8 380 0
	slwi 9,9,2
	add 30,30,9
	b .L1384
.LVL2242:
.L1451:
.LBE8176:
.LBE8181:
.LBE8186:
.LBE8192:
.LBE8203:
.LBE8310:
.LBB8311:
.LBB8294:
.LBB8284:
.LBB8251:
.LBB8247:
.LBB8243:
.LBB8236:
.LBB8237:
	.loc 8 193 0
	cmpwi 7,28,0
	beq- 7,.L1407
	.loc 8 194 0
	lwz 30,-4(28)
	slwi 30,30,5
	add 30,28,30
	cmpw 7,28,30
	beq- 7,.L1408
.L1441:
	addi 30,30,-32
.LVL2243:
.LBB8238:
.LBB8239:
.LBB8240:
	.loc 14 501 0
	mr 3,30
	bl _ZN5idStr8FreeDataEv
.LBE8240:
.LBE8239:
.LBE8238:
	.loc 8 194 0
	lwz 28,12(23)
	cmpw 7,28,30
	bne+ 7,.L1441
.LVL2244:
.L1408:
	addi 3,28,-4
	bl _ZdaPv
.L1407:
	.loc 8 197 0
	stw 24,2152(29)
	.loc 8 199 0
	li 28,0
	.loc 8 198 0
	stw 24,2140(29)
	.loc 8 199 0
	stw 24,2144(29)
	b .L1404
.LVL2245:
.L1447:
.LBE8237:
.LBE8236:
.LBE8243:
.LBE8247:
.LBE8251:
.LBE8284:
.LBE8294:
.LBE8311:
.LBB8312:
.LBB8204:
.LBB8193:
.LBB8187:
.LBB8182:
.LBB8177:
.LBB8172:
.LBB8173:
	.loc 8 193 0
	cmpwi 7,30,0
	beq- 7,.L1387
	.loc 8 194 0
	mr 3,30
	bl _ZdaPv
.LVL2246:
.L1387:
	.loc 8 197 0
	stw 24,2136(29)
	.loc 8 199 0
	li 30,0
	.loc 8 198 0
	stw 24,2124(29)
	.loc 8 199 0
	stw 24,2128(29)
	b .L1384
.LVL2247:
.L1453:
.LBE8173:
.LBE8172:
.LBE8177:
.LBE8182:
.LBE8187:
.LBE8193:
.LBE8204:
.LBE8312:
.LBB8313:
.LBB8295:
.LBB8285:
.LBB8252:
.LBB8248:
.LBB8244:
	.loc 8 398 0
	lwz 0,2140(29)
	lwz 28,2152(29)
.LVL2248:
	b .L1445
.LVL2249:
.L1450:
.LBE8244:
.LBE8248:
.LBE8252:
.LBE8285:
.LBE8295:
.LBE8313:
.LBB8314:
.LBB8205:
.LBB8194:
.LBB8188:
.LBB8183:
.LBB8178:
	lwz 0,2124(29)
	lwz 30,2136(29)
.LVL2250:
	slwi 0,0,2
	add 30,30,0
	b .L1384
.LVL2251:
.L1446:
.LBE8178:
.LBE8183:
.LBE8188:
.LBE8194:
.LBE8205:
.LBE8314:
	.loc 4 271 0
	lis 4,.LC184@ha
	mr 3,31
	la 4,.LC184@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1374
.LVL2252:
.L1454:
.LBB8315:
.LBB8206:
.LBB8195:
.LBB8166:
.LBB8163:
.LBB8164:
	.loc 8 198 0
	stw 30,2124(29)
	.loc 8 199 0
	li 9,0
.LVL2253:
	stw 30,2128(29)
	li 10,0
	b .L1379
.LVL2254:
.L1457:
.LBE8164:
.LBE8163:
.LBE8166:
.LBE8195:
.LBE8206:
.LBE8315:
.LBB8316:
.LBB8296:
.LBB8286:
.LBB8283:
.LBB8281:
.LBB8282:
	.loc 8 198 0
	stw 28,2140(29)
	.loc 8 199 0
	li 11,0
	stw 28,2144(29)
	li 0,0
	b .L1396
.LVL2255:
.L1461:
.LBE8282:
.LBE8281:
	.loc 8 393 0
	lwz 30,2144(29)
	b .L1394
.LVL2256:
.L1460:
.LBE8283:
.LBE8286:
.LBE8296:
.LBE8316:
.LBB8317:
.LBB8207:
.LBB8196:
.LBB8167:
	lwz 9,2128(29)
	b .L1377
.LVL2257:
.L1431:
	mr 31,3
.LVL2258:
.LBE8167:
.LBE8196:
.LBE8207:
.LBE8317:
	.loc 4 266 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
	bl _Unwind_Resume
.LEHE57:
.LBE8323:
	.cfi_endproc
.LFE2837:
	.section	.gcc_except_table
.LLSDA2837:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2837-.LLSDACSB2837
.LLSDACSB2837:
	.uleb128 .LEHB55-.LFB2837
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB2837
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L1431-.LFB2837
	.uleb128 0
	.uleb128 .LEHB57-.LFB2837
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE2837:
	.section	".text"
	.size	_ZN11idGameLocal4InitEv, .-_ZN11idGameLocal4InitEv
	.section	.text._ZN6idListIP5idAASE5ClearEv,"axG",@progbits,_ZN6idListIP5idAASE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP5idAASE5ClearEv
	.type	_ZN6idListIP5idAASE5ClearEv, @function
_ZN6idListIP5idAASE5ClearEv:
.LFB3221:
	.loc 8 192 0
	.cfi_startproc
.LVL2259:
	mflr 0
	stwu 1,-16(1)
.LCFI310:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 8 193 0
	lwz 3,12(3)
.LVL2260:
	cmpwi 7,3,0
	beq- 7,.L1463
	.cfi_offset 65, 4
	.loc 8 194 0 discriminator 1
	bl _ZdaPv
.L1463:
	.loc 8 197 0
	li 0,0
	stw 0,12(31)
	.loc 8 198 0
	stw 0,0(31)
	.loc 8 199 0
	stw 0,4(31)
	.loc 8 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2261:
	mtlr 0
	addi 1,1,16
.LCFI311:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3221:
	.size	_ZN6idListIP5idAASE5ClearEv, .-_ZN6idListIP5idAASE5ClearEv
	.section	.text._ZN6idListI5idStrE5ClearEv,"axG",@progbits,_ZN6idListI5idStrE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI5idStrE5ClearEv
	.type	_ZN6idListI5idStrE5ClearEv, @function
_ZN6idListI5idStrE5ClearEv:
.LFB3222:
	.loc 8 192 0
	.cfi_startproc
.LVL2262:
	mflr 0
	stwu 1,-16(1)
.LCFI312:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 8 193 0
	lwz 3,12(3)
.LVL2263:
	cmpwi 7,3,0
	beq- 7,.L1465
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 8 194 0 discriminator 1
	lwz 31,-4(3)
	slwi 31,31,5
	add 31,3,31
	cmpw 7,3,31
	beq- 7,.L1466
.L1470:
	.loc 8 194 0 is_stmt 0 discriminator 4
	addi 31,31,-32
.LVL2264:
.LBB8327:
.LBB8328:
.LBB8329:
	.loc 14 501 0 is_stmt 1 discriminator 4
	mr 3,31
	bl _ZN5idStr8FreeDataEv
.LBE8329:
.LBE8328:
.LBE8327:
	.loc 8 194 0 discriminator 4
	lwz 3,12(30)
	cmpw 7,3,31
	bne+ 7,.L1470
.LVL2265:
.L1466:
	.loc 8 194 0 is_stmt 0 discriminator 3
	addi 3,3,-4
	bl _ZdaPv
.L1465:
	.loc 8 197 0 is_stmt 1
	li 0,0
	stw 0,12(30)
	.loc 8 198 0
	stw 0,0(30)
	.loc 8 199 0
	stw 0,4(30)
	.loc 8 200 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL2266:
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI313:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE3222:
	.size	_ZN6idListI5idStrE5ClearEv, .-_ZN6idListI5idStrE5ClearEv
	.section	.text._ZN6idListI10idKeyValueE5ClearEv,"axG",@progbits,_ZN6idListI10idKeyValueE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI10idKeyValueE5ClearEv
	.type	_ZN6idListI10idKeyValueE5ClearEv, @function
_ZN6idListI10idKeyValueE5ClearEv:
.LFB3297:
	.loc 8 192 0
	.cfi_startproc
.LVL2267:
	mflr 0
	stwu 1,-16(1)
.LCFI314:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 8 193 0
	lwz 3,12(3)
.LVL2268:
	cmpwi 7,3,0
	beq- 7,.L1472
	.cfi_offset 65, 4
	.loc 8 194 0 discriminator 1
	bl _ZdaPv
.L1472:
	.loc 8 197 0
	li 0,0
	stw 0,12(31)
	.loc 8 198 0
	stw 0,0(31)
	.loc 8 199 0
	stw 0,4(31)
	.loc 8 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2269:
	mtlr 0
	addi 1,1,16
.LCFI315:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3297:
	.size	_ZN6idListI10idKeyValueE5ClearEv, .-_ZN6idListI10idKeyValueE5ClearEv
	.section	.text._ZN6idDictD2Ev,"axG",@progbits,_ZN6idDictD5Ev,comdat
	.align 2
	.weak	_ZN6idDictD2Ev
	.type	_ZN6idDictD2Ev, @function
_ZN6idDictD2Ev:
.LFB1936:
	.loc 11 173 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1936
.LVL2270:
	mflr 0
	stwu 1,-16(1)
.LCFI316:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB58:
.LBB8358:
	.loc 11 174 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN6idDict5ClearEv
.LEHE58:
.LVL2271:
.LBB8359:
.LBB8360:
.LBB8361:
	.loc 15 130 0
	addi 3,31,16
.LEHB59:
	bl _ZN11idHashIndex4FreeEv
.LEHE59:
.LVL2272:
.LBE8361:
.LBE8360:
.LBE8359:
.LBB8362:
.LBB8363:
.LBB8364:
.LBB8365:
	.loc 8 193 0 discriminator 1
	lwz 3,12(31)
	cmpwi 7,3,0
	beq- 7,.L1475
	.loc 8 194 0
	bl _ZdaPv
.L1475:
	.loc 8 197 0
	li 0,0
	stw 0,12(31)
	.loc 8 198 0
	stw 0,0(31)
	.loc 8 199 0
	stw 0,4(31)
.LBE8365:
.LBE8364:
.LBE8363:
.LBE8362:
.LBE8358:
	.loc 11 175 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL2273:
	addi 1,1,16
	.cfi_remember_state
.LCFI317:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2274:
.L1482:
.LCFI318:
	.cfi_restore_state
	mr 30,3
.LVL2275:
.LBB8372:
.LBB8366:
.LBB8367:
.LBB8368:
	.loc 15 130 0
	addi 3,31,16
	bl _ZN11idHashIndex4FreeEv
.LVL2276:
.L1480:
.LBE8368:
.LBE8367:
.LBE8366:
.LBB8369:
.LBB8370:
.LBB8371:
	.loc 8 181 0
	mr 3,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,30
.LEHB60:
	bl _Unwind_Resume
.LEHE60:
.LVL2277:
.L1483:
	mr 30,3
	b .L1480
.LBE8371:
.LBE8370:
.LBE8369:
.LBE8372:
	.cfi_endproc
.LFE1936:
	.section	.gcc_except_table
.LLSDA1936:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1936-.LLSDACSB1936
.LLSDACSB1936:
	.uleb128 .LEHB58-.LFB1936
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L1482-.LFB1936
	.uleb128 0
	.uleb128 .LEHB59-.LFB1936
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L1483-.LFB1936
	.uleb128 0
	.uleb128 .LEHB60-.LFB1936
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
.LLSDACSE1936:
	.section	.text._ZN6idDictD2Ev,"axG",@progbits,_ZN6idDictD5Ev,comdat
	.size	_ZN6idDictD2Ev, .-_ZN6idDictD2Ev
	.section	.text._ZN11idGameLocalD2Ev,"axG",@progbits,_ZN11idGameLocalD5Ev,comdat
	.align 2
	.weak	_ZN11idGameLocalD2Ev
	.type	_ZN11idGameLocalD2Ev, @function
_ZN11idGameLocalD2Ev:
.LFB3341:
	.loc 10 247 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3341
.LVL2278:
	mflr 0
	stwu 1,-48(1)
.LCFI319:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
.LBB8629:
	lis 9,_ZTV11idGameLocal+8@ha
.LBE8629:
	stw 28,32(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 0,52(1)
.LBB9058:
	la 0,_ZTV11idGameLocal+8@l(9)
	.cfi_offset 65, 4
.LBE9058:
	stw 29,36(1)
.LBB9059:
.LBB8630:
.LBB8631:
.LBB8632:
.LBB8633:
	.loc 8 193 0
	addis 29,3,0x27
	.cfi_offset 29, -12
.LBE8633:
.LBE8632:
.LBE8631:
.LBE8630:
.LBE9059:
	.loc 10 247 0
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 30,40(1)
	stw 31,44(1)
.LBB9060:
	.loc 10 247 0
	stw 0,0(3)
.LVL2279:
.LBB8643:
.LBB8641:
.LBB8639:
.LBB8637:
	.loc 8 193 0
	lwz 3,-9876(29)
.LVL2280:
	cmpwi 7,3,0
	beq- 7,.L1485
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.loc 8 194 0
	lwz 31,-4(3)
	slwi 31,31,5
	add 31,3,31
	b .L1486
.LVL2281:
.L1654:
	addi 31,31,-32
.LVL2282:
.LBB8634:
.LBB8635:
.LBB8636:
	.loc 14 501 0
	mr 3,31
.LEHB61:
	bl _ZN5idStr8FreeDataEv
.LEHE61:
	lwz 3,-9876(29)
.LVL2283:
.L1486:
.LBE8636:
.LBE8635:
.LBE8634:
	.loc 8 194 0
	cmpw 7,3,31
	bne+ 7,.L1654
	addi 3,3,-4
	bl _ZdaPv
.L1485:
	.loc 8 197 0
	li 0,0
.LBE8637:
.LBE8639:
.LBE8641:
.LBE8643:
.LBB8644:
.LBB8645:
.LBB8646:
	.loc 11 174 0
	addi 3,29,-9932
.LBE8646:
.LBE8645:
.LBE8644:
.LBB8676:
.LBB8642:
.LBB8640:
.LBB8638:
	.loc 8 197 0
	stw 0,-9876(29)
	.loc 8 198 0
	stw 0,-9888(29)
	.loc 8 199 0
	stw 0,-9884(29)
.LVL2284:
.LEHB62:
.LBE8638:
.LBE8640:
.LBE8642:
.LBE8676:
.LBB8677:
.LBB8672:
.LBB8668:
	.loc 11 174 0
	bl _ZN6idDict5ClearEv
.LEHE62:
.LVL2285:
.LBB8647:
.LBB8648:
.LBB8649:
	.loc 15 130 0
	addi 3,29,-9916
.LEHB63:
	bl _ZN11idHashIndex4FreeEv
.LEHE63:
.LVL2286:
.LBE8649:
.LBE8648:
.LBE8647:
.LBB8650:
.LBB8651:
.LBB8652:
.LBB8653:
	.loc 8 193 0
	lwz 3,-9920(29)
	cmpwi 7,3,0
	beq- 7,.L1490
	.loc 8 194 0
	bl _ZdaPv
.L1490:
.LBE8653:
.LBE8652:
.LBE8651:
.LBE8650:
.LBE8668:
.LBE8672:
.LBE8677:
	.loc 10 247 0
	addis 30,28,0x25
.LBB8678:
.LBB8673:
.LBB8669:
.LBB8660:
.LBB8658:
.LBB8656:
.LBB8654:
	.loc 8 197 0
	li 0,0
.LBE8654:
.LBE8656:
.LBE8658:
.LBE8660:
.LBE8669:
.LBE8673:
.LBE8678:
	.loc 10 247 0
	addi 23,30,2248
	addi 24,30,4296
	cmpw 7,23,24
.LBB8679:
.LBB8680:
.LBB8681:
.LBB8682:
.LBB8683:
.LBB8684:
	.file 27 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Heap.h"
	.loc 27 245 0
	addis 9,28,0x26
.LBE8684:
.LBE8683:
.LBE8682:
.LBE8681:
.LBE8680:
.LBE8679:
.LBB8690:
.LBB8674:
.LBB8670:
.LBB8661:
.LBB8659:
.LBB8657:
.LBB8655:
	.loc 8 197 0
	stw 0,-9920(29)
	.loc 8 198 0
	stw 0,-9932(29)
	.loc 8 199 0
	stw 0,-9928(29)
.LVL2287:
.LBE8655:
.LBE8657:
.LBE8659:
.LBE8661:
.LBE8670:
.LBE8674:
.LBE8690:
.LBB8691:
.LBB8689:
.LBB8688:
.LBB8687:
.LBB8686:
.LBB8685:
	.loc 27 245 0
	stw 0,6436(9)
	stw 0,6432(9)
.LVL2288:
.LBE8685:
.LBE8686:
.LBE8687:
.LBE8688:
.LBE8689:
.LBE8691:
.LBB8692:
.LBB8693:
.LBB8694:
.LBB8695:
.LBB8696:
.LBB8697:
	stw 0,6412(9)
	stw 0,6408(9)
.LVL2289:
.LBE8697:
.LBE8696:
.LBE8695:
.LBE8694:
.LBE8693:
.LBE8692:
.LBB8698:
.LBB8699:
.LBB8700:
.LBB8701:
	stw 0,6388(9)
	stw 0,6384(9)
.LVL2290:
.LBE8701:
.LBE8700:
.LBE8699:
.LBE8698:
.LBB8702:
.LBB8703:
.LBB8704:
.LBB8705:
	stw 0,6372(9)
	stw 0,6368(9)
.LBE8705:
.LBE8704:
.LBE8703:
.LBE8702:
	.loc 10 247 0
	beq- 7,.L1506
	mr 31,24
	addi 25,30,4280
.LBB8706:
.LBB8707:
.LBB8708:
.LBB8709:
	.loc 8 197 0
	li 27,0
.L1507:
.LBE8709:
.LBE8708:
.LBE8707:
.LBE8706:
	.loc 10 247 0 discriminator 10
	subf 26,24,31
	add 29,26,25
.LBB8719:
.LBB8716:
.LBB8713:
.LBB8710:
	.loc 8 193 0 discriminator 10
	lwz 3,12(29)
	cmpwi 7,3,0
	beq- 7,.L1509
	.loc 8 194 0
	bl _ZdaPv
.L1509:
.LBE8710:
.LBE8713:
.LBE8716:
.LBE8719:
	.loc 10 247 0
	addi 31,31,-16
.LBB8720:
.LBB8717:
.LBB8714:
.LBB8711:
	.loc 8 197 0
	stw 27,12(29)
.LBE8711:
.LBE8714:
.LBE8717:
.LBE8720:
	.loc 10 247 0
	cmpw 7,23,31
.LBB8721:
.LBB8718:
.LBB8715:
.LBB8712:
	.loc 8 198 0
	stwx 27,26,25
	.loc 8 199 0
	stw 27,4(29)
.LBE8712:
.LBE8715:
.LBE8718:
.LBE8721:
	.loc 10 247 0
	bne+ 7,.L1507
.LVL2291:
.L1506:
.LBB8722:
.LBB8723:
.LBB8724:
	.loc 11 174 0 discriminator 8
	addi 3,30,2164
.LEHB64:
	bl _ZN6idDict5ClearEv
.LEHE64:
.LVL2292:
.LBB8725:
.LBB8726:
.LBB8727:
	.loc 15 130 0
	addi 3,30,2180
.LEHB65:
	bl _ZN11idHashIndex4FreeEv
.LEHE65:
.LVL2293:
.LBE8727:
.LBE8726:
.LBE8725:
.LBB8728:
.LBB8729:
.LBB8730:
.LBB8731:
	.loc 8 193 0
	lwz 3,2176(30)
	cmpwi 7,3,0
	beq- 7,.L1511
	.loc 8 194 0
	bl _ZdaPv
.L1511:
.LBE8731:
.LBE8730:
.LBE8729:
.LBE8728:
.LBE8724:
.LBE8723:
.LBE8722:
.LBB8752:
.LBB8753:
.LBB8754:
.LBB8755:
	.loc 8 193 0
	lwz 3,2152(30)
.LBE8755:
.LBE8754:
.LBE8753:
.LBE8752:
.LBB8771:
.LBB8749:
.LBB8746:
.LBB8738:
.LBB8736:
.LBB8734:
.LBB8732:
	.loc 8 197 0
	li 0,0
	stw 0,2176(30)
.LBE8732:
.LBE8734:
.LBE8736:
.LBE8738:
.LBE8746:
.LBE8749:
.LBE8771:
.LBB8772:
.LBB8767:
.LBB8763:
.LBB8759:
	.loc 8 193 0
	cmpwi 7,3,0
.LBE8759:
.LBE8763:
.LBE8767:
.LBE8772:
.LBB8773:
.LBB8750:
.LBB8747:
.LBB8739:
.LBB8737:
.LBB8735:
.LBB8733:
	.loc 8 198 0
	stw 0,2164(30)
	.loc 8 199 0
	stw 0,2168(30)
.LVL2294:
.LBE8733:
.LBE8735:
.LBE8737:
.LBE8739:
.LBE8747:
.LBE8750:
.LBE8773:
.LBB8774:
.LBB8768:
.LBB8764:
.LBB8760:
	.loc 8 193 0
	beq- 7,.L1519
	.loc 8 194 0
	lwz 31,-4(3)
	slwi 31,31,5
	add 31,3,31
	b .L1520
.L1655:
	addi 31,31,-32
.LVL2295:
.LBB8756:
.LBB8757:
.LBB8758:
	.loc 14 501 0
	mr 3,31
.LEHB66:
	bl _ZN5idStr8FreeDataEv
.LEHE66:
	lwz 3,2152(30)
.LVL2296:
.L1520:
.LBE8758:
.LBE8757:
.LBE8756:
	.loc 8 194 0
	cmpw 7,3,31
	bne+ 7,.L1655
	addi 3,3,-4
	bl _ZdaPv
.L1519:
.LBE8760:
.LBE8764:
.LBE8768:
.LBE8774:
.LBB8775:
.LBB8776:
.LBB8777:
.LBB8778:
	.loc 8 193 0
	lwz 3,2136(30)
.LBE8778:
.LBE8777:
.LBE8776:
.LBE8775:
.LBB8788:
.LBB8769:
.LBB8765:
.LBB8761:
	.loc 8 197 0
	li 0,0
	stw 0,2152(30)
.LBE8761:
.LBE8765:
.LBE8769:
.LBE8788:
.LBB8789:
.LBB8785:
.LBB8782:
.LBB8779:
	.loc 8 193 0
	cmpwi 7,3,0
.LBE8779:
.LBE8782:
.LBE8785:
.LBE8789:
.LBB8790:
.LBB8770:
.LBB8766:
.LBB8762:
	.loc 8 198 0
	stw 0,2140(30)
	.loc 8 199 0
	stw 0,2144(30)
.LVL2297:
.LBE8762:
.LBE8766:
.LBE8770:
.LBE8790:
.LBB8791:
.LBB8786:
.LBB8783:
.LBB8780:
	.loc 8 193 0
	beq- 7,.L1523
	.loc 8 194 0
	bl _ZdaPv
.L1523:
	.loc 8 197 0
	li 0,0
.LBE8780:
.LBE8783:
.LBE8786:
.LBE8791:
.LBB8792:
.LBB8793:
.LBB8794:
	.loc 14 501 0
	addi 3,30,2064
.LBE8794:
.LBE8793:
.LBE8792:
.LBB8797:
.LBB8787:
.LBB8784:
.LBB8781:
	.loc 8 197 0
	stw 0,2136(30)
	.loc 8 198 0
	stw 0,2124(30)
	.loc 8 199 0
	stw 0,2128(30)
.LVL2298:
.LEHB67:
.LBE8781:
.LBE8784:
.LBE8787:
.LBE8797:
.LBB8798:
.LBB8796:
.LBB8795:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE67:
.LVL2299:
.LBE8795:
.LBE8796:
.LBE8798:
.LBB8799:
.LBB8800:
.LBB8801:
	.loc 9 102 0 discriminator 15
	addi 3,30,2024
	addi 29,30,1724
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LVL2300:
.LBE8801:
.LBE8800:
.LBE8799:
.LBB8802:
.LBB8803:
.LBB8804:
	.loc 13 95 0 discriminator 15
	addi 31,30,1904
	b .L1528
.L1656:
	.loc 13 95 0 is_stmt 0
	addi 31,31,-36
.LVL2301:
.LBB8805:
.LBB8806:
.LBB8807:
.LBB8808:
.LBB8809:
.LBB8810:
	.loc 14 501 0 is_stmt 1
	mr 3,31
.LEHB68:
	bl _ZN5idStr8FreeDataEv
.LEHE68:
.LVL2302:
.L1528:
.LBE8810:
.LBE8809:
.LBE8808:
.LBE8807:
.LBE8806:
.LBE8805:
	.loc 13 95 0
	cmpw 7,31,29
	bne+ 7,.L1656
.LVL2303:
.LBB8811:
.LBB8812:
.LBB8813:
	.loc 14 501 0
	addi 3,30,1652
.LEHB69:
	bl _ZN5idStr8FreeDataEv
.LEHE69:
.LVL2304:
.LBE8813:
.LBE8812:
.LBE8811:
.LBB8814:
.LBB8815:
.LBB8816:
	addi 3,30,1576
.LEHB70:
	bl _ZN5idStr8FreeDataEv
.LEHE70:
.LVL2305:
.LBE8816:
.LBE8815:
.LBE8814:
.LBB8817:
.LBB8818:
.LBB8819:
	addi 3,30,1544
.LEHB71:
	bl _ZN5idStr8FreeDataEv
.LEHE71:
.LVL2306:
.LBE8819:
.LBE8818:
.LBE8817:
.LBE8804:
.LBE8803:
.LBE8802:
.LBB8831:
.LBB8832:
.LBB8833:
	.loc 14 501 0 is_stmt 0 discriminator 17
	addi 3,30,1384
.LEHB72:
	bl _ZN5idStr8FreeDataEv
.LEHE72:
.LBE8833:
.LBE8832:
.LBE8831:
	.loc 10 247 0 is_stmt 1 discriminator 18
	addi 3,30,1236
.LEHB73:
	bl _ZN5idPVSD1Ev
.LEHE73:
.LVL2307:
.LBB8834:
.LBB8835:
.LBB8836:
	.loc 12 248 0 discriminator 19
	addis 31,28,0x23
	addi 3,31,17444
.LEHB74:
	bl _ZN11idClipModelD1Ev
.LEHE74:
	.loc 12 248 0 is_stmt 0
	addi 3,31,17304
.LEHB75:
	bl _ZN11idClipModelD1Ev
.LEHE75:
.LBE8836:
.LBE8835:
.LBE8834:
	.loc 10 247 0 is_stmt 1 discriminator 20
	addis 31,28,0x1
	addi 3,31,-32060
.LEHB76:
	bl _ZN9idProgramD1Ev
.LEHE76:
.LVL2308:
.LBB8839:
.LBB8840:
.LBB8841:
	.loc 11 174 0 discriminator 21
	addi 3,31,-32156
.LEHB77:
	bl _ZN6idDict5ClearEv
.LEHE77:
.LVL2309:
.LBB8842:
.LBB8843:
.LBB8844:
	.loc 15 130 0
	addi 3,31,-32140
.LEHB78:
	bl _ZN11idHashIndex4FreeEv
.LEHE78:
.LVL2310:
.LBE8844:
.LBE8843:
.LBE8842:
.LBB8845:
.LBB8846:
.LBB8847:
.LBB8848:
	.loc 8 193 0
	lwz 3,-32144(31)
	cmpwi 7,3,0
	beq- 7,.L1546
	.loc 8 194 0
	bl _ZdaPv
.L1546:
	.loc 8 197 0
	li 0,0
.LBE8848:
.LBE8847:
.LBE8846:
.LBE8845:
.LBE8841:
.LBE8840:
.LBE8839:
.LBB8865:
.LBB8866:
.LBB8867:
	.loc 9 102 0
	addi 3,31,-32180
.LBE8867:
.LBE8866:
.LBE8865:
.LBB8870:
.LBB8862:
.LBB8859:
.LBB8852:
.LBB8851:
.LBB8850:
.LBB8849:
	.loc 8 197 0
	stw 0,-32144(31)
	.loc 8 198 0
	stw 0,-32156(31)
	.loc 8 199 0
	stw 0,-32152(31)
.LVL2311:
.LBE8849:
.LBE8850:
.LBE8851:
.LBE8852:
.LBE8859:
.LBE8862:
.LBE8870:
.LBB8871:
.LBB8869:
.LBB8868:
	.loc 9 102 0
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LVL2312:
.LBE8868:
.LBE8869:
.LBE8871:
.LBB8872:
.LBB8873:
.LBB8874:
	addi 3,31,-32196
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LVL2313:
.LBE8874:
.LBE8873:
.LBE8872:
.LBB8875:
.LBB8876:
.LBB8877:
	.loc 15 130 0
	addi 3,31,-32228
.LEHB79:
	bl _ZN11idHashIndex4FreeEv
.LEHE79:
.LBE8877:
.LBE8876:
.LBE8875:
	.loc 10 247 0 discriminator 25
	addi 26,28,532
	addi 25,28,356
	mr 31,26
.LBB8878:
.LBB8879:
.LBB8880:
.LBB8881:
.LBB8882:
.LBB8883:
	addi 27,28,488
.LBE8883:
.LBE8882:
.LBE8881:
.LBB8886:
.LBB8887:
.LBB8888:
.LBB8889:
	.loc 8 197 0 discriminator 25
	li 30,0
.LVL2314:
.L1557:
.LBE8889:
.LBE8888:
.LBE8887:
.LBE8886:
	.loc 10 247 0 discriminator 29
	addi 29,31,-44
	.loc 11 174 0 discriminator 29
	mr 3,29
.LEHB80:
	bl _ZN6idDict5ClearEv
.LEHE80:
.LVL2315:
.LBB8899:
.LBB8885:
.LBB8884:
	.loc 15 130 0
	addi 3,31,-28
.LEHB81:
	bl _ZN11idHashIndex4FreeEv
.LEHE81:
	.loc 10 247 0
	subf 23,26,31
	add 24,23,27
.LBE8884:
.LBE8885:
.LBE8899:
.LBB8900:
.LBB8896:
.LBB8893:
.LBB8890:
	.loc 8 193 0
	lwz 3,12(24)
	cmpwi 7,3,0
	beq- 7,.L1562
	.loc 8 194 0
	bl _ZdaPv
.L1562:
.LBE8890:
.LBE8893:
.LBE8896:
.LBE8900:
.LBE8880:
.LBE8879:
.LBE8878:
	.loc 10 247 0
	cmpw 7,25,29
.LBB8917:
.LBB8913:
.LBB8909:
.LBB8901:
.LBB8897:
.LBB8894:
.LBB8891:
	.loc 8 197 0
	stw 30,12(24)
.LBE8891:
.LBE8894:
.LBE8897:
.LBE8901:
.LBE8909:
.LBE8913:
.LBE8917:
	.loc 10 247 0
	mr 31,29
.LVL2316:
.LBB8918:
.LBB8914:
.LBB8910:
.LBB8902:
.LBB8898:
.LBB8895:
.LBB8892:
	.loc 8 198 0
	stwx 30,23,27
	.loc 8 199 0
	stw 30,4(24)
.LBE8892:
.LBE8895:
.LBE8898:
.LBE8902:
.LBE8910:
.LBE8914:
.LBE8918:
	.loc 10 247 0
	bne+ 7,.L1557
	.loc 10 247 0 is_stmt 0 discriminator 27
	addi 26,28,228
	addi 25,28,52
	mr 31,26
.LBB8919:
.LBB8920:
.LBB8921:
.LBB8922:
.LBB8923:
.LBB8924:
	addi 27,28,184
.LBE8924:
.LBE8923:
.LBE8922:
.LBB8927:
.LBB8928:
.LBB8929:
.LBB8930:
	.loc 8 197 0 is_stmt 1 discriminator 27
	li 30,0
.LVL2317:
.L1568:
.LBE8930:
.LBE8929:
.LBE8928:
.LBE8927:
	.loc 10 247 0 discriminator 34
	addi 29,31,-44
	.loc 11 174 0 discriminator 34
	mr 3,29
.LEHB82:
	bl _ZN6idDict5ClearEv
.LEHE82:
.LVL2318:
.LBB8940:
.LBB8926:
.LBB8925:
	.loc 15 130 0
	addi 3,31,-28
.LEHB83:
	bl _ZN11idHashIndex4FreeEv
.LEHE83:
	.loc 10 247 0
	subf 23,26,31
	add 24,23,27
.LBE8925:
.LBE8926:
.LBE8940:
.LBB8941:
.LBB8937:
.LBB8934:
.LBB8931:
	.loc 8 193 0
	lwz 3,12(24)
	cmpwi 7,3,0
	beq- 7,.L1573
	.loc 8 194 0
	bl _ZdaPv
.L1573:
.LBE8931:
.LBE8934:
.LBE8937:
.LBE8941:
.LBE8921:
.LBE8920:
.LBE8919:
	.loc 10 247 0
	cmpw 7,25,29
.LBB8956:
.LBB8953:
.LBB8950:
.LBB8942:
.LBB8938:
.LBB8935:
.LBB8932:
	.loc 8 197 0
	stw 30,12(24)
.LBE8932:
.LBE8935:
.LBE8938:
.LBE8942:
.LBE8950:
.LBE8953:
.LBE8956:
	.loc 10 247 0
	mr 31,29
.LVL2319:
.LBB8957:
.LBB8954:
.LBB8951:
.LBB8943:
.LBB8939:
.LBB8936:
.LBB8933:
	.loc 8 198 0
	stwx 30,23,27
	.loc 8 199 0
	stw 30,4(24)
.LBE8933:
.LBE8936:
.LBE8939:
.LBE8943:
.LBE8951:
.LBE8954:
.LBE8957:
	.loc 10 247 0
	bne+ 7,.L1568
.LVL2320:
	.loc 10 247 0 is_stmt 0 discriminator 32
	addi 31,28,4
.LBB8958:
.LBB8959:
.LBB8960:
	.loc 11 174 0 is_stmt 1 discriminator 32
	mr 3,31
.LEHB84:
	bl _ZN6idDict5ClearEv
.LEHE84:
.LVL2321:
.LBB8961:
.LBB8962:
.LBB8963:
	.loc 15 130 0
	addi 3,28,20
.LEHB85:
	bl _ZN11idHashIndex4FreeEv
.LEHE85:
.LVL2322:
.LBE8963:
.LBE8962:
.LBE8961:
.LBB8964:
.LBB8965:
.LBB8966:
.LBB8967:
	.loc 8 193 0
	lwz 3,16(28)
	cmpwi 7,3,0
	beq- 7,.L1580
	.loc 8 194 0
	bl _ZdaPv
.L1580:
	.loc 8 197 0
	li 0,0
.LBE8967:
.LBE8966:
.LBE8965:
.LBE8964:
.LBE8960:
.LBE8959:
.LBE8958:
.LBB8984:
.LBB8985:
.LBB8986:
	.loc 3 74 0
	lis 9,_ZTV6idGame+8@ha
.LBE8986:
.LBE8985:
.LBE8984:
.LBB8989:
.LBB8981:
.LBB8978:
.LBB8971:
.LBB8970:
.LBB8969:
.LBB8968:
	.loc 8 197 0
	stw 0,16(28)
	.loc 8 198 0
	stw 0,4(28)
	.loc 8 199 0
	stw 0,8(28)
.LVL2323:
.LBE8968:
.LBE8969:
.LBE8970:
.LBE8971:
.LBE8978:
.LBE8981:
.LBE8989:
.LBB8990:
.LBB8988:
.LBB8987:
	.loc 3 74 0
	la 0,_ZTV6idGame+8@l(9)
	stw 0,0(28)
.LBE8987:
.LBE8988:
.LBE8990:
.LBE9060:
	.loc 10 247 0
	lwz 0,52(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
.LVL2324:
	lwz 29,36(1)
.LVL2325:
	lwz 30,40(1)
	lwz 31,44(1)
.LVL2326:
	addi 1,1,48
	.cfi_remember_state
.LCFI320:
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
.LVL2327:
.L1620:
.LCFI321:
	.cfi_restore_state
	mr 31,3
.LVL2328:
.LBB9061:
	addi 3,29,-9932
	bl _ZN6idDictD1Ev
	mr 29,31
.L1591:
.LVL2329:
	addis 30,28,0x25
.LBB8991:
.LBB8992:
.LBB8993:
.LBB8994:
.LBB8995:
.LBB8996:
	.loc 27 245 0
	addis 9,28,0x26
.LBE8996:
.LBE8995:
.LBE8994:
.LBE8993:
.LBE8992:
.LBE8991:
	.loc 10 247 0
	addi 27,30,2248
	addi 31,30,4296
	cmpw 7,27,31
.LBB9002:
.LBB9001:
.LBB9000:
.LBB8999:
.LBB8998:
.LBB8997:
	.loc 27 245 0
	li 0,0
	stw 0,6436(9)
	stw 0,6432(9)
.LVL2330:
.LBE8997:
.LBE8998:
.LBE8999:
.LBE9000:
.LBE9001:
.LBE9002:
.LBB9003:
.LBB9004:
.LBB9005:
.LBB9006:
.LBB9007:
.LBB9008:
	stw 0,6412(9)
	stw 0,6408(9)
.LVL2331:
.LBE9008:
.LBE9007:
.LBE9006:
.LBE9005:
.LBE9004:
.LBE9003:
.LBB9009:
.LBB9010:
.LBB9011:
.LBB9012:
	stw 0,6388(9)
	stw 0,6384(9)
.LVL2332:
.LBE9012:
.LBE9011:
.LBE9010:
.LBE9009:
.LBB9013:
.LBB9014:
.LBB9015:
.LBB9016:
	stw 0,6372(9)
	stw 0,6368(9)
.LBE9016:
.LBE9015:
.LBE9014:
.LBE9013:
	.loc 10 247 0
	beq- 7,.L1598
.L1653:
	.loc 10 247 0 is_stmt 0 discriminator 42
	addi 31,31,-16
.LVL2333:
.LBB9017:
.LBB9018:
.LBB9019:
	.loc 8 181 0 is_stmt 1 discriminator 42
	mr 3,31
	bl _ZN6idListIiE5ClearEv
.LBE9019:
.LBE9018:
.LBE9017:
	.loc 10 247 0 discriminator 42
	cmpw 7,27,31
	bne+ 7,.L1653
.LVL2334:
.L1598:
	.loc 10 247 0 is_stmt 0
	addi 3,30,2164
	mr 31,29
	bl _ZN6idDictD1Ev
.LVL2335:
.L1517:
.LBB9020:
.LBB9021:
.LBB9022:
	.loc 8 181 0 is_stmt 1
	addi 3,30,2140
	bl _ZN6idListI5idStrE5ClearEv
.LVL2336:
.L1603:
.LBE9022:
.LBE9021:
.LBE9020:
.LBB9023:
.LBB9024:
.LBB9025:
	addi 3,30,2124
	bl _ZN6idListIP5idAASE5ClearEv
.LVL2337:
.LBE9025:
.LBE9024:
.LBE9023:
.LBB9026:
.LBB9027:
.LBB9028:
	.loc 14 501 0
	addi 3,30,2064
	bl _ZN5idStr8FreeDataEv
.LVL2338:
.L1606:
.LBE9028:
.LBE9027:
.LBE9026:
.LBB9029:
.LBB9030:
.LBB9031:
	.loc 9 102 0
	addi 3,30,2024
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LBE9031:
.LBE9030:
.LBE9029:
	.loc 10 247 0
	addi 3,30,1416
	bl _ZN17idMultiplayerGameD1Ev
.LVL2339:
.L1539:
.LBB9032:
.LBB9033:
.LBB9034:
	.loc 14 501 0
	addi 3,30,1384
	bl _ZN5idStr8FreeDataEv
.LVL2340:
.L1609:
.LBE9034:
.LBE9033:
.LBE9032:
	.loc 10 247 0
	addi 3,30,1236
	mr 30,31
	bl _ZN5idPVSD1Ev
.L1610:
	addis 3,28,0x23
	addi 3,3,17272
	bl _ZN6idClipD1Ev
.L1544:
	addis 31,28,0x1
	addi 3,31,-32060
	bl _ZN9idProgramD1Ev
.L1611:
	addi 3,31,-32156
	bl _ZN6idDictD1Ev
	b .L1552
.LVL2341:
.L1643:
	mr 30,3
.LVL2342:
.L1584:
.LBB9035:
.LBB8982:
.LBB8979:
.LBB8972:
.LBB8973:
.LBB8974:
	.loc 8 181 0
	mr 3,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,30
.LVL2343:
.L1586:
.LBE8974:
.LBE8973:
.LBE8972:
.LBE8979:
.LBE8982:
.LBE9035:
.LBB9036:
.LBB9037:
.LBB9038:
	.loc 3 74 0
	lis 9,_ZTV6idGame+8@ha
	la 0,_ZTV6idGame+8@l(9)
	stw 0,0(28)
.LEHB86:
	bl _Unwind_Resume
.LEHE86:
.LVL2344:
.L1639:
	mr 30,3
.LVL2345:
.L1565:
.LBE9038:
.LBE9037:
.LBE9036:
.LBB9039:
.LBB8915:
.LBB8911:
.LBB8903:
.LBB8904:
.LBB8905:
	.loc 8 181 0
	mr 3,29
	bl _ZN6idListI10idKeyValueE5ClearEv
.LVL2346:
.L1567:
.LBE8905:
.LBE8904:
.LBE8903:
.LBE8911:
.LBE8915:
.LBE9039:
	.loc 10 247 0
	addi 29,28,52
	addi 31,28,228
.L1617:
	.loc 10 247 0 is_stmt 0 discriminator 48
	addi 31,31,-44
	mr 3,31
	bl _ZN6idDictD1Ev
	cmpw 7,29,31
	bne+ 7,.L1617
	.loc 10 247 0
	mr 31,30
.L1578:
	addi 3,28,4
	bl _ZN6idDictD1Ev
	mr 3,31
	b .L1586
.LVL2347:
.L1640:
	mr 30,3
.LVL2348:
.LBB9040:
.LBB8916:
.LBB8912:
.LBB8906:
.LBB8907:
.LBB8908:
	.loc 15 130 0 is_stmt 1
	addi 3,31,-28
	bl _ZN11idHashIndex4FreeEv
	b .L1565
.LVL2349:
.L1628:
	mr 30,3
.LVL2350:
.L1615:
.LBE8908:
.LBE8907:
.LBE8906:
.LBE8912:
.LBE8916:
.LBE9040:
	.loc 10 247 0
	addi 29,28,356
	addi 31,28,532
.L1616:
	.loc 10 247 0 is_stmt 0 discriminator 45
	addi 31,31,-44
	mr 3,31
	bl _ZN6idDictD1Ev
	cmpw 7,29,31
	bne+ 7,.L1616
	b .L1567
.LVL2351:
.L1637:
	mr 30,3
.LVL2352:
.L1550:
.LBB9041:
.LBB8863:
.LBB8860:
.LBB8853:
.LBB8854:
.LBB8855:
	.loc 8 181 0 is_stmt 1
	addi 3,31,-32156
	bl _ZN6idListI10idKeyValueE5ClearEv
.LVL2353:
.L1552:
.LBE8855:
.LBE8854:
.LBE8853:
.LBE8860:
.LBE8863:
.LBE9041:
.LBB9042:
.LBB9043:
.LBB9044:
	.loc 9 102 0
	addi 3,31,-32180
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LVL2354:
.LBE9044:
.LBE9043:
.LBE9042:
.LBB9045:
.LBB9046:
.LBB9047:
	addi 3,31,-32196
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LVL2355:
.LBE9047:
.LBE9046:
.LBE9045:
.LBB9048:
.LBB9049:
.LBB9050:
	.loc 15 130 0
	addi 3,31,-32228
	bl _ZN11idHashIndex4FreeEv
	b .L1615
.LVL2356:
.L1641:
	mr 31,3
.LVL2357:
.L1576:
.LBE9050:
.LBE9049:
.LBE9048:
.LBB9051:
.LBB8955:
.LBB8952:
.LBB8944:
.LBB8945:
.LBB8946:
	.loc 8 181 0
	mr 3,29
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L1578
.L1642:
	mr 30,3
.LVL2358:
.LBE8946:
.LBE8945:
.LBE8944:
.LBB8947:
.LBB8948:
.LBB8949:
	.loc 15 130 0
	addi 3,31,-28
	bl _ZN11idHashIndex4FreeEv
	mr 31,30
	b .L1576
.LVL2359:
.L1644:
	mr 30,3
.LVL2360:
.LBE8949:
.LBE8948:
.LBE8947:
.LBE8952:
.LBE8955:
.LBE9051:
.LBB9052:
.LBB8983:
.LBB8980:
.LBB8975:
.LBB8976:
.LBB8977:
	addi 3,28,20
	bl _ZN11idHashIndex4FreeEv
	b .L1584
.LVL2361:
.L1638:
	mr 30,3
.LVL2362:
.LBE8977:
.LBE8976:
.LBE8975:
.LBE8980:
.LBE8983:
.LBE9052:
.LBB9053:
.LBB8864:
.LBB8861:
.LBB8856:
.LBB8857:
.LBB8858:
	addi 3,31,-32140
	bl _ZN11idHashIndex4FreeEv
	b .L1550
.LVL2363:
.L1627:
	mr 30,3
	b .L1611
.L1626:
	mr 30,3
	b .L1544
.L1636:
	mr 30,3
.LBE8858:
.LBE8857:
.LBE8856:
.LBE8861:
.LBE8864:
.LBE9053:
.LBB9054:
.LBB8838:
.LBB8837:
	.loc 12 248 0
	addi 3,31,17304
	bl _ZN11idClipModelD1Ev
	b .L1544
.LVL2364:
.L1625:
	mr 30,3
	b .L1610
.L1624:
	mr 31,3
	b .L1609
.LVL2365:
.L1623:
	mr 31,3
	b .L1539
.LVL2366:
.L1633:
	mr 31,3
.LVL2367:
.L1537:
.LBE8837:
.LBE8838:
.LBE9054:
.LBB9055:
.LBB8830:
.LBB8829:
.LBB8820:
.LBB8821:
.LBB8822:
	.loc 14 501 0
	addi 3,30,1544
	bl _ZN5idStr8FreeDataEv
	b .L1539
.LVL2368:
.L1634:
	mr 31,3
.LVL2369:
.L1535:
.LBE8822:
.LBE8821:
.LBE8820:
.LBB8823:
.LBB8824:
.LBB8825:
	addi 3,30,1576
	bl _ZN5idStr8FreeDataEv
	b .L1537
.LVL2370:
.L1635:
	mr 31,3
.LVL2371:
.LBE8825:
.LBE8824:
.LBE8823:
.LBB8826:
.LBB8827:
.LBB8828:
	addi 3,30,1652
	bl _ZN5idStr8FreeDataEv
	b .L1535
.LVL2372:
.L1622:
	mr 31,3
	b .L1606
.LVL2373:
.L1621:
	mr 31,3
.LVL2374:
	b .L1603
.LVL2375:
.L1631:
	mr 31,3
.LVL2376:
.L1515:
.LBE8828:
.LBE8827:
.LBE8826:
.LBE8829:
.LBE8830:
.LBE9055:
.LBB9056:
.LBB8751:
.LBB8748:
.LBB8740:
.LBB8741:
.LBB8742:
	.loc 8 181 0
	addi 3,30,2164
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L1517
.LVL2377:
.L1632:
	mr 31,3
.LVL2378:
.LBE8742:
.LBE8741:
.LBE8740:
.LBB8743:
.LBB8744:
.LBB8745:
	.loc 15 130 0
	addi 3,30,2180
	bl _ZN11idHashIndex4FreeEv
	b .L1515
.LVL2379:
.L1629:
	mr 31,3
.LVL2380:
.L1494:
.LBE8745:
.LBE8744:
.LBE8743:
.LBE8748:
.LBE8751:
.LBE9056:
.LBB9057:
.LBB8675:
.LBB8671:
.LBB8662:
.LBB8663:
.LBB8664:
	.loc 8 181 0
	addi 3,29,-9932
	mr 29,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L1591
.LVL2381:
.L1630:
	mr 31,3
.LVL2382:
.LBE8664:
.LBE8663:
.LBE8662:
.LBB8665:
.LBB8666:
.LBB8667:
	.loc 15 130 0
	addi 3,29,-9916
	bl _ZN11idHashIndex4FreeEv
	b .L1494
.LBE8667:
.LBE8666:
.LBE8665:
.LBE8671:
.LBE8675:
.LBE9057:
.LBE9061:
	.cfi_endproc
.LFE3341:
	.section	.gcc_except_table
.LLSDA3341:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3341-.LLSDACSB3341
.LLSDACSB3341:
	.uleb128 .LEHB61-.LFB3341
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1620-.LFB3341
	.uleb128 0
	.uleb128 .LEHB62-.LFB3341
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1630-.LFB3341
	.uleb128 0
	.uleb128 .LEHB63-.LFB3341
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L1629-.LFB3341
	.uleb128 0
	.uleb128 .LEHB64-.LFB3341
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1632-.LFB3341
	.uleb128 0
	.uleb128 .LEHB65-.LFB3341
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1631-.LFB3341
	.uleb128 0
	.uleb128 .LEHB66-.LFB3341
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1621-.LFB3341
	.uleb128 0
	.uleb128 .LEHB67-.LFB3341
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L1622-.LFB3341
	.uleb128 0
	.uleb128 .LEHB68-.LFB3341
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L1635-.LFB3341
	.uleb128 0
	.uleb128 .LEHB69-.LFB3341
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1634-.LFB3341
	.uleb128 0
	.uleb128 .LEHB70-.LFB3341
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1633-.LFB3341
	.uleb128 0
	.uleb128 .LEHB71-.LFB3341
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1623-.LFB3341
	.uleb128 0
	.uleb128 .LEHB72-.LFB3341
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L1624-.LFB3341
	.uleb128 0
	.uleb128 .LEHB73-.LFB3341
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1625-.LFB3341
	.uleb128 0
	.uleb128 .LEHB74-.LFB3341
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1636-.LFB3341
	.uleb128 0
	.uleb128 .LEHB75-.LFB3341
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1626-.LFB3341
	.uleb128 0
	.uleb128 .LEHB76-.LFB3341
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1627-.LFB3341
	.uleb128 0
	.uleb128 .LEHB77-.LFB3341
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1638-.LFB3341
	.uleb128 0
	.uleb128 .LEHB78-.LFB3341
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1637-.LFB3341
	.uleb128 0
	.uleb128 .LEHB79-.LFB3341
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1628-.LFB3341
	.uleb128 0
	.uleb128 .LEHB80-.LFB3341
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1640-.LFB3341
	.uleb128 0
	.uleb128 .LEHB81-.LFB3341
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L1639-.LFB3341
	.uleb128 0
	.uleb128 .LEHB82-.LFB3341
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1642-.LFB3341
	.uleb128 0
	.uleb128 .LEHB83-.LFB3341
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1641-.LFB3341
	.uleb128 0
	.uleb128 .LEHB84-.LFB3341
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1644-.LFB3341
	.uleb128 0
	.uleb128 .LEHB85-.LFB3341
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1643-.LFB3341
	.uleb128 0
	.uleb128 .LEHB86-.LFB3341
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
.LLSDACSE3341:
	.section	.text._ZN11idGameLocalD2Ev,"axG",@progbits,_ZN11idGameLocalD5Ev,comdat
	.size	_ZN11idGameLocalD2Ev, .-_ZN11idGameLocalD2Ev
	.section	.text._ZN11idGameLocalD0Ev,"axG",@progbits,_ZN11idGameLocalD5Ev,comdat
	.align 2
	.weak	_ZN11idGameLocalD0Ev
	.type	_ZN11idGameLocalD0Ev, @function
_ZN11idGameLocalD0Ev:
.LFB3343:
	.loc 10 247 0
	.cfi_startproc
.LVL2383:
	stwu 1,-16(1)
.LCFI322:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 10 247 0
	.cfi_offset 65, 4
	bl _ZN11idGameLocalD1Ev
.LVL2384:
	mr 3,31
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2385:
	mtlr 0
	addi 1,1,16
.LCFI323:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3343:
	.size	_ZN11idGameLocalD0Ev, .-_ZN11idGameLocalD0Ev
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal11NeedRestartEv
	.type	_ZN11idGameLocal11NeedRestartEv, @function
_ZN11idGameLocal11NeedRestartEv:
.LFB2968:
	.loc 4 4207 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2968
.LVL2386:
	mflr 0
	stwu 1,-88(1)
.LCFI324:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
.LVL2387:
.LBB9119:
.LBB9120:
.LBB9121:
.LBB9122:
	.loc 8 159 0
	li 9,16
.LBE9122:
.LBE9121:
.LBB9129:
.LBB9130:
	.loc 15 112 0
	li 4,1024
.LBE9130:
.LBE9129:
.LBE9120:
.LBE9119:
	.loc 4 4207 0
	stw 27,68(1)
.LBB9223:
.LBB9171:
.LBB9134:
.LBB9131:
	.loc 15 112 0
	li 5,1024
.LBE9131:
.LBE9134:
.LBE9171:
.LBE9223:
	.loc 4 4207 0
	stw 0,92(1)
	mr 27,3
	.cfi_offset 65, 4
	.cfi_offset 27, -20
.LBB9224:
.LBB9172:
.LBB9135:
.LBB9127:
.LBB9123:
.LBB9124:
	.loc 8 197 0
	li 0,0
.LBE9124:
.LBE9123:
.LBE9127:
.LBE9135:
.LBB9136:
.LBB9132:
	.loc 15 112 0
	addi 3,1,24
.LVL2388:
.LBE9132:
.LBE9136:
.LBE9172:
.LBE9224:
	.loc 4 4207 0
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 28,72(1)
	stw 29,76(1)
	stw 30,80(1)
	stw 31,84(1)
.LBB9225:
.LBB9173:
.LBB9137:
.LBB9128:
	.loc 8 159 0
	stw 9,16(1)
.LVL2389:
.LBB9126:
.LBB9125:
	.loc 8 197 0
	stw 0,20(1)
	.loc 8 198 0
	stw 0,8(1)
	.loc 8 199 0
	stw 0,12(1)
.LVL2390:
.LEHB87:
.LBE9125:
.LBE9126:
.LBE9128:
.LBE9137:
.LBB9138:
.LBB9133:
	.loc 15 112 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	bl _ZN11idHashIndex4InitEii
.LEHE87:
.LVL2391:
.LBE9133:
.LBE9138:
.LBB9139:
.LBB9140:
	.loc 8 319 0
	lwz 31,20(1)
	.loc 8 317 0
	li 0,16
	stw 0,16(1)
	.loc 8 319 0
	cmpwi 7,31,0
	beq- 7,.L1660
	.loc 8 321 0
	lwz 9,8(1)
	.loc 8 323 0
	lwz 0,12(1)
	.loc 8 321 0
	addi 3,9,15
.LVL2392:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2393:
	slwi 3,3,4
.LVL2394:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1660
.LVL2395:
.LBB9141:
.LBB9142:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1691
.LVL2396:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,12(1)
	.loc 8 387 0
	bgt- 7,.L1692
.L1662:
	.loc 8 392 0
	slwi 3,3,3
.LVL2397:
.LEHB88:
	bl _Znaj
.LVL2398:
	.loc 8 393 0
	lwz 0,8(1)
	.loc 8 392 0
	stw 3,20(1)
.LVL2399:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1663
	.loc 4 4207 0
	addi 8,31,-8
.LBE9142:
.LBE9141:
.LBE9140:
.LBE9139:
.LBE9173:
.LBE9225:
	.loc 8 393 0
	li 9,0
	b .L1664
.LVL2400:
.L1693:
.LBB9226:
.LBB9174:
.LBB9151:
.LBB9149:
.LBB9147:
.LBB9145:
	lwz 3,20(1)
.LVL2401:
.L1664:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2402:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,8(1)
	cmpw 7,9,0
	blt+ 7,.L1693
.LVL2403:
.L1663:
	.loc 8 399 0
	mr 3,31
	bl _ZdaPv
.LVL2404:
.L1660:
.LBE9145:
.LBE9147:
.LBE9149:
.LBE9151:
.LBB9152:
.LBB9153:
	.loc 15 371 0
	li 0,16
.LBE9153:
.LBE9152:
.LBB9155:
.LBB9156:
	.loc 15 341 0
	addi 3,1,24
.LVL2405:
.LBE9156:
.LBE9155:
.LBB9160:
.LBB9154:
	.loc 15 371 0
	stw 0,40(1)
.LVL2406:
.LBE9154:
.LBE9160:
.LBB9161:
.LBB9157:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE88:
.LVL2407:
	.loc 15 342 0
	li 0,128
.LBE9157:
.LBE9161:
.LBE9174:
	.loc 4 4212 0
	lis 9,cvarSystem@ha
.LBB9175:
.LBB9162:
.LBB9158:
	.loc 15 342 0
	stw 0,24(1)
	.loc 15 343 0
	li 0,16
.LBE9158:
.LBE9162:
.LBE9175:
	.loc 4 4212 0
	lwz 9,cvarSystem@l(9)
	li 4,1024
.LBB9176:
.LBB9163:
.LBB9159:
	.loc 15 343 0
	stw 0,32(1)
	addi 24,1,8
.LBE9159:
.LBE9163:
.LBE9176:
	.loc 4 4212 0
	mr 3,9
	lwz 9,0(9)
	lwz 0,96(9)
	mtctr 0
.LEHB89:
	bctrl
	addi 24,1,8
	mr 4,3
	mr 3,24
	bl _ZN6idDictaSERKS_
.LVL2408:
.LBB9177:
	.loc 4 4214 0 discriminator 1
	lwz 0,8(1)
	li 31,0
	cmpwi 7,0,0
	ble- 7,.L1670
.LBB9178:
.LBB9179:
	.loc 14 675 0
	lis 26,.LC188@ha
.LBE9179:
.LBE9178:
.LBB9182:
.LBB9183:
	lis 25,.LC189@ha
	addi 27,27,4
.LVL2409:
.LBE9183:
.LBE9182:
.LBB9186:
.LBB9180:
	la 26,.LC188@l(26)
.LBE9180:
.LBE9186:
.LBB9187:
.LBB9184:
	la 25,.LC189@l(25)
.LVL2410:
.L1681:
.LBE9184:
.LBE9187:
.LBB9188:
.LBB9189:
.LBB9190:
	.loc 8 573 0
	lwz 29,20(1)
	.loc 4 4207 0
	slwi 30,31,3
.LBE9190:
.LBE9189:
.LBE9188:
	.loc 4 4216 0
	mr 3,27
.LBB9193:
	.loc 4 4268 0
	lwzx 9,29,30
.LBE9193:
.LBB9194:
.LBB9192:
.LBB9191:
	.loc 8 573 0
	add 28,29,30
.LVL2411:
.LBE9191:
.LBE9192:
.LBE9194:
	.loc 4 4216 0
	lwz 4,4(9)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2412:
	.loc 4 4217 0
	cmpwi 0,3,0
	beq- 0,.L1683
.LVL2413:
.LBB9195:
	.loc 4 4268 0
	lwz 9,4(3)
.LBE9195:
.LBB9196:
.LBB9197:
	lwz 11,4(28)
	.loc 14 675 0
	lwz 4,4(9)
	lwz 3,4(11)
.LVL2414:
	bl _ZN5idStr3CmpEPKcS1_
.LVL2415:
.LBE9197:
.LBE9196:
	.loc 4 4221 0
	cmpwi 7,3,0
	bne- 7,.L1694
.L1671:
	.loc 4 4214 0
	lwz 0,8(1)
	addi 31,31,1
.LVL2416:
	cmpw 7,31,0
	blt+ 7,.L1681
	.loc 4 4225 0
	li 31,0
.LVL2417:
	b .L1670
.LVL2418:
.L1694:
.LBB9198:
.LBB9181:
	.loc 4 4268 0 discriminator 1
	lwzx 9,29,30
	.loc 14 675 0 discriminator 1
	mr 4,26
	lwz 3,4(9)
	bl _ZN5idStr3CmpEPKcS1_
.LEHE89:
.LBE9181:
.LBE9198:
	.loc 4 4221 0 discriminator 1
	cmpwi 7,3,0
	bne- 7,.L1695
.LVL2419:
.L1683:
	.loc 4 4218 0
	li 31,1
.LVL2420:
.L1670:
.LBE9177:
.LBB9200:
.LBB9201:
.LBB9202:
	.loc 11 174 0
	mr 3,24
.LEHB90:
	bl _ZN6idDict5ClearEv
.LEHE90:
.LVL2421:
.LBB9203:
.LBB9204:
.LBB9205:
	.loc 15 130 0
	addi 3,1,24
.LVL2422:
.LEHB91:
	bl _ZN11idHashIndex4FreeEv
.LEHE91:
.LVL2423:
.LBE9205:
.LBE9204:
.LBE9203:
.LBB9206:
.LBB9207:
.LBB9208:
.LBB9209:
	.loc 8 193 0
	lwz 3,20(1)
	cmpwi 7,3,0
	beq- 7,.L1679
	.loc 8 194 0
	bl _ZdaPv
.L1679:
.LBE9209:
.LBE9208:
.LBE9207:
.LBE9206:
.LBE9202:
.LBE9201:
.LBE9200:
.LBE9226:
	.loc 4 4226 0
	lwz 0,92(1)
	mr 3,31
	lwz 24,56(1)
	mtlr 0
	lwz 25,60(1)
	lwz 26,64(1)
	lwz 27,68(1)
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI325:
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
.LVL2424:
.L1695:
.LCFI326:
	.cfi_restore_state
.LBB9227:
.LBB9218:
.LBB9199:
.LBB9185:
	.loc 4 4268 0 discriminator 4
	lwzx 9,29,30
	.loc 14 675 0 discriminator 4
	mr 4,25
	lwz 3,4(9)
.LEHB92:
	bl _ZN5idStr3CmpEPKcS1_
.LEHE92:
.LBE9185:
.LBE9199:
	.loc 4 4221 0 discriminator 4
	cmpwi 7,3,0
	bne- 7,.L1671
	b .L1683
.LVL2425:
.L1692:
.LBE9218:
.LBB9219:
.LBB9164:
.LBB9150:
.LBB9148:
.LBB9146:
	.loc 8 388 0
	stw 3,8(1)
	b .L1662
.LVL2426:
.L1691:
.LBB9143:
.LBB9144:
	.loc 8 194 0
	mr 3,31
.LVL2427:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,20(1)
	.loc 8 198 0
	stw 0,8(1)
	.loc 8 199 0
	stw 0,12(1)
	b .L1660
.LVL2428:
.L1688:
	mr 31,3
.LVL2429:
.LBE9144:
.LBE9143:
.LBE9146:
.LBE9148:
.LBE9150:
.LBE9164:
.LBE9219:
.LBB9220:
.LBB9217:
.LBB9216:
.LBB9210:
.LBB9211:
.LBB9212:
	.loc 15 130 0
	addi 3,1,24
.LVL2430:
	bl _ZN11idHashIndex4FreeEv
.LVL2431:
.L1677:
.LBE9212:
.LBE9211:
.LBE9210:
.LBB9213:
.LBB9214:
.LBB9215:
	.loc 8 181 0
	mr 3,24
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB93:
	bl _Unwind_Resume
.LVL2432:
.L1685:
	mr 31,3
.L1668:
.LVL2433:
.LBE9215:
.LBE9214:
.LBE9213:
.LBE9216:
.LBE9217:
.LBE9220:
.LBB9221:
.LBB9165:
.LBB9166:
.LBB9167:
	addi 3,1,8
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE93:
.LVL2434:
.L1684:
	mr 31,3
.LBE9167:
.LBE9166:
.LBE9165:
.LBE9221:
	.loc 4 4225 0
	mr 3,24
	bl _ZN6idDictD1Ev
	mr 3,31
.LEHB94:
	bl _Unwind_Resume
.LEHE94:
.LVL2435:
.L1686:
	mr 31,3
.LVL2436:
.LBB9222:
.LBB9168:
.LBB9169:
.LBB9170:
	.loc 15 130 0
	addi 3,1,24
.LVL2437:
	bl _ZN11idHashIndex4FreeEv
.LVL2438:
	b .L1668
.LVL2439:
.L1687:
	mr 31,3
	b .L1677
.LBE9170:
.LBE9169:
.LBE9168:
.LBE9222:
.LBE9227:
	.cfi_endproc
.LFE2968:
	.section	.gcc_except_table
.LLSDA2968:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2968-.LLSDACSB2968
.LLSDACSB2968:
	.uleb128 .LEHB87-.LFB2968
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1685-.LFB2968
	.uleb128 0
	.uleb128 .LEHB88-.LFB2968
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1686-.LFB2968
	.uleb128 0
	.uleb128 .LEHB89-.LFB2968
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1684-.LFB2968
	.uleb128 0
	.uleb128 .LEHB90-.LFB2968
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1688-.LFB2968
	.uleb128 0
	.uleb128 .LEHB91-.LFB2968
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1687-.LFB2968
	.uleb128 0
	.uleb128 .LEHB92-.LFB2968
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1684-.LFB2968
	.uleb128 0
	.uleb128 .LEHB93-.LFB2968
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB94-.LFB2968
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
.LLSDACSE2968:
	.section	".text"
	.size	_ZN11idGameLocal11NeedRestartEv, .-_ZN11idGameLocal11NeedRestartEv
	.align 2
	.globl _ZN11idGameLocal11SpawnPlayerEi
	.type	_ZN11idGameLocal11SpawnPlayerEi, @function
_ZN11idGameLocal11SpawnPlayerEi:
.LFB2873:
	.loc 4 1705 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2873
.LVL2440:
	mflr 0
	stwu 1,-80(1)
.LCFI327:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
.LVL2441:
.LBB9285:
.LBB9286:
.LBB9287:
.LBB9288:
	.loc 8 159 0
	li 9,16
.LBE9288:
.LBE9287:
.LBB9295:
.LBB9296:
	.loc 15 112 0
	li 5,1024
.LBE9296:
.LBE9295:
.LBE9286:
.LBE9285:
	.loc 4 1705 0
	stw 29,68(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,84(1)
.LBB9390:
.LBB9343:
.LBB9300:
.LBB9297:
	.loc 15 112 0
	li 4,1024
.LVL2442:
.LBE9297:
.LBE9300:
.LBB9301:
.LBB9293:
.LBB9289:
.LBB9290:
	.loc 8 197 0
	li 0,0
	.cfi_offset 65, 4
.LBE9290:
.LBE9289:
.LBE9293:
.LBE9301:
.LBE9343:
.LBE9390:
	.loc 4 1705 0
	stw 30,72(1)
	mr 30,3
	.cfi_offset 30, -8
.LBB9391:
.LBB9344:
.LBB9302:
.LBB9298:
	.loc 15 112 0
	addi 3,1,28
.LVL2443:
.LBE9298:
.LBE9302:
.LBE9344:
.LBE9391:
	.loc 4 1705 0
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 31,76(1)
.LBB9392:
.LBB9345:
.LBB9303:
.LBB9294:
	.loc 8 159 0
	stw 9,20(1)
.LVL2444:
.LBB9292:
.LBB9291:
	.loc 8 197 0
	stw 0,24(1)
	.loc 8 198 0
	stw 0,12(1)
	.loc 8 199 0
	stw 0,16(1)
.LVL2445:
.LEHB95:
.LBE9291:
.LBE9292:
.LBE9294:
.LBE9303:
.LBB9304:
.LBB9299:
	.loc 15 112 0
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	bl _ZN11idHashIndex4InitEii
.LEHE95:
.LVL2446:
.LBE9299:
.LBE9304:
.LBB9305:
.LBB9306:
	.loc 8 319 0
	lwz 31,24(1)
	.loc 8 317 0
	li 0,16
	stw 0,20(1)
	.loc 8 319 0
	cmpwi 7,31,0
	beq- 7,.L1697
	.loc 8 321 0
	lwz 9,12(1)
	.loc 8 323 0
	lwz 0,16(1)
	.loc 8 321 0
	addi 3,9,15
.LVL2447:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2448:
	slwi 3,3,4
.LVL2449:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1697
.LVL2450:
.LBB9307:
.LBB9308:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1734
.LVL2451:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,16(1)
	.loc 8 387 0
	bgt- 7,.L1735
.L1699:
	.loc 8 392 0
	slwi 3,3,3
.LVL2452:
.LEHB96:
	bl _Znaj
.LVL2453:
	.loc 8 393 0
	lwz 0,12(1)
	.loc 8 392 0
	stw 3,24(1)
.LVL2454:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1700
	.loc 4 1705 0
	addi 8,31,-8
.LBE9308:
.LBE9307:
.LBE9306:
.LBE9305:
.LBE9345:
.LBE9392:
	.loc 8 393 0
	li 9,0
	b .L1701
.LVL2455:
.L1736:
.LBB9393:
.LBB9346:
.LBB9320:
.LBB9317:
.LBB9314:
.LBB9311:
	lwz 3,24(1)
.LVL2456:
.L1701:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2457:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,12(1)
	cmpw 7,9,0
	blt+ 7,.L1736
.LVL2458:
.L1700:
	.loc 8 399 0
	mr 3,31
	bl _ZdaPv
.LVL2459:
.L1697:
.LBE9311:
.LBE9314:
.LBE9317:
.LBE9320:
.LBB9321:
.LBB9322:
	.loc 15 371 0
	li 0,16
.LBE9322:
.LBE9321:
.LBB9324:
.LBB9325:
	.loc 15 341 0
	addi 3,1,28
.LVL2460:
.LBE9325:
.LBE9324:
.LBB9330:
.LBB9323:
	.loc 15 371 0
	stw 0,44(1)
.LVL2461:
.LBE9323:
.LBE9330:
.LBB9331:
.LBB9326:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE96:
.LVL2462:
	.loc 15 342 0
	li 0,128
.LBE9326:
.LBE9331:
.LBE9346:
	.loc 4 1710 0
	lis 4,.LC192@ha
.LBB9347:
.LBB9332:
.LBB9327:
	.loc 15 342 0
	stw 0,28(1)
.LBE9327:
.LBE9332:
.LBE9347:
	.loc 4 1710 0
	mr 3,30
.LBB9348:
.LBB9333:
.LBB9328:
	.loc 15 343 0
	li 0,16
.LBE9328:
.LBE9333:
.LBE9348:
	.loc 4 1710 0
	la 4,.LC192@l(4)
	mr 5,29
.LBB9349:
.LBB9334:
.LBB9329:
	.loc 15 343 0
	stw 0,36(1)
	addi 31,1,12
.LEHB97:
.LBE9329:
.LBE9334:
.LBE9349:
	.loc 4 1710 0
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL2463:
.LBB9350:
.LBB9351:
	.loc 11 193 0
	lis 3,.LC135@ha
	mr 4,29
	la 3,.LC135@l(3)
	addi 31,1,12
	crxor 6,6,6
	bl _Z2vaPKcz
	.loc 4 1712 0
	addi 31,1,12
	.loc 11 193 0
	lis 4,.LC58@ha
	mr 5,3
	la 4,.LC58@l(4)
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
.LBE9351:
.LBE9350:
	.loc 4 1713 0
	addi 26,29,1
	lis 3,.LC193@ha
	la 3,.LC193@l(3)
	mr 4,26
	crxor 6,6,6
	bl _Z2vaPKcz
	lis 4,.LC63@ha
	mr 5,3
	la 4,.LC63@l(4)
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
	.loc 4 1714 0
	addis 28,30,0x25
	lbz 0,2016(28)
	cmpwi 7,0,0
	beq- 7,.L1724
	lis 5,.LC190@ha
	la 5,.LC190@l(5)
.L1707:
	.loc 4 1714 0 is_stmt 0 discriminator 3
	lis 27,.LC65@ha
	mr 3,31
	la 27,.LC65@l(27)
	mr 4,27
	bl _ZN6idDict3SetEPKcS1_
	.loc 4 1715 0 is_stmt 1
	mr 3,30
	mr 4,31
	addi 5,1,8
	li 6,1
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	cmpwi 7,3,0
	bne- 7,.L1737
.L1708:
.LVL2464:
.LBB9352:
.LBB9353:
	.loc 11 241 0 discriminator 4
	mr 3,31
	mr 4,27
	bl _ZNK6idDict7FindKeyEPKc
.LVL2465:
	.loc 11 242 0 discriminator 4
	cmpwi 0,3,0
	beq- 0,.L1725
.LVL2466:
.LBB9354:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL2467:
.L1710:
.LBE9354:
.LBE9353:
.LBE9352:
	.loc 4 1716 0
	lis 4,.LC194@ha
	mr 3,30
.LVL2468:
	la 4,.LC194@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LVL2469:
.L1709:
	.loc 4 1720 0
	lwz 3,8(1)
.LVL2470:
.LBB9356:
.LBB9357:
	.loc 5 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2471:
.LBE9357:
	.loc 4 4268 0
	lis 9,_ZN8idPlayer4TypeE@ha
	lwz 0,56(3)
	la 9,_ZN8idPlayer4TypeE@l(9)
.LBB9360:
.LBB9358:
.LBB9359:
	.loc 5 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1711
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1711
.LVL2472:
.L1712:
.LBE9359:
.LBE9358:
.LBE9360:
.LBE9356:
	.loc 4 1724 0
	lwz 0,48(30)
	cmpw 7,29,0
	blt- 7,.L1714
	.loc 4 1725 0
	stw 26,48(30)
.L1714:
	.loc 4 1728 0
	addi 3,28,1416
	mr 4,29
	bl _ZN17idMultiplayerGame11SpawnPlayerEi
.LEHE97:
.LVL2473:
.LBB9361:
.LBB9362:
.LBB9363:
	.loc 11 174 0
	mr 3,31
.LEHB98:
	bl _ZN6idDict5ClearEv
.LEHE98:
.LVL2474:
.LBB9364:
.LBB9365:
.LBB9366:
	.loc 15 130 0
	addi 3,1,28
.LVL2475:
.LEHB99:
	bl _ZN11idHashIndex4FreeEv
.LEHE99:
.LVL2476:
.LBE9366:
.LBE9365:
.LBE9364:
.LBB9367:
.LBB9368:
.LBB9369:
.LBB9370:
	.loc 8 193 0
	lwz 3,24(1)
	cmpwi 7,3,0
	beq- 7,.L1696
	.loc 8 194 0
	bl _ZdaPv
.L1696:
.LBE9370:
.LBE9369:
.LBE9368:
.LBE9367:
.LBE9363:
.LBE9362:
.LBE9361:
.LBE9393:
	.loc 4 1729 0
	lwz 0,84(1)
	lwz 26,56(1)
	mtlr 0
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
.LVL2477:
	lwz 30,72(1)
.LVL2478:
	lwz 31,76(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI328:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL2479:
.L1724:
.LCFI329:
	.cfi_restore_state
.LBB9394:
	.loc 4 1714 0
	lis 5,.LC191@ha
	la 5,.LC191@l(5)
	b .L1707
.L1737:
	.loc 4 1715 0 discriminator 2
	addi 9,29,132
	slwi 9,9,2
	add 9,30,9
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1709
	b .L1708
.LVL2480:
.L1711:
.LBB9379:
.LBB9380:
	.loc 11 241 0
	mr 3,31
.LVL2481:
	mr 4,27
.LEHB100:
	bl _ZNK6idDict7FindKeyEPKc
.LVL2482:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1738
.LVL2483:
.LBB9381:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 27,4(9)
.LVL2484:
.L1713:
.LBE9381:
.LBE9380:
.LBE9379:
	.loc 4 1721 0
	lwz 3,8(1)
.LVL2485:
	bl _ZNK7idClass12GetClassnameEv
	lis 4,.LC195@ha
	mr 6,3
	la 4,.LC195@l(4)
	mr 3,30
	mr 5,27
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LEHE100:
	b .L1712
.LVL2486:
.L1735:
.LBB9383:
.LBB9335:
.LBB9318:
.LBB9315:
.LBB9312:
	.loc 8 388 0
	stw 3,12(1)
	b .L1699
.LVL2487:
.L1725:
.LBE9312:
.LBE9315:
.LBE9318:
.LBE9335:
.LBE9383:
.LBB9384:
.LBB9355:
	.loc 11 245 0
	lis 5,.LC3@ha
	la 5,.LC3@l(5)
	b .L1710
.LVL2488:
.L1734:
.LBE9355:
.LBE9384:
.LBB9385:
.LBB9336:
.LBB9319:
.LBB9316:
.LBB9313:
.LBB9309:
.LBB9310:
	.loc 8 194 0
	mr 3,31
.LVL2489:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,24(1)
	.loc 8 198 0
	stw 0,12(1)
	.loc 8 199 0
	stw 0,16(1)
	b .L1697
.LVL2490:
.L1738:
.LBE9310:
.LBE9309:
.LBE9313:
.LBE9316:
.LBE9319:
.LBE9336:
.LBE9385:
.LBB9386:
.LBB9382:
	.loc 11 245 0
	lis 27,.LC3@ha
	la 27,.LC3@l(27)
	b .L1713
.LVL2491:
.L1728:
	mr 31,3
.L1705:
.LVL2492:
.LBE9382:
.LBE9386:
.LBB9387:
.LBB9337:
.LBB9338:
.LBB9339:
	.loc 8 181 0
	addi 3,1,12
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB101:
	bl _Unwind_Resume
.LEHE101:
.LVL2493:
.L1727:
	mr 30,3
.LVL2494:
.LBE9339:
.LBE9338:
.LBE9337:
.LBE9387:
	.loc 4 1728 0
	mr 3,31
	bl _ZN6idDictD1Ev
	mr 3,30
.LEHB102:
	bl _Unwind_Resume
.LEHE102:
.LVL2495:
.L1729:
	mr 31,3
.LVL2496:
.LBB9388:
.LBB9340:
.LBB9341:
.LBB9342:
	.loc 15 130 0
	addi 3,1,28
.LVL2497:
	bl _ZN11idHashIndex4FreeEv
.LVL2498:
	b .L1705
.LVL2499:
.L1730:
	mr 30,3
.LVL2500:
.L1719:
.LBE9342:
.LBE9341:
.LBE9340:
.LBE9388:
.LBB9389:
.LBB9378:
.LBB9377:
.LBB9371:
.LBB9372:
.LBB9373:
	.loc 8 181 0
	mr 3,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,30
.LEHB103:
	bl _Unwind_Resume
.LEHE103:
.LVL2501:
.L1731:
	mr 30,3
.LVL2502:
.LBE9373:
.LBE9372:
.LBE9371:
.LBB9374:
.LBB9375:
.LBB9376:
	.loc 15 130 0
	addi 3,1,28
.LVL2503:
	bl _ZN11idHashIndex4FreeEv
.LVL2504:
	b .L1719
.LBE9376:
.LBE9375:
.LBE9374:
.LBE9377:
.LBE9378:
.LBE9389:
.LBE9394:
	.cfi_endproc
.LFE2873:
	.section	.gcc_except_table
.LLSDA2873:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2873-.LLSDACSB2873
.LLSDACSB2873:
	.uleb128 .LEHB95-.LFB2873
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L1728-.LFB2873
	.uleb128 0
	.uleb128 .LEHB96-.LFB2873
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1729-.LFB2873
	.uleb128 0
	.uleb128 .LEHB97-.LFB2873
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1727-.LFB2873
	.uleb128 0
	.uleb128 .LEHB98-.LFB2873
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1731-.LFB2873
	.uleb128 0
	.uleb128 .LEHB99-.LFB2873
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1730-.LFB2873
	.uleb128 0
	.uleb128 .LEHB100-.LFB2873
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1727-.LFB2873
	.uleb128 0
	.uleb128 .LEHB101-.LFB2873
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB2873
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB103-.LFB2873
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
.LLSDACSE2873:
	.section	".text"
	.size	_ZN11idGameLocal11SpawnPlayerEi, .-_ZN11idGameLocal11SpawnPlayerEi
	.align 2
	.globl _ZN11idGameLocal7NextMapEv
	.type	_ZN11idGameLocal7NextMapEv, @function
_ZN11idGameLocal7NextMapEv:
.LFB2859:
	.loc 4 1044 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2859
.LVL2505:
	mflr 0
	stwu 1,-80(1)
.LCFI330:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
.LVL2506:
.LBB9464:
.LBB9465:
.LBB9466:
.LBB9467:
	.loc 8 159 0
	li 9,16
.LBE9467:
.LBE9466:
.LBB9474:
.LBB9475:
	.loc 15 112 0
	li 4,1024
.LBE9475:
.LBE9474:
.LBE9465:
.LBE9464:
	.loc 4 1044 0
	stw 29,68(1)
.LBB9581:
.LBB9522:
.LBB9479:
.LBB9476:
	.loc 15 112 0
	li 5,1024
.LBE9476:
.LBE9479:
.LBE9522:
.LBE9581:
	.loc 4 1044 0
	stw 0,84(1)
	mr 29,3
	.cfi_offset 65, 4
	.cfi_offset 29, -12
.LBB9582:
.LBB9523:
.LBB9480:
.LBB9472:
.LBB9468:
.LBB9469:
	.loc 8 197 0
	li 0,0
.LBE9469:
.LBE9468:
.LBE9472:
.LBE9480:
.LBB9481:
.LBB9477:
	.loc 15 112 0
	addi 3,1,24
.LVL2507:
.LBE9477:
.LBE9481:
.LBE9523:
.LBE9582:
	.loc 4 1044 0
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 30,72(1)
	stw 31,76(1)
.LBB9583:
.LBB9524:
.LBB9482:
.LBB9473:
	.loc 8 159 0
	stw 9,16(1)
.LVL2508:
.LBB9471:
.LBB9470:
	.loc 8 197 0
	stw 0,20(1)
	.loc 8 198 0
	stw 0,8(1)
	.loc 8 199 0
	stw 0,12(1)
.LVL2509:
.LEHB104:
.LBE9470:
.LBE9471:
.LBE9473:
.LBE9482:
.LBB9483:
.LBB9478:
	.loc 15 112 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	bl _ZN11idHashIndex4InitEii
.LEHE104:
.LVL2510:
.LBE9478:
.LBE9483:
.LBB9484:
.LBB9485:
	.loc 8 319 0
	lwz 31,20(1)
	.loc 8 317 0
	li 0,16
	stw 0,16(1)
	.loc 8 319 0
	cmpwi 7,31,0
	beq- 7,.L1740
	.loc 8 321 0
	lwz 9,8(1)
	.loc 8 323 0
	lwz 0,12(1)
	.loc 8 321 0
	addi 3,9,15
.LVL2511:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2512:
	slwi 3,3,4
.LVL2513:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1740
.LVL2514:
.LBB9486:
.LBB9487:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1784
.LVL2515:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,12(1)
	.loc 8 387 0
	bgt- 7,.L1785
.L1742:
	.loc 8 392 0
	slwi 3,3,3
.LVL2516:
.LEHB105:
	bl _Znaj
.LVL2517:
	.loc 8 393 0
	lwz 0,8(1)
	.loc 8 392 0
	stw 3,20(1)
.LVL2518:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1743
	.loc 4 1044 0
	addi 8,31,-8
.LBE9487:
.LBE9486:
.LBE9485:
.LBE9484:
.LBE9524:
.LBE9583:
	.loc 8 393 0
	li 9,0
	b .L1744
.LVL2519:
.L1786:
.LBB9584:
.LBB9525:
.LBB9499:
.LBB9496:
.LBB9493:
.LBB9490:
	lwz 3,20(1)
.LVL2520:
.L1744:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2521:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,8(1)
	cmpw 7,9,0
	blt+ 7,.L1786
.LVL2522:
.L1743:
	.loc 8 399 0
	mr 3,31
	bl _ZdaPv
.LVL2523:
.L1740:
.LBE9490:
.LBE9493:
.LBE9496:
.LBE9499:
.LBB9500:
.LBB9501:
	.loc 15 371 0
	li 0,16
.LBE9501:
.LBE9500:
.LBB9503:
.LBB9504:
	.loc 15 341 0
	addi 3,1,24
.LVL2524:
.LBE9504:
.LBE9503:
.LBB9509:
.LBB9502:
	.loc 15 371 0
	stw 0,40(1)
.LVL2525:
.LBE9502:
.LBE9509:
.LBB9510:
.LBB9505:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE105:
.LVL2526:
	.loc 15 342 0
	li 0,128
.LBE9505:
.LBE9510:
.LBE9525:
.LBB9526:
.LBB9527:
	.loc 4 1051 0
	lis 31,g_mapCycle@ha
.LBE9527:
.LBE9526:
.LBB9531:
.LBB9511:
.LBB9506:
	.loc 15 342 0
	stw 0,24(1)
.LBE9506:
.LBE9511:
.LBE9531:
.LBB9532:
.LBB9528:
	.loc 4 1051 0
	la 31,g_mapCycle@l(31)
.LBE9528:
.LBE9532:
.LBB9533:
.LBB9512:
.LBB9507:
	.loc 15 343 0
	li 0,16
.LBE9507:
.LBE9512:
.LBE9533:
.LBB9534:
.LBB9529:
	.loc 7 141 0
	lwz 9,44(31)
.LBE9529:
.LBE9534:
.LBB9535:
.LBB9513:
.LBB9508:
	.loc 15 343 0
	stw 0,32(1)
.LBE9508:
.LBE9513:
.LBE9535:
.LBB9536:
.LBB9530:
	.loc 7 141 0
	lwz 4,8(9)
.LBE9530:
.LBE9536:
	.loc 4 1051 0
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L1787
	.loc 4 1052 0
	lis 9,common@ha
	addi 28,1,8
	lwz 3,common@l(9)
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
.LEHB106:
	bctrl
	lis 4,.LC196@ha
	addi 28,1,8
	la 4,.LC196@l(4)
	bl _ZNK10idLangDict9GetStringEPKc
	.loc 4 1052 0 is_stmt 0 discriminator 1
	mr 4,3
	mr 3,29
	addi 28,1,8
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LEHE106:
.L1783:
	.loc 4 1072 0 is_stmt 1
	li 31,0
	addi 28,1,8
.LVL2527:
.L1751:
.LBB9537:
.LBB9538:
.LBB9539:
	.loc 11 174 0
	mr 3,28
.LEHB107:
	bl _ZN6idDict5ClearEv
.LEHE107:
.LVL2528:
.LBB9540:
.LBB9541:
.LBB9542:
	.loc 15 130 0
	addi 3,1,24
.LVL2529:
.LEHB108:
	bl _ZN11idHashIndex4FreeEv
.LEHE108:
.LVL2530:
.LBE9542:
.LBE9541:
.LBE9540:
.LBB9543:
.LBB9544:
.LBB9545:
.LBB9546:
	.loc 8 193 0
	lwz 3,20(1)
	cmpwi 7,3,0
	beq- 7,.L1765
	.loc 8 194 0
	bl _ZdaPv
.L1765:
.LBE9546:
.LBE9545:
.LBE9544:
.LBE9543:
.LBE9539:
.LBE9538:
.LBE9537:
.LBE9584:
	.loc 4 1087 0
	lwz 0,84(1)
	mr 3,31
	lwz 26,56(1)
	mtlr 0
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI331:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL2531:
.L1787:
.LCFI332:
	.cfi_restore_state
.LBB9585:
	.loc 4 1055 0
	lis 30,fileSystem@ha
	li 5,0
	lwz 3,fileSystem@l(30)
	li 6,0
	addi 28,1,8
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
.LEHB109:
	bctrl
	cmpwi 7,3,0
	blt- 7,.L1788
.L1752:
.LBB9555:
.LBB9556:
	.loc 7 141 0
	lwz 9,44(31)
.LBE9556:
.LBE9555:
	.loc 4 1064 0
	lis 4,.LC199@ha
	mr 3,29
	la 4,.LC199@l(4)
	lwz 5,8(9)
	addi 28,1,8
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 1065 0
	addis 30,29,0x1
	lis 27,.LC200@ha
	addi 30,30,-32060
	la 27,.LC200@l(27)
	mr 3,30
	mr 4,27
	addi 28,1,8
	bl _ZNK9idProgram12FindFunctionEPKc
.LVL2532:
	.loc 4 1066 0
	mr. 26,3
	beq- 0,.L1789
.L1754:
	.loc 4 1074 0
	li 3,7068
.LVL2533:
	addi 28,1,8
	bl _ZN7idClassnwEj
.LEHE109:
	mr 4,26
	mr 31,3
.LEHB110:
	bl _ZN8idThreadC1EPK10function_t
.LEHE110:
.LVL2534:
	.loc 4 1075 0 discriminator 1
	mr 3,31
	addi 28,1,8
.LEHB111:
	bl _ZN8idThread5StartEv
	.loc 4 1076 0
	cmpwi 7,31,0
	beq- 7,.L1755
	.loc 4 1076 0 is_stmt 0 discriminator 1
	lwz 9,0(31)
	mr 3,31
	addi 28,1,8
	lwz 0,8(9)
	mtctr 0
	bctrl
.L1755:
	.loc 4 1078 0 is_stmt 1
	lis 9,cvarSystem@ha
	li 4,1024
	lwz 3,cvarSystem@l(9)
	addi 28,1,8
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
	bctrl
	addi 28,1,8
	mr 4,3
	mr 3,28
	bl _ZN6idDictaSERKS_
.LVL2535:
.LBB9557:
	.loc 4 4268 0 discriminator 1
	lwz 0,8(1)
.LBE9557:
	.loc 4 1079 0 discriminator 1
	li 31,0
.LVL2536:
	cmpwi 7,0,0
	ble- 7,.L1756
	addi 29,29,4
.LVL2537:
.L1768:
.LBB9558:
.LBB9559:
.LBB9560:
	.loc 8 573 0
	lwz 30,20(1)
	.loc 4 1044 0
	slwi 0,31,3
.LBE9560:
.LBE9559:
.LBE9558:
	.loc 4 1081 0
	mr 3,29
.LBB9563:
	.loc 4 4268 0
	lwzx 9,30,0
.LBE9563:
.LBB9564:
.LBB9562:
.LBB9561:
	.loc 8 573 0
	add 30,30,0
.LBE9561:
.LBE9562:
.LBE9564:
	.loc 4 1081 0
	lwz 4,4(9)
.LVL2538:
	bl _ZNK6idDict7FindKeyEPKc
.LVL2539:
	.loc 4 1082 0
	cmpwi 0,3,0
	beq- 0,.L1757
.LVL2540:
.LBB9565:
	.loc 4 4268 0 discriminator 2
	lwz 9,4(3)
.LBE9565:
.LBB9566:
.LBB9567:
	lwz 11,4(30)
	.loc 14 675 0 discriminator 2
	lwz 4,4(9)
	lwz 3,4(11)
.LVL2541:
	bl _ZN5idStr3CmpEPKcS1_
.LVL2542:
.LBE9567:
.LBE9566:
	.loc 4 1082 0 discriminator 2
	cmpwi 7,3,0
	beq- 7,.L1758
.L1757:
	.loc 4 1082 0 is_stmt 0 discriminator 4
	lwz 0,8(1)
.LVL2543:
.L1756:
	.loc 4 1086 0 is_stmt 1
	xor 31,31,0
	cntlzw 31,31
	srwi 31,31,5
	xori 31,31,1
	b .L1751
.LVL2544:
.L1758:
.LBB9568:
	.loc 4 4268 0
	lwz 0,8(1)
.LBE9568:
	.loc 4 1079 0
	addi 31,31,1
.LVL2545:
	cmpw 7,31,0
	blt+ 7,.L1768
	b .L1756
.LVL2546:
.L1785:
.LBB9569:
.LBB9514:
.LBB9497:
.LBB9494:
.LBB9491:
	.loc 8 388 0
	stw 3,8(1)
	b .L1742
.LVL2547:
.L1788:
.LBE9491:
.LBE9494:
.LBE9497:
.LBE9514:
.LBE9569:
	.loc 4 1056 0
	lwz 30,fileSystem@l(30)
	lis 27,.LC197@ha
.LBB9570:
.LBB9571:
	.loc 7 141 0
	lwz 11,44(31)
.LBE9571:
.LBE9570:
	.loc 4 1056 0
	la 27,.LC197@l(27)
	lwz 9,0(30)
	mr 3,27
	lwz 4,8(11)
	addi 28,1,8
	lwz 26,96(9)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,3
	li 5,0
	mr 3,30
	li 6,0
	mtctr 26
	addi 28,1,8
	bctrl
	.loc 4 1056 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
.LBB9572:
.LBB9573:
	.loc 7 141 0 is_stmt 1 discriminator 1
	lwz 9,44(31)
.LBE9573:
.LBE9572:
	.loc 4 1056 0 discriminator 1
	blt- 7,.L1790
	.loc 4 1060 0
	lwz 4,8(9)
	mr 3,27
	addi 28,1,8
	crxor 6,6,6
	bl _Z2vaPKcz
	lwz 11,44(31)
	mr 4,3
.LVL2548:
	addi 28,1,8
.LBB9574:
.LBB9575:
	.loc 7 146 0
	lwz 9,0(11)
	mr 3,11
.LVL2549:
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL2550:
	b .L1752
.LVL2551:
.L1784:
.LBE9575:
.LBE9574:
.LBB9576:
.LBB9515:
.LBB9498:
.LBB9495:
.LBB9492:
.LBB9488:
.LBB9489:
	.loc 8 194 0
	mr 3,31
.LVL2552:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,20(1)
	.loc 8 198 0
	stw 0,8(1)
	.loc 8 199 0
	stw 0,12(1)
	b .L1740
.LVL2553:
.L1790:
.LBE9489:
.LBE9488:
.LBE9492:
.LBE9495:
.LBE9498:
.LBE9515:
.LBE9576:
	.loc 4 1057 0
	lis 4,.LC198@ha
	lwz 5,8(9)
	mr 3,29
	la 4,.LC198@l(4)
	addi 28,1,8
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	b .L1783
.LVL2554:
.L1789:
.LBB9577:
.LBB9578:
	.loc 7 141 0
	lwz 9,44(31)
.LBE9578:
.LBE9577:
	.loc 4 1067 0
	mr 3,30
.LVL2555:
	addi 28,1,8
	lwz 4,8(9)
	bl _ZN9idProgram11CompileFileEPKc
	.loc 4 1068 0
	mr 3,30
	mr 4,27
	addi 28,1,8
	bl _ZNK9idProgram12FindFunctionEPKc
.LVL2556:
	.loc 4 1070 0
	mr. 26,3
	bne- 0,.L1754
	.loc 4 1071 0
	lis 4,.LC201@ha
	mr 3,29
.LVL2557:
	la 4,.LC201@l(4)
	addi 28,1,8
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LEHE111:
	b .L1783
.LVL2558:
.L1776:
	mr 31,3
.LVL2559:
.LBB9579:
.LBB9516:
.LBB9517:
.LBB9518:
	.loc 15 130 0
	addi 3,1,24
.LVL2560:
	bl _ZN11idHashIndex4FreeEv
.LVL2561:
.L1749:
.LBE9518:
.LBE9517:
.LBE9516:
.LBB9519:
.LBB9520:
.LBB9521:
	.loc 8 181 0
	addi 3,1,8
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB112:
	bl _Unwind_Resume
.LEHE112:
.LVL2562:
.L1774:
	mr 30,3
.LBE9521:
.LBE9520:
.LBE9519:
.LBE9579:
	.loc 4 1074 0
	mr 3,31
	bl _ZN7idClassdlEPv
	addi 28,1,8
	mr 31,30
.LVL2563:
.L1767:
	.loc 4 1086 0
	mr 3,28
	bl _ZN6idDictD1Ev
	mr 3,31
.LEHB113:
	bl _Unwind_Resume
.LEHE113:
.L1773:
	mr 31,3
	b .L1767
.LVL2564:
.L1778:
	mr 31,3
.LVL2565:
.LBB9580:
.LBB9554:
.LBB9553:
.LBB9547:
.LBB9548:
.LBB9549:
	.loc 15 130 0
	addi 3,1,24
.LVL2566:
	bl _ZN11idHashIndex4FreeEv
.LVL2567:
.L1763:
.LBE9549:
.LBE9548:
.LBE9547:
.LBB9550:
.LBB9551:
.LBB9552:
	.loc 8 181 0
	mr 3,28
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB114:
	bl _Unwind_Resume
.LEHE114:
.LVL2568:
.L1775:
	mr 31,3
	b .L1749
.LVL2569:
.L1777:
	mr 31,3
	b .L1763
.LBE9552:
.LBE9551:
.LBE9550:
.LBE9553:
.LBE9554:
.LBE9580:
.LBE9585:
	.cfi_endproc
.LFE2859:
	.section	.gcc_except_table
.LLSDA2859:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2859-.LLSDACSB2859
.LLSDACSB2859:
	.uleb128 .LEHB104-.LFB2859
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1775-.LFB2859
	.uleb128 0
	.uleb128 .LEHB105-.LFB2859
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1776-.LFB2859
	.uleb128 0
	.uleb128 .LEHB106-.LFB2859
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1773-.LFB2859
	.uleb128 0
	.uleb128 .LEHB107-.LFB2859
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1778-.LFB2859
	.uleb128 0
	.uleb128 .LEHB108-.LFB2859
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L1777-.LFB2859
	.uleb128 0
	.uleb128 .LEHB109-.LFB2859
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1773-.LFB2859
	.uleb128 0
	.uleb128 .LEHB110-.LFB2859
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1774-.LFB2859
	.uleb128 0
	.uleb128 .LEHB111-.LFB2859
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1773-.LFB2859
	.uleb128 0
	.uleb128 .LEHB112-.LFB2859
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB2859
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB114-.LFB2859
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
.LLSDACSE2859:
	.section	".text"
	.size	_ZN11idGameLocal7NextMapEv, .-_ZN11idGameLocal7NextMapEv
	.align 2
	.globl _ZN11idGameLocalC2Ev
	.type	_ZN11idGameLocalC2Ev, @function
_ZN11idGameLocalC2Ev:
.LFB2834:
	.loc 4 112 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2834
.LVL2570:
	mflr 0
	stwu 1,-96(1)
.LCFI333:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
.LBB9854:
	lis 9,_ZTV11idGameLocal+8@ha
.LBB9855:
.LBB9856:
.LBB9857:
.LBB9858:
	.loc 15 112 0
	li 4,1024
.LBE9858:
.LBE9857:
.LBE9856:
.LBE9855:
	.loc 4 112 0
	la 9,_ZTV11idGameLocal+8@l(9)
.LBE9854:
	stw 30,88(1)
	stw 0,100(1)
.LBB10451:
.LBB9917:
.LBB9907:
.LBB9861:
.LBB9862:
.LBB9863:
.LBB9864:
	.loc 8 197 0
	li 0,0
	.cfi_offset 65, 4
	.cfi_offset 30, -8
.LBE9864:
.LBE9863:
.LBE9862:
.LBE9861:
.LBE9907:
.LBE9917:
.LBE10451:
	.loc 4 112 0
	stw 31,92(1)
.LBB10452:
.LBB9918:
.LBB9908:
	.loc 11 163 0
	addi 30,3,20
.LBE9908:
.LBE9918:
.LBE10452:
	.loc 4 112 0
	stw 14,24(1)
	mr 31,3
	.cfi_offset 14, -72
	.cfi_offset 31, -4
.LVL2571:
	stw 15,28(1)
.LBB10453:
.LBB9919:
.LBB9909:
.LBB9868:
.LBB9859:
	.loc 15 112 0
	li 5,1024
.LBE9859:
.LBE9868:
.LBE9909:
.LBE9919:
.LBE10453:
	.loc 4 112 0
	stw 16,32(1)
	stw 17,36(1)
	stw 18,40(1)
	stw 19,44(1)
	stw 20,48(1)
	stw 21,52(1)
	stw 22,56(1)
	stw 23,60(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 29,84(1)
.LBB10454:
	.loc 4 112 0
	stw 9,0(3)
.LVL2572:
.LBB9920:
.LBB9910:
.LBB9869:
.LBB9867:
	.loc 8 159 0
	li 9,16
	stw 9,12(3)
.LVL2573:
.LBB9866:
.LBB9865:
	.loc 8 197 0
	stw 0,16(3)
	.loc 8 198 0
	stw 0,4(3)
	.loc 8 199 0
	stw 0,8(3)
.LBE9865:
.LBE9866:
.LBE9867:
.LBE9869:
.LBB9870:
.LBB9860:
	.loc 15 112 0
	mr 3,30
.LVL2574:
.LEHB115:
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
	bl _ZN11idHashIndex4InitEii
.LEHE115:
.LBE9860:
.LBE9870:
.LBB9871:
.LBB9872:
	.loc 8 319 0
	lwz 29,16(31)
	.loc 8 317 0
	li 0,16
.LBE9872:
.LBE9871:
.LBE9910:
.LBE9920:
	.loc 4 112 0
	addi 23,31,4
.LVL2575:
.LBB9921:
.LBB9911:
.LBB9887:
.LBB9883:
	.loc 8 317 0
	stw 0,12(31)
	.loc 8 319 0
	cmpwi 7,29,0
	beq- 7,.L1792
	.loc 8 321 0
	lwz 9,4(31)
	.loc 8 323 0
	lwz 0,8(31)
	.loc 8 321 0
	addi 3,9,15
.LVL2576:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2577:
	slwi 3,3,4
.LVL2578:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1792
.LVL2579:
.LBB9873:
.LBB9874:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1930
.LVL2580:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,8(31)
	.loc 8 387 0
	bgt- 7,.L1931
.LVL2581:
.L1794:
	.loc 8 392 0
	slwi 3,3,3
.LVL2582:
.LEHB116:
	bl _Znaj
.LVL2583:
	.loc 8 393 0
	lwz 0,4(31)
	.loc 8 392 0
	stw 3,16(31)
.LVL2584:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1795
	.loc 4 112 0
	addi 8,29,-8
.LBE9874:
.LBE9873:
.LBE9883:
.LBE9887:
.LBE9911:
.LBE9921:
.LBE10454:
	.loc 8 393 0
	li 9,0
	b .L1796
.LVL2585:
.L1932:
.LBB10455:
.LBB9922:
.LBB9912:
.LBB9888:
.LBB9884:
.LBB9880:
.LBB9877:
	lwz 3,16(31)
.LVL2586:
.L1796:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2587:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,0(23)
	cmpw 7,9,0
	blt+ 7,.L1932
.LVL2588:
.L1795:
	.loc 8 399 0
	mr 3,29
	bl _ZdaPv
.LVL2589:
.L1792:
.LBE9877:
.LBE9880:
.LBE9884:
.LBE9888:
.LBB9889:
.LBB9890:
	.loc 15 371 0
	li 0,16
.LBE9890:
.LBE9889:
.LBB9892:
.LBB9893:
	.loc 15 341 0
	mr 3,30
.LBE9893:
.LBE9892:
.LBB9896:
.LBB9891:
	.loc 15 371 0
	stw 0,36(31)
.LVL2590:
.LBE9891:
.LBE9896:
.LBB9897:
.LBB9894:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE116:
	.loc 15 342 0
	li 0,128
.LBE9894:
.LBE9897:
.LBE9912:
.LBE9922:
	.loc 4 112 0
	addi 20,31,52
.LBB9923:
.LBB9913:
.LBB9898:
.LBB9895:
	.loc 15 342 0
	stw 0,20(31)
	.loc 15 343 0
	li 0,16
	stw 0,28(31)
.LBE9895:
.LBE9898:
.LBE9913:
.LBE9923:
	.loc 4 112 0
	mr 30,20
.LVL2591:
	li 27,3
.LBB9924:
.LBB9925:
.LBB9926:
.LBB9927:
	.loc 8 159 0
	li 29,16
.LBB9928:
.LBB9929:
	.loc 8 197 0
	li 28,0
.LBE9929:
.LBE9928:
.LBE9927:
.LBE9926:
.LBB9939:
.LBB9940:
	.loc 4 112 0
	addi 24,31,68
	.loc 15 342 0
	li 22,128
.LVL2592:
.L1797:
.LBE9940:
.LBE9939:
	.loc 11 163 0
	addi 26,30,16
.LBB9944:
.LBB9936:
	.loc 8 159 0
	stw 29,8(30)
.LVL2593:
.LBB9933:
.LBB9930:
	.loc 8 197 0
	stw 28,12(30)
.LBE9930:
.LBE9933:
.LBE9936:
.LBE9944:
.LBB9945:
.LBB9946:
	.loc 15 112 0
	mr 3,26
.LBE9946:
.LBE9945:
.LBB9949:
.LBB9937:
.LBB9934:
.LBB9931:
	.loc 8 198 0
	stw 28,0(30)
.LBE9931:
.LBE9934:
.LBE9937:
.LBE9949:
.LBB9950:
.LBB9947:
	.loc 15 112 0
	li 4,1024
.LBE9947:
.LBE9950:
.LBB9951:
.LBB9938:
.LBB9935:
.LBB9932:
	.loc 8 199 0
	stw 28,4(30)
.LBE9932:
.LBE9935:
.LBE9938:
.LBE9951:
.LBB9952:
.LBB9948:
	.loc 15 112 0
	li 5,1024
.LEHB117:
	bl _ZN11idHashIndex4InitEii
.LEHE117:
.LVL2594:
.LBE9948:
.LBE9952:
.LBB9953:
.LBB9954:
	.loc 8 319 0
	lwz 25,12(30)
	.loc 8 317 0
	stw 29,8(30)
	.loc 8 319 0
	cmpwi 7,25,0
	beq- 7,.L1803
	.loc 8 321 0
	lwz 9,0(30)
	.loc 8 323 0
	lwz 0,4(30)
	.loc 8 321 0
	addi 3,9,15
.LVL2595:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2596:
	slwi 3,3,4
.LVL2597:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1803
.LVL2598:
.LBB9955:
.LBB9956:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1933
.LVL2599:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,4(30)
	.loc 8 387 0
	ble- 7,.L1805
	.loc 8 388 0
	stw 3,0(30)
.L1805:
	.loc 8 392 0
	slwi 3,3,3
.LVL2600:
.LEHB118:
	bl _Znaj
.LVL2601:
	.loc 8 393 0
	lwz 0,0(30)
	.loc 8 392 0
	stw 3,12(30)
.LVL2602:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1806
	.loc 4 112 0
	addi 8,25,-8
.LBE9956:
.LBE9955:
.LBE9954:
.LBE9953:
.LBE9925:
.LBE9924:
	.loc 8 393 0
	li 9,0
	b .L1807
.LVL2603:
.L1934:
.LBB9987:
.LBB9981:
.LBB9965:
.LBB9963:
.LBB9961:
.LBB9959:
	lwz 3,12(30)
.LVL2604:
.L1807:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2605:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L1934
.LVL2606:
.L1806:
	.loc 8 399 0
	mr 3,25
	bl _ZdaPv
.LVL2607:
.L1803:
.LBE9959:
.LBE9961:
.LBE9963:
.LBE9965:
.LBB9966:
.LBB9967:
	.loc 15 371 0
	stw 29,32(30)
.LVL2608:
.LBE9967:
.LBE9966:
.LBB9968:
.LBB9941:
	.loc 15 341 0
	mr 3,26
	bl _ZN11idHashIndex4FreeEv
.LEHE118:
.LBE9941:
.LBE9968:
.LBE9981:
.LBE9987:
	.loc 4 112 0
	cmpwi 7,27,0
.LBB9988:
.LBB9982:
.LBB9969:
.LBB9942:
	.loc 15 342 0
	subf 9,20,30
	stwux 22,9,24
	.loc 15 343 0
	addi 30,30,44
.LVL2609:
.LBE9942:
.LBE9969:
.LBE9982:
.LBE9988:
	.loc 4 112 0
	addi 27,27,-1
.LBB9989:
.LBB9983:
.LBB9970:
.LBB9943:
	.loc 15 343 0
	stw 29,8(9)
.LBE9943:
.LBE9970:
.LBE9983:
.LBE9989:
	.loc 4 112 0
	bne+ 7,.L1797
.LVL2610:
	.loc 4 112 0 is_stmt 0 discriminator 5
	addi 21,31,356
	li 27,3
	mr 30,21
.LBB9990:
.LBB9991:
.LBB9992:
.LBB9993:
	.loc 8 159 0 is_stmt 1 discriminator 5
	li 29,16
.LBB9994:
.LBB9995:
	.loc 8 197 0 discriminator 5
	li 28,0
.LBE9995:
.LBE9994:
.LBE9993:
.LBE9992:
.LBB10005:
.LBB10006:
	.loc 4 112 0 discriminator 5
	addi 24,31,372
	.loc 15 342 0 discriminator 5
	li 22,128
.LVL2611:
.L1820:
.LBE10006:
.LBE10005:
	.loc 11 163 0
	addi 26,30,16
.LVL2612:
.LBB10010:
.LBB10002:
	.loc 8 159 0
	stw 29,8(30)
.LVL2613:
.LBB9999:
.LBB9996:
	.loc 8 197 0
	stw 28,12(30)
.LBE9996:
.LBE9999:
.LBE10002:
.LBE10010:
.LBB10011:
.LBB10012:
	.loc 15 112 0
	mr 3,26
.LBE10012:
.LBE10011:
.LBB10015:
.LBB10003:
.LBB10000:
.LBB9997:
	.loc 8 198 0
	stw 28,0(30)
.LBE9997:
.LBE10000:
.LBE10003:
.LBE10015:
.LBB10016:
.LBB10013:
	.loc 15 112 0
	li 4,1024
.LBE10013:
.LBE10016:
.LBB10017:
.LBB10004:
.LBB10001:
.LBB9998:
	.loc 8 199 0
	stw 28,4(30)
.LBE9998:
.LBE10001:
.LBE10004:
.LBE10017:
.LBB10018:
.LBB10014:
	.loc 15 112 0
	li 5,1024
.LEHB119:
	bl _ZN11idHashIndex4InitEii
.LEHE119:
.LVL2614:
.LBE10014:
.LBE10018:
.LBB10019:
.LBB10020:
	.loc 8 319 0
	lwz 25,12(30)
	.loc 8 317 0
	stw 29,8(30)
	.loc 8 319 0
	cmpwi 7,25,0
	beq- 7,.L1815
	.loc 8 321 0
	lwz 9,0(30)
	.loc 8 323 0
	lwz 0,4(30)
	.loc 8 321 0
	addi 3,9,15
.LVL2615:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2616:
	slwi 3,3,4
.LVL2617:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1815
.LVL2618:
.LBB10021:
.LBB10022:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1935
.LVL2619:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,4(30)
	.loc 8 387 0
	ble- 7,.L1817
	.loc 8 388 0
	stw 3,0(30)
.L1817:
	.loc 8 392 0
	slwi 3,3,3
.LVL2620:
.LEHB120:
	bl _Znaj
.LVL2621:
	.loc 8 393 0
	lwz 0,0(30)
	.loc 8 392 0
	stw 3,12(30)
.LVL2622:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1818
	.loc 4 112 0
	addi 8,25,-8
.LBE10022:
.LBE10021:
.LBE10020:
.LBE10019:
.LBE9991:
.LBE9990:
	.loc 8 393 0
	li 9,0
	b .L1819
.LVL2623:
.L1936:
.LBB10054:
.LBB10047:
.LBB10031:
.LBB10029:
.LBB10027:
.LBB10025:
	lwz 3,12(30)
.LVL2624:
.L1819:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2625:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L1936
.LVL2626:
.L1818:
	.loc 8 399 0
	mr 3,25
	bl _ZdaPv
.LVL2627:
.L1815:
.LBE10025:
.LBE10027:
.LBE10029:
.LBE10031:
.LBB10032:
.LBB10033:
	.loc 15 371 0
	stw 29,32(30)
.LVL2628:
.LBE10033:
.LBE10032:
.LBB10034:
.LBB10007:
	.loc 15 341 0
	mr 3,26
	bl _ZN11idHashIndex4FreeEv
.LEHE120:
.LBE10007:
.LBE10034:
.LBE10047:
.LBE10054:
	.loc 4 112 0
	cmpwi 7,27,0
.LBB10055:
.LBB10048:
.LBB10035:
.LBB10008:
	.loc 15 342 0
	subf 9,21,30
	stwux 22,9,24
.LBE10008:
.LBE10035:
.LBE10048:
.LBE10055:
	.loc 4 112 0
	addi 30,30,44
.LVL2629:
	addi 27,27,-1
.LBB10056:
.LBB10049:
.LBB10036:
.LBB10009:
	.loc 15 343 0
	stw 29,8(9)
.LBE10009:
.LBE10036:
.LBE10049:
.LBE10056:
	.loc 4 112 0
	bne+ 7,.L1820
.LVL2630:
	.loc 4 112 0 is_stmt 0 discriminator 9
	addis 30,31,0x1
.LBB10057:
.LBB10058:
	.loc 15 112 0 is_stmt 1 discriminator 9
	li 4,1024
.LBE10058:
.LBE10057:
	.loc 4 112 0 discriminator 9
	addi 0,30,-32228
.LBB10061:
.LBB10059:
	.loc 15 112 0 discriminator 9
	li 5,1024
	mr 3,0
.LBE10059:
.LBE10061:
	.loc 4 112 0 discriminator 9
	stw 0,8(1)
.LVL2631:
.LEHB121:
.LBB10062:
.LBB10060:
	.loc 15 112 0 discriminator 9
	bl _ZN11idHashIndex4InitEii
.LEHE121:
.LVL2632:
.LBE10060:
.LBE10062:
.LBB10063:
.LBB10064:
	.loc 9 86 0 discriminator 10
	li 0,0
.LBE10064:
.LBE10063:
	.loc 4 112 0 discriminator 10
	addi 19,30,-32196
.LVL2633:
	addi 22,30,-32180
.LVL2634:
.LBB10068:
.LBB10069:
.LBB10070:
.LBB10071:
	.loc 8 159 0 discriminator 10
	li 9,16
.LBE10071:
.LBE10070:
	.loc 11 163 0 discriminator 10
	addi 29,30,-32140
.LBE10069:
.LBE10068:
.LBB10131:
.LBB10065:
	.loc 9 86 0 discriminator 10
	stw 0,-32184(30)
	.loc 9 87 0 discriminator 10
	stw 19,-32196(30)
.LBE10065:
.LBE10131:
.LBB10132:
.LBB10120:
.LBB10075:
.LBB10076:
	.loc 15 112 0 discriminator 10
	mr 3,29
.LBE10076:
.LBE10075:
.LBE10120:
.LBE10132:
.LBB10133:
.LBB10066:
	.loc 9 88 0 discriminator 10
	stw 19,-32192(30)
.LBE10066:
.LBE10133:
.LBB10134:
.LBB10121:
.LBB10080:
.LBB10077:
	.loc 15 112 0 discriminator 10
	li 4,1024
.LBE10077:
.LBE10080:
.LBE10121:
.LBE10134:
.LBB10135:
.LBB10067:
	.loc 9 89 0 discriminator 10
	stw 19,-32188(30)
.LBE10067:
.LBE10135:
.LBB10136:
.LBB10122:
.LBB10081:
.LBB10078:
	.loc 15 112 0 discriminator 10
	li 5,1024
.LBE10078:
.LBE10081:
.LBE10122:
.LBE10136:
.LBB10137:
.LBB10138:
	.loc 9 86 0 discriminator 10
	stw 0,-32168(30)
	.loc 9 87 0 discriminator 10
	stw 22,-32180(30)
	.loc 9 88 0 discriminator 10
	stw 22,-32176(30)
	.loc 9 89 0 discriminator 10
	stw 22,-32172(30)
.LVL2635:
.LBE10138:
.LBE10137:
.LBB10139:
.LBB10123:
.LBB10082:
.LBB10074:
	.loc 8 159 0 discriminator 10
	stw 9,-32148(30)
.LVL2636:
.LBB10072:
.LBB10073:
	.loc 8 197 0 discriminator 10
	stw 0,-32144(30)
	.loc 8 198 0 discriminator 10
	stw 0,-32156(30)
	.loc 8 199 0 discriminator 10
	stw 0,-32152(30)
.LEHB122:
.LBE10073:
.LBE10072:
.LBE10074:
.LBE10082:
.LBB10083:
.LBB10079:
	.loc 15 112 0 discriminator 10
	bl _ZN11idHashIndex4InitEii
.LEHE122:
.LBE10079:
.LBE10083:
.LBB10084:
.LBB10085:
	.loc 8 319 0
	lwz 28,-32144(30)
	.loc 8 317 0
	li 0,16
.LBE10085:
.LBE10084:
.LBE10123:
.LBE10139:
	.loc 4 112 0
	addi 25,30,-32156
.LVL2637:
.LBB10140:
.LBB10124:
.LBB10100:
.LBB10096:
	.loc 8 317 0
	stw 0,-32148(30)
	.loc 8 319 0
	cmpwi 7,28,0
	beq- 7,.L1828
	.loc 8 321 0
	lwz 9,-32156(30)
	.loc 8 323 0
	lwz 0,-32152(30)
	.loc 8 321 0
	addi 3,9,15
.LVL2638:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2639:
	slwi 3,3,4
.LVL2640:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1828
.LVL2641:
.LBB10086:
.LBB10087:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1937
.LVL2642:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,-32152(30)
	.loc 8 387 0
	bgt- 7,.L1938
.L1830:
	.loc 8 392 0
	slwi 3,3,3
.LVL2643:
.LEHB123:
	bl _Znaj
.LVL2644:
	.loc 8 393 0
	lwz 0,-32156(30)
	.loc 8 392 0
	stw 3,-32144(30)
.LVL2645:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1831
	.loc 4 112 0
	addi 8,28,-8
.LBE10087:
.LBE10086:
.LBE10096:
.LBE10100:
.LBE10124:
.LBE10140:
	.loc 8 393 0
	li 9,0
	b .L1832
.LVL2646:
.L1939:
.LBB10141:
.LBB10125:
.LBB10101:
.LBB10097:
.LBB10093:
.LBB10090:
	lwz 3,-32144(30)
.LVL2647:
.L1832:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2648:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,0(25)
	cmpw 7,9,0
	blt+ 7,.L1939
.LVL2649:
.L1831:
	.loc 8 399 0
	mr 3,28
	bl _ZdaPv
.LVL2650:
.L1828:
.LBE10090:
.LBE10093:
.LBE10097:
.LBE10101:
.LBB10102:
.LBB10103:
	.loc 15 371 0
	li 0,16
.LBE10103:
.LBE10102:
.LBB10105:
.LBB10106:
	.loc 15 341 0
	mr 3,29
.LBE10106:
.LBE10105:
.LBB10109:
.LBB10104:
	.loc 15 371 0
	stw 0,-32124(30)
.LVL2651:
.LBE10104:
.LBE10109:
.LBB10110:
.LBB10107:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE123:
	.loc 15 342 0
	li 0,128
.LBE10107:
.LBE10110:
.LBE10125:
.LBE10141:
	.loc 4 112 0
	addi 11,30,-32060
.LBB10142:
.LBB10126:
.LBB10111:
.LBB10108:
	.loc 15 342 0
	stw 0,-32140(30)
	.loc 15 343 0
	li 0,16
	stw 0,-32132(30)
.LVL2652:
.LBE10108:
.LBE10111:
.LBE10126:
.LBE10142:
.LBB10143:
.LBB10144:
	.loc 21 59 0
	li 0,0
	stw 0,-32064(30)
.LBE10144:
.LBE10143:
	.loc 4 112 0
	mr 3,11
	stw 11,12(1)
.LEHB124:
	bl _ZN9idProgramC1Ev
.LEHE124:
	.loc 4 112 0 is_stmt 0 discriminator 12
	addis 9,31,0x23
	addi 9,9,17272
	mr 3,9
	stw 9,16(1)
.LEHB125:
	bl _ZN6idClipC1Ev
.LEHE125:
	.loc 4 112 0 discriminator 13
	addis 30,31,0x25
	addi 14,30,1236
	mr 3,14
.LEHB126:
	bl _ZN5idPVSC1Ev
.LEHE126:
.LVL2653:
.LBB10145:
.LBB10146:
.LBB10147:
	.loc 14 356 0 is_stmt 1 discriminator 14
	li 0,0
	.loc 14 358 0 discriminator 14
	addi 9,30,1396
	.loc 14 357 0 discriminator 14
	li 11,20
.LBE10147:
.LBE10146:
.LBE10145:
	.loc 4 112 0 discriminator 14
	addi 15,30,1416
.LBB10152:
.LBB10150:
.LBB10148:
	.loc 14 356 0 discriminator 14
	stw 0,1384(30)
.LBE10148:
.LBE10150:
.LBE10152:
	.loc 4 112 0 discriminator 14
	mr 3,15
.LBB10153:
.LBB10151:
.LBB10149:
	.loc 14 357 0 discriminator 14
	stw 11,1392(30)
	.loc 14 358 0 discriminator 14
	stw 9,1388(30)
	.loc 14 359 0 discriminator 14
	stb 0,1396(30)
.LEHB127:
.LBE10149:
.LBE10151:
.LBE10153:
	.loc 4 112 0 discriminator 14
	bl _ZN17idMultiplayerGameC1Ev
.LEHE127:
.LBB10154:
.LBB10155:
	.loc 9 86 0 discriminator 15
	li 0,0
.LBE10155:
.LBE10154:
	.loc 4 112 0 discriminator 15
	addi 24,30,2024
.LVL2654:
.LBB10160:
.LBB10161:
	.loc 8 159 0 discriminator 15
	li 9,16
.LBE10161:
.LBE10160:
.LBB10165:
.LBB10166:
.LBB10167:
	.loc 14 358 0 discriminator 15
	addi 11,30,2076
	.loc 14 357 0 discriminator 15
	li 10,20
.LBE10167:
.LBE10166:
.LBE10165:
.LBB10170:
.LBB10171:
	.loc 11 163 0 discriminator 15
	addi 29,30,2180
.LVL2655:
.LBE10171:
.LBE10170:
.LBB10230:
.LBB10156:
	.loc 9 86 0 discriminator 15
	stw 0,2036(30)
.LBE10156:
.LBE10230:
.LBB10231:
.LBB10220:
.LBB10172:
.LBB10173:
	.loc 15 112 0 discriminator 15
	mr 3,29
.LBE10173:
.LBE10172:
.LBE10220:
.LBE10231:
.LBB10232:
.LBB10157:
	.loc 9 87 0 discriminator 15
	stw 24,2024(30)
.LBE10157:
.LBE10232:
.LBB10233:
.LBB10221:
.LBB10177:
.LBB10174:
	.loc 15 112 0 discriminator 15
	li 4,1024
.LBE10174:
.LBE10177:
.LBE10221:
.LBE10233:
.LBB10234:
.LBB10158:
	.loc 9 88 0 discriminator 15
	stw 24,2028(30)
.LBE10158:
.LBE10234:
.LBB10235:
.LBB10222:
.LBB10178:
.LBB10175:
	.loc 15 112 0 discriminator 15
	li 5,1024
.LBE10175:
.LBE10178:
.LBE10222:
.LBE10235:
.LBB10236:
.LBB10159:
	.loc 9 89 0 discriminator 15
	stw 24,2032(30)
.LVL2656:
.LBE10159:
.LBE10236:
.LBB10237:
.LBB10238:
	.loc 10 590 0 discriminator 15
	stw 0,2056(30)
.LVL2657:
.LBE10238:
.LBE10237:
.LBB10239:
.LBB10169:
.LBB10168:
	.loc 14 356 0 discriminator 15
	stw 0,2064(30)
	.loc 14 357 0 discriminator 15
	stw 10,2072(30)
	.loc 14 358 0 discriminator 15
	stw 11,2068(30)
	.loc 14 359 0 discriminator 15
	stb 0,2076(30)
.LVL2658:
.LBE10168:
.LBE10169:
.LBE10239:
.LBB10240:
.LBB10164:
	.loc 8 159 0 discriminator 15
	stw 9,2132(30)
.LVL2659:
.LBB10162:
.LBB10163:
	.loc 8 197 0 discriminator 15
	stw 0,2136(30)
	.loc 8 198 0 discriminator 15
	stw 0,2124(30)
	.loc 8 199 0 discriminator 15
	stw 0,2128(30)
.LVL2660:
.LBE10163:
.LBE10162:
.LBE10164:
.LBE10240:
.LBB10241:
.LBB10242:
	.loc 8 159 0 discriminator 15
	stw 9,2148(30)
.LVL2661:
.LBB10243:
.LBB10244:
	.loc 8 197 0 discriminator 15
	stw 0,2152(30)
	.loc 8 198 0 discriminator 15
	stw 0,2140(30)
	.loc 8 199 0 discriminator 15
	stw 0,2144(30)
.LVL2662:
.LBE10244:
.LBE10243:
.LBE10242:
.LBE10241:
.LBB10245:
.LBB10246:
	.loc 10 590 0 discriminator 15
	stw 0,2156(30)
.LVL2663:
.LBE10246:
.LBE10245:
.LBB10247:
.LBB10223:
.LBB10179:
.LBB10180:
	.loc 8 159 0 discriminator 15
	stw 9,2172(30)
.LVL2664:
.LBB10181:
.LBB10182:
	.loc 8 197 0 discriminator 15
	stw 0,2176(30)
	.loc 8 198 0 discriminator 15
	stw 0,2164(30)
	.loc 8 199 0 discriminator 15
	stw 0,2168(30)
.LEHB128:
.LBE10182:
.LBE10181:
.LBE10180:
.LBE10179:
.LBB10183:
.LBB10176:
	.loc 15 112 0 discriminator 15
	bl _ZN11idHashIndex4InitEii
.LEHE128:
.LBE10176:
.LBE10183:
.LBB10184:
.LBB10185:
	.loc 8 319 0
	lwz 28,2176(30)
	.loc 8 317 0
	li 0,16
.LBE10185:
.LBE10184:
.LBE10223:
.LBE10247:
	.loc 4 112 0
	addi 26,30,2164
.LVL2665:
.LBB10248:
.LBB10224:
.LBB10200:
.LBB10196:
	.loc 8 317 0
	stw 0,2172(30)
	.loc 8 319 0
	cmpwi 7,28,0
	beq- 7,.L1839
	.loc 8 321 0
	lwz 9,2164(30)
	.loc 8 323 0
	lwz 0,2168(30)
	.loc 8 321 0
	addi 3,9,15
.LVL2666:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2667:
	slwi 3,3,4
.LVL2668:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1839
.LVL2669:
.LBB10186:
.LBB10187:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1940
.LVL2670:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,2168(30)
	.loc 8 387 0
	bgt- 7,.L1941
.L1841:
	.loc 8 392 0
	slwi 3,3,3
.LVL2671:
.LEHB129:
	bl _Znaj
.LVL2672:
	.loc 8 393 0
	lwz 0,2164(30)
	.loc 8 392 0
	stw 3,2176(30)
.LVL2673:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1842
	.loc 4 112 0
	addi 8,28,-8
.LBE10187:
.LBE10186:
.LBE10196:
.LBE10200:
.LBE10224:
.LBE10248:
	.loc 8 393 0
	li 9,0
	b .L1843
.LVL2674:
.L1942:
.LBB10249:
.LBB10225:
.LBB10201:
.LBB10197:
.LBB10193:
.LBB10190:
	lwz 3,2176(30)
.LVL2675:
.L1843:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2676:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,0(26)
	cmpw 7,9,0
	blt+ 7,.L1942
.LVL2677:
.L1842:
	.loc 8 399 0
	mr 3,28
	bl _ZdaPv
.LVL2678:
.L1839:
.LBE10190:
.LBE10193:
.LBE10197:
.LBE10201:
.LBB10202:
.LBB10203:
	.loc 15 371 0
	li 0,16
.LBE10203:
.LBE10202:
.LBB10205:
.LBB10206:
	.loc 15 341 0
	mr 3,29
.LBE10206:
.LBE10205:
.LBB10209:
.LBB10204:
	.loc 15 371 0
	stw 0,2196(30)
.LVL2679:
.LBE10204:
.LBE10209:
.LBB10210:
.LBB10207:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE129:
	.loc 15 342 0
	li 0,128
.LBE10207:
.LBE10210:
.LBE10225:
.LBE10249:
	.loc 4 112 0
	addi 16,30,2248
.LBB10250:
.LBB10226:
.LBB10211:
.LBB10208:
	.loc 15 342 0
	stw 0,2180(30)
	.loc 15 343 0
	li 0,16
	stw 0,2188(30)
.LBE10208:
.LBE10211:
.LBE10226:
.LBE10250:
	.loc 4 112 0
	addi 7,30,4296
	mr 9,16
.LBB10251:
.LBB10252:
	.loc 8 159 0
	li 10,16
.LBB10253:
.LBB10254:
	.loc 8 197 0
	li 0,0
.L1844:
	.loc 8 197 0 is_stmt 0 discriminator 20
	li 11,32
.LBE10254:
.LBE10253:
.LBE10252:
.LBE10251:
	.loc 4 112 0 is_stmt 1 discriminator 20
	addi 8,9,512
.LBB10260:
.LBB10259:
.LBB10257:
.LBB10255:
	.loc 8 197 0 discriminator 20
	mtctr 11
.L1850:
.LVL2680:
.LBE10255:
.LBE10257:
	.loc 8 159 0
	stw 10,8(9)
.LBB10258:
.LBB10256:
	.loc 8 197 0
	li 11,0
	stw 0,12(9)
	.loc 8 198 0
	stw 0,0(9)
	.loc 8 199 0
	stw 0,4(9)
	addi 9,9,16
.LBE10256:
.LBE10258:
.LBE10259:
.LBE10260:
	.loc 4 112 0
	bdnz .L1850
	.loc 4 112 0 is_stmt 0 discriminator 23
	cmpw 7,8,7
	mr 9,8
	bne+ 7,.L1844
.LVL2681:
.LBB10261:
.LBB10262:
	.loc 27 187 0 is_stmt 1 discriminator 25
	addis 28,31,0x26
.LBE10262:
.LBE10261:
.LBB10266:
.LBB10267:
	.loc 26 89 0 discriminator 25
	addis 29,31,0x27
.LVL2682:
.LBE10267:
.LBE10266:
.LBB10269:
.LBB10270:
.LBB10271:
.LBB10272:
	.loc 8 159 0 discriminator 25
	li 0,16
.LBE10272:
.LBE10271:
.LBE10270:
.LBE10269:
.LBB10335:
.LBB10263:
	.loc 27 187 0 discriminator 25
	stw 11,6360(28)
	.loc 27 188 0 discriminator 25
	stw 11,6364(28)
.LBE10263:
.LBE10335:
.LBB10336:
.LBB10323:
	.loc 11 163 0 discriminator 25
	addi 18,29,-9916
.LBE10323:
.LBE10336:
.LBB10337:
.LBB10264:
	.loc 27 189 0 discriminator 25
	stw 11,6372(28)
.LBE10264:
.LBE10337:
.LBB10338:
.LBB10324:
.LBB10276:
.LBB10277:
	.loc 15 112 0 discriminator 25
	mr 3,18
.LBE10277:
.LBE10276:
.LBE10324:
.LBE10338:
.LBB10339:
.LBB10265:
	.loc 27 189 0 discriminator 25
	stw 11,6368(28)
.LVL2683:
.LBE10265:
.LBE10339:
.LBB10340:
.LBB10325:
.LBB10281:
.LBB10278:
	.loc 15 112 0 discriminator 25
	li 4,1024
.LBE10278:
.LBE10281:
.LBE10325:
.LBE10340:
.LBB10341:
.LBB10342:
	.loc 27 187 0 discriminator 25
	stw 11,6376(28)
.LBE10342:
.LBE10341:
.LBB10344:
.LBB10326:
.LBB10282:
.LBB10279:
	.loc 15 112 0 discriminator 25
	li 5,1024
.LBE10279:
.LBE10282:
.LBE10326:
.LBE10344:
.LBB10345:
.LBB10343:
	.loc 27 188 0 discriminator 25
	stw 11,6380(28)
	.loc 27 189 0 discriminator 25
	stw 11,6388(28)
	stw 11,6384(28)
.LVL2684:
.LBE10343:
.LBE10345:
.LBB10346:
.LBB10347:
	.loc 10 200 0 discriminator 25
	stw 11,6392(28)
	stw 11,6396(28)
.LVL2685:
.LBB10348:
.LBB10349:
	.loc 27 187 0 discriminator 25
	stw 11,6400(28)
	.loc 27 188 0 discriminator 25
	stw 11,6404(28)
	.loc 27 189 0 discriminator 25
	stw 11,6412(28)
	stw 11,6408(28)
.LVL2686:
.LBE10349:
.LBE10348:
.LBE10347:
.LBE10346:
.LBB10350:
.LBB10351:
	.loc 10 200 0 discriminator 25
	stw 11,6416(28)
	stw 11,6420(28)
.LVL2687:
.LBB10352:
.LBB10353:
	.loc 27 187 0 discriminator 25
	stw 11,6424(28)
	.loc 27 188 0 discriminator 25
	stw 11,6428(28)
	.loc 27 189 0 discriminator 25
	stw 11,6436(28)
	stw 11,6432(28)
.LBE10353:
.LBE10352:
.LBE10351:
.LBE10350:
.LBB10354:
.LBB10355:
	.loc 26 89 0 discriminator 25
	stw 11,6440(28)
.LBE10355:
.LBE10354:
.LBB10356:
.LBB10268:
	stw 11,-26324(29)
.LVL2688:
.LBE10268:
.LBE10356:
.LBB10357:
.LBB10327:
.LBB10283:
.LBB10275:
	.loc 8 159 0 discriminator 25
	stw 0,-9924(29)
.LVL2689:
.LBB10273:
.LBB10274:
	.loc 8 197 0 discriminator 25
	stw 11,-9920(29)
	.loc 8 198 0 discriminator 25
	stw 11,-9932(29)
	.loc 8 199 0 discriminator 25
	stw 11,-9928(29)
.LEHB130:
.LBE10274:
.LBE10273:
.LBE10275:
.LBE10283:
.LBB10284:
.LBB10280:
	.loc 15 112 0 discriminator 25
	bl _ZN11idHashIndex4InitEii
.LEHE130:
.LBE10280:
.LBE10284:
.LBB10285:
.LBB10286:
	.loc 8 319 0
	lwz 17,-9920(29)
	.loc 8 317 0
	li 0,16
.LBE10286:
.LBE10285:
.LBE10327:
.LBE10357:
	.loc 4 112 0
	addi 27,29,-9932
.LVL2690:
.LBB10358:
.LBB10328:
.LBB10301:
.LBB10297:
	.loc 8 317 0
	stw 0,-9924(29)
	.loc 8 319 0
	cmpwi 7,17,0
	beq- 7,.L1852
	.loc 8 321 0
	lwz 9,-9932(29)
	.loc 8 323 0
	lwz 0,-9928(29)
	.loc 8 321 0
	addi 3,9,15
.LVL2691:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2692:
	slwi 3,3,4
.LVL2693:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1852
.LVL2694:
.LBB10287:
.LBB10288:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L1943
.LVL2695:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,-9928(29)
	.loc 8 387 0
	bgt- 7,.L1944
.L1854:
	.loc 8 392 0
	slwi 3,3,3
.LVL2696:
.LEHB131:
	bl _Znaj
.LVL2697:
	.loc 8 393 0
	lwz 0,-9932(29)
	.loc 8 392 0
	stw 3,-9920(29)
.LVL2698:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1855
	.loc 4 112 0
	addi 8,17,-8
.LBE10288:
.LBE10287:
.LBE10297:
.LBE10301:
.LBE10328:
.LBE10358:
	.loc 8 393 0
	li 9,0
	b .L1856
.LVL2699:
.L1945:
.LBB10359:
.LBB10329:
.LBB10302:
.LBB10298:
.LBB10294:
.LBB10291:
	lwz 3,-9920(29)
.LVL2700:
.L1856:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2701:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,0(27)
	cmpw 7,9,0
	blt+ 7,.L1945
.LVL2702:
.L1855:
	.loc 8 399 0
	mr 3,17
	bl _ZdaPv
.LVL2703:
.L1852:
.LBE10291:
.LBE10294:
.LBE10298:
.LBE10302:
.LBB10303:
.LBB10304:
	.loc 15 371 0
	li 0,16
.LBE10304:
.LBE10303:
.LBB10306:
.LBB10307:
	.loc 15 341 0
	mr 3,18
.LBE10307:
.LBE10306:
.LBB10311:
.LBB10305:
	.loc 15 371 0
	stw 0,-9900(29)
.LVL2704:
.LBE10305:
.LBE10311:
.LBB10312:
.LBB10308:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE131:
.LBE10308:
.LBE10312:
.LBE10329:
.LBE10359:
.LBB10360:
.LBB10361:
.LBB10362:
.LBB10363:
	.loc 8 197 0
	li 0,0
.LBE10363:
.LBE10362:
.LBE10361:
.LBE10360:
.LBB10368:
.LBB10330:
.LBB10313:
.LBB10309:
	.loc 15 343 0
	li 9,16
	.loc 15 342 0
	li 11,128
.LBE10309:
.LBE10313:
.LBE10330:
.LBE10368:
	.loc 4 114 0
	lis 3,.LC202@ha
	lis 4,0x27
.LBB10369:
.LBB10331:
.LBB10314:
.LBB10310:
	.loc 15 342 0
	stw 11,-9916(29)
	.loc 15 343 0
	stw 9,-9908(29)
.LVL2705:
.LBE10310:
.LBE10314:
.LBE10331:
.LBE10369:
	.loc 4 114 0
	la 3,.LC202@l(3)
.LBB10370:
.LBB10366:
	.loc 8 159 0
	stw 9,-9880(29)
.LVL2706:
.LBE10366:
.LBE10370:
	.loc 4 114 0
	ori 4,4,6512
.LBB10371:
.LBB10367:
.LBB10365:
.LBB10364:
	.loc 8 197 0
	stw 0,-9876(29)
	.loc 8 198 0
	stw 0,-9888(29)
	.loc 8 199 0
	stw 0,-9884(29)
.LEHB132:
.LBE10364:
.LBE10365:
.LBE10367:
.LBE10371:
	.loc 4 114 0
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
	.loc 4 117 0
	mr 3,31
	bl _ZN11idGameLocal5ClearEv
.LEHE132:
.LBE10455:
	.loc 4 118 0
	lwz 0,100(1)
	lwz 14,24(1)
	mtlr 0
	lwz 15,28(1)
	lwz 16,32(1)
	lwz 17,36(1)
	lwz 18,40(1)
.LVL2707:
	lwz 19,44(1)
.LVL2708:
	lwz 20,48(1)
	lwz 21,52(1)
	lwz 22,56(1)
.LVL2709:
	lwz 23,60(1)
	lwz 24,64(1)
.LVL2710:
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
.LVL2711:
	lwz 31,92(1)
.LVL2712:
	addi 1,1,96
	.cfi_remember_state
.LCFI334:
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
.LVL2713:
.L1944:
.LCFI335:
	.cfi_restore_state
.LBB10456:
.LBB10372:
.LBB10332:
.LBB10315:
.LBB10299:
.LBB10295:
.LBB10292:
	.loc 8 388 0
	stw 3,-9932(29)
	b .L1854
.LVL2714:
.L1941:
.LBE10292:
.LBE10295:
.LBE10299:
.LBE10315:
.LBE10332:
.LBE10372:
.LBB10373:
.LBB10227:
.LBB10212:
.LBB10198:
.LBB10194:
.LBB10191:
	stw 3,2164(30)
	b .L1841
.LVL2715:
.L1938:
.LBE10191:
.LBE10194:
.LBE10198:
.LBE10212:
.LBE10227:
.LBE10373:
.LBB10374:
.LBB10127:
.LBB10112:
.LBB10098:
.LBB10094:
.LBB10091:
	stw 3,-32156(30)
	b .L1830
.LVL2716:
.L1931:
.LBE10091:
.LBE10094:
.LBE10098:
.LBE10112:
.LBE10127:
.LBE10374:
.LBB10375:
.LBB9914:
.LBB9899:
.LBB9885:
.LBB9881:
.LBB9878:
	stw 3,4(31)
	b .L1794
.LVL2717:
.L1935:
.LBE9878:
.LBE9881:
.LBE9885:
.LBE9899:
.LBE9914:
.LBE10375:
.LBB10376:
.LBB10050:
.LBB10037:
.LBB10030:
.LBB10028:
.LBB10026:
.LBB10023:
.LBB10024:
	.loc 8 194 0
	mr 3,25
.LVL2718:
	bl _ZdaPv
	.loc 8 197 0
	stw 28,12(30)
	.loc 8 198 0
	stw 28,0(30)
	.loc 8 199 0
	stw 28,4(30)
	b .L1815
.LVL2719:
.L1933:
.LBE10024:
.LBE10023:
.LBE10026:
.LBE10028:
.LBE10030:
.LBE10037:
.LBE10050:
.LBE10376:
.LBB10377:
.LBB9984:
.LBB9971:
.LBB9964:
.LBB9962:
.LBB9960:
.LBB9957:
.LBB9958:
	.loc 8 194 0
	mr 3,25
.LVL2720:
	bl _ZdaPv
	.loc 8 197 0
	stw 28,12(30)
	.loc 8 198 0
	stw 28,0(30)
	.loc 8 199 0
	stw 28,4(30)
	b .L1803
.LVL2721:
.L1937:
.LBE9958:
.LBE9957:
.LBE9960:
.LBE9962:
.LBE9964:
.LBE9971:
.LBE9984:
.LBE10377:
.LBB10378:
.LBB10128:
.LBB10113:
.LBB10099:
.LBB10095:
.LBB10092:
.LBB10088:
.LBB10089:
	.loc 8 194 0
	mr 3,28
.LVL2722:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,-32144(30)
	.loc 8 198 0
	stw 0,-32156(30)
	.loc 8 199 0
	stw 0,-32152(30)
	b .L1828
.LVL2723:
.L1930:
.LBE10089:
.LBE10088:
.LBE10092:
.LBE10095:
.LBE10099:
.LBE10113:
.LBE10128:
.LBE10378:
.LBB10379:
.LBB9915:
.LBB9900:
.LBB9886:
.LBB9882:
.LBB9879:
.LBB9875:
.LBB9876:
	.loc 8 194 0
	mr 3,29
.LVL2724:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,16(31)
	.loc 8 198 0
	stw 0,4(31)
	.loc 8 199 0
	stw 0,8(31)
	b .L1792
.LVL2725:
.L1940:
.LBE9876:
.LBE9875:
.LBE9879:
.LBE9882:
.LBE9886:
.LBE9900:
.LBE9915:
.LBE10379:
.LBB10380:
.LBB10228:
.LBB10213:
.LBB10199:
.LBB10195:
.LBB10192:
.LBB10188:
.LBB10189:
	.loc 8 194 0
	mr 3,28
.LVL2726:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,2176(30)
	.loc 8 198 0
	stw 0,2164(30)
	.loc 8 199 0
	stw 0,2168(30)
	b .L1839
.LVL2727:
.L1943:
.LBE10189:
.LBE10188:
.LBE10192:
.LBE10195:
.LBE10199:
.LBE10213:
.LBE10228:
.LBE10380:
.LBB10381:
.LBB10333:
.LBB10316:
.LBB10300:
.LBB10296:
.LBB10293:
.LBB10289:
.LBB10290:
	.loc 8 194 0
	mr 3,17
.LVL2728:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,-9920(29)
	.loc 8 198 0
	stw 0,-9932(29)
	.loc 8 199 0
	stw 0,-9928(29)
	b .L1852
.LVL2729:
.L1898:
	mr 29,3
.LVL2730:
.L1887:
.LBE10290:
.LBE10289:
.LBE10293:
.LBE10296:
.LBE10300:
.LBE10316:
.LBE10333:
.LBE10381:
	.loc 4 112 0
	lwz 3,12(1)
	bl _ZN9idProgramD1Ev
.L1888:
	mr 3,25
	bl _ZN6idDictD1Ev
.LVL2731:
.L1838:
.LBB10382:
.LBB10383:
.LBB10384:
	.loc 9 102 0
	mr 3,22
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LVL2732:
.LBE10384:
.LBE10383:
.LBE10382:
.LBB10385:
.LBB10386:
.LBB10387:
	mr 3,19
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LVL2733:
.LBE10387:
.LBE10386:
.LBE10385:
.LBB10388:
.LBB10389:
.LBB10390:
	.loc 15 130 0
	lwz 3,8(1)
	bl _ZN11idHashIndex4FreeEv
.LVL2734:
.L1892:
.LBE10390:
.LBE10389:
.LBE10388:
	.loc 4 118 0
	addi 30,31,532
.L1893:
	.loc 4 118 0 is_stmt 0 discriminator 6
	addi 30,30,-44
	.loc 4 112 0 is_stmt 1 discriminator 6
	mr 3,30
	bl _ZN6idDictD1Ev
	.loc 4 118 0 discriminator 6
	cmpw 7,21,30
	bne+ 7,.L1893
.LVL2735:
.L1866:
	.loc 4 118 0 is_stmt 0
	addi 30,31,228
.L1894:
	.loc 4 118 0 discriminator 9
	addi 30,30,-44
	.loc 4 112 0 is_stmt 1 discriminator 9
	mr 3,30
	bl _ZN6idDictD1Ev
	.loc 4 118 0 discriminator 9
	cmpw 7,20,30
	bne+ 7,.L1894
.LVL2736:
.L1929:
	.loc 4 112 0
	mr 3,23
	bl _ZN6idDictD1Ev
	mr 3,29
.LVL2737:
.L1802:
.LBB10391:
.LBB10392:
.LBB10393:
	.loc 3 74 0
	lis 9,_ZTV6idGame+8@ha
	la 0,_ZTV6idGame+8@l(9)
	stw 0,0(31)
.LEHB133:
	bl _Unwind_Resume
.LEHE133:
.LVL2738:
.L1913:
	mr 27,3
.LVL2739:
.LBE10393:
.LBE10392:
.LBE10391:
.LBB10394:
.LBB10334:
.LBB10317:
.LBB10318:
.LBB10319:
	.loc 15 130 0
	mr 3,18
	bl _ZN11idHashIndex4FreeEv
.LVL2740:
.L1860:
.LBE10319:
.LBE10318:
.LBE10317:
.LBB10320:
.LBB10321:
.LBB10322:
	.loc 8 181 0
	addi 3,29,-9932
	bl _ZN6idListI10idKeyValueE5ClearEv
.LVL2741:
.L1869:
.LBE10322:
.LBE10321:
.LBE10320:
.LBE10334:
.LBE10394:
	.loc 4 118 0
	addi 29,30,4296
.LBB10395:
.LBB10396:
.LBB10397:
.LBB10398:
.LBB10399:
.LBB10400:
	.loc 27 245 0
	li 0,0
.LBE10400:
.LBE10399:
.LBE10398:
.LBE10397:
.LBE10396:
.LBE10395:
	.loc 4 118 0
	cmpw 7,16,29
.LBB10406:
.LBB10405:
.LBB10404:
.LBB10403:
.LBB10402:
.LBB10401:
	.loc 27 245 0
	stw 0,6436(28)
	stw 0,6432(28)
.LVL2742:
.LBE10401:
.LBE10402:
.LBE10403:
.LBE10404:
.LBE10405:
.LBE10406:
.LBB10407:
.LBB10408:
.LBB10409:
.LBB10410:
.LBB10411:
.LBB10412:
	stw 0,6412(28)
	stw 0,6408(28)
.LVL2743:
.LBE10412:
.LBE10411:
.LBE10410:
.LBE10409:
.LBE10408:
.LBE10407:
.LBB10413:
.LBB10414:
.LBB10415:
.LBB10416:
	stw 0,6388(28)
	stw 0,6384(28)
.LVL2744:
.LBE10416:
.LBE10415:
.LBE10414:
.LBE10413:
.LBB10417:
.LBB10418:
.LBB10419:
.LBB10420:
	stw 0,6372(28)
	stw 0,6368(28)
.LBE10420:
.LBE10419:
.LBE10418:
.LBE10417:
	.loc 4 118 0
	beq- 7,.L1876
.L1928:
	.loc 4 118 0 is_stmt 0 discriminator 3
	addi 29,29,-16
.LVL2745:
.LBB10421:
.LBB10422:
.LBB10423:
	.loc 8 181 0 is_stmt 1 discriminator 3
	mr 3,29
	bl _ZN6idListIiE5ClearEv
.LBE10423:
.LBE10422:
.LBE10421:
	.loc 4 118 0 discriminator 3
	cmpw 7,16,29
	bne+ 7,.L1928
.LVL2746:
.L1876:
	.loc 4 112 0
	mr 3,26
	mr 29,27
	bl _ZN6idDictD1Ev
.LVL2747:
.L1849:
.LBB10424:
.LBB10425:
.LBB10426:
	.loc 8 181 0
	addi 3,30,2140
	bl _ZN6idListI5idStrE5ClearEv
.LVL2748:
.LBE10426:
.LBE10425:
.LBE10424:
.LBB10427:
.LBB10428:
.LBB10429:
	addi 3,30,2124
	bl _ZN6idListIP5idAASE5ClearEv
.LVL2749:
.LBE10429:
.LBE10428:
.LBE10427:
.LBB10430:
.LBB10431:
.LBB10432:
	.loc 14 501 0
	addi 3,30,2064
	bl _ZN5idStr8FreeDataEv
.LVL2750:
.LBE10432:
.LBE10431:
.LBE10430:
.LBB10433:
.LBB10434:
.LBB10435:
	.loc 9 102 0
	mr 3,24
	bl _ZN10idLinkListI8idEntityE5ClearEv
.LBE10435:
.LBE10434:
.LBE10433:
	.loc 4 112 0
	mr 3,15
	bl _ZN17idMultiplayerGameD1Ev
.LVL2751:
.L1884:
.LBB10436:
.LBB10437:
.LBB10438:
	.loc 14 501 0
	addi 3,30,1384
	bl _ZN5idStr8FreeDataEv
.LBE10438:
.LBE10437:
.LBE10436:
	.loc 4 112 0
	mr 3,14
	bl _ZN5idPVSD1Ev
.LVL2752:
.L1886:
	lwz 3,16(1)
	bl _ZN6idClipD1Ev
	b .L1887
.LVL2753:
.L1906:
	mr 29,3
.L1824:
.LVL2754:
.LBB10439:
.LBB10051:
.LBB10038:
.LBB10039:
.LBB10040:
	.loc 8 181 0
	mr 3,30
.LBE10040:
.LBE10039:
.LBE10038:
.LBE10051:
.LBE10439:
	.loc 4 112 0
	subfic 30,27,3
.LVL2755:
	mulli 30,30,44
.LBB10440:
.LBB10052:
.LBB10043:
.LBB10042:
.LBB10041:
	.loc 8 181 0
	bl _ZN6idListI10idKeyValueE5ClearEv
.LVL2756:
.LBE10041:
.LBE10042:
.LBE10043:
.LBE10052:
.LBE10440:
	.loc 4 112 0
	add 30,31,30
	addi 30,30,356
	cmpw 7,21,30
	beq- 7,.L1866
.LVL2757:
.L1914:
	.loc 4 112 0 is_stmt 0 discriminator 34
	addi 30,30,-44
	mr 3,30
	bl _ZN6idDictD1Ev
	cmpw 7,21,30
	bne+ 7,.L1914
	b .L1866
.LVL2758:
.L1905:
	mr 29,3
.LVL2759:
.LBB10441:
.LBB9985:
.LBB9972:
.LBB9973:
.LBB9974:
	.loc 15 130 0 is_stmt 1
	mr 3,26
	bl _ZN11idHashIndex4FreeEv
.LVL2760:
.L1811:
.LBE9974:
.LBE9973:
.LBE9972:
.LBB9975:
.LBB9976:
.LBB9977:
	.loc 8 181 0
	mr 3,30
.LBE9977:
.LBE9976:
.LBE9975:
.LBE9985:
.LBE10441:
	.loc 4 112 0
	subfic 30,27,3
.LVL2761:
	mulli 30,30,44
.LBB10442:
.LBB9986:
.LBB9980:
.LBB9979:
.LBB9978:
	.loc 8 181 0
	bl _ZN6idListI10idKeyValueE5ClearEv
.LVL2762:
.LBE9978:
.LBE9979:
.LBE9980:
.LBE9986:
.LBE10442:
	.loc 4 112 0
	add 30,31,30
	addi 30,30,52
	cmpw 7,20,30
	beq- 7,.L1929
.LVL2763:
.L1915:
	.loc 4 112 0 is_stmt 0 discriminator 31
	addi 30,30,-44
	mr 3,30
	bl _ZN6idDictD1Ev
	cmpw 7,20,30
	bne+ 7,.L1915
	b .L1929
.LVL2764:
.L1896:
	mr 29,3
	b .L1892
.LVL2765:
.L1907:
	mr 29,3
.LVL2766:
.LBB10443:
.LBB10053:
.LBB10044:
.LBB10045:
.LBB10046:
	.loc 15 130 0 is_stmt 1
	mr 3,26
	bl _ZN11idHashIndex4FreeEv
	b .L1824
.LVL2767:
.L1908:
	mr 29,3
.LVL2768:
.L1836:
.LBE10046:
.LBE10045:
.LBE10044:
.LBE10053:
.LBE10443:
.LBB10444:
.LBB10129:
.LBB10114:
.LBB10115:
.LBB10116:
	.loc 8 181 0
	addi 3,30,-32156
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L1838
.LVL2769:
.L1912:
	mr 27,3
	b .L1860
.LVL2770:
.L1897:
	mr 29,3
.LVL2771:
	b .L1888
.LVL2772:
.L1903:
	mr 29,3
.LVL2773:
.LBE10116:
.LBE10115:
.LBE10114:
.LBE10129:
.LBE10444:
.LBB10445:
.LBB9916:
.LBB9901:
.LBB9902:
.LBB9903:
	.loc 15 130 0
	mr 3,30
	bl _ZN11idHashIndex4FreeEv
	mr 30,29
.LVL2774:
.L1800:
.LBE9903:
.LBE9902:
.LBE9901:
.LBB9904:
.LBB9905:
.LBB9906:
	.loc 8 181 0
	mr 3,23
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,30
	b .L1802
.LVL2775:
.L1911:
	mr 28,3
.LVL2776:
.LBE9906:
.LBE9905:
.LBE9904:
.LBE9916:
.LBE10445:
.LBB10446:
.LBB10229:
.LBB10214:
.LBB10215:
.LBB10216:
	.loc 15 130 0
	mr 3,29
	bl _ZN11idHashIndex4FreeEv
	mr 29,28
.LVL2777:
.L1847:
.LBE10216:
.LBE10215:
.LBE10214:
.LBB10217:
.LBB10218:
.LBB10219:
	.loc 8 181 0
	addi 3,30,2164
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L1849
.LVL2778:
.L1902:
	mr 30,3
.LVL2779:
	addi 23,31,4
	b .L1800
.LVL2780:
.L1901:
	mr 18,3
.LVL2781:
.LBE10219:
.LBE10218:
.LBE10217:
.LBE10229:
.LBE10446:
.LBB10447:
.LBB10448:
.LBB10449:
	addi 3,29,-9888
	bl _ZN6idListI5idStrE5ClearEv
.LBE10449:
.LBE10448:
.LBE10447:
	.loc 4 112 0
	mr 3,27
	bl _ZN6idDictD1Ev
	mr 27,18
	b .L1869
.LVL2782:
.L1909:
	mr 28,3
.LVL2783:
.LBB10450:
.LBB10130:
.LBB10117:
.LBB10118:
.LBB10119:
	.loc 15 130 0
	mr 3,29
	bl _ZN11idHashIndex4FreeEv
	mr 29,28
.LVL2784:
	b .L1836
.LVL2785:
.L1910:
	mr 29,3
.LVL2786:
	b .L1847
.LVL2787:
.L1900:
	mr 29,3
.LVL2788:
	b .L1884
.LVL2789:
.L1899:
	mr 29,3
.LVL2790:
	b .L1886
.LVL2791:
.L1904:
	mr 29,3
	b .L1811
.LBE10119:
.LBE10118:
.LBE10117:
.LBE10130:
.LBE10450:
.LBE10456:
	.cfi_endproc
.LFE2834:
	.section	.gcc_except_table
.LLSDA2834:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2834-.LLSDACSB2834
.LLSDACSB2834:
	.uleb128 .LEHB115-.LFB2834
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L1902-.LFB2834
	.uleb128 0
	.uleb128 .LEHB116-.LFB2834
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1903-.LFB2834
	.uleb128 0
	.uleb128 .LEHB117-.LFB2834
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1904-.LFB2834
	.uleb128 0
	.uleb128 .LEHB118-.LFB2834
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1905-.LFB2834
	.uleb128 0
	.uleb128 .LEHB119-.LFB2834
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1906-.LFB2834
	.uleb128 0
	.uleb128 .LEHB120-.LFB2834
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1907-.LFB2834
	.uleb128 0
	.uleb128 .LEHB121-.LFB2834
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1896-.LFB2834
	.uleb128 0
	.uleb128 .LEHB122-.LFB2834
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1908-.LFB2834
	.uleb128 0
	.uleb128 .LEHB123-.LFB2834
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1909-.LFB2834
	.uleb128 0
	.uleb128 .LEHB124-.LFB2834
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1897-.LFB2834
	.uleb128 0
	.uleb128 .LEHB125-.LFB2834
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1898-.LFB2834
	.uleb128 0
	.uleb128 .LEHB126-.LFB2834
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1899-.LFB2834
	.uleb128 0
	.uleb128 .LEHB127-.LFB2834
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1900-.LFB2834
	.uleb128 0
	.uleb128 .LEHB128-.LFB2834
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L1910-.LFB2834
	.uleb128 0
	.uleb128 .LEHB129-.LFB2834
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L1911-.LFB2834
	.uleb128 0
	.uleb128 .LEHB130-.LFB2834
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L1912-.LFB2834
	.uleb128 0
	.uleb128 .LEHB131-.LFB2834
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L1913-.LFB2834
	.uleb128 0
	.uleb128 .LEHB132-.LFB2834
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L1901-.LFB2834
	.uleb128 0
	.uleb128 .LEHB133-.LFB2834
	.uleb128 .LEHE133-.LEHB133
	.uleb128 0
	.uleb128 0
.LLSDACSE2834:
	.section	".text"
	.size	_ZN11idGameLocalC2Ev, .-_ZN11idGameLocalC2Ev
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.98, @function
_Z41__static_initialization_and_destruction_0ii.constprop.98:
.LFB3467:
	.loc 4 4268 0
	.cfi_startproc
.LVL2792:
	cmpwi 7,3,1
	mflr 0
	stwu 1,-16(1)
.LCFI336:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 4 4268 0
	beq- 7,.L1949
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 4 69 0
	cmpwi 7,3,0
	bne- 7,.L1946
.LBB10467:
.LBB10468:
	lis 31,.LANCHOR0@ha
	la 31,.LANCHOR0@l(31)
	mr 3,31
.LVL2793:
	bl _ZN11idGameLocalD1Ev
	.loc 4 66 0
	addis 3,31,0x27
	addi 3,3,6592
	bl _ZN13idAnimManagerD1Ev
.L1946:
.LBE10468:
.LBE10467:
	.loc 4 4268 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI337:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2794:
.L1949:
.LCFI338:
	.cfi_restore_state
	.loc 10 694 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
	.loc 10 121 0
	lis 31,.LANCHOR0@ha
	.loc 10 694 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(9)
	.loc 10 121 0
	la 31,.LANCHOR0@l(31)
	addis 9,31,0x27
	li 10,3
	.loc 10 694 0
	fadds 0,0,0
.LBB10469:
.LBB10470:
	.loc 17 396 0
	li 0,0
.LBE10470:
.LBE10469:
	.loc 10 121 0
	stw 10,6572(9)
.LVL2795:
.LBB10474:
.LBB10471:
	.loc 17 398 0
	lis 10,.LC203@ha
	.loc 17 396 0
	stw 0,6576(9)
.LBE10471:
.LBE10474:
.LBB10475:
.LBB10476:
	.loc 19 825 0
	addi 11,9,6568
	fctiwz 0,0
.LBE10476:
.LBE10475:
.LBB10478:
.LBB10472:
	.loc 17 397 0
	stw 0,6580(9)
	.loc 17 398 0
	lwz 0,.LC203@l(10)
.LBE10472:
.LBE10478:
	.loc 4 66 0
	addi 3,9,6592
.LVL2796:
.LBB10479:
.LBB10473:
	.loc 17 398 0
	stw 0,6584(9)
.LVL2797:
.LBE10473:
.LBE10479:
	.file 28 "d:/Data/Nintendo/DoomGX/src/game/Player.h"
	.loc 28 69 0
	li 0,10
	stw 0,6588(9)
.LBB10480:
.LBB10477:
	.loc 19 825 0
	stfiwx 0,0,11
.LVL2798:
.LBE10477:
.LBE10480:
	.loc 4 66 0
	bl _ZN13idAnimManagerC1Ev
	.loc 4 4268 0
	lwz 0,20(1)
	.loc 4 69 0
	mr 3,31
	.loc 4 4268 0
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI339:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 4 69 0
	b _ZN11idGameLocalC1Ev
	.cfi_endproc
.LFE3467:
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.98, .-_Z41__static_initialization_and_destruction_0ii.constprop.98
	.align 2
	.globl _ZN11idGameLocal16SpawnMapEntitiesEv
	.type	_ZN11idGameLocal16SpawnMapEntitiesEv, @function
_ZN11idGameLocal16SpawnMapEntitiesEv:
.LFB2923:
	.loc 4 3074 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2923
.LVL2799:
	mflr 0
	stwu 1,-120(1)
.LCFI340:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
.LVL2800:
.LBB10560:
.LBB10561:
.LBB10562:
.LBB10563:
	.loc 8 159 0
	li 9,16
.LBE10563:
.LBE10562:
.LBB10570:
.LBB10571:
	.loc 15 112 0
	li 4,1024
.LBE10571:
.LBE10570:
.LBE10561:
.LBE10560:
	.loc 4 3074 0
	stw 28,104(1)
.LBB10688:
.LBB10618:
.LBB10575:
.LBB10572:
	.loc 15 112 0
	li 5,1024
.LBE10572:
.LBE10575:
.LBE10618:
.LBE10688:
	.loc 4 3074 0
	stw 0,124(1)
	mr 28,3
	.cfi_offset 65, 4
	.cfi_offset 28, -16
.LBB10689:
.LBB10619:
.LBB10576:
.LBB10568:
.LBB10564:
.LBB10565:
	.loc 8 197 0
	li 0,0
.LBE10565:
.LBE10564:
.LBE10568:
.LBE10576:
.LBB10577:
.LBB10573:
	.loc 15 112 0
	addi 3,1,24
.LVL2801:
.LBE10573:
.LBE10577:
.LBE10619:
.LBE10689:
	.loc 4 3074 0
	stw 17,60(1)
	stw 18,64(1)
	stw 19,68(1)
	stw 20,72(1)
	stw 21,76(1)
	stw 22,80(1)
	stw 23,84(1)
	stw 24,88(1)
	stw 25,92(1)
	stw 26,96(1)
	stw 27,100(1)
	stw 29,108(1)
	stw 30,112(1)
	stw 31,116(1)
.LBB10690:
.LBB10620:
.LBB10578:
.LBB10569:
	.loc 8 159 0
	stw 9,16(1)
.LVL2802:
.LBB10567:
.LBB10566:
	.loc 8 197 0
	stw 0,20(1)
	.loc 8 198 0
	stw 0,8(1)
	.loc 8 199 0
	stw 0,12(1)
.LVL2803:
.LEHB134:
.LBE10566:
.LBE10567:
.LBE10569:
.LBE10578:
.LBB10579:
.LBB10574:
	.loc 15 112 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
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
	bl _ZN11idHashIndex4InitEii
.LEHE134:
.LVL2804:
.LBE10574:
.LBE10579:
.LBB10580:
.LBB10581:
	.loc 8 319 0
	lwz 31,20(1)
	.loc 8 317 0
	li 0,16
	stw 0,16(1)
	.loc 8 319 0
	cmpwi 7,31,0
	beq- 7,.L1951
	.loc 8 321 0
	lwz 9,8(1)
	.loc 8 323 0
	lwz 0,12(1)
	.loc 8 321 0
	addi 3,9,15
.LVL2805:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2806:
	slwi 3,3,4
.LVL2807:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L1951
.LVL2808:
.LBB10582:
.LBB10583:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L2002
.LVL2809:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,12(1)
	.loc 8 387 0
	bgt- 7,.L2003
.L1953:
	.loc 8 392 0
	slwi 3,3,3
.LVL2810:
.LEHB135:
	bl _Znaj
.LVL2811:
	.loc 8 393 0
	lwz 0,8(1)
	.loc 8 392 0
	stw 3,20(1)
.LVL2812:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L1954
	.loc 4 3074 0
	addi 8,31,-8
.LBE10583:
.LBE10582:
.LBE10581:
.LBE10580:
.LBE10620:
.LBE10690:
	.loc 8 393 0
	li 9,0
	b .L1955
.LVL2813:
.L2004:
.LBB10691:
.LBB10621:
.LBB10595:
.LBB10592:
.LBB10589:
.LBB10586:
	lwz 3,20(1)
.LVL2814:
.L1955:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2815:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,8(1)
	cmpw 7,9,0
	blt+ 7,.L2004
.LVL2816:
.L1954:
	.loc 8 399 0
	mr 3,31
	bl _ZdaPv
.LVL2817:
.L1951:
.LBE10586:
.LBE10589:
.LBE10592:
.LBE10595:
.LBB10596:
.LBB10597:
	.loc 15 371 0
	li 0,16
.LBE10597:
.LBE10596:
.LBB10599:
.LBB10600:
	.loc 15 341 0
	addi 3,1,24
.LVL2818:
.LBE10600:
.LBE10599:
.LBB10605:
.LBB10598:
	.loc 15 371 0
	stw 0,40(1)
.LVL2819:
.LBE10598:
.LBE10605:
.LBB10606:
.LBB10601:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE135:
.LVL2820:
	.loc 15 342 0
	li 0,128
.LBE10601:
.LBE10606:
.LBE10621:
	.loc 4 3082 0
	lis 4,.LC204@ha
.LBB10622:
.LBB10607:
.LBB10602:
	.loc 15 342 0
	stw 0,24(1)
.LBE10602:
.LBE10607:
.LBE10622:
	.loc 4 3082 0
	mr 3,28
.LBB10623:
.LBB10608:
.LBB10603:
	.loc 15 343 0
	li 0,16
.LBE10603:
.LBE10608:
.LBE10623:
	.loc 4 3082 0
	la 4,.LC204@l(4)
.LBB10624:
.LBB10609:
.LBB10604:
	.loc 15 343 0
	stw 0,32(1)
	addi 30,1,8
.LEHB136:
.LBE10604:
.LBE10609:
.LBE10624:
	.loc 4 3082 0
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 3084 0
	addis 27,28,0x25
	lwz 0,2096(27)
	cmpwi 7,0,0
	beq- 7,.L2005
	.loc 4 3089 0
	lis 9,g_skill+44@ha
	lwz 3,g_skill+44@l(9)
.LBB10625:
.LBB10626:
	.loc 7 143 0
	lwz 9,36(3)
.LVL2821:
	cmpwi 7,9,3
	bgt- 7,.L2006
.L1963:
.LVL2822:
.LBE10626:
.LBE10625:
.LBB10628:
.LBB10629:
.LBB10630:
.LBB10631:
	.loc 7 148 0
	lwz 11,0(3)
	nor 4,9,9
	srawi 4,4,31
	addi 30,1,8
	lwz 0,16(11)
	and 4,9,4
	mtctr 0
	bctrl
.LVL2823:
.LBE10631:
.LBE10630:
.LBE10629:
.LBE10628:
	.loc 4 3091 0
	lwz 9,2096(27)
.LVL2824:
.LBB10632:
	.loc 4 4268 0
	lwz 26,12(9)
.LVL2825:
.LBE10632:
	.loc 4 3092 0
	cmpwi 7,26,0
	beq- 7,.L2007
.LVL2826:
.L1965:
.LBB10633:
.LBB10634:
	.file 29 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/MapFile.h"
	.loc 29 198 0
	lwz 9,24(9)
.LVL2827:
.LBE10634:
.LBE10633:
	.loc 4 3099 0
	addi 30,1,8
	mr 3,30
	lwz 4,0(9)
	bl _ZN6idDictaSERKS_
.LVL2828:
.LBB10635:
.LBB10636:
	.loc 11 193 0
	lis 3,.LC135@ha
	li 4,4094
	la 3,.LC135@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	lis 4,.LC58@ha
	mr 5,3
	la 4,.LC58@l(4)
	mr 3,30
	bl _ZN6idDict3SetEPKcS1_
.LBE10636:
.LBE10635:
	.loc 4 3101 0
	mr 3,28
	mr 4,30
	li 5,0
	li 6,1
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	cmpwi 7,3,0
	bne- 7,.L2008
.L1966:
	.loc 4 3102 0 discriminator 5
	lis 4,.LC207@ha
	mr 3,28
	la 4,.LC207@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.L1967:
.LVL2829:
	.loc 4 3108 0
	cmpwi 7,26,1
	.loc 4 3107 0
	lis 17,_enable_memtrace@ha
	li 0,0
	.loc 4 3108 0
	li 29,0
	li 25,1
	.loc 4 3107 0
	stb 0,_enable_memtrace@l(17)
.LVL2830:
	.loc 4 3108 0
	ble- 7,.L1968
	.loc 4 3121 0
	lis 20,.LANCHOR0@ha
	.loc 4 3117 0
	lis 18,.LC208@ha
	.loc 4 3121 0
	la 20,.LANCHOR0@l(20)
	.loc 4 3119 0
	lis 19,.LC209@ha
	.loc 4 3121 0
	addis 20,20,0x27
	.loc 4 3108 0
	li 31,1
	.loc 4 3117 0
	la 18,.LC208@l(18)
	.loc 4 3119 0
	la 19,.LC209@l(19)
	.loc 4 3121 0
	addi 20,20,6592
	.loc 4 3122 0
	lis 21,renderModelManager@ha
	.loc 4 3123 0
	lis 22,uiManager@ha
	.loc 4 3124 0
	lis 23,declManager@ha
	.loc 4 3125 0
	lis 24,collisionModelManager@ha
.LVL2831:
.L1971:
.LBB10637:
	.loc 4 4268 0
	lwz 9,2096(27)
.LBB10638:
	.loc 29 198 0
	slwi 0,31,2
.LBE10638:
.LBE10637:
	.loc 4 3110 0
	mr 3,30
.LBB10640:
.LBB10639:
	.loc 29 198 0
	lwz 9,24(9)
.LBE10639:
.LBE10640:
	.loc 4 3110 0
	lwzx 4,9,0
	bl _ZN6idDictaSERKS_
	.loc 4 3112 0
	mr 3,28
	mr 4,30
	bl _ZN11idGameLocal18InhibitEntitySpawnER6idDict
	cmpwi 7,3,0
	beq- 7,.L2009
	.loc 4 3128 0
	addi 29,29,1
.LVL2832:
.L1970:
	.loc 4 3130 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 3108 0
	addi 31,31,1
.LVL2833:
	cmpw 7,31,26
	bne+ 7,.L1971
.LVL2834:
.L1968:
	.loc 4 3134 0
	lis 4,.LC210@ha
	.loc 4 3132 0
	li 0,0
	.loc 4 3134 0
	mr 3,28
	la 4,.LC210@l(4)
	mr 5,25
	mr 6,29
	.loc 4 3132 0
	stb 0,_enable_memtrace@l(17)
	.loc 4 3134 0
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LEHE136:
.LVL2835:
.LBB10641:
.LBB10642:
.LBB10643:
	.loc 11 174 0
	mr 3,30
.LEHB137:
	bl _ZN6idDict5ClearEv
.LEHE137:
.LVL2836:
.LBB10644:
.LBB10645:
.LBB10646:
	.loc 15 130 0
	addi 3,1,24
.LVL2837:
.LEHB138:
	bl _ZN11idHashIndex4FreeEv
.LEHE138:
.LVL2838:
.L2000:
.LBE10646:
.LBE10645:
.LBE10644:
.LBE10643:
.LBE10642:
.LBE10641:
.LBB10652:
.LBB10653:
.LBB10654:
.LBB10655:
.LBB10656:
.LBB10657:
.LBB10658:
	.loc 8 193 0
	lwz 3,20(1)
	cmpwi 7,3,0
	beq- 7,.L1950
	.loc 8 194 0
	bl _ZdaPv
.L1950:
.LBE10658:
.LBE10657:
.LBE10656:
.LBE10655:
.LBE10654:
.LBE10653:
.LBE10652:
.LBE10691:
	.loc 4 3135 0
	lwz 0,124(1)
	lwz 17,60(1)
	mtlr 0
	lwz 18,64(1)
	lwz 19,68(1)
	lwz 20,72(1)
	lwz 21,76(1)
	lwz 22,80(1)
	lwz 23,84(1)
	lwz 24,88(1)
	lwz 25,92(1)
	lwz 26,96(1)
	lwz 27,100(1)
	lwz 28,104(1)
.LVL2839:
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI341:
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
	blr
.LVL2840:
.L2008:
.LCFI342:
	.cfi_restore_state
.LBB10692:
	.loc 4 3101 0 discriminator 2
	lwz 3,16908(28)
	cmpwi 7,3,0
	beq- 7,.L1966
.LVL2841:
.LBB10674:
.LBB10675:
	.loc 5 340 0 discriminator 3
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
.LEHB139:
	bctrl
.LVL2842:
.LBE10675:
	.loc 4 4268 0 discriminator 3
	lis 9,_ZN12idWorldspawn4TypeE@ha
	lwz 0,56(3)
	la 9,_ZN12idWorldspawn4TypeE@l(9)
.LBB10678:
.LBB10676:
.LBB10677:
	.loc 5 311 0 discriminator 3
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1966
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	ble- 7,.L1967
	b .L1966
.LVL2843:
.L2007:
.LBE10677:
.LBE10676:
.LBE10678:
.LBE10674:
	.loc 4 3093 0 is_stmt 1
	lis 4,.LC206@ha
	mr 3,28
	la 4,.LC206@l(4)
	addi 30,1,8
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LVL2844:
	lwz 9,2096(27)
	b .L1965
.LVL2845:
.L2006:
.LBB10679:
.LBB10627:
	.loc 7 143 0
	li 9,3
	b .L1963
.LVL2846:
.L2003:
.LBE10627:
.LBE10679:
.LBB10680:
.LBB10610:
.LBB10593:
.LBB10590:
.LBB10587:
	.loc 8 388 0
	stw 3,8(1)
	b .L1953
.LVL2847:
.L2009:
.LBE10587:
.LBE10590:
.LBE10593:
.LBE10610:
.LBE10680:
	.loc 4 3117 0
	mr 3,18
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 3118 0
	mr 3,28
	mr 4,30
	li 5,0
	li 6,1
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	.loc 4 3119 0
	mr 3,19
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 3120 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 3121 0
	mr 3,20
	bl _ZN13idAnimManager13VirtualizeAllEv
	.loc 4 3122 0
	lwz 3,renderModelManager@l(21)
	lwz 9,0(3)
	lwz 0,52(9)
	mtctr 0
	bctrl
	.loc 4 3123 0
	lwz 3,uiManager@l(22)
	lwz 9,0(3)
	lwz 0,28(9)
	mtctr 0
	bctrl
	.loc 4 3124 0
	lwz 3,declManager@l(23)
	lwz 9,0(3)
	lwz 0,20(9)
	mtctr 0
	bctrl
	.loc 4 3125 0
	lwz 3,collisionModelManager@l(24)
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
	.loc 4 3126 0
	addi 25,25,1
.LVL2848:
	b .L1970
.LVL2849:
.L2005:
	.loc 4 3085 0
	lis 4,.LC205@ha
	mr 3,28
	la 4,.LC205@l(4)
	addi 30,1,8
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LEHE139:
.LVL2850:
.LBB10681:
.LBB10671:
.LBB10668:
	.loc 11 174 0
	addi 30,1,8
	mr 3,30
.LEHB140:
	bl _ZN6idDict5ClearEv
.LEHE140:
.LVL2851:
.LBB10659:
.LBB10660:
.LBB10661:
	.loc 15 130 0
	addi 3,1,24
.LVL2852:
.LEHB141:
	bl _ZN11idHashIndex4FreeEv
.LEHE141:
.LVL2853:
	b .L2000
.LVL2854:
.L2002:
.LBE10661:
.LBE10660:
.LBE10659:
.LBE10668:
.LBE10671:
.LBE10681:
.LBB10682:
.LBB10611:
.LBB10594:
.LBB10591:
.LBB10588:
.LBB10584:
.LBB10585:
	.loc 8 194 0
	mr 3,31
.LVL2855:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,20(1)
	.loc 8 198 0
	stw 0,8(1)
	.loc 8 199 0
	stw 0,12(1)
	b .L1951
.LVL2856:
.L1992:
	mr 31,3
.LVL2857:
.LBE10585:
.LBE10584:
.LBE10588:
.LBE10591:
.LBE10594:
.LBE10611:
.LBE10682:
.LBB10683:
.LBB10651:
.LBB10650:
.LBB10647:
.LBB10648:
.LBB10649:
	.loc 15 130 0
	addi 3,1,24
.LVL2858:
	bl _ZN11idHashIndex4FreeEv
.LVL2859:
.L1981:
.LBE10649:
.LBE10648:
.LBE10647:
.LBE10650:
.LBE10651:
.LBE10683:
.LBB10684:
.LBB10672:
.LBB10669:
.LBB10662:
.LBB10663:
.LBB10664:
	.loc 8 181 0
	mr 3,30
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB142:
	bl _Unwind_Resume
.LVL2860:
.L1989:
	mr 31,3
.L1959:
.LVL2861:
.LBE10664:
.LBE10663:
.LBE10662:
.LBE10669:
.LBE10672:
.LBE10684:
.LBB10685:
.LBB10612:
.LBB10613:
.LBB10614:
	addi 3,1,8
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE142:
.LVL2862:
.L1988:
	mr 31,3
.LBE10614:
.LBE10613:
.LBE10612:
.LBE10685:
	.loc 4 3134 0
	mr 3,30
	bl _ZN6idDictD1Ev
	mr 3,31
.LEHB143:
	bl _Unwind_Resume
.LEHE143:
.LVL2863:
.L1990:
	mr 31,3
.LVL2864:
.LBB10686:
.LBB10615:
.LBB10616:
.LBB10617:
	.loc 15 130 0
	addi 3,1,24
.LVL2865:
	bl _ZN11idHashIndex4FreeEv
.LVL2866:
	b .L1959
.LVL2867:
.L1993:
.L2001:
	mr 31,3
	b .L1981
.LVL2868:
.L1994:
	mr 31,3
.LVL2869:
.LBE10617:
.LBE10616:
.LBE10615:
.LBE10686:
.LBB10687:
.LBB10673:
.LBB10670:
.LBB10665:
.LBB10666:
.LBB10667:
	addi 3,1,24
.LVL2870:
	bl _ZN11idHashIndex4FreeEv
.LVL2871:
	b .L1981
.LVL2872:
.L1991:
	b .L2001
.LBE10667:
.LBE10666:
.LBE10665:
.LBE10670:
.LBE10673:
.LBE10687:
.LBE10692:
	.cfi_endproc
.LFE2923:
	.section	.gcc_except_table
.LLSDA2923:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2923-.LLSDACSB2923
.LLSDACSB2923:
	.uleb128 .LEHB134-.LFB2923
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L1989-.LFB2923
	.uleb128 0
	.uleb128 .LEHB135-.LFB2923
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L1990-.LFB2923
	.uleb128 0
	.uleb128 .LEHB136-.LFB2923
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L1988-.LFB2923
	.uleb128 0
	.uleb128 .LEHB137-.LFB2923
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L1992-.LFB2923
	.uleb128 0
	.uleb128 .LEHB138-.LFB2923
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L1991-.LFB2923
	.uleb128 0
	.uleb128 .LEHB139-.LFB2923
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L1988-.LFB2923
	.uleb128 0
	.uleb128 .LEHB140-.LFB2923
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L1994-.LFB2923
	.uleb128 0
	.uleb128 .LEHB141-.LFB2923
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L1993-.LFB2923
	.uleb128 0
	.uleb128 .LEHB142-.LFB2923
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB143-.LFB2923
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
.LLSDACSE2923:
	.section	".text"
	.size	_ZN11idGameLocal16SpawnMapEntitiesEv, .-_ZN11idGameLocal16SpawnMapEntitiesEv
	.align 2
	.globl _ZN11idGameLocal11MapPopulateEv
	.type	_ZN11idGameLocal11MapPopulateEv, @function
_ZN11idGameLocal11MapPopulateEv:
.LFB2861:
	.loc 4 1110 0
	.cfi_startproc
.LVL2873:
	mflr 0
	stwu 1,-16(1)
.LCFI343:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 4 1112 0
	addis 30,3,0x25
	.cfi_offset 30, -8
	.loc 4 1110 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 4 1112 0
	lbz 0,2016(30)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L2011
	.loc 4 1113 0
	lis 9,cvarSystem@ha
	lis 4,.LC211@ha
	lwz 3,cvarSystem@l(9)
.LVL2874:
	la 4,.LC211@l(4)
	li 5,0
	li 6,0
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
.L2011:
	.loc 4 1116 0
	mr 3,31
	bl _ZN11idGameLocal16SpawnMapEntitiesEv
	.loc 4 1119 0
	mr 3,31
	bl _ZN11idGameLocal15SpreadLocationsEv
	.loc 4 1122 0
	mr 3,31
	bl _ZN11idGameLocal22RandomizeInitialSpawnsEv
	.loc 4 1126 0
	lwz 9,2104(30)
	.loc 4 1131 0
	lis 4,.LC212@ha
	mr 3,31
	.loc 4 1126 0
	addi 0,9,3
	.loc 4 1131 0
	la 4,.LC212@l(4)
	.loc 4 1126 0
	stw 0,2108(30)
	.loc 4 1131 0
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 1132 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 1133 0
	li 0,1
	lis 9,_enable_memtrace@ha
	stb 0,_enable_memtrace@l(9)
	.loc 4 1134 0
	bl _ZN7idEvent13ServiceEventsEv
	.loc 4 1135 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL2875:
	addi 1,1,16
.LCFI344:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2861:
	.size	_ZN11idGameLocal11MapPopulateEv, .-_ZN11idGameLocal11MapPopulateEv
	.align 2
	.globl _ZN11idGameLocal15LocalMapRestartEv
	.type	_ZN11idGameLocal15LocalMapRestartEv, @function
_ZN11idGameLocal15LocalMapRestartEv:
.LFB2856:
	.loc 4 925 0
	.cfi_startproc
.LVL2876:
	stwu 1,-40(1)
.LCFI345:
	.cfi_def_cfa_offset 40
	mflr 0
.LBB10693:
	.loc 4 928 0
	lis 4,.LC213@ha
.LBE10693:
	.loc 4 925 0
	stw 30,32(1)
.LBB10710:
	.loc 4 928 0
	la 4,.LC213@l(4)
.LBE10710:
	.loc 4 925 0
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 0,44(1)
	stw 27,20(1)
.LBB10711:
.LBB10694:
	.loc 4 4268 0
	lis 27,_ZN8idPlayer4TypeE@ha
	.cfi_offset 27, -20
	.cfi_offset 65, 4
.LBE10694:
.LBE10711:
	.loc 4 925 0
	stw 28,24(1)
	stw 29,28(1)
.LBB10712:
	.loc 4 930 0
	addis 29,30,0x25
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LBE10712:
	.loc 4 925 0
	stw 31,36(1)
.LBB10713:
	.loc 4 928 0
	.cfi_offset 31, -4
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL2877:
	.loc 4 930 0
	li 0,4
	.loc 4 925 0
	addi 31,30,528
	.loc 4 930 0
	stw 0,2236(29)
.LVL2878:
.LBE10713:
	.loc 4 925 0
	mr 28,31
	stw 0,8(1)
.LVL2879:
.L2014:
.LBB10714:
	.loc 4 933 0
	lwzu 9,4(28)
	cmpwi 7,9,0
.LBB10700:
.LBB10695:
	.loc 5 340 0
	mr 3,9
.LBE10695:
.LBE10700:
	.loc 4 933 0
	beq- 7,.L2017
.LVL2880:
.LBB10701:
.LBB10698:
	.loc 5 340 0 discriminator 1
	lwz 9,0(9)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2881:
.LBE10698:
	.loc 4 4268 0 discriminator 1
	la 9,_ZN8idPlayer4TypeE@l(27)
	lwz 0,56(3)
.LBB10699:
.LBB10696:
.LBB10697:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L2017
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L2017
.LBE10697:
.LBE10696:
.LBE10699:
.LBE10701:
	.loc 4 934 0 is_stmt 1 discriminator 4
	lwz 3,0(28)
.LVL2882:
	bl _ZN8idPlayer17PrepareForRestartEv
.LVL2883:
.L2017:
	.loc 4 932 0
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L2014
	.loc 4 938 0
	addis 28,30,0x26
	addi 3,28,6392
	bl _ZN12idEventQueue8ShutdownEv
	.loc 4 939 0
	addi 3,28,6416
	bl _ZN12idEventQueue8ShutdownEv
	.loc 4 941 0
	li 4,0
	mr 3,30
.LBB10702:
	.loc 4 4268 0
	lis 28,_ZN8idPlayer4TypeE@ha
.LBE10702:
	.loc 4 941 0
	bl _ZN11idGameLocal8MapClearEb
	.loc 4 944 0
	lwz 3,1972(29)
	bl _ZN16idSmokeParticles4InitEv
	.loc 4 956 0
	li 0,2
	stw 0,2236(29)
	.loc 4 954 0
	li 0,1
	.loc 4 953 0
	lwz 27,2104(29)
.LVL2884:
	.loc 4 958 0
	addis 3,30,0x1
	.loc 4 954 0
	stw 0,2104(29)
	.loc 4 958 0
	addi 3,3,-32060
	bl _ZN9idProgram7RestartEv
.LVL2885:
	.loc 4 960 0
	mr 3,30
	bl _ZN11idGameLocal16InitScriptForMapEv
	.loc 4 962 0
	mr 3,30
	bl _ZN11idGameLocal11MapPopulateEv
	.loc 4 966 0
	li 0,4
	stw 27,2104(29)
.LVL2886:
	stw 0,8(1)
.LVL2887:
.L2016:
	.loc 4 970 0
	lwzu 9,4(31)
	cmpwi 7,9,0
.LBB10708:
.LBB10703:
	.loc 5 340 0
	mr 3,9
.LBE10703:
.LBE10708:
	.loc 4 970 0
	beq- 7,.L2018
.LVL2888:
.LBB10709:
.LBB10706:
	.loc 5 340 0 discriminator 1
	lwz 9,0(9)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2889:
.LBE10706:
	.loc 4 4268 0 discriminator 1
	la 9,_ZN8idPlayer4TypeE@l(28)
	lwz 0,56(3)
.LBB10707:
.LBB10704:
.LBB10705:
	.loc 5 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L2018
	.loc 5 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L2018
.LBE10705:
.LBE10704:
.LBE10707:
.LBE10709:
	.loc 4 971 0 is_stmt 1 discriminator 4
	lwz 3,0(31)
.LVL2890:
	lwz 9,0(3)
	lwz 0,252(9)
	mtctr 0
	bctrl
.LVL2891:
.L2018:
	.loc 4 969 0
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L2016
	.loc 4 975 0
	li 0,3
	.loc 4 977 0
	mr 3,30
	.loc 4 975 0
	stw 0,2236(29)
	.loc 4 977 0
	lis 4,.LC10@ha
	la 4,.LC10@l(4)
.LBE10714:
	.loc 4 978 0
	lwz 0,44(1)
	lwz 27,20(1)
.LVL2892:
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
.LVL2893:
	lwz 31,36(1)
	addi 1,1,40
.LCFI346:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
.LBB10715:
	.loc 4 977 0
	crxor 6,6,6
	b _ZNK11idGameLocal6PrintfEPKcz
.LVL2894:
.LBE10715:
	.cfi_endproc
.LFE2856:
	.size	_ZN11idGameLocal15LocalMapRestartEv, .-_ZN11idGameLocal15LocalMapRestartEv
	.align 2
	.globl _ZN11idGameLocal10MapRestartEv
	.type	_ZN11idGameLocal10MapRestartEv, @function
_ZN11idGameLocal10MapRestartEv:
.LFB2857:
	.loc 4 985 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2857
.LVL2895:
	stwu 1,-8320(1)
.LCFI347:
	.cfi_def_cfa_offset 8320
	mflr 0
	stw 24,8288(1)
	mr 24,3
	.cfi_offset 24, -32
	.cfi_register 65, 0
.LBB10779:
	.loc 4 986 0
	addi 3,1,8
.LVL2896:
.LBE10779:
	.loc 4 985 0
	stw 0,8324(1)
	stw 22,8280(1)
	stw 23,8284(1)
	stw 25,8292(1)
	stw 26,8296(1)
	stw 27,8300(1)
	stw 28,8304(1)
	stw 29,8308(1)
	stw 30,8312(1)
	stw 31,8316(1)
.LEHB144:
.LBB10892:
	.loc 4 986 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	bl _ZN8idBitMsgC1Ev
.LEHE144:
.LVL2897:
.LBB10780:
.LBB10781:
.LBB10782:
.LBB10783:
.LBB10784:
	.loc 8 197 0
	li 0,0
.LBE10784:
.LBE10783:
	.loc 8 159 0
	li 9,16
.LBE10782:
.LBE10781:
.LBB10788:
.LBB10789:
	.loc 15 112 0
	addi 3,1,56
	li 4,1024
	li 5,1024
.LBE10789:
.LBE10788:
.LBB10791:
.LBB10787:
	.loc 8 159 0
	stw 9,48(1)
.LVL2898:
.LBB10786:
.LBB10785:
	.loc 8 197 0
	stw 0,52(1)
	.loc 8 198 0
	stw 0,40(1)
	.loc 8 199 0
	stw 0,44(1)
.LVL2899:
.LEHB145:
.LBE10785:
.LBE10786:
.LBE10787:
.LBE10791:
.LBB10792:
.LBB10790:
	.loc 15 112 0
	bl _ZN11idHashIndex4InitEii
.LEHE145:
.LVL2900:
.LBE10790:
.LBE10792:
.LBB10793:
.LBB10794:
	.loc 8 319 0
	lwz 31,52(1)
	.loc 8 317 0
	li 0,16
	stw 0,48(1)
	.loc 8 319 0
	cmpwi 7,31,0
	beq- 7,.L2022
	.loc 8 321 0
	lwz 9,40(1)
	.loc 8 323 0
	lwz 0,44(1)
	.loc 8 321 0
	addi 3,9,15
.LVL2901:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL2902:
	slwi 3,3,4
.LVL2903:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L2022
.LVL2904:
.LBB10795:
.LBB10796:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L2056
.LVL2905:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,44(1)
	.loc 8 387 0
	bgt- 7,.L2057
.L2024:
	.loc 8 392 0
	slwi 3,3,3
.LVL2906:
.LEHB146:
	bl _Znaj
.LVL2907:
	.loc 8 393 0
	lwz 0,40(1)
	.loc 8 392 0
	stw 3,52(1)
.LVL2908:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L2025
	.loc 4 985 0
	addi 8,31,-8
.LBE10796:
.LBE10795:
.LBE10794:
.LBE10793:
.LBE10780:
.LBE10892:
	.loc 8 393 0
	li 9,0
	b .L2026
.LVL2909:
.L2058:
.LBB10893:
.LBB10827:
.LBB10808:
.LBB10805:
.LBB10802:
.LBB10799:
	lwz 3,52(1)
.LVL2910:
.L2026:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL2911:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,40(1)
	cmpw 7,9,0
	blt+ 7,.L2058
.LVL2912:
.L2025:
	.loc 8 399 0
	mr 3,31
	bl _ZdaPv
.LVL2913:
.L2022:
.LBE10799:
.LBE10802:
.LBE10805:
.LBE10808:
.LBB10809:
.LBB10810:
	.loc 15 371 0
	li 0,16
.LBE10810:
.LBE10809:
.LBB10812:
.LBB10813:
	.loc 15 341 0
	addi 3,1,56
.LVL2914:
.LBE10813:
.LBE10812:
.LBB10816:
.LBB10811:
	.loc 15 371 0
	stw 0,72(1)
.LVL2915:
.LBE10811:
.LBE10816:
.LBB10817:
.LBB10814:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE146:
.LVL2916:
.LBE10814:
.LBE10817:
.LBE10827:
	.loc 4 992 0
	addis 22,24,0x25
	lbz 0,2018(22)
	cmpwi 7,0,0
.LBB10828:
.LBB10818:
.LBB10815:
	.loc 15 342 0
	li 0,128
	stw 0,56(1)
	.loc 15 343 0
	li 0,16
	stw 0,64(1)
.LBE10815:
.LBE10818:
.LBE10828:
	.loc 4 992 0
	beq- 7,.L2059
	.loc 4 993 0
	mr 3,24
	addi 28,1,40
.LEHB147:
	bl _ZN11idGameLocal15LocalMapRestartEv
.LEHE147:
	addi 28,1,40
.L2033:
.LVL2917:
.LBB10829:
.LBB10830:
.LBB10831:
	.loc 11 174 0
	mr 3,28
.LEHB148:
	bl _ZN6idDict5ClearEv
.LEHE148:
.LVL2918:
.LBB10832:
.LBB10833:
.LBB10834:
	.loc 15 130 0
	addi 3,1,56
.LVL2919:
.LEHB149:
	bl _ZN11idHashIndex4FreeEv
.LEHE149:
.LVL2920:
.LBE10834:
.LBE10833:
.LBE10832:
.LBB10835:
.LBB10836:
.LBB10837:
.LBB10838:
	.loc 8 193 0
	lwz 3,52(1)
	cmpwi 7,3,0
	beq- 7,.L2021
	.loc 8 194 0
	bl _ZdaPv
.L2021:
.LBE10838:
.LBE10837:
.LBE10836:
.LBE10835:
.LBE10831:
.LBE10830:
.LBE10829:
.LBE10893:
	.loc 4 1022 0
	lwz 0,8324(1)
	lwz 22,8280(1)
	mtlr 0
	lwz 23,8284(1)
	lwz 24,8288(1)
.LVL2921:
	lwz 25,8292(1)
	lwz 26,8296(1)
	lwz 27,8300(1)
	lwz 28,8304(1)
	lwz 29,8308(1)
	lwz 30,8312(1)
	lwz 31,8316(1)
	addi 1,1,8320
	.cfi_remember_state
.LCFI348:
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
.LVL2922:
.L2059:
.LCFI349:
	.cfi_restore_state
.LBB10894:
	.loc 4 995 0
	lis 9,cvarSystem@ha
	li 4,1024
	lwz 3,cvarSystem@l(9)
	addi 28,1,40
	lwz 9,0(3)
	lwz 0,96(9)
	mtctr 0
.LEHB150:
	bctrl
	addi 28,1,40
	mr 4,3
	mr 3,28
	bl _ZN6idDictaSERKS_
.LVL2923:
	.loc 4 996 0 discriminator 1
	lwz 0,40(1)
	li 31,0
	cmpwi 7,0,0
	ble- 7,.L2034
.LBB10849:
.LBB10850:
	.loc 14 675 0
	lis 25,.LC188@ha
.LBE10850:
.LBE10849:
.LBB10853:
.LBB10854:
	lis 23,.LC189@ha
	addi 26,24,4
.LBE10854:
.LBE10853:
.LBB10857:
.LBB10851:
	la 25,.LC188@l(25)
.LBE10851:
.LBE10857:
.LBB10858:
.LBB10855:
	la 23,.LC189@l(23)
.LVL2924:
.L2047:
.LBE10855:
.LBE10858:
.LBB10859:
.LBB10860:
.LBB10861:
	.loc 8 573 0
	lwz 29,12(28)
	.loc 4 985 0
	slwi 30,31,3
.LBE10861:
.LBE10860:
.LBE10859:
	.loc 4 998 0
	mr 3,26
.LBB10864:
	.loc 4 4268 0
	lwzx 9,29,30
.LBE10864:
.LBB10865:
.LBB10863:
.LBB10862:
	.loc 8 573 0
	add 27,29,30
.LVL2925:
.LBE10862:
.LBE10863:
.LBE10865:
	.loc 4 998 0
	lwz 4,4(9)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2926:
	.loc 4 999 0
	cmpwi 0,3,0
	beq- 0,.L2034
.LVL2927:
.LBB10866:
	.loc 4 4268 0
	lwz 9,4(3)
.LBE10866:
.LBB10867:
.LBB10868:
	lwz 11,4(27)
	.loc 14 675 0
	lwz 4,4(9)
	lwz 3,4(11)
.LVL2928:
	bl _ZN5idStr3CmpEPKcS1_
.LVL2929:
.LBE10868:
.LBE10867:
	.loc 4 1003 0
	cmpwi 7,3,0
	bne- 7,.L2060
.L2035:
	.loc 4 996 0
	lwz 0,0(28)
	addi 31,31,1
.LVL2930:
	cmpw 7,31,0
	blt+ 7,.L2047
.LVL2931:
.L2034:
	.loc 4 1008 0
	lis 30,cmdSystem@ha
	lis 5,.LC214@ha
	lwz 3,cmdSystem@l(30)
	li 4,0
	la 5,.LC214@l(5)
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
.LVL2932:
	.loc 4 1009 0
	lwz 0,40(1)
	cmpw 7,31,0
	beq- 7,.L2037
	.loc 4 1010 0
	lwz 3,cmdSystem@l(30)
	lis 5,.LC215@ha
	li 4,2
	la 5,.LC215@l(5)
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	b .L2033
.LVL2933:
.L2060:
.LBB10869:
.LBB10852:
	.loc 4 4268 0
	lwzx 9,29,30
	.loc 14 675 0
	mr 4,25
	lwz 3,4(9)
	bl _ZN5idStr3CmpEPKcS1_
.LBE10852:
.LBE10869:
	.loc 4 1003 0
	cmpwi 7,3,0
	beq+ 7,.L2034
.LVL2934:
.LBB10870:
.LBB10856:
	.loc 4 4268 0
	lwzx 9,29,30
	.loc 14 675 0
	mr 4,23
	lwz 3,4(9)
	bl _ZN5idStr3CmpEPKcS1_
.LBE10856:
.LBE10870:
	.loc 4 1003 0
	cmpwi 7,3,0
	bne- 7,.L2035
	b .L2034
.LVL2935:
.L2057:
.LBB10871:
.LBB10819:
.LBB10806:
.LBB10803:
.LBB10800:
	.loc 8 388 0
	stw 3,40(1)
	b .L2024
.LVL2936:
.L2037:
.LBE10800:
.LBE10803:
.LBE10806:
.LBE10819:
.LBE10871:
.LBB10872:
.LBB10873:
	.loc 25 156 0
	addi 0,1,84
.LBE10873:
.LBE10872:
.LBB10877:
.LBB10878:
	.loc 25 284 0
	addi 3,1,8
.LVL2937:
.LBE10878:
.LBE10877:
.LBB10882:
.LBB10874:
	.loc 25 156 0
	stw 0,8(1)
.LBE10874:
.LBE10882:
.LBB10883:
.LBB10879:
	.loc 25 284 0
	li 4,11
.LBE10879:
.LBE10883:
.LBB10884:
.LBB10875:
	.loc 25 157 0
	stw 0,12(1)
.LBE10875:
.LBE10884:
.LBB10885:
.LBB10880:
	.loc 25 284 0
	li 5,8
.LBE10880:
.LBE10885:
.LBB10886:
.LBB10876:
	.loc 25 158 0
	li 0,8192
	stw 0,16(1)
.LVL2938:
.LBE10876:
.LBE10886:
.LBB10887:
.LBB10881:
	.loc 25 284 0
	bl _ZN8idBitMsg9WriteBitsEii
.LVL2939:
.LBE10881:
.LBE10887:
	.loc 4 1014 0
	addi 3,1,8
.LVL2940:
	li 4,1
	li 5,1
	bl _ZN8idBitMsg9WriteBitsEii
.LVL2941:
	.loc 4 1015 0
	addi 3,1,8
.LVL2942:
	addi 4,24,4
	li 5,0
	bl _ZN8idBitMsg14WriteDeltaDictERK6idDictPS1_
.LVL2943:
	.loc 4 1016 0
	lis 9,networkSystem@ha
	li 4,-1
	lwz 3,networkSystem@l(9)
	addi 5,1,8
.LVL2944:
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL2945:
	.loc 4 1018 0
	mr 3,24
	bl _ZN11idGameLocal15LocalMapRestartEv
	.loc 4 1019 0
	addi 3,22,1416
	bl _ZN17idMultiplayerGame10MapRestartEv
.LEHE150:
	b .L2033
.LVL2946:
.L2056:
.LBB10888:
.LBB10820:
.LBB10807:
.LBB10804:
.LBB10801:
.LBB10797:
.LBB10798:
	.loc 8 194 0
	mr 3,31
.LVL2947:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,52(1)
	.loc 8 198 0
	stw 0,40(1)
	.loc 8 199 0
	stw 0,44(1)
	b .L2022
.LVL2948:
.L2050:
	mr 31,3
.L2031:
.LVL2949:
.LBE10798:
.LBE10797:
.LBE10801:
.LBE10804:
.LBE10807:
.LBE10820:
.LBB10821:
.LBB10822:
.LBB10823:
	.loc 8 181 0
	addi 3,1,40
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB151:
	bl _Unwind_Resume
.LVL2950:
.L2052:
	mr 31,3
.LVL2951:
.L2042:
.LBE10823:
.LBE10822:
.LBE10821:
.LBE10888:
.LBB10889:
.LBB10847:
.LBB10845:
.LBB10839:
.LBB10840:
.LBB10841:
	mr 3,28
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE151:
.LVL2952:
.L2051:
	mr 31,3
.LVL2953:
.LBE10841:
.LBE10840:
.LBE10839:
.LBE10845:
.LBE10847:
.LBE10889:
.LBB10890:
.LBB10824:
.LBB10825:
.LBB10826:
	.loc 15 130 0
	addi 3,1,56
.LVL2954:
	bl _ZN11idHashIndex4FreeEv
.LVL2955:
	b .L2031
.LVL2956:
.L2053:
	mr 31,3
.LVL2957:
.LBE10826:
.LBE10825:
.LBE10824:
.LBE10890:
.LBB10891:
.LBB10848:
.LBB10846:
.LBB10842:
.LBB10843:
.LBB10844:
	addi 3,1,56
.LVL2958:
	bl _ZN11idHashIndex4FreeEv
.LVL2959:
	b .L2042
.LVL2960:
.L2049:
	mr 31,3
.LBE10844:
.LBE10843:
.LBE10842:
.LBE10846:
.LBE10848:
.LBE10891:
	.loc 4 1021 0
	mr 3,28
	bl _ZN6idDictD1Ev
	mr 3,31
.LEHB152:
	bl _Unwind_Resume
.LEHE152:
.LBE10894:
	.cfi_endproc
.LFE2857:
	.section	.gcc_except_table
.LLSDA2857:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2857-.LLSDACSB2857
.LLSDACSB2857:
	.uleb128 .LEHB144-.LFB2857
	.uleb128 .LEHE144-.LEHB144
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB145-.LFB2857
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L2050-.LFB2857
	.uleb128 0
	.uleb128 .LEHB146-.LFB2857
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L2051-.LFB2857
	.uleb128 0
	.uleb128 .LEHB147-.LFB2857
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L2049-.LFB2857
	.uleb128 0
	.uleb128 .LEHB148-.LFB2857
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L2053-.LFB2857
	.uleb128 0
	.uleb128 .LEHB149-.LFB2857
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L2052-.LFB2857
	.uleb128 0
	.uleb128 .LEHB150-.LFB2857
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L2049-.LFB2857
	.uleb128 0
	.uleb128 .LEHB151-.LFB2857
	.uleb128 .LEHE151-.LEHB151
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB152-.LFB2857
	.uleb128 .LEHE152-.LEHB152
	.uleb128 0
	.uleb128 0
.LLSDACSE2857:
	.section	".text"
	.size	_ZN11idGameLocal10MapRestartEv, .-_ZN11idGameLocal10MapRestartEv
	.align 2
	.globl _ZN11idGameLocal9NextMap_fERK9idCmdArgs
	.type	_ZN11idGameLocal9NextMap_fERK9idCmdArgs, @function
_ZN11idGameLocal9NextMap_fERK9idCmdArgs:
.LFB2860:
	.loc 4 1094 0
	.cfi_startproc
.LVL2961:
	stwu 1,-16(1)
.LCFI350:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 4 1095 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 4 1094 0
	stw 0,20(1)
	.loc 4 1095 0
	la 31,.LANCHOR0@l(31)
	addis 9,31,0x25
	lbz 0,2016(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L2062
	.loc 4 1095 0 is_stmt 0 discriminator 1
	lbz 0,2018(9)
	cmpwi 7,0,0
	beq- 7,.L2063
.L2062:
	.loc 4 1096 0 is_stmt 1
	lis 9,common@ha
	lis 4,.LC216@ha
	lwz 3,common@l(9)
.LVL2962:
	la 4,.LC216@l(4)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 1103 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI351:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2963:
.L2063:
.LCFI352:
	.cfi_restore_state
	.loc 4 1100 0
	mr 3,31
.LVL2964:
	bl _ZN11idGameLocal7NextMapEv
	.loc 4 1103 0
	lwz 0,20(1)
	.loc 4 1102 0
	mr 3,31
	.loc 4 1103 0
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI353:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 4 1102 0
	b _ZN11idGameLocal10MapRestartEv
	.cfi_endproc
.LFE2860:
	.size	_ZN11idGameLocal9NextMap_fERK9idCmdArgs, .-_ZN11idGameLocal9NextMap_fERK9idCmdArgs
	.align 2
	.globl _ZN11idGameLocal12MapRestart_fERK9idCmdArgs
	.type	_ZN11idGameLocal12MapRestart_fERK9idCmdArgs, @function
_ZN11idGameLocal12MapRestart_fERK9idCmdArgs:
.LFB2858:
	.loc 4 1029 0
	.cfi_startproc
.LVL2965:
	mflr 0
	stwu 1,-8(1)
.LCFI354:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 1030 0
	lis 3,.LANCHOR0@ha
.LVL2966:
	la 3,.LANCHOR0@l(3)
	.loc 4 1029 0
	stw 0,12(1)
	.loc 4 1030 0
	addis 9,3,0x25
	lbz 0,2016(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L2066
	.loc 4 1030 0 is_stmt 0 discriminator 1
	lbz 0,2018(9)
	cmpwi 7,0,0
	beq- 7,.L2067
.L2066:
	.loc 4 1031 0 is_stmt 1
	lis 9,common@ha
	lis 4,.LC217@ha
	lwz 3,common@l(9)
	la 4,.LC217@l(4)
	lwz 9,0(3)
	lwz 0,68(9)
	mtctr 0
	crxor 6,6,6
	bctrl
	.loc 4 1032 0
	lis 9,cmdSystem@ha
	lwz 3,cmdSystem@l(9)
	lis 5,.LC218@ha
	li 4,2
	la 5,.LC218@l(5)
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 1037 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI355:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L2067:
.LCFI356:
	.cfi_restore_state
	lwz 0,12(1)
	addi 1,1,8
.LCFI357:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 4 1036 0
	b _ZN11idGameLocal10MapRestartEv
	.cfi_endproc
.LFE2858:
	.size	_ZN11idGameLocal12MapRestart_fERK9idCmdArgs, .-_ZN11idGameLocal12MapRestart_fERK9idCmdArgs
	.section	.text._ZN6idListIP11idMapEntityE5ClearEv,"axG",@progbits,_ZN6idListIP11idMapEntityE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIP11idMapEntityE5ClearEv
	.type	_ZN6idListIP11idMapEntityE5ClearEv, @function
_ZN6idListIP11idMapEntityE5ClearEv:
.LFB3303:
	.loc 8 192 0
	.cfi_startproc
.LVL2967:
	mflr 0
	stwu 1,-16(1)
.LCFI358:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 8 193 0
	lwz 3,12(3)
.LVL2968:
	cmpwi 7,3,0
	beq- 7,.L2070
	.cfi_offset 65, 4
	.loc 8 194 0 discriminator 1
	bl _ZdaPv
.L2070:
	.loc 8 197 0
	li 0,0
	stw 0,12(31)
	.loc 8 198 0
	stw 0,0(31)
	.loc 8 199 0
	stw 0,4(31)
	.loc 8 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2969:
	mtlr 0
	addi 1,1,16
.LCFI359:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3303:
	.size	_ZN6idListIP11idMapEntityE5ClearEv, .-_ZN6idListIP11idMapEntityE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN11idGameLocal8ShutdownEv
	.type	_ZN11idGameLocal8ShutdownEv, @function
_ZN11idGameLocal8ShutdownEv:
.LFB2838:
	.loc 4 298 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2838
.LVL2970:
	mflr 0
	stwu 1,-48(1)
.LCFI360:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 4 300 0
	lis 9,common@ha
	.loc 4 298 0
	stw 22,8(1)
	mr 22,3
	.cfi_offset 22, -40
	stw 0,52(1)
	.loc 4 300 0
	lwz 0,common@l(9)
	.cfi_offset 65, 4
	.loc 4 298 0
	stw 23,12(1)
	.loc 4 300 0
	cmpwi 7,0,0
	.loc 4 298 0
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 4 300 0
	beq- 7,.L2071
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.loc 4 304 0
	lis 4,.LC219@ha
	.loc 4 306 0
	addis 26,3,0x25
	.loc 4 304 0
	la 4,.LC219@l(4)
.LEHB153:
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL2971:
	.loc 4 306 0
	addi 3,26,1416
	bl _ZN17idMultiplayerGame8ShutdownEv
	.loc 4 308 0
	lwz 9,0(22)
	mr 3,22
	lwz 0,56(9)
	mtctr 0
	bctrl
.LVL2972:
.LBB10966:
.LBB10967:
	.loc 8 218 0
	lwz 0,2124(26)
	cmpwi 7,0,0
	ble- 7,.L2073
	li 31,0
	.loc 8 220 0
	li 29,0
.LVL2973:
.L2075:
	.loc 8 219 0
	lwz 9,2136(26)
	.loc 4 298 0
	slwi 30,31,2
	.loc 8 219 0
	lwzx 3,9,30
	add 9,9,30
	cmpwi 7,3,0
	beq- 7,.L2074
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
	bctrl
	lwz 9,2136(26)
	add 9,9,30
.L2074:
	.loc 8 220 0
	stw 29,0(9)
	.loc 8 218 0
	addi 31,31,1
.LVL2974:
	lwz 0,2124(26)
	cmpw 7,31,0
	blt+ 7,.L2075
.LVL2975:
.L2073:
.LBB10968:
.LBB10969:
	.loc 8 193 0
	lwz 3,2136(26)
	cmpwi 7,3,0
	beq- 7,.L2076
	.loc 8 194 0
	bl _ZdaPv
.L2076:
.LBE10969:
.LBE10968:
.LBE10967:
.LBE10966:
.LBB10976:
.LBB10977:
	.loc 8 193 0
	lwz 3,2152(26)
.LBE10977:
.LBE10976:
.LBB10983:
.LBB10974:
.LBB10972:
.LBB10970:
	.loc 8 197 0
	li 0,0
	stw 0,2136(26)
.LBE10970:
.LBE10972:
.LBE10974:
.LBE10983:
	.loc 4 311 0
	addi 30,26,2140
.LVL2976:
.LBB10984:
.LBB10981:
	.loc 8 193 0
	cmpwi 7,3,0
.LBE10981:
.LBE10984:
.LBB10985:
.LBB10975:
.LBB10973:
.LBB10971:
	.loc 8 198 0
	stw 0,2124(26)
	.loc 8 199 0
	stw 0,2128(26)
.LBE10971:
.LBE10973:
.LBE10975:
.LBE10985:
.LBB10986:
.LBB10982:
	.loc 8 193 0
	beq- 7,.L2077
	.loc 8 194 0
	lwz 31,-4(3)
	slwi 31,31,5
	add 31,3,31
	cmpw 7,3,31
	beq- 7,.L2078
.L2124:
	addi 31,31,-32
.LVL2977:
.LBB10978:
.LBB10979:
.LBB10980:
	.loc 14 501 0
	mr 3,31
	bl _ZN5idStr8FreeDataEv
.LBE10980:
.LBE10979:
.LBE10978:
	.loc 8 194 0
	lwz 3,12(30)
	cmpw 7,3,31
	bne+ 7,.L2124
.LVL2978:
.L2078:
	addi 3,3,-4
	bl _ZdaPv
.L2077:
	.loc 8 197 0
	li 0,0
	stw 0,2152(26)
	.loc 8 198 0
	stw 0,2140(26)
	.loc 8 199 0
	stw 0,2144(26)
.LBE10982:
.LBE10986:
	.loc 4 313 0
	bl _ZN4idAI26FreeObstacleAvoidanceNodesEv
	.loc 4 316 0
	bl _ZN13idModelExport8ShutdownEv
	.loc 4 318 0
	bl _ZN7idEvent8ShutdownEv
	.loc 4 320 0
	lwz 3,2112(26)
	cmpwi 7,3,0
	beq- 7,.L2082
	.loc 4 320 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L2082:
	.loc 4 323 0 is_stmt 1
	lwz 30,1972(26)
.LVL2979:
	.loc 4 321 0
	li 0,0
	stw 0,2112(26)
	.loc 4 323 0
	cmpwi 7,30,0
	beq- 7,.L2083
.LVL2980:
.LBB10987:
.LBB10988:
.LBB10989:
.LBB10990:
.LBB10991:
.LBB10992:
	.loc 8 193 0
	addis 31,30,0x2
	lwz 3,29164(31)
	cmpwi 7,3,0
	beq- 7,.L2084
	.loc 8 194 0
	bl _ZdaPv
.LVL2981:
.L2084:
	.loc 8 197 0
	li 0,0
.LBE10992:
.LBE10991:
.LBE10990:
.LBE10989:
.LBE10988:
.LBE10987:
	.loc 4 323 0
	mr 3,30
.LBB10998:
.LBB10997:
.LBB10996:
.LBB10995:
.LBB10994:
.LBB10993:
	.loc 8 197 0
	stw 0,29164(31)
	.loc 8 198 0
	stw 0,29152(31)
	.loc 8 199 0
	stw 0,29156(31)
.LBE10993:
.LBE10994:
.LBE10995:
.LBE10996:
.LBE10997:
.LBE10998:
	.loc 4 323 0
	bl _ZdlPv
.LVL2982:
.L2083:
	.loc 4 324 0
	li 0,0
	stw 0,1972(26)
	.loc 4 326 0
	bl _ZN7idClass8ShutdownEv
	.loc 4 329 0
	bl _ZN7idForce14ClearForceListEv
	.loc 4 332 0
	addis 3,22,0x1
	addi 3,3,-32060
	bl _ZN9idProgram8FreeDataEv
.LEHE153:
	.loc 4 335 0
	lwz 23,2096(26)
	cmpwi 7,23,0
	beq- 7,.L2087
.LVL2983:
.LBB10999:
.LBB11000:
.LBB11001:
.LBB11002:
.LBB11003:
	.loc 8 218 0
	lwz 0,12(23)
.LBE11003:
.LBE11002:
	.loc 29 187 0
	addi 25,23,12
.LVL2984:
.LBB11080:
.LBB11076:
	.loc 8 218 0
	cmpwi 7,0,0
	ble- 7,.L2088
	li 27,0
.LBB11004:
.LBB11005:
.LBB11006:
.LBB11007:
.LBB11008:
.LBB11009:
.LBB11010:
	.loc 8 197 0
	li 28,0
.LVL2985:
.L2108:
.LBE11010:
.LBE11009:
.LBE11008:
.LBE11007:
.LBE11006:
.LBE11005:
.LBE11004:
	.loc 8 219 0
	lwz 9,12(25)
	.loc 4 298 0
	slwi 24,27,2
	.loc 8 219 0
	lwzx 29,9,24
	add 9,9,24
	cmpwi 7,29,0
	beq- 7,.L2089
.LVL2986:
.LBB11068:
.LBB11064:
.LBB11060:
.LBB11017:
.LBB11018:
	.loc 8 218 0
	lwz 0,44(29)
	cmpwi 7,0,0
	ble- 7,.L2090
	li 31,0
.LVL2987:
.L2092:
	.loc 8 219 0
	lwz 9,56(29)
	.loc 4 298 0
	slwi 30,31,2
	.loc 8 219 0
	lwzx 3,9,30
	add 9,9,30
	cmpwi 7,3,0
	beq- 7,.L2091
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
.LEHB154:
	bctrl
.LEHE154:
	lwz 9,56(29)
	add 9,9,30
.L2091:
	.loc 8 220 0
	stw 28,0(9)
	.loc 8 218 0
	addi 31,31,1
.LVL2988:
	lwz 0,44(29)
	cmpw 7,31,0
	blt+ 7,.L2092
.LVL2989:
.L2090:
.LBB11019:
.LBB11020:
	.loc 8 193 0
	lwz 3,56(29)
	cmpwi 7,3,0
	beq- 7,.L2093
	.loc 8 194 0
	bl _ZdaPv
.L2093:
.LVL2990:
.LBE11020:
.LBE11019:
.LBE11018:
.LBE11017:
.LBB11021:
.LBB11015:
.LBB11013:
.LBB11011:
	.loc 8 197 0
	stw 28,56(29)
.LBE11011:
.LBE11013:
.LBE11015:
.LBE11021:
.LBB11022:
.LBB11023:
.LBB11024:
	.loc 11 174 0
	mr 3,29
.LBE11024:
.LBE11023:
.LBE11022:
.LBB11048:
.LBB11016:
.LBB11014:
.LBB11012:
	.loc 8 198 0
	stw 28,44(29)
	.loc 8 199 0
	stw 28,48(29)
.LVL2991:
.LEHB155:
.LBE11012:
.LBE11014:
.LBE11016:
.LBE11048:
.LBB11049:
.LBB11045:
.LBB11042:
	.loc 11 174 0
	bl _ZN6idDict5ClearEv
.LEHE155:
.LVL2992:
.LBB11025:
.LBB11026:
.LBB11027:
	.loc 15 130 0
	addi 3,29,16
.LEHB156:
	bl _ZN11idHashIndex4FreeEv
.LEHE156:
.LVL2993:
.LBE11027:
.LBE11026:
.LBE11025:
.LBB11028:
.LBB11029:
.LBB11030:
.LBB11031:
	.loc 8 193 0
	lwz 3,12(29)
	cmpwi 7,3,0
	beq- 7,.L2096
	.loc 8 194 0
	bl _ZdaPv
.L2096:
	.loc 8 197 0
	stw 28,12(29)
.LBE11031:
.LBE11030:
.LBE11029:
.LBE11028:
.LBE11042:
.LBE11045:
.LBE11049:
.LBE11060:
.LBE11064:
.LBE11068:
	.loc 8 219 0
	mr 3,29
.LBB11069:
.LBB11065:
.LBB11061:
.LBB11050:
.LBB11046:
.LBB11043:
.LBB11035:
.LBB11034:
.LBB11033:
.LBB11032:
	.loc 8 198 0
	stw 28,0(29)
	.loc 8 199 0
	stw 28,4(29)
.LBE11032:
.LBE11033:
.LBE11034:
.LBE11035:
.LBE11043:
.LBE11046:
.LBE11050:
.LBE11061:
.LBE11065:
.LBE11069:
	.loc 8 219 0
	bl _ZdlPv
	lwz 9,24(23)
	add 9,9,24
.LVL2994:
.L2089:
	.loc 8 220 0
	stw 28,0(9)
	.loc 8 218 0
	addi 27,27,1
.LVL2995:
	lwz 0,0(25)
	cmpw 7,27,0
	blt+ 7,.L2108
.LVL2996:
.L2088:
.LBB11070:
.LBB11071:
	.loc 8 193 0
	lwz 3,24(23)
	cmpwi 7,3,0
	beq- 7,.L2109
	.loc 8 194 0
	bl _ZdaPv
.L2109:
	.loc 8 197 0
	li 0,0
.LBE11071:
.LBE11070:
.LBE11076:
.LBE11080:
.LBB11081:
.LBB11082:
.LBB11083:
	.loc 14 501 0
	addi 3,23,28
.LBE11083:
.LBE11082:
.LBE11081:
.LBB11086:
.LBB11077:
.LBB11073:
.LBB11072:
	.loc 8 197 0
	stw 0,24(23)
	.loc 8 198 0
	stw 0,12(23)
	.loc 8 199 0
	stw 0,16(23)
.LVL2997:
.LEHB157:
.LBE11072:
.LBE11073:
.LBE11077:
.LBE11086:
.LBB11087:
.LBB11085:
.LBB11084:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE157:
.LVL2998:
.LBE11084:
.LBE11085:
.LBE11087:
.LBB11088:
.LBB11089:
.LBB11090:
.LBB11091:
	.loc 8 193 0
	lwz 3,24(23)
	cmpwi 7,3,0
	beq- 7,.L2111
	.loc 8 194 0
	bl _ZdaPv
.L2111:
	.loc 8 197 0
	li 0,0
.LBE11091:
.LBE11090:
.LBE11089:
.LBE11088:
.LBE11001:
.LBE11000:
.LBE10999:
	.loc 4 335 0
	mr 3,23
.LBB11108:
.LBB11106:
.LBB11104:
.LBB11095:
.LBB11094:
.LBB11093:
.LBB11092:
	.loc 8 197 0
	stw 0,24(23)
	.loc 8 198 0
	stw 0,12(23)
	.loc 8 199 0
	stw 0,16(23)
.LBE11092:
.LBE11093:
.LBE11094:
.LBE11095:
.LBE11104:
.LBE11106:
.LBE11108:
	.loc 4 335 0
	bl _ZdlPv
.LVL2999:
.L2087:
	.loc 4 336 0
	li 0,0
	.loc 4 339 0
	lis 3,.LC220@ha
	.loc 4 336 0
	stw 0,2096(26)
	.loc 4 339 0
	la 3,.LC220@l(3)
.LEHB158:
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 342 0
	mr 3,22
	bl _ZN11idGameLocal23ShutdownConsoleCommandsEv
	.loc 4 345 0
	mr 3,22
	bl _ZN11idGameLocal5ClearEv
	.loc 4 348 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addis 3,3,0x27
	addi 3,3,6592
	bl _ZN13idAnimManager8ShutdownEv
	.loc 4 364 0
	lwz 0,52(1)
	lwz 23,12(1)
	.loc 4 350 0
	mr 3,22
	.loc 4 364 0
	lwz 24,16(1)
	.loc 4 350 0
	lis 4,.LC10@ha
	.loc 4 364 0
	lwz 22,8(1)
.LVL3000:
	mtlr 0
	lwz 25,20(1)
	.loc 4 350 0
	la 4,.LC10@l(4)
	.loc 4 364 0
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI361:
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
	.loc 4 350 0
	crxor 6,6,6
	b _ZNK11idGameLocal6PrintfEPKcz
.LVL3001:
.L2071:
.LCFI362:
	.cfi_restore_state
	.loc 4 364 0
	lwz 0,52(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI363:
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
.LVL3002:
.L2117:
.LCFI364:
	.cfi_restore_state
	mr 31,3
.LVL3003:
.L2114:
.LBB11109:
.LBB11107:
.LBB11105:
.LBB11096:
.LBB11097:
.LBB11098:
	.loc 8 181 0
	mr 3,25
	bl _ZN6idListIP11idMapEntityE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE158:
.LVL3004:
.L2118:
.LBE11098:
.LBE11097:
.LBE11096:
.LBB11099:
.LBB11078:
.LBB11074:
.LBB11066:
.LBB11062:
.LBB11051:
.LBB11052:
.LBB11053:
.LBB11054:
	.loc 8 193 0
	lwz 0,56(29)
	mr 31,3
.LVL3005:
	cmpwi 7,0,0
	beq- 7,.L2104
	.loc 8 194 0
	mr 3,0
	bl _ZdaPv
.L2104:
	.loc 8 197 0
	li 0,0
.LBE11054:
.LBE11053:
.LBE11052:
.LBE11051:
	.loc 29 170 0
	mr 3,29
.LBB11058:
.LBB11057:
.LBB11056:
.LBB11055:
	.loc 8 197 0
	stw 0,56(29)
	.loc 8 198 0
	stw 0,44(29)
	.loc 8 199 0
	stw 0,48(29)
.LBE11055:
.LBE11056:
.LBE11057:
.LBE11058:
	.loc 29 170 0
	bl _ZN6idDictD1Ev
.LVL3006:
.L2102:
.LBE11062:
.LBE11066:
.LBE11074:
.LBE11078:
.LBE11099:
.LBB11100:
.LBB11101:
.LBB11102:
	.loc 14 501 0
	addi 3,23,28
	bl _ZN5idStr8FreeDataEv
	b .L2114
.LVL3007:
.L2119:
	mr 31,3
.LVL3008:
.L2100:
.LBE11102:
.LBE11101:
.LBE11100:
.LBB11103:
.LBB11079:
.LBB11075:
.LBB11067:
.LBB11063:
.LBB11059:
.LBB11047:
.LBB11044:
.LBB11036:
.LBB11037:
.LBB11038:
	.loc 8 181 0
	mr 3,29
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L2102
.LVL3009:
.L2120:
	mr 31,3
.LVL3010:
.LBE11038:
.LBE11037:
.LBE11036:
.LBB11039:
.LBB11040:
.LBB11041:
	.loc 15 130 0
	addi 3,29,16
	bl _ZN11idHashIndex4FreeEv
	b .L2100
.LBE11041:
.LBE11040:
.LBE11039:
.LBE11044:
.LBE11047:
.LBE11059:
.LBE11063:
.LBE11067:
.LBE11075:
.LBE11079:
.LBE11103:
.LBE11105:
.LBE11107:
.LBE11109:
	.cfi_endproc
.LFE2838:
	.section	.gcc_except_table
.LLSDA2838:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2838-.LLSDACSB2838
.LLSDACSB2838:
	.uleb128 .LEHB153-.LFB2838
	.uleb128 .LEHE153-.LEHB153
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB154-.LFB2838
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L2118-.LFB2838
	.uleb128 0
	.uleb128 .LEHB155-.LFB2838
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L2120-.LFB2838
	.uleb128 0
	.uleb128 .LEHB156-.LFB2838
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L2119-.LFB2838
	.uleb128 0
	.uleb128 .LEHB157-.LFB2838
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L2117-.LFB2838
	.uleb128 0
	.uleb128 .LEHB158-.LFB2838
	.uleb128 .LEHE158-.LEHB158
	.uleb128 0
	.uleb128 0
.LLSDACSE2838:
	.section	".text"
	.size	_ZN11idGameLocal8ShutdownEv, .-_ZN11idGameLocal8ShutdownEv
	.align 2
	.globl _ZN11idGameLocal11GetLevelMapEv
	.type	_ZN11idGameLocal11GetLevelMapEv, @function
_ZN11idGameLocal11GetLevelMapEv:
.LFB2894:
	.loc 4 2402 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2894
.LVL3011:
	mflr 0
	stwu 1,-48(1)
.LCFI365:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 23,12(1)
	.loc 4 2403 0
	addis 23,3,0x25
	.cfi_offset 23, -36
	.loc 4 2402 0
	stw 0,52(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 4 2403 0
	lwz 24,2096(23)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	cmpwi 7,24,0
	beq- 7,.L2126
	.loc 4 2403 0 is_stmt 0 discriminator 1
	lbz 0,60(24)
	cmpwi 6,0,0
	bne- 6,.L2127
.L2126:
	.loc 4 2406 0 is_stmt 1
	lwz 0,2064(23)
	cmpwi 6,0,0
	beq- 6,.L2212
	.loc 4 2410 0
	beq- 7,.L2128
.LVL3012:
.LBB11241:
.LBB11242:
.LBB11243:
.LBB11244:
.LBB11245:
	.loc 8 218 0
	lwz 0,12(24)
.LBE11245:
.LBE11244:
	.loc 29 187 0
	addi 25,24,12
.LVL3013:
.LBB11322:
.LBB11318:
	.loc 8 218 0
	cmpwi 7,0,0
	ble- 7,.L2129
	li 27,0
.LBB11246:
.LBB11247:
.LBB11248:
.LBB11249:
.LBB11250:
.LBB11251:
.LBB11252:
	.loc 8 197 0
	li 28,0
.LVL3014:
.L2149:
.LBE11252:
.LBE11251:
.LBE11250:
.LBE11249:
.LBE11248:
.LBE11247:
.LBE11246:
	.loc 8 219 0
	lwz 9,12(25)
	.loc 4 2402 0
	slwi 26,27,2
	.loc 8 219 0
	lwzx 29,9,26
	add 9,9,26
	cmpwi 7,29,0
	beq- 7,.L2130
.LVL3015:
.LBB11310:
.LBB11306:
.LBB11302:
.LBB11259:
.LBB11260:
	.loc 8 218 0
	lwz 0,44(29)
	cmpwi 7,0,0
	ble- 7,.L2131
	li 31,0
.LVL3016:
.L2133:
	.loc 8 219 0
	lwz 9,56(29)
	.loc 4 2402 0
	slwi 30,31,2
	.loc 8 219 0
	lwzx 3,9,30
	add 9,9,30
	cmpwi 7,3,0
	beq- 7,.L2132
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
.LEHB159:
	bctrl
.LEHE159:
	lwz 9,56(29)
	add 9,9,30
.L2132:
	.loc 8 220 0
	stw 28,0(9)
	.loc 8 218 0
	addi 31,31,1
.LVL3017:
	lwz 0,44(29)
	cmpw 7,31,0
	blt+ 7,.L2133
.LVL3018:
.L2131:
.LBB11261:
.LBB11262:
	.loc 8 193 0
	lwz 3,56(29)
	cmpwi 7,3,0
	beq- 7,.L2134
	.loc 8 194 0
	bl _ZdaPv
.L2134:
.LVL3019:
.LBE11262:
.LBE11261:
.LBE11260:
.LBE11259:
.LBB11263:
.LBB11257:
.LBB11255:
.LBB11253:
	.loc 8 197 0
	stw 28,56(29)
.LBE11253:
.LBE11255:
.LBE11257:
.LBE11263:
.LBB11264:
.LBB11265:
.LBB11266:
	.loc 11 174 0
	mr 3,29
.LBE11266:
.LBE11265:
.LBE11264:
.LBB11290:
.LBB11258:
.LBB11256:
.LBB11254:
	.loc 8 198 0
	stw 28,44(29)
	.loc 8 199 0
	stw 28,48(29)
.LVL3020:
.LEHB160:
.LBE11254:
.LBE11256:
.LBE11258:
.LBE11290:
.LBB11291:
.LBB11287:
.LBB11284:
	.loc 11 174 0
	bl _ZN6idDict5ClearEv
.LEHE160:
.LVL3021:
.LBB11267:
.LBB11268:
.LBB11269:
	.loc 15 130 0
	addi 3,29,16
.LEHB161:
	bl _ZN11idHashIndex4FreeEv
.LEHE161:
.LVL3022:
.LBE11269:
.LBE11268:
.LBE11267:
.LBB11270:
.LBB11271:
.LBB11272:
.LBB11273:
	.loc 8 193 0
	lwz 3,12(29)
	cmpwi 7,3,0
	beq- 7,.L2137
	.loc 8 194 0
	bl _ZdaPv
.L2137:
	.loc 8 197 0
	stw 28,12(29)
.LBE11273:
.LBE11272:
.LBE11271:
.LBE11270:
.LBE11284:
.LBE11287:
.LBE11291:
.LBE11302:
.LBE11306:
.LBE11310:
	.loc 8 219 0
	mr 3,29
.LBB11311:
.LBB11307:
.LBB11303:
.LBB11292:
.LBB11288:
.LBB11285:
.LBB11277:
.LBB11276:
.LBB11275:
.LBB11274:
	.loc 8 198 0
	stw 28,0(29)
	.loc 8 199 0
	stw 28,4(29)
.LBE11274:
.LBE11275:
.LBE11276:
.LBE11277:
.LBE11285:
.LBE11288:
.LBE11292:
.LBE11303:
.LBE11307:
.LBE11311:
	.loc 8 219 0
	bl _ZdlPv
	lwz 9,24(24)
	add 9,9,26
.LVL3023:
.L2130:
	.loc 8 220 0
	stw 28,0(9)
	.loc 8 218 0
	addi 27,27,1
.LVL3024:
	lwz 0,0(25)
	cmpw 7,27,0
	blt+ 7,.L2149
.LVL3025:
.L2129:
.LBB11312:
.LBB11313:
	.loc 8 193 0
	lwz 3,24(24)
	cmpwi 7,3,0
	beq- 7,.L2150
	.loc 8 194 0
	bl _ZdaPv
.L2150:
	.loc 8 197 0
	li 0,0
.LBE11313:
.LBE11312:
.LBE11318:
.LBE11322:
.LBB11323:
.LBB11324:
.LBB11325:
	.loc 14 501 0
	addi 3,24,28
.LBE11325:
.LBE11324:
.LBE11323:
.LBB11328:
.LBB11319:
.LBB11315:
.LBB11314:
	.loc 8 197 0
	stw 0,24(24)
	.loc 8 198 0
	stw 0,12(24)
	.loc 8 199 0
	stw 0,16(24)
.LVL3026:
.LEHB162:
.LBE11314:
.LBE11315:
.LBE11319:
.LBE11328:
.LBB11329:
.LBB11327:
.LBB11326:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE162:
.LVL3027:
.LBE11326:
.LBE11327:
.LBE11329:
.LBB11330:
.LBB11331:
.LBB11332:
.LBB11333:
	.loc 8 193 0
	lwz 3,24(24)
	cmpwi 7,3,0
	beq- 7,.L2152
	.loc 8 194 0
	bl _ZdaPv
.L2152:
	.loc 8 197 0
	li 0,0
.LBE11333:
.LBE11332:
.LBE11331:
.LBE11330:
.LBE11243:
.LBE11242:
.LBE11241:
	.loc 4 2411 0
	mr 3,24
.LBB11347:
.LBB11345:
.LBB11343:
.LBB11337:
.LBB11336:
.LBB11335:
.LBB11334:
	.loc 8 197 0
	stw 0,24(24)
	.loc 8 198 0
	stw 0,12(24)
	.loc 8 199 0
	stw 0,16(24)
.LBE11334:
.LBE11335:
.LBE11336:
.LBE11337:
.LBE11343:
.LBE11345:
.LBE11347:
	.loc 4 2411 0
	bl _ZdlPv
.LVL3028:
.L2128:
	.loc 4 2414 0
	li 3,64
.LEHB163:
	bl _Znwj
.LEHE163:
.LBB11348:
.LBB11349:
.LBB11350:
.LBB11351:
.LBB11352:
	.loc 8 197 0
	li 0,0
.LBE11352:
.LBE11351:
.LBE11350:
.LBB11357:
.LBB11358:
.LBB11359:
	.loc 14 358 0
	addi 9,3,40
.LBE11359:
.LBE11358:
.LBE11357:
.LBB11368:
.LBB11355:
.LBB11353:
	.loc 8 197 0
	stw 0,24(3)
.LBE11353:
.LBE11355:
.LBE11368:
.LBB11369:
.LBB11364:
.LBB11360:
	.loc 14 358 0
	stw 9,32(3)
.LBE11360:
.LBE11364:
.LBE11369:
	.loc 29 230 0
	lis 9,.LC221@ha
.LBB11370:
.LBB11356:
.LBB11354:
	.loc 8 198 0
	stw 0,12(3)
.LBE11354:
.LBE11356:
.LBE11370:
.LBB11371:
.LBB11365:
.LBB11361:
	.loc 14 357 0
	li 11,20
	.loc 14 356 0
	stw 0,28(3)
.LBE11361:
.LBE11365:
.LBE11371:
.LBE11349:
.LBE11348:
	.loc 4 2414 0
	mr 31,3
.LVL3029:
.LBB11389:
.LBB11386:
.LBB11372:
.LBB11366:
.LBB11362:
	.loc 14 359 0
	stb 0,40(3)
.LBE11362:
.LBE11366:
.LBE11372:
	.loc 29 231 0
	stw 0,4(3)
	.loc 29 232 0
	stw 0,8(3)
.LVL3030:
.LBB11373:
.LBB11374:
	.loc 8 419 0
	li 0,256
.LBE11374:
.LBE11373:
	.loc 29 230 0
	lwz 9,.LC221@l(9)
.LBB11377:
.LBB11375:
	.loc 8 419 0
	stw 0,20(3)
.LVL3031:
	.loc 8 428 0
	li 0,1024
.LBE11375:
.LBE11377:
.LBB11378:
.LBB11367:
.LBB11363:
	.loc 14 357 0
	stw 11,36(3)
.LBE11363:
.LBE11367:
.LBE11378:
	.loc 29 230 0
	stw 9,0(3)
.LBB11379:
.LBB11376:
	.loc 8 428 0
	stw 0,16(3)
	.loc 8 434 0
	li 3,4096
.LVL3032:
.LEHB164:
	bl _Znaj
.LEHE164:
	.loc 8 435 0
	lwz 0,12(31)
	.loc 8 434 0
	stw 3,24(31)
.LVL3033:
	.loc 8 435 0
	cmpwi 7,0,0
	ble- 7,.L2158
	li 9,0
	li 11,0
	b .L2159
.LVL3034:
.L2213:
	lwz 3,24(31)
.LVL3035:
.L2159:
	.loc 8 436 0
	lwz 0,0(9)
	.loc 8 435 0
	addi 11,11,1
.LVL3036:
	.loc 8 436 0
	stwx 0,3,9
	.loc 8 435 0
	addi 9,9,4
	lwz 0,12(31)
	cmpw 7,11,0
	blt+ 7,.L2213
.LVL3037:
.L2158:
.LBE11376:
.LBE11379:
	.loc 29 234 0
	li 0,0
.LBE11386:
.LBE11389:
	.loc 4 2415 0
	mr 3,31
.LBB11390:
.LBB11387:
	.loc 29 234 0
	stb 0,60(31)
.LBE11387:
.LBE11390:
	.loc 4 2415 0
	li 5,0
	.loc 4 2414 0
	stw 31,2096(23)
	.loc 4 2415 0
	li 6,0
	lwz 4,2068(23)
.LEHB165:
	bl _ZN9idMapFile5ParseEPKcbb
.LEHE165:
	.loc 4 2416 0
	lwz 24,2096(23)
	.loc 4 2415 0
	cmpwi 7,3,0
	bne- 7,.L2127
	.loc 4 2416 0
	cmpwi 7,24,0
	beq- 7,.L2165
.LVL3038:
.LBB11391:
.LBB11392:
.LBB11393:
.LBB11394:
.LBB11395:
	.loc 8 218 0
	lwz 0,12(24)
.LBE11395:
.LBE11394:
	.loc 29 187 0
	addi 25,24,12
.LVL3039:
.LBB11472:
.LBB11468:
	.loc 8 218 0
	cmpwi 7,0,0
	ble- 7,.L2166
	li 27,0
.LBB11396:
.LBB11397:
.LBB11398:
.LBB11399:
.LBB11400:
.LBB11401:
.LBB11402:
	.loc 8 197 0
	li 28,0
.LVL3040:
.L2186:
.LBE11402:
.LBE11401:
.LBE11400:
.LBE11399:
.LBE11398:
.LBE11397:
.LBE11396:
	.loc 8 219 0
	lwz 9,12(25)
	.loc 4 2402 0
	slwi 26,27,2
	.loc 8 219 0
	lwzx 29,9,26
	add 9,9,26
	cmpwi 7,29,0
	beq- 7,.L2167
.LVL3041:
.LBB11460:
.LBB11456:
.LBB11452:
.LBB11409:
.LBB11410:
	.loc 8 218 0
	lwz 0,44(29)
	cmpwi 7,0,0
	ble- 7,.L2168
	li 31,0
.LVL3042:
.L2170:
	.loc 8 219 0
	lwz 9,56(29)
	.loc 4 2402 0
	slwi 30,31,2
	.loc 8 219 0
	lwzx 3,9,30
	add 9,9,30
	cmpwi 7,3,0
	beq- 7,.L2169
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
.LEHB166:
	bctrl
.LEHE166:
	lwz 9,56(29)
	add 9,9,30
.L2169:
	.loc 8 220 0
	stw 28,0(9)
	.loc 8 218 0
	addi 31,31,1
.LVL3043:
	lwz 0,44(29)
	cmpw 7,31,0
	blt+ 7,.L2170
.LVL3044:
.L2168:
.LBB11411:
.LBB11412:
	.loc 8 193 0
	lwz 3,56(29)
	cmpwi 7,3,0
	beq- 7,.L2171
	.loc 8 194 0
	bl _ZdaPv
.L2171:
.LVL3045:
.LBE11412:
.LBE11411:
.LBE11410:
.LBE11409:
.LBB11413:
.LBB11407:
.LBB11405:
.LBB11403:
	.loc 8 197 0
	stw 28,56(29)
.LBE11403:
.LBE11405:
.LBE11407:
.LBE11413:
.LBB11414:
.LBB11415:
.LBB11416:
	.loc 11 174 0
	mr 3,29
.LBE11416:
.LBE11415:
.LBE11414:
.LBB11440:
.LBB11408:
.LBB11406:
.LBB11404:
	.loc 8 198 0
	stw 28,44(29)
	.loc 8 199 0
	stw 28,48(29)
.LVL3046:
.LEHB167:
.LBE11404:
.LBE11406:
.LBE11408:
.LBE11440:
.LBB11441:
.LBB11437:
.LBB11434:
	.loc 11 174 0
	bl _ZN6idDict5ClearEv
.LEHE167:
.LVL3047:
.LBB11417:
.LBB11418:
.LBB11419:
	.loc 15 130 0
	addi 3,29,16
.LEHB168:
	bl _ZN11idHashIndex4FreeEv
.LEHE168:
.LVL3048:
.LBE11419:
.LBE11418:
.LBE11417:
.LBB11420:
.LBB11421:
.LBB11422:
.LBB11423:
	.loc 8 193 0
	lwz 3,12(29)
	cmpwi 7,3,0
	beq- 7,.L2174
	.loc 8 194 0
	bl _ZdaPv
.L2174:
	.loc 8 197 0
	stw 28,12(29)
.LBE11423:
.LBE11422:
.LBE11421:
.LBE11420:
.LBE11434:
.LBE11437:
.LBE11441:
.LBE11452:
.LBE11456:
.LBE11460:
	.loc 8 219 0
	mr 3,29
.LBB11461:
.LBB11457:
.LBB11453:
.LBB11442:
.LBB11438:
.LBB11435:
.LBB11427:
.LBB11426:
.LBB11425:
.LBB11424:
	.loc 8 198 0
	stw 28,0(29)
	.loc 8 199 0
	stw 28,4(29)
.LBE11424:
.LBE11425:
.LBE11426:
.LBE11427:
.LBE11435:
.LBE11438:
.LBE11442:
.LBE11453:
.LBE11457:
.LBE11461:
	.loc 8 219 0
	bl _ZdlPv
	lwz 9,24(24)
	add 9,9,26
.LVL3049:
.L2167:
	.loc 8 220 0
	stw 28,0(9)
	.loc 8 218 0
	addi 27,27,1
.LVL3050:
	lwz 0,0(25)
	cmpw 7,27,0
	blt+ 7,.L2186
.LVL3051:
.L2166:
.LBB11462:
.LBB11463:
	.loc 8 193 0
	lwz 3,24(24)
	cmpwi 7,3,0
	beq- 7,.L2187
	.loc 8 194 0
	bl _ZdaPv
.L2187:
	.loc 8 197 0
	li 0,0
.LBE11463:
.LBE11462:
.LBE11468:
.LBE11472:
.LBB11473:
.LBB11474:
.LBB11475:
	.loc 14 501 0
	addi 3,24,28
.LBE11475:
.LBE11474:
.LBE11473:
.LBB11478:
.LBB11469:
.LBB11465:
.LBB11464:
	.loc 8 197 0
	stw 0,24(24)
	.loc 8 198 0
	stw 0,12(24)
	.loc 8 199 0
	stw 0,16(24)
.LVL3052:
.LEHB169:
.LBE11464:
.LBE11465:
.LBE11469:
.LBE11478:
.LBB11479:
.LBB11477:
.LBB11476:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE169:
.LVL3053:
.LBE11476:
.LBE11477:
.LBE11479:
.LBB11480:
.LBB11481:
.LBB11482:
.LBB11483:
	.loc 8 193 0
	lwz 3,24(24)
	cmpwi 7,3,0
	beq- 7,.L2189
	.loc 8 194 0
	bl _ZdaPv
.L2189:
	.loc 8 197 0
	li 0,0
.LBE11483:
.LBE11482:
.LBE11481:
.LBE11480:
.LBE11393:
.LBE11392:
.LBE11391:
	.loc 4 2416 0
	mr 3,24
.LBB11502:
.LBB11499:
.LBB11496:
.LBB11487:
.LBB11486:
.LBB11485:
.LBB11484:
	.loc 8 197 0
	stw 0,24(24)
	.loc 8 198 0
	stw 0,12(24)
	.loc 8 199 0
	stw 0,16(24)
.LBE11484:
.LBE11485:
.LBE11486:
.LBE11487:
.LBE11496:
.LBE11499:
.LBE11502:
	.loc 4 2416 0
	bl _ZdlPv
.LVL3054:
.L2165:
	.loc 4 2417 0
	li 0,0
	li 24,0
	stw 0,2096(23)
.LVL3055:
.L2127:
	.loc 4 2421 0
	lwz 0,52(1)
	mr 3,24
	lwz 23,12(1)
.LVL3056:
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI366:
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
.LVL3057:
.L2212:
.LCFI367:
	.cfi_restore_state
	.loc 4 2407 0
	li 24,0
	b .L2127
.LVL3058:
.L2203:
.LBB11503:
.LBB11500:
.LBB11497:
.LBB11488:
.LBB11470:
.LBB11466:
.LBB11458:
.LBB11454:
.LBB11443:
.LBB11444:
.LBB11445:
.LBB11446:
	.loc 8 193 0
	lwz 0,56(29)
	mr 31,3
.LVL3059:
	cmpwi 7,0,0
	beq- 7,.L2182
	.loc 8 194 0
	mr 3,0
	bl _ZdaPv
.L2182:
	.loc 8 197 0
	li 0,0
.LBE11446:
.LBE11445:
.LBE11444:
.LBE11443:
	.loc 29 170 0
	mr 3,29
.LBB11450:
.LBB11449:
.LBB11448:
.LBB11447:
	.loc 8 197 0
	stw 0,56(29)
	.loc 8 198 0
	stw 0,44(29)
	.loc 8 199 0
	stw 0,48(29)
.LBE11447:
.LBE11448:
.LBE11449:
.LBE11450:
	.loc 29 170 0
	bl _ZN6idDictD1Ev
.LVL3060:
.L2180:
.LBE11454:
.LBE11458:
.LBE11466:
.LBE11470:
.LBE11488:
.LBB11489:
.LBB11490:
.LBB11491:
	.loc 14 501 0
	addi 3,24,28
	bl _ZN5idStr8FreeDataEv
.LVL3061:
.L2192:
.LBE11491:
.LBE11490:
.LBE11489:
.LBB11492:
.LBB11493:
.LBB11494:
	.loc 8 181 0
	mr 3,25
	bl _ZN6idListIP11idMapEntityE5ClearEv
	mr 3,31
.LEHB170:
	bl _Unwind_Resume
.LEHE170:
.LVL3062:
.L2201:
	mr 30,3
.LVL3063:
.LBE11494:
.LBE11493:
.LBE11492:
.LBE11497:
.LBE11500:
.LBE11503:
.LBB11504:
.LBB11388:
.LBB11380:
.LBB11381:
.LBB11382:
	.loc 14 501 0
	addi 3,31,28
	bl _ZN5idStr8FreeDataEv
.LVL3064:
.LBE11382:
.LBE11381:
.LBE11380:
.LBB11383:
.LBB11384:
.LBB11385:
	.loc 8 181 0
	addi 3,31,12
	bl _ZN6idListIP11idMapEntityE5ClearEv
.LBE11385:
.LBE11384:
.LBE11383:
.LBE11388:
.LBE11504:
	.loc 4 2414 0
	mr 3,31
	bl _ZdlPv
	mr 3,30
.LEHB171:
	bl _Unwind_Resume
.LEHE171:
.LVL3065:
.L2198:
.LBB11505:
.LBB11346:
.LBB11344:
.LBB11338:
.LBB11320:
.LBB11316:
.LBB11308:
.LBB11304:
.LBB11293:
.LBB11294:
.LBB11295:
.LBB11296:
	.loc 8 193 0
	lwz 0,56(29)
	mr 31,3
.LVL3066:
	cmpwi 7,0,0
	beq- 7,.L2145
	.loc 8 194 0
	mr 3,0
	bl _ZdaPv
.L2145:
	.loc 8 197 0
	li 0,0
.LBE11296:
.LBE11295:
.LBE11294:
.LBE11293:
	.loc 29 170 0
	mr 3,29
.LBB11300:
.LBB11299:
.LBB11298:
.LBB11297:
	.loc 8 197 0
	stw 0,56(29)
	.loc 8 198 0
	stw 0,44(29)
	.loc 8 199 0
	stw 0,48(29)
.LBE11297:
.LBE11298:
.LBE11299:
.LBE11300:
	.loc 29 170 0
	bl _ZN6idDictD1Ev
.LVL3067:
.L2143:
.LBE11304:
.LBE11308:
.LBE11316:
.LBE11320:
.LBE11338:
.LBB11339:
.LBB11340:
.LBB11341:
	.loc 14 501 0
	addi 3,24,28
	bl _ZN5idStr8FreeDataEv
	b .L2192
.LVL3068:
.L2200:
	mr 31,3
.LVL3069:
.LBE11341:
.LBE11340:
.LBE11339:
.LBB11342:
.LBB11321:
.LBB11317:
.LBB11309:
.LBB11305:
.LBB11301:
.LBB11289:
.LBB11286:
.LBB11278:
.LBB11279:
.LBB11280:
	.loc 15 130 0
	addi 3,29,16
	bl _ZN11idHashIndex4FreeEv
.LVL3070:
.L2141:
.LBE11280:
.LBE11279:
.LBE11278:
.LBB11281:
.LBB11282:
.LBB11283:
	.loc 8 181 0
	mr 3,29
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L2143
.LVL3071:
.L2199:
	mr 31,3
	b .L2141
.LVL3072:
.L2197:
.L2211:
	mr 31,3
	b .L2192
.LVL3073:
.L2202:
	b .L2211
.LVL3074:
.L2204:
	mr 31,3
.LVL3075:
.L2178:
.LBE11283:
.LBE11282:
.LBE11281:
.LBE11286:
.LBE11289:
.LBE11301:
.LBE11305:
.LBE11309:
.LBE11317:
.LBE11321:
.LBE11342:
.LBE11344:
.LBE11346:
.LBE11505:
.LBB11506:
.LBB11501:
.LBB11498:
.LBB11495:
.LBB11471:
.LBB11467:
.LBB11459:
.LBB11455:
.LBB11451:
.LBB11439:
.LBB11436:
.LBB11428:
.LBB11429:
.LBB11430:
	mr 3,29
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L2180
.LVL3076:
.L2205:
	mr 31,3
.LVL3077:
.LBE11430:
.LBE11429:
.LBE11428:
.LBB11431:
.LBB11432:
.LBB11433:
	.loc 15 130 0
	addi 3,29,16
	bl _ZN11idHashIndex4FreeEv
	b .L2178
.LBE11433:
.LBE11432:
.LBE11431:
.LBE11436:
.LBE11439:
.LBE11451:
.LBE11455:
.LBE11459:
.LBE11467:
.LBE11471:
.LBE11495:
.LBE11498:
.LBE11501:
.LBE11506:
	.cfi_endproc
.LFE2894:
	.section	.gcc_except_table
.LLSDA2894:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2894-.LLSDACSB2894
.LLSDACSB2894:
	.uleb128 .LEHB159-.LFB2894
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L2198-.LFB2894
	.uleb128 0
	.uleb128 .LEHB160-.LFB2894
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L2200-.LFB2894
	.uleb128 0
	.uleb128 .LEHB161-.LFB2894
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L2199-.LFB2894
	.uleb128 0
	.uleb128 .LEHB162-.LFB2894
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L2197-.LFB2894
	.uleb128 0
	.uleb128 .LEHB163-.LFB2894
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB164-.LFB2894
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L2201-.LFB2894
	.uleb128 0
	.uleb128 .LEHB165-.LFB2894
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB2894
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2203-.LFB2894
	.uleb128 0
	.uleb128 .LEHB167-.LFB2894
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L2205-.LFB2894
	.uleb128 0
	.uleb128 .LEHB168-.LFB2894
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L2204-.LFB2894
	.uleb128 0
	.uleb128 .LEHB169-.LFB2894
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L2202-.LFB2894
	.uleb128 0
	.uleb128 .LEHB170-.LFB2894
	.uleb128 .LEHE170-.LEHB170
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB171-.LFB2894
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
.LLSDACSE2894:
	.section	".text"
	.size	_ZN11idGameLocal11GetLevelMapEv, .-_ZN11idGameLocal11GetLevelMapEv
	.align 2
	.globl _ZN11idGameLocal7LoadMapEPKci
	.type	_ZN11idGameLocal7LoadMapEPKci, @function
_ZN11idGameLocal7LoadMapEPKci:
.LFB2855:
	.loc 4 800 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2855
.LVL3078:
	mflr 0
	stwu 1,-192(1)
.LCFI368:
	.cfi_def_cfa_offset 192
	.cfi_register 65, 0
	mfcr 12
	stw 20,144(1)
	mr 20,3
	.cfi_offset 20, -48
	.cfi_register 70, 12
	stw 21,148(1)
	mr 21,5
	.cfi_offset 21, -44
	stw 22,152(1)
	mr 22,4
	.cfi_offset 22, -40
	stw 31,188(1)
.LBB11718:
	.loc 4 802 0
	addis 31,3,0x25
	.cfi_offset 31, -4
.LBE11718:
	.loc 4 800 0
	stw 0,196(1)
	stw 19,140(1)
	stw 23,156(1)
	stw 24,160(1)
	stw 25,164(1)
	stw 26,168(1)
	stw 27,172(1)
	stw 28,176(1)
	stw 29,180(1)
	stw 30,184(1)
	stw 12,136(1)
.LBB12219:
	.loc 4 802 0
	lwz 0,2096(31)
	.cfi_offset 70, -56
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 19, -52
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L2215
.LVL3079:
	.loc 4 802 0 is_stmt 0 discriminator 1
	lwz 3,2068(31)
.LVL3080:
.LEHB172:
	bl _ZN5idStr4IcmpEPKcS1_
.LVL3081:
	cmpwi 7,3,0
	bne- 7,.L2215
.LVL3082:
	.loc 4 803 0 is_stmt 1 discriminator 4
	lis 3,.LC222@ha
	mr 4,22
	la 3,.LC222@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 806 0 discriminator 4
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 808 0 discriminator 4
	mr 3,20
	bl _ZN11idGameLocal16InitAsyncNetworkEv
	.loc 4 810 0 discriminator 4
	lis 3,.LC223@ha
	la 3,.LC223@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 811 0 discriminator 4
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 812 0 discriminator 4
	lwz 3,2096(31)
	cmpwi 7,3,0
	beq- 7,.L2317
	.loc 4 812 0 is_stmt 0 discriminator 3
	bl _ZN9idMapFile11NeedsReloadEv
	.loc 4 802 0 is_stmt 1 discriminator 3
	li 19,1
	.loc 4 812 0 discriminator 3
	cmpwi 7,3,0
	bne- 7,.L2217
	.loc 4 812 0 is_stmt 0
	lwz 9,2096(31)
.LBB11719:
.LBB11720:
.LBB11721:
.LBB11722:
.LBB11723:
.LBB11724:
.LBB11725:
.LBB11726:
.LBB11727:
.LBB11728:
.LBB11729:
	.loc 4 802 0 is_stmt 1
	li 19,1
	b .L2268
.LVL3083:
.L2215:
.LBE11729:
.LBE11728:
.LBE11727:
.LBE11726:
.LBE11725:
.LBE11724:
.LBE11723:
.LBE11722:
.LBE11721:
.LBE11720:
.LBE11719:
	.loc 4 803 0
	lis 3,.LC222@ha
	mr 4,22
	la 3,.LC222@l(3)
	.loc 4 811 0
	li 19,0
	.loc 4 803 0
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 806 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 808 0
	mr 3,20
	bl _ZN11idGameLocal16InitAsyncNetworkEv
	.loc 4 810 0
	lis 3,.LC223@ha
	la 3,.LC223@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 811 0
	bl _Z21Sys_PrintMainHeapInfov
.LEHE172:
.LVL3084:
.L2217:
	.loc 4 814 0 discriminator 5
	lwz 23,2096(31)
	cmpwi 7,23,0
	beq- 7,.L2218
.LVL3085:
.LBB11850:
.LBB11851:
.LBB11852:
.LBB11853:
.LBB11854:
	.loc 8 218 0
	lwz 0,12(23)
.LBE11854:
.LBE11853:
	.loc 29 187 0
	addi 25,23,12
.LVL3086:
.LBB11931:
.LBB11927:
	.loc 8 218 0
	cmpwi 7,0,0
	ble- 7,.L2219
	li 26,0
.LBB11855:
.LBB11856:
.LBB11857:
.LBB11858:
.LBB11859:
.LBB11860:
.LBB11861:
	.loc 8 197 0
	li 27,0
.LVL3087:
.L2239:
.LBE11861:
.LBE11860:
.LBE11859:
.LBE11858:
.LBE11857:
.LBE11856:
.LBE11855:
	.loc 8 219 0
	lwz 9,12(25)
	.loc 4 800 0
	slwi 24,26,2
	.loc 8 219 0
	lwzx 28,9,24
	add 9,9,24
	cmpwi 7,28,0
	beq- 7,.L2220
.LVL3088:
.LBB11919:
.LBB11915:
.LBB11911:
.LBB11868:
.LBB11869:
	.loc 8 218 0
	lwz 0,44(28)
	cmpwi 7,0,0
	ble- 7,.L2221
	li 30,0
.LVL3089:
.L2223:
	.loc 8 219 0
	lwz 9,56(28)
	.loc 4 800 0
	slwi 29,30,2
	.loc 8 219 0
	lwzx 3,9,29
	add 9,9,29
	cmpwi 7,3,0
	beq- 7,.L2222
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
.LEHB173:
	bctrl
.LEHE173:
	lwz 9,56(28)
	add 9,9,29
.L2222:
	.loc 8 220 0
	stw 27,0(9)
	.loc 8 218 0
	addi 30,30,1
.LVL3090:
	lwz 0,44(28)
	cmpw 7,30,0
	blt+ 7,.L2223
.LVL3091:
.L2221:
.LBB11870:
.LBB11871:
	.loc 8 193 0
	lwz 3,56(28)
	cmpwi 7,3,0
	beq- 7,.L2224
	.loc 8 194 0
	bl _ZdaPv
.L2224:
.LVL3092:
.LBE11871:
.LBE11870:
.LBE11869:
.LBE11868:
.LBB11872:
.LBB11866:
.LBB11864:
.LBB11862:
	.loc 8 197 0
	stw 27,56(28)
.LBE11862:
.LBE11864:
.LBE11866:
.LBE11872:
.LBB11873:
.LBB11874:
.LBB11875:
	.loc 11 174 0
	mr 3,28
.LBE11875:
.LBE11874:
.LBE11873:
.LBB11899:
.LBB11867:
.LBB11865:
.LBB11863:
	.loc 8 198 0
	stw 27,44(28)
	.loc 8 199 0
	stw 27,48(28)
.LVL3093:
.LEHB174:
.LBE11863:
.LBE11865:
.LBE11867:
.LBE11899:
.LBB11900:
.LBB11896:
.LBB11893:
	.loc 11 174 0
	bl _ZN6idDict5ClearEv
.LEHE174:
.LVL3094:
.LBB11876:
.LBB11877:
.LBB11878:
	.loc 15 130 0
	addi 3,28,16
.LEHB175:
	bl _ZN11idHashIndex4FreeEv
.LEHE175:
.LVL3095:
.LBE11878:
.LBE11877:
.LBE11876:
.LBB11879:
.LBB11880:
.LBB11881:
.LBB11882:
	.loc 8 193 0
	lwz 3,12(28)
	cmpwi 7,3,0
	beq- 7,.L2227
	.loc 8 194 0
	bl _ZdaPv
.L2227:
	.loc 8 197 0
	stw 27,12(28)
.LBE11882:
.LBE11881:
.LBE11880:
.LBE11879:
.LBE11893:
.LBE11896:
.LBE11900:
.LBE11911:
.LBE11915:
.LBE11919:
	.loc 8 219 0
	mr 3,28
.LBB11920:
.LBB11916:
.LBB11912:
.LBB11901:
.LBB11897:
.LBB11894:
.LBB11886:
.LBB11885:
.LBB11884:
.LBB11883:
	.loc 8 198 0
	stw 27,0(28)
	.loc 8 199 0
	stw 27,4(28)
.LBE11883:
.LBE11884:
.LBE11885:
.LBE11886:
.LBE11894:
.LBE11897:
.LBE11901:
.LBE11912:
.LBE11916:
.LBE11920:
	.loc 8 219 0
	bl _ZdlPv
	lwz 9,24(23)
	add 9,9,24
.LVL3096:
.L2220:
	.loc 8 220 0
	stw 27,0(9)
	.loc 8 218 0
	addi 26,26,1
.LVL3097:
	lwz 0,0(25)
	cmpw 7,26,0
	blt+ 7,.L2239
.LVL3098:
.L2219:
.LBB11921:
.LBB11922:
	.loc 8 193 0
	lwz 3,24(23)
	cmpwi 7,3,0
	beq- 7,.L2240
	.loc 8 194 0
	bl _ZdaPv
.L2240:
	.loc 8 197 0
	li 0,0
.LBE11922:
.LBE11921:
.LBE11927:
.LBE11931:
.LBB11932:
.LBB11933:
.LBB11934:
	.loc 14 501 0
	addi 3,23,28
.LBE11934:
.LBE11933:
.LBE11932:
.LBB11937:
.LBB11928:
.LBB11924:
.LBB11923:
	.loc 8 197 0
	stw 0,24(23)
	.loc 8 198 0
	stw 0,12(23)
	.loc 8 199 0
	stw 0,16(23)
.LVL3099:
.LEHB176:
.LBE11923:
.LBE11924:
.LBE11928:
.LBE11937:
.LBB11938:
.LBB11936:
.LBB11935:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE176:
.LVL3100:
.LBE11935:
.LBE11936:
.LBE11938:
.LBB11939:
.LBB11940:
.LBB11941:
.LBB11942:
	.loc 8 193 0
	lwz 3,24(23)
	cmpwi 7,3,0
	beq- 7,.L2242
	.loc 8 194 0
	bl _ZdaPv
.L2242:
	.loc 8 197 0
	li 0,0
.LBE11942:
.LBE11941:
.LBE11940:
.LBE11939:
.LBE11852:
.LBE11851:
.LBE11850:
	.loc 4 815 0
	mr 3,23
.LBB11958:
.LBB11955:
.LBB11952:
.LBB11946:
.LBB11945:
.LBB11944:
.LBB11943:
	.loc 8 197 0
	stw 0,24(23)
	.loc 8 198 0
	stw 0,12(23)
	.loc 8 199 0
	stw 0,16(23)
.LBE11943:
.LBE11944:
.LBE11945:
.LBE11946:
.LBE11952:
.LBE11955:
.LBE11958:
	.loc 4 815 0
	bl _ZdlPv
.LVL3101:
.L2218:
	.loc 4 817 0
	li 3,64
.LEHB177:
	bl _Znwj
.LEHE177:
.LBB11959:
.LBB11960:
.LBB11961:
.LBB11962:
.LBB11963:
	.loc 8 197 0
	li 0,0
.LBE11963:
.LBE11962:
.LBE11961:
.LBB11968:
.LBB11969:
.LBB11970:
	.loc 14 358 0
	addi 9,3,40
.LBE11970:
.LBE11969:
.LBE11968:
.LBB11979:
.LBB11966:
.LBB11964:
	.loc 8 197 0
	stw 0,24(3)
.LBE11964:
.LBE11966:
.LBE11979:
.LBB11980:
.LBB11975:
.LBB11971:
	.loc 14 358 0
	stw 9,32(3)
.LBE11971:
.LBE11975:
.LBE11980:
	.loc 29 230 0
	lis 9,.LC221@ha
.LBB11981:
.LBB11967:
.LBB11965:
	.loc 8 198 0
	stw 0,12(3)
.LBE11965:
.LBE11967:
.LBE11981:
.LBB11982:
.LBB11976:
.LBB11972:
	.loc 14 357 0
	li 11,20
	.loc 14 356 0
	stw 0,28(3)
.LBE11972:
.LBE11976:
.LBE11982:
.LBE11960:
.LBE11959:
	.loc 4 817 0
	mr 30,3
.LVL3102:
.LBB12001:
.LBB11997:
.LBB11983:
.LBB11977:
.LBB11973:
	.loc 14 359 0
	stb 0,40(3)
.LBE11973:
.LBE11977:
.LBE11983:
	.loc 29 231 0
	stw 0,4(3)
	.loc 29 232 0
	stw 0,8(3)
.LVL3103:
.LBB11984:
.LBB11985:
	.loc 8 419 0
	li 0,256
.LBE11985:
.LBE11984:
	.loc 29 230 0
	lwz 9,.LC221@l(9)
.LBB11988:
.LBB11986:
	.loc 8 419 0
	stw 0,20(3)
.LVL3104:
	.loc 8 428 0
	li 0,1024
.LBE11986:
.LBE11988:
.LBB11989:
.LBB11978:
.LBB11974:
	.loc 14 357 0
	stw 11,36(3)
.LBE11974:
.LBE11978:
.LBE11989:
	.loc 29 230 0
	stw 9,0(3)
.LBB11990:
.LBB11987:
	.loc 8 428 0
	stw 0,16(3)
	.loc 8 434 0
	li 3,4096
.LVL3105:
.LEHB178:
	bl _Znaj
.LEHE178:
	.loc 8 435 0
	lwz 0,12(30)
	.loc 8 434 0
	stw 3,24(30)
.LVL3106:
	.loc 8 435 0
	cmpwi 7,0,0
	ble- 7,.L2248
	li 9,0
	li 11,0
	b .L2249
.LVL3107:
.L2349:
	lwz 3,24(30)
.LVL3108:
.L2249:
	.loc 8 436 0
	lwz 0,0(9)
	.loc 8 435 0
	addi 11,11,1
.LVL3109:
	.loc 8 436 0
	stwx 0,3,9
	.loc 8 435 0
	addi 9,9,4
	lwz 0,12(30)
	cmpw 7,11,0
	blt+ 7,.L2349
.LVL3110:
.L2248:
.LBE11987:
.LBE11990:
.LBE11997:
.LBE12001:
.LBB12002:
.LBB12003:
	.loc 14 412 0
	cmpwi 7,22,0
.LBB12004:
.LBB12005:
	.loc 14 356 0
	li 0,0
	.loc 14 357 0
	li 9,20
	.loc 14 358 0
	addi 26,1,116
.LBE12005:
.LBE12004:
.LBE12003:
.LBE12002:
.LBB12024:
.LBB11998:
	.loc 29 234 0
	li 11,0
.LBE11998:
.LBE12024:
.LBB12025:
.LBB12018:
.LBB12009:
.LBB12006:
	.loc 14 356 0
	stw 0,104(1)
.LBE12006:
.LBE12009:
.LBE12018:
.LBE12025:
.LBB12026:
.LBB11999:
	.loc 29 234 0
	stb 11,60(30)
.LBE11999:
.LBE12026:
.LBB12027:
.LBB12019:
.LBB12010:
.LBB12007:
	.loc 14 357 0
	stw 9,112(1)
.LBE12007:
.LBE12010:
.LBE12019:
.LBE12027:
	.loc 4 817 0
	stw 30,2096(31)
.LVL3111:
.LBB12028:
.LBB12020:
.LBB12011:
.LBB12008:
	.loc 14 358 0
	stw 26,108(1)
	.loc 14 359 0
	stb 0,116(1)
.LBE12008:
.LBE12011:
	.loc 14 412 0
	beq- 7,.L2350
	.loc 14 413 0
	mr 3,22
	bl strlen
	.loc 14 414 0
	addi 27,3,1
	.loc 14 413 0
	mr 28,3
.LBB12012:
.LBB12013:
	.loc 14 350 0
	cmpwi 4,27,20
.LBE12013:
.LBE12012:
	.loc 14 413 0
	mr 29,3
.LVL3112:
.LBB12016:
.LBB12014:
	.loc 14 358 0
	mr 3,26
.LVL3113:
	.loc 14 350 0
	bgt- 4,.L2351
.LBE12014:
.LBE12016:
	.loc 14 415 0
	mr 4,22
	bl strcpy
.LBE12020:
.LBE12028:
.LBB12029:
.LBB12030:
.LBB12031:
.LBB12032:
.LBB12033:
.LBB12034:
	.loc 14 356 0
	li 0,0
	.loc 14 358 0
	addi 3,1,84
	.loc 14 357 0
	li 9,20
.LBE12034:
.LBE12033:
.LBE12032:
.LBE12031:
.LBE12030:
.LBE12029:
.LBB12118:
.LBB12021:
	.loc 14 416 0
	stw 28,104(1)
.LVL3114:
.LBE12021:
.LBE12118:
.LBB12119:
.LBB12110:
.LBB12066:
.LBB12055:
.LBB12041:
.LBB12035:
	.loc 14 358 0
	addi 28,1,72
.LVL3115:
	.loc 14 356 0
	stw 0,72(1)
	.loc 14 357 0
	stw 9,80(1)
	.loc 14 358 0
	stw 3,76(1)
	.loc 14 359 0
	stb 0,84(1)
.LVL3116:
.LBE12035:
.LBE12041:
.LBB12042:
.LBB12043:
	.loc 14 350 0
	bgt- 4,.L2352
.LVL3117:
.L2256:
.LBE12043:
.LBE12042:
	.loc 14 375 0
	lwz 4,108(1)
.LBE12055:
.LBE12066:
.LBB12067:
.LBB12068:
	.loc 14 775 0
	addi 27,29,4
.LBE12068:
.LBE12067:
.LBB12088:
.LBB12056:
	.loc 14 375 0
	bl strcpy
.LBE12056:
.LBE12088:
.LBB12089:
.LBB12079:
.LBB12069:
.LBB12070:
	.loc 14 350 0
	lwz 0,80(1)
.LBE12070:
.LBE12069:
	.loc 14 776 0
	addi 4,29,5
.LBE12079:
.LBE12089:
.LBB12090:
.LBB12057:
	.loc 14 376 0
	stw 29,72(1)
.LVL3118:
.LBE12057:
.LBE12090:
.LBB12091:
.LBB12080:
.LBB12075:
.LBB12071:
	.loc 14 350 0
	cmpw 7,4,0
	bgt- 7,.L2257
.LVL3119:
.L2259:
	lis 11,.LC224@ha
.LBE12071:
.LBE12075:
.LBE12080:
.LBE12091:
.LBB12092:
.LBB12058:
.LBB12047:
.LBB12036:
	.loc 14 359 0
	li 0,46
.LBE12036:
.LBE12047:
.LBE12058:
.LBE12092:
.LBB12093:
.LBB12081:
.LBB12076:
.LBB12072:
	.loc 14 350 0
	la 11,.LC224@l(11)
.LBE12072:
.LBE12076:
.LBE12081:
.LBE12093:
.LBB12094:
.LBB12059:
.LBB12048:
.LBB12037:
	.loc 14 359 0
	li 9,0
	b .L2258
.LVL3120:
.L2353:
.LBE12037:
.LBE12048:
.LBE12059:
.LBE12094:
.LBB12095:
.LBB12082:
	.loc 14 777 0
	lwz 29,72(1)
.LVL3121:
.L2258:
	.loc 14 778 0
	lwz 10,76(1)
	add 10,10,9
	.loc 14 777 0
	addi 9,9,1
.LVL3122:
	.loc 14 778 0
	stbx 0,10,29
	.loc 14 777 0
	lbzu 0,1(11)
	cmpwi 7,0,0
	bne+ 7,.L2353
	.loc 14 781 0
	lwz 9,76(1)
.LVL3123:
.LBE12082:
.LBE12095:
.LBE12110:
.LBE12119:
	.loc 4 818 0
	mr 3,30
.LBB12120:
.LBB12111:
.LBB12096:
.LBB12083:
	.loc 14 780 0
	stw 27,72(1)
.LBE12083:
.LBE12096:
.LBE12111:
.LBE12120:
	.loc 4 818 0
	li 5,0
.LBB12121:
.LBB12112:
.LBB12097:
.LBB12084:
	.loc 14 781 0
	stbx 0,9,27
.LVL3124:
.LBE12084:
.LBE12097:
.LBE12112:
.LBE12121:
	.loc 4 818 0
	li 6,0
	lwz 4,4(28)
.LEHB179:
	bl _ZN9idMapFile5ParseEPKcbb
.LEHE179:
	mr 30,3
.LVL3125:
.LBB12122:
.LBB12123:
.LBB12124:
	.loc 14 501 0
	mr 3,28
.LEHB180:
	bl _ZN5idStr8FreeDataEv
.LEHE180:
.LVL3126:
.LBE12124:
.LBE12123:
.LBE12122:
.LBB12125:
.LBB12126:
.LBB12127:
	addi 3,1,104
.LEHB181:
	bl _ZN5idStr8FreeDataEv
.LBE12127:
.LBE12126:
.LBE12125:
	.loc 4 818 0
	cmpwi 7,30,0
	beq- 7,.L2267
.LVL3127:
.L2347:
	.loc 4 821 0
	lwz 9,2096(31)
.LVL3128:
.L2268:
	.loc 4 824 0
	lwz 4,32(9)
	addi 3,31,2064
	.loc 4 829 0
	li 29,0
	.loc 4 839 0
	addis 30,20,0x1
	.loc 4 824 0
	bl _ZN5idStraSEPKc
.LVL3129:
	.loc 4 827 0
	lis 9,collisionModelManager@ha
	lwz 3,collisionModelManager@l(9)
	lwz 4,2096(31)
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
	.loc 4 829 0
	stw 29,48(20)
	.loc 4 832 0
	li 4,0
	li 5,16384
	addi 3,20,532
	bl memset
	.loc 4 833 0
	li 4,0
	li 5,128
	addi 3,20,228
	bl memset
	.loc 4 834 0
	li 4,-1
	li 5,16384
	addi 3,20,16916
	bl memset
	.loc 4 835 0
	li 0,1
	stw 0,2104(31)
	.loc 4 837 0
	lis 3,.LC226@ha
	la 3,.LC226@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 838 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 839 0
	addi 3,30,-32196
	bl _ZN10idLinkListI8idEntityE5ClearEv
	.loc 4 840 0
	addi 3,30,-32180
	bl _ZN10idLinkListI8idEntityE5ClearEv
	.loc 4 841 0
	stw 29,-32164(30)
	.loc 4 842 0
	stb 29,-32159(30)
	.loc 4 849 0
	addi 3,30,-32112
	.loc 4 843 0
	stb 29,-32160(30)
.LVL3130:
	.loc 4 849 0
	li 4,0
.LBB12128:
.LBB12129:
	.loc 10 606 0
	stw 29,2056(31)
.LBE12129:
.LBE12128:
	.loc 4 849 0
	li 5,48
	.loc 4 845 0
	stw 29,2060(31)
	.loc 4 847 0
	stw 29,2120(31)
	.loc 4 849 0
	bl memset
	.loc 4 854 0
	li 0,4
	stw 0,-32232(30)
	.loc 4 855 0
	stw 0,-32236(30)
	.loc 4 858 0
	lbz 0,2016(31)
	cmpwi 7,0,0
	bne- 7,.L2299
	li 21,0
.LVL3131:
.L2299:
	.loc 4 860 0 discriminator 3
	li 29,0
.LBB12130:
.LBB12131:
	.loc 21 63 0 discriminator 3
	stw 21,-32064(30)
.LBE12131:
.LBE12130:
	.loc 4 871 0 discriminator 3
	lis 4,.LC3@ha
	.loc 4 860 0 discriminator 3
	stw 29,2116(31)
	.loc 4 861 0 discriminator 3
	stw 29,-32200(30)
	.loc 4 871 0 discriminator 3
	addi 3,31,1384
	.loc 4 862 0 discriminator 3
	stw 29,1376(31)
	.loc 4 871 0 discriminator 3
	la 4,.LC3@l(4)
	.loc 4 863 0 discriminator 3
	stw 29,1380(31)
.LVL3132:
.LBB12132:
.LBB12133:
	.loc 10 606 0 discriminator 3
	stw 29,2156(31)
.LBE12133:
.LBE12132:
	.loc 4 866 0 discriminator 3
	stw 29,2160(31)
	.loc 4 868 0 discriminator 3
	stw 29,2000(31)
	.loc 4 869 0 discriminator 3
	stw 29,2004(31)
	.loc 4 870 0 discriminator 3
	stw 29,1996(31)
	.loc 4 871 0 discriminator 3
	bl _ZN5idStraSEPKc
	.loc 4 876 0 discriminator 3
	lwz 0,1976(31)
	.loc 4 872 0 discriminator 3
	stw 29,2244(31)
	.loc 4 876 0 discriminator 3
	cmpwi 7,0,0
	.loc 4 874 0 discriminator 3
	li 0,-1
	stw 0,2008(31)
	.loc 4 876 0 discriminator 3
	beq- 7,.L2354
.L2300:
.LBB12134:
.LBB12135:
	.loc 4 880 0
	lis 9,g_gravity+44@ha
.LBE12135:
.LBE12134:
.LBB12137:
.LBB12138:
	.loc 17 410 0
	li 0,0
.LBE12138:
.LBE12137:
.LBB12141:
.LBB12136:
	.loc 7 144 0
	lwz 9,g_gravity+44@l(9)
.LBE12136:
.LBE12141:
	.loc 4 882 0
	addi 3,31,2164
	.loc 4 880 0
	lfs 0,40(9)
.LBB12142:
.LBB12139:
	.loc 17 410 0
	stw 0,2224(31)
.LBE12139:
.LBE12142:
	.loc 4 880 0
	fneg 0,0
.LVL3133:
.LBB12143:
.LBB12140:
	.loc 17 411 0
	stw 0,2228(31)
	.loc 17 412 0
	stfs 0,2232(31)
.LBE12140:
.LBE12143:
	.loc 4 882 0
	bl _ZN6idDict5ClearEv
.LVL3134:
	.loc 4 886 0
	li 0,0
	.loc 4 884 0
	li 9,0
	.loc 4 886 0
	stw 0,1980(31)
	.loc 4 884 0
	stb 9,1993(31)
	.loc 4 890 0
	addis 3,20,0x23
	.loc 4 885 0
	stb 9,1992(31)
	.loc 4 890 0
	addi 3,3,17272
	.loc 4 887 0
	stw 0,1984(31)
	.loc 4 888 0
	stw 0,1988(31)
	.loc 4 890 0
	bl _ZN6idClip4InitEv
	.loc 4 891 0
	addi 3,31,1236
	bl _ZN5idPVS4InitEv
	.loc 4 892 0
	li 0,-1
	stw 0,2208(31)
	.loc 4 895 0
	lis 3,.LC227@ha
	.loc 4 893 0
	stw 0,2216(31)
	.loc 4 895 0
	la 3,.LC227@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 896 0
	bl _Z21Sys_PrintMainHeapInfov
.LEHE181:
.LVL3135:
	.loc 4 899 0
	lwz 0,2140(31)
	cmpwi 7,0,0
	ble- 7,.L2301
	li 30,0
	addi 23,1,52
.LBB12144:
.LBB12145:
.LBB12146:
.LBB12147:
	.loc 14 356 0
	li 29,0
	.loc 14 357 0
	li 24,20
.LBE12147:
.LBE12146:
.LBE12145:
.LBE12144:
.LBB12163:
.LBB12164:
.LBB12165:
.LBB12166:
	.loc 14 358 0
	addi 21,1,20
.LVL3136:
	b .L2307
.LVL3137:
.L2304:
.LBE12166:
.LBE12165:
	.loc 14 415 0
	mr 4,28
	bl strcpy
	.loc 14 416 0
	stw 25,8(1)
.LVL3138:
.L2303:
.LBE12164:
.LBE12163:
	.loc 4 4268 0 discriminator 1
	lwz 9,2096(31)
	.loc 4 900 0 discriminator 1
	mr 3,26
	mr 4,27
	mtctr 22
	lwz 5,8(9)
.LEHB182:
	bctrl
.LEHE182:
.LVL3139:
.LBB12174:
.LBB12175:
.LBB12176:
	.loc 14 501 0
	mr 3,27
.LEHB183:
	bl _ZN5idStr8FreeDataEv
.LEHE183:
.LVL3140:
.LBE12176:
.LBE12175:
.LBE12174:
.LBB12177:
.LBB12178:
.LBB12179:
	addi 3,1,40
.LBE12179:
.LBE12178:
.LBE12177:
	.loc 4 899 0
	addi 30,30,1
.LVL3141:
.LEHB184:
.LBB12182:
.LBB12181:
.LBB12180:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LVL3142:
.LBE12180:
.LBE12181:
.LBE12182:
	.loc 4 899 0
	lwz 0,2140(31)
	cmpw 7,0,30
	ble- 7,.L2301
.LVL3143:
.L2307:
.LBB12183:
	.loc 4 4268 0
	lwz 28,2064(31)
.LBE12183:
	.loc 4 900 0
	slwi 0,30,2
	lwz 9,2136(31)
.LBB12184:
.LBB12158:
.LBB12150:
.LBB12151:
	.loc 14 358 0
	mr 3,23
.LBE12151:
.LBE12150:
	.loc 14 374 0
	addi 4,28,1
.LBE12158:
.LBE12184:
	.loc 4 900 0
	lwzx 26,9,0
.LBB12185:
.LBB12159:
.LBB12154:
.LBB12152:
	.loc 14 350 0
	cmpwi 7,4,20
.LBE12152:
.LBE12154:
.LBE12159:
.LBE12185:
	.loc 4 900 0
	lwz 9,0(26)
.LBB12186:
.LBB12160:
.LBB12155:
.LBB12148:
	.loc 14 356 0
	stw 29,40(1)
.LBE12148:
.LBE12155:
.LBE12160:
.LBE12186:
	.loc 4 900 0
	lwz 22,8(9)
.LVL3144:
.LBB12187:
.LBB12161:
.LBB12156:
.LBB12149:
	.loc 14 358 0
	stw 23,44(1)
	.loc 14 357 0
	stw 24,48(1)
	.loc 14 359 0
	stb 29,52(1)
.LBE12149:
.LBE12156:
.LBB12157:
.LBB12153:
	.loc 14 350 0
	ble+ 7,.L2302
	.loc 14 351 0
	addi 3,1,40
.LVL3145:
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE184:
.LVL3146:
	lwz 3,44(1)
.L2302:
.LBE12153:
.LBE12157:
	.loc 14 375 0
	lwz 4,2068(31)
	bl strcpy
.LBE12161:
.LBE12187:
.LBB12188:
	.loc 4 4268 0
	lwz 9,2152(31)
	slwi 0,30,5
.LBE12188:
	.loc 4 900 0
	addi 3,1,40
.LVL3147:
.LBB12189:
	.loc 4 4268 0
	add 9,9,0
.LBE12189:
.LBB12190:
.LBB12162:
	.loc 14 376 0
	stw 28,40(1)
.LVL3148:
.LBE12162:
.LBE12190:
	.loc 4 900 0
	lwz 4,4(9)
.LEHB185:
	bl _ZN5idStr16SetFileExtensionEPKc
.LVL3149:
	.loc 4 4268 0
	lwz 28,4(3)
.LVL3150:
	addi 27,1,8
.LVL3151:
.LBB12191:
.LBB12173:
.LBB12169:
.LBB12167:
	.loc 14 356 0
	stw 29,8(1)
.LBE12167:
.LBE12169:
	.loc 14 412 0
	cmpwi 7,28,0
.LBB12170:
.LBB12168:
	.loc 14 357 0
	stw 24,16(1)
	.loc 14 358 0
	stw 21,12(1)
	.loc 14 359 0
	stb 29,20(1)
.LBE12168:
.LBE12170:
	.loc 14 412 0
	beq- 7,.L2303
	.loc 14 413 0
	mr 3,28
.LVL3152:
	addi 27,1,8
	bl strlen
.LVL3153:
	.loc 14 414 0
	addi 4,3,1
	.loc 14 413 0
	mr 25,3
.LVL3154:
.LBB12171:
.LBB12172:
	.loc 14 350 0
	cmpwi 7,4,20
	.loc 14 358 0
	mr 3,21
.LVL3155:
	.loc 14 350 0
	ble+ 7,.L2304
	.loc 14 351 0
	mr 3,27
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE185:
.LVL3156:
	lwz 3,12(1)
	b .L2304
.LVL3157:
.L2301:
.LBE12172:
.LBE12171:
.LBE12173:
.LBE12191:
	.loc 4 904 0
	lis 3,.LC228@ha
	la 3,.LC228@l(3)
.LEHB186:
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 905 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 906 0
	lwz 3,1972(31)
	bl _ZN16idSmokeParticles4InitEv
	.loc 4 908 0
	lis 3,.LC229@ha
	la 3,.LC229@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 909 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 911 0
	lis 4,.LC230@ha
	mr 3,20
	la 4,.LC230@l(4)
	li 5,0
	li 6,1
	bl _ZNK11idGameLocal13FindEntityDefEPKcbb
	.loc 4 913 0
	cmpwi 7,19,0
	bne+ 7,.L2308
	.loc 4 914 0
	lwz 3,2096(31)
	bl _ZN9idMapFile19RemovePrimitiveDataEv
.L2308:
	.loc 4 916 0
	lis 3,.LC231@ha
	la 3,.LC231@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 917 0
	bl _Z21Sys_PrintMainHeapInfov
.LEHE186:
.LBE12219:
	.loc 4 918 0
	lwz 0,196(1)
	lwz 12,136(1)
	mtlr 0
	lwz 19,140(1)
	lwz 20,144(1)
.LVL3158:
	mtcrf 8,12
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
.LVL3159:
	addi 1,1,192
	.cfi_remember_state
.LCFI369:
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
	blr
.LVL3160:
.L2267:
.LCFI370:
	.cfi_restore_state
.LBB12220:
	.loc 4 819 0
	lwz 23,2096(31)
	cmpwi 7,23,0
	beq- 7,.L2269
.LVL3161:
.LBB12192:
.LBB11845:
.LBB11840:
.LBB11814:
.LBB11808:
	.loc 8 218 0
	lwz 0,12(23)
.LBE11808:
.LBE11814:
	.loc 29 187 0
	addi 25,23,12
.LVL3162:
.LBB11815:
.LBB11809:
	.loc 8 218 0
	cmpwi 7,0,0
	ble- 7,.L2270
	li 26,0
.LBB11798:
.LBB11792:
.LBB11786:
.LBB11757:
.LBB11758:
.LBB11759:
.LBB11760:
	.loc 8 197 0
	li 27,0
.LVL3163:
.L2290:
.LBE11760:
.LBE11759:
.LBE11758:
.LBE11757:
.LBE11786:
.LBE11792:
.LBE11798:
	.loc 8 219 0
	lwz 9,12(25)
	.loc 4 800 0
	slwi 24,26,2
	.loc 8 219 0
	lwzx 28,9,24
	add 9,9,24
	cmpwi 7,28,0
	beq- 7,.L2271
.LVL3164:
.LBB11799:
.LBB11793:
.LBB11787:
.LBB11767:
.LBB11768:
	.loc 8 218 0
	lwz 0,44(28)
	cmpwi 7,0,0
	ble- 7,.L2272
	li 30,0
.LVL3165:
.L2274:
	.loc 8 219 0
	lwz 9,56(28)
	.loc 4 800 0
	slwi 29,30,2
	.loc 8 219 0
	lwzx 3,9,29
	add 9,9,29
	cmpwi 7,3,0
	beq- 7,.L2273
	lwz 9,0(3)
	lwz 0,4(9)
	mtctr 0
.LEHB187:
	bctrl
.LEHE187:
	lwz 9,56(28)
	add 9,9,29
.L2273:
	.loc 8 220 0
	stw 27,0(9)
	.loc 8 218 0
	addi 30,30,1
.LVL3166:
	lwz 0,44(28)
	cmpw 7,30,0
	blt+ 7,.L2274
.LVL3167:
.L2272:
.LBB11769:
.LBB11770:
	.loc 8 193 0
	lwz 3,56(28)
	cmpwi 7,3,0
	beq- 7,.L2275
	.loc 8 194 0
	bl _ZdaPv
.L2275:
.LVL3168:
.LBE11770:
.LBE11769:
.LBE11768:
.LBE11767:
.LBB11771:
.LBB11765:
.LBB11763:
.LBB11761:
	.loc 8 197 0
	stw 27,56(28)
.LBE11761:
.LBE11763:
.LBE11765:
.LBE11771:
.LBB11772:
.LBB11752:
.LBB11747:
	.loc 11 174 0
	mr 3,28
.LBE11747:
.LBE11752:
.LBE11772:
.LBB11773:
.LBB11766:
.LBB11764:
.LBB11762:
	.loc 8 198 0
	stw 27,44(28)
	.loc 8 199 0
	stw 27,48(28)
.LVL3169:
.LEHB188:
.LBE11762:
.LBE11764:
.LBE11766:
.LBE11773:
.LBB11774:
.LBB11753:
.LBB11748:
	.loc 11 174 0
	bl _ZN6idDict5ClearEv
.LEHE188:
.LVL3170:
.LBB11730:
.LBB11731:
.LBB11732:
	.loc 15 130 0
	addi 3,28,16
.LEHB189:
	bl _ZN11idHashIndex4FreeEv
.LEHE189:
.LVL3171:
.LBE11732:
.LBE11731:
.LBE11730:
.LBB11733:
.LBB11734:
.LBB11735:
.LBB11736:
	.loc 8 193 0
	lwz 3,12(28)
	cmpwi 7,3,0
	beq- 7,.L2278
	.loc 8 194 0
	bl _ZdaPv
.L2278:
	.loc 8 197 0
	stw 27,12(28)
.LBE11736:
.LBE11735:
.LBE11734:
.LBE11733:
.LBE11748:
.LBE11753:
.LBE11774:
.LBE11787:
.LBE11793:
.LBE11799:
	.loc 8 219 0
	mr 3,28
.LBB11800:
.LBB11794:
.LBB11788:
.LBB11775:
.LBB11754:
.LBB11749:
.LBB11740:
.LBB11739:
.LBB11738:
.LBB11737:
	.loc 8 198 0
	stw 27,0(28)
	.loc 8 199 0
	stw 27,4(28)
.LBE11737:
.LBE11738:
.LBE11739:
.LBE11740:
.LBE11749:
.LBE11754:
.LBE11775:
.LBE11788:
.LBE11794:
.LBE11800:
	.loc 8 219 0
	bl _ZdlPv
	lwz 9,24(23)
	add 9,9,24
.LVL3172:
.L2271:
	.loc 8 220 0
	stw 27,0(9)
	.loc 8 218 0
	addi 26,26,1
.LVL3173:
	lwz 0,0(25)
	cmpw 7,26,0
	blt+ 7,.L2290
.LVL3174:
.L2270:
.LBB11801:
.LBB11802:
	.loc 8 193 0
	lwz 3,24(23)
	cmpwi 7,3,0
	beq- 7,.L2291
	.loc 8 194 0
	bl _ZdaPv
.L2291:
	.loc 8 197 0
	li 0,0
.LBE11802:
.LBE11801:
.LBE11809:
.LBE11815:
.LBB11816:
.LBB11817:
.LBB11818:
	.loc 14 501 0
	addi 3,23,28
.LBE11818:
.LBE11817:
.LBE11816:
.LBB11821:
.LBB11810:
.LBB11804:
.LBB11803:
	.loc 8 197 0
	stw 0,24(23)
	.loc 8 198 0
	stw 0,12(23)
	.loc 8 199 0
	stw 0,16(23)
.LVL3175:
.LEHB190:
.LBE11803:
.LBE11804:
.LBE11810:
.LBE11821:
.LBB11822:
.LBB11820:
.LBB11819:
	.loc 14 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE190:
.LVL3176:
.LBE11819:
.LBE11820:
.LBE11822:
.LBB11823:
.LBB11824:
.LBB11825:
.LBB11826:
	.loc 8 193 0
	lwz 3,24(23)
	cmpwi 7,3,0
	beq- 7,.L2293
	.loc 8 194 0
	bl _ZdaPv
.L2293:
	.loc 8 197 0
	li 0,0
.LBE11826:
.LBE11825:
.LBE11824:
.LBE11823:
.LBE11840:
.LBE11845:
.LBE12192:
	.loc 4 819 0
	mr 3,23
.LBB12193:
.LBB11846:
.LBB11841:
.LBB11830:
.LBB11829:
.LBB11828:
.LBB11827:
	.loc 8 197 0
	stw 0,24(23)
	.loc 8 198 0
	stw 0,12(23)
	.loc 8 199 0
	stw 0,16(23)
.LBE11827:
.LBE11828:
.LBE11829:
.LBE11830:
.LBE11841:
.LBE11846:
.LBE12193:
	.loc 4 819 0
	bl _ZdlPv
.LVL3177:
.L2269:
	.loc 4 820 0
	li 0,0
	.loc 4 821 0
	lis 4,.LC225@ha
	.loc 4 820 0
	stw 0,2096(31)
	.loc 4 821 0
	mr 3,20
	la 4,.LC225@l(4)
	mr 5,22
.LEHB191:
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LEHE191:
	b .L2347
.LVL3178:
.L2352:
.LBB12194:
.LBB12113:
.LBB12098:
.LBB12060:
.LBB12049:
.LBB12044:
	.loc 14 351 0
	mr 3,28
	mr 4,27
	li 5,1
.LEHB192:
	bl _ZN5idStr10ReAllocateEib
.LEHE192:
.LBE12044:
.LBE12049:
	.loc 14 375 0
	lwz 4,108(1)
.LBE12060:
.LBE12098:
.LBB12099:
.LBB12085:
	.loc 14 775 0
	addi 27,29,4
.LVL3179:
.LBE12085:
.LBE12099:
.LBB12100:
.LBB12061:
.LBB12050:
.LBB12045:
	.loc 14 351 0
	lwz 3,76(1)
.LBE12045:
.LBE12050:
	.loc 14 375 0
	bl strcpy
.LBE12061:
.LBE12100:
.LBB12101:
.LBB12086:
.LBB12077:
.LBB12073:
	.loc 14 350 0
	lwz 0,80(1)
.LBE12073:
.LBE12077:
	.loc 14 776 0
	addi 4,29,5
.LBE12086:
.LBE12101:
.LBB12102:
.LBB12062:
	.loc 14 376 0
	stw 29,72(1)
.LVL3180:
.LBE12062:
.LBE12102:
.LBB12103:
.LBB12087:
.LBB12078:
.LBB12074:
	.loc 14 350 0
	cmpw 7,4,0
	ble+ 7,.L2259
.LVL3181:
.L2257:
	.loc 14 351 0
	mr 3,28
	li 5,1
.LEHB193:
	bl _ZN5idStr10ReAllocateEib
.LEHE193:
.LVL3182:
	lwz 29,72(1)
	b .L2259
.LVL3183:
.L2351:
.LBE12074:
.LBE12078:
.LBE12087:
.LBE12103:
.LBE12113:
.LBE12194:
.LBB12195:
.LBB12022:
.LBB12017:
.LBB12015:
	addi 3,1,104
	mr 4,27
	li 5,1
.LEHB194:
	bl _ZN5idStr10ReAllocateEib
	lwz 3,108(1)
.LBE12015:
.LBE12017:
	.loc 14 415 0
	mr 4,22
	bl strcpy
.LBE12022:
.LBE12195:
.LBB12196:
.LBB12114:
.LBB12104:
.LBB12063:
.LBB12051:
.LBB12038:
	.loc 14 356 0
	li 0,0
	.loc 14 358 0
	addi 3,1,84
	.loc 14 357 0
	li 9,20
.LBE12038:
.LBE12051:
.LBE12063:
.LBE12104:
.LBE12114:
.LBE12196:
.LBB12197:
.LBB12023:
	.loc 14 416 0
	stw 28,104(1)
.LVL3184:
.LBE12023:
.LBE12197:
.LBB12198:
.LBB12115:
.LBB12105:
.LBB12064:
.LBB12052:
.LBB12039:
	.loc 14 358 0
	addi 28,1,72
.LVL3185:
	.loc 14 356 0
	stw 0,72(1)
	.loc 14 357 0
	stw 9,80(1)
	.loc 14 358 0
	stw 3,76(1)
	.loc 14 359 0
	stb 0,84(1)
.LVL3186:
.LBE12039:
.LBE12052:
.LBB12053:
.LBB12046:
	.loc 14 350 0
	ble+ 4,.L2256
	b .L2352
.LVL3187:
.L2354:
.LBE12046:
.LBE12053:
.LBE12064:
.LBE12105:
.LBE12115:
.LBE12198:
	.loc 4 877 0
	li 3,36
	bl _Znwj
.LEHE194:
	mr 30,3
.LEHB195:
	bl _ZN14idEditEntitiesC1Ev
.LEHE195:
	.loc 4 877 0 is_stmt 0 discriminator 1
	stw 30,1976(31)
	b .L2300
.LVL3188:
.L2317:
	.loc 4 812 0 is_stmt 1
	li 9,0
.LBB12199:
.LBB11847:
.LBB11842:
.LBB11831:
.LBB11811:
.LBB11805:
.LBB11795:
.LBB11789:
.LBB11776:
.LBB11755:
.LBB11750:
	.loc 4 802 0
	li 19,1
	b .L2268
.LVL3189:
.L2350:
.LBE11750:
.LBE11755:
.LBE11776:
.LBE11789:
.LBE11795:
.LBE11805:
.LBE11811:
.LBE11831:
.LBE11842:
.LBE11847:
.LBE12199:
.LBB12200:
.LBB12116:
.LBB12106:
.LBB12065:
.LBB12054:
.LBB12040:
	.loc 14 358 0
	addi 3,1,84
	.loc 14 356 0
	stw 22,72(1)
	.loc 14 357 0
	stw 9,80(1)
	.loc 14 359 0
	li 29,0
	.loc 14 358 0
	stw 3,76(1)
	addi 28,1,72
.LVL3190:
	.loc 14 359 0
	stb 22,84(1)
.LVL3191:
	b .L2256
.LVL3192:
.L2325:
	mr 31,3
.LBE12040:
.LBE12054:
.LBE12065:
.LBE12106:
.LBE12116:
.LBE12200:
	.loc 4 877 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
.LEHB196:
	bl _Unwind_Resume
.LEHE196:
.LVL3193:
.L2326:
	mr 31,3
.L2315:
.LVL3194:
.LBB12201:
.LBB12202:
.LBB12203:
	.loc 14 501 0
	addi 3,1,40
.LVL3195:
	bl _ZN5idStr8FreeDataEv
.LVL3196:
	mr 3,31
.LEHB197:
	bl _Unwind_Resume
.LEHE197:
.LVL3197:
.L2323:
	mr 31,3
.L2264:
.LVL3198:
.LBE12203:
.LBE12202:
.LBE12201:
.LBB12204:
.LBB12205:
.LBB12206:
	addi 3,1,104
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB198:
	bl _Unwind_Resume
.LEHE198:
.LVL3199:
.L2324:
	mr 31,3
.LVL3200:
.LBE12206:
.LBE12205:
.LBE12204:
.LBB12207:
.LBB12208:
.LBB12209:
	mr 3,28
	bl _ZN5idStr8FreeDataEv
	b .L2264
.LVL3201:
.L2332:
	mr 31,3
.LVL3202:
.LBE12209:
.LBE12208:
.LBE12207:
.LBB12210:
.LBB11956:
.LBB11953:
.LBB11947:
.LBB11929:
.LBB11925:
.LBB11917:
.LBB11913:
.LBB11902:
.LBB11898:
.LBB11895:
.LBB11887:
.LBB11888:
.LBB11889:
	.loc 15 130 0
	addi 3,28,16
	bl _ZN11idHashIndex4FreeEv
.LVL3203:
.L2231:
.LBE11889:
.LBE11888:
.LBE11887:
.LBB11890:
.LBB11891:
.LBB11892:
	.loc 8 181 0
	mr 3,28
	bl _ZN6idListI10idKeyValueE5ClearEv
.LVL3204:
.L2233:
.LBE11892:
.LBE11891:
.LBE11890:
.LBE11895:
.LBE11898:
.LBE11902:
.LBE11913:
.LBE11917:
.LBE11925:
.LBE11929:
.LBE11947:
.LBB11948:
.LBB11949:
.LBB11950:
	.loc 14 501 0
	addi 3,23,28
	bl _ZN5idStr8FreeDataEv
.LVL3205:
.L2296:
.LBE11950:
.LBE11949:
.LBE11948:
.LBE11953:
.LBE11956:
.LBE12210:
.LBB12211:
.LBB11848:
.LBB11843:
.LBB11832:
.LBB11833:
.LBB11834:
	.loc 8 181 0
	mr 3,25
	bl _ZN6idListIP11idMapEntityE5ClearEv
	mr 3,31
.LEHB199:
	bl _Unwind_Resume
.LEHE199:
.LVL3206:
.L2331:
	mr 31,3
	b .L2231
.LVL3207:
.L2327:
	mr 31,3
.LVL3208:
.LBE11834:
.LBE11833:
.LBE11832:
.LBE11843:
.LBE11848:
.LBE12211:
.LBB12212:
.LBB12213:
.LBB12214:
	.loc 14 501 0
	mr 3,27
	bl _ZN5idStr8FreeDataEv
	b .L2315
.LVL3209:
.L2333:
	mr 31,3
.LVL3210:
.LBE12214:
.LBE12213:
.LBE12212:
.LBB12215:
.LBB12000:
.LBB11991:
.LBB11992:
.LBB11993:
	addi 3,30,28
	bl _ZN5idStr8FreeDataEv
.LVL3211:
.LBE11993:
.LBE11992:
.LBE11991:
.LBB11994:
.LBB11995:
.LBB11996:
	.loc 8 181 0
	addi 3,30,12
	bl _ZN6idListIP11idMapEntityE5ClearEv
.LBE11996:
.LBE11995:
.LBE11994:
.LBE12000:
.LBE12215:
	.loc 4 817 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
.LEHB200:
	bl _Unwind_Resume
.LEHE200:
.LVL3212:
.L2335:
.LBB12216:
.LBB11849:
.LBB11844:
.LBB11835:
.LBB11812:
.LBB11806:
.LBB11796:
.LBB11790:
.LBB11777:
.LBB11778:
.LBB11779:
.LBB11780:
	.loc 8 193 0
	lwz 0,56(28)
	mr 31,3
.LVL3213:
	cmpwi 7,0,0
	beq- 7,.L2286
	.loc 8 194 0
	mr 3,0
	bl _ZdaPv
.L2286:
	.loc 8 197 0
	li 0,0
.LBE11780:
.LBE11779:
.LBE11778:
.LBE11777:
	.loc 29 170 0
	mr 3,28
.LBB11784:
.LBB11783:
.LBB11782:
.LBB11781:
	.loc 8 197 0
	stw 0,56(28)
	.loc 8 198 0
	stw 0,44(28)
	.loc 8 199 0
	stw 0,48(28)
.LBE11781:
.LBE11782:
.LBE11783:
.LBE11784:
	.loc 29 170 0
	bl _ZN6idDictD1Ev
.LVL3214:
.L2284:
.LBE11790:
.LBE11796:
.LBE11806:
.LBE11812:
.LBE11835:
.LBB11836:
.LBB11837:
.LBB11838:
	.loc 14 501 0
	addi 3,23,28
	bl _ZN5idStr8FreeDataEv
	b .L2296
.LVL3215:
.L2337:
	mr 31,3
.LVL3216:
.LBE11838:
.LBE11837:
.LBE11836:
.LBB11839:
.LBB11813:
.LBB11807:
.LBB11797:
.LBB11791:
.LBB11785:
.LBB11756:
.LBB11751:
.LBB11741:
.LBB11742:
.LBB11743:
	.loc 15 130 0
	addi 3,28,16
	bl _ZN11idHashIndex4FreeEv
.LVL3217:
.L2282:
.LBE11743:
.LBE11742:
.LBE11741:
.LBB11744:
.LBB11745:
.LBB11746:
	.loc 8 181 0
	mr 3,28
	bl _ZN6idListI10idKeyValueE5ClearEv
	b .L2284
.LVL3218:
.L2336:
	mr 31,3
	b .L2282
.LVL3219:
.L2334:
.L2348:
	mr 31,3
	b .L2296
.LVL3220:
.L2328:
	mr 31,3
.LVL3221:
.LBE11746:
.LBE11745:
.LBE11744:
.LBE11751:
.LBE11756:
.LBE11785:
.LBE11791:
.LBE11797:
.LBE11807:
.LBE11813:
.LBE11839:
.LBE11844:
.LBE11849:
.LBE12216:
.LBB12217:
.LBB12117:
.LBB12107:
.LBB12108:
.LBB12109:
	.loc 14 501 0
	mr 3,28
	bl _ZN5idStr8FreeDataEv
	b .L2264
.LVL3222:
.L2330:
.LBE12109:
.LBE12108:
.LBE12107:
.LBE12117:
.LBE12217:
.LBB12218:
.LBB11957:
.LBB11954:
.LBB11951:
.LBB11930:
.LBB11926:
.LBB11918:
.LBB11914:
.LBB11903:
.LBB11904:
.LBB11905:
.LBB11906:
	.loc 8 193 0
	lwz 0,56(28)
	mr 31,3
.LVL3223:
	cmpwi 7,0,0
	beq- 7,.L2235
	.loc 8 194 0
	mr 3,0
	bl _ZdaPv
.L2235:
	.loc 8 197 0
	li 0,0
.LBE11906:
.LBE11905:
.LBE11904:
.LBE11903:
	.loc 29 170 0
	mr 3,28
.LBB11910:
.LBB11909:
.LBB11908:
.LBB11907:
	.loc 8 197 0
	stw 0,56(28)
	.loc 8 198 0
	stw 0,44(28)
	.loc 8 199 0
	stw 0,48(28)
.LBE11907:
.LBE11908:
.LBE11909:
.LBE11910:
	.loc 29 170 0
	bl _ZN6idDictD1Ev
	b .L2233
.LVL3224:
.L2329:
	b .L2348
.LBE11914:
.LBE11918:
.LBE11926:
.LBE11930:
.LBE11951:
.LBE11954:
.LBE11957:
.LBE12218:
.LBE12220:
	.cfi_endproc
.LFE2855:
	.section	.gcc_except_table
.LLSDA2855:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2855-.LLSDACSB2855
.LLSDACSB2855:
	.uleb128 .LEHB172-.LFB2855
	.uleb128 .LEHE172-.LEHB172
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB173-.LFB2855
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L2330-.LFB2855
	.uleb128 0
	.uleb128 .LEHB174-.LFB2855
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L2332-.LFB2855
	.uleb128 0
	.uleb128 .LEHB175-.LFB2855
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2331-.LFB2855
	.uleb128 0
	.uleb128 .LEHB176-.LFB2855
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L2329-.LFB2855
	.uleb128 0
	.uleb128 .LEHB177-.LFB2855
	.uleb128 .LEHE177-.LEHB177
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB178-.LFB2855
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L2333-.LFB2855
	.uleb128 0
	.uleb128 .LEHB179-.LFB2855
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2324-.LFB2855
	.uleb128 0
	.uleb128 .LEHB180-.LFB2855
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L2323-.LFB2855
	.uleb128 0
	.uleb128 .LEHB181-.LFB2855
	.uleb128 .LEHE181-.LEHB181
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB182-.LFB2855
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L2327-.LFB2855
	.uleb128 0
	.uleb128 .LEHB183-.LFB2855
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L2326-.LFB2855
	.uleb128 0
	.uleb128 .LEHB184-.LFB2855
	.uleb128 .LEHE184-.LEHB184
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB185-.LFB2855
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L2326-.LFB2855
	.uleb128 0
	.uleb128 .LEHB186-.LFB2855
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB187-.LFB2855
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L2335-.LFB2855
	.uleb128 0
	.uleb128 .LEHB188-.LFB2855
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L2337-.LFB2855
	.uleb128 0
	.uleb128 .LEHB189-.LFB2855
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L2336-.LFB2855
	.uleb128 0
	.uleb128 .LEHB190-.LFB2855
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L2334-.LFB2855
	.uleb128 0
	.uleb128 .LEHB191-.LFB2855
	.uleb128 .LEHE191-.LEHB191
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB192-.LFB2855
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L2323-.LFB2855
	.uleb128 0
	.uleb128 .LEHB193-.LFB2855
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L2328-.LFB2855
	.uleb128 0
	.uleb128 .LEHB194-.LFB2855
	.uleb128 .LEHE194-.LEHB194
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB195-.LFB2855
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L2325-.LFB2855
	.uleb128 0
	.uleb128 .LEHB196-.LFB2855
	.uleb128 .LEHE196-.LEHB196
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB197-.LFB2855
	.uleb128 .LEHE197-.LEHB197
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB198-.LFB2855
	.uleb128 .LEHE198-.LEHB198
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB199-.LFB2855
	.uleb128 .LEHE199-.LEHB199
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB200-.LFB2855
	.uleb128 .LEHE200-.LEHB200
	.uleb128 0
	.uleb128 0
.LLSDACSE2855:
	.section	".text"
	.size	_ZN11idGameLocal7LoadMapEPKci, .-_ZN11idGameLocal7LoadMapEPKci
	.align 2
	.globl _ZN11idGameLocal14InitFromNewMapEPKcP13idRenderWorldP12idSoundWorldbbi
	.type	_ZN11idGameLocal14InitFromNewMapEPKcP13idRenderWorldP12idSoundWorldbbi, @function
_ZN11idGameLocal14InitFromNewMapEPKcP13idRenderWorldP12idSoundWorldbbi:
.LFB2862:
	.loc 4 1142 0
	.cfi_startproc
.LVL3225:
	.loc 4 1146 0
	cmpwi 7,7,0
	.loc 4 1142 0
	stwu 1,-32(1)
.LCFI371:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	.loc 4 1144 0
	addis 31,3,0x25
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 4 1142 0
	stw 26,8(1)
	mr 26,9
	.cfi_offset 26, -24
	stw 27,12(1)
	mr 27,6
	.cfi_offset 27, -20
	stw 28,16(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,20(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,36(1)
	.loc 4 1144 0
	stb 7,2017(31)
	.loc 4 1145 0
	stb 8,2018(31)
	.loc 4 1146 0
	beq- 7,.L2356
	.cfi_offset 65, 4
	li 8,1
.LVL3226:
.L2356:
	.loc 4 1148 0 discriminator 4
	lwz 0,2064(31)
	.loc 4 1146 0 discriminator 4
	stb 8,2016(31)
	.loc 4 1148 0 discriminator 4
	cmpwi 7,0,0
	beq+ 7,.L2357
	.loc 4 1149 0
	lwz 9,0(30)
.LVL3227:
	mr 3,30
.LVL3228:
	lwz 0,56(9)
	mtctr 0
	bctrl
.LVL3229:
.L2357:
	.loc 4 1152 0
	lis 4,.LC232@ha
	mr 3,30
	la 4,.LC232@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 1154 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 1155 0
	lis 3,.LC233@ha
	la 3,.LC233@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 1156 0
	li 0,2
	stw 0,2236(31)
	.loc 4 1158 0
	lis 9,gameRenderWorld@ha
	.loc 4 1161 0
	mr 4,28
	mr 5,26
	mr 3,30
	.loc 4 1158 0
	stw 29,gameRenderWorld@l(9)
	.loc 4 1159 0
	lis 9,gameSoundWorld@ha
	.loc 4 1171 0
	addi 29,31,1416
.LVL3230:
	.loc 4 1159 0
	stw 27,gameSoundWorld@l(9)
	.loc 4 1161 0
	bl _ZN11idGameLocal7LoadMapEPKci
.LVL3231:
	.loc 4 1163 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 1164 0
	lis 3,.LC234@ha
	la 3,.LC234@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 1165 0
	mr 3,30
	bl _ZN11idGameLocal16InitScriptForMapEv
	.loc 4 1167 0
	bl _Z21Sys_PrintMainHeapInfov
	.loc 4 1168 0
	lis 3,.LC235@ha
	la 3,.LC235@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 1169 0
	mr 3,30
	bl _ZN11idGameLocal11MapPopulateEv
	.loc 4 1171 0
	mr 3,29
	bl _ZN17idMultiplayerGame5ResetEv
	.loc 4 1173 0
	mr 3,29
	bl _ZN17idMultiplayerGame8PrecacheEv
	.loc 4 1176 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addis 3,3,0x27
	addi 3,3,6592
	bl _ZN13idAnimManager16FlushUnusedAnimsEv
	.loc 4 1178 0
	li 0,3
	stw 0,2236(31)
	.loc 4 1180 0
	mr 3,30
	lis 4,.LC10@ha
	.loc 4 1181 0
	lwz 0,36(1)
	.loc 4 1180 0
	la 4,.LC10@l(4)
	.loc 4 1181 0
	lwz 26,8(1)
.LVL3232:
	lwz 27,12(1)
.LVL3233:
	mtlr 0
	lwz 28,16(1)
.LVL3234:
	lwz 29,20(1)
	lwz 30,24(1)
.LVL3235:
	lwz 31,28(1)
	addi 1,1,32
.LCFI372:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.loc 4 1180 0
	crxor 6,6,6
	b _ZNK11idGameLocal6PrintfEPKcz
.LVL3236:
	.cfi_endproc
.LFE2862:
	.size	_ZN11idGameLocal14InitFromNewMapEPKcP13idRenderWorldP12idSoundWorldbbi, .-_ZN11idGameLocal14InitFromNewMapEPKcP13idRenderWorldP12idSoundWorldbbi
	.align 2
	.globl _ZN11idGameLocal16InitFromSaveGameEPKcP13idRenderWorldP12idSoundWorldP6idFile
	.type	_ZN11idGameLocal16InitFromSaveGameEPKcP13idRenderWorldP12idSoundWorldP6idFile, @function
_ZN11idGameLocal16InitFromSaveGameEPKcP13idRenderWorldP12idSoundWorldP6idFile:
.LFB2863:
	.loc 4 1188 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2863
.LVL3237:
	mflr 0
	stwu 1,-120(1)
.LCFI373:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
.LVL3238:
.LBB12293:
.LBB12294:
.LBB12295:
.LBB12296:
	.loc 8 159 0
	li 9,16
.LBE12296:
.LBE12295:
.LBE12294:
.LBE12293:
	.loc 4 1188 0
	stw 24,88(1)
	mr 24,4
	.cfi_offset 24, -32
	stw 0,124(1)
.LBB12437:
.LBB12345:
.LBB12303:
.LBB12304:
	.loc 15 112 0
	li 4,1024
.LVL3239:
.LBE12304:
.LBE12303:
.LBB12307:
.LBB12301:
.LBB12297:
.LBB12298:
	.loc 8 197 0
	li 0,0
	.cfi_offset 65, 4
.LBE12298:
.LBE12297:
.LBE12301:
.LBE12307:
.LBE12345:
.LBE12437:
	.loc 4 1188 0
	stw 28,104(1)
	stw 31,116(1)
	mr 28,5
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	mr 31,3
.LBB12438:
.LBB12346:
.LBB12308:
.LBB12305:
	.loc 15 112 0
	li 5,1024
.LVL3240:
	addi 3,1,60
.LVL3241:
.LBE12305:
.LBE12308:
.LBE12346:
.LBE12438:
	.loc 4 1188 0
	stw 27,100(1)
	stw 29,108(1)
	mr 27,7
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	stw 25,92(1)
	mr 29,6
	stw 26,96(1)
	stw 30,112(1)
.LBB12439:
.LBB12347:
.LBB12309:
.LBB12302:
	.loc 8 159 0
	stw 9,52(1)
.LVL3242:
.LBB12300:
.LBB12299:
	.loc 8 197 0
	stw 0,56(1)
	.loc 8 198 0
	stw 0,44(1)
	.loc 8 199 0
	stw 0,48(1)
.LVL3243:
.LEHB201:
.LBE12299:
.LBE12300:
.LBE12302:
.LBE12309:
.LBB12310:
.LBB12306:
	.loc 15 112 0
	.cfi_offset 30, -8
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	bl _ZN11idHashIndex4InitEii
.LEHE201:
.LVL3244:
.LBE12306:
.LBE12310:
.LBB12311:
.LBB12312:
	.loc 8 319 0
	lwz 30,56(1)
	.loc 8 317 0
	li 0,16
	stw 0,52(1)
	.loc 8 319 0
	cmpwi 7,30,0
	beq- 7,.L2359
	.loc 8 321 0
	lwz 9,44(1)
	.loc 8 323 0
	lwz 0,48(1)
	.loc 8 321 0
	addi 3,9,15
.LVL3245:
	.loc 8 322 0
	srawi 3,3,4
	addze 3,3
.LVL3246:
	slwi 3,3,4
.LVL3247:
	.loc 8 323 0
	cmpw 7,3,0
	beq- 7,.L2359
.LVL3248:
.LBB12313:
.LBB12314:
	.loc 8 375 0
	cmpwi 7,3,0
	ble- 7,.L2414
.LVL3249:
	.loc 8 387 0
	cmpw 7,9,3
	.loc 8 386 0
	stw 3,48(1)
	.loc 8 387 0
	bgt- 7,.L2415
.L2361:
	.loc 8 392 0
	slwi 3,3,3
.LVL3250:
.LEHB202:
	bl _Znaj
.LVL3251:
	.loc 8 393 0
	lwz 0,44(1)
	.loc 8 392 0
	stw 3,56(1)
.LVL3252:
	.loc 8 393 0
	cmpwi 7,0,0
	ble- 7,.L2362
	.loc 4 1188 0
	addi 8,30,-8
.LBE12314:
.LBE12313:
.LBE12312:
.LBE12311:
.LBE12347:
.LBE12439:
	.loc 8 393 0
	li 9,0
	b .L2363
.LVL3253:
.L2416:
.LBB12440:
.LBB12348:
.LBB12326:
.LBB12323:
.LBB12320:
.LBB12317:
	lwz 3,56(1)
.LVL3254:
.L2363:
	.loc 8 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 8 393 0
	addi 9,9,1
.LVL3255:
	.loc 8 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 8 393 0
	lwz 0,44(1)
	cmpw 7,9,0
	blt+ 7,.L2416
.LVL3256:
.L2362:
	.loc 8 399 0
	mr 3,30
	bl _ZdaPv
.LVL3257:
.L2359:
.LBE12317:
.LBE12320:
.LBE12323:
.LBE12326:
.LBB12327:
.LBB12328:
	.loc 15 371 0
	li 0,16
.LBE12328:
.LBE12327:
.LBB12330:
.LBB12331:
	.loc 15 341 0
	addi 3,1,60
.LVL3258:
.LBE12331:
.LBE12330:
.LBB12334:
.LBB12329:
	.loc 15 371 0
	stw 0,76(1)
.LVL3259:
.LBE12329:
.LBE12334:
.LBB12335:
.LBB12332:
	.loc 15 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE202:
.LVL3260:
.LBE12332:
.LBE12335:
.LBE12348:
	.loc 4 4268 0
	addis 26,31,0x25
	.loc 4 1194 0
	lwz 0,2064(26)
	cmpwi 7,0,0
.LBB12349:
.LBB12336:
.LBB12333:
	.loc 15 342 0
	li 0,128
	stw 0,60(1)
	.loc 15 343 0
	li 0,16
	stw 0,68(1)
.LBE12333:
.LBE12336:
.LBE12349:
	.loc 4 1194 0
	beq- 7,.L2365
	.loc 4 1195 0
	lwz 9,0(31)
	mr 3,31
	addi 30,1,44
	lwz 0,56(9)
	mtctr 0
.LEHB203:
	bctrl
.L2365:
	.loc 4 1198 0
	lis 4,.LC236@ha
	mr 3,31
	la 4,.LC236@l(4)
	addi 30,1,44
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 1200 0
	li 0,2
	.loc 4 1202 0
	lis 25,gameRenderWorld@ha
	.loc 4 1200 0
	stw 0,2236(26)
	.loc 4 1203 0
	lis 9,gameSoundWorld@ha
	.loc 4 1205 0
	addi 3,1,20
	mr 4,27
	.loc 4 1202 0
	stw 28,gameRenderWorld@l(25)
	addi 30,1,44
	.loc 4 1203 0
	stw 29,gameSoundWorld@l(9)
	.loc 4 1205 0
	bl _ZN13idRestoreGameC1EP6idFile
.LEHE203:
	.loc 4 1207 0
	addi 3,1,20
	addi 30,1,44
.LEHB204:
	bl _ZN13idRestoreGame15ReadBuildNumberEv
	.loc 4 1210 0
	addi 3,1,20
	addi 30,1,44
	bl _ZN13idRestoreGame13CreateObjectsEv
	.loc 4 1213 0
	addis 28,31,0x1
.LVL3261:
	addi 4,1,20
	addi 29,28,-32060
.LVL3262:
	addi 30,1,44
	mr 3,29
	bl _ZN9idProgram7RestoreEP13idRestoreGame
	cmpwi 7,3,0
	bne- 7,.L2370
	.loc 4 1217 0
	addi 3,1,20
	addi 30,1,44
	bl _ZN13idRestoreGame13DeleteObjectsEv
	.loc 4 1218 0
	mr 3,29
	addi 30,1,44
	bl _ZN9idProgram7RestartEv
.LEHE204:
	.loc 4 1220 0
	li 31,0
.LVL3263:
	addi 30,1,44
.LVL3264:
.L2371:
	.loc 4 1401 0
	addi 3,1,20
.LEHB205:
	bl _ZN13idRestoreGameD1Ev
.LEHE205:
.LVL3265:
.LBB12350:
.LBB12351:
.LBB12352:
	.loc 11 174 0
	mr 3,30
.LEHB206:
	bl _ZN6idDict5ClearEv
.LEHE206:
.LVL3266:
.LBB12353:
.LBB12354:
.LBB12355:
	.loc 15 130 0
	addi 3,1,60
.LVL3267:
.LEHB207:
	bl _ZN11idHashIndex4FreeEv
.LEHE207:
.LVL3268:
.LBE12355:
.LBE12354:
.LBE12353:
.LBB12356:
.LBB12357:
.LBB12358:
.LBB12359:
	.loc 8 193 0
	lwz 3,56(1)
	cmpwi 7,3,0
	beq- 7,.L2396
	.loc 8 194 0
	bl _ZdaPv
.L2396:
.LBE12359:
.LBE12358:
.LBE12357:
.LBE12356:
.LBE12352:
.LBE12351:
.LBE12350:
.LBE12440:
	.loc 4 1402 0
	lwz 0,124(1)
	mr 3,31
	lwz 24,88(1)
	mtlr 0
	lwz 25,92(1)
	lwz 26,96(1)
.LVL3269:
	lwz 27,100(1)
	lwz 28,104(1)
.LVL3270:
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI374:
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
.LVL3271:
.L2370:
.LCFI375:
	.cfi_restore_state
.LBB12441:
	.loc 4 1224 0
	mr 3,31
	mr 4,24
	li 5,0
	addi 30,1,44
.LEHB208:
	bl _ZN11idGameLocal7LoadMapEPKci
	.loc 4 1226 0
	addi 3,1,20
	addi 4,1,16
	addi 30,1,44
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1227 0
	lis 9,g_skill+44@ha
.LVL3272:
.LBB12368:
.LBB12369:
	.loc 7 148 0
	lwz 4,16(1)
.LBE12369:
.LBE12368:
	.loc 4 1227 0
	lwz 3,g_skill+44@l(9)
.LVL3273:
	addi 30,1,44
.LBB12371:
.LBB12370:
	.loc 7 148 0
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL3274:
.LBE12370:
.LBE12371:
	.loc 4 1230 0
	lis 4,.LC191@ha
	mr 3,31
	la 4,.LC191@l(4)
	li 5,0
	li 6,1
	addi 30,1,44
	bl _ZNK11idGameLocal13FindEntityDefEPKcbb
.LBB12372:
	.loc 4 1233 0
	lwz 9,2096(26)
.LVL3275:
	li 11,0
	stw 11,16(1)
	lwz 0,12(9)
	cmpwi 7,0,0
	ble- 7,.L2372
.LBB12373:
.LBB12374:
.LBB12375:
.LBB12376:
.LBB12377:
	.loc 11 241 0
	lis 27,.LC65@ha
.LVL3276:
.LBE12377:
.LBE12376:
.LBE12375:
.LBE12374:
.LBE12373:
	.loc 4 1233 0
	li 0,0
.LBB12393:
.LBB12388:
.LBB12385:
.LBB12382:
.LBB12379:
	.loc 11 241 0
	la 27,.LC65@l(27)
	.loc 11 245 0
	lis 24,.LC3@ha
.LVL3277:
	b .L2375
.LVL3278:
.L2373:
.LBE12379:
.LBE12382:
.LBE12385:
.LBE12388:
.LBE12393:
	.loc 4 1233 0
	lwz 9,2096(26)
.LVL3279:
	lwz 10,16(1)
	lwz 11,12(9)
	addi 0,10,1
	cmpw 7,0,11
	stw 0,16(1)
	bge- 7,.L2372
.LVL3280:
.L2375:
.LBB12394:
.LBB12389:
.LBB12390:
	.loc 29 198 0
	lwz 9,24(9)
.LVL3281:
	slwi 0,0,2
.LVL3282:
.LBE12390:
.LBE12389:
.LBB12391:
	.loc 4 1236 0
	mr 3,31
	addi 30,1,44
	lwzx 29,9,0
	mr 4,29
	bl _ZN11idGameLocal18InhibitEntitySpawnER6idDict
	cmpwi 7,3,0
	bne+ 7,.L2373
.LBB12386:
	.loc 4 1237 0
	lwz 9,0(31)
	mr 3,31
	mr 4,29
	addi 30,1,44
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL3283:
.LBB12383:
.LBB12380:
	.loc 11 241 0
	mr 3,29
	mr 4,27
	addi 30,1,44
	bl _ZNK6idDict7FindKeyEPKc
.LVL3284:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L2400
.LVL3285:
.LBB12378:
	.loc 4 4268 0
	lwz 9,4(3)
	lwz 4,4(9)
.LBE12378:
.LBE12380:
.LBE12383:
	.loc 4 1239 0
	cmpwi 7,4,0
	beq- 7,.L2373
.LVL3286:
.L2374:
	.loc 4 1240 0
	mr 3,31
.LVL3287:
	li 5,0
	li 6,1
	addi 30,1,44
	bl _ZNK11idGameLocal13FindEntityDefEPKcbb
.LBE12386:
.LBE12391:
.LBE12394:
	.loc 4 1233 0
	lwz 9,2096(26)
.LVL3288:
	lwz 10,16(1)
	lwz 11,12(9)
	addi 0,10,1
	cmpw 7,0,11
	stw 0,16(1)
	blt+ 7,.L2375
.LVL3289:
.L2372:
.LBE12372:
	.loc 4 1245 0
	addi 30,1,44
	addi 3,1,20
	mr 4,30
	bl _ZN13idRestoreGame8ReadDictEP6idDict
.LVL3290:
	.loc 4 1246 0
	lwz 9,0(31)
	mr 3,31
	mr 4,30
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 4 1248 0
	addi 3,1,20
	addi 4,31,48
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1249 0
	lwz 0,48(31)
	cmpwi 7,0,0
	li 0,0
	stw 0,16(1)
	ble- 7,.L2376
	li 4,0
.L2377:
	.loc 4 1250 0
	mulli 4,4,44
	addi 3,1,20
	add 4,31,4
	addi 4,4,52
	bl _ZN13idRestoreGame8ReadDictEP6idDict
	.loc 4 1251 0
	lwz 4,16(1)
	addi 3,1,20
	addi 4,4,7
	slwi 4,4,5
	add 4,31,4
	addi 4,4,4
	bl _ZN13idRestoreGame11ReadUsercmdER9usercmd_t
	.loc 4 1252 0
	lwz 4,16(1)
	addi 3,1,20
	mulli 4,4,44
	add 4,31,4
	addi 4,4,356
	bl _ZN13idRestoreGame8ReadDictEP6idDict
	.loc 4 1249 0
	lwz 4,16(1)
	lwz 0,48(31)
	addi 4,4,1
	cmpw 7,0,4
	stw 4,16(1)
	bgt+ 7,.L2377
	.loc 4 1255 0
	li 0,0
	stw 0,16(1)
.L2376:
	.loc 4 1249 0
	li 4,0
.L2379:
	.loc 4 1256 0
	addi 4,4,132
	addi 3,1,20
	slwi 4,4,2
	add 4,31,4
	addi 4,4,4
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
	.loc 4 1257 0
	lwz 4,16(1)
	addi 3,1,20
	addi 4,4,4228
	slwi 4,4,2
	add 4,31,4
	addi 4,4,4
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1260 0
	lwz 4,16(1)
	addi 9,4,132
	slwi 9,9,2
	add 9,31,9
	lwz 9,4(9)
	cmpwi 7,9,0
	beq- 7,.L2378
	.loc 4 1261 0
	stw 4,4(9)
.L2378:
	.loc 4 1255 0
	addi 4,4,1
	cmpwi 7,4,4095
	stw 4,16(1)
	ble+ 7,.L2379
	.loc 4 1265 0
	addi 3,1,20
	addi 4,28,-32236
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1266 0
	addi 3,1,20
	addi 4,28,-32232
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1270 0
	addi 3,1,20
	addi 4,28,-32200
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
	.loc 4 1272 0
	addi 3,1,20
	addi 4,1,12
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3291:
	.loc 4 1273 0
	lwz 0,12(1)
	cmpwi 7,0,0
	li 0,0
	stw 0,16(1)
	ble- 7,.L2380
	addi 29,1,8
.LVL3292:
.L2382:
	.loc 4 1274 0
	addi 3,1,20
	mr 4,29
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
	.loc 4 1276 0
	lwz 9,8(1)
	cmpwi 7,9,0
	beq- 7,.L2381
.LBB12396:
.LBB12397:
.LBB12398:
.LBB12399:
.LBB12400:
	.loc 9 176 0
	lwz 10,20(9)
	lwz 0,16(9)
.LBE12400:
.LBE12399:
.LBE12398:
.LBE12397:
.LBE12396:
	.loc 4 4268 0
	lwz 11,-32196(28)
.LBB12409:
.LBB12407:
.LBB12405:
.LBB12403:
.LBB12401:
	.loc 9 176 0
	stw 0,4(10)
.LBE12401:
.LBE12403:
.LBE12405:
.LBE12407:
.LBE12409:
	.loc 4 1277 0
	addi 0,9,12
.LVL3293:
.LBB12410:
.LBB12408:
.LBB12406:
.LBB12404:
.LBB12402:
	.loc 9 177 0
	lwz 8,20(9)
	lwz 10,16(9)
	stw 8,8(10)
	.loc 9 180 0
	stw 0,20(9)
	.loc 9 181 0
	stw 0,12(9)
.LBE12402:
.LBE12404:
	.loc 9 196 0
	stw 11,16(9)
	.loc 9 197 0
	lwz 10,8(11)
	stw 10,20(9)
	.loc 9 198 0
	stw 0,8(11)
	.loc 9 199 0
	lwz 10,20(9)
	stw 0,4(10)
	.loc 9 200 0
	lwz 0,0(11)
.LVL3294:
	stw 0,12(9)
.LVL3295:
.L2381:
.LBE12406:
.LBE12408:
.LBE12410:
	.loc 4 1273 0
	lwz 9,16(1)
	addi 0,9,1
	lwz 9,12(1)
	stw 0,16(1)
	cmpw 7,9,0
	bgt+ 7,.L2382
.L2380:
	.loc 4 1281 0
	addi 3,1,20
	addi 4,1,12
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1282 0
	lwz 0,12(1)
	cmpwi 7,0,0
	li 0,0
	stw 0,16(1)
	ble- 7,.L2383
	addi 29,1,8
.L2385:
	.loc 4 1283 0
	addi 3,1,20
	mr 4,29
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
	.loc 4 1285 0
	lwz 9,8(1)
	cmpwi 7,9,0
	beq- 7,.L2384
.LBB12411:
.LBB12412:
.LBB12413:
.LBB12414:
.LBB12415:
	.loc 9 176 0
	lwz 10,36(9)
	lwz 0,32(9)
.LBE12415:
.LBE12414:
.LBE12413:
.LBE12412:
.LBE12411:
	.loc 4 4268 0
	lwz 11,-32180(28)
.LBB12424:
.LBB12422:
.LBB12420:
.LBB12418:
.LBB12416:
	.loc 9 176 0
	stw 0,4(10)
.LBE12416:
.LBE12418:
.LBE12420:
.LBE12422:
.LBE12424:
	.loc 4 1286 0
	addi 0,9,28
.LVL3296:
.LBB12425:
.LBB12423:
.LBB12421:
.LBB12419:
.LBB12417:
	.loc 9 177 0
	lwz 8,36(9)
	lwz 10,32(9)
	stw 8,8(10)
	.loc 9 180 0
	stw 0,36(9)
	.loc 9 181 0
	stw 0,28(9)
.LBE12417:
.LBE12419:
	.loc 9 196 0
	stw 11,32(9)
	.loc 9 197 0
	lwz 10,8(11)
	stw 10,36(9)
	.loc 9 198 0
	stw 0,8(11)
	.loc 9 199 0
	lwz 10,36(9)
	stw 0,4(10)
	.loc 9 200 0
	lwz 0,0(11)
.LVL3297:
	stw 0,28(9)
.LVL3298:
.L2384:
.LBE12421:
.LBE12423:
.LBE12425:
	.loc 4 1282 0
	lwz 9,16(1)
	addi 0,9,1
	lwz 9,12(1)
	stw 0,16(1)
	cmpw 7,9,0
	bgt+ 7,.L2385
.L2383:
	.loc 4 1290 0
	addi 3,1,20
	addi 4,28,-32164
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1291 0
	addi 3,1,20
	addi 4,28,-32160
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1292 0
	addi 3,1,20
	addi 4,28,-32159
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1293 0
	addi 3,1,20
	addi 4,28,-32156
	bl _ZN13idRestoreGame8ReadDictEP6idDict
	.loc 4 1295 0
	li 0,0
	li 4,0
	stw 0,16(1)
.L2386:
	.loc 4 1296 0
	addi 4,4,8356
	addi 3,1,20
	slwi 4,4,2
	add 4,31,4
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 1295 0
	lwz 4,16(1)
	addi 4,4,1
	cmpwi 7,4,11
	stw 4,16(1)
	ble+ 7,.L2386
	.loc 4 1299 0
	addi 3,1,20
	addi 4,1,16
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3299:
.LBB12426:
.LBB12427:
	.loc 21 63 0
	lwz 0,16(1)
.LBE12427:
.LBE12426:
	.loc 4 1302 0
	addis 4,31,0x23
	addi 3,1,20
	addi 4,4,17268
.LBB12429:
.LBB12428:
	.loc 21 63 0
	stw 0,-32064(28)
.LBE12428:
.LBE12429:
	.loc 4 1302 0
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
.LVL3300:
	.loc 4 1311 0
	addi 3,1,20
	addi 4,26,1384
	bl _ZN13idRestoreGame10ReadStringER5idStr
	.loc 4 1315 0
	addi 3,1,20
	addi 4,26,1980
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1316 0
	addi 3,1,20
	addi 4,26,1984
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1317 0
	addi 3,1,20
	addi 4,26,1988
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1318 0
	addi 3,1,20
	addi 4,26,1992
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1319 0
	addi 3,1,20
	addi 4,26,1993
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1321 0
	addi 3,1,20
	addi 4,26,2016
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1322 0
	addi 3,1,20
	addi 4,26,2012
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1324 0
	addi 3,1,20
	addi 4,26,1996
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1325 0
	addi 3,1,20
	addi 4,26,2000
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1326 0
	addi 3,1,20
	addi 4,26,2004
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1328 0
	addi 3,1,20
	addi 4,26,2008
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1330 0
	addi 3,1,20
	addi 4,26,2052
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1331 0
	addi 3,1,20
	addi 4,26,2017
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1332 0
	addi 3,1,20
	addi 4,26,2018
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1334 0
	addi 3,1,20
	addi 4,26,2020
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1338 0
	addi 3,1,20
	addi 4,26,2040
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1339 0
	addi 3,1,20
	addi 4,26,2044
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1340 0
	addi 3,1,20
	addi 4,26,2048
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 1342 0
	addi 3,1,20
	addi 4,26,2100
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 1343 0
	addi 3,1,20
	addi 4,26,2104
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1345 0
	addi 3,1,20
	addi 4,1,12
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 1346 0
	lwz 0,12(1)
	cmpwi 7,0,0
	beq- 7,.L2387
	.loc 4 1347 0
	lwz 3,gameRenderWorld@l(25)
	lwz 9,0(3)
	lwz 0,100(9)
	mtctr 0
	bctrl
	lwz 0,12(1)
	cmpw 7,3,0
	beq- 7,.L2388
	.loc 4 1348 0
	lis 4,.LC237@ha
	addi 3,1,20
	la 4,.LC237@l(4)
	crxor 6,6,6
	bl _ZN13idRestoreGame5ErrorEPKcz
	lwz 0,12(1)
.L2388:
	.loc 4 1351 0
	slwi 3,0,2
	bl _Znaj
	.loc 4 1352 0
	lwz 9,12(1)
	.loc 4 1351 0
	mr 0,3
	stw 3,2112(26)
	.loc 4 1352 0
	cmpwi 7,9,0
	li 9,0
	stw 9,16(1)
	ble- 7,.L2387
	li 4,0
	b .L2389
.L2417:
	lwz 0,2112(26)
.L2389:
	.loc 4 1353 0
	slwi 4,4,2
	addi 3,1,20
	add 4,0,4
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
	.loc 4 1352 0
	lwz 4,16(1)
	lwz 0,12(1)
	addi 4,4,1
	cmpw 7,0,4
	stw 4,16(1)
	bgt+ 7,.L2417
.L2387:
	.loc 4 1357 0
	addi 3,1,20
	addi 4,26,2116
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
	.loc 4 1359 0
	addi 3,1,20
	addi 4,26,2120
	bl _ZN13idRestoreGame12ReadMaterialERPK10idMaterial
.LVL3301:
.LBB12430:
.LBB12431:
	.loc 10 600 0
	addi 3,1,20
.LVL3302:
	addi 4,26,2156
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3303:
.LBE12431:
.LBE12430:
	.loc 4 1362 0
	addi 3,1,20
.LVL3304:
	addi 4,26,2160
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3305:
	.loc 4 1364 0
	addi 3,1,20
.LVL3306:
	addi 4,26,2164
	bl _ZN13idRestoreGame8ReadDictEP6idDict
.LVL3307:
	.loc 4 1366 0
	addi 3,1,20
.LVL3308:
	addi 4,26,2208
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3309:
	.loc 4 1367 0
	addi 3,1,20
.LVL3310:
	addi 4,26,2212
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3311:
	.loc 4 1368 0
	addi 3,1,20
.LVL3312:
	addi 4,26,2216
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3313:
	.loc 4 1369 0
	addi 3,1,20
.LVL3314:
	addi 4,26,2220
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3315:
	.loc 4 1371 0
	addi 3,1,20
.LVL3316:
	addi 4,26,2224
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
.LVL3317:
	.loc 4 1375 0
	addi 3,1,20
.LVL3318:
	addi 4,26,2240
	bl _ZN13idRestoreGame8ReadBoolERb
.LVL3319:
	.loc 4 1376 0
	addi 3,1,20
.LVL3320:
	addi 4,26,2244
	bl _ZN13idRestoreGame7ReadIntERi
.LVL3321:
	.loc 4 1386 0
	addi 3,1,20
.LVL3322:
	bl _ZN7idEvent7RestoreEP13idRestoreGame
.LVL3323:
	.loc 4 1388 0
	addi 3,1,20
.LVL3324:
	bl _ZN13idRestoreGame14RestoreObjectsEv
.LVL3325:
	.loc 4 1390 0
	addi 29,26,1416
	mr 3,29
	bl _ZN17idMultiplayerGame5ResetEv
	.loc 4 1392 0
	mr 3,29
	bl _ZN17idMultiplayerGame8PrecacheEv
	.loc 4 1395 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	addis 3,3,0x27
	addi 3,3,6592
	bl _ZN13idAnimManager16FlushUnusedAnimsEv
	.loc 4 1397 0
	li 0,3
	.loc 4 1399 0
	lis 4,.LC10@ha
	.loc 4 1397 0
	stw 0,2236(26)
	.loc 4 1399 0
	mr 3,31
	la 4,.LC10@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LEHE208:
	.loc 4 1401 0
	li 31,1
.LVL3326:
	b .L2371
.LVL3327:
.L2415:
.LBB12432:
.LBB12337:
.LBB12324:
.LBB12321:
.LBB12318:
	.loc 8 388 0
	stw 3,44(1)
	b .L2361
.LVL3328:
.L2400:
.LBE12318:
.LBE12321:
.LBE12324:
.LBE12337:
.LBE12432:
.LBB12433:
.LBB12395:
.LBB12392:
.LBB12387:
.LBB12384:
.LBB12381:
	.loc 11 245 0
	la 4,.LC3@l(24)
	b .L2374
.LVL3329:
.L2414:
.LBE12381:
.LBE12384:
.LBE12387:
.LBE12392:
.LBE12395:
.LBE12433:
.LBB12434:
.LBB12338:
.LBB12325:
.LBB12322:
.LBB12319:
.LBB12315:
.LBB12316:
	.loc 8 194 0
	mr 3,30
.LVL3330:
	bl _ZdaPv
	.loc 8 197 0
	li 0,0
	stw 0,56(1)
	.loc 8 198 0
	stw 0,44(1)
	.loc 8 199 0
	stw 0,48(1)
	b .L2359
.LVL3331:
.L2402:
	mr 31,3
.LVL3332:
.LBE12316:
.LBE12315:
.LBE12319:
.LBE12322:
.LBE12325:
.LBE12338:
.LBE12434:
	.loc 4 1401 0
	addi 3,1,20
	bl _ZN13idRestoreGameD1Ev
.L2398:
	mr 3,30
	bl _ZN6idDictD1Ev
	mr 3,31
.LEHB209:
	bl _Unwind_Resume
.LEHE209:
.LVL3333:
.L2406:
	mr 31,3
.LVL3334:
.LBB12435:
.LBB12367:
.LBB12366:
.LBB12360:
.LBB12361:
.LBB12362:
	.loc 15 130 0
	addi 3,1,60
.LVL3335:
	bl _ZN11idHashIndex4FreeEv
.LVL3336:
.L2394:
.LBE12362:
.LBE12361:
.LBE12360:
.LBB12363:
.LBB12364:
.LBB12365:
	.loc 8 181 0
	mr 3,30
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB210:
	bl _Unwind_Resume
.LVL3337:
.L2403:
	mr 31,3
.LVL3338:
.L2368:
.LBE12365:
.LBE12364:
.LBE12363:
.LBE12366:
.LBE12367:
.LBE12435:
.LBB12436:
.LBB12339:
.LBB12340:
.LBB12341:
	addi 3,1,44
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE210:
.LVL3339:
.L2405:
	mr 31,3
	b .L2394
.LVL3340:
.L2401:
	mr 31,3
	b .L2398
.LVL3341:
.L2404:
	mr 31,3
.LVL3342:
.LBE12341:
.LBE12340:
.LBE12339:
.LBB12342:
.LBB12343:
.LBB12344:
	.loc 15 130 0
	addi 3,1,60
.LVL3343:
	bl _ZN11idHashIndex4FreeEv
.LVL3344:
	b .L2368
.LBE12344:
.LBE12343:
.LBE12342:
.LBE12436:
.LBE12441:
	.cfi_endproc
.LFE2863:
	.section	.gcc_except_table
.LLSDA2863:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2863-.LLSDACSB2863
.LLSDACSB2863:
	.uleb128 .LEHB201-.LFB2863
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L2403-.LFB2863
	.uleb128 0
	.uleb128 .LEHB202-.LFB2863
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L2404-.LFB2863
	.uleb128 0
	.uleb128 .LEHB203-.LFB2863
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L2401-.LFB2863
	.uleb128 0
	.uleb128 .LEHB204-.LFB2863
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L2402-.LFB2863
	.uleb128 0
	.uleb128 .LEHB205-.LFB2863
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L2401-.LFB2863
	.uleb128 0
	.uleb128 .LEHB206-.LFB2863
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L2406-.LFB2863
	.uleb128 0
	.uleb128 .LEHB207-.LFB2863
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L2405-.LFB2863
	.uleb128 0
	.uleb128 .LEHB208-.LFB2863
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L2402-.LFB2863
	.uleb128 0
	.uleb128 .LEHB209-.LFB2863
	.uleb128 .LEHE209-.LEHB209
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB210-.LFB2863
	.uleb128 .LEHE210-.LEHB210
	.uleb128 0
	.uleb128 0
.LLSDACSE2863:
	.section	".text"
	.size	_ZN11idGameLocal16InitFromSaveGameEPKcP13idRenderWorldP12idSoundWorldP6idFile, .-_ZN11idGameLocal16InitFromSaveGameEPKcP13idRenderWorldP12idSoundWorldP6idFile
	.section	.text.startup,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I_gameRenderWorld, @function
_GLOBAL__sub_I_gameRenderWorld:
.LFB3368:
	.loc 4 4268 0
	.cfi_startproc
	.loc 4 4268 0
	li 3,1
	b _Z41__static_initialization_and_destruction_0ii.constprop.98
	.cfi_endproc
.LFE3368:
	.size	_GLOBAL__sub_I_gameRenderWorld, .-_GLOBAL__sub_I_gameRenderWorld
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I_gameRenderWorld
	.section	.text.exit,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_D_gameRenderWorld, @function
_GLOBAL__sub_D_gameRenderWorld:
.LFB3369:
	.loc 4 4268 0
	.cfi_startproc
	.loc 4 4268 0
	li 3,0
	b _Z41__static_initialization_and_destruction_0ii.constprop.98
	.cfi_endproc
.LFE3369:
	.size	_GLOBAL__sub_D_gameRenderWorld, .-_GLOBAL__sub_D_gameRenderWorld
	.section	.dtors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_D_gameRenderWorld
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
	.weak	_ZTS11idGameLocal
	.section	.rodata._ZTS11idGameLocal,"aG",@progbits,_ZTS11idGameLocal,comdat
	.align 2
	.type	_ZTS11idGameLocal, @object
	.size	_ZTS11idGameLocal, 14
_ZTS11idGameLocal:
	.string	"11idGameLocal"
	.weak	_ZTI11idGameLocal
	.section	.rodata._ZTI11idGameLocal,"aG",@progbits,_ZTI11idGameLocal,comdat
	.align 2
	.type	_ZTI11idGameLocal, @object
	.size	_ZTI11idGameLocal, 12
_ZTI11idGameLocal:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS11idGameLocal
	.long	_ZTI6idGame
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
	.weak	_ZTV11idGameLocal
	.section	.rodata._ZTV11idGameLocal,"aG",@progbits,_ZTV11idGameLocal,comdat
	.align 3
	.type	_ZTV11idGameLocal, @object
	.size	_ZTV11idGameLocal, 176
_ZTV11idGameLocal:
	.long	0
	.long	_ZTI11idGameLocal
	.long	_ZN11idGameLocalD1Ev
	.long	_ZN11idGameLocalD0Ev
	.long	_ZN11idGameLocal4InitEv
	.long	_ZN11idGameLocal8ShutdownEv
	.long	_ZN11idGameLocal14SetLocalClientEi
	.long	_ZN11idGameLocal11SetUserInfoEiRK6idDictbb
	.long	_ZN11idGameLocal11GetUserInfoEi
	.long	_ZN11idGameLocal16ThrottleUserInfoEv
	.long	_ZN11idGameLocal13SetServerInfoERK6idDict
	.long	_ZN11idGameLocal23GetPersistentPlayerInfoEi
	.long	_ZN11idGameLocal23SetPersistentPlayerInfoEiRK6idDict
	.long	_ZN11idGameLocal14InitFromNewMapEPKcP13idRenderWorldP12idSoundWorldbbi
	.long	_ZN11idGameLocal16InitFromSaveGameEPKcP13idRenderWorldP12idSoundWorldP6idFile
	.long	_ZN11idGameLocal8SaveGameEP6idFile
	.long	_ZN11idGameLocal11MapShutdownEv
	.long	_ZN11idGameLocal20CacheDictionaryMediaEPK6idDict
	.long	_ZN11idGameLocal11SpawnPlayerEi
	.long	_ZN11idGameLocal8RunFrameEPK9usercmd_t
	.long	_ZN11idGameLocal4DrawEi
	.long	_ZN11idGameLocal9HandleESCEPP15idUserInterface
	.long	_ZN11idGameLocal9StartMenuEv
	.long	_ZN11idGameLocal17HandleGuiCommandsEPKc
	.long	_ZN11idGameLocal22HandleMainMenuCommandsEPKcP15idUserInterface
	.long	_ZN11idGameLocal17ServerAllowClientEiPKcS1_S1_Pc
	.long	_ZN11idGameLocal19ServerClientConnectEiPKc
	.long	_ZN11idGameLocal17ServerClientBeginEi
	.long	_ZN11idGameLocal22ServerClientDisconnectEi
	.long	_ZN11idGameLocal34ServerWriteInitialReliableMessagesEi
	.long	_ZN11idGameLocal19ServerWriteSnapshotEiiR8idBitMsgPhi
	.long	_ZN11idGameLocal19ServerApplySnapshotEii
	.long	_ZN11idGameLocal28ServerProcessReliableMessageEiRK8idBitMsg
	.long	_ZN11idGameLocal18ClientReadSnapshotEiiiiiiRK8idBitMsg
	.long	_ZN11idGameLocal19ClientApplySnapshotEii
	.long	_ZN11idGameLocal28ClientProcessReliableMessageEiRK8idBitMsg
	.long	_ZN11idGameLocal16ClientPredictionEiPK9usercmd_tb
	.long	_ZN11idGameLocal15SelectTimeGroupEi
	.long	_ZN11idGameLocal16GetTimeGroupTimeEi
	.long	_ZN11idGameLocal15GetBestGameTypeEPKcS1_Pc
	.long	_ZN11idGameLocal14GetClientStatsEiPci
	.long	_ZN11idGameLocal10SwitchTeamEii
	.long	_ZN11idGameLocal15DownloadRequestEPKcS1_S1_Pc
	.long	_ZN11idGameLocal16GetMapLoadingGUIEPc
	.globl _ZN11idGameLocal15sufaceTypeNamesE
	.globl game
	.globl gameLocal
	.globl animationLib
	.globl gameSoundWorld
	.globl gameRenderWorld
	.weak	_ZTV6idGame
	.section	.rodata._ZTV6idGame,"aG",@progbits,_ZTV6idGame,comdat
	.align 3
	.type	_ZTV6idGame, @object
	.size	_ZTV6idGame, 176
_ZTV6idGame:
	.long	0
	.long	_ZTI6idGame
	.long	_ZN6idGameD1Ev
	.long	_ZN6idGameD0Ev
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.weak	_ZTV6idDecl
	.section	.rodata._ZTV6idDecl,"aG",@progbits,_ZTV6idDecl,comdat
	.align 3
	.type	_ZTV6idDecl, @object
	.size	_ZTV6idDecl, 44
_ZTV6idDecl:
	.long	0
	.long	_ZTI6idDecl
	.long	_ZN6idDeclD1Ev
	.long	_ZN6idDeclD0Ev
	.long	_ZN6idDecl14SetDefaultTextEv
	.long	_ZNK6idDecl17DefaultDefinitionEv
	.long	_ZN6idDecl5ParseEPKci
	.long	_ZN6idDecl8FreeDataEv
	.long	_ZNK6idDecl4SizeEv
	.long	_ZNK6idDecl4ListEv
	.long	_ZNK6idDecl5PrintEv
	.weak	_ZTI12idAllocError
	.section	.rodata._ZTI12idAllocError,"aG",@progbits,_ZTI12idAllocError,comdat
	.align 2
	.type	_ZTI12idAllocError, @object
	.size	_ZTI12idAllocError, 12
_ZTI12idAllocError:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12idAllocError
	.long	_ZTI11idException
	.weak	_ZTI6idGame
	.section	.sdata._ZTI6idGame,"awG",@progbits,_ZTI6idGame,comdat
	.align 2
	.type	_ZTI6idGame, @object
	.size	_ZTI6idGame, 8
_ZTI6idGame:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS6idGame
	.weak	_ZTI6idDecl
	.section	.sdata._ZTI6idDecl,"awG",@progbits,_ZTI6idDecl,comdat
	.align 2
	.type	_ZTI6idDecl, @object
	.size	_ZTI6idDecl, 8
_ZTI6idDecl:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS6idDecl
	.weak	_ZTS12idAllocError
	.section	.rodata._ZTS12idAllocError,"aG",@progbits,_ZTS12idAllocError,comdat
	.align 2
	.type	_ZTS12idAllocError, @object
	.size	_ZTS12idAllocError, 15
_ZTS12idAllocError:
	.string	"12idAllocError"
	.weak	_ZTI11idException
	.section	.sdata._ZTI11idException,"awG",@progbits,_ZTI11idException,comdat
	.align 2
	.type	_ZTI11idException, @object
	.size	_ZTI11idException, 8
_ZTI11idException:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS11idException
	.weak	_ZTS6idGame
	.section	.sdata._ZTS6idGame,"awG",@progbits,_ZTS6idGame,comdat
	.align 2
	.type	_ZTS6idGame, @object
	.size	_ZTS6idGame, 8
_ZTS6idGame:
	.string	"6idGame"
	.weak	_ZTS6idDecl
	.section	.sdata._ZTS6idDecl,"awG",@progbits,_ZTS6idDecl,comdat
	.align 2
	.type	_ZTS6idDecl, @object
	.size	_ZTS6idDecl, 8
_ZTS6idDecl:
	.string	"6idDecl"
	.weak	_ZTS11idException
	.section	.rodata._ZTS11idException,"aG",@progbits,_ZTS11idException,comdat
	.align 2
	.type	_ZTS11idException, @object
	.size	_ZTS11idException, 14
_ZTS11idException:
	.string	"11idException"
	.weak	_ZN6idDeclD1Ev
	.set	_ZN6idDeclD1Ev,_ZN6idDeclD2Ev
	.weak	_ZN6idGameD1Ev
	.set	_ZN6idGameD1Ev,_ZN6idGameD2Ev
	.weak	_ZN9idWindingD1Ev
	.set	_ZN9idWindingD1Ev,_ZN9idWindingD2Ev
	.weak	_ZN14idFixedWindingD1Ev
	.set	_ZN14idFixedWindingD1Ev,_ZN14idFixedWindingD2Ev
	.weak	_ZN6idClipD1Ev
	.set	_ZN6idClipD1Ev,_ZN6idClipD2Ev
	.weak	_ZN17idMultiplayerGameD1Ev
	.set	_ZN17idMultiplayerGameD1Ev,_ZN17idMultiplayerGameD2Ev
	.weak	_ZN6idDictD1Ev
	.set	_ZN6idDictD1Ev,_ZN6idDictD2Ev
	.weak	_ZN11idGameLocalD1Ev
	.set	_ZN11idGameLocalD1Ev,_ZN11idGameLocalD2Ev
	.globl _ZN11idGameLocalC1Ev
	.set	_ZN11idGameLocalC1Ev,_ZN11idGameLocalC2Ev
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560836
.LC2:
	.4byte	0
.LC16:
	.4byte	1065353216
.LC17:
	.4byte	1092616192
.LC18:
	.4byte	1091567616
.LC20:
	.4byte	1135869952
.LC22:
	.4byte	1139802112
.LC24:
	.4byte	1142947840
.LC27:
	.4byte	1098907648
.LC30:
	.4byte	1084227584
.LC31:
	.4byte	-1065353216
.LC32:
	.4byte	1082130432
.LC33:
	.4byte	1124073472
.LC34:
	.4byte	1140850688
.LC35:
	.4byte	1056964608
.LC36:
	.4byte	1069547520
.LC37:
	.4byte	989855744
.LC38:
	.4byte	1036831949
.LC40:
	.4byte	1090519040
.LC41:
	.4byte	-1056964608
.LC43:
	.4byte	1120403456
.LC44:
	.4byte	1128792064
.LC50:
	.4byte	1112014848
.LC51:
	.4byte	1176256512
.LC53:
	.4byte	.LC49
.LC121:
	.4byte	1103101952
.LC122:
	.4byte	-1082130432
.LC123:
	.4byte	939524096
.LC124:
	.4byte	-1295168344
.LC125:
	.4byte	909687119
.LC126:
	.4byte	961547267
.LC127:
	.4byte	1007192199
.LC128:
	.4byte	1042983595
.LC129:
	.4byte	-1265902887
.LC130:
	.4byte	936359329
.LC131:
	.4byte	985008570
.LC132:
	.4byte	1026206372
.LC133:
	.4byte	1115684864
.LC137:
	.4byte	1077936128
.LC203:
	.4byte	-997900288
.LC221:
	.4byte	1073741824
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC45:
	.4byte	0
	.4byte	0
.LC47:
	.4byte	1062232653
	.4byte	-755914244
	.section	".data"
	.align 2
	.type	_ZN11idGameLocal15sufaceTypeNamesE, @object
	.size	_ZN11idGameLocal15sufaceTypeNamesE, 64
_ZN11idGameLocal15sufaceTypeNamesE:
	.long	.LC238
	.long	.LC239
	.long	.LC240
	.long	.LC241
	.long	.LC242
	.long	.LC243
	.long	.LC244
	.long	.LC245
	.long	.LC246
	.long	.LC247
	.long	.LC248
	.long	.LC249
	.long	.LC250
	.long	.LC251
	.long	.LC252
	.long	.LC253
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC3:
	.string	""
	.zero	3
.LC4:
	.string	"ui_name"
.LC5:
	.string	"%s_"
.LC6:
	.string	"gameExport_t *GetGameAPI( gameImport_t *import )\r\n"
	.zero	1
.LC7:
	.string	"void TestGameAPI( void )\r\n"
	.zero	1
.LC8:
	.string	"%s"
	.zero	1
.LC9:
	.string	"--------- Game Map Shutdown ----------\n"
.LC10:
	.string	"--------------------------------------\n"
.LC11:
	.string	"void idGameLocal::DumpOggSounds( void )\r\n"
	.zero	2
.LC12:
	.string	"void idGameLocal::GetShakeSounds( const idDict *dict )\r\n"
	.zero	3
.LC13:
	.string	"frameCommands"
	.zero	2
.LC14:
	.string	"doom_main"
	.zero	2
.LC15:
	.string	"Player '%s' not found\n"
	.zero	1
.LC19:
	.string	"idGameLocal::CalcFov: FPU stack not empty"
	.zero	2
.LC25:
	.string	"idGameLocal::CalcFov: bad result"
	.zero	3
.LC29:
	.string	"Unknown function '%s' called for frame command on entity '%s'"
	.zero	2
.LC39:
	.string	"#%d"
.LC46:
	.string	">>> idGameLocal::RunFrame\r\n"
.LC48:
	.string	"%d: entity '%s': %.1f ms\n"
	.zero	2
.LC49:
	.string	"game %d: all:%.1f th:%.1f ev:%.1f %d ents \n"
.LC52:
	.string	"Exceeded maximum cinematic skip length.  Cinematic may be looping infinitely."
	.zero	2
.LC54:
	.string	"net_allowCheats"
.LC55:
	.string	"Not allowed in multiplayer.\n"
	.zero	3
.LC56:
	.string	"You must be alive to use this command.\n"
.LC57:
	.string	"idGameLocal::RegisterEntity: spawn count overflow"
	.zero	2
.LC58:
	.string	"spawn_entnum"
	.zero	3
.LC59:
	.string	"0"
	.zero	2
.LC60:
	.string	"no free entities"
	.zero	3
.LC61:
	.string	"Attempted to spawn non-entity class '%s'"
	.zero	3
.LC62:
	.string	"%s_mp"
	.zero	2
.LC63:
	.string	"name"
	.zero	3
.LC64:
	.string	" on '%s'"
	.zero	3
.LC65:
	.string	"classname"
	.zero	2
.LC66:
	.string	"Unknown classname '%s'%s."
	.zero	2
.LC67:
	.string	"spawnclass"
	.zero	1
.LC68:
	.string	"Could not spawn '%s'.  Class '%s' not found%s."
	.zero	1
.LC69:
	.string	"Could not spawn '%s'. Instance could not be created%s."
	.zero	1
.LC70:
	.string	"spawnfunc"
	.zero	2
.LC71:
	.string	"Could not spawn '%s'.  Script function '%s' not found%s."
	.zero	3
.LC72:
	.string	"%s doesn't include a spawnfunc or spawnclass%s."
.LC73:
	.string	"fx/teleporter.fx"
	.zero	3
.LC74:
	.string	"com_makingBuild"
.LC75:
	.string	"model"
	.zero	2
.LC76:
	.string	"Precaching model %s\n"
	.zero	3
.LC77:
	.string	"s_shader"
	.zero	3
.LC78:
	.string	"snd"
.LC79:
	.string	"gui"
.LC80:
	.string	"gui_noninteractive"
	.zero	1
.LC81:
	.string	"gui_parm"
	.zero	3
.LC82:
	.string	"gui_inventory"
	.zero	2
.LC83:
	.string	"texture"
.LC84:
	.string	"mtr"
.LC85:
	.string	"inv_icon"
	.zero	3
.LC86:
	.string	"teleport"
	.zero	3
.LC87:
	.string	"fx/teleporter%i.fx"
	.zero	1
.LC88:
	.string	"fx"
	.zero	1
.LC89:
	.string	"Precaching fx %s\n"
	.zero	2
.LC90:
	.string	"smoke"
	.zero	2
.LC91:
	.string	"skin"
	.zero	3
.LC92:
	.string	"Precaching skin %s\n"
.LC93:
	.string	"def"
.LC94:
	.string	"pda_name"
	.zero	3
.LC95:
	.string	"video"
	.zero	2
.LC96:
	.string	"audio"
	.zero	2
.LC97:
	.string	"Precaching gui %s\n"
	.zero	1
.LC98:
	.string	"not_multiplayer"
.LC99:
	.string	"not_easy"
	.zero	3
.LC100:
	.string	"not_medium"
	.zero	1
.LC101:
	.string	"not_hard"
	.zero	3
.LC102:
	.string	"item_medkit"
.LC103:
	.string	"item_medkit_small"
	.zero	2
.LC104:
	.string	"weapon_bfg"
	.zero	1
.LC105:
	.string	"weapon_soulcube"
.LC106:
	.string	"%s %s"
	.zero	2
.LC107:
	.string	"Multiple entities named '%s'"
	.zero	3
.LC108:
	.string	"damage_telefrag"
.LC109:
	.string	"'%s' telefragged '%s'"
	.zero	2
.LC111:
	.string	"Unknown damageDef '%s'"
	.zero	1
.LC112:
	.string	"damage"
	.zero	1
.LC113:
	.string	"20"
	.zero	1
.LC114:
	.string	"radius"
	.zero	1
.LC115:
	.string	"50"
	.zero	1
.LC116:
	.string	"%d"
	.zero	1
.LC117:
	.string	"push"
	.zero	3
.LC118:
	.string	"attackerDamageScale"
.LC119:
	.string	"0.5"
.LC120:
	.string	"attackerPushScale"
	.zero	2
.LC134:
	.string	"disconnect"
	.zero	1
.LC135:
	.string	"%i"
	.zero	1
.LC136:
	.string	"r_znear"
.LC138:
	.string	"disconnect\n"
.LC139:
	.string	"ignore_enemies"
	.zero	1
.LC140:
	.string	"removing '%s' for cinematic\n"
	.zero	3
.LC141:
	.string	"cinematic_remove"
	.zero	3
.LC142:
	.string	"instantSkip"
.LC143:
	.string	"origin"
	.zero	1
.LC144:
	.string	"SpreadLocations: location '%s' is not in a valid area\n"
	.zero	1
.LC145:
	.string	"idGameLocal::SpreadLocations: areaNum >= gameRenderWorld->NumAreas()"
	.zero	3
.LC146:
	.string	"location entity '%s' overlaps '%s'"
	.zero	1
.LC147:
	.string	"idGameLocal::LocationForPoint: areaNum >= gameRenderWorld->NumAreas()"
	.zero	2
.LC148:
	.string	"info_player_deathmatch"
	.zero	1
.LC149:
	.string	"initial"
.LC150:
	.string	"no info_player_deathmatch in map"
	.zero	3
.LC151:
	.string	"%d spawns (%d initials)\n"
	.zero	3
.LC152:
	.string	"no info_player_deathmatch entities marked initial in map"
	.zero	3
.LC153:
	.string	"info_player_start"
	.zero	2
.LC154:
	.string	"No info_player_start on map.\n"
	.zero	2
.LC155:
	.string	"si_gameType"
.LC156:
	.string	"deathmatch"
	.zero	1
.LC157:
	.string	"Tourney"
.LC158:
	.string	"Team DM"
.LC159:
	.string	"Last Man"
	.zero	3
.LC160:
	.string	"si_warmup"
	.zero	2
.LC161:
	.string	"Last Man Standing - forcing warmup on"
	.zero	2
.LC162:
	.string	"si_fraglimit"
	.zero	3
.LC163:
	.string	"Last Man Standing - setting fraglimit 1"
.LC164:
	.string	"--------- Initializing Game ----------\n"
.LC165:
	.string	"gamename: %s\n"
	.zero	2
.LC166:
	.string	"baseDOOM-1"
	.zero	1
.LC167:
	.string	"gamedate: %s\n"
	.zero	2
.LC168:
	.string	"Dec 11 2012"
.LC169:
	.string	"export"
	.zero	1
.LC170:
	.string	".def"
	.zero	3
.LC171:
	.string	".fx"
.LC172:
	.string	"particles"
	.zero	2
.LC173:
	.string	".prt"
	.zero	3
.LC174:
	.string	"af"
	.zero	1
.LC175:
	.string	".af"
.LC176:
	.string	"newpdas"
.LC177:
	.string	".pda"
	.zero	3
.LC178:
	.string	"listModelDefs"
	.zero	2
.LC179:
	.string	"lists model defs"
	.zero	3
.LC180:
	.string	"printModelDefs"
	.zero	1
.LC181:
	.string	"prints a model def"
	.zero	1
.LC182:
	.string	"script/doom_main.script"
.LC183:
	.string	"aas_types"
	.zero	2
.LC184:
	.string	"Unable to find entityDef for 'aas_types'"
	.zero	3
.LC185:
	.string	"type"
	.zero	3
.LC186:
	.string	"...%d aas types\n"
	.zero	3
.LC187:
	.string	"game initialized.\n"
	.zero	1
.LC188:
	.string	"si_pure"
.LC189:
	.string	"si_map"
	.zero	1
.LC190:
	.string	"player_doommarine_mp"
	.zero	3
.LC191:
	.string	"player_doommarine"
	.zero	2
.LC192:
	.string	"SpawnPlayer: %i\n"
	.zero	3
.LC193:
	.string	"player%d"
	.zero	3
.LC194:
	.string	"Failed to spawn player as '%s'"
	.zero	1
.LC195:
	.string	"'%s' spawned the player as a '%s'.  Player spawnclass must be a subclass of idPlayer."
	.zero	2
.LC196:
	.string	"#str_04294"
	.zero	1
.LC197:
	.string	"%s.scriptcfg"
	.zero	3
.LC198:
	.string	"map cycle script '%s': not found\n"
	.zero	2
.LC199:
	.string	"map cycle script: '%s'\n"
.LC200:
	.string	"mapcycle::cycle"
.LC201:
	.string	"Couldn't find mapcycle::cycle\n"
	.zero	1
.LC202:
	.string	"idGameLocal::idGameLocal() size %d\r\n"
	.zero	3
.LC204:
	.string	"Spawning entities\n"
	.zero	1
.LC205:
	.string	"No mapfile present\n"
.LC206:
	.string	"...no entities"
	.zero	1
.LC207:
	.string	"Problem spawning world entity"
	.zero	2
.LC208:
	.string	">>> idGameLocal::SpawnMapEntities SpawnEntityDef\r\n"
	.zero	1
.LC209:
	.string	">>> idGameLocal::SpawnMapEntities Virtualize animations\r\n"
	.zero	2
.LC210:
	.string	"...%i entities spawned, %i inhibited\n\n"
	.zero	1
.LC211:
	.string	"r_skipSpecular"
	.zero	1
.LC212:
	.string	"==== Processing events ====\n"
	.zero	3
.LC213:
	.string	"----------- Game Map Restart ------------\n"
	.zero	1
.LC214:
	.string	"rescanSI"
	.zero	3
.LC215:
	.string	"nextMap"
.LC216:
	.string	"server is not running\n"
	.zero	1
.LC217:
	.string	"server is not running - use spawnServer\n"
	.zero	3
.LC218:
	.string	"spawnServer\n"
	.zero	3
.LC219:
	.string	"------------ Game Shutdown -----------\n"
.LC220:
	.string	"TODO Game_local.cpp 333 collisionModelManager->FreeMap"
	.zero	1
.LC222:
	.string	">>> TRACE idGameLocal::LoadMap %s\r\n"
.LC223:
	.string	">>> TRACE idGameLocal::LoadMap mapfile\r\n"
	.zero	3
.LC224:
	.string	".map"
	.zero	3
.LC225:
	.string	"Couldn't load %s"
	.zero	3
.LC226:
	.string	">>> TRACE idGameLocal::LoadMap clear\r\n"
	.zero	1
.LC227:
	.string	">>> TRACE idGameLocal::LoadMap AAS\r\n"
	.zero	3
.LC228:
	.string	">>> TRACE idGameLocal::LoadMap smoke init\r\n"
.LC229:
	.string	">>> TRACE idGameLocal::LoadMap find entitydef\r\n"
.LC230:
	.string	"preCacheExtras"
	.zero	1
.LC231:
	.string	">>> TRACE idGameLocal::LoadMap END\r\n"
	.zero	3
.LC232:
	.string	"----------- Game Map Init ------------\n"
.LC233:
	.string	">>> TRACE idGameLocal::InitFromNewMap LoadMap\r\n"
.LC234:
	.string	">>> TRACE idGameLocal::InitFromNewMap InitScriptForMap\r\n"
	.zero	3
.LC235:
	.string	">>> TRACE idGameLocal::InitFromNewMap MapPopulate\r\n"
.LC236:
	.string	"------- Game Map Init SaveGame -------\n"
.LC237:
	.string	"idGameLocal::InitFromSaveGame: number of areas in map differs from save game."
	.zero	2
.LC238:
	.string	"none"
	.zero	3
.LC239:
	.string	"metal"
	.zero	2
.LC240:
	.string	"stone"
	.zero	2
.LC241:
	.string	"flesh"
	.zero	2
.LC242:
	.string	"wood"
	.zero	3
.LC243:
	.string	"cardboard"
	.zero	2
.LC244:
	.string	"liquid"
	.zero	1
.LC245:
	.string	"glass"
	.zero	2
.LC246:
	.string	"plastic"
.LC247:
	.string	"ricochet"
	.zero	3
.LC248:
	.string	"surftype10"
	.zero	1
.LC249:
	.string	"surftype11"
	.zero	1
.LC250:
	.string	"surftype12"
	.zero	1
.LC251:
	.string	"surftype13"
	.zero	1
.LC252:
	.string	"surftype14"
	.zero	1
.LC253:
	.string	"surftype15"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	gameSoundWorld, @object
	.size	gameSoundWorld, 4
gameSoundWorld:
	.zero	4
	.type	gameRenderWorld, @object
	.size	gameRenderWorld, 4
gameRenderWorld:
	.zero	4
	.section	.sdata,"aw",@progbits
	.align 2
	.type	game, @object
	.size	game, 4
game:
	.long	gameLocal
	.section	".bss"
	.align 3
	.set	.LANCHOR0,. + 0
	.type	gameLocal, @object
	.size	gameLocal, 2562416
gameLocal:
	.zero	2562416
	.type	_ZGVZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcfE12decalWinding, @object
	.size	_ZGVZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcfE12decalWinding, 8
_ZGVZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcfE12decalWinding:
	.zero	8
	.type	_ZZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcfE12decalWinding, @object
	.size	_ZZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcfE12decalWinding, 48
_ZZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcfE12decalWinding:
	.zero	48
	.type	_ZL20CINEMATIC_SKIP_DELAY, @object
	.size	_ZL20CINEMATIC_SKIP_DELAY, 4
_ZL20CINEMATIC_SKIP_DELAY:
	.zero	4
	.type	_ZL22NUM_RENDER_PORTAL_BITS, @object
	.size	_ZL22NUM_RENDER_PORTAL_BITS, 4
_ZL22NUM_RENDER_PORTAL_BITS:
	.zero	4
	.type	_ZL20DEFAULT_GRAVITY_VEC3, @object
	.size	_ZL20DEFAULT_GRAVITY_VEC3, 12
_ZL20DEFAULT_GRAVITY_VEC3:
	.zero	12
	.type	_ZL26ASYNC_PLAYER_INV_AMMO_BITS, @object
	.size	_ZL26ASYNC_PLAYER_INV_AMMO_BITS, 4
_ZL26ASYNC_PLAYER_INV_AMMO_BITS:
	.zero	4
	.type	animationLib, @object
	.size	animationLib, 60
animationLib:
	.zero	60
	.section	".text"
.Letext0:
	.file 30 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 31 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stdarg.h"
	.file 32 "<built-in>"
	.file 33 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 34 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../sys/sys_public.h"
	.file 35 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Common.h"
	.file 36 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/FileSystem.h"
	.file 37 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Lib.h"
	.file 38 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Angles.h"
	.file 39 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Quat.h"
	.file 40 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Rotation.h"
	.file 41 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Plane.h"
	.file 42 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Ode.h"
	.file 43 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Sphere.h"
	.file 44 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Box.h"
	.file 45 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Frustum.h"
	.file 46 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/DrawVert.h"
	.file 47 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/JointTransform.h"
	.file 48 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/Surface.h"
	.file 49 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Token.h"
	.file 50 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Lexer.h"
	.file 51 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/File.h"
	.file 52 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Parser.h"
	.file 53 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/StrList.h"
	.file 54 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/StrPool.h"
	.file 55 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/PlaneSet.h"
	.file 56 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/LangDict.h"
	.file 57 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/UsercmdGen.h"
	.file 58 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclParticle.h"
	.file 59 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/RenderWorld.h"
	.file 60 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Cinematic.h"
	.file 61 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Material.h"
	.file 62 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Model.h"
	.file 63 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/RenderSystem.h"
	.file 64 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../sound/sound.h"
	.file 65 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../ui/UserInterface.h"
	.file 66 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../cm/CollisionModel.h"
	.file 67 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../tools/compilers/aas/AASFile.h"
	.file 68 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/NetworkSystem.h"
	.file 69 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/ModelManager.h"
	.file 70 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../tools/compilers/aas/AASFileManager.h"
	.file 71 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Session.h"
	.file 72 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../ui/ListGUI.h"
	.file 73 "d:/Data/Nintendo/DoomGX/src/game/gamesys/Event.h"
	.file 74 "d:/Data/Nintendo/DoomGX/src/game/gamesys/SaveGame.h"
	.file 75 "d:/Data/Nintendo/DoomGX/src/game/Entity.h"
	.file 76 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/Hierarchy.h"
	.file 77 "d:/Data/Nintendo/DoomGX/src/game/anim/Anim.h"
	.file 78 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/HashTable.h"
	.file 79 "d:/Data/Nintendo/DoomGX/src/game/ai/AAS.h"
	.file 80 "d:/Data/Nintendo/DoomGX/src/game/physics/Push.h"
	.file 81 "d:/Data/Nintendo/DoomGX/src/game/Pvs.h"
	.file 82 "d:/Data/Nintendo/DoomGX/src/game/Actor.h"
	.file 83 "d:/Data/Nintendo/DoomGX/src/game/SmokeParticles.h"
	.file 84 "d:/Data/Nintendo/DoomGX/src/game/GameEdit.h"
	.file 85 "d:/Data/Nintendo/DoomGX/src/game/AFEntity.h"
	.file 86 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Thread.h"
	.file 87 "d:/Data/Nintendo/DoomGX/src/game/ai/AI.h"
	.file 88 "d:/Data/Nintendo/DoomGX/src/game/WorldSpawn.h"
	.file 89 "d:/Data/Nintendo/DoomGX/src/game/anim/Anim_Testmodel.h"
	.file 90 "d:/Data/Nintendo/DoomGX/src/game/Misc.h"
	.file 91 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Console.h"
	.file 92 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Curve.h"
	.file 93 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Simd.h"
	.file 94 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/BuildVersion.h"
	.file 95 "d:/Data/Nintendo/DoomGX/src/game/../idlib/precompiled.h"
	.file 96 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/EventLoop.h"
	.file 97 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/EditField.h"
	.file 98 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/AsyncNetwork.h"
	.file 99 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/AsyncServer.h"
	.file 100 "d:/Data/Nintendo/DoomGX/src/game/gamesys/SysCvar.h"
	.file 101 "d:/Data/Nintendo/DoomGX/src/game/Weapon.h"
	.file 102 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Compiler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x46c93
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF8501
	.byte	0x4
	.4byte	.LASF8502
	.4byte	.LASF8503
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x7e08
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1e
	.byte	0xd4
	.4byte	0x34
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1f
	.byte	0x28
	.4byte	0x46
	.uleb128 0x4
	.4byte	0x56
	.4byte	0x56
	.uleb128 0x5
	.4byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF274
	.byte	0xc
	.byte	0x20
	.byte	0
	.4byte	0xa9
	.uleb128 0x7
	.string	"gpr"
	.byte	0x20
	.byte	0
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"fpr"
	.byte	0x20
	.byte	0
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.4byte	.LASF2
	.byte	0x20
	.byte	0
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.4byte	.LASF3
	.byte	0x20
	.byte	0
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF4
	.byte	0x20
	.byte	0
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	0xa9
	.4byte	0xec
	.uleb128 0x5
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa9
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10c
	.uleb128 0xc
	.4byte	0xff
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x21
	.byte	0x6e
	.4byte	0x111
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x1f
	.byte	0x66
	.4byte	0x3b
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0xd
	.byte	0x4
	.byte	0x22
	.byte	0xae
	.4byte	.LASF36
	.4byte	0x1b5
	.uleb128 0xe
	.4byte	.LASF20
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF21
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF22
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF23
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF24
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF25
	.sleb128 16
	.uleb128 0xe
	.4byte	.LASF26
	.sleb128 32
	.uleb128 0xe
	.4byte	.LASF27
	.sleb128 64
	.uleb128 0xe
	.4byte	.LASF28
	.sleb128 128
	.uleb128 0xe
	.4byte	.LASF29
	.sleb128 256
	.uleb128 0xe
	.4byte	.LASF30
	.sleb128 512
	.uleb128 0xe
	.4byte	.LASF31
	.sleb128 4096
	.uleb128 0xe
	.4byte	.LASF32
	.sleb128 8192
	.uleb128 0xe
	.4byte	.LASF33
	.sleb128 16384
	.uleb128 0xe
	.4byte	.LASF34
	.sleb128 32768
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x22
	.byte	0xbe
	.4byte	0x143
	.uleb128 0xd
	.byte	0x4
	.byte	0x22
	.byte	0xe0
	.4byte	.LASF37
	.4byte	0x1f1
	.uleb128 0xe
	.4byte	.LASF38
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF39
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF40
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF41
	.sleb128 3
	.uleb128 0xe
	.4byte	.LASF42
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF43
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x22
	.byte	0xe7
	.4byte	0x1c0
	.uleb128 0xf
	.byte	0x18
	.byte	0x22
	.2byte	0x102
	.4byte	.LASF57
	.4byte	0x264
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x22
	.2byte	0x103
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x22
	.2byte	0x104
	.4byte	0x1f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x22
	.2byte	0x105
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x22
	.2byte	0x106
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x22
	.2byte	0x107
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x22
	.2byte	0x108
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x22
	.2byte	0x109
	.4byte	0x1fc
	.uleb128 0x12
	.byte	0x4
	.byte	0x22
	.2byte	0x1bd
	.4byte	.LASF3755
	.4byte	0x296
	.uleb128 0xe
	.4byte	.LASF52
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF53
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF54
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF55
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x22
	.2byte	0x1c2
	.4byte	0x270
	.uleb128 0xf
	.byte	0xc
	.byte	0x22
	.2byte	0x1c4
	.4byte	.LASF58
	.4byte	0x2dc
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x22
	.2byte	0x1c5
	.4byte	0x296
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"ip"
	.byte	0x22
	.2byte	0x1c6
	.4byte	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x22
	.2byte	0x1c7
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x22
	.2byte	0x1c8
	.4byte	0x2a2
	.uleb128 0x14
	.4byte	.LASF3940
	.byte	0x1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2e8
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x4
	.byte	0x23
	.byte	0x70
	.4byte	0x2f4
	.4byte	0x7fe
	.uleb128 0x16
	.4byte	.LASF122
	.4byte	0x322fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF124
	.byte	0x23
	.byte	0x72
	.byte	0x1
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x327
	.4byte	0x334
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF62
	.byte	0x23
	.byte	0x77
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x351
	.4byte	0x367
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x120d7
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF63
	.byte	0x23
	.byte	0x7a
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x384
	.4byte	0x38b
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF66
	.byte	0x23
	.byte	0x7d
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x3a8
	.4byte	0x3af
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF108
	.byte	0x23
	.byte	0x80
	.4byte	.LASF110
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x3d0
	.4byte	0x3d7
	.uleb128 0x18
	.4byte	0x33d43
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF68
	.byte	0x23
	.byte	0x83
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x3f4
	.4byte	0x3fb
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF70
	.byte	0x23
	.byte	0x86
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x418
	.4byte	0x429
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1601
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF72
	.byte	0x23
	.byte	0x8a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x446
	.4byte	0x44d
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF74
	.byte	0x23
	.byte	0x90
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x46a
	.4byte	0x47b
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF76
	.byte	0x23
	.byte	0x93
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x498
	.4byte	0x4a9
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x18246
	.uleb128 0x1a
	.4byte	0x14908
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF78
	.byte	0x23
	.byte	0x96
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x4c6
	.4byte	0x4d2
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF80
	.byte	0x23
	.byte	0x99
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x4ef
	.4byte	0x4fb
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF82
	.byte	0x23
	.byte	0x9c
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x518
	.4byte	0x52e
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF84
	.byte	0x23
	.byte	0x9f
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x54b
	.4byte	0x561
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xf9
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x18130
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF86
	.byte	0x23
	.byte	0xa2
	.4byte	.LASF87
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x57e
	.4byte	0x585
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF88
	.byte	0x23
	.byte	0xa5
	.4byte	.LASF89
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x5a2
	.4byte	0x5ae
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF90
	.byte	0x23
	.byte	0xa8
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x5cb
	.4byte	0x5d8
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF92
	.byte	0x23
	.byte	0xab
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x5f5
	.4byte	0x606
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0xff9b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF94
	.byte	0x23
	.byte	0xaf
	.4byte	.LASF95
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x623
	.4byte	0x630
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF96
	.byte	0x23
	.byte	0xb2
	.4byte	.LASF97
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x64d
	.4byte	0x65a
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF98
	.byte	0x23
	.byte	0xb5
	.4byte	.LASF99
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x677
	.4byte	0x684
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF100
	.byte	0x23
	.byte	0xb8
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x6a1
	.4byte	0x6a8
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF102
	.byte	0x23
	.byte	0xbb
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x6c5
	.4byte	0x6d1
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF104
	.byte	0x23
	.byte	0xbf
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x6ee
	.4byte	0x6fb
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF106
	.byte	0x23
	.byte	0xc3
	.4byte	.LASF107
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x718
	.4byte	0x725
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF109
	.byte	0x23
	.byte	0xc6
	.4byte	.LASF111
	.4byte	0x15170
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1a
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x746
	.4byte	0x74d
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF112
	.byte	0x23
	.byte	0xc9
	.4byte	.LASF113
	.4byte	0x106
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1b
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x76e
	.4byte	0x77a
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF114
	.byte	0x23
	.byte	0xcc
	.4byte	.LASF115
	.4byte	0x106
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x79b
	.4byte	0x7a7
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF116
	.byte	0x23
	.byte	0xcf
	.4byte	.LASF117
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1d
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x7c8
	.4byte	0x7d4
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF118
	.byte	0x23
	.byte	0xd2
	.4byte	.LASF119
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1e
	.4byte	0x2f4
	.byte	0x1
	.4byte	0x7f1
	.uleb128 0x18
	.4byte	0x7fe
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2f4
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x4
	.byte	0x7
	.byte	0xd0
	.4byte	0x804
	.4byte	0xc62
	.uleb128 0x16
	.4byte	.LASF123
	.4byte	0x322fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF125
	.byte	0x7
	.byte	0xd2
	.byte	0x1
	.4byte	0x804
	.byte	0x1
	.4byte	0x837
	.4byte	0x844
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF62
	.byte	0x7
	.byte	0xd4
	.4byte	.LASF126
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0x804
	.byte	0x1
	.4byte	0x861
	.4byte	0x868
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF63
	.byte	0x7
	.byte	0xd5
	.4byte	.LASF127
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0x804
	.byte	0x1
	.4byte	0x885
	.4byte	0x88c
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF108
	.byte	0x7
	.byte	0xd6
	.4byte	.LASF128
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0x804
	.byte	0x1
	.4byte	0x8ad
	.4byte	0x8b4
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF129
	.byte	0x7
	.byte	0xd9
	.4byte	.LASF130
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x804
	.byte	0x1
	.4byte	0x8d1
	.4byte	0x8dd
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x208b6
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF131
	.byte	0x7
	.byte	0xdd
	.4byte	.LASF132
	.4byte	0x208b6
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0x804
	.byte	0x1
	.4byte	0x8fe
	.4byte	0x90a
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF133
	.byte	0x7
	.byte	0xe0
	.4byte	.LASF134
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0x804
	.byte	0x1
	.4byte	0x927
	.4byte	0x93d
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF135
	.byte	0x7
	.byte	0xe1
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0x804
	.byte	0x1
	.4byte	0x95a
	.4byte	0x970
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF137
	.byte	0x7
	.byte	0xe2
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0x804
	.byte	0x1
	.4byte	0x98d
	.4byte	0x9a3
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF139
	.byte	0x7
	.byte	0xe3
	.4byte	.LASF140
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0x804
	.byte	0x1
	.4byte	0x9c0
	.4byte	0x9d6
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF141
	.byte	0x7
	.byte	0xe6
	.4byte	.LASF142
	.4byte	0x106
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0x804
	.byte	0x1
	.4byte	0x9f7
	.4byte	0xa03
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF143
	.byte	0x7
	.byte	0xe7
	.4byte	.LASF144
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0x804
	.byte	0x1
	.4byte	0xa24
	.4byte	0xa30
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF145
	.byte	0x7
	.byte	0xe8
	.4byte	.LASF146
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0x804
	.byte	0x1
	.4byte	0xa51
	.4byte	0xa5d
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF147
	.byte	0x7
	.byte	0xe9
	.4byte	.LASF148
	.4byte	0x135
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0x804
	.byte	0x1
	.4byte	0xa7e
	.4byte	0xa8a
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF149
	.byte	0x7
	.byte	0xed
	.4byte	.LASF150
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0x804
	.byte	0x1
	.4byte	0xaab
	.4byte	0xab7
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1608
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF151
	.byte	0x7
	.byte	0xf0
	.4byte	.LASF152
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0x804
	.byte	0x1
	.4byte	0xad4
	.4byte	0xae0
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x18130
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF153
	.byte	0x7
	.byte	0xf1
	.4byte	.LASF154
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0x804
	.byte	0x1
	.4byte	0xafd
	.4byte	0xb0e
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x18130
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF155
	.byte	0x7
	.byte	0xf4
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0x804
	.byte	0x1
	.4byte	0xb2b
	.4byte	0xb37
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF157
	.byte	0x7
	.byte	0xf5
	.4byte	.LASF158
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0x804
	.byte	0x1
	.4byte	0xb58
	.4byte	0xb5f
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF159
	.byte	0x7
	.byte	0xf6
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0x804
	.byte	0x1
	.4byte	0xb7c
	.4byte	0xb88
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF161
	.byte	0x7
	.byte	0xf9
	.4byte	.LASF162
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0x804
	.byte	0x1
	.4byte	0xba5
	.4byte	0xbb1
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF163
	.byte	0x7
	.byte	0xfc
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0x804
	.byte	0x1
	.4byte	0xbce
	.4byte	0xbda
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF165
	.byte	0x7
	.byte	0xff
	.4byte	.LASF166
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0x804
	.byte	0x1
	.4byte	0xbf7
	.4byte	0xc0d
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x10650
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF167
	.byte	0x7
	.2byte	0x102
	.4byte	.LASF247
	.4byte	0x14908
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x804
	.byte	0x1
	.4byte	0xc2f
	.4byte	0xc3b
	.uleb128 0x18
	.4byte	0x33d4e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF1331
	.byte	0x7
	.2byte	0x103
	.4byte	.LASF1333
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0x804
	.byte	0x1
	.4byte	0xc55
	.uleb128 0x18
	.4byte	0xc62
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x15dd3
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x804
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0x4
	.byte	0x24
	.byte	0x94
	.4byte	0xc68
	.4byte	0x158e
	.uleb128 0x16
	.4byte	.LASF169
	.4byte	0x322fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF170
	.byte	0x24
	.byte	0x96
	.byte	0x1
	.4byte	0xc68
	.byte	0x1
	.4byte	0xc9b
	.4byte	0xca8
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF62
	.byte	0x24
	.byte	0x98
	.4byte	.LASF171
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0xc68
	.byte	0x1
	.4byte	0xcc5
	.4byte	0xccc
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF172
	.byte	0x24
	.byte	0x9a
	.4byte	.LASF173
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0xc68
	.byte	0x1
	.4byte	0xce9
	.4byte	0xcf0
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF63
	.byte	0x24
	.byte	0x9c
	.4byte	.LASF174
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0xc68
	.byte	0x1
	.4byte	0xd0d
	.4byte	0xd19
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF108
	.byte	0x24
	.byte	0x9e
	.4byte	.LASF175
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0xc68
	.byte	0x1
	.4byte	0xd3a
	.4byte	0xd41
	.uleb128 0x18
	.4byte	0x33d20
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF176
	.byte	0x24
	.byte	0xa0
	.4byte	.LASF177
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0xc68
	.byte	0x1
	.4byte	0xd62
	.4byte	0xd69
	.uleb128 0x18
	.4byte	0x33d20
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF178
	.byte	0x24
	.byte	0xa4
	.4byte	.LASF179
	.4byte	0x33d2b
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0xc68
	.byte	0x1
	.4byte	0xd8a
	.4byte	0xd91
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF180
	.byte	0x24
	.byte	0xa6
	.4byte	.LASF181
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0xc68
	.byte	0x1
	.4byte	0xdae
	.4byte	0xdba
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x33d2b
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF182
	.byte	0x24
	.byte	0xac
	.4byte	.LASF183
	.4byte	0x33d31
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0xc68
	.byte	0x1
	.4byte	0xddb
	.4byte	0xdfb
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.uleb128 0x1a
	.4byte	0x1601
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF184
	.byte	0x24
	.byte	0xb1
	.4byte	.LASF185
	.4byte	0x33d31
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0xc68
	.byte	0x1
	.4byte	0xe1c
	.4byte	0xe37
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF186
	.byte	0x24
	.byte	0xb3
	.4byte	.LASF187
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0xc68
	.byte	0x1
	.4byte	0xe54
	.4byte	0xe60
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x33d31
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF188
	.byte	0x24
	.byte	0xb5
	.4byte	.LASF189
	.4byte	0x106
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0xc68
	.byte	0x1
	.4byte	0xe81
	.4byte	0xe8d
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF190
	.byte	0x24
	.byte	0xb7
	.4byte	.LASF191
	.4byte	0x106
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0xc68
	.byte	0x1
	.4byte	0xeae
	.4byte	0xebf
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF192
	.byte	0x24
	.byte	0xb9
	.4byte	.LASF193
	.4byte	0x106
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0xc68
	.byte	0x1
	.4byte	0xee0
	.4byte	0xef6
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF194
	.byte	0x24
	.byte	0xbb
	.4byte	.LASF195
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0xc68
	.byte	0x1
	.4byte	0xf13
	.4byte	0xf1f
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF196
	.byte	0x24
	.byte	0xbd
	.4byte	.LASF197
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0xc68
	.byte	0x1
	.4byte	0xf40
	.4byte	0xf4c
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF198
	.byte	0x24
	.byte	0xc0
	.4byte	.LASF199
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0xc68
	.byte	0x1
	.4byte	0xf69
	.4byte	0xf70
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF200
	.byte	0x24
	.byte	0xc2
	.4byte	.LASF201
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0xc68
	.byte	0x1
	.4byte	0xf91
	.4byte	0xf98
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF202
	.byte	0x24
	.byte	0xca
	.4byte	.LASF203
	.4byte	0x1832b
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0xc68
	.byte	0x1
	.4byte	0xfb9
	.4byte	0xfd4
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8da9
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x8da3
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF204
	.byte	0x24
	.byte	0xcd
	.4byte	.LASF205
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0xc68
	.byte	0x1
	.4byte	0xff1
	.4byte	0x1007
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8da3
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF206
	.byte	0x24
	.byte	0xd0
	.4byte	.LASF207
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1024
	.4byte	0x1035
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8da9
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF208
	.byte	0x24
	.byte	0xd2
	.4byte	.LASF209
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1052
	.4byte	0x1059
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF210
	.byte	0x24
	.byte	0xd4
	.4byte	.LASF211
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0xc68
	.byte	0x1
	.4byte	0x107a
	.4byte	0x1081
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF212
	.byte	0x24
	.byte	0xdc
	.4byte	.LASF213
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0xc68
	.byte	0x1
	.4byte	0x10a2
	.4byte	0x10b8
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x33d37
	.uleb128 0x1a
	.4byte	0x33d3d
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF214
	.byte	0x24
	.byte	0xde
	.4byte	.LASF215
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0xc68
	.byte	0x1
	.4byte	0x10d5
	.4byte	0x10e1
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xb7
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF216
	.byte	0x24
	.byte	0xe1
	.4byte	.LASF217
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1a
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1102
	.4byte	0x111d
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x9b00
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF218
	.byte	0x24
	.byte	0xe3
	.4byte	.LASF219
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1b
	.4byte	0xc68
	.byte	0x1
	.4byte	0x113a
	.4byte	0x1146
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF220
	.byte	0x24
	.byte	0xe5
	.4byte	.LASF221
	.4byte	0x10650
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1167
	.4byte	0x117d
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF222
	.byte	0x24
	.byte	0xe7
	.4byte	.LASF223
	.4byte	0x10650
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1d
	.4byte	0xc68
	.byte	0x1
	.4byte	0x119e
	.4byte	0x11af
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF224
	.byte	0x24
	.byte	0xe9
	.4byte	.LASF225
	.4byte	0x10650
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1e
	.4byte	0xc68
	.byte	0x1
	.4byte	0x11d0
	.4byte	0x11e6
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF226
	.byte	0x24
	.byte	0xeb
	.4byte	.LASF227
	.4byte	0x10650
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1f
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1207
	.4byte	0x1218
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x182fb
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF228
	.byte	0x24
	.byte	0xed
	.4byte	.LASF229
	.4byte	0x10650
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1239
	.4byte	0x1245
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF230
	.byte	0x24
	.byte	0xef
	.4byte	.LASF231
	.4byte	0x10650
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x21
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1266
	.4byte	0x1272
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF232
	.byte	0x24
	.byte	0xf1
	.4byte	.LASF233
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x22
	.4byte	0xc68
	.byte	0x1
	.4byte	0x128f
	.4byte	0x129b
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x10650
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF234
	.byte	0x24
	.byte	0xf3
	.4byte	.LASF235
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x23
	.4byte	0xc68
	.byte	0x1
	.4byte	0x12b8
	.4byte	0x12c4
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x3282b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF236
	.byte	0x24
	.byte	0xf5
	.4byte	.LASF237
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.4byte	0xc68
	.byte	0x1
	.4byte	0x12e1
	.4byte	0x12e8
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF238
	.byte	0x24
	.byte	0xf7
	.4byte	.LASF239
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x25
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1309
	.4byte	0x1310
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF240
	.byte	0x24
	.byte	0xf9
	.4byte	.LASF241
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x26
	.4byte	0xc68
	.byte	0x1
	.4byte	0x132d
	.4byte	0x1339
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF242
	.byte	0x24
	.byte	0xfb
	.4byte	.LASF243
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x27
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1356
	.4byte	0x136c
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0xf9
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF244
	.byte	0x24
	.byte	0xff
	.4byte	.LASF245
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x28
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1389
	.4byte	0x1390
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF246
	.byte	0x24
	.2byte	0x102
	.4byte	.LASF248
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x29
	.4byte	0xc68
	.byte	0x1
	.4byte	0x13b2
	.4byte	0x13b9
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF249
	.byte	0x24
	.2byte	0x104
	.4byte	.LASF250
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2a
	.4byte	0xc68
	.byte	0x1
	.4byte	0x13db
	.4byte	0x13e2
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF251
	.byte	0x24
	.2byte	0x107
	.4byte	.LASF265
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2b
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1400
	.4byte	0x1411
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF252
	.byte	0x24
	.2byte	0x10a
	.4byte	.LASF253
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2c
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1433
	.4byte	0x1449
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xf9
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF254
	.byte	0x24
	.2byte	0x10c
	.4byte	.LASF255
	.4byte	0x10650
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2d
	.4byte	0xc68
	.byte	0x1
	.4byte	0x146b
	.4byte	0x1472
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF256
	.byte	0x24
	.2byte	0x10f
	.4byte	.LASF257
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2e
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1494
	.4byte	0x14a0
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF258
	.byte	0x24
	.2byte	0x113
	.4byte	.LASF259
	.4byte	0x183af
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2f
	.4byte	0xc68
	.byte	0x1
	.4byte	0x14c2
	.4byte	0x14d3
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF260
	.byte	0x24
	.2byte	0x117
	.4byte	.LASF261
	.4byte	0xc7
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x30
	.4byte	0xc68
	.byte	0x1
	.4byte	0x14f5
	.4byte	0x14fc
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF262
	.byte	0x24
	.2byte	0x118
	.4byte	.LASF263
	.4byte	0x14908
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x31
	.4byte	0xc68
	.byte	0x1
	.4byte	0x151e
	.4byte	0x152a
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF264
	.byte	0x24
	.2byte	0x119
	.4byte	.LASF266
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x32
	.4byte	0xc68
	.byte	0x1
	.4byte	0x1548
	.4byte	0x155e
	.uleb128 0x18
	.4byte	0x158e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0xf9
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF267
	.byte	0x24
	.2byte	0x11c
	.4byte	.LASF268
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x33
	.4byte	0xc68
	.byte	0x1
	.4byte	0x157c
	.uleb128 0x18
	.4byte	0x33d20
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc68
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x25
	.byte	0x4b
	.4byte	0xa9
	.uleb128 0x2
	.4byte	.LASF270
	.byte	0x25
	.byte	0x4d
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF271
	.byte	0x25
	.byte	0x51
	.4byte	0xc7
	.uleb128 0x22
	.4byte	.LASF297
	.2byte	0x400
	.byte	0x25
	.byte	0x96
	.4byte	0x15ea
	.uleb128 0x8
	.4byte	.LASF272
	.byte	0x25
	.byte	0x98
	.4byte	0x15ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF297
	.byte	0x25
	.byte	0x9a
	.byte	0x1
	.4byte	0x15dd
	.uleb128 0x18
	.4byte	0x15fb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0xff
	.4byte	0x15fb
	.uleb128 0x24
	.4byte	0x34
	.2byte	0x3ff
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x15b5
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF273
	.uleb128 0x25
	.byte	0x4
	.4byte	0x160e
	.uleb128 0xc
	.4byte	0x1613
	.uleb128 0x26
	.4byte	.LASF275
	.2byte	0x904
	.byte	0x10
	.byte	0x28
	.4byte	0x17c1
	.uleb128 0x27
	.4byte	.LASF276
	.byte	0x10
	.byte	0x41
	.4byte	0x2220
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x40
	.uleb128 0x28
	.4byte	.LASF277
	.byte	0x10
	.byte	0x42
	.4byte	0x2220
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.2byte	0x800
	.uleb128 0x29
	.4byte	.LASF278
	.byte	0x10
	.byte	0x44
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF279
	.byte	0x10
	.byte	0x45
	.4byte	0x1209f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF280
	.byte	0x10
	.byte	0x46
	.4byte	0x120af
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF275
	.byte	0x10
	.byte	0x2a
	.byte	0x1
	.4byte	0x167e
	.4byte	0x1685
	.uleb128 0x18
	.4byte	0x120c0
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF275
	.byte	0x10
	.byte	0x2b
	.byte	0x1
	.4byte	0x1696
	.4byte	0x16a7
	.uleb128 0x18
	.4byte	0x120c0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF287
	.byte	0x10
	.byte	0x2d
	.4byte	.LASF289
	.byte	0x1
	.4byte	0x16bc
	.4byte	0x16c8
	.uleb128 0x18
	.4byte	0x120c0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x120c6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF281
	.byte	0x10
	.byte	0x30
	.4byte	.LASF283
	.4byte	0xc7
	.byte	0x1
	.4byte	0x16e1
	.4byte	0x16e8
	.uleb128 0x18
	.4byte	0x120d1
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF282
	.byte	0x10
	.byte	0x32
	.4byte	.LASF284
	.4byte	0x106
	.byte	0x1
	.4byte	0x1701
	.4byte	0x170d
	.uleb128 0x18
	.4byte	0x120d1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF285
	.byte	0x10
	.byte	0x35
	.4byte	.LASF286
	.4byte	0x106
	.byte	0x1
	.4byte	0x1726
	.4byte	0x173c
	.uleb128 0x18
	.4byte	0x120d1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF288
	.byte	0x10
	.byte	0x3a
	.4byte	.LASF290
	.byte	0x1
	.4byte	0x1751
	.4byte	0x1762
	.uleb128 0x18
	.4byte	0x120c0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF291
	.byte	0x10
	.byte	0x3c
	.4byte	.LASF292
	.byte	0x1
	.4byte	0x1777
	.4byte	0x1783
	.uleb128 0x18
	.4byte	0x120c0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF293
	.byte	0x10
	.byte	0x3d
	.4byte	.LASF294
	.byte	0x1
	.4byte	0x1798
	.4byte	0x179f
	.uleb128 0x18
	.4byte	0x120c0
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF295
	.byte	0x10
	.byte	0x3e
	.4byte	.LASF296
	.4byte	0x120d7
	.byte	0x1
	.4byte	0x17b4
	.uleb128 0x18
	.4byte	0x120c0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF298
	.byte	0x1
	.byte	0x13
	.byte	0x6c
	.4byte	0x20ee
	.uleb128 0x2f
	.byte	0x4
	.byte	0x13
	.byte	0xde
	.byte	0x3
	.4byte	0x1804
	.uleb128 0xe
	.4byte	.LASF299
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF300
	.sleb128 23
	.uleb128 0xe
	.4byte	.LASF301
	.sleb128 127
	.uleb128 0xe
	.4byte	.LASF302
	.sleb128 15
	.uleb128 0xe
	.4byte	.LASF303
	.sleb128 15
	.uleb128 0xe
	.4byte	.LASF304
	.sleb128 512
	.uleb128 0xe
	.4byte	.LASF305
	.sleb128 511
	.byte	0
	.uleb128 0x30
	.4byte	.LASF8504
	.byte	0x4
	.byte	0x13
	.byte	0xe8
	.byte	0x3
	.4byte	0x1824
	.uleb128 0x31
	.string	"i"
	.byte	0x13
	.byte	0xe9
	.4byte	0x159f
	.uleb128 0x31
	.string	"f"
	.byte	0x13
	.byte	0xea
	.4byte	0x135
	.byte	0
	.uleb128 0x32
	.string	"PI"
	.byte	0x13
	.byte	0xcd
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF306
	.byte	0x13
	.byte	0xce
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF307
	.byte	0x13
	.byte	0xcf
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF308
	.byte	0x13
	.byte	0xd0
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"E"
	.byte	0x13
	.byte	0xd1
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF309
	.byte	0x13
	.byte	0xd2
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF310
	.byte	0x13
	.byte	0xd3
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF311
	.byte	0x13
	.byte	0xd4
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF312
	.byte	0x13
	.byte	0xd5
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF313
	.byte	0x13
	.byte	0xd6
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF314
	.byte	0x13
	.byte	0xd7
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF315
	.byte	0x13
	.byte	0xd8
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF316
	.byte	0x13
	.byte	0xd9
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF317
	.byte	0x13
	.byte	0xda
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF318
	.byte	0x13
	.byte	0xdb
	.4byte	0x20ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF319
	.byte	0x13
	.byte	0xed
	.4byte	0x20f3
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF320
	.byte	0x13
	.byte	0xee
	.4byte	0x1601
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF62
	.byte	0x13
	.byte	0x6f
	.4byte	.LASF2644
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF321
	.byte	0x13
	.byte	0x71
	.4byte	.LASF322
	.4byte	0x135
	.byte	0x1
	.4byte	0x1928
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF323
	.byte	0x13
	.byte	0x73
	.4byte	.LASF324
	.4byte	0x135
	.byte	0x1
	.4byte	0x1943
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF325
	.byte	0x13
	.byte	0x74
	.4byte	.LASF326
	.4byte	0x135
	.byte	0x1
	.4byte	0x195e
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF327
	.byte	0x13
	.byte	0x75
	.4byte	.LASF328
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1979
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF329
	.byte	0x13
	.byte	0x77
	.4byte	.LASF330
	.4byte	0x135
	.byte	0x1
	.4byte	0x1994
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF331
	.byte	0x13
	.byte	0x78
	.4byte	.LASF332
	.4byte	0x135
	.byte	0x1
	.4byte	0x19af
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF333
	.byte	0x13
	.byte	0x79
	.4byte	.LASF334
	.4byte	0x12e
	.byte	0x1
	.4byte	0x19ca
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Sin"
	.byte	0x13
	.byte	0x7b
	.4byte	.LASF339
	.4byte	0x135
	.byte	0x1
	.4byte	0x19e5
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF335
	.byte	0x13
	.byte	0x7c
	.4byte	.LASF336
	.4byte	0x135
	.byte	0x1
	.4byte	0x1a00
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF337
	.byte	0x13
	.byte	0x7d
	.4byte	.LASF338
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1a1b
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Cos"
	.byte	0x13
	.byte	0x7f
	.4byte	.LASF340
	.4byte	0x135
	.byte	0x1
	.4byte	0x1a36
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF341
	.byte	0x13
	.byte	0x80
	.4byte	.LASF342
	.4byte	0x135
	.byte	0x1
	.4byte	0x1a51
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF343
	.byte	0x13
	.byte	0x81
	.4byte	.LASF344
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1a6c
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF345
	.byte	0x13
	.byte	0x83
	.4byte	.LASF347
	.byte	0x1
	.4byte	0x1a8d
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF346
	.byte	0x13
	.byte	0x84
	.4byte	.LASF348
	.byte	0x1
	.4byte	0x1aae
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF349
	.byte	0x13
	.byte	0x85
	.4byte	.LASF350
	.byte	0x1
	.4byte	0x1acf
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x210a
	.uleb128 0x1a
	.4byte	0x210a
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Tan"
	.byte	0x13
	.byte	0x87
	.4byte	.LASF351
	.4byte	0x135
	.byte	0x1
	.4byte	0x1aea
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF352
	.byte	0x13
	.byte	0x88
	.4byte	.LASF353
	.4byte	0x135
	.byte	0x1
	.4byte	0x1b05
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF354
	.byte	0x13
	.byte	0x89
	.4byte	.LASF355
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1b20
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF356
	.byte	0x13
	.byte	0x8b
	.4byte	.LASF357
	.4byte	0x135
	.byte	0x1
	.4byte	0x1b3b
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF358
	.byte	0x13
	.byte	0x8c
	.4byte	.LASF359
	.4byte	0x135
	.byte	0x1
	.4byte	0x1b56
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF360
	.byte	0x13
	.byte	0x8d
	.4byte	.LASF361
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1b71
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF362
	.byte	0x13
	.byte	0x8f
	.4byte	.LASF363
	.4byte	0x135
	.byte	0x1
	.4byte	0x1b8c
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF364
	.byte	0x13
	.byte	0x90
	.4byte	.LASF365
	.4byte	0x135
	.byte	0x1
	.4byte	0x1ba7
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF366
	.byte	0x13
	.byte	0x91
	.4byte	.LASF367
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1bc2
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF368
	.byte	0x13
	.byte	0x93
	.4byte	.LASF369
	.4byte	0x135
	.byte	0x1
	.4byte	0x1bdd
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF370
	.byte	0x13
	.byte	0x94
	.4byte	.LASF371
	.4byte	0x135
	.byte	0x1
	.4byte	0x1bf8
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF372
	.byte	0x13
	.byte	0x95
	.4byte	.LASF373
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1c13
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF368
	.byte	0x13
	.byte	0x97
	.4byte	.LASF374
	.4byte	0x135
	.byte	0x1
	.4byte	0x1c33
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF370
	.byte	0x13
	.byte	0x98
	.4byte	.LASF375
	.4byte	0x135
	.byte	0x1
	.4byte	0x1c53
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF372
	.byte	0x13
	.byte	0x99
	.4byte	.LASF376
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1c73
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Pow"
	.byte	0x13
	.byte	0x9b
	.4byte	.LASF377
	.4byte	0x135
	.byte	0x1
	.4byte	0x1c93
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF378
	.byte	0x13
	.byte	0x9c
	.4byte	.LASF379
	.4byte	0x135
	.byte	0x1
	.4byte	0x1cb3
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF380
	.byte	0x13
	.byte	0x9d
	.4byte	.LASF381
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1cd3
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Exp"
	.byte	0x13
	.byte	0x9f
	.4byte	.LASF382
	.4byte	0x135
	.byte	0x1
	.4byte	0x1cee
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF383
	.byte	0x13
	.byte	0xa0
	.4byte	.LASF384
	.4byte	0x135
	.byte	0x1
	.4byte	0x1d09
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF385
	.byte	0x13
	.byte	0xa1
	.4byte	.LASF386
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1d24
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Log"
	.byte	0x13
	.byte	0xa3
	.4byte	.LASF387
	.4byte	0x135
	.byte	0x1
	.4byte	0x1d3f
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF388
	.byte	0x13
	.byte	0xa4
	.4byte	.LASF389
	.4byte	0x135
	.byte	0x1
	.4byte	0x1d5a
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF390
	.byte	0x13
	.byte	0xa5
	.4byte	.LASF391
	.4byte	0x12e
	.byte	0x1
	.4byte	0x1d75
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF392
	.byte	0x13
	.byte	0xa7
	.4byte	.LASF393
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1d95
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF394
	.byte	0x13
	.byte	0xa8
	.4byte	.LASF395
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1db0
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF394
	.byte	0x13
	.byte	0xa9
	.4byte	.LASF396
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1dcb
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF397
	.byte	0x13
	.byte	0xab
	.4byte	.LASF398
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1de6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF399
	.byte	0x13
	.byte	0xac
	.4byte	.LASF400
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1e01
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF401
	.byte	0x13
	.byte	0xad
	.4byte	.LASF402
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1e1c
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF403
	.byte	0x13
	.byte	0xae
	.4byte	.LASF404
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1e37
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF405
	.byte	0x13
	.byte	0xaf
	.4byte	.LASF406
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1e52
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF407
	.byte	0x13
	.byte	0xb0
	.4byte	.LASF408
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1e6d
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF409
	.byte	0x13
	.byte	0xb1
	.4byte	.LASF410
	.4byte	0x1601
	.byte	0x1
	.4byte	0x1e88
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF411
	.byte	0x13
	.byte	0xb2
	.4byte	.LASF412
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1ea3
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF413
	.byte	0x13
	.byte	0xb3
	.4byte	.LASF414
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1ebe
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Abs"
	.byte	0x13
	.byte	0xb5
	.4byte	.LASF415
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1ed9
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF416
	.byte	0x13
	.byte	0xb6
	.4byte	.LASF417
	.4byte	0x135
	.byte	0x1
	.4byte	0x1ef4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF418
	.byte	0x13
	.byte	0xb7
	.4byte	.LASF419
	.4byte	0x135
	.byte	0x1
	.4byte	0x1f0f
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF420
	.byte	0x13
	.byte	0xb8
	.4byte	.LASF421
	.4byte	0x135
	.byte	0x1
	.4byte	0x1f2a
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF422
	.byte	0x13
	.byte	0xb9
	.4byte	.LASF423
	.4byte	0x135
	.byte	0x1
	.4byte	0x1f45
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF424
	.byte	0x13
	.byte	0xba
	.4byte	.LASF425
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1f60
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF426
	.byte	0x13
	.byte	0xbb
	.4byte	.LASF427
	.4byte	0xc7
	.byte	0x1
	.4byte	0x1f7b
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF428
	.byte	0x13
	.byte	0xbc
	.4byte	.LASF429
	.4byte	0xec
	.byte	0x1
	.4byte	0x1f96
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF430
	.byte	0x13
	.byte	0xbd
	.4byte	.LASF431
	.4byte	0xec
	.byte	0x1
	.4byte	0x1fb1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF432
	.byte	0x13
	.byte	0xbf
	.4byte	.LASF433
	.4byte	0xb9
	.byte	0x1
	.4byte	0x1fcc
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF434
	.byte	0x13
	.byte	0xc0
	.4byte	.LASF435
	.4byte	0xc0
	.byte	0x1
	.4byte	0x1fe7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF436
	.byte	0x13
	.byte	0xc1
	.4byte	.LASF437
	.4byte	0xc7
	.byte	0x1
	.4byte	0x200c
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF438
	.byte	0x13
	.byte	0xc2
	.4byte	.LASF439
	.4byte	0x135
	.byte	0x1
	.4byte	0x2031
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF440
	.byte	0x13
	.byte	0xc4
	.4byte	.LASF441
	.4byte	0x135
	.byte	0x1
	.4byte	0x204c
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF442
	.byte	0x13
	.byte	0xc5
	.4byte	.LASF443
	.4byte	0x135
	.byte	0x1
	.4byte	0x2067
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF444
	.byte	0x13
	.byte	0xc6
	.4byte	.LASF445
	.4byte	0x135
	.byte	0x1
	.4byte	0x2087
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF446
	.byte	0x13
	.byte	0xc8
	.4byte	.LASF447
	.4byte	0xc7
	.byte	0x1
	.4byte	0x20ac
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF448
	.byte	0x13
	.byte	0xc9
	.4byte	.LASF449
	.4byte	0x135
	.byte	0x1
	.4byte	0x20d1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF450
	.byte	0x13
	.byte	0xcb
	.4byte	.LASF451
	.4byte	0xc7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2110
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x135
	.uleb128 0x4
	.4byte	0x34
	.4byte	0x2104
	.uleb128 0x24
	.4byte	0x34
	.2byte	0x1ff
	.byte	0
	.uleb128 0x25
	.byte	0x4
	.4byte	0x135
	.uleb128 0x25
	.byte	0x4
	.4byte	0x12e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x20ee
	.uleb128 0x2e
	.4byte	.LASF452
	.byte	0x4
	.byte	0x15
	.byte	0x28
	.4byte	0x2220
	.uleb128 0x3a
	.4byte	.LASF453
	.byte	0x15
	.byte	0x34
	.4byte	0x2220
	.byte	0x1
	.byte	0x1
	.2byte	0x7fff
	.uleb128 0x29
	.4byte	.LASF454
	.byte	0x15
	.byte	0x37
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF452
	.byte	0x15
	.byte	0x2a
	.byte	0x1
	.4byte	0x2151
	.4byte	0x215d
	.uleb128 0x18
	.4byte	0x2225
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF455
	.byte	0x15
	.byte	0x2c
	.4byte	.LASF456
	.byte	0x1
	.4byte	0x2172
	.4byte	0x217e
	.uleb128 0x18
	.4byte	0x2225
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF457
	.byte	0x15
	.byte	0x2d
	.4byte	.LASF458
	.4byte	0xc7
	.byte	0x1
	.4byte	0x2197
	.4byte	0x219e
	.uleb128 0x18
	.4byte	0x222b
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF459
	.byte	0x15
	.byte	0x2f
	.4byte	.LASF460
	.4byte	0xc7
	.byte	0x1
	.4byte	0x21b7
	.4byte	0x21be
	.uleb128 0x18
	.4byte	0x2225
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF459
	.byte	0x15
	.byte	0x30
	.4byte	.LASF461
	.4byte	0xc7
	.byte	0x1
	.4byte	0x21d7
	.4byte	0x21e3
	.uleb128 0x18
	.4byte	0x2225
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF462
	.byte	0x15
	.byte	0x31
	.4byte	.LASF463
	.4byte	0x135
	.byte	0x1
	.4byte	0x21fc
	.4byte	0x2203
	.uleb128 0x18
	.4byte	0x2225
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF464
	.byte	0x15
	.byte	0x32
	.4byte	.LASF465
	.4byte	0x135
	.byte	0x1
	.4byte	0x2218
	.uleb128 0x18
	.4byte	0x2225
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc7
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2116
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2231
	.uleb128 0xc
	.4byte	0x2116
	.uleb128 0xb
	.byte	0x4
	.4byte	0x135
	.uleb128 0x2e
	.4byte	.LASF466
	.byte	0x8
	.byte	0x11
	.byte	0x34
	.4byte	0x2722
	.uleb128 0x7
	.string	"x"
	.byte	0x11
	.byte	0x36
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"y"
	.byte	0x11
	.byte	0x37
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF466
	.byte	0x11
	.byte	0x39
	.byte	0x1
	.4byte	0x2271
	.4byte	0x2278
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF466
	.byte	0x11
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x228a
	.4byte	0x229b
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.byte	0x3c
	.4byte	.LASF467
	.byte	0x1
	.4byte	0x22b0
	.4byte	0x22c1
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF469
	.byte	0x1
	.4byte	0x22d6
	.4byte	0x22dd
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.byte	0x3f
	.4byte	.LASF471
	.4byte	0x135
	.byte	0x1
	.4byte	0x22f6
	.4byte	0x2302
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.byte	0x40
	.4byte	.LASF472
	.4byte	0x2104
	.byte	0x1
	.4byte	0x231b
	.4byte	0x2327
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.byte	0x41
	.4byte	.LASF474
	.4byte	0x223c
	.byte	0x1
	.4byte	0x2340
	.4byte	0x2347
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.byte	0x42
	.4byte	.LASF476
	.4byte	0x135
	.byte	0x1
	.4byte	0x2360
	.4byte	0x236c
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.byte	0x43
	.4byte	.LASF477
	.4byte	0x223c
	.byte	0x1
	.4byte	0x2385
	.4byte	0x2391
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF478
	.byte	0x11
	.byte	0x44
	.4byte	.LASF479
	.4byte	0x223c
	.byte	0x1
	.4byte	0x23aa
	.4byte	0x23b6
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x11
	.byte	0x45
	.4byte	.LASF481
	.4byte	0x223c
	.byte	0x1
	.4byte	0x23cf
	.4byte	0x23db
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.byte	0x46
	.4byte	.LASF482
	.4byte	0x223c
	.byte	0x1
	.4byte	0x23f4
	.4byte	0x2400
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x11
	.byte	0x47
	.4byte	.LASF484
	.4byte	0x273e
	.byte	0x1
	.4byte	0x2419
	.4byte	0x2425
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF485
	.byte	0x11
	.byte	0x48
	.4byte	.LASF486
	.4byte	0x273e
	.byte	0x1
	.4byte	0x243e
	.4byte	0x244a
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.byte	0x49
	.4byte	.LASF488
	.4byte	0x273e
	.byte	0x1
	.4byte	0x2463
	.4byte	0x246f
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.byte	0x4a
	.4byte	.LASF489
	.4byte	0x273e
	.byte	0x1
	.4byte	0x2488
	.4byte	0x2494
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x11
	.byte	0x4b
	.4byte	.LASF491
	.4byte	0x273e
	.byte	0x1
	.4byte	0x24ad
	.4byte	0x24b9
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.byte	0x4f
	.4byte	.LASF493
	.4byte	0x1601
	.byte	0x1
	.4byte	0x24d2
	.4byte	0x24de
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.byte	0x50
	.4byte	.LASF494
	.4byte	0x1601
	.byte	0x1
	.4byte	0x24f7
	.4byte	0x2508
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x11
	.byte	0x51
	.4byte	.LASF496
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2521
	.4byte	0x252d
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x11
	.byte	0x52
	.4byte	.LASF498
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2546
	.4byte	0x2552
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF499
	.byte	0x11
	.byte	0x54
	.4byte	.LASF500
	.4byte	0x135
	.byte	0x1
	.4byte	0x256b
	.4byte	0x2572
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF501
	.byte	0x11
	.byte	0x55
	.4byte	.LASF502
	.4byte	0x135
	.byte	0x1
	.4byte	0x258b
	.4byte	0x2592
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF503
	.byte	0x11
	.byte	0x56
	.4byte	.LASF504
	.4byte	0x135
	.byte	0x1
	.4byte	0x25ab
	.4byte	0x25b2
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF505
	.byte	0x11
	.byte	0x57
	.4byte	.LASF506
	.4byte	0x135
	.byte	0x1
	.4byte	0x25cb
	.4byte	0x25d2
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF507
	.byte	0x11
	.byte	0x58
	.4byte	.LASF508
	.4byte	0x135
	.byte	0x1
	.4byte	0x25eb
	.4byte	0x25f2
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.byte	0x59
	.4byte	.LASF510
	.4byte	0x273e
	.byte	0x1
	.4byte	0x260b
	.4byte	0x2617
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.byte	0x5a
	.4byte	.LASF512
	.byte	0x1
	.4byte	0x262c
	.4byte	0x263d
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.uleb128 0x1a
	.4byte	0x2733
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.byte	0x5b
	.4byte	.LASF514
	.byte	0x1
	.4byte	0x2652
	.4byte	0x2659
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.byte	0x5c
	.4byte	.LASF516
	.byte	0x1
	.4byte	0x266e
	.4byte	0x2675
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.byte	0x5e
	.4byte	.LASF518
	.4byte	0xc7
	.byte	0x1
	.4byte	0x268e
	.4byte	0x2695
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.byte	0x60
	.4byte	.LASF520
	.4byte	0x2110
	.byte	0x1
	.4byte	0x26ae
	.4byte	0x26b5
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.byte	0x61
	.4byte	.LASF521
	.4byte	0x2236
	.byte	0x1
	.4byte	0x26ce
	.4byte	0x26d5
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF522
	.byte	0x11
	.byte	0x62
	.4byte	.LASF523
	.4byte	0x106
	.byte	0x1
	.4byte	0x26ee
	.4byte	0x26fa
	.uleb128 0x18
	.4byte	0x2728
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF524
	.byte	0x11
	.byte	0x64
	.4byte	.LASF525
	.byte	0x1
	.4byte	0x270b
	.uleb128 0x18
	.4byte	0x2722
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2733
	.uleb128 0x1a
	.4byte	0x2733
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x223c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x272e
	.uleb128 0xc
	.4byte	0x223c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x2739
	.uleb128 0xc
	.4byte	0x223c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x223c
	.uleb128 0x3e
	.4byte	.LASF526
	.byte	0xc
	.byte	0x11
	.2byte	0x13c
	.4byte	0x2efa
	.uleb128 0x13
	.string	"x"
	.byte	0x11
	.2byte	0x13e
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x11
	.2byte	0x13f
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x11
	.2byte	0x140
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x142
	.byte	0x1
	.4byte	0x278a
	.4byte	0x2791
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF526
	.byte	0x11
	.2byte	0x143
	.byte	0x1
	.byte	0x1
	.4byte	0x27a4
	.4byte	0x27ba
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.2byte	0x145
	.4byte	.LASF637
	.byte	0x1
	.4byte	0x27d0
	.4byte	0x27e6
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x11
	.2byte	0x146
	.4byte	.LASF558
	.byte	0x1
	.4byte	0x27fc
	.4byte	0x2803
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x148
	.4byte	.LASF527
	.4byte	0x135
	.byte	0x1
	.4byte	0x281d
	.4byte	0x2829
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x149
	.4byte	.LASF528
	.4byte	0x2104
	.byte	0x1
	.4byte	0x2843
	.4byte	0x284f
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x14a
	.4byte	.LASF529
	.4byte	0x2744
	.byte	0x1
	.4byte	0x2869
	.4byte	0x2870
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF287
	.byte	0x11
	.2byte	0x14b
	.4byte	.LASF530
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x288a
	.4byte	0x2896
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x14c
	.4byte	.LASF531
	.4byte	0x135
	.byte	0x1
	.4byte	0x28b0
	.4byte	0x28bc
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x14d
	.4byte	.LASF532
	.4byte	0x2744
	.byte	0x1
	.4byte	0x28d6
	.4byte	0x28e2
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF478
	.byte	0x11
	.2byte	0x14e
	.4byte	.LASF533
	.4byte	0x2744
	.byte	0x1
	.4byte	0x28fc
	.4byte	0x2908
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x11
	.2byte	0x14f
	.4byte	.LASF534
	.4byte	0x2744
	.byte	0x1
	.4byte	0x2922
	.4byte	0x292e
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x150
	.4byte	.LASF535
	.4byte	0x2744
	.byte	0x1
	.4byte	0x2948
	.4byte	0x2954
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x11
	.2byte	0x151
	.4byte	.LASF536
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x296e
	.4byte	0x297a
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x11
	.2byte	0x152
	.4byte	.LASF537
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x2994
	.4byte	0x29a0
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.2byte	0x153
	.4byte	.LASF538
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x29ba
	.4byte	0x29c6
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.2byte	0x154
	.4byte	.LASF539
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x29e0
	.4byte	0x29ec
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x11
	.2byte	0x155
	.4byte	.LASF540
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x2a06
	.4byte	0x2a12
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x159
	.4byte	.LASF541
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2a2c
	.4byte	0x2a38
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x15a
	.4byte	.LASF542
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2a52
	.4byte	0x2a63
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x11
	.2byte	0x15b
	.4byte	.LASF543
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2a7d
	.4byte	0x2a89
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x11
	.2byte	0x15c
	.4byte	.LASF544
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2aa3
	.4byte	0x2aaf
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF545
	.byte	0x11
	.2byte	0x15e
	.4byte	.LASF546
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2ac9
	.4byte	0x2ad0
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF547
	.byte	0x11
	.2byte	0x15f
	.4byte	.LASF548
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2aea
	.4byte	0x2af1
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF549
	.byte	0x11
	.2byte	0x161
	.4byte	.LASF550
	.4byte	0x2744
	.byte	0x1
	.4byte	0x2b0b
	.4byte	0x2b17
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF549
	.byte	0x11
	.2byte	0x162
	.4byte	.LASF551
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x2b31
	.4byte	0x2b42
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF499
	.byte	0x11
	.2byte	0x163
	.4byte	.LASF552
	.4byte	0x135
	.byte	0x1
	.4byte	0x2b5c
	.4byte	0x2b63
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF503
	.byte	0x11
	.2byte	0x164
	.4byte	.LASF553
	.4byte	0x135
	.byte	0x1
	.4byte	0x2b7d
	.4byte	0x2b84
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF501
	.byte	0x11
	.2byte	0x165
	.4byte	.LASF554
	.4byte	0x135
	.byte	0x1
	.4byte	0x2b9e
	.4byte	0x2ba5
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF505
	.byte	0x11
	.2byte	0x166
	.4byte	.LASF555
	.4byte	0x135
	.byte	0x1
	.4byte	0x2bbf
	.4byte	0x2bc6
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF507
	.byte	0x11
	.2byte	0x167
	.4byte	.LASF556
	.4byte	0x135
	.byte	0x1
	.4byte	0x2be0
	.4byte	0x2be7
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF509
	.byte	0x11
	.2byte	0x168
	.4byte	.LASF557
	.4byte	0x2f0b
	.byte	0x1
	.4byte	0x2c01
	.4byte	0x2c0d
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x169
	.4byte	.LASF559
	.byte	0x1
	.4byte	0x2c23
	.4byte	0x2c34
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x2f11
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF513
	.byte	0x11
	.2byte	0x16a
	.4byte	.LASF560
	.byte	0x1
	.4byte	0x2c4a
	.4byte	0x2c51
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0x11
	.2byte	0x16b
	.4byte	.LASF561
	.byte	0x1
	.4byte	0x2c67
	.4byte	0x2c6e
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x16d
	.4byte	.LASF562
	.4byte	0xc7
	.byte	0x1
	.4byte	0x2c88
	.4byte	0x2c8f
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF563
	.byte	0x11
	.2byte	0x16f
	.4byte	.LASF564
	.4byte	0x135
	.byte	0x1
	.4byte	0x2ca9
	.4byte	0x2cb0
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF565
	.byte	0x11
	.2byte	0x170
	.4byte	.LASF566
	.4byte	0x135
	.byte	0x1
	.4byte	0x2cca
	.4byte	0x2cd1
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF567
	.byte	0x11
	.2byte	0x171
	.4byte	.LASF568
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x2ceb
	.4byte	0x2cf2
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF569
	.byte	0x11
	.2byte	0x172
	.4byte	.LASF570
	.4byte	0x341d
	.byte	0x1
	.4byte	0x2d0c
	.4byte	0x2d13
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF571
	.byte	0x11
	.2byte	0x173
	.4byte	.LASF572
	.4byte	0x3576
	.byte	0x1
	.4byte	0x2d2d
	.4byte	0x2d34
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF573
	.byte	0x11
	.2byte	0x174
	.4byte	.LASF574
	.4byte	0x3d60
	.byte	0x1
	.4byte	0x2d4e
	.4byte	0x2d55
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF573
	.byte	0x11
	.2byte	0x175
	.4byte	.LASF575
	.4byte	0x3d66
	.byte	0x1
	.4byte	0x2d6f
	.4byte	0x2d76
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x176
	.4byte	.LASF576
	.4byte	0x2110
	.byte	0x1
	.4byte	0x2d90
	.4byte	0x2d97
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x177
	.4byte	.LASF577
	.4byte	0x2236
	.byte	0x1
	.4byte	0x2db1
	.4byte	0x2db8
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF522
	.byte	0x11
	.2byte	0x178
	.4byte	.LASF578
	.4byte	0x106
	.byte	0x1
	.4byte	0x2dd2
	.4byte	0x2dde
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF579
	.byte	0x11
	.2byte	0x17a
	.4byte	.LASF580
	.byte	0x1
	.4byte	0x2df4
	.4byte	0x2e05
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f0b
	.uleb128 0x1a
	.4byte	0x2f0b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF581
	.byte	0x11
	.2byte	0x17b
	.4byte	.LASF582
	.byte	0x1
	.4byte	0x2e1b
	.4byte	0x2e2c
	.uleb128 0x18
	.4byte	0x2f00
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f0b
	.uleb128 0x1a
	.4byte	0x2f0b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF583
	.byte	0x11
	.2byte	0x17d
	.4byte	.LASF584
	.byte	0x1
	.4byte	0x2e42
	.4byte	0x2e53
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF585
	.byte	0x11
	.2byte	0x17e
	.4byte	.LASF586
	.4byte	0x1601
	.byte	0x1
	.4byte	0x2e6d
	.4byte	0x2e83
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF587
	.byte	0x11
	.2byte	0x17f
	.4byte	.LASF588
	.byte	0x1
	.4byte	0x2e99
	.4byte	0x2ea5
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF524
	.byte	0x11
	.2byte	0x181
	.4byte	.LASF589
	.byte	0x1
	.4byte	0x2ebb
	.4byte	0x2ed1
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF590
	.byte	0x11
	.2byte	0x182
	.4byte	.LASF753
	.byte	0x1
	.4byte	0x2ee3
	.uleb128 0x18
	.4byte	0x2efa
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x2f11
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2744
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2f06
	.uleb128 0xc
	.4byte	0x2744
	.uleb128 0x25
	.byte	0x4
	.4byte	0x2744
	.uleb128 0x25
	.byte	0x4
	.4byte	0x2f17
	.uleb128 0xc
	.4byte	0x2744
	.uleb128 0x6
	.4byte	.LASF591
	.byte	0xc
	.byte	0x26
	.byte	0x33
	.4byte	0x341d
	.uleb128 0x8
	.4byte	.LASF592
	.byte	0x26
	.byte	0x35
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"yaw"
	.byte	0x26
	.byte	0x36
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF593
	.byte	0x26
	.byte	0x37
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF591
	.byte	0x26
	.byte	0x39
	.byte	0x1
	.4byte	0x2f63
	.4byte	0x2f6a
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF591
	.byte	0x26
	.byte	0x3a
	.byte	0x1
	.4byte	0x2f7b
	.4byte	0x2f91
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF591
	.byte	0x26
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x2fa3
	.4byte	0x2faf
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"Set"
	.byte	0x26
	.byte	0x3d
	.4byte	.LASF594
	.byte	0x1
	.4byte	0x2fc4
	.4byte	0x2fda
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF468
	.byte	0x26
	.byte	0x3e
	.4byte	.LASF595
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x2ff3
	.4byte	0x2ffa
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x26
	.byte	0x40
	.4byte	.LASF596
	.4byte	0x135
	.byte	0x1
	.4byte	0x3013
	.4byte	0x301f
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x26
	.byte	0x41
	.4byte	.LASF597
	.4byte	0x2104
	.byte	0x1
	.4byte	0x3038
	.4byte	0x3044
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x26
	.byte	0x42
	.4byte	.LASF598
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x305d
	.4byte	0x3064
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF287
	.byte	0x26
	.byte	0x43
	.4byte	.LASF599
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x307d
	.4byte	0x3089
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x26
	.byte	0x44
	.4byte	.LASF600
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x30a2
	.4byte	0x30ae
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x26
	.byte	0x45
	.4byte	.LASF601
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x30c7
	.4byte	0x30d3
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x26
	.byte	0x46
	.4byte	.LASF602
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x30ec
	.4byte	0x30f8
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF485
	.byte	0x26
	.byte	0x47
	.4byte	.LASF603
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x3111
	.4byte	0x311d
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x26
	.byte	0x48
	.4byte	.LASF604
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x3136
	.4byte	0x3142
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x26
	.byte	0x49
	.4byte	.LASF605
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x315b
	.4byte	0x3167
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF478
	.byte	0x26
	.byte	0x4a
	.4byte	.LASF606
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x3180
	.4byte	0x318c
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF487
	.byte	0x26
	.byte	0x4b
	.4byte	.LASF607
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x31a5
	.4byte	0x31b1
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x26
	.byte	0x4f
	.4byte	.LASF608
	.4byte	0x1601
	.byte	0x1
	.4byte	0x31ca
	.4byte	0x31d6
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x26
	.byte	0x50
	.4byte	.LASF609
	.4byte	0x1601
	.byte	0x1
	.4byte	0x31ef
	.4byte	0x3200
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x26
	.byte	0x51
	.4byte	.LASF610
	.4byte	0x1601
	.byte	0x1
	.4byte	0x3219
	.4byte	0x3225
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x26
	.byte	0x52
	.4byte	.LASF611
	.4byte	0x1601
	.byte	0x1
	.4byte	0x323e
	.4byte	0x324a
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF612
	.byte	0x26
	.byte	0x54
	.4byte	.LASF613
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x3263
	.4byte	0x326a
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF614
	.byte	0x26
	.byte	0x55
	.4byte	.LASF615
	.4byte	0x8db5
	.byte	0x1
	.4byte	0x3283
	.4byte	0x328a
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF511
	.byte	0x26
	.byte	0x57
	.4byte	.LASF616
	.byte	0x1
	.4byte	0x329f
	.4byte	0x32b0
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8dc6
	.uleb128 0x1a
	.4byte	0x8dc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF517
	.byte	0x26
	.byte	0x59
	.4byte	.LASF617
	.4byte	0xc7
	.byte	0x1
	.4byte	0x32c9
	.4byte	0x32d0
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF618
	.byte	0x26
	.byte	0x5b
	.4byte	.LASF619
	.byte	0x1
	.4byte	0x32e5
	.4byte	0x32fb
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2efa
	.uleb128 0x1a
	.4byte	0x2efa
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF620
	.byte	0x26
	.byte	0x5c
	.4byte	.LASF621
	.4byte	0x2744
	.byte	0x1
	.4byte	0x3314
	.4byte	0x331b
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF622
	.byte	0x26
	.byte	0x5d
	.4byte	.LASF623
	.4byte	0x5696
	.byte	0x1
	.4byte	0x3334
	.4byte	0x333b
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF624
	.byte	0x26
	.byte	0x5e
	.4byte	.LASF625
	.4byte	0x5e61
	.byte	0x1
	.4byte	0x3354
	.4byte	0x335b
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF571
	.byte	0x26
	.byte	0x5f
	.4byte	.LASF626
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3374
	.4byte	0x337b
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF627
	.byte	0x26
	.byte	0x60
	.4byte	.LASF628
	.4byte	0x621c
	.byte	0x1
	.4byte	0x3394
	.4byte	0x339b
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF629
	.byte	0x26
	.byte	0x61
	.4byte	.LASF630
	.4byte	0x2744
	.byte	0x1
	.4byte	0x33b4
	.4byte	0x33bb
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x26
	.byte	0x62
	.4byte	.LASF631
	.4byte	0x2110
	.byte	0x1
	.4byte	0x33d4
	.4byte	0x33db
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x26
	.byte	0x63
	.4byte	.LASF632
	.4byte	0x2236
	.byte	0x1
	.4byte	0x33f4
	.4byte	0x33fb
	.uleb128 0x18
	.4byte	0x8daf
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF522
	.byte	0x26
	.byte	0x64
	.4byte	.LASF633
	.4byte	0x106
	.byte	0x1
	.4byte	0x3410
	.uleb128 0x18
	.4byte	0x8dbb
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF634
	.byte	0xc
	.byte	0x11
	.2byte	0x785
	.4byte	0x3576
	.uleb128 0x10
	.4byte	.LASF635
	.byte	0x11
	.2byte	0x787
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF636
	.byte	0x11
	.2byte	0x787
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"phi"
	.byte	0x11
	.2byte	0x787
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF634
	.byte	0x11
	.2byte	0x789
	.byte	0x1
	.4byte	0x3469
	.4byte	0x3470
	.uleb128 0x18
	.4byte	0x50ca
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF634
	.byte	0x11
	.2byte	0x78a
	.byte	0x1
	.byte	0x1
	.4byte	0x3483
	.4byte	0x3499
	.uleb128 0x18
	.4byte	0x50ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.2byte	0x78c
	.4byte	.LASF638
	.byte	0x1
	.4byte	0x34af
	.4byte	0x34c5
	.uleb128 0x18
	.4byte	0x50ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x78e
	.4byte	.LASF639
	.4byte	0x135
	.byte	0x1
	.4byte	0x34df
	.4byte	0x34eb
	.uleb128 0x18
	.4byte	0x50d0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x78f
	.4byte	.LASF640
	.4byte	0x2104
	.byte	0x1
	.4byte	0x3505
	.4byte	0x3511
	.uleb128 0x18
	.4byte	0x50ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x790
	.4byte	.LASF641
	.4byte	0x341d
	.byte	0x1
	.4byte	0x352b
	.4byte	0x3532
	.uleb128 0x18
	.4byte	0x50d0
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF287
	.byte	0x11
	.2byte	0x791
	.4byte	.LASF642
	.4byte	0x50db
	.byte	0x1
	.4byte	0x354c
	.4byte	0x3558
	.uleb128 0x18
	.4byte	0x50ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50e1
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF643
	.byte	0x11
	.2byte	0x793
	.4byte	.LASF644
	.4byte	0x2744
	.byte	0x1
	.4byte	0x356e
	.uleb128 0x18
	.4byte	0x50d0
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF645
	.byte	0x24
	.byte	0x16
	.2byte	0x14d
	.4byte	0x3d60
	.uleb128 0x47
	.string	"mat"
	.byte	0x16
	.2byte	0x198
	.4byte	0x564e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF645
	.byte	0x16
	.2byte	0x14f
	.byte	0x1
	.4byte	0x35a5
	.4byte	0x35ac
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF645
	.byte	0x16
	.2byte	0x150
	.byte	0x1
	.byte	0x1
	.4byte	0x35bf
	.4byte	0x35d5
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF645
	.byte	0x16
	.2byte	0x151
	.byte	0x1
	.byte	0x1
	.4byte	0x35e8
	.4byte	0x361c
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF645
	.byte	0x16
	.2byte	0x152
	.byte	0x1
	.byte	0x1
	.4byte	0x362f
	.4byte	0x363b
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5664
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x154
	.4byte	.LASF646
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x3655
	.4byte	0x3661
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x155
	.4byte	.LASF647
	.4byte	0x42aa
	.byte	0x1
	.4byte	0x367b
	.4byte	0x3687
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.2byte	0x156
	.4byte	.LASF648
	.4byte	0x3576
	.byte	0x1
	.4byte	0x36a1
	.4byte	0x36a8
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x157
	.4byte	.LASF649
	.4byte	0x3576
	.byte	0x1
	.4byte	0x36c2
	.4byte	0x36ce
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x158
	.4byte	.LASF650
	.4byte	0x2744
	.byte	0x1
	.4byte	0x36e8
	.4byte	0x36f4
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x159
	.4byte	.LASF651
	.4byte	0x3576
	.byte	0x1
	.4byte	0x370e
	.4byte	0x371a
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x16
	.2byte	0x15a
	.4byte	.LASF652
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3734
	.4byte	0x3740
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.2byte	0x15b
	.4byte	.LASF653
	.4byte	0x3576
	.byte	0x1
	.4byte	0x375a
	.4byte	0x3766
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x15c
	.4byte	.LASF654
	.4byte	0x5690
	.byte	0x1
	.4byte	0x3780
	.4byte	0x378c
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x15d
	.4byte	.LASF655
	.4byte	0x5690
	.byte	0x1
	.4byte	0x37a6
	.4byte	0x37b2
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x16
	.2byte	0x15e
	.4byte	.LASF656
	.4byte	0x5690
	.byte	0x1
	.4byte	0x37cc
	.4byte	0x37d8
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x16
	.2byte	0x15f
	.4byte	.LASF657
	.4byte	0x5690
	.byte	0x1
	.4byte	0x37f2
	.4byte	0x37fe
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x165
	.4byte	.LASF658
	.4byte	0x1601
	.byte	0x1
	.4byte	0x3818
	.4byte	0x3824
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x166
	.4byte	.LASF659
	.4byte	0x1601
	.byte	0x1
	.4byte	0x383e
	.4byte	0x384f
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x16
	.2byte	0x167
	.4byte	.LASF660
	.4byte	0x1601
	.byte	0x1
	.4byte	0x3869
	.4byte	0x3875
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x16
	.2byte	0x168
	.4byte	.LASF661
	.4byte	0x1601
	.byte	0x1
	.4byte	0x388f
	.4byte	0x389b
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x16
	.2byte	0x16a
	.4byte	.LASF662
	.byte	0x1
	.4byte	0x38b1
	.4byte	0x38b8
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0x16
	.2byte	0x16b
	.4byte	.LASF664
	.byte	0x1
	.4byte	0x38ce
	.4byte	0x38d5
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF665
	.byte	0x16
	.2byte	0x16c
	.4byte	.LASF666
	.4byte	0x1601
	.byte	0x1
	.4byte	0x38ef
	.4byte	0x38fb
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF667
	.byte	0x16
	.2byte	0x16d
	.4byte	.LASF668
	.4byte	0x1601
	.byte	0x1
	.4byte	0x3915
	.4byte	0x3921
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF669
	.byte	0x16
	.2byte	0x16e
	.4byte	.LASF670
	.4byte	0x1601
	.byte	0x1
	.4byte	0x393b
	.4byte	0x3947
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF671
	.byte	0x16
	.2byte	0x16f
	.4byte	.LASF672
	.4byte	0x1601
	.byte	0x1
	.4byte	0x3961
	.4byte	0x3968
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF673
	.byte	0x16
	.2byte	0x171
	.4byte	.LASF674
	.byte	0x1
	.4byte	0x397e
	.4byte	0x398f
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42aa
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF675
	.byte	0x16
	.2byte	0x172
	.4byte	.LASF676
	.byte	0x1
	.4byte	0x39a5
	.4byte	0x39b6
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF677
	.byte	0x16
	.2byte	0x174
	.4byte	.LASF678
	.4byte	0x1601
	.byte	0x1
	.4byte	0x39d0
	.4byte	0x39d7
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF547
	.byte	0x16
	.2byte	0x175
	.4byte	.LASF679
	.4byte	0x1601
	.byte	0x1
	.4byte	0x39f1
	.4byte	0x39f8
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF680
	.byte	0x16
	.2byte	0x177
	.4byte	.LASF681
	.4byte	0x135
	.byte	0x1
	.4byte	0x3a12
	.4byte	0x3a19
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF682
	.byte	0x16
	.2byte	0x178
	.4byte	.LASF683
	.4byte	0x135
	.byte	0x1
	.4byte	0x3a33
	.4byte	0x3a3a
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF684
	.byte	0x16
	.2byte	0x179
	.4byte	.LASF685
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3a54
	.4byte	0x3a5b
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF686
	.byte	0x16
	.2byte	0x17a
	.4byte	.LASF687
	.4byte	0x5690
	.byte	0x1
	.4byte	0x3a75
	.4byte	0x3a7c
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF688
	.byte	0x16
	.2byte	0x17b
	.4byte	.LASF689
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3a96
	.4byte	0x3a9d
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF690
	.byte	0x16
	.2byte	0x17c
	.4byte	.LASF691
	.4byte	0x5690
	.byte	0x1
	.4byte	0x3ab7
	.4byte	0x3abe
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF692
	.byte	0x16
	.2byte	0x17d
	.4byte	.LASF693
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3ad8
	.4byte	0x3adf
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF694
	.byte	0x16
	.2byte	0x17e
	.4byte	.LASF695
	.4byte	0x1601
	.byte	0x1
	.4byte	0x3af9
	.4byte	0x3b00
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF696
	.byte	0x16
	.2byte	0x17f
	.4byte	.LASF697
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3b1a
	.4byte	0x3b21
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF698
	.byte	0x16
	.2byte	0x180
	.4byte	.LASF699
	.4byte	0x1601
	.byte	0x1
	.4byte	0x3b3b
	.4byte	0x3b42
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF700
	.byte	0x16
	.2byte	0x181
	.4byte	.LASF701
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3b5c
	.4byte	0x3b68
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF702
	.byte	0x16
	.2byte	0x183
	.4byte	.LASF703
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3b82
	.4byte	0x3b98
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF704
	.byte	0x16
	.2byte	0x184
	.4byte	.LASF705
	.4byte	0x5690
	.byte	0x1
	.4byte	0x3bb2
	.4byte	0x3bc8
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF706
	.byte	0x16
	.2byte	0x185
	.4byte	.LASF707
	.4byte	0x3576
	.byte	0x1
	.4byte	0x3be2
	.4byte	0x3bee
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF708
	.byte	0x16
	.2byte	0x186
	.4byte	.LASF709
	.4byte	0x5690
	.byte	0x1
	.4byte	0x3c08
	.4byte	0x3c14
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x5685
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x16
	.2byte	0x188
	.4byte	.LASF710
	.4byte	0xc7
	.byte	0x1
	.4byte	0x3c2e
	.4byte	0x3c35
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF567
	.byte	0x16
	.2byte	0x18a
	.4byte	.LASF711
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x3c4f
	.4byte	0x3c56
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF622
	.byte	0x16
	.2byte	0x18b
	.4byte	.LASF712
	.4byte	0x5696
	.byte	0x1
	.4byte	0x3c70
	.4byte	0x3c77
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF713
	.byte	0x16
	.2byte	0x18c
	.4byte	.LASF714
	.4byte	0x5bac
	.byte	0x1
	.4byte	0x3c91
	.4byte	0x3c98
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF624
	.byte	0x16
	.2byte	0x18d
	.4byte	.LASF715
	.4byte	0x5e61
	.byte	0x1
	.4byte	0x3cb2
	.4byte	0x3cb9
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF627
	.byte	0x16
	.2byte	0x18e
	.4byte	.LASF716
	.4byte	0x621c
	.byte	0x1
	.4byte	0x3cd3
	.4byte	0x3cda
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF629
	.byte	0x16
	.2byte	0x18f
	.4byte	.LASF717
	.4byte	0x2744
	.byte	0x1
	.4byte	0x3cf4
	.4byte	0x3cfb
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x190
	.4byte	.LASF718
	.4byte	0x2110
	.byte	0x1
	.4byte	0x3d15
	.4byte	0x3d1c
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x191
	.4byte	.LASF719
	.4byte	0x2236
	.byte	0x1
	.4byte	0x3d36
	.4byte	0x3d3d
	.uleb128 0x18
	.4byte	0x565e
	.byte	0x1
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF522
	.byte	0x16
	.2byte	0x192
	.4byte	.LASF720
	.4byte	0x106
	.byte	0x1
	.4byte	0x3d53
	.uleb128 0x18
	.4byte	0x567a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x4
	.4byte	0x272e
	.uleb128 0x25
	.byte	0x4
	.4byte	0x223c
	.uleb128 0x3e
	.4byte	.LASF721
	.byte	0x10
	.byte	0x11
	.2byte	0x328
	.4byte	0x4282
	.uleb128 0x13
	.string	"x"
	.byte	0x11
	.2byte	0x32a
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x11
	.2byte	0x32b
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x11
	.2byte	0x32c
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"w"
	.byte	0x11
	.2byte	0x32d
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF721
	.byte	0x11
	.2byte	0x32f
	.byte	0x1
	.4byte	0x3dbf
	.4byte	0x3dc6
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF721
	.byte	0x11
	.2byte	0x330
	.byte	0x1
	.byte	0x1
	.4byte	0x3dd9
	.4byte	0x3df4
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.2byte	0x332
	.4byte	.LASF722
	.byte	0x1
	.4byte	0x3e0a
	.4byte	0x3e25
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x11
	.2byte	0x333
	.4byte	.LASF723
	.byte	0x1
	.4byte	0x3e3b
	.4byte	0x3e42
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x335
	.4byte	.LASF724
	.4byte	0x135
	.byte	0x1
	.4byte	0x3e5c
	.4byte	0x3e68
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x336
	.4byte	.LASF725
	.4byte	0x2104
	.byte	0x1
	.4byte	0x3e82
	.4byte	0x3e8e
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x337
	.4byte	.LASF726
	.4byte	0x3d6c
	.byte	0x1
	.4byte	0x3ea8
	.4byte	0x3eaf
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x338
	.4byte	.LASF727
	.4byte	0x135
	.byte	0x1
	.4byte	0x3ec9
	.4byte	0x3ed5
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x339
	.4byte	.LASF728
	.4byte	0x3d6c
	.byte	0x1
	.4byte	0x3eef
	.4byte	0x3efb
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF478
	.byte	0x11
	.2byte	0x33a
	.4byte	.LASF729
	.4byte	0x3d6c
	.byte	0x1
	.4byte	0x3f15
	.4byte	0x3f21
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x11
	.2byte	0x33b
	.4byte	.LASF730
	.4byte	0x3d6c
	.byte	0x1
	.4byte	0x3f3b
	.4byte	0x3f47
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x33c
	.4byte	.LASF731
	.4byte	0x3d6c
	.byte	0x1
	.4byte	0x3f61
	.4byte	0x3f6d
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x11
	.2byte	0x33d
	.4byte	.LASF732
	.4byte	0x429e
	.byte	0x1
	.4byte	0x3f87
	.4byte	0x3f93
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x11
	.2byte	0x33e
	.4byte	.LASF733
	.4byte	0x429e
	.byte	0x1
	.4byte	0x3fad
	.4byte	0x3fb9
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.2byte	0x33f
	.4byte	.LASF734
	.4byte	0x429e
	.byte	0x1
	.4byte	0x3fd3
	.4byte	0x3fdf
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.2byte	0x340
	.4byte	.LASF735
	.4byte	0x429e
	.byte	0x1
	.4byte	0x3ff9
	.4byte	0x4005
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x11
	.2byte	0x341
	.4byte	.LASF736
	.4byte	0x429e
	.byte	0x1
	.4byte	0x401f
	.4byte	0x402b
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x345
	.4byte	.LASF737
	.4byte	0x1601
	.byte	0x1
	.4byte	0x4045
	.4byte	0x4051
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x346
	.4byte	.LASF738
	.4byte	0x1601
	.byte	0x1
	.4byte	0x406b
	.4byte	0x407c
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x11
	.2byte	0x347
	.4byte	.LASF739
	.4byte	0x1601
	.byte	0x1
	.4byte	0x4096
	.4byte	0x40a2
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x11
	.2byte	0x348
	.4byte	.LASF740
	.4byte	0x1601
	.byte	0x1
	.4byte	0x40bc
	.4byte	0x40c8
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF499
	.byte	0x11
	.2byte	0x34a
	.4byte	.LASF741
	.4byte	0x135
	.byte	0x1
	.4byte	0x40e2
	.4byte	0x40e9
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF503
	.byte	0x11
	.2byte	0x34b
	.4byte	.LASF742
	.4byte	0x135
	.byte	0x1
	.4byte	0x4103
	.4byte	0x410a
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF505
	.byte	0x11
	.2byte	0x34c
	.4byte	.LASF743
	.4byte	0x135
	.byte	0x1
	.4byte	0x4124
	.4byte	0x412b
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF507
	.byte	0x11
	.2byte	0x34d
	.4byte	.LASF744
	.4byte	0x135
	.byte	0x1
	.4byte	0x4145
	.4byte	0x414c
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x34f
	.4byte	.LASF745
	.4byte	0xc7
	.byte	0x1
	.4byte	0x4166
	.4byte	0x416d
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF573
	.byte	0x11
	.2byte	0x351
	.4byte	.LASF746
	.4byte	0x3d60
	.byte	0x1
	.4byte	0x4187
	.4byte	0x418e
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF573
	.byte	0x11
	.2byte	0x352
	.4byte	.LASF747
	.4byte	0x3d66
	.byte	0x1
	.4byte	0x41a8
	.4byte	0x41af
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF643
	.byte	0x11
	.2byte	0x353
	.4byte	.LASF748
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x41c9
	.4byte	0x41d0
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF643
	.byte	0x11
	.2byte	0x354
	.4byte	.LASF749
	.4byte	0x42aa
	.byte	0x1
	.4byte	0x41ea
	.4byte	0x41f1
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x355
	.4byte	.LASF750
	.4byte	0x2110
	.byte	0x1
	.4byte	0x420b
	.4byte	0x4212
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x356
	.4byte	.LASF751
	.4byte	0x2236
	.byte	0x1
	.4byte	0x422c
	.4byte	0x4233
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF522
	.byte	0x11
	.2byte	0x357
	.4byte	.LASF752
	.4byte	0x106
	.byte	0x1
	.4byte	0x424d
	.4byte	0x4259
	.uleb128 0x18
	.4byte	0x4288
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF524
	.byte	0x11
	.2byte	0x359
	.4byte	.LASF754
	.byte	0x1
	.4byte	0x426b
	.uleb128 0x18
	.4byte	0x4282
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x4293
	.uleb128 0x1a
	.4byte	0x4293
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3d6c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x428e
	.uleb128 0xc
	.4byte	0x3d6c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4299
	.uleb128 0xc
	.4byte	0x3d6c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3d6c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x2f06
	.uleb128 0x25
	.byte	0x4
	.4byte	0x2744
	.uleb128 0x3e
	.4byte	.LASF755
	.byte	0x14
	.byte	0x11
	.2byte	0x42a
	.4byte	0x44d4
	.uleb128 0x13
	.string	"x"
	.byte	0x11
	.2byte	0x42c
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x11
	.2byte	0x42d
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x11
	.2byte	0x42e
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"s"
	.byte	0x11
	.2byte	0x42f
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"t"
	.byte	0x11
	.2byte	0x430
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF755
	.byte	0x11
	.2byte	0x432
	.byte	0x1
	.4byte	0x4310
	.4byte	0x4317
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF755
	.byte	0x11
	.2byte	0x433
	.byte	0x1
	.byte	0x1
	.4byte	0x432a
	.4byte	0x433b
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x3d60
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF755
	.byte	0x11
	.2byte	0x434
	.byte	0x1
	.byte	0x1
	.4byte	0x434e
	.4byte	0x436e
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x436
	.4byte	.LASF756
	.4byte	0x135
	.byte	0x1
	.4byte	0x4388
	.4byte	0x4394
	.uleb128 0x18
	.4byte	0x44da
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x437
	.4byte	.LASF757
	.4byte	0x2104
	.byte	0x1
	.4byte	0x43ae
	.4byte	0x43ba
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF287
	.byte	0x11
	.2byte	0x438
	.4byte	.LASF758
	.4byte	0x44e5
	.byte	0x1
	.4byte	0x43d4
	.4byte	0x43e0
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x43a
	.4byte	.LASF759
	.4byte	0xc7
	.byte	0x1
	.4byte	0x43fa
	.4byte	0x4401
	.uleb128 0x18
	.4byte	0x44da
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF643
	.byte	0x11
	.2byte	0x43c
	.4byte	.LASF760
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x441b
	.4byte	0x4422
	.uleb128 0x18
	.4byte	0x44da
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF643
	.byte	0x11
	.2byte	0x43d
	.4byte	.LASF761
	.4byte	0x42aa
	.byte	0x1
	.4byte	0x443c
	.4byte	0x4443
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x43e
	.4byte	.LASF762
	.4byte	0x2110
	.byte	0x1
	.4byte	0x445d
	.4byte	0x4464
	.uleb128 0x18
	.4byte	0x44da
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x43f
	.4byte	.LASF763
	.4byte	0x2236
	.byte	0x1
	.4byte	0x447e
	.4byte	0x4485
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF522
	.byte	0x11
	.2byte	0x440
	.4byte	.LASF764
	.4byte	0x106
	.byte	0x1
	.4byte	0x449f
	.4byte	0x44ab
	.uleb128 0x18
	.4byte	0x44da
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF524
	.byte	0x11
	.2byte	0x442
	.4byte	.LASF765
	.byte	0x1
	.4byte	0x44bd
	.uleb128 0x18
	.4byte	0x44d4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x44eb
	.uleb128 0x1a
	.4byte	0x44eb
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x42b0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x44e0
	.uleb128 0xc
	.4byte	0x42b0
	.uleb128 0x25
	.byte	0x4
	.4byte	0x42b0
	.uleb128 0x25
	.byte	0x4
	.4byte	0x44f1
	.uleb128 0xc
	.4byte	0x42b0
	.uleb128 0x3e
	.4byte	.LASF766
	.byte	0x18
	.byte	0x11
	.2byte	0x486
	.4byte	0x498f
	.uleb128 0x47
	.string	"p"
	.byte	0x11
	.2byte	0x4b1
	.4byte	0x498f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF766
	.byte	0x11
	.2byte	0x488
	.byte	0x1
	.4byte	0x4523
	.4byte	0x452a
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF766
	.byte	0x11
	.2byte	0x489
	.byte	0x1
	.byte	0x1
	.4byte	0x453d
	.4byte	0x4549
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2110
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF766
	.byte	0x11
	.2byte	0x48a
	.byte	0x1
	.byte	0x1
	.4byte	0x455c
	.4byte	0x4581
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x11
	.2byte	0x48c
	.4byte	.LASF767
	.byte	0x1
	.4byte	0x4597
	.4byte	0x45bc
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x11
	.2byte	0x48d
	.4byte	.LASF768
	.byte	0x1
	.4byte	0x45d2
	.4byte	0x45d9
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x48f
	.4byte	.LASF769
	.4byte	0x135
	.byte	0x1
	.4byte	0x45f3
	.4byte	0x45ff
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x490
	.4byte	.LASF770
	.4byte	0x2104
	.byte	0x1
	.4byte	0x4619
	.4byte	0x4625
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x491
	.4byte	.LASF771
	.4byte	0x44f6
	.byte	0x1
	.4byte	0x463f
	.4byte	0x4646
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x492
	.4byte	.LASF772
	.4byte	0x44f6
	.byte	0x1
	.4byte	0x4660
	.4byte	0x466c
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF478
	.byte	0x11
	.2byte	0x493
	.4byte	.LASF773
	.4byte	0x44f6
	.byte	0x1
	.4byte	0x4686
	.4byte	0x4692
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x494
	.4byte	.LASF774
	.4byte	0x135
	.byte	0x1
	.4byte	0x46ac
	.4byte	0x46b8
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x495
	.4byte	.LASF775
	.4byte	0x44f6
	.byte	0x1
	.4byte	0x46d2
	.4byte	0x46de
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x11
	.2byte	0x496
	.4byte	.LASF776
	.4byte	0x44f6
	.byte	0x1
	.4byte	0x46f8
	.4byte	0x4704
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x11
	.2byte	0x497
	.4byte	.LASF777
	.4byte	0x49bb
	.byte	0x1
	.4byte	0x471e
	.4byte	0x472a
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.2byte	0x498
	.4byte	.LASF778
	.4byte	0x49bb
	.byte	0x1
	.4byte	0x4744
	.4byte	0x4750
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x11
	.2byte	0x499
	.4byte	.LASF779
	.4byte	0x49bb
	.byte	0x1
	.4byte	0x476a
	.4byte	0x4776
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x11
	.2byte	0x49a
	.4byte	.LASF780
	.4byte	0x49bb
	.byte	0x1
	.4byte	0x4790
	.4byte	0x479c
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x49e
	.4byte	.LASF781
	.4byte	0x1601
	.byte	0x1
	.4byte	0x47b6
	.4byte	0x47c2
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x49f
	.4byte	.LASF782
	.4byte	0x1601
	.byte	0x1
	.4byte	0x47dc
	.4byte	0x47ed
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x11
	.2byte	0x4a0
	.4byte	.LASF783
	.4byte	0x1601
	.byte	0x1
	.4byte	0x4807
	.4byte	0x4813
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x11
	.2byte	0x4a1
	.4byte	.LASF784
	.4byte	0x1601
	.byte	0x1
	.4byte	0x482d
	.4byte	0x4839
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x49b0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF499
	.byte	0x11
	.2byte	0x4a3
	.4byte	.LASF785
	.4byte	0x135
	.byte	0x1
	.4byte	0x4853
	.4byte	0x485a
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF503
	.byte	0x11
	.2byte	0x4a4
	.4byte	.LASF786
	.4byte	0x135
	.byte	0x1
	.4byte	0x4874
	.4byte	0x487b
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF505
	.byte	0x11
	.2byte	0x4a5
	.4byte	.LASF787
	.4byte	0x135
	.byte	0x1
	.4byte	0x4895
	.4byte	0x489c
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF507
	.byte	0x11
	.2byte	0x4a6
	.4byte	.LASF788
	.4byte	0x135
	.byte	0x1
	.4byte	0x48b6
	.4byte	0x48bd
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x4a8
	.4byte	.LASF789
	.4byte	0xc7
	.byte	0x1
	.4byte	0x48d7
	.4byte	0x48de
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF790
	.byte	0x11
	.2byte	0x4aa
	.4byte	.LASF791
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x48f8
	.4byte	0x4904
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF790
	.byte	0x11
	.2byte	0x4ab
	.4byte	.LASF792
	.4byte	0x42aa
	.byte	0x1
	.4byte	0x491e
	.4byte	0x492a
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x4ac
	.4byte	.LASF793
	.4byte	0x2110
	.byte	0x1
	.4byte	0x4944
	.4byte	0x494b
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x4ad
	.4byte	.LASF794
	.4byte	0x2236
	.byte	0x1
	.4byte	0x4965
	.4byte	0x496c
	.uleb128 0x18
	.4byte	0x499f
	.byte	0x1
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF522
	.byte	0x11
	.2byte	0x4ae
	.4byte	.LASF795
	.4byte	0x106
	.byte	0x1
	.4byte	0x4982
	.uleb128 0x18
	.4byte	0x49a5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x135
	.4byte	0x499f
	.uleb128 0x5
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x44f6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x49ab
	.uleb128 0xc
	.4byte	0x44f6
	.uleb128 0x25
	.byte	0x4
	.4byte	0x49b6
	.uleb128 0xc
	.4byte	0x44f6
	.uleb128 0x25
	.byte	0x4
	.4byte	0x44f6
	.uleb128 0x3e
	.4byte	.LASF796
	.byte	0xc
	.byte	0x11
	.2byte	0x59b
	.4byte	0x508b
	.uleb128 0x48
	.4byte	.LASF797
	.byte	0x11
	.2byte	0x5d5
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF798
	.byte	0x11
	.2byte	0x5d6
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x47
	.string	"p"
	.byte	0x11
	.2byte	0x5d7
	.4byte	0x2236
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF799
	.byte	0x11
	.2byte	0x5d9
	.4byte	0x508b
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF800
	.byte	0x11
	.2byte	0x5da
	.4byte	0x2236
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF801
	.byte	0x11
	.2byte	0x5db
	.4byte	0xc7
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF796
	.byte	0x11
	.2byte	0x59f
	.byte	0x1
	.4byte	0x4a3b
	.4byte	0x4a42
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF796
	.byte	0x11
	.2byte	0x5a0
	.byte	0x1
	.byte	0x1
	.4byte	0x4a55
	.4byte	0x4a61
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF796
	.byte	0x11
	.2byte	0x5a1
	.byte	0x1
	.byte	0x1
	.4byte	0x4a74
	.4byte	0x4a85
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x2236
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF802
	.byte	0x11
	.2byte	0x5a2
	.byte	0x1
	.4byte	0x4a97
	.4byte	0x4aa4
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x5a4
	.4byte	.LASF803
	.4byte	0x135
	.byte	0x1
	.4byte	0x4abe
	.4byte	0x4aca
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x11
	.2byte	0x5a5
	.4byte	.LASF804
	.4byte	0x2104
	.byte	0x1
	.4byte	0x4ae4
	.4byte	0x4af0
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x5a6
	.4byte	.LASF805
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x4b0a
	.4byte	0x4b11
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF287
	.byte	0x11
	.2byte	0x5a7
	.4byte	.LASF806
	.4byte	0x50ad
	.byte	0x1
	.4byte	0x4b2b
	.4byte	0x4b37
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x5a8
	.4byte	.LASF807
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x4b51
	.4byte	0x4b5d
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF478
	.byte	0x11
	.2byte	0x5a9
	.4byte	.LASF808
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x4b77
	.4byte	0x4b83
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x11
	.2byte	0x5aa
	.4byte	.LASF809
	.4byte	0x135
	.byte	0x1
	.4byte	0x4b9d
	.4byte	0x4ba9
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x11
	.2byte	0x5ab
	.4byte	.LASF810
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x4bc3
	.4byte	0x4bcf
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x11
	.2byte	0x5ac
	.4byte	.LASF811
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x4be9
	.4byte	0x4bf5
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x11
	.2byte	0x5ad
	.4byte	.LASF812
	.4byte	0x50ad
	.byte	0x1
	.4byte	0x4c0f
	.4byte	0x4c1b
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF487
	.byte	0x11
	.2byte	0x5ae
	.4byte	.LASF813
	.4byte	0x50ad
	.byte	0x1
	.4byte	0x4c35
	.4byte	0x4c41
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x11
	.2byte	0x5af
	.4byte	.LASF814
	.4byte	0x50ad
	.byte	0x1
	.4byte	0x4c5b
	.4byte	0x4c67
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x11
	.2byte	0x5b0
	.4byte	.LASF815
	.4byte	0x50ad
	.byte	0x1
	.4byte	0x4c81
	.4byte	0x4c8d
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x5b4
	.4byte	.LASF816
	.4byte	0x1601
	.byte	0x1
	.4byte	0x4ca7
	.4byte	0x4cb3
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x11
	.2byte	0x5b5
	.4byte	.LASF817
	.4byte	0x1601
	.byte	0x1
	.4byte	0x4ccd
	.4byte	0x4cde
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x11
	.2byte	0x5b6
	.4byte	.LASF818
	.4byte	0x1601
	.byte	0x1
	.4byte	0x4cf8
	.4byte	0x4d04
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x11
	.2byte	0x5b7
	.4byte	.LASF819
	.4byte	0x1601
	.byte	0x1
	.4byte	0x4d1e
	.4byte	0x4d2a
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50b3
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF820
	.byte	0x11
	.2byte	0x5b9
	.4byte	.LASF821
	.byte	0x1
	.4byte	0x4d40
	.4byte	0x4d4c
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF822
	.byte	0x11
	.2byte	0x5ba
	.4byte	.LASF823
	.byte	0x1
	.4byte	0x4d62
	.4byte	0x4d73
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF824
	.byte	0x11
	.2byte	0x5bb
	.4byte	.LASF825
	.4byte	0xc7
	.byte	0x1
	.4byte	0x4d8d
	.4byte	0x4d94
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF826
	.byte	0x11
	.2byte	0x5bc
	.4byte	.LASF827
	.byte	0x1
	.4byte	0x4daa
	.4byte	0x4dbb
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x2236
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x11
	.2byte	0x5bd
	.4byte	.LASF828
	.byte	0x1
	.4byte	0x4dd1
	.4byte	0x4dd8
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x11
	.2byte	0x5be
	.4byte	.LASF829
	.byte	0x1
	.4byte	0x4dee
	.4byte	0x4dfa
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF830
	.byte	0x11
	.2byte	0x5bf
	.4byte	.LASF831
	.byte	0x1
	.4byte	0x4e10
	.4byte	0x4e26
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF830
	.byte	0x11
	.2byte	0x5c0
	.4byte	.LASF832
	.byte	0x1
	.4byte	0x4e3c
	.4byte	0x4e57
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF833
	.byte	0x11
	.2byte	0x5c1
	.4byte	.LASF834
	.byte	0x1
	.4byte	0x4e6d
	.4byte	0x4e74
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF511
	.byte	0x11
	.2byte	0x5c2
	.4byte	.LASF835
	.byte	0x1
	.4byte	0x4e8a
	.4byte	0x4e9b
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF836
	.byte	0x11
	.2byte	0x5c3
	.4byte	.LASF837
	.4byte	0x50ad
	.byte	0x1
	.4byte	0x4eb5
	.4byte	0x4ec6
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF499
	.byte	0x11
	.2byte	0x5c5
	.4byte	.LASF838
	.4byte	0x135
	.byte	0x1
	.4byte	0x4ee0
	.4byte	0x4ee7
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF503
	.byte	0x11
	.2byte	0x5c6
	.4byte	.LASF839
	.4byte	0x135
	.byte	0x1
	.4byte	0x4f01
	.4byte	0x4f08
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF505
	.byte	0x11
	.2byte	0x5c7
	.4byte	.LASF840
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x4f22
	.4byte	0x4f29
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF841
	.byte	0x11
	.2byte	0x5c8
	.4byte	.LASF842
	.4byte	0x135
	.byte	0x1
	.4byte	0x4f43
	.4byte	0x4f4a
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x11
	.2byte	0x5ca
	.4byte	.LASF843
	.4byte	0xc7
	.byte	0x1
	.4byte	0x4f64
	.4byte	0x4f6b
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF790
	.byte	0x11
	.2byte	0x5cc
	.4byte	.LASF844
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x4f85
	.4byte	0x4f91
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF790
	.byte	0x11
	.2byte	0x5cd
	.4byte	.LASF845
	.4byte	0x42aa
	.byte	0x1
	.4byte	0x4fab
	.4byte	0x4fb7
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF846
	.byte	0x11
	.2byte	0x5ce
	.4byte	.LASF847
	.4byte	0x50be
	.byte	0x1
	.4byte	0x4fd1
	.4byte	0x4fdd
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF846
	.byte	0x11
	.2byte	0x5cf
	.4byte	.LASF848
	.4byte	0x50c4
	.byte	0x1
	.4byte	0x4ff7
	.4byte	0x5003
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x5d0
	.4byte	.LASF849
	.4byte	0x2110
	.byte	0x1
	.4byte	0x501d
	.4byte	0x5024
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x11
	.2byte	0x5d1
	.4byte	.LASF850
	.4byte	0x2236
	.byte	0x1
	.4byte	0x503e
	.4byte	0x5045
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF522
	.byte	0x11
	.2byte	0x5d2
	.4byte	.LASF851
	.4byte	0x106
	.byte	0x1
	.4byte	0x505f
	.4byte	0x506b
	.uleb128 0x18
	.4byte	0x50a2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF852
	.byte	0x11
	.2byte	0x5de
	.4byte	.LASF853
	.byte	0x3
	.byte	0x1
	.4byte	0x507e
	.uleb128 0x18
	.4byte	0x509c
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x135
	.4byte	0x509c
	.uleb128 0x24
	.4byte	0x34
	.2byte	0x403
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x49c1
	.uleb128 0xb
	.byte	0x4
	.4byte	0x50a8
	.uleb128 0xc
	.4byte	0x49c1
	.uleb128 0x25
	.byte	0x4
	.4byte	0x49c1
	.uleb128 0x25
	.byte	0x4
	.4byte	0x50b9
	.uleb128 0xc
	.4byte	0x49c1
	.uleb128 0x25
	.byte	0x4
	.4byte	0x49ab
	.uleb128 0x25
	.byte	0x4
	.4byte	0x44f6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x341d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x50d6
	.uleb128 0xc
	.4byte	0x341d
	.uleb128 0x25
	.byte	0x4
	.4byte	0x341d
	.uleb128 0x25
	.byte	0x4
	.4byte	0x50e7
	.uleb128 0xc
	.4byte	0x341d
	.uleb128 0x2e
	.4byte	.LASF854
	.byte	0x10
	.byte	0x16
	.byte	0x37
	.4byte	0x5606
	.uleb128 0x4b
	.string	"mat"
	.byte	0x16
	.byte	0x6a
	.4byte	0x5606
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF854
	.byte	0x16
	.byte	0x39
	.byte	0x1
	.4byte	0x5118
	.4byte	0x511f
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF854
	.byte	0x16
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x5131
	.4byte	0x5142
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x3d60
	.uleb128 0x1a
	.4byte	0x3d60
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF854
	.byte	0x16
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x5154
	.4byte	0x516f
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF854
	.byte	0x16
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.4byte	0x5181
	.4byte	0x518d
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x561c
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.byte	0x3e
	.4byte	.LASF855
	.4byte	0x3d60
	.byte	0x1
	.4byte	0x51a6
	.4byte	0x51b2
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.byte	0x3f
	.4byte	.LASF856
	.4byte	0x3d66
	.byte	0x1
	.4byte	0x51cb
	.4byte	0x51d7
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.byte	0x40
	.4byte	.LASF857
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x51f0
	.4byte	0x51f7
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.byte	0x41
	.4byte	.LASF858
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x5210
	.4byte	0x521c
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.byte	0x42
	.4byte	.LASF859
	.4byte	0x223c
	.byte	0x1
	.4byte	0x5235
	.4byte	0x5241
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x3d60
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.byte	0x43
	.4byte	.LASF860
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x525a
	.4byte	0x5266
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x16
	.byte	0x44
	.4byte	.LASF861
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x527f
	.4byte	0x528b
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.byte	0x45
	.4byte	.LASF862
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x52a4
	.4byte	0x52b0
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.byte	0x46
	.4byte	.LASF863
	.4byte	0x5648
	.byte	0x1
	.4byte	0x52c9
	.4byte	0x52d5
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.byte	0x47
	.4byte	.LASF864
	.4byte	0x5648
	.byte	0x1
	.4byte	0x52ee
	.4byte	0x52fa
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x16
	.byte	0x48
	.4byte	.LASF865
	.4byte	0x5648
	.byte	0x1
	.4byte	0x5313
	.4byte	0x531f
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF485
	.byte	0x16
	.byte	0x49
	.4byte	.LASF866
	.4byte	0x5648
	.byte	0x1
	.4byte	0x5338
	.4byte	0x5344
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.byte	0x4f
	.4byte	.LASF867
	.4byte	0x1601
	.byte	0x1
	.4byte	0x535d
	.4byte	0x5369
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.byte	0x50
	.4byte	.LASF868
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5382
	.4byte	0x5393
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x16
	.byte	0x51
	.4byte	.LASF869
	.4byte	0x1601
	.byte	0x1
	.4byte	0x53ac
	.4byte	0x53b8
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x16
	.byte	0x52
	.4byte	.LASF870
	.4byte	0x1601
	.byte	0x1
	.4byte	0x53d1
	.4byte	0x53dd
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x563d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x16
	.byte	0x54
	.4byte	.LASF871
	.byte	0x1
	.4byte	0x53f2
	.4byte	0x53f9
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF663
	.byte	0x16
	.byte	0x55
	.4byte	.LASF872
	.byte	0x1
	.4byte	0x540e
	.4byte	0x5415
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF665
	.byte	0x16
	.byte	0x56
	.4byte	.LASF873
	.4byte	0x1601
	.byte	0x1
	.4byte	0x542e
	.4byte	0x543a
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF667
	.byte	0x16
	.byte	0x57
	.4byte	.LASF874
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5453
	.4byte	0x545f
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF669
	.byte	0x16
	.byte	0x58
	.4byte	.LASF875
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5478
	.4byte	0x5484
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF680
	.byte	0x16
	.byte	0x5a
	.4byte	.LASF876
	.4byte	0x135
	.byte	0x1
	.4byte	0x549d
	.4byte	0x54a4
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF682
	.byte	0x16
	.byte	0x5b
	.4byte	.LASF877
	.4byte	0x135
	.byte	0x1
	.4byte	0x54bd
	.4byte	0x54c4
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF688
	.byte	0x16
	.byte	0x5c
	.4byte	.LASF878
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x54dd
	.4byte	0x54e4
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF690
	.byte	0x16
	.byte	0x5d
	.4byte	.LASF879
	.4byte	0x5648
	.byte	0x1
	.4byte	0x54fd
	.4byte	0x5504
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF692
	.byte	0x16
	.byte	0x5e
	.4byte	.LASF880
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x551d
	.4byte	0x5524
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF694
	.byte	0x16
	.byte	0x5f
	.4byte	.LASF881
	.4byte	0x1601
	.byte	0x1
	.4byte	0x553d
	.4byte	0x5544
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF696
	.byte	0x16
	.byte	0x60
	.4byte	.LASF882
	.4byte	0x50ec
	.byte	0x1
	.4byte	0x555d
	.4byte	0x5564
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF698
	.byte	0x16
	.byte	0x61
	.4byte	.LASF883
	.4byte	0x1601
	.byte	0x1
	.4byte	0x557d
	.4byte	0x5584
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF517
	.byte	0x16
	.byte	0x63
	.4byte	.LASF884
	.4byte	0xc7
	.byte	0x1
	.4byte	0x559d
	.4byte	0x55a4
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.byte	0x65
	.4byte	.LASF885
	.4byte	0x2110
	.byte	0x1
	.4byte	0x55bd
	.4byte	0x55c4
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.byte	0x66
	.4byte	.LASF886
	.4byte	0x2236
	.byte	0x1
	.4byte	0x55dd
	.4byte	0x55e4
	.uleb128 0x18
	.4byte	0x5616
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF522
	.byte	0x16
	.byte	0x67
	.4byte	.LASF887
	.4byte	0x106
	.byte	0x1
	.4byte	0x55f9
	.uleb128 0x18
	.4byte	0x5632
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x223c
	.4byte	0x5616
	.uleb128 0x5
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x50ec
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5622
	.uleb128 0x4
	.4byte	0x135
	.4byte	0x5632
	.uleb128 0x5
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5638
	.uleb128 0xc
	.4byte	0x50ec
	.uleb128 0x25
	.byte	0x4
	.4byte	0x5643
	.uleb128 0xc
	.4byte	0x50ec
	.uleb128 0x25
	.byte	0x4
	.4byte	0x50ec
	.uleb128 0x4
	.4byte	0x2744
	.4byte	0x565e
	.uleb128 0x5
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3576
	.uleb128 0xb
	.byte	0x4
	.4byte	0x566a
	.uleb128 0x4
	.4byte	0x135
	.4byte	0x567a
	.uleb128 0x5
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5680
	.uleb128 0xc
	.4byte	0x3576
	.uleb128 0x25
	.byte	0x4
	.4byte	0x568b
	.uleb128 0xc
	.4byte	0x3576
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3576
	.uleb128 0x6
	.4byte	.LASF888
	.byte	0x10
	.byte	0x27
	.byte	0x30
	.4byte	0x5bac
	.uleb128 0x7
	.string	"x"
	.byte	0x27
	.byte	0x32
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"y"
	.byte	0x27
	.byte	0x33
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"z"
	.byte	0x27
	.byte	0x34
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"w"
	.byte	0x27
	.byte	0x35
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF888
	.byte	0x27
	.byte	0x37
	.byte	0x1
	.4byte	0x56e3
	.4byte	0x56ea
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF888
	.byte	0x27
	.byte	0x38
	.byte	0x1
	.4byte	0x56fb
	.4byte	0x5716
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"Set"
	.byte	0x27
	.byte	0x3a
	.4byte	.LASF889
	.byte	0x1
	.4byte	0x572b
	.4byte	0x5746
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x27
	.byte	0x3c
	.4byte	.LASF890
	.4byte	0x135
	.byte	0x1
	.4byte	0x575f
	.4byte	0x576b
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x27
	.byte	0x3d
	.4byte	.LASF891
	.4byte	0x2104
	.byte	0x1
	.4byte	0x5784
	.4byte	0x5790
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x27
	.byte	0x3e
	.4byte	.LASF892
	.4byte	0x5696
	.byte	0x1
	.4byte	0x57a9
	.4byte	0x57b0
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF287
	.byte	0x27
	.byte	0x3f
	.4byte	.LASF893
	.4byte	0x8de2
	.byte	0x1
	.4byte	0x57c9
	.4byte	0x57d5
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x27
	.byte	0x40
	.4byte	.LASF894
	.4byte	0x5696
	.byte	0x1
	.4byte	0x57ee
	.4byte	0x57fa
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x27
	.byte	0x41
	.4byte	.LASF895
	.4byte	0x8de2
	.byte	0x1
	.4byte	0x5813
	.4byte	0x581f
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x27
	.byte	0x42
	.4byte	.LASF896
	.4byte	0x5696
	.byte	0x1
	.4byte	0x5838
	.4byte	0x5844
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF485
	.byte	0x27
	.byte	0x43
	.4byte	.LASF897
	.4byte	0x8de2
	.byte	0x1
	.4byte	0x585d
	.4byte	0x5869
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x27
	.byte	0x44
	.4byte	.LASF898
	.4byte	0x5696
	.byte	0x1
	.4byte	0x5882
	.4byte	0x588e
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x27
	.byte	0x45
	.4byte	.LASF899
	.4byte	0x2744
	.byte	0x1
	.4byte	0x58a7
	.4byte	0x58b3
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x27
	.byte	0x46
	.4byte	.LASF900
	.4byte	0x5696
	.byte	0x1
	.4byte	0x58cc
	.4byte	0x58d8
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x27
	.byte	0x47
	.4byte	.LASF901
	.4byte	0x8de2
	.byte	0x1
	.4byte	0x58f1
	.4byte	0x58fd
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x27
	.byte	0x48
	.4byte	.LASF902
	.4byte	0x8de2
	.byte	0x1
	.4byte	0x5916
	.4byte	0x5922
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x27
	.byte	0x4d
	.4byte	.LASF903
	.4byte	0x1601
	.byte	0x1
	.4byte	0x593b
	.4byte	0x5947
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x27
	.byte	0x4e
	.4byte	.LASF904
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5960
	.4byte	0x5971
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x27
	.byte	0x4f
	.4byte	.LASF905
	.4byte	0x1601
	.byte	0x1
	.4byte	0x598a
	.4byte	0x5996
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x27
	.byte	0x50
	.4byte	.LASF906
	.4byte	0x1601
	.byte	0x1
	.4byte	0x59af
	.4byte	0x59bb
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF692
	.byte	0x27
	.byte	0x52
	.4byte	.LASF907
	.4byte	0x5696
	.byte	0x1
	.4byte	0x59d4
	.4byte	0x59db
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF499
	.byte	0x27
	.byte	0x53
	.4byte	.LASF908
	.4byte	0x135
	.byte	0x1
	.4byte	0x59f4
	.4byte	0x59fb
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF505
	.byte	0x27
	.byte	0x54
	.4byte	.LASF909
	.4byte	0x8de2
	.byte	0x1
	.4byte	0x5a14
	.4byte	0x5a1b
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF910
	.byte	0x27
	.byte	0x56
	.4byte	.LASF911
	.4byte	0x135
	.byte	0x1
	.4byte	0x5a34
	.4byte	0x5a3b
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF517
	.byte	0x27
	.byte	0x57
	.4byte	.LASF912
	.4byte	0xc7
	.byte	0x1
	.4byte	0x5a54
	.4byte	0x5a5b
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF567
	.byte	0x27
	.byte	0x59
	.4byte	.LASF913
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x5a74
	.4byte	0x5a7b
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF624
	.byte	0x27
	.byte	0x5a
	.4byte	.LASF914
	.4byte	0x5e61
	.byte	0x1
	.4byte	0x5a94
	.4byte	0x5a9b
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF571
	.byte	0x27
	.byte	0x5b
	.4byte	.LASF915
	.4byte	0x3576
	.byte	0x1
	.4byte	0x5ab4
	.4byte	0x5abb
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF627
	.byte	0x27
	.byte	0x5c
	.4byte	.LASF916
	.4byte	0x621c
	.byte	0x1
	.4byte	0x5ad4
	.4byte	0x5adb
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF713
	.byte	0x27
	.byte	0x5d
	.4byte	.LASF917
	.4byte	0x5bac
	.byte	0x1
	.4byte	0x5af4
	.4byte	0x5afb
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF629
	.byte	0x27
	.byte	0x5e
	.4byte	.LASF918
	.4byte	0x2744
	.byte	0x1
	.4byte	0x5b14
	.4byte	0x5b1b
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x27
	.byte	0x5f
	.4byte	.LASF919
	.4byte	0x2110
	.byte	0x1
	.4byte	0x5b34
	.4byte	0x5b3b
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x27
	.byte	0x60
	.4byte	.LASF920
	.4byte	0x2236
	.byte	0x1
	.4byte	0x5b54
	.4byte	0x5b5b
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF522
	.byte	0x27
	.byte	0x61
	.4byte	.LASF921
	.4byte	0x106
	.byte	0x1
	.4byte	0x5b74
	.4byte	0x5b80
	.uleb128 0x18
	.4byte	0x8dd7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF922
	.byte	0x27
	.byte	0x63
	.4byte	.LASF923
	.4byte	0x8de2
	.byte	0x1
	.4byte	0x5b95
	.uleb128 0x18
	.4byte	0x8dd1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8de8
	.uleb128 0x1a
	.4byte	0x8de8
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF924
	.byte	0xc
	.byte	0x27
	.2byte	0x132
	.4byte	0x5e61
	.uleb128 0x13
	.string	"x"
	.byte	0x27
	.2byte	0x134
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x27
	.2byte	0x135
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x27
	.2byte	0x136
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF924
	.byte	0x27
	.2byte	0x138
	.byte	0x1
	.4byte	0x5bf2
	.4byte	0x5bf9
	.uleb128 0x18
	.4byte	0x8df3
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF924
	.byte	0x27
	.2byte	0x139
	.byte	0x1
	.4byte	0x5c0b
	.4byte	0x5c21
	.uleb128 0x18
	.4byte	0x8df3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x27
	.2byte	0x13b
	.4byte	.LASF925
	.byte	0x1
	.4byte	0x5c37
	.4byte	0x5c4d
	.uleb128 0x18
	.4byte	0x8df3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x27
	.2byte	0x13d
	.4byte	.LASF926
	.4byte	0x135
	.byte	0x1
	.4byte	0x5c67
	.4byte	0x5c73
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x27
	.2byte	0x13e
	.4byte	.LASF927
	.4byte	0x2104
	.byte	0x1
	.4byte	0x5c8d
	.4byte	0x5c99
	.uleb128 0x18
	.4byte	0x8df3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x27
	.2byte	0x140
	.4byte	.LASF928
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5cb3
	.4byte	0x5cbf
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8e04
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x27
	.2byte	0x141
	.4byte	.LASF929
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5cd9
	.4byte	0x5cea
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8e04
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x27
	.2byte	0x142
	.4byte	.LASF930
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5d04
	.4byte	0x5d10
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8e04
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x27
	.2byte	0x143
	.4byte	.LASF931
	.4byte	0x1601
	.byte	0x1
	.4byte	0x5d2a
	.4byte	0x5d36
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8e04
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x27
	.2byte	0x145
	.4byte	.LASF932
	.4byte	0xc7
	.byte	0x1
	.4byte	0x5d50
	.4byte	0x5d57
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF567
	.byte	0x27
	.2byte	0x147
	.4byte	.LASF933
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x5d71
	.4byte	0x5d78
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF624
	.byte	0x27
	.2byte	0x148
	.4byte	.LASF934
	.4byte	0x5e61
	.byte	0x1
	.4byte	0x5d92
	.4byte	0x5d99
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF571
	.byte	0x27
	.2byte	0x149
	.4byte	.LASF935
	.4byte	0x3576
	.byte	0x1
	.4byte	0x5db3
	.4byte	0x5dba
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF627
	.byte	0x27
	.2byte	0x14a
	.4byte	.LASF936
	.4byte	0x621c
	.byte	0x1
	.4byte	0x5dd4
	.4byte	0x5ddb
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF622
	.byte	0x27
	.2byte	0x14b
	.4byte	.LASF937
	.4byte	0x5696
	.byte	0x1
	.4byte	0x5df5
	.4byte	0x5dfc
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x27
	.2byte	0x14c
	.4byte	.LASF938
	.4byte	0x2110
	.byte	0x1
	.4byte	0x5e16
	.4byte	0x5e1d
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x27
	.2byte	0x14d
	.4byte	.LASF939
	.4byte	0x2236
	.byte	0x1
	.4byte	0x5e37
	.4byte	0x5e3e
	.uleb128 0x18
	.4byte	0x8df3
	.byte	0x1
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF522
	.byte	0x27
	.2byte	0x14e
	.4byte	.LASF940
	.4byte	0x106
	.byte	0x1
	.4byte	0x5e54
	.uleb128 0x18
	.4byte	0x8df9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF941
	.byte	0x44
	.byte	0x28
	.byte	0x2e
	.4byte	0x621c
	.uleb128 0x29
	.4byte	.LASF942
	.byte	0x28
	.byte	0x5a
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x4b
	.string	"vec"
	.byte	0x28
	.byte	0x5b
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF943
	.byte	0x28
	.byte	0x5c
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF944
	.byte	0x28
	.byte	0x5d
	.4byte	0x3576
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF945
	.byte	0x28
	.byte	0x5e
	.4byte	0x1601
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF941
	.byte	0x28
	.byte	0x35
	.byte	0x1
	.4byte	0x5ec9
	.4byte	0x5ed0
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF941
	.byte	0x28
	.byte	0x36
	.byte	0x1
	.4byte	0x5ee1
	.4byte	0x5ef7
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"Set"
	.byte	0x28
	.byte	0x38
	.4byte	.LASF946
	.byte	0x1
	.4byte	0x5f0c
	.4byte	0x5f22
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF947
	.byte	0x28
	.byte	0x39
	.4byte	.LASF948
	.byte	0x1
	.4byte	0x5f37
	.4byte	0x5f43
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF949
	.byte	0x28
	.byte	0x3a
	.4byte	.LASF950
	.byte	0x1
	.4byte	0x5f58
	.4byte	0x5f64
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF949
	.byte	0x28
	.byte	0x3b
	.4byte	.LASF951
	.byte	0x1
	.4byte	0x5f79
	.4byte	0x5f8f
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF952
	.byte	0x28
	.byte	0x3c
	.4byte	.LASF953
	.byte	0x1
	.4byte	0x5fa4
	.4byte	0x5fb0
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF954
	.byte	0x28
	.byte	0x3d
	.4byte	.LASF955
	.byte	0x1
	.4byte	0x5fc5
	.4byte	0x5fd1
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF956
	.byte	0x28
	.byte	0x3e
	.4byte	.LASF957
	.byte	0x1
	.4byte	0x5fe6
	.4byte	0x5fed
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF958
	.byte	0x28
	.byte	0x3f
	.4byte	.LASF959
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x6006
	.4byte	0x600d
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF960
	.byte	0x28
	.byte	0x40
	.4byte	.LASF961
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x6026
	.4byte	0x602d
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF962
	.byte	0x28
	.byte	0x41
	.4byte	.LASF963
	.4byte	0x135
	.byte	0x1
	.4byte	0x6046
	.4byte	0x604d
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x28
	.byte	0x43
	.4byte	.LASF964
	.4byte	0x5e61
	.byte	0x1
	.4byte	0x6066
	.4byte	0x606d
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x28
	.byte	0x44
	.4byte	.LASF965
	.4byte	0x5e61
	.byte	0x1
	.4byte	0x6086
	.4byte	0x6092
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF478
	.byte	0x28
	.byte	0x45
	.4byte	.LASF966
	.4byte	0x5e61
	.byte	0x1
	.4byte	0x60ab
	.4byte	0x60b7
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x28
	.byte	0x46
	.4byte	.LASF967
	.4byte	0x8e20
	.byte	0x1
	.4byte	0x60d0
	.4byte	0x60dc
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF487
	.byte	0x28
	.byte	0x47
	.4byte	.LASF968
	.4byte	0x8e20
	.byte	0x1
	.4byte	0x60f5
	.4byte	0x6101
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x28
	.byte	0x48
	.4byte	.LASF969
	.4byte	0x2744
	.byte	0x1
	.4byte	0x611a
	.4byte	0x6126
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF567
	.byte	0x28
	.byte	0x4e
	.4byte	.LASF970
	.4byte	0x2f1c
	.byte	0x1
	.4byte	0x613f
	.4byte	0x6146
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF622
	.byte	0x28
	.byte	0x4f
	.4byte	.LASF971
	.4byte	0x5696
	.byte	0x1
	.4byte	0x615f
	.4byte	0x6166
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF571
	.byte	0x28
	.byte	0x50
	.4byte	.LASF972
	.4byte	0x687d
	.byte	0x1
	.4byte	0x617f
	.4byte	0x6186
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF627
	.byte	0x28
	.byte	0x51
	.4byte	.LASF973
	.4byte	0x621c
	.byte	0x1
	.4byte	0x619f
	.4byte	0x61a6
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF629
	.byte	0x28
	.byte	0x52
	.4byte	.LASF974
	.4byte	0x2744
	.byte	0x1
	.4byte	0x61bf
	.4byte	0x61c6
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF975
	.byte	0x28
	.byte	0x54
	.4byte	.LASF976
	.byte	0x1
	.4byte	0x61db
	.4byte	0x61e7
	.uleb128 0x18
	.4byte	0x8e15
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42aa
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF614
	.byte	0x28
	.byte	0x56
	.4byte	.LASF977
	.byte	0x1
	.4byte	0x61fc
	.4byte	0x6203
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF612
	.byte	0x28
	.byte	0x57
	.4byte	.LASF978
	.byte	0x1
	.4byte	0x6214
	.uleb128 0x18
	.4byte	0x8e0f
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF979
	.byte	0x40
	.byte	0x16
	.2byte	0x2fc
	.4byte	0x6861
	.uleb128 0x47
	.string	"mat"
	.byte	0x16
	.2byte	0x33a
	.4byte	0x6861
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF979
	.byte	0x16
	.2byte	0x2fe
	.byte	0x1
	.4byte	0x624b
	.4byte	0x6252
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF979
	.byte	0x16
	.2byte	0x2ff
	.byte	0x1
	.byte	0x1
	.4byte	0x6265
	.4byte	0x6280
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6877
	.uleb128 0x1a
	.4byte	0x6877
	.uleb128 0x1a
	.4byte	0x6877
	.uleb128 0x1a
	.4byte	0x6877
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF979
	.byte	0x16
	.2byte	0x300
	.byte	0x1
	.byte	0x1
	.4byte	0x6293
	.4byte	0x62ea
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF979
	.byte	0x16
	.2byte	0x304
	.byte	0x1
	.byte	0x1
	.4byte	0x62fd
	.4byte	0x630e
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF979
	.byte	0x16
	.2byte	0x305
	.byte	0x1
	.byte	0x1
	.4byte	0x6321
	.4byte	0x632d
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6883
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x307
	.4byte	.LASF980
	.4byte	0x6877
	.byte	0x1
	.4byte	0x6347
	.4byte	0x6353
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x308
	.4byte	.LASF981
	.4byte	0x68a4
	.byte	0x1
	.4byte	0x636d
	.4byte	0x6379
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x309
	.4byte	.LASF982
	.4byte	0x621c
	.byte	0x1
	.4byte	0x6393
	.4byte	0x639f
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x30a
	.4byte	.LASF983
	.4byte	0x3d6c
	.byte	0x1
	.4byte	0x63b9
	.4byte	0x63c5
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6877
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x30b
	.4byte	.LASF984
	.4byte	0x2744
	.byte	0x1
	.4byte	0x63df
	.4byte	0x63eb
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x30c
	.4byte	.LASF985
	.4byte	0x621c
	.byte	0x1
	.4byte	0x6405
	.4byte	0x6411
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x16
	.2byte	0x30d
	.4byte	.LASF986
	.4byte	0x621c
	.byte	0x1
	.4byte	0x642b
	.4byte	0x6437
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.2byte	0x30e
	.4byte	.LASF987
	.4byte	0x621c
	.byte	0x1
	.4byte	0x6451
	.4byte	0x645d
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x30f
	.4byte	.LASF988
	.4byte	0x68b5
	.byte	0x1
	.4byte	0x6477
	.4byte	0x6483
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x310
	.4byte	.LASF989
	.4byte	0x68b5
	.byte	0x1
	.4byte	0x649d
	.4byte	0x64a9
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x16
	.2byte	0x311
	.4byte	.LASF990
	.4byte	0x68b5
	.byte	0x1
	.4byte	0x64c3
	.4byte	0x64cf
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x16
	.2byte	0x312
	.4byte	.LASF991
	.4byte	0x68b5
	.byte	0x1
	.4byte	0x64e9
	.4byte	0x64f5
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x31a
	.4byte	.LASF992
	.4byte	0x1601
	.byte	0x1
	.4byte	0x650f
	.4byte	0x651b
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x31b
	.4byte	.LASF993
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6535
	.4byte	0x6546
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x16
	.2byte	0x31c
	.4byte	.LASF994
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6560
	.4byte	0x656c
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x16
	.2byte	0x31d
	.4byte	.LASF995
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6586
	.4byte	0x6592
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x16
	.2byte	0x31f
	.4byte	.LASF996
	.byte	0x1
	.4byte	0x65a8
	.4byte	0x65af
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0x16
	.2byte	0x320
	.4byte	.LASF997
	.byte	0x1
	.4byte	0x65c5
	.4byte	0x65cc
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF665
	.byte	0x16
	.2byte	0x321
	.4byte	.LASF998
	.4byte	0x1601
	.byte	0x1
	.4byte	0x65e6
	.4byte	0x65f2
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF667
	.byte	0x16
	.2byte	0x322
	.4byte	.LASF999
	.4byte	0x1601
	.byte	0x1
	.4byte	0x660c
	.4byte	0x6618
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF669
	.byte	0x16
	.2byte	0x323
	.4byte	.LASF1000
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6632
	.4byte	0x663e
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF671
	.byte	0x16
	.2byte	0x324
	.4byte	.LASF1001
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6658
	.4byte	0x665f
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF673
	.byte	0x16
	.2byte	0x326
	.4byte	.LASF1002
	.byte	0x1
	.4byte	0x6675
	.4byte	0x6686
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6877
	.uleb128 0x1a
	.4byte	0x68a4
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF675
	.byte	0x16
	.2byte	0x327
	.4byte	.LASF1003
	.byte	0x1
	.4byte	0x669c
	.4byte	0x66ad
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6877
	.uleb128 0x1a
	.4byte	0x68a4
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF680
	.byte	0x16
	.2byte	0x329
	.4byte	.LASF1004
	.4byte	0x135
	.byte	0x1
	.4byte	0x66c7
	.4byte	0x66ce
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF682
	.byte	0x16
	.2byte	0x32a
	.4byte	.LASF1005
	.4byte	0x135
	.byte	0x1
	.4byte	0x66e8
	.4byte	0x66ef
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF688
	.byte	0x16
	.2byte	0x32b
	.4byte	.LASF1006
	.4byte	0x621c
	.byte	0x1
	.4byte	0x6709
	.4byte	0x6710
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF690
	.byte	0x16
	.2byte	0x32c
	.4byte	.LASF1007
	.4byte	0x68b5
	.byte	0x1
	.4byte	0x672a
	.4byte	0x6731
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF692
	.byte	0x16
	.2byte	0x32d
	.4byte	.LASF1008
	.4byte	0x621c
	.byte	0x1
	.4byte	0x674b
	.4byte	0x6752
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF694
	.byte	0x16
	.2byte	0x32e
	.4byte	.LASF1009
	.4byte	0x1601
	.byte	0x1
	.4byte	0x676c
	.4byte	0x6773
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF696
	.byte	0x16
	.2byte	0x32f
	.4byte	.LASF1010
	.4byte	0x621c
	.byte	0x1
	.4byte	0x678d
	.4byte	0x6794
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF698
	.byte	0x16
	.2byte	0x330
	.4byte	.LASF1011
	.4byte	0x1601
	.byte	0x1
	.4byte	0x67ae
	.4byte	0x67b5
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF700
	.byte	0x16
	.2byte	0x331
	.4byte	.LASF1012
	.4byte	0x621c
	.byte	0x1
	.4byte	0x67cf
	.4byte	0x67db
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x68aa
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x16
	.2byte	0x333
	.4byte	.LASF1013
	.4byte	0xc7
	.byte	0x1
	.4byte	0x67f5
	.4byte	0x67fc
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x335
	.4byte	.LASF1014
	.4byte	0x2110
	.byte	0x1
	.4byte	0x6816
	.4byte	0x681d
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x336
	.4byte	.LASF1015
	.4byte	0x2236
	.byte	0x1
	.4byte	0x6837
	.4byte	0x683e
	.uleb128 0x18
	.4byte	0x6871
	.byte	0x1
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF522
	.byte	0x16
	.2byte	0x337
	.4byte	.LASF1016
	.4byte	0x106
	.byte	0x1
	.4byte	0x6854
	.uleb128 0x18
	.4byte	0x6899
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x3d6c
	.4byte	0x6871
	.uleb128 0x5
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x621c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x428e
	.uleb128 0x25
	.byte	0x4
	.4byte	0x5680
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6889
	.uleb128 0x4
	.4byte	0x135
	.4byte	0x6899
	.uleb128 0x5
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x689f
	.uleb128 0xc
	.4byte	0x621c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3d6c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x68b0
	.uleb128 0xc
	.4byte	0x621c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x621c
	.uleb128 0x3e
	.4byte	.LASF1017
	.byte	0x64
	.byte	0x16
	.2byte	0x480
	.4byte	0x6dbc
	.uleb128 0x47
	.string	"mat"
	.byte	0x16
	.2byte	0x4b1
	.4byte	0x6dbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1017
	.byte	0x16
	.2byte	0x482
	.byte	0x1
	.4byte	0x68ea
	.4byte	0x68f1
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1017
	.byte	0x16
	.2byte	0x483
	.byte	0x1
	.byte	0x1
	.4byte	0x6904
	.4byte	0x6924
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dd2
	.uleb128 0x1a
	.4byte	0x6dd2
	.uleb128 0x1a
	.4byte	0x6dd2
	.uleb128 0x1a
	.4byte	0x6dd2
	.uleb128 0x1a
	.4byte	0x6dd2
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1017
	.byte	0x16
	.2byte	0x484
	.byte	0x1
	.byte	0x1
	.4byte	0x6937
	.4byte	0x6943
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dd8
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x486
	.4byte	.LASF1018
	.4byte	0x6dd2
	.byte	0x1
	.4byte	0x695d
	.4byte	0x6969
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x487
	.4byte	.LASF1019
	.4byte	0x6df9
	.byte	0x1
	.4byte	0x6983
	.4byte	0x698f
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x488
	.4byte	.LASF1020
	.4byte	0x68bb
	.byte	0x1
	.4byte	0x69a9
	.4byte	0x69b5
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x489
	.4byte	.LASF1021
	.4byte	0x42b0
	.byte	0x1
	.4byte	0x69cf
	.4byte	0x69db
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dd2
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x48a
	.4byte	.LASF1022
	.4byte	0x68bb
	.byte	0x1
	.4byte	0x69f5
	.4byte	0x6a01
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x16
	.2byte	0x48b
	.4byte	.LASF1023
	.4byte	0x68bb
	.byte	0x1
	.4byte	0x6a1b
	.4byte	0x6a27
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.2byte	0x48c
	.4byte	.LASF1024
	.4byte	0x68bb
	.byte	0x1
	.4byte	0x6a41
	.4byte	0x6a4d
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x48d
	.4byte	.LASF1025
	.4byte	0x6e0a
	.byte	0x1
	.4byte	0x6a67
	.4byte	0x6a73
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x48e
	.4byte	.LASF1026
	.4byte	0x6e0a
	.byte	0x1
	.4byte	0x6a8d
	.4byte	0x6a99
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x16
	.2byte	0x48f
	.4byte	.LASF1027
	.4byte	0x6e0a
	.byte	0x1
	.4byte	0x6ab3
	.4byte	0x6abf
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x16
	.2byte	0x490
	.4byte	.LASF1028
	.4byte	0x6e0a
	.byte	0x1
	.4byte	0x6ad9
	.4byte	0x6ae5
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x496
	.4byte	.LASF1029
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6aff
	.4byte	0x6b0b
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x497
	.4byte	.LASF1030
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6b25
	.4byte	0x6b36
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x16
	.2byte	0x498
	.4byte	.LASF1031
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6b50
	.4byte	0x6b5c
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x16
	.2byte	0x499
	.4byte	.LASF1032
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6b76
	.4byte	0x6b82
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dff
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x16
	.2byte	0x49b
	.4byte	.LASF1033
	.byte	0x1
	.4byte	0x6b98
	.4byte	0x6b9f
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0x16
	.2byte	0x49c
	.4byte	.LASF1034
	.byte	0x1
	.4byte	0x6bb5
	.4byte	0x6bbc
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF665
	.byte	0x16
	.2byte	0x49d
	.4byte	.LASF1035
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6bd6
	.4byte	0x6be2
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF667
	.byte	0x16
	.2byte	0x49e
	.4byte	.LASF1036
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6bfc
	.4byte	0x6c08
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF669
	.byte	0x16
	.2byte	0x49f
	.4byte	.LASF1037
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6c22
	.4byte	0x6c2e
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF680
	.byte	0x16
	.2byte	0x4a1
	.4byte	.LASF1038
	.4byte	0x135
	.byte	0x1
	.4byte	0x6c48
	.4byte	0x6c4f
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF682
	.byte	0x16
	.2byte	0x4a2
	.4byte	.LASF1039
	.4byte	0x135
	.byte	0x1
	.4byte	0x6c69
	.4byte	0x6c70
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF688
	.byte	0x16
	.2byte	0x4a3
	.4byte	.LASF1040
	.4byte	0x68bb
	.byte	0x1
	.4byte	0x6c8a
	.4byte	0x6c91
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF690
	.byte	0x16
	.2byte	0x4a4
	.4byte	.LASF1041
	.4byte	0x6e0a
	.byte	0x1
	.4byte	0x6cab
	.4byte	0x6cb2
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF692
	.byte	0x16
	.2byte	0x4a5
	.4byte	.LASF1042
	.4byte	0x68bb
	.byte	0x1
	.4byte	0x6ccc
	.4byte	0x6cd3
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF694
	.byte	0x16
	.2byte	0x4a6
	.4byte	.LASF1043
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6ced
	.4byte	0x6cf4
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF696
	.byte	0x16
	.2byte	0x4a7
	.4byte	.LASF1044
	.4byte	0x68bb
	.byte	0x1
	.4byte	0x6d0e
	.4byte	0x6d15
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF698
	.byte	0x16
	.2byte	0x4a8
	.4byte	.LASF1045
	.4byte	0x1601
	.byte	0x1
	.4byte	0x6d2f
	.4byte	0x6d36
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x16
	.2byte	0x4aa
	.4byte	.LASF1046
	.4byte	0xc7
	.byte	0x1
	.4byte	0x6d50
	.4byte	0x6d57
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x4ac
	.4byte	.LASF1047
	.4byte	0x2110
	.byte	0x1
	.4byte	0x6d71
	.4byte	0x6d78
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x4ad
	.4byte	.LASF1048
	.4byte	0x2236
	.byte	0x1
	.4byte	0x6d92
	.4byte	0x6d99
	.uleb128 0x18
	.4byte	0x6dcc
	.byte	0x1
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF522
	.byte	0x16
	.2byte	0x4ae
	.4byte	.LASF1049
	.4byte	0x106
	.byte	0x1
	.4byte	0x6daf
	.uleb128 0x18
	.4byte	0x6dee
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x42b0
	.4byte	0x6dcc
	.uleb128 0x5
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x68bb
	.uleb128 0x25
	.byte	0x4
	.4byte	0x44e0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6dde
	.uleb128 0x4
	.4byte	0x135
	.4byte	0x6dee
	.uleb128 0x5
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6df4
	.uleb128 0xc
	.4byte	0x68bb
	.uleb128 0x25
	.byte	0x4
	.4byte	0x42b0
	.uleb128 0x25
	.byte	0x4
	.4byte	0x6e05
	.uleb128 0xc
	.4byte	0x68bb
	.uleb128 0x25
	.byte	0x4
	.4byte	0x68bb
	.uleb128 0x3e
	.4byte	.LASF1050
	.byte	0x90
	.byte	0x16
	.2byte	0x5a9
	.4byte	0x736a
	.uleb128 0x47
	.string	"mat"
	.byte	0x16
	.2byte	0x5dc
	.4byte	0x736a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1050
	.byte	0x16
	.2byte	0x5ab
	.byte	0x1
	.4byte	0x6e3f
	.4byte	0x6e46
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1050
	.byte	0x16
	.2byte	0x5ac
	.byte	0x1
	.byte	0x1
	.4byte	0x6e59
	.4byte	0x6e7e
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50be
	.uleb128 0x1a
	.4byte	0x50be
	.uleb128 0x1a
	.4byte	0x50be
	.uleb128 0x1a
	.4byte	0x50be
	.uleb128 0x1a
	.4byte	0x50be
	.uleb128 0x1a
	.4byte	0x50be
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1050
	.byte	0x16
	.2byte	0x5ad
	.byte	0x1
	.byte	0x1
	.4byte	0x6e91
	.4byte	0x6eac
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1050
	.byte	0x16
	.2byte	0x5ae
	.byte	0x1
	.byte	0x1
	.4byte	0x6ebf
	.4byte	0x6ecb
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7380
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x5b0
	.4byte	.LASF1051
	.4byte	0x50be
	.byte	0x1
	.4byte	0x6ee5
	.4byte	0x6ef1
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x5b1
	.4byte	.LASF1052
	.4byte	0x50c4
	.byte	0x1
	.4byte	0x6f0b
	.4byte	0x6f17
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x5b2
	.4byte	.LASF1053
	.4byte	0x6e10
	.byte	0x1
	.4byte	0x6f31
	.4byte	0x6f3d
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x5b3
	.4byte	.LASF1054
	.4byte	0x44f6
	.byte	0x1
	.4byte	0x6f57
	.4byte	0x6f63
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x50be
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x5b4
	.4byte	.LASF1055
	.4byte	0x6e10
	.byte	0x1
	.4byte	0x6f7d
	.4byte	0x6f89
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x16
	.2byte	0x5b5
	.4byte	.LASF1056
	.4byte	0x6e10
	.byte	0x1
	.4byte	0x6fa3
	.4byte	0x6faf
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.2byte	0x5b6
	.4byte	.LASF1057
	.4byte	0x6e10
	.byte	0x1
	.4byte	0x6fc9
	.4byte	0x6fd5
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x5b7
	.4byte	.LASF1058
	.4byte	0x739c
	.byte	0x1
	.4byte	0x6fef
	.4byte	0x6ffb
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x5b8
	.4byte	.LASF1059
	.4byte	0x739c
	.byte	0x1
	.4byte	0x7015
	.4byte	0x7021
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x16
	.2byte	0x5b9
	.4byte	.LASF1060
	.4byte	0x739c
	.byte	0x1
	.4byte	0x703b
	.4byte	0x7047
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x16
	.2byte	0x5ba
	.4byte	.LASF1061
	.4byte	0x739c
	.byte	0x1
	.4byte	0x7061
	.4byte	0x706d
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x5c0
	.4byte	.LASF1062
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7087
	.4byte	0x7093
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x5c1
	.4byte	.LASF1063
	.4byte	0x1601
	.byte	0x1
	.4byte	0x70ad
	.4byte	0x70be
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x16
	.2byte	0x5c2
	.4byte	.LASF1064
	.4byte	0x1601
	.byte	0x1
	.4byte	0x70d8
	.4byte	0x70e4
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x16
	.2byte	0x5c3
	.4byte	.LASF1065
	.4byte	0x1601
	.byte	0x1
	.4byte	0x70fe
	.4byte	0x710a
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7391
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x16
	.2byte	0x5c5
	.4byte	.LASF1066
	.byte	0x1
	.4byte	0x7120
	.4byte	0x7127
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0x16
	.2byte	0x5c6
	.4byte	.LASF1067
	.byte	0x1
	.4byte	0x713d
	.4byte	0x7144
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF665
	.byte	0x16
	.2byte	0x5c7
	.4byte	.LASF1068
	.4byte	0x1601
	.byte	0x1
	.4byte	0x715e
	.4byte	0x716a
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF667
	.byte	0x16
	.2byte	0x5c8
	.4byte	.LASF1069
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7184
	.4byte	0x7190
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF669
	.byte	0x16
	.2byte	0x5c9
	.4byte	.LASF1070
	.4byte	0x1601
	.byte	0x1
	.4byte	0x71aa
	.4byte	0x71b6
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1071
	.byte	0x16
	.2byte	0x5cb
	.4byte	.LASF1072
	.4byte	0x3576
	.byte	0x1
	.4byte	0x71d0
	.4byte	0x71dc
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF680
	.byte	0x16
	.2byte	0x5cc
	.4byte	.LASF1073
	.4byte	0x135
	.byte	0x1
	.4byte	0x71f6
	.4byte	0x71fd
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF682
	.byte	0x16
	.2byte	0x5cd
	.4byte	.LASF1074
	.4byte	0x135
	.byte	0x1
	.4byte	0x7217
	.4byte	0x721e
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF688
	.byte	0x16
	.2byte	0x5ce
	.4byte	.LASF1075
	.4byte	0x6e10
	.byte	0x1
	.4byte	0x7238
	.4byte	0x723f
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF690
	.byte	0x16
	.2byte	0x5cf
	.4byte	.LASF1076
	.4byte	0x739c
	.byte	0x1
	.4byte	0x7259
	.4byte	0x7260
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF692
	.byte	0x16
	.2byte	0x5d0
	.4byte	.LASF1077
	.4byte	0x6e10
	.byte	0x1
	.4byte	0x727a
	.4byte	0x7281
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF694
	.byte	0x16
	.2byte	0x5d1
	.4byte	.LASF1078
	.4byte	0x1601
	.byte	0x1
	.4byte	0x729b
	.4byte	0x72a2
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF696
	.byte	0x16
	.2byte	0x5d2
	.4byte	.LASF1079
	.4byte	0x6e10
	.byte	0x1
	.4byte	0x72bc
	.4byte	0x72c3
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF698
	.byte	0x16
	.2byte	0x5d3
	.4byte	.LASF1080
	.4byte	0x1601
	.byte	0x1
	.4byte	0x72dd
	.4byte	0x72e4
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x16
	.2byte	0x5d5
	.4byte	.LASF1081
	.4byte	0xc7
	.byte	0x1
	.4byte	0x72fe
	.4byte	0x7305
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x5d7
	.4byte	.LASF1082
	.4byte	0x2110
	.byte	0x1
	.4byte	0x731f
	.4byte	0x7326
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x5d8
	.4byte	.LASF1083
	.4byte	0x2236
	.byte	0x1
	.4byte	0x7340
	.4byte	0x7347
	.uleb128 0x18
	.4byte	0x737a
	.byte	0x1
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF522
	.byte	0x16
	.2byte	0x5d9
	.4byte	.LASF1084
	.4byte	0x106
	.byte	0x1
	.4byte	0x735d
	.uleb128 0x18
	.4byte	0x7386
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x44f6
	.4byte	0x737a
	.uleb128 0x5
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6e10
	.uleb128 0xb
	.byte	0x4
	.4byte	0x498f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x738c
	.uleb128 0xc
	.4byte	0x6e10
	.uleb128 0x25
	.byte	0x4
	.4byte	0x7397
	.uleb128 0xc
	.4byte	0x6e10
	.uleb128 0x25
	.byte	0x4
	.4byte	0x6e10
	.uleb128 0x3e
	.4byte	.LASF1085
	.byte	0x10
	.byte	0x16
	.2byte	0x6fa
	.4byte	0x8d75
	.uleb128 0x48
	.4byte	.LASF1086
	.byte	0x16
	.2byte	0x7b2
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF1087
	.byte	0x16
	.2byte	0x7b3
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF798
	.byte	0x16
	.2byte	0x7b4
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x47
	.string	"mat"
	.byte	0x16
	.2byte	0x7b5
	.4byte	0x2236
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF799
	.byte	0x16
	.2byte	0x7b7
	.4byte	0x508b
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF800
	.byte	0x16
	.2byte	0x7b8
	.4byte	0x2236
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF801
	.byte	0x16
	.2byte	0x7b9
	.4byte	0xc7
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1085
	.byte	0x16
	.2byte	0x6fc
	.byte	0x1
	.4byte	0x742e
	.4byte	0x7435
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1085
	.byte	0x16
	.2byte	0x6fd
	.byte	0x1
	.byte	0x1
	.4byte	0x7448
	.4byte	0x7459
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF1085
	.byte	0x16
	.2byte	0x6fe
	.byte	0x1
	.byte	0x1
	.4byte	0x746c
	.4byte	0x7482
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x2236
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1088
	.byte	0x16
	.2byte	0x6ff
	.byte	0x1
	.4byte	0x7494
	.4byte	0x74a1
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x16
	.2byte	0x701
	.4byte	.LASF1089
	.byte	0x1
	.4byte	0x74b7
	.4byte	0x74cd
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x2110
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x16
	.2byte	0x702
	.4byte	.LASF1090
	.byte	0x1
	.4byte	0x74e3
	.4byte	0x74f4
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Set"
	.byte	0x16
	.2byte	0x703
	.4byte	.LASF1091
	.byte	0x1
	.4byte	0x750a
	.4byte	0x7525
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x705
	.4byte	.LASF1092
	.4byte	0x2110
	.byte	0x1
	.4byte	0x753f
	.4byte	0x754b
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x16
	.2byte	0x706
	.4byte	.LASF1093
	.4byte	0x2236
	.byte	0x1
	.4byte	0x7565
	.4byte	0x7571
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF287
	.byte	0x16
	.2byte	0x707
	.4byte	.LASF1094
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x758b
	.4byte	0x7597
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x708
	.4byte	.LASF1095
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x75b1
	.4byte	0x75bd
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x709
	.4byte	.LASF1096
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x75d7
	.4byte	0x75e3
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF475
	.byte	0x16
	.2byte	0x70a
	.4byte	.LASF1097
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x75fd
	.4byte	0x7609
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF480
	.byte	0x16
	.2byte	0x70b
	.4byte	.LASF1098
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x7623
	.4byte	0x762f
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF473
	.byte	0x16
	.2byte	0x70c
	.4byte	.LASF1099
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x7649
	.4byte	0x7655
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x70d
	.4byte	.LASF1100
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x766f
	.4byte	0x767b
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF490
	.byte	0x16
	.2byte	0x70e
	.4byte	.LASF1101
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x7695
	.4byte	0x76a1
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF483
	.byte	0x16
	.2byte	0x70f
	.4byte	.LASF1102
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x76bb
	.4byte	0x76c7
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF485
	.byte	0x16
	.2byte	0x710
	.4byte	.LASF1103
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x76e1
	.4byte	0x76ed
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x716
	.4byte	.LASF1104
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7707
	.4byte	0x7713
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF492
	.byte	0x16
	.2byte	0x717
	.4byte	.LASF1105
	.4byte	0x1601
	.byte	0x1
	.4byte	0x772d
	.4byte	0x773e
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF495
	.byte	0x16
	.2byte	0x718
	.4byte	.LASF1106
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7758
	.4byte	0x7764
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF497
	.byte	0x16
	.2byte	0x719
	.4byte	.LASF1107
	.4byte	0x1601
	.byte	0x1
	.4byte	0x777e
	.4byte	0x778a
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF820
	.byte	0x16
	.2byte	0x71b
	.4byte	.LASF1108
	.byte	0x1
	.4byte	0x77a0
	.4byte	0x77b1
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF822
	.byte	0x16
	.2byte	0x71c
	.4byte	.LASF1109
	.byte	0x1
	.4byte	0x77c7
	.4byte	0x77dd
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1110
	.byte	0x16
	.2byte	0x71d
	.4byte	.LASF1111
	.4byte	0xc7
	.byte	0x1
	.4byte	0x77f7
	.4byte	0x77fe
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1112
	.byte	0x16
	.2byte	0x71e
	.4byte	.LASF1113
	.4byte	0xc7
	.byte	0x1
	.4byte	0x7818
	.4byte	0x781f
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF826
	.byte	0x16
	.2byte	0x71f
	.4byte	.LASF1114
	.byte	0x1
	.4byte	0x7835
	.4byte	0x784b
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x2236
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x16
	.2byte	0x720
	.4byte	.LASF1115
	.byte	0x1
	.4byte	0x7861
	.4byte	0x7868
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x16
	.2byte	0x721
	.4byte	.LASF1116
	.byte	0x1
	.4byte	0x787e
	.4byte	0x788f
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0x16
	.2byte	0x722
	.4byte	.LASF1117
	.byte	0x1
	.4byte	0x78a5
	.4byte	0x78ac
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0x16
	.2byte	0x723
	.4byte	.LASF1118
	.byte	0x1
	.4byte	0x78c2
	.4byte	0x78d3
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1119
	.byte	0x16
	.2byte	0x724
	.4byte	.LASF1120
	.byte	0x1
	.4byte	0x78e9
	.4byte	0x78f5
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF830
	.byte	0x16
	.2byte	0x725
	.4byte	.LASF1121
	.byte	0x1
	.4byte	0x790b
	.4byte	0x7921
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF830
	.byte	0x16
	.2byte	0x726
	.4byte	.LASF1122
	.byte	0x1
	.4byte	0x7937
	.4byte	0x7957
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF833
	.byte	0x16
	.2byte	0x727
	.4byte	.LASF1123
	.byte	0x1
	.4byte	0x796d
	.4byte	0x7974
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF511
	.byte	0x16
	.2byte	0x728
	.4byte	.LASF1124
	.byte	0x1
	.4byte	0x798a
	.4byte	0x799b
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1125
	.byte	0x16
	.2byte	0x729
	.4byte	.LASF1126
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x79b5
	.4byte	0x79c6
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1127
	.byte	0x16
	.2byte	0x72a
	.4byte	.LASF1128
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x79e0
	.4byte	0x79f1
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1129
	.byte	0x16
	.2byte	0x72b
	.4byte	.LASF1130
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x7a0b
	.4byte	0x7a1c
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1131
	.byte	0x16
	.2byte	0x72c
	.4byte	.LASF1132
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x7a36
	.4byte	0x7a42
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1133
	.byte	0x16
	.2byte	0x72d
	.4byte	.LASF1134
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x7a5c
	.4byte	0x7a68
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1135
	.byte	0x16
	.2byte	0x72e
	.4byte	.LASF1136
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x7a82
	.4byte	0x7a8e
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1137
	.byte	0x16
	.2byte	0x72f
	.4byte	.LASF1138
	.byte	0x1
	.4byte	0x7aa4
	.4byte	0x7aab
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1139
	.byte	0x16
	.2byte	0x730
	.4byte	.LASF1140
	.byte	0x1
	.4byte	0x7ac1
	.4byte	0x7ac8
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1141
	.byte	0x16
	.2byte	0x731
	.4byte	.LASF1142
	.byte	0x1
	.4byte	0x7ade
	.4byte	0x7aef
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1143
	.byte	0x16
	.2byte	0x732
	.4byte	.LASF1144
	.4byte	0x135
	.byte	0x1
	.4byte	0x7b09
	.4byte	0x7b15
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1145
	.byte	0x16
	.2byte	0x734
	.4byte	.LASF1146
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7b2f
	.4byte	0x7b36
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1147
	.byte	0x16
	.2byte	0x735
	.4byte	.LASF1148
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7b50
	.4byte	0x7b5c
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF665
	.byte	0x16
	.2byte	0x736
	.4byte	.LASF1149
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7b76
	.4byte	0x7b82
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF669
	.byte	0x16
	.2byte	0x737
	.4byte	.LASF1150
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7b9c
	.4byte	0x7ba8
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1151
	.byte	0x16
	.2byte	0x738
	.4byte	.LASF1152
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7bc2
	.4byte	0x7bce
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF667
	.byte	0x16
	.2byte	0x739
	.4byte	.LASF1153
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7be8
	.4byte	0x7bf4
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1154
	.byte	0x16
	.2byte	0x73a
	.4byte	.LASF1155
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7c0e
	.4byte	0x7c1a
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1156
	.byte	0x16
	.2byte	0x73b
	.4byte	.LASF1157
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7c34
	.4byte	0x7c40
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1158
	.byte	0x16
	.2byte	0x73c
	.4byte	.LASF1159
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7c5a
	.4byte	0x7c66
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1160
	.byte	0x16
	.2byte	0x73d
	.4byte	.LASF1161
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7c80
	.4byte	0x7c8c
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1162
	.byte	0x16
	.2byte	0x73e
	.4byte	.LASF1163
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7ca6
	.4byte	0x7cb2
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1164
	.byte	0x16
	.2byte	0x73f
	.4byte	.LASF1165
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7ccc
	.4byte	0x7cd8
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1166
	.byte	0x16
	.2byte	0x740
	.4byte	.LASF1167
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7cf2
	.4byte	0x7cfe
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1168
	.byte	0x16
	.2byte	0x741
	.4byte	.LASF1169
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7d18
	.4byte	0x7d24
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF680
	.byte	0x16
	.2byte	0x743
	.4byte	.LASF1170
	.4byte	0x135
	.byte	0x1
	.4byte	0x7d3e
	.4byte	0x7d45
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF682
	.byte	0x16
	.2byte	0x744
	.4byte	.LASF1171
	.4byte	0x135
	.byte	0x1
	.4byte	0x7d5f
	.4byte	0x7d66
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF688
	.byte	0x16
	.2byte	0x745
	.4byte	.LASF1172
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x7d80
	.4byte	0x7d87
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF690
	.byte	0x16
	.2byte	0x746
	.4byte	.LASF1173
	.4byte	0x8d86
	.byte	0x1
	.4byte	0x7da1
	.4byte	0x7da8
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF692
	.byte	0x16
	.2byte	0x747
	.4byte	.LASF1174
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x7dc2
	.4byte	0x7dc9
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF694
	.byte	0x16
	.2byte	0x748
	.4byte	.LASF1175
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7de3
	.4byte	0x7dea
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF696
	.byte	0x16
	.2byte	0x749
	.4byte	.LASF1176
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x7e04
	.4byte	0x7e0b
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF698
	.byte	0x16
	.2byte	0x74a
	.4byte	.LASF1177
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7e25
	.4byte	0x7e2c
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1178
	.byte	0x16
	.2byte	0x74c
	.4byte	.LASF1179
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7e46
	.4byte	0x7e4d
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1180
	.byte	0x16
	.2byte	0x74d
	.4byte	.LASF1181
	.4byte	0x1601
	.byte	0x1
	.4byte	0x7e67
	.4byte	0x7e6e
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1182
	.byte	0x16
	.2byte	0x74f
	.4byte	.LASF1183
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x7e88
	.4byte	0x7e94
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF700
	.byte	0x16
	.2byte	0x750
	.4byte	.LASF1184
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x7eae
	.4byte	0x7eba
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1182
	.byte	0x16
	.2byte	0x752
	.4byte	.LASF1185
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x7ed4
	.4byte	0x7ee0
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF700
	.byte	0x16
	.2byte	0x753
	.4byte	.LASF1186
	.4byte	0x73a2
	.byte	0x1
	.4byte	0x7efa
	.4byte	0x7f06
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1182
	.byte	0x16
	.2byte	0x755
	.4byte	.LASF1187
	.byte	0x1
	.4byte	0x7f1c
	.4byte	0x7f2d
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1188
	.byte	0x16
	.2byte	0x756
	.4byte	.LASF1189
	.byte	0x1
	.4byte	0x7f43
	.4byte	0x7f54
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1190
	.byte	0x16
	.2byte	0x757
	.4byte	.LASF1191
	.byte	0x1
	.4byte	0x7f6a
	.4byte	0x7f7b
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF700
	.byte	0x16
	.2byte	0x758
	.4byte	.LASF1192
	.byte	0x1
	.4byte	0x7f91
	.4byte	0x7fa2
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1193
	.byte	0x16
	.2byte	0x759
	.4byte	.LASF1194
	.byte	0x1
	.4byte	0x7fb8
	.4byte	0x7fc9
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1195
	.byte	0x16
	.2byte	0x75a
	.4byte	.LASF1196
	.byte	0x1
	.4byte	0x7fdf
	.4byte	0x7ff0
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1182
	.byte	0x16
	.2byte	0x75c
	.4byte	.LASF1197
	.byte	0x1
	.4byte	0x8006
	.4byte	0x8017
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF700
	.byte	0x16
	.2byte	0x75d
	.4byte	.LASF1198
	.byte	0x1
	.4byte	0x802d
	.4byte	0x803e
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF517
	.byte	0x16
	.2byte	0x75f
	.4byte	.LASF1199
	.4byte	0xc7
	.byte	0x1
	.4byte	0x8058
	.4byte	0x805f
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF846
	.byte	0x16
	.2byte	0x761
	.4byte	.LASF1200
	.4byte	0x50be
	.byte	0x1
	.4byte	0x8079
	.4byte	0x8085
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF846
	.byte	0x16
	.2byte	0x762
	.4byte	.LASF1201
	.4byte	0x50c4
	.byte	0x1
	.4byte	0x809f
	.4byte	0x80ab
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1202
	.byte	0x16
	.2byte	0x763
	.4byte	.LASF1203
	.4byte	0x50a8
	.byte	0x1
	.4byte	0x80c5
	.4byte	0x80d1
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1202
	.byte	0x16
	.2byte	0x764
	.4byte	.LASF1204
	.4byte	0x49c1
	.byte	0x1
	.4byte	0x80eb
	.4byte	0x80f7
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x765
	.4byte	.LASF1205
	.4byte	0x2110
	.byte	0x1
	.4byte	0x8111
	.4byte	0x8118
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF519
	.byte	0x16
	.2byte	0x766
	.4byte	.LASF1206
	.4byte	0x2236
	.byte	0x1
	.4byte	0x8132
	.4byte	0x8139
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF522
	.byte	0x16
	.2byte	0x767
	.4byte	.LASF1207
	.4byte	0x106
	.byte	0x1
	.4byte	0x8153
	.4byte	0x815f
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1208
	.byte	0x16
	.2byte	0x769
	.4byte	.LASF1209
	.byte	0x1
	.4byte	0x8175
	.4byte	0x818b
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1210
	.byte	0x16
	.2byte	0x76a
	.4byte	.LASF1211
	.byte	0x1
	.4byte	0x81a1
	.4byte	0x81b2
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1212
	.byte	0x16
	.2byte	0x76b
	.4byte	.LASF1213
	.byte	0x1
	.4byte	0x81c8
	.4byte	0x81de
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1214
	.byte	0x16
	.2byte	0x76c
	.4byte	.LASF1215
	.byte	0x1
	.4byte	0x81f4
	.4byte	0x8205
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1216
	.byte	0x16
	.2byte	0x76d
	.4byte	.LASF1217
	.byte	0x1
	.4byte	0x821b
	.4byte	0x822c
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1218
	.byte	0x16
	.2byte	0x76e
	.4byte	.LASF1219
	.byte	0x1
	.4byte	0x8242
	.4byte	0x824e
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1220
	.byte	0x16
	.2byte	0x76f
	.4byte	.LASF1221
	.byte	0x1
	.4byte	0x8264
	.4byte	0x8270
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1222
	.byte	0x16
	.2byte	0x771
	.4byte	.LASF1223
	.4byte	0x1601
	.byte	0x1
	.4byte	0x828a
	.4byte	0x8291
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1224
	.byte	0x16
	.2byte	0x772
	.4byte	.LASF1225
	.4byte	0x1601
	.byte	0x1
	.4byte	0x82ab
	.4byte	0x82c1
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1226
	.byte	0x16
	.2byte	0x773
	.4byte	.LASF1227
	.4byte	0x1601
	.byte	0x1
	.4byte	0x82db
	.4byte	0x82f1
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1228
	.byte	0x16
	.2byte	0x774
	.4byte	.LASF1229
	.4byte	0x1601
	.byte	0x1
	.4byte	0x830b
	.4byte	0x831c
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1230
	.byte	0x16
	.2byte	0x775
	.4byte	.LASF1231
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8336
	.4byte	0x834c
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1232
	.byte	0x16
	.2byte	0x776
	.4byte	.LASF1233
	.byte	0x1
	.4byte	0x8362
	.4byte	0x8373
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1234
	.byte	0x16
	.2byte	0x778
	.4byte	.LASF1235
	.4byte	0x1601
	.byte	0x1
	.4byte	0x838d
	.4byte	0x839e
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8da3
	.uleb128 0x1a
	.4byte	0x2236
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1236
	.byte	0x16
	.2byte	0x779
	.4byte	.LASF1237
	.4byte	0x1601
	.byte	0x1
	.4byte	0x83b8
	.4byte	0x83d3
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1238
	.byte	0x16
	.2byte	0x77a
	.4byte	.LASF1239
	.4byte	0x1601
	.byte	0x1
	.4byte	0x83ed
	.4byte	0x8408
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1240
	.byte	0x16
	.2byte	0x77b
	.4byte	.LASF1241
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8422
	.4byte	0x8438
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1242
	.byte	0x16
	.2byte	0x77c
	.4byte	.LASF1243
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8452
	.4byte	0x8472
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1244
	.byte	0x16
	.2byte	0x77d
	.4byte	.LASF1245
	.byte	0x1
	.4byte	0x8488
	.4byte	0x849e
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8da9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1246
	.byte	0x16
	.2byte	0x77e
	.4byte	.LASF1247
	.byte	0x1
	.4byte	0x84b4
	.4byte	0x84c5
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8da9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1248
	.byte	0x16
	.2byte	0x77f
	.4byte	.LASF1249
	.byte	0x1
	.4byte	0x84db
	.4byte	0x84ec
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1250
	.byte	0x16
	.2byte	0x780
	.4byte	.LASF1251
	.byte	0x1
	.4byte	0x8502
	.4byte	0x8513
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8da9
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1252
	.byte	0x16
	.2byte	0x782
	.4byte	.LASF1253
	.4byte	0x1601
	.byte	0x1
	.4byte	0x852d
	.4byte	0x853e
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1254
	.byte	0x16
	.2byte	0x783
	.4byte	.LASF1255
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8558
	.4byte	0x8573
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1256
	.byte	0x16
	.2byte	0x784
	.4byte	.LASF1257
	.4byte	0x1601
	.byte	0x1
	.4byte	0x858d
	.4byte	0x85a8
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1258
	.byte	0x16
	.2byte	0x785
	.4byte	.LASF1259
	.4byte	0x1601
	.byte	0x1
	.4byte	0x85c2
	.4byte	0x85d8
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1260
	.byte	0x16
	.2byte	0x786
	.4byte	.LASF1261
	.4byte	0x1601
	.byte	0x1
	.4byte	0x85f2
	.4byte	0x860d
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1262
	.byte	0x16
	.2byte	0x787
	.4byte	.LASF1263
	.byte	0x1
	.4byte	0x8623
	.4byte	0x863e
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1262
	.byte	0x16
	.2byte	0x788
	.4byte	.LASF1264
	.byte	0x1
	.4byte	0x8654
	.4byte	0x866a
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1265
	.byte	0x16
	.2byte	0x789
	.4byte	.LASF1266
	.byte	0x1
	.4byte	0x8680
	.4byte	0x8696
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1267
	.byte	0x16
	.2byte	0x78a
	.4byte	.LASF1268
	.byte	0x1
	.4byte	0x86ac
	.4byte	0x86c7
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1269
	.byte	0x16
	.2byte	0x78b
	.4byte	.LASF1270
	.byte	0x1
	.4byte	0x86dd
	.4byte	0x86f3
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1271
	.byte	0x16
	.2byte	0x78d
	.4byte	.LASF1272
	.4byte	0x1601
	.byte	0x1
	.4byte	0x870d
	.4byte	0x871e
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1273
	.byte	0x16
	.2byte	0x78e
	.4byte	.LASF1274
	.byte	0x1
	.4byte	0x8734
	.4byte	0x874f
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1275
	.byte	0x16
	.2byte	0x78f
	.4byte	.LASF1276
	.byte	0x1
	.4byte	0x8765
	.4byte	0x877b
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1277
	.byte	0x16
	.2byte	0x790
	.4byte	.LASF1278
	.byte	0x1
	.4byte	0x8791
	.4byte	0x87a7
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x8d8c
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1279
	.byte	0x16
	.2byte	0x792
	.4byte	.LASF1280
	.4byte	0x1601
	.byte	0x1
	.4byte	0x87c1
	.4byte	0x87c8
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1281
	.byte	0x16
	.2byte	0x793
	.4byte	.LASF1282
	.4byte	0x1601
	.byte	0x1
	.4byte	0x87e2
	.4byte	0x87f8
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1283
	.byte	0x16
	.2byte	0x794
	.4byte	.LASF1284
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8812
	.4byte	0x8823
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1285
	.byte	0x16
	.2byte	0x795
	.4byte	.LASF1286
	.4byte	0x1601
	.byte	0x1
	.4byte	0x883d
	.4byte	0x8849
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1287
	.byte	0x16
	.2byte	0x796
	.4byte	.LASF1288
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8863
	.4byte	0x8874
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1289
	.byte	0x16
	.2byte	0x797
	.4byte	.LASF1290
	.byte	0x1
	.4byte	0x888a
	.4byte	0x889b
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1291
	.byte	0x16
	.2byte	0x798
	.4byte	.LASF1292
	.byte	0x1
	.4byte	0x88b1
	.4byte	0x88bd
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1293
	.byte	0x16
	.2byte	0x799
	.4byte	.LASF1294
	.byte	0x1
	.4byte	0x88d3
	.4byte	0x88df
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1295
	.byte	0x16
	.2byte	0x79b
	.4byte	.LASF1296
	.4byte	0x1601
	.byte	0x1
	.4byte	0x88f9
	.4byte	0x8900
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1297
	.byte	0x16
	.2byte	0x79c
	.4byte	.LASF1298
	.4byte	0x1601
	.byte	0x1
	.4byte	0x891a
	.4byte	0x8930
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1299
	.byte	0x16
	.2byte	0x79d
	.4byte	.LASF1300
	.4byte	0x1601
	.byte	0x1
	.4byte	0x894a
	.4byte	0x895b
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1301
	.byte	0x16
	.2byte	0x79e
	.4byte	.LASF1302
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8975
	.4byte	0x8981
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1303
	.byte	0x16
	.2byte	0x79f
	.4byte	.LASF1304
	.4byte	0x1601
	.byte	0x1
	.4byte	0x899b
	.4byte	0x89ac
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d97
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1305
	.byte	0x16
	.2byte	0x7a0
	.4byte	.LASF1306
	.byte	0x1
	.4byte	0x89c2
	.4byte	0x89d3
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1307
	.byte	0x16
	.2byte	0x7a1
	.4byte	.LASF1308
	.byte	0x1
	.4byte	0x89e9
	.4byte	0x89f5
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1309
	.byte	0x16
	.2byte	0x7a2
	.4byte	.LASF1310
	.byte	0x1
	.4byte	0x8a0b
	.4byte	0x8a1c
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1311
	.byte	0x16
	.2byte	0x7a3
	.4byte	.LASF1312
	.byte	0x1
	.4byte	0x8a32
	.4byte	0x8a3e
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1313
	.byte	0x16
	.2byte	0x7a5
	.4byte	.LASF1314
	.byte	0x1
	.4byte	0x8a54
	.4byte	0x8a5b
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1315
	.byte	0x16
	.2byte	0x7a6
	.4byte	.LASF1316
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8a75
	.4byte	0x8a86
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d97
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1317
	.byte	0x16
	.2byte	0x7a7
	.4byte	.LASF1318
	.byte	0x1
	.4byte	0x8a9c
	.4byte	0x8aa8
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1319
	.byte	0x16
	.2byte	0x7a9
	.4byte	.LASF1320
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8ac2
	.4byte	0x8ace
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1321
	.byte	0x16
	.2byte	0x7aa
	.4byte	.LASF1322
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8ae8
	.4byte	0x8af4
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1323
	.byte	0x16
	.2byte	0x7ab
	.4byte	.LASF1324
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8b0e
	.4byte	0x8b1f
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1325
	.byte	0x16
	.2byte	0x7ac
	.4byte	.LASF1326
	.byte	0x1
	.4byte	0x8b35
	.4byte	0x8b41
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1327
	.byte	0x16
	.2byte	0x7ad
	.4byte	.LASF1328
	.byte	0x1
	.4byte	0x8b57
	.4byte	0x8b63
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF1329
	.byte	0x16
	.2byte	0x7af
	.4byte	.LASF2357
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF852
	.byte	0x16
	.2byte	0x7bc
	.4byte	.LASF1330
	.byte	0x3
	.byte	0x1
	.4byte	0x8b88
	.4byte	0x8b99
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1332
	.byte	0x16
	.2byte	0x7bd
	.4byte	.LASF1334
	.4byte	0x135
	.byte	0x3
	.byte	0x1
	.4byte	0x8bb4
	.4byte	0x8bbb
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1335
	.byte	0x16
	.2byte	0x7be
	.4byte	.LASF1336
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0x8bd6
	.4byte	0x8bdd
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1337
	.byte	0x16
	.2byte	0x7bf
	.4byte	.LASF1338
	.byte	0x3
	.byte	0x1
	.4byte	0x8bf4
	.4byte	0x8c0f
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1339
	.byte	0x16
	.2byte	0x7c0
	.4byte	.LASF1340
	.4byte	0x135
	.byte	0x3
	.byte	0x1
	.4byte	0x8c2a
	.4byte	0x8c3b
	.uleb128 0x18
	.4byte	0x8d7b
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1341
	.byte	0x16
	.2byte	0x7c1
	.4byte	.LASF1342
	.byte	0x3
	.byte	0x1
	.4byte	0x8c52
	.4byte	0x8c68
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1343
	.byte	0x16
	.2byte	0x7c2
	.4byte	.LASF1344
	.byte	0x3
	.byte	0x1
	.4byte	0x8c7f
	.4byte	0x8c95
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1345
	.byte	0x16
	.2byte	0x7c3
	.4byte	.LASF1346
	.byte	0x3
	.byte	0x1
	.4byte	0x8cac
	.4byte	0x8cbd
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"QL"
	.byte	0x16
	.2byte	0x7c4
	.4byte	.LASF8505
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0x8cd7
	.4byte	0x8ce8
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1347
	.byte	0x16
	.2byte	0x7c5
	.4byte	.LASF1348
	.byte	0x3
	.byte	0x1
	.4byte	0x8cff
	.4byte	0x8d0b
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1349
	.byte	0x16
	.2byte	0x7c6
	.4byte	.LASF1350
	.byte	0x3
	.byte	0x1
	.4byte	0x8d22
	.4byte	0x8d47
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.4byte	.LASF1351
	.byte	0x16
	.2byte	0x7c7
	.4byte	.LASF1352
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0x8d5e
	.uleb128 0x18
	.4byte	0x8d75
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x8d86
	.uleb128 0x1a
	.4byte	0x8d9d
	.uleb128 0x1a
	.4byte	0x8d9d
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x73a2
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d81
	.uleb128 0xc
	.4byte	0x73a2
	.uleb128 0x25
	.byte	0x4
	.4byte	0x73a2
	.uleb128 0x25
	.byte	0x4
	.4byte	0x8d92
	.uleb128 0xc
	.4byte	0x73a2
	.uleb128 0x25
	.byte	0x4
	.4byte	0x50a8
	.uleb128 0x25
	.byte	0x4
	.4byte	0x49c1
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2220
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2f1c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x2f1c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8dc1
	.uleb128 0xc
	.4byte	0x2f1c
	.uleb128 0x25
	.byte	0x4
	.4byte	0x8dcc
	.uleb128 0xc
	.4byte	0x2f1c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5696
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8ddd
	.uleb128 0xc
	.4byte	0x5696
	.uleb128 0x25
	.byte	0x4
	.4byte	0x5696
	.uleb128 0x25
	.byte	0x4
	.4byte	0x8dee
	.uleb128 0xc
	.4byte	0x5696
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5bac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8dff
	.uleb128 0xc
	.4byte	0x5bac
	.uleb128 0x25
	.byte	0x4
	.4byte	0x8e0a
	.uleb128 0xc
	.4byte	0x5bac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e61
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8e1b
	.uleb128 0xc
	.4byte	0x5e61
	.uleb128 0x25
	.byte	0x4
	.4byte	0x5e61
	.uleb128 0x2e
	.4byte	.LASF1353
	.byte	0x10
	.byte	0x29
	.byte	0x47
	.4byte	0x94c4
	.uleb128 0x4b
	.string	"a"
	.byte	0x29
	.byte	0x80
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x4b
	.string	"b"
	.byte	0x29
	.byte	0x81
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x4b
	.string	"c"
	.byte	0x29
	.byte	0x82
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x4b
	.string	"d"
	.byte	0x29
	.byte	0x83
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1353
	.byte	0x29
	.byte	0x49
	.byte	0x1
	.4byte	0x8e77
	.4byte	0x8e7e
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1353
	.byte	0x29
	.byte	0x4a
	.byte	0x1
	.4byte	0x8e8f
	.4byte	0x8eaa
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1353
	.byte	0x29
	.byte	0x4b
	.byte	0x1
	.4byte	0x8ebb
	.4byte	0x8ecc
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x29
	.byte	0x4d
	.4byte	.LASF1354
	.4byte	0x135
	.byte	0x1
	.4byte	0x8ee5
	.4byte	0x8ef1
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x29
	.byte	0x4e
	.4byte	.LASF1355
	.4byte	0x2104
	.byte	0x1
	.4byte	0x8f0a
	.4byte	0x8f16
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x29
	.byte	0x4f
	.4byte	.LASF1356
	.4byte	0x8e26
	.byte	0x1
	.4byte	0x8f2f
	.4byte	0x8f36
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF287
	.byte	0x29
	.byte	0x50
	.4byte	.LASF1357
	.4byte	0x94d5
	.byte	0x1
	.4byte	0x8f4f
	.4byte	0x8f5b
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x29
	.byte	0x51
	.4byte	.LASF1358
	.4byte	0x8e26
	.byte	0x1
	.4byte	0x8f74
	.4byte	0x8f80
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x29
	.byte	0x52
	.4byte	.LASF1359
	.4byte	0x8e26
	.byte	0x1
	.4byte	0x8f99
	.4byte	0x8fa5
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x29
	.byte	0x53
	.4byte	.LASF1360
	.4byte	0x94d5
	.byte	0x1
	.4byte	0x8fbe
	.4byte	0x8fca
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x29
	.byte	0x55
	.4byte	.LASF1361
	.4byte	0x1601
	.byte	0x1
	.4byte	0x8fe3
	.4byte	0x8fef
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x29
	.byte	0x56
	.4byte	.LASF1362
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9008
	.4byte	0x9019
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x29
	.byte	0x57
	.4byte	.LASF1363
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9032
	.4byte	0x9048
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x29
	.byte	0x58
	.4byte	.LASF1364
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9061
	.4byte	0x906d
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x29
	.byte	0x59
	.4byte	.LASF1365
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9086
	.4byte	0x9092
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x29
	.byte	0x5b
	.4byte	.LASF1366
	.byte	0x1
	.4byte	0x90a7
	.4byte	0x90ae
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1367
	.byte	0x29
	.byte	0x5c
	.4byte	.LASF1368
	.byte	0x1
	.4byte	0x90c3
	.4byte	0x90cf
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1369
	.byte	0x29
	.byte	0x5d
	.4byte	.LASF1370
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x90e8
	.4byte	0x90ef
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1369
	.byte	0x29
	.byte	0x5e
	.4byte	.LASF1371
	.4byte	0x42aa
	.byte	0x1
	.4byte	0x9108
	.4byte	0x910f
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF505
	.byte	0x29
	.byte	0x5f
	.4byte	.LASF1372
	.4byte	0x135
	.byte	0x1
	.4byte	0x9128
	.4byte	0x9134
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF545
	.byte	0x29
	.byte	0x60
	.4byte	.LASF1373
	.4byte	0x1601
	.byte	0x1
	.4byte	0x914d
	.4byte	0x9154
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF677
	.byte	0x29
	.byte	0x61
	.4byte	.LASF1374
	.4byte	0x1601
	.byte	0x1
	.4byte	0x916d
	.4byte	0x9179
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1375
	.byte	0x29
	.byte	0x62
	.4byte	.LASF1376
	.4byte	0x135
	.byte	0x1
	.4byte	0x9192
	.4byte	0x9199
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1377
	.byte	0x29
	.byte	0x63
	.4byte	.LASF1378
	.byte	0x1
	.4byte	0x91ae
	.4byte	0x91ba
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1379
	.byte	0x29
	.byte	0x64
	.4byte	.LASF1380
	.4byte	0xc7
	.byte	0x1
	.4byte	0x91d3
	.4byte	0x91da
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1381
	.byte	0x29
	.byte	0x66
	.4byte	.LASF1382
	.4byte	0x1601
	.byte	0x1
	.4byte	0x91f3
	.4byte	0x920e
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1383
	.byte	0x29
	.byte	0x67
	.4byte	.LASF1384
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9227
	.4byte	0x9242
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x29
	.byte	0x68
	.4byte	.LASF1386
	.byte	0x1
	.4byte	0x9257
	.4byte	0x9263
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x29
	.byte	0x69
	.4byte	.LASF1388
	.4byte	0x1601
	.byte	0x1
	.4byte	0x927c
	.4byte	0x928d
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x29
	.byte	0x6a
	.4byte	.LASF1390
	.4byte	0x8e26
	.byte	0x1
	.4byte	0x92a6
	.4byte	0x92b2
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x29
	.byte	0x6b
	.4byte	.LASF1392
	.4byte	0x94d5
	.byte	0x1
	.4byte	0x92cb
	.4byte	0x92d7
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x29
	.byte	0x6c
	.4byte	.LASF1394
	.4byte	0x8e26
	.byte	0x1
	.4byte	0x92f0
	.4byte	0x9301
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1395
	.byte	0x29
	.byte	0x6d
	.4byte	.LASF1396
	.4byte	0x94d5
	.byte	0x1
	.4byte	0x931a
	.4byte	0x932b
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x29
	.byte	0x6f
	.4byte	.LASF1398
	.4byte	0x135
	.byte	0x1
	.4byte	0x9344
	.4byte	0x9350
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x29
	.byte	0x70
	.4byte	.LASF1400
	.4byte	0xc7
	.byte	0x1
	.4byte	0x9369
	.4byte	0x937a
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x29
	.byte	0x72
	.4byte	.LASF1402
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9393
	.4byte	0x93a4
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1403
	.byte	0x29
	.byte	0x74
	.4byte	.LASF1404
	.4byte	0x1601
	.byte	0x1
	.4byte	0x93bd
	.4byte	0x93d3
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1405
	.byte	0x29
	.byte	0x75
	.4byte	.LASF1406
	.4byte	0x1601
	.byte	0x1
	.4byte	0x93ec
	.4byte	0x9402
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94db
	.uleb128 0x1a
	.4byte	0x42aa
	.uleb128 0x1a
	.4byte	0x42aa
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF517
	.byte	0x29
	.byte	0x77
	.4byte	.LASF1407
	.4byte	0xc7
	.byte	0x1
	.4byte	0x941b
	.4byte	0x9422
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1408
	.byte	0x29
	.byte	0x79
	.4byte	.LASF1409
	.4byte	0x6877
	.byte	0x1
	.4byte	0x943b
	.4byte	0x9442
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1408
	.byte	0x29
	.byte	0x7a
	.4byte	.LASF1410
	.4byte	0x68a4
	.byte	0x1
	.4byte	0x945b
	.4byte	0x9462
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x29
	.byte	0x7b
	.4byte	.LASF1411
	.4byte	0x2110
	.byte	0x1
	.4byte	0x947b
	.4byte	0x9482
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x29
	.byte	0x7c
	.4byte	.LASF1412
	.4byte	0x2236
	.byte	0x1
	.4byte	0x949b
	.4byte	0x94a2
	.uleb128 0x18
	.4byte	0x94c4
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF522
	.byte	0x29
	.byte	0x7d
	.4byte	.LASF1413
	.4byte	0x106
	.byte	0x1
	.4byte	0x94b7
	.uleb128 0x18
	.4byte	0x94ca
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8e26
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94d0
	.uleb128 0xc
	.4byte	0x8e26
	.uleb128 0x25
	.byte	0x4
	.4byte	0x8e26
	.uleb128 0x25
	.byte	0x4
	.4byte	0x94e1
	.uleb128 0xc
	.4byte	0x8e26
	.uleb128 0x25
	.byte	0x4
	.4byte	0x94d0
	.uleb128 0x2e
	.4byte	.LASF1414
	.byte	0x10
	.byte	0x8
	.byte	0x5c
	.4byte	0x9a8d
	.uleb128 0x4b
	.string	"num"
	.byte	0x8
	.byte	0x8f
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF797
	.byte	0x8
	.byte	0x90
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1415
	.byte	0x8
	.byte	0x91
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1416
	.byte	0x8
	.byte	0x92
	.4byte	0x2236
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1417
	.byte	0x8
	.byte	0x5f
	.4byte	0x9a8d
	.uleb128 0x2
	.4byte	.LASF1418
	.byte	0x8
	.byte	0x60
	.4byte	0x9aa1
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1419
	.byte	0x8
	.byte	0x9b
	.byte	0x1
	.4byte	0x955b
	.4byte	0x9567
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1419
	.byte	0x8
	.byte	0xa9
	.byte	0x1
	.4byte	0x9578
	.4byte	0x9584
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9aac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x8
	.byte	0xb4
	.byte	0x1
	.4byte	0x9595
	.4byte	0x95a2
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF293
	.byte	0x8
	.byte	0xc0
	.4byte	.LASF1421
	.byte	0x1
	.4byte	0x95b7
	.4byte	0x95be
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x8
	.2byte	0x111
	.4byte	.LASF1449
	.4byte	0xc7
	.byte	0x1
	.4byte	0x95d8
	.4byte	0x95df
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x8
	.2byte	0x11d
	.4byte	.LASF1423
	.4byte	0xc7
	.byte	0x1
	.4byte	0x95f9
	.4byte	0x9600
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x8
	.2byte	0x139
	.4byte	.LASF1425
	.byte	0x1
	.4byte	0x9616
	.4byte	0x9622
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x8
	.2byte	0x151
	.4byte	.LASF1427
	.4byte	0xc7
	.byte	0x1
	.4byte	0x963c
	.4byte	0x9643
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x8
	.byte	0xee
	.4byte	.LASF1429
	.4byte	0x29
	.byte	0x1
	.4byte	0x965c
	.4byte	0x9663
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x8
	.byte	0xfa
	.4byte	.LASF1431
	.4byte	0x29
	.byte	0x1
	.4byte	0x967c
	.4byte	0x9683
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1432
	.byte	0x8
	.2byte	0x104
	.4byte	.LASF1433
	.4byte	0x29
	.byte	0x1
	.4byte	0x969d
	.4byte	0x96a4
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF287
	.byte	0x8
	.2byte	0x21d
	.4byte	.LASF1434
	.4byte	0x9abd
	.byte	0x1
	.4byte	0x96be
	.4byte	0x96ca
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9aac
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x8
	.2byte	0x239
	.4byte	.LASF1435
	.4byte	0x9ac3
	.byte	0x1
	.4byte	0x96e4
	.4byte	0x96f0
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF470
	.byte	0x8
	.2byte	0x249
	.4byte	.LASF1436
	.4byte	0x2104
	.byte	0x1
	.4byte	0x970a
	.4byte	0x9716
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x8
	.2byte	0x15d
	.4byte	.LASF1438
	.byte	0x1
	.4byte	0x972c
	.4byte	0x9733
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1439
	.byte	0x8
	.2byte	0x170
	.4byte	.LASF1440
	.byte	0x1
	.4byte	0x9749
	.4byte	0x9755
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1439
	.byte	0x8
	.2byte	0x19c
	.4byte	.LASF1441
	.byte	0x1
	.4byte	0x976b
	.4byte	0x977c
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x8
	.2byte	0x129
	.4byte	.LASF1443
	.byte	0x1
	.4byte	0x9792
	.4byte	0x97a3
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1444
	.byte	0x8
	.2byte	0x1c5
	.4byte	.LASF1445
	.byte	0x1
	.4byte	0x97b9
	.4byte	0x97c5
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1444
	.byte	0x8
	.2byte	0x1de
	.4byte	.LASF1446
	.byte	0x1
	.4byte	0x97db
	.4byte	0x97ec
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x9ac3
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1447
	.byte	0x8
	.2byte	0x1ff
	.4byte	.LASF1448
	.byte	0x1
	.4byte	0x9802
	.4byte	0x9813
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x9ac9
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x8
	.2byte	0x25c
	.4byte	.LASF1450
	.4byte	0x2236
	.byte	0x1
	.4byte	0x982d
	.4byte	0x9834
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x8
	.2byte	0x26c
	.4byte	.LASF1451
	.4byte	0x2110
	.byte	0x1
	.4byte	0x984e
	.4byte	0x9855
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x8
	.2byte	0x278
	.4byte	.LASF1453
	.4byte	0x2104
	.byte	0x1
	.4byte	0x986f
	.4byte	0x9876
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1454
	.byte	0x8
	.2byte	0x28e
	.4byte	.LASF1455
	.4byte	0xc7
	.byte	0x1
	.4byte	0x9890
	.4byte	0x989c
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9ac3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1454
	.byte	0x8
	.2byte	0x2d6
	.4byte	.LASF1456
	.4byte	0xc7
	.byte	0x1
	.4byte	0x98b6
	.4byte	0x98c2
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9aac
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x8
	.2byte	0x2ee
	.4byte	.LASF1458
	.4byte	0xc7
	.byte	0x1
	.4byte	0x98dc
	.4byte	0x98e8
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9ac3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x8
	.2byte	0x2af
	.4byte	.LASF1460
	.4byte	0xc7
	.byte	0x1
	.4byte	0x9902
	.4byte	0x9913
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9ac3
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1461
	.byte	0x8
	.2byte	0x301
	.4byte	.LASF1462
	.4byte	0xc7
	.byte	0x1
	.4byte	0x992d
	.4byte	0x9939
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9ac3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x316
	.4byte	.LASF1463
	.4byte	0x2236
	.byte	0x1
	.4byte	0x9953
	.4byte	0x995f
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9ac3
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x8
	.2byte	0x32c
	.4byte	.LASF1465
	.4byte	0xc7
	.byte	0x1
	.4byte	0x9979
	.4byte	0x9980
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x8
	.2byte	0x344
	.4byte	.LASF1467
	.4byte	0xc7
	.byte	0x1
	.4byte	0x999a
	.4byte	0x99a6
	.uleb128 0x18
	.4byte	0x9ab7
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2110
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x8
	.2byte	0x359
	.4byte	.LASF1469
	.4byte	0x1601
	.byte	0x1
	.4byte	0x99c0
	.4byte	0x99cc
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x8
	.2byte	0x376
	.4byte	.LASF1471
	.4byte	0x1601
	.byte	0x1
	.4byte	0x99e6
	.4byte	0x99f2
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9ac3
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x8
	.2byte	0x38a
	.4byte	.LASF1473
	.byte	0x1
	.4byte	0x9a08
	.4byte	0x9a14
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9acf
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x8
	.2byte	0x39c
	.4byte	.LASF1475
	.byte	0x1
	.4byte	0x9a2a
	.4byte	0x9a40
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x9acf
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x8
	.2byte	0x3b7
	.4byte	.LASF1477
	.byte	0x1
	.4byte	0x9a56
	.4byte	0x9a62
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9abd
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1478
	.byte	0x8
	.byte	0xd7
	.4byte	.LASF1479
	.byte	0x1
	.4byte	0x9a77
	.4byte	0x9a83
	.uleb128 0x18
	.4byte	0x9aa6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x52
	.4byte	.LASF59
	.4byte	0x135
	.byte	0
	.uleb128 0x53
	.4byte	0xc7
	.4byte	0x9aa1
	.uleb128 0x1a
	.4byte	0x2110
	.uleb128 0x1a
	.4byte	0x2110
	.byte	0
	.uleb128 0x54
	.4byte	0x135
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94ec
	.uleb128 0x25
	.byte	0x4
	.4byte	0x9ab2
	.uleb128 0xc
	.4byte	0x94ec
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9ab2
	.uleb128 0x25
	.byte	0x4
	.4byte	0x94ec
	.uleb128 0x25
	.byte	0x4
	.4byte	0x20ee
	.uleb128 0xb
	.byte	0x4
	.4byte	0x953f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9534
	.uleb128 0x2
	.4byte	.LASF1480
	.byte	0x2a
	.byte	0x2f
	.4byte	0x9ae0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9ae6
	.uleb128 0x55
	.4byte	0x9b00
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x9b00
	.uleb128 0x1a
	.4byte	0x2110
	.uleb128 0x1a
	.4byte	0x2236
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9b06
	.uleb128 0x56
	.uleb128 0x2e
	.4byte	.LASF1481
	.byte	0x10
	.byte	0x2b
	.byte	0x28
	.4byte	0xa0a0
	.uleb128 0x29
	.4byte	.LASF942
	.byte	0x2b
	.byte	0x5f
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF635
	.byte	0x2b
	.byte	0x60
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1481
	.byte	0x2b
	.byte	0x2a
	.byte	0x1
	.4byte	0x9b42
	.4byte	0x9b49
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1481
	.byte	0x2b
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0x9b5b
	.4byte	0x9b67
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1481
	.byte	0x2b
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0x9b79
	.4byte	0x9b8a
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x2b
	.byte	0x2e
	.4byte	.LASF1482
	.4byte	0x135
	.byte	0x1
	.4byte	0x9ba3
	.4byte	0x9baf
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x2b
	.byte	0x2f
	.4byte	.LASF1483
	.4byte	0x2104
	.byte	0x1
	.4byte	0x9bc8
	.4byte	0x9bd4
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x2b
	.byte	0x30
	.4byte	.LASF1484
	.4byte	0x9b07
	.byte	0x1
	.4byte	0x9bed
	.4byte	0x9bf9
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x2b
	.byte	0x31
	.4byte	.LASF1485
	.4byte	0xa0b1
	.byte	0x1
	.4byte	0x9c12
	.4byte	0x9c1e
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x2b
	.byte	0x32
	.4byte	.LASF1486
	.4byte	0x9b07
	.byte	0x1
	.4byte	0x9c37
	.4byte	0x9c43
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x2b
	.byte	0x33
	.4byte	.LASF1487
	.4byte	0xa0b1
	.byte	0x1
	.4byte	0x9c5c
	.4byte	0x9c68
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x2b
	.byte	0x35
	.4byte	.LASF1488
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9c81
	.4byte	0x9c8d
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x2b
	.byte	0x36
	.4byte	.LASF1489
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9ca6
	.4byte	0x9cb7
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x2b
	.byte	0x37
	.4byte	.LASF1490
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9cd0
	.4byte	0x9cdc
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x2b
	.byte	0x38
	.4byte	.LASF1491
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9cf5
	.4byte	0x9d01
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF293
	.byte	0x2b
	.byte	0x3a
	.4byte	.LASF1492
	.byte	0x1
	.4byte	0x9d16
	.4byte	0x9d1d
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x2b
	.byte	0x3b
	.4byte	.LASF1493
	.byte	0x1
	.4byte	0x9d32
	.4byte	0x9d39
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF947
	.byte	0x2b
	.byte	0x3c
	.4byte	.LASF1494
	.byte	0x1
	.4byte	0x9d4e
	.4byte	0x9d5a
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1495
	.byte	0x2b
	.byte	0x3d
	.4byte	.LASF1496
	.byte	0x1
	.4byte	0x9d6f
	.4byte	0x9d7b
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF958
	.byte	0x2b
	.byte	0x3f
	.4byte	.LASF1497
	.4byte	0x42a4
	.byte	0x1
	.4byte	0x9d94
	.4byte	0x9d9b
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x2b
	.byte	0x40
	.4byte	.LASF1499
	.4byte	0x135
	.byte	0x1
	.4byte	0x9db4
	.4byte	0x9dbb
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x2b
	.byte	0x41
	.4byte	.LASF1501
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9dd4
	.4byte	0x9ddb
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x2b
	.byte	0x43
	.4byte	.LASF1503
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9df4
	.4byte	0x9e00
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x2b
	.byte	0x44
	.4byte	.LASF1505
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9e19
	.4byte	0x9e25
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1506
	.byte	0x2b
	.byte	0x45
	.4byte	.LASF1507
	.4byte	0x9b07
	.byte	0x1
	.4byte	0x9e3e
	.4byte	0x9e4a
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x2b
	.byte	0x46
	.4byte	.LASF1509
	.4byte	0xa0b1
	.byte	0x1
	.4byte	0x9e63
	.4byte	0x9e6f
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x2b
	.byte	0x47
	.4byte	.LASF1510
	.4byte	0x9b07
	.byte	0x1
	.4byte	0x9e88
	.4byte	0x9e94
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x2b
	.byte	0x48
	.4byte	.LASF1511
	.4byte	0xa0b1
	.byte	0x1
	.4byte	0x9ead
	.4byte	0x9eb9
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x2b
	.byte	0x4a
	.4byte	.LASF1513
	.4byte	0x135
	.byte	0x1
	.4byte	0x9ed2
	.4byte	0x9ede
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x2b
	.byte	0x4b
	.4byte	.LASF1515
	.4byte	0xc7
	.byte	0x1
	.4byte	0x9ef7
	.4byte	0x9f08
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1516
	.byte	0x2b
	.byte	0x4d
	.4byte	.LASF1517
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9f21
	.4byte	0x9f2d
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1518
	.byte	0x2b
	.byte	0x4e
	.4byte	.LASF1519
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9f46
	.4byte	0x9f52
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x2b
	.byte	0x4f
	.4byte	.LASF1520
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9f6b
	.4byte	0x9f7c
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1403
	.byte	0x2b
	.byte	0x51
	.4byte	.LASF1521
	.4byte	0x1601
	.byte	0x1
	.4byte	0x9f95
	.4byte	0x9fb0
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1381
	.byte	0x2b
	.byte	0x54
	.4byte	.LASF1522
	.byte	0x1
	.4byte	0x9fc5
	.4byte	0x9fd6
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1523
	.byte	0x2b
	.byte	0x56
	.4byte	.LASF1524
	.byte	0x1
	.4byte	0x9feb
	.4byte	0x9ffc
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1525
	.byte	0x2b
	.byte	0x57
	.4byte	.LASF1526
	.byte	0x1
	.4byte	0xa011
	.4byte	0xa027
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x2b
	.byte	0x59
	.4byte	.LASF1528
	.byte	0x1
	.4byte	0xa03c
	.4byte	0xa04d
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xa0c2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x2b
	.byte	0x5a
	.4byte	.LASF1530
	.byte	0x1
	.4byte	0xa062
	.4byte	0xa078
	.uleb128 0x18
	.4byte	0xa0a0
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa0b7
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xa0c2
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x2b
	.byte	0x5c
	.4byte	.LASF1532
	.byte	0x1
	.4byte	0xa089
	.uleb128 0x18
	.4byte	0xa0a6
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9b07
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa0ac
	.uleb128 0xc
	.4byte	0x9b07
	.uleb128 0x25
	.byte	0x4
	.4byte	0x9b07
	.uleb128 0x25
	.byte	0x4
	.4byte	0xa0bd
	.uleb128 0xc
	.4byte	0x9b07
	.uleb128 0x25
	.byte	0x4
	.4byte	0x8e1b
	.uleb128 0x2e
	.4byte	.LASF1533
	.byte	0x18
	.byte	0x12
	.byte	0x28
	.4byte	0xa841
	.uleb128 0x4b
	.string	"b"
	.byte	0x12
	.byte	0x6d
	.4byte	0xa841
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1533
	.byte	0x12
	.byte	0x2a
	.byte	0x1
	.4byte	0xa0f2
	.4byte	0xa0f9
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1533
	.byte	0x12
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0xa10b
	.4byte	0xa11c
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1533
	.byte	0x12
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0xa12e
	.4byte	0xa13a
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x12
	.byte	0x2e
	.4byte	.LASF1534
	.4byte	0x42a4
	.byte	0x1
	.4byte	0xa153
	.4byte	0xa15f
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x12
	.byte	0x2f
	.4byte	.LASF1535
	.4byte	0x42aa
	.byte	0x1
	.4byte	0xa178
	.4byte	0xa184
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x12
	.byte	0x30
	.4byte	.LASF1536
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa19d
	.4byte	0xa1a9
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x12
	.byte	0x31
	.4byte	.LASF1537
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa1c2
	.4byte	0xa1ce
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x12
	.byte	0x32
	.4byte	.LASF1538
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa1e7
	.4byte	0xa1f3
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x12
	.byte	0x33
	.4byte	.LASF1539
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa20c
	.4byte	0xa218
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x12
	.byte	0x34
	.4byte	.LASF1540
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa231
	.4byte	0xa23d
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x12
	.byte	0x35
	.4byte	.LASF1541
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa256
	.4byte	0xa262
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x12
	.byte	0x36
	.4byte	.LASF1542
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa27b
	.4byte	0xa287
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF485
	.byte	0x12
	.byte	0x37
	.4byte	.LASF1543
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa2a0
	.4byte	0xa2ac
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x12
	.byte	0x39
	.4byte	.LASF1544
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa2c5
	.4byte	0xa2d1
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x12
	.byte	0x3a
	.4byte	.LASF1545
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa2ea
	.4byte	0xa2fb
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x12
	.byte	0x3b
	.4byte	.LASF1546
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa314
	.4byte	0xa320
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x12
	.byte	0x3c
	.4byte	.LASF1547
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa339
	.4byte	0xa345
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF293
	.byte	0x12
	.byte	0x3e
	.4byte	.LASF1548
	.byte	0x1
	.4byte	0xa35a
	.4byte	0xa361
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x12
	.byte	0x3f
	.4byte	.LASF1549
	.byte	0x1
	.4byte	0xa376
	.4byte	0xa37d
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1550
	.byte	0x12
	.byte	0x41
	.4byte	.LASF1551
	.4byte	0x2744
	.byte	0x1
	.4byte	0xa396
	.4byte	0xa39d
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x12
	.byte	0x42
	.4byte	.LASF1552
	.4byte	0x135
	.byte	0x1
	.4byte	0xa3b6
	.4byte	0xa3bd
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x12
	.byte	0x43
	.4byte	.LASF1553
	.4byte	0x135
	.byte	0x1
	.4byte	0xa3d6
	.4byte	0xa3e2
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1554
	.byte	0x12
	.byte	0x44
	.4byte	.LASF1555
	.4byte	0x135
	.byte	0x1
	.4byte	0xa3fb
	.4byte	0xa402
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x12
	.byte	0x45
	.4byte	.LASF1556
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa41b
	.4byte	0xa422
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x12
	.byte	0x47
	.4byte	.LASF1557
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa43b
	.4byte	0xa447
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1558
	.byte	0x12
	.byte	0x48
	.4byte	.LASF1559
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa460
	.4byte	0xa46c
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1560
	.byte	0x12
	.byte	0x49
	.4byte	.LASF1561
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa485
	.4byte	0xa491
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1562
	.byte	0x12
	.byte	0x4a
	.4byte	.LASF1563
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa4aa
	.4byte	0xa4b6
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1506
	.byte	0x12
	.byte	0x4b
	.4byte	.LASF1564
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa4cf
	.4byte	0xa4db
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x12
	.byte	0x4c
	.4byte	.LASF1565
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa4f4
	.4byte	0xa500
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x12
	.byte	0x4d
	.4byte	.LASF1566
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa519
	.4byte	0xa525
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x12
	.byte	0x4e
	.4byte	.LASF1567
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa53e
	.4byte	0xa54a
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x12
	.byte	0x4f
	.4byte	.LASF1568
	.4byte	0xa0c8
	.byte	0x1
	.4byte	0xa563
	.4byte	0xa56f
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1395
	.byte	0x12
	.byte	0x50
	.4byte	.LASF1569
	.4byte	0xa862
	.byte	0x1
	.4byte	0xa588
	.4byte	0xa594
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x12
	.byte	0x52
	.4byte	.LASF1570
	.4byte	0x135
	.byte	0x1
	.4byte	0xa5ad
	.4byte	0xa5b9
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x12
	.byte	0x53
	.4byte	.LASF1571
	.4byte	0xc7
	.byte	0x1
	.4byte	0xa5d2
	.4byte	0xa5e3
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1516
	.byte	0x12
	.byte	0x55
	.4byte	.LASF1572
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa5fc
	.4byte	0xa608
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1573
	.byte	0x12
	.byte	0x56
	.4byte	.LASF1574
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa621
	.4byte	0xa62d
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x12
	.byte	0x57
	.4byte	.LASF1575
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa646
	.4byte	0xa657
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1403
	.byte	0x12
	.byte	0x59
	.4byte	.LASF1576
	.4byte	0x1601
	.byte	0x1
	.4byte	0xa670
	.4byte	0xa686
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1577
	.byte	0x12
	.byte	0x5c
	.4byte	.LASF1578
	.byte	0x1
	.4byte	0xa69b
	.4byte	0xa6b1
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1381
	.byte	0x12
	.byte	0x5e
	.4byte	.LASF1579
	.byte	0x1
	.4byte	0xa6c6
	.4byte	0xa6d7
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1523
	.byte	0x12
	.byte	0x60
	.4byte	.LASF1580
	.byte	0x1
	.4byte	0xa6ec
	.4byte	0xa6fd
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1581
	.byte	0x12
	.byte	0x61
	.4byte	.LASF1582
	.byte	0x1
	.4byte	0xa712
	.4byte	0xa72d
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x12
	.byte	0x63
	.4byte	.LASF1583
	.byte	0x1
	.4byte	0xa742
	.4byte	0xa753
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xa0c2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1584
	.byte	0x12
	.byte	0x64
	.4byte	.LASF1585
	.byte	0x1
	.4byte	0xa768
	.4byte	0xa783
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xa868
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0xa0c2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1586
	.byte	0x12
	.byte	0x66
	.4byte	.LASF1587
	.byte	0x1
	.4byte	0xa798
	.4byte	0xa7a4
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1588
	.byte	0x12
	.byte	0x67
	.4byte	.LASF1589
	.4byte	0x9b07
	.byte	0x1
	.4byte	0xa7bd
	.4byte	0xa7c4
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x12
	.byte	0x69
	.4byte	.LASF1590
	.byte	0x1
	.4byte	0xa7d9
	.4byte	0xa7ef
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x12
	.byte	0x6a
	.4byte	.LASF1591
	.byte	0x1
	.4byte	0xa804
	.4byte	0xa824
	.uleb128 0x18
	.4byte	0xa857
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF287
	.4byte	0xafd1
	.byte	0x1
	.byte	0x1
	.4byte	0xa834
	.uleb128 0x18
	.4byte	0xa851
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x2744
	.4byte	0xa851
	.uleb128 0x5
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa0c8
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa85d
	.uleb128 0xc
	.4byte	0xa0c8
	.uleb128 0x25
	.byte	0x4
	.4byte	0xa0c8
	.uleb128 0x25
	.byte	0x4
	.4byte	0xa86e
	.uleb128 0xc
	.4byte	0xa0c8
	.uleb128 0x2e
	.4byte	.LASF1592
	.byte	0x3c
	.byte	0x2c
	.byte	0x28
	.4byte	0xafa9
	.uleb128 0x29
	.4byte	.LASF1593
	.byte	0x2c
	.byte	0x6e
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1594
	.byte	0x2c
	.byte	0x6f
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF944
	.byte	0x2c
	.byte	0x70
	.4byte	0x3576
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1592
	.byte	0x2c
	.byte	0x2a
	.byte	0x1
	.4byte	0xa8bd
	.4byte	0xa8c4
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1592
	.byte	0x2c
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0xa8d6
	.4byte	0xa8ec
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1592
	.byte	0x2c
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0xa8fe
	.4byte	0xa90a
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1592
	.byte	0x2c
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.4byte	0xa91c
	.4byte	0xa928
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1592
	.byte	0x2c
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.4byte	0xa93a
	.4byte	0xa950
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x2c
	.byte	0x30
	.4byte	.LASF1595
	.4byte	0xa873
	.byte	0x1
	.4byte	0xa969
	.4byte	0xa975
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x2c
	.byte	0x31
	.4byte	.LASF1596
	.4byte	0xafc0
	.byte	0x1
	.4byte	0xa98e
	.4byte	0xa99a
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x2c
	.byte	0x32
	.4byte	.LASF1597
	.4byte	0xa873
	.byte	0x1
	.4byte	0xa9b3
	.4byte	0xa9bf
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x2c
	.byte	0x33
	.4byte	.LASF1598
	.4byte	0xafc0
	.byte	0x1
	.4byte	0xa9d8
	.4byte	0xa9e4
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF480
	.byte	0x2c
	.byte	0x34
	.4byte	.LASF1599
	.4byte	0xa873
	.byte	0x1
	.4byte	0xa9fd
	.4byte	0xaa09
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x2c
	.byte	0x35
	.4byte	.LASF1600
	.4byte	0xafc0
	.byte	0x1
	.4byte	0xaa22
	.4byte	0xaa2e
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF473
	.byte	0x2c
	.byte	0x36
	.4byte	.LASF1601
	.4byte	0xa873
	.byte	0x1
	.4byte	0xaa47
	.4byte	0xaa53
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF485
	.byte	0x2c
	.byte	0x37
	.4byte	.LASF1602
	.4byte	0xafc0
	.byte	0x1
	.4byte	0xaa6c
	.4byte	0xaa78
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x2c
	.byte	0x39
	.4byte	.LASF1603
	.4byte	0x1601
	.byte	0x1
	.4byte	0xaa91
	.4byte	0xaa9d
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x2c
	.byte	0x3a
	.4byte	.LASF1604
	.4byte	0x1601
	.byte	0x1
	.4byte	0xaab6
	.4byte	0xaac7
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x2c
	.byte	0x3b
	.4byte	.LASF1605
	.4byte	0x1601
	.byte	0x1
	.4byte	0xaae0
	.4byte	0xaaec
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x2c
	.byte	0x3c
	.4byte	.LASF1606
	.4byte	0x1601
	.byte	0x1
	.4byte	0xab05
	.4byte	0xab11
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF293
	.byte	0x2c
	.byte	0x3e
	.4byte	.LASF1607
	.byte	0x1
	.4byte	0xab26
	.4byte	0xab2d
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x2c
	.byte	0x3f
	.4byte	.LASF1608
	.byte	0x1
	.4byte	0xab42
	.4byte	0xab49
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1550
	.byte	0x2c
	.byte	0x41
	.4byte	.LASF1609
	.4byte	0x42a4
	.byte	0x1
	.4byte	0xab62
	.4byte	0xab69
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1610
	.byte	0x2c
	.byte	0x42
	.4byte	.LASF1611
	.4byte	0x42a4
	.byte	0x1
	.4byte	0xab82
	.4byte	0xab89
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1612
	.byte	0x2c
	.byte	0x43
	.4byte	.LASF1613
	.4byte	0x687d
	.byte	0x1
	.4byte	0xaba2
	.4byte	0xaba9
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1554
	.byte	0x2c
	.byte	0x44
	.4byte	.LASF1614
	.4byte	0x135
	.byte	0x1
	.4byte	0xabc2
	.4byte	0xabc9
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x2c
	.byte	0x45
	.4byte	.LASF1615
	.4byte	0x1601
	.byte	0x1
	.4byte	0xabe2
	.4byte	0xabe9
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x2c
	.byte	0x47
	.4byte	.LASF1616
	.4byte	0x1601
	.byte	0x1
	.4byte	0xac02
	.4byte	0xac0e
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1617
	.byte	0x2c
	.byte	0x48
	.4byte	.LASF1618
	.4byte	0x1601
	.byte	0x1
	.4byte	0xac27
	.4byte	0xac33
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1506
	.byte	0x2c
	.byte	0x49
	.4byte	.LASF1619
	.4byte	0xa873
	.byte	0x1
	.4byte	0xac4c
	.4byte	0xac58
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x2c
	.byte	0x4a
	.4byte	.LASF1620
	.4byte	0xafc0
	.byte	0x1
	.4byte	0xac71
	.4byte	0xac7d
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x2c
	.byte	0x4b
	.4byte	.LASF1621
	.4byte	0xa873
	.byte	0x1
	.4byte	0xac96
	.4byte	0xaca2
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x2c
	.byte	0x4c
	.4byte	.LASF1622
	.4byte	0xafc0
	.byte	0x1
	.4byte	0xacbb
	.4byte	0xacc7
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x2c
	.byte	0x4d
	.4byte	.LASF1623
	.4byte	0xa873
	.byte	0x1
	.4byte	0xace0
	.4byte	0xacec
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1395
	.byte	0x2c
	.byte	0x4e
	.4byte	.LASF1624
	.4byte	0xafc0
	.byte	0x1
	.4byte	0xad05
	.4byte	0xad11
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x2c
	.byte	0x50
	.4byte	.LASF1625
	.4byte	0x135
	.byte	0x1
	.4byte	0xad2a
	.4byte	0xad36
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x2c
	.byte	0x51
	.4byte	.LASF1626
	.4byte	0xc7
	.byte	0x1
	.4byte	0xad4f
	.4byte	0xad60
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1516
	.byte	0x2c
	.byte	0x53
	.4byte	.LASF1627
	.4byte	0x1601
	.byte	0x1
	.4byte	0xad79
	.4byte	0xad85
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1628
	.byte	0x2c
	.byte	0x54
	.4byte	.LASF1629
	.4byte	0x1601
	.byte	0x1
	.4byte	0xad9e
	.4byte	0xadaa
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x2c
	.byte	0x55
	.4byte	.LASF1630
	.4byte	0x1601
	.byte	0x1
	.4byte	0xadc3
	.4byte	0xadd4
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1403
	.byte	0x2c
	.byte	0x57
	.4byte	.LASF1631
	.4byte	0x1601
	.byte	0x1
	.4byte	0xaded
	.4byte	0xae08
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1381
	.byte	0x2c
	.byte	0x5a
	.4byte	.LASF1632
	.byte	0x1
	.4byte	0xae1d
	.4byte	0xae2e
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1523
	.byte	0x2c
	.byte	0x5c
	.4byte	.LASF1633
	.byte	0x1
	.4byte	0xae43
	.4byte	0xae54
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1634
	.byte	0x2c
	.byte	0x5d
	.4byte	.LASF1635
	.byte	0x1
	.4byte	0xae69
	.4byte	0xae7a
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x2c
	.byte	0x5f
	.4byte	.LASF1636
	.byte	0x1
	.4byte	0xae8f
	.4byte	0xaea0
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xa0c2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1637
	.byte	0x2c
	.byte	0x60
	.4byte	.LASF1638
	.byte	0x1
	.4byte	0xaeb5
	.4byte	0xaec6
	.uleb128 0x18
	.4byte	0xafa9
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafc6
	.uleb128 0x1a
	.4byte	0xa0c2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1586
	.byte	0x2c
	.byte	0x62
	.4byte	.LASF1639
	.byte	0x1
	.4byte	0xaedb
	.4byte	0xaee7
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1588
	.byte	0x2c
	.byte	0x63
	.4byte	.LASF1640
	.4byte	0x9b07
	.byte	0x1
	.4byte	0xaf00
	.4byte	0xaf07
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x2c
	.byte	0x66
	.4byte	.LASF1641
	.byte	0x1
	.4byte	0xaf1c
	.4byte	0xaf32
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x2c
	.byte	0x67
	.4byte	.LASF1642
	.byte	0x1
	.4byte	0xaf47
	.4byte	0xaf58
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1643
	.byte	0x2c
	.byte	0x6a
	.4byte	.LASF1644
	.4byte	0xc7
	.byte	0x1
	.4byte	0xaf71
	.4byte	0xaf82
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF1645
	.byte	0x2c
	.byte	0x6b
	.4byte	.LASF1646
	.4byte	0xc7
	.byte	0x1
	.4byte	0xaf97
	.uleb128 0x18
	.4byte	0xafb5
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa873
	.uleb128 0x25
	.byte	0x4
	.4byte	0xa85d
	.uleb128 0xb
	.byte	0x4
	.4byte	0xafbb
	.uleb128 0xc
	.4byte	0xa873
	.uleb128 0x25
	.byte	0x4
	.4byte	0xa873
	.uleb128 0x25
	.byte	0x4
	.4byte	0xafcc
	.uleb128 0xc
	.4byte	0xa873
	.uleb128 0x25
	.byte	0x4
	.4byte	0xa0c8
	.uleb128 0x2e
	.4byte	.LASF1647
	.byte	0x44
	.byte	0x2d
	.byte	0x28
	.4byte	0xbbb2
	.uleb128 0x29
	.4byte	.LASF942
	.byte	0x2d
	.byte	0x76
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF944
	.byte	0x2d
	.byte	0x77
	.4byte	0x3576
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1648
	.byte	0x2d
	.byte	0x78
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1649
	.byte	0x2d
	.byte	0x79
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1650
	.byte	0x2d
	.byte	0x7a
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x3
	.uleb128 0x4b
	.string	"dUp"
	.byte	0x2d
	.byte	0x7b
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1651
	.byte	0x2d
	.byte	0x7c
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1647
	.byte	0x2d
	.byte	0x2a
	.byte	0x1
	.4byte	0xb05d
	.4byte	0xb064
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF947
	.byte	0x2d
	.byte	0x2c
	.4byte	.LASF1652
	.byte	0x1
	.4byte	0xb079
	.4byte	0xb085
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1653
	.byte	0x2d
	.byte	0x2d
	.4byte	.LASF1654
	.byte	0x1
	.4byte	0xb09a
	.4byte	0xb0a6
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF820
	.byte	0x2d
	.byte	0x2e
	.4byte	.LASF1655
	.byte	0x1
	.4byte	0xb0bb
	.4byte	0xb0d6
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1656
	.byte	0x2d
	.byte	0x2f
	.4byte	.LASF1657
	.byte	0x1
	.4byte	0xb0eb
	.4byte	0xb0fc
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1658
	.byte	0x2d
	.byte	0x30
	.4byte	.LASF1659
	.byte	0x1
	.4byte	0xb111
	.4byte	0xb11d
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1660
	.byte	0x2d
	.byte	0x31
	.4byte	.LASF1661
	.byte	0x1
	.4byte	0xb132
	.4byte	0xb13e
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF958
	.byte	0x2d
	.byte	0x33
	.4byte	.LASF1662
	.4byte	0x42a4
	.byte	0x1
	.4byte	0xb157
	.4byte	0xb15e
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1612
	.byte	0x2d
	.byte	0x34
	.4byte	.LASF1663
	.4byte	0x687d
	.byte	0x1
	.4byte	0xb177
	.4byte	0xb17e
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1550
	.byte	0x2d
	.byte	0x35
	.4byte	.LASF1664
	.4byte	0x2744
	.byte	0x1
	.4byte	0xb197
	.4byte	0xb19e
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1665
	.byte	0x2d
	.byte	0x37
	.4byte	.LASF1666
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb1b7
	.4byte	0xb1be
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1667
	.byte	0x2d
	.byte	0x38
	.4byte	.LASF1668
	.4byte	0x135
	.byte	0x1
	.4byte	0xb1d7
	.4byte	0xb1de
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1669
	.byte	0x2d
	.byte	0x39
	.4byte	.LASF1670
	.4byte	0x135
	.byte	0x1
	.4byte	0xb1f7
	.4byte	0xb1fe
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1671
	.byte	0x2d
	.byte	0x3a
	.4byte	.LASF1672
	.4byte	0x135
	.byte	0x1
	.4byte	0xb217
	.4byte	0xb21e
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1673
	.byte	0x2d
	.byte	0x3b
	.4byte	.LASF1674
	.4byte	0x135
	.byte	0x1
	.4byte	0xb237
	.4byte	0xb23e
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1506
	.byte	0x2d
	.byte	0x3d
	.4byte	.LASF1675
	.4byte	0xafd7
	.byte	0x1
	.4byte	0xb257
	.4byte	0xb263
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1508
	.byte	0x2d
	.byte	0x3e
	.4byte	.LASF1676
	.4byte	0xbbc3
	.byte	0x1
	.4byte	0xb27c
	.4byte	0xb288
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x2d
	.byte	0x3f
	.4byte	.LASF1677
	.4byte	0xafd7
	.byte	0x1
	.4byte	0xb2a1
	.4byte	0xb2ad
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x2d
	.byte	0x40
	.4byte	.LASF1678
	.4byte	0xbbc3
	.byte	0x1
	.4byte	0xb2c6
	.4byte	0xb2d2
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x2d
	.byte	0x41
	.4byte	.LASF1679
	.4byte	0xafd7
	.byte	0x1
	.4byte	0xb2eb
	.4byte	0xb2f7
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1395
	.byte	0x2d
	.byte	0x42
	.4byte	.LASF1680
	.4byte	0xbbc3
	.byte	0x1
	.4byte	0xb310
	.4byte	0xb31c
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x2d
	.byte	0x44
	.4byte	.LASF1681
	.4byte	0x135
	.byte	0x1
	.4byte	0xb335
	.4byte	0xb341
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x2d
	.byte	0x45
	.4byte	.LASF1682
	.4byte	0xc7
	.byte	0x1
	.4byte	0xb35a
	.4byte	0xb36b
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1683
	.byte	0x2d
	.byte	0x48
	.4byte	.LASF1684
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb384
	.4byte	0xb390
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1685
	.byte	0x2d
	.byte	0x49
	.4byte	.LASF1686
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb3a9
	.4byte	0xb3b5
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1687
	.byte	0x2d
	.byte	0x4a
	.4byte	.LASF1688
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb3ce
	.4byte	0xb3da
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbc9
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1689
	.byte	0x2d
	.byte	0x4b
	.4byte	.LASF1690
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb3f3
	.4byte	0xb3ff
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbcf
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1691
	.byte	0x2d
	.byte	0x4c
	.4byte	.LASF1692
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb418
	.4byte	0xb424
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbd5
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1693
	.byte	0x2d
	.byte	0x4d
	.4byte	.LASF1694
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb43d
	.4byte	0xb449
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbe0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1516
	.byte	0x2d
	.byte	0x50
	.4byte	.LASF1695
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb462
	.4byte	0xb46e
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1573
	.byte	0x2d
	.byte	0x51
	.4byte	.LASF1696
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb487
	.4byte	0xb493
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1628
	.byte	0x2d
	.byte	0x52
	.4byte	.LASF1697
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb4ac
	.4byte	0xb4b8
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbc9
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1518
	.byte	0x2d
	.byte	0x53
	.4byte	.LASF1698
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb4d1
	.4byte	0xb4dd
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbcf
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1699
	.byte	0x2d
	.byte	0x54
	.4byte	.LASF1700
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb4f6
	.4byte	0xb502
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbd5
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1701
	.byte	0x2d
	.byte	0x55
	.4byte	.LASF1702
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb51b
	.4byte	0xb527
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbe0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x2d
	.byte	0x56
	.4byte	.LASF1703
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb540
	.4byte	0xb551
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1403
	.byte	0x2d
	.byte	0x57
	.4byte	.LASF1704
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb56a
	.4byte	0xb585
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1705
	.byte	0x2d
	.byte	0x5a
	.4byte	.LASF1706
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb59e
	.4byte	0xb5b4
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1705
	.byte	0x2d
	.byte	0x5b
	.4byte	.LASF1707
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb5cd
	.4byte	0xb5e3
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbc9
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1705
	.byte	0x2d
	.byte	0x5c
	.4byte	.LASF1708
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb5fc
	.4byte	0xb612
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbcf
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1709
	.byte	0x2d
	.byte	0x5f
	.4byte	.LASF1710
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb62b
	.4byte	0xb637
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1711
	.byte	0x2d
	.byte	0x60
	.4byte	.LASF1712
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb650
	.4byte	0xb65c
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbc9
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1713
	.byte	0x2d
	.byte	0x61
	.4byte	.LASF1714
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb675
	.4byte	0xb681
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbcf
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1715
	.byte	0x2d
	.byte	0x62
	.4byte	.LASF1716
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb69a
	.4byte	0xb6a6
	.uleb128 0x18
	.4byte	0xbbb2
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbd5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1717
	.byte	0x2d
	.byte	0x64
	.4byte	.LASF1718
	.byte	0x1
	.4byte	0xb6bb
	.4byte	0xb6c7
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94c4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1586
	.byte	0x2d
	.byte	0x65
	.4byte	.LASF1719
	.byte	0x1
	.4byte	0xb6dc
	.4byte	0xb6e8
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x2d
	.byte	0x68
	.4byte	.LASF1720
	.byte	0x1
	.4byte	0xb6fd
	.4byte	0xb713
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x2d
	.byte	0x69
	.4byte	.LASF1721
	.byte	0x1
	.4byte	0xb728
	.4byte	0xb739
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1722
	.byte	0x2d
	.byte	0x6c
	.4byte	.LASF1723
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb752
	.4byte	0xb763
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1722
	.byte	0x2d
	.byte	0x6d
	.4byte	.LASF1724
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb77c
	.4byte	0xb78d
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbc9
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1722
	.byte	0x2d
	.byte	0x6e
	.4byte	.LASF1725
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb7a6
	.4byte	0xb7b7
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbcf
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1722
	.byte	0x2d
	.byte	0x6f
	.4byte	.LASF1726
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb7d0
	.4byte	0xb7e1
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbd5
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1722
	.byte	0x2d
	.byte	0x70
	.4byte	.LASF1727
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb7fa
	.4byte	0xb80b
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbe0
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1728
	.byte	0x2d
	.byte	0x73
	.4byte	.LASF1729
	.4byte	0x1601
	.byte	0x1
	.4byte	0xb824
	.4byte	0xb83a
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbd5
	.uleb128 0x1a
	.4byte	0xbbc9
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1730
	.byte	0x2d
	.byte	0x7f
	.4byte	.LASF1732
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb854
	.4byte	0xb86a
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1731
	.byte	0x2d
	.byte	0x80
	.4byte	.LASF1733
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb884
	.4byte	0xb89a
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbd5
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0x2f00
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1734
	.byte	0x2d
	.byte	0x81
	.4byte	.LASF1735
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb8b4
	.4byte	0xb8ca
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1736
	.byte	0x2d
	.byte	0x82
	.4byte	.LASF1737
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb8e4
	.4byte	0xb8ff
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.uleb128 0x1a
	.4byte	0xbbd5
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0x2f00
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1738
	.byte	0x2d
	.byte	0x83
	.4byte	.LASF1739
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb919
	.4byte	0xb92a
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1740
	.byte	0x2d
	.byte	0x84
	.4byte	.LASF1741
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb944
	.4byte	0xb95f
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1742
	.byte	0x2d
	.byte	0x85
	.4byte	.LASF1743
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb979
	.4byte	0xb98a
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1744
	.byte	0x2d
	.byte	0x86
	.4byte	.LASF1745
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xb9a4
	.4byte	0xb9b5
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xafaf
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1746
	.byte	0x2d
	.byte	0x87
	.4byte	.LASF1747
	.byte	0x3
	.byte	0x1
	.4byte	0xb9cb
	.4byte	0xb9dc
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2110
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1748
	.byte	0x2d
	.byte	0x88
	.4byte	.LASF1749
	.byte	0x3
	.byte	0x1
	.4byte	0xb9f2
	.4byte	0xb9fe
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1750
	.byte	0x2d
	.byte	0x89
	.4byte	.LASF1751
	.byte	0x3
	.byte	0x1
	.4byte	0xba14
	.4byte	0xba25
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2efa
	.uleb128 0x1a
	.4byte	0x2efa
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x2d
	.byte	0x8a
	.4byte	.LASF1752
	.byte	0x3
	.byte	0x1
	.4byte	0xba3b
	.4byte	0xba5b
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1753
	.byte	0x2d
	.byte	0x8b
	.4byte	.LASF1754
	.byte	0x3
	.byte	0x1
	.4byte	0xba71
	.4byte	0xba91
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xc3d8
	.uleb128 0x1a
	.4byte	0xc3d8
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1755
	.byte	0x2d
	.byte	0x8c
	.4byte	.LASF1756
	.byte	0x3
	.byte	0x1
	.4byte	0xbaa7
	.4byte	0xbac7
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1757
	.byte	0x2d
	.byte	0x8d
	.4byte	.LASF1758
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xbae1
	.4byte	0xbb06
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0x8da9
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1759
	.byte	0x2d
	.byte	0x8e
	.4byte	.LASF1760
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xbb20
	.4byte	0xbb40
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafaf
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x2d
	.byte	0x8f
	.4byte	.LASF1762
	.byte	0x3
	.byte	0x1
	.4byte	0xbb56
	.4byte	0xbb6c
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xbbc9
	.uleb128 0x1a
	.4byte	0x2236
	.uleb128 0x1a
	.4byte	0x8da3
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.4byte	.LASF1763
	.byte	0x2d
	.byte	0x90
	.4byte	.LASF1764
	.4byte	0x1601
	.byte	0x3
	.byte	0x1
	.4byte	0xbb82
	.uleb128 0x18
	.4byte	0xbbb8
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x42aa
	.uleb128 0x1a
	.4byte	0x42aa
	.uleb128 0x1a
	.4byte	0xc3d8
	.uleb128 0x1a
	.4byte	0xc3d8
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xafd7
	.uleb128 0xb
	.byte	0x4
	.4byte	0xbbbe
	.uleb128 0xc
	.4byte	0xafd7
	.uleb128 0x25
	.byte	0x4
	.4byte	0xafd7
	.uleb128 0x25
	.byte	0x4
	.4byte	0xafbb
	.uleb128 0x25
	.byte	0x4
	.4byte	0xa0ac
	.uleb128 0x25
	.byte	0x4
	.4byte	0xbbdb
	.uleb128 0xc
	.4byte	0xafd7
	.uleb128 0x25
	.byte	0x4
	.4byte	0xbbe6
	.uleb128 0xc
	.4byte	0xbbeb
	.uleb128 0x15
	.4byte	.LASF1765
	.byte	0x10
	.byte	0x1
	.byte	0x28
	.4byte	0xbbeb
	.4byte	0xc3d8
	.uleb128 0x16
	.4byte	.LASF1766
	.4byte	0x322fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF1767
	.byte	0x1
	.byte	0x7c
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x4b
	.string	"p"
	.byte	0x1
	.byte	0x7d
	.4byte	0x44d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x29
	.4byte	.LASF1768
	.byte	0x1
	.byte	0x7e
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1765
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	0xbc44
	.4byte	0xbc4b
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1765
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.4byte	0xbc5d
	.4byte	0xbc69
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1765
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.byte	0x1
	.4byte	0xbc7b
	.4byte	0xbc8c
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x2f00
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1765
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x1
	.4byte	0xbc9e
	.4byte	0xbcaf
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1765
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.byte	0x1
	.4byte	0xbcc1
	.4byte	0xbccd
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF1765
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.byte	0x1
	.4byte	0xbcdf
	.4byte	0xbceb
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x341fe
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF1769
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	0xbbeb
	.byte	0x1
	.4byte	0xbd01
	.4byte	0xbd0e
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF287
	.byte	0x1
	.byte	0xbc
	.4byte	.LASF1770
	.4byte	0x23753
	.byte	0x1
	.4byte	0xbd27
	.4byte	0xbd33
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x341fe
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x1
	.byte	0xca
	.4byte	.LASF1771
	.4byte	0x6dd2
	.byte	0x1
	.4byte	0xbd4c
	.4byte	0xbd58
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x1
	.byte	0xcf
	.4byte	.LASF1772
	.4byte	0x6df9
	.byte	0x1
	.4byte	0xbd71
	.4byte	0xbd7d
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x1
	.byte	0xd4
	.4byte	.LASF1773
	.4byte	0x23753
	.byte	0x1
	.4byte	0xbd96
	.4byte	0xbda2
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF483
	.byte	0x1
	.byte	0xd9
	.4byte	.LASF1774
	.4byte	0x23753
	.byte	0x1
	.4byte	0xbdbb
	.4byte	0xbdc7
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dd2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x1
	.byte	0xde
	.4byte	.LASF1775
	.byte	0x1
	.4byte	0xbddc
	.4byte	0xbde8
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x1
	.byte	0xe6
	.4byte	.LASF1776
	.byte	0x1
	.4byte	0xbdfd
	.4byte	0xbe09
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6dd2
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1777
	.byte	0x1
	.byte	0xee
	.4byte	.LASF1778
	.4byte	0xc7
	.byte	0x1
	.4byte	0xbe22
	.4byte	0xbe29
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1779
	.byte	0x1
	.byte	0xf2
	.4byte	.LASF1780
	.byte	0x1
	.4byte	0xbe3e
	.4byte	0xbe4a
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF293
	.byte	0x1
	.byte	0xf9
	.4byte	.LASF1781
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0xbbeb
	.byte	0x1
	.4byte	0xbe67
	.4byte	0xbe6e
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1782
	.byte	0x1
	.byte	0x43
	.4byte	.LASF1783
	.byte	0x1
	.4byte	0xbe83
	.4byte	0xbe94
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1782
	.byte	0x1
	.byte	0xff
	.4byte	.LASF1784
	.byte	0x1
	.4byte	0xbea9
	.4byte	0xbeb5
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1785
	.byte	0x1
	.byte	0x48
	.4byte	.LASF1786
	.4byte	0xc7
	.byte	0x1
	.4byte	0xbece
	.4byte	0xbee9
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x34220
	.uleb128 0x1a
	.4byte	0x34220
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1787
	.byte	0x1
	.byte	0x4b
	.4byte	.LASF1788
	.4byte	0x34226
	.byte	0x1
	.4byte	0xbf02
	.4byte	0xbf18
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1789
	.byte	0x1
	.byte	0x4e
	.4byte	.LASF1790
	.4byte	0x1601
	.byte	0x1
	.4byte	0xbf31
	.4byte	0xbf47
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1791
	.byte	0x1
	.byte	0x51
	.4byte	.LASF1792
	.4byte	0x34226
	.byte	0x1
	.4byte	0xbf60
	.4byte	0xbf67
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1793
	.byte	0x1
	.byte	0x52
	.4byte	.LASF1794
	.4byte	0x34226
	.byte	0x1
	.4byte	0xbf80
	.4byte	0xbf87
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1795
	.byte	0x1
	.byte	0x53
	.4byte	.LASF1796
	.byte	0x1
	.4byte	0xbf9c
	.4byte	0xbfa3
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1797
	.byte	0x1
	.byte	0x54
	.4byte	.LASF1798
	.byte	0x1
	.4byte	0xbfb8
	.4byte	0xbfc4
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1799
	.byte	0x1
	.byte	0x55
	.4byte	.LASF1800
	.byte	0x1
	.4byte	0xbfd9
	.4byte	0xbfea
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1801
	.byte	0x1
	.byte	0x56
	.4byte	.LASF1802
	.byte	0x1
	.4byte	0xbfff
	.4byte	0xc00b
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1803
	.byte	0x1
	.byte	0x57
	.4byte	.LASF1804
	.byte	0x1
	.4byte	0xc020
	.4byte	0xc031
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1805
	.byte	0x1
	.byte	0x58
	.4byte	.LASF1806
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc04a
	.4byte	0xc060
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1807
	.byte	0x1
	.byte	0x5a
	.4byte	.LASF1808
	.byte	0x1
	.4byte	0xc075
	.4byte	0xc08b
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x3422c
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1807
	.byte	0x1
	.byte	0x5c
	.4byte	.LASF1809
	.byte	0x1
	.4byte	0xc0a0
	.4byte	0xc0b6
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1810
	.byte	0x1
	.byte	0x5f
	.4byte	.LASF1811
	.4byte	0x34226
	.byte	0x1
	.4byte	0xc0cf
	.4byte	0xc0e5
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x341fe
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1812
	.byte	0x1
	.byte	0x61
	.4byte	.LASF1813
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc0fe
	.4byte	0xc10a
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1814
	.byte	0x1
	.byte	0x63
	.4byte	.LASF1815
	.4byte	0x135
	.byte	0x1
	.4byte	0xc123
	.4byte	0xc12a
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1550
	.byte	0x1
	.byte	0x64
	.4byte	.LASF1816
	.4byte	0x2744
	.byte	0x1
	.4byte	0xc143
	.4byte	0xc14a
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x1
	.byte	0x65
	.4byte	.LASF1817
	.4byte	0x135
	.byte	0x1
	.4byte	0xc163
	.4byte	0xc16f
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1818
	.byte	0x1
	.byte	0x66
	.4byte	.LASF1819
	.byte	0x1
	.4byte	0xc184
	.4byte	0xc195
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42aa
	.uleb128 0x1a
	.4byte	0x2104
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1818
	.byte	0x1
	.byte	0x67
	.4byte	.LASF1820
	.byte	0x1
	.4byte	0xc1aa
	.4byte	0xc1b6
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x13922
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1821
	.byte	0x1
	.byte	0x68
	.4byte	.LASF1822
	.byte	0x1
	.4byte	0xc1cb
	.4byte	0xc1d7
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xafd1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1823
	.byte	0x1
	.byte	0x6a
	.4byte	.LASF1824
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc1f0
	.4byte	0xc1f7
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1825
	.byte	0x1
	.byte	0x6b
	.4byte	.LASF1826
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc210
	.4byte	0xc217
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1827
	.byte	0x1
	.byte	0x6c
	.4byte	.LASF1828
	.byte	0x1
	.4byte	0xc22c
	.4byte	0xc233
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x1
	.byte	0x6e
	.4byte	.LASF1829
	.4byte	0x135
	.byte	0x1
	.4byte	0xc24c
	.4byte	0xc258
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x1
	.byte	0x6f
	.4byte	.LASF1830
	.4byte	0xc7
	.byte	0x1
	.4byte	0xc271
	.4byte	0xc282
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1831
	.byte	0x1
	.byte	0x71
	.4byte	.LASF1832
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc29b
	.4byte	0xc2bb
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x341fe
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1833
	.byte	0x1
	.byte	0x73
	.4byte	.LASF1834
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc2d4
	.4byte	0xc2ea
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x1
	.byte	0x75
	.4byte	.LASF1835
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc303
	.4byte	0xc31e
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1403
	.byte	0x1
	.byte	0x77
	.4byte	.LASF1836
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc337
	.4byte	0xc357
	.uleb128 0x18
	.4byte	0x1a296
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x94e6
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x2104
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF1837
	.byte	0x1
	.byte	0x79
	.4byte	.LASF1838
	.4byte	0x135
	.byte	0x1
	.4byte	0xc37c
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1839
	.byte	0x1
	.2byte	0x103
	.4byte	.LASF1840
	.4byte	0x1601
	.byte	0x2
	.byte	0x1
	.4byte	0xc397
	.4byte	0xc3a8
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.uleb128 0x5b
	.byte	0x1
	.4byte	.LASF1841
	.byte	0x1
	.byte	0x81
	.4byte	.LASF1842
	.4byte	0x1601
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0xbbeb
	.byte	0x2
	.byte	0x1
	.4byte	0xc3c6
	.uleb128 0x18
	.4byte	0x3421a
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x1601
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x2e
	.4byte	.LASF1843
	.byte	0x3c
	.byte	0x2e
	.byte	0x28
	.4byte	0xc545
	.uleb128 0x7
	.string	"xyz"
	.byte	0x2e
	.byte	0x2a
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"st"
	.byte	0x2e
	.byte	0x2b
	.4byte	0x223c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF1844
	.byte	0x2e
	.byte	0x2c
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF1845
	.byte	0x2e
	.byte	0x2d
	.4byte	0xa841
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF1846
	.byte	0x2e
	.byte	0x2e
	.4byte	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x2e
	.byte	0x32
	.4byte	.LASF1847
	.4byte	0x135
	.byte	0x1
	.4byte	0xc448
	.4byte	0xc454
	.uleb128 0x18
	.4byte	0xc545
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF470
	.byte	0x2e
	.byte	0x33
	.4byte	.LASF1848
	.4byte	0x2104
	.byte	0x1
	.4byte	0xc46d
	.4byte	0xc479
	.uleb128 0x18
	.4byte	0xc550
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF293
	.byte	0x2e
	.byte	0x35
	.4byte	.LASF1849
	.byte	0x1
	.4byte	0xc48e
	.4byte	0xc495
	.uleb128 0x18
	.4byte	0xc550
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF524
	.byte	0x2e
	.byte	0x37
	.4byte	.LASF1850
	.byte	0x1
	.4byte	0xc4aa
	.4byte	0xc4c0
	.uleb128 0x18
	.4byte	0xc550
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc556
	.uleb128 0x1a
	.4byte	0xc556
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1851
	.byte	0x2e
	.byte	0x38
	.4byte	.LASF1852
	.byte	0x1
	.4byte	0xc4d5
	.4byte	0xc4eb
	.uleb128 0x18
	.4byte	0xc550
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc556
	.uleb128 0x1a
	.4byte	0xc556
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF505
	.byte	0x2e
	.byte	0x3a
	.4byte	.LASF1853
	.byte	0x1
	.4byte	0xc500
	.4byte	0xc507
	.uleb128 0x18
	.4byte	0xc550
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1854
	.byte	0x2e
	.byte	0x3c
	.4byte	.LASF1855
	.byte	0x1
	.4byte	0xc51c
	.4byte	0xc528
	.uleb128 0x18
	.4byte	0xc550
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x159f
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF1856
	.byte	0x2e
	.byte	0x3d
	.4byte	.LASF1857
	.4byte	0x159f
	.byte	0x1
	.4byte	0xc53d
	.uleb128 0x18
	.4byte	0xc545
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc54b
	.uleb128 0xc
	.4byte	0xc3de
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc3de
	.uleb128 0x25
	.byte	0x4
	.4byte	0xc55c
	.uleb128 0xc
	.4byte	0xc3de
	.uleb128 0x2e
	.4byte	.LASF1858
	.byte	0x1c
	.byte	0x2f
	.byte	0x28
	.4byte	0xc586
	.uleb128 0x7
	.string	"q"
	.byte	0x2f
	.byte	0x2b
	.4byte	0x5696
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"t"
	.byte	0x2f
	.byte	0x2c
	.4byte	0x2744
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF1859
	.byte	0x30
	.byte	0x2f
	.byte	0x3f
	.4byte	0xc7ad
	.uleb128 0x4b
	.string	"mat"
	.byte	0x2f
	.byte	0x57
	.4byte	0xc7ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1860
	.byte	0x2f
	.byte	0x42
	.4byte	.LASF1861
	.byte	0x1
	.4byte	0xc5b6
	.4byte	0xc5c2
	.uleb128 0x18
	.4byte	0xc7bd
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x687d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1862
	.byte	0x2f
	.byte	0x43
	.4byte	.LASF1863
	.byte	0x1
	.4byte	0xc5d7
	.4byte	0xc5e3
	.uleb128 0x18
	.4byte	0xc7bd
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x2f
	.byte	0x45
	.4byte	.LASF1864
	.4byte	0x2744
	.byte	0x1
	.4byte	0xc5fc
	.4byte	0xc608
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x42a4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF475
	.byte	0x2f
	.byte	0x46
	.4byte	.LASF1865
	.4byte	0x2744
	.byte	0x1
	.4byte	0xc621
	.4byte	0xc62d
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x6877
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF490
	.byte	0x2f
	.byte	0x48
	.4byte	.LASF1866
	.4byte	0xc7ce
	.byte	0x1
	.4byte	0xc646
	.4byte	0xc652
	.uleb128 0x18
	.4byte	0xc7bd
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7d4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF487
	.byte	0x2f
	.byte	0x49
	.4byte	.LASF1867
	.4byte	0xc7ce
	.byte	0x1
	.4byte	0xc66b
	.4byte	0xc677
	.uleb128 0x18
	.4byte	0xc7bd
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7d4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x2f
	.byte	0x4b
	.4byte	.LASF1868
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc690
	.4byte	0xc69c
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7d4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF492
	.byte	0x2f
	.byte	0x4c
	.4byte	.LASF1869
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc6b5
	.4byte	0xc6c6
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7d4
	.uleb128 0x1a
	.4byte	0x135
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x2f
	.byte	0x4d
	.4byte	.LASF1870
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc6df
	.4byte	0xc6eb
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7d4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x2f
	.byte	0x4e
	.4byte	.LASF1871
	.4byte	0x1601
	.byte	0x1
	.4byte	0xc704
	.4byte	0xc710
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7d4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF571
	.byte	0x2f
	.byte	0x50
	.4byte	.LASF1872
	.4byte	0x3576
	.byte	0x1
	.4byte	0xc729
	.4byte	0xc730
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF643
	.byte	0x2f
	.byte	0x51
	.4byte	.LASF1873
	.4byte	0x2744
	.byte	0x1
	.4byte	0xc749
	.4byte	0xc750
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1874
	.byte	0x2f
	.byte	0x52
	.4byte	.LASF1875
	.4byte	0xc561
	.byte	0x1
	.4byte	0xc769
	.4byte	0xc770
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x2f
	.byte	0x53
	.4byte	.LASF1876
	.4byte	0x2110
	.byte	0x1
	.4byte	0xc789
	.4byte	0xc790
	.uleb128 0x18
	.4byte	0xc7c3
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF519
	.byte	0x2f
	.byte	0x54
	.4byte	.LASF1877
	.4byte	0x2236
	.byte	0x1
	.4byte	0xc7a5
	.uleb128 0x18
	.4byte	0xc7bd
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x135
	.4byte	0xc7bd
	.uleb128 0x5
	.4byte	0x34
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc586
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc7c9
	.uleb128 0xc
	.4byte	0xc586
	.uleb128 0x25
	.byte	0x4
	.4byte	0xc586
	.uleb128 0x25
	.byte	0x4
	.4byte	0xc7da
	.uleb128 0xc
	.4byte	0xc586
	.uleb128 0x6
	.4byte	.LASF1878
	.byte	0x10
	.byte	0x30
	.byte	0x2b
	.4byte	0xc808
	.uleb128 0x8
	.4byte	.LASF1879
	.byte	0x30
	.byte	0x2c
	.4byte	0xc808
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF1880
	.byte	0x30
	.byte	0x2d
	.4byte	0xc808
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.4byte	0xc7
	.4byte	0xc818
	.uleb128 0x5
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1881
	.byte	0x30
	.byte	0x2e
	.4byte	0xc7df
	.uleb128 0x2e
	.4byte	.LASF1882
	.byte	0x10
	.byte	0x8
	.byte	0x5c
	.4byte	0xcdc4
	.uleb128 0x4b
	.string	"num"
	.byte	0x8
	.byte	0x8f
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF797
	.byte	0x8
	.byte	0x90
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1415
	.byte	0x8
	.byte	0x91
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF1416
	.byte	0x8
	.byte	0x92
	.4byte	0xc550
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1417
	.byte	0x8
	.byte	0x5f
	.4byte	0xcdc4
	.uleb128 0x2
	.4byte	.LASF1418
	.byte	0x8
	.byte	0x60
	.4byte	0xcdd8
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1419
	.byte	0x8
	.byte	0x9b
	.byte	0x1
	.4byte	0xc892
	.4byte	0xc89e
	.uleb128 0x18
	.4byte	0xcddd
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1419
	.byte	0x8
	.byte	0xa9
	.byte	0x1
	.4byte	0xc8af
	.4byte	0xc8bb
	.uleb128 0x18
	.4byte	0xcddd
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xcde3
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x8
	.byte	0xb4
	.byte	0x1
	.4byte	0xc8cc
	.4byte	0xc8d9
	.uleb128 0x18
	.4byte	0xcddd
	.byte	0x1
	.uleb128 0x18
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF293
	.byte	0x8
	.byte	0xc0
	.4byte	.LASF1883
	.byte	0x1
	.4byte	0xc8ee
	.4byte	0xc8f5
	.uleb128 0x18
	.4byte	0xcddd
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x8
	.2byte	0x111
	.4byte	.LASF1884
	.4byte	0xc7
	.byte	0x1
	.4byte	0xc90f
	.4byte	0xc916
	.uleb128 0x18
	.4byte	0xcdee
	.byte	0x1
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x8
	.2byte	0x11d
	.4byte	.LASF1885
	.4byte	0xc7
	.byte	0x1
	.4byte	0xc930
	.4byte	0xc937
	.uleb128 0x18
	.4byte	0xcdee
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x8
	.2byte	0x139
	.4byte	.LASF1886
	.byte	0x1
	.4byte	0xc94d
	.4byte	0xc959
	.uleb128 0x18
	.4byte	0xcddd
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xc7
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x8
	.2byte	0x151
	.4byte	.LASF1887
	.4byte	0xc7
	.byte	0x1
	.4byte	0xc973
	.4byte	0xc97a
	.uleb128 0x18
	.4byte	0xcdee
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x8
	.byte	0xee
	.4byte	.LASF1888
	.4byte	0x29
	.byte	0x1
	.4byte	0xc993
	.4byte	0xc99a
	.uleb128 0x18
	.4byte	0xcdee
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x8
	.byte	0xfa
	.4byte	.LASF1889
	.4byte	0x29
	.byte	0x1
	.4byte	0xc9b3
	.4byte	0xc9ba
	.uleb128 0x18
	.4byte	0xcdee
	.byte	0x1
	.byte	0
	.uleb128 0x43