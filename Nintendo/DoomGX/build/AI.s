	.file	"AI.cpp"
	.section	".text"
.Ltext0:
	.section	.text._ZN14idFixedWinding5ClearEv,"axG",@progbits,_ZN14idFixedWinding5ClearEv,comdat
	.align 2
	.weak	_ZN14idFixedWinding5ClearEv
	.type	_ZN14idFixedWinding5ClearEv, @function
_ZN14idFixedWinding5ClearEv:
.LFB1502:
	.file 1 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/geometry/Winding.h"
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
	.section	.text._ZN13idAASCallbackD2Ev,"axG",@progbits,_ZN13idAASCallbackD5Ev,comdat
	.align 2
	.weak	_ZN13idAASCallbackD2Ev
	.type	_ZN13idAASCallbackD2Ev, @function
_ZN13idAASCallbackD2Ev:
.LFB2622:
	.file 2 "d:/Data/Nintendo/DoomGX/src/game/ai/../ai/AAS.h"
	.loc 2 69 0
	.cfi_startproc
.LVL1:
.LBB5058:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
.LBE5058:
.LBB5059:
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(3)
.LBE5059:
	blr
	.cfi_endproc
.LFE2622:
	.size	_ZN13idAASCallbackD2Ev, .-_ZN13idAASCallbackD2Ev
	.section	.text._ZN23idAASFindAreaOutOfRangeD2Ev,"axG",@progbits,_ZN23idAASFindAreaOutOfRangeD5Ev,comdat
	.align 2
	.weak	_ZN23idAASFindAreaOutOfRangeD2Ev
	.type	_ZN23idAASFindAreaOutOfRangeD2Ev, @function
_ZN23idAASFindAreaOutOfRangeD2Ev:
.LFB2894:
	.file 3 "d:/Data/Nintendo/DoomGX/src/game/ai/../ai/AI.h"
	.loc 3 210 0
	.cfi_startproc
.LVL2:
.LBB5060:
.LBB5061:
.LBB5062:
.LBB5063:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
.LBE5063:
.LBE5062:
.LBE5061:
.LBE5060:
	.loc 3 210 0
.LBB5067:
.LBB5066:
.LBB5065:
.LBB5064:
	.loc 2 69 0
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(3)
.LBE5064:
.LBE5065:
.LBE5066:
.LBE5067:
	.loc 3 210 0
	blr
	.cfi_endproc
.LFE2894:
	.size	_ZN23idAASFindAreaOutOfRangeD2Ev, .-_ZN23idAASFindAreaOutOfRangeD2Ev
	.section	".text"
	.align 2
	.globl _ZNK12idCombatNode7GetTypeEv
	.type	_ZNK12idCombatNode7GetTypeEv, @function
_ZNK12idCombatNode7GetTypeEv:
.LFB2976:
	.file 4 "d:/Data/Nintendo/DoomGX/src/game/ai/AI.cpp"
	.loc 4 4928 0
	.cfi_startproc
.LVL3:
	.loc 4 4928 0
	lis 3,.LANCHOR0@ha
.LVL4:
	la 3,.LANCHOR0@l(3)
	blr
	.cfi_endproc
.LFE2976:
	.size	_ZNK12idCombatNode7GetTypeEv, .-_ZNK12idCombatNode7GetTypeEv
	.align 2
	.globl _ZN12idCombatNode14Event_ActivateEP8idEntity
	.type	_ZN12idCombatNode14Event_ActivateEP8idEntity, @function
_ZN12idCombatNode14Event_ActivateEP8idEntity:
.LFB2986:
	.loc 4 5125 0
	.cfi_startproc
.LVL5:
	.loc 4 5126 0
	lbz 0,692(3)
	.loc 4 5127 0
	.loc 4 5126 0
	xori 0,0,1
	stb 0,692(3)
	.loc 4 5127 0
	blr
	.cfi_endproc
.LFE2986:
	.size	_ZN12idCombatNode14Event_ActivateEP8idEntity, .-_ZN12idCombatNode14Event_ActivateEP8idEntity
	.section	.text._ZN9idWinding5ClearEv,"axG",@progbits,_ZN9idWinding5ClearEv,comdat
	.align 2
	.weak	_ZN9idWinding5ClearEv
	.type	_ZN9idWinding5ClearEv, @function
_ZN9idWinding5ClearEv:
.LFB1473:
	.loc 1 249 0
	.cfi_startproc
.LVL6:
	mflr 0
	stwu 1,-16(1)
.LCFI0:
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
.LVL7:
	.loc 1 250 0
	stw 0,4(31)
	.loc 1 251 0
	cmpwi 7,3,0
	beq- 7,.L10
	.loc 1 251 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L10:
	.loc 1 252 0 is_stmt 1
	li 0,0
	stw 0,8(31)
	.loc 1 253 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL8:
	mtlr 0
	addi 1,1,16
.LCFI1:
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
.LVL9:
	mflr 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB5069:
	lis 9,_ZTV9idWinding+8@ha
.LBE5069:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB5070:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL10:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L13
	.loc 1 184 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L13:
	.loc 1 185 0 is_stmt 1
	li 0,0
	stw 0,8(31)
.LBE5070:
	.loc 1 186 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL11:
	mtlr 0
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1461:
	.size	_ZN9idWindingD2Ev, .-_ZN9idWindingD2Ev
	.section	.text._ZN23idAASFindAreaOutOfRangeD0Ev,"axG",@progbits,_ZN23idAASFindAreaOutOfRangeD5Ev,comdat
	.align 2
	.weak	_ZN23idAASFindAreaOutOfRangeD0Ev
	.type	_ZN23idAASFindAreaOutOfRangeD0Ev, @function
_ZN23idAASFindAreaOutOfRangeD0Ev:
.LFB2896:
	.loc 3 210 0
	.cfi_startproc
.LVL12:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB5071:
.LBB5072:
.LBB5073:
.LBB5074:
.LBB5075:
.LBB5076:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
.LBE5076:
.LBE5075:
.LBE5074:
.LBE5073:
.LBE5072:
.LBE5071:
	.loc 3 210 0
	stw 0,12(1)
.LBB5082:
.LBB5081:
.LBB5080:
.LBB5079:
.LBB5078:
.LBB5077:
	.loc 2 69 0
	la 0,_ZTV13idAASCallback+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
.LBE5077:
.LBE5078:
.LBE5079:
.LBE5080:
.LBE5081:
.LBE5082:
	.loc 3 210 0
	bl _ZdlPv
.LVL13:
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2896:
	.size	_ZN23idAASFindAreaOutOfRangeD0Ev, .-_ZN23idAASFindAreaOutOfRangeD0Ev
	.section	.text._ZN13idAASCallbackD0Ev,"axG",@progbits,_ZN13idAASCallbackD5Ev,comdat
	.align 2
	.weak	_ZN13idAASCallbackD0Ev
	.type	_ZN13idAASCallbackD0Ev, @function
_ZN13idAASCallbackD0Ev:
.LFB2624:
	.loc 2 69 0
	.cfi_startproc
.LVL14:
	mflr 0
	stwu 1,-8(1)
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB5083:
.LBB5084:
.LBB5085:
	lis 9,_ZTV13idAASCallback+8@ha
.LBE5085:
.LBE5084:
.LBE5083:
	stw 0,12(1)
.LBB5088:
.LBB5087:
.LBB5086:
	.loc 2 69 0
	la 0,_ZTV13idAASCallback+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
.LBE5086:
.LBE5087:
.LBE5088:
	bl _ZdlPv
.LVL15:
	lwz 0,12(1)
	addi 1,1,8
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2624:
	.size	_ZN13idAASCallbackD0Ev, .-_ZN13idAASCallbackD0Ev
	.section	.text._ZN12idCombatNodeD2Ev,"axG",@progbits,_ZN12idCombatNodeD5Ev,comdat
	.align 2
	.weak	_ZN12idCombatNodeD2Ev
	.type	_ZN12idCombatNodeD2Ev, @function
_ZN12idCombatNodeD2Ev:
.LFB3332:
	.loc 3 662 0
	.cfi_startproc
.LVL16:
	mflr 0
	stwu 1,-8(1)
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB5090:
	lis 9,_ZTV12idCombatNode+8@ha
.LBE5090:
	stw 0,12(1)
.LBB5091:
	.loc 3 662 0
	la 0,_ZTV12idCombatNode+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idEntityD2Ev
.LVL17:
.LBE5091:
	lwz 0,12(1)
	addi 1,1,8
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE3332:
	.size	_ZN12idCombatNodeD2Ev, .-_ZN12idCombatNodeD2Ev
	.section	".text"
	.align 2
	.globl _ZN12idCombatNode7RestoreEP13idRestoreGame
	.type	_ZN12idCombatNode7RestoreEP13idRestoreGame, @function
_ZN12idCombatNode7RestoreEP13idRestoreGame:
.LFB2981:
	.loc 4 4976 0
	.cfi_startproc
.LVL18:
	stwu 1,-16(1)
.LCFI10:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 4 4977 0
	mr 3,4
.LVL19:
	.loc 4 4976 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 4 4977 0
	addi 4,31,636
.LVL20:
	.loc 4 4976 0
	stw 0,20(1)
	.loc 4 4977 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame9ReadFloatERf
.LVL21:
	.loc 4 4978 0
	mr 3,30
	addi 4,31,640
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 4979 0
	mr 3,30
	addi 4,31,644
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 4980 0
	mr 3,30
	addi 4,31,648
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 4981 0
	mr 3,30
	addi 4,31,652
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 4982 0
	mr 3,30
	addi 4,31,656
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 4983 0
	mr 3,30
	addi 4,31,668
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 4984 0
	mr 3,30
	addi 4,31,680
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 4985 0
	mr 3,30
	addi 4,31,692
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 4986 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL22:
	mtlr 0
	lwz 31,12(1)
.LVL23:
	addi 1,1,16
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2981:
	.size	_ZN12idCombatNode7RestoreEP13idRestoreGame, .-_ZN12idCombatNode7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK12idCombatNode4SaveEP10idSaveGame
	.type	_ZNK12idCombatNode4SaveEP10idSaveGame, @function
_ZNK12idCombatNode4SaveEP10idSaveGame:
.LFB2980:
	.loc 4 4959 0
	.cfi_startproc
.LVL24:
	mflr 0
	stwu 1,-16(1)
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 4 4959 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 4 4960 0
	lfs 1,636(3)
	mr 3,4
.LVL25:
	bl _ZN10idSaveGame10WriteFloatEf
.LVL26:
	.loc 4 4961 0
	lfs 1,640(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 4962 0
	lfs 1,644(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 4963 0
	lfs 1,648(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 4964 0
	lfs 1,652(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 4965 0
	mr 3,30
	addi 4,31,656
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 4966 0
	mr 3,30
	addi 4,31,668
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 4967 0
	mr 3,30
	addi 4,31,680
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 4968 0
	lbz 4,692(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 4969 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL27:
	mtlr 0
	lwz 31,12(1)
.LVL28:
	addi 1,1,16
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2980:
	.size	_ZNK12idCombatNode4SaveEP10idSaveGame, .-_ZNK12idCombatNode4SaveEP10idSaveGame
	.align 2
	.globl _ZN23idAASFindAttackPositionD2Ev
	.type	_ZN23idAASFindAttackPositionD2Ev, @function
_ZN23idAASFindAttackPositionD2Ev:
.LFB2840:
	.loc 4 253 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2840
.LVL29:
	mflr 0
	stwu 1,-24(1)
.LCFI14:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5092:
	lis 9,_ZTV23idAASFindAttackPosition+8@ha
.LBE5092:
	stw 31,20(1)
.LBB5099:
	.loc 4 254 0
	mr 4,1
.LBE5099:
	.loc 4 253 0
	stw 0,28(1)
.LBB5100:
	.loc 4 253 0
	la 0,_ZTV23idAASFindAttackPosition+8@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBE5100:
	mr 31,3
.LBB5101:
	.loc 4 254 0
	lwz 10,96(3)
	lwz 11,100(3)
	stwu 10,8(4)
	stw 11,4(4)
	.loc 4 253 0
	stw 0,0(3)
	.loc 4 254 0
	lis 3,gameLocal+2426068@ha
.LVL30:
	la 3,gameLocal+2426068@l(3)
.LEHB0:
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
.LEHE0:
.LVL31:
.LBB5093:
.LBB5094:
.LBB5095:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(31)
.LBE5095:
.LBE5094:
.LBE5093:
.LBE5101:
	.loc 4 255 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL32:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL33:
.L31:
.LCFI16:
	.cfi_restore_state
.LBB5102:
.LBB5096:
.LBB5097:
.LBB5098:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(31)
.LEHB1:
	bl _Unwind_Resume
.LEHE1:
.LBE5098:
.LBE5097:
.LBE5096:
.LBE5102:
	.cfi_endproc
.LFE2840:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2840:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2840-.LLSDACSB2840
.LLSDACSB2840:
	.uleb128 .LEHB0-.LFB2840
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L31-.LFB2840
	.uleb128 0
	.uleb128 .LEHB1-.LFB2840
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2840:
	.section	".text"
	.size	_ZN23idAASFindAttackPositionD2Ev, .-_ZN23idAASFindAttackPositionD2Ev
	.align 2
	.globl _ZN23idAASFindAttackPositionD0Ev
	.type	_ZN23idAASFindAttackPositionD0Ev, @function
_ZN23idAASFindAttackPositionD0Ev:
.LFB2842:
	.loc 4 253 0
	.cfi_startproc
.LVL34:
	stwu 1,-16(1)
.LCFI17:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 4 255 0
	.cfi_offset 65, 4
	bl _ZN23idAASFindAttackPositionD1Ev
.LVL35:
	mr 3,31
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL36:
	mtlr 0
	addi 1,1,16
.LCFI18:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2842:
	.size	_ZN23idAASFindAttackPositionD0Ev, .-_ZN23idAASFindAttackPositionD0Ev
	.align 2
	.globl _ZN14idAASFindCoverD2Ev
	.type	_ZN14idAASFindCoverD2Ev, @function
_ZN14idAASFindCoverD2Ev:
.LFB2822:
	.loc 4 158 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2822
.LVL37:
	mflr 0
	stwu 1,-24(1)
.LCFI19:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5103:
	lis 9,_ZTV14idAASFindCover+8@ha
.LBE5103:
	stw 31,20(1)
.LBB5110:
	.loc 4 159 0
	mr 4,1
.LBE5110:
	.loc 4 158 0
	stw 0,28(1)
.LBB5111:
	.loc 4 158 0
	la 0,_ZTV14idAASFindCover+8@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBE5111:
	mr 31,3
.LBB5112:
	.loc 4 159 0
	lwz 10,4(3)
	lwz 11,8(3)
	stwu 10,8(4)
	stw 11,4(4)
	.loc 4 158 0
	stw 0,0(3)
	.loc 4 159 0
	lis 3,gameLocal+2426068@ha
.LVL38:
	la 3,gameLocal+2426068@l(3)
.LEHB2:
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
.LEHE2:
.LVL39:
.LBB5104:
.LBB5105:
.LBB5106:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(31)
.LBE5106:
.LBE5105:
.LBE5104:
.LBE5112:
	.loc 4 160 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL40:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL41:
.L39:
.LCFI21:
	.cfi_restore_state
.LBB5113:
.LBB5107:
.LBB5108:
.LBB5109:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(31)
.LEHB3:
	bl _Unwind_Resume
.LEHE3:
.LBE5109:
.LBE5108:
.LBE5107:
.LBE5113:
	.cfi_endproc
.LFE2822:
	.section	.gcc_except_table
.LLSDA2822:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2822-.LLSDACSB2822
.LLSDACSB2822:
	.uleb128 .LEHB2-.LFB2822
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L39-.LFB2822
	.uleb128 0
	.uleb128 .LEHB3-.LFB2822
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2822:
	.section	".text"
	.size	_ZN14idAASFindCoverD2Ev, .-_ZN14idAASFindCoverD2Ev
	.align 2
	.globl _ZN14idAASFindCoverD0Ev
	.type	_ZN14idAASFindCoverD0Ev, @function
_ZN14idAASFindCoverD0Ev:
.LFB2824:
	.loc 4 158 0
	.cfi_startproc
.LVL42:
	stwu 1,-16(1)
.LCFI22:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 4 160 0
	.cfi_offset 65, 4
	bl _ZN14idAASFindCoverD1Ev
.LVL43:
	mr 3,31
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL44:
	mtlr 0
	addi 1,1,16
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2824:
	.size	_ZN14idAASFindCoverD0Ev, .-_ZN14idAASFindCoverD0Ev
	.align 2
	.globl _ZN14idAASFindCover8TestAreaEPK5idAASi
	.type	_ZN14idAASFindCover8TestAreaEPK5idAASi, @function
_ZN14idAASFindCover8TestAreaEPK5idAASi:
.LFB2825:
	.loc 4 167 0
	.cfi_startproc
.LVL45:
	mflr 0
	stwu 1,-88(1)
.LCFI24:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stw 30,80(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,84(1)
.LBB5114:
	.loc 4 172 0
	addi 3,1,8
.LVL46:
.LBE5114:
	.loc 4 167 0
	stw 0,92(1)
.LBB5136:
	.loc 4 175 0
	lis 31,gameLocal+2426068@ha
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	la 31,gameLocal+2426068@l(31)
	.loc 4 172 0
	lwz 9,0(4)
	lwz 0,40(9)
	mtctr 0
	bctrl
.LVL47:
	.loc 4 173 0
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
.LBB5115:
.LBB5116:
	.file 5 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/bv/Bounds.h"
	.loc 5 319 0
	lis 9,.LC1@ha
.LBE5116:
.LBE5115:
	.loc 4 173 0
	lfs 13,16(1)
	.loc 4 175 0
	addi 4,1,36
.LBB5130:
.LBB5131:
	.file 6 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Vector.h"
	.loc 6 424 0
	lfs 11,8(1)
.LVL48:
.LBE5131:
.LBE5130:
	.loc 4 175 0
	addi 5,1,20
	.loc 4 173 0
	fadds 13,13,0
.LBB5133:
.LBB5132:
	.loc 6 425 0
	lfs 12,12(1)
.LVL49:
.LBE5132:
.LBE5133:
.LBB5134:
.LBB5128:
	.loc 5 319 0
	lfs 0,.LC1@l(9)
.LBE5128:
.LBE5134:
	.loc 4 175 0
	li 6,4
	mr 3,31
.LBB5135:
.LBB5129:
	.loc 5 319 0
	fsubs 8,11,0
	fsubs 9,12,0
	fsubs 10,13,0
	fadds 11,11,0
.LBB5117:
.LBB5118:
.LBB5119:
	.loc 6 424 0
	stfs 8,36(1)
.LBE5119:
.LBE5118:
.LBE5117:
	.loc 5 319 0
	fadds 12,12,0
.LBB5126:
.LBB5122:
.LBB5120:
	.loc 6 425 0
	stfs 9,40(1)
.LBE5120:
.LBE5122:
.LBE5126:
	.loc 5 319 0
	fadds 0,13,0
.LBB5127:
.LBB5123:
.LBB5121:
	.loc 6 426 0
	stfs 10,44(1)
.LVL50:
.LBE5121:
.LBE5123:
.LBB5124:
.LBB5125:
	.loc 6 424 0
	stfs 11,48(1)
	.loc 6 425 0
	stfs 12,52(1)
	.loc 6 426 0
	stfs 0,56(1)
.LBE5125:
.LBE5124:
.LBE5127:
.LBE5129:
.LBE5135:
	.loc 4 175 0
	bl _ZNK5idPVS11GetPVSAreasERK8idBoundsPii
.LVL51:
	.loc 4 176 0
	lwz 10,4(30)
	.loc 4 175 0
	mr 6,3
.LVL52:
	.loc 4 176 0
	lwz 11,8(30)
	mr 3,31
.LVL53:
	addi 4,1,72
	addi 5,1,20
	stw 10,72(1)
	stw 11,76(1)
	bl _ZNK5idPVS12InCurrentPVSE11pvsHandle_sPKii
.LVL54:
.LBE5136:
	.loc 4 181 0
	lwz 0,92(1)
.LBB5137:
	.loc 4 167 0
	xori 3,3,1
.LBE5137:
	.loc 4 181 0
	lwz 30,80(1)
.LVL55:
	rlwinm 3,3,0,0xff
	mtlr 0
	lwz 31,84(1)
	addi 1,1,88
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2825:
	.size	_ZN14idAASFindCover8TestAreaEPK5idAASi, .-_ZN14idAASFindCover8TestAreaEPK5idAASi
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.64, @function
_Z41__static_initialization_and_destruction_0ii.constprop.64:
.LFB3426:
	.loc 4 5138 0
	.cfi_startproc
.LVL56:
	cmpwi 7,3,1
	mflr 0
	stwu 1,-40(1)
.LCFI26:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 0,44(1)
	stw 31,36(1)
	.loc 4 5138 0
	beq- 7,.L46
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 4 4928 0
	cmpwi 7,3,0
	bne- 7,.L43
	lis 3,.LANCHOR0@ha
.LVL57:
	la 3,.LANCHOR0@l(3)
	bl _ZN10idTypeInfoD1Ev
.L43:
	.loc 4 5138 0
	lwz 0,44(1)
	lwz 31,36(1)
	mtlr 0
	addi 1,1,40
	.cfi_remember_state
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL58:
.L46:
.LCFI28:
	.cfi_restore_state
	.file 7 "d:/Data/Nintendo/DoomGX/src/game/ai/../Game_local.h"
	.loc 7 694 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
	.loc 7 121 0
	lis 31,.LANCHOR0@ha
	.loc 7 694 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(9)
	.loc 7 121 0
	la 31,.LANCHOR0@l(31)
	li 11,3
.LBB5138:
.LBB5139:
	.loc 6 396 0
	li 0,0
.LBE5139:
.LBE5138:
	.loc 7 694 0
	fadds 0,0,0
	.loc 7 121 0
	stw 11,80(31)
.LVL59:
.LBB5143:
.LBB5140:
	.loc 6 398 0
	lis 11,.LC2@ha
	.loc 6 396 0
	stw 0,84(31)
	.loc 6 397 0
	stw 0,88(31)
.LBE5140:
.LBE5143:
.LBB5144:
.LBB5145:
	.file 8 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Math.h"
	.loc 8 825 0
	addi 9,31,96
.LBE5145:
.LBE5144:
.LBB5148:
.LBB5141:
	.loc 6 398 0
	lwz 0,.LC2@l(11)
.LBE5141:
.LBE5148:
.LBB5149:
.LBB5146:
	.loc 8 825 0
	fctiwz 0,0
.LBE5146:
.LBE5149:
	.loc 4 4926 0
	lis 4,.LC3@ha
	addi 3,31,104
.LVL60:
.LBB5150:
.LBB5142:
	.loc 6 398 0
	stw 0,92(31)
.LVL61:
.LBE5142:
.LBE5150:
	.file 9 "d:/Data/Nintendo/DoomGX/src/game/ai/../Player.h"
	.loc 9 69 0
	li 0,10
.LBB5151:
.LBB5147:
	.loc 8 825 0
	stfiwx 0,0,9
.LVL62:
.LBE5147:
.LBE5151:
	.loc 4 4926 0
	la 4,.LC3@l(4)
	.loc 9 69 0
	stw 0,100(31)
	.loc 4 4926 0
	li 5,0
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 4 4928 0
	lis 11,_ZN12idCombatNode5SpawnEv@ha
	la 11,_ZN12idCombatNode5SpawnEv@l(11)
	lis 4,.LC4@ha
	stw 11,8(1)
	lis 11,_ZNK12idCombatNode4SaveEP10idSaveGame@ha
	la 11,_ZNK12idCombatNode4SaveEP10idSaveGame@l(11)
	lis 5,.LC5@ha
	stw 11,16(1)
	lis 6,.LANCHOR1@ha
	lis 7,_ZN12idCombatNode14CreateInstanceEv@ha
	lis 11,_ZN12idCombatNode7RestoreEP13idRestoreGame@ha
	li 0,0
	la 11,_ZN12idCombatNode7RestoreEP13idRestoreGame@l(11)
	mr 3,31
	la 4,.LC4@l(4)
	la 5,.LC5@l(5)
	la 6,.LANCHOR1@l(6)
	la 7,_ZN12idCombatNode14CreateInstanceEv@l(7)
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 0,12(1)
	stw 0,20(1)
	stw 11,24(1)
	stw 0,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	b .L43
	.cfi_endproc
.LFE3426:
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.64, .-_Z41__static_initialization_and_destruction_0ii.constprop.64
	.section	.text._ZN12idCombatNodeD0Ev,"axG",@progbits,_ZN12idCombatNodeD5Ev,comdat
	.align 2
	.weak	_ZN12idCombatNodeD0Ev
	.type	_ZN12idCombatNodeD0Ev, @function
_ZN12idCombatNodeD0Ev:
.LFB3334:
	.loc 3 662 0
	.cfi_startproc
.LVL63:
	mflr 0
	stwu 1,-16(1)
.LCFI29:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB5155:
.LBB5156:
.LBB5157:
	lis 9,_ZTV12idCombatNode+8@ha
.LBE5157:
.LBE5156:
.LBE5155:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL64:
	stw 0,20(1)
.LBB5160:
.LBB5159:
.LBB5158:
	.loc 3 662 0
	la 0,_ZTV12idCombatNode+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN8idEntityD2Ev
.LVL65:
.LBE5158:
.LBE5159:
.LBE5160:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL66:
	mtlr 0
	addi 1,1,16
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3334:
	.size	_ZN12idCombatNodeD0Ev, .-_ZN12idCombatNodeD0Ev
	.section	".text"
	.align 2
	.globl _ZN23idAASFindAreaOutOfRange8TestAreaEPK5idAASi
	.type	_ZN23idAASFindAreaOutOfRange8TestAreaEPK5idAASi, @function
_ZN23idAASFindAreaOutOfRange8TestAreaEPK5idAASi:
.LFB2829:
	.loc 4 202 0
	.cfi_startproc
.LVL67:
	mflr 0
	stwu 1,-168(1)
.LCFI31:
	.cfi_def_cfa_offset 168
	.cfi_register 65, 0
	stw 31,156(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,172(1)
.LBB5174:
	.loc 4 203 0
	addi 3,1,20
.LVL68:
.LBE5174:
	.loc 4 202 0
	stfd 31,160(1)
.LBB5209:
	.loc 4 203 0
	lwz 9,0(4)
	lwz 0,40(9)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL69:
	.loc 4 209 0
	lis 9,.LC6@ha
	lfs 13,.LC6@l(9)
	lfs 0,16(31)
	.loc 4 203 0
	lfs 12,20(1)
	.loc 4 209 0
	fcmpu 7,0,13
.LBB5175:
.LBB5176:
	.loc 6 237 0
	lfs 10,4(31)
.LBE5176:
.LBE5175:
	.loc 4 203 0
	lfs 13,24(1)
.LVL70:
.LBB5180:
.LBB5177:
	.loc 6 237 0
	lfs 11,8(31)
.LVL71:
.LBE5177:
.LBE5180:
	.loc 4 209 0
	bng- 7,.L51
.LBB5181:
.LBB5178:
	.loc 6 237 0 discriminator 1
	fsubs 10,10,12
.LBE5178:
.LBE5181:
	.loc 4 210 0 discriminator 1
	li 3,0
.LBB5182:
.LBB5179:
	.loc 6 237 0 discriminator 1
	fsubs 11,11,13
.LBE5179:
.LBE5182:
.LBB5183:
.LBB5184:
	.loc 6 167 0 discriminator 1
	fmuls 10,10,10
.LBE5184:
.LBE5183:
	fmadds 11,11,11,10
	.loc 4 209 0 discriminator 1
	fcmpu 7,0,11
	bgt- 7,.L53
.L51:
.LVL72:
.LBB5185:
.LBB5186:
	.loc 6 452 0
	lis 9,.LC0@ha
	lfs 11,28(1)
	lfs 31,.LC0@l(9)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
.LBE5186:
.LBE5185:
.LBB5193:
.LBB5194:
	.file 10 "d:/Data/Nintendo/DoomGX/src/game/ai/../physics/Clip.h"
	.loc 10 334 0
	lis 3,gameLocal+2311032@ha
.LBE5194:
.LBE5193:
.LBB5200:
.LBB5189:
	.loc 6 452 0
	fadds 11,11,31
.LVL73:
.LBE5189:
.LBE5200:
.LBB5201:
.LBB5195:
	.loc 10 334 0
	lis 8,mat3_identity@ha
.LBE5195:
.LBE5201:
.LBB5202:
.LBB5190:
	.loc 6 452 0
	fadds 12,12,0
.LBE5190:
.LBE5202:
.LBB5203:
.LBB5196:
	.loc 10 334 0
	la 3,gameLocal+2311032@l(3)
.LBE5196:
.LBE5203:
.LBB5204:
.LBB5191:
	.loc 6 452 0
	fadds 13,13,0
.LBE5191:
.LBE5204:
.LBB5205:
.LBB5197:
	.loc 10 334 0
	addi 4,1,32
	addi 5,31,4
	addi 6,1,8
	li 7,0
	la 8,mat3_identity@l(8)
	li 9,2
	li 10,0
.LBE5197:
.LBE5205:
.LBB5206:
.LBB5192:
.LBB5187:
.LBB5188:
	.loc 6 396 0
	stfs 12,8(1)
	.loc 6 397 0
	stfs 13,12(1)
	.loc 6 398 0
	stfs 11,16(1)
.LVL74:
.LBE5188:
.LBE5187:
.LBE5192:
.LBE5206:
.LBB5207:
.LBB5198:
	.loc 10 334 0
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LVL75:
.LBE5198:
.LBE5207:
	.loc 4 214 0
	lfs 0,32(1)
	fcmpu 7,0,31
	mfcr 3
	rlwinm 3,3,29,1
.LBB5208:
.LBB5199:
	.loc 4 202 0
	xori 3,3,1
.LVL76:
.L53:
.LBE5199:
.LBE5208:
.LBE5209:
	.loc 4 219 0
	lwz 0,172(1)
	lwz 31,156(1)
.LVL77:
	mtlr 0
	lfd 31,160(1)
	addi 1,1,168
.LCFI32:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2829:
	.size	_ZN23idAASFindAreaOutOfRange8TestAreaEPK5idAASi, .-_ZN23idAASFindAreaOutOfRange8TestAreaEPK5idAASi
	.section	.text._ZN14idFixedWindingD2Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD2Ev
	.type	_ZN14idFixedWindingD2Ev, @function
_ZN14idFixedWindingD2Ev:
.LFB1498:
	.loc 1 380 0
	.cfi_startproc
.LVL78:
.LBB5215:
	.loc 1 381 0
	li 0,0
.LBB5216:
.LBB5217:
.LBB5218:
	.loc 1 183 0
	lis 9,_ZTV9idWinding+8@ha
.LBE5218:
.LBE5217:
.LBE5216:
	.loc 1 381 0
	stw 0,8(3)
.LVL79:
.LBB5221:
.LBB5220:
.LBB5219:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	stw 0,0(3)
.LBE5219:
.LBE5220:
.LBE5221:
.LBE5215:
	.loc 1 382 0
	blr
	.cfi_endproc
.LFE1498:
	.size	_ZN14idFixedWindingD2Ev, .-_ZN14idFixedWindingD2Ev
	.section	.text._ZN9idWindingD0Ev,"axG",@progbits,_ZN9idWindingD5Ev,comdat
	.align 2
	.weak	_ZN9idWindingD0Ev
	.type	_ZN9idWindingD0Ev, @function
_ZN9idWindingD0Ev:
.LFB1463:
	.loc 1 183 0
	.cfi_startproc
.LVL80:
	mflr 0
	stwu 1,-16(1)
.LCFI33:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB5225:
.LBB5226:
.LBB5227:
	lis 9,_ZTV9idWinding+8@ha
.LBE5227:
.LBE5226:
.LBE5225:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL81:
	stw 0,20(1)
.LBB5232:
.LBB5230:
.LBB5228:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL82:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L60
	bl _ZdaPv
.LVL83:
.L60:
	.loc 1 185 0
	li 0,0
.LBE5228:
.LBE5230:
.LBE5232:
	.loc 1 186 0
	mr 3,31
.LBB5233:
.LBB5231:
.LBB5229:
	.loc 1 185 0
	stw 0,8(31)
.LBE5229:
.LBE5231:
.LBE5233:
	.loc 1 186 0
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL84:
	mtlr 0
	addi 1,1,16
.LCFI34:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1463:
	.size	_ZN9idWindingD0Ev, .-_ZN9idWindingD0Ev
	.section	.text._ZN14idFixedWindingD0Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD0Ev
	.type	_ZN14idFixedWindingD0Ev, @function
_ZN14idFixedWindingD0Ev:
.LFB1500:
	.loc 1 380 0
	.cfi_startproc
.LVL85:
	mflr 0
	stwu 1,-8(1)
.LCFI35:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB5240:
.LBB5241:
.LBB5242:
.LBB5243:
.LBB5244:
.LBB5245:
	.loc 1 183 0
	lis 11,_ZTV9idWinding+8@ha
.LBE5245:
.LBE5244:
.LBE5243:
.LBE5242:
.LBE5241:
.LBE5240:
	.loc 1 380 0
	stw 0,12(1)
.LBB5251:
.LBB5250:
.LBB5249:
	.loc 1 381 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,8(3)
.LVL86:
.LBB5248:
.LBB5247:
.LBB5246:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(11)
	stw 0,0(3)
.LBE5246:
.LBE5247:
.LBE5248:
.LBE5249:
.LBE5250:
.LBE5251:
	.loc 1 382 0
	bl _ZdlPv
.LVL87:
	lwz 0,12(1)
	addi 1,1,8
.LCFI36:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1500:
	.size	_ZN14idFixedWindingD0Ev, .-_ZN14idFixedWindingD0Ev
	.section	".text"
	.align 2
	.globl _ZN12idCombatNode14Event_MarkUsedEv
	.type	_ZN12idCombatNode14Event_MarkUsedEv, @function
_ZN12idCombatNode14Event_MarkUsedEv:
.LFB2987:
	.loc 4 5134 0
	.cfi_startproc
.LVL88:
	stwu 1,-16(1)
.LCFI37:
	.cfi_def_cfa_offset 16
	mflr 0
.LBB5258:
.LBB5259:
.LBB5260:
.LBB5261:
	.file 11 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/Dict.h"
	.loc 11 241 0
	lis 4,.LC8@ha
.LBE5261:
.LBE5260:
.LBE5259:
.LBE5258:
	.loc 4 5134 0
	stw 31,12(1)
.LBB5275:
.LBB5271:
.LBB5267:
.LBB5263:
	.loc 11 241 0
	la 4,.LC8@l(4)
.LBE5263:
.LBE5267:
.LBE5271:
.LBE5275:
	.loc 4 5134 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL89:
.LBB5276:
.LBB5272:
.LBB5268:
.LBB5264:
	.loc 11 241 0
	addi 3,3,100
.LVL90:
.LBE5264:
.LBE5268:
.LBE5272:
.LBE5276:
	.loc 4 5134 0
	stw 0,20(1)
.LBB5277:
.LBB5273:
.LBB5269:
.LBB5265:
	.loc 11 241 0
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL91:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L70
.LVL92:
.LBB5262:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL93:
.L68:
.LBE5262:
.LBE5265:
.LBE5269:
	.loc 11 257 0
	bl atoi
.LBE5273:
.LBE5277:
	.loc 4 5135 0
	cmpwi 7,3,0
	beq- 7,.L67
	.loc 4 5136 0
	li 0,1
	stb 0,692(31)
.L67:
	.loc 4 5138 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL94:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI38:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL95:
.L70:
.LCFI39:
	.cfi_restore_state
.LBB5278:
.LBB5274:
.LBB5270:
.LBB5266:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL96:
	la 3,.LC7@l(3)
	b .L68
.LBE5266:
.LBE5270:
.LBE5274:
.LBE5278:
	.cfi_endproc
.LFE2987:
	.size	_ZN12idCombatNode14Event_MarkUsedEv, .-_ZN12idCombatNode14Event_MarkUsedEv
	.align 2
	.globl _ZN12idCombatNode5SpawnEv
	.type	_ZN12idCombatNode5SpawnEv, @function
_ZN12idCombatNode5SpawnEv:
.LFB2982:
	.loc 4 4993 0
	.cfi_startproc
.LVL97:
	stwu 1,-120(1)
.LCFI40:
	.cfi_def_cfa_offset 120
	mflr 0
.LBB5324:
.LBB5325:
.LBB5326:
.LBB5327:
.LBB5328:
	.loc 11 241 0
	lis 4,.LC10@ha
.LBE5328:
.LBE5327:
.LBE5326:
.LBE5325:
.LBE5324:
	.loc 4 4993 0
	stw 30,80(1)
.LBB5488:
	.loc 4 4998 0
	addi 30,3,100
	.cfi_offset 30, -40
	.cfi_register 65, 0
.LVL98:
.LBE5488:
	.loc 4 4993 0
	stw 31,84(1)
.LBB5489:
.LBB5346:
.LBB5338:
.LBB5334:
.LBB5330:
	.loc 11 241 0
	la 4,.LC10@l(4)
.LBE5330:
.LBE5334:
.LBE5338:
.LBE5346:
.LBE5489:
	.loc 4 4993 0
	mr 31,3
	.cfi_offset 31, -36
.LBB5490:
.LBB5347:
.LBB5339:
.LBB5335:
.LBB5331:
	.loc 11 241 0
	mr 3,30
.LVL99:
.LBE5331:
.LBE5335:
.LBE5339:
.LBE5347:
.LBE5490:
	.loc 4 4993 0
	stw 0,124(1)
	stfd 28,88(1)
	stfd 29,96(1)
	stfd 30,104(1)
	stfd 31,112(1)
	stw 29,76(1)
.LBB5491:
.LBB5348:
.LBB5340:
.LBB5336:
.LBB5332:
	.loc 11 241 0
	.cfi_offset 29, -44
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL100:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L77
.LVL101:
.LBB5329:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL102:
.LBE5329:
.LBE5332:
.LBE5336:
	.loc 11 249 0
	bl atof
.LVL103:
.LBE5340:
.LBE5348:
.LBB5349:
.LBB5350:
.LBB5351:
.LBB5352:
	.loc 11 241 0
	lis 4,.LC11@ha
.LBE5352:
.LBE5351:
.LBE5350:
.LBE5349:
.LBB5373:
.LBB5341:
	.loc 11 249 0
	frsp 1,1
.LBE5341:
.LBE5373:
.LBB5374:
.LBB5364:
.LBB5359:
.LBB5354:
	.loc 11 241 0
	mr 3,30
	la 4,.LC11@l(4)
.LBE5354:
.LBE5359:
.LBE5364:
.LBE5374:
.LBB5375:
.LBB5342:
	.loc 11 249 0
	stfs 1,636(31)
.LVL104:
.LBE5342:
.LBE5375:
.LBB5376:
.LBB5365:
.LBB5360:
.LBB5355:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL105:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L78
.L82:
.LVL106:
.LBB5353:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL107:
.LBE5353:
.LBE5355:
.LBE5360:
	.loc 11 249 0
	bl atof
.LVL108:
.LBE5365:
.LBE5376:
.LBB5377:
.LBB5378:
.LBB5379:
.LBB5380:
	.loc 11 241 0
	lis 4,.LC12@ha
.LBE5380:
.LBE5379:
.LBE5378:
.LBE5377:
.LBB5399:
.LBB5366:
	.loc 11 249 0
	frsp 1,1
.LBE5366:
.LBE5399:
.LBB5400:
.LBB5392:
.LBB5387:
.LBB5382:
	.loc 11 241 0
	mr 3,30
	la 4,.LC12@l(4)
.LBE5382:
.LBE5387:
.LBE5392:
.LBE5400:
.LBB5401:
.LBB5367:
	.loc 11 249 0
	stfs 1,640(31)
.LVL109:
.LBE5367:
.LBE5401:
.LBB5402:
.LBB5393:
.LBB5388:
.LBB5383:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL110:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L79
.L83:
.LVL111:
.LBB5381:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL112:
.LBE5381:
.LBE5383:
.LBE5388:
	.loc 11 249 0
	bl atof
.LVL113:
.LBE5393:
.LBE5402:
.LBB5403:
.LBB5404:
.LBB5405:
.LBB5406:
	.loc 11 241 0
	lis 4,.LC13@ha
	mr 3,30
	la 4,.LC13@l(4)
.LBE5406:
.LBE5405:
.LBE5404:
.LBE5403:
.LBB5418:
.LBB5394:
	.loc 11 249 0
	frsp 29,1
.LVL114:
.LBE5394:
.LBE5418:
.LBB5419:
.LBB5414:
.LBB5411:
.LBB5408:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL115:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L80
.L84:
.LVL116:
.LBB5407:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL117:
.L75:
.LBE5407:
.LBE5408:
.LBE5411:
	.loc 11 249 0
	bl atof
.LBE5414:
.LBE5419:
.LBB5420:
.LBB5421:
	.loc 11 262 0
	lis 4,.LC14@ha
	li 5,0
	addi 6,1,56
	la 4,.LC14@l(4)
	mr 3,30
.LBE5421:
.LBE5420:
.LBB5423:
.LBB5415:
	.loc 11 249 0
	frsp 30,1
.LVL118:
.LBE5415:
.LBE5423:
.LBB5424:
.LBB5422:
	.loc 11 262 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL119:
.LBE5422:
.LBE5424:
.LBB5425:
.LBB5426:
	.loc 6 424 0
	lwz 0,56(1)
.LBE5426:
.LBE5425:
	.loc 4 5004 0
	mr 3,31
.LBB5428:
.LBB5429:
	.file 12 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Angles.h"
	.loc 12 109 0
	li 29,0
.LBE5429:
.LBE5428:
.LBB5431:
.LBB5427:
	.loc 6 424 0
	stw 0,680(31)
	.loc 6 425 0
	lwz 0,60(1)
	stw 0,684(31)
	.loc 6 426 0
	lwz 0,64(1)
	stw 0,688(31)
.LBE5427:
.LBE5431:
	.loc 4 5004 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL120:
.LBB5432:
.LBB5433:
	.loc 6 452 0
	lfs 0,688(31)
	lfs 12,8(3)
.LBE5433:
.LBE5432:
	.loc 4 4993 0
	fneg 13,29
	.loc 4 5005 0
	lis 9,.LC15@ha
	.loc 4 5008 0
	mr 3,31
.LVL121:
.LBB5435:
.LBB5434:
	.loc 6 452 0
	fadds 0,12,0
.LBE5434:
.LBE5435:
	.loc 4 5005 0
	lfs 31,.LC15@l(9)
	fmadds 0,13,31,0
	.loc 4 5006 0
	fadds 29,0,29
	.loc 4 5005 0
	stfs 0,648(31)
	.loc 4 5006 0
	stfs 29,652(31)
	.loc 4 5008 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL122:
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL123:
	.loc 4 5009 0
	bl _ZNK6idVec35ToYawEv
	.loc 4 5011 0
	lis 9,.LC16@ha
	fmadds 0,30,31,1
	lfs 29,.LC16@l(9)
	.loc 4 5009 0
	fmr 28,1
.LVL124:
	.loc 4 5012 0
	addi 3,1,32
	addi 4,1,44
	.loc 4 4993 0
	fneg 30,30
.LVL125:
	.loc 4 5011 0
	fsubs 0,0,29
.LVL126:
.LBB5436:
.LBB5430:
	.loc 12 109 0
	stw 29,44(1)
	.loc 12 111 0
	stw 29,52(1)
	.loc 12 110 0
	stfs 0,48(1)
.LBE5430:
.LBE5436:
	.loc 4 5012 0
	bl _ZNK8idAngles9ToForwardEv
.LVL127:
.LBB5437:
.LBB5438:
	.loc 6 424 0
	lwz 0,32(1)
.LBE5438:
.LBE5437:
	.loc 4 5014 0
	fmadds 31,30,31,28
	.loc 4 5015 0
	addi 3,1,8
	addi 4,1,20
.LBB5442:
.LBB5439:
	.loc 6 424 0
	stw 0,656(31)
	.loc 6 425 0
	lwz 0,36(1)
.LBE5439:
.LBE5442:
	.loc 4 5014 0
	fadds 29,31,29
.LBB5443:
.LBB5444:
	.loc 12 109 0
	stw 29,20(1)
.LBE5444:
.LBE5443:
.LBB5447:
.LBB5440:
	.loc 6 425 0
	stw 0,660(31)
	.loc 6 426 0
	lwz 0,40(1)
.LBE5440:
.LBE5447:
.LBB5448:
.LBB5445:
	.loc 12 110 0
	stfs 29,24(1)
.LBE5445:
.LBE5448:
.LBB5449:
.LBB5441:
	.loc 6 426 0
	stw 0,664(31)
.LVL128:
.LBE5441:
.LBE5449:
.LBB5450:
.LBB5446:
	.loc 12 111 0
	stw 29,28(1)
.LBE5446:
.LBE5450:
	.loc 4 5015 0
	bl _ZNK8idAngles9ToForwardEv
.LVL129:
.LBB5451:
.LBB5452:
	.loc 6 424 0
	lwz 0,8(1)
.LBE5452:
.LBE5451:
.LBB5455:
.LBB5456:
.LBB5457:
.LBB5458:
	.loc 11 241 0
	lis 4,.LC17@ha
	mr 3,30
.LBE5458:
.LBE5457:
.LBE5456:
.LBE5455:
.LBB5469:
.LBB5453:
	.loc 6 424 0
	stw 0,668(31)
.LBE5453:
.LBE5469:
.LBB5470:
.LBB5466:
.LBB5463:
.LBB5460:
	.loc 11 241 0
	la 4,.LC17@l(4)
.LBE5460:
.LBE5463:
.LBE5466:
.LBE5470:
.LBB5471:
.LBB5454:
	.loc 6 425 0
	lwz 0,12(1)
	stw 0,672(31)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,676(31)
.LVL130:
.LBE5454:
.LBE5471:
.LBB5472:
.LBB5467:
.LBB5464:
.LBB5461:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL131:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L81
.LVL132:
.LBB5459:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL133:
.LBE5459:
.LBE5461:
.LBE5464:
	.loc 11 257 0
	bl atoi
.LVL134:
	cntlzw 3,3
	srwi 3,3,5
	xori 3,3,1
.LBE5467:
.LBE5472:
	.loc 4 5017 0
	stb 3,692(31)
.LBE5491:
	.loc 4 5018 0
	lwz 0,124(1)
	lwz 29,76(1)
	mtlr 0
	lwz 30,80(1)
.LVL135:
	lwz 31,84(1)
.LVL136:
	lfd 28,88(1)
.LVL137:
	lfd 29,96(1)
	lfd 30,104(1)
	lfd 31,112(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI41:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL138:
.L77:
.LCFI42:
	.cfi_restore_state
.LBB5492:
.LBB5473:
.LBB5343:
.LBB5337:
.LBB5333:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL139:
	la 3,.LC7@l(3)
.LBE5333:
.LBE5337:
	.loc 11 249 0
	bl atof
.LBE5343:
.LBE5473:
.LBB5474:
.LBB5368:
.LBB5361:
.LBB5356:
	.loc 11 241 0
	lis 4,.LC11@ha
.LBE5356:
.LBE5361:
.LBE5368:
.LBE5474:
.LBB5475:
.LBB5344:
	.loc 11 249 0
	frsp 1,1
.LBE5344:
.LBE5475:
.LBB5476:
.LBB5369:
.LBB5362:
.LBB5357:
	.loc 11 241 0
	mr 3,30
	la 4,.LC11@l(4)
.LBE5357:
.LBE5362:
.LBE5369:
.LBE5476:
.LBB5477:
.LBB5345:
	.loc 11 249 0
	stfs 1,636(31)
.LVL140:
.LBE5345:
.LBE5477:
.LBB5478:
.LBB5370:
.LBB5363:
.LBB5358:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL141:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L82
.L78:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL142:
	la 3,.LC7@l(3)
.LBE5358:
.LBE5363:
	.loc 11 249 0
	bl atof
.LBE5370:
.LBE5478:
.LBB5479:
.LBB5395:
.LBB5389:
.LBB5384:
	.loc 11 241 0
	lis 4,.LC12@ha
.LBE5384:
.LBE5389:
.LBE5395:
.LBE5479:
.LBB5480:
.LBB5371:
	.loc 11 249 0
	frsp 1,1
.LBE5371:
.LBE5480:
.LBB5481:
.LBB5396:
.LBB5390:
.LBB5385:
	.loc 11 241 0
	mr 3,30
	la 4,.LC12@l(4)
.LBE5385:
.LBE5390:
.LBE5396:
.LBE5481:
.LBB5482:
.LBB5372:
	.loc 11 249 0
	stfs 1,640(31)
.LVL143:
.LBE5372:
.LBE5482:
.LBB5483:
.LBB5397:
.LBB5391:
.LBB5386:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL144:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L83
.L79:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL145:
	la 3,.LC7@l(3)
.LBE5386:
.LBE5391:
	.loc 11 249 0
	bl atof
.LBE5397:
.LBE5483:
.LBB5484:
.LBB5416:
.LBB5412:
.LBB5409:
	.loc 11 241 0
	lis 4,.LC13@ha
	mr 3,30
	la 4,.LC13@l(4)
.LBE5409:
.LBE5412:
.LBE5416:
.LBE5484:
.LBB5485:
.LBB5398:
	.loc 11 249 0
	frsp 29,1
.LVL146:
.LBE5398:
.LBE5485:
.LBB5486:
.LBB5417:
.LBB5413:
.LBB5410:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL147:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L84
.L80:
	.loc 11 245 0
	lis 3,.LC9@ha
.LVL148:
	la 3,.LC9@l(3)
	b .L75
.LVL149:
.L81:
.LBE5410:
.LBE5413:
.LBE5417:
.LBE5486:
.LBB5487:
.LBB5468:
.LBB5465:
.LBB5462:
	lis 3,.LC7@ha
.LVL150:
	la 3,.LC7@l(3)
.LBE5462:
.LBE5465:
	.loc 11 257 0
	bl atoi
	cntlzw 3,3
	srwi 3,3,5
	xori 3,3,1
.LBE5468:
.LBE5487:
	.loc 4 5017 0
	stb 3,692(31)
.LBE5492:
	.loc 4 5018 0
	lwz 0,124(1)
	lwz 29,76(1)
	mtlr 0
	lwz 30,80(1)
.LVL151:
	lwz 31,84(1)
.LVL152:
	lfd 28,88(1)
.LVL153:
	lfd 29,96(1)
	lfd 30,104(1)
	lfd 31,112(1)
	addi 1,1,120
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI43:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2982:
	.size	_ZN12idCombatNode5SpawnEv, .-_ZN12idCombatNode5SpawnEv
	.align 2
	.globl _ZN11idMoveStateC2Ev
	.type	_ZN11idMoveStateC2Ev, @function
_ZN11idMoveStateC2Ev:
.LFB2811:
	.loc 4 55 0
	.cfi_startproc
.LVL154:
	stwu 1,-16(1)
.LCFI44:
	.cfi_def_cfa_offset 16
	mflr 0
.LBB5493:
	.loc 4 57 0
	li 4,108
.LBE5493:
	.loc 4 55 0
	stw 30,8(1)
.LBB5528:
.LBB5494:
.LBB5495:
	.loc 7 590 0
	li 30,0
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE5495:
.LBE5494:
.LBE5528:
	.loc 4 55 0
	stw 0,20(1)
	stw 31,12(1)
	.loc 4 55 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL155:
.LBB5529:
.LBB5497:
.LBB5496:
	.loc 7 590 0
	stw 30,36(3)
.LVL156:
.LBE5496:
.LBE5497:
.LBB5498:
.LBB5499:
	stw 30,84(3)
.LBE5499:
.LBE5498:
	.loc 4 57 0
	lis 3,.LC18@ha
.LVL157:
	la 3,.LC18@l(3)
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
	.loc 4 60 0
	li 0,1
	stw 0,0(31)
.LBB5500:
.LBB5501:
	.loc 6 424 0
	lis 11,vec3_origin@ha
.LBE5501:
.LBE5500:
	.loc 4 61 0
	stw 30,4(31)
.LBB5507:
.LBB5502:
	.loc 6 424 0
	la 9,vec3_origin@l(11)
.LBE5502:
.LBE5507:
	.loc 4 62 0
	stw 30,8(31)
.LVL158:
.LBB5508:
.LBB5509:
	.loc 6 410 0
	lis 8,.LC0@ha
.LBE5509:
.LBE5508:
.LBB5512:
.LBB5503:
	.loc 6 424 0
	lwz 10,vec3_origin@l(11)
.LBE5503:
.LBE5512:
.LBB5513:
.LBB5514:
	.loc 6 416 0
	li 0,0
.LBE5514:
.LBE5513:
.LBB5516:
.LBB5504:
	.loc 6 425 0
	lwz 11,4(9)
.LBE5504:
.LBE5516:
.LBB5517:
.LBB5510:
	.loc 6 410 0
	lwz 8,.LC0@l(8)
.LBE5510:
.LBE5517:
.LBB5518:
.LBB5505:
	.loc 6 426 0
	lwz 9,8(9)
.LBE5505:
.LBE5518:
.LBB5519:
.LBB5515:
	.loc 6 416 0
	stw 0,20(31)
	stw 0,16(31)
	stw 0,12(31)
.LVL159:
.LBE5515:
.LBE5519:
.LBB5520:
.LBB5511:
	.loc 6 410 0
	stw 8,24(31)
	.loc 6 411 0
	stw 0,28(31)
	.loc 6 412 0
	stw 0,32(31)
.LVL160:
.LBE5511:
.LBE5520:
.LBB5521:
.LBB5522:
	.loc 7 606 0
	stw 30,36(31)
.LVL161:
.LBE5522:
.LBE5521:
.LBB5523:
.LBB5524:
	.loc 6 416 0
	stw 0,48(31)
	stw 0,44(31)
	stw 0,40(31)
.LBE5524:
.LBE5523:
	.loc 4 67 0
	stw 30,52(31)
	.loc 4 68 0
	stw 30,56(31)
	.loc 4 69 0
	stw 30,60(31)
	.loc 4 70 0
	stw 0,64(31)
	.loc 4 71 0
	stw 0,68(31)
	.loc 4 72 0
	stw 0,72(31)
	.loc 4 73 0
	stw 30,76(31)
	.loc 4 74 0
	stw 30,80(31)
.LVL162:
.LBB5525:
.LBB5526:
	.loc 7 606 0
	stw 30,84(31)
.LVL163:
.LBE5526:
.LBE5525:
.LBB5527:
.LBB5506:
	.loc 6 424 0
	stw 10,88(31)
	.loc 6 425 0
	stw 11,92(31)
	.loc 6 426 0
	stw 9,96(31)
.LBE5506:
.LBE5527:
	.loc 4 77 0
	stw 30,100(31)
	.loc 4 78 0
	stw 30,104(31)
.LBE5529:
	.loc 4 79 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL164:
	addi 1,1,16
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2811:
	.size	_ZN11idMoveStateC2Ev, .-_ZN11idMoveStateC2Ev
	.align 2
	.globl _ZNK11idMoveState4SaveEP10idSaveGame
	.type	_ZNK11idMoveState4SaveEP10idSaveGame, @function
_ZNK11idMoveState4SaveEP10idSaveGame:
.LFB2813:
	.loc 4 86 0
	.cfi_startproc
.LVL165:
	mflr 0
	stwu 1,-16(1)
.LCFI46:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 4 86 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 4 87 0
	lwz 4,0(3)
.LVL166:
	mr 3,30
.LVL167:
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 88 0
	lwz 4,4(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 89 0
	lwz 4,8(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 90 0
	mr 3,30
	addi 4,31,12
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 91 0
	mr 3,30
	addi 4,31,24
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
.LVL168:
.LBB5530:
.LBB5531:
	.loc 7 595 0
	lwz 4,36(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LBE5531:
.LBE5530:
	.loc 4 93 0
	mr 3,30
	addi 4,31,40
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 94 0
	lwz 4,52(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 95 0
	lwz 4,56(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 96 0
	lwz 4,60(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 97 0
	lfs 1,64(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 98 0
	lfs 1,68(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 99 0
	lfs 1,72(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 100 0
	lwz 4,76(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 101 0
	lwz 4,80(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LVL169:
.LBB5532:
.LBB5533:
	.loc 7 595 0
	lwz 4,84(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LBE5533:
.LBE5532:
	.loc 4 103 0
	mr 3,30
	addi 4,31,88
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 104 0
	lwz 4,100(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 105 0
	lwz 4,104(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 106 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL170:
	mtlr 0
	lwz 31,12(1)
.LVL171:
	addi 1,1,16
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2813:
	.size	_ZNK11idMoveState4SaveEP10idSaveGame, .-_ZNK11idMoveState4SaveEP10idSaveGame
	.align 2
	.globl _ZN11idMoveState7RestoreEP13idRestoreGame
	.type	_ZN11idMoveState7RestoreEP13idRestoreGame, @function
_ZN11idMoveState7RestoreEP13idRestoreGame:
.LFB2814:
	.loc 4 113 0
	.cfi_startproc
.LVL172:
	stwu 1,-16(1)
.LCFI48:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 4 114 0
	mr 3,4
.LVL173:
	.loc 4 113 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 4 114 0
	mr 4,31
.LVL174:
	.loc 4 113 0
	stw 0,20(1)
	.loc 4 114 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame7ReadIntERi
.LVL175:
	.loc 4 115 0
	mr 3,30
	addi 4,31,4
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 116 0
	mr 3,30
	addi 4,31,8
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 117 0
	mr 3,30
	addi 4,31,12
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 118 0
	mr 3,30
	addi 4,31,24
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
.LVL176:
.LBB5534:
.LBB5535:
	.loc 7 600 0
	mr 3,30
	addi 4,31,36
	bl _ZN13idRestoreGame7ReadIntERi
.LBE5535:
.LBE5534:
	.loc 4 120 0
	mr 3,30
	addi 4,31,40
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 121 0
	mr 3,30
	addi 4,31,52
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 122 0
	mr 3,30
	addi 4,31,56
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 123 0
	mr 3,30
	addi 4,31,60
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 124 0
	mr 3,30
	addi 4,31,64
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 125 0
	mr 3,30
	addi 4,31,68
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 126 0
	mr 3,30
	addi 4,31,72
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 127 0
	mr 3,30
	addi 4,31,76
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 128 0
	mr 3,30
	addi 4,31,80
	bl _ZN13idRestoreGame7ReadIntERi
.LVL177:
.LBB5536:
.LBB5537:
	.loc 7 600 0
	mr 3,30
	addi 4,31,84
	bl _ZN13idRestoreGame7ReadIntERi
.LBE5537:
.LBE5536:
	.loc 4 130 0
	mr 3,30
	addi 4,31,88
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 131 0
	mr 3,30
	addi 4,31,100
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 132 0
	mr 3,30
	addi 4,31,104
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 133 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL178:
	mtlr 0
	lwz 31,12(1)
.LVL179:
	addi 1,1,16
.LCFI49:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2814:
	.size	_ZN11idMoveState7RestoreEP13idRestoreGame, .-_ZN11idMoveState7RestoreEP13idRestoreGame
	.align 2
	.globl _ZN14idAASFindCoverC2ERK6idVec3
	.type	_ZN14idAASFindCoverC2ERK6idVec3, @function
_ZN14idAASFindCoverC2ERK6idVec3:
.LFB2819:
	.loc 4 140 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2819
.LVL180:
	mflr 0
	stwu 1,-56(1)
.LCFI50:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
.LBB5538:
	lis 9,_ZTV14idAASFindCover+8@ha
.LBE5538:
	stw 30,48(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,60(1)
.LBB5567:
	la 0,_ZTV14idAASFindCover+8@l(9)
	.cfi_offset 65, 4
.LBE5567:
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL181:
	stw 29,44(1)
.LBB5568:
.LBB5539:
	.loc 4 142 0
	li 4,28
.LVL182:
.LBE5539:
	.loc 4 140 0
	stw 0,0(3)
.LBB5563:
	.loc 4 142 0
	lis 3,.LC19@ha
.LVL183:
	la 3,.LC19@l(3)
.LEHB4:
	.cfi_offset 29, -12
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LVL184:
.LBB5540:
.LBB5541:
	.loc 6 431 0
	lis 9,.LC1@ha
	lfs 11,0(30)
	lfs 0,.LC1@l(9)
.LBE5541:
.LBE5540:
.LBB5545:
.LBB5546:
	.loc 6 452 0
	lis 9,.LC20@ha
.LBE5546:
.LBE5545:
.LBB5551:
.LBB5542:
	.loc 6 431 0
	lfs 12,4(30)
.LBE5542:
.LBE5551:
	.loc 4 149 0
	lis 29,gameLocal+2426068@ha
.LBB5552:
.LBB5543:
	.loc 6 431 0
	lfs 13,8(30)
.LVL185:
	fsubs 8,11,0
.LBE5543:
.LBE5552:
.LBB5553:
.LBB5547:
	.loc 6 452 0
	lfs 10,.LC20@l(9)
.LBE5547:
.LBE5553:
.LBB5554:
.LBB5544:
	.loc 6 431 0
	fsubs 9,12,0
.LBE5544:
.LBE5554:
.LBB5555:
.LBB5548:
	.loc 6 452 0
	fadds 11,11,0
.LBE5548:
.LBE5555:
	.loc 4 149 0
	addi 30,31,12
.LVL186:
.LBB5556:
.LBB5549:
	.loc 6 452 0
	fadds 0,12,0
.LBE5549:
.LBE5556:
	.loc 4 149 0
	la 29,gameLocal+2426068@l(29)
.LBB5557:
.LBB5550:
	.loc 6 452 0
	fadds 10,13,10
.LBE5550:
.LBE5557:
	.loc 4 149 0
	mr 3,29
	addi 4,1,8
	mr 5,30
	li 6,4
.LBB5558:
.LBB5559:
.LBB5560:
	.loc 6 424 0
	stfs 8,8(1)
	.loc 6 425 0
	stfs 9,12(1)
	.loc 6 426 0
	stfs 13,16(1)
.LVL187:
.LBE5560:
.LBE5559:
.LBB5561:
.LBB5562:
	.loc 6 424 0
	stfs 11,20(1)
	.loc 6 425 0
	stfs 0,24(1)
	.loc 6 426 0
	stfs 10,28(1)
.LBE5562:
.LBE5561:
.LBE5558:
	.loc 4 149 0
	bl _ZNK5idPVS11GetPVSAreasERK8idBoundsPii
.LVL188:
	mr 5,3
.LVL189:
	.loc 4 150 0
	mr 4,30
	mr 3,29
.LVL190:
	li 6,0
	bl _ZNK5idPVS15SetupCurrentPVSEPKii9pvsType_t
.LEHE4:
.LVL191:
	.loc 4 150 0 is_stmt 0 discriminator 1
	stw 3,4(31)
	stw 4,8(31)
.LBE5563:
.LBE5568:
	.loc 4 151 0 is_stmt 1 discriminator 1
	lwz 0,60(1)
	lwz 29,44(1)
	mtlr 0
	lwz 30,48(1)
	lwz 31,52(1)
.LVL192:
	addi 1,1,56
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL193:
.L91:
.LCFI52:
	.cfi_restore_state
.LBB5569:
.LBB5564:
.LBB5565:
.LBB5566:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(31)
.LEHB5:
	bl _Unwind_Resume
.LEHE5:
.LBE5566:
.LBE5565:
.LBE5564:
.LBE5569:
	.cfi_endproc
.LFE2819:
	.section	.gcc_except_table
.LLSDA2819:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2819-.LLSDACSB2819
.LLSDACSB2819:
	.uleb128 .LEHB4-.LFB2819
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L91-.LFB2819
	.uleb128 0
	.uleb128 .LEHB5-.LFB2819
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2819:
	.section	".text"
	.size	_ZN14idAASFindCoverC2ERK6idVec3, .-_ZN14idAASFindCoverC2ERK6idVec3
	.align 2
	.globl _ZN23idAASFindAreaOutOfRangeC2ERK6idVec3f
	.type	_ZN23idAASFindAreaOutOfRangeC2ERK6idVec3f, @function
_ZN23idAASFindAreaOutOfRangeC2ERK6idVec3f:
.LFB2827:
	.loc 4 188 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2827
.LVL194:
	mflr 0
	stwu 1,-24(1)
.LCFI53:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5570:
	lis 9,_ZTV23idAASFindAreaOutOfRange+8@ha
.LBE5570:
	stfd 31,16(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,28(1)
.LBB5580:
	la 0,_ZTV23idAASFindAreaOutOfRange+8@l(9)
	.cfi_offset 65, 4
.LBE5580:
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -16
	stw 31,12(1)
	.loc 4 188 0
	mr 31,3
	.cfi_offset 31, -12
.LVL195:
.LBB5581:
	stw 0,0(3)
	.loc 4 190 0
	lis 3,.LC21@ha
.LVL196:
	la 3,.LC21@l(3)
	li 4,20
.LVL197:
.LEHB6:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE6:
.LVL198:
.LBB5571:
.LBB5572:
	.loc 6 424 0
	lwz 0,0(30)
.LBE5572:
.LBE5571:
	.loc 4 194 0
	fmuls 31,31,31
.LVL199:
.LBB5575:
.LBB5573:
	.loc 6 424 0
	stw 0,4(31)
	.loc 6 425 0
	lwz 0,4(30)
	stw 0,8(31)
	.loc 6 426 0
	lwz 0,8(30)
.LBE5573:
.LBE5575:
	.loc 4 194 0
	stfs 31,16(31)
.LBB5576:
.LBB5574:
	.loc 6 426 0
	stw 0,12(31)
.LBE5574:
.LBE5576:
.LBE5581:
	.loc 4 195 0
	lwz 0,28(1)
	lwz 30,8(1)
.LVL200:
	mtlr 0
	lwz 31,12(1)
.LVL201:
	lfd 31,16(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI54:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL202:
.L95:
.LCFI55:
	.cfi_restore_state
.LBB5582:
.LBB5577:
.LBB5578:
.LBB5579:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(31)
.LEHB7:
	bl _Unwind_Resume
.LEHE7:
.LBE5579:
.LBE5578:
.LBE5577:
.LBE5582:
	.cfi_endproc
.LFE2827:
	.section	.gcc_except_table
.LLSDA2827:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2827-.LLSDACSB2827
.LLSDACSB2827:
	.uleb128 .LEHB6-.LFB2827
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L95-.LFB2827
	.uleb128 0
	.uleb128 .LEHB7-.LFB2827
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2827:
	.section	".text"
	.size	_ZN23idAASFindAreaOutOfRangeC2ERK6idVec3f, .-_ZN23idAASFindAreaOutOfRangeC2ERK6idVec3f
	.align 2
	.globl _ZN23idAASFindAttackPositionC2EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_
	.type	_ZN23idAASFindAttackPositionC2EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_, @function
_ZN23idAASFindAttackPositionC2EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_:
.LFB2837:
	.loc 4 226 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2837
.LVL203:
	mflr 0
	stwu 1,-64(1)
.LCFI56:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
.LBB5634:
	lis 9,_ZTV23idAASFindAttackPosition+8@ha
.LBE5634:
	stw 26,40(1)
	mr 26,6
	.cfi_offset 26, -24
	stw 0,68(1)
.LBB5724:
	la 0,_ZTV23idAASFindAttackPosition+8@l(9)
	.cfi_offset 65, 4
.LBE5724:
	stw 27,44(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 28,48(1)
.LBB5725:
.LBB5635:
	.loc 4 228 0
	li 4,120
.LVL204:
.LBE5635:
.LBE5725:
	.loc 4 226 0
	stw 29,52(1)
	mr 28,5
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 30,56(1)
	mr 29,8
	stw 31,60(1)
	.loc 4 226 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL205:
.LBB5726:
	stw 0,0(3)
.LBB5719:
	.loc 4 228 0
	lis 3,.LC22@ha
.LVL206:
	la 3,.LC22@l(3)
.LBE5719:
.LBE5726:
	.loc 4 226 0
	mr 30,7
.LEHB8:
.LBB5727:
.LBB5720:
	.loc 4 228 0
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LVL207:
	.loc 4 233 0
	stw 26,8(31)
.LVL208:
.LBB5636:
.LBB5637:
	.file 13 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Matrix.h"
	.loc 13 333 0
	addi 8,31,60
.LVL209:
	li 10,0
.LBE5637:
.LBE5636:
.LBB5645:
.LBB5646:
	.loc 6 424 0
	lwz 0,0(30)
	stw 0,36(31)
	.loc 6 425 0
	lwz 0,4(30)
	stw 0,40(31)
	.loc 6 426 0
	lwz 0,8(30)
	stw 0,44(31)
.LVL210:
.LBE5646:
.LBE5645:
.LBB5647:
.LBB5648:
	.loc 6 424 0
	lwz 0,0(29)
	stw 0,48(31)
	.loc 6 425 0
	lwz 0,4(29)
	stw 0,52(31)
	.loc 6 426 0
	lwz 0,8(29)
.LBE5648:
.LBE5647:
	.loc 4 236 0
	stw 27,4(31)
.LVL211:
.LBB5650:
.LBB5649:
	.loc 6 426 0
	stw 0,56(31)
.L97:
.LBE5649:
.LBE5650:
.LBB5651:
.LBB5644:
.LBB5638:
.LBB5639:
	.loc 6 424 0
	mr 11,28
	mr 9,8
	lwzux 0,11,10
.LBE5639:
.LBE5638:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB5642:
.LBB5640:
	.loc 6 424 0
	stwux 0,9,10
.LBE5640:
.LBE5642:
	.loc 13 333 0
	addi 10,10,12
.LBB5643:
.LBB5641:
	.loc 6 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 6 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE5641:
.LBE5643:
	.loc 13 333 0
	bne+ 7,.L97
.LVL212:
.LBE5644:
.LBE5651:
.LBB5652:
.LBB5653:
.LBB5654:
	.loc 6 424 0
	lis 9,.LC23@ha
	lis 29,.LC20@ha
.LVL213:
	lwz 9,.LC23@l(9)
.LBE5654:
.LBE5653:
.LBE5652:
	.loc 4 240 0
	mr 3,27
.LBB5657:
.LBB5656:
.LBB5655:
	.loc 6 424 0
	lwz 0,.LC20@l(29)
	stw 9,12(31)
	.loc 6 425 0
	stw 9,16(31)
	.loc 6 426 0
	lis 9,.LC24@ha
	lwz 9,.LC24@l(9)
	.loc 6 424 0
	stw 0,24(31)
	.loc 6 426 0
	stw 9,20(31)
.LVL214:
	.loc 6 425 0
	stw 0,28(31)
	.loc 6 426 0
	stw 0,32(31)
.LBE5655:
.LBE5656:
.LBE5657:
	.loc 4 240 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL215:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB5658:
.LBB5659:
.LBB5660:
	.loc 6 456 0 discriminator 1
	lfs 0,0(3)
.LBE5660:
.LBE5659:
.LBE5658:
	.loc 4 240 0 discriminator 1
	mr 9,3
.LVL216:
.LBB5685:
.LBB5669:
.LBB5661:
	.loc 6 456 0 discriminator 1
	lfs 12,12(31)
.LBE5661:
.LBE5669:
.LBE5685:
.LBB5686:
.LBB5687:
	.loc 6 431 0 discriminator 1
	lis 11,.LC1@ha
.LBE5687:
.LBE5686:
.LBB5690:
.LBB5670:
.LBB5662:
	.loc 6 457 0 discriminator 1
	lfs 13,16(31)
.LBE5662:
.LBE5670:
.LBE5690:
	.loc 4 244 0 discriminator 1
	lis 28,gameLocal+2426068@ha
.LVL217:
.LBB5691:
.LBB5671:
.LBB5663:
	.loc 6 456 0 discriminator 1
	fadds 0,12,0
	.loc 6 458 0 discriminator 1
	lfs 8,20(31)
.LBE5663:
.LBE5671:
.LBB5672:
.LBB5673:
	.loc 6 456 0 discriminator 1
	lfs 9,24(31)
.LBE5673:
.LBE5672:
.LBE5691:
	.loc 4 244 0 discriminator 1
	la 28,gameLocal+2426068@l(28)
.LBB5692:
.LBB5677:
.LBB5674:
	.loc 6 457 0 discriminator 1
	lfs 11,28(31)
.LBE5674:
.LBE5677:
.LBE5692:
	.loc 4 244 0 discriminator 1
	addi 4,1,8
.LBB5693:
.LBB5678:
.LBB5664:
	.loc 6 456 0 discriminator 1
	stfs 0,12(31)
.LBE5664:
.LBE5678:
.LBE5693:
	.loc 4 244 0 discriminator 1
	li 6,4
.LBB5694:
.LBB5679:
.LBB5675:
	.loc 6 458 0 discriminator 1
	lfs 12,32(31)
.LBE5675:
.LBE5679:
.LBB5680:
.LBB5665:
	.loc 6 457 0 discriminator 1
	lfs 0,4(3)
.LBE5665:
.LBE5680:
.LBE5694:
.LBB5695:
.LBB5696:
	.loc 6 452 0 discriminator 1
	lfs 10,.LC20@l(29)
.LBE5696:
.LBE5695:
	.loc 4 244 0 discriminator 1
	addi 29,31,104
.LBB5700:
.LBB5681:
.LBB5666:
	.loc 6 457 0 discriminator 1
	fadds 13,13,0
.LBE5666:
.LBE5681:
.LBE5700:
.LBB5701:
.LBB5688:
	.loc 6 431 0 discriminator 1
	lfs 0,.LC1@l(11)
.LBE5688:
.LBE5701:
	.loc 4 244 0 discriminator 1
	mr 5,29
.LBB5702:
.LBB5682:
.LBB5667:
	.loc 6 457 0 discriminator 1
	stfs 13,16(31)
	.loc 6 458 0 discriminator 1
	lfs 13,8(3)
.LBE5667:
.LBE5682:
.LBE5702:
	.loc 4 244 0 discriminator 1
	mr 3,28
.LVL218:
.LBB5703:
.LBB5683:
.LBB5668:
	.loc 6 458 0 discriminator 1
	fadds 13,8,13
	stfs 13,20(31)
.LVL219:
.LBE5668:
.LBE5683:
.LBB5684:
.LBB5676:
	.loc 6 456 0 discriminator 1
	lfs 13,0(9)
	fadds 13,9,13
	stfs 13,24(31)
	.loc 6 457 0 discriminator 1
	lfs 13,4(9)
	fadds 13,11,13
	stfs 13,28(31)
	.loc 6 458 0 discriminator 1
	lfs 13,8(9)
	fadds 13,12,13
	stfs 13,32(31)
.LVL220:
.LBE5676:
.LBE5684:
.LBE5703:
.LBB5704:
.LBB5689:
	.loc 6 431 0 discriminator 1
	lfs 11,0(30)
	lfs 12,4(30)
	lfs 13,8(30)
.LVL221:
	fsubs 8,11,0
	fsubs 9,12,0
.LBE5689:
.LBE5704:
.LBB5705:
.LBB5697:
	.loc 6 452 0 discriminator 1
	fadds 11,11,0
.LBE5697:
.LBE5705:
.LBB5706:
.LBB5707:
.LBB5708:
	.loc 6 426 0 discriminator 1
	stfs 13,16(1)
.LVL222:
.LBE5708:
.LBE5707:
.LBE5706:
.LBB5715:
.LBB5698:
	.loc 6 452 0 discriminator 1
	fadds 0,12,0
.LBE5698:
.LBE5715:
.LBB5716:
.LBB5711:
.LBB5709:
	.loc 6 424 0 discriminator 1
	stfs 8,8(1)
.LBE5709:
.LBE5711:
.LBE5716:
.LBB5717:
.LBB5699:
	.loc 6 452 0 discriminator 1
	fadds 10,13,10
.LBE5699:
.LBE5717:
.LBB5718:
.LBB5712:
.LBB5710:
	.loc 6 425 0 discriminator 1
	stfs 9,12(1)
.LBE5710:
.LBE5712:
.LBB5713:
.LBB5714:
	.loc 6 424 0 discriminator 1
	stfs 11,20(1)
	.loc 6 425 0 discriminator 1
	stfs 0,24(1)
	.loc 6 426 0 discriminator 1
	stfs 10,28(1)
.LBE5714:
.LBE5713:
.LBE5718:
	.loc 4 244 0 discriminator 1
	bl _ZNK5idPVS11GetPVSAreasERK8idBoundsPii
.LVL223:
	.loc 4 244 0 is_stmt 0
	mr 5,3
.LVL224:
	.loc 4 245 0 is_stmt 1
	mr 4,29
	mr 3,28
.LVL225:
	li 6,0
	bl _ZNK5idPVS15SetupCurrentPVSEPKii9pvsType_t
.LEHE8:
.LVL226:
	.loc 4 245 0 is_stmt 0 discriminator 1
	stw 3,96(31)
	stw 4,100(31)
.LBE5720:
.LBE5727:
	.loc 4 246 0 is_stmt 1 discriminator 1
	lwz 0,68(1)
	lwz 26,40(1)
.LVL227:
	mtlr 0
	lwz 27,44(1)
.LVL228:
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
.LVL229:
	lwz 31,60(1)
.LVL230:
	addi 1,1,64
	.cfi_remember_state
.LCFI57:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL231:
.L100:
.LCFI58:
	.cfi_restore_state
.LBB5728:
.LBB5721:
.LBB5722:
.LBB5723:
	.loc 2 69 0
	lis 9,_ZTV13idAASCallback+8@ha
	la 0,_ZTV13idAASCallback+8@l(9)
	stw 0,0(31)
.LEHB9:
	bl _Unwind_Resume
.LEHE9:
.LBE5723:
.LBE5722:
.LBE5721:
.LBE5728:
	.cfi_endproc
.LFE2837:
	.section	.gcc_except_table
.LLSDA2837:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2837-.LLSDACSB2837
.LLSDACSB2837:
	.uleb128 .LEHB8-.LFB2837
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L100-.LFB2837
	.uleb128 0
	.uleb128 .LEHB9-.LFB2837
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2837:
	.section	".text"
	.size	_ZN23idAASFindAttackPositionC2EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_, .-_ZN23idAASFindAttackPositionC2EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_
	.align 2
	.globl _ZNK4idAI4SaveEP10idSaveGame
	.type	_ZNK4idAI4SaveEP10idSaveGame, @function
_ZNK4idAI4SaveEP10idSaveGame:
.LFB2858:
	.loc 4 425 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2858
.LVL232:
	mflr 0
	stwu 1,-64(1)
.LCFI59:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 26,40(1)
	stw 0,68(1)
	stw 30,56(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 27,44(1)
.LBB5769:
	.loc 4 445 0
	addi 26,31,4216
.LBE5769:
	.loc 4 425 0
	stw 28,48(1)
	stw 29,52(1)
.LBB5822:
	.loc 4 428 0
	lwz 4,3948(3)
.LVL233:
	mr 3,30
.LVL234:
.LEHB10:
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 429 0
	addi 3,31,3952
	mr 4,30
	bl _ZNK11idMoveState4SaveEP10idSaveGame
	.loc 4 430 0
	mr 4,30
	addi 3,31,4060
	bl _ZNK11idMoveState4SaveEP10idSaveGame
	.loc 4 431 0
	lfs 1,4168(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 432 0
	lbz 4,4172(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 433 0
	lfs 1,4176(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 434 0
	lwz 4,4180(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 435 0
	lwz 4,4184(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 437 0
	lfs 1,4188(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 438 0
	lfs 1,4192(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 439 0
	lfs 1,4196(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 440 0
	lfs 1,4200(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 441 0
	lfs 1,4204(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 442 0
	lfs 1,4208(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 443 0
	lfs 1,4212(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 445 0
	mr 4,26
	mr 3,30
	bl _ZN10idSaveGame17WriteStaticObjectERK7idClass
	.loc 4 447 0
	lfs 1,4496(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 448 0
	lfs 1,4500(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 449 0
	lfs 1,4504(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 450 0
	lfs 1,4508(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 451 0
	lwz 4,4512(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 452 0
	lfs 1,4516(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 453 0
	lfs 1,4520(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 454 0
	lfs 1,4524(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 455 0
	lfs 1,4528(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 456 0
	lfs 1,4532(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 457 0
	lfs 1,4536(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 458 0
	lfs 1,4540(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 460 0
	lbz 4,4544(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 461 0
	lbz 4,4545(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 462 0
	lbz 4,4546(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 463 0
	lbz 4,4547(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 465 0
	lbz 4,4548(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 466 0
	lwz 4,4552(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 467 0
	lwz 4,4556(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 468 0
	lfs 1,4560(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 469 0
	lfs 1,4564(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 471 0
	lwz 4,4568(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LVL235:
	.loc 4 472 0
	lwz 0,4568(31)
	cmpwi 7,0,0
	ble- 7,.L103
	li 28,0
	li 29,0
.LVL236:
.L104:
.LBB5770:
.LBB5771:
	.file 14 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/containers/List.h"
	.loc 14 573 0 discriminator 2
	lwz 4,4580(31)
.LBE5771:
.LBE5770:
	.loc 4 473 0 discriminator 2
	mr 3,30
	.loc 4 472 0 discriminator 2
	addi 29,29,1
.LVL237:
	.loc 4 473 0 discriminator 2
	add 4,4,28
	.loc 4 472 0 discriminator 2
	addi 28,28,12
	.loc 4 473 0 discriminator 2
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
.LEHE10:
.LVL238:
	.loc 4 472 0 discriminator 2
	lwz 0,4568(31)
	cmpw 7,0,29
	bgt+ 7,.L104
.LVL239:
.L103:
.LBB5772:
.LBB5773:
.LBB5774:
	.file 15 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/Str.h"
	.loc 15 357 0
	li 9,20
.LBE5774:
.LBE5773:
.LBE5772:
.LBB5781:
.LBB5782:
	.loc 11 231 0
	lis 4,.LC25@ha
.LBE5782:
.LBE5781:
.LBB5799:
.LBB5778:
.LBB5775:
	.loc 15 356 0
	li 0,0
	.loc 15 357 0
	stw 9,16(1)
.LBE5775:
.LBE5778:
.LBE5799:
.LBB5800:
.LBB5794:
	.loc 11 231 0
	addi 3,31,100
.LBE5794:
.LBE5800:
.LBB5801:
.LBB5779:
.LBB5776:
	.loc 15 358 0
	addi 9,1,20
.LBE5776:
.LBE5779:
.LBE5801:
.LBB5802:
.LBB5795:
	.loc 11 231 0
	la 4,.LC25@l(4)
.LBE5795:
.LBE5802:
.LBB5803:
.LBB5780:
.LBB5777:
	.loc 15 356 0
	stw 0,8(1)
	.loc 15 358 0
	stw 9,12(1)
	addi 27,1,8
	.loc 15 359 0
	stb 0,20(1)
.LVL240:
.LEHB11:
.LBE5777:
.LBE5780:
.LBE5803:
.LBB5804:
.LBB5796:
	.loc 11 231 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL241:
	.loc 11 232 0
	cmpwi 0,3,0
	beq- 0,.L105
.LBE5796:
	.loc 4 5138 0
	lwz 28,4(3)
.LVL242:
	addi 27,1,8
.LBB5797:
.LBB5783:
.LBB5784:
.LBB5785:
.LBB5786:
	.loc 15 350 0
	lwz 0,16(1)
.LBE5786:
.LBE5785:
.LBE5784:
	.loc 4 5138 0
	lwz 29,0(28)
.LBB5791:
	.loc 15 534 0
	addi 4,29,1
.LVL243:
.LBB5789:
.LBB5787:
	.loc 15 350 0
	cmpw 7,4,0
	bgt- 7,.L120
.LVL244:
.L106:
.LBE5787:
.LBE5789:
	.loc 15 535 0
	lwz 3,12(1)
	mr 5,29
	lwz 4,4(28)
	bl memcpy
	.loc 15 536 0
	lwz 9,12(1)
	li 0,0
	stbx 0,9,29
	.loc 15 537 0
	stw 29,8(1)
.LVL245:
.L107:
.LBE5791:
.LBE5783:
.LBE5797:
.LBE5804:
	.loc 4 478 0
	lwz 4,12(1)
	mr 3,30
	bl _ZN10idSaveGame11WriteStringEPKc
	.loc 4 479 0
	lfs 1,4592(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 480 0
	lfs 1,4596(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 481 0
	mr 3,30
	addi 4,31,4600
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 482 0
	mr 3,30
	addi 4,31,4612
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
.LVL246:
.LBB5805:
.LBB5806:
	.loc 7 595 0
	lwz 4,4624(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LVL247:
.LBE5806:
.LBE5805:
	.loc 4 484 0
	lwz 4,4632(31)
	mr 3,30
	bl _ZN10idSaveGame11WriteStringEPKc
	.loc 4 486 0
	lwz 4,4660(31)
	mr 3,30
	bl _ZN10idSaveGame16WriteSoundShaderEPK13idSoundShader
	.loc 4 487 0
	lwz 4,4664(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 488 0
	lwz 4,4668(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 489 0
	lwz 4,4672(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 490 0
	lwz 4,4676(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LVL248:
.LBB5807:
.LBB5808:
	.loc 7 595 0
	lwz 4,4680(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LBE5808:
.LBE5807:
	.loc 4 493 0
	lwz 4,4684(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 494 0
	lwz 4,4688(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 496 0
	lbz 4,4692(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
.LVL249:
.LBB5809:
.LBB5810:
	.loc 7 595 0
	lwz 4,4696(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LBE5810:
.LBE5809:
	.loc 4 498 0
	mr 3,30
	addi 4,31,4700
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 499 0
	lwz 4,4712(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 500 0
	lwz 4,4716(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 501 0
	lwz 4,4720(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 502 0
	mr 3,30
	addi 4,31,4724
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 503 0
	mr 3,30
	addi 4,31,4736
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 504 0
	mr 3,30
	addi 4,31,4748
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 505 0
	mr 3,30
	addi 4,31,4760
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 506 0
	mr 3,30
	addi 4,31,4772
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 508 0
	lwz 4,4784(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LVL250:
	.loc 4 509 0 discriminator 1
	lwz 0,4784(31)
	cmpwi 7,0,0
	ble- 7,.L108
	.loc 4 509 0 is_stmt 0
	li 28,0
	li 29,0
.LVL251:
.L109:
	.loc 4 510 0 is_stmt 1
	lwz 9,4796(31)
	slwi 0,29,2
	mr 3,30
	lwzx 4,9,0
	bl _ZN10idSaveGame10WriteJointE13jointHandle_t
.LVL252:
.LBB5811:
.LBB5812:
	.loc 14 573 0
	lwz 4,4812(31)
.LBE5812:
.LBE5811:
	.loc 4 511 0
	mr 3,30
	add 4,4,28
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 509 0
	lwz 0,4784(31)
	addi 29,29,1
.LVL253:
	addi 28,28,12
	cmpw 7,0,29
	bgt+ 7,.L109
.LVL254:
.L108:
	.loc 4 514 0
	lfs 1,4836(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 515 0
	lwz 4,4840(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 517 0
	lwz 4,4848(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LVL255:
	.loc 4 518 0 discriminator 1
	lwz 0,4848(31)
	cmpwi 7,0,0
	ble- 7,.L110
	.loc 4 518 0 is_stmt 0
	li 29,0
	li 28,0
.LVL256:
.L111:
	.loc 4 519 0 is_stmt 1
	lwz 9,4860(31)
	mr 3,30
	lwzx 4,9,29
	bl _ZN10idSaveGame13WriteParticleEPK14idDeclParticle
.LVL257:
	.loc 4 520 0
	lwz 9,4860(31)
	mr 3,30
	add 9,9,29
	lwz 4,4(9)
	bl _ZN10idSaveGame8WriteIntEi
.LVL258:
	.loc 4 521 0
	lwz 9,4860(31)
	mr 3,30
	add 9,9,29
	lwz 4,8(9)
	bl _ZN10idSaveGame10WriteJointE13jointHandle_t
	.loc 4 518 0
	lwz 0,4848(31)
	addi 28,28,1
.LVL259:
	addi 29,29,12
	cmpw 7,0,28
	bgt+ 7,.L111
.LVL260:
.L110:
	.loc 4 523 0
	lbz 4,4844(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 524 0
	lbz 4,4845(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
.LVL261:
.LBB5813:
.LBB5814:
	.loc 7 595 0
	lwz 4,5120(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
.LBE5814:
.LBE5813:
	.loc 4 527 0
	mr 3,30
	addi 4,31,5124
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 528 0
	mr 3,30
	addi 4,31,5136
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 529 0
	mr 3,30
	addi 4,31,5148
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 530 0
	mr 3,30
	addi 4,31,5160
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 4 531 0
	lbz 4,5172(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 4 533 0
	mr 3,30
	addi 4,31,5088
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 534 0
	mr 3,30
	addi 4,31,5100
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 4 536 0
	lfs 1,4816(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 537 0
	lfs 1,4820(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 538 0
	lfs 1,4824(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 539 0
	lfs 1,4828(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 4 540 0
	lwz 4,4832(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 542 0
	lwz 4,5076(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteJointE13jointHandle_t
	.loc 4 543 0
	lwz 4,5080(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 4 545 0
	lwz 4,5112(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteJointE13jointHandle_t
	.loc 4 546 0
	lwz 4,5116(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteJointE13jointHandle_t
	.loc 4 547 0
	lwz 4,4492(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteJointE13jointHandle_t
	.loc 4 549 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	xor 4,26,3
	mr 3,30
	cntlzw 4,4
	srwi 4,4,5
	bl _ZN10idSaveGame9WriteBoolEb
.LEHE11:
.LVL262:
.LBB5815:
.LBB5816:
.LBB5817:
	.loc 15 501 0
	mr 3,27
.LEHB12:
	bl _ZN5idStr8FreeDataEv
.LEHE12:
.LBE5817:
.LBE5816:
.LBE5815:
.LBE5822:
	.loc 4 550 0
	lwz 0,68(1)
	lwz 26,40(1)
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
.LVL263:
	lwz 31,60(1)
.LVL264:
	addi 1,1,64
	.cfi_remember_state
.LCFI60:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL265:
.L120:
.LCFI61:
	.cfi_restore_state
.LBB5823:
.LBB5818:
.LBB5798:
.LBB5793:
.LBB5792:
.LBB5790:
.LBB5788:
	.loc 15 351 0
	mr 3,27
.LVL266:
	li 5,0
.LEHB13:
	bl _ZN5idStr10ReAllocateEib
.LVL267:
	b .L106
.LVL268:
.L105:
.LBE5788:
.LBE5790:
.LBE5792:
.LBE5793:
	.loc 11 236 0
	addi 27,1,8
	lis 4,.LC26@ha
	mr 3,27
.LVL269:
	la 4,.LC26@l(4)
	bl _ZN5idStraSEPKc
.LEHE13:
	b .L107
.L115:
	mr 31,3
.LVL270:
.LBE5798:
.LBE5818:
.LBB5819:
.LBB5820:
.LBB5821:
	.loc 15 501 0
	mr 3,27
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB14:
	bl _Unwind_Resume
.LEHE14:
.LBE5821:
.LBE5820:
.LBE5819:
.LBE5823:
	.cfi_endproc
.LFE2858:
	.section	.gcc_except_table
.LLSDA2858:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2858-.LLSDACSB2858
.LLSDACSB2858:
	.uleb128 .LEHB10-.LFB2858
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB2858
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L115-.LFB2858
	.uleb128 0
	.uleb128 .LEHB12-.LFB2858
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2858
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L115-.LFB2858
	.uleb128 0
	.uleb128 .LEHB14-.LFB2858
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2858:
	.section	".text"
	.size	_ZNK4idAI4SaveEP10idSaveGame, .-_ZNK4idAI4SaveEP10idSaveGame
	.align 2
	.globl _ZN4idAI15InitMuzzleFlashEv
	.type	_ZN4idAI15InitMuzzleFlashEv, @function
_ZN4idAI15InitMuzzleFlashEv:
.LFB2861:
	.loc 4 960 0
	.cfi_startproc
.LVL271:
	stwu 1,-48(1)
.LCFI62:
	.cfi_def_cfa_offset 48
	mflr 0
.LBB5842:
.LBB5843:
.LBB5844:
	.loc 11 221 0
	lis 4,.LC29@ha
.LBE5844:
.LBE5843:
.LBE5842:
	.loc 4 960 0
	stw 30,32(1)
.LBB5903:
	.loc 4 964 0
	addi 30,3,100
	.cfi_offset 30, -16
	.cfi_register 65, 0
.LVL272:
.LBE5903:
	.loc 4 960 0
	stw 31,36(1)
.LBB5904:
.LBB5853:
.LBB5847:
	.loc 11 221 0
	la 4,.LC29@l(4)
.LBE5847:
.LBE5853:
.LBE5904:
	.loc 4 960 0
	mr 31,3
	.cfi_offset 31, -12
.LBB5905:
.LBB5854:
.LBB5848:
	.loc 11 221 0
	mr 3,30
.LVL273:
.LBE5848:
.LBE5854:
.LBE5905:
	.loc 4 960 0
	stw 0,52(1)
	stfd 31,40(1)
	stw 29,28(1)
.LBB5906:
.LBB5855:
.LBB5849:
	.loc 11 221 0
	.cfi_offset 29, -20
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL274:
	.loc 11 222 0
	cmpwi 0,3,0
	beq- 0,.L125
.LVL275:
.LBB5845:
	.loc 4 5138 0
	lwz 9,4(3)
.LBE5845:
.LBE5849:
.LBE5855:
	.loc 4 965 0
	lis 4,.LC30@ha
	lis 5,.LC31@ha
	la 4,.LC30@l(4)
	la 5,.LC31@l(5)
	addi 6,1,8
	mr 3,30
.LVL276:
.LBB5856:
.LBB5850:
.LBB5846:
	.loc 4 5138 0
	lwz 29,4(9)
.LVL277:
.LBE5846:
.LBE5850:
.LBE5856:
	.loc 4 965 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL278:
.LBB5857:
.LBB5858:
.LBB5859:
.LBB5860:
	.loc 11 241 0
	lis 4,.LC32@ha
	mr 3,30
	la 4,.LC32@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL279:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L126
.LVL280:
.L128:
.LBB5861:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL281:
.LBE5861:
.LBE5860:
.LBE5859:
	.loc 11 249 0
	bl atof
.LVL282:
.LBE5858:
.LBE5857:
.LBB5873:
.LBB5874:
.LBB5875:
.LBB5876:
	.loc 11 241 0
	lis 4,.LC33@ha
	mr 3,30
	la 4,.LC33@l(4)
.LBE5876:
.LBE5875:
.LBE5874:
.LBE5873:
.LBB5888:
.LBB5868:
	.loc 11 249 0
	frsp 31,1
.LVL283:
.LBE5868:
.LBE5888:
.LBB5889:
.LBB5884:
.LBB5881:
.LBB5878:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL284:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L127
.LVL285:
.L129:
.LBB5877:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL286:
.L124:
.LBE5877:
.LBE5878:
.LBE5881:
	.loc 11 249 0
	bl atof
.LVL287:
.LBE5884:
.LBE5889:
	.loc 4 967 0
	lis 11,_ZN6idMath8M_SEC2MSE@ha
.LBB5890:
.LBB5885:
	.loc 11 249 0
	frsp 1,1
.LVL288:
.LBE5885:
.LBE5890:
	.loc 4 967 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(11)
.LBB5891:
.LBB5892:
	.loc 8 825 0
	addi 9,31,5084
.LBE5892:
.LBE5891:
	.loc 4 969 0
	li 4,0
	li 5,208
	addi 3,31,4864
	.loc 4 967 0
	fmuls 0,1,0
.LVL289:
.LBB5894:
.LBB5893:
	.loc 8 825 0
	fctiwz 0,0
.LVL290:
	stfiwx 0,0,9
.LBE5893:
.LBE5894:
	.loc 4 969 0
	bl memset
	.loc 4 971 0
	li 0,1
	.loc 4 972 0
	lis 9,declManager@ha
	.loc 4 971 0
	stb 0,4922(31)
	.loc 4 972 0
	lwz 3,declManager@l(9)
	mr 4,29
	li 5,0
	li 6,0
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	.loc 4 973 0
	lwz 0,8(1)
	.loc 4 976 0
	lis 9,.LC0@ha
	.loc 4 972 0
	stw 3,5016(31)
.LVL291:
	.loc 4 973 0
	stw 0,5020(31)
.LVL292:
	.loc 4 974 0
	lwz 0,12(1)
	.loc 4 978 0
	stfs 31,4924(31)
	.loc 4 974 0
	stw 0,5024(31)
.LVL293:
	.loc 4 975 0
	lwz 0,16(1)
	.loc 4 979 0
	stfs 31,4928(31)
	.loc 4 975 0
	stw 0,5028(31)
	.loc 4 976 0
	lwz 0,.LC0@l(9)
	.loc 4 980 0
	stfs 31,4932(31)
	.loc 4 976 0
	stw 0,5032(31)
.LVL294:
	.loc 4 982 0
	li 0,-1
	stw 0,5072(31)
.LBE5906:
	.loc 4 983 0
	lwz 0,52(1)
	lwz 29,28(1)
.LVL295:
	mtlr 0
	lwz 30,32(1)
.LVL296:
	lwz 31,36(1)
.LVL297:
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI63:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL298:
.L125:
.LCFI64:
	.cfi_restore_state
.LBB5907:
	.loc 4 965 0
	lis 4,.LC30@ha
	lis 5,.LC31@ha
	la 4,.LC30@l(4)
	la 5,.LC31@l(5)
	addi 6,1,8
	mr 3,30
.LVL299:
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LBB5895:
.LBB5869:
.LBB5865:
.LBB5862:
	.loc 11 241 0
	lis 4,.LC32@ha
	mr 3,30
	la 4,.LC32@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE5862:
.LBE5865:
.LBE5869:
.LBE5895:
.LBB5896:
.LBB5851:
	.loc 11 226 0
	lis 29,.LC27@ha
.LBE5851:
.LBE5896:
.LBB5897:
.LBB5870:
.LBB5866:
.LBB5863:
	.loc 11 242 0
	cmpwi 0,3,0
.LBE5863:
.LBE5866:
.LBE5870:
.LBE5897:
.LBB5898:
.LBB5852:
	.loc 11 226 0
	la 29,.LC27@l(29)
.LVL300:
.LBE5852:
.LBE5898:
.LBB5899:
.LBB5871:
.LBB5867:
.LBB5864:
	.loc 11 242 0
	bne+ 0,.L128
.L126:
	.loc 11 245 0
	lis 3,.LC7@ha
	la 3,.LC7@l(3)
.LBE5864:
.LBE5867:
	.loc 11 249 0
	bl atof
.LBE5871:
.LBE5899:
.LBB5900:
.LBB5886:
.LBB5882:
.LBB5879:
	.loc 11 241 0
	lis 4,.LC33@ha
	mr 3,30
	la 4,.LC33@l(4)
.LBE5879:
.LBE5882:
.LBE5886:
.LBE5900:
.LBB5901:
.LBB5872:
	.loc 11 249 0
	frsp 31,1
.LVL301:
.LBE5872:
.LBE5901:
.LBB5902:
.LBB5887:
.LBB5883:
.LBB5880:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL302:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L129
.LVL303:
.L127:
	.loc 11 245 0
	lis 3,.LC28@ha
.LVL304:
	la 3,.LC28@l(3)
	b .L124
.LBE5880:
.LBE5883:
.LBE5887:
.LBE5902:
.LBE5907:
	.cfi_endproc
.LFE2861:
	.size	_ZN4idAI15InitMuzzleFlashEv, .-_ZN4idAI15InitMuzzleFlashEv
	.align 2
	.globl _ZN4idAI6List_fERK9idCmdArgs
	.type	_ZN4idAI6List_fERK9idCmdArgs, @function
_ZN4idAI6List_fERK9idCmdArgs:
.LFB2862:
	.loc 4 990 0
	.cfi_startproc
.LVL305:
	stwu 1,-48(1)
.LCFI65:
	.cfi_def_cfa_offset 48
	mflr 0
.LBB5908:
	.loc 4 998 0
	lis 4,.LC35@ha
	lis 5,.LC36@ha
.LBE5908:
	.loc 4 990 0
	stw 27,28(1)
.LBB5917:
	.loc 4 998 0
	lis 27,gameLocal@ha
	.cfi_offset 27, -20
	.cfi_register 65, 0
	la 27,gameLocal@l(27)
	lis 6,.LC37@ha
	lis 7,.LC38@ha
	mr 3,27
.LVL306:
	la 4,.LC35@l(4)
	la 5,.LC36@l(5)
	la 6,.LC37@l(6)
	la 7,.LC38@l(7)
.LBE5917:
	.loc 4 990 0
	stw 0,52(1)
	stw 25,20(1)
.LBB5918:
	.loc 4 1009 0
	lis 25,.LC34@ha
	.cfi_offset 25, -28
	.cfi_offset 65, 4
.LBE5918:
	.loc 4 990 0
	stw 26,24(1)
.LBB5919:
	.loc 4 1012 0
	lis 26,.LC40@ha
	.cfi_offset 26, -24
.LBE5919:
	.loc 4 990 0
	stw 28,32(1)
.LBB5920:
	.loc 4 1012 0
	la 26,.LC40@l(26)
.LBE5920:
	.loc 4 990 0
	stw 29,36(1)
.LBB5921:
.LBB5909:
	.loc 4 5138 0
	lis 28,_ZN4idAI4TypeE@ha
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LBE5909:
.LBE5921:
	.loc 4 990 0
	stw 30,40(1)
.LBB5922:
	.loc 4 996 0
	li 29,0
.LBE5922:
	.loc 4 990 0
	stw 31,44(1)
.LBB5923:
	.loc 4 999 0
	addi 30,27,528
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LBE5923:
	.loc 4 990 0
	stw 23,12(1)
.LBB5924:
	.loc 4 1000 0
	li 31,0
.LBE5924:
	.loc 4 990 0
	stw 24,16(1)
.LBB5925:
	.loc 4 998 0
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	.loc 4 999 0
	lis 4,.LC39@ha
	mr 3,27
	la 4,.LC39@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL307:
	b .L134
.LVL308:
.L135:
	.loc 4 1007 0
	bl _ZNK10function_t4NameEv
	mr 24,3
.LVL309:
.L136:
	.loc 4 1012 0
	mr 3,23
	.loc 4 1013 0
	addi 29,29,1
	.loc 4 1012 0
	bl _ZNK8idEntity16GetEntityDefNameEv
	lwz 7,72(23)
	lbz 9,4544(23)
	mr 6,3
	mr 4,26
	mr 3,27
	mr 5,31
	mr 8,24
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL310:
.L133:
	.loc 4 1000 0
	cmpwi 7,31,4095
	addi 31,31,1
.LVL311:
	beq- 7,.L138
.LVL312:
.L134:
	.loc 4 1001 0
	lwzu 23,4(30)
.LVL313:
	.loc 4 1002 0
	cmpwi 7,23,0
.LBB5915:
.LBB5910:
	.file 16 "d:/Data/Nintendo/DoomGX/src/game/ai/../gamesys/Class.h"
	.loc 16 340 0
	mr 3,23
.LBE5910:
.LBE5915:
	.loc 4 1002 0
	beq- 7,.L133
.LVL314:
.LBB5916:
.LBB5913:
	.loc 16 340 0 discriminator 2
	lwz 9,0(23)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL315:
.LBE5913:
	.loc 4 5138 0 discriminator 2
	la 9,_ZN4idAI4TypeE@l(28)
	lwz 0,56(3)
.LBB5914:
.LBB5911:
.LBB5912:
	.loc 16 311 0 discriminator 2
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L133
	.loc 16 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L133
.LBE5912:
.LBE5911:
.LBE5914:
.LBE5916:
	.loc 4 1006 0 is_stmt 1
	lwz 3,2444(23)
.LVL316:
	cmpwi 7,3,0
	bne+ 7,.L135
	.loc 4 1009 0
	la 24,.LC34@l(25)
	b .L136
.LVL317:
.L138:
	.loc 4 1016 0
	lis 4,.LC41@ha
	mr 3,27
	mr 5,29
	la 4,.LC41@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LBE5925:
	.loc 4 1017 0
	lwz 0,52(1)
	lwz 23,12(1)
.LVL318:
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
.LVL319:
	lwz 30,40(1)
	lwz 31,44(1)
.LVL320:
	addi 1,1,48
.LCFI66:
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
.LFE2862:
	.size	_ZN4idAI6List_fERK9idCmdArgs, .-_ZN4idAI6List_fERK9idCmdArgs
	.align 2
	.globl _ZN4idAI12DormantBeginEv
	.type	_ZN4idAI12DormantBeginEv, @function
_ZN4idAI12DormantBeginEv:
.LFB2863:
	.loc 4 1026 0
	.cfi_startproc
.LVL321:
	mflr 0
	stwu 1,-8(1)
.LCFI67:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB5926:
.LBB5927:
.LBB5928:
	.loc 4 5138 0
	lwz 0,4848(3)
	.cfi_offset 65, 4
.LBE5928:
	.loc 4 1029 0
	cmpwi 7,0,0
	beq- 7,.L140
.LVL322:
.LBB5929:
	.loc 4 1030 0 discriminator 1
	ble- 7,.L140
	.loc 4 1030 0 is_stmt 0
	li 11,0
	li 9,0
	.loc 4 1031 0 is_stmt 1
	li 8,0
.LVL323:
.L141:
	.loc 4 1031 0 is_stmt 0 discriminator 2
	lwz 10,4860(3)
	.loc 4 1030 0 is_stmt 1 discriminator 2
	addi 9,9,1
.LVL324:
	.loc 4 1031 0 discriminator 2
	add 10,10,11
	.loc 4 1030 0 discriminator 2
	addi 11,11,12
	.loc 4 1031 0 discriminator 2
	stw 8,4(10)
	.loc 4 1030 0 discriminator 2
	lwz 0,4848(3)
	cmpw 7,0,9
	bgt+ 7,.L141
.LVL325:
.L140:
.LBE5929:
.LBE5927:
	.loc 4 1035 0
	lwz 9,2304(3)
	addi 0,3,2304
.LVL326:
	cmpw 7,0,9
	beq- 7,.L142
.LVL327:
.LBB5930:
.LBB5931:
	.file 17 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/containers/LinkList.h"
	.loc 17 176 0
	lwz 9,2312(3)
	lwz 11,2308(3)
	stw 11,4(9)
	.loc 17 177 0
	lwz 9,2308(3)
	lwz 11,2312(3)
	stw 11,8(9)
	.loc 17 179 0
	stw 0,2308(3)
	.loc 17 180 0
	stw 0,2312(3)
	.loc 17 181 0
	stw 0,2304(3)
.LVL328:
.L142:
.LBE5931:
.LBE5930:
	.loc 4 1039 0
	bl _ZN8idEntity12DormantBeginEv
.LVL329:
.LBE5926:
	.loc 4 1040 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI68:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2863:
	.size	_ZN4idAI12DormantBeginEv, .-_ZN4idAI12DormantBeginEv
	.align 2
	.globl _ZN4idAI10DormantEndEv
	.type	_ZN4idAI10DormantEndEv, @function
_ZN4idAI10DormantEndEv:
.LFB2864:
	.loc 4 1049 0
	.cfi_startproc
.LVL330:
	mflr 0
	stwu 1,-8(1)
.LCFI69:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB5932:
.LBB5933:
.LBB5934:
	.loc 7 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
.LBE5934:
.LBE5933:
.LBE5932:
	.loc 4 1049 0
	stw 0,12(1)
.LBB5954:
.LBB5937:
.LBB5935:
	.loc 7 634 0
	lwz 0,5120(3)
	.cfi_offset 65, 4
	rlwinm 11,0,0,20,31
.LVL331:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L149
.LVL332:
.L145:
.LBE5935:
.LBE5937:
.LBB5938:
.LBB5939:
.LBB5940:
	.loc 4 5138 0
	lwz 0,4848(3)
.LBE5940:
.LBE5939:
.LBE5938:
.LBB5949:
	.loc 4 1055 0
	cmpwi 7,0,0
	beq- 7,.L146
.LVL333:
.LBB5950:
	.loc 4 1056 0 discriminator 1
	ble- 7,.L146
	lis 8,gameLocal+2424832@ha
	.loc 4 1056 0 is_stmt 0
	li 11,0
	li 9,0
	la 8,gameLocal+2424832@l(8)
.LVL334:
.L147:
	.loc 4 1057 0 is_stmt 1 discriminator 2
	lwz 10,4860(3)
	.loc 4 1056 0 discriminator 2
	addi 9,9,1
.LVL335:
	.loc 4 1057 0 discriminator 2
	lwz 0,2004(8)
	add 10,10,11
	.loc 4 1056 0 discriminator 2
	addi 11,11,12
	.loc 4 1057 0 discriminator 2
	stw 0,4(10)
	.loc 4 1056 0 discriminator 2
	lwz 0,4848(3)
	cmpw 7,0,9
	bgt+ 7,.L147
.LVL336:
.L146:
.LBE5950:
.LBE5949:
	.loc 4 1061 0
	bl _ZN8idEntity10DormantEndEv
.LVL337:
.LBE5954:
	.loc 4 1062 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI70:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL338:
.L149:
.LCFI71:
	.cfi_restore_state
.LBB5955:
.LBB5951:
.LBB5936:
	.loc 7 636 0
	addi 11,11,132
.LVL339:
	slwi 11,11,2
.LVL340:
	add 9,9,11
	lwz 11,4(9)
.LBE5936:
.LBE5951:
	.loc 4 1050 0
	cmpwi 7,11,0
	beq- 7,.L145
	.loc 4 1050 0 is_stmt 0 discriminator 1
	lwz 9,2304(3)
	addi 0,3,2304
.LVL341:
	cmpw 7,0,9
	bne+ 7,.L145
.LVL342:
.LBB5952:
.LBB5947:
.LBB5945:
.LBB5941:
.LBB5942:
	.loc 17 176 0 is_stmt 1
	lwz 10,2312(3)
	lwz 8,2308(3)
.LBE5942:
.LBE5941:
.LBE5945:
.LBE5947:
.LBE5952:
	.loc 4 5138 0
	lwz 9,2320(11)
.LVL343:
.LBB5953:
.LBB5948:
.LBB5946:
.LBB5944:
.LBB5943:
	.loc 17 176 0
	stw 8,4(10)
	.loc 17 177 0
	lwz 10,2312(3)
	lwz 11,2308(3)
.LVL344:
	stw 10,8(11)
	.loc 17 180 0
	stw 0,2312(3)
	.loc 17 181 0
	stw 0,2304(3)
.LBE5943:
.LBE5944:
	.loc 17 196 0
	stw 9,2308(3)
	.loc 17 197 0
	lwz 11,8(9)
	stw 11,2312(3)
	.loc 17 198 0
	stw 0,8(9)
	.loc 17 199 0
	lwz 11,2312(3)
	stw 0,4(11)
	.loc 17 200 0
	lwz 0,0(9)
	stw 0,2304(3)
	b .L145
.LBE5946:
.LBE5948:
.LBE5953:
.LBE5955:
	.cfi_endproc
.LFE2864:
	.size	_ZN4idAI10DormantEndEv, .-_ZN4idAI10DormantEndEv
	.align 2
	.globl _ZN4idAI19LinkScriptVariablesEv
	.type	_ZN4idAI19LinkScriptVariablesEv, @function
_ZN4idAI19LinkScriptVariablesEv:
.LFB2866:
	.loc 4 1187 0
	.cfi_startproc
.LVL345:
	stwu 1,-24(1)
.LCFI72:
	.cfi_def_cfa_offset 24
	mflr 0
.LBB6026:
.LBB6027:
	.file 18 "d:/Data/Nintendo/DoomGX/src/game/ai/../script/Script_Program.h"
	.loc 18 225 0
	li 5,14
.LBE6027:
.LBE6026:
	.loc 4 1187 0
	stw 29,12(1)
.LBB6042:
.LBB6034:
	.loc 18 225 0
	lis 29,.LC42@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBE6034:
.LBE6042:
	.loc 4 1187 0
	stw 31,20(1)
.LBB6043:
.LBB6035:
	.loc 18 225 0
	la 29,.LC42@l(29)
.LBE6035:
.LBE6043:
	.loc 4 1188 0
	addi 31,3,144
	.cfi_offset 31, -4
	.loc 4 1187 0
	stw 30,16(1)
.LBB6044:
.LBB6036:
	.loc 18 225 0
	mr 4,29
.LBE6036:
.LBE6044:
	.loc 4 1187 0
	mr 30,3
	.cfi_offset 30, -8
.LVL346:
.LBB6045:
.LBB6037:
	.loc 18 225 0
	mr 3,31
.LVL347:
.LBE6037:
.LBE6045:
	.loc 4 1187 0
	stw 0,28(1)
.LBB6046:
.LBB6038:
	.loc 18 225 0
	.cfi_offset 65, 4
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5176(30)
	.loc 18 226 0
	beq- 7,.L169
.LVL348:
.LBE6038:
.LBE6046:
.LBB6047:
.LBB6048:
	.loc 18 225 0
	lis 29,.LC44@ha
	mr 3,31
	la 29,.LC44@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5180(30)
	.loc 18 226 0
	beq- 7,.L170
.LVL349:
.L152:
.LBE6048:
.LBE6047:
.LBB6060:
.LBB6061:
	.loc 18 225 0
	lis 29,.LC45@ha
	mr 3,31
	la 29,.LC45@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5184(30)
	.loc 18 226 0
	beq- 7,.L171
.LVL350:
.L153:
.LBE6061:
.LBE6060:
.LBB6073:
.LBB6074:
	.loc 18 225 0
	lis 29,.LC46@ha
	mr 3,31
	la 29,.LC46@l(29)
	li 5,4
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5188(30)
	.loc 18 226 0
	beq- 7,.L172
.LVL351:
.L154:
.LBE6074:
.LBE6073:
.LBB6080:
.LBB6081:
	.loc 18 225 0
	lis 29,.LC47@ha
	mr 3,31
	la 29,.LC47@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5192(30)
	.loc 18 226 0
	beq- 7,.L173
.LVL352:
.L155:
.LBE6081:
.LBE6080:
.LBB6093:
.LBB6094:
	.loc 18 225 0
	lis 29,.LC48@ha
	mr 3,31
	la 29,.LC48@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5196(30)
	.loc 18 226 0
	beq- 7,.L174
.LVL353:
.L156:
.LBE6094:
.LBE6093:
.LBB6106:
.LBB6107:
	.loc 18 225 0
	lis 29,.LC49@ha
	mr 3,31
	la 29,.LC49@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5200(30)
	.loc 18 226 0
	beq- 7,.L175
.LVL354:
.L157:
.LBE6107:
.LBE6106:
.LBB6119:
.LBB6120:
	.loc 18 225 0
	lis 29,.LC50@ha
	mr 3,31
	la 29,.LC50@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5204(30)
	.loc 18 226 0
	beq- 7,.L176
.LVL355:
.L158:
.LBE6120:
.LBE6119:
.LBB6132:
.LBB6133:
	.loc 18 225 0
	lis 29,.LC51@ha
	mr 3,31
	la 29,.LC51@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5208(30)
	.loc 18 226 0
	beq- 7,.L177
.LVL356:
.L159:
.LBE6133:
.LBE6132:
.LBB6145:
.LBB6146:
	.loc 18 225 0
	lis 29,.LC52@ha
	mr 3,31
	la 29,.LC52@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5212(30)
	.loc 18 226 0
	beq- 7,.L178
.LVL357:
.L160:
.LBE6146:
.LBE6145:
.LBB6158:
.LBB6159:
	.loc 18 225 0
	lis 29,.LC53@ha
	mr 3,31
	la 29,.LC53@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5216(30)
	.loc 18 226 0
	beq- 7,.L179
.LVL358:
.L161:
.LBE6159:
.LBE6158:
.LBB6171:
.LBB6172:
	.loc 18 225 0
	lis 29,.LC54@ha
	mr 3,31
	la 29,.LC54@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5220(30)
	.loc 18 226 0
	beq- 7,.L180
.LVL359:
.L162:
.LBE6172:
.LBE6171:
.LBB6184:
.LBB6185:
	.loc 18 225 0
	lis 29,.LC55@ha
	mr 3,31
	la 29,.LC55@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5224(30)
	.loc 18 226 0
	beq- 7,.L181
.LVL360:
.L163:
.LBE6185:
.LBE6184:
.LBB6197:
.LBB6198:
	.loc 18 225 0
	lis 29,.LC56@ha
	mr 3,31
	la 29,.LC56@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5232(30)
	.loc 18 226 0
	beq- 7,.L182
.LVL361:
.L164:
.LBE6198:
.LBE6197:
.LBB6210:
.LBB6211:
	.loc 18 225 0
	lis 29,.LC57@ha
	mr 3,31
	la 29,.LC57@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5240(30)
	.loc 18 226 0
	beq- 7,.L183
.LVL362:
.L165:
.LBE6211:
.LBE6210:
.LBB6223:
.LBB6224:
	.loc 18 225 0
	lis 29,.LC58@ha
	mr 3,31
	la 29,.LC58@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5244(30)
	.loc 18 226 0
	beq- 7,.L184
.LVL363:
.L166:
.LBE6224:
.LBE6223:
.LBB6236:
.LBB6237:
	.loc 18 225 0
	lis 29,.LC59@ha
	mr 3,31
	la 29,.LC59@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5236(30)
	.loc 18 226 0
	beq- 7,.L185
.LVL364:
.L167:
.LBE6237:
.LBE6236:
.LBB6249:
.LBB6250:
	.loc 18 225 0
	lis 29,.LC60@ha
	mr 3,31
	la 29,.LC60@l(29)
	li 5,14
	mr 4,29
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5248(30)
	.loc 18 226 0
	beq- 7,.L186
.LVL365:
.L150:
.LBE6250:
.LBE6249:
	.loc 4 1206 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL366:
	lwz 31,20(1)
.LVL367:
	addi 1,1,24
	.cfi_remember_state
.LCFI73:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL368:
.L169:
.LCFI74:
	.cfi_restore_state
.LBB6256:
.LBB6039:
.LBB6028:
.LBB6029:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6029:
.LBE6028:
.LBE6039:
.LBE6256:
.LBB6257:
.LBB6055:
	.loc 18 225 0
	lis 29,.LC44@ha
.LBE6055:
.LBE6257:
.LBB6258:
.LBB6040:
.LBB6032:
.LBB6030:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6030:
.LBE6032:
.LBE6040:
.LBE6258:
.LBB6259:
.LBB6056:
	.loc 18 225 0
	la 29,.LC44@l(29)
.LBE6056:
.LBE6259:
.LBB6260:
.LBB6041:
.LBB6033:
.LBB6031:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL369:
.LBE6031:
.LBE6033:
.LBE6041:
.LBE6260:
.LBB6261:
.LBB6057:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5180(30)
	.loc 18 226 0
	bne+ 7,.L152
.LVL370:
.L170:
.LBB6049:
.LBB6050:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6050:
.LBE6049:
.LBE6057:
.LBE6261:
.LBB6262:
.LBB6068:
	.loc 18 225 0
	lis 29,.LC45@ha
.LBE6068:
.LBE6262:
.LBB6263:
.LBB6058:
.LBB6053:
.LBB6051:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6051:
.LBE6053:
.LBE6058:
.LBE6263:
.LBB6264:
.LBB6069:
	.loc 18 225 0
	la 29,.LC45@l(29)
.LBE6069:
.LBE6264:
.LBB6265:
.LBB6059:
.LBB6054:
.LBB6052:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL371:
.LBE6052:
.LBE6054:
.LBE6059:
.LBE6265:
.LBB6266:
.LBB6070:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5184(30)
	.loc 18 226 0
	bne+ 7,.L153
.LVL372:
.L171:
.LBB6062:
.LBB6063:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6063:
.LBE6062:
.LBE6070:
.LBE6266:
.LBB6267:
.LBB6075:
	.loc 18 225 0
	lis 29,.LC46@ha
.LBE6075:
.LBE6267:
.LBB6268:
.LBB6071:
.LBB6066:
.LBB6064:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6064:
.LBE6066:
.LBE6071:
.LBE6268:
.LBB6269:
.LBB6076:
	.loc 18 225 0
	la 29,.LC46@l(29)
.LBE6076:
.LBE6269:
.LBB6270:
.LBB6072:
.LBB6067:
.LBB6065:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL373:
.LBE6065:
.LBE6067:
.LBE6072:
.LBE6270:
.LBB6271:
.LBB6077:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,4
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5188(30)
	.loc 18 226 0
	bne+ 7,.L154
.LVL374:
.L172:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6077:
.LBE6271:
.LBB6272:
.LBB6088:
	.loc 18 225 0
	lis 29,.LC47@ha
.LBE6088:
.LBE6272:
.LBB6273:
.LBB6078:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6078:
.LBE6273:
.LBB6274:
.LBB6089:
	.loc 18 225 0
	la 29,.LC47@l(29)
.LBE6089:
.LBE6274:
.LBB6275:
.LBB6079:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL375:
.LBE6079:
.LBE6275:
.LBB6276:
.LBB6090:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5192(30)
	.loc 18 226 0
	bne+ 7,.L155
.LVL376:
.L173:
.LBB6082:
.LBB6083:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6083:
.LBE6082:
.LBE6090:
.LBE6276:
.LBB6277:
.LBB6101:
	.loc 18 225 0
	lis 29,.LC48@ha
.LBE6101:
.LBE6277:
.LBB6278:
.LBB6091:
.LBB6086:
.LBB6084:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6084:
.LBE6086:
.LBE6091:
.LBE6278:
.LBB6279:
.LBB6102:
	.loc 18 225 0
	la 29,.LC48@l(29)
.LBE6102:
.LBE6279:
.LBB6280:
.LBB6092:
.LBB6087:
.LBB6085:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL377:
.LBE6085:
.LBE6087:
.LBE6092:
.LBE6280:
.LBB6281:
.LBB6103:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5196(30)
	.loc 18 226 0
	bne+ 7,.L156
.LVL378:
.L174:
.LBB6095:
.LBB6096:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6096:
.LBE6095:
.LBE6103:
.LBE6281:
.LBB6282:
.LBB6114:
	.loc 18 225 0
	lis 29,.LC49@ha
.LBE6114:
.LBE6282:
.LBB6283:
.LBB6104:
.LBB6099:
.LBB6097:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6097:
.LBE6099:
.LBE6104:
.LBE6283:
.LBB6284:
.LBB6115:
	.loc 18 225 0
	la 29,.LC49@l(29)
.LBE6115:
.LBE6284:
.LBB6285:
.LBB6105:
.LBB6100:
.LBB6098:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL379:
.LBE6098:
.LBE6100:
.LBE6105:
.LBE6285:
.LBB6286:
.LBB6116:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5200(30)
	.loc 18 226 0
	bne+ 7,.L157
.LVL380:
.L175:
.LBB6108:
.LBB6109:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6109:
.LBE6108:
.LBE6116:
.LBE6286:
.LBB6287:
.LBB6127:
	.loc 18 225 0
	lis 29,.LC50@ha
.LBE6127:
.LBE6287:
.LBB6288:
.LBB6117:
.LBB6112:
.LBB6110:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6110:
.LBE6112:
.LBE6117:
.LBE6288:
.LBB6289:
.LBB6128:
	.loc 18 225 0
	la 29,.LC50@l(29)
.LBE6128:
.LBE6289:
.LBB6290:
.LBB6118:
.LBB6113:
.LBB6111:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL381:
.LBE6111:
.LBE6113:
.LBE6118:
.LBE6290:
.LBB6291:
.LBB6129:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5204(30)
	.loc 18 226 0
	bne+ 7,.L158
.LVL382:
.L176:
.LBB6121:
.LBB6122:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6122:
.LBE6121:
.LBE6129:
.LBE6291:
.LBB6292:
.LBB6140:
	.loc 18 225 0
	lis 29,.LC51@ha
.LBE6140:
.LBE6292:
.LBB6293:
.LBB6130:
.LBB6125:
.LBB6123:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6123:
.LBE6125:
.LBE6130:
.LBE6293:
.LBB6294:
.LBB6141:
	.loc 18 225 0
	la 29,.LC51@l(29)
.LBE6141:
.LBE6294:
.LBB6295:
.LBB6131:
.LBB6126:
.LBB6124:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL383:
.LBE6124:
.LBE6126:
.LBE6131:
.LBE6295:
.LBB6296:
.LBB6142:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5208(30)
	.loc 18 226 0
	bne+ 7,.L159
.LVL384:
.L177:
.LBB6134:
.LBB6135:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6135:
.LBE6134:
.LBE6142:
.LBE6296:
.LBB6297:
.LBB6153:
	.loc 18 225 0
	lis 29,.LC52@ha
.LBE6153:
.LBE6297:
.LBB6298:
.LBB6143:
.LBB6138:
.LBB6136:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6136:
.LBE6138:
.LBE6143:
.LBE6298:
.LBB6299:
.LBB6154:
	.loc 18 225 0
	la 29,.LC52@l(29)
.LBE6154:
.LBE6299:
.LBB6300:
.LBB6144:
.LBB6139:
.LBB6137:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL385:
.LBE6137:
.LBE6139:
.LBE6144:
.LBE6300:
.LBB6301:
.LBB6155:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5212(30)
	.loc 18 226 0
	bne+ 7,.L160
.LVL386:
.L178:
.LBB6147:
.LBB6148:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6148:
.LBE6147:
.LBE6155:
.LBE6301:
.LBB6302:
.LBB6166:
	.loc 18 225 0
	lis 29,.LC53@ha
.LBE6166:
.LBE6302:
.LBB6303:
.LBB6156:
.LBB6151:
.LBB6149:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6149:
.LBE6151:
.LBE6156:
.LBE6303:
.LBB6304:
.LBB6167:
	.loc 18 225 0
	la 29,.LC53@l(29)
.LBE6167:
.LBE6304:
.LBB6305:
.LBB6157:
.LBB6152:
.LBB6150:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL387:
.LBE6150:
.LBE6152:
.LBE6157:
.LBE6305:
.LBB6306:
.LBB6168:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5216(30)
	.loc 18 226 0
	bne+ 7,.L161
.LVL388:
.L179:
.LBB6160:
.LBB6161:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6161:
.LBE6160:
.LBE6168:
.LBE6306:
.LBB6307:
.LBB6179:
	.loc 18 225 0
	lis 29,.LC54@ha
.LBE6179:
.LBE6307:
.LBB6308:
.LBB6169:
.LBB6164:
.LBB6162:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6162:
.LBE6164:
.LBE6169:
.LBE6308:
.LBB6309:
.LBB6180:
	.loc 18 225 0
	la 29,.LC54@l(29)
.LBE6180:
.LBE6309:
.LBB6310:
.LBB6170:
.LBB6165:
.LBB6163:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL389:
.LBE6163:
.LBE6165:
.LBE6170:
.LBE6310:
.LBB6311:
.LBB6181:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5220(30)
	.loc 18 226 0
	bne+ 7,.L162
.LVL390:
.L180:
.LBB6173:
.LBB6174:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6174:
.LBE6173:
.LBE6181:
.LBE6311:
.LBB6312:
.LBB6192:
	.loc 18 225 0
	lis 29,.LC55@ha
.LBE6192:
.LBE6312:
.LBB6313:
.LBB6182:
.LBB6177:
.LBB6175:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6175:
.LBE6177:
.LBE6182:
.LBE6313:
.LBB6314:
.LBB6193:
	.loc 18 225 0
	la 29,.LC55@l(29)
.LBE6193:
.LBE6314:
.LBB6315:
.LBB6183:
.LBB6178:
.LBB6176:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL391:
.LBE6176:
.LBE6178:
.LBE6183:
.LBE6315:
.LBB6316:
.LBB6194:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5224(30)
	.loc 18 226 0
	bne+ 7,.L163
.LVL392:
.L181:
.LBB6186:
.LBB6187:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6187:
.LBE6186:
.LBE6194:
.LBE6316:
.LBB6317:
.LBB6205:
	.loc 18 225 0
	lis 29,.LC56@ha
.LBE6205:
.LBE6317:
.LBB6318:
.LBB6195:
.LBB6190:
.LBB6188:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6188:
.LBE6190:
.LBE6195:
.LBE6318:
.LBB6319:
.LBB6206:
	.loc 18 225 0
	la 29,.LC56@l(29)
.LBE6206:
.LBE6319:
.LBB6320:
.LBB6196:
.LBB6191:
.LBB6189:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL393:
.LBE6189:
.LBE6191:
.LBE6196:
.LBE6320:
.LBB6321:
.LBB6207:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5232(30)
	.loc 18 226 0
	bne+ 7,.L164
.LVL394:
.L182:
.LBB6199:
.LBB6200:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6200:
.LBE6199:
.LBE6207:
.LBE6321:
.LBB6322:
.LBB6218:
	.loc 18 225 0
	lis 29,.LC57@ha
.LBE6218:
.LBE6322:
.LBB6323:
.LBB6208:
.LBB6203:
.LBB6201:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6201:
.LBE6203:
.LBE6208:
.LBE6323:
.LBB6324:
.LBB6219:
	.loc 18 225 0
	la 29,.LC57@l(29)
.LBE6219:
.LBE6324:
.LBB6325:
.LBB6209:
.LBB6204:
.LBB6202:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL395:
.LBE6202:
.LBE6204:
.LBE6209:
.LBE6325:
.LBB6326:
.LBB6220:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5240(30)
	.loc 18 226 0
	bne+ 7,.L165
.LVL396:
.L183:
.LBB6212:
.LBB6213:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6213:
.LBE6212:
.LBE6220:
.LBE6326:
.LBB6327:
.LBB6231:
	.loc 18 225 0
	lis 29,.LC58@ha
.LBE6231:
.LBE6327:
.LBB6328:
.LBB6221:
.LBB6216:
.LBB6214:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6214:
.LBE6216:
.LBE6221:
.LBE6328:
.LBB6329:
.LBB6232:
	.loc 18 225 0
	la 29,.LC58@l(29)
.LBE6232:
.LBE6329:
.LBB6330:
.LBB6222:
.LBB6217:
.LBB6215:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL397:
.LBE6215:
.LBE6217:
.LBE6222:
.LBE6330:
.LBB6331:
.LBB6233:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5244(30)
	.loc 18 226 0
	bne+ 7,.L166
.LVL398:
.L184:
.LBB6225:
.LBB6226:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6226:
.LBE6225:
.LBE6233:
.LBE6331:
.LBB6332:
.LBB6244:
	.loc 18 225 0
	lis 29,.LC59@ha
.LBE6244:
.LBE6332:
.LBB6333:
.LBB6234:
.LBB6229:
.LBB6227:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6227:
.LBE6229:
.LBE6234:
.LBE6333:
.LBB6334:
.LBB6245:
	.loc 18 225 0
	la 29,.LC59@l(29)
.LBE6245:
.LBE6334:
.LBB6335:
.LBB6235:
.LBB6230:
.LBB6228:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL399:
.LBE6228:
.LBE6230:
.LBE6235:
.LBE6335:
.LBB6336:
.LBB6246:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5236(30)
	.loc 18 226 0
	bne+ 7,.L167
.LVL400:
.L185:
.LBB6238:
.LBB6239:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
.LBE6239:
.LBE6238:
.LBE6246:
.LBE6336:
.LBB6337:
.LBB6253:
	.loc 18 225 0
	lis 29,.LC60@ha
.LBE6253:
.LBE6337:
.LBB6338:
.LBB6247:
.LBB6242:
.LBB6240:
	.loc 18 227 0
	lis 3,.LC43@ha
.LBE6240:
.LBE6242:
.LBE6247:
.LBE6338:
.LBB6339:
.LBB6254:
	.loc 18 225 0
	la 29,.LC60@l(29)
.LBE6254:
.LBE6339:
.LBB6340:
.LBB6248:
.LBB6243:
.LBB6241:
	.loc 18 227 0
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LVL401:
.LBE6241:
.LBE6243:
.LBE6248:
.LBE6340:
.LBB6341:
.LBB6255:
	.loc 18 225 0
	mr 3,31
	mr 4,29
	li 5,14
	bl _ZNK14idScriptObject11GetVariableEPKc7etype_t
	.loc 18 226 0
	cmpwi 7,3,0
	.loc 18 225 0
	stw 3,5248(30)
	.loc 18 226 0
	bne+ 7,.L150
.LVL402:
.L186:
.LBB6251:
.LBB6252:
	.loc 18 227 0
	mr 3,31
	bl _ZNK14idScriptObject11GetTypeNameEv
	mr 4,29
	mr 5,3
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl _Z9gameErrorPKcz
.LBE6252:
.LBE6251:
.LBE6255:
.LBE6341:
	.loc 4 1206 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL403:
	lwz 31,20(1)
.LVL404:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI75:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2866:
	.size	_ZN4idAI19LinkScriptVariablesEv, .-_ZN4idAI19LinkScriptVariablesEv
	.align 2
	.globl _ZN4idAI14UpdateAIScriptEv
	.type	_ZN4idAI14UpdateAIScriptEv, @function
_ZN4idAI14UpdateAIScriptEv:
.LFB2867:
	.loc 4 1213 0
	.cfi_startproc
.LVL405:
	stwu 1,-16(1)
.LCFI76:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 4 1214 0
	.cfi_offset 65, 4
	bl _ZN7idActor12UpdateScriptEv
.LVL406:
.LBB6342:
.LBB6343:
	.loc 18 237 0
	lwz 9,5244(31)
	cmpwi 7,9,0
	beq- 7,.L188
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L188:
.LBE6343:
.LBE6342:
	.loc 4 1219 0
	lbz 0,4545(31)
	cmpwi 7,0,0
	beq- 7,.L192
.L189:
	.loc 4 1221 0 discriminator 4
	mr 3,31
	bl _ZN7idActor15UpdateAnimStateEv
	.loc 4 1223 0 discriminator 4
	lwz 0,20(1)
	lwz 31,12(1)
.LVL407:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI77:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL408:
.L192:
.LCFI78:
	.cfi_restore_state
	.loc 4 1219 0 discriminator 2
	mr 3,31
	bl _ZNK8idEntity8IsHiddenEv
	cmpwi 7,3,0
	beq- 7,.L189
	.loc 4 1223 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL409:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI79:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2867:
	.size	_ZN4idAI14UpdateAIScriptEv, .-_ZN4idAI14UpdateAIScriptEv
	.align 2
	.globl _ZN4idAI13KickObstaclesERK6idVec3fP8idEntity
	.type	_ZN4idAI13KickObstaclesERK6idVec3fP8idEntity, @function
_ZN4idAI13KickObstaclesERK6idVec3fP8idEntity:
.LFB2868:
	.loc 4 1236 0
	.cfi_startproc
.LVL410:
	stwu 1,-16584(1)
.LCFI80:
	.cfi_def_cfa_offset 16584
	mflr 0
	stw 31,16524(1)
.LBB6423:
	.loc 4 1248 0
	addi 31,3,4216
	.cfi_offset 31, -60
	.cfi_register 65, 0
.LBE6423:
	.loc 4 1236 0
	stw 24,16496(1)
	mr 24,3
	.cfi_offset 24, -88
	stw 30,16520(1)
.LBB6698:
	.loc 4 1248 0
	mr 3,31
.LVL411:
.LBE6698:
	.loc 4 1236 0
	mr 30,4
	.cfi_offset 30, -64
.LBB6699:
	.loc 4 1248 0
	li 4,0
.LVL412:
.LBE6699:
	.loc 4 1236 0
	stw 0,16588(1)
	stfd 25,16528(1)
	stfd 26,16536(1)
	stfd 27,16544(1)
	stfd 31,16576(1)
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 65, 4
	stw 29,16516(1)
	mr 29,5
	.cfi_offset 29, -68
	stfd 28,16552(1)
	stfd 29,16560(1)
	stfd 30,16568(1)
	stw 16,16464(1)
	stw 17,16468(1)
	stw 18,16472(1)
	stw 19,16476(1)
	stw 20,16480(1)
	stw 21,16484(1)
	stw 22,16488(1)
	stw 23,16492(1)
	stw 25,16500(1)
	stw 26,16504(1)
	stw 27,16508(1)
	stw 28,16512(1)
.LBB6700:
	.loc 4 1248 0
	.cfi_offset 28, -72
	.cfi_offset 27, -76
	.cfi_offset 26, -80
	.cfi_offset 25, -84
	.cfi_offset 23, -92
	.cfi_offset 22, -96
	.cfi_offset 21, -100
	.cfi_offset 20, -104
	.cfi_offset 19, -108
	.cfi_offset 18, -112
	.cfi_offset 17, -116
	.cfi_offset 16, -120
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL413:
	mr 9,3
.LVL414:
	.loc 4 1251 0
	li 4,-1
	mr 3,31
.LVL415:
.LBB6424:
.LBB6425:
	.loc 6 424 0
	lfs 26,0(9)
.LVL416:
	.loc 6 425 0
	lfs 25,4(9)
.LVL417:
	.loc 6 426 0
	lfs 27,8(9)
.LVL418:
.LBE6425:
.LBE6424:
	.loc 4 1251 0
	bl _ZNK15idPhysics_Actor12GetAbsBoundsEi
.LVL419:
.LBB6426:
.LBB6427:
	.loc 6 457 0
	lis 9,.LC61@ha
.LBE6427:
.LBE6426:
.LBB6433:
.LBB6434:
	.loc 6 456 0
	lfs 8,0(3)
.LBE6434:
.LBE6433:
.LBB6440:
.LBB6428:
	.loc 6 457 0
	lfs 13,.LC61@l(9)
.LBE6428:
.LBE6440:
.LBB6441:
.LBB6435:
	.loc 5 323 0
	lis 9,.LC62@ha
.LBE6435:
.LBE6441:
.LBB6442:
.LBB6429:
	.loc 6 439 0
	lfs 9,0(30)
.LBE6429:
.LBE6442:
.LBB6443:
.LBB6436:
	.loc 5 323 0
	lfs 0,.LC62@l(9)
	.loc 6 456 0
	fmadds 8,9,13,8
.LBE6436:
.LBE6443:
.LBB6444:
.LBB6430:
	.loc 6 457 0
	lfs 10,4(3)
	.loc 6 458 0
	lfs 12,8(3)
	.loc 6 456 0
	lfs 4,12(3)
	.loc 6 457 0
	lfs 5,16(3)
.LBE6430:
.LBE6444:
.LBB6445:
.LBB6437:
	.loc 5 323 0
	fsubs 8,8,0
.LBE6437:
.LBE6445:
.LBB6446:
.LBB6431:
	.loc 6 439 0
	lfs 11,4(30)
	.loc 6 456 0
	fmadds 9,9,13,4
	.loc 6 439 0
	lfs 7,8(30)
.LVL420:
	.loc 6 458 0
	lfs 6,20(3)
	.loc 6 457 0
	fmadds 10,11,13,10
	.loc 6 458 0
	fmadds 12,7,13,12
.LVL421:
.LBE6431:
.LBE6446:
.LBB6447:
.LBB6438:
	.loc 5 323 0
	stfs 8,20(1)
.LBE6438:
.LBE6447:
.LBB6448:
.LBB6432:
	.loc 6 457 0
	fmadds 11,11,13,5
	.loc 6 458 0
	fmadds 13,7,13,6
.LVL422:
.LBE6432:
.LBE6448:
.LBB6449:
.LBB6450:
	.loc 5 228 0
	fcmpu 7,26,8
.LBE6450:
.LBE6449:
.LBB6452:
.LBB6439:
	.loc 5 324 0
	fsubs 10,10,0
	.loc 5 325 0
	fsubs 12,12,0
	.loc 5 326 0
	fadds 9,9,0
	.loc 5 327 0
	fadds 11,11,0
	.loc 5 324 0
	stfs 10,24(1)
.LVL423:
	.loc 5 328 0
	fadds 0,13,0
	.loc 5 325 0
	stfs 12,28(1)
.LVL424:
	.loc 5 326 0
	stfs 9,32(1)
.LVL425:
	.loc 5 327 0
	stfs 11,36(1)
.LVL426:
	.loc 5 328 0
	stfs 0,40(1)
.LVL427:
.LBE6439:
.LBE6452:
.LBB6453:
.LBB6451:
	.loc 5 228 0
	bnl- 7,.L194
.LVL428:
	.loc 5 229 0
	stfs 26,20(1)
.LVL429:
.L194:
	.loc 5 232 0
	fcmpu 7,26,9
	bng- 7,.L196
.LVL430:
	.loc 5 233 0
	stfs 26,32(1)
.LVL431:
.L196:
	.loc 5 236 0
	fcmpu 7,25,10
	bnl- 7,.L198
.LVL432:
	.loc 5 237 0
	stfs 25,24(1)
.LVL433:
.L198:
	.loc 5 240 0
	fcmpu 7,25,11
	bng- 7,.L200
.LVL434:
	.loc 5 241 0
	stfs 25,36(1)
.LVL435:
.L200:
	.loc 5 244 0
	fcmpu 7,27,12
	bnl- 7,.L202
.LVL436:
	.loc 5 245 0
	stfs 27,28(1)
.LVL437:
.L202:
	.loc 5 248 0
	fcmpu 7,27,0
	bng- 7,.L204
.LVL438:
	.loc 5 249 0
	stfs 27,40(1)
.LVL439:
.L204:
.LBE6451:
.LBE6453:
	.loc 4 1255 0
	li 4,-1
	mr 3,31
.LVL440:
	bl _ZNK14idPhysics_Base11GetClipMaskEi
.LVL441:
	.loc 4 1256 0
	addi 4,1,20
	.loc 4 1255 0
	mr 5,3
.LVL442:
	.loc 4 1256 0
	lis 3,gameLocal+2311032@ha
.LVL443:
	la 3,gameLocal+2311032@l(3)
	addi 6,1,44
	li 7,4096
	bl _ZNK6idClip24ClipModelsTouchingBoundsERK8idBoundsiPP11idClipModeli
.LVL444:
	.loc 4 1257 0
	mr. 28,3
	ble- 0,.L206
.LBB6454:
.LBB6455:
.LBB6456:
.LBB6457:
.LBB6458:
.LBB6459:
	.file 19 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Random.h"
	.loc 19 71 0
	lis 26,gameLocal@ha
.LBE6459:
.LBE6458:
.LBE6457:
.LBE6456:
.LBE6455:
.LBE6454:
.LBB6504:
.LBB6505:
.LBB6506:
.LBB6507:
	.loc 8 248 0
	lis 17,0x5f37
.LBE6507:
.LBE6506:
.LBE6505:
.LBE6504:
.LBB6525:
.LBB6492:
.LBB6482:
.LBB6472:
.LBB6466:
.LBB6460:
	.loc 19 71 0
	la 26,gameLocal@l(26)
	lis 20,0x1
.LBE6460:
.LBE6466:
.LBE6472:
.LBE6482:
.LBE6492:
.LBE6525:
	.loc 4 1257 0
	addi 30,1,40
.LVL445:
	li 31,0
.LBB6526:
	.loc 4 5138 0
	lis 27,_ZN10idMoveable4TypeE@ha
.LBE6526:
.LBB6531:
.LBB6518:
.LBB6513:
.LBB6508:
	.loc 8 248 0
	ori 17,17,23007
	.loc 8 246 0
	lis 18,.LC15@ha
	.loc 8 250 0
	lis 19,.LC63@ha
.LBE6508:
.LBE6513:
.LBE6518:
.LBE6531:
.LBB6532:
.LBB6493:
.LBB6483:
.LBB6473:
.LBB6467:
.LBB6461:
	.loc 19 71 0
	addis 26,26,0x1
	ori 20,20,3533
.LBE6461:
.LBE6467:
	.loc 19 83 0
	lis 21,0x4330
	lis 22,.LC65@ha
.LBE6473:
.LBE6483:
	.loc 19 87 0
	lis 23,.LC66@ha
.LVL446:
.L209:
.LBE6493:
.LBE6532:
	.loc 4 1258 0
	lwzu 9,4(30)
.LVL447:
	.loc 4 5138 0
	lwz 16,4(9)
	.loc 4 1260 0
	cmpw 7,16,29
	beq- 7,.L207
	.loc 4 1265 0
	lwz 0,124(9)
	cmpwi 7,0,-1
	beq- 7,.L207
.LVL448:
.LBB6533:
.LBB6527:
	.loc 16 340 0
	lwz 9,0(16)
	mr 3,16
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL449:
.LBE6527:
	.loc 4 5138 0
	la 9,_ZN10idMoveable4TypeE@l(27)
	lwz 0,56(3)
.LBB6530:
.LBB6528:
.LBB6529:
	.loc 16 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L207
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L207
.LBE6529:
.LBE6528:
.LBE6530:
.LBE6533:
	.loc 4 1269 0
	mr 3,16
.LVL450:
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	beq- 7,.L207
	.loc 4 1270 0 discriminator 4
	mr 3,16
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL451:
.LBB6534:
.LBB6494:
.LBB6484:
.LBB6474:
.LBB6468:
.LBB6462:
	.loc 19 71 0 discriminator 4
	lwz 9,-32064(26)
.LBE6462:
.LBE6468:
.LBE6474:
.LBE6484:
.LBE6494:
.LBE6534:
.LBB6535:
.LBB6536:
	.loc 6 431 0 discriminator 4
	lfs 11,4(3)
	lfs 12,0(3)
.LBE6536:
.LBE6535:
.LBB6541:
.LBB6495:
.LBB6485:
.LBB6475:
.LBB6469:
.LBB6463:
	.loc 19 71 0 discriminator 4
	mullw 9,20,9
.LBE6463:
.LBE6469:
.LBE6475:
.LBE6485:
.LBE6495:
.LBE6541:
.LBB6542:
.LBB6537:
	.loc 6 431 0 discriminator 4
	fsubs 11,11,25
	lfs 30,8(3)
	fsubs 12,12,26
.LBE6537:
.LBE6542:
.LBB6543:
.LBB6519:
.LBB6514:
.LBB6509:
	.loc 8 246 0 discriminator 4
	lfs 0,.LC15@l(18)
.LBE6509:
.LBE6514:
.LBE6519:
.LBE6543:
.LBB6544:
.LBB6538:
	.loc 6 431 0 discriminator 4
	fsubs 30,30,27
.LVL452:
.LBE6538:
.LBE6544:
.LBB6545:
.LBB6496:
.LBB6486:
.LBB6476:
	.loc 19 83 0 discriminator 4
	stw 21,16440(1)
.LBE6476:
.LBE6486:
.LBE6496:
.LBE6545:
.LBB6546:
.LBB6520:
	.loc 6 527 0 discriminator 4
	fmuls 13,11,11
.LBE6520:
.LBE6546:
.LBB6547:
.LBB6497:
.LBB6487:
.LBB6477:
.LBB6470:
.LBB6464:
	.loc 19 71 0 discriminator 4
	addi 0,9,1
	.loc 19 72 0 discriminator 4
	rlwinm 9,0,0,17,31
.LBE6464:
.LBE6470:
	.loc 19 83 0 discriminator 4
	lfs 10,.LC65@l(22)
	xoris 9,9,0x8000
.LBE6477:
.LBE6487:
.LBE6497:
.LBE6547:
	.loc 4 1276 0 discriminator 4
	mr 3,16
.LVL453:
.LBB6548:
.LBB6539:
	.loc 6 527 0 discriminator 4
	fmadds 13,12,12,13
.LBE6539:
.LBE6548:
.LBB6549:
.LBB6498:
.LBB6488:
.LBB6478:
	.loc 19 83 0 discriminator 4
	stw 9,16444(1)
.LBE6478:
.LBE6488:
.LBE6498:
.LBE6549:
.LBB6550:
.LBB6540:
	.loc 6 527 0 discriminator 4
	fmadds 13,30,30,13
	stfs 13,16456(1)
.LVL454:
.LBE6540:
.LBE6550:
.LBB6551:
.LBB6521:
.LBB6515:
.LBB6510:
	.loc 8 246 0 discriminator 4
	fmuls 8,13,0
	.loc 8 248 0 discriminator 4
	lwz 8,16456(1)
	.loc 4 1236 0 discriminator 4
	fneg 8,8
	.loc 8 248 0 discriminator 4
	srawi 11,8,1
	.loc 8 249 0 discriminator 4
	subf 11,11,17
	stw 11,16456(1)
.LVL455:
	.loc 8 250 0 discriminator 4
	lfs 9,16456(1)
	fmuls 13,9,9
.LVL456:
	lfs 9,.LC63@l(19)
	fmadds 13,8,13,9
.LBE6510:
.LBE6515:
.LBE6521:
.LBE6551:
.LBB6552:
.LBB6499:
.LBB6489:
.LBB6479:
	.loc 19 83 0 discriminator 4
	lfd 9,16440(1)
.LBE6479:
.LBE6489:
.LBE6499:
.LBE6552:
.LBB6553:
.LBB6522:
.LBB6516:
.LBB6511:
	.loc 8 250 0 discriminator 4
	lfs 8,16456(1)
.LBE6511:
.LBE6516:
.LBE6522:
.LBE6553:
.LBB6554:
.LBB6500:
.LBB6490:
.LBB6480:
	.loc 19 83 0 discriminator 4
	fsub 10,9,10
.LBE6480:
.LBE6490:
	.loc 19 87 0 discriminator 4
	lfs 9,.LC66@l(23)
.LBE6500:
.LBE6554:
.LBB6555:
.LBB6523:
.LBB6517:
.LBB6512:
	.loc 8 250 0 discriminator 4
	fmuls 13,8,13
.LVL457:
.LBE6512:
.LBE6517:
.LBE6523:
.LBE6555:
.LBB6556:
.LBB6501:
.LBB6491:
.LBB6481:
.LBB6471:
.LBB6465:
	.loc 19 71 0 discriminator 4
	stw 0,-32064(26)
.LBE6465:
.LBE6471:
	.loc 19 83 0 discriminator 4
	frsp 10,10
.LBE6481:
.LBE6491:
.LBE6501:
.LBE6556:
.LBB6557:
.LBB6524:
	.loc 6 530 0 discriminator 4
	fmuls 11,11,13
.LVL458:
	.loc 6 529 0 discriminator 4
	fmuls 12,12,13
.LVL459:
.LBE6524:
.LBE6557:
.LBB6558:
.LBB6502:
	.loc 19 87 0 discriminator 4
	fmsubs 10,10,9,0
.LBE6502:
.LBE6558:
	.loc 4 1272 0 discriminator 4
	fneg 28,11
.LBB6559:
.LBB6560:
	.loc 4 1274 0 discriminator 4
	fmadds 30,30,13,0
.LVL460:
.LBE6560:
.LBE6559:
.LBB6563:
.LBB6503:
	.loc 19 87 0 discriminator 4
	fadds 10,10,10
.LVL461:
.LBE6503:
.LBE6563:
.LBB6564:
.LBB6561:
	.loc 6 439 0 discriminator 4
	fmuls 30,30,31
.LVL462:
.LBE6561:
.LBE6564:
.LBB6565:
.LBB6566:
	.loc 6 245 0 discriminator 4
	fmuls 28,28,10
	fmuls 10,10,12
.LVL463:
.LBE6566:
.LBE6565:
.LBB6567:
.LBB6562:
	.loc 6 262 0 discriminator 4
	fmadds 12,28,0,12
.LVL464:
	.loc 6 263 0 discriminator 4
	fmadds 11,10,0,11
.LVL465:
	.loc 6 439 0 discriminator 4
	fmuls 28,31,12
.LVL466:
	fmuls 29,31,11
.LVL467:
.LBE6562:
.LBE6567:
	.loc 4 1276 0 discriminator 4
	bl _ZNK8idEntity10GetPhysicsEv
.LVL468:
	lwz 9,0(3)
	li 4,-1
	lwz 0,36(9)
	mtctr 0
	bctrl
.LVL469:
	.loc 4 1277 0 discriminator 4
	mr 3,16
.LBB6568:
.LBB6569:
	.loc 6 439 0 discriminator 4
	fmuls 28,1,28
.LVL470:
	fmuls 29,1,29
.LVL471:
	fmuls 1,1,30
.LVL472:
.LBE6569:
.LBE6568:
.LBB6570:
.LBB6571:
	.loc 6 424 0 discriminator 4
	stfs 28,8(1)
	.loc 6 425 0 discriminator 4
	stfs 29,12(1)
	.loc 6 426 0 discriminator 4
	stfs 1,16(1)
.LBE6571:
.LBE6570:
	.loc 4 1277 0 discriminator 4
	lwz 9,0(16)
	lwz 25,132(9)
	bl _ZNK8idEntity10GetPhysicsEv
.LVL473:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,24
	mr 6,3
	li 5,0
	mr 3,16
	addi 7,1,8
	mtctr 25
	bctrl
.LVL474:
.L207:
	.loc 4 1257 0
	addi 31,31,1
.LVL475:
	cmpw 7,31,28
	bne+ 7,.L209
.LVL476:
.L206:
	.loc 4 1281 0
	cmpwi 7,29,0
	beq- 7,.L193
	.loc 4 1282 0
	mr 3,29
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL477:
.LBB6572:
.LBB6573:
.LBB6574:
.LBB6575:
.LBB6576:
.LBB6577:
	.loc 19 71 0
	lis 9,gameLocal@ha
.LBE6577:
.LBE6576:
.LBE6575:
.LBE6574:
.LBE6573:
.LBE6572:
.LBB6631:
.LBB6632:
	.loc 6 431 0
	lfs 13,4(3)
.LBE6632:
.LBE6631:
.LBB6639:
.LBB6618:
.LBB6606:
.LBB6594:
.LBB6586:
.LBB6578:
	.loc 19 71 0
	la 9,gameLocal@l(9)
.LBE6578:
.LBE6586:
.LBE6594:
.LBE6606:
.LBE6618:
.LBE6639:
.LBB6640:
.LBB6633:
	.loc 6 431 0
	lfs 0,0(3)
.LBE6633:
.LBE6640:
.LBB6641:
.LBB6619:
.LBB6607:
.LBB6595:
.LBB6587:
.LBB6579:
	.loc 19 71 0
	addis 9,9,0x1
.LBE6579:
.LBE6587:
.LBE6595:
.LBE6607:
.LBE6619:
.LBE6641:
.LBB6642:
.LBB6634:
	.loc 6 431 0
	fsubs 25,13,25
.LVL478:
	lfs 13,8(3)
	fsubs 26,0,26
.LVL479:
.LBE6634:
.LBE6642:
.LBB6643:
.LBB6620:
.LBB6608:
.LBB6596:
.LBB6588:
.LBB6580:
	.loc 19 71 0
	lwz 0,-32064(9)
.LBE6580:
.LBE6588:
.LBE6596:
.LBE6608:
.LBE6620:
.LBE6643:
.LBB6644:
.LBB6635:
	.loc 6 431 0
	fsubs 27,13,27
.LVL480:
.LBE6635:
.LBE6644:
.LBB6645:
.LBB6621:
.LBB6609:
.LBB6597:
.LBB6589:
.LBB6581:
	.loc 19 71 0
	lis 11,0x1
.LBE6581:
.LBE6589:
.LBE6597:
.LBE6609:
.LBE6621:
.LBE6645:
.LBB6646:
.LBB6647:
	.loc 6 527 0
	fmuls 0,25,25
.LBE6647:
.LBE6646:
.LBB6664:
.LBB6622:
.LBB6610:
.LBB6598:
.LBB6590:
.LBB6582:
	.loc 19 71 0
	ori 11,11,3533
	mullw 11,11,0
.LBE6582:
.LBE6590:
.LBE6598:
.LBE6610:
.LBE6622:
.LBE6664:
.LBB6665:
.LBB6658:
.LBB6648:
.LBB6649:
	.loc 8 246 0
	lis 10,.LC15@ha
.LBE6649:
.LBE6648:
.LBE6658:
.LBE6665:
	.loc 4 1288 0
	mr 3,29
.LVL481:
.LBB6666:
.LBB6636:
	.loc 6 527 0
	fmadds 0,26,26,0
.LBE6636:
.LBE6666:
.LBB6667:
.LBB6623:
.LBB6611:
.LBB6599:
.LBB6591:
.LBB6583:
	.loc 19 71 0
	addi 0,11,1
.LBE6583:
.LBE6591:
.LBE6599:
.LBE6611:
.LBE6623:
.LBE6667:
.LBB6668:
.LBB6637:
	.loc 6 527 0
	fmadds 0,27,27,0
.LBE6637:
.LBE6668:
.LBB6669:
.LBB6624:
.LBB6612:
.LBB6600:
.LBB6592:
.LBB6584:
	.loc 19 72 0
	rlwinm 11,0,0,17,31
.LBE6584:
.LBE6592:
	.loc 19 83 0
	xoris 11,11,0x8000
	stw 11,16452(1)
	lis 11,0x4330
.LBE6600:
.LBE6612:
.LBE6624:
.LBE6669:
.LBB6670:
.LBB6638:
	.loc 6 527 0
	stfs 0,16456(1)
.LVL482:
.LBE6638:
.LBE6670:
.LBB6671:
.LBB6659:
.LBB6654:
.LBB6650:
	.loc 8 246 0
	lfs 0,.LC15@l(10)
.LVL483:
	.loc 8 248 0
	lwz 8,16456(1)
	.loc 8 246 0
	lfs 8,16456(1)
	.loc 8 248 0
	srawi 10,8,1
	.loc 8 249 0
	lis 8,0x5f37
	ori 8,8,23007
	.loc 8 246 0
	fmuls 11,8,0
	.loc 8 249 0
	subf 8,10,8
.LBE6650:
.LBE6654:
.LBE6659:
.LBE6671:
.LBB6672:
.LBB6625:
.LBB6613:
.LBB6601:
	.loc 19 83 0
	stw 11,16448(1)
.LBE6601:
.LBE6613:
.LBE6625:
.LBE6672:
.LBB6673:
.LBB6660:
.LBB6655:
.LBB6651:
	.loc 8 249 0
	stw 8,16456(1)
.LVL484:
	.loc 8 250 0
	lis 11,.LC63@ha
	.loc 4 1236 0
	fneg 11,11
	.loc 8 250 0
	lfs 12,.LC63@l(11)
	lfs 8,16456(1)
.LBE6651:
.LBE6655:
.LBE6660:
.LBE6673:
.LBB6674:
.LBB6626:
.LBB6614:
.LBB6602:
	.loc 19 83 0
	lis 11,.LC65@ha
.LBE6602:
.LBE6614:
.LBE6626:
.LBE6674:
.LBB6675:
.LBB6661:
.LBB6656:
.LBB6652:
	.loc 8 250 0
	fmuls 13,8,8
	fmadds 13,11,13,12
.LBE6652:
.LBE6656:
.LBE6661:
.LBE6675:
.LBB6676:
.LBB6627:
.LBB6615:
.LBB6603:
	.loc 19 83 0
	lfs 12,.LC65@l(11)
	lfd 11,16448(1)
.LBE6603:
.LBE6615:
	.loc 19 87 0
	lis 11,.LC66@ha
.LBB6616:
.LBB6604:
.LBB6593:
.LBB6585:
	.loc 19 71 0
	stw 0,-32064(9)
.LBE6585:
.LBE6593:
	.loc 19 83 0
	fsub 11,11,12
.LBE6604:
.LBE6616:
	.loc 19 87 0
	lfs 12,.LC66@l(11)
.LBE6627:
.LBE6676:
.LBB6677:
.LBB6662:
.LBB6657:
.LBB6653:
	.loc 8 250 0
	fmuls 13,8,13
.LVL485:
.LBE6653:
.LBE6657:
.LBE6662:
.LBE6677:
.LBB6678:
.LBB6628:
.LBB6617:
.LBB6605:
	.loc 19 83 0
	frsp 11,11
.LBE6605:
.LBE6617:
.LBE6628:
.LBE6678:
.LBB6679:
.LBB6663:
	.loc 6 530 0
	fmuls 25,25,13
.LVL486:
	.loc 6 529 0
	fmuls 26,26,13
.LVL487:
.LBE6663:
.LBE6679:
.LBB6680:
.LBB6629:
	.loc 19 87 0
	fmsubs 12,11,12,0
.LBE6629:
.LBE6680:
	.loc 4 1284 0
	fneg 29,25
.LBB6681:
.LBB6682:
	.loc 4 1286 0
	fmadds 13,27,13,0
.LVL488:
.LBE6682:
.LBE6681:
.LBB6685:
.LBB6630:
	.loc 19 87 0
	fadds 12,12,12
.LVL489:
.LBE6630:
.LBE6685:
.LBB6686:
.LBB6683:
	.loc 6 439 0
	fmuls 30,31,13
.LVL490:
.LBE6683:
.LBE6686:
.LBB6687:
.LBB6688:
	.loc 6 245 0
	fmuls 29,29,12
	fmuls 12,12,26
.LVL491:
.LBE6688:
.LBE6687:
.LBB6689:
.LBB6684:
	.loc 6 262 0
	fmadds 29,29,0,26
	.loc 6 263 0
	fmadds 0,12,0,25
.LVL492:
	.loc 6 439 0
	fmuls 29,31,29
.LVL493:
	fmuls 31,31,0
.LVL494:
.LBE6684:
.LBE6689:
	.loc 4 1288 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL495:
	lwz 9,0(3)
	li 4,-1
	lwz 0,36(9)
	mtctr 0
	bctrl
.LVL496:
	.loc 4 1289 0
	lwz 9,0(29)
.LBB6690:
.LBB6691:
	.loc 6 439 0
	fmuls 29,1,29
.LVL497:
.LBE6691:
.LBE6690:
	.loc 4 1289 0
	mr 3,29
.LBB6694:
.LBB6692:
	.loc 6 439 0
	fmuls 31,1,31
.LVL498:
.LBE6692:
.LBE6694:
	.loc 4 1289 0
	lwz 31,132(9)
.LBB6695:
.LBB6693:
	.loc 6 439 0
	fmuls 1,1,30
.LVL499:
.LBE6693:
.LBE6695:
.LBB6696:
.LBB6697:
	.loc 6 424 0
	stfs 29,8(1)
	.loc 6 425 0
	stfs 31,12(1)
	.loc 6 426 0
	stfs 1,16(1)
.LBE6697:
.LBE6696:
	.loc 4 1289 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL500:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,24
	mr 6,3
	li 5,0
	mr 3,29
	addi 7,1,8
.LVL501:
	mtctr 31
	bctrl
.LVL502:
.L193:
.LBE6700:
	.loc 4 1291 0
	lwz 0,16588(1)
	lwz 16,16464(1)
	mtlr 0
	lwz 17,16468(1)
	lwz 18,16472(1)
	lwz 19,16476(1)
	lwz 20,16480(1)
	lwz 21,16484(1)
	lwz 22,16488(1)
	lwz 23,16492(1)
	lwz 24,16496(1)
.LVL503:
	lwz 25,16500(1)
	lwz 26,16504(1)
	lwz 27,16508(1)
	lwz 28,16512(1)
.LVL504:
	lwz 29,16516(1)
.LVL505:
	lwz 30,16520(1)
	lwz 31,16524(1)
	lfd 25,16528(1)
	lfd 26,16536(1)
	lfd 27,16544(1)
	lfd 28,16552(1)
	lfd 29,16560(1)
	lfd 30,16568(1)
	lfd 31,16576(1)
	addi 1,1,16584
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
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
	.cfi_endproc
.LFE2868:
	.size	_ZN4idAI13KickObstaclesERK6idVec3fP8idEntity, .-_ZN4idAI13KickObstaclesERK6idVec3fP8idEntity
	.align 2
	.globl _Z14ValidForBoundsPK13idAASSettingsRK8idBounds
	.type	_Z14ValidForBoundsPK13idAASSettingsRK8idBounds, @function
_Z14ValidForBoundsPK13idAASSettingsRK8idBounds:
.LFB2869:
	.loc 4 1298 0
	.cfi_startproc
.LVL506:
	.loc 4 1298 0
	li 9,0
.LVL507:
.L220:
.LBB6701:
.LBB6702:
.LBB6703:
	.loc 6 402 0
	add 11,3,9
.LBE6703:
.LBE6702:
	.loc 4 1302 0
	lfsx 13,4,9
	lfs 0,4(11)
.LBB6704:
.LBB6705:
	.loc 6 402 0
	add 10,4,9
.LBE6705:
.LBE6704:
	.loc 4 1301 0
	cmpwi 6,9,8
	addi 9,9,4
	.loc 4 1302 0
	fcmpu 7,13,0
	blt- 7,.L221
.LVL508:
	.loc 4 1305 0
	lfs 13,12(10)
	lfs 0,16(11)
	fcmpu 7,13,0
	bgt- 7,.L222
	.loc 4 1301 0
	bne+ 6,.L220
	.loc 4 1309 0
	li 3,1
.LVL509:
	blr
.LVL510:
.L221:
	.loc 4 1303 0
	li 3,0
.LVL511:
	blr
.LVL512:
.L222:
	.loc 4 1306 0
	li 3,0
.LVL513:
.LBE6701:
	.loc 4 1310 0
	blr
	.cfi_endproc
.LFE2869:
	.size	_Z14ValidForBoundsPK13idAASSettingsRK8idBounds, .-_Z14ValidForBoundsPK13idAASSettingsRK8idBounds
	.align 2
	.globl _ZN4idAI6SetAASEv
	.type	_ZN4idAI6SetAASEv, @function
_ZN4idAI6SetAASEv:
.LFB2870:
	.loc 4 1317 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2870
.LVL514:
	mflr 0
	stwu 1,-64(1)
.LCFI82:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
.LVL515:
.LBB6732:
.LBB6733:
.LBB6734:
.LBB6735:
	.loc 15 357 0
	li 9,20
.LBE6735:
.LBE6734:
.LBE6733:
.LBB6742:
.LBB6743:
	.loc 11 231 0
	lis 4,.LC67@ha
.LBE6743:
.LBE6742:
.LBE6732:
	.loc 4 1317 0
	stw 31,60(1)
.LBB6787:
.LBB6761:
.LBB6755:
	.loc 11 231 0
	la 4,.LC67@l(4)
.LBE6755:
.LBE6761:
.LBE6787:
	.loc 4 1317 0
	stw 0,68(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBB6788:
.LBB6762:
.LBB6739:
.LBB6736:
	.loc 15 356 0
	li 0,0
	.loc 15 357 0
	stw 9,16(1)
.LBE6736:
.LBE6739:
.LBE6762:
.LBB6763:
.LBB6756:
	.loc 11 231 0
	addi 3,3,100
.LVL516:
.LBE6756:
.LBE6763:
.LBB6764:
.LBB6740:
.LBB6737:
	.loc 15 358 0
	addi 9,1,20
.LBE6737:
.LBE6740:
.LBE6764:
.LBE6788:
	.loc 4 1317 0
	stw 29,52(1)
	addi 29,1,8
	.cfi_offset 29, -12
	stw 27,44(1)
	stw 28,48(1)
	stw 30,56(1)
.LBB6789:
.LBB6765:
.LBB6741:
.LBB6738:
	.loc 15 356 0
	stw 0,8(1)
	.loc 15 358 0
	stw 9,12(1)
	.loc 15 359 0
	stb 0,20(1)
.LVL517:
.LEHB15:
.LBE6738:
.LBE6741:
.LBE6765:
.LBB6766:
.LBB6757:
	.loc 11 231 0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	bl _ZNK6idDict7FindKeyEPKc
.LVL518:
	.loc 11 232 0
	cmpwi 0,3,0
	beq- 0,.L225
.LBE6757:
	.loc 4 5138 0
	lwz 28,4(3)
.LVL519:
	addi 29,1,8
.LBB6758:
.LBB6744:
.LBB6745:
.LBB6746:
.LBB6747:
	.loc 15 350 0
	lwz 0,16(1)
.LBE6747:
.LBE6746:
.LBE6745:
	.loc 4 5138 0
	lwz 30,0(28)
.LBB6752:
	.loc 15 534 0
	addi 4,30,1
.LVL520:
.LBB6750:
.LBB6748:
	.loc 15 350 0
	cmpw 7,4,0
	bgt- 7,.L239
.LVL521:
.L226:
.LBE6748:
.LBE6750:
	.loc 15 535 0
	lwz 3,12(1)
	mr 5,30
	lwz 4,4(28)
	bl memcpy
	.loc 15 536 0
	lwz 9,12(1)
	li 0,0
	stbx 0,9,30
	.loc 15 537 0
	stw 30,8(1)
.LVL522:
.L227:
.LBE6752:
.LBE6744:
.LBE6758:
.LBE6766:
	.loc 4 1321 0
	lis 30,gameLocal@ha
	lwz 4,12(1)
	la 30,gameLocal@l(30)
	mr 3,30
	bl _ZNK11idGameLocal6GetAASEPKc
.LBB6767:
	.loc 4 1322 0
	cmpwi 7,3,0
.LBE6767:
	.loc 4 1321 0
	stw 3,3944(31)
.LBB6774:
	.loc 4 1322 0
	beq- 7,.L228
.LBB6768:
	.loc 4 1323 0
	lwz 9,0(3)
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL523:
.LBB6769:
	.loc 4 1324 0
	mr. 28,3
	beq- 0,.L229
.LBB6770:
	.loc 4 1325 0
	addi 27,31,4216
	li 4,-1
	mr 3,27
.LVL524:
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	mr 4,3
	mr 3,28
	bl _Z14ValidForBoundsPK13idAASSettingsRK8idBounds
	cmpwi 7,3,0
	beq- 7,.L240
.L230:
.LVL525:
	.loc 4 1329 0
	lfs 1,180(28)
	mr 3,27
	bl _ZN17idPhysics_Monster16SetMaxStepHeightEf
.LEHE15:
.LVL526:
.LBE6770:
.LBE6769:
.LBE6768:
.LBE6774:
.LBB6775:
.LBB6776:
.LBB6777:
	.loc 15 501 0
	mr 3,29
.LEHB16:
	bl _ZN5idStr8FreeDataEv
.LEHE16:
.LBE6777:
.LBE6776:
.LBE6775:
.LBE6789:
	.loc 4 1336 0
	lwz 0,68(1)
	lwz 27,44(1)
	mtlr 0
	lwz 28,48(1)
.LVL527:
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL528:
	addi 1,1,64
	.cfi_remember_state
.LCFI83:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL529:
.L239:
.LCFI84:
	.cfi_restore_state
.LBB6790:
.LBB6780:
.LBB6759:
.LBB6754:
.LBB6753:
.LBB6751:
.LBB6749:
	.loc 15 351 0
	mr 3,29
.LVL530:
	li 5,0
.LEHB17:
	bl _ZN5idStr10ReAllocateEib
.LVL531:
	b .L226
.LVL532:
.L240:
.LBE6749:
.LBE6751:
.LBE6753:
.LBE6754:
.LBE6759:
.LBE6780:
.LBB6781:
.LBB6773:
.LBB6772:
.LBB6771:
	.loc 4 1326 0
	lis 4,.LC68@ha
	lwz 5,72(31)
	lwz 6,12(1)
	mr 3,30
	la 4,.LC68@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L230
.L229:
.LBE6771:
	.loc 4 1332 0
	stw 28,3944(31)
.LVL533:
.L228:
.LBE6772:
.LBE6773:
.LBE6781:
	.loc 4 1335 0
	lis 4,.LC69@ha
	lwz 5,72(31)
	mr 3,30
	la 4,.LC69@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LEHE17:
.LVL534:
.LBB6782:
.LBB6779:
.LBB6778:
	.loc 15 501 0
	mr 3,29
.LEHB18:
	bl _ZN5idStr8FreeDataEv
.LEHE18:
.LBE6778:
.LBE6779:
.LBE6782:
.LBE6790:
	.loc 4 1336 0
	lwz 0,68(1)
	lwz 27,44(1)
	mtlr 0
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL535:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI85:
	.cfi_def_cfa_offset 0
	blr
.LVL536:
.L225:
.LCFI86:
	.cfi_restore_state
.LBB6791:
.LBB6783:
.LBB6760:
	.loc 11 236 0
	addi 29,1,8
	li 4,0
	mr 3,29
.LVL537:
.LEHB19:
	bl _ZN5idStraSEPKc
.LEHE19:
	b .L227
.L236:
	mr 31,3
.LVL538:
.LBE6760:
.LBE6783:
.LBB6784:
.LBB6785:
.LBB6786:
	.loc 15 501 0
	mr 3,29
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB20:
	bl _Unwind_Resume
.LEHE20:
.LBE6786:
.LBE6785:
.LBE6784:
.LBE6791:
	.cfi_endproc
.LFE2870:
	.section	.gcc_except_table
.LLSDA2870:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2870-.LLSDACSB2870
.LLSDACSB2870:
	.uleb128 .LEHB15-.LFB2870
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L236-.LFB2870
	.uleb128 0
	.uleb128 .LEHB16-.LFB2870
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2870
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L236-.LFB2870
	.uleb128 0
	.uleb128 .LEHB18-.LFB2870
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2870
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L236-.LFB2870
	.uleb128 0
	.uleb128 .LEHB20-.LFB2870
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE2870:
	.section	".text"
	.size	_ZN4idAI6SetAASEv, .-_ZN4idAI6SetAASEv
	.align 2
	.globl _ZN4idAI7RestoreEP13idRestoreGame
	.type	_ZN4idAI7RestoreEP13idRestoreGame, @function
_ZN4idAI7RestoreEP13idRestoreGame:
.LFB2859:
	.loc 4 557 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2859
.LVL539:
	stwu 1,-104(1)
.LCFI87:
	.cfi_def_cfa_offset 104
	mflr 0
	mfcr 12
	stw 31,100(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 70, 12
	.cfi_register 65, 0
	stw 30,96(1)
.LBB6894:
	.loc 4 563 0
	mr 3,4
.LVL540:
.LBE6894:
	.loc 4 557 0
	mr 30,4
	.cfi_offset 30, -8
.LBB7124:
	.loc 4 563 0
	addi 4,31,3948
.LVL541:
.LBE7124:
	.loc 4 557 0
	stw 0,108(1)
	stw 12,76(1)
	stw 27,84(1)
.LBB7125:
	.loc 4 580 0
	addi 27,31,4216
	.cfi_offset 27, -20
	.cfi_offset 70, -28
	.cfi_offset 65, 4
.LBE7125:
	.loc 4 557 0
	stw 28,88(1)
	stw 29,92(1)
.LBB7126:
	.loc 4 607 0
	addi 29,31,4568
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LBE7126:
	.loc 4 557 0
	stw 26,80(1)
.LEHB21:
.LBB7127:
	.loc 4 563 0
	.cfi_offset 26, -24
	bl _ZN13idRestoreGame7ReadIntERi
.LVL542:
	.loc 4 564 0
	addi 3,31,3952
	mr 4,30
	bl _ZN11idMoveState7RestoreEP13idRestoreGame
	.loc 4 565 0
	mr 4,30
	addi 3,31,4060
	bl _ZN11idMoveState7RestoreEP13idRestoreGame
	.loc 4 566 0
	mr 3,30
	addi 4,31,4168
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 567 0
	mr 3,30
	addi 4,31,4172
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 568 0
	mr 3,30
	addi 4,31,4176
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 569 0
	mr 3,30
	addi 4,31,4180
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 570 0
	mr 3,30
	addi 4,31,4184
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 572 0
	mr 3,30
	addi 4,31,4188
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 573 0
	mr 3,30
	addi 4,31,4192
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 574 0
	mr 3,30
	addi 4,31,4196
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 575 0
	mr 3,30
	addi 4,31,4200
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 576 0
	mr 3,30
	addi 4,31,4204
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 577 0
	mr 3,30
	addi 4,31,4208
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 578 0
	mr 3,30
	addi 4,31,4212
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 580 0
	mr 4,27
	mr 3,30
	bl _ZN13idRestoreGame16ReadStaticObjectER7idClass
	.loc 4 582 0
	mr 3,30
	addi 4,31,4496
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 583 0
	mr 3,30
	addi 4,31,4500
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 584 0
	mr 3,30
	addi 4,31,4504
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 585 0
	mr 3,30
	addi 4,31,4508
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 586 0
	mr 3,30
	addi 4,31,4512
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 587 0
	mr 3,30
	addi 4,31,4516
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 588 0
	mr 3,30
	addi 4,31,4520
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 589 0
	mr 3,30
	addi 4,31,4524
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 590 0
	mr 3,30
	addi 4,31,4528
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 591 0
	mr 3,30
	addi 4,31,4532
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 592 0
	mr 3,30
	addi 4,31,4536
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 593 0
	mr 3,30
	addi 4,31,4540
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 595 0
	mr 3,30
	addi 4,31,4544
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 596 0
	mr 3,30
	addi 4,31,4545
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 597 0
	mr 3,30
	addi 4,31,4546
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 598 0
	mr 3,30
	addi 4,31,4547
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 600 0
	mr 3,30
	addi 4,31,4548
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 601 0
	mr 3,30
	addi 4,31,4552
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 602 0
	mr 3,30
	addi 4,31,4556
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 603 0
	mr 3,30
	addi 4,31,4560
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 604 0
	mr 3,30
	addi 4,31,4564
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 606 0
	mr 3,30
	addi 4,1,12
	bl _ZN13idRestoreGame7ReadIntERi
.LVL543:
.LBB6895:
.LBB6896:
	.loc 14 319 0
	lwz 28,4580(31)
	.loc 14 317 0
	li 0,1
	.loc 14 319 0
	cmpwi 7,28,0
	.loc 14 317 0
	stw 0,4576(31)
	.loc 14 319 0
	beq- 7,.L242
	.loc 14 321 0
	lwz 3,4568(31)
.LVL544:
	.loc 14 323 0
	lwz 0,4572(31)
	cmpw 7,3,0
	beq- 7,.L242
.LVL545:
.LBB6897:
.LBB6898:
	.loc 14 375 0
	cmpwi 7,3,0
	ble- 7,.L308
.LVL546:
	.loc 14 386 0
	stw 3,4572(31)
	.loc 14 392 0
	mulli 3,3,12
	bl _Znaj
.LVL547:
	.loc 14 393 0
	lwz 0,4568(31)
	.loc 14 392 0
	stw 3,4580(31)
.LVL548:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L244
	li 11,0
	li 10,0
	b .L245
.LVL549:
.L309:
	lwz 3,4580(31)
.LVL550:
.L245:
.LBB6899:
.LBB6900:
	.loc 6 424 0
	mr 9,28
.LBE6900:
.LBE6899:
	.loc 14 394 0
	add 8,3,11
.LVL551:
.LBB6904:
.LBB6901:
	.loc 6 424 0
	lwzux 0,9,11
.LBE6901:
.LBE6904:
	.loc 14 393 0
	addi 10,10,1
.LVL552:
.LBB6905:
.LBB6902:
	.loc 6 424 0
	stwx 0,3,11
.LBE6902:
.LBE6905:
	.loc 14 393 0
	addi 11,11,12
.LVL553:
.LBB6906:
.LBB6903:
	.loc 6 425 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 6 426 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE6903:
.LBE6906:
	.loc 14 393 0
	lwz 0,0(29)
	cmpw 7,10,0
	blt+ 7,.L309
.LVL554:
.L244:
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
.LVL555:
.L242:
.LBE6898:
.LBE6897:
.LBE6896:
.LBE6895:
	.loc 4 608 0
	lwz 26,12(1)
.LVL556:
.LBB6912:
.LBB6913:
.LBB6914:
.LBB6915:
	.loc 14 375 0
	cmpwi 7,26,0
	ble- 7,.L310
	.loc 14 380 0
	lwz 0,4572(31)
	cmpw 7,26,0
	beq- 7,.L249
	.loc 14 387 0
	lwz 0,4568(31)
	.loc 14 385 0
	lwz 28,4580(31)
.LVL557:
	.loc 14 387 0
	cmpw 7,26,0
	.loc 14 386 0
	stw 26,4572(31)
	.loc 14 387 0
	blt- 7,.L311
.L250:
	.loc 14 392 0
	mulli 3,26,12
	bl _Znaj
.LVL558:
	.loc 14 393 0
	lwz 0,4568(31)
	.loc 14 392 0
	stw 3,4580(31)
.LVL559:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L251
	li 11,0
	li 10,0
	b .L252
.LVL560:
.L312:
	lwz 3,4580(31)
.LVL561:
.L252:
.LBB6916:
.LBB6917:
	.loc 6 424 0
	mr 9,28
.LBE6917:
.LBE6916:
	.loc 14 394 0
	add 8,3,11
.LVL562:
.LBB6921:
.LBB6918:
	.loc 6 424 0
	lwzux 0,9,11
.LBE6918:
.LBE6921:
	.loc 14 393 0
	addi 10,10,1
.LVL563:
.LBB6922:
.LBB6919:
	.loc 6 424 0
	stwx 0,3,11
.LBE6919:
.LBE6922:
	.loc 14 393 0
	addi 11,11,12
.LVL564:
.LBB6923:
.LBB6920:
	.loc 6 425 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 6 426 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE6920:
.LBE6923:
	.loc 14 393 0
	lwz 0,0(29)
	cmpw 7,10,0
	blt+ 7,.L312
.LVL565:
.L251:
	.loc 14 398 0
	cmpwi 7,28,0
	beq- 7,.L306
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
.L306:
	lwz 0,12(1)
.LVL566:
.L248:
.LBE6915:
.LBE6914:
.LBE6913:
.LBE6912:
	.loc 4 609 0
	cmpwi 7,0,0
	li 0,0
.LBB6943:
.LBB6936:
	.loc 14 302 0
	stw 26,4568(31)
.LBE6936:
.LBE6943:
	.loc 4 609 0
	stw 0,16(1)
.LVL567:
	ble- 7,.L254
.L297:
.LBB6944:
.LBB6937:
.LBB6931:
.LBB6926:
	.loc 14 393 0 discriminator 2
	li 0,0
.L255:
.LVL568:
.LBE6926:
.LBE6931:
.LBE6937:
.LBE6944:
.LBB6945:
.LBB6946:
	.loc 14 589 0 discriminator 2
	mulli 0,0,12
.LVL569:
	lwz 4,4580(31)
.LBE6946:
.LBE6945:
	.loc 4 610 0 discriminator 2
	mr 3,30
	add 4,4,0
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
.LEHE21:
	.loc 4 609 0 discriminator 2
	lwz 9,16(1)
	addi 0,9,1
	lwz 9,12(1)
	stw 0,16(1)
	cmpw 7,9,0
	bgt+ 7,.L255
.L254:
.LVL570:
.LBB6947:
.LBB6948:
.LBB6949:
	.loc 15 357 0
	li 9,20
	.loc 15 356 0
	li 0,0
	.loc 15 357 0
	stw 9,40(1)
.LBE6949:
.LBE6948:
.LBE6947:
	.loc 4 614 0
	mr 3,30
.LBB6954:
.LBB6952:
.LBB6950:
	.loc 15 358 0
	addi 9,1,44
.LBE6950:
.LBE6952:
.LBE6954:
	.loc 4 614 0
	addi 4,1,32
.LBB6955:
.LBB6953:
.LBB6951:
	.loc 15 356 0
	stw 0,32(1)
	.loc 15 358 0
	stw 9,36(1)
	.loc 15 359 0
	stb 0,44(1)
.LEHB22:
.LBE6951:
.LBE6953:
.LBE6955:
	.loc 4 614 0
	bl _ZN13idRestoreGame10ReadStringER5idStr
	.loc 4 615 0
	lwz 0,32(1)
	cmpwi 7,0,0
	bne- 7,.L313
	.loc 4 618 0
	stw 0,4584(31)
.L257:
	.loc 4 620 0
	mr 3,30
	addi 4,31,4592
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 621 0
	mr 3,30
	addi 4,31,4596
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 622 0
	mr 3,30
	addi 4,31,4600
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 623 0
	mr 3,30
	addi 4,31,4612
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
.LVL571:
.LBB6956:
.LBB6957:
	.loc 7 600 0
	mr 3,30
	addi 4,31,4624
	bl _ZN13idRestoreGame7ReadIntERi
.LBE6957:
.LBE6956:
	.loc 4 625 0
	mr 3,30
	addi 4,31,4628
	bl _ZN13idRestoreGame10ReadStringER5idStr
	.loc 4 627 0
	mr 3,30
	addi 4,31,4660
	bl _ZN13idRestoreGame15ReadSoundShaderERPK13idSoundShader
	.loc 4 628 0
	mr 3,30
	addi 4,31,4664
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 629 0
	mr 3,30
	addi 4,31,4668
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 630 0
	mr 3,30
	addi 4,31,4672
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 631 0
	mr 3,30
	addi 4,1,16
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 632 0
	lwz 0,16(1)
.LBB6958:
.LBB6959:
	.loc 7 600 0
	mr 3,30
	addi 4,31,4680
.LBE6959:
.LBE6958:
	.loc 4 632 0
	stw 0,4676(31)
.LVL572:
.LBB6961:
.LBB6960:
	.loc 7 600 0
	bl _ZN13idRestoreGame7ReadIntERi
.LVL573:
.LBE6960:
.LBE6961:
	.loc 4 635 0
	mr 3,30
	addi 4,31,4684
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 636 0
	mr 3,30
	addi 4,31,4688
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 638 0
	mr 3,30
	addi 4,31,4692
	bl _ZN13idRestoreGame8ReadBoolERb
.LVL574:
.LBB6962:
.LBB6963:
	.loc 7 600 0
	mr 3,30
	addi 4,31,4696
	bl _ZN13idRestoreGame7ReadIntERi
.LBE6963:
.LBE6962:
	.loc 4 640 0
	mr 3,30
	addi 4,31,4700
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 641 0
	mr 3,30
	addi 4,31,4712
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 642 0
	mr 3,30
	addi 4,31,4716
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 643 0
	mr 3,30
	addi 4,31,4720
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 644 0
	mr 3,30
	addi 4,31,4724
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 4 645 0
	mr 3,30
	addi 4,31,4736
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 4 646 0
	mr 3,30
	addi 4,31,4748
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 4 647 0
	mr 3,30
	addi 4,31,4760
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 4 648 0
	mr 3,30
	addi 4,31,4772
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 4 650 0
	mr 3,30
	addi 4,1,12
	bl _ZN13idRestoreGame7ReadIntERi
.LBB6964:
.LBB6965:
	.loc 14 319 0
	lwz 28,4796(31)
	.loc 14 317 0
	li 0,1
.LBE6965:
.LBE6964:
	.loc 4 651 0
	addi 29,31,4784
.LVL575:
.LBB6977:
.LBB6974:
	.loc 14 317 0
	stw 0,4792(31)
	.loc 14 319 0
	cmpwi 7,28,0
	beq- 7,.L258
	.loc 14 321 0
	lwz 3,4784(31)
.LVL576:
	.loc 14 323 0
	lwz 0,4788(31)
	cmpw 7,3,0
	beq- 7,.L258
.LVL577:
.LBB6966:
.LBB6967:
	.loc 14 375 0
	cmpwi 7,3,0
	ble- 7,.L314
.LVL578:
	.loc 14 386 0
	stw 3,4788(31)
	.loc 14 392 0
	slwi 3,3,2
	bl _Znaj
.LVL579:
	.loc 14 393 0
	lwz 0,4784(31)
	.loc 14 392 0
	stw 3,4796(31)
.LVL580:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L260
	.loc 4 557 0
	addi 11,28,-4
.LBE6967:
.LBE6966:
.LBE6974:
.LBE6977:
.LBB6978:
.LBB6938:
.LBB6932:
.LBB6927:
	.loc 14 393 0
	li 9,0
	b .L261
.LVL581:
.L315:
.LBE6927:
.LBE6932:
.LBE6938:
.LBE6978:
.LBB6979:
.LBB6975:
.LBB6972:
.LBB6970:
	lwz 3,4796(31)
.LVL582:
.L261:
	.loc 14 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 14 393 0
	addi 9,9,1
.LVL583:
	.loc 14 394 0
	stwx 10,3,0
	.loc 14 393 0
	lwz 0,0(29)
	cmpw 7,9,0
	blt+ 7,.L315
.LVL584:
.L260:
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
.LVL585:
.L258:
.LBE6970:
.LBE6972:
.LBE6975:
.LBE6979:
	.loc 4 652 0
	lwz 26,12(1)
.LVL586:
.LBB6980:
.LBB6981:
.LBB6982:
.LBB6983:
	.loc 14 375 0
	cmpwi 7,26,0
	ble- 7,.L316
	.loc 14 380 0
	lwz 0,4788(31)
	cmpw 7,26,0
	beq- 7,.L264
	.loc 14 387 0
	lwz 0,4784(31)
	.loc 14 385 0
	lwz 28,4796(31)
.LVL587:
	.loc 14 387 0
	cmpw 7,26,0
	.loc 14 386 0
	stw 26,4788(31)
	.loc 14 387 0
	blt- 7,.L317
.L265:
	.loc 14 392 0
	slwi 3,26,2
	bl _Znaj
.LVL588:
	.loc 14 393 0
	lwz 0,4784(31)
	.loc 14 392 0
	stw 3,4796(31)
.LVL589:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L266
	.loc 4 557 0
	addi 11,28,-4
.LBE6983:
.LBE6982:
.LBE6981:
.LBE6980:
.LBB6996:
.LBB6939:
.LBB6933:
.LBB6928:
	.loc 14 393 0
	li 9,0
	b .L267
.LVL590:
.L318:
.LBE6928:
.LBE6933:
.LBE6939:
.LBE6996:
.LBB6997:
.LBB6992:
.LBB6989:
.LBB6986:
	lwz 3,4796(31)
.LVL591:
.L267:
	.loc 14 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 14 393 0
	addi 9,9,1
.LVL592:
	.loc 14 394 0
	stwx 10,3,0
	.loc 14 393 0
	lwz 0,0(29)
	cmpw 7,9,0
	blt+ 7,.L318
.LVL593:
.L266:
	.loc 14 398 0
	cmpwi 7,28,0
	beq- 7,.L264
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
.LVL594:
.L264:
.LBE6986:
.LBE6989:
.LBE6992:
.LBE6997:
.LBB6998:
.LBB6999:
	.loc 14 319 0
	lwz 28,4812(31)
	.loc 14 317 0
	li 0,1
.LBE6999:
.LBE6998:
.LBB7016:
.LBB6993:
	.loc 14 302 0
	stw 26,4784(31)
.LBE6993:
.LBE7016:
	.loc 4 653 0
	addi 29,31,4800
.LVL595:
.LBB7017:
.LBB7014:
	.loc 14 319 0
	cmpwi 7,28,0
	.loc 14 317 0
	stw 0,4808(31)
	.loc 14 319 0
	beq- 7,.L268
	.loc 14 321 0
	lwz 3,4800(31)
.LVL596:
	.loc 14 323 0
	lwz 0,4804(31)
	cmpw 7,3,0
	beq- 7,.L268
.LVL597:
.LBB7000:
.LBB7001:
	.loc 14 375 0
	cmpwi 7,3,0
	ble- 7,.L319
.LVL598:
	.loc 14 386 0
	stw 3,4804(31)
	.loc 14 392 0
	mulli 3,3,12
	bl _Znaj
.LVL599:
	.loc 14 393 0
	lwz 0,4800(31)
	.loc 14 392 0
	stw 3,4812(31)
.LVL600:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L270
	li 11,0
	li 10,0
	b .L271
.LVL601:
.L320:
	lwz 3,4812(31)
.LVL602:
.L271:
.LBB7002:
.LBB7003:
	.loc 12 146 0
	mr 9,28
.LBE7003:
.LBE7002:
	.loc 14 394 0
	add 8,3,11
.LVL603:
.LBB7007:
.LBB7004:
	.loc 12 146 0
	lwzux 0,9,11
.LBE7004:
.LBE7007:
	.loc 14 393 0
	addi 10,10,1
.LVL604:
.LBB7008:
.LBB7005:
	.loc 12 146 0
	stwx 0,3,11
.LBE7005:
.LBE7008:
	.loc 14 393 0
	addi 11,11,12
.LVL605:
.LBB7009:
.LBB7006:
	.loc 12 147 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 12 148 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE7006:
.LBE7009:
	.loc 14 393 0
	lwz 0,0(29)
	cmpw 7,10,0
	blt+ 7,.L320
.LVL606:
.L270:
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
.LVL607:
.L268:
.LBE7001:
.LBE7000:
.LBE7014:
.LBE7017:
	.loc 4 654 0
	lwz 26,12(1)
.LVL608:
.LBB7018:
.LBB7019:
.LBB7020:
.LBB7021:
	.loc 14 375 0
	cmpwi 7,26,0
	ble- 7,.L321
	.loc 14 380 0
	lwz 0,4804(31)
	cmpw 7,26,0
	beq- 7,.L275
	.loc 14 387 0
	lwz 0,4800(31)
	.loc 14 385 0
	lwz 28,4812(31)
.LVL609:
	.loc 14 387 0
	cmpw 7,26,0
	.loc 14 386 0
	stw 26,4804(31)
	.loc 14 387 0
	blt- 7,.L322
.L276:
	.loc 14 392 0
	mulli 3,26,12
	bl _Znaj
.LVL610:
	.loc 14 393 0
	lwz 0,4800(31)
	.loc 14 392 0
	stw 3,4812(31)
.LVL611:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L277
	li 11,0
	li 10,0
	b .L278
.LVL612:
.L323:
	lwz 3,4812(31)
.LVL613:
.L278:
.LBB7022:
.LBB7023:
	.loc 12 146 0
	mr 9,28
.LBE7023:
.LBE7022:
	.loc 14 394 0
	add 8,3,11
.LVL614:
.LBB7027:
.LBB7024:
	.loc 12 146 0
	lwzux 0,9,11
.LBE7024:
.LBE7027:
	.loc 14 393 0
	addi 10,10,1
.LVL615:
.LBB7028:
.LBB7025:
	.loc 12 146 0
	stwx 0,3,11
.LBE7025:
.LBE7028:
	.loc 14 393 0
	addi 11,11,12
.LVL616:
.LBB7029:
.LBB7026:
	.loc 12 147 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 12 148 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE7026:
.LBE7029:
	.loc 14 393 0
	lwz 0,0(29)
	cmpw 7,10,0
	blt+ 7,.L323
.LVL617:
.L277:
	.loc 14 398 0
	cmpwi 7,28,0
	beq- 7,.L307
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
.L307:
	lwz 0,12(1)
.LVL618:
.L274:
.LBE7021:
.LBE7020:
.LBE7019:
.LBE7018:
	.loc 4 655 0
	cmpwi 7,0,0
	li 0,0
.LBB7043:
.LBB7038:
	.loc 14 302 0
	stw 26,4800(31)
.LBE7038:
.LBE7043:
	.loc 4 655 0
	stw 0,16(1)
	ble- 7,.L280
.L298:
.LBB7044:
.LBB7039:
.LBB7035:
.LBB7032:
	.loc 14 393 0
	li 0,0
.L281:
.LVL619:
.LBE7032:
.LBE7035:
.LBE7039:
.LBE7044:
.LBB7045:
.LBB7046:
	.loc 14 589 0
	lwz 4,4796(31)
	slwi 0,0,2
.LVL620:
.LBE7046:
.LBE7045:
	.loc 4 656 0
	mr 3,30
	add 4,4,0
	bl _ZN13idRestoreGame9ReadJointER13jointHandle_t
.LVL621:
.LBB7047:
.LBB7048:
	.loc 14 589 0
	lwz 0,16(1)
.LBE7048:
.LBE7047:
	.loc 4 657 0
	mr 3,30
.LBB7050:
.LBB7049:
	.loc 14 589 0
	lwz 4,4812(31)
	mulli 0,0,12
.LBE7049:
.LBE7050:
	.loc 4 657 0
	add 4,4,0
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
.LVL622:
	.loc 4 655 0
	lwz 9,16(1)
	addi 0,9,1
	lwz 9,12(1)
	stw 0,16(1)
	cmpw 7,9,0
	bgt+ 7,.L281
.L280:
	.loc 4 660 0
	mr 3,30
	addi 4,31,4836
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 661 0
	mr 3,30
	addi 4,31,4840
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 663 0
	mr 3,30
	addi 4,1,12
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 664 0
	lwz 26,12(1)
.LVL623:
	addi 28,31,4848
.LVL624:
.LBB7051:
.LBB7052:
.LBB7053:
.LBB7054:
	.loc 14 375 0
	cmpwi 4,26,0
	ble- 4,.L324
	.loc 14 380 0
	lwz 0,4852(31)
	cmpw 7,26,0
	beq- 7,.L285
	.loc 14 387 0
	lwz 0,4848(31)
	.loc 14 385 0
	lwz 29,4860(31)
.LVL625:
	.loc 14 387 0
	cmpw 7,26,0
	.loc 14 386 0
	stw 26,4852(31)
	.loc 14 387 0
	blt- 7,.L325
.L286:
	.loc 14 392 0
	mulli 3,26,12
	bl _Znaj
.LVL626:
	beq- 4,.L287
.LBB7055:
.LBB7056:
	.loc 3 163 0
	mtctr 26
.LBE7056:
.LBE7055:
	.loc 14 392 0
	mr 9,3
.LBB7058:
.LBB7057:
	.loc 3 161 0
	li 0,0
	.loc 3 163 0
	li 11,-1
.L288:
	.loc 3 161 0
	stw 0,0(9)
	.loc 3 162 0
	stw 0,4(9)
	.loc 3 163 0
	stw 11,8(9)
	addi 9,9,12
.LBE7057:
.LBE7058:
	.loc 14 392 0
	bdnz .L288
.L287:
	.loc 14 393 0
	lwz 0,4848(31)
	.loc 14 392 0
	stw 3,4860(31)
.LVL627:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L289
	li 11,0
	li 10,0
	b .L290
.LVL628:
.L326:
	lwz 3,4860(31)
.LVL629:
.L290:
	.loc 14 394 0
	mr 9,29
	add 8,3,11
	lwzux 6,9,11
	.loc 14 393 0
	addi 10,10,1
.LVL630:
	.loc 14 394 0
	lwz 0,8(9)
	lwz 7,4(9)
	stwx 6,3,11
	.loc 14 393 0
	addi 11,11,12
	.loc 14 394 0
	stw 7,4(8)
	stw 0,8(8)
	.loc 14 393 0
	lwz 0,0(28)
	cmpw 7,10,0
	blt+ 7,.L326
.LVL631:
.L289:
	.loc 14 398 0
	cmpwi 7,29,0
	beq- 7,.L285
	.loc 14 399 0
	mr 3,29
	bl _ZdaPv
.LVL632:
.L285:
.LBE7054:
.LBE7053:
.LBE7052:
.LBE7051:
	.loc 4 665 0
	li 0,0
.LBB7072:
.LBB7069:
	.loc 14 302 0
	stw 26,4848(31)
.LBE7069:
.LBE7072:
	.loc 4 665 0
	stw 0,16(1)
.L291:
.LVL633:
.LBB7073:
.LBB7074:
	.loc 14 589 0
	mulli 0,0,12
.LVL634:
	lwz 4,4860(31)
.LBE7074:
.LBE7073:
	.loc 4 666 0
	mr 3,30
	add 4,4,0
	bl _ZN13idRestoreGame12ReadParticleERPK14idDeclParticle
.LVL635:
.LBB7075:
.LBB7076:
	.loc 14 589 0
	lwz 4,16(1)
.LBE7076:
.LBE7075:
	.loc 4 667 0
	mr 3,30
.LBB7078:
.LBB7077:
	.loc 14 589 0
	lwz 0,4860(31)
	mulli 4,4,12
	add 4,0,4
.LBE7077:
.LBE7078:
	.loc 4 667 0
	addi 4,4,4
	bl _ZN13idRestoreGame7ReadIntERi
.LVL636:
.LBB7079:
.LBB7080:
	.loc 14 589 0
	lwz 4,16(1)
.LBE7080:
.LBE7079:
	.loc 4 668 0
	mr 3,30
.LBB7082:
.LBB7081:
	.loc 14 589 0
	lwz 0,4860(31)
	mulli 4,4,12
	add 4,0,4
.LBE7081:
.LBE7082:
	.loc 4 668 0
	addi 4,4,8
	bl _ZN13idRestoreGame9ReadJointER13jointHandle_t
.LVL637:
	.loc 4 665 0
	lwz 11,16(1)
	lwz 9,4848(31)
	addi 0,11,1
	cmpw 7,9,0
	stw 0,16(1)
	bgt+ 7,.L291
.L284:
	.loc 4 670 0
	mr 3,30
	addi 4,31,4844
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 671 0
	mr 3,30
	addi 4,31,4845
	bl _ZN13idRestoreGame8ReadBoolERb
.LVL638:
.LBB7083:
.LBB7084:
	.loc 7 600 0
	mr 3,30
	addi 4,31,5120
	bl _ZN13idRestoreGame7ReadIntERi
.LBE7084:
.LBE7083:
	.loc 4 674 0
	mr 3,30
	addi 4,31,5124
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 675 0
	mr 3,30
	addi 4,31,5136
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 676 0
	mr 3,30
	addi 4,31,5148
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 677 0
	mr 3,30
	addi 4,31,5160
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 4 679 0
	mr 3,30
	addi 4,31,5172
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 4 681 0
	mr 3,30
	addi 4,31,5088
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 4 682 0
	mr 3,30
	addi 4,31,5100
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 4 684 0
	mr 3,30
	addi 4,31,4816
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 685 0
	mr 3,30
	addi 4,31,4820
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 686 0
	mr 3,30
	addi 4,31,4824
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 687 0
	mr 3,30
	addi 4,31,4828
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 4 688 0
	mr 3,30
	addi 4,31,4832
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 690 0
	mr 3,30
	addi 4,31,5076
	bl _ZN13idRestoreGame9ReadJointER13jointHandle_t
	.loc 4 691 0
	mr 3,30
	addi 4,31,5080
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 4 693 0
	mr 3,30
	addi 4,31,5112
	bl _ZN13idRestoreGame9ReadJointER13jointHandle_t
	.loc 4 694 0
	mr 3,30
	addi 4,31,5116
	bl _ZN13idRestoreGame9ReadJointER13jointHandle_t
	.loc 4 695 0
	mr 3,30
	addi 4,31,4492
	bl _ZN13idRestoreGame9ReadJointER13jointHandle_t
	.loc 4 697 0
	mr 3,30
	addi 4,1,8
	bl _ZN13idRestoreGame8ReadBoolERb
.LVL639:
.LBB7085:
.LBB7086:
	.loc 11 262 0
	lis 4,.LC70@ha
	lis 5,.LC71@ha
	addi 3,31,100
	la 4,.LC70@l(4)
	la 5,.LC71@l(5)
	addi 6,1,20
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LBE7086:
.LBE7085:
.LBB7087:
.LBB7088:
	.loc 4 701 0
	lis 9,g_gravity+44@ha
.LBE7088:
.LBE7087:
.LBB7091:
.LBB7092:
	.loc 6 489 0
	lfs 12,20(1)
.LBE7092:
.LBE7091:
.LBB7095:
.LBB7089:
	.file 20 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/CVarSystem.h"
	.loc 20 144 0
	lwz 9,g_gravity+44@l(9)
.LBE7089:
.LBE7095:
	.loc 4 702 0
	lis 3,gameLocal@ha
.LBB7096:
.LBB7093:
	.loc 6 490 0
	lfs 13,24(1)
.LBE7093:
.LBE7096:
	.loc 4 702 0
	la 3,gameLocal@l(3)
.LBB7097:
.LBB7090:
	.loc 20 144 0
	lfs 0,40(9)
.LVL640:
.LBE7090:
.LBE7097:
.LBB7098:
.LBB7094:
	.loc 6 491 0
	lfs 11,28(1)
	.loc 6 489 0
	fmuls 12,12,0
	.loc 6 490 0
	fmuls 13,13,0
	.loc 6 491 0
	fmuls 0,11,0
	.loc 6 489 0
	stfs 12,20(1)
	.loc 6 490 0
	stfs 13,24(1)
	.loc 6 491 0
	stfs 0,28(1)
.LBE7094:
.LBE7098:
	.loc 4 702 0
	bl _ZNK11idGameLocal10GetGravityEv
.LVL641:
.LBB7099:
.LBB7100:
.LBB7101:
	.loc 6 497 0
	lfs 0,0(3)
	lfs 13,20(1)
	fcmpu 7,13,0
	bne- 7,.L292
	lfs 0,4(3)
	lfs 13,24(1)
	fcmpu 7,13,0
	beq- 7,.L327
.LVL642:
.L292:
.LBE7101:
.LBE7100:
.LBE7099:
	.loc 4 706 0
	mr 3,31
	bl _ZN7idActor14SetCombatModelEv
	.loc 4 707 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
	.loc 4 709 0
	mr 3,31
	bl _ZN4idAI15InitMuzzleFlashEv
	.loc 4 712 0
	mr 3,31
	bl _ZN4idAI19LinkScriptVariablesEv
.LVL643:
	.loc 4 714 0
	lbz 0,8(1)
.LVL644:
	cmpwi 7,0,0
.LVL645:
	beq- 7,.L293
	.loc 4 715 0
	mr 3,31
	mr 4,27
	bl _ZN8idEntity14RestorePhysicsEP9idPhysics
.LEHE22:
.LVL646:
.L293:
.LBB7104:
.LBB7105:
.LBB7106:
	.loc 15 501 0
	addi 3,1,32
.LEHB23:
	bl _ZN5idStr8FreeDataEv
.LEHE23:
.LVL647:
.LBE7106:
.LBE7105:
.LBE7104:
.LBE7127:
	.loc 4 717 0
	lwz 0,108(1)
	lwz 12,76(1)
	mtlr 0
	lwz 26,80(1)
.LVL648:
	lwz 27,84(1)
	mtcrf 8,12
	lwz 28,88(1)
.LVL649:
	lwz 29,92(1)
	lwz 30,96(1)
.LVL650:
	lwz 31,100(1)
.LVL651:
	addi 1,1,104
	.cfi_remember_state
.LCFI88:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL652:
.L317:
.LCFI89:
	.cfi_restore_state
.LBB7128:
.LBB7107:
.LBB6994:
.LBB6990:
.LBB6987:
	.loc 14 388 0
	stw 26,4784(31)
	b .L265
.LVL653:
.L322:
.LBE6987:
.LBE6990:
.LBE6994:
.LBE7107:
.LBB7108:
.LBB7040:
.LBB7036:
.LBB7033:
	stw 26,4800(31)
	b .L276
.LVL654:
.L325:
.LBE7033:
.LBE7036:
.LBE7040:
.LBE7108:
.LBB7109:
.LBB7070:
.LBB7066:
.LBB7063:
	stw 26,4848(31)
	b .L286
.LVL655:
.L311:
.LBE7063:
.LBE7066:
.LBE7070:
.LBE7109:
.LBB7110:
.LBB6940:
.LBB6934:
.LBB6929:
	stw 26,4568(31)
	b .L250
.LVL656:
.L327:
.LBE6929:
.LBE6934:
.LBE6940:
.LBE7110:
.LBB7111:
.LBB7103:
.LBB7102:
	.loc 6 497 0
	lfs 0,8(3)
	lfs 13,28(1)
	fcmpu 7,13,0
	bne- 7,.L292
.LBE7102:
.LBE7103:
.LBE7111:
	.loc 4 703 0
	mr 3,31
.LVL657:
.LEHB24:
	bl _ZN4idAI6SetAASEv
	b .L292
.LVL658:
.L313:
	.loc 4 616 0
	lis 3,gameLocal@ha
	lwz 4,36(1)
	la 3,gameLocal@l(3)
	li 5,1
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LEHE24:
	stw 3,4584(31)
	b .L257
.LVL659:
.L249:
	.loc 4 609 0
	li 0,0
.LBB7112:
.LBB6941:
	.loc 14 302 0
	stw 26,4568(31)
.LBE6941:
.LBE7112:
	.loc 4 609 0
	stw 0,16(1)
.LVL660:
	b .L297
.LVL661:
.L275:
	.loc 4 655 0
	li 0,0
.LBB7113:
.LBB7041:
	.loc 14 302 0
	stw 26,4800(31)
.LBE7041:
.LBE7113:
	.loc 4 655 0
	stw 0,16(1)
	b .L298
.LVL662:
.L310:
.LBB7114:
.LBB6942:
.LBB6935:
.LBB6930:
.LBB6924:
.LBB6925:
	.loc 14 193 0
	lwz 3,4580(31)
	mr 0,26
	cmpwi 7,3,0
	beq- 7,.L247
	.loc 14 194 0
	bl _ZdaPv
	lwz 0,12(1)
.L247:
	.loc 14 197 0
	li 9,0
	stw 9,4580(31)
	.loc 14 199 0
	stw 9,4572(31)
	b .L248
.LVL663:
.L316:
.LBE6925:
.LBE6924:
.LBE6930:
.LBE6935:
.LBE6942:
.LBE7114:
.LBB7115:
.LBB6995:
.LBB6991:
.LBB6988:
.LBB6984:
.LBB6985:
	.loc 14 193 0
	lwz 3,4796(31)
	cmpwi 7,3,0
	beq- 7,.L263
	.loc 14 194 0
	bl _ZdaPv
.L263:
	.loc 14 197 0
	li 0,0
	stw 0,4796(31)
	.loc 14 199 0
	stw 0,4788(31)
	b .L264
.LVL664:
.L324:
.LBE6985:
.LBE6984:
.LBE6988:
.LBE6991:
.LBE6995:
.LBE7115:
.LBB7116:
.LBB7071:
.LBB7067:
.LBB7064:
.LBB7059:
.LBB7060:
	.loc 14 193 0
	lwz 3,4860(31)
	cmpwi 7,3,0
	beq- 7,.L283
	.loc 14 194 0
	bl _ZdaPv
.L283:
	.loc 14 197 0
	li 0,0
.LBE7060:
.LBE7059:
.LBE7064:
.LBE7067:
	.loc 14 302 0
	stw 26,4848(31)
.LBB7068:
.LBB7065:
.LBB7062:
.LBB7061:
	.loc 14 197 0
	stw 0,4860(31)
	.loc 14 199 0
	stw 0,4852(31)
.LBE7061:
.LBE7062:
.LBE7065:
.LBE7068:
.LBE7071:
.LBE7116:
	.loc 4 665 0
	stw 0,16(1)
	b .L284
.LVL665:
.L321:
.LBB7117:
.LBB7042:
.LBB7037:
.LBB7034:
.LBB7030:
.LBB7031:
	.loc 14 193 0
	lwz 3,4812(31)
	mr 0,26
	cmpwi 7,3,0
	beq- 7,.L273
	.loc 14 194 0
	bl _ZdaPv
	lwz 0,12(1)
.L273:
	.loc 14 197 0
	li 9,0
	stw 9,4812(31)
	.loc 14 199 0
	stw 9,4804(31)
	b .L274
.LVL666:
.L314:
.LBE7031:
.LBE7030:
.LBE7034:
.LBE7037:
.LBE7042:
.LBE7117:
.LBB7118:
.LBB6976:
.LBB6973:
.LBB6971:
.LBB6968:
.LBB6969:
	.loc 14 194 0
	mr 3,28
.LVL667:
	bl _ZdaPv
.LVL668:
	.loc 14 197 0
	li 0,0
	stw 0,4796(31)
	.loc 14 198 0
	stw 0,4784(31)
	.loc 14 199 0
	stw 0,4788(31)
	b .L258
.LVL669:
.L308:
.LBE6969:
.LBE6968:
.LBE6971:
.LBE6973:
.LBE6976:
.LBE7118:
.LBB7119:
.LBB6911:
.LBB6910:
.LBB6909:
.LBB6907:
.LBB6908:
	.loc 14 194 0
	mr 3,28
.LVL670:
	bl _ZdaPv
.LVL671:
	.loc 14 197 0
	li 0,0
	stw 0,4580(31)
	.loc 14 198 0
	stw 0,4568(31)
	.loc 14 199 0
	stw 0,4572(31)
	b .L242
.LVL672:
.L319:
.LBE6908:
.LBE6907:
.LBE6909:
.LBE6910:
.LBE6911:
.LBE7119:
.LBB7120:
.LBB7015:
.LBB7013:
.LBB7012:
.LBB7010:
.LBB7011:
	.loc 14 194 0
	mr 3,28
.LVL673:
	bl _ZdaPv
.LVL674:
	.loc 14 197 0
	li 0,0
	stw 0,4812(31)
	.loc 14 198 0
	stw 0,4800(31)
	.loc 14 199 0
	stw 0,4804(31)
	b .L268
.LVL675:
.L301:
	mr 31,3
.LVL676:
.LBE7011:
.LBE7010:
.LBE7012:
.LBE7013:
.LBE7015:
.LBE7120:
.LBB7121:
.LBB7122:
.LBB7123:
	.loc 15 501 0
	addi 3,1,32
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB25:
	bl _Unwind_Resume
.LEHE25:
.LBE7123:
.LBE7122:
.LBE7121:
.LBE7128:
	.cfi_endproc
.LFE2859:
	.section	.gcc_except_table
.LLSDA2859:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2859-.LLSDACSB2859
.LLSDACSB2859:
	.uleb128 .LEHB21-.LFB2859
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB2859
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L301-.LFB2859
	.uleb128 0
	.uleb128 .LEHB23-.LFB2859
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB2859
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L301-.LFB2859
	.uleb128 0
	.uleb128 .LEHB25-.LFB2859
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE2859:
	.section	".text"
	.size	_ZN4idAI7RestoreEP13idRestoreGame, .-_ZN4idAI7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK4idAI9DrawRouteEv
	.type	_ZNK4idAI9DrawRouteEv, @function
_ZNK4idAI9DrawRouteEv:
.LFB2871:
	.loc 4 1343 0
	.cfi_startproc
.LVL677:
	mflr 0
	stwu 1,-24(1)
.LCFI90:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 29,12(1)
	stw 31,20(1)
	.loc 4 1344 0
	lwz 29,3944(3)
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,29,0
	beq- 7,.L328
	.loc 4 1344 0 is_stmt 0 discriminator 1
	lwz 0,4004(3)
	cmpwi 7,0,0
	beq- 7,.L328
	.loc 4 1344 0 discriminator 2
	lwz 0,3956(3)
	cmpwi 7,0,0
	beq- 7,.L328
	.loc 4 1344 0 discriminator 3
	cmpwi 7,0,12
	beq- 7,.L328
	.loc 4 1344 0 discriminator 4
	cmpwi 7,0,1
	beq- 7,.L328
	.loc 4 1344 0 discriminator 5
	cmpwi 7,0,2
	beq- 7,.L328
	.loc 4 1344 0 discriminator 6
	cmpwi 7,0,10
	beq- 7,.L328
.LVL678:
.LBB7131:
.LBB7132:
	.loc 4 1345 0 is_stmt 1
	lwz 0,3952(3)
	.loc 4 1346 0
	li 4,0
	lwz 9,0(29)
	addi 3,3,4216
.LVL679:
	.loc 4 1345 0
	cmpwi 7,0,3
	beq- 7,.L332
	.loc 4 1348 0
	lwz 31,116(9)
.L331:
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lwz 5,4004(30)
	mr 4,3
	addi 6,30,3964
	mr 3,29
	mtctr 31
	bctrl
.LVL680:
.L328:
.LBE7132:
.LBE7131:
	.loc 4 1351 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL681:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI91:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL682:
.L332:
.LCFI92:
	.cfi_restore_state
.LBB7134:
.LBB7133:
	.loc 4 1346 0
	lwz 31,120(9)
	b .L331
.LBE7133:
.LBE7134:
	.cfi_endproc
.LFE2871:
	.size	_ZNK4idAI9DrawRouteEv, .-_ZNK4idAI9DrawRouteEv
	.align 2
	.globl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	.type	_ZNK4idAI10ReachedPosERK6idVec313moveCommand_t, @function
_ZNK4idAI10ReachedPosERK6idVec313moveCommand_t:
.LFB2872:
	.loc 4 1358 0
	.cfi_startproc
.LVL683:
	mflr 0
	stwu 1,-16(1)
.LCFI93:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB7260:
	.loc 4 1359 0
	lwz 0,3952(3)
	.cfi_offset 65, 4
.LBB7261:
	.loc 4 1361 0
	addi 3,3,4216
.LVL684:
.LBE7261:
	.loc 4 1359 0
	cmpwi 7,0,2
	beq- 7,.L355
.LBB7298:
	.loc 4 1366 0
	cmpwi 7,5,3
	beq- 7,.L336
	.loc 4 1366 0 is_stmt 0 discriminator 1
	cmpwi 7,5,5
	beq- 7,.L336
.LVL685:
.LBB7299:
	.loc 4 1372 0 is_stmt 1
	li 4,0
.LVL686:
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL687:
.LBB7300:
.LBB7301:
.LBB7302:
	.loc 6 456 0
	lis 9,.LC74@ha
	lfs 12,0(3)
	lfs 0,.LC74@l(9)
.LBE7302:
.LBE7301:
.LBE7300:
.LBB7317:
.LBB7318:
.LBB7319:
.LBB7320:
	.loc 6 402 0
	lfs 13,0(31)
.LBE7320:
.LBE7319:
.LBE7318:
.LBE7317:
.LBB7332:
.LBB7307:
.LBB7303:
	.loc 6 456 0
	fadds 11,12,0
	.loc 6 457 0
	lfs 10,4(3)
	.loc 6 458 0
	lfs 9,8(3)
.LVL688:
.LBE7303:
.LBE7307:
.LBE7332:
.LBB7333:
.LBB7325:
	.loc 4 1378 0
	li 3,0
.LVL689:
	.loc 5 354 0
	fcmpu 7,11,13
	bgt- 7,.L335
.LVL690:
.LBE7325:
.LBE7333:
.LBB7334:
.LBB7308:
.LBB7304:
	.loc 6 457 0
	fadds 0,10,0
.LBE7304:
.LBE7308:
.LBE7334:
.LBB7335:
.LBB7326:
.LBB7321:
.LBB7322:
	.loc 6 402 0
	lfs 11,4(31)
.LVL691:
.LBE7322:
.LBE7321:
	.loc 5 354 0
	fcmpu 7,0,11
	bgt- 7,.L335
.LVL692:
.LBE7326:
.LBE7335:
.LBB7336:
.LBB7309:
.LBB7305:
	.loc 6 458 0
	lis 9,.LC24@ha
.LBE7305:
.LBE7309:
.LBE7336:
.LBB7337:
.LBB7327:
.LBB7323:
.LBB7324:
	.loc 6 402 0
	lfs 0,8(31)
.LVL693:
.LBE7324:
.LBE7323:
.LBE7327:
.LBE7337:
.LBB7338:
.LBB7310:
.LBB7306:
	.loc 6 458 0
	lfs 8,.LC24@l(9)
	fadds 8,9,8
.LBE7306:
.LBE7310:
.LBE7338:
.LBB7339:
.LBB7328:
	.loc 5 354 0
	fcmpu 7,8,0
	bgt- 7,.L335
.LVL694:
.LBE7328:
.LBE7339:
.LBB7340:
.LBB7311:
.LBB7312:
	.loc 6 456 0
	lis 9,.LC1@ha
	lfs 8,.LC1@l(9)
	fadds 12,12,8
.LBE7312:
.LBE7311:
.LBE7340:
.LBB7341:
.LBB7329:
	.loc 5 354 0
	fcmpu 7,12,13
	blt- 7,.L335
.LVL695:
.L354:
.LBE7329:
.LBE7341:
.LBB7342:
.LBB7315:
.LBB7313:
	.loc 6 457 0
	fadds 10,10,8
.LBE7313:
.LBE7315:
.LBE7342:
.LBB7343:
.LBB7330:
	.loc 5 354 0
	fcmpu 7,10,11
	blt- 7,.L335
.LVL696:
.LBE7330:
.LBE7343:
.LBB7344:
.LBB7316:
.LBB7314:
	.loc 6 458 0
	lis 9,.LC20@ha
	lfs 13,.LC20@l(9)
	fadds 9,9,13
.LBE7314:
.LBE7316:
.LBE7344:
.LBB7345:
.LBB7331:
	.loc 5 354 0
	fcmpu 7,9,0
	mfcr 3
	rlwinm 3,3,29,1
	.loc 4 1358 0
	xori 3,3,1
.LVL697:
.L335:
.LBE7331:
.LBE7345:
.LBE7299:
.LBE7298:
.LBE7260:
	.loc 4 1379 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL698:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI94:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL699:
.L336:
.LCFI95:
	.cfi_restore_state
.LBB7384:
.LBB7382:
	.loc 4 1367 0
	li 4,-1
.LVL700:
	bl _ZNK15idPhysics_Actor12GetAbsBoundsEi
.LVL701:
.LBB7346:
.LBB7347:
	.loc 5 319 0
	lis 11,.LC62@ha
.LBE7347:
.LBE7346:
.LBB7355:
.LBB7356:
.LBB7357:
	.loc 6 424 0
	lfs 13,0(31)
.LBE7357:
.LBE7356:
.LBE7355:
	.loc 4 1367 0
	mr 9,3
.LVL702:
.LBB7360:
.LBB7348:
	.loc 5 319 0
	lfs 0,.LC62@l(11)
.LBE7348:
.LBE7360:
.LBB7361:
.LBB7362:
	.loc 5 362 0
	lfs 12,0(3)
	.loc 4 1378 0
	li 3,0
.LBE7362:
.LBE7361:
.LBB7369:
.LBB7349:
	.loc 5 319 0
	fadds 11,13,0
.LBE7349:
.LBE7369:
.LBB7370:
.LBB7359:
.LBB7358:
	.loc 6 425 0
	lfs 10,4(31)
	.loc 6 426 0
	lfs 9,8(31)
.LVL703:
.LBE7358:
.LBE7359:
.LBE7370:
.LBB7371:
.LBB7363:
	.loc 5 362 0
	fcmpu 7,11,12
	blt- 7,.L335
.LVL704:
.LBE7363:
.LBE7371:
.LBB7372:
.LBB7350:
	.loc 5 319 0
	fadds 11,10,0
.LVL705:
.LBE7350:
.LBE7372:
.LBB7373:
.LBB7364:
	.loc 5 362 0
	lfs 12,4(9)
	fcmpu 7,11,12
	blt- 7,.L335
.LVL706:
.LBE7364:
.LBE7373:
.LBB7374:
.LBB7351:
	.loc 5 319 0
	fadds 11,9,0
.LBE7351:
.LBE7374:
.LBB7375:
.LBB7365:
	.loc 5 362 0
	lfs 12,8(9)
	fcmpu 7,11,12
	blt- 7,.L335
.LVL707:
.LBE7365:
.LBE7375:
.LBB7376:
.LBB7352:
	.loc 5 319 0
	fsubs 13,13,0
.LBE7352:
.LBE7376:
.LBB7377:
.LBB7366:
	.loc 5 362 0
	lfs 12,12(9)
	fcmpu 7,13,12
	bgt- 7,.L335
.LVL708:
.LBE7366:
.LBE7377:
.LBB7378:
.LBB7353:
	.loc 5 319 0
	fsubs 10,10,0
.LBE7353:
.LBE7378:
.LBB7379:
.LBB7367:
	.loc 5 362 0
	lfs 13,16(9)
	fcmpu 7,10,13
	bgt- 7,.L335
.LVL709:
.LBE7367:
.LBE7379:
.LBB7380:
.LBB7354:
	.loc 5 319 0
	fsubs 0,9,0
.LBE7354:
.LBE7380:
.LBB7381:
.LBB7368:
	.loc 5 362 0
	lfs 13,20(9)
	fcmpu 7,0,13
	mfcr 3
	rlwinm 3,3,30,1
	.loc 4 1358 0
	xori 3,3,1
	b .L335
.LVL710:
.L355:
.LBE7368:
.LBE7381:
.LBE7382:
.LBB7383:
	.loc 4 1361 0
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL711:
.LBB7262:
.LBB7263:
.LBB7264:
	.loc 6 456 0
	lis 9,.LC72@ha
	lfs 12,0(3)
	lfs 0,.LC72@l(9)
.LBE7264:
.LBE7263:
.LBE7262:
.LBB7275:
.LBB7276:
.LBB7277:
.LBB7278:
	.loc 6 402 0
	lfs 13,0(31)
.LBE7278:
.LBE7277:
.LBE7276:
.LBE7275:
.LBB7288:
.LBB7269:
.LBB7265:
	.loc 6 456 0
	fadds 11,12,0
	.loc 6 457 0
	lfs 10,4(3)
	.loc 6 458 0
	lfs 9,8(3)
.LVL712:
.LBE7265:
.LBE7269:
.LBE7288:
.LBB7289:
.LBB7283:
	.loc 4 1378 0
	li 3,0
.LVL713:
	.loc 5 354 0
	fcmpu 7,11,13
	bgt- 7,.L335
.LVL714:
.LBE7283:
.LBE7289:
.LBB7290:
.LBB7270:
.LBB7266:
	.loc 6 457 0
	fadds 0,10,0
.LBE7266:
.LBE7270:
.LBE7290:
.LBB7291:
.LBB7284:
.LBB7279:
.LBB7280:
	.loc 6 402 0
	lfs 11,4(31)
.LVL715:
.LBE7280:
.LBE7279:
	.loc 5 354 0
	fcmpu 7,0,11
	bgt- 7,.L335
.LVL716:
.LBE7284:
.LBE7291:
.LBB7292:
.LBB7271:
.LBB7267:
	.loc 6 458 0
	lis 9,.LC24@ha
.LBE7267:
.LBE7271:
.LBE7292:
.LBB7293:
.LBB7285:
.LBB7281:
.LBB7282:
	.loc 6 402 0
	lfs 0,8(31)
.LVL717:
.LBE7282:
.LBE7281:
.LBE7285:
.LBE7293:
.LBB7294:
.LBB7272:
.LBB7268:
	.loc 6 458 0
	lfs 8,.LC24@l(9)
	fadds 8,9,8
.LBE7268:
.LBE7272:
.LBE7294:
.LBB7295:
.LBB7286:
	.loc 5 354 0
	fcmpu 7,8,0
	bgt- 7,.L335
.LVL718:
.LBE7286:
.LBE7295:
.LBB7296:
.LBB7273:
.LBB7274:
	.loc 6 456 0
	lis 9,.LC73@ha
	lfs 8,.LC73@l(9)
	fadds 12,12,8
.LBE7274:
.LBE7273:
.LBE7296:
.LBB7297:
.LBB7287:
	.loc 5 354 0
	fcmpu 7,12,13
	blt- 7,.L335
	b .L354
.LBE7287:
.LBE7297:
.LBE7383:
.LBE7384:
	.cfi_endproc
.LFE2872:
	.size	_ZNK4idAI10ReachedPosERK6idVec313moveCommand_t, .-_ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	.align 2
	.globl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.type	_ZNK4idAI21PointReachableAreaNumERK6idVec3f, @function
_ZNK4idAI21PointReachableAreaNumERK6idVec3f:
.LFB2873:
	.loc 4 1386 0
	.cfi_startproc
.LVL719:
	mflr 0
	stwu 1,-64(1)
.LCFI96:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stfd 31,56(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,68(1)
.LBB7385:
	.loc 4 1391 0
	lwz 9,3944(3)
	.loc 4 1392 0
	li 3,0
.LVL720:
	.loc 4 1391 0
	cmpwi 7,9,0
	beq- 7,.L357
	.cfi_offset 65, 4
	.loc 4 1395 0
	lwz 11,0(9)
	mr 3,9
	lwz 0,20(11)
	stw 4,40(1)
	mtctr 0
	bctrl
.LVL721:
	.loc 4 1400 0
	lwz 0,3952(31)
.LBB7386:
.LBB7387:
	.loc 6 439 0
	lfs 13,16(3)
.LBE7387:
.LBE7386:
.LBB7391:
.LBB7392:
	.loc 6 426 0
	lis 9,.LC61@ha
.LBE7392:
.LBE7391:
.LBB7397:
.LBB7388:
	.loc 6 439 0
	lfs 0,20(3)
.LBE7388:
.LBE7397:
	.loc 4 1400 0
	cmpwi 7,0,3
.LBB7398:
.LBB7389:
	.loc 6 439 0
	lfs 12,24(3)
	fmuls 13,31,13
	fmuls 0,31,0
.LVL722:
.LBE7389:
.LBE7398:
.LBB7399:
.LBB7393:
	.loc 6 426 0
	lwz 0,.LC61@l(9)
.LBE7393:
.LBE7399:
.LBB7400:
.LBB7390:
	.loc 6 439 0
	fmuls 31,31,12
.LVL723:
.LBE7390:
.LBE7400:
	.loc 4 1401 0
	lwz 3,3944(31)
.LVL724:
.LBB7401:
.LBB7402:
	.loc 6 420 0
	fneg 11,13
.LBE7402:
.LBE7401:
.LBB7405:
.LBB7394:
	.loc 6 424 0
	stfs 13,20(1)
.LBE7394:
.LBE7405:
.LBB7406:
.LBB7403:
	.loc 6 420 0
	fneg 12,0
.LBE7403:
.LBE7406:
.LBB7407:
.LBB7395:
	.loc 6 425 0
	stfs 0,24(1)
.LBE7395:
.LBE7407:
.LBB7408:
.LBB7404:
	.loc 6 420 0
	fneg 31,31
.LVL725:
.LBE7404:
.LBE7408:
.LBB7409:
.LBB7396:
	.loc 6 426 0
	stw 0,28(1)
.LBE7396:
.LBE7409:
.LBB7410:
.LBB7411:
	.loc 6 424 0
	stfs 11,8(1)
.LBE7411:
.LBE7410:
	.loc 4 1401 0
	addi 5,1,8
.LBB7413:
.LBB7412:
	.loc 6 425 0
	stfs 12,12(1)
	.loc 6 426 0
	stfs 31,16(1)
.LVL726:
.LBE7412:
.LBE7413:
	.loc 4 1400 0
	lwz 4,40(1)
	.loc 4 1401 0
	lwz 9,0(3)
	lwz 0,28(9)
	.loc 4 1400 0
	beq- 7,.L360
	.loc 4 1403 0
	li 6,64
	mtctr 0
	bctrl
.LVL727:
.L357:
.LBE7385:
	.loc 4 1407 0
	lwz 0,68(1)
	lwz 31,52(1)
.LVL728:
	mtlr 0
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI97:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	blr
.LVL729:
.L360:
.LCFI98:
	.cfi_restore_state
.LBB7414:
	.loc 4 1401 0
	mtctr 0
	li 6,192
	bctrl
.LVL730:
.LBE7414:
	.loc 4 1407 0
	lwz 0,68(1)
	lwz 31,52(1)
.LVL731:
	mtlr 0
	lfd 31,56(1)
.LVL732:
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 63
.LCFI99:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2873:
	.size	_ZNK4idAI21PointReachableAreaNumERK6idVec3f, .-_ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.align 2
	.globl _ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
	.type	_ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_, @function
_ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_:
.LFB2874:
	.loc 4 1414 0
	.cfi_startproc
.LVL733:
	mflr 0
	stwu 1,-64(1)
.LCFI100:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 26,40(1)
	mr 26,8
	.cfi_offset 26, -24
	stw 27,44(1)
.LBB7415:
	.loc 4 1419 0
	li 27,0
	.cfi_offset 27, -20
.LBE7415:
	.loc 4 1414 0
	stw 28,48(1)
	mr 28,7
	.cfi_offset 28, -16
	stw 29,52(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,56(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
.LBB7432:
	.loc 4 1418 0
	lwz 9,3944(3)
	cmpwi 7,9,0
	beq- 7,.L362
	.cfi_offset 65, 4
.LVL734:
.LBB7416:
.LBB7417:
	.loc 6 425 0
	lwz 11,4(6)
.LBE7417:
.LBE7416:
	.loc 4 1423 0
	mr 4,5
.LVL735:
.LBB7421:
.LBB7418:
	.loc 6 426 0
	lwz 0,8(6)
.LBE7418:
.LBE7421:
	.loc 4 1423 0
	mr 3,9
.LVL736:
.LBB7422:
.LBB7419:
	.loc 6 424 0
	lwz 10,0(6)
.LBE7419:
.LBE7422:
	.loc 4 1423 0
	addi 5,1,20
.LVL737:
.LBB7423:
.LBB7420:
	.loc 6 426 0
	stw 0,28(1)
	.loc 6 424 0
	stw 10,20(1)
	.loc 6 425 0
	stw 11,24(1)
.LBE7420:
.LBE7423:
	.loc 4 1423 0
	lwz 11,0(9)
	lwz 0,36(11)
	mtctr 0
	bctrl
.LVL738:
	.loc 4 1424 0
	cmpwi 7,30,0
	bne- 7,.L368
.LVL739:
.L362:
.LBE7432:
	.loc 4 1439 0
	lwz 0,68(1)
	mr 3,27
	lwz 26,40(1)
.LVL740:
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
.LVL741:
	lwz 29,52(1)
.LVL742:
	lwz 30,56(1)
.LVL743:
	lwz 31,60(1)
.LVL744:
	addi 1,1,64
	.cfi_remember_state
.LCFI101:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL745:
.L368:
.LCFI102:
	.cfi_restore_state
.LBB7433:
.LBB7424:
.LBB7425:
	.loc 6 425 0
	lwz 9,4(26)
.LBE7425:
.LBE7424:
	.loc 4 1429 0
	mr 4,28
.LBB7429:
.LBB7426:
	.loc 6 426 0
	lwz 0,8(26)
.LBE7426:
.LBE7429:
	.loc 4 1429 0
	addi 5,1,8
.LBB7430:
.LBB7427:
	.loc 6 424 0
	lwz 11,0(26)
	.loc 6 426 0
	stw 0,16(1)
.LBE7427:
.LBE7430:
	.loc 4 1429 0
	lwz 3,3944(31)
.LBB7431:
.LBB7428:
	.loc 6 424 0
	stw 11,8(1)
	.loc 6 425 0
	stw 9,12(1)
.LBE7428:
.LBE7431:
	.loc 4 1429 0
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 1430 0
	cmpwi 7,28,0
	beq- 7,.L362
	.loc 4 1434 0
	lwz 0,3952(31)
	.loc 4 1435 0
	mr 4,29
	lwz 3,3944(31)
	.loc 4 1434 0
	cmpwi 7,0,3
	.loc 4 1435 0
	lwz 9,0(3)
	.loc 4 1434 0
	beq- 7,.L369
	.loc 4 1437 0
	lwz 0,100(9)
.L367:
	mr 5,30
	addi 6,1,20
	mr 7,28
	addi 8,1,8
	lwz 9,3948(31)
	mtctr 0
	bctrl
.LBE7433:
	.loc 4 1439 0
	lwz 0,68(1)
.LBB7434:
	.loc 4 1437 0
	mr 27,3
.LBE7434:
	.loc 4 1439 0
	lwz 26,40(1)
.LVL746:
	mtlr 0
	mr 3,27
	lwz 28,48(1)
.LVL747:
	lwz 27,44(1)
	lwz 29,52(1)
.LVL748:
	lwz 30,56(1)
.LVL749:
	lwz 31,60(1)
.LVL750:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI103:
	.cfi_def_cfa_offset 0
	blr
.LVL751:
.L369:
.LCFI104:
	.cfi_restore_state
.LBB7435:
	.loc 4 1435 0
	lwz 0,108(9)
	b .L367
.LBE7435:
	.cfi_endproc
.LFE2874:
	.size	_ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_, .-_ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
	.align 2
	.globl _ZNK4idAI14TravelDistanceERK6idVec3S2_
	.type	_ZNK4idAI14TravelDistanceERK6idVec3S2_, @function
_ZNK4idAI14TravelDistanceERK6idVec3S2_:
.LFB2875:
	.loc 4 1451 0
	.cfi_startproc
.LVL752:
	mflr 0
	stwu 1,-216(1)
.LCFI105:
	.cfi_def_cfa_offset 216
	.cfi_register 65, 0
	stw 29,188(1)
	mr 29,4
	.cfi_offset 29, -28
	stw 30,192(1)
	mr 30,5
	.cfi_offset 30, -24
	stw 31,196(1)
	mr 31,3
	.cfi_offset 31, -20
	stw 0,220(1)
	stfd 30,200(1)
	stfd 31,208(1)
	stw 27,180(1)
	stw 28,184(1)
.LBB7436:
	.loc 4 1458 0
	lwz 0,3944(3)
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L380
	.loc 4 1471 0
	lis 9,.LC78@ha
	lfs 31,.LC78@l(9)
	fmr 1,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL753:
	.loc 4 1472 0
	fmr 1,31
	.loc 4 1471 0
	mr 27,3
.LVL754:
	.loc 4 1472 0
	mr 4,30
	mr 3,31
.LVL755:
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 1474 0
	cmpwi 7,27,0
	.loc 4 1472 0
	mr 28,3
.LVL756:
	.loc 4 1474 0
	beq- 7,.L378
	.loc 4 1474 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L378
	.loc 4 1479 0 is_stmt 1
	cmpw 7,27,3
	beq- 7,.L381
	.loc 4 1494 0
	lwz 0,8(29)
	mr 4,27
	lwz 10,0(29)
	addi 5,1,128
	lwz 11,4(29)
	mr 6,28
	lwz 9,3944(31)
	addi 8,1,8
	stw 10,128(1)
	stw 11,132(1)
	mr 3,9
.LVL757:
	stw 0,136(1)
	lwz 9,0(9)
	lwz 7,3948(31)
	lwz 0,96(9)
	addi 9,1,12
	mtctr 0
	bctrl
.LVL758:
	cmpwi 7,3,0
	beq- 7,.L378
.LBB7437:
.LBB7438:
	.loc 4 1498 0
	lis 9,ai_debugMove+44@ha
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE7438:
.LBE7437:
	.loc 4 1498 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L374
	.loc 4 1499 0
	lwz 0,3952(31)
	.loc 4 1500 0
	mr 4,29
	lwz 3,3944(31)
	.loc 4 1499 0
	cmpwi 7,0,3
	.loc 4 1500 0
	lwz 9,0(3)
	.loc 4 1499 0
	beq- 7,.L382
	.loc 4 1502 0
	lwz 0,116(9)
	mr 5,28
	mr 6,30
	mtctr 0
	bctrl
.L374:
.LVL759:
	.loc 4 1506 0
	lwz 0,8(1)
	lis 9,.LC65@ha
	lfs 0,.LC65@l(9)
	xoris 0,0,0x8000
	stw 0,148(1)
	lis 0,0x4330
	stw 0,144(1)
	lfd 31,144(1)
	fsub 31,31,0
	frsp 31,31
	b .L372
.LVL760:
.L378:
	.loc 4 1495 0
	lis 9,.LC75@ha
	lfs 31,.LC75@l(9)
.LVL761:
.L372:
.LBE7436:
	.loc 4 1507 0
	lwz 0,220(1)
	fmr 1,31
	lwz 27,180(1)
	mtlr 0
	lwz 28,184(1)
	lwz 29,188(1)
.LVL762:
	lwz 30,192(1)
.LVL763:
	lwz 31,196(1)
.LVL764:
	lfd 30,200(1)
	lfd 31,208(1)
	addi 1,1,216
	.cfi_remember_state
.LCFI106:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL765:
.L380:
.LCFI107:
	.cfi_restore_state
.LBB7551:
.LBB7439:
.LBB7440:
	.loc 6 237 0
	lfs 0,4(4)
.LBE7440:
.LBE7439:
.LBB7445:
.LBB7446:
.LBB7447:
.LBB7448:
	.loc 8 246 0
	lis 9,.LC15@ha
.LBE7448:
.LBE7447:
.LBE7446:
.LBE7445:
.LBB7470:
.LBB7441:
	.loc 6 237 0
	lfs 13,4(5)
.LBE7441:
.LBE7470:
.LBB7471:
.LBB7463:
.LBB7456:
.LBB7449:
	.loc 8 250 0
	lis 11,.LC63@ha
.LBE7449:
.LBE7456:
.LBE7463:
.LBE7471:
.LBB7472:
.LBB7442:
	.loc 6 237 0
	lfs 12,0(5)
	fsubs 13,13,0
.LVL766:
	lfs 0,0(4)
.LBE7442:
.LBE7472:
.LBB7473:
.LBB7464:
.LBB7457:
.LBB7450:
	.loc 8 246 0
	lfs 30,.LC15@l(9)
.LBE7450:
.LBE7457:
.LBE7464:
.LBE7473:
.LBB7474:
.LBB7443:
	.loc 6 237 0
	fsubs 0,12,0
.LVL767:
.LBE7443:
.LBE7474:
.LBB7475:
.LBB7465:
	.loc 6 162 0
	fmuls 13,13,13
.LVL768:
.LBE7465:
.LBE7475:
.LBB7476:
.LBB7444:
	fmadds 13,0,0,13
	stfs 13,160(1)
.LVL769:
.LBE7444:
.LBE7476:
.LBB7477:
.LBB7466:
.LBB7458:
.LBB7451:
	.loc 8 246 0
	fmuls 31,13,30
	.loc 8 248 0
	lwz 9,160(1)
	.loc 4 1451 0
	fneg 31,31
	.loc 8 248 0
	srawi 0,9,1
	.loc 8 249 0
	lis 9,0x5f37
	ori 9,9,23007
	subf 9,0,9
	stw 9,164(1)
.LVL770:
.LBE7451:
.LBE7458:
.LBE7466:
.LBE7477:
.LBB7478:
.LBB7479:
	.loc 4 1463 0
	lis 9,ai_debugMove+44@ha
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE7479:
.LBE7478:
.LBB7480:
.LBB7467:
.LBB7459:
.LBB7452:
	.loc 8 250 0
	lfs 0,164(1)
.LVL771:
.LBE7452:
.LBE7459:
.LBE7467:
.LBE7480:
	.loc 4 1463 0
	lwz 0,36(9)
.LBB7481:
.LBB7468:
.LBB7460:
.LBB7453:
	.loc 8 250 0
	fmuls 13,0,0
.LVL772:
	lfs 0,.LC63@l(11)
	lfs 12,164(1)
.LBE7453:
.LBE7460:
.LBE7468:
.LBE7481:
	.loc 4 1463 0
	cmpwi 7,0,0
.LBB7482:
.LBB7469:
.LBB7461:
.LBB7454:
	.loc 8 250 0
	fmadds 31,31,13,0
.LVL773:
.LBE7454:
.LBE7461:
	.loc 6 163 0
	lfs 0,160(1)
.LBB7462:
.LBB7455:
	.loc 8 250 0
	fmuls 31,12,31
.LVL774:
.LBE7455:
.LBE7462:
	.loc 6 163 0
	fmuls 31,0,31
.LVL775:
.LBE7469:
.LBE7482:
	.loc 4 1463 0
	beq+ 7,.L372
	.loc 4 1464 0
	lis 31,gameRenderWorld@ha
	mr 5,4
.LVL776:
	lwz 3,gameRenderWorld@l(31)
.LVL777:
	lis 4,colorBlue@ha
.LVL778:
	mr 6,30
	li 7,16
	lwz 9,0(3)
	li 8,0
	la 4,colorBlue@l(4)
	lwz 0,156(9)
	mtctr 0
	bctrl
	.loc 4 1465 0
	lwz 28,gameRenderWorld@l(31)
	fctiwz 0,31
	lis 3,.LC76@ha
	lwz 9,0(28)
	la 3,.LC76@l(3)
	lwz 31,204(9)
	addi 9,1,156
	stfiwx 0,0,9
	lwz 4,156(1)
	crxor 6,6,6
	bl _Z2vaPKcz
.LBB7483:
.LBB7484:
	.loc 6 452 0
	lfs 9,4(29)
	lfs 10,8(29)
.LBE7484:
.LBE7483:
	.loc 4 1465 0
	mr 27,3
.LVL779:
.LBB7488:
.LBB7485:
	.loc 6 452 0
	lfs 11,0(29)
.LBE7485:
.LBE7488:
	.loc 4 1465 0
	lis 3,gameLocal@ha
.LBB7489:
.LBB7486:
	.loc 6 452 0
	lfs 13,4(30)
.LBE7486:
.LBE7489:
	.loc 4 1465 0
	la 3,gameLocal@l(3)
.LBB7490:
.LBB7487:
	.loc 6 452 0
	lfs 0,8(30)
	lfs 12,0(30)
	fadds 13,9,13
	fadds 0,10,0
	fadds 12,11,12
.LBE7487:
.LBE7490:
.LBB7491:
.LBB7492:
	.loc 6 439 0
	fmuls 13,13,30
	fmuls 0,0,30
.LVL780:
	fmuls 30,12,30
.LBB7493:
.LBB7494:
	.loc 6 397 0
	stfs 13,32(1)
	.loc 6 398 0
	stfs 0,36(1)
	.loc 6 396 0
	stfs 30,28(1)
.LBE7494:
.LBE7493:
.LBE7492:
.LBE7491:
	.loc 4 1465 0
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL781:
	addi 4,3,4644
	addi 3,1,76
	bl _ZNK8idAngles6ToMat3Ev
	lis 9,.LC77@ha
	lis 6,colorWhite@ha
	lfs 1,.LC77@l(9)
	mr 3,28
	mr 4,27
	addi 5,1,28
	la 6,colorWhite@l(6)
	addi 7,1,76
.LVL782:
.L379:
	.loc 4 1486 0
	mtctr 31
	li 8,1
	li 9,0
	li 10,0
	bctrl
.LBE7551:
	.loc 4 1507 0
	lwz 0,220(1)
	fmr 1,31
	lwz 27,180(1)
	mtlr 0
	lwz 28,184(1)
	lwz 29,188(1)
.LVL783:
	lwz 30,192(1)
.LVL784:
	lwz 31,196(1)
	lfd 30,200(1)
	lfd 31,208(1)
	addi 1,1,216
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI108:
	.cfi_def_cfa_offset 0
	blr
.LVL785:
.L381:
.LCFI109:
	.cfi_restore_state
.LBB7552:
.LBB7495:
.LBB7496:
	.loc 6 237 0
	lfs 0,4(29)
.LBE7496:
.LBE7495:
.LBB7501:
.LBB7502:
.LBB7503:
.LBB7504:
	.loc 8 246 0
	lis 9,.LC15@ha
.LBE7504:
.LBE7503:
.LBE7502:
.LBE7501:
.LBB7526:
.LBB7497:
	.loc 6 237 0
	lfs 13,4(30)
.LBE7497:
.LBE7526:
.LBB7527:
.LBB7519:
.LBB7512:
.LBB7505:
	.loc 8 250 0
	lis 11,.LC63@ha
.LBE7505:
.LBE7512:
.LBE7519:
.LBE7527:
.LBB7528:
.LBB7498:
	.loc 6 237 0
	lfs 12,0(30)
	fsubs 13,13,0
.LVL786:
	lfs 0,0(29)
.LBE7498:
.LBE7528:
.LBB7529:
.LBB7520:
.LBB7513:
.LBB7506:
	.loc 8 246 0
	lfs 30,.LC15@l(9)
.LBE7506:
.LBE7513:
.LBE7520:
.LBE7529:
.LBB7530:
.LBB7499:
	.loc 6 237 0
	fsubs 0,12,0
.LVL787:
.LBE7499:
.LBE7530:
.LBB7531:
.LBB7521:
	.loc 6 162 0
	fmuls 13,13,13
.LVL788:
.LBE7521:
.LBE7531:
.LBB7532:
.LBB7500:
	fmadds 13,0,0,13
	stfs 13,160(1)
.LVL789:
.LBE7500:
.LBE7532:
.LBB7533:
.LBB7522:
.LBB7514:
.LBB7507:
	.loc 8 246 0
	fmuls 31,13,30
	.loc 8 248 0
	lwz 9,160(1)
	.loc 4 1451 0
	fneg 31,31
	.loc 8 248 0
	srawi 0,9,1
	.loc 8 249 0
	lis 9,0x5f37
	ori 9,9,23007
	subf 9,0,9
	stw 9,164(1)
.LVL790:
.LBE7507:
.LBE7514:
.LBE7522:
.LBE7533:
.LBB7534:
.LBB7535:
	.loc 4 1484 0
	lis 9,ai_debugMove+44@ha
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE7535:
.LBE7534:
.LBB7536:
.LBB7523:
.LBB7515:
.LBB7508:
	.loc 8 250 0
	lfs 0,164(1)
.LVL791:
.LBE7508:
.LBE7515:
.LBE7523:
.LBE7536:
	.loc 4 1484 0
	lwz 0,36(9)
.LBB7537:
.LBB7524:
.LBB7516:
.LBB7509:
	.loc 8 250 0
	fmuls 13,0,0
.LVL792:
	lfs 0,.LC63@l(11)
	lfs 12,164(1)
.LBE7509:
.LBE7516:
.LBE7524:
.LBE7537:
	.loc 4 1484 0
	cmpwi 7,0,0
.LBB7538:
.LBB7525:
.LBB7517:
.LBB7510:
	.loc 8 250 0
	fmadds 31,31,13,0
.LVL793:
.LBE7510:
.LBE7517:
	.loc 6 163 0
	lfs 0,160(1)
.LBB7518:
.LBB7511:
	.loc 8 250 0
	fmuls 31,12,31
.LVL794:
.LBE7511:
.LBE7518:
	.loc 6 163 0
	fmuls 31,0,31
.LVL795:
.LBE7525:
.LBE7538:
	.loc 4 1484 0
	beq+ 7,.L372
	.loc 4 1485 0
	lis 31,gameRenderWorld@ha
.LVL796:
	lis 4,colorBlue@ha
	lwz 3,gameRenderWorld@l(31)
.LVL797:
	mr 5,29
	mr 6,30
	li 7,16
	lwz 9,0(3)
	li 8,0
	la 4,colorBlue@l(4)
	lwz 0,156(9)
	mtctr 0
	bctrl
	.loc 4 1486 0
	lwz 28,gameRenderWorld@l(31)
.LVL798:
	fctiwz 0,31
	lis 3,.LC76@ha
	lwz 9,0(28)
	la 3,.LC76@l(3)
	lwz 31,204(9)
	addi 9,1,152
	stfiwx 0,0,9
	lwz 4,152(1)
	crxor 6,6,6
	bl _Z2vaPKcz
.LBB7539:
.LBB7540:
	.loc 6 452 0
	lfs 9,4(29)
	lfs 10,8(29)
.LBE7540:
.LBE7539:
	.loc 4 1486 0
	mr 27,3
.LVL799:
.LBB7544:
.LBB7541:
	.loc 6 452 0
	lfs 11,0(29)
.LBE7541:
.LBE7544:
	.loc 4 1486 0
	lis 3,gameLocal@ha
.LBB7545:
.LBB7542:
	.loc 6 452 0
	lfs 13,4(30)
.LBE7542:
.LBE7545:
	.loc 4 1486 0
	la 3,gameLocal@l(3)
.LBB7546:
.LBB7543:
	.loc 6 452 0
	lfs 0,8(30)
	lfs 12,0(30)
	fadds 13,9,13
	fadds 0,10,0
	fadds 12,11,12
.LBE7543:
.LBE7546:
.LBB7547:
.LBB7548:
	.loc 6 439 0
	fmuls 13,13,30
	fmuls 0,0,30
.LVL800:
	fmuls 30,12,30
.LBB7549:
.LBB7550:
	.loc 6 397 0
	stfs 13,20(1)
	.loc 6 398 0
	stfs 0,24(1)
	.loc 6 396 0
	stfs 30,16(1)
.LBE7550:
.LBE7549:
.LBE7548:
.LBE7547:
	.loc 4 1486 0
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL801:
	addi 4,3,4644
	addi 3,1,40
	bl _ZNK8idAngles6ToMat3Ev
	lis 9,.LC77@ha
	lis 6,colorWhite@ha
	mr 3,28
	mr 4,27
	addi 5,1,16
	lfs 1,.LC77@l(9)
	la 6,colorWhite@l(6)
	addi 7,1,40
	b .L379
.LVL802:
.L382:
	.loc 4 1500 0
	lwz 0,120(9)
	mr 5,28
	mr 6,30
	mtctr 0
	bctrl
	b .L374
.LBE7552:
	.cfi_endproc
.LFE2875:
	.size	_ZNK4idAI14TravelDistanceERK6idVec3S2_, .-_ZNK4idAI14TravelDistanceERK6idVec3S2_
	.align 2
	.globl _ZN4idAI8StopMoveE12moveStatus_t
	.type	_ZN4idAI8StopMoveE12moveStatus_t, @function
_ZN4idAI8StopMoveE12moveStatus_t:
.LFB2879:
	.loc 4 1514 0
	.cfi_startproc
.LVL803:
	mflr 0
	stwu 1,-16(1)
.LCFI110:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL804:
	stw 0,20(1)
	stw 30,8(1)
.LBB7553:
.LBB7554:
	.loc 18 237 0
	lwz 9,5208(3)
	cmpwi 7,9,0
	beq- 7,.L384
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL805:
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LVL806:
.L384:
.LBE7554:
.LBE7553:
.LBB7555:
.LBB7556:
	.loc 18 237 0
	lwz 9,5220(31)
	cmpwi 7,9,0
	beq- 7,.L385
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L385:
.LBE7556:
.LBE7555:
	.loc 4 1517 0
	li 30,0
	.loc 4 1518 0
	stw 4,3960(31)
	.loc 4 1517 0
	stw 30,3956(31)
	.loc 4 1521 0
	addi 3,31,4216
.LVL807:
	.loc 4 1519 0
	stw 30,4004(31)
.LVL808:
	.loc 4 1521 0
	li 4,0
.LVL809:
.LBB7557:
.LBB7558:
	.loc 7 606 0
	stw 30,3988(31)
.LBE7558:
.LBE7557:
	.loc 4 1521 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL810:
.LBB7559:
.LBB7560:
	.loc 18 237 0
	lwz 9,5240(31)
.LBE7560:
.LBE7559:
.LBB7563:
.LBB7564:
	.loc 6 424 0
	lwz 0,0(3)
.LBE7564:
.LBE7563:
.LBB7566:
.LBB7561:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE7561:
.LBE7566:
.LBB7567:
.LBB7565:
	.loc 6 424 0
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,4(3)
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,8(3)
	stw 0,3972(31)
.LVL811:
.LBE7565:
.LBE7567:
.LBB7568:
.LBB7562:
	.loc 18 237 0
	beq- 7,.L386
	.loc 18 238 0
	stw 30,0(9)
.L386:
.LVL812:
.LBE7562:
.LBE7568:
.LBB7569:
.LBB7570:
	.loc 18 237 0
	lwz 9,5236(31)
	cmpwi 7,9,0
	beq- 7,.L387
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L387:
.LVL813:
.LBE7570:
.LBE7569:
.LBB7571:
.LBB7572:
	.loc 18 237 0
	lwz 9,5232(31)
	cmpwi 7,9,0
	beq- 7,.L388
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L388:
.LBE7572:
.LBE7571:
	.loc 4 1525 0
	lis 9,gameLocal@ha
	.loc 4 1527 0
	li 0,0
	.loc 4 1525 0
	la 9,gameLocal@l(9)
	.loc 4 1526 0
	li 11,0
	.loc 4 1525 0
	addis 9,9,0x25
	lwz 10,2004(9)
	.loc 4 1526 0
	stw 11,4012(31)
	.loc 4 1525 0
	stw 10,4008(31)
	.loc 4 1527 0
	stw 0,4020(31)
	.loc 4 1528 0
	stw 0,4016(31)
	.loc 4 1529 0
	stw 11,4056(31)
.LVL814:
.LBB7573:
.LBB7574:
	.loc 6 416 0
	stw 0,3984(31)
	stw 0,3980(31)
	stw 0,3976(31)
.LVL815:
.LBE7574:
.LBE7573:
.LBB7575:
.LBB7576:
	stw 0,4048(31)
	stw 0,4044(31)
	stw 0,4040(31)
.LBE7576:
.LBE7575:
	.loc 4 1532 0
	lwz 0,2004(9)
	stw 0,4052(31)
	.loc 4 1533 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL816:
	addi 1,1,16
.LCFI111:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2879:
	.size	_ZN4idAI8StopMoveE12moveStatus_t, .-_ZN4idAI8StopMoveE12moveStatus_t
	.align 2
	.globl _ZN4idAI20DirectMoveToPositionERK6idVec3
	.type	_ZN4idAI20DirectMoveToPositionERK6idVec3, @function
_ZN4idAI20DirectMoveToPositionERK6idVec3:
.LFB2882:
	.loc 4 1596 0
	.cfi_startproc
.LVL817:
	mflr 0
	stwu 1,-48(1)
.LCFI112:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 29,36(1)
.LBB7602:
	.loc 4 1597 0
	lwz 5,3956(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
.LVL818:
	cmpwi 0,3,0
	bne- 0,.L395
.LVL819:
.LBB7603:
.LBB7604:
	.loc 6 424 0
	lwz 0,0(30)
.LBE7604:
.LBE7603:
	.loc 4 1606 0
	lis 11,gameLocal+2426836@ha
.LBB7608:
.LBB7609:
	.loc 18 237 0
	lwz 9,5208(31)
.LBE7609:
.LBE7608:
.LBB7612:
.LBB7605:
	.loc 6 424 0
	stw 0,3964(31)
.LBE7605:
.LBE7612:
.LBB7613:
.LBB7610:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE7610:
.LBE7613:
.LBB7614:
.LBB7606:
	.loc 6 425 0
	lwz 0,4(30)
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,8(30)
.LBE7606:
.LBE7614:
.LBB7615:
.LBB7616:
	.loc 7 606 0
	stw 3,3988(31)
.LBE7616:
.LBE7615:
.LBB7617:
.LBB7607:
	.loc 6 426 0
	stw 0,3972(31)
.LVL820:
.LBE7607:
.LBE7617:
	.loc 4 1604 0
	li 0,10
	stw 0,3956(31)
	.loc 4 1605 0
	li 0,1
	stw 0,3960(31)
	.loc 4 1607 0
	lwz 0,4496(31)
	.loc 4 1606 0
	lwz 11,gameLocal+2426836@l(11)
	.loc 4 1607 0
	stw 0,4016(31)
.LVL821:
	.loc 4 1606 0
	stw 11,4008(31)
.LBB7618:
.LBB7611:
	.loc 18 237 0
	beq- 7,.L392
	.loc 18 238 0
	stw 3,0(9)
.L392:
.LVL822:
.LBE7611:
.LBE7618:
.LBB7619:
.LBB7620:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L393
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L393:
.LVL823:
.LBE7620:
.LBE7619:
.LBB7621:
.LBB7622:
	.loc 18 237 0
	lwz 9,5220(31)
	cmpwi 7,9,0
	beq- 7,.L394
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L394:
.LBE7622:
.LBE7621:
.LBB7623:
	.loc 4 1612 0
	lwz 0,3952(31)
	cmpwi 7,0,3
	beq- 7,.L396
.LBE7623:
.LBE7602:
	.loc 4 1620 0
	lwz 0,52(1)
	li 3,1
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
.LVL824:
	lwz 31,44(1)
.LVL825:
	addi 1,1,48
	.cfi_remember_state
.LCFI113:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL826:
.L395:
.LCFI114:
	.cfi_restore_state
.LBB7648:
	.loc 4 1598 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LBE7648:
	.loc 4 1620 0
	lwz 0,52(1)
	lwz 29,36(1)
	li 3,1
	mtlr 0
	lwz 30,40(1)
.LVL827:
	lwz 31,44(1)
.LVL828:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI115:
	.cfi_def_cfa_offset 0
	blr
.LVL829:
.L396:
.LCFI116:
	.cfi_restore_state
.LBB7649:
.LBB7647:
.LBB7624:
	.loc 4 1613 0
	addi 29,31,4216
	li 4,0
	mr 3,29
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL830:
.LBB7625:
.LBB7626:
	.loc 6 431 0
	lfs 11,4(30)
	lfs 13,4(3)
.LBE7626:
.LBE7625:
	.loc 4 1616 0
	addi 4,1,8
.LBB7631:
.LBB7627:
	.loc 6 431 0
	lfs 0,0(3)
.LBE7627:
.LBE7631:
	.loc 4 1616 0
	li 5,0
.LBB7632:
.LBB7628:
	.loc 6 431 0
	fsubs 11,11,13
	lfs 10,0(30)
	lfs 13,8(3)
.LBE7628:
.LBE7632:
	.loc 4 1616 0
	mr 3,29
.LVL831:
.LBB7633:
.LBB7629:
	.loc 6 431 0
	fsubs 10,10,0
	lfs 12,8(30)
.LBE7629:
.LBE7633:
.LBB7634:
.LBB7635:
	.loc 6 649 0
	fmuls 0,11,11
.LBE7635:
.LBE7634:
.LBB7642:
.LBB7630:
	.loc 6 431 0
	fsubs 12,12,13
.LVL832:
	.loc 6 649 0
	fmadds 0,10,10,0
	fmadds 0,12,12,0
	stfs 0,24(1)
.LVL833:
.LBE7630:
.LBE7642:
.LBB7643:
.LBB7640:
.LBB7636:
.LBB7637:
	.loc 8 270 0
	lwz 0,24(1)
.LVL834:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 8 275 0
	lis 11,.LC15@ha
	lfs 6,.LC15@l(11)
	.loc 8 276 0
	or 0,0,9
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 277 0
	stw 0,28(1)
	.loc 8 275 0
	fmuls 6,0,6
.LVL835:
	.loc 8 278 0
	lfs 7,.LC63@l(9)
	.loc 8 277 0
	lfs 0,28(1)
.LVL836:
	.loc 4 1596 0
	fneg 6,6
.LVL837:
	.loc 8 277 0
	fmr 8,0
.LVL838:
.LBE7637:
.LBE7636:
.LBE7640:
.LBE7643:
	.loc 4 1615 0
	lfs 0,4496(31)
.LVL839:
.LBB7644:
.LBB7641:
.LBB7639:
.LBB7638:
	.loc 8 278 0
	fmul 9,8,8
	fmadd 9,6,9,7
	fmul 9,8,9
.LVL840:
	.loc 8 279 0
	fmul 13,9,9
	fmadd 13,6,13,7
.LVL841:
	fmul 13,9,13
.LVL842:
	.loc 8 280 0
	frsp 13,13
.LVL843:
.LBE7638:
.LBE7639:
	.loc 6 651 0
	fmuls 10,10,13
.LVL844:
	.loc 6 652 0
	fmuls 11,11,13
.LVL845:
	.loc 6 653 0
	fmuls 13,12,13
.LBE7641:
.LBE7644:
.LBB7645:
.LBB7646:
	.loc 6 489 0
	fmuls 10,0,10
	.loc 6 490 0
	fmuls 11,0,11
	.loc 6 491 0
	fmuls 0,0,13
	.loc 6 489 0
	stfs 10,8(1)
	.loc 6 490 0
	stfs 11,12(1)
	.loc 6 491 0
	stfs 0,16(1)
.LBE7646:
.LBE7645:
	.loc 4 1616 0
	bl _ZN17idPhysics_Monster17SetLinearVelocityERK6idVec3i
.LVL846:
.LBE7624:
.LBE7647:
.LBE7649:
	.loc 4 1620 0
	lwz 0,52(1)
	li 3,1
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
.LVL847:
	lwz 31,44(1)
.LVL848:
	addi 1,1,48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI117:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2882:
	.size	_ZN4idAI20DirectMoveToPositionERK6idVec3, .-_ZN4idAI20DirectMoveToPositionERK6idVec3
	.align 2
	.globl _ZN4idAI17MoveToEnemyHeightEv
	.type	_ZN4idAI17MoveToEnemyHeightEv, @function
_ZN4idAI17MoveToEnemyHeightEv:
.LFB2883:
	.loc 4 1627 0
	.cfi_startproc
.LVL849:
	mflr 0
	stwu 1,-56(1)
.LCFI118:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 30,40(1)
.LBB7650:
.LBB7651:
.LBB7652:
	.loc 7 635 0
	lis 30,gameLocal@ha
	.cfi_offset 30, -16
.LBE7652:
.LBE7651:
.LBE7650:
	.loc 4 1627 0
	stw 31,44(1)
.LBB7675:
.LBB7656:
.LBB7653:
	.loc 7 635 0
	la 30,gameLocal@l(30)
.LBE7653:
.LBE7656:
.LBE7675:
	.loc 4 1627 0
	stw 0,60(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -12
.LVL850:
	stfd 31,48(1)
	stw 29,36(1)
.LBB7676:
.LBB7657:
.LBB7654:
	.loc 7 634 0
	lwz 0,5120(3)
	rlwinm 9,0,0,20,31
.LVL851:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L404
	.cfi_offset 29, -20
	.cfi_offset 63, -8
.LVL852:
.L398:
.LBE7654:
.LBE7657:
	.loc 4 1631 0
	mr 3,31
.LVL853:
	li 4,3
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 1632 0
	li 3,0
.L400:
.LBE7676:
	.loc 4 1646 0
	lwz 0,60(1)
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
.LVL854:
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI119:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL855:
.L404:
.LCFI120:
	.cfi_restore_state
.LBB7677:
.LBB7658:
.LBB7655:
	.loc 7 636 0
	addi 9,9,132
.LVL856:
	slwi 9,9,2
.LVL857:
	add 9,30,9
	lwz 29,4(9)
.LBE7655:
.LBE7658:
	.loc 4 1630 0
	cmpwi 7,29,0
	beq- 7,.L398
	.loc 4 1630 0 is_stmt 0 discriminator 1
	lwz 0,3952(3)
	cmpwi 7,0,3
	bne+ 7,.L398
	.loc 4 1635 0 is_stmt 1
	addi 3,1,8
.LVL858:
	mr 4,29
	lfs 31,5132(31)
	bl _ZNK7idActor9EyeOffsetEv
	lwz 0,4512(31)
	lis 9,.LC65@ha
	lfs 0,.LC65@l(9)
	.loc 4 1639 0
	addis 10,30,0x25
	.loc 4 1635 0
	xoris 0,0,0x8000
	.loc 4 1637 0
	li 8,4
	.loc 4 1635 0
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lfd 13,24(1)
.LBB7659:
.LBB7660:
	.loc 18 237 0
	lwz 11,5208(31)
.LBE7660:
.LBE7659:
	.loc 4 1635 0
	fsub 13,13,0
	lfs 0,16(1)
.LBB7663:
.LBB7661:
	.loc 18 237 0
	cmpwi 7,11,0
.LBE7661:
.LBE7663:
	.loc 4 1635 0
	fadds 0,31,0
	frsp 13,13
	fadds 0,0,13
	stfs 0,3972(31)
.LVL859:
.LBB7664:
.LBB7665:
	.loc 7 608 0
	lwz 9,4(29)
	addi 0,9,4228
	slwi 0,0,2
	add 30,30,0
	lwz 0,4(30)
.LBE7665:
.LBE7664:
	.loc 4 1637 0
	stw 8,3956(31)
.LBB7668:
.LBB7666:
	.loc 7 608 0
	slwi 0,0,12
	or 9,0,9
.LBE7666:
.LBE7668:
	.loc 4 1638 0
	li 0,1
.LBB7669:
.LBB7667:
	.loc 7 608 0
	stw 9,3988(31)
.LBE7667:
.LBE7669:
	.loc 4 1640 0
	li 9,0
	.loc 4 1638 0
	stw 0,3960(31)
	.loc 4 1639 0
	lwz 0,2004(10)
	.loc 4 1640 0
	stw 9,4016(31)
.LVL860:
	.loc 4 1639 0
	stw 0,4008(31)
.LBB7670:
.LBB7662:
	.loc 18 237 0
	beq- 7,.L401
	.loc 18 238 0
	li 0,0
	stw 0,0(11)
.L401:
.LVL861:
.LBE7662:
.LBE7670:
.LBB7671:
.LBB7672:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L402
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L402:
.LVL862:
.LBE7672:
.LBE7671:
.LBB7673:
.LBB7674:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 1645 0
	li 3,1
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L400
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.LBE7674:
.LBE7673:
.LBE7677:
	.loc 4 1646 0
	lwz 0,60(1)
	lwz 29,36(1)
.LVL863:
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
.LVL864:
	lfd 31,48(1)
	addi 1,1,56
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI121:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2883:
	.size	_ZN4idAI17MoveToEnemyHeightEv, .-_ZN4idAI17MoveToEnemyHeightEv
	.align 2
	.globl _ZN4idAI14MoveOutOfRangeEP8idEntityf
	.type	_ZN4idAI14MoveOutOfRangeEP8idEntityf, @function
_ZN4idAI14MoveOutOfRangeEP8idEntityf:
.LFB2886:
	.loc 4 1796 0
	.cfi_startproc
.LVL865:
	mflr 0
	stwu 1,-176(1)
.LCFI122:
	.cfi_def_cfa_offset 176
	.cfi_register 65, 0
	stfd 31,168(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 30,160(1)
	mr 30,4
	.cfi_offset 30, -16
	stw 31,164(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,180(1)
	stw 26,144(1)
	stw 27,148(1)
	stw 28,152(1)
	stw 29,156(1)
.LBB7678:
	.loc 4 1803 0
	lwz 0,3944(3)
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L421
	.loc 4 1803 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	beq- 7,.L421
	.loc 4 1809 0 is_stmt 1
	li 4,0
.LVL866:
	addi 3,3,4216
.LVL867:
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL868:
	.loc 4 1810 0
	lis 9,.LC78@ha
	lfs 1,.LC78@l(9)
	mr 4,3
	.loc 4 1809 0
	mr 28,3
.LVL869:
	.loc 4 1810 0
	mr 3,31
.LVL870:
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL871:
.LBB7679:
.LBB7680:
	.loc 7 635 0
	lis 29,gameLocal@ha
.LBE7680:
.LBE7679:
	.loc 4 1810 0
	mr 26,3
.LVL872:
	.loc 4 1813 0
	mr 3,30
.LVL873:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
.LBB7690:
.LBB7681:
	.loc 7 635 0
	la 29,gameLocal@l(29)
.LBE7681:
.LBE7690:
	.loc 4 1813 0
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL874:
.LBB7691:
.LBB7682:
	.loc 7 634 0
	lwz 0,5120(31)
.LBE7682:
.LBE7691:
.LBB7692:
.LBB7693:
.LBB7694:
	.loc 6 424 0
	lwz 6,0(3)
.LBE7694:
.LBE7693:
.LBE7692:
.LBB7705:
.LBB7683:
	.loc 7 634 0
	rlwinm 9,0,0,20,31
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
.LBE7683:
.LBE7705:
.LBB7706:
.LBB7700:
.LBB7695:
	.loc 6 425 0
	lwz 7,4(3)
.LBE7695:
.LBE7700:
.LBE7706:
.LBB7707:
.LBB7684:
	.loc 7 635 0
	slwi 11,11,2
.LBE7684:
.LBE7707:
.LBB7708:
.LBB7701:
.LBB7696:
	.loc 6 426 0
	lwz 8,8(3)
.LBE7696:
.LBE7701:
.LBE7708:
.LBB7709:
.LBB7685:
	.loc 7 635 0
	add 11,29,11
.LBE7685:
.LBE7709:
.LBB7710:
.LBB7702:
.LBB7697:
	.loc 6 424 0
	lwz 10,12(3)
.LBE7697:
.LBE7702:
.LBE7710:
.LBB7711:
.LBB7686:
	.loc 7 635 0
	lwz 11,4(11)
.LBE7686:
.LBE7711:
.LBB7712:
.LBB7703:
.LBB7698:
	.loc 6 424 0
	stw 6,64(1)
.LBE7698:
.LBE7703:
.LBE7712:
.LBB7713:
.LBB7687:
	.loc 7 635 0
	cmpw 7,11,0
.LBE7687:
.LBE7713:
.LBB7714:
.LBB7704:
.LBB7699:
	.loc 6 425 0
	lwz 11,16(3)
	.loc 6 426 0
	lwz 0,20(3)
	.loc 6 425 0
	stw 7,68(1)
	.loc 6 426 0
	stw 8,72(1)
.LVL875:
	.loc 6 424 0
	stw 10,76(1)
	.loc 6 425 0
	stw 11,80(1)
	.loc 6 426 0
	stw 0,84(1)
.LVL876:
.LBE7699:
.LBE7704:
.LBE7714:
.LBB7715:
.LBB7688:
	.loc 7 635 0
	beq- 7,.L422
.LVL877:
.L409:
.LBE7688:
.LBE7715:
	.loc 4 1818 0
	mr 3,30
.LVL878:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL879:
.LBB7716:
.LBB7717:
	.loc 6 424 0
	lwz 11,0(3)
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	lwz 0,8(3)
	.loc 6 424 0
	stw 11,16(1)
	.loc 6 425 0
	stw 9,20(1)
	.loc 6 426 0
	stw 0,24(1)
.LVL880:
.L410:
.LBE7717:
.LBE7716:
	.loc 4 1821 0
	fmr 1,31
	addi 27,1,44
	mr 3,27
	addi 4,1,16
	bl _ZN23idAASFindAreaOutOfRangeC1ERK6idVec3f
	.loc 4 1822 0
	lwz 9,4(28)
	lwz 0,8(28)
	addi 4,1,28
	lwz 11,0(28)
	mr 5,26
	lwz 3,3944(31)
	addi 6,1,120
	stw 11,120(1)
	addi 7,1,16
	stw 9,124(1)
	li 10,1
	stw 0,128(1)
	lwz 9,0(3)
	lwz 8,3948(31)
	stw 27,8(1)
	lwz 0,124(9)
	addi 9,1,64
	mtctr 0
	bctrl
	cmpwi 7,3,0
	beq- 7,.L421
	.loc 4 1828 0
	lwz 5,3956(31)
	mr 3,31
	addi 4,1,32
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	cmpwi 0,3,0
	bne- 0,.L423
.LVL881:
.LBB7718:
.LBB7719:
	.loc 6 424 0
	lwz 0,32(1)
.LBE7719:
.LBE7718:
.LBB7722:
.LBB7723:
	.loc 18 237 0
	lwz 11,5208(31)
.LBE7723:
.LBE7722:
.LBB7726:
.LBB7720:
	.loc 6 424 0
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,36(1)
.LBE7720:
.LBE7726:
.LBB7727:
.LBB7724:
	.loc 18 237 0
	cmpwi 7,11,0
.LBE7724:
.LBE7727:
.LBB7728:
.LBB7721:
	.loc 6 425 0
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,40(1)
	stw 0,3972(31)
.LBE7721:
.LBE7728:
	.loc 4 1834 0
	lwz 0,28(1)
	stw 0,4004(31)
.LVL882:
	.loc 4 1839 0
	lwz 0,4496(31)
.LBB7729:
.LBB7730:
	.loc 7 608 0
	lwz 9,4(30)
	addi 10,9,4228
	slwi 10,10,2
	add 10,29,10
.LBE7730:
.LBE7729:
	.loc 4 1840 0
	addis 29,29,0x25
.LBB7734:
.LBB7731:
	.loc 7 608 0
	lwz 10,4(10)
.LBE7731:
.LBE7734:
	.loc 4 1838 0
	stfs 31,4020(31)
.LBB7735:
.LBB7732:
	.loc 7 608 0
	slwi 10,10,12
.LBE7732:
.LBE7735:
	.loc 4 1839 0
	stw 0,4016(31)
.LBB7736:
.LBB7733:
	.loc 7 608 0
	or 9,10,9
	stw 9,3988(31)
.LBE7733:
.LBE7736:
	.loc 4 1836 0
	li 9,6
	stw 9,3956(31)
	.loc 4 1837 0
	li 9,1
	stw 9,3960(31)
	.loc 4 1840 0
	lwz 0,2004(29)
	stw 0,4008(31)
.LVL883:
.LBB7737:
.LBB7725:
	.loc 18 237 0
	beq- 7,.L413
	.loc 18 238 0
	stw 3,0(11)
.L413:
.LVL884:
.LBE7725:
.LBE7737:
.LBB7738:
.LBB7739:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L414
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L414:
.LVL885:
.LBE7739:
.LBE7738:
.LBB7740:
.LBB7741:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 1845 0
	li 3,1
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L415
	.loc 18 238 0
	stw 3,0(9)
.LBE7741:
.LBE7740:
.LBE7678:
	.loc 4 1846 0
	lwz 0,180(1)
	lwz 26,144(1)
.LVL886:
	mtlr 0
	lwz 27,148(1)
	lwz 28,152(1)
.LVL887:
	lwz 29,156(1)
	lwz 30,160(1)
.LVL888:
	lwz 31,164(1)
.LVL889:
	lfd 31,168(1)
.LVL890:
	addi 1,1,176
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI123:
	.cfi_def_cfa_offset 0
	blr
.LVL891:
.L421:
.LCFI124:
	.cfi_restore_state
.LBB7747:
	.loc 4 1823 0
	mr 3,31
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL892:
.LBB7742:
.LBB7743:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1825 0
	li 3,0
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L415
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LVL893:
.L415:
.LBE7743:
.LBE7742:
.LBE7747:
	.loc 4 1846 0
	lwz 0,180(1)
	lwz 26,144(1)
	mtlr 0
	lwz 27,148(1)
	lwz 28,152(1)
	lwz 29,156(1)
	lwz 30,160(1)
.LVL894:
	lwz 31,164(1)
.LVL895:
	lfd 31,168(1)
.LVL896:
	addi 1,1,176
	.cfi_remember_state
.LCFI125:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL897:
.L422:
.LCFI126:
	.cfi_restore_state
.LBB7748:
.LBB7744:
.LBB7689:
	.loc 7 636 0
	addi 9,9,132
.LVL898:
	slwi 9,9,2
.LVL899:
	add 9,29,9
.LBE7689:
.LBE7744:
	.loc 4 1815 0
	lwz 0,4(9)
	cmpw 7,30,0
	bne- 7,.L409
.LVL900:
.LBB7745:
.LBB7746:
	.loc 6 424 0
	lwz 11,5124(31)
	.loc 6 425 0
	lwz 9,5128(31)
	.loc 6 426 0
	lwz 0,5132(31)
	.loc 6 424 0
	stw 11,16(1)
	.loc 6 425 0
	stw 9,20(1)
	.loc 6 426 0
	stw 0,24(1)
	b .L410
.LVL901:
.L423:
.LBE7746:
.LBE7745:
	.loc 4 1829 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 1830 0
	li 3,1
	b .L415
.LBE7748:
	.cfi_endproc
.LFE2886:
	.size	_ZN4idAI14MoveOutOfRangeEP8idEntityf, .-_ZN4idAI14MoveOutOfRangeEP8idEntityf
	.align 2
	.globl _ZN4idAI20MoveToAttackPositionEP8idEntityi
	.type	_ZN4idAI20MoveToAttackPositionEP8idEntityi, @function
_ZN4idAI20MoveToAttackPositionEP8idEntityi:
.LFB2897:
	.loc 4 1853 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2897
.LVL902:
	mflr 0
	stwu 1,-288(1)
.LCFI127:
	.cfi_def_cfa_offset 288
	.cfi_register 65, 0
	stw 27,268(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 30,280(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,284(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,292(1)
	stw 25,260(1)
	stw 26,264(1)
	stw 28,272(1)
	stw 29,276(1)
.LBB7749:
	.loc 4 1860 0
	lwz 0,3944(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L425
	.loc 4 1860 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	beq- 7,.L425
	.loc 4 1866 0 is_stmt 1
	addi 29,3,4216
	li 4,0
.LVL903:
	mr 3,29
.LVL904:
.LBB7750:
.LBB7751:
	.loc 7 635 0
	lis 28,gameLocal@ha
.LEHB26:
.LBE7751:
.LBE7750:
	.loc 4 1866 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL905:
	.loc 4 1867 0
	lis 9,.LC78@ha
	lfs 1,.LC78@l(9)
	mr 4,3
	.loc 4 1866 0
	mr 26,3
.LVL906:
	.loc 4 1867 0
	mr 3,31
.LVL907:
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL908:
.LBB7761:
.LBB7752:
	.loc 7 635 0
	la 28,gameLocal@l(28)
.LBE7752:
.LBE7761:
	.loc 4 1867 0
	mr 25,3
.LVL909:
	.loc 4 1870 0
	mr 3,30
.LVL910:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL911:
.LBB7762:
.LBB7753:
	.loc 7 634 0
	lwz 0,5120(31)
.LBE7753:
.LBE7762:
.LBB7763:
.LBB7764:
.LBB7765:
	.loc 6 424 0
	lwz 6,0(3)
.LBE7765:
.LBE7764:
.LBE7763:
.LBB7776:
.LBB7754:
	.loc 7 634 0
	rlwinm 9,0,0,20,31
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
.LBE7754:
.LBE7776:
.LBB7777:
.LBB7771:
.LBB7766:
	.loc 6 425 0
	lwz 7,4(3)
.LBE7766:
.LBE7771:
.LBE7777:
.LBB7778:
.LBB7755:
	.loc 7 635 0
	slwi 11,11,2
.LBE7755:
.LBE7778:
.LBB7779:
.LBB7772:
.LBB7767:
	.loc 6 426 0
	lwz 8,8(3)
.LBE7767:
.LBE7772:
.LBE7779:
.LBB7780:
.LBB7756:
	.loc 7 635 0
	add 11,28,11
.LBE7756:
.LBE7780:
.LBB7781:
.LBB7773:
.LBB7768:
	.loc 6 424 0
	lwz 10,12(3)
.LBE7768:
.LBE7773:
.LBE7781:
.LBB7782:
.LBB7757:
	.loc 7 635 0
	lwz 11,4(11)
.LBE7757:
.LBE7782:
.LBB7783:
.LBB7774:
.LBB7769:
	.loc 6 424 0
	stw 6,44(1)
.LBE7769:
.LBE7774:
.LBE7783:
.LBB7784:
.LBB7758:
	.loc 7 635 0
	cmpw 7,11,0
.LBE7758:
.LBE7784:
.LBB7785:
.LBB7775:
.LBB7770:
	.loc 6 425 0
	lwz 11,16(3)
	.loc 6 426 0
	lwz 0,20(3)
	.loc 6 425 0
	stw 7,48(1)
	.loc 6 426 0
	stw 8,52(1)
.LVL912:
	.loc 6 424 0
	stw 10,56(1)
	.loc 6 425 0
	stw 11,60(1)
	.loc 6 426 0
	stw 0,64(1)
.LVL913:
.LBE7770:
.LBE7775:
.LBE7785:
.LBB7786:
.LBB7759:
	.loc 7 635 0
	beq- 7,.L439
.LVL914:
.L428:
.LBE7759:
.LBE7786:
	.loc 4 1875 0
	mr 3,30
.LVL915:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL916:
.LBB7787:
.LBB7788:
	.loc 6 424 0
	lwz 11,0(3)
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	lwz 0,8(3)
	.loc 6 424 0
	stw 11,16(1)
	.loc 6 425 0
	stw 9,20(1)
	.loc 6 426 0
	stw 0,24(1)
.LVL917:
.L429:
.LBE7788:
.LBE7787:
	.loc 4 1878 0
	mr 3,29
	addi 29,1,92
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LBB7789:
.LBB7790:
	.loc 14 589 0
	mulli 0,27,12
	lwz 8,4580(31)
.LBE7790:
.LBE7789:
	.loc 4 1878 0
	mr 5,3
.LVL918:
	mr 4,31
	mr 3,29
	add 8,8,0
	mr 6,30
	addi 7,1,16
	bl _ZN23idAASFindAttackPositionC1EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_
.LEHE26:
	.loc 4 1879 0
	lwz 9,4(26)
	lwz 0,8(26)
	addi 4,1,28
	lwz 11,0(26)
	mr 5,25
	lwz 3,3944(31)
	addi 6,1,232
	stw 11,232(1)
	addi 7,1,16
	stw 9,236(1)
	li 10,1
	stw 0,240(1)
	lwz 9,0(3)
	lwz 8,3948(31)
	stw 29,8(1)
	lwz 0,124(9)
	addi 9,1,44
	mtctr 0
.LEHB27:
	bctrl
.LEHE27:
	cmpwi 7,3,0
	beq- 7,.L440
.LVL919:
.LBB7791:
.LBB7792:
	.loc 6 424 0
	lwz 0,32(1)
.LBE7792:
.LBE7791:
.LBB7795:
.LBB7796:
	.loc 18 237 0
	lwz 11,5208(31)
.LBE7796:
.LBE7795:
.LBB7799:
.LBB7793:
	.loc 6 424 0
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,36(1)
.LBE7793:
.LBE7799:
.LBB7800:
.LBB7797:
	.loc 18 237 0
	cmpwi 7,11,0
.LBE7797:
.LBE7800:
.LBB7801:
.LBB7794:
	.loc 6 425 0
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,40(1)
	stw 0,3972(31)
.LBE7794:
.LBE7801:
	.loc 4 1886 0
	lwz 0,28(1)
	stw 0,4004(31)
.LVL920:
	.loc 4 1890 0
	lwz 0,4496(31)
.LBB7802:
.LBB7803:
	.loc 7 608 0
	lwz 9,4(30)
	addi 10,9,4228
	slwi 10,10,2
	add 10,28,10
.LBE7803:
.LBE7802:
	.loc 4 1891 0
	addis 28,28,0x25
.LBB7806:
.LBB7804:
	.loc 7 608 0
	lwz 10,4(10)
.LBE7804:
.LBE7806:
	.loc 4 1890 0
	stw 0,4016(31)
.LBB7807:
.LBB7805:
	.loc 7 608 0
	slwi 10,10,12
	or 9,10,9
	stw 9,3988(31)
.LBE7805:
.LBE7807:
	.loc 4 1888 0
	li 9,7
	stw 9,3956(31)
	.loc 4 1889 0
	li 9,1
	stw 9,3960(31)
	.loc 4 1891 0
	lwz 0,2004(28)
	.loc 4 1892 0
	stw 27,4056(31)
.LVL921:
	.loc 4 1891 0
	stw 0,4008(31)
.LBB7808:
.LBB7798:
	.loc 18 237 0
	beq- 7,.L432
	.loc 18 238 0
	li 0,0
	stw 0,0(11)
.L432:
.LVL922:
.LBE7798:
.LBE7808:
.LBB7809:
.LBB7810:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L433
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L433:
.LVL923:
.LBE7810:
.LBE7809:
.LBB7811:
.LBB7812:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 1897 0
	li 31,1
.LVL924:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L431
	.loc 18 238 0
	stw 31,0(9)
.LVL925:
.L431:
.LBE7812:
.LBE7811:
	.loc 4 1897 0
	mr 3,29
.LEHB28:
	bl _ZN23idAASFindAttackPositionD1Ev
.LVL926:
.L427:
.LBE7749:
	.loc 4 1898 0
	lwz 0,292(1)
	mr 3,31
	lwz 25,260(1)
	mtlr 0
	lwz 26,264(1)
	lwz 27,268(1)
.LVL927:
	lwz 28,272(1)
	lwz 29,276(1)
	lwz 30,280(1)
.LVL928:
	lwz 31,284(1)
	addi 1,1,288
	.cfi_remember_state
.LCFI128:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL929:
.L425:
.LCFI129:
	.cfi_restore_state
.LBB7822:
	.loc 4 1861 0
	mr 3,31
.LVL930:
	li 4,4
.LVL931:
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LEHE28:
.LVL932:
.LBB7813:
.LBB7814:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1863 0
	li 31,0
.LVL933:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L427
	.loc 18 238 0
	li 0,1
.LBE7814:
.LBE7813:
.LBE7822:
	.loc 4 1898 0
	mr 3,31
.LBB7823:
.LBB7816:
.LBB7815:
	.loc 18 238 0
	stw 0,0(9)
.LBE7815:
.LBE7816:
.LBE7823:
	.loc 4 1898 0
	lwz 0,292(1)
	lwz 25,260(1)
	mtlr 0
	lwz 26,264(1)
	lwz 27,268(1)
.LVL934:
	lwz 28,272(1)
	lwz 29,276(1)
	lwz 30,280(1)
.LVL935:
	lwz 31,284(1)
	addi 1,1,288
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI130:
	.cfi_def_cfa_offset 0
	blr
.LVL936:
.L439:
.LCFI131:
	.cfi_restore_state
.LBB7824:
.LBB7817:
.LBB7760:
	.loc 7 636 0
	addi 9,9,132
.LVL937:
	slwi 9,9,2
.LVL938:
	add 9,28,9
.LBE7760:
.LBE7817:
	.loc 4 1872 0
	lwz 0,4(9)
	cmpw 7,30,0
	bne- 7,.L428
.LVL939:
.LBB7818:
.LBB7819:
	.loc 6 424 0
	lwz 11,5124(31)
	.loc 6 425 0
	lwz 9,5128(31)
	.loc 6 426 0
	lwz 0,5132(31)
	.loc 6 424 0
	stw 11,16(1)
	.loc 6 425 0
	stw 9,20(1)
	.loc 6 426 0
	stw 0,24(1)
	b .L429
.LVL940:
.L440:
.LBE7819:
.LBE7818:
	.loc 4 1880 0
	mr 3,31
	li 4,4
.LEHB29:
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LEHE29:
.LVL941:
.LBB7820:
.LBB7821:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1882 0
	li 31,0
.LVL942:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L431
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
	b .L431
.LVL943:
.L438:
	mr 31,3
.LVL944:
.LBE7821:
.LBE7820:
	.loc 4 1897 0
	mr 3,29
	bl _ZN23idAASFindAttackPositionD1Ev
	mr 3,31
.LEHB30:
	bl _Unwind_Resume
.LEHE30:
.LBE7824:
	.cfi_endproc
.LFE2897:
	.section	.gcc_except_table
.LLSDA2897:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2897-.LLSDACSB2897
.LLSDACSB2897:
	.uleb128 .LEHB26-.LFB2897
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB2897
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L438-.LFB2897
	.uleb128 0
	.uleb128 .LEHB28-.LFB2897
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB2897
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L438-.LFB2897
	.uleb128 0
	.uleb128 .LEHB30-.LFB2897
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE2897:
	.section	".text"
	.size	_ZN4idAI20MoveToAttackPositionEP8idEntityi, .-_ZN4idAI20MoveToAttackPositionEP8idEntityi
	.align 2
	.globl _ZN4idAI11MoveToCoverEP8idEntityRK6idVec3
	.type	_ZN4idAI11MoveToCoverEP8idEntityRK6idVec3, @function
_ZN4idAI11MoveToCoverEP8idEntityRK6idVec3:
.LFB2899:
	.loc 4 1953 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2899
.LVL945:
	mflr 0
	stwu 1,-168(1)
.LCFI132:
	.cfi_def_cfa_offset 168
	.cfi_register 65, 0
	stw 28,152(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 30,160(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,164(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,172(1)
	stw 26,144(1)
	stw 27,148(1)
	stw 29,156(1)
.LBB7825:
	.loc 4 1959 0
	lwz 0,3944(3)
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L442
	.loc 4 1959 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	beq- 7,.L442
	.loc 4 1965 0 is_stmt 1
	li 4,0
.LVL946:
	addi 3,3,4216
.LVL947:
.LEHB31:
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL948:
	.loc 4 1966 0
	lis 9,.LC78@ha
	lfs 1,.LC78@l(9)
	.loc 4 1965 0
	mr 27,3
.LVL949:
	.loc 4 1966 0
	mr 4,3
	mr 3,31
.LVL950:
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL951:
	.loc 4 1971 0
	addi 29,1,32
	.loc 4 1966 0
	mr 26,3
.LVL952:
	.loc 4 1969 0
	mr 3,30
.LVL953:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL954:
	.loc 4 1971 0
	mr 4,28
.LBB7826:
.LBB7827:
.LBB7828:
	.loc 6 424 0
	lwz 7,0(3)
	.loc 6 425 0
	lwz 8,4(3)
	.loc 6 426 0
	lwz 10,8(3)
	.loc 6 424 0
	lwz 11,12(3)
	.loc 6 425 0
	lwz 9,16(3)
	.loc 6 426 0
	lwz 0,20(3)
.LBE7828:
.LBE7827:
.LBE7826:
	.loc 4 1971 0
	mr 3,29
.LVL955:
.LBB7831:
.LBB7830:
.LBB7829:
	.loc 6 424 0
	stw 7,60(1)
	.loc 6 425 0
	stw 8,64(1)
	.loc 6 426 0
	stw 10,68(1)
.LVL956:
	.loc 6 424 0
	stw 11,72(1)
	.loc 6 425 0
	stw 9,76(1)
	.loc 6 426 0
	stw 0,80(1)
.LBE7829:
.LBE7830:
.LBE7831:
	.loc 4 1971 0
	bl _ZN14idAASFindCoverC1ERK6idVec3
.LEHE31:
	.loc 4 1972 0
	lwz 9,4(27)
	addi 4,1,16
	lwz 0,8(27)
	mr 5,26
	lwz 11,0(27)
	addi 6,1,120
	lwz 3,3944(31)
	mr 7,28
	stw 11,120(1)
	li 10,1
	stw 9,124(1)
	stw 0,128(1)
	lwz 9,0(3)
	lwz 8,3948(31)
	stw 29,8(1)
	lwz 0,124(9)
	addi 9,1,60
	mtctr 0
.LEHB32:
	bctrl
	cmpwi 7,3,0
	bne- 7,.L445
	.loc 4 1973 0
	mr 3,31
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LEHE32:
.LVL957:
.LBB7832:
.LBB7833:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1975 0
	li 31,0
.LVL958:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L446
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LVL959:
.L446:
.LBE7833:
.LBE7832:
	.loc 4 1994 0
	mr 3,29
.LEHB33:
	bl _ZN14idAASFindCoverD1Ev
.LEHE33:
.LVL960:
.L444:
.LBE7825:
	.loc 4 1995 0
	lwz 0,172(1)
	mr 3,31
	lwz 26,144(1)
	mtlr 0
	lwz 27,148(1)
	lwz 28,152(1)
.LVL961:
	lwz 29,156(1)
	lwz 30,160(1)
.LVL962:
	lwz 31,164(1)
	addi 1,1,168
	.cfi_remember_state
.LCFI133:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL963:
.L445:
.LCFI134:
	.cfi_restore_state
.LBB7862:
	.loc 4 1978 0
	lwz 5,3956(31)
	mr 3,31
	addi 4,1,20
.LEHB34:
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
.LEHE34:
	cmpwi 0,3,0
	bne- 0,.L457
.LVL964:
.LBB7834:
.LBB7835:
	.loc 6 424 0
	lwz 0,20(1)
.LBE7835:
.LBE7834:
.LBB7837:
.LBB7838:
	.loc 7 608 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
.LBE7838:
.LBE7837:
.LBB7843:
.LBB7836:
	.loc 6 424 0
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,24(1)
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,28(1)
	stw 0,3972(31)
.LBE7836:
.LBE7843:
	.loc 4 1984 0
	lwz 0,16(1)
	stw 0,4004(31)
.LVL965:
.LBB7844:
.LBB7839:
	.loc 7 608 0
	lwz 11,4(30)
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
.LBE7839:
.LBE7844:
	.loc 4 1988 0
	addis 9,9,0x25
.LBB7845:
.LBB7840:
	.loc 7 608 0
	lwz 0,4(10)
.LBE7840:
.LBE7845:
.LBB7846:
.LBB7847:
	.loc 18 237 0
	lwz 10,5208(31)
.LBE7847:
.LBE7846:
.LBB7850:
.LBB7841:
	.loc 7 608 0
	slwi 0,0,12
	or 11,0,11
.LBE7841:
.LBE7850:
	.loc 4 1986 0
	li 0,8
	stw 0,3956(31)
	.loc 4 1987 0
	li 0,1
	stw 0,3960(31)
.LBB7851:
.LBB7848:
	.loc 18 237 0
	cmpwi 7,10,0
.LBE7848:
.LBE7851:
.LBB7852:
.LBB7842:
	.loc 7 608 0
	stw 11,3988(31)
.LBE7842:
.LBE7852:
	.loc 4 1989 0
	lwz 0,4496(31)
	.loc 4 1988 0
	lwz 9,2004(9)
	.loc 4 1989 0
	stw 0,4016(31)
.LVL966:
	.loc 4 1988 0
	stw 9,4008(31)
.LBB7853:
.LBB7849:
	.loc 18 237 0
	beq- 7,.L448
	.loc 18 238 0
	stw 3,0(10)
.L448:
.LVL967:
.LBE7849:
.LBE7853:
.LBB7854:
.LBB7855:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L449
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L449:
.LVL968:
.LBE7855:
.LBE7854:
.LBB7856:
.LBB7857:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 1994 0
	li 31,1
.LVL969:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L446
	.loc 18 238 0
	stw 31,0(9)
	b .L446
.LVL970:
.L442:
.LBE7857:
.LBE7856:
	.loc 4 1960 0
	mr 3,31
.LVL971:
	li 4,4
.LEHB35:
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LEHE35:
.LVL972:
.LBB7858:
.LBB7859:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1962 0
	li 31,0
.LVL973:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L444
	.loc 18 238 0
	li 0,1
.LBE7859:
.LBE7858:
.LBE7862:
	.loc 4 1995 0
	mr 3,31
.LBB7863:
.LBB7861:
.LBB7860:
	.loc 18 238 0
	stw 0,0(9)
.LBE7860:
.LBE7861:
.LBE7863:
	.loc 4 1995 0
	lwz 0,172(1)
	lwz 26,144(1)
	mtlr 0
	lwz 27,148(1)
	lwz 28,152(1)
.LVL974:
	lwz 29,156(1)
	lwz 30,160(1)
.LVL975:
	lwz 31,164(1)
	addi 1,1,168
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI135:
	.cfi_def_cfa_offset 0
	blr
.LVL976:
.L457:
.LCFI136:
	.cfi_restore_state
.LBB7864:
	.loc 4 1979 0
	mr 3,31
	li 4,0
.LEHB36:
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LEHE36:
	.loc 4 1980 0
	li 31,1
.LVL977:
	b .L446
.LVL978:
.L455:
	mr 31,3
.LVL979:
	.loc 4 1994 0
	mr 3,29
	bl _ZN14idAASFindCoverD1Ev
	mr 3,31
.LEHB37:
	bl _Unwind_Resume
.LEHE37:
.LBE7864:
	.cfi_endproc
.LFE2899:
	.section	.gcc_except_table
.LLSDA2899:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2899-.LLSDACSB2899
.LLSDACSB2899:
	.uleb128 .LEHB31-.LFB2899
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB2899
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L455-.LFB2899
	.uleb128 0
	.uleb128 .LEHB33-.LFB2899
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB2899
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L455-.LFB2899
	.uleb128 0
	.uleb128 .LEHB35-.LFB2899
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB2899
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L455-.LFB2899
	.uleb128 0
	.uleb128 .LEHB37-.LFB2899
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE2899:
	.section	".text"
	.size	_ZN4idAI11MoveToCoverEP8idEntityRK6idVec3, .-_ZN4idAI11MoveToCoverEP8idEntityRK6idVec3
	.align 2
	.globl _ZN4idAI15SlideToPositionERK6idVec3f
	.type	_ZN4idAI15SlideToPositionERK6idVec3f, @function
_ZN4idAI15SlideToPositionERK6idVec3f:
.LFB2900:
	.loc 4 2002 0
	.cfi_startproc
.LVL980:
	stwu 1,-56(1)
.LCFI137:
	.cfi_def_cfa_offset 56
	mflr 0
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -16
	.cfi_register 65, 0
	.loc 4 2003 0
	li 4,0
.LVL981:
	.loc 4 2002 0
	stw 0,60(1)
	stfd 31,48(1)
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	stw 29,36(1)
.LBB7892:
.LBB7893:
	.loc 7 606 0
	li 29,0
	.cfi_offset 29, -20
.LBE7893:
.LBE7892:
	.loc 4 2002 0
	stw 31,44(1)
	.loc 4 2002 0
	mr 31,3
	.cfi_offset 31, -12
	.loc 4 2003 0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL982:
.LBB7895:
.LBB7896:
	.loc 6 424 0
	lwz 0,0(30)
.LBE7896:
.LBE7895:
	.loc 4 2010 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
.LBB7901:
.LBB7897:
	.loc 6 424 0
	stw 0,3964(31)
.LBE7897:
.LBE7901:
	.loc 4 2010 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(9)
	.loc 4 2009 0
	lis 9,gameLocal+2426836@ha
.LBB7902:
.LBB7898:
	.loc 6 425 0
	lwz 0,4(30)
.LBE7898:
.LBE7902:
	.loc 4 2010 0
	fmuls 1,31,0
.LBB7903:
.LBB7899:
	.loc 6 425 0
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,8(30)
.LBE7899:
.LBE7903:
	.loc 4 2010 0
	fctiwz 1,1
.LBB7904:
.LBB7894:
	.loc 7 606 0
	stw 29,3988(31)
.LBE7894:
.LBE7904:
.LBB7905:
.LBB7900:
	.loc 6 426 0
	stw 0,3972(31)
.LVL983:
.LBE7900:
.LBE7905:
	.loc 4 2007 0
	li 0,11
	stw 0,3956(31)
	.loc 4 2008 0
	li 0,1
	stw 0,3960(31)
	.loc 4 2009 0
	lwz 0,gameLocal+2426836@l(9)
	.loc 4 2010 0
	addi 9,1,16
	stfiwx 1,0,9
	.loc 4 2009 0
	stw 0,4008(31)
.LVL984:
	.loc 4 2010 0
	lwz 3,16(1)
	bl _ZN9idPhysics22SnapTimeToPhysicsFrameEi
.LBB7906:
.LBB7907:
	.loc 18 237 0
	lwz 9,5208(31)
.LBE7907:
.LBE7906:
	.loc 4 2010 0
	stw 3,4012(31)
.LVL985:
.LBB7909:
.LBB7908:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L459
	.loc 18 238 0
	stw 29,0(9)
.L459:
.LVL986:
.LBE7908:
.LBE7909:
.LBB7910:
.LBB7911:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L460
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L460:
.LVL987:
.LBE7911:
.LBE7910:
.LBB7912:
.LBB7913:
	.loc 18 237 0
	lwz 9,5220(31)
	cmpwi 7,9,0
	beq- 7,.L461
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L461:
.LBE7913:
.LBE7912:
	.loc 4 2015 0
	lwz 0,4012(31)
	cmpwi 7,0,0
	ble- 7,.L462
	.loc 4 2016 0
	addi 3,31,4216
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL988:
	lwz 0,4012(31)
	lis 9,.LC65@ha
	xoris 0,0,0x8000
	lfs 0,.LC65@l(9)
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfd 12,8(1)
.LBB7914:
.LBB7915:
	.loc 6 431 0
	lfs 8,0(30)
.LBE7915:
.LBE7914:
	.loc 4 2016 0
	fsub 12,12,0
	lfs 0,_ZN6idMath8M_MS2SECE@l(9)
.LBB7921:
.LBB7922:
	.loc 6 443 0
	lis 9,.LC0@ha
.LBE7922:
.LBE7921:
.LBB7926:
.LBB7916:
	.loc 6 431 0
	lfs 9,4(30)
.LBE7916:
.LBE7926:
.LBB7927:
.LBB7923:
	.loc 6 443 0
	lfs 13,.LC0@l(9)
.LBE7923:
.LBE7927:
	.loc 4 2016 0
	frsp 12,12
.LBB7928:
.LBB7917:
	.loc 6 431 0
	lfs 10,8(30)
	lfs 11,8(3)
.LBE7917:
.LBE7928:
	.loc 4 2017 0
	lwz 0,3952(31)
	.loc 4 2016 0
	fmuls 12,12,0
.LBB7929:
.LBB7918:
	.loc 6 431 0
	lfs 0,0(3)
	fsubs 11,10,11
.LBE7918:
.LBE7929:
	.loc 4 2017 0
	cmpwi 7,0,3
.LBB7930:
.LBB7919:
	.loc 6 431 0
	fsubs 0,8,0
.LBE7919:
.LBE7930:
.LBB7931:
.LBB7924:
	.loc 6 443 0
	fdivs 12,13,12
.LVL989:
.LBE7924:
.LBE7931:
.LBB7932:
.LBB7920:
	.loc 6 431 0
	lfs 13,4(3)
	fsubs 13,9,13
.LBE7920:
.LBE7932:
.LBB7933:
.LBB7925:
	.loc 6 444 0
	fmuls 0,0,12
	fmuls 13,13,12
	fmuls 12,11,12
.LVL990:
.LBE7925:
.LBE7933:
.LBB7934:
.LBB7935:
	.loc 6 424 0
	stfs 0,3976(31)
	.loc 6 425 0
	stfs 13,3980(31)
	.loc 6 426 0
	stfs 12,3984(31)
.LBE7935:
.LBE7934:
	.loc 4 2017 0
	beq- 7,.L465
	.loc 4 2018 0
	li 0,0
	stw 0,3984(31)
	stw 0,28(1)
	lfs 12,28(1)
.LVL991:
.L464:
.LBB7936:
.LBB7937:
	.loc 6 642 0
	fmuls 13,13,13
.LVL992:
.LBB7938:
.LBB7939:
	.loc 8 246 0
	lis 9,.LC15@ha
.LBE7939:
.LBE7938:
	.loc 6 642 0
	fmadds 0,0,0,13
.LVL993:
	fadds 0,12,0
	stfs 0,20(1)
.LVL994:
.LBB7942:
.LBB7940:
	.loc 8 246 0
	lfs 0,.LC15@l(9)
.LVL995:
	.loc 8 248 0
	lwz 9,20(1)
	.loc 8 246 0
	lfs 11,20(1)
	.loc 8 248 0
	srawi 0,9,1
	.loc 8 249 0
	lis 9,0x5f37
	ori 9,9,23007
	.loc 8 246 0
	fmuls 0,11,0
	.loc 8 249 0
	subf 9,0,9
	stw 9,24(1)
.LVL996:
	.loc 8 250 0
	lis 9,.LC63@ha
	.loc 4 2002 0
	fneg 0,0
	.loc 8 250 0
	lfs 13,.LC63@l(9)
	lfs 11,24(1)
	fmuls 12,11,11
	fmadds 0,0,12,13
.LVL997:
.LBE7940:
.LBE7942:
	.loc 6 643 0
	lfs 13,20(1)
.LBB7943:
.LBB7941:
	.loc 8 250 0
	fmuls 0,11,0
.LVL998:
.LBE7941:
.LBE7943:
	.loc 6 643 0
	fmuls 0,13,0
.LVL999:
.LBE7937:
.LBE7936:
	.loc 4 2020 0
	stfs 0,4016(31)
.LVL1000:
.L462:
	.loc 4 2024 0
	lwz 0,60(1)
	li 3,1
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
.LVL1001:
	lwz 31,44(1)
.LVL1002:
	lfd 31,48(1)
.LVL1003:
	addi 1,1,56
	.cfi_remember_state
.LCFI138:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1004:
.L465:
.LCFI139:
	.cfi_restore_state
	.loc 4 2017 0
	fmuls 12,12,12
.LVL1005:
	b .L464
	.cfi_endproc
.LFE2900:
	.size	_ZN4idAI15SlideToPositionERK6idVec3f, .-_ZN4idAI15SlideToPositionERK6idVec3f
	.align 2
	.globl _ZNK4idAI8MoveDoneEv
	.type	_ZNK4idAI8MoveDoneEv, @function
_ZNK4idAI8MoveDoneEv:
.LFB2902:
	.loc 4 2056 0
	.cfi_startproc
.LVL1006:
	.loc 4 2057 0
	lwz 3,3956(3)
.LVL1007:
	.loc 4 2058 0
	cntlzw 3,3
	srwi 3,3,5
	blr
	.cfi_endproc
.LFE2902:
	.size	_ZNK4idAI8MoveDoneEv, .-_ZNK4idAI8MoveDoneEv
	.align 2
	.globl _ZN4idAI13StepDirectionEf
	.type	_ZN4idAI13StepDirectionEf, @function
_ZN4idAI13StepDirectionEf:
.LFB2903:
	.loc 4 2065 0
	.cfi_startproc
.LVL1008:
	mflr 0
	stwu 1,-232(1)
.LCFI140:
	.cfi_def_cfa_offset 232
	.cfi_register 65, 0
	stw 30,192(1)
.LBB7944:
	.loc 4 2070 0
	addi 4,1,104
.LBE7944:
	.loc 4 2065 0
	stw 0,236(1)
.LBB8050:
.LBB7945:
.LBB7946:
	.loc 12 109 0
	li 0,0
	.cfi_offset 65, 4
	.cfi_offset 30, -40
.LBE7946:
.LBE7945:
.LBE8050:
	.loc 4 2065 0
	stw 31,196(1)
	mr 31,3
	.cfi_offset 31, -36
	stfd 28,200(1)
.LBB8051:
.LBB7948:
.LBB7949:
	.loc 6 439 0
	lis 30,.LC80@ha
.LBE7949:
.LBE7948:
.LBE8051:
	.loc 4 2065 0
	stfd 29,208(1)
	stfd 30,216(1)
	stfd 31,224(1)
	stw 28,184(1)
	stw 29,188(1)
.LBB8052:
	.loc 4 2069 0
	stfs 1,4024(3)
.LVL1009:
	.loc 4 2070 0
	addi 3,1,92
.LVL1010:
.LBB7956:
.LBB7947:
	.loc 12 109 0
	stw 0,104(1)
	.loc 12 110 0
	stfs 1,108(1)
	.loc 12 111 0
	stw 0,112(1)
.LBE7947:
.LBE7956:
	.loc 4 2070 0
	.cfi_offset 29, -44
	.cfi_offset 28, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	bl _ZNK8idAngles9ToForwardEv
.LVL1011:
.LBB7957:
.LBB7958:
	.loc 6 424 0
	lwz 0,92(1)
.LBE7958:
.LBE7957:
	.loc 4 2072 0
	li 4,0
	addi 3,31,4216
.LBB7960:
.LBB7959:
	.loc 6 424 0
	stw 0,3976(31)
	.loc 6 425 0
	lwz 0,96(1)
	stw 0,3980(31)
	.loc 6 426 0
	lwz 0,100(1)
	stw 0,3984(31)
.LBE7959:
.LBE7960:
	.loc 4 2072 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1012:
	.loc 4 2074 0
	lwz 0,3952(31)
.LBB7961:
.LBB7952:
	.loc 6 439 0
	lfs 0,.LC80@l(30)
	lfs 12,3980(31)
.LBE7952:
.LBE7961:
	.loc 4 2074 0
	cmpwi 7,0,3
.LBB7962:
.LBB7953:
	.loc 6 439 0
	lfs 13,3984(31)
	lfs 11,3976(31)
	fmuls 12,12,0
	fmuls 13,13,0
.LBE7953:
.LBE7962:
.LBB7963:
.LBB7964:
	.loc 6 424 0
	lwz 11,0(3)
.LBE7964:
.LBE7963:
.LBB7967:
.LBB7954:
	.loc 6 439 0
	fmuls 0,11,0
.LBE7954:
.LBE7967:
.LBB7968:
.LBB7965:
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	lwz 0,8(3)
	.loc 6 425 0
	stw 9,120(1)
.LBE7965:
.LBE7968:
	.loc 4 2074 0
	li 9,7
.LBB7969:
.LBB7966:
	.loc 6 424 0
	stw 11,116(1)
	.loc 6 426 0
	stw 0,124(1)
.LBE7966:
.LBE7969:
	.loc 4 2074 0
	lwz 4,3944(31)
.LVL1013:
.LBB7970:
.LBB7955:
.LBB7950:
.LBB7951:
	.loc 6 396 0
	stfs 0,80(1)
	.loc 6 397 0
	stfs 12,84(1)
	.loc 6 398 0
	stfs 13,88(1)
.LBE7951:
.LBE7950:
.LBE7955:
.LBE7970:
	.loc 4 2074 0
	beq- 7,.L489
.L468:
	.loc 4 2074 0 is_stmt 0 discriminator 3
	mr 3,31
.LVL1014:
	addi 5,1,116
	addi 6,1,80
	li 7,1000
	li 8,1000
	addi 10,1,128
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
.LVL1015:
	.loc 4 2076 0 is_stmt 1 discriminator 3
	lwz 9,172(1)
	cmpwi 7,9,0
	beq- 7,.L469
	.loc 4 2076 0 is_stmt 0 discriminator 1
	lwz 0,3956(31)
	cmpwi 7,0,3
	beq- 7,.L470
	.loc 4 2076 0 discriminator 4
	cmpwi 7,0,5
	beq- 7,.L470
.L469:
.LBB7971:
	.loc 4 2081 0 is_stmt 1
	lwz 0,3952(31)
	lwz 3,168(1)
	cmpwi 7,0,3
	beq- 7,.L480
.L472:
.LBE7971:
	.loc 4 2119 0
	cntlzw 3,3
	srwi 3,3,5
.L471:
.LBE8052:
	.loc 4 2120 0
	lwz 0,236(1)
	lwz 28,184(1)
	mtlr 0
	lwz 29,188(1)
	lwz 30,192(1)
	lwz 31,196(1)
.LVL1016:
	lfd 28,200(1)
	lfd 29,208(1)
	lfd 30,216(1)
	lfd 31,224(1)
	addi 1,1,232
	.cfi_remember_state
.LCFI141:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1017:
.L470:
.LCFI142:
	.cfi_restore_state
.LBB8053:
.LBB8045:
.LBB8046:
	.loc 7 634 0 discriminator 3
	lwz 0,3988(31)
	.loc 7 635 0 discriminator 3
	lis 11,gameLocal@ha
	la 11,gameLocal@l(11)
	.loc 7 634 0 discriminator 3
	rlwinm 10,0,0,20,31
.LVL1018:
	.loc 7 635 0 discriminator 3
	srawi 0,0,12
	addi 8,10,4228
	slwi 8,8,2
	add 8,11,8
	lwz 8,4(8)
	cmpw 7,8,0
	bne+ 7,.L469
	.loc 7 636 0
	addi 10,10,132
.LVL1019:
.LBE8046:
.LBE8045:
	.loc 4 2078 0
	li 3,1
.LBB8048:
.LBB8047:
	.loc 7 636 0
	slwi 10,10,2
.LVL1020:
	add 11,11,10
.LBE8047:
.LBE8048:
	.loc 4 2076 0
	lwz 0,4(11)
	cmpw 7,9,0
	beq- 7,.L471
	b .L469
.LVL1021:
.L489:
	.loc 4 2074 0
	li 9,1
	b .L468
.LVL1022:
.L480:
.LBB8049:
	.loc 4 2081 0 discriminator 1
	cmpwi 7,3,1
	bne+ 7,.L472
.LVL1023:
.LBB7972:
.LBB7973:
.LBB7974:
	.loc 6 444 0
	lis 9,.LC81@ha
	lfs 11,140(1)
	lfs 0,.LC81@l(9)
.LBE7974:
.LBE7973:
.LBB7980:
.LBB7981:
	.loc 6 398 0
	lis 11,.LC82@ha
.LBE7981:
.LBE7980:
.LBB7985:
.LBB7975:
	.loc 6 444 0
	lfs 12,144(1)
.LBE7975:
.LBE7985:
.LBB7986:
.LBB7982:
	.loc 6 396 0
	li 29,0
.LBE7982:
.LBE7986:
.LBB7987:
.LBB7976:
	.loc 6 444 0
	lfs 13,148(1)
.LBE7976:
.LBE7987:
	.loc 4 2087 0
	addi 5,1,116
.LBB7988:
.LBB7977:
	.loc 6 444 0
	fmuls 12,12,0
.LBE7977:
.LBE7988:
.LBB7989:
.LBB7983:
	.loc 6 398 0
	lwz 0,.LC82@l(11)
.LBE7983:
.LBE7989:
.LBB7990:
.LBB7978:
	.loc 6 444 0
	fmuls 13,13,0
.LVL1024:
.LBE7978:
.LBE7990:
	.loc 4 2087 0
	lwz 4,3944(31)
.LVL1025:
.LBB7991:
.LBB7979:
	.loc 6 444 0
	fmuls 0,11,0
.LBE7979:
.LBE7991:
	.loc 4 2087 0
	addi 6,1,68
.LBB7992:
.LBB7993:
	.loc 6 425 0
	stfs 12,3980(31)
.LBE7993:
.LBE7992:
	.loc 4 2087 0
	li 7,1000
.LBB7996:
.LBB7994:
	.loc 6 426 0
	stfs 13,3984(31)
.LBE7994:
.LBE7996:
	.loc 4 2087 0
	li 8,1000
.LBB7997:
.LBB7995:
	.loc 6 424 0
	stfs 0,3976(31)
.LBE7995:
.LBE7997:
	.loc 4 2087 0
	li 9,1
	addi 10,1,128
	mr 3,31
.LBB7998:
.LBB7984:
	.loc 6 398 0
	stw 0,76(1)
	.loc 6 396 0
	stw 29,68(1)
	.loc 6 397 0
	stw 29,72(1)
.LBE7984:
.LBE7998:
	.loc 4 2087 0
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
.LVL1026:
	.loc 4 2089 0
	lwz 0,128(1)
	.loc 4 2090 0
	mr 3,31
.LBB7999:
.LBB8000:
	.loc 6 439 0
	lfs 30,.LC80@l(30)
.LBE8000:
.LBE7999:
	.loc 4 2090 0
	addi 5,1,56
.LBB8012:
.LBB8005:
	.loc 6 439 0
	lfs 13,3980(31)
.LBE8005:
.LBE8012:
	.loc 4 2090 0
	addi 6,1,44
.LBB8013:
.LBB8006:
	.loc 6 439 0
	lfs 0,3984(31)
.LBE8006:
.LBE8013:
	.loc 4 2090 0
	li 7,1000
.LBB8014:
.LBB8007:
	.loc 6 439 0
	lfs 12,3976(31)
	fmuls 13,13,30
.LBE8007:
.LBE8014:
	.loc 4 2089 0
	stw 0,56(1)
.LBB8015:
.LBB8008:
	.loc 6 439 0
	fmuls 0,0,30
.LBE8008:
.LBE8015:
	.loc 4 2089 0
	lwz 0,132(1)
.LBB8016:
.LBB8009:
	.loc 6 439 0
	fmuls 12,12,30
.LBE8009:
.LBE8016:
	.loc 4 2090 0
	lwz 4,3944(31)
.LVL1027:
	li 8,1000
	.loc 4 2089 0
	stw 0,60(1)
	.loc 4 2090 0
	li 9,1
	.loc 4 2089 0
	lwz 0,136(1)
	.loc 4 2090 0
	addi 10,1,128
.LBB8017:
.LBB8010:
.LBB8001:
.LBB8002:
	.loc 6 396 0
	stfs 12,44(1)
.LBE8002:
.LBE8001:
.LBE8010:
.LBE8017:
	.loc 4 2089 0
	stw 0,64(1)
.LBB8018:
.LBB8011:
.LBB8004:
.LBB8003:
	.loc 6 397 0
	stfs 13,48(1)
	.loc 6 398 0
	stfs 0,52(1)
.LBE8003:
.LBE8004:
.LBE8011:
.LBE8018:
	.loc 4 2090 0
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
.LVL1028:
	.loc 4 2091 0
	lwz 0,168(1)
	cmpwi 7,0,0
	bne- 7,.L473
	.loc 4 2092 0
	lis 9,.LC75@ha
	.loc 4 2093 0
	li 3,1
	.loc 4 2092 0
	lwz 0,.LC75@l(9)
	stw 0,3984(31)
	.loc 4 2093 0
	b .L471
.L473:
.LBB8019:
.LBB8020:
	.loc 6 398 0
	lis 11,.LC83@ha
.LBE8020:
.LBE8019:
	.loc 4 2097 0
	lwz 4,3944(31)
.LVL1029:
.LBB8023:
.LBB8021:
	.loc 6 398 0
	lwz 0,.LC83@l(11)
.LBE8021:
.LBE8023:
	.loc 4 2097 0
	mr 3,31
	addi 5,1,116
	addi 6,1,32
	li 7,1000
	li 8,1000
	li 9,1
	addi 10,1,128
.LBB8024:
	.loc 4 2101 0
	lis 30,.LC20@ha
.LBE8024:
.LBB8042:
.LBB8022:
	.loc 6 396 0
	stw 29,32(1)
	.loc 6 397 0
	stw 29,36(1)
	.loc 6 398 0
	stw 0,40(1)
.LBE8022:
.LBE8042:
	.loc 4 2097 0
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
	.loc 4 2099 0
	lfs 29,136(1)
.LBB8043:
	.loc 4 2101 0
	lfs 28,.LC20@l(30)
	lfs 31,124(1)
	fadds 28,29,28
.LBE8043:
	.loc 4 2099 0
	lwz 28,128(1)
.LVL1030:
	lwz 29,132(1)
.LVL1031:
.LBB8044:
	.loc 4 2101 0
	fcmpu 7,28,31
	cror 30,29,30
	beq+ 7,.L479
	b .L487
.LVL1032:
.L491:
.LBB8025:
	.loc 4 2104 0
	lwz 0,116(1)
	.loc 4 2106 0
	stfs 31,28(1)
	.loc 4 2104 0
	stw 0,20(1)
	.loc 4 2105 0
	lwz 0,120(1)
	stw 0,24(1)
.L477:
.LBB8026:
.LBB8027:
	.loc 6 439 0
	lfs 13,3980(31)
.LBE8027:
.LBE8026:
	.loc 4 2110 0
	mr 3,31
.LBB8034:
.LBB8030:
	.loc 6 439 0
	lfs 0,3984(31)
.LBE8030:
.LBE8034:
	.loc 4 2110 0
	addi 5,1,20
.LBB8035:
.LBB8031:
	.loc 6 439 0
	lfs 12,3976(31)
	fmuls 13,13,30
	fmuls 0,0,30
.LBE8031:
.LBE8035:
	.loc 4 2110 0
	lwz 4,3944(31)
.LVL1033:
.LBB8036:
.LBB8032:
	.loc 6 439 0
	fmuls 12,12,30
.LBE8032:
.LBE8036:
	.loc 4 2110 0
	addi 6,1,8
	li 7,1000
	li 8,1000
	li 9,1
	addi 10,1,128
.LBB8037:
.LBB8033:
.LBB8028:
.LBB8029:
	.loc 6 396 0
	stfs 12,8(1)
	.loc 6 397 0
	stfs 13,12(1)
	.loc 6 398 0
	stfs 0,16(1)
.LBE8029:
.LBE8028:
.LBE8033:
.LBE8037:
	.loc 4 2110 0
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
.LVL1034:
	.loc 4 2111 0
	lwz 0,168(1)
	cmpwi 7,0,0
	beq- 7,.L490
.LBE8025:
	.loc 4 2101 0
	lfs 0,.LC20@l(30)
	fadds 31,31,0
.LVL1035:
	fcmpu 7,28,31
	cror 30,29,30
	bne- 7,.L487
.LVL1036:
.L479:
.LBB8040:
	.loc 4 2103 0
	fcmpu 7,31,29
	cror 30,28,30
	beq- 7,.L491
.LVL1037:
.LBB8038:
.LBB8039:
	.loc 6 424 0
	stw 28,20(1)
	.loc 6 425 0
	stw 29,24(1)
	.loc 6 426 0
	stfs 29,28(1)
	b .L477
.LVL1038:
.L487:
.LBE8039:
.LBE8038:
.LBE8040:
	.loc 4 2116 0
	li 3,0
	b .L471
.LVL1039:
.L490:
.LBB8041:
	.loc 4 2112 0
	lis 9,.LC0@ha
	.loc 4 2113 0
	li 3,1
	.loc 4 2112 0
	lwz 0,.LC0@l(9)
	stw 0,3984(31)
	.loc 4 2113 0
	b .L471
.LBE8041:
.LBE8044:
.LBE7972:
.LBE8049:
.LBE8053:
	.cfi_endproc
.LFE2903:
	.size	_ZN4idAI13StepDirectionEf, .-_ZN4idAI13StepDirectionEf
	.align 2
	.globl _ZN4idAI12NewWanderDirERK6idVec3
	.type	_ZN4idAI12NewWanderDirERK6idVec3, @function
_ZN4idAI12NewWanderDirERK6idVec3:
.LFB2907:
	.loc 4 2127 0
	.cfi_startproc
.LVL1040:
	mflr 0
	stwu 1,-128(1)
.LCFI143:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
.LBB8067:
	.loc 4 2132 0
	lis 11,gameLocal@ha
.LBB8068:
.LBB8069:
.LBB8070:
.LBB8071:
	.loc 19 71 0
	lis 9,0x1
.LBE8071:
.LBE8070:
.LBE8069:
.LBE8068:
.LBE8067:
	.loc 4 2127 0
	stfd 30,112(1)
.LBB8116:
	.loc 4 2132 0
	la 11,gameLocal@l(11)
.LBE8116:
	.loc 4 2127 0
	stw 26,56(1)
.LBB8117:
.LBB8090:
.LBB8082:
.LBB8077:
.LBB8072:
	.loc 19 71 0
	ori 9,9,3533
.LBE8072:
.LBE8077:
.LBE8082:
.LBE8090:
.LBE8117:
	.loc 4 2127 0
	stw 28,64(1)
.LBB8118:
.LBB8091:
.LBB8092:
	.loc 8 904 0
	lis 26,.LC91@ha
	.cfi_offset 28, -64
	.cfi_offset 26, -72
	.cfi_offset 62, -16
.LBE8092:
.LBE8091:
.LBE8118:
	.loc 4 2127 0
	stw 29,68(1)
.LBB8119:
	.loc 4 2134 0
	lis 29,.LC89@ha
	.cfi_offset 29, -60
.LBE8119:
	.loc 4 2127 0
	stw 30,72(1)
	mr 28,4
	stw 31,76(1)
.LBB8120:
.LBB8095:
.LBB8083:
.LBB8078:
.LBB8073:
	.loc 19 71 0
	addis 31,11,0x1
	.cfi_offset 31, -52
	.cfi_offset 30, -56
.LBE8073:
.LBE8078:
.LBE8083:
.LBE8095:
.LBE8120:
	.loc 4 2127 0
	stw 0,132(1)
.LBB8121:
	.loc 4 2132 0
	addis 11,11,0x25
.LBE8121:
	.loc 4 2127 0
	stfd 26,80(1)
	mr 30,3
	stfd 27,88(1)
	stfd 28,96(1)
	stfd 29,104(1)
	stfd 31,120(1)
	stw 27,60(1)
.LBB8122:
.LBB8096:
.LBB8084:
.LBB8079:
.LBB8074:
	.loc 19 71 0
	lwz 0,-32064(31)
	.cfi_offset 27, -68
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	mullw 9,9,0
.LBE8074:
.LBE8079:
.LBE8084:
.LBE8096:
	.loc 4 2132 0
	lis 0,0x4330
.LBB8097:
.LBB8085:
	.loc 19 83 0
	stw 0,16(1)
.LBB8080:
.LBB8075:
	.loc 19 71 0
	addi 9,9,1
	.loc 19 72 0
	rlwinm 10,9,0,17,31
.LBE8075:
.LBE8080:
	.loc 19 83 0
	xoris 10,10,0x8000
	stw 10,20(1)
.LBE8085:
.LBE8097:
	.loc 4 2132 0
	lis 10,.LC65@ha
	lfs 0,.LC65@l(10)
.LBB8098:
.LBB8086:
	.loc 19 83 0
	lfd 11,16(1)
.LBE8086:
.LBE8098:
	.loc 4 2132 0
	lwz 11,2004(11)
.LBB8099:
.LBB8087:
	.loc 19 83 0
	fsub 11,11,0
.LBE8087:
.LBE8099:
	.loc 4 2132 0
	stw 0,8(1)
	xoris 11,11,0x8000
	stw 11,12(1)
.LBB8100:
.LBB8088:
	.loc 19 83 0
	lis 11,.LC66@ha
	frsp 11,11
	lfs 10,.LC66@l(11)
.LBE8088:
.LBE8100:
	.loc 4 2132 0
	lfd 12,8(1)
	lis 11,.LC90@ha
	lfs 13,.LC90@l(11)
	addi 11,3,4028
	fsub 12,12,0
.LBB8101:
.LBB8089:
.LBB8081:
.LBB8076:
	.loc 19 71 0
	stw 9,-32064(31)
.LBE8076:
.LBE8081:
	.loc 19 83 0
	fmuls 11,11,10
.LBE8089:
.LBE8101:
	.loc 4 2134 0
	addi 9,1,40
	.loc 4 2132 0
	frsp 12,12
.LVL1041:
	fmadds 13,11,13,13
	fadds 13,12,13
	.loc 4 2134 0
	lfs 12,.LC89@l(29)
	.loc 4 2132 0
	fctiwz 13,13
	stfiwx 13,0,11
	.loc 4 2134 0
	stw 0,24(1)
	lfs 13,4192(3)
	fdivs 12,13,12
.LBB8102:
.LBB8093:
	.loc 8 904 0
	lfs 13,.LC91@l(26)
.LBE8093:
.LBE8102:
	.loc 4 2134 0
	fctiwz 12,12
	stfiwx 12,0,9
	lwz 0,40(1)
	mulli 0,0,45
	xoris 0,0,0x8000
	stw 0,28(1)
	lfd 30,24(1)
	fsub 30,30,0
	frsp 30,30
.LVL1042:
.LBB8103:
.LBB8094:
	.loc 8 904 0
	fcmpu 7,30,13
	cror 30,29,30
	beq- 7,.L493
	lis 11,.LC6@ha
	lfs 0,.LC6@l(11)
	fcmpu 7,30,0
	bnl- 7,.L494
.L493:
	.loc 8 905 0
	lfs 31,.LC91@l(26)
	fdivs 1,30,31
	bl floor
.LVL1043:
	fmr 0,30
	.loc 4 2127 0
	fneg 1,1
	.loc 8 905 0
	fmadd 30,1,31,0
.LVL1044:
	frsp 30,30
.LVL1045:
.L494:
.LBE8094:
.LBE8103:
	.loc 4 2135 0
	lis 27,.LC84@ha
.LBB8104:
.LBB8105:
	.loc 8 904 0
	lfs 0,.LC91@l(26)
.LBE8105:
.LBE8104:
	.loc 4 2135 0
	lfs 31,.LC84@l(27)
	fsubs 31,30,31
.LVL1046:
.LBB8107:
.LBB8106:
	.loc 8 904 0
	fcmpu 7,31,0
	cror 30,29,30
	beq- 7,.L496
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,31,0
	bnl- 7,.L497
.L496:
	.loc 8 905 0
	lfs 29,.LC91@l(26)
	fdivs 1,31,29
	bl floor
	fmr 0,31
	.loc 4 2127 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,29,0
.LVL1047:
	frsp 31,31
.LVL1048:
.L497:
.LBE8106:
.LBE8107:
	.loc 4 2137 0
	addi 3,30,4216
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1049:
	.loc 4 2138 0
	lfs 27,0(28)
	lfs 0,0(3)
	.loc 4 2140 0
	lis 9,.LC93@ha
	.loc 4 2139 0
	lfs 26,4(28)
	.loc 4 2138 0
	fsubs 27,27,0
.LVL1050:
	.loc 4 2140 0
	lfs 0,.LC93@l(9)
	fcmpu 7,27,0
	.loc 4 2139 0
	lfs 0,4(3)
	fsubs 26,26,0
.LVL1051:
	.loc 4 2140 0
	bgt- 7,.L520
	.loc 4 2142 0
	lis 11,.LC94@ha
	lfs 0,.LC94@l(11)
	fcmpu 7,27,0
	bnl- 7,.L538
	.loc 4 2148 0
	lfs 0,.LC94@l(11)
	lis 28,.LC75@ha
.LVL1052:
	.loc 4 2143 0
	lfs 29,.LC84@l(27)
.LVL1053:
	.loc 4 2148 0
	fcmpu 7,26,0
	bnl- 7,.L540
.L522:
	.loc 4 2149 0
	lis 9,.LC85@ha
	lfs 28,.LC85@l(9)
.L501:
.LVL1054:
	.loc 4 2157 0
	lfs 0,.LC75@l(28)
	fcmpu 7,29,0
	beq- 7,.L503
	.loc 4 2157 0 is_stmt 0 discriminator 1
	fcmpu 7,28,0
	beq- 7,.L503
	.loc 4 2158 0 is_stmt 1
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	.loc 4 2159 0
	lis 9,.LC16@ha
	.loc 4 2158 0
	fcmpu 7,29,0
	.loc 4 2159 0
	lfs 0,.LC16@l(9)
	.loc 4 2158 0
	beq- 7,.L541
	.loc 4 2161 0
	fcmpu 7,28,0
	bne- 7,.L525
	lis 9,.LC88@ha
	lfs 1,.LC88@l(9)
.L505:
.LVL1055:
	.loc 4 2164 0
	fcmpu 7,1,31
	beq+ 7,.L503
	.loc 4 2164 0 is_stmt 0 discriminator 1
	mr 3,30
.LVL1056:
	bl _ZN4idAI13StepDirectionEf
.LVL1057:
	cmpwi 7,3,0
	.loc 4 2165 0 is_stmt 1 discriminator 1
	li 3,1
	.loc 4 2164 0 discriminator 1
	bne- 7,.L507
.L503:
.LVL1058:
.LBB8108:
.LBB8109:
	.loc 19 71 0
	lwz 11,-32064(31)
	lis 9,0x1
	ori 9,9,3533
	mullw 9,9,11
	addi 0,9,1
.LBE8109:
.LBE8108:
	.loc 4 2170 0
	andi. 11,0,1
.LBB8111:
.LBB8110:
	.loc 19 71 0
	stw 0,-32064(31)
.LBE8110:
.LBE8111:
	.loc 4 2170 0
	beq- 0,.L542
.LVL1059:
.L527:
	stfs 29,48(1)
	.loc 4 2172 0
	fmr 29,28
.LVL1060:
	.loc 4 2173 0
	lfs 28,48(1)
.LVL1061:
.L508:
	.loc 4 2176 0
	lfs 0,.LC75@l(28)
	fcmpu 7,29,0
	beq- 7,.L509
	.loc 4 2176 0 is_stmt 0 discriminator 1
	fcmpu 7,29,31
	bne- 7,.L543
.L509:
	.loc 4 2180 0 is_stmt 1
	lfs 0,.LC75@l(28)
	fcmpu 7,28,0
	beq- 7,.L510
	.loc 4 2180 0 is_stmt 0 discriminator 1
	fcmpu 7,28,31
	bne- 7,.L544
.L510:
	.loc 4 2185 0 is_stmt 1
	lfs 0,.LC75@l(28)
	fcmpu 7,30,0
	bne- 7,.L516
.L511:
.LVL1062:
.LBB8112:
.LBB8113:
	.loc 19 71 0
	lwz 11,-32064(31)
	lis 9,0x1
	ori 9,9,3533
	mullw 9,9,11
	addi 0,9,1
.LBE8113:
.LBE8112:
	.loc 4 2190 0
	andi. 11,0,1
.LBB8115:
.LBB8114:
	.loc 19 71 0
	stw 0,-32064(31)
.LBE8114:
.LBE8115:
	.loc 4 2190 0
	li 0,8
	stw 0,44(1)
	beq- 0,.L545
	lis 9,.LC6@ha
	lfs 30,.LC6@l(9)
.LVL1063:
	b .L517
.L512:
	.loc 4 2191 0
	lwz 0,44(1)
	lfs 0,.LC89@l(29)
	addic. 9,0,-1
	fadds 30,30,0
.LVL1064:
	stw 9,44(1)
	beq- 0,.L519
.LVL1065:
.L517:
	.loc 4 2192 0
	fcmpu 7,30,31
	beq+ 7,.L512
	.loc 4 2192 0 is_stmt 0 discriminator 1
	fmr 1,30
	mr 3,30
	bl _ZN4idAI13StepDirectionEf
	cmpwi 7,3,0
	beq- 7,.L512
.L532:
	.loc 4 2199 0 is_stmt 1
	li 3,1
.LVL1066:
.L507:
.LBE8122:
	.loc 4 2211 0
	lwz 0,132(1)
	lwz 26,56(1)
	mtlr 0
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
.LVL1067:
	lwz 31,76(1)
	lfd 26,80(1)
	lfd 27,88(1)
	lfd 28,96(1)
.LVL1068:
	lfd 29,104(1)
.LVL1069:
	lfd 30,112(1)
	lfd 31,120(1)
.LVL1070:
	addi 1,1,128
	.cfi_remember_state
.LCFI144:
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
	blr
.LVL1071:
.L520:
.LCFI145:
	.cfi_restore_state
.LBB8123:
	.loc 4 2141 0
	lis 11,.LC6@ha
	lis 28,.LC75@ha
.LVL1072:
	lfs 29,.LC6@l(11)
	lis 11,.LC94@ha
.LVL1073:
.L499:
	.loc 4 2148 0
	lfs 0,.LC94@l(11)
	fcmpu 7,26,0
	blt- 7,.L522
.L540:
	.loc 4 2150 0
	lfs 0,.LC93@l(9)
	.loc 4 2153 0
	lfs 28,.LC75@l(28)
	.loc 4 2150 0
	fcmpu 7,26,0
	bng- 7,.L501
	.loc 4 2151 0
	lis 9,.LC16@ha
	lfs 28,.LC16@l(9)
	b .L501
.LVL1074:
.L542:
	.loc 4 2170 0 discriminator 2
	fctiwz 26,26
.LVL1075:
	addi 9,1,32
	fctiwz 27,27
.LVL1076:
	addi 11,1,36
	stfiwx 26,0,9
	stfiwx 27,0,11
	lwz 9,32(1)
	lwz 0,36(1)
	srawi 11,9,31
	xor 9,11,9
	subf 9,11,9
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
	cmpw 7,9,0
	ble- 7,.L508
	b .L527
.LVL1077:
.L538:
	.loc 4 2145 0
	lis 28,.LC75@ha
.LVL1078:
	lfs 29,.LC75@l(28)
	b .L499
.LVL1079:
.L516:
	.loc 4 2185 0 discriminator 1
	fmr 1,30
	mr 3,30
	bl _ZN4idAI13StepDirectionEf
	cmpwi 7,3,0
	.loc 4 2186 0 discriminator 1
	li 3,1
	.loc 4 2185 0 discriminator 1
	bne- 7,.L507
	b .L511
.LVL1080:
.L545:
	.loc 4 2190 0
	lis 9,.LC86@ha
	lfs 30,.LC86@l(9)
.LVL1081:
	b .L518
.L513:
	.loc 4 2197 0
	lwz 0,44(1)
	lfs 0,.LC89@l(29)
	addic. 9,0,-1
	fsubs 30,30,0
.LVL1082:
	stw 9,44(1)
	beq- 0,.L519
.LVL1083:
.L518:
	.loc 4 2198 0
	fcmpu 7,30,31
	beq+ 7,.L513
	.loc 4 2198 0 is_stmt 0 discriminator 1
	fmr 1,30
	mr 3,30
	bl _ZN4idAI13StepDirectionEf
	cmpwi 7,3,0
	bne- 7,.L532
	b .L513
.LVL1084:
.L543:
	.loc 4 2176 0 is_stmt 1 discriminator 3
	fmr 1,29
	mr 3,30
	bl _ZN4idAI13StepDirectionEf
	cmpwi 7,3,0
	.loc 4 2177 0 discriminator 3
	li 3,1
	.loc 4 2176 0 discriminator 3
	bne- 7,.L507
	b .L509
.LVL1085:
.L541:
	.loc 4 2159 0
	fcmpu 7,28,0
	lfs 1,.LC89@l(29)
	beq- 7,.L505
	lis 9,.LC86@ha
	lfs 1,.LC86@l(9)
	b .L505
.LVL1086:
.L544:
	.loc 4 2180 0 discriminator 3
	fmr 1,28
	mr 3,30
	bl _ZN4idAI13StepDirectionEf
	cmpwi 7,3,0
	.loc 4 2181 0 discriminator 3
	li 3,1
	.loc 4 2180 0 discriminator 3
	bne- 7,.L507
	b .L510
.LVL1087:
.L519:
	.loc 4 2204 0
	lfs 0,.LC75@l(28)
	fcmpu 7,31,0
	bne- 7,.L546
.L514:
	.loc 4 2209 0
	mr 3,30
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 2210 0
	li 3,0
	b .L507
.LVL1088:
.L525:
	.loc 4 2161 0
	lis 9,.LC87@ha
	lfs 1,.LC87@l(9)
	b .L505
.LVL1089:
.L546:
	.loc 4 2204 0 discriminator 1
	fmr 1,31
	mr 3,30
	bl _ZN4idAI13StepDirectionEf
	cmpwi 7,3,0
	beq- 7,.L514
	b .L532
.LBE8123:
	.cfi_endproc
.LFE2907:
	.size	_ZN4idAI12NewWanderDirERK6idVec3, .-_ZN4idAI12NewWanderDirERK6idVec3
	.align 2
	.globl _ZN4idAI12WanderAroundEv
	.type	_ZN4idAI12WanderAroundEv, @function
_ZN4idAI12WanderAroundEv:
.LFB2901:
	.loc 4 2031 0
	.cfi_startproc
.LVL1090:
	stwu 1,-24(1)
.LCFI146:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 4 2032 0
	li 4,0
	.loc 4 2031 0
	stw 30,16(1)
	.loc 4 2034 0
	addi 30,3,4216
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 4 2031 0
	stw 0,28(1)
	stw 29,12(1)
	stw 31,20(1)
	.loc 4 2031 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 4 2032 0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1091:
	.loc 4 2034 0
	li 4,0
	mr 3,30
	bl _ZNK15idPhysics_Actor9GetOriginEi
	mr 29,3
.LVL1092:
	mr 3,30
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL1093:
.LBB8142:
.LBB8143:
.LBB8144:
	.loc 13 454 0
	lfs 0,2272(31)
	lfs 12,12(3)
	.loc 6 452 0
	lis 9,.LC83@ha
	.loc 13 454 0
	lfs 10,16(3)
.LBE8144:
.LBE8143:
.LBE8142:
	.loc 4 2035 0
	addi 4,31,3964
.LBB8155:
.LBB8150:
.LBB8145:
	.loc 13 454 0
	lfs 11,20(3)
	fmuls 10,0,10
	lfs 9,8(3)
	fmuls 11,0,11
.LBE8145:
.LBE8150:
.LBE8155:
.LBB8156:
.LBB8157:
	lfs 13,0(3)
.LBE8157:
.LBE8156:
.LBB8161:
.LBB8151:
.LBB8146:
	fmuls 0,0,12
	lfs 7,4(3)
	lfs 12,2268(31)
	lfs 8,28(3)
	fmadds 10,12,7,10
	fmadds 11,12,9,11
	lfs 9,32(3)
.LBE8146:
.LBE8151:
.LBE8161:
.LBB8162:
.LBB8158:
	fmadds 12,13,12,0
	lfs 0,24(3)
.LBE8158:
.LBE8162:
.LBB8163:
.LBB8152:
.LBB8147:
	lfs 13,2276(31)
.LVL1094:
.LBE8147:
.LBE8152:
.LBE8163:
	.loc 4 2035 0
	mr 3,31
.LVL1095:
.LBB8164:
.LBB8153:
.LBB8148:
	.loc 13 454 0
	fmadds 10,13,8,10
	.loc 6 452 0
	lfs 8,4(29)
	.loc 13 454 0
	fmadds 11,13,9,11
.LBE8148:
.LBE8153:
.LBE8164:
.LBB8165:
.LBB8159:
	.loc 6 452 0
	lfs 9,0(29)
	.loc 13 454 0
	fmadds 13,0,13,12
.LBE8159:
.LBE8165:
.LBB8166:
.LBB8154:
.LBB8149:
	.loc 6 452 0
	lfs 12,8(29)
	lfs 0,.LC83@l(9)
	fmadds 10,10,0,8
	fmadds 11,11,0,12
.LVL1096:
.LBE8149:
.LBE8154:
.LBE8166:
.LBB8167:
.LBB8160:
	fmadds 0,13,0,9
	.loc 6 425 0
	stfs 10,3968(31)
	.loc 6 426 0
	stfs 11,3972(31)
	.loc 6 424 0
	stfs 0,3964(31)
.LBE8160:
.LBE8167:
	.loc 4 2035 0
	bl _ZN4idAI12NewWanderDirERK6idVec3
.LVL1097:
	cmpwi 7,3,0
	beq- 7,.L553
	.loc 4 2041 0
	li 0,12
.LBB8168:
.LBB8169:
	.loc 18 237 0
	lwz 9,5208(31)
.LBE8169:
.LBE8168:
	.loc 4 2041 0
	stw 0,3956(31)
	.loc 4 2042 0
	li 0,1
	stw 0,3960(31)
.LBB8172:
.LBB8170:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE8170:
.LBE8172:
	.loc 4 2043 0
	lis 11,gameLocal+2426836@ha
	.loc 4 2044 0
	lwz 0,4496(31)
	.loc 4 2043 0
	lwz 11,gameLocal+2426836@l(11)
	.loc 4 2044 0
	stw 0,4016(31)
.LVL1098:
	.loc 4 2043 0
	stw 11,4008(31)
.LBB8173:
.LBB8171:
	.loc 18 237 0
	beq- 7,.L550
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L550:
.LVL1099:
.LBE8171:
.LBE8173:
.LBB8174:
.LBB8175:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 2048 0
	li 3,1
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L549
	.loc 18 238 0
	stw 3,0(9)
.LVL1100:
.L549:
.LBE8175:
.LBE8174:
	.loc 4 2049 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL1101:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1102:
	addi 1,1,24
	.cfi_remember_state
.LCFI147:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1103:
.L553:
.LCFI148:
	.cfi_restore_state
	.loc 4 2036 0
	mr 3,31
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1104:
.LBB8176:
.LBB8177:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 2038 0
	li 3,0
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L549
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LBE8177:
.LBE8176:
	.loc 4 2049 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL1105:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1106:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI149:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2901:
	.size	_ZN4idAI12WanderAroundEv, .-_ZN4idAI12WanderAroundEv
	.align 2
	.globl _ZN4idAI14MoveToPositionERK6idVec3
	.type	_ZN4idAI14MoveToPositionERK6idVec3, @function
_ZN4idAI14MoveToPositionERK6idVec3:
.LFB2898:
	.loc 4 1905 0
	.cfi_startproc
.LVL1107:
	mflr 0
	stwu 1,-80(1)
.LCFI150:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	stw 30,64(1)
	mr 30,4
	.cfi_offset 30, -16
	stw 31,68(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,84(1)
	stfd 31,72(1)
	stw 28,56(1)
	stw 29,60(1)
.LBB8178:
	.loc 4 1910 0
	lwz 5,3956(3)
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
.LVL1108:
	cmpwi 0,3,0
	bne- 0,.L571
.LVL1109:
	.loc 4 1917 0
	lwz 0,3944(31)
.LBB8179:
.LBB8180:
	.loc 6 424 0
	lwz 11,0(30)
.LBE8180:
.LBE8179:
	.loc 4 1917 0
	cmpwi 7,0,0
.LBB8182:
.LBB8181:
	.loc 6 425 0
	lwz 9,4(30)
	.loc 6 426 0
	lwz 0,8(30)
	.loc 6 424 0
	stw 11,8(1)
	.loc 6 425 0
	stw 9,12(1)
	.loc 6 426 0
	stw 0,16(1)
.LBE8181:
.LBE8182:
	.loc 4 1916 0
	stw 3,4004(31)
	.loc 4 1917 0
	beq- 7,.L572
	.loc 4 1918 0
	lis 9,.LC78@ha
	addi 30,1,8
.LVL1110:
	lfs 31,.LC78@l(9)
	mr 4,30
	mr 3,31
	.loc 4 1921 0
	addi 29,31,4216
	.loc 4 1918 0
	fmr 1,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 1919 0
	mr 5,30
	.loc 4 1918 0
	mr 4,3
	.loc 4 1919 0
	lwz 3,3944(31)
	.loc 4 1918 0
	stw 4,4004(31)
	.loc 4 1919 0
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 1921 0
	li 4,0
	mr 3,29
	bl _ZNK15idPhysics_Actor9GetOriginEi
	fmr 1,31
	mr 4,3
	mr 3,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 1922 0
	li 4,0
	.loc 4 1921 0
	mr 28,3
.LVL1111:
	.loc 4 1922 0
	mr 3,29
.LVL1112:
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lwz 7,4004(31)
	mr 6,3
	addi 4,1,20
	mr 3,31
	mr 5,28
	mr 8,30
	bl _ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
	cmpwi 7,3,0
	beq- 7,.L570
	.loc 4 1929 0
	lwz 0,4004(31)
	cmpwi 7,0,0
	beq- 7,.L557
.LVL1113:
.L559:
.LBB8183:
.LBB8184:
	.loc 6 424 0
	lwz 11,8(1)
.LBE8184:
.LBE8183:
.LBB8187:
.LBB8188:
	.loc 7 606 0
	li 0,0
.LBE8188:
.LBE8187:
.LBB8190:
.LBB8191:
	.loc 18 237 0
	lwz 9,5208(31)
.LBE8191:
.LBE8190:
.LBB8194:
.LBB8185:
	.loc 6 424 0
	stw 11,3964(31)
	.loc 6 425 0
	lwz 11,12(1)
.LBE8185:
.LBE8194:
.LBB8195:
.LBB8192:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE8192:
.LBE8195:
.LBB8196:
.LBB8189:
	.loc 7 606 0
	stw 0,3988(31)
.LBE8189:
.LBE8196:
.LBB8197:
.LBB8186:
	.loc 6 425 0
	stw 11,3968(31)
	.loc 6 426 0
	lwz 11,16(1)
	stw 11,3972(31)
.LVL1114:
.LBE8186:
.LBE8197:
	.loc 4 1937 0
	li 11,9
	stw 11,3956(31)
	.loc 4 1938 0
	li 11,1
	stw 11,3960(31)
	.loc 4 1939 0
	lis 11,gameLocal+2426836@ha
	lwz 10,gameLocal+2426836@l(11)
	.loc 4 1940 0
	lwz 11,4496(31)
	.loc 4 1939 0
	stw 10,4008(31)
	.loc 4 1940 0
	stw 11,4016(31)
.LVL1115:
.LBB8198:
.LBB8193:
	.loc 18 237 0
	beq- 7,.L562
	.loc 18 238 0
	stw 0,0(9)
.L562:
.LVL1116:
.LBE8193:
.LBE8198:
.LBB8199:
.LBB8200:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L560
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L560:
.LVL1117:
.LBE8200:
.LBE8199:
.LBB8201:
.LBB8202:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 1945 0
	li 3,1
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L556
	.loc 18 238 0
	stw 3,0(9)
.LVL1118:
.L556:
.LBE8202:
.LBE8201:
.LBE8178:
	.loc 4 1946 0
	lwz 0,84(1)
	lwz 28,56(1)
	mtlr 0
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
.LVL1119:
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI151:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1120:
.L572:
.LCFI152:
	.cfi_restore_state
	addi 30,1,8
.LVL1121:
.L557:
.LBB8205:
	.loc 4 1929 0 discriminator 1
	mr 3,31
	mr 4,30
	bl _ZN4idAI12NewWanderDirERK6idVec3
	cmpwi 7,3,0
	bne- 7,.L559
.L570:
	.loc 4 1930 0 discriminator 4
	mr 3,31
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1122:
.LBB8203:
.LBB8204:
	.loc 18 237 0 discriminator 4
	lwz 9,5240(31)
	.loc 4 1932 0 discriminator 4
	li 3,0
	.loc 18 237 0 discriminator 4
	cmpwi 7,9,0
	beq- 7,.L556
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LBE8204:
.LBE8203:
.LBE8205:
	.loc 4 1946 0
	lwz 0,84(1)
	lwz 28,56(1)
	mtlr 0
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
.LVL1123:
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI153:
	.cfi_def_cfa_offset 0
	blr
.LVL1124:
.L571:
.LCFI154:
	.cfi_restore_state
.LBB8206:
	.loc 4 1911 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LBE8206:
	.loc 4 1946 0
	lwz 0,84(1)
	lwz 28,56(1)
.LBB8207:
	.loc 4 1912 0
	li 3,1
.LBE8207:
	.loc 4 1946 0
	mtlr 0
	lwz 29,60(1)
	lwz 30,64(1)
.LVL1125:
	lwz 31,68(1)
.LVL1126:
	lfd 31,72(1)
	addi 1,1,80
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI155:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2898:
	.size	_ZN4idAI14MoveToPositionERK6idVec3, .-_ZN4idAI14MoveToPositionERK6idVec3
	.align 2
	.globl _ZN4idAI12MoveToEntityEP8idEntity
	.type	_ZN4idAI12MoveToEntityEP8idEntity, @function
_ZN4idAI12MoveToEntityEP8idEntity:
.LFB2885:
	.loc 4 1725 0
	.cfi_startproc
.LVL1127:
	stwu 1,-88(1)
.LCFI156:
	.cfi_def_cfa_offset 88
	mflr 0
	stw 29,68(1)
.LBB8208:
	.loc 4 1730 0
	mr. 29,4
	.cfi_offset 29, -20
	.cfi_register 65, 0
.LBE8208:
	.loc 4 1725 0
	stw 31,76(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,92(1)
	stfd 31,80(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 30,72(1)
.LBB8252:
	.loc 4 1730 0
	beq- 0,.L596
	.cfi_offset 30, -16
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 4 1735 0
	mr 3,29
.LVL1128:
	addi 30,1,8
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1129:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL1130:
	.loc 4 1736 0
	lwz 0,3952(31)
.LBB8209:
.LBB8210:
	.loc 6 424 0
	lfs 0,0(3)
.LBE8210:
.LBE8209:
	.loc 4 1736 0
	cmpwi 7,0,3
.LBB8212:
.LBB8211:
	.loc 6 425 0
	lfs 13,4(3)
	.loc 6 426 0
	lfs 12,8(3)
	.loc 6 424 0
	stfs 0,8(1)
	.loc 6 425 0
	stfs 13,12(1)
	.loc 6 426 0
	stfs 12,16(1)
.LBE8211:
.LBE8212:
	.loc 4 1736 0
	beq- 7,.L576
	.loc 4 1736 0 is_stmt 0 discriminator 1
	lwz 0,3956(31)
	cmpwi 7,0,5
	beq- 7,.L597
.L577:
	.loc 4 1737 0 is_stmt 1 discriminator 5
	lis 9,.LC20@ha
	addi 30,1,8
	lfs 1,.LC20@l(9)
	mr 3,29
.LVL1131:
	mr 4,30
	bl _ZNK8idEntity11GetFloorPosEfR6idVec3
.L576:
	.loc 4 1740 0
	mr 3,31
	mr 4,30
	li 5,5
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	cmpwi 0,3,0
	bne- 0,.L598
	.loc 4 1746 0
	lwz 0,3944(31)
	.loc 4 1745 0
	stw 3,4004(31)
	.loc 4 1746 0
	cmpwi 7,0,0
	beq- 7,.L579
	.loc 4 1747 0
	lis 9,.LC78@ha
	mr 4,30
	lfs 31,.LC78@l(9)
	mr 3,31
	.loc 4 1750 0
	addi 28,31,4216
	.loc 4 1747 0
	fmr 1,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 1748 0
	mr 5,30
	.loc 4 1747 0
	mr 4,3
	.loc 4 1748 0
	lwz 3,3944(31)
	.loc 4 1747 0
	stw 4,4004(31)
	.loc 4 1748 0
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 1750 0
	li 4,0
	mr 3,28
	bl _ZNK15idPhysics_Actor9GetOriginEi
	fmr 1,31
	mr 4,3
	mr 3,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 1751 0
	li 4,0
	.loc 4 1750 0
	mr 27,3
.LVL1132:
	.loc 4 1751 0
	mr 3,28
.LVL1133:
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lwz 7,4004(31)
	mr 6,3
	addi 4,1,20
	mr 3,31
	mr 5,27
	mr 8,30
	bl _ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
	cmpwi 7,3,0
	bne- 7,.L580
.LVL1134:
.LBB8213:
.LBB8214:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L575
.LVL1135:
.L595:
.LBE8214:
.LBE8213:
.LBB8215:
.LBB8216:
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L575:
.LBE8216:
.LBE8215:
.LBE8252:
	.loc 4 1789 0
	lwz 0,92(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
.LVL1136:
	lwz 30,72(1)
.LVL1137:
	lwz 31,76(1)
.LVL1138:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI157:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1139:
.L579:
.LCFI158:
	.cfi_restore_state
.LBB8253:
	.loc 4 1759 0
	lwz 0,3956(31)
	cmpwi 7,0,5
	beq- 7,.L599
	.loc 4 1767 0
	mr 3,31
	mr 4,30
	bl _ZN4idAI12NewWanderDirERK6idVec3
	cmpwi 7,3,0
	bne+ 7,.L581
	.loc 4 1768 0
	mr 3,31
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1140:
.LBB8218:
.LBB8217:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1770 0
	li 3,0
	.loc 18 237 0
	cmpwi 7,9,0
	bne+ 7,.L595
	b .L575
.LVL1141:
.L580:
.LBE8217:
.LBE8218:
	.loc 4 1757 0
	lwz 0,4004(31)
	cmpwi 7,0,0
	beq- 7,.L579
.LVL1142:
.L581:
	.loc 4 1774 0
	lwz 0,3956(31)
	cmpwi 7,0,5
	beq- 7,.L594
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
.L583:
	.loc 4 1775 0 discriminator 4
	addis 11,9,0x25
	lwz 0,2004(11)
	stw 0,4008(31)
.LVL1143:
.LBB8219:
.LBB8220:
	.loc 7 608 0 discriminator 4
	lwz 11,4(29)
	addi 0,11,4228
	slwi 0,0,2
	add 9,9,0
	lwz 0,4(9)
.LBE8220:
.LBE8219:
	.loc 4 1777 0 discriminator 4
	li 9,5
	stw 9,3956(31)
.LBB8222:
.LBB8221:
	.loc 7 608 0 discriminator 4
	slwi 0,0,12
	or 11,0,11
	stw 11,3988(31)
.LVL1144:
.L584:
.LBE8221:
.LBE8222:
.LBB8223:
.LBB8224:
	.loc 6 424 0
	lwz 0,8(1)
.LBE8224:
.LBE8223:
	.loc 4 1781 0
	mr 3,29
.LBB8226:
.LBB8225:
	.loc 6 424 0
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,12(1)
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,3972(31)
.LBE8225:
.LBE8226:
	.loc 4 1781 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL1145:
.LBB8227:
.LBB8228:
	.loc 18 237 0
	lwz 9,5208(31)
.LBE8228:
.LBE8227:
.LBB8231:
.LBB8232:
	.loc 6 424 0
	lwz 0,0(3)
.LBE8232:
.LBE8231:
	.loc 4 1782 0
	li 10,1
.LBB8236:
.LBB8229:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE8229:
.LBE8236:
.LBB8237:
.LBB8233:
	.loc 6 424 0
	stw 0,3992(31)
.LBE8233:
.LBE8237:
	.loc 4 1783 0
	lwz 0,4496(31)
.LBB8238:
.LBB8234:
	.loc 6 425 0
	lwz 11,4(3)
	stw 11,3996(31)
	.loc 6 426 0
	lwz 11,8(3)
.LBE8234:
.LBE8238:
	.loc 4 1782 0
	stw 10,3960(31)
.LBB8239:
.LBB8235:
	.loc 6 426 0
	stw 11,4000(31)
.LBE8235:
.LBE8239:
	.loc 4 1783 0
	stw 0,4016(31)
.LVL1146:
.LBB8240:
.LBB8230:
	.loc 18 237 0
	beq- 7,.L585
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L585:
.LVL1147:
.LBE8230:
.LBE8240:
.LBB8241:
.LBB8242:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L586
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L586:
.LVL1148:
.LBE8242:
.LBE8241:
.LBB8243:
.LBB8244:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 1788 0
	li 3,1
.LVL1149:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L575
	.loc 18 238 0
	stw 3,0(9)
.LBE8244:
.LBE8243:
.LBE8253:
	.loc 4 1789 0
	lwz 0,92(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
.LVL1150:
	lwz 30,72(1)
.LVL1151:
	lwz 31,76(1)
.LVL1152:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI159:
	.cfi_def_cfa_offset 0
	blr
.LVL1153:
.L597:
.LCFI160:
	.cfi_restore_state
.LBB8254:
.LBB8245:
.LBB8246:
.LBB8247:
	.loc 6 497 0 discriminator 4
	lfs 11,3992(31)
	fcmpu 7,0,11
	bne- 7,.L577
	.loc 6 497 0 is_stmt 0
	lfs 0,3996(31)
	fcmpu 7,13,0
	bne- 7,.L577
	lfs 0,4000(31)
	fcmpu 7,12,0
	beq- 7,.L576
	b .L577
.LVL1154:
.L599:
.LBE8247:
.LBE8246:
.LBE8245:
	.loc 4 1760 0 is_stmt 1
	lwz 0,3944(31)
	.loc 4 1764 0
	li 3,0
	.loc 4 1760 0
	cmpwi 7,0,0
	bne+ 7,.L575
.LVL1155:
.LBB8248:
.LBB8249:
	.loc 6 424 0
	lwz 0,8(1)
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,12(1)
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,3972(31)
	b .L575
.LVL1156:
.L598:
.LBE8249:
.LBE8248:
	.loc 4 1741 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LBE8254:
	.loc 4 1789 0
	lwz 0,92(1)
	lwz 27,60(1)
.LBB8255:
	.loc 4 1742 0
	li 3,1
.LBE8255:
	.loc 4 1789 0
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
.LVL1157:
	lwz 30,72(1)
.LVL1158:
	lwz 31,76(1)
.LVL1159:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI161:
	.cfi_def_cfa_offset 0
	blr
.LVL1160:
.L596:
.LCFI162:
	.cfi_restore_state
.LBB8256:
	.loc 4 1731 0
	li 4,3
.LVL1161:
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1162:
.LBE8256:
	.loc 4 1789 0
	lwz 0,92(1)
	lwz 27,60(1)
.LBB8257:
	.loc 4 1732 0
	li 3,0
.LBE8257:
	.loc 4 1789 0
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
.LVL1163:
	lwz 30,72(1)
	lwz 31,76(1)
.LVL1164:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI163:
	.cfi_def_cfa_offset 0
	blr
.LVL1165:
.L594:
.LCFI164:
	.cfi_restore_state
.LBB8258:
.LBB8250:
.LBB8251:
	.loc 7 634 0 discriminator 2
	lwz 0,3988(31)
	.loc 7 635 0 discriminator 2
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 2
	rlwinm 11,0,0,20,31
.LVL1166:
	.loc 7 635 0 discriminator 2
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L583
	.loc 7 636 0
	addi 11,11,132
.LVL1167:
	slwi 11,11,2
.LVL1168:
	add 11,9,11
.LBE8251:
.LBE8250:
	.loc 4 1774 0
	lwz 0,4(11)
	cmpw 7,29,0
	beq- 7,.L584
	b .L583
.LBE8258:
	.cfi_endproc
.LFE2885:
	.size	_ZN4idAI12MoveToEntityEP8idEntity, .-_ZN4idAI12MoveToEntityEP8idEntity
	.align 2
	.globl _ZN4idAI11MoveToEnemyEv
	.type	_ZN4idAI11MoveToEnemyEv, @function
_ZN4idAI11MoveToEnemyEv:
.LFB2884:
	.loc 4 1653 0
	.cfi_startproc
.LVL1169:
	mflr 0
	stwu 1,-88(1)
.LCFI165:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stw 30,72(1)
.LBB8259:
.LBB8260:
.LBB8261:
	.loc 7 635 0
	lis 30,gameLocal@ha
	.cfi_offset 30, -16
.LBE8261:
.LBE8260:
.LBE8259:
	.loc 4 1653 0
	stw 31,76(1)
.LBB8302:
.LBB8265:
.LBB8262:
	.loc 7 635 0
	la 30,gameLocal@l(30)
.LBE8262:
.LBE8265:
.LBE8302:
	.loc 4 1653 0
	stw 0,92(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -12
.LVL1170:
	stfd 31,80(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 29,68(1)
.LBB8303:
.LBB8266:
.LBB8263:
	.loc 7 634 0
	lwz 0,5120(3)
	rlwinm 9,0,0,20,31
.LVL1171:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L622
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 63, -8
.LVL1172:
.L601:
.LBE8263:
.LBE8266:
	.loc 4 1659 0
	mr 3,31
.LVL1173:
	li 4,3
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 1660 0
	li 3,0
.L603:
.LBE8303:
	.loc 4 1718 0
	lwz 0,92(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
.LVL1174:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI166:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1175:
.L622:
.LCFI167:
	.cfi_restore_state
.LBB8304:
.LBB8267:
.LBB8264:
	.loc 7 636 0
	addi 9,9,132
.LVL1176:
	slwi 9,9,2
.LVL1177:
	add 9,30,9
	lwz 29,4(9)
.LBE8264:
.LBE8267:
	.loc 4 1658 0
	cmpwi 7,29,0
	beq- 7,.L601
	.loc 4 1663 0
	addi 4,3,5148
	li 5,3
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
.LVL1178:
	cmpwi 0,3,0
	bne- 0,.L623
	.loc 4 1676 0
	lwz 0,3944(31)
	.loc 4 1673 0
	lwz 11,5148(31)
	.loc 4 1676 0
	cmpwi 7,0,0
	.loc 4 1673 0
	lwz 9,5152(31)
	lwz 0,5156(31)
	stw 11,8(1)
	stw 9,12(1)
	stw 0,16(1)
	.loc 4 1675 0
	stw 3,4004(31)
	.loc 4 1676 0
	beq- 7,.L607
	.loc 4 1677 0
	lis 9,.LC78@ha
	addi 4,1,8
	lfs 31,.LC78@l(9)
	mr 3,31
	.loc 4 1680 0
	addi 28,31,4216
	.loc 4 1677 0
	fmr 1,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 1678 0
	addi 5,1,8
	.loc 4 1677 0
	mr 4,3
	.loc 4 1678 0
	lwz 3,3944(31)
	.loc 4 1677 0
	stw 4,4004(31)
	.loc 4 1678 0
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 4 1680 0
	li 4,0
	mr 3,28
	bl _ZNK15idPhysics_Actor9GetOriginEi
	fmr 1,31
	mr 4,3
	mr 3,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 1681 0
	li 4,0
	.loc 4 1680 0
	mr 27,3
.LVL1179:
	.loc 4 1681 0
	mr 3,28
.LVL1180:
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lwz 7,4004(31)
	mr 6,3
	addi 4,1,20
	mr 3,31
	mr 5,27
	addi 8,1,8
	bl _ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
	cmpwi 7,3,0
	bne- 7,.L608
.LVL1181:
.LBB8268:
.LBB8269:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L603
.LVL1182:
.L619:
.LBE8269:
.LBE8268:
.LBB8270:
.LBB8271:
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LBE8271:
.LBE8270:
.LBE8304:
	.loc 4 1718 0
	lwz 0,92(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
.LVL1183:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI168:
	.cfi_def_cfa_offset 0
	blr
.LVL1184:
.L623:
.LCFI169:
	.cfi_restore_state
.LBB8305:
	.loc 4 1664 0
	mr 3,31
	addi 4,31,5124
	li 5,3
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	cmpwi 7,3,0
	beq- 7,.L621
.LVL1185:
.LBB8273:
.LBB8274:
	.loc 18 249 0 discriminator 2
	lwz 9,5196(31)
	cmpwi 7,9,0
	beq- 7,.L621
.LBE8274:
.LBE8273:
	.loc 4 1664 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L621
	.loc 4 1669 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 1670 0
	li 3,1
	b .L603
.LVL1186:
.L608:
	.loc 4 1687 0
	lwz 0,4004(31)
	cmpwi 7,0,0
	beq- 7,.L607
.LVL1187:
.L609:
	.loc 4 1704 0
	lwz 0,3956(31)
	cmpwi 7,0,3
	beq- 7,.L611
	.loc 4 1705 0
	li 0,3
	.loc 4 1706 0
	addis 9,30,0x25
	.loc 4 1705 0
	stw 0,3956(31)
	.loc 4 1706 0
	lwz 0,2004(9)
	stw 0,4008(31)
.L611:
.LVL1188:
.LBB8275:
.LBB8276:
	.loc 6 424 0
	lwz 0,8(1)
.LBE8276:
.LBE8275:
.LBB8279:
.LBB8280:
	.loc 18 237 0
	lwz 11,5208(31)
.LBE8280:
.LBE8279:
.LBB8283:
.LBB8277:
	.loc 6 424 0
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,12(1)
.LBE8277:
.LBE8283:
.LBB8284:
.LBB8281:
	.loc 18 237 0
	cmpwi 7,11,0
.LBE8281:
.LBE8284:
.LBB8285:
.LBB8278:
	.loc 6 425 0
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,3972(31)
.LVL1189:
.LBE8278:
.LBE8285:
.LBB8286:
.LBB8287:
	.loc 7 608 0
	lwz 9,4(29)
	addi 0,9,4228
	slwi 0,0,2
	add 30,30,0
.LBE8287:
.LBE8286:
	.loc 4 1711 0
	lwz 0,4496(31)
.LBB8291:
.LBB8288:
	.loc 7 608 0
	lwz 10,4(30)
.LBE8288:
.LBE8291:
	.loc 4 1711 0
	stw 0,4016(31)
	.loc 4 1712 0
	li 0,1
.LBB8292:
.LBB8289:
	.loc 7 608 0
	slwi 10,10,12
.LBE8289:
.LBE8292:
	.loc 4 1712 0
	stw 0,3960(31)
.LVL1190:
.LBB8293:
.LBB8290:
	.loc 7 608 0
	or 9,10,9
	stw 9,3988(31)
.LBE8290:
.LBE8293:
.LBB8294:
.LBB8282:
	.loc 18 237 0
	beq- 7,.L612
	.loc 18 238 0
	li 0,0
	stw 0,0(11)
.L612:
.LVL1191:
.LBE8282:
.LBE8294:
.LBB8295:
.LBB8296:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L613
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L613:
.LVL1192:
.LBE8296:
.LBE8295:
.LBB8297:
.LBB8298:
	.loc 18 237 0
	lwz 9,5220(31)
	.loc 4 1717 0
	li 3,1
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L603
	.loc 18 238 0
	stw 3,0(9)
.LBE8298:
.LBE8297:
.LBE8305:
	.loc 4 1718 0
	lwz 0,92(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
.LVL1193:
	lwz 30,72(1)
	lwz 31,76(1)
.LVL1194:
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI170:
	.cfi_def_cfa_offset 0
	blr
.LVL1195:
.L607:
.LCFI171:
	.cfi_restore_state
.LBB8306:
	.loc 4 1689 0
	lwz 0,3956(31)
	cmpwi 7,0,3
	beq- 7,.L624
	.loc 4 1697 0
	mr 3,31
	addi 4,1,8
	bl _ZN4idAI12NewWanderDirERK6idVec3
	cmpwi 7,3,0
	bne+ 7,.L609
.L621:
	.loc 4 1698 0
	mr 3,31
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1196:
.LBB8299:
.LBB8272:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1700 0
	li 3,0
	.loc 18 237 0
	cmpwi 7,9,0
	bne+ 7,.L619
	b .L603
.LVL1197:
.L624:
.LBE8272:
.LBE8299:
	.loc 4 1690 0
	lwz 0,3944(31)
	.loc 4 1694 0
	li 3,0
	.loc 4 1690 0
	cmpwi 7,0,0
	bne+ 7,.L603
.LVL1198:
.LBB8300:
.LBB8301:
	.loc 6 424 0
	lwz 0,8(1)
	stw 0,3964(31)
	.loc 6 425 0
	lwz 0,12(1)
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,3972(31)
	b .L603
.LBE8301:
.LBE8300:
.LBE8306:
	.cfi_endproc
.LFE2884:
	.size	_ZN4idAI11MoveToEnemyEv, .-_ZN4idAI11MoveToEnemyEv
	.align 2
	.globl _ZN4idAI10GetMovePosER6idVec3
	.type	_ZN4idAI10GetMovePosER6idVec3, @function
_ZN4idAI10GetMovePosER6idVec3:
.LFB2908:
	.loc 4 2218 0
	.cfi_startproc
.LVL1199:
	stwu 1,-80(1)
.LCFI172:
	.cfi_def_cfa_offset 80
	mflr 0
	stw 29,68(1)
.LBB8356:
	.loc 4 2224 0
	addi 29,3,4216
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBE8356:
	.loc 4 2218 0
	stw 30,72(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,76(1)
.LBB8434:
	.loc 4 2224 0
	li 4,0
.LVL1200:
.LBE8434:
	.loc 4 2218 0
	mr 31,3
	.cfi_offset 31, -4
.LBB8435:
	.loc 4 2224 0
	mr 3,29
.LVL1201:
.LBE8435:
	.loc 4 2218 0
	stw 0,84(1)
	stw 27,60(1)
	stw 28,64(1)
.LBB8436:
	.loc 4 2224 0
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1202:
.LBB8357:
.LBB8358:
	.loc 6 424 0
	lwz 11,0(3)
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	lwz 0,8(3)
.LBE8358:
.LBE8357:
.LBB8362:
.LBB8363:
	.loc 6 424 0
	stw 11,0(30)
	.loc 6 425 0
	stw 9,4(30)
	.loc 6 426 0
	stw 0,8(30)
.LBE8363:
.LBE8362:
.LBB8364:
.LBB8359:
	.loc 6 424 0
	stw 11,8(1)
.LBE8359:
.LBE8364:
	.loc 4 2227 0
	lwz 11,3956(31)
.LBB8365:
.LBB8360:
	.loc 6 425 0
	stw 9,12(1)
.LBE8360:
.LBE8365:
	.loc 4 2227 0
	cmplwi 7,11,11
.LBB8366:
.LBB8361:
	.loc 6 426 0
	stw 0,16(1)
.LVL1203:
.LBE8361:
.LBE8366:
	.loc 4 2227 0
	ble- 7,.L654
.L626:
	.loc 4 2253 0
	cmpwi 7,11,5
	beq- 7,.L651
	lis 28,gameLocal@ha
	la 28,gameLocal@l(28)
.LVL1204:
.L632:
	.loc 4 2257 0
	li 0,1
	.loc 4 2259 0
	addis 28,28,0x25
	.loc 4 2257 0
	stw 0,3960(31)
.LVL1205:
	.loc 4 2259 0
	lwz 9,4032(31)
	lwz 0,2004(28)
	cmpw 7,0,9
	ble- 7,.L634
	.loc 4 2260 0
	lwz 5,3956(31)
	cmpwi 7,5,12
	beq- 7,.L655
	.loc 4 2263 0
	mr 3,31
	addi 4,31,3964
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	cmpwi 7,3,0
	bne- 7,.L656
.L636:
	.loc 4 2270 0
	lwz 0,3944(31)
	cmpwi 7,0,0
	beq- 7,.L652
	.loc 4 2270 0 is_stmt 0 discriminator 1
	lwz 0,4004(31)
	cmpwi 7,0,0
	bne- 7,.L638
.L652:
.LBB8367:
.LBB8368:
	.loc 18 238 0 is_stmt 1
	lwz 0,2004(28)
.L634:
.LBE8368:
.LBE8367:
	.loc 4 2284 0
	lwz 9,4028(31)
	cmpw 7,9,0
	bge- 7,.L657
.L643:
	.loc 4 2285 0 discriminator 4
	mr 3,31
	addi 4,31,3964
	bl _ZN4idAI12NewWanderDirERK6idVec3
.LVL1206:
	.loc 4 2286 0 discriminator 4
	mr. 28,3
	beq- 0,.L658
.LVL1207:
.L644:
	.loc 6 452 0
	lis 9,.LC95@ha
	lfs 12,3980(31)
	lfs 0,.LC95@l(9)
	lfs 13,12(1)
	lfs 11,3984(31)
	fmadds 12,12,0,13
	lfs 13,16(1)
.LBB8370:
.LBB8371:
	lfs 10,3976(31)
.LBE8371:
.LBE8370:
.LBB8374:
.LBB8375:
	.loc 4 2297 0
	lis 31,ai_debugMove@ha
.LVL1208:
.LBE8375:
.LBE8374:
	.loc 6 452 0
	fmadds 13,11,0,13
.LVL1209:
.LBB8378:
.LBB8372:
	lfs 11,8(1)
	.loc 6 425 0
	stfs 12,4(30)
.LBE8372:
.LBE8378:
.LBB8379:
.LBB8376:
	.loc 4 2297 0
	la 31,ai_debugMove@l(31)
.LBE8376:
.LBE8379:
.LBB8380:
.LBB8373:
	.loc 6 452 0
	fmadds 0,10,0,11
	.loc 6 426 0
	stfs 13,8(30)
	.loc 6 424 0
	stfs 0,0(30)
.LBE8373:
.LBE8380:
.LBB8381:
.LBB8377:
	.loc 20 142 0
	lwz 9,44(31)
.LBE8377:
.LBE8381:
	.loc 4 2297 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L630
	.loc 4 2298 0
	lis 9,gameRenderWorld@ha
	lis 4,colorYellow@ha
	lwz 3,gameRenderWorld@l(9)
	la 4,colorYellow@l(4)
	addi 5,1,8
	mr 6,30
	lwz 9,0(3)
	li 7,16
	li 8,1
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL1210:
.L641:
.LBB8382:
.LBB8383:
	.loc 20 142 0
	lwz 9,44(31)
.LBE8383:
.LBE8382:
	.loc 4 2304 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L630
	.loc 4 2305 0 discriminator 4
	lis 9,gameRenderWorld@ha
	mr 3,29
	lwz 27,gameRenderWorld@l(9)
	li 4,0
	lwz 9,0(27)
	lwz 31,156(9)
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lis 4,colorCyan@ha
	mr 5,3
	la 4,colorCyan@l(4)
	mr 3,27
	mr 6,30
	li 7,0
	li 8,0
	mtctr 31
	bctrl
	b .L630
.LVL1211:
.L654:
	.loc 4 2227 0
	lis 9,.L631@ha
	slwi 0,11,2
	la 9,.L631@l(9)
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L631:
	.long .L628-.L631
	.long .L628-.L631
	.long .L628-.L631
	.long .L626-.L631
	.long .L626-.L631
	.long .L626-.L631
	.long .L626-.L631
	.long .L626-.L631
	.long .L626-.L631
	.long .L626-.L631
	.long .L629-.L631
	.long .L646-.L631
	.section	".text"
.L628:
.LVL1212:
.LBB8384:
.LBB8385:
	.loc 6 424 0
	lwz 0,3964(31)
.LBE8385:
.LBE8384:
	.loc 4 2236 0
	li 28,0
.LBB8387:
.LBB8386:
	.loc 6 424 0
	stw 0,0(30)
	.loc 6 425 0
	lwz 0,3968(31)
	stw 0,4(30)
	.loc 6 426 0
	lwz 0,3972(31)
	stw 0,8(30)
.LVL1213:
.L630:
.LBE8386:
.LBE8387:
.LBE8436:
	.loc 4 2309 0
	lwz 0,84(1)
	mr 3,28
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
.LVL1214:
	lwz 30,72(1)
.LVL1215:
	lwz 31,76(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI173:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1216:
.L646:
.LCFI174:
	.cfi_restore_state
	lwz 0,84(1)
.LBB8437:
	.loc 4 2249 0
	li 28,0
.LBE8437:
	.loc 4 2309 0
	mr 3,28
.LVL1217:
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
.LVL1218:
	lwz 31,76(1)
.LVL1219:
	addi 1,1,80
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI175:
	.cfi_def_cfa_offset 0
	blr
.LVL1220:
.L629:
.LCFI176:
	.cfi_restore_state
.LBB8438:
.LBB8388:
.LBB8389:
	.loc 6 424 0
	lwz 0,3964(31)
.LBE8389:
.LBE8388:
	.loc 4 2241 0
	mr 3,31
.LVL1221:
	addi 4,31,3964
	.loc 4 2244 0
	li 28,0
.LBB8391:
.LBB8390:
	.loc 6 424 0
	stw 0,0(30)
	.loc 6 425 0
	lwz 0,3968(31)
	stw 0,4(30)
	.loc 6 426 0
	lwz 0,3972(31)
	stw 0,8(30)
.LBE8390:
.LBE8391:
	.loc 4 2241 0
	lwz 5,3956(31)
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	cmpwi 7,3,0
	beq+ 7,.L630
	.loc 4 2242 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
	b .L630
.LVL1222:
.L651:
.LBB8392:
.LBB8393:
	.loc 7 634 0
	lwz 0,3988(31)
	.loc 7 635 0
	lis 28,gameLocal@ha
	la 28,gameLocal@l(28)
	.loc 7 638 0
	li 4,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL1223:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L659
.LVL1224:
.L633:
.LBE8393:
.LBE8392:
	.loc 4 2254 0
	mr 3,31
.LVL1225:
	bl _ZN4idAI12MoveToEntityEP8idEntity
	b .L632
.LVL1226:
.L638:
	.loc 4 2271 0
	lis 9,.LC78@ha
	addi 4,1,8
	lfs 1,.LC78@l(9)
	mr 3,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 2272 0
	lwz 7,4004(31)
	.loc 4 2271 0
	mr 5,3
.LVL1227:
	.loc 4 2272 0
	addi 4,1,20
	mr 3,31
.LVL1228:
	addi 6,1,8
	addi 8,31,3964
	bl _ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
.LVL1229:
	cmpwi 7,3,0
	beq- 7,.L639
.LVL1230:
.LBB8395:
.LBB8396:
	.loc 6 424 0
	lwz 0,24(1)
	stw 0,0(30)
	.loc 6 425 0
	lwz 0,28(1)
	stw 0,4(30)
	.loc 6 426 0
	lwz 0,32(1)
	stw 0,8(30)
.LVL1231:
.LBE8396:
.LBE8395:
	.loc 4 2275 0
	li 0,0
	stw 0,4028(31)
.LBB8397:
.LBB8398:
	.loc 18 237 0
	lwz 9,5240(31)
.LVL1232:
	cmpwi 7,9,0
	beq- 7,.L653
	.loc 18 238 0
	stw 0,0(9)
.L653:
	lis 31,ai_debugMove@ha
.LVL1233:
	.loc 4 2274 0
	li 28,1
	la 31,ai_debugMove@l(31)
	b .L641
.LVL1234:
.L659:
.LBE8398:
.LBE8397:
.LBB8399:
.LBB8394:
	.loc 7 636 0
	addi 9,9,132
.LVL1235:
	slwi 9,9,2
.LVL1236:
	add 9,28,9
	lwz 4,4(9)
	b .L633
.LVL1237:
.L658:
.LBE8394:
.LBE8399:
	.loc 4 2287 0
	mr 3,31
.LVL1238:
	li 4,4
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1239:
.LBB8400:
.LBB8401:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L645
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L645:
.LVL1240:
.LBE8401:
.LBE8400:
.LBB8402:
.LBB8403:
	.loc 6 424 0
	lwz 0,8(1)
	stw 0,0(30)
	.loc 6 425 0
	lwz 0,12(1)
	stw 0,4(30)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,8(30)
.LBE8403:
.LBE8402:
	.loc 4 2290 0
	b .L630
.LVL1241:
.L655:
	.loc 4 2261 0
	mr 3,29
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL1242:
.LBB8404:
.LBB8405:
.LBB8406:
	.loc 13 454 0
	lfs 0,2272(31)
	lfs 12,16(3)
	.loc 6 452 0
	lis 9,.LC83@ha
	.loc 13 454 0
	lfs 13,20(3)
	lfs 10,12(3)
	fmuls 12,0,12
	lfs 7,4(3)
	fmuls 13,0,13
	fmuls 10,0,10
	lfs 0,2268(31)
	lfs 11,8(3)
.LBE8406:
.LBE8405:
.LBE8404:
.LBB8415:
.LBB8416:
	lfs 9,0(3)
.LBE8416:
.LBE8415:
.LBB8421:
.LBB8411:
.LBB8407:
	fmadds 12,0,7,12
	lfs 8,28(3)
	fmadds 13,0,11,13
.LBE8407:
.LBE8411:
.LBE8421:
.LBB8422:
.LBB8417:
	fmadds 10,9,0,10
.LBE8417:
.LBE8422:
.LBB8423:
.LBB8412:
.LBB8408:
	lfs 0,2276(31)
	lfs 11,32(3)
.LVL1243:
.LBE8408:
.LBE8412:
.LBE8423:
.LBB8424:
.LBB8418:
	lfs 9,24(3)
.LBE8418:
.LBE8424:
.LBB8425:
.LBB8413:
.LBB8409:
	fmadds 12,0,8,12
	fmadds 11,0,11,13
	.loc 6 452 0
	lfs 13,12(1)
.LBE8409:
.LBE8413:
.LBE8425:
.LBB8426:
.LBB8419:
	.loc 13 454 0
	fmadds 10,9,0,10
.LBE8419:
.LBE8426:
.LBB8427:
.LBB8414:
.LBB8410:
	.loc 6 452 0
	lfs 0,.LC83@l(9)
	fmadds 12,12,0,13
	lfs 13,16(1)
	fmadds 13,11,0,13
.LVL1244:
.LBE8410:
.LBE8414:
.LBE8427:
.LBB8428:
.LBB8420:
	lfs 11,8(1)
	.loc 6 425 0
	stfs 12,3968(31)
	.loc 6 452 0
	fmadds 0,10,0,11
	.loc 6 426 0
	stfs 13,3972(31)
	.loc 6 424 0
	stfs 0,3964(31)
	b .L636
.LVL1245:
.L657:
.LBE8420:
.LBE8428:
	.loc 4 2284 0 discriminator 2
	lfs 1,4024(31)
	mr 3,31
	.loc 4 2293 0 discriminator 2
	li 28,1
	.loc 4 2284 0 discriminator 2
	bl _ZN4idAI13StepDirectionEf
	cmpwi 7,3,0
	bne- 7,.L644
	b .L643
.L656:
	.loc 4 2264 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1246:
.LBB8429:
.LBB8430:
	.loc 6 424 0
	lwz 0,8(1)
.LBE8430:
.LBE8429:
	.loc 4 2266 0
	li 28,0
.LBB8432:
.LBB8431:
	.loc 6 424 0
	stw 0,0(30)
	.loc 6 425 0
	lwz 0,12(1)
	stw 0,4(30)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,8(30)
.LBE8431:
.LBE8432:
	.loc 4 2266 0
	b .L630
.LVL1247:
.L639:
.LBB8433:
.LBB8369:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L652
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
	b .L652
.LBE8369:
.LBE8433:
.LBE8438:
	.cfi_endproc
.LFE2908:
	.size	_ZN4idAI10GetMovePosER6idVec3, .-_ZN4idAI10GetMovePosER6idVec3
	.align 2
	.globl _ZN4idAI15EntityCanSeePosEP7idActorRK6idVec3S4_
	.type	_ZN4idAI15EntityCanSeePosEP7idActorRK6idVec3S4_, @function
_ZN4idAI15EntityCanSeePosEP7idActorRK6idVec3S4_:
.LFB2909:
	.loc 4 2316 0
	.cfi_startproc
.LVL1248:
	stwu 1,-200(1)
.LCFI177:
	.cfi_def_cfa_offset 200
	mflr 0
	stw 30,184(1)
	mr 30,3
	.cfi_offset 30, -16
	.cfi_register 65, 0
.LBB8454:
	.loc 4 2321 0
	mr 3,4
.LVL1249:
.LBE8454:
	.loc 4 2316 0
	stw 0,204(1)
	stw 24,160(1)
	stw 25,164(1)
	mr 25,5
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 65, 4
	stw 26,168(1)
	mr 26,6
	.cfi_offset 26, -32
	stw 27,172(1)
.LBB8495:
	.loc 4 2321 0
	lis 27,gameLocal+2426068@ha
	.cfi_offset 27, -28
.LBE8495:
	.loc 4 2316 0
	stw 28,176(1)
.LBB8496:
	.loc 4 2321 0
	la 27,gameLocal+2426068@l(27)
.LBE8496:
	.loc 4 2316 0
	stw 29,180(1)
	stw 31,188(1)
	mr 31,4
	.cfi_offset 31, -12
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	stfd 31,192(1)
.LBB8497:
	.loc 4 2321 0
	.cfi_offset 63, -8
	bl _ZN8idEntity11GetPVSAreasEv
.LVL1250:
	mr 29,3
	mr 3,31
	bl _ZN8idEntity14GetNumPVSAreasEv
	li 6,0
	mr 5,3
	mr 4,29
	mr 3,27
	bl _ZNK5idPVS15SetupCurrentPVSEPKii9pvsType_t
	mr 28,3
.LVL1251:
	.loc 4 2323 0
	mr 3,30
	.loc 4 2321 0
	mr 29,4
	.loc 4 2323 0
	bl _ZN8idEntity11GetPVSAreasEv
	mr 24,3
	mr 3,30
	bl _ZN8idEntity14GetNumPVSAreasEv
	addi 4,1,152
	mr 6,3
	mr 5,24
	mr 3,27
	stw 28,152(1)
	stw 29,156(1)
.LVL1252:
	bl _ZNK5idPVS12InCurrentPVSE11pvsHandle_sPKii
	cmpwi 7,3,0
	.loc 4 2324 0
	addi 4,1,152
	mr 3,27
	stw 28,152(1)
	stw 29,156(1)
	.loc 4 2323 0
	beq- 7,.L668
	.loc 4 2328 0
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 2330 0
	mr 4,31
	addi 3,1,8
	.loc 4 2335 0
	addi 29,30,4216
.LVL1253:
	.loc 4 2330 0
	bl _ZNK7idActor9EyeOffsetEv
.LVL1254:
.LBB8455:
.LBB8456:
	.loc 6 452 0
	lfs 13,12(1)
	lfs 12,4(25)
.LBE8456:
.LBE8455:
	.loc 4 2333 0
	lis 9,.LC0@ha
.LBB8462:
.LBB8457:
	.loc 6 452 0
	lfs 11,8(25)
.LBE8457:
.LBE8462:
.LBB8463:
.LBB8464:
	.loc 10 334 0
	lis 28,gameLocal+2311032@ha
.LBE8464:
.LBE8463:
.LBB8469:
.LBB8458:
	.loc 6 452 0
	fadds 12,12,13
	lfs 13,16(1)
.LBE8458:
.LBE8469:
	.loc 4 2333 0
	lfs 31,.LC0@l(9)
.LBB8470:
.LBB8465:
	.loc 10 334 0
	lis 27,mat3_identity@ha
.LBE8465:
.LBE8470:
.LBB8471:
.LBB8459:
	.loc 6 452 0
	fadds 13,11,13
.LVL1255:
	lfs 10,0(25)
.LBE8459:
.LBE8471:
	.loc 4 2333 0
	lfs 0,8(26)
	.loc 4 2335 0
	mr 3,29
.LBB8472:
.LBB8460:
	.loc 6 452 0
	lfs 11,8(1)
.LBE8460:
.LBE8472:
.LBB8473:
.LBB8466:
	.loc 10 334 0
	la 28,gameLocal+2311032@l(28)
.LBE8466:
.LBE8473:
	.loc 4 2333 0
	fadds 0,0,31
.LBB8474:
.LBB8475:
	.loc 6 424 0
	lwz 9,0(26)
.LBE8475:
.LBE8474:
.LBB8478:
.LBB8461:
	.loc 6 452 0
	fadds 11,10,11
.LBE8461:
.LBE8478:
.LBB8479:
.LBB8476:
	.loc 6 425 0
	lwz 0,4(26)
.LBE8476:
.LBE8479:
.LBB8480:
.LBB8467:
	.loc 10 334 0
	la 27,mat3_identity@l(27)
.LBE8467:
.LBE8480:
.LBB8481:
.LBB8482:
	.loc 6 425 0
	stfs 12,36(1)
.LBE8482:
.LBE8481:
	.loc 4 2333 0
	stfs 0,28(1)
.LBB8484:
.LBB8483:
	.loc 6 424 0
	stfs 11,32(1)
	.loc 6 426 0
	stfs 13,40(1)
.LVL1256:
.LBE8483:
.LBE8484:
.LBB8485:
.LBB8477:
	.loc 6 424 0
	stw 9,20(1)
	.loc 6 425 0
	stw 0,24(1)
.LVL1257:
.LBE8477:
.LBE8485:
	.loc 4 2335 0
	bl _ZN15idPhysics_Actor11DisableClipEv
.LVL1258:
.LBB8486:
.LBB8468:
	.loc 10 334 0
	mr 3,28
	addi 4,1,44
	addi 5,1,32
	addi 6,1,20
	li 7,0
	mr 8,27
	li 9,1
	mr 10,31
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LBE8468:
.LBE8486:
	.loc 4 2338 0
	lfs 0,44(1)
	fcmpu 7,0,31
	cror 30,29,30
	bne- 7,.L669
.LVL1259:
.L663:
	.loc 4 2339 0 discriminator 4
	mr 3,29
	bl _ZN15idPhysics_Actor10EnableClipEv
	.loc 4 2340 0 discriminator 4
	li 3,1
	b .L662
.LVL1260:
.L668:
	.loc 4 2324 0
	bl _ZNK5idPVS14FreeCurrentPVSE11pvsHandle_s
	.loc 4 2325 0
	li 3,0
.LVL1261:
.L662:
.LBE8497:
	.loc 4 2352 0
	lwz 0,204(1)
	lwz 24,160(1)
	mtlr 0
	lwz 25,164(1)
.LVL1262:
	lwz 26,168(1)
	lwz 27,172(1)
	lwz 28,176(1)
.LVL1263:
	lwz 29,180(1)
	lwz 30,184(1)
.LVL1264:
	lwz 31,188(1)
.LVL1265:
	lfd 31,192(1)
	addi 1,1,200
	.cfi_remember_state
.LCFI178:
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
.LVL1266:
.L669:
.LCFI179:
	.cfi_restore_state
.LBB8498:
	.loc 4 2338 0 discriminator 2
	lis 26,gameLocal@ha
.LVL1267:
	addi 4,1,44
	la 26,gameLocal@l(26)
	mr 3,26
	bl _ZNK11idGameLocal14GetTraceEntityERK7trace_s
	cmpw 7,30,3
	beq- 7,.L663
	.loc 4 2343 0
	li 4,-1
	mr 3,29
	bl _ZNK15idPhysics_Actor9GetBoundsEi
.LVL1268:
	.loc 4 2344 0
	lfs 13,28(1)
	lfs 0,8(3)
.LBB8487:
.LBB8488:
	.loc 10 334 0
	addi 4,1,44
.LBE8488:
.LBE8487:
	.loc 4 2344 0
	lfs 12,20(3)
.LBB8492:
.LBB8489:
	.loc 10 334 0
	addi 5,1,32
	addi 6,1,20
	li 7,0
.LBE8489:
.LBE8492:
	.loc 4 2344 0
	fsubs 0,12,0
.LBB8493:
.LBB8490:
	.loc 10 334 0
	mr 8,27
	li 9,1
	mr 10,31
	mr 3,28
.LVL1269:
.LBE8490:
.LBE8493:
	.loc 4 2344 0
	fadds 0,13,0
	stfs 0,28(1)
.LVL1270:
.LBB8494:
.LBB8491:
	.loc 10 334 0
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LBE8491:
.LBE8494:
	.loc 4 2347 0
	mr 3,29
	bl _ZN15idPhysics_Actor10EnableClipEv
	.loc 4 2348 0
	lfs 0,44(1)
	.loc 4 2349 0
	li 3,1
	.loc 4 2348 0
	fcmpu 7,0,31
	cror 30,29,30
	beq+ 7,.L662
	.loc 4 2348 0 is_stmt 0 discriminator 2
	mr 3,26
	addi 4,1,44
	bl _ZNK11idGameLocal14GetTraceEntityERK7trace_s
.LBE8498:
	.loc 4 2352 0 is_stmt 1 discriminator 2
	lwz 0,204(1)
.LBB8499:
	.loc 4 2316 0 discriminator 2
	xor 3,30,3
.LBE8499:
	.loc 4 2352 0 discriminator 2
	lwz 24,160(1)
	mtlr 0
.LBB8500:
	.loc 4 2316 0 discriminator 2
	cntlzw 3,3
.LBE8500:
	.loc 4 2352 0 discriminator 2
	lwz 25,164(1)
.LVL1271:
.LBB8501:
	.loc 4 2316 0 discriminator 2
	srwi 3,3,5
.LBE8501:
	.loc 4 2352 0 discriminator 2
	lwz 26,168(1)
	lwz 27,172(1)
	lwz 28,176(1)
	lwz 29,180(1)
	lwz 30,184(1)
.LVL1272:
	lwz 31,188(1)
.LVL1273:
	lfd 31,192(1)
	addi 1,1,200
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI180:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2909:
	.size	_ZN4idAI15EntityCanSeePosEP7idActorRK6idVec3S4_, .-_ZN4idAI15EntityCanSeePosEP7idActorRK6idVec3S4_
	.align 2
	.globl _ZN4idAI15BlockedFailSafeEv
	.type	_ZN4idAI15BlockedFailSafeEv, @function
_ZN4idAI15BlockedFailSafeEv:
.LFB2910:
	.loc 4 2359 0
	.cfi_startproc
.LVL1274:
	mflr 0
	stwu 1,-24(1)
.LCFI181:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB8520:
.LBB8521:
	.loc 4 2360 0
	lis 9,ai_blockedFailSafe+44@ha
.LBE8521:
.LBE8520:
	.loc 4 2359 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB8523:
.LBB8522:
	.loc 20 142 0
	lwz 9,ai_blockedFailSafe+44@l(9)
.LBE8522:
.LBE8523:
	.loc 4 2360 0
	lwz 0,36(9)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L670
	.loc 4 2360 0 is_stmt 0 discriminator 2
	lis 9,.LC6@ha
	lfs 13,4176(3)
	lfs 0,.LC6@l(9)
	fcmpu 7,13,0
	bnl- 7,.L680
.LVL1275:
.L670:
	.loc 4 2374 0 is_stmt 1
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1276:
	addi 1,1,24
	.cfi_remember_state
.LCFI182:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1277:
.L680:
.LCFI183:
	.cfi_restore_state
.LBB8524:
.LBB8525:
	.loc 4 2363 0
	addi 30,3,4216
	mr 3,30
.LVL1278:
	bl _ZNK17idPhysics_Monster8OnGroundEv
	cmpwi 7,3,0
	beq- 7,.L681
.LVL1279:
.LBB8526:
.LBB8527:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 29,gameLocal@ha
	la 29,gameLocal@l(29)
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL1280:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L682
.LVL1281:
.L673:
.LBE8527:
.LBE8526:
	.loc 4 2365 0
	mr 3,30
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1282:
	.loc 4 2366 0
	addis 29,29,0x25
.LBB8529:
.LBB8530:
	.loc 6 424 0
	lwz 0,0(3)
	stw 0,4040(31)
	.loc 6 425 0
	lwz 0,4(3)
	stw 0,4044(31)
	.loc 6 426 0
	lwz 0,8(3)
	stw 0,4048(31)
.LBE8530:
.LBE8529:
	.loc 4 2366 0
	lwz 9,2004(29)
	stw 9,4052(31)
.LVL1283:
.L674:
	.loc 4 2368 0
	lwz 0,2004(29)
	lwz 11,4180(31)
	subf 11,11,0
	cmpw 7,9,11
	bge- 7,.L670
	.loc 4 2369 0
	lwz 9,4184(31)
	lwz 11,4556(31)
	subf 9,9,0
	cmpw 7,11,9
	bge- 7,.L670
.LVL1284:
.LBB8531:
.LBB8532:
	.loc 18 237 0
	lwz 9,5232(31)
	cmpwi 7,9,0
	beq- 7,.L675
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
	lwz 0,2004(29)
.L675:
.LBE8532:
.LBE8531:
	.loc 4 2371 0
	stw 0,4052(31)
.LBE8525:
.LBE8524:
	.loc 4 2374 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1285:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI184:
	.cfi_def_cfa_offset 0
	blr
.LVL1286:
.L681:
.LCFI185:
	.cfi_restore_state
	lis 29,gameLocal@ha
	la 29,gameLocal@l(29)
	b .L673
.LVL1287:
.L682:
.LBB8543:
.LBB8542:
.LBB8533:
.LBB8528:
	.loc 7 636 0
	addi 9,9,132
.LVL1288:
	slwi 9,9,2
.LVL1289:
	add 9,29,9
.LBE8528:
.LBE8533:
	.loc 4 2363 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L673
	.loc 4 2364 0
	mr 3,30
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1290:
.LBB8534:
.LBB8535:
	.loc 6 431 0
	lfs 0,4044(31)
	lfs 13,4(3)
	lfs 12,0(3)
	fsubs 13,13,0
	lfs 0,4040(31)
	lfs 10,8(3)
	fsubs 12,12,0
	lfs 0,4048(31)
.LBE8535:
.LBE8534:
.LBB8537:
.LBB8538:
	.loc 6 636 0
	fmuls 11,13,13
.LBE8538:
.LBE8537:
	.loc 4 2364 0
	lfs 13,4176(31)
.LBB8539:
.LBB8536:
	.loc 6 431 0
	fsubs 0,10,0
.LVL1291:
.LBE8536:
.LBE8539:
.LBB8540:
.LBB8541:
	.loc 8 104 0
	fmuls 13,13,13
.LBE8541:
.LBE8540:
	.loc 6 636 0
	fmadds 12,12,12,11
.LVL1292:
	fmadds 0,0,0,12
.LVL1293:
	.loc 4 2363 0
	fcmpu 7,0,13
	bgt- 7,.L673
	lwz 9,4052(31)
	addis 29,29,0x25
	b .L674
.LBE8542:
.LBE8543:
	.cfi_endproc
.LFE2910:
	.size	_ZN4idAI15BlockedFailSafeEv, .-_ZN4idAI15BlockedFailSafeEv
	.align 2
	.globl _ZN4idAI4TurnEv
	.type	_ZN4idAI4TurnEv, @function
_ZN4idAI4TurnEv:
.LFB2911:
	.loc 4 2387 0
	.cfi_startproc
.LVL1294:
	mflr 0
	stwu 1,-264(1)
.LCFI186:
	.cfi_def_cfa_offset 264
	.cfi_register 65, 0
.LBB8602:
	.loc 4 2393 0
	lis 9,.LC6@ha
.LBE8602:
	.loc 4 2387 0
	stw 31,228(1)
	mr 31,3
	.cfi_offset 31, -36
	stw 0,268(1)
	stfd 28,232(1)
	stfd 29,240(1)
	stfd 30,248(1)
	stfd 31,256(1)
	stw 26,208(1)
	stw 27,212(1)
	stw 28,216(1)
	stw 29,220(1)
	stw 30,224(1)
.LBB8603:
	.loc 4 2393 0
	lfs 0,.LC6@l(9)
	lfs 13,4196(3)
	fcmpu 7,13,0
	bne- 7,.L737
	.cfi_offset 30, -40
	.cfi_offset 29, -44
	.cfi_offset 28, -48
	.cfi_offset 27, -52
	.cfi_offset 26, -56
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 65, 4
.LVL1295:
.L683:
.LBE8603:
	.loc 4 2452 0
	lwz 0,268(1)
	lwz 26,208(1)
	mtlr 0
	lwz 27,212(1)
	lwz 28,216(1)
	lwz 29,220(1)
	lwz 30,224(1)
	lwz 31,228(1)
	lfd 28,232(1)
	lfd 29,240(1)
	lfd 30,248(1)
	lfd 31,256(1)
	addi 1,1,264
	.cfi_remember_state
.LCFI187:
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
	blr
.LVL1296:
.L737:
.LCFI188:
	.cfi_restore_state
.LBB8604:
.LBB8605:
	.loc 4 2398 0
	addi 30,3,3856
	mr 3,30
.LVL1297:
	bl _ZNK11idAnimState8DisabledEv
	cmpwi 7,3,0
	beq- 7,.L738
.L685:
	.loc 4 2401 0
	addi 3,31,3792
	bl _ZNK11idAnimState12GetAnimFlagsEv
.L721:
.LVL1298:
	.loc 4 2403 0
	rlwinm 3,3,0,0xff
.LVL1299:
	andi. 0,3,32
.LVL1300:
	bne- 0,.L683
.LBB8606:
	.loc 4 2407 0
	lis 9,.LC6@ha
	lfs 0,4212(31)
	lfs 30,.LC6@l(9)
	fcmpu 7,0,30
	beq- 7,.L687
	andi. 0,3,16
	bne- 0,.L739
.L687:
	.loc 4 2421 0
	lfs 29,4188(31)
.LBB8607:
.LBB8608:
.LBB8609:
.LBB8610:
	.loc 8 904 0
	lis 30,.LC91@ha
.LBE8610:
.LBE8609:
.LBE8608:
.LBE8607:
	.loc 4 2421 0
	lfs 28,4192(31)
.LBB8620:
.LBB8617:
.LBB8614:
.LBB8611:
	.loc 8 904 0
	lfs 0,.LC91@l(30)
.LBE8611:
.LBE8614:
.LBE8617:
.LBE8620:
	.loc 4 2421 0
	fsubs 30,29,28
.LVL1301:
.LBB8621:
.LBB8618:
.LBB8615:
.LBB8612:
	.loc 8 904 0
	fcmpu 7,30,0
	cror 30,29,30
	bne- 7,.L740
.L694:
	.loc 8 905 0
	lfs 31,.LC91@l(30)
	fdivs 1,30,31
	bl floor
.LVL1302:
	fmr 0,30
	.loc 4 2387 0
	fneg 1,1
	.loc 8 905 0
	fmadd 30,1,31,0
.LVL1303:
	frsp 30,30
.LVL1304:
.L695:
.LBE8612:
.LBE8615:
	.loc 8 912 0
	lis 29,.LC84@ha
	lfs 0,.LC84@l(29)
	fcmpu 7,30,0
	bng- 7,.L697
	.loc 8 913 0
	lfs 0,.LC91@l(30)
	fsubs 30,30,0
.LVL1305:
.L697:
.LBE8618:
.LBE8621:
	.loc 4 2422 0
	lis 9,.LC1@ha
	lfs 12,4200(31)
	lfs 0,.LC1@l(9)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfs 13,_ZN6idMath8M_MS2SECE@l(9)
	lis 9,.LC96@ha
	lfs 31,.LC96@l(9)
	fmuls 13,13,0
	.loc 4 2423 0
	lfs 0,4196(31)
	.loc 4 2422 0
	fmuls 31,30,31
	fmadds 31,31,13,12
	.loc 4 2423 0
	fcmpu 7,31,0
	.loc 4 2422 0
	stfs 31,4200(31)
	.loc 4 2423 0
	bgt- 7,.L735
	.loc 4 2425 0
	fneg 0,0
	fcmpu 7,31,0
	bnl- 7,.L701
.L735:
	.loc 4 2426 0
	fmr 31,0
	stfs 0,4200(31)
.L701:
	.loc 4 2429 0
	lis 9,.LC6@ha
	.loc 4 2428 0
	fmuls 31,13,31
.LVL1306:
	.loc 4 2429 0
	lfs 0,.LC6@l(9)
	fcmpu 7,30,0
	cror 30,29,30
	bne- 7,.L703
	fcmpu 7,31,30
	cror 30,29,30
	bne- 7,.L703
.L736:
	.loc 4 2433 0
	fdivs 13,30,13
	.loc 4 2434 0
	fmr 31,30
.LVL1307:
	.loc 4 2433 0
	stfs 13,4200(31)
.L706:
.LVL1308:
	.loc 4 2436 0
	fadds 31,31,28
.LVL1309:
.LBB8622:
.LBB8623:
.LBB8624:
.LBB8625:
	.loc 8 904 0
	lfs 0,.LC91@l(30)
	fcmpu 7,31,0
	cror 30,29,30
	beq- 7,.L709
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,31,0
	bnl- 7,.L710
.L709:
	.loc 8 905 0
	lfs 30,.LC91@l(30)
.LVL1310:
	fdivs 1,31,30
	bl floor
.LVL1311:
	fmr 0,31
	.loc 4 2387 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,30,0
.LVL1312:
	frsp 31,31
.LVL1313:
.L710:
.LBE8625:
.LBE8624:
	.loc 8 912 0
	lfs 0,.LC84@l(29)
	fcmpu 7,31,0
	bng- 7,.L712
	.loc 8 913 0
	lfs 0,.LC91@l(30)
	fsubs 31,31,0
.LVL1314:
.L712:
.LBE8623:
.LBE8622:
	.loc 4 2438 0
	fsubs 0,29,31
	.loc 4 2437 0
	stfs 31,4192(31)
	.loc 4 2438 0
	stfs 0,200(1)
.LVL1315:
.LBB8626:
.LBB8627:
.LBB8628:
.LBB8629:
	.loc 8 904 0
	lfs 0,.LC91@l(30)
.LVL1316:
	lfs 13,200(1)
	fcmpu 7,13,0
	cror 30,29,30
	beq- 7,.L714
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,13,0
	bnl- 7,.L715
.L714:
	.loc 8 905 0
	lfs 0,200(1)
	lfs 30,.LC91@l(30)
	fdivs 1,0,30
	bl floor
.LVL1317:
	lfs 0,200(1)
	.loc 4 2387 0
	fneg 1,1
	.loc 8 905 0
	fmadd 30,1,30,0
	frsp 30,30
	stfs 30,200(1)
.LVL1318:
.L715:
.LBE8629:
.LBE8628:
	.loc 8 912 0
	lfs 0,.LC84@l(29)
	lfs 13,200(1)
	fcmpu 7,13,0
	bng- 7,.L717
	.loc 8 913 0
	lfs 0,.LC91@l(30)
	fsubs 13,13,0
	stfs 13,200(1)
.LVL1319:
.L717:
.LBE8627:
.LBE8626:
.LBB8630:
.LBB8631:
	.loc 8 781 0
	lwz 9,200(1)
	rlwinm 0,9,0,1,31
.LBE8631:
.LBE8630:
	.loc 4 2439 0
	lis 9,.LC77@ha
	stw 0,204(1)
	lfs 0,.LC77@l(9)
	lfs 13,204(1)
	fcmpu 7,13,0
	bnl- 7,.L693
	.loc 4 2440 0
	fmr 31,29
.LVL1320:
	stfs 29,4192(31)
.LVL1321:
.L693:
.LBE8606:
.LBB8646:
.LBB8647:
	.loc 12 109 0
	li 0,0
.LBE8647:
.LBE8646:
	.loc 4 2444 0
	addi 3,1,128
.LVL1322:
	addi 4,1,116
.LBB8649:
.LBB8648:
	.loc 12 109 0
	stw 0,116(1)
	.loc 12 110 0
	stfs 31,120(1)
	.loc 12 111 0
	stw 0,124(1)
.LBE8648:
.LBE8649:
	.loc 4 2444 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL1323:
.LBB8650:
.LBB8651:
	.loc 13 333 0
	addi 7,31,2268
	li 10,0
.L720:
.LBB8652:
.LBB8653:
	.loc 6 424 0
	addi 11,1,128
.LVL1324:
.LBE8653:
.LBE8652:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB8656:
.LBB8654:
	.loc 6 424 0
	lwzux 0,11,10
.LVL1325:
	mr 9,7
	stwux 0,9,10
.LBE8654:
.LBE8656:
	.loc 13 333 0
	addi 10,10,12
.LBB8657:
.LBB8655:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE8655:
.LBE8657:
	.loc 13 333 0
	bne+ 7,.L720
.LBE8651:
.LBE8650:
.LBE8605:
	.loc 4 2446 0
	lis 9,ai_debugMove+44@ha
.LBB8738:
.LBB8658:
.LBB8659:
.LBB8660:
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE8660:
.LBE8659:
	.loc 4 2446 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L683
.LBB8661:
	.loc 4 2448 0
	lis 28,gameRenderWorld@ha
	.loc 4 2447 0
	addi 3,31,4216
	li 4,0
.LBB8662:
.LBB8663:
	.loc 12 109 0
	li 29,0
.LBE8663:
.LBE8662:
	.loc 4 2447 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
	.loc 4 2448 0
	lwz 26,gameRenderWorld@l(28)
	lwz 0,4188(31)
	.loc 4 2447 0
	mr 30,3
.LVL1326:
	.loc 4 2448 0
	lwz 9,0(26)
	addi 3,1,92
.LVL1327:
	addi 4,1,80
.LBB8666:
.LBB8664:
	.loc 12 110 0
	stw 0,84(1)
.LBE8664:
.LBE8666:
	.loc 4 2448 0
	lwz 27,156(9)
.LBB8667:
.LBB8665:
	.loc 12 109 0
	stw 29,80(1)
	.loc 12 111 0
	stw 29,88(1)
.LBE8665:
.LBE8667:
	.loc 4 2448 0
	bl _ZNK8idAngles9ToForwardEv
.LVL1328:
	.loc 6 452 0
	lis 9,.LC20@ha
	lfs 12,4(30)
	lfs 0,.LC20@l(9)
	.loc 4 2448 0
	lis 4,colorRed@ha
	.loc 6 452 0
	lfs 10,96(1)
	.loc 4 2448 0
	mr 5,30
	.loc 6 452 0
	lfs 13,8(30)
	.loc 4 2448 0
	addi 6,1,104
	.loc 6 452 0
	fmadds 12,10,0,12
	lfs 10,100(1)
.LBB8668:
.LBB8669:
.LBB8670:
.LBB8671:
	lfs 11,0(30)
.LBE8671:
.LBE8670:
.LBE8669:
.LBE8668:
	.loc 4 2448 0
	mtctr 27
	.loc 6 452 0
	fmadds 13,10,0,13
.LVL1329:
.LBB8684:
.LBB8680:
.LBB8676:
.LBB8672:
	lfs 10,92(1)
	.loc 6 397 0
	stfs 12,108(1)
.LBE8672:
.LBE8676:
.LBE8680:
.LBE8684:
	.loc 4 2448 0
	mr 3,26
.LBB8685:
.LBB8681:
.LBB8677:
.LBB8673:
	.loc 6 452 0
	fmadds 0,10,0,11
.LBE8673:
.LBE8677:
.LBE8681:
.LBE8685:
	.loc 4 2448 0
	li 7,16
.LBB8686:
.LBB8682:
.LBB8678:
.LBB8674:
	.loc 6 398 0
	stfs 13,112(1)
.LBE8674:
.LBE8678:
.LBE8682:
.LBE8686:
	.loc 4 2448 0
	li 8,0
	la 4,colorRed@l(4)
.LBB8687:
.LBB8683:
.LBB8679:
.LBB8675:
	.loc 6 396 0
	stfs 0,104(1)
.LBE8675:
.LBE8679:
.LBE8683:
.LBE8687:
	.loc 4 2448 0
	bctrl
.LVL1330:
	.loc 4 2449 0
	lwz 26,gameRenderWorld@l(28)
	lwz 0,4192(31)
.LVL1331:
	addi 3,1,56
	lwz 9,0(26)
	addi 4,1,44
.LBB8688:
.LBB8689:
	.loc 12 110 0
	stw 0,48(1)
.LBE8689:
.LBE8688:
	.loc 4 2449 0
	lwz 27,156(9)
.LBB8691:
.LBB8690:
	.loc 12 109 0
	stw 29,44(1)
	.loc 12 111 0
	stw 29,52(1)
.LBE8690:
.LBE8691:
	.loc 4 2449 0
	bl _ZNK8idAngles9ToForwardEv
.LVL1332:
	.loc 6 452 0
	lis 9,.LC80@ha
	lfs 12,4(30)
	lfs 0,.LC80@l(9)
	.loc 4 2449 0
	lis 4,colorGreen@ha
	.loc 6 452 0
	lfs 10,60(1)
	.loc 4 2449 0
	mr 5,30
	.loc 6 452 0
	lfs 13,8(30)
	.loc 4 2449 0
	addi 6,1,68
	.loc 6 452 0
	fmadds 12,10,0,12
	lfs 10,64(1)
.LBB8692:
.LBB8693:
.LBB8694:
.LBB8695:
	lfs 11,0(30)
.LBE8695:
.LBE8694:
.LBE8693:
.LBE8692:
	.loc 4 2449 0
	mtctr 27
	.loc 6 452 0
	fmadds 13,10,0,13
.LVL1333:
.LBB8708:
.LBB8704:
.LBB8700:
.LBB8696:
	lfs 10,56(1)
	.loc 6 397 0
	stfs 12,72(1)
.LBE8696:
.LBE8700:
.LBE8704:
.LBE8708:
	.loc 4 2449 0
	mr 3,26
.LBB8709:
.LBB8705:
.LBB8701:
.LBB8697:
	.loc 6 452 0
	fmadds 0,10,0,11
.LBE8697:
.LBE8701:
.LBE8705:
.LBE8709:
	.loc 4 2449 0
	li 7,16
	li 8,0
.LBB8710:
.LBB8706:
.LBB8702:
.LBB8698:
	.loc 6 398 0
	stfs 13,76(1)
.LBE8698:
.LBE8702:
.LBE8706:
.LBE8710:
	.loc 4 2449 0
	la 4,colorGreen@l(4)
.LBB8711:
.LBB8707:
.LBB8703:
.LBB8699:
	.loc 6 396 0
	stfs 0,68(1)
.LBE8699:
.LBE8703:
.LBE8707:
.LBE8711:
	.loc 4 2449 0
	bctrl
.LVL1334:
	.loc 4 2450 0
	lfs 13,4192(31)
	lfs 0,4200(31)
	addi 3,1,20
	lwz 28,gameRenderWorld@l(28)
	addi 4,1,8
	fadds 0,13,0
.LVL1335:
	lwz 9,0(28)
.LBB8712:
.LBB8713:
	.loc 12 109 0
	stw 29,8(1)
.LBE8713:
.LBE8712:
	.loc 4 2450 0
	lwz 31,156(9)
.LVL1336:
.LBB8715:
.LBB8714:
	.loc 12 110 0
	stfs 0,12(1)
	.loc 12 111 0
	stw 29,16(1)
.LBE8714:
.LBE8715:
	.loc 4 2450 0
	bl _ZNK8idAngles9ToForwardEv
.LVL1337:
	.loc 6 452 0
	lis 9,.LC61@ha
	lfs 12,4(30)
	lfs 0,.LC61@l(9)
	.loc 4 2450 0
	lis 4,colorYellow@ha
	.loc 6 452 0
	lfs 10,24(1)
	.loc 4 2450 0
	mr 3,28
	.loc 6 452 0
	lfs 13,8(30)
	.loc 4 2450 0
	la 4,colorYellow@l(4)
	.loc 6 452 0
	fmadds 12,10,0,12
	lfs 10,28(1)
.LBB8716:
.LBB8717:
.LBB8718:
.LBB8719:
	lfs 11,0(30)
.LBE8719:
.LBE8718:
.LBE8717:
.LBE8716:
	.loc 4 2450 0
	mr 5,30
	.loc 6 452 0
	fmadds 13,10,0,13
.LVL1338:
.LBB8732:
.LBB8728:
.LBB8724:
.LBB8720:
	lfs 10,20(1)
	.loc 6 397 0
	stfs 12,36(1)
.LBE8720:
.LBE8724:
.LBE8728:
.LBE8732:
	.loc 4 2450 0
	addi 6,1,32
.LBB8733:
.LBB8729:
.LBB8725:
.LBB8721:
	.loc 6 452 0
	fmadds 0,10,0,11
.LBE8721:
.LBE8725:
.LBE8729:
.LBE8733:
	.loc 4 2450 0
	li 7,16
.LBB8734:
.LBB8730:
.LBB8726:
.LBB8722:
	.loc 6 398 0
	stfs 13,40(1)
.LBE8722:
.LBE8726:
.LBE8730:
.LBE8734:
	.loc 4 2450 0
	li 8,0
	mtctr 31
.LBB8735:
.LBB8731:
.LBB8727:
.LBB8723:
	.loc 6 396 0
	stfs 0,32(1)
.LBE8723:
.LBE8727:
.LBE8731:
.LBE8735:
	.loc 4 2450 0
	bctrl
.LVL1339:
	b .L683
.LVL1340:
.L740:
.LBE8661:
.LBE8658:
.LBB8736:
.LBB8632:
.LBB8619:
.LBB8616:
.LBB8613:
	.loc 8 904 0
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,30,0
	blt+ 7,.L694
	b .L695
.LVL1341:
.L703:
.LBE8613:
.LBE8616:
.LBE8619:
.LBE8632:
	.loc 4 2432 0
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,30,0
	cror 30,28,30
	bne- 7,.L706
	fcmpu 7,31,30
	cror 30,28,30
	bne- 7,.L706
	b .L736
.LVL1342:
.L738:
.LBE8736:
	.loc 4 2398 0
	mr 3,30
	li 4,0
	bl _ZNK11idAnimState8AnimDoneEi
	cmpwi 7,3,0
	bne- 7,.L685
	.loc 4 2399 0
	mr 3,30
	bl _ZNK11idAnimState12GetAnimFlagsEv
	b .L721
.LVL1343:
.L739:
.LBB8737:
.LBB8633:
	.loc 4 2411 0
	lfs 31,4208(31)
	.loc 4 2412 0
	addi 29,31,636
	li 4,2
	mr 3,29
.LVL1344:
	.loc 4 2411 0
	fdivs 31,31,0
.LVL1345:
	.loc 4 2412 0
	bl _ZN10idAnimator11CurrentAnimEi
	lis 9,.LC0@ha
	li 4,0
	lfs 29,.LC0@l(9)
.LBB8634:
.LBB8635:
.LBB8636:
.LBB8637:
	.loc 8 904 0
	lis 30,.LC91@ha
.LBE8637:
.LBE8636:
.LBE8635:
.LBE8634:
	.loc 4 2412 0
	fsubs 29,29,31
	fmr 1,29
	bl _ZN11idAnimBlend19SetSyncedAnimWeightEif
	.loc 4 2413 0
	li 4,2
	mr 3,29
	bl _ZN10idAnimator11CurrentAnimEi
	fmr 1,31
	li 4,1
	bl _ZN11idAnimBlend19SetSyncedAnimWeightEif
	.loc 4 2414 0
	li 4,1
	mr 3,29
	bl _ZN10idAnimator11CurrentAnimEi
	fmr 1,29
	li 4,0
	bl _ZN11idAnimBlend19SetSyncedAnimWeightEif
	.loc 4 2415 0
	li 4,1
	mr 3,29
	bl _ZN10idAnimator11CurrentAnimEi
	fmr 1,31
	li 4,1
	bl _ZN11idAnimBlend19SetSyncedAnimWeightEif
	.loc 4 2418 0
	lis 9,gameLocal+2426836@ha
	lwz 5,gameLocal+2426836@l(9)
	li 4,0
	addi 6,1,164
	mr 3,29
	bl _ZNK10idAnimator16GetDeltaRotationEiiR6idMat3
	.loc 4 2419 0
	lfs 31,4204(31)
.LVL1346:
	addi 3,1,164
.LVL1347:
	bl _ZNK6idVec35ToYawEv
.LVL1348:
.LBB8644:
.LBB8642:
.LBB8640:
.LBB8638:
	.loc 8 904 0
	lfs 0,.LC91@l(30)
.LBE8638:
.LBE8640:
.LBE8642:
.LBE8644:
	.loc 4 2419 0
	fadds 31,31,1
.LVL1349:
.LBB8645:
.LBB8643:
.LBB8641:
.LBB8639:
	.loc 8 904 0
	fcmpu 7,31,0
	cror 30,29,30
	beq- 7,.L688
	fcmpu 7,31,30
	bnl- 7,.L689
.L688:
	.loc 8 905 0
	lfs 30,.LC91@l(30)
	fdivs 1,31,30
	bl floor
	fmr 0,31
	.loc 4 2387 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,30,0
.LVL1350:
	frsp 31,31
.LVL1351:
.L689:
.LBE8639:
.LBE8641:
	.loc 8 912 0
	lis 9,.LC84@ha
	lfs 0,.LC84@l(9)
	fcmpu 7,31,0
	bng- 7,.L691
	.loc 8 913 0
	lfs 0,.LC91@l(30)
	fsubs 31,31,0
.LVL1352:
.L691:
.LBE8643:
.LBE8645:
	.loc 4 2419 0
	stfs 31,4192(31)
	b .L693
.LBE8633:
.LBE8737:
.LBE8738:
.LBE8604:
	.cfi_endproc
.LFE2911:
	.size	_ZN4idAI4TurnEv, .-_ZN4idAI4TurnEv
	.align 2
	.globl _ZN4idAI11FacingIdealEv
	.type	_ZN4idAI11FacingIdealEv, @function
_ZN4idAI11FacingIdealEv:
.LFB2912:
	.loc 4 2459 0
	.cfi_startproc
.LVL1353:
	mflr 0
	stwu 1,-40(1)
.LCFI189:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB8749:
	.loc 4 2462 0
	lis 9,.LC6@ha
.LBE8749:
	.loc 4 2459 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -20
	stw 0,44(1)
	stfd 30,24(1)
	stfd 31,32(1)
	stw 30,16(1)
.LBB8750:
	.loc 4 2462 0
	lfs 0,.LC6@l(9)
	lfs 13,4196(3)
	.loc 4 2463 0
	li 3,1
.LVL1354:
	.loc 4 2462 0
	fcmpu 7,13,0
	beq- 7,.L742
	.cfi_offset 30, -24
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
.LVL1355:
.LBE8750:
.LBB8751:
.LBB8752:
	.loc 4 2466 0
	lfs 31,4188(31)
.LBB8753:
.LBB8754:
.LBB8755:
.LBB8756:
	.loc 8 904 0
	lis 30,.LC91@ha
.LBE8756:
.LBE8755:
.LBE8754:
.LBE8753:
	.loc 4 2466 0
	lfs 13,4192(31)
	fsubs 13,13,31
	stfs 13,8(1)
.LVL1356:
.LBB8763:
.LBB8761:
.LBB8759:
.LBB8757:
	.loc 8 904 0
	lfs 13,.LC91@l(30)
.LVL1357:
	lfs 12,8(1)
	fcmpu 7,12,13
	cror 30,29,30
	bne- 7,.L755
.L743:
	.loc 8 905 0
	lfs 13,8(1)
	lfs 30,.LC91@l(30)
	fdivs 1,13,30
	bl floor
	lfs 0,8(1)
	.loc 4 2459 0
	fneg 1,1
	.loc 8 905 0
	fmadd 30,1,30,0
	frsp 30,30
	stfs 30,8(1)
.LVL1358:
.L744:
.LBE8757:
.LBE8759:
	.loc 8 912 0
	lis 9,.LC84@ha
	lfs 12,8(1)
	lfs 0,.LC84@l(9)
	fcmpu 7,12,0
	bng- 7,.L746
	.loc 8 913 0
	lfs 0,.LC91@l(30)
	fsubs 13,12,0
	stfs 13,8(1)
.LVL1359:
.L746:
.LBE8761:
.LBE8763:
.LBB8764:
.LBB8765:
	.loc 8 781 0
	lwz 9,8(1)
.LBE8765:
.LBE8764:
	.loc 4 2473 0
	li 3,0
.LBB8767:
.LBB8766:
	.loc 8 781 0
	rlwinm 0,9,0,1,31
.LBE8766:
.LBE8767:
	.loc 4 2467 0
	lis 9,.LC97@ha
	stw 0,12(1)
	lfs 0,.LC97@l(9)
	lfs 12,12(1)
	fcmpu 7,12,0
	bnl- 7,.L742
	.loc 4 2469 0
	stfs 31,4192(31)
	.loc 4 2470 0
	li 3,1
.LVL1360:
.L742:
.LBE8752:
.LBE8751:
	.loc 4 2474 0
	lwz 0,44(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL1361:
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI190:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1362:
.L755:
.LCFI191:
	.cfi_restore_state
.LBB8770:
.LBB8769:
.LBB8768:
.LBB8762:
.LBB8760:
.LBB8758:
	.loc 8 904 0
	fcmpu 7,12,0
	blt+ 7,.L743
	b .L744
.LBE8758:
.LBE8760:
.LBE8762:
.LBE8768:
.LBE8769:
.LBE8770:
	.cfi_endproc
.LFE2912:
	.size	_ZN4idAI11FacingIdealEv, .-_ZN4idAI11FacingIdealEv
	.align 2
	.globl _ZN4idAI10TurnTowardEf
	.type	_ZN4idAI10TurnTowardEf, @function
_ZN4idAI10TurnTowardEf:
.LFB2913:
	.loc 4 2481 0
	.cfi_startproc
.LVL1363:
	stwu 1,-40(1)
.LCFI192:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 31,20(1)
.LBB8776:
.LBB8777:
.LBB8778:
.LBB8779:
.LBB8780:
	.loc 8 904 0
	lis 31,.LC91@ha
	.cfi_offset 31, -20
	.cfi_register 65, 0
	lfs 0,.LC91@l(31)
.LBE8780:
.LBE8779:
.LBE8778:
.LBE8777:
.LBE8776:
	.loc 4 2481 0
	stfd 31,32(1)
	fmr 31,1
	.cfi_offset 63, -8
.LVL1364:
.LBB8789:
.LBB8787:
.LBB8785:
.LBB8783:
.LBB8781:
	.loc 8 904 0
	fcmpu 7,1,0
.LBE8781:
.LBE8783:
.LBE8785:
.LBE8787:
.LBE8789:
	.loc 4 2481 0
	stw 0,44(1)
	stfd 30,24(1)
.LBB8790:
.LBB8788:
.LBB8786:
.LBB8784:
.LBB8782:
	.loc 8 904 0
	cror 30,29,30
	beq- 7,.L757
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,1,0
	bnl- 7,.L758
.L757:
	.loc 8 905 0
	lfs 30,.LC91@l(31)
	stw 3,8(1)
	fdivs 1,31,30
.LVL1365:
	bl floor
.LVL1366:
	fmr 0,31
	.loc 4 2481 0
	fneg 1,1
	.loc 8 905 0
	lwz 3,8(1)
.LVL1367:
	fmadd 31,1,30,0
.LVL1368:
	frsp 31,31
.LVL1369:
.L758:
.LBE8782:
.LBE8784:
	.loc 8 912 0
	lis 9,.LC84@ha
	lfs 0,.LC84@l(9)
	fcmpu 7,31,0
	bng- 7,.L760
	.loc 8 913 0
	lfs 0,.LC91@l(31)
	fsubs 31,31,0
.LVL1370:
.L760:
.LBE8786:
.LBE8788:
	.loc 4 2482 0
	stfs 31,4188(3)
.LBE8790:
	.loc 4 2485 0
	lwz 0,44(1)
	lwz 31,20(1)
	lfd 30,24(1)
	mtlr 0
	lfd 31,32(1)
.LVL1371:
	addi 1,1,40
.LCFI193:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
.LBB8791:
	.loc 4 2483 0
	b _ZN4idAI11FacingIdealEv
.LVL1372:
.LVL1373:
.LBE8791:
	.cfi_endproc
.LFE2913:
	.size	_ZN4idAI10TurnTowardEf, .-_ZN4idAI10TurnTowardEf
	.align 2
	.globl _ZN4idAI10TurnTowardERK6idVec3
	.type	_ZN4idAI10TurnTowardERK6idVec3, @function
_ZN4idAI10TurnTowardERK6idVec3:
.LFB2914:
	.loc 4 2492 0
	.cfi_startproc
.LVL1374:
	stwu 1,-64(1)
.LCFI194:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 29,28(1)
.LBB8813:
	.loc 4 2497 0
	addi 29,3,4216
	.cfi_offset 29, -36
	.cfi_register 65, 0
.LBE8813:
	.loc 4 2492 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -32
	stw 31,36(1)
.LBB8860:
	.loc 4 2497 0
	mr 3,29
.LVL1375:
.LBE8860:
	.loc 4 2492 0
	mr 31,4
	.cfi_offset 31, -28
.LBB8861:
	.loc 4 2497 0
	li 4,0
.LVL1376:
.LBE8861:
	.loc 4 2492 0
	stw 0,68(1)
	stfd 29,40(1)
	stfd 30,48(1)
	stfd 31,56(1)
.LBB8862:
	.loc 4 2497 0
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1377:
.LBB8814:
.LBB8815:
	.loc 6 431 0
	lfs 13,0(3)
	lfs 12,4(3)
	lfs 0,8(3)
.LBE8815:
.LBE8814:
	.loc 4 2498 0
	mr 3,29
.LVL1378:
.LBB8817:
.LBB8816:
	.loc 6 431 0
	lfs 30,0(31)
	lfs 29,4(31)
	lfs 31,8(31)
	fsubs 30,30,13
	fsubs 29,29,12
	fsubs 31,31,0
.LVL1379:
.LBE8816:
.LBE8817:
	.loc 4 2498 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL1380:
.LBB8818:
.LBB8819:
.LBB8820:
.LBB8821:
	.loc 6 435 0
	lfs 0,16(3)
.LBE8821:
.LBE8820:
.LBE8819:
.LBE8818:
	.loc 4 2499 0
	lis 9,.LC6@ha
.LBB8832:
.LBB8828:
.LBB8823:
.LBB8824:
	.loc 6 435 0
	lfs 13,4(3)
.LBE8824:
.LBE8823:
.LBB8826:
.LBB8822:
	fmuls 0,29,0
.LBE8822:
.LBE8826:
	lfs 12,12(3)
.LBB8827:
.LBB8825:
	fmuls 29,29,13
.LVL1381:
.LBE8825:
.LBE8827:
.LBE8828:
.LBE8832:
	lfs 13,0(3)
.LBB8833:
.LBB8829:
	fmadds 0,30,12,0
	lfs 12,20(3)
.LBE8829:
.LBE8833:
	fmadds 30,30,13,29
.LVL1382:
	lfs 13,8(3)
.LBB8834:
.LBB8830:
	fmadds 0,31,12,0
.LBE8830:
.LBE8834:
	.loc 4 2499 0
	lfs 12,.LC6@l(9)
	.loc 6 435 0
	fmadds 13,31,13,30
	.loc 4 2501 0
	lis 9,.LC73@ha
	.loc 4 2499 0
	stfs 12,16(1)
.LBB8835:
.LBB8836:
	.loc 6 636 0
	fmuls 11,0,0
.LBE8836:
.LBE8835:
.LBB8839:
.LBB8831:
	.loc 13 630 0
	stfs 0,12(1)
	.loc 13 629 0
	stfs 13,8(1)
.LVL1383:
.LBE8831:
.LBE8839:
.LBB8840:
.LBB8837:
	.loc 6 636 0
	fmadds 11,13,13,11
.LBE8837:
.LBE8840:
	.loc 4 2501 0
	lfs 13,.LC73@l(9)
.LBB8841:
.LBB8838:
	.loc 6 636 0
	fadds 0,11,12
.LBE8838:
.LBE8841:
	.loc 4 2501 0
	fcmpu 7,0,13
	bng- 7,.L774
.L764:
	.loc 4 2502 0 discriminator 5
	addi 3,1,8
.LVL1384:
.LBB8842:
.LBB8843:
.LBB8844:
.LBB8845:
	.loc 8 904 0 discriminator 5
	lis 31,.LC91@ha
.LVL1385:
.LBE8845:
.LBE8844:
.LBE8843:
.LBE8842:
	.loc 4 2502 0 discriminator 5
	bl _ZNK6idVec35ToYawEv
.LBB8855:
.LBB8852:
.LBB8849:
.LBB8846:
	.loc 8 904 0 discriminator 5
	lfs 0,.LC91@l(31)
.LBE8846:
.LBE8849:
.LBE8852:
.LBE8855:
	.loc 4 2502 0 discriminator 5
	fmr 31,1
.LVL1386:
.LBB8856:
.LBB8853:
.LBB8850:
.LBB8847:
	.loc 8 904 0 discriminator 5
	fcmpu 7,1,0
	cror 30,29,30
	bne- 7,.L775
.L767:
	.loc 8 905 0
	lfs 30,.LC91@l(31)
	fdivs 1,31,30
.LVL1387:
	bl floor
	fmr 0,31
	.loc 4 2492 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,30,0
.LVL1388:
	frsp 31,31
.LVL1389:
.L768:
.LBE8847:
.LBE8850:
	.loc 8 912 0
	lis 9,.LC84@ha
	lfs 0,.LC84@l(9)
	fcmpu 7,31,0
	bng- 7,.L770
	.loc 8 913 0
	lfs 0,.LC91@l(31)
	fsubs 31,31,0
.LVL1390:
.L770:
.LBE8853:
.LBE8856:
	.loc 4 2502 0
	stfs 31,4188(30)
.LVL1391:
.L765:
	.loc 4 2505 0
	mr 3,30
	bl _ZN4idAI11FacingIdealEv
.LVL1392:
.LBE8862:
	.loc 4 2507 0
	lwz 0,68(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL1393:
	lwz 31,36(1)
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI195:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1394:
.L774:
.LCFI196:
	.cfi_restore_state
.LBB8863:
	.loc 4 2501 0
	lis 9,.LC98@ha
	lfs 13,.LC98@l(9)
	fcmpu 7,0,13
	bng- 7,.L765
.LVL1395:
.LBB8857:
.LBB8858:
	.loc 7 634 0 discriminator 3
	lwz 0,5120(30)
	.loc 7 635 0 discriminator 3
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 3
	rlwinm 11,0,0,20,31
.LVL1396:
	.loc 7 635 0 discriminator 3
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L764
	.loc 7 636 0
	addi 11,11,132
.LVL1397:
	slwi 11,11,2
.LVL1398:
	add 9,9,11
.LBE8858:
.LBE8857:
	.loc 4 2501 0
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L765
	b .L764
.LVL1399:
.L775:
.LBB8859:
.LBB8854:
.LBB8851:
.LBB8848:
	.loc 8 904 0
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,1,0
	blt+ 7,.L767
	b .L768
.LBE8848:
.LBE8851:
.LBE8854:
.LBE8859:
.LBE8863:
	.cfi_endproc
.LFE2914:
	.size	_ZN4idAI10TurnTowardERK6idVec3, .-_ZN4idAI10TurnTowardERK6idVec3
	.align 2
	.globl _ZN4idAI10FaceEntityEP8idEntity
	.type	_ZN4idAI10FaceEntityEP8idEntity, @function
_ZN4idAI10FaceEntityEP8idEntity:
.LFB2881:
	.loc 4 1570 0
	.cfi_startproc
.LVL1400:
	stwu 1,-32(1)
.LCFI197:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 30,24(1)
.LBB8864:
	.loc 4 1571 0
	mr. 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE8864:
	.loc 4 1570 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
.LBB8891:
	.loc 4 1571 0
	beq- 0,.L782
	.cfi_offset 65, 4
	.loc 4 1576 0
	mr 3,30
.LVL1401:
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1402:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	.loc 4 1577 0
	addi 4,1,8
	.loc 4 1576 0
	lwz 11,0(3)
	lwz 9,4(3)
	lwz 0,8(3)
	.loc 4 1577 0
	mr 3,31
	.loc 4 1576 0
	stw 11,8(1)
	stw 9,12(1)
	stw 0,16(1)
	.loc 4 1577 0
	bl _ZN4idAI10TurnTowardERK6idVec3
.LVL1403:
.LBB8865:
.LBB8866:
	.loc 7 608 0
	lwz 9,4(30)
	lis 30,gameLocal@ha
.LVL1404:
	la 30,gameLocal@l(30)
.LBE8866:
.LBE8865:
	.loc 4 1579 0
	addi 3,31,4216
.LBB8870:
.LBB8867:
	.loc 7 608 0
	addi 11,9,4228
.LBE8867:
.LBE8870:
	.loc 4 1579 0
	li 4,0
.LBB8871:
.LBB8868:
	.loc 7 608 0
	slwi 11,11,2
	add 11,30,11
.LBE8868:
.LBE8871:
	.loc 4 1582 0
	addis 30,30,0x25
.LBB8872:
.LBB8869:
	.loc 7 608 0
	lwz 0,4(11)
	slwi 0,0,12
	or 9,0,9
	stw 9,3988(31)
.LBE8869:
.LBE8872:
	.loc 4 1579 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1405:
.LBB8873:
.LBB8874:
	.loc 18 237 0
	lwz 9,5208(31)
.LBE8874:
.LBE8873:
.LBB8877:
.LBB8878:
	.loc 6 424 0
	lwz 0,0(3)
.LBE8878:
.LBE8877:
.LBB8882:
.LBB8875:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE8875:
.LBE8882:
.LBB8883:
.LBB8879:
	.loc 6 424 0
	stw 0,3964(31)
.LBE8879:
.LBE8883:
	.loc 4 1580 0
	li 0,2
.LBB8884:
.LBB8880:
	.loc 6 425 0
	lwz 11,4(3)
	stw 11,3968(31)
	.loc 6 426 0
	lwz 11,8(3)
.LBE8880:
.LBE8884:
	.loc 4 1580 0
	stw 0,3956(31)
.LBB8885:
.LBB8881:
	.loc 6 426 0
	stw 11,3972(31)
.LBE8881:
.LBE8885:
	.loc 4 1583 0
	li 11,0
	.loc 4 1581 0
	stw 0,3960(31)
	.loc 4 1582 0
	lwz 0,2004(30)
	.loc 4 1583 0
	stw 11,4016(31)
.LVL1406:
	.loc 4 1582 0
	stw 0,4008(31)
.LBB8886:
.LBB8876:
	.loc 18 237 0
	beq- 7,.L779
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L779:
.LVL1407:
.LBE8876:
.LBE8886:
.LBB8887:
.LBB8888:
	.loc 18 237 0
	lwz 9,5220(31)
	cmpwi 7,9,0
	beq- 7,.L780
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L780:
.LVL1408:
.LBE8888:
.LBE8887:
.LBB8889:
.LBB8890:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1588 0
	li 3,1
.LVL1409:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L778
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L778:
.LBE8890:
.LBE8889:
.LBE8891:
	.loc 4 1589 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL1410:
	addi 1,1,32
	.cfi_remember_state
.LCFI198:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1411:
.L782:
.LCFI199:
	.cfi_restore_state
.LBB8892:
	.loc 4 1572 0
	li 4,3
.LVL1412:
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL1413:
.LBE8892:
	.loc 4 1589 0
	lwz 0,36(1)
	lwz 30,24(1)
.LVL1414:
.LBB8893:
	.loc 4 1573 0
	li 3,0
.LBE8893:
	.loc 4 1589 0
	mtlr 0
	lwz 31,28(1)
.LVL1415:
	addi 1,1,32
	.cfi_restore 30
	.cfi_restore 31
.LCFI200:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2881:
	.size	_ZN4idAI10FaceEntityEP8idEntity, .-_ZN4idAI10FaceEntityEP8idEntity
	.align 2
	.globl _ZN4idAI9FaceEnemyEv
	.type	_ZN4idAI9FaceEnemyEv, @function
_ZN4idAI9FaceEnemyEv:
.LFB2880:
	.loc 4 1542 0
	.cfi_startproc
.LVL1416:
	mflr 0
	stwu 1,-24(1)
.LCFI201:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
.LBB8894:
.LBB8895:
.LBB8896:
	.loc 7 635 0
	lis 30,gameLocal@ha
	.cfi_offset 30, -8
.LBE8896:
.LBE8895:
.LBE8894:
	.loc 4 1542 0
	stw 31,20(1)
.LBB8927:
.LBB8900:
.LBB8897:
	.loc 7 635 0
	la 30,gameLocal@l(30)
.LBE8897:
.LBE8900:
.LBE8927:
	.loc 4 1542 0
	stw 0,28(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL1417:
	stw 29,12(1)
.LBB8928:
.LBB8901:
.LBB8898:
	.loc 7 634 0
	lwz 0,5120(3)
	rlwinm 9,0,0,20,31
.LVL1418:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L790
	.cfi_offset 29, -12
.LVL1419:
.L784:
.LBE8898:
.LBE8901:
	.loc 4 1545 0
	mr 3,31
.LVL1420:
	li 4,3
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 1546 0
	li 3,0
.L786:
.LBE8928:
	.loc 4 1561 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1421:
	addi 1,1,24
	.cfi_remember_state
.LCFI202:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1422:
.L790:
.LCFI203:
	.cfi_restore_state
.LBB8929:
.LBB8902:
.LBB8899:
	.loc 7 636 0
	addi 9,9,132
.LVL1423:
	slwi 9,9,2
.LVL1424:
	add 9,30,9
	lwz 29,4(9)
.LBE8899:
.LBE8902:
	.loc 4 1544 0
	cmpwi 7,29,0
	beq- 7,.L784
	.loc 4 1549 0
	addi 4,3,5124
	bl _ZN4idAI10TurnTowardERK6idVec3
.LVL1425:
.LBB8903:
.LBB8904:
	.loc 7 608 0
	lwz 9,4(29)
.LBE8904:
.LBE8903:
	.loc 4 1551 0
	addi 3,31,4216
	li 4,0
.LBB8907:
.LBB8905:
	.loc 7 608 0
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
.LBE8905:
.LBE8907:
	.loc 4 1554 0
	addis 30,30,0x25
.LBB8908:
.LBB8906:
	.loc 7 608 0
	lwz 0,4(11)
	slwi 0,0,12
	or 9,0,9
	stw 9,3988(31)
.LBE8906:
.LBE8908:
	.loc 4 1551 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1426:
.LBB8909:
.LBB8910:
	.loc 18 237 0
	lwz 9,5208(31)
.LBE8910:
.LBE8909:
.LBB8913:
.LBB8914:
	.loc 6 424 0
	lwz 0,0(3)
.LBE8914:
.LBE8913:
.LBB8918:
.LBB8911:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE8911:
.LBE8918:
.LBB8919:
.LBB8915:
	.loc 6 424 0
	stw 0,3964(31)
.LBE8915:
.LBE8919:
	.loc 4 1552 0
	li 0,1
.LBB8920:
.LBB8916:
	.loc 6 425 0
	lwz 11,4(3)
	stw 11,3968(31)
	.loc 6 426 0
	lwz 11,8(3)
.LBE8916:
.LBE8920:
	.loc 4 1552 0
	stw 0,3956(31)
.LBB8921:
.LBB8917:
	.loc 6 426 0
	stw 11,3972(31)
.LBE8917:
.LBE8921:
	.loc 4 1553 0
	li 11,2
	stw 11,3960(31)
	.loc 4 1554 0
	lwz 11,2004(30)
	stw 11,4008(31)
	.loc 4 1555 0
	li 11,0
	stw 11,4016(31)
.LVL1427:
.LBB8922:
.LBB8912:
	.loc 18 237 0
	beq- 7,.L787
	.loc 18 238 0
	stw 0,0(9)
.L787:
.LVL1428:
.LBE8912:
.LBE8922:
.LBB8923:
.LBB8924:
	.loc 18 237 0
	lwz 9,5220(31)
	cmpwi 7,9,0
	beq- 7,.L788
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L788:
.LVL1429:
.LBE8924:
.LBE8923:
.LBB8925:
.LBB8926:
	.loc 18 237 0
	lwz 9,5240(31)
	.loc 4 1560 0
	li 3,1
.LVL1430:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L786
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.LBE8926:
.LBE8925:
.LBE8929:
	.loc 4 1561 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL1431:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1432:
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI204:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2880:
	.size	_ZN4idAI9FaceEnemyEv, .-_ZN4idAI9FaceEnemyEv
	.align 2
	.globl _ZN4idAI12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.type	_ZN4idAI12ApplyImpulseEP8idEntityiRK6idVec3S4_, @function
_ZN4idAI12ApplyImpulseEP8idEntityiRK6idVec3S4_:
.LFB2915:
	.loc 4 2520 0
	.cfi_startproc
.LVL1433:
	mflr 0
	stwu 1,-8(1)
.LCFI205:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 4 2524 0
	lwz 0,3952(3)
	.cfi_offset 65, 4
	cmpwi 7,0,4
	beq- 7,.L791
	.loc 4 2524 0 is_stmt 0 discriminator 1
	cmpwi 7,0,2
	beq- 7,.L791
	.loc 4 2525 0 is_stmt 1
	bl _ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
.LVL1434:
.L791:
	.loc 4 2527 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI206:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2915:
	.size	_ZN4idAI12ApplyImpulseEP8idEntityiRK6idVec3S4_, .-_ZN4idAI12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.align 2
	.globl _ZN4idAI12GetMoveDeltaERK6idMat3S2_R6idVec3
	.type	_ZN4idAI12GetMoveDeltaERK6idMat3S2_R6idVec3, @function
_ZN4idAI12GetMoveDeltaERK6idMat3S2_R6idVec3:
.LFB2916:
	.loc 4 2534 0
	.cfi_startproc
.LVL1435:
.LBB8964:
	.loc 4 2538 0
	lis 9,gameLocal+2426836@ha
.LBE8964:
	.loc 4 2534 0
	stwu 1,-48(1)
.LCFI207:
	.cfi_def_cfa_offset 48
.LBB9017:
	.loc 4 2538 0
	lwz 9,gameLocal+2426836@l(9)
.LBE9017:
	.loc 4 2534 0
	mflr 0
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -40
	.cfi_register 65, 0
	stw 29,12(1)
.LBB9018:
	.loc 4 2538 0
	addi 3,3,636
.LVL1436:
.LBE9018:
	.loc 4 2534 0
	stw 30,16(1)
	mr 29,4
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	mr 30,6
	stw 31,20(1)
.LBB9019:
	.loc 4 2538 0
	addi 4,9,-16
.LVL1437:
.LBE9019:
	.loc 4 2534 0
	mr 31,5
	.cfi_offset 31, -28
.LBB9020:
	.loc 4 2538 0
	mr 5,9
.LVL1438:
.LBE9020:
	.loc 4 2534 0
	stw 0,52(1)
	stfd 29,24(1)
	stfd 30,32(1)
	stfd 31,40(1)
.LBB9021:
	.loc 4 2538 0
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	bl _ZNK10idAnimator8GetDeltaEiiR6idVec3
.LVL1439:
.LBB8965:
.LBB8966:
	.loc 13 454 0
	lfs 13,20(31)
.LBE8966:
.LBE8965:
.LBB8968:
.LBB8969:
.LBB8970:
	.loc 6 497 0
	lis 9,vec3_origin@ha
.LBE8970:
.LBE8969:
.LBE8968:
.LBB8975:
.LBB8967:
	.loc 13 454 0
	lfs 0,4(30)
	lfs 11,12(31)
	lfs 9,16(31)
	fmuls 11,0,11
	lfs 8,0(31)
	fmuls 9,0,9
	lfs 12,4(31)
	fmuls 0,0,13
	lfs 10,8(31)
	lfs 13,0(30)
	fmadds 11,8,13,11
	lfs 8,24(31)
	fmadds 9,13,12,9
	lfs 12,28(31)
	fmadds 13,13,10,0
	lfs 0,8(30)
	lfs 10,32(31)
	fmadds 11,8,0,11
	fmadds 10,0,10,13
.LVL1440:
	fmadds 9,0,12,9
.LVL1441:
.LBE8967:
.LBE8975:
.LBB8976:
.LBB8977:
	.loc 6 424 0
	stfs 11,0(30)
	.loc 6 426 0
	stfs 10,8(30)
.LVL1442:
	.loc 6 425 0
	stfs 9,4(30)
.LBE8977:
.LBE8976:
.LBB8978:
.LBB8973:
.LBB8971:
	.loc 6 497 0
	lfs 13,vec3_origin@l(9)
	la 9,vec3_origin@l(9)
	lfs 0,2352(28)
	fcmpu 7,0,13
	lfs 13,2356(28)
	bne- 7,.L794
	lfs 12,4(9)
	fcmpu 7,13,12
	lfs 12,2360(28)
	beq- 7,.L795
.L796:
.LVL1443:
.LBE8971:
.LBE8973:
.LBE8978:
.LBB8979:
.LBB8980:
.LBB8981:
	.loc 13 454 0
	lfs 3,12(31)
.LBE8981:
.LBE8980:
.LBE8979:
.LBB8990:
.LBB8991:
.LBB8992:
	lfs 4,16(29)
.LBE8992:
.LBE8991:
.LBE8990:
.LBB8999:
.LBB8986:
.LBB8982:
	lfs 31,16(31)
.LBE8982:
.LBE8986:
.LBE8999:
.LBB9000:
.LBB8996:
.LBB8993:
	lfs 5,20(29)
	fmuls 4,13,4
.LBE8993:
.LBE8996:
.LBE9000:
.LBB9001:
.LBB8987:
.LBB8983:
	lfs 2,20(31)
	fmuls 31,13,31
.LBE8983:
.LBE8987:
.LBE9001:
.LBB9002:
.LBB8997:
.LBB8994:
	lfs 6,12(29)
	fmuls 5,13,5
.LBE8994:
.LBE8997:
.LBE9002:
.LBB9003:
.LBB8988:
.LBB8984:
	fmuls 2,13,2
.LBE8984:
.LBE8988:
.LBE9003:
.LBB9004:
.LBB9005:
	lfs 7,4(31)
.LBE9005:
.LBE9004:
.LBB9008:
.LBB8998:
.LBB8995:
	fmuls 6,13,6
.LBE8995:
.LBE8998:
.LBE9008:
.LBB9009:
.LBB9006:
	lfs 30,8(29)
.LBE9006:
.LBE9009:
.LBB9010:
.LBB8989:
.LBB8985:
	fmuls 13,13,3
.LBE8985:
.LBE8989:
.LBE9010:
.LBB9011:
.LBB9007:
	lfs 8,8(31)
	lfs 1,0(29)
	fmadds 31,0,7,31
	lfs 3,0(31)
	fmadds 5,0,30,5
	lfs 29,4(29)
	fmadds 2,0,8,2
	fmadds 6,0,1,6
	lfs 30,28(29)
	fmadds 4,0,29,4
	lfs 7,28(31)
	fmadds 0,0,3,13
	lfs 1,32(29)
	lfs 8,32(31)
	fmadds 7,7,12,31
	lfs 3,24(29)
	fmadds 4,30,12,4
	lfs 13,24(31)
	fmadds 5,1,12,5
	fmadds 8,8,12,2
	fmadds 6,3,12,6
	fmadds 12,13,12,0
.LVL1444:
	.loc 6 431 0
	fsubs 7,4,7
.LVL1445:
	fsubs 8,5,8
.LVL1446:
	fsubs 12,6,12
.LVL1447:
.LBE9007:
.LBE9011:
.LBB9012:
.LBB9013:
	.loc 6 457 0
	fadds 9,7,9
	.loc 6 458 0
	fadds 10,8,10
.LVL1448:
	.loc 6 456 0
	fadds 11,12,11
	.loc 6 457 0
	stfs 9,4(30)
	.loc 6 458 0
	stfs 10,8(30)
	.loc 6 456 0
	stfs 11,0(30)
.LVL1449:
.L797:
.LBE9013:
.LBE9012:
	.loc 4 2550 0
	addi 3,28,4216
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL1450:
.LBB9014:
.LBB9015:
	.loc 13 553 0
	lfs 0,4(30)
	.loc 13 555 0
	lfs 13,20(3)
	.loc 13 553 0
	lfs 11,12(3)
	.loc 13 554 0
	lfs 12,16(3)
	.loc 13 553 0
	fmuls 11,0,11
	lfs 8,0(3)
	.loc 13 554 0
	fmuls 12,0,12
	lfs 9,4(3)
	.loc 13 555 0
	fmuls 0,0,13
	lfs 10,8(3)
	.loc 13 553 0
	lfs 13,0(30)
.LVL1451:
	fmadds 11,8,13,11
	lfs 8,24(3)
	.loc 13 554 0
	fmadds 12,13,9,12
	lfs 9,28(3)
	.loc 13 555 0
	fmadds 13,13,10,0
	.loc 13 553 0
	lfs 0,8(30)
	.loc 13 555 0
	lfs 10,32(3)
	.loc 13 553 0
	fmadds 11,8,0,11
.LVL1452:
	.loc 13 554 0
	fmadds 12,0,9,12
.LVL1453:
	.loc 13 555 0
	fmadds 0,0,10,13
	.loc 13 556 0
	stfs 11,0(30)
	.loc 13 557 0
	stfs 12,4(30)
	.loc 13 555 0
	stfs 0,8(30)
.LBE9015:
.LBE9014:
.LBE9021:
	.loc 4 2551 0
	lwz 0,52(1)
	lwz 28,8(1)
.LVL1454:
	mtlr 0
	lwz 29,12(1)
.LVL1455:
	lwz 30,16(1)
.LVL1456:
	lwz 31,20(1)
.LVL1457:
	lfd 29,24(1)
	lfd 30,32(1)
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI208:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1458:
.L794:
.LCFI209:
	.cfi_restore_state
	lfs 12,2360(28)
	b .L796
.L795:
.LBB9022:
.LBB9016:
.LBB8974:
.LBB8972:
	.loc 6 497 0
	lfs 8,8(9)
	fcmpu 7,12,8
	bne- 7,.L796
	b .L797
.LBE8972:
.LBE8974:
.LBE9016:
.LBE9022:
	.cfi_endproc
.LFE2916:
	.size	_ZN4idAI12GetMoveDeltaERK6idMat3S2_R6idVec3, .-_ZN4idAI12GetMoveDeltaERK6idMat3S2_R6idVec3
	.align 2
	.globl _ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_
	.type	_ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_, @function
_ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_:
.LFB2917:
	.loc 4 2558 0
	.cfi_startproc
.LVL1459:
	mflr 0
	stwu 1,-208(1)
.LCFI210:
	.cfi_def_cfa_offset 208
	.cfi_register 65, 0
	mfcr 12
	stw 29,140(1)
	mr 29,5
	.cfi_offset 29, -68
	.cfi_register 70, 12
	stw 30,144(1)
	mr 30,4
	.cfi_offset 30, -64
	stw 31,148(1)
	mr 31,3
	.cfi_offset 31, -60
	stw 0,212(1)
	stfd 25,152(1)
	stfd 26,160(1)
	stfd 27,168(1)
	stfd 28,176(1)
	stfd 29,184(1)
	stfd 30,192(1)
	stfd 31,200(1)
	stw 24,120(1)
	stw 25,124(1)
	stw 26,128(1)
	stw 27,132(1)
	stw 28,136(1)
	stw 12,116(1)
.LBB9183:
	.loc 4 2565 0
	lbz 26,4172(3)
	.cfi_offset 70, -92
	.cfi_offset 28, -72
	.cfi_offset 27, -76
	.cfi_offset 26, -80
	.cfi_offset 25, -84
	.cfi_offset 24, -88
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 65, 4
	cmpwi 7,26,0
	beq- 7,.L799
.LVL1460:
.LBB9184:
.LBB9185:
	.loc 6 424 0
	lwz 0,0(4)
	stw 0,0(5)
	.loc 6 425 0
	lwz 0,4(4)
	stw 0,4(5)
	.loc 6 426 0
	lwz 0,8(4)
	stw 0,8(5)
.LVL1461:
.LBE9185:
.LBE9184:
.LBB9186:
.LBB9187:
	.loc 7 606 0
	li 0,0
	stw 0,4036(3)
.LVL1462:
.L798:
.LBE9187:
.LBE9186:
.LBE9183:
	.loc 4 2642 0
	lwz 0,212(1)
	lwz 12,116(1)
	mtlr 0
	lwz 24,120(1)
	lwz 25,124(1)
	mtcrf 8,12
	lwz 26,128(1)
	lwz 27,132(1)
	lwz 28,136(1)
	lwz 29,140(1)
.LVL1463:
	lwz 30,144(1)
	lwz 31,148(1)
.LVL1464:
	lfd 25,152(1)
	lfd 26,160(1)
	lfd 27,168(1)
	lfd 28,176(1)
	lfd 29,184(1)
	lfd 30,192(1)
	lfd 31,200(1)
	addi 1,1,208
	.cfi_remember_state
.LCFI211:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL1465:
.L799:
.LCFI212:
	.cfi_restore_state
.LBB9188:
.LBB9189:
	.loc 4 2571 0
	addi 28,3,4216
	li 4,0
.LVL1466:
	mr 3,28
.LVL1467:
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1468:
.LBB9190:
.LBB9191:
	.loc 18 237 0
	lwz 9,5236(31)
.LBE9191:
.LBE9190:
	.loc 4 2571 0
	mr 27,3
.LVL1469:
.LBB9193:
.LBB9192:
	.loc 18 237 0
	cmpwi 7,9,0
	beq- 7,.L801
	.loc 18 238 0
	stw 26,0(9)
.L801:
.LBE9192:
.LBE9193:
.LBB9194:
.LBB9195:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 26,gameLocal@ha
	la 26,gameLocal@l(26)
.LBE9195:
.LBE9194:
	.loc 4 2575 0
	lwz 4,3944(31)
.LVL1470:
.LBB9198:
.LBB9196:
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL1471:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	.loc 7 638 0
	li 5,0
	.loc 7 635 0
	slwi 11,11,2
	add 11,26,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L869
.LVL1472:
.L802:
.LBE9196:
.LBE9198:
	.loc 4 2575 0
	mr 3,28
.LVL1473:
	mr 6,27
	mr 7,30
	addi 8,1,44
	bl _ZN4idAI23FindPathAroundObstaclesEPK9idPhysicsPK5idAASPK8idEntityRK6idVec3SB_R14obstaclePath_s
.LVL1474:
.LBE9189:
	.loc 4 2576 0
	lis 9,ai_showObstacleAvoidance+44@ha
.LBB9397:
.LBB9199:
.LBB9200:
	.loc 20 142 0
	lwz 9,ai_showObstacleAvoidance+44@l(9)
	cmpwi 4,3,0
.LBE9200:
.LBE9199:
	.loc 4 2576 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L870
	.loc 4 2581 0
	beq- 4,.L871
.LVL1475:
.L805:
	.loc 4 2608 0
	lwz 0,88(1)
	cmpwi 7,0,0
	beq- 7,.L837
.LVL1476:
.LBB9201:
.LBB9202:
	.loc 18 237 0
	lwz 9,5236(31)
	cmpwi 7,9,0
	beq- 7,.L835
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L835:
.LVL1477:
.LBE9202:
.LBE9201:
.LBB9203:
.LBB9204:
	.loc 6 431 0
	lfs 12,4(27)
	lfs 8,4(30)
	lfs 0,0(27)
	fsubs 8,8,12
	lfs 9,0(30)
	lfs 3,8(27)
	fsubs 9,9,0
	lfs 10,8(30)
.LBE9204:
.LBE9203:
.LBB9206:
.LBB9207:
	.loc 6 649 0
	fmuls 13,8,8
.LBE9207:
.LBE9206:
	.loc 4 2618 0
	lwz 30,88(1)
.LVL1478:
.LBB9223:
.LBB9205:
	.loc 6 431 0
	fsubs 10,10,3
.LVL1479:
	.loc 6 649 0
	fmadds 13,9,9,13
	fmadds 13,10,10,13
	stfs 13,104(1)
.LVL1480:
.LBE9205:
.LBE9223:
.LBB9224:
.LBB9218:
.LBB9208:
.LBB9209:
	.loc 8 270 0
	lwz 0,104(1)
.LVL1481:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 8 275 0
	lis 11,.LC15@ha
	lfs 4,.LC15@l(11)
	.loc 8 276 0
	or 0,0,9
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 277 0
	stw 0,108(1)
	.loc 8 275 0
	fmuls 4,13,4
.LVL1482:
	.loc 8 278 0
	lfs 5,.LC63@l(9)
.LBE9209:
.LBE9208:
.LBE9218:
.LBE9224:
	.loc 4 2617 0
	lis 9,.LC0@ha
.LBB9225:
.LBB9219:
.LBB9214:
.LBB9210:
	.loc 8 277 0
	lfs 13,108(1)
.LVL1483:
	.loc 4 2558 0
	fneg 4,4
.LVL1484:
	.loc 8 277 0
	fmr 6,13
.LVL1485:
.LBE9210:
.LBE9214:
.LBE9219:
.LBE9225:
.LBB9226:
.LBB9227:
	.loc 6 431 0
	lfs 13,48(1)
.LVL1486:
	fsubs 1,13,12
	lfs 12,44(1)
.LBE9227:
.LBE9226:
.LBB9230:
.LBB9220:
.LBB9215:
.LBB9211:
	.loc 8 278 0
	fmul 7,6,6
.LBE9211:
.LBE9215:
.LBE9220:
.LBE9230:
.LBB9231:
.LBB9228:
	.loc 6 431 0
	fsubs 2,12,0
	lfs 0,52(1)
.LBE9228:
.LBE9231:
.LBB9232:
.LBB9221:
.LBB9216:
.LBB9212:
	.loc 8 278 0
	fmadd 7,4,7,5
.LBE9212:
.LBE9216:
.LBE9221:
.LBE9232:
.LBB9233:
.LBB9229:
	.loc 6 431 0
	fsubs 3,0,3
.LBE9229:
.LBE9233:
.LBB9234:
.LBB9222:
.LBB9217:
.LBB9213:
	.loc 8 278 0
	fmul 7,6,7
.LVL1487:
	.loc 8 279 0
	fmul 11,7,7
	fmadd 11,4,11,5
.LVL1488:
	fmul 11,7,11
.LVL1489:
	.loc 8 280 0
	frsp 11,11
.LVL1490:
.LBE9213:
.LBE9217:
	.loc 6 652 0
	fmuls 8,8,11
	.loc 6 651 0
	fmuls 9,9,11
	.loc 6 653 0
	fmuls 10,10,11
.LVL1491:
.LBE9222:
.LBE9234:
.LBB9235:
.LBB9236:
	.loc 6 435 0
	fmuls 8,1,8
.LBE9236:
.LBE9235:
	fmadds 9,2,9,8
	.loc 4 2617 0
	lfs 8,.LC0@l(9)
	.loc 6 435 0
	fmadds 11,3,10,9
	.loc 4 2617 0
	fcmpu 7,11,8
	bnl- 7,.L842
.LVL1492:
.L841:
	.loc 4 2623 0
	cmpwi 7,30,0
	beq- 7,.L837
.LVL1493:
.LBB9237:
.LBB9238:
	.loc 16 340 0
	lwz 9,0(30)
	mr 3,30
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1494:
.LBE9238:
	.loc 4 5138 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB9241:
.LBB9239:
.LBB9240:
	.loc 16 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L838
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L838
.LVL1495:
.LBE9240:
.LBE9239:
.LBE9241:
.LBE9237:
.LBB9242:
.LBB9243:
	.loc 7 634 0
	lwz 0,5120(31)
	rlwinm 9,0,0,20,31
.LVL1496:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,26,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L872
.LVL1497:
.L839:
.LBE9243:
.LBE9242:
	.loc 4 2629 0
	li 0,8
	stw 0,3960(31)
.LVL1498:
.L840:
	.loc 4 2635 0
	mr 3,30
.LVL1499:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL1500:
.LBB9245:
.LBB9246:
	.loc 6 424 0
	lwz 0,0(3)
	stw 0,0(29)
	.loc 6 425 0
	lwz 0,4(3)
	stw 0,4(29)
	.loc 6 426 0
	lwz 0,8(3)
	stw 0,8(29)
.LVL1501:
.LBE9246:
.LBE9245:
.LBB9247:
.LBB9248:
	.loc 7 608 0
	lwz 9,4(30)
	addi 0,9,4228
	slwi 0,0,2
	add 26,26,0
	lwz 0,4(26)
	slwi 0,0,12
	or 9,0,9
	stw 9,4036(31)
	b .L798
.LVL1502:
.L871:
.LBE9248:
.LBE9247:
	.loc 4 2583 0
	lwz 0,56(1)
	cmpwi 7,0,0
	beq- 7,.L806
.LVL1503:
.LBB9250:
.LBB9251:
	.loc 18 237 0
	lwz 9,5236(31)
	cmpwi 7,9,0
	beq- 7,.L807
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L807:
.LBE9251:
.LBE9250:
	.loc 4 2585 0
	li 4,-1
	mr 3,28
	bl _ZNK15idPhysics_Actor12GetAbsBoundsEi
.LBB9252:
.LBB9253:
	.loc 5 319 0
	lis 11,.LC78@ha
.LBE9253:
.LBE9252:
	.loc 4 2585 0
	mr 9,3
.LVL1504:
.LBB9271:
.LBB9264:
	.loc 5 319 0
	lfs 30,0(3)
.LBE9264:
.LBE9271:
	.loc 4 2585 0
	lwz 3,56(1)
.LVL1505:
.LBB9272:
.LBB9265:
	.loc 5 319 0
	lfs 31,.LC78@l(11)
.LBB9254:
.LBB9255:
	.loc 6 402 0
	lfs 29,4(9)
.LBE9255:
.LBE9254:
.LBB9256:
.LBB9257:
	lfs 28,8(9)
.LBE9257:
.LBE9256:
	.loc 5 319 0
	fsubs 30,30,31
.LVL1506:
.LBB9258:
.LBB9259:
	.loc 6 402 0
	lfs 27,12(9)
.LVL1507:
.LBE9259:
.LBE9258:
.LBB9260:
.LBB9261:
	lfs 26,16(9)
.LVL1508:
.LBE9261:
.LBE9260:
.LBB9262:
.LBB9263:
	lfs 25,20(9)
.LVL1509:
.LBE9263:
.LBE9262:
.LBE9265:
.LBE9272:
	.loc 4 2585 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1510:
	lwz 9,0(3)
	li 4,-1
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1511:
.LBB9273:
.LBB9274:
	.loc 5 362 0
	lfs 0,12(3)
	fcmpu 7,30,0
	bgt- 7,.L837
.LVL1512:
.LBE9274:
.LBE9273:
.LBB9281:
.LBB9266:
	.loc 5 319 0
	fsubs 29,29,31
.LVL1513:
.LBE9266:
.LBE9281:
.LBB9282:
.LBB9275:
	.loc 5 362 0
	lfs 0,16(3)
	fcmpu 7,29,0
	bgt- 7,.L837
.LVL1514:
.LBE9275:
.LBE9282:
.LBB9283:
.LBB9267:
	.loc 5 319 0
	fsubs 28,28,31
.LVL1515:
.LBE9267:
.LBE9283:
.LBB9284:
.LBB9276:
	.loc 5 362 0
	lfs 0,20(3)
	fcmpu 7,28,0
	bgt- 7,.L837
.LVL1516:
.LBE9276:
.LBE9284:
.LBB9285:
.LBB9268:
	.loc 5 319 0
	fadds 27,27,31
.LVL1517:
.LBE9268:
.LBE9285:
.LBB9286:
.LBB9277:
	.loc 5 362 0
	lfs 0,0(3)
	fcmpu 7,27,0
	blt- 7,.L837
.LVL1518:
.LBE9277:
.LBE9286:
.LBB9287:
.LBB9269:
	.loc 5 319 0
	fadds 26,26,31
.LVL1519:
.LBE9269:
.LBE9287:
.LBB9288:
.LBB9278:
	.loc 5 362 0
	lfs 0,4(3)
	fcmpu 7,26,0
	blt- 7,.L837
.LVL1520:
.LBE9278:
.LBE9288:
.LBB9289:
.LBB9270:
	.loc 5 319 0
	fadds 31,25,31
.LBE9270:
.LBE9289:
.LBB9290:
.LBB9279:
	.loc 5 362 0
	lfs 0,8(3)
.LBE9279:
.LBE9290:
	.loc 4 2586 0
	lwz 30,56(1)
.LVL1521:
.LBB9291:
.LBB9280:
	.loc 5 362 0
	fcmpu 7,31,0
	bnl- 7,.L841
.LVL1522:
.L837:
.LBE9280:
.LBE9291:
.LBB9292:
.LBB9249:
	.loc 7 608 0
	lfs 12,44(1)
	lfs 13,48(1)
	lfs 0,52(1)
.L842:
.LVL1523:
.LBE9249:
.LBE9292:
.LBB9293:
.LBB9294:
	.loc 7 606 0
	li 0,0
.LBE9294:
.LBE9293:
.LBB9296:
.LBB9297:
	.loc 6 424 0
	stfs 12,0(29)
	.loc 6 425 0
	stfs 13,4(29)
	.loc 6 426 0
	stfs 0,8(29)
.LVL1524:
.LBE9297:
.LBE9296:
.LBB9298:
.LBB9295:
	.loc 7 606 0
	stw 0,4036(31)
	b .L798
.LVL1525:
.L870:
.LBE9295:
.LBE9298:
.LBB9299:
.LBB9300:
	.loc 6 452 0
	lis 9,.LC0@ha
	lfs 11,4(30)
	lfs 0,.LC0@l(9)
.LBE9300:
.LBE9299:
	.loc 4 2577 0
	lis 24,gameRenderWorld@ha
.LBB9313:
.LBB9307:
	.loc 6 452 0
	lfs 13,0(30)
	lis 9,.LC6@ha
.LBE9307:
.LBE9313:
	.loc 4 2577 0
	lwz 3,gameRenderWorld@l(24)
.LVL1526:
.LBB9314:
.LBB9315:
	.loc 6 452 0
	lis 25,.LC20@ha
.LBE9315:
.LBE9314:
.LBB9327:
.LBB9308:
	fadds 13,13,0
	lfs 12,8(30)
	fadds 0,11,0
.LBE9308:
.LBE9327:
.LBB9328:
.LBB9322:
	lfs 10,.LC20@l(25)
.LBE9322:
.LBE9328:
.LBB9329:
.LBB9309:
	lfs 11,.LC6@l(9)
.LBE9309:
.LBE9329:
	.loc 4 2577 0
	lis 4,colorBlue@ha
	lwz 9,0(3)
	la 4,colorBlue@l(4)
.LBB9330:
.LBB9310:
	.loc 6 452 0
	fadds 11,12,11
.LBB9301:
.LBB9302:
	.loc 6 396 0
	stfs 13,32(1)
.LBE9302:
.LBE9301:
.LBE9310:
.LBE9330:
.LBB9331:
.LBB9323:
	.loc 6 452 0
	fadds 12,12,10
.LBE9323:
.LBE9331:
	.loc 4 2577 0
	lwz 0,156(9)
.LVL1527:
.LBB9332:
.LBB9311:
.LBB9305:
.LBB9303:
	.loc 6 397 0
	stfs 0,36(1)
.LBE9303:
.LBE9305:
.LBE9311:
.LBE9332:
	.loc 4 2577 0
	addi 5,1,32
	mtctr 0
.LBB9333:
.LBB9312:
.LBB9306:
.LBB9304:
	.loc 6 398 0
	stfs 11,40(1)
.LVL1528:
.LBE9304:
.LBE9306:
.LBE9312:
.LBE9333:
.LBB9334:
.LBB9324:
.LBB9316:
.LBB9317:
	.loc 6 396 0
	stfs 13,20(1)
.LBE9317:
.LBE9316:
.LBE9324:
.LBE9334:
	.loc 4 2577 0
	addi 6,1,20
.LBB9335:
.LBB9325:
.LBB9320:
.LBB9318:
	.loc 6 397 0
	stfs 0,24(1)
.LBE9318:
.LBE9320:
.LBE9325:
.LBE9335:
	.loc 4 2577 0
	li 7,16
.LBB9336:
.LBB9326:
.LBB9321:
.LBB9319:
	.loc 6 398 0
	stfs 12,28(1)
.LBE9319:
.LBE9321:
.LBE9326:
.LBE9336:
	.loc 4 2577 0
	li 8,0
	bctrl
.LVL1529:
	.loc 4 2578 0
	lwz 3,gameRenderWorld@l(24)
	lwz 9,0(3)
	lwz 0,156(9)
	beq- 4,.L844
	lis 4,colorYellow@ha
	la 4,colorYellow@l(4)
.L804:
.LVL1530:
.LBB9337:
.LBB9338:
	.loc 6 452 0
	lfs 11,52(1)
	lis 9,.LC6@ha
	lfs 13,.LC20@l(25)
.LBE9338:
.LBE9337:
	.loc 4 2578 0
	addi 5,1,44
.LVL1531:
.LBB9348:
.LBB9343:
	.loc 6 452 0
	lfs 0,.LC6@l(9)
.LBE9343:
.LBE9348:
	.loc 4 2578 0
	addi 6,1,8
.LBB9349:
.LBB9344:
	.loc 6 452 0
	fadds 13,11,13
.LVL1532:
	lfs 12,48(1)
	lfs 11,44(1)
.LBE9344:
.LBE9349:
	.loc 4 2578 0
	li 7,16
.LBB9350:
.LBB9345:
	.loc 6 452 0
	fadds 12,12,0
.LVL1533:
.LBE9345:
.LBE9350:
	.loc 4 2578 0
	li 8,0
.LBB9351:
.LBB9346:
	.loc 6 452 0
	fadds 0,11,0
.LBB9339:
.LBB9340:
	.loc 6 398 0
	stfs 13,16(1)
.LBE9340:
.LBE9339:
.LBE9346:
.LBE9351:
	.loc 4 2578 0
	mtctr 0
.LBB9352:
.LBB9347:
.LBB9342:
.LBB9341:
	.loc 6 397 0
	stfs 12,12(1)
	.loc 6 396 0
	stfs 0,8(1)
.LBE9341:
.LBE9342:
.LBE9347:
.LBE9352:
	.loc 4 2578 0
	bctrl
.LVL1534:
	.loc 4 2581 0
	bne- 4,.L805
	b .L871
.LVL1535:
.L838:
	.loc 4 2633 0
	li 0,6
	stw 0,3960(31)
	b .L840
.LVL1536:
.L869:
.LBB9353:
.LBB9197:
	.loc 7 636 0
	addi 9,9,132
.LVL1537:
	slwi 9,9,2
.LVL1538:
	add 9,26,9
	lwz 5,4(9)
	b .L802
.LVL1539:
.L844:
.LBE9197:
.LBE9353:
	.loc 4 2578 0
	lis 4,colorRed@ha
	la 4,colorRed@l(4)
	b .L804
.LVL1540:
.L872:
.LBB9354:
.LBB9244:
	.loc 7 636 0
	addi 9,9,132
.LVL1541:
	slwi 9,9,2
.LVL1542:
	add 9,26,9
.LBE9244:
.LBE9354:
	.loc 4 2626 0
	lwz 0,4(9)
	cmpw 7,30,0
	bne+ 7,.L839
	.loc 4 2627 0
	li 0,7
	stw 0,3960(31)
	b .L840
.LVL1543:
.L806:
	.loc 4 2588 0
	lwz 0,72(1)
	cmpwi 7,0,0
	beq- 7,.L820
.LVL1544:
.LBB9355:
.LBB9356:
	.loc 18 237 0
	lwz 9,5236(31)
	cmpwi 7,9,0
	beq- 7,.L821
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L821:
.LBE9356:
.LBE9355:
	.loc 4 2590 0
	li 4,-1
	mr 3,28
	bl _ZNK15idPhysics_Actor12GetAbsBoundsEi
.LBB9357:
.LBB9358:
	.loc 5 319 0
	lis 11,.LC78@ha
.LBE9358:
.LBE9357:
	.loc 4 2590 0
	mr 9,3
.LVL1545:
.LBB9376:
.LBB9369:
	.loc 5 319 0
	lfs 30,0(3)
.LBE9369:
.LBE9376:
	.loc 4 2590 0
	lwz 3,72(1)
.LVL1546:
.LBB9377:
.LBB9370:
	.loc 5 319 0
	lfs 31,.LC78@l(11)
.LBB9359:
.LBB9360:
	.loc 6 402 0
	lfs 29,4(9)
.LBE9360:
.LBE9359:
.LBB9361:
.LBB9362:
	lfs 28,8(9)
.LBE9362:
.LBE9361:
	.loc 5 319 0
	fsubs 30,30,31
.LVL1547:
.LBB9363:
.LBB9364:
	.loc 6 402 0
	lfs 27,12(9)
.LVL1548:
.LBE9364:
.LBE9363:
.LBB9365:
.LBB9366:
	lfs 25,16(9)
.LVL1549:
.LBE9366:
.LBE9365:
.LBB9367:
.LBB9368:
	lfs 26,20(9)
.LVL1550:
.LBE9368:
.LBE9367:
.LBE9370:
.LBE9377:
	.loc 4 2590 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1551:
	lwz 9,0(3)
	li 4,-1
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1552:
.LBB9378:
.LBB9379:
	.loc 5 362 0
	lfs 0,12(3)
	fcmpu 7,30,0
	bgt- 7,.L837
.LVL1553:
.LBE9379:
.LBE9378:
.LBB9386:
.LBB9371:
	.loc 5 319 0
	fsubs 29,29,31
.LVL1554:
.LBE9371:
.LBE9386:
.LBB9387:
.LBB9380:
	.loc 5 362 0
	lfs 0,16(3)
	fcmpu 7,29,0
	bgt- 7,.L837
.LVL1555:
.LBE9380:
.LBE9387:
.LBB9388:
.LBB9372:
	.loc 5 319 0
	fsubs 28,28,31
.LVL1556:
.LBE9372:
.LBE9388:
.LBB9389:
.LBB9381:
	.loc 5 362 0
	lfs 0,20(3)
	fcmpu 7,28,0
	bgt- 7,.L837
.LVL1557:
.LBE9381:
.LBE9389:
.LBB9390:
.LBB9373:
	.loc 5 319 0
	fadds 27,27,31
.LVL1558:
.LBE9373:
.LBE9390:
.LBB9391:
.LBB9382:
	.loc 5 362 0
	lfs 0,0(3)
	fcmpu 7,27,0
	blt- 7,.L837
.LVL1559:
.LBE9382:
.LBE9391:
.LBB9392:
.LBB9374:
	.loc 5 319 0
	fadds 25,25,31
.LVL1560:
.LBE9374:
.LBE9392:
.LBB9393:
.LBB9383:
	.loc 5 362 0
	lfs 0,4(3)
	fcmpu 7,25,0
	blt- 7,.L837
.LVL1561:
.LBE9383:
.LBE9393:
.LBB9394:
.LBB9375:
	.loc 5 319 0
	fadds 31,26,31
.LBE9375:
.LBE9394:
.LBB9395:
.LBB9384:
	.loc 5 362 0
	lfs 0,8(3)
.LBE9384:
.LBE9395:
	.loc 4 2591 0
	lwz 30,72(1)
.LVL1562:
.LBB9396:
.LBB9385:
	.loc 5 362 0
	fcmpu 7,31,0
	bnl- 7,.L841
	b .L837
.LVL1563:
.L820:
.LBE9385:
.LBE9396:
	.loc 4 2595 0
	li 0,5
	lfs 12,44(1)
	stw 0,3960(31)
	lfs 13,48(1)
	lfs 0,52(1)
	b .L842
.LBE9397:
.LBE9188:
	.cfi_endproc
.LFE2917:
	.size	_ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_, .-_ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_
	.align 2
	.globl _ZN4idAI8DeadMoveEv
	.type	_ZN4idAI8DeadMoveEv, @function
_ZN4idAI8DeadMoveEv:
.LFB2921:
	.loc 4 2649 0
	.cfi_startproc
.LVL1564:
	stwu 1,-32(1)
.LCFI213:
	.cfi_def_cfa_offset 32
	mflr 0
.LBB9398:
	.loc 4 2653 0
	li 4,0
.LBE9398:
	.loc 4 2649 0
	stw 30,24(1)
.LBB9401:
	.loc 4 2653 0
	addi 30,3,4216
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE9401:
	.loc 4 2649 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
.LBB9402:
	.loc 4 2653 0
	mr 3,30
.LVL1565:
.LBE9402:
	.loc 4 2649 0
	stw 0,36(1)
.LBB9403:
	.loc 4 2653 0
	.cfi_offset 65, 4
	bl _ZNK15idPhysics_Actor9GetOriginEi
	.loc 4 2655 0
	addi 4,31,2268
	mr 5,4
	addi 6,1,8
	mr 3,31
	bl _ZN4idAI12GetMoveDeltaERK6idMat3S2_R6idVec3
	.loc 4 2656 0
	addi 4,1,8
	mr 3,30
	bl _ZN17idPhysics_Monster8SetDeltaERK6idVec3
	.loc 4 2658 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	.loc 4 2660 0
	mr 3,30
	bl _ZNK17idPhysics_Monster13GetMoveResultEv
	.loc 4 2661 0
	mr 3,30
	bl _ZNK17idPhysics_Monster8OnGroundEv
.LVL1566:
.LBB9399:
.LBB9400:
	.loc 18 237 0
	lwz 9,5212(31)
	cmpwi 7,9,0
	beq- 7,.L873
.LBE9400:
.LBE9399:
	.loc 4 2661 0
	stw 3,0(9)
.L873:
.LBE9403:
	.loc 4 2662 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL1567:
	addi 1,1,32
.LCFI214:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2921:
	.size	_ZN4idAI8DeadMoveEv, .-_ZN4idAI8DeadMoveEv
	.align 2
	.globl _Z4SeekR6idVec3RKS_S2_f
	.type	_Z4SeekR6idVec3RKS_S2_f, @function
_Z4SeekR6idVec3RKS_S2_f:
.LFB2923:
	.loc 4 2770 0
	.cfi_startproc
.LVL1568:
.LBB9404:
.LBB9405:
.LBB9406:
	.loc 6 452 0
	lfs 9,4(4)
.LBE9406:
.LBE9405:
	.loc 4 2778 0
	lis 9,_ZN6idMath8M_MS2SECE@ha
.LBB9412:
.LBB9407:
	.loc 6 452 0
	lfs 10,8(4)
.LBE9407:
.LBE9412:
.LBE9404:
	.loc 4 2781 0
.LBB9421:
.LBB9413:
.LBB9408:
	.loc 6 452 0
	lfs 11,0(4)
	lfs 0,0(5)
	lfs 12,4(5)
	lfs 13,8(5)
.LVL1569:
	fmadds 12,1,9,12
.LBE9408:
.LBE9413:
	.loc 4 2778 0
	lfs 8,_ZN6idMath8M_MS2SECE@l(9)
.LBB9414:
.LBB9409:
	.loc 6 452 0
	fmadds 13,1,10,13
.LBE9409:
.LBE9414:
	.loc 4 2778 0
	lis 9,.LC1@ha
.LBB9415:
.LBB9410:
	.loc 6 452 0
	fmadds 1,1,11,0
.LVL1570:
	.loc 6 431 0
	lfs 9,4(6)
	lfs 10,8(6)
	lfs 11,0(6)
	fsubs 12,9,12
.LBE9410:
.LBE9415:
	.loc 4 2778 0
	lfs 0,.LC1@l(9)
.LBB9416:
.LBB9411:
	.loc 6 431 0
	fsubs 13,10,13
	fsubs 1,11,1
.LVL1571:
.LBE9411:
.LBE9416:
	.loc 4 2778 0
	fmuls 0,8,0
.LVL1572:
.LBB9417:
.LBB9418:
	.loc 6 439 0
	fmuls 12,0,12
	fmuls 13,0,13
.LVL1573:
	fmuls 0,0,1
.LVL1574:
.LBE9418:
.LBE9417:
.LBB9419:
.LBB9420:
	.loc 6 425 0
	stfs 12,4(3)
	.loc 6 426 0
	stfs 13,8(3)
	.loc 6 424 0
	stfs 0,0(3)
.LBE9420:
.LBE9419:
.LBE9421:
	.loc 4 2781 0
	blr
	.cfi_endproc
.LFE2923:
	.size	_Z4SeekR6idVec3RKS_S2_f, .-_Z4SeekR6idVec3RKS_S2_f
	.align 2
	.globl _ZN4idAI18AdjustFlyingAnglesEv
	.type	_ZN4idAI18AdjustFlyingAnglesEv, @function
_ZN4idAI18AdjustFlyingAnglesEv:
.LFB2925:
	.loc 4 2899 0
	.cfi_startproc
.LVL1575:
	stwu 1,-120(1)
.LCFI215:
	.cfi_def_cfa_offset 120
	mflr 0
.LBB9444:
	.loc 4 2905 0
	li 4,0
.LBE9444:
	.loc 4 2899 0
	stw 31,116(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB9495:
	.loc 4 2905 0
	addi 3,3,4216
.LVL1576:
.LBE9495:
	.loc 4 2899 0
	stw 0,124(1)
	stw 30,112(1)
.LBB9496:
	.loc 4 2905 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZNK17idPhysics_Monster17GetLinearVelocityEi
.LVL1577:
.LBB9445:
.LBB9446:
	.loc 6 425 0
	lfs 10,4(3)
	.loc 6 424 0
	lfs 11,0(3)
.LBE9446:
.LBE9445:
.LBB9448:
.LBB9449:
	.loc 6 632 0
	fmuls 0,10,10
.LBE9449:
.LBE9448:
.LBB9462:
.LBB9447:
	.loc 6 426 0
	lfs 12,8(3)
.LVL1578:
	.loc 6 632 0
	fmadds 0,11,11,0
	fmadds 0,12,12,0
	stfs 0,104(1)
.LVL1579:
.LBE9447:
.LBE9462:
.LBB9463:
.LBB9460:
.LBB9450:
.LBB9451:
.LBB9452:
.LBB9453:
	.loc 8 270 0
	lwz 0,104(1)
.LVL1580:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 8 275 0
	lis 11,.LC15@ha
	lfs 8,.LC15@l(11)
	.loc 8 276 0
	or 0,0,9
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 277 0
	stw 0,108(1)
	.loc 8 275 0
	fmuls 8,0,8
.LVL1581:
	.loc 8 278 0
	lfs 9,.LC63@l(9)
.LBE9453:
.LBE9452:
.LBE9451:
.LBE9450:
.LBE9460:
.LBE9463:
	.loc 4 2908 0
	lis 9,.LC99@ha
.LBB9464:
.LBB9461:
.LBB9459:
.LBB9458:
.LBB9456:
.LBB9454:
	.loc 8 277 0
	lfs 0,108(1)
.LVL1582:
	.loc 4 2899 0
	fneg 8,8
.LVL1583:
	.loc 8 277 0
	fmr 13,0
.LVL1584:
	.loc 8 278 0
	fmul 0,13,13
.LVL1585:
	fmadd 0,8,0,9
	fmul 0,13,0
.LVL1586:
	.loc 8 279 0
	fmul 13,0,0
	fmadd 9,8,13,9
.LVL1587:
.LBE9454:
.LBE9456:
	.loc 8 303 0
	lfs 13,104(1)
.LBB9457:
.LBB9455:
	.loc 8 279 0
	fmul 0,0,9
.LVL1588:
	.loc 8 280 0
	frsp 0,0
.LVL1589:
.LBE9455:
.LBE9457:
	.loc 8 303 0
	fmuls 0,13,0
.LBE9458:
.LBE9459:
.LBE9461:
.LBE9464:
	.loc 4 2908 0
	lfs 13,.LC99@l(9)
	fcmpu 7,0,13
	blt- 7,.L885
.LVL1590:
.LBB9465:
.LBB9466:
	.loc 6 435 0
	lfs 0,2284(31)
.LBE9466:
.LBE9465:
	lfs 8,2280(31)
.LBB9468:
.LBB9467:
	fmuls 0,10,0
.LBE9467:
.LBE9468:
	.loc 4 2912 0
	lfs 9,4520(31)
	.loc 6 435 0
	lfs 13,2288(31)
	.loc 4 2912 0
	fneg 9,9
	.loc 6 435 0
	fmadds 0,11,8,0
	.loc 4 2912 0
	lfs 8,4496(31)
	.loc 6 435 0
	fmadds 13,12,13,0
	.loc 4 2913 0
	lfs 0,4524(31)
	.loc 4 2912 0
	fmuls 13,9,13
	fdivs 13,13,8
.LVL1591:
	.loc 4 2913 0
	fcmpu 7,0,13
	bnl- 7,.L889
.L878:
.LVL1592:
.LBB9469:
.LBB9470:
	.loc 6 435 0
	lfs 13,2296(31)
.LBE9470:
.LBE9469:
	lfs 9,2292(31)
.LBB9474:
.LBB9471:
	fmuls 10,10,13
.LBE9471:
.LBE9474:
	lfs 7,2300(31)
	.loc 4 2919 0
	lfs 13,4532(31)
	.loc 6 435 0
	fmadds 11,11,9,10
	.loc 4 2920 0
	lfs 9,4536(31)
	.loc 4 2919 0
	fneg 13,13
	.loc 6 435 0
	fmadds 12,12,7,11
	.loc 4 2919 0
	fmuls 13,13,12
	fdivs 8,13,8
.LVL1593:
	.loc 4 2920 0
	fcmpu 7,9,8
	bnl- 7,.L888
.LVL1594:
.L892:
	lis 9,.LC100@ha
	.loc 4 2930 0
	lwz 30,4492(31)
	.loc 4 2920 0
	lfs 13,.LC100@l(9)
	.loc 4 2927 0
	lis 9,.LC101@ha
	lfs 10,4528(31)
	.loc 4 2930 0
	cmpwi 7,30,-1
	.loc 4 2920 0
	fmuls 0,0,13
.LVL1595:
	.loc 4 2927 0
	lfs 12,.LC101@l(9)
	.loc 4 2920 0
	fmuls 13,9,13
.LVL1596:
	.loc 4 2928 0
	lfs 11,4540(31)
	.loc 4 2927 0
	fmadds 0,10,12,0
	.loc 4 2928 0
	fmadds 13,11,12,13
	.loc 4 2927 0
	stfs 0,4528(31)
	.loc 4 2928 0
	stfs 13,4540(31)
	.loc 4 2930 0
	bne+ 7,.L890
.LVL1597:
.L882:
	.loc 4 2933 0
	lwz 0,4192(31)
.LVL1598:
	addi 3,1,32
.LVL1599:
	addi 4,1,8
.LBB9475:
.LBB9476:
	.loc 12 109 0
	stfs 13,8(1)
	.loc 12 110 0
	stw 0,12(1)
.LBE9476:
.LBE9475:
.LBB9478:
.LBB9479:
	.loc 13 333 0
	addi 31,31,2268
.LVL1600:
.LBE9479:
.LBE9478:
.LBB9487:
.LBB9477:
	.loc 12 111 0
	stfs 0,16(1)
.LBE9477:
.LBE9487:
	.loc 4 2933 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL1601:
.LBB9488:
.LBB9486:
	.loc 13 333 0
	li 10,0
.LVL1602:
.L884:
.LBB9480:
.LBB9481:
	.loc 6 424 0
	addi 11,1,32
.LVL1603:
.LBE9481:
.LBE9480:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB9484:
.LBB9482:
	.loc 6 424 0
	lwzux 0,11,10
.LVL1604:
	mr 9,31
	stwux 0,9,10
.LBE9482:
.LBE9484:
	.loc 13 333 0
	addi 10,10,12
.LBB9485:
.LBB9483:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE9483:
.LBE9485:
	.loc 13 333 0
	bne+ 7,.L884
.LBE9486:
.LBE9488:
.LBE9496:
	.loc 4 2935 0
	lwz 0,124(1)
	lwz 30,112(1)
	mtlr 0
	lwz 31,116(1)
.LVL1605:
	addi 1,1,120
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI216:
	.cfi_def_cfa_offset 0
	blr
.LVL1606:
.L885:
.LCFI217:
	.cfi_restore_state
.LBB9497:
	.loc 4 2908 0
	lis 9,.LC6@ha
	lfs 13,.LC6@l(9)
	fmr 0,13
.L877:
	.loc 4 2930 0
	lwz 30,4492(31)
	.loc 4 2927 0
	lis 9,.LC101@ha
	lfs 10,4528(31)
	lfs 12,.LC101@l(9)
	.loc 4 2930 0
	cmpwi 7,30,-1
	.loc 4 2928 0
	lfs 11,4540(31)
	.loc 4 2927 0
	fmadds 0,10,12,0
	.loc 4 2928 0
	fmadds 13,11,12,13
	.loc 4 2927 0
	stfs 0,4528(31)
	.loc 4 2928 0
	stfs 13,4540(31)
	.loc 4 2930 0
	beq- 7,.L882
.L890:
.LVL1607:
.LBB9489:
.LBB9490:
	.loc 12 110 0
	li 0,0
.LBE9490:
.LBE9489:
	.loc 4 2931 0
	addi 3,1,68
.LVL1608:
	addi 4,1,20
.LBB9492:
.LBB9491:
	.loc 12 110 0
	stw 0,24(1)
	.loc 12 109 0
	stfs 13,20(1)
	.loc 12 111 0
	stfs 0,28(1)
.LBE9491:
.LBE9492:
	.loc 4 2931 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL1609:
	addi 3,31,636
	mr 4,30
	addi 6,1,68
	li 5,3
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
.LBE9497:
	.loc 4 2935 0
	lwz 0,124(1)
	lwz 30,112(1)
	mtlr 0
	lwz 31,116(1)
.LVL1610:
	addi 1,1,120
	.cfi_remember_state
.LCFI218:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1611:
.L888:
.LCFI219:
	.cfi_restore_state
.LBB9498:
	.loc 4 2922 0
	fneg 9,9
	lis 9,.LC100@ha
	lfs 13,.LC100@l(9)
	fcmpu 7,9,8
	fmuls 0,0,13
.LVL1612:
	bng- 7,.L891
.LVL1613:
	fmuls 13,9,13
	b .L877
.LVL1614:
.L889:
	.loc 4 2915 0
	fneg 0,0
	fcmpu 7,0,13
	bgt- 7,.L878
	.loc 4 2912 0
	fmr 0,13
.LVL1615:
.LBB9493:
.LBB9472:
	.loc 6 435 0
	lfs 13,2296(31)
.LVL1616:
.LBE9472:
.LBE9493:
	lfs 9,2292(31)
.LBB9494:
.LBB9473:
	fmuls 10,10,13
.LBE9473:
.LBE9494:
	lfs 7,2300(31)
	.loc 4 2919 0
	lfs 13,4532(31)
	.loc 6 435 0
	fmadds 11,11,9,10
	.loc 4 2920 0
	lfs 9,4536(31)
	.loc 4 2919 0
	fneg 13,13
	.loc 6 435 0
	fmadds 12,12,7,11
	.loc 4 2919 0
	fmuls 13,13,12
	fdivs 8,13,8
.LVL1617:
	.loc 4 2920 0
	fcmpu 7,9,8
	bnl- 7,.L888
	b .L892
.LVL1618:
.L891:
	.loc 4 2922 0
	fmuls 13,8,13
	b .L877
.LBE9498:
	.cfi_endproc
.LFE2925:
	.size	_ZN4idAI18AdjustFlyingAnglesEv, .-_ZN4idAI18AdjustFlyingAnglesEv
	.align 2
	.globl _ZN4idAI9AddFlyBobER6idVec3
	.type	_ZN4idAI9AddFlyBobER6idVec3, @function
_ZN4idAI9AddFlyBobER6idVec3:
.LFB2926:
	.loc 4 2942 0
	.cfi_startproc
.LVL1619:
	mflr 0
	stwu 1,-136(1)
.LCFI220:
	.cfi_def_cfa_offset 136
	.cfi_register 65, 0
.LBB9540:
.LBB9541:
	.loc 4 2946 0
	lis 9,.LC6@ha
.LBE9541:
.LBE9540:
	.loc 4 2942 0
	stw 30,56(1)
	mr 30,4
	.cfi_offset 30, -80
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -76
	stw 0,140(1)
	stfd 23,64(1)
	stfd 24,72(1)
	stfd 25,80(1)
	stfd 26,88(1)
	stfd 27,96(1)
	stfd 28,104(1)
	stfd 29,112(1)
	stfd 30,120(1)
	stfd 31,128(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
.LBB9627:
.LBB9625:
	.loc 4 2946 0
	lfs 0,.LC6@l(9)
	lfs 29,4500(3)
	.cfi_offset 29, -84
	.cfi_offset 28, -88
	.cfi_offset 27, -92
	.cfi_offset 26, -96
	.cfi_offset 25, -100
	.cfi_offset 24, -104
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 65, 4
	fcmpu 7,29,0
	beq- 7,.L893
.LBB9542:
	.loc 4 2947 0
	lwz 0,4(3)
	lis 9,gameLocal+2426836@ha
	lwz 9,gameLocal+2426836@l(9)
	mulli 0,0,497
	add 0,0,9
	lis 9,.LC65@ha
	xoris 0,0,0x8000
	lfs 13,.LC65@l(9)
	stw 0,28(1)
	lis 0,0x4330
	stw 0,24(1)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfs 26,_ZN6idMath8M_MS2SECE@l(9)
.LBB9543:
.LBB9544:
	.loc 8 317 0
	lis 9,_ZN6idMath6TWO_PIE@ha
.LBE9544:
.LBE9543:
	.loc 4 2947 0
	lfd 31,24(1)
	.loc 4 2948 0
	lfs 30,4508(3)
	.loc 4 2947 0
	fsub 31,31,13
.LBB9552:
.LBB9545:
	.loc 8 317 0
	lfs 28,_ZN6idMath6TWO_PIE@l(9)
.LBE9545:
.LBE9552:
	.loc 4 2947 0
	frsp 31,31
	fmuls 31,31,26
.LVL1620:
	.loc 4 2948 0
	fmuls 30,31,30
.LVL1621:
.LBB9553:
.LBB9546:
	.loc 8 317 0
	fcmpu 7,30,0
	bnl- 7,.L922
.L897:
	.loc 8 318 0
	fdivs 1,30,28
	bl floorf
.LVL1622:
	.loc 8 321 0
	lis 9,_ZN6idMath2PIE@ha
	.loc 4 2942 0
	fneg 1,1
	.loc 8 321 0
	lfs 27,_ZN6idMath2PIE@l(9)
	.loc 8 322 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 25,_ZN6idMath7HALF_PIE@l(9)
	.loc 8 318 0
	fmadds 30,1,28,30
.LVL1623:
	.loc 8 321 0
	fcmpu 7,27,30
	bng- 7,.L923
.L928:
	.loc 8 322 0
	fcmpu 7,30,25
	bgt- 7,.L924
.L902:
	.loc 8 338 0
	fmuls 0,30,30
.LVL1624:
	.loc 8 339 0
	lis 24,.LC102@ha
	lis 25,.LC103@ha
	lfs 12,.LC102@l(24)
	lfs 13,.LC103@l(25)
	lis 26,.LC104@ha
	lis 27,.LC105@ha
	lis 28,.LC106@ha
	fmadds 12,0,12,13
	lfs 13,.LC104@l(26)
	lis 29,.LC0@ha
.LBE9546:
.LBE9553:
	.loc 4 2948 0
	lfs 11,4504(31)
.LBB9554:
.LBB9555:
	.loc 8 317 0
	lis 9,.LC6@ha
.LBE9555:
.LBE9554:
.LBB9565:
.LBB9566:
	.loc 6 439 0
	lfs 23,2280(31)
.LBE9566:
.LBE9565:
.LBB9569:
.LBB9547:
	.loc 8 339 0
	fmsubs 12,0,12,13
	lfs 13,.LC105@l(27)
.LBE9547:
.LBE9569:
	.loc 4 2948 0
	fmuls 31,31,11
.LVL1625:
.LBB9570:
.LBB9567:
	.loc 6 439 0
	lfs 24,2284(31)
.LBE9567:
.LBE9570:
.LBB9571:
.LBB9548:
	.loc 8 339 0
	fmadds 12,0,12,13
	lfs 13,.LC106@l(28)
	fmsubs 12,0,12,13
	lfs 13,.LC0@l(29)
	fmadds 0,0,12,13
.LVL1626:
.LBE9548:
.LBE9571:
.LBB9572:
.LBB9556:
	.loc 8 317 0
	lfs 13,.LC6@l(9)
	fcmpu 7,31,13
.LBE9556:
.LBE9572:
.LBB9573:
.LBB9549:
	.loc 8 339 0
	fmuls 30,30,0
.LVL1627:
.LBE9549:
.LBE9573:
.LBB9574:
.LBB9568:
	.loc 6 439 0
	lfs 0,2288(31)
	fmuls 23,30,23
	fmuls 24,30,24
	fmuls 30,30,0
.LVL1628:
.LBE9568:
.LBE9574:
.LBB9575:
.LBB9557:
	.loc 8 317 0
	blt- 7,.L906
	fcmpu 7,31,28
	cror 30,29,30
	beq- 7,.L906
	.loc 8 321 0
	fcmpu 7,27,31
	bng- 7,.L925
.L930:
	.loc 8 322 0
	fcmpu 7,31,25
	bgt- 7,.L926
.L911:
	.loc 8 338 0
	fmuls 0,31,31
.LVL1629:
	.loc 8 339 0
	lfs 11,.LC102@l(24)
	lfs 12,.LC103@l(25)
.LBE9557:
.LBE9575:
	.loc 4 2949 0
	lis 9,.LC1@ha
.LBB9576:
.LBB9558:
	.loc 8 339 0
	lfs 13,.LC104@l(26)
	fmadds 12,0,11,12
	lfs 11,.LC105@l(27)
	lfs 8,.LC106@l(28)
.LBE9558:
.LBE9576:
.LBB9577:
.LBB9578:
	.loc 6 452 0
	lfs 9,2292(31)
.LBE9578:
.LBE9577:
.LBB9582:
.LBB9559:
	.loc 8 339 0
	fmsubs 12,0,12,13
	lfs 13,.LC0@l(29)
.LBE9559:
.LBE9582:
.LBB9583:
.LBB9579:
	.loc 6 452 0
	lfs 10,2296(31)
.LBE9579:
.LBE9583:
.LBB9584:
.LBB9560:
	.loc 8 339 0
	fmadds 12,0,12,11
.LBE9560:
.LBE9584:
.LBB9585:
.LBB9580:
	.loc 6 452 0
	lfs 11,2300(31)
.LBE9580:
.LBE9585:
.LBB9586:
.LBB9561:
	.loc 8 339 0
	fmsubs 12,0,12,8
	fmadds 0,0,12,13
.LVL1630:
.LBE9561:
.LBE9586:
	.loc 4 2949 0
	lfs 13,.LC1@l(9)
.LBB9587:
.LBB9588:
	.loc 6 458 0
	lfs 12,8(30)
.LBE9588:
.LBE9587:
.LBB9592:
.LBB9593:
.LBB9594:
	.loc 4 2950 0
	lis 9,ai_debugMove+44@ha
.LBE9594:
.LBE9593:
.LBE9592:
	.loc 4 2949 0
	fmuls 26,26,13
.LBB9614:
.LBB9589:
	.loc 6 456 0
	lfs 13,0(30)
.LBE9589:
.LBE9614:
.LBB9615:
.LBB9562:
	.loc 8 339 0
	fmuls 31,31,0
.LVL1631:
.LBE9562:
.LBE9615:
.LBB9616:
.LBB9590:
	.loc 6 457 0
	lfs 0,4(30)
.LBE9590:
.LBE9616:
.LBB9617:
.LBB9581:
	.loc 6 452 0
	fmadds 23,9,31,23
.LVL1632:
	fmadds 24,10,31,24
.LVL1633:
	fmadds 31,11,31,30
.LVL1634:
	.loc 6 439 0
	fmuls 23,29,23
.LVL1635:
	fmuls 24,29,24
.LVL1636:
	fmuls 29,29,31
.LVL1637:
.LBE9581:
.LBE9617:
.LBB9618:
.LBB9591:
	.loc 6 456 0
	fmadds 13,26,23,13
	.loc 6 457 0
	fmadds 0,26,24,0
	.loc 6 458 0
	fmadds 26,26,29,12
.LVL1638:
	.loc 6 456 0
	stfs 13,0(30)
	.loc 6 457 0
	stfs 0,4(30)
	.loc 6 458 0
	stfs 26,8(30)
.LBE9591:
.LBE9618:
.LBB9619:
.LBB9596:
.LBB9595:
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE9595:
.LBE9596:
	.loc 4 2950 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L893
.LBB9597:
	.loc 4 2951 0
	li 4,0
	addi 3,31,4216
	bl _ZNK15idPhysics_Actor9GetOriginEi
	.loc 4 2952 0
	lis 9,gameRenderWorld@ha
.LBB9598:
.LBB9599:
	.loc 6 452 0
	lfs 0,0(3)
.LBE9599:
.LBE9598:
	.loc 4 2951 0
	mr 5,3
.LVL1639:
.LBB9609:
.LBB9604:
	.loc 6 452 0
	lfs 12,4(3)
.LBE9604:
.LBE9609:
	.loc 4 2952 0
	lis 4,colorOrange@ha
.LBB9610:
.LBB9605:
	.loc 6 452 0
	lfs 13,8(3)
	fadds 23,23,0
.LVL1640:
.LBE9605:
.LBE9610:
	.loc 4 2952 0
	lwz 3,gameRenderWorld@l(9)
.LVL1641:
.LBB9611:
.LBB9606:
	.loc 6 452 0
	fadds 24,24,12
.LVL1642:
	fadds 29,29,13
.LVL1643:
.LBE9606:
.LBE9611:
	.loc 4 2952 0
	la 4,colorOrange@l(4)
	lwz 9,0(3)
	addi 6,1,8
.LBB9612:
.LBB9607:
.LBB9600:
.LBB9601:
	.loc 6 396 0
	stfs 23,8(1)
.LBE9601:
.LBE9600:
.LBE9607:
.LBE9612:
	.loc 4 2952 0
	li 7,0
	lwz 0,160(9)
.LVL1644:
	li 8,0
.LBB9613:
.LBB9608:
.LBB9603:
.LBB9602:
	.loc 6 397 0
	stfs 24,12(1)
	.loc 6 398 0
	stfs 29,16(1)
.LBE9602:
.LBE9603:
.LBE9608:
.LBE9613:
	.loc 4 2952 0
	mtctr 0
	bctrl
.LVL1645:
.L893:
.LBE9597:
.LBE9619:
.LBE9542:
.LBE9625:
.LBE9627:
	.loc 4 2955 0
	lwz 0,140(1)
	lwz 24,32(1)
	mtlr 0
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
.LVL1646:
	lwz 31,60(1)
.LVL1647:
	lfd 23,64(1)
	lfd 24,72(1)
	lfd 25,80(1)
	lfd 26,88(1)
	lfd 27,96(1)
	lfd 28,104(1)
	lfd 29,112(1)
	lfd 30,120(1)
	lfd 31,128(1)
	addi 1,1,136
	.cfi_remember_state
.LCFI221:
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
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL1648:
.L922:
.LCFI222:
	.cfi_restore_state
.LBB9628:
.LBB9626:
.LBB9624:
.LBB9620:
.LBB9550:
	.loc 8 317 0
	fcmpu 7,30,28
	cror 30,29,30
	beq- 7,.L897
	.loc 8 321 0
	lis 9,_ZN6idMath2PIE@ha
	lfs 27,_ZN6idMath2PIE@l(9)
	.loc 8 322 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 25,_ZN6idMath7HALF_PIE@l(9)
	.loc 8 321 0
	fcmpu 7,27,30
	bgt- 7,.L928
.LVL1649:
.L923:
	.loc 8 326 0
	fadds 0,27,25
	fcmpu 7,30,0
	bgt- 7,.L929
.L924:
	.loc 8 329 0
	fsubs 30,27,30
.LVL1650:
	b .L902
.LVL1651:
.L906:
.LBE9550:
.LBE9620:
.LBB9621:
.LBB9563:
	.loc 8 318 0
	fdivs 1,31,28
	bl floorf
	.loc 4 2942 0
	fneg 1,1
	.loc 8 318 0
	fmadds 31,1,28,31
.LVL1652:
	.loc 8 321 0
	fcmpu 7,27,31
	bgt- 7,.L930
.L925:
	.loc 8 326 0
	fadds 25,27,25
	fcmpu 7,31,25
	bgt- 7,.L931
.L926:
	.loc 8 329 0
	fsubs 31,27,31
.LVL1653:
	b .L911
.LVL1654:
.L929:
.LBE9563:
.LBE9621:
.LBB9622:
.LBB9551:
	.loc 8 327 0
	fsubs 30,30,28
.LVL1655:
	b .L902
.LVL1656:
.L931:
.LBE9551:
.LBE9622:
.LBB9623:
.LBB9564:
	fsubs 31,31,28
.LVL1657:
	b .L911
.LBE9564:
.LBE9623:
.LBE9624:
.LBE9626:
.LBE9628:
	.cfi_endproc
.LFE2926:
	.size	_ZN4idAI9AddFlyBobER6idVec3, .-_ZN4idAI9AddFlyBobER6idVec3
	.align 2
	.globl _ZN4idAI15AdjustFlyHeightER6idVec3RKS0_
	.type	_ZN4idAI15AdjustFlyHeightER6idVec3RKS0_, @function
_ZN4idAI15AdjustFlyHeightER6idVec3RKS0_:
.LFB2927:
	.loc 4 2962 0
	.cfi_startproc
.LVL1658:
	stwu 1,-272(1)
.LCFI223:
	.cfi_def_cfa_offset 272
	mflr 0
	mfcr 12
	stw 27,252(1)
.LBB9629:
	.loc 4 2963 0
	addi 27,3,4216
	.cfi_offset 27, -20
	.cfi_register 70, 12
	.cfi_register 65, 0
.LBE9629:
	.loc 4 2962 0
	stw 29,260(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 31,268(1)
.LBB9666:
	.loc 4 2963 0
	mr 3,27
.LVL1659:
.LBE9666:
	.loc 4 2962 0
	mr 31,4
	.cfi_offset 31, -4
.LBB9667:
	.loc 4 2963 0
	li 4,0
.LVL1660:
.LBE9667:
	.loc 4 2962 0
	stw 28,256(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 30,264(1)
	stw 0,276(1)
	stw 24,240(1)
	stw 25,244(1)
	stw 26,248(1)
	stw 12,236(1)
.LBB9668:
	.loc 4 2963 0
	.cfi_offset 70, -36
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1661:
.LBB9630:
	.loc 4 2973 0
	lfs 0,8(3)
.LBE9630:
	.loc 4 2963 0
	mr 30,3
.LVL1662:
.LBB9653:
	.loc 4 2973 0
	lfs 13,8(28)
	fcmpu 7,0,13
	bgt- 7,.L948
.LVL1663:
.L933:
.LBE9653:
.LBB9654:
.LBB9655:
	.loc 7 634 0
	lwz 0,5120(29)
	.loc 7 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0
	rlwinm 11,0,0,20,31
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
.LBE9655:
.LBE9654:
.LBB9658:
.LBB9659:
	.loc 6 424 0
	lwz 10,0(30)
	.loc 6 425 0
	lwz 0,4(30)
	.loc 6 424 0
	stw 10,44(1)
	.loc 6 425 0
	stw 0,48(1)
.LVL1664:
.LBE9659:
.LBE9658:
.LBB9660:
.LBB9656:
	.loc 7 635 0
	beq- 7,.L949
.LVL1665:
.L940:
.LBE9656:
.LBE9660:
	.loc 4 2997 0
	lwz 0,4512(29)
	lis 9,.LC65@ha
	lfs 0,.LC65@l(9)
	lis 9,.LC109@ha
	xoris 0,0,0x8000
	stw 0,228(1)
	lis 0,0x4330
	stw 0,224(1)
	lfd 13,224(1)
	lfs 12,8(28)
	fsub 13,13,0
	lfs 0,.LC109@l(9)
	fadds 0,12,0
	frsp 13,13
	fadds 0,0,13
	stfs 0,52(1)
.L941:
	.loc 4 3000 0
	li 4,0
	mr 3,27
	bl _ZNK15idPhysics_Actor12GetClipModelEi
	lis 8,mat3_identity@ha
	mr 7,3
	lis 3,gameLocal+2311032@ha
	addi 4,1,104
	mr 5,30
	addi 6,1,44
	mr 10,29
	la 8,mat3_identity@l(8)
	li 9,273
	la 3,gameLocal+2311032@l(3)
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
	.loc 4 3001 0
	lis 9,.LC108@ha
	lfs 1,.LC108@l(9)
	addi 3,1,8
	mr 4,31
	mr 5,30
	addi 6,1,108
	bl _Z4SeekR6idVec3RKS_S2_f
.LVL1666:
.LBB9661:
.LBB9662:
	.loc 6 456 0
	lfs 12,0(31)
	lfs 0,8(1)
	.loc 6 457 0
	lfs 13,4(31)
	.loc 6 456 0
	fadds 12,12,0
	.loc 6 457 0
	lfs 0,12(1)
	.loc 6 458 0
	lfs 11,8(31)
	.loc 6 457 0
	fadds 13,13,0
	.loc 6 458 0
	lfs 0,16(1)
	.loc 6 456 0
	stfs 12,0(31)
	.loc 6 458 0
	fadds 0,11,0
	.loc 6 457 0
	stfs 13,4(31)
	.loc 6 458 0
	stfs 0,8(31)
.LBE9662:
.LBE9661:
.LBE9668:
	.loc 4 3003 0
	lwz 0,276(1)
	lwz 12,236(1)
	mtlr 0
	lwz 24,240(1)
	lwz 25,244(1)
	mtcrf 8,12
	lwz 26,248(1)
	lwz 27,252(1)
	lwz 28,256(1)
.LVL1667:
	lwz 29,260(1)
.LVL1668:
	lwz 30,264(1)
.LVL1669:
	lwz 31,268(1)
.LVL1670:
	addi 1,1,272
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI224:
	.cfi_def_cfa_offset 0
	blr
.LVL1671:
.L948:
.LCFI225:
	.cfi_restore_state
.LBB9669:
.LBB9663:
.LBB9631:
	.loc 4 2975 0
	lis 9,.LC107@ha
.LBB9632:
.LBB9633:
	.loc 6 431 0
	lfs 12,0(3)
.LBE9633:
.LBE9632:
	.loc 4 2975 0
	lfs 11,.LC107@l(9)
	.loc 4 2976 0
	mr 5,28
.LBB9642:
.LBB9636:
	.loc 6 431 0
	lfs 13,4(3)
.LBE9636:
.LBE9642:
	.loc 4 2976 0
	addi 6,1,32
	.loc 4 2975 0
	fadds 11,0,11
.LBB9643:
.LBB9637:
	.loc 6 431 0
	lfs 9,4(28)
	lfs 10,0(28)
.LBE9637:
.LBE9643:
	.loc 4 2976 0
	mr 3,29
.LVL1672:
.LBB9644:
.LBB9638:
	.loc 6 431 0
	fsubs 13,9,13
.LBE9638:
.LBE9644:
	.loc 4 2976 0
	lwz 4,3944(29)
.LVL1673:
.LBB9645:
.LBB9639:
	.loc 6 431 0
	fsubs 0,11,0
.LVL1674:
.LBE9639:
.LBE9645:
	.loc 4 2976 0
	li 7,1000
.LBB9646:
.LBB9640:
	.loc 6 431 0
	fsubs 12,10,12
.LBE9640:
.LBE9646:
	.loc 4 2976 0
	li 8,1000
	li 9,1
	addi 10,1,56
.LBB9647:
.LBB9641:
.LBB9634:
.LBB9635:
	.loc 6 397 0
	stfs 13,36(1)
	.loc 6 398 0
	stfs 0,40(1)
	.loc 6 396 0
	stfs 12,32(1)
.LBE9635:
.LBE9634:
.LBE9641:
.LBE9647:
	.loc 4 2976 0
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
.LVL1675:
.LBB9648:
	.loc 4 2977 0
	lfs 0,8(30)
	.loc 4 2972 0
	li 0,0
	.loc 4 2977 0
	lfs 13,64(1)
	fcmpu 7,13,0
	bnl- 7,.L935
.LBB9649:
	.loc 4 2978 0
	lis 9,.LC108@ha
	addi 3,1,20
	lfs 1,.LC108@l(9)
	mr 4,31
	mr 5,30
	addi 6,1,56
	bl _Z4SeekR6idVec3RKS_S2_f
	.loc 4 2979 0
	lfs 13,8(31)
	lfs 0,28(1)
	.loc 4 2980 0
	li 0,1
	.loc 4 2979 0
	fadds 0,13,0
	stfs 0,8(31)
.LVL1676:
.L935:
.LBE9649:
.LBE9648:
.LBB9650:
.LBB9651:
	.loc 4 2983 0
	lis 9,ai_debugMove+44@ha
	cmpwi 4,0,0
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE9651:
.LBE9650:
	.loc 4 2983 0
	lwz 0,36(9)
.LVL1677:
	cmpwi 7,0,0
	beq- 7,.L937
	.loc 4 2984 0
	lis 9,gameRenderWorld@ha
	lwz 25,gameRenderWorld@l(9)
	lwz 9,0(25)
	lwz 26,176(9)
	beq- 4,.L943
	lis 24,colorRed@ha
	la 24,colorRed@l(24)
.L938:
	.loc 4 2984 0 is_stmt 0 discriminator 3
	li 4,-1
	mr 3,27
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	mr 4,24
	mr 5,3
	addi 6,1,56
	mr 3,25
	li 7,16
	mtctr 26
	bctrl
.L937:
.LBE9631:
.LBE9663:
	.loc 4 2988 0 is_stmt 1
	beq- 4,.L933
.LBE9669:
	.loc 4 3003 0
	lwz 0,276(1)
	lwz 12,236(1)
	mtlr 0
	lwz 24,240(1)
	lwz 25,244(1)
	mtcrf 8,12
	lwz 26,248(1)
	lwz 27,252(1)
	lwz 28,256(1)
.LVL1678:
	lwz 29,260(1)
.LVL1679:
	lwz 30,264(1)
.LVL1680:
	lwz 31,268(1)
.LVL1681:
	addi 1,1,272
	.cfi_remember_state
.LCFI226:
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
	blr
.LVL1682:
.L949:
.LCFI227:
	.cfi_restore_state
.LBB9670:
.LBB9664:
.LBB9657:
	.loc 7 636 0
	addi 11,11,132
.LVL1683:
	slwi 11,11,2
.LVL1684:
	add 9,9,11
.LBE9657:
.LBE9664:
	.loc 4 2993 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L940
	.loc 4 2994 0
	lwz 0,4512(29)
	lis 9,.LC65@ha
	lfs 13,.LC65@l(9)
	xoris 0,0,0x8000
	stw 0,220(1)
	lis 0,0x4330
	stw 0,216(1)
	lfd 12,216(1)
	lfs 0,5132(29)
	fsub 13,12,13
	lfs 12,5144(29)
	fadds 0,0,12
	frsp 13,13
	fadds 0,0,13
	stfs 0,52(1)
	b .L941
.LVL1685:
.L943:
.LBB9665:
.LBB9652:
	.loc 4 2984 0
	lis 24,colorGreen@ha
	la 24,colorGreen@l(24)
	b .L938
.LBE9652:
.LBE9665:
.LBE9670:
	.cfi_endproc
.LFE2927:
	.size	_ZN4idAI15AdjustFlyHeightER6idVec3RKS0_, .-_ZN4idAI15AdjustFlyHeightER6idVec3RKS0_
	.align 2
	.globl _ZN4idAI11FlySeekGoalER6idVec3S1_
	.type	_ZN4idAI11FlySeekGoalER6idVec3S1_, @function
_ZN4idAI11FlySeekGoalER6idVec3S1_:
.LFB2928:
	.loc 4 3010 0
	.cfi_startproc
.LVL1686:
	stwu 1,-40(1)
.LCFI228:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,36(1)
.LBB9671:
	.loc 4 3014 0
	addi 3,3,4216
.LVL1687:
.LBE9671:
	.loc 4 3010 0
	mr 31,4
	.cfi_offset 31, -4
.LBB9678:
	.loc 4 3014 0
	li 4,0
.LVL1688:
.LBE9678:
	.loc 4 3010 0
	stw 0,44(1)
	stw 29,28(1)
	.loc 4 3010 0
	mr 29,5
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LBB9679:
	.loc 4 3014 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL1689:
	lis 9,.LC108@ha
	lfs 1,.LC108@l(9)
	mr 5,3
	mr 4,31
	addi 3,1,8
	mr 6,29
	bl _Z4SeekR6idVec3RKS_S2_f
.LVL1690:
	.loc 4 3015 0
	lfs 0,4516(30)
.LBB9672:
.LBB9673:
	.loc 6 457 0
	lfs 12,4(31)
.LBE9673:
.LBE9672:
.LBB9675:
.LBB9676:
	.loc 6 425 0
	lfs 10,12(1)
.LVL1691:
.LBE9676:
.LBE9675:
.LBB9677:
.LBB9674:
	.loc 6 456 0
	lfs 13,0(31)
	.loc 6 457 0
	fmadds 12,0,10,12
	.loc 6 456 0
	lfs 10,8(1)
	.loc 6 458 0
	lfs 11,8(31)
	.loc 6 456 0
	fmadds 13,0,10,13
	.loc 6 458 0
	lfs 10,16(1)
	.loc 6 457 0
	stfs 12,4(31)
	.loc 6 458 0
	fmadds 0,0,10,11
	.loc 6 456 0
	stfs 13,0(31)
	.loc 6 458 0
	stfs 0,8(31)
.LBE9674:
.LBE9677:
.LBE9679:
	.loc 4 3017 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL1692:
	mtlr 0
	lwz 30,32(1)
.LVL1693:
	lwz 31,36(1)
.LVL1694:
	addi 1,1,40
.LCFI229:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2928:
	.size	_ZN4idAI11FlySeekGoalER6idVec3S1_, .-_ZN4idAI11FlySeekGoalER6idVec3S1_
	.align 2
	.globl _ZN4idAI14AdjustFlySpeedER6idVec3
	.type	_ZN4idAI14AdjustFlySpeedER6idVec3, @function
_ZN4idAI14AdjustFlySpeedER6idVec3:
.LFB2929:
	.loc 4 3024 0
	.cfi_startproc
.LVL1695:
.LBB9695:
	.loc 4 3028 0
	lis 9,.LC1@ha
.LBB9696:
.LBB9697:
	.loc 6 439 0
	lfs 13,4(4)
.LBE9697:
.LBE9696:
	.loc 4 3028 0
	lfs 0,.LC1@l(9)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfs 7,_ZN6idMath8M_MS2SECE@l(9)
.LBB9701:
.LBB9698:
	.loc 6 439 0
	lis 9,.LC110@ha
	lfs 9,.LC110@l(9)
.LBE9698:
.LBE9701:
.LBB9702:
.LBB9703:
.LBB9704:
.LBB9705:
	.loc 8 276 0
	lis 9,_ZN6idMath5iSqrtE@ha
.LBE9705:
.LBE9704:
.LBE9703:
.LBE9702:
	.loc 4 3028 0
	fmuls 7,7,0
.LBB9722:
.LBB9699:
	.loc 6 439 0
	lfs 11,0(4)
	fmuls 12,13,9
	lfs 0,8(4)
.LVL1696:
	fmuls 6,11,9
.LBE9699:
.LBE9722:
.LBE9695:
	.loc 4 3024 0
	stwu 1,-16(1)
.LCFI230:
	.cfi_def_cfa_offset 16
.LBB9742:
	.loc 4 3024 0
	fneg 10,7
.LBB9723:
.LBB9716:
.LBB9711:
.LBB9706:
	.loc 8 276 0
	la 9,_ZN6idMath5iSqrtE@l(9)
.LBE9706:
.LBE9711:
.LBE9716:
.LBE9723:
.LBB9724:
.LBB9725:
	.loc 6 482 0
	fmadds 12,10,12,13
.LBE9725:
.LBE9724:
	.loc 6 481 0
	fmadds 11,10,6,11
.LBB9727:
.LBB9700:
	.loc 6 439 0
	fmuls 13,0,9
.LBE9700:
.LBE9727:
.LBB9728:
.LBB9717:
	.loc 6 649 0
	fmuls 8,12,12
.LBE9717:
.LBE9728:
.LBB9729:
.LBB9726:
	.loc 6 482 0
	stfs 12,4(4)
	.loc 6 481 0
	stfs 11,0(4)
	.loc 6 483 0
	fmadds 13,10,13,0
	.loc 6 649 0
	fmadds 0,11,11,8
	.loc 6 483 0
	stfs 13,8(4)
.LVL1697:
	.loc 6 649 0
	fmadds 0,13,13,0
	stfs 0,8(1)
.LVL1698:
.LBE9726:
.LBE9729:
.LBB9730:
.LBB9718:
.LBB9712:
.LBB9707:
	.loc 8 270 0
	lwz 0,8(1)
.LVL1699:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 9,9,0
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	.loc 8 275 0
	lis 11,.LC15@ha
	.loc 8 276 0
	or 0,0,9
	.loc 8 275 0
	lfs 5,.LC15@l(11)
	.loc 8 277 0
	stw 0,12(1)
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 275 0
	fmuls 5,0,5
.LVL1700:
	.loc 8 278 0
	lfs 6,.LC63@l(9)
	.loc 8 277 0
	lfs 0,12(1)
.LVL1701:
.LBE9707:
.LBE9712:
.LBE9718:
.LBE9730:
	.loc 4 3033 0
	lis 9,.LC6@ha
	lfs 8,.LC6@l(9)
.LBB9731:
.LBB9719:
.LBB9713:
.LBB9708:
	.loc 8 277 0
	fmr 9,0
.LVL1702:
.LBE9708:
.LBE9713:
.LBE9719:
.LBE9731:
	.loc 4 3024 0
	lfs 0,8(1)
.LVL1703:
.LBB9732:
.LBB9720:
.LBB9714:
.LBB9709:
	fneg 5,5
.LVL1704:
.LBE9709:
.LBE9714:
.LBE9720:
.LBE9732:
	fneg 4,0
.LBB9733:
.LBB9721:
.LBB9715:
.LBB9710:
	.loc 8 278 0
	fmul 10,9,9
	fmadd 10,5,10,6
	fmul 10,9,10
.LVL1705:
	.loc 8 279 0
	fmul 0,10,10
	fmadd 0,5,0,6
.LVL1706:
	fmul 0,10,0
.LVL1707:
	.loc 8 280 0
	frsp 0,0
.LVL1708:
.LBE9710:
.LBE9715:
	.loc 6 651 0
	fmuls 11,11,0
	.loc 6 652 0
	fmuls 12,12,0
	.loc 6 653 0
	fmuls 13,13,0
	.loc 6 651 0
	stfs 11,0(4)
	.loc 6 652 0
	stfs 12,4(4)
	.loc 6 653 0
	stfs 13,8(4)
.LBE9721:
.LBE9733:
	.loc 4 3032 0
	lfs 10,4016(3)
	fmadds 9,4,0,10
	fmuls 7,7,9
.LVL1709:
	lfs 9,8(1)
	fmadds 0,9,0,7
.LVL1710:
	.loc 4 3033 0
	fcmpu 7,0,8
	blt- 7,.L953
	.loc 4 3035 0
	fcmpu 7,10,8
	beq- 7,.L952
	.loc 4 3035 0 is_stmt 0 discriminator 1
	fcmpu 7,10,0
	bnl- 7,.L952
	.loc 4 3036 0 is_stmt 1
	fmr 0,10
.LVL1711:
.L952:
.LBB9734:
.LBB9735:
	.loc 6 489 0
	fmuls 11,0,11
.LBE9735:
.LBE9734:
.LBE9742:
	.loc 4 3040 0
.LBB9743:
.LBB9739:
.LBB9736:
	.loc 6 490 0
	fmuls 12,0,12
.LBE9736:
.LBE9739:
.LBE9743:
	.loc 4 3040 0
	addi 1,1,16
	.cfi_remember_state
.LCFI231:
	.cfi_def_cfa_offset 0
.LBB9744:
.LBB9740:
.LBB9737:
	.loc 6 491 0
	fmuls 0,0,13
.LVL1712:
	.loc 6 489 0
	stfs 11,0(4)
	.loc 6 490 0
	stfs 12,4(4)
	.loc 6 491 0
	stfs 0,8(4)
.LBE9737:
.LBE9740:
.LBE9744:
	.loc 4 3040 0
	blr
.LVL1713:
.L953:
.LCFI232:
	.cfi_restore_state
.LBB9745:
	.loc 4 3034 0
	fmr 0,8
.LVL1714:
.LBE9745:
	.loc 4 3040 0
	addi 1,1,16
.LCFI233:
	.cfi_def_cfa_offset 0
.LBB9746:
.LBB9741:
.LBB9738:
	.loc 6 489 0
	fmuls 11,0,11
	.loc 6 490 0
	fmuls 12,0,12
	.loc 6 491 0
	fmuls 0,0,13
	.loc 6 489 0
	stfs 11,0(4)
	.loc 6 490 0
	stfs 12,4(4)
	.loc 6 491 0
	stfs 0,8(4)
.LBE9738:
.LBE9741:
.LBE9746:
	.loc 4 3040 0
	blr
	.cfi_endproc
.LFE2929:
	.size	_ZN4idAI14AdjustFlySpeedER6idVec3, .-_ZN4idAI14AdjustFlySpeedER6idVec3
	.align 2
	.globl _ZN4idAI7FlyTurnEv
	.type	_ZN4idAI7FlyTurnEv, @function
_ZN4idAI7FlyTurnEv:
.LFB2930:
	.loc 4 3047 0
	.cfi_startproc
.LVL1715:
	mflr 0
	stwu 1,-16(1)
.LCFI234:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB9747:
.LBB9748:
	.loc 4 3048 0
	lwz 0,3956(3)
	.cfi_offset 65, 4
	cmpwi 7,0,1
	beq- 7,.L962
.LBB9749:
	.loc 4 3050 0
	cmpwi 7,0,2
	beq- 7,.L963
.LVL1716:
.L958:
.LBB9750:
	.loc 4 3052 0
	lis 9,.LC6@ha
	lfs 13,4016(31)
	lfs 0,.LC6@l(9)
	fcmpu 7,13,0
	bgt- 7,.L964
.L957:
.LBE9750:
.LBE9749:
.LBE9748:
.LBE9747:
	.loc 4 3059 0
	lwz 0,20(1)
.LBB9761:
	.loc 4 3058 0
	mr 3,31
.LBE9761:
	.loc 4 3059 0
	lwz 31,12(1)
.LVL1717:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI235:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
.LBB9762:
	.loc 4 3058 0
	b _ZN4idAI4TurnEv
.LVL1718:
.L963:
.LCFI236:
	.cfi_restore_state
.LBB9759:
.LBB9757:
.LBB9754:
.LBB9755:
	.loc 7 634 0 discriminator 1
	lwz 0,3988(3)
	.loc 7 635 0 discriminator 1
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL1719:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L958
	.loc 7 636 0
	addi 11,11,132
.LVL1720:
	slwi 11,11,2
.LVL1721:
	add 9,9,11
	lwz 3,4(9)
.LVL1722:
.LBE9755:
.LBE9754:
	.loc 4 3050 0
	cmpwi 7,3,0
	beq- 7,.L958
.LVL1723:
	.loc 4 3051 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
	bl _ZN4idAI10TurnTowardERK6idVec3
.LBE9757:
.LBE9759:
.LBE9762:
	.loc 4 3059 0
	lwz 0,20(1)
.LBB9763:
	.loc 4 3058 0
	mr 3,31
.LBE9763:
	.loc 4 3059 0
	lwz 31,12(1)
.LVL1724:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI237:
	.cfi_def_cfa_offset 0
.LBB9764:
	.loc 4 3058 0
	b _ZN4idAI4TurnEv
.LVL1725:
.L964:
.LCFI238:
	.cfi_restore_state
.LBB9760:
.LBB9758:
.LBB9756:
.LBB9751:
	.loc 4 3053 0
	addi 3,31,4216
	li 4,0
	bl _ZNK17idPhysics_Monster17GetLinearVelocityEi
.LVL1726:
	.loc 4 3054 0
	lis 9,.LC77@ha
.LBB9752:
.LBB9753:
	.loc 6 167 0
	lfs 13,4(3)
	lfs 0,0(3)
	fmuls 13,13,13
.LBE9753:
.LBE9752:
	.loc 4 3054 0
	lfs 12,.LC77@l(9)
	.loc 6 167 0
	fmadds 0,0,0,13
	.loc 4 3054 0
	fcmpu 7,0,12
	bng+ 7,.L957
	.loc 4 3055 0
	bl _ZNK6idVec35ToYawEv
.LVL1727:
	mr 3,31
	bl _ZN4idAI10TurnTowardEf
	b .L957
.L962:
.LBE9751:
.LBE9756:
.LBE9758:
	.loc 4 3049 0
	addi 4,3,5124
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L957
.LBE9760:
.LBE9764:
	.cfi_endproc
.LFE2930:
	.size	_ZN4idAI7FlyTurnEv, .-_ZN4idAI7FlyTurnEv
	.align 2
	.globl _ZN4idAI10ReactionToEPK8idEntity
	.type	_ZN4idAI10ReactionToEPK8idEntity, @function
_ZN4idAI10ReactionToEPK8idEntity:
.LFB2933:
	.loc 4 3193 0
	.cfi_startproc
.LVL1728:
	mflr 0
	stwu 1,-24(1)
.LCFI239:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,20(1)
.LBB9781:
	.loc 4 3197 0
	li 31,0
	.cfi_offset 31, -4
.LBE9781:
	.loc 4 3193 0
	stw 0,28(1)
.LBB9787:
	.loc 4 3195 0
	lwz 0,192(4)
	.cfi_offset 65, 4
	andis. 9,0,4096
	beq- 0,.L978
.LVL1729:
.L966:
.LBE9787:
	.loc 4 3226 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
.LVL1730:
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI240:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1731:
.L978:
.LCFI241:
	.cfi_restore_state
.LBB9788:
.LBB9782:
.LBB9783:
	.loc 16 340 0
	lwz 9,0(4)
	mr 3,4
.LVL1732:
	lwz 0,0(9)
	stw 4,8(1)
	mtctr 0
	bctrl
.LVL1733:
.LBE9783:
	.loc 4 5138 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB9786:
.LBB9784:
.LBB9785:
	.loc 16 311 0
	lwz 11,56(9)
	lwz 4,8(1)
	cmpw 7,0,11
	blt- 7,.L966
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L966
.LVL1734:
.LBE9785:
.LBE9784:
.LBE9786:
.LBE9782:
.LBE9788:
.LBB9789:
.LBB9790:
.LBB9791:
.LBB9792:
	.loc 16 340 0
	lwz 9,0(4)
	mr 3,4
.LVL1735:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1736:
.LBE9792:
	.loc 4 5138 0
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB9797:
.LBB9793:
.LBB9794:
	.loc 16 311 0
	lwz 11,56(9)
	lwz 4,8(1)
	cmpw 7,0,11
	bge- 7,.L979
.L967:
.LBE9794:
.LBE9793:
.LBE9797:
.LBE9791:
	.loc 4 3211 0
	lwz 9,2260(4)
	lwz 0,2260(30)
	cmpw 7,9,0
	beq- 7,.L980
	.loc 4 3212 0
	lwz 31,192(4)
	srwi 31,31,31
	.loc 4 3214 0
	addic 31,31,-1
	subfe 31,31,31
	rlwinm 31,31,0,29,29
	addi 31,31,3
	b .L966
.L979:
.LBB9799:
.LBB9798:
.LBB9796:
.LBB9795:
	.loc 16 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L967
.LBE9795:
.LBE9796:
.LBE9798:
.LBE9799:
	.loc 4 3205 0
	lbz 0,4628(4)
	cmpwi 7,0,0
	bne- 7,.L966
	b .L967
.L980:
	.loc 4 3220 0
	lwz 0,2264(30)
	.loc 4 3225 0
	li 31,0
	.loc 4 3220 0
	cmpwi 7,0,0
	beq- 7,.L966
	.loc 4 3193 0
	lwz 9,2264(4)
	cmpw 7,0,9
	mfcr 31
	rlwinm 31,31,30,1
	b .L966
.LBE9790:
.LBE9789:
	.cfi_endproc
.LFE2933:
	.size	_ZN4idAI10ReactionToEPK8idEntity, .-_ZN4idAI10ReactionToEPK8idEntity
	.align 2
	.globl _ZN4idAI21SpawnParticlesOnJointER17particleEmitter_sPKcS3_
	.type	_ZN4idAI21SpawnParticlesOnJointER17particleEmitter_sPKcS3_, @function
_ZN4idAI21SpawnParticlesOnJointER17particleEmitter_sPKcS3_:
.LFB2936:
	.loc 4 3298 0
	.cfi_startproc
.LVL1737:
	mflr 0
	stwu 1,-88(1)
.LCFI242:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stw 28,72(1)
	mr 28,6
	.cfi_offset 28, -16
	stw 29,76(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,80(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,84(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,92(1)
	stw 26,64(1)
	stw 27,68(1)
.LBB9821:
	.loc 4 3302 0
	lbz 0,0(5)
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L988
	.loc 4 3307 0
	addi 27,3,636
	mr 4,6
.LVL1738:
	mr 3,27
.LVL1739:
	bl _ZNK10idAnimator14GetJointHandleEPKc
.LVL1740:
	.loc 4 3308 0
	cmpwi 7,3,-1
	.loc 4 3307 0
	stw 3,8(30)
	.loc 4 3308 0
	beq- 7,.L989
	.loc 4 3313 0
	lis 26,gameLocal@ha
	mr 4,3
	la 26,gameLocal@l(26)
	addi 6,1,8
	addis 28,26,0x25
.LVL1741:
	addi 7,1,20
	lwz 5,2004(28)
	mr 3,27
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL1742:
.LBB9822:
.LBB9823:
.LBB9824:
	.loc 13 454 0
	lfs 0,12(1)
	lfs 13,280(31)
.LBE9824:
.LBE9823:
.LBE9822:
	.loc 4 3316 0
	mr 3,31
.LBB9837:
.LBB9831:
.LBB9825:
	.loc 13 454 0
	lfs 11,284(31)
.LBE9825:
.LBE9831:
.LBE9837:
	.loc 4 3316 0
	li 4,16
.LBB9838:
.LBB9832:
.LBB9826:
	.loc 13 454 0
	lfs 12,288(31)
	fmuls 11,0,11
.LBE9826:
.LBE9832:
.LBE9838:
.LBB9839:
.LBB9840:
	lfs 8,272(31)
.LBE9840:
.LBE9839:
.LBB9845:
.LBB9833:
.LBB9827:
	fmuls 12,0,12
.LBE9827:
.LBE9833:
.LBE9845:
.LBB9846:
.LBB9841:
	lfs 9,276(31)
.LBE9841:
.LBE9846:
.LBB9847:
.LBB9834:
.LBB9828:
	fmuls 0,0,13
.LBE9828:
.LBE9834:
.LBE9847:
.LBB9848:
.LBB9842:
	lfs 10,268(31)
.LBE9842:
.LBE9848:
.LBB9849:
.LBB9835:
.LBB9829:
	lfs 13,8(1)
.LBE9829:
.LBE9835:
.LBE9849:
.LBB9850:
.LBB9843:
	fmadds 11,13,8,11
	lfs 8,296(31)
	fmadds 12,13,9,12
	lfs 9,300(31)
	fmadds 13,10,13,0
.LBE9843:
.LBE9850:
.LBB9851:
.LBB9836:
.LBB9830:
	lfs 0,16(1)
.LVL1743:
.LBE9830:
.LBE9836:
.LBE9851:
.LBB9852:
.LBB9844:
	lfs 10,292(31)
	fmadds 11,0,8,11
	fmadds 12,0,9,12
	.loc 6 452 0
	lfs 9,260(31)
	.loc 13 454 0
	fmadds 0,10,0,13
	.loc 6 452 0
	lfs 10,264(31)
	lfs 13,256(31)
	fadds 11,11,9
	fadds 12,12,10
.LVL1744:
	fadds 0,13,0
.LBE9844:
.LBE9852:
.LBB9853:
.LBB9854:
	.loc 6 425 0
	stfs 11,12(1)
	.loc 6 426 0
	stfs 12,16(1)
	.loc 6 424 0
	stfs 0,8(1)
.LBE9854:
.LBE9853:
	.loc 4 3316 0
	bl _ZN8idEntity12BecomeActiveEi
.LVL1745:
	.loc 4 3317 0
	lwz 0,2004(28)
	cmpwi 7,0,0
	bne- 7,.L986
	.loc 4 3319 0
	li 0,1
.L986:
	.loc 4 3323 0
	lis 9,declManager@ha
	.loc 4 3317 0
	stw 0,4(30)
	.loc 4 3323 0
	lwz 3,declManager@l(9)
	mr 5,29
	li 4,7
	li 6,1
	lwz 9,0(3)
	li 7,0
	lwz 0,60(9)
	mtctr 0
	bctrl
.LBB9855:
.LBB9856:
.LBB9857:
.LBB9858:
.LBB9859:
.LBB9860:
	.loc 19 71 0
	addis 9,26,0x1
.LBE9860:
.LBE9859:
.LBE9858:
.LBE9857:
.LBE9856:
.LBE9855:
	.loc 4 3323 0
	stw 3,0(30)
.LBB9893:
.LBB9887:
.LBB9879:
.LBB9871:
.LBB9866:
.LBB9861:
	.loc 19 71 0
	lis 11,0x1
	ori 11,11,3533
.LBE9861:
.LBE9866:
	.loc 19 83 0
	lis 0,0x4330
.LBB9867:
.LBB9862:
	.loc 19 71 0
	lwz 10,-32064(9)
.LBE9862:
.LBE9867:
.LBE9871:
.LBE9879:
.LBE9887:
.LBE9893:
	.loc 4 3323 0
	mr 4,3
.LBB9894:
.LBB9888:
.LBB9880:
.LBB9872:
	.loc 19 83 0
	stw 0,56(1)
.LBE9872:
.LBE9880:
.LBE9888:
.LBE9894:
	.loc 4 3324 0
	addi 6,1,8
.LVL1746:
.LBB9895:
.LBB9889:
.LBB9881:
.LBB9873:
.LBB9868:
.LBB9863:
	.loc 19 71 0
	mullw 11,11,10
.LBE9863:
.LBE9868:
.LBE9873:
.LBE9881:
.LBE9889:
.LBE9895:
	.loc 4 3324 0
	addi 7,1,20
.LBB9896:
.LBB9890:
.LBB9882:
.LBB9874:
.LBB9869:
.LBB9864:
	.loc 19 71 0
	addi 0,11,1
	.loc 19 72 0
	rlwinm 11,0,0,17,31
.LBE9864:
.LBE9869:
	.loc 19 83 0
	xoris 11,11,0x8000
	stw 11,60(1)
	lis 11,.LC65@ha
	lfs 0,.LC65@l(11)
.LBE9874:
.LBE9882:
	.loc 19 87 0
	lis 11,.LC15@ha
.LBB9883:
.LBB9875:
	.loc 19 83 0
	lfd 1,56(1)
.LBE9875:
.LBE9883:
.LBE9890:
.LBE9896:
	.loc 4 3324 0
	lwz 5,4(30)
.LVL1747:
.LBB9897:
.LBB9891:
.LBB9884:
.LBB9876:
	.loc 19 83 0
	fsub 1,1,0
.LBE9876:
.LBE9884:
	.loc 19 87 0
	lfs 0,.LC15@l(11)
	lis 11,.LC66@ha
.LBB9885:
.LBB9877:
.LBB9870:
.LBB9865:
	.loc 19 71 0
	stw 0,-32064(9)
.LBE9865:
.LBE9870:
.LBE9877:
.LBE9885:
	.loc 19 87 0
	lfs 13,.LC66@l(11)
.LBB9886:
.LBB9878:
	.loc 19 83 0
	frsp 1,1
.LBE9878:
.LBE9886:
.LBE9891:
.LBE9897:
	.loc 4 3324 0
	lwz 11,1972(28)
	mr 3,11
.LBB9898:
.LBB9892:
	.loc 19 87 0
	fmsubs 1,1,13,0
.LBE9892:
.LBE9898:
	.loc 4 3324 0
	fadds 1,1,1
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
.LVL1748:
.LBE9821:
	.loc 4 3328 0
	lwz 0,92(1)
.LBB9899:
	.loc 4 3324 0
	lwz 3,0(30)
.LBE9899:
	.loc 4 3328 0
	mtlr 0
	lwz 26,64(1)
	lwz 27,68(1)
	lwz 28,72(1)
	lwz 29,76(1)
.LVL1749:
	lwz 30,80(1)
.LVL1750:
	lwz 31,84(1)
.LVL1751:
	addi 1,1,88
	.cfi_remember_state
.LCFI243:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1752:
.L988:
.LCFI244:
	.cfi_restore_state
.LBB9900:
	.loc 4 3303 0
	stw 0,0(4)
	.loc 4 3304 0
	li 3,0
.LVL1753:
	.loc 4 3303 0
	stw 0,4(4)
	stw 0,8(4)
.LBE9900:
	.loc 4 3328 0
	lwz 0,92(1)
	lwz 26,64(1)
	mtlr 0
	lwz 27,68(1)
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
.LVL1754:
	addi 1,1,88
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI245:
	.cfi_def_cfa_offset 0
	blr
.LVL1755:
.L989:
.LCFI246:
	.cfi_restore_state
.LBB9901:
	.loc 4 3309 0
	lwz 6,72(31)
	lis 3,gameLocal@ha
	lis 4,.LC111@ha
	la 3,gameLocal@l(3)
	mr 5,28
	la 4,.LC111@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	.loc 4 3310 0
	li 0,0
	stw 0,4(30)
	.loc 4 3311 0
	li 3,0
	stw 0,0(30)
.LBE9901:
	.loc 4 3328 0
	lwz 0,92(1)
	lwz 26,64(1)
	mtlr 0
	lwz 27,68(1)
	lwz 28,72(1)
.LVL1756:
	lwz 29,76(1)
.LVL1757:
	lwz 30,80(1)
.LVL1758:
	lwz 31,84(1)
.LVL1759:
	addi 1,1,88
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI247:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2936:
	.size	_ZN4idAI21SpawnParticlesOnJointER17particleEmitter_sPKcS3_, .-_ZN4idAI21SpawnParticlesOnJointER17particleEmitter_sPKcS3_
	.align 2
	.globl _ZN4idAI14SpawnParticlesEPKc
	.type	_ZN4idAI14SpawnParticlesEPKc, @function
_ZN4idAI14SpawnParticlesEPKc:
.LFB2935:
	.loc 4 3269 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2935
.LVL1760:
	stwu 1,-216(1)
.LCFI248:
	.cfi_def_cfa_offset 216
	mflr 0
	mfcr 12
.LBB9989:
	.loc 4 3270 0
	li 5,0
.LBE9989:
	.loc 4 3269 0
	stw 22,176(1)
.LBB10192:
	.loc 4 3270 0
	addi 22,3,100
	.cfi_offset 22, -40
	.cfi_register 70, 12
	.cfi_register 65, 0
.LBE10192:
	.loc 4 3269 0
	stw 30,208(1)
	mr 30,3
	.cfi_offset 30, -8
.LBB10193:
	.loc 4 3270 0
	mr 3,22
.LVL1761:
.LBE10193:
	.loc 4 3269 0
	stw 21,172(1)
	stw 29,204(1)
	mr 21,4
	.cfi_offset 29, -12
	.cfi_offset 21, -44
	stw 0,220(1)
	stw 17,156(1)
	stw 18,160(1)
	stw 19,164(1)
	stw 20,168(1)
	stw 23,180(1)
	stw 24,184(1)
	stw 25,188(1)
	stw 26,192(1)
	stw 27,196(1)
	stw 28,200(1)
	stw 31,212(1)
	stw 12,152(1)
.LEHB38:
.LBB10194:
	.loc 4 3270 0
	.cfi_offset 70, -64
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 65, 4
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1762:
	.loc 4 3271 0
	mr. 29,3
	beq- 0,.L990
	addi 25,1,128
.LBB9990:
.LBB9991:
.LBB9992:
	.loc 3 161 0
	li 31,0
	.loc 3 163 0
	li 27,-1
.LBE9992:
.LBE9991:
.LBB9995:
.LBB9996:
.LBB9997:
.LBB9998:
	.loc 15 357 0
	li 24,20
.LBE9998:
.LBE9997:
.LBE9996:
.LBE9995:
.LBB10009:
.LBB10010:
.LBB10011:
.LBB10012:
.LBB10013:
.LBB10014:
	.loc 15 358 0
	addi 20,1,96
.LBE10014:
.LBE10013:
.LBE10012:
.LBE10011:
.LBB10027:
.LBB10028:
.LBB10029:
.LBB10030:
	.loc 14 663 0
	li 17,16
.LBE10030:
.LBE10029:
.LBE10028:
.LBE10027:
.LBB10065:
.LBB10066:
	.loc 15 536 0
	li 19,0
.LBE10066:
.LBE10065:
.LBB10076:
.LBB10077:
.LBB10078:
.LBB10079:
.LBB10080:
.LBB10081:
	.loc 15 358 0
	addi 18,1,32
.LVL1763:
.L1024:
.LBE10081:
.LBE10080:
.LBE10079:
.LBE10078:
.LBE10077:
.LBE10076:
.LBE10010:
.LBE10009:
.LBB10176:
.LBB9993:
	.loc 3 162 0
	stw 31,12(1)
.LBE9993:
.LBE10176:
.LBB10177:
.LBB10005:
.LBB10000:
.LBB10001:
	.loc 15 358 0
	mr 3,25
.LBE10001:
.LBE10000:
.LBE10005:
.LBE10177:
.LBB10178:
.LBB9994:
	.loc 3 163 0
	stw 27,16(1)
	.loc 3 161 0
	stw 31,8(1)
	.loc 4 5138 0
	lwz 26,4(29)
.LVL1764:
.LBE9994:
.LBE10178:
.LBB10179:
.LBB10006:
.LBB10003:
.LBB9999:
	.loc 15 356 0
	stw 31,116(1)
	.loc 15 357 0
	stw 24,124(1)
	.loc 15 358 0
	stw 25,120(1)
	.loc 15 359 0
	stb 31,128(1)
.LBE9999:
.LBE10003:
.LBE10006:
	.loc 4 5138 0
	lwz 28,0(26)
.LBB10007:
	.loc 15 374 0
	addi 4,28,1
.LVL1765:
.LBB10004:
.LBB10002:
	.loc 15 350 0
	cmpwi 7,4,20
	ble+ 7,.L992
.LVL1766:
	.loc 15 351 0
	addi 3,1,116
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE38:
.LVL1767:
	lwz 3,120(1)
.LVL1768:
.L992:
.LBE10002:
.LBE10004:
	.loc 15 375 0
	lwz 4,4(26)
	bl strcpy
.LBE10007:
.LBE10179:
.LBB10180:
	.loc 4 3276 0
	cmpwi 7,28,0
.LBE10180:
.LBB10181:
.LBB10008:
	.loc 15 376 0
	stw 28,116(1)
.LBE10008:
.LBE10181:
.LBB10182:
	.loc 4 3276 0
	beq- 7,.L993
	.loc 4 5138 0
	lwz 26,4(29)
.LVL1769:
.LBB10173:
.LBB10107:
.LBB10023:
.LBB10016:
.LBB10017:
	.loc 15 358 0
	mr 3,20
.LBE10017:
.LBE10016:
.LBB10020:
.LBB10015:
	.loc 15 356 0
	stw 31,84(1)
	.loc 15 357 0
	stw 24,92(1)
	.loc 15 358 0
	stw 20,88(1)
	.loc 15 359 0
	stb 31,96(1)
.LBE10015:
.LBE10020:
.LBE10023:
	.loc 4 5138 0
	lwz 28,0(26)
.LBB10024:
	.loc 15 374 0
	addi 4,28,1
.LVL1770:
.LBB10021:
.LBB10018:
	.loc 15 350 0
	cmpwi 7,4,20
	bgt- 7,.L1047
.LVL1771:
.L994:
.LBE10018:
.LBE10021:
	.loc 15 375 0
	lwz 4,4(26)
	bl strcpy
.LBE10024:
.LBE10107:
.LBB10108:
.LBB10109:
	.loc 15 899 0
	lwz 3,88(1)
	li 4,45
	li 5,0
	mr 6,28
.LBE10109:
.LBE10108:
.LBB10111:
.LBB10025:
	.loc 15 376 0
	stw 28,84(1)
.LVL1772:
.LEHB39:
.LBE10025:
.LBE10111:
.LBB10112:
.LBB10110:
	.loc 15 899 0
	bl _ZN5idStr8FindCharEPKccii
.LVL1773:
.LBE10110:
.LBE10112:
	.loc 4 3280 0
	mr. 26,3
.LVL1774:
	ble- 0,.L995
.LVL1775:
.LBB10113:
.LBB10114:
	.loc 15 926 0
	addi 3,1,52
.LVL1776:
	addi 4,1,116
	li 5,0
	mr 6,26
	bl _ZNK5idStr3MidEii
.LVL1777:
.LBE10114:
.LBE10113:
.LBB10115:
	.loc 4 5138 0
	lwz 28,52(1)
.LVL1778:
.LBB10073:
.LBB10067:
.LBB10068:
	.loc 15 350 0
	lwz 0,124(1)
.LBE10068:
.LBE10067:
	.loc 15 534 0
	addi 4,28,1
.LVL1779:
.LBB10071:
.LBB10069:
	.loc 15 350 0
	cmpw 7,4,0
	bgt- 7,.L1048
.LVL1780:
.L996:
.LBE10069:
.LBE10071:
	.loc 15 535 0
	lwz 3,120(1)
	mr 5,28
	lwz 4,56(1)
	bl memcpy
	.loc 15 536 0
	lwz 9,120(1)
.LBE10073:
.LBE10115:
.LBB10116:
.LBB10117:
.LBB10118:
	.loc 15 501 0
	addi 3,1,52
.LVL1781:
.LBE10118:
.LBE10117:
.LBE10116:
.LBB10121:
.LBB10074:
	.loc 15 536 0
	stbx 19,9,28
	.loc 15 537 0
	stw 28,116(1)
.LVL1782:
.LBE10074:
.LBE10121:
.LBB10122:
.LBB10120:
.LBB10119:
	.loc 15 501 0
	bl _ZN5idStr8FreeDataEv
.LVL1783:
	.loc 4 3282 0
	lwz 28,84(1)
.LBE10119:
.LBE10120:
.LBE10122:
	subf 26,26,28
.LVL1784:
	addi 6,26,-1
.LVL1785:
.LBB10123:
.LBB10102:
	.loc 15 930 0
	cmpw 7,28,6
	bgt- 7,.L998
.LVL1786:
.LBB10099:
.LBB10096:
	.loc 15 374 0
	addi 26,28,1
.LBB10085:
.LBB10082:
	.loc 15 356 0
	stw 31,20(1)
.LBE10082:
.LBE10085:
.LBB10086:
.LBB10087:
	.loc 15 350 0
	cmpwi 7,26,20
.LBE10087:
.LBE10086:
.LBB10091:
.LBB10083:
	.loc 15 357 0
	stw 24,28(1)
	.loc 15 358 0
	stw 18,24(1)
.LBE10083:
.LBE10091:
.LBB10092:
.LBB10088:
	mr 3,18
.LBE10088:
.LBE10092:
.LBB10093:
.LBB10084:
	.loc 15 359 0
	stb 31,32(1)
.LVL1787:
.LBE10084:
.LBE10093:
.LBB10094:
.LBB10089:
	.loc 15 350 0
	bgt- 7,.L1049
.LVL1788:
.L999:
.LBE10089:
.LBE10094:
	.loc 15 375 0
	lwz 4,88(1)
	bl strcpy
.LBE10096:
.LBE10099:
.LBE10102:
.LBE10123:
.LBB10124:
.LBB10125:
.LBB10126:
.LBB10127:
	.loc 15 350 0
	lwz 0,92(1)
.LBE10127:
.LBE10126:
.LBE10125:
.LBE10124:
.LBB10138:
.LBB10103:
.LBB10100:
.LBB10097:
	.loc 15 376 0
	stw 28,20(1)
.LVL1789:
.LBE10097:
.LBE10100:
.LBE10103:
.LBE10138:
.LBB10139:
.LBB10134:
.LBB10131:
.LBB10128:
	.loc 15 350 0
	cmpw 7,0,26
	blt- 7,.L1050
.LVL1790:
.L1001:
.LBE10128:
.LBE10131:
	.loc 15 535 0
	lwz 3,88(1)
	mr 5,28
	lwz 4,24(1)
	bl memcpy
	.loc 15 536 0
	lwz 9,88(1)
.LBE10134:
.LBE10139:
.LBB10140:
.LBB10141:
.LBB10142:
	.loc 15 501 0
	addi 3,1,20
.LVL1791:
.LBE10142:
.LBE10141:
.LBE10140:
.LBB10145:
.LBB10135:
	.loc 15 536 0
	stbx 19,9,28
	.loc 15 537 0
	stw 28,84(1)
.LVL1792:
.LBE10135:
.LBE10145:
.LBB10146:
.LBB10144:
.LBB10143:
	.loc 15 501 0
	bl _ZN5idStr8FreeDataEv
.LVL1793:
.L995:
.LBE10143:
.LBE10144:
.LBE10146:
	.loc 4 3285 0
	lwz 5,120(1)
	mr 3,30
	lwz 6,88(1)
	addi 4,1,8
	bl _ZN4idAI21SpawnParticlesOnJointER17particleEmitter_sPKcS3_
.LBB10147:
.LBB10061:
	.loc 14 655 0
	lwz 28,4860(30)
.LBE10061:
.LBE10147:
	.loc 4 3286 0
	addi 26,30,4848
.LVL1794:
.LBB10148:
.LBB10062:
	.loc 14 655 0
	cmpwi 7,28,0
	beq- 7,.L1002
	lwz 0,4848(30)
	lwz 9,4852(30)
.L1003:
.LBB10046:
	.loc 14 659 0
	cmpw 7,9,0
	bne- 7,.L1046
	lwz 23,4856(30)
	mr 11,9
.L1005:
.LBB10043:
	.loc 14 662 0
	cmpwi 7,23,0
	bne- 7,.L1013
	.loc 14 663 0
	stw 17,4856(30)
	li 23,16
.L1013:
	.loc 14 665 0
	add 0,11,23
.LVL1795:
	.loc 14 666 0
	divw 0,0,23
.LVL1796:
.LBB10031:
.LBB10032:
	.loc 14 375 0
	mullw 23,0,23
.LVL1797:
	cmpwi 4,23,0
	ble- 4,.L1051
	.loc 14 380 0
	cmpw 7,23,11
	beq- 7,.L1052
.LVL1798:
	.loc 14 387 0
	cmpw 7,23,9
	.loc 14 386 0
	stw 23,4852(30)
	.loc 14 387 0
	bge- 7,.L1017
	.loc 14 388 0
	stw 23,4848(30)
.L1017:
	.loc 14 392 0
	mulli 3,23,12
	bl _Znaj
.LEHE39:
	beq- 4,.L1018
.LBB10033:
.LBB10034:
	.loc 3 163 0
	mtctr 23
.LBE10034:
.LBE10033:
	.loc 14 392 0
	mr 9,3
.L1019:
.LBB10036:
.LBB10035:
	.loc 3 161 0
	stw 31,0(9)
	.loc 3 162 0
	stw 31,4(9)
	.loc 3 163 0
	stw 27,8(9)
	addi 9,9,12
.LBE10035:
.LBE10036:
	.loc 14 392 0
	bdnz .L1019
.L1018:
	.loc 14 393 0
	lwz 0,4848(30)
	.loc 14 392 0
	stw 3,4860(30)
.LVL1799:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L1020
	li 11,0
	li 10,0
	b .L1021
.LVL1800:
.L1053:
	lwz 3,4860(30)
.LVL1801:
.L1021:
	.loc 14 394 0
	mr 9,28
	add 8,3,11
	lwzux 6,9,11
	.loc 14 393 0
	addi 10,10,1
.LVL1802:
	.loc 14 394 0
	lwz 0,8(9)
	lwz 7,4(9)
	stwx 6,3,11
	.loc 14 393 0
	addi 11,11,12
	.loc 14 394 0
	stw 7,4(8)
	stw 0,8(8)
	.loc 14 393 0
	lwz 0,0(26)
	cmpw 7,10,0
	blt+ 7,.L1053
.LVL1803:
.L1020:
	.loc 14 398 0
	cmpwi 7,28,0
	beq- 7,.L1054
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
	lwz 0,4848(30)
	lwz 28,4860(30)
.LVL1804:
.L1046:
	mulli 0,0,12
	add 28,28,0
.L1012:
.LBE10032:
.LBE10031:
.LBE10043:
.LBE10046:
	.loc 14 669 0
	lwz 9,12(1)
.LBE10062:
.LBE10148:
.LBB10149:
.LBB10150:
.LBB10151:
	.loc 15 501 0
	addi 3,1,84
.LBE10151:
.LBE10150:
.LBE10149:
.LBB10154:
.LBB10063:
	.loc 14 669 0
	lwz 0,16(1)
	lwz 11,8(1)
	stw 0,8(28)
	stw 11,0(28)
	stw 9,4(28)
	.loc 14 670 0
	lwz 9,4848(30)
	addi 0,9,1
	stw 0,4848(30)
.LVL1805:
.LEHB40:
.LBE10063:
.LBE10154:
.LBB10155:
.LBB10153:
.LBB10152:
	.loc 15 501 0
	bl _ZN5idStr8FreeDataEv
.LVL1806:
.L993:
.LBE10152:
.LBE10153:
.LBE10155:
.LBE10173:
.LBE10182:
	.loc 4 3289 0
	mr 3,22
	mr 4,21
	mr 5,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LEHE40:
	mr 29,3
.LVL1807:
.LBB10183:
.LBB10184:
.LBB10185:
	.loc 15 501 0
	addi 3,1,116
.LVL1808:
.LEHB41:
	bl _ZN5idStr8FreeDataEv
.LEHE41:
.LBE10185:
.LBE10184:
.LBE10183:
.LBE9990:
	.loc 4 3271 0
	cmpwi 7,29,0
	bne+ 7,.L1024
.LVL1809:
.L990:
.LBE10194:
	.loc 4 3291 0
	lwz 0,220(1)
	lwz 12,152(1)
	mtlr 0
	lwz 17,156(1)
	lwz 18,160(1)
	mtcrf 8,12
	lwz 19,164(1)
	lwz 20,168(1)
	lwz 21,172(1)
.LVL1810:
	lwz 22,176(1)
	lwz 23,180(1)
	lwz 24,184(1)
	lwz 25,188(1)
	lwz 26,192(1)
	lwz 27,196(1)
	lwz 28,200(1)
	lwz 29,204(1)
.LVL1811:
	lwz 30,208(1)
.LVL1812:
	lwz 31,212(1)
	addi 1,1,216
	.cfi_remember_state
.LCFI249:
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
.LVL1813:
.L1047:
.LCFI250:
	.cfi_restore_state
.LBB10195:
.LBB10191:
.LBB10186:
.LBB10174:
.LBB10156:
.LBB10026:
.LBB10022:
.LBB10019:
	.loc 15 351 0
	addi 3,1,84
	li 5,1
.LEHB42:
	bl _ZN5idStr10ReAllocateEib
.LEHE42:
.LVL1814:
	lwz 3,88(1)
	b .L994
.LVL1815:
.L998:
.LBE10019:
.LBE10022:
.LBE10026:
.LBE10156:
.LBB10157:
.LBB10104:
	.loc 15 933 0
	addi 3,1,20
	addi 4,1,84
	subf 5,6,28
.LEHB43:
	bl _ZNK5idStr3MidEii
.LEHE43:
.LVL1816:
	lwz 28,20(1)
.LBE10104:
.LBE10157:
.LBB10158:
.LBB10136:
.LBB10132:
.LBB10129:
	.loc 15 350 0
	lwz 0,92(1)
.LBE10129:
.LBE10132:
.LBE10136:
.LBE10158:
.LBB10159:
.LBB10105:
	.loc 15 933 0
	addi 26,28,1
.LVL1817:
.LBE10105:
.LBE10159:
.LBB10160:
.LBB10137:
.LBB10133:
.LBB10130:
	.loc 15 350 0
	cmpw 7,0,26
	bge+ 7,.L1001
.LVL1818:
.L1050:
	.loc 15 351 0
	addi 3,1,84
	mr 4,26
	li 5,0
.LEHB44:
	bl _ZN5idStr10ReAllocateEib
.LEHE44:
	b .L1001
.LVL1819:
.L1048:
.LBE10130:
.LBE10133:
.LBE10137:
.LBE10160:
.LBB10161:
.LBB10075:
.LBB10072:
.LBB10070:
	addi 3,1,116
	li 5,0
.LEHB45:
	bl _ZN5idStr10ReAllocateEib
.LEHE45:
.LVL1820:
	b .L996
.LVL1821:
.L1049:
.LBE10070:
.LBE10072:
.LBE10075:
.LBE10161:
.LBB10162:
.LBB10106:
.LBB10101:
.LBB10098:
.LBB10095:
.LBB10090:
	addi 3,1,20
	mr 4,26
	li 5,1
.LEHB46:
	bl _ZN5idStr10ReAllocateEib
.LVL1822:
	lwz 3,24(1)
	b .L999
.LVL1823:
.L1052:
.LBE10090:
.LBE10095:
.LBE10098:
.LBE10101:
.LBE10106:
.LBE10162:
.LBB10163:
.LBB10064:
.LBB10047:
.LBB10044:
.LBB10041:
.LBB10039:
	.loc 14 380 0
	mulli 9,9,12
	add 28,28,9
	b .L1012
.LVL1824:
.L1002:
.LBE10039:
.LBE10041:
.LBE10044:
.LBE10047:
	.loc 14 656 0
	lwz 9,4856(30)
.LBB10048:
.LBB10049:
	.loc 14 375 0
	cmpwi 4,9,0
.LBE10049:
.LBE10048:
	.loc 14 656 0
	mr 23,9
.LVL1825:
.LBB10058:
.LBB10056:
	.loc 14 375 0
	ble- 4,.L1055
	.loc 14 380 0
	lwz 0,4852(30)
	cmpw 7,9,0
	lwz 0,4848(30)
	beq- 7,.L1003
.LVL1826:
	.loc 14 387 0
	cmpw 7,9,0
	.loc 14 386 0
	stw 9,4852(30)
	.loc 14 387 0
	bge- 7,.L1007
	.loc 14 388 0
	stw 9,4848(30)
.L1007:
	.loc 14 392 0
	mulli 3,23,12
	bl _Znaj
.LEHE46:
.LVL1827:
	mr 28,3
	beq- 4,.L1008
.LBB10050:
.LBB10051:
	.loc 3 163 0
	mtctr 23
.LBE10051:
.LBE10050:
	.loc 14 392 0
	mr 9,3
.L1009:
.LBB10053:
.LBB10052:
	.loc 3 161 0
	stw 31,0(9)
	.loc 3 162 0
	stw 31,4(9)
	.loc 3 163 0
	stw 27,8(9)
	addi 9,9,12
.LBE10052:
.LBE10053:
	.loc 14 392 0
	bdnz .L1009
.L1008:
	.loc 14 393 0
	lwz 0,4848(30)
	li 9,0
	.loc 14 392 0
	stw 28,4860(30)
.LVL1828:
	.loc 14 393 0
	li 11,0
	cmpwi 7,0,0
	bgt+ 7,.L1045
	b .L1058
.LVL1829:
.L1057:
	lwz 28,4860(30)
.LVL1830:
.L1045:
	.loc 14 394 0
	lwz 0,8(9)
	add 10,28,9
	lwz 7,0(9)
	.loc 14 393 0
	addi 11,11,1
.LVL1831:
	.loc 14 394 0
	lwz 8,4(9)
	stwx 7,28,9
	.loc 14 393 0
	addi 9,9,12
	.loc 14 394 0
	stw 8,4(10)
	stw 0,8(10)
	.loc 14 393 0
	lwz 0,0(26)
	cmpw 7,11,0
	blt+ 7,.L1057
	lwz 9,4852(30)
	lwz 28,4860(30)
	b .L1003
.LVL1832:
.L1051:
.LBE10056:
.LBE10058:
.LBB10059:
.LBB10045:
.LBB10042:
.LBB10040:
.LBB10037:
.LBB10038:
	.loc 14 193 0
	cmpwi 7,28,0
	beq- 7,.L1015
	.loc 14 194 0
	mr 3,28
	bl _ZdaPv
.L1015:
	.loc 14 197 0
	stw 31,4860(30)
	.loc 14 199 0
	li 28,0
	.loc 14 198 0
	stw 31,4848(30)
	.loc 14 199 0
	stw 31,4852(30)
	b .L1012
.LVL1833:
.L1054:
.LBE10038:
.LBE10037:
	.loc 14 398 0
	lwz 0,4848(30)
	lwz 28,4860(30)
.LVL1834:
	mulli 0,0,12
	add 28,28,0
	b .L1012
.LVL1835:
.L1055:
.LBE10040:
.LBE10042:
.LBE10045:
.LBE10059:
.LBB10060:
.LBB10057:
.LBB10054:
.LBB10055:
	.loc 14 198 0
	stw 28,4848(30)
	.loc 14 199 0
	li 9,0
.LVL1836:
	stw 28,4852(30)
	li 11,0
	b .L1005
.LVL1837:
.L1058:
.LBE10055:
.LBE10054:
	.loc 14 393 0
	lwz 9,4852(30)
	b .L1003
.LVL1838:
.L1038:
	mr 31,3
.L1031:
.LVL1839:
.LBE10057:
.LBE10060:
.LBE10064:
.LBE10163:
.LBE10174:
.LBE10186:
.LBB10187:
.LBB10188:
.LBB10189:
	.loc 15 501 0
	addi 3,1,116
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB47:
	bl _Unwind_Resume
.LEHE47:
.LVL1840:
.L1039:
	mr 31,3
.L1027:
.LVL1841:
.LBE10189:
.LBE10188:
.LBE10187:
.LBB10190:
.LBB10175:
.LBB10164:
.LBB10165:
.LBB10166:
	addi 3,1,84
	bl _ZN5idStr8FreeDataEv
	b .L1031
.LVL1842:
.L1040:
	mr 31,3
.LVL1843:
.LBE10166:
.LBE10165:
.LBE10164:
.LBB10167:
.LBB10168:
.LBB10169:
	addi 3,1,52
.LVL1844:
	bl _ZN5idStr8FreeDataEv
.LVL1845:
	b .L1027
.LVL1846:
.L1041:
	mr 31,3
.LVL1847:
.LBE10169:
.LBE10168:
.LBE10167:
.LBB10170:
.LBB10171:
.LBB10172:
	addi 3,1,20
.LVL1848:
	bl _ZN5idStr8FreeDataEv
.LVL1849:
	b .L1027
.LBE10172:
.LBE10171:
.LBE10170:
.LBE10175:
.LBE10190:
.LBE10191:
.LBE10195:
	.cfi_endproc
.LFE2935:
	.section	.gcc_except_table
.LLSDA2935:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2935-.LLSDACSB2935
.LLSDACSB2935:
	.uleb128 .LEHB38-.LFB2935
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB2935
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L1039-.LFB2935
	.uleb128 0
	.uleb128 .LEHB40-.LFB2935
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L1038-.LFB2935
	.uleb128 0
	.uleb128 .LEHB41-.LFB2935
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB2935
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L1038-.LFB2935
	.uleb128 0
	.uleb128 .LEHB43-.LFB2935
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L1039-.LFB2935
	.uleb128 0
	.uleb128 .LEHB44-.LFB2935
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L1041-.LFB2935
	.uleb128 0
	.uleb128 .LEHB45-.LFB2935
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L1040-.LFB2935
	.uleb128 0
	.uleb128 .LEHB46-.LFB2935
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L1039-.LFB2935
	.uleb128 0
	.uleb128 .LEHB47-.LFB2935
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE2935:
	.section	".text"
	.size	_ZN4idAI14SpawnParticlesEPKc, .-_ZN4idAI14SpawnParticlesEPKc
	.align 2
	.globl _ZN4idAI13PlayCinematicEv
	.type	_ZN4idAI13PlayCinematicEv, @function
_ZN4idAI13PlayCinematicEv:
.LFB2938:
	.loc 4 3442 0
	.cfi_startproc
.LVL1850:
	mflr 0
	stwu 1,-40(1)
.LCFI251:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB10224:
	.loc 4 3445 0
	lwz 9,4688(3)
	lwz 0,4684(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	cmpw 7,9,0
	blt- 7,.L1060
.LBB10225:
.LBB10226:
	.loc 4 3446 0
	lis 9,g_debugCinematic+44@ha
.LBE10226:
.LBE10225:
	.loc 4 3447 0
	lis 30,gameLocal@ha
.LBB10228:
.LBB10227:
	.loc 20 142 0
	lwz 9,g_debugCinematic+44@l(9)
.LBE10227:
.LBE10228:
	.loc 4 3447 0
	la 30,gameLocal@l(30)
	.loc 4 3446 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L1080
.LVL1851:
.L1061:
.LBB10229:
.LBB10230:
.LBB10231:
.LBB10232:
	.loc 11 241 0
	lis 4,.LC113@ha
	addi 3,31,100
	la 4,.LC113@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1852:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1073
.LVL1853:
.LBB10233:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1854:
.L1062:
.LBE10233:
.LBE10232:
.LBE10231:
	.loc 11 257 0
	bl atoi
.LBE10230:
.LBE10229:
	.loc 4 3449 0
	cmpwi 7,3,0
	beq- 7,.L1082
.L1063:
	.loc 4 3452 0
	li 29,0
	.loc 4 3453 0
	mr 3,30
	.loc 4 3452 0
	stw 29,4688(31)
	.loc 4 3453 0
	bl _ZNK11idGameLocal14GetLocalPlayerEv
	mr 4,3
	mr 3,31
	bl _ZNK8idEntity15ActivateTargetsEPS_
	.loc 4 3454 0
	lwz 0,192(31)
	rlwimi 0,29,23,8,8
	stw 0,192(31)
.LVL1855:
.L1059:
.LBE10224:
	.loc 4 3508 0
	lwz 0,44(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1856:
	addi 1,1,40
	.cfi_remember_state
.LCFI252:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1857:
.L1082:
.LCFI253:
	.cfi_restore_state
.LBB10265:
	.loc 4 3450 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,76(9)
	mtctr 0
	bctrl
	b .L1063
.LVL1858:
.L1060:
	.loc 4 3458 0
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	bctrl
	.loc 4 3459 0
	lwz 4,4688(31)
	.loc 4 3461 0
	li 0,0
	.loc 4 3464 0
	lis 3,.LC114@ha
	.loc 4 3459 0
	addi 4,4,1
	.loc 4 3461 0
	stb 0,4692(31)
	.loc 4 3459 0
	stw 4,4688(31)
	.loc 4 3464 0
	la 3,.LC114@l(3)
	.loc 4 3462 0
	stb 0,3921(31)
	.loc 4 3464 0
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,3
.LVL1859:
.LBB10237:
.LBB10238:
	.loc 11 221 0
	addi 3,31,100
.LVL1860:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1861:
	.loc 11 222 0
	cmpwi 0,3,0
	beq- 0,.L1065
.LVL1862:
.LBB10239:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 29,4(9)
.LVL1863:
.LBE10239:
.LBE10238:
.LBE10237:
	.loc 4 3465 0
	cmpwi 7,29,0
	beq- 7,.L1065
.LBB10240:
.LBB10241:
	.loc 4 3470 0
	lis 9,g_debugCinematic+44@ha
.LBE10241:
.LBE10240:
	.loc 4 3471 0
	lis 30,gameLocal@ha
.LBB10243:
.LBB10242:
	.loc 20 142 0
	lwz 9,g_debugCinematic+44@l(9)
.LBE10242:
.LBE10243:
	.loc 4 3471 0
	la 30,gameLocal@l(30)
	.loc 4 3470 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L1081
.LVL1864:
.L1067:
	.loc 4 3474 0
	li 28,0
	.loc 4 3476 0
	addi 3,31,3728
	.loc 4 3474 0
	stw 28,3764(31)
	.loc 4 3475 0
	stw 28,3768(31)
	.loc 4 3476 0
	bl _ZN11idAnimState10BecomeIdleEv
	.loc 4 3478 0
	stw 28,3892(31)
	.loc 4 3479 0
	stw 28,3896(31)
	.loc 4 3480 0
	addi 3,31,3856
	bl _ZN11idAnimState10BecomeIdleEv
	.loc 4 3484 0
	li 0,100
	.loc 4 3482 0
	stw 28,3828(31)
	.loc 4 3484 0
	lis 4,AI_PlayAnim@ha
	.loc 4 3483 0
	stw 28,3832(31)
.LVL1865:
	.loc 4 3484 0
	la 4,AI_PlayAnim@l(4)
	stw 0,8(1)
	li 0,1
	addi 5,1,8
	addi 6,1,16
	stw 0,12(1)
	mr 3,31
	li 0,115
	stw 29,20(1)
	stw 0,16(1)
	bl _ZN7idClass12ProcessEventEPK10idEventDef10idEventArgS3_
	.loc 4 3487 0
	addi 3,31,636
	bl _ZN10idAnimator11ForceUpdateEv
	.loc 4 3490 0
	mr 3,31
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
	.loc 4 3491 0
	mr 3,31
	bl _ZN8idEntity13UpdateVisualsEv
	.loc 4 3492 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
.LVL1866:
.LBB10244:
.LBB10245:
	.loc 7 634 0
	lwz 0,2424(31)
	rlwinm 9,0,0,20,31
.LVL1867:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1083
.LVL1868:
.L1068:
.LBE10245:
.LBE10244:
	.loc 4 3507 0
	lwz 0,192(31)
	li 9,1
	rlwimi 0,9,23,8,8
	stw 0,192(31)
.L1088:
.LBE10265:
	.loc 4 3508 0
	lwz 0,44(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
.LVL1869:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1870:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI254:
	.cfi_def_cfa_offset 0
	blr
.LVL1871:
.L1080:
.LCFI255:
	.cfi_restore_state
.LBB10266:
	.loc 4 3447 0
	addis 9,30,0x25
	lwz 29,1996(9)
	bl _ZNK8idEntity7GetNameEv
.LVL1872:
	lis 4,.LC112@ha
	mr 6,3
	la 4,.LC112@l(4)
	mr 3,30
	mr 5,29
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	b .L1061
.LVL1873:
.L1081:
	.loc 4 3471 0
	addis 9,30,0x25
	mr 3,31
.LVL1874:
	lwz 28,1996(9)
	bl _ZNK8idEntity7GetNameEv
	lis 4,.LC116@ha
	mr 6,3
	la 4,.LC116@l(4)
	mr 3,30
	mr 5,28
	mr 7,29
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	b .L1067
.LVL1875:
.L1083:
.LBB10247:
.LBB10246:
	.loc 7 636 0
	addi 9,9,132
.LVL1876:
	slwi 9,9,2
.LVL1877:
	add 9,30,9
.LBE10246:
.LBE10247:
	.loc 4 3494 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1068
	.loc 4 3496 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
.LVL1878:
.LBB10248:
.LBB10249:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL1879:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1084
.LVL1880:
.L1069:
.LBE10249:
.LBE10248:
	.loc 4 3499 0
	lwz 9,0(3)
	lwz 0,92(9)
	mtctr 0
	bctrl
	bl _ZN10idAnimator11ForceUpdateEv
.LVL1881:
.LBB10251:
.LBB10252:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL1882:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1085
.LVL1883:
.L1070:
.LBE10252:
.LBE10251:
	.loc 4 3502 0
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
.LVL1884:
.LBB10254:
.LBB10255:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL1885:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1086
.LVL1886:
.L1071:
.LBE10255:
.LBE10254:
	.loc 4 3503 0
	bl _ZN8idEntity13UpdateVisualsEv
.LVL1887:
.LBB10257:
.LBB10258:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL1888:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1087
.LVL1889:
.L1072:
.LBE10258:
.LBE10257:
	.loc 4 3504 0
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 4 3507 0
	lwz 0,192(31)
	li 9,1
	rlwimi 0,9,23,8,8
	stw 0,192(31)
	b .L1088
.LVL1890:
.L1073:
.LBB10260:
.LBB10236:
.LBB10235:
.LBB10234:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL1891:
	la 3,.LC7@l(3)
	b .L1062
.LVL1892:
.L1087:
.LBE10234:
.LBE10235:
.LBE10236:
.LBE10260:
.LBB10261:
.LBB10259:
	.loc 7 636 0
	addi 9,9,132
.LVL1893:
	slwi 9,9,2
.LVL1894:
	add 30,30,9
	lwz 3,4(30)
	b .L1072
.LVL1895:
.L1086:
.LBE10259:
.LBE10261:
.LBB10262:
.LBB10256:
	addi 9,9,132
.LVL1896:
	slwi 9,9,2
.LVL1897:
	add 9,30,9
	lwz 3,4(9)
	b .L1071
.LVL1898:
.L1085:
.LBE10256:
.LBE10262:
.LBB10263:
.LBB10253:
	addi 9,9,132
.LVL1899:
	slwi 9,9,2
.LVL1900:
	add 9,30,9
	lwz 3,4(9)
	b .L1070
.LVL1901:
.L1084:
.LBE10253:
.LBE10263:
.LBB10264:
.LBB10250:
	addi 9,9,132
.LVL1902:
	slwi 9,9,2
.LVL1903:
	add 9,30,9
	lwz 3,4(9)
	b .L1069
.LVL1904:
.L1065:
.LBE10250:
.LBE10264:
	.loc 4 3466 0
	lwz 5,4688(31)
	lis 3,gameLocal@ha
.LVL1905:
	lwz 6,72(31)
	lis 4,.LC115@ha
	la 3,gameLocal@l(3)
	la 4,.LC115@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	.loc 4 3467 0
	b .L1059
.LBE10266:
	.cfi_endproc
.LFE2938:
	.size	_ZN4idAI13PlayCinematicEv, .-_ZN4idAI13PlayCinematicEv
	.align 2
	.globl _ZN4idAI6TalkToEP7idActor
	.type	_ZN4idAI6TalkToEP7idActor, @function
_ZN4idAI6TalkToEP7idActor:
.LFB2941:
	.loc 4 3585 0
	.cfi_startproc
.LVL1906:
	.loc 4 3586 0
	lwz 0,4676(3)
	cmpwi 7,0,2
	bnelr+ 7
.LVL1907:
.LBB10267:
.LBB10268:
	.loc 7 605 0
	cmpwi 7,4,0
	beq- 7,.L1093
	.loc 7 608 0
	lwz 9,4(4)
	lis 10,gameLocal@ha
.LBE10268:
.LBE10267:
.LBB10272:
.LBB10273:
	.loc 18 237 0
	lwz 11,5176(3)
.LBE10273:
.LBE10272:
.LBB10276:
.LBB10269:
	.loc 7 608 0
	la 10,gameLocal@l(10)
	addi 0,9,4228
	slwi 0,0,2
.LBE10269:
.LBE10276:
.LBB10277:
.LBB10274:
	.loc 18 237 0
	cmpwi 7,11,0
.LBE10274:
.LBE10277:
.LBB10278:
.LBB10270:
	.loc 7 608 0
	add 10,10,0
	lwz 0,4(10)
	slwi 0,0,12
	or 9,0,9
	stw 9,4680(3)
.LVL1908:
.LBE10270:
.LBE10278:
.LBB10279:
.LBB10275:
	.loc 18 237 0
	beqlr- 7
	.loc 18 238 0
	li 0,1
	stw 0,0(11)
	blr
.LVL1909:
.L1093:
.LBE10275:
.LBE10279:
.LBB10280:
.LBB10281:
	.loc 18 237 0
	lwz 9,5176(3)
.LBE10281:
.LBE10280:
.LBB10283:
.LBB10271:
	.loc 7 606 0
	stw 4,4680(3)
.LVL1910:
.LBE10271:
.LBE10283:
.LBB10284:
.LBB10282:
	.loc 18 237 0
	cmpwi 7,9,0
	beqlr- 7
	.loc 18 238 0
	stw 4,0(9)
	blr
.LBE10282:
.LBE10284:
	.cfi_endproc
.LFE2941:
	.size	_ZN4idAI6TalkToEP7idActor, .-_ZN4idAI6TalkToEP7idActor
	.align 2
	.globl _ZNK4idAI8GetEnemyEv
	.type	_ZNK4idAI8GetEnemyEv, @function
_ZNK4idAI8GetEnemyEv:
.LFB2942:
	.loc 4 3603 0
	.cfi_startproc
.LVL1911:
.LBB10285:
.LBB10286:
	.loc 7 634 0
	lwz 0,5120(3)
	.loc 7 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 638 0
	li 3,0
.LVL1912:
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL1913:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bnelr- 7
	.loc 7 636 0
	addi 11,11,132
.LVL1914:
	slwi 11,11,2
.LVL1915:
	add 9,9,11
	lwz 3,4(9)
.LBE10286:
.LBE10285:
	.loc 4 3605 0
	blr
	.cfi_endproc
.LFE2942:
	.size	_ZNK4idAI8GetEnemyEv, .-_ZNK4idAI8GetEnemyEv
	.align 2
	.globl _ZNK4idAI12GetTalkStateEv
	.type	_ZNK4idAI12GetTalkStateEv, @function
_ZNK4idAI12GetTalkStateEv:
.LFB2943:
	.loc 4 3612 0
	.cfi_startproc
.LVL1916:
	mflr 0
	stwu 1,-16(1)
.LCFI256:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 4 3613 0
	lwz 0,4676(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1098
.LVL1917:
.LBB10287:
.LBB10288:
	.loc 18 249 0 discriminator 1
	lwz 9,5192(3)
	cmpwi 7,9,0
	beq- 7,.L1098
.LBE10288:
.LBE10287:
	.loc 4 3613 0
	lwz 0,0(9)
	.loc 4 3614 0
	li 3,1
.LVL1918:
	.loc 4 3613 0
	cmpwi 7,0,0
	beq- 7,.L1098
.LVL1919:
.L1099:
	.loc 4 3620 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1920:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI257:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL1921:
.L1098:
.LCFI258:
	.cfi_restore_state
	.loc 4 3616 0
	mr 3,31
	bl _ZNK8idEntity8IsHiddenEv
	cmpwi 7,3,0
	.loc 4 3617 0
	li 3,0
	.loc 4 3616 0
	bne- 7,.L1099
	.loc 4 3620 0
	lwz 0,20(1)
	.loc 4 3619 0
	lwz 3,4676(31)
	.loc 4 3620 0
	mtlr 0
	lwz 31,12(1)
.LVL1922:
	addi 1,1,16
	.cfi_restore 31
.LCFI259:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2943:
	.size	_ZNK4idAI12GetTalkStateEv, .-_ZNK4idAI12GetTalkStateEv
	.align 2
	.globl _ZNK4idAI18EnemyPositionValidEv
	.type	_ZNK4idAI18EnemyPositionValidEv, @function
_ZNK4idAI18EnemyPositionValidEv:
.LFB2946:
	.loc 4 3657 0
	.cfi_startproc
.LVL1923:
	mflr 0
	stwu 1,-160(1)
.LCFI260:
	.cfi_def_cfa_offset 160
	.cfi_register 65, 0
.LBB10300:
.LBB10301:
.LBB10302:
	.loc 7 635 0
	lis 9,gameLocal@ha
.LBE10302:
.LBE10301:
.LBE10300:
	.loc 4 3657 0
	stw 31,156(1)
.LBB10337:
.LBB10306:
.LBB10303:
	.loc 7 635 0
	la 9,gameLocal@l(9)
.LBE10303:
.LBE10306:
.LBE10337:
	.loc 4 3657 0
	stw 0,164(1)
	.loc 4 3657 0
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL1924:
.LBB10338:
.LBB10307:
.LBB10304:
	.loc 7 634 0
	lwz 0,5120(3)
	.loc 4 3663 0
	li 3,0
.LVL1925:
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL1926:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1110
.LVL1927:
.L1105:
.LBE10304:
.LBE10307:
.LBE10338:
	.loc 4 3677 0
	lwz 0,164(1)
	lwz 31,156(1)
.LVL1928:
	mtlr 0
	addi 1,1,160
	.cfi_remember_state
.LCFI261:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL1929:
.L1110:
.LCFI262:
	.cfi_restore_state
.LBB10339:
.LBB10308:
.LBB10305:
	.loc 7 636 0
	addi 11,11,132
.LVL1930:
	slwi 11,11,2
.LVL1931:
	add 9,9,11
.LBE10305:
.LBE10308:
	.loc 4 3662 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1105
.LVL1932:
.LBB10309:
.LBB10310:
	.loc 18 249 0
	lwz 9,5196(31)
	cmpwi 7,9,0
	beq- 7,.L1106
.LBE10310:
.LBE10309:
	.loc 4 3666 0
	lwz 0,0(9)
	.loc 4 3667 0
	li 3,1
	.loc 4 3666 0
	cmpwi 7,0,0
	bne+ 7,.L1105
.L1106:
	.loc 4 3670 0
	addi 3,1,20
	mr 4,31
	bl _ZNK7idActor14GetEyePositionEv
.LVL1933:
.LBB10311:
.LBB10312:
	.loc 6 452 0
	lfs 9,5128(31)
	lfs 13,5140(31)
.LBE10312:
.LBE10311:
.LBB10320:
.LBB10321:
	.loc 10 334 0
	lis 3,gameLocal+2311032@ha
.LBE10321:
.LBE10320:
.LBB10327:
.LBB10315:
	.loc 6 452 0
	lfs 10,5132(31)
.LBE10315:
.LBE10327:
.LBB10328:
.LBB10322:
	.loc 10 334 0
	lis 8,mat3_identity@ha
.LBE10322:
.LBE10328:
.LBB10329:
.LBB10316:
	.loc 6 452 0
	lfs 0,5144(31)
	fadds 13,9,13
	lfs 11,5124(31)
.LBE10316:
.LBE10329:
.LBB10330:
.LBB10323:
	.loc 10 334 0
	addi 4,1,32
.LBE10323:
.LBE10330:
.LBB10331:
.LBB10317:
	.loc 6 452 0
	lfs 12,5136(31)
	fadds 0,10,0
.LVL1934:
.LBE10317:
.LBE10331:
.LBB10332:
.LBB10324:
	.loc 10 334 0
	addi 5,1,20
	addi 6,1,8
.LBE10324:
.LBE10332:
.LBB10333:
.LBB10318:
	.loc 6 452 0
	fadds 12,11,12
.LBE10318:
.LBE10333:
.LBB10334:
.LBB10325:
	.loc 10 334 0
	li 9,2
	mr 10,31
	la 3,gameLocal+2311032@l(3)
	li 7,0
	la 8,mat3_identity@l(8)
.LBE10325:
.LBE10334:
.LBB10335:
.LBB10319:
.LBB10313:
.LBB10314:
	.loc 6 397 0
	stfs 13,12(1)
	.loc 6 398 0
	stfs 0,16(1)
.LVL1935:
	.loc 6 396 0
	stfs 12,8(1)
.LBE10314:
.LBE10313:
.LBE10319:
.LBE10335:
.LBB10336:
.LBB10326:
	.loc 10 334 0
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LVL1936:
.LBE10326:
.LBE10336:
.LBE10339:
	.loc 4 3677 0
	lwz 0,164(1)
.LBB10340:
	.loc 4 3671 0
	lis 9,.LC0@ha
	lfs 13,32(1)
	lfs 0,.LC0@l(9)
.LBE10340:
	.loc 4 3677 0
	mtlr 0
	lwz 31,156(1)
.LVL1937:
.LBB10341:
	.loc 4 3671 0
	fcmpu 7,13,0
.LBE10341:
	.loc 4 3677 0
	addi 1,1,160
	.cfi_restore 31
.LCFI263:
	.cfi_def_cfa_offset 0
.LBB10342:
	.loc 4 3671 0
	mfcr 3
	rlwinm 3,3,29,1
.LBE10342:
	.loc 4 3677 0
	blr
	.cfi_endproc
.LFE2946:
	.size	_ZNK4idAI18EnemyPositionValidEv, .-_ZNK4idAI18EnemyPositionValidEv
	.align 2
	.globl _ZN4idAI16SetEnemyPositionEv
	.type	_ZN4idAI16SetEnemyPositionEv, @function
_ZN4idAI16SetEnemyPositionEv:
.LFB2947:
	.loc 4 3684 0
	.cfi_startproc
.LVL1938:
	mflr 0
	stwu 1,-208(1)
.LCFI264:
	.cfi_def_cfa_offset 208
	.cfi_register 65, 0
.LBB10343:
.LBB10344:
.LBB10345:
	.loc 7 635 0
	lis 9,gameLocal@ha
.LBE10345:
.LBE10344:
.LBE10343:
	.loc 4 3684 0
	stw 31,180(1)
.LBB10437:
.LBB10349:
.LBB10346:
	.loc 7 635 0
	la 9,gameLocal@l(9)
.LBE10346:
.LBE10349:
.LBE10437:
	.loc 4 3684 0
	stw 0,212(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -28
.LVL1939:
	stfd 29,184(1)
	stfd 30,192(1)
	stfd 31,200(1)
	stw 27,164(1)
	stw 28,168(1)
	stw 29,172(1)
	stw 30,176(1)
.LBB10438:
.LBB10350:
.LBB10347:
	.loc 7 634 0
	lwz 0,5120(3)
	rlwinm 11,0,0,20,31
.LVL1940:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1131
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
.LVL1941:
.L1111:
.LBE10347:
.LBE10350:
.LBE10438:
	.loc 4 3771 0
	lwz 0,212(1)
	lwz 27,164(1)
	mtlr 0
	lwz 28,168(1)
	lwz 29,172(1)
	lwz 30,176(1)
	lwz 31,180(1)
.LVL1942:
	lfd 29,184(1)
	lfd 30,192(1)
	lfd 31,200(1)
	addi 1,1,208
	.cfi_remember_state
.LCFI265:
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
.LVL1943:
.L1131:
.LCFI266:
	.cfi_restore_state
.LBB10439:
.LBB10351:
.LBB10348:
	.loc 7 636 0
	addi 11,11,132
.LVL1944:
	slwi 11,11,2
.LVL1945:
	add 9,9,11
	lwz 30,4(9)
.LBE10348:
.LBE10351:
	.loc 4 3693 0
	cmpwi 7,30,0
	beq- 7,.L1111
.LVL1946:
.LBB10352:
.LBB10353:
	.loc 6 424 0
	lwz 11,5160(3)
.LBE10353:
.LBE10352:
	.loc 4 3698 0
	mr 4,30
.LBB10355:
.LBB10354:
	.loc 6 425 0
	lwz 9,5164(3)
	.loc 6 426 0
	lwz 0,5168(3)
	.loc 6 424 0
	stw 11,5148(3)
	.loc 6 425 0
	stw 9,5152(3)
	.loc 6 426 0
	stw 0,5156(3)
.LBE10354:
.LBE10355:
	.loc 4 3698 0
	addi 3,1,32
.LVL1947:
	bl _ZNK7idActor9EyeOffsetEv
.LVL1948:
.LBB10356:
.LBB10357:
	.loc 6 424 0
	lwz 0,32(1)
.LBE10357:
.LBE10356:
	.loc 4 3699 0
	mr 3,30
.LBB10359:
.LBB10358:
	.loc 6 424 0
	stw 0,5136(31)
	.loc 6 425 0
	lwz 0,36(1)
	stw 0,5140(31)
	.loc 6 426 0
	lwz 0,40(1)
	stw 0,5144(31)
.LBE10358:
.LBE10359:
	.loc 4 3699 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL1949:
	.loc 4 3700 0
	lwz 0,3952(31)
.LBB10360:
.LBB10361:
	.loc 6 424 0
	lwz 11,0(3)
.LBE10361:
.LBE10360:
	.loc 4 3700 0
	cmpwi 7,0,3
.LBB10363:
.LBB10362:
	.loc 6 424 0
	stw 11,5124(31)
	.loc 6 425 0
	lwz 9,4(3)
	stw 9,5128(31)
	.loc 6 426 0
	lwz 0,8(3)
	stw 0,5132(31)
.LBE10362:
.LBE10363:
	.loc 4 3700 0
	bne- 7,.L1113
.LVL1950:
.LBB10364:
.LBB10365:
	.loc 6 424 0
	stw 11,44(1)
	.loc 6 425 0
	stw 9,48(1)
	.loc 6 426 0
	stw 0,52(1)
.LVL1951:
.L1114:
.LBE10365:
.LBE10364:
.LBB10366:
	.loc 4 3719 0
	lwz 0,3944(31)
	cmpwi 7,0,0
	beq- 7,.L1132
.LBB10367:
	.loc 4 3728 0
	lis 9,.LC0@ha
	mr 3,31
	lfs 31,.LC0@l(9)
	addi 4,31,5124
	.loc 4 3727 0
	lwz 28,4004(31)
.LVL1952:
	.loc 4 3728 0
	fmr 1,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL1953:
	.loc 4 3729 0
	mr. 29,3
	beq- 0,.L1133
.LVL1954:
.L1119:
.LBB10368:
.LBB10369:
	.loc 4 3739 0
	li 4,0
	addi 3,31,4216
	bl _ZNK15idPhysics_Actor9GetOriginEi
	.loc 4 3740 0
	lis 9,.LC78@ha
	lfs 1,.LC78@l(9)
	mr 4,3
	.loc 4 3739 0
	mr 27,3
.LVL1955:
	.loc 4 3740 0
	mr 3,31
.LVL1956:
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL1957:
	.loc 4 3741 0
	addi 4,1,56
	.loc 4 3740 0
	mr 5,3
.LVL1958:
	.loc 4 3741 0
	mr 6,27
	mr 3,31
.LVL1959:
	mr 7,29
	addi 8,1,44
	bl _ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
.LVL1960:
	.loc 4 3744 0
	lwz 0,3956(31)
	.loc 4 3741 0
	cmpwi 7,3,0
	beq- 7,.L1121
.LVL1961:
	.loc 4 3744 0
	cmpwi 7,0,3
.LBB10370:
.LBB10371:
	.loc 6 424 0
	lwz 0,44(1)
	stw 0,5148(31)
	.loc 6 425 0
	lwz 0,48(1)
	stw 0,5152(31)
	.loc 6 426 0
	lwz 0,52(1)
	stw 0,5156(31)
.LVL1962:
.LBE10371:
.LBE10370:
	.loc 4 3744 0
	bne+ 7,.L1111
.LVL1963:
.LBB10372:
.LBB10373:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L1134
	.loc 18 238 0
	li 0,0
	mr 28,29
	stw 0,0(9)
	b .L1118
.LVL1964:
.L1113:
.LBE10373:
.LBE10372:
.LBE10369:
.LBE10368:
.LBE10367:
.LBE10366:
	.loc 4 3704 0
	lis 9,.LC20@ha
	addi 4,1,44
	lfs 1,.LC20@l(9)
	mr 3,30
.LVL1965:
	bl _ZNK8idEntity11GetFloorPosEfR6idVec3
	.loc 4 3705 0
	lwz 9,0(30)
	.loc 4 3704 0
	mr 29,3
.LVL1966:
	.loc 4 3705 0
	mr 3,30
.LVL1967:
	lwz 0,264(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	bne- 7,.L1115
	.loc 4 3710 0
	cmpwi 7,29,0
	bne- 7,.L1114
.L1115:
	.loc 4 3711 0
	lwz 0,3956(31)
	cmpwi 7,0,3
	bne+ 7,.L1111
.LVL1968:
.LBB10398:
.LBB10399:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L1111
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LBE10399:
.LBE10398:
.LBE10439:
	.loc 4 3771 0
	lwz 0,212(1)
	lwz 27,164(1)
	mtlr 0
	lwz 28,168(1)
	lwz 29,172(1)
.LVL1969:
	lwz 30,176(1)
	lwz 31,180(1)
.LVL1970:
	lfd 29,184(1)
	lfd 30,192(1)
	lfd 31,200(1)
	addi 1,1,208
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI267:
	.cfi_def_cfa_offset 0
	blr
.LVL1971:
.L1133:
.LCFI268:
	.cfi_restore_state
.LBB10440:
.LBB10400:
.LBB10389:
	.loc 4 3730 0
	fmr 1,31
	mr 3,31
.LVL1972:
	addi 4,31,5160
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL1973:
.LBB10381:
.LBB10382:
	.loc 6 424 0
	lwz 11,5160(31)
.LBE10382:
.LBE10381:
.LBB10384:
	.loc 4 3733 0
	mr. 29,3
.LBE10384:
.LBB10385:
.LBB10383:
	.loc 6 425 0
	lwz 9,5164(31)
	.loc 6 426 0
	lwz 0,5168(31)
	.loc 6 424 0
	stw 11,44(1)
	.loc 6 425 0
	stw 9,48(1)
	.loc 6 426 0
	stw 0,52(1)
.LBE10383:
.LBE10385:
.LBB10386:
	.loc 4 3733 0
	bne- 0,.L1119
	.loc 4 3734 0
	lwz 0,3956(31)
	cmpwi 7,0,3
	bne+ 7,.L1111
.LVL1974:
.L1130:
.LBB10378:
.LBB10375:
.LBB10376:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L1129
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LVL1975:
.L1118:
.LBE10376:
.LBE10375:
.LBE10378:
.LBE10386:
.LBE10389:
.LBE10400:
.LBB10401:
	.loc 4 3753 0
	lwz 0,3956(31)
	cmpwi 7,0,3
	bne- 7,.L1111
.LVL1976:
.L1129:
	lwz 0,3944(31)
.L1126:
.LBB10402:
	.loc 4 3754 0
	cmpwi 7,0,0
	beq- 7,.L1128
	.loc 4 3757 0
	cmpwi 7,29,0
	beq- 7,.L1125
.LBB10403:
.LBB10404:
	.loc 6 424 0
	lwz 11,5148(31)
	.loc 6 425 0
	lwz 9,5152(31)
	.loc 6 426 0
	lwz 0,5156(31)
.LBE10404:
.LBE10403:
	.loc 4 3758 0
	stw 28,4004(31)
.LVL1977:
.LBB10406:
.LBB10405:
	.loc 6 424 0
	stw 11,3964(31)
	.loc 6 425 0
	stw 9,3968(31)
	.loc 6 426 0
	stw 0,3972(31)
.LVL1978:
.L1125:
.LBE10405:
.LBE10406:
.LBB10407:
	.loc 4 3762 0
	lwz 0,3952(31)
	cmpwi 7,0,3
	bne+ 7,.L1111
.LBB10408:
	.loc 4 3765 0
	mr 4,30
	addi 3,1,20
.LBE10408:
	.loc 4 3764 0
	lfs 30,3964(31)
.LVL1979:
.LBB10429:
	.loc 4 3766 0
	addi 30,31,3964
.LBE10429:
	.loc 4 3764 0
	lfs 29,3968(31)
.LVL1980:
	lfs 31,3972(31)
.LVL1981:
.LBB10430:
	.loc 4 3765 0
	bl _ZNK7idActor9EyeOffsetEv
.LVL1982:
	lwz 0,4512(31)
	lis 9,.LC65@ha
	lfs 0,.LC65@l(9)
	.loc 4 3766 0
	mr 5,30
	.loc 4 3765 0
	xoris 0,0,0x8000
	.loc 4 3766 0
	addi 6,1,8
	.loc 4 3765 0
	stw 0,156(1)
	lis 0,0x4330
	stw 0,152(1)
	.loc 4 3766 0
	li 7,1000
	li 8,1000
	li 9,1
	.loc 4 3765 0
	lfd 10,152(1)
	.loc 4 3766 0
	addi 10,1,92
.LBB10409:
.LBB10410:
	.loc 6 431 0
	lfs 11,3972(31)
.LBE10410:
.LBE10409:
	.loc 4 3766 0
	mr 3,31
	.loc 4 3765 0
	fsub 10,10,0
	lfs 0,28(1)
.LBB10419:
.LBB10415:
	.loc 6 431 0
	lfs 13,3968(31)
	lfs 12,3964(31)
.LBE10415:
.LBE10419:
	.loc 4 3765 0
	frsp 10,10
	.loc 4 3766 0
	lwz 4,3944(31)
.LBB10420:
.LBB10416:
	.loc 6 431 0
	fsubs 13,29,13
.LVL1983:
	fsubs 12,30,12
.LBE10416:
.LBE10420:
	.loc 4 3765 0
	fadds 0,10,0
.LBB10421:
.LBB10417:
.LBB10411:
.LBB10412:
	.loc 6 397 0
	stfs 13,12(1)
	.loc 6 396 0
	stfs 12,8(1)
.LBE10412:
.LBE10411:
.LBE10417:
.LBE10421:
	.loc 4 3765 0
	fadds 0,31,0
.LBB10422:
.LBB10418:
	.loc 6 431 0
	fsubs 0,0,11
.LVL1984:
.LBB10414:
.LBB10413:
	.loc 6 398 0
	stfs 0,16(1)
.LBE10413:
.LBE10414:
.LBE10418:
.LBE10422:
	.loc 4 3766 0
	bl _ZN4idAI11PredictPathEPK8idEntityPK5idAASRK6idVec3S8_iiiR15predictedPath_s
.LVL1985:
.LBB10423:
.LBB10424:
	.loc 6 424 0
	lwz 0,92(1)
.LBE10424:
.LBE10423:
	.loc 4 3768 0
	lis 9,.LC0@ha
	lfs 1,.LC0@l(9)
	mr 3,31
.LBB10427:
.LBB10425:
	.loc 6 424 0
	stw 0,3964(31)
.LBE10425:
.LBE10427:
	.loc 4 3768 0
	mr 4,30
.LBB10428:
.LBB10426:
	.loc 6 425 0
	lwz 0,96(1)
	stw 0,3968(31)
	.loc 6 426 0
	lwz 0,100(1)
	stw 0,3972(31)
.LBE10426:
.LBE10428:
	.loc 4 3768 0
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	stw 3,4004(31)
	b .L1111
.LVL1986:
.L1132:
.LBE10430:
.LBE10407:
.LBE10402:
.LBE10401:
.LBB10434:
	.loc 4 3721 0
	lwz 9,3956(31)
.LBB10390:
.LBB10391:
	.loc 6 424 0
	lwz 10,5124(31)
.LBE10391:
.LBE10390:
	.loc 4 3721 0
	cmpwi 7,9,3
.LBB10393:
.LBB10392:
	.loc 6 425 0
	lwz 11,5128(31)
	.loc 6 426 0
	lwz 9,5132(31)
	.loc 6 424 0
	stw 10,5148(31)
	.loc 6 425 0
	stw 11,5152(31)
	.loc 6 426 0
	stw 9,5156(31)
.LBE10392:
.LBE10393:
	.loc 4 3721 0
	bne+ 7,.L1111
.LVL1987:
.LBB10394:
.LBB10395:
	.loc 18 237 0
	lwz 9,5240(31)
	cmpwi 7,9,0
	beq- 7,.L1128
	.loc 18 238 0
	stw 0,0(9)
	.loc 4 3724 0
	li 29,0
	b .L1118
.LVL1988:
.L1121:
.LBE10395:
.LBE10394:
.LBB10396:
.LBB10387:
.LBB10379:
	.loc 4 3747 0
	cmpwi 7,0,3
	bne+ 7,.L1111
	b .L1130
.LVL1989:
.L1128:
.LBE10379:
.LBE10387:
.LBE10396:
.LBE10434:
.LBB10435:
.LBB10433:
.LBB10431:
.LBB10432:
	.loc 6 424 0
	lwz 11,5148(31)
	.loc 6 425 0
	lwz 9,5152(31)
	.loc 6 426 0
	lwz 0,5156(31)
	.loc 6 424 0
	stw 11,3964(31)
	.loc 6 425 0
	stw 9,3968(31)
	.loc 6 426 0
	stw 0,3972(31)
	b .L1125
.LVL1990:
.L1134:
.LBE10432:
.LBE10431:
.LBE10433:
.LBE10435:
.LBB10436:
.LBB10397:
.LBB10388:
.LBB10380:
.LBB10377:
.LBB10374:
	.loc 18 237 0
	lwz 0,3944(31)
	mr 28,29
	b .L1126
.LBE10374:
.LBE10377:
.LBE10380:
.LBE10388:
.LBE10397:
.LBE10436:
.LBE10440:
	.cfi_endproc
.LFE2947:
	.size	_ZN4idAI16SetEnemyPositionEv, .-_ZN4idAI16SetEnemyPositionEv
	.align 2
	.globl _ZN4idAI19UpdateEnemyPositionEv
	.type	_ZN4idAI19UpdateEnemyPositionEv, @function
_ZN4idAI19UpdateEnemyPositionEv:
.LFB2948:
	.loc 4 3778 0
	.cfi_startproc
.LVL1991:
	mflr 0
	stwu 1,-80(1)
.LCFI269:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	stw 29,68(1)
.LBB10441:
.LBB10442:
.LBB10443:
	.loc 7 635 0
	lis 29,gameLocal@ha
	.cfi_offset 29, -12
.LBE10443:
.LBE10442:
.LBE10441:
	.loc 4 3778 0
	stw 31,76(1)
.LBB10482:
.LBB10447:
.LBB10444:
	.loc 7 635 0
	la 29,gameLocal@l(29)
.LBE10444:
.LBE10447:
.LBE10482:
	.loc 4 3778 0
	stw 0,84(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL1992:
	stw 27,60(1)
	stw 28,64(1)
	stw 30,72(1)
.LBB10483:
.LBB10448:
.LBB10445:
	.loc 7 634 0
	lwz 0,5120(3)
	rlwinm 9,0,0,20,31
.LVL1993:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1151
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL1994:
.L1135:
.LBE10445:
.LBE10448:
.LBE10483:
	.loc 4 3844 0
	lwz 0,84(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
.LVL1995:
	addi 1,1,80
	.cfi_remember_state
.LCFI270:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1996:
.L1151:
.LCFI271:
	.cfi_restore_state
.LBB10484:
.LBB10449:
.LBB10446:
	.loc 7 636 0
	addi 9,9,132
.LVL1997:
	slwi 9,9,2
.LVL1998:
	add 9,29,9
	lwz 30,4(9)
.LBE10446:
.LBE10449:
	.loc 4 3787 0
	cmpwi 7,30,0
	beq- 7,.L1135
	.loc 4 3791 0
	addi 3,3,4216
.LVL1999:
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
	.loc 4 3793 0
	lwz 0,3952(31)
	.loc 4 3791 0
	mr 28,3
.LVL2000:
	.loc 4 3793 0
	cmpwi 7,0,3
	beq- 7,.L1152
	.loc 4 3797 0
	lis 9,.LC20@ha
	addi 4,1,8
	lfs 1,.LC20@l(9)
	mr 3,30
.LVL2001:
	bl _ZNK8idEntity11GetFloorPosEfR6idVec3
	.loc 4 3798 0
	lwz 9,0(30)
	.loc 4 3797 0
	mr 27,3
.LVL2002:
	.loc 4 3798 0
	mr 3,30
.LVL2003:
	lwz 0,264(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	bne- 7,.L1139
	.loc 4 3803 0
	cmpwi 7,27,0
	beq- 7,.L1139
	.loc 4 3806 0
	lwz 0,3944(31)
	cmpwi 7,0,0
	beq- 7,.L1149
.LVL2004:
.L1140:
	.loc 4 3810 0
	lis 9,.LC0@ha
	mr 3,31
	lfs 1,.LC0@l(9)
	addi 4,1,8
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL2005:
	.loc 4 3811 0
	mr. 27,3
	bne- 0,.L1153
.LVL2006:
.L1139:
.LBB10450:
.LBB10451:
	.loc 18 237 0
	lwz 9,5200(31)
	cmpwi 7,9,0
	beq- 7,.L1141
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1141:
.LVL2007:
.LBE10451:
.LBE10450:
.LBB10452:
.LBB10453:
	.loc 18 237 0
	lwz 9,5196(31)
	cmpwi 7,9,0
	beq- 7,.L1142
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1142:
.LBE10453:
.LBE10452:
.LBB10454:
	.loc 4 3823 0
	mr 3,31
	mr 4,30
	li 5,0
	bl _ZNK7idActor6CanSeeEP8idEntityb
	cmpwi 7,3,0
	beq- 7,.L1143
.LVL2008:
.LBB10455:
.LBB10456:
	.loc 18 237 0
	lwz 9,5196(31)
	cmpwi 7,9,0
	beq- 7,.L1144
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L1144:
.LBE10456:
.LBE10455:
	.loc 4 3825 0
	mr 3,30
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
	bl _ZNK7idActor8CheckFOVERK6idVec3
	cmpwi 7,3,0
	beq- 7,.L1150
.LVL2009:
.LBB10457:
.LBB10458:
	.loc 18 237 0
	lwz 9,5200(31)
	cmpwi 7,9,0
	beq- 7,.L1150
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LVL2010:
.L1150:
.LBE10458:
.LBE10457:
.LBB10459:
.LBB10460:
	.loc 4 3835 0
	mr 3,31
	bl _ZN4idAI16SetEnemyPositionEv
.L1146:
.LBE10460:
.LBE10459:
.LBE10454:
.LBB10471:
.LBB10472:
	.loc 4 3840 0
	lis 9,ai_debugMove+44@ha
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE10472:
.LBE10471:
	.loc 4 3840 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L1135
	.loc 4 3841 0
	lis 29,gameRenderWorld@ha
	mr 3,30
	lwz 28,gameRenderWorld@l(29)
.LVL2011:
	lwz 9,0(28)
	lwz 27,176(9)
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,-1
	lwz 0,56(9)
	mtctr 0
	bctrl
	lis 4,colorLtGrey@ha
	mr 5,3
	addi 6,31,5160
	li 7,16
	mtctr 27
	la 4,colorLtGrey@l(4)
	mr 3,28
	bctrl
	.loc 4 3842 0
	lwz 29,gameRenderWorld@l(29)
	mr 3,30
	lwz 9,0(29)
	lwz 30,176(9)
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,-1
	lwz 0,56(9)
	mtctr 0
	bctrl
	lis 4,colorWhite@ha
	mr 5,3
	addi 6,31,5148
	mr 3,29
	mtctr 30
	la 4,colorWhite@l(4)
	li 7,16
	bctrl
.LBE10484:
	.loc 4 3844 0
	lwz 0,84(1)
	lwz 27,60(1)
	mtlr 0
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
.LVL2012:
	addi 1,1,80
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI272:
	.cfi_def_cfa_offset 0
	blr
.LVL2013:
.L1143:
.LCFI273:
	.cfi_restore_state
.LBB10485:
.LBB10473:
.LBB10470:
	.loc 4 3832 0
	mr 3,29
	bl _ZN11idGameLocal14GetAlertEntityEv
	cmpw 7,30,3
	bne+ 7,.L1146
.LBB10469:
	.loc 4 3833 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL2014:
.LBB10461:
.LBB10462:
	.loc 6 431 0
	lfs 0,4(28)
	lfs 12,4(3)
.LBE10462:
.LBE10461:
	.loc 4 3834 0
	lis 9,.LC117@ha
.LBB10465:
.LBB10463:
	.loc 6 431 0
	lfs 13,0(3)
	fsubs 12,12,0
	lfs 0,0(28)
	lfs 11,8(3)
	fsubs 13,13,0
	lfs 0,8(28)
.LBE10463:
.LBE10465:
.LBB10466:
.LBB10467:
	.loc 6 636 0
	fmuls 12,12,12
.LBE10467:
.LBE10466:
.LBB10468:
.LBB10464:
	.loc 6 431 0
	fsubs 0,11,0
.LVL2015:
.LBE10464:
.LBE10468:
	.loc 6 636 0
	fmadds 13,13,13,12
.LVL2016:
	fmadds 0,0,0,13
.LVL2017:
	.loc 4 3834 0
	lfs 13,.LC117@l(9)
	fcmpu 7,0,13
	bnl+ 7,.L1146
	b .L1150
.LVL2018:
.L1152:
.LBE10469:
.LBE10470:
.LBE10473:
	.loc 4 3794 0
	mr 3,30
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL2019:
.LBB10474:
.LBB10475:
	.loc 6 426 0
	lwz 0,8(3)
	.loc 6 424 0
	lwz 11,0(3)
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	stw 0,16(1)
.LVL2020:
.LBE10475:
.LBE10474:
	.loc 4 3806 0
	lwz 0,3944(31)
.LBB10478:
.LBB10476:
	.loc 6 424 0
	stw 11,8(1)
.LBE10476:
.LBE10478:
	.loc 4 3806 0
	cmpwi 7,0,0
.LBB10479:
.LBB10477:
	.loc 6 425 0
	stw 9,12(1)
.LBE10477:
.LBE10479:
	.loc 4 3806 0
	bne+ 7,.L1140
.LVL2021:
.L1149:
.LBB10480:
.LBB10481:
	.loc 6 424 0
	lwz 0,8(1)
	stw 0,5160(31)
	.loc 6 425 0
	lwz 0,12(1)
	stw 0,5164(31)
	.loc 6 426 0
	lwz 0,16(1)
	stw 0,5168(31)
	b .L1139
.LVL2022:
.L1153:
.LBE10481:
.LBE10480:
	.loc 4 3812 0
	lis 9,.LC78@ha
	mr 4,28
	lfs 1,.LC78@l(9)
	mr 3,31
.LVL2023:
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 3813 0
	addi 4,1,20
	.loc 4 3812 0
	mr 5,3
.LVL2024:
	.loc 4 3813 0
	mr 6,28
	mr 3,31
.LVL2025:
	mr 7,27
	addi 8,1,8
	bl _ZNK4idAI10PathToGoalER9aasPath_siRK6idVec3iS4_
.LVL2026:
	cmpwi 7,3,0
	beq- 7,.L1139
	b .L1149
.LBE10485:
	.cfi_endproc
.LFE2948:
	.size	_ZN4idAI19UpdateEnemyPositionEv, .-_ZN4idAI19UpdateEnemyPositionEv
	.align 2
	.globl _ZNK4idAI23FirstVisiblePointOnPathE6idVec3RKS0_i
	.type	_ZNK4idAI23FirstVisiblePointOnPathE6idVec3RKS0_i, @function
_ZNK4idAI23FirstVisiblePointOnPathE6idVec3RKS0_i:
.LFB2950:
	.loc 4 3889 0
	.cfi_startproc
.LVL2027:
	mflr 0
	stwu 1,-120(1)
.LCFI274:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	stw 26,88(1)
	mr 26,6
	.cfi_offset 26, -32
	stw 27,92(1)
	mr 27,7
	.cfi_offset 27, -28
	stw 29,100(1)
	mr 29,5
	.cfi_offset 29, -20
	stw 30,104(1)
	mr 30,4
	.cfi_offset 30, -16
	stw 31,108(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,124(1)
	stfd 31,112(1)
	stw 25,84(1)
	stw 28,96(1)
.LBB10486:
	.loc 4 3894 0
	lwz 0,3944(4)
	.cfi_offset 28, -24
	.cfi_offset 25, -36
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1161
	.loc 4 3898 0
	lis 9,.LC78@ha
	mr 3,4
.LVL2028:
	lfs 31,.LC78@l(9)
	mr 4,5
.LVL2029:
	fmr 1,31
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
.LVL2030:
	.loc 4 3899 0
	fmr 1,31
	.loc 4 3898 0
	mr 25,3
.LVL2031:
	.loc 4 3899 0
	mr 4,26
	mr 3,30
.LVL2032:
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	.loc 4 3901 0
	cmpwi 7,25,0
	.loc 4 3899 0
	mr 28,3
.LVL2033:
	.loc 4 3901 0
	beq- 7,.L1161
	.loc 4 3901 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L1161
	.loc 4 3905 0 is_stmt 1
	cmpw 7,25,3
	beq- 7,.L1161
	.loc 4 3905 0 is_stmt 0 discriminator 2
	mr 3,30
.LVL2034:
	mr 4,29
	bl _ZNK7idActor12PointVisibleERK6idVec3
	cmpwi 7,3,0
	bne- 7,.L1161
.LVL2035:
.LBB10487:
.LBB10488:
	.loc 6 426 0 is_stmt 1
	lwz 0,8(29)
	.loc 6 424 0
	lwz 11,0(29)
	.loc 6 425 0
	lwz 9,4(29)
	.loc 6 426 0
	stw 0,24(1)
.LVL2036:
	li 0,10
	.loc 6 424 0
	stw 11,16(1)
	.loc 6 425 0
	stw 9,20(1)
	.loc 6 426 0
	stw 0,64(1)
.LVL2037:
.L1164:
.LBE10488:
.LBE10487:
	.loc 4 3914 0
	lwz 0,16(1)
	mr 4,25
	lwz 3,3944(30)
	addi 5,1,48
	stw 0,48(1)
	mr 6,28
	lwz 0,20(1)
	mr 7,27
	addi 8,1,12
	stw 0,52(1)
	lwz 0,24(1)
	stw 0,56(1)
	lwz 9,0(3)
	lwz 0,96(9)
	addi 9,1,8
	mtctr 0
	bctrl
	.loc 4 3925 0
	addi 4,1,16
	.loc 4 3914 0
	cmpwi 7,3,0
	.loc 4 3925 0
	mr 3,30
	.loc 4 3914 0
	beq- 7,.L1161
	.loc 4 3918 0
	lwz 9,8(1)
	cmpwi 7,9,0
	beq- 7,.L1166
.LBB10489:
.LBB10490:
	.loc 6 424 0
	lwz 10,20(9)
	.loc 6 425 0
	lwz 11,24(9)
	.loc 6 426 0
	lwz 0,28(9)
.LBE10490:
.LBE10489:
	.loc 4 3922 0
	lha 25,4(9)
.LVL2038:
.LBB10492:
.LBB10491:
	.loc 6 424 0
	stw 10,16(1)
	.loc 6 425 0
	stw 11,20(1)
	.loc 6 426 0
	stw 0,24(1)
.LBE10491:
.LBE10492:
	.loc 4 3925 0
	bl _ZNK7idActor12PointVisibleERK6idVec3
.LVL2039:
	cmpwi 7,3,0
	bne- 7,.L1167
	.loc 4 3912 0
	lwz 0,64(1)
	addic. 9,0,-1
	stw 9,64(1)
	bne+ 0,.L1164
.LVL2040:
.L1161:
	.loc 4 3930 0
	lwz 11,0(29)
	lwz 9,4(29)
	lwz 0,8(29)
	stw 11,0(31)
	stw 9,4(31)
	stw 0,8(31)
.L1154:
.LBE10486:
	.loc 4 3931 0
	lwz 0,124(1)
	mr 3,31
	lwz 25,84(1)
	mtlr 0
	lwz 26,88(1)
.LVL2041:
	lwz 27,92(1)
.LVL2042:
	lwz 28,96(1)
	lwz 29,100(1)
	lwz 30,104(1)
.LVL2043:
	lwz 31,108(1)
.LVL2044:
	lfd 31,112(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI275:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL2045:
.L1166:
.LCFI276:
	.cfi_restore_state
.LBB10493:
	.loc 4 3919 0
	lwz 11,0(26)
	lwz 9,4(26)
	lwz 0,8(26)
	stw 11,0(31)
	stw 9,4(31)
	stw 0,8(31)
	b .L1154
.LVL2046:
.L1167:
	.loc 4 3926 0
	lwz 0,16(1)
	stw 0,0(31)
	lwz 0,20(1)
	stw 0,4(31)
	lwz 0,24(1)
	stw 0,8(31)
	b .L1154
.LBE10493:
	.cfi_endproc
.LFE2950:
	.size	_ZNK4idAI23FirstVisiblePointOnPathE6idVec3RKS0_i, .-_ZNK4idAI23FirstVisiblePointOnPathE6idVec3RKS0_i
	.align 2
	.globl _ZN4idAI22CalculateAttackOffsetsEv
	.type	_ZN4idAI22CalculateAttackOffsetsEv, @function
_ZN4idAI22CalculateAttackOffsetsEv:
.LFB2951:
	.loc 4 3940 0
	.cfi_startproc
.LVL2047:
	stwu 1,-112(1)
.LCFI277:
	.cfi_def_cfa_offset 112
	mflr 0
	stw 25,84(1)
.LBB10526:
	.loc 4 3950 0
	addi 25,3,636
	.cfi_offset 25, -28
	.cfi_register 65, 0
.LBE10526:
	.loc 4 3940 0
	stw 29,100(1)
	mr 29,3
	.cfi_offset 29, -12
.LBB10603:
	.loc 4 3950 0
	mr 3,25
.LVL2048:
.LBE10603:
	.loc 4 3940 0
	stw 26,88(1)
	stw 0,116(1)
	stw 19,60(1)
	stw 20,64(1)
	stw 21,68(1)
	stw 22,72(1)
	stw 23,76(1)
	stw 24,80(1)
	stw 27,92(1)
	stw 28,96(1)
	stw 30,104(1)
	stw 31,108(1)
.LBB10604:
	.loc 4 3950 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	bl _ZNK10idAnimator8ModelDefEv
.LVL2049:
	.loc 4 3951 0
	mr. 26,3
	beq- 0,.L1168
	.loc 4 3954 0
	bl _ZNK14idDeclModelDef8NumAnimsEv
.LVL2050:
	.loc 4 3957 0
	li 4,0
	.loc 4 3954 0
	mr 27,3
.LVL2051:
	.loc 4 3957 0
	mr 3,25
.LVL2052:
	bl _ZN10idAnimator18RemoveOriginOffsetEb
.LBB10527:
.LBB10528:
	.loc 14 319 0
	lwz 30,4580(29)
	.loc 14 317 0
	li 0,1
.LBE10528:
.LBE10527:
	.loc 4 3961 0
	addi 31,29,4568
.LVL2053:
.LBB10545:
.LBB10543:
	.loc 14 319 0
	cmpwi 7,30,0
	.loc 14 317 0
	stw 0,4576(29)
	.loc 14 319 0
	beq- 7,.L1170
	.loc 14 321 0
	lwz 3,4568(29)
.LVL2054:
	.loc 14 323 0
	lwz 0,4572(29)
	cmpw 7,3,0
	beq- 7,.L1170
.LVL2055:
.LBB10529:
.LBB10530:
	.loc 14 375 0
	cmpwi 7,3,0
	ble- 7,.L1185
.LVL2056:
	.loc 14 386 0
	stw 3,4572(29)
	.loc 14 392 0
	mulli 3,3,12
	bl _Znaj
.LVL2057:
	.loc 14 393 0
	lwz 0,4568(29)
	.loc 14 392 0
	stw 3,4580(29)
.LVL2058:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L1172
	li 11,0
	li 10,0
	b .L1173
.LVL2059:
.L1186:
	lwz 3,4580(29)
.LVL2060:
.L1173:
.LBB10531:
.LBB10532:
	.loc 6 424 0
	mr 9,30
.LBE10532:
.LBE10531:
	.loc 14 394 0
	add 8,3,11
.LVL2061:
.LBB10536:
.LBB10533:
	.loc 6 424 0
	lwzux 0,9,11
.LBE10533:
.LBE10536:
	.loc 14 393 0
	addi 10,10,1
.LVL2062:
.LBB10537:
.LBB10534:
	.loc 6 424 0
	stwx 0,3,11
.LBE10534:
.LBE10537:
	.loc 14 393 0
	addi 11,11,12
.LVL2063:
.LBB10538:
.LBB10535:
	.loc 6 425 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 6 426 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE10535:
.LBE10538:
	.loc 14 393 0
	lwz 0,0(31)
	cmpw 7,10,0
	blt+ 7,.L1186
.LVL2064:
.L1172:
	.loc 14 399 0
	mr 3,30
	bl _ZdaPv
.LVL2065:
.L1170:
.LBE10530:
.LBE10529:
.LBE10543:
.LBE10545:
.LBB10546:
.LBB10547:
.LBB10548:
.LBB10549:
	.loc 14 375 0
	addic. 24,27,1
	ble- 0,.L1187
	.loc 14 380 0
	lwz 0,4572(29)
	cmpw 7,24,0
	beq- 7,.L1176
	.loc 14 387 0
	lwz 0,4568(29)
	.loc 14 385 0
	lwz 30,4580(29)
.LVL2066:
	.loc 14 387 0
	cmpw 7,24,0
	.loc 14 386 0
	stw 24,4572(29)
	.loc 14 387 0
	blt- 7,.L1188
.L1177:
	.loc 14 392 0
	mulli 3,24,12
	bl _Znaj
.LVL2067:
	.loc 14 393 0
	lwz 0,4568(29)
	.loc 14 392 0
	stw 3,4580(29)
.LVL2068:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L1178
	li 11,0
	li 10,0
	b .L1179
.LVL2069:
.L1189:
	lwz 3,4580(29)
.LVL2070:
.L1179:
.LBB10550:
.LBB10551:
	.loc 6 424 0
	mr 9,30
.LBE10551:
.LBE10550:
	.loc 14 394 0
	add 8,3,11
.LVL2071:
.LBB10555:
.LBB10552:
	.loc 6 424 0
	lwzux 0,9,11
.LBE10552:
.LBE10555:
	.loc 14 393 0
	addi 10,10,1
.LVL2072:
.LBB10556:
.LBB10553:
	.loc 6 424 0
	stwx 0,3,11
.LBE10553:
.LBE10556:
	.loc 14 393 0
	addi 11,11,12
.LVL2073:
.LBB10557:
.LBB10554:
	.loc 6 425 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 6 426 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE10554:
.LBE10557:
	.loc 14 393 0
	lwz 0,0(31)
	cmpw 7,10,0
	blt+ 7,.L1189
.LVL2074:
.L1178:
	.loc 14 398 0
	cmpwi 7,30,0
	beq- 7,.L1176
	.loc 14 399 0
	mr 3,30
	bl _ZdaPv
.LVL2075:
.L1176:
.LBE10549:
.LBE10548:
.LBE10547:
.LBE10546:
	.loc 4 3965 0
	cmpwi 7,27,0
.LBB10568:
.LBB10564:
	.loc 4 5138 0
	lwz 9,4580(29)
.LVL2076:
.LBE10564:
.LBE10568:
.LBB10569:
.LBB10570:
	.loc 6 416 0
	li 28,0
.LBE10570:
.LBE10569:
.LBB10572:
.LBB10565:
	.loc 14 302 0
	stw 24,4568(29)
.LBE10565:
.LBE10572:
.LBB10573:
.LBB10571:
	.loc 6 416 0
	stw 28,8(9)
	stw 28,4(9)
	stw 28,0(9)
.LVL2077:
.LBE10571:
.LBE10573:
	.loc 4 3965 0
	ble- 7,.L1180
.LBB10574:
.LBB10575:
	.file 21 "d:/Data/Nintendo/DoomGX/src/game/ai/../anim/Anim.h"
	.loc 21 49 0
	lis 24,0x2aaa
.LBE10575:
.LBE10574:
	.loc 4 3973 0
	lis 22,gameLocal@ha
	lis 23,.LC118@ha
	.loc 4 3965 0
	li 30,12
	li 31,1
.LVL2078:
.LBB10580:
.LBB10576:
	.loc 21 49 0
	ori 24,24,43691
.LBE10576:
.LBE10580:
	.loc 4 3973 0
	la 22,gameLocal@l(22)
	la 23,.LC118@l(23)
.LVL2079:
.L1183:
.LBB10581:
.LBB10582:
	.loc 14 589 0
	lwz 9,4580(29)
.LBE10582:
.LBE10581:
	.loc 4 3967 0
	mr 4,31
	mr 3,26
.LBB10584:
.LBB10583:
	.loc 14 589 0
	add 11,9,30
.LVL2080:
.LBE10583:
.LBE10584:
.LBB10585:
.LBB10586:
	.loc 6 416 0
	stw 28,8(11)
	stw 28,4(11)
	stwx 28,9,30
.LBE10586:
.LBE10585:
	.loc 4 3967 0
	bl _ZNK14idDeclModelDef7GetAnimEi
.LVL2081:
	.loc 4 3969 0
	addi 5,1,8
	.loc 4 3968 0
	cmpwi 7,3,0
	.loc 4 3969 0
	li 4,22
	.loc 4 3968 0
	beq- 7,.L1181
	.loc 4 3969 0
	bl _ZNK6idAnim24FindFrameForFrameCommandE18frameCommandType_tPPK14frameCommand_t
.LVL2082:
	.loc 4 3970 0
	mr. 21,3
	.loc 4 3971 0
	mr 3,25
.LVL2083:
	.loc 4 3970 0
	blt- 0,.L1181
	.loc 4 3971 0
	lwz 9,8(1)
	.loc 4 5138 0
	lwz 9,4(9)
	.loc 4 3971 0
	lwz 4,4(9)
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 4 3972 0
	cmpwi 7,3,-1
	.loc 4 3971 0
	mr 20,3
.LVL2084:
	.loc 4 3972 0
	beq- 7,.L1190
.LVL2085:
.L1182:
.LBB10587:
.LBB10577:
	.loc 21 49 0
	mulli 21,21,1000
.LVL2086:
.LBE10577:
.LBE10587:
.LBB10588:
.LBB10589:
	.loc 14 589 0
	lwz 7,4580(29)
.LBE10589:
.LBE10588:
	.loc 4 3975 0
	mr 5,31
	add 7,7,30
	mr 3,29
.LBB10590:
.LBB10578:
	.loc 21 49 0
	mulhw 6,21,24
	srawi 21,21,31
.LBE10578:
.LBE10590:
	.loc 4 3975 0
	mr 4,20
	addi 8,1,12
.LBB10591:
.LBB10579:
	.loc 21 49 0
	srawi 6,6,2
.LBE10579:
.LBE10591:
	.loc 4 3975 0
	subf 6,21,6
	bl _ZNK16idAnimatedEntity24GetJointTransformForAnimE13jointHandle_tiiR6idVec3R6idMat3
.LVL2087:
.L1181:
	.loc 4 3965 0
	addi 31,31,1
.LVL2088:
	addi 30,30,12
	cmpw 7,27,31
	bge+ 7,.L1183
.LVL2089:
.L1180:
	.loc 4 3980 0
	mr 3,25
	li 4,1
	bl _ZN10idAnimator18RemoveOriginOffsetEb
.LVL2090:
.L1168:
.LBE10604:
	.loc 4 3981 0
	lwz 0,116(1)
	lwz 19,60(1)
	mtlr 0
	lwz 20,64(1)
	lwz 21,68(1)
	lwz 22,72(1)
	lwz 23,76(1)
	lwz 24,80(1)
	lwz 25,84(1)
	lwz 26,88(1)
.LVL2091:
	lwz 27,92(1)
	lwz 28,96(1)
	lwz 29,100(1)
.LVL2092:
	lwz 30,104(1)
	lwz 31,108(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI278:
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
.LVL2093:
.L1188:
.LCFI279:
	.cfi_restore_state
.LBB10605:
.LBB10592:
.LBB10566:
.LBB10562:
.LBB10560:
	.loc 14 388 0
	stw 24,4568(29)
	b .L1177
.LVL2094:
.L1190:
.LBE10560:
.LBE10562:
.LBE10566:
.LBE10592:
	.loc 4 5138 0
	lwz 3,4(26)
.LVL2095:
	lwz 9,8(1)
.LBB10593:
.LBB10594:
	.file 22 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/DeclManager.h"
	.loc 22 140 0
	lwz 11,0(3)
.LBE10594:
.LBE10593:
	.loc 4 5138 0
	lwz 9,4(9)
.LBB10598:
.LBB10595:
	.loc 22 140 0
	lwz 0,8(11)
.LBE10595:
.LBE10598:
	.loc 4 5138 0
	lwz 19,4(9)
.LBB10599:
.LBB10596:
	.loc 22 140 0
	mtctr 0
	bctrl
.LBE10596:
.LBE10599:
	.loc 4 3973 0
	mr 4,23
.LBB10600:
.LBB10597:
	.loc 22 140 0
	mr 7,3
.LBE10597:
.LBE10600:
	.loc 4 3973 0
	mr 5,19
	mr 3,22
	mr 6,21
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1182
.LVL2096:
.L1187:
.LBB10601:
.LBB10567:
.LBB10563:
.LBB10561:
.LBB10558:
.LBB10559:
	.loc 14 193 0
	lwz 3,4580(29)
	cmpwi 7,3,0
	beq- 7,.L1175
	.loc 14 194 0
	bl _ZdaPv
.L1175:
	.loc 14 197 0
	li 0,0
	stw 0,4580(29)
	.loc 14 199 0
	stw 0,4572(29)
	b .L1176
.LVL2097:
.L1185:
.LBE10559:
.LBE10558:
.LBE10561:
.LBE10563:
.LBE10567:
.LBE10601:
.LBB10602:
.LBB10544:
.LBB10542:
.LBB10541:
.LBB10539:
.LBB10540:
	.loc 14 194 0
	mr 3,30
.LVL2098:
	bl _ZdaPv
.LVL2099:
	.loc 14 197 0
	li 0,0
	stw 0,4580(29)
	.loc 14 198 0
	stw 0,4568(29)
	.loc 14 199 0
	stw 0,4572(29)
	b .L1170
.LBE10540:
.LBE10539:
.LBE10541:
.LBE10542:
.LBE10544:
.LBE10602:
.LBE10605:
	.cfi_endproc
.LFE2951:
	.size	_ZN4idAI22CalculateAttackOffsetsEv, .-_ZN4idAI22CalculateAttackOffsetsEv
	.align 2
	.globl _ZNK4idAI25CreateProjectileClipModelEv
	.type	_ZNK4idAI25CreateProjectileClipModelEv, @function
_ZNK4idAI25CreateProjectileClipModelEv:
.LFB2952:
	.loc 4 3988 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2952
.LVL2100:
	mflr 0
	stwu 1,-2880(1)
.LCFI280:
	.cfi_def_cfa_offset 2880
	.cfi_register 65, 0
	stw 31,2876(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,2884(1)
	stw 30,2872(1)
.LBB10606:
	.loc 4 3989 0
	lwz 0,4588(3)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1195
.LBE10606:
	.loc 4 3994 0
	lwz 0,2884(1)
	lwz 30,2872(1)
	mtlr 0
	lwz 31,2876(1)
	addi 1,1,2880
	.cfi_remember_state
.LCFI281:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L1195:
.LCFI282:
	.cfi_restore_state
.LVL2101:
.LBB10624:
.LBB10607:
.LBB10608:
.LBB10609:
.LBB10610:
	.loc 6 424 0
	lis 11,vec3_origin@ha
.LBE10610:
.LBE10609:
.LBE10608:
	.loc 4 3991 0
	lfs 0,4592(3)
.LBB10615:
.LBB10613:
.LBB10611:
	.loc 6 424 0
	la 9,vec3_origin@l(11)
	lfs 11,vec3_origin@l(11)
	.loc 6 425 0
	lfs 12,4(9)
.LBE10611:
.LBE10613:
.LBE10615:
.LBB10616:
.LBB10617:
	.file 23 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/geometry/TraceModel.h"
	.loc 23 167 0
	addi 3,1,32
.LVL2102:
.LBE10617:
.LBE10616:
.LBB10619:
.LBB10614:
.LBB10612:
	.loc 6 426 0
	lfs 13,8(9)
.LVL2103:
.LBE10612:
.LBE10614:
.LBE10619:
.LBB10620:
.LBB10621:
	.loc 5 323 0
	fsubs 8,11,0
	.loc 5 324 0
	fsubs 9,12,0
	.loc 5 325 0
	fsubs 10,13,0
	.loc 5 326 0
	fadds 11,0,11
	.loc 5 323 0
	stfs 8,8(1)
.LVL2104:
	.loc 5 327 0
	fadds 12,0,12
	.loc 5 324 0
	stfs 9,12(1)
.LVL2105:
	.loc 5 328 0
	fadds 0,0,13
	.loc 5 325 0
	stfs 10,16(1)
.LVL2106:
	.loc 5 326 0
	stfs 11,20(1)
.LVL2107:
	.loc 5 327 0
	stfs 12,24(1)
.LVL2108:
	.loc 5 328 0
	stfs 0,28(1)
.LVL2109:
.LEHB48:
.LBE10621:
.LBE10620:
.LBB10622:
.LBB10618:
	.loc 23 167 0
	bl _ZN12idTraceModel7InitBoxEv
.LVL2110:
	.loc 23 168 0
	addi 4,1,8
	addi 3,1,32
.LVL2111:
	bl _ZN12idTraceModel8SetupBoxERK8idBounds
.LVL2112:
.LBE10618:
.LBE10622:
	.loc 4 3992 0
	li 3,140
	bl _Znwj
.LEHE48:
	addi 4,1,32
.LVL2113:
	mr 30,3
.LEHB49:
	bl _ZN11idClipModelC1ERK12idTraceModel
.LEHE49:
.LVL2114:
	.loc 4 3992 0 is_stmt 0 discriminator 1
	stw 30,4588(31)
.LBE10607:
.LBE10624:
	.loc 4 3994 0 is_stmt 1 discriminator 1
	lwz 0,2884(1)
	lwz 30,2872(1)
	mtlr 0
	lwz 31,2876(1)
.LVL2115:
	addi 1,1,2880
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI283:
	.cfi_def_cfa_offset 0
	blr
.LVL2116:
.L1194:
.LCFI284:
	.cfi_restore_state
	mr 31,3
.LVL2117:
.LBB10625:
.LBB10623:
	.loc 4 3992 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
.LEHB50:
	bl _Unwind_Resume
.LEHE50:
.LBE10623:
.LBE10625:
	.cfi_endproc
.LFE2952:
	.section	.gcc_except_table
.LLSDA2952:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2952-.LLSDACSB2952
.LLSDACSB2952:
	.uleb128 .LEHB48-.LFB2952
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB2952
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L1194-.LFB2952
	.uleb128 0
	.uleb128 .LEHB50-.LFB2952
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE2952:
	.section	".text"
	.size	_ZNK4idAI25CreateProjectileClipModelEv, .-_ZNK4idAI25CreateProjectileClipModelEv
	.align 2
	.globl _ZNK4idAI9GetAimDirERK6idVec3P8idEntityPKS3_RS0_
	.type	_ZNK4idAI9GetAimDirERK6idVec3P8idEntityPKS3_RS0_, @function
_ZNK4idAI9GetAimDirERK6idVec3P8idEntityPKS3_RS0_:
.LFB2953:
	.loc 4 4001 0
	.cfi_startproc
.LVL2118:
	stwu 1,-112(1)
.LCFI285:
	.cfi_def_cfa_offset 112
	mflr 0
	stw 30,88(1)
.LBB10685:
	.loc 4 4009 0
	mr. 30,5
	.cfi_offset 30, -24
	.cfi_register 65, 0
.LBE10685:
	.loc 4 4001 0
	stw 27,76(1)
	mr 27,6
	.cfi_offset 27, -36
	stw 28,80(1)
	mr 28,7
	.cfi_offset 28, -32
	stw 29,84(1)
	mr 29,4
	.cfi_offset 29, -28
	stw 31,92(1)
	mr 31,3
	.cfi_offset 31, -20
	stw 0,116(1)
	stfd 30,96(1)
	stfd 31,104(1)
	stw 22,56(1)
	stw 23,60(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 26,72(1)
.LBB10826:
	.loc 4 4009 0
	beq- 0,.L1197
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 24, -48
	.cfi_offset 23, -52
	.cfi_offset 22, -56
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 4 4009 0 is_stmt 0 discriminator 1
	lwz 0,4584(3)
	cmpwi 7,0,0
	beq- 7,.L1197
	.loc 4 4014 0 is_stmt 1
	lwz 0,4588(3)
	cmpwi 7,0,0
	beq- 7,.L1210
.LVL2119:
.L1200:
.LBB10686:
.LBB10687:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL2120:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1211
.LVL2121:
.L1201:
.LBE10687:
.LBE10686:
.LBB10689:
.LBB10690:
	.loc 16 340 0
	lwz 9,0(30)
	mr 3,30
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2122:
.LBE10690:
	.loc 4 5138 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB10695:
.LBB10691:
.LBB10692:
	.loc 16 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1212
.L1203:
.LBE10692:
.LBE10691:
.LBE10695:
.LBE10689:
	.loc 4 4023 0
	mr 3,30
.LVL2123:
	addi 22,1,28
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL2124:
.LBB10697:
.LBB10698:
	.loc 5 212 0
	lis 9,.LC15@ha
	lfs 12,0(3)
	lfs 13,4(3)
	lfs 0,8(3)
	lfs 11,20(3)
	lfs 9,12(3)
	lfs 10,16(3)
	fadds 0,11,0
	fadds 12,9,12
	lfs 11,.LC15@l(9)
	fadds 13,10,13
	fmuls 0,0,11
	fmuls 12,12,11
.LVL2125:
	fmuls 13,13,11
.LVL2126:
.LBE10698:
.LBE10697:
.LBB10699:
.LBB10700:
	.loc 6 426 0
	stfs 0,36(1)
.LVL2127:
	.loc 6 424 0
	stfs 12,28(1)
	.loc 6 425 0
	stfs 13,32(1)
.LBE10700:
.LBE10699:
.LBB10701:
.LBB10702:
	.loc 6 424 0
	stfs 12,16(1)
	.loc 6 425 0
	stfs 13,20(1)
	.loc 6 426 0
	stfs 0,24(1)
.LVL2128:
.L1202:
.LBE10702:
.LBE10701:
.LBB10703:
.LBB10704:
	.loc 6 431 0
	lfs 10,4(29)
.LBE10704:
.LBE10703:
.LBB10712:
.LBB10713:
.LBB10714:
.LBB10715:
	.loc 8 248 0
	lis 24,0x5f37
.LBE10715:
.LBE10714:
.LBE10713:
.LBE10712:
.LBB10746:
.LBB10705:
	.loc 6 431 0
	lfs 11,0(29)
.LBE10705:
.LBE10746:
.LBB10747:
.LBB10736:
.LBB10726:
.LBB10716:
	.loc 8 248 0
	ori 24,24,23007
.LBE10716:
.LBE10726:
.LBE10736:
.LBE10747:
.LBB10748:
.LBB10706:
	.loc 6 431 0
	fsubs 13,10,13
.LBE10706:
.LBE10748:
.LBB10749:
.LBB10737:
.LBB10727:
.LBB10717:
	.loc 8 246 0
	lfs 30,.LC15@l(9)
.LBE10717:
.LBE10727:
.LBE10737:
.LBE10749:
.LBB10750:
.LBB10707:
	.loc 6 431 0
	fsubs 12,11,12
	lfs 11,8(29)
.LBE10707:
.LBE10750:
.LBB10751:
.LBB10738:
.LBB10728:
.LBB10718:
	.loc 8 250 0
	lis 9,.LC63@ha
.LBE10718:
.LBE10728:
.LBE10738:
.LBE10751:
.LBB10752:
.LBB10753:
	.loc 4 4030 0
	lis 23,ai_debugTrajectory@ha
.LBE10753:
.LBE10752:
.LBB10756:
.LBB10739:
	.loc 6 642 0
	fmuls 13,13,13
.LBB10729:
.LBB10719:
	.loc 8 250 0
	lfs 31,.LC63@l(9)
.LBE10719:
.LBE10729:
.LBE10739:
.LBE10756:
.LBB10757:
.LBB10708:
	.loc 6 431 0
	fsubs 0,11,0
.LVL2129:
.LBE10708:
.LBE10757:
.LBB10758:
.LBB10754:
	.loc 4 4030 0
	la 23,ai_debugTrajectory@l(23)
.LBE10754:
.LBE10758:
	li 25,-1000
	lfs 1,4596(31)
.LBB10759:
.LBB10709:
	.loc 6 642 0
	fmadds 12,12,12,13
.LVL2130:
.LBE10709:
.LBE10759:
	.loc 4 4030 0
	lwz 6,4588(31)
	addi 26,31,4612
	mr 4,22
	mr 3,29
	mr 5,26
.LBB10760:
.LBB10710:
	.loc 6 642 0
	fmadds 12,0,0,12
.LBE10710:
.LBE10760:
	.loc 4 4030 0
	li 7,2049
	mr 8,27
.LBB10761:
.LBB10711:
	.loc 6 642 0
	stfs 12,48(1)
.LVL2131:
.LBE10711:
.LBE10761:
.LBB10762:
.LBB10740:
.LBB10730:
.LBB10720:
	.loc 8 246 0
	fmuls 2,12,30
	.loc 8 248 0
	lwz 9,48(1)
	.loc 4 4001 0
	fneg 2,2
	.loc 8 248 0
	srawi 0,9,1
.LBE10720:
.LBE10730:
.LBE10740:
.LBE10762:
.LBB10763:
.LBB10755:
	.loc 20 142 0
	lwz 9,44(23)
.LBE10755:
.LBE10763:
.LBB10764:
.LBB10741:
.LBB10731:
.LBB10721:
	.loc 8 249 0
	subf 0,0,24
	stw 0,52(1)
.LVL2132:
.LBE10721:
.LBE10731:
.LBE10741:
.LBE10764:
	.loc 4 4030 0
	lwz 10,36(9)
	mr 9,30
.LBB10765:
.LBB10742:
.LBB10732:
.LBB10722:
	.loc 8 250 0
	lfs 11,52(1)
.LBE10722:
.LBE10732:
.LBE10742:
.LBE10765:
	.loc 4 4030 0
	addic 10,10,-1
	subfe 10,10,10
.LBB10766:
.LBB10743:
.LBB10733:
.LBB10723:
	.loc 8 250 0
	fmuls 0,11,11
.LVL2133:
.LBE10723:
.LBE10733:
.LBE10743:
.LBE10766:
	.loc 4 4030 0
	and 10,10,25
	addi 10,10,1000
.LBB10767:
.LBB10744:
.LBB10734:
.LBB10724:
	.loc 8 250 0
	fmadds 2,2,0,31
.LVL2134:
.LBE10724:
.LBE10734:
.LBE10744:
.LBE10767:
	.loc 4 4029 0
	lfs 0,4564(31)
	.loc 4 4030 0
	stw 28,8(1)
.LBB10768:
.LBB10745:
.LBB10735:
.LBB10725:
	.loc 8 250 0
	fmuls 2,11,2
.LVL2135:
.LBE10725:
.LBE10735:
	.loc 6 643 0
	fmuls 2,12,2
.LVL2136:
.LBE10745:
.LBE10768:
	.loc 4 4030 0
	fmuls 2,2,0
.LVL2137:
	bl _ZN4idAI17PredictTrajectoryERK6idVec3S2_fS2_PK11idClipModelifPK8idEntityS8_iRS0_
.LVL2138:
	.loc 4 4031 0
	mr. 22,3
.LVL2139:
	beq- 0,.L1213
.LVL2140:
.L1199:
.LBE10826:
	.loc 4 4041 0
	lwz 0,116(1)
	mr 3,22
	lwz 23,60(1)
	mtlr 0
	lwz 22,56(1)
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
	lwz 27,76(1)
.LVL2141:
	lwz 28,80(1)
.LVL2142:
	lwz 29,84(1)
.LVL2143:
	lwz 30,88(1)
.LVL2144:
	lwz 31,92(1)
.LVL2145:
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI286:
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
.LVL2146:
.L1212:
.LCFI287:
	.cfi_restore_state
.LBB10827:
.LBB10769:
.LBB10696:
.LBB10694:
.LBB10693:
	.loc 16 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1203
.LBE10693:
.LBE10694:
.LBE10696:
.LBE10769:
	.loc 4 4021 0
	lwz 9,0(30)
	mr 3,30
.LVL2147:
	addi 22,1,28
	lwz 26,260(9)
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	mtctr 26
	mr 4,3
	mr 5,22
	mr 3,30
	addi 6,1,16
.LVL2148:
.L1209:
	bctrl
	lfs 12,28(1)
	lfs 13,32(1)
	lis 9,.LC15@ha
	lfs 0,36(1)
	b .L1202
.LVL2149:
.L1213:
.LBB10770:
.LBB10771:
	.loc 16 340 0 discriminator 2
	lwz 9,0(30)
	mr 3,30
.LVL2150:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2151:
.LBE10771:
	.loc 4 5138 0 discriminator 2
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB10774:
.LBB10772:
.LBB10773:
	.loc 16 311 0 discriminator 2
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1199
	.loc 16 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1199
.LVL2152:
.LBE10773:
.LBE10772:
.LBE10774:
.LBE10770:
.LBB10775:
.LBB10776:
	.loc 6 431 0 is_stmt 1
	lfs 12,4(29)
.LBE10776:
.LBE10775:
	.loc 4 4038 0
	mr 3,29
.LVL2153:
.LBB10785:
.LBB10777:
	.loc 6 431 0
	lfs 0,20(1)
.LBE10777:
.LBE10785:
	.loc 4 4038 0
	addi 4,1,16
.LVL2154:
.LBB10786:
.LBB10778:
	.loc 6 431 0
	lfs 13,0(29)
.LBE10778:
.LBE10786:
	.loc 4 4038 0
	mr 5,26
.LBB10787:
.LBB10779:
	.loc 6 431 0
	fsubs 12,12,0
	lfs 0,16(1)
	lfs 11,8(29)
.LBE10779:
.LBE10787:
	.loc 4 4038 0
	li 7,2049
.LBB10788:
.LBB10780:
	.loc 6 431 0
	fsubs 0,13,0
	lfs 13,24(1)
.LBE10780:
.LBE10788:
.LBB10789:
.LBB10790:
	.loc 6 642 0
	fmuls 12,12,12
.LBE10790:
.LBE10789:
.LBB10797:
.LBB10798:
	.loc 20 142 0
	lwz 9,44(23)
.LBE10798:
.LBE10797:
.LBB10799:
.LBB10781:
	.loc 6 431 0
	fsubs 13,11,13
.LVL2155:
.LBE10781:
.LBE10799:
	.loc 4 4038 0
	lfs 1,4596(31)
	lwz 10,36(9)
	mr 8,27
.LBB10800:
.LBB10782:
	.loc 6 642 0
	fmadds 12,0,0,12
.LBE10782:
.LBE10800:
	.loc 4 4037 0
	lfs 0,4564(31)
.LVL2156:
	.loc 4 4038 0
	addic 10,10,-1
	subfe 10,10,10
	lwz 6,4588(31)
	and 10,10,25
	stw 28,8(1)
.LBB10801:
.LBB10783:
	.loc 6 642 0
	fmadds 12,13,13,12
.LBE10783:
.LBE10801:
	.loc 4 4038 0
	addi 10,10,1000
.LBB10802:
.LBB10784:
	.loc 6 642 0
	stfs 12,48(1)
.LVL2157:
.LBE10784:
.LBE10802:
.LBB10803:
.LBB10795:
.LBB10791:
.LBB10792:
	.loc 8 246 0
	fmuls 2,12,30
	.loc 8 248 0
	lwz 9,48(1)
	.loc 4 4001 0
	fneg 2,2
	.loc 8 248 0
	srawi 0,9,1
.LBE10792:
.LBE10791:
.LBE10795:
.LBE10803:
	.loc 4 4038 0
	mr 9,30
.LBB10804:
.LBB10796:
.LBB10794:
.LBB10793:
	.loc 8 249 0
	subf 0,0,24
	stw 0,52(1)
.LVL2158:
	.loc 8 250 0
	lfs 11,52(1)
	fmuls 13,11,11
.LVL2159:
	fmadds 2,2,13,31
.LVL2160:
	fmuls 2,11,2
.LVL2161:
.LBE10793:
.LBE10794:
	.loc 6 643 0
	fmuls 2,12,2
.LVL2162:
.LBE10796:
.LBE10804:
	.loc 4 4038 0
	fmuls 2,2,0
.LVL2163:
	bl _ZN4idAI17PredictTrajectoryERK6idVec3S2_fS2_PK11idClipModelifPK8idEntityS8_iRS0_
.LVL2164:
	mr 22,3
.LVL2165:
	.loc 4 4040 0
	b .L1199
.LVL2166:
.L1211:
.LBB10805:
.LBB10688:
	.loc 7 636 0
	addi 11,11,132
.LVL2167:
	slwi 11,11,2
.LVL2168:
	add 9,9,11
.LBE10688:
.LBE10805:
	.loc 4 4018 0
	lwz 0,4(9)
	cmpw 7,30,0
	bne- 7,.L1201
	.loc 4 4019 0
	lwz 9,0(30)
	addi 22,1,28
	mr 3,30
	addi 4,31,5124
	lwz 0,260(9)
	mr 5,22
	addi 6,1,16
	mtctr 0
	b .L1209
.LVL2169:
.L1197:
	.loc 4 4010 0
	addi 3,31,4216
	.loc 4 4011 0
	li 22,0
	.loc 4 4010 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL2170:
.LBB10806:
.LBB10807:
.LBB10808:
	.loc 13 454 0
	lfs 0,2272(31)
	lfs 13,12(3)
	lfs 11,16(3)
	lfs 12,20(3)
	fmuls 11,0,11
	lfs 8,4(3)
	fmuls 12,0,12
	lfs 9,8(3)
	fmuls 0,0,13
.LBE10808:
.LBE10807:
.LBE10806:
.LBB10815:
.LBB10816:
	lfs 10,0(3)
.LBE10816:
.LBE10815:
.LBB10820:
.LBB10812:
.LBB10809:
	lfs 13,2268(31)
	fmadds 11,13,8,11
	lfs 8,28(3)
	fmadds 12,13,9,12
	lfs 9,32(3)
.LBE10809:
.LBE10812:
.LBE10820:
.LBB10821:
.LBB10817:
	fmadds 13,10,13,0
.LBE10817:
.LBE10821:
.LBB10822:
.LBB10813:
.LBB10810:
	lfs 0,2276(31)
.LBE10810:
.LBE10813:
.LBE10822:
.LBB10823:
.LBB10818:
	lfs 10,24(3)
.LBE10818:
.LBE10823:
.LBB10824:
.LBB10814:
.LBB10811:
	fmadds 11,0,8,11
	fmadds 12,0,9,12
.LVL2171:
.LBE10811:
.LBE10814:
.LBE10824:
.LBB10825:
.LBB10819:
	fmadds 0,10,0,13
	.loc 6 425 0
	stfs 11,4(28)
	.loc 6 426 0
	stfs 12,8(28)
	.loc 6 424 0
	stfs 0,0(28)
.LBE10819:
.LBE10825:
	.loc 4 4011 0
	b .L1199
.LVL2172:
.L1210:
	.loc 4 4015 0
	bl _ZNK4idAI25CreateProjectileClipModelEv
	b .L1200
.LBE10827:
	.cfi_endproc
.LFE2953:
	.size	_ZNK4idAI9GetAimDirERK6idVec3P8idEntityPKS3_RS0_, .-_ZNK4idAI9GetAimDirERK6idVec3P8idEntityPKS3_RS0_
	.align 2
	.globl _ZN23idAASFindAttackPosition8TestAreaEPK5idAASi
	.type	_ZN23idAASFindAttackPosition8TestAreaEPK5idAASi, @function
_ZN23idAASFindAttackPosition8TestAreaEPK5idAASi:
.LFB2843:
	.loc 4 262 0
	.cfi_startproc
.LVL2173:
	mflr 0
	stwu 1,-216(1)
.LCFI288:
	.cfi_def_cfa_offset 216
	.cfi_register 65, 0
	stfd 29,192(1)
	stfd 30,200(1)
	stfd 31,208(1)
	stw 31,188(1)
	mr 31,3
	.cfi_offset 31, -28
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	stw 0,220(1)
.LBB10900:
	.loc 4 271 0
	addi 3,1,8
.LVL2174:
.LBE10900:
	.loc 4 262 0
	stw 30,184(1)
.LBB11015:
	.loc 4 271 0
	lwz 9,0(4)
	lwz 0,40(9)
	.cfi_offset 30, -32
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL2175:
.LBB10901:
.LBB10902:
	.loc 5 354 0
	lfs 0,12(31)
.LBE10902:
.LBE10901:
.LBB10906:
.LBB10907:
	.loc 6 424 0
	lfs 31,8(1)
.LBE10907:
.LBE10906:
	.loc 4 272 0
	lis 9,.LC0@ha
	lfs 29,16(1)
.LBB10909:
.LBB10903:
	.loc 5 354 0
	fcmpu 7,31,0
.LBE10903:
.LBE10909:
	.loc 4 272 0
	lfs 0,.LC0@l(9)
.LBB10910:
.LBB10908:
	.loc 6 425 0
	lfs 30,12(1)
.LVL2176:
.LBE10908:
.LBE10910:
	.loc 4 272 0
	fadds 29,29,0
.LVL2177:
.LBB10911:
.LBB10904:
	.loc 5 354 0
	blt- 7,.L1215
.LVL2178:
	lfs 0,16(31)
	fcmpu 7,30,0
	bnl- 7,.L1223
.LVL2179:
.L1215:
.LBE10904:
.LBE10911:
.LBB10912:
.LBB10913:
	.loc 5 319 0
	lis 9,.LC1@ha
.LBE10913:
.LBE10912:
	.loc 4 279 0
	lis 30,gameLocal+2426068@ha
.LBB10929:
.LBB10925:
	.loc 5 319 0
	lfs 0,.LC1@l(9)
.LBE10925:
.LBE10929:
	.loc 4 279 0
	la 30,gameLocal+2426068@l(30)
	addi 4,1,72
	addi 5,1,56
.LBB10930:
.LBB10926:
	.loc 5 319 0
	fsubs 9,31,0
.LBE10926:
.LBE10930:
	.loc 4 279 0
	li 6,4
.LBB10931:
.LBB10927:
	.loc 5 319 0
	fsubs 10,30,0
.LBE10927:
.LBE10931:
	.loc 4 279 0
	mr 3,30
.LBB10932:
.LBB10928:
	.loc 5 319 0
	fsubs 11,29,0
	fadds 12,31,0
.LBB10914:
.LBB10915:
.LBB10916:
	.loc 6 424 0
	stfs 9,72(1)
.LBE10916:
.LBE10915:
.LBE10914:
	.loc 5 319 0
	fadds 13,30,0
.LBB10923:
.LBB10919:
.LBB10917:
	.loc 6 425 0
	stfs 10,76(1)
.LBE10917:
.LBE10919:
.LBE10923:
	.loc 5 319 0
	fadds 0,29,0
.LBB10924:
.LBB10920:
.LBB10918:
	.loc 6 426 0
	stfs 11,80(1)
.LVL2180:
.LBE10918:
.LBE10920:
.LBB10921:
.LBB10922:
	.loc 6 424 0
	stfs 12,84(1)
	.loc 6 425 0
	stfs 13,88(1)
	.loc 6 426 0
	stfs 0,92(1)
.LBE10922:
.LBE10921:
.LBE10924:
.LBE10928:
.LBE10932:
	.loc 4 279 0
	bl _ZNK5idPVS11GetPVSAreasERK8idBoundsPii
	.loc 4 280 0
	lwz 10,96(31)
	.loc 4 279 0
	mr 6,3
.LVL2181:
	.loc 4 280 0
	lwz 11,100(31)
	mr 3,30
.LVL2182:
	addi 4,1,168
	addi 5,1,56
	stw 10,168(1)
	stw 11,172(1)
	bl _ZNK5idPVS12InCurrentPVSE11pvsHandle_sPKii
.LVL2183:
	cmpwi 7,3,0
	.loc 4 281 0
	li 3,0
	.loc 4 280 0
	bne- 7,.L1224
.LVL2184:
.L1216:
.LBE11015:
	.loc 4 293 0
	lwz 0,220(1)
	lwz 30,184(1)
	mtlr 0
	lwz 31,188(1)
.LVL2185:
	lfd 29,192(1)
	lfd 30,200(1)
	lfd 31,208(1)
	addi 1,1,216
	.cfi_remember_state
.LCFI289:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2186:
.L1223:
.LCFI290:
	.cfi_restore_state
.LBB11016:
.LBB10933:
.LBB10905:
	.loc 5 354 0
	lfs 0,20(31)
	fcmpu 7,29,0
	blt- 7,.L1215
.LVL2187:
	lfs 0,24(31)
	fcmpu 7,31,0
	bgt- 7,.L1215
.LVL2188:
	lfs 0,28(31)
	fcmpu 7,30,0
	bgt- 7,.L1215
.LVL2189:
	lfs 0,32(31)
	.loc 4 276 0
	li 3,0
	.loc 5 354 0
	fcmpu 7,29,0
	bng- 7,.L1216
	b .L1215
.LVL2190:
.L1224:
.LBE10905:
.LBE10933:
.LBB10934:
.LBB10935:
	.loc 6 431 0
	lfs 10,40(31)
.LBE10935:
.LBE10934:
	.loc 4 289 0
	addi 3,1,96
.LBB10941:
.LBB10936:
	.loc 6 431 0
	lfs 8,36(31)
.LBE10936:
.LBE10941:
	.loc 4 289 0
	addi 4,1,32
.LBB10942:
.LBB10937:
	.loc 6 431 0
	fsubs 10,10,30
.LBE10937:
.LBE10942:
.LBB10943:
.LBB10944:
.LBB10945:
	.loc 6 435 0
	lfs 0,76(31)
.LBE10945:
.LBE10944:
.LBE10943:
.LBB10952:
.LBB10938:
	.loc 6 431 0
	fsubs 8,8,31
.LBE10938:
.LBE10952:
.LBB10953:
.LBB10954:
	.loc 6 435 0
	lfs 12,72(31)
.LBE10954:
.LBE10953:
.LBB10957:
.LBB10939:
	.loc 6 431 0
	lfs 11,44(31)
.LBE10939:
.LBE10957:
.LBB10958:
.LBB10947:
.LBB10946:
	.loc 6 435 0
	fmuls 0,10,0
.LBE10946:
.LBE10947:
.LBB10948:
.LBB10949:
	lfs 13,64(31)
.LBE10949:
.LBE10948:
.LBE10958:
.LBB10959:
.LBB10940:
	.loc 6 431 0
	fsubs 11,11,29
.LVL2191:
.LBE10940:
.LBE10959:
.LBB10960:
.LBB10955:
	.loc 6 435 0
	lfs 9,60(31)
.LBE10955:
.LBE10960:
.LBB10961:
.LBB10951:
.LBB10950:
	fmuls 13,10,13
.LBE10950:
.LBE10951:
.LBE10961:
.LBB10962:
.LBB10956:
	.loc 6 424 0
	stfs 8,44(1)
	.loc 6 435 0
	fmadds 0,8,12,0
	lfs 12,80(31)
	.loc 6 426 0
	stfs 11,52(1)
	.loc 6 435 0
	fmadds 13,8,9,13
	.loc 6 425 0
	stfs 10,48(1)
	.loc 6 435 0
	fmadds 0,11,12,0
	lfs 12,68(31)
	fmadds 13,11,12,13
.LBE10956:
.LBE10962:
.LBB10963:
.LBB10964:
	.loc 6 173 0
	fmuls 12,0,0
.LBE10964:
.LBE10963:
	fmadds 12,13,13,12
	stfs 12,176(1)
.LBB10974:
.LBB10971:
.LBB10965:
.LBB10966:
	.loc 8 270 0
	lwz 0,176(1)
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 8 275 0
	lis 11,.LC15@ha
	lfs 6,.LC15@l(11)
	.loc 8 276 0
	or 0,0,9
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 277 0
	stw 0,180(1)
	.loc 8 275 0
	fmuls 6,12,6
	.loc 8 278 0
	lfs 7,.LC63@l(9)
.LBE10966:
.LBE10965:
.LBE10971:
.LBE10974:
	.loc 4 287 0
	li 0,0
.LBB10975:
.LBB10972:
.LBB10969:
.LBB10967:
	.loc 8 277 0
	lfs 12,180(1)
	.loc 4 262 0
	fneg 6,6
.LBE10967:
.LBE10969:
.LBE10972:
.LBE10975:
	.loc 4 287 0
	stw 0,40(1)
.LBB10976:
.LBB10973:
.LBB10970:
.LBB10968:
	.loc 8 277 0
	fmr 9,12
.LVL2192:
	.loc 8 278 0
	fmul 12,9,9
	fmadd 12,6,12,7
	fmul 12,9,12
.LVL2193:
	.loc 8 279 0
	fmul 11,12,12
.LVL2194:
	fmadd 7,6,11,7
.LVL2195:
	fmul 12,12,7
.LVL2196:
	.loc 8 280 0
	frsp 12,12
.LVL2197:
.LBE10968:
.LBE10970:
	.loc 6 175 0
	fmuls 13,13,12
	.loc 6 176 0
	fmuls 0,0,12
	.loc 6 175 0
	stfs 13,32(1)
	.loc 6 176 0
	stfs 0,36(1)
.LBE10973:
.LBE10976:
	.loc 4 289 0
	bl _ZNK6idVec36ToMat3Ev
.LVL2198:
	li 10,0
.L1218:
.LBB10977:
.LBB10978:
.LBB10979:
.LBB10980:
	.loc 6 424 0
	addi 11,1,96
.LVL2199:
	addi 9,1,132
	lwzux 0,11,10
.LVL2200:
.LBE10980:
.LBE10979:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB10983:
.LBB10981:
	.loc 6 424 0
	stwux 0,9,10
.LBE10981:
.LBE10983:
	.loc 13 333 0
	addi 10,10,12
.LBB10984:
.LBB10982:
	.loc 6 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 6 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE10982:
.LBE10984:
	.loc 13 333 0
	bne+ 7,.L1218
.LVL2201:
.LBE10978:
.LBE10977:
.LBB10985:
.LBB10986:
.LBB10987:
	.loc 13 454 0
	lfs 0,52(31)
.LBE10987:
.LBE10986:
.LBE10985:
	.loc 4 292 0
	addi 4,1,20
.LBB10998:
.LBB10993:
.LBB10988:
	.loc 13 454 0
	lfs 11,148(1)
.LBE10988:
.LBE10993:
.LBE10998:
	.loc 4 292 0
	addi 7,1,44
.LBB10999:
.LBB10994:
.LBB10989:
	.loc 13 454 0
	lfs 13,144(1)
	lfs 12,152(1)
	fmuls 11,0,11
.LBE10989:
.LBE10994:
.LBE10999:
.LBB11000:
.LBB11001:
	lfs 10,136(1)
.LBE11001:
.LBE11000:
.LBB11005:
.LBB10995:
.LBB10990:
	fmuls 12,0,12
.LBE10990:
.LBE10995:
.LBE11005:
	.loc 4 292 0
	lwz 3,4(31)
.LBB11006:
.LBB10996:
.LBB10991:
	.loc 13 454 0
	fmuls 0,0,13
	lfs 13,48(31)
.LBE10991:
.LBE10996:
.LBE11006:
	.loc 4 292 0
	lwz 5,8(31)
	mr 6,3
.LBB11007:
.LBB11002:
	.loc 13 454 0
	fmadds 11,13,10,11
	lfs 10,140(1)
	fmadds 12,13,10,12
	lfs 10,132(1)
	fmadds 13,10,13,0
.LBE11002:
.LBE11007:
.LBB11008:
.LBB10997:
.LBB10992:
	lfs 0,56(31)
.LVL2202:
.LBE10992:
.LBE10997:
.LBE11008:
.LBB11009:
.LBB11003:
	lfs 10,160(1)
	fmadds 11,0,10,11
	lfs 10,164(1)
	fmadds 12,0,10,12
	lfs 10,156(1)
	.loc 6 452 0
	fadds 30,30,11
	.loc 13 454 0
	fmadds 0,10,0,13
	.loc 6 452 0
	fadds 29,29,12
.LVL2203:
.LBE11003:
.LBE11009:
.LBB11010:
.LBB11011:
	.loc 6 425 0
	stfs 30,24(1)
.LBE11011:
.LBE11010:
.LBB11013:
.LBB11004:
	.loc 6 452 0
	fadds 31,31,0
.LBE11004:
.LBE11013:
.LBB11014:
.LBB11012:
	.loc 6 426 0
	stfs 29,28(1)
	.loc 6 424 0
	stfs 31,20(1)
.LBE11012:
.LBE11014:
	.loc 4 292 0
	bl _ZNK4idAI9GetAimDirERK6idVec3P8idEntityPKS3_RS0_
.LVL2204:
.LBE11016:
	.loc 4 293 0
	lwz 0,220(1)
	lwz 30,184(1)
	mtlr 0
	lwz 31,188(1)
.LVL2205:
	lfd 29,192(1)
.LVL2206:
	lfd 30,200(1)
.LVL2207:
	lfd 31,208(1)
	addi 1,1,216
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI291:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2843:
	.size	_ZN23idAASFindAttackPosition8TestAreaEPK5idAASi, .-_ZN23idAASFindAttackPosition8TestAreaEPK5idAASi
	.align 2
	.globl _ZN4idAI11BeginAttackEPKc
	.type	_ZN4idAI11BeginAttackEPKc, @function
_ZN4idAI11BeginAttackEPKc:
.LFB2954:
	.loc 4 4048 0
	.cfi_startproc
.LVL2208:
	stwu 1,-16(1)
.LCFI292:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 4 4049 0
	addi 3,3,4628
.LVL2209:
	.loc 4 4048 0
	stw 0,20(1)
	.loc 4 4049 0
	.cfi_offset 65, 4
	bl _ZN5idStraSEPKc
.LVL2210:
	.loc 4 4050 0
	lis 9,gameLocal+2426836@ha
	lwz 0,gameLocal+2426836@l(9)
	stw 0,4556(31)
	.loc 4 4051 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2211:
	mtlr 0
	addi 1,1,16
.LCFI293:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2954:
	.size	_ZN4idAI11BeginAttackEPKc, .-_ZN4idAI11BeginAttackEPKc
	.align 2
	.globl _ZN4idAI9EndAttackEv
	.type	_ZN4idAI9EndAttackEv, @function
_ZN4idAI9EndAttackEv:
.LFB2955:
	.loc 4 4058 0
	.cfi_startproc
.LVL2212:
	mflr 0
	stwu 1,-8(1)
.LCFI294:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 4 4059 0
	lis 4,.LC26@ha
	addi 3,3,4628
.LVL2213:
	la 4,.LC26@l(4)
	.loc 4 4058 0
	stw 0,12(1)
	.loc 4 4059 0
	.cfi_offset 65, 4
	bl _ZN5idStraSEPKc
.LVL2214:
	.loc 4 4060 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI295:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2955:
	.size	_ZN4idAI9EndAttackEv, .-_ZN4idAI9EndAttackEv
	.align 2
	.globl _ZN4idAI16CreateProjectileERK6idVec3S2_
	.type	_ZN4idAI16CreateProjectileERK6idVec3S2_, @function
_ZN4idAI16CreateProjectileERK6idVec3S2_:
.LFB2956:
	.loc 4 4067 0
	.cfi_startproc
.LVL2215:
	mflr 0
	stwu 1,-40(1)
.LCFI296:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 28,24(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 29,28(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
.LVL2216:
	stw 31,36(1)
.LBB11034:
.LBB11035:
.LBB11036:
	.loc 7 635 0
	lis 31,gameLocal@ha
	.cfi_offset 31, -4
.LBE11036:
.LBE11035:
.LBE11034:
	.loc 4 4067 0
	stw 0,44(1)
.LBB11065:
.LBB11039:
.LBB11037:
	.loc 7 635 0
	la 31,gameLocal@l(31)
	.loc 7 634 0
	lwz 0,4624(3)
	.cfi_offset 65, 4
	rlwinm 9,0,0,20,31
.LVL2217:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,31,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1241
.LVL2218:
.L1228:
.LBE11037:
.LBE11039:
	.loc 4 4072 0
	lwz 4,4584(30)
.LVL2219:
	mr 3,31
.LVL2220:
	addi 5,1,8
.LVL2221:
	li 6,0
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
.LVL2222:
	.loc 4 4073 0
	lwz 3,8(1)
	cmpwi 7,3,0
	beq- 7,.L1242
.L1230:
.LVL2223:
.LBB11040:
.LBB11041:
	.loc 16 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2224:
.LBE11041:
	.loc 4 5138 0
	lis 9,_ZN12idProjectile4TypeE@ha
	la 9,_ZN12idProjectile4TypeE@l(9)
	lwz 0,56(3)
.LBB11046:
.LBB11042:
.LBB11043:
	.loc 16 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1243
.L1232:
.LBE11043:
.LBE11042:
.LBE11046:
.LBE11040:
	.loc 4 4079 0
	lwz 3,8(1)
.LVL2225:
	bl _ZNK7idClass12GetClassnameEv
	.loc 4 4080 0
	lis 4,.LC121@ha
	.loc 4 4079 0
	mr 5,3
.LVL2226:
	.loc 4 4080 0
	la 4,.LC121@l(4)
	mr 3,31
.LVL2227:
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LVL2228:
.L1237:
	.loc 4 4082 0
	lwz 9,8(1)
.LVL2229:
.LBB11048:
.LBB11049:
	.loc 7 605 0
	cmpwi 7,9,0
	beq- 7,.L1244
	.loc 7 608 0
	lwz 9,4(9)
	addi 11,9,4228
	slwi 11,11,2
	add 11,31,11
	lwz 0,4(11)
	slwi 0,0,12
	or 0,0,9
	rlwinm 9,0,0,20,31
	stw 0,4624(30)
	addi 11,9,4228
	srawi 0,0,12
	slwi 11,11,2
	add 11,31,11
	lwz 11,4(11)
.L1234:
.LVL2230:
.LBE11049:
.LBE11048:
.LBB11051:
.LBB11052:
	.loc 7 635 0
	cmpw 7,11,0
	.loc 7 638 0
	li 3,0
	.loc 7 635 0
	bne+ 7,.L1235
	addi 9,9,132
.LVL2231:
	b .L1229
.LVL2232:
.L1241:
.LBE11052:
.LBE11051:
.LBB11054:
.LBB11038:
	.loc 7 636 0
	addi 9,9,132
.LVL2233:
	slwi 11,9,2
	add 11,31,11
.LBE11038:
.LBE11054:
	.loc 4 4071 0
	lwz 0,4(11)
	cmpwi 7,0,0
	beq- 7,.L1228
.LVL2234:
.L1229:
.LBB11055:
.LBB11053:
	.loc 7 636 0
	slwi 9,9,2
	add 9,31,9
	lwz 3,4(9)
.L1235:
.LBE11053:
.LBE11055:
	.loc 4 4085 0
	mr 4,30
	mr 5,29
	mr 6,28
	bl _ZN12idProjectile6CreateEP8idEntityRK6idVec3S4_
.LVL2235:
.LBB11056:
.LBB11057:
	.loc 7 634 0
	lwz 0,4624(30)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL2236:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,31,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne- 7,.L1236
	.loc 7 636 0
	addi 9,9,132
.LVL2237:
	slwi 9,9,2
.LVL2238:
	add 31,31,9
	lwz 3,4(31)
.L1236:
.LBE11057:
.LBE11056:
.LBE11065:
	.loc 4 4088 0
	lwz 0,44(1)
	lwz 28,24(1)
.LVL2239:
	mtlr 0
	lwz 29,28(1)
.LVL2240:
	lwz 30,32(1)
.LVL2241:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI297:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2242:
.L1243:
.LCFI298:
	.cfi_restore_state
.LBB11066:
.LBB11058:
.LBB11047:
.LBB11045:
.LBB11044:
	.loc 16 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1232
	b .L1237
.LVL2243:
.L1242:
.LBE11044:
.LBE11045:
.LBE11047:
.LBE11058:
.LBB11059:
.LBB11060:
	.loc 11 241 0
	lwz 3,4584(30)
	lis 4,.LC119@ha
	la 4,.LC119@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2244:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1238
.LVL2245:
.LBB11061:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL2246:
.L1231:
.LBE11061:
.LBE11060:
.LBE11059:
	.loc 4 4075 0
	lis 4,.LC120@ha
	mr 3,31
.LVL2247:
	la 4,.LC120@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	lwz 3,8(1)
	b .L1230
.LVL2248:
.L1244:
.LBB11063:
.LBB11050:
	.loc 7 606 0
	stw 9,4624(30)
	li 0,0
	lwz 11,16916(31)
	b .L1234
.LVL2249:
.L1238:
.LBE11050:
.LBE11063:
.LBB11064:
.LBB11062:
	.loc 11 245 0
	lis 5,.LC26@ha
	la 5,.LC26@l(5)
	b .L1231
.LBE11062:
.LBE11064:
.LBE11066:
	.cfi_endproc
.LFE2956:
	.size	_ZN4idAI16CreateProjectileERK6idVec3S2_, .-_ZN4idAI16CreateProjectileERK6idVec3S2_
	.align 2
	.globl _ZN4idAI16RemoveProjectileEv
	.type	_ZN4idAI16RemoveProjectileEv, @function
_ZN4idAI16RemoveProjectileEv:
.LFB2957:
	.loc 4 4095 0
	.cfi_startproc
.LVL2250:
	mflr 0
	stwu 1,-16(1)
.LCFI299:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB11067:
.LBB11068:
	.loc 7 635 0
	lis 9,gameLocal@ha
.LBE11068:
.LBE11067:
	.loc 4 4095 0
	stw 31,12(1)
.LBB11072:
.LBB11069:
	.loc 7 635 0
	la 9,gameLocal@l(9)
.LBE11069:
.LBE11072:
	.loc 4 4095 0
	stw 0,20(1)
	.loc 4 4095 0
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL2251:
.LBB11073:
.LBB11070:
	.loc 7 634 0
	lwz 0,4624(3)
	rlwinm 11,0,0,20,31
.LVL2252:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1247
.LVL2253:
.L1245:
.LBE11070:
.LBE11073:
	.loc 4 4100 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2254:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI300:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2255:
.L1247:
.LCFI301:
	.cfi_restore_state
.LBB11074:
.LBB11071:
	.loc 7 636 0
	addi 11,11,132
.LVL2256:
	slwi 11,11,2
.LVL2257:
	add 9,9,11
	lwz 3,4(9)
.LVL2258:
.LBE11071:
.LBE11074:
	.loc 4 4096 0
	cmpwi 7,3,0
	beq- 7,.L1245
.LVL2259:
	.loc 4 4097 0
	lis 4,EV_Remove@ha
	li 5,0
	la 4,EV_Remove@l(4)
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LVL2260:
.LBB11075:
.LBB11076:
	.loc 7 606 0
	li 0,0
	stw 0,4624(31)
.LBE11076:
.LBE11075:
	.loc 4 4100 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2261:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI302:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2957:
	.size	_ZN4idAI16RemoveProjectileEv, .-_ZN4idAI16RemoveProjectileEv
	.align 2
	.globl _ZN4idAI14DamageFeedbackEP8idEntityS1_Ri
	.type	_ZN4idAI14DamageFeedbackEP8idEntityS1_Ri, @function
_ZN4idAI14DamageFeedbackEP8idEntityS1_Ri:
.LFB2959:
	.loc 4 4237 0
	.cfi_startproc
.LVL2262:
	.loc 4 4238 0
	cmpw 7,3,4
	.loc 4 4237 0
	mflr 0
	stwu 1,-24(1)
.LCFI303:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	.loc 4 4238 0
	beq- 7,.L1253
	.cfi_offset 65, 4
.LVL2263:
.L1249:
.LBB11077:
.LBB11078:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL2264:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1251
	.loc 7 638 0
	li 0,0
.LVL2265:
.L1252:
.LBE11078:
.LBE11077:
	.loc 4 4242 0
	cmpw 7,4,0
	beq- 7,.L1254
.LVL2266:
.L1248:
	.loc 4 4245 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL2267:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI304:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL2268:
.L1254:
.LCFI305:
	.cfi_restore_state
.LBB11080:
.LBB11081:
	.loc 18 237 0
	lwz 9,5244(31)
	cmpwi 7,9,0
	beq- 7,.L1248
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LBE11081:
.LBE11080:
	.loc 4 4245 0
	lwz 0,28(1)
	lwz 31,20(1)
.LVL2269:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
.LCFI306:
	.cfi_def_cfa_offset 0
	blr
.LVL2270:
.L1251:
.LCFI307:
	.cfi_restore_state
.LBB11082:
.LBB11079:
	.loc 7 636 0
	addi 11,11,132
.LVL2271:
	slwi 11,11,2
.LVL2272:
	add 9,9,11
	lwz 0,4(9)
	b .L1252
.LVL2273:
.L1253:
.LBE11079:
.LBE11082:
.LBB11083:
.LBB11084:
	.loc 16 340 0 discriminator 1
	lwz 9,0(5)
	mr 3,5
	lwz 0,0(9)
	stw 4,8(1)
	stw 6,12(1)
	mtctr 0
	bctrl
.LVL2274:
.LBE11084:
	.loc 4 5138 0 discriminator 1
	lis 9,_ZN12idProjectile4TypeE@ha
	la 9,_ZN12idProjectile4TypeE@l(9)
	lwz 0,56(3)
.LBB11087:
.LBB11085:
.LBB11086:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	lwz 4,8(1)
	cmpw 7,0,11
	lwz 6,12(1)
	blt- 7,.L1249
	.loc 16 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1249
.LBE11086:
.LBE11085:
.LBE11087:
.LBE11083:
	.loc 4 4240 0 is_stmt 1 discriminator 4
	lwz 9,0(6)
	addi 0,9,1
	srawi 0,0,1
	addze 0,0
	stw 0,0(6)
	b .L1248
	.cfi_endproc
.LFE2959:
	.size	_ZN4idAI14DamageFeedbackEP8idEntityS1_Ri, .-_ZN4idAI14DamageFeedbackEP8idEntityS1_Ri
	.align 2
	.globl _ZN4idAI12DirectDamageEPKcP8idEntity
	.type	_ZN4idAI12DirectDamageEPKcP8idEntity, @function
_ZN4idAI12DirectDamageEPKcP8idEntity:
.LFB2960:
	.loc 4 4257 0
	.cfi_startproc
.LVL2275:
	stwu 1,-96(1)
.LCFI308:
	.cfi_def_cfa_offset 96
	mflr 0
	stw 29,84(1)
.LBB11102:
	.loc 4 4262 0
	lis 29,gameLocal@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	la 29,gameLocal@l(29)
.LBE11102:
	.loc 4 4257 0
	stw 30,88(1)
	stw 31,92(1)
	mr 30,5
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	mr 31,3
.LBB11135:
	.loc 4 4262 0
	li 5,0
.LVL2276:
	mr 3,29
.LVL2277:
.LBE11135:
	.loc 4 4257 0
	stw 27,76(1)
	stw 28,80(1)
	mr 27,4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	stw 0,100(1)
.LBB11136:
	.loc 4 4262 0
	.cfi_offset 65, 4
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL2278:
	.loc 4 4263 0
	mr. 28,3
	beq- 0,.L1262
.LVL2279:
.L1256:
	.loc 4 4267 0
	lwz 0,192(30)
	andis. 9,0,8192
	bne- 0,.L1263
.LBE11136:
	.loc 4 4292 0
	lwz 0,100(1)
	lwz 27,76(1)
.LVL2280:
	mtlr 0
	lwz 28,80(1)
.LVL2281:
	lwz 29,84(1)
	lwz 30,88(1)
.LVL2282:
	lwz 31,92(1)
.LVL2283:
	addi 1,1,96
	.cfi_remember_state
.LCFI309:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL2284:
.L1263:
.LCFI310:
	.cfi_restore_state
.LBB11137:
.LBB11103:
.LBB11104:
	.loc 11 241 0
	lis 4,.LC123@ha
	mr 3,28
	la 4,.LC123@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE11104:
.LBE11103:
	.loc 4 4283 0
	lis 4,.LC124@ha
	lis 5,.LC31@ha
	la 4,.LC124@l(4)
	la 5,.LC31@l(5)
	addi 6,1,20
	mr 3,28
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	.loc 4 4286 0
	addi 3,31,4216
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
	addi 11,31,2268
.LVL2285:
	.loc 4 4257 0
	addi 0,1,68
.LBE11137:
	.loc 13 465 0
	addi 9,1,32
	addi 3,3,-4
.LVL2286:
.L1258:
.LBB11138:
.LBB11105:
.LBB11106:
	.loc 13 467 0
	lfs 9,0(11)
	.loc 4 4257 0
	mr 10,3
	.loc 13 467 0
	lfs 10,4(11)
.LBE11106:
.LBE11105:
.LBE11138:
	.loc 4 4257 0
	li 8,0
.LBB11139:
.LBB11109:
.LBB11107:
	.loc 13 467 0
	lfs 11,8(11)
.LVL2287:
.L1259:
.LBE11107:
.LBE11109:
	.loc 4 4257 0
	addi 10,10,4
.LBB11110:
.LBB11108:
	.loc 13 468 0
	cmpwi 7,8,8
	.loc 13 471 0
	lfs 0,12(10)
	lfs 12,0(10)
	fmuls 0,10,0
	lfs 13,24(10)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsx 0,9,8
	.loc 13 468 0
	addi 8,8,4
	bne+ 7,.L1259
	addi 9,9,12
	.loc 13 474 0
	addi 11,11,12
.LVL2288:
	.loc 13 467 0
	cmpw 7,9,0
	bne+ 7,.L1258
.LVL2289:
.LBE11108:
.LBE11110:
.LBB11111:
.LBB11112:
	.loc 13 454 0
	lfs 0,24(1)
.LBE11112:
.LBE11111:
	.loc 4 4288 0
	mr 3,30
.LVL2290:
.LBB11121:
.LBB11113:
	.loc 13 454 0
	lfs 11,48(1)
.LBE11113:
.LBE11121:
	.loc 4 4288 0
	mr 4,31
.LBB11122:
.LBB11114:
	.loc 13 454 0
	lfs 13,44(1)
.LBE11114:
.LBE11122:
	.loc 4 4288 0
	mr 5,31
.LBB11123:
.LBB11115:
	.loc 13 454 0
	lfs 12,52(1)
	fmuls 11,0,11
	lfs 10,36(1)
.LBE11115:
.LBE11123:
	.loc 4 4288 0
	addi 6,1,8
.LBB11124:
.LBB11116:
	.loc 13 454 0
	fmuls 12,0,12
.LBE11116:
.LBE11124:
	.loc 4 4288 0
	lwz 9,0(30)
.LVL2291:
.LBB11125:
.LBB11117:
	.loc 13 454 0
	fmuls 0,0,13
	lfs 13,20(1)
.LBE11117:
.LBE11125:
	.loc 4 4288 0
	lwz 0,164(9)
	lis 9,.LC0@ha
.LBB11126:
.LBB11118:
	.loc 13 454 0
	fmadds 11,13,10,11
	lfs 10,40(1)
.LBE11118:
.LBE11126:
	.loc 4 4288 0
	mr 7,27
	mtctr 0
.LBB11127:
.LBB11119:
	.loc 13 454 0
	fmadds 12,13,10,12
.LBE11119:
.LBE11127:
.LBB11128:
.LBB11129:
	lfs 10,32(1)
.LBE11129:
.LBE11128:
	.loc 4 4288 0
	lfs 1,.LC0@l(9)
	li 8,-1
.LBB11132:
.LBB11130:
	.loc 13 454 0
	fmadds 13,10,13,0
.LBE11130:
.LBE11132:
.LBB11133:
.LBB11120:
	lfs 0,28(1)
	lfs 10,60(1)
	fmadds 11,0,10,11
	lfs 10,64(1)
	fmadds 12,0,10,12
.LVL2292:
.LBE11120:
.LBE11133:
.LBB11134:
.LBB11131:
	lfs 10,56(1)
	.loc 6 425 0
	stfs 11,12(1)
	.loc 13 454 0
	fmadds 0,10,0,13
	.loc 6 426 0
	stfs 12,16(1)
	.loc 6 424 0
	stfs 0,8(1)
.LBE11131:
.LBE11134:
	.loc 4 4288 0
	bctrl
.LVL2293:
	.loc 4 4291 0
	mr 3,31
	bl _ZN4idAI9EndAttackEv
.LBE11139:
	.loc 4 4292 0
	lwz 0,100(1)
	lwz 27,76(1)
.LVL2294:
	mtlr 0
	lwz 28,80(1)
.LVL2295:
	lwz 29,84(1)
	lwz 30,88(1)
.LVL2296:
	lwz 31,92(1)
.LVL2297:
	addi 1,1,96
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI311:
	.cfi_def_cfa_offset 0
	blr
.LVL2298:
.L1262:
.LCFI312:
	.cfi_restore_state
.LBB11140:
	.loc 4 4264 0
	lwz 6,72(31)
	lis 4,.LC122@ha
	mr 3,29
.LVL2299:
	la 4,.LC122@l(4)
	mr 5,27
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1256
.LBE11140:
	.cfi_endproc
.LFE2960:
	.size	_ZN4idAI12DirectDamageEPKcP8idEntity, .-_ZN4idAI12DirectDamageEPKcP8idEntity
	.align 2
	.globl _ZNK4idAI9TestMeleeEv
	.type	_ZNK4idAI9TestMeleeEv, @function
_ZNK4idAI9TestMeleeEv:
.LFB2961:
	.loc 4 4299 0
	.cfi_startproc
.LVL2300:
	mflr 0
	stwu 1,-256(1)
.LCFI313:
	.cfi_def_cfa_offset 256
	.cfi_register 65, 0
	stw 29,172(1)
	mr 29,3
	.cfi_offset 29, -84
.LVL2301:
	stw 31,180(1)
.LBB11190:
.LBB11191:
.LBB11192:
	.loc 7 635 0
	lis 31,gameLocal@ha
	.cfi_offset 31, -76
.LBE11192:
.LBE11191:
.LBE11190:
	.loc 4 4299 0
	stw 0,260(1)
.LBB11253:
.LBB11196:
.LBB11193:
	.loc 7 635 0
	la 31,gameLocal@l(31)
.LBE11193:
.LBE11196:
.LBE11253:
	.loc 4 4299 0
	stfd 23,184(1)
	stfd 24,192(1)
	stfd 25,200(1)
	stfd 26,208(1)
	stfd 27,216(1)
	stfd 28,224(1)
	stfd 29,232(1)
	stfd 30,240(1)
	stfd 31,248(1)
	stw 28,168(1)
	stw 30,176(1)
.LBB11254:
.LBB11197:
.LBB11194:
	.loc 7 634 0
	lwz 0,5120(3)
	.cfi_offset 30, -80
	.cfi_offset 28, -88
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 65, 4
	.loc 4 4304 0
	li 3,0
.LVL2302:
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL2303:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,31,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1282
.LVL2304:
.L1265:
.LBE11194:
.LBE11197:
.LBE11254:
	.loc 4 4342 0
	lwz 0,260(1)
	lwz 28,168(1)
	mtlr 0
	lwz 29,172(1)
.LVL2305:
	lwz 30,176(1)
	lwz 31,180(1)
	lfd 23,184(1)
	lfd 24,192(1)
	lfd 25,200(1)
	lfd 26,208(1)
	lfd 27,216(1)
	lfd 28,224(1)
	lfd 29,232(1)
	lfd 30,240(1)
	lfd 31,248(1)
	addi 1,1,256
	.cfi_remember_state
.LCFI314:
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
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2306:
.L1282:
.LCFI315:
	.cfi_restore_state
.LBB11255:
.LBB11198:
.LBB11195:
	.loc 7 636 0
	addi 9,9,132
.LVL2307:
	slwi 9,9,2
.LVL2308:
	add 9,31,9
	lwz 30,4(9)
.LBE11195:
.LBE11198:
	.loc 4 4303 0
	cmpwi 7,30,0
	beq- 7,.L1265
	.loc 4 4303 0 is_stmt 0 discriminator 1
	lis 9,.LC6@ha
	lfs 13,4560(29)
	lfs 0,.LC6@l(9)
	fcmpu 7,13,0
	beq+ 7,.L1265
	.loc 4 4308 0 is_stmt 1
	addi 28,29,4216
	li 4,0
	mr 3,28
	bl _ZNK15idPhysics_Actor9GetOriginEi
	.loc 4 4309 0
	li 4,-1
	.loc 4 4308 0
	mr 9,3
	.loc 4 4309 0
	mr 3,28
	.loc 4 4308 0
	lfs 29,0(9)
.LVL2309:
	lfs 30,4(9)
.LVL2310:
	lfs 31,8(9)
.LVL2311:
	.loc 4 4309 0
	bl _ZNK15idPhysics_Actor9GetBoundsEi
.LVL2312:
	.loc 4 4315 0
	lis 9,.LC73@ha
	lfs 13,8(3)
	lfs 0,.LC73@l(9)
	.loc 4 4318 0
	lfs 10,20(3)
	.loc 4 4321 0
	mr 3,30
.LVL2313:
	.loc 4 4315 0
	fsubs 13,13,0
	.loc 4 4318 0
	fadds 10,10,0
	.loc 4 4313 0
	lfs 0,4560(29)
.LVL2314:
.LBB11199:
.LBB11200:
.LBB11201:
	.loc 6 458 0
	fadds 13,31,13
	.loc 6 456 0
	fsubs 11,29,0
	.loc 6 457 0
	fsubs 12,30,0
.LBE11201:
.LBE11200:
.LBB11205:
.LBB11206:
	.loc 6 456 0
	fadds 29,0,29
.LVL2315:
.LBE11206:
.LBE11205:
.LBB11210:
.LBB11202:
	.loc 6 458 0
	stfs 13,40(1)
.LVL2316:
.LBE11202:
.LBE11210:
.LBB11211:
.LBB11207:
	.loc 6 457 0
	fadds 30,0,30
.LVL2317:
.LBE11207:
.LBE11211:
.LBB11212:
.LBB11203:
	.loc 6 456 0
	stfs 11,32(1)
.LBE11203:
.LBE11212:
.LBB11213:
.LBB11208:
	.loc 6 458 0
	fadds 31,31,10
.LVL2318:
.LBE11208:
.LBE11213:
.LBB11214:
.LBB11204:
	.loc 6 457 0
	stfs 12,36(1)
.LBE11204:
.LBE11214:
.LBB11215:
.LBB11209:
	.loc 6 456 0
	stfs 29,44(1)
	.loc 6 457 0
	stfs 30,48(1)
	.loc 6 458 0
	stfs 31,52(1)
.LBE11209:
.LBE11215:
.LBE11199:
	.loc 4 4321 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 9,3
	.loc 4 4322 0
	mr 3,30
	.loc 4 4321 0
	lfs 31,0(9)
.LVL2319:
	lfs 29,4(9)
.LVL2320:
	lfs 27,8(9)
.LVL2321:
	.loc 4 4322 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL2322:
	lwz 9,0(3)
	li 4,-1
	lwz 0,56(9)
	mtctr 0
	bctrl
.LBB11216:
.LBB11217:
	.loc 4 4325 0
	lis 9,ai_debugMove+44@ha
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE11217:
.LBE11216:
.LBB11218:
.LBB11219:
.LBB11220:
	.loc 6 456 0
	lfs 30,12(3)
.LBE11220:
.LBE11219:
.LBE11218:
	.loc 4 4325 0
	lwz 0,36(9)
	.loc 4 4322 0
	lfs 25,0(3)
.LVL2323:
.LBB11233:
.LBB11224:
.LBB11221:
	.loc 6 456 0
	fadds 30,31,30
.LBE11221:
.LBE11224:
.LBE11233:
	.loc 4 4325 0
	cmpwi 7,0,0
	.loc 4 4322 0
	lfs 24,4(3)
.LVL2324:
	lfs 23,8(3)
.LVL2325:
	lfs 28,16(3)
.LVL2326:
	lfs 26,20(3)
.LVL2327:
	.loc 4 4325 0
	bne- 7,.L1283
.LVL2328:
.L1266:
.LBB11234:
.LBB11235:
	.loc 5 362 0
	lfs 0,32(1)
	.loc 4 4330 0
	li 3,0
	.loc 5 362 0
	fcmpu 7,30,0
	blt- 7,.L1265
.LVL2329:
.LBE11235:
.LBE11234:
.LBB11241:
.LBB11225:
.LBB11222:
	.loc 6 457 0
	fadds 28,29,28
.LVL2330:
.LBE11222:
.LBE11225:
.LBE11241:
.LBB11242:
.LBB11236:
	.loc 5 362 0
	lfs 0,36(1)
	fcmpu 7,28,0
	blt- 7,.L1265
.LVL2331:
.LBE11236:
.LBE11242:
.LBB11243:
.LBB11226:
.LBB11223:
	.loc 6 458 0
	fadds 26,26,27
.LVL2332:
.LBE11223:
.LBE11226:
.LBE11243:
.LBB11244:
.LBB11237:
	.loc 5 362 0
	lfs 0,40(1)
	fcmpu 7,26,0
	blt- 7,.L1265
.LVL2333:
.LBE11237:
.LBE11244:
.LBB11245:
.LBB11227:
.LBB11228:
	.loc 6 456 0
	fadds 31,31,25
.LVL2334:
.LBE11228:
.LBE11227:
.LBE11245:
.LBB11246:
.LBB11238:
	.loc 5 362 0
	lfs 0,44(1)
	fcmpu 7,31,0
	bgt- 7,.L1265
.LVL2335:
.LBE11238:
.LBE11246:
.LBB11247:
.LBB11231:
.LBB11229:
	.loc 6 457 0
	fadds 29,29,24
.LVL2336:
.LBE11229:
.LBE11231:
.LBE11247:
.LBB11248:
.LBB11239:
	.loc 5 362 0
	lfs 0,48(1)
	fcmpu 7,29,0
	bgt- 7,.L1265
.LVL2337:
.LBE11239:
.LBE11248:
.LBB11249:
.LBB11232:
.LBB11230:
	.loc 6 458 0
	fadds 27,27,23
.LVL2338:
.LBE11230:
.LBE11232:
.LBE11249:
.LBB11250:
.LBB11240:
	.loc 5 362 0
	lfs 0,52(1)
	fcmpu 7,27,0
	bgt- 7,.L1265
.LBE11240:
.LBE11250:
	.loc 4 4333 0
	addi 3,1,20
	mr 4,29
	bl _ZNK7idActor14GetEyePositionEv
	.loc 4 4334 0
	addi 3,1,8
	mr 4,30
	bl _ZNK7idActor14GetEyePositionEv
.LVL2339:
.LBB11251:
.LBB11252:
	.loc 10 334 0
	lis 3,gameLocal+2311032@ha
	lis 8,mat3_identity@ha
	li 9,257
	la 3,gameLocal+2311032@l(3)
	addi 4,1,56
	addi 5,1,20
.LVL2340:
	addi 6,1,8
.LVL2341:
	li 7,0
	la 8,mat3_identity@l(8)
	mr 10,29
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LVL2342:
.LBE11252:
.LBE11251:
	.loc 4 4337 0
	lis 9,.LC0@ha
	lfs 13,56(1)
	.loc 4 4338 0
	li 3,1
	.loc 4 4337 0
	lfs 0,.LC0@l(9)
	fcmpu 7,13,0
	beq+ 7,.L1265
	.loc 4 4337 0 is_stmt 0 discriminator 2
	mr 3,31
	addi 4,1,56
	bl _ZNK11idGameLocal14GetTraceEntityERK7trace_s
	.loc 4 4299 0 is_stmt 1 discriminator 2
	xor 3,30,3
	cntlzw 3,3
	srwi 3,3,5
	b .L1265
.LVL2343:
.L1283:
	.loc 4 4326 0
	lis 9,gameRenderWorld@ha
	lis 4,colorYellow@ha
	lwz 3,gameRenderWorld@l(9)
.LVL2344:
	lis 6,vec3_origin@ha
	la 4,colorYellow@l(4)
	addi 5,1,32
	lwz 9,0(3)
	la 6,vec3_origin@l(6)
	li 7,16
	lwz 0,176(9)
	mtctr 0
	bctrl
	b .L1266
.LBE11255:
	.cfi_endproc
.LFE2961:
	.size	_ZNK4idAI9TestMeleeEv, .-_ZNK4idAI9TestMeleeEv
	.align 2
	.globl _ZN4idAI10StaticMoveEv
	.type	_ZN4idAI10StaticMoveEv, @function
_ZN4idAI10StaticMoveEv:
.LFB2932:
	.loc 4 3149 0
	.cfi_startproc
.LVL2345:
	mflr 0
	stwu 1,-104(1)
.LCFI316:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
.LBB11290:
.LBB11291:
.LBB11292:
	.loc 7 635 0
	lis 11,gameLocal@ha
.LBE11292:
.LBE11291:
.LBE11290:
	.loc 4 3149 0
	stw 30,72(1)
.LBB11372:
.LBB11297:
.LBB11293:
	.loc 7 635 0
	la 11,gameLocal@l(11)
.LBE11293:
.LBE11297:
.LBE11372:
	.loc 4 3149 0
	stw 31,76(1)
.LBB11373:
.LBB11298:
.LBB11294:
	.loc 7 638 0
	li 30,0
	.cfi_offset 31, -28
	.cfi_offset 30, -32
.LBE11294:
.LBE11298:
.LBE11373:
	.loc 4 3149 0
	stw 0,108(1)
	mr 31,3
.LVL2346:
	stfd 29,80(1)
	stfd 30,88(1)
	stfd 31,96(1)
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 29,68(1)
.LBB11374:
.LBB11299:
.LBB11295:
	.loc 7 634 0
	lwz 0,5120(3)
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	rlwinm 9,0,0,20,31
.LVL2347:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,9,4228
	slwi 10,10,2
	add 10,11,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1297
.LVL2348:
.L1285:
.LBE11295:
.LBE11299:
.LBB11300:
.LBB11301:
	.loc 18 249 0
	lwz 9,5192(31)
	cmpwi 7,9,0
	beq- 7,.L1286
.LBE11301:
.LBE11300:
	.loc 4 3152 0
	lwz 0,0(9)
	cmpwi 7,0,0
	bne- 7,.L1284
.L1286:
	.loc 4 3156 0
	lwz 0,3956(31)
	cmpwi 7,0,1
	beq- 7,.L1298
	.loc 4 3158 0
	cmpwi 7,0,2
	beq- 7,.L1299
	.loc 4 3160 0
	cmpwi 7,0,0
	bne- 7,.L1289
.LVL2349:
.L1290:
	.loc 4 3163 0
	mr 3,31
	.loc 4 3165 0
	addi 29,31,4216
	.loc 4 3163 0
	bl _ZN4idAI4TurnEv
	.loc 4 3165 0
	li 4,1
	mr 3,29
	bl _ZN17idPhysics_Monster14ForceDeltaMoveEb
	.loc 4 3166 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
.LVL2350:
.LBB11302:
.LBB11303:
	.loc 18 237 0
	lwz 9,5212(31)
	cmpwi 7,9,0
	beq- 7,.L1292
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1292:
.LBE11303:
.LBE11302:
	.loc 4 3170 0
	lbz 0,4547(31)
	cmpwi 7,0,0
	bne- 7,.L1294
	.loc 4 3170 0 is_stmt 0 discriminator 1
	lwz 0,4628(31)
	cmpwi 7,0,0
	bne- 7,.L1300
.L1294:
.LBB11304:
.LBB11305:
.LBB11306:
	.loc 4 3174 0 is_stmt 1
	lis 9,ai_debugMove+44@ha
	.loc 20 142 0
	lwz 9,ai_debugMove+44@l(9)
.LBE11306:
.LBE11305:
	.loc 4 3174 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L1284
.LBB11307:
	.loc 4 3176 0
	lis 28,gameRenderWorld@ha
	.loc 4 3175 0
	li 4,0
	mr 3,29
	bl _ZNK15idPhysics_Actor9GetOriginEi
	.loc 4 3176 0
	lwz 26,gameRenderWorld@l(28)
	.loc 4 3175 0
	mr 30,3
.LVL2351:
	.loc 4 3176 0
	li 4,-1
	lwz 9,0(26)
	mr 3,29
.LVL2352:
	lwz 27,176(9)
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	lis 4,colorMagenta@ha
	mr 5,3
	mtctr 27
	mr 3,26
	la 4,colorMagenta@l(4)
	mr 6,30
	li 7,16
	bctrl
	.loc 4 3177 0
	lwz 3,gameRenderWorld@l(28)
	lis 4,colorBlue@ha
	mr 5,30
	lwz 9,0(3)
	addi 6,31,3964
	li 7,16
	li 8,1
	lwz 0,156(9)
	la 4,colorBlue@l(4)
	mtctr 0
	bctrl
	.loc 4 3178 0
	lwz 27,gameRenderWorld@l(28)
	addi 3,1,44
	mr 4,31
	lwz 9,0(27)
	lwz 28,156(9)
	bl _ZNK7idActor9EyeOffsetEv
.LVL2353:
.LBB11308:
.LBB11309:
	.loc 6 452 0
	lfs 13,4(30)
.LBE11309:
.LBE11308:
	.loc 4 3178 0
	mr 4,31
.LBB11316:
.LBB11314:
	.loc 6 452 0
	lfs 0,48(1)
.LBE11314:
.LBE11316:
	.loc 4 3178 0
	addi 3,1,20
.LBB11317:
.LBB11315:
	.loc 6 452 0
	lfs 12,8(30)
	fadds 13,13,0
	lfs 0,52(1)
	lfs 11,0(30)
	fadds 0,12,0
.LVL2354:
	lfs 12,44(1)
.LBB11310:
.LBB11311:
	.loc 6 397 0
	stfs 13,36(1)
.LBE11311:
.LBE11310:
	.loc 6 452 0
	fadds 12,11,12
.LBB11313:
.LBB11312:
	.loc 6 398 0
	stfs 0,40(1)
	.loc 6 396 0
	stfs 12,32(1)
.LBE11312:
.LBE11313:
.LBE11315:
.LBE11317:
	.loc 4 3178 0
	bl _ZNK7idActor9EyeOffsetEv
.LVL2355:
.LBB11318:
.LBB11319:
	.loc 6 452 0
	lfs 0,20(1)
.LBE11319:
.LBE11318:
	.loc 4 3178 0
	mr 3,29
.LBB11321:
.LBB11320:
	.loc 6 452 0
	lfs 31,0(30)
	lfs 29,4(30)
	fadds 31,31,0
	lfs 0,24(1)
	lfs 30,8(30)
	fadds 29,29,0
	lfs 0,28(1)
	fadds 30,30,0
.LVL2356:
.LBE11320:
.LBE11321:
	.loc 4 3178 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL2357:
.LBB11322:
.LBB11323:
.LBB11324:
	.loc 13 454 0
	lfs 10,16(3)
	.loc 6 452 0
	lis 9,.LC1@ha
	.loc 13 454 0
	lfs 12,2272(31)
.LBE11324:
.LBE11323:
.LBE11322:
	.loc 4 3178 0
	lis 4,colorYellow@ha
.LBB11343:
.LBB11334:
.LBB11325:
	.loc 13 454 0
	lfs 11,20(3)
.LBE11325:
.LBE11334:
.LBE11343:
	.loc 4 3178 0
	la 4,colorYellow@l(4)
.LBB11344:
.LBB11335:
.LBB11326:
	.loc 13 454 0
	lfs 0,12(3)
	fmuls 10,12,10
	fmuls 11,12,11
.LBE11326:
.LBE11335:
.LBE11344:
.LBB11345:
.LBB11346:
.LBB11347:
	lfs 13,0(3)
.LBE11347:
.LBE11346:
.LBE11345:
.LBB11356:
.LBB11336:
.LBB11327:
	fmuls 0,12,0
	lfs 8,4(3)
	lfs 9,8(3)
.LBE11327:
.LBE11336:
.LBE11356:
	.loc 4 3178 0
	addi 5,1,32
.LBB11357:
.LBB11337:
.LBB11328:
	.loc 13 454 0
	lfs 12,2268(31)
.LBE11328:
.LBE11337:
.LBE11357:
	.loc 4 3178 0
	addi 6,1,8
	li 7,16
	li 8,1
.LBB11358:
.LBB11338:
.LBB11329:
	.loc 13 454 0
	fmadds 10,12,8,10
	lfs 8,28(3)
	fmadds 11,12,9,11
	lfs 9,32(3)
.LBE11329:
.LBE11338:
.LBE11358:
.LBB11359:
.LBB11352:
.LBB11348:
	fmadds 12,13,12,0
.LBE11348:
.LBE11352:
.LBE11359:
.LBB11360:
.LBB11339:
.LBB11330:
	lfs 13,2276(31)
.LVL2358:
.LBE11330:
.LBE11339:
.LBE11360:
.LBB11361:
.LBB11353:
.LBB11349:
	lfs 0,24(3)
.LBE11349:
.LBE11353:
.LBE11361:
	.loc 4 3178 0
	mtctr 28
.LBB11362:
.LBB11340:
.LBB11331:
	.loc 13 454 0
	fmadds 10,13,8,10
.LBE11331:
.LBE11340:
.LBE11362:
	.loc 4 3178 0
	mr 3,27
.LVL2359:
.LBB11363:
.LBB11341:
.LBB11332:
	.loc 13 454 0
	fmadds 11,13,9,11
.LBE11332:
.LBE11341:
.LBE11363:
.LBB11364:
.LBB11354:
.LBB11350:
	fmadds 13,0,13,12
.LBE11350:
.LBE11354:
.LBE11364:
.LBB11365:
.LBB11342:
.LBB11333:
	.loc 6 452 0
	lfs 0,.LC1@l(9)
	fmadds 10,10,0,29
	fmadds 11,11,0,30
.LVL2360:
.LBE11333:
.LBE11342:
.LBE11365:
.LBB11366:
.LBB11355:
.LBB11351:
	fmadds 0,13,0,31
	.loc 6 397 0
	stfs 10,12(1)
	.loc 6 398 0
	stfs 11,16(1)
	.loc 6 396 0
	stfs 0,8(1)
.LBE11351:
.LBE11355:
.LBE11366:
	.loc 4 3178 0
	bctrl
.LVL2361:
.L1284:
.LBE11307:
.LBE11304:
.LBE11374:
	.loc 4 3180 0
	lwz 0,108(1)
	lwz 26,56(1)
	mtlr 0
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
.LVL2362:
	lfd 29,80(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
	.cfi_remember_state
.LCFI317:
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
	blr
.LVL2363:
.L1297:
.LCFI318:
	.cfi_restore_state
.LBB11375:
.LBB11367:
.LBB11296:
	.loc 7 636 0
	addi 9,9,132
.LVL2364:
	slwi 9,9,2
.LVL2365:
	add 9,11,9
	lwz 30,4(9)
	b .L1285
.LVL2366:
.L1298:
.LBE11296:
.LBE11367:
	.loc 4 3156 0 discriminator 1
	cmpwi 7,30,0
	beq- 7,.L1289
	.loc 4 3157 0
	mr 3,31
.LVL2367:
	addi 4,31,5124
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L1290
.L1299:
.LVL2368:
.LBB11368:
.LBB11369:
	.loc 7 634 0 discriminator 1
	lwz 0,3988(31)
	rlwinm 9,0,0,20,31
.LVL2369:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,9,4228
	slwi 10,10,2
	add 10,11,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1301
.LVL2370:
.L1289:
.LBE11369:
.LBE11368:
	.loc 4 3161 0
	mr 3,31
	addi 4,31,3964
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L1290
.LVL2371:
.L1300:
	.loc 4 3170 0 discriminator 3
	mr 3,31
	bl _ZNK4idAI9TestMeleeEv
	cmpwi 7,3,0
	beq- 7,.L1294
.LVL2372:
	.loc 4 3171 0 discriminator 5
	lwz 4,4632(31)
	mr 3,31
	mr 5,30
	bl _ZN4idAI12DirectDamageEPKcP8idEntity
	b .L1294
.LVL2373:
.L1301:
.LBB11371:
.LBB11370:
	.loc 7 636 0
	addi 9,9,132
.LVL2374:
	slwi 9,9,2
.LVL2375:
	add 11,11,9
	lwz 3,4(11)
.LBE11370:
.LBE11371:
	.loc 4 3158 0
	cmpwi 7,3,0
	beq- 7,.L1289
.LVL2376:
	.loc 4 3159 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L1290
.LBE11375:
	.cfi_endproc
.LFE2932:
	.size	_ZN4idAI10StaticMoveEv, .-_ZN4idAI10StaticMoveEv
	.align 2
	.globl _ZN4idAI7FlyMoveEv
	.type	_ZN4idAI7FlyMoveEv, @function
_ZN4idAI7FlyMoveEv:
.LFB2931:
	.loc 4 3066 0
	.cfi_startproc
.LVL2377:
	mflr 0
	stwu 1,-200(1)
.LCFI319:
	.cfi_def_cfa_offset 200
	.cfi_register 65, 0
	stw 31,172(1)
	mr 31,3
	.cfi_offset 31, -28
.LVL2378:
	stw 0,204(1)
	stfd 29,176(1)
	stfd 30,184(1)
	stfd 31,192(1)
	stw 25,148(1)
	stw 26,152(1)
	stw 27,156(1)
	stw 28,160(1)
	stw 29,164(1)
	stw 30,168(1)
.LBB11434:
.LBB11435:
.LBB11436:
	.loc 18 237 0
	lwz 9,5232(3)
	cmpwi 7,9,0
	beq- 7,.L1303
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1303:
.LBE11436:
.LBE11435:
	.loc 4 3072 0
	lwz 5,3956(31)
	li 0,0
	cmpwi 7,5,0
	bne- 7,.L1326
.LVL2379:
.L1317:
.LBB11437:
.LBB11438:
	.loc 4 3076 0
	lis 29,ai_debugMove@ha
	addi 30,31,4216
	la 29,ai_debugMove@l(29)
	.loc 20 142 0
	lwz 9,44(29)
.LBE11438:
.LBE11437:
	.loc 4 3076 0
	lwz 9,36(9)
	cmpwi 7,9,0
	bne- 7,.L1327
.L1306:
.LBB11439:
	.loc 4 3080 0
	cmpwi 7,0,10
	beq- 7,.L1307
.LBB11440:
	.loc 4 3081 0
	li 4,0
	mr 3,30
	bl _ZNK17idPhysics_Monster17GetLinearVelocityEi
	.loc 4 3083 0
	addi 4,1,116
	.loc 4 3081 0
	lwz 11,0(3)
	lwz 9,4(3)
	lwz 0,8(3)
	.loc 4 3083 0
	mr 3,31
	.loc 4 3081 0
	stw 11,80(1)
	stw 9,84(1)
	stw 0,88(1)
	.loc 4 3083 0
	bl _ZN4idAI10GetMovePosER6idVec3
	cmpwi 7,3,0
	bne- 7,.L1328
	.loc 4 3088 0
	lis 9,.LC6@ha
	lfs 13,4016(31)
	lfs 0,.LC6@l(9)
	fcmpu 7,13,0
	bne- 7,.L1329
.L1309:
	.loc 4 3093 0
	mr 3,31
	addi 4,1,80
	bl _ZN4idAI9AddFlyBobER6idVec3
.LVL2380:
.LBB11441:
.LBB11442:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 9,gameLocal@ha
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL2381:
	.loc 7 635 0
	la 9,gameLocal@l(9)
	addi 10,11,4228
	srawi 0,0,12
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1330
.LVL2382:
.L1310:
.LBE11442:
.LBE11441:
	.loc 4 3099 0
	mr 3,31
	addi 4,1,80
	bl _ZN4idAI14AdjustFlySpeedER6idVec3
	.loc 4 3101 0
	mr 3,30
	addi 4,1,80
	li 5,0
	bl _ZN17idPhysics_Monster17SetLinearVelocityERK6idVec3i
.L1307:
.LBE11440:
.LBE11439:
	.loc 4 3105 0
	mr 3,31
	bl _ZN4idAI7FlyTurnEv
	.loc 4 3108 0
	li 4,0
	mr 3,30
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL2383:
	.loc 4 3109 0
	li 4,1
.LBB11455:
.LBB11456:
	.loc 6 424 0
	lwz 11,0(3)
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	lwz 0,8(3)
.LBE11456:
.LBE11455:
	.loc 4 3109 0
	mr 3,30
.LVL2384:
.LBB11458:
.LBB11457:
	.loc 6 424 0
	stw 11,104(1)
	.loc 6 426 0
	stw 0,112(1)
	.loc 6 425 0
	stw 9,108(1)
.LBE11457:
.LBE11458:
	.loc 4 3109 0
	bl _ZN17idPhysics_Monster10UseFlyMoveEb
	.loc 4 3110 0
	mr 3,30
	li 4,0
	bl _ZN17idPhysics_Monster15UseVelocityMoveEb
	.loc 4 3111 0
	lis 4,vec3_origin@ha
	la 4,vec3_origin@l(4)
	mr 3,30
	bl _ZN17idPhysics_Monster8SetDeltaERK6idVec3
	.loc 4 3112 0
	lbz 4,4546(31)
	mr 3,30
	bl _ZN17idPhysics_Monster14ForceDeltaMoveEb
	.loc 4 3113 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	.loc 4 3115 0
	mr 3,30
	bl _ZNK17idPhysics_Monster13GetMoveResultEv
.LBB11459:
	.loc 4 3116 0
	lbz 0,4547(31)
.LBE11459:
	.loc 4 3115 0
	mr 27,3
.LVL2385:
.LBB11478:
	.loc 4 3116 0
	cmpwi 7,0,0
	bne- 7,.L1311
	.loc 4 3116 0 is_stmt 0 discriminator 1
	lwz 0,4628(31)
	cmpwi 7,0,0
	bne- 7,.L1331
.LVL2386:
.L1311:
.LBB11460:
	.loc 4 3119 0 is_stmt 1
	mr 3,30
	bl _ZNK17idPhysics_Monster18GetSlideMoveEntityEv
.LVL2387:
	.loc 4 3120 0
	mr. 28,3
	beq- 0,.L1314
.LVL2388:
.LBB11461:
.LBB11462:
	.loc 16 340 0 discriminator 1
	lwz 9,0(28)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2389:
.LBE11462:
	.loc 4 5138 0 discriminator 1
	lis 9,_ZN10idMoveable4TypeE@ha
	la 9,_ZN10idMoveable4TypeE@l(9)
	lwz 0,56(3)
.LBB11465:
.LBB11463:
.LBB11464:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1314
	.loc 16 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1314
.LBE11464:
.LBE11463:
.LBE11465:
.LBE11461:
	.loc 4 3120 0 is_stmt 1
	mr 3,28
.LVL2390:
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	beq- 7,.L1314
.LVL2391:
	.loc 4 3121 0 discriminator 5
	lfs 1,4168(31)
	mr 3,31
	addi 4,31,2268
	mr 5,28
	bl _ZN4idAI13KickObstaclesERK6idVec3fP8idEntity
.LVL2392:
.L1313:
.LBE11460:
.LBE11478:
	.loc 4 3128 0
	mr 3,30
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LBB11479:
.LBB11480:
.LBB11481:
	.loc 6 497 0
	lfs 13,104(1)
.LBE11481:
.LBE11480:
.LBE11479:
	.loc 4 3128 0
	lwz 11,0(3)
	lwz 9,4(3)
	lwz 0,8(3)
	stw 11,68(1)
	stw 9,72(1)
.LBB11486:
.LBB11484:
.LBB11482:
	.loc 6 497 0
	lfs 0,68(1)
.LBE11482:
.LBE11484:
.LBE11486:
	.loc 4 3128 0
	stw 0,76(1)
.LVL2393:
.LBB11487:
.LBB11485:
.LBB11483:
	.loc 6 497 0
	fcmpu 7,13,0
	bne- 7,.L1315
	lfs 0,72(1)
	lfs 13,108(1)
	fcmpu 7,13,0
	bne- 7,.L1315
	lfs 0,76(1)
	lfs 13,112(1)
	fcmpu 7,13,0
	bne- 7,.L1315
.L1320:
.LBE11483:
.LBE11485:
.LBE11487:
.LBB11488:
.LBB11489:
	.loc 20 142 0
	lwz 9,44(29)
.LBE11489:
.LBE11488:
	.loc 4 3133 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L1302
	.loc 4 3134 0
	lis 29,gameRenderWorld@ha
	li 4,0
	lwz 27,gameRenderWorld@l(29)
.LVL2394:
	mr 3,30
	lwz 9,0(27)
	lwz 28,156(9)
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lis 4,colorCyan@ha
	li 8,0
	mr 6,3
	mtctr 28
	addi 5,1,104
	mr 3,27
	li 7,4000
	la 4,colorCyan@l(4)
	bctrl
	.loc 4 3135 0
	lwz 27,gameRenderWorld@l(29)
	li 4,-1
	mr 3,30
	lwz 9,0(27)
	lwz 28,176(9)
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	lis 4,colorOrange@ha
	mr 5,3
	mtctr 28
	addi 6,1,68
	mr 3,27
	li 7,16
	la 4,colorOrange@l(4)
	bctrl
	.loc 4 3136 0
	lwz 27,gameRenderWorld@l(29)
	li 4,-1
	mr 3,30
	lwz 9,0(27)
	lwz 28,176(9)
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	lis 4,colorMagenta@ha
	mr 5,3
	mtctr 28
	addi 6,31,3964
	mr 3,27
	li 7,16
	la 4,colorMagenta@l(4)
	bctrl
	.loc 4 3137 0
	lwz 27,gameRenderWorld@l(29)
	li 4,0
	mr 3,30
	lwz 9,0(27)
	lwz 28,156(9)
	bl _ZNK17idPhysics_Monster17GetLinearVelocityEi
.LVL2395:
.LBB11490:
.LBB11491:
	.loc 6 452 0
	lfs 13,4(3)
.LBE11491:
.LBE11490:
	.loc 4 3137 0
	lis 4,colorRed@ha
.LBB11505:
.LBB11498:
	.loc 6 452 0
	lfs 11,72(1)
.LBE11498:
.LBE11505:
	.loc 4 3137 0
	mtctr 28
.LBB11506:
.LBB11499:
	.loc 6 452 0
	lfs 0,8(3)
.LBE11499:
.LBE11506:
	.loc 4 3137 0
	la 4,colorRed@l(4)
.LBB11507:
.LBB11500:
	.loc 6 452 0
	fadds 13,11,13
	lfs 11,76(1)
	lfs 12,0(3)
.LBE11500:
.LBE11507:
	.loc 4 3137 0
	addi 5,1,68
.LBB11508:
.LBB11501:
	.loc 6 452 0
	fadds 0,11,0
.LVL2396:
	lfs 11,68(1)
.LBB11492:
.LBB11493:
	.loc 6 397 0
	stfs 13,60(1)
.LBE11493:
.LBE11492:
.LBE11501:
.LBE11508:
	.loc 4 3137 0
	mr 3,27
.LVL2397:
.LBB11509:
.LBB11502:
	.loc 6 452 0
	fadds 12,11,12
.LBE11502:
.LBE11509:
	.loc 4 3137 0
	addi 6,1,56
.LBB11510:
.LBB11503:
.LBB11496:
.LBB11494:
	.loc 6 398 0
	stfs 0,64(1)
.LBE11494:
.LBE11496:
.LBE11503:
.LBE11510:
	.loc 4 3137 0
	li 7,16
	li 8,1
.LBB11511:
.LBB11504:
.LBB11497:
.LBB11495:
	.loc 6 396 0
	stfs 12,56(1)
.LBE11495:
.LBE11497:
.LBE11504:
.LBE11511:
	.loc 4 3137 0
	bctrl
.LVL2398:
	.loc 4 3138 0
	lwz 3,gameRenderWorld@l(29)
	lis 4,colorBlue@ha
	addi 5,1,68
	lwz 9,0(3)
	addi 6,1,116
	li 7,16
	li 8,1
	lwz 0,156(9)
	la 4,colorBlue@l(4)
	mtctr 0
	bctrl
	.loc 4 3139 0
	lwz 28,gameRenderWorld@l(29)
	addi 3,1,44
	mr 4,31
	lwz 9,0(28)
	lwz 29,156(9)
	bl _ZNK7idActor9EyeOffsetEv
.LVL2399:
.LBB11512:
.LBB11513:
	.loc 6 452 0
	lfs 0,48(1)
.LBE11513:
.LBE11512:
	.loc 4 3139 0
	mr 4,31
.LBB11520:
.LBB11518:
	.loc 6 452 0
	lfs 13,72(1)
.LBE11518:
.LBE11520:
	.loc 4 3139 0
	addi 3,1,20
.LBB11521:
.LBB11519:
	.loc 6 452 0
	lfs 12,76(1)
	fadds 13,13,0
	lfs 0,52(1)
	lfs 11,68(1)
	fadds 0,12,0
.LVL2400:
	lfs 12,44(1)
.LBB11514:
.LBB11515:
	.loc 6 397 0
	stfs 13,36(1)
.LBE11515:
.LBE11514:
	.loc 6 452 0
	fadds 12,11,12
.LBB11517:
.LBB11516:
	.loc 6 398 0
	stfs 0,40(1)
	.loc 6 396 0
	stfs 12,32(1)
.LBE11516:
.LBE11517:
.LBE11519:
.LBE11521:
	.loc 4 3139 0
	bl _ZNK7idActor9EyeOffsetEv
.LVL2401:
.LBB11522:
.LBB11523:
	.loc 6 452 0
	lfs 0,20(1)
.LBE11523:
.LBE11522:
	.loc 4 3139 0
	mr 3,30
.LBB11525:
.LBB11524:
	.loc 6 452 0
	lfs 31,68(1)
	lfs 29,72(1)
	fadds 31,31,0
	lfs 0,24(1)
	lfs 30,76(1)
	fadds 29,29,0
	lfs 0,28(1)
	fadds 30,30,0
.LVL2402:
.LBE11524:
.LBE11525:
	.loc 4 3139 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL2403:
.LBB11526:
.LBB11527:
.LBB11528:
	.loc 13 454 0
	lfs 12,12(3)
	.loc 6 452 0
	lis 9,.LC1@ha
	.loc 13 454 0
	lfs 11,2272(31)
.LBE11528:
.LBE11527:
.LBE11526:
	.loc 4 3139 0
	lis 4,colorYellow@ha
.LBB11547:
.LBB11538:
.LBB11529:
	.loc 13 454 0
	lfs 9,16(3)
.LBE11529:
.LBE11538:
.LBE11547:
	.loc 4 3139 0
	la 4,colorYellow@l(4)
.LBB11548:
.LBB11539:
.LBB11530:
	.loc 13 454 0
	lfs 10,20(3)
.LBE11530:
.LBE11539:
.LBE11548:
	.loc 4 3139 0
	addi 5,1,32
.LBB11549:
.LBB11540:
.LBB11531:
	.loc 13 454 0
	fmuls 9,11,9
.LBE11531:
.LBE11540:
.LBE11549:
.LBB11550:
.LBB11551:
.LBB11552:
	lfs 13,0(3)
.LBE11552:
.LBE11551:
.LBE11550:
.LBB11559:
.LBB11541:
.LBB11532:
	fmuls 10,11,10
	lfs 8,4(3)
	fmuls 11,11,12
	lfs 0,8(3)
	lfs 12,2268(31)
.LBE11532:
.LBE11541:
.LBE11559:
	.loc 4 3139 0
	addi 6,1,8
	li 7,16
	li 8,1
.LBB11560:
.LBB11542:
.LBB11533:
	.loc 13 454 0
	fmadds 9,12,8,9
	lfs 8,28(3)
	fmadds 10,12,0,10
.LBE11533:
.LBE11542:
.LBE11560:
.LBB11561:
.LBB11556:
.LBB11553:
	lfs 0,24(3)
	fmadds 12,13,12,11
.LBE11553:
.LBE11556:
.LBE11561:
.LBB11562:
.LBB11543:
.LBB11534:
	lfs 13,2276(31)
.LVL2404:
	lfs 11,32(3)
.LBE11534:
.LBE11543:
.LBE11562:
	.loc 4 3139 0
	mtctr 29
.LBB11563:
.LBB11544:
.LBB11535:
	.loc 13 454 0
	fmadds 9,13,8,9
.LBE11535:
.LBE11544:
.LBE11563:
	.loc 4 3139 0
	mr 3,28
.LVL2405:
.LBB11564:
.LBB11545:
.LBB11536:
	.loc 13 454 0
	fmadds 10,13,11,10
.LBE11536:
.LBE11545:
.LBE11564:
.LBB11565:
.LBB11557:
.LBB11554:
	fmadds 13,0,13,12
.LBE11554:
.LBE11557:
.LBE11565:
.LBB11566:
.LBB11546:
.LBB11537:
	.loc 6 452 0
	lfs 0,.LC1@l(9)
	fmadds 9,9,0,29
	fmadds 10,10,0,30
.LVL2406:
.LBE11537:
.LBE11546:
.LBE11566:
.LBB11567:
.LBB11558:
.LBB11555:
	fmadds 0,13,0,31
	.loc 6 397 0
	stfs 9,12(1)
	.loc 6 398 0
	stfs 10,16(1)
	.loc 6 396 0
	stfs 0,8(1)
.LBE11555:
.LBE11558:
.LBE11567:
	.loc 4 3139 0
	bctrl
.LVL2407:
	.loc 4 3140 0
	mr 3,31
	bl _ZNK4idAI9DrawRouteEv
.LVL2408:
.L1302:
.LBE11434:
	.loc 4 3142 0
	lwz 0,204(1)
	lwz 25,148(1)
	mtlr 0
	lwz 26,152(1)
	lwz 27,156(1)
	lwz 28,160(1)
	lwz 29,164(1)
	lwz 30,168(1)
	lwz 31,172(1)
.LVL2409:
	lfd 29,176(1)
	lfd 30,184(1)
	lfd 31,192(1)
	addi 1,1,200
	.cfi_remember_state
.LCFI320:
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
	blr
.LVL2410:
.L1314:
.LCFI321:
	.cfi_restore_state
.LBB11598:
.LBB11568:
.LBB11472:
	.loc 4 3122 0
	cmpwi 7,27,2
	bne+ 7,.L1313
.LBB11466:
.LBB11467:
	.loc 18 237 0
	lwz 9,5232(31)
.LBE11467:
.LBE11466:
	.loc 4 3123 0
	lis 11,gameLocal+2426836@ha
	lwz 11,gameLocal+2426836@l(11)
.LBB11470:
.LBB11468:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE11468:
.LBE11470:
	.loc 4 3123 0
	addi 0,11,500
	stw 0,4032(31)
.LVL2411:
.LBB11471:
.LBB11469:
	.loc 18 237 0
	beq- 7,.L1313
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
	b .L1313
.LVL2412:
.L1315:
.LBE11469:
.LBE11471:
.LBE11472:
.LBE11568:
	.loc 4 3130 0
	mr 3,31
	bl _ZNK8idEntity13TouchTriggersEv
	b .L1320
.LVL2413:
.L1327:
	.loc 4 3077 0
	lis 26,gameLocal@ha
	slwi 0,0,2
	la 26,gameLocal@l(26)
	li 4,0
	addis 9,26,0x25
	mr 3,30
	lwz 25,2004(9)
	lis 9,.LANCHOR2@ha
	la 9,.LANCHOR2@l(9)
	.loc 4 5138 0
	lwz 27,72(31)
	.loc 4 3077 0
	lwzx 28,9,0
	bl _ZNK17idPhysics_Monster17GetLinearVelocityEi
.LVL2414:
.LBB11569:
.LBB11570:
	.loc 6 632 0
	lfs 0,4(3)
.LBE11570:
.LBE11569:
	.loc 4 3077 0
	lis 4,.LC125@ha
.LBB11590:
.LBB11585:
	.loc 6 632 0
	lfs 13,0(3)
.LBE11585:
.LBE11590:
	.loc 4 3077 0
	la 4,.LC125@l(4)
.LBB11591:
.LBB11586:
	.loc 6 632 0
	fmuls 12,0,0
	lfs 0,8(3)
.LBE11586:
.LBE11591:
	.loc 4 3077 0
	mr 5,25
	mr 3,26
.LVL2415:
	mr 6,27
	mr 7,28
.LBB11592:
.LBB11587:
	.loc 6 632 0
	fmadds 13,13,13,12
	fmadds 13,0,0,13
	stfs 13,136(1)
.LVL2416:
.LBB11571:
.LBB11572:
.LBB11573:
.LBB11574:
	.loc 8 270 0
	lwz 0,136(1)
.LVL2417:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 8 275 0
	lis 11,.LC15@ha
	lfs 11,.LC15@l(11)
	.loc 8 276 0
	or 0,0,9
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 277 0
	stw 0,140(1)
	.loc 8 275 0
	fmuls 11,13,11
.LVL2418:
	.loc 8 278 0
	lfs 12,.LC63@l(9)
	.loc 8 277 0
	lfs 0,140(1)
	.loc 4 3066 0
	fneg 11,11
.LVL2419:
.LBE11574:
.LBE11573:
.LBE11572:
.LBE11571:
.LBE11587:
.LBE11592:
	.loc 4 3077 0
	lfs 2,4016(31)
.LBB11593:
.LBB11588:
.LBB11583:
.LBB11581:
.LBB11578:
.LBB11575:
	.loc 8 277 0
	fmr 13,0
.LVL2420:
.LBE11575:
.LBE11578:
.LBE11581:
.LBE11583:
.LBE11588:
.LBE11593:
	.loc 4 3077 0
	lfs 3,4496(31)
.LBB11594:
.LBB11589:
.LBB11584:
.LBB11582:
.LBB11579:
.LBB11576:
	.loc 8 278 0
	fmul 0,13,13
.LVL2421:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL2422:
	.loc 8 279 0
	fmul 1,0,0
	fmadd 1,11,1,12
.LVL2423:
	fmul 1,0,1
.LVL2424:
.LBE11576:
.LBE11579:
	.loc 8 303 0
	lfs 0,136(1)
.LBB11580:
.LBB11577:
	.loc 8 280 0
	frsp 1,1
.LVL2425:
.LBE11577:
.LBE11580:
	.loc 8 303 0
	fmuls 1,0,1
.LBE11582:
.LBE11584:
.LBE11589:
.LBE11594:
	.loc 4 3077 0
	creqv 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	lwz 0,3956(31)
	b .L1306
.LVL2426:
.L1326:
	.loc 4 3072 0 discriminator 1
	mr 3,31
	addi 4,31,3964
	bl _ZNK4idAI10ReachedPosERK6idVec313moveCommand_t
	cmpwi 7,3,0
	beq- 7,.L1325
	.loc 4 3073 0 discriminator 4
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.L1325:
	lwz 0,3956(31)
	b .L1317
.L1329:
.LBB11595:
.LBB11453:
	.loc 4 3089 0
	mr 3,31
	addi 4,1,80
	addi 5,1,116
	bl _ZN4idAI11FlySeekGoalER6idVec3S1_
	.loc 4 3093 0
	mr 3,31
	addi 4,1,80
	bl _ZN4idAI9AddFlyBobER6idVec3
.LVL2427:
.LBB11445:
.LBB11443:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 9,gameLocal@ha
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL2428:
	.loc 7 635 0
	la 9,gameLocal@l(9)
	addi 10,11,4228
	srawi 0,0,12
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L1310
	b .L1330
.LVL2429:
.L1328:
.LBE11443:
.LBE11445:
	.loc 4 3084 0
	mr 3,31
	addi 4,1,116
	addi 5,1,92
	bl _ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_
.LVL2430:
	.loc 4 3088 0
	lis 9,.LC6@ha
.LBB11446:
.LBB11447:
	.loc 6 424 0
	lwz 0,92(1)
.LBE11447:
.LBE11446:
	.loc 4 3088 0
	lfs 13,4016(31)
	lfs 0,.LC6@l(9)
.LBB11450:
.LBB11448:
	.loc 6 424 0
	stw 0,116(1)
.LBE11448:
.LBE11450:
	.loc 4 3088 0
	fcmpu 7,13,0
.LBB11451:
.LBB11449:
	.loc 6 425 0
	lwz 0,96(1)
	stw 0,120(1)
	.loc 6 426 0
	lwz 0,100(1)
	stw 0,124(1)
.LBE11449:
.LBE11451:
	.loc 4 3088 0
	beq+ 7,.L1309
	b .L1329
.LVL2431:
.L1331:
.LBE11453:
.LBE11595:
.LBB11596:
	.loc 4 3116 0 discriminator 3
	mr 3,31
.LVL2432:
	bl _ZNK4idAI9TestMeleeEv
	cmpwi 7,3,0
	beq- 7,.L1311
.LVL2433:
.LBB11473:
.LBB11474:
	.loc 7 634 0 discriminator 5
	lwz 11,5120(31)
	.loc 7 635 0 discriminator 5
	lis 8,gameLocal@ha
	la 0,gameLocal@l(8)
.LBE11474:
.LBE11473:
.LBB11476:
	.loc 4 5138 0 discriminator 5
	lwz 4,4632(31)
.LVL2434:
.LBE11476:
.LBB11477:
.LBB11475:
	.loc 7 634 0 discriminator 5
	rlwinm 9,11,0,20,31
.LVL2435:
	.loc 7 635 0 discriminator 5
	srawi 11,11,12
	addi 10,9,4228
	.loc 7 638 0 discriminator 5
	li 5,0
	.loc 7 635 0 discriminator 5
	slwi 10,10,2
	add 10,0,10
	lwz 10,4(10)
	cmpw 7,10,11
	bne+ 7,.L1312
	.loc 7 636 0
	addi 9,9,132
.LVL2436:
	slwi 9,9,2
.LVL2437:
	add 9,0,9
	lwz 5,4(9)
.L1312:
.LBE11475:
.LBE11477:
	.loc 4 3117 0
	mr 3,31
	bl _ZN4idAI12DirectDamageEPKcP8idEntity
	b .L1313
.LVL2438:
.L1330:
.LBE11596:
.LBB11597:
.LBB11454:
.LBB11452:
.LBB11444:
	.loc 7 636 0
	addi 11,11,132
.LVL2439:
	slwi 11,11,2
.LVL2440:
	add 9,9,11
.LBE11444:
.LBE11452:
	.loc 4 3095 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1310
	.loc 4 3095 0 is_stmt 0 discriminator 1
	lwz 0,3956(31)
	cmpwi 7,0,9
	beq- 7,.L1310
	.loc 4 3096 0 is_stmt 1 discriminator 4
	mr 3,31
	addi 4,1,80
	addi 5,1,116
	bl _ZN4idAI15AdjustFlyHeightER6idVec3RKS0_
	b .L1310
.LBE11454:
.LBE11597:
.LBE11598:
	.cfi_endproc
.LFE2931:
	.size	_ZN4idAI7FlyMoveEv, .-_ZN4idAI7FlyMoveEv
	.align 2
	.globl _ZN4idAI9SlideMoveEv
	.type	_ZN4idAI9SlideMoveEv, @function
_ZN4idAI9SlideMoveEv:
.LFB2924:
	.loc 4 2788 0
	.cfi_startproc
.LVL2441:
	stwu 1,-192(1)
.LCFI322:
	.cfi_def_cfa_offset 192
	mflr 0
.LBB11713:
	.loc 4 2796 0
	li 4,0
.LBE11713:
	.loc 4 2788 0
	stw 30,160(1)
.LBB11916:
	.loc 4 2796 0
	addi 30,3,4216
	.cfi_offset 30, -32
	.cfi_register 65, 0
.LBE11916:
	.loc 4 2788 0
	stw 31,164(1)
	mr 31,3
	.cfi_offset 31, -28
.LBB11917:
	.loc 4 2796 0
	mr 3,30
.LVL2442:
.LBE11917:
	.loc 4 2788 0
	stw 0,196(1)
	stfd 29,168(1)
	stfd 30,176(1)
	stfd 31,184(1)
	stw 25,140(1)
	stw 26,144(1)
	stw 27,148(1)
	stw 28,152(1)
	stw 29,156(1)
.LBB11918:
	.loc 4 2796 0
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LBB11714:
.LBB11715:
	.loc 18 237 0
	lwz 9,5232(31)
.LBE11715:
.LBE11714:
	.loc 4 2796 0
	lwz 10,0(3)
.LBB11718:
.LBB11716:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE11716:
.LBE11718:
	.loc 4 2796 0
	lwz 11,4(3)
	lwz 0,8(3)
	stw 10,80(1)
	stw 11,84(1)
	stw 0,88(1)
.LVL2443:
.LBB11719:
.LBB11717:
	.loc 18 237 0
	beq- 7,.L1333
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1333:
.LBE11717:
.LBE11719:
	.loc 4 2801 0
	lwz 0,3956(31)
	cmpwi 7,0,2
	bgt- 7,.L1334
.LVL2444:
.LBB11720:
.LBB11721:
	.loc 6 416 0
	li 9,0
	stw 9,4048(31)
	stw 9,4044(31)
	stw 9,4040(31)
.LBE11721:
.LBE11720:
	.loc 4 2803 0
	lis 9,gameLocal+2426836@ha
	lwz 9,gameLocal+2426836@l(9)
	stw 9,4052(31)
.LVL2445:
.L1334:
	.loc 4 2807 0
	cmpwi 6,0,1
.LBB11722:
.LBB11723:
	.loc 7 606 0
	li 0,0
	stw 0,4036(31)
.LBE11723:
.LBE11722:
	.loc 4 2807 0
	beq- 6,.L1368
	.loc 4 2810 0
	beq- 7,.L1357
.L1336:
	.loc 4 2813 0
	mr 3,31
	addi 4,1,104
	bl _ZN4idAI10GetMovePosER6idVec3
	cmpwi 7,3,0
	bne- 7,.L1369
.L1337:
	.loc 4 2819 0
	lwz 0,3956(31)
	cmpwi 7,0,11
	beq- 7,.L1338
.L1367:
	.loc 4 2824 0
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfs 31,_ZN6idMath8M_MS2SECE@l(9)
.L1339:
	.loc 4 2836 0
	mr 3,30
	li 4,0
	bl _ZNK17idPhysics_Monster17GetLinearVelocityEi
	.loc 4 2842 0
	lis 28,.LC1@ha
	.loc 4 2836 0
	lwz 11,0(3)
	lwz 9,4(3)
	.loc 4 2842 0
	lfs 13,.LC1@l(28)
	.loc 4 2836 0
	lwz 0,8(3)
	stw 9,72(1)
.LBB11724:
.LBB11725:
	.loc 6 452 0
	lis 9,.LC108@ha
.LBE11725:
.LBE11724:
	.loc 4 2836 0
	stw 11,68(1)
	.loc 4 2842 0
	fmuls 13,31,13
.LBB11735:
.LBB11726:
	.loc 6 452 0
	lfs 8,.LC108@l(9)
.LBE11726:
.LBE11735:
.LBB11736:
.LBB11737:
	.loc 6 439 0
	lis 9,.LC110@ha
.LBE11737:
.LBE11736:
.LBB11742:
.LBB11743:
	lfs 9,68(1)
	lfs 10,72(1)
.LBE11743:
.LBE11742:
	.loc 4 2788 0
	fneg 12,13
.LBB11744:
.LBB11738:
	.loc 6 439 0
	lfs 11,.LC110@l(9)
.LBE11738:
.LBE11744:
.LBB11745:
.LBB11746:
	.loc 6 661 0
	lis 9,.LC6@ha
.LBE11746:
.LBE11745:
.LBB11767:
.LBB11727:
	.loc 6 452 0
	lfs 5,84(1)
.LBE11727:
.LBE11767:
.LBB11768:
.LBB11739:
	.loc 6 439 0
	fmuls 6,9,11
.LBE11739:
.LBE11768:
.LBB11769:
.LBB11728:
	.loc 6 452 0
	lfs 4,80(1)
	fmadds 5,10,8,5
	.loc 6 431 0
	lfs 3,108(1)
.LBE11728:
.LBE11769:
	.loc 4 2836 0
	stw 0,76(1)
.LBB11770:
.LBB11729:
	.loc 6 452 0
	fmadds 4,9,8,4
.LBE11729:
.LBE11770:
.LBB11771:
.LBB11740:
	.loc 6 439 0
	fmuls 7,10,11
.LBE11740:
.LBE11771:
	.loc 4 2837 0
	lfs 0,76(1)
.LVL2446:
	.loc 6 481 0
	fmadds 9,12,6,9
.LBB11772:
.LBB11730:
	.loc 6 431 0
	fsubs 5,3,5
.LVL2447:
	lfs 6,104(1)
	.loc 6 452 0
	lfs 3,88(1)
.LBE11730:
.LBE11772:
.LBB11773:
.LBB11774:
	.loc 6 482 0
	fmadds 10,12,7,10
.LBE11774:
.LBE11773:
.LBB11777:
.LBB11731:
	.loc 6 431 0
	fsubs 4,6,4
.LVL2448:
.LBE11731:
.LBE11777:
	.loc 4 2846 0
	lfs 7,4496(31)
.LBB11778:
.LBB11732:
	.loc 6 452 0
	fmadds 8,0,8,3
.LBE11732:
.LBE11778:
.LBB11779:
.LBB11761:
	.loc 6 661 0
	lfs 6,.LC6@l(9)
.LBE11761:
.LBE11779:
.LBB11780:
.LBB11741:
	.loc 6 439 0
	fmuls 11,0,11
.LBE11741:
.LBE11780:
.LBB11781:
.LBB11733:
	.loc 6 431 0
	lfs 3,112(1)
.LBE11733:
.LBE11781:
.LBB11782:
.LBB11762:
	.loc 6 661 0
	fcmpu 7,7,6
.LBE11762:
.LBE11782:
	.loc 6 456 0
	fmadds 9,13,4,9
.LBB11783:
.LBB11775:
	.loc 6 457 0
	fmadds 10,13,5,10
.LBE11775:
.LBE11783:
.LBB11784:
.LBB11734:
	.loc 6 431 0
	fsubs 8,3,8
.LVL2449:
.LBE11734:
.LBE11784:
.LBB11785:
.LBB11776:
	.loc 6 483 0
	fmadds 12,12,11,0
	.loc 6 456 0
	stfs 9,68(1)
	.loc 6 457 0
	stfs 10,72(1)
	.loc 6 458 0
	fmadds 13,13,8,12
.LVL2450:
.LBE11776:
.LBE11785:
.LBB11786:
.LBB11763:
	.loc 6 661 0
	bne- 7,.L1341
.LVL2451:
.LBB11747:
.LBB11748:
	.loc 6 416 0
	stfs 6,72(1)
	stfs 6,68(1)
.LVL2452:
.L1342:
.LBE11748:
.LBE11747:
.LBE11763:
.LBE11786:
	.loc 4 2848 0
	li 5,0
	addi 4,1,68
	mr 3,30
	.loc 4 2847 0
	stfs 0,76(1)
	.loc 4 2848 0
	bl _ZN17idPhysics_Monster17SetLinearVelocityERK6idVec3i
.LVL2453:
	.loc 4 2849 0
	mr 3,30
	li 4,1
	bl _ZN17idPhysics_Monster15UseVelocityMoveEb
	.loc 4 2850 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	.loc 4 2852 0
	lwz 0,3956(31)
	cmpwi 7,0,1
	beq- 7,.L1370
.L1344:
	.loc 4 2854 0
	cmpwi 7,0,2
	beq- 7,.L1359
	.loc 4 2856 0
	cmpwi 7,0,0
	bne- 7,.L1346
.L1347:
.LBB11787:
.LBB11788:
	.loc 4 2863 0
	lis 29,ai_debugMove@ha
.LBE11788:
.LBE11787:
	.loc 4 2861 0
	mr 3,31
.LBB11791:
.LBB11789:
	.loc 4 2863 0
	la 29,ai_debugMove@l(29)
.LBE11789:
.LBE11791:
	.loc 4 2861 0
	bl _ZN4idAI4TurnEv
.LBB11792:
.LBB11790:
	.loc 20 142 0
	lwz 9,44(29)
.LBE11790:
.LBE11792:
	.loc 4 2863 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L1371
.L1349:
	.loc 4 2867 0
	mr 3,30
	bl _ZNK17idPhysics_Monster13GetMoveResultEv
.LBB11793:
	.loc 4 2868 0
	lbz 0,4547(31)
	cmpwi 7,0,0
	bne- 7,.L1350
	.loc 4 2868 0 is_stmt 0 discriminator 1
	lwz 0,4628(31)
	cmpwi 7,0,0
	bne- 7,.L1372
.L1350:
.LBB11794:
	.loc 4 2871 0 is_stmt 1
	mr 3,30
	bl _ZNK17idPhysics_Monster18GetSlideMoveEntityEv
.LVL2454:
	.loc 4 2872 0
	mr. 27,3
	beq- 0,.L1352
.LVL2455:
.LBB11795:
.LBB11796:
	.loc 16 340 0 discriminator 1
	lwz 9,0(27)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2456:
.LBE11796:
	.loc 4 5138 0 discriminator 1
	lis 9,_ZN10idMoveable4TypeE@ha
	la 9,_ZN10idMoveable4TypeE@l(9)
	lwz 0,56(3)
.LBB11801:
.LBB11797:
.LBB11798:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1373
.LVL2457:
.L1352:
.LBE11798:
.LBE11797:
.LBE11801:
.LBE11795:
.LBE11794:
.LBE11793:
	.loc 4 2877 0
	mr 3,31
	bl _ZN4idAI15BlockedFailSafeEv
	.loc 4 2879 0
	mr 3,30
	bl _ZNK17idPhysics_Monster8OnGroundEv
.LVL2458:
.LBB11810:
.LBB11811:
	.loc 18 237 0
	lwz 9,5212(31)
	cmpwi 7,9,0
	beq- 7,.L1354
.LBE11811:
.LBE11810:
	.loc 4 2879 0
	stw 3,0(9)
.L1354:
	.loc 4 2881 0
	mr 3,30
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LBB11812:
.LBB11813:
.LBB11814:
	.loc 6 497 0
	lfs 13,80(1)
.LBE11814:
.LBE11813:
.LBE11812:
	.loc 4 2881 0
	lwz 11,0(3)
	lwz 9,4(3)
	lwz 0,8(3)
	stw 11,56(1)
	stw 9,60(1)
.LBB11819:
.LBB11817:
.LBB11815:
	.loc 6 497 0
	lfs 0,56(1)
.LBE11815:
.LBE11817:
.LBE11819:
	.loc 4 2881 0
	stw 0,64(1)
.LVL2459:
.LBB11820:
.LBB11818:
.LBB11816:
	.loc 6 497 0
	fcmpu 7,13,0
	bne- 7,.L1355
	lfs 0,60(1)
	lfs 13,84(1)
	fcmpu 7,13,0
	bne- 7,.L1355
	lfs 0,64(1)
	lfs 13,88(1)
	fcmpu 7,13,0
	bne- 7,.L1355
.L1361:
.LBE11816:
.LBE11818:
.LBE11820:
.LBB11821:
.LBB11822:
	.loc 20 142 0
	lwz 9,44(29)
.LBE11822:
.LBE11821:
	.loc 4 2886 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L1332
	.loc 4 2887 0
	lis 29,gameRenderWorld@ha
	li 4,-1
	lwz 25,gameRenderWorld@l(29)
	mr 3,30
	lis 27,colorMagenta@ha
	lwz 9,0(25)
	la 27,colorMagenta@l(27)
	lwz 26,176(9)
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	mr 5,3
	addi 6,1,56
	mtctr 26
	mr 3,25
	mr 4,27
	li 7,16
	bctrl
	.loc 4 2888 0
	lwz 25,gameRenderWorld@l(29)
	li 4,-1
	mr 3,30
	lwz 9,0(25)
	lwz 26,176(9)
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	mr 5,3
	addi 6,31,3964
	li 7,16
	mtctr 26
	mr 4,27
	mr 3,25
	bctrl
	.loc 4 2889 0
	lwz 27,gameRenderWorld@l(29)
	addi 3,1,44
	mr 4,31
	lwz 9,0(27)
	lwz 29,156(9)
	bl _ZNK7idActor9EyeOffsetEv
.LVL2460:
.LBB11823:
.LBB11824:
	.loc 6 452 0
	lfs 0,48(1)
.LBE11824:
.LBE11823:
	.loc 4 2889 0
	mr 4,31
.LBB11831:
.LBB11829:
	.loc 6 452 0
	lfs 13,60(1)
.LBE11829:
.LBE11831:
	.loc 4 2889 0
	addi 3,1,20
.LBB11832:
.LBB11830:
	.loc 6 452 0
	lfs 12,64(1)
	fadds 13,13,0
	lfs 0,52(1)
	lfs 11,56(1)
	fadds 0,12,0
.LVL2461:
	lfs 12,44(1)
.LBB11825:
.LBB11826:
	.loc 6 397 0
	stfs 13,36(1)
.LBE11826:
.LBE11825:
	.loc 6 452 0
	fadds 12,11,12
.LBB11828:
.LBB11827:
	.loc 6 398 0
	stfs 0,40(1)
	.loc 6 396 0
	stfs 12,32(1)
.LBE11827:
.LBE11828:
.LBE11830:
.LBE11832:
	.loc 4 2889 0
	bl _ZNK7idActor9EyeOffsetEv
.LVL2462:
.LBB11833:
.LBB11834:
	.loc 6 452 0
	lfs 0,20(1)
.LBE11834:
.LBE11833:
	.loc 4 2889 0
	mr 3,30
.LBB11836:
.LBB11835:
	.loc 6 452 0
	lfs 31,56(1)
	lfs 29,60(1)
	fadds 31,31,0
	lfs 0,24(1)
	lfs 30,64(1)
	fadds 29,29,0
	lfs 0,28(1)
	fadds 30,30,0
.LVL2463:
.LBE11835:
.LBE11836:
	.loc 4 2889 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL2464:
.LBB11837:
.LBB11838:
.LBB11839:
	.loc 13 454 0
	lfs 12,12(3)
.LBE11839:
.LBE11838:
.LBE11837:
	.loc 4 2889 0
	lis 4,colorYellow@ha
.LBB11858:
.LBB11849:
.LBB11840:
	.loc 13 454 0
	lfs 11,2272(31)
.LBE11840:
.LBE11849:
.LBE11858:
	.loc 4 2889 0
	la 4,colorYellow@l(4)
.LBB11859:
.LBB11850:
.LBB11841:
	.loc 13 454 0
	lfs 9,16(3)
.LBE11841:
.LBE11850:
.LBE11859:
	.loc 4 2889 0
	addi 5,1,32
.LBB11860:
.LBB11851:
.LBB11842:
	.loc 13 454 0
	lfs 10,20(3)
.LBE11842:
.LBE11851:
.LBE11860:
	.loc 4 2889 0
	addi 6,1,8
.LBB11861:
.LBB11852:
.LBB11843:
	.loc 13 454 0
	fmuls 9,11,9
.LBE11843:
.LBE11852:
.LBE11861:
.LBB11862:
.LBB11863:
.LBB11864:
	lfs 13,0(3)
.LBE11864:
.LBE11863:
.LBE11862:
.LBB11871:
.LBB11853:
.LBB11844:
	fmuls 10,11,10
	lfs 8,4(3)
	fmuls 11,11,12
	lfs 0,8(3)
	lfs 12,2268(31)
.LBE11844:
.LBE11853:
.LBE11871:
	.loc 4 2889 0
	li 7,16
	li 8,1
	mtctr 29
.LBB11872:
.LBB11854:
.LBB11845:
	.loc 13 454 0
	fmadds 9,12,8,9
	lfs 8,28(3)
	fmadds 10,12,0,10
.LBE11845:
.LBE11854:
.LBE11872:
.LBB11873:
.LBB11868:
.LBB11865:
	lfs 0,24(3)
	fmadds 12,13,12,11
.LBE11865:
.LBE11868:
.LBE11873:
.LBB11874:
.LBB11855:
.LBB11846:
	lfs 13,2276(31)
.LVL2465:
	lfs 11,32(3)
.LBE11846:
.LBE11855:
.LBE11874:
	.loc 4 2889 0
	mr 3,27
.LVL2466:
.LBB11875:
.LBB11856:
.LBB11847:
	.loc 13 454 0
	fmadds 9,13,8,9
	fmadds 10,13,11,10
.LBE11847:
.LBE11856:
.LBE11875:
.LBB11876:
.LBB11869:
.LBB11866:
	fmadds 13,0,13,12
.LBE11866:
.LBE11869:
.LBE11876:
.LBB11877:
.LBB11857:
.LBB11848:
	.loc 6 452 0
	lfs 0,.LC1@l(28)
	fmadds 9,9,0,29
	fmadds 10,10,0,30
.LVL2467:
.LBE11848:
.LBE11857:
.LBE11877:
.LBB11878:
.LBB11870:
.LBB11867:
	fmadds 0,13,0,31
	.loc 6 397 0
	stfs 9,12(1)
	.loc 6 398 0
	stfs 10,16(1)
	.loc 6 396 0
	stfs 0,8(1)
.LBE11867:
.LBE11870:
.LBE11878:
	.loc 4 2889 0
	bctrl
.LVL2468:
	.loc 4 2890 0
	mr 3,31
	bl _ZNK4idAI9DrawRouteEv
.LVL2469:
.L1332:
.LBE11918:
	.loc 4 2892 0
	lwz 0,196(1)
	lwz 25,140(1)
	mtlr 0
	lwz 26,144(1)
	lwz 27,148(1)
	lwz 28,152(1)
	lwz 29,156(1)
	lwz 30,160(1)
	lwz 31,164(1)
.LVL2470:
	lfd 29,168(1)
	lfd 30,176(1)
	lfd 31,184(1)
	addi 1,1,192
	.cfi_remember_state
.LCFI323:
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
	blr
.LVL2471:
.L1341:
.LCFI324:
	.cfi_restore_state
.LBB11919:
.LBB11879:
.LBB11764:
.LBB11751:
.LBB11752:
	.loc 6 636 0
	fmuls 11,10,10
.LBE11752:
.LBE11751:
	.loc 6 666 0
	fmuls 12,7,7
.LBB11753:
.LBB11749:
	.loc 6 636 0
	fmadds 11,9,9,11
	fmadds 11,13,13,11
.LBE11749:
.LBE11753:
	.loc 6 666 0
	fcmpu 7,11,12
.LBB11754:
.LBB11750:
	.loc 6 636 0
	stfs 11,128(1)
.LBE11750:
.LBE11754:
	.loc 6 666 0
	bng- 7,.L1342
.LVL2472:
.LBB11755:
.LBB11756:
	.loc 8 270 0
	lwz 0,128(1)
.LVL2473:
.LBE11756:
.LBE11755:
.LBE11764:
.LBE11879:
	.loc 4 2848 0
	li 5,0
	addi 4,1,68
	mr 3,30
.LBB11880:
.LBB11765:
.LBB11759:
.LBB11757:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 8 275 0
	lis 11,.LC15@ha
	lfs 8,.LC15@l(11)
.LVL2474:
	.loc 8 276 0
	or 0,0,9
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 277 0
	stw 0,132(1)
	.loc 8 275 0
	fmuls 8,11,8
.LVL2475:
	.loc 8 278 0
	lfs 11,.LC63@l(9)
.LVL2476:
	.loc 8 277 0
	lfs 13,132(1)
	.loc 4 2788 0
	fneg 8,8
.LVL2477:
.LBE11757:
.LBE11759:
.LBE11765:
.LBE11880:
	.loc 4 2847 0
	stfs 0,76(1)
.LBB11881:
.LBB11766:
.LBB11760:
.LBB11758:
	.loc 8 277 0
	fmr 12,13
.LVL2478:
	.loc 8 278 0
	fmul 13,12,12
.LVL2479:
	fmadd 13,8,13,11
	fmul 13,12,13
.LVL2480:
	.loc 8 279 0
	fmul 12,13,13
	fmadd 11,8,12,11
.LVL2481:
	fmul 13,13,11
.LVL2482:
	.loc 8 280 0
	frsp 13,13
.LVL2483:
.LBE11758:
.LBE11760:
	.loc 6 667 0
	fmuls 7,7,13
.LVL2484:
	.loc 6 668 0
	fmuls 9,9,7
	.loc 6 669 0
	fmuls 7,10,7
.LVL2485:
	.loc 6 668 0
	stfs 9,68(1)
	.loc 6 669 0
	stfs 7,72(1)
.LBE11766:
.LBE11881:
	.loc 4 2848 0
	bl _ZN17idPhysics_Monster17SetLinearVelocityERK6idVec3i
.LVL2486:
	.loc 4 2849 0
	mr 3,30
	li 4,1
	bl _ZN17idPhysics_Monster15UseVelocityMoveEb
	.loc 4 2850 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	.loc 4 2852 0
	lwz 0,3956(31)
	cmpwi 7,0,1
	bne+ 7,.L1344
.LVL2487:
.L1370:
.LBB11882:
.LBB11883:
	.loc 7 634 0 discriminator 1
	lwz 0,5120(31)
	.loc 7 635 0 discriminator 1
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL2488:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1374
.LVL2489:
.L1346:
.LBE11883:
.LBE11882:
.LBB11885:
.LBB11886:
	.loc 6 167 0
	lfs 13,72(1)
.LBE11886:
.LBE11885:
	.loc 4 2857 0
	lis 9,.LC77@ha
.LBB11888:
.LBB11887:
	.loc 6 167 0
	lfs 0,68(1)
	fmuls 13,13,13
.LBE11887:
.LBE11888:
	.loc 4 2857 0
	lfs 12,.LC77@l(9)
	.loc 6 167 0
	fmadds 0,0,0,13
	.loc 4 2857 0
	fcmpu 7,0,12
	bng+ 7,.L1347
	.loc 4 2858 0
	addi 3,1,68
	bl _ZNK6idVec35ToYawEv
	mr 3,31
	bl _ZN4idAI10TurnTowardEf
	b .L1347
.LVL2490:
.L1355:
	.loc 4 2883 0
	mr 3,31
	bl _ZNK8idEntity13TouchTriggersEv
	b .L1361
.LVL2491:
.L1371:
	.loc 4 2864 0
	lis 9,gameRenderWorld@ha
	li 4,0
	lwz 26,gameRenderWorld@l(9)
	mr 3,30
	lwz 9,0(26)
	lwz 27,156(9)
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lis 4,colorCyan@ha
	mr 6,3
	la 4,colorCyan@l(4)
	mr 3,26
	addi 5,1,80
	li 7,5000
	li 8,0
	mtctr 27
	bctrl
	b .L1349
.LVL2492:
.L1368:
.LBB11889:
.LBB11890:
	.loc 7 634 0 discriminator 1
	lwz 0,5120(31)
	.loc 7 635 0 discriminator 1
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL2493:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L1336
	.loc 7 636 0
	addi 11,11,132
.LVL2494:
.LBE11890:
.LBE11889:
	.loc 4 2808 0
	mr 3,31
.LBB11893:
.LBB11891:
	.loc 7 636 0
	slwi 11,11,2
.LVL2495:
.LBE11891:
.LBE11893:
	.loc 4 2808 0
	addi 4,31,5124
.LBB11894:
.LBB11892:
	.loc 7 636 0
	add 9,9,11
.LBE11892:
.LBE11894:
	.loc 4 2807 0
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1366
	b .L1336
.LVL2496:
.L1338:
	.loc 4 2820 0
	lwz 11,4008(31)
	lis 10,gameLocal+2426836@ha
	lwz 9,4012(31)
	lwz 0,gameLocal+2426836@l(10)
	add 9,11,9
	cmpw 7,0,9
	bge- 7,.L1340
	.loc 4 2821 0
	subf 0,0,9
	lis 9,.LC65@ha
	xoris 0,0,0x8000
	lfs 0,.LC65@l(9)
	stw 0,124(1)
	lis 0,0x4330
	stw 0,120(1)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfs 31,_ZN6idMath8M_MS2SECE@l(9)
	lfd 13,120(1)
	.loc 6 431 0
	lfs 8,3980(31)
	.loc 4 2821 0
	fsub 0,13,0
	.loc 6 431 0
	lfs 12,3968(31)
	lfs 9,3984(31)
	lfs 13,3972(31)
	.loc 4 2821 0
	frsp 0,0
.LBB11895:
.LBB11896:
	.loc 6 431 0
	lfs 10,3976(31)
	lfs 11,3964(31)
.LBE11896:
.LBE11895:
	.loc 4 2821 0
	fmuls 0,0,31
.LVL2497:
	.loc 4 2788 0
	fneg 0,0
.LVL2498:
	.loc 6 431 0
	fmadds 12,0,8,12
	fmadds 13,0,9,13
.LVL2499:
.LBB11898:
.LBB11897:
	fmadds 0,0,10,11
	.loc 6 425 0
	stfs 12,108(1)
	.loc 6 426 0
	stfs 13,112(1)
	.loc 6 424 0
	stfs 0,104(1)
	b .L1339
.LVL2500:
.L1357:
.LBE11897:
.LBE11898:
.LBB11899:
.LBB11900:
	.loc 7 634 0 discriminator 1
	lwz 0,3988(31)
	.loc 7 635 0 discriminator 1
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL2501:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L1336
	.loc 7 636 0
	addi 11,11,132
.LVL2502:
	slwi 11,11,2
.LVL2503:
	add 9,9,11
	lwz 3,4(9)
.LBE11900:
.LBE11899:
	.loc 4 2810 0
	cmpwi 7,3,0
	beq- 7,.L1336
.LVL2504:
	.loc 4 2811 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
.LVL2505:
.L1366:
	bl _ZN4idAI10TurnTowardERK6idVec3
.LVL2506:
.LBB11901:
.LBB11902:
	.loc 6 424 0
	lwz 11,3964(31)
	.loc 6 425 0
	lwz 9,3968(31)
	.loc 6 426 0
	lwz 0,3972(31)
	.loc 6 424 0
	stw 11,104(1)
	.loc 6 425 0
	stw 9,108(1)
	.loc 6 426 0
	stw 0,112(1)
	b .L1337
.LVL2507:
.L1359:
.LBE11902:
.LBE11901:
.LBB11903:
.LBB11904:
	.loc 7 634 0 discriminator 1
	lwz 0,3988(31)
	.loc 7 635 0 discriminator 1
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL2508:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L1346
	.loc 7 636 0
	addi 11,11,132
.LVL2509:
	slwi 11,11,2
.LVL2510:
	add 9,9,11
	lwz 3,4(9)
.LBE11904:
.LBE11903:
	.loc 4 2854 0
	cmpwi 7,3,0
	beq- 7,.L1346
.LVL2511:
	.loc 4 2855 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L1347
.LVL2512:
.L1369:
	.loc 4 2814 0
	addi 5,1,92
	mr 3,31
	addi 4,1,104
	bl _ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_
	.loc 4 2815 0
	mr 3,31
	addi 4,1,92
	bl _ZN4idAI10TurnTowardERK6idVec3
.LVL2513:
.LBB11905:
.LBB11906:
	.loc 6 424 0
	lwz 0,92(1)
	stw 0,104(1)
	.loc 6 425 0
	lwz 0,96(1)
	stw 0,108(1)
	.loc 6 426 0
	lwz 0,100(1)
	stw 0,112(1)
	b .L1337
.LVL2514:
.L1373:
.LBE11906:
.LBE11905:
.LBB11907:
.LBB11804:
.LBB11803:
.LBB11802:
.LBB11800:
.LBB11799:
	.loc 16 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1352
.LBE11799:
.LBE11800:
.LBE11802:
.LBE11803:
	.loc 4 2872 0
	mr 3,27
.LVL2515:
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	beq- 7,.L1352
.LVL2516:
	.loc 4 2873 0 discriminator 5
	lfs 1,4168(31)
	mr 3,31
	addi 4,31,2268
	mr 5,27
	bl _ZN4idAI13KickObstaclesERK6idVec3fP8idEntity
	b .L1352
.LVL2517:
.L1340:
.LBE11804:
.LBE11907:
.LBB11908:
.LBB11909:
	.loc 6 424 0
	lwz 11,3964(31)
.LBE11909:
.LBE11908:
	.loc 4 2824 0
	mr 3,31
.LBB11912:
.LBB11910:
	.loc 6 425 0
	lwz 9,3968(31)
.LBE11910:
.LBE11912:
	.loc 4 2824 0
	li 4,0
.LBB11913:
.LBB11911:
	.loc 6 426 0
	lwz 0,3972(31)
	.loc 6 424 0
	stw 11,104(1)
	.loc 6 425 0
	stw 9,108(1)
	.loc 6 426 0
	stw 0,112(1)
.LBE11911:
.LBE11913:
	.loc 4 2824 0
	bl _ZN4idAI8StopMoveE12moveStatus_t
	b .L1367
.LVL2518:
.L1372:
.LBB11914:
	.loc 4 2868 0 discriminator 3
	mr 3,31
	bl _ZNK4idAI9TestMeleeEv
	cmpwi 7,3,0
	beq- 7,.L1350
.LVL2519:
.LBB11805:
.LBB11806:
	.loc 7 634 0 discriminator 5
	lwz 11,5120(31)
	.loc 7 635 0 discriminator 5
	lis 8,gameLocal@ha
	la 0,gameLocal@l(8)
.LBE11806:
.LBE11805:
.LBB11808:
	.loc 4 5138 0 discriminator 5
	lwz 4,4632(31)
.LVL2520:
.LBE11808:
.LBB11809:
.LBB11807:
	.loc 7 634 0 discriminator 5
	rlwinm 9,11,0,20,31
.LVL2521:
	.loc 7 635 0 discriminator 5
	srawi 11,11,12
	addi 10,9,4228
	.loc 7 638 0 discriminator 5
	li 5,0
	.loc 7 635 0 discriminator 5
	slwi 10,10,2
	add 10,0,10
	lwz 10,4(10)
	cmpw 7,10,11
	bne+ 7,.L1351
	.loc 7 636 0
	addi 9,9,132
.LVL2522:
	slwi 9,9,2
.LVL2523:
	add 9,0,9
	lwz 5,4(9)
.L1351:
.LBE11807:
.LBE11809:
	.loc 4 2869 0
	mr 3,31
	bl _ZN4idAI12DirectDamageEPKcP8idEntity
	b .L1352
.LVL2524:
.L1374:
.LBE11914:
.LBB11915:
.LBB11884:
	.loc 7 636 0
	addi 11,11,132
.LVL2525:
	slwi 11,11,2
.LVL2526:
	add 9,9,11
.LBE11884:
.LBE11915:
	.loc 4 2852 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1346
	.loc 4 2853 0 discriminator 4
	mr 3,31
	addi 4,31,5124
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L1347
.LBE11919:
	.cfi_endproc
.LFE2924:
	.size	_ZN4idAI9SlideMoveEv, .-_ZN4idAI9SlideMoveEv
	.align 2
	.globl _ZN4idAI8AnimMoveEv
	.type	_ZN4idAI8AnimMoveEv, @function
_ZN4idAI8AnimMoveEv:
.LFB2922:
	.loc 4 2669 0
	.cfi_startproc
.LVL2527:
	stwu 1,-224(1)
.LCFI325:
	.cfi_def_cfa_offset 224
	mflr 0
.LBB12005:
	.loc 4 2677 0
	li 4,0
.LBE12005:
	.loc 4 2669 0
	stw 30,192(1)
.LBB12254:
	.loc 4 2677 0
	addi 30,3,4216
	.cfi_offset 30, -32
	.cfi_register 65, 0
.LBE12254:
	.loc 4 2669 0
	stw 31,196(1)
	mr 31,3
	.cfi_offset 31, -28
.LBB12255:
	.loc 4 2677 0
	mr 3,30
.LVL2528:
.LBE12255:
	.loc 4 2669 0
	stw 0,228(1)
	stw 28,184(1)
.LBB12256:
	.loc 4 2678 0
	addi 28,31,2268
	.cfi_offset 28, -40
	.cfi_offset 65, 4
.LBE12256:
	.loc 4 2669 0
	stfd 29,200(1)
	stfd 30,208(1)
	stfd 31,216(1)
	stw 26,176(1)
	stw 27,180(1)
	stw 29,188(1)
.LBB12257:
	.loc 4 2677 0
	.cfi_offset 29, -36
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lwz 9,4(3)
	.loc 4 2678 0
	mr 4,28
	.loc 4 2677 0
	lwz 11,0(3)
	.loc 4 2678 0
	li 5,36
	.loc 4 2677 0
	lwz 0,8(3)
	.loc 4 2678 0
	addi 3,1,116
	.loc 4 2677 0
	stw 9,72(1)
	stw 11,68(1)
	stw 0,76(1)
	.loc 4 2678 0
	bl memcpy
.LVL2529:
.LBB12006:
.LBB12007:
	.loc 18 237 0
	lwz 9,5232(31)
	cmpwi 7,9,0
	beq- 7,.L1376
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1376:
.LBE12007:
.LBE12006:
	.loc 4 2682 0
	lwz 0,3956(31)
	cmpwi 7,0,2
	bgt- 7,.L1377
.LVL2530:
.LBB12008:
.LBB12009:
	.loc 6 416 0
	li 9,0
	stw 9,4048(31)
	stw 9,4044(31)
	stw 9,4040(31)
.LBE12009:
.LBE12008:
	.loc 4 2684 0
	lis 9,gameLocal+2426836@ha
	lwz 9,gameLocal+2426836@l(9)
	stw 9,4052(31)
.LVL2531:
.L1377:
	.loc 4 2688 0
	cmpwi 6,0,1
.LBB12010:
.LBB12011:
	.loc 7 606 0
	li 0,0
	stw 0,4036(31)
.LBE12011:
.LBE12010:
	.loc 4 2688 0
	beq- 6,.L1403
	.loc 4 2691 0
	beq- 7,.L1396
.L1379:
	.loc 4 2694 0
	mr 3,31
	addi 4,1,104
	bl _ZN4idAI10GetMovePosER6idVec3
	cmpwi 7,3,0
	bne- 7,.L1397
.L1380:
	.loc 4 2703 0
	mr 3,31
	bl _ZN4idAI4TurnEv
	.loc 4 2705 0
	lwz 0,3956(31)
	cmpwi 7,0,11
	beq- 7,.L1404
	.loc 4 2715 0
	lbz 9,4544(31)
	cmpwi 7,9,0
	bne- 7,.L1405
.LVL2532:
.LBB12012:
.LBB12013:
	.loc 6 416 0
	li 9,0
	mr 29,1
	stw 9,100(1)
	stw 9,96(1)
	stwu 9,92(29)
.LVL2533:
.L1385:
.LBE12013:
.LBE12012:
	.loc 4 2721 0
	cmpwi 7,0,9
	beq- 7,.L1406
.L1384:
	.loc 4 2729 0
	mr 4,29
	mr 3,30
	bl _ZN17idPhysics_Monster8SetDeltaERK6idVec3
	.loc 4 2730 0
	lbz 4,4546(31)
	mr 3,30
.LBB12014:
.LBB12015:
	.loc 4 2734 0
	lis 29,ai_debugMove@ha
.LBE12015:
.LBE12014:
	.loc 4 2730 0
	bl _ZN17idPhysics_Monster14ForceDeltaMoveEb
.LBB12018:
.LBB12016:
	.loc 4 2734 0
	la 29,ai_debugMove@l(29)
.LBE12016:
.LBE12018:
	.loc 4 2732 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
.LBB12019:
.LBB12017:
	.loc 20 142 0
	lwz 9,44(29)
.LBE12017:
.LBE12019:
	.loc 4 2734 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L1407
.L1388:
	.loc 4 2738 0
	mr 3,30
	bl _ZNK17idPhysics_Monster13GetMoveResultEv
.LBB12020:
	.loc 4 2739 0
	lbz 0,4547(31)
	cmpwi 7,0,0
	bne- 7,.L1389
	.loc 4 2739 0 is_stmt 0 discriminator 1
	lwz 0,4628(31)
	cmpwi 7,0,0
	bne- 7,.L1408
.L1389:
.LBB12021:
	.loc 4 2742 0 is_stmt 1
	mr 3,30
	bl _ZNK17idPhysics_Monster18GetSlideMoveEntityEv
.LVL2534:
	.loc 4 2743 0
	mr. 27,3
	beq- 0,.L1391
.LVL2535:
.LBB12022:
.LBB12023:
	.loc 16 340 0 discriminator 1
	lwz 9,0(27)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2536:
.LBE12023:
	.loc 4 5138 0 discriminator 1
	lis 9,_ZN10idMoveable4TypeE@ha
	la 9,_ZN10idMoveable4TypeE@l(9)
	lwz 0,56(3)
.LBB12028:
.LBB12024:
.LBB12025:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1409
.LVL2537:
.L1391:
.LBE12025:
.LBE12024:
.LBE12028:
.LBE12022:
.LBE12021:
.LBE12020:
	.loc 4 2748 0
	mr 3,31
	bl _ZN4idAI15BlockedFailSafeEv
	.loc 4 2750 0
	mr 3,30
	bl _ZNK17idPhysics_Monster8OnGroundEv
.LVL2538:
.LBB12037:
.LBB12038:
	.loc 18 237 0
	lwz 9,5212(31)
	cmpwi 7,9,0
	beq- 7,.L1393
.LBE12038:
.LBE12037:
	.loc 4 2750 0
	stw 3,0(9)
.L1393:
	.loc 4 2752 0
	mr 3,30
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LBB12039:
.LBB12040:
.LBB12041:
	.loc 6 497 0
	lfs 13,68(1)
.LBE12041:
.LBE12040:
.LBE12039:
	.loc 4 2752 0
	lwz 11,0(3)
	lwz 9,4(3)
	lwz 0,8(3)
	stw 11,56(1)
	stw 9,60(1)
.LBB12048:
.LBB12045:
.LBB12042:
	.loc 6 497 0
	lfs 0,56(1)
.LBE12042:
.LBE12045:
.LBE12048:
	.loc 4 2752 0
	stw 0,64(1)
.LVL2539:
.LBB12049:
.LBB12046:
.LBB12043:
	.loc 6 497 0
	fcmpu 7,13,0
	bne- 7,.L1394
	lfs 0,60(1)
	lfs 13,72(1)
	fcmpu 7,13,0
	beq- 7,.L1410
.L1394:
.LBE12043:
.LBE12046:
.LBE12049:
	.loc 4 2754 0
	mr 3,31
	bl _ZNK8idEntity13TouchTriggersEv
.L1399:
.LBB12050:
.LBB12051:
	.loc 20 142 0
	lwz 9,44(29)
.LBE12051:
.LBE12050:
	.loc 4 2757 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq+ 7,.L1375
	.loc 4 2758 0
	lis 29,gameRenderWorld@ha
	li 4,-1
	lwz 26,gameRenderWorld@l(29)
	mr 3,30
	lis 28,colorMagenta@ha
	lwz 9,0(26)
	la 28,colorMagenta@l(28)
	lwz 27,176(9)
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	mr 5,3
	addi 6,1,56
	mtctr 27
	mr 3,26
	mr 4,28
	li 7,16
	bctrl
	.loc 4 2759 0
	lwz 26,gameRenderWorld@l(29)
	li 4,-1
	mr 3,30
	lwz 9,0(26)
	lwz 27,176(9)
	bl _ZNK15idPhysics_Actor9GetBoundsEi
	mr 5,3
	addi 6,31,3964
	li 7,16
	mtctr 27
	mr 4,28
	mr 3,26
	bctrl
	.loc 4 2760 0
	lwz 28,gameRenderWorld@l(29)
	addi 3,1,44
	mr 4,31
	lwz 9,0(28)
	lwz 29,156(9)
	bl _ZNK7idActor9EyeOffsetEv
.LVL2540:
.LBB12052:
.LBB12053:
	.loc 6 452 0
	lfs 0,48(1)
.LBE12053:
.LBE12052:
	.loc 4 2760 0
	mr 4,31
.LBB12060:
.LBB12058:
	.loc 6 452 0
	lfs 13,60(1)
.LBE12058:
.LBE12060:
	.loc 4 2760 0
	addi 3,1,20
.LBB12061:
.LBB12059:
	.loc 6 452 0
	lfs 12,64(1)
	fadds 13,13,0
	lfs 0,52(1)
	lfs 11,56(1)
	fadds 0,12,0
.LVL2541:
	lfs 12,44(1)
.LBB12054:
.LBB12055:
	.loc 6 397 0
	stfs 13,36(1)
.LBE12055:
.LBE12054:
	.loc 6 452 0
	fadds 12,11,12
.LBB12057:
.LBB12056:
	.loc 6 398 0
	stfs 0,40(1)
	.loc 6 396 0
	stfs 12,32(1)
.LBE12056:
.LBE12057:
.LBE12059:
.LBE12061:
	.loc 4 2760 0
	bl _ZNK7idActor9EyeOffsetEv
.LVL2542:
.LBB12062:
.LBB12063:
	.loc 6 452 0
	lfs 0,20(1)
.LBE12063:
.LBE12062:
	.loc 4 2760 0
	mr 3,30
.LBB12065:
.LBB12064:
	.loc 6 452 0
	lfs 31,56(1)
	lfs 29,60(1)
	fadds 31,31,0
	lfs 0,24(1)
	lfs 30,64(1)
	fadds 29,29,0
	lfs 0,28(1)
	fadds 30,30,0
.LVL2543:
.LBE12064:
.LBE12065:
	.loc 4 2760 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL2544:
.LBB12066:
.LBB12067:
.LBB12068:
	.loc 13 454 0
	lfs 12,12(3)
	.loc 6 452 0
	lis 9,.LC1@ha
	.loc 13 454 0
	lfs 11,2272(31)
.LBE12068:
.LBE12067:
.LBE12066:
	.loc 4 2760 0
	lis 4,colorYellow@ha
.LBB12087:
.LBB12078:
.LBB12069:
	.loc 13 454 0
	lfs 9,16(3)
.LBE12069:
.LBE12078:
.LBE12087:
	.loc 4 2760 0
	la 4,colorYellow@l(4)
.LBB12088:
.LBB12079:
.LBB12070:
	.loc 13 454 0
	lfs 10,20(3)
.LBE12070:
.LBE12079:
.LBE12088:
	.loc 4 2760 0
	addi 5,1,32
.LBB12089:
.LBB12080:
.LBB12071:
	.loc 13 454 0
	fmuls 9,11,9
.LBE12071:
.LBE12080:
.LBE12089:
.LBB12090:
.LBB12091:
.LBB12092:
	lfs 13,0(3)
.LBE12092:
.LBE12091:
.LBE12090:
.LBB12099:
.LBB12081:
.LBB12072:
	fmuls 10,11,10
	lfs 8,4(3)
	fmuls 11,11,12
	lfs 0,8(3)
	lfs 12,2268(31)
.LBE12072:
.LBE12081:
.LBE12099:
	.loc 4 2760 0
	addi 6,1,8
	li 7,16
	li 8,1
.LBB12100:
.LBB12082:
.LBB12073:
	.loc 13 454 0
	fmadds 9,12,8,9
	lfs 8,28(3)
	fmadds 10,12,0,10
.LBE12073:
.LBE12082:
.LBE12100:
.LBB12101:
.LBB12096:
.LBB12093:
	lfs 0,24(3)
	fmadds 12,13,12,11
.LBE12093:
.LBE12096:
.LBE12101:
.LBB12102:
.LBB12083:
.LBB12074:
	lfs 13,2276(31)
.LVL2545:
	lfs 11,32(3)
.LBE12074:
.LBE12083:
.LBE12102:
	.loc 4 2760 0
	mtctr 29
.LBB12103:
.LBB12084:
.LBB12075:
	.loc 13 454 0
	fmadds 9,13,8,9
.LBE12075:
.LBE12084:
.LBE12103:
	.loc 4 2760 0
	mr 3,28
.LVL2546:
.LBB12104:
.LBB12085:
.LBB12076:
	.loc 13 454 0
	fmadds 10,13,11,10
.LBE12076:
.LBE12085:
.LBE12104:
.LBB12105:
.LBB12097:
.LBB12094:
	fmadds 13,0,13,12
.LBE12094:
.LBE12097:
.LBE12105:
.LBB12106:
.LBB12086:
.LBB12077:
	.loc 6 452 0
	lfs 0,.LC1@l(9)
	fmadds 9,9,0,29
	fmadds 10,10,0,30
.LVL2547:
.LBE12077:
.LBE12086:
.LBE12106:
.LBB12107:
.LBB12098:
.LBB12095:
	fmadds 0,13,0,31
	.loc 6 397 0
	stfs 9,12(1)
	.loc 6 398 0
	stfs 10,16(1)
	.loc 6 396 0
	stfs 0,8(1)
.LBE12095:
.LBE12098:
.LBE12107:
	.loc 4 2760 0
	bctrl
.LVL2548:
	.loc 4 2761 0
	mr 3,31
	bl _ZNK4idAI9DrawRouteEv
.LVL2549:
.L1375:
.LBE12257:
	.loc 4 2763 0
	lwz 0,228(1)
	lwz 26,176(1)
	mtlr 0
	lwz 27,180(1)
	lwz 28,184(1)
	lwz 29,188(1)
	lwz 30,192(1)
	lwz 31,196(1)
.LVL2550:
	lfd 29,200(1)
	lfd 30,208(1)
	lfd 31,216(1)
	addi 1,1,224
	.cfi_remember_state
.LCFI326:
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
	blr
.LVL2551:
.L1410:
.LCFI327:
	.cfi_restore_state
.LBB12258:
.LBB12108:
.LBB12047:
.LBB12044:
	.loc 6 497 0
	lfs 0,64(1)
	lfs 13,76(1)
	fcmpu 7,13,0
	bne- 7,.L1394
	b .L1399
.LVL2552:
.L1407:
.LBE12044:
.LBE12047:
.LBE12108:
	.loc 4 2735 0
	lis 9,gameRenderWorld@ha
	li 4,0
	lwz 26,gameRenderWorld@l(9)
	mr 3,30
	lwz 9,0(26)
	lwz 27,156(9)
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lis 4,colorCyan@ha
	mr 6,3
	la 4,colorCyan@l(4)
	mr 3,26
	addi 5,1,68
	li 7,5000
	li 8,0
	mtctr 27
	bctrl
	b .L1388
.L1404:
	.loc 4 2706 0
	lwz 11,4008(31)
	lis 10,gameLocal+2426836@ha
	lwz 9,4012(31)
	lwz 0,gameLocal+2426836@l(10)
	add 9,11,9
	cmpw 7,0,9
	bge- 7,.L1383
	.loc 4 2707 0
	subf 0,0,9
	lis 9,.LC65@ha
	xoris 0,0,0x8000
	lfs 0,.LC65@l(9)
	stw 0,156(1)
	lis 0,0x4330
	stw 0,152(1)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	.loc 4 2709 0
	li 0,0
	addi 29,1,92
	.loc 4 2707 0
	lfd 13,152(1)
	.loc 6 431 0
	lfs 8,3976(31)
	.loc 4 2707 0
	fsub 0,13,0
	lfs 13,_ZN6idMath8M_MS2SECE@l(9)
	.loc 6 431 0
	lfs 12,3964(31)
	lfs 9,3980(31)
	.loc 4 2707 0
	frsp 0,0
	.loc 6 431 0
	lfs 10,3984(31)
	lfs 11,3972(31)
	.loc 4 2709 0
	stw 0,100(1)
	.loc 4 2707 0
	fmuls 0,0,13
.LVL2553:
	.loc 6 431 0
	lfs 13,3968(31)
	.loc 4 2669 0
	fneg 0,0
.LVL2554:
	.loc 6 431 0
	fmadds 12,0,8,12
	fmadds 13,0,9,13
	fmadds 0,0,10,11
.LVL2555:
.LBB12109:
.LBB12110:
	lfs 11,72(1)
	lfs 10,68(1)
	fsubs 11,13,11
.LBE12110:
.LBE12109:
.LBB12112:
.LBB12113:
	.loc 6 424 0
	stfs 12,104(1)
.LBE12113:
.LBE12112:
.LBB12115:
.LBB12111:
	.loc 6 431 0
	fsubs 10,12,10
.LBE12111:
.LBE12115:
.LBB12116:
.LBB12114:
	.loc 6 425 0
	stfs 13,108(1)
	.loc 6 426 0
	stfs 0,112(1)
.LVL2556:
.LBE12114:
.LBE12116:
.LBB12117:
.LBB12118:
	.loc 6 425 0
	stfs 11,96(1)
	.loc 6 424 0
	stfs 10,92(1)
	b .L1384
.LVL2557:
.L1403:
.LBE12118:
.LBE12117:
.LBB12119:
.LBB12120:
	.loc 7 634 0 discriminator 1
	lwz 0,5120(31)
	.loc 7 635 0 discriminator 1
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL2558:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L1379
	.loc 7 636 0
	addi 11,11,132
.LVL2559:
.LBE12120:
.LBE12119:
	.loc 4 2689 0
	mr 3,31
.LBB12123:
.LBB12121:
	.loc 7 636 0
	slwi 11,11,2
.LVL2560:
.LBE12121:
.LBE12123:
	.loc 4 2689 0
	addi 4,31,5124
.LBB12124:
.LBB12122:
	.loc 7 636 0
	add 9,9,11
.LBE12122:
.LBE12124:
	.loc 4 2688 0
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1402
	b .L1379
.LVL2561:
.L1406:
.LBB12125:
.LBB12126:
	.loc 6 431 0
	lfs 0,72(1)
.LBE12126:
.LBE12125:
.LBB12135:
.LBB12136:
.LBB12137:
.LBB12138:
	.loc 8 246 0
	lis 9,.LC15@ha
.LBE12138:
.LBE12137:
.LBE12136:
.LBE12135:
.LBB12172:
.LBB12127:
	.loc 6 431 0
	lfs 13,3968(31)
.LBE12127:
.LBE12172:
.LBB12173:
.LBB12159:
.LBB12149:
.LBB12139:
	.loc 8 248 0
	lis 0,0x5f37
.LBE12139:
.LBE12149:
.LBE12159:
.LBE12173:
.LBB12174:
.LBB12128:
	.loc 6 431 0
	lfs 12,3964(31)
.LBE12128:
.LBE12174:
.LBB12175:
.LBB12160:
.LBB12150:
.LBB12140:
	.loc 8 248 0
	ori 0,0,23007
.LBE12140:
.LBE12150:
.LBE12160:
.LBE12175:
.LBB12176:
.LBB12129:
	.loc 6 431 0
	fsubs 13,13,0
	lfs 0,68(1)
.LBE12129:
.LBE12176:
.LBB12177:
.LBB12178:
	.loc 6 642 0
	lfs 11,96(1)
.LBE12178:
.LBE12177:
.LBB12206:
.LBB12130:
	.loc 6 431 0
	fsubs 12,12,0
	lfs 8,3972(31)
.LBE12130:
.LBE12206:
.LBB12207:
.LBB12161:
	.loc 6 642 0
	fmuls 9,13,13
.LBE12161:
.LBE12207:
.LBB12208:
.LBB12131:
	.loc 6 431 0
	lfs 0,76(1)
.LBE12131:
.LBE12208:
.LBB12209:
.LBB12193:
	.loc 6 642 0
	fmuls 10,11,11
	lfs 11,92(1)
.LBE12193:
.LBE12209:
.LBB12210:
.LBB12132:
	.loc 6 431 0
	fsubs 0,8,0
.LVL2562:
	.loc 6 642 0
	fmadds 9,12,12,9
.LBE12132:
.LBE12210:
.LBB12211:
.LBB12194:
	fmadds 10,11,11,10
	lfs 11,100(1)
.LBE12194:
.LBE12211:
.LBB12212:
.LBB12133:
	fmadds 9,0,0,9
.LBE12133:
.LBE12212:
.LBB12213:
.LBB12195:
	fmadds 10,11,11,10
.LBE12195:
.LBE12213:
.LBB12214:
.LBB12162:
.LBB12151:
.LBB12141:
	.loc 8 246 0
	lfs 11,.LC15@l(9)
.LBE12141:
.LBE12151:
.LBE12162:
.LBE12214:
.LBB12215:
.LBB12134:
	.loc 6 642 0
	stfs 9,160(1)
.LVL2563:
.LBE12134:
.LBE12215:
.LBB12216:
.LBB12196:
	stfs 10,168(1)
.LBE12196:
.LBE12216:
.LBB12217:
.LBB12163:
.LBB12152:
.LBB12142:
	.loc 8 246 0
	fmuls 10,9,11
	.loc 8 248 0
	lwz 9,160(1)
.LBE12142:
.LBE12152:
.LBE12163:
.LBE12217:
.LBB12218:
.LBB12197:
.LBB12179:
.LBB12180:
	lwz 10,168(1)
	.loc 8 246 0
	lfs 6,168(1)
.LBE12180:
.LBE12179:
.LBE12197:
.LBE12218:
.LBB12219:
.LBB12164:
.LBB12153:
.LBB12143:
	.loc 8 248 0
	srawi 11,9,1
	.loc 8 249 0
	subf 11,11,0
.LBE12143:
.LBE12153:
.LBE12164:
.LBE12219:
.LBB12220:
.LBB12198:
.LBB12187:
.LBB12181:
	.loc 8 248 0
	srawi 9,10,1
	.loc 8 246 0
	fmuls 11,6,11
	.loc 8 249 0
	subf 9,9,0
.LBE12181:
.LBE12187:
.LBE12198:
.LBE12220:
.LBB12221:
.LBB12165:
.LBB12154:
.LBB12144:
	stw 11,164(1)
.LVL2564:
	.loc 4 2669 0
	fneg 10,10
.LBE12144:
.LBE12154:
.LBE12165:
.LBE12221:
.LBB12222:
.LBB12199:
.LBB12188:
.LBB12182:
	.loc 8 249 0
	stw 9,172(1)
.LBE12182:
.LBE12188:
.LBE12199:
.LBE12222:
.LBB12223:
.LBB12166:
.LBB12155:
.LBB12145:
	.loc 8 250 0
	lis 9,.LC63@ha
	lfs 6,164(1)
.LBE12145:
.LBE12155:
.LBE12166:
.LBE12223:
.LBB12224:
.LBB12200:
.LBB12189:
.LBB12183:
	.loc 4 2669 0
	fneg 8,11
	.loc 8 250 0
	lfs 11,172(1)
.LBE12183:
.LBE12189:
.LBE12200:
.LBE12224:
.LBB12225:
.LBB12167:
.LBB12156:
.LBB12146:
	fmuls 7,6,6
.LBE12146:
.LBE12156:
.LBE12167:
.LBE12225:
.LBB12226:
.LBB12201:
.LBB12190:
.LBB12184:
	fmuls 9,11,11
.LVL2565:
.LBE12184:
.LBE12190:
.LBE12201:
.LBE12226:
.LBB12227:
.LBB12168:
.LBB12157:
.LBB12147:
	lfs 11,.LC63@l(9)
	fmadds 10,10,7,11
.LVL2566:
.LBE12147:
.LBE12157:
.LBE12168:
.LBE12227:
.LBB12228:
.LBB12202:
.LBB12191:
.LBB12185:
	fmadds 11,8,9,11
.LVL2567:
.LBE12185:
.LBE12191:
.LBE12202:
.LBE12228:
.LBB12229:
.LBB12169:
	.loc 6 643 0
	lfs 8,160(1)
.LBE12169:
.LBE12229:
.LBB12230:
.LBB12203:
	lfs 9,168(1)
.LBE12203:
.LBE12230:
.LBB12231:
.LBB12170:
.LBB12158:
.LBB12148:
	.loc 8 250 0
	fmuls 10,6,10
.LVL2568:
.LBE12148:
.LBE12158:
.LBE12170:
.LBE12231:
.LBB12232:
.LBB12204:
.LBB12192:
.LBB12186:
	lfs 6,172(1)
	fmuls 11,6,11
.LVL2569:
.LBE12186:
.LBE12192:
.LBE12204:
.LBE12232:
.LBB12233:
.LBB12171:
	.loc 6 643 0
	fmuls 10,8,10
.LVL2570:
.LBE12171:
.LBE12233:
.LBB12234:
.LBB12205:
	fmuls 11,9,11
.LVL2571:
.LBE12205:
.LBE12234:
	.loc 4 2724 0
	fcmpu 7,10,11
	bnl- 7,.L1384
.LVL2572:
.LBB12235:
.LBB12236:
	.loc 6 424 0
	stfs 12,92(1)
	.loc 6 425 0
	stfs 13,96(1)
	.loc 6 426 0
	stfs 0,100(1)
	b .L1384
.LVL2573:
.L1405:
.LBE12236:
.LBE12235:
	.loc 4 2716 0
	addi 29,1,92
	mr 3,31
	addi 4,1,116
	mr 5,28
	mr 6,29
	bl _ZN4idAI12GetMoveDeltaERK6idMat3S2_R6idVec3
	lwz 0,3956(31)
	b .L1385
.L1397:
	.loc 4 2695 0
	lwz 0,3956(31)
	.loc 4 2696 0
	mr 3,31
	addi 4,1,104
	.loc 4 2695 0
	cmpwi 7,0,12
	beq- 7,.L1381
	.loc 4 2696 0
	addi 5,1,80
	bl _ZN4idAI22CheckObstacleAvoidanceERK6idVec3RS0_
	.loc 4 2697 0
	mr 3,31
	addi 4,1,80
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L1380
.L1396:
.LVL2574:
.LBB12237:
.LBB12238:
	.loc 7 634 0 discriminator 1
	lwz 0,3988(31)
	.loc 7 635 0 discriminator 1
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL2575:
	.loc 7 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L1379
	.loc 7 636 0
	addi 11,11,132
.LVL2576:
	slwi 11,11,2
.LVL2577:
	add 9,9,11
	lwz 3,4(9)
.LBE12238:
.LBE12237:
	.loc 4 2691 0
	cmpwi 7,3,0
	beq- 7,.L1379
.LVL2578:
	.loc 4 2692 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,3
	mr 3,31
.LVL2579:
.L1402:
	bl _ZN4idAI10TurnTowardERK6idVec3
.LVL2580:
.LBB12239:
.LBB12240:
	.loc 6 424 0
	lwz 0,68(1)
	stw 0,104(1)
	.loc 6 425 0
	lwz 0,72(1)
	stw 0,108(1)
	.loc 6 426 0
	lwz 0,76(1)
	stw 0,112(1)
	b .L1380
.LVL2581:
.L1408:
.LBE12240:
.LBE12239:
.LBB12241:
	.loc 4 2739 0 discriminator 3
	mr 3,31
	bl _ZNK4idAI9TestMeleeEv
	cmpwi 7,3,0
	beq- 7,.L1389
.LVL2582:
.LBB12031:
.LBB12032:
	.loc 7 634 0 discriminator 5
	lwz 11,5120(31)
	.loc 7 635 0 discriminator 5
	lis 8,gameLocal@ha
	la 0,gameLocal@l(8)
.LBE12032:
.LBE12031:
.LBB12034:
	.loc 4 5138 0 discriminator 5
	lwz 4,4632(31)
.LVL2583:
.LBE12034:
.LBB12035:
.LBB12033:
	.loc 7 634 0 discriminator 5
	rlwinm 9,11,0,20,31
.LVL2584:
	.loc 7 635 0 discriminator 5
	srawi 11,11,12
	addi 10,9,4228
	.loc 7 638 0 discriminator 5
	li 5,0
	.loc 7 635 0 discriminator 5
	slwi 10,10,2
	add 10,0,10
	lwz 10,4(10)
	cmpw 7,10,11
	bne+ 7,.L1390
	.loc 7 636 0
	addi 9,9,132
.LVL2585:
	slwi 9,9,2
.LVL2586:
	add 9,0,9
	lwz 5,4(9)
.L1390:
.LBE12033:
.LBE12035:
	.loc 4 2740 0
	mr 3,31
	bl _ZN4idAI12DirectDamageEPKcP8idEntity
	b .L1391
.LVL2587:
.L1409:
.LBB12036:
.LBB12030:
.LBB12029:
.LBB12027:
.LBB12026:
	.loc 16 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1391
.LBE12026:
.LBE12027:
.LBE12029:
.LBE12030:
	.loc 4 2743 0
	mr 3,27
.LVL2588:
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	beq- 7,.L1391
.LVL2589:
	.loc 4 2744 0 discriminator 5
	lfs 1,4168(31)
	mr 3,31
	mr 4,28
	mr 5,27
	bl _ZN4idAI13KickObstaclesERK6idVec3fP8idEntity
	b .L1391
.LVL2590:
.L1383:
.LBE12036:
.LBE12241:
.LBB12242:
.LBB12243:
	.loc 6 431 0
	lfs 13,3968(31)
.LBE12243:
.LBE12242:
	.loc 4 2712 0
	li 0,0
.LBB12248:
.LBB12244:
	.loc 6 431 0
	lfs 0,72(1)
.LBE12244:
.LBE12248:
	.loc 4 2713 0
	mr 3,31
.LBB12249:
.LBB12245:
	.loc 6 431 0
	lfs 12,3964(31)
.LBE12245:
.LBE12249:
	.loc 4 2713 0
	li 4,0
.LBB12250:
.LBB12246:
	.loc 6 431 0
	fsubs 0,13,0
.LVL2591:
	lfs 13,68(1)
.LBE12246:
.LBE12250:
	.loc 4 2712 0
	stw 0,100(1)
	addi 29,1,92
.LVL2592:
.LBB12251:
.LBB12247:
	.loc 6 431 0
	fsubs 13,12,13
.LBE12247:
.LBE12251:
.LBB12252:
.LBB12253:
	.loc 6 425 0
	stfs 0,96(1)
	.loc 6 424 0
	stfs 13,92(1)
.LBE12253:
.LBE12252:
	.loc 4 2713 0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL2593:
	lwz 0,3956(31)
	b .L1385
.LVL2594:
.L1381:
	.loc 4 2699 0
	bl _ZN4idAI10TurnTowardERK6idVec3
	b .L1380
.LBE12258:
	.cfi_endproc
.LFE2922:
	.size	_ZN4idAI8AnimMoveEv, .-_ZN4idAI8AnimMoveEv
	.align 2
	.globl _ZN4idAI11AttackMeleeEPKc
	.type	_ZN4idAI11AttackMeleeEPKc, @function
_ZN4idAI11AttackMeleeEPKc:
.LFB2962:
	.loc 4 4356 0
	.cfi_startproc
.LVL2595:
	mflr 0
	stwu 1,-112(1)
.LCFI328:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	stw 28,96(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,100(1)
.LBB12293:
.LBB12294:
.LBB12295:
	.loc 7 635 0
	lis 29,gameLocal@ha
	.cfi_offset 29, -12
.LBE12295:
.LBE12294:
.LBE12293:
	.loc 4 4356 0
	stw 30,104(1)
.LBB12358:
.LBB12302:
.LBB12296:
	.loc 7 635 0
	la 29,gameLocal@l(29)
.LBE12296:
.LBE12302:
.LBE12358:
	.loc 4 4356 0
	stw 31,108(1)
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL2596:
	stw 0,116(1)
.LBB12359:
.LBB12303:
.LBB12297:
	.loc 7 638 0
	li 31,0
.LBE12297:
.LBE12303:
.LBE12359:
	.loc 4 4356 0
	stw 27,92(1)
.LBB12360:
.LBB12304:
.LBB12298:
	.loc 7 634 0
	lwz 0,5120(3)
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	rlwinm 9,0,0,20,31
.LVL2597:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1426
.LVL2598:
.L1412:
.LBE12298:
.LBE12304:
	.loc 4 4362 0
	mr 3,29
.LVL2599:
	mr 4,28
.LVL2600:
	li 5,0
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL2601:
	.loc 4 4363 0
	mr. 27,3
	beq- 0,.L1427
.LVL2602:
.L1413:
	.loc 4 4367 0
	cmpwi 7,31,0
	beq- 7,.L1419
.LVL2603:
.LBB12305:
.LBB12306:
.LBB12307:
	.loc 16 340 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2604:
.LBE12307:
	.loc 4 5138 0
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB12310:
.LBB12308:
.LBB12309:
	.loc 16 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1416
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1416
.LBE12309:
.LBE12308:
.LBE12310:
.LBE12306:
.LBB12311:
.LBB12312:
	.loc 4 4379 0
	lis 9,g_skill+44@ha
	.loc 20 143 0
	lwz 9,g_skill+44@l(9)
.LBE12312:
.LBE12311:
	.loc 4 4379 0
	lwz 0,36(9)
	cmpwi 7,0,1
	ble- 7,.L1428
.LVL2605:
.L1416:
.LBE12305:
	.loc 4 4398 0
	mr 3,30
	bl _ZNK4idAI9TestMeleeEv
	cmpwi 7,3,0
	beq- 7,.L1419
.LVL2606:
.LBB12319:
.LBB12320:
	.loc 11 241 0
	lis 4,.LC123@ha
	mr 3,27
	la 4,.LC123@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE12320:
.LBE12319:
	.loc 4 4418 0
	lis 4,.LC124@ha
	lis 5,.LC31@ha
	la 4,.LC124@l(4)
	la 5,.LC31@l(5)
	addi 6,1,28
	mr 3,27
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	.loc 4 4421 0
	addi 3,30,4216
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
	addi 11,30,2268
.LVL2607:
	.loc 4 4356 0
	addi 0,1,76
.LBB12321:
.LBB12299:
	.loc 13 465 0
	addi 9,1,40
	addi 3,3,-4
.LVL2608:
.L1423:
.LBE12299:
.LBE12321:
.LBB12322:
.LBB12323:
	.loc 13 467 0
	lfs 9,0(11)
	.loc 4 4356 0
	mr 10,3
	.loc 13 467 0
	lfs 10,4(11)
.LBE12323:
.LBE12322:
.LBB12326:
.LBB12300:
	.loc 4 4356 0
	li 8,0
.LBE12300:
.LBE12326:
.LBB12327:
.LBB12324:
	.loc 13 467 0
	lfs 11,8(11)
.LVL2609:
.L1421:
.LBE12324:
.LBE12327:
.LBB12328:
.LBB12329:
	.loc 11 241 0
	addi 10,10,4
.LBE12329:
.LBE12328:
.LBB12332:
.LBB12325:
	.loc 13 468 0
	cmpwi 7,8,8
	.loc 13 471 0
	lfs 0,12(10)
	lfs 12,0(10)
	fmuls 0,10,0
	lfs 13,24(10)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsx 0,9,8
	.loc 13 468 0
	addi 8,8,4
	bne+ 7,.L1421
	addi 9,9,12
	.loc 13 474 0
	addi 11,11,12
.LVL2610:
	.loc 13 467 0
	cmpw 7,9,0
	bne+ 7,.L1423
.LVL2611:
.LBE12325:
.LBE12332:
.LBB12333:
.LBB12334:
	.loc 13 454 0
	lfs 0,32(1)
.LBE12334:
.LBE12333:
	.loc 4 4423 0
	mr 3,31
.LVL2612:
.LBB12342:
.LBB12335:
	.loc 13 454 0
	lfs 11,56(1)
.LBE12335:
.LBE12342:
	.loc 4 4423 0
	mr 4,30
.LBB12343:
.LBB12336:
	.loc 13 454 0
	lfs 13,52(1)
.LBE12336:
.LBE12343:
	.loc 4 4423 0
	mr 5,30
.LBB12344:
.LBB12337:
	.loc 13 454 0
	lfs 12,60(1)
	fmuls 11,0,11
	lfs 10,44(1)
.LBE12337:
.LBE12344:
	.loc 4 4423 0
	addi 6,1,16
.LBB12345:
.LBB12338:
	.loc 13 454 0
	fmuls 12,0,12
.LBE12338:
.LBE12345:
	.loc 4 4423 0
	mr 7,28
.LBB12346:
.LBB12339:
	.loc 13 454 0
	fmuls 0,0,13
	lfs 13,28(1)
.LBE12339:
.LBE12346:
	.loc 4 4423 0
	li 8,-1
	.loc 4 4425 0
	addis 29,29,0x25
.LBB12347:
.LBB12340:
	.loc 13 454 0
	fmadds 11,13,10,11
	lfs 10,48(1)
	fmadds 12,13,10,12
.LBE12340:
.LBE12347:
.LBB12348:
.LBB12349:
	lfs 10,40(1)
	fmadds 13,10,13,0
.LBE12349:
.LBE12348:
.LBB12351:
.LBB12341:
	lfs 0,36(1)
	lfs 10,68(1)
	fmadds 11,0,10,11
	lfs 10,72(1)
	fmadds 12,0,10,12
.LVL2613:
.LBE12341:
.LBE12351:
.LBB12352:
.LBB12350:
	lfs 10,64(1)
	.loc 6 425 0
	stfs 11,20(1)
	.loc 13 454 0
	fmadds 0,10,0,13
	.loc 6 426 0
	stfs 12,24(1)
	.loc 6 424 0
	stfs 0,16(1)
.LBE12350:
.LBE12352:
	.loc 4 4423 0
	lwz 9,0(31)
.LVL2614:
	lwz 0,164(9)
	lis 9,.LC0@ha
	lfs 1,.LC0@l(9)
	mtctr 0
	bctrl
.LVL2615:
	.loc 4 4425 0
	lwz 0,2004(29)
	.loc 4 4427 0
	li 3,1
	.loc 4 4425 0
	stw 0,4556(30)
.LBE12360:
	.loc 4 4428 0
	lwz 0,116(1)
	lwz 27,92(1)
.LVL2616:
	mtlr 0
	lwz 28,96(1)
.LVL2617:
	lwz 29,100(1)
	lwz 30,104(1)
.LVL2618:
	lwz 31,108(1)
.LVL2619:
	addi 1,1,112
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI329:
	.cfi_def_cfa_offset 0
	blr
.LVL2620:
.L1428:
.LCFI330:
	.cfi_restore_state
.LBB12361:
.LBB12353:
.LBB12313:
	.loc 4 4382 0 discriminator 4
	lis 9,.LC0@ha
	mr 3,31
.LVL2621:
	lfs 1,.LC0@l(9)
	mr 4,30
	addi 9,1,8
	mr 5,30
	mr 6,27
	li 7,-1
	addi 8,1,12
	bl _ZN8idPlayer16CalcDamagePointsEP8idEntityS1_PK6idDictfiPiS5_
.LBB12314:
	.loc 4 4384 0 discriminator 4
	lwz 9,188(31)
.LVL2622:
	lwz 0,12(1)
	cmpw 7,9,0
	bgt- 7,.L1416
.LBB12315:
	.loc 4 4385 0
	addis 9,29,0x25
	lwz 0,4688(31)
	lwz 9,2004(9)
	subf 0,0,9
.LVL2623:
	.loc 4 4386 0
	cmpwi 7,0,5000
	ble- 7,.L1417
	.loc 4 4387 0
	stw 9,4688(31)
.LVL2624:
.L1418:
	.loc 4 4391 0
	lis 4,.LC128@ha
	mr 3,29
	la 4,.LC128@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
.LVL2625:
.L1419:
.LBE12315:
.LBE12314:
.LBE12313:
.LBE12353:
.LBB12354:
.LBB12330:
	.loc 11 241 0 discriminator 4
	lis 4,.LC127@ha
	mr 3,27
	la 4,.LC127@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE12330:
.LBE12354:
.LBE12361:
	.loc 4 4428 0 discriminator 4
	lwz 0,116(1)
	lwz 27,92(1)
.LVL2626:
.LBB12362:
.LBB12355:
.LBB12331:
	.loc 4 4405 0 discriminator 4
	li 3,0
.LBE12331:
.LBE12355:
.LBE12362:
	.loc 4 4428 0 discriminator 4
	mtlr 0
	lwz 28,96(1)
.LVL2627:
	lwz 29,100(1)
	lwz 30,104(1)
.LVL2628:
	lwz 31,108(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI331:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL2629:
.L1426:
.LCFI332:
	.cfi_restore_state
.LBB12363:
.LBB12356:
.LBB12301:
	.loc 7 636 0
	addi 9,9,132
.LVL2630:
	slwi 9,9,2
.LVL2631:
	add 9,29,9
	lwz 31,4(9)
	b .L1412
.LVL2632:
.L1427:
.LBE12301:
.LBE12356:
	.loc 4 4364 0
	lis 4,.LC126@ha
	mr 3,29
.LVL2633:
	la 4,.LC126@l(4)
	mr 5,28
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1413
.LVL2634:
.L1417:
.LBB12357:
.LBB12318:
.LBB12317:
.LBB12316:
	.loc 4 4390 0
	cmpwi 7,0,999
	bgt+ 7,.L1416
	b .L1418
.LBE12316:
.LBE12317:
.LBE12318:
.LBE12357:
.LBE12363:
	.cfi_endproc
.LFE2962:
	.size	_ZN4idAI11AttackMeleeEPKc, .-_ZN4idAI11AttackMeleeEPKc
	.align 2
	.globl _ZN4idAI10PushWithAFEv
	.type	_ZN4idAI10PushWithAFEv, @function
_ZN4idAI10PushWithAFEv:
.LFB2963:
	.loc 4 4435 0
	.cfi_startproc
.LVL2635:
	lis 0,0xfffe
	mr 12,1
	ori 0,0,65432
.LBB12402:
	.loc 4 4444 0
	lis 9,gameLocal+2426836@ha
.LBE12402:
	.loc 4 4435 0
	stwux 1,1,0
.LCFI333:
	.cfi_def_cfa_offset 65640
	mflr 0
	stw 26,-24(12)
	stw 27,-20(12)
	mr 26,3
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_register 65, 0
	stw 31,-4(12)
.LBB12466:
	.loc 4 4444 0
	addi 31,3,1624
	.cfi_offset 31, -4
.LBE12466:
	.loc 4 4435 0
	stw 0,4(12)
.LBB12467:
	.loc 4 4444 0
	mr 3,31
.LVL2636:
.LBE12467:
	.loc 4 4435 0
	stw 19,-52(12)
.LBB12468:
	.loc 4 4444 0
	mr 4,26
.LBE12468:
	.loc 4 4435 0
	stw 20,-48(12)
	stw 21,-44(12)
	stw 22,-40(12)
	stw 23,-36(12)
	stw 24,-32(12)
	stw 25,-28(12)
	stw 28,-16(12)
	stw 29,-12(12)
	stw 30,-8(12)
.LBB12469:
	.loc 4 4444 0
	lwz 5,gameLocal+2426836@l(9)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 65, 4
	bl _ZN4idAF10ChangePoseEP8idEntityi
	.loc 4 4445 0
	mr 3,31
	addi 4,1,16416
	bl _ZNK4idAF18EntitiesTouchingAFEP9afTouch_s
.LVL2637:
	.loc 4 4446 0
	mr. 27,3
	ble- 0,.L1429
	lis 28,_ZN12idProjectile4TypeE@ha
.LBB12403:
.LBB12404:
.LBB12405:
.LBB12406:
	.loc 8 276 0
	lis 24,_ZN6idMath5iSqrtE@ha
.LBE12406:
.LBE12405:
.LBE12404:
.LBE12403:
	.loc 4 4446 0
	addi 31,1,16416
	.loc 4 4443 0
	li 29,0
	.loc 4 4446 0
	li 30,0
	la 28,_ZN12idProjectile4TypeE@l(28)
	.loc 6 431 0
	lis 23,.LC15@ha
.LBB12417:
.LBB12413:
.LBB12410:
.LBB12407:
	.loc 8 276 0
	la 24,_ZN6idMath5iSqrtE@l(24)
	.loc 8 278 0
	lis 25,.LC63@ha
.LBE12407:
.LBE12410:
.LBE12413:
.LBE12417:
.LBB12418:
.LBB12419:
	.loc 6 448 0
	lis 22,.LC129@ha
.LBE12419:
.LBE12418:
.LBB12429:
	.loc 4 5138 0
	lis 21,_ZN7idActor4TypeE@ha
.LBE12429:
	.loc 4 4464 0
	lis 20,.LC0@ha
.LVL2638:
.L1439:
	.loc 4 4447 0
	lwz 3,0(31)
.LVL2639:
.LBB12434:
.LBB12435:
	.loc 16 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2640:
.LBB12436:
.LBB12437:
	.loc 16 311 0
	lwz 9,56(28)
.LBE12437:
.LBE12436:
.LBE12435:
	.loc 4 5138 0
	lwz 0,56(3)
.LBB12442:
.LBB12440:
.LBB12438:
	.loc 16 311 0
	cmpw 7,0,9
	bge- 7,.L1431
.L1435:
.LVL2641:
.LBE12438:
.LBE12440:
.LBE12442:
.LBE12434:
	.loc 4 4453 0 discriminator 1
	cmpwi 7,29,0
	.loc 4 4454 0 discriminator 1
	lwz 19,0(31)
	.loc 4 4453 0 discriminator 1
	ble- 7,.L1437
	.loc 4 4454 0
	lwz 0,32(1)
	addi 9,1,32
	mtctr 29
	cmpw 7,0,19
	beq- 7,.L1433
.LVL2642:
.L1434:
	.loc 4 4453 0
	bdz .L1437
	.loc 4 4454 0
	lwzu 0,4(9)
	cmpw 7,0,19
	bne+ 7,.L1434
.L1433:
.LVL2643:
	.loc 4 4446 0
	addi 30,30,1
.LVL2644:
	addi 31,31,12
	cmpw 7,30,27
	bne+ 7,.L1439
.LVL2645:
.L1429:
.LBE12469:
	.loc 4 4470 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 19,-52(11)
	mtlr 0
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
.LVL2646:
	lwz 27,-20(11)
.LVL2647:
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	mr 1,11
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
	blr
.LVL2648:
.L1431:
.LCFI335:
	.cfi_restore_state
.LBB12470:
.LBB12444:
.LBB12443:
.LBB12441:
.LBB12439:
	.loc 16 311 0
	lwz 9,60(28)
	cmpw 7,0,9
	bgt- 7,.L1435
.LVL2649:
.LBE12439:
.LBE12441:
.LBE12443:
.LBE12444:
	.loc 4 4446 0
	addi 30,30,1
.LVL2650:
	addi 31,31,12
	cmpw 7,30,27
	bne+ 7,.L1439
	b .L1429
.LVL2651:
.L1437:
	.loc 4 4460 0
	addi 0,1,8
	slwi 9,29,2
	add 9,0,9
	.loc 4 4461 0
	mr 3,19
.LVL2652:
	.loc 4 4460 0
	stw 19,24(9)
	addi 29,29,1
	.loc 4 4461 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL2653:
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL2654:
	.loc 4 5138 0
	lwz 9,8(31)
.LBB12445:
.LBB12446:
	.loc 5 212 0
	lfs 0,4(3)
	lfs 11,16(3)
.LBE12446:
.LBE12445:
	.loc 4 5138 0
	lwz 9,416(9)
.LVL2655:
.LBB12452:
.LBB12447:
	.loc 5 212 0
	fadds 11,11,0
	lfs 13,0(3)
.LBE12447:
.LBE12452:
	.loc 6 431 0
	lfs 0,.LC15@l(23)
	lfs 12,4(9)
.LBB12453:
.LBB12448:
	.loc 5 212 0
	lfs 10,12(3)
.LBE12448:
.LBE12453:
	.loc 6 431 0
	fmsubs 12,11,0,12
.LBB12454:
.LBB12449:
	.loc 5 212 0
	lfs 8,20(3)
	fadds 10,10,13
.LBE12449:
.LBE12454:
	.loc 6 431 0
	lfs 11,0(9)
.LBB12455:
.LBB12450:
	.loc 5 212 0
	lfs 13,8(3)
.LBE12450:
.LBE12455:
	.loc 4 4463 0
	lwz 0,4628(26)
	.loc 6 431 0
	fmsubs 11,10,0,11
.LBB12456:
.LBB12414:
.LBB12411:
.LBB12408:
	.loc 8 278 0
	lfs 9,.LC63@l(25)
.LBE12408:
.LBE12411:
.LBE12414:
.LBE12456:
.LBB12457:
.LBB12451:
	.loc 5 212 0
	fadds 8,8,13
.LBE12451:
.LBE12457:
	.loc 6 431 0
	lfs 13,8(9)
.LBB12458:
.LBB12415:
	.loc 6 649 0
	fmuls 10,12,12
.LBE12415:
.LBE12458:
	addis 9,1,0x1
	.loc 4 4463 0
	cmpwi 7,0,0
	.loc 6 431 0
	fmsubs 13,8,0,13
.LVL2656:
	.loc 6 649 0
	fmadds 10,11,11,10
	fmadds 8,13,13,10
	stfs 8,40(9)
.LVL2657:
.LBB12459:
.LBB12416:
.LBB12412:
.LBB12409:
	.loc 8 275 0
	fmuls 8,8,0
	.loc 8 270 0
	lwz 0,40(9)
.LVL2658:
	.loc 4 4435 0
	fneg 8,8
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
.LVL2659:
	lwzx 9,24,9
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	.loc 8 275 0
	addis 11,1,0x1
.LVL2660:
	.loc 8 276 0
	or 0,0,9
	.loc 8 277 0
	stw 0,44(11)
	lfs 0,44(11)
	fmr 10,0
.LVL2661:
	.loc 8 278 0
	fmul 0,10,10
.LVL2662:
	fmadd 0,8,0,9
	fmul 0,10,0
.LVL2663:
	.loc 8 279 0
	fmul 10,0,0
	fmadd 9,8,10,9
.LVL2664:
	fmul 0,0,9
.LVL2665:
	.loc 8 280 0
	frsp 0,0
.LVL2666:
.LBE12409:
.LBE12412:
	.loc 6 651 0
	fmuls 11,11,0
.LVL2667:
	.loc 6 652 0
	fmuls 12,12,0
.LVL2668:
	.loc 6 653 0
	fmuls 0,13,0
	.loc 6 651 0
	stfs 11,20(1)
	.loc 6 652 0
	stfs 12,24(1)
	.loc 6 653 0
	stfs 0,28(1)
.LBE12416:
.LBE12459:
	.loc 4 4463 0
	bne- 7,.L1440
.LVL2669:
.L1438:
	.loc 4 4466 0
	mr 3,19
	.loc 4 4446 0
	addi 30,30,1
	.loc 4 4466 0
	bl _ZNK8idEntity10GetPhysicsEv
.LBB12460:
.LBB12424:
	.loc 6 448 0
	lfs 0,.LC129@l(22)
	lfs 12,28(1)
.LBE12424:
.LBE12460:
	.loc 4 4466 0
	addi 4,1,8
.LBB12461:
.LBB12425:
	.loc 6 448 0
	lfs 13,24(1)
	fmuls 12,12,0
	lfs 11,20(1)
.LBE12425:
.LBE12461:
	.loc 4 4466 0
	lwz 11,0(3)
.LBB12462:
.LBB12426:
	.loc 6 448 0
	fmuls 13,13,0
	fmuls 0,11,0
.LBE12426:
.LBE12462:
	.loc 4 5138 0
	lwz 9,4(31)
.LBB12463:
.LBB12427:
.LBB12420:
.LBB12421:
	.loc 6 398 0
	stfs 12,16(1)
.LBE12421:
.LBE12420:
.LBE12427:
.LBE12463:
	.loc 4 4446 0
	addi 31,31,12
	.loc 4 4466 0
	lwz 0,140(11)
.LVL2670:
.LBB12464:
.LBB12428:
.LBB12423:
.LBB12422:
	.loc 6 396 0
	stfs 0,8(1)
	.loc 6 397 0
	stfs 13,12(1)
.LBE12422:
.LBE12423:
.LBE12428:
.LBE12464:
	.loc 4 4466 0
	mtctr 0
	lwz 5,8(9)
	bctrl
.LVL2671:
	.loc 4 4446 0
	cmpw 7,30,27
	bne+ 7,.L1439
	b .L1429
.LVL2672:
.L1440:
.LBB12465:
.LBB12430:
	.loc 16 340 0 discriminator 1
	lwz 9,0(19)
	mr 3,19
.LVL2673:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2674:
.LBE12430:
	.loc 4 5138 0 discriminator 1
	la 9,_ZN7idActor4TypeE@l(21)
	lwz 0,56(3)
.LBB12433:
.LBB12431:
.LBB12432:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1438
	.loc 16 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1438
.LVL2675:
.LBE12432:
.LBE12431:
.LBE12433:
.LBE12465:
	.loc 4 4464 0 is_stmt 1 discriminator 4
	lwz 9,0(19)
	mr 3,19
.LVL2676:
	mr 4,26
	mr 5,26
	lwz 0,164(9)
	addi 6,1,20
	lwz 7,4632(26)
	li 8,-1
	lfs 1,.LC0@l(20)
	mtctr 0
	.loc 4 4446 0 discriminator 4
	addi 30,30,1
	addi 31,31,12
	.loc 4 4464 0 discriminator 4
	bctrl
.LVL2677:
	.loc 4 4446 0 discriminator 4
	cmpw 7,30,27
	bne+ 7,.L1439
	b .L1429
.LBE12470:
	.cfi_endproc
.LFE2963:
	.size	_ZN4idAI10PushWithAFEv, .-_ZN4idAI10PushWithAFEv
	.align 2
	.globl _ZN4idAI9GetMuzzleEPKcR6idVec3R6idMat3
	.type	_ZN4idAI9GetMuzzleEPKcR6idVec3R6idMat3, @function
_ZN4idAI9GetMuzzleEPKcR6idVec3R6idMat3:
.LFB2964:
	.loc 4 4483 0
	.cfi_startproc
.LVL2678:
	stwu 1,-32(1)
.LCFI336:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
.LBB12490:
	.loc 4 4486 0
	mr. 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBE12490:
	.loc 4 4483 0
	stw 28,16(1)
	mr 28,6
	.cfi_offset 28, -16
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,5
	.cfi_offset 31, -4
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
.LBB12532:
	.loc 4 4486 0
	beq- 0,.L1444
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 4 4486 0 is_stmt 0 discriminator 1
	lbz 0,0(29)
	cmpwi 7,0,0
	bne- 7,.L1445
.L1444:
	.loc 4 4487 0 is_stmt 1
	addi 29,30,4216
	li 4,0
.LVL2679:
	mr 3,29
.LVL2680:
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL2681:
	mr 28,3
.LVL2682:
	mr 3,29
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL2683:
.LBB12491:
.LBB12492:
.LBB12493:
	.loc 13 454 0
	lfs 0,2272(30)
	lfs 12,12(3)
	.loc 6 452 0
	lis 9,.LC130@ha
	.loc 13 454 0
	lfs 10,16(3)
	lfs 11,20(3)
	fmuls 10,0,10
	lfs 8,4(3)
	fmuls 11,0,11
	lfs 9,8(3)
	fmuls 0,0,12
.LBE12493:
.LBE12492:
.LBE12491:
.LBB12502:
.LBB12503:
	lfs 13,0(3)
.LBE12503:
.LBE12502:
.LBB12508:
.LBB12498:
.LBB12494:
	lfs 12,2268(30)
	fmadds 10,12,8,10
	lfs 8,28(3)
	fmadds 11,12,9,11
	lfs 9,32(3)
.LBE12494:
.LBE12498:
.LBE12508:
.LBB12509:
.LBB12504:
	fmadds 12,13,12,0
.LBE12504:
.LBE12509:
.LBB12510:
.LBB12499:
.LBB12495:
	lfs 13,2276(30)
.LVL2684:
.LBE12495:
.LBE12499:
.LBE12510:
.LBB12511:
.LBB12505:
	lfs 0,24(3)
.LBE12505:
.LBE12511:
	.loc 4 4488 0
	mr 3,29
.LVL2685:
.LBB12512:
.LBB12500:
.LBB12496:
	.loc 13 454 0
	fmadds 10,13,8,10
	.loc 6 452 0
	lfs 8,4(28)
	.loc 13 454 0
	fmadds 11,13,9,11
.LBE12496:
.LBE12500:
.LBE12512:
.LBB12513:
.LBB12506:
	.loc 6 452 0
	lfs 9,0(28)
	.loc 13 454 0
	fmadds 13,0,13,12
.LBE12506:
.LBE12513:
.LBB12514:
.LBB12501:
.LBB12497:
	.loc 6 452 0
	lfs 12,8(28)
	lfs 0,.LC130@l(9)
	fmadds 10,10,0,8
	fmadds 11,11,0,12
.LVL2686:
.LBE12497:
.LBE12501:
.LBE12514:
.LBB12515:
.LBB12507:
	fmadds 0,13,0,9
	.loc 6 425 0
	stfs 10,4(31)
	.loc 6 426 0
	stfs 11,8(31)
	.loc 6 424 0
	stfs 0,0(31)
.LBE12507:
.LBE12515:
	.loc 4 4488 0
	bl _ZNK14idPhysics_Base16GetGravityNormalEv
.LVL2687:
	li 4,-1
	mr 30,3
.LVL2688:
	mr 3,29
	bl _ZNK15idPhysics_Actor9GetBoundsEi
.LVL2689:
.LBB12516:
.LBB12517:
	.loc 6 439 0
	lfs 11,0(30)
.LBE12517:
.LBE12516:
	.loc 4 4488 0
	lfs 13,20(3)
.LVL2690:
.LBB12521:
.LBB12522:
	.loc 6 481 0
	lis 9,.LC15@ha
.LBE12522:
.LBE12521:
.LBB12526:
.LBB12518:
	.loc 6 439 0
	lfs 12,4(30)
	lfs 10,8(30)
	fmuls 12,13,12
.LBE12518:
.LBE12526:
.LBB12527:
.LBB12523:
	.loc 6 481 0
	lfs 8,0(31)
.LBE12523:
.LBE12527:
.LBB12528:
.LBB12519:
	.loc 6 439 0
	fmuls 10,13,10
.LVL2691:
.LBE12519:
.LBE12528:
.LBB12529:
.LBB12524:
	.loc 6 482 0
	lfs 9,4(31)
.LBE12524:
.LBE12529:
.LBB12530:
.LBB12520:
	.loc 6 439 0
	fmuls 13,13,11
.LBE12520:
.LBE12530:
.LBB12531:
.LBB12525:
	.loc 6 481 0
	lfs 0,.LC15@l(9)
	.loc 4 4483 0
	fneg 12,12
.LVL2692:
	.loc 6 483 0
	lfs 11,8(31)
	.loc 4 4483 0
	fneg 10,10
.LVL2693:
	fneg 13,13
	.loc 6 482 0
	fmadds 12,12,0,9
	.loc 6 481 0
	fmadds 13,13,0,8
	.loc 6 483 0
	fmadds 0,10,0,11
	.loc 6 482 0
	stfs 12,4(31)
	.loc 6 481 0
	stfs 13,0(31)
	.loc 6 483 0
	stfs 0,8(31)
.LBE12525:
.LBE12531:
.LBE12532:
	.loc 4 4496 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
.LVL2694:
	lwz 29,20(1)
.LVL2695:
	lwz 30,24(1)
.LVL2696:
	lwz 31,28(1)
.LVL2697:
	addi 1,1,32
	.cfi_remember_state
.LCFI337:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL2698:
.L1445:
.LCFI338:
	.cfi_restore_state
.LBB12533:
	.loc 4 4490 0
	addi 3,3,636
.LVL2699:
	bl _ZNK10idAnimator14GetJointHandleEPKc
.LVL2700:
	.loc 4 4491 0
	cmpwi 7,3,-1
	.loc 4 4490 0
	mr 27,3
.LVL2701:
	.loc 4 4491 0
	beq- 7,.L1449
	lis 26,gameLocal@ha
	la 26,gameLocal@l(26)
.LVL2702:
.L1447:
	.loc 4 4494 0
	addis 26,26,0x25
	mr 3,30
	lwz 5,2004(26)
	mr 4,27
	mr 6,31
	mr 7,28
	bl _ZN16idAnimatedEntity22GetJointWorldTransformE13jointHandle_tiR6idVec3R6idMat3
.LBE12533:
	.loc 4 4496 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL2703:
	lwz 28,16(1)
.LVL2704:
	lwz 29,20(1)
.LVL2705:
	lwz 30,24(1)
.LVL2706:
	lwz 31,28(1)
.LVL2707:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI339:
	.cfi_def_cfa_offset 0
	blr
.LVL2708:
.L1449:
.LCFI340:
	.cfi_restore_state
.LBB12534:
	.loc 4 4492 0
	mr 3,30
.LVL2709:
	lis 26,gameLocal@ha
	bl _ZNK8idEntity16GetEntityDefNameEv
	la 26,gameLocal@l(26)
	lis 4,.LC131@ha
	mr 6,3
	la 4,.LC131@l(4)
	mr 3,26
	mr 5,29
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L1447
.LBE12534:
	.cfi_endproc
.LFE2964:
	.size	_ZN4idAI9GetMuzzleEPKcR6idVec3R6idMat3, .-_ZN4idAI9GetMuzzleEPKcR6idVec3R6idMat3
	.align 2
	.globl _ZN4idAI20TriggerWeaponEffectsERK6idVec3
	.type	_ZN4idAI20TriggerWeaponEffectsERK6idVec3, @function
_ZN4idAI20TriggerWeaponEffectsERK6idVec3:
.LFB2965:
	.loc 4 4503 0
	.cfi_startproc
.LVL2710:
	mflr 0
	stwu 1,-104(1)
.LCFI341:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
.LBB12535:
.LBB12536:
.LBB12537:
	.loc 4 4507 0
	lis 9,g_muzzleFlash+44@ha
.LBE12537:
.LBE12536:
.LBE12535:
	.loc 4 4503 0
	stw 31,92(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,108(1)
	stfd 31,96(1)
	stw 29,84(1)
	stw 30,88(1)
.LBB12592:
.LBB12539:
.LBB12538:
	.loc 20 142 0
	lwz 9,g_muzzleFlash+44@l(9)
.LBE12538:
.LBE12539:
	.loc 4 4507 0
	lwz 0,36(9)
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1450
	.loc 4 4513 0
	lis 9,gameLocal@ha
	lis 0,0x4330
	la 9,gameLocal@l(9)
	lis 29,.LC65@ha
	addis 30,9,0x25
	lfs 0,.LC65@l(29)
	lwz 11,2004(30)
.LBB12540:
.LBB12541:
.LBB12542:
.LBB12543:
.LBB12544:
.LBB12545:
	.loc 19 71 0
	addis 9,9,0x1
.LBE12545:
.LBE12544:
.LBE12543:
.LBE12542:
.LBE12541:
.LBE12540:
	.loc 4 4513 0
	stw 0,56(1)
	xoris 11,11,0x8000
.LBB12574:
.LBB12568:
.LBB12561:
.LBB12554:
	.loc 19 83 0
	stw 0,64(1)
.LBE12554:
.LBE12561:
.LBE12568:
.LBE12574:
	.loc 4 4513 0
	stw 11,60(1)
	lis 11,_ZN6idMath8M_MS2SECE@ha
	lfs 31,_ZN6idMath8M_MS2SECE@l(11)
.LBB12575:
.LBB12569:
.LBB12562:
.LBB12555:
.LBB12550:
.LBB12546:
	.loc 19 71 0
	lis 11,0x1
.LBE12546:
.LBE12550:
.LBE12555:
.LBE12562:
.LBE12569:
.LBE12575:
	.loc 4 4513 0
	lfd 13,56(1)
.LBB12576:
.LBB12570:
.LBB12563:
.LBB12556:
.LBB12551:
.LBB12547:
	.loc 19 71 0
	ori 11,11,3533
.LBE12547:
.LBE12551:
.LBE12556:
.LBE12563:
.LBE12570:
.LBE12576:
	.loc 4 4513 0
	fsub 13,13,0
	frsp 13,13
	fmuls 13,13,31
	fneg 13,13
	stfs 13,336(3)
.LVL2711:
.LBB12577:
.LBB12571:
.LBB12564:
.LBB12557:
.LBB12552:
.LBB12548:
	.loc 19 71 0
	lwz 10,-32064(9)
	mullw 11,11,10
	addi 0,11,1
	.loc 19 72 0
	rlwinm 11,0,0,17,31
.LBE12548:
.LBE12552:
	.loc 19 83 0
	xoris 11,11,0x8000
	stw 11,68(1)
.LBB12553:
.LBB12549:
	.loc 19 71 0
	stw 0,-32064(9)
.LBE12549:
.LBE12553:
.LBE12557:
.LBE12564:
	.loc 19 87 0
	lis 9,.LC15@ha
.LBB12565:
.LBB12558:
	.loc 19 83 0
	lfd 13,64(1)
.LBE12558:
.LBE12565:
.LBE12571:
.LBE12577:
	.loc 4 4516 0
	lwz 4,5076(3)
.LVL2712:
.LBB12578:
.LBB12572:
.LBB12566:
.LBB12559:
	.loc 19 83 0
	fsub 0,13,0
.LBE12559:
.LBE12566:
	.loc 19 87 0
	lfs 13,.LC15@l(9)
	lis 9,.LC66@ha
.LBE12572:
.LBE12578:
	.loc 4 4516 0
	cmpwi 7,4,-1
.LBB12579:
.LBB12573:
	.loc 19 87 0
	lfs 12,.LC66@l(9)
.LBB12567:
.LBB12560:
	.loc 19 83 0
	frsp 0,0
.LBE12560:
.LBE12567:
	.loc 19 87 0
	fmsubs 0,0,12,13
	fadds 0,0,0
.LBE12573:
.LBE12579:
	.loc 4 4514 0
	stfs 0,340(3)
	.loc 4 4516 0
	beq- 7,.L1450
	.loc 4 4517 0
	lwz 5,2004(30)
	addi 6,1,8
	addi 7,1,20
	bl _ZN16idAnimatedEntity22GetJointWorldTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL2713:
	.loc 4 4519 0
	lis 9,.LC6@ha
	lfs 13,4924(31)
.LBB12580:
.LBB12581:
	.loc 13 333 0
	addi 5,31,4864
.LBE12581:
.LBE12580:
	.loc 4 4519 0
	lfs 0,.LC6@l(9)
.LBB12590:
.LBB12588:
	.loc 13 333 0
	li 10,0
.LBE12588:
.LBE12590:
	.loc 4 4519 0
	fcmpu 7,13,0
	bng- 7,.L1450
.L1457:
.LBB12591:
.LBB12589:
.LBB12582:
.LBB12583:
	.loc 6 424 0
	addi 11,1,20
.LBE12583:
.LBE12582:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB12586:
.LBB12584:
	.loc 6 424 0
	lwzux 0,11,10
	mr 9,5
	stwux 0,9,10
.LBE12584:
.LBE12586:
	.loc 13 333 0
	addi 10,10,12
.LBB12587:
.LBB12585:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE12585:
.LBE12587:
	.loc 13 333 0
	bne+ 7,.L1457
.LBE12589:
.LBE12591:
	.loc 4 4521 0
	lwz 0,2004(30)
	.loc 4 4523 0
	lis 9,gameRenderWorld@ha
	.loc 4 4521 0
	lfs 0,.LC65@l(29)
	xoris 0,0,0x8000
	.loc 4 4523 0
	lwz 3,gameRenderWorld@l(9)
	.loc 4 4521 0
	stw 0,76(1)
	lis 0,0x4330
	stw 0,72(1)
	lfd 13,72(1)
	.loc 4 4522 0
	lwz 4,5072(31)
	.loc 4 4521 0
	fsub 0,13,0
	.loc 4 4522 0
	cmpwi 7,4,-1
	.loc 4 4521 0
	frsp 0,0
	fmuls 31,31,0
	fneg 31,31
	stfs 31,5036(31)
	.loc 4 4522 0
	beq- 7,.L1454
	.loc 4 4523 0
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
.L1455:
	.loc 4 4527 0
	lwz 9,2004(30)
	.loc 4 4528 0
	mr 3,31
	.loc 4 4527 0
	lwz 0,5084(31)
	add 0,9,0
	stw 0,5080(31)
	.loc 4 4528 0
	bl _ZN8idEntity13UpdateVisualsEv
.LVL2714:
.L1450:
.LBE12592:
	.loc 4 4531 0
	lwz 0,108(1)
	lwz 29,84(1)
	mtlr 0
	lwz 30,88(1)
	lwz 31,92(1)
.LVL2715:
	lfd 31,96(1)
	addi 1,1,104
	.cfi_remember_state
.LCFI342:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2716:
.L1454:
.LCFI343:
	.cfi_restore_state
.LBB12593:
	.loc 4 4525 0
	lwz 9,0(3)
	mr 4,5
	lwz 0,32(9)
	mtctr 0
	bctrl
	stw 3,5072(31)
	b .L1455
.LBE12593:
	.cfi_endproc
.LFE2965:
	.size	_ZN4idAI20TriggerWeaponEffectsERK6idVec3, .-_ZN4idAI20TriggerWeaponEffectsERK6idVec3
	.align 2
	.globl _ZN4idAI16LaunchProjectileEPKcP8idEntityb
	.type	_ZN4idAI16LaunchProjectileEPKcP8idEntityb, @function
_ZN4idAI16LaunchProjectileEPKcP8idEntityb:
.LFB2958:
	.loc 4 4107 0
	.cfi_startproc
.LVL2717:
	mflr 0
	stwu 1,-536(1)
.LCFI344:
	.cfi_def_cfa_offset 536
	.cfi_register 65, 0
	stw 25,420(1)
	mr 25,6
	.cfi_offset 25, -116
	stw 26,424(1)
	mr 26,5
	.cfi_offset 26, -112
	stw 30,440(1)
	mr 30,4
	.cfi_offset 30, -96
	stw 31,444(1)
	mr 31,3
	.cfi_offset 31, -92
	stw 0,540(1)
	stfd 21,448(1)
	stfd 22,456(1)
	stfd 23,464(1)
	stfd 24,472(1)
	stfd 25,480(1)
	stfd 26,488(1)
	stfd 27,496(1)
	stfd 28,504(1)
	stfd 29,512(1)
	stfd 30,520(1)
	stfd 31,528(1)
	stw 18,392(1)
	stw 19,396(1)
	stw 20,400(1)
	stw 21,404(1)
	stw 22,408(1)
	stw 23,412(1)
	stw 24,416(1)
	stw 27,428(1)
	stw 28,432(1)
	stw 29,436(1)
.LBB12806:
	.loc 4 4128 0
	lwz 0,4584(3)
	.cfi_offset 29, -100
	.cfi_offset 28, -104
	.cfi_offset 27, -108
	.cfi_offset 24, -120
	.cfi_offset 23, -124
	.cfi_offset 22, -128
	.cfi_offset 21, -132
	.cfi_offset 20, -136
	.cfi_offset 19, -140
	.cfi_offset 18, -144
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
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L1544
	.loc 4 4133 0
	addi 29,3,100
.LVL2718:
.LBB12807:
.LBB12808:
.LBB12809:
.LBB12810:
	.loc 11 241 0
	lis 4,.LC136@ha
.LVL2719:
	mr 3,29
.LVL2720:
	la 4,.LC136@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2721:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1515
.LVL2722:
.LBB12811:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2723:
.L1462:
.LBE12811:
.LBE12810:
.LBE12809:
	.loc 11 249 0
	bl atof
.LBE12808:
.LBE12807:
.LBB12816:
.LBB12817:
.LBB12818:
.LBB12819:
	.loc 11 241 0
	lis 4,.LC137@ha
	mr 3,29
	la 4,.LC137@l(4)
.LBE12819:
.LBE12818:
.LBE12817:
.LBE12816:
.LBB12830:
.LBB12814:
	.loc 11 249 0
	frsp 26,1
.LVL2724:
.LBE12814:
.LBE12830:
.LBB12831:
.LBB12825:
.LBB12823:
.LBB12821:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2725:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1516
.LVL2726:
.LBB12820:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2727:
.LBE12820:
.LBE12821:
.LBE12823:
	.loc 11 249 0
	bl atof
.LVL2728:
.LBE12825:
.LBE12831:
.LBB12832:
.LBB12833:
.LBB12834:
.LBB12835:
	.loc 11 241 0
	lis 4,.LC138@ha
	mr 3,29
	la 4,.LC138@l(4)
.LBE12835:
.LBE12834:
.LBE12833:
.LBE12832:
.LBB12847:
.LBB12826:
	.loc 11 249 0
	fmr 21,1
.LVL2729:
.LBE12826:
.LBE12847:
.LBB12848:
.LBB12843:
.LBB12840:
.LBB12837:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2730:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1517
.L1551:
.LVL2731:
.LBB12836:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2732:
.L1464:
.LBE12836:
.LBE12837:
.LBE12840:
	.loc 11 249 0
	bl atof
.LBE12843:
.LBE12848:
.LBB12849:
.LBB12850:
.LBB12851:
.LBB12852:
	.loc 11 241 0
	lis 4,.LC139@ha
	mr 3,29
	la 4,.LC139@l(4)
.LBE12852:
.LBE12851:
.LBE12850:
.LBE12849:
.LBB12861:
.LBB12844:
	.loc 11 249 0
	frsp 28,1
.LVL2733:
.LBE12844:
.LBE12861:
.LBB12862:
.LBB12858:
.LBB12856:
.LBB12854:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2734:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1518
.LVL2735:
.LBB12853:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2736:
.L1465:
.LBE12853:
.LBE12854:
.LBE12856:
	.loc 11 253 0
	bl atoi
.LBE12858:
.LBE12862:
	.loc 4 4138 0
	mr 4,30
.LBB12863:
.LBB12859:
	.loc 11 253 0
	mr 28,3
.LVL2737:
.LBE12859:
.LBE12863:
	.loc 4 4138 0
	addi 5,1,72
	mr 3,31
.LVL2738:
	addi 6,1,204
	bl _ZN4idAI9GetMuzzleEPKcR6idVec3R6idMat3
.LVL2739:
.LBB12864:
.LBB12865:
	.loc 7 634 0
	lwz 0,4624(31)
	.loc 7 635 0
	lis 29,gameLocal@ha
.LVL2740:
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL2741:
	.loc 7 635 0
	la 29,gameLocal@l(29)
	addi 11,9,4228
	srawi 0,0,12
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1545
.LVL2742:
.L1466:
.LBE12865:
.LBE12864:
	.loc 4 4141 0
	mr 3,31
	addi 4,1,72
	addi 5,1,204
.LVL2743:
.LBB12867:
.LBB12868:
	.loc 7 638 0
	li 30,0
.LVL2744:
.LBE12868:
.LBE12867:
	.loc 4 4141 0
	bl _ZN4idAI16CreateProjectileERK6idVec3S2_
.LVL2745:
	lwz 0,4624(31)
	rlwinm 9,0,0,20,31
.LVL2746:
.LBB12871:
.LBB12869:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1546
.LVL2747:
.L1468:
.LBE12869:
.LBE12871:
	.loc 4 4146 0
	cmpwi 7,26,0
	beq- 7,.L1469
	.loc 4 4147 0
	mr 3,26
.LBB12872:
.LBB12873:
.LBB12874:
.LBB12875:
	.loc 8 276 0
	lis 22,_ZN6idMath5iSqrtE@ha
.LBE12875:
.LBE12874:
.LBE12873:
.LBE12872:
	.loc 4 4147 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
.LBB12889:
.LBB12884:
.LBB12880:
.LBB12876:
	.loc 8 276 0
	la 22,_ZN6idMath5iSqrtE@l(22)
.LBE12876:
.LBE12880:
.LBE12884:
.LBE12889:
	.loc 4 4147 0
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL2748:
	.loc 6 431 0
	lis 9,.LC15@ha
.LBB12890:
.LBB12891:
	.loc 5 212 0
	lfs 0,4(3)
.LBE12891:
.LBE12890:
.LBB12898:
.LBB12885:
.LBB12881:
.LBB12877:
	.loc 8 278 0
	lis 11,.LC63@ha
.LBE12877:
.LBE12881:
.LBE12885:
.LBE12898:
.LBB12899:
.LBB12892:
	.loc 5 212 0
	lfs 12,16(3)
.LBE12892:
.LBE12899:
	.loc 4 4149 0
	addi 4,1,24
.LBB12900:
.LBB12893:
	.loc 5 212 0
	lfs 13,0(3)
	lfs 10,12(3)
	fadds 12,12,0
.LBE12893:
.LBE12900:
	.loc 6 431 0
	lfs 0,.LC15@l(9)
.LBB12901:
.LBB12894:
	.loc 5 212 0
	fadds 10,10,13
.LBE12894:
.LBE12901:
	.loc 6 431 0
	lfs 13,76(1)
.LBB12902:
.LBB12895:
	.loc 5 212 0
	lfs 9,20(3)
.LBE12895:
.LBE12902:
	.loc 6 431 0
	fmsubs 12,12,0,13
	lfs 11,72(1)
.LBB12903:
.LBB12896:
	.loc 5 212 0
	lfs 13,8(3)
.LBE12896:
.LBE12903:
	.loc 4 4149 0
	addi 3,1,168
.LVL2749:
	.loc 6 431 0
	fmsubs 11,10,0,11
.LBB12904:
.LBB12897:
	.loc 5 212 0
	fadds 9,9,13
.LVL2750:
.LBE12897:
.LBE12904:
	.loc 6 431 0
	lfs 13,80(1)
.LBB12905:
.LBB12886:
	.loc 6 649 0
	fmuls 10,12,12
.LBE12886:
.LBE12905:
	.loc 6 431 0
	fmsubs 13,9,0,13
.LVL2751:
.LBB12906:
.LBB12887:
.LBB12882:
.LBB12878:
	.loc 8 278 0
	lfs 9,.LC63@l(11)
.LBE12878:
.LBE12882:
.LBE12887:
.LBE12906:
	.loc 6 649 0
	fmadds 10,11,11,10
	fmadds 10,13,13,10
	stfs 10,384(1)
.LVL2752:
.LBB12907:
.LBB12888:
.LBB12883:
.LBB12879:
	.loc 8 275 0
	fmuls 8,10,0
	.loc 8 270 0
	lwz 0,384(1)
.LVL2753:
	.loc 4 4107 0
	fneg 8,8
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	lwzx 9,22,9
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 277 0
	stw 0,388(1)
	lfs 0,388(1)
	fmr 10,0
.LVL2754:
	.loc 8 278 0
	fmul 0,10,10
.LVL2755:
	fmadd 0,8,0,9
	fmul 0,10,0
.LVL2756:
	.loc 8 279 0
	fmul 10,0,0
	fmadd 9,8,10,9
.LVL2757:
	fmul 0,0,9
.LVL2758:
	.loc 8 280 0
	frsp 0,0
.LVL2759:
.LBE12879:
.LBE12883:
	.loc 6 651 0
	fmuls 11,11,0
.LVL2760:
	.loc 6 652 0
	fmuls 12,12,0
.LVL2761:
	.loc 6 653 0
	fmuls 0,13,0
	.loc 6 651 0
	stfs 11,24(1)
	.loc 6 652 0
	stfs 12,28(1)
	.loc 6 653 0
	stfs 0,32(1)
.LBE12888:
.LBE12907:
	.loc 4 4149 0
	bl _ZNK6idVec36ToMat3Ev
.LVL2762:
	li 10,0
.L1470:
.LBB12908:
.LBB12909:
.LBB12910:
.LBB12911:
	.loc 6 424 0
	addi 11,1,168
.LVL2763:
	addi 9,1,204
.LVL2764:
	lwzux 0,11,10
.LVL2765:
.LBE12911:
.LBE12910:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB12914:
.LBB12912:
	.loc 6 424 0
	stwux 0,9,10
.LVL2766:
.LBE12912:
.LBE12914:
	.loc 13 333 0
	addi 10,10,12
.LBB12915:
.LBB12913:
	.loc 6 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 6 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE12913:
.LBE12915:
	.loc 13 333 0
	bne+ 7,.L1470
.LVL2767:
.L1471:
.LBE12909:
.LBE12908:
.LBB12916:
.LBB12917:
	.loc 6 424 0
	lwz 0,204(1)
.LBE12917:
.LBE12916:
	.loc 4 4160 0
	li 4,-1
.LBB12922:
.LBB12923:
	.loc 6 424 0
	lfs 12,228(1)
.LBE12923:
.LBE12922:
	.loc 4 4160 0
	addi 3,31,4216
.LBB12928:
.LBB12924:
	.loc 6 425 0
	lfs 13,232(1)
.LBE12924:
.LBE12928:
.LBB12929:
.LBB12930:
	.loc 5 344 0
	lis 27,vec3_origin@ha
.LBE12930:
.LBE12929:
.LBB12934:
.LBB12925:
	.loc 6 426 0
	lfs 0,236(1)
.LBE12925:
.LBE12934:
.LBB12935:
.LBB12936:
	.loc 6 420 0
	fneg 9,12
.LBE12936:
.LBE12935:
.LBB12939:
.LBB12918:
	.loc 6 424 0
	stw 0,228(1)
.LBE12918:
.LBE12939:
.LBB12940:
.LBB12937:
	.loc 6 420 0
	fneg 10,13
.LBE12937:
.LBE12940:
.LBB12941:
.LBB12919:
	.loc 6 425 0
	lwz 0,208(1)
.LBE12919:
.LBE12941:
.LBB12942:
.LBB12938:
	.loc 6 420 0
	fneg 11,0
.LBE12938:
.LBE12942:
.LBB12943:
.LBB12926:
	.loc 6 424 0
	stfs 12,24(1)
.LBE12926:
.LBE12943:
.LBB12944:
.LBB12931:
	.loc 5 344 0
	la 27,vec3_origin@l(27)
.LBE12931:
.LBE12944:
.LBB12945:
.LBB12920:
	.loc 6 425 0
	stw 0,232(1)
	.loc 6 426 0
	lwz 0,212(1)
.LBE12920:
.LBE12945:
.LBB12946:
.LBB12927:
	.loc 6 425 0
	stfs 13,28(1)
	.loc 6 426 0
	stfs 0,32(1)
.LVL2768:
.LBE12927:
.LBE12946:
.LBB12947:
.LBB12948:
	.loc 6 425 0
	stfs 10,208(1)
	.loc 6 426 0
	stfs 11,212(1)
	.loc 6 424 0
	stfs 9,204(1)
.LBE12948:
.LBE12947:
.LBB12949:
.LBB12921:
	.loc 6 426 0
	stw 0,236(1)
.LVL2769:
.LBE12921:
.LBE12949:
	.loc 4 4160 0
	bl _ZNK15idPhysics_Actor12GetAbsBoundsEi
.LVL2770:
	mr 23,3
.LVL2771:
	.loc 4 4161 0
	mr 3,30
.LVL2772:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
.LBB12950:
.LBB12932:
	.loc 5 344 0
	mr 5,27
.LBE12932:
.LBE12950:
	.loc 4 4161 0
	mr 24,3
.LVL2773:
.LBB12951:
.LBB12933:
	.loc 5 344 0
	addi 6,1,204
.LVL2774:
	addi 3,1,108
.LVL2775:
	addi 4,24,64
	bl _ZN8idBounds21FromTransformedBoundsERKS_RK6idVec3RK6idMat3
.LVL2776:
.LBE12933:
.LBE12951:
.LBB12952:
.LBB12953:
.LBB12954:
	.loc 6 424 0
	lfs 8,108(1)
	lfs 7,120(1)
.LBE12954:
.LBE12953:
.LBE12952:
.LBB12959:
.LBB12960:
	.loc 6 402 0
	lfs 12,12(23)
.LBE12960:
.LBE12959:
.LBB12961:
.LBB12962:
	lfs 13,0(23)
.LBE12962:
.LBE12961:
	.loc 4 4165 0
	fsubs 0,7,8
.LBB12963:
.LBB12957:
.LBB12955:
	.loc 6 425 0
	lfs 6,112(1)
.LBE12955:
.LBE12957:
.LBE12963:
	.loc 4 4165 0
	fsubs 11,12,13
.LBB12964:
.LBB12958:
.LBB12956:
	.loc 6 426 0
	lfs 4,116(1)
.LVL2777:
	.loc 6 425 0
	lfs 5,124(1)
	.loc 6 426 0
	lfs 3,128(1)
.LVL2778:
.LBE12956:
.LBE12958:
.LBE12964:
	.loc 4 4165 0
	fcmpu 7,11,0
.LBB12965:
.LBB12966:
	.loc 6 402 0
	lfs 10,4(23)
.LBE12966:
.LBE12965:
.LBB12967:
.LBB12968:
	lfs 11,16(23)
.LVL2779:
.LBE12968:
.LBE12967:
	.loc 4 4165 0
	bgt- 7,.L1547
	.loc 4 4224 0
	lfs 0,20(23)
	lfs 9,8(23)
.L1476:
.LVL2780:
.LBB12969:
.LBB12970:
	.loc 5 212 0
	fadds 9,9,0
.LVL2781:
	lis 9,.LC15@ha
	fadds 13,12,13
	lfs 0,.LC15@l(9)
	fadds 11,10,11
	fmuls 13,13,0
	fmuls 11,11,0
	fmuls 0,9,0
.LVL2782:
.LBE12970:
.LBE12969:
.LBB12971:
.LBB12972:
	.loc 6 424 0
	stfs 13,48(1)
	.loc 6 425 0
	stfs 11,52(1)
	.loc 6 426 0
	stfs 0,56(1)
.LVL2783:
.L1479:
.LBE12972:
.LBE12971:
	.loc 4 4178 0
	lis 3,gameLocal+2311032@ha
	li 9,2049
	addi 8,1,204
.LVL2784:
	mr 10,31
	addi 4,1,240
	addi 5,1,48
	addi 6,1,72
	mr 7,24
	la 3,gameLocal+2311032@l(3)
	.loc 4 4186 0
	addis 18,29,0x25
	.loc 4 4178 0
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LVL2785:
.LBB12973:
.LBB12974:
	.loc 6 424 0
	lwz 0,244(1)
.LBE12974:
.LBE12973:
	.loc 4 4182 0
	addi 4,1,72
.LVL2786:
	mr 5,26
.LBB12978:
.LBB12975:
	.loc 6 424 0
	stw 0,72(1)
.LBE12975:
.LBE12978:
	.loc 4 4182 0
	mr 6,31
.LBB12979:
.LBB12976:
	.loc 6 425 0
	lwz 0,248(1)
.LBE12976:
.LBE12979:
	.loc 4 4182 0
	addi 7,1,60
	mr 3,31
.LBB12980:
.LBB12977:
	.loc 6 425 0
	stw 0,76(1)
	.loc 6 426 0
	lwz 0,252(1)
	stw 0,80(1)
.LBE12977:
.LBE12980:
	.loc 4 4182 0
	bl _ZNK4idAI9GetAimDirERK6idVec3P8idEntityPKS3_RS0_
.LVL2787:
	.loc 4 4183 0
	addi 3,1,12
	addi 4,1,60
	bl _ZNK6idVec38ToAnglesEv
.LVL2788:
	.loc 4 4186 0
	lwz 0,4(31)
	lwz 9,2004(18)
	mulli 0,0,497
.LBB12981:
.LBB12982:
	.loc 12 146 0
	lfs 22,12(1)
	.loc 12 147 0
	lfs 23,16(1)
.LBE12982:
.LBE12981:
	.loc 4 4186 0
	add 0,0,9
	lis 9,.LC65@ha
	xoris 0,0,0x8000
	lfs 0,.LC65@l(9)
	stw 0,364(1)
	lis 0,0x4330
	stw 0,360(1)
	lis 9,_ZN6idMath8M_MS2SECE@ha
.LBB12985:
.LBB12983:
	.loc 12 148 0
	lwz 0,20(1)
.LBE12983:
.LBE12985:
	.loc 4 4186 0
	lfd 24,360(1)
.LBB12986:
.LBB12984:
	.loc 12 148 0
	stw 0,44(1)
.LVL2789:
.LBE12984:
.LBE12986:
	.loc 4 4186 0
	fsub 24,24,0
	lfs 0,_ZN6idMath8M_MS2SECE@l(9)
	.loc 4 4187 0
	lis 9,.LC140@ha
	lfd 30,.LC140@l(9)
.LBB12987:
.LBB12988:
	.loc 8 317 0
	lis 9,.LC6@ha
.LBE12988:
.LBE12987:
	.loc 4 4186 0
	frsp 24,24
	fmuls 24,24,0
.LBB12997:
.LBB12989:
	.loc 8 317 0
	lfs 0,.LC6@l(9)
	lis 9,_ZN6idMath6TWO_PIE@ha
	lfs 29,_ZN6idMath6TWO_PIE@l(9)
.LBE12989:
.LBE12997:
	.loc 4 4187 0
	fmul 30,24,30
	frsp 30,30
.LVL2790:
.LBB12998:
.LBB12990:
	.loc 8 317 0
	fcmpu 7,30,0
	blt- 7,.L1482
	fcmpu 7,30,29
	cror 30,29,30
	bne- 7,.L1483
.L1482:
	.loc 8 318 0
	fdivs 1,30,29
	bl floorf
.LVL2791:
	.loc 4 4107 0
	fneg 1,1
	.loc 8 318 0
	fmadds 30,1,29,30
.LVL2792:
.L1483:
	.loc 8 321 0
	lis 9,_ZN6idMath2PIE@ha
	lfs 27,_ZN6idMath2PIE@l(9)
	.loc 8 322 0
	lis 9,_ZN6idMath7HALF_PIE@ha
	lfs 25,_ZN6idMath7HALF_PIE@l(9)
	.loc 8 321 0
	fcmpu 7,27,30
	bng- 7,.L1539
	.loc 8 322 0
	fcmpu 7,30,25
	bgt- 7,.L1540
.L1487:
	.loc 8 338 0
	fmuls 0,30,30
.LVL2793:
	.loc 8 339 0
	lis 20,.LC102@ha
	lis 21,.LC103@ha
	lfs 12,.LC102@l(20)
	lfs 13,.LC103@l(21)
	lis 22,.LC104@ha
	lis 23,.LC105@ha
.LVL2794:
	lis 24,.LC106@ha
.LVL2795:
	fmadds 12,0,12,13
	lfs 13,.LC104@l(22)
.LBE12990:
.LBE12998:
	.loc 4 4188 0
	lis 9,.LC141@ha
.LBB12999:
.LBB12991:
	.loc 8 339 0
	lis 26,.LC0@ha
.LVL2796:
.LBE12991:
.LBE12999:
	.loc 4 4188 0
	lfd 31,.LC141@l(9)
.LBB13000:
.LBB13001:
	.loc 8 317 0
	lis 9,.LC6@ha
.LBE13001:
.LBE13000:
.LBB13007:
.LBB12992:
	.loc 8 339 0
	fmsubs 12,0,12,13
	lfs 13,.LC105@l(23)
.LBE12992:
.LBE13007:
	.loc 4 4188 0
	fmul 31,24,31
.LBB13008:
.LBB12993:
	.loc 8 339 0
	fmadds 12,0,12,13
	lfs 13,.LC106@l(24)
.LBE12993:
.LBE13008:
	.loc 4 4188 0
	frsp 31,31
.LVL2797:
.LBB13009:
.LBB12994:
	.loc 8 339 0
	fmsubs 12,0,12,13
	lfs 13,.LC0@l(26)
	fmadds 0,0,12,13
.LVL2798:
	fmuls 30,30,0
.LVL2799:
.LBE12994:
.LBE13009:
.LBB13010:
.LBB13002:
	.loc 8 317 0
	lfs 0,.LC6@l(9)
	fcmpu 7,31,0
.LBE13002:
.LBE13010:
	.loc 4 4187 0
	fmadds 22,26,30,22
	stfs 22,36(1)
.LBB13011:
.LBB13003:
	.loc 8 317 0
	blt- 7,.L1491
	fcmpu 7,31,29
	cror 30,29,30
	bne- 7,.L1492
.L1491:
	.loc 8 318 0
	fdivs 1,31,29
	bl floorf
	.loc 4 4107 0
	fneg 0,29
	.loc 8 318 0
	fmadds 31,0,1,31
.LVL2800:
.L1492:
	.loc 8 321 0
	fcmpu 7,27,31
	bng- 7,.L1541
	.loc 8 322 0
	fcmpu 7,25,31
	blt- 7,.L1542
.L1496:
	.loc 8 338 0
	fmuls 0,31,31
.LVL2801:
	.loc 8 339 0
	lfs 11,.LC102@l(20)
	lfs 12,.LC103@l(21)
.LBE13003:
.LBE13011:
	.loc 4 4190 0
	cmpwi 7,25,0
.LBB13012:
.LBB13004:
	.loc 8 339 0
	lfs 13,.LC104@l(22)
	fmadds 12,0,11,12
	lfs 10,.LC105@l(23)
	lfs 11,.LC106@l(24)
	fmsubs 12,0,12,13
	lfs 13,.LC0@l(26)
	fmadds 12,0,12,10
	fmsubs 12,0,12,11
	fmadds 0,0,12,13
.LVL2802:
	fmuls 31,31,0
.LVL2803:
	.loc 4 4188 0
	fmadds 26,26,31,23
.LBE13004:
.LBE13012:
	stfs 26,40(1)
	.loc 4 4190 0
	beq- 7,.L1500
	.loc 4 4193 0
	lfs 30,4192(31)
.LVL2804:
.LBB13013:
.LBB13014:
.LBB13015:
.LBB13016:
.LBB13017:
.LBB13018:
	.loc 8 904 0
	lis 26,.LC91@ha
	lfs 0,.LC91@l(26)
.LBE13018:
.LBE13017:
.LBE13016:
.LBE13015:
	.loc 8 919 0
	fsubs 31,26,30
.LVL2805:
.LBB13022:
.LBB13021:
.LBB13020:
.LBB13019:
	.loc 8 904 0
	fcmpu 7,31,0
	cror 30,29,30
	beq- 7,.L1501
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,31,0
	bnl- 7,.L1502
.L1501:
	.loc 8 905 0
	lfs 29,.LC91@l(26)
	fdivs 1,31,29
	bl floor
.LVL2806:
	fmr 0,31
	.loc 4 4107 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,29,0
.LVL2807:
	frsp 31,31
.LVL2808:
.L1502:
.LBE13019:
.LBE13020:
	.loc 8 912 0
	lis 9,.LC84@ha
	lfs 0,.LC84@l(9)
	fcmpu 7,31,0
	bng- 7,.L1504
	.loc 8 913 0
	lfs 0,.LC91@l(26)
	fsubs 31,31,0
.LVL2809:
.L1504:
.LBE13021:
.LBE13022:
.LBE13014:
.LBE13013:
.LBB13023:
.LBB12827:
	.loc 11 249 0
	frsp 21,21
.LVL2810:
.LBE12827:
.LBE13023:
	.loc 4 4194 0
	fcmpu 7,21,31
	bnl- 7,.L1543
	.loc 4 4195 0
	fadds 21,30,21
	stfs 21,40(1)
.LVL2811:
.L1500:
	.loc 4 4201 0
	addi 3,1,132
	addi 4,1,36
	bl _ZNK8idAngles6ToMat3Ev
.LVL2812:
	li 10,0
.L1509:
.LBB13024:
.LBB13025:
.LBB13026:
.LBB13027:
	.loc 6 424 0
	addi 11,1,132
.LVL2813:
	addi 9,1,204
.LVL2814:
	lwzux 0,11,10
.LVL2815:
.LBE13027:
.LBE13026:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB13030:
.LBB13028:
	.loc 6 424 0
	stwux 0,9,10
.LVL2816:
.LBE13028:
.LBE13030:
	.loc 13 333 0
	addi 10,10,12
.LBB13031:
.LBB13029:
	.loc 6 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 6 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE13029:
.LBE13031:
	.loc 13 333 0
	bne+ 7,.L1509
.LBE13025:
.LBE13024:
	.loc 4 4204 0
	cmpwi 7,28,0
	.loc 4 4203 0
	lis 9,_ZN6idMath9M_DEG2RADE@ha
	lfs 0,_ZN6idMath9M_DEG2RADE@l(9)
	fmuls 28,0,28
.LVL2817:
	.loc 4 4204 0
	ble- 7,.L1510
	lis 10,.LC91@ha
	lis 9,.LC15@ha
	lfs 26,.LC91@l(10)
.LBB13032:
.LBB13033:
	.loc 19 83 0
	lis 10,.LC65@ha
	lis 11,.LC63@ha
	lis 22,_ZN6idMath5iSqrtE@ha
	lfs 29,.LC65@l(10)
	lis 23,gameLocal+65536@ha
	lis 10,.LC66@ha
	lis 20,.LC0@ha
.LBB13034:
.LBB13035:
	.loc 19 71 0
	lis 24,0x1
.LBE13035:
.LBE13034:
.LBE13033:
.LBE13032:
	.loc 4 4204 0
	fmuls 26,0,26
.LBB13046:
.LBB13042:
	.loc 19 83 0
	lfs 30,.LC66@l(10)
.LBE13042:
.LBE13046:
	.loc 4 4204 0
	li 26,0
.LBB13047:
.LBB13048:
.LBB13049:
.LBB13050:
	.loc 8 275 0
	lfs 27,.LC15@l(9)
	la 22,_ZN6idMath5iSqrtE@l(22)
	.loc 8 278 0
	lfs 31,.LC63@l(11)
	la 23,gameLocal+65536@l(23)
	la 20,.LC0@l(20)
.LBE13050:
.LBE13049:
.LBE13048:
.LBE13047:
.LBB13061:
.LBB13043:
.LBB13039:
.LBB13036:
	.loc 19 71 0
	mr 19,29
	ori 24,24,3533
.LBE13036:
.LBE13039:
	.loc 19 83 0
	lis 25,0x4330
.LBE13043:
.LBE13061:
.LBB13062:
.LBB13063:
	.loc 7 638 0
	li 21,0
	b .L1514
.LVL2818:
.L1511:
.LBE13063:
.LBE13062:
	.loc 4 4213 0
	mr 3,31
	addi 4,1,72
.LVL2819:
	addi 5,1,60
.LVL2820:
.LBB13069:
.LBB13064:
	.loc 7 638 0
	li 30,0
.LBE13064:
.LBE13069:
	.loc 4 4213 0
	bl _ZN4idAI16CreateProjectileERK6idVec3S2_
.LVL2821:
	lwz 0,4624(31)
	rlwinm 11,0,0,20,31
.LVL2822:
.LBB13070:
.LBB13065:
	.loc 7 635 0
	srawi 0,0,12
	addi 9,11,4228
	slwi 9,9,2
	add 9,29,9
	lwz 9,4(9)
	cmpw 7,9,0
	beq- 7,.L1548
.LBE13065:
.LBE13070:
	.loc 4 4216 0
	lwz 9,0(30)
	mr 3,30
	lfs 2,0(20)
	addi 4,1,72
.LVL2823:
	lwz 0,228(9)
	lis 9,.LC6@ha
	addi 5,1,60
.LVL2824:
	mr 6,27
	lfs 1,.LC6@l(9)
	fmr 3,2
	mtctr 0
	.loc 4 4204 0
	addi 26,26,1
	.loc 4 4216 0
	bctrl
.LVL2825:
	.loc 4 4204 0
	cmpw 7,26,28
.LBB13071:
.LBB13072:
	.loc 7 606 0
	stw 21,4624(31)
.LBE13072:
.LBE13071:
	.loc 4 4204 0
	beq- 7,.L1510
.LVL2826:
.L1514:
.LBB13074:
.LBB13044:
.LBB13040:
.LBB13037:
	.loc 19 71 0
	lwz 30,-32064(23)
.LBE13037:
.LBE13040:
	.loc 19 83 0
	stw 25,368(1)
.LBB13041:
.LBB13038:
	.loc 19 71 0
	mullw 30,24,30
	addi 30,30,1
.LVL2827:
	.loc 19 72 0
	rlwinm 0,30,0,17,31
.LBE13038:
.LBE13041:
.LBE13044:
.LBE13074:
.LBB13075:
.LBB13076:
.LBB13077:
.LBB13078:
	.loc 19 71 0
	mullw 30,30,24
.LVL2828:
.LBE13078:
.LBE13077:
.LBE13076:
.LBE13075:
.LBB13085:
.LBB13045:
	.loc 19 83 0
	xoris 0,0,0x8000
	stw 0,372(1)
	lfd 1,368(1)
	fsub 1,1,29
	frsp 1,1
	fmuls 1,1,30
.LBE13045:
.LBE13085:
.LBB13086:
.LBB13087:
	.loc 8 311 0
	fmuls 1,28,1
	bl sinf
.LBE13087:
.LBE13086:
.LBB13089:
.LBB13083:
.LBB13081:
.LBB13079:
	.loc 19 71 0
	addi 0,30,1
	.loc 19 72 0
	rlwinm 9,0,0,17,31
.LBE13079:
.LBE13081:
	.loc 19 83 0
	stw 25,376(1)
	xoris 9,9,0x8000
.LBE13083:
.LBE13089:
.LBB13090:
.LBB13088:
	.loc 8 311 0
	fmr 24,1
.LVL2829:
.LBE13088:
.LBE13090:
.LBB13091:
.LBB13084:
	.loc 19 83 0
	stw 9,380(1)
.LBB13082:
.LBB13080:
	.loc 19 71 0
	stw 0,-32064(23)
.LBE13080:
.LBE13082:
	.loc 19 83 0
	lfd 23,376(1)
	fsub 23,23,29
	frsp 23,23
	fmuls 23,23,30
.LBE13084:
.LBE13091:
	.loc 4 4207 0
	fmuls 23,23,26
.LVL2830:
.LBB13092:
.LBB13093:
	.loc 8 311 0
	fmr 1,23
.LVL2831:
	bl sinf
.LBE13093:
.LBE13092:
	.loc 4 4208 0
	fmuls 25,24,1
.LVL2832:
.LBB13094:
.LBB13095:
	.loc 8 347 0
	fmr 1,23
	bl cosf
.LVL2833:
.LBE13095:
.LBE13094:
	.loc 6 452 0
	lfs 0,208(1)
	.loc 4 4208 0
	fmuls 24,24,1
.LVL2834:
	.loc 6 452 0
	lfs 13,232(1)
.LVL2835:
	lfs 12,228(1)
	fmadds 13,25,13,0
.LVL2836:
	lfs 0,204(1)
.LVL2837:
	.loc 4 4107 0
	fneg 24,24
.LVL2838:
	.loc 6 452 0
	lfs 11,236(1)
	fmadds 12,25,12,0
.LVL2839:
	.loc 6 431 0
	lfs 0,220(1)
.LBB13096:
.LBB13097:
	.loc 7 634 0
	lwz 0,4624(31)
.LBE13097:
.LBE13096:
	.loc 6 431 0
	fmadds 13,24,0,13
.LVL2840:
	lfs 0,216(1)
.LBB13104:
.LBB13098:
	.loc 7 634 0
	rlwinm 11,0,0,20,31
	.loc 7 635 0
	srawi 0,0,12
.LBE13098:
.LBE13104:
	.loc 6 431 0
	fmadds 12,24,0,12
.LVL2841:
	.loc 6 452 0
	lfs 0,212(1)
.LVL2842:
.LBB13105:
.LBB13099:
	.loc 7 635 0
	addi 10,11,4228
.LBE13099:
.LBE13105:
	.loc 6 452 0
	fmadds 25,25,11,0
.LVL2843:
	.loc 6 431 0
	lfs 11,224(1)
.LBB13106:
.LBB13057:
	.loc 6 649 0
	fmuls 0,13,13
.LBE13057:
.LBE13106:
.LBB13107:
.LBB13100:
	.loc 7 635 0
	slwi 10,10,2
	add 10,29,10
.LBE13100:
.LBE13107:
	.loc 6 431 0
	fmadds 25,24,11,25
.LVL2844:
	.loc 6 649 0
	fmadds 0,12,12,0
	fmadds 0,25,25,0
	stfs 0,384(1)
.LVL2845:
.LBB13108:
.LBB13058:
.LBB13054:
.LBB13051:
	.loc 8 275 0
	fmuls 9,0,27
	.loc 8 270 0
	lwz 9,384(1)
.LVL2846:
	.loc 4 4107 0
	fneg 9,9
	.loc 8 276 0
	rlwinm 8,9,19,21,29
	rlwinm 7,9,9,24,31
	lwzx 8,22,8
	subfic 9,7,380
	rlwinm 9,9,22,0,8
	or 9,9,8
	.loc 8 277 0
	stw 9,388(1)
	lfs 0,388(1)
.LVL2847:
.LBE13051:
.LBE13054:
.LBE13058:
.LBE13108:
.LBB13109:
.LBB13101:
	.loc 7 635 0
	lwz 9,4(10)
.LBE13101:
.LBE13109:
.LBB13110:
.LBB13059:
.LBB13055:
.LBB13052:
	.loc 8 277 0
	fmr 10,0
.LVL2848:
.LBE13052:
.LBE13055:
.LBE13059:
.LBE13110:
.LBB13111:
.LBB13102:
	.loc 7 635 0
	cmpw 7,9,0
.LBE13102:
.LBE13111:
.LBB13112:
.LBB13060:
.LBB13056:
.LBB13053:
	.loc 8 278 0
	fmul 11,10,10
	fmadd 11,9,11,31
	fmul 11,10,11
.LVL2849:
	.loc 8 279 0
	fmul 0,11,11
	fmadd 0,9,0,31
.LVL2850:
	fmul 0,11,0
.LVL2851:
	.loc 8 280 0
	frsp 0,0
.LVL2852:
.LBE13053:
.LBE13056:
	.loc 6 651 0
	fmuls 12,12,0
.LVL2853:
	.loc 6 652 0
	fmuls 13,13,0
.LVL2854:
	.loc 6 653 0
	fmuls 0,25,0
	.loc 6 651 0
	stfs 12,60(1)
	.loc 6 652 0
	stfs 13,64(1)
	.loc 6 653 0
	stfs 0,68(1)
.LVL2855:
.LBE13060:
.LBE13112:
.LBB13113:
.LBB13103:
	.loc 7 635 0
	bne+ 7,.L1511
	.loc 7 636 0
	addi 11,11,132
.LVL2856:
	slwi 9,11,2
	add 9,19,9
.LBE13103:
.LBE13113:
	.loc 4 4212 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1511
.LVL2857:
.L1512:
.LBB13114:
.LBB13066:
	.loc 7 636 0
	slwi 11,11,2
.LBE13066:
.LBE13114:
	.loc 4 4216 0
	lfs 2,0(20)
.LBB13115:
.LBB13067:
	.loc 7 636 0
	add 11,29,11
.LBE13067:
.LBE13115:
	.loc 4 4216 0
	addi 4,1,72
.LVL2858:
.LBB13116:
.LBB13068:
	.loc 7 636 0
	lwz 30,4(11)
.LBE13068:
.LBE13116:
	.loc 4 4216 0
	addi 5,1,60
.LVL2859:
	mr 6,27
	fmr 3,2
	lwz 9,0(30)
	mr 3,30
	.loc 4 4204 0
	addi 26,26,1
	.loc 4 4216 0
	lwz 0,228(9)
	lis 9,.LC6@ha
	lfs 1,.LC6@l(9)
	mtctr 0
	bctrl
.LVL2860:
	.loc 4 4204 0
	cmpw 7,26,28
.LBB13117:
.LBB13073:
	.loc 7 606 0
	stw 21,4624(31)
.LBE13073:
.LBE13117:
	.loc 4 4204 0
	bne+ 7,.L1514
.LVL2861:
.L1510:
	.loc 4 4220 0
	mr 3,31
	addi 4,1,72
.LVL2862:
	bl _ZN4idAI20TriggerWeaponEffectsERK6idVec3
.LVL2863:
	.loc 4 4222 0
	lwz 0,2004(18)
	stw 0,4556(31)
.LVL2864:
.L1461:
.LBE12806:
	.loc 4 4225 0
	lwz 0,540(1)
	mr 3,30
	lwz 18,392(1)
	mtlr 0
	lwz 19,396(1)
	lwz 20,400(1)
	lwz 21,404(1)
	lwz 22,408(1)
	lwz 23,412(1)
	lwz 24,416(1)
	lwz 25,420(1)
	lwz 26,424(1)
	lwz 27,428(1)
	lwz 28,432(1)
	lwz 29,436(1)
	lwz 30,440(1)
	lwz 31,444(1)
	lfd 21,448(1)
	lfd 22,456(1)
	lfd 23,464(1)
	lfd 24,472(1)
	lfd 25,480(1)
	lfd 26,488(1)
	lfd 27,496(1)
	lfd 28,504(1)
	lfd 29,512(1)
	lfd 30,520(1)
	lfd 31,528(1)
	addi 1,1,536
	.cfi_remember_state
.LCFI345:
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
.LVL2865:
.L1547:
.LCFI346:
	.cfi_restore_state
.LBB13168:
	.loc 4 4165 0
	fsubs 0,5,6
	fsubs 9,11,10
	fcmpu 7,9,0
.LBB13118:
.LBB13119:
	.loc 6 402 0
	lfs 0,20(23)
.LVL2866:
.LBE13119:
.LBE13118:
.LBB13120:
.LBB13121:
	lfs 9,8(23)
.LBE13121:
.LBE13120:
	.loc 4 4165 0
	bng- 7,.L1476
.LVL2867:
	fsubs 2,3,4
	fsubs 1,0,9
	fcmpu 7,1,2
	bng- 7,.L1476
.LVL2868:
.LBB13122:
.LBB13123:
	.loc 5 173 0 discriminator 5
	fadds 13,13,7
.LVL2869:
.LBE13123:
.LBE13122:
	.loc 4 4168 0 discriminator 5
	addi 3,1,84
.LBB13136:
.LBB13132:
	.loc 5 173 0 discriminator 5
	fadds 10,10,5
.LVL2870:
.LBE13132:
.LBE13136:
	.loc 4 4168 0 discriminator 5
	addi 4,1,72
.LBB13137:
.LBB13133:
	.loc 5 173 0 discriminator 5
	fadds 9,9,3
.LBE13133:
.LBE13137:
	.loc 4 4168 0 discriminator 5
	addi 5,31,2268
.LBB13138:
.LBB13134:
	.loc 5 173 0 discriminator 5
	fadds 12,12,8
.LVL2871:
.LBE13134:
.LBE13138:
	.loc 4 4168 0 discriminator 5
	addi 6,1,8
.LBB13139:
.LBB13135:
	.loc 5 173 0 discriminator 5
	fadds 11,11,6
.LVL2872:
.LBB13124:
.LBB13125:
.LBB13126:
	.loc 6 424 0 discriminator 5
	stfs 13,84(1)
.LBE13126:
.LBE13125:
.LBE13124:
	.loc 5 173 0 discriminator 5
	fadds 0,0,4
.LBB13131:
.LBB13128:
.LBB13127:
	.loc 6 425 0 discriminator 5
	stfs 10,88(1)
	.loc 6 426 0 discriminator 5
	stfs 9,92(1)
.LVL2873:
.LBE13127:
.LBE13128:
.LBB13129:
.LBB13130:
	.loc 6 424 0 discriminator 5
	stfs 12,96(1)
	.loc 6 425 0 discriminator 5
	stfs 11,100(1)
	.loc 6 426 0 discriminator 5
	stfs 0,104(1)
.LVL2874:
.LBE13130:
.LBE13129:
.LBE13131:
.LBE13135:
.LBE13139:
	.loc 4 4168 0 discriminator 5
	bl _ZNK8idBounds15RayIntersectionERK6idVec3S2_Rf
.LVL2875:
	cmpwi 7,3,0
	beq- 7,.L1478
.LVL2876:
	.loc 4 4169 0
	lfs 0,8(1)
.LVL2877:
	.loc 6 452 0
	lfs 13,76(1)
	lfs 12,2272(31)
	lfs 11,2276(31)
	fmadds 12,0,12,13
	lfs 13,80(1)
.LBB13140:
.LBB13141:
	lfs 10,2268(31)
.LVL2878:
.LBE13141:
.LBE13140:
	fmadds 13,0,11,13
.LVL2879:
.LBB13143:
.LBB13142:
	lfs 11,72(1)
	.loc 6 425 0
	stfs 12,52(1)
	.loc 6 452 0
	fmadds 0,0,10,11
	.loc 6 426 0
	stfs 13,56(1)
	.loc 6 424 0
	stfs 0,48(1)
	b .L1479
.LVL2880:
.L1541:
.LBE13142:
.LBE13143:
.LBB13144:
.LBB13005:
	.loc 8 326 0
	fadds 25,25,27
	fcmpu 7,31,25
	bgt- 7,.L1549
.L1542:
	.loc 8 329 0
	fsubs 31,27,31
.LVL2881:
	b .L1496
.LVL2882:
.L1539:
.LBE13005:
.LBE13144:
.LBB13145:
.LBB12995:
	.loc 8 326 0
	fadds 0,27,25
	fcmpu 7,30,0
	bgt- 7,.L1550
.L1540:
	.loc 8 329 0
	fsubs 30,27,30
.LVL2883:
	b .L1487
.LVL2884:
.L1469:
.LBE12995:
.LBE13145:
.LBB13146:
.LBB13147:
	.loc 13 333 0
	addi 7,31,2268
	li 10,0
.L1472:
.LBB13148:
.LBB13149:
	.loc 6 424 0
	mr 11,7
	addi 9,1,204
.LVL2885:
	lwzux 0,11,10
.LBE13149:
.LBE13148:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB13152:
.LBB13150:
	.loc 6 424 0
	stwux 0,9,10
.LVL2886:
.LBE13150:
.LBE13152:
	.loc 13 333 0
	addi 10,10,12
.LBB13153:
.LBB13151:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE13151:
.LBE13153:
	.loc 13 333 0
	bne+ 7,.L1472
	b .L1471
.LVL2887:
.L1545:
.LBE13147:
.LBE13146:
.LBB13154:
.LBB12866:
	.loc 7 636 0
	addi 9,9,132
.LVL2888:
	slwi 11,9,2
	add 11,29,11
.LBE12866:
.LBE13154:
	.loc 4 4140 0
	lwz 0,4(11)
	cmpwi 7,0,0
	beq- 7,.L1466
.LVL2889:
.L1467:
.LBB13155:
.LBB12870:
	.loc 7 636 0
	slwi 9,9,2
	add 9,29,9
	lwz 30,4(9)
	b .L1468
.LVL2890:
.L1543:
.LBE12870:
.LBE13155:
	.loc 4 4196 0
	fneg 0,21
	fcmpu 7,0,31
	bng- 7,.L1500
	.loc 4 4197 0
	fsubs 30,30,21
.LVL2891:
	stfs 30,40(1)
	b .L1500
.LVL2892:
.L1550:
.LBB13156:
.LBB12996:
	.loc 8 327 0
	fsubs 30,30,29
.LVL2893:
	b .L1487
.LVL2894:
.L1549:
.LBE12996:
.LBE13156:
.LBB13157:
.LBB13006:
	fsubs 31,31,29
.LVL2895:
	b .L1496
.LVL2896:
.L1478:
.LBE13006:
.LBE13157:
.LBB13158:
.LBB13159:
	.loc 5 212 0
	lfs 0,0(23)
	lis 9,.LC15@ha
	lfs 12,4(23)
	lfs 13,8(23)
	lfs 9,16(23)
	lfs 10,20(23)
	lfs 11,12(23)
	fadds 12,9,12
	fadds 13,10,13
	fadds 11,11,0
	lfs 0,.LC15@l(9)
	fmuls 12,12,0
.LVL2897:
	fmuls 13,13,0
.LVL2898:
	fmuls 0,11,0
.LBE13159:
.LBE13158:
.LBB13160:
.LBB13161:
	.loc 6 425 0
	stfs 12,52(1)
	.loc 6 426 0
	stfs 13,56(1)
	.loc 6 424 0
	stfs 0,48(1)
	b .L1479
.LVL2899:
.L1518:
.LBE13161:
.LBE13160:
.LBB13162:
.LBB12860:
.LBB12857:
.LBB12855:
	.loc 11 245 0
	lis 3,.LC134@ha
.LVL2900:
	la 3,.LC134@l(3)
	b .L1465
.LVL2901:
.L1516:
.LBE12855:
.LBE12857:
.LBE12860:
.LBE13162:
.LBB13163:
.LBB12828:
.LBB12824:
.LBB12822:
	lis 3,.LC133@ha
.LVL2902:
	la 3,.LC133@l(3)
.LBE12822:
.LBE12824:
	.loc 11 249 0
	bl atof
.LBE12828:
.LBE13163:
.LBB13164:
.LBB12845:
.LBB12841:
.LBB12838:
	.loc 11 241 0
	lis 4,.LC138@ha
	mr 3,29
	la 4,.LC138@l(4)
.LBE12838:
.LBE12841:
.LBE12845:
.LBE13164:
.LBB13165:
.LBB12829:
	.loc 11 249 0
	fmr 21,1
.LVL2903:
.LBE12829:
.LBE13165:
.LBB13166:
.LBB12846:
.LBB12842:
.LBB12839:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2904:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L1551
.L1517:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL2905:
	la 3,.LC7@l(3)
	b .L1464
.LVL2906:
.L1515:
.LBE12839:
.LBE12842:
.LBE12846:
.LBE13166:
.LBB13167:
.LBB12815:
.LBB12813:
.LBB12812:
	lis 3,.LC132@ha
.LVL2907:
	la 3,.LC132@l(3)
	b .L1462
.LVL2908:
.L1544:
.LBE12812:
.LBE12813:
.LBE12815:
.LBE13167:
	.loc 4 5138 0
	lwz 31,72(3)
.LVL2909:
	.loc 4 4129 0
	bl _ZNK8idEntity16GetEntityDefNameEv
.LVL2910:
	mr 6,3
	lis 4,.LC135@ha
	lis 3,gameLocal@ha
	la 4,.LC135@l(4)
	la 3,gameLocal@l(3)
	mr 5,31
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	.loc 4 4130 0
	li 30,0
.LVL2911:
	b .L1461
.LVL2912:
.L1546:
	addi 9,9,132
.LVL2913:
	b .L1467
.LVL2914:
.L1548:
	addi 11,11,132
.LVL2915:
	b .L1512
.LBE13168:
	.cfi_endproc
.LFE2958:
	.size	_ZN4idAI16LaunchProjectileEPKcP8idEntityb, .-_ZN4idAI16LaunchProjectileEPKcP8idEntityb
	.align 2
	.globl _ZN4idAI17UpdateMuzzleFlashEv
	.type	_ZN4idAI17UpdateMuzzleFlashEv, @function
_ZN4idAI17UpdateMuzzleFlashEv:
.LFB2966:
	.loc 4 4538 0
	.cfi_startproc
.LVL2916:
	mflr 0
	stwu 1,-64(1)
.LCFI347:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -28
	stw 0,68(1)
	stfd 29,40(1)
	stfd 30,48(1)
	stfd 31,56(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB13196:
	.loc 4 4539 0
	lwz 4,5072(3)
	cmpwi 7,4,-1
	beq- 7,.L1552
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
.LBB13197:
	.loc 4 4540 0
	lis 30,gameLocal@ha
	lwz 0,5080(3)
	la 30,gameLocal@l(30)
	addis 30,30,0x25
	lwz 5,2004(30)
	cmpw 7,5,0
	bge- 7,.L1555
.LBB13198:
	.loc 4 4545 0
	addi 29,3,4864
	addi 28,3,636
	lwz 4,5076(3)
	addi 6,1,8
	mr 7,29
	mr 3,28
.LVL2917:
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
	.loc 4 4546 0
	lwz 5,2004(30)
	lwz 4,5076(31)
	addi 6,1,8
	mr 7,29
	mr 3,28
	.loc 4 4547 0
	addi 30,31,4216
	.loc 4 4546 0
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
	.loc 4 4547 0
	li 4,0
	mr 3,30
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LBB13199:
.LBB13200:
	.loc 6 452 0
	lfs 13,12(1)
	lfs 0,2356(31)
.LBE13200:
.LBE13199:
	.loc 4 4547 0
	mr 28,3
.LVL2918:
.LBB13208:
.LBB13201:
	.loc 6 452 0
	lfs 31,8(1)
.LBE13201:
.LBE13208:
	.loc 4 4547 0
	mr 3,30
.LBB13209:
.LBB13202:
	.loc 6 452 0
	fadds 0,13,0
.LBE13202:
.LBE13209:
.LBB13210:
.LBB13211:
.LBB13212:
	.loc 13 454 0
	lfs 30,2280(31)
.LBE13212:
.LBE13211:
.LBE13210:
.LBB13221:
.LBB13203:
	.loc 6 452 0
	lfs 13,2352(31)
.LBE13203:
.LBE13221:
.LBB13222:
.LBB13217:
.LBB13213:
	.loc 13 454 0
	lfs 29,2284(31)
	lfs 12,2288(31)
.LBE13213:
.LBE13217:
.LBE13222:
.LBB13223:
.LBB13204:
	.loc 6 452 0
	fadds 13,31,13
.LBE13204:
.LBE13223:
.LBB13224:
.LBB13218:
.LBB13214:
	.loc 13 454 0
	fmuls 30,0,30
.LBE13214:
.LBE13218:
.LBE13224:
.LBB13225:
.LBB13205:
	lfs 10,2272(31)
.LBE13205:
.LBE13225:
.LBB13226:
.LBB13219:
.LBB13215:
	fmuls 12,0,12
.LBE13215:
.LBE13219:
.LBE13226:
.LBB13227:
.LBB13206:
	lfs 11,2276(31)
.LBE13206:
.LBE13227:
.LBB13228:
.LBB13220:
.LBB13216:
	fmuls 29,0,29
.LBE13216:
.LBE13220:
.LBE13228:
.LBB13229:
.LBB13207:
	.loc 6 452 0
	lfs 31,16(1)
	lfs 0,2360(31)
	.loc 13 454 0
	lfs 9,2268(31)
	.loc 6 452 0
	fadds 0,31,0
.LVL2919:
	.loc 13 454 0
	lfs 31,2300(31)
	fmadds 29,13,10,29
	fmadds 30,13,9,30
	fmadds 13,13,11,12
.LVL2920:
	lfs 11,2292(31)
	lfs 12,2296(31)
	fmadds 30,0,11,30
	fmadds 29,0,12,29
	fmadds 31,0,31,13
.LVL2921:
.LBE13207:
.LBE13229:
	.loc 4 4547 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL2922:
.LBB13230:
.LBB13231:
.LBB13232:
	.loc 13 454 0
	lfs 12,20(3)
.LBE13232:
.LBE13231:
.LBE13230:
	.loc 4 4549 0
	lis 9,gameRenderWorld@ha
.LBB13241:
.LBB13237:
.LBB13233:
	.loc 13 454 0
	lfs 13,12(3)
.LBE13233:
.LBE13237:
.LBE13241:
	.loc 4 4549 0
	mr 5,29
.LBB13242:
.LBB13238:
.LBB13234:
	.loc 13 454 0
	lfs 0,16(3)
	fmuls 13,29,13
.LBE13234:
.LBE13238:
.LBE13242:
.LBB13243:
.LBB13244:
	lfs 10,0(3)
.LBE13244:
.LBE13243:
.LBB13249:
.LBB13239:
.LBB13235:
	fmuls 0,29,0
.LBE13235:
.LBE13239:
.LBE13249:
.LBB13250:
.LBB13245:
	lfs 11,4(3)
.LBE13245:
.LBE13250:
.LBB13251:
.LBB13240:
.LBB13236:
	fmuls 29,29,12
.LVL2923:
.LBE13236:
.LBE13240:
.LBE13251:
.LBB13252:
.LBB13246:
	lfs 12,8(3)
	fmadds 13,30,10,13
	.loc 6 452 0
	lfs 10,0(28)
	.loc 13 454 0
	fmadds 0,30,11,0
	lfs 11,24(3)
	fmadds 30,30,12,29
	lfs 12,28(3)
	lfs 29,32(3)
	fmadds 13,31,11,13
.LVL2924:
	fmadds 0,31,12,0
.LVL2925:
	.loc 6 452 0
	lfs 11,4(28)
	.loc 13 454 0
	fmadds 31,31,29,30
.LVL2926:
	.loc 6 452 0
	lfs 12,8(28)
	fadds 13,13,10
.LVL2927:
.LBE13246:
.LBE13252:
	.loc 4 4549 0
	lwz 9,gameRenderWorld@l(9)
.LBB13253:
.LBB13247:
	.loc 6 452 0
	fadds 0,0,11
.LVL2928:
.LBE13247:
.LBE13253:
	.loc 4 4549 0
	lwz 4,5072(31)
.LBB13254:
.LBB13248:
	.loc 6 452 0
	fadds 31,31,12
.LVL2929:
.LBE13248:
.LBE13254:
	.loc 4 4549 0
	mr 3,9
.LVL2930:
.LBB13255:
.LBB13256:
	.loc 6 424 0
	stfs 13,4900(31)
	.loc 6 425 0
	stfs 0,4904(31)
	.loc 6 426 0
	stfs 31,4908(31)
.LBE13256:
.LBE13255:
.LBB13257:
.LBB13258:
	.loc 6 424 0
	stfs 13,8(1)
	.loc 6 425 0
	stfs 0,12(1)
	.loc 6 426 0
	stfs 31,16(1)
.LVL2931:
.LBE13258:
.LBE13257:
	.loc 4 4549 0
	lwz 9,0(9)
	lwz 0,36(9)
	mtctr 0
	bctrl
.LVL2932:
.L1552:
.LBE13198:
.LBE13197:
.LBE13196:
	.loc 4 4552 0
	lwz 0,68(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL2933:
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI348:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2934:
.L1555:
.LCFI349:
	.cfi_restore_state
.LBB13260:
.LBB13259:
	.loc 4 4541 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
.LVL2935:
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 4 4542 0
	li 0,-1
	stw 0,5072(31)
.LBE13259:
.LBE13260:
	.loc 4 4552 0
	lwz 0,68(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL2936:
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI350:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2966:
	.size	_ZN4idAI17UpdateMuzzleFlashEv, .-_ZN4idAI17UpdateMuzzleFlashEv
	.align 2
	.globl _ZN4idAI12SetChatSoundEv
	.type	_ZN4idAI12SetChatSoundEv, @function
_ZN4idAI12SetChatSoundEv:
.LFB2969:
	.loc 4 4603 0
	.cfi_startproc
.LVL2937:
	mflr 0
	stwu 1,-56(1)
.LCFI351:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,60(1)
	stfd 31,48(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
.LBB13314:
	.loc 4 4606 0
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl _ZNK8idEntity8IsHiddenEv
.LVL2938:
	cmpwi 7,3,0
	bne- 7,.L1567
.LVL2939:
.LBB13315:
.LBB13316:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 29,gameLocal@ha
	la 29,gameLocal@l(29)
.LBE13316:
.LBE13315:
	.loc 4 4609 0
	addi 28,31,100
.LBB13320:
.LBB13317:
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL2940:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
.LBE13317:
.LBE13320:
.LBB13321:
.LBB13322:
	.loc 11 241 0
	mr 3,28
.LBE13322:
.LBE13321:
.LBB13325:
.LBB13318:
	.loc 7 635 0
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1577
.LVL2941:
.L1558:
.LBE13318:
.LBE13325:
.LBB13326:
.LBB13327:
.LBB13328:
.LBB13329:
	.loc 11 241 0
	lis 4,.LC147@ha
	la 4,.LC147@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2942:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1572
.LVL2943:
.LBB13330:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2944:
.L1563:
.LBE13330:
.LBE13329:
.LBE13328:
	.loc 11 257 0
	bl atoi
.LBE13327:
.LBE13326:
	.loc 4 4612 0
	cmpwi 7,3,0
	beq- 7,.L1578
.LVL2945:
.L1567:
	.loc 4 4626 0
	li 0,0
	stw 0,4660(31)
.LBE13314:
	.loc 4 4628 0
	lwz 0,60(1)
	lwz 28,32(1)
	mtlr 0
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL2946:
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI352:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2947:
.L1577:
.LCFI353:
	.cfi_restore_state
.LBB13427:
.LBB13334:
.LBB13319:
	.loc 7 636 0
	addi 9,9,132
.LVL2948:
	slwi 9,9,2
.LVL2949:
	add 9,29,9
.LBE13319:
.LBE13334:
	.loc 4 4608 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1558
.LBB13335:
.LBB13324:
	.loc 11 241 0
	lis 4,.LC144@ha
	.loc 11 245 0
	li 30,0
	.loc 11 241 0
	la 4,.LC144@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2950:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1559
.LVL2951:
.LBB13323:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL2952:
.L1559:
.LBE13323:
.LBE13324:
.LBE13335:
.LBB13336:
.LBB13337:
.LBB13338:
.LBB13339:
	.loc 11 241 0
	lis 4,.LC145@ha
	mr 3,28
.LVL2953:
	la 4,.LC145@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2954:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1570
.LVL2955:
.LBB13340:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2956:
.L1560:
.LBE13340:
.LBE13339:
.LBE13338:
	.loc 11 249 0
	bl atof
.LBE13337:
.LBE13336:
	.loc 4 4610 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
.LBB13345:
.LBB13343:
	.loc 11 249 0
	frsp 0,1
.LBE13343:
.LBE13345:
	.loc 4 4610 0
	lfs 31,_ZN6idMath8M_SEC2MSE@l(9)
.LVL2957:
.LBB13346:
.LBB13347:
	.loc 8 825 0
	addi 9,31,4664
.LBE13347:
.LBE13346:
.LBB13349:
.LBB13350:
.LBB13351:
.LBB13352:
	.loc 11 241 0
	lis 4,.LC146@ha
	mr 3,28
	la 4,.LC146@l(4)
.LBE13352:
.LBE13351:
.LBE13350:
.LBE13349:
	.loc 4 4610 0
	fmuls 0,31,0
.LBB13356:
.LBB13348:
	.loc 8 825 0
	fctiwz 0,0
	stfiwx 0,0,9
.LVL2958:
.LBE13348:
.LBE13356:
.LBB13357:
.LBB13355:
.LBB13354:
.LBB13353:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2959:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1575
.LVL2960:
.L1576:
.LBE13353:
.LBE13354:
.LBE13355:
.LBE13357:
.LBB13358:
.LBB13359:
.LBB13360:
.LBB13361:
.LBB13362:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2961:
.L1566:
.LBE13362:
.LBE13361:
.LBE13360:
	.loc 11 249 0
	bl atof
.LVL2962:
.LBE13359:
.LBE13358:
	.loc 4 4620 0
	cmpwi 7,30,0
.LBB13370:
.LBB13367:
	.loc 11 249 0
	frsp 1,1
.LVL2963:
.LBE13367:
.LBE13370:
.LBB13371:
.LBB13372:
	.loc 8 825 0
	addi 9,31,4668
.LBE13372:
.LBE13371:
	.loc 4 4615 0
	fmuls 31,31,1
.LVL2964:
.LBB13374:
.LBB13373:
	.loc 8 825 0
	fctiwz 31,31
.LVL2965:
	stfiwx 31,0,9
.LVL2966:
.LBE13373:
.LBE13374:
	.loc 4 4620 0
	beq- 7,.L1567
	.loc 4 4620 0 is_stmt 0 discriminator 1
	lbz 0,0(30)
	cmpwi 7,0,0
	beq+ 7,.L1567
.LBB13375:
.LBB13376:
.LBB13377:
.LBB13378:
	.loc 19 71 0 is_stmt 1
	addis 11,29,0x1
	lis 9,0x1
	lwz 0,-32064(11)
	ori 9,9,3533
.LBE13378:
.LBE13377:
.LBE13376:
.LBE13375:
	.loc 4 4624 0
	lwz 7,4664(31)
	addis 29,29,0x25
.LBB13394:
.LBB13383:
.LBB13381:
.LBB13379:
	.loc 19 71 0
	mullw 9,9,0
.LBE13379:
.LBE13381:
.LBE13383:
.LBE13394:
	.loc 4 4624 0
	lis 0,0x4330
.LBB13395:
.LBB13384:
.LBB13382:
.LBB13380:
	.loc 19 71 0
	addi 9,9,1
	stw 9,-32064(11)
	.loc 19 72 0
	rlwinm 9,9,0,17,31
.LBE13380:
.LBE13382:
.LBE13384:
.LBE13395:
	.loc 4 4624 0
	lwz 11,2004(29)
.LBB13396:
.LBB13385:
	.loc 19 83 0
	xoris 9,9,0x8000
.LBE13385:
.LBE13396:
	.loc 4 4624 0
	lwz 10,4664(31)
	lwz 8,4668(31)
	add 11,11,7
.LBB13397:
.LBB13386:
	.loc 19 83 0
	stw 9,28(1)
.LBE13386:
.LBE13397:
	.loc 4 4624 0
	xoris 11,11,0x8000
.LBB13398:
.LBB13387:
	.loc 19 83 0
	stw 0,24(1)
.LBE13387:
.LBE13398:
	.loc 4 4624 0
	subf 9,10,8
	lis 10,.LC65@ha
	xoris 9,9,0x8000
.LBB13399:
.LBB13388:
	.loc 19 83 0
	lfd 12,24(1)
.LBE13388:
.LBE13399:
	.loc 4 4624 0
	addi 31,31,4672
.LVL2967:
	lfs 0,.LC65@l(10)
	stw 0,8(1)
	stw 9,20(1)
.LBB13400:
.LBB13389:
	.loc 19 83 0
	fsub 12,12,0
.LBE13389:
.LBE13400:
	.loc 4 4624 0
	stw 0,16(1)
.LBB13401:
.LBB13390:
	.loc 19 83 0
	lis 9,.LC66@ha
.LBE13390:
.LBE13401:
	.loc 4 4624 0
	stw 11,12(1)
	lfd 11,16(1)
.LBB13402:
.LBB13391:
	.loc 19 83 0
	frsp 12,12
.LBE13391:
.LBE13402:
	.loc 4 4624 0
	lfd 13,8(1)
	fsub 13,13,0
	fsub 0,11,0
.LBB13403:
.LBB13392:
	.loc 19 83 0
	lfs 11,.LC66@l(9)
.LBE13392:
.LBE13403:
	.loc 4 4624 0
	frsp 13,13
.LVL2968:
	frsp 0,0
.LBB13404:
.LBB13393:
	.loc 19 83 0
	fmuls 12,12,11
.LBE13393:
.LBE13404:
	.loc 4 4624 0
	fmadds 0,0,12,13
	fctiwz 0,0
	stfiwx 0,0,31
.LBE13427:
	.loc 4 4628 0
	lwz 0,60(1)
	lwz 28,32(1)
.LVL2969:
	mtlr 0
	lwz 29,36(1)
	lwz 30,40(1)
.LVL2970:
	lwz 31,44(1)
.LVL2971:
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI354:
	.cfi_def_cfa_offset 0
	blr
.LVL2972:
.L1578:
.LCFI355:
	.cfi_restore_state
.LBB13428:
.LBB13405:
.LBB13406:
	.loc 11 241 0
	lis 4,.LC148@ha
	mr 3,28
	la 4,.LC148@l(4)
	.loc 11 245 0
	li 30,0
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2973:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1564
.LVL2974:
.LBB13407:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL2975:
.L1564:
.LBE13407:
.LBE13406:
.LBE13405:
.LBB13408:
.LBB13409:
.LBB13410:
.LBB13411:
	.loc 11 241 0
	lis 4,.LC149@ha
	mr 3,28
.LVL2976:
	la 4,.LC149@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2977:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1574
.LVL2978:
.LBB13412:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2979:
.L1565:
.LBE13412:
.LBE13411:
.LBE13410:
	.loc 11 249 0
	bl atof
.LBE13409:
.LBE13408:
	.loc 4 4614 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
.LBB13417:
.LBB13415:
	.loc 11 249 0
	frsp 0,1
.LBE13415:
.LBE13417:
	.loc 4 4614 0
	lfs 31,_ZN6idMath8M_SEC2MSE@l(9)
.LVL2980:
.LBB13418:
.LBB13419:
	.loc 8 825 0
	addi 9,31,4664
.LBE13419:
.LBE13418:
.LBB13421:
.LBB13368:
.LBB13365:
.LBB13363:
	.loc 11 241 0
	lis 4,.LC150@ha
	mr 3,28
	la 4,.LC150@l(4)
.LBE13363:
.LBE13365:
.LBE13368:
.LBE13421:
	.loc 4 4614 0
	fmuls 0,31,0
.LBB13422:
.LBB13420:
	.loc 8 825 0
	fctiwz 0,0
	stfiwx 0,0,9
.LVL2981:
.LBE13420:
.LBE13422:
.LBB13423:
.LBB13369:
.LBB13366:
.LBB13364:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2982:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L1576
.LVL2983:
.L1575:
	.loc 11 245 0
	lis 3,.LC143@ha
	la 3,.LC143@l(3)
	b .L1566
.LVL2984:
.L1570:
.LBE13364:
.LBE13366:
.LBE13369:
.LBE13423:
.LBB13424:
.LBB13344:
.LBB13342:
.LBB13341:
	lis 3,.LC142@ha
.LVL2985:
	la 3,.LC142@l(3)
	b .L1560
.LVL2986:
.L1572:
.LBE13341:
.LBE13342:
.LBE13344:
.LBE13424:
.LBB13425:
.LBB13333:
.LBB13332:
.LBB13331:
	lis 3,.LC7@ha
.LVL2987:
	la 3,.LC7@l(3)
	b .L1563
.LVL2988:
.L1574:
.LBE13331:
.LBE13332:
.LBE13333:
.LBE13425:
.LBB13426:
.LBB13416:
.LBB13414:
.LBB13413:
	lis 3,.LC142@ha
.LVL2989:
	la 3,.LC142@l(3)
	b .L1565
.LBE13413:
.LBE13414:
.LBE13416:
.LBE13426:
.LBE13428:
	.cfi_endproc
.LFE2969:
	.size	_ZN4idAI12SetChatSoundEv, .-_ZN4idAI12SetChatSoundEv
	.align 2
	.globl _ZN4idAI4ShowEv
	.type	_ZN4idAI4ShowEv, @function
_ZN4idAI4ShowEv:
.LFB2968:
	.loc 4 4583 0
	.cfi_startproc
.LVL2990:
	mflr 0
	stwu 1,-24(1)
.LCFI356:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	.loc 4 4585 0
	addi 30,3,100
	.cfi_offset 30, -8
	.loc 4 4583 0
	stw 0,28(1)
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	stw 29,12(1)
	.loc 4 4584 0
	.cfi_offset 29, -12
	bl _ZN7idActor4ShowEv
.LVL2991:
.LBB13441:
.LBB13442:
.LBB13443:
.LBB13444:
	.loc 11 241 0
	lis 4,.LC151@ha
	mr 3,30
	la 4,.LC151@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2992:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1585
.LVL2993:
.LBB13445:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2994:
.L1580:
.LBE13445:
.LBE13444:
.LBE13443:
	.loc 11 257 0
	bl atoi
.LBE13442:
.LBE13441:
	.loc 4 4585 0
	cmpwi 7,3,0
	bne- 7,.L1587
	.loc 4 4587 0
	lbz 0,2420(31)
	.loc 4 4588 0
	addi 29,31,4216
	mr 3,29
	.loc 4 4587 0
	cmpwi 7,0,0
	bne- 7,.L1588
	.loc 4 4590 0
	li 4,256
	li 5,-1
	bl _ZN15idPhysics_Actor11SetContentsEii
.L1582:
	.loc 4 4592 0
	li 4,0
	mr 3,29
	bl _ZNK15idPhysics_Actor12GetClipModelEi
	lis 4,gameLocal+2311032@ha
	la 4,gameLocal+2311032@l(4)
	bl _ZN11idClipModel4LinkER6idClip
.LVL2995:
.LBB13449:
.LBB13450:
.LBB13451:
.LBB13452:
	.loc 11 241 0
	lis 4,.LC152@ha
	mr 3,30
	la 4,.LC152@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2996:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1586
.L1589:
.LVL2997:
.LBB13453:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2998:
.L1584:
.LBE13453:
.LBE13452:
.LBE13451:
	.loc 11 257 0
	bl atoi
.LBE13450:
.LBE13449:
	.loc 4 4593 0
	lwz 0,192(31)
	cntlzw 3,3
	srwi 3,3,5
	rlwimi 0,3,29,2,2
	.loc 4 4594 0
	mr 3,31
	.loc 4 4593 0
	stw 0,192(31)
	.loc 4 4594 0
	bl _ZN4idAI12SetChatSoundEv
	.loc 4 4595 0
	lis 4,.LC153@ha
	mr 3,31
	la 4,.LC153@l(4)
	li 5,12
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
	.loc 4 4596 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL2999:
	lwz 31,20(1)
.LVL3000:
	addi 1,1,24
	.cfi_remember_state
.LCFI357:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL3001:
.L1588:
.LCFI358:
	.cfi_restore_state
	.loc 4 4588 0
	li 5,-1
	li 4,257
	bl _ZN15idPhysics_Actor11SetContentsEii
	.loc 4 4592 0
	li 4,0
	mr 3,29
	bl _ZNK15idPhysics_Actor12GetClipModelEi
	lis 4,gameLocal+2311032@ha
	la 4,gameLocal+2311032@l(4)
	bl _ZN11idClipModel4LinkER6idClip
.LVL3002:
.LBB13457:
.LBB13456:
.LBB13455:
.LBB13454:
	.loc 11 241 0
	lis 4,.LC152@ha
	mr 3,30
	la 4,.LC152@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3003:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L1589
.L1586:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL3004:
	la 3,.LC7@l(3)
	b .L1584
.LVL3005:
.L1587:
.LBE13454:
.LBE13455:
.LBE13456:
.LBE13457:
	.loc 4 4586 0
	addi 29,31,4216
	li 4,0
	mr 3,29
	li 5,-1
	bl _ZN15idPhysics_Actor11SetContentsEii
	b .L1582
.LVL3006:
.L1585:
.LBB13458:
.LBB13448:
.LBB13447:
.LBB13446:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL3007:
	la 3,.LC7@l(3)
	b .L1580
.LBE13446:
.LBE13447:
.LBE13448:
.LBE13458:
	.cfi_endproc
.LFE2968:
	.size	_ZN4idAI4ShowEv, .-_ZN4idAI4ShowEv
	.align 2
	.globl _ZN4idAI4HideEv
	.type	_ZN4idAI4HideEv, @function
_ZN4idAI4HideEv:
.LFB2967:
	.loc 4 4559 0
	.cfi_startproc
.LVL3008:
	mflr 0
	stwu 1,-24(1)
.LCFI359:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	.loc 4 4562 0
	li 29,0
	.cfi_offset 29, -12
	.loc 4 4559 0
	stw 0,28(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 4 4559 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 4 4560 0
	bl _ZNK8idEntity7GetNameEv
.LVL3009:
	.loc 4 4564 0
	addi 30,31,4216
	.loc 4 4560 0
	mr 4,3
	lis 3,.LC154@ha
	la 3,.LC154@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 4561 0
	mr 3,31
	bl _ZN7idActor4HideEv
	.loc 4 4562 0
	lwz 0,192(31)
	.loc 4 4563 0
	lis 3,.LC155@ha
	.loc 4 4562 0
	rlwimi 0,29,29,2,2
	.loc 4 4563 0
	la 3,.LC155@l(3)
	.loc 4 4562 0
	stw 0,192(31)
	.loc 4 4563 0
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 4564 0
	mr 3,30
	bl _ZNK7idClass12GetClassnameEv
	mr 4,3
	lis 3,.LC156@ha
	la 3,.LC156@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 4565 0
	li 4,0
	mr 3,30
	bl _ZNK15idPhysics_Actor12GetClipModelEi
	mr 4,3
	lis 3,.LC157@ha
	la 3,.LC157@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 4566 0
	li 5,-1
	li 4,0
	mr 3,30
	bl _ZN15idPhysics_Actor11SetContentsEii
	.loc 4 4567 0
	lis 3,.LC158@ha
	la 3,.LC158@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 4568 0
	li 4,0
	mr 3,30
	bl _ZNK15idPhysics_Actor12GetClipModelEi
	bl _ZN11idClipModel6UnlinkEv
	.loc 4 4569 0
	mr 3,31
	li 4,12
	li 5,0
	bl _ZN8idEntity9StopSoundEib
	.loc 4 4570 0
	mr 3,31
	bl _ZN4idAI12SetChatSoundEv
.LVL3010:
.LBB13459:
.LBB13460:
	.loc 18 237 0
	lwz 9,5200(31)
	cmpwi 7,9,0
	beq- 7,.L1591
	.loc 18 238 0
	stw 29,0(9)
.L1591:
.LVL3011:
.LBE13460:
.LBE13459:
.LBB13461:
.LBB13462:
	.loc 18 237 0
	lwz 9,5196(31)
	cmpwi 7,9,0
	beq- 7,.L1592
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1592:
.LBE13462:
.LBE13461:
	.loc 4 4574 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 4575 0
	lis 3,.LC159@ha
	la 3,.LC159@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 4576 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL3012:
	addi 1,1,24
.LCFI360:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2967:
	.size	_ZN4idAI4HideEv, .-_ZN4idAI4HideEv
	.align 2
	.globl _ZN4idAI10ClearEnemyEv
	.type	_ZN4idAI10ClearEnemyEv, @function
_ZN4idAI10ClearEnemyEv:
.LFB2945:
	.loc 4 3638 0
	.cfi_startproc
.LVL3013:
	mflr 0
	stwu 1,-16(1)
.LCFI361:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 4 3639 0
	lwz 0,3956(3)
	.cfi_offset 65, 4
	cmpwi 7,0,3
	beq- 7,.L1598
.LVL3014:
.L1594:
.LBB13463:
.LBB13464:
	.loc 17 176 0
	lwz 9,2312(31)
.LBE13464:
.LBE13463:
	.loc 4 3643 0
	addi 0,31,2304
.LVL3015:
.LBB13469:
.LBB13465:
	.loc 17 176 0
	lwz 11,2308(31)
	stw 11,4(9)
.LBE13465:
.LBE13469:
.LBB13470:
.LBB13471:
	.loc 7 606 0
	li 11,0
.LBE13471:
.LBE13470:
.LBB13473:
.LBB13466:
	.loc 17 177 0
	lwz 9,2308(31)
	lwz 10,2312(31)
	stw 10,8(9)
	.loc 17 179 0
	stw 0,2308(31)
.LBE13466:
.LBE13473:
.LBB13474:
.LBB13475:
	.loc 18 237 0
	lwz 9,5200(31)
.LBE13475:
.LBE13474:
.LBB13478:
.LBB13467:
	.loc 17 180 0
	stw 0,2312(31)
.LBE13467:
.LBE13478:
.LBB13479:
.LBB13476:
	.loc 18 237 0
	cmpwi 7,9,0
.LBE13476:
.LBE13479:
.LBB13480:
.LBB13468:
	.loc 17 181 0
	stw 0,2304(31)
.LVL3016:
.LBE13468:
.LBE13480:
.LBB13481:
.LBB13472:
	.loc 7 606 0
	stw 11,5120(31)
.LVL3017:
.LBE13472:
.LBE13481:
.LBB13482:
.LBB13477:
	.loc 18 237 0
	beq- 7,.L1595
	.loc 18 238 0
	stw 11,0(9)
.L1595:
.LVL3018:
.LBE13477:
.LBE13482:
.LBB13483:
.LBB13484:
	.loc 18 237 0
	lwz 9,5196(31)
	cmpwi 7,9,0
	beq- 7,.L1596
	.loc 18 238 0
	li 0,0
.LVL3019:
	stw 0,0(9)
.L1596:
.LVL3020:
.LBE13484:
.LBE13483:
.LBB13485:
.LBB13486:
	.loc 18 237 0
	lwz 9,5204(31)
	cmpwi 7,9,0
	beq- 7,.L1597
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L1597:
.LBE13486:
.LBE13485:
	.loc 4 3650 0
	lwz 0,20(1)
	.loc 4 3649 0
	mr 3,31
	.loc 4 3650 0
	lwz 31,12(1)
.LVL3021:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI362:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 4 3649 0
	b _ZN4idAI12SetChatSoundEv
.LVL3022:
.L1598:
.LCFI363:
	.cfi_restore_state
	.loc 4 3640 0
	li 4,3
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LVL3023:
	b .L1594
	.cfi_endproc
.LFE2945:
	.size	_ZN4idAI10ClearEnemyEv, .-_ZN4idAI10ClearEnemyEv
	.align 2
	.globl _ZN4idAI9EnemyDeadEv
	.type	_ZN4idAI9EnemyDeadEv, @function
_ZN4idAI9EnemyDeadEv:
.LFB2940:
	.loc 4 3575 0
	.cfi_startproc
.LVL3024:
	stwu 1,-16(1)
.LCFI364:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 4 3576 0
	.cfi_offset 65, 4
	bl _ZN4idAI10ClearEnemyEv
.LVL3025:
.LBB13487:
.LBB13488:
	.loc 18 237 0
	lwz 9,5204(31)
	cmpwi 7,9,0
	beq- 7,.L1599
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L1599:
.LBE13488:
.LBE13487:
	.loc 4 3578 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3026:
	mtlr 0
	addi 1,1,16
.LCFI365:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2940:
	.size	_ZN4idAI9EnemyDeadEv, .-_ZN4idAI9EnemyDeadEv
	.align 2
	.globl _ZN4idAI5SpawnEv
	.type	_ZN4idAI5SpawnEv, @function
_ZN4idAI5SpawnEv:
.LFB2860:
	.loc 4 724 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2860
.LVL3027:
	mflr 0
	stwu 1,-304(1)
.LCFI366:
	.cfi_def_cfa_offset 304
	.cfi_register 65, 0
.LVL3028:
.LBB13753:
.LBB13754:
.LBB13755:
.LBB13756:
	.loc 15 357 0
	li 9,20
	stw 9,172(1)
	.loc 15 358 0
	addi 9,1,176
.LBE13756:
.LBE13755:
.LBE13754:
.LBE13753:
	.loc 4 724 0
	stw 0,308(1)
.LBB14403:
.LBB13761:
.LBB13759:
.LBB13757:
	.loc 15 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE13757:
.LBE13759:
.LBE13761:
.LBE14403:
	.loc 4 724 0
	stw 28,264(1)
	addi 28,1,164
	.cfi_offset 28, -40
	stw 31,276(1)
	mr 31,3
	.cfi_offset 31, -28
	stfd 29,280(1)
	stfd 30,288(1)
	stfd 31,296(1)
	stw 14,208(1)
	stw 15,212(1)
	stw 16,216(1)
	stw 17,220(1)
	stw 18,224(1)
	stw 19,228(1)
	stw 20,232(1)
	stw 21,236(1)
	stw 22,240(1)
	stw 23,244(1)
	stw 24,248(1)
	stw 25,252(1)
	stw 26,256(1)
	stw 27,260(1)
	stw 29,268(1)
	stw 30,272(1)
.LBB14404:
.LBB13762:
.LBB13760:
.LBB13758:
	.loc 15 356 0
	stw 0,164(1)
	.loc 15 358 0
	stw 9,168(1)
	.loc 15 359 0
	stb 0,176(1)
.LEHB51:
.LBE13758:
.LBE13760:
.LBE13762:
	.loc 4 732 0
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
	.cfi_offset 19, -76
	.cfi_offset 18, -80
	.cfi_offset 17, -84
	.cfi_offset 16, -88
	.cfi_offset 15, -92
	.cfi_offset 14, -96
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	bl _ZNK8idEntity7GetNameEv
.LVL3029:
	mr 5,3
	lis 3,.LC164@ha
	la 3,.LC164@l(3)
	mr 4,31
	addi 28,1,164
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	addi 28,1,164
	.loc 4 733 0
	bl _Z18Sys_PrintBacktracev
.LBB13763:
.LBB13764:
	.loc 4 734 0
	lis 9,g_monsters+44@ha
	.loc 20 142 0
	lwz 9,g_monsters+44@l(9)
.LBE13764:
.LBE13763:
	.loc 4 734 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L1602
	.loc 4 735 0
	lis 4,EV_Remove@ha
	mr 3,31
	la 4,EV_Remove@l(4)
	li 5,0
	addi 28,1,164
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LEHE51:
.LVL3030:
.LBB13765:
.LBB13766:
.LBB13767:
	.loc 15 501 0
	addi 3,1,164
.LEHB52:
	bl _ZN5idStr8FreeDataEv
.LEHE52:
.LVL3031:
.L1601:
.LBE13767:
.LBE13766:
.LBE13765:
.LBE14404:
	.loc 4 953 0
	lwz 0,308(1)
	lwz 14,208(1)
	mtlr 0
	lwz 15,212(1)
	lwz 16,216(1)
	lwz 17,220(1)
	lwz 18,224(1)
	lwz 19,228(1)
	lwz 20,232(1)
	lwz 21,236(1)
	lwz 22,240(1)
	lwz 23,244(1)
	lwz 24,248(1)
	lwz 25,252(1)
	lwz 26,256(1)
	lwz 27,260(1)
	lwz 28,264(1)
	lwz 29,268(1)
	lwz 30,272(1)
	lwz 31,276(1)
.LVL3032:
	lfd 29,280(1)
	lfd 30,288(1)
	lfd 31,296(1)
	addi 1,1,304
	.cfi_remember_state
.LCFI367:
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
.LVL3033:
.L1602:
.LCFI368:
	.cfi_restore_state
.LBB14405:
	.loc 4 739 0
	lis 9,.LC233@ha
	addi 26,31,100
	lis 4,.LC165@ha
	lwz 5,.LC233@l(9)
	mr 3,26
	la 4,.LC165@l(4)
	addi 6,31,2260
	addi 28,1,164
.LEHB53:
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	.loc 4 740 0
	lis 15,.LC7@ha
	lis 4,.LC166@ha
	la 15,.LC7@l(15)
	mr 3,26
	la 4,.LC166@l(4)
	mr 5,15
	addi 6,31,2264
	addi 28,1,164
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	.loc 4 741 0
	lis 4,.LC167@ha
	mr 3,26
	la 4,.LC167@l(4)
	mr 5,15
	addi 6,31,4512
	addi 28,1,164
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	.loc 4 742 0
	lis 11,.LC234@ha
	lis 4,.LC168@ha
	lwz 5,.LC234@l(11)
	mr 3,26
	la 4,.LC168@l(4)
	addi 6,31,4496
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 743 0
	lis 4,.LC169@ha
	lis 5,.LC170@ha
	mr 3,26
	la 4,.LC169@l(4)
	la 5,.LC170@l(5)
	addi 6,31,4500
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 744 0
	lis 4,.LC171@ha
	lis 5,.LC172@ha
	mr 3,26
	la 4,.LC171@l(4)
	la 5,.LC172@l(5)
	addi 6,31,4508
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 745 0
	lis 4,.LC173@ha
	lis 5,.LC174@ha
	mr 3,26
	la 4,.LC173@l(4)
	la 5,.LC174@l(5)
	addi 6,31,4504
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 746 0
	lis 4,.LC175@ha
	lis 5,.LC176@ha
	mr 3,26
	la 4,.LC175@l(4)
	la 5,.LC176@l(5)
	addi 6,31,4516
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 747 0
	lis 4,.LC177@ha
	lis 5,.LC178@ha
	mr 3,26
	la 4,.LC177@l(4)
	la 5,.LC178@l(5)
	addi 6,31,4520
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 748 0
	lis 4,.LC179@ha
	lis 5,.LC9@ha
	mr 3,26
	la 4,.LC179@l(4)
	la 5,.LC9@l(5)
	addi 6,31,4524
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 749 0
	lis 4,.LC180@ha
	lis 5,.LC181@ha
	mr 3,26
	la 4,.LC180@l(4)
	la 5,.LC181@l(5)
	addi 6,31,4532
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 750 0
	lis 4,.LC182@ha
	lis 5,.LC183@ha
	mr 3,26
	la 4,.LC182@l(4)
	la 5,.LC183@l(5)
	addi 6,31,4536
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 752 0
	lis 4,.LC184@ha
	lis 5,.LC185@ha
	mr 3,26
	la 4,.LC184@l(4)
	la 5,.LC185@l(5)
	addi 6,31,4560
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 753 0
	lis 9,.LC233@ha
	lis 4,.LC186@ha
	lwz 5,.LC233@l(9)
	mr 3,26
	la 4,.LC186@l(4)
	addi 6,31,4564
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 755 0
	lis 4,.LC187@ha
	lis 5,.LC188@ha
	mr 3,26
	la 4,.LC187@l(4)
	la 5,.LC188@l(5)
	addi 6,31,4196
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 757 0
	lis 4,.LC189@ha
	mr 3,26
	la 4,.LC189@l(4)
	mr 5,15
	addi 6,1,8
	addi 28,1,164
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
.LVL3034:
.LBB13768:
.LBB13769:
	.loc 11 241 0
	lis 4,.LC190@ha
	mr 3,26
	la 4,.LC190@l(4)
	addi 28,1,164
	bl _ZNK6idDict7FindKeyEPKc
.LVL3035:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1604
.LVL3036:
.LBB13770:
	.loc 4 5138 0
	lwz 9,4(3)
.LBE13770:
.LBE13769:
.LBE13768:
	.loc 4 758 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1604
.LVL3037:
	.loc 4 759 0
	lbz 0,8(1)
.LVL3038:
	cmpwi 7,0,0
.LVL3039:
	beq- 7,.L1605
	.loc 4 760 0
	li 0,2
.LVL3040:
	stw 0,4676(31)
.LVL3041:
.L1606:
	.loc 4 768 0
	lis 4,.LC191@ha
	mr 3,26
.LVL3042:
	la 4,.LC191@l(4)
	mr 5,15
	addi 6,31,4546
	addi 28,1,164
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
	.loc 4 769 0
	lis 4,.LC192@ha
	mr 3,26
	la 4,.LC192@l(4)
	mr 5,15
	addi 6,31,4547
	addi 28,1,164
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
	.loc 4 770 0
	lis 4,.LC193@ha
	lis 5,.LC194@ha
	mr 3,26
	la 4,.LC193@l(4)
	la 5,.LC194@l(5)
	addi 6,31,4168
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 771 0
	lis 4,.LC195@ha
	mr 3,26
	la 4,.LC195@l(4)
	mr 5,15
	addi 6,31,4172
	addi 28,1,164
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
	.loc 4 772 0
	lis 4,.LC196@ha
	lis 5,.LC197@ha
	mr 3,26
	la 4,.LC196@l(4)
	la 5,.LC197@l(5)
	addi 6,31,4176
	addi 28,1,164
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 4 773 0
	lis 30,.LC199@ha
	lis 4,.LC198@ha
	la 30,.LC199@l(30)
	mr 3,26
	la 4,.LC198@l(4)
	mr 5,30
	addi 6,31,4180
	addi 28,1,164
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	.loc 4 774 0
	lis 4,.LC200@ha
	mr 3,26
	la 4,.LC200@l(4)
	mr 5,30
	addi 6,31,4184
	addi 28,1,164
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	.loc 4 776 0
	lis 4,.LC201@ha
	mr 3,26
	la 4,.LC201@l(4)
	mr 5,15
	addi 6,31,4684
	addi 28,1,164
	bl _ZNK6idDict6GetIntEPKcS1_Ri
	.loc 4 777 0
	li 0,0
	.loc 4 779 0
	mr 3,31
	.loc 4 777 0
	stw 0,4688(31)
	addi 28,1,164
	.loc 4 779 0
	bl _ZN4idAI19LinkScriptVariablesEv
.LVL3043:
.LBB13771:
.LBB13772:
.LBB13773:
.LBB13774:
	.loc 11 241 0
	lis 4,.LC152@ha
	mr 3,26
	la 4,.LC152@l(4)
	addi 28,1,164
	bl _ZNK6idDict7FindKeyEPKc
.LVL3044:
	.loc 11 242 0
	mr. 9,3
	.loc 11 245 0
	mr 3,15
.LVL3045:
	.loc 11 242 0
	beq- 0,.L1607
.LVL3046:
.LBB13775:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3047:
	lwz 3,4(9)
.LVL3048:
.L1607:
.LBE13775:
.LBE13774:
.LBE13773:
	.loc 11 257 0
	bl atoi
.LBE13772:
.LBE13771:
	.loc 4 781 0
	lwz 9,192(31)
	cntlzw 3,3
.LBB13779:
.LBB13780:
	.loc 7 606 0
	li 0,0
.LBE13780:
.LBE13779:
	.loc 4 781 0
	srwi 3,3,5
	.loc 4 786 0
	addi 22,31,636
	.loc 4 781 0
	rlwimi 9,3,29,2,2
.LBB13782:
.LBB13781:
	.loc 7 606 0
	stw 0,5120(31)
.LBE13781:
.LBE13782:
	.loc 4 781 0
	stw 9,192(31)
.LVL3049:
	.loc 4 783 0
	li 9,1
	stb 9,4544(31)
	.loc 4 786 0
	mr 3,22
	.loc 4 784 0
	stb 0,4545(31)
	.loc 4 786 0
	li 4,1
	addi 28,1,164
	bl _ZN10idAnimator18RemoveOriginOffsetEb
	.loc 4 789 0
	mr 3,31
	addi 28,1,164
	bl _ZN7idActor14SetCombatModelEv
.LVL3050:
.LBB13783:
.LBB13784:
	.loc 11 280 0
	lis 4,.LC202@ha
	lis 5,.LC203@ha
	mr 3,26
	la 4,.LC202@l(4)
	la 5,.LC203@l(5)
	addi 6,1,108
	addi 28,1,164
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL3051:
.LBE13784:
.LBE13783:
.LBB13785:
.LBB13786:
	.loc 12 146 0
	lwz 0,108(1)
.LBE13786:
.LBE13785:
.LBB13790:
.LBB13791:
	.loc 11 280 0
	lis 4,.LC204@ha
	lis 5,.LC205@ha
	mr 3,26
.LBE13791:
.LBE13790:
.LBB13795:
.LBB13787:
	.loc 12 146 0
	stw 0,4760(31)
.LBE13787:
.LBE13795:
.LBB13796:
.LBB13792:
	.loc 11 280 0
	la 4,.LC204@l(4)
.LBE13792:
.LBE13796:
.LBB13797:
.LBB13788:
	.loc 12 147 0
	lwz 0,112(1)
.LBE13788:
.LBE13797:
.LBB13798:
.LBB13793:
	.loc 11 280 0
	la 5,.LC205@l(5)
	addi 6,1,96
	addi 28,1,164
.LBE13793:
.LBE13798:
.LBB13799:
.LBB13789:
	.loc 12 147 0
	stw 0,4764(31)
	.loc 12 148 0
	lwz 0,116(1)
	stw 0,4768(31)
.LVL3052:
.LBE13789:
.LBE13799:
.LBB13800:
.LBB13794:
	.loc 11 280 0
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL3053:
.LBE13794:
.LBE13800:
.LBB13801:
.LBB13802:
	.loc 12 146 0
	lwz 0,96(1)
.LBE13802:
.LBE13801:
	.loc 4 794 0
	addi 23,31,4784
.LVL3054:
.LBB13805:
.LBB13806:
	.loc 14 319 0
	lwz 30,4796(31)
.LBE13806:
.LBE13805:
.LBB13819:
.LBB13803:
	.loc 12 146 0
	stw 0,4772(31)
	.loc 12 147 0
	lwz 0,100(1)
.LBE13803:
.LBE13819:
.LBB13820:
.LBB13815:
	.loc 14 319 0
	cmpwi 7,30,0
.LBE13815:
.LBE13820:
.LBB13821:
.LBB13804:
	.loc 12 147 0
	stw 0,4776(31)
	.loc 12 148 0
	lwz 0,104(1)
	stw 0,4780(31)
.LBE13804:
.LBE13821:
.LBB13822:
.LBB13816:
	.loc 14 317 0
	li 0,1
	stw 0,4792(31)
	.loc 14 319 0
	beq- 7,.L1608
	.loc 14 321 0
	lwz 3,4784(31)
.LVL3055:
	.loc 14 323 0
	lwz 0,4788(31)
	cmpw 7,3,0
	beq- 7,.L1608
.LVL3056:
.LBB13807:
.LBB13808:
	.loc 14 375 0
	cmpwi 7,3,0
	ble- 7,.L1742
.LVL3057:
	.loc 14 386 0
	stw 3,4788(31)
	.loc 14 392 0
	slwi 3,3,2
	addi 28,1,164
	bl _Znaj
.LVL3058:
	.loc 14 393 0
	lwz 0,4784(31)
	.loc 14 392 0
	stw 3,4796(31)
.LVL3059:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L1610
	.loc 4 724 0
	addi 11,30,-4
.LBE13808:
.LBE13807:
.LBE13816:
.LBE13822:
.LBB13823:
.LBB13778:
.LBB13777:
.LBB13776:
	.loc 14 393 0
	li 9,0
	b .L1611
.LVL3060:
.L1743:
.LBE13776:
.LBE13777:
.LBE13778:
.LBE13823:
.LBB13824:
.LBB13817:
.LBB13813:
.LBB13811:
	lwz 3,4796(31)
.LVL3061:
.L1611:
	.loc 14 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 14 393 0
	addi 9,9,1
.LVL3062:
	.loc 14 394 0
	stwx 10,3,0
	.loc 14 393 0
	lwz 0,0(23)
	cmpw 7,9,0
	blt+ 7,.L1743
.LVL3063:
.L1610:
	.loc 14 399 0
	mr 3,30
	bl _ZdaPv
.LVL3064:
.L1608:
.LBE13811:
.LBE13813:
.LBE13817:
.LBE13824:
.LBB13825:
.LBB13826:
	.loc 14 319 0
	lwz 30,4812(31)
	.loc 14 317 0
	li 0,1
.LBE13826:
.LBE13825:
	.loc 4 795 0
	addi 24,31,4800
.LVL3065:
.LBB13843:
.LBB13841:
	.loc 14 317 0
	stw 0,4808(31)
	.loc 14 319 0
	cmpwi 7,30,0
	beq- 7,.L1612
	.loc 14 321 0
	lwz 3,4800(31)
.LVL3066:
	.loc 14 323 0
	lwz 0,4804(31)
	cmpw 7,3,0
	beq- 7,.L1612
.LVL3067:
.LBB13827:
.LBB13828:
	.loc 14 375 0
	cmpwi 7,3,0
	ble- 7,.L1744
.LVL3068:
	.loc 14 386 0
	stw 3,4804(31)
	.loc 14 392 0
	mulli 3,3,12
	addi 28,1,164
	bl _Znaj
.LVL3069:
	.loc 14 393 0
	lwz 0,4800(31)
	.loc 14 392 0
	stw 3,4812(31)
.LVL3070:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L1614
	li 11,0
	li 10,0
	b .L1615
.LVL3071:
.L1745:
	lwz 3,4812(31)
.LVL3072:
.L1615:
.LBB13829:
.LBB13830:
	.loc 12 146 0
	mr 9,30
.LBE13830:
.LBE13829:
	.loc 14 394 0
	add 8,3,11
.LVL3073:
.LBB13834:
.LBB13831:
	.loc 12 146 0
	lwzux 0,9,11
.LBE13831:
.LBE13834:
	.loc 14 393 0
	addi 10,10,1
.LVL3074:
.LBB13835:
.LBB13832:
	.loc 12 146 0
	stwx 0,3,11
.LBE13832:
.LBE13835:
	.loc 14 393 0
	addi 11,11,12
.LVL3075:
.LBB13836:
.LBB13833:
	.loc 12 147 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 12 148 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE13833:
.LBE13836:
	.loc 14 393 0
	lwz 0,0(24)
	cmpw 7,10,0
	blt+ 7,.L1745
.LVL3076:
.L1614:
	.loc 14 399 0
	mr 3,30
	bl _ZdaPv
.LVL3077:
.L1612:
.LBE13828:
.LBE13827:
.LBE13841:
.LBE13843:
	.loc 4 796 0
	lis 21,.LC206@ha
	mr 3,26
	la 21,.LC206@l(21)
	li 5,0
	mr 4,21
	addi 28,1,164
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL3078:
	.loc 4 797 0
	mr. 29,3
	addi 28,1,164
	beq- 0,.L1616
.LBB13844:
.LBB13845:
.LBB13846:
.LBB13847:
	.loc 12 148 0
	lis 11,.LC6@ha
.LBE13847:
.LBE13846:
.LBE13845:
.LBE13844:
	.loc 4 799 0
	lis 20,.LC207@ha
.LBB13912:
.LBB13913:
	.loc 11 280 0
	lis 18,.LC31@ha
.LBE13913:
.LBE13912:
	.loc 4 802 0
	lis 16,gameLocal@ha
	lis 17,.LC208@ha
.LBB13916:
.LBB13900:
.LBB13850:
.LBB13848:
	.loc 12 148 0
	lfs 29,.LC6@l(11)
.LBE13848:
.LBE13850:
.LBE13900:
.LBE13916:
.LBB13917:
.LBB13918:
	.loc 15 536 0
	li 19,0
.LBE13918:
.LBE13917:
	.loc 4 799 0
	la 20,.LC207@l(20)
.LBB13929:
.LBB13914:
	.loc 11 280 0
	la 18,.LC31@l(18)
.LBE13914:
.LBE13929:
.LBB13930:
.LBB13931:
.LBB13932:
	.loc 12 205 0
	lis 25,ang_zero@ha
.LBE13932:
.LBE13931:
.LBE13930:
.LBB13937:
.LBB13901:
.LBB13851:
.LBB13852:
	.loc 14 663 0
	li 14,16
.LBE13852:
.LBE13851:
.LBE13901:
.LBE13937:
	.loc 4 802 0
	la 16,gameLocal@l(16)
	la 17,.LC208@l(17)
.L1654:
	.loc 4 5138 0
	lwz 27,0(29)
.LVL3079:
.LBB13938:
.LBB13925:
.LBB13919:
.LBB13920:
	.loc 15 350 0
	lwz 0,172(1)
.LBE13920:
.LBE13919:
.LBE13925:
	.loc 4 5138 0
	lwz 30,0(27)
.LBB13926:
	.loc 15 534 0
	addi 4,30,1
.LVL3080:
.LBB13923:
.LBB13921:
	.loc 15 350 0
	cmpw 7,4,0
	bgt- 7,.L1746
.LVL3081:
.L1617:
.LBE13921:
.LBE13923:
	.loc 15 535 0
	lwz 4,4(27)
	mr 5,30
	lwz 3,168(1)
	bl memcpy
	.loc 15 536 0
	lwz 9,168(1)
.LBE13926:
.LBE13938:
	.loc 4 799 0
	mr 3,28
	mr 4,20
.LBB13939:
.LBB13927:
	.loc 15 536 0
	stbx 19,9,30
	.loc 15 537 0
	stw 30,164(1)
.LBE13927:
.LBE13939:
	.loc 4 799 0
	bl _ZN5idStr16StripLeadingOnceEPKc
.LVL3082:
	.loc 4 800 0
	lwz 4,4(28)
	mr 3,22
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 4 801 0
	cmpwi 7,3,-1
	.loc 4 800 0
	mr 30,3
.LVL3083:
	.loc 4 801 0
	beq- 7,.L1747
.LVL3084:
.LBB13940:
	.loc 4 5138 0
	lwz 9,0(29)
.LBE13940:
.LBB13941:
.LBB13915:
	.loc 11 280 0
	mr 3,26
.LVL3085:
	mr 5,18
	addi 6,1,84
	lwz 4,4(9)
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL3086:
.LBE13915:
.LBE13941:
.LBB13942:
.LBB13943:
	.loc 12 146 0
	lfs 31,84(1)
.LVL3087:
.LBE13943:
.LBE13942:
.LBB13945:
.LBB13935:
.LBB13933:
	.loc 12 205 0
	la 9,ang_zero@l(25)
	lfs 0,ang_zero@l(25)
.LBE13933:
.LBE13935:
.LBE13945:
.LBB13946:
.LBB13944:
	.loc 12 147 0
	lfs 30,88(1)
.LVL3088:
.LBE13944:
.LBE13946:
.LBB13947:
.LBB13936:
.LBB13934:
	.loc 12 205 0
	fcmpu 7,31,0
	bne- 7,.L1620
	lfs 0,4(9)
	fcmpu 7,30,0
	bne- 7,.L1620
	lfs 0,8(9)
	fcmpu 7,0,29
	beq- 7,.L1619
.L1620:
.LVL3089:
.LBE13934:
.LBE13936:
.LBE13947:
.LBB13948:
.LBB13949:
	.loc 14 655 0
	lwz 27,4796(31)
.LVL3090:
	cmpwi 7,27,0
	beq- 7,.L1704
	lwz 0,4784(31)
.LVL3091:
.L1739:
	lwz 9,4788(31)
.L1624:
.LBB13950:
	.loc 14 659 0
	cmpw 7,9,0
	beq- 7,.L1709
.L1740:
.LBB13951:
.LBB13952:
.LBB13953:
	.loc 14 399 0
	slwi 0,0,2
	add 27,27,0
.L1628:
.LBE13953:
.LBE13952:
.LBE13951:
.LBE13950:
	.loc 14 669 0
	stw 30,0(27)
.LBE13949:
.LBE13948:
.LBB13992:
.LBB13902:
	.loc 14 655 0
	lwz 30,4812(31)
.LVL3092:
.LBE13902:
.LBE13992:
.LBB13993:
.LBB13984:
	.loc 14 670 0
	lwz 9,4784(31)
.LBE13984:
.LBE13993:
.LBB13994:
.LBB13903:
	.loc 14 655 0
	cmpwi 7,30,0
.LBE13903:
.LBE13994:
.LBB13995:
.LBB13985:
	.loc 14 670 0
	addi 0,9,1
	stw 0,4784(31)
.LVL3093:
.LBE13985:
.LBE13995:
.LBB13996:
.LBB13904:
	.loc 14 655 0
	beq- 7,.L1637
	lwz 0,4800(31)
	lwz 9,4804(31)
.LVL3094:
.L1638:
.LBB13878:
	.loc 14 659 0
	cmpw 7,0,9
	beq- 7,.L1711
.L1741:
.LBB13873:
.LBB13853:
.LBB13854:
	.loc 14 399 0
	mulli 0,0,12
	add 30,30,0
.L1645:
.LVL3095:
.LBE13854:
.LBE13853:
.LBE13873:
.LBE13878:
.LBB13879:
.LBB13849:
	.loc 12 146 0
	stfs 31,0(30)
	.loc 12 147 0
	stfs 30,4(30)
	.loc 12 148 0
	stfs 29,8(30)
.LBE13849:
.LBE13879:
	.loc 14 670 0
	lwz 9,4800(31)
	addi 0,9,1
	stw 0,4800(31)
.LVL3096:
.L1619:
.LBE13904:
.LBE13996:
	.loc 4 814 0
	mr 3,26
	mr 4,21
	mr 5,29
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL3097:
	.loc 4 797 0
	mr. 29,3
	bne+ 0,.L1654
.LVL3098:
.L1616:
	.loc 4 818 0
	mr 3,31
.LVL3099:
	bl _ZN4idAI22CalculateAttackOffsetsEv
.LVL3100:
.LBB13997:
.LBB13998:
	.loc 11 280 0
	lis 4,.LC209@ha
	lis 5,.LC210@ha
	mr 3,26
	la 4,.LC209@l(4)
	la 5,.LC210@l(5)
	addi 6,1,72
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL3101:
.LBE13998:
.LBE13997:
.LBB13999:
.LBB14000:
	.loc 12 146 0
	lwz 0,72(1)
.LBE14000:
.LBE13999:
.LBB14004:
.LBB14005:
	.loc 11 280 0
	lis 4,.LC211@ha
	lis 5,.LC212@ha
	mr 3,26
.LBE14005:
.LBE14004:
.LBB14009:
.LBB14001:
	.loc 12 146 0
	stw 0,5088(31)
.LBE14001:
.LBE14009:
.LBB14010:
.LBB14006:
	.loc 11 280 0
	la 4,.LC211@l(4)
.LBE14006:
.LBE14010:
.LBB14011:
.LBB14002:
	.loc 12 147 0
	lwz 0,76(1)
.LBE14002:
.LBE14011:
.LBB14012:
.LBB14007:
	.loc 11 280 0
	la 5,.LC212@l(5)
	addi 6,1,60
.LBE14007:
.LBE14012:
.LBB14013:
.LBB14003:
	.loc 12 147 0
	stw 0,5092(31)
	.loc 12 148 0
	lwz 0,80(1)
	stw 0,5096(31)
.LVL3102:
.LBE14003:
.LBE14013:
.LBB14014:
.LBB14008:
	.loc 11 280 0
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL3103:
.LBE14008:
.LBE14014:
.LBB14015:
.LBB14016:
	.loc 12 146 0
	lwz 0,60(1)
.LBE14016:
.LBE14015:
.LBB14018:
.LBB14019:
.LBB14020:
.LBB14021:
	.loc 11 241 0
	lis 4,.LC213@ha
	mr 3,26
	la 4,.LC213@l(4)
.LBE14021:
.LBE14020:
.LBE14019:
.LBE14018:
.LBB14031:
.LBB14017:
	.loc 12 146 0
	stw 0,5100(31)
	.loc 12 147 0
	lwz 0,64(1)
	stw 0,5104(31)
	.loc 12 148 0
	lwz 0,68(1)
	stw 0,5108(31)
.LVL3104:
.LBE14017:
.LBE14031:
.LBB14032:
.LBB14027:
.LBB14025:
.LBB14023:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL3105:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1712
.LVL3106:
.LBB14022:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL3107:
.L1655:
.LBE14022:
.LBE14023:
.LBE14025:
	.loc 11 249 0
	bl atof
.LBE14027:
.LBE14032:
.LBB14033:
.LBB14034:
.LBB14035:
.LBB14036:
	.loc 11 241 0
	lis 4,.LC214@ha
.LBE14036:
.LBE14035:
.LBE14034:
.LBE14033:
.LBB14049:
.LBB14028:
	.loc 11 249 0
	frsp 1,1
.LBE14028:
.LBE14049:
.LBB14050:
.LBB14044:
.LBB14041:
.LBB14038:
	.loc 11 241 0
	mr 3,26
	la 4,.LC214@l(4)
.LBE14038:
.LBE14041:
.LBE14044:
.LBE14050:
.LBB14051:
.LBB14029:
	.loc 11 249 0
	stfs 1,4816(31)
.LVL3108:
.LBE14029:
.LBE14051:
.LBB14052:
.LBB14045:
.LBB14042:
.LBB14039:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL3109:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1713
.LVL3110:
.LBB14037:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL3111:
.L1656:
.LBE14037:
.LBE14039:
.LBE14042:
	.loc 11 249 0
	bl atof
.LBE14045:
.LBE14052:
.LBB14053:
.LBB14054:
.LBB14055:
.LBB14056:
	.loc 11 241 0
	lis 4,.LC215@ha
.LBE14056:
.LBE14055:
.LBE14054:
.LBE14053:
.LBB14069:
.LBB14046:
	.loc 11 249 0
	frsp 1,1
.LBE14046:
.LBE14069:
.LBB14070:
.LBB14064:
.LBB14061:
.LBB14058:
	.loc 11 241 0
	mr 3,26
	la 4,.LC215@l(4)
.LBE14058:
.LBE14061:
.LBE14064:
.LBE14070:
.LBB14071:
.LBB14047:
	.loc 11 249 0
	stfs 1,4820(31)
.LVL3112:
.LBE14047:
.LBE14071:
.LBB14072:
.LBB14065:
.LBB14062:
.LBB14059:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL3113:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1714
.LVL3114:
.LBB14057:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL3115:
.L1657:
.LBE14057:
.LBE14059:
.LBE14062:
	.loc 11 249 0
	bl atof
.LBE14065:
.LBE14072:
.LBB14073:
.LBB14074:
.LBB14075:
.LBB14076:
	.loc 11 241 0
	lis 4,.LC216@ha
.LBE14076:
.LBE14075:
.LBE14074:
.LBE14073:
.LBB14089:
.LBB14066:
	.loc 11 249 0
	frsp 1,1
.LBE14066:
.LBE14089:
.LBB14090:
.LBB14084:
.LBB14081:
.LBB14078:
	.loc 11 241 0
	mr 3,26
	la 4,.LC216@l(4)
.LBE14078:
.LBE14081:
.LBE14084:
.LBE14090:
.LBB14091:
.LBB14067:
	.loc 11 249 0
	stfs 1,4824(31)
.LVL3116:
.LBE14067:
.LBE14091:
.LBB14092:
.LBB14085:
.LBB14082:
.LBB14079:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL3117:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1715
.LVL3118:
.LBB14077:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL3119:
.L1658:
.LBE14077:
.LBE14079:
.LBE14082:
	.loc 11 249 0
	bl atof
.LBE14085:
.LBE14092:
.LBB14093:
.LBB14094:
.LBB14095:
.LBB14096:
	.loc 11 241 0
	lis 4,.LC217@ha
.LBE14096:
.LBE14095:
.LBE14094:
.LBE14093:
.LBB14105:
.LBB14086:
	.loc 11 249 0
	frsp 1,1
.LBE14086:
.LBE14105:
.LBB14106:
.LBB14102:
.LBB14100:
.LBB14098:
	.loc 11 241 0
	mr 3,26
	la 4,.LC217@l(4)
.LBE14098:
.LBE14100:
.LBE14102:
.LBE14106:
.LBB14107:
.LBB14087:
	.loc 11 249 0
	stfs 1,4828(31)
.LVL3120:
.LBE14087:
.LBE14107:
.LBB14108:
.LBB14103:
.LBB14101:
.LBB14099:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL3121:
	.loc 11 242 0
	mr. 9,3
	.loc 11 245 0
	lis 11,.LC233@ha
	lwz 3,.LC233@l(11)
.LVL3122:
	.loc 11 242 0
	beq- 0,.L1659
.LVL3123:
.LBB14097:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3124:
	lwz 3,4(9)
.LVL3125:
.L1659:
.LBE14097:
.LBE14099:
.LBE14101:
	.loc 11 249 0
	bl atof
.LVL3126:
.LBE14103:
.LBE14108:
	.loc 4 826 0
	lis 11,_ZN6idMath8M_SEC2MSE@ha
.LBB14109:
.LBB14104:
	.loc 11 249 0
	frsp 1,1
.LVL3127:
.LBE14104:
.LBE14109:
	.loc 4 826 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(11)
.LBB14110:
.LBB14111:
	.loc 8 825 0
	addi 9,31,4832
.LBE14111:
.LBE14110:
	.loc 4 828 0
	lis 4,.LC218@ha
	mr 3,22
	la 4,.LC218@l(4)
	.loc 4 826 0
	fmuls 0,1,0
.LVL3128:
.LBB14113:
.LBB14112:
	.loc 8 825 0
	fctiwz 0,0
.LVL3129:
	stfiwx 0,0,9
.LBE14112:
.LBE14113:
	.loc 4 828 0
	bl _ZNK10idAnimator14GetJointHandleEPKc
.LBB14114:
.LBB14115:
.LBB14116:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 635 0
	lis 29,gameLocal@ha
.LVL3130:
.LBE14116:
.LBE14115:
.LBE14114:
	.loc 4 828 0
	stw 3,5076(31)
.LVL3131:
.LBB14136:
.LBB14119:
.LBB14117:
	.loc 7 635 0
	la 29,gameLocal@l(29)
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3132:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1748
.LVL3133:
.L1660:
.LBE14117:
.LBE14119:
.LBB14120:
.LBB14121:
	.loc 11 241 0
	lis 4,.LC219@ha
	mr 3,26
	la 4,.LC219@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3134:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1718
.LVL3135:
.LBB14122:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL3136:
.L1663:
.LBE14122:
.LBE14121:
.LBE14120:
	.loc 4 842 0
	lbz 0,0(30)
	cmpwi 7,0,0
	beq+ 7,.L1662
	.loc 4 843 0
	mr 3,22
.LVL3137:
	mr 4,30
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 4 844 0
	cmpwi 7,3,-1
	.loc 4 843 0
	stw 3,5112(31)
	.loc 4 844 0
	bne+ 7,.L1662
	.loc 4 845 0
	lis 4,.LC221@ha
	lwz 6,72(31)
	mr 3,29
	la 4,.LC221@l(4)
	mr 5,30
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	b .L1662
.LVL3138:
.L1746:
.LBE14136:
.LBB14137:
.LBB13928:
.LBB13924:
.LBB13922:
	.loc 15 351 0
	mr 3,28
.LVL3139:
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL3140:
	b .L1617
.LVL3141:
.L1747:
.LBE13922:
.LBE13924:
.LBE13928:
.LBE14137:
	.loc 4 802 0
	lwz 5,4(28)
	mr 3,16
.LVL3142:
	lwz 6,72(31)
	mr 4,17
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	b .L1619
.LVL3143:
.L1711:
	lwz 3,4808(31)
.LBB14138:
.LBB13905:
.LBB13880:
	.loc 14 659 0
	mr 10,0
.L1640:
.LBB13874:
	.loc 14 662 0
	cmpwi 7,3,0
	mr 9,3
	bne- 7,.L1646
	.loc 14 663 0
	stw 14,4808(31)
	li 9,16
.L1646:
	.loc 14 665 0
	add 11,9,0
.LVL3144:
	.loc 14 666 0
	divw 11,11,9
.LVL3145:
.LBB13869:
.LBB13865:
	.loc 14 375 0
	mullw. 9,11,9
.LVL3146:
	ble- 0,.L1749
	.loc 14 380 0
	cmpw 7,9,0
	beq- 7,.L1750
.LVL3147:
	.loc 14 387 0
	cmpw 7,9,10
	.loc 14 386 0
	stw 9,4804(31)
	.loc 14 387 0
	bge- 7,.L1650
	.loc 14 388 0
	stw 9,4800(31)
.L1650:
	.loc 14 392 0
	mulli 3,9,12
	bl _Znaj
.LVL3148:
	stw 3,4812(31)
.LVL3149:
	.loc 14 393 0
	lwz 0,0(24)
	cmpwi 7,0,0
	ble- 7,.L1651
	li 11,0
	li 10,0
	b .L1652
.LVL3150:
.L1751:
	lwz 3,4812(31)
.LVL3151:
.L1652:
.LBB13855:
.LBB13856:
	.loc 12 146 0
	mr 9,30
.LBE13856:
.LBE13855:
	.loc 14 394 0
	add 8,3,11
.LVL3152:
.LBB13860:
.LBB13857:
	.loc 12 146 0
	lwzux 0,9,11
.LBE13857:
.LBE13860:
	.loc 14 393 0
	addi 10,10,1
.LVL3153:
.LBB13861:
.LBB13858:
	.loc 12 146 0
	stwx 0,3,11
.LBE13858:
.LBE13861:
	.loc 14 393 0
	addi 11,11,12
.LVL3154:
.LBB13862:
.LBB13859:
	.loc 12 147 0
	lwz 0,4(9)
	stw 0,4(8)
	.loc 12 148 0
	lwz 0,8(9)
	stw 0,8(8)
.LBE13859:
.LBE13862:
	.loc 14 393 0
	lwz 0,0(24)
	cmpw 7,10,0
	blt+ 7,.L1751
.LVL3155:
.L1651:
	.loc 14 398 0
	cmpwi 7,30,0
	beq- 7,.L1752
	.loc 14 399 0
	mr 3,30
	bl _ZdaPv
	lwz 0,4800(31)
	lwz 30,4812(31)
.LVL3156:
	b .L1741
.LVL3157:
.L1709:
	lwz 0,4792(31)
.LBE13865:
.LBE13869:
.LBE13874:
.LBE13880:
.LBE13905:
.LBE14138:
.LBB14139:
.LBB13986:
.LBB13970:
	.loc 14 659 0
	mr 10,9
.L1622:
.LBB13966:
	.loc 14 662 0
	cmpwi 7,0,0
	bne- 7,.L1629
	.loc 14 663 0
	stw 14,4792(31)
	li 0,16
.L1629:
	.loc 14 665 0
	add 11,0,10
.LVL3158:
	.loc 14 666 0
	divw 11,11,0
.LVL3159:
.LBB13961:
.LBB13956:
	.loc 14 375 0
	mullw. 0,11,0
.LVL3160:
	ble- 0,.L1753
	.loc 14 380 0
	cmpw 7,10,0
	beq- 7,.L1754
.LVL3161:
	.loc 14 387 0
	cmpw 7,0,9
	.loc 14 386 0
	stw 0,4788(31)
	.loc 14 387 0
	bge- 7,.L1633
	.loc 14 388 0
	stw 0,4784(31)
.L1633:
	.loc 14 392 0
	slwi 3,0,2
	bl _Znaj
.LVL3162:
	stw 3,4796(31)
.LVL3163:
	.loc 14 393 0
	lwz 0,0(23)
	cmpwi 7,0,0
	ble- 7,.L1634
	.loc 4 724 0
	addi 11,27,-4
.LBE13956:
.LBE13961:
	.loc 14 393 0
	li 9,0
	b .L1635
.LVL3164:
.L1755:
.LBB13962:
.LBB13957:
	lwz 3,4796(31)
.LVL3165:
.L1635:
	.loc 14 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 14 393 0
	addi 9,9,1
.LVL3166:
	.loc 14 394 0
	stwx 10,3,0
	.loc 14 393 0
	lwz 0,0(23)
	cmpw 7,9,0
	blt+ 7,.L1755
.LVL3167:
.L1634:
	.loc 14 398 0
	cmpwi 7,27,0
	beq- 7,.L1756
	.loc 14 399 0
	mr 3,27
	bl _ZdaPv
	lwz 0,4784(31)
	lwz 27,4796(31)
.LVL3168:
	b .L1740
.L1704:
.LBE13957:
.LBE13962:
.LBE13966:
.LBE13970:
	.loc 14 656 0
	lwz 9,4792(31)
.LBB13971:
.LBB13972:
	.loc 14 375 0
	cmpwi 7,9,0
.LBE13972:
.LBE13971:
	.loc 14 656 0
	mr 0,9
.LVL3169:
.LBB13978:
.LBB13975:
	.loc 14 375 0
	ble- 7,.L1757
	.loc 14 380 0
	lwz 11,4788(31)
	cmpw 7,9,11
	beq- 7,.L1758
.LVL3170:
	.loc 14 387 0
	lwz 9,4784(31)
	.loc 14 386 0
	stw 0,4788(31)
	.loc 14 387 0
	cmpw 7,0,9
	bge- 7,.L1625
	.loc 14 388 0
	stw 0,4784(31)
.L1625:
	.loc 14 392 0
	slwi 3,0,2
	bl _Znaj
.LVL3171:
	stw 3,4796(31)
.LVL3172:
	mr 27,3
	.loc 14 393 0
	li 9,0
	li 11,0
	lwz 0,0(23)
	cmpwi 7,0,0
	bgt+ 7,.L1735
	b .L1739
.LVL3173:
.L1759:
	lwz 27,4796(31)
.LVL3174:
.L1735:
	.loc 14 394 0
	lwz 0,0(9)
	.loc 14 393 0
	addi 11,11,1
.LVL3175:
	.loc 14 394 0
	stwx 0,27,9
	.loc 14 393 0
	addi 9,9,4
	lwz 0,0(23)
	cmpw 7,11,0
	blt+ 7,.L1759
	lwz 9,4788(31)
	lwz 27,4796(31)
	b .L1624
.LVL3176:
.L1637:
.LBE13975:
.LBE13978:
.LBE13986:
.LBE14139:
.LBB14140:
.LBB13906:
	.loc 14 656 0
	lwz 3,4808(31)
.LBB13881:
.LBB13882:
	.loc 14 375 0
	cmpwi 7,3,0
.LBE13882:
.LBE13881:
	.loc 14 656 0
	mr 9,3
.LVL3177:
.LBB13894:
.LBB13891:
	.loc 14 375 0
	ble- 7,.L1760
	.loc 14 380 0
	lwz 0,4804(31)
	cmpw 7,3,0
	lwz 0,4800(31)
	beq- 7,.L1638
.LVL3178:
	.loc 14 387 0
	cmpw 7,3,0
	.loc 14 386 0
	stw 3,4804(31)
	.loc 14 387 0
	bge- 7,.L1642
	.loc 14 388 0
	stw 3,4800(31)
.L1642:
	.loc 14 392 0
	mulli 3,3,12
	bl _Znaj
.LVL3179:
	stw 3,4812(31)
.LVL3180:
	mr 30,3
	.loc 14 393 0
	li 9,0
	li 11,0
	lwz 0,0(24)
	cmpwi 7,0,0
	bgt+ 7,.L1736
	b .L1772
.LVL3181:
.L1762:
	lwz 30,4812(31)
.LVL3182:
.L1736:
.LBB13883:
.LBB13884:
	.loc 12 146 0
	lwz 0,0(9)
.LBE13884:
.LBE13883:
	.loc 14 394 0
	add 10,30,9
.LVL3183:
	.loc 14 393 0
	addi 11,11,1
.LVL3184:
.LBB13887:
.LBB13885:
	.loc 12 146 0
	stwx 0,30,9
	.loc 12 147 0
	lwz 0,4(9)
	stw 0,4(10)
	.loc 12 148 0
	lwz 0,8(9)
.LBE13885:
.LBE13887:
	.loc 14 393 0
	addi 9,9,12
.LVL3185:
.LBB13888:
.LBB13886:
	.loc 12 148 0
	stw 0,8(10)
.LBE13886:
.LBE13888:
	.loc 14 393 0
	lwz 0,0(24)
	cmpw 7,11,0
	blt+ 7,.L1762
	lwz 9,4804(31)
.LVL3186:
	lwz 30,4812(31)
	b .L1638
.LVL3187:
.L1754:
.LBE13891:
.LBE13894:
.LBE13906:
.LBE14140:
.LBB14141:
.LBB13987:
.LBB13979:
.LBB13967:
.LBB13963:
.LBB13958:
	.loc 14 380 0
	slwi 9,9,2
	add 27,27,9
	b .L1628
.LVL3188:
.L1750:
.LBE13958:
.LBE13963:
.LBE13967:
.LBE13979:
.LBE13987:
.LBE14141:
.LBB14142:
.LBB13907:
.LBB13895:
.LBB13875:
.LBB13870:
.LBB13866:
	mulli 10,10,12
	add 30,30,10
	b .L1645
.LVL3189:
.L1753:
.LBE13866:
.LBE13870:
.LBE13875:
.LBE13895:
.LBE13907:
.LBE14142:
.LBB14143:
.LBB13988:
.LBB13980:
.LBB13968:
.LBB13964:
.LBB13959:
.LBB13954:
.LBB13955:
	.loc 14 193 0
	cmpwi 7,27,0
	beq- 7,.L1631
	.loc 14 194 0
	mr 3,27
	bl _ZdaPv
.LVL3190:
.L1631:
	.loc 14 197 0
	li 0,0
	.loc 14 199 0
	li 27,0
	.loc 14 197 0
	stw 0,4796(31)
	.loc 14 198 0
	stw 0,4784(31)
	.loc 14 199 0
	stw 0,4788(31)
	b .L1628
.LVL3191:
.L1749:
.LBE13955:
.LBE13954:
.LBE13959:
.LBE13964:
.LBE13968:
.LBE13980:
.LBE13988:
.LBE14143:
.LBB14144:
.LBB13908:
.LBB13896:
.LBB13876:
.LBB13871:
.LBB13867:
.LBB13863:
.LBB13864:
	.loc 14 193 0
	cmpwi 7,30,0
	beq- 7,.L1648
	.loc 14 194 0
	mr 3,30
	bl _ZdaPv
.LVL3192:
.L1648:
	.loc 14 197 0
	li 0,0
	.loc 14 199 0
	li 30,0
	.loc 14 197 0
	stw 0,4812(31)
	.loc 14 198 0
	stw 0,4800(31)
	.loc 14 199 0
	stw 0,4804(31)
	b .L1645
.LVL3193:
.L1605:
.LBE13864:
.LBE13863:
.LBE13867:
.LBE13871:
.LBE13876:
.LBE13896:
.LBE13908:
.LBE14144:
	.loc 4 762 0
	li 0,3
.LVL3194:
	stw 0,4676(31)
	b .L1606
.LVL3195:
.L1604:
	.loc 4 765 0
	li 0,0
	stw 0,4676(31)
	b .L1606
.LVL3196:
.L1752:
.LBB14145:
.LBB13909:
.LBB13897:
.LBB13877:
.LBB13872:
.LBB13868:
	.loc 14 398 0
	lwz 0,4800(31)
	lwz 30,4812(31)
.LVL3197:
	mulli 0,0,12
	add 30,30,0
	b .L1645
.LVL3198:
.L1756:
.LBE13868:
.LBE13872:
.LBE13877:
.LBE13897:
.LBE13909:
.LBE14145:
.LBB14146:
.LBB13989:
.LBB13981:
.LBB13969:
.LBB13965:
.LBB13960:
	lwz 0,4784(31)
	lwz 27,4796(31)
.LVL3199:
	slwi 0,0,2
	add 27,27,0
	b .L1628
.LVL3200:
.L1748:
.LBE13960:
.LBE13965:
.LBE13969:
.LBE13981:
.LBE13989:
.LBE14146:
.LBB14147:
.LBB14124:
.LBB14118:
	.loc 7 636 0
	addi 9,9,132
.LVL3201:
	slwi 9,9,2
.LVL3202:
	add 9,29,9
	lwz 3,4(9)
.LBE14118:
.LBE14124:
	.loc 4 830 0
	cmpwi 7,3,0
	beq- 7,.L1660
.LVL3203:
.LBB14125:
	.loc 4 831 0
	lwz 9,0(3)
	lwz 0,92(9)
	mtctr 0
	bctrl
.LBB14126:
.LBB14127:
	.loc 11 241 0
	lis 4,.LC219@ha
.LBE14127:
.LBE14126:
	.loc 4 831 0
	mr 27,3
.LVL3204:
.LBB14131:
.LBB14129:
	.loc 11 241 0
	la 4,.LC219@l(4)
	mr 3,26
.LVL3205:
	bl _ZNK6idDict7FindKeyEPKc
.LVL3206:
	.loc 11 242 0 discriminator 1
	cmpwi 0,3,0
	beq- 0,.L1717
.LVL3207:
.LBB14128:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL3208:
.L1661:
.LBE14128:
.LBE14129:
.LBE14131:
	.loc 4 834 0
	lbz 0,0(30)
	cmpwi 7,0,0
	bne- 7,.L1763
.LVL3209:
.L1662:
.LBE14125:
.LBE14147:
.LBB14148:
.LBB14149:
	.loc 11 241 0
	lis 4,.LC222@ha
	mr 3,26
	la 4,.LC222@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3210:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1719
.LVL3211:
.LBB14150:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL3212:
.L1664:
.LBE14150:
.LBE14149:
.LBE14148:
	.loc 4 851 0
	lbz 0,0(30)
	cmpwi 7,0,0
	beq- 7,.L1665
	.loc 4 852 0
	mr 3,22
.LVL3213:
	mr 4,30
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 4 853 0
	cmpwi 7,3,-1
	.loc 4 852 0
	stw 3,5116(31)
	.loc 4 853 0
	beq- 7,.L1764
.L1665:
.LVL3214:
.LBB14152:
.LBB14153:
	.loc 11 241 0
	lis 4,.LC223@ha
	mr 3,26
	la 4,.LC223@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3215:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1720
.LVL3216:
.LBB14154:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL3217:
.L1666:
.LBE14154:
.LBE14153:
.LBE14152:
	.loc 4 859 0
	lbz 0,0(30)
	cmpwi 7,0,0
	beq- 7,.L1667
	.loc 4 860 0
	mr 3,22
.LVL3218:
	mr 4,30
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 4 861 0
	cmpwi 7,3,-1
	.loc 4 860 0
	stw 3,4492(31)
	.loc 4 861 0
	beq- 7,.L1765
.L1667:
	.loc 4 866 0
	mr 3,31
	bl _ZN4idAI15InitMuzzleFlashEv
	.loc 4 868 0
	addi 30,31,4216
	mr 4,31
	mr 3,30
	bl _ZN14idPhysics_Base7SetSelfEP8idEntity
	.loc 4 869 0
	mr 3,31
	bl _ZNK8idEntity7GetNameEv
	mr 5,3
	lis 3,.LC224@ha
	la 3,.LC224@l(3)
	mr 4,31
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 4 870 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 4 870 0 is_stmt 0 discriminator 1
	mr 25,3
	li 3,140
	bl _Znwj
.LEHE53:
	mr 4,25
	mr 27,3
.LEHB54:
	bl _ZN11idClipModelC1EPKS_
.LEHE54:
	lis 9,.LC0@ha
	mr 3,30
	lfs 1,.LC0@l(9)
	mr 4,27
	li 5,0
	li 6,1
.LEHB55:
	bl _ZN15idPhysics_Actor12SetClipModelEP11idClipModelfib
.LVL3219:
.LBB14156:
.LBB14157:
.LBB14158:
.LBB14159:
	.loc 11 241 0 is_stmt 1
	lis 4,.LC225@ha
	mr 3,26
	la 4,.LC225@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3220:
	.loc 11 242 0
	mr. 9,3
	.loc 11 245 0
	lis 11,.LC234@ha
	lwz 3,.LC234@l(11)
.LVL3221:
	.loc 11 242 0
	beq- 0,.L1668
.LVL3222:
.LBB14160:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3223:
	lwz 3,4(9)
.LVL3224:
.L1668:
.LBE14160:
.LBE14159:
.LBE14158:
	.loc 11 249 0
	bl atof
.LBE14157:
.LBE14156:
	.loc 4 871 0
	mr 3,30
	frsp 1,1
	li 4,-1
	bl _ZN15idPhysics_Actor7SetMassEfi
.LVL3225:
.LBB14161:
.LBB14162:
.LBB14163:
.LBB14164:
	.loc 11 241 0
	lis 4,.LC151@ha
	mr 3,26
	la 4,.LC151@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3226:
	.loc 11 242 0
	mr. 9,3
	.loc 11 245 0
	mr 3,15
.LVL3227:
	.loc 11 242 0
	beq- 0,.L1669
.LVL3228:
.LBB14165:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3229:
	lwz 3,4(9)
.LVL3230:
.L1669:
.LBE14165:
.LBE14164:
.LBE14163:
	.loc 11 257 0
	bl atoi
.LBE14162:
.LBE14161:
	.loc 4 873 0
	cmpwi 7,3,0
	bne- 7,.L1766
	.loc 4 877 0
	lbz 0,2420(31)
	.loc 4 878 0
	mr 3,30
	.loc 4 877 0
	cmpwi 7,0,0
	beq- 7,.L1672
	.loc 4 878 0
	li 4,257
	li 5,-1
	bl _ZN15idPhysics_Actor11SetContentsEii
.L1673:
	.loc 4 882 0
	mr 3,30
	li 4,273
	li 5,-1
	bl _ZN14idPhysics_Base11SetClipMaskEii
.L1671:
	.loc 4 886 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL3231:
.LBB14166:
.LBB14167:
	.loc 6 452 0 discriminator 1
	lis 9,.LC6@ha
	lfs 11,0(3)
	lfs 0,.LC6@l(9)
	lis 9,.LC226@ha
	lfs 12,4(3)
.LBE14167:
.LBE14166:
	.loc 4 886 0 discriminator 1
	addi 4,1,48
.LBB14173:
.LBB14170:
	.loc 6 452 0 discriminator 1
	lfs 10,8(3)
.LBE14170:
.LBE14173:
	.loc 4 886 0 discriminator 1
	li 5,-1
.LBB14174:
.LBB14171:
	.loc 6 452 0 discriminator 1
	lfs 13,.LC226@l(9)
	fadds 12,12,0
	fadds 0,11,0
.LBE14171:
.LBE14174:
	.loc 4 886 0 discriminator 1
	mr 3,30
.LVL3232:
.LBB14175:
.LBB14172:
	.loc 6 452 0 discriminator 1
	fadds 13,10,13
.LVL3233:
.LBB14168:
.LBB14169:
	.loc 6 397 0 discriminator 1
	stfs 12,52(1)
	.loc 6 396 0 discriminator 1
	stfs 0,48(1)
	.loc 6 398 0 discriminator 1
	stfs 13,56(1)
.LBE14169:
.LBE14168:
.LBE14172:
.LBE14175:
	.loc 4 886 0 discriminator 1
	bl _ZN17idPhysics_Monster9SetOriginERK6idVec3i
.LVL3234:
.LBB14176:
	.loc 4 888 0
	lwz 0,4684(31)
	cmpwi 7,0,0
	beq- 7,.L1674
	.loc 4 889 0
	lis 4,vec3_origin@ha
	mr 3,30
	la 4,vec3_origin@l(4)
	bl _ZN15idPhysics_Actor10SetGravityERK6idVec3
.L1675:
.LBE14176:
	.loc 4 896 0
	mr 3,31
	mr 4,30
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
	.loc 4 898 0
	mr 3,30
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
.LVL3235:
.LBB14192:
.LBB14193:
.LBB14194:
.LBB14195:
	.loc 6 435 0
	lfs 0,2272(31)
	lfs 12,4(3)
.LBE14195:
.LBE14194:
.LBB14199:
.LBB14200:
	lfs 13,16(3)
.LBE14200:
.LBE14199:
.LBB14202:
.LBB14203:
	lfs 11,28(3)
.LBE14203:
.LBE14202:
.LBB14205:
.LBB14196:
	fmuls 12,0,12
.LBE14196:
.LBE14205:
.LBB14206:
.LBB14201:
	fmuls 13,0,13
.LBE14201:
.LBE14206:
	lfs 8,0(3)
.LBB14207:
.LBB14204:
	fmuls 11,0,11
.LBE14204:
.LBE14207:
	lfs 9,12(3)
.LBB14208:
.LBB14197:
	lfs 0,2268(31)
.LBE14197:
.LBE14208:
	lfs 10,24(3)
	fmadds 12,0,8,12
	lfs 8,8(3)
	fmadds 13,0,9,13
	lfs 9,20(3)
	fmadds 11,0,10,11
.LBB14209:
.LBB14198:
	lfs 0,2276(31)
.LBE14198:
.LBE14209:
	lfs 10,32(3)
.LBE14193:
.LBE14192:
	.loc 4 899 0
	addi 3,1,120
.LVL3236:
.LBB14211:
.LBB14210:
	.loc 6 435 0
	fmadds 12,0,8,12
	fmadds 13,0,9,13
	fmadds 0,0,10,11
	.loc 13 629 0
	stfs 12,120(1)
.LVL3237:
	.loc 13 630 0
	stfs 13,124(1)
.LVL3238:
	.loc 13 631 0
	stfs 0,128(1)
.LBE14210:
.LBE14211:
	.loc 4 899 0
	bl _ZNK6idVec35ToYawEv
.LBB14212:
.LBB14213:
.LBB14214:
.LBB14215:
	.loc 8 904 0 discriminator 1
	lis 27,.LC91@ha
.LBE14215:
.LBE14214:
.LBE14213:
.LBE14212:
	.loc 4 899 0 discriminator 1
	fmr 31,1
.LBB14222:
.LBB14220:
.LBB14218:
.LBB14216:
	.loc 8 904 0 discriminator 1
	lfs 0,.LC91@l(27)
.LBE14216:
.LBE14218:
.LBE14220:
.LBE14222:
	.loc 4 899 0 discriminator 1
	stfs 1,4192(31)
.LVL3239:
.LBB14223:
.LBB14221:
.LBB14219:
.LBB14217:
	.loc 8 904 0 discriminator 1
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L1676
	.loc 8 904 0 is_stmt 0
	lis 11,.LC6@ha
	lfs 0,.LC6@l(11)
	fcmpu 7,1,0
	bnl- 7,.L1677
.L1676:
	.loc 8 905 0 is_stmt 1
	lfs 30,.LC91@l(27)
	fdivs 1,31,30
.LVL3240:
	bl floor
	fmr 0,31
	.loc 4 724 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,30,0
.LVL3241:
	frsp 31,31
.LVL3242:
.L1677:
.LBE14217:
.LBE14219:
	.loc 8 912 0
	lis 9,.LC84@ha
	lfs 0,.LC84@l(9)
	fcmpu 7,31,0
	bng- 7,.L1679
	.loc 8 913 0
	lfs 0,.LC91@l(27)
	fsubs 31,31,0
.LVL3243:
.L1679:
.LBE14221:
.LBE14223:
	.loc 4 902 0
	li 0,0
	.loc 4 900 0
	stfs 31,4188(31)
	.loc 4 902 0
	stw 0,4032(31)
	.loc 4 904 0
	mr 3,31
	bl _ZN4idAI6SetAASEv
.LEHE55:
.LVL3244:
.LBB14224:
.LBB14225:
	.loc 7 606 0
	li 0,0
.LBE14225:
.LBE14224:
.LBB14227:
.LBB14228:
.LBB14229:
	.loc 15 357 0
	li 9,20
.LBE14229:
.LBE14228:
.LBE14227:
.LBB14232:
.LBB14233:
	.loc 11 231 0
	lis 4,.LC25@ha
.LBE14233:
.LBE14232:
.LBB14254:
.LBB14226:
	.loc 7 606 0
	stw 0,4624(31)
.LBE14226:
.LBE14254:
	.loc 4 907 0
	stw 0,4584(31)
.LBB14255:
.LBB14247:
	.loc 11 231 0
	mr 3,26
.LBE14247:
.LBE14255:
	.loc 4 908 0
	stw 0,4588(31)
.LVL3245:
.LBB14256:
.LBB14248:
	.loc 11 231 0
	la 4,.LC25@l(4)
.LBE14248:
.LBE14256:
.LBB14257:
.LBB14231:
.LBB14230:
	.loc 15 357 0
	stw 9,140(1)
	.loc 15 358 0
	addi 9,1,144
	.loc 15 356 0
	stw 0,132(1)
	addi 24,1,132
.LVL3246:
	.loc 15 358 0
	stw 9,136(1)
	.loc 15 359 0
	stb 0,144(1)
.LVL3247:
.LEHB56:
.LBE14230:
.LBE14231:
.LBE14257:
.LBB14258:
.LBB14249:
	.loc 11 231 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL3248:
	.loc 11 232 0
	cmpwi 0,3,0
	beq- 0,.L1681
.LBE14249:
	.loc 4 5138 0
	lwz 27,4(3)
.LVL3249:
	addi 24,1,132
.LBB14250:
.LBB14234:
.LBB14235:
.LBB14236:
.LBB14237:
	.loc 15 350 0
	lwz 0,140(1)
.LBE14237:
.LBE14236:
.LBE14235:
	.loc 4 5138 0
	lwz 25,0(27)
.LBB14242:
	.loc 15 534 0
	addi 4,25,1
.LVL3250:
.LBB14240:
.LBB14238:
	.loc 15 350 0
	cmpw 7,4,0
	bgt- 7,.L1767
.LVL3251:
.L1682:
.LBE14238:
.LBE14240:
	.loc 15 535 0
	lwz 3,136(1)
	mr 5,25
	lwz 4,4(27)
	bl memcpy
.LBE14242:
.LBE14234:
.LBE14250:
.LBE14258:
	.loc 4 910 0
	cmpwi 7,25,0
.LBB14259:
.LBB14251:
.LBB14245:
.LBB14243:
	.loc 15 536 0
	lwz 9,136(1)
	li 0,0
	stbx 0,9,25
	.loc 15 537 0
	stw 25,132(1)
.LBE14243:
.LBE14245:
.LBE14251:
.LBE14259:
	.loc 4 910 0
	beq- 7,.L1705
.LVL3252:
	.loc 4 911 0 discriminator 4
	lwz 4,4(24)
	mr 3,29
	li 5,1
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
	stw 3,4584(31)
.LVL3253:
	.loc 4 912 0 discriminator 4
	lis 4,vec3_origin@ha
	mr 3,31
	la 4,vec3_origin@l(4)
	addi 5,31,2268
	bl _ZN4idAI16CreateProjectileERK6idVec3S2_
.LVL3254:
.LBB14260:
.LBB14261:
	.loc 7 634 0
	lwz 0,4624(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3255:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1768
.LVL3256:
.L1685:
.LBE14261:
.LBE14260:
	.loc 4 913 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,24(9)
	mtctr 0
	bctrl
.LVL3257:
	.loc 4 913 0 is_stmt 0 discriminator 1
	addi 3,3,64
.LVL3258:
	bl _ZNK8idBounds9GetRadiusEv
.LVL3259:
	stfs 1,4592(31)
	.loc 4 914 0 is_stmt 1 discriminator 1
	addi 3,1,24
	lwz 4,4584(31)
	bl _ZN12idProjectile11GetVelocityEPK6idDict
.LVL3260:
.LBB14263:
.LBB14264:
	.loc 6 424 0
	lwz 0,24(1)
.LBE14264:
.LBE14263:
	.loc 4 915 0
	addi 3,1,12
	lwz 4,4584(31)
.LBB14266:
.LBB14265:
	.loc 6 424 0
	stw 0,4600(31)
	.loc 6 425 0
	lwz 0,28(1)
	stw 0,4604(31)
	.loc 6 426 0
	lwz 0,32(1)
	stw 0,4608(31)
.LBE14265:
.LBE14266:
	.loc 4 915 0
	bl _ZN12idProjectile10GetGravityEPK6idDict
.LVL3261:
.LBB14267:
.LBB14268:
	.loc 6 632 0
	lfs 0,4604(31)
.LBB14269:
.LBB14270:
.LBB14271:
.LBB14272:
	.loc 8 276 0
	lis 11,_ZN6idMath5iSqrtE@ha
.LBE14272:
.LBE14271:
.LBE14270:
.LBE14269:
	.loc 6 632 0
	lfs 13,4600(31)
.LBB14290:
.LBB14285:
.LBB14279:
.LBB14273:
	.loc 8 276 0
	la 11,_ZN6idMath5iSqrtE@l(11)
.LBE14273:
.LBE14279:
.LBE14285:
.LBE14290:
	.loc 6 632 0
	fmuls 12,0,0
	lfs 0,4608(31)
.LBE14268:
.LBE14267:
.LBB14302:
.LBB14303:
	.loc 6 424 0
	lwz 0,12(1)
.LBE14303:
.LBE14302:
.LBB14307:
.LBB14295:
	.loc 6 632 0
	fmadds 13,13,13,12
.LBE14295:
.LBE14307:
.LBB14308:
.LBB14304:
	.loc 6 424 0
	stw 0,4612(31)
	.loc 6 425 0
	lwz 0,16(1)
.LBE14304:
.LBE14308:
.LBB14309:
.LBB14296:
	.loc 6 632 0
	fmadds 13,0,0,13
.LBE14296:
.LBE14309:
.LBB14310:
.LBB14305:
	.loc 6 425 0
	stw 0,4616(31)
	.loc 6 426 0
	lwz 0,20(1)
.LBE14305:
.LBE14310:
.LBB14311:
.LBB14297:
	.loc 6 632 0
	stfs 13,200(1)
.LBE14297:
.LBE14311:
.LBB14312:
.LBB14306:
	.loc 6 426 0
	stw 0,4620(31)
.LVL3262:
.LBE14306:
.LBE14312:
.LBB14313:
.LBB14298:
.LBB14291:
.LBB14286:
.LBB14280:
.LBB14274:
	.loc 8 270 0
	lwz 0,200(1)
.LVL3263:
	.loc 8 276 0
	rlwinm 9,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,11,0
	subfic 9,9,380
	rlwinm 9,9,22,0,8
	.loc 8 275 0
	lis 11,.LC15@ha
	.loc 8 276 0
	or 0,9,0
	.loc 8 275 0
	lfs 12,.LC15@l(11)
	.loc 8 277 0
	stw 0,204(1)
	.loc 8 278 0
	lis 9,.LC63@ha
	.loc 8 275 0
	fmuls 12,13,12
.LVL3264:
	.loc 8 277 0
	lfs 13,204(1)
.LVL3265:
.LBE14274:
.LBE14280:
.LBE14286:
.LBE14291:
.LBE14298:
.LBE14313:
.LBB14314:
.LBB14315:
	.loc 7 634 0
	lwz 0,4624(31)
.LBE14315:
.LBE14314:
.LBB14320:
.LBB14299:
.LBB14292:
.LBB14287:
.LBB14281:
.LBB14275:
	.loc 8 277 0
	fmr 0,13
.LVL3266:
	.loc 8 278 0
	lfs 13,.LC63@l(9)
.LVL3267:
	.loc 4 724 0
	fneg 12,12
.LVL3268:
.LBE14275:
.LBE14281:
.LBE14287:
.LBE14292:
.LBE14299:
.LBE14320:
.LBB14321:
.LBB14316:
	.loc 7 634 0
	rlwinm 9,0,0,20,31
	.loc 7 635 0
	addi 11,9,4228
	srawi 0,0,12
.LBE14316:
.LBE14321:
.LBB14322:
.LBB14300:
.LBB14293:
.LBB14288:
.LBB14282:
.LBB14276:
	.loc 8 278 0
	fmul 11,0,0
.LBE14276:
.LBE14282:
.LBE14288:
.LBE14293:
.LBE14300:
.LBE14322:
.LBB14323:
.LBB14317:
	.loc 7 635 0
	slwi 11,11,2
	add 11,29,11
.LBE14317:
.LBE14323:
.LBB14324:
.LBB14301:
.LBB14294:
.LBB14289:
.LBB14283:
.LBB14277:
	.loc 8 278 0
	fmadd 11,12,11,13
	fmul 0,0,11
.LVL3269:
	.loc 8 279 0
	fmul 11,0,0
	fmadd 13,12,11,13
.LVL3270:
	fmul 0,0,13
.LVL3271:
.LBE14277:
.LBE14283:
	.loc 8 303 0
	lfs 13,200(1)
.LBB14284:
.LBB14278:
	.loc 8 280 0
	frsp 0,0
.LVL3272:
.LBE14278:
.LBE14284:
	.loc 8 303 0
	fmuls 0,13,0
.LBE14289:
.LBE14294:
.LBE14301:
.LBE14324:
	.loc 4 916 0
	stfs 0,4596(31)
.LVL3273:
.LBB14325:
.LBB14318:
	.loc 7 635 0
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1769
.LVL3274:
.L1686:
.LBE14318:
.LBE14325:
.LBB14326:
.LBB14327:
	.loc 7 606 0
	li 0,0
	stw 0,4624(31)
.LVL3275:
.L1705:
.LBE14327:
.LBE14326:
.LBB14328:
.LBB14329:
	.loc 14 193 0
	lwz 3,4860(31)
	cmpwi 7,3,0
	beq- 7,.L1687
	.loc 14 194 0
	bl _ZdaPv
.L1687:
	.loc 14 197 0
	li 0,0
.LBE14329:
.LBE14328:
.LBB14333:
.LBB14334:
.LBB14335:
.LBB14336:
	.loc 11 241 0
	lis 4,.LC227@ha
.LBE14336:
.LBE14335:
.LBE14334:
.LBE14333:
.LBB14349:
.LBB14330:
	.loc 14 197 0
	stw 0,4860(31)
.LBE14330:
.LBE14349:
.LBB14350:
.LBB14344:
.LBB14341:
.LBB14338:
	.loc 11 241 0
	mr 3,26
.LBE14338:
.LBE14341:
.LBE14344:
.LBE14350:
.LBB14351:
.LBB14331:
	.loc 14 198 0
	stw 0,4848(31)
.LBE14331:
.LBE14351:
.LBB14352:
.LBB14345:
.LBB14342:
.LBB14339:
	.loc 11 241 0
	la 4,.LC227@l(4)
.LBE14339:
.LBE14342:
.LBE14345:
.LBE14352:
.LBB14353:
.LBB14332:
	.loc 14 199 0
	stw 0,4852(31)
.LBE14332:
.LBE14353:
	.loc 4 922 0
	li 0,1
	stb 0,4844(31)
.LVL3276:
.LBB14354:
.LBB14346:
.LBB14343:
.LBB14340:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL3277:
	.loc 11 242 0
	mr. 9,3
	.loc 11 245 0
	mr 3,15
.LVL3278:
	.loc 11 242 0
	beq- 0,.L1688
.LVL3279:
.LBB14337:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3280:
	lwz 3,4(9)
.LVL3281:
.L1688:
.LBE14337:
.LBE14340:
.LBE14343:
	.loc 11 257 0
	bl atoi
.LBE14346:
.LBE14354:
	.loc 4 924 0
	lis 4,.LC228@ha
.LBB14355:
.LBB14347:
	.loc 11 257 0
	cntlzw 3,3
.LBE14347:
.LBE14355:
	.loc 4 924 0
	la 4,.LC228@l(4)
.LBB14356:
.LBB14348:
	.loc 11 257 0
	srwi 3,3,5
	xori 3,3,1
.LBE14348:
.LBE14356:
	.loc 4 923 0
	stb 3,4845(31)
	.loc 4 924 0
	mr 3,31
	bl _ZN4idAI14SpawnParticlesEPKc
	.loc 4 926 0
	lwz 0,4684(31)
	cmpwi 7,0,0
	beq- 7,.L1770
.L1689:
	.loc 4 927 0 discriminator 6
	lwz 0,192(31)
	li 9,0
	.loc 4 928 0 discriminator 6
	mr 3,30
	li 4,0
	.loc 4 927 0 discriminator 6
	rlwimi 0,9,29,2,2
	.loc 4 928 0 discriminator 6
	li 5,-1
	.loc 4 927 0 discriminator 6
	stw 0,192(31)
	.loc 4 928 0 discriminator 6
	bl _ZN15idPhysics_Actor11SetContentsEii
	.loc 4 929 0
	mr 3,30
	li 4,0
	bl _ZNK15idPhysics_Actor12GetClipModelEi
	bl _ZN11idClipModel6UnlinkEv
	.loc 4 930 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,76(9)
	mtctr 0
	bctrl
.L1706:
	.loc 4 936 0
	lwz 0,188(31)
	cmpwi 7,0,0
	ble- 7,.L1771
.L1694:
	.loc 4 942 0
	mr 3,31
	bl _ZN4idAI12SetChatSoundEv
	.loc 4 944 0
	mr 3,31
	li 4,1
	bl _ZN8idEntity12BecomeActiveEi
	.loc 4 946 0
	lbz 0,4547(31)
	cmpwi 7,0,0
	beq- 7,.L1695
	.loc 4 947 0
	addis 29,29,0x25
	addi 3,31,1624
	lwz 5,2004(29)
	mr 4,31
	bl _ZN4idAF9SetupPoseEP8idEntityi
	.loc 4 948 0
	lwz 9,1656(31)
	addi 3,31,1656
	lwz 0,184(9)
	mtctr 0
	bctrl
.LVL3282:
.L1695:
	.loc 4 952 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
.LEHE56:
.LVL3283:
.LBB14357:
.LBB14358:
.LBB14359:
	.loc 15 501 0
	mr 3,24
.LEHB57:
	bl _ZN5idStr8FreeDataEv
.LEHE57:
.LVL3284:
.LBE14359:
.LBE14358:
.LBE14357:
.LBB14360:
.LBB14361:
.LBB14362:
	mr 3,28
.LEHB58:
	bl _ZN5idStr8FreeDataEv
.LEHE58:
	b .L1601
.LVL3285:
.L1768:
.LBE14362:
.LBE14361:
.LBE14360:
.LBB14363:
.LBB14262:
	.loc 7 636 0
	addi 9,9,132
.LVL3286:
	slwi 9,9,2
.LVL3287:
	add 9,29,9
	lwz 3,4(9)
	b .L1685
.LVL3288:
.L1674:
.LBE14262:
.LBE14363:
.LBB14364:
.LBB14177:
.LBB14178:
.LBB14179:
	.loc 11 262 0
	lis 4,.LC70@ha
	lis 5,.LC71@ha
	mr 3,26
	la 4,.LC70@l(4)
	la 5,.LC71@l(5)
	addi 6,1,36
.LEHB59:
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LBE14179:
.LBE14178:
.LBB14180:
.LBB14181:
	.loc 4 892 0
	lis 9,g_gravity+44@ha
.LBE14181:
.LBE14180:
.LBB14184:
.LBB14185:
	.loc 6 489 0
	lfs 12,36(1)
.LBE14185:
.LBE14184:
.LBB14188:
.LBB14182:
	.loc 20 144 0
	lwz 9,g_gravity+44@l(9)
.LBE14182:
.LBE14188:
	.loc 4 893 0
	mr 3,30
.LBB14189:
.LBB14186:
	.loc 6 490 0
	lfs 13,40(1)
.LBE14186:
.LBE14189:
	.loc 4 893 0
	addi 4,1,36
.LBB14190:
.LBB14183:
	.loc 20 144 0
	lfs 0,40(9)
.LVL3289:
.LBE14183:
.LBE14190:
.LBB14191:
.LBB14187:
	.loc 6 491 0
	lfs 11,44(1)
	.loc 6 489 0
	fmuls 12,12,0
	.loc 6 490 0
	fmuls 13,13,0
	.loc 6 491 0
	fmuls 0,11,0
	.loc 6 489 0
	stfs 12,36(1)
	.loc 6 490 0
	stfs 13,40(1)
	.loc 6 491 0
	stfs 0,44(1)
.LBE14187:
.LBE14191:
	.loc 4 893 0
	bl _ZN15idPhysics_Actor10SetGravityERK6idVec3
.LVL3290:
	b .L1675
.LVL3291:
.L1672:
.LBE14177:
.LBE14364:
	.loc 4 880 0
	li 4,256
	li 5,-1
	bl _ZN15idPhysics_Actor11SetContentsEii
.LEHE59:
	b .L1673
.LVL3292:
.L1767:
.LBB14365:
.LBB14252:
.LBB14246:
.LBB14244:
.LBB14241:
.LBB14239:
	.loc 15 351 0
	mr 3,24
.LVL3293:
	li 5,0
.LEHB60:
	bl _ZN5idStr10ReAllocateEib
.LEHE60:
.LVL3294:
	b .L1682
.LVL3295:
.L1766:
.LBE14239:
.LBE14241:
.LBE14244:
.LBE14246:
.LBE14252:
.LBE14365:
	.loc 4 874 0
	mr 3,30
	li 4,0
	li 5,-1
.LEHB61:
	bl _ZN15idPhysics_Actor11SetContentsEii
	.loc 4 875 0
	mr 3,30
	li 4,17
	li 5,-1
	bl _ZN14idPhysics_Base11SetClipMaskEii
.LEHE61:
	b .L1671
.LVL3296:
.L1770:
.LBB14366:
.LBB14367:
.LBB14368:
.LBB14369:
	.loc 11 241 0 discriminator 2
	lis 4,.LC229@ha
	mr 3,26
	la 4,.LC229@l(4)
.LEHB62:
	bl _ZNK6idDict7FindKeyEPKc
.LVL3297:
	.loc 11 242 0 discriminator 2
	mr. 9,3
	.loc 11 245 0 discriminator 2
	mr 3,15
.LVL3298:
	.loc 11 242 0 discriminator 2
	beq- 0,.L1690
.LVL3299:
.LBB14370:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3300:
	lwz 3,4(9)
.LVL3301:
.L1690:
.LBE14370:
.LBE14369:
.LBE14368:
	.loc 11 257 0
	bl atoi
.LBE14367:
.LBE14366:
	.loc 4 926 0
	cmpwi 7,3,0
	bne+ 7,.L1689
.LVL3302:
.LBB14371:
.LBB14372:
.LBB14373:
.LBB14374:
	.loc 11 241 0 discriminator 3
	lis 4,.LC230@ha
	mr 3,26
	la 4,.LC230@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3303:
	.loc 11 242 0 discriminator 3
	mr. 9,3
	.loc 11 245 0 discriminator 3
	mr 3,15
.LVL3304:
	.loc 11 242 0 discriminator 3
	beq- 0,.L1691
.LVL3305:
.LBB14375:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3306:
	lwz 3,4(9)
.LVL3307:
.L1691:
.LBE14375:
.LBE14374:
.LBE14373:
	.loc 11 257 0
	bl atoi
.LBE14372:
.LBE14371:
	.loc 4 926 0
	cmpwi 7,3,0
	bne+ 7,.L1689
.LVL3308:
.LBB14376:
.LBB14377:
.LBB14378:
.LBB14379:
	.loc 11 241 0 discriminator 4
	lis 4,.LC231@ha
	mr 3,26
	la 4,.LC231@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3309:
	.loc 11 242 0 discriminator 4
	mr. 9,3
	.loc 11 245 0 discriminator 4
	mr 3,15
.LVL3310:
	.loc 11 242 0 discriminator 4
	beq- 0,.L1692
.LVL3311:
.LBB14380:
	.loc 4 5138 0
	lwz 9,4(9)
.LVL3312:
	lwz 3,4(9)
.LVL3313:
.L1692:
.LBE14380:
.LBE14379:
.LBE14378:
	.loc 11 257 0
	bl atoi
.LBE14377:
.LBE14376:
	.loc 4 926 0
	cmpwi 7,3,0
	bne- 7,.L1689
	.loc 4 933 0
	lis 4,.LC153@ha
	mr 3,31
	la 4,.LC153@l(4)
	li 5,12
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
	b .L1706
.LVL3314:
.L1771:
	.loc 4 937 0
	lis 4,.LC232@ha
	lwz 5,72(31)
	mr 3,29
	la 4,.LC232@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LEHE62:
	.loc 4 938 0
	li 0,1
	stw 0,188(31)
	b .L1694
.LVL3315:
.L1763:
.LBB14381:
.LBB14133:
	.loc 4 835 0
	mr 3,27
.LVL3316:
	mr 4,30
.LEHB63:
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 4 836 0
	cmpwi 7,3,-1
	.loc 4 835 0
	stw 3,5112(31)
	.loc 4 836 0
	bne+ 7,.L1662
	.loc 4 837 0
	lis 4,.LC220@ha
	lwz 6,72(31)
	mr 3,29
	la 4,.LC220@l(4)
	mr 5,30
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LEHE63:
	b .L1662
.LVL3317:
.L1758:
.LBE14133:
.LBE14381:
.LBB14382:
.LBB13990:
.LBB13982:
.LBB13976:
	.loc 14 380 0
	lwz 0,4784(31)
.LVL3318:
	b .L1624
.LVL3319:
.L1681:
.LBE13976:
.LBE13982:
.LBE13990:
.LBE14382:
.LBB14383:
.LBB14253:
	.loc 4 910 0
	addi 24,1,132
	.loc 11 236 0
	lis 4,.LC26@ha
	mr 3,24
.LVL3320:
	la 4,.LC26@l(4)
.LEHB64:
	bl _ZN5idStraSEPKc
	b .L1705
.LVL3321:
.L1769:
.LBE14253:
.LBE14383:
.LBB14384:
.LBB14319:
	.loc 7 636 0
	addi 9,9,132
.LVL3322:
	slwi 9,9,2
.LVL3323:
	add 9,29,9
	lwz 3,4(9)
.LBE14319:
.LBE14384:
	.loc 4 917 0
	cmpwi 7,3,0
	beq- 7,.L1686
	.loc 4 917 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LEHE64:
.LVL3324:
	b .L1686
.LVL3325:
.L1757:
.LBB14385:
.LBB13991:
.LBB13983:
.LBB13977:
.LBB13973:
.LBB13974:
	.loc 14 198 0 is_stmt 1
	stw 27,4784(31)
	.loc 14 199 0
	li 9,0
	stw 27,4788(31)
	li 10,0
	b .L1622
.LVL3326:
.L1760:
.LBE13974:
.LBE13973:
.LBE13977:
.LBE13983:
.LBE13991:
.LBE14385:
.LBB14386:
.LBB13910:
.LBB13898:
.LBB13892:
.LBB13889:
.LBB13890:
	.loc 14 198 0
	stw 30,4800(31)
	.loc 14 199 0
	li 0,0
	stw 30,4804(31)
	li 10,0
	b .L1640
.LVL3327:
.L1720:
.LBE13890:
.LBE13889:
.LBE13892:
.LBE13898:
.LBE13910:
.LBE14386:
.LBB14387:
.LBB14155:
	.loc 11 245 0
	lis 30,.LC26@ha
	la 30,.LC26@l(30)
	b .L1666
.LVL3328:
.L1719:
.LBE14155:
.LBE14387:
.LBB14388:
.LBB14151:
	lis 30,.LC26@ha
	la 30,.LC26@l(30)
	b .L1664
.LVL3329:
.L1715:
.LBE14151:
.LBE14388:
.LBB14389:
.LBB14088:
.LBB14083:
.LBB14080:
	lis 3,.LC162@ha
.LVL3330:
	la 3,.LC162@l(3)
	b .L1658
.LVL3331:
.L1714:
.LBE14080:
.LBE14083:
.LBE14088:
.LBE14389:
.LBB14390:
.LBB14068:
.LBB14063:
.LBB14060:
	lis 3,.LC161@ha
.LVL3332:
	la 3,.LC161@l(3)
	b .L1657
.LVL3333:
.L1713:
.LBE14060:
.LBE14063:
.LBE14068:
.LBE14390:
.LBB14391:
.LBB14048:
.LBB14043:
.LBB14040:
	lis 3,.LC160@ha
.LVL3334:
	la 3,.LC160@l(3)
	b .L1656
.LVL3335:
.L1712:
.LBE14040:
.LBE14043:
.LBE14048:
.LBE14391:
.LBB14392:
.LBB14030:
.LBB14026:
.LBB14024:
	lis 3,.LC142@ha
.LVL3336:
	la 3,.LC142@l(3)
	b .L1655
.LVL3337:
.L1718:
.LBE14024:
.LBE14026:
.LBE14030:
.LBE14392:
.LBB14393:
.LBB14134:
.LBB14123:
	lis 30,.LC26@ha
	la 30,.LC26@l(30)
	b .L1663
.LVL3338:
.L1717:
.LBE14123:
.LBE14134:
.LBB14135:
.LBB14132:
.LBB14130:
	lis 30,.LC26@ha
	la 30,.LC26@l(30)
	b .L1661
.LVL3339:
.L1772:
.LBE14130:
.LBE14132:
.LBE14135:
.LBE14393:
.LBB14394:
.LBB13911:
.LBB13899:
.LBB13893:
	.loc 14 393 0
	lwz 9,4804(31)
	b .L1638
.LVL3340:
.L1765:
.LBE13893:
.LBE13899:
.LBE13911:
.LBE14394:
	.loc 4 862 0
	lis 4,.LC221@ha
	lwz 6,72(31)
	mr 3,29
	la 4,.LC221@l(4)
	mr 5,30
.LEHB65:
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
	b .L1667
.LVL3341:
.L1764:
	.loc 4 854 0
	lis 4,.LC221@ha
	lwz 6,72(31)
	mr 3,29
	la 4,.LC221@l(4)
	mr 5,30
	crxor 6,6,6
	bl _ZNK11idGameLocal7WarningEPKcz
.LEHE65:
	b .L1665
.LVL3342:
.L1742:
.LBB14395:
.LBB13818:
.LBB13814:
.LBB13812:
.LBB13809:
.LBB13810:
	.loc 14 194 0
	mr 3,30
.LVL3343:
	bl _ZdaPv
.LVL3344:
	.loc 14 197 0
	li 0,0
	stw 0,4796(31)
	.loc 14 198 0
	stw 0,4784(31)
	.loc 14 199 0
	stw 0,4788(31)
	b .L1608
.LVL3345:
.L1744:
.LBE13810:
.LBE13809:
.LBE13812:
.LBE13814:
.LBE13818:
.LBE14395:
.LBB14396:
.LBB13842:
.LBB13840:
.LBB13839:
.LBB13837:
.LBB13838:
	.loc 14 194 0
	mr 3,30
.LVL3346:
	bl _ZdaPv
.LVL3347:
	.loc 14 197 0
	li 0,0
	stw 0,4812(31)
	.loc 14 198 0
	stw 0,4800(31)
	.loc 14 199 0
	stw 0,4804(31)
	b .L1612
.LVL3348:
.L1728:
	mr 31,3
.LVL3349:
.L1700:
.LBE13838:
.LBE13837:
.LBE13839:
.LBE13840:
.LBE13842:
.LBE14396:
.LBB14397:
.LBB14398:
.LBB14399:
	.loc 15 501 0
	mr 3,28
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB66:
	bl _Unwind_Resume
.LEHE66:
.LVL3350:
.L1730:
	mr 31,3
.LVL3351:
.LBE14399:
.LBE14398:
.LBE14397:
.LBB14400:
.LBB14401:
.LBB14402:
	mr 3,24
	bl _ZN5idStr8FreeDataEv
	b .L1700
.LVL3352:
.L1729:
	mr 31,3
.LBE14402:
.LBE14401:
.LBE14400:
	.loc 4 870 0
	mr 3,27
	bl _ZdlPv
	b .L1700
.LBE14405:
	.cfi_endproc
.LFE2860:
	.section	.gcc_except_table
.LLSDA2860:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2860-.LLSDACSB2860
.LLSDACSB2860:
	.uleb128 .LEHB51-.LFB2860
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB52-.LFB2860
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB2860
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB54-.LFB2860
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L1729-.LFB2860
	.uleb128 0
	.uleb128 .LEHB55-.LFB2860
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB56-.LFB2860
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L1730-.LFB2860
	.uleb128 0
	.uleb128 .LEHB57-.LFB2860
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB58-.LFB2860
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB2860
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB60-.LFB2860
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L1730-.LFB2860
	.uleb128 0
	.uleb128 .LEHB61-.LFB2860
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB62-.LFB2860
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1730-.LFB2860
	.uleb128 0
	.uleb128 .LEHB63-.LFB2860
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB64-.LFB2860
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L1730-.LFB2860
	.uleb128 0
	.uleb128 .LEHB65-.LFB2860
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1728-.LFB2860
	.uleb128 0
	.uleb128 .LEHB66-.LFB2860
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
.LLSDACSE2860:
	.section	".text"
	.size	_ZN4idAI5SpawnEv, .-_ZN4idAI5SpawnEv
	.align 2
	.globl _ZN4idAI8SetEnemyEP7idActor
	.type	_ZN4idAI8SetEnemyEP7idActor, @function
_ZN4idAI8SetEnemyEP7idActor:
.LFB2949:
	.loc 4 3851 0
	.cfi_startproc
.LVL3353:
	mflr 0
	stwu 1,-32(1)
.LCFI369:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	mr 9,4
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL3354:
	stw 0,36(1)
	stw 30,24(1)
.LBB14436:
.LBB14437:
.LBB14438:
	.loc 18 249 0
	lwz 11,5192(3)
	cmpwi 7,11,0
	beq- 7,.L1774
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL3355:
.LBE14438:
.LBE14437:
	.loc 4 3854 0
	lwz 0,0(11)
	cmpwi 7,0,0
	bne- 7,.L1780
.LVL3356:
.L1774:
.LBB14439:
.LBB14440:
	.loc 18 237 0
	lwz 11,5204(31)
	cmpwi 7,11,0
	beq- 7,.L1776
	.loc 18 238 0
	li 0,0
	stw 0,0(11)
.L1776:
.LBE14440:
.LBE14439:
	.loc 4 3860 0
	cmpwi 7,9,0
	beq- 7,.L1781
.LVL3357:
.LBB14441:
.LBB14442:
	.loc 7 634 0
	lwz 11,5120(31)
	.loc 7 635 0
	lis 7,gameLocal@ha
	la 0,gameLocal@l(7)
	.loc 7 634 0
	rlwinm 10,11,0,20,31
.LVL3358:
	.loc 7 635 0
	srawi 11,11,12
	addi 8,10,4228
	slwi 8,8,2
	add 8,0,8
	lwz 8,4(8)
	cmpw 7,8,11
	beq- 7,.L1782
.LVL3359:
.L1778:
.LBE14442:
.LBE14441:
.LBE14436:
.LBB14445:
.LBB14446:
.LBB14447:
.LBB14448:
	.loc 7 608 0
	lwz 11,4(9)
.LBE14448:
.LBE14447:
.LBB14452:
.LBB14453:
.LBB14454:
.LBB14455:
.LBB14456:
	.loc 17 176 0
	lwz 10,2312(31)
.LBE14456:
.LBE14455:
.LBE14454:
.LBE14453:
.LBE14452:
.LBB14465:
.LBB14449:
	.loc 7 608 0
	addi 8,11,4228
	slwi 8,8,2
	add 8,0,8
	lwz 0,4(8)
.LBE14449:
.LBE14465:
.LBB14466:
.LBB14463:
.LBB14461:
.LBB14459:
.LBB14457:
	.loc 17 176 0
	lwz 8,2308(31)
.LBE14457:
.LBE14459:
.LBE14461:
.LBE14463:
.LBE14466:
.LBB14467:
.LBB14450:
	.loc 7 608 0
	slwi 0,0,12
	or 11,0,11
.LBE14450:
.LBE14467:
	.loc 4 3864 0
	addi 0,31,2304
.LBB14468:
.LBB14451:
	.loc 7 608 0
	stw 11,5120(31)
.LBE14451:
.LBE14468:
.LBE14446:
	.loc 4 5138 0
	lwz 11,2320(9)
.LVL3360:
.LBB14484:
.LBB14469:
.LBB14464:
.LBB14462:
.LBB14460:
.LBB14458:
	.loc 17 176 0
	stw 8,4(10)
	.loc 17 177 0
	lwz 8,2312(31)
	lwz 10,2308(31)
	stw 8,8(10)
	.loc 17 180 0
	stw 0,2312(31)
	.loc 17 181 0
	stw 0,2304(31)
.LBE14458:
.LBE14460:
	.loc 17 196 0
	stw 11,2308(31)
	.loc 17 197 0
	lwz 10,8(11)
	stw 10,2312(31)
	.loc 17 198 0
	stw 0,8(11)
	.loc 17 199 0
	lwz 10,2312(31)
	stw 0,4(10)
	.loc 17 200 0
	lwz 0,0(11)
.LVL3361:
	stw 0,2304(31)
.LBE14462:
.LBE14464:
.LBE14469:
	.loc 4 3865 0
	lwz 0,188(9)
	cmpwi 7,0,0
	ble- 7,.L1783
	.loc 4 3870 0
	lwz 11,0(9)
	addi 30,31,5160
	mr 3,9
.LVL3362:
	lwz 4,3944(31)
.LVL3363:
	lwz 0,268(11)
	mr 5,30
	addi 6,1,8
	mtctr 0
	bctrl
.LVL3364:
	.loc 4 3871 0
	mr 3,31
	bl _ZN4idAI16SetEnemyPositionEv
	.loc 4 3872 0
	mr 3,31
	bl _ZN4idAI12SetChatSoundEv
.LVL3365:
.LBB14470:
.LBB14471:
	.loc 6 425 0
	lwz 9,5128(31)
	.loc 6 424 0
	lwz 11,5124(31)
.LBE14471:
.LBE14470:
	.loc 4 3876 0
	mr 4,30
.LBB14475:
.LBB14472:
	.loc 6 426 0
	lwz 0,5132(31)
.LBE14472:
.LBE14475:
	.loc 4 3876 0
	mr 3,31
.LBB14476:
.LBB14473:
	.loc 6 425 0
	stw 9,5164(31)
.LBE14473:
.LBE14476:
.LBB14477:
.LBB14478:
	stw 9,5152(31)
.LBE14478:
.LBE14477:
	.loc 4 3876 0
	lis 9,.LC0@ha
.LBB14480:
.LBB14474:
	.loc 6 424 0
	stw 11,5160(31)
	.loc 6 426 0
	stw 0,5168(31)
.LVL3366:
.LBE14474:
.LBE14480:
.LBB14481:
.LBB14479:
	.loc 6 424 0
	stw 11,5148(31)
	.loc 6 426 0
	stw 0,5156(31)
.LBE14479:
.LBE14481:
	.loc 4 3876 0
	lfs 1,.LC0@l(9)
	bl _ZNK4idAI21PointReachableAreaNumERK6idVec3f
	mr 4,3
.LVL3367:
	.loc 4 3877 0
	lwz 3,3944(31)
	.loc 4 3876 0
	stw 4,8(1)
.LVL3368:
	.loc 4 3877 0
	cmpwi 7,3,0
	beq- 7,.L1773
	cmpwi 7,4,0
	bne- 7,.L1784
.LVL3369:
.L1773:
.LBE14484:
.LBE14445:
	.loc 4 3882 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL3370:
	addi 1,1,32
	.cfi_remember_state
.LCFI370:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3371:
.L1781:
.LCFI371:
	.cfi_restore_state
.LBB14487:
	.loc 4 3861 0
	mr 3,31
.LVL3372:
.L1780:
	bl _ZN4idAI10ClearEnemyEv
.LVL3373:
.LBE14487:
	.loc 4 3882 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL3374:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI372:
	.cfi_def_cfa_offset 0
	blr
.LVL3375:
.L1782:
.LCFI373:
	.cfi_restore_state
.LBB14488:
.LBB14444:
.LBB14443:
	.loc 7 636 0
	addi 10,10,132
.LVL3376:
	slwi 10,10,2
.LVL3377:
	add 10,0,10
.LBE14443:
.LBE14444:
	.loc 4 3862 0
	lwz 11,4(10)
	cmpw 7,9,11
	bne+ 7,.L1778
	b .L1773
.LVL3378:
.L1784:
.LBE14488:
.LBB14489:
.LBB14485:
	.loc 4 3878 0
	lwz 9,0(3)
	mr 5,30
	lwz 0,36(9)
	mtctr 0
	bctrl
.LVL3379:
.LBB14482:
.LBB14483:
	.loc 6 426 0
	lwz 0,5168(31)
	.loc 6 424 0
	lwz 11,5160(31)
	.loc 6 425 0
	lwz 9,5164(31)
	.loc 6 424 0
	stw 11,5148(31)
	.loc 6 425 0
	stw 9,5152(31)
	.loc 6 426 0
	stw 0,5156(31)
.LBE14483:
.LBE14482:
.LBE14485:
.LBE14489:
	.loc 4 3882 0
	lwz 0,36(1)
	lwz 30,24(1)
.LVL3380:
	mtlr 0
	lwz 31,28(1)
.LVL3381:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI374:
	.cfi_def_cfa_offset 0
	blr
.LVL3382:
.L1783:
.LCFI375:
	.cfi_restore_state
.LBB14490:
.LBB14486:
	.loc 4 3866 0
	mr 3,31
.LVL3383:
	bl _ZN4idAI9EnemyDeadEv
.LVL3384:
.LBE14486:
.LBE14490:
	.loc 4 3882 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
.LVL3385:
	addi 1,1,32
	.cfi_restore 30
	.cfi_restore 31
.LCFI376:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2949:
	.size	_ZN4idAI8SetEnemyEP7idActor, .-_ZN4idAI8SetEnemyEP7idActor
	.align 2
	.globl _ZN4idAI8ActivateEP8idEntity
	.type	_ZN4idAI8ActivateEP8idEntity, @function
_ZN4idAI8ActivateEP8idEntity:
.LFB2939:
	.loc 4 3517 0
	.cfi_startproc
.LVL3386:
	mflr 0
	stwu 1,-24(1)
.LCFI377:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL3387:
	stw 0,28(1)
	stw 30,16(1)
.LBB14491:
.LBB14492:
.LBB14493:
	.loc 18 249 0
	lwz 9,5192(3)
	cmpwi 7,9,0
	beq- 7,.L1786
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LVL3388:
.LBE14493:
.LBE14492:
	.loc 4 3520 0
	lwz 0,0(9)
	cmpwi 7,0,0
	bne- 7,.L1785
.LVL3389:
.L1786:
	.loc 4 3528 0
	lwz 0,4684(31)
	cmpwi 7,0,0
	.loc 4 3526 0
	li 0,0
	stw 0,156(31)
	.loc 4 3528 0
	bne- 7,.L1802
.LVL3390:
.LBB14494:
.LBB14495:
	.loc 18 237 0
	lwz 9,5216(31)
	cmpwi 7,9,0
	beq- 7,.L1789
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L1789:
.LBE14495:
.LBE14494:
	.loc 4 3532 0
	cmpwi 7,4,0
	beq- 7,.L1790
.LVL3391:
.LBB14496:
.LBB14497:
	.loc 16 340 0 discriminator 2
	lwz 9,0(4)
	mr 3,4
.LVL3392:
	lwz 0,0(9)
	stw 4,8(1)
	mtctr 0
	bctrl
.LVL3393:
.LBE14497:
	.loc 4 5138 0 discriminator 2
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB14502:
.LBB14498:
.LBB14499:
	.loc 16 311 0 discriminator 2
	lwz 11,56(9)
	lwz 4,8(1)
	cmpw 7,0,11
	bge- 7,.L1803
.LVL3394:
.L1790:
.LBE14499:
.LBE14498:
.LBE14502:
.LBE14496:
	.loc 4 3533 0 discriminator 4
	lis 3,gameLocal@ha
	la 3,gameLocal@l(3)
	bl _ZNK11idGameLocal14GetLocalPlayerEv
	mr 30,3
.LVL3395:
.L1791:
	.loc 4 3538 0
	mr 3,31
	mr 4,30
	bl _ZN4idAI10ReactionToEPK8idEntity
	andi. 0,3,2
	bne- 0,.L1804
.L1792:
	.loc 4 3543 0
	lbz 0,160(31)
	cmpwi 7,0,0
	beq+ 7,.L1785
	.loc 4 3544 0
	mr 3,31
.LBB14504:
.LBB14505:
	.loc 7 635 0
	lis 30,gameLocal@ha
.LVL3396:
.LBE14505:
.LBE14504:
	.loc 4 3544 0
	bl _ZN4idAI14UpdateAIScriptEv
	.loc 4 3547 0
	addi 3,31,636
	bl _ZN10idAnimator11ForceUpdateEv
	.loc 4 3550 0
	mr 3,31
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
	.loc 4 3551 0
	mr 3,31
	bl _ZN8idEntity13UpdateVisualsEv
	.loc 4 3552 0
	lwz 9,0(31)
	mr 3,31
.LBB14508:
.LBB14506:
	.loc 7 635 0
	la 30,gameLocal@l(30)
.LBE14506:
.LBE14508:
	.loc 4 3552 0
	lwz 0,32(9)
	mtctr 0
	bctrl
.LVL3397:
.LBB14509:
.LBB14507:
	.loc 7 634 0
	lwz 0,2424(31)
	rlwinm 9,0,0,20,31
.LVL3398:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L1785
	.loc 7 636 0
	addi 9,9,132
.LVL3399:
	slwi 9,9,2
.LVL3400:
	add 9,30,9
.LBE14507:
.LBE14509:
	.loc 4 3554 0
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1785
	.loc 4 3556 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
.LVL3401:
.LBB14510:
.LBB14511:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3402:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1805
.LVL3403:
.L1793:
.LBE14511:
.LBE14510:
	.loc 4 3559 0
	lwz 9,0(3)
	lwz 0,92(9)
	mtctr 0
	bctrl
	bl _ZN10idAnimator11ForceUpdateEv
.LVL3404:
.LBB14513:
.LBB14514:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3405:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1806
.LVL3406:
.L1794:
.LBE14514:
.LBE14513:
	.loc 4 3562 0
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
.LVL3407:
.LBB14516:
.LBB14517:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3408:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1807
.LVL3409:
.L1795:
.LBE14517:
.LBE14516:
	.loc 4 3563 0
	bl _ZN8idEntity13UpdateVisualsEv
.LVL3410:
.LBB14519:
.LBB14520:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3411:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1808
.LVL3412:
.L1796:
.LBE14520:
.LBE14519:
	.loc 4 3564 0
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
.LVL3413:
.L1785:
.LBE14491:
	.loc 4 3568 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL3414:
	addi 1,1,24
	.cfi_remember_state
.LCFI378:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3415:
.L1803:
.LCFI379:
	.cfi_restore_state
.LBB14527:
.LBB14522:
.LBB14503:
.LBB14501:
.LBB14500:
	.loc 16 311 0
	lwz 9,60(9)
	mr 30,4
	cmpw 7,0,9
	ble- 7,.L1791
	b .L1790
.LVL3416:
.L1802:
.LBE14500:
.LBE14501:
.LBE14503:
.LBE14522:
.LBE14527:
	.loc 4 3568 0
	lwz 0,28(1)
.LBB14528:
	.loc 4 3529 0
	mr 3,31
.LBE14528:
	.loc 4 3568 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL3417:
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI380:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LBB14529:
	.loc 4 3529 0
	b _ZN4idAI13PlayCinematicEv
.LVL3418:
.L1804:
.LCFI381:
	.cfi_restore_state
	.loc 4 3539 0
	mr 3,31
	mr 4,30
	bl _ZN4idAI8SetEnemyEP7idActor
	b .L1792
.LVL3419:
.L1805:
.LBB14523:
.LBB14512:
	.loc 7 636 0
	addi 9,9,132
.LVL3420:
	slwi 9,9,2
.LVL3421:
	add 9,30,9
	lwz 3,4(9)
	b .L1793
.LVL3422:
.L1808:
.LBE14512:
.LBE14523:
.LBB14524:
.LBB14521:
	addi 9,9,132
.LVL3423:
	slwi 9,9,2
.LVL3424:
	add 30,30,9
	lwz 3,4(30)
	b .L1796
.LVL3425:
.L1807:
.LBE14521:
.LBE14524:
.LBB14525:
.LBB14518:
	addi 9,9,132
.LVL3426:
	slwi 9,9,2
.LVL3427:
	add 9,30,9
	lwz 3,4(9)
	b .L1795
.LVL3428:
.L1806:
.LBE14518:
.LBE14525:
.LBB14526:
.LBB14515:
	addi 9,9,132
.LVL3429:
	slwi 9,9,2
.LVL3430:
	add 9,30,9
	lwz 3,4(9)
	b .L1794
.LBE14515:
.LBE14526:
.LBE14529:
	.cfi_endproc
.LFE2939:
	.size	_ZN4idAI8ActivateEP8idEntity, .-_ZN4idAI8ActivateEP8idEntity
	.align 2
	.globl _ZN4idAI19TouchedByFlashlightEP7idActor
	.type	_ZN4idAI19TouchedByFlashlightEP7idActor, @function
_ZN4idAI19TouchedByFlashlightEP7idActor:
.LFB2944:
	.loc 4 3627 0
	.cfi_startproc
.LVL3431:
	.loc 4 3628 0
	lbz 0,5172(3)
	cmpwi 7,0,0
	beqlr+ 7
	.loc 4 3631 0
	.loc 4 3629 0
	b _ZN4idAI8ActivateEP8idEntity
.LVL3432:
.LVL3433:
	.cfi_endproc
.LFE2944:
	.size	_ZN4idAI19TouchedByFlashlightEP7idActor, .-_ZN4idAI19TouchedByFlashlightEP7idActor
	.align 2
	.globl _ZN4idAI4PainEP8idEntityS1_iRK6idVec3i
	.type	_ZN4idAI4PainEP8idEntityS1_iRK6idVec3i, @function
_ZN4idAI4PainEP8idEntityS1_iRK6idVec3i:
.LFB2934:
	.loc 4 3234 0
	.cfi_startproc
.LVL3434:
	stwu 1,-32(1)
.LCFI382:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 0,36(1)
.LBB14553:
	.loc 4 3237 0
	.cfi_offset 65, 4
	bl _ZN7idActor4PainEP8idEntityS1_iRK6idVec3i
.LVL3435:
.LBB14554:
.LBB14555:
	.loc 18 237 0
	lwz 9,5184(31)
	cmpwi 7,9,0
	beq- 7,.L1812
.LBE14555:
.LBE14554:
	.loc 4 3237 0
	stw 3,0(9)
.L1812:
.LVL3436:
.LBB14556:
.LBB14557:
	.loc 18 237 0
	lwz 9,5180(31)
	cmpwi 7,9,0
	beq- 7,.L1813
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L1813:
.LBE14557:
.LBE14556:
	.loc 4 3244 0
	cmpw 7,31,30
	.loc 4 3241 0
	li 0,0
	stw 0,3680(31)
	.loc 4 3244 0
	beq- 7,.L1814
	.loc 4 3245 0
	cmpwi 7,29,0
	beq- 7,.L1815
.LVL3437:
.LBB14558:
.LBB14559:
.LBB14560:
.LBB14561:
	.loc 11 241 0
	lis 4,.LC235@ha
	addi 3,29,100
	la 4,.LC235@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3438:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1821
.LVL3439:
.LBB14562:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL3440:
.L1816:
.LBE14562:
.LBE14561:
.LBE14560:
	.loc 11 253 0
	bl atoi
.LVL3441:
.LBE14559:
.LBE14558:
.LBB14566:
.LBB14567:
	.loc 18 237 0
	lwz 9,5188(31)
	cmpwi 7,9,0
	beq- 7,.L1817
.LBE14567:
.LBE14566:
	.loc 4 3246 0
	xoris 3,3,0x8000
	lis 0,0x4330
	stw 3,12(1)
	lis 11,.LC65@ha
	stw 0,8(1)
	lfs 0,.LC65@l(11)
	lfd 13,8(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,0(9)
.LVL3442:
.L1817:
.LBB14568:
.LBB14569:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 29,gameLocal@ha
.LVL3443:
	la 29,gameLocal@l(29)
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3444:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	.loc 7 638 0
	li 0,0
	.loc 7 635 0
	beq- 7,.L1824
.LVL3445:
.L1818:
.LBE14569:
.LBE14568:
	.loc 4 3251 0
	cmpw 7,30,0
	beq- 7,.L1814
.LVL3446:
.LBB14572:
.LBB14573:
	.loc 16 340 0 discriminator 1
	lwz 9,0(30)
	mr 3,30
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL3447:
.LBE14573:
	.loc 4 5138 0 discriminator 1
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB14578:
.LBB14574:
.LBB14575:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L1825
.LVL3448:
.L1814:
.LBE14575:
.LBE14574:
.LBE14578:
.LBE14572:
.LBB14580:
.LBB14581:
	.loc 18 249 0
	lwz 9,5184(31)
	li 3,0
	cmpwi 7,9,0
	beq- 7,.L1820
	lwz 3,0(9)
	cntlzw 3,3
	srwi 3,3,5
	xori 3,3,1
.L1820:
.LBE14581:
.LBE14580:
.LBE14553:
	.loc 4 3261 0
	lwz 0,36(1)
	lwz 29,20(1)
	mtlr 0
	lwz 30,24(1)
.LVL3449:
	lwz 31,28(1)
.LVL3450:
	addi 1,1,32
	.cfi_remember_state
.LCFI383:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL3451:
.L1825:
.LCFI384:
	.cfi_restore_state
.LBB14590:
.LBB14582:
.LBB14579:
.LBB14577:
.LBB14576:
	.loc 16 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1814
.LVL3452:
.LBE14576:
.LBE14577:
.LBE14579:
.LBE14582:
	.loc 4 3253 0 discriminator 4
	mr 3,31
.LVL3453:
	mr 4,30
	bl _ZN4idAI10ReactionToEPK8idEntity
	andi. 0,3,1
	beq+ 0,.L1814
	.loc 4 3254 0
	mr 3,29
	mr 4,30
	bl _ZN11idGameLocal7AlertAIEP8idEntity
	.loc 4 3255 0
	mr 3,31
	mr 4,30
	bl _ZN4idAI8SetEnemyEP7idActor
	b .L1814
.LVL3454:
.L1815:
.LBB14583:
.LBB14584:
	.loc 18 237 0
	lwz 9,5188(31)
	cmpwi 7,9,0
	beq- 7,.L1817
	.loc 18 238 0
	li 0,0
.LBE14584:
.LBE14583:
.LBB14586:
.LBB14570:
	.loc 7 635 0
	lis 29,gameLocal@ha
.LVL3455:
.LBE14570:
.LBE14586:
.LBB14587:
.LBB14585:
	.loc 18 238 0
	stw 0,0(9)
.LVL3456:
.LBE14585:
.LBE14587:
.LBB14588:
.LBB14571:
	.loc 7 635 0
	la 29,gameLocal@l(29)
	.loc 7 634 0
	lwz 0,5120(31)
	rlwinm 9,0,0,20,31
.LVL3457:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	.loc 7 638 0
	li 0,0
	.loc 7 635 0
	bne+ 7,.L1818
.LVL3458:
.L1824:
	.loc 7 636 0
	addi 9,9,132
.LVL3459:
	slwi 9,9,2
.LVL3460:
	add 9,29,9
	lwz 0,4(9)
	b .L1818
.LVL3461:
.L1821:
.LBE14571:
.LBE14588:
.LBB14589:
.LBB14565:
.LBB14564:
.LBB14563:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL3462:
	la 3,.LC7@l(3)
	b .L1816
.LBE14563:
.LBE14564:
.LBE14565:
.LBE14589:
.LBE14590:
	.cfi_endproc
.LFE2934:
	.size	_ZN4idAI4PainEP8idEntityS1_iRK6idVec3i, .-_ZN4idAI4PainEP8idEntityS1_iRK6idVec3i
	.align 2
	.globl _ZNK4idAI20CanPlayChatterSoundsEv
	.type	_ZNK4idAI20CanPlayChatterSoundsEv, @function
_ZNK4idAI20CanPlayChatterSoundsEv:
.LFB2970:
	.loc 4 4637 0
	.cfi_startproc
.LVL3463:
	mflr 0
	stwu 1,-16(1)
.LCFI385:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL3464:
	stw 0,20(1)
.LBB14601:
.LBB14602:
	.loc 18 249 0
	lwz 9,5192(3)
	cmpwi 7,9,0
	beq- 7,.L1827
	.cfi_offset 65, 4
.LVL3465:
.LBE14602:
.LBE14601:
	.loc 4 4638 0
	lwz 0,0(9)
	.loc 4 4639 0
	li 3,0
.LVL3466:
	.loc 4 4638 0
	cmpwi 7,0,0
	beq- 7,.L1827
.L1828:
	.loc 4 4655 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3467:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI386:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL3468:
.L1827:
.LCFI387:
	.cfi_restore_state
	.loc 4 4642 0
	mr 3,31
	bl _ZNK8idEntity8IsHiddenEv
	cmpwi 7,3,0
	.loc 4 4643 0
	li 3,0
	.loc 4 4642 0
	bne- 7,.L1828
.LVL3469:
.LBB14603:
.LBB14604:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL3470:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1835
.LVL3471:
.L1829:
.LBE14604:
.LBE14603:
.LBB14607:
.LBB14608:
.LBB14609:
.LBB14610:
	.loc 11 241 0
	lis 4,.LC147@ha
	addi 3,31,100
	la 4,.LC147@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3472:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1834
.LVL3473:
.LBB14611:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL3474:
.L1830:
.LBE14611:
.LBE14610:
.LBE14609:
	.loc 11 257 0
	bl atoi
	.loc 4 4637 0
	cntlzw 3,3
	srwi 3,3,5
	b .L1828
.LVL3475:
.L1835:
.LBE14608:
.LBE14607:
.LBB14615:
.LBB14605:
	.loc 7 636 0
	addi 11,11,132
.LVL3476:
.LBE14605:
.LBE14615:
	.loc 4 4647 0
	li 3,1
.LBB14616:
.LBB14606:
	.loc 7 636 0
	slwi 11,11,2
.LVL3477:
	add 9,9,11
.LBE14606:
.LBE14616:
	.loc 4 4646 0
	lwz 0,4(9)
	cmpwi 7,0,0
	bne+ 7,.L1828
	b .L1829
.LVL3478:
.L1834:
.LBB14617:
.LBB14614:
.LBB14613:
.LBB14612:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL3479:
	la 3,.LC7@l(3)
	b .L1830
.LBE14612:
.LBE14613:
.LBE14614:
.LBE14617:
	.cfi_endproc
.LFE2970:
	.size	_ZNK4idAI20CanPlayChatterSoundsEv, .-_ZNK4idAI20CanPlayChatterSoundsEv
	.align 2
	.globl _ZN4idAI11PlayChatterEv
	.type	_ZN4idAI11PlayChatterEv, @function
_ZN4idAI11PlayChatterEv:
.LFB2971:
	.loc 4 4662 0
	.cfi_startproc
.LVL3480:
	mflr 0
	stwu 1,-48(1)
.LCFI388:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL3481:
	stw 0,52(1)
	stw 29,36(1)
	stw 30,40(1)
.LBB14628:
.LBB14629:
	.loc 18 249 0
	lwz 9,5192(3)
	cmpwi 7,9,0
	beq- 7,.L1837
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL3482:
.LBE14629:
.LBE14628:
	.loc 4 4664 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L1837
.LVL3483:
.L1836:
	.loc 4 4672 0
	lwz 0,52(1)
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI389:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L1837:
.LCFI390:
	.cfi_restore_state
	.loc 4 4664 0 discriminator 2
	lwz 4,4660(31)
	cmpwi 7,4,0
	beq- 7,.L1836
	.loc 4 4664 0 is_stmt 0 discriminator 3
	lis 29,gameLocal@ha
	lwz 9,4672(31)
	la 29,gameLocal@l(29)
	addis 30,29,0x25
	lwz 0,2004(30)
	cmpw 7,9,0
	bgt- 7,.L1836
.LVL3484:
.LBB14630:
.LBB14631:
.LBB14632:
.LBB14633:
.LBB14634:
.LBB14635:
	.loc 19 71 0 is_stmt 1
	addis 29,29,0x1
.LBE14635:
.LBE14634:
.LBE14633:
.LBE14632:
	.loc 4 4668 0
	mr 3,31
.LVL3485:
	li 7,0
	li 8,0
	li 5,1
	li 6,0
	bl _ZN8idEntity16StartSoundShaderEPK13idSoundShaderiibPi
.LBB14655:
.LBB14644:
.LBB14640:
.LBB14636:
	.loc 19 71 0
	lwz 0,-32064(29)
	lis 9,0x1
.LBE14636:
.LBE14640:
.LBE14644:
.LBE14655:
	.loc 4 4671 0
	lwz 11,4664(31)
.LBB14656:
.LBB14645:
.LBB14641:
.LBB14637:
	.loc 19 71 0
	ori 9,9,3533
.LBE14637:
.LBE14641:
.LBE14645:
.LBE14656:
	.loc 4 4671 0
	lwz 7,2004(30)
.LBB14657:
.LBB14646:
.LBB14642:
.LBB14638:
	.loc 19 71 0
	mullw 9,9,0
.LBE14638:
.LBE14642:
.LBE14646:
.LBE14657:
	.loc 4 4671 0
	lis 0,0x4330
	add 11,7,11
	xoris 11,11,0x8000
.LBB14658:
.LBB14647:
.LBB14643:
.LBB14639:
	.loc 19 71 0
	addi 9,9,1
	stw 9,-32064(29)
	.loc 19 72 0
	rlwinm 9,9,0,17,31
.LBE14639:
.LBE14643:
	.loc 19 83 0
	xoris 9,9,0x8000
.LBE14647:
.LBE14658:
	.loc 4 4671 0
	lwz 10,4664(31)
	lwz 8,4668(31)
	addi 31,31,4672
.LVL3486:
.LBB14659:
.LBB14648:
	.loc 19 83 0
	stw 9,20(1)
	stw 0,16(1)
.LBE14648:
.LBE14659:
	.loc 4 4671 0
	subf 9,10,8
	lis 10,.LC65@ha
	xoris 9,9,0x8000
.LBB14660:
.LBB14649:
	.loc 19 83 0
	lfd 12,16(1)
.LBE14649:
.LBE14660:
	.loc 4 4671 0
	lfs 0,.LC65@l(10)
	stw 0,8(1)
	stw 9,28(1)
.LBB14661:
.LBB14650:
	.loc 19 83 0
	fsub 12,12,0
.LBE14650:
.LBE14661:
	.loc 4 4671 0
	stw 0,24(1)
.LBB14662:
.LBB14651:
	.loc 19 83 0
	lis 9,.LC66@ha
.LBE14651:
.LBE14662:
	.loc 4 4671 0
	stw 11,12(1)
	lfd 11,24(1)
.LBB14663:
.LBB14652:
	.loc 19 83 0
	frsp 12,12
.LBE14652:
.LBE14663:
	.loc 4 4671 0
	lfd 13,8(1)
	fsub 13,13,0
	fsub 0,11,0
.LBB14664:
.LBB14653:
	.loc 19 83 0
	lfs 11,.LC66@l(9)
.LBE14653:
.LBE14664:
	.loc 4 4671 0
	frsp 13,13
.LVL3487:
.LBB14665:
.LBB14654:
	.loc 19 83 0
	fmuls 12,12,11
.LBE14654:
.LBE14665:
	.loc 4 4671 0
	frsp 0,0
	fmadds 0,12,0,13
	fctiwz 0,0
	stfiwx 0,0,31
.LBE14631:
.LBE14630:
	.loc 4 4672 0
	lwz 0,52(1)
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
.LVL3488:
	addi 1,1,48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI391:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2971:
	.size	_ZN4idAI11PlayChatterEv, .-_ZN4idAI11PlayChatterEv
	.align 2
	.globl _ZN4idAI15UpdateParticlesEv
	.type	_ZN4idAI15UpdateParticlesEv, @function
_ZN4idAI15UpdateParticlesEv:
.LFB2972:
	.loc 4 4679 0
	.cfi_startproc
.LVL3489:
	mflr 0
	stwu 1,-208(1)
.LCFI392:
	.cfi_def_cfa_offset 208
	.cfi_register 65, 0
	stw 30,176(1)
	mr 30,3
	.cfi_offset 30, -32
	stw 0,212(1)
	stfd 29,184(1)
	stfd 30,192(1)
	stfd 31,200(1)
	stw 14,112(1)
	stw 15,116(1)
	stw 16,120(1)
	stw 17,124(1)
	stw 18,128(1)
	stw 19,132(1)
	stw 20,136(1)
	stw 21,140(1)
	stw 22,144(1)
	stw 23,148(1)
	stw 24,152(1)
	stw 25,156(1)
	stw 26,160(1)
	stw 27,164(1)
	stw 28,168(1)
	stw 29,172(1)
	stw 31,180(1)
.LBB14714:
	.loc 4 4680 0
	lwz 0,152(3)
	.cfi_offset 31, -28
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.cfi_offset 20, -72
	.cfi_offset 19, -76
	.cfi_offset 18, -80
	.cfi_offset 17, -84
	.cfi_offset 16, -88
	.cfi_offset 15, -92
	.cfi_offset 14, -96
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	andi. 9,0,16
	bne- 0,.L1860
.LVL3490:
.L1840:
.LBE14714:
	.loc 4 4711 0
	lwz 0,212(1)
	lwz 14,112(1)
	mtlr 0
	lwz 15,116(1)
	lwz 16,120(1)
	lwz 17,124(1)
	lwz 18,128(1)
	lwz 19,132(1)
	lwz 20,136(1)
	lwz 21,140(1)
	lwz 22,144(1)
	lwz 23,148(1)
	lwz 24,152(1)
	lwz 25,156(1)
	lwz 26,160(1)
	lwz 27,164(1)
	lwz 28,168(1)
	lwz 29,172(1)
	lwz 30,176(1)
.LVL3491:
	lwz 31,180(1)
	lfd 29,184(1)
	lfd 30,192(1)
	lfd 31,200(1)
	addi 1,1,208
	.cfi_remember_state
.LCFI393:
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
.LVL3492:
.L1860:
.LCFI394:
	.cfi_restore_state
.LBB14821:
	.loc 4 4680 0 discriminator 1
	bl _ZNK8idEntity8IsHiddenEv
.LVL3493:
	cmpwi 7,3,0
	bne- 7,.L1840
.LVL3494:
.LBB14715:
.LBB14716:
	.loc 4 4685 0 discriminator 1
	lwz 11,4848(30)
	cmpwi 7,11,0
	ble- 7,.L1842
	.loc 4 4692 0
	lis 22,gameLocal@ha
.LBB14717:
.LBB14718:
.LBB14719:
.LBB14720:
.LBB14721:
.LBB14722:
	.loc 19 71 0
	lis 18,0x1
.LBE14722:
.LBE14721:
.LBE14720:
.LBE14719:
.LBE14718:
.LBE14717:
	.loc 4 4692 0
	la 22,gameLocal@l(22)
	lis 27,mat3_identity@ha
	.loc 4 4685 0
	li 31,0
	li 29,0
	li 25,0
.LBB14758:
.LBB14751:
.LBB14743:
.LBB14735:
.LBB14729:
.LBB14723:
	.loc 19 71 0
	ori 18,18,3533
.LBE14723:
.LBE14729:
	.loc 19 83 0
	lis 19,.LC65@ha
.LBE14735:
.LBE14743:
	.loc 19 87 0
	lis 20,.LC66@ha
	lis 21,.LC15@ha
.LBE14751:
.LBE14758:
	.loc 4 4692 0
	addi 16,30,636
	addis 24,22,0x25
	addi 28,1,68
	.loc 4 4679 0
	addi 17,1,104
	la 27,mat3_identity@l(27)
.LVL3495:
.L1854:
.LBB14759:
.LBB14760:
	.loc 14 589 0
	lwz 9,4860(30)
.LBE14760:
.LBE14759:
	.loc 4 4686 0
	lwzx 0,9,31
.LBB14762:
.LBB14761:
	.loc 14 589 0
	add 9,9,31
.LBE14761:
.LBE14762:
	.loc 4 4686 0
	cmpwi 7,0,0
	beq- 7,.L1843
.LVL3496:
	.loc 4 4686 0 is_stmt 0 discriminator 1
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L1843
	.loc 4 4688 0 is_stmt 1 discriminator 4
	lbz 0,2185(30)
	.loc 4 4687 0 discriminator 4
	addi 23,25,1
.LVL3497:
	.loc 4 4688 0 discriminator 4
	cmpwi 7,0,0
	beq- 7,.L1844
	.loc 4 4688 0 is_stmt 0
	li 10,0
.L1845:
.LBB14763:
.LBB14764:
.LBB14765:
.LBB14766:
	.loc 6 424 0 is_stmt 1
	mr 11,27
.LBE14766:
.LBE14765:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB14769:
.LBB14767:
	.loc 6 424 0
	lwzux 0,11,10
	mr 9,28
	stwux 0,9,10
.LBE14767:
.LBE14769:
	.loc 13 333 0
	addi 10,10,12
.LBB14770:
.LBB14768:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE14768:
.LBE14770:
	.loc 13 333 0
	bne+ 7,.L1845
.LBE14764:
.LBE14763:
	.loc 4 4690 0
	mr 3,30
	mr 26,22
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL3498:
.LBB14771:
.LBB14772:
	.loc 6 424 0
	lwz 11,0(3)
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	lwz 0,8(3)
	.loc 6 424 0
	stw 11,20(1)
	.loc 6 425 0
	stw 9,24(1)
	.loc 6 426 0
	stw 0,28(1)
.LVL3499:
.L1846:
.LBE14772:
.LBE14771:
.LBB14773:
.LBB14752:
.LBB14744:
.LBB14736:
.LBB14730:
.LBB14724:
	.loc 19 71 0
	addis 9,26,0x1
.LBE14724:
.LBE14730:
.LBE14736:
.LBE14744:
.LBE14752:
.LBE14773:
.LBB14774:
.LBB14775:
	.loc 14 589 0
	lwz 11,4860(30)
.LBE14775:
.LBE14774:
.LBB14777:
.LBB14753:
.LBB14745:
.LBB14737:
.LBB14731:
.LBB14725:
	.loc 19 71 0
	lwz 8,-32064(9)
.LBE14725:
.LBE14731:
.LBE14737:
.LBE14745:
.LBE14753:
.LBE14777:
	.loc 4 4697 0
	addi 6,1,20
	lwzx 4,11,31
.LBB14778:
.LBB14776:
	.loc 14 589 0
	add 10,11,31
.LBE14776:
.LBE14778:
.LBB14779:
.LBB14754:
.LBB14746:
.LBB14738:
.LBB14732:
.LBB14726:
	.loc 19 71 0
	mullw 8,18,8
.LBE14726:
.LBE14732:
.LBE14738:
.LBE14746:
.LBE14754:
.LBE14779:
	.loc 4 4697 0
	lwz 5,4(10)
.LBB14780:
.LBB14755:
.LBB14747:
.LBB14739:
	.loc 19 83 0
	lfs 0,.LC65@l(19)
.LBE14739:
.LBE14747:
.LBE14755:
.LBE14780:
	.loc 4 4697 0
	mr 7,28
.LBB14781:
.LBB14756:
	.loc 19 87 0
	lfs 13,.LC66@l(20)
.LBB14748:
.LBB14740:
.LBB14733:
.LBB14727:
	.loc 19 71 0
	addi 0,8,1
	.loc 19 72 0
	rlwinm 11,0,0,17,31
.LBE14727:
.LBE14733:
	.loc 19 83 0
	xoris 11,11,0x8000
	stw 11,108(1)
	lis 11,0x4330
	stw 11,104(1)
	lfd 1,104(1)
.LBE14740:
.LBE14748:
.LBE14756:
.LBE14781:
	.loc 4 4697 0
	lwz 3,1972(24)
.LVL3500:
.LBB14782:
.LBB14757:
.LBB14749:
.LBB14741:
	.loc 19 83 0
	fsub 1,1,0
.LBE14741:
.LBE14749:
	.loc 19 87 0
	lfs 0,.LC15@l(21)
.LBB14750:
.LBB14742:
.LBB14734:
.LBB14728:
	.loc 19 71 0
	stw 0,-32064(9)
.LBE14728:
.LBE14734:
	.loc 19 83 0
	frsp 1,1
.LBE14742:
.LBE14750:
	.loc 19 87 0
	fmsubs 1,1,13,0
.LBE14757:
.LBE14782:
	.loc 4 4697 0
	fadds 1,1,1
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
	cmpwi 7,3,0
	bne- 7,.L1855
	.loc 4 4698 0
	lbz 0,4844(30)
	.loc 4 4699 0
	lwz 9,4860(30)
	.loc 4 4698 0
	cmpwi 7,0,0
	beq- 7,.L1853
.LVL3501:
	.loc 4 4699 0
	lwz 0,2004(24)
	add 9,9,31
	.loc 4 4687 0
	mr 25,23
	.loc 4 4699 0
	stw 0,4(9)
	lwz 11,4848(30)
.LVL3502:
.L1843:
	.loc 4 4685 0
	addi 29,29,1
.LVL3503:
	addi 31,31,12
	cmpw 7,11,29
	bgt+ 7,.L1854
.LBE14716:
	.loc 4 4707 0
	cmpwi 7,25,0
	bne+ 7,.L1840
.LVL3504:
.L1842:
	.loc 4 4708 0
	mr 3,30
	li 4,16
	bl _ZN8idEntity14BecomeInactiveEi
	b .L1840
.LVL3505:
.L1855:
	lwz 11,4848(30)
.LBB14820:
	.loc 4 4687 0
	mr 25,23
	b .L1843
.LVL3506:
.L1844:
	.loc 4 4692 0
	lwz 4,8(9)
	mr 3,16
	lwz 5,2004(24)
	addi 6,1,20
	mr 7,28
	mr 26,22
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL3507:
	.loc 4 4693 0
	mr 10,28
	addi 8,30,264
	addi 0,1,16
.LVL3508:
.L1847:
.LBB14783:
.LBB14784:
	.loc 13 516 0
	lfs 9,0(10)
	.loc 4 4679 0
	mr 9,8
	.loc 13 516 0
	lfs 10,4(10)
	addi 11,1,4
	lfs 11,8(10)
.LVL3509:
.L1848:
.LBE14784:
.LBE14783:
	.loc 4 4679 0
	addi 9,9,4
.LBB14786:
.LBB14785:
	.loc 13 520 0
	lfs 0,12(9)
	lfs 12,0(9)
	fmuls 0,10,0
	lfs 13,24(9)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsu 0,4(11)
	.loc 13 517 0
	cmpw 7,11,0
	bne+ 7,.L1848
	.loc 13 522 0
	lwz 9,8(1)
	stw 9,0(10)
	lwz 9,12(1)
	stw 9,4(10)
	lwz 9,16(1)
	stw 9,8(10)
	.loc 13 523 0
	addi 10,10,12
.LVL3510:
	.loc 13 516 0
	cmpw 7,10,17
	bne+ 7,.L1847
.LBE14785:
.LBE14786:
	.loc 4 4694 0
	addi 15,30,4216
	li 4,0
	mr 3,15
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL3511:
.LBB14787:
.LBB14788:
	.loc 6 452 0
	lfs 12,2352(30)
	lfs 13,2356(30)
.LBE14788:
.LBE14787:
	.loc 4 4694 0
	mr 14,3
.LVL3512:
.LBB14791:
.LBB14789:
	.loc 6 452 0
	lfs 0,2360(30)
.LBE14789:
.LBE14791:
	.loc 4 4694 0
	mr 3,15
.LBB14792:
.LBB14790:
	.loc 6 452 0
	lfs 30,20(1)
	lfs 29,24(1)
	lfs 31,28(1)
	fadds 30,30,12
	fadds 29,29,13
	fadds 31,31,0
.LVL3513:
.LBE14790:
.LBE14792:
	.loc 4 4694 0
	bl _ZNK15idPhysics_Actor14GetGravityAxisEv
	addi 3,3,-4
	addi 11,30,2268
.LVL3514:
	.loc 4 4679 0
	addi 9,1,32
.LVL3515:
.L1850:
.LBB14793:
.LBB14794:
	.loc 13 467 0
	lfs 9,0(11)
	.loc 4 4679 0
	mr 10,3
	.loc 13 467 0
	lfs 10,4(11)
.LBE14794:
.LBE14793:
	.loc 4 4679 0
	li 8,0
.LBB14797:
.LBB14795:
	.loc 13 467 0
	lfs 11,8(11)
.LVL3516:
.L1851:
.LBE14795:
.LBE14797:
	.loc 4 4679 0
	addi 10,10,4
.LBB14798:
.LBB14796:
	.loc 13 468 0
	cmpwi 7,8,8
	.loc 13 471 0
	lfs 0,12(10)
	lfs 12,0(10)
	fmuls 0,10,0
	lfs 13,24(10)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsx 0,9,8
	.loc 13 468 0
	addi 8,8,4
	bne+ 7,.L1851
	addi 9,9,12
	.loc 13 474 0
	addi 11,11,12
.LVL3517:
	.loc 13 467 0
	cmpw 7,9,28
	bne+ 7,.L1850
.LVL3518:
.LBE14796:
.LBE14798:
.LBB14799:
.LBB14800:
.LBB14801:
	.loc 13 454 0
	lfs 13,48(1)
	lfs 12,44(1)
	lfs 0,52(1)
	fmuls 13,29,13
.LBE14801:
.LBE14800:
.LBE14799:
.LBB14806:
.LBB14807:
	.loc 6 452 0
	lfs 10,4(14)
.LBE14807:
.LBE14806:
.LBB14811:
.LBB14804:
.LBB14802:
	.loc 13 454 0
	fmuls 0,29,0
.LBE14802:
.LBE14804:
.LBE14811:
.LBB14812:
.LBB14808:
	.loc 6 452 0
	lfs 11,8(14)
.LBE14808:
.LBE14812:
.LBB14813:
.LBB14805:
.LBB14803:
	.loc 13 454 0
	fmuls 29,29,12
.LVL3519:
.LBE14803:
.LBE14805:
.LBE14813:
.LBB14814:
.LBB14809:
	lfs 12,36(1)
	fmadds 13,30,12,13
	lfs 12,40(1)
	fmadds 0,30,12,0
	lfs 12,32(1)
	fmadds 30,30,12,29
.LVL3520:
	lfs 12,60(1)
	fmadds 13,31,12,13
.LVL3521:
	lfs 12,64(1)
	fmadds 0,31,12,0
.LVL3522:
	lfs 12,56(1)
	.loc 6 452 0
	fadds 13,13,10
.LVL3523:
	.loc 13 454 0
	fmadds 31,31,12,30
.LVL3524:
	.loc 6 452 0
	lfs 12,0(14)
	fadds 0,0,11
.LVL3525:
.LBE14809:
.LBE14814:
.LBB14815:
.LBB14816:
	.loc 6 425 0
	stfs 13,24(1)
.LBE14816:
.LBE14815:
.LBB14818:
.LBB14810:
	.loc 6 452 0
	fadds 31,12,31
.LVL3526:
.LBE14810:
.LBE14818:
.LBB14819:
.LBB14817:
	.loc 6 426 0
	stfs 0,28(1)
	.loc 6 424 0
	stfs 31,20(1)
	b .L1846
.LVL3527:
.L1853:
.LBE14817:
.LBE14819:
	.loc 4 4701 0
	add 9,9,31
	stw 0,4(9)
.LVL3528:
	lwz 11,4848(30)
	b .L1843
.LBE14820:
.LBE14715:
.LBE14821:
	.cfi_endproc
.LFE2972:
	.size	_ZN4idAI15UpdateParticlesEv, .-_ZN4idAI15UpdateParticlesEv
	.align 2
	.globl _ZN4idAI5ThinkEv
	.type	_ZN4idAI5ThinkEv, @function
_ZN4idAI5ThinkEv:
.LFB2865:
	.loc 4 1069 0
	.cfi_startproc
.LVL3529:
	mflr 0
	stwu 1,-88(1)
.LCFI395:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -28
	stw 0,92(1)
	stfd 29,64(1)
	stfd 30,72(1)
	stfd 31,80(1)
	stw 30,56(1)
.LBB14845:
	.loc 4 1071 0
	.cfi_offset 30, -32
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	bl _ZN8idEntity12CheckDormantEv
.LVL3530:
	cmpwi 7,3,0
	bne- 7,.L1861
.LBB14846:
	.loc 4 1075 0
	lwz 0,152(31)
	andi. 9,0,1
	bne- 0,.L1889
	.loc 4 1150 0
	andi. 9,0,2
	bne- 0,.L1890
.L1882:
.LBE14846:
	.loc 4 1154 0
	lbz 0,4547(31)
	cmpwi 7,0,0
	bne- 7,.L1891
.L1883:
	.loc 4 1158 0
	lwz 0,192(31)
	andis. 9,0,4096
	beq- 0,.L1884
	.loc 4 1158 0 is_stmt 0 discriminator 1
	lbz 0,4545(31)
	cmpwi 7,0,0
	bne- 7,.L1892
.L1884:
	.loc 4 1168 0 is_stmt 1
	mr 3,31
	bl _ZN4idAI17UpdateMuzzleFlashEv
	.loc 4 1169 0
	mr 3,31
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
	.loc 4 1170 0
	mr 3,31
	bl _ZN4idAI15UpdateParticlesEv
	.loc 4 1171 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 4 1172 0
	mr 3,31
	bl _ZN16idAnimatedEntity19UpdateDamageEffectsEv
	.loc 4 1173 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
.L1861:
.LBE14845:
	.loc 4 1174 0
	lwz 0,92(1)
	lwz 30,56(1)
	mtlr 0
	lwz 31,60(1)
.LVL3531:
	lfd 29,64(1)
	lfd 30,72(1)
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI396:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3532:
.L1889:
.LCFI397:
	.cfi_restore_state
.LBB14899:
.LBB14897:
.LBB14847:
.LBB14848:
.LBB14849:
	.loc 7 634 0
	lwz 0,5120(31)
	.loc 7 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 7 634 0
	rlwinm 11,0,0,20,31
.LVL3533:
	.loc 7 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L1893
.LVL3534:
.L1864:
.LBE14849:
.LBE14848:
	.loc 4 1084 0
	lfs 0,2368(31)
.LBB14851:
.LBB14852:
.LBB14853:
.LBB14854:
	.loc 8 904 0
	lis 30,.LC91@ha
.LBE14854:
.LBE14853:
.LBE14852:
.LBE14851:
	.loc 4 1085 0
	lfs 31,4188(31)
.LBB14867:
.LBB14863:
.LBB14859:
.LBB14855:
	.loc 8 904 0
	lfs 13,.LC91@l(30)
.LBE14855:
.LBE14859:
.LBE14863:
.LBE14867:
	.loc 4 1085 0
	fadds 31,0,31
.LVL3535:
	.loc 4 1084 0
	lfs 30,4192(31)
	fadds 30,0,30
.LBB14868:
.LBB14864:
.LBB14860:
.LBB14856:
	.loc 8 904 0
	fcmpu 7,31,13
	cror 30,29,30
.LBE14856:
.LBE14860:
.LBE14864:
.LBE14868:
	.loc 4 1084 0
	stfs 30,4192(31)
.LBB14869:
.LBB14865:
.LBB14861:
.LBB14857:
	.loc 8 904 0
	bne- 7,.L1894
.L1865:
	.loc 8 905 0
	lfs 29,.LC91@l(30)
	fdivs 1,31,29
	bl floor
	fmr 0,31
	.loc 4 1069 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,29,0
.LVL3536:
	frsp 31,31
.LVL3537:
.L1866:
.LBE14857:
.LBE14861:
	.loc 8 912 0
	lis 9,.LC84@ha
	lfs 0,.LC84@l(9)
	fcmpu 7,31,0
	bng- 7,.L1868
	.loc 8 913 0
	lfs 0,.LC91@l(30)
	fsubs 31,31,0
.LVL3538:
.L1868:
.LBE14865:
.LBE14869:
.LBB14870:
.LBB14871:
	.loc 12 127 0
	li 0,0
.LBE14871:
.LBE14870:
	.loc 4 1085 0
	stfs 31,4188(31)
.LVL3539:
.LBB14875:
.LBB14872:
	.loc 12 127 0
	stw 0,2372(31)
.LBE14872:
.LBE14875:
	.loc 4 1087 0
	addi 3,1,20
.LBB14876:
.LBB14873:
	.loc 12 127 0
	stw 0,2368(31)
.LBE14873:
.LBE14876:
	.loc 4 1087 0
	addi 4,1,8
.LBB14877:
.LBB14874:
	.loc 12 127 0
	stw 0,2364(31)
.LVL3540:
.LBE14874:
.LBE14877:
.LBB14878:
.LBB14879:
	.loc 12 109 0
	stw 0,8(1)
	.loc 12 110 0
	stfs 30,12(1)
	.loc 12 111 0
	stw 0,16(1)
.LBE14879:
.LBE14878:
	.loc 4 1087 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL3541:
.LBB14880:
.LBB14881:
	.loc 13 333 0
	addi 7,31,2268
	li 10,0
.L1870:
.LBB14882:
.LBB14883:
	.loc 6 424 0
	addi 11,1,20
.LVL3542:
.LBE14883:
.LBE14882:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB14886:
.LBB14884:
	.loc 6 424 0
	lwzux 0,11,10
.LVL3543:
	mr 9,7
	stwux 0,9,10
.LBE14884:
.LBE14886:
	.loc 13 333 0
	addi 10,10,12
.LBB14887:
.LBB14885:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE14885:
.LBE14887:
	.loc 13 333 0
	bne+ 7,.L1870
.LBE14881:
.LBE14880:
	.loc 4 1089 0
	lwz 0,4684(31)
	cmpwi 7,0,0
	bne- 7,.L1895
	.loc 4 1094 0
	lbz 0,4545(31)
	cmpwi 7,0,0
	beq- 7,.L1896
.L1874:
	.loc 4 1099 0
	addi 3,31,2464
	bl _ZN9idIK_Walk14ClearJointModsEv
	.loc 4 1101 0
	lwz 0,3952(31)
	cmplwi 7,0,4
	bgt- 7,.L1873
	lis 9,.L1886@ha
	slwi 0,0,2
	la 9,.L1886@l(9)
	.loc 4 1119 0
	mr 3,31
	.loc 4 1101 0
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L1886:
	.long .L1875-.L1886
	.long .L1878-.L1886
	.long .L1879-.L1886
	.long .L1876-.L1886
	.long .L1877-.L1886
	.section	".text"
.LVL3544:
.L1894:
.LBB14888:
.LBB14866:
.LBB14862:
.LBB14858:
	.loc 8 904 0
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,31,0
	blt+ 7,.L1865
	b .L1866
.LVL3545:
.L1896:
.LBE14858:
.LBE14862:
.LBE14866:
.LBE14888:
	.loc 4 1094 0 discriminator 1
	mr 3,31
	bl _ZNK8idEntity8IsHiddenEv
.LVL3546:
	cmpwi 7,3,0
	beq- 7,.L1874
	.loc 4 1096 0 discriminator 4
	mr 3,31
	bl _ZN4idAI14UpdateAIScriptEv
.L1873:
.LVL3547:
.LBB14889:
.LBB14890:
	.loc 18 237 0
	lwz 9,5184(31)
	cmpwi 7,9,0
	beq- 7,.L1880
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1880:
.LVL3548:
.LBE14890:
.LBE14889:
.LBB14891:
.LBB14892:
	.loc 18 237 0
	lwz 9,5188(31)
	cmpwi 7,9,0
	beq- 7,.L1881
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.L1881:
.LVL3549:
.LBE14892:
.LBE14891:
.LBB14893:
.LBB14894:
	.loc 18 237 0
	lwz 9,5248(31)
	cmpwi 7,9,0
	beq- 7,.L1882
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.LBE14894:
.LBE14893:
.LBE14847:
.LBE14897:
	.loc 4 1154 0
	lbz 0,4547(31)
	cmpwi 7,0,0
	beq+ 7,.L1883
.LVL3550:
.L1891:
	.loc 4 1155 0
	mr 3,31
	bl _ZN4idAI10PushWithAFEv
	b .L1883
.L1892:
	.loc 4 1160 0
	lis 9,gameLocal@ha
	addi 3,31,636
	la 9,gameLocal@l(9)
	addis 9,9,0x25
	lwz 4,2000(9)
	lwz 5,2004(9)
	bl _ZN10idAnimator12ServiceAnimsEii
	b .L1884
.L1890:
.LBB14898:
	.loc 4 1151 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	b .L1882
.LVL3551:
.L1895:
.LBB14896:
	.loc 4 1090 0
	mr 3,31
	bl _ZNK8idEntity8IsHiddenEv
.LVL3552:
	cmpwi 7,3,0
	beq- 7,.L1897
.L1885:
	.loc 4 1093 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	b .L1873
.LVL3553:
.L1893:
.LBB14895:
.LBB14850:
	.loc 7 636 0
	addi 11,11,132
.LVL3554:
	slwi 11,11,2
.LVL3555:
	add 9,9,11
	lwz 9,4(9)
.LBE14850:
.LBE14895:
	.loc 4 1078 0
	cmpwi 7,9,0
	beq- 7,.L1864
	.loc 4 1079 0
	lwz 0,188(9)
	cmpwi 7,0,0
	bgt+ 7,.L1864
	.loc 4 1080 0
	mr 3,31
	bl _ZN4idAI9EnemyDeadEv
	b .L1864
.LVL3556:
.L1876:
	.loc 4 1110 0
	bl _ZN4idAI19UpdateEnemyPositionEv
	.loc 4 1111 0
	mr 3,31
	bl _ZN4idAI14UpdateAIScriptEv
	.loc 4 1112 0
	mr 3,31
	bl _ZN4idAI7FlyMoveEv
	.loc 4 1113 0
	mr 3,31
	bl _ZN4idAI11PlayChatterEv
	.loc 4 1114 0
	mr 3,31
	bl _ZN7idActor10CheckBlinkEv
	.loc 4 1115 0
	b .L1873
.L1879:
	.loc 4 1137 0
	bl _ZN4idAI19UpdateEnemyPositionEv
	.loc 4 1138 0
	mr 3,31
	bl _ZN4idAI14UpdateAIScriptEv
	.loc 4 1139 0
	mr 3,31
	bl _ZN4idAI9SlideMoveEv
	.loc 4 1140 0
	mr 3,31
	bl _ZN4idAI11PlayChatterEv
	.loc 4 1141 0
	mr 3,31
	bl _ZN7idActor10CheckBlinkEv
	.loc 4 1142 0
	b .L1873
.L1878:
	.loc 4 1128 0
	bl _ZN4idAI19UpdateEnemyPositionEv
	.loc 4 1129 0
	mr 3,31
	bl _ZN4idAI14UpdateAIScriptEv
	.loc 4 1130 0
	mr 3,31
	bl _ZN4idAI8AnimMoveEv
	.loc 4 1131 0
	mr 3,31
	bl _ZN4idAI11PlayChatterEv
	.loc 4 1132 0
	mr 3,31
	bl _ZN7idActor10CheckBlinkEv
	.loc 4 1133 0
	b .L1873
.L1875:
	.loc 4 1104 0
	bl _ZN4idAI14UpdateAIScriptEv
	.loc 4 1105 0
	mr 3,31
	bl _ZN4idAI8DeadMoveEv
	.loc 4 1106 0
	b .L1873
.L1877:
	.loc 4 1119 0
	bl _ZN4idAI19UpdateEnemyPositionEv
	.loc 4 1120 0
	mr 3,31
	bl _ZN4idAI14UpdateAIScriptEv
	.loc 4 1121 0
	mr 3,31
	bl _ZN4idAI10StaticMoveEv
	.loc 4 1122 0
	mr 3,31
	bl _ZN4idAI11PlayChatterEv
	.loc 4 1123 0
	mr 3,31
	bl _ZN7idActor10CheckBlinkEv
	.loc 4 1124 0
	b .L1873
.L1897:
	.loc 4 1090 0 discriminator 1
	addi 3,31,3792
	li 4,0
	bl _ZNK11idAnimState8AnimDoneEi
	cmpwi 7,3,0
	beq- 7,.L1885
	.loc 4 1091 0 discriminator 4
	mr 3,31
	bl _ZN4idAI13PlayCinematicEv
	b .L1885
.LBE14896:
.LBE14898:
.LBE14899:
	.cfi_endproc
.LFE2865:
	.size	_ZN4idAI5ThinkEv, .-_ZN4idAI5ThinkEv
	.align 2
	.globl _ZN4idAI16TriggerParticlesEPKc
	.type	_ZN4idAI16TriggerParticlesEPKc, @function
_ZN4idAI16TriggerParticlesEPKc:
.LFB2973:
	.loc 4 4718 0
	.cfi_startproc
.LVL3557:
	stwu 1,-32(1)
.LCFI398:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LBB14900:
	.loc 4 4721 0
	addi 3,3,636
.LVL3558:
.LBE14900:
	.loc 4 4718 0
	stw 28,16(1)
	stw 0,36(1)
	stw 27,12(1)
	stw 30,24(1)
	stw 31,28(1)
.LBB14907:
	.loc 4 4721 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	bl _ZNK10idAnimator14GetJointHandleEPKc
.LVL3559:
.LBB14901:
	.loc 4 4722 0
	lwz 11,4848(29)
.LBE14901:
	.loc 4 4721 0
	mr 28,3
.LVL3560:
.LBB14906:
	.loc 4 4722 0
	cmpwi 7,11,0
	ble- 7,.L1898
	.loc 4 4724 0
	lis 27,gameLocal@ha
	.loc 4 4722 0
	li 30,0
	.loc 4 4724 0
	la 27,gameLocal@l(27)
	.loc 4 4722 0
	li 31,0
	.loc 4 4724 0
	addis 27,27,0x25
	b .L1901
.LVL3561:
.L1900:
	.loc 4 4722 0
	cmpw 7,11,31
	ble- 7,.L1898
.LVL3562:
.L1901:
.LBB14902:
.LBB14903:
	.loc 14 589 0
	lwz 9,4860(29)
.LBE14903:
.LBE14902:
	.loc 4 4722 0
	addi 31,31,1
.LVL3563:
.LBB14905:
.LBB14904:
	.loc 14 589 0
	add 9,9,30
.LBE14904:
.LBE14905:
	.loc 4 4722 0
	addi 30,30,12
	.loc 4 4723 0
	lwz 0,8(9)
	cmpw 7,28,0
	bne+ 7,.L1900
.LVL3564:
	.loc 4 4724 0
	lwz 0,2004(27)
	.loc 4 4725 0
	mr 3,29
	li 4,16
	.loc 4 4724 0
	stw 0,4(9)
	.loc 4 4725 0
	bl _ZN8idEntity12BecomeActiveEi
	lwz 11,4848(29)
.LVL3565:
	.loc 4 4722 0
	cmpw 7,11,31
	bgt+ 7,.L1901
.LVL3566:
.L1898:
.LBE14906:
.LBE14907:
	.loc 4 4728 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
.LVL3567:
	lwz 29,20(1)
.LVL3568:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI399:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2973:
	.size	_ZN4idAI16TriggerParticlesEPKc, .-_ZN4idAI16TriggerParticlesEPKc
	.align 2
	.globl _ZN4idAI26UpdateAnimationControllersEv
	.type	_ZN4idAI26UpdateAnimationControllersEv, @function
_ZN4idAI26UpdateAnimationControllersEv:
.LFB2974:
	.loc 4 4742 0
	.cfi_startproc
.LVL3569:
	mflr 0
	stwu 1,-672(1)
.LCFI400:
	.cfi_def_cfa_offset 672
	.cfi_register 65, 0
	mfcr 12
	stw 28,544(1)
.LBB15154:
.LBB15155:
.LBB15156:
	.loc 7 635 0
	lis 28,gameLocal@ha
	.cfi_offset 28, -128
	.cfi_register 70, 12
.LBE15156:
.LBE15155:
.LBE15154:
	.loc 4 4742 0
	stw 29,548(1)
.LBB15658:
.LBB15161:
.LBB15157:
	.loc 7 635 0
	la 28,gameLocal@l(28)
.LBE15157:
.LBE15161:
.LBE15658:
	.loc 4 4742 0
	stw 31,556(1)
.LBB15659:
.LBB15162:
.LBB15158:
	.loc 7 638 0
	li 29,0
	.cfi_offset 31, -116
	.cfi_offset 29, -124
.LBE15158:
.LBE15162:
.LBE15659:
	.loc 4 4742 0
	stw 0,676(1)
	mr 31,3
.LVL3570:
	stfd 18,560(1)
	stfd 19,568(1)
	stfd 20,576(1)
	stfd 21,584(1)
	stfd 22,592(1)
	stfd 23,600(1)
	stfd 24,608(1)
	stfd 25,616(1)
	stfd 26,624(1)
	stfd 27,632(1)
	stfd 28,640(1)
	stfd 29,648(1)
	stfd 30,656(1)
	stfd 31,664(1)
	stw 24,528(1)
	stw 25,532(1)
	stw 26,536(1)
	stw 27,540(1)
	stw 30,552(1)
	stw 12,524(1)
.LBB15660:
.LBB15163:
.LBB15159:
	.loc 7 634 0
	lwz 0,2424(3)
	.cfi_offset 70, -148
	.cfi_offset 30, -120
	.cfi_offset 27, -132
	.cfi_offset 26, -136
	.cfi_offset 25, -140
	.cfi_offset 24, -144
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
	.cfi_offset 65, 4
	rlwinm 9,0,0,20,31
.LVL3571:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L2023
.LVL3572:
.L1904:
.LBE15159:
.LBE15163:
.LBB15164:
.LBB15165:
	.loc 18 249 0
	lwz 9,5192(31)
	cmpwi 7,9,0
	beq- 7,.L1905
.LBE15165:
.LBE15164:
	.loc 4 4762 0
	lwz 0,0(9)
	cmpwi 7,0,0
	bne- 7,.L2024
.L1905:
	.loc 4 4766 0
	lwz 4,5116(31)
	cmpwi 7,4,-1
	beq- 7,.L2025
	.loc 4 4771 0
	addis 27,28,0x25
	addi 30,1,380
	lwz 5,2004(27)
	addi 6,1,176
	mr 7,30
	mr 3,31
.LVL3573:
	bl _ZN16idAnimatedEntity22GetJointWorldTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL3574:
	.loc 4 4772 0
	addi 3,1,404
	bl _ZNK6idVec35ToYawEv
.LBB15166:
.LBB15167:
	.loc 12 109 0
	li 0,0
.LBE15167:
.LBE15166:
	.loc 4 4773 0
	addi 3,1,344
	addi 4,1,128
	.loc 4 4772 0
	fmr 28,1
.LVL3575:
.LBB15169:
.LBB15168:
	.loc 12 109 0
	stw 0,128(1)
	.loc 12 110 0
	stfs 1,132(1)
	.loc 12 111 0
	stw 0,136(1)
.LBE15168:
.LBE15169:
	.loc 4 4773 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL3576:
	li 10,0
.L1910:
.LBB15170:
.LBB15171:
.LBB15172:
.LBB15173:
	.loc 6 424 0
	addi 11,1,344
.LVL3577:
.LBE15173:
.LBE15172:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB15176:
.LBB15174:
	.loc 6 424 0
	lwzux 0,11,10
.LVL3578:
	mr 9,30
	stwux 0,9,10
.LBE15174:
.LBE15176:
	.loc 13 333 0
	addi 10,10,12
.LBB15177:
.LBB15175:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE15175:
.LBE15177:
	.loc 13 333 0
	bne+ 7,.L1910
.LBE15171:
.LBE15170:
	.loc 4 4776 0
	lwz 4,5112(31)
	cmpwi 7,4,-1
	beq- 7,.L1911
.LVL3579:
.L2029:
	.loc 4 4777 0
	cmpwi 4,29,0
	.loc 4 4778 0
	addi 26,1,152
	lwz 5,2004(27)
	.loc 4 4777 0
	beq- 4,.L1912
	.loc 4 4778 0
	mr 3,29
	mr 6,26
	addi 7,1,416
	bl _ZN16idAnimatedEntity22GetJointWorldTransformE13jointHandle_tiR6idVec3R6idMat3
.L1913:
	.loc 4 4782 0
	addi 3,31,4216
	li 4,0
	lfs 31,160(1)
	bl _ZNK15idPhysics_Actor9GetOriginEi
	lfs 0,8(3)
.LBB15178:
.LBB15179:
	.loc 20 142 0
	lis 9,ai_debugMove+44@ha
	lwz 9,ai_debugMove+44@l(9)
.LBE15179:
.LBE15178:
	.loc 4 4782 0
	fsubs 0,31,0
	stfs 0,2348(31)
	.loc 4 4783 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L2026
.L1914:
	.loc 4 4790 0
	beq- 4,.L1915
	.loc 4 4791 0
	mr 3,31
	bl _ZN7idActor24CopyJointsFromBodyToHeadEv
.L1915:
	.loc 4 4801 0
	mr 3,31
.LBB15180:
.LBB15181:
	.loc 7 638 0
	li 26,0
.LBE15181:
.LBE15180:
	.loc 4 4801 0
	bl _ZN7idActor26UpdateAnimationControllersEv
.LVL3580:
.LBB15184:
.LBB15182:
	.loc 7 634 0
	lwz 0,4696(31)
	rlwinm 9,0,0,20,31
.LVL3581:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L2027
.LVL3582:
.L1916:
.LBE15182:
.LBE15184:
	.loc 4 4804 0
	lbz 0,4692(31)
	cmpwi 7,0,0
	beq- 7,.L1917
	.loc 4 4804 0 is_stmt 0 discriminator 1
	lbz 0,3921(31)
	cmpwi 7,0,0
	beq- 7,.L1917
	.loc 4 4804 0 discriminator 2
	lwz 9,2004(27)
	lwz 0,4712(31)
	cmpw 7,9,0
	blt- 7,.L1918
.L1917:
	.loc 4 4805 0 is_stmt 1
	addi 3,1,92
	mr 4,31
	bl _ZNK7idActor14GetEyePositionEv
.LVL3583:
	.loc 6 452 0
	lis 9,.LC236@ha
	lfs 0,.LC236@l(9)
	lfs 13,92(1)
	lfs 29,380(1)
	lfs 30,384(1)
	fmadds 29,29,0,13
	lfs 13,96(1)
	lfs 31,388(1)
	fmadds 30,30,0,13
	lfs 13,100(1)
	lfs 11,4700(31)
	fmadds 31,31,0,13
.LVL3584:
	lfs 12,4704(31)
	lfs 13,4708(31)
.LVL3585:
.L1919:
.LBB15185:
.LBB15186:
	.loc 6 431 0
	fsubs 10,31,13
.LBE15186:
.LBE15185:
	.loc 4 4817 0
	lfs 0,4824(31)
.LVL3586:
.LBB15189:
.LBB15187:
	.loc 6 431 0
	fsubs 8,29,11
.LBE15187:
.LBE15189:
	.loc 4 4821 0
	addi 3,1,188
.LBB15190:
.LBB15188:
	.loc 6 431 0
	fsubs 9,30,12
.LBE15188:
.LBE15190:
.LBB15191:
.LBB15192:
.LBB15193:
.LBB15194:
	.loc 8 904 0
	lis 26,.LC91@ha
.LBE15194:
.LBE15193:
.LBE15192:
.LBE15191:
.LBB15201:
.LBB15202:
	.loc 6 452 0
	fmadds 11,0,8,11
.LVL3587:
.LBE15202:
.LBE15201:
.LBB15208:
.LBB15209:
	.loc 6 431 0
	lfs 8,176(1)
.LVL3588:
.LBE15209:
.LBE15208:
.LBB15214:
.LBB15203:
	.loc 6 452 0
	fmadds 12,0,9,12
.LVL3589:
.LBE15203:
.LBE15214:
.LBB15215:
.LBB15210:
	.loc 6 431 0
	lfs 9,180(1)
.LVL3590:
.LBE15210:
.LBE15215:
.LBB15216:
.LBB15204:
	.loc 6 452 0
	fmadds 0,0,10,13
.LBE15204:
.LBE15216:
.LBB15217:
.LBB15211:
	.loc 6 431 0
	lfs 10,184(1)
	fsubs 9,30,9
.LBE15211:
.LBE15217:
.LBB15218:
.LBB15205:
	.loc 6 424 0
	stfs 11,4700(31)
.LBE15205:
.LBE15218:
.LBB15219:
.LBB15212:
	.loc 6 431 0
	fsubs 10,31,10
.LBE15212:
.LBE15219:
.LBB15220:
.LBB15206:
	.loc 6 425 0
	stfs 12,4704(31)
.LBE15206:
.LBE15220:
.LBB15221:
.LBB15213:
	.loc 6 431 0
	fsubs 8,29,8
.LBE15213:
.LBE15221:
.LBB15222:
.LBB15207:
	.loc 6 426 0
	stfs 0,4708(31)
.LVL3591:
.LBE15207:
.LBE15222:
.LBB15223:
.LBB15224:
	.loc 6 425 0
	stfs 9,192(1)
	.loc 6 426 0
	stfs 10,196(1)
	.loc 6 424 0
	stfs 8,188(1)
.LBE15224:
.LBE15223:
	.loc 4 4821 0
	bl _ZNK6idVec35ToYawEv
.LVL3592:
	fsubs 28,1,28
.LVL3593:
.LBB15225:
.LBB15199:
.LBB15197:
.LBB15195:
	.loc 8 904 0
	lfs 0,.LC91@l(26)
	fcmpu 7,28,0
.LBE15195:
.LBE15197:
.LBE15199:
.LBE15225:
	.loc 4 4821 0
	stfs 28,504(1)
.LVL3594:
.LBB15226:
.LBB15200:
.LBB15198:
.LBB15196:
	.loc 8 904 0
	cror 30,29,30
	beq- 7,.L1923
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,28,0
	bnl- 7,.L1924
.L1923:
	.loc 8 905 0
	lfs 0,504(1)
	lfs 28,.LC91@l(26)
.LVL3595:
	fdivs 1,0,28
	bl floor
	lfs 0,504(1)
	.loc 4 4742 0
	fneg 1,1
	.loc 8 905 0
	fmadd 28,1,28,0
	frsp 28,28
	stfs 28,504(1)
.LVL3596:
.L1924:
.LBE15196:
.LBE15198:
	.loc 8 912 0
	lis 25,.LC84@ha
	lfs 9,504(1)
	lfs 0,.LC84@l(25)
	fcmpu 7,9,0
	bng- 7,.L1926
	.loc 8 913 0
	lfs 0,.LC91@l(26)
	fsubs 11,9,0
	stfs 11,504(1)
.LVL3597:
.L1926:
.LBE15200:
.LBE15226:
.LBB15227:
.LBB15228:
	.loc 6 431 0
	lfs 0,156(1)
.LBE15228:
.LBE15227:
.LBB15232:
.LBB15233:
.LBB15234:
.LBB15235:
	.loc 8 246 0
	lis 24,.LC15@ha
.LBE15235:
.LBE15234:
.LBE15233:
.LBE15232:
.LBB15249:
.LBB15250:
.LBB15251:
.LBB15252:
	.loc 6 435 0
	lfs 11,408(1)
.LBE15252:
.LBE15251:
.LBE15250:
.LBE15249:
	.loc 4 4835 0
	addi 3,1,164
.LBB15268:
.LBB15229:
	.loc 6 431 0
	fsubs 30,30,0
.LVL3598:
	lfs 0,152(1)
	fsubs 29,29,0
.LVL3599:
	lfs 0,160(1)
.LBE15229:
.LBE15268:
.LBB15269:
.LBB15242:
	.loc 6 527 0
	fmuls 13,30,30
.LBE15242:
.LBE15269:
.LBB15270:
.LBB15230:
	.loc 6 431 0
	fsubs 31,31,0
.LVL3600:
.LBE15230:
.LBE15270:
.LBB15271:
.LBB15243:
.LBB15239:
.LBB15236:
	.loc 8 246 0
	lfs 0,.LC15@l(24)
.LBE15236:
.LBE15239:
.LBE15243:
.LBE15271:
.LBB15272:
.LBB15231:
	.loc 6 527 0
	fmadds 13,29,29,13
	fmadds 13,31,31,13
	stfs 13,508(1)
.LVL3601:
.LBE15231:
.LBE15272:
.LBB15273:
.LBB15244:
.LBB15240:
.LBB15237:
	.loc 8 246 0
	fmuls 0,13,0
	.loc 8 248 0
	lwz 9,508(1)
	.loc 4 4742 0
	fneg 0,0
	.loc 8 248 0
	srawi 0,9,1
	.loc 8 249 0
	lis 9,0x5f37
	ori 9,9,23007
	subf 9,0,9
	stw 9,508(1)
.LVL3602:
	.loc 8 250 0
	lis 9,.LC63@ha
	lfs 13,.LC63@l(9)
.LVL3603:
	lfs 9,508(1)
	fmuls 12,9,9
	fmadds 0,0,12,13
.LBE15237:
.LBE15240:
.LBE15244:
.LBE15273:
.LBB15274:
.LBB15263:
.LBB15254:
.LBB15255:
	.loc 6 435 0
	lfs 12,384(1)
.LBE15255:
.LBE15254:
.LBB15257:
.LBB15258:
	lfs 13,396(1)
.LBE15258:
.LBE15257:
.LBE15263:
.LBE15274:
.LBB15275:
.LBB15245:
.LBB15241:
.LBB15238:
	.loc 8 250 0
	fmuls 0,9,0
.LVL3604:
.LBE15238:
.LBE15241:
	.loc 6 530 0
	fmuls 30,30,0
.LVL3605:
	.loc 6 529 0
	fmuls 29,29,0
.LVL3606:
	.loc 6 531 0
	fmuls 31,31,0
.LVL3607:
.LBE15245:
.LBE15275:
.LBB15276:
.LBB15264:
	.loc 6 435 0
	lfs 0,380(1)
.LVL3608:
.LBB15260:
.LBB15256:
	fmuls 12,30,12
.LBE15256:
.LBE15260:
.LBE15264:
.LBE15276:
.LBB15277:
.LBB15246:
	.loc 6 530 0
	stfs 30,192(1)
.LBE15246:
.LBE15277:
.LBB15278:
.LBB15265:
.LBB15261:
.LBB15259:
	.loc 6 435 0
	fmuls 13,30,13
.LBE15259:
.LBE15261:
.LBE15265:
.LBE15278:
.LBB15279:
.LBB15247:
	.loc 6 529 0
	stfs 29,188(1)
.LBE15247:
.LBE15279:
.LBB15280:
.LBB15266:
.LBB15262:
.LBB15253:
	.loc 6 435 0
	fmuls 11,30,11
.LBE15253:
.LBE15262:
.LBE15266:
.LBE15280:
.LBB15281:
.LBB15248:
	.loc 6 531 0
	stfs 31,196(1)
.LVL3609:
.LBE15248:
.LBE15281:
.LBB15282:
.LBB15267:
	.loc 6 435 0
	fmadds 12,29,0,12
	lfs 0,392(1)
	fmadds 13,29,0,13
	lfs 0,404(1)
	fmadds 0,29,0,11
	lfs 11,388(1)
	fmadds 12,31,11,12
	lfs 11,400(1)
	fmadds 13,31,11,13
	lfs 11,412(1)
	.loc 13 629 0
	stfs 12,164(1)
.LVL3610:
	.loc 6 435 0
	fmadds 0,31,11,0
	.loc 13 630 0
	stfs 13,168(1)
.LVL3611:
	.loc 13 631 0
	stfs 0,172(1)
.LBE15267:
.LBE15282:
	.loc 4 4835 0
	bl _ZNK6idVec37ToPitchEv
.LVL3612:
.LBB15283:
.LBB15284:
.LBB15285:
.LBB15286:
	.loc 8 904 0
	lfs 0,.LC91@l(26)
.LBE15286:
.LBE15285:
.LBE15284:
.LBE15283:
	.loc 4 4835 0
	fmr 31,1
.LVL3613:
.LBB15290:
.LBB15289:
.LBB15288:
.LBB15287:
	.loc 8 904 0
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L1928
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	fcmpu 7,1,0
	bnl- 7,.L1929
.L1928:
	.loc 8 905 0
	lfs 30,.LC91@l(26)
	fdivs 1,31,30
.LVL3614:
	bl floor
	fmr 0,31
	.loc 4 4742 0
	fneg 1,1
	.loc 8 905 0
	fmadd 31,1,30,0
.LVL3615:
	frsp 31,31
.LVL3616:
.L1929:
.LBE15287:
.LBE15288:
	.loc 8 912 0
	lfs 0,.LC84@l(25)
	fcmpu 7,31,0
	bng- 7,.L1931
	.loc 8 913 0
	lfs 0,.LC91@l(26)
	fsubs 31,31,0
.LVL3617:
.L1931:
.LBE15289:
.LBE15290:
	.loc 4 4835 0
	fneg 31,31
.LVL3618:
.LBB15291:
.LBB15292:
	.loc 12 165 0
	lfs 0,4736(31)
.LBE15292:
.LBE15291:
.LBB15295:
.LBB15296:
.LBB15297:
	.loc 12 205 0
	lfs 11,4724(31)
.LBE15297:
.LBE15296:
.LBE15295:
.LBB15302:
.LBB15293:
	.loc 12 165 0
	lis 9,.LC6@ha
	lfs 13,4740(31)
	fsubs 0,31,0
	lfs 12,4744(31)
	lfs 9,504(1)
.LBE15293:
.LBE15302:
.LBB15303:
.LBB15300:
.LBB15298:
	.loc 12 205 0
	fcmpu 7,0,11
.LBE15298:
.LBE15300:
.LBE15303:
.LBB15304:
.LBB15294:
	.loc 12 165 0
	lfs 11,.LC6@l(9)
	fsubs 13,9,13
	fsubs 12,11,12
.LVL3619:
.LBE15294:
.LBE15304:
.LBB15305:
.LBB15301:
.LBB15299:
	.loc 12 205 0
	bne- 7,.L1933
	lfs 11,4728(31)
	fcmpu 7,13,11
	bne- 7,.L1933
	lfs 11,4732(31)
	lis 9,.LC77@ha
	fcmpu 7,12,11
	bne- 7,.L1933
.LVL3620:
.L1934:
.LBE15299:
.LBE15301:
.LBE15305:
	.loc 4 4851 0
	lfs 0,.LC77@l(9)
.LBB15306:
.LBB15307:
	.loc 8 781 0
	lwz 9,504(1)
	rlwinm 0,9,0,1,31
.LBE15307:
.LBE15306:
	.loc 4 4851 0
	stw 0,512(1)
	lfs 9,512(1)
	fcmpu 7,9,0
	blt- 7,.L1948
.LVL3621:
.L2030:
	lwz 9,4716(31)
	.loc 4 4855 0
	lwz 0,2004(27)
.LVL3622:
	cmpw 7,0,9
	bge- 7,.L1950
.L2031:
	.loc 4 4855 0 is_stmt 0 discriminator 1
	lwz 9,4720(31)
	cmpw 7,0,9
	blt- 7,.L1950
	.loc 4 4855 0
	lfs 11,4752(31)
	lfs 13,4756(31)
	stfs 11,504(1)
.L1951:
.LVL3623:
	.loc 4 4862 0 is_stmt 1
	lis 9,.LC237@ha
	lfs 0,4760(31)
	lfs 7,.LC237@l(9)
.LBB15310:
.LBB15311:
	.loc 12 165 0
	lfs 10,4736(31)
.LBE15311:
.LBE15310:
	.loc 4 4862 0
	fcmpu 7,0,7
.LBB15313:
.LBB15312:
	.loc 12 165 0
	lfs 8,4748(31)
	lfs 11,4740(31)
	lfs 12,4744(31)
	fsubs 8,8,10
	lfs 0,504(1)
	fsubs 13,13,12
.LVL3624:
	fsubs 9,0,11
.LVL3625:
.LBE15312:
.LBE15313:
	.loc 4 4862 0
	bne- 7,.L1963
	.loc 4 4862 0 is_stmt 0 discriminator 1
	lfs 0,.LC84@l(25)
	lfs 6,4772(31)
	fcmpu 7,6,0
	bne- 7,.L1963
	.loc 4 4863 0 is_stmt 1
	fcmpu 7,8,0
	bgt- 7,.L1964
	.loc 4 4863 0 is_stmt 0 discriminator 1
	fcmpu 7,8,7
	cror 30,28,30
	bne- 7,.L1963
.L1964:
	.loc 4 4864 0 is_stmt 1
	lfs 0,.LC91@l(26)
	fsubs 8,0,8
.LVL3626:
.L1963:
	.loc 4 4867 0
	lfs 7,.LC237@l(9)
	lfs 0,4764(31)
	fcmpu 7,0,7
	bne- 7,.L1966
	.loc 4 4867 0 is_stmt 0 discriminator 1
	lfs 0,.LC84@l(25)
	lfs 6,4776(31)
	fcmpu 7,6,0
	bne- 7,.L1966
	.loc 4 4868 0 is_stmt 1
	fcmpu 7,9,0
	bng- 7,.L2015
	.loc 4 4869 0
	lfs 0,.LC91@l(26)
	fsubs 9,9,0
.LVL3627:
.L1966:
	.loc 4 4874 0
	lfs 0,4828(31)
.LVL3628:
	.loc 4 4875 0
	addi 3,31,4736
.LBB15314:
.LBB15315:
	.loc 12 153 0
	fmadds 10,0,8,10
	fmadds 11,0,9,11
	fmadds 0,0,13,12
	.loc 12 146 0
	stfs 10,4736(31)
	.loc 12 147 0
	stfs 11,4740(31)
	.loc 12 148 0
	stfs 0,4744(31)
.LBE15315:
.LBE15314:
	.loc 4 4875 0
	bl _ZN8idAngles12Normalize180Ev
.LVL3629:
	.loc 4 4878 0
	lwz 0,4784(31)
	cmpwi 7,0,0
	.loc 4 4877 0
	li 0,0
	stw 0,148(1)
.LVL3630:
	.loc 4 4878 0
	ble- 7,.L1970
	li 27,0
	li 28,0
	addi 26,31,636
.LVL3631:
.L1971:
	.loc 4 4879 0 discriminator 2
	lwz 9,4812(31)
	.loc 4 4881 0 discriminator 2
	slwi 0,28,2
	.loc 4 4879 0 discriminator 2
	lfs 11,4736(31)
	.loc 4 4881 0 discriminator 2
	addi 3,1,308
	.loc 4 4879 0 discriminator 2
	lfsux 13,9,27
	.loc 4 4881 0 discriminator 2
	addi 4,1,140
	.loc 4 4880 0 discriminator 2
	lfs 12,4740(31)
	.loc 4 4878 0 discriminator 2
	addi 28,28,1
.LVL3632:
	.loc 4 4880 0 discriminator 2
	lfs 0,4(9)
	.loc 4 4879 0 discriminator 2
	fmuls 13,11,13
	.loc 4 4881 0 discriminator 2
	lwz 9,4796(31)
	.loc 4 4878 0 discriminator 2
	addi 27,27,12
	.loc 4 4880 0 discriminator 2
	fmuls 0,12,0
	.loc 4 4879 0 discriminator 2
	stfs 13,140(1)
	.loc 4 4880 0 discriminator 2
	stfs 0,144(1)
	.loc 4 4881 0 discriminator 2
	lwzx 25,9,0
	bl _ZNK8idAngles6ToMat3Ev
	mr 3,26
	li 5,3
	mr 4,25
	addi 6,1,308
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
.LVL3633:
	.loc 4 4878 0 discriminator 2
	lwz 0,4784(31)
	cmpw 7,0,28
	bgt+ 7,.L1971
.LVL3634:
.L1970:
	.loc 4 4884 0
	lwz 0,3952(31)
	cmpwi 7,0,3
	beq- 7,.L2028
.LBB15316:
	.loc 4 4889 0
	beq- 4,.L1973
.L2034:
.LBB15317:
	.loc 4 4890 0
	lwz 9,0(29)
	mr 3,29
	lwz 0,92(9)
	mtctr 0
	bctrl
.LBB15318:
	.loc 4 4892 0
	lbz 0,3921(31)
.LBE15318:
	.loc 4 4890 0
	mr 28,3
.LVL3635:
.LBB15439:
	.loc 4 4892 0
	cmpwi 7,0,0
	beq- 7,.L1974
.LVL3636:
.LBB15319:
.LBB15320:
.LBB15321:
	.loc 12 153 0
	lfs 9,4740(31)
.LBE15321:
.LBE15320:
	.loc 4 4893 0
	addi 27,1,272
.LBB15327:
.LBB15324:
	.loc 12 153 0
	lfs 10,4744(31)
.LBE15324:
.LBE15327:
	.loc 4 4893 0
	addi 4,1,68
.LBB15328:
.LBB15325:
	.loc 12 153 0
	lfs 11,4736(31)
.LBE15325:
.LBE15328:
	.loc 4 4893 0
	mr 3,27
.LVL3637:
.LBB15329:
.LBB15326:
	.loc 12 153 0
	lfs 13,4728(31)
	lfs 0,4732(31)
	lfs 12,4724(31)
	fadds 13,9,13
	fadds 0,10,0
.LVL3638:
	fadds 12,11,12
.LBB15322:
.LBB15323:
	.loc 12 110 0
	stfs 13,72(1)
	.loc 12 111 0
	stfs 0,76(1)
	.loc 12 109 0
	stfs 12,68(1)
.LBE15323:
.LBE15322:
.LBE15326:
.LBE15329:
	.loc 4 4893 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL3639:
	mr 3,29
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL3640:
.LBE15319:
.LBE15439:
.LBE15317:
.LBE15316:
	.loc 4 4894 0
	mr 11,27
.LBB15507:
.LBB15444:
.LBB15440:
.LBB15436:
.LBB15330:
.LBB15331:
.LBB15332:
	.loc 6 402 0
	lfs 26,0(3)
.LVL3641:
.LBE15332:
.LBE15331:
.LBE15330:
.LBE15436:
.LBE15440:
.LBE15444:
.LBE15507:
	.loc 13 465 0
	addi 9,1,236
.LBB15508:
.LBB15445:
.LBB15441:
.LBB15437:
.LBB15353:
.LBB15333:
.LBB15334:
	.loc 6 402 0
	lfs 24,12(3)
.LVL3642:
.LBE15334:
.LBE15333:
.LBB15335:
.LBB15336:
	lfs 25,24(3)
.LVL3643:
.LBE15336:
.LBE15335:
.LBB15337:
.LBB15338:
	lfs 23,4(3)
.LVL3644:
.LBE15338:
.LBE15337:
.LBB15339:
.LBB15340:
	lfs 21,16(3)
.LVL3645:
.LBE15340:
.LBE15339:
.LBB15341:
.LBB15342:
	lfs 22,28(3)
.LVL3646:
.LBE15342:
.LBE15341:
.LBB15343:
.LBB15344:
	lfs 29,8(3)
.LVL3647:
.LBE15344:
.LBE15343:
.LBB15345:
.LBB15346:
	lfs 27,20(3)
.LVL3648:
.LBE15346:
.LBE15345:
.LBB15347:
.LBB15348:
	lfs 28,32(3)
.LVL3649:
.L1975:
	.loc 4 4742 0
	lfs 0,4(11)
.LBE15348:
.LBE15347:
.LBE15353:
.LBB15354:
.LBB15355:
	.loc 13 471 0
	lfs 13,20(30)
	lfs 11,12(30)
	lfs 12,16(30)
	fmuls 11,0,11
	lfs 8,0(30)
	fmuls 12,0,12
	lfs 9,4(30)
	fmuls 0,0,13
	lfs 10,8(30)
.LBE15355:
.LBE15354:
.LBB15359:
.LBB15351:
.LBB15349:
	.loc 4 4742 0
	lfs 13,0(11)
.LBE15349:
.LBE15351:
.LBE15359:
.LBB15360:
.LBB15356:
	.loc 13 471 0
	fmadds 11,13,8,11
	lfs 8,24(30)
	fmadds 12,13,9,12
	lfs 9,28(30)
	fmadds 13,13,10,0
.LBE15356:
.LBE15360:
.LBB15361:
.LBB15352:
.LBB15350:
	.loc 4 4742 0
	lfs 0,8(11)
.LBE15350:
.LBE15352:
.LBE15361:
.LBB15362:
.LBB15357:
	.loc 13 471 0
	lfs 10,32(30)
	.loc 13 474 0
	addi 11,11,12
.LVL3650:
	.loc 13 471 0
	fmadds 11,8,0,11
	fmadds 12,9,0,12
	fmadds 0,10,0,13
	stfs 11,0(9)
.LVL3651:
	stfs 12,4(9)
.LVL3652:
	stfs 0,8(9)
.LVL3653:
	addi 9,9,12
.LVL3654:
	.loc 13 467 0
	cmpw 7,9,27
	bne+ 7,.L1975
	li 10,0
	addi 7,1,416
.LVL3655:
.L1976:
.LBE15357:
.LBE15362:
.LBB15363:
.LBB15364:
.LBB15365:
.LBB15366:
	.loc 6 424 0
	addi 11,1,236
.LBE15366:
.LBE15365:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB15369:
.LBB15367:
	.loc 6 424 0
	lwzux 0,11,10
	mr 9,7
	stwux 0,9,10
.LBE15367:
.LBE15369:
	.loc 13 333 0
	addi 10,10,12
.LBB15370:
.LBB15368:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE15368:
.LBE15370:
	.loc 13 333 0
	bne+ 7,.L1976
.LVL3656:
.LBE15364:
.LBE15363:
	.loc 4 4896 0
	mr 3,29
.LVL3657:
	.loc 4 4895 0
	lfs 30,4820(31)
.LVL3658:
.LBB15371:
.LBB15372:
	.loc 6 439 0
	lfs 19,428(1)
	lfs 18,432(1)
	lfs 20,436(1)
.LVL3659:
.LBE15372:
.LBE15371:
	.loc 4 4896 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL3660:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL3661:
.LBB15373:
.LBB15374:
	.loc 6 439 0
	lis 9,.LC20@ha
	lfs 31,.LC20@l(9)
.LVL3662:
.LBE15374:
.LBE15373:
	.loc 4 4897 0
	li 5,4
.LBB15378:
.LBB15375:
	.loc 6 439 0
	lfs 10,420(1)
.LBE15375:
.LBE15378:
	.loc 4 4897 0
	addi 6,1,56
.LBB15379:
.LBB15376:
	.loc 6 439 0
	lfs 11,416(1)
	fmuls 10,10,31
	lfs 12,424(1)
	fmuls 11,11,31
.LBE15376:
.LBE15379:
.LBB15380:
.LBB15381:
	.loc 6 481 0
	lfs 9,0(3)
	lfs 7,152(1)
.LBE15381:
.LBE15380:
.LBB15389:
.LBB15377:
	.loc 6 439 0
	fmuls 12,12,31
.LBE15377:
.LBE15389:
	.loc 6 452 0
	fmadds 10,30,18,10
	.loc 4 4897 0
	lwz 4,2452(31)
	.loc 6 452 0
	fmadds 11,30,19,11
.LBB15390:
.LBB15382:
	.loc 6 481 0
	fsubs 9,7,9
	.loc 6 482 0
	lfs 7,156(1)
.LBE15382:
.LBE15390:
.LBB15391:
.LBB15392:
.LBB15393:
	.loc 13 454 0
	fmuls 13,21,10
	fmuls 0,22,10
	fmuls 8,23,10
.LBE15393:
.LBE15392:
.LBE15391:
.LBB15394:
.LBB15383:
	.loc 6 481 0
	stfs 9,152(1)
.LBE15383:
.LBE15394:
.LBB15395:
.LBB15396:
	.loc 13 454 0
	fmadds 10,24,11,13
.LBE15396:
.LBE15395:
.LBB15407:
.LBB15384:
	.loc 6 482 0
	lfs 13,4(3)
.LBE15384:
.LBE15407:
	.loc 6 452 0
	fmadds 12,30,20,12
.LBB15408:
.LBB15401:
	.loc 13 454 0
	fmadds 8,26,11,8
	fmadds 11,25,11,0
.LBE15401:
.LBE15408:
.LBB15409:
.LBB15385:
	.loc 6 483 0
	lfs 0,8(3)
	.loc 6 482 0
	fsubs 13,7,13
	.loc 6 483 0
	lfs 7,160(1)
.LBE15385:
.LBE15409:
.LBB15410:
.LBB15402:
	.loc 13 454 0
	fmadds 10,27,12,10
.LVL3663:
.LBE15402:
.LBE15410:
	.loc 4 4897 0
	mr 3,28
.LVL3664:
.LBB15411:
.LBB15386:
	.loc 6 483 0
	fsubs 0,7,0
.LBE15386:
.LBE15411:
.LBB15412:
.LBB15403:
	.loc 13 454 0
	fmadds 8,29,12,8
.LBE15403:
.LBE15412:
.LBB15413:
.LBB15387:
	.loc 6 482 0
	stfs 13,156(1)
.LBE15387:
.LBE15413:
.LBB15414:
.LBB15404:
	.loc 13 454 0
	fmadds 12,28,12,11
.LVL3665:
	.loc 6 452 0
	fadds 10,13,10
.LBE15404:
.LBE15414:
.LBB15415:
.LBB15388:
	.loc 6 483 0
	stfs 0,160(1)
.LBE15388:
.LBE15415:
.LBB15416:
.LBB15405:
	.loc 6 452 0
	fadds 8,9,8
	fadds 12,0,12
.LBB15397:
.LBB15398:
	.loc 6 397 0
	stfs 10,60(1)
.LBE15398:
.LBE15397:
.LBE15405:
.LBE15416:
	.loc 4 4742 0
	fneg 30,30
.LVL3666:
.LBB15417:
.LBB15406:
.LBB15400:
.LBB15399:
	.loc 6 396 0
	stfs 8,56(1)
	.loc 6 398 0
	stfs 12,64(1)
.LBE15399:
.LBE15400:
.LBE15406:
.LBE15417:
	.loc 4 4897 0
	bl _ZN10idAnimator11SetJointPosE13jointHandle_t19jointModTransform_tRK6idVec3
.LVL3667:
.LBB15418:
.LBB15419:
	.loc 6 439 0
	lfs 13,420(1)
.LBE15419:
.LBE15418:
	.loc 4 4898 0
	mr 3,28
.LBB15423:
.LBB15420:
	.loc 6 439 0
	lfs 0,416(1)
.LBE15420:
.LBE15423:
	.loc 4 4898 0
	li 5,4
.LBB15424:
.LBB15421:
	.loc 6 439 0
	fmuls 13,13,31
	lfs 12,424(1)
	fmuls 0,0,31
.LBE15421:
.LBE15424:
	.loc 4 4898 0
	lwz 4,2456(31)
.LBB15425:
.LBB15422:
	.loc 6 439 0
	fmuls 31,12,31
.LBE15422:
.LBE15425:
	.loc 4 4898 0
	addi 6,1,44
	.loc 6 431 0
	fmadds 13,30,18,13
	fmadds 0,30,19,0
	fmadds 31,30,20,31
.LBB15426:
.LBB15427:
.LBB15428:
	.loc 13 454 0
	fmuls 21,21,13
.LVL3668:
	fmuls 22,22,13
.LVL3669:
	fmuls 13,23,13
.LBE15428:
.LBE15427:
.LBE15426:
.LBB15429:
.LBB15430:
	fmadds 24,24,0,21
.LVL3670:
	fmadds 25,25,0,22
.LVL3671:
	fmadds 0,26,0,13
	fmadds 27,27,31,24
.LVL3672:
	fmadds 28,28,31,25
.LVL3673:
	fmadds 31,29,31,0
.LVL3674:
	.loc 6 452 0
	lfs 0,156(1)
	fadds 27,27,0
	lfs 0,160(1)
	fadds 28,28,0
.LVL3675:
	lfs 0,152(1)
.LBB15431:
.LBB15432:
	.loc 6 397 0
	stfs 27,48(1)
.LBE15432:
.LBE15431:
	.loc 6 452 0
	fadds 31,0,31
.LBB15434:
.LBB15433:
	.loc 6 398 0
	stfs 28,52(1)
	.loc 6 396 0
	stfs 31,44(1)
.LBE15433:
.LBE15434:
.LBE15430:
.LBE15429:
	.loc 4 4898 0
	bl _ZN10idAnimator11SetJointPosE13jointHandle_t19jointModTransform_tRK6idVec3
.LVL3676:
	.loc 4 4917 0
	li 3,1
	b .L1906
.LVL3677:
.L2025:
.LBE15437:
.LBE15441:
.LBE15445:
.LBE15508:
.LBB15509:
.LBB15510:
	.loc 13 333 0
	addi 7,31,2268
	li 10,0
	addi 30,1,380
.LVL3678:
.L1908:
.LBB15511:
.LBB15512:
	.loc 6 424 0
	mr 11,7
.LBE15512:
.LBE15511:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB15515:
.LBB15513:
	.loc 6 424 0
	lwzux 0,11,10
	mr 9,30
	stwux 0,9,10
.LBE15513:
.LBE15515:
	.loc 13 333 0
	addi 10,10,12
.LBB15516:
.LBB15514:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE15514:
.LBE15516:
	.loc 13 333 0
	bne+ 7,.L1908
.LBE15510:
.LBE15509:
	.loc 4 4768 0
	li 4,0
	addi 3,31,4216
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL3679:
	.loc 4 4776 0
	lwz 4,5112(31)
.LBB15517:
.LBB15518:
	.loc 6 424 0
	lwz 11,0(3)
	lis 27,gameLocal+2424832@ha
.LBE15518:
.LBE15517:
	.loc 4 4776 0
	cmpwi 7,4,-1
.LBB15520:
.LBB15519:
	.loc 6 425 0
	lwz 9,4(3)
	.loc 6 426 0
	lwz 0,8(3)
	la 27,gameLocal+2424832@l(27)
	.loc 6 424 0
	stw 11,176(1)
	.loc 6 425 0
	stw 9,180(1)
	.loc 6 426 0
	stw 0,184(1)
.LBE15519:
.LBE15520:
	.loc 4 4769 0
	lfs 28,4192(31)
.LVL3680:
	.loc 4 4776 0
	bne+ 7,.L2029
.LVL3681:
.L1911:
	.loc 4 4787 0
	addi 3,1,104
	mr 4,31
	bl _ZNK7idActor14GetEyePositionEv
.LVL3682:
.LBB15521:
.LBB15522:
	.loc 6 424 0
	lwz 0,104(1)
	cmpwi 4,29,0
	stw 0,152(1)
	.loc 6 425 0
	lwz 0,108(1)
	stw 0,156(1)
	.loc 6 426 0
	lwz 0,112(1)
	stw 0,160(1)
	b .L1914
.LVL3683:
.L1933:
.LBE15522:
.LBE15521:
.LBB15523:
.LBB15524:
.LBB15525:
	.loc 12 233 0
	lfs 11,5088(31)
.LBE15525:
.LBE15524:
.LBB15531:
.LBB15532:
	.loc 12 146 0
	stfs 0,4724(31)
.LBE15532:
.LBE15531:
.LBB15534:
.LBB15528:
	.loc 12 233 0
	fcmpu 7,0,11
.LBE15528:
.LBE15534:
.LBB15535:
.LBB15533:
	.loc 12 147 0
	stfs 13,4728(31)
	.loc 12 148 0
	stfs 12,4732(31)
.LVL3684:
.LBE15533:
.LBE15535:
.LBB15536:
.LBB15529:
	.loc 12 233 0
	blt- 7,.L2017
	.loc 12 235 0
	lfs 11,5100(31)
	fcmpu 7,0,11
	bng- 7,.L1935
.L2017:
	.loc 12 236 0
	stfs 11,4724(31)
.L1935:
	.loc 12 238 0
	lfs 11,5092(31)
	fcmpu 7,13,11
	bnl- 7,.L2008
.L2018:
	.loc 12 241 0
	stfs 11,4728(31)
.L1939:
	.loc 12 243 0
	lfs 10,4732(31)
	lfs 9,5096(31)
	fcmpu 7,10,9
	blt- 7,.L2019
.LVL3685:
.LBB15526:
.LBB15527:
	.loc 12 245 0
	lfs 9,5108(31)
	fcmpu 7,10,9
	bng- 7,.L1943
.LVL3686:
.L2019:
	.loc 12 246 0
	fmr 10,9
	stfs 9,4732(31)
.L1943:
.LVL3687:
.LBE15527:
.LBE15526:
.LBE15529:
.LBE15536:
.LBB15537:
.LBB15538:
	.loc 12 165 0
	lfs 9,4724(31)
.LBE15538:
.LBE15537:
.LBB15542:
.LBB15543:
	.loc 12 209 0
	lis 11,ang_zero@ha
	lis 9,.LC77@ha
.LBE15543:
.LBE15542:
.LBB15553:
.LBB15539:
	.loc 12 165 0
	fsubs 0,0,9
.LVL3688:
.LBE15539:
.LBE15553:
.LBB15554:
.LBB15550:
	.loc 12 209 0
	lfs 9,ang_zero@l(11)
	la 11,ang_zero@l(11)
	fsubs 9,0,9
	lfs 0,.LC77@l(9)
	stfs 9,512(1)
	lwz 0,512(1)
.LBB15544:
.LBB15545:
	.loc 8 781 0
	rlwinm 0,0,0,1,31
.LBE15545:
.LBE15544:
	.loc 12 209 0
	stw 0,512(1)
	lfs 9,512(1)
	fcmpu 7,9,0
	bgt- 7,.L1945
.LVL3689:
.LBE15550:
.LBE15554:
.LBB15555:
.LBB15540:
	.loc 12 165 0
	fsubs 13,13,11
.LVL3690:
.LBE15540:
.LBE15555:
.LBB15556:
.LBB15551:
	.loc 12 213 0
	lfs 9,4(11)
	fsubs 9,13,9
	stfs 9,512(1)
	lwz 0,512(1)
.LBB15546:
.LBB15547:
	.loc 8 781 0
	rlwinm 0,0,0,1,31
.LBE15547:
.LBE15546:
	.loc 12 213 0
	stw 0,512(1)
	lfs 11,512(1)
.LVL3691:
	fcmpu 7,11,0
	bgt- 7,.L1945
.LVL3692:
.LBE15551:
.LBE15556:
.LBB15557:
.LBB15541:
	.loc 12 165 0
	fsubs 12,12,10
.LVL3693:
.LBE15541:
.LBE15557:
.LBB15558:
.LBB15552:
	.loc 12 217 0
	lfs 13,8(11)
.LVL3694:
	fsubs 13,12,13
	stfs 13,512(1)
	lwz 0,512(1)
.LBB15548:
.LBB15549:
	.loc 8 781 0
	rlwinm 0,0,0,1,31
.LBE15549:
.LBE15548:
	.loc 12 217 0
	stw 0,512(1)
	lfs 13,512(1)
	fcmpu 7,13,0
	bng- 7,.L2011
.LVL3695:
.L1945:
.LBE15552:
.LBE15558:
	.loc 4 4845 0
	lwz 0,2004(27)
.LBE15523:
	.loc 4 4851 0
	lfs 0,.LC77@l(9)
.LBB15578:
.LBB15308:
	.loc 8 781 0
	lwz 9,504(1)
.LBE15308:
.LBE15578:
.LBB15579:
	.loc 4 4845 0
	stw 0,4716(31)
.LVL3696:
.LBE15579:
.LBB15580:
.LBB15309:
	.loc 8 781 0
	rlwinm 0,9,0,1,31
.LBE15309:
.LBE15580:
	.loc 4 4851 0
	stw 0,512(1)
	lfs 9,512(1)
	fcmpu 7,9,0
	bnl- 7,.L2030
.LVL3697:
.L1948:
	.loc 4 4852 0
	lwz 9,2004(27)
	stw 9,4716(31)
	.loc 4 4855 0
	lwz 0,2004(27)
.LVL3698:
	cmpw 7,0,9
	blt+ 7,.L2031
.L1950:
.LVL3699:
.LBB15581:
.LBB15582:
.LBB15583:
.LBB15584:
	.loc 19 71 0
	addis 28,28,0x1
	lis 11,0x1
	lwz 9,-32064(28)
	ori 11,11,3533
.LBE15584:
.LBE15583:
.LBE15582:
.LBE15581:
	.loc 4 4856 0
	xoris 0,0,0x8000
.LBB15597:
.LBB15591:
.LBB15588:
.LBB15585:
	.loc 19 71 0
	mullw 11,11,9
.LBE15585:
.LBE15588:
	.loc 19 83 0
	lis 9,0x4330
	stw 9,456(1)
.LBB15589:
.LBB15586:
	.loc 19 71 0
	addi 11,11,1
	.loc 19 72 0
	rlwinm 10,11,0,17,31
.LBE15586:
.LBE15589:
	.loc 19 83 0
	xoris 10,10,0x8000
	stw 10,460(1)
.LBB15590:
.LBB15587:
	.loc 19 71 0
	stw 11,-32064(28)
.LBE15587:
.LBE15590:
	.loc 19 83 0
	lis 11,.LC65@ha
	lfs 0,.LC65@l(11)
	lfd 11,456(1)
.LBE15591:
.LBE15597:
	.loc 4 4856 0
	lwz 11,4832(31)
.LBB15598:
.LBB15592:
	.loc 19 83 0
	fsub 11,11,0
.LBE15592:
.LBE15598:
	.loc 4 4856 0
	stw 9,464(1)
	stw 9,472(1)
	xoris 11,11,0x8000
.LBB15599:
.LBB15593:
	.loc 19 83 0
	lis 9,.LC66@ha
.LBE15593:
.LBE15599:
	.loc 4 4856 0
	stw 0,468(1)
.LBB15600:
.LBB15594:
	.loc 19 83 0
	frsp 11,11
.LBE15594:
.LBE15600:
	.loc 4 4856 0
	stw 11,476(1)
.LBB15601:
.LBB15595:
	.loc 19 83 0
	lfs 13,.LC66@l(9)
.LBE15595:
.LBE15601:
	.loc 4 4856 0
	addi 9,31,4716
	lfd 12,464(1)
.LBB15602:
.LBB15596:
	.loc 19 83 0
	fmuls 11,11,13
.LBE15596:
.LBE15602:
	.loc 4 4856 0
	lfd 13,472(1)
	fsub 12,12,0
.LBB15603:
.LBB15604:
	.loc 12 147 0
	lwz 0,504(1)
.LBE15604:
.LBE15603:
	.loc 4 4856 0
	fsub 0,13,0
	lfs 13,.LC15@l(24)
	frsp 12,12
	fmadds 13,11,13,13
	frsp 0,0
	fmadds 0,13,0,12
	fctiwz 0,0
	stfiwx 0,0,9
.LVL3700:
.LBB15608:
.LBB15605:
	.loc 12 147 0
	stw 0,4752(31)
	.loc 12 148 0
	li 0,0
.LBE15605:
.LBE15608:
.LBB15609:
.LBB15610:
	.loc 12 233 0
	lfs 0,4760(31)
.LBE15610:
.LBE15609:
.LBB15616:
.LBB15606:
	.loc 12 146 0
	stfs 31,4748(31)
.LBE15606:
.LBE15616:
.LBB15617:
.LBB15613:
	.loc 12 233 0
	fcmpu 7,31,0
.LBE15613:
.LBE15617:
.LBB15618:
.LBB15607:
	.loc 12 148 0
	stw 0,4756(31)
.LVL3701:
.LBE15607:
.LBE15618:
.LBB15619:
.LBB15614:
	.loc 12 233 0
	blt- 7,.L2020
	.loc 12 235 0
	lfs 0,4772(31)
	fcmpu 7,31,0
	bgt- 7,.L2020
.L1954:
	.loc 12 238 0
	lfs 0,4764(31)
	lfs 9,504(1)
	fcmpu 7,9,0
	blt- 7,.L2021
	.loc 12 240 0
	lfs 0,4776(31)
	lfs 11,504(1)
	fcmpu 7,11,0
	bng- 7,.L1958
.L2021:
	.loc 12 241 0
	stfs 0,4752(31)
	stfs 0,504(1)
.L1958:
	.loc 12 243 0
	lfs 13,4756(31)
	lfs 0,4768(31)
	fcmpu 7,13,0
	blt- 7,.L2022
.LVL3702:
.LBB15611:
.LBB15612:
	.loc 12 245 0
	lfs 0,4780(31)
	fcmpu 7,13,0
	bng- 7,.L1951
.LVL3703:
.L2022:
	.loc 12 246 0
	stfs 0,4756(31)
	fmr 13,0
	b .L1951
.LVL3704:
.L2023:
.LBE15612:
.LBE15611:
.LBE15614:
.LBE15619:
.LBB15620:
.LBB15160:
	.loc 7 636 0
	addi 9,9,132
.LVL3705:
	slwi 9,9,2
.LVL3706:
	add 9,28,9
	lwz 29,4(9)
	b .L1904
.LVL3707:
.L2027:
.LBE15160:
.LBE15620:
.LBB15621:
.LBB15183:
	addi 9,9,132
.LVL3708:
	slwi 9,9,2
.LVL3709:
	add 9,28,9
	lwz 26,4(9)
	b .L1916
.LVL3710:
.L2024:
.LBE15183:
.LBE15621:
	.loc 4 4763 0
	mr 3,31
	bl _ZN7idActor26UpdateAnimationControllersEv
.L1906:
.LBE15660:
	.loc 4 4918 0
	lwz 0,676(1)
	lwz 12,524(1)
	mtlr 0
	lwz 24,528(1)
	lwz 25,532(1)
	mtcrf 8,12
	lwz 26,536(1)
	lwz 27,540(1)
	lwz 28,544(1)
	lwz 29,548(1)
	lwz 30,552(1)
	lwz 31,556(1)
.LVL3711:
	lfd 18,560(1)
	lfd 19,568(1)
	lfd 20,576(1)
	lfd 21,584(1)
	lfd 22,592(1)
	lfd 23,600(1)
	lfd 24,608(1)
	lfd 25,616(1)
	lfd 26,624(1)
	lfd 27,632(1)
	lfd 28,640(1)
	lfd 29,648(1)
	lfd 30,656(1)
	lfd 31,664(1)
	addi 1,1,672
	.cfi_remember_state
.LCFI401:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL3712:
.L2026:
.LCFI402:
	.cfi_restore_state
.LBB15661:
	.loc 6 452 0
	lis 9,.LC61@ha
	lfs 13,156(1)
	lfs 0,.LC61@l(9)
	.loc 4 4784 0
	lis 9,gameRenderWorld@ha
	.loc 6 452 0
	lfs 12,384(1)
	.loc 4 4784 0
	lis 4,colorRed@ha
	.loc 6 452 0
	lfs 11,388(1)
	.loc 4 4784 0
	la 4,colorRed@l(4)
	.loc 6 452 0
	fmadds 12,12,0,13
	lfs 13,160(1)
	.loc 4 4784 0
	lwz 3,gameRenderWorld@l(9)
	mr 5,26
	.loc 6 452 0
	fmadds 13,11,0,13
.LBB15622:
.LBB15623:
.LBB15624:
.LBB15625:
	lfs 10,380(1)
	lfs 11,152(1)
.LBE15625:
.LBE15624:
.LBE15623:
.LBE15622:
	.loc 4 4784 0
	addi 6,1,116
	lwz 9,0(3)
	li 7,16
.LBB15632:
.LBB15630:
.LBB15628:
.LBB15626:
	.loc 6 452 0
	fmadds 0,10,0,11
	.loc 6 397 0
	stfs 12,120(1)
.LBE15626:
.LBE15628:
.LBE15630:
.LBE15632:
	.loc 4 4784 0
	lwz 0,156(9)
.LVL3713:
	li 8,0
.LBB15633:
.LBB15631:
.LBB15629:
.LBB15627:
	.loc 6 398 0
	stfs 13,124(1)
	.loc 6 396 0
	stfs 0,116(1)
.LBE15627:
.LBE15629:
.LBE15631:
.LBE15633:
	.loc 4 4784 0
	mtctr 0
	bctrl
.LVL3714:
	b .L1914
.LVL3715:
.L1918:
	.loc 4 4806 0
	cmpwi 7,26,0
	beq- 7,.L2032
.LVL3716:
.LBB15634:
.LBB15635:
	.loc 7 634 0
	lwz 0,5120(31)
	rlwinm 9,0,0,20,31
.LVL3717:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L2033
.LVL3718:
.L1921:
.LBE15635:
.LBE15634:
.LBB15637:
.LBB15638:
	.loc 16 340 0
	lwz 9,0(26)
	mr 3,26
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL3719:
.LBE15638:
	.loc 4 5138 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB15641:
.LBB15639:
.LBB15640:
	.loc 16 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L1922
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L1922
.LBE15640:
.LBE15639:
.LBE15641:
.LBE15637:
	.loc 4 4812 0
	mr 4,26
	addi 3,1,80
.LVL3720:
	bl _ZNK7idActor14GetEyePositionEv
	mr 3,26
	lfs 31,4816(31)
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LVL3721:
	.loc 4 4742 0
	fneg 0,31
	.loc 6 431 0
	lfs 13,80(1)
	lfs 29,0(3)
	lfs 30,4(3)
	fmadds 29,0,29,13
	lfs 13,84(1)
	lfs 31,8(3)
.LVL3722:
	fmadds 30,0,30,13
	lfs 13,88(1)
	lfs 11,4700(31)
	fmadds 31,0,31,13
.LVL3723:
	lfs 12,4704(31)
	lfs 13,4708(31)
	b .L1919
.LVL3724:
.L2008:
.LBB15642:
.LBB15559:
.LBB15530:
	.loc 12 240 0
	lfs 11,5104(31)
	fcmpu 7,13,11
	bgt- 7,.L2018
	fmr 11,13
	b .L1939
.LVL3725:
.L2028:
.LBE15530:
.LBE15559:
.LBE15642:
	.loc 4 4886 0
	mr 3,31
	bl _ZN4idAI18AdjustFlyingAnglesEv
.LBB15643:
	.loc 4 4889 0
	bne+ 4,.L2034
.L1973:
.LBB15446:
	.loc 4 4904 0
	lbz 0,3921(31)
	cmpwi 7,0,0
	beq- 7,.L1977
.LVL3726:
.LBB15447:
.LBB15448:
.LBB15449:
	.loc 12 153 0
	lfs 9,4740(31)
.LBE15449:
.LBE15448:
	.loc 4 4905 0
	addi 3,1,272
.LBB15456:
.LBB15454:
	.loc 12 153 0
	lfs 13,4728(31)
.LBE15454:
.LBE15456:
	.loc 4 4905 0
	addi 4,1,32
.LBB15457:
.LBB15455:
	.loc 12 153 0
	lfs 10,4744(31)
	lfs 0,4732(31)
	fadds 13,9,13
	lfs 11,4736(31)
	lfs 12,4724(31)
	fadds 0,10,0
.LVL3727:
.LBB15450:
.LBB15451:
	.loc 12 110 0
	stfs 13,36(1)
.LBE15451:
.LBE15450:
	.loc 12 153 0
	fadds 12,11,12
.LBB15453:
.LBB15452:
	.loc 12 111 0
	stfs 0,40(1)
	.loc 12 109 0
	stfs 12,32(1)
.LBE15452:
.LBE15453:
.LBE15455:
.LBE15457:
	.loc 4 4905 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL3728:
	.loc 4 4742 0
	addi 0,1,236
.LBE15447:
.LBE15446:
.LBB15503:
.LBB15442:
.LBB15438:
.LBB15435:
.LBB15358:
	.loc 4 4906 0
	addi 11,1,272
.LVL3729:
	.loc 13 465 0
	addi 9,1,200
.LVL3730:
.L1978:
.LBE15358:
.LBE15435:
.LBE15438:
.LBE15442:
.LBE15503:
.LBB15504:
.LBB15502:
	.loc 4 4742 0
	lfs 0,4(11)
.LBB15458:
.LBB15459:
	.loc 13 471 0
	lfs 12,12(30)
	lfs 13,16(30)
	lfs 11,20(30)
	fmuls 12,0,12
	fmuls 13,0,13
	lfs 8,0(30)
	fmuls 11,0,11
	lfs 9,4(30)
.LBE15459:
.LBE15458:
	.loc 4 4742 0
	lfs 0,0(11)
.LBB15462:
.LBB15460:
	.loc 13 471 0
	lfs 10,8(30)
	fmadds 12,0,8,12
	lfs 8,24(30)
	fmadds 13,0,9,13
	lfs 9,28(30)
	fmadds 11,0,10,11
.LBE15460:
.LBE15462:
	.loc 4 4742 0
	lfs 0,8(11)
.LBB15463:
.LBB15461:
	.loc 13 471 0
	lfs 10,32(30)
	.loc 13 474 0
	addi 11,11,12
.LVL3731:
	.loc 13 471 0
	fmadds 12,8,0,12
	fmadds 13,9,0,13
	fmadds 0,10,0,11
	stfs 12,0(9)
.LVL3732:
	stfs 13,4(9)
.LVL3733:
	stfs 0,8(9)
.LVL3734:
	addi 9,9,12
.LVL3735:
	.loc 13 467 0
	cmpw 7,9,0
	bne+ 7,.L1978
	li 10,0
	addi 7,1,416
.LVL3736:
.L1979:
.LBE15461:
.LBE15463:
.LBB15464:
.LBB15465:
.LBB15466:
.LBB15467:
	.loc 6 424 0
	addi 11,1,200
.LBE15467:
.LBE15466:
	.loc 13 333 0
	cmpwi 7,10,24
.LBB15470:
.LBB15468:
	.loc 6 424 0
	lwzux 0,11,10
	mr 9,7
	stwux 0,9,10
.LBE15468:
.LBE15470:
	.loc 13 333 0
	addi 10,10,12
.LBB15471:
.LBB15469:
	.loc 6 425 0
	lwz 8,4(11)
	.loc 6 426 0
	lwz 0,8(11)
	.loc 6 425 0
	stw 8,4(9)
	.loc 6 426 0
	stw 0,8(9)
.LBE15469:
.LBE15471:
	.loc 13 333 0
	bne+ 7,.L1979
.LVL3737:
.LBE15465:
.LBE15464:
	.loc 4 4908 0
	li 4,0
	addi 3,31,4216
	.loc 4 4907 0
	lfs 31,4820(31)
.LVL3738:
	.loc 4 4909 0
	addi 30,31,636
.LVL3739:
.LBB15472:
.LBB15473:
	.loc 6 439 0
	lfs 30,428(1)
	lfs 28,432(1)
	lfs 29,436(1)
.LVL3740:
.LBE15473:
.LBE15472:
.LBB15474:
.LBB15475:
	lfs 27,416(1)
	lfs 25,420(1)
	lfs 26,424(1)
.LVL3741:
.LBE15475:
.LBE15474:
	.loc 4 4908 0
	bl _ZNK15idPhysics_Actor9GetOriginEi
.LVL3742:
	.loc 6 431 0
	lis 9,.LC20@ha
.LBB15476:
.LBB15477:
	lfs 12,0(3)
.LBE15477:
.LBE15476:
	lfs 13,4(3)
	.loc 4 4909 0
	li 5,4
	.loc 6 431 0
	lfs 0,.LC20@l(9)
	.loc 4 4909 0
	addi 6,1,20
	.loc 6 431 0
	lfs 11,8(3)
	.loc 4 4909 0
	mr 3,30
.LVL3743:
	.loc 6 431 0
	fmsubs 13,25,0,13
	.loc 4 4909 0
	lwz 4,2452(31)
	.loc 6 431 0
	fmsubs 11,26,0,11
.LVL3744:
.LBB15482:
.LBB15478:
	fmsubs 0,27,0,12
	.loc 6 456 0
	lfs 12,152(1)
	fadds 12,0,12
.LVL3745:
	.loc 6 457 0
	lfs 0,156(1)
	fadds 13,13,0
.LVL3746:
	.loc 6 458 0
	lfs 0,160(1)
.LBE15478:
.LBE15482:
.LBB15483:
.LBB15484:
.LBB15485:
	.loc 6 452 0
	fmadds 9,31,30,12
.LBE15485:
.LBE15484:
.LBE15483:
.LBB15492:
.LBB15479:
	.loc 6 456 0
	stfs 12,152(1)
	.loc 6 458 0
	fadds 0,11,0
.LVL3747:
.LBE15479:
.LBE15492:
.LBB15493:
.LBB15489:
.LBB15486:
	.loc 6 452 0
	fmadds 10,31,28,13
.LBE15486:
.LBE15489:
.LBE15493:
.LBB15494:
.LBB15480:
	.loc 6 457 0
	stfs 13,156(1)
.LBE15480:
.LBE15494:
.LBB15495:
.LBB15490:
.LBB15487:
	.loc 6 396 0
	stfs 9,20(1)
	.loc 6 452 0
	fmadds 11,31,29,0
.LVL3748:
.LBE15487:
.LBE15490:
.LBE15495:
.LBB15496:
.LBB15481:
	.loc 6 458 0
	stfs 0,160(1)
.LBE15481:
.LBE15496:
	.loc 4 4742 0
	fneg 31,31
.LVL3749:
.LBB15497:
.LBB15491:
.LBB15488:
	.loc 6 397 0
	stfs 10,24(1)
	.loc 6 398 0
	stfs 11,28(1)
.LBE15488:
.LBE15491:
.LBE15497:
	.loc 4 4909 0
	bl _ZN10idAnimator11SetJointPosE13jointHandle_t19jointModTransform_tRK6idVec3
.LVL3750:
	.loc 6 431 0
	lfs 0,156(1)
	.loc 4 4910 0
	mr 3,30
	lwz 4,2456(31)
.LVL3751:
	li 5,4
	.loc 6 431 0
	fmadds 28,31,28,0
	lfs 0,160(1)
	.loc 4 4910 0
	addi 6,1,8
	.loc 6 431 0
	fmadds 29,31,29,0
.LVL3752:
.LBB15498:
.LBB15499:
.LBB15500:
.LBB15501:
	lfs 0,152(1)
	.loc 6 397 0
	stfs 28,12(1)
	.loc 6 431 0
	fmadds 31,31,30,0
	.loc 6 398 0
	stfs 29,16(1)
	.loc 6 396 0
	stfs 31,8(1)
.LBE15501:
.LBE15500:
.LBE15499:
.LBE15498:
	.loc 4 4910 0
	bl _ZN10idAnimator11SetJointPosE13jointHandle_t19jointModTransform_tRK6idVec3
.LVL3753:
	.loc 4 4917 0
	li 3,1
	b .L1906
.LVL3754:
.L1922:
.LBE15502:
.LBE15504:
.LBE15643:
	.loc 4 4814 0
	mr 3,26
.LVL3755:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL3756:
.LBB15644:
.LBB15645:
	.loc 6 426 0
	lfs 11,4700(31)
	.loc 6 424 0
	lfs 29,0(3)
.LVL3757:
	.loc 6 425 0
	lfs 30,4(3)
.LVL3758:
	.loc 6 426 0
	lfs 31,8(3)
.LVL3759:
	lfs 12,4704(31)
	lfs 13,4708(31)
	b .L1919
.LVL3760:
.L2020:
.LBE15645:
.LBE15644:
.LBB15646:
.LBB15615:
	.loc 12 236 0
	stfs 0,4748(31)
	b .L1954
.LVL3761:
.L1974:
.LBE15615:
.LBE15646:
.LBB15647:
.LBB15505:
.LBB15443:
	.loc 4 4900 0
	lwz 4,2452(31)
	bl _ZN10idAnimator10ClearJointE13jointHandle_t
.LVL3762:
	.loc 4 4901 0
	lwz 4,2456(31)
	mr 3,28
	bl _ZN10idAnimator10ClearJointE13jointHandle_t
	.loc 4 4917 0
	li 3,1
	b .L1906
.LVL3763:
.L1977:
.LBE15443:
.LBE15505:
.LBB15506:
	.loc 4 4912 0
	addi 30,31,636
.LVL3764:
	lwz 4,2452(31)
	mr 3,30
	bl _ZN10idAnimator10ClearJointE13jointHandle_t
	.loc 4 4913 0
	lwz 4,2456(31)
	mr 3,30
	bl _ZN10idAnimator10ClearJointE13jointHandle_t
	.loc 4 4917 0
	li 3,1
	b .L1906
.LVL3765:
.L1912:
.LBE15506:
.LBE15647:
	.loc 4 4780 0
	mr 3,31
	mr 6,26
	addi 7,1,416
	bl _ZN16idAnimatedEntity22GetJointWorldTransformE13jointHandle_tiR6idVec3R6idMat3
	b .L1913
.LVL3766:
.L2015:
	.loc 4 4870 0
	fcmpu 7,9,7
	cror 30,28,30
	bne- 7,.L1966
	.loc 4 4871 0
	lfs 0,.LC91@l(26)
	fadds 9,9,0
.LVL3767:
	b .L1966
.LVL3768:
.L2011:
.LBB15648:
.LBB15560:
.LBB15561:
.LBB15562:
.LBB15563:
	.loc 19 71 0
	addis 11,28,0x1
	lis 10,0x1
	lwz 0,-32064(11)
	ori 10,10,3533
	mullw 10,10,0
.LBE15563:
.LBE15562:
.LBE15561:
.LBE15560:
	.loc 4 4847 0
	lis 0,0x4330
.LBB15573:
.LBB15568:
	.loc 19 83 0
	stw 0,488(1)
.LBB15566:
.LBB15564:
	.loc 19 71 0
	addi 10,10,1
	.loc 19 72 0
	rlwinm 8,10,0,17,31
.LBE15564:
.LBE15566:
	.loc 19 83 0
	xoris 8,8,0x8000
	stw 8,492(1)
.LBB15567:
.LBB15565:
	.loc 19 71 0
	stw 10,-32064(11)
.LBE15565:
.LBE15567:
.LBE15568:
.LBE15573:
	.loc 4 4847 0
	lis 11,.LC65@ha
	lfs 0,.LC65@l(11)
.LBB15574:
.LBB15569:
	.loc 19 83 0
	lfd 11,488(1)
.LBE15569:
.LBE15574:
	.loc 4 4847 0
	lwz 11,4832(31)
.LBB15575:
.LBB15570:
	.loc 19 83 0
	fsub 11,11,0
.LBE15570:
.LBE15575:
	.loc 4 4847 0
	lwz 10,2004(27)
	xoris 11,11,0x8000
	stw 0,480(1)
	stw 11,500(1)
	xoris 10,10,0x8000
.LBB15576:
.LBB15571:
	.loc 19 83 0
	lis 11,.LC66@ha
	frsp 11,11
	lfs 13,.LC66@l(11)
.LBE15571:
.LBE15576:
	.loc 4 4847 0
	addi 11,31,4716
	stw 10,484(1)
	stw 0,496(1)
.LBB15577:
.LBB15572:
	.loc 19 83 0
	fmuls 11,11,13
.LBE15572:
.LBE15577:
	.loc 4 4847 0
	lfd 12,480(1)
.LVL3769:
	lfd 13,496(1)
	fsub 12,12,0
	fsub 0,13,0
	lfs 13,.LC15@l(24)
	frsp 12,12
.LVL3770:
	fmadds 13,11,13,13
	frsp 0,0
	fmadds 0,13,0,12
	fctiwz 0,0
	stfiwx 0,0,11
	b .L1934
.LVL3771:
.L2033:
.LBE15648:
.LBB15649:
.LBB15636:
	.loc 7 636 0
	addi 9,9,132
.LVL3772:
	slwi 9,9,2
.LVL3773:
	add 9,28,9
.LBE15636:
.LBE15649:
	.loc 4 4809 0
	lwz 0,4(9)
	cmpw 7,26,0
	bne- 7,.L1921
.LVL3774:
.LBB15650:
.LBB15651:
	.loc 6 452 0
	lfs 12,5136(31)
.LBE15651:
.LBE15650:
	.loc 4 4810 0
	mr 3,26
.LBB15654:
.LBB15652:
	.loc 6 452 0
	lfs 13,5140(31)
	lfs 0,5144(31)
	lfs 29,5124(31)
	lfs 30,5128(31)
	lfs 31,5132(31)
	fadds 29,29,12
	fadds 30,30,13
.LBE15652:
.LBE15654:
	.loc 4 4810 0
	lfs 27,4816(31)
.LBB15655:
.LBB15653:
	.loc 6 452 0
	fadds 31,31,0
.LVL3775:
.LBE15653:
.LBE15655:
	.loc 4 4810 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LVL3776:
	.loc 4 4742 0
	fneg 0,27
	.loc 6 431 0
	lfs 11,0(3)
	lfs 12,4(3)
	lfs 13,8(3)
	fmadds 29,0,11,29
.LVL3777:
	fmadds 30,0,12,30
.LVL3778:
	lfs 11,4700(31)
	fmadds 31,0,13,31
.LVL3779:
	lfs 12,4704(31)
	lfs 13,4708(31)
	b .L1919
.LVL3780:
.L2032:
.LBB15656:
.LBB15657:
	.loc 6 424 0
	lfs 29,4700(31)
.LVL3781:
	.loc 6 425 0
	lfs 30,4704(31)
.LVL3782:
	.loc 6 426 0
	lfs 31,4708(31)
.LVL3783:
	fmr 11,29
	fmr 12,30
	fmr 13,31
	b .L1919
.LBE15657:
.LBE15656:
.LBE15661:
	.cfi_endproc
.LFE2974:
	.size	_ZN4idAI26UpdateAnimationControllersEv, .-_ZN4idAI26UpdateAnimationControllersEv
	.align 2
	.globl _ZN12idCombatNodeC2Ev
	.type	_ZN12idCombatNodeC2Ev, @function
_ZN12idCombatNodeC2Ev:
.LFB2978:
	.loc 4 4938 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2978
.LVL3784:
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
.LEHB67:
.LBB15662:
	.loc 4 4938 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN8idEntityC2Ev
.LEHE67:
.LVL3785:
	lis 9,_ZTV12idCombatNode+8@ha
	.loc 4 4940 0
	lis 3,.LC238@ha
	.loc 4 4938 0
	la 0,_ZTV12idCombatNode+8@l(9)
	.loc 4 4940 0
	la 3,.LC238@l(3)
	.loc 4 4938 0
	stw 0,0(31)
	.loc 4 4940 0
	li 4,696
.LEHB68:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE68:
	.loc 4 4943 0
	li 0,0
	stw 0,636(31)
	.loc 4 4944 0
	stw 0,640(31)
	.loc 4 4945 0
	stw 0,644(31)
	.loc 4 4946 0
	stw 0,648(31)
	.loc 4 4947 0
	stw 0,652(31)
.LVL3786:
.LBB15663:
.LBB15664:
	.loc 6 416 0
	stw 0,664(31)
	stw 0,660(31)
	stw 0,656(31)
.LVL3787:
.LBE15664:
.LBE15663:
.LBB15665:
.LBB15666:
	stw 0,676(31)
	stw 0,672(31)
	stw 0,668(31)
.LVL3788:
.LBE15666:
.LBE15665:
.LBB15667:
.LBB15668:
	stw 0,688(31)
	stw 0,684(31)
	stw 0,680(31)
.LBE15668:
.LBE15667:
	.loc 4 4951 0
	li 0,0
	stb 0,692(31)
.LBE15662:
	.loc 4 4952 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3789:
	addi 1,1,16
	.cfi_remember_state
.LCFI404:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3790:
.L2037:
.LCFI405:
	.cfi_restore_state
	mr 30,3
.LBB15669:
	.loc 4 4938 0
	mr 3,31
	bl _ZN8idEntityD2Ev
	mr 3,30
.LEHB69:
	bl _Unwind_Resume
.LEHE69:
.LBE15669:
	.cfi_endproc
.LFE2978:
	.section	.gcc_except_table
.LLSDA2978:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2978-.LLSDACSB2978
.LLSDACSB2978:
	.uleb128 .LEHB67-.LFB2978
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB2978
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L2037-.LFB2978
	.uleb128 0
	.uleb128 .LEHB69-.LFB2978
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
.LLSDACSE2978:
	.section	".text"
	.size	_ZN12idCombatNodeC2Ev, .-_ZN12idCombatNodeC2Ev
	.align 2
	.globl _ZN12idCombatNode14CreateInstanceEv
	.type	_ZN12idCombatNode14CreateInstanceEv, @function
_ZN12idCombatNode14CreateInstanceEv:
.LFB2975:
	.loc 4 4928 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2975
	mflr 0
	stwu 1,-24(1)
.LCFI406:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB15670:
	li 3,696
.LBE15670:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB70:
.LBB15671:
	.loc 4 4928 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE70:
	mr 31,3
.LEHB71:
	bl _ZN12idCombatNodeC1Ev
.LEHE71:
.LVL3791:
	.loc 4 4928 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB72:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE72:
.LVL3792:
.L2043:
.LBE15671:
	.loc 4 4928 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI407:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L2044:
.L2040:
.LCFI408:
	.cfi_restore_state
.LBB15672:
	cmpwi 7,4,1
	beq- 7,.L2042
.LEHB73:
	bl _Unwind_Resume
.LEHE73:
.L2045:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L2040
.L2042:
.LBE15672:
.LBB15673:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L2043
.LBE15673:
	.cfi_endproc
.LFE2975:
	.section	.gcc_except_table
	.align 2
.LLSDA2975:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2975-.LLSDATTD2975
.LLSDATTD2975:
	.byte	0x1
	.uleb128 .LLSDACSE2975-.LLSDACSB2975
.LLSDACSB2975:
	.uleb128 .LEHB70-.LFB2975
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L2044-.LFB2975
	.uleb128 0x1
	.uleb128 .LEHB71-.LFB2975
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L2045-.LFB2975
	.uleb128 0x3
	.uleb128 .LEHB72-.LFB2975
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L2044-.LFB2975
	.uleb128 0x1
	.uleb128 .LEHB73-.LFB2975
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
.LLSDACSE2975:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2975:
	.section	".text"
	.size	_ZN12idCombatNode14CreateInstanceEv, .-_ZN12idCombatNode14CreateInstanceEv
	.align 2
	.globl _ZNK12idCombatNode10IsDisabledEv
	.type	_ZNK12idCombatNode10IsDisabledEv, @function
_ZNK12idCombatNode10IsDisabledEv:
.LFB2983:
	.loc 4 5025 0 is_stmt 1
	.cfi_startproc
.LVL3793:
	.loc 4 5027 0
	lbz 3,692(3)
.LVL3794:
	blr
	.cfi_endproc
.LFE2983:
	.size	_ZNK12idCombatNode10IsDisabledEv, .-_ZNK12idCombatNode10IsDisabledEv
	.align 2
	.globl _ZN12idCombatNode12EntityInViewEP7idActorRK6idVec3
	.type	_ZN12idCombatNode12EntityInViewEP7idActorRK6idVec3, @function
_ZN12idCombatNode12EntityInViewEP7idActorRK6idVec3:
.LFB2985:
	.loc 4 5088 0
	.cfi_startproc
.LVL3795:
.LBB15674:
	.loc 4 5089 0
	cmpwi 0,4,0
.LBE15674:
	.loc 4 5088 0
	mflr 0
	stwu 1,-48(1)
.LCFI409:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -36
	stw 30,16(1)
.LBB15699:
	.loc 4 5090 0
	li 30,0
	.cfi_offset 30, -32
.LBE15699:
	.loc 4 5088 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -28
	stw 0,52(1)
	stfd 29,24(1)
	stfd 30,32(1)
	stfd 31,40(1)
.LBB15700:
	.loc 4 5089 0
	beq- 0,.L2048
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.loc 4 5089 0 is_stmt 0 discriminator 1
	lwz 0,188(4)
	cmpwi 7,0,0
	ble- 7,.L2048
	.loc 4 5093 0 is_stmt 1
	mr 3,4
.LVL3796:
	bl _ZNK8idEntity10GetPhysicsEv
.LVL3797:
	li 4,-1
	lwz 9,0(3)
	lwz 0,56(9)
	mtctr 0
	bctrl
.LVL3798:
	.loc 4 5094 0
	lfs 0,8(29)
.LVL3799:
	lfs 12,20(3)
	lfs 13,648(31)
	fadds 12,0,12
	fcmpu 7,12,13
	bnl- 7,.L2060
.LVL3800:
.L2048:
.LBE15700:
	.loc 4 5118 0
	lwz 0,52(1)
	mr 3,30
	lwz 29,12(1)
.LVL3801:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL3802:
	lfd 29,24(1)
	lfd 30,32(1)
	lfd 31,40(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI410:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL3803:
.L2060:
.LCFI411:
	.cfi_restore_state
.LBB15701:
	.loc 4 5094 0 discriminator 2
	lfs 12,8(3)
	lfs 13,652(31)
	fadds 0,0,12
	fcmpu 7,0,13
	cror 30,29,30
	beq- 7,.L2048
	.loc 4 5098 0
	mr 3,31
.LVL3804:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL3805:
.LBB15675:
.LBB15676:
	.loc 6 452 0
	lfs 12,680(31)
	lfs 13,684(31)
	lfs 0,688(31)
	lfs 30,0(3)
	lfs 29,4(3)
	lfs 31,8(3)
.LBE15676:
.LBE15675:
	.loc 4 5099 0
	mr 3,31
.LVL3806:
.LBB15678:
.LBB15677:
	.loc 6 452 0
	fadds 30,30,12
	fadds 29,29,13
	fadds 31,31,0
.LVL3807:
.LBE15677:
.LBE15678:
	.loc 4 5099 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL3808:
.LBB15679:
.LBB15680:
	.loc 6 431 0
	lfs 11,4(29)
	lfs 12,0(29)
	fsubs 11,11,29
.LBE15680:
.LBE15679:
.LBB15684:
.LBB15685:
	.loc 6 435 0
	lfs 0,4(3)
.LBE15685:
.LBE15684:
.LBB15687:
.LBB15681:
	.loc 6 431 0
	fsubs 12,12,30
	.loc 6 435 0
	lfs 10,0(3)
	.loc 6 431 0
	lfs 13,8(29)
.LBE15681:
.LBE15687:
.LBB15688:
.LBB15686:
	.loc 6 435 0
	fmuls 0,11,0
.LBE15686:
.LBE15688:
.LBB15689:
.LBB15682:
	lfs 9,8(3)
	.loc 6 431 0
	fsubs 13,13,31
.LVL3809:
	.loc 6 435 0
	fmadds 0,12,10,0
.LBE15682:
.LBE15689:
	.loc 4 5103 0
	lfs 10,636(31)
.LBB15690:
.LBB15683:
	.loc 6 435 0
	fmadds 0,13,9,0
.LBE15683:
.LBE15690:
	.loc 4 5103 0
	fcmpu 7,10,0
	bgt- 7,.L2048
	.loc 4 5103 0 is_stmt 0 discriminator 1
	lfs 10,640(31)
	fcmpu 7,10,0
	blt- 7,.L2048
.LVL3810:
.LBB15691:
.LBB15692:
	.loc 6 435 0 is_stmt 1
	lfs 10,660(31)
.LBE15692:
.LBE15691:
	.loc 4 5108 0
	lis 9,.LC6@ha
	.loc 6 435 0
	lfs 8,656(31)
.LBB15694:
.LBB15693:
	fmuls 10,11,10
.LBE15693:
.LBE15694:
	lfs 9,664(31)
	.loc 4 5108 0
	lfs 0,.LC6@l(9)
	.loc 6 435 0
	fmadds 10,12,8,10
	fmadds 10,13,9,10
	.loc 4 5108 0
	fcmpu 7,10,0
	blt- 7,.L2048
.LVL3811:
.LBB15695:
.LBB15696:
	.loc 6 435 0
	lfs 10,672(31)
.LBE15696:
.LBE15695:
	lfs 9,668(31)
.LBB15698:
.LBB15697:
	fmuls 11,11,10
.LVL3812:
.LBE15697:
.LBE15698:
	lfs 10,676(31)
	fmadds 12,12,9,11
.LVL3813:
	fmadds 13,13,10,12
.LVL3814:
	.loc 4 5113 0
	fcmpu 7,13,0
	mfcr 30
	rlwinm 30,30,29,1
	.loc 4 5088 0
	xori 30,30,1
	b .L2048
.LBE15701:
	.cfi_endproc
.LFE2985:
	.size	_ZN12idCombatNode12EntityInViewEP7idActorRK6idVec3, .-_ZN12idCombatNode12EntityInViewEP7idActorRK6idVec3
	.align 2
	.globl _ZN12idCombatNode13DrawDebugInfoEv
	.type	_ZN12idCombatNode13DrawDebugInfoEv, @function
_ZN12idCombatNode13DrawDebugInfoEv:
.LFB2984:
	.loc 4 5034 0
	.cfi_startproc
	stwu 1,-240(1)
.LCFI412:
	.cfi_def_cfa_offset 240
	mflr 0
	stw 31,196(1)
.LBB15776:
	.loc 4 5037 0
	lis 31,gameLocal@ha
	.cfi_offset 31, -44
	.cfi_register 65, 0
	la 31,gameLocal@l(31)
.LBE15776:
	.loc 4 5034 0
	stw 0,244(1)
.LBB16040:
	.loc 4 5037 0
	mr 3,31
.LBB15777:
.LBB15778:
.LBB15779:
	.loc 4 5041 0
	addis 31,31,0x1
.LBE15779:
.LBE15778:
.LBE15777:
.LBE16040:
	.loc 4 5034 0
	stw 28,184(1)
	stfd 27,200(1)
	stfd 28,208(1)
	stfd 29,216(1)
	stfd 30,224(1)
	stfd 31,232(1)
	stw 19,148(1)
	stw 20,152(1)
	stw 21,156(1)
	stw 22,160(1)
	stw 23,164(1)
	stw 24,168(1)
	stw 25,172(1)
	stw 26,176(1)
	stw 27,180(1)
	stw 29,188(1)
	stw 30,192(1)
.LBB16041:
	.loc 4 5037 0
	.cfi_offset 30, -48
	.cfi_offset 29, -52
	.cfi_offset 27, -60
	.cfi_offset 26, -64
	.cfi_offset 25, -68
	.cfi_offset 24, -72
	.cfi_offset 23, -76
	.cfi_offset 22, -80
	.cfi_offset 21, -84
	.cfi_offset 20, -88
	.cfi_offset 19, -92
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 28, -56
	.cfi_offset 65, 4
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LBB15796:
.LBB15785:
.LBB15780:
	.loc 4 5041 0
	lwz 9,-32192(31)
.LBE15780:
.LBE15785:
.LBB15786:
.LBB15787:
	.loc 6 424 0
	lis 11,.LC74@ha
	lwz 10,.LC74@l(11)
.LBE15787:
.LBE15786:
.LBB15790:
.LBB15781:
	lis 11,.LC1@ha
.LBE15781:
.LBE15790:
.LBE15796:
.LBB15797:
.LBB15798:
.LBB15799:
	.loc 17 268 0
	cmpwi 7,9,0
.LBE15799:
.LBE15798:
.LBE15797:
.LBB16036:
.LBB15791:
.LBB15782:
	.loc 6 424 0
	lwz 11,.LC1@l(11)
.LBE15782:
.LBE15791:
.LBB15792:
.LBB15788:
	.loc 6 426 0
	li 0,0
.LBE15788:
.LBE15792:
.LBE16036:
	.loc 4 5037 0
	mr 28,3
.LVL3815:
.LBB16037:
.LBB15793:
.LBB15783:
	.loc 6 424 0
	stw 11,108(1)
	.loc 6 425 0
	stw 11,112(1)
.LBE15783:
.LBE15793:
.LBB15794:
.LBB15789:
	.loc 6 424 0
	stw 10,96(1)
	.loc 6 425 0
	stw 10,100(1)
	.loc 6 426 0
	stw 0,104(1)
.LVL3816:
.LBE15789:
.LBE15794:
.LBB15795:
.LBB15784:
	stw 0,116(1)
	.loc 4 5041 0
	lwz 11,-32196(31)
.LBE15784:
.LBE15795:
.LBE16037:
.LBB16038:
.LBB15801:
.LBB15800:
	.loc 17 268 0
	beq- 7,.L2061
	cmpw 7,11,9
	beq- 7,.L2061
	.loc 17 271 0
	lwz 31,12(9)
.LVL3817:
.LBE15800:
.LBE15801:
	.loc 4 5041 0
	cmpwi 7,31,0
	beq- 7,.L2061
.LBB15802:
.LBB15803:
.LBB15804:
	.loc 6 527 0
	stw 0,136(1)
	lis 30,.LANCHOR0@ha
.LBB15805:
.LBB15806:
	.loc 8 248 0
	lis 24,0x5f37
	la 30,.LANCHOR0@l(30)
.LBE15806:
.LBE15805:
	.loc 6 527 0
	lfs 28,136(1)
.LBE15804:
.LBE15803:
.LBB15841:
	.loc 4 5066 0
	lis 27,.LC239@ha
.LBE15841:
.LBB15939:
.LBB15827:
.LBB15817:
.LBB15807:
	.loc 8 248 0
	ori 24,24,23007
	.loc 8 246 0
	lis 20,.LC15@ha
	.loc 8 250 0
	lis 21,.LC63@ha
.LBE15807:
.LBE15817:
.LBE15827:
.LBE15939:
.LBB15940:
.LBB15842:
	.loc 4 5073 0
	lis 29,gameRenderWorld@ha
.LBE15842:
.LBE15940:
	.loc 4 5052 0
	lis 25,colorRed@ha
	.loc 4 5050 0
	lis 22,colorYellow@ha
	.loc 4 5048 0
	lis 26,colorMdGrey@ha
.LVL3818:
.L2068:
.LBB15941:
.LBB15942:
	.loc 16 340 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL3819:
.LBB15943:
.LBB15944:
	.loc 16 311 0
	lwz 9,56(30)
.LBE15944:
.LBE15943:
.LBE15942:
	.loc 4 5138 0
	lwz 0,56(3)
.LBB15947:
.LBB15946:
.LBB15945:
	.loc 16 311 0
	cmpw 7,0,9
	blt- 7,.L2063
	lwz 9,60(30)
	cmpw 7,0,9
	bgt- 7,.L2063
.LVL3820:
.LBE15945:
.LBE15946:
.LBE15947:
.LBE15941:
	.loc 4 5047 0
	lbz 0,692(31)
	cmpwi 7,0,0
	beq- 7,.L2064
	.loc 4 5048 0
	lwz 8,colorMdGrey@l(26)
	la 9,colorMdGrey@l(26)
.LVL3821:
.L2071:
	.loc 4 5050 0 discriminator 4
	lwz 10,4(9)
	.loc 4 5057 0 discriminator 4
	mr 3,31
	.loc 4 5050 0 discriminator 4
	lwz 11,8(9)
	lwz 0,12(9)
	.loc 4 5055 0 discriminator 4
	lfs 27,660(31)
	.loc 4 5050 0 discriminator 4
	stw 8,80(1)
	stw 10,84(1)
	stw 11,88(1)
	stw 0,92(1)
	.loc 4 5055 0 discriminator 4
	lfs 30,656(31)
.LVL3822:
	.loc 4 5056 0 discriminator 4
	lfs 31,672(31)
	lfs 29,668(31)
.LVL3823:
	.loc 4 5057 0 discriminator 4
	bl _ZNK8idEntity10GetPhysicsEv
.LVL3824:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL3825:
.LBB15948:
.LBB15949:
	.loc 6 452 0 discriminator 4
	lfs 13,684(31)
	lfs 11,0(3)
	lfs 9,4(3)
	lfs 10,8(3)
.LBE15949:
.LBE15948:
	.loc 4 5064 0 discriminator 4
	mr 3,31
.LVL3826:
.LBB15957:
.LBB15954:
	.loc 6 452 0 discriminator 4
	lfs 0,688(31)
	fadds 13,9,13
	lfs 12,680(31)
	fadds 0,10,0
.LVL3827:
.LBE15954:
.LBE15957:
	.loc 4 5059 0 discriminator 4
	lwz 0,652(31)
.LBB15958:
.LBB15955:
	.loc 6 452 0 discriminator 4
	fadds 12,11,12
.LBB15950:
.LBB15951:
	.loc 6 397 0 discriminator 4
	stfs 13,72(1)
.LBE15951:
.LBE15950:
.LBE15955:
.LBE15958:
	.loc 4 5059 0 discriminator 4
	stw 0,116(1)
.LBB15959:
.LBB15956:
.LBB15953:
.LBB15952:
	.loc 6 398 0 discriminator 4
	stfs 0,76(1)
.LVL3828:
	.loc 6 396 0 discriminator 4
	stfs 12,68(1)
.LBE15952:
.LBE15953:
.LBE15956:
.LBE15959:
	.loc 4 5064 0 discriminator 4
	bl _ZNK8idEntity10GetPhysicsEv
.LVL3829:
	lwz 9,0(3)
	li 4,0
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL3830:
.LBB15960:
.LBB15961:
	.loc 6 435 0 discriminator 4
	lfs 13,672(31)
	lfs 0,16(3)
.LBE15961:
.LBE15960:
	lfs 12,668(31)
.LBB15963:
.LBB15962:
	fmuls 0,13,0
.LBE15962:
.LBE15963:
	lfs 13,12(3)
	lfs 11,676(31)
	fmadds 13,12,13,0
	lfs 12,20(3)
.LBB15964:
	.loc 4 5066 0 discriminator 4
	lfd 0,.LC239@l(27)
.LBE15964:
	.loc 6 435 0 discriminator 4
	fmadds 12,11,12,13
	stfs 12,120(1)
.LVL3831:
.LBB15965:
.LBB15930:
.LBB15931:
	.loc 8 781 0 discriminator 4
	lwz 9,120(1)
	rlwinm 0,9,0,1,31
.LBE15931:
.LBE15930:
	.loc 4 5066 0 discriminator 4
	stw 0,136(1)
	lfs 2,136(1)
	fmr 13,2
	fcmpu 7,13,0
	bgt- 7,.L2072
.LVL3832:
.L2063:
.LBB15932:
	.loc 4 5138 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBE15932:
.LBE15965:
.LBE15802:
.LBB16033:
.LBB16034:
	.loc 17 268 0
	cmpwi 7,9,0
	beq- 7,.L2061
	cmpw 7,0,9
	beq- 7,.L2061
	.loc 17 271 0
	lwz 31,12(9)
.LVL3833:
.LBE16034:
.LBE16033:
	.loc 4 5041 0
	cmpwi 7,31,0
	bne+ 7,.L2068
.LVL3834:
.L2061:
.LBE16038:
.LBE16041:
	.loc 4 5081 0
	lwz 0,244(1)
	lwz 19,148(1)
	mtlr 0
	lwz 20,152(1)
	lwz 21,156(1)
	lwz 22,160(1)
	lwz 23,164(1)
	lwz 24,168(1)
	lwz 25,172(1)
	lwz 26,176(1)
	lwz 27,180(1)
	lwz 28,184(1)
.LVL3835:
	lwz 29,188(1)
	lwz 30,192(1)
	lwz 31,196(1)
	lfd 27,200(1)
	lfd 28,208(1)
	lfd 29,216(1)
	lfd 30,224(1)
	lfd 31,232(1)
	addi 1,1,240
	.cfi_remember_state
.LCFI413:
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
.LVL3836:
.L2064:
.LCFI414:
	.cfi_restore_state
.LBB16042:
.LBB16039:
.LBB16035:
	.loc 4 5049 0
	cmpwi 7,28,0
	beq- 7,.L2066
	.loc 4 5049 0 is_stmt 0 discriminator 1
	mr 3,28
.LVL3837:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 4,28
	mr 5,3
	mr 3,31
	bl _ZN12idCombatNode12EntityInViewEP7idActorRK6idVec3
	cmpwi 7,3,0
	beq- 7,.L2066
	.loc 4 5050 0 is_stmt 1 discriminator 4
	la 9,colorYellow@l(22)
	lwz 8,colorYellow@l(22)
	b .L2071
.L2066:
	.loc 4 5052 0
	la 9,colorRed@l(25)
	lwz 8,colorRed@l(25)
	b .L2071
.LVL3838:
.L2072:
	.loc 4 5055 0
	fneg 27,27
.LVL3839:
.LBB15966:
.LBB15933:
	.loc 4 5067 0
	lfs 3,120(1)
.LVL3840:
.LBE15933:
.LBE15966:
	.loc 4 5056 0
	fneg 8,29
.LBB15967:
.LBB15934:
	.loc 4 5067 0
	lfs 0,640(31)
.LVL3841:
.LBE15934:
.LBE15967:
.LBB15968:
.LBB15969:
	.loc 6 527 0
	fmuls 12,31,31
.LVL3842:
.LBE15969:
.LBE15968:
.LBB16002:
.LBB15828:
.LBB15818:
.LBB15808:
	.loc 8 246 0
	lfs 29,.LC15@l(20)
.LVL3843:
.LBE15808:
.LBE15818:
	.loc 6 527 0
	fmuls 13,27,27
.LBB15819:
.LBB15809:
	.loc 8 250 0
	lfs 6,.LC63@l(21)
.LBE15809:
.LBE15819:
.LBE15828:
.LBE16002:
.LBB16003:
.LBB15935:
	.loc 4 5067 0
	fdivs 0,0,3
.LVL3844:
.LBB15843:
.LBB15844:
	.loc 6 452 0
	lfs 10,68(1)
	lfs 11,72(1)
.LBE15844:
.LBE15843:
	.loc 4 5073 0
	mr 3,31
.LVL3845:
	lwz 19,gameRenderWorld@l(29)
.LBE15935:
.LBE16003:
.LBB16004:
.LBB15988:
	.loc 6 527 0
	fmadds 12,8,8,12
.LBE15988:
.LBE16004:
.LBB16005:
.LBB15829:
	fmadds 13,30,30,13
.LBE15829:
.LBE16005:
.LBB16006:
.LBB15989:
	fadds 12,12,28
.LBE15989:
.LBE16006:
.LBB16007:
.LBB15830:
	fadds 13,13,28
.LBE15830:
.LBE16007:
.LBB16008:
.LBB15990:
	stfs 12,132(1)
.LBE15990:
.LBE16008:
.LBB16009:
.LBB15831:
	stfs 13,128(1)
.LBE15831:
.LBE16009:
.LBB16010:
.LBB15991:
.LBB15970:
.LBB15971:
	.loc 8 248 0
	lwz 9,132(1)
.LBE15971:
.LBE15970:
.LBE15991:
.LBE16010:
.LBB16011:
.LBB15832:
.LBB15820:
.LBB15810:
	lwz 11,128(1)
.LBE15810:
.LBE15820:
.LBE15832:
.LBE16011:
.LBB16012:
.LBB15992:
.LBB15980:
.LBB15972:
	srawi 0,9,1
.LVL3846:
.LBE15972:
.LBE15980:
.LBE15992:
.LBE16012:
.LBB16013:
.LBB15833:
.LBB15821:
.LBB15811:
	.loc 8 246 0
	lfs 2,128(1)
	.loc 8 248 0
	srawi 9,11,1
.LBE15811:
.LBE15821:
.LBE15833:
.LBE16013:
.LBB16014:
.LBB15993:
.LBB15981:
.LBB15973:
	.loc 8 249 0
	subf 0,0,24
	.loc 8 246 0
	lfs 3,132(1)
.LBE15973:
.LBE15981:
.LBE15993:
.LBE16014:
.LBB16015:
.LBB15834:
.LBB15822:
.LBB15812:
	.loc 8 249 0
	subf 9,9,24
	stw 9,120(1)
	.loc 8 246 0
	fmuls 7,2,29
.LBE15812:
.LBE15822:
.LBE15834:
.LBE16015:
.LBB16016:
.LBB15994:
.LBB15982:
.LBB15974:
	.loc 8 249 0
	stw 0,124(1)
	.loc 8 246 0
	fmuls 9,3,29
.LBE15974:
.LBE15982:
.LBE15994:
.LBE16016:
.LBB16017:
.LBB15835:
.LBB15823:
.LBB15813:
	.loc 8 250 0
	lfs 5,120(1)
.LBE15813:
.LBE15823:
.LBE15835:
.LBE16017:
.LBB16018:
.LBB15995:
.LBB15983:
.LBB15975:
	lfs 2,124(1)
.LBE15975:
.LBE15983:
.LBE15995:
.LBE16018:
.LBB16019:
.LBB15836:
.LBB15824:
.LBB15814:
	.loc 4 5034 0
	fneg 7,7
	.loc 8 250 0
	fmuls 4,5,5
	lfs 3,120(1)
.LBE15814:
.LBE15824:
.LBE15836:
.LBE16019:
.LBB16020:
.LBB15996:
.LBB15984:
.LBB15976:
	fmuls 5,2,2
.LBE15976:
.LBE15984:
.LBE15996:
.LBE16020:
.LBB16021:
.LBB15936:
	.loc 4 5068 0
	lfs 13,636(31)
.LVL3847:
.LBE15936:
.LBE16021:
.LBB16022:
.LBB15997:
.LBB15985:
.LBB15977:
	.loc 4 5034 0
	fneg 9,9
.LBE15977:
.LBE15985:
.LBE15997:
.LBE16022:
.LBB16023:
.LBB15937:
.LBB15858:
.LBB15853:
	.loc 6 452 0
	lfs 12,76(1)
.LBE15853:
.LBE15858:
.LBE15937:
.LBE16023:
.LBB16024:
.LBB15837:
.LBB15825:
.LBB15815:
	.loc 8 250 0
	fmadds 7,7,4,6
.LBE15815:
.LBE15825:
.LBE15837:
.LBE16024:
.LBB16025:
.LBB15998:
.LBB15986:
.LBB15978:
	fmadds 9,9,5,6
.LBE15978:
.LBE15986:
.LBE15998:
.LBE16025:
.LBB16026:
.LBB15838:
.LBB15826:
.LBB15816:
	fmuls 7,3,7
.LBE15816:
.LBE15826:
.LBE15838:
.LBE16026:
.LBB16027:
.LBB15999:
.LBB15987:
.LBB15979:
	fmuls 9,2,9
.LBE15979:
.LBE15987:
.LBE15999:
.LBE16027:
.LBB16028:
.LBB15839:
	.loc 6 529 0
	fmuls 27,27,7
.LVL3848:
	.loc 6 530 0
	fmuls 30,30,7
.LVL3849:
.LBE15839:
.LBE16028:
.LBB16029:
.LBB16000:
	.loc 6 529 0
	fmuls 31,31,9
.LVL3850:
.LBE16000:
.LBE16029:
.LBB16030:
.LBB15840:
	.loc 6 531 0
	fmuls 7,7,28
.LVL3851:
.LBE15840:
.LBE16030:
.LBB16031:
.LBB16001:
	.loc 6 530 0
	fmuls 8,8,9
	.loc 6 531 0
	fmuls 9,9,28
.LBE16001:
.LBE16031:
.LBB16032:
.LBB15938:
.LBB15859:
.LBB15854:
.LBB15845:
.LBB15846:
	.loc 6 452 0
	fmadds 3,13,30,11
	fmadds 4,13,7,12
.LBE15846:
.LBE15845:
.LBE15854:
.LBE15859:
.LBB15860:
.LBB15861:
.LBB15862:
	fmadds 6,13,8,11
.LBE15862:
.LBE15861:
.LBE15860:
.LBB15871:
.LBB15855:
.LBB15850:
.LBB15847:
	fmadds 2,13,27,10
	.loc 6 397 0
	stfs 3,60(1)
.LBE15847:
.LBE15850:
.LBE15855:
.LBE15871:
.LBB15872:
.LBB15873:
.LBB15874:
	.loc 6 452 0
	fmadds 7,0,7,12
.LVL3852:
.LBE15874:
.LBE15873:
.LBE15872:
.LBB15883:
.LBB15856:
.LBB15851:
.LBB15848:
	.loc 6 398 0
	stfs 4,64(1)
.LBE15848:
.LBE15851:
.LBE15856:
.LBE15883:
.LBB15884:
.LBB15867:
.LBB15863:
	.loc 6 452 0
	fmadds 5,13,31,10
	.loc 6 397 0
	stfs 6,36(1)
.LBE15863:
.LBE15867:
.LBE15884:
.LBB15885:
.LBB15886:
.LBB15887:
	.loc 6 452 0
	fmadds 8,0,8,11
.LBE15887:
.LBE15886:
.LBE15885:
.LBB15896:
.LBB15857:
.LBB15852:
.LBB15849:
	.loc 6 396 0
	stfs 2,56(1)
.LBE15849:
.LBE15852:
.LBE15857:
.LBE15896:
.LBB15897:
.LBB15879:
.LBB15875:
	.loc 6 452 0
	fmadds 27,0,27,10
.LVL3853:
	.loc 6 398 0
	stfs 7,52(1)
.LBE15875:
.LBE15879:
.LBE15897:
.LBB15898:
.LBB15892:
.LBB15888:
	.loc 6 452 0
	fmadds 31,0,31,10
.LBE15888:
.LBE15892:
.LBE15898:
.LBB15899:
.LBB15868:
.LBB15864:
	.loc 6 396 0
	stfs 5,32(1)
.LBE15864:
.LBE15868:
.LBE15899:
.LBB15900:
.LBB15880:
.LBB15876:
	.loc 6 452 0
	fmadds 30,0,30,11
.LVL3854:
.LBE15876:
.LBE15880:
.LBE15900:
.LBB15901:
.LBB15893:
.LBB15889:
	.loc 6 397 0
	stfs 8,24(1)
.LBE15889:
.LBE15893:
.LBE15901:
.LBB15902:
.LBB15869:
.LBB15865:
	.loc 6 452 0
	fmadds 13,13,9,12
.LVL3855:
.LBE15865:
.LBE15869:
.LBE15902:
.LBB15903:
.LBB15881:
.LBB15877:
	.loc 6 396 0
	stfs 27,44(1)
.LBE15877:
.LBE15881:
.LBE15903:
.LBB15904:
.LBB15894:
.LBB15890:
	.loc 6 452 0
	fmadds 9,0,9,12
.LVL3856:
	.loc 6 396 0
	stfs 31,20(1)
.LBE15890:
.LBE15894:
.LBE15904:
.LBB15905:
.LBB15882:
.LBB15878:
	.loc 6 397 0
	stfs 30,48(1)
.LBE15878:
.LBE15882:
.LBE15905:
.LBB15906:
.LBB15870:
.LBB15866:
	.loc 6 398 0
	stfs 13,40(1)
.LVL3857:
.LBE15866:
.LBE15870:
.LBE15906:
.LBB15907:
.LBB15895:
.LBB15891:
	stfs 9,28(1)
.LBE15891:
.LBE15895:
.LBE15907:
	.loc 4 5073 0
	lwz 9,0(19)
	lwz 23,156(9)
	bl _ZNK8idEntity10GetPhysicsEv
.LVL3858:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB15908:
.LBB15909:
	.loc 6 452 0
	lfs 0,36(1)
	lfs 13,60(1)
.LBE15909:
.LBE15908:
	.loc 4 5073 0
	mr 5,3
.LVL3859:
.LBB15914:
.LBB15910:
	.loc 6 452 0
	lfs 12,64(1)
.LBE15910:
.LBE15914:
	.loc 4 5073 0
	mr 3,19
.LBB15915:
.LBB15911:
	.loc 6 452 0
	fadds 13,13,0
	lfs 0,40(1)
	lfs 11,56(1)
.LBE15911:
.LBE15915:
	.loc 4 5073 0
	addi 4,1,80
.LBB15916:
.LBB15912:
	.loc 6 452 0
	fadds 0,12,0
	lfs 12,32(1)
.LBE15912:
.LBE15916:
.LBB15917:
.LBB15918:
	.loc 6 439 0
	fmuls 13,13,29
.LBE15918:
.LBE15917:
	.loc 4 5073 0
	addi 6,1,8
.LBB15926:
.LBB15913:
	.loc 6 452 0
	fadds 12,11,12
.LBE15913:
.LBE15926:
	.loc 4 5073 0
	mtctr 23
.LBB15927:
.LBB15923:
	.loc 6 439 0
	fmuls 0,0,29
.LVL3860:
.LBE15923:
.LBE15927:
	.loc 4 5073 0
	li 7,16
.LBB15928:
.LBB15924:
.LBB15919:
.LBB15920:
	.loc 6 397 0
	stfs 13,12(1)
.LBE15920:
.LBE15919:
.LBE15924:
.LBE15928:
	.loc 4 5073 0
	li 8,0
.LBB15929:
.LBB15925:
	.loc 6 439 0
	fmuls 29,12,29
.LBB15922:
.LBB15921:
	.loc 6 398 0
	stfs 0,16(1)
	.loc 6 396 0
	stfs 29,8(1)
.LBE15921:
.LBE15922:
.LBE15925:
.LBE15929:
	.loc 4 5073 0
	bctrl
.LVL3861:
	.loc 4 5074 0
	lwz 3,gameRenderWorld@l(29)
	addi 4,1,80
	addi 5,1,56
	lwz 9,0(3)
	addi 6,1,44
	li 7,16
	li 8,0
	lwz 0,156(9)
	mtctr 0
	bctrl
	.loc 4 5075 0
	lwz 3,gameRenderWorld@l(29)
	addi 4,1,80
	addi 5,1,56
	lwz 9,0(3)
	addi 6,1,32
	li 7,16
	li 8,0
	lwz 0,156(9)
	mtctr 0
	bctrl
	.loc 4 5076 0
	lwz 3,gameRenderWorld@l(29)
	addi 4,1,80
	addi 5,1,32
	lwz 9,0(3)
	addi 6,1,20
	li 7,16
	li 8,0
	lwz 0,156(9)
	mtctr 0
	bctrl
	.loc 4 5077 0
	lwz 3,gameRenderWorld@l(29)
	addi 4,1,80
	addi 5,1,44
	lwz 9,0(3)
	addi 6,1,20
	li 7,16
	li 8,0
	lwz 0,156(9)
	mtctr 0
	bctrl
	.loc 4 5078 0
	lwz 3,gameRenderWorld@l(29)
	addi 4,1,80
	addi 5,1,96
	lwz 9,0(3)
	addi 6,1,68
	li 7,16
	lwz 0,176(9)
	mtctr 0
	bctrl
	b .L2063
.LBE15938:
.LBE16032:
.LBE16035:
.LBE16039:
.LBE16042:
	.cfi_endproc
.LFE2984:
	.size	_ZN12idCombatNode13DrawDebugInfoEv, .-_ZN12idCombatNode13DrawDebugInfoEv
	.section	.text._ZN6idListI17particleEmitter_sE5ClearEv,"axG",@progbits,_ZN6idListI17particleEmitter_sE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI17particleEmitter_sE5ClearEv
	.type	_ZN6idListI17particleEmitter_sE5ClearEv, @function
_ZN6idListI17particleEmitter_sE5ClearEv:
.LFB3235:
	.loc 14 192 0
	.cfi_startproc
.LVL3862:
	mflr 0
	stwu 1,-16(1)
.LCFI415:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 14 193 0
	lwz 3,12(3)
.LVL3863:
	cmpwi 7,3,0
	beq- 7,.L2074
	.cfi_offset 65, 4
	.loc 14 194 0 discriminator 1
	bl _ZdaPv
.L2074:
	.loc 14 197 0
	li 0,0
	stw 0,12(31)
	.loc 14 198 0
	stw 0,0(31)
	.loc 14 199 0
	stw 0,4(31)
	.loc 14 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3864:
	mtlr 0
	addi 1,1,16
.LCFI416:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3235:
	.size	_ZN6idListI17particleEmitter_sE5ClearEv, .-_ZN6idListI17particleEmitter_sE5ClearEv
	.section	.text._ZN6idListI10idKeyValueE5ClearEv,"axG",@progbits,_ZN6idListI10idKeyValueE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI10idKeyValueE5ClearEv
	.type	_ZN6idListI10idKeyValueE5ClearEv, @function
_ZN6idListI10idKeyValueE5ClearEv:
.LFB3294:
	.loc 14 192 0
	.cfi_startproc
.LVL3865:
	mflr 0
	stwu 1,-16(1)
.LCFI417:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 14 193 0
	lwz 3,12(3)
.LVL3866:
	cmpwi 7,3,0
	beq- 7,.L2076
	.cfi_offset 65, 4
	.loc 14 194 0 discriminator 1
	bl _ZdaPv
.L2076:
	.loc 14 197 0
	li 0,0
	stw 0,12(31)
	.loc 14 198 0
	stw 0,0(31)
	.loc 14 199 0
	stw 0,4(31)
	.loc 14 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3867:
	mtlr 0
	addi 1,1,16
.LCFI418:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3294:
	.size	_ZN6idListI10idKeyValueE5ClearEv, .-_ZN6idListI10idKeyValueE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN4idAI6KilledEP8idEntityS1_iRK6idVec3i
	.type	_ZN4idAI6KilledEP8idEntityS1_iRK6idVec3i, @function
_ZN4idAI6KilledEP8idEntityS1_iRK6idVec3i:
.LFB2937:
	.loc 4 3335 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2937
.LVL3868:
	mflr 0
	stwu 1,-128(1)
.LCFI419:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	mfcr 12
	stw 19,76(1)
	mr 19,4
	.cfi_offset 19, -52
	.cfi_register 70, 12
	stw 0,132(1)
	stw 20,80(1)
	mr 20,5
	.cfi_offset 20, -48
	.cfi_offset 65, 4
	stw 30,120(1)
	mr 30,8
	.cfi_offset 30, -8
	stw 31,124(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 21,84(1)
	stw 22,88(1)
	stw 23,92(1)
	stw 24,96(1)
	stw 25,100(1)
	stw 26,104(1)
	stw 27,108(1)
	stw 28,112(1)
	stw 29,116(1)
	stw 12,72(1)
.LEHB74:
.LBB16144:
	.loc 4 3340 0
	.cfi_offset 70, -56
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	bl _ZN4idAI9EndAttackEv
.LVL3869:
.LBB16145:
.LBB16146:
	.loc 4 3342 0
	lis 9,g_debugDamage+44@ha
	.loc 20 142 0
	lwz 9,g_debugDamage+44@l(9)
.LBE16146:
.LBE16145:
	.loc 4 3342 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L2133
.L2078:
	.loc 4 3347 0
	cmpwi 4,19,0
	beq- 4,.L2079
.LVL3870:
.LBB16147:
.LBB16148:
.LBB16149:
.LBB16150:
	.loc 11 241 0
	lis 4,.LC235@ha
	addi 3,19,100
	la 4,.LC235@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3871:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L2121
.LVL3872:
.LBB16151:
	.loc 4 5138 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL3873:
.L2080:
.LBE16151:
.LBE16150:
.LBE16149:
	.loc 11 253 0
	bl atoi
.LVL3874:
.LBE16148:
.LBE16147:
.LBB16155:
.LBB16156:
	.loc 18 237 0
	lwz 9,5188(31)
	cmpwi 7,9,0
	beq- 7,.L2081
.LBE16156:
.LBE16155:
	.loc 4 3348 0
	xoris 3,3,0x8000
	lis 0,0x4330
	stw 3,60(1)
	lis 11,.LC65@ha
	stw 0,56(1)
	lfs 0,.LC65@l(11)
	lfd 13,56(1)
	fsub 0,13,0
	frsp 0,0
	stfs 0,0(9)
.LVL3875:
.L2081:
.LBB16157:
.LBB16158:
	.loc 18 249 0
	lwz 9,5192(31)
	cmpwi 7,9,0
	beq- 7,.L2082
.LVL3876:
.L2134:
.LBE16158:
.LBE16157:
	.loc 4 3353 0
	lwz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L2082
.LVL3877:
.LBB16160:
.LBB16161:
	.loc 18 237 0
	lwz 9,5184(31)
	cmpwi 7,9,0
	beq- 7,.L2083
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L2083:
.LVL3878:
.LBE16161:
.LBE16160:
.LBB16162:
.LBB16163:
	.loc 18 237 0
	lwz 9,5180(31)
	cmpwi 7,9,0
	beq- 7,.L2077
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.LVL3879:
.L2077:
.LBE16163:
.LBE16162:
.LBE16144:
	.loc 4 3429 0
	lwz 0,132(1)
	lwz 12,72(1)
	mtlr 0
	lwz 19,76(1)
.LVL3880:
	lwz 20,80(1)
.LVL3881:
	mtcrf 24,12
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
	addi 1,1,128
	.cfi_remember_state
.LCFI420:
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
.LVL3882:
.L2079:
.LCFI421:
	.cfi_restore_state
.LBB16303:
.LBB16164:
.LBB16165:
	.loc 18 237 0
	lwz 9,5188(31)
	cmpwi 7,9,0
	beq- 7,.L2081
	.loc 18 238 0
	li 0,0
	stw 0,0(9)
.LVL3883:
.LBE16165:
.LBE16164:
.LBB16166:
.LBB16159:
	.loc 18 249 0
	lwz 9,5192(31)
	cmpwi 7,9,0
	bne+ 7,.L2134
.LVL3884:
.L2082:
.LBE16159:
.LBE16166:
	.loc 4 3360 0
	mr 3,31
	li 4,1
	li 5,0
.LBB16167:
.LBB16168:
	.loc 7 635 0
	lis 26,gameLocal@ha
.LBE16168:
.LBE16167:
	.loc 4 3360 0
	bl _ZN8idEntity9StopSoundEib
.LVL3885:
.LBB16171:
.LBB16169:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 635 0
	la 26,gameLocal@l(26)
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3886:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,26,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L2135
.LVL3887:
.L2085:
.LBE16169:
.LBE16171:
	.loc 4 3367 0
	li 0,0
	.loc 4 3366 0
	li 9,0
	.loc 4 3370 0
	addi 27,31,4216
	.loc 4 3366 0
	stb 9,4546(31)
	.loc 4 3367 0
	stw 0,3952(31)
	.loc 4 3376 0
	cmpwi 3,20,0
	.loc 4 3368 0
	stb 0,4547(31)
	.loc 4 3370 0
	li 4,0
	mr 3,27
	bl _ZN17idPhysics_Monster10UseFlyMoveEb
	.loc 4 3371 0
	mr 3,27
	li 4,0
	bl _ZN17idPhysics_Monster14ForceDeltaMoveEb
	.loc 4 3374 0
	mr 3,31
	li 4,12
	li 5,0
	bl _ZN8idEntity9StopSoundEib
	.loc 4 3376 0
	beq- 3,.L2120
.LVL3888:
.LBB16172:
.LBB16173:
	.loc 16 340 0 discriminator 1
	lwz 9,0(20)
	mr 3,20
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL3889:
.LBE16173:
	.loc 4 5138 0 discriminator 1
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB16178:
.LBB16174:
.LBB16175:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L2136
.LVL3890:
.L2120:
.LBE16175:
.LBE16174:
.LBE16178:
.LBE16172:
	.loc 4 3381 0
	mr 4,20
	mr 3,31
	bl _ZNK8idEntity15ActivateTargetsEPS_
	.loc 4 3383 0
	mr 3,31
	bl _ZN7idActor17RemoveAttachmentsEv
	.loc 4 3384 0
	mr 3,31
	bl _ZN4idAI16RemoveProjectileEv
	.loc 4 3385 0
	mr 3,31
	li 4,0
	bl _ZN4idAI8StopMoveE12moveStatus_t
	.loc 4 3387 0
	mr 3,31
	bl _ZN4idAI10ClearEnemyEv
.LVL3891:
.LBB16180:
.LBB16181:
	.loc 18 237 0
	lwz 9,5192(31)
	cmpwi 7,9,0
	beq- 7,.L2088
	.loc 18 238 0
	li 0,1
	stw 0,0(9)
.L2088:
.LBE16181:
.LBE16180:
	.loc 4 3391 0
	li 5,-1
	li 4,0
	mr 3,27
	bl _ZN15idPhysics_Actor11SetContentsEii
	.loc 4 3392 0
	li 4,0
	mr 3,27
	bl _ZNK15idPhysics_Actor12GetClipModelEi
	bl _ZN11idClipModel6UnlinkEv
	.loc 4 3394 0
	mr 3,31
	bl _ZN8idEntity6UnbindEv
	.loc 4 3396 0
	mr 3,31
	bl _ZN7idActor12StartRagdollEv
	cmpwi 7,3,0
	bne- 7,.L2137
.L2089:
	.loc 4 3400 0
	addi 25,31,100
.LVL3892:
.LBB16182:
.LBB16183:
	.loc 11 221 0
	lis 4,.LC242@ha
	mr 3,25
	la 4,.LC242@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL3893:
	.loc 11 222 0
	cmpwi 0,3,0
	beq- 0,.L2090
.LVL3894:
.LBB16184:
	.loc 4 5138 0
	lwz 9,4(3)
.LBE16184:
.LBE16183:
.LBE16182:
	.loc 4 3402 0
	lis 4,.LC241@ha
	li 6,0
	li 7,0
	li 8,0
	li 5,1
	la 4,.LC241@l(4)
	mr 3,31
.LVL3895:
.LBB16187:
.LBB16186:
.LBB16185:
	.loc 4 5138 0
	lwz 30,4(9)
.LVL3896:
.LBE16185:
.LBE16186:
.LBE16187:
	.loc 4 3402 0
	bl _ZN8idEntity10StartSoundEPKciibPi
.LVL3897:
	.loc 4 3403 0
	addis 9,26,0x25
	lis 11,_ZN6idMath8M_MS2SECE@ha
	lwz 0,2004(9)
	lis 9,.LC65@ha
	lfs 0,.LC65@l(9)
	.loc 4 3404 0
	mr 3,31
	.loc 4 3403 0
	xoris 0,0,0x8000
	.loc 4 3404 0
	mr 4,30
	.loc 4 3403 0
	stw 0,68(1)
	lis 0,0x4330
	stw 0,64(1)
	lfd 13,64(1)
	.loc 4 3404 0
	lwz 9,0(31)
	.loc 4 3403 0
	fsub 13,13,0
	lfs 0,_ZN6idMath8M_MS2SECE@l(11)
	frsp 13,13
	fmuls 0,13,0
	fneg 0,0
	stfs 0,336(31)
	.loc 4 3404 0
	lwz 0,44(9)
	mtctr 0
	bctrl
	.loc 4 3405 0
	lis 4,vec3_origin@ha
	la 4,vec3_origin@l(4)
	li 5,0
	mr 3,27
	bl _ZN17idPhysics_Monster17SetLinearVelocityERK6idVec3i
	.loc 4 3406 0
	mr 3,27
	bl _ZN17idPhysics_Monster9PutToRestEv
	.loc 4 3407 0
	mr 3,27
	bl _ZN17idPhysics_Monster13DisableImpactEv
.LVL3898:
.L2090:
	.loc 4 3410 0
	li 0,0
	.loc 4 3412 0
	lis 4,.LC243@ha
	.loc 4 3410 0
	stb 0,4844(31)
	.loc 4 3412 0
	la 4,.LC243@l(4)
	mr 3,31
	.loc 4 3416 0
	lis 24,.LC244@ha
	.loc 4 3412 0
	bl _ZN7idActor17GetScriptFunctionEPKc
	.loc 4 3416 0
	la 24,.LC244@l(24)
	.loc 4 3412 0
	stw 3,2444(31)
	mr 4,3
	.loc 4 3413 0
	mr 3,31
	bl _ZN7idActor8SetStateEPK10function_t
	.loc 4 3414 0
	lis 4,.LC26@ha
	mr 3,31
	la 4,.LC26@l(4)
	bl _ZN7idActor12SetWaitStateEPKc
	.loc 4 3416 0
	mr 3,25
	mr 4,24
	li 5,0
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LEHE74:
.LVL3899:
	.loc 4 3417 0
	mr. 30,3
	beq- 0,.L2091
.LBB16188:
	.loc 4 3420 0
	lis 22,.LC119@ha
	.loc 4 3421 0
	lis 23,.LC245@ha
.LBB16189:
.LBB16190:
.LBB16191:
	.loc 14 159 0
	li 29,16
.LBB16192:
.LBB16193:
	.loc 14 197 0
	li 31,0
.LVL3900:
.LBE16193:
.LBE16192:
.LBE16191:
.LBE16190:
.LBB16197:
.LBB16198:
	.file 24 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/containers/HashIndex.h"
	.loc 24 342 0
	li 21,128
.LBE16198:
.LBE16197:
.LBE16189:
	.loc 4 3420 0
	la 22,.LC119@l(22)
	.loc 4 3421 0
	la 23,.LC245@l(23)
.LVL3901:
.L2110:
.LBB16229:
.LBB16202:
.LBB16203:
	.loc 24 112 0
	addi 3,1,24
	li 4,1024
	li 5,1024
.LBE16203:
.LBE16202:
.LBB16205:
.LBB16196:
	.loc 14 159 0
	stw 29,16(1)
.LVL3902:
.LBB16195:
.LBB16194:
	.loc 14 197 0
	stw 31,20(1)
	.loc 14 198 0
	stw 31,8(1)
	.loc 14 199 0
	stw 31,12(1)
.LVL3903:
.LEHB75:
.LBE16194:
.LBE16195:
.LBE16196:
.LBE16205:
.LBB16206:
.LBB16204:
	.loc 24 112 0
	bl _ZN11idHashIndex4InitEii
.LEHE75:
.LVL3904:
.LBE16204:
.LBE16206:
.LBB16207:
.LBB16208:
	.loc 14 319 0
	lwz 28,20(1)
	.loc 14 317 0
	stw 29,16(1)
	.loc 14 319 0
	cmpwi 7,28,0
	beq- 7,.L2092
	.loc 14 321 0
	lwz 9,8(1)
	.loc 14 323 0
	lwz 0,12(1)
	.loc 14 321 0
	addi 3,9,15
.LVL3905:
	.loc 14 322 0
	srawi 3,3,4
	addze 3,3
.LVL3906:
	slwi 3,3,4
.LVL3907:
	.loc 14 323 0
	cmpw 7,3,0
	beq- 7,.L2092
.LVL3908:
.LBB16209:
.LBB16210:
	.loc 14 375 0
	cmpwi 7,3,0
	ble- 7,.L2138
.LVL3909:
	.loc 14 387 0
	cmpw 7,9,3
	.loc 14 386 0
	stw 3,12(1)
	.loc 14 387 0
	ble- 7,.L2094
	.loc 14 388 0
	stw 3,8(1)
.L2094:
	.loc 14 392 0
	slwi 3,3,3
.LVL3910:
.LEHB76:
	bl _Znaj
.LVL3911:
	.loc 14 393 0
	lwz 0,8(1)
	.loc 14 392 0
	stw 3,20(1)
.LVL3912:
	.loc 14 393 0
	cmpwi 7,0,0
	ble- 7,.L2095
	.loc 4 3335 0
	addi 8,28,-8
.LBE16210:
.LBE16209:
.LBE16208:
.LBE16207:
.LBE16229:
.LBE16188:
.LBB16280:
.LBB16281:
	.loc 14 393 0
	li 9,0
	b .L2096
.LVL3913:
.L2139:
.LBE16281:
.LBE16280:
.LBB16284:
.LBB16230:
.LBB16219:
.LBB16217:
.LBB16215:
.LBB16213:
	lwz 3,20(1)
.LVL3914:
.L2096:
	.loc 14 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 14 393 0
	addi 9,9,1
.LVL3915:
	.loc 14 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 14 393 0
	lwz 0,8(1)
	cmpw 7,9,0
	blt+ 7,.L2139
.LVL3916:
.L2095:
	.loc 14 399 0
	mr 3,28
	bl _ZdaPv
.LVL3917:
.L2092:
.LBE16213:
.LBE16215:
.LBE16217:
.LBE16219:
.LBB16220:
.LBB16199:
	.loc 24 341 0
	addi 3,1,24
.LVL3918:
.LBE16199:
.LBE16220:
.LBB16221:
.LBB16222:
	.loc 24 371 0
	stw 29,40(1)
.LVL3919:
.LBE16222:
.LBE16221:
.LBB16223:
.LBB16200:
	.loc 24 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE76:
.LVL3920:
	.loc 24 342 0
	stw 21,24(1)
.LBE16200:
.LBE16223:
.LBE16230:
	.loc 4 3420 0
	addi 3,1,8
.LBB16231:
.LBB16224:
.LBB16201:
	.loc 24 343 0
	stw 29,32(1)
.LVL3921:
.LBE16201:
.LBE16224:
.LBE16231:
	.loc 4 3420 0
	mr 4,22
.LBB16232:
	.loc 4 5138 0
	lwz 9,4(30)
.LBE16232:
	.loc 4 3420 0
	lwz 5,4(9)
.LEHB77:
	bl _ZN6idDict3SetEPKcS1_
.LVL3922:
	.loc 4 3421 0
	mr 3,27
	li 4,0
	bl _ZNK15idPhysics_Actor9GetOriginEi
	li 4,2
	bl _ZNK6idVec38ToStringEi
	.loc 4 3421 0 is_stmt 0 discriminator 1
	mr 5,3
	mr 4,23
	addi 3,1,8
	bl _ZN6idDict3SetEPKcS1_
	.loc 4 3422 0 is_stmt 1
	mr 3,26
	addi 4,1,8
	li 5,0
	li 6,1
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	.loc 4 3423 0
	mr 3,25
	mr 4,24
	mr 5,30
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LEHE77:
	mr 30,3
.LVL3923:
.LBB16233:
.LBB16234:
.LBB16235:
	.loc 11 174 0
	addi 3,1,8
.LVL3924:
.LEHB78:
	bl _ZN6idDict5ClearEv
.LEHE78:
.LVL3925:
.LBB16236:
.LBB16237:
.LBB16238:
	.loc 24 130 0
	addi 3,1,24
.LVL3926:
.LEHB79:
	bl _ZN11idHashIndex4FreeEv
.LEHE79:
.LVL3927:
.LBE16238:
.LBE16237:
.LBE16236:
.LBB16239:
.LBB16240:
.LBB16241:
.LBB16242:
	.loc 14 193 0
	lwz 3,20(1)
	cmpwi 7,3,0
	beq- 7,.L2103
	.loc 14 194 0
	bl _ZdaPv
.L2103:
.LBE16242:
.LBE16241:
.LBE16240:
.LBE16239:
.LBE16235:
.LBE16234:
.LBE16233:
.LBE16284:
	.loc 4 3417 0
	cmpwi 7,30,0
.LBB16285:
.LBB16259:
.LBB16256:
.LBB16253:
.LBB16246:
.LBB16245:
.LBB16244:
.LBB16243:
	.loc 14 197 0
	stw 31,20(1)
	.loc 14 198 0
	stw 31,8(1)
	.loc 14 199 0
	stw 31,12(1)
.LBE16243:
.LBE16244:
.LBE16245:
.LBE16246:
.LBE16253:
.LBE16256:
.LBE16259:
.LBE16285:
	.loc 4 3417 0
	bne+ 7,.L2110
.LVL3928:
.L2091:
	.loc 4 3426 0
	beq- 3,.L2077
.LVL3929:
.LBB16286:
.LBB16287:
	.loc 16 340 0 discriminator 1
	lwz 9,0(20)
	mr 3,20
	lwz 0,0(9)
	mtctr 0
.LEHB80:
	bctrl
.LVL3930:
.LBE16287:
	.loc 4 5138 0 discriminator 1
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB16290:
.LBB16288:
.LBB16289:
	.loc 16 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L2077
	.loc 16 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L2077
.LBE16289:
.LBE16288:
.LBE16290:
.LBE16286:
	.loc 4 3426 0 is_stmt 1
	beq- 4,.L2077
.LVL3931:
.LBB16291:
.LBB16292:
	.loc 16 340 0 discriminator 4
	lwz 9,0(19)
	mr 3,19
.LVL3932:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL3933:
.LBE16292:
	.loc 4 5138 0 discriminator 4
	lis 9,_ZN17idSoulCubeMissile4TypeE@ha
	la 9,_ZN17idSoulCubeMissile4TypeE@l(9)
	lwz 0,56(3)
.LBB16295:
.LBB16293:
.LBB16294:
	.loc 16 311 0 discriminator 4
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L2111
	.loc 16 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	ble- 7,.L2077
.L2111:
.LBE16294:
.LBE16293:
.LBE16295:
.LBE16291:
	.loc 4 3427 0 is_stmt 1 discriminator 6
	mr 3,20
.LVL3934:
	bl _ZN8idPlayer9AddAIKillEv
	b .L2077
.LVL3935:
.L2133:
	.loc 4 3344 0
	mr 4,30
	addi 3,31,636
	bl _ZNK10idAnimator12GetJointNameE13jointHandle_t
	mr 4,30
	mr 29,3
	mr 3,31
	bl _ZN7idActor14GetDamageGroupEi
	lis 4,.LC240@ha
	mr 6,3
	lis 3,gameLocal@ha
	la 3,gameLocal@l(3)
	la 4,.LC240@l(4)
	mr 5,29
	crxor 6,6,6
	bl _ZNK11idGameLocal6PrintfEPKcz
	b .L2078
.LVL3936:
.L2138:
.LBB16296:
.LBB16260:
.LBB16225:
.LBB16218:
.LBB16216:
.LBB16214:
.LBB16211:
.LBB16212:
	.loc 14 194 0
	mr 3,28
.LVL3937:
	bl _ZdaPv
	.loc 14 197 0
	stw 31,20(1)
	.loc 14 198 0
	stw 31,8(1)
	.loc 14 199 0
	stw 31,12(1)
	b .L2092
.LVL3938:
.L2136:
.LBE16212:
.LBE16211:
.LBE16214:
.LBE16216:
.LBE16218:
.LBE16225:
.LBE16260:
.LBE16296:
.LBB16297:
.LBB16179:
.LBB16177:
.LBB16176:
	.loc 16 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L2120
.LBE16176:
.LBE16177:
.LBE16179:
.LBE16297:
	.loc 4 3377 0 discriminator 4
	mr 3,26
.LVL3939:
	mr 4,20
	bl _ZN11idGameLocal7AlertAIEP8idEntity
	b .L2120
.LVL3940:
.L2137:
	.loc 4 3397 0
	lis 4,.LC241@ha
	mr 3,31
	la 4,.LC241@l(4)
	li 5,1
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
	b .L2089
.LVL3941:
.L2135:
.LBB16298:
.LBB16170:
	.loc 7 636 0
	addi 9,9,132
.LVL3942:
	slwi 9,9,2
.LVL3943:
	add 9,26,9
	lwz 3,4(9)
.LBE16170:
.LBE16298:
	.loc 4 3361 0
	cmpwi 7,3,0
	beq- 7,.L2085
.LVL3944:
	.loc 4 3362 0
	li 4,1
	li 5,0
	bl _ZN8idEntity9StopSoundEib
.LVL3945:
.LBB16299:
.LBB16282:
	.loc 7 634 0
	lwz 0,2424(31)
	.loc 7 638 0
	li 3,0
	.loc 7 634 0
	rlwinm 9,0,0,20,31
.LVL3946:
	.loc 7 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,26,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L2140
.LVL3947:
.L2086:
.LBE16282:
.LBE16299:
	.loc 4 3363 0
	lwz 9,0(3)
	lwz 0,92(9)
	mtctr 0
	bctrl
	addis 9,26,0x25
	lwz 4,2004(9)
	li 5,100
	bl _ZN10idAnimator13ClearAllAnimsEii
	b .L2085
.LVL3948:
.L2121:
.LBB16300:
.LBB16154:
.LBB16153:
.LBB16152:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL3949:
	la 3,.LC7@l(3)
	b .L2080
.LVL3950:
.L2140:
.LBE16152:
.LBE16153:
.LBE16154:
.LBE16300:
.LBB16301:
.LBB16283:
	.loc 7 636 0
	addi 9,9,132
.LVL3951:
	slwi 9,9,2
.LVL3952:
	add 9,26,9
	lwz 3,4(9)
	b .L2086
.LVL3953:
.L2124:
.L2132:
	mr 31,3
.L2107:
.LVL3954:
.LBE16283:
.LBE16301:
.LBB16302:
.LBB16261:
.LBB16257:
.LBB16254:
.LBB16247:
.LBB16248:
.LBB16249:
	.loc 14 181 0
	addi 3,1,8
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE80:
.LVL3955:
.L2125:
	mr 31,3
.LVL3956:
.LBE16249:
.LBE16248:
.LBE16247:
.LBE16254:
.LBE16257:
.LBE16261:
.LBB16262:
.LBB16226:
.LBB16227:
.LBB16228:
	.loc 24 130 0
	addi 3,1,24
.LVL3957:
	bl _ZN11idHashIndex4FreeEv
.LVL3958:
	b .L2107
.LVL3959:
.L2123:
	mr 31,3
.LVL3960:
.LBE16228:
.LBE16227:
.LBE16226:
.LBE16262:
.LBB16263:
.LBB16264:
.LBB16265:
	.loc 11 174 0
	addi 3,1,8
.LEHB81:
	bl _ZN6idDict5ClearEv
.LEHE81:
.LVL3961:
.LBB16266:
.LBB16267:
.LBB16268:
	.loc 24 130 0
	addi 3,1,24
.LVL3962:
.LEHB82:
	bl _ZN11idHashIndex4FreeEv
.LEHE82:
.LVL3963:
.LBE16268:
.LBE16267:
.LBE16266:
.LBB16269:
.LBB16270:
.LBB16271:
.LBB16272:
	.loc 14 193 0
	lwz 3,20(1)
	cmpwi 7,3,0
	beq- 7,.L2119
	.loc 14 194 0
	bl _ZdaPv
.L2119:
.LBE16272:
.LBE16271:
.LBE16270:
.LBE16269:
.LBB16273:
.LBB16274:
.LBB16275:
	.loc 14 181 0
	mr 3,31
.LEHB83:
	bl _Unwind_Resume
.LEHE83:
.LVL3964:
.L2128:
.L2117:
	addi 3,1,8
	bl _ZN6idListI10idKeyValueE5ClearEv
	bl _ZSt9terminatev
.LVL3965:
.L2129:
.LBE16275:
.LBE16274:
.LBE16273:
.LBB16276:
.LBB16277:
.LBB16278:
	.loc 24 130 0
	addi 3,1,24
.LVL3966:
	bl _ZN11idHashIndex4FreeEv
.LVL3967:
	b .L2117
.LVL3968:
.L2127:
	mr 31,3
.LVL3969:
.LBE16278:
.LBE16277:
.LBE16276:
.LBE16265:
.LBE16264:
.LBE16263:
.LBB16279:
.LBB16258:
.LBB16255:
.LBB16250:
.LBB16251:
.LBB16252:
	addi 3,1,24
.LVL3970:
	bl _ZN11idHashIndex4FreeEv
.LVL3971:
	b .L2107
.LVL3972:
.L2126:
	b .L2132
.LBE16252:
.LBE16251:
.LBE16250:
.LBE16255:
.LBE16258:
.LBE16279:
.LBE16302:
.LBE16303:
	.cfi_endproc
.LFE2937:
	.section	.gcc_except_table
.LLSDA2937:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2937-.LLSDACSB2937
.LLSDACSB2937:
	.uleb128 .LEHB74-.LFB2937
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB2937
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L2124-.LFB2937
	.uleb128 0
	.uleb128 .LEHB76-.LFB2937
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L2125-.LFB2937
	.uleb128 0
	.uleb128 .LEHB77-.LFB2937
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L2123-.LFB2937
	.uleb128 0
	.uleb128 .LEHB78-.LFB2937
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L2127-.LFB2937
	.uleb128 0
	.uleb128 .LEHB79-.LFB2937
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L2126-.LFB2937
	.uleb128 0
	.uleb128 .LEHB80-.LFB2937
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB2937
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L2129-.LFB2937
	.uleb128 0
	.uleb128 .LEHB82-.LFB2937
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L2128-.LFB2937
	.uleb128 0
	.uleb128 .LEHB83-.LFB2937
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
.LLSDACSE2937:
	.section	".text"
	.size	_ZN4idAI6KilledEP8idEntityS1_iRK6idVec3i, .-_ZN4idAI6KilledEP8idEntityS1_iRK6idVec3i
	.section	.text._ZN6idListI6idVec3E5ClearEv,"axG",@progbits,_ZN6idListI6idVec3E5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI6idVec3E5ClearEv
	.type	_ZN6idListI6idVec3E5ClearEv, @function
_ZN6idListI6idVec3E5ClearEv:
.LFB3301:
	.loc 14 192 0
	.cfi_startproc
.LVL3973:
	mflr 0
	stwu 1,-16(1)
.LCFI422:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 14 193 0
	lwz 3,12(3)
.LVL3974:
	cmpwi 7,3,0
	beq- 7,.L2142
	.cfi_offset 65, 4
	.loc 14 194 0 discriminator 1
	bl _ZdaPv
.L2142:
	.loc 14 197 0
	li 0,0
	stw 0,12(31)
	.loc 14 198 0
	stw 0,0(31)
	.loc 14 199 0
	stw 0,4(31)
	.loc 14 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3975:
	mtlr 0
	addi 1,1,16
.LCFI423:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3301:
	.size	_ZN6idListI6idVec3E5ClearEv, .-_ZN6idListI6idVec3E5ClearEv
	.section	.text._ZN6idListI13jointHandle_tE5ClearEv,"axG",@progbits,_ZN6idListI13jointHandle_tE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI13jointHandle_tE5ClearEv
	.type	_ZN6idListI13jointHandle_tE5ClearEv, @function
_ZN6idListI13jointHandle_tE5ClearEv:
.LFB3322:
	.loc 14 192 0
	.cfi_startproc
.LVL3976:
	mflr 0
	stwu 1,-16(1)
.LCFI424:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 14 193 0
	lwz 3,12(3)
.LVL3977:
	cmpwi 7,3,0
	beq- 7,.L2144
	.cfi_offset 65, 4
	.loc 14 194 0 discriminator 1
	bl _ZdaPv
.L2144:
	.loc 14 197 0
	li 0,0
	stw 0,12(31)
	.loc 14 198 0
	stw 0,0(31)
	.loc 14 199 0
	stw 0,4(31)
	.loc 14 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3978:
	mtlr 0
	addi 1,1,16
.LCFI425:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3322:
	.size	_ZN6idListI13jointHandle_tE5ClearEv, .-_ZN6idListI13jointHandle_tE5ClearEv
	.section	.text._ZN6idListI8idAnglesE5ClearEv,"axG",@progbits,_ZN6idListI8idAnglesE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI8idAnglesE5ClearEv
	.type	_ZN6idListI8idAnglesE5ClearEv, @function
_ZN6idListI8idAnglesE5ClearEv:
.LFB3323:
	.loc 14 192 0
	.cfi_startproc
.LVL3979:
	mflr 0
	stwu 1,-16(1)
.LCFI426:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 14 193 0
	lwz 3,12(3)
.LVL3980:
	cmpwi 7,3,0
	beq- 7,.L2146
	.cfi_offset 65, 4
	.loc 14 194 0 discriminator 1
	bl _ZdaPv
.L2146:
	.loc 14 197 0
	li 0,0
	stw 0,12(31)
	.loc 14 198 0
	stw 0,0(31)
	.loc 14 199 0
	stw 0,4(31)
	.loc 14 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3981:
	mtlr 0
	addi 1,1,16
.LCFI427:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3323:
	.size	_ZN6idListI8idAnglesE5ClearEv, .-_ZN6idListI8idAnglesE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN4idAID2Ev
	.type	_ZN4idAID2Ev, @function
_ZN4idAID2Ev:
.LFB2855:
	.loc 4 410 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2855
.LVL3982:
	mflr 0
	stwu 1,-16(1)
.LCFI428:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB16349:
	lis 9,_ZTV4idAI+8@ha
.LBE16349:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB16443:
	la 0,_ZTV4idAI+8@l(9)
	.cfi_offset 65, 4
.LBE16443:
	stw 30,8(1)
.LBB16444:
	.loc 4 410 0
	stw 0,0(3)
	.loc 4 411 0
	lwz 30,4588(3)
	.cfi_offset 30, -8
	cmpwi 7,30,0
	beq- 7,.L2148
	.loc 4 411 0 is_stmt 0 discriminator 1
	mr 3,30
.LVL3983:
.LEHB84:
	bl _ZN11idClipModelD1Ev
	mr 3,30
	bl _ZdlPv
.L2148:
	.loc 4 412 0 is_stmt 1
	mr 3,31
	bl _ZN8idEntity23DeconstructScriptObjectEv
	.loc 4 413 0
	addi 3,31,144
	bl _ZN14idScriptObject4FreeEv
	.loc 4 414 0
	lwz 4,5072(31)
	cmpwi 7,4,-1
	beq- 7,.L2149
	.loc 4 415 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
.LEHE84:
	.loc 4 416 0
	li 0,-1
	stw 0,5072(31)
.L2149:
.LVL3984:
.LBB16350:
.LBB16351:
.LBB16352:
.LBB16353:
	.loc 14 193 0
	lwz 3,4860(31)
	cmpwi 7,3,0
	beq- 7,.L2150
	.loc 14 194 0
	bl _ZdaPv
.L2150:
.LBE16353:
.LBE16352:
.LBE16351:
.LBE16350:
.LBB16360:
.LBB16361:
.LBB16362:
.LBB16363:
	.loc 14 193 0
	lwz 3,4812(31)
.LBE16363:
.LBE16362:
.LBE16361:
.LBE16360:
.LBB16376:
.LBB16358:
.LBB16356:
.LBB16354:
	.loc 14 197 0
	li 0,0
	stw 0,4860(31)
.LBE16354:
.LBE16356:
.LBE16358:
.LBE16376:
.LBB16377:
.LBB16372:
.LBB16368:
.LBB16364:
	.loc 14 193 0
	cmpwi 7,3,0
.LBE16364:
.LBE16368:
.LBE16372:
.LBE16377:
.LBB16378:
.LBB16359:
.LBB16357:
.LBB16355:
	.loc 14 198 0
	stw 0,4848(31)
	.loc 14 199 0
	stw 0,4852(31)
.LVL3985:
.LBE16355:
.LBE16357:
.LBE16359:
.LBE16378:
.LBB16379:
.LBB16373:
.LBB16369:
.LBB16365:
	.loc 14 193 0
	beq- 7,.L2152
	.loc 14 194 0
	bl _ZdaPv
.L2152:
.LBE16365:
.LBE16369:
.LBE16373:
.LBE16379:
.LBB16380:
.LBB16381:
.LBB16382:
.LBB16383:
	.loc 14 193 0
	lwz 3,4796(31)
.LBE16383:
.LBE16382:
.LBE16381:
.LBE16380:
.LBB16393:
.LBB16374:
.LBB16370:
.LBB16366:
	.loc 14 197 0
	li 0,0
	stw 0,4812(31)
.LBE16366:
.LBE16370:
.LBE16374:
.LBE16393:
.LBB16394:
.LBB16390:
.LBB16387:
.LBB16384:
	.loc 14 193 0
	cmpwi 7,3,0
.LBE16384:
.LBE16387:
.LBE16390:
.LBE16394:
.LBB16395:
.LBB16375:
.LBB16371:
.LBB16367:
	.loc 14 198 0
	stw 0,4800(31)
	.loc 14 199 0
	stw 0,4804(31)
.LVL3986:
.LBE16367:
.LBE16371:
.LBE16375:
.LBE16395:
.LBB16396:
.LBB16391:
.LBB16388:
.LBB16385:
	.loc 14 193 0
	beq- 7,.L2154
	.loc 14 194 0
	bl _ZdaPv
.L2154:
	.loc 14 197 0
	li 0,0
.LBE16385:
.LBE16388:
.LBE16391:
.LBE16396:
.LBB16397:
.LBB16398:
.LBB16399:
	.loc 15 501 0
	addi 3,31,4628
.LBE16399:
.LBE16398:
.LBE16397:
.LBB16402:
.LBB16392:
.LBB16389:
.LBB16386:
	.loc 14 197 0
	stw 0,4796(31)
	.loc 14 198 0
	stw 0,4784(31)
	.loc 14 199 0
	stw 0,4788(31)
.LVL3987:
.LEHB85:
.LBE16386:
.LBE16389:
.LBE16392:
.LBE16402:
.LBB16403:
.LBB16401:
.LBB16400:
	.loc 15 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE85:
.LVL3988:
.LBE16400:
.LBE16401:
.LBE16403:
.LBB16404:
.LBB16405:
.LBB16406:
.LBB16407:
	.loc 14 193 0 discriminator 4
	lwz 3,4580(31)
	cmpwi 7,3,0
	beq- 7,.L2157
	.loc 14 194 0
	bl _ZdaPv
.L2157:
	.loc 14 197 0
	li 0,0
.LBE16407:
.LBE16406:
.LBE16405:
.LBE16404:
.LBB16414:
.LBB16415:
.LBB16416:
	.file 25 "d:/Data/Nintendo/DoomGX/src/game/ai/../physics/Physics_Monster.h"
	.loc 25 60 0
	lis 9,_ZTV17idPhysics_Monster+8@ha
.LBE16416:
.LBE16415:
.LBE16414:
.LBB16421:
.LBB16412:
.LBB16410:
.LBB16408:
	.loc 14 197 0
	stw 0,4580(31)
.LBE16408:
.LBE16410:
.LBE16412:
.LBE16421:
.LBB16422:
.LBB16419:
.LBB16417:
	.loc 25 60 0
	mr 3,31
.LBE16417:
.LBE16419:
.LBE16422:
.LBB16423:
.LBB16413:
.LBB16411:
.LBB16409:
	.loc 14 198 0
	stw 0,4568(31)
	.loc 14 199 0
	stw 0,4572(31)
.LVL3989:
.LBE16409:
.LBE16411:
.LBE16413:
.LBE16423:
.LBB16424:
.LBB16420:
.LBB16418:
	.loc 25 60 0
	la 0,_ZTV17idPhysics_Monster+8@l(9)
	stwu 0,4216(3)
.LEHB86:
	bl _ZN15idPhysics_ActorD2Ev
.LEHE86:
.LBE16418:
.LBE16420:
.LBE16424:
	.loc 4 410 0 discriminator 6
	mr 3,31
.LEHB87:
	bl _ZN7idActorD2Ev
.LEHE87:
.LBE16444:
	.loc 4 418 0 discriminator 6
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL3990:
	addi 1,1,16
	.cfi_remember_state
.LCFI429:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3991:
.L2170:
.LCFI430:
	.cfi_restore_state
	mr 30,3
.LVL3992:
.LBB16445:
.LBB16425:
.LBB16426:
.LBB16427:
	.loc 14 181 0
	addi 3,31,4848
	bl _ZN6idListI17particleEmitter_sE5ClearEv
.LVL3993:
.LBE16427:
.LBE16426:
.LBE16425:
.LBB16428:
.LBB16429:
.LBB16430:
	addi 3,31,4800
	bl _ZN6idListI8idAnglesE5ClearEv
.LVL3994:
.LBE16430:
.LBE16429:
.LBE16428:
.LBB16431:
.LBB16432:
.LBB16433:
	addi 3,31,4784
	bl _ZN6idListI13jointHandle_tE5ClearEv
.LVL3995:
.LBE16433:
.LBE16432:
.LBE16431:
.LBB16434:
.LBB16435:
.LBB16436:
	.loc 15 501 0
	addi 3,31,4628
	bl _ZN5idStr8FreeDataEv
.LVL3996:
.L2166:
.LBE16436:
.LBE16435:
.LBE16434:
.LBB16437:
.LBB16438:
.LBB16439:
	.loc 14 181 0
	addi 3,31,4568
	bl _ZN6idListI6idVec3E5ClearEv
.LVL3997:
.LBE16439:
.LBE16438:
.LBE16437:
.LBB16440:
.LBB16441:
.LBB16442:
	.loc 25 60 0
	lis 9,_ZTV17idPhysics_Monster+8@ha
	mr 3,31
	la 0,_ZTV17idPhysics_Monster+8@l(9)
	stwu 0,4216(3)
	bl _ZN15idPhysics_ActorD2Ev
.LVL3998:
.L2169:
.LBE16442:
.LBE16441:
.LBE16440:
	.loc 4 410 0
	mr 3,31
	bl _ZN7idActorD2Ev
	mr 3,30
.LEHB88:
	bl _Unwind_Resume
.LEHE88:
.LVL3999:
.L2172:
	mr 30,3
	b .L2169
.LVL4000:
.L2171:
	mr 30,3
	b .L2166
.LBE16445:
	.cfi_endproc
.LFE2855:
	.section	.gcc_except_table
.LLSDA2855:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2855-.LLSDACSB2855
.LLSDACSB2855:
	.uleb128 .LEHB84-.LFB2855
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L2170-.LFB2855
	.uleb128 0
	.uleb128 .LEHB85-.LFB2855
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L2171-.LFB2855
	.uleb128 0
	.uleb128 .LEHB86-.LFB2855
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L2172-.LFB2855
	.uleb128 0
	.uleb128 .LEHB87-.LFB2855
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB2855
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
.LLSDACSE2855:
	.section	".text"
	.size	_ZN4idAID2Ev, .-_ZN4idAID2Ev
	.align 2
	.globl _ZN4idAID0Ev
	.type	_ZN4idAID0Ev, @function
_ZN4idAID0Ev:
.LFB2857:
	.loc 4 410 0
	.cfi_startproc
.LVL4001:
	stwu 1,-16(1)
.LCFI431:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 4 418 0
	.cfi_offset 65, 4
	bl _ZN4idAID1Ev
.LVL4002:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL4003:
	mtlr 0
	addi 1,1,16
.LCFI432:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2857:
	.size	_ZN4idAID0Ev, .-_ZN4idAID0Ev
	.align 2
	.globl _ZN4idAIC2Ev
	.type	_ZN4idAIC2Ev, @function
_ZN4idAIC2Ev:
.LFB2852:
	.loc 4 300 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2852
.LVL4004:
	mflr 0
	stwu 1,-24(1)
.LCFI433:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LEHB89:
.LBB16568:
	.loc 4 300 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl _ZN7idActorC2Ev
.LEHE89:
.LVL4005:
	lis 9,_ZTV4idAI+8@ha
	addi 3,31,3952
	la 0,_ZTV4idAI+8@l(9)
	stw 0,0(31)
.LEHB90:
	bl _ZN11idMoveStateC1Ev
	.loc 4 300 0 is_stmt 0 discriminator 1
	addi 3,31,4060
	bl _ZN11idMoveStateC1Ev
	.loc 4 300 0 discriminator 2
	addi 30,31,4216
	mr 3,30
	bl _ZN17idPhysics_MonsterC1Ev
.LEHE90:
.LVL4006:
.LBB16569:
.LBB16570:
.LBB16571:
.LBB16572:
	.loc 14 197 0 is_stmt 1 discriminator 3
	li 0,0
.LBE16572:
.LBE16571:
	.loc 14 159 0 discriminator 3
	li 9,16
.LBE16570:
.LBE16569:
.LBB16583:
.LBB16584:
.LBB16585:
	.loc 15 358 0 discriminator 3
	addi 11,31,4640
	.loc 15 357 0 discriminator 3
	li 10,20
.LBE16585:
.LBE16584:
.LBE16583:
.LBB16588:
.LBB16579:
	.loc 14 159 0 discriminator 3
	stw 9,4576(31)
.LVL4007:
.LBE16579:
.LBE16588:
	.loc 4 302 0 discriminator 3
	lis 3,.LC246@ha
.LBB16589:
.LBB16580:
.LBB16576:
.LBB16573:
	.loc 14 197 0 discriminator 3
	stw 0,4580(31)
.LBE16573:
.LBE16576:
.LBE16580:
.LBE16589:
	.loc 4 302 0 discriminator 3
	la 3,.LC246@l(3)
.LBB16590:
.LBB16581:
.LBB16577:
.LBB16574:
	.loc 14 198 0 discriminator 3
	stw 0,4568(31)
.LBE16574:
.LBE16577:
.LBE16581:
.LBE16590:
	.loc 4 302 0 discriminator 3
	li 4,5252
.LBB16591:
.LBB16582:
.LBB16578:
.LBB16575:
	.loc 14 199 0 discriminator 3
	stw 0,4572(31)
.LVL4008:
.LBE16575:
.LBE16578:
.LBE16582:
.LBE16591:
.LBB16592:
.LBB16593:
	.loc 7 590 0 discriminator 3
	stw 0,4624(31)
.LVL4009:
.LBE16593:
.LBE16592:
.LBB16594:
.LBB16587:
.LBB16586:
	.loc 15 356 0 discriminator 3
	stw 0,4628(31)
	.loc 15 357 0 discriminator 3
	stw 10,4636(31)
	.loc 15 358 0 discriminator 3
	stw 11,4632(31)
	.loc 15 359 0 discriminator 3
	stb 0,4640(31)
.LVL4010:
.LBE16586:
.LBE16587:
.LBE16594:
.LBB16595:
.LBB16596:
	.loc 7 590 0 discriminator 3
	stw 0,4680(31)
.LVL4011:
.LBE16596:
.LBE16595:
.LBB16597:
.LBB16598:
	stw 0,4696(31)
.LVL4012:
.LBE16598:
.LBE16597:
.LBB16599:
.LBB16600:
	.loc 14 159 0 discriminator 3
	stw 9,4792(31)
.LVL4013:
.LBB16601:
.LBB16602:
	.loc 14 197 0 discriminator 3
	stw 0,4796(31)
	.loc 14 198 0 discriminator 3
	stw 0,4784(31)
	.loc 14 199 0 discriminator 3
	stw 0,4788(31)
.LVL4014:
.LBE16602:
.LBE16601:
.LBE16600:
.LBE16599:
.LBB16603:
.LBB16604:
	.loc 14 159 0 discriminator 3
	stw 9,4808(31)
.LVL4015:
.LBB16605:
.LBB16606:
	.loc 14 197 0 discriminator 3
	stw 0,4812(31)
	.loc 14 198 0 discriminator 3
	stw 0,4800(31)
	.loc 14 199 0 discriminator 3
	stw 0,4804(31)
.LVL4016:
.LBE16606:
.LBE16605:
.LBE16604:
.LBE16603:
.LBB16607:
.LBB16608:
	.loc 14 159 0 discriminator 3
	stw 9,4856(31)
.LVL4017:
.LBB16609:
.LBB16610:
	.loc 14 197 0 discriminator 3
	stw 0,4860(31)
	.loc 14 198 0 discriminator 3
	stw 0,4848(31)
	.loc 14 199 0 discriminator 3
	stw 0,4852(31)
.LVL4018:
.LBE16610:
.LBE16609:
.LBE16608:
.LBE16607:
.LBB16611:
.LBB16612:
	.loc 7 590 0 discriminator 3
	stw 0,5120(31)
.LVL4019:
.LBE16612:
.LBE16611:
.LBB16613:
.LBB16614:
	.loc 18 210 0 discriminator 3
	stw 0,5176(31)
.LVL4020:
.LBE16614:
.LBE16613:
.LBB16615:
.LBB16616:
	stw 0,5180(31)
.LVL4021:
.LBE16616:
.LBE16615:
.LBB16617:
.LBB16618:
	stw 0,5184(31)
.LVL4022:
.LBE16618:
.LBE16617:
.LBB16619:
.LBB16620:
	stw 0,5188(31)
.LVL4023:
.LBE16620:
.LBE16619:
.LBB16621:
.LBB16622:
	stw 0,5192(31)
.LVL4024:
.LBE16622:
.LBE16621:
.LBB16623:
.LBB16624:
	stw 0,5196(31)
.LVL4025:
.LBE16624:
.LBE16623:
.LBB16625:
.LBB16626:
	stw 0,5200(31)
.LVL4026:
.LBE16626:
.LBE16625:
.LBB16627:
.LBB16628:
	stw 0,5204(31)
.LVL4027:
.LBE16628:
.LBE16627:
.LBB16629:
.LBB16630:
	stw 0,5208(31)
.LVL4028:
.LBE16630:
.LBE16629:
.LBB16631:
.LBB16632:
	stw 0,5212(31)
.LVL4029:
.LBE16632:
.LBE16631:
.LBB16633:
.LBB16634:
	stw 0,5216(31)
.LVL4030:
.LBE16634:
.LBE16633:
.LBB16635:
.LBB16636:
	stw 0,5220(31)
.LVL4031:
.LBE16636:
.LBE16635:
.LBB16637:
.LBB16638:
	stw 0,5224(31)
.LVL4032:
.LBE16638:
.LBE16637:
.LBB16639:
.LBB16640:
	stw 0,5228(31)
.LVL4033:
.LBE16640:
.LBE16639:
.LBB16641:
.LBB16642:
	stw 0,5232(31)
.LVL4034:
.LBE16642:
.LBE16641:
.LBB16643:
.LBB16644:
	stw 0,5236(31)
.LVL4035:
.LBE16644:
.LBE16643:
.LBB16645:
.LBB16646:
	stw 0,5240(31)
.LVL4036:
.LBE16646:
.LBE16645:
.LBB16647:
.LBB16648:
	stw 0,5244(31)
.LVL4037:
.LBE16648:
.LBE16647:
.LBB16649:
.LBB16650:
	stw 0,5248(31)
.LEHB91:
.LBE16650:
.LBE16649:
	.loc 4 302 0 discriminator 3
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE91:
	.loc 4 306 0
	lis 8,0x40
	.loc 4 311 0
	li 10,750
	.loc 4 306 0
	ori 8,8,2
	.loc 4 319 0
	lis 9,.LC0@ha
	.loc 4 306 0
	stw 8,3948(31)
	.loc 4 308 0
	lis 8,.LC95@ha
	.loc 4 311 0
	stw 10,4180(31)
	.loc 4 310 0
	li 0,0
	.loc 4 312 0
	stw 10,4184(31)
	.loc 4 313 0
	lis 10,.LC91@ha
	.loc 4 319 0
	lwz 11,.LC0@l(9)
	.loc 4 305 0
	li 9,0
	.loc 4 308 0
	lwz 8,.LC95@l(8)
	.loc 4 313 0
	lwz 10,.LC91@l(10)
	.loc 4 308 0
	stw 8,4168(31)
	.loc 4 313 0
	stw 10,4196(31)
.LBB16651:
.LBB16652:
	.loc 6 424 0
	lis 10,vec3_origin@ha
.LBE16652:
.LBE16651:
	.loc 4 319 0
	stw 11,4516(31)
	.loc 4 305 0
	stw 9,3944(31)
	.loc 4 309 0
	stb 9,4172(31)
	.loc 4 310 0
	stw 0,4176(31)
	.loc 4 314 0
	stw 0,4200(31)
	.loc 4 315 0
	stw 0,4204(31)
	.loc 4 316 0
	stw 0,4208(31)
	.loc 4 317 0
	stw 0,4212(31)
	.loc 4 318 0
	stw 9,4512(31)
	.loc 4 320 0
	stw 0,4520(31)
	.loc 4 321 0
	stw 0,4524(31)
	.loc 4 322 0
	stw 0,4528(31)
	.loc 4 323 0
	stw 0,4532(31)
	.loc 4 324 0
	stw 0,4536(31)
	.loc 4 325 0
	stw 0,4540(31)
	.loc 4 326 0
	stb 9,4544(31)
	.loc 4 327 0
	stb 9,4545(31)
	.loc 4 328 0
	stw 0,4496(31)
	.loc 4 329 0
	stw 0,4500(31)
	.loc 4 330 0
	stw 0,4504(31)
	.loc 4 331 0
	stw 0,4508(31)
	.loc 4 332 0
	stb 9,4548(31)
	.loc 4 333 0
	stw 9,4552(31)
	.loc 4 334 0
	stw 9,4556(31)
	.loc 4 335 0
	stw 0,4560(31)
	.loc 4 336 0
	stw 11,4564(31)
.LBB16657:
.LBB16653:
	.loc 6 424 0
	la 11,vec3_origin@l(10)
.LBE16653:
.LBE16657:
.LBB16658:
.LBB16659:
	.loc 14 193 0
	lwz 3,4860(31)
.LBE16659:
.LBE16658:
.LBB16665:
.LBB16654:
	.loc 6 424 0
	lwz 8,vec3_origin@l(10)
.LBE16654:
.LBE16665:
.LBB16666:
.LBB16660:
	.loc 14 193 0
	cmpwi 7,3,0
.LBE16660:
.LBE16666:
.LBB16667:
.LBB16655:
	.loc 6 425 0
	lwz 10,4(11)
	.loc 6 426 0
	lwz 11,8(11)
.LBE16655:
.LBE16667:
	.loc 4 337 0
	stw 9,4584(31)
.LVL4038:
.LBB16668:
.LBB16669:
	.loc 7 606 0
	stw 9,4624(31)
.LBE16669:
.LBE16668:
	.loc 4 339 0
	stw 9,4588(31)
	.loc 4 340 0
	stw 0,4592(31)
.LVL4039:
.LBB16670:
.LBB16656:
	.loc 6 424 0
	stw 8,4600(31)
	.loc 6 425 0
	stw 10,4604(31)
	.loc 6 426 0
	stw 11,4608(31)
.LVL4040:
.LBE16656:
.LBE16670:
.LBB16671:
.LBB16672:
	.loc 6 424 0
	stw 8,4612(31)
	.loc 6 425 0
	stw 10,4616(31)
	.loc 6 426 0
	stw 11,4620(31)
.LBE16672:
.LBE16671:
	.loc 4 343 0
	stw 0,4596(31)
	.loc 4 344 0
	stw 9,4660(31)
	.loc 4 345 0
	stw 9,4664(31)
	.loc 4 346 0
	stw 9,4668(31)
	.loc 4 347 0
	stw 9,4672(31)
	.loc 4 348 0
	stw 9,4676(31)
.LVL4041:
.LBB16673:
.LBB16674:
	.loc 7 606 0
	stw 9,4680(31)
.LVL4042:
.LBE16674:
.LBE16673:
.LBB16675:
.LBB16661:
	.loc 14 193 0
	beq- 7,.L2176
	.loc 14 194 0
	bl _ZdaPv
.L2176:
	.loc 14 197 0
	li 30,0
.LBE16661:
.LBE16675:
	.loc 4 352 0
	li 29,1
.LBB16676:
.LBB16662:
	.loc 14 197 0
	stw 30,4860(31)
.LBE16662:
.LBE16676:
	.loc 4 356 0
	addi 3,31,4864
.LBB16677:
.LBB16663:
	.loc 14 198 0
	stw 30,4848(31)
.LBE16663:
.LBE16677:
	.loc 4 356 0
	li 4,0
.LBB16678:
.LBB16664:
	.loc 14 199 0
	stw 30,4852(31)
.LBE16664:
.LBE16678:
	.loc 4 356 0
	li 5,208
	.loc 4 352 0
	stb 29,4844(31)
	.loc 4 353 0
	stb 30,4845(31)
	.loc 4 355 0
	stb 30,5172(31)
	.loc 4 356 0
	bl memset
	.loc 4 366 0
	lwz 11,192(31)
.LBB16679:
.LBB16680:
	.loc 6 416 0
	li 0,0
.LBE16680:
.LBE16679:
	.loc 4 357 0
	li 9,-1
	.loc 4 366 0
	rlwimi 11,30,23,8,8
.LBB16682:
.LBB16683:
	.loc 7 606 0
	stw 30,5120(31)
.LBE16683:
.LBE16682:
.LBB16684:
.LBB16681:
	.loc 6 416 0
	stw 0,5132(31)
	stw 0,5128(31)
	stw 0,5124(31)
.LBE16681:
.LBE16684:
.LBB16685:
.LBB16686:
	stw 0,5144(31)
	stw 0,5140(31)
	stw 0,5136(31)
.LBE16686:
.LBE16685:
.LBB16687:
.LBB16688:
	stw 0,5156(31)
	stw 0,5152(31)
	stw 0,5148(31)
.LBE16688:
.LBE16687:
.LBB16689:
.LBB16690:
	stw 0,5168(31)
	stw 0,5164(31)
	stw 0,5160(31)
.LBE16690:
.LBE16689:
	.loc 4 364 0
	stw 0,4836(31)
	.loc 4 365 0
	stw 30,4840(31)
	.loc 4 367 0
	stw 0,4192(31)
	.loc 4 368 0
	stw 0,4188(31)
	.loc 4 370 0
	stw 30,4684(31)
	.loc 4 371 0
	stw 30,4688(31)
	.loc 4 373 0
	stb 29,3921(31)
	.loc 4 374 0
	stb 29,3920(31)
	.loc 4 375 0
	stb 29,4692(31)
.LBB16691:
.LBB16692:
	.loc 7 606 0
	stw 30,4696(31)
.LBE16692:
.LBE16691:
	.loc 4 377 0
	stw 30,4712(31)
	.loc 4 378 0
	stw 30,4716(31)
	.loc 4 379 0
	stw 30,4720(31)
.LBB16693:
.LBB16694:
	.loc 6 416 0
	stw 0,4708(31)
	stw 0,4704(31)
	stw 0,4700(31)
.LBE16694:
.LBE16693:
.LBB16695:
.LBB16696:
	.loc 12 127 0
	stw 0,4732(31)
.LBE16696:
.LBE16695:
	.loc 4 357 0
	stw 9,5072(31)
.LVL4043:
	.loc 4 366 0
	stw 11,192(31)
.LBB16698:
.LBB16697:
	.loc 12 127 0
	stw 0,4728(31)
	stw 0,4724(31)
.LVL4044:
.LBE16697:
.LBE16698:
.LBB16699:
.LBB16700:
	stw 0,4744(31)
	stw 0,4740(31)
	stw 0,4736(31)
.LVL4045:
.LBE16700:
.LBE16699:
.LBB16701:
.LBB16702:
	stw 0,4756(31)
	stw 0,4752(31)
	stw 0,4748(31)
.LVL4046:
.LBE16702:
.LBE16701:
.LBB16703:
.LBB16704:
	stw 0,4768(31)
	stw 0,4764(31)
	stw 0,4760(31)
.LVL4047:
.LBE16704:
.LBE16703:
.LBB16705:
.LBB16706:
	stw 0,4780(31)
	stw 0,4776(31)
	stw 0,4772(31)
.LVL4048:
.LBE16706:
.LBE16705:
.LBB16707:
.LBB16708:
	stw 0,5096(31)
	stw 0,5092(31)
	stw 0,5088(31)
.LVL4049:
.LBE16708:
.LBE16707:
.LBB16709:
.LBB16710:
	stw 0,5108(31)
	stw 0,5104(31)
	stw 0,5100(31)
.LBE16710:
.LBE16709:
	.loc 4 390 0
	stw 30,5080(31)
	.loc 4 391 0
	stw 30,5084(31)
	.loc 4 392 0
	stw 9,5076(31)
	.loc 4 394 0
	stw 9,5112(31)
	.loc 4 395 0
	stw 9,5116(31)
	.loc 4 396 0
	stw 9,4492(31)
	.loc 4 398 0
	stw 0,4816(31)
	.loc 4 399 0
	stw 0,4820(31)
	.loc 4 400 0
	stw 0,4824(31)
	.loc 4 401 0
	stw 0,4828(31)
	.loc 4 402 0
	stw 30,4832(31)
.LBE16568:
	.loc 4 403 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL4050:
	addi 1,1,24
	.cfi_remember_state
.LCFI434:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL4051:
.L2185:
.LCFI435:
	.cfi_restore_state
	mr 30,3
.L2184:
.LBB16729:
	.loc 4 300 0
	mr 3,31
	bl _ZN7idActorD2Ev
	mr 3,30
.LEHB92:
	bl _Unwind_Resume
.LEHE92:
.LVL4052:
.L2186:
	mr 29,3
.LVL4053:
.LBB16711:
.LBB16712:
.LBB16713:
	.loc 14 181 0
	addi 3,31,4848
	bl _ZN6idListI17particleEmitter_sE5ClearEv
.LVL4054:
.LBE16713:
.LBE16712:
.LBE16711:
.LBB16714:
.LBB16715:
.LBB16716:
	addi 3,31,4800
	bl _ZN6idListI8idAnglesE5ClearEv
.LVL4055:
.LBE16716:
.LBE16715:
.LBE16714:
.LBB16717:
.LBB16718:
.LBB16719:
	addi 3,31,4784
	bl _ZN6idListI13jointHandle_tE5ClearEv
.LVL4056:
.LBE16719:
.LBE16718:
.LBE16717:
.LBB16720:
.LBB16721:
.LBB16722:
	.loc 15 501 0
	addi 3,31,4628
	bl _ZN5idStr8FreeDataEv
.LVL4057:
.LBE16722:
.LBE16721:
.LBE16720:
.LBB16723:
.LBB16724:
.LBB16725:
	.loc 14 181 0
	addi 3,31,4568
	bl _ZN6idListI6idVec3E5ClearEv
.LVL4058:
.LBE16725:
.LBE16724:
.LBE16723:
.LBB16726:
.LBB16727:
.LBB16728:
	.loc 25 60 0
	lis 9,_ZTV17idPhysics_Monster+8@ha
	la 0,_ZTV17idPhysics_Monster+8@l(9)
	mr 3,30
	stw 0,4216(31)
	mr 30,29
	bl _ZN15idPhysics_ActorD2Ev
	b .L2184
.LBE16728:
.LBE16727:
.LBE16726:
.LBE16729:
	.cfi_endproc
.LFE2852:
	.section	.gcc_except_table
.LLSDA2852:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2852-.LLSDACSB2852
.LLSDACSB2852:
	.uleb128 .LEHB89-.LFB2852
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB90-.LFB2852
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L2185-.LFB2852
	.uleb128 0
	.uleb128 .LEHB91-.LFB2852
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L2186-.LFB2852
	.uleb128 0
	.uleb128 .LEHB92-.LFB2852
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
.LLSDACSE2852:
	.section	".text"
	.size	_ZN4idAIC2Ev, .-_ZN4idAIC2Ev
	.section	.text.startup,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I__ZN11idMoveStateC2Ev, @function
_GLOBAL__sub_I__ZN11idMoveStateC2Ev:
.LFB3359:
	.loc 4 5138 0
	.cfi_startproc
	.loc 4 5138 0
	li 3,1
	b _Z41__static_initialization_and_destruction_0ii.constprop.64
	.cfi_endproc
.LFE3359:
	.size	_GLOBAL__sub_I__ZN11idMoveStateC2Ev, .-_GLOBAL__sub_I__ZN11idMoveStateC2Ev
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I__ZN11idMoveStateC2Ev
	.section	.text.exit,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_D__ZN11idMoveStateC2Ev, @function
_GLOBAL__sub_D__ZN11idMoveStateC2Ev:
.LFB3360:
	.loc 4 5138 0
	.cfi_startproc
	.loc 4 5138 0
	li 3,0
	b _Z41__static_initialization_and_destruction_0ii.constprop.64
	.cfi_endproc
.LFE3360:
	.size	_GLOBAL__sub_D__ZN11idMoveStateC2Ev, .-_GLOBAL__sub_D__ZN11idMoveStateC2Ev
	.section	.dtors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_D__ZN11idMoveStateC2Ev
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
	.weak	_ZTS14idAASFindCover
	.section	.rodata._ZTS14idAASFindCover,"aG",@progbits,_ZTS14idAASFindCover,comdat
	.align 2
	.type	_ZTS14idAASFindCover, @object
	.size	_ZTS14idAASFindCover, 17
_ZTS14idAASFindCover:
	.string	"14idAASFindCover"
	.weak	_ZTI14idAASFindCover
	.section	.rodata._ZTI14idAASFindCover,"aG",@progbits,_ZTI14idAASFindCover,comdat
	.align 2
	.type	_ZTI14idAASFindCover, @object
	.size	_ZTI14idAASFindCover, 12
_ZTI14idAASFindCover:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14idAASFindCover
	.long	_ZTI13idAASCallback
	.weak	_ZTS23idAASFindAreaOutOfRange
	.section	.rodata._ZTS23idAASFindAreaOutOfRange,"aG",@progbits,_ZTS23idAASFindAreaOutOfRange,comdat
	.align 2
	.type	_ZTS23idAASFindAreaOutOfRange, @object
	.size	_ZTS23idAASFindAreaOutOfRange, 26
_ZTS23idAASFindAreaOutOfRange:
	.string	"23idAASFindAreaOutOfRange"
	.weak	_ZTI23idAASFindAreaOutOfRange
	.section	.rodata._ZTI23idAASFindAreaOutOfRange,"aG",@progbits,_ZTI23idAASFindAreaOutOfRange,comdat
	.align 2
	.type	_ZTI23idAASFindAreaOutOfRange, @object
	.size	_ZTI23idAASFindAreaOutOfRange, 12
_ZTI23idAASFindAreaOutOfRange:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS23idAASFindAreaOutOfRange
	.long	_ZTI13idAASCallback
	.weak	_ZTS23idAASFindAttackPosition
	.section	.rodata._ZTS23idAASFindAttackPosition,"aG",@progbits,_ZTS23idAASFindAttackPosition,comdat
	.align 2
	.type	_ZTS23idAASFindAttackPosition, @object
	.size	_ZTS23idAASFindAttackPosition, 26
_ZTS23idAASFindAttackPosition:
	.string	"23idAASFindAttackPosition"
	.weak	_ZTI23idAASFindAttackPosition
	.section	.rodata._ZTI23idAASFindAttackPosition,"aG",@progbits,_ZTI23idAASFindAttackPosition,comdat
	.align 2
	.type	_ZTI23idAASFindAttackPosition, @object
	.size	_ZTI23idAASFindAttackPosition, 12
_ZTI23idAASFindAttackPosition:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS23idAASFindAttackPosition
	.long	_ZTI13idAASCallback
	.weak	_ZTS12idCombatNode
	.section	.rodata._ZTS12idCombatNode,"aG",@progbits,_ZTS12idCombatNode,comdat
	.align 2
	.type	_ZTS12idCombatNode, @object
	.size	_ZTS12idCombatNode, 15
_ZTS12idCombatNode:
	.string	"12idCombatNode"
	.weak	_ZTI12idCombatNode
	.section	.rodata._ZTI12idCombatNode,"aG",@progbits,_ZTI12idCombatNode,comdat
	.align 2
	.type	_ZTI12idCombatNode, @object
	.size	_ZTI12idCombatNode, 12
_ZTI12idCombatNode:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12idCombatNode
	.long	_ZTI8idEntity
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
	.weak	_ZTV14idAASFindCover
	.section	.rodata._ZTV14idAASFindCover,"aG",@progbits,_ZTV14idAASFindCover,comdat
	.align 3
	.type	_ZTV14idAASFindCover, @object
	.size	_ZTV14idAASFindCover, 20
_ZTV14idAASFindCover:
	.long	0
	.long	_ZTI14idAASFindCover
	.long	_ZN14idAASFindCoverD1Ev
	.long	_ZN14idAASFindCoverD0Ev
	.long	_ZN14idAASFindCover8TestAreaEPK5idAASi
	.weak	_ZTV23idAASFindAreaOutOfRange
	.section	.rodata._ZTV23idAASFindAreaOutOfRange,"aG",@progbits,_ZTV23idAASFindAreaOutOfRange,comdat
	.align 3
	.type	_ZTV23idAASFindAreaOutOfRange, @object
	.size	_ZTV23idAASFindAreaOutOfRange, 20
_ZTV23idAASFindAreaOutOfRange:
	.long	0
	.long	_ZTI23idAASFindAreaOutOfRange
	.long	_ZN23idAASFindAreaOutOfRangeD1Ev
	.long	_ZN23idAASFindAreaOutOfRangeD0Ev
	.long	_ZN23idAASFindAreaOutOfRange8TestAreaEPK5idAASi
	.weak	_ZTV23idAASFindAttackPosition
	.section	.rodata._ZTV23idAASFindAttackPosition,"aG",@progbits,_ZTV23idAASFindAttackPosition,comdat
	.align 3
	.type	_ZTV23idAASFindAttackPosition, @object
	.size	_ZTV23idAASFindAttackPosition, 20
_ZTV23idAASFindAttackPosition:
	.long	0
	.long	_ZTI23idAASFindAttackPosition
	.long	_ZN23idAASFindAttackPositionD1Ev
	.long	_ZN23idAASFindAttackPositionD0Ev
	.long	_ZN23idAASFindAttackPosition8TestAreaEPK5idAASi
	.weak	_ZTV12idCombatNode
	.section	.rodata._ZTV12idCombatNode,"aG",@progbits,_ZTV12idCombatNode,comdat
	.align 3
	.type	_ZTV12idCombatNode, @object
	.size	_ZTV12idCombatNode, 236
_ZTV12idCombatNode:
	.long	0
	.long	_ZTI12idCombatNode
	.long	_ZNK12idCombatNode7GetTypeEv
	.long	_ZN12idCombatNodeD1Ev
	.long	_ZN12idCombatNodeD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN8idEntity5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN8idEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN8idEntity12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN8idEntity26UpdateAnimationControllersEv
	.long	_ZN8idEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN8idEntity27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN8idEntity7CollideERK7trace_sRK6idVec3
	.long	_ZN8idEntity13GetImpactInfoEPS_iRK6idVec3P12impactInfo_s
	.long	_ZN8idEntity12ApplyImpulseEPS_iRK6idVec3S3_
	.long	_ZN8idEntity8AddForceEPS_iRK6idVec3S3_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN8idEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN8idEntity17ShowEditingDialogEv
	.long	_ZN8idEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN8idEntity18ClientReceiveEventEiiRK8idBitMsg
	.globl _ZN12idCombatNode14eventCallbacksE
	.globl _ZN12idCombatNode4TypeE
	.weak	_ZTV13idAASCallback
	.section	.rodata._ZTV13idAASCallback,"aG",@progbits,_ZTV13idAASCallback,comdat
	.align 3
	.type	_ZTV13idAASCallback, @object
	.size	_ZTV13idAASCallback, 20
_ZTV13idAASCallback:
	.long	0
	.long	_ZTI13idAASCallback
	.long	_ZN13idAASCallbackD1Ev
	.long	_ZN13idAASCallbackD0Ev
	.long	__cxa_pure_virtual
	.weak	_ZTI12idAllocError
	.section	.rodata._ZTI12idAllocError,"aG",@progbits,_ZTI12idAllocError,comdat
	.align 2
	.type	_ZTI12idAllocError, @object
	.size	_ZTI12idAllocError, 12
_ZTI12idAllocError:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12idAllocError
	.long	_ZTI11idException
	.weak	_ZTI13idAASCallback
	.section	.sdata._ZTI13idAASCallback,"awG",@progbits,_ZTI13idAASCallback,comdat
	.align 2
	.type	_ZTI13idAASCallback, @object
	.size	_ZTI13idAASCallback, 8
_ZTI13idAASCallback:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS13idAASCallback
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
	.weak	_ZTS13idAASCallback
	.section	.rodata._ZTS13idAASCallback,"aG",@progbits,_ZTS13idAASCallback,comdat
	.align 2
	.type	_ZTS13idAASCallback, @object
	.size	_ZTS13idAASCallback, 16
_ZTS13idAASCallback:
	.string	"13idAASCallback"
	.weak	_ZTS11idException
	.section	.rodata._ZTS11idException,"aG",@progbits,_ZTS11idException,comdat
	.align 2
	.type	_ZTS11idException, @object
	.size	_ZTS11idException, 14
_ZTS11idException:
	.string	"11idException"
	.weak	_ZN13idAASCallbackD1Ev
	.set	_ZN13idAASCallbackD1Ev,_ZN13idAASCallbackD2Ev
	.weak	_ZN23idAASFindAreaOutOfRangeD1Ev
	.set	_ZN23idAASFindAreaOutOfRangeD1Ev,_ZN23idAASFindAreaOutOfRangeD2Ev
	.weak	_ZN9idWindingD1Ev
	.set	_ZN9idWindingD1Ev,_ZN9idWindingD2Ev
	.weak	_ZN12idCombatNodeD1Ev
	.set	_ZN12idCombatNodeD1Ev,_ZN12idCombatNodeD2Ev
	.globl _ZN23idAASFindAttackPositionD1Ev
	.set	_ZN23idAASFindAttackPositionD1Ev,_ZN23idAASFindAttackPositionD2Ev
	.globl _ZN14idAASFindCoverD1Ev
	.set	_ZN14idAASFindCoverD1Ev,_ZN14idAASFindCoverD2Ev
	.weak	_ZN14idFixedWindingD1Ev
	.set	_ZN14idFixedWindingD1Ev,_ZN14idFixedWindingD2Ev
	.globl _ZN11idMoveStateC1Ev
	.set	_ZN11idMoveStateC1Ev,_ZN11idMoveStateC2Ev
	.globl _ZN14idAASFindCoverC1ERK6idVec3
	.set	_ZN14idAASFindCoverC1ERK6idVec3,_ZN14idAASFindCoverC2ERK6idVec3
	.globl _ZN23idAASFindAreaOutOfRangeC1ERK6idVec3f
	.set	_ZN23idAASFindAreaOutOfRangeC1ERK6idVec3f,_ZN23idAASFindAreaOutOfRangeC2ERK6idVec3f
	.globl _ZN23idAASFindAttackPositionC1EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_
	.set	_ZN23idAASFindAttackPositionC1EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_,_ZN23idAASFindAttackPositionC2EPK4idAIRK6idMat3P8idEntityRK6idVec3SA_
	.globl _ZN12idCombatNodeC1Ev
	.set	_ZN12idCombatNodeC1Ev,_ZN12idCombatNodeC2Ev
	.globl _ZN4idAID1Ev
	.set	_ZN4idAID1Ev,_ZN4idAID2Ev
	.globl _ZN4idAIC1Ev
	.set	_ZN4idAIC1Ev,_ZN4idAIC2Ev
	.section	.rodata
	.align 2
	.set	.LANCHOR2,. + 0
	.type	_ZL17moveCommandString, @object
	.size	_ZL17moveCommandString, 52
_ZL17moveCommandString:
	.long	.LC247
	.long	.LC248
	.long	.LC249
	.long	.LC250
	.long	.LC251
	.long	.LC252
	.long	.LC253
	.long	.LC254
	.long	.LC255
	.long	.LC256
	.long	.LC257
	.long	.LC258
	.long	.LC259
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC1:
	.4byte	1098907648
.LC2:
	.4byte	-997900288
.LC6:
	.4byte	0
.LC15:
	.4byte	1056964608
.LC16:
	.4byte	1119092736
.LC20:
	.4byte	1115684864
.LC23:
	.4byte	-1031798784
.LC24:
	.4byte	-1056964608
.LC61:
	.4byte	1107296256
.LC62:
	.4byte	1090519040
.LC63:
	.4byte	1069547520
.LC65:
	.4byte	1501560836
.LC66:
	.4byte	939524096
.LC72:
	.4byte	-1065353216
.LC73:
	.4byte	1082130432
.LC74:
	.4byte	-1048576000
.LC75:
	.4byte	-1082130432
.LC77:
	.4byte	1036831949
.LC78:
	.4byte	1073741824
.LC80:
	.4byte	1111490560
.LC81:
	.4byte	1017817771
.LC82:
	.4byte	-998244352
.LC83:
	.4byte	1132462080
.LC84:
	.4byte	1127481344
.LC85:
	.4byte	1132920832
.LC86:
	.4byte	1134395392
.LC87:
	.4byte	1129775104
.LC88:
	.4byte	1124532224
.LC89:
	.4byte	1110704128
.LC90:
	.4byte	1140457472
.LC91:
	.4byte	1135869952
.LC93:
	.4byte	1092616192
.LC94:
	.4byte	-1054867456
.LC95:
	.4byte	1157627904
.LC96:
	.4byte	1114636288
.LC97:
	.4byte	1008981770
.LC98:
	.4byte	1008981771
.LC99:
	.4byte	1084227584
.LC100:
	.4byte	1028443341
.LC101:
	.4byte	1064514355
.LC102:
	.4byte	-1295168344
.LC103:
	.4byte	909687119
.LC104:
	.4byte	961547267
.LC105:
	.4byte	1007192199
.LC106:
	.4byte	1042983595
.LC107:
	.4byte	1124073472
.LC108:
	.4byte	1050253722
.LC109:
	.4byte	1116209152
.LC110:
	.4byte	1041865114
.LC117:
	.4byte	1249902592
.LC129:
	.4byte	1120403456
.LC130:
	.4byte	1096810496
.LC226:
	.4byte	1048576000
.LC233:
	.4byte	.LC134
.LC234:
	.4byte	.LC163
.LC236:
	.4byte	1140850688
.LC237:
	.4byte	-1020002304
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC140:
	.4byte	1075078758
	.4byte	1717986918
.LC141:
	.4byte	1075498188
	.4byte	-858993459
.LC239:
	.4byte	1069128089
	.4byte	-1717986918
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	_ZN12idCombatNode14eventCallbacksE, @object
	.size	_ZN12idCombatNode14eventCallbacksE, 36
_ZN12idCombatNode14eventCallbacksE:
	.long	_ZL22EV_CombatNode_MarkUsed
	.long	_ZN12idCombatNode14Event_MarkUsedEv
	.long	0
	.long	EV_Activate
	.long	_ZN12idCombatNode14Event_ActivateEP8idEntity
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC3:
	.string	"markUsed"
	.zero	3
.LC4:
	.string	"idCombatNode"
	.zero	3
.LC5:
	.string	"idEntity"
	.zero	3
.LC7:
	.string	"0"
	.zero	2
.LC8:
	.string	"use_once"
	.zero	3
.LC9:
	.string	"60"
	.zero	1
.LC10:
	.string	"min"
.LC11:
	.string	"max"
.LC12:
	.string	"height"
	.zero	1
.LC13:
	.string	"fov"
.LC14:
	.string	"offset"
	.zero	1
.LC17:
	.string	"start_off"
	.zero	2
.LC18:
	.string	"idMoveState::idMoveState() size %d\r\n"
	.zero	3
.LC19:
	.string	"idAASFindCover::idAASFindCover( const idVec3 &hideFromPos ) size %d\r\n"
	.zero	2
.LC21:
	.string	"idAASFindAreaOutOfRange::idAASFindAreaOutOfRange( const idVec3 &targetPos, float maxDist ) size %d\r\n"
	.zero	3
.LC22:
	.string	"idAASFindAttackPosition::idAASFindAttackPosition( const idAI *self, const idMat3 &gravityAxis, idEntity *target, const idVec3 &targetPos, const idVec3 &fireOffset ) size %d\r\n"
	.zero	1
.LC25:
	.string	"def_projectile"
	.zero	1
.LC26:
	.string	""
	.zero	3
.LC27:
	.string	"muzzleflash"
.LC28:
	.string	"0.25"
	.zero	3
.LC29:
	.string	"mtr_flashShader"
.LC30:
	.string	"flashColor"
	.zero	1
.LC31:
	.string	"0 0 0"
	.zero	2
.LC32:
	.string	"flashRadius"
.LC33:
	.string	"flashTime"
	.zero	2
.LC34:
	.string	"NULL state"
	.zero	1
.LC35:
	.string	"%-4s  %-20s %s\n"
.LC36:
	.string	" Num"
	.zero	3
.LC37:
	.string	"EntityDef"
	.zero	2
.LC38:
	.string	"Name"
	.zero	3
.LC39:
	.string	"------------------------------------------------\n"
	.zero	2
.LC40:
	.string	"%4i: %-20s %-20s %s  move: %d\n"
	.zero	1
.LC41:
	.string	"...%d monsters\n"
.LC42:
	.string	"AI_TALK"
.LC43:
	.string	"Missing '%s' field in script object '%s'"
	.zero	3
.LC44:
	.string	"AI_DAMAGE"
	.zero	2
.LC45:
	.string	"AI_PAIN"
.LC46:
	.string	"AI_SPECIAL_DAMAGE"
	.zero	2
.LC47:
	.string	"AI_DEAD"
.LC48:
	.string	"AI_ENEMY_VISIBLE"
	.zero	3
.LC49:
	.string	"AI_ENEMY_IN_FOV"
.LC50:
	.string	"AI_ENEMY_DEAD"
	.zero	2
.LC51:
	.string	"AI_MOVE_DONE"
	.zero	3
.LC52:
	.string	"AI_ONGROUND"
.LC53:
	.string	"AI_ACTIVATED"
	.zero	3
.LC54:
	.string	"AI_FORWARD"
	.zero	1
.LC55:
	.string	"AI_JUMP"
.LC56:
	.string	"AI_BLOCKED"
	.zero	1
.LC57:
	.string	"AI_DEST_UNREACHABLE"
.LC58:
	.string	"AI_HIT_ENEMY"
	.zero	3
.LC59:
	.string	"AI_OBSTACLE_IN_PATH"
.LC60:
	.string	"AI_PUSHED"
	.zero	2
.LC67:
	.string	"use_aas"
.LC68:
	.string	"%s cannot use use_aas %s\n"
	.zero	2
.LC69:
	.string	"WARNING: %s has no AAS file\n"
	.zero	3
.LC70:
	.string	"gravityDir"
	.zero	1
.LC71:
	.string	"0 0 -1"
	.zero	1
.LC76:
	.string	"%d"
	.zero	1
.LC111:
	.string	"Unknown particleJoint '%s' on '%s'"
	.zero	1
.LC112:
	.string	"%d: '%s' stop\n"
	.zero	1
.LC113:
	.string	"cinematic_no_hide"
	.zero	2
.LC114:
	.string	"anim%d"
	.zero	1
.LC115:
	.string	"missing 'anim%d' key on %s"
	.zero	1
.LC116:
	.string	"%d: '%s' start '%s'\n"
	.zero	3
.LC118:
	.string	"Invalid joint '%s' on 'launch_missile' frame command on frame %d of model '%s'"
	.zero	1
.LC119:
	.string	"classname"
	.zero	2
.LC120:
	.string	"Could not spawn entityDef '%s'"
	.zero	1
.LC121:
	.string	"'%s' is not an idProjectile"
.LC122:
	.string	"Unknown damage def '%s' on '%s'"
.LC123:
	.string	"snd_hit"
.LC124:
	.string	"kickDir"
.LC125:
	.string	"%d: %s: %s, vel = %.2f, sp = %.2f, maxsp = %.2f\n"
	.zero	3
.LC126:
	.string	"Unknown melee '%s'"
	.zero	1
.LC127:
	.string	"snd_miss"
	.zero	3
.LC128:
	.string	"Saving throw.\n"
	.zero	1
.LC131:
	.string	"Unknown joint '%s' on %s"
	.zero	3
.LC132:
	.string	"7"
	.zero	2
.LC133:
	.string	"70"
	.zero	1
.LC134:
	.string	"1"
	.zero	2
.LC135:
	.string	"%s (%s) doesn't have a projectile specified"
.LC136:
	.string	"attack_accuracy"
.LC137:
	.string	"attack_cone"
.LC138:
	.string	"projectile_spread"
	.zero	2
.LC139:
	.string	"num_projectiles"
.LC142:
	.string	"5"
	.zero	2
.LC143:
	.string	"10"
	.zero	1
.LC144:
	.string	"snd_chatter_combat"
	.zero	1
.LC145:
	.string	"chatter_combat_min"
	.zero	1
.LC146:
	.string	"chatter_combat_max"
	.zero	1
.LC147:
	.string	"no_idle_chatter"
.LC148:
	.string	"snd_chatter"
.LC149:
	.string	"chatter_min"
.LC150:
	.string	"chatter_max"
.LC151:
	.string	"big_monster"
.LC152:
	.string	"noDamage"
	.zero	3
.LC153:
	.string	"snd_ambient"
.LC154:
	.string	">>> EV_HIDE %s \r\n"
	.zero	2
.LC155:
	.string	">>> SetContents\r\n"
	.zero	2
.LC156:
	.string	">>> physicsObj class %s\r\n"
	.zero	2
.LC157:
	.string	">>> physicsObj getClipModel %p\r\n"
	.zero	3
.LC158:
	.string	">>> Unlink\r\n"
	.zero	3
.LC159:
	.string	">>> hide END\r\n"
	.zero	1
.LC160:
	.string	"-8"
	.zero	1
.LC161:
	.string	"0.5"
.LC162:
	.string	"0.1"
.LC163:
	.string	"100"
.LC164:
	.string	">>> TRACE_CLIPMODEL idAI::Spawn %p %s\r\n"
.LC165:
	.string	"team"
	.zero	3
.LC166:
	.string	"rank"
	.zero	3
.LC167:
	.string	"fly_offset"
	.zero	1
.LC168:
	.string	"fly_speed"
	.zero	2
.LC169:
	.string	"fly_bob_strength"
	.zero	3
.LC170:
	.string	"50"
	.zero	1
.LC171:
	.string	"fly_bob_vert"
	.zero	3
.LC172:
	.string	"2"
	.zero	2
.LC173:
	.string	"fly_bob_horz"
	.zero	3
.LC174:
	.string	"2.7"
.LC175:
	.string	"fly_seek_scale"
	.zero	1
.LC176:
	.string	"4"
	.zero	2
.LC177:
	.string	"fly_roll_scale"
	.zero	1
.LC178:
	.string	"90"
	.zero	1
.LC179:
	.string	"fly_roll_max"
	.zero	3
.LC180:
	.string	"fly_pitch_scale"
.LC181:
	.string	"45"
	.zero	1
.LC182:
	.string	"fly_pitch_max"
	.zero	2
.LC183:
	.string	"30"
	.zero	1
.LC184:
	.string	"melee_range"
.LC185:
	.string	"64"
	.zero	1
.LC186:
	.string	"projectile_height_to_distance_ratio"
.LC187:
	.string	"turn_rate"
	.zero	2
.LC188:
	.string	"360"
.LC189:
	.string	"talks"
	.zero	2
.LC190:
	.string	"npc_name"
	.zero	3
.LC191:
	.string	"animate_z"
	.zero	2
.LC192:
	.string	"af_push_moveables"
	.zero	2
.LC193:
	.string	"kick_force"
	.zero	1
.LC194:
	.string	"4096"
	.zero	3
.LC195:
	.string	"ignore_obstacles"
	.zero	3
.LC196:
	.string	"blockedRadius"
	.zero	2
.LC197:
	.string	"-1"
	.zero	1
.LC198:
	.string	"blockedMoveTime"
.LC199:
	.string	"750"
.LC200:
	.string	"blockedAttackTime"
	.zero	2
.LC201:
	.string	"num_cinematics"
	.zero	1
.LC202:
	.string	"look_min"
	.zero	3
.LC203:
	.string	"-80 -75 0"
	.zero	2
.LC204:
	.string	"look_max"
	.zero	3
.LC205:
	.string	"80 75 0"
.LC206:
	.string	"look_joint"
	.zero	1
.LC207:
	.string	"look_joint "
.LC208:
	.string	"Unknown look_joint '%s' on entity %s"
	.zero	3
.LC209:
	.string	"eye_turn_min"
	.zero	3
.LC210:
	.string	"-10 -30 0"
	.zero	2
.LC211:
	.string	"eye_turn_max"
	.zero	3
.LC212:
	.string	"10 30 0"
.LC213:
	.string	"eye_verticle_offset"
.LC214:
	.string	"eye_horizontal_offset"
	.zero	2
.LC215:
	.string	"eye_focus_rate"
	.zero	1
.LC216:
	.string	"head_focus_rate"
.LC217:
	.string	"focus_align_time"
	.zero	3
.LC218:
	.string	"flash"
	.zero	2
.LC219:
	.string	"bone_focus"
	.zero	1
.LC220:
	.string	"Joint '%s' not found on head on '%s'"
	.zero	3
.LC221:
	.string	"Joint '%s' not found on '%s'"
	.zero	3
.LC222:
	.string	"bone_orientation"
	.zero	3
.LC223:
	.string	"bone_flytilt"
	.zero	3
.LC224:
	.string	">>> TRACE_CLIPMODEL idAI::Spawn set clipmodel %p %s\r\n"
	.zero	2
.LC225:
	.string	"mass"
	.zero	3
.LC227:
	.string	"useBoneAxis"
.LC228:
	.string	"smokeParticleSystem"
.LC229:
	.string	"hide"
	.zero	3
.LC230:
	.string	"teleport"
	.zero	3
.LC231:
	.string	"trigger_anim"
	.zero	3
.LC232:
	.string	"entity '%s' doesn't have health set"
.LC235:
	.string	"special_damage"
	.zero	1
.LC238:
	.string	"idCombatNode::idCombatNode( void ) size %d\r\n"
	.zero	3
.LC240:
	.string	"Damage: joint: '%s', zone '%s'\n"
.LC241:
	.string	"snd_death"
	.zero	2
.LC242:
	.string	"model_death"
.LC243:
	.string	"state_Killed"
	.zero	3
.LC244:
	.string	"def_drops"
	.zero	2
.LC245:
	.string	"origin"
	.zero	1
.LC246:
	.string	"idAI::idAI() size %d\r\n"
	.zero	1
.LC247:
	.string	"MOVE_NONE"
	.zero	2
.LC248:
	.string	"MOVE_FACE_ENEMY"
.LC249:
	.string	"MOVE_FACE_ENTITY"
	.zero	3
.LC250:
	.string	"MOVE_TO_ENEMY"
	.zero	2
.LC251:
	.string	"MOVE_TO_ENEMYHEIGHT"
.LC252:
	.string	"MOVE_TO_ENTITY"
	.zero	1
.LC253:
	.string	"MOVE_OUT_OF_RANGE"
	.zero	2
.LC254:
	.string	"MOVE_TO_ATTACK_POSITION"
.LC255:
	.string	"MOVE_TO_COVER"
	.zero	2
.LC256:
	.string	"MOVE_TO_POSITION"
	.zero	3
.LC257:
	.string	"MOVE_TO_POSITION_DIRECT"
.LC258:
	.string	"MOVE_SLIDE_TO_POSITION"
	.zero	1
.LC259:
	.string	"MOVE_WANDER"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZN12idCombatNode4TypeE, @object
	.size	_ZN12idCombatNode4TypeE, 80
_ZN12idCombatNode4TypeE:
	.zero	80
	.type	_ZL22NUM_RENDER_PORTAL_BITS, @object
	.size	_ZL22NUM_RENDER_PORTAL_BITS, 4
_ZL22NUM_RENDER_PORTAL_BITS:
	.zero	4
	.type	_ZL20DEFAULT_GRAVITY_VEC3, @object
	.size	_ZL20DEFAULT_GRAVITY_VEC3, 12
_ZL20DEFAULT_GRAVITY_VEC3:
	.zero	12
	.type	_ZL20CINEMATIC_SKIP_DELAY, @object
	.size	_ZL20CINEMATIC_SKIP_DELAY, 4
_ZL20CINEMATIC_SKIP_DELAY:
	.zero	4
	.type	_ZL26ASYNC_PLAYER_INV_AMMO_BITS, @object
	.size	_ZL26ASYNC_PLAYER_INV_AMMO_BITS, 4
_ZL26ASYNC_PLAYER_INV_AMMO_BITS:
	.zero	4
	.type	_ZL22EV_CombatNode_MarkUsed, @object
	.size	_ZL22EV_CombatNode_MarkUsed, 64
_ZL22EV_CombatNode_MarkUsed:
	.zero	64
	.section	".text"
.Letext0:
	.file 26 "<built-in>"
	.file 27 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 28 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 29 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../sys/sys_public.h"
	.file 30 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/Common.h"
	.file 31 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/FileSystem.h"
	.file 32 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/Lib.h"
	.file 33 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/CmdArgs.h"
	.file 34 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Quat.h"
	.file 35 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Rotation.h"
	.file 36 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Plane.h"
	.file 37 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Ode.h"
	.file 38 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/bv/Sphere.h"
	.file 39 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/bv/Box.h"
	.file 40 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/bv/Frustum.h"
	.file 41 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/geometry/DrawVert.h"
	.file 42 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/geometry/JointTransform.h"
	.file 43 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/geometry/Surface.h"
	.file 44 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/Token.h"
	.file 45 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/Lexer.h"
	.file 46 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/File.h"
	.file 47 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/Parser.h"
	.file 48 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/containers/StrList.h"
	.file 49 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/containers/StrPool.h"
	.file 50 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/containers/PlaneSet.h"
	.file 51 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/LangDict.h"
	.file 52 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/BitMsg.h"
	.file 53 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/MapFile.h"
	.file 54 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/CmdSystem.h"
	.file 55 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/UsercmdGen.h"
	.file 56 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/DeclParticle.h"
	.file 57 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../renderer/RenderWorld.h"
	.file 58 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/DeclAF.h"
	.file 59 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../renderer/Cinematic.h"
	.file 60 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../renderer/Material.h"
	.file 61 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../renderer/Model.h"
	.file 62 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../renderer/RenderSystem.h"
	.file 63 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../sound/sound.h"
	.file 64 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../ui/UserInterface.h"
	.file 65 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../cm/CollisionModel.h"
	.file 66 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../tools/compilers/aas/AASFile.h"
	.file 67 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../game/Game.h"
	.file 68 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/async/NetworkSystem.h"
	.file 69 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../renderer/ModelManager.h"
	.file 70 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../tools/compilers/aas/AASFileManager.h"
	.file 71 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/Session.h"
	.file 72 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../ui/ListGUI.h"
	.file 73 "d:/Data/Nintendo/DoomGX/src/game/ai/../gamesys/Event.h"
	.file 74 "d:/Data/Nintendo/DoomGX/src/game/ai/../gamesys/SaveGame.h"
	.file 75 "d:/Data/Nintendo/DoomGX/src/game/ai/../Entity.h"
	.file 76 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/containers/Hierarchy.h"
	.file 77 "d:/Data/Nintendo/DoomGX/src/game/ai/../Pvs.h"
	.file 78 "d:/Data/Nintendo/DoomGX/src/game/ai/../Actor.h"
	.file 79 "d:/Data/Nintendo/DoomGX/src/game/ai/../physics/Physics.h"
	.file 80 "d:/Data/Nintendo/DoomGX/src/game/ai/../physics/Physics_AF.h"
	.file 81 "d:/Data/Nintendo/DoomGX/src/game/ai/../AF.h"
	.file 82 "d:/Data/Nintendo/DoomGX/src/game/ai/../Projectile.h"
	.file 83 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/Console.h"
	.file 84 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Curve.h"
	.file 85 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../idlib/math/Simd.h"
	.file 86 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/BuildVersion.h"
	.file 87 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/precompiled.h"
	.file 88 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/EventLoop.h"
	.file 89 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/EditField.h"
	.file 90 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/async/AsyncNetwork.h"
	.file 91 "d:/Data/Nintendo/DoomGX/src/game/ai/../../idlib/../framework/async/AsyncServer.h"
	.file 92 "d:/Data/Nintendo/DoomGX/src/game/ai/../gamesys/SysCvar.h"
	.file 93 "d:/Data/Nintendo/DoomGX/src/game/ai/../MultiplayerGame.h"
	.file 94 "d:/Data/Nintendo/DoomGX/src/game/ai/../AFEntity.h"
	.file 95 "d:/Data/Nintendo/DoomGX/src/game/ai/../Weapon.h"
	.file 96 "d:/Data/Nintendo/DoomGX/src/game/ai/../script/Script_Compiler.h"
	.file 97 "d:/Data/Nintendo/DoomGX/src/game/ai/../script/Script_Thread.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x49e12
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF8273
	.byte	0x4
	.4byte	.LASF8274
	.4byte	.LASF8275
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0xbf88
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
	.4byte	.LASF272
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x1c
	.byte	0x6e
	.4byte	0xf0
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
	.4byte	0x189
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
	.4byte	0x117
	.uleb128 0xd
	.byte	0x4
	.byte	0x1d
	.byte	0xe0
	.4byte	.LASF35
	.4byte	0x1c5
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
	.4byte	0x194
	.uleb128 0xf
	.byte	0x18
	.byte	0x1d
	.2byte	0x102
	.4byte	.LASF55
	.4byte	0x238
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
	.4byte	0x1c5
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
	.4byte	0x1d0
	.uleb128 0x12
	.byte	0x4
	.byte	0x1d
	.2byte	0x1bd
	.4byte	.LASF3708
	.4byte	0x26a
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
	.4byte	0x244
	.uleb128 0xf
	.byte	0xc
	.byte	0x1d
	.2byte	0x1c4
	.4byte	.LASF56
	.4byte	0x2b0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1d
	.2byte	0x1c5
	.4byte	0x26a
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
	.4byte	0x276
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x4
	.byte	0x1e
	.byte	0x70
	.4byte	0x2bc
	.4byte	0x7c6
	.uleb128 0x15
	.4byte	.LASF120
	.4byte	0x2f9ad
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x2ef
	.4byte	0x2fc
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x319
	.4byte	0x32f
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x120bf
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x34c
	.4byte	0x353
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x370
	.4byte	0x377
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1e
	.byte	0x80
	.4byte	.LASF108
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x398
	.4byte	0x39f
	.uleb128 0x17
	.4byte	0x321f2
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x3bc
	.4byte	0x3c3
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x3e0
	.4byte	0x3f1
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0x15c9
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x40e
	.4byte	0x415
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x432
	.4byte	0x443
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x460
	.4byte	0x471
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x17709
	.uleb128 0x19
	.4byte	0x148f0
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x48e
	.4byte	0x49a
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x4b7
	.4byte	0x4c3
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x4e0
	.4byte	0x4f6
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x513
	.4byte	0x529
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x17696
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x546
	.4byte	0x54d
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x56a
	.4byte	0x576
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x593
	.4byte	0x5a0
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x5bd
	.4byte	0x5ce
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xff83
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x5eb
	.4byte	0x5f8
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x615
	.4byte	0x622
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x63f
	.4byte	0x64c
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x669
	.4byte	0x670
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x68d
	.4byte	0x699
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x6b6
	.4byte	0x6c3
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x6e0
	.4byte	0x6ed
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x15158
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1a
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x70e
	.4byte	0x715
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x736
	.4byte	0x742
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x763
	.4byte	0x76f
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x790
	.4byte	0x79c
	.uleb128 0x17
	.4byte	0x7c6
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
	.4byte	0x2bc
	.byte	0x1
	.4byte	0x7b9
	.uleb128 0x17
	.4byte	0x7c6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2bc
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x4
	.byte	0x14
	.byte	0xd0
	.4byte	0x7cc
	.4byte	0xc2a
	.uleb128 0x15
	.4byte	.LASF121
	.4byte	0x2f9ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF123
	.byte	0x14
	.byte	0xd2
	.byte	0x1
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x7ff
	.4byte	0x80c
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF60
	.byte	0x14
	.byte	0xd4
	.4byte	.LASF124
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x829
	.4byte	0x830
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x14
	.byte	0xd5
	.4byte	.LASF125
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x84d
	.4byte	0x854
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0x14
	.byte	0xd6
	.4byte	.LASF126
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x875
	.4byte	0x87c
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF127
	.byte	0x14
	.byte	0xd9
	.4byte	.LASF128
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x899
	.4byte	0x8a5
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x200c9
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF129
	.byte	0x14
	.byte	0xdd
	.4byte	.LASF130
	.4byte	0x200c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x8c6
	.4byte	0x8d2
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF131
	.byte	0x14
	.byte	0xe0
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x8ef
	.4byte	0x905
	.uleb128 0x17
	.4byte	0xc2a
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
	.byte	0x14
	.byte	0xe1
	.4byte	.LASF134
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x922
	.4byte	0x938
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF135
	.byte	0x14
	.byte	0xe2
	.4byte	.LASF136
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x955
	.4byte	0x96b
	.uleb128 0x17
	.4byte	0xc2a
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
	.byte	0x14
	.byte	0xe3
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x988
	.4byte	0x99e
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF139
	.byte	0x14
	.byte	0xe6
	.4byte	.LASF140
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xb
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x9bf
	.4byte	0x9cb
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF141
	.byte	0x14
	.byte	0xe7
	.4byte	.LASF142
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.4byte	0x7cc
	.byte	0x1
	.4byte	0x9ec
	.4byte	0x9f8
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF143
	.byte	0x14
	.byte	0xe8
	.4byte	.LASF144
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xd
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa19
	.4byte	0xa25
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF145
	.byte	0x14
	.byte	0xe9
	.4byte	.LASF146
	.4byte	0x109
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa46
	.4byte	0xa52
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF147
	.byte	0x14
	.byte	0xed
	.4byte	.LASF148
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xf
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa73
	.4byte	0xa7f
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15d0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF149
	.byte	0x14
	.byte	0xf0
	.4byte	.LASF150
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xa9c
	.4byte	0xaa8
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x17696
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF151
	.byte	0x14
	.byte	0xf1
	.4byte	.LASF152
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x11
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xac5
	.4byte	0xad6
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x17696
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF153
	.byte	0x14
	.byte	0xf4
	.4byte	.LASF154
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xaf3
	.4byte	0xaff
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF155
	.byte	0x14
	.byte	0xf5
	.4byte	.LASF156
	.4byte	0xac
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb20
	.4byte	0xb27
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF157
	.byte	0x14
	.byte	0xf6
	.4byte	.LASF158
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb44
	.4byte	0xb50
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF159
	.byte	0x14
	.byte	0xf9
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x15
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb6d
	.4byte	0xb79
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF161
	.byte	0x14
	.byte	0xfc
	.4byte	.LASF162
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x16
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xb96
	.4byte	0xba2
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF163
	.byte	0x14
	.byte	0xff
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x17
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xbbf
	.4byte	0xbd5
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x10638
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF165
	.byte	0x14
	.2byte	0x102
	.4byte	.LASF245
	.4byte	0x148f0
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xbf7
	.4byte	0xc03
	.uleb128 0x17
	.4byte	0x321fd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF1329
	.byte	0x14
	.2byte	0x103
	.4byte	.LASF1331
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x19
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xc1d
	.uleb128 0x17
	.4byte	0xc2a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15dbb
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7cc
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0x4
	.byte	0x1f
	.byte	0x94
	.4byte	0xc30
	.4byte	0x1556
	.uleb128 0x15
	.4byte	.LASF167
	.4byte	0x2f9ad
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xc63
	.4byte	0xc70
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xc8d
	.4byte	0xc94
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xcb1
	.4byte	0xcb8
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xcd5
	.4byte	0xce1
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1f
	.byte	0x9e
	.4byte	.LASF173
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd02
	.4byte	0xd09
	.uleb128 0x17
	.4byte	0x321cf
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1f
	.byte	0xa0
	.4byte	.LASF175
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x6
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd2a
	.4byte	0xd31
	.uleb128 0x17
	.4byte	0x321cf
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1f
	.byte	0xa4
	.4byte	.LASF177
	.4byte	0x321da
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x7
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd52
	.4byte	0xd59
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xd76
	.4byte	0xd82
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x321da
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1f
	.byte	0xac
	.4byte	.LASF181
	.4byte	0x321e0
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x9
	.4byte	0xc30
	.byte	0x1
	.4byte	0xda3
	.4byte	0xdc3
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1f
	.byte	0xb1
	.4byte	.LASF183
	.4byte	0x321e0
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0xa
	.4byte	0xc30
	.byte	0x1
	.4byte	0xde4
	.4byte	0xdff
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xe1c
	.4byte	0xe28
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x321e0
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xe49
	.4byte	0xe55
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xe76
	.4byte	0xe87
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xea8
	.4byte	0xebe
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xedb
	.4byte	0xee7
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf08
	.4byte	0xf14
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf31
	.4byte	0xf38
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1f
	.byte	0xc2
	.4byte	.LASF199
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x12
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf59
	.4byte	0xf60
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1f
	.byte	0xca
	.4byte	.LASF201
	.4byte	0x177ee
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x13
	.4byte	0xc30
	.byte	0x1
	.4byte	0xf81
	.4byte	0xf9c
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d91
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d8b
	.uleb128 0x19
	.4byte	0x8d8b
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xfb9
	.4byte	0xfcf
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d8b
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d8b
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0xfec
	.4byte	0xffd
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d91
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x101a
	.4byte	0x1021
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1042
	.4byte	0x1049
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x106a
	.4byte	0x1080
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x321e6
	.uleb128 0x19
	.4byte	0x321ec
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x109d
	.4byte	0x10a9
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x10ca
	.4byte	0x10e5
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x9ae8
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1102
	.4byte	0x110e
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0x10638
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.4byte	0xc30
	.byte	0x1
	.4byte	0x112f
	.4byte	0x1145
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1f
	.byte	0xe7
	.4byte	.LASF221
	.4byte	0x10638
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1d
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1166
	.4byte	0x1177
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0x10638
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1e
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1198
	.4byte	0x11ae
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF224
	.byte	0x1f
	.byte	0xeb
	.4byte	.LASF225
	.4byte	0x10638
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x1f
	.4byte	0xc30
	.byte	0x1
	.4byte	0x11cf
	.4byte	0x11e0
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x177be
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF226
	.byte	0x1f
	.byte	0xed
	.4byte	.LASF227
	.4byte	0x10638
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1201
	.4byte	0x120d
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0x10638
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x21
	.4byte	0xc30
	.byte	0x1
	.4byte	0x122e
	.4byte	0x123a
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1257
	.4byte	0x1263
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10638
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1280
	.4byte	0x128c
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0x30cdf
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x12a9
	.4byte	0x12b0
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x12d1
	.4byte	0x12d8
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x12f5
	.4byte	0x1301
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x131e
	.4byte	0x1334
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0x15c9
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1351
	.4byte	0x1358
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF244
	.byte	0x1f
	.2byte	0x102
	.4byte	.LASF246
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x29
	.4byte	0xc30
	.byte	0x1
	.4byte	0x137a
	.4byte	0x1381
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF247
	.byte	0x1f
	.2byte	0x104
	.4byte	.LASF248
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2a
	.4byte	0xc30
	.byte	0x1
	.4byte	0x13a3
	.4byte	0x13aa
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x13c8
	.4byte	0x13d9
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x13fb
	.4byte	0x1411
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF252
	.byte	0x1f
	.2byte	0x10c
	.4byte	.LASF253
	.4byte	0x10638
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2d
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1433
	.4byte	0x143a
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x145c
	.4byte	0x1468
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0x17872
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2f
	.4byte	0xc30
	.byte	0x1
	.4byte	0x148a
	.4byte	0x149b
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x14bd
	.4byte	0x14c4
	.uleb128 0x17
	.4byte	0x1556
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF260
	.byte	0x1f
	.2byte	0x118
	.4byte	.LASF261
	.4byte	0x148f0
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x31
	.4byte	0xc30
	.byte	0x1
	.4byte	0x14e6
	.4byte	0x14f2
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1510
	.4byte	0x1526
	.uleb128 0x17
	.4byte	0x1556
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
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x33
	.4byte	0xc30
	.byte	0x1
	.4byte	0x1544
	.uleb128 0x17
	.4byte	0x321cf
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc30
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
	.uleb128 0x21
	.4byte	.LASF295
	.2byte	0x400
	.byte	0x20
	.byte	0x96
	.4byte	0x15b2
	.uleb128 0x6
	.4byte	.LASF270
	.byte	0x20
	.byte	0x98
	.4byte	0x15b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF295
	.byte	0x20
	.byte	0x9a
	.byte	0x1
	.4byte	0x15a5
	.uleb128 0x17
	.4byte	0x15c3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x15c3
	.uleb128 0x23
	.4byte	0x34
	.2byte	0x3ff
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x157d
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF271
	.uleb128 0x24
	.byte	0x4
	.4byte	0x15d6
	.uleb128 0xc
	.4byte	0x15db
	.uleb128 0x25
	.4byte	.LASF273
	.2byte	0x904
	.byte	0x21
	.byte	0x28
	.4byte	0x1789
	.uleb128 0x26
	.4byte	.LASF274
	.byte	0x21
	.byte	0x41
	.4byte	0x21e8
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x40
	.uleb128 0x27
	.4byte	.LASF275
	.byte	0x21
	.byte	0x42
	.4byte	0x21e8
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.2byte	0x800
	.uleb128 0x28
	.4byte	.LASF276
	.byte	0x21
	.byte	0x44
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF277
	.byte	0x21
	.byte	0x45
	.4byte	0x12087
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF278
	.byte	0x21
	.byte	0x46
	.4byte	0x12097
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF273
	.byte	0x21
	.byte	0x2a
	.byte	0x1
	.4byte	0x1646
	.4byte	0x164d
	.uleb128 0x17
	.4byte	0x120a8
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF273
	.byte	0x21
	.byte	0x2b
	.byte	0x1
	.4byte	0x165e
	.4byte	0x166f
	.uleb128 0x17
	.4byte	0x120a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x21
	.byte	0x2d
	.4byte	.LASF287
	.byte	0x1
	.4byte	0x1684
	.4byte	0x1690
	.uleb128 0x17
	.4byte	0x120a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x120ae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF279
	.byte	0x21
	.byte	0x30
	.4byte	.LASF281
	.4byte	0xac
	.byte	0x1
	.4byte	0x16a9
	.4byte	0x16b0
	.uleb128 0x17
	.4byte	0x120b9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF280
	.byte	0x21
	.byte	0x32
	.4byte	.LASF282
	.4byte	0xe5
	.byte	0x1
	.4byte	0x16c9
	.4byte	0x16d5
	.uleb128 0x17
	.4byte	0x120b9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF283
	.byte	0x21
	.byte	0x35
	.4byte	.LASF284
	.4byte	0xe5
	.byte	0x1
	.4byte	0x16ee
	.4byte	0x1704
	.uleb128 0x17
	.4byte	0x120b9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF286
	.byte	0x21
	.byte	0x3a
	.4byte	.LASF288
	.byte	0x1
	.4byte	0x1719
	.4byte	0x172a
	.uleb128 0x17
	.4byte	0x120a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF289
	.byte	0x21
	.byte	0x3c
	.4byte	.LASF290
	.byte	0x1
	.4byte	0x173f
	.4byte	0x174b
	.uleb128 0x17
	.4byte	0x120a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x21
	.byte	0x3d
	.4byte	.LASF292
	.byte	0x1
	.4byte	0x1760
	.4byte	0x1767
	.uleb128 0x17
	.4byte	0x120a8
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF293
	.byte	0x21
	.byte	0x3e
	.4byte	.LASF294
	.4byte	0x120bf
	.byte	0x1
	.4byte	0x177c
	.uleb128 0x17
	.4byte	0x120a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF296
	.byte	0x1
	.byte	0x8
	.byte	0x6c
	.4byte	0x20b6
	.uleb128 0x2e
	.byte	0x4
	.byte	0x8
	.byte	0xde
	.byte	0x3
	.4byte	0x17cc
	.uleb128 0xe
	.4byte	.LASF297
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF298
	.sleb128 23
	.uleb128 0xe
	.4byte	.LASF299
	.sleb128 127
	.uleb128 0xe
	.4byte	.LASF300
	.sleb128 15
	.uleb128 0xe
	.4byte	.LASF301
	.sleb128 15
	.uleb128 0xe
	.4byte	.LASF302
	.sleb128 512
	.uleb128 0xe
	.4byte	.LASF303
	.sleb128 511
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF8276
	.byte	0x4
	.byte	0x8
	.byte	0xe8
	.byte	0x3
	.4byte	0x17ec
	.uleb128 0x30
	.string	"i"
	.byte	0x8
	.byte	0xe9
	.4byte	0x1567
	.uleb128 0x30
	.string	"f"
	.byte	0x8
	.byte	0xea
	.4byte	0x109
	.byte	0
	.uleb128 0x31
	.string	"PI"
	.byte	0x8
	.byte	0xcd
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF304
	.byte	0x8
	.byte	0xce
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF305
	.byte	0x8
	.byte	0xcf
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF306
	.byte	0x8
	.byte	0xd0
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"E"
	.byte	0x8
	.byte	0xd1
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF307
	.byte	0x8
	.byte	0xd2
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF308
	.byte	0x8
	.byte	0xd3
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF309
	.byte	0x8
	.byte	0xd4
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF310
	.byte	0x8
	.byte	0xd5
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF311
	.byte	0x8
	.byte	0xd6
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF312
	.byte	0x8
	.byte	0xd7
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF313
	.byte	0x8
	.byte	0xd8
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF314
	.byte	0x8
	.byte	0xd9
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF315
	.byte	0x8
	.byte	0xda
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF316
	.byte	0x8
	.byte	0xdb
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF317
	.byte	0x8
	.byte	0xed
	.4byte	0x20bb
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF318
	.byte	0x8
	.byte	0xee
	.4byte	0x15c9
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF60
	.byte	0x8
	.byte	0x6f
	.4byte	.LASF2642
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF319
	.byte	0x8
	.byte	0x71
	.4byte	.LASF320
	.4byte	0x109
	.byte	0x1
	.4byte	0x18f0
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF321
	.byte	0x8
	.byte	0x73
	.4byte	.LASF322
	.4byte	0x109
	.byte	0x1
	.4byte	0x190b
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF323
	.byte	0x8
	.byte	0x74
	.4byte	.LASF324
	.4byte	0x109
	.byte	0x1
	.4byte	0x1926
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF325
	.byte	0x8
	.byte	0x75
	.4byte	.LASF326
	.4byte	0x102
	.byte	0x1
	.4byte	0x1941
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF327
	.byte	0x8
	.byte	0x77
	.4byte	.LASF328
	.4byte	0x109
	.byte	0x1
	.4byte	0x195c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF329
	.byte	0x8
	.byte	0x78
	.4byte	.LASF330
	.4byte	0x109
	.byte	0x1
	.4byte	0x1977
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF331
	.byte	0x8
	.byte	0x79
	.4byte	.LASF332
	.4byte	0x102
	.byte	0x1
	.4byte	0x1992
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Sin"
	.byte	0x8
	.byte	0x7b
	.4byte	.LASF337
	.4byte	0x109
	.byte	0x1
	.4byte	0x19ad
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF333
	.byte	0x8
	.byte	0x7c
	.4byte	.LASF334
	.4byte	0x109
	.byte	0x1
	.4byte	0x19c8
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF335
	.byte	0x8
	.byte	0x7d
	.4byte	.LASF336
	.4byte	0x102
	.byte	0x1
	.4byte	0x19e3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Cos"
	.byte	0x8
	.byte	0x7f
	.4byte	.LASF338
	.4byte	0x109
	.byte	0x1
	.4byte	0x19fe
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF339
	.byte	0x8
	.byte	0x80
	.4byte	.LASF340
	.4byte	0x109
	.byte	0x1
	.4byte	0x1a19
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF341
	.byte	0x8
	.byte	0x81
	.4byte	.LASF342
	.4byte	0x102
	.byte	0x1
	.4byte	0x1a34
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF343
	.byte	0x8
	.byte	0x83
	.4byte	.LASF345
	.byte	0x1
	.4byte	0x1a55
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF344
	.byte	0x8
	.byte	0x84
	.4byte	.LASF346
	.byte	0x1
	.4byte	0x1a76
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF347
	.byte	0x8
	.byte	0x85
	.4byte	.LASF348
	.byte	0x1
	.4byte	0x1a97
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x20d2
	.uleb128 0x19
	.4byte	0x20d2
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Tan"
	.byte	0x8
	.byte	0x87
	.4byte	.LASF349
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ab2
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF350
	.byte	0x8
	.byte	0x88
	.4byte	.LASF351
	.4byte	0x109
	.byte	0x1
	.4byte	0x1acd
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF352
	.byte	0x8
	.byte	0x89
	.4byte	.LASF353
	.4byte	0x102
	.byte	0x1
	.4byte	0x1ae8
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF354
	.byte	0x8
	.byte	0x8b
	.4byte	.LASF355
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b03
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF356
	.byte	0x8
	.byte	0x8c
	.4byte	.LASF357
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b1e
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF358
	.byte	0x8
	.byte	0x8d
	.4byte	.LASF359
	.4byte	0x102
	.byte	0x1
	.4byte	0x1b39
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF360
	.byte	0x8
	.byte	0x8f
	.4byte	.LASF361
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b54
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF362
	.byte	0x8
	.byte	0x90
	.4byte	.LASF363
	.4byte	0x109
	.byte	0x1
	.4byte	0x1b6f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF364
	.byte	0x8
	.byte	0x91
	.4byte	.LASF365
	.4byte	0x102
	.byte	0x1
	.4byte	0x1b8a
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF366
	.byte	0x8
	.byte	0x93
	.4byte	.LASF367
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ba5
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF368
	.byte	0x8
	.byte	0x94
	.4byte	.LASF369
	.4byte	0x109
	.byte	0x1
	.4byte	0x1bc0
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF370
	.byte	0x8
	.byte	0x95
	.4byte	.LASF371
	.4byte	0x102
	.byte	0x1
	.4byte	0x1bdb
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF366
	.byte	0x8
	.byte	0x97
	.4byte	.LASF372
	.4byte	0x109
	.byte	0x1
	.4byte	0x1bfb
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF368
	.byte	0x8
	.byte	0x98
	.4byte	.LASF373
	.4byte	0x109
	.byte	0x1
	.4byte	0x1c1b
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF370
	.byte	0x8
	.byte	0x99
	.4byte	.LASF374
	.4byte	0x102
	.byte	0x1
	.4byte	0x1c3b
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Pow"
	.byte	0x8
	.byte	0x9b
	.4byte	.LASF375
	.4byte	0x109
	.byte	0x1
	.4byte	0x1c5b
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF376
	.byte	0x8
	.byte	0x9c
	.4byte	.LASF377
	.4byte	0x109
	.byte	0x1
	.4byte	0x1c7b
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF378
	.byte	0x8
	.byte	0x9d
	.4byte	.LASF379
	.4byte	0x102
	.byte	0x1
	.4byte	0x1c9b
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Exp"
	.byte	0x8
	.byte	0x9f
	.4byte	.LASF380
	.4byte	0x109
	.byte	0x1
	.4byte	0x1cb6
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF381
	.byte	0x8
	.byte	0xa0
	.4byte	.LASF382
	.4byte	0x109
	.byte	0x1
	.4byte	0x1cd1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF383
	.byte	0x8
	.byte	0xa1
	.4byte	.LASF384
	.4byte	0x102
	.byte	0x1
	.4byte	0x1cec
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Log"
	.byte	0x8
	.byte	0xa3
	.4byte	.LASF385
	.4byte	0x109
	.byte	0x1
	.4byte	0x1d07
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF386
	.byte	0x8
	.byte	0xa4
	.4byte	.LASF387
	.4byte	0x109
	.byte	0x1
	.4byte	0x1d22
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF388
	.byte	0x8
	.byte	0xa5
	.4byte	.LASF389
	.4byte	0x102
	.byte	0x1
	.4byte	0x1d3d
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF390
	.byte	0x8
	.byte	0xa7
	.4byte	.LASF391
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d5d
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF392
	.byte	0x8
	.byte	0xa8
	.4byte	.LASF393
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d78
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF392
	.byte	0x8
	.byte	0xa9
	.4byte	.LASF394
	.4byte	0xac
	.byte	0x1
	.4byte	0x1d93
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF395
	.byte	0x8
	.byte	0xab
	.4byte	.LASF396
	.4byte	0xac
	.byte	0x1
	.4byte	0x1dae
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF397
	.byte	0x8
	.byte	0xac
	.4byte	.LASF398
	.4byte	0xac
	.byte	0x1
	.4byte	0x1dc9
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF399
	.byte	0x8
	.byte	0xad
	.4byte	.LASF400
	.4byte	0xac
	.byte	0x1
	.4byte	0x1de4
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF401
	.byte	0x8
	.byte	0xae
	.4byte	.LASF402
	.4byte	0xac
	.byte	0x1
	.4byte	0x1dff
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF403
	.byte	0x8
	.byte	0xaf
	.4byte	.LASF404
	.4byte	0xac
	.byte	0x1
	.4byte	0x1e1a
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF405
	.byte	0x8
	.byte	0xb0
	.4byte	.LASF406
	.4byte	0xac
	.byte	0x1
	.4byte	0x1e35
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF407
	.byte	0x8
	.byte	0xb1
	.4byte	.LASF408
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x1e50
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF409
	.byte	0x8
	.byte	0xb2
	.4byte	.LASF410
	.4byte	0xac
	.byte	0x1
	.4byte	0x1e6b
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF411
	.byte	0x8
	.byte	0xb3
	.4byte	.LASF412
	.4byte	0xac
	.byte	0x1
	.4byte	0x1e86
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Abs"
	.byte	0x8
	.byte	0xb5
	.4byte	.LASF413
	.4byte	0xac
	.byte	0x1
	.4byte	0x1ea1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF414
	.byte	0x8
	.byte	0xb6
	.4byte	.LASF415
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ebc
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF416
	.byte	0x8
	.byte	0xb7
	.4byte	.LASF417
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ed7
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF418
	.byte	0x8
	.byte	0xb8
	.4byte	.LASF419
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ef2
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF420
	.byte	0x8
	.byte	0xb9
	.4byte	.LASF421
	.4byte	0x109
	.byte	0x1
	.4byte	0x1f0d
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF422
	.byte	0x8
	.byte	0xba
	.4byte	.LASF423
	.4byte	0xac
	.byte	0x1
	.4byte	0x1f28
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF424
	.byte	0x8
	.byte	0xbb
	.4byte	.LASF425
	.4byte	0xac
	.byte	0x1
	.4byte	0x1f43
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF426
	.byte	0x8
	.byte	0xbc
	.4byte	.LASF427
	.4byte	0xd1
	.byte	0x1
	.4byte	0x1f5e
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF428
	.byte	0x8
	.byte	0xbd
	.4byte	.LASF429
	.4byte	0xd1
	.byte	0x1
	.4byte	0x1f79
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF430
	.byte	0x8
	.byte	0xbf
	.4byte	.LASF431
	.4byte	0x9e
	.byte	0x1
	.4byte	0x1f94
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF432
	.byte	0x8
	.byte	0xc0
	.4byte	.LASF433
	.4byte	0xa5
	.byte	0x1
	.4byte	0x1faf
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF434
	.byte	0x8
	.byte	0xc1
	.4byte	.LASF435
	.4byte	0xac
	.byte	0x1
	.4byte	0x1fd4
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF436
	.byte	0x8
	.byte	0xc2
	.4byte	.LASF437
	.4byte	0x109
	.byte	0x1
	.4byte	0x1ff9
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF438
	.byte	0x8
	.byte	0xc4
	.4byte	.LASF439
	.4byte	0x109
	.byte	0x1
	.4byte	0x2014
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF440
	.byte	0x8
	.byte	0xc5
	.4byte	.LASF441
	.4byte	0x109
	.byte	0x1
	.4byte	0x202f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF442
	.byte	0x8
	.byte	0xc6
	.4byte	.LASF443
	.4byte	0x109
	.byte	0x1
	.4byte	0x204f
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF444
	.byte	0x8
	.byte	0xc8
	.4byte	.LASF445
	.4byte	0xac
	.byte	0x1
	.4byte	0x2074
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF446
	.byte	0x8
	.byte	0xc9
	.4byte	.LASF447
	.4byte	0x109
	.byte	0x1
	.4byte	0x2099
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF448
	.byte	0x8
	.byte	0xcb
	.4byte	.LASF449
	.4byte	0xac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x20d8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x109
	.uleb128 0x9
	.4byte	0x34
	.4byte	0x20cc
	.uleb128 0x23
	.4byte	0x34
	.2byte	0x1ff
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.4byte	0x109
	.uleb128 0x24
	.byte	0x4
	.4byte	0x102
	.uleb128 0xb
	.byte	0x4
	.4byte	0x20b6
	.uleb128 0x2d
	.4byte	.LASF450
	.byte	0x4
	.byte	0x13
	.byte	0x28
	.4byte	0x21e8
	.uleb128 0x39
	.4byte	.LASF451
	.byte	0x13
	.byte	0x34
	.4byte	0x21e8
	.byte	0x1
	.byte	0x1
	.2byte	0x7fff
	.uleb128 0x28
	.4byte	.LASF452
	.byte	0x13
	.byte	0x37
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF450
	.byte	0x13
	.byte	0x2a
	.byte	0x1
	.4byte	0x2119
	.4byte	0x2125
	.uleb128 0x17
	.4byte	0x21ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF453
	.byte	0x13
	.byte	0x2c
	.4byte	.LASF454
	.byte	0x1
	.4byte	0x213a
	.4byte	0x2146
	.uleb128 0x17
	.4byte	0x21ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF455
	.byte	0x13
	.byte	0x2d
	.4byte	.LASF456
	.4byte	0xac
	.byte	0x1
	.4byte	0x215f
	.4byte	0x2166
	.uleb128 0x17
	.4byte	0x21f3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF457
	.byte	0x13
	.byte	0x2f
	.4byte	.LASF458
	.4byte	0xac
	.byte	0x1
	.4byte	0x217f
	.4byte	0x2186
	.uleb128 0x17
	.4byte	0x21ed
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF457
	.byte	0x13
	.byte	0x30
	.4byte	.LASF459
	.4byte	0xac
	.byte	0x1
	.4byte	0x219f
	.4byte	0x21ab
	.uleb128 0x17
	.4byte	0x21ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF460
	.byte	0x13
	.byte	0x31
	.4byte	.LASF461
	.4byte	0x109
	.byte	0x1
	.4byte	0x21c4
	.4byte	0x21cb
	.uleb128 0x17
	.4byte	0x21ed
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF462
	.byte	0x13
	.byte	0x32
	.4byte	.LASF463
	.4byte	0x109
	.byte	0x1
	.4byte	0x21e0
	.uleb128 0x17
	.4byte	0x21ed
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x20de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x21f9
	.uleb128 0xc
	.4byte	0x20de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x109
	.uleb128 0x2d
	.4byte	.LASF464
	.byte	0x8
	.byte	0x6
	.byte	0x34
	.4byte	0x26ea
	.uleb128 0x5
	.string	"x"
	.byte	0x6
	.byte	0x36
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0x6
	.byte	0x37
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF464
	.byte	0x6
	.byte	0x39
	.byte	0x1
	.4byte	0x2239
	.4byte	0x2240
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF464
	.byte	0x6
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x2252
	.4byte	0x2263
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Set"
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF465
	.byte	0x1
	.4byte	0x2278
	.4byte	0x2289
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF466
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF467
	.byte	0x1
	.4byte	0x229e
	.4byte	0x22a5
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.byte	0x3f
	.4byte	.LASF469
	.4byte	0x109
	.byte	0x1
	.4byte	0x22be
	.4byte	0x22ca
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.byte	0x40
	.4byte	.LASF470
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x22e3
	.4byte	0x22ef
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.byte	0x41
	.4byte	.LASF472
	.4byte	0x2204
	.byte	0x1
	.4byte	0x2308
	.4byte	0x230f
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.byte	0x42
	.4byte	.LASF474
	.4byte	0x109
	.byte	0x1
	.4byte	0x2328
	.4byte	0x2334
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.byte	0x43
	.4byte	.LASF475
	.4byte	0x2204
	.byte	0x1
	.4byte	0x234d
	.4byte	0x2359
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF476
	.byte	0x6
	.byte	0x44
	.4byte	.LASF477
	.4byte	0x2204
	.byte	0x1
	.4byte	0x2372
	.4byte	0x237e
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x6
	.byte	0x45
	.4byte	.LASF479
	.4byte	0x2204
	.byte	0x1
	.4byte	0x2397
	.4byte	0x23a3
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.byte	0x46
	.4byte	.LASF480
	.4byte	0x2204
	.byte	0x1
	.4byte	0x23bc
	.4byte	0x23c8
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x6
	.byte	0x47
	.4byte	.LASF482
	.4byte	0x2706
	.byte	0x1
	.4byte	0x23e1
	.4byte	0x23ed
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0x6
	.byte	0x48
	.4byte	.LASF484
	.4byte	0x2706
	.byte	0x1
	.4byte	0x2406
	.4byte	0x2412
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.byte	0x49
	.4byte	.LASF486
	.4byte	0x2706
	.byte	0x1
	.4byte	0x242b
	.4byte	0x2437
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF487
	.4byte	0x2706
	.byte	0x1
	.4byte	0x2450
	.4byte	0x245c
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0x6
	.byte	0x4b
	.4byte	.LASF489
	.4byte	0x2706
	.byte	0x1
	.4byte	0x2475
	.4byte	0x2481
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF491
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x249a
	.4byte	0x24a6
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.byte	0x50
	.4byte	.LASF492
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x24bf
	.4byte	0x24d0
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x6
	.byte	0x51
	.4byte	.LASF494
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x24e9
	.4byte	0x24f5
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x6
	.byte	0x52
	.4byte	.LASF496
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x250e
	.4byte	0x251a
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF497
	.byte	0x6
	.byte	0x54
	.4byte	.LASF498
	.4byte	0x109
	.byte	0x1
	.4byte	0x2533
	.4byte	0x253a
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF499
	.byte	0x6
	.byte	0x55
	.4byte	.LASF500
	.4byte	0x109
	.byte	0x1
	.4byte	0x2553
	.4byte	0x255a
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF501
	.byte	0x6
	.byte	0x56
	.4byte	.LASF502
	.4byte	0x109
	.byte	0x1
	.4byte	0x2573
	.4byte	0x257a
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF503
	.byte	0x6
	.byte	0x57
	.4byte	.LASF504
	.4byte	0x109
	.byte	0x1
	.4byte	0x2593
	.4byte	0x259a
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF505
	.byte	0x6
	.byte	0x58
	.4byte	.LASF506
	.4byte	0x109
	.byte	0x1
	.4byte	0x25b3
	.4byte	0x25ba
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF507
	.byte	0x6
	.byte	0x59
	.4byte	.LASF508
	.4byte	0x2706
	.byte	0x1
	.4byte	0x25d3
	.4byte	0x25df
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF509
	.byte	0x6
	.byte	0x5a
	.4byte	.LASF510
	.byte	0x1
	.4byte	0x25f4
	.4byte	0x2605
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.uleb128 0x19
	.4byte	0x26fb
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF511
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF512
	.byte	0x1
	.4byte	0x261a
	.4byte	0x2621
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF513
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF514
	.byte	0x1
	.4byte	0x2636
	.4byte	0x263d
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF515
	.byte	0x6
	.byte	0x5e
	.4byte	.LASF516
	.4byte	0xac
	.byte	0x1
	.4byte	0x2656
	.4byte	0x265d
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.byte	0x60
	.4byte	.LASF518
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x2676
	.4byte	0x267d
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.byte	0x61
	.4byte	.LASF519
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x2696
	.4byte	0x269d
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF520
	.byte	0x6
	.byte	0x62
	.4byte	.LASF521
	.4byte	0xe5
	.byte	0x1
	.4byte	0x26b6
	.4byte	0x26c2
	.uleb128 0x17
	.4byte	0x26f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF522
	.byte	0x6
	.byte	0x64
	.4byte	.LASF523
	.byte	0x1
	.4byte	0x26d3
	.uleb128 0x17
	.4byte	0x26ea
	.byte	0x1
	.uleb128 0x19
	.4byte	0x26fb
	.uleb128 0x19
	.4byte	0x26fb
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2204
	.uleb128 0xb
	.byte	0x4
	.4byte	0x26f6
	.uleb128 0xc
	.4byte	0x2204
	.uleb128 0x24
	.byte	0x4
	.4byte	0x2701
	.uleb128 0xc
	.4byte	0x2204
	.uleb128 0x24
	.byte	0x4
	.4byte	0x2204
	.uleb128 0x3d
	.4byte	.LASF524
	.byte	0xc
	.byte	0x6
	.2byte	0x13c
	.4byte	0x2ec2
	.uleb128 0x13
	.string	"x"
	.byte	0x6
	.2byte	0x13e
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x6
	.2byte	0x13f
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x6
	.2byte	0x140
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF524
	.byte	0x6
	.2byte	0x142
	.byte	0x1
	.4byte	0x2752
	.4byte	0x2759
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF524
	.byte	0x6
	.2byte	0x143
	.byte	0x1
	.byte	0x1
	.4byte	0x276c
	.4byte	0x2782
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0x6
	.2byte	0x145
	.4byte	.LASF635
	.byte	0x1
	.4byte	0x2798
	.4byte	0x27ae
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0x6
	.2byte	0x146
	.4byte	.LASF556
	.byte	0x1
	.4byte	0x27c4
	.4byte	0x27cb
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x148
	.4byte	.LASF525
	.4byte	0x109
	.byte	0x1
	.4byte	0x27e5
	.4byte	0x27f1
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x149
	.4byte	.LASF526
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x280b
	.4byte	0x2817
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x14a
	.4byte	.LASF527
	.4byte	0x270c
	.byte	0x1
	.4byte	0x2831
	.4byte	0x2838
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x6
	.2byte	0x14b
	.4byte	.LASF528
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x2852
	.4byte	0x285e
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x14c
	.4byte	.LASF529
	.4byte	0x109
	.byte	0x1
	.4byte	0x2878
	.4byte	0x2884
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x14d
	.4byte	.LASF530
	.4byte	0x270c
	.byte	0x1
	.4byte	0x289e
	.4byte	0x28aa
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF476
	.byte	0x6
	.2byte	0x14e
	.4byte	.LASF531
	.4byte	0x270c
	.byte	0x1
	.4byte	0x28c4
	.4byte	0x28d0
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0x6
	.2byte	0x14f
	.4byte	.LASF532
	.4byte	0x270c
	.byte	0x1
	.4byte	0x28ea
	.4byte	0x28f6
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x150
	.4byte	.LASF533
	.4byte	0x270c
	.byte	0x1
	.4byte	0x2910
	.4byte	0x291c
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0x6
	.2byte	0x151
	.4byte	.LASF534
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x2936
	.4byte	0x2942
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0x6
	.2byte	0x152
	.4byte	.LASF535
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x295c
	.4byte	0x2968
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x153
	.4byte	.LASF536
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x2982
	.4byte	0x298e
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x154
	.4byte	.LASF537
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x29a8
	.4byte	0x29b4
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0x6
	.2byte	0x155
	.4byte	.LASF538
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x29ce
	.4byte	0x29da
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x159
	.4byte	.LASF539
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x29f4
	.4byte	0x2a00
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x15a
	.4byte	.LASF540
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x2a1a
	.4byte	0x2a2b
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0x6
	.2byte	0x15b
	.4byte	.LASF541
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x2a45
	.4byte	0x2a51
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0x6
	.2byte	0x15c
	.4byte	.LASF542
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x2a6b
	.4byte	0x2a77
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF543
	.byte	0x6
	.2byte	0x15e
	.4byte	.LASF544
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x2a91
	.4byte	0x2a98
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF545
	.byte	0x6
	.2byte	0x15f
	.4byte	.LASF546
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x2ab2
	.4byte	0x2ab9
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF547
	.byte	0x6
	.2byte	0x161
	.4byte	.LASF548
	.4byte	0x270c
	.byte	0x1
	.4byte	0x2ad3
	.4byte	0x2adf
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF547
	.byte	0x6
	.2byte	0x162
	.4byte	.LASF549
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x2af9
	.4byte	0x2b0a
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF497
	.byte	0x6
	.2byte	0x163
	.4byte	.LASF550
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b24
	.4byte	0x2b2b
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF501
	.byte	0x6
	.2byte	0x164
	.4byte	.LASF551
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b45
	.4byte	0x2b4c
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF499
	.byte	0x6
	.2byte	0x165
	.4byte	.LASF552
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b66
	.4byte	0x2b6d
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF503
	.byte	0x6
	.2byte	0x166
	.4byte	.LASF553
	.4byte	0x109
	.byte	0x1
	.4byte	0x2b87
	.4byte	0x2b8e
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF505
	.byte	0x6
	.2byte	0x167
	.4byte	.LASF554
	.4byte	0x109
	.byte	0x1
	.4byte	0x2ba8
	.4byte	0x2baf
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF507
	.byte	0x6
	.2byte	0x168
	.4byte	.LASF555
	.4byte	0x2ed3
	.byte	0x1
	.4byte	0x2bc9
	.4byte	0x2bd5
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF509
	.byte	0x6
	.2byte	0x169
	.4byte	.LASF557
	.byte	0x1
	.4byte	0x2beb
	.4byte	0x2bfc
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x2ed9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF511
	.byte	0x6
	.2byte	0x16a
	.4byte	.LASF558
	.byte	0x1
	.4byte	0x2c12
	.4byte	0x2c19
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF513
	.byte	0x6
	.2byte	0x16b
	.4byte	.LASF559
	.byte	0x1
	.4byte	0x2c2f
	.4byte	0x2c36
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0x6
	.2byte	0x16d
	.4byte	.LASF560
	.4byte	0xac
	.byte	0x1
	.4byte	0x2c50
	.4byte	0x2c57
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF561
	.byte	0x6
	.2byte	0x16f
	.4byte	.LASF562
	.4byte	0x109
	.byte	0x1
	.4byte	0x2c71
	.4byte	0x2c78
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF563
	.byte	0x6
	.2byte	0x170
	.4byte	.LASF564
	.4byte	0x109
	.byte	0x1
	.4byte	0x2c92
	.4byte	0x2c99
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF565
	.byte	0x6
	.2byte	0x171
	.4byte	.LASF566
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x2cb3
	.4byte	0x2cba
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF567
	.byte	0x6
	.2byte	0x172
	.4byte	.LASF568
	.4byte	0x33e5
	.byte	0x1
	.4byte	0x2cd4
	.4byte	0x2cdb
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF569
	.byte	0x6
	.2byte	0x173
	.4byte	.LASF570
	.4byte	0x353e
	.byte	0x1
	.4byte	0x2cf5
	.4byte	0x2cfc
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF571
	.byte	0x6
	.2byte	0x174
	.4byte	.LASF572
	.4byte	0x3d48
	.byte	0x1
	.4byte	0x2d16
	.4byte	0x2d1d
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF571
	.byte	0x6
	.2byte	0x175
	.4byte	.LASF573
	.4byte	0x3d4e
	.byte	0x1
	.4byte	0x2d37
	.4byte	0x2d3e
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x176
	.4byte	.LASF574
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x2d58
	.4byte	0x2d5f
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x177
	.4byte	.LASF575
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x2d79
	.4byte	0x2d80
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF520
	.byte	0x6
	.2byte	0x178
	.4byte	.LASF576
	.4byte	0xe5
	.byte	0x1
	.4byte	0x2d9a
	.4byte	0x2da6
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF577
	.byte	0x6
	.2byte	0x17a
	.4byte	.LASF578
	.byte	0x1
	.4byte	0x2dbc
	.4byte	0x2dcd
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed3
	.uleb128 0x19
	.4byte	0x2ed3
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF579
	.byte	0x6
	.2byte	0x17b
	.4byte	.LASF580
	.byte	0x1
	.4byte	0x2de3
	.4byte	0x2df4
	.uleb128 0x17
	.4byte	0x2ec8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed3
	.uleb128 0x19
	.4byte	0x2ed3
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF581
	.byte	0x6
	.2byte	0x17d
	.4byte	.LASF582
	.byte	0x1
	.4byte	0x2e0a
	.4byte	0x2e1b
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF583
	.byte	0x6
	.2byte	0x17e
	.4byte	.LASF584
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x2e35
	.4byte	0x2e4b
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF585
	.byte	0x6
	.2byte	0x17f
	.4byte	.LASF586
	.byte	0x1
	.4byte	0x2e61
	.4byte	0x2e6d
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF522
	.byte	0x6
	.2byte	0x181
	.4byte	.LASF587
	.byte	0x1
	.4byte	0x2e83
	.4byte	0x2e99
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF588
	.byte	0x6
	.2byte	0x182
	.4byte	.LASF751
	.byte	0x1
	.4byte	0x2eab
	.uleb128 0x17
	.4byte	0x2ec2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x2ed9
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x270c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2ece
	.uleb128 0xc
	.4byte	0x270c
	.uleb128 0x24
	.byte	0x4
	.4byte	0x270c
	.uleb128 0x24
	.byte	0x4
	.4byte	0x2edf
	.uleb128 0xc
	.4byte	0x270c
	.uleb128 0x4
	.4byte	.LASF589
	.byte	0xc
	.byte	0xc
	.byte	0x33
	.4byte	0x33e5
	.uleb128 0x6
	.4byte	.LASF590
	.byte	0xc
	.byte	0x35
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"yaw"
	.byte	0xc
	.byte	0x36
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF591
	.byte	0xc
	.byte	0x37
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF589
	.byte	0xc
	.byte	0x39
	.byte	0x1
	.4byte	0x2f2b
	.4byte	0x2f32
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF589
	.byte	0xc
	.byte	0x3a
	.byte	0x1
	.4byte	0x2f43
	.4byte	0x2f59
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF589
	.byte	0xc
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x2f6b
	.4byte	0x2f77
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Set"
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF592
	.byte	0x1
	.4byte	0x2f8c
	.4byte	0x2fa2
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF466
	.byte	0xc
	.byte	0x3e
	.4byte	.LASF593
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x2fbb
	.4byte	0x2fc2
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.byte	0x40
	.4byte	.LASF594
	.4byte	0x109
	.byte	0x1
	.4byte	0x2fdb
	.4byte	0x2fe7
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.byte	0x41
	.4byte	.LASF595
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x3000
	.4byte	0x300c
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0xc
	.byte	0x42
	.4byte	.LASF596
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x3025
	.4byte	0x302c
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0xc
	.byte	0x43
	.4byte	.LASF597
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x3045
	.4byte	0x3051
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0xc
	.byte	0x44
	.4byte	.LASF598
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x306a
	.4byte	0x3076
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0xc
	.byte	0x45
	.4byte	.LASF599
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x308f
	.4byte	0x309b
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0xc
	.byte	0x46
	.4byte	.LASF600
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x30b4
	.4byte	0x30c0
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0xc
	.byte	0x47
	.4byte	.LASF601
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x30d9
	.4byte	0x30e5
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.byte	0x48
	.4byte	.LASF602
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x30fe
	.4byte	0x310a
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.byte	0x49
	.4byte	.LASF603
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x3123
	.4byte	0x312f
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF476
	.byte	0xc
	.byte	0x4a
	.4byte	.LASF604
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x3148
	.4byte	0x3154
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF485
	.byte	0xc
	.byte	0x4b
	.4byte	.LASF605
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x316d
	.4byte	0x3179
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.byte	0x4f
	.4byte	.LASF606
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3192
	.4byte	0x319e
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.byte	0x50
	.4byte	.LASF607
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x31b7
	.4byte	0x31c8
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0xc
	.byte	0x51
	.4byte	.LASF608
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x31e1
	.4byte	0x31ed
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0xc
	.byte	0x52
	.4byte	.LASF609
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3206
	.4byte	0x3212
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF610
	.byte	0xc
	.byte	0x54
	.4byte	.LASF611
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x322b
	.4byte	0x3232
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF612
	.byte	0xc
	.byte	0x55
	.4byte	.LASF613
	.4byte	0x8d9d
	.byte	0x1
	.4byte	0x324b
	.4byte	0x3252
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF509
	.byte	0xc
	.byte	0x57
	.4byte	.LASF614
	.byte	0x1
	.4byte	0x3267
	.4byte	0x3278
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dae
	.uleb128 0x19
	.4byte	0x8dae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF515
	.byte	0xc
	.byte	0x59
	.4byte	.LASF615
	.4byte	0xac
	.byte	0x1
	.4byte	0x3291
	.4byte	0x3298
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF616
	.byte	0xc
	.byte	0x5b
	.4byte	.LASF617
	.byte	0x1
	.4byte	0x32ad
	.4byte	0x32c3
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec2
	.uleb128 0x19
	.4byte	0x2ec2
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF618
	.byte	0xc
	.byte	0x5c
	.4byte	.LASF619
	.4byte	0x270c
	.byte	0x1
	.4byte	0x32dc
	.4byte	0x32e3
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF620
	.byte	0xc
	.byte	0x5d
	.4byte	.LASF621
	.4byte	0x567e
	.byte	0x1
	.4byte	0x32fc
	.4byte	0x3303
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF622
	.byte	0xc
	.byte	0x5e
	.4byte	.LASF623
	.4byte	0x5e49
	.byte	0x1
	.4byte	0x331c
	.4byte	0x3323
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF569
	.byte	0xc
	.byte	0x5f
	.4byte	.LASF624
	.4byte	0x353e
	.byte	0x1
	.4byte	0x333c
	.4byte	0x3343
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF625
	.byte	0xc
	.byte	0x60
	.4byte	.LASF626
	.4byte	0x6204
	.byte	0x1
	.4byte	0x335c
	.4byte	0x3363
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF627
	.byte	0xc
	.byte	0x61
	.4byte	.LASF628
	.4byte	0x270c
	.byte	0x1
	.4byte	0x337c
	.4byte	0x3383
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.byte	0x62
	.4byte	.LASF629
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x339c
	.4byte	0x33a3
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.byte	0x63
	.4byte	.LASF630
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x33bc
	.4byte	0x33c3
	.uleb128 0x17
	.4byte	0x8d97
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF520
	.byte	0xc
	.byte	0x64
	.4byte	.LASF631
	.4byte	0xe5
	.byte	0x1
	.4byte	0x33d8
	.uleb128 0x17
	.4byte	0x8da3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF632
	.byte	0xc
	.byte	0x6
	.2byte	0x785
	.4byte	0x353e
	.uleb128 0x10
	.4byte	.LASF633
	.byte	0x6
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF634
	.byte	0x6
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"phi"
	.byte	0x6
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF632
	.byte	0x6
	.2byte	0x789
	.byte	0x1
	.4byte	0x3431
	.4byte	0x3438
	.uleb128 0x17
	.4byte	0x50b2
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF632
	.byte	0x6
	.2byte	0x78a
	.byte	0x1
	.byte	0x1
	.4byte	0x344b
	.4byte	0x3461
	.uleb128 0x17
	.4byte	0x50b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0x6
	.2byte	0x78c
	.4byte	.LASF636
	.byte	0x1
	.4byte	0x3477
	.4byte	0x348d
	.uleb128 0x17
	.4byte	0x50b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x78e
	.4byte	.LASF637
	.4byte	0x109
	.byte	0x1
	.4byte	0x34a7
	.4byte	0x34b3
	.uleb128 0x17
	.4byte	0x50b8
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x78f
	.4byte	.LASF638
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x34cd
	.4byte	0x34d9
	.uleb128 0x17
	.4byte	0x50b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x790
	.4byte	.LASF639
	.4byte	0x33e5
	.byte	0x1
	.4byte	0x34f3
	.4byte	0x34fa
	.uleb128 0x17
	.4byte	0x50b8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x6
	.2byte	0x791
	.4byte	.LASF640
	.4byte	0x50c3
	.byte	0x1
	.4byte	0x3514
	.4byte	0x3520
	.uleb128 0x17
	.4byte	0x50b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x50c9
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF641
	.byte	0x6
	.2byte	0x793
	.4byte	.LASF642
	.4byte	0x270c
	.byte	0x1
	.4byte	0x3536
	.uleb128 0x17
	.4byte	0x50b8
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF643
	.byte	0x24
	.byte	0xd
	.2byte	0x14d
	.4byte	0x3d48
	.uleb128 0x46
	.string	"mat"
	.byte	0xd
	.2byte	0x198
	.4byte	0x5636
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF643
	.byte	0xd
	.2byte	0x14f
	.byte	0x1
	.4byte	0x356d
	.4byte	0x3574
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF643
	.byte	0xd
	.2byte	0x150
	.byte	0x1
	.byte	0x1
	.4byte	0x3587
	.4byte	0x359d
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF643
	.byte	0xd
	.2byte	0x151
	.byte	0x1
	.byte	0x1
	.4byte	0x35b0
	.4byte	0x35e4
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF643
	.byte	0xd
	.2byte	0x152
	.byte	0x1
	.byte	0x1
	.4byte	0x35f7
	.4byte	0x3603
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x564c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xd
	.2byte	0x154
	.4byte	.LASF644
	.4byte	0x428c
	.byte	0x1
	.4byte	0x361d
	.4byte	0x3629
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xd
	.2byte	0x155
	.4byte	.LASF645
	.4byte	0x4292
	.byte	0x1
	.4byte	0x3643
	.4byte	0x364f
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0xd
	.2byte	0x156
	.4byte	.LASF646
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3669
	.4byte	0x3670
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xd
	.2byte	0x157
	.4byte	.LASF647
	.4byte	0x353e
	.byte	0x1
	.4byte	0x368a
	.4byte	0x3696
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xd
	.2byte	0x158
	.4byte	.LASF648
	.4byte	0x270c
	.byte	0x1
	.4byte	0x36b0
	.4byte	0x36bc
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xd
	.2byte	0x159
	.4byte	.LASF649
	.4byte	0x353e
	.byte	0x1
	.4byte	0x36d6
	.4byte	0x36e2
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0xd
	.2byte	0x15a
	.4byte	.LASF650
	.4byte	0x353e
	.byte	0x1
	.4byte	0x36fc
	.4byte	0x3708
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0xd
	.2byte	0x15b
	.4byte	.LASF651
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3722
	.4byte	0x372e
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xd
	.2byte	0x15c
	.4byte	.LASF652
	.4byte	0x5678
	.byte	0x1
	.4byte	0x3748
	.4byte	0x3754
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xd
	.2byte	0x15d
	.4byte	.LASF653
	.4byte	0x5678
	.byte	0x1
	.4byte	0x376e
	.4byte	0x377a
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0xd
	.2byte	0x15e
	.4byte	.LASF654
	.4byte	0x5678
	.byte	0x1
	.4byte	0x3794
	.4byte	0x37a0
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0xd
	.2byte	0x15f
	.4byte	.LASF655
	.4byte	0x5678
	.byte	0x1
	.4byte	0x37ba
	.4byte	0x37c6
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xd
	.2byte	0x165
	.4byte	.LASF656
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x37e0
	.4byte	0x37ec
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xd
	.2byte	0x166
	.4byte	.LASF657
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3806
	.4byte	0x3817
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0xd
	.2byte	0x167
	.4byte	.LASF658
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3831
	.4byte	0x383d
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0xd
	.2byte	0x168
	.4byte	.LASF659
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3857
	.4byte	0x3863
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0xd
	.2byte	0x16a
	.4byte	.LASF660
	.byte	0x1
	.4byte	0x3879
	.4byte	0x3880
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF661
	.byte	0xd
	.2byte	0x16b
	.4byte	.LASF662
	.byte	0x1
	.4byte	0x3896
	.4byte	0x389d
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0xd
	.2byte	0x16c
	.4byte	.LASF664
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x38b7
	.4byte	0x38c3
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF665
	.byte	0xd
	.2byte	0x16d
	.4byte	.LASF666
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x38dd
	.4byte	0x38e9
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF667
	.byte	0xd
	.2byte	0x16e
	.4byte	.LASF668
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3903
	.4byte	0x390f
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF669
	.byte	0xd
	.2byte	0x16f
	.4byte	.LASF670
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3929
	.4byte	0x3930
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF671
	.byte	0xd
	.2byte	0x171
	.4byte	.LASF672
	.byte	0x1
	.4byte	0x3946
	.4byte	0x3957
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x4292
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF673
	.byte	0xd
	.2byte	0x172
	.4byte	.LASF674
	.byte	0x1
	.4byte	0x396d
	.4byte	0x397e
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x4292
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF675
	.byte	0xd
	.2byte	0x174
	.4byte	.LASF676
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3998
	.4byte	0x399f
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF545
	.byte	0xd
	.2byte	0x175
	.4byte	.LASF677
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x39b9
	.4byte	0x39c0
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF678
	.byte	0xd
	.2byte	0x177
	.4byte	.LASF679
	.4byte	0x109
	.byte	0x1
	.4byte	0x39da
	.4byte	0x39e1
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF680
	.byte	0xd
	.2byte	0x178
	.4byte	.LASF681
	.4byte	0x109
	.byte	0x1
	.4byte	0x39fb
	.4byte	0x3a02
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF682
	.byte	0xd
	.2byte	0x179
	.4byte	.LASF683
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3a1c
	.4byte	0x3a23
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF684
	.byte	0xd
	.2byte	0x17a
	.4byte	.LASF685
	.4byte	0x5678
	.byte	0x1
	.4byte	0x3a3d
	.4byte	0x3a44
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF686
	.byte	0xd
	.2byte	0x17b
	.4byte	.LASF687
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3a5e
	.4byte	0x3a65
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF688
	.byte	0xd
	.2byte	0x17c
	.4byte	.LASF689
	.4byte	0x5678
	.byte	0x1
	.4byte	0x3a7f
	.4byte	0x3a86
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF690
	.byte	0xd
	.2byte	0x17d
	.4byte	.LASF691
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3aa0
	.4byte	0x3aa7
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF692
	.byte	0xd
	.2byte	0x17e
	.4byte	.LASF693
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3ac1
	.4byte	0x3ac8
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF694
	.byte	0xd
	.2byte	0x17f
	.4byte	.LASF695
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3ae2
	.4byte	0x3ae9
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF696
	.byte	0xd
	.2byte	0x180
	.4byte	.LASF697
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x3b03
	.4byte	0x3b0a
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF698
	.byte	0xd
	.2byte	0x181
	.4byte	.LASF699
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3b24
	.4byte	0x3b30
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF700
	.byte	0xd
	.2byte	0x183
	.4byte	.LASF701
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3b4a
	.4byte	0x3b60
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF702
	.byte	0xd
	.2byte	0x184
	.4byte	.LASF703
	.4byte	0x5678
	.byte	0x1
	.4byte	0x3b7a
	.4byte	0x3b90
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF704
	.byte	0xd
	.2byte	0x185
	.4byte	.LASF705
	.4byte	0x353e
	.byte	0x1
	.4byte	0x3baa
	.4byte	0x3bb6
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF706
	.byte	0xd
	.2byte	0x186
	.4byte	.LASF707
	.4byte	0x5678
	.byte	0x1
	.4byte	0x3bd0
	.4byte	0x3bdc
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x566d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0xd
	.2byte	0x188
	.4byte	.LASF708
	.4byte	0xac
	.byte	0x1
	.4byte	0x3bf6
	.4byte	0x3bfd
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF565
	.byte	0xd
	.2byte	0x18a
	.4byte	.LASF709
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x3c17
	.4byte	0x3c1e
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF620
	.byte	0xd
	.2byte	0x18b
	.4byte	.LASF710
	.4byte	0x567e
	.byte	0x1
	.4byte	0x3c38
	.4byte	0x3c3f
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF711
	.byte	0xd
	.2byte	0x18c
	.4byte	.LASF712
	.4byte	0x5b94
	.byte	0x1
	.4byte	0x3c59
	.4byte	0x3c60
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF622
	.byte	0xd
	.2byte	0x18d
	.4byte	.LASF713
	.4byte	0x5e49
	.byte	0x1
	.4byte	0x3c7a
	.4byte	0x3c81
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF625
	.byte	0xd
	.2byte	0x18e
	.4byte	.LASF714
	.4byte	0x6204
	.byte	0x1
	.4byte	0x3c9b
	.4byte	0x3ca2
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF627
	.byte	0xd
	.2byte	0x18f
	.4byte	.LASF715
	.4byte	0x270c
	.byte	0x1
	.4byte	0x3cbc
	.4byte	0x3cc3
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xd
	.2byte	0x190
	.4byte	.LASF716
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x3cdd
	.4byte	0x3ce4
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xd
	.2byte	0x191
	.4byte	.LASF717
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x3cfe
	.4byte	0x3d05
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF520
	.byte	0xd
	.2byte	0x192
	.4byte	.LASF718
	.4byte	0xe5
	.byte	0x1
	.4byte	0x3d1f
	.4byte	0x3d2b
	.uleb128 0x17
	.4byte	0x5662
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.4byte	.LASF285
	.4byte	0xde5c
	.byte	0x1
	.byte	0x1
	.4byte	0x3d3b
	.uleb128 0x17
	.4byte	0x5646
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.4byte	0x26f6
	.uleb128 0x24
	.byte	0x4
	.4byte	0x2204
	.uleb128 0x3d
	.4byte	.LASF719
	.byte	0x10
	.byte	0x6
	.2byte	0x328
	.4byte	0x426a
	.uleb128 0x13
	.string	"x"
	.byte	0x6
	.2byte	0x32a
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x6
	.2byte	0x32b
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x6
	.2byte	0x32c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"w"
	.byte	0x6
	.2byte	0x32d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF719
	.byte	0x6
	.2byte	0x32f
	.byte	0x1
	.4byte	0x3da7
	.4byte	0x3dae
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF719
	.byte	0x6
	.2byte	0x330
	.byte	0x1
	.byte	0x1
	.4byte	0x3dc1
	.4byte	0x3ddc
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0x6
	.2byte	0x332
	.4byte	.LASF720
	.byte	0x1
	.4byte	0x3df2
	.4byte	0x3e0d
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0x6
	.2byte	0x333
	.4byte	.LASF721
	.byte	0x1
	.4byte	0x3e23
	.4byte	0x3e2a
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x335
	.4byte	.LASF722
	.4byte	0x109
	.byte	0x1
	.4byte	0x3e44
	.4byte	0x3e50
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x336
	.4byte	.LASF723
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x3e6a
	.4byte	0x3e76
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x337
	.4byte	.LASF724
	.4byte	0x3d54
	.byte	0x1
	.4byte	0x3e90
	.4byte	0x3e97
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x338
	.4byte	.LASF725
	.4byte	0x109
	.byte	0x1
	.4byte	0x3eb1
	.4byte	0x3ebd
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x339
	.4byte	.LASF726
	.4byte	0x3d54
	.byte	0x1
	.4byte	0x3ed7
	.4byte	0x3ee3
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF476
	.byte	0x6
	.2byte	0x33a
	.4byte	.LASF727
	.4byte	0x3d54
	.byte	0x1
	.4byte	0x3efd
	.4byte	0x3f09
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0x6
	.2byte	0x33b
	.4byte	.LASF728
	.4byte	0x3d54
	.byte	0x1
	.4byte	0x3f23
	.4byte	0x3f2f
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x33c
	.4byte	.LASF729
	.4byte	0x3d54
	.byte	0x1
	.4byte	0x3f49
	.4byte	0x3f55
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0x6
	.2byte	0x33d
	.4byte	.LASF730
	.4byte	0x4286
	.byte	0x1
	.4byte	0x3f6f
	.4byte	0x3f7b
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0x6
	.2byte	0x33e
	.4byte	.LASF731
	.4byte	0x4286
	.byte	0x1
	.4byte	0x3f95
	.4byte	0x3fa1
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x33f
	.4byte	.LASF732
	.4byte	0x4286
	.byte	0x1
	.4byte	0x3fbb
	.4byte	0x3fc7
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x340
	.4byte	.LASF733
	.4byte	0x4286
	.byte	0x1
	.4byte	0x3fe1
	.4byte	0x3fed
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0x6
	.2byte	0x341
	.4byte	.LASF734
	.4byte	0x4286
	.byte	0x1
	.4byte	0x4007
	.4byte	0x4013
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x345
	.4byte	.LASF735
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x402d
	.4byte	0x4039
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x346
	.4byte	.LASF736
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x4053
	.4byte	0x4064
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0x6
	.2byte	0x347
	.4byte	.LASF737
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x407e
	.4byte	0x408a
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0x6
	.2byte	0x348
	.4byte	.LASF738
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x40a4
	.4byte	0x40b0
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF497
	.byte	0x6
	.2byte	0x34a
	.4byte	.LASF739
	.4byte	0x109
	.byte	0x1
	.4byte	0x40ca
	.4byte	0x40d1
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF501
	.byte	0x6
	.2byte	0x34b
	.4byte	.LASF740
	.4byte	0x109
	.byte	0x1
	.4byte	0x40eb
	.4byte	0x40f2
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF503
	.byte	0x6
	.2byte	0x34c
	.4byte	.LASF741
	.4byte	0x109
	.byte	0x1
	.4byte	0x410c
	.4byte	0x4113
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF505
	.byte	0x6
	.2byte	0x34d
	.4byte	.LASF742
	.4byte	0x109
	.byte	0x1
	.4byte	0x412d
	.4byte	0x4134
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0x6
	.2byte	0x34f
	.4byte	.LASF743
	.4byte	0xac
	.byte	0x1
	.4byte	0x414e
	.4byte	0x4155
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF571
	.byte	0x6
	.2byte	0x351
	.4byte	.LASF744
	.4byte	0x3d48
	.byte	0x1
	.4byte	0x416f
	.4byte	0x4176
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF571
	.byte	0x6
	.2byte	0x352
	.4byte	.LASF745
	.4byte	0x3d4e
	.byte	0x1
	.4byte	0x4190
	.4byte	0x4197
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF641
	.byte	0x6
	.2byte	0x353
	.4byte	.LASF746
	.4byte	0x428c
	.byte	0x1
	.4byte	0x41b1
	.4byte	0x41b8
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF641
	.byte	0x6
	.2byte	0x354
	.4byte	.LASF747
	.4byte	0x4292
	.byte	0x1
	.4byte	0x41d2
	.4byte	0x41d9
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x355
	.4byte	.LASF748
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x41f3
	.4byte	0x41fa
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x356
	.4byte	.LASF749
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x4214
	.4byte	0x421b
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF520
	.byte	0x6
	.2byte	0x357
	.4byte	.LASF750
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4235
	.4byte	0x4241
	.uleb128 0x17
	.4byte	0x4270
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF522
	.byte	0x6
	.2byte	0x359
	.4byte	.LASF752
	.byte	0x1
	.4byte	0x4253
	.uleb128 0x17
	.4byte	0x426a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x427b
	.uleb128 0x19
	.4byte	0x427b
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3d54
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4276
	.uleb128 0xc
	.4byte	0x3d54
	.uleb128 0x24
	.byte	0x4
	.4byte	0x4281
	.uleb128 0xc
	.4byte	0x3d54
	.uleb128 0x24
	.byte	0x4
	.4byte	0x3d54
	.uleb128 0x24
	.byte	0x4
	.4byte	0x2ece
	.uleb128 0x24
	.byte	0x4
	.4byte	0x270c
	.uleb128 0x3d
	.4byte	.LASF753
	.byte	0x14
	.byte	0x6
	.2byte	0x42a
	.4byte	0x44bc
	.uleb128 0x13
	.string	"x"
	.byte	0x6
	.2byte	0x42c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x6
	.2byte	0x42d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x6
	.2byte	0x42e
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"s"
	.byte	0x6
	.2byte	0x42f
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"t"
	.byte	0x6
	.2byte	0x430
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF753
	.byte	0x6
	.2byte	0x432
	.byte	0x1
	.4byte	0x42f8
	.4byte	0x42ff
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF753
	.byte	0x6
	.2byte	0x433
	.byte	0x1
	.byte	0x1
	.4byte	0x4312
	.4byte	0x4323
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x3d48
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF753
	.byte	0x6
	.2byte	0x434
	.byte	0x1
	.byte	0x1
	.4byte	0x4336
	.4byte	0x4356
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x436
	.4byte	.LASF754
	.4byte	0x109
	.byte	0x1
	.4byte	0x4370
	.4byte	0x437c
	.uleb128 0x17
	.4byte	0x44c2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x437
	.4byte	.LASF755
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x4396
	.4byte	0x43a2
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x6
	.2byte	0x438
	.4byte	.LASF756
	.4byte	0x44cd
	.byte	0x1
	.4byte	0x43bc
	.4byte	0x43c8
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0x6
	.2byte	0x43a
	.4byte	.LASF757
	.4byte	0xac
	.byte	0x1
	.4byte	0x43e2
	.4byte	0x43e9
	.uleb128 0x17
	.4byte	0x44c2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF641
	.byte	0x6
	.2byte	0x43c
	.4byte	.LASF758
	.4byte	0x428c
	.byte	0x1
	.4byte	0x4403
	.4byte	0x440a
	.uleb128 0x17
	.4byte	0x44c2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF641
	.byte	0x6
	.2byte	0x43d
	.4byte	.LASF759
	.4byte	0x4292
	.byte	0x1
	.4byte	0x4424
	.4byte	0x442b
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x43e
	.4byte	.LASF760
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x4445
	.4byte	0x444c
	.uleb128 0x17
	.4byte	0x44c2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x43f
	.4byte	.LASF761
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x4466
	.4byte	0x446d
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF520
	.byte	0x6
	.2byte	0x440
	.4byte	.LASF762
	.4byte	0xe5
	.byte	0x1
	.4byte	0x4487
	.4byte	0x4493
	.uleb128 0x17
	.4byte	0x44c2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.4byte	.LASF522
	.byte	0x6
	.2byte	0x442
	.4byte	.LASF763
	.byte	0x1
	.4byte	0x44a5
	.uleb128 0x17
	.4byte	0x44bc
	.byte	0x1
	.uleb128 0x19
	.4byte	0x44d3
	.uleb128 0x19
	.4byte	0x44d3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4298
	.uleb128 0xb
	.byte	0x4
	.4byte	0x44c8
	.uleb128 0xc
	.4byte	0x4298
	.uleb128 0x24
	.byte	0x4
	.4byte	0x4298
	.uleb128 0x24
	.byte	0x4
	.4byte	0x44d9
	.uleb128 0xc
	.4byte	0x4298
	.uleb128 0x3d
	.4byte	.LASF764
	.byte	0x18
	.byte	0x6
	.2byte	0x486
	.4byte	0x4977
	.uleb128 0x46
	.string	"p"
	.byte	0x6
	.2byte	0x4b1
	.4byte	0x4977
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF764
	.byte	0x6
	.2byte	0x488
	.byte	0x1
	.4byte	0x450b
	.4byte	0x4512
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF764
	.byte	0x6
	.2byte	0x489
	.byte	0x1
	.byte	0x1
	.4byte	0x4525
	.4byte	0x4531
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0x20d8
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF764
	.byte	0x6
	.2byte	0x48a
	.byte	0x1
	.byte	0x1
	.4byte	0x4544
	.4byte	0x4569
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0x6
	.2byte	0x48c
	.4byte	.LASF765
	.byte	0x1
	.4byte	0x457f
	.4byte	0x45a4
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0x6
	.2byte	0x48d
	.4byte	.LASF766
	.byte	0x1
	.4byte	0x45ba
	.4byte	0x45c1
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x48f
	.4byte	.LASF767
	.4byte	0x109
	.byte	0x1
	.4byte	0x45db
	.4byte	0x45e7
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x490
	.4byte	.LASF768
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x4601
	.4byte	0x460d
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x491
	.4byte	.LASF769
	.4byte	0x44de
	.byte	0x1
	.4byte	0x4627
	.4byte	0x462e
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x492
	.4byte	.LASF770
	.4byte	0x44de
	.byte	0x1
	.4byte	0x4648
	.4byte	0x4654
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF476
	.byte	0x6
	.2byte	0x493
	.4byte	.LASF771
	.4byte	0x44de
	.byte	0x1
	.4byte	0x466e
	.4byte	0x467a
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x494
	.4byte	.LASF772
	.4byte	0x109
	.byte	0x1
	.4byte	0x4694
	.4byte	0x46a0
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x495
	.4byte	.LASF773
	.4byte	0x44de
	.byte	0x1
	.4byte	0x46ba
	.4byte	0x46c6
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0x6
	.2byte	0x496
	.4byte	.LASF774
	.4byte	0x44de
	.byte	0x1
	.4byte	0x46e0
	.4byte	0x46ec
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0x6
	.2byte	0x497
	.4byte	.LASF775
	.4byte	0x49a3
	.byte	0x1
	.4byte	0x4706
	.4byte	0x4712
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x498
	.4byte	.LASF776
	.4byte	0x49a3
	.byte	0x1
	.4byte	0x472c
	.4byte	0x4738
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0x6
	.2byte	0x499
	.4byte	.LASF777
	.4byte	0x49a3
	.byte	0x1
	.4byte	0x4752
	.4byte	0x475e
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0x6
	.2byte	0x49a
	.4byte	.LASF778
	.4byte	0x49a3
	.byte	0x1
	.4byte	0x4778
	.4byte	0x4784
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x49e
	.4byte	.LASF779
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x479e
	.4byte	0x47aa
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x49f
	.4byte	.LASF780
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x47c4
	.4byte	0x47d5
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0x6
	.2byte	0x4a0
	.4byte	.LASF781
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x47ef
	.4byte	0x47fb
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0x6
	.2byte	0x4a1
	.4byte	.LASF782
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x4815
	.4byte	0x4821
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4998
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF497
	.byte	0x6
	.2byte	0x4a3
	.4byte	.LASF783
	.4byte	0x109
	.byte	0x1
	.4byte	0x483b
	.4byte	0x4842
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF501
	.byte	0x6
	.2byte	0x4a4
	.4byte	.LASF784
	.4byte	0x109
	.byte	0x1
	.4byte	0x485c
	.4byte	0x4863
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF503
	.byte	0x6
	.2byte	0x4a5
	.4byte	.LASF785
	.4byte	0x109
	.byte	0x1
	.4byte	0x487d
	.4byte	0x4884
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF505
	.byte	0x6
	.2byte	0x4a6
	.4byte	.LASF786
	.4byte	0x109
	.byte	0x1
	.4byte	0x489e
	.4byte	0x48a5
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0x6
	.2byte	0x4a8
	.4byte	.LASF787
	.4byte	0xac
	.byte	0x1
	.4byte	0x48bf
	.4byte	0x48c6
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x4aa
	.4byte	.LASF789
	.4byte	0x428c
	.byte	0x1
	.4byte	0x48e0
	.4byte	0x48ec
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x4ab
	.4byte	.LASF790
	.4byte	0x4292
	.byte	0x1
	.4byte	0x4906
	.4byte	0x4912
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x4ac
	.4byte	.LASF791
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x492c
	.4byte	0x4933
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x4ad
	.4byte	.LASF792
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x494d
	.4byte	0x4954
	.uleb128 0x17
	.4byte	0x4987
	.byte	0x1
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF520
	.byte	0x6
	.2byte	0x4ae
	.4byte	.LASF793
	.4byte	0xe5
	.byte	0x1
	.4byte	0x496a
	.uleb128 0x17
	.4byte	0x498d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x4987
	.uleb128 0xa
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x44de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4993
	.uleb128 0xc
	.4byte	0x44de
	.uleb128 0x24
	.byte	0x4
	.4byte	0x499e
	.uleb128 0xc
	.4byte	0x44de
	.uleb128 0x24
	.byte	0x4
	.4byte	0x44de
	.uleb128 0x3d
	.4byte	.LASF794
	.byte	0xc
	.byte	0x6
	.2byte	0x59b
	.4byte	0x5073
	.uleb128 0x48
	.4byte	.LASF795
	.byte	0x6
	.2byte	0x5d5
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF796
	.byte	0x6
	.2byte	0x5d6
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x46
	.string	"p"
	.byte	0x6
	.2byte	0x5d7
	.4byte	0x21fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF797
	.byte	0x6
	.2byte	0x5d9
	.4byte	0x5073
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF798
	.byte	0x6
	.2byte	0x5da
	.4byte	0x21fe
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF799
	.byte	0x6
	.2byte	0x5db
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF794
	.byte	0x6
	.2byte	0x59f
	.byte	0x1
	.4byte	0x4a23
	.4byte	0x4a2a
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF794
	.byte	0x6
	.2byte	0x5a0
	.byte	0x1
	.byte	0x1
	.4byte	0x4a3d
	.4byte	0x4a49
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF794
	.byte	0x6
	.2byte	0x5a1
	.byte	0x1
	.byte	0x1
	.4byte	0x4a5c
	.4byte	0x4a6d
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF800
	.byte	0x6
	.2byte	0x5a2
	.byte	0x1
	.4byte	0x4a7f
	.4byte	0x4a8c
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x5a4
	.4byte	.LASF801
	.4byte	0x109
	.byte	0x1
	.4byte	0x4aa6
	.4byte	0x4ab2
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x6
	.2byte	0x5a5
	.4byte	.LASF802
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x4acc
	.4byte	0x4ad8
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x5a6
	.4byte	.LASF803
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x4af2
	.4byte	0x4af9
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x6
	.2byte	0x5a7
	.4byte	.LASF804
	.4byte	0x5095
	.byte	0x1
	.4byte	0x4b13
	.4byte	0x4b1f
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x5a8
	.4byte	.LASF805
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x4b39
	.4byte	0x4b45
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF476
	.byte	0x6
	.2byte	0x5a9
	.4byte	.LASF806
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x4b5f
	.4byte	0x4b6b
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0x6
	.2byte	0x5aa
	.4byte	.LASF807
	.4byte	0x109
	.byte	0x1
	.4byte	0x4b85
	.4byte	0x4b91
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0x6
	.2byte	0x5ab
	.4byte	.LASF808
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x4bab
	.4byte	0x4bb7
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0x6
	.2byte	0x5ac
	.4byte	.LASF809
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x4bd1
	.4byte	0x4bdd
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0x6
	.2byte	0x5ad
	.4byte	.LASF810
	.4byte	0x5095
	.byte	0x1
	.4byte	0x4bf7
	.4byte	0x4c03
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF485
	.byte	0x6
	.2byte	0x5ae
	.4byte	.LASF811
	.4byte	0x5095
	.byte	0x1
	.4byte	0x4c1d
	.4byte	0x4c29
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0x6
	.2byte	0x5af
	.4byte	.LASF812
	.4byte	0x5095
	.byte	0x1
	.4byte	0x4c43
	.4byte	0x4c4f
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0x6
	.2byte	0x5b0
	.4byte	.LASF813
	.4byte	0x5095
	.byte	0x1
	.4byte	0x4c69
	.4byte	0x4c75
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x5b4
	.4byte	.LASF814
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x4c8f
	.4byte	0x4c9b
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x6
	.2byte	0x5b5
	.4byte	.LASF815
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x4cb5
	.4byte	0x4cc6
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0x6
	.2byte	0x5b6
	.4byte	.LASF816
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x4ce0
	.4byte	0x4cec
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0x6
	.2byte	0x5b7
	.4byte	.LASF817
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x4d06
	.4byte	0x4d12
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x509b
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF818
	.byte	0x6
	.2byte	0x5b9
	.4byte	.LASF819
	.byte	0x1
	.4byte	0x4d28
	.4byte	0x4d34
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF820
	.byte	0x6
	.2byte	0x5ba
	.4byte	.LASF821
	.byte	0x1
	.4byte	0x4d4a
	.4byte	0x4d5b
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF822
	.byte	0x6
	.2byte	0x5bb
	.4byte	.LASF823
	.4byte	0xac
	.byte	0x1
	.4byte	0x4d75
	.4byte	0x4d7c
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF824
	.byte	0x6
	.2byte	0x5bc
	.4byte	.LASF825
	.byte	0x1
	.4byte	0x4d92
	.4byte	0x4da3
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0x6
	.2byte	0x5bd
	.4byte	.LASF826
	.byte	0x1
	.4byte	0x4db9
	.4byte	0x4dc0
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0x6
	.2byte	0x5be
	.4byte	.LASF827
	.byte	0x1
	.4byte	0x4dd6
	.4byte	0x4de2
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF828
	.byte	0x6
	.2byte	0x5bf
	.4byte	.LASF829
	.byte	0x1
	.4byte	0x4df8
	.4byte	0x4e0e
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF828
	.byte	0x6
	.2byte	0x5c0
	.4byte	.LASF830
	.byte	0x1
	.4byte	0x4e24
	.4byte	0x4e3f
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF831
	.byte	0x6
	.2byte	0x5c1
	.4byte	.LASF832
	.byte	0x1
	.4byte	0x4e55
	.4byte	0x4e5c
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF509
	.byte	0x6
	.2byte	0x5c2
	.4byte	.LASF833
	.byte	0x1
	.4byte	0x4e72
	.4byte	0x4e83
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF834
	.byte	0x6
	.2byte	0x5c3
	.4byte	.LASF835
	.4byte	0x5095
	.byte	0x1
	.4byte	0x4e9d
	.4byte	0x4eae
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF497
	.byte	0x6
	.2byte	0x5c5
	.4byte	.LASF836
	.4byte	0x109
	.byte	0x1
	.4byte	0x4ec8
	.4byte	0x4ecf
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF501
	.byte	0x6
	.2byte	0x5c6
	.4byte	.LASF837
	.4byte	0x109
	.byte	0x1
	.4byte	0x4ee9
	.4byte	0x4ef0
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF503
	.byte	0x6
	.2byte	0x5c7
	.4byte	.LASF838
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x4f0a
	.4byte	0x4f11
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF839
	.byte	0x6
	.2byte	0x5c8
	.4byte	.LASF840
	.4byte	0x109
	.byte	0x1
	.4byte	0x4f2b
	.4byte	0x4f32
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0x6
	.2byte	0x5ca
	.4byte	.LASF841
	.4byte	0xac
	.byte	0x1
	.4byte	0x4f4c
	.4byte	0x4f53
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x5cc
	.4byte	.LASF842
	.4byte	0x428c
	.byte	0x1
	.4byte	0x4f6d
	.4byte	0x4f79
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF788
	.byte	0x6
	.2byte	0x5cd
	.4byte	.LASF843
	.4byte	0x4292
	.byte	0x1
	.4byte	0x4f93
	.4byte	0x4f9f
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF844
	.byte	0x6
	.2byte	0x5ce
	.4byte	.LASF845
	.4byte	0x50a6
	.byte	0x1
	.4byte	0x4fb9
	.4byte	0x4fc5
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF844
	.byte	0x6
	.2byte	0x5cf
	.4byte	.LASF846
	.4byte	0x50ac
	.byte	0x1
	.4byte	0x4fdf
	.4byte	0x4feb
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x5d0
	.4byte	.LASF847
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x5005
	.4byte	0x500c
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x6
	.2byte	0x5d1
	.4byte	.LASF848
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x5026
	.4byte	0x502d
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF520
	.byte	0x6
	.2byte	0x5d2
	.4byte	.LASF849
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5047
	.4byte	0x5053
	.uleb128 0x17
	.4byte	0x508a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF850
	.byte	0x6
	.2byte	0x5de
	.4byte	.LASF851
	.byte	0x3
	.byte	0x1
	.4byte	0x5066
	.uleb128 0x17
	.4byte	0x5084
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x5084
	.uleb128 0x23
	.4byte	0x34
	.2byte	0x403
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x49a9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5090
	.uleb128 0xc
	.4byte	0x49a9
	.uleb128 0x24
	.byte	0x4
	.4byte	0x49a9
	.uleb128 0x24
	.byte	0x4
	.4byte	0x50a1
	.uleb128 0xc
	.4byte	0x49a9
	.uleb128 0x24
	.byte	0x4
	.4byte	0x4993
	.uleb128 0x24
	.byte	0x4
	.4byte	0x44de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x33e5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x50be
	.uleb128 0xc
	.4byte	0x33e5
	.uleb128 0x24
	.byte	0x4
	.4byte	0x33e5
	.uleb128 0x24
	.byte	0x4
	.4byte	0x50cf
	.uleb128 0xc
	.4byte	0x33e5
	.uleb128 0x2d
	.4byte	.LASF852
	.byte	0x10
	.byte	0xd
	.byte	0x37
	.4byte	0x55ee
	.uleb128 0x4b
	.string	"mat"
	.byte	0xd
	.byte	0x6a
	.4byte	0x55ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF852
	.byte	0xd
	.byte	0x39
	.byte	0x1
	.4byte	0x5100
	.4byte	0x5107
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF852
	.byte	0xd
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.4byte	0x5119
	.4byte	0x512a
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3d48
	.uleb128 0x19
	.4byte	0x3d48
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF852
	.byte	0xd
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.4byte	0x513c
	.4byte	0x5157
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF852
	.byte	0xd
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.4byte	0x5169
	.4byte	0x5175
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5604
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0xd
	.byte	0x3e
	.4byte	.LASF853
	.4byte	0x3d48
	.byte	0x1
	.4byte	0x518e
	.4byte	0x519a
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0xd
	.byte	0x3f
	.4byte	.LASF854
	.4byte	0x3d4e
	.byte	0x1
	.4byte	0x51b3
	.4byte	0x51bf
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0xd
	.byte	0x40
	.4byte	.LASF855
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x51d8
	.4byte	0x51df
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0xd
	.byte	0x41
	.4byte	.LASF856
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x51f8
	.4byte	0x5204
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0xd
	.byte	0x42
	.4byte	.LASF857
	.4byte	0x2204
	.byte	0x1
	.4byte	0x521d
	.4byte	0x5229
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x3d48
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0xd
	.byte	0x43
	.4byte	.LASF858
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x5242
	.4byte	0x524e
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0xd
	.byte	0x44
	.4byte	.LASF859
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x5267
	.4byte	0x5273
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0xd
	.byte	0x45
	.4byte	.LASF860
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x528c
	.4byte	0x5298
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0xd
	.byte	0x46
	.4byte	.LASF861
	.4byte	0x5630
	.byte	0x1
	.4byte	0x52b1
	.4byte	0x52bd
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0xd
	.byte	0x47
	.4byte	.LASF862
	.4byte	0x5630
	.byte	0x1
	.4byte	0x52d6
	.4byte	0x52e2
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0xd
	.byte	0x48
	.4byte	.LASF863
	.4byte	0x5630
	.byte	0x1
	.4byte	0x52fb
	.4byte	0x5307
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0xd
	.byte	0x49
	.4byte	.LASF864
	.4byte	0x5630
	.byte	0x1
	.4byte	0x5320
	.4byte	0x532c
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0xd
	.byte	0x4f
	.4byte	.LASF865
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5345
	.4byte	0x5351
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0xd
	.byte	0x50
	.4byte	.LASF866
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x536a
	.4byte	0x537b
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0xd
	.byte	0x51
	.4byte	.LASF867
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5394
	.4byte	0x53a0
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0xd
	.byte	0x52
	.4byte	.LASF868
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x53b9
	.4byte	0x53c5
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x5625
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF466
	.byte	0xd
	.byte	0x54
	.4byte	.LASF869
	.byte	0x1
	.4byte	0x53da
	.4byte	0x53e1
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF661
	.byte	0xd
	.byte	0x55
	.4byte	.LASF870
	.byte	0x1
	.4byte	0x53f6
	.4byte	0x53fd
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF663
	.byte	0xd
	.byte	0x56
	.4byte	.LASF871
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5416
	.4byte	0x5422
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF665
	.byte	0xd
	.byte	0x57
	.4byte	.LASF872
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x543b
	.4byte	0x5447
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF667
	.byte	0xd
	.byte	0x58
	.4byte	.LASF873
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5460
	.4byte	0x546c
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF678
	.byte	0xd
	.byte	0x5a
	.4byte	.LASF874
	.4byte	0x109
	.byte	0x1
	.4byte	0x5485
	.4byte	0x548c
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF680
	.byte	0xd
	.byte	0x5b
	.4byte	.LASF875
	.4byte	0x109
	.byte	0x1
	.4byte	0x54a5
	.4byte	0x54ac
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF686
	.byte	0xd
	.byte	0x5c
	.4byte	.LASF876
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x54c5
	.4byte	0x54cc
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF688
	.byte	0xd
	.byte	0x5d
	.4byte	.LASF877
	.4byte	0x5630
	.byte	0x1
	.4byte	0x54e5
	.4byte	0x54ec
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF690
	.byte	0xd
	.byte	0x5e
	.4byte	.LASF878
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x5505
	.4byte	0x550c
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF692
	.byte	0xd
	.byte	0x5f
	.4byte	.LASF879
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5525
	.4byte	0x552c
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF694
	.byte	0xd
	.byte	0x60
	.4byte	.LASF880
	.4byte	0x50d4
	.byte	0x1
	.4byte	0x5545
	.4byte	0x554c
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF696
	.byte	0xd
	.byte	0x61
	.4byte	.LASF881
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5565
	.4byte	0x556c
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF515
	.byte	0xd
	.byte	0x63
	.4byte	.LASF882
	.4byte	0xac
	.byte	0x1
	.4byte	0x5585
	.4byte	0x558c
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0xd
	.byte	0x65
	.4byte	.LASF883
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x55a5
	.4byte	0x55ac
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0xd
	.byte	0x66
	.4byte	.LASF884
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x55c5
	.4byte	0x55cc
	.uleb128 0x17
	.4byte	0x55fe
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF520
	.byte	0xd
	.byte	0x67
	.4byte	.LASF885
	.4byte	0xe5
	.byte	0x1
	.4byte	0x55e1
	.uleb128 0x17
	.4byte	0x561a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x2204
	.4byte	0x55fe
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x50d4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x560a
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x561a
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5620
	.uleb128 0xc
	.4byte	0x50d4
	.uleb128 0x24
	.byte	0x4
	.4byte	0x562b
	.uleb128 0xc
	.4byte	0x50d4
	.uleb128 0x24
	.byte	0x4
	.4byte	0x50d4
	.uleb128 0x9
	.4byte	0x270c
	.4byte	0x5646
	.uleb128 0xa
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x353e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5652
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x5662
	.uleb128 0xa
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5668
	.uleb128 0xc
	.4byte	0x353e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x5673
	.uleb128 0xc
	.4byte	0x353e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x353e
	.uleb128 0x4
	.4byte	.LASF886
	.byte	0x10
	.byte	0x22
	.byte	0x30
	.4byte	0x5b94
	.uleb128 0x5
	.string	"x"
	.byte	0x22
	.byte	0x32
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0x22
	.byte	0x33
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"z"
	.byte	0x22
	.byte	0x34
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"w"
	.byte	0x22
	.byte	0x35
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF886
	.byte	0x22
	.byte	0x37
	.byte	0x1
	.4byte	0x56cb
	.4byte	0x56d2
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF886
	.byte	0x22
	.byte	0x38
	.byte	0x1
	.4byte	0x56e3
	.4byte	0x56fe
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Set"
	.byte	0x22
	.byte	0x3a
	.4byte	.LASF887
	.byte	0x1
	.4byte	0x5713
	.4byte	0x572e
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x22
	.byte	0x3c
	.4byte	.LASF888
	.4byte	0x109
	.byte	0x1
	.4byte	0x5747
	.4byte	0x5753
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x22
	.byte	0x3d
	.4byte	.LASF889
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x576c
	.4byte	0x5778
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x22
	.byte	0x3e
	.4byte	.LASF890
	.4byte	0x567e
	.byte	0x1
	.4byte	0x5791
	.4byte	0x5798
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0x22
	.byte	0x3f
	.4byte	.LASF891
	.4byte	0x8dca
	.byte	0x1
	.4byte	0x57b1
	.4byte	0x57bd
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x22
	.byte	0x40
	.4byte	.LASF892
	.4byte	0x567e
	.byte	0x1
	.4byte	0x57d6
	.4byte	0x57e2
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x22
	.byte	0x41
	.4byte	.LASF893
	.4byte	0x8dca
	.byte	0x1
	.4byte	0x57fb
	.4byte	0x5807
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x22
	.byte	0x42
	.4byte	.LASF894
	.4byte	0x567e
	.byte	0x1
	.4byte	0x5820
	.4byte	0x582c
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0x22
	.byte	0x43
	.4byte	.LASF895
	.4byte	0x8dca
	.byte	0x1
	.4byte	0x5845
	.4byte	0x5851
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x22
	.byte	0x44
	.4byte	.LASF896
	.4byte	0x567e
	.byte	0x1
	.4byte	0x586a
	.4byte	0x5876
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x22
	.byte	0x45
	.4byte	.LASF897
	.4byte	0x270c
	.byte	0x1
	.4byte	0x588f
	.4byte	0x589b
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x22
	.byte	0x46
	.4byte	.LASF898
	.4byte	0x567e
	.byte	0x1
	.4byte	0x58b4
	.4byte	0x58c0
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0x22
	.byte	0x47
	.4byte	.LASF899
	.4byte	0x8dca
	.byte	0x1
	.4byte	0x58d9
	.4byte	0x58e5
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0x22
	.byte	0x48
	.4byte	.LASF900
	.4byte	0x8dca
	.byte	0x1
	.4byte	0x58fe
	.4byte	0x590a
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x22
	.byte	0x4d
	.4byte	.LASF901
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5923
	.4byte	0x592f
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x22
	.byte	0x4e
	.4byte	.LASF902
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5948
	.4byte	0x5959
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x22
	.byte	0x4f
	.4byte	.LASF903
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5972
	.4byte	0x597e
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x22
	.byte	0x50
	.4byte	.LASF904
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5997
	.4byte	0x59a3
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF690
	.byte	0x22
	.byte	0x52
	.4byte	.LASF905
	.4byte	0x567e
	.byte	0x1
	.4byte	0x59bc
	.4byte	0x59c3
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF497
	.byte	0x22
	.byte	0x53
	.4byte	.LASF906
	.4byte	0x109
	.byte	0x1
	.4byte	0x59dc
	.4byte	0x59e3
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF503
	.byte	0x22
	.byte	0x54
	.4byte	.LASF907
	.4byte	0x8dca
	.byte	0x1
	.4byte	0x59fc
	.4byte	0x5a03
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF908
	.byte	0x22
	.byte	0x56
	.4byte	.LASF909
	.4byte	0x109
	.byte	0x1
	.4byte	0x5a1c
	.4byte	0x5a23
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF515
	.byte	0x22
	.byte	0x57
	.4byte	.LASF910
	.4byte	0xac
	.byte	0x1
	.4byte	0x5a3c
	.4byte	0x5a43
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF565
	.byte	0x22
	.byte	0x59
	.4byte	.LASF911
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x5a5c
	.4byte	0x5a63
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF622
	.byte	0x22
	.byte	0x5a
	.4byte	.LASF912
	.4byte	0x5e49
	.byte	0x1
	.4byte	0x5a7c
	.4byte	0x5a83
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF569
	.byte	0x22
	.byte	0x5b
	.4byte	.LASF913
	.4byte	0x353e
	.byte	0x1
	.4byte	0x5a9c
	.4byte	0x5aa3
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF625
	.byte	0x22
	.byte	0x5c
	.4byte	.LASF914
	.4byte	0x6204
	.byte	0x1
	.4byte	0x5abc
	.4byte	0x5ac3
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF711
	.byte	0x22
	.byte	0x5d
	.4byte	.LASF915
	.4byte	0x5b94
	.byte	0x1
	.4byte	0x5adc
	.4byte	0x5ae3
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF627
	.byte	0x22
	.byte	0x5e
	.4byte	.LASF916
	.4byte	0x270c
	.byte	0x1
	.4byte	0x5afc
	.4byte	0x5b03
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0x22
	.byte	0x5f
	.4byte	.LASF917
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x5b1c
	.4byte	0x5b23
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0x22
	.byte	0x60
	.4byte	.LASF918
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x5b3c
	.4byte	0x5b43
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF520
	.byte	0x22
	.byte	0x61
	.4byte	.LASF919
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5b5c
	.4byte	0x5b68
	.uleb128 0x17
	.4byte	0x8dbf
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF920
	.byte	0x22
	.byte	0x63
	.4byte	.LASF921
	.4byte	0x8dca
	.byte	0x1
	.4byte	0x5b7d
	.uleb128 0x17
	.4byte	0x8db9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dd0
	.uleb128 0x19
	.4byte	0x8dd0
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF922
	.byte	0xc
	.byte	0x22
	.2byte	0x132
	.4byte	0x5e49
	.uleb128 0x13
	.string	"x"
	.byte	0x22
	.2byte	0x134
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x22
	.2byte	0x135
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x22
	.2byte	0x136
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF922
	.byte	0x22
	.2byte	0x138
	.byte	0x1
	.4byte	0x5bda
	.4byte	0x5be1
	.uleb128 0x17
	.4byte	0x8ddb
	.byte	0x1
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF922
	.byte	0x22
	.2byte	0x139
	.byte	0x1
	.4byte	0x5bf3
	.4byte	0x5c09
	.uleb128 0x17
	.4byte	0x8ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0x22
	.2byte	0x13b
	.4byte	.LASF923
	.byte	0x1
	.4byte	0x5c1f
	.4byte	0x5c35
	.uleb128 0x17
	.4byte	0x8ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x22
	.2byte	0x13d
	.4byte	.LASF924
	.4byte	0x109
	.byte	0x1
	.4byte	0x5c4f
	.4byte	0x5c5b
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x22
	.2byte	0x13e
	.4byte	.LASF925
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x5c75
	.4byte	0x5c81
	.uleb128 0x17
	.4byte	0x8ddb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x22
	.2byte	0x140
	.4byte	.LASF926
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5c9b
	.4byte	0x5ca7
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dec
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0x22
	.2byte	0x141
	.4byte	.LASF927
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5cc1
	.4byte	0x5cd2
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dec
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0x22
	.2byte	0x142
	.4byte	.LASF928
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5cec
	.4byte	0x5cf8
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dec
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0x22
	.2byte	0x143
	.4byte	.LASF929
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x5d12
	.4byte	0x5d1e
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8dec
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0x22
	.2byte	0x145
	.4byte	.LASF930
	.4byte	0xac
	.byte	0x1
	.4byte	0x5d38
	.4byte	0x5d3f
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF565
	.byte	0x22
	.2byte	0x147
	.4byte	.LASF931
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x5d59
	.4byte	0x5d60
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF622
	.byte	0x22
	.2byte	0x148
	.4byte	.LASF932
	.4byte	0x5e49
	.byte	0x1
	.4byte	0x5d7a
	.4byte	0x5d81
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF569
	.byte	0x22
	.2byte	0x149
	.4byte	.LASF933
	.4byte	0x353e
	.byte	0x1
	.4byte	0x5d9b
	.4byte	0x5da2
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF625
	.byte	0x22
	.2byte	0x14a
	.4byte	.LASF934
	.4byte	0x6204
	.byte	0x1
	.4byte	0x5dbc
	.4byte	0x5dc3
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF620
	.byte	0x22
	.2byte	0x14b
	.4byte	.LASF935
	.4byte	0x567e
	.byte	0x1
	.4byte	0x5ddd
	.4byte	0x5de4
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x22
	.2byte	0x14c
	.4byte	.LASF936
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x5dfe
	.4byte	0x5e05
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0x22
	.2byte	0x14d
	.4byte	.LASF937
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x5e1f
	.4byte	0x5e26
	.uleb128 0x17
	.4byte	0x8ddb
	.byte	0x1
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF520
	.byte	0x22
	.2byte	0x14e
	.4byte	.LASF938
	.4byte	0xe5
	.byte	0x1
	.4byte	0x5e3c
	.uleb128 0x17
	.4byte	0x8de1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF939
	.byte	0x44
	.byte	0x23
	.byte	0x2e
	.4byte	0x6204
	.uleb128 0x28
	.4byte	.LASF940
	.byte	0x23
	.byte	0x5a
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x4b
	.string	"vec"
	.byte	0x23
	.byte	0x5b
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF941
	.byte	0x23
	.byte	0x5c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF942
	.byte	0x23
	.byte	0x5d
	.4byte	0x353e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF943
	.byte	0x23
	.byte	0x5e
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF939
	.byte	0x23
	.byte	0x35
	.byte	0x1
	.4byte	0x5eb1
	.4byte	0x5eb8
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF939
	.byte	0x23
	.byte	0x36
	.byte	0x1
	.4byte	0x5ec9
	.4byte	0x5edf
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Set"
	.byte	0x23
	.byte	0x38
	.4byte	.LASF944
	.byte	0x1
	.4byte	0x5ef4
	.4byte	0x5f0a
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF945
	.byte	0x23
	.byte	0x39
	.4byte	.LASF946
	.byte	0x1
	.4byte	0x5f1f
	.4byte	0x5f2b
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF947
	.byte	0x23
	.byte	0x3a
	.4byte	.LASF948
	.byte	0x1
	.4byte	0x5f40
	.4byte	0x5f4c
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF947
	.byte	0x23
	.byte	0x3b
	.4byte	.LASF949
	.byte	0x1
	.4byte	0x5f61
	.4byte	0x5f77
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF950
	.byte	0x23
	.byte	0x3c
	.4byte	.LASF951
	.byte	0x1
	.4byte	0x5f8c
	.4byte	0x5f98
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF952
	.byte	0x23
	.byte	0x3d
	.4byte	.LASF953
	.byte	0x1
	.4byte	0x5fad
	.4byte	0x5fb9
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF954
	.byte	0x23
	.byte	0x3e
	.4byte	.LASF955
	.byte	0x1
	.4byte	0x5fce
	.4byte	0x5fd5
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF956
	.byte	0x23
	.byte	0x3f
	.4byte	.LASF957
	.4byte	0x428c
	.byte	0x1
	.4byte	0x5fee
	.4byte	0x5ff5
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF958
	.byte	0x23
	.byte	0x40
	.4byte	.LASF959
	.4byte	0x428c
	.byte	0x1
	.4byte	0x600e
	.4byte	0x6015
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF960
	.byte	0x23
	.byte	0x41
	.4byte	.LASF961
	.4byte	0x109
	.byte	0x1
	.4byte	0x602e
	.4byte	0x6035
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x23
	.byte	0x43
	.4byte	.LASF962
	.4byte	0x5e49
	.byte	0x1
	.4byte	0x604e
	.4byte	0x6055
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x23
	.byte	0x44
	.4byte	.LASF963
	.4byte	0x5e49
	.byte	0x1
	.4byte	0x606e
	.4byte	0x607a
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF476
	.byte	0x23
	.byte	0x45
	.4byte	.LASF964
	.4byte	0x5e49
	.byte	0x1
	.4byte	0x6093
	.4byte	0x609f
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0x23
	.byte	0x46
	.4byte	.LASF965
	.4byte	0x8e08
	.byte	0x1
	.4byte	0x60b8
	.4byte	0x60c4
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF485
	.byte	0x23
	.byte	0x47
	.4byte	.LASF966
	.4byte	0x8e08
	.byte	0x1
	.4byte	0x60dd
	.4byte	0x60e9
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x23
	.byte	0x48
	.4byte	.LASF967
	.4byte	0x270c
	.byte	0x1
	.4byte	0x6102
	.4byte	0x610e
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF565
	.byte	0x23
	.byte	0x4e
	.4byte	.LASF968
	.4byte	0x2ee4
	.byte	0x1
	.4byte	0x6127
	.4byte	0x612e
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF620
	.byte	0x23
	.byte	0x4f
	.4byte	.LASF969
	.4byte	0x567e
	.byte	0x1
	.4byte	0x6147
	.4byte	0x614e
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF569
	.byte	0x23
	.byte	0x50
	.4byte	.LASF970
	.4byte	0x6865
	.byte	0x1
	.4byte	0x6167
	.4byte	0x616e
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF625
	.byte	0x23
	.byte	0x51
	.4byte	.LASF971
	.4byte	0x6204
	.byte	0x1
	.4byte	0x6187
	.4byte	0x618e
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF627
	.byte	0x23
	.byte	0x52
	.4byte	.LASF972
	.4byte	0x270c
	.byte	0x1
	.4byte	0x61a7
	.4byte	0x61ae
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF973
	.byte	0x23
	.byte	0x54
	.4byte	.LASF974
	.byte	0x1
	.4byte	0x61c3
	.4byte	0x61cf
	.uleb128 0x17
	.4byte	0x8dfd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4292
	.byte	0