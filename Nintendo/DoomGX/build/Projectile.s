	.file	"Projectile.cpp"
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
	.section	".text"
	.align 2
	.globl _ZNK12idProjectile7GetTypeEv
	.type	_ZNK12idProjectile7GetTypeEv, @function
_ZNK12idProjectile7GetTypeEv:
.LFB2811:
	.file 2 "d:/Data/Nintendo/DoomGX/src/game/Projectile.cpp"
	.loc 2 52 0
	.cfi_startproc
.LVL1:
	.loc 2 52 0
	lis 3,.LANCHOR0@ha
.LVL2:
	la 3,.LANCHOR0@l(3)
	blr
	.cfi_endproc
.LFE2811:
	.size	_ZNK12idProjectile7GetTypeEv, .-_ZNK12idProjectile7GetTypeEv
	.align 2
	.globl _ZN12idProjectile21ClientPredictionThinkEv
	.type	_ZN12idProjectile21ClientPredictionThinkEv, @function
_ZN12idProjectile21ClientPredictionThinkEv:
.LFB2850:
	.loc 2 1072 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 1073 0
	lwz 0,196(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L3
	.loc 2 1076 0
	lwz 9,0(3)
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL4:
.L3:
	.loc 2 1077 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2850:
	.size	_ZN12idProjectile21ClientPredictionThinkEv, .-_ZN12idProjectile21ClientPredictionThinkEv
	.align 2
	.globl _ZNK18idGuidedProjectile7GetTypeEv
	.type	_ZNK18idGuidedProjectile7GetTypeEv, @function
_ZNK18idGuidedProjectile7GetTypeEv:
.LFB2855:
	.loc 2 1229 0
	.cfi_startproc
.LVL5:
	.loc 2 1229 0
	lis 3,.LANCHOR0@ha
.LVL6:
	la 3,.LANCHOR0@l(3)
	addi 3,3,80
	blr
	.cfi_endproc
.LFE2855:
	.size	_ZNK18idGuidedProjectile7GetTypeEv, .-_ZNK18idGuidedProjectile7GetTypeEv
	.align 2
	.globl _ZN18idGuidedProjectile5SpawnEv
	.type	_ZN18idGuidedProjectile5SpawnEv, @function
_ZN18idGuidedProjectile5SpawnEv:
.LFB2863:
	.loc 2 1269 0
	.cfi_startproc
.LVL7:
	.loc 2 1270 0
	blr
	.cfi_endproc
.LFE2863:
	.size	_ZN18idGuidedProjectile5SpawnEv, .-_ZN18idGuidedProjectile5SpawnEv
	.align 2
	.globl _ZNK17idSoulCubeMissile7GetTypeEv
	.type	_ZNK17idSoulCubeMissile7GetTypeEv, @function
_ZNK17idSoulCubeMissile7GetTypeEv:
.LFB2873:
	.loc 2 1456 0
	.cfi_startproc
.LVL8:
	.loc 2 1456 0
	lis 3,.LANCHOR0@ha
.LVL9:
	la 3,.LANCHOR0@l(3)
	addi 3,3,160
	blr
	.cfi_endproc
.LFE2873:
	.size	_ZNK17idSoulCubeMissile7GetTypeEv, .-_ZNK17idSoulCubeMissile7GetTypeEv
	.align 2
	.globl _ZN17idSoulCubeMissile5SpawnEv
	.type	_ZN17idSoulCubeMissile5SpawnEv, @function
_ZN17idSoulCubeMissile5SpawnEv:
.LFB2874:
	.loc 2 1464 0
	.cfi_startproc
.LVL10:
.LBB2684:
.LBB2685:
	.file 3 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Vector.h"
	.loc 3 416 0
	li 0,0
.LBE2685:
.LBE2684:
	.loc 2 1468 0
	li 9,0
.LBB2688:
.LBB2686:
	.loc 3 416 0
	stw 0,1572(3)
.LBE2686:
.LBE2688:
	.loc 2 1473 0
.LBB2689:
.LBB2687:
	.loc 3 416 0
	stw 0,1568(3)
	stw 0,1564(3)
.LVL11:
.LBE2687:
.LBE2689:
.LBB2690:
.LBB2691:
	stw 0,1584(3)
	stw 0,1580(3)
	stw 0,1576(3)
.LBE2691:
.LBE2690:
	.loc 2 1467 0
	stw 0,1588(3)
	.loc 2 1468 0
	stw 9,1592(3)
	.loc 2 1469 0
	stb 9,1596(3)
	.loc 2 1470 0
	stb 9,1597(3)
	.loc 2 1471 0
	stw 9,1628(3)
	.loc 2 1472 0
	stw 9,1632(3)
	.loc 2 1473 0
	blr
	.cfi_endproc
.LFE2874:
	.size	_ZN17idSoulCubeMissile5SpawnEv, .-_ZN17idSoulCubeMissile5SpawnEv
	.align 2
	.globl _ZNK15idBFGProjectile7GetTypeEv
	.type	_ZNK15idBFGProjectile7GetTypeEv, @function
_ZNK15idBFGProjectile7GetTypeEv:
.LFB2887:
	.loc 2 1677 0
	.cfi_startproc
.LVL12:
	.loc 2 1677 0
	lis 3,.LANCHOR0@ha
.LVL13:
	la 3,.LANCHOR0@l(3)
	addi 3,3,240
	blr
	.cfi_endproc
.LFE2887:
	.size	_ZNK15idBFGProjectile7GetTypeEv, .-_ZNK15idBFGProjectile7GetTypeEv
	.align 2
	.globl _ZNK8idDebris7GetTypeEv
	.type	_ZNK8idDebris7GetTypeEv, @function
_ZNK8idDebris7GetTypeEv:
.LFB2910:
	.loc 2 2065 0
	.cfi_startproc
.LVL14:
	.loc 2 2065 0
	lis 3,.LANCHOR0@ha
.LVL15:
	la 3,.LANCHOR0@l(3)
	addi 3,3,320
	blr
	.cfi_endproc
.LFE2910:
	.size	_ZNK8idDebris7GetTypeEv, .-_ZNK8idDebris7GetTypeEv
	.align 2
	.globl _ZN8idDebris5SpawnEv
	.type	_ZN8idDebris5SpawnEv, @function
_ZN8idDebris5SpawnEv:
.LFB2911:
	.loc 2 2075 0
	.cfi_startproc
.LVL16:
.LBB2692:
.LBB2693:
	.file 4 "d:/Data/Nintendo/DoomGX/src/game/Game_local.h"
	.loc 4 606 0
	li 0,0
.LBE2693:
.LBE2692:
	.loc 2 2079 0
.LBB2695:
.LBB2694:
	.loc 4 606 0
	stw 0,636(3)
.LBE2694:
.LBE2695:
	.loc 2 2077 0
	stw 0,1184(3)
	.loc 2 2078 0
	stw 0,1188(3)
	.loc 2 2079 0
	blr
	.cfi_endproc
.LFE2911:
	.size	_ZN8idDebris5SpawnEv, .-_ZN8idDebris5SpawnEv
	.section	.text._ZN9idWinding5ClearEv,"axG",@progbits,_ZN9idWinding5ClearEv,comdat
	.align 2
	.weak	_ZN9idWinding5ClearEv
	.type	_ZN9idWinding5ClearEv, @function
_ZN9idWinding5ClearEv:
.LFB1473:
	.loc 1 249 0
	.cfi_startproc
.LVL17:
	mflr 0
	stwu 1,-16(1)
.LCFI2:
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
.LVL18:
	.loc 1 250 0
	stw 0,4(31)
	.loc 1 251 0
	cmpwi 7,3,0
	beq- 7,.L14
	.loc 1 251 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L14:
	.loc 1 252 0 is_stmt 1
	li 0,0
	stw 0,8(31)
	.loc 1 253 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL19:
	mtlr 0
	addi 1,1,16
.LCFI3:
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
.LVL20:
	mflr 0
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2697:
	lis 9,_ZTV9idWinding+8@ha
.LBE2697:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2698:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL21:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L16
	.loc 1 184 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L16:
	.loc 1 185 0 is_stmt 1
	li 0,0
	stw 0,8(31)
.LBE2698:
	.loc 1 186 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL22:
	mtlr 0
	addi 1,1,16
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1461:
	.size	_ZN9idWindingD2Ev, .-_ZN9idWindingD2Ev
	.section	".text"
	.align 2
	.globl _ZN8idDebris7CollideERK7trace_sRK6idVec3
	.type	_ZN8idDebris7CollideERK7trace_sRK6idVec3, @function
_ZN8idDebris7CollideERK7trace_sRK6idVec3:
.LFB2925:
	.loc 2 2315 0
	.cfi_startproc
.LVL23:
	mflr 0
	stwu 1,-16(1)
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 2316 0
	lwz 4,1192(3)
.LVL24:
	cmpwi 7,4,0
	beq- 7,.L19
	.cfi_offset 65, 4
	.loc 2 2317 0
	li 5,3
.LVL25:
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity16StartSoundShaderEPK13idSoundShaderiibPi
.LVL26:
.L19:
	.loc 2 2319 0
	li 0,0
	.loc 2 2321 0
	li 3,0
	.loc 2 2319 0
	stw 0,1192(31)
	.loc 2 2321 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL27:
	mtlr 0
	addi 1,1,16
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2925:
	.size	_ZN8idDebris7CollideERK7trace_sRK6idVec3, .-_ZN8idDebris7CollideERK7trace_sRK6idVec3
	.align 2
	.globl _ZN8idDebris7RestoreEP13idRestoreGame
	.type	_ZN8idDebris7RestoreEP13idRestoreGame, @function
_ZN8idDebris7RestoreEP13idRestoreGame:
.LFB2921:
	.loc 2 2142 0
	.cfi_startproc
.LVL28:
	stwu 1,-24(1)
.LCFI8:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL29:
	stw 29,12(1)
.LBB2699:
.LBB2700:
	.loc 4 600 0
	mr 3,4
.LVL30:
.LBE2700:
.LBE2699:
	.loc 2 2145 0
	addi 29,31,640
	.cfi_offset 29, -12
	.loc 2 2142 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
.LVL31:
.LBB2703:
.LBB2701:
	.loc 4 600 0
	addi 4,31,636
.LVL32:
.LBE2701:
.LBE2703:
	.loc 2 2142 0
	stw 0,28(1)
.LBB2704:
.LBB2702:
	.loc 4 600 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame7ReadIntERi
.LVL33:
.LBE2702:
.LBE2704:
	.loc 2 2145 0
	mr 3,30
	mr 4,29
	bl _ZN13idRestoreGame16ReadStaticObjectER7idClass
	.loc 2 2146 0
	mr 3,31
	mr 4,29
	bl _ZN8idEntity14RestorePhysicsEP9idPhysics
	.loc 2 2148 0
	mr 3,30
	addi 4,31,1184
	bl _ZN13idRestoreGame12ReadParticleERPK14idDeclParticle
	.loc 2 2149 0
	mr 3,30
	addi 4,31,1188
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 2150 0
	mr 3,30
	addi 4,31,1192
	bl _ZN13idRestoreGame15ReadSoundShaderERPK13idSoundShader
	.loc 2 2151 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL34:
	lwz 31,20(1)
.LVL35:
	addi 1,1,24
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2921:
	.size	_ZN8idDebris7RestoreEP13idRestoreGame, .-_ZN8idDebris7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK8idDebris4SaveEP10idSaveGame
	.type	_ZNK8idDebris4SaveEP10idSaveGame, @function
_ZNK8idDebris4SaveEP10idSaveGame:
.LFB2920:
	.loc 2 2127 0
	.cfi_startproc
.LVL36:
	mflr 0
	stwu 1,-16(1)
.LCFI10:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 2 2127 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL37:
.LBB2705:
.LBB2706:
	.loc 4 595 0
	lwz 4,636(3)
.LVL38:
	mr 3,30
.LVL39:
	bl _ZN10idSaveGame8WriteIntEi
.LBE2706:
.LBE2705:
	.loc 2 2130 0
	mr 3,30
	addi 4,31,640
.LVL40:
	bl _ZN10idSaveGame17WriteStaticObjectERK7idClass
	.loc 2 2132 0
	lwz 4,1184(31)
	mr 3,30
	bl _ZN10idSaveGame13WriteParticleEPK14idDeclParticle
	.loc 2 2133 0
	lwz 4,1188(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 2134 0
	lwz 4,1192(31)
	mr 3,30
	bl _ZN10idSaveGame16WriteSoundShaderEPK13idSoundShader
	.loc 2 2135 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL41:
	mtlr 0
	lwz 31,12(1)
.LVL42:
	addi 1,1,16
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2920:
	.size	_ZNK8idDebris4SaveEP10idSaveGame, .-_ZNK8idDebris4SaveEP10idSaveGame
	.align 2
	.globl _ZN8idDebrisD2Ev
	.type	_ZN8idDebrisD2Ev, @function
_ZN8idDebrisD2Ev:
.LFB2917:
	.loc 2 2119 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2917
.LVL43:
	mflr 0
	stwu 1,-16(1)
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2707:
	lis 9,_ZTV8idDebris+8@ha
.LBE2707:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2708:
	la 0,_ZTV8idDebris+8@l(9)
	.cfi_offset 65, 4
.LBE2708:
	stw 30,8(1)
.LBB2709:
	.loc 2 2119 0
	stw 0,0(3)
	addi 3,3,640
.LVL44:
.LEHB0:
	.cfi_offset 30, -8
	bl _ZN19idPhysics_RigidBodyD1Ev
.LEHE0:
	.loc 2 2119 0 is_stmt 0 discriminator 1
	mr 3,31
.LEHB1:
	bl _ZN8idEntityD2Ev
.LEHE1:
.LBE2709:
	.loc 2 2120 0 is_stmt 1 discriminator 1
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL45:
	addi 1,1,16
	.cfi_remember_state
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL46:
.L25:
.LCFI14:
	.cfi_restore_state
	mr 30,3
.LBB2710:
	.loc 2 2119 0
	mr 3,31
	bl _ZN8idEntityD2Ev
	mr 3,30
.LEHB2:
	bl _Unwind_Resume
.LEHE2:
.LBE2710:
	.cfi_endproc
.LFE2917:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2917:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2917-.LLSDACSB2917
.LLSDACSB2917:
	.uleb128 .LEHB0-.LFB2917
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L25-.LFB2917
	.uleb128 0
	.uleb128 .LEHB1-.LFB2917
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB2917
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2917:
	.section	".text"
	.size	_ZN8idDebrisD2Ev, .-_ZN8idDebrisD2Ev
	.align 2
	.globl _ZN8idDebrisD0Ev
	.type	_ZN8idDebrisD0Ev, @function
_ZN8idDebrisD0Ev:
.LFB2919:
	.loc 2 2119 0
	.cfi_startproc
.LVL47:
	stwu 1,-16(1)
.LCFI15:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 2120 0
	.cfi_offset 65, 4
	bl _ZN8idDebrisD1Ev
.LVL48:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL49:
	mtlr 0
	addi 1,1,16
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2919:
	.size	_ZN8idDebrisD0Ev, .-_ZN8idDebrisD0Ev
	.align 2
	.globl _ZNK15idBFGProjectile4SaveEP10idSaveGame
	.type	_ZNK15idBFGProjectile4SaveEP10idSaveGame, @function
_ZNK15idBFGProjectile4SaveEP10idSaveGame:
.LFB2899:
	.loc 2 1740 0
	.cfi_startproc
.LVL50:
	mflr 0
	stwu 1,-24(1)
.LCFI17:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 28,8(1)
	stw 31,20(1)
.LBB2711:
	.loc 2 1743 0
	lwz 4,1496(3)
.LVL51:
	mr 3,29
.LVL52:
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	bl _ZN10idSaveGame8WriteIntEi
.LVL53:
	.loc 2 1744 0
	lwz 0,1496(30)
	cmpwi 7,0,0
	ble- 7,.L29
	li 31,0
	li 28,0
.LVL54:
.L30:
.LBB2712:
.LBB2713:
	.loc 4 595 0 discriminator 2
	lwz 9,1508(30)
	mr 3,29
.LBE2713:
.LBE2712:
	.loc 2 1744 0 discriminator 2
	addi 28,28,1
.LVL55:
.LBB2715:
.LBB2714:
	.loc 4 595 0 discriminator 2
	lwzx 4,9,31
	bl _ZN10idSaveGame8WriteIntEi
.LVL56:
.LBE2714:
.LBE2715:
.LBB2716:
.LBB2717:
	.file 5 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/List.h"
	.loc 5 573 0 discriminator 2
	lwz 4,1508(30)
.LBE2717:
.LBE2716:
	.loc 2 1746 0 discriminator 2
	mr 3,29
.LBB2719:
.LBB2718:
	.loc 5 573 0 discriminator 2
	add 4,4,31
.LBE2718:
.LBE2719:
	.loc 2 1746 0 discriminator 2
	addi 4,4,4
	bl _ZN10idSaveGame17WriteRenderEntityERK14renderEntity_s
	.loc 2 1747 0 discriminator 2
	lwz 9,1508(30)
	mr 3,29
	add 9,9,31
	.loc 2 1744 0 discriminator 2
	addi 31,31,224
	.loc 2 1747 0 discriminator 2
	lwz 4,220(9)
	bl _ZN10idSaveGame8WriteIntEi
.LVL57:
	.loc 2 1744 0 discriminator 2
	lwz 0,1496(30)
	cmpw 7,0,28
	bgt+ 7,.L30
.LVL58:
.L29:
	.loc 2 1750 0
	addi 4,30,1512
	mr 3,29
	bl _ZN10idSaveGame17WriteRenderEntityERK14renderEntity_s
	.loc 2 1751 0
	lwz 4,1728(30)
	mr 3,29
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 1752 0
	lwz 4,1732(30)
	mr 3,29
	bl _ZN10idSaveGame8WriteIntEi
.LVL59:
	.loc 2 1753 0
	lwz 4,1740(30)
	mr 3,29
	bl _ZN10idSaveGame11WriteStringEPKc
.LBE2711:
	.loc 2 1754 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL60:
	lwz 30,16(1)
.LVL61:
	lwz 31,20(1)
	addi 1,1,24
.LCFI18:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2899:
	.size	_ZNK15idBFGProjectile4SaveEP10idSaveGame, .-_ZNK15idBFGProjectile4SaveEP10idSaveGame
	.align 2
	.globl _ZN17idSoulCubeMissile7RestoreEP13idRestoreGame
	.type	_ZN17idSoulCubeMissile7RestoreEP13idRestoreGame, @function
_ZN17idSoulCubeMissile7RestoreEP13idRestoreGame:
.LFB2880:
	.loc 2 1507 0
	.cfi_startproc
.LVL62:
	stwu 1,-16(1)
.LCFI19:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 2 1508 0
	mr 3,4
.LVL63:
	.loc 2 1507 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 2 1508 0
	addi 4,31,1564
.LVL64:
	.loc 2 1507 0
	stw 0,20(1)
	.loc 2 1508 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
.LVL65:
	.loc 2 1509 0
	mr 3,30
	addi 4,31,1576
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 2 1510 0
	mr 3,30
	addi 4,31,1588
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 1511 0
	mr 3,30
	addi 4,31,1592
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 1512 0
	mr 3,30
	addi 4,31,1596
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 2 1513 0
	mr 3,30
	addi 4,31,1597
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 2 1514 0
	mr 3,30
	addi 4,31,1600
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 2 1515 0
	mr 3,30
	addi 4,31,1624
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 1516 0
	mr 3,30
	addi 4,31,1612
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 2 1517 0
	mr 3,30
	addi 4,31,1628
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 1518 0
	mr 3,30
	addi 4,31,1632
	bl _ZN13idRestoreGame12ReadParticleERPK14idDeclParticle
	.loc 2 1519 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL66:
	mtlr 0
	lwz 31,12(1)
.LVL67:
	addi 1,1,16
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2880:
	.size	_ZN17idSoulCubeMissile7RestoreEP13idRestoreGame, .-_ZN17idSoulCubeMissile7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK17idSoulCubeMissile4SaveEP10idSaveGame
	.type	_ZNK17idSoulCubeMissile4SaveEP10idSaveGame, @function
_ZNK17idSoulCubeMissile4SaveEP10idSaveGame:
.LFB2879:
	.loc 2 1488 0
	.cfi_startproc
.LVL68:
	stwu 1,-16(1)
.LCFI21:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 2 1489 0
	mr 3,4
.LVL69:
	.loc 2 1488 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 2 1489 0
	addi 4,31,1564
.LVL70:
	.loc 2 1488 0
	stw 0,20(1)
	.loc 2 1489 0
	.cfi_offset 65, 4
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
.LVL71:
	.loc 2 1490 0
	addi 4,31,1576
	mr 3,30
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 2 1491 0
	lfs 1,1588(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 1492 0
	lwz 4,1592(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 1493 0
	lbz 4,1596(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 2 1494 0
	lbz 4,1597(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 2 1495 0
	mr 3,30
	addi 4,31,1600
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 2 1496 0
	lwz 4,1624(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 1497 0
	mr 3,30
	addi 4,31,1612
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 2 1498 0
	lwz 4,1628(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 1499 0
	lwz 4,1632(31)
	mr 3,30
	bl _ZN10idSaveGame13WriteParticleEPK14idDeclParticle
	.loc 2 1500 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL72:
	mtlr 0
	lwz 31,12(1)
.LVL73:
	addi 1,1,16
.LCFI22:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2879:
	.size	_ZNK17idSoulCubeMissile4SaveEP10idSaveGame, .-_ZNK17idSoulCubeMissile4SaveEP10idSaveGame
	.align 2
	.globl _ZN18idGuidedProjectile10GetSeekPosER6idVec3
	.type	_ZN18idGuidedProjectile10GetSeekPosER6idVec3, @function
_ZN18idGuidedProjectile10GetSeekPosER6idVec3:
.LFB2866:
	.loc 2 1318 0
	.cfi_startproc
.LVL74:
	mflr 0
	stwu 1,-40(1)
.LCFI23:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB2720:
.LBB2721:
.LBB2722:
	.loc 4 635 0
	lis 9,gameLocal@ha
.LBE2722:
.LBE2721:
.LBE2720:
	.loc 2 1318 0
	stw 30,32(1)
.LBB2748:
.LBB2726:
.LBB2723:
	.loc 4 635 0
	la 9,gameLocal@l(9)
.LBE2723:
.LBE2726:
.LBE2748:
	.loc 2 1318 0
	stw 31,36(1)
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL75:
	stw 0,44(1)
	mr 31,4
	stw 29,28(1)
.LBB2749:
.LBB2727:
.LBB2724:
	.loc 4 634 0
	lwz 0,1500(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	rlwinm 11,0,0,20,31
.LVL76:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L38
.LVL77:
.L35:
.LBE2724:
.LBE2727:
	.loc 2 1328 0
	mr 3,30
.LVL78:
	bl _ZNK8idEntity10GetPhysicsEv
.LVL79:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	li 4,0
	mr 29,3
	addi 3,30,936
	bl _ZNK19idPhysics_RigidBody17GetLinearVelocityEi
.LVL80:
	.loc 3 452 0
	lis 9,.LC1@ha
	lfs 12,4(29)
	lfs 13,8(29)
.LBB2728:
.LBB2729:
	lfs 11,0(29)
.LBE2729:
.LBE2728:
	lfs 8,4(3)
	lfs 9,8(3)
.LBB2732:
.LBB2730:
	lfs 10,0(3)
.LBE2730:
.LBE2732:
	lfs 0,.LC1@l(9)
	fmadds 12,8,0,12
	fmadds 13,9,0,13
.LVL81:
.LBB2733:
.LBB2731:
	fmadds 0,10,0,11
	.loc 3 425 0
	stfs 12,4(31)
	.loc 3 426 0
	stfs 13,8(31)
	.loc 3 424 0
	stfs 0,0(31)
.LBE2731:
.LBE2733:
.LBE2749:
	.loc 2 1330 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL82:
	mtlr 0
	lwz 30,32(1)
.LVL83:
	lwz 31,36(1)
.LVL84:
	addi 1,1,40
	.cfi_remember_state
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL85:
.L38:
.LCFI25:
	.cfi_restore_state
.LBB2750:
.LBB2734:
.LBB2725:
	.loc 4 636 0
	addi 11,11,132
.LVL86:
	slwi 11,11,2
.LVL87:
	add 9,9,11
	lwz 29,4(9)
.LBE2725:
.LBE2734:
	.loc 2 1320 0
	cmpwi 7,29,0
	beq- 7,.L35
.LVL88:
.LBB2735:
.LBB2736:
	.file 6 "d:/Data/Nintendo/DoomGX/src/game/gamesys/Class.h"
	.loc 6 340 0
	lwz 9,0(29)
.LVL89:
	mr 3,29
.LVL90:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL91:
.LBE2736:
	.loc 2 2410 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB2739:
.LBB2737:
.LBB2738:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L36
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L36
.LBE2738:
.LBE2737:
.LBE2739:
.LBE2735:
	.loc 2 1322 0
	addi 3,1,8
.LVL92:
	mr 4,29
	bl _ZNK7idActor14GetEyePositionEv
.LVL93:
	.loc 2 1323 0
	lis 9,.LC0@ha
	lfs 13,16(1)
	lfs 0,.LC0@l(9)
.LBB2740:
.LBB2741:
	.loc 3 424 0
	lwz 0,8(1)
.LBE2741:
.LBE2740:
	.loc 2 1323 0
	fsubs 0,13,0
.LBB2744:
.LBB2742:
	.loc 3 424 0
	stw 0,0(31)
	.loc 3 425 0
	lwz 0,12(1)
.LBE2742:
.LBE2744:
	.loc 2 1323 0
	stfs 0,8(31)
.LBB2745:
.LBB2743:
	.loc 3 425 0
	stw 0,4(31)
.LBE2743:
.LBE2745:
.LBE2750:
	.loc 2 1330 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL94:
	mtlr 0
	lwz 30,32(1)
.LVL95:
	lwz 31,36(1)
.LVL96:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI26:
	.cfi_def_cfa_offset 0
	blr
.LVL97:
.L36:
.LCFI27:
	.cfi_restore_state
.LBB2751:
	.loc 2 1325 0
	mr 3,29
.LVL98:
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL99:
.LBB2746:
.LBB2747:
	.loc 3 424 0
	lwz 0,0(3)
	stw 0,0(31)
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,4(31)
	.loc 3 426 0
	lwz 0,8(3)
	stw 0,8(31)
.LBE2747:
.LBE2746:
.LBE2751:
	.loc 2 1330 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL100:
	mtlr 0
	lwz 30,32(1)
.LVL101:
	lwz 31,36(1)
.LVL102:
	addi 1,1,40
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI28:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2866:
	.size	_ZN18idGuidedProjectile10GetSeekPosER6idVec3, .-_ZN18idGuidedProjectile10GetSeekPosER6idVec3
	.align 2
	.globl _ZN17idSoulCubeMissile10GetSeekPosER6idVec3
	.type	_ZN17idSoulCubeMissile10GetSeekPosER6idVec3, @function
_ZN17idSoulCubeMissile10GetSeekPosER6idVec3:
.LFB2883:
	.loc 2 1604 0
	.cfi_startproc
.LVL103:
	mflr 0
	stwu 1,-40(1)
.LCFI29:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 29,28(1)
.LBB2752:
.LBB2753:
	.loc 2 1605 0
	lbz 0,1597(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L40
.LVL104:
.LBB2754:
.LBB2755:
	.loc 4 634 0 discriminator 1
	lwz 0,636(3)
	.loc 4 635 0 discriminator 1
	lis 29,gameLocal@ha
	la 29,gameLocal@l(29)
	.loc 4 634 0 discriminator 1
	rlwinm 9,0,0,20,31
.LVL105:
	.loc 4 635 0 discriminator 1
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L46
.LVL106:
.L40:
.LBE2755:
.LBE2754:
.LBE2753:
.LBB2768:
.LBB2769:
.LBB2770:
	.loc 3 497 0
	lis 9,vec3_origin@ha
	lfs 0,1600(31)
	lfs 13,vec3_origin@l(9)
	la 9,vec3_origin@l(9)
	fcmpu 7,0,13
	beq- 7,.L44
.L43:
.LVL107:
.LBE2770:
.LBE2769:
.LBE2768:
.LBB2773:
.LBB2774:
	.loc 3 424 0
	stfs 0,0(30)
	.loc 3 425 0
	lwz 0,1604(31)
	stw 0,4(30)
	.loc 3 426 0
	lwz 0,1608(31)
	stw 0,8(30)
.LBE2774:
.LBE2773:
.LBE2752:
	.loc 2 1615 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL108:
	lwz 31,36(1)
.LVL109:
	addi 1,1,40
	.cfi_remember_state
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL110:
.L44:
.LCFI31:
	.cfi_restore_state
.LBB2777:
.LBB2775:
.LBB2772:
.LBB2771:
	.loc 3 497 0
	lfs 12,1604(31)
	lfs 13,4(9)
	fcmpu 7,12,13
	bne- 7,.L43
	lfs 12,1608(31)
	lfs 13,8(9)
	fcmpu 7,12,13
	bne- 7,.L43
.LBE2771:
.LBE2772:
.LBE2775:
.LBE2777:
	.loc 2 1615 0
	lwz 0,44(1)
.LBB2778:
	.loc 2 1614 0
	mr 3,31
.LBE2778:
	.loc 2 1615 0
	lwz 29,28(1)
.LBB2779:
	.loc 2 1614 0
	mr 4,30
.LBE2779:
	.loc 2 1615 0
	lwz 31,36(1)
.LVL111:
	mtlr 0
	lwz 30,32(1)
.LVL112:
	addi 1,1,40
	.cfi_remember_state
.LCFI32:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
.LBB2780:
	.loc 2 1614 0
	b _ZN18idGuidedProjectile10GetSeekPosER6idVec3
.LVL113:
.L46:
.LCFI33:
	.cfi_restore_state
.LBB2776:
.LBB2757:
.LBB2756:
	.loc 4 636 0
	addi 9,9,132
.LVL114:
	slwi 9,9,2
.LVL115:
	add 9,29,9
	lwz 3,4(9)
.LVL116:
.LBE2756:
.LBE2757:
	.loc 2 1605 0
	cmpwi 7,3,0
	beq- 7,.L40
.LVL117:
.LBB2758:
.LBB2759:
	.loc 6 340 0
	lwz 9,0(3)
.LVL118:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL119:
.LBE2759:
	.loc 2 2410 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB2762:
.LBB2760:
.LBB2761:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L40
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L40
.LVL120:
.LBE2761:
.LBE2760:
.LBE2762:
.LBE2758:
.LBB2763:
.LBB2764:
.LBB2765:
	.loc 4 634 0 discriminator 5
	lwz 0,636(31)
	.loc 4 638 0 discriminator 5
	li 4,0
	.loc 4 634 0 discriminator 5
	rlwinm 9,0,0,20,31
.LVL121:
	.loc 4 635 0 discriminator 5
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L41
	.loc 4 636 0
	addi 9,9,132
.LVL122:
	slwi 9,9,2
.LVL123:
	add 29,29,9
	lwz 4,4(29)
.L41:
.LBE2765:
.LBE2764:
	.loc 2 1607 0
	addi 3,1,8
.LVL124:
	bl _ZNK7idActor14GetEyePositionEv
.LVL125:
.LBB2766:
.LBB2767:
	.loc 3 424 0
	lwz 0,8(1)
	stw 0,0(30)
	.loc 3 425 0
	lwz 0,12(1)
	stw 0,4(30)
	.loc 3 426 0
	lwz 0,16(1)
	stw 0,8(30)
.LBE2767:
.LBE2766:
.LBE2763:
.LBE2776:
.LBE2780:
	.loc 2 1615 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL126:
	lwz 31,36(1)
.LVL127:
	addi 1,1,40
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI34:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2883:
	.size	_ZN17idSoulCubeMissile10GetSeekPosER6idVec3, .-_ZN17idSoulCubeMissile10GetSeekPosER6idVec3
	.align 2
	.globl _ZN18idGuidedProjectile7RestoreEP13idRestoreGame
	.type	_ZN18idGuidedProjectile7RestoreEP13idRestoreGame, @function
_ZN18idGuidedProjectile7RestoreEP13idRestoreGame:
.LFB2865:
	.loc 2 1297 0
	.cfi_startproc
.LVL128:
	stwu 1,-16(1)
.LCFI35:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL129:
	stw 30,8(1)
.LBB2781:
.LBB2782:
	.loc 4 600 0
	mr 3,4
.LVL130:
.LBE2782:
.LBE2781:
	.loc 2 1297 0
	mr 30,4
	.cfi_offset 30, -8
.LVL131:
.LBB2785:
.LBB2783:
	.loc 4 600 0
	addi 4,31,1500
.LVL132:
.LBE2783:
.LBE2785:
	.loc 2 1297 0
	stw 0,20(1)
.LBB2786:
.LBB2784:
	.loc 4 600 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame7ReadIntERi
.LVL133:
.LBE2784:
.LBE2786:
	.loc 2 1299 0
	mr 3,30
	addi 4,31,1496
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 1300 0
	mr 3,30
	addi 4,31,1504
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 2 1301 0
	mr 3,30
	addi 4,31,1516
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 2 1302 0
	mr 3,30
	addi 4,31,1540
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 1303 0
	mr 3,30
	addi 4,31,1544
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 1304 0
	mr 3,30
	addi 4,31,1548
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 1305 0
	mr 3,30
	addi 4,31,1528
	bl _ZN13idRestoreGame10ReadAnglesER8idAngles
	.loc 2 1306 0
	mr 3,30
	addi 4,31,1552
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 2 1307 0
	mr 3,30
	addi 4,31,1553
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 2 1308 0
	mr 3,30
	addi 4,31,1556
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 1309 0
	mr 3,30
	addi 4,31,1560
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 1310 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL134:
	mtlr 0
	lwz 31,12(1)
.LVL135:
	addi 1,1,16
.LCFI36:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2865:
	.size	_ZN18idGuidedProjectile7RestoreEP13idRestoreGame, .-_ZN18idGuidedProjectile7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK18idGuidedProjectile4SaveEP10idSaveGame
	.type	_ZNK18idGuidedProjectile4SaveEP10idSaveGame, @function
_ZNK18idGuidedProjectile4SaveEP10idSaveGame:
.LFB2864:
	.loc 2 1277 0
	.cfi_startproc
.LVL136:
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
	.loc 2 1277 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL137:
.LBB2787:
.LBB2788:
	.loc 4 595 0
	lwz 4,1500(3)
.LVL138:
	mr 3,30
.LVL139:
	bl _ZN10idSaveGame8WriteIntEi
.LBE2788:
.LBE2787:
	.loc 2 1279 0
	lfs 1,1496(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 1280 0
	mr 3,30
	addi 4,31,1504
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 2 1281 0
	mr 3,30
	addi 4,31,1516
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 2 1282 0
	lwz 4,1540(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 1283 0
	lfs 1,1544(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 1284 0
	lfs 1,1548(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 1285 0
	mr 3,30
	addi 4,31,1528
	bl _ZN10idSaveGame11WriteAnglesERK8idAngles
	.loc 2 1286 0
	lbz 4,1552(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 2 1287 0
	lbz 4,1553(31)
	mr 3,30
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 2 1288 0
	lfs 1,1556(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 1289 0
	lfs 1,1560(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 1290 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL140:
	mtlr 0
	lwz 31,12(1)
.LVL141:
	addi 1,1,16
.LCFI38:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2864:
	.size	_ZNK18idGuidedProjectile4SaveEP10idSaveGame, .-_ZNK18idGuidedProjectile4SaveEP10idSaveGame
	.align 2
	.globl _ZN12idProjectile24Event_GetProjectileStateEv
	.type	_ZN12idProjectile24Event_GetProjectileStateEv, @function
_ZN12idProjectile24Event_GetProjectileStateEv:
.LFB2842:
	.loc 2 767 0
	.cfi_startproc
.LVL142:
	mflr 0
	stwu 1,-8(1)
.LCFI39:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 768 0
	lwz 3,1488(3)
.LVL143:
	.cfi_offset 65, 4
	bl _ZN8idThread9ReturnIntEi
	.loc 2 769 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI40:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2842:
	.size	_ZN12idProjectile24Event_GetProjectileStateEv, .-_ZN12idProjectile24Event_GetProjectileStateEv
	.align 2
	.globl _ZNK12idProjectile4SaveEP10idSaveGame
	.type	_ZNK12idProjectile4SaveEP10idSaveGame, @function
_ZNK12idProjectile4SaveEP10idSaveGame:
.LFB2819:
	.loc 2 111 0
	.cfi_startproc
.LVL144:
	mflr 0
	stwu 1,-40(1)
.LCFI41:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
.LBB2789:
	.loc 2 115 0
	mr 29,1
	.cfi_offset 29, -12
.LBE2789:
	.loc 2 111 0
	stw 0,44(1)
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,36(1)
	.loc 2 111 0
	mr 31,3
	.cfi_offset 31, -4
.LVL145:
.LBB2792:
.LBB2790:
.LBB2791:
	.loc 4 595 0
	lwz 4,636(3)
.LVL146:
	mr 3,30
.LVL147:
	bl _ZN10idSaveGame8WriteIntEi
.LBE2791:
.LBE2790:
	.loc 2 115 0
	lbz 0,640(31)
	.loc 2 116 0
	li 4,1
	.loc 2 115 0
	stbu 0,8(29)
	.loc 2 116 0
	mr 3,29
	bl _Z14LittleBitFieldPvi
	.loc 2 117 0
	li 5,1
	mr 4,29
	mr 3,30
	bl _ZN10idSaveGame5WriteEPKvi
	.loc 2 119 0
	lfs 1,644(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 120 0
	lwz 4,648(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 122 0
	mr 3,30
	addi 4,31,656
.LVL148:
	bl _ZN10idSaveGame16WriteRenderLightERK13renderLight_s
	.loc 2 123 0
	lwz 4,864(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 124 0
	mr 3,30
	addi 4,31,868
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 2 125 0
	lwz 4,880(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 126 0
	lwz 4,884(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 127 0
	mr 3,30
	addi 4,31,888
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 2 129 0
	lwz 4,1480(31)
	mr 3,30
	bl _ZN10idSaveGame13WriteParticleEPK14idDeclParticle
	.loc 2 130 0
	lwz 4,1484(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 132 0
	lwz 4,1488(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 134 0
	lfs 1,652(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteFloatEf
	.loc 2 136 0
	mr 3,30
	addi 4,31,936
	bl _ZN10idSaveGame17WriteStaticObjectERK7idClass
	.loc 2 137 0
	mr 3,30
	addi 4,31,900
	bl _ZN10idSaveGame17WriteStaticObjectERK7idClass
.LBE2792:
	.loc 2 138 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL149:
	lwz 31,36(1)
.LVL150:
	addi 1,1,40
.LCFI42:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2819:
	.size	_ZNK12idProjectile4SaveEP10idSaveGame, .-_ZNK12idProjectile4SaveEP10idSaveGame
	.align 2
	.globl _ZN12idProjectile5SpawnEv
	.type	_ZN12idProjectile5SpawnEv, @function
_ZN12idProjectile5SpawnEv:
.LFB2818:
	.loc 2 97 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2818
.LVL151:
	stwu 1,-24(1)
.LCFI43:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 2 98 0
	mr 4,3
	.loc 2 97 0
	stw 31,20(1)
	.loc 2 98 0
	addi 31,3,936
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 2 97 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.loc 2 98 0
	mr 3,31
.LVL152:
	.loc 2 97 0
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
.LEHB3:
	.loc 2 98 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	bl _ZN14idPhysics_Base7SetSelfEP8idEntity
.LVL153:
	.loc 2 99 0
	mr 3,30
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	mr 28,3
	li 3,140
	bl _Znwj
.LEHE3:
	mr 4,28
	mr 29,3
.LEHB4:
	bl _ZN11idClipModelC1EPKS_
.LEHE4:
	.loc 2 99 0 is_stmt 0 discriminator 1
	lis 9,.LC2@ha
	li 6,1
	lfs 1,.LC2@l(9)
	mr 4,29
	mr 3,31
	li 5,0
.LEHB5:
	bl _ZN19idPhysics_RigidBody12SetClipModelEP11idClipModelfib
	.loc 2 100 0 is_stmt 1 discriminator 1
	mr 3,31
	li 4,0
	li 5,-1
	bl _ZN19idPhysics_RigidBody11SetContentsEii
	.loc 2 101 0 discriminator 1
	mr 3,31
	li 4,0
	li 5,-1
	bl _ZN14idPhysics_Base11SetClipMaskEii
	.loc 2 102 0 discriminator 1
	mr 3,31
	bl _ZN19idPhysics_RigidBody9PutToRestEv
	.loc 2 103 0 discriminator 1
	mr 3,30
	mr 4,31
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
	.loc 2 104 0 discriminator 1
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
.LVL154:
	lwz 31,20(1)
.LVL155:
	addi 1,1,24
	.cfi_remember_state
.LCFI44:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL156:
.L53:
.LCFI45:
	.cfi_restore_state
	mr 31,3
	.loc 2 99 0
	mr 3,29
	bl _ZdlPv
	mr 3,31
	bl _Unwind_Resume
.LEHE5:
	.cfi_endproc
.LFE2818:
	.section	.gcc_except_table
.LLSDA2818:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2818-.LLSDACSB2818
.LLSDACSB2818:
	.uleb128 .LEHB3-.LFB2818
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2818
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L53-.LFB2818
	.uleb128 0
	.uleb128 .LEHB5-.LFB2818
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2818:
	.section	".text"
	.size	_ZN12idProjectile5SpawnEv, .-_ZN12idProjectile5SpawnEv
	.align 2
	.globl _ZN12idProjectile12FreeLightDefEv
	.type	_ZN12idProjectile12FreeLightDefEv, @function
_ZN12idProjectile12FreeLightDefEv:
.LFB2827:
	.loc 2 267 0
	.cfi_startproc
.LVL157:
	mflr 0
	stwu 1,-16(1)
.LCFI46:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 268 0
	lwz 4,864(3)
	cmpwi 7,4,-1
	beq- 7,.L54
	.cfi_offset 65, 4
.LVL158:
.LBB2795:
.LBB2796:
	.loc 2 269 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
.LVL159:
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 2 270 0
	li 0,-1
	stw 0,864(31)
.LVL160:
.L54:
.LBE2796:
.LBE2795:
	.loc 2 272 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL161:
	mtlr 0
	addi 1,1,16
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2827:
	.size	_ZN12idProjectile12FreeLightDefEv, .-_ZN12idProjectile12FreeLightDefEv
	.align 2
	.globl _ZN12idProjectileD2Ev
	.type	_ZN12idProjectileD2Ev, @function
_ZN12idProjectileD2Ev:
.LFB2824:
	.loc 2 257 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2824
.LVL162:
	mflr 0
	stwu 1,-16(1)
.LCFI48:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2797:
	lis 9,_ZTV12idProjectile+8@ha
	.loc 2 258 0
	li 4,0
.LBE2797:
	.loc 2 257 0
	stw 31,12(1)
.LBB2798:
	.loc 2 258 0
	li 5,0
.LBE2798:
	.loc 2 257 0
	stw 0,20(1)
.LBB2799:
	la 0,_ZTV12idProjectile+8@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBE2799:
	stw 30,8(1)
	.loc 2 257 0
	mr 31,3
.LBB2800:
	stw 0,0(3)
.LEHB6:
	.loc 2 258 0
	.cfi_offset 30, -8
	bl _ZN8idEntity9StopSoundEib
.LVL163:
	.loc 2 259 0
	mr 3,31
	bl _ZN12idProjectile12FreeLightDefEv
.LEHE6:
	.loc 2 257 0
	addi 3,31,936
.LEHB7:
	bl _ZN19idPhysics_RigidBodyD1Ev
.LEHE7:
	.loc 2 257 0 is_stmt 0 discriminator 1
	addi 3,31,900
.LEHB8:
	bl _ZN16idForce_ConstantD1Ev
.LEHE8:
	.loc 2 257 0 discriminator 2
	mr 3,31
.LEHB9:
	bl _ZN8idEntityD2Ev
.LEHE9:
.LBE2800:
	.loc 2 260 0 is_stmt 1 discriminator 2
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL164:
	addi 1,1,16
	.cfi_remember_state
.LCFI49:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL165:
.L61:
.LCFI50:
	.cfi_restore_state
	mr 30,3
.LBB2801:
	.loc 2 257 0
	addi 3,31,936
	bl _ZN19idPhysics_RigidBodyD1Ev
.L59:
	addi 3,31,900
	bl _ZN16idForce_ConstantD1Ev
.L60:
	mr 3,31
	bl _ZN8idEntityD2Ev
	mr 3,30
.LEHB10:
	bl _Unwind_Resume
.LEHE10:
.L63:
	mr 30,3
	b .L60
.L62:
	mr 30,3
	b .L59
.LBE2801:
	.cfi_endproc
.LFE2824:
	.section	.gcc_except_table
.LLSDA2824:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2824-.LLSDACSB2824
.LLSDACSB2824:
	.uleb128 .LEHB6-.LFB2824
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L61-.LFB2824
	.uleb128 0
	.uleb128 .LEHB7-.LFB2824
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L62-.LFB2824
	.uleb128 0
	.uleb128 .LEHB8-.LFB2824
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L63-.LFB2824
	.uleb128 0
	.uleb128 .LEHB9-.LFB2824
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2824
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2824:
	.section	".text"
	.size	_ZN12idProjectileD2Ev, .-_ZN12idProjectileD2Ev
	.align 2
	.globl _ZN18idGuidedProjectileD2Ev
	.type	_ZN18idGuidedProjectileD2Ev, @function
_ZN18idGuidedProjectileD2Ev:
.LFB2860:
	.loc 2 1261 0
	.cfi_startproc
.LVL166:
.LBB2802:
	.loc 2 1261 0
	lis 9,_ZTV18idGuidedProjectile+8@ha
.LBE2802:
	.loc 2 1262 0
.LBB2803:
	.loc 2 1261 0
	la 0,_ZTV18idGuidedProjectile+8@l(9)
	stw 0,0(3)
	b _ZN12idProjectileD2Ev
.LVL167:
.LBE2803:
	.cfi_endproc
.LFE2860:
	.size	_ZN18idGuidedProjectileD2Ev, .-_ZN18idGuidedProjectileD2Ev
	.align 2
	.globl _ZN17idSoulCubeMissileD2Ev
	.type	_ZN17idSoulCubeMissileD2Ev, @function
_ZN17idSoulCubeMissileD2Ev:
.LFB2876:
	.loc 2 1480 0
	.cfi_startproc
.LVL168:
.LBB2804:
	.loc 2 1480 0
	lis 9,_ZTV17idSoulCubeMissile+8@ha
.LBE2804:
	.loc 2 1481 0
.LBB2805:
	.loc 2 1480 0
	la 0,_ZTV17idSoulCubeMissile+8@l(9)
	stw 0,0(3)
	b _ZN18idGuidedProjectileD2Ev
.LVL169:
.LBE2805:
	.cfi_endproc
.LFE2876:
	.size	_ZN17idSoulCubeMissileD2Ev, .-_ZN17idSoulCubeMissileD2Ev
	.align 2
	.globl _ZN17idSoulCubeMissileD0Ev
	.type	_ZN17idSoulCubeMissileD0Ev, @function
_ZN17idSoulCubeMissileD0Ev:
.LFB2878:
	.loc 2 1480 0
	.cfi_startproc
.LVL170:
	stwu 1,-16(1)
.LCFI51:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1481 0
	.cfi_offset 65, 4
	bl _ZN17idSoulCubeMissileD1Ev
.LVL171:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL172:
	mtlr 0
	addi 1,1,16
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2878:
	.size	_ZN17idSoulCubeMissileD0Ev, .-_ZN17idSoulCubeMissileD0Ev
	.align 2
	.globl _ZN18idGuidedProjectileD0Ev
	.type	_ZN18idGuidedProjectileD0Ev, @function
_ZN18idGuidedProjectileD0Ev:
.LFB2862:
	.loc 2 1261 0
	.cfi_startproc
.LVL173:
	stwu 1,-16(1)
.LCFI53:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1262 0
	.cfi_offset 65, 4
	bl _ZN18idGuidedProjectileD1Ev
.LVL174:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL175:
	mtlr 0
	addi 1,1,16
.LCFI54:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2862:
	.size	_ZN18idGuidedProjectileD0Ev, .-_ZN18idGuidedProjectileD0Ev
	.align 2
	.globl _ZN12idProjectileD0Ev
	.type	_ZN12idProjectileD0Ev, @function
_ZN12idProjectileD0Ev:
.LFB2826:
	.loc 2 257 0
	.cfi_startproc
.LVL176:
	stwu 1,-16(1)
.LCFI55:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 260 0
	.cfi_offset 65, 4
	bl _ZN12idProjectileD1Ev
.LVL177:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL178:
	mtlr 0
	addi 1,1,16
.LCFI56:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2826:
	.size	_ZN12idProjectileD0Ev, .-_ZN12idProjectileD0Ev
	.align 2
	.globl _ZN8idDebris5ThinkEv
	.type	_ZN8idDebris5ThinkEv, @function
_ZN8idDebris5ThinkEv:
.LFB2923:
	.loc 2 2284 0
	.cfi_startproc
.LVL179:
	stwu 1,-40(1)
.LCFI57:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,44(1)
	stw 29,28(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 30,32(1)
	.loc 2 2287 0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl _ZN8idEntity10RunPhysicsEv
.LVL180:
	.loc 2 2288 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 2290 0
	lwz 29,1184(31)
	cmpwi 7,29,0
	beq- 7,.L74
	.loc 2 2290 0 is_stmt 0 discriminator 1
	lwz 28,1188(31)
	cmpwi 7,28,0
	bne- 7,.L76
.L74:
	.loc 2 2295 0 is_stmt 1
	lwz 0,44(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL181:
	addi 1,1,40
	.cfi_remember_state
.LCFI58:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL182:
.L76:
.LCFI59:
	.cfi_restore_state
.LBB2814:
.LBB2815:
	.loc 2 2291 0
	lis 11,gameLocal@ha
.LBB2816:
.LBB2817:
.LBB2818:
.LBB2819:
.LBB2820:
.LBB2821:
	.file 7 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Random.h"
	.loc 7 71 0
	lis 27,0x1
.LBE2821:
.LBE2820:
.LBE2819:
.LBE2818:
.LBE2817:
.LBE2816:
	.loc 2 2291 0
	la 11,gameLocal@l(11)
.LBB2851:
.LBB2844:
.LBB2836:
.LBB2828:
.LBB2825:
.LBB2822:
	.loc 7 71 0
	ori 27,27,3533
	addis 9,11,0x1
.LBE2822:
.LBE2825:
.LBE2828:
.LBE2836:
.LBE2844:
.LBE2851:
	.loc 2 2291 0
	mr 3,31
.LBB2852:
.LBB2845:
.LBB2837:
.LBB2829:
.LBB2826:
.LBB2823:
	.loc 7 71 0
	lwz 0,-32064(9)
.LBE2823:
.LBE2826:
.LBE2829:
.LBE2837:
.LBE2845:
.LBE2852:
	.loc 2 2291 0
	addis 11,11,0x25
	lwz 26,1972(11)
.LVL183:
.LBB2853:
.LBB2846:
.LBB2838:
.LBB2830:
.LBB2827:
.LBB2824:
	.loc 7 71 0
	mullw 27,27,0
	addi 27,27,1
	stw 27,-32064(9)
	.loc 7 72 0
	rlwinm 27,27,0,17,31
.LBE2824:
.LBE2827:
	.loc 7 83 0
	xoris 27,27,0x8000
.LBE2830:
.LBE2838:
.LBE2846:
.LBE2853:
	.loc 2 2291 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 30,3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LBB2854:
.LBB2847:
.LBB2839:
.LBB2831:
	.loc 7 83 0
	lis 0,0x4330
	stw 27,12(1)
	lis 9,.LC4@ha
	stw 0,8(1)
.LBE2831:
.LBE2839:
.LBE2847:
.LBE2854:
	.loc 2 2291 0
	mr 7,3
.LBB2855:
.LBB2848:
.LBB2840:
.LBB2832:
	.loc 7 83 0
	lfs 0,.LC4@l(9)
.LBE2832:
.LBE2840:
	.loc 7 87 0
	lis 9,.LC6@ha
.LBB2841:
.LBB2833:
	.loc 7 83 0
	lfd 1,8(1)
.LBE2833:
.LBE2841:
.LBE2848:
.LBE2855:
	.loc 2 2291 0
	mr 3,26
	mr 4,29
	mr 5,28
.LBB2856:
.LBB2849:
.LBB2842:
.LBB2834:
	.loc 7 83 0
	fsub 1,1,0
.LBE2834:
.LBE2842:
	.loc 7 87 0
	lfs 0,.LC6@l(9)
	lis 9,.LC5@ha
.LBE2849:
.LBE2856:
	.loc 2 2291 0
	mr 6,30
.LBB2857:
.LBB2850:
	.loc 7 87 0
	lfs 13,.LC5@l(9)
.LBB2843:
.LBB2835:
	.loc 7 83 0
	frsp 1,1
.LBE2835:
.LBE2843:
	.loc 7 87 0
	fmsubs 1,1,13,0
.LBE2850:
.LBE2857:
	.loc 2 2291 0
	fadds 1,1,1
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
	cmpwi 0,3,0
	bne- 0,.L74
	.loc 2 2292 0
	stw 3,1188(31)
.LBE2815:
.LBE2814:
	.loc 2 2295 0
	lwz 0,44(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL184:
	addi 1,1,40
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI60:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2923:
	.size	_ZN8idDebris5ThinkEv, .-_ZN8idDebris5ThinkEv
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.52, @function
_Z41__static_initialization_and_destruction_0ii.constprop.52:
.LFB3291:
	.loc 2 2410 0
	.cfi_startproc
.LVL185:
	cmpwi 7,3,1
	mflr 0
	stwu 1,-56(1)
.LCFI61:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 0,60(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	stw 31,52(1)
	.loc 2 2410 0
	beq- 7,.L80
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 2 2065 0
	cmpwi 7,3,0
	bne- 7,.L77
	lis 31,.LANCHOR0@ha
	la 31,.LANCHOR0@l(31)
	addi 3,31,320
.LVL186:
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1677 0
	addi 3,31,240
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1456 0
	addi 3,31,160
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1229 0
	addi 3,31,80
	bl _ZN10idTypeInfoD1Ev
	.loc 2 52 0
	mr 3,31
	bl _ZN10idTypeInfoD1Ev
.L77:
	.loc 2 2410 0
	lwz 0,60(1)
	lwz 26,32(1)
	mtlr 0
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI62:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL187:
.L80:
.LCFI63:
	.cfi_restore_state
	.loc 4 694 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
	.loc 4 121 0
	lis 31,.LANCHOR0@ha
	.loc 4 694 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(9)
	.loc 4 121 0
	la 31,.LANCHOR0@l(31)
	li 11,3
.LBB2858:
.LBB2859:
	.loc 3 396 0
	li 0,0
.LBE2859:
.LBE2858:
	.loc 4 694 0
	fadds 0,0,0
	.loc 4 121 0
	stw 11,400(31)
.LVL188:
.LBB2863:
.LBB2860:
	.loc 3 398 0
	lis 11,.LC7@ha
	.loc 3 396 0
	stw 0,404(31)
	.loc 3 397 0
	stw 0,408(31)
.LBE2860:
.LBE2863:
.LBB2864:
.LBB2865:
	.file 8 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Math.h"
	.loc 8 825 0
	addi 9,31,416
	fctiwz 0,0
.LBE2865:
.LBE2864:
.LBB2867:
.LBB2861:
	.loc 3 398 0
	lwz 0,.LC7@l(11)
.LBE2861:
.LBE2867:
	.loc 2 47 0
	lis 4,.LC8@ha
	addi 3,31,424
.LVL189:
.LBB2868:
.LBB2862:
	.loc 3 398 0
	stw 0,412(31)
.LVL190:
.LBE2862:
.LBE2868:
	.file 9 "d:/Data/Nintendo/DoomGX/src/game/Player.h"
	.loc 9 69 0
	li 0,10
.LBB2869:
.LBB2866:
	.loc 8 825 0
	stfiwx 0,0,9
.LVL191:
.LBE2866:
.LBE2869:
	.loc 2 47 0
	la 4,.LC8@l(4)
	.loc 9 69 0
	stw 0,420(31)
	.loc 2 47 0
	li 5,0
	li 6,0
	.loc 2 52 0
	lis 28,.LC13@ha
	.loc 2 47 0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 48 0
	lis 4,.LC9@ha
	addi 3,31,488
	la 4,.LC9@l(4)
	li 5,0
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 49 0
	lis 4,.LC10@ha
	lis 5,.LC11@ha
	addi 3,31,552
	la 4,.LC10@l(4)
	la 5,.LC11@l(5)
	li 6,0
	.loc 2 52 0
	lis 29,.LANCHOR1@ha
	.loc 2 49 0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 50 0
	lis 4,.LC12@ha
	addi 3,31,616
	la 4,.LC12@l(4)
	li 5,0
	li 6,100
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 52 0
	lis 11,_ZN12idProjectile5SpawnEv@ha
	la 0,_ZN12idProjectile5SpawnEv@l(11)
	lis 27,.LC14@ha
	lis 11,_ZNK12idProjectile4SaveEP10idSaveGame@ha
	la 28,.LC13@l(28)
	la 29,.LANCHOR1@l(29)
	la 27,.LC14@l(27)
	stw 0,8(1)
	lis 7,_ZN12idProjectile14CreateInstanceEv@ha
	la 0,_ZNK12idProjectile4SaveEP10idSaveGame@l(11)
	lis 11,_ZN12idProjectile7RestoreEP13idRestoreGame@ha
	li 30,0
	mr 3,31
	mr 4,28
	mr 5,27
	mr 6,29
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 0,16(1)
	la 7,_ZN12idProjectile14CreateInstanceEv@l(7)
	la 0,_ZN12idProjectile7RestoreEP13idRestoreGame@l(11)
	stw 30,12(1)
	stw 0,24(1)
	.loc 2 1229 0
	lis 26,.LC15@ha
	.loc 2 52 0
	stw 30,20(1)
	.loc 2 1229 0
	la 26,.LC15@l(26)
	.loc 2 52 0
	stw 30,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1229 0
	lis 11,_ZN18idGuidedProjectile5SpawnEv@ha
	lis 7,_ZN18idGuidedProjectile14CreateInstanceEv@ha
	la 0,_ZN18idGuidedProjectile5SpawnEv@l(11)
	lis 11,_ZNK18idGuidedProjectile4SaveEP10idSaveGame@ha
	stw 0,8(1)
	la 0,_ZNK18idGuidedProjectile4SaveEP10idSaveGame@l(11)
	lis 11,_ZN18idGuidedProjectile7RestoreEP13idRestoreGame@ha
	addi 3,31,80
	mr 4,26
	mr 5,28
	addi 6,31,680
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 0,16(1)
	la 7,_ZN18idGuidedProjectile14CreateInstanceEv@l(7)
	la 0,_ZN18idGuidedProjectile7RestoreEP13idRestoreGame@l(11)
	stw 30,12(1)
	stw 0,24(1)
	stw 30,20(1)
	stw 30,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1456 0
	lis 11,_ZN17idSoulCubeMissile5SpawnEv@ha
	lis 7,_ZN17idSoulCubeMissile14CreateInstanceEv@ha
	la 0,_ZN17idSoulCubeMissile5SpawnEv@l(11)
	lis 11,_ZNK17idSoulCubeMissile4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 4,.LC16@ha
	la 0,_ZNK17idSoulCubeMissile4SaveEP10idSaveGame@l(11)
	lis 11,_ZN17idSoulCubeMissile7RestoreEP13idRestoreGame@ha
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 7,_ZN17idSoulCubeMissile14CreateInstanceEv@l(7)
	addi 3,31,160
	mr 5,26
	addi 6,31,692
	stw 0,16(1)
	la 4,.LC16@l(4)
	la 0,_ZN17idSoulCubeMissile7RestoreEP13idRestoreGame@l(11)
	stw 0,24(1)
	stw 30,12(1)
	stw 30,20(1)
	stw 30,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1675 0
	lis 4,.LC17@ha
	addi 3,31,704
	la 4,.LC17@l(4)
	li 5,0
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 1677 0
	lis 11,_ZN15idBFGProjectile5SpawnEv@ha
	la 0,_ZN15idBFGProjectile5SpawnEv@l(11)
	lis 11,_ZNK15idBFGProjectile4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 4,.LC18@ha
	la 0,_ZNK15idBFGProjectile4SaveEP10idSaveGame@l(11)
	lis 7,_ZN15idBFGProjectile14CreateInstanceEv@ha
	lis 11,_ZN15idBFGProjectile7RestoreEP13idRestoreGame@ha
	addi 3,31,240
	mr 5,28
	addi 6,29,72
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 0,16(1)
	la 4,.LC18@l(4)
	la 0,_ZN15idBFGProjectile7RestoreEP13idRestoreGame@l(11)
	la 7,_ZN15idBFGProjectile14CreateInstanceEv@l(7)
	stw 0,24(1)
	stw 30,12(1)
	stw 30,20(1)
	stw 30,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 2065 0
	lis 11,_ZN8idDebris5SpawnEv@ha
	lis 4,.LC19@ha
	la 0,_ZN8idDebris5SpawnEv@l(11)
	lis 11,_ZNK8idDebris4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 7,_ZN8idDebris14CreateInstanceEv@ha
	la 0,_ZNK8idDebris4SaveEP10idSaveGame@l(11)
	lis 11,_ZN8idDebris7RestoreEP13idRestoreGame@ha
	stw 0,16(1)
	addi 3,31,320
	la 0,_ZN8idDebris7RestoreEP13idRestoreGame@l(11)
	la 4,.LC19@l(4)
	mr 5,27
	addi 6,29,96
	la 7,_ZN8idDebris14CreateInstanceEv@l(7)
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 30,12(1)
	stw 30,20(1)
	stw 0,24(1)
	stw 30,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	b .L77
	.cfi_endproc
.LFE3291:
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.52, .-_Z41__static_initialization_and_destruction_0ii.constprop.52
	.section	.text._ZN9idWindingD0Ev,"axG",@progbits,_ZN9idWindingD5Ev,comdat
	.align 2
	.weak	_ZN9idWindingD0Ev
	.type	_ZN9idWindingD0Ev, @function
_ZN9idWindingD0Ev:
.LFB1463:
	.loc 1 183 0
	.cfi_startproc
.LVL192:
	mflr 0
	stwu 1,-16(1)
.LCFI64:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2873:
.LBB2874:
.LBB2875:
	lis 9,_ZTV9idWinding+8@ha
.LBE2875:
.LBE2874:
.LBE2873:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL193:
	stw 0,20(1)
.LBB2880:
.LBB2878:
.LBB2876:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL194:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L82
	bl _ZdaPv
.LVL195:
.L82:
	.loc 1 185 0
	li 0,0
.LBE2876:
.LBE2878:
.LBE2880:
	.loc 1 186 0
	mr 3,31
.LBB2881:
.LBB2879:
.LBB2877:
	.loc 1 185 0
	stw 0,8(31)
.LBE2877:
.LBE2879:
.LBE2881:
	.loc 1 186 0
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL196:
	mtlr 0
	addi 1,1,16
.LCFI65:
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
.LVL197:
.LBB2887:
	.loc 1 381 0
	li 0,0
.LBB2888:
.LBB2889:
.LBB2890:
	.loc 1 183 0
	lis 9,_ZTV9idWinding+8@ha
.LBE2890:
.LBE2889:
.LBE2888:
	.loc 1 381 0
	stw 0,8(3)
.LVL198:
.LBB2893:
.LBB2892:
.LBB2891:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	stw 0,0(3)
.LBE2891:
.LBE2892:
.LBE2893:
.LBE2887:
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
.LVL199:
	mflr 0
	stwu 1,-8(1)
.LCFI66:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB2900:
.LBB2901:
.LBB2902:
.LBB2903:
.LBB2904:
.LBB2905:
	.loc 1 183 0
	lis 11,_ZTV9idWinding+8@ha
.LBE2905:
.LBE2904:
.LBE2903:
.LBE2902:
.LBE2901:
.LBE2900:
	.loc 1 380 0
	stw 0,12(1)
.LBB2911:
.LBB2910:
.LBB2909:
	.loc 1 381 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,8(3)
.LVL200:
.LBB2908:
.LBB2907:
.LBB2906:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(11)
	stw 0,0(3)
.LBE2906:
.LBE2907:
.LBE2908:
.LBE2909:
.LBE2910:
.LBE2911:
	.loc 1 382 0
	bl _ZdlPv
.LVL201:
	lwz 0,12(1)
	addi 1,1,8
.LCFI67:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1500:
	.size	_ZN14idFixedWindingD0Ev, .-_ZN14idFixedWindingD0Ev
	.section	".text"
	.align 2
	.globl _ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta
	.type	_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta, @function
_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta:
.LFB2851:
	.loc 2 1084 0
	.cfi_startproc
.LVL202:
	mflr 0
	stwu 1,-40(1)
.LCFI68:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB2944:
	.loc 2 1085 0
	li 5,32
.LBE2944:
	.loc 2 1084 0
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -16
.LVL203:
	stw 0,44(1)
	stw 31,28(1)
	mr 31,4
	.cfi_offset 31, -12
	.cfi_offset 65, 4
	stfd 31,32(1)
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
.LBB2947:
	.loc 2 1085 0
	lwz 4,636(3)
.LVL204:
	mr 3,31
.LVL205:
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 63, -8
	bl _ZN13idBitMsgDelta9WriteBitsEii
	.loc 2 1086 0
	lwz 4,1488(30)
	mr 3,31
	li 5,3
	bl _ZN13idBitMsgDelta9WriteBitsEii
	.loc 2 1087 0
	lwz 4,192(30)
	mr 3,31
	li 5,1
	rlwinm 4,4,4,31,31
	bl _ZN13idBitMsgDelta9WriteBitsEii
.LBB2945:
	.loc 2 1088 0
	lbz 0,1492(30)
	cmpwi 7,0,0
	bne- 7,.L95
.LVL206:
.LBE2945:
.LBE2947:
.LBB2948:
.LBB2949:
	.loc 2 1092 0
	li 5,1
	mr 3,31
	.loc 2 1093 0
	addi 30,30,936
.LVL207:
	.loc 2 1092 0
	li 4,0
	bl _ZN13idBitMsgDelta9WriteBitsEii
	.loc 2 1093 0
	li 4,0
	mr 3,30
	bl _ZNK19idPhysics_RigidBody9GetOriginEi
	.loc 2 1094 0
	li 4,0
	.loc 2 1093 0
	mr 29,3
.LVL208:
	.loc 2 1094 0
	mr 3,30
.LVL209:
	bl _ZNK19idPhysics_RigidBody17GetLinearVelocityEi
.LBB2950:
.LBB2951:
	.file 10 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/BitMsg.h"
	.loc 10 559 0
	lwz 4,0(29)
.LBE2951:
.LBE2950:
	.loc 2 1094 0
	mr 27,3
.LVL210:
.LBB2953:
.LBB2952:
	.loc 10 559 0
	li 5,32
	mr 3,31
.LVL211:
	bl _ZN13idBitMsgDelta9WriteBitsEii
.LVL212:
.LBE2952:
.LBE2953:
.LBB2954:
.LBB2955:
	lwz 4,4(29)
	mr 3,31
	li 5,32
	bl _ZN13idBitMsgDelta9WriteBitsEii
.LVL213:
.LBE2955:
.LBE2954:
.LBB2956:
.LBB2957:
	lwz 4,8(29)
	li 5,32
	mr 3,31
	bl _ZN13idBitMsgDelta9WriteBitsEii
.LVL214:
.LBE2957:
.LBE2956:
	.loc 2 1100 0
	lis 9,RB_VELOCITY_EXPONENT_BITS@ha
	lwz 29,RB_VELOCITY_EXPONENT_BITS@l(9)
.LVL215:
	lis 9,RB_VELOCITY_MANTISSA_BITS@ha
	lwz 30,RB_VELOCITY_MANTISSA_BITS@l(9)
.LVL216:
.LBB2958:
.LBB2959:
	.loc 10 600 0
	lis 9,.LC20@ha
	lfs 1,.LC20@l(9)
	mr 3,29
.LBE2959:
.LBE2958:
.LBB2961:
.LBB2962:
	.loc 3 402 0
	lfs 31,0(27)
.LVL217:
.LBE2962:
.LBE2961:
.LBB2963:
.LBB2960:
	.loc 10 600 0
	mr 4,30
	bl _ZN6idMath11FloatToBitsEfii
.LVL218:
	.loc 10 602 0
	addi 28,29,1
	.loc 10 601 0
	fmr 1,31
	.loc 10 600 0
	mr 26,3
.LVL219:
	.loc 10 601 0
	mr 4,30
	mr 3,29
.LVL220:
	.loc 10 602 0
	add 28,30,28
	.loc 10 601 0
	bl _ZN6idMath11FloatToBitsEfii
	.loc 10 602 0
	mr 6,28
	.loc 10 601 0
	mr 5,3
.LVL221:
	.loc 10 602 0
	mr 4,26
	mr 3,31
.LVL222:
	bl _ZN13idBitMsgDelta10WriteDeltaEiii
.LVL223:
.LBE2960:
.LBE2963:
.LBB2964:
.LBB2965:
	.loc 10 600 0
	lis 9,.LC20@ha
	lfs 1,.LC20@l(9)
	mr 4,30
.LBE2965:
.LBE2964:
.LBB2967:
.LBB2968:
	.loc 3 402 0
	lfs 31,4(27)
.LVL224:
.LBE2968:
.LBE2967:
.LBB2969:
.LBB2966:
	.loc 10 600 0
	mr 3,29
	bl _ZN6idMath11FloatToBitsEfii
.LVL225:
	.loc 10 601 0
	mr 4,30
	fmr 1,31
	.loc 10 600 0
	mr 26,3
.LVL226:
	.loc 10 601 0
	mr 3,29
.LVL227:
	bl _ZN6idMath11FloatToBitsEfii
	.loc 10 602 0
	mr 6,28
	.loc 10 601 0
	mr 5,3
.LVL228:
	.loc 10 602 0
	mr 4,26
	mr 3,31
.LVL229:
	bl _ZN13idBitMsgDelta10WriteDeltaEiii
.LVL230:
.LBE2966:
.LBE2969:
.LBB2970:
.LBB2971:
	.loc 10 600 0
	lis 9,.LC20@ha
.LBE2971:
.LBE2970:
.LBB2973:
.LBB2974:
	.loc 3 402 0
	lfs 31,8(27)
.LVL231:
.LBE2974:
.LBE2973:
.LBB2975:
.LBB2972:
	.loc 10 600 0
	mr 4,30
	lfs 1,.LC20@l(9)
	mr 3,29
	bl _ZN6idMath11FloatToBitsEfii
.LVL232:
	.loc 10 601 0
	fmr 1,31
	.loc 10 600 0
	mr 27,3
.LVL233:
	.loc 10 601 0
	mr 4,30
	mr 3,29
.LVL234:
	bl _ZN6idMath11FloatToBitsEfii
	.loc 10 602 0
	mr 4,27
	.loc 10 601 0
	mr 5,3
.LVL235:
	.loc 10 602 0
	mr 6,28
	mr 3,31
.LVL236:
	bl _ZN13idBitMsgDelta10WriteDeltaEiii
.LVL237:
.LBE2972:
.LBE2975:
.LBE2949:
.LBE2948:
	.loc 2 1104 0
	lwz 0,44(1)
	lwz 26,8(1)
.LVL238:
	mtlr 0
	lwz 27,12(1)
.LVL239:
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
.LVL240:
	lfd 31,32(1)
.LVL241:
	addi 1,1,40
	.cfi_remember_state
.LCFI69:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL242:
.L95:
.LCFI70:
	.cfi_restore_state
.LBB2976:
.LBB2946:
	.loc 2 1089 0
	mr 3,31
	li 4,1
	li 5,1
	bl _ZN13idBitMsgDelta9WriteBitsEii
	.loc 2 1090 0
	addi 3,30,936
	mr 4,31
	bl _ZNK19idPhysics_RigidBody15WriteToSnapshotER13idBitMsgDelta
.LBE2946:
.LBE2976:
	.loc 2 1104 0
	lwz 0,44(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL243:
	lwz 31,28(1)
.LVL244:
	lfd 31,32(1)
	addi 1,1,40
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI71:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2851:
	.size	_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta, .-_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta
	.align 2
	.globl _ZN12idProjectile7RestoreEP13idRestoreGame
	.type	_ZN12idProjectile7RestoreEP13idRestoreGame, @function
_ZN12idProjectile7RestoreEP13idRestoreGame:
.LFB2820:
	.loc 2 145 0
	.cfi_startproc
.LVL245:
	stwu 1,-40(1)
.LCFI72:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL246:
	stw 29,28(1)
.LBB2993:
.LBB2994:
.LBB2995:
	.loc 4 600 0
	mr 3,4
.LVL247:
.LBE2995:
.LBE2994:
	.loc 2 149 0
	addi 29,31,640
	.cfi_offset 29, -12
.LBE2993:
	.loc 2 145 0
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
.LVL248:
.LBB3024:
.LBB2998:
.LBB2996:
	.loc 4 600 0
	addi 4,31,636
.LVL249:
.LBE2996:
.LBE2998:
.LBE3024:
	.loc 2 145 0
	stw 0,44(1)
	stw 28,24(1)
.LBB3025:
	.loc 2 172 0
	addi 28,31,900
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LBE3025:
	.loc 2 145 0
	stw 26,16(1)
	stw 27,20(1)
.LBB3026:
.LBB2999:
.LBB2997:
	.loc 4 600 0
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	bl _ZN13idRestoreGame7ReadIntERi
.LVL250:
.LBE2997:
.LBE2999:
	.loc 2 149 0
	li 5,1
	mr 4,29
	mr 3,30
	bl _ZN13idRestoreGame4ReadEPvi
	.loc 2 150 0
	mr 3,29
	li 4,1
	.loc 2 169 0
	addi 29,31,936
	.loc 2 150 0
	bl _Z14LittleBitFieldPvi
	.loc 2 152 0
	mr 3,30
	addi 4,31,644
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 153 0
	mr 3,30
	addi 4,31,648
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 155 0
	mr 3,30
	addi 4,31,656
	bl _ZN13idRestoreGame15ReadRenderLightER13renderLight_s
	.loc 2 156 0
	mr 3,30
	addi 4,31,864
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 157 0
	mr 3,30
	addi 4,31,868
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 2 158 0
	mr 3,30
	addi 4,31,880
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 159 0
	mr 3,30
	addi 4,31,884
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 160 0
	mr 3,30
	addi 4,31,888
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 2 162 0
	mr 3,30
	addi 4,31,1480
	bl _ZN13idRestoreGame12ReadParticleERPK14idDeclParticle
	.loc 2 163 0
	mr 3,30
	addi 4,31,1484
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 165 0
	mr 3,30
	addi 4,31,1488
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 167 0
	mr 3,30
	addi 4,31,652
	bl _ZN13idRestoreGame9ReadFloatERf
	.loc 2 169 0
	mr 3,30
	mr 4,29
	bl _ZN13idRestoreGame16ReadStaticObjectER7idClass
	.loc 2 170 0
	mr 3,31
	mr 4,29
	bl _ZN8idEntity14RestorePhysicsEP9idPhysics
	.loc 2 172 0
	mr 3,30
	mr 4,28
	bl _ZN13idRestoreGame16ReadStaticObjectER7idClass
	.loc 2 173 0
	mr 3,28
	mr 4,29
	bl _ZN16idForce_Constant10SetPhysicsEP9idPhysics
.LBB3000:
	.loc 2 175 0
	lwz 0,1480(31)
	cmpwi 7,0,0
	beq- 7,.L96
.LBB3001:
	.loc 2 177 0
	li 4,0
	mr 3,29
	bl _ZNK19idPhysics_RigidBody17GetLinearVelocityEi
.LVL251:
	.loc 2 179 0
	lis 11,gameLocal@ha
	la 11,gameLocal@l(11)
.LBB3002:
.LBB3003:
.LBB3004:
.LBB3005:
	.loc 7 71 0
	lis 29,0x1
	addis 9,11,0x1
	ori 29,29,3533
	lwz 0,-32064(9)
.LBE3005:
.LBE3004:
.LBE3003:
.LBE3002:
	.loc 2 179 0
	addis 11,11,0x25
	lwz 27,1480(31)
	mr 3,31
.LBB3017:
.LBB3010:
.LBB3008:
.LBB3006:
	.loc 7 71 0
	mullw 29,29,0
.LBE3006:
.LBE3008:
.LBE3010:
.LBE3017:
	.loc 2 179 0
	lwz 26,1972(11)
	lwz 28,2004(11)
.LVL252:
.LBB3018:
.LBB3011:
.LBB3009:
.LBB3007:
	.loc 7 71 0
	addi 29,29,1
	stw 29,-32064(9)
	.loc 7 72 0
	rlwinm 29,29,0,17,31
.LBE3007:
.LBE3009:
	.loc 7 83 0
	xoris 29,29,0x8000
.LBE3011:
.LBE3018:
	.loc 2 179 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 30,3
.LVL253:
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LBB3019:
.LBB3012:
	.loc 7 83 0
	lis 0,0x4330
	stw 29,12(1)
	lis 9,.LC4@ha
	stw 0,8(1)
.LBE3012:
.LBE3019:
	.loc 2 179 0
	mr 7,3
.LBB3020:
.LBB3013:
	.loc 7 83 0
	lfs 0,.LC4@l(9)
.LBE3013:
.LBE3020:
	.loc 2 179 0
	lis 9,.LC5@ha
.LBB3021:
.LBB3014:
	.loc 7 83 0
	lfd 1,8(1)
.LBE3014:
.LBE3021:
	.loc 2 179 0
	mr 3,26
	mr 4,27
	mr 5,28
.LBB3022:
.LBB3015:
	.loc 7 83 0
	fsub 1,1,0
.LBE3015:
.LBE3022:
	.loc 2 179 0
	lfs 0,.LC5@l(9)
	mr 6,30
.LBB3023:
.LBB3016:
	.loc 7 83 0
	frsp 1,1
.LBE3016:
.LBE3023:
	.loc 2 179 0
	fmuls 1,1,0
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
.LVL254:
.L96:
.LBE3001:
.LBE3000:
.LBE3026:
	.loc 2 181 0
	lwz 0,44(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL255:
	addi 1,1,40
.LCFI73:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE2820:
	.size	_ZN12idProjectile7RestoreEP13idRestoreGame, .-_ZN12idProjectile7RestoreEP13idRestoreGame
	.align 2
	.globl _ZN12idProjectile5ThinkEv
	.type	_ZN12idProjectile5ThinkEv, @function
_ZN12idProjectile5ThinkEv:
.LFB2829:
	.loc 2 438 0
	.cfi_startproc
.LVL256:
	mflr 0
	stwu 1,-136(1)
.LCFI74:
	.cfi_def_cfa_offset 136
	.cfi_register 65, 0
	stw 31,132(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,140(1)
	stw 25,108(1)
	stw 26,112(1)
	stw 27,116(1)
	stw 28,120(1)
	stw 29,124(1)
	stw 30,128(1)
.LBB3070:
	.loc 2 440 0
	lwz 0,152(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	andi. 9,0,1
	beq- 0,.L99
	.loc 2 441 0
	lis 9,.LC20@ha
	lfs 13,644(3)
	lfs 0,.LC20@l(9)
	fcmpu 7,13,0
	bne- 7,.L111
.LVL257:
.L99:
	.loc 2 449 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	.loc 2 451 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
.LBB3071:
	.loc 2 454 0
	lwz 0,1480(31)
	cmpwi 7,0,0
	beq- 7,.L101
	.loc 2 454 0 is_stmt 0 discriminator 1
	lwz 0,1484(31)
	cmpwi 7,0,0
	bne- 7,.L112
.L101:
.LBE3071:
.LBB3149:
	.loc 2 463 0 is_stmt 1
	lis 9,.LC20@ha
	lfs 13,716(31)
	lfs 0,.LC20@l(9)
	fcmpu 7,13,0
	bng- 7,.L98
.LBB3150:
.LBB3151:
	.loc 2 463 0 is_stmt 0 discriminator 1
	lis 9,g_projectileLights+44@ha
	.file 11 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/CVarSystem.h"
	.loc 11 142 0 is_stmt 1 discriminator 1
	lwz 9,g_projectileLights+44@l(9)
.LBE3151:
.LBE3150:
	.loc 2 463 0 discriminator 1
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L98
.LBB3152:
	.loc 2 464 0 discriminator 4
	mr 3,31
.LBB3153:
.LBB3154:
	.file 12 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Matrix.h"
	.loc 12 333 0 discriminator 4
	addi 30,31,656
.LBE3154:
.LBE3153:
	.loc 2 464 0 discriminator 4
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 29,3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL258:
.LBB3162:
.LBB3163:
	.loc 12 454 0 discriminator 4
	lfs 0,872(31)
	lfs 13,12(3)
	lfs 11,16(3)
	lfs 12,20(3)
	fmuls 11,0,11
.LBE3163:
.LBE3162:
.LBB3168:
.LBB3169:
	lfs 8,4(3)
.LBE3169:
.LBE3168:
.LBB3174:
.LBB3164:
	fmuls 12,0,12
.LBE3164:
.LBE3174:
.LBB3175:
.LBB3170:
	lfs 9,8(3)
.LBE3170:
.LBE3175:
.LBB3176:
.LBB3165:
	fmuls 0,0,13
.LBE3165:
.LBE3176:
.LBB3177:
.LBB3171:
	lfs 10,0(3)
.LBE3171:
.LBE3177:
.LBB3178:
.LBB3166:
	lfs 13,868(31)
.LBE3166:
.LBE3178:
.LBB3179:
.LBB3172:
	lfs 7,28(3)
	fmadds 11,13,8,11
	lfs 8,32(3)
	fmadds 12,13,9,12
	.loc 3 452 0 discriminator 4
	lfs 9,4(29)
	.loc 12 454 0 discriminator 4
	fmadds 13,10,13,0
	lfs 10,24(3)
.LBE3172:
.LBE3179:
.LBB3180:
.LBB3167:
	lfs 0,876(31)
.LVL259:
.LBE3167:
.LBE3180:
	.loc 2 465 0 discriminator 4
	mr 3,31
.LVL260:
.LBB3181:
.LBB3173:
	.loc 12 454 0 discriminator 4
	fmadds 11,0,7,11
	fmadds 12,0,8,12
	fmadds 0,10,0,13
	.loc 3 452 0 discriminator 4
	lfs 13,8(29)
	lfs 10,0(29)
	fadds 11,11,9
	fadds 12,12,13
.LVL261:
	fadds 0,0,10
.LBE3173:
.LBE3181:
.LBB3182:
.LBB3183:
	.loc 3 425 0 discriminator 4
	stfs 11,696(31)
	.loc 3 426 0 discriminator 4
	stfs 12,700(31)
	.loc 3 424 0 discriminator 4
	stfs 0,692(31)
.LBE3183:
.LBE3182:
	.loc 2 465 0 discriminator 4
	bl _ZNK8idEntity10GetPhysicsEv
.LVL262:
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL263:
.LBB3184:
.LBB3161:
	.loc 12 333 0 discriminator 4
	li 10,0
.L104:
.LBB3155:
.LBB3156:
	.loc 3 424 0
	mr 11,3
	mr 9,30
	lwzux 0,11,10
.LBE3156:
.LBE3155:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB3159:
.LBB3157:
	.loc 3 424 0
	stwux 0,9,10
.LBE3157:
.LBE3159:
	.loc 12 333 0
	addi 10,10,12
.LBB3160:
.LBB3158:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE3158:
.LBE3160:
	.loc 12 333 0
	bne+ 7,.L104
.LBE3161:
.LBE3184:
.LBB3185:
	.loc 2 466 0
	lwz 4,864(31)
	cmpwi 7,4,-1
	beq- 7,.L105
.LBB3186:
.LBB3187:
	.loc 2 467 0
	lwz 9,884(31)
	cmpwi 7,9,0
	ble- 7,.L106
	.loc 2 467 0 is_stmt 0 discriminator 1
	lis 11,gameLocal+2426836@ha
	lwz 0,gameLocal+2426836@l(11)
	addi 11,9,16
	cmpw 7,0,11
	bgt- 7,.L106
.LVL264:
.LBB3188:
.LBB3189:
	.loc 2 469 0 is_stmt 1 discriminator 4
	cmpw 7,9,0
.LBE3189:
.LBB3191:
.LBB3192:
	.loc 3 396 0 discriminator 4
	li 11,0
	stw 11,8(1)
	.loc 3 397 0 discriminator 4
	stw 11,12(1)
	.loc 3 398 0 discriminator 4
	stw 11,16(1)
.LBE3192:
.LBE3191:
.LBB3193:
	.loc 2 469 0 discriminator 4
	bgt- 7,.L113
	.loc 2 469 0 is_stmt 0
	mr 0,11
	mr 9,11
.LVL265:
.L107:
.LBE3193:
	.loc 2 473 0 is_stmt 1
	stw 9,812(31)
	.loc 2 474 0
	stw 0,816(31)
	.loc 2 475 0
	stw 11,820(31)
.LVL266:
.L106:
.LBE3188:
.LBE3187:
	.loc 2 477 0
	lis 9,gameRenderWorld@ha
	mr 5,30
	lwz 3,gameRenderWorld@l(9)
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
.LVL267:
.L98:
.LBE3186:
.LBE3185:
.LBE3152:
.LBE3149:
.LBE3070:
	.loc 2 482 0
	lwz 0,140(1)
	lwz 25,108(1)
	mtlr 0
	lwz 26,112(1)
	lwz 27,116(1)
	lwz 28,120(1)
	lwz 29,124(1)
	lwz 30,128(1)
	lwz 31,132(1)
.LVL268:
	addi 1,1,136
	.cfi_remember_state
.LCFI75:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL269:
.L111:
.LCFI76:
	.cfi_restore_state
.LBB3210:
	.loc 2 441 0 discriminator 1
	lis 30,gameLocal@ha
	lwz 0,648(3)
	la 30,gameLocal@l(30)
	addis 30,30,0x25
	lwz 9,2004(30)
	cmpw 7,9,0
	bge+ 7,.L99
	.loc 2 443 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL270:
	li 4,0
	lwz 9,0(3)
	addi 29,31,900
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL271:
	lfs 0,644(31)
.LVL272:
.LBB3200:
.LBB3201:
	.loc 3 439 0
	lfs 11,0(3)
.LBE3201:
.LBE3200:
	.loc 2 443 0
	addi 4,1,20
.LBB3206:
.LBB3204:
	.loc 3 439 0
	lfs 12,4(3)
	lfs 13,8(3)
.LBE3204:
.LBE3206:
	.loc 2 443 0
	mr 3,29
.LVL273:
.LBB3207:
.LBB3205:
	.loc 3 439 0
	fmuls 12,0,12
	fmuls 13,0,13
.LVL274:
	fmuls 0,0,11
.LBB3202:
.LBB3203:
	.loc 3 397 0
	stfs 12,24(1)
	.loc 3 398 0
	stfs 13,28(1)
	.loc 3 396 0
	stfs 0,20(1)
.LBE3203:
.LBE3202:
.LBE3205:
.LBE3207:
	.loc 2 443 0
	bl _ZN16idForce_Constant8SetForceERK6idVec3
.LVL275:
	.loc 2 444 0
	lwz 4,2004(30)
	mr 3,29
	bl _ZN16idForce_Constant8EvaluateEi
	b .L99
.LVL276:
.L112:
.LBB3208:
	.loc 2 454 0 discriminator 3
	mr 3,31
	bl _ZNK8idEntity8IsHiddenEv
	cmpwi 7,3,0
	bne- 7,.L101
.LBB3072:
	.loc 2 455 0 discriminator 5
	mr 3,31
	.loc 2 457 0 discriminator 5
	lis 30,gameLocal@ha
	.loc 2 455 0 discriminator 5
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	.loc 2 457 0 discriminator 5
	la 30,gameLocal@l(30)
.LBB3073:
.LBB3074:
.LBB3075:
.LBB3076:
	.loc 7 71 0 discriminator 5
	lis 28,0x1
.LBE3076:
.LBE3075:
.LBE3074:
.LBE3073:
	.loc 2 455 0 discriminator 5
	lwz 0,148(9)
.LBB3097:
.LBB3087:
.LBB3082:
.LBB3077:
	.loc 7 71 0 discriminator 5
	ori 28,28,3533
.LBE3077:
.LBE3082:
.LBE3087:
.LBE3097:
	.loc 2 455 0 discriminator 5
	mtctr 0
	bctrl
.LVL277:
.LBB3098:
.LBB3099:
.LBB3100:
.LBB3101:
	.loc 8 276 0 discriminator 5
	lis 9,_ZN6idMath5iSqrtE@ha
.LBE3101:
.LBE3100:
.LBE3099:
.LBE3098:
.LBB3124:
.LBB3125:
	.loc 3 420 0 discriminator 5
	lfs 12,4(3)
.LBE3125:
.LBE3124:
.LBB3129:
.LBB3116:
.LBB3109:
.LBB3102:
	.loc 8 276 0 discriminator 5
	la 9,_ZN6idMath5iSqrtE@l(9)
.LBE3102:
.LBE3109:
.LBE3116:
.LBE3129:
.LBB3130:
.LBB3126:
	.loc 3 420 0 discriminator 5
	lfs 11,0(3)
	fneg 12,12
	lfs 13,8(3)
	fneg 11,11
.LBE3126:
.LBE3130:
	.loc 2 457 0 discriminator 5
	mr 3,31
.LVL278:
.LBB3131:
.LBB3127:
	.loc 3 420 0 discriminator 5
	fneg 13,13
.LVL279:
.LBE3127:
.LBE3131:
.LBB3132:
.LBB3117:
	.loc 3 649 0 discriminator 5
	fmuls 0,12,12
.LBE3117:
.LBE3132:
.LBB3133:
.LBB3128:
	fmadds 0,11,11,0
	fmadds 0,13,13,0
	stfs 0,96(1)
.LVL280:
.LBE3128:
.LBE3133:
.LBB3134:
.LBB3118:
.LBB3110:
.LBB3103:
	.loc 8 270 0 discriminator 5
	lwz 0,96(1)
.LVL281:
	.loc 8 276 0 discriminator 5
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 9,9,0
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 275 0 discriminator 5
	lis 9,.LC6@ha
	.loc 8 277 0 discriminator 5
	stw 0,100(1)
	.loc 8 275 0 discriminator 5
	lfs 7,.LC6@l(9)
	.loc 8 278 0 discriminator 5
	lis 9,.LC22@ha
	.loc 8 277 0 discriminator 5
	lfs 0,100(1)
.LVL282:
	.loc 8 278 0 discriminator 5
	lfs 8,.LC22@l(9)
.LBE3103:
.LBE3110:
.LBE3118:
.LBE3134:
.LBB3135:
.LBB3088:
.LBB3083:
.LBB3078:
	.loc 7 71 0 discriminator 5
	addis 9,30,0x1
.LBE3078:
.LBE3083:
.LBE3088:
.LBE3135:
.LBB3136:
.LBB3119:
.LBB3111:
.LBB3104:
	.loc 8 277 0 discriminator 5
	fmr 9,0
	.loc 8 275 0 discriminator 5
	lfs 0,96(1)
.LBE3104:
.LBE3111:
.LBE3119:
.LBE3136:
.LBB3137:
.LBB3089:
.LBB3084:
.LBB3079:
	.loc 7 71 0 discriminator 5
	lwz 0,-32064(9)
.LBE3079:
.LBE3084:
.LBE3089:
.LBE3137:
	.loc 2 457 0 discriminator 5
	addis 30,30,0x25
.LBB3138:
.LBB3120:
.LBB3112:
.LBB3105:
	.loc 8 275 0 discriminator 5
	fmuls 7,0,7
.LVL283:
.LBE3105:
.LBE3112:
.LBE3120:
.LBE3138:
	.loc 2 457 0 discriminator 5
	lwz 26,1480(31)
.LBB3139:
.LBB3121:
.LBB3113:
.LBB3106:
	.loc 8 278 0 discriminator 5
	fmul 10,9,9
.LBE3106:
.LBE3113:
.LBE3121:
.LBE3139:
.LBB3140:
.LBB3090:
.LBB3085:
.LBB3080:
	.loc 7 71 0 discriminator 5
	mullw 28,28,0
.LBE3080:
.LBE3085:
.LBE3090:
.LBE3140:
	.loc 2 457 0 discriminator 5
	lwz 27,1484(31)
	lwz 25,1972(30)
.LBB3141:
.LBB3122:
.LBB3114:
.LBB3107:
	.loc 2 438 0 discriminator 5
	fneg 10,10
.LBE3107:
.LBE3114:
.LBE3122:
.LBE3141:
.LBB3142:
.LBB3091:
.LBB3086:
.LBB3081:
	.loc 7 71 0 discriminator 5
	addi 28,28,1
	stw 28,-32064(9)
	.loc 7 72 0 discriminator 5
	rlwinm 28,28,0,17,31
.LBE3081:
.LBE3086:
	.loc 7 83 0 discriminator 5
	xoris 28,28,0x8000
.LBE3091:
.LBE3142:
.LBB3143:
.LBB3123:
.LBB3115:
.LBB3108:
	.loc 8 278 0 discriminator 5
	fmadd 10,10,7,8
	fmul 10,10,9
.LVL284:
	.loc 8 279 0 discriminator 5
	fmul 0,10,10
	.loc 2 438 0 discriminator 5
	fneg 0,0
	.loc 8 279 0 discriminator 5
	fmadd 0,0,7,8
.LVL285:
	fmul 0,0,10
.LVL286:
	.loc 8 280 0 discriminator 5
	frsp 0,0
.LVL287:
.LBE3108:
.LBE3115:
	.loc 3 651 0 discriminator 5
	fmuls 11,11,0
.LVL288:
	.loc 3 652 0 discriminator 5
	fmuls 12,12,0
.LVL289:
	.loc 3 653 0 discriminator 5
	fmuls 0,13,0
	.loc 3 651 0 discriminator 5
	stfs 11,8(1)
	.loc 3 652 0 discriminator 5
	stfs 12,12(1)
	.loc 3 653 0 discriminator 5
	stfs 0,16(1)
.LBE3123:
.LBE3143:
	.loc 2 457 0 discriminator 5
	bl _ZNK8idEntity10GetPhysicsEv
.LVL290:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	addi 4,1,8
.LVL291:
	mr 29,3
	addi 3,1,32
	bl _ZNK6idVec36ToMat3Ev
.LVL292:
.LBB3144:
.LBB3092:
	.loc 7 83 0 discriminator 5
	lis 0,0x4330
	stw 28,76(1)
	lis 9,.LC4@ha
	stw 0,72(1)
.LBE3092:
.LBE3144:
	.loc 2 457 0 discriminator 5
	mr 3,25
.LBB3145:
.LBB3093:
	.loc 7 83 0 discriminator 5
	lfs 0,.LC4@l(9)
.LBE3093:
.LBE3145:
	.loc 2 457 0 discriminator 5
	lis 9,.LC5@ha
.LBB3146:
.LBB3094:
	.loc 7 83 0 discriminator 5
	lfd 1,72(1)
.LBE3094:
.LBE3146:
	.loc 2 457 0 discriminator 5
	mr 4,26
	mr 5,27
	mr 6,29
.LBB3147:
.LBB3095:
	.loc 7 83 0 discriminator 5
	fsub 1,1,0
.LBE3095:
.LBE3147:
	.loc 2 457 0 discriminator 5
	lfs 0,.LC5@l(9)
	addi 7,1,32
.LBB3148:
.LBB3096:
	.loc 7 83 0 discriminator 5
	frsp 1,1
.LBE3096:
.LBE3148:
	.loc 2 457 0 discriminator 5
	fmuls 1,1,0
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
	cmpwi 7,3,0
	bne- 7,.L101
	.loc 2 458 0
	lwz 0,2004(30)
	stw 0,1484(31)
	b .L101
.LVL293:
.L113:
.LBE3072:
.LBE3208:
.LBB3209:
.LBB3199:
.LBB3198:
.LBB3197:
.LBB3196:
.LBB3195:
.LBB3194:
.LBB3190:
	.loc 2 470 0
	lwz 10,880(31)
.LVL294:
	lis 11,0x4330
	stw 11,80(1)
	.loc 2 471 0
	addi 3,1,8
.LVL295:
	.loc 2 470 0
	subf 0,10,0
.LVL296:
	subf 9,10,9
.LVL297:
	xoris 0,0,0x8000
	xoris 9,9,0x8000
	stw 0,84(1)
	.loc 2 471 0
	addi 4,31,888
	.loc 2 470 0
	stw 9,92(1)
	lis 9,.LC4@ha
	stw 11,88(1)
	.loc 2 471 0
	mr 5,3
	.loc 2 470 0
	lfs 0,.LC4@l(9)
	lfd 1,80(1)
	lfd 13,88(1)
	fsub 1,1,0
	fsub 0,13,0
	frsp 1,1
	frsp 0,0
	.loc 2 471 0
	fdivs 1,1,0
	bl _ZN6idVec34LerpERKS_S1_f
.LVL298:
	lwz 9,8(1)
	lwz 0,12(1)
	lwz 11,16(1)
	lwz 4,864(31)
	b .L107
.LVL299:
.L105:
.LBE3190:
.LBE3194:
.LBE3195:
.LBE3196:
.LBE3197:
	.loc 2 479 0
	lis 9,gameRenderWorld@ha
	mr 4,30
	lwz 3,gameRenderWorld@l(9)
.LVL300:
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
	stw 3,864(31)
	b .L98
.LBE3198:
.LBE3199:
.LBE3209:
.LBE3210:
	.cfi_endproc
.LFE2829:
	.size	_ZN12idProjectile5ThinkEv, .-_ZN12idProjectile5ThinkEv
	.align 2
	.globl _ZN15idBFGProjectile5ThinkEv
	.type	_ZN15idBFGProjectile5ThinkEv, @function
_ZN15idBFGProjectile5ThinkEv:
.LFB2902:
	.loc 2 1810 0
	.cfi_startproc
.LVL301:
	mflr 0
	stwu 1,-176(1)
.LCFI77:
	.cfi_def_cfa_offset 176
	.cfi_register 65, 0
	stw 31,156(1)
	mr 31,3
	.cfi_offset 31, -20
	stw 0,180(1)
	stfd 30,160(1)
	stfd 31,168(1)
	stw 17,100(1)
	stw 18,104(1)
	stw 19,108(1)
	stw 20,112(1)
	stw 21,116(1)
	stw 22,120(1)
	stw 23,124(1)
	stw 24,128(1)
	stw 25,132(1)
	stw 26,136(1)
	stw 27,140(1)
	stw 28,144(1)
	stw 29,148(1)
	stw 30,152(1)
.LBB3323:
.LBB3324:
	.loc 2 1811 0
	lwz 0,1488(3)
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 24, -48
	.cfi_offset 23, -52
	.cfi_offset 22, -56
	.cfi_offset 21, -60
	.cfi_offset 20, -64
	.cfi_offset 19, -68
	.cfi_offset 18, -72
	.cfi_offset 17, -76
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	cmpwi 7,0,2
	beq- 7,.L145
.LVL302:
.L115:
.LBE3324:
	.loc 2 1869 0
	mr 3,31
	bl _ZN12idProjectile5ThinkEv
.LBE3323:
	.loc 2 1870 0
	lwz 0,180(1)
	lwz 17,100(1)
	mtlr 0
	lwz 18,104(1)
	lwz 19,108(1)
	lwz 20,112(1)
	lwz 21,116(1)
	lwz 22,120(1)
	lwz 23,124(1)
	lwz 24,128(1)
	lwz 25,132(1)
	lwz 26,136(1)
	lwz 27,140(1)
	lwz 28,144(1)
	lwz 29,148(1)
	lwz 30,152(1)
	lwz 31,156(1)
.LVL303:
	lfd 30,160(1)
	lfd 31,168(1)
	addi 1,1,176
	.cfi_remember_state
.LCFI78:
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
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	blr
.LVL304:
.L145:
.LCFI79:
	.cfi_restore_state
.LBB3461:
.LBB3459:
.LBB3325:
.LBB3326:
	.loc 2 1814 0 discriminator 1
	lwz 11,1496(3)
	cmpwi 7,11,0
	ble- 7,.L146
	lis 28,gameLocal@ha
.LBB3327:
.LBB3328:
.LBB3329:
	.loc 2 1838 0
	lis 9,.LC20@ha
	la 28,gameLocal@l(28)
.LBB3330:
.LBB3331:
.LBB3332:
.LBB3333:
	.loc 8 276 0
	lis 19,_ZN6idMath5iSqrtE@ha
.LBE3333:
.LBE3332:
.LBE3331:
.LBE3330:
.LBE3329:
.LBE3328:
.LBE3327:
	.loc 2 1814 0
	li 30,0
	li 29,0
	addis 26,28,0x25
.LBB3434:
.LBB3391:
.LBB3392:
	.loc 4 635 0
	mr 25,28
.LBE3392:
.LBE3391:
.LBB3394:
	.loc 2 2410 0
	lis 21,_ZN8idPlayer4TypeE@ha
.LBE3394:
.LBB3399:
.LBB3400:
	.file 13 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Bounds.h"
	.loc 13 212 0
	lis 24,.LC6@ha
.LBE3400:
.LBE3399:
	.loc 2 1827 0
	lis 23,.LC2@ha
	.loc 2 1846 0
	lis 22,gameRenderWorld@ha
.LBB3406:
.LBB3388:
	.loc 2 1838 0
	lfs 31,.LC20@l(9)
.LBB3344:
.LBB3340:
.LBB3337:
.LBB3334:
	.loc 8 276 0
	la 19,_ZN6idMath5iSqrtE@l(19)
	.loc 8 278 0
	lis 20,.LC22@ha
	b .L131
.LVL305:
.L117:
.LBE3334:
.LBE3337:
.LBE3340:
.LBE3344:
.LBE3388:
.LBE3406:
.LBE3434:
	.loc 2 1814 0
	addi 29,29,1
.LVL306:
	addi 30,30,224
.LVL307:
	cmpw 7,11,29
	ble- 7,.L116
.LVL308:
.L131:
.LBB3435:
.LBB3407:
.LBB3393:
	.loc 4 634 0
	lwz 9,1508(31)
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL309:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,9,4228
	slwi 10,10,2
	add 10,28,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L117
	.loc 4 636 0
	addi 9,9,132
.LVL310:
	slwi 9,9,2
.LVL311:
	add 9,25,9
	lwz 3,4(9)
.LBE3393:
.LBE3407:
	.loc 2 1815 0
	cmpwi 7,3,0
	beq- 7,.L117
.LVL312:
.LBB3408:
.LBB3395:
	.loc 6 340 0
	lwz 9,0(3)
.LVL313:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL314:
.LBE3395:
	.loc 2 2410 0
	la 9,_ZN8idPlayer4TypeE@l(21)
	lwz 0,56(3)
.LBB3398:
.LBB3396:
.LBB3397:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L118
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L118
.LVL315:
.LBE3397:
.LBE3396:
.LBE3398:
.LBE3408:
.LBB3409:
.LBB3410:
	.loc 4 634 0
	lwz 9,1508(31)
	.loc 4 638 0
	li 27,0
	li 3,0
.LVL316:
	.loc 4 634 0
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL317:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,25,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L147
.LVL318:
.L119:
.LBE3410:
.LBE3409:
	.loc 2 1819 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL319:
.LBB3412:
.LBB3413:
	.loc 5 589 0
	lwz 18,1508(31)
.LBE3413:
.LBE3412:
.LBB3415:
.LBB3403:
	.loc 13 212 0
	lfs 0,0(3)
	lfs 12,4(3)
.LBE3403:
.LBE3415:
.LBB3416:
.LBB3414:
	.loc 5 589 0
	add 18,18,30
.LBE3414:
.LBE3416:
.LBB3417:
.LBB3404:
	.loc 13 212 0
	lfs 13,8(3)
	lfs 9,16(3)
	lfs 10,20(3)
	lfs 11,12(3)
	fadds 12,9,12
	fadds 13,10,13
.LBE3404:
.LBE3417:
	.loc 2 1820 0
	mr 3,31
.LVL320:
.LBB3418:
.LBB3405:
	.loc 13 212 0
	fadds 11,11,0
	lfs 0,.LC6@l(24)
	fmuls 12,12,0
.LVL321:
	fmuls 13,13,0
.LVL322:
	fmuls 0,11,0
.LBB3401:
.LBB3402:
	.loc 3 397 0
	stfs 12,24(1)
	.loc 3 398 0
	stfs 13,28(1)
.LVL323:
	.loc 3 396 0
	stfs 0,20(1)
.LBE3402:
.LBE3401:
.LBE3405:
.LBE3418:
	.loc 2 1820 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL324:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL325:
	.loc 2 1821 0
	lwz 11,20(1)
.LBB3419:
.LBB3420:
	.loc 3 424 0
	lwz 0,0(3)
	stw 0,64(18)
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,68(18)
.LBE3420:
.LBE3419:
	.loc 2 1827 0
	lwz 0,.LC2@l(23)
.LBB3422:
.LBB3421:
	.loc 3 426 0
	lwz 9,8(3)
	stw 9,72(18)
.LVL326:
.LBE3421:
.LBE3422:
	.loc 2 1821 0
	lwz 9,1508(31)
	add 9,9,30
	stw 11,160(9)
.LVL327:
	.loc 2 1822 0
	lwz 11,24(1)
	lwz 9,1508(31)
	add 9,9,30
	stw 11,164(9)
.LVL328:
	.loc 2 1823 0
	lwz 11,28(1)
	lwz 9,1508(31)
	add 9,9,30
	stw 11,168(9)
.LVL329:
.LBB3423:
.LBB3424:
	.loc 5 589 0
	lwz 9,1508(31)
	add 9,9,30
.LVL330:
.LBE3424:
.LBE3423:
	.loc 2 1827 0
	stw 0,140(9)
	stw 0,136(9)
	stw 0,132(9)
	stw 0,128(9)
.LBB3425:
	.loc 2 1828 0
	lwz 9,2004(26)
	lwz 0,1732(31)
	cmpw 7,9,0
	ble- 7,.L121
.LVL331:
.LBB3389:
.LBB3345:
	.loc 2 2410 0
	lwz 9,1740(31)
.LBE3345:
	.loc 2 1830 0
	cmpwi 7,9,0
	beq- 7,.L122
	.loc 2 1830 0 is_stmt 0 discriminator 1
	lbz 0,0(9)
.LBB3346:
.LBB3347:
	.loc 5 589 0 is_stmt 1 discriminator 1
	lwz 9,1508(31)
.LBE3347:
.LBE3346:
	.loc 2 1830 0 discriminator 1
	cmpwi 7,0,0
	beq- 7,.L144
.LVL332:
.LBB3349:
.LBB3350:
	.loc 4 634 0 discriminator 3
	lwzx 0,9,30
.LBE3350:
.LBE3349:
.LBB3353:
.LBB3348:
	.loc 5 589 0 discriminator 3
	add 9,9,30
.LVL333:
.LBE3348:
.LBE3353:
.LBB3354:
.LBB3351:
	.loc 4 634 0 discriminator 3
	rlwinm 11,0,0,20,31
.LVL334:
	.loc 4 635 0 discriminator 3
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,25,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L148
.LVL335:
.L124:
.LBE3351:
.LBE3354:
	.loc 2 1838 0
	stfs 31,140(9)
	.loc 2 1839 0
	li 0,0
	.loc 2 1838 0
	stfs 31,136(9)
	stfs 31,132(9)
	stfs 31,128(9)
.LVL336:
.L134:
	.loc 2 1841 0
	cmpwi 7,27,0
	beq- 7,.L130
.LVL337:
.LBB3355:
.LBB3356:
	.file 14 "d:/Data/Nintendo/DoomGX/src/game/PlayerView.h"
	.loc 14 84 0
	stb 0,4384(27)
.LVL338:
.L130:
.LBE3356:
.LBE3355:
	.loc 2 1844 0
	lwz 9,2004(26)
	addi 0,9,333
.LVL339:
	stw 0,1732(31)
.LVL340:
.L121:
.LBE3389:
.LBE3425:
	.loc 2 1846 0
	lwz 3,gameRenderWorld@l(22)
.LVL341:
.LBE3435:
	.loc 2 1814 0
	addi 29,29,1
.LVL342:
.LBB3436:
.LBB3426:
.LBB3427:
	.loc 5 589 0
	lwz 5,1508(31)
.LBE3427:
.LBE3426:
	.loc 2 1846 0
	lwz 9,0(3)
.LBB3429:
.LBB3428:
	.loc 5 589 0
	add 5,5,30
.LBE3428:
.LBE3429:
.LBE3436:
	.loc 2 1814 0
	addi 30,30,224
.LBB3437:
	.loc 2 1846 0
	lwz 0,20(9)
	lwz 4,220(5)
	addi 5,5,4
	mtctr 0
	bctrl
.LVL343:
	lwz 11,1496(31)
.LBE3437:
	.loc 2 1814 0
	cmpw 7,11,29
	bgt+ 7,.L131
.LVL344:
.L116:
.LBE3326:
	.loc 2 1849 0
	lwz 0,1728(31)
	cmpwi 7,0,0
	blt- 7,.L132
	.loc 2 1850 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	.loc 2 1851 0
	lis 9,gameRenderWorld@ha
.LBB3440:
.LBB3441:
	.loc 3 424 0
	lwz 0,0(3)
.LBE3441:
.LBE3440:
	.loc 2 1850 0
	mr 11,3
.LVL345:
	.loc 2 1851 0
	lwz 9,gameRenderWorld@l(9)
	addi 5,31,1512
.LBB3445:
.LBB3442:
	.loc 3 424 0
	stw 0,1572(31)
.LBE3442:
.LBE3445:
	.loc 2 1851 0
	lwz 4,1728(31)
.LBB3446:
.LBB3443:
	.loc 3 425 0
	lwz 0,4(3)
.LBE3443:
.LBE3446:
	.loc 2 1851 0
	mr 3,9
.LVL346:
.LBB3447:
.LBB3444:
	.loc 3 425 0
	stw 0,1576(31)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,1580(31)
.LBE3444:
.LBE3447:
	.loc 2 1851 0
	lwz 9,0(9)
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL347:
.L132:
	.loc 2 1856 0
	lwz 0,2004(26)
	lis 29,0x4330
	stw 29,72(1)
	lis 9,.LC4@ha
	rlwinm 0,0,0,20,31
	lfs 30,.LC4@l(9)
	xoris 0,0,0x8000
	lis 9,.LC23@ha
	stw 0,76(1)
	.loc 2 1858 0
	li 30,0
	.loc 2 1856 0
	lfs 31,.LC23@l(9)
	lis 9,.LC24@ha
	lfd 0,72(1)
	.loc 2 1859 0
	mr 3,31
	.loc 2 1856 0
	lfs 13,.LC24@l(9)
	.loc 2 1859 0
	addi 4,1,8
	.loc 2 1856 0
	fsub 0,0,30
	.loc 2 1858 0
	stw 30,16(1)
	.loc 2 1856 0
	frsp 0,0
	fmuls 0,0,31
	fmuls 0,0,13
	stfs 0,8(1)
	.loc 2 1857 0
	stfs 0,12(1)
	.loc 2 1859 0
	bl _ZN8idEntity9SetAnglesERK8idAngles
	.loc 2 1861 0
	lwz 0,2004(26)
	lis 9,.LC25@ha
	stw 29,80(1)
	.loc 2 1864 0
	addi 3,1,32
	.loc 2 1861 0
	rlwinm 0,0,0,21,31
	lfs 13,.LC25@l(9)
	xoris 0,0,0x8000
	.loc 2 1864 0
	addi 4,1,8
	.loc 2 1861 0
	stw 0,84(1)
	.loc 2 1863 0
	stw 30,16(1)
	.loc 2 1861 0
	lfd 0,80(1)
	fsub 0,0,30
	frsp 0,0
	fmuls 0,0,31
	fmuls 0,0,13
	stfs 0,8(1)
	.loc 2 1862 0
	stfs 0,12(1)
	.loc 2 1864 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL348:
.LBB3448:
.LBB3449:
	.loc 12 333 0
	addi 7,31,1584
	li 10,0
.L133:
.LBB3450:
.LBB3451:
	.loc 3 424 0
	addi 11,1,32
.LVL349:
	mr 9,7
	lwzux 0,11,10
.LVL350:
.LBE3451:
.LBE3450:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB3454:
.LBB3452:
	.loc 3 424 0
	stwux 0,9,10
.LBE3452:
.LBE3454:
	.loc 12 333 0
	addi 10,10,12
.LBB3455:
.LBB3453:
	.loc 3 425 0
	lwz 8,4(11)
	.loc 3 426 0
	lwz 0,8(11)
	.loc 3 425 0
	stw 8,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LBE3453:
.LBE3455:
	.loc 12 333 0
	bne+ 7,.L133
.LBE3449:
.LBE3448:
	.loc 2 1866 0
	mr 3,31
	bl _ZN8idEntity13UpdateVisualsEv
	b .L115
.LVL351:
.L118:
.LBB3456:
.LBB3438:
.LBB3430:
.LBB3431:
	.loc 4 634 0 discriminator 3
	lwz 9,1508(31)
	.loc 4 635 0 discriminator 3
	li 27,0
	.loc 4 638 0 discriminator 3
	li 3,0
.LVL352:
	.loc 4 634 0 discriminator 3
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL353:
	.loc 4 635 0 discriminator 3
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L119
	addi 9,9,132
.LVL354:
.L120:
	.loc 4 636 0
	slwi 9,9,2
	add 9,28,9
	lwz 3,4(9)
	b .L119
.LVL355:
.L122:
.LBE3431:
.LBE3430:
.LBE3438:
.LBE3456:
.LBE3325:
.LBE3459:
.LBE3461:
	.loc 2 1870 0
	lwz 9,1508(31)
.LVL356:
.L144:
	add 9,9,30
	b .L124
.LVL357:
.L147:
.LBB3462:
.LBB3460:
.LBB3458:
.LBB3457:
.LBB3439:
.LBB3432:
.LBB3411:
	.loc 4 636 0
	addi 9,9,132
.LVL358:
	slwi 11,9,2
	add 11,25,11
	lwz 27,4(11)
.LVL359:
	b .L120
.LVL360:
.L148:
.LBE3411:
.LBE3432:
.LBB3433:
.LBB3390:
.LBB3357:
.LBB3352:
	addi 11,11,132
.LVL361:
	slwi 11,11,2
.LVL362:
	add 11,25,11
	lwz 17,4(11)
.LBE3352:
.LBE3357:
	.loc 2 1830 0
	cmpwi 7,17,0
	beq- 7,.L124
.LVL363:
	lwz 9,0(17)
.LVL364:
	mr 3,31
.LVL365:
	lwz 18,160(9)
.LVL366:
	bl _ZNK8idEntity10GetPhysicsEv
.LVL367:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	addi 5,1,20
	mr 4,3
	mtctr 18
	mr 3,17
	bctrl
.LBB3358:
.LBB3359:
	.loc 4 634 0
	lwz 9,1508(31)
.LBE3359:
.LBE3358:
	.loc 2 1830 0
	cmpwi 7,3,0
	beq- 7,.L144
.LVL368:
.LBB3361:
.LBB3360:
	.loc 4 634 0 discriminator 6
	lwzx 0,9,30
	.loc 4 638 0 discriminator 6
	li 3,0
	.loc 4 634 0 discriminator 6
	rlwinm 9,0,0,20,31
.LVL369:
	.loc 4 635 0 discriminator 6
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,25,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L126
	.loc 4 636 0
	addi 9,9,132
.LVL370:
	slwi 9,9,2
.LVL371:
	add 9,25,9
	lwz 3,4(9)
.L126:
.LBE3360:
.LBE3361:
	.loc 2 1831 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL372:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 18,3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL373:
.LBB3362:
.LBB3363:
	.loc 3 431 0
	lfs 12,4(18)
	lfs 0,4(3)
	lfs 11,0(18)
	fsubs 12,12,0
	lfs 0,0(3)
	lfs 10,8(18)
	fsubs 11,11,0
	lfs 13,8(3)
.LBE3363:
.LBE3362:
.LBB3366:
.LBB3341:
	.loc 3 649 0
	fmuls 0,12,12
.LBE3341:
.LBE3366:
.LBB3367:
.LBB3368:
	.loc 4 634 0
	lwz 9,1508(31)
.LBE3368:
.LBE3367:
.LBB3372:
.LBB3364:
	.loc 3 431 0
	fsubs 13,10,13
.LVL374:
.LBE3364:
.LBE3372:
.LBB3373:
.LBB3342:
.LBB3338:
.LBB3335:
	.loc 8 275 0
	lfs 7,.LC6@l(24)
	.loc 8 278 0
	lfs 8,.LC22@l(20)
.LBE3335:
.LBE3338:
.LBE3342:
.LBE3373:
.LBB3374:
.LBB3369:
	.loc 4 638 0
	li 3,0
.LVL375:
.LBE3369:
.LBE3374:
.LBB3375:
.LBB3365:
	.loc 3 649 0
	fmadds 0,11,11,0
	fmadds 0,13,13,0
	stfs 0,88(1)
.LVL376:
.LBE3365:
.LBE3375:
.LBB3376:
.LBB3343:
.LBB3339:
.LBB3336:
	.loc 8 275 0
	fmuls 7,0,7
	.loc 8 270 0
	lwz 0,88(1)
.LVL377:
	.loc 2 1810 0
	fneg 7,7
	.loc 8 276 0
	rlwinm 11,0,19,21,29
	rlwinm 10,0,9,24,31
	lwzx 11,19,11
	subfic 0,10,380
	rlwinm 0,0,22,0,8
	or 0,0,11
	.loc 8 277 0
	stw 0,92(1)
	lfs 0,92(1)
.LVL378:
	fmr 9,0
.LVL379:
	.loc 8 278 0
	fmul 10,9,9
	fmadd 10,7,10,8
	fmul 10,9,10
.LVL380:
	.loc 8 279 0
	fmul 0,10,10
	fmadd 0,7,0,8
.LVL381:
	fmul 0,10,0
.LVL382:
	.loc 8 280 0
	frsp 0,0
.LVL383:
.LBE3336:
.LBE3339:
	.loc 3 651 0
	fmuls 11,11,0
.LVL384:
	.loc 3 652 0
	fmuls 12,12,0
.LVL385:
	.loc 3 653 0
	fmuls 0,13,0
	.loc 3 651 0
	stfs 11,20(1)
	.loc 3 652 0
	stfs 12,24(1)
	.loc 3 653 0
	stfs 0,28(1)
.LVL386:
.LBE3343:
.LBE3376:
.LBB3377:
.LBB3370:
	.loc 4 634 0
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL387:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L149
.LVL388:
.L127:
.LBE3370:
.LBE3377:
.LBB3378:
.LBB3379:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 5,0
.LBE3379:
.LBE3378:
	.loc 2 1833 0
	lwz 11,0(3)
.LBB3383:
.LBB3380:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
	.loc 4 635 0
	srawi 0,0,12
	addi 10,9,4228
	slwi 10,10,2
	add 10,28,10
	lwz 10,4(10)
	cmpw 7,10,0
.LBE3380:
.LBE3383:
	.loc 2 1833 0
	lwz 0,164(11)
.LVL389:
.LBB3384:
.LBB3381:
	.loc 4 635 0
	beq- 7,.L150
.LVL390:
.L128:
.LBE3381:
.LBE3384:
	.loc 2 1833 0
	lfs 1,652(31)
.LBB3385:
	.loc 2 2410 0
	lwz 7,1740(31)
.LBE3385:
	.loc 2 1833 0
	fcmpu 7,1,31
	bne- 7,.L129
	lfs 1,.LC2@l(23)
.L129:
	.loc 2 1833 0 is_stmt 0 discriminator 3
	mtctr 0
	mr 4,31
	addi 6,1,20
	li 8,-1
	bctrl
.LVL391:
	.loc 2 1829 0 is_stmt 1 discriminator 3
	li 0,1
	b .L134
.LVL392:
.L150:
.LBB3386:
.LBB3382:
	.loc 4 636 0
	addi 9,9,132
.LVL393:
	slwi 9,9,2
.LVL394:
	add 9,25,9
	lwz 5,4(9)
	b .L128
.LVL395:
.L149:
.LBE3382:
.LBE3386:
.LBB3387:
.LBB3371:
	addi 9,9,132
.LVL396:
	slwi 9,9,2
.LVL397:
	add 9,25,9
	lwz 3,4(9)
	b .L127
.LVL398:
.L146:
	lis 26,gameLocal+2424832@ha
	la 26,gameLocal+2424832@l(26)
	b .L116
.LBE3371:
.LBE3387:
.LBE3390:
.LBE3433:
.LBE3439:
.LBE3457:
.LBE3458:
.LBE3460:
.LBE3462:
	.cfi_endproc
.LFE2902:
	.size	_ZN15idBFGProjectile5ThinkEv, .-_ZN15idBFGProjectile5ThinkEv
	.align 2
	.globl _ZN18idGuidedProjectile5ThinkEv
	.type	_ZN18idGuidedProjectile5ThinkEv, @function
_ZN18idGuidedProjectile5ThinkEv:
.LFB2867:
	.loc 2 1337 0
	.cfi_startproc
.LVL399:
	mflr 0
	stwu 1,-208(1)
.LCFI80:
	.cfi_def_cfa_offset 208
	.cfi_register 65, 0
	stw 31,196(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,212(1)
	stfd 31,200(1)
	stw 28,184(1)
	stw 29,188(1)
	stw 30,192(1)
.LBB3536:
	.loc 2 1350 0
	lwz 0,1488(3)
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	cmpwi 7,0,2
	beq- 7,.L171
.L152:
	.loc 2 1406 0
	mr 3,31
.LVL400:
	bl _ZN12idProjectile5ThinkEv
.LBE3536:
	.loc 2 1407 0
	lwz 0,212(1)
	lwz 28,184(1)
	mtlr 0
	lwz 29,188(1)
	lwz 30,192(1)
	lwz 31,196(1)
.LVL401:
	lfd 31,200(1)
	addi 1,1,208
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL402:
.L171:
.LCFI82:
	.cfi_restore_state
.LBB3695:
	.loc 2 1350 0 discriminator 1
	lbz 0,1553(3)
	cmpwi 7,0,0
	bne+ 7,.L152
	.loc 2 1352 0
	lwz 9,0(3)
	addi 4,1,56
	lis 28,.LC6@ha
	lwz 0,236(9)
	mtctr 0
	bctrl
.LVL403:
	.loc 2 1354 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	lwz 10,1540(31)
	addis 11,9,0x25
	lwz 0,2004(11)
	cmpw 7,10,0
	bge- 7,.L153
.LVL404:
.LBB3537:
.LBB3538:
.LBB3539:
.LBB3540:
.LBB3541:
.LBB3542:
	.loc 7 71 0
	addis 9,9,0x1
	lis 0,0x1
	lwz 8,-32064(9)
	ori 0,0,3533
.LBE3542:
.LBE3541:
	.loc 7 83 0
	lis 10,0x4330
.LBE3540:
.LBE3539:
	.loc 7 87 0
	lfs 0,.LC6@l(28)
.LBB3554:
.LBB3549:
.LBB3546:
.LBB3543:
	.loc 7 71 0
	mullw 8,0,8
.LBE3543:
.LBE3546:
	.loc 7 83 0
	stw 10,152(1)
.LBB3547:
.LBB3544:
	.loc 7 71 0
	addi 8,8,1
	.loc 7 72 0
	rlwinm 7,8,0,17,31
.LBE3544:
.LBE3547:
	.loc 7 83 0
	xoris 7,7,0x8000
	stw 7,156(1)
	lis 7,.LC4@ha
	lfs 12,.LC4@l(7)
.LBE3549:
.LBE3554:
	.loc 7 87 0
	lis 7,.LC5@ha
.LBB3555:
.LBB3550:
	.loc 7 83 0
	lfd 10,152(1)
.LBE3550:
.LBE3555:
	.loc 7 87 0
	lfs 13,.LC5@l(7)
.LBB3556:
.LBB3551:
	.loc 7 83 0
	fsub 10,10,12
.LBE3551:
.LBE3556:
.LBE3538:
.LBE3537:
	.loc 2 1355 0
	lfs 11,1504(31)
.LVL405:
.LBB3562:
.LBB3559:
.LBB3557:
.LBB3552:
.LBB3548:
.LBB3545:
	.loc 7 71 0
	stw 8,-32064(9)
.LBE3545:
.LBE3548:
.LBE3552:
.LBE3557:
.LBE3559:
.LBE3562:
.LBB3563:
.LBB3564:
.LBB3565:
.LBB3566:
	.loc 7 83 0
	stw 10,160(1)
.LBE3566:
.LBE3565:
.LBE3564:
.LBE3563:
.LBB3577:
.LBB3560:
.LBB3558:
.LBB3553:
	frsp 10,10
.LBE3553:
.LBE3558:
.LBE3560:
.LBE3577:
	.loc 2 1356 0
	lfs 9,1508(31)
.LBB3578:
.LBB3579:
.LBB3580:
.LBB3581:
	.loc 7 83 0
	stw 10,168(1)
.LBE3581:
.LBE3580:
.LBE3579:
.LBE3578:
.LBB3589:
.LBB3561:
	.loc 7 87 0
	fmsubs 10,10,13,0
	fadds 10,10,10
.LBE3561:
.LBE3589:
	.loc 2 1355 0
	fmuls 10,11,10
	stfs 10,1516(31)
.LVL406:
.LBB3590:
.LBB3575:
.LBB3573:
.LBB3571:
.LBB3567:
.LBB3568:
	.loc 7 71 0
	lwz 10,-32064(9)
	mullw 10,0,10
	addi 10,10,1
	.loc 7 72 0
	rlwinm 8,10,0,17,31
.LBE3568:
.LBE3567:
	.loc 7 83 0
	xoris 8,8,0x8000
	stw 8,164(1)
.LBB3570:
.LBB3569:
	.loc 7 71 0
	stw 10,-32064(9)
.LBE3569:
.LBE3570:
	.loc 7 83 0
	lfd 11,160(1)
.LBE3571:
.LBE3573:
.LBE3575:
.LBE3590:
	.loc 2 1357 0
	lfs 10,1512(31)
.LBB3591:
.LBB3576:
.LBB3574:
.LBB3572:
	.loc 7 83 0
	fsub 11,11,12
	frsp 11,11
.LBE3572:
.LBE3574:
	.loc 7 87 0
	fmsubs 11,11,13,0
	fadds 11,11,11
.LBE3576:
.LBE3591:
	.loc 2 1356 0
	fmuls 11,9,11
	stfs 11,1520(31)
.LVL407:
.LBB3592:
.LBB3588:
.LBB3587:
.LBB3586:
.LBB3582:
.LBB3583:
	.loc 7 71 0
	lwz 10,-32064(9)
	mullw 10,0,10
	addi 0,10,1
	.loc 7 72 0
	rlwinm 10,0,0,17,31
.LBE3583:
.LBE3582:
	.loc 7 83 0
	xoris 10,10,0x8000
	stw 10,172(1)
.LBB3585:
.LBB3584:
	.loc 7 71 0
	stw 0,-32064(9)
.LBE3584:
.LBE3585:
	.loc 7 83 0
	lfd 11,168(1)
	fsub 12,11,12
	frsp 12,12
.LBE3586:
.LBE3587:
	.loc 7 87 0
	fmsubs 0,12,13,0
	fadds 0,0,0
.LBE3588:
.LBE3592:
	.loc 2 1357 0
	fmuls 0,10,0
	stfs 0,1524(31)
	.loc 2 1358 0
	lwz 9,2004(11)
	addi 0,9,200
	stw 0,1540(31)
.LVL408:
.L153:
	.loc 2 1361 0
	addi 30,31,936
	li 4,0
	mr 3,30
	bl _ZNK19idPhysics_RigidBody9GetOriginEi
	li 4,0
	mr 29,3
	mr 3,30
	bl _ZNK19idPhysics_RigidBody7GetAxisEi
.LVL409:
.LBB3593:
.LBB3594:
	.loc 3 452 0
	lis 9,.LC26@ha
	lfs 12,4(3)
.LBE3594:
.LBE3593:
	.loc 2 1365 0
	addi 4,1,68
.LBB3601:
.LBB3595:
	.loc 3 452 0
	lfs 13,4(29)
	lfs 0,.LC26@l(9)
.LBE3595:
.LBE3601:
.LBB3602:
.LBB3603:
.LBB3604:
.LBB3605:
	.loc 8 278 0
	lis 9,.LC22@ha
.LBE3605:
.LBE3604:
.LBE3603:
.LBE3602:
.LBB3618:
.LBB3596:
	.loc 3 452 0
	lfs 11,0(3)
	fmadds 12,12,0,13
	lfs 13,0(29)
	lfs 10,8(3)
.LBE3596:
.LBE3618:
	.loc 2 1365 0
	addi 3,1,20
.LVL410:
.LBB3619:
.LBB3597:
	.loc 3 452 0
	fmadds 11,11,0,13
.LVL411:
	.loc 3 431 0
	lfs 13,60(1)
.LBE3597:
.LBE3619:
.LBB3620:
.LBB3614:
.LBB3610:
.LBB3606:
	.loc 8 278 0
	lfs 8,.LC22@l(9)
.LBE3606:
.LBE3610:
.LBE3614:
.LBE3620:
.LBB3621:
.LBB3598:
	.loc 3 431 0
	fsubs 12,13,12
.LVL412:
	.loc 3 452 0
	lfs 13,8(29)
.LBE3598:
.LBE3621:
.LBB3622:
.LBB3615:
.LBB3611:
.LBB3607:
	.loc 8 275 0
	lfs 7,.LC6@l(28)
.LBE3607:
.LBE3611:
.LBE3615:
.LBE3622:
.LBB3623:
.LBB3599:
	.loc 3 452 0
	fmadds 0,10,0,13
	.loc 3 431 0
	lfs 13,56(1)
.LBE3599:
.LBE3623:
.LBB3624:
.LBB3616:
	.loc 3 649 0
	fmuls 10,12,12
.LVL413:
.LBE3616:
.LBE3624:
.LBB3625:
.LBB3600:
	.loc 3 431 0
	fsubs 11,13,11
.LVL414:
	lfs 13,64(1)
	fsubs 13,13,0
.LVL415:
	.loc 3 649 0
	fmadds 0,11,11,10
.LVL416:
	fmadds 0,13,13,0
	stfs 0,176(1)
.LVL417:
.LBE3600:
.LBE3625:
.LBB3626:
.LBB3617:
.LBB3612:
.LBB3608:
	.loc 8 275 0
	fmuls 7,0,7
	.loc 8 270 0
	lwz 0,176(1)
.LVL418:
	.loc 2 1337 0
	fneg 7,7
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	or 0,0,9
	.loc 8 277 0
	stw 0,180(1)
	lfs 0,180(1)
.LVL419:
	fmr 9,0
.LVL420:
	.loc 8 278 0
	fmul 10,9,9
	fmadd 10,7,10,8
	fmul 10,9,10
.LVL421:
	.loc 8 279 0
	fmul 0,10,10
	fmadd 0,7,0,8
.LVL422:
	fmul 0,10,0
.LVL423:
.LBE3608:
.LBE3612:
	.loc 3 654 0
	lfs 10,176(1)
.LVL424:
.LBB3613:
.LBB3609:
	.loc 8 280 0
	frsp 0,0
.LVL425:
.LBE3609:
.LBE3613:
	.loc 3 653 0
	fmuls 13,13,0
.LVL426:
	.loc 3 651 0
	fmuls 11,11,0
.LVL427:
	.loc 3 652 0
	fmuls 12,12,0
.LVL428:
	.loc 3 654 0
	fmuls 31,10,0
	.loc 3 653 0
	stfs 13,76(1)
	.loc 3 651 0
	stfs 11,68(1)
	.loc 3 652 0
	stfs 12,72(1)
.LBE3617:
.LBE3626:
	.loc 2 1365 0
	bl _ZNK6idVec38ToAnglesEv
.LVL429:
	.loc 2 1368 0
	lfs 0,1548(31)
	.loc 2 1369 0
	lis 9,.LC2@ha
	lfs 13,.LC2@l(9)
	.loc 2 1368 0
	fdivs 0,31,0
.LBB3627:
.LBB3628:
	.file 15 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Angles.h"
	.loc 15 146 0
	lfs 10,20(1)
.LVL430:
	.loc 15 147 0
	lfs 8,24(1)
.LVL431:
	.loc 15 148 0
	lfs 9,28(1)
.LVL432:
.LBE3628:
.LBE3627:
	.loc 2 1369 0
	fcmpu 7,0,13
	bng- 7,.L154
	.loc 2 1370 0
	fmr 0,13
.LVL433:
.L154:
.LBB3629:
.LBB3630:
	.loc 15 165 0
	lfs 12,1532(31)
.LBE3630:
.LBE3629:
	.loc 2 1376 0
	addi 29,1,32
.LVL434:
.LBB3634:
.LBB3631:
	.loc 15 165 0
	lfs 13,1536(31)
.LBE3631:
.LBE3634:
	.loc 2 1376 0
	mr 3,29
.LBB3635:
.LBB3632:
	.loc 15 165 0
	lfs 11,1528(31)
	fsubs 12,8,12
	fsubs 13,9,13
.LBE3632:
.LBE3635:
	.loc 15 153 0
	lfs 8,1520(31)
.LBB3636:
.LBB3633:
	.loc 15 165 0
	fsubs 11,10,11
.LBE3633:
.LBE3636:
	.loc 15 153 0
	lfs 9,1524(31)
.LBB3637:
.LBB3638:
	lfs 10,1516(31)
.LBE3638:
.LBE3637:
	fmadds 12,0,8,12
	fmadds 13,0,9,13
.LVL435:
.LBB3640:
.LBB3639:
	fmadds 0,0,10,11
.LVL436:
	.loc 15 147 0
	stfs 12,36(1)
	.loc 15 148 0
	stfs 13,40(1)
	.loc 15 146 0
	stfs 0,32(1)
.LBE3639:
.LBE3640:
	.loc 2 1376 0
	bl _ZN8idAngles12Normalize180Ev
.LVL437:
	.loc 2 1378 0
	lfs 13,1544(31)
	.loc 2 1380 0
	li 9,0
	fneg 12,13
.LVL438:
.L159:
	.loc 2 1378 0
	lfsx 0,29,9
.LBB3641:
.LBB3642:
	.loc 15 138 0
	add 11,29,9
.LBE3642:
.LBE3641:
	.loc 2 1378 0
	fcmpu 7,0,13
	bng- 7,.L170
.LVL439:
	.loc 2 1379 0
	stfsx 13,29,9
.LVL440:
.L157:
	.loc 2 1377 0
	cmpwi 7,9,8
	addi 9,9,4
	bne+ 7,.L159
.LVL441:
.LBB3643:
.LBB3644:
	.loc 15 157 0
	lfs 12,1528(31)
.LBE3644:
.LBE3643:
	.loc 2 1387 0
	addi 3,1,8
.LBB3647:
.LBB3645:
	.loc 15 157 0
	lfs 0,32(1)
.LBE3645:
.LBE3647:
	.loc 2 1387 0
	addi 4,31,1528
.LBB3648:
.LBB3646:
	.loc 15 158 0
	lfs 13,1532(31)
	.loc 15 157 0
	fadds 12,12,0
	.loc 15 158 0
	lfs 0,36(1)
	.loc 15 159 0
	lfs 11,1536(31)
	.loc 15 158 0
	fadds 13,13,0
	.loc 15 159 0
	lfs 0,40(1)
	.loc 15 157 0
	stfs 12,1528(31)
	.loc 15 159 0
	fadds 0,11,0
	.loc 15 158 0
	stfs 13,1532(31)
	.loc 15 159 0
	stfs 0,1536(31)
.LBE3646:
.LBE3648:
	.loc 2 1387 0
	bl _ZNK8idAngles9ToForwardEv
.LVL442:
	.loc 2 1390 0
	lbz 0,1552(31)
	.loc 2 1388 0
	lfs 13,1496(31)
.LVL443:
.LBB3649:
.LBB3650:
	.loc 3 424 0
	lfs 10,8(1)
.LBE3650:
.LBE3649:
	.loc 2 1390 0
	cmpwi 7,0,0
.LBB3654:
.LBB3651:
	.loc 3 425 0
	lfs 11,12(1)
	.loc 3 426 0
	lfs 12,16(1)
.LBE3651:
.LBE3654:
.LBB3655:
.LBB3656:
	.loc 3 439 0
	fmuls 9,13,10
	fmuls 0,13,11
.LBE3656:
.LBE3655:
.LBB3658:
.LBB3652:
	.loc 3 424 0
	stfs 10,68(1)
.LBE3652:
.LBE3658:
.LBB3659:
.LBB3657:
	.loc 3 439 0
	fmuls 13,13,12
.LVL444:
.LBE3657:
.LBE3659:
.LBB3660:
.LBB3653:
	.loc 3 425 0
	stfs 11,72(1)
	.loc 3 426 0
	stfs 12,76(1)
.LBE3653:
.LBE3660:
.LBB3661:
.LBB3662:
	.loc 3 424 0
	stfs 9,44(1)
	.loc 3 425 0
	stfs 0,48(1)
	.loc 3 426 0
	stfs 13,52(1)
.LBE3662:
.LBE3661:
	.loc 2 1390 0
	beq- 7,.L160
	.loc 2 1390 0 is_stmt 0 discriminator 1
	lfs 12,1556(31)
	fcmpu 7,12,31
	bgt- 7,.L172
.LVL445:
.L160:
	.loc 2 1395 0 is_stmt 1
	mr 3,30
	addi 4,1,44
	li 5,0
	bl _ZN19idPhysics_RigidBody17SetLinearVelocityERK6idVec3i
.LVL446:
	.loc 2 1398 0
	addi 3,1,80
	addi 4,1,68
.LVL447:
	bl _ZNK6idVec36ToMat3Ev
.LVL448:
	li 10,0
.L162:
.LBB3663:
.LBB3664:
.LBB3665:
.LBB3666:
	.loc 3 424 0
	addi 11,1,80
.LVL449:
	addi 9,1,116
	lwzux 0,11,10
.LVL450:
.LBE3666:
.LBE3665:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB3669:
.LBB3667:
	.loc 3 424 0
	stwux 0,9,10
.LBE3667:
.LBE3669:
	.loc 12 333 0
	addi 10,10,12
.LBB3670:
.LBB3668:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE3668:
.LBE3670:
	.loc 12 333 0
	bne+ 7,.L162
.LVL451:
.LBE3664:
.LBE3663:
.LBB3671:
.LBB3672:
	.loc 3 424 0
	lwz 0,116(1)
.LBE3672:
.LBE3671:
	.loc 2 1403 0
	mr 3,31
.LBB3677:
.LBB3678:
	.loc 3 424 0
	lfs 12,140(1)
.LVL452:
.LBE3678:
.LBE3677:
.LBB3679:
.LBB3680:
	.loc 3 420 0
	lfs 13,144(1)
	lfs 0,148(1)
	fneg 12,12
.LBE3680:
.LBE3679:
.LBB3683:
.LBB3673:
	.loc 3 424 0
	stw 0,140(1)
.LBE3673:
.LBE3683:
.LBB3684:
.LBB3681:
	.loc 3 420 0
	fneg 13,13
.LBE3681:
.LBE3684:
.LBB3685:
.LBB3674:
	.loc 3 425 0
	lwz 0,120(1)
.LBE3674:
.LBE3685:
.LBB3686:
.LBB3682:
	.loc 3 420 0
	fneg 0,0
.LBE3682:
.LBE3686:
.LBB3687:
.LBB3688:
	.loc 3 424 0
	stfs 12,116(1)
.LBE3688:
.LBE3687:
.LBB3690:
.LBB3675:
	.loc 3 425 0
	stw 0,144(1)
	.loc 3 426 0
	lwz 0,124(1)
.LBE3675:
.LBE3690:
.LBB3691:
.LBB3689:
	.loc 3 425 0
	stfs 13,120(1)
	.loc 3 426 0
	stfs 0,124(1)
.LBE3689:
.LBE3691:
.LBB3692:
.LBB3676:
	stw 0,148(1)
.LVL453:
.LBE3676:
.LBE3692:
	.loc 2 1403 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL454:
	lwz 9,0(3)
	addi 4,1,116
	li 5,-1
	lwz 0,120(9)
	mtctr 0
	bctrl
	.loc 2 1406 0
	mr 3,31
	bl _ZN12idProjectile5ThinkEv
.LBE3695:
	.loc 2 1407 0
	lwz 0,212(1)
	lwz 28,184(1)
	mtlr 0
	lwz 29,188(1)
.LVL455:
	lwz 30,192(1)
	lwz 31,196(1)
.LVL456:
	lfd 31,200(1)
	addi 1,1,208
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI83:
	.cfi_def_cfa_offset 0
	blr
.LVL457:
.L170:
.LCFI84:
	.cfi_restore_state
.LBB3696:
	.loc 2 1380 0
	fcmpu 7,0,12
	bnl- 7,.L157
.LVL458:
	.loc 2 1381 0
	stfs 12,0(11)
	b .L157
.LVL459:
.L172:
	.loc 2 1392 0
	lfs 12,1560(31)
.LVL460:
	.loc 2 1391 0
	li 0,1
	stb 0,1553(31)
.LBB3693:
.LBB3694:
	.loc 3 489 0
	fmuls 9,12,9
.LVL461:
	.loc 3 490 0
	fmuls 0,12,0
.LVL462:
	.loc 3 491 0
	fmuls 13,12,13
.LVL463:
	.loc 3 489 0
	stfs 9,44(1)
	.loc 3 490 0
	stfs 0,48(1)
	.loc 3 491 0
	stfs 13,52(1)
	b .L160
.LBE3694:
.LBE3693:
.LBE3696:
	.cfi_endproc
.LFE2867:
	.size	_ZN18idGuidedProjectile5ThinkEv, .-_ZN18idGuidedProjectile5ThinkEv
	.align 2
	.globl _ZN12idProjectile18Event_RadiusDamageEP8idEntity
	.type	_ZN12idProjectile18Event_RadiusDamageEP8idEntity, @function
_ZN12idProjectile18Event_RadiusDamageEP8idEntity:
.LFB2841:
	.loc 2 755 0
	.cfi_startproc
.LVL464:
	stwu 1,-24(1)
.LCFI85:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBB3704:
.LBB3705:
.LBB3706:
	.file 16 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Dict.h"
	.loc 16 241 0
	lis 4,.LC28@ha
.LVL465:
.LBE3706:
.LBE3705:
.LBE3704:
	.loc 2 755 0
	stw 29,12(1)
.LBB3722:
.LBB3712:
.LBB3708:
	.loc 16 241 0
	la 4,.LC28@l(4)
.LBE3708:
.LBE3712:
.LBE3722:
	.loc 2 755 0
	mr 29,3
	.cfi_offset 29, -12
.LVL466:
.LBB3723:
.LBB3713:
.LBB3709:
	.loc 16 241 0
	addi 3,3,100
.LVL467:
.LBE3709:
.LBE3713:
.LBE3723:
	.loc 2 755 0
	stw 0,28(1)
	stw 31,20(1)
.LBB3724:
.LBB3714:
.LBB3710:
	.loc 16 241 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL468:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L177
.LVL469:
.LBB3707:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL470:
.L174:
.LBE3707:
.LBE3710:
.LBE3714:
	.loc 2 757 0
	lbz 0,0(31)
	cmpwi 7,0,0
	bne- 7,.L179
.LBE3724:
	.loc 2 760 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL471:
	mtlr 0
	lwz 30,16(1)
.LVL472:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI86:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL473:
.L179:
.LCFI87:
	.cfi_restore_state
.LBB3725:
	.loc 2 758 0
	li 4,0
	addi 3,29,936
.LVL474:
	bl _ZNK19idPhysics_RigidBody9GetOriginEi
.LBB3715:
.LBB3716:
	.loc 4 634 0
	lwz 0,636(29)
.LBE3716:
.LBE3715:
	.loc 2 758 0
	mr 4,3
.LVL475:
.LBB3719:
.LBB3717:
	.loc 4 635 0
	lis 3,gameLocal@ha
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL476:
	.loc 4 635 0
	la 3,gameLocal@l(3)
	addi 11,9,4228
	srawi 0,0,12
	slwi 11,11,2
	.loc 4 638 0
	li 6,0
	.loc 4 635 0
	add 11,3,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L180
.LVL477:
.L176:
.LBE3717:
.LBE3719:
	.loc 2 758 0
	lfs 1,652(29)
	mr 5,29
	mr 7,30
	mr 8,29
	mr 9,31
	bl _ZN11idGameLocal12RadiusDamageERK6idVec3P8idEntityS4_S4_S4_PKcf
.LBE3725:
	.loc 2 760 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL478:
	mtlr 0
	lwz 30,16(1)
.LVL479:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI88:
	.cfi_def_cfa_offset 0
	blr
.LVL480:
.L180:
.LCFI89:
	.cfi_restore_state
.LBB3726:
.LBB3720:
.LBB3718:
	.loc 4 636 0
	addi 9,9,132
.LVL481:
	slwi 9,9,2
.LVL482:
	add 9,3,9
	lwz 6,4(9)
	b .L176
.LVL483:
.L177:
.LBE3718:
.LBE3720:
.LBB3721:
.LBB3711:
	.loc 16 245 0
	lis 31,.LC27@ha
	la 31,.LC27@l(31)
	b .L174
.LBE3711:
.LBE3721:
.LBE3726:
	.cfi_endproc
.LFE2841:
	.size	_ZN12idProjectile18Event_RadiusDamageEP8idEntity, .-_ZN12idProjectile18Event_RadiusDamageEP8idEntity
	.align 2
	.globl _ZN15idBFGProjectile5SpawnEv
	.type	_ZN15idBFGProjectile5SpawnEv, @function
_ZN15idBFGProjectile5SpawnEv:
.LFB2898:
	.loc 2 1716 0
	.cfi_startproc
.LVL484:
	mflr 0
	stwu 1,-48(1)
.LCFI90:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL485:
	stw 0,52(1)
	stw 30,40(1)
.LBB3738:
.LBB3739:
.LBB3740:
	.loc 5 193 0
	lwz 3,1508(3)
.LVL486:
	cmpwi 7,3,0
	beq- 7,.L182
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 5 194 0
	bl _ZdaPv
.L182:
	.loc 5 197 0
	li 0,0
.LBE3740:
.LBE3739:
	.loc 2 1718 0
	addi 30,31,1512
.LBB3744:
.LBB3741:
	.loc 5 197 0
	stw 0,1508(31)
.LBE3741:
.LBE3744:
	.loc 2 1718 0
	li 4,0
.LBB3745:
.LBB3742:
	.loc 5 198 0
	stw 0,1496(31)
.LBE3742:
.LBE3745:
	.loc 2 1718 0
	li 5,216
.LBB3746:
.LBB3743:
	.loc 5 199 0
	stw 0,1500(31)
.LBE3743:
.LBE3746:
	.loc 2 1718 0
	mr 3,30
	bl memset
	.loc 2 1719 0
	li 0,-1
	stw 0,1728(31)
.LVL487:
.LBB3747:
.LBB3748:
	.loc 16 241 0
	lis 4,.LC29@ha
	addi 3,31,100
	la 4,.LC29@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL488:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L185
.LVL489:
.LBB3749:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
.LBE3749:
.LBE3748:
.LBE3747:
	.loc 2 1721 0
	cmpwi 7,4,0
	beq- 7,.L184
.LVL490:
.L183:
	.loc 2 1721 0 is_stmt 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	beq+ 7,.L184
	.loc 2 1722 0 is_stmt 1
	lis 9,renderModelManager@ha
	lwz 3,renderModelManager@l(9)
.LVL491:
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 1723 0
	mr 5,30
	.loc 2 1722 0
	stw 3,1512(31)
	mr 4,3
	.loc 2 1723 0
	addi 3,1,8
	lwz 9,0(4)
	lwz 0,128(9)
	mtctr 0
	bctrl
.LVL492:
.LBB3751:
.LBB3752:
.LBB3753:
	.loc 3 424 0
	lwz 11,8(1)
.LBE3753:
.LBE3752:
.LBE3751:
	.loc 2 1727 0
	lis 9,.LC2@ha
.LBB3766:
.LBB3760:
.LBB3754:
	.loc 3 424 0
	stw 11,1524(31)
	.loc 3 425 0
	lwz 11,12(1)
.LBE3754:
.LBE3760:
.LBE3766:
	.loc 2 1727 0
	lwz 0,.LC2@l(9)
	.loc 2 1728 0
	li 9,1
.LBB3767:
.LBB3761:
.LBB3755:
	.loc 3 425 0
	stw 11,1528(31)
	.loc 3 426 0
	lwz 11,16(1)
.LBE3755:
.LBE3761:
.LBE3767:
	.loc 2 1727 0
	stw 0,1648(31)
.LBB3768:
.LBB3762:
.LBB3756:
	.loc 3 426 0
	stw 11,1532(31)
.LVL493:
	.loc 3 424 0
	lwz 11,20(1)
.LBE3756:
.LBE3762:
.LBE3768:
	.loc 2 1727 0
	stw 0,1644(31)
.LBB3769:
.LBB3763:
.LBB3757:
	.loc 3 424 0
	stw 11,1536(31)
	.loc 3 425 0
	lwz 11,24(1)
.LBE3757:
.LBE3763:
.LBE3769:
	.loc 2 1727 0
	stw 0,1640(31)
.LBB3770:
.LBB3764:
.LBB3758:
	.loc 3 425 0
	stw 11,1540(31)
	.loc 3 426 0
	lwz 11,28(1)
.LBE3758:
.LBE3764:
.LBE3770:
	.loc 2 1727 0
	stw 0,1636(31)
.LBB3771:
.LBB3765:
.LBB3759:
	.loc 3 426 0
	stw 11,1544(31)
.LBE3759:
.LBE3765:
.LBE3771:
	.loc 2 1728 0
	stb 9,1712(31)
	.loc 2 1729 0
	stb 9,1713(31)
.LVL494:
.L184:
	.loc 2 1731 0
	li 0,0
	.loc 2 1732 0
	addi 3,31,1736
	.loc 2 1731 0
	stw 0,1732(31)
	.loc 2 1732 0
	li 4,0
	bl _ZN5idStraSEPKc
.LBE3738:
	.loc 2 1733 0
	lwz 0,52(1)
	lwz 30,40(1)
	mtlr 0
	lwz 31,44(1)
.LVL495:
	addi 1,1,48
	.cfi_remember_state
.LCFI91:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL496:
.L185:
.LCFI92:
	.cfi_restore_state
.LBB3773:
.LBB3772:
.LBB3750:
	.loc 16 245 0
	lis 4,.LC27@ha
	la 4,.LC27@l(4)
	b .L183
.LBE3750:
.LBE3772:
.LBE3773:
	.cfi_endproc
.LFE2898:
	.size	_ZN15idBFGProjectile5SpawnEv, .-_ZN15idBFGProjectile5SpawnEv
	.align 2
	.globl _ZN12idProjectile6LaunchERK6idVec3S2_S2_fff
	.type	_ZN12idProjectile6LaunchERK6idVec3S2_S2_fff, @function
_ZN12idProjectile6LaunchERK6idVec3S2_S2_fff:
.LFB2828:
	.loc 2 279 0
	.cfi_startproc
.LVL497:
	mflr 0
	stwu 1,-336(1)
.LCFI93:
	.cfi_def_cfa_offset 336
	.cfi_register 65, 0
	stfd 23,264(1)
	fmr 23,1
	.cfi_offset 55, -72
	stfd 30,320(1)
	fmr 30,2
	.cfi_offset 62, -16
	stfd 31,328(1)
	fmr 31,3
	.cfi_offset 63, -8
	stw 23,204(1)
	mr 23,5
	.cfi_offset 23, -132
	stw 24,208(1)
	mr 24,4
	.cfi_offset 24, -128
	stw 26,216(1)
	mr 26,6
	.cfi_offset 26, -120
	stw 29,228(1)
.LBB3956:
.LBB3957:
.LBB3958:
	.loc 4 635 0
	lis 29,gameLocal@ha
	.cfi_offset 29, -108
.LBE3958:
.LBE3957:
.LBE3956:
	.loc 2 279 0
	stw 31,236(1)
.LBB4518:
.LBB3962:
.LBB3959:
	.loc 4 635 0
	la 29,gameLocal@l(29)
.LBE3959:
.LBE3962:
.LBE4518:
	.loc 2 279 0
	stw 0,340(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -100
.LVL498:
	stfd 20,240(1)
	stfd 21,248(1)
	stfd 22,256(1)
	stfd 24,272(1)
	stfd 25,280(1)
	stfd 26,288(1)
	stfd 27,296(1)
	stfd 28,304(1)
	stfd 29,312(1)
	stw 22,200(1)
	stw 25,212(1)
	stw 27,220(1)
	stw 28,224(1)
	stw 30,232(1)
.LBB4519:
.LBB3963:
.LBB3960:
	.loc 4 634 0
	lwz 0,636(3)
	rlwinm 9,0,0,20,31
.LVL499:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L262
	.cfi_offset 30, -104
	.cfi_offset 28, -112
	.cfi_offset 27, -116
	.cfi_offset 25, -124
	.cfi_offset 22, -136
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	.cfi_offset 52, -96
.LVL500:
.L187:
.LBE3960:
.LBE3963:
	.loc 2 303 0
	li 0,0
	.loc 2 306 0
	addi 30,31,100
.LVL501:
	.loc 2 303 0
	stb 0,160(31)
.LBB3964:
.LBB3965:
.LBB3966:
.LBB3967:
	.loc 16 241 0
	lis 4,.LC32@ha
	mr 3,30
	la 4,.LC32@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL502:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L232
.L268:
.LVL503:
.LBB3968:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL504:
.LBE3968:
.LBE3967:
.LBE3966:
	.loc 16 249 0
	bl atof
.LVL505:
.LBE3965:
.LBE3964:
.LBB3979:
.LBB3980:
.LBB3981:
.LBB3982:
	.loc 16 241 0
	lis 4,.LC33@ha
.LBE3982:
.LBE3981:
.LBE3980:
.LBE3979:
.LBB3999:
.LBB3973:
	.loc 16 249 0
	frsp 1,1
.LBE3973:
.LBE3999:
.LBB4000:
.LBB3994:
.LBB3989:
.LBB3984:
	.loc 16 241 0
	mr 3,30
	la 4,.LC33@l(4)
.LBE3984:
.LBE3989:
.LBE3994:
.LBE4000:
.LBB4001:
.LBB3974:
	.loc 16 249 0
	stfs 1,644(31)
.LVL506:
.LBE3974:
.LBE4001:
.LBB4002:
.LBB3995:
.LBB3990:
.LBB3985:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL507:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L233
.L269:
.LVL508:
.LBB3983:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL509:
.LBE3983:
.LBE3985:
.LBE3990:
	.loc 16 249 0
	bl atof
.LVL510:
.LBE3995:
.LBE4002:
.LBB4003:
.LBB4004:
.LBB4005:
.LBB4006:
	.loc 16 241 0
	lis 4,.LC34@ha
	mr 3,30
	la 4,.LC34@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL511:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L234
.L270:
.LVL512:
.LBB4007:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL513:
.L192:
.LBE4007:
.LBE4006:
.LBE4005:
.LBE4004:
.LBE4003:
	.loc 2 310 0
	lis 27,.LC36@ha
.LBB4013:
.LBB4010:
	.loc 16 249 0
	bl atof
.LBE4010:
.LBE4013:
	.loc 2 310 0
	la 27,.LC36@l(27)
	lis 4,.LC35@ha
	la 4,.LC35@l(4)
	mr 5,27
	addi 6,1,80
	mr 3,30
.LBB4014:
.LBB4011:
	.loc 16 249 0
	frsp 28,1
.LBE4011:
.LBE4014:
	.loc 2 310 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL514:
.LBB4015:
.LBB4016:
	.loc 3 632 0
	lfs 0,84(1)
.LBB4017:
.LBB4018:
.LBB4019:
.LBB4020:
	.loc 8 276 0
	lis 9,_ZN6idMath5iSqrtE@ha
.LBE4020:
.LBE4019:
.LBE4018:
.LBE4017:
	.loc 3 632 0
	lfs 13,80(1)
.LBB4038:
.LBB4033:
.LBB4027:
.LBB4021:
	.loc 8 276 0
	la 9,_ZN6idMath5iSqrtE@l(9)
.LBE4021:
.LBE4027:
.LBE4033:
.LBE4038:
	.loc 3 632 0
	fmuls 12,0,0
	lfs 0,88(1)
.LBB4039:
.LBB4034:
.LBB4028:
.LBB4022:
	.loc 8 275 0
	lis 28,.LC6@ha
	.loc 8 278 0
	lis 25,.LC22@ha
	.loc 8 275 0
	lfs 11,.LC6@l(28)
.LBE4022:
.LBE4028:
.LBE4034:
.LBE4039:
.LBE4016:
.LBE4015:
	.loc 2 316 0
	lis 4,.LC37@ha
.LBB4046:
.LBB4043:
	.loc 3 632 0
	fmadds 13,13,13,12
.LBB4040:
.LBB4035:
.LBB4029:
.LBB4023:
	.loc 8 278 0
	lfs 12,.LC22@l(25)
.LBE4023:
.LBE4029:
.LBE4035:
.LBE4040:
.LBE4043:
.LBE4046:
	.loc 2 316 0
	la 4,.LC37@l(4)
	mr 5,27
	addi 6,1,68
	mr 3,30
.LBB4047:
.LBB4044:
	.loc 3 632 0
	fmadds 13,0,0,13
	stfs 13,188(1)
.LVL515:
.LBB4041:
.LBB4036:
.LBB4030:
.LBB4024:
	.loc 8 275 0
	fmuls 11,13,11
	.loc 8 270 0
	lwz 0,188(1)
.LVL516:
	.loc 2 279 0
	fneg 11,11
.LBE4024:
.LBE4030:
	.loc 8 303 0
	lfs 10,188(1)
.LBB4031:
.LBB4025:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 9,9,0
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 277 0
	stw 0,192(1)
	lfs 0,192(1)
.LBE4025:
.LBE4031:
.LBE4036:
.LBE4041:
.LBE4044:
.LBE4047:
	.loc 2 314 0
	stfs 31,652(31)
.LBB4048:
.LBB4045:
.LBB4042:
.LBB4037:
.LBB4032:
.LBB4026:
	.loc 8 277 0
	fmr 13,0
.LVL517:
	.loc 8 278 0
	fmul 0,13,13
.LVL518:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL519:
	.loc 8 279 0
	fmul 31,0,0
.LVL520:
	fmadd 31,11,31,12
.LVL521:
	fmul 31,0,31
.LVL522:
	.loc 8 280 0
	frsp 31,31
.LVL523:
.LBE4026:
.LBE4032:
	.loc 8 303 0
	fmuls 31,10,31
.LBE4037:
.LBE4042:
.LBE4045:
.LBE4048:
	.loc 2 316 0
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL524:
.LBB4049:
.LBB4050:
.LBB4051:
.LBB4052:
	.loc 16 241 0
	lis 4,.LC38@ha
	mr 3,30
	la 4,.LC38@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE4052:
.LBE4051:
.LBE4050:
.LBE4049:
	.loc 2 312 0
	fmuls 31,30,31
.LVL525:
.LBB4062:
.LBB4058:
.LBB4056:
.LBB4054:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L235
.LVL526:
.LBB4053:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL527:
.LBE4053:
.LBE4054:
.LBE4056:
	.loc 16 249 0
	bl atof
.LVL528:
.LBE4058:
.LBE4062:
.LBB4063:
.LBB4064:
.LBB4065:
.LBB4066:
	.loc 16 241 0
	lis 4,.LC39@ha
	mr 3,30
	la 4,.LC39@l(4)
.LBE4066:
.LBE4065:
.LBE4064:
.LBE4063:
.LBB4078:
.LBB4059:
	.loc 16 249 0
	frsp 20,1
.LVL529:
.LBE4059:
.LBE4078:
.LBB4079:
.LBB4074:
.LBB4071:
.LBB4068:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL530:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L236
.L278:
.LVL531:
.LBB4067:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL532:
.L194:
.LBE4067:
.LBE4068:
.LBE4071:
	.loc 16 249 0
	bl atof
.LBE4074:
.LBE4079:
.LBB4080:
.LBB4081:
.LBB4082:
.LBB4083:
	.loc 16 241 0
	lis 4,.LC40@ha
	mr 3,30
	la 4,.LC40@l(4)
.LBE4083:
.LBE4082:
.LBE4081:
.LBE4080:
.LBB4093:
.LBB4075:
	.loc 16 249 0
	frsp 21,1
.LVL533:
.LBE4075:
.LBE4093:
.LBB4094:
.LBB4089:
.LBB4087:
.LBB4085:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL534:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L237
.LVL535:
.LBB4084:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL536:
.LBE4084:
.LBE4085:
.LBE4087:
	.loc 16 249 0
	bl atof
.LVL537:
.LBE4089:
.LBE4094:
.LBB4095:
.LBB4096:
.LBB4097:
.LBB4098:
	.loc 16 241 0
	lis 4,.LC41@ha
	mr 3,30
	la 4,.LC41@l(4)
.LBE4098:
.LBE4097:
.LBE4096:
.LBE4095:
.LBB4111:
.LBB4090:
	.loc 16 249 0
	frsp 29,1
.LVL538:
.LBE4090:
.LBE4111:
.LBB4112:
.LBB4106:
.LBB4103:
.LBB4100:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL539:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L238
.L271:
.LVL540:
.LBB4099:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL541:
.LBE4099:
.LBE4100:
.LBE4103:
	.loc 16 249 0
	bl atof
.LVL542:
.LBE4106:
.LBE4112:
.LBB4113:
.LBB4114:
.LBB4115:
.LBB4116:
	.loc 16 241 0
	lis 4,.LC42@ha
	mr 3,30
	la 4,.LC42@l(4)
.LBE4116:
.LBE4115:
.LBE4114:
.LBE4113:
.LBB4129:
.LBB4107:
	.loc 16 249 0
	frsp 25,1
.LVL543:
.LBE4107:
.LBE4129:
.LBB4130:
.LBB4124:
.LBB4121:
.LBB4118:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL544:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L239
.L272:
.LVL545:
.LBB4117:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL546:
.LBE4117:
.LBE4118:
.LBE4121:
	.loc 16 249 0
	bl atof
.LVL547:
.LBE4124:
.LBE4130:
.LBB4131:
.LBB4132:
.LBB4133:
.LBB4134:
	.loc 16 241 0
	lis 4,.LC43@ha
	mr 3,30
	la 4,.LC43@l(4)
.LBE4134:
.LBE4133:
.LBE4132:
.LBE4131:
.LBB4147:
.LBB4125:
	.loc 16 249 0
	frsp 22,1
.LVL548:
.LBE4125:
.LBE4147:
.LBB4148:
.LBB4142:
.LBB4139:
.LBB4136:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL549:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L240
.L273:
.LVL550:
.LBB4135:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL551:
.LBE4135:
.LBE4136:
.LBE4139:
	.loc 16 249 0
	bl atof
.LVL552:
.LBE4142:
.LBE4148:
.LBB4149:
.LBB4150:
.LBB4151:
.LBB4152:
	.loc 16 241 0
	lis 4,.LC44@ha
	mr 3,30
	la 4,.LC44@l(4)
.LBE4152:
.LBE4151:
.LBE4150:
.LBE4149:
.LBB4166:
.LBB4143:
	.loc 16 249 0
	frsp 30,1
.LVL553:
.LBE4143:
.LBE4166:
.LBB4167:
.LBB4160:
.LBB4157:
.LBB4154:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL554:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L241
.L274:
.LVL555:
.LBB4153:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL556:
.LBE4153:
.LBE4154:
.LBE4157:
	.loc 16 249 0
	bl atof
.LVL557:
.LBE4160:
.LBE4167:
.LBB4168:
.LBB4169:
.LBB4170:
.LBB4171:
	.loc 16 241 0
	lis 4,.LC45@ha
	mr 3,30
	la 4,.LC45@l(4)
.LBE4171:
.LBE4170:
.LBE4169:
.LBE4168:
.LBB4188:
.LBB4161:
	.loc 16 249 0
	fmr 24,1
.LVL558:
.LBE4161:
.LBE4188:
.LBB4189:
.LBB4179:
.LBB4176:
.LBB4173:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL559:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L242
.L275:
.LVL560:
.LBB4172:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL561:
.LBE4172:
.LBE4173:
.LBE4176:
	.loc 16 257 0
	bl atoi
.LVL562:
.LBE4179:
.LBE4189:
	.loc 2 326 0
	lwz 0,640(31)
.LBB4190:
.LBB4180:
	.loc 16 257 0
	cntlzw 3,3
.LBE4180:
.LBE4190:
.LBB4191:
.LBB4192:
.LBB4193:
.LBB4194:
	.loc 16 241 0
	lis 4,.LC46@ha
.LBE4194:
.LBE4193:
.LBE4192:
.LBE4191:
.LBB4223:
.LBB4181:
	.loc 16 257 0
	srwi 3,3,5
.LBE4181:
.LBE4223:
.LBB4224:
.LBB4210:
.LBB4203:
.LBB4196:
	.loc 16 241 0
	la 4,.LC46@l(4)
.LBE4196:
.LBE4203:
.LBE4210:
.LBE4224:
.LBB4225:
.LBB4182:
	.loc 16 257 0
	xori 3,3,1
.LBE4182:
.LBE4225:
	.loc 2 326 0
	rlwimi 0,3,31,0,0
.LBB4226:
.LBB4211:
.LBB4204:
.LBB4197:
	.loc 16 241 0
	mr 3,30
.LBE4197:
.LBE4204:
.LBE4211:
.LBE4226:
	.loc 2 326 0
	stw 0,640(31)
.LVL563:
.LBB4227:
.LBB4212:
.LBB4205:
.LBB4198:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL564:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L243
.L276:
.LVL565:
.LBB4195:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL566:
.LBE4195:
.LBE4198:
.LBE4205:
	.loc 16 257 0
	bl atoi
.LVL567:
.LBE4212:
.LBE4227:
	.loc 2 327 0
	lwz 0,640(31)
.LBB4228:
.LBB4213:
	.loc 16 257 0
	cntlzw 3,3
.LBE4213:
.LBE4228:
.LBB4229:
.LBB4230:
.LBB4231:
.LBB4232:
	.loc 16 241 0
	lis 4,.LC47@ha
.LBE4232:
.LBE4231:
.LBE4230:
.LBE4229:
.LBB4258:
.LBB4214:
	.loc 16 257 0
	srwi 3,3,5
.LBE4214:
.LBE4258:
.LBB4259:
.LBB4248:
.LBB4241:
.LBB4234:
	.loc 16 241 0
	la 4,.LC47@l(4)
.LBE4234:
.LBE4241:
.LBE4248:
.LBE4259:
.LBB4260:
.LBB4215:
	.loc 16 257 0
	xori 3,3,1
.LBE4215:
.LBE4260:
	.loc 2 327 0
	rlwimi 0,3,30,1,1
.LBB4261:
.LBB4249:
.LBB4242:
.LBB4235:
	.loc 16 241 0
	mr 3,30
.LBE4235:
.LBE4242:
.LBE4249:
.LBE4261:
	.loc 2 327 0
	stw 0,640(31)
.LVL568:
.LBB4262:
.LBB4250:
.LBB4243:
.LBB4236:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL569:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L244
.L277:
.LVL570:
.LBB4233:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL571:
.L202:
.LBE4233:
.LBE4236:
.LBE4243:
	.loc 16 257 0
	bl atoi
.LBE4250:
.LBE4262:
	.loc 2 330 0
	lis 9,.LC20@ha
	lfs 0,.LC20@l(9)
.LBB4263:
.LBB4251:
	.loc 16 257 0
	cntlzw 3,3
.LBE4251:
.LBE4263:
	.loc 2 328 0
	lwz 0,640(31)
.LBB4264:
.LBB4252:
	.loc 16 257 0
	srwi 3,3,5
.LBE4252:
.LBE4264:
	.loc 2 330 0
	fcmpu 7,22,0
.LBB4265:
.LBB4253:
	.loc 16 257 0
	xori 3,3,1
.LBE4253:
.LBE4265:
	.loc 2 328 0
	rlwimi 0,3,29,2,2
	.loc 2 330 0
	cror 30,28,30
	.loc 2 328 0
	stw 0,640(31)
	.loc 2 330 0
	beq- 7,.L263
.L203:
	.loc 2 336 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
	.loc 2 334 0
	lfs 0,644(31)
	.loc 2 336 0
	lfs 13,_ZN6idMath8M_SEC2MSE@l(9)
.LBB4266:
.LBB4267:
	.loc 8 825 0
	addi 9,1,184
.LBE4267:
.LBE4266:
	.loc 2 334 0
	fmuls 0,0,22
	.loc 2 341 0
	lwz 0,188(31)
	.loc 2 336 0
	fmuls 28,28,13
	addis 27,29,0x25
	.loc 2 341 0
	cmpwi 7,0,0
	.loc 2 338 0
	li 0,0
	.loc 2 334 0
	stfs 0,644(31)
.LBB4270:
.LBB4268:
	.loc 8 825 0
	fctiwz 28,28
	stfiwx 28,0,9
.LBE4268:
.LBE4270:
	.loc 2 336 0
	lwz 11,2004(27)
.LBB4271:
.LBB4269:
	.loc 8 825 0
	lwz 9,184(1)
.LBE4269:
.LBE4271:
	.loc 2 338 0
	stw 0,880(31)
	.loc 2 336 0
	add 9,11,9
	.loc 2 339 0
	stw 0,884(31)
	.loc 2 336 0
	stw 9,648(31)
	.loc 2 341 0
	beq- 7,.L205
	.loc 2 342 0
	lwz 0,192(31)
	li 9,1
	rlwimi 0,9,29,2,2
	stw 0,192(31)
.L205:
	.loc 2 345 0
	mr 3,29
	bl _ZNK11idGameLocal10GetGravityEv
.LVL572:
.LBB4272:
.LBB4273:
.LBB4274:
.LBB4275:
	.loc 8 246 0
	lfs 28,.LC6@l(28)
.LBE4275:
.LBE4274:
.LBE4273:
.LBE4272:
.LBB4280:
.LBB4281:
	.loc 3 425 0
	lfs 27,4(3)
	.loc 3 424 0
	lfs 26,0(3)
.LBE4281:
.LBE4280:
.LBB4284:
.LBB4278:
	.loc 3 527 0
	fmuls 13,27,27
.LBE4278:
.LBE4284:
.LBB4285:
.LBB4282:
	.loc 3 426 0
	lfs 0,8(3)
.LVL573:
.LBE4282:
.LBE4285:
	.loc 2 348 0
	mr 3,31
.LVL574:
.LBB4286:
.LBB4283:
	.loc 3 527 0
	fmadds 13,26,26,13
	fmadds 13,0,0,13
	stfs 13,188(1)
.LVL575:
.LBE4283:
.LBE4286:
.LBB4287:
.LBB4279:
.LBB4277:
.LBB4276:
	.loc 8 250 0
	lfs 13,.LC22@l(25)
.LVL576:
	.loc 8 248 0
	lwz 9,188(1)
	.loc 8 246 0
	lfs 10,188(1)
	.loc 8 248 0
	srawi 0,9,1
	.loc 8 249 0
	lis 9,0x5f37
	ori 9,9,23007
	.loc 8 246 0
	fmuls 28,10,28
	.loc 8 249 0
	subf 9,0,9
	stw 9,188(1)
.LVL577:
	.loc 2 279 0
	fneg 28,28
	.loc 8 250 0
	lfs 10,188(1)
	fmuls 12,10,10
	fmadds 28,28,12,13
	fmuls 28,10,28
.LVL578:
.LBE4276:
.LBE4277:
	.loc 3 529 0
	fmuls 26,26,28
.LVL579:
	.loc 3 530 0
	fmuls 27,27,28
.LVL580:
	.loc 3 531 0
	fmuls 28,0,28
.LVL581:
.LBE4279:
.LBE4287:
	.loc 2 348 0
	bl _ZN8idEntity6UnbindEv
	.loc 2 351 0
	addi 3,1,92
	mr 4,23
	bl _ZNK6idVec36ToMat3Ev
.LVL582:
	li 10,0
.L206:
.LBB4288:
.LBB4289:
.LBB4290:
.LBB4291:
	.loc 3 424 0
	addi 11,1,92
.LVL583:
	addi 9,1,128
	lwzux 0,11,10
.LVL584:
.LBE4291:
.LBE4290:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB4294:
.LBB4292:
	.loc 3 424 0
	stwux 0,9,10
.LBE4292:
.LBE4294:
	.loc 12 333 0
	addi 10,10,12
.LBB4295:
.LBB4293:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE4293:
.LBE4295:
	.loc 12 333 0
	bne+ 7,.L206
.LVL585:
.LBE4289:
.LBE4288:
.LBB4296:
.LBB4297:
	.loc 3 424 0
	lwz 0,128(1)
.LBE4297:
.LBE4296:
.LBB4302:
.LBB4303:
.LBB4304:
.LBB4305:
	.loc 16 241 0
	lis 4,.LC49@ha
.LBE4305:
.LBE4304:
.LBE4303:
.LBE4302:
.LBB4319:
.LBB4320:
	.loc 3 424 0
	lfs 12,152(1)
.LVL586:
.LBE4320:
.LBE4319:
.LBB4321:
.LBB4315:
.LBB4311:
.LBB4307:
	.loc 16 241 0
	mr 3,30
.LBE4307:
.LBE4311:
.LBE4315:
.LBE4321:
.LBB4322:
.LBB4323:
	.loc 3 420 0
	lfs 13,156(1)
.LBE4323:
.LBE4322:
.LBB4327:
.LBB4316:
.LBB4312:
.LBB4308:
	.loc 16 241 0
	la 4,.LC49@l(4)
.LBE4308:
.LBE4312:
.LBE4316:
.LBE4327:
.LBB4328:
.LBB4324:
	.loc 3 420 0
	lfs 0,160(1)
	fneg 12,12
.LBE4324:
.LBE4328:
.LBB4329:
.LBB4298:
	.loc 3 424 0
	stw 0,152(1)
.LBE4298:
.LBE4329:
.LBB4330:
.LBB4325:
	.loc 3 420 0
	fneg 13,13
.LBE4325:
.LBE4330:
.LBB4331:
.LBB4299:
	.loc 3 425 0
	lwz 0,132(1)
.LBE4299:
.LBE4331:
.LBB4332:
.LBB4326:
	.loc 3 420 0
	fneg 0,0
.LBE4326:
.LBE4332:
.LBB4333:
.LBB4334:
	.loc 3 424 0
	stfs 12,128(1)
.LBE4334:
.LBE4333:
.LBB4337:
.LBB4300:
	.loc 3 425 0
	stw 0,156(1)
	.loc 3 426 0
	lwz 0,136(1)
.LBE4300:
.LBE4337:
.LBB4338:
.LBB4335:
	.loc 3 425 0
	stfs 13,132(1)
.LBE4335:
.LBE4338:
.LBB4339:
.LBB4301:
	.loc 3 426 0
	stw 0,160(1)
.LVL587:
.LBE4301:
.LBE4339:
.LBB4340:
.LBB4336:
	stfs 0,136(1)
.LVL588:
.LBE4336:
.LBE4340:
.LBB4341:
.LBB4317:
.LBB4313:
.LBB4309:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL589:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L245
.LVL590:
.LBB4306:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL591:
.L207:
.LBE4306:
.LBE4309:
.LBE4313:
	.loc 16 257 0
	bl atoi
.LBE4317:
.LBE4341:
	.loc 2 359 0
	li 22,4096
	.loc 2 358 0
	cmpwi 7,3,0
	bne- 7,.L208
	.loc 2 356 0
	li 22,0
.L208:
.LVL592:
.LBB4342:
.LBB4343:
.LBB4344:
.LBB4345:
	.loc 16 241 0
	lis 4,.LC50@ha
	mr 3,30
	la 4,.LC50@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL593:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L247
.LVL594:
.LBB4346:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL595:
.L209:
.LBE4346:
.LBE4345:
.LBE4344:
	.loc 16 257 0
	bl atoi
.LBE4343:
.LBE4342:
	.loc 2 357 0
	li 23,2049
.LVL596:
	.loc 2 361 0
	cmpwi 7,3,0
	bne- 7,.L210
	.loc 2 362 0
	ori 22,22,512
.LVL597:
	.loc 2 363 0
	li 23,2561
.LVL598:
.L210:
.LBB4350:
.LBB4351:
.LBB4352:
.LBB4353:
	.loc 16 241 0
	lis 4,.LC51@ha
	mr 3,30
	la 4,.LC51@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL599:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L249
.LVL600:
.LBB4354:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL601:
.L211:
.LBE4354:
.LBE4353:
.LBE4352:
	.loc 16 257 0
	bl atoi
.LBE4351:
.LBE4350:
	.loc 2 367 0
	cmpwi 7,3,0
	beq- 7,.L230
.LVL602:
.LBB4358:
.LBB4359:
.LBB4360:
.LBB4361:
	.loc 7 71 0
	addis 9,29,0x1
	lis 11,0x1
	lwz 10,-32064(9)
	ori 11,11,3533
.LBE4361:
.LBE4360:
	.loc 7 83 0
	lis 0,0x4330
.LBB4365:
.LBB4362:
	.loc 7 71 0
	mullw 11,11,10
.LBE4362:
.LBE4365:
	.loc 7 83 0
	stw 0,168(1)
.LBB4366:
.LBB4363:
	.loc 7 71 0
	addi 0,11,1
	.loc 7 72 0
	rlwinm 11,0,0,17,31
.LBE4363:
.LBE4366:
	.loc 7 83 0
	xoris 11,11,0x8000
	stw 11,172(1)
	lis 11,.LC4@ha
	lfs 0,.LC4@l(11)
	lfd 13,168(1)
.LBB4367:
.LBB4364:
	.loc 7 71 0
	stw 0,-32064(9)
.LBE4364:
.LBE4367:
	.loc 7 83 0
	lis 9,.LC5@ha
	fsub 13,13,0
	lfs 12,.LC5@l(9)
.LBE4359:
.LBE4358:
	.loc 2 367 0
	lfs 0,.LC6@l(28)
.LBB4369:
.LBB4368:
	.loc 7 83 0
	frsp 13,13
	fmuls 13,13,12
.LBE4368:
.LBE4369:
	.loc 2 367 0
	fcmpu 7,13,0
	bng- 7,.L230
	.loc 2 368 0 discriminator 4
	lwz 9,0(31)
.LBB4370:
.LBB4371:
	.loc 16 241 0 discriminator 4
	lis 4,.LC52@ha
	mr 3,30
	la 4,.LC52@l(4)
.LBE4371:
.LBE4370:
	.loc 2 368 0 discriminator 4
	lwz 9,44(9)
	stw 9,188(1)
.LVL603:
.LBB4375:
.LBB4373:
	.loc 16 241 0 discriminator 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL604:
	.loc 16 242 0 discriminator 4
	cmpwi 0,3,0
	beq- 0,.L250
.LVL605:
.LBB4372:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL606:
.L214:
.LBE4372:
.LBE4373:
.LBE4375:
	.loc 2 368 0
	lwz 0,188(1)
	mr 3,31
.LVL607:
	mtctr 0
	bctrl
	.loc 2 369 0
	lwz 0,640(31)
	li 9,1
	rlwimi 0,9,28,3,3
	stw 0,640(31)
.LVL608:
.L230:
	.loc 2 372 0
	fmr 1,22
	addi 25,31,936
	li 4,-1
	mr 3,25
	bl _ZN19idPhysics_RigidBody7SetMassEfi
	.loc 2 373 0
	fmr 1,20
	fmr 2,21
	mr 3,25
	fmr 3,29
	bl _ZN19idPhysics_RigidBody11SetFrictionEfff
	.loc 2 374 0
	lis 9,.LC20@ha
	lfs 0,.LC20@l(9)
	fcmpu 7,29,0
	beq- 7,.L264
.L215:
	.loc 2 377 0
	fmr 1,25
	mr 3,25
	bl _ZN19idPhysics_RigidBody13SetBouncynessEf
.LVL609:
.LBB4376:
.LBB4377:
	.loc 3 439 0
	fmuls 26,30,26
.LVL610:
	fmuls 27,30,27
.LVL611:
.LBE4377:
.LBE4376:
	.loc 2 378 0
	mr 3,25
.LBB4382:
.LBB4380:
	.loc 3 439 0
	fmuls 30,30,28
.LVL612:
.LBE4380:
.LBE4382:
	.loc 2 378 0
	addi 4,1,56
.LBB4383:
.LBB4381:
.LBB4378:
.LBB4379:
	.loc 3 396 0
	stfs 26,56(1)
	.loc 3 397 0
	stfs 27,60(1)
	.loc 3 398 0
	stfs 30,64(1)
.LBE4379:
.LBE4378:
.LBE4381:
.LBE4383:
	.loc 2 378 0
	bl _ZN14idPhysics_Base10SetGravityERK6idVec3
	.loc 2 379 0
	mr 3,25
	mr 4,22
	li 5,-1
	bl _ZN19idPhysics_RigidBody11SetContentsEii
	.loc 2 380 0
	mr 3,25
	mr 4,23
	li 5,-1
	bl _ZN14idPhysics_Base11SetClipMaskEii
.LVL613:
	.loc 3 452 0
	lfs 13,4(26)
	lfs 11,156(1)
	.loc 2 381 0
	li 5,0
	.loc 3 452 0
	lfs 0,8(26)
	.loc 2 381 0
	mr 3,25
	.loc 3 452 0
	fmadds 13,31,11,13
	lfs 11,160(1)
.LBB4384:
.LBB4385:
.LBB4386:
.LBB4387:
	lfs 12,0(26)
.LBE4387:
.LBE4386:
.LBE4385:
.LBE4384:
	.loc 2 381 0
	addi 4,1,44
	.loc 3 452 0
	fmadds 0,31,11,0
.LVL614:
.LBB4394:
.LBB4392:
.LBB4390:
.LBB4388:
	lfs 11,152(1)
	.loc 3 397 0
	stfs 13,48(1)
.LBE4388:
.LBE4390:
.LBE4392:
.LBE4394:
.LBB4395:
.LBB4396:
	li 26,0
.LVL615:
.LBE4396:
.LBE4395:
.LBB4398:
.LBB4393:
.LBB4391:
.LBB4389:
	.loc 3 452 0
	fmadds 31,31,11,12
.LVL616:
	.loc 3 398 0
	stfs 0,52(1)
	.loc 3 396 0
	stfs 31,44(1)
.LBE4389:
.LBE4391:
.LBE4393:
.LBE4398:
	.loc 2 381 0
	bl _ZN19idPhysics_RigidBody17SetLinearVelocityERK6idVec3i
.LVL617:
	.loc 2 382 0
	addi 3,1,32
	addi 4,1,68
	bl _ZNK8idAngles17ToAngularVelocityEv
	lfs 0,36(1)
.LBB4399:
.LBB4400:
.LBB4401:
	.loc 12 454 0
	lfs 11,144(1)
.LBE4401:
.LBE4400:
.LBE4399:
	.loc 2 382 0
	li 5,0
.LBB4416:
.LBB4411:
.LBB4406:
	.loc 12 454 0
	lfs 13,140(1)
.LBE4406:
.LBE4411:
.LBE4416:
	.loc 2 382 0
	mr 3,25
.LBB4417:
.LBB4412:
.LBB4407:
	.loc 12 454 0
	lfs 12,148(1)
	fmuls 11,0,11
.LBE4407:
.LBE4412:
.LBE4417:
	lfs 10,132(1)
	.loc 2 382 0
	addi 4,1,20
.LBB4418:
.LBB4413:
.LBB4408:
	.loc 12 454 0
	fmuls 12,0,12
	fmuls 0,0,13
.LBE4408:
.LBE4413:
.LBE4418:
	.loc 2 382 0
	lfs 13,32(1)
	.loc 12 454 0
	fmadds 11,13,10,11
	lfs 10,136(1)
	fmadds 12,13,10,12
.LBB4419:
.LBB4414:
.LBB4409:
.LBB4402:
.LBB4403:
	lfs 10,128(1)
	fmadds 13,13,10,0
.LBE4403:
.LBE4402:
.LBE4409:
.LBE4414:
.LBE4419:
	.loc 2 382 0
	lfs 0,40(1)
.LVL618:
	.loc 12 454 0
	lfs 10,156(1)
	fmadds 11,0,10,11
	lfs 10,160(1)
	fmadds 12,0,10,12
.LVL619:
.LBB4420:
.LBB4415:
.LBB4410:
.LBB4405:
.LBB4404:
	lfs 10,152(1)
	.loc 3 397 0
	stfs 11,24(1)
	.loc 12 454 0
	fmadds 0,0,10,13
	.loc 3 398 0
	stfs 12,28(1)
	.loc 3 396 0
	stfs 0,20(1)
.LBE4404:
.LBE4405:
.LBE4410:
.LBE4415:
.LBE4420:
	.loc 2 382 0
	bl _ZN19idPhysics_RigidBody18SetAngularVelocityERK6idVec3i
.LVL620:
	.loc 2 383 0
	mr 3,25
	mr 4,24
	li 5,-1
	bl _ZN19idPhysics_RigidBody9SetOriginERK6idVec3i
	.loc 2 384 0
	li 5,-1
	addi 4,1,128
	mr 3,25
	bl _ZN19idPhysics_RigidBody7SetAxisERK6idMat3i
	.loc 2 386 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,56(9)
	mtctr 0
	bctrl
.LVL621:
	mr 4,25
	lwz 0,0(3)
.LVL622:
	li 5,0
	addi 3,31,900
.LVL623:
	addi 6,1,8
.LBB4421:
.LBB4397:
	.loc 3 396 0
	stw 0,8(1)
	.loc 3 397 0
	stw 26,12(1)
	.loc 3 398 0
	stw 26,16(1)
.LBE4397:
.LBE4421:
	.loc 2 386 0
	bl _ZN16idForce_Constant11SetPositionEP9idPhysicsiRK6idVec3
.LVL624:
	.loc 2 388 0
	lbz 0,2018(27)
	cmpwi 7,0,0
	bne- 7,.L216
	.loc 2 389 0
	stw 26,192(1)
.LBB4422:
.LBB4162:
	.loc 16 249 0
	frsp 24,24
.LBE4162:
.LBE4422:
	.loc 2 389 0
	lfs 0,192(1)
	fcmpu 7,24,0
	cror 30,28,30
	bne- 7,.L260
	.loc 2 391 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
.LVL625:
.LBB4423:
.LBB4424:
.LBB4425:
.LBB4426:
	.loc 16 241 0
	lis 4,.LC53@ha
	mr 3,30
	la 4,.LC53@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL626:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L251
.LVL627:
.LBB4427:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL628:
.L219:
.LBE4427:
.LBE4426:
.LBE4425:
	.loc 16 253 0
	bl atoi
.LBE4424:
.LBE4423:
	.loc 2 392 0
	lis 4,EV_Remove@ha
.LBB4432:
.LBB4430:
	.loc 16 253 0
	mr 5,3
.LBE4430:
.LBE4432:
	.loc 2 392 0
	la 4,EV_Remove@l(4)
	mr 3,31
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LVL629:
.L216:
	.loc 2 408 0
	lwz 0,640(31)
	.loc 2 409 0
	mr 3,31
	.loc 2 408 0
	andis. 9,0,4096
	beq- 0,.L224
	.loc 2 409 0
	lis 4,.LC55@ha
	.loc 2 411 0
	li 5,3
	.loc 2 409 0
	la 4,.LC55@l(4)
	.loc 2 411 0
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
	.loc 2 414 0
	li 0,0
	stw 0,1484(31)
.LVL630:
.LBB4433:
.LBB4434:
	.loc 16 241 0
	lis 4,.LC57@ha
	mr 3,30
	la 4,.LC57@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL631:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L255
.L266:
.LVL632:
.LBB4435:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 5,4(9)
.LBE4435:
.LBE4434:
.LBE4433:
	.loc 2 416 0
	lbz 0,0(5)
	cmpwi 7,0,0
	bne- 7,.L265
.LVL633:
.L227:
.LBB4437:
	.loc 2 422 0
	lwz 0,640(31)
	andis. 9,0,8192
	beq- 0,.L228
.LVL634:
.LBB4438:
.LBB4439:
.LBB4440:
.LBB4441:
.LBB4442:
	.loc 7 71 0
	addis 29,29,0x1
	lis 9,0x1
	lwz 11,-32064(29)
	ori 9,9,3533
.LBE4442:
.LBE4441:
	.loc 7 83 0
	lis 0,0x4330
.LBB4446:
.LBB4443:
	.loc 7 71 0
	mullw 9,9,11
.LBE4443:
.LBE4446:
	.loc 7 83 0
	stw 0,176(1)
.LBB4447:
.LBB4444:
	.loc 7 71 0
	addi 0,9,1
	.loc 7 72 0
	rlwinm 9,0,0,17,31
.LBE4444:
.LBE4447:
	.loc 7 83 0
	xoris 9,9,0x8000
	stw 9,180(1)
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	lis 9,.LC5@ha
	lfd 13,176(1)
	lfs 12,.LC5@l(9)
	fsub 0,13,0
.LBE4440:
.LBE4439:
	.loc 2 424 0
	lfs 13,.LC6@l(28)
.LBB4450:
.LBB4449:
.LBB4448:
.LBB4445:
	.loc 7 71 0
	stw 0,-32064(29)
.LBE4445:
.LBE4448:
	.loc 7 83 0
	frsp 0,0
	fmuls 0,0,12
.LVL635:
.LBE4449:
.LBE4450:
	.loc 2 424 0
	fmuls 0,0,13
.LVL636:
	.loc 2 425 0
	stfs 0,340(31)
.LVL637:
.L228:
.LBE4438:
.LBE4437:
	.loc 2 428 0
	mr 3,31
	bl _ZN8idEntity13UpdateVisualsEv
	.loc 2 430 0
	li 0,2
	stw 0,1488(31)
.LBE4519:
	.loc 2 431 0
	lwz 0,340(1)
	lwz 22,200(1)
.LVL638:
	mtlr 0
	lwz 23,204(1)
.LVL639:
	lwz 24,208(1)
.LVL640:
	lwz 25,212(1)
	lwz 26,216(1)
	lwz 27,220(1)
	lwz 28,224(1)
	lwz 29,228(1)
	lwz 30,232(1)
.LVL641:
	lwz 31,236(1)
.LVL642:
	lfd 20,240(1)
	lfd 21,248(1)
	lfd 22,256(1)
	lfd 23,264(1)
.LVL643:
	lfd 24,272(1)
	lfd 25,280(1)
	lfd 26,288(1)
	lfd 27,296(1)
	lfd 28,304(1)
.LVL644:
	lfd 29,312(1)
	lfd 30,320(1)
	lfd 31,328(1)
	addi 1,1,336
	.cfi_remember_state
.LCFI94:
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
.LVL645:
.L224:
.LCFI95:
	.cfi_restore_state
.LBB4520:
	.loc 2 411 0
	lis 4,.LC56@ha
	li 5,3
	la 4,.LC56@l(4)
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
.LVL646:
	.loc 2 414 0
	li 0,0
	stw 0,1484(31)
.LVL647:
.LBB4451:
.LBB4436:
	.loc 16 241 0
	lis 4,.LC57@ha
	mr 3,30
	la 4,.LC57@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL648:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L266
.L255:
	.loc 16 245 0
	lis 5,.LC27@ha
	la 5,.LC27@l(5)
.LBE4436:
.LBE4451:
	.loc 2 416 0
	lbz 0,0(5)
	cmpwi 7,0,0
	beq+ 7,.L227
.L265:
	.loc 2 417 0
	lis 9,declManager@ha
	li 4,7
	lwz 3,declManager@l(9)
.LVL649:
	li 6,1
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
	stw 3,1480(31)
	.loc 2 418 0
	lwz 0,2004(27)
	stw 0,1484(31)
	b .L227
.LVL650:
.L260:
.LBB4452:
.LBB4453:
.LBB4454:
.LBB4455:
	.loc 16 241 0
	lis 4,.LC54@ha
	mr 3,30
	la 4,.LC54@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL651:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L252
.LVL652:
.LBB4456:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL653:
.L220:
.LBE4456:
.LBE4455:
.LBE4454:
	.loc 16 257 0
	bl atoi
.LBE4453:
.LBE4452:
	.loc 2 395 0
	lis 9,.LC20@ha
	.loc 2 393 0
	cmpwi 7,3,0
	.loc 2 394 0
	fsubs 1,24,23
.LVL654:
	.loc 2 395 0
	lfs 0,.LC20@l(9)
	.loc 2 393 0
	beq- 7,.L221
	.loc 2 395 0
	fcmpu 7,1,0
	bnl- 7,.L222
	.loc 2 396 0
	fmr 1,0
.LVL655:
.L222:
	.loc 2 398 0
	lis 4,.LANCHOR0@ha
	mr 3,31
	la 4,.LANCHOR0@l(4)
	addi 4,4,424
	bl _ZN7idClass12PostEventSecEPK10idEventDeff
.LVL656:
	b .L216
.LVL657:
.L264:
	.loc 2 375 0
	mr 3,25
	bl _ZN19idPhysics_RigidBody9NoContactEv
	b .L215
.LVL658:
.L263:
	.loc 2 331 0
	mr 3,31
	bl _ZNK8idEntity16GetEntityDefNameEv
	lis 4,.LC48@ha
	mr 5,3
	la 4,.LC48@l(4)
	mr 3,29
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L203
.LVL659:
.L262:
.LBB4460:
.LBB3961:
	.loc 4 636 0
	addi 9,9,132
.LVL660:
	slwi 9,9,2
.LVL661:
	add 9,29,9
	lwz 3,4(9)
.LBE3961:
.LBE4460:
	.loc 2 300 0
	cmpwi 7,3,0
	beq- 7,.L187
.LVL662:
.LBB4461:
.LBB4462:
	.loc 6 340 0
	lwz 9,0(3)
.LVL663:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL664:
.LBE4462:
	.loc 2 2410 0
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB4465:
.LBB4463:
.LBB4464:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L188
	lwz 9,60(9)
	cmpw 7,0,9
	ble- 7,.L187
.L188:
.LVL665:
.LBE4464:
.LBE4463:
.LBE4465:
.LBE4461:
.LBB4466:
.LBB4467:
	.loc 4 634 0 discriminator 4
	lwz 0,636(31)
	.loc 4 638 0 discriminator 4
	li 11,0
	.loc 4 634 0 discriminator 4
	rlwinm 9,0,0,20,31
.LVL666:
	.loc 4 635 0 discriminator 4
	srawi 0,0,12
	addi 10,9,4228
	slwi 10,10,2
	add 10,29,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L267
.LVL667:
.L189:
.LBE4467:
.LBE4466:
	.loc 2 301 0
	lbz 0,160(11)
	.loc 2 306 0
	addi 30,31,100
.LVL668:
.LBB4469:
.LBB3975:
.LBB3971:
.LBB3969:
	.loc 16 241 0
	lis 4,.LC32@ha
	mr 3,30
.LVL669:
.LBE3969:
.LBE3971:
.LBE3975:
.LBE4469:
	.loc 2 301 0
	stb 0,160(31)
.LBB4470:
.LBB3976:
.LBB3972:
.LBB3970:
	.loc 16 241 0
	la 4,.LC32@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL670:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L268
.LVL671:
.L232:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL672:
	la 3,.LC30@l(3)
.LBE3970:
.LBE3972:
	.loc 16 249 0
	bl atof
.LBE3976:
.LBE4470:
.LBB4471:
.LBB3996:
.LBB3991:
.LBB3986:
	.loc 16 241 0
	lis 4,.LC33@ha
.LBE3986:
.LBE3991:
.LBE3996:
.LBE4471:
.LBB4472:
.LBB3977:
	.loc 16 249 0
	frsp 1,1
.LBE3977:
.LBE4472:
.LBB4473:
.LBB3997:
.LBB3992:
.LBB3987:
	.loc 16 241 0
	mr 3,30
	la 4,.LC33@l(4)
.LBE3987:
.LBE3992:
.LBE3997:
.LBE4473:
.LBB4474:
.LBB3978:
	.loc 16 249 0
	stfs 1,644(31)
.LVL673:
.LBE3978:
.LBE4474:
.LBB4475:
.LBB3998:
.LBB3993:
.LBB3988:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL674:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L269
.L233:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL675:
	la 3,.LC30@l(3)
.LBE3988:
.LBE3993:
	.loc 16 249 0
	bl atof
.LVL676:
.LBE3998:
.LBE4475:
.LBB4476:
.LBB4012:
.LBB4009:
.LBB4008:
	.loc 16 241 0
	lis 4,.LC34@ha
	mr 3,30
	la 4,.LC34@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL677:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L270
.L234:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL678:
	la 3,.LC30@l(3)
	b .L192
.LVL679:
.L221:
.LBE4008:
.LBE4009:
.LBE4012:
.LBE4476:
	.loc 2 401 0
	fcmpu 7,1,0
	bnl- 7,.L223
	.loc 2 402 0
	fmr 1,0
.LVL680:
.L223:
	.loc 2 404 0
	lis 4,.LANCHOR0@ha
	mr 3,31
	la 4,.LANCHOR0@l(4)
	addi 4,4,488
	bl _ZN7idClass12PostEventSecEPK10idEventDeff
.LVL681:
	b .L216
.LVL682:
.L267:
.LBB4477:
.LBB4468:
	.loc 4 636 0
	addi 9,9,132
.LVL683:
	slwi 9,9,2
.LVL684:
	add 9,29,9
	lwz 11,4(9)
	b .L189
.LVL685:
.L237:
.LBE4468:
.LBE4477:
.LBB4478:
.LBB4091:
.LBB4088:
.LBB4086:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL686:
	la 3,.LC30@l(3)
.LBE4086:
.LBE4088:
	.loc 16 249 0
	bl atof
.LBE4091:
.LBE4478:
.LBB4479:
.LBB4108:
.LBB4104:
.LBB4101:
	.loc 16 241 0
	lis 4,.LC41@ha
	mr 3,30
	la 4,.LC41@l(4)
.LBE4101:
.LBE4104:
.LBE4108:
.LBE4479:
.LBB4480:
.LBB4092:
	.loc 16 249 0
	frsp 29,1
.LVL687:
.LBE4092:
.LBE4480:
.LBB4481:
.LBB4109:
.LBB4105:
.LBB4102:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL688:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L271
.L238:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL689:
	la 3,.LC30@l(3)
.LBE4102:
.LBE4105:
	.loc 16 249 0
	bl atof
.LBE4109:
.LBE4481:
.LBB4482:
.LBB4126:
.LBB4122:
.LBB4119:
	.loc 16 241 0
	lis 4,.LC42@ha
	mr 3,30
	la 4,.LC42@l(4)
.LBE4119:
.LBE4122:
.LBE4126:
.LBE4482:
.LBB4483:
.LBB4110:
	.loc 16 249 0
	frsp 25,1
.LVL690:
.LBE4110:
.LBE4483:
.LBB4484:
.LBB4127:
.LBB4123:
.LBB4120:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL691:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L272
.L239:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL692:
	la 3,.LC30@l(3)
.LBE4120:
.LBE4123:
	.loc 16 249 0
	bl atof
.LBE4127:
.LBE4484:
.LBB4485:
.LBB4144:
.LBB4140:
.LBB4137:
	.loc 16 241 0
	lis 4,.LC43@ha
	mr 3,30
	la 4,.LC43@l(4)
.LBE4137:
.LBE4140:
.LBE4144:
.LBE4485:
.LBB4486:
.LBB4128:
	.loc 16 249 0
	frsp 22,1
.LVL693:
.LBE4128:
.LBE4486:
.LBB4487:
.LBB4145:
.LBB4141:
.LBB4138:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL694:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L273
.L240:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL695:
	la 3,.LC30@l(3)
.LBE4138:
.LBE4141:
	.loc 16 249 0
	bl atof
.LBE4145:
.LBE4487:
.LBB4488:
.LBB4163:
.LBB4158:
.LBB4155:
	.loc 16 241 0
	lis 4,.LC44@ha
	mr 3,30
	la 4,.LC44@l(4)
.LBE4155:
.LBE4158:
.LBE4163:
.LBE4488:
.LBB4489:
.LBB4146:
	.loc 16 249 0
	frsp 30,1
.LVL696:
.LBE4146:
.LBE4489:
.LBB4490:
.LBB4164:
.LBB4159:
.LBB4156:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL697:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L274
.L241:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL698:
	la 3,.LC30@l(3)
.LBE4156:
.LBE4159:
	.loc 16 249 0
	bl atof
.LBE4164:
.LBE4490:
.LBB4491:
.LBB4183:
.LBB4177:
.LBB4174:
	.loc 16 241 0
	lis 4,.LC45@ha
	mr 3,30
	la 4,.LC45@l(4)
.LBE4174:
.LBE4177:
.LBE4183:
.LBE4491:
.LBB4492:
.LBB4165:
	.loc 16 249 0
	fmr 24,1
.LVL699:
.LBE4165:
.LBE4492:
.LBB4493:
.LBB4184:
.LBB4178:
.LBB4175:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL700:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L275
.L242:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL701:
	la 3,.LC30@l(3)
.LBE4175:
.LBE4178:
	.loc 16 257 0
	bl atoi
.LBE4184:
.LBE4493:
	.loc 2 326 0
	lwz 0,640(31)
.LBB4494:
.LBB4185:
	.loc 16 257 0
	cntlzw 3,3
.LBE4185:
.LBE4494:
.LBB4495:
.LBB4216:
.LBB4206:
.LBB4199:
	.loc 16 241 0
	lis 4,.LC46@ha
.LBE4199:
.LBE4206:
.LBE4216:
.LBE4495:
.LBB4496:
.LBB4186:
	.loc 16 257 0
	srwi 3,3,5
.LBE4186:
.LBE4496:
.LBB4497:
.LBB4217:
.LBB4207:
.LBB4200:
	.loc 16 241 0
	la 4,.LC46@l(4)
.LBE4200:
.LBE4207:
.LBE4217:
.LBE4497:
.LBB4498:
.LBB4187:
	.loc 16 257 0
	xori 3,3,1
.LBE4187:
.LBE4498:
	.loc 2 326 0
	rlwimi 0,3,31,0,0
.LBB4499:
.LBB4218:
.LBB4208:
.LBB4201:
	.loc 16 241 0
	mr 3,30
.LBE4201:
.LBE4208:
.LBE4218:
.LBE4499:
	.loc 2 326 0
	stw 0,640(31)
.LVL702:
.LBB4500:
.LBB4219:
.LBB4209:
.LBB4202:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL703:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L276
.L243:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL704:
	la 3,.LC30@l(3)
.LBE4202:
.LBE4209:
	.loc 16 257 0
	bl atoi
.LBE4219:
.LBE4500:
	.loc 2 327 0
	lwz 0,640(31)
.LBB4501:
.LBB4220:
	.loc 16 257 0
	cntlzw 3,3
.LBE4220:
.LBE4501:
.LBB4502:
.LBB4254:
.LBB4244:
.LBB4237:
	.loc 16 241 0
	lis 4,.LC47@ha
.LBE4237:
.LBE4244:
.LBE4254:
.LBE4502:
.LBB4503:
.LBB4221:
	.loc 16 257 0
	srwi 3,3,5
.LBE4221:
.LBE4503:
.LBB4504:
.LBB4255:
.LBB4245:
.LBB4238:
	.loc 16 241 0
	la 4,.LC47@l(4)
.LBE4238:
.LBE4245:
.LBE4255:
.LBE4504:
.LBB4505:
.LBB4222:
	.loc 16 257 0
	xori 3,3,1
.LBE4222:
.LBE4505:
	.loc 2 327 0
	rlwimi 0,3,30,1,1
.LBB4506:
.LBB4256:
.LBB4246:
.LBB4239:
	.loc 16 241 0
	mr 3,30
.LBE4239:
.LBE4246:
.LBE4256:
.LBE4506:
	.loc 2 327 0
	stw 0,640(31)
.LVL705:
.LBB4507:
.LBB4257:
.LBB4247:
.LBB4240:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL706:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L277
.L244:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL707:
	la 3,.LC30@l(3)
	b .L202
.LVL708:
.L245:
.LBE4240:
.LBE4247:
.LBE4257:
.LBE4507:
.LBB4508:
.LBB4318:
.LBB4314:
.LBB4310:
	lis 3,.LC30@ha
.LVL709:
	la 3,.LC30@l(3)
	b .L207
.LVL710:
.L247:
.LBE4310:
.LBE4314:
.LBE4318:
.LBE4508:
.LBB4509:
.LBB4349:
.LBB4348:
.LBB4347:
	lis 3,.LC30@ha
.LVL711:
	la 3,.LC30@l(3)
	b .L209
.LVL712:
.L249:
.LBE4347:
.LBE4348:
.LBE4349:
.LBE4509:
.LBB4510:
.LBB4357:
.LBB4356:
.LBB4355:
	lis 3,.LC30@ha
.LVL713:
	la 3,.LC30@l(3)
	b .L211
.LVL714:
.L235:
.LBE4355:
.LBE4356:
.LBE4357:
.LBE4510:
.LBB4511:
.LBB4060:
.LBB4057:
.LBB4055:
	lis 3,.LC30@ha
.LVL715:
	la 3,.LC30@l(3)
.LBE4055:
.LBE4057:
	.loc 16 249 0
	bl atof
.LBE4060:
.LBE4511:
.LBB4512:
.LBB4076:
.LBB4072:
.LBB4069:
	.loc 16 241 0
	lis 4,.LC39@ha
	mr 3,30
	la 4,.LC39@l(4)
.LBE4069:
.LBE4072:
.LBE4076:
.LBE4512:
.LBB4513:
.LBB4061:
	.loc 16 249 0
	frsp 20,1
.LVL716:
.LBE4061:
.LBE4513:
.LBB4514:
.LBB4077:
.LBB4073:
.LBB4070:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL717:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L278
.L236:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL718:
	la 3,.LC30@l(3)
	b .L194
.LVL719:
.L252:
.LBE4070:
.LBE4073:
.LBE4077:
.LBE4514:
.LBB4515:
.LBB4459:
.LBB4458:
.LBB4457:
	lis 3,.LC30@ha
.LVL720:
	la 3,.LC30@l(3)
	b .L220
.LVL721:
.L251:
.LBE4457:
.LBE4458:
.LBE4459:
.LBE4515:
.LBB4516:
.LBB4431:
.LBB4429:
.LBB4428:
	lis 3,.LC31@ha
.LVL722:
	la 3,.LC31@l(3)
	b .L219
.LVL723:
.L250:
.LBE4428:
.LBE4429:
.LBE4431:
.LBE4516:
.LBB4517:
.LBB4374:
	lis 4,.LC27@ha
	la 4,.LC27@l(4)
	b .L214
.LBE4374:
.LBE4517:
.LBE4520:
	.cfi_endproc
.LFE2828:
	.size	_ZN12idProjectile6LaunchERK6idVec3S2_S2_fff, .-_ZN12idProjectile6LaunchERK6idVec3S2_S2_fff
	.align 2
	.globl _ZN18idGuidedProjectile6LaunchERK6idVec3S2_S2_fff
	.type	_ZN18idGuidedProjectile6LaunchERK6idVec3S2_S2_fff, @function
_ZN18idGuidedProjectile6LaunchERK6idVec3S2_S2_fff:
.LFB2868:
	.loc 2 1414 0
	.cfi_startproc
.LVL724:
	stwu 1,-192(1)
.LCFI96:
	.cfi_def_cfa_offset 192
	mflr 0
	stw 31,188(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,196(1)
	stw 30,184(1)
.LBB4613:
.LBB4614:
.LBB4615:
.LBB4616:
	.loc 4 635 0
	lis 30,gameLocal@ha
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBE4616:
.LBE4615:
.LBE4614:
.LBE4613:
	.loc 2 1414 0
	stw 29,180(1)
.LBB4892:
	.loc 2 1415 0
	.cfi_offset 29, -12
	bl _ZN12idProjectile6LaunchERK6idVec3S2_S2_fff
.LVL725:
.LBB4700:
.LBB4619:
.LBB4617:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 635 0
	la 30,gameLocal@l(30)
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL726:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L309
.LVL727:
.L280:
.LBE4617:
.LBE4619:
.LBE4700:
	.loc 2 1434 0
	li 4,0
	addi 3,31,936
	bl _ZNK19idPhysics_RigidBody17GetLinearVelocityEi
	mr 30,3
.LVL728:
	.loc 2 1435 0
	mr 4,3
	addi 3,1,20
.LVL729:
	bl _ZNK6idVec38ToAnglesEv
.LVL730:
.LBB4701:
.LBB4702:
	.loc 15 146 0
	lwz 0,20(1)
.LBE4702:
.LBE4701:
.LBB4706:
.LBB4707:
.LBB4708:
.LBB4709:
.LBB4710:
.LBB4711:
	.loc 8 278 0
	lis 9,.LC22@ha
.LBE4711:
.LBE4710:
.LBE4709:
.LBE4708:
.LBE4707:
.LBE4706:
.LBB4724:
.LBB4725:
	.loc 16 280 0
	lis 4,.LC63@ha
.LBE4725:
.LBE4724:
.LBB4730:
.LBB4703:
	.loc 15 146 0
	stw 0,1528(31)
.LBE4703:
.LBE4730:
.LBB4731:
.LBB4726:
	.loc 16 280 0
	lis 5,.LC64@ha
.LBE4726:
.LBE4731:
.LBB4732:
.LBB4704:
	.loc 15 147 0
	lwz 0,24(1)
.LBE4704:
.LBE4732:
.LBB4733:
.LBB4727:
	.loc 16 280 0
	la 4,.LC63@l(4)
	la 5,.LC64@l(5)
	addi 6,1,8
.LBE4727:
.LBE4733:
.LBB4734:
.LBB4705:
	.loc 15 147 0
	stw 0,1532(31)
	.loc 15 148 0
	lwz 0,28(1)
	stw 0,1536(31)
.LVL731:
.LBE4705:
.LBE4734:
.LBB4735:
.LBB4722:
	.loc 3 632 0
	lfs 0,4(30)
	lfs 13,0(30)
	fmuls 12,0,0
	lfs 0,8(30)
.LBE4722:
.LBE4735:
	.loc 2 1437 0
	addi 30,31,100
.LVL732:
.LBB4736:
.LBB4728:
	.loc 16 280 0
	mr 3,30
.LBE4728:
.LBE4736:
.LBB4737:
.LBB4723:
	.loc 3 632 0
	fmadds 13,13,13,12
.LBB4720:
.LBB4718:
.LBB4715:
.LBB4712:
	.loc 8 278 0
	lfs 12,.LC22@l(9)
	.loc 8 276 0
	lis 9,_ZN6idMath5iSqrtE@ha
	la 9,_ZN6idMath5iSqrtE@l(9)
.LBE4712:
.LBE4715:
.LBE4718:
.LBE4720:
	.loc 3 632 0
	fmadds 13,0,0,13
	stfs 13,168(1)
.LVL733:
.LBB4721:
.LBB4719:
.LBB4716:
.LBB4713:
	.loc 8 270 0
	lwz 0,168(1)
.LVL734:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 9,9,0
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	.loc 8 275 0
	lis 11,.LC6@ha
	.loc 8 276 0
	or 0,0,9
	.loc 8 275 0
	lfs 11,.LC6@l(11)
	.loc 8 277 0
	stw 0,172(1)
	.loc 8 275 0
	fmuls 11,13,11
.LVL735:
	.loc 8 277 0
	lfs 0,172(1)
	fmr 13,0
.LVL736:
	.loc 2 1414 0
	fneg 11,11
.LVL737:
	.loc 8 278 0
	fmul 0,13,13
.LVL738:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL739:
	.loc 8 279 0
	fmul 13,0,0
	fmadd 12,11,13,12
.LVL740:
.LBE4713:
.LBE4716:
	.loc 8 303 0
	lfs 13,168(1)
.LBB4717:
.LBB4714:
	.loc 8 279 0
	fmul 0,0,12
.LVL741:
	.loc 8 280 0
	frsp 0,0
.LVL742:
.LBE4714:
.LBE4717:
	.loc 8 303 0
	fmuls 0,13,0
.LBE4719:
.LBE4721:
.LBE4723:
.LBE4737:
	.loc 2 1436 0
	stfs 0,1496(31)
.LVL743:
.LBB4738:
.LBB4729:
	.loc 16 280 0
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL744:
.LBE4729:
.LBE4738:
.LBB4739:
.LBB4740:
	.loc 15 146 0
	lwz 0,8(1)
.LBE4740:
.LBE4739:
.LBB4743:
.LBB4744:
.LBB4745:
.LBB4746:
	.loc 16 241 0
	lis 4,.LC65@ha
	mr 3,30
.LBE4746:
.LBE4745:
.LBE4744:
.LBE4743:
.LBB4759:
.LBB4741:
	.loc 15 146 0
	stw 0,1504(31)
.LBE4741:
.LBE4759:
.LBB4760:
.LBB4754:
.LBB4751:
.LBB4748:
	.loc 16 241 0
	la 4,.LC65@l(4)
.LBE4748:
.LBE4751:
.LBE4754:
.LBE4760:
.LBB4761:
.LBB4742:
	.loc 15 147 0
	lwz 0,12(1)
	stw 0,1508(31)
	.loc 15 148 0
	lwz 0,16(1)
	stw 0,1512(31)
.LVL745:
.LBE4742:
.LBE4761:
.LBB4762:
.LBB4755:
.LBB4752:
.LBB4749:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL746:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L303
.LVL747:
.LBB4747:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL748:
.LBE4747:
.LBE4749:
.LBE4752:
	.loc 16 249 0
	bl atof
.LVL749:
.LBE4755:
.LBE4762:
	.loc 2 1438 0
	lis 9,.LC66@ha
.LBB4763:
.LBB4756:
	.loc 16 249 0
	frsp 1,1
.LBE4756:
.LBE4763:
	.loc 2 1438 0
	lfs 0,.LC66@l(9)
.LBB4764:
.LBB4765:
.LBB4766:
.LBB4767:
	.loc 16 241 0
	lis 4,.LC67@ha
	mr 3,30
	la 4,.LC67@l(4)
.LBE4767:
.LBE4766:
.LBE4765:
.LBE4764:
	.loc 2 1438 0
	fdivs 1,1,0
	stfs 1,1544(31)
.LVL750:
.LBB4782:
.LBB4775:
.LBB4772:
.LBB4769:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL751:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L304
.L314:
.LVL752:
.LBB4768:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL753:
.LBE4768:
.LBE4769:
.LBE4772:
	.loc 16 249 0
	bl atof
.LVL754:
.LBE4775:
.LBE4782:
.LBB4783:
.LBB4784:
.LBB4785:
.LBB4786:
	.loc 16 241 0
	lis 4,.LC68@ha
.LBE4786:
.LBE4785:
.LBE4784:
.LBE4783:
.LBB4809:
.LBB4776:
	.loc 16 249 0
	frsp 1,1
.LBE4776:
.LBE4809:
.LBB4810:
.LBB4798:
.LBB4793:
.LBB4788:
	.loc 16 241 0
	mr 3,30
	la 4,.LC68@l(4)
.LBE4788:
.LBE4793:
.LBE4798:
.LBE4810:
.LBB4811:
.LBB4777:
	.loc 16 249 0
	stfs 1,1548(31)
.LVL755:
.LBE4777:
.LBE4811:
.LBB4812:
.LBB4799:
.LBB4794:
.LBB4789:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL756:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L305
.L315:
.LVL757:
.LBB4787:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL758:
.LBE4787:
.LBE4789:
.LBE4794:
	.loc 16 257 0
	bl atoi
.LVL759:
.LBE4799:
.LBE4812:
	.loc 2 1441 0
	li 0,0
.LBB4813:
.LBB4800:
	.loc 16 257 0
	cntlzw 3,3
.LBE4800:
.LBE4813:
	.loc 2 1441 0
	stb 0,1553(31)
.LVL760:
.LBB4814:
.LBB4801:
	.loc 16 257 0
	srwi 3,3,5
.LBE4801:
.LBE4814:
.LBB4815:
.LBB4816:
.LBB4817:
.LBB4818:
	.loc 16 241 0
	lis 4,.LC69@ha
.LBE4818:
.LBE4817:
.LBE4816:
.LBE4815:
.LBB4839:
.LBB4802:
	.loc 16 257 0
	xori 3,3,1
.LBE4802:
.LBE4839:
.LBB4840:
.LBB4830:
.LBB4825:
.LBB4820:
	.loc 16 241 0
	la 4,.LC69@l(4)
.LBE4820:
.LBE4825:
.LBE4830:
.LBE4840:
	.loc 2 1440 0
	stb 3,1552(31)
.LBB4841:
.LBB4831:
.LBB4826:
.LBB4821:
	.loc 16 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL761:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L306
.L316:
.LVL762:
.LBB4819:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL763:
.LBE4819:
.LBE4821:
.LBE4826:
	.loc 16 249 0
	bl atof
.LVL764:
.LBE4831:
.LBE4841:
.LBB4842:
.LBB4843:
.LBB4844:
.LBB4845:
	.loc 16 241 0
	lis 4,.LC70@ha
.LBE4845:
.LBE4844:
.LBE4843:
.LBE4842:
.LBB4864:
.LBB4832:
	.loc 16 249 0
	frsp 1,1
.LBE4832:
.LBE4864:
.LBB4865:
.LBB4857:
.LBB4852:
.LBB4847:
	.loc 16 241 0
	mr 3,30
	la 4,.LC70@l(4)
.LBE4847:
.LBE4852:
.LBE4857:
.LBE4865:
.LBB4866:
.LBB4833:
	.loc 16 249 0
	stfs 1,1556(31)
.LVL765:
.LBE4833:
.LBE4866:
.LBB4867:
.LBB4858:
.LBB4853:
.LBB4848:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL766:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L307
.LVL767:
.L317:
.LBB4846:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL768:
.LBE4846:
.LBE4848:
.LBE4853:
	.loc 16 249 0
	bl atof
.LVL769:
.LBE4858:
.LBE4867:
	.loc 2 1444 0
	mr 3,31
.LBB4868:
.LBB4859:
	.loc 16 249 0
	frsp 1,1
	stfs 1,1560(31)
.LBE4859:
.LBE4868:
	.loc 2 1444 0
	bl _ZN8idEntity13UpdateVisualsEv
.LBE4892:
	.loc 2 1445 0
	lwz 0,196(1)
	lwz 29,180(1)
	mtlr 0
	lwz 30,184(1)
.LVL770:
	lwz 31,188(1)
.LVL771:
	addi 1,1,192
	.cfi_remember_state
.LCFI97:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL772:
.L309:
.LCFI98:
	.cfi_restore_state
.LBB4893:
.LBB4869:
.LBB4620:
.LBB4618:
	.loc 4 636 0
	addi 9,9,132
.LVL773:
	slwi 9,9,2
.LVL774:
	add 9,30,9
	lwz 3,4(9)
.LBE4618:
.LBE4620:
	.loc 2 1416 0
	cmpwi 7,3,0
	beq- 7,.L280
.LVL775:
.LBB4621:
.LBB4622:
.LBB4623:
	.loc 6 340 0
	lwz 9,0(3)
.LVL776:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL777:
.LBE4623:
	.loc 2 2410 0
	lis 9,_ZN4idAI4TypeE@ha
	la 9,_ZN4idAI4TypeE@l(9)
	lwz 0,56(3)
.LBB4626:
.LBB4624:
.LBB4625:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L281
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L281
.LVL778:
.LBE4625:
.LBE4624:
.LBE4626:
.LBE4622:
.LBB4627:
.LBB4628:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 3,0
.LVL779:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL780:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L310
.LVL781:
.L282:
.LBE4628:
.LBE4627:
	.loc 2 1418 0
	bl _ZNK4idAI8GetEnemyEv
.LVL782:
.LBB4630:
.LBB4631:
	.loc 4 605 0
	cmpwi 0,3,0
	beq- 0,.L308
.LVL783:
.L291:
.LBE4631:
.LBE4630:
.LBB4632:
.LBB4633:
.LBB4634:
.LBB4635:
	.loc 4 608 0
	lwz 9,4(3)
	addi 0,9,4228
	slwi 0,0,2
	add 30,30,0
	lwz 0,4(30)
	slwi 0,0,12
	or 9,0,9
	stw 9,1500(31)
	b .L280
.LVL784:
.L281:
.LBE4635:
.LBE4634:
.LBE4633:
.LBB4685:
.LBB4686:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 3,0
.LVL785:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL786:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L311
.LVL787:
.L298:
.LBE4686:
.LBE4685:
.LBB4688:
.LBB4689:
	.loc 6 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL788:
.LBE4689:
	.loc 2 2410 0
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB4692:
.LBB4690:
.LBB4691:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L280
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L280
.LVL789:
.LBE4691:
.LBE4690:
.LBE4692:
.LBE4688:
.LBB4693:
.LBB4637:
.LBB4638:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 29,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL790:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L284
	.loc 4 636 0
	addi 9,9,132
.LVL791:
	slwi 9,9,2
.LVL792:
	add 9,30,9
	lwz 29,4(9)
.L284:
.LBE4638:
.LBE4637:
	.loc 2 1422 0
	addi 3,1,44
.LVL793:
	mr 4,29
	bl _ZNK8idPlayer14GetEyePositionEv
.LVL794:
.LBB4639:
.LBB4640:
	.loc 4 634 0
	lwz 0,636(31)
.LBE4640:
.LBE4639:
	.loc 3 452 0
	lis 10,.LC62@ha
	lfs 13,48(1)
.LBB4649:
.LBB4641:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LBE4641:
.LBE4649:
	.loc 3 452 0
	lfs 0,.LC62@l(10)
.LBB4650:
.LBB4642:
	.loc 4 635 0
	addi 11,9,4228
.LBE4642:
.LBE4650:
	.loc 3 452 0
	lfs 12,2272(29)
.LBB4651:
.LBB4643:
	.loc 4 635 0
	slwi 11,11,2
.LBE4643:
.LBE4651:
	.loc 3 452 0
	lfs 11,2276(29)
	fmadds 12,12,0,13
.LBB4652:
.LBB4644:
	.loc 4 635 0
	add 11,30,11
.LBE4644:
.LBE4652:
	.loc 3 452 0
	lfs 13,52(1)
.LBB4653:
.LBB4645:
	.loc 4 635 0
	srawi 0,0,12
	lwz 11,4(11)
	.loc 4 638 0
	li 10,0
.LBE4645:
.LBE4653:
	.loc 3 452 0
	fmadds 13,11,0,13
.LVL795:
.LBB4654:
.LBB4655:
.LBB4656:
.LBB4657:
	lfs 10,2268(29)
	lfs 11,44(1)
.LBE4657:
.LBE4656:
.LBE4655:
.LBE4654:
.LBB4661:
.LBB4646:
	.loc 4 635 0
	cmpw 7,11,0
.LBE4646:
.LBE4661:
.LBB4662:
.LBB4660:
.LBB4659:
.LBB4658:
	.loc 3 397 0
	stfs 12,36(1)
	.loc 3 452 0
	fmadds 0,10,0,11
	.loc 3 398 0
	stfs 13,40(1)
.LVL796:
	.loc 3 396 0
	stfs 0,32(1)
.LBE4658:
.LBE4659:
.LBE4660:
.LBE4662:
.LBB4663:
.LBB4647:
	.loc 4 635 0
	beq- 7,.L312
.LVL797:
.L285:
.LBE4647:
.LBE4663:
.LBB4664:
.LBB4665:
	.file 17 "d:/Data/Nintendo/DoomGX/src/game/physics/Clip.h"
	.loc 17 334 0
	lis 3,gameLocal+2311032@ha
	lis 8,mat3_identity@ha
	li 9,2305
	la 3,gameLocal+2311032@l(3)
	addi 4,1,56
	addi 5,1,44
.LVL798:
	addi 6,1,32
	li 7,0
	la 8,mat3_identity@l(8)
	bl _ZN6idClip11TranslationER7trace_sRK6idVec3S4_PK11idClipModelRK6idMat3iPK8idEntity
.LVL799:
.LBE4665:
.LBE4664:
	.loc 2 1425 0
	lis 9,.LC2@ha
	lfs 13,56(1)
	lfs 0,.LC2@l(9)
	fcmpu 7,13,0
	blt- 7,.L286
	lwz 0,1500(31)
	rlwinm 9,0,0,20,31
	srawi 0,0,12
.L287:
.LVL800:
.LBB4666:
.LBB4667:
	.loc 4 635 0
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L313
.LVL801:
.L289:
.LBE4667:
.LBE4666:
	.loc 2 1430 0 discriminator 5
	mr 3,29
	bl _ZN7idActor19EnemyWithMostHealthEv
.LVL802:
.LBB4669:
.LBB4636:
	.loc 4 605 0 discriminator 5
	cmpwi 0,3,0
	bne+ 0,.L291
.LVL803:
.L308:
	.loc 4 606 0
	stw 3,1500(31)
	b .L280
.LVL804:
.L310:
.LBE4636:
.LBE4669:
.LBE4693:
.LBE4632:
.LBB4696:
.LBB4629:
	.loc 4 636 0
	addi 9,9,132
.LVL805:
	slwi 9,9,2
.LVL806:
	add 9,30,9
	lwz 3,4(9)
	b .L282
.LVL807:
.L311:
.LBE4629:
.LBE4696:
.LBB4697:
.LBB4694:
.LBB4687:
	addi 9,9,132
.LVL808:
	slwi 9,9,2
.LVL809:
	add 9,30,9
	lwz 3,4(9)
	b .L298
.LVL810:
.L303:
.LBE4687:
.LBE4694:
.LBE4697:
.LBE4621:
.LBE4869:
.LBB4870:
.LBB4757:
.LBB4753:
.LBB4750:
	.loc 16 245 0
	lis 3,.LC58@ha
.LVL811:
	la 3,.LC58@l(3)
.LBE4750:
.LBE4753:
	.loc 16 249 0
	bl atof
.LBE4757:
.LBE4870:
	.loc 2 1438 0
	lis 9,.LC66@ha
.LBB4871:
.LBB4758:
	.loc 16 249 0
	frsp 1,1
.LBE4758:
.LBE4871:
	.loc 2 1438 0
	lfs 0,.LC66@l(9)
.LBB4872:
.LBB4778:
.LBB4773:
.LBB4770:
	.loc 16 241 0
	lis 4,.LC67@ha
	mr 3,30
	la 4,.LC67@l(4)
.LBE4770:
.LBE4773:
.LBE4778:
.LBE4872:
	.loc 2 1438 0
	fdivs 1,1,0
	stfs 1,1544(31)
.LVL812:
.LBB4873:
.LBB4779:
.LBB4774:
.LBB4771:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL813:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L314
.L304:
	.loc 16 245 0
	lis 3,.LC59@ha
.LVL814:
	la 3,.LC59@l(3)
.LBE4771:
.LBE4774:
	.loc 16 249 0
	bl atof
.LBE4779:
.LBE4873:
.LBB4874:
.LBB4803:
.LBB4795:
.LBB4790:
	.loc 16 241 0
	lis 4,.LC68@ha
.LBE4790:
.LBE4795:
.LBE4803:
.LBE4874:
.LBB4875:
.LBB4780:
	.loc 16 249 0
	frsp 1,1
.LBE4780:
.LBE4875:
.LBB4876:
.LBB4804:
.LBB4796:
.LBB4791:
	.loc 16 241 0
	mr 3,30
	la 4,.LC68@l(4)
.LBE4791:
.LBE4796:
.LBE4804:
.LBE4876:
.LBB4877:
.LBB4781:
	.loc 16 249 0
	stfs 1,1548(31)
.LVL815:
.LBE4781:
.LBE4877:
.LBB4878:
.LBB4805:
.LBB4797:
.LBB4792:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL816:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L315
.L305:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL817:
	la 3,.LC30@l(3)
.LBE4792:
.LBE4797:
	.loc 16 257 0
	bl atoi
.LBE4805:
.LBE4878:
	.loc 2 1441 0
	li 0,0
.LBB4879:
.LBB4806:
	.loc 16 257 0
	cntlzw 3,3
.LBE4806:
.LBE4879:
	.loc 2 1441 0
	stb 0,1553(31)
.LVL818:
.LBB4880:
.LBB4807:
	.loc 16 257 0
	srwi 3,3,5
.LBE4807:
.LBE4880:
.LBB4881:
.LBB4834:
.LBB4827:
.LBB4822:
	.loc 16 241 0
	lis 4,.LC69@ha
.LBE4822:
.LBE4827:
.LBE4834:
.LBE4881:
.LBB4882:
.LBB4808:
	.loc 16 257 0
	xori 3,3,1
.LBE4808:
.LBE4882:
.LBB4883:
.LBB4835:
.LBB4828:
.LBB4823:
	.loc 16 241 0
	la 4,.LC69@l(4)
.LBE4823:
.LBE4828:
.LBE4835:
.LBE4883:
	.loc 2 1440 0
	stb 3,1552(31)
.LBB4884:
.LBB4836:
.LBB4829:
.LBB4824:
	.loc 16 241 0
	mr 3,30
	bl _ZNK6idDict7FindKeyEPKc
.LVL819:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L316
.L306:
	.loc 16 245 0
	lis 3,.LC60@ha
.LVL820:
	la 3,.LC60@l(3)
.LBE4824:
.LBE4829:
	.loc 16 249 0
	bl atof
.LBE4836:
.LBE4884:
.LBB4885:
.LBB4860:
.LBB4854:
.LBB4849:
	.loc 16 241 0
	lis 4,.LC70@ha
.LBE4849:
.LBE4854:
.LBE4860:
.LBE4885:
.LBB4886:
.LBB4837:
	.loc 16 249 0
	frsp 1,1
.LBE4837:
.LBE4886:
.LBB4887:
.LBB4861:
.LBB4855:
.LBB4850:
	.loc 16 241 0
	mr 3,30
	la 4,.LC70@l(4)
.LBE4850:
.LBE4855:
.LBE4861:
.LBE4887:
.LBB4888:
.LBB4838:
	.loc 16 249 0
	stfs 1,1556(31)
.LVL821:
.LBE4838:
.LBE4888:
.LBB4889:
.LBB4862:
.LBB4856:
.LBB4851:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL822:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L317
.LVL823:
.L307:
	.loc 16 245 0
	lis 3,.LC61@ha
.LVL824:
	la 3,.LC61@l(3)
.LBE4851:
.LBE4856:
	.loc 16 249 0
	bl atof
.LBE4862:
.LBE4889:
	.loc 2 1444 0
	mr 3,31
.LBB4890:
.LBB4863:
	.loc 16 249 0
	frsp 1,1
	stfs 1,1560(31)
.LBE4863:
.LBE4890:
	.loc 2 1444 0
	bl _ZN8idEntity13UpdateVisualsEv
.LBE4893:
	.loc 2 1445 0
	lwz 0,196(1)
	lwz 29,180(1)
	mtlr 0
	lwz 30,184(1)
.LVL825:
	lwz 31,188(1)
.LVL826:
	addi 1,1,192
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI99:
	.cfi_def_cfa_offset 0
	blr
.LVL827:
.L286:
.LCFI100:
	.cfi_restore_state
.LBB4894:
.LBB4891:
.LBB4699:
.LBB4698:
.LBB4695:
	.loc 2 1426 0
	mr 3,30
	addi 4,1,56
	bl _ZNK11idGameLocal14GetTraceEntityERK7trace_s
.LVL828:
.LBB4670:
.LBB4671:
	.loc 4 605 0
	cmpwi 0,3,0
	beq- 0,.L318
	.loc 4 608 0
	lwz 9,4(3)
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 0,4(11)
	slwi 0,0,12
	or 0,0,9
	stw 0,1500(31)
	rlwinm 9,0,0,20,31
	srawi 0,0,12
	b .L287
.LVL829:
.L313:
.LBE4671:
.LBE4670:
.LBB4673:
.LBB4668:
	.loc 4 636 0
	addi 9,9,132
.LVL830:
	slwi 9,9,2
.LVL831:
	add 9,30,9
	lwz 3,4(9)
.LBE4668:
.LBE4673:
	.loc 2 1429 0
	cmpwi 7,3,0
	beq- 7,.L289
.LVL832:
.LBB4674:
.LBB4675:
	.loc 6 340 0
	lwz 9,0(3)
.LVL833:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL834:
.LBE4675:
	.loc 2 2410 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB4678:
.LBB4676:
.LBB4677:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L289
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L289
.LVL835:
.LBE4677:
.LBE4676:
.LBE4678:
.LBE4674:
.LBB4679:
.LBB4680:
	.loc 4 634 0
	lwz 0,1500(31)
	.loc 4 638 0
	li 9,0
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL836:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,30,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L319
.L290:
.LBE4680:
.LBE4679:
	.loc 2 1429 0
	lwz 9,2260(9)
	lwz 0,2260(29)
	cmpw 7,9,0
	bne+ 7,.L280
	b .L289
.LVL837:
.L312:
.LBB4682:
.LBB4648:
	.loc 4 636 0
	addi 9,9,132
.LVL838:
	slwi 9,9,2
.LVL839:
	add 9,30,9
	lwz 10,4(9)
	b .L285
.LVL840:
.L319:
.LBE4648:
.LBE4682:
.LBB4683:
.LBB4681:
	addi 9,11,132
	slwi 9,9,2
	add 9,30,9
	lwz 9,4(9)
	b .L290
.LVL841:
.L318:
.LBE4681:
.LBE4683:
.LBB4684:
.LBB4672:
	.loc 4 606 0
	stw 3,1500(31)
	li 0,0
	li 9,0
	b .L287
.LBE4672:
.LBE4684:
.LBE4695:
.LBE4698:
.LBE4699:
.LBE4891:
.LBE4894:
	.cfi_endproc
.LFE2868:
	.size	_ZN18idGuidedProjectile6LaunchERK6idVec3S2_S2_fff, .-_ZN18idGuidedProjectile6LaunchERK6idVec3S2_S2_fff
	.align 2
	.globl _ZN17idSoulCubeMissile6LaunchERK6idVec3S2_S2_fff
	.type	_ZN17idSoulCubeMissile6LaunchERK6idVec3S2_S2_fff, @function
_ZN17idSoulCubeMissile6LaunchERK6idVec3S2_S2_fff:
.LFB2885:
	.loc 2 1636 0
	.cfi_startproc
.LVL842:
	stwu 1,-128(1)
.LCFI101:
	.cfi_def_cfa_offset 128
	mflr 0
	stw 28,88(1)
	mr 28,4
	.cfi_offset 28, -40
	.cfi_register 65, 0
	stw 29,92(1)
.LBB4961:
.LBB4962:
.LBB4963:
.LBB4964:
.LBB4965:
	.loc 16 241 0
	lis 4,.LC72@ha
.LVL843:
.LBE4965:
.LBE4964:
.LBE4963:
.LBE4962:
	.loc 2 1642 0
	addi 29,3,100
	.cfi_offset 29, -36
.LVL844:
.LBE4961:
	.loc 2 1636 0
	stw 31,100(1)
.LBB5142:
.LBB4983:
.LBB4975:
.LBB4971:
.LBB4967:
	.loc 16 241 0
	la 4,.LC72@l(4)
.LBE4967:
.LBE4971:
.LBE4975:
.LBE4983:
.LBE5142:
	.loc 2 1636 0
	mr 31,3
	.cfi_offset 31, -28
.LBB5143:
.LBB4984:
.LBB4976:
.LBB4972:
.LBB4968:
	.loc 16 241 0
	mr 3,29
.LVL845:
.LBE4968:
.LBE4972:
.LBE4976:
.LBE4984:
.LBE5143:
	.loc 2 1636 0
	stfd 29,104(1)
	stfd 30,112(1)
	fmr 29,2
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	stfd 31,120(1)
	fmr 30,3
	stw 27,84(1)
	fmr 31,1
	.cfi_offset 27, -44
	.cfi_offset 63, -8
	stw 30,96(1)
	mr 27,6
	stw 0,132(1)
	.loc 2 1636 0
	mr 30,5
	.cfi_offset 65, 4
	.cfi_offset 30, -32
.LBB5144:
.LBB4985:
.LBB4977:
.LBB4973:
.LBB4969:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL846:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L327
.LVL847:
.LBB4966:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL848:
.L321:
.LBE4966:
.LBE4969:
.LBE4973:
	.loc 16 249 0
	bl atof
	.loc 3 452 0
	lfs 9,4(30)
	.loc 16 249 0
	frsp 1,1
.LVL849:
	.loc 3 452 0
	lfs 10,8(30)
.LBE4977:
.LBE4985:
.LBB4986:
.LBB4987:
	lfs 11,0(30)
.LBE4987:
.LBE4986:
.LBB4990:
.LBB4991:
	.loc 16 262 0
	lis 4,.LC73@ha
.LBE4991:
.LBE4990:
.LBB4998:
.LBB4988:
	.loc 3 452 0
	lfs 12,0(28)
.LBE4988:
.LBE4998:
.LBB4999:
.LBB4992:
	.loc 16 262 0
	lis 5,.LC74@ha
.LBE4992:
.LBE4999:
.LBB5000:
.LBB4978:
	.loc 3 452 0
	lfs 13,4(28)
.LBE4978:
.LBE5000:
.LBB5001:
.LBB4993:
	.loc 16 262 0
	la 4,.LC73@l(4)
.LBE4993:
.LBE5001:
.LBB5002:
.LBB4979:
	.loc 3 452 0
	lfs 0,8(28)
.LBE4979:
.LBE5002:
.LBB5003:
.LBB4994:
	.loc 16 262 0
	la 5,.LC74@l(5)
.LBE4994:
.LBE5003:
.LBB5004:
.LBB4980:
	.loc 3 452 0
	fmadds 13,9,1,13
.LBE4980:
.LBE5004:
.LBB5005:
.LBB4995:
	.loc 16 262 0
	addi 6,1,44
.LBE4995:
.LBE5005:
.LBB5006:
.LBB4981:
	.loc 3 452 0
	fmadds 0,10,1,0
.LVL850:
.LBE4981:
.LBE5006:
.LBB5007:
.LBB4996:
	.loc 16 262 0
	mr 3,29
.LBE4996:
.LBE5007:
.LBB5008:
.LBB4989:
	.loc 3 452 0
	fmadds 1,11,1,12
.LVL851:
	.loc 3 425 0
	stfs 13,60(1)
	.loc 3 426 0
	stfs 0,64(1)
.LVL852:
	.loc 3 424 0
	stfs 1,56(1)
.LBE4989:
.LBE5008:
.LBB5009:
.LBB4997:
	.loc 16 262 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL853:
.LBE4997:
.LBE5009:
.LBB5010:
.LBB5011:
	.loc 3 457 0
	lfs 13,60(1)
.LBE5011:
.LBE5010:
	.loc 2 1645 0
	fmr 1,31
.LBB5020:
.LBB5012:
	.loc 3 457 0
	lfs 0,48(1)
.LBE5012:
.LBE5020:
	.loc 2 1645 0
	fmr 2,29
.LBB5021:
.LBB5013:
	.loc 3 456 0
	lfs 12,56(1)
.LBE5013:
.LBE5021:
	.loc 2 1645 0
	fmr 3,30
.LBB5022:
.LBB5014:
	.loc 3 457 0
	fadds 13,13,0
	.loc 3 456 0
	lfs 0,44(1)
	.loc 3 458 0
	lfs 11,64(1)
.LBE5014:
.LBE5022:
	.loc 2 1645 0
	mr 6,27
.LBB5023:
.LBB5015:
	.loc 3 456 0
	fadds 12,12,0
	.loc 3 458 0
	lfs 0,52(1)
.LBE5015:
.LBE5023:
	.loc 2 1645 0
	mr 3,31
	addi 4,1,56
.LBB5024:
.LBB5016:
	.loc 3 458 0
	fadds 0,11,0
.LBE5016:
.LBE5024:
	.loc 2 1645 0
	mr 5,30
.LBB5025:
.LBB5017:
	.loc 3 456 0
	stfs 12,56(1)
.LBE5017:
.LBE5025:
.LBB5026:
.LBB5027:
	.loc 4 635 0
	lis 27,gameLocal@ha
.LVL854:
.LBE5027:
.LBE5026:
.LBB5031:
.LBB5018:
	.loc 3 457 0
	stfs 13,60(1)
.LBE5018:
.LBE5031:
.LBB5032:
.LBB5028:
	.loc 4 635 0
	la 27,gameLocal@l(27)
.LBE5028:
.LBE5032:
.LBB5033:
.LBB5019:
	.loc 3 458 0
	stfs 0,64(1)
.LBE5019:
.LBE5033:
	.loc 2 1645 0
	bl _ZN18idGuidedProjectile6LaunchERK6idVec3S2_S2_fff
.LVL855:
.LBB5034:
.LBB5029:
	.loc 4 634 0
	lwz 0,1500(31)
	rlwinm 9,0,0,20,31
.LVL856:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,27,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L329
.LVL857:
.L322:
.LBE5029:
.LBE5034:
.LBB5035:
.LBB5036:
.LBB5037:
.LBB5038:
	.loc 3 452 0 discriminator 4
	lis 9,.LC75@ha
	lfs 8,4(30)
	lfs 12,4(28)
	lfs 9,8(30)
	lfs 13,8(28)
.LBE5038:
.LBE5037:
.LBE5036:
.LBE5035:
.LBB5046:
.LBB5047:
	lfs 10,0(30)
	lfs 11,0(28)
.LBE5047:
.LBE5046:
.LBB5049:
.LBB5043:
.LBB5041:
.LBB5039:
	lfs 0,.LC75@l(9)
	fmadds 12,8,0,12
	fmadds 13,9,0,13
.LVL858:
.LBE5039:
.LBE5041:
.LBE5043:
.LBE5049:
.LBB5050:
.LBB5048:
	fmadds 0,10,0,11
	.loc 3 425 0 discriminator 4
	stfs 12,1604(31)
	.loc 3 426 0 discriminator 4
	stfs 13,1608(31)
	.loc 3 424 0 discriminator 4
	stfs 0,1600(31)
.LVL859:
.L326:
.LBE5048:
.LBE5050:
	.loc 2 1651 0
	addi 30,31,936
.LVL860:
	li 4,0
	mr 3,30
	li 5,-1
	bl _ZN14idPhysics_Base11SetClipMaskEii
.LVL861:
.LBB5051:
.LBB5052:
	.loc 16 262 0
	lis 4,.LC76@ha
	lis 5,.LC77@ha
	la 4,.LC76@l(4)
	la 5,.LC77@l(5)
	addi 6,1,32
	mr 3,29
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL862:
.LBE5052:
.LBE5051:
.LBB5053:
.LBB5054:
	.loc 3 424 0
	lwz 0,32(1)
.LBE5054:
.LBE5053:
.LBB5058:
.LBB5059:
	.loc 16 262 0
	lis 4,.LC78@ha
	lis 5,.LC79@ha
.LBE5059:
.LBE5058:
.LBB5063:
.LBB5055:
	.loc 3 424 0
	stw 0,1564(31)
.LBE5055:
.LBE5063:
.LBB5064:
.LBB5060:
	.loc 16 262 0
	la 4,.LC78@l(4)
.LBE5060:
.LBE5064:
.LBB5065:
.LBB5056:
	.loc 3 425 0
	lwz 0,36(1)
.LBE5056:
.LBE5065:
.LBB5066:
.LBB5061:
	.loc 16 262 0
	la 5,.LC79@l(5)
	addi 6,1,20
	mr 3,29
.LBE5061:
.LBE5066:
.LBB5067:
.LBB5057:
	.loc 3 425 0
	stw 0,1568(31)
	.loc 3 426 0
	lwz 0,40(1)
	stw 0,1572(31)
.LVL863:
.LBE5057:
.LBE5067:
.LBB5068:
.LBB5062:
	.loc 16 262 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL864:
.LBE5062:
.LBE5068:
.LBB5069:
.LBB5070:
	.loc 3 424 0
	lwz 0,20(1)
.LBE5070:
.LBE5069:
.LBB5073:
.LBB5074:
.LBB5075:
.LBB5076:
	.loc 16 241 0
	lis 4,.LC80@ha
	mr 3,29
.LBE5076:
.LBE5075:
.LBE5074:
.LBE5073:
.LBB5089:
.LBB5071:
	.loc 3 424 0
	stw 0,1576(31)
.LBE5071:
.LBE5089:
.LBB5090:
.LBB5084:
.LBB5081:
.LBB5078:
	.loc 16 241 0
	la 4,.LC80@l(4)
.LBE5078:
.LBE5081:
.LBE5084:
.LBE5090:
.LBB5091:
.LBB5072:
	.loc 3 425 0
	lwz 0,24(1)
	stw 0,1580(31)
	.loc 3 426 0
	lwz 0,28(1)
	stw 0,1584(31)
.LVL865:
.LBE5072:
.LBE5091:
.LBB5092:
.LBB5085:
.LBB5082:
.LBB5079:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL866:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L328
.LVL867:
.LBB5077:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL868:
.L324:
.LBE5077:
.LBE5079:
.LBE5082:
	.loc 16 249 0
	bl atof
.LBE5085:
.LBE5092:
.LBB5093:
.LBB5094:
	.loc 3 632 0
	lfs 0,1568(31)
	lfs 13,1564(31)
.LBE5094:
.LBE5093:
.LBB5112:
.LBB5086:
	.loc 16 249 0
	frsp 1,1
.LBE5086:
.LBE5112:
.LBB5113:
.LBB5109:
	.loc 3 632 0
	fmuls 12,0,0
	lfs 0,1572(31)
.LBB5095:
.LBB5096:
.LBB5097:
.LBB5098:
	.loc 8 276 0
	lis 9,_ZN6idMath5iSqrtE@ha
.LBE5098:
.LBE5097:
.LBE5096:
.LBE5095:
.LBE5109:
.LBE5113:
	.loc 2 1655 0
	li 4,0
.LBB5114:
.LBB5087:
	.loc 16 249 0
	stfs 1,1588(31)
.LVL869:
.LBE5087:
.LBE5114:
.LBB5115:
.LBB5110:
.LBB5107:
.LBB5105:
.LBB5102:
.LBB5099:
	.loc 8 276 0
	la 9,_ZN6idMath5iSqrtE@l(9)
.LBE5099:
.LBE5102:
.LBE5105:
.LBE5107:
	.loc 3 632 0
	fmadds 13,13,13,12
.LBE5110:
.LBE5115:
	.loc 2 1655 0
	mr 3,30
.LBB5116:
.LBB5111:
	.loc 3 632 0
	fmadds 13,0,0,13
	stfs 13,72(1)
.LVL870:
.LBB5108:
.LBB5106:
.LBB5103:
.LBB5100:
	.loc 8 270 0
	lwz 0,72(1)
.LVL871:
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 9,9,0
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	.loc 8 275 0
	lis 11,.LC6@ha
	.loc 8 276 0
	or 0,0,9
	.loc 8 275 0
	lfs 11,.LC6@l(11)
	.loc 8 277 0
	stw 0,76(1)
	.loc 8 278 0
	lis 9,.LC22@ha
	.loc 8 275 0
	fmuls 11,13,11
.LVL872:
	.loc 8 278 0
	lfs 12,.LC22@l(9)
	.loc 8 277 0
	lfs 0,76(1)
	fmr 13,0
.LVL873:
	.loc 2 1636 0
	fneg 11,11
.LVL874:
	.loc 8 278 0
	fmul 0,13,13
.LVL875:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL876:
	.loc 8 279 0
	fmul 31,0,0
.LVL877:
	fmadd 31,11,31,12
.LVL878:
	fmul 31,0,31
.LVL879:
.LBE5100:
.LBE5103:
	.loc 8 303 0
	lfs 0,72(1)
.LBB5104:
.LBB5101:
	.loc 8 280 0
	frsp 31,31
.LVL880:
.LBE5101:
.LBE5104:
	.loc 8 303 0
	fmuls 31,0,31
.LBE5106:
.LBE5108:
.LBE5111:
.LBE5116:
	.loc 2 1655 0
	bl _ZNK19idPhysics_RigidBody7GetAxisEi
.LVL881:
.LBB5117:
.LBB5118:
	.loc 3 448 0
	lfs 12,24(3)
.LBE5118:
.LBE5117:
	.loc 2 1655 0
	addi 4,1,8
.LBB5124:
.LBB5121:
	.loc 3 448 0
	lfs 13,28(3)
.LBE5121:
.LBE5124:
	.loc 2 1655 0
	li 5,0
.LBB5125:
.LBB5122:
	.loc 3 448 0
	lfs 0,32(3)
.LBE5122:
.LBE5125:
	.loc 2 1655 0
	mr 3,30
.LVL882:
.LBB5126:
.LBB5123:
	.loc 3 448 0
	fmuls 13,31,13
.LVL883:
	fmuls 0,31,0
.LVL884:
	fmuls 31,12,31
.LBB5119:
.LBB5120:
	.loc 3 397 0
	stfs 13,12(1)
	.loc 3 398 0
	stfs 0,16(1)
	.loc 3 396 0
	stfs 31,8(1)
.LBE5120:
.LBE5119:
.LBE5123:
.LBE5126:
	.loc 2 1655 0
	bl _ZN19idPhysics_RigidBody17SetLinearVelocityERK6idVec3i
.LVL885:
	.loc 2 1656 0
	addis 9,27,0x25
	.loc 2 1658 0
	mr 3,31
	.loc 2 1656 0
	lwz 0,2004(9)
	stw 0,1592(31)
	.loc 2 1657 0
	li 0,0
	stb 0,1596(31)
	.loc 2 1658 0
	bl _ZN8idEntity13UpdateVisualsEv
.LVL886:
.LBB5127:
.LBB5128:
	.loc 4 634 0
	lwz 0,636(31)
	rlwinm 9,0,0,20,31
.LVL887:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,27,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L330
.LVL888:
.L320:
.LBE5128:
.LBE5127:
.LBE5144:
	.loc 2 1665 0
	lwz 0,132(1)
	lwz 27,84(1)
	mtlr 0
	lwz 28,88(1)
.LVL889:
	lwz 29,92(1)
.LVL890:
	lwz 30,96(1)
	lwz 31,100(1)
.LVL891:
	lfd 29,104(1)
.LVL892:
	lfd 30,112(1)
.LVL893:
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI102:
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
.LVL894:
.L329:
.LCFI103:
	.cfi_restore_state
.LBB5145:
.LBB5130:
.LBB5030:
	.loc 4 636 0
	addi 9,9,132
.LVL895:
	slwi 9,9,2
.LVL896:
	add 9,27,9
	lwz 3,4(9)
.LBE5030:
.LBE5130:
	.loc 2 1646 0
	cmpwi 7,3,0
	beq- 7,.L322
.LVL897:
.LBB5131:
.LBB5044:
	.loc 6 340 0
	lwz 9,0(3)
.LVL898:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL899:
.LBE5044:
	.loc 2 2410 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB5045:
.LBB5042:
.LBB5040:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L322
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L322
.LVL900:
.LBE5040:
.LBE5042:
.LBE5045:
.LBE5131:
.LBB5132:
.LBB5133:
	.loc 3 416 0
	li 0,0
	stw 0,1608(31)
	stw 0,1604(31)
	stw 0,1600(31)
	b .L326
.LVL901:
.L330:
.LBE5133:
.LBE5132:
.LBB5134:
.LBB5129:
	.loc 4 636 0
	addi 9,9,132
.LVL902:
	slwi 9,9,2
.LVL903:
	add 27,27,9
	lwz 30,4(27)
.LBE5129:
.LBE5134:
	.loc 2 1661 0
	cmpwi 7,30,0
	beq- 7,.L320
.LVL904:
.LBB5135:
.LBB5136:
	.loc 6 340 0 discriminator 1
	lwz 9,0(30)
	mr 3,30
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL905:
.LBE5136:
	.loc 2 2410 0 discriminator 1
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB5139:
.LBB5137:
.LBB5138:
	.loc 6 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L320
	.loc 6 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L320
.LBE5138:
.LBE5137:
.LBE5139:
.LBE5135:
	.loc 2 1662 0 is_stmt 1 discriminator 4
	mr 3,30
.LVL906:
	mr 4,31
	bl _ZN8idPlayer21SetSoulCubeProjectileEP12idProjectile
.LBE5145:
	.loc 2 1665 0 discriminator 4
	lwz 0,132(1)
	lwz 27,84(1)
	mtlr 0
	lwz 28,88(1)
.LVL907:
	lwz 29,92(1)
.LVL908:
	lwz 30,96(1)
.LVL909:
	lwz 31,100(1)
.LVL910:
	lfd 29,104(1)
.LVL911:
	lfd 30,112(1)
.LVL912:
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI104:
	.cfi_def_cfa_offset 0
	blr
.LVL913:
.L328:
.LCFI105:
	.cfi_restore_state
.LBB5146:
.LBB5140:
.LBB5088:
.LBB5083:
.LBB5080:
	.loc 16 245 0
	lis 3,.LC71@ha
.LVL914:
	la 3,.LC71@l(3)
	b .L324
.LVL915:
.L327:
.LBE5080:
.LBE5083:
.LBE5088:
.LBE5140:
.LBB5141:
.LBB4982:
.LBB4974:
.LBB4970:
	lis 3,.LC30@ha
.LVL916:
	la 3,.LC30@l(3)
	b .L321
.LBE4970:
.LBE4974:
.LBE4982:
.LBE5141:
.LBE5146:
	.cfi_endproc
.LFE2885:
	.size	_ZN17idSoulCubeMissile6LaunchERK6idVec3S2_S2_fff, .-_ZN17idSoulCubeMissile6LaunchERK6idVec3S2_S2_fff
	.align 2
	.globl _ZN15idBFGProjectile6LaunchERK6idVec3S2_S2_fff
	.type	_ZN15idBFGProjectile6LaunchERK6idVec3S2_S2_fff, @function
_ZN15idBFGProjectile6LaunchERK6idVec3S2_S2_fff:
.LFB2903:
	.loc 2 1877 0
	.cfi_startproc
.LVL917:
	stwu 1,-16784(1)
.LCFI106:
	.cfi_def_cfa_offset 16784
	mflr 0
.LBB5289:
	.loc 2 1878 0
	lis 8,.LC20@ha
.LBE5289:
	.loc 2 1877 0
	mfcr 12
.LBB5663:
	.loc 2 1878 0
	lfs 1,.LC20@l(8)
.LVL918:
.LBE5663:
	.loc 2 1877 0
	stw 31,16772(1)
	mr 31,3
	.cfi_offset 31, -12
	.cfi_register 70, 12
	.cfi_register 65, 0
	stw 12,16700(1)
	stw 0,16788(1)
	stfd 31,16776(1)
	stw 14,16704(1)
	stw 15,16708(1)
	stw 16,16712(1)
	stw 17,16716(1)
	stw 18,16720(1)
	stw 19,16724(1)
	stw 20,16728(1)
	stw 21,16732(1)
	stw 22,16736(1)
	stw 23,16740(1)
	stw 24,16744(1)
	stw 25,16748(1)
	stw 26,16752(1)
	stw 27,16756(1)
	stw 28,16760(1)
	stw 29,16764(1)
	stw 30,16768(1)
.LBB5664:
	.loc 2 1878 0
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
	.cfi_offset 70, -84
	bl _ZN12idProjectile6LaunchERK6idVec3S2_S2_fff
.LVL919:
	.loc 2 1893 0
	addi 9,31,100
	lis 5,.LC82@ha
	lis 4,.LC81@ha
	la 5,.LC82@l(5)
	addi 6,1,8
	la 4,.LC81@l(4)
	mr 3,9
	stw 9,16688(1)
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 2 1894 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL920:
	lfs 0,8(1)
.LBB5290:
.LBB5291:
.LBB5292:
	.loc 3 424 0
	lfs 11,0(3)
.LBE5292:
.LBE5291:
.LBE5290:
.LBB5297:
.LBB5298:
.LBB5299:
.LBB5300:
	.loc 16 241 0
	lis 4,.LC83@ha
.LBE5300:
.LBE5299:
.LBE5298:
.LBE5297:
.LBB5316:
.LBB5295:
.LBB5293:
	.loc 3 425 0
	lfs 12,4(3)
.LBE5293:
.LBE5295:
.LBE5316:
.LBB5317:
.LBB5310:
.LBB5306:
.LBB5302:
	.loc 16 241 0
	la 4,.LC83@l(4)
.LBE5302:
.LBE5306:
.LBE5310:
.LBE5317:
.LBB5318:
.LBB5296:
.LBB5294:
	.loc 3 426 0
	lfs 13,8(3)
.LVL921:
.LBE5294:
.LBE5296:
.LBE5318:
.LBB5319:
.LBB5320:
	.loc 13 319 0
	fsubs 8,11,0
	fsubs 9,12,0
.LBE5320:
.LBE5319:
.LBB5324:
.LBB5311:
.LBB5307:
.LBB5303:
	.loc 16 241 0
	lwz 3,16688(1)
.LVL922:
.LBE5303:
.LBE5307:
.LBE5311:
.LBE5324:
.LBB5325:
.LBB5321:
	.loc 13 319 0
	fsubs 10,13,0
	fadds 11,0,11
.LVL923:
.LBE5321:
.LBE5325:
.LBB5326:
.LBB5327:
.LBB5328:
	.loc 3 424 0
	stfs 8,48(1)
.LBE5328:
.LBE5327:
.LBE5326:
.LBB5333:
.LBB5322:
	.loc 13 319 0
	fadds 12,0,12
.LVL924:
.LBE5322:
.LBE5333:
.LBB5334:
.LBB5331:
.LBB5329:
	.loc 3 425 0
	stfs 9,52(1)
.LBE5329:
.LBE5331:
.LBE5334:
.LBB5335:
.LBB5323:
	.loc 13 319 0
	fadds 0,0,13
.LBE5323:
.LBE5335:
.LBB5336:
.LBB5332:
.LBB5330:
	.loc 3 426 0
	stfs 10,56(1)
.LVL925:
	.loc 3 424 0
	stfs 11,60(1)
	.loc 3 425 0
	stfs 12,64(1)
	.loc 3 426 0
	stfs 0,68(1)
.LVL926:
.LBE5330:
.LBE5332:
.LBE5336:
.LBB5337:
.LBB5312:
.LBB5308:
.LBB5304:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL927:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L374
.LVL928:
.LBB5301:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL929:
.LBE5301:
.LBE5304:
.LBE5308:
	.loc 16 249 0
	bl atof
.LVL930:
.LBE5312:
.LBE5337:
.LBB5338:
.LBB5339:
	.loc 16 241 0
	lwz 3,16688(1)
	lis 4,.LC84@ha
.LBE5339:
.LBE5338:
.LBB5348:
.LBB5313:
	.loc 16 249 0
	frsp 31,1
.LVL931:
.LBE5313:
.LBE5348:
.LBB5349:
.LBB5342:
	.loc 16 241 0
	la 4,.LC84@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL932:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L375
.L400:
.LVL933:
.LBB5340:
	.loc 2 2410 0
	lwz 9,4(3)
.LBE5340:
.LBE5342:
.LBE5349:
	.loc 2 1899 0
	addi 30,31,1512
	li 4,0
	li 5,216
	mr 3,30
.LVL934:
.LBB5350:
.LBB5343:
.LBB5341:
	.loc 2 2410 0
	lwz 17,4(9)
.LBE5341:
.LBE5343:
.LBE5350:
	.loc 2 1899 0
	bl memset
.LVL935:
	.loc 2 1900 0
	li 0,-1
	stw 0,1728(31)
.LVL936:
.LBB5351:
.LBB5352:
	.loc 16 241 0
	lis 4,.LC29@ha
	lwz 3,16688(1)
	la 4,.LC29@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL937:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L376
.L401:
.LVL938:
.LBB5353:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
.LBE5353:
.LBE5352:
.LBE5351:
	.loc 2 1902 0
	cmpwi 7,4,0
	beq- 7,.L335
.LVL939:
.L334:
	.loc 2 1902 0 is_stmt 0 discriminator 1
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L393
.LVL940:
.L335:
	.loc 2 1920 0 is_stmt 1
	lis 3,gameLocal+2311032@ha
	addi 4,1,48
	la 3,gameLocal+2311032@l(3)
	li 5,256
	addi 6,1,296
	li 7,4096
	bl _ZNK6idClip22EntitiesTouchingBoundsERK8idBoundsiPP8idEntityi
.LVL941:
.LBB5355:
	.loc 2 1921 0
	mr. 25,3
	ble- 0,.L337
	lis 30,gameLocal@ha
	addi 26,1,292
	li 27,0
	la 30,gameLocal@l(30)
	b .L369
.LVL942:
.L339:
.LBB5356:
	.loc 2 1925 0
	cmpw 7,29,9
	beq- 7,.L341
	.loc 2 1925 0 is_stmt 0 discriminator 3
	mr 3,29
	bl _ZNK8idEntity8IsHiddenEv
	cmpwi 7,3,0
	beq- 7,.L394
.LVL943:
.L341:
.LBE5356:
	.loc 2 1921 0 is_stmt 1
	addi 27,27,1
.LVL944:
	cmpw 7,27,25
	beq- 7,.L370
.LVL945:
.L369:
.LBB5607:
	.loc 2 1922 0
	lwzu 29,4(26)
.LVL946:
	.loc 2 1925 0
	cmpw 7,31,29
	beq- 7,.L341
.LVL947:
.LBB5357:
.LBB5358:
	.loc 4 634 0 discriminator 2
	lwz 0,636(31)
	.loc 4 638 0 discriminator 2
	li 9,0
	.loc 4 634 0 discriminator 2
	rlwinm 11,0,0,20,31
.LVL948:
	.loc 4 635 0 discriminator 2
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,30,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L339
	.loc 4 636 0
	addi 11,11,132
.LVL949:
	slwi 11,11,2
.LVL950:
	add 11,30,11
	lwz 9,4(11)
	b .L339
.LVL951:
.L394:
.LBE5358:
.LBE5357:
	.loc 2 1925 0 discriminator 4
	mr 3,29
	bl _ZNK8idEntity8IsActiveEv
	cmpwi 7,3,0
	beq- 7,.L341
	.loc 2 1925 0 is_stmt 0 discriminator 5
	lwz 0,192(29)
	andis. 8,0,8192
	beq- 0,.L341
	.loc 2 1925 0 discriminator 6
	lwz 0,188(29)
	cmpwi 7,0,0
	ble- 7,.L341
.LVL952:
.LBB5359:
.LBB5360:
	.loc 6 340 0 is_stmt 1 discriminator 7
	lwz 9,0(29)
	mr 3,29
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL953:
.LBE5360:
	.loc 2 2410 0 discriminator 7
	lis 8,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(8)
	lwz 0,56(3)
.LBB5363:
.LBB5361:
.LBB5362:
	.loc 6 311 0 discriminator 7
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L341
	.loc 6 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L341
.LBE5362:
.LBE5361:
.LBE5363:
.LBE5359:
	.loc 2 1929 0 is_stmt 1
	lwz 9,0(29)
	mr 3,31
.LVL954:
	lwz 28,160(9)
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	addi 5,1,12
	mr 4,3
	mtctr 28
	mr 3,29
	bctrl
	cmpwi 7,3,0
	beq+ 7,.L341
.LVL955:
.LBB5364:
.LBB5365:
	.loc 6 340 0
	lwz 9,0(29)
	mr 3,29
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL956:
.LBE5365:
	.loc 2 2410 0
	lis 8,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(8)
	lwz 0,56(3)
.LBB5368:
.LBB5366:
.LBB5367:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L342
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L342
.LVL957:
.LBE5367:
.LBE5366:
.LBE5368:
.LBE5364:
.LBB5369:
.LBB5370:
.LBB5371:
	.loc 14 84 0
	li 0,1
	stb 0,4384(29)
.LVL958:
.L342:
.LBE5371:
.LBE5370:
.LBE5369:
	.loc 2 1939 0
	li 5,216
.LBB5372:
.LBB5373:
.LBB5374:
	.loc 4 590 0
	li 0,0
.LBE5374:
.LBE5373:
.LBE5372:
	.loc 2 1939 0
	li 4,0
	addi 3,1,76
.LVL959:
.LBB5377:
.LBB5376:
.LBB5375:
	.loc 4 590 0
	stw 0,72(1)
.LBE5375:
.LBE5376:
.LBE5377:
	.loc 2 1939 0
	bl memset
	.loc 2 1940 0
	mr 3,31
	.loc 2 1877 0
	addi 21,1,184
	.loc 2 1940 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB5378:
.LBB5379:
	.loc 3 424 0
	lwz 0,0(3)
.LBE5379:
.LBE5378:
	.loc 2 1940 0
	mr 9,3
.LVL960:
	.loc 2 1941 0
	mr 3,31
.LVL961:
.LBB5381:
.LBB5380:
	.loc 3 424 0
	stw 0,136(1)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,140(1)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,144(1)
.LBE5380:
.LBE5381:
	.loc 2 1941 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL962:
	lwz 9,0(3)
	li 4,0
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL963:
	addi 9,1,148
.L343:
.LBB5382:
.LBB5383:
.LBB5384:
.LBB5385:
	.loc 3 424 0
	lwz 0,0(3)
	stw 0,0(9)
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(3)
	addi 3,3,12
	stw 0,8(9)
	addi 9,9,12
.LBE5385:
.LBE5384:
	.loc 12 333 0
	cmpw 7,9,21
	bne+ 7,.L343
.LBE5383:
.LBE5382:
.LBB5386:
.LBB5387:
.LBB5388:
.LBB5389:
.LBB5390:
.LBB5391:
	.loc 7 71 0
	addis 11,30,0x1
	lis 10,0x1
	lwz 0,-32064(11)
	ori 10,10,3533
.LBE5391:
.LBE5390:
	.loc 7 83 0
	lis 8,.LC4@ha
.LBE5389:
.LBE5388:
	.loc 7 87 0
	lis 9,.LC5@ha
.LBB5410:
.LBB5400:
.LBB5396:
.LBB5392:
	.loc 7 71 0
	mullw 10,10,0
.LBE5392:
.LBE5396:
	.loc 7 83 0
	lis 0,0x4330
	stw 0,16680(1)
.LBE5400:
.LBE5410:
.LBE5387:
.LBE5386:
	.loc 2 1956 0
	addi 16,31,1496
.LBB5430:
.LBB5420:
.LBB5411:
.LBB5401:
	.loc 7 83 0
	lfs 0,.LC4@l(8)
.LBE5401:
.LBE5411:
	.loc 7 87 0
	lis 8,.LC6@ha
	lfs 11,.LC5@l(9)
.LBE5420:
.LBE5430:
	.loc 2 1947 0
	lis 9,.LC85@ha
.LBB5431:
.LBB5421:
.LBB5412:
.LBB5402:
.LBB5397:
.LBB5393:
	.loc 7 71 0
	addi 10,10,1
.LBE5393:
.LBE5397:
.LBE5402:
.LBE5412:
	.loc 7 87 0
	lfs 12,.LC6@l(8)
.LBB5413:
.LBB5403:
.LBB5398:
.LBB5394:
	.loc 7 72 0
	rlwinm 0,10,0,17,31
.LBE5394:
.LBE5398:
.LBE5403:
.LBE5413:
.LBE5421:
.LBE5431:
	.loc 2 1943 0
	lis 8,.LC2@ha
.LBB5432:
.LBB5422:
.LBB5414:
.LBB5404:
	.loc 7 83 0
	xoris 0,0,0x8000
.LBE5404:
.LBE5414:
.LBE5422:
.LBE5432:
	.loc 2 1942 0
	stfs 31,244(1)
.LBB5433:
.LBB5423:
.LBB5415:
.LBB5405:
	.loc 7 83 0
	stw 0,16684(1)
.LBE5405:
.LBE5415:
.LBE5423:
.LBE5433:
	.loc 2 1943 0
	lwz 0,.LC2@l(8)
	.loc 2 1948 0
	lis 8,renderModelManager@ha
.LBB5434:
.LBB5424:
.LBB5416:
.LBB5406:
	.loc 7 83 0
	lfd 13,16680(1)
.LBE5406:
.LBE5416:
.LBE5424:
.LBE5434:
	.loc 2 1943 0
	stw 0,200(1)
.LBB5435:
.LBB5425:
.LBB5417:
.LBB5407:
	.loc 7 83 0
	fsub 0,13,0
.LBE5407:
.LBE5417:
.LBE5425:
.LBE5435:
	.loc 2 1947 0
	lfs 13,.LC85@l(9)
.LBB5436:
.LBB5426:
.LBB5418:
.LBB5408:
.LBB5399:
.LBB5395:
	.loc 7 71 0
	stw 10,-32064(11)
.LBE5395:
.LBE5399:
.LBE5408:
.LBE5418:
.LBE5426:
.LBE5436:
	.loc 2 1948 0
	lis 11,.LC89@ha
	lwz 9,renderModelManager@l(8)
.LBB5437:
.LBB5427:
.LBB5419:
.LBB5409:
	.loc 7 83 0
	frsp 0,0
.LBE5409:
.LBE5419:
.LBE5427:
.LBE5437:
	.loc 2 1944 0
	stw 0,204(1)
	.loc 2 1945 0
	stw 0,208(1)
	.loc 2 1948 0
	mr 3,9
	.loc 2 1946 0
	stw 0,212(1)
.LVL964:
.LBB5438:
.LBB5428:
	.loc 7 87 0
	fmsubs 0,0,11,12
.LBE5428:
.LBE5438:
	.loc 2 1948 0
	lwz 4,.LC89@l(11)
.LBB5439:
.LBB5429:
	.loc 7 87 0
	fadds 0,0,0
.LBE5429:
.LBE5439:
	.loc 2 1947 0
	fmuls 0,0,13
	stfs 0,220(1)
	.loc 2 1948 0
	lwz 9,0(9)
	lwz 0,32(9)
	mtctr 0
	bctrl
.LBB5440:
.LBB5441:
	.loc 13 202 0
	lis 8,_ZN6idMath8INFINITYE@ha
	lfs 0,_ZN6idMath8INFINITYE@l(8)
.LBE5441:
.LBE5440:
	.loc 2 1949 0
	li 0,0
	.loc 2 1953 0
	lis 11,declManager@ha
	.loc 2 1948 0
	stw 3,76(1)
.LBB5444:
.LBB5442:
	.loc 13 203 0
	fneg 13,0
.LBE5442:
.LBE5444:
	.loc 2 1953 0
	lwz 9,declManager@l(11)
	.loc 2 1950 0
	stw 0,264(1)
	.loc 2 1953 0
	mr 4,17
	.loc 2 1951 0
	stw 0,268(1)
.LVL965:
	.loc 2 1953 0
	li 5,1
	.loc 2 1949 0
	stw 0,112(1)
	.loc 2 1953 0
	mr 3,9
.LBB5445:
.LBB5443:
	.loc 13 202 0
	stfs 0,96(1)
	stfs 0,92(1)
	stfs 0,88(1)
.LVL966:
	.loc 13 203 0
	stfs 13,108(1)
	stfs 13,104(1)
	stfs 13,100(1)
.LBE5443:
.LBE5445:
	.loc 2 1953 0
	lwz 11,0(9)
	lwz 0,108(11)
	mtctr 0
	bctrl
	.loc 2 1955 0
	lis 8,gameRenderWorld@ha
	.loc 2 1953 0
	stw 3,192(1)
.LVL967:
	.loc 2 1955 0
	addi 4,1,76
	lwz 9,gameRenderWorld@l(8)
.LBB5446:
.LBB5447:
	.loc 4 608 0
	lwz 11,4(29)
.LBE5447:
.LBE5446:
	.loc 2 1955 0
	mr 3,9
.LBB5449:
.LBB5448:
	.loc 4 608 0
	addi 10,11,4228
	slwi 10,10,2
	add 10,30,10
	lwz 0,4(10)
	slwi 0,0,12
	or 11,0,11
	stw 11,72(1)
.LBE5448:
.LBE5449:
	.loc 2 1955 0
	lwz 9,0(9)
	lwz 0,16(9)
	mtctr 0
	bctrl
.LVL968:
.LBB5450:
.LBB5451:
	.loc 5 655 0
	lwz 22,1508(31)
.LBE5451:
.LBE5450:
	.loc 2 1955 0
	stw 3,292(1)
.LBB5601:
.LBB5595:
	.loc 5 655 0
	cmpwi 7,22,0
	beq- 7,.L344
	lwz 29,1496(31)
.LVL969:
	lwz 0,1500(31)
.L345:
.LBB5452:
	.loc 5 659 0
	cmpw 7,0,29
	beq- 7,.L378
	mulli 29,29,224
	add 29,22,29
.L356:
.LVL970:
.LBE5452:
.LBB5509:
.LBB5510:
	.file 18 "d:/Data/Nintendo/DoomGX/src/game/Projectile.h"
	.loc 18 194 0
	lwz 0,72(1)
.LBB5511:
.LBB5512:
.LBB5513:
.LBB5514:
	.loc 3 426 0
	addi 9,1,148
.LBE5514:
.LBE5513:
.LBB5516:
.LBB5517:
	.loc 12 333 0
	addi 11,29,76
.LBE5517:
.LBE5516:
.LBE5512:
.LBE5511:
	.loc 18 194 0
	stw 0,0(29)
.LVL971:
.LBB5531:
.LBB5528:
	.file 19 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/RenderWorld.h"
	.loc 19 80 0
	lwz 0,76(1)
	stw 0,4(29)
	lwz 0,80(1)
	stw 0,8(29)
	lwz 0,84(1)
	stw 0,12(29)
.LVL972:
.LBB5523:
.LBB5524:
.LBB5525:
	.loc 3 424 0
	lwz 0,88(1)
	stw 0,16(29)
	.loc 3 425 0
	lwz 0,92(1)
	stw 0,20(29)
	.loc 3 426 0
	lwz 0,96(1)
	stw 0,24(29)
.LVL973:
	.loc 3 424 0
	lwz 0,100(1)
	stw 0,28(29)
	.loc 3 425 0
	lwz 0,104(1)
	stw 0,32(29)
	.loc 3 426 0
	lwz 0,108(1)
	stw 0,36(29)
.LBE5525:
.LBE5524:
.LBE5523:
	.loc 19 80 0
	lwz 0,112(1)
	stw 0,40(29)
	lwz 0,116(1)
	stw 0,44(29)
	lwz 0,120(1)
	stw 0,48(29)
	lwz 0,124(1)
	stw 0,52(29)
	lwz 0,128(1)
	stw 0,56(29)
	lwz 0,132(1)
	stw 0,60(29)
.LVL974:
.LBB5526:
.LBB5515:
	.loc 3 424 0
	lwz 0,136(1)
	stw 0,64(29)
	.loc 3 425 0
	lwz 0,140(1)
	stw 0,68(29)
	.loc 3 426 0
	lwz 0,144(1)
	stw 0,72(29)
.LVL975:
.L368:
.LBE5515:
.LBE5526:
.LBB5527:
.LBB5522:
.LBB5518:
.LBB5519:
	.loc 3 424 0
	lwz 0,0(9)
	stw 0,0(11)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,4(11)
	.loc 3 426 0
	lwz 0,8(9)
	addi 9,9,12
.LBE5519:
.LBE5518:
	.loc 12 333 0
	cmpw 7,9,21
.LBB5521:
.LBB5520:
	.loc 3 426 0
	stw 0,8(11)
	addi 11,11,12
.LBE5520:
.LBE5521:
	.loc 12 333 0
	bne+ 7,.L368
.LBE5522:
.LBE5527:
	.loc 19 80 0
	lwz 0,184(1)
	addi 3,29,128
	addi 4,1,200
	li 5,48
	stw 0,112(29)
.LBE5528:
.LBE5531:
.LBE5510:
.LBE5509:
.LBE5595:
.LBE5601:
.LBE5607:
	.loc 2 1921 0
	addi 27,27,1
.LBB5608:
.LBB5602:
.LBB5596:
.LBB5536:
.LBB5534:
.LBB5532:
.LBB5529:
	.loc 19 80 0
	lwz 0,188(1)
	stw 0,116(29)
	lwz 0,192(1)
	stw 0,120(29)
	lwz 0,196(1)
	stw 0,124(29)
	bl memcpy
.LVL976:
	lwz 0,256(1)
	lwz 9,248(1)
.LBE5529:
.LBE5532:
.LBE5534:
.LBE5536:
.LBE5596:
.LBE5602:
.LBE5608:
	.loc 2 1921 0
	cmpw 7,27,25
.LBB5609:
.LBB5603:
.LBB5597:
.LBB5537:
.LBB5535:
.LBB5533:
.LBB5530:
	.loc 19 80 0
	lwz 11,252(1)
	stw 9,176(29)
	stw 11,180(29)
	stw 0,184(29)
	lwz 0,260(1)
	stw 0,188(29)
	lwz 0,264(1)
	stw 0,192(29)
	lwz 0,268(1)
	stw 0,196(29)
	lwz 0,272(1)
	stw 0,200(29)
	lbz 0,276(1)
	stb 0,204(29)
	lbz 0,277(1)
	stb 0,205(29)
	lbz 0,278(1)
	stb 0,206(29)
	lbz 0,279(1)
	stb 0,207(29)
	lwz 0,280(1)
	stw 0,208(29)
	lwz 0,284(1)
	stw 0,212(29)
	lwz 0,288(1)
	stw 0,216(29)
.LBE5530:
.LBE5533:
	.loc 18 194 0
	lwz 0,292(1)
	stw 0,220(29)
.LBE5535:
.LBE5537:
	.loc 5 670 0
	lwz 9,1496(31)
	addi 0,9,1
	stw 0,1496(31)
.LBE5597:
.LBE5603:
.LBE5609:
	.loc 2 1921 0
	bne+ 7,.L369
.LVL977:
.L370:
.LBE5355:
	.loc 2 1959 0
	lis 4,.LC87@ha
	mr 3,31
	la 4,.LC87@l(4)
	li 5,4
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
.L371:
.LBB5613:
.LBB5614:
	.loc 16 241 0
	lwz 3,16688(1)
	lis 4,.LC88@ha
	la 4,.LC88@l(4)
	bl _ZNK6idDict7FindKeyEPKc
	.loc 16 242 0
	mr. 9,3
.LBE5614:
.LBE5613:
	.loc 2 1961 0
	addi 3,31,1736
.LVL978:
.LBB5618:
.LBB5616:
	.loc 16 242 0
	beq- 0,.L379
.LVL979:
.LBB5615:
	.loc 2 2410 0
	lwz 9,4(9)
.LVL980:
	lwz 4,4(9)
.LVL981:
.L372:
.LBE5615:
.LBE5616:
.LBE5618:
	.loc 2 1962 0
	addis 30,30,0x25
	.loc 2 1961 0
	bl _ZN5idStraSEPKc
	.loc 2 1962 0
	lwz 9,2004(30)
	.loc 2 1963 0
	mr 3,31
	.loc 2 1962 0
	addi 0,9,333
	stw 0,1732(31)
	.loc 2 1963 0
	bl _ZN8idEntity13UpdateVisualsEv
.LBE5664:
	.loc 2 1964 0
	lwz 0,16788(1)
	lwz 12,16700(1)
	mtlr 0
	lwz 14,16704(1)
	lwz 15,16708(1)
	mtcrf 8,12
	lwz 16,16712(1)
	lwz 17,16716(1)
	lwz 18,16720(1)
	lwz 19,16724(1)
	lwz 20,16728(1)
	lwz 21,16732(1)
	lwz 22,16736(1)
	lwz 23,16740(1)
	lwz 24,16744(1)
	lwz 25,16748(1)
.LVL982:
	lwz 26,16752(1)
	lwz 27,16756(1)
	lwz 28,16760(1)
	lwz 29,16764(1)
	lwz 30,16768(1)
	lwz 31,16772(1)
.LVL983:
	lfd 31,16776(1)
	addi 1,1,16784
	.cfi_remember_state
.LCFI107:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL984:
.L378:
.LCFI108:
	.cfi_restore_state
	lwz 28,1504(31)
.LBB5665:
.LBB5619:
.LBB5610:
.LBB5604:
.LBB5598:
.LBB5538:
	.loc 5 659 0
	mr 11,0
.L347:
.LBB5453:
	.loc 5 662 0
	cmpwi 7,28,0
	bne- 7,.L357
	.loc 5 663 0
	li 9,16
	li 28,16
	stw 9,1504(31)
.L357:
	.loc 5 665 0
	add 9,11,28
.LVL985:
	.loc 5 666 0
	divw 9,9,28
.LVL986:
.LBB5454:
.LBB5455:
	.loc 5 375 0
	mullw 28,9,28
.LVL987:
	cmpwi 4,28,0
	ble- 4,.L395
	.loc 5 380 0
	cmpw 7,11,28
	beq- 7,.L396
.LVL988:
	.loc 5 387 0
	cmpw 7,0,28
	.loc 5 386 0
	stw 28,1500(31)
	.loc 5 387 0
	ble- 7,.L361
	.loc 5 388 0
	stw 28,1496(31)
.L361:
	.loc 5 392 0
	mulli 3,28,224
	bl _Znaj
	beq- 4,.L362
.LBB5456:
.LBB5457:
.LBB5458:
	.loc 4 590 0
	mtctr 28
.LBE5458:
.LBE5457:
.LBE5456:
	.loc 5 392 0
	mr 9,3
.LBB5461:
.LBB5460:
.LBB5459:
	.loc 4 590 0
	li 0,0
.L363:
.LVL989:
	stw 0,0(9)
	addi 9,9,224
.LBE5459:
.LBE5460:
.LBE5461:
	.loc 5 392 0
	bdnz .L363
.LVL990:
.L362:
	.loc 5 393 0
	lwz 0,1496(31)
	.loc 5 392 0
	stw 3,1508(31)
.LVL991:
	.loc 5 393 0
	cmpwi 7,0,0
	ble- 7,.L364
	addi 15,22,64
	.loc 2 1877 0
	addi 18,22,4
	addi 0,22,16
	stw 30,16692(1)
	mr 19,18
	mr 30,31
	mr 24,22
	mr 31,15
	li 23,0
	.loc 5 393 0
	li 20,0
	addi 14,22,28
	mr 29,3
	mr 15,0
.LVL992:
.L366:
.LBB5462:
.LBB5463:
	.loc 18 194 0
	lwz 0,0(24)
	.loc 2 1877 0
	subf 9,22,19
	add 28,9,18
.LBB5464:
.LBB5465:
.LBB5466:
.LBB5467:
.LBB5468:
	.loc 3 424 0
	mr 6,15
.LBE5468:
.LBE5467:
.LBE5466:
.LBE5465:
.LBE5464:
	.loc 18 194 0
	stwx 0,29,23
.LBE5463:
.LBE5462:
	.loc 5 394 0
	add 29,29,23
.LVL993:
.LBB5498:
.LBB5495:
.LBB5493:
.LBB5491:
.LBB5473:
.LBB5471:
.LBB5469:
	.loc 3 424 0
	mr 11,14
.LBE5469:
.LBE5471:
.LBE5473:
.LBB5474:
.LBB5475:
	.loc 12 333 0
	addi 7,29,76
.LBE5475:
.LBE5474:
	.loc 19 80 0
	lwz 0,-4(28)
.LBB5484:
.LBB5482:
	.loc 12 333 0
	addi 8,24,76
	li 10,0
.LBE5482:
.LBE5484:
	.loc 19 80 0
	stw 0,4(29)
	lwzx 0,9,18
.LBB5485:
.LBB5486:
	.loc 3 424 0
	mr 9,31
.LBE5486:
.LBE5485:
	.loc 19 80 0
	stw 0,8(29)
	lwz 0,4(28)
	stw 0,12(29)
.LVL994:
.LBB5488:
.LBB5472:
.LBB5470:
	.loc 3 424 0
	lwzux 0,6,23
	stw 0,16(29)
	.loc 3 425 0
	lwz 0,4(6)
	stw 0,20(29)
	.loc 3 426 0
	lwz 0,8(6)
	stw 0,24(29)
.LVL995:
	.loc 3 424 0
	lwzux 0,11,23
	stw 0,28(29)
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,32(29)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,36(29)
.LBE5470:
.LBE5472:
.LBE5488:
	.loc 19 80 0
	lwz 0,32(28)
	stw 0,40(29)
	lwz 0,36(28)
	stw 0,44(29)
	lwz 0,40(28)
	stw 0,48(29)
	lwz 0,44(28)
	stw 0,52(29)
	lwz 0,48(28)
	stw 0,56(29)
	lwz 0,52(28)
	stw 0,60(29)
.LVL996:
.LBB5489:
.LBB5487:
	.loc 3 424 0
	lwzux 0,9,23
	stw 0,64(29)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,68(29)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,72(29)
.LVL997:
.L365:
.LBE5487:
.LBE5489:
.LBB5490:
.LBB5483:
.LBB5476:
.LBB5477:
	.loc 3 424 0
	mr 11,8
	mr 9,7
	lwzux 0,11,10
.LBE5477:
.LBE5476:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB5480:
.LBB5478:
	.loc 3 424 0
	stwux 0,9,10
.LBE5478:
.LBE5480:
	.loc 12 333 0
	addi 10,10,12
.LBB5481:
.LBB5479:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE5479:
.LBE5481:
	.loc 12 333 0
	bne+ 7,.L365
.LBE5483:
.LBE5490:
	.loc 19 80 0
	lwz 0,104(28)
	addi 3,29,128
	addi 4,28,120
	li 5,48
	stw 0,112(29)
.LBE5491:
.LBE5493:
.LBE5495:
.LBE5498:
	.loc 5 393 0
	addi 20,20,1
	addi 23,23,224
	addi 19,19,224
.LBB5499:
.LBB5496:
.LBB5494:
.LBB5492:
	.loc 19 80 0
	lwz 0,108(28)
	stw 0,116(29)
	lwz 0,112(28)
	stw 0,120(29)
	lwz 0,116(28)
	stw 0,124(29)
	bl memcpy
.LVL998:
	lwz 0,176(28)
	lwz 11,168(28)
	lwz 9,172(28)
	stw 11,176(29)
	stw 9,180(29)
	stw 0,184(29)
	lwz 0,180(28)
	stw 0,188(29)
	lwz 0,184(28)
	stw 0,192(29)
	lwz 0,188(28)
	stw 0,196(29)
	lwz 0,192(28)
	stw 0,200(29)
	lbz 0,196(28)
	stb 0,204(29)
	lbz 0,197(28)
	stb 0,205(29)
	lbz 0,198(28)
	stb 0,206(29)
	lbz 0,199(28)
	stb 0,207(29)
	lwz 0,200(28)
	stw 0,208(29)
	lwz 0,204(28)
	stw 0,212(29)
	lwz 0,208(28)
	stw 0,216(29)
.LBE5492:
.LBE5494:
	.loc 18 194 0
	lwz 0,220(24)
.LBE5496:
.LBE5499:
	.loc 5 393 0
	addi 24,24,224
.LVL999:
.LBB5500:
.LBB5497:
	.loc 18 194 0
	stw 0,220(29)
.LBE5497:
.LBE5500:
	.loc 5 393 0
	lwz 0,0(16)
	cmpw 7,20,0
	bge- 7,.L391
	lwz 29,1508(30)
.LVL1000:
	b .L366
.LVL1001:
.L391:
	mr 31,30
	lwz 30,16692(1)
.LVL1002:
.L364:
	.loc 5 398 0
	cmpwi 7,22,0
	beq- 7,.L392
	.loc 5 399 0
	mr 3,22
	bl _ZdaPv
.L392:
	lwz 0,1496(31)
	lwz 29,1508(31)
	mulli 0,0,224
	add 29,29,0
	b .L356
.LVL1003:
.L344:
.LBE5455:
.LBE5454:
.LBE5453:
.LBE5538:
	.loc 5 656 0
	lwz 0,1504(31)
.LBB5539:
.LBB5540:
	.loc 5 375 0
	cmpwi 4,0,0
.LBE5540:
.LBE5539:
	.loc 5 656 0
	mr 28,0
.LVL1004:
.LBB5589:
.LBB5585:
	.loc 5 375 0
	ble- 4,.L397
	.loc 5 380 0
	lwz 9,1500(31)
	cmpw 7,0,9
	beq- 7,.L398
.LVL1005:
	.loc 5 387 0
	lwz 0,1496(31)
	.loc 5 386 0
	stw 28,1500(31)
	.loc 5 387 0
	cmpw 7,28,0
	bge- 7,.L349
	.loc 5 388 0
	stw 28,1496(31)
.L349:
	.loc 5 392 0
	mulli 3,28,224
	bl _Znaj
.LVL1006:
	mr 22,3
	beq- 4,.L350
.LBB5541:
.LBB5542:
.LBB5543:
	.loc 4 590 0
	mtctr 28
.LBE5543:
.LBE5542:
.LBE5541:
	.loc 5 392 0
	mr 9,3
.LBB5546:
.LBB5545:
.LBB5544:
	.loc 4 590 0
	li 0,0
.L351:
.LVL1007:
	stw 0,0(9)
	addi 9,9,224
.LBE5544:
.LBE5545:
.LBE5546:
	.loc 5 392 0
	bdnz .L351
.LVL1008:
.L350:
	.loc 5 393 0
	lwz 29,1496(31)
.LVL1009:
	.loc 5 392 0
	stw 22,1508(31)
.LVL1010:
	.loc 5 393 0
	cmpwi 7,29,0
	ble- 7,.L399
	.loc 2 1877 0
	li 23,4
	li 24,0
	.loc 5 393 0
	li 20,0
	mr 29,22
.LVL1011:
.L355:
.LBB5547:
.LBB5548:
	.loc 18 194 0
	lwz 0,0(24)
	.loc 2 1877 0
	addi 28,23,4
.LBB5549:
.LBB5550:
.LBB5551:
.LBB5552:
.LBB5553:
	.loc 3 424 0
	mr 8,24
	mr 11,24
.LBE5553:
.LBE5552:
.LBE5551:
.LBE5550:
.LBE5549:
	.loc 18 194 0
	stwx 0,29,24
.LBE5548:
.LBE5547:
	.loc 5 394 0
	add 29,29,24
.LVL1012:
.LBB5580:
.LBB5577:
.LBB5575:
.LBB5573:
.LBB5556:
.LBB5557:
	.loc 3 424 0
	mr 9,24
.LBE5557:
.LBE5556:
.LBB5559:
.LBB5560:
	.loc 12 333 0
	addi 6,29,76
.LBE5560:
.LBE5559:
	.loc 19 80 0
	lwz 0,-4(28)
.LBB5569:
.LBB5567:
	.loc 12 333 0
	addi 7,24,76
	li 10,0
.LBE5567:
.LBE5569:
	.loc 19 80 0
	stw 0,4(29)
	lwz 0,4(23)
	stw 0,8(29)
	lwz 0,4(28)
	stw 0,12(29)
.LVL1013:
.LBB5570:
.LBB5555:
.LBB5554:
	.loc 3 424 0
	lwzu 0,16(8)
	stw 0,16(29)
	.loc 3 425 0
	lwz 0,4(8)
	stw 0,20(29)
	.loc 3 426 0
	lwz 0,8(8)
	stw 0,24(29)
.LVL1014:
	.loc 3 424 0
	lwzu 0,28(11)
	stw 0,28(29)
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,32(29)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,36(29)
.LBE5554:
.LBE5555:
.LBE5570:
	.loc 19 80 0
	lwz 0,32(28)
	stw 0,40(29)
	lwz 0,36(28)
	stw 0,44(29)
	lwz 0,40(28)
	stw 0,48(29)
	lwz 0,44(28)
	stw 0,52(29)
	lwz 0,48(28)
	stw 0,56(29)
	lwz 0,52(28)
	stw 0,60(29)
.LVL1015:
.LBB5571:
.LBB5558:
	.loc 3 424 0
	lwzu 0,64(9)
	stw 0,64(29)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,68(29)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,72(29)
.LVL1016:
.L353:
.LBE5558:
.LBE5571:
.LBB5572:
.LBB5568:
.LBB5561:
.LBB5562:
	.loc 3 424 0
	mr 11,7
	mr 9,6
	lwzux 0,11,10
.LBE5562:
.LBE5561:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB5565:
.LBB5563:
	.loc 3 424 0
	stwux 0,9,10
.LBE5563:
.LBE5565:
	.loc 12 333 0
	addi 10,10,12
.LBB5566:
.LBB5564:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE5564:
.LBE5566:
	.loc 12 333 0
	bne+ 7,.L353
.LBE5568:
.LBE5572:
	.loc 19 80 0
	lwz 0,104(28)
	addi 3,29,128
	addi 4,28,120
	li 5,48
	stw 0,112(29)
.LBE5573:
.LBE5575:
.LBE5577:
.LBE5580:
	.loc 5 393 0
	addi 20,20,1
	addi 23,23,224
.LBB5581:
.LBB5578:
.LBB5576:
.LBB5574:
	.loc 19 80 0
	lwz 0,108(28)
	stw 0,116(29)
	lwz 0,112(28)
	stw 0,120(29)
	lwz 0,116(28)
	stw 0,124(29)
	bl memcpy
.LVL1017:
	lwz 0,176(28)
	lwz 11,168(28)
	lwz 9,172(28)
	stw 11,176(29)
	stw 9,180(29)
	stw 0,184(29)
	lwz 0,180(28)
	stw 0,188(29)
	lwz 0,184(28)
	stw 0,192(29)
	lwz 0,188(28)
	stw 0,196(29)
	lwz 0,192(28)
	stw 0,200(29)
	lbz 0,196(28)
	stb 0,204(29)
	lbz 0,197(28)
	stb 0,205(29)
	lbz 0,198(28)
	stb 0,206(29)
	lbz 0,199(28)
	stb 0,207(29)
	lwz 0,200(28)
	stw 0,208(29)
	lwz 0,204(28)
	stw 0,212(29)
	lwz 0,208(28)
	stw 0,216(29)
.LBE5574:
.LBE5576:
	.loc 18 194 0
	lwz 0,220(24)
.LBE5578:
.LBE5581:
	.loc 5 393 0
	addi 24,24,224
.LVL1018:
.LBB5582:
.LBB5579:
	.loc 18 194 0
	stw 0,220(29)
.LBE5579:
.LBE5582:
	.loc 5 393 0
	lwz 29,0(16)
.LVL1019:
	cmpw 7,20,29
	bge- 7,.L354
.LVL1020:
	lwz 29,1508(31)
	b .L355
.LVL1021:
.L396:
.LBE5585:
.LBE5589:
.LBB5590:
.LBB5507:
.LBB5505:
.LBB5503:
	.loc 5 380 0
	mulli 0,0,224
	add 29,22,0
	b .L356
.LVL1022:
.L354:
.LBE5503:
.LBE5505:
.LBE5507:
.LBE5590:
.LBB5591:
.LBB5586:
	.loc 5 393 0
	lwz 0,1500(31)
	lwz 22,1508(31)
	b .L345
.LVL1023:
.L393:
.LBE5586:
.LBE5591:
.LBE5598:
.LBE5604:
.LBE5610:
.LBE5619:
	.loc 2 1903 0
	lis 9,renderModelManager@ha
	lwz 3,renderModelManager@l(9)
.LVL1024:
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 1904 0
	mr 5,30
	.loc 2 1903 0
	stw 3,1512(31)
	mr 4,3
	.loc 2 1904 0
	lwz 9,0(3)
	addi 3,1,24
	lwz 0,128(9)
	mtctr 0
	bctrl
.LVL1025:
.LBB5620:
.LBB5621:
.LBB5622:
	.loc 3 424 0
	lwz 11,24(1)
.LBE5622:
.LBE5621:
.LBE5620:
	.loc 2 1908 0
	lis 9,.LC2@ha
	.loc 2 1911 0
	mr 3,31
.LBB5635:
.LBB5629:
.LBB5623:
	.loc 3 424 0
	stw 11,1524(31)
	.loc 3 425 0
	lwz 11,28(1)
.LBE5623:
.LBE5629:
.LBE5635:
	.loc 2 1908 0
	lwz 0,.LC2@l(9)
	.loc 2 1909 0
	li 9,1
.LBB5636:
.LBB5630:
.LBB5624:
	.loc 3 425 0
	stw 11,1528(31)
	.loc 3 426 0
	lwz 11,32(1)
.LBE5624:
.LBE5630:
.LBE5636:
	.loc 2 1908 0
	stw 0,1648(31)
.LBB5637:
.LBB5631:
.LBB5625:
	.loc 3 426 0
	stw 11,1532(31)
.LVL1026:
	.loc 3 424 0
	lwz 11,36(1)
.LBE5625:
.LBE5631:
.LBE5637:
	.loc 2 1908 0
	stw 0,1644(31)
.LBB5638:
.LBB5632:
.LBB5626:
	.loc 3 424 0
	stw 11,1536(31)
	.loc 3 425 0
	lwz 11,40(1)
.LBE5626:
.LBE5632:
.LBE5638:
	.loc 2 1908 0
	stw 0,1640(31)
.LBB5639:
.LBB5633:
.LBB5627:
	.loc 3 425 0
	stw 11,1540(31)
	.loc 3 426 0
	lwz 11,44(1)
.LBE5627:
.LBE5633:
.LBE5639:
	.loc 2 1908 0
	stw 0,1636(31)
.LBB5640:
.LBB5634:
.LBB5628:
	.loc 3 426 0
	stw 11,1544(31)
.LBE5628:
.LBE5634:
.LBE5640:
	.loc 2 1909 0
	stb 9,1712(31)
	.loc 2 1910 0
	stb 9,1713(31)
	.loc 2 1911 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB5641:
.LBB5642:
	.loc 3 424 0
	lwz 0,0(3)
.LBE5642:
.LBE5641:
	.loc 2 1911 0
	mr 9,3
.LVL1027:
	.loc 2 1912 0
	mr 3,31
.LVL1028:
.LBB5644:
.LBB5643:
	.loc 3 424 0
	stw 0,1572(31)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,1576(31)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,1580(31)
.LBE5643:
.LBE5644:
	.loc 2 1912 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1029:
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL1030:
.LBB5645:
.LBB5646:
	.loc 12 333 0
	addi 8,31,1584
	li 10,0
.L336:
.LBB5647:
.LBB5648:
	.loc 3 424 0
	mr 11,3
	mr 9,8
	lwzux 0,11,10
.LBE5648:
.LBE5647:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB5651:
.LBB5649:
	.loc 3 424 0
	stwux 0,9,10
.LBE5649:
.LBE5651:
	.loc 12 333 0
	addi 10,10,12
.LBB5652:
.LBB5650:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE5650:
.LBE5652:
	.loc 12 333 0
	bne+ 7,.L336
.LBE5646:
.LBE5645:
	.loc 2 1913 0
	lis 9,gameRenderWorld@ha
	mr 4,30
	lwz 3,gameRenderWorld@l(9)
.LVL1031:
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
	stw 3,1728(31)
	b .L335
.LVL1032:
.L395:
.LBB5653:
.LBB5611:
.LBB5605:
.LBB5599:
.LBB5592:
.LBB5508:
.LBB5506:
.LBB5504:
.LBB5501:
.LBB5502:
	.loc 5 193 0
	cmpwi 7,22,0
	beq- 7,.L359
	.loc 5 194 0
	mr 3,22
	bl _ZdaPv
.L359:
	.loc 5 197 0
	li 0,0
	.loc 5 199 0
	li 29,0
	.loc 5 197 0
	stw 0,1508(31)
	.loc 5 198 0
	stw 0,1496(31)
	.loc 5 199 0
	stw 0,1500(31)
	b .L356
.LVL1033:
.L398:
.LBE5502:
.LBE5501:
.LBE5504:
.LBE5506:
.LBE5508:
.LBE5592:
.LBB5593:
.LBB5587:
	.loc 5 380 0
	lwz 29,1496(31)
.LVL1034:
	b .L345
.LVL1035:
.L379:
.LBE5587:
.LBE5593:
.LBE5599:
.LBE5605:
.LBE5611:
.LBE5653:
.LBB5654:
.LBB5617:
	.loc 16 245 0
	lis 4,.LC27@ha
	la 4,.LC27@l(4)
	b .L372
.LVL1036:
.L374:
.LBE5617:
.LBE5654:
.LBB5655:
.LBB5314:
.LBB5309:
.LBB5305:
	lis 3,.LC30@ha
.LVL1037:
	la 3,.LC30@l(3)
.LBE5305:
.LBE5309:
	.loc 16 249 0
	bl atof
.LBE5314:
.LBE5655:
.LBB5656:
.LBB5344:
	.loc 16 241 0
	lwz 3,16688(1)
	lis 4,.LC84@ha
.LBE5344:
.LBE5656:
.LBB5657:
.LBB5315:
	.loc 16 249 0
	frsp 31,1
.LVL1038:
.LBE5315:
.LBE5657:
.LBB5658:
.LBB5345:
	.loc 16 241 0
	la 4,.LC84@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1039:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L400
.L375:
.LBE5345:
.LBE5658:
	.loc 2 1899 0
	addi 30,31,1512
.LBB5659:
.LBB5346:
	.loc 16 245 0
	lis 9,.LC27@ha
.LBE5346:
.LBE5659:
	.loc 2 1899 0
	li 4,0
	li 5,216
	mr 3,30
.LVL1040:
.LBB5660:
.LBB5347:
	.loc 16 245 0
	la 17,.LC27@l(9)
.LBE5347:
.LBE5660:
	.loc 2 1899 0
	bl memset
	.loc 2 1900 0
	li 0,-1
	stw 0,1728(31)
.LVL1041:
.LBB5661:
.LBB5354:
	.loc 16 241 0
	lis 4,.LC29@ha
	lwz 3,16688(1)
	la 4,.LC29@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1042:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L401
.L376:
	.loc 16 245 0
	lis 4,.LC27@ha
	la 4,.LC27@l(4)
	b .L334
.LVL1043:
.L397:
.LBE5354:
.LBE5661:
.LBB5662:
.LBB5612:
.LBB5606:
.LBB5600:
.LBB5594:
.LBB5588:
.LBB5583:
.LBB5584:
	.loc 5 198 0
	stw 22,1496(31)
	.loc 5 199 0
	li 0,0
.LVL1044:
	stw 22,1500(31)
	li 11,0
	b .L347
.LVL1045:
.L399:
.LBE5584:
.LBE5583:
	.loc 5 393 0
	lwz 0,1500(31)
	b .L345
.LVL1046:
.L337:
	lis 30,gameLocal@ha
	la 30,gameLocal@l(30)
.LBE5588:
.LBE5594:
.LBE5600:
.LBE5606:
.LBE5612:
.LBE5662:
	.loc 2 1958 0
	beq+ 0,.L371
	b .L370
.LBE5665:
	.cfi_endproc
.LFE2903:
	.size	_ZN15idBFGProjectile6LaunchERK6idVec3S2_S2_fff, .-_ZN15idBFGProjectile6LaunchERK6idVec3S2_S2_fff
	.align 2
	.globl _ZN15idBFGProjectile7RestoreEP13idRestoreGame
	.type	_ZN15idBFGProjectile7RestoreEP13idRestoreGame, @function
_ZN15idBFGProjectile7RestoreEP13idRestoreGame:
.LFB2900:
	.loc 2 1761 0
	.cfi_startproc
.LVL1047:
	stwu 1,-88(1)
.LCFI109:
	.cfi_def_cfa_offset 88
	mflr 0
	mfcr 12
	stw 27,68(1)
	mr 27,4
	.cfi_offset 27, -20
	.cfi_register 70, 12
	.cfi_register 65, 0
	stw 29,76(1)
.LBB5705:
	.loc 2 1764 0
	addi 4,1,8
.LVL1048:
.LBE5705:
	.loc 2 1761 0
	mr 29,3
	.cfi_offset 29, -12
.LBB5786:
	.loc 2 1764 0
	mr 3,27
.LVL1049:
.LBE5786:
	.loc 2 1761 0
	stw 17,28(1)
	stw 21,44(1)
.LBB5787:
	.loc 2 1765 0
	addi 21,29,1496
	.cfi_offset 21, -44
	.cfi_offset 17, -60
.LBE5787:
	.loc 2 1761 0
	stw 0,92(1)
	stw 18,32(1)
	stw 19,36(1)
	stw 20,40(1)
	stw 22,48(1)
	stw 23,52(1)
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 28,72(1)
	stw 30,80(1)
	stw 31,84(1)
	stw 12,24(1)
.LBB5788:
	.loc 2 1764 0
	.cfi_offset 70, -64
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame7ReadIntERi
.LVL1050:
	.loc 2 1765 0
	lwz 17,8(1)
.LVL1051:
.LBB5706:
.LBB5707:
.LBB5708:
.LBB5709:
	.loc 5 375 0
	cmpwi 4,17,0
	ble- 4,.L424
	.loc 5 380 0
	lwz 0,1500(29)
	cmpw 7,17,0
	beq- 7,.L406
	.loc 5 387 0
	lwz 0,1496(29)
	.loc 5 385 0
	lwz 22,1508(29)
.LVL1052:
	.loc 5 387 0
	cmpw 7,17,0
	.loc 5 386 0
	stw 17,1500(29)
	.loc 5 387 0
	blt- 7,.L425
.L407:
	.loc 5 392 0
	mulli 3,17,224
	bl _Znaj
.LVL1053:
	beq- 4,.L408
.LBB5710:
.LBB5711:
.LBB5712:
	.loc 4 590 0
	mtctr 17
.LBE5712:
.LBE5711:
.LBE5710:
	.loc 5 392 0
	mr 9,3
.LBB5715:
.LBB5714:
.LBB5713:
	.loc 4 590 0
	li 0,0
.L409:
	stw 0,0(9)
	addi 9,9,224
.LBE5713:
.LBE5714:
.LBE5715:
	.loc 5 392 0
	bdnz .L409
.LVL1054:
.L408:
	.loc 5 393 0
	lwz 0,1496(29)
	.loc 5 392 0
	stw 3,1508(29)
.LVL1055:
	.loc 5 393 0
	cmpwi 7,0,0
	ble- 7,.L410
	.loc 2 1761 0
	addi 23,22,4
	mr 28,22
	mr 24,23
	li 26,0
	.loc 5 393 0
	li 25,0
	addi 18,22,16
	addi 19,22,28
	addi 20,22,64
.LVL1056:
.L412:
.LBB5716:
.LBB5717:
	.loc 18 194 0
	lwz 0,0(28)
	.loc 2 1761 0
	subf 9,22,24
	add 30,9,23
.LBE5717:
.LBE5716:
	.loc 5 394 0
	add 31,3,26
.LVL1057:
.LBB5752:
.LBB5748:
	.loc 18 194 0
	stwx 0,3,26
.LBB5718:
.LBB5719:
.LBB5720:
.LBB5721:
.LBB5722:
	.loc 3 424 0
	mr 8,18
	mr 11,19
.LBE5722:
.LBE5721:
.LBE5720:
.LBB5725:
.LBB5726:
	.loc 12 333 0
	addi 6,31,76
.LBE5726:
.LBE5725:
	.loc 19 80 0
	lwz 0,-4(30)
.LBB5736:
.LBB5733:
	.loc 12 333 0
	addi 7,28,76
	li 10,0
.LBE5733:
.LBE5736:
	.loc 19 80 0
	stw 0,4(31)
	lwzx 0,9,23
.LBB5737:
.LBB5738:
	.loc 3 424 0
	mr 9,20
.LBE5738:
.LBE5737:
	.loc 19 80 0
	stw 0,8(31)
	lwz 0,4(30)
	stw 0,12(31)
.LVL1058:
.LBB5740:
.LBB5724:
.LBB5723:
	.loc 3 424 0
	lwzux 0,8,26
	stw 0,16(31)
	.loc 3 425 0
	lwz 0,4(8)
	stw 0,20(31)
	.loc 3 426 0
	lwz 0,8(8)
	stw 0,24(31)
.LVL1059:
	.loc 3 424 0
	lwzux 0,11,26
	stw 0,28(31)
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,32(31)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,36(31)
.LBE5723:
.LBE5724:
.LBE5740:
	.loc 19 80 0
	lwz 0,32(30)
	stw 0,40(31)
	lwz 0,36(30)
	stw 0,44(31)
	lwz 0,40(30)
	stw 0,48(31)
	lwz 0,44(30)
	stw 0,52(31)
	lwz 0,48(30)
	stw 0,56(31)
	lwz 0,52(30)
	stw 0,60(31)
.LVL1060:
.LBB5741:
.LBB5739:
	.loc 3 424 0
	lwzux 0,9,26
	stw 0,64(31)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,68(31)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,72(31)
.LVL1061:
.L411:
.LBE5739:
.LBE5741:
.LBB5742:
.LBB5734:
.LBB5727:
.LBB5728:
	.loc 3 424 0
	mr 11,7
	mr 9,6
	lwzux 0,11,10
.LBE5728:
.LBE5727:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB5731:
.LBB5729:
	.loc 3 424 0
	stwux 0,9,10
.LBE5729:
.LBE5731:
	.loc 12 333 0
	addi 10,10,12
.LBB5732:
.LBB5730:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE5730:
.LBE5732:
	.loc 12 333 0
	bne+ 7,.L411
.LBE5734:
.LBE5742:
	.loc 19 80 0
	lwz 0,104(30)
	addi 3,31,128
	addi 4,30,120
	li 5,48
	stw 0,112(31)
.LBE5719:
.LBE5718:
.LBE5748:
.LBE5752:
	.loc 5 393 0
	addi 25,25,1
	addi 26,26,224
	addi 24,24,224
.LBB5753:
.LBB5749:
.LBB5746:
.LBB5744:
	.loc 19 80 0
	lwz 0,108(30)
	stw 0,116(31)
	lwz 0,112(30)
	stw 0,120(31)
	lwz 0,116(30)
	stw 0,124(31)
	bl memcpy
.LVL1062:
	lwz 0,176(30)
	lwz 11,168(30)
	lwz 9,172(30)
	stw 11,176(31)
	stw 9,180(31)
	stw 0,184(31)
	lwz 0,180(30)
	stw 0,188(31)
	lwz 0,184(30)
	stw 0,192(31)
	lwz 0,188(30)
	stw 0,196(31)
	lwz 0,192(30)
	stw 0,200(31)
	lbz 0,196(30)
	stb 0,204(31)
	lbz 0,197(30)
	stb 0,205(31)
	lbz 0,198(30)
	stb 0,206(31)
	lbz 0,199(30)
	stb 0,207(31)
	lwz 0,200(30)
	stw 0,208(31)
	lwz 0,204(30)
	stw 0,212(31)
	lwz 0,208(30)
	stw 0,216(31)
.LBE5744:
.LBE5746:
	.loc 18 194 0
	lwz 0,220(28)
.LBE5749:
.LBE5753:
	.loc 5 393 0
	addi 28,28,224
.LVL1063:
.LBB5754:
.LBB5750:
	.loc 18 194 0
	stw 0,220(31)
.LBE5750:
.LBE5754:
	.loc 5 393 0
	lwz 0,0(21)
	cmpw 7,25,0
	bge- 7,.L410
	lwz 3,1508(29)
	b .L412
.LVL1064:
.L410:
	.loc 5 398 0
	cmpwi 7,22,0
	beq- 7,.L423
	.loc 5 399 0
	mr 3,22
	bl _ZdaPv
.L423:
	lwz 0,8(1)
.LVL1065:
.L405:
.LBE5709:
.LBE5708:
.LBE5707:
.LBE5706:
	.loc 2 1766 0
	cmpwi 7,0,0
.LBB5767:
.LBB5764:
	.loc 5 302 0
	stw 17,1496(29)
.LVL1066:
.LBE5764:
.LBE5767:
	.loc 2 1766 0
	ble- 7,.L414
.L418:
.LBB5768:
.LBB5765:
.LBB5761:
.LBB5758:
.LBB5755:
.LBB5751:
.LBB5747:
.LBB5745:
.LBB5743:
.LBB5735:
	.loc 12 333 0
	li 31,0
	li 28,0
.LBE5735:
.LBE5743:
.LBE5745:
.LBE5747:
.LBE5751:
.LBE5755:
.LBE5758:
.LBE5761:
.LBE5765:
.LBE5768:
	.loc 2 1772 0
	lis 26,gameRenderWorld@ha
.LVL1067:
.L416:
.LBB5769:
.LBB5770:
	.loc 5 589 0
	lwz 4,1508(29)
.LBE5770:
.LBE5769:
.LBB5771:
.LBB5772:
	.loc 4 600 0
	mr 3,27
.LBE5772:
.LBE5771:
	.loc 2 1766 0
	addi 28,28,1
.LVL1068:
.LBB5774:
.LBB5773:
	.loc 4 600 0
	add 4,4,31
	bl _ZN13idRestoreGame7ReadIntERi
.LVL1069:
.LBE5773:
.LBE5774:
.LBB5775:
.LBB5776:
	.loc 5 589 0
	lwz 4,1508(29)
.LBE5776:
.LBE5775:
	.loc 2 1768 0
	mr 3,27
.LBB5778:
.LBB5777:
	.loc 5 589 0
	add 4,4,31
.LBE5777:
.LBE5778:
	.loc 2 1768 0
	addi 4,4,4
	bl _ZN13idRestoreGame16ReadRenderEntityER14renderEntity_s
.LBB5779:
.LBB5780:
	.loc 5 589 0
	lwz 4,1508(29)
.LBE5780:
.LBE5779:
	.loc 2 1769 0
	mr 3,27
.LBB5782:
.LBB5781:
	.loc 5 589 0
	add 4,4,31
.LBE5781:
.LBE5782:
	.loc 2 1769 0
	addi 4,4,220
	bl _ZN13idRestoreGame7ReadIntERi
.LBB5783:
.LBB5784:
	.loc 5 589 0
	lwz 30,1508(29)
	add 30,30,31
.LBE5784:
.LBE5783:
	.loc 2 1766 0
	addi 31,31,224
	.loc 2 1771 0
	lwz 0,220(30)
	.loc 2 1772 0
	addi 4,30,4
	.loc 2 1771 0
	cmpwi 7,0,0
	blt- 7,.L415
.LVL1070:
	.loc 2 1772 0
	lwz 3,gameRenderWorld@l(26)
.LVL1071:
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
	stw 3,220(30)
.LVL1072:
.L415:
	.loc 2 1766 0
	lwz 0,8(1)
	cmpw 7,0,28
	bgt+ 7,.L416
.LVL1073:
.L414:
	.loc 2 1776 0
	addi 31,29,1512
	mr 3,27
	mr 4,31
	bl _ZN13idRestoreGame16ReadRenderEntityER14renderEntity_s
	.loc 2 1777 0
	mr 3,27
	addi 4,29,1728
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 1778 0
	mr 3,27
	addi 4,29,1732
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 1779 0
	mr 3,27
	addi 4,29,1736
	bl _ZN13idRestoreGame10ReadStringER5idStr
	.loc 2 1781 0
	lwz 0,1728(29)
	cmpwi 7,0,0
	blt- 7,.L402
	.loc 2 1782 0
	lis 9,gameRenderWorld@ha
	mr 4,31
	lwz 3,gameRenderWorld@l(9)
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
	stw 3,1728(29)
.L402:
.LBE5788:
	.loc 2 1784 0
	lwz 0,92(1)
	lwz 12,24(1)
	mtlr 0
	lwz 17,28(1)
.LVL1074:
	lwz 18,32(1)
	mtcrf 8,12
	lwz 19,36(1)
	lwz 20,40(1)
	lwz 21,44(1)
.LVL1075:
	lwz 22,48(1)
	lwz 23,52(1)
	lwz 24,56(1)
	lwz 25,60(1)
	lwz 26,64(1)
	lwz 27,68(1)
.LVL1076:
	lwz 28,72(1)
	lwz 29,76(1)
.LVL1077:
	lwz 30,80(1)
	lwz 31,84(1)
.LVL1078:
	addi 1,1,88
	.cfi_remember_state
.LCFI110:
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
.LVL1079:
.L425:
.LCFI111:
	.cfi_restore_state
.LBB5789:
.LBB5785:
.LBB5766:
.LBB5762:
.LBB5759:
	.loc 5 388 0
	stw 17,1496(29)
	b .L407
.LVL1080:
.L406:
.LBE5759:
.LBE5762:
	.loc 5 302 0
	stw 17,1496(29)
.LVL1081:
	b .L418
.LVL1082:
.L424:
.LBB5763:
.LBB5760:
.LBB5756:
.LBB5757:
	.loc 5 193 0
	lwz 3,1508(29)
	mr 0,17
	cmpwi 7,3,0
	beq- 7,.L404
	.loc 5 194 0
	bl _ZdaPv
	lwz 0,8(1)
.L404:
	.loc 5 197 0
	li 9,0
	stw 9,1508(29)
	.loc 5 199 0
	stw 9,1500(29)
	b .L405
.LBE5757:
.LBE5756:
.LBE5760:
.LBE5763:
.LBE5766:
.LBE5785:
.LBE5789:
	.cfi_endproc
.LFE2900:
	.size	_ZN15idBFGProjectile7RestoreEP13idRestoreGame, .-_ZN15idBFGProjectile7RestoreEP13idRestoreGame
	.align 2
	.globl _ZN12idProjectileC2Ev
	.type	_ZN12idProjectileC2Ev, @function
_ZN12idProjectileC2Ev:
.LFB2816:
	.loc 2 65 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2816
.LVL1083:
	mflr 0
	stwu 1,-24(1)
.LCFI112:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	stw 28,8(1)
.LBB5790:
	addi 30,31,900
.LBE5790:
	stw 29,12(1)
.LEHB11:
.LBB5815:
	.loc 2 65 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	bl _ZN8idEntityC2Ev
.LEHE11:
.LVL1084:
	lis 9,_ZTV12idProjectile+8@ha
	mr 3,30
	la 0,_ZTV12idProjectile+8@l(9)
	stw 0,0(31)
.LVL1085:
.LBB5791:
.LBB5792:
	.loc 4 590 0
	li 0,0
	stw 0,636(31)
.LEHB12:
.LBE5792:
.LBE5791:
	.loc 2 65 0
	bl _ZN16idForce_ConstantC1Ev
.LEHE12:
	.loc 2 65 0 is_stmt 0 discriminator 1
	addi 29,31,936
	mr 3,29
.LEHB13:
	bl _ZN19idPhysics_RigidBodyC1Ev
.LEHE13:
	.loc 2 67 0 is_stmt 1
	lis 3,.LC90@ha
	li 4,1496
	la 3,.LC90@l(3)
.LEHB14:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE14:
.LVL1086:
.LBB5793:
.LBB5794:
	.loc 3 424 0
	lis 9,vec3_origin@ha
.LBE5794:
.LBE5793:
.LBB5800:
.LBB5801:
	.loc 4 606 0
	li 30,0
.LBE5801:
.LBE5800:
.LBB5803:
.LBB5795:
	.loc 3 424 0
	la 10,vec3_origin@l(9)
	lwz 11,vec3_origin@l(9)
	.loc 3 425 0
	lwz 9,4(10)
.LBE5795:
.LBE5803:
	.loc 2 84 0
	addi 3,31,656
.LBB5804:
.LBB5796:
	.loc 3 426 0
	lwz 0,8(10)
.LBE5796:
.LBE5804:
	.loc 2 71 0
	li 10,-1
.LBB5805:
.LBB5797:
	.loc 3 425 0
	stw 9,872(31)
.LBE5797:
.LBE5805:
	.loc 2 84 0
	li 4,0
.LBB5806:
.LBB5807:
	.loc 3 425 0
	stw 9,892(31)
.LBE5807:
.LBE5806:
	.loc 2 82 0
	lis 9,.LC2@ha
.LBB5810:
.LBB5798:
	.loc 3 426 0
	stw 0,876(31)
.LBE5798:
.LBE5810:
	.loc 2 84 0
	li 5,208
.LBB5811:
.LBB5808:
	.loc 3 426 0
	stw 0,896(31)
.LBE5808:
.LBE5811:
	.loc 2 82 0
	lwz 0,.LC2@l(9)
	.loc 2 71 0
	stw 10,864(31)
	.loc 2 72 0
	li 10,0
.LBB5812:
.LBB5802:
	.loc 4 606 0
	stw 30,636(31)
.LBE5802:
.LBE5812:
	.loc 2 73 0
	stw 30,648(31)
	.loc 2 74 0
	stw 30,1480(31)
	.loc 2 75 0
	stw 30,1484(31)
	.loc 2 76 0
	stw 30,1488(31)
.LVL1087:
	.loc 2 78 0
	stw 30,880(31)
	.loc 2 79 0
	stw 30,884(31)
.LVL1088:
	.loc 2 82 0
	stw 0,652(31)
	.loc 2 83 0
	stb 30,640(31)
	.loc 2 72 0
	stw 10,644(31)
.LBB5813:
.LBB5799:
	.loc 3 424 0
	stw 11,868(31)
.LBE5799:
.LBE5813:
.LBB5814:
.LBB5809:
	stw 11,888(31)
.LBE5809:
.LBE5814:
	.loc 2 84 0
	bl memset
	.loc 2 87 0
	lwz 0,192(31)
	li 9,1
	.loc 2 89 0
	stb 30,1492(31)
	.loc 2 87 0
	rlwimi 0,9,20,11,11
	stw 0,192(31)
.LBE5815:
	.loc 2 90 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1089:
	addi 1,1,24
	.cfi_remember_state
.LCFI113:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1090:
.L430:
.LCFI114:
	.cfi_restore_state
	mr 30,3
.L429:
.LBB5816:
	.loc 2 65 0
	mr 3,31
	bl _ZN8idEntityD2Ev
	mr 3,30
.LEHB15:
	bl _Unwind_Resume
.LEHE15:
.L432:
	mr 28,3
	mr 3,29
	bl _ZN19idPhysics_RigidBodyD1Ev
	mr 29,28
.L428:
	mr 3,30
	mr 30,29
	bl _ZN16idForce_ConstantD1Ev
	b .L429
.L431:
	mr 29,3
	b .L428
.LBE5816:
	.cfi_endproc
.LFE2816:
	.section	.gcc_except_table
.LLSDA2816:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2816-.LLSDACSB2816
.LLSDACSB2816:
	.uleb128 .LEHB11-.LFB2816
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB2816
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L430-.LFB2816
	.uleb128 0
	.uleb128 .LEHB13-.LFB2816
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L431-.LFB2816
	.uleb128 0
	.uleb128 .LEHB14-.LFB2816
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L432-.LFB2816
	.uleb128 0
	.uleb128 .LEHB15-.LFB2816
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2816:
	.section	".text"
	.size	_ZN12idProjectileC2Ev, .-_ZN12idProjectileC2Ev
	.align 2
	.globl _ZN12idProjectile14CreateInstanceEv
	.type	_ZN12idProjectile14CreateInstanceEv, @function
_ZN12idProjectile14CreateInstanceEv:
.LFB2810:
	.loc 2 52 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2810
	mflr 0
	stwu 1,-24(1)
.LCFI115:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5817:
	li 3,1496
.LBE5817:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB16:
.LBB5818:
	.loc 2 52 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE16:
	mr 31,3
.LEHB17:
	bl _ZN12idProjectileC1Ev
.LEHE17:
.LVL1091:
	.loc 2 52 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB18:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE18:
.LVL1092:
.L438:
.LBE5818:
	.loc 2 52 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI116:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L439:
.L435:
.LCFI117:
	.cfi_restore_state
.LBB5819:
	cmpwi 7,4,1
	beq- 7,.L437
.LEHB19:
	bl _Unwind_Resume
.LEHE19:
.L440:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L435
.L437:
.LBE5819:
.LBB5820:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L438
.LBE5820:
	.cfi_endproc
.LFE2810:
	.section	.gcc_except_table
	.align 2
.LLSDA2810:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2810-.LLSDATTD2810
.LLSDATTD2810:
	.byte	0x1
	.uleb128 .LLSDACSE2810-.LLSDACSB2810
.LLSDACSB2810:
	.uleb128 .LEHB16-.LFB2810
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L439-.LFB2810
	.uleb128 0x1
	.uleb128 .LEHB17-.LFB2810
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L440-.LFB2810
	.uleb128 0x3
	.uleb128 .LEHB18-.LFB2810
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L439-.LFB2810
	.uleb128 0x1
	.uleb128 .LEHB19-.LFB2810
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE2810:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2810:
	.section	".text"
	.size	_ZN12idProjectile14CreateInstanceEv, .-_ZN12idProjectile14CreateInstanceEv
	.align 2
	.globl _ZNK12idProjectile8GetOwnerEv
	.type	_ZNK12idProjectile8GetOwnerEv, @function
_ZNK12idProjectile8GetOwnerEv:
.LFB2821:
	.loc 2 188 0 is_stmt 1
	.cfi_startproc
.LVL1093:
.LBB5821:
.LBB5822:
	.loc 4 634 0
	lwz 0,636(3)
	.loc 4 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 4 638 0
	li 3,0
.LVL1094:
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL1095:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bnelr- 7
	.loc 4 636 0
	addi 11,11,132
.LVL1096:
	slwi 11,11,2
.LVL1097:
	add 9,9,11
	lwz 3,4(9)
.LBE5822:
.LBE5821:
	.loc 2 190 0
	blr
	.cfi_endproc
.LFE2821:
	.size	_ZNK12idProjectile8GetOwnerEv, .-_ZNK12idProjectile8GetOwnerEv
	.align 2
	.globl _ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3
	.type	_ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3, @function
_ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3:
.LFB2831:
	.loc 2 615 0
	.cfi_startproc
.LVL1098:
	mflr 0
	stwu 1,-40(1)
.LCFI118:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 0,44(1)
.LBB5856:
	.loc 2 619 0
	li 0,1
	.cfi_offset 65, 4
.LBE5856:
	.loc 2 615 0
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,36(1)
.LBB5916:
	.loc 2 619 0
	lwz 9,88(5)
	cmpwi 7,9,0
	beq- 7,.L445
	.cfi_offset 31, -4
.LBB5857:
.LBB5858:
	.file 20 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Material.h"
	.loc 20 503 0
	lwz 0,100(9)
	rlwinm 0,0,0,28,31
.L445:
.LBE5858:
.LBE5857:
	.loc 2 626 0
	lis 9,_ZN11idGameLocal15sufaceTypeNamesE@ha
	slwi 0,0,2
	la 9,_ZN11idGameLocal15sufaceTypeNamesE@l(9)
	.loc 2 629 0
	lis 3,.LC92@ha
.LVL1099:
	.loc 2 626 0
	lwzx 31,9,0
.LVL1100:
	.loc 2 629 0
	la 3,.LC92@l(3)
	mr 4,31
.LVL1101:
	crxor 6,6,6
	bl _Z2vaPKcz
.LVL1102:
	mr 4,3
.LVL1103:
.LBB5859:
.LBB5860:
	.loc 16 241 0
	mr 3,30
.LVL1104:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1105:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L455
.LVL1106:
.LBB5861:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 9,4(9)
.LVL1107:
.L446:
.LBE5861:
.LBE5860:
.LBE5859:
	.loc 2 630 0
	lbz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L461
.LVL1108:
.L447:
	.loc 2 641 0
	lis 3,.LC95@ha
	mr 4,31
	la 3,.LC95@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,3
.LVL1109:
.LBB5863:
.LBB5864:
	.loc 16 241 0
	mr 3,30
.LVL1110:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1111:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L457
.L463:
.LVL1112:
.LBB5865:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL1113:
.L449:
.LBE5865:
.LBE5864:
.LBE5863:
	.loc 2 642 0
	lbz 0,0(31)
	cmpwi 7,0,0
	beq- 7,.L462
.LVL1114:
.L450:
.LBB5867:
.LBB5868:
	.loc 3 420 0
	lfs 13,72(29)
.LBE5868:
.LBE5867:
.LBB5875:
.LBB5876:
.LBB5877:
.LBB5878:
	.loc 16 241 0
	lis 4,.LC97@ha
.LBE5878:
.LBE5877:
.LBE5876:
.LBE5875:
.LBB5893:
.LBB5871:
	.loc 3 420 0
	lfs 0,76(29)
.LBE5871:
.LBE5893:
.LBB5894:
.LBB5888:
.LBB5884:
.LBB5880:
	.loc 16 241 0
	mr 3,30
.LBE5880:
.LBE5884:
.LBE5888:
.LBE5894:
.LBB5895:
.LBB5872:
	.loc 3 420 0
	lfs 12,68(29)
	fneg 13,13
	fneg 0,0
.LBE5872:
.LBE5895:
.LBB5896:
.LBB5889:
.LBB5885:
.LBB5881:
	.loc 16 241 0
	la 4,.LC97@l(4)
.LBE5881:
.LBE5885:
.LBE5889:
.LBE5896:
.LBB5897:
.LBB5873:
	.loc 3 420 0
	fneg 12,12
.LBE5873:
.LBE5897:
	.loc 2 646 0
	addi 29,29,56
.LVL1115:
.LBB5898:
.LBB5874:
.LBB5869:
.LBB5870:
	.loc 3 397 0
	stfs 13,12(1)
	.loc 3 398 0
	stfs 0,16(1)
	.loc 3 396 0
	stfs 12,8(1)
.LBE5870:
.LBE5869:
.LBE5874:
.LBE5898:
.LBB5899:
.LBB5890:
.LBB5886:
.LBB5882:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
	.loc 16 242 0
	cmpwi 0,3,0
.LVL1116:
	beq- 0,.L459
.LVL1117:
.LBB5879:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1118:
.L453:
.LBE5879:
.LBE5882:
.LBE5886:
	.loc 16 249 0
	bl atof
.LBE5890:
.LBE5899:
	.loc 2 646 0
	lis 9,.LC98@ha
.LBB5900:
.LBB5891:
	.loc 16 249 0
	frsp 2,1
.LBE5891:
.LBE5900:
	.loc 2 646 0
	lfs 1,.LC98@l(9)
	lis 9,.LC20@ha
	lis 3,gameLocal@ha
	lfs 3,.LC20@l(9)
	mr 4,29
	addi 5,1,8
	mr 7,31
	la 3,gameLocal@l(3)
	li 6,1
	bl _ZN11idGameLocal12ProjectDecalERK6idVec3S2_fbfPKcf
.LBE5916:
	.loc 2 648 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL1119:
	mtlr 0
	lwz 30,32(1)
.LVL1120:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI119:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1121:
.L462:
.LCFI120:
	.cfi_restore_state
.LBB5917:
.LBB5901:
.LBB5902:
	.loc 16 241 0
	lis 4,.LC96@ha
	mr 3,30
.LVL1122:
	la 4,.LC96@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1123:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L458
.LVL1124:
.LBB5903:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 31,4(9)
.LVL1125:
.L451:
.LBE5903:
.LBE5902:
.LBE5901:
	.loc 2 645 0
	lbz 0,0(31)
	cmpwi 7,0,0
	bne- 7,.L450
.LBE5917:
	.loc 2 648 0
	lwz 0,44(1)
	lwz 29,28(1)
.LVL1126:
	mtlr 0
	lwz 30,32(1)
.LVL1127:
	lwz 31,36(1)
.LVL1128:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI121:
	.cfi_def_cfa_offset 0
	blr
.LVL1129:
.L461:
.LCFI122:
	.cfi_restore_state
.LBB5918:
.LBB5905:
.LBB5906:
	.loc 16 241 0
	lis 4,.LC93@ha
	mr 3,30
.LVL1130:
	la 4,.LC93@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1131:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L456
.LVL1132:
.LBB5907:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 9,4(9)
.LVL1133:
.L448:
.LBE5907:
.LBE5906:
.LBE5905:
	.loc 2 633 0
	lbz 0,0(9)
	cmpwi 7,0,0
	bne- 7,.L447
.LVL1134:
.LBB5909:
.LBB5910:
	.loc 16 241 0
	lis 4,.LC94@ha
	mr 3,30
.LVL1135:
	la 4,.LC94@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1136:
.LBE5910:
.LBE5909:
	.loc 2 641 0
	lis 3,.LC95@ha
	mr 4,31
	la 3,.LC95@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,3
.LVL1137:
.LBB5911:
.LBB5866:
	.loc 16 241 0
	mr 3,30
.LVL1138:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1139:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L463
.LVL1140:
.L457:
	.loc 16 245 0
	lis 31,.LC27@ha
.LVL1141:
	la 31,.LC27@l(31)
	b .L449
.LVL1142:
.L455:
.LBE5866:
.LBE5911:
.LBB5912:
.LBB5862:
	lis 9,.LC27@ha
	la 9,.LC27@l(9)
	b .L446
.LVL1143:
.L459:
.LBE5862:
.LBE5912:
.LBB5913:
.LBB5892:
.LBB5887:
.LBB5883:
	lis 3,.LC91@ha
.LVL1144:
	la 3,.LC91@l(3)
	b .L453
.LVL1145:
.L458:
.LBE5883:
.LBE5887:
.LBE5892:
.LBE5913:
.LBB5914:
.LBB5904:
	lis 31,.LC27@ha
	la 31,.LC27@l(31)
	b .L451
.LVL1146:
.L456:
.LBE5904:
.LBE5914:
.LBB5915:
.LBB5908:
	lis 9,.LC27@ha
	la 9,.LC27@l(9)
	b .L448
.LBE5908:
.LBE5915:
.LBE5918:
	.cfi_endproc
.LFE2831:
	.size	_ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3, .-_ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3
	.align 2
	.globl _ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg
	.type	_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg, @function
_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg:
.LFB2853:
	.loc 2 1195 0
	.cfi_startproc
.LVL1147:
.LBB5950:
.LBB5951:
	.loc 2 1199 0
	cmpwi 7,4,2
.LBE5951:
.LBE5950:
	.loc 2 1195 0
	mflr 0
	stwu 1,-160(1)
.LCFI123:
	.cfi_def_cfa_offset 160
	.cfi_register 65, 0
	stw 30,152(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,156(1)
	mr 31,6
	.cfi_offset 31, -4
	stw 0,164(1)
.LBB5954:
.LBB5953:
	.loc 2 1199 0
	beq- 7,.L471
	.cfi_offset 65, 4
.LBB5952:
	.loc 2 1215 0
	bl _ZN8idEntity18ClientReceiveEventEiiRK8idBitMsg
.LVL1148:
.LBE5952:
.LBE5953:
.LBE5954:
	.loc 2 1219 0
	lwz 0,164(1)
	lwz 30,152(1)
.LVL1149:
	mtlr 0
	lwz 31,156(1)
.LVL1150:
	addi 1,1,160
	.cfi_remember_state
.LCFI124:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1151:
.L471:
.LCFI125:
	.cfi_restore_state
.LBB5955:
.LBB5956:
.LBB5957:
.LBB5958:
.LBB5959:
	.loc 2 1201 0
	li 5,108
.LVL1152:
	li 4,0
.LVL1153:
	addi 3,1,32
.LVL1154:
	bl memset
.LVL1155:
.LBB5960:
.LBB5961:
	.loc 10 381 0
	li 4,32
	mr 3,31
	bl _ZNK8idBitMsg8ReadBitsEi
.LVL1156:
.LBE5961:
.LBE5960:
.LBB5962:
.LBB5963:
	li 4,32
.LBE5963:
.LBE5962:
	.loc 2 1202 0
	stw 3,88(1)
.LVL1157:
.LBB5965:
.LBB5964:
	.loc 10 381 0
	mr 3,31
.LVL1158:
	bl _ZNK8idBitMsg8ReadBitsEi
.LVL1159:
.LBE5964:
.LBE5965:
.LBB5966:
.LBB5967:
	li 4,32
.LBE5967:
.LBE5966:
	.loc 2 1203 0
	stw 3,92(1)
.LVL1160:
.LBB5969:
.LBB5968:
	.loc 10 381 0
	mr 3,31
.LVL1161:
	bl _ZNK8idBitMsg8ReadBitsEi
.LVL1162:
.LBE5968:
.LBE5969:
.LBB5970:
.LBB5971:
	.loc 10 399 0
	li 4,24
.LBE5971:
.LBE5970:
	.loc 2 1204 0
	stw 3,96(1)
.LVL1163:
.LBB5973:
.LBB5972:
	.loc 10 399 0
	mr 3,31
.LVL1164:
	bl _ZNK8idBitMsg8ReadBitsEi
.LVL1165:
	li 5,24
	mr 4,3
	addi 3,1,8
	bl _ZN8idBitMsg9BitsToDirEii
.LVL1166:
.LBE5972:
.LBE5973:
.LBB5974:
.LBB5975:
	.loc 3 424 0
	lwz 0,8(1)
.LBE5975:
.LBE5974:
.LBB5977:
.LBB5978:
	.loc 10 376 0
	li 4,32
	mr 3,31
.LBE5978:
.LBE5977:
.LBB5980:
.LBB5976:
	.loc 3 424 0
	stw 0,100(1)
	.loc 3 425 0
	lwz 0,12(1)
	stw 0,104(1)
	.loc 3 426 0
	lwz 0,16(1)
	stw 0,108(1)
.LVL1167:
.LBE5976:
.LBE5980:
.LBB5981:
.LBB5979:
	.loc 10 376 0
	bl _ZNK8idBitMsg8ReadBitsEi
	mr 5,3
.LBE5979:
.LBE5981:
	.loc 2 1206 0
	lis 3,gameLocal@ha
	la 3,gameLocal@l(3)
	li 4,1
	bl _ZN11idGameLocal15ClientRemapDeclE10declType_ti
	.loc 2 1207 0
	li 0,0
	cmpwi 7,3,-1
	.loc 2 1206 0
	mr 5,3
.LVL1168:
	.loc 2 1207 0
	beq- 7,.L467
	lis 9,declManager@ha
	li 4,1
	lwz 3,declManager@l(9)
.LVL1169:
	li 6,1
	lwz 9,0(3)
	lwz 0,76(9)
	mtctr 0
	bctrl
.LVL1170:
	mr 0,3
.L467:
.LBB5982:
.LBB5983:
	.loc 10 386 0
	li 4,16
	mr 3,31
.LBE5983:
.LBE5982:
	.loc 2 1207 0
	stw 0,120(1)
.LVL1171:
.LBB5985:
.LBB5984:
	.loc 10 386 0
	bl _ZNK8idBitMsg8ReadBitsEi
	.loc 10 387 0
	li 5,10
	li 4,5
	bl _ZN6idMath11BitsToFloatEiii
.LBE5984:
.LBE5985:
.LBB5986:
.LBB5987:
	.loc 10 386 0
	li 4,16
	mr 3,31
.LBE5987:
.LBE5986:
	.loc 2 1208 0
	stfs 1,20(1)
.LVL1172:
.LBB5989:
.LBB5988:
	.loc 10 386 0
	bl _ZNK8idBitMsg8ReadBitsEi
	.loc 10 387 0
	li 5,10
	li 4,5
	bl _ZN6idMath11BitsToFloatEiii
.LBE5988:
.LBE5989:
.LBB5990:
.LBB5991:
	.loc 10 386 0
	li 4,16
	mr 3,31
.LBE5991:
.LBE5990:
	.loc 2 1209 0
	stfs 1,24(1)
.LVL1173:
.LBB5993:
.LBB5992:
	.loc 10 386 0
	bl _ZNK8idBitMsg8ReadBitsEi
	.loc 10 387 0
	li 4,5
	li 5,10
	bl _ZN6idMath11BitsToFloatEiii
.LBE5992:
.LBE5993:
	.loc 2 1211 0
	mr 3,30
	addi 4,30,100
	addi 5,1,32
	addi 6,1,20
	.loc 2 1210 0
	stfs 1,28(1)
	.loc 2 1211 0
	bl _ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3
.LBE5959:
.LBE5958:
.LBE5957:
.LBE5956:
.LBE5955:
	.loc 2 1219 0
	lwz 0,164(1)
	lwz 30,152(1)
.LVL1174:
.LBB5998:
.LBB5997:
.LBB5996:
.LBB5995:
.LBB5994:
	.loc 2 1211 0
	li 3,1
.LBE5994:
.LBE5995:
.LBE5996:
.LBE5997:
.LBE5998:
	.loc 2 1219 0
	mtlr 0
	lwz 31,156(1)
.LVL1175:
	addi 1,1,160
	.cfi_restore 30
	.cfi_restore 31
.LCFI126:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2853:
	.size	_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg, .-_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg
	.align 2
	.globl _ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3
	.type	_ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3, @function
_ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3:
.LFB2832:
	.loc 2 655 0
	.cfi_startproc
.LVL1176:
	stwu 1,-192(1)
.LCFI127:
	.cfi_def_cfa_offset 192
	mflr 0
	stw 27,172(1)
.LBB6056:
.LBB6057:
	.loc 2 659 0
	lis 27,gameLocal@ha
	.cfi_offset 27, -20
	.cfi_register 65, 0
.LBE6057:
.LBE6056:
	.loc 2 655 0
	stw 28,176(1)
.LBB6060:
	.loc 2 657 0
	addi 28,3,100
	.cfi_offset 28, -16
.LBE6060:
	.loc 2 655 0
	stw 29,180(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 31,188(1)
	mr 31,4
	.cfi_offset 31, -4
.LBB6061:
	.loc 2 657 0
	mr 5,31
.LVL1177:
	mr 4,28
.LVL1178:
	mr 6,29
.LBB6058:
	.loc 2 659 0
	la 27,gameLocal@l(27)
.LBE6058:
.LBE6061:
	.loc 2 655 0
	stw 0,196(1)
	stw 30,184(1)
	.loc 2 655 0
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB6062:
	.loc 2 657 0
	bl _ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3
.LVL1179:
.LBB6059:
	.loc 2 659 0
	addis 9,27,0x25
	lbz 0,2017(9)
	cmpwi 7,0,0
	beq- 7,.L472
	.loc 2 659 0 is_stmt 0 discriminator 1
	lwz 0,192(30)
	andis. 9,0,16
	bne- 0,.L481
.L472:
.LBE6059:
.LBE6062:
	.loc 2 682 0 is_stmt 1
	lwz 0,196(1)
	lwz 27,172(1)
	mtlr 0
	lwz 28,176(1)
	lwz 29,180(1)
.LVL1180:
	lwz 30,184(1)
.LVL1181:
	lwz 31,188(1)
.LVL1182:
	addi 1,1,192
	.cfi_remember_state
.LCFI128:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1183:
.L481:
.LCFI129:
	.cfi_restore_state
.LBB6063:
.LBB6064:
	.loc 2 660 0
	addi 3,1,8
	bl _ZN8idBitMsgC1Ev
.LVL1184:
.LBB6065:
.LBB6066:
.LBB6067:
.LBB6068:
	.loc 16 241 0
	lis 4,.LC99@ha
	mr 3,28
	la 4,.LC99@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1185:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L478
.LVL1186:
.LBB6069:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1187:
.L474:
.LBE6069:
.LBE6068:
.LBE6067:
	.loc 16 257 0
	bl atoi
.LBE6066:
.LBE6065:
	.loc 2 667 0
	li 28,-1
.LVL1188:
	.loc 2 664 0
	cmpwi 7,3,0
	beq- 7,.L475
.LVL1189:
.LBB6073:
.LBB6074:
	.loc 4 643 0
	lwz 28,636(30)
	rlwinm 28,28,0,20,31
.LVL1190:
.L475:
.LBE6074:
.LBE6073:
.LBB6075:
.LBB6076:
	.loc 10 156 0
	addi 9,1,40
.LBE6076:
.LBE6075:
.LBB6078:
.LBB6079:
	.loc 10 300 0
	lwz 4,56(31)
.LBE6079:
.LBE6078:
.LBB6082:
.LBB6083:
	.loc 10 266 0
	li 0,0
.LBE6083:
.LBE6082:
.LBB6085:
.LBB6080:
	.loc 10 300 0
	li 5,32
	addi 3,1,8
.LVL1191:
.LBE6080:
.LBE6085:
.LBB6086:
.LBB6077:
	.loc 10 156 0
	stw 9,8(1)
	.loc 10 157 0
	stw 9,12(1)
	.loc 10 158 0
	li 9,128
	stw 9,16(1)
.LVL1192:
.LBE6077:
.LBE6086:
.LBB6087:
.LBB6084:
	.loc 10 266 0
	stw 0,20(1)
	.loc 10 267 0
	stb 0,37(1)
	.loc 10 268 0
	stw 0,24(1)
.LVL1193:
.LBE6084:
.LBE6087:
.LBB6088:
.LBB6081:
	.loc 10 300 0
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1194:
.LBE6081:
.LBE6088:
.LBB6089:
.LBB6090:
	lwz 4,60(31)
	addi 3,1,8
.LVL1195:
	li 5,32
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1196:
.LBE6090:
.LBE6089:
.LBB6091:
.LBB6092:
	lwz 4,64(31)
	li 5,32
	addi 3,1,8
.LVL1197:
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1198:
.LBE6092:
.LBE6091:
.LBB6093:
.LBB6094:
	.loc 10 317 0
	li 4,24
	addi 3,31,68
	bl _ZN8idBitMsg9DirToBitsERK6idVec3i
	li 5,24
	mr 4,3
	addi 3,1,8
.LVL1199:
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1200:
.LBE6094:
.LBE6093:
	.loc 2 676 0
	lwz 9,88(31)
	li 4,-1
	cmpwi 7,9,0
	beq- 7,.L476
.LBE6064:
	.loc 2 2410 0
	lwz 3,4(9)
.LBB6108:
.LBB6095:
.LBB6096:
	.file 21 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclManager.h"
	.loc 21 165 0
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
.LBE6096:
.LBE6095:
	.loc 2 676 0
	li 4,-1
.LBB6098:
.LBB6097:
	.loc 21 165 0
	mr 6,3
.LBE6097:
.LBE6098:
	.loc 2 676 0
	li 5,1
	mr 3,27
	bl _ZN11idGameLocal15ServerRemapDeclEi10declType_ti
	mr 4,3
.L476:
.LVL1201:
.LBB6099:
.LBB6100:
	.loc 10 296 0
	li 5,32
	addi 3,1,8
.LVL1202:
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1203:
.LBE6100:
.LBE6099:
.LBB6101:
.LBB6102:
	.loc 10 304 0
	lfs 1,0(29)
	li 4,10
	li 3,5
	bl _ZN6idMath11FloatToBitsEfii
.LVL1204:
	.loc 10 305 0
	li 5,16
	.loc 10 304 0
	mr 4,3
.LVL1205:
	.loc 10 305 0
	addi 3,1,8
.LVL1206:
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1207:
.LBE6102:
.LBE6101:
.LBB6103:
.LBB6104:
	.loc 10 304 0
	lfs 1,4(29)
	li 4,10
	li 3,5
	bl _ZN6idMath11FloatToBitsEfii
.LVL1208:
	.loc 10 305 0
	li 5,16
	.loc 10 304 0
	mr 4,3
.LVL1209:
	.loc 10 305 0
	addi 3,1,8
.LVL1210:
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1211:
.LBE6104:
.LBE6103:
.LBB6105:
.LBB6106:
	.loc 10 304 0
	lfs 1,8(29)
	li 4,10
	li 3,5
	bl _ZN6idMath11FloatToBitsEfii
.LVL1212:
	.loc 10 305 0
	li 5,16
	.loc 10 304 0
	mr 4,3
.LVL1213:
	.loc 10 305 0
	addi 3,1,8
.LVL1214:
	bl _ZN8idBitMsg9WriteBitsEii
.LVL1215:
.LBE6106:
.LBE6105:
	.loc 2 680 0
	mr 3,30
	addi 5,1,8
.LVL1216:
	mr 7,28
	li 4,2
	li 6,0
	bl _ZNK8idEntity15ServerSendEventEiPK8idBitMsgbi
.LVL1217:
.LBE6108:
.LBE6063:
	.loc 2 682 0
	lwz 0,196(1)
	lwz 27,172(1)
	mtlr 0
	lwz 28,176(1)
.LVL1218:
	lwz 29,180(1)
.LVL1219:
	lwz 30,184(1)
.LVL1220:
	lwz 31,188(1)
.LVL1221:
	addi 1,1,192
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI130:
	.cfi_def_cfa_offset 0
	blr
.LVL1222:
.L478:
.LCFI131:
	.cfi_restore_state
.LBB6110:
.LBB6109:
.LBB6107:
.LBB6072:
.LBB6071:
.LBB6070:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1223:
	la 3,.LC30@l(3)
	b .L474
.LBE6070:
.LBE6071:
.LBE6072:
.LBE6107:
.LBE6109:
.LBE6110:
	.cfi_endproc
.LFE2832:
	.size	_ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3, .-_ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3
	.align 2
	.globl _ZN12idProjectile11Event_TouchEP8idEntityP7trace_s
	.type	_ZN12idProjectile11Event_TouchEP8idEntityP7trace_s, @function
_ZN12idProjectile11Event_TouchEP8idEntityP7trace_s:
.LFB2848:
	.loc 2 1003 0
	.cfi_startproc
.LVL1224:
	mflr 0
	stwu 1,-128(1)
.LCFI132:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
	stw 30,120(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,124(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,132(1)
.LBB6132:
	.loc 2 1005 0
	.cfi_offset 65, 4
	bl _ZNK8idEntity8IsHiddenEv
.LVL1225:
	cmpwi 7,3,0
	bne- 7,.L482
.LVL1226:
.LBB6133:
.LBB6134:
.LBB6135:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL1227:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	.loc 4 638 0
	li 0,0
	.loc 4 635 0
	beq- 7,.L488
.LBE6135:
.LBE6134:
	.loc 2 1009 0
	cmpw 7,30,0
	beq- 7,.L482
.LVL1228:
.L489:
.LBE6133:
.LBE6132:
.LBB6142:
.LBB6143:
.LBB6144:
	.loc 2 1012 0
	li 4,0
	li 5,108
	addi 3,1,8
	bl memset
	.loc 2 1013 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL1229:
	.loc 2 1003 0
	addi 11,1,60
.LBE6144:
.LBE6143:
.LBE6142:
.LBB6173:
.LBB6140:
.LBB6138:
.LBB6136:
	.loc 12 333 0
	addi 9,1,24
.L485:
.LVL1230:
.LBE6136:
.LBE6138:
.LBE6140:
.LBE6173:
.LBB6174:
.LBB6172:
.LBB6171:
.LBB6145:
.LBB6146:
.LBB6147:
.LBB6148:
	.loc 3 424 0
	lwz 0,0(3)
	stw 0,0(9)
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(3)
.LBE6148:
.LBE6147:
	.loc 12 333 0
	addi 3,3,12
.LBB6150:
.LBB6149:
	.loc 3 426 0
	stw 0,8(9)
.LBE6149:
.LBE6150:
	.loc 12 333 0
	addi 9,9,12
.LVL1231:
	cmpw 7,9,11
	bne+ 7,.L485
.LBE6146:
.LBE6145:
	.loc 2 1014 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1232:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB6151:
.LBB6152:
	.loc 3 424 0
	lwz 0,0(3)
.LBE6152:
.LBE6151:
	.loc 2 1014 0
	mr 9,3
.LVL1233:
	.loc 2 1015 0
	mr 3,31
.LVL1234:
.LBB6154:
.LBB6153:
	.loc 3 424 0
	stw 0,12(1)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,16(1)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,20(1)
.LBE6153:
.LBE6154:
	.loc 2 1015 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1235:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	.loc 2 1017 0
	addi 4,1,8
.LBB6155:
.LBB6156:
	.loc 3 424 0
	lwz 0,0(3)
.LBE6156:
.LBE6155:
	.loc 2 1015 0
	mr 9,3
.LVL1236:
	.loc 2 1017 0
	addi 5,1,76
.LBB6161:
.LBB6157:
	.loc 3 424 0
	stw 0,64(1)
.LBE6157:
.LBE6161:
.LBB6162:
.LBB6163:
	.loc 3 410 0
	li 0,0
.LBE6163:
.LBE6162:
.LBB6166:
.LBB6158:
	.loc 3 425 0
	lwz 11,4(3)
.LBE6158:
.LBE6166:
	.loc 2 1017 0
	mr 3,31
.LVL1237:
.LBB6167:
.LBB6159:
	.loc 3 425 0
	stw 11,68(1)
	.loc 3 426 0
	lwz 9,8(9)
.LVL1238:
.LBE6159:
.LBE6167:
.LBB6168:
.LBB6164:
	.loc 3 410 0
	stw 0,76(1)
.LBE6164:
.LBE6168:
.LBB6169:
.LBB6160:
	.loc 3 426 0
	stw 9,72(1)
.LVL1239:
.LBE6160:
.LBE6169:
.LBB6170:
.LBB6165:
	.loc 3 412 0
	lis 9,.LC2@ha
	.loc 3 411 0
	stw 0,80(1)
	.loc 3 412 0
	lwz 0,.LC2@l(9)
	stw 0,84(1)
.LBE6165:
.LBE6170:
	.loc 2 1017 0
	bl _ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3
.LVL1240:
	.loc 2 1018 0
	lwz 9,0(31)
	mr 3,31
	addi 4,1,8
	li 5,0
	lwz 0,232(9)
	mtctr 0
	bctrl
.LVL1241:
.L482:
.LBE6171:
.LBE6172:
.LBE6174:
	.loc 2 1020 0
	lwz 0,132(1)
	lwz 30,120(1)
.LVL1242:
	mtlr 0
	lwz 31,124(1)
.LVL1243:
	addi 1,1,128
	.cfi_remember_state
.LCFI133:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1244:
.L488:
.LCFI134:
	.cfi_restore_state
.LBB6175:
.LBB6141:
.LBB6139:
.LBB6137:
	.loc 4 636 0
	addi 11,11,132
.LVL1245:
	slwi 11,11,2
.LVL1246:
	add 9,9,11
	lwz 0,4(9)
.LBE6137:
.LBE6139:
	.loc 2 1009 0
	cmpw 7,30,0
	bne+ 7,.L489
	b .L482
.LBE6141:
.LBE6175:
	.cfi_endproc
.LFE2848:
	.size	_ZN12idProjectile11Event_TouchEP8idEntityP7trace_s, .-_ZN12idProjectile11Event_TouchEP8idEntityP7trace_s
	.align 2
	.globl _ZN12idProjectile13Event_ExplodeEv
	.type	_ZN12idProjectile13Event_ExplodeEv, @function
_ZN12idProjectile13Event_ExplodeEv:
.LFB2846:
	.loc 2 977 0
	.cfi_startproc
.LVL1247:
	stwu 1,-128(1)
.LCFI135:
	.cfi_def_cfa_offset 128
	mflr 0
.LBB6176:
	.loc 2 980 0
	li 4,0
	li 5,108
.LBE6176:
	.loc 2 977 0
	stw 31,124(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB6203:
	.loc 2 980 0
	addi 3,1,8
.LVL1248:
.LBE6203:
	.loc 2 977 0
	stw 0,132(1)
.LBB6204:
	.loc 2 980 0
	.cfi_offset 65, 4
	bl memset
	.loc 2 981 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL1249:
	.loc 2 977 0
	addi 11,1,60
.LBE6204:
	.loc 12 333 0
	addi 9,1,24
.L491:
.LVL1250:
.LBB6205:
.LBB6177:
.LBB6178:
.LBB6179:
.LBB6180:
	.loc 3 424 0
	lwz 0,0(3)
	stw 0,0(9)
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(3)
.LBE6180:
.LBE6179:
	.loc 12 333 0
	addi 3,3,12
.LBB6182:
.LBB6181:
	.loc 3 426 0
	stw 0,8(9)
.LBE6181:
.LBE6182:
	.loc 12 333 0
	addi 9,9,12
.LVL1251:
	cmpw 7,9,11
	bne+ 7,.L491
.LBE6178:
.LBE6177:
	.loc 2 982 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1252:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB6183:
.LBB6184:
	.loc 3 424 0
	lwz 0,0(3)
.LBE6184:
.LBE6183:
	.loc 2 982 0
	mr 9,3
.LVL1253:
	.loc 2 983 0
	mr 3,31
.LVL1254:
.LBB6186:
.LBB6185:
	.loc 3 424 0
	stw 0,12(1)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,16(1)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,20(1)
.LBE6185:
.LBE6186:
	.loc 2 983 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1255:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	.loc 2 985 0
	addi 4,1,8
.LBB6187:
.LBB6188:
	.loc 3 424 0
	lwz 0,0(3)
.LBE6188:
.LBE6187:
	.loc 2 983 0
	mr 9,3
.LVL1256:
	.loc 2 985 0
	addi 5,1,76
.LBB6193:
.LBB6189:
	.loc 3 424 0
	stw 0,64(1)
.LBE6189:
.LBE6193:
.LBB6194:
.LBB6195:
	.loc 3 410 0
	li 0,0
.LBE6195:
.LBE6194:
.LBB6198:
.LBB6190:
	.loc 3 425 0
	lwz 11,4(3)
.LBE6190:
.LBE6198:
	.loc 2 985 0
	mr 3,31
.LVL1257:
.LBB6199:
.LBB6191:
	.loc 3 425 0
	stw 11,68(1)
	.loc 3 426 0
	lwz 9,8(9)
.LVL1258:
.LBE6191:
.LBE6199:
.LBB6200:
.LBB6196:
	.loc 3 410 0
	stw 0,76(1)
.LBE6196:
.LBE6200:
.LBB6201:
.LBB6192:
	.loc 3 426 0
	stw 9,72(1)
.LVL1259:
.LBE6192:
.LBE6201:
.LBB6202:
.LBB6197:
	.loc 3 412 0
	lis 9,.LC2@ha
	.loc 3 411 0
	stw 0,80(1)
	.loc 3 412 0
	lwz 0,.LC2@l(9)
	stw 0,84(1)
.LBE6197:
.LBE6202:
	.loc 2 985 0
	bl _ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3
.LVL1260:
	.loc 2 986 0
	lwz 9,0(31)
	mr 3,31
	addi 4,1,8
	li 5,0
	lwz 0,232(9)
	mtctr 0
	bctrl
.LBE6205:
	.loc 2 987 0
	lwz 0,132(1)
	lwz 31,124(1)
.LVL1261:
	mtlr 0
	addi 1,1,128
.LCFI136:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2846:
	.size	_ZN12idProjectile13Event_ExplodeEv, .-_ZN12idProjectile13Event_ExplodeEv
	.align 2
	.globl _ZN12idProjectile6FizzleEv
	.type	_ZN12idProjectile6FizzleEv, @function
_ZN12idProjectile6FizzleEv:
.LFB2840:
	.loc 2 711 0
	.cfi_startproc
.LVL1262:
	mflr 0
	stwu 1,-24(1)
.LCFI137:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB6220:
	.loc 2 713 0
	lwz 9,1488(3)
	addi 0,9,-3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	cmplwi 7,0,1
	ble- 7,.L493
.LVL1263:
.LBE6220:
.LBB6221:
.LBB6222:
	.loc 2 717 0
	li 4,3
	li 5,0
	bl _ZN8idEntity9StopSoundEib
.LVL1264:
	.loc 2 718 0
	lis 4,.LC100@ha
	la 4,.LC100@l(4)
	li 5,3
	li 6,0
	li 7,0
	li 8,0
	mr 3,31
	bl _ZN8idEntity10StartSoundEPKciibPi
	.loc 2 721 0
	addi 29,31,100
.LVL1265:
.LBB6223:
.LBB6224:
	.loc 16 241 0
	lis 4,.LC101@ha
	mr 3,29
	la 4,.LC101@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE6224:
.LBE6223:
	.loc 2 728 0
	lwz 0,1480(31)
	cmpwi 7,0,0
	beq- 7,.L495
	lwz 0,1484(31)
	cmpwi 7,0,0
	beq- 7,.L495
	.loc 2 729 0
	li 0,0
	stw 0,1484(31)
.L495:
	.loc 2 732 0
	lwz 0,192(31)
	li 9,0
	.loc 2 733 0
	addi 30,31,936
	li 5,-1
	.loc 2 732 0
	rlwimi 0,9,29,2,2
	.loc 2 733 0
	li 4,0
	.loc 2 732 0
	stw 0,192(31)
	.loc 2 733 0
	mr 3,30
	bl _ZN19idPhysics_RigidBody11SetContentsEii
	.loc 2 734 0
	li 4,0
	mr 3,30
	bl _ZNK19idPhysics_RigidBody12GetClipModelEi
	bl _ZN11idClipModel6UnlinkEv
	.loc 2 735 0
	mr 3,30
	bl _ZN19idPhysics_RigidBody9PutToRestEv
	.loc 2 737 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 2 738 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,72(9)
	mtctr 0
	bctrl
	.loc 2 740 0
	li 0,3
	stw 0,1488(31)
	.loc 2 742 0
	lis 9,gameLocal+2426850@ha
	lbz 0,gameLocal+2426850@l(9)
	cmpwi 7,0,0
	beq- 7,.L498
.LVL1266:
.L493:
.LBE6222:
.LBE6221:
	.loc 2 748 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1267:
	addi 1,1,24
	.cfi_remember_state
.LCFI138:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1268:
.L498:
.LCFI139:
	.cfi_restore_state
.LBB6238:
.LBB6236:
	.loc 2 746 0
	lis 4,.LANCHOR0@ha
	mr 3,31
	la 4,.LANCHOR0@l(4)
	addi 4,4,488
	bl _ZN7idClass12CancelEventsEPK10idEventDef
.LVL1269:
.LBB6225:
.LBB6226:
.LBB6227:
.LBB6228:
	.loc 16 241 0
	lis 4,.LC53@ha
	mr 3,29
	la 4,.LC53@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1270:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L497
.LVL1271:
.LBB6229:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1272:
.L496:
.LBE6229:
.LBE6228:
.LBE6227:
	.loc 16 253 0
	bl atoi
.LBE6226:
.LBE6225:
	.loc 2 747 0
	lis 4,EV_Remove@ha
.LBB6234:
.LBB6232:
	.loc 16 253 0
	mr 5,3
.LBE6232:
.LBE6234:
	.loc 2 747 0
	la 4,EV_Remove@l(4)
	mr 3,31
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LBE6236:
.LBE6238:
	.loc 2 748 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL1273:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1274:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI140:
	.cfi_def_cfa_offset 0
	blr
.LVL1275:
.L497:
.LCFI141:
	.cfi_restore_state
.LBB6239:
.LBB6237:
.LBB6235:
.LBB6233:
.LBB6231:
.LBB6230:
	.loc 16 245 0
	lis 3,.LC31@ha
.LVL1276:
	la 3,.LC31@l(3)
	b .L496
.LBE6230:
.LBE6231:
.LBE6233:
.LBE6235:
.LBE6237:
.LBE6239:
	.cfi_endproc
.LFE2840:
	.size	_ZN12idProjectile6FizzleEv, .-_ZN12idProjectile6FizzleEv
	.align 2
	.globl _ZN12idProjectile12Event_FizzleEv
	.type	_ZN12idProjectile12Event_FizzleEv, @function
_ZN12idProjectile12Event_FizzleEv:
.LFB2847:
	.loc 2 994 0
	.cfi_startproc
.LVL1277:
	.loc 2 996 0
	.loc 2 995 0
	b _ZN12idProjectile6FizzleEv
.LVL1278:
	.cfi_endproc
.LFE2847:
	.size	_ZN12idProjectile12Event_FizzleEv, .-_ZN12idProjectile12Event_FizzleEv
	.align 2
	.globl _ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i
	.type	_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i, @function
_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i:
.LFB2833:
	.loc 2 689 0
	.cfi_startproc
.LVL1279:
	stwu 1,-128(1)
.LCFI142:
	.cfi_def_cfa_offset 128
	mflr 0
.LBB6261:
.LBB6262:
.LBB6263:
.LBB6264:
.LBB6265:
	.loc 16 241 0
	lis 4,.LC102@ha
.LVL1280:
.LBE6265:
.LBE6264:
.LBE6263:
.LBE6262:
.LBE6261:
	.loc 2 689 0
	stw 31,124(1)
.LBB6287:
.LBB6282:
.LBB6277:
.LBB6272:
.LBB6267:
	.loc 16 241 0
	la 4,.LC102@l(4)
.LBE6267:
.LBE6272:
.LBE6277:
.LBE6282:
.LBE6287:
	.loc 2 689 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL1281:
.LBB6288:
.LBB6283:
.LBB6278:
.LBB6273:
.LBB6268:
	.loc 16 241 0
	addi 3,3,100
.LVL1282:
.LBE6268:
.LBE6273:
.LBE6278:
.LBE6283:
.LBE6288:
	.loc 2 689 0
	stw 0,132(1)
	stw 30,120(1)
.LBB6289:
.LBB6284:
.LBB6279:
.LBB6274:
.LBB6269:
	.loc 16 241 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL1283:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L505
.LVL1284:
.LBB6266:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1285:
.L501:
.LBE6266:
.LBE6269:
.LBE6274:
	.loc 16 257 0
	bl atoi
.LBE6279:
.LBE6284:
	.loc 2 690 0
	cmpwi 7,3,0
	beq- 7,.L502
.LVL1286:
.LBE6289:
.LBB6290:
.LBB6291:
.LBB6292:
	.loc 2 693 0
	li 4,0
	li 5,108
	addi 3,1,8
	bl memset
	.loc 2 694 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL1287:
	.loc 2 689 0
	addi 11,1,60
.LBE6292:
.LBE6291:
.LBE6290:
.LBB6321:
.LBB6285:
.LBB6280:
.LBB6275:
.LBB6270:
	.loc 12 333 0
	addi 9,1,24
.L503:
.LVL1288:
.LBE6270:
.LBE6275:
.LBE6280:
.LBE6285:
.LBE6321:
.LBB6322:
.LBB6320:
.LBB6319:
.LBB6293:
.LBB6294:
.LBB6295:
.LBB6296:
	.loc 3 424 0
	lwz 0,0(3)
	stw 0,0(9)
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(3)
.LBE6296:
.LBE6295:
	.loc 12 333 0
	addi 3,3,12
.LBB6298:
.LBB6297:
	.loc 3 426 0
	stw 0,8(9)
.LBE6297:
.LBE6298:
	.loc 12 333 0
	addi 9,9,12
.LVL1289:
	cmpw 7,9,11
	bne+ 7,.L503
.LBE6294:
.LBE6293:
	.loc 2 695 0
	mr 3,31
	.loc 2 699 0
	addi 30,31,936
	.loc 2 695 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1290:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB6299:
.LBB6300:
	.loc 3 424 0
	lwz 0,0(3)
.LBE6300:
.LBE6299:
	.loc 2 695 0
	mr 9,3
.LVL1291:
	.loc 2 696 0
	mr 3,31
.LVL1292:
.LBB6302:
.LBB6301:
	.loc 3 424 0
	stw 0,12(1)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,16(1)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,20(1)
.LBE6301:
.LBE6302:
	.loc 2 696 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1293:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL1294:
	.loc 2 698 0
	lwz 9,0(31)
.LBB6303:
.LBB6304:
	.loc 3 424 0
	lwz 0,0(3)
.LBE6304:
.LBE6303:
	.loc 2 698 0
	addi 4,1,8
	lwz 9,232(9)
	li 5,0
.LBB6309:
.LBB6305:
	.loc 3 424 0
	stw 0,64(1)
.LBE6305:
.LBE6309:
	.loc 2 698 0
	mtctr 9
.LBB6310:
.LBB6306:
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,68(1)
.LBE6306:
.LBE6310:
.LBB6311:
.LBB6312:
	.loc 3 410 0
	li 0,0
.LBE6312:
.LBE6311:
.LBB6315:
.LBB6307:
	.loc 3 426 0
	lwz 11,8(3)
.LBE6307:
.LBE6315:
	.loc 2 698 0
	mr 3,31
.LVL1295:
.LBB6316:
.LBB6313:
	.loc 3 410 0
	stw 0,76(1)
.LBE6313:
.LBE6316:
.LBB6317:
.LBB6308:
	.loc 3 426 0
	stw 11,72(1)
.LVL1296:
.LBE6308:
.LBE6317:
.LBB6318:
.LBB6314:
	.loc 3 412 0
	lis 11,.LC2@ha
	.loc 3 411 0
	stw 0,80(1)
	.loc 3 412 0
	lwz 0,.LC2@l(11)
	stw 0,84(1)
.LBE6314:
.LBE6318:
	.loc 2 698 0
	bctrl
	.loc 2 699 0
	mr 3,30
	bl _ZN14idPhysics_Base13ClearContactsEv
	.loc 2 700 0
	mr 3,30
	bl _ZN19idPhysics_RigidBody9PutToRestEv
.LBE6319:
.LBE6320:
.LBE6322:
	.loc 2 704 0
	lwz 0,132(1)
	lwz 30,120(1)
	mtlr 0
	lwz 31,124(1)
.LVL1297:
	addi 1,1,128
	.cfi_remember_state
.LCFI143:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1298:
.L502:
.LCFI144:
	.cfi_restore_state
.LBB6323:
	.loc 2 702 0
	mr 3,31
	bl _ZN12idProjectile6FizzleEv
.LBE6323:
	.loc 2 704 0
	lwz 0,132(1)
	lwz 30,120(1)
	mtlr 0
	lwz 31,124(1)
.LVL1299:
	addi 1,1,128
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI145:
	.cfi_def_cfa_offset 0
	blr
.LVL1300:
.L505:
.LCFI146:
	.cfi_restore_state
.LBB6324:
.LBB6286:
.LBB6281:
.LBB6276:
.LBB6271:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1301:
	la 3,.LC30@l(3)
	b .L501
.LBE6271:
.LBE6276:
.LBE6281:
.LBE6286:
.LBE6324:
	.cfi_endproc
.LFE2833:
	.size	_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i, .-_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i
	.align 2
	.globl _ZN12idProjectile11GetVelocityEPK6idDict
	.type	_ZN12idProjectile11GetVelocityEPK6idDict, @function
_ZN12idProjectile11GetVelocityEPK6idDict:
.LFB2844:
	.loc 2 953 0
	.cfi_startproc
.LVL1302:
	stwu 1,-16(1)
.LCFI147:
	.cfi_def_cfa_offset 16
	mflr 0
.LBB6325:
	.loc 2 956 0
	lis 5,.LC36@ha
.LBE6325:
	.loc 2 953 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB6326:
	.loc 2 956 0
	mr 3,4
.LVL1303:
	lis 4,.LC35@ha
.LVL1304:
	mr 6,31
	la 5,.LC36@l(5)
	la 4,.LC35@l(4)
.LBE6326:
	.loc 2 953 0
	stw 0,20(1)
.LBB6327:
	.loc 2 956 0
	.cfi_offset 65, 4
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL1305:
.LBE6327:
	.loc 2 958 0
	lwz 0,20(1)
	mr 3,31
	lwz 31,12(1)
.LVL1306:
	mtlr 0
	addi 1,1,16
.LCFI148:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2844:
	.size	_ZN12idProjectile11GetVelocityEPK6idDict, .-_ZN12idProjectile11GetVelocityEPK6idDict
	.align 2
	.globl _ZN12idProjectile10GetGravityEPK6idDict
	.type	_ZN12idProjectile10GetGravityEPK6idDict, @function
_ZN12idProjectile10GetGravityEPK6idDict:
.LFB2845:
	.loc 2 965 0
	.cfi_startproc
.LVL1307:
	stwu 1,-16(1)
.LCFI149:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB6337:
.LBB6338:
.LBB6339:
.LBB6340:
.LBB6341:
	.loc 16 241 0
	mr 3,4
.LVL1308:
	lis 4,.LC43@ha
.LVL1309:
	la 4,.LC43@l(4)
.LBE6341:
.LBE6340:
.LBE6339:
.LBE6338:
.LBE6337:
	.loc 2 965 0
	stw 0,20(1)
.LBB6367:
.LBB6351:
.LBB6347:
.LBB6345:
.LBB6343:
	.loc 16 241 0
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL1310:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L510
.LVL1311:
.LBB6342:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1312:
.LBE6342:
.LBE6343:
.LBE6345:
	.loc 16 249 0
	bl atof
.LVL1313:
.LBE6347:
.LBE6351:
.LBB6352:
.LBB6353:
	.loc 3 396 0
	li 0,0
.LBE6353:
.LBE6352:
.LBB6359:
.LBB6348:
	.loc 16 249 0
	frsp 1,1
.LVL1314:
.LBE6348:
.LBE6359:
.LBB6360:
.LBB6354:
	.loc 3 396 0
	stw 0,0(31)
	.loc 3 397 0
	stw 0,4(31)
.LBE6354:
.LBE6360:
.LBE6367:
	.loc 2 970 0
	mr 3,31
.LBB6368:
	.loc 2 969 0
	fneg 1,1
.LVL1315:
.LBB6361:
.LBB6355:
	.loc 3 398 0
	stfs 1,8(31)
.LBE6355:
.LBE6361:
.LBE6368:
	.loc 2 970 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1316:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI150:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL1317:
.L510:
.LCFI151:
	.cfi_restore_state
.LBB6369:
.LBB6362:
.LBB6349:
.LBB6346:
.LBB6344:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1318:
	la 3,.LC30@l(3)
.LBE6344:
.LBE6346:
	.loc 16 249 0
	bl atof
.LVL1319:
.LBE6349:
.LBE6362:
.LBB6363:
.LBB6356:
	.loc 3 396 0
	li 0,0
.LBE6356:
.LBE6363:
.LBB6364:
.LBB6350:
	.loc 16 249 0
	frsp 1,1
.LVL1320:
.LBE6350:
.LBE6364:
.LBB6365:
.LBB6357:
	.loc 3 396 0
	stw 0,0(31)
	.loc 3 397 0
	stw 0,4(31)
.LBE6357:
.LBE6365:
.LBE6369:
	.loc 2 970 0
	mr 3,31
.LBB6370:
	.loc 2 969 0
	fneg 1,1
.LVL1321:
.LBB6366:
.LBB6358:
	.loc 3 398 0
	stfs 1,8(31)
.LBE6358:
.LBE6366:
.LBE6370:
	.loc 2 970 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1322:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI152:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2845:
	.size	_ZN12idProjectile10GetGravityEPK6idDict, .-_ZN12idProjectile10GetGravityEPK6idDict
	.align 2
	.globl _ZN12idProjectile23ClientPredictionCollideEP8idEntityRK6idDictRK7trace_sRK6idVec3b
	.type	_ZN12idProjectile23ClientPredictionCollideEP8idEntityRK6idDictRK7trace_sRK6idVec3b, @function
_ZN12idProjectile23ClientPredictionCollideEP8idEntityRK6idDictRK7trace_sRK6idVec3b:
.LFB2849:
	.loc 2 1027 0
	.cfi_startproc
.LVL1323:
	mflr 0
	stwu 1,-40(1)
.LCFI153:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 25,12(1)
	mr 25,7
	.cfi_offset 25, -28
	stw 27,20(1)
	mr 27,6
	.cfi_offset 27, -20
	stw 28,24(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 29,28(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 0,44(1)
	stw 26,16(1)
	stw 31,36(1)
.LBB6412:
	.loc 2 1031 0
	lwz 9,88(5)
	cmpwi 7,9,0
	beq- 7,.L512
	.cfi_offset 31, -4
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 2 1031 0 is_stmt 0 discriminator 1
	lwz 0,100(9)
	.loc 2 1032 0 is_stmt 1 discriminator 1
	li 31,0
	.loc 2 1031 0 discriminator 1
	andi. 9,0,256
	beq- 0,.L512
.LVL1324:
.L513:
.LBE6412:
	.loc 2 1065 0
	lwz 0,44(1)
	mr 3,31
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
.LVL1325:
	lwz 28,24(1)
.LVL1326:
	lwz 29,28(1)
.LVL1327:
	lwz 30,32(1)
.LVL1328:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI154:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1329:
.L512:
.LCFI155:
	.cfi_restore_state
.LBB6474:
	.loc 2 1036 0
	lwz 9,100(30)
	.loc 2 1038 0
	li 31,0
	.loc 2 1036 0
	addi 0,9,132
	lis 9,gameLocal@ha
	slwi 0,0,2
	la 9,gameLocal@l(9)
	add 9,9,0
	lwz 26,4(9)
.LVL1330:
	.loc 2 1037 0
	cmpwi 7,26,0
	beq- 7,.L513
.LVL1331:
.LBB6413:
.LBB6414:
	.loc 6 340 0
	lwz 9,0(26)
.LVL1332:
	mr 3,26
.LVL1333:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1334:
.LBE6414:
	.loc 2 2410 0
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB6417:
.LBB6415:
.LBB6416:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L514
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L514
.LBE6416:
.LBE6415:
.LBE6417:
.LBE6413:
	.loc 2 1042 0
	lbz 0,4628(26)
	cmpwi 7,0,0
	bne- 7,.L513
.L514:
.LVL1335:
.LBB6418:
.LBB6419:
	.loc 6 340 0
	lwz 9,0(26)
	mr 3,26
.LVL1336:
.LBE6419:
	.loc 2 2410 0
	lis 31,_ZN7idActor4TypeE@ha
.LBB6426:
	.loc 6 340 0
	lwz 0,0(9)
.LBE6426:
	.loc 2 2410 0
	la 31,_ZN7idActor4TypeE@l(31)
.LBB6427:
	.loc 6 340 0
	mtctr 0
	bctrl
.LVL1337:
.LBB6420:
.LBB6421:
	.loc 6 311 0
	lwz 9,56(31)
.LBE6421:
.LBE6420:
.LBE6427:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB6428:
.LBB6424:
.LBB6422:
	.loc 6 311 0
	cmpw 7,0,9
	bge- 7,.L523
.L516:
.LVL1338:
.LBE6422:
.LBE6424:
.LBE6428:
.LBE6418:
.LBB6430:
.LBB6431:
	.loc 6 340 0
	lwz 9,0(26)
	mr 3,26
.LVL1339:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1340:
.LBE6431:
	.loc 2 2410 0
	lis 9,_ZN14idAFAttachment4TypeE@ha
	la 9,_ZN14idAFAttachment4TypeE@l(9)
	lwz 0,56(3)
.LBB6434:
.LBB6432:
.LBB6433:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L517
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L517
.LBE6433:
.LBE6432:
.LBE6434:
.LBE6430:
	.loc 2 1046 0
	mr 3,26
.LVL1341:
	bl _ZNK14idAFAttachment7GetBodyEv
.LVL1342:
.LBB6435:
.LBB6436:
	.loc 6 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1343:
.LBB6437:
.LBB6438:
	.loc 6 311 0
	lwz 9,56(31)
.LBE6438:
.LBE6437:
.LBE6436:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB6441:
.LBB6440:
.LBB6439:
	.loc 6 311 0
	cmpw 7,0,9
	blt- 7,.L517
	lwz 9,60(31)
	cmpw 7,0,9
	bgt- 7,.L517
.LVL1344:
.L515:
.LBE6439:
.LBE6440:
.LBE6441:
.LBE6435:
.LBB6442:
.LBB6443:
.LBB6444:
.LBB6445:
	.loc 16 241 0 discriminator 5
	lis 4,.LC46@ha
	mr 3,29
	la 4,.LC46@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1345:
	.loc 16 242 0 discriminator 5
	cmpwi 0,3,0
	bne+ 0,.L525
.LVL1346:
.L539:
.LBE6445:
.LBE6444:
.LBE6443:
.LBE6442:
.LBB6446:
.LBB6447:
.LBB6448:
.LBB6449:
	.loc 16 245 0
	lis 3,.LC30@ha
	la 3,.LC30@l(3)
	b .L526
.LVL1347:
.L523:
.LBE6449:
.LBE6448:
.LBE6447:
.LBE6446:
.LBB6454:
.LBB6429:
.LBB6425:
.LBB6423:
	.loc 6 311 0
	lwz 9,60(31)
	cmpw 7,0,9
	ble- 7,.L515
	b .L516
.LVL1348:
.L517:
.LBE6423:
.LBE6425:
.LBE6429:
.LBE6454:
.LBB6455:
.LBB6453:
.LBB6452:
.LBB6451:
	.loc 16 241 0
	lis 4,.LC45@ha
	mr 3,29
	la 4,.LC45@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1349:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L539
.LVL1350:
.L525:
.LBB6450:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1351:
.L526:
.LBE6450:
.LBE6451:
.LBE6452:
	.loc 16 257 0
	bl atoi
.LBE6453:
.LBE6455:
	.loc 2 1052 0
	li 31,0
	.loc 2 1051 0
	cmpwi 7,3,0
	beq- 7,.L513
	.loc 2 1057 0
	cmpwi 7,25,0
	.loc 2 1064 0
	li 31,1
	.loc 2 1057 0
	beq+ 7,.L513
.LVL1352:
.LBB6456:
.LBB6457:
.LBB6458:
.LBB6459:
	.loc 16 241 0
	lis 4,.LC103@ha
	mr 3,29
	la 4,.LC103@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1353:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L533
.LVL1354:
.LBB6460:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1355:
.L520:
.LBE6460:
.LBE6459:
.LBE6458:
	.loc 16 257 0
	bl atoi
.LBE6457:
.LBE6456:
	.loc 2 1064 0
	li 31,1
	.loc 2 1057 0
	cmpwi 7,3,0
	beq- 7,.L513
.LVL1356:
.LBB6464:
.LBB6465:
.LBB6466:
.LBB6467:
	.loc 16 241 0 discriminator 4
	lis 4,.LC104@ha
	addi 3,26,100
	la 4,.LC104@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1357:
	.loc 16 242 0 discriminator 4
	cmpwi 0,3,0
	beq- 0,.L535
.LVL1358:
.LBB6468:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1359:
.L521:
.LBE6468:
.LBE6467:
.LBE6466:
	.loc 16 257 0
	bl atoi
.LBE6465:
.LBE6464:
	.loc 2 1064 0
	li 31,1
	.loc 2 1059 0
	cmpwi 7,3,0
	bne+ 7,.L513
	.loc 2 1061 0
	mr 3,28
	mr 4,29
	mr 5,30
	mr 6,27
	bl _ZN12idProjectile19DefaultDamageEffectEP8idEntityRK6idDictRK7trace_sRK6idVec3
	b .L513
.LVL1360:
.L533:
.LBB6472:
.LBB6463:
.LBB6462:
.LBB6461:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1361:
	la 3,.LC30@l(3)
	b .L520
.LVL1362:
.L535:
.LBE6461:
.LBE6462:
.LBE6463:
.LBE6472:
.LBB6473:
.LBB6471:
.LBB6470:
.LBB6469:
	lis 3,.LC30@ha
.LVL1363:
	la 3,.LC30@l(3)
	b .L521
.LBE6469:
.LBE6470:
.LBE6471:
.LBE6473:
.LBE6474:
	.cfi_endproc
.LFE2849:
	.size	_ZN12idProjectile23ClientPredictionCollideEP8idEntityRK6idDictRK7trace_sRK6idVec3b, .-_ZN12idProjectile23ClientPredictionCollideEP8idEntityRK6idDictRK7trace_sRK6idVec3b
	.align 2
	.globl _ZN12idProjectile7CollideERK7trace_sRK6idVec3
	.type	_ZN12idProjectile7CollideERK7trace_sRK6idVec3, @function
_ZN12idProjectile7CollideERK7trace_sRK6idVec3:
.LFB2830:
	.loc 2 489 0
	.cfi_startproc
.LVL1364:
	mflr 0
	stwu 1,-120(1)
.LCFI156:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	stw 19,60(1)
.LBB6585:
	.loc 2 498 0
	li 19,1
	.cfi_offset 19, -60
.LBE6585:
	.loc 2 489 0
	stw 28,96(1)
	mr 28,5
	.cfi_offset 28, -24
	stw 29,100(1)
	mr 29,4
	.cfi_offset 29, -20
	stw 31,108(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,124(1)
	stfd 31,112(1)
	stw 20,64(1)
	stw 21,68(1)
	stw 22,72(1)
	stw 23,76(1)
	stw 24,80(1)
	stw 25,84(1)
	stw 26,88(1)
	stw 27,92(1)
	stw 30,104(1)
.LBB6595:
	.loc 2 497 0
	lwz 9,1488(3)
	addi 9,9,-3
	cmplwi 7,9,1
	ble- 7,.L541
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 2 502 0
	lis 22,gameLocal@ha
	la 22,gameLocal@l(22)
	addis 21,22,0x25
	lbz 0,2018(21)
	cmpwi 7,0,0
	bne- 7,.L597
.LVL1365:
.LBE6595:
.LBB6596:
.LBB6597:
	.loc 2 511 0
	lwz 9,88(4)
	cmpwi 7,9,0
	beq- 7,.L544
	lwz 0,100(9)
	andi. 9,0,256
	beq- 0,.L544
	.loc 2 512 0
	lis 4,EV_Remove@ha
.LVL1366:
	li 5,0
.LVL1367:
	la 4,EV_Remove@l(4)
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LVL1368:
	.loc 2 513 0
	lis 9,common@ha
	lwz 3,common@l(9)
	lis 4,.LC105@ha
	la 4,.LC105@l(4)
	lwz 9,0(3)
	lwz 0,76(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL1369:
.L541:
.LBE6597:
.LBE6596:
	.loc 2 608 0
	lwz 0,124(1)
	mr 3,19
	lwz 20,64(1)
	mtlr 0
	lwz 19,60(1)
	lwz 21,68(1)
	lwz 22,72(1)
	lwz 23,76(1)
	lwz 24,80(1)
	lwz 25,84(1)
	lwz 26,88(1)
	lwz 27,92(1)
	lwz 28,96(1)
.LVL1370:
	lwz 29,100(1)
.LVL1371:
	lwz 30,104(1)
	lwz 31,108(1)
.LVL1372:
	lfd 31,112(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI157:
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
.LVL1373:
.L544:
.LCFI158:
	.cfi_restore_state
.LBB6886:
.LBB6883:
.LBB6598:
.LBB6599:
	.loc 4 634 0
	lwz 0,636(31)
.LBE6599:
.LBE6598:
	.loc 2 518 0
	lwz 11,100(29)
.LBB6606:
.LBB6600:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
	.loc 4 635 0
	srawi 0,0,12
	addi 10,9,4228
.LBE6600:
.LBE6606:
	.loc 2 518 0
	addi 11,11,132
.LBB6607:
.LBB6601:
	.loc 4 635 0
	slwi 10,10,2
.LBE6601:
.LBE6607:
	.loc 2 518 0
	slwi 11,11,2
.LBB6608:
.LBB6602:
	.loc 4 635 0
	add 10,22,10
.LBE6602:
.LBE6608:
	.loc 2 518 0
	add 11,22,11
.LBB6609:
.LBB6603:
	.loc 4 635 0
	lwz 10,4(10)
.LBE6603:
.LBE6609:
	.loc 2 518 0
	lwz 30,4(11)
.LVL1374:
.LBB6610:
.LBB6604:
	.loc 4 635 0
	cmpw 7,10,0
	beq- 7,.L571
	.loc 4 638 0
	li 0,0
.LVL1375:
.L572:
.LBE6604:
.LBE6610:
	.loc 2 519 0
	cmpw 7,30,0
	.loc 2 521 0
	li 19,1
	.loc 2 519 0
	beq- 7,.L541
.LVL1376:
.LBB6611:
.LBB6612:
	.loc 6 340 0
	lwz 9,0(30)
	mr 3,30
.LVL1377:
.LBE6612:
	.loc 2 2410 0
	lis 20,_ZN8idPlayer4TypeE@ha
.LBB6617:
	.loc 6 340 0
	lwz 0,0(9)
.LBE6617:
	.loc 2 2410 0
	la 20,_ZN8idPlayer4TypeE@l(20)
.LBB6618:
	.loc 6 340 0
	mtctr 0
	bctrl
.LVL1378:
.LBB6613:
.LBB6614:
	.loc 6 311 0
	lwz 9,56(20)
.LBE6614:
.LBE6613:
.LBE6618:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB6619:
.LBB6616:
.LBB6615:
	.loc 6 311 0
	cmpw 7,0,9
	blt- 7,.L546
	lwz 9,60(20)
	cmpw 7,0,9
	bgt- 7,.L546
.LBE6615:
.LBE6616:
.LBE6619:
.LBE6611:
	.loc 2 525 0
	lbz 0,4628(30)
	cmpwi 7,0,0
	beq- 7,.L546
	.loc 2 526 0
	lis 4,EV_Remove@ha
	mr 3,31
.LVL1379:
	la 4,EV_Remove@l(4)
	li 5,0
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
	b .L541
.LVL1380:
.L546:
.LBB6620:
.LBB6621:
	.loc 3 425 0
	lfs 12,4(28)
.LBE6621:
.LBE6620:
.LBB6627:
.LBB6628:
.LBB6629:
.LBB6630:
	.loc 8 276 0
	lis 25,_ZN6idMath5iSqrtE@ha
.LBE6630:
.LBE6629:
.LBE6628:
.LBE6627:
.LBB6643:
.LBB6622:
	.loc 3 424 0
	lfs 11,0(28)
.LBE6622:
.LBE6643:
.LBB6644:
.LBB6639:
.LBB6635:
.LBB6631:
	.loc 8 276 0
	la 25,_ZN6idMath5iSqrtE@l(25)
.LBE6631:
.LBE6635:
	.loc 3 649 0
	fmuls 0,12,12
.LBE6639:
.LBE6644:
.LBB6645:
.LBB6623:
	.loc 3 426 0
	lfs 13,8(28)
.LVL1381:
.LBE6623:
.LBE6645:
.LBB6646:
.LBB6640:
.LBB6636:
.LBB6632:
	.loc 8 275 0
	lis 24,.LC6@ha
	.loc 8 278 0
	lis 23,.LC22@ha
	.loc 8 275 0
	lfs 7,.LC6@l(24)
.LBE6632:
.LBE6636:
.LBE6640:
.LBE6646:
	.loc 2 535 0
	lis 26,.LC30@ha
.LBB6647:
.LBB6624:
	.loc 3 649 0
	fmadds 0,11,11,0
.LBE6624:
.LBE6647:
.LBB6648:
.LBB6641:
.LBB6637:
.LBB6633:
	.loc 8 278 0
	lfs 8,.LC22@l(23)
.LBE6633:
.LBE6637:
.LBE6641:
.LBE6648:
	.loc 2 535 0
	la 26,.LC30@l(26)
	addi 27,31,100
	lis 4,.LC114@ha
	mr 3,27
.LVL1382:
.LBB6649:
.LBB6625:
	.loc 3 649 0
	fmadds 0,13,13,0
.LBE6625:
.LBE6649:
	.loc 2 535 0
	la 4,.LC114@l(4)
	mr 5,26
	addi 6,1,8
.LBB6650:
.LBB6626:
	.loc 3 649 0
	stfs 0,48(1)
.LVL1383:
.LBE6626:
.LBE6650:
.LBB6651:
.LBB6642:
.LBB6638:
.LBB6634:
	.loc 8 275 0
	fmuls 7,0,7
	.loc 8 270 0
	lwz 0,48(1)
.LVL1384:
	.loc 2 489 0
	fneg 7,7
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	lwzx 9,25,9
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 277 0
	stw 0,52(1)
	lfs 0,52(1)
.LVL1385:
	fmr 9,0
.LVL1386:
	.loc 8 278 0
	fmul 10,9,9
	fmadd 10,7,10,8
	fmul 10,9,10
.LVL1387:
	.loc 8 279 0
	fmul 0,10,10
	fmadd 0,7,0,8
.LVL1388:
	fmul 0,10,0
.LVL1389:
	.loc 8 280 0
	frsp 0,0
.LBE6634:
.LBE6638:
	.loc 3 651 0
	fmuls 11,11,0
	.loc 3 652 0
	fmuls 12,12,0
	.loc 3 653 0
	fmuls 0,13,0
	.loc 3 651 0
	stfs 11,24(1)
	.loc 3 652 0
	stfs 12,28(1)
	.loc 3 653 0
	stfs 0,32(1)
.LBE6642:
.LBE6651:
	.loc 2 535 0
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
.LVL1390:
	cmpwi 7,3,0
	beq- 7,.L547
	lis 9,.LC20@ha
.LVL1391:
	lfs 0,8(1)
	lfs 13,.LC20@l(9)
	fcmpu 7,0,13
	bng- 7,.L547
.LBB6652:
.LBB6653:
	.loc 3 448 0
	lfs 12,28(1)
.LBE6653:
.LBE6652:
	.loc 2 536 0
	mr 3,30
.LBB6666:
.LBB6660:
	.loc 3 448 0
	lfs 13,32(1)
.LBE6660:
.LBE6666:
	.loc 2 536 0
	mr 4,31
.LBB6667:
.LBB6661:
	.loc 3 448 0
	lfs 11,24(1)
	fmuls 12,0,12
.LBE6661:
.LBE6667:
	.loc 2 536 0
	lwz 9,0(30)
.LBB6668:
.LBB6662:
	.loc 3 448 0
	fmuls 13,0,13
	fmuls 0,0,11
.LBE6662:
.LBE6668:
	.loc 2 536 0
	lwz 5,104(29)
.LVL1392:
	lwz 0,132(9)
	addi 6,29,56
.LBB6669:
.LBB6663:
.LBB6654:
.LBB6655:
	.loc 3 397 0
	stfs 12,16(1)
.LBE6655:
.LBE6654:
.LBE6663:
.LBE6669:
	.loc 2 536 0
	addi 7,1,12
.LBB6670:
.LBB6664:
.LBB6658:
.LBB6656:
	.loc 3 396 0
	stfs 0,12(1)
.LBE6656:
.LBE6658:
.LBE6664:
.LBE6670:
	.loc 2 536 0
	mtctr 0
.LBB6671:
.LBB6665:
.LBB6659:
.LBB6657:
	.loc 3 398 0
	stfs 13,20(1)
.LBE6657:
.LBE6659:
.LBE6665:
.LBE6671:
	.loc 2 536 0
	bctrl
.LVL1393:
.L547:
	.loc 2 540 0
	lbz 0,2016(21)
	cmpwi 7,0,0
	bne- 7,.L598
.L574:
.LVL1394:
.LBB6672:
.LBB6673:
.LBB6674:
	.loc 6 340 0
	lwz 9,0(30)
	mr 3,30
.LBE6674:
	.loc 2 2410 0
	lis 21,_ZN7idActor4TypeE@ha
.LBB6679:
	.loc 6 340 0
	lwz 0,0(9)
.LBE6679:
	.loc 2 2410 0
	la 21,_ZN7idActor4TypeE@l(21)
.LBB6680:
	.loc 6 340 0
	mtctr 0
	bctrl
.LVL1395:
.LBB6675:
.LBB6676:
	.loc 6 311 0
	lwz 9,56(21)
.LBE6676:
.LBE6675:
.LBE6680:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB6681:
.LBB6678:
.LBB6677:
	.loc 6 311 0
	cmpw 7,0,9
	blt- 7,.L552
	lwz 9,60(21)
	cmpw 7,0,9
	bgt- 7,.L552
.LVL1396:
.L553:
.LBE6677:
.LBE6678:
.LBE6681:
.LBE6673:
	.loc 2 545 0
	lwz 0,640(31)
	.loc 2 546 0
	li 19,0
	.loc 2 545 0
	andis. 9,0,16384
	beq- 0,.L541
.L555:
.LBE6672:
	.loc 2 561 0
	addi 4,29,4
	mr 3,31
	bl _ZN8idEntity9SetOriginERK6idVec3
	.loc 2 562 0
	addi 4,29,16
	mr 3,31
	bl _ZN8idEntity7SetAxisERK6idMat3
	.loc 2 565 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,188(9)
	mtctr 0
	bctrl
.LVL1397:
.LBB6816:
.LBB6817:
	.loc 16 241 0
	lis 4,.LC113@ha
	mr 3,27
	la 4,.LC113@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1398:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L587
.LVL1399:
.LBB6818:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 25,4(9)
.LVL1400:
.L558:
.LBE6818:
.LBE6817:
.LBE6816:
.LBB6820:
	.loc 2 572 0
	lwz 0,192(30)
	.loc 2 569 0
	li 24,0
	.loc 2 572 0
	andis. 9,0,8192
	beq- 0,.L559
.LBB6821:
	.loc 2 573 0
	lis 9,.LC20@ha
	lfs 31,652(31)
	lfs 0,.LC20@l(9)
	fcmpu 7,31,0
	beq- 7,.L599
.L560:
.LVL1401:
.LBB6822:
.LBB6823:
.LBB6824:
	.loc 4 634 0
	lwz 0,636(31)
	rlwinm 9,0,0,20,31
.LVL1402:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,22,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L600
.LVL1403:
.L563:
.LBE6824:
.LBE6823:
.LBE6822:
	.loc 2 589 0
	lbz 0,0(25)
	.loc 2 569 0
	li 24,0
	.loc 2 589 0
	cmpwi 7,0,0
	bne- 7,.L601
.LVL1404:
.L559:
.LBE6821:
.LBE6820:
.LBB6856:
.LBB6857:
.LBB6858:
.LBB6859:
	.loc 16 241 0
	lis 4,.LC103@ha
	mr 3,27
	la 4,.LC103@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1405:
	.loc 16 242 0
	mr. 9,3
	.loc 16 245 0
	mr 3,26
.LVL1406:
	.loc 16 242 0
	beq- 0,.L567
.LVL1407:
.LBB6860:
	.loc 2 2410 0
	lwz 9,4(9)
.LVL1408:
	lwz 3,4(9)
.LVL1409:
.L567:
.LBE6860:
.LBE6859:
.LBE6858:
	.loc 16 257 0
	bl atoi
.LBE6857:
.LBE6856:
	.loc 2 596 0
	cmpwi 7,3,0
	bne- 7,.L602
.L568:
	.loc 2 605 0
	lwz 9,0(31)
	mr 3,31
	mr 4,29
	mr 5,24
	lwz 0,232(9)
	.loc 2 607 0
	li 19,1
	.loc 2 605 0
	mtctr 0
	bctrl
	b .L541
.LVL1410:
.L597:
.LBE6883:
.LBE6886:
.LBB6887:
	.loc 2 503 0
	addi 30,3,100
.LVL1411:
.LBB6586:
.LBB6587:
.LBB6588:
.LBB6589:
	.loc 16 241 0
	lis 4,.LC99@ha
	mr 3,30
	la 4,.LC99@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1412:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L579
.LVL1413:
.LBB6590:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1414:
.L543:
.LBE6590:
.LBE6589:
.LBE6588:
	.loc 16 257 0
	bl atoi
.LBE6587:
.LBE6586:
	.loc 2 503 0
	mr 4,30
	cntlzw 7,3
	mr 5,29
	srwi 7,7,5
	mr 3,31
	mr 6,28
	.loc 2 507 0
	li 19,0
	.loc 2 503 0
	bl _ZN12idProjectile23ClientPredictionCollideEP8idEntityRK6idDictRK7trace_sRK6idVec3b
	cmpwi 7,3,0
	beq+ 7,.L541
	.loc 2 504 0
	lwz 9,0(31)
	mr 3,31
	mr 4,29
	li 5,0
	lwz 0,232(9)
	.loc 2 505 0
	li 19,1
	.loc 2 504 0
	mtctr 0
	bctrl
	.loc 2 505 0
	b .L541
.LVL1415:
.L552:
.LBE6887:
.LBB6888:
.LBB6884:
.LBB6861:
.LBB6682:
.LBB6683:
	.loc 6 340 0
	lwz 9,0(30)
	mr 3,30
.LVL1416:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1417:
.LBE6683:
	.loc 2 2410 0
	lis 9,_ZN14idAFAttachment4TypeE@ha
	la 9,_ZN14idAFAttachment4TypeE@l(9)
	lwz 0,56(3)
.LBB6686:
.LBB6684:
.LBB6685:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L554
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L554
.LBE6685:
.LBE6684:
.LBE6686:
.LBE6682:
	.loc 2 544 0
	mr 3,30
.LVL1418:
	bl _ZNK14idAFAttachment7GetBodyEv
.LVL1419:
.LBB6687:
.LBB6688:
	.loc 6 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1420:
.LBB6689:
.LBB6690:
	.loc 6 311 0
	lwz 9,56(21)
.LBE6690:
.LBE6689:
.LBE6688:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB6693:
.LBB6692:
.LBB6691:
	.loc 6 311 0
	cmpw 7,0,9
	blt- 7,.L554
	lwz 9,60(21)
	cmpw 7,0,9
	ble- 7,.L553
.LVL1421:
.L554:
.LBE6691:
.LBE6692:
.LBE6693:
.LBE6687:
.LBB6694:
	.loc 2 549 0
	lwz 0,640(31)
	cmpwi 7,0,0
	blt+ 7,.L555
.LBB6695:
	.loc 2 550 0
	lis 4,.LC107@ha
	mr 3,31
	la 4,.LC107@l(4)
	li 5,7
	li 6,0
	li 7,1
	li 8,0
	.loc 2 557 0
	li 19,0
	.loc 2 550 0
	bl _ZN8idEntity10StartSoundEPKciibPi
	cmpwi 7,3,0
	bne- 7,.L541
.LVL1422:
.LBB6696:
.LBB6697:
.LBB6698:
	.loc 3 632 0
	lfs 13,4(28)
.LBE6698:
.LBE6697:
	.loc 2 552 0
	lis 9,.LC108@ha
.LBB6715:
.LBB6713:
	.loc 3 632 0
	lfs 0,0(28)
	fmuls 12,13,13
	lfs 13,8(28)
.LBE6713:
.LBE6715:
	.loc 2 552 0
	lfs 10,.LC108@l(9)
.LBB6716:
.LBB6714:
.LBB6699:
.LBB6700:
.LBB6701:
.LBB6702:
	.loc 8 275 0
	lfs 9,.LC6@l(24)
.LBE6702:
.LBE6701:
.LBE6700:
.LBE6699:
	.loc 3 632 0
	fmadds 12,0,0,12
.LBB6711:
.LBB6709:
.LBB6706:
.LBB6703:
	.loc 8 278 0
	lfs 0,.LC22@l(23)
.LBE6703:
.LBE6706:
.LBE6709:
.LBE6711:
	.loc 3 632 0
	fmadds 12,13,13,12
	stfs 12,48(1)
.LVL1423:
.LBB6712:
.LBB6710:
.LBB6707:
.LBB6704:
	.loc 8 275 0
	fmuls 11,12,9
	.loc 8 270 0
	lwz 0,48(1)
.LVL1424:
	.loc 2 489 0
	fneg 11,11
	.loc 8 276 0
	rlwinm 9,0,19,21,29
	rlwinm 11,0,9,24,31
	lwzx 9,25,9
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 277 0
	stw 0,52(1)
	lfs 7,52(1)
	fmr 12,7
.LVL1425:
	.loc 8 278 0
	fmul 13,12,12
	fmadd 13,11,13,0
	fmul 13,12,13
.LVL1426:
	.loc 8 279 0
	fmul 12,13,13
	fmadd 11,11,12,0
.LVL1427:
	fmul 13,13,11
.LVL1428:
.LBE6704:
.LBE6707:
	.loc 8 303 0
	lfs 11,48(1)
.LBB6708:
.LBB6705:
	.loc 8 280 0
	frsp 13,13
.LVL1429:
.LBE6705:
.LBE6708:
	.loc 8 303 0
	fmuls 13,11,13
.LBE6710:
.LBE6712:
.LBE6714:
.LBE6716:
	.loc 2 552 0
	fcmpu 7,13,10
	bng- 7,.L541
	.loc 2 553 0
	lis 9,.LC109@ha
	lfs 12,.LC109@l(9)
	fcmpu 7,13,12
	bgt- 7,.L586
.LBB6717:
.LBB6718:
.LBB6719:
.LBB6720:
	.loc 8 276 0
	lwz 0,576(25)
.LBE6720:
.LBE6719:
.LBE6718:
.LBE6717:
	.loc 2 553 0
	fsubs 13,13,10
.LBB6752:
.LBB6741:
.LBB6731:
.LBB6721:
	.loc 8 278 0
	lis 9,.LC111@ha
	.loc 8 276 0
	oris 0,0,0x3d80
	.loc 8 278 0
	lfs 8,.LC111@l(9)
	.loc 8 277 0
	stw 0,52(1)
.LBE6721:
.LBE6731:
.LBE6741:
.LBE6752:
	.loc 2 553 0
	stfs 13,48(1)
.LVL1430:
.LBB6753:
.LBB6742:
.LBB6732:
.LBB6722:
	.loc 8 277 0
	lfs 7,52(1)
.LBE6722:
.LBE6732:
.LBE6742:
.LBE6753:
.LBB6754:
.LBB6755:
.LBB6756:
.LBB6757:
	.loc 8 270 0
	lwz 0,48(1)
.LVL1431:
.LBE6757:
.LBE6756:
.LBE6755:
.LBE6754:
.LBB6792:
.LBB6743:
.LBB6733:
.LBB6723:
	.loc 8 277 0
	fmr 12,7
.LBE6723:
.LBE6733:
.LBE6743:
.LBE6792:
.LBB6793:
.LBB6780:
.LBB6769:
.LBB6758:
	.loc 8 275 0
	lfs 7,48(1)
	.loc 8 276 0
	rlwinm 9,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,25,0
	subfic 9,9,380
.LBE6758:
.LBE6769:
.LBE6780:
.LBE6793:
.LBB6794:
.LBB6744:
.LBB6734:
.LBB6724:
	.loc 8 278 0
	fmul 13,12,12
.LVL1432:
.LBE6724:
.LBE6734:
.LBE6744:
.LBE6794:
.LBB6795:
.LBB6781:
.LBB6770:
.LBB6759:
	.loc 8 276 0
	rlwinm 9,9,22,0,8
	or 0,9,0
.LBE6759:
.LBE6770:
.LBE6781:
.LBE6795:
	.loc 2 553 0
	lis 9,.LC2@ha
.LBB6796:
.LBB6782:
.LBB6771:
.LBB6760:
	.loc 8 277 0
	stw 0,52(1)
	.loc 8 275 0
	fmuls 11,7,9
.LBE6760:
.LBE6771:
.LBE6782:
.LBE6796:
.LBB6797:
.LBB6745:
.LBB6735:
.LBB6725:
	.loc 2 489 0
	fneg 13,13
.LVL1433:
.LBE6725:
.LBE6735:
.LBE6745:
.LBE6797:
.LBB6798:
.LBB6783:
.LBB6772:
.LBB6761:
	.loc 8 277 0
	lfs 9,52(1)
	.loc 2 489 0
	fneg 11,11
.LVL1434:
.LBE6761:
.LBE6772:
.LBE6783:
.LBE6798:
.LBB6799:
.LBB6746:
.LBB6736:
.LBB6726:
	.loc 8 278 0
	fmadd 13,13,8,0
	fmul 12,12,13
.LBE6726:
.LBE6736:
.LBE6746:
.LBE6799:
.LBB6800:
.LBB6784:
.LBB6773:
.LBB6762:
	.loc 8 277 0
	fmr 13,9
.LVL1435:
.LBE6762:
.LBE6773:
.LBE6784:
.LBE6800:
.LBB6801:
.LBB6747:
.LBB6737:
.LBB6727:
	.loc 8 279 0
	fmul 7,12,12
.LVL1436:
.LBE6727:
.LBE6737:
.LBE6747:
.LBE6801:
.LBB6802:
.LBB6785:
.LBB6774:
.LBB6763:
	.loc 8 278 0
	fmul 9,13,13
.LVL1437:
.LBE6763:
.LBE6774:
.LBE6785:
.LBE6802:
.LBB6803:
.LBB6748:
.LBB6738:
.LBB6728:
	.loc 2 489 0
	fneg 7,7
.LBE6728:
.LBE6738:
.LBE6748:
.LBE6803:
.LBB6804:
.LBB6786:
.LBB6775:
.LBB6764:
	.loc 8 278 0
	fmadd 9,11,9,0
.LBE6764:
.LBE6775:
.LBE6786:
.LBE6804:
.LBB6805:
.LBB6749:
.LBB6739:
.LBB6729:
	.loc 8 279 0
	fmadd 8,7,8,0
.LBE6729:
.LBE6739:
.LBE6749:
.LBE6805:
.LBB6806:
.LBB6787:
.LBB6776:
.LBB6765:
	.loc 8 278 0
	fmul 13,13,9
.LVL1438:
.LBE6765:
.LBE6776:
.LBE6787:
.LBE6806:
.LBB6807:
.LBB6750:
.LBB6740:
.LBB6730:
	.loc 8 279 0
	fmul 12,12,8
	.loc 8 280 0
	frsp 9,12
.LBE6730:
.LBE6740:
.LBE6750:
.LBE6807:
.LBB6808:
.LBB6788:
.LBB6777:
.LBB6766:
	.loc 8 279 0
	fmul 12,13,13
.LBE6766:
.LBE6777:
.LBE6788:
.LBE6808:
.LBB6809:
.LBB6751:
	.loc 8 303 0
	fmuls 10,9,10
.LBE6751:
.LBE6809:
.LBB6810:
.LBB6789:
.LBB6778:
.LBB6767:
	.loc 8 279 0
	fmadd 0,11,12,0
.LVL1439:
.LBE6767:
.LBE6778:
.LBE6789:
.LBE6810:
	.loc 2 553 0
	lfs 12,.LC2@l(9)
.LBB6811:
.LBB6790:
	.loc 8 303 0
	lfs 11,48(1)
.LBE6790:
.LBE6811:
	.loc 2 553 0
	fdivs 12,12,10
.LBB6812:
.LBB6791:
.LBB6779:
.LBB6768:
	.loc 8 279 0
	fmul 13,13,0
.LVL1440:
	.loc 8 280 0
	frsp 1,13
.LBE6768:
.LBE6779:
	.loc 8 303 0
	fmuls 1,11,1
.LBE6791:
.LBE6812:
	.loc 2 553 0
	fmuls 1,1,12
.LVL1441:
.L557:
	mr 3,31
	.loc 2 557 0
	li 19,0
	.loc 2 553 0
	bl _ZN8idEntity14SetSoundVolumeEf
	.loc 2 554 0
	lis 4,.LC112@ha
	mr 3,31
	la 4,.LC112@l(4)
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
	b .L541
.LVL1442:
.L598:
.LBE6696:
.LBE6695:
.LBE6694:
.LBE6861:
.LBB6862:
.LBB6863:
	.loc 6 340 0
	lwz 9,0(30)
	mr 3,30
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1443:
.LBE6863:
	.loc 2 2410 0
	lis 9,_ZN6idDoor4TypeE@ha
	la 9,_ZN6idDoor4TypeE@l(9)
	lwz 0,56(3)
.LBB6866:
.LBB6864:
.LBB6865:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L574
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L574
.LBE6865:
.LBE6864:
.LBE6866:
.LBE6862:
	.loc 2 540 0
	mr 3,30
.LVL1444:
	bl _ZN6idDoor6IsOpenEv
	cmpwi 7,3,0
	bne+ 7,.L574
.LVL1445:
.LBB6867:
.LBB6868:
.LBB6869:
.LBB6870:
	.loc 16 241 0
	lis 4,.LC106@ha
	addi 3,30,100
	la 4,.LC106@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1446:
	.loc 16 242 0
	mr. 9,3
	.loc 16 245 0
	mr 3,26
.LVL1447:
	.loc 16 242 0
	beq- 0,.L550
.LVL1448:
.LBB6871:
	.loc 2 2410 0
	lwz 9,4(9)
.LVL1449:
	lwz 3,4(9)
.LVL1450:
.L550:
.LBE6871:
.LBE6870:
.LBE6869:
	.loc 16 257 0
	bl atoi
.LBE6868:
.LBE6867:
	.loc 2 540 0
	cmpwi 7,3,0
	bne- 7,.L574
.LVL1451:
	.loc 2 541 0
	lis 4,EV_Activate@ha
	li 0,101
	mr 3,30
	la 4,EV_Activate@l(4)
	addi 5,1,40
	stw 0,40(1)
	stw 31,44(1)
	bl _ZN7idClass12ProcessEventEPK10idEventDef10idEventArg
	b .L574
.LVL1452:
.L571:
.LBB6872:
.LBB6605:
	.loc 4 636 0
	addi 9,9,132
.LVL1453:
	slwi 9,9,2
.LVL1454:
	add 9,22,9
	lwz 0,4(9)
	b .L572
.LVL1455:
.L601:
.LBE6605:
.LBE6872:
.LBB6873:
.LBB6853:
.LBB6844:
.LBB6845:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 5,0
.LBE6845:
.LBE6844:
	.loc 2 590 0
	lwz 11,0(30)
.LBB6849:
.LBB6846:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
	.loc 4 635 0
	srawi 0,0,12
	addi 10,9,4228
	slwi 10,10,2
	add 10,22,10
	lwz 10,4(10)
	cmpw 7,10,0
.LBE6846:
.LBE6849:
	.loc 2 590 0
	lwz 0,164(11)
.LVL1456:
.LBB6850:
.LBB6847:
	.loc 4 635 0
	beq- 7,.L603
.LVL1457:
.L565:
.LBE6847:
.LBE6850:
	.loc 2 590 0
	lwz 9,104(29)
	li 8,-1
	cmpwi 7,9,0
	blt- 7,.L604
.L566:
	mr 3,30
	mr 4,31
	addi 6,1,24
	mr 7,25
	fmr 1,31
	mtctr 0
	mr 24,30
	bctrl
.LVL1458:
	b .L559
.LVL1459:
.L599:
	.loc 2 576 0
	lis 9,.LC2@ha
	lfs 31,.LC2@l(9)
	b .L560
.LVL1460:
.L602:
.LBE6853:
.LBE6873:
.LBB6874:
.LBB6875:
.LBB6876:
.LBB6877:
	.loc 16 241 0
	lis 4,.LC104@ha
	addi 3,30,100
	la 4,.LC104@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1461:
	.loc 16 242 0
	mr. 9,3
	.loc 16 245 0
	mr 3,26
.LVL1462:
	.loc 16 242 0
	beq- 0,.L569
.LVL1463:
.LBB6878:
	.loc 2 2410 0
	lwz 9,4(9)
.LVL1464:
	lwz 3,4(9)
.LVL1465:
.L569:
.LBE6878:
.LBE6877:
.LBE6876:
	.loc 16 257 0
	bl atoi
.LBE6875:
.LBE6874:
	.loc 2 598 0
	cmpwi 7,3,0
	beq- 7,.L570
	.loc 2 599 0
	lwz 9,0(30)
	mr 3,30
	mr 4,29
	mr 5,28
	lwz 0,168(9)
	mr 6,25
	mtctr 0
	bctrl
	b .L568
.LVL1466:
.L579:
.LBE6884:
.LBE6888:
.LBB6889:
.LBB6594:
.LBB6593:
.LBB6592:
.LBB6591:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1467:
	la 3,.LC30@l(3)
	b .L543
.LVL1468:
.L570:
.LBE6591:
.LBE6592:
.LBE6593:
.LBE6594:
.LBE6889:
.LBB6890:
.LBB6885:
	.loc 2 601 0
	mr 3,31
	mr 4,29
	mr 5,28
	bl _ZN12idProjectile22AddDefaultDamageEffectERK7trace_sRK6idVec3
	b .L568
.LVL1469:
.L600:
.LBB6879:
.LBB6854:
.LBB6851:
.LBB6826:
.LBB6825:
	.loc 4 636 0
	addi 9,9,132
.LVL1470:
	slwi 9,9,2
.LVL1471:
	add 9,22,9
	lwz 3,4(9)
.LVL1472:
.LBE6825:
.LBE6826:
	.loc 2 580 0
	cmpwi 7,3,0
	beq- 7,.L563
.LVL1473:
.LBB6827:
.LBB6828:
	.loc 6 340 0
	lwz 9,0(3)
.LVL1474:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1475:
.LBB6829:
.LBB6830:
	.loc 6 311 0
	lwz 9,56(20)
.LBE6830:
.LBE6829:
.LBE6828:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB6833:
.LBB6832:
.LBB6831:
	.loc 6 311 0
	cmpw 7,0,9
	blt- 7,.L563
	lwz 9,60(20)
	cmpw 7,0,9
	bgt- 7,.L563
.LVL1476:
.LBE6831:
.LBE6832:
.LBE6833:
.LBE6827:
.LBB6834:
.LBB6835:
	.loc 6 340 0
	lwz 9,0(30)
	mr 3,30
.LVL1477:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1478:
.LBB6836:
.LBB6837:
	.loc 6 311 0
	lwz 9,56(21)
.LBE6837:
.LBE6836:
.LBE6835:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB6840:
.LBB6839:
.LBB6838:
	.loc 6 311 0
	cmpw 7,0,9
	blt- 7,.L563
	lwz 9,60(21)
	cmpw 7,0,9
	bgt- 7,.L563
.LVL1479:
.LBE6838:
.LBE6839:
.LBE6840:
.LBE6834:
.LBB6841:
.LBB6842:
.LBB6843:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 24,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1480:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,22,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L564
	.loc 4 636 0
	addi 9,9,132
.LVL1481:
	slwi 9,9,2
.LVL1482:
	add 9,22,9
	lwz 24,4(9)
.L564:
.LBE6843:
.LBE6842:
	.loc 2 584 0
	li 4,1
	mr 3,24
.LVL1483:
	bl _ZN8idPlayer17AddProjectileHitsEi
	.loc 2 585 0
	mr 3,24
	li 4,1
	bl _ZN8idPlayer15PowerUpModifierEi
	fmuls 31,31,1
.LVL1484:
	b .L563
.LVL1485:
.L587:
.LBE6841:
.LBE6851:
.LBE6854:
.LBE6879:
.LBB6880:
.LBB6819:
	.loc 16 245 0
	lis 25,.LC27@ha
	la 25,.LC27@l(25)
	b .L558
.LVL1486:
.L603:
.LBE6819:
.LBE6880:
.LBB6881:
.LBB6855:
.LBB6852:
.LBB6848:
	.loc 4 636 0
	addi 9,9,132
.LVL1487:
	slwi 9,9,2
.LVL1488:
	add 22,22,9
	lwz 5,4(22)
	b .L565
.L604:
.LBE6848:
.LBE6852:
	.loc 2 590 0
	nor 8,9,9
	b .L566
.LVL1489:
.L586:
.LBE6855:
.LBE6881:
.LBB6882:
.LBB6815:
.LBB6814:
.LBB6813:
	.loc 2 553 0
	lis 9,.LC2@ha
	lfs 1,.LC2@l(9)
	b .L557
.LBE6813:
.LBE6814:
.LBE6815:
.LBE6882:
.LBE6885:
.LBE6890:
	.cfi_endproc
.LFE2830:
	.size	_ZN12idProjectile7CollideERK7trace_sRK6idVec3, .-_ZN12idProjectile7CollideERK7trace_sRK6idVec3
	.align 2
	.globl _ZN18idGuidedProjectileC2Ev
	.type	_ZN18idGuidedProjectileC2Ev, @function
_ZN18idGuidedProjectileC2Ev:
.LFB2857:
	.loc 2 1237 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2857
.LVL1490:
	mflr 0
	stwu 1,-16(1)
.LCFI159:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB20:
.LBB6891:
	.loc 2 1237 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN12idProjectileC2Ev
.LEHE20:
.LVL1491:
	lis 9,_ZTV18idGuidedProjectile+8@ha
	.loc 2 1239 0
	lis 3,.LC115@ha
	.loc 2 1237 0
	la 0,_ZTV18idGuidedProjectile+8@l(9)
	.loc 2 1239 0
	la 3,.LC115@l(3)
	.loc 2 1237 0
	stw 0,0(31)
.LVL1492:
.LBB6892:
.LBB6893:
	.loc 4 590 0
	li 0,0
	stw 0,1500(31)
.LBE6893:
.LBE6892:
	.loc 2 1239 0
	li 4,1564
.LEHB21:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE21:
.LVL1493:
.LBB6894:
.LBB6895:
	.loc 15 146 0
	lis 11,ang_zero@ha
.LBE6895:
.LBE6894:
	.loc 2 1243 0
	li 0,0
.LBB6898:
.LBB6896:
	.loc 15 146 0
	la 9,ang_zero@l(11)
	lwz 8,ang_zero@l(11)
	.loc 15 147 0
	lwz 10,4(9)
	.loc 15 148 0
	lwz 11,8(9)
.LBE6896:
.LBE6898:
.LBB6899:
.LBB6900:
	.loc 4 606 0
	li 9,0
	stw 9,1500(31)
.LBE6900:
.LBE6899:
	.loc 2 1243 0
	stw 0,1496(31)
	.loc 2 1244 0
	stw 0,1544(31)
	.loc 2 1245 0
	stw 0,1548(31)
.LVL1494:
.LBB6901:
.LBB6897:
	.loc 15 146 0
	stw 8,1504(31)
	.loc 15 147 0
	stw 10,1508(31)
	.loc 15 148 0
	stw 11,1512(31)
.LVL1495:
.LBE6897:
.LBE6901:
.LBB6902:
.LBB6903:
	.loc 15 146 0
	stw 8,1516(31)
	.loc 15 147 0
	stw 10,1520(31)
	.loc 15 148 0
	stw 11,1524(31)
.LBE6903:
.LBE6902:
	.loc 2 1248 0
	stw 9,1540(31)
.LVL1496:
.LBB6904:
.LBB6905:
	.loc 15 146 0
	stw 8,1528(31)
	.loc 15 147 0
	stw 10,1532(31)
	.loc 15 148 0
	stw 11,1536(31)
.LBE6905:
.LBE6904:
	.loc 2 1250 0
	stb 9,1552(31)
	.loc 2 1251 0
	stw 0,1556(31)
	.loc 2 1252 0
	stw 0,1560(31)
	.loc 2 1253 0
	stb 9,1553(31)
.LBE6891:
	.loc 2 1254 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1497:
	addi 1,1,16
	.cfi_remember_state
.LCFI160:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1498:
.L607:
.LCFI161:
	.cfi_restore_state
	mr 30,3
.LBB6906:
	.loc 2 1237 0
	mr 3,31
	bl _ZN12idProjectileD2Ev
	mr 3,30
.LEHB22:
	bl _Unwind_Resume
.LEHE22:
.LBE6906:
	.cfi_endproc
.LFE2857:
	.section	.gcc_except_table
.LLSDA2857:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2857-.LLSDACSB2857
.LLSDACSB2857:
	.uleb128 .LEHB20-.LFB2857
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB2857
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L607-.LFB2857
	.uleb128 0
	.uleb128 .LEHB22-.LFB2857
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE2857:
	.section	".text"
	.size	_ZN18idGuidedProjectileC2Ev, .-_ZN18idGuidedProjectileC2Ev
	.align 2
	.globl _ZN17idSoulCubeMissile14CreateInstanceEv
	.type	_ZN17idSoulCubeMissile14CreateInstanceEv, @function
_ZN17idSoulCubeMissile14CreateInstanceEv:
.LFB2869:
	.loc 2 1456 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2869
	mflr 0
	stwu 1,-24(1)
.LCFI162:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB6907:
	li 3,1636
.LBE6907:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB23:
.LBB6912:
	.loc 2 1456 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE23:
	mr 31,3
.LVL1499:
.LEHB24:
.LBB6908:
.LBB6909:
	.loc 18 164 0
	bl _ZN18idGuidedProjectileC2Ev
.LEHE24:
.LVL1500:
	lis 9,_ZTV17idSoulCubeMissile+8@ha
.LBE6909:
.LBE6908:
	.loc 2 1456 0
	mr 3,31
.LBB6911:
.LBB6910:
	.loc 18 164 0
	la 0,_ZTV17idSoulCubeMissile+8@l(9)
	stw 0,0(31)
.LVL1501:
.LEHB25:
.LBE6910:
.LBE6911:
	.loc 2 1456 0
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE25:
.LVL1502:
.L613:
.LBE6912:
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI163:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L614:
.L610:
.LCFI164:
	.cfi_restore_state
.LBB6913:
	cmpwi 7,4,1
	beq- 7,.L612
.LEHB26:
	bl _Unwind_Resume
.LEHE26:
.LVL1503:
.L615:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L610
.LVL1504:
.L612:
.LBE6913:
.LBB6914:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L613
.LBE6914:
	.cfi_endproc
.LFE2869:
	.section	.gcc_except_table
	.align 2
.LLSDA2869:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2869-.LLSDATTD2869
.LLSDATTD2869:
	.byte	0x1
	.uleb128 .LLSDACSE2869-.LLSDACSB2869
.LLSDACSB2869:
	.uleb128 .LEHB23-.LFB2869
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L614-.LFB2869
	.uleb128 0x1
	.uleb128 .LEHB24-.LFB2869
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L615-.LFB2869
	.uleb128 0x3
	.uleb128 .LEHB25-.LFB2869
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L614-.LFB2869
	.uleb128 0x1
	.uleb128 .LEHB26-.LFB2869
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE2869:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2869:
	.section	".text"
	.size	_ZN17idSoulCubeMissile14CreateInstanceEv, .-_ZN17idSoulCubeMissile14CreateInstanceEv
	.align 2
	.globl _ZN18idGuidedProjectile14CreateInstanceEv
	.type	_ZN18idGuidedProjectile14CreateInstanceEv, @function
_ZN18idGuidedProjectile14CreateInstanceEv:
.LFB2854:
	.loc 2 1229 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2854
	mflr 0
	stwu 1,-24(1)
.LCFI165:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB6915:
	li 3,1564
.LBE6915:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB27:
.LBB6916:
	.loc 2 1229 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE27:
	mr 31,3
.LEHB28:
	bl _ZN18idGuidedProjectileC1Ev
.LEHE28:
.LVL1505:
	.loc 2 1229 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB29:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE29:
.LVL1506:
.L621:
.LBE6916:
	.loc 2 1229 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI166:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L622:
.L618:
.LCFI167:
	.cfi_restore_state
.LBB6917:
	cmpwi 7,4,1
	beq- 7,.L620
.LEHB30:
	bl _Unwind_Resume
.LEHE30:
.L623:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L618
.L620:
.LBE6917:
.LBB6918:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L621
.LBE6918:
	.cfi_endproc
.LFE2854:
	.section	.gcc_except_table
	.align 2
.LLSDA2854:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2854-.LLSDATTD2854
.LLSDATTD2854:
	.byte	0x1
	.uleb128 .LLSDACSE2854-.LLSDACSB2854
.LLSDACSB2854:
	.uleb128 .LEHB27-.LFB2854
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L622-.LFB2854
	.uleb128 0x1
	.uleb128 .LEHB28-.LFB2854
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L623-.LFB2854
	.uleb128 0x3
	.uleb128 .LEHB29-.LFB2854
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L622-.LFB2854
	.uleb128 0x1
	.uleb128 .LEHB30-.LFB2854
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE2854:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2854:
	.section	".text"
	.size	_ZN18idGuidedProjectile14CreateInstanceEv, .-_ZN18idGuidedProjectile14CreateInstanceEv
	.align 2
	.globl _ZN17idSoulCubeMissile10KillTargetERK6idVec3
	.type	_ZN17idSoulCubeMissile10KillTargetERK6idVec3, @function
_ZN17idSoulCubeMissile10KillTargetERK6idVec3:
.LFB2881:
	.loc 2 1526 0 is_stmt 1
	.cfi_startproc
.LVL1507:
	mflr 0
	stwu 1,-40(1)
.LCFI168:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
.LBB6972:
.LBB6973:
.LBB6974:
	.loc 2 1624 0
	lis 9,.LC116@ha
	.loc 2 1625 0
	li 10,0
.LBE6974:
.LBE6973:
.LBE6972:
	.loc 2 1526 0
	stw 26,16(1)
	mr 26,4
	.cfi_offset 26, -24
	stw 28,24(1)
.LBB7066:
.LBB6979:
.LBB6980:
	.loc 4 635 0
	lis 28,gameLocal@ha
	.cfi_offset 28, -16
.LBE6980:
.LBE6979:
.LBE7066:
	.loc 2 1526 0
	stw 31,36(1)
.LBB7067:
.LBB6987:
.LBB6981:
	.loc 4 635 0
	la 28,gameLocal@l(28)
.LBE6981:
.LBE6987:
.LBE7067:
	.loc 2 1526 0
	stw 0,44(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL1508:
	stw 27,20(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB7068:
.LBB6988:
.LBB6975:
	.loc 2 1624 0
	lfs 0,.LC116@l(9)
	lfs 13,1496(3)
.LBE6975:
.LBE6988:
.LBB6989:
.LBB6982:
	.loc 4 634 0
	lwz 0,1500(3)
.LBE6982:
.LBE6989:
.LBB6990:
.LBB6976:
	.loc 2 1624 0
	fmuls 0,13,0
	.loc 2 1625 0
	stb 10,1596(3)
.LBE6976:
.LBE6990:
.LBB6991:
.LBB6983:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LBE6983:
.LBE6991:
.LBB6992:
.LBB6977:
	.loc 2 1626 0
	li 10,1
	stb 10,1597(3)
.LBE6977:
.LBE6992:
.LBB6993:
.LBB6984:
	.loc 4 635 0
	addi 11,9,4228
.LBE6984:
.LBE6993:
.LBB6994:
.LBB6978:
	.loc 2 1627 0
	li 10,0
	.loc 2 1624 0
	stfs 0,1496(3)
	.loc 2 1627 0
	stw 10,1484(3)
.LVL1509:
.LBE6978:
.LBE6994:
.LBB6995:
.LBB6985:
	.loc 4 635 0
	slwi 11,11,2
	add 11,28,11
	srawi 0,0,12
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L646
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
.LVL1510:
.L624:
.LBE6985:
.LBE6995:
.LBE7068:
	.loc 2 1551 0
	lwz 0,44(1)
	lwz 26,16(1)
.LVL1511:
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1512:
	addi 1,1,40
	.cfi_remember_state
.LCFI169:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL1513:
.L646:
.LCFI170:
	.cfi_restore_state
.LBB7069:
.LBB6996:
.LBB6986:
	.loc 4 636 0
	addi 9,9,132
.LVL1514:
	slwi 9,9,2
.LVL1515:
	add 9,28,9
	lwz 3,4(9)
.LVL1516:
.LBE6986:
.LBE6996:
	.loc 2 1532 0
	cmpwi 7,3,0
	beq- 7,.L624
.LVL1517:
.LBB6997:
.LBB6998:
	.loc 6 340 0
	lwz 9,0(3)
.LVL1518:
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1519:
.LBE6998:
	.loc 2 2410 0
	lis 9,_ZN7idActor4TypeE@ha
	la 9,_ZN7idActor4TypeE@l(9)
	lwz 0,56(3)
.LBB7001:
.LBB6999:
.LBB7000:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L624
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L624
.LVL1520:
.LBE7000:
.LBE6999:
.LBE7001:
.LBE6997:
.LBB7002:
.LBB7003:
	.loc 4 634 0 discriminator 4
	lwz 0,1500(31)
	.loc 4 638 0 discriminator 4
	li 30,0
	.loc 4 634 0 discriminator 4
	rlwinm 9,0,0,20,31
.LVL1521:
	.loc 4 635 0 discriminator 4
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L647
.LVL1522:
.L626:
.LBE7003:
.LBE7002:
	.loc 2 1534 0
	li 0,1
	.loc 2 1535 0
	mr 3,30
.LVL1523:
	.loc 2 1534 0
	stb 0,1596(31)
	.loc 2 1536 0
	addis 29,28,0x25
	.loc 2 1538 0
	addi 27,31,100
	.loc 2 1535 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,-1
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1524:
.LBB7005:
.LBB7006:
	.loc 13 212 0
	lis 9,.LC6@ha
	lfs 0,0(3)
.LBE7006:
.LBE7005:
.LBB7011:
.LBB7012:
	.loc 16 241 0
	lis 4,.LC117@ha
.LBE7012:
.LBE7011:
.LBB7018:
.LBB7007:
	.loc 13 212 0
	lfs 9,16(3)
.LBE7007:
.LBE7018:
.LBB7019:
.LBB7014:
	.loc 16 241 0
	la 4,.LC117@l(4)
.LBE7014:
.LBE7019:
.LBB7020:
.LBB7008:
	.loc 13 212 0
	lfs 12,4(3)
	lfs 10,20(3)
	lfs 13,8(3)
	fadds 12,9,12
	lfs 11,12(3)
.LBE7008:
.LBE7020:
.LBB7021:
.LBB7015:
	.loc 16 241 0
	mr 3,27
.LVL1525:
.LBE7015:
.LBE7021:
.LBB7022:
.LBB7009:
	.loc 13 212 0
	fadds 13,10,13
	fadds 11,11,0
	lfs 0,.LC6@l(9)
.LBE7009:
.LBE7022:
	.loc 2 1537 0
	li 9,0
.LBB7023:
.LBB7010:
	.loc 13 212 0
	fmuls 12,12,0
.LVL1526:
	fmuls 13,13,0
.LVL1527:
	fmuls 0,11,0
.LBE7010:
.LBE7023:
.LBB7024:
.LBB7025:
	.loc 3 425 0
	stfs 12,1616(31)
	.loc 3 426 0
	stfs 13,1620(31)
	.loc 3 424 0
	stfs 0,1612(31)
.LBE7025:
.LBE7024:
	.loc 2 1536 0
	lwz 0,2004(29)
	.loc 2 1537 0
	stw 9,1628(31)
	.loc 2 1536 0
	stw 0,1624(31)
.LBB7026:
.LBB7016:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1528:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L640
.LVL1529:
.LBB7013:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL1530:
.L627:
.LBE7013:
.LBE7016:
.LBE7026:
	.loc 2 1539 0
	lbz 0,0(5)
	cmpwi 7,0,0
	bne- 7,.L648
.LVL1531:
.LBB7027:
.LBB7028:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 29,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1532:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L649
.LVL1533:
.L629:
.LBE7028:
.LBE7027:
	.loc 2 1544 0
	lwz 0,188(30)
	cmpwi 6,0,0
	ble- 6,.L638
	.loc 2 1544 0 is_stmt 0 discriminator 1
	cmpwi 6,29,0
	beq- 6,.L638
.LVL1534:
.LBB7031:
.LBB7032:
	.loc 6 340 0 is_stmt 1 discriminator 3
	lwz 9,0(29)
.LVL1535:
	mr 3,29
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1536:
.LBE7032:
	.loc 2 2410 0 discriminator 3
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB7037:
.LBB7033:
.LBB7034:
	.loc 6 311 0 discriminator 3
	lwz 11,56(9)
	cmpw 7,0,11
	bge- 7,.L631
.LVL1537:
.L645:
.LBE7034:
.LBE7033:
.LBE7037:
.LBE7031:
	.loc 2 1545 0 discriminator 7
	lwz 0,636(31)
	rlwinm 9,0,0,20,31
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
.LVL1538:
.L638:
	.loc 2 1547 0
	lwz 11,0(30)
	lwz 29,164(11)
.LVL1539:
.LBB7039:
.LBB7040:
	.loc 4 635 0
	beq- 7,.L650
	.loc 4 638 0
	li 28,0
.LVL1540:
.L636:
.LBE7040:
.LBE7039:
.LBB7042:
.LBB7043:
	.loc 16 241 0
	lis 4,.LC113@ha
	mr 3,27
	la 4,.LC113@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1541:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L644
.LVL1542:
.LBB7044:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 7,4(9)
.LVL1543:
.L637:
.LBE7044:
.LBE7043:
.LBE7042:
	.loc 2 1547 0
	lis 9,.LC2@ha
	mr 3,30
.LVL1544:
	mr 4,31
	mr 5,28
	mr 6,26
	lfs 1,.LC2@l(9)
	mtctr 29
	li 8,-1
	bctrl
.LVL1545:
.LBB7046:
.LBB7047:
	.file 22 "d:/Data/Nintendo/DoomGX/src/game/physics/Physics_AF.h"
	.loc 22 859 0
	lis 9,.LC119@ha
	lwz 0,.LC119@l(9)
.LBE7047:
.LBE7046:
	.loc 2 1549 0
	lis 4,.LC120@ha
	mr 3,31
	la 4,.LC120@l(4)
.LBB7049:
.LBB7048:
	.loc 22 859 0
	stw 0,1936(30)
.LBE7048:
.LBE7049:
	.loc 2 1549 0
	li 5,3
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
.LBE7069:
	.loc 2 1551 0
	lwz 0,44(1)
	lwz 26,16(1)
.LVL1546:
	mtlr 0
	lwz 27,20(1)
.LVL1547:
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL1548:
	lwz 31,36(1)
.LVL1549:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI171:
	.cfi_def_cfa_offset 0
	blr
.LVL1550:
.L631:
.LCFI172:
	.cfi_restore_state
.LBB7070:
.LBB7050:
.LBB7038:
.LBB7036:
.LBB7035:
	.loc 6 311 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L645
.LBE7035:
.LBE7036:
.LBE7038:
.LBE7050:
	.loc 2 1544 0
	lwz 0,188(29)
	cmpwi 7,0,0
	ble- 7,.L645
.LVL1551:
.LBB7051:
.LBB7052:
.LBB7053:
.LBB7054:
	.loc 16 241 0 discriminator 5
	lis 4,.LC118@ha
	addi 3,30,100
.LVL1552:
	la 4,.LC118@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1553:
	.loc 16 242 0 discriminator 5
	cmpwi 0,3,0
	beq- 0,.L642
.LVL1554:
.LBB7055:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1555:
.L634:
.LBE7055:
.LBE7054:
.LBE7053:
	.loc 16 257 0
	bl atoi
.LBE7052:
.LBE7051:
	.loc 2 1544 0
	cmpwi 7,3,0
	bne- 7,.L645
	.loc 2 1545 0 discriminator 7
	lwz 0,188(30)
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	mr 3,29
	xoris 0,0,0x8000
	stw 0,12(1)
	lis 0,0x4330
	stw 0,8(1)
	lfd 1,8(1)
	fsub 1,1,0
	frsp 1,1
	bl _ZN8idPlayer14GiveHealthPoolEf
	b .L645
.LVL1556:
.L647:
.LBB7059:
.LBB7004:
	.loc 4 636 0
	addi 9,9,132
.LVL1557:
	slwi 9,9,2
.LVL1558:
	add 9,28,9
	lwz 30,4(9)
	b .L626
.LVL1559:
.L648:
.LBE7004:
.LBE7059:
	.loc 2 1540 0
	lis 9,declManager@ha
	li 4,7
	lwz 3,declManager@l(9)
.LVL1560:
	li 6,1
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
	stw 3,1632(31)
	.loc 2 1541 0
	lwz 0,2004(29)
.LBB7060:
.LBB7029:
	.loc 4 638 0
	li 29,0
.LBE7029:
.LBE7060:
	.loc 2 1541 0
	stw 0,1628(31)
.LVL1561:
.LBB7061:
.LBB7030:
	.loc 4 634 0
	lwz 0,636(31)
	rlwinm 9,0,0,20,31
.LVL1562:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L629
.LVL1563:
.L649:
	.loc 4 636 0
	addi 11,9,132
	slwi 11,11,2
	add 11,28,11
	lwz 29,4(11)
	b .L629
.LVL1564:
.L650:
.LBE7030:
.LBE7061:
.LBB7062:
.LBB7041:
	addi 9,9,132
.LVL1565:
	slwi 9,9,2
.LVL1566:
	add 28,28,9
	lwz 28,4(28)
	b .L636
.LVL1567:
.L640:
.LBE7041:
.LBE7062:
.LBB7063:
.LBB7017:
	.loc 16 245 0
	lis 5,.LC27@ha
	la 5,.LC27@l(5)
	b .L627
.LVL1568:
.L644:
.LBE7017:
.LBE7063:
.LBB7064:
.LBB7045:
	lis 7,.LC27@ha
	la 7,.LC27@l(7)
	b .L637
.LVL1569:
.L642:
.LBE7045:
.LBE7064:
.LBB7065:
.LBB7058:
.LBB7057:
.LBB7056:
	lis 3,.LC30@ha
.LVL1570:
	la 3,.LC30@l(3)
	b .L634
.LBE7056:
.LBE7057:
.LBE7058:
.LBE7065:
.LBE7070:
	.cfi_endproc
.LFE2881:
	.size	_ZN17idSoulCubeMissile10KillTargetERK6idVec3, .-_ZN17idSoulCubeMissile10KillTargetERK6idVec3
	.align 2
	.globl _ZN17idSoulCubeMissile5ThinkEv
	.type	_ZN17idSoulCubeMissile5ThinkEv, @function
_ZN17idSoulCubeMissile5ThinkEv:
.LFB2882:
	.loc 2 1558 0
	.cfi_startproc
.LVL1571:
	mflr 0
	stwu 1,-88(1)
.LCFI173:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stw 31,84(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,92(1)
	stw 27,68(1)
	stw 28,72(1)
	stw 29,76(1)
	stw 30,80(1)
.LBB7113:
	.loc 2 1563 0
	lwz 0,1488(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	cmpwi 7,0,2
	beq- 7,.L671
.LVL1572:
.L651:
.LBE7113:
	.loc 2 1597 0
	lwz 0,92(1)
	lwz 27,68(1)
	mtlr 0
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
.LVL1573:
	addi 1,1,88
	.cfi_remember_state
.LCFI174:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1574:
.L671:
.LCFI175:
	.cfi_restore_state
.LBB7114:
.LBB7115:
	.loc 2 1564 0
	lbz 0,1596(3)
	cmpwi 7,0,0
	bne- 7,.L672
	.loc 2 1572 0
	lis 9,.LC20@ha
	lfs 0,1588(3)
	lfs 13,.LC20@l(9)
	fcmpu 7,0,13
	beq- 7,.L669
	lwz 9,1592(3)
	lis 11,gameLocal+2426836@ha
	lis 0,0x4330
	lwz 11,gameLocal+2426836@l(11)
	xoris 10,9,0x8000
	stw 0,40(1)
	stw 10,44(1)
	lis 10,.LC4@ha
	lfs 13,.LC4@l(10)
	xoris 10,11,0x8000
	stw 10,36(1)
	lis 10,.LC62@ha
	lfd 12,40(1)
	lfs 11,.LC62@l(10)
	stw 0,32(1)
	fsub 12,12,13
	fmuls 0,0,11
	lfd 11,32(1)
	frsp 12,12
	fsub 11,11,13
	fadds 12,12,0
	frsp 11,11
	fcmpu 7,11,12
	blt- 7,.L661
.L669:
	lis 30,.LC6@ha
.LVL1575:
.L670:
	lis 28,_ZN6idMath5iSqrtE@ha
	lis 27,.LC22@ha
	la 28,_ZN6idMath5iSqrtE@l(28)
.L654:
	.loc 2 1577 0
	mr 3,31
	.loc 2 1579 0
	addi 29,31,936
	.loc 2 1577 0
	bl _ZN18idGuidedProjectile5ThinkEv
	.loc 2 1578 0
	lwz 9,0(31)
	mr 3,31
	addi 4,1,8
	lwz 0,236(9)
	mtctr 0
	bctrl
	.loc 2 1579 0
	mr 3,29
	li 4,0
	bl _ZNK19idPhysics_RigidBody9GetOriginEi
.LVL1576:
.LBB7116:
.LBB7117:
	.loc 3 431 0
	lfs 13,12(1)
	lfs 0,4(3)
	lfs 12,8(1)
	fsubs 0,13,0
	lfs 13,0(3)
	lfs 10,16(1)
	fsubs 13,12,13
.LBE7117:
.LBE7116:
.LBB7120:
.LBB7121:
.LBB7122:
.LBB7123:
.LBB7124:
.LBB7125:
	.loc 8 275 0
	lfs 11,.LC6@l(30)
.LBE7125:
.LBE7124:
.LBE7123:
.LBE7122:
	.loc 3 632 0
	fmuls 12,0,0
.LBE7121:
.LBE7120:
.LBB7143:
.LBB7118:
	.loc 3 431 0
	lfs 0,8(3)
	fsubs 0,10,0
.LVL1577:
	.loc 3 632 0
	fmadds 13,13,13,12
.LVL1578:
.LBE7118:
.LBE7143:
.LBB7144:
.LBB7140:
.LBB7137:
.LBB7134:
.LBB7130:
.LBB7126:
	.loc 8 278 0
	lfs 12,.LC22@l(27)
.LBE7126:
.LBE7130:
.LBE7134:
.LBE7137:
.LBE7140:
.LBE7144:
.LBB7145:
.LBB7119:
	.loc 3 632 0
	fmadds 13,0,0,13
	stfs 13,56(1)
.LVL1579:
.LBE7119:
.LBE7145:
.LBB7146:
.LBB7141:
.LBB7138:
.LBB7135:
.LBB7131:
.LBB7127:
	.loc 8 275 0
	fmuls 11,13,11
	.loc 8 270 0
	lwz 0,56(1)
.LVL1580:
	.loc 2 1558 0
	fneg 11,11
	.loc 8 276 0
	rlwinm 9,0,19,21,29
	rlwinm 11,0,9,24,31
	lwzx 9,28,9
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
.LBE7127:
.LBE7131:
.LBE7135:
.LBE7138:
.LBE7141:
.LBE7146:
	.loc 2 1579 0
	lis 9,.LC121@ha
.LBB7147:
.LBB7142:
.LBB7139:
.LBB7136:
.LBB7132:
.LBB7128:
	.loc 8 277 0
	stw 0,60(1)
	lfs 0,60(1)
.LVL1581:
	fmr 13,0
.LVL1582:
	.loc 8 278 0
	fmul 0,13,13
.LVL1583:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL1584:
	.loc 8 279 0
	fmul 13,0,0
	fmadd 12,11,13,12
.LVL1585:
.LBE7128:
.LBE7132:
	.loc 8 303 0
	lfs 13,56(1)
.LBB7133:
.LBB7129:
	.loc 8 279 0
	fmul 0,0,12
.LVL1586:
	.loc 8 280 0
	frsp 0,0
.LVL1587:
.LBE7129:
.LBE7133:
	.loc 8 303 0
	fmuls 0,13,0
.LBE7136:
.LBE7139:
.LBE7142:
.LBE7147:
	.loc 2 1579 0
	lfs 13,.LC121@l(9)
	fcmpu 7,0,13
	bnl- 7,.L651
	.loc 2 1580 0
	lbz 0,1597(31)
	cmpwi 7,0,0
	bne- 7,.L673
	.loc 2 1592 0
	lbz 0,1596(31)
	cmpwi 7,0,0
	bne+ 7,.L651
	.loc 2 1593 0
	mr 3,29
.LVL1588:
	li 4,0
	bl _ZNK19idPhysics_RigidBody7GetAxisEi
	mr 4,3
.LVL1589:
	mr 3,31
.LVL1590:
	bl _ZN17idSoulCubeMissile10KillTargetERK6idVec3
.LVL1591:
	b .L651
.LVL1592:
.L672:
	.loc 2 1566 0
	lis 9,gameLocal@ha
	lwz 11,1624(3)
	la 9,gameLocal@l(9)
	addis 29,9,0x25
	addi 11,11,1499
	lwz 0,2004(29)
	cmpw 7,11,0
	blt+ 7,.L669
.LBB7148:
.LBB7149:
.LBB7150:
.LBB7151:
.LBB7152:
.LBB7153:
	.loc 7 71 0
	addis 9,9,0x1
	lis 11,0x1
	lwz 0,-32064(9)
	ori 11,11,3533
.LBE7153:
.LBE7152:
.LBE7151:
.LBE7150:
	.loc 7 87 0
	lis 30,.LC6@ha
.LBE7149:
.LBE7148:
	.loc 2 1567 0
	lis 7,mat3_identity@ha
.LBB7176:
.LBB7172:
.LBB7166:
.LBB7160:
.LBB7157:
.LBB7154:
	.loc 7 71 0
	mullw 11,11,0
.LBE7154:
.LBE7157:
	.loc 7 83 0
	lis 0,0x4330
	stw 0,24(1)
.LBE7160:
.LBE7166:
.LBE7172:
.LBE7176:
	.loc 2 1567 0
	addi 6,31,1612
	la 7,mat3_identity@l(7)
.LBB7177:
.LBB7173:
.LBB7167:
.LBB7161:
.LBB7158:
.LBB7155:
	.loc 7 71 0
	addi 0,11,1
	.loc 7 72 0
	rlwinm 11,0,0,17,31
.LBE7155:
.LBE7158:
	.loc 7 83 0
	xoris 11,11,0x8000
	stw 11,28(1)
	lis 11,.LC4@ha
	lfs 0,.LC4@l(11)
.LBE7161:
.LBE7167:
	.loc 7 87 0
	lis 11,.LC5@ha
.LBB7168:
.LBB7162:
	.loc 7 83 0
	lfd 1,24(1)
.LBE7162:
.LBE7168:
	.loc 7 87 0
	lfs 13,.LC5@l(11)
.LBB7169:
.LBB7163:
	.loc 7 83 0
	fsub 1,1,0
.LBE7163:
.LBE7169:
	.loc 7 87 0
	lfs 0,.LC6@l(30)
.LBE7173:
.LBE7177:
	.loc 2 1567 0
	lwz 4,1632(3)
	lwz 5,1628(3)
.LVL1593:
.LBB7178:
.LBB7174:
.LBB7170:
.LBB7164:
	.loc 7 83 0
	frsp 1,1
.LBE7164:
.LBE7170:
.LBE7174:
.LBE7178:
	.loc 2 1567 0
	lwz 3,1972(29)
.LBB7179:
.LBB7175:
.LBB7171:
.LBB7165:
.LBB7159:
.LBB7156:
	.loc 7 71 0
	stw 0,-32064(9)
.LBE7156:
.LBE7159:
.LBE7165:
.LBE7171:
	.loc 7 87 0
	fmsubs 1,1,13,0
.LBE7175:
.LBE7179:
	.loc 2 1567 0
	fadds 1,1,1
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
	cmpwi 7,3,0
	bne- 7,.L670
	.loc 2 1568 0
	lwz 0,2004(29)
	lis 28,_ZN6idMath5iSqrtE@ha
	la 28,_ZN6idMath5iSqrtE@l(28)
	lis 27,.LC22@ha
	stw 0,1628(31)
	b .L654
.LVL1594:
.L673:
	.loc 2 1581 0
	mr 3,31
.LVL1595:
	li 4,0
	li 5,0
	bl _ZN8idEntity9StopSoundEib
	.loc 2 1582 0
	lis 4,.LC122@ha
	la 4,.LC122@l(4)
	li 5,4
	li 6,0
	li 7,0
	li 8,0
	mr 3,31
	bl _ZN8idEntity10StartSoundEPKciibPi
	.loc 2 1583 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 2 1584 0
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	lis 4,EV_Remove@ha
	mr 3,31
	la 4,EV_Remove@l(4)
	bl _ZN7idClass12PostEventSecEPK10idEventDeff
.LVL1596:
.LBB7180:
.LBB7181:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL1597:
	.loc 4 635 0
	la 9,gameLocal@l(9)
	addi 10,11,4228
	srawi 0,0,12
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L674
.LVL1598:
.L660:
.LBE7181:
.LBE7180:
	.loc 2 1591 0
	li 0,3
	stw 0,1488(31)
	b .L651
.LVL1599:
.L661:
	.loc 2 1573 0
	subf 9,9,11
	stw 0,48(1)
	xoris 9,9,0x8000
.LBB7183:
.LBB7184:
.LBB7185:
.LBB7186:
.LBB7187:
.LBB7188:
	.loc 8 276 0
	lis 28,_ZN6idMath5iSqrtE@ha
.LBE7188:
.LBE7187:
.LBE7186:
.LBE7185:
.LBE7184:
.LBE7183:
	.loc 2 1573 0
	stw 9,52(1)
.LBB7212:
.LBB7207:
.LBB7203:
.LBB7199:
.LBB7194:
.LBB7189:
	.loc 8 276 0
	la 28,_ZN6idMath5iSqrtE@l(28)
	.loc 8 275 0
	lis 30,.LC6@ha
	.loc 8 278 0
	lis 27,.LC22@ha
.LBE7189:
.LBE7194:
.LBE7199:
.LBE7203:
.LBE7207:
.LBE7212:
	.loc 2 1573 0
	lfd 12,48(1)
.LBB7213:
.LBB7214:
	.loc 3 452 0
	lfs 8,1568(3)
.LBE7214:
.LBE7213:
	.loc 2 1573 0
	fsub 13,12,13
.LBB7219:
.LBB7215:
	.loc 3 452 0
	lfs 10,1580(3)
	lfs 9,1564(3)
	fadds 10,8,10
	lfs 11,1572(3)
.LBE7215:
.LBE7219:
	.loc 2 1573 0
	frsp 12,13
.LBB7220:
.LBB7216:
	.loc 3 452 0
	lfs 13,1576(3)
	lfs 6,1584(3)
	fadds 13,9,13
.LBE7216:
.LBE7220:
.LBB7221:
.LBB7208:
.LBB7204:
.LBB7200:
.LBB7195:
.LBB7190:
	.loc 8 275 0
	lfs 7,.LC6@l(30)
.LBE7190:
.LBE7195:
.LBE7200:
.LBE7204:
.LBE7208:
.LBE7221:
	.loc 2 1573 0
	fdivs 0,12,0
.LVL1600:
.LBB7222:
.LBB7209:
.LBB7205:
.LBB7201:
.LBB7196:
.LBB7191:
	.loc 8 278 0
	lfs 12,.LC22@l(27)
.LBE7191:
.LBE7196:
.LBE7201:
.LBE7205:
.LBE7209:
.LBE7222:
.LBB7223:
.LBB7217:
	.loc 3 452 0
	fmadds 10,0,10,8
.LVL1601:
	fmadds 13,0,13,9
.LVL1602:
	fadds 8,11,6
.LBE7217:
.LBE7223:
.LBB7224:
.LBB7210:
	.loc 3 632 0
	fmuls 10,10,10
.LBE7210:
.LBE7224:
.LBB7225:
.LBB7218:
	.loc 3 452 0
	fmadds 0,0,8,11
.LVL1603:
	.loc 3 632 0
	fmadds 13,13,13,10
.LVL1604:
	fmadds 13,0,0,13
	stfs 13,56(1)
.LVL1605:
.LBE7218:
.LBE7225:
.LBB7226:
.LBB7211:
.LBB7206:
.LBB7202:
.LBB7197:
.LBB7192:
	.loc 8 275 0
	fmuls 11,13,7
	.loc 8 270 0
	lwz 0,56(1)
.LVL1606:
	.loc 2 1558 0
	fneg 11,11
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 9,28,0
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 277 0
	stw 0,60(1)
	lfs 0,60(1)
.LVL1607:
	fmr 13,0
.LVL1608:
	.loc 8 278 0
	fmul 0,13,13
.LVL1609:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL1610:
	.loc 8 279 0
	fmul 13,0,0
	fmadd 12,11,13,12
.LVL1611:
.LBE7192:
.LBE7197:
	.loc 8 303 0
	lfs 13,56(1)
.LBB7198:
.LBB7193:
	.loc 8 279 0
	fmul 0,0,12
.LVL1612:
	.loc 8 280 0
	frsp 0,0
.LVL1613:
.LBE7193:
.LBE7198:
	.loc 8 303 0
	fmuls 0,13,0
.LBE7202:
.LBE7206:
.LBE7211:
.LBE7226:
	.loc 2 1574 0
	stfs 0,1496(3)
	b .L654
.LVL1614:
.L674:
.LBB7227:
.LBB7182:
	.loc 4 636 0
	addi 11,11,132
.LVL1615:
	slwi 11,11,2
.LVL1616:
	add 9,9,11
	lwz 30,4(9)
.LBE7182:
.LBE7227:
	.loc 2 1587 0
	cmpwi 7,30,0
	beq- 7,.L660
.LVL1617:
.LBB7228:
.LBB7229:
	.loc 6 340 0
	lwz 9,0(30)
.LVL1618:
	mr 3,30
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1619:
.LBE7229:
	.loc 2 2410 0
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB7232:
.LBB7230:
.LBB7231:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L660
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L660
.LBE7231:
.LBE7230:
.LBE7232:
.LBE7228:
	.loc 2 1588 0
	mr 3,30
.LVL1620:
	li 4,0
	bl _ZN8idPlayer21SetSoulCubeProjectileEP12idProjectile
	b .L660
.LBE7115:
.LBE7114:
	.cfi_endproc
.LFE2882:
	.size	_ZN17idSoulCubeMissile5ThinkEv, .-_ZN17idSoulCubeMissile5ThinkEv
	.align 2
	.globl _ZN17idSoulCubeMissile13ReturnToOwnerEv
	.type	_ZN17idSoulCubeMissile13ReturnToOwnerEv, @function
_ZN17idSoulCubeMissile13ReturnToOwnerEv:
.LFB2884:
	.loc 2 1623 0
	.cfi_startproc
.LVL1621:
	.loc 2 1624 0
	lis 9,.LC116@ha
	lfs 13,1496(3)
	lfs 0,.LC116@l(9)
	.loc 2 1625 0
	li 0,0
	stb 0,1596(3)
	.loc 2 1626 0
	li 0,1
	.loc 2 1624 0
	fmuls 0,13,0
	.loc 2 1626 0
	stb 0,1597(3)
	.loc 2 1627 0
	li 0,0
	.loc 2 1628 0
	.loc 2 1627 0
	stw 0,1484(3)
	.loc 2 1624 0
	stfs 0,1496(3)
	.loc 2 1628 0
	blr
	.cfi_endproc
.LFE2884:
	.size	_ZN17idSoulCubeMissile13ReturnToOwnerEv, .-_ZN17idSoulCubeMissile13ReturnToOwnerEv
	.align 2
	.globl _ZN15idBFGProjectile9FreeBeamsEv
	.type	_ZN15idBFGProjectile9FreeBeamsEv, @function
_ZN15idBFGProjectile9FreeBeamsEv:
.LFB2901:
	.loc 2 1791 0
	.cfi_startproc
.LVL1622:
	mflr 0
	stwu 1,-32(1)
.LCFI176:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 30,24(1)
	stw 31,28(1)
.LBB7233:
.LBB7234:
	.loc 2 1792 0
	lwz 9,1496(3)
	cmpwi 7,9,0
	ble- 7,.L677
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	li 31,0
	li 30,0
	.loc 2 1794 0
	lis 27,gameRenderWorld@ha
	.loc 2 1795 0
	li 28,-1
.LVL1623:
.L679:
	.loc 2 1793 0
	lwz 11,1508(29)
	.loc 2 1792 0
	addi 30,30,1
.LVL1624:
	.loc 2 1793 0
	add 11,11,31
	lwz 0,220(11)
	cmpwi 7,0,0
	.loc 2 1794 0
	mr 4,0
	.loc 2 1793 0
	blt- 7,.L678
	.loc 2 1794 0
	lwz 3,gameRenderWorld@l(27)
.LVL1625:
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
.LVL1626:
	.loc 2 1795 0
	lwz 9,1508(29)
	add 9,9,31
	stw 28,220(9)
	lwz 9,1496(29)
.LVL1627:
.L678:
	.loc 2 1792 0
	cmpw 7,9,30
	addi 31,31,224
	bgt+ 7,.L679
.LVL1628:
.L677:
.LBE7234:
	.loc 2 1799 0
	lis 3,gameLocal@ha
	la 3,gameLocal@l(3)
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL1629:
	.loc 2 1800 0
	cmpwi 0,3,0
	beq- 0,.L676
.LVL1630:
.LBB7235:
.LBB7236:
	.loc 14 84 0
	li 0,0
	stb 0,4384(3)
.LVL1631:
.L676:
.LBE7236:
.LBE7235:
.LBE7233:
	.loc 2 1803 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1632:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI177:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2901:
	.size	_ZN15idBFGProjectile9FreeBeamsEv, .-_ZN15idBFGProjectile9FreeBeamsEv
	.align 2
	.globl _ZN15idBFGProjectile17Event_RemoveBeamsEv
	.type	_ZN15idBFGProjectile17Event_RemoveBeamsEv, @function
_ZN15idBFGProjectile17Event_RemoveBeamsEv:
.LFB2907:
	.loc 2 1971 0
	.cfi_startproc
.LVL1633:
	stwu 1,-16(1)
.LCFI178:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1972 0
	.cfi_offset 65, 4
	bl _ZN15idBFGProjectile9FreeBeamsEv
.LVL1634:
	.loc 2 1973 0
	mr 3,31
	bl _ZN8idEntity13UpdateVisualsEv
	.loc 2 1974 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1635:
	mtlr 0
	addi 1,1,16
.LCFI179:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2907:
	.size	_ZN15idBFGProjectile17Event_RemoveBeamsEv, .-_ZN15idBFGProjectile17Event_RemoveBeamsEv
	.align 2
	.globl _ZN8idDebris6CreateEP8idEntityRK6idVec3RK6idMat3
	.type	_ZN8idDebris6CreateEP8idEntityRK6idVec3RK6idMat3, @function
_ZN8idDebris6CreateEP8idEntityRK6idVec3RK6idMat3:
.LFB2912:
	.loc 2 2086 0
	.cfi_startproc
.LVL1636:
	stwu 1,-24(1)
.LCFI180:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,28(1)
	stw 28,8(1)
	mr 28,5
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,12(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 30,16(1)
	.loc 2 2086 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 2 2087 0
	bl _ZN8idEntity6UnbindEv
.LVL1637:
	.loc 2 2088 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	mr 4,28
	lwz 9,0(3)
	li 5,-1
	lwz 0,116(9)
	mtctr 0
	bctrl
	.loc 2 2089 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	mr 4,29
	lwz 9,0(3)
	li 5,-1
	lwz 0,120(9)
	mtctr 0
	bctrl
	.loc 2 2090 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	li 5,-1
	lwz 0,40(9)
	mtctr 0
	bctrl
.LVL1638:
.LBB7237:
.LBB7238:
	.loc 4 605 0
	cmpwi 7,30,0
	beq- 7,.L686
	.loc 4 608 0
	lwz 9,4(30)
	lis 11,gameLocal@ha
	la 11,gameLocal@l(11)
.LBE7238:
.LBE7237:
	.loc 2 2095 0
	mr 3,31
.LBB7242:
.LBB7239:
	.loc 4 608 0
	addi 0,9,4228
	slwi 0,0,2
	add 11,11,0
	lwz 0,4(11)
	slwi 0,0,12
	or 9,0,9
.LBE7239:
.LBE7242:
	.loc 2 2092 0
	li 0,0
	stw 0,1184(31)
	.loc 2 2093 0
	stw 0,1188(31)
	.loc 2 2094 0
	stw 0,1192(31)
.LBB7243:
.LBB7240:
	.loc 4 608 0
	stw 9,636(31)
.LBE7240:
.LBE7243:
	.loc 2 2095 0
	bl _ZN8idEntity13UpdateVisualsEv
	.loc 2 2096 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL1639:
	mtlr 0
	lwz 29,12(1)
.LVL1640:
	lwz 30,16(1)
.LVL1641:
	lwz 31,20(1)
.LVL1642:
	addi 1,1,24
	.cfi_remember_state
.LCFI181:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1643:
.L686:
.LCFI182:
	.cfi_restore_state
	.loc 2 2092 0
	li 0,0
.LBB7244:
.LBB7241:
	.loc 4 606 0
	stw 30,636(31)
.LBE7241:
.LBE7244:
	.loc 2 2092 0
	stw 0,1184(31)
	.loc 2 2095 0
	mr 3,31
	.loc 2 2093 0
	stw 0,1188(31)
	.loc 2 2094 0
	stw 0,1192(31)
	.loc 2 2095 0
	bl _ZN8idEntity13UpdateVisualsEv
	.loc 2 2096 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL1644:
	mtlr 0
	lwz 29,12(1)
.LVL1645:
	lwz 30,16(1)
.LVL1646:
	lwz 31,20(1)
.LVL1647:
	addi 1,1,24
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI183:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2912:
	.size	_ZN8idDebris6CreateEP8idEntityRK6idVec3RK6idMat3, .-_ZN8idDebris6CreateEP8idEntityRK6idVec3RK6idMat3
	.align 2
	.globl _ZN8idDebrisC2Ev
	.type	_ZN8idDebrisC2Ev, @function
_ZN8idDebrisC2Ev:
.LFB2914:
	.loc 2 2103 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2914
.LVL1648:
	mflr 0
	stwu 1,-24(1)
.LCFI184:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	stw 29,12(1)
.LEHB31:
.LBB7245:
	.loc 2 2103 0
	.cfi_offset 29, -12
	bl _ZN8idEntityC2Ev
.LEHE31:
.LVL1649:
	lis 9,_ZTV8idDebris+8@ha
	addi 30,31,640
	la 0,_ZTV8idDebris+8@l(9)
	mr 3,30
	stw 0,0(31)
.LVL1650:
.LBB7246:
.LBB7247:
	.loc 4 590 0
	li 0,0
	stw 0,636(31)
.LEHB32:
.LBE7247:
.LBE7246:
	.loc 2 2103 0
	bl _ZN19idPhysics_RigidBodyC1Ev
.LEHE32:
	.loc 2 2105 0
	lis 3,.LC123@ha
	li 4,1196
	la 3,.LC123@l(3)
.LEHB33:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE33:
.LVL1651:
.LBB7248:
.LBB7249:
	.loc 4 606 0
	li 0,0
	stw 0,636(31)
.LBE7249:
.LBE7248:
	.loc 2 2109 0
	stw 0,1184(31)
	.loc 2 2110 0
	stw 0,1188(31)
	.loc 2 2111 0
	stw 0,1192(31)
.LBE7245:
	.loc 2 2112 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1652:
	addi 1,1,24
	.cfi_remember_state
.LCFI185:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1653:
.L690:
.LCFI186:
	.cfi_restore_state
	mr 30,3
.L689:
.LBB7250:
	.loc 2 2103 0
	mr 3,31
	bl _ZN8idEntityD2Ev
	mr 3,30
.LEHB34:
	bl _Unwind_Resume
.LEHE34:
.L691:
	mr 29,3
	mr 3,30
	bl _ZN19idPhysics_RigidBodyD1Ev
	mr 30,29
	b .L689
.LBE7250:
	.cfi_endproc
.LFE2914:
	.section	.gcc_except_table
.LLSDA2914:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2914-.LLSDACSB2914
.LLSDACSB2914:
	.uleb128 .LEHB31-.LFB2914
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB2914
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L690-.LFB2914
	.uleb128 0
	.uleb128 .LEHB33-.LFB2914
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L691-.LFB2914
	.uleb128 0
	.uleb128 .LEHB34-.LFB2914
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE2914:
	.section	".text"
	.size	_ZN8idDebrisC2Ev, .-_ZN8idDebrisC2Ev
	.align 2
	.globl _ZN8idDebris14CreateInstanceEv
	.type	_ZN8idDebris14CreateInstanceEv, @function
_ZN8idDebris14CreateInstanceEv:
.LFB2909:
	.loc 2 2065 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2909
	mflr 0
	stwu 1,-24(1)
.LCFI187:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB7251:
	li 3,1196
.LBE7251:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB35:
.LBB7252:
	.loc 2 2065 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE35:
	mr 31,3
.LEHB36:
	bl _ZN8idDebrisC1Ev
.LEHE36:
.LVL1654:
	.loc 2 2065 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB37:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE37:
.LVL1655:
.L697:
.LBE7252:
	.loc 2 2065 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI188:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L698:
.L694:
.LCFI189:
	.cfi_restore_state
.LBB7253:
	cmpwi 7,4,1
	beq- 7,.L696
.LEHB38:
	bl _Unwind_Resume
.LEHE38:
.L699:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L694
.L696:
.LBE7253:
.LBB7254:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L697
.LBE7254:
	.cfi_endproc
.LFE2909:
	.section	.gcc_except_table
	.align 2
.LLSDA2909:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2909-.LLSDATTD2909
.LLSDATTD2909:
	.byte	0x1
	.uleb128 .LLSDACSE2909-.LLSDACSB2909
.LLSDACSB2909:
	.uleb128 .LEHB35-.LFB2909
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L698-.LFB2909
	.uleb128 0x1
	.uleb128 .LEHB36-.LFB2909
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L699-.LFB2909
	.uleb128 0x3
	.uleb128 .LEHB37-.LFB2909
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L698-.LFB2909
	.uleb128 0x1
	.uleb128 .LEHB38-.LFB2909
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE2909:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2909:
	.section	".text"
	.size	_ZN8idDebris14CreateInstanceEv, .-_ZN8idDebris14CreateInstanceEv
	.align 2
	.globl _ZN8idDebris6LaunchEv
	.type	_ZN8idDebris6LaunchEv, @function
_ZN8idDebris6LaunchEv:
.LFB2922:
	.loc 2 2158 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2922
.LVL1656:
	stwu 1,-3120(1)
.LCFI190:
	.cfi_def_cfa_offset 3120
	mflr 0
.LBB7383:
	.loc 2 2172 0
	lis 9,_ZN6idMath8M_MS2SECE@ha
	.loc 2 2174 0
	lis 4,.LC35@ha
.LBE7383:
	.loc 2 2158 0
	stw 28,3024(1)
.LBB7787:
	.loc 2 2172 0
	lis 28,gameLocal@ha
	.cfi_offset 28, -96
	.cfi_register 65, 0
.LBE7787:
	.loc 2 2158 0
	stw 26,3016(1)
.LBB7788:
	.loc 2 2172 0
	la 28,gameLocal@l(28)
.LBE7788:
	.loc 2 2158 0
	stw 27,3020(1)
.LBB7789:
	.loc 2 2172 0
	addis 27,28,0x25
	.cfi_offset 27, -100
	.cfi_offset 26, -104
.LBE7789:
	.loc 2 2158 0
	stw 29,3028(1)
.LBB7790:
	.loc 2 2172 0
	lis 26,.LC4@ha
.LBE7790:
	.loc 2 2158 0
	stw 30,3032(1)
.LBB7791:
	.loc 2 2174 0
	lis 30,.LC36@ha
	.cfi_offset 30, -88
	.cfi_offset 29, -92
.LBE7791:
	.loc 2 2158 0
	stw 31,3036(1)
.LBB7792:
	.loc 2 2174 0
	addi 29,3,100
.LBE7792:
	.loc 2 2158 0
	stw 0,3124(1)
.LBB7793:
	.loc 2 2174 0
	la 30,.LC36@l(30)
.LBE7793:
	.loc 2 2158 0
	stfd 22,3040(1)
.LBB7794:
	.loc 2 2174 0
	la 4,.LC35@l(4)
.LBE7794:
	.loc 2 2158 0
	stfd 23,3048(1)
.LBB7795:
	.loc 2 2174 0
	mr 5,30
.LBE7795:
	.loc 2 2158 0
	stfd 24,3056(1)
.LBB7796:
	.loc 2 2174 0
	addi 6,1,68
.LBE7796:
	.loc 2 2158 0
	stfd 25,3064(1)
	mr 31,3
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 65, 4
	.cfi_offset 31, -84
	stfd 26,3072(1)
	stfd 27,3080(1)
	stfd 28,3088(1)
	stfd 29,3096(1)
	stfd 30,3104(1)
	stfd 31,3112(1)
	stw 22,3000(1)
	stw 23,3004(1)
	stw 24,3008(1)
	stw 25,3012(1)
.LBB7797:
	.loc 2 2172 0
	lfs 0,.LC4@l(26)
	lwz 0,2004(27)
	xoris 0,0,0x8000
	stw 0,2956(1)
	lis 0,0x4330
	stw 0,2952(1)
	lfd 13,2952(1)
	fsub 0,13,0
	lfs 13,_ZN6idMath8M_MS2SECE@l(9)
	frsp 0,0
	fmuls 0,0,13
	fneg 0,0
	stfs 0,336(3)
	.loc 2 2174 0
	mr 3,29
.LVL1657:
.LEHB39:
	.cfi_offset 25, -108
	.cfi_offset 24, -112
	.cfi_offset 23, -116
	.cfi_offset 22, -120
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	.loc 2 2175 0
	lis 4,.LC37@ha
	la 4,.LC37@l(4)
	mr 5,30
	addi 6,1,56
	mr 3,29
	bl _ZNK6idDict9GetAnglesEPKcS1_R8idAngles
.LVL1658:
.LBB7384:
.LBB7385:
.LBB7386:
.LBB7387:
	.loc 16 241 0
	lis 4,.LC38@ha
	mr 3,29
	la 4,.LC38@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1659:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L733
.LVL1660:
.LBB7388:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1661:
.LBE7388:
.LBE7387:
.LBE7386:
	.loc 16 249 0
	bl atof
.LVL1662:
.LBE7385:
.LBE7384:
.LBB7394:
.LBB7395:
.LBB7396:
.LBB7397:
	.loc 16 241 0
	lis 4,.LC39@ha
	mr 3,29
	la 4,.LC39@l(4)
.LBE7397:
.LBE7396:
.LBE7395:
.LBE7394:
.LBB7410:
.LBB7391:
	.loc 16 249 0
	fmr 26,1
.LVL1663:
.LBE7391:
.LBE7410:
.LBB7411:
.LBB7405:
.LBB7402:
.LBB7399:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1664:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L734
.L761:
.LVL1665:
.LBB7398:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1666:
.LBE7398:
.LBE7399:
.LBE7402:
	.loc 16 249 0
	bl atof
.LVL1667:
.LBE7405:
.LBE7411:
.LBB7412:
.LBB7413:
.LBB7414:
.LBB7415:
	.loc 16 241 0
	lis 4,.LC40@ha
	mr 3,29
	la 4,.LC40@l(4)
.LBE7415:
.LBE7414:
.LBE7413:
.LBE7412:
.LBB7430:
.LBB7406:
	.loc 16 249 0
	fmr 25,1
.LVL1668:
.LBE7406:
.LBE7430:
.LBB7431:
.LBB7423:
.LBB7420:
.LBB7417:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1669:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L735
.L762:
.LVL1670:
.LBB7416:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1671:
.LBE7416:
.LBE7417:
.LBE7420:
	.loc 16 249 0
	bl atof
.LVL1672:
.LBE7423:
.LBE7431:
.LBB7432:
.LBB7433:
.LBB7434:
.LBB7435:
	.loc 16 241 0
	lis 4,.LC41@ha
	mr 3,29
	la 4,.LC41@l(4)
.LBE7435:
.LBE7434:
.LBE7433:
.LBE7432:
.LBB7448:
.LBB7424:
	.loc 16 249 0
	fmr 27,1
.LVL1673:
.LBE7424:
.LBE7448:
.LBB7449:
.LBB7443:
.LBB7440:
.LBB7437:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1674:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L736
.L763:
.LVL1675:
.LBB7436:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1676:
.LBE7436:
.LBE7437:
.LBE7440:
	.loc 16 249 0
	bl atof
.LVL1677:
.LBE7443:
.LBE7449:
.LBB7450:
.LBB7451:
.LBB7452:
.LBB7453:
	.loc 16 241 0
	lis 4,.LC42@ha
	mr 3,29
	la 4,.LC42@l(4)
.LBE7453:
.LBE7452:
.LBE7451:
.LBE7450:
.LBB7466:
.LBB7444:
	.loc 16 249 0
	fmr 24,1
.LVL1678:
.LBE7444:
.LBE7466:
.LBB7467:
.LBB7461:
.LBB7458:
.LBB7455:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1679:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L737
.L764:
.LVL1680:
.LBB7454:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1681:
.LBE7454:
.LBE7455:
.LBE7458:
	.loc 16 249 0
	bl atof
.LVL1682:
.LBE7461:
.LBE7467:
.LBB7468:
.LBB7469:
.LBB7470:
.LBB7471:
	.loc 16 241 0
	lis 4,.LC43@ha
	mr 3,29
	la 4,.LC43@l(4)
.LBE7471:
.LBE7470:
.LBE7469:
.LBE7468:
.LBB7485:
.LBB7462:
	.loc 16 249 0
	frsp 28,1
.LVL1683:
.LBE7462:
.LBE7485:
.LBB7486:
.LBB7479:
.LBB7476:
.LBB7473:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1684:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L738
.L765:
.LVL1685:
.LBB7472:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1686:
.LBE7472:
.LBE7473:
.LBE7476:
	.loc 16 249 0
	bl atof
.LVL1687:
.LBE7479:
.LBE7486:
.LBB7487:
.LBB7488:
.LBB7489:
.LBB7490:
	.loc 16 241 0
	lis 4,.LC44@ha
	mr 3,29
	la 4,.LC44@l(4)
.LBE7490:
.LBE7489:
.LBE7488:
.LBE7487:
.LBB7504:
.LBB7480:
	.loc 16 249 0
	fmr 23,1
.LVL1688:
.LBE7480:
.LBE7504:
.LBB7505:
.LBB7498:
.LBB7495:
.LBB7492:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1689:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L739
.L766:
.LVL1690:
.LBB7491:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1691:
.LBE7491:
.LBE7492:
.LBE7495:
	.loc 16 249 0
	bl atof
.LVL1692:
.LBE7498:
.LBE7505:
.LBB7506:
.LBB7507:
.LBB7508:
.LBB7509:
	.loc 16 241 0
	lis 4,.LC124@ha
	mr 3,29
	la 4,.LC124@l(4)
.LBE7509:
.LBE7508:
.LBE7507:
.LBE7506:
.LBB7521:
.LBB7499:
	.loc 16 249 0
	fmr 22,1
.LVL1693:
.LBE7499:
.LBE7521:
.LBB7522:
.LBB7517:
.LBB7514:
.LBB7511:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1694:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L740
.L767:
.LVL1695:
.LBB7510:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1696:
.L708:
.LBE7510:
.LBE7511:
.LBE7514:
	.loc 16 257 0
	bl atoi
.LBE7517:
.LBE7522:
	.loc 2 2186 0
	lis 9,.LC20@ha
	lfs 0,.LC20@l(9)
.LBB7523:
.LBB7518:
	.loc 16 257 0
	mr 30,3
.LBE7518:
.LBE7523:
	.loc 2 2186 0
	fcmpu 7,28,0
	cror 30,28,30
	beq- 7,.L754
.L709:
	.loc 2 2190 0
	cmpwi 7,30,0
	beq- 7,.L711
.LVL1697:
.LBB7524:
.LBB7525:
.LBB7526:
.LBB7527:
	.loc 7 71 0
	addis 11,28,0x1
	lis 9,0x1
	lwz 8,-32064(11)
	ori 9,9,3533
.LBE7527:
.LBE7526:
	.loc 7 83 0
	lis 0,0x4330
	lfs 0,.LC4@l(26)
.LBB7531:
.LBB7528:
	.loc 7 71 0
	mullw 8,9,8
.LBE7528:
.LBE7531:
	.loc 7 83 0
	stw 0,2960(1)
.LBE7525:
.LBE7524:
.LBB7539:
.LBB7540:
	stw 0,2968(1)
.LBE7540:
.LBE7539:
.LBB7554:
.LBB7555:
	stw 0,2976(1)
.LBE7555:
.LBE7554:
.LBB7571:
.LBB7534:
.LBB7532:
.LBB7529:
	.loc 7 71 0
	addi 8,8,1
.LBE7529:
.LBE7532:
.LBE7534:
.LBE7571:
.LBB7572:
.LBB7547:
.LBB7541:
.LBB7542:
	mullw 10,8,9
.LBE7542:
.LBE7541:
.LBE7547:
.LBE7572:
.LBB7573:
.LBB7535:
.LBB7533:
.LBB7530:
	.loc 7 72 0
	rlwinm 8,8,0,17,31
.LBE7530:
.LBE7533:
	.loc 7 83 0
	xoris 8,8,0x8000
	stw 8,2964(1)
.LBE7535:
.LBE7573:
.LBB7574:
.LBB7548:
.LBB7545:
.LBB7543:
	.loc 7 71 0
	addi 10,10,1
.LBE7543:
.LBE7545:
.LBE7548:
.LBE7574:
.LBB7575:
.LBB7536:
	.loc 7 83 0
	lfd 11,2960(1)
.LBE7536:
.LBE7575:
.LBB7576:
.LBB7564:
.LBB7556:
.LBB7557:
	.loc 7 71 0
	mullw 9,10,9
.LBE7557:
.LBE7556:
.LBE7564:
.LBE7576:
.LBB7577:
.LBB7549:
.LBB7546:
.LBB7544:
	.loc 7 72 0
	rlwinm 10,10,0,17,31
.LBE7544:
.LBE7546:
	.loc 7 83 0
	xoris 10,10,0x8000
.LBE7549:
.LBE7577:
.LBB7578:
.LBB7537:
	fsub 11,11,0
.LBE7537:
.LBE7578:
.LBB7579:
.LBB7550:
	stw 10,2972(1)
.LBE7550:
.LBE7579:
.LBB7580:
.LBB7565:
.LBB7561:
.LBB7558:
	.loc 7 71 0
	addi 9,9,1
.LBE7558:
.LBE7561:
.LBE7565:
.LBE7580:
.LBB7581:
.LBB7551:
	.loc 7 83 0
	lfd 12,2968(1)
.LBE7551:
.LBE7581:
.LBB7582:
.LBB7566:
.LBB7562:
.LBB7559:
	.loc 7 72 0
	rlwinm 10,9,0,17,31
.LBE7559:
.LBE7562:
.LBE7566:
.LBE7582:
.LBB7583:
.LBB7538:
	.loc 7 83 0
	frsp 11,11
.LBE7538:
.LBE7583:
.LBB7584:
.LBB7567:
	xoris 10,10,0x8000
.LBE7567:
.LBE7584:
.LBB7585:
.LBB7552:
	fsub 12,12,0
.LBE7552:
.LBE7585:
.LBB7586:
.LBB7568:
	stw 10,2980(1)
.LBE7568:
.LBE7586:
	.loc 2 2191 0
	lis 10,.LC5@ha
	lfs 13,.LC5@l(10)
	lis 10,.LC6@ha
.LBB7587:
.LBB7569:
	.loc 7 83 0
	lfd 10,2976(1)
.LBE7569:
.LBE7587:
.LBB7588:
.LBB7553:
	frsp 12,12
.LBE7553:
.LBE7588:
.LBB7589:
.LBB7570:
.LBB7563:
.LBB7560:
	.loc 7 71 0
	stw 9,-32064(11)
.LBE7560:
.LBE7563:
	.loc 7 83 0
	fsub 0,10,0
	frsp 10,0
.LBE7570:
.LBE7589:
	.loc 2 2191 0
	lfs 0,.LC6@l(10)
	fmadds 11,11,13,0
	.loc 2 2192 0
	fmadds 12,12,13,0
	.loc 2 2193 0
	fmadds 0,10,13,0
	.loc 2 2191 0
	lfs 13,68(1)
	fmuls 11,13,11
	.loc 2 2192 0
	lfs 13,72(1)
	fmuls 12,13,12
	.loc 2 2193 0
	lfs 13,76(1)
	.loc 2 2191 0
	stfs 11,68(1)
.LVL1698:
	.loc 2 2193 0
	fmuls 0,13,0
	.loc 2 2192 0
	stfs 12,72(1)
	.loc 2 2193 0
	stfs 0,76(1)
.LVL1699:
.L711:
	.loc 2 2196 0
	lwz 0,188(31)
	cmpwi 7,0,0
	beq- 7,.L712
	.loc 2 2197 0
	lwz 0,192(31)
	li 9,1
	rlwimi 0,9,29,2,2
	stw 0,192(31)
.L712:
	.loc 2 2200 0
	mr 3,28
	bl _ZNK11idGameLocal10GetGravityEv
	mr 9,3
.LVL1700:
	.loc 2 2202 0
	mr 3,31
.LVL1701:
.LBB7590:
.LBB7591:
	.loc 3 424 0
	lfs 29,0(9)
	.loc 3 425 0
	lfs 30,4(9)
	.loc 3 426 0
	lfs 31,8(9)
.LVL1702:
.LBE7591:
.LBE7590:
	.loc 2 2202 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1703:
	lwz 9,0(3)
	li 4,0
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL1704:
.LBB7592:
.LBB7593:
	.loc 12 333 0
	li 10,0
.L713:
.LBB7594:
.LBB7595:
	.loc 3 424 0
	mr 11,3
	addi 9,1,80
	lwzux 0,11,10
.LBE7595:
.LBE7594:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB7598:
.LBB7596:
	.loc 3 424 0
	stwux 0,9,10
.LBE7596:
.LBE7598:
	.loc 12 333 0
	addi 10,10,12
.LBB7599:
.LBB7597:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE7597:
.LBE7599:
	.loc 12 333 0
	bne+ 7,.L713
.LBE7593:
.LBE7592:
	.loc 2 2204 0
	mr 3,31
	.loc 2 2206 0
	addi 30,31,640
	.loc 2 2204 0
	bl _ZN8idEntity6UnbindEv
	.loc 2 2206 0
	mr 3,30
	mr 4,31
	bl _ZN14idPhysics_Base7SetSelfEP8idEntity
.LVL1705:
.LBB7600:
.LBB7601:
	.loc 16 221 0
	lis 4,.LC125@ha
.LBE7601:
.LBE7600:
.LBB7606:
.LBB7607:
.LBB7608:
.LBB7609:
	.loc 13 208 0
	li 0,0
.LBE7609:
.LBE7608:
	.file 23 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/TraceModel.h"
	.loc 23 161 0
	li 9,0
.LBE7607:
.LBE7606:
.LBB7613:
.LBB7603:
	.loc 16 221 0
	mr 3,29
	la 4,.LC125@l(4)
.LBE7603:
.LBE7613:
.LBB7614:
.LBB7612:
	.loc 23 161 0
	stw 9,116(1)
	.loc 23 162 0
	stw 9,1172(1)
	stw 9,508(1)
	stw 9,120(1)
.LVL1706:
.LBB7611:
.LBB7610:
	.loc 13 208 0
	stw 0,2936(1)
	stw 0,2932(1)
	stw 0,2928(1)
	stw 0,2924(1)
	stw 0,2920(1)
	stw 0,2916(1)
.LVL1707:
.LBE7610:
.LBE7611:
.LBE7612:
.LBE7614:
.LBB7615:
.LBB7604:
	.loc 16 221 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1708:
	.loc 16 222 0
	cmpwi 0,3,0
	beq- 0,.L741
.LVL1709:
.LBB7602:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL1710:
.L714:
.LBE7602:
.LBE7604:
.LBE7615:
	.loc 2 2212 0
	lbz 0,0(4)
	cmpwi 7,0,0
	beq- 7,.L755
.LVL1711:
.L715:
	.loc 2 2217 0
	lis 9,collisionModelManager@ha
	addi 5,1,116
	lwz 3,collisionModelManager@l(9)
	lwz 9,0(3)
	lwz 0,28(9)
	mtctr 0
	bctrl
.LVL1712:
	cmpwi 7,3,0
	bne- 7,.L717
	.loc 2 2219 0
	lis 9,.LC2@ha
	mr 3,30
	lfs 1,.LC2@l(9)
	addi 4,31,208
	bl _ZN9idPhysics10SetClipBoxERK8idBoundsf
	.loc 2 2224 0
	mr 3,30
	li 4,0
	bl _ZNK19idPhysics_RigidBody12GetClipModelEi
.LVL1713:
.LBB7616:
.LBB7617:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 9,0
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL1714:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,28,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L756
.LVL1715:
.L719:
.LBE7617:
.LBE7616:
.LBB7622:
.LBB7425:
	.loc 16 249 0
	frsp 27,27
.LVL1716:
.LBE7425:
.LBE7622:
.LBB7623:
.LBB7624:
	.loc 17 191 0
	stw 9,12(3)
.LBE7624:
.LBE7623:
	.loc 2 2225 0
	fmr 1,28
	li 4,-1
	mr 3,30
	bl _ZN19idPhysics_RigidBody7SetMassEfi
.LVL1717:
	.loc 2 2226 0
	frsp 1,26
	frsp 2,25
	mr 3,30
	fmr 3,27
	bl _ZN19idPhysics_RigidBody11SetFrictionEfff
	.loc 2 2227 0
	lis 9,.LC20@ha
	lfs 0,.LC20@l(9)
	fcmpu 7,27,0
	beq- 7,.L757
.LVL1718:
.L720:
.LBB7626:
.LBB7627:
	.loc 3 527 0
	fmuls 0,29,29
.LBB7628:
.LBB7629:
	.loc 8 246 0
	lis 25,.LC6@ha
	lfs 28,.LC6@l(25)
.LBE7629:
.LBE7628:
.LBE7627:
.LBE7626:
	.loc 2 2230 0
	frsp 1,24
	mr 3,30
.LBB7634:
.LBB7481:
	.loc 16 249 0
	frsp 23,23
.LVL1719:
	.loc 3 527 0
	fmadds 0,30,30,0
	fmadds 0,31,31,0
	stfs 0,2992(1)
.LBE7481:
.LBE7634:
.LBB7635:
.LBB7632:
.LBB7631:
.LBB7630:
	.loc 8 246 0
	fmuls 28,0,28
	.loc 8 248 0
	lwz 9,2992(1)
	.loc 2 2158 0
	fneg 28,28
	.loc 8 248 0
	srawi 0,9,1
	.loc 8 249 0
	lis 9,0x5f37
	ori 9,9,23007
	subf 9,0,9
	stw 9,2992(1)
	.loc 8 250 0
	lis 9,.LC22@ha
	lfs 0,2992(1)
	lfs 12,2992(1)
	fmuls 13,0,0
	lfs 0,.LC22@l(9)
	fmadds 28,28,13,0
	fmuls 28,12,28
.LBE7630:
.LBE7631:
.LBE7632:
.LBE7635:
	.loc 2 2230 0
	bl _ZN19idPhysics_RigidBody13SetBouncynessEf
.LVL1720:
	.loc 2 2231 0
	addi 4,1,44
	mr 3,30
.LBB7636:
.LBB7633:
	.loc 3 529 0
	fmuls 29,29,28
.LVL1721:
	.loc 3 530 0
	fmuls 30,30,28
.LVL1722:
	.loc 3 531 0
	fmuls 31,31,28
.LVL1723:
.LBE7633:
.LBE7636:
.LBB7637:
.LBB7638:
	.loc 3 439 0
	fmuls 29,23,29
.LVL1724:
	fmuls 30,23,30
.LVL1725:
	fmuls 23,23,31
.LVL1726:
.LBB7639:
.LBB7640:
	.loc 3 396 0
	stfs 29,44(1)
	.loc 3 397 0
	stfs 30,48(1)
	.loc 3 398 0
	stfs 23,52(1)
.LBE7640:
.LBE7639:
.LBE7638:
.LBE7637:
	.loc 2 2231 0
	bl _ZN14idPhysics_Base10SetGravityERK6idVec3
	.loc 2 2232 0
	mr 3,30
	li 4,0
	li 5,-1
	bl _ZN19idPhysics_RigidBody11SetContentsEii
	.loc 2 2233 0
	mr 3,30
	li 4,33
	li 5,-1
	bl _ZN14idPhysics_Base11SetClipMaskEii
.LVL1727:
	.loc 2 2234 0
	lfs 0,72(1)
.LBB7641:
.LBB7642:
	.loc 3 439 0
	lfs 11,96(1)
.LBE7642:
.LBE7641:
	.loc 2 2234 0
	li 5,0
.LBB7646:
.LBB7643:
	.loc 3 439 0
	lfs 13,92(1)
.LBE7643:
.LBE7646:
	.loc 2 2234 0
	mr 3,30
.LBB7647:
.LBB7644:
	.loc 3 439 0
	lfs 12,100(1)
	fmuls 11,0,11
.LBE7644:
.LBE7647:
	.loc 3 452 0
	lfs 10,84(1)
	.loc 2 2234 0
	addi 4,1,32
.LBB7648:
.LBB7645:
	.loc 3 439 0
	fmuls 12,0,12
	fmuls 0,0,13
.LBE7645:
.LBE7648:
	.loc 2 2234 0
	lfs 13,68(1)
.LVL1728:
	.loc 3 452 0
	fmadds 11,13,10,11
	lfs 10,88(1)
	fmadds 12,13,10,12
.LBB7649:
.LBB7650:
.LBB7651:
	lfs 10,80(1)
	fmadds 13,13,10,0
.LBE7651:
.LBE7650:
.LBE7649:
	.loc 2 2234 0
	lfs 0,76(1)
.LVL1729:
	.loc 3 452 0
	lfs 10,108(1)
	fmadds 11,0,10,11
	lfs 10,112(1)
	fmadds 12,0,10,12
.LVL1730:
.LBB7654:
.LBB7653:
.LBB7652:
	lfs 10,104(1)
	.loc 3 397 0
	stfs 11,36(1)
	.loc 3 452 0
	fmadds 0,0,10,13
	.loc 3 398 0
	stfs 12,40(1)
	.loc 3 396 0
	stfs 0,32(1)
.LBE7652:
.LBE7653:
.LBE7654:
	.loc 2 2234 0
	bl _ZN19idPhysics_RigidBody17SetLinearVelocityERK6idVec3i
.LVL1731:
	.loc 2 2235 0
	addi 3,1,20
	addi 4,1,56
	bl _ZNK8idAngles17ToAngularVelocityEv
	lfs 0,24(1)
.LBB7655:
.LBB7656:
.LBB7657:
	.loc 12 454 0
	lfs 11,96(1)
.LBE7657:
.LBE7656:
.LBE7655:
	.loc 2 2235 0
	li 5,0
.LBB7672:
.LBB7667:
.LBB7662:
	.loc 12 454 0
	lfs 13,92(1)
.LBE7662:
.LBE7667:
.LBE7672:
	.loc 2 2235 0
	addi 4,1,8
.LBB7673:
.LBB7668:
.LBB7663:
	.loc 12 454 0
	lfs 12,100(1)
	fmuls 11,0,11
.LBE7663:
.LBE7668:
.LBE7673:
	lfs 10,84(1)
	.loc 2 2235 0
	mr 3,30
.LBB7674:
.LBB7669:
.LBB7664:
	.loc 12 454 0
	fmuls 12,0,12
	fmuls 0,0,13
.LBE7664:
.LBE7669:
.LBE7674:
	.loc 2 2235 0
	lfs 13,20(1)
	.loc 12 454 0
	fmadds 11,13,10,11
	lfs 10,88(1)
	fmadds 12,13,10,12
.LBB7675:
.LBB7670:
.LBB7665:
.LBB7658:
.LBB7659:
	lfs 10,80(1)
	fmadds 13,13,10,0
.LBE7659:
.LBE7658:
.LBE7665:
.LBE7670:
.LBE7675:
	.loc 2 2235 0
	lfs 0,28(1)
.LVL1732:
	.loc 12 454 0
	lfs 10,108(1)
	fmadds 11,0,10,11
	lfs 10,112(1)
	fmadds 12,0,10,12
.LVL1733:
.LBB7676:
.LBB7671:
.LBB7666:
.LBB7661:
.LBB7660:
	lfs 10,104(1)
	.loc 3 397 0
	stfs 11,12(1)
	.loc 12 454 0
	fmadds 0,0,10,13
	.loc 3 398 0
	stfs 12,16(1)
	.loc 3 396 0
	stfs 0,8(1)
.LBE7660:
.LBE7661:
.LBE7666:
.LBE7671:
.LBE7676:
	.loc 2 2235 0
	bl _ZN19idPhysics_RigidBody18SetAngularVelocityERK6idVec3i
.LVL1734:
	.loc 2 2236 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	li 5,-1
	mr 4,3
	mr 3,30
	bl _ZN19idPhysics_RigidBody9SetOriginERK6idVec3i
	.loc 2 2237 0
	mr 3,30
	addi 4,1,80
	li 5,-1
	bl _ZN19idPhysics_RigidBody7SetAxisERK6idMat3i
	.loc 2 2238 0
	mr 3,31
	mr 4,30
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
	.loc 2 2240 0
	lbz 0,2018(27)
	cmpwi 7,0,0
	bne- 7,.L721
.LBB7677:
.LBB7500:
	.loc 16 249 0
	frsp 22,22
.LBE7500:
.LBE7677:
	.loc 2 2241 0
	lis 9,.LC20@ha
	lfs 0,.LC20@l(9)
	fcmpu 7,22,0
	cror 30,28,30
	beq- 7,.L758
.LVL1735:
.LBB7678:
.LBB7679:
.LBB7680:
.LBB7681:
	.loc 16 241 0
	lis 4,.LC54@ha
	mr 3,29
	la 4,.LC54@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1736:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L744
.LVL1737:
.LBB7682:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1738:
.L724:
.LBE7682:
.LBE7681:
.LBE7680:
	.loc 16 257 0
	bl atoi
.LBE7679:
.LBE7678:
	.loc 2 2246 0
	lis 9,.LC20@ha
	.loc 2 2245 0
	cmpwi 7,3,0
	.loc 2 2246 0
	lfs 0,.LC20@l(9)
	.loc 2 2245 0
	beq- 7,.L725
	.loc 2 2246 0
	fcmpu 7,22,0
	bnl- 7,.L726
	.loc 2 2247 0
	fmr 22,0
.L726:
.LVL1739:
	.loc 2 2249 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	.loc 2 2250 0
	lis 4,.LANCHOR0@ha
	fmr 1,22
	la 4,.LANCHOR0@l(4)
	mr 3,31
	addi 4,4,424
	bl _ZN7idClass12PostEventSecEPK10idEventDeff
.LVL1740:
.L721:
	.loc 2 2259 0
	lis 4,.LC56@ha
	li 5,3
	la 4,.LC56@l(4)
	li 6,0
	li 7,0
	li 8,0
	mr 3,31
	bl _ZN8idEntity10StartSoundEPKciibPi
	.loc 2 2261 0
	li 0,0
	stw 0,1184(31)
.LBB7686:
.LBB7687:
	.loc 16 241 0
	lis 4,.LC57@ha
.LBE7687:
.LBE7686:
	.loc 2 2262 0
	stw 0,1188(31)
.LVL1741:
.LBB7691:
.LBB7689:
	.loc 16 241 0
	mr 3,29
	la 4,.LC57@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1742:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L747
.LVL1743:
.LBB7688:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL1744:
.L728:
.LBE7688:
.LBE7689:
.LBE7691:
	.loc 2 2264 0
	lbz 0,0(5)
	cmpwi 7,0,0
	bne- 7,.L759
.LVL1745:
.LBB7692:
.LBB7693:
	.loc 16 241 0
	lis 4,.LC112@ha
	mr 3,29
.LVL1746:
	la 4,.LC112@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1747:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L748
.L760:
.LVL1748:
.LBB7694:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 9,4(9)
.LVL1749:
.L730:
.LBE7694:
.LBE7693:
.LBE7692:
	.loc 2 2271 0
	lbz 0,0(9)
	cmpwi 7,0,0
	beq- 7,.L731
	.loc 2 2273 0
	li 0,0
	stw 0,1192(31)
.L731:
	.loc 2 2276 0
	mr 3,31
.LVL1750:
	bl _ZN8idEntity13UpdateVisualsEv
.LBE7797:
	.loc 2 2277 0
	lwz 0,3124(1)
	lwz 22,3000(1)
	mtlr 0
	lwz 23,3004(1)
	lwz 24,3008(1)
	lwz 25,3012(1)
	lwz 26,3016(1)
	lwz 27,3020(1)
	lwz 28,3024(1)
	lwz 29,3028(1)
.LVL1751:
	lwz 30,3032(1)
	lwz 31,3036(1)
.LVL1752:
	lfd 22,3040(1)
	lfd 23,3048(1)
	lfd 24,3056(1)
	lfd 25,3064(1)
	lfd 26,3072(1)
	lfd 27,3080(1)
	lfd 28,3088(1)
	lfd 29,3096(1)
	lfd 30,3104(1)
	lfd 31,3112(1)
	addi 1,1,3120
	.cfi_remember_state
.LCFI191:
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
.LVL1753:
.L717:
.LCFI192:
	.cfi_restore_state
.LBB7798:
	.loc 2 2221 0
	li 3,140
	bl _Znwj
.LEHE39:
	addi 4,1,116
	mr 25,3
.LEHB40:
	bl _ZN11idClipModelC1ERK12idTraceModel
.LEHE40:
	.loc 2 2221 0 is_stmt 0 discriminator 1
	lis 9,.LC2@ha
	mr 3,30
	lfs 1,.LC2@l(9)
	mr 4,25
	li 5,0
	li 6,1
.LEHB41:
	bl _ZN19idPhysics_RigidBody12SetClipModelEP11idClipModelfib
	.loc 2 2224 0 is_stmt 1 discriminator 1
	mr 3,30
	li 4,0
	bl _ZNK19idPhysics_RigidBody12GetClipModelEi
.LVL1754:
.LBB7696:
.LBB7618:
	.loc 4 634 0 discriminator 1
	lwz 0,636(31)
	.loc 4 638 0 discriminator 1
	li 9,0
	.loc 4 634 0 discriminator 1
	rlwinm 11,0,0,20,31
.LVL1755:
	.loc 4 635 0 discriminator 1
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,28,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L719
.LVL1756:
.L756:
	.loc 4 636 0
	addi 11,11,132
.LVL1757:
.LBE7618:
.LBE7696:
.LBB7697:
.LBB7426:
	.loc 16 249 0
	frsp 27,27
.LBE7426:
.LBE7697:
.LBB7698:
.LBB7619:
	.loc 4 636 0
	slwi 11,11,2
.LVL1758:
.LBE7619:
.LBE7698:
	.loc 2 2225 0
	fmr 1,28
.LBB7699:
.LBB7620:
	.loc 4 636 0
	add 11,28,11
.LBE7620:
.LBE7699:
	.loc 2 2225 0
	li 4,-1
.LBB7700:
.LBB7621:
	.loc 4 636 0
	lwz 9,4(11)
.LVL1759:
.LBE7621:
.LBE7700:
.LBB7701:
.LBB7625:
	.loc 17 191 0
	stw 9,12(3)
.LBE7625:
.LBE7701:
	.loc 2 2225 0
	mr 3,30
	bl _ZN19idPhysics_RigidBody7SetMassEfi
.LVL1760:
	.loc 2 2226 0
	frsp 1,26
	frsp 2,25
	mr 3,30
	fmr 3,27
	bl _ZN19idPhysics_RigidBody11SetFrictionEfff
	.loc 2 2227 0
	lis 9,.LC20@ha
	lfs 0,.LC20@l(9)
	fcmpu 7,27,0
	bne+ 7,.L720
.L757:
	.loc 2 2228 0
	mr 3,30
	bl _ZN19idPhysics_RigidBody9NoContactEv
	b .L720
.LVL1761:
.L758:
	.loc 2 2243 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
	.loc 2 2244 0
	lis 4,EV_Remove@ha
	mr 3,31
	la 4,EV_Remove@l(4)
	li 5,0
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
	b .L721
.LVL1762:
.L755:
.LBB7702:
.LBB7703:
	.loc 16 241 0
	lis 4,.LC126@ha
.LVL1763:
	mr 3,29
.LVL1764:
	la 4,.LC126@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1765:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L742
.LVL1766:
.LBB7704:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L715
.LVL1767:
.L754:
.LBE7704:
.LBE7703:
.LBE7702:
	.loc 2 2187 0
	mr 3,31
	bl _ZNK8idEntity16GetEntityDefNameEv
	lis 4,.LC48@ha
	mr 5,3
	la 4,.LC48@l(4)
	mr 3,28
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L709
.LVL1768:
.L759:
	.loc 2 2265 0
	lis 9,declManager@ha
	li 6,1
	lwz 3,declManager@l(9)
.LVL1769:
	li 7,0
	li 4,7
.LBB7706:
.LBB7707:
.LBB7708:
.LBB7709:
.LBB7710:
.LBB7711:
	.loc 7 71 0
	addis 28,28,0x1
.LBE7711:
.LBE7710:
.LBE7709:
.LBE7708:
.LBE7707:
.LBE7706:
	.loc 2 2265 0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LBB7750:
.LBB7740:
.LBB7730:
.LBB7720:
.LBB7716:
.LBB7712:
	.loc 7 71 0
	lis 9,0x1
.LBE7712:
.LBE7716:
.LBE7720:
.LBE7730:
.LBE7740:
.LBE7750:
	.loc 2 2265 0
	stw 3,1184(31)
.LBB7751:
.LBB7741:
.LBB7731:
.LBB7721:
.LBB7717:
.LBB7713:
	.loc 7 71 0
	ori 9,9,3533
.LBE7713:
.LBE7717:
.LBE7721:
.LBE7731:
.LBE7741:
.LBE7751:
	.loc 2 2265 0
	mr 23,3
	.loc 2 2267 0
	mr 3,31
	.loc 2 2266 0
	lwz 24,2004(27)
	stw 24,1188(31)
.LBB7752:
.LBB7742:
.LBB7732:
.LBB7722:
.LBB7718:
.LBB7714:
	.loc 7 71 0
	lwz 0,-32064(28)
.LBE7714:
.LBE7718:
.LBE7722:
.LBE7732:
.LBE7742:
.LBE7752:
	.loc 2 2267 0
	lwz 22,1972(27)
.LVL1770:
.LBB7753:
.LBB7743:
.LBB7733:
.LBB7723:
.LBB7719:
.LBB7715:
	.loc 7 71 0
	mullw 9,9,0
	addi 27,9,1
	stw 27,-32064(28)
	.loc 7 72 0
	rlwinm 27,27,0,17,31
.LBE7715:
.LBE7719:
	.loc 7 83 0
	xoris 27,27,0x8000
.LBE7723:
.LBE7733:
.LBE7743:
.LBE7753:
	.loc 2 2267 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 30,3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LBB7754:
.LBB7744:
.LBB7734:
.LBB7724:
	.loc 7 83 0
	lis 0,0x4330
	stw 0,2984(1)
.LBE7724:
.LBE7734:
	.loc 7 87 0
	lis 9,.LC5@ha
.LBB7735:
.LBB7725:
	.loc 7 83 0
	stw 27,2988(1)
.LBE7725:
.LBE7735:
.LBE7744:
.LBE7754:
	.loc 2 2267 0
	mr 7,3
.LBB7755:
.LBB7745:
.LBB7736:
.LBB7726:
	.loc 7 83 0
	lfs 0,.LC4@l(26)
.LBE7726:
.LBE7736:
.LBE7745:
.LBE7755:
	.loc 2 2267 0
	mr 4,23
.LBB7756:
.LBB7746:
.LBB7737:
.LBB7727:
	.loc 7 83 0
	lfd 1,2984(1)
.LBE7727:
.LBE7737:
.LBE7746:
.LBE7756:
	.loc 2 2267 0
	mr 5,24
.LBB7757:
.LBB7747:
	.loc 7 87 0
	lfs 13,.LC5@l(9)
.LBE7747:
.LBE7757:
	.loc 2 2267 0
	mr 6,30
.LBB7758:
.LBB7748:
.LBB7738:
.LBB7728:
	.loc 7 83 0
	fsub 1,1,0
.LBE7728:
.LBE7738:
	.loc 7 87 0
	lfs 0,.LC6@l(25)
.LBE7748:
.LBE7758:
	.loc 2 2267 0
	mr 3,22
.LBB7759:
.LBB7749:
.LBB7739:
.LBB7729:
	.loc 7 83 0
	frsp 1,1
.LBE7729:
.LBE7739:
	.loc 7 87 0
	fmsubs 1,1,13,0
.LBE7749:
.LBE7759:
	.loc 2 2267 0
	fadds 1,1,1
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
.LVL1771:
.LBB7760:
.LBB7695:
	.loc 16 241 0
	lis 4,.LC112@ha
	mr 3,29
	la 4,.LC112@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1772:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L760
.LVL1773:
.L748:
	.loc 16 245 0
	lis 9,.LC27@ha
	la 9,.LC27@l(9)
	b .L730
.LVL1774:
.L725:
.LBE7695:
.LBE7760:
	.loc 2 2252 0
	fcmpu 7,22,0
	bnl- 7,.L727
	.loc 2 2253 0
	fmr 22,0
.L727:
.LVL1775:
	.loc 2 2255 0
	fmr 1,22
	lis 4,.LANCHOR0@ha
	la 4,.LANCHOR0@l(4)
	mr 3,31
	addi 4,4,488
	bl _ZN7idClass12PostEventSecEPK10idEventDeff
	b .L721
.LVL1776:
.L741:
.LBB7761:
.LBB7605:
	.loc 16 226 0
	lis 4,.LC27@ha
	la 4,.LC27@l(4)
	b .L714
.LVL1777:
.L733:
.LBE7605:
.LBE7761:
.LBB7762:
.LBB7392:
.LBB7390:
.LBB7389:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1778:
	la 3,.LC30@l(3)
.LBE7389:
.LBE7390:
	.loc 16 249 0
	bl atof
.LBE7392:
.LBE7762:
.LBB7763:
.LBB7407:
.LBB7403:
.LBB7400:
	.loc 16 241 0
	lis 4,.LC39@ha
	mr 3,29
	la 4,.LC39@l(4)
.LBE7400:
.LBE7403:
.LBE7407:
.LBE7763:
.LBB7764:
.LBB7393:
	.loc 16 249 0
	fmr 26,1
.LVL1779:
.LBE7393:
.LBE7764:
.LBB7765:
.LBB7408:
.LBB7404:
.LBB7401:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1780:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L761
.L734:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1781:
	la 3,.LC30@l(3)
.LBE7401:
.LBE7404:
	.loc 16 249 0
	bl atof
.LBE7408:
.LBE7765:
.LBB7766:
.LBB7427:
.LBB7421:
.LBB7418:
	.loc 16 241 0
	lis 4,.LC40@ha
	mr 3,29
	la 4,.LC40@l(4)
.LBE7418:
.LBE7421:
.LBE7427:
.LBE7766:
.LBB7767:
.LBB7409:
	.loc 16 249 0
	fmr 25,1
.LVL1782:
.LBE7409:
.LBE7767:
.LBB7768:
.LBB7428:
.LBB7422:
.LBB7419:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1783:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L762
.L735:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1784:
	la 3,.LC30@l(3)
.LBE7419:
.LBE7422:
	.loc 16 249 0
	bl atof
.LBE7428:
.LBE7768:
.LBB7769:
.LBB7445:
.LBB7441:
.LBB7438:
	.loc 16 241 0
	lis 4,.LC41@ha
	mr 3,29
	la 4,.LC41@l(4)
.LBE7438:
.LBE7441:
.LBE7445:
.LBE7769:
.LBB7770:
.LBB7429:
	.loc 16 249 0
	fmr 27,1
.LVL1785:
.LBE7429:
.LBE7770:
.LBB7771:
.LBB7446:
.LBB7442:
.LBB7439:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1786:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L763
.L736:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1787:
	la 3,.LC30@l(3)
.LBE7439:
.LBE7442:
	.loc 16 249 0
	bl atof
.LBE7446:
.LBE7771:
.LBB7772:
.LBB7463:
.LBB7459:
.LBB7456:
	.loc 16 241 0
	lis 4,.LC42@ha
	mr 3,29
	la 4,.LC42@l(4)
.LBE7456:
.LBE7459:
.LBE7463:
.LBE7772:
.LBB7773:
.LBB7447:
	.loc 16 249 0
	fmr 24,1
.LVL1788:
.LBE7447:
.LBE7773:
.LBB7774:
.LBB7464:
.LBB7460:
.LBB7457:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1789:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L764
.L737:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1790:
	la 3,.LC30@l(3)
.LBE7457:
.LBE7460:
	.loc 16 249 0
	bl atof
.LBE7464:
.LBE7774:
.LBB7775:
.LBB7482:
.LBB7477:
.LBB7474:
	.loc 16 241 0
	lis 4,.LC43@ha
	mr 3,29
	la 4,.LC43@l(4)
.LBE7474:
.LBE7477:
.LBE7482:
.LBE7775:
.LBB7776:
.LBB7465:
	.loc 16 249 0
	frsp 28,1
.LVL1791:
.LBE7465:
.LBE7776:
.LBB7777:
.LBB7483:
.LBB7478:
.LBB7475:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1792:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L765
.L738:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1793:
	la 3,.LC30@l(3)
.LBE7475:
.LBE7478:
	.loc 16 249 0
	bl atof
.LBE7483:
.LBE7777:
.LBB7778:
.LBB7501:
.LBB7496:
.LBB7493:
	.loc 16 241 0
	lis 4,.LC44@ha
	mr 3,29
	la 4,.LC44@l(4)
.LBE7493:
.LBE7496:
.LBE7501:
.LBE7778:
.LBB7779:
.LBB7484:
	.loc 16 249 0
	fmr 23,1
.LVL1794:
.LBE7484:
.LBE7779:
.LBB7780:
.LBB7502:
.LBB7497:
.LBB7494:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1795:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L766
.L739:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1796:
	la 3,.LC30@l(3)
.LBE7494:
.LBE7497:
	.loc 16 249 0
	bl atof
.LBE7502:
.LBE7780:
.LBB7781:
.LBB7519:
.LBB7515:
.LBB7512:
	.loc 16 241 0
	lis 4,.LC124@ha
	mr 3,29
	la 4,.LC124@l(4)
.LBE7512:
.LBE7515:
.LBE7519:
.LBE7781:
.LBB7782:
.LBB7503:
	.loc 16 249 0
	fmr 22,1
.LVL1797:
.LBE7503:
.LBE7782:
.LBB7783:
.LBB7520:
.LBB7516:
.LBB7513:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1798:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L767
.L740:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1799:
	la 3,.LC30@l(3)
	b .L708
.LVL1800:
.L747:
.LBE7513:
.LBE7516:
.LBE7520:
.LBE7783:
.LBB7784:
.LBB7690:
	lis 5,.LC27@ha
	la 5,.LC27@l(5)
	b .L728
.LVL1801:
.L742:
.LBE7690:
.LBE7784:
.LBB7785:
.LBB7705:
	lis 4,.LC27@ha
	la 4,.LC27@l(4)
	b .L715
.LVL1802:
.L744:
.LBE7705:
.LBE7785:
.LBB7786:
.LBB7685:
.LBB7684:
.LBB7683:
	lis 3,.LC30@ha
.LVL1803:
	la 3,.LC30@l(3)
	b .L724
.LVL1804:
.L749:
	mr 31,3
.LVL1805:
.LBE7683:
.LBE7684:
.LBE7685:
.LBE7786:
	.loc 2 2221 0
	mr 3,25
	bl _ZdlPv
	mr 3,31
	bl _Unwind_Resume
.LEHE41:
.LBE7798:
	.cfi_endproc
.LFE2922:
	.section	.gcc_except_table
.LLSDA2922:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2922-.LLSDACSB2922
.LLSDACSB2922:
	.uleb128 .LEHB39-.LFB2922
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB2922
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L749-.LFB2922
	.uleb128 0
	.uleb128 .LEHB41-.LFB2922
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE2922:
	.section	".text"
	.size	_ZN8idDebris6LaunchEv, .-_ZN8idDebris6LaunchEv
	.align 2
	.globl _ZN12idProjectile7ExplodeERK7trace_sP8idEntity
	.type	_ZN12idProjectile7ExplodeERK7trace_sP8idEntity, @function
_ZN12idProjectile7ExplodeERK7trace_sP8idEntity:
.LFB2843:
	.loc 2 776 0
	.cfi_startproc
.LVL1806:
	mflr 0
	stwu 1,-400(1)
.LCFI193:
	.cfi_def_cfa_offset 400
	.cfi_register 65, 0
	stw 29,340(1)
	mr 29,5
	.cfi_offset 29, -60
	stw 30,344(1)
	mr 30,4
	.cfi_offset 30, -56
	stw 31,348(1)
	mr 31,3
	.cfi_offset 31, -52
	stw 0,404(1)
	stfd 26,352(1)
	stfd 27,360(1)
	stfd 28,368(1)
	stfd 29,376(1)
	stfd 30,384(1)
	stfd 31,392(1)
	stw 14,280(1)
	stw 15,284(1)
	stw 16,288(1)
	stw 17,292(1)
	stw 18,296(1)
	stw 19,300(1)
	stw 20,304(1)
	stw 21,308(1)
	stw 22,312(1)
	stw 23,316(1)
	stw 24,320(1)
	stw 25,324(1)
	stw 26,328(1)
	stw 27,332(1)
	stw 28,336(1)
.LBB7963:
	.loc 2 782 0
	lwz 9,1488(3)
	addi 9,9,-3
	cmplwi 7,9,1
	ble- 7,.L768
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
	.cfi_offset 18, -104
	.cfi_offset 17, -108
	.cfi_offset 16, -112
	.cfi_offset 15, -116
	.cfi_offset 14, -120
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 65, 4
.LVL1807:
.LBE7963:
.LBB7964:
.LBB7965:
	.loc 2 787 0
	li 4,4
.LVL1808:
	li 5,0
.LVL1809:
	bl _ZN8idEntity9StopSoundEib
.LVL1810:
	.loc 2 790 0
	lfs 0,652(31)
	addi 9,1,264
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 9,264(1)
	.loc 2 787 0
	addi 0,9,-2
	cmplwi 7,0,2
	bgt- 7,.L813
	lis 9,.LANCHOR2@ha
	slwi 0,0,2
	la 9,.LANCHOR2@l(9)
	lwzx 4,9,0
.L770:
.LVL1811:
	.loc 2 796 0
	mr 3,31
	li 5,3
	li 6,0
	li 7,1
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
.LVL1812:
	.loc 2 800 0
	lwz 0,1480(31)
	cmpwi 7,0,0
	beq- 7,.L771
	lwz 0,1484(31)
	cmpwi 7,0,0
	beq- 7,.L771
	.loc 2 801 0
	li 0,0
	stw 0,1484(31)
.L771:
	.loc 2 804 0
	lwz 9,0(31)
	mr 3,31
	.loc 2 807 0
	lis 26,.LC27@ha
	addi 27,31,100
	.loc 2 804 0
	lwz 0,76(9)
	.loc 2 807 0
	la 26,.LC27@l(26)
	.loc 2 804 0
	mtctr 0
	bctrl
	.loc 2 805 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,72(9)
	mtctr 0
	bctrl
	.loc 2 807 0
	lis 4,.LC128@ha
	mr 3,27
	la 4,.LC128@l(4)
	mr 5,26
	addi 6,1,36
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	cmpwi 7,3,0
	bne- 7,.L841
.L772:
	.loc 2 810 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	.loc 3 452 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	.loc 2 810 0
	addi 4,1,12
	.loc 3 452 0
	lfs 8,72(30)
	.loc 2 810 0
	li 5,-1
	.loc 3 452 0
	lfs 9,76(30)
.LBB7966:
.LBB7967:
.LBB7968:
.LBB7969:
	lfs 10,68(30)
	lfs 11,4(30)
.LBE7969:
.LBE7968:
.LBE7967:
.LBE7966:
	lfs 12,8(30)
	lfs 13,12(30)
	.loc 2 810 0
	lwz 9,0(3)
	.loc 3 452 0
	fmadds 12,8,0,12
	fmadds 13,9,0,13
.LBB7979:
.LBB7976:
.LBB7973:
.LBB7970:
	fmadds 0,10,0,11
.LBE7970:
.LBE7973:
.LBE7976:
.LBE7979:
	.loc 2 810 0
	lwz 0,116(9)
.LVL1813:
.LBB7980:
.LBB7977:
.LBB7974:
.LBB7971:
	.loc 3 397 0
	stfs 12,16(1)
	.loc 3 398 0
	stfs 13,20(1)
.LBE7971:
.LBE7974:
.LBE7977:
.LBE7980:
	.loc 2 810 0
	mtctr 0
.LBB7981:
.LBB7978:
.LBB7975:
.LBB7972:
	.loc 3 396 0
	stfs 0,12(1)
.LBE7972:
.LBE7975:
.LBE7978:
.LBE7981:
	.loc 2 810 0
	bctrl
.LVL1814:
.LBB7982:
.LBB7983:
.LBB7984:
.LBB7985:
	.loc 16 241 0
	lis 4,.LC53@ha
	mr 3,27
	la 4,.LC53@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1815:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L814
.LVL1816:
.LBB7986:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1817:
.L773:
.LBE7986:
.LBE7985:
.LBE7984:
	.loc 16 253 0
	bl atoi
.LBE7983:
.LBE7982:
.LBE7965:
	.loc 2 817 0
	lis 9,g_testParticle+44@ha
.LBB8449:
.LBB7991:
.LBB7992:
	.loc 11 143 0
	lwz 9,g_testParticle+44@l(9)
.LBE7992:
.LBE7991:
.LBB7993:
.LBB7989:
	.loc 16 253 0
	mr 23,3
.LVL1818:
.LBE7989:
.LBE7993:
	.loc 2 817 0
	lwz 0,36(9)
	cmpwi 7,0,1
	bne- 7,.L774
.LBE8449:
	.loc 2 818 0
	lis 9,g_testParticleName+44@ha
.LBB8450:
.LBB7994:
.LBB7995:
	.loc 11 141 0
	lwz 9,g_testParticleName+44@l(9)
	lwz 4,8(9)
.LVL1819:
.L775:
.LBE7995:
.LBE7994:
	.loc 2 823 0
	lwz 9,88(30)
	li 0,1
	cmpwi 7,9,0
	beq- 7,.L777
.LBB7996:
.LBB7997:
	.loc 20 503 0
	lwz 0,100(9)
	rlwinm 0,0,0,28,31
.L777:
.LVL1820:
.LBE7997:
.LBE7996:
	.loc 2 824 0
	cmpwi 7,4,0
	beq- 7,.L778
	lbz 9,0(4)
	cmpwi 7,9,0
	beq- 7,.L778
.LVL1821:
.L779:
	.loc 2 835 0
	lwz 9,0(31)
	mr 3,31
	.loc 2 840 0
	lis 28,gameLocal@ha
	.loc 2 835 0
	lwz 0,44(9)
	.loc 2 840 0
	la 28,gameLocal@l(28)
	addis 25,28,0x25
	.loc 2 835 0
	mtctr 0
	bctrl
	.loc 2 839 0
	lis 9,.LC2@ha
	lwz 0,.LC2@l(9)
	.loc 2 840 0
	lis 11,.LC4@ha
	lfs 13,.LC4@l(11)
	lis 11,_ZN6idMath8M_MS2SECE@ha
	.loc 2 839 0
	stw 0,332(31)
.LBB7998:
.LBB7999:
	.loc 7 87 0
	lis 10,.LC6@ha
.LBE7999:
.LBE7998:
	.loc 2 839 0
	stw 0,328(31)
.LBB8030:
.LBB8022:
	.loc 7 87 0
	lis 8,.LC5@ha
.LBE8022:
.LBE8030:
	.loc 2 839 0
	stw 0,324(31)
	.loc 2 842 0
	mr 3,31
	.loc 2 839 0
	stw 0,320(31)
	.loc 2 840 0
	lis 0,0x4330
	lfs 12,_ZN6idMath8M_MS2SECE@l(11)
.LBB8031:
.LBB8023:
.LBB8000:
.LBB8001:
.LBB8002:
.LBB8003:
	.loc 7 71 0
	lis 11,0x1
.LBE8003:
.LBE8002:
.LBE8001:
.LBE8000:
.LBE8023:
.LBE8031:
	.loc 2 840 0
	lwz 9,2004(25)
.LBB8032:
.LBB8024:
.LBB8017:
.LBB8012:
.LBB8008:
.LBB8004:
	.loc 7 71 0
	ori 11,11,3533
.LBE8004:
.LBE8008:
.LBE8012:
.LBE8017:
.LBE8024:
.LBE8032:
	.loc 2 840 0
	stw 0,168(1)
	xoris 9,9,0x8000
.LBB8033:
.LBB8025:
.LBB8018:
.LBB8013:
	.loc 7 83 0
	stw 0,176(1)
.LBE8013:
.LBE8018:
.LBE8025:
.LBE8033:
	.loc 2 840 0
	stw 9,172(1)
.LBB8034:
.LBB8026:
.LBB8019:
.LBB8014:
.LBB8009:
.LBB8005:
	.loc 7 71 0
	addis 9,28,0x1
.LBE8005:
.LBE8009:
.LBE8014:
.LBE8019:
	.loc 7 87 0
	lfs 11,.LC5@l(8)
.LBE8026:
.LBE8034:
	.loc 2 840 0
	lfd 0,168(1)
	fsub 0,0,13
	frsp 0,0
	fmuls 0,0,12
.LBB8035:
.LBB8027:
	.loc 7 87 0
	lfs 12,.LC6@l(10)
.LBE8027:
.LBE8035:
	.loc 2 840 0
	fneg 0,0
	stfs 0,336(31)
.LVL1822:
.LBB8036:
.LBB8028:
.LBB8020:
.LBB8015:
.LBB8010:
.LBB8006:
	.loc 7 71 0
	lwz 10,-32064(9)
	mullw 11,11,10
	addi 0,11,1
	.loc 7 72 0
	rlwinm 11,0,0,17,31
.LBE8006:
.LBE8010:
	.loc 7 83 0
	xoris 11,11,0x8000
	stw 11,180(1)
.LBB8011:
.LBB8007:
	.loc 7 71 0
	stw 0,-32064(9)
.LBE8007:
.LBE8011:
	.loc 7 83 0
	lfd 0,176(1)
.LBE8015:
.LBE8020:
.LBE8028:
.LBE8036:
	.loc 2 842 0
	lwz 9,0(31)
.LBB8037:
.LBB8029:
.LBB8021:
.LBB8016:
	.loc 7 83 0
	fsub 0,0,13
	frsp 0,0
.LBE8016:
.LBE8021:
	.loc 7 87 0
	fmsubs 0,0,11,12
	fadds 0,0,0
.LBE8029:
.LBE8037:
	.loc 2 841 0
	stfs 0,340(31)
	.loc 2 842 0
	lwz 0,80(9)
	mtctr 0
	bctrl
	.loc 2 843 0
	cmpwi 7,23,3000
	blt- 7,.L842
.LVL1823:
.L786:
.LBB8038:
.LBB8039:
	.loc 16 241 0
	lis 4,.LC133@ha
	mr 3,27
	la 4,.LC133@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1824:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L788
.LVL1825:
.LBB8040:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 26,4(9)
.LVL1826:
.L788:
.LBE8040:
.LBE8039:
.LBE8038:
	.loc 2 848 0
	lbz 0,0(26)
	cmpwi 7,0,0
	bne- 7,.L843
.LVL1827:
.L789:
	.loc 2 866 0
	lwz 0,192(31)
	li 9,0
	.loc 2 867 0
	addi 26,31,936
	li 4,0
	.loc 2 866 0
	rlwimi 0,9,29,2,2
	.loc 2 867 0
	li 5,-1
	.loc 2 866 0
	stw 0,192(31)
	.loc 2 867 0
	mr 3,26
	bl _ZN19idPhysics_RigidBody11SetContentsEii
	.loc 2 868 0
	mr 3,26
	bl _ZN19idPhysics_RigidBody9PutToRestEv
	.loc 2 870 0
	li 0,4
	stw 0,1488(31)
	.loc 2 872 0
	lbz 0,2018(25)
	cmpwi 7,0,0
	bne- 7,.L768
.LVL1828:
.LBB8041:
.LBB8042:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 4,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1829:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L844
.LVL1830:
.L792:
.LBE8042:
.LBE8041:
	.loc 2 877 0
	mr 3,28
	bl _ZN11idGameLocal7AlertAIEP8idEntity
	.loc 2 880 0
	lwz 9,100(30)
	addi 9,9,132
	slwi 9,9,2
	add 9,28,9
	lwz 0,4(9)
	cmpwi 7,0,0
	beq- 7,.L812
.LVL1831:
.LBB8044:
.LBB8045:
.LBB8046:
.LBB8047:
	.loc 16 241 0
	lis 4,.LC138@ha
	mr 3,27
	la 4,.LC138@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1832:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L824
.LVL1833:
.LBB8048:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1834:
.L794:
.LBE8048:
.LBE8047:
.LBE8046:
	.loc 16 257 0
	bl atoi
.LBE8045:
.LBE8044:
	.loc 2 880 0
	cmpwi 7,3,0
	bne- 7,.L795
.LVL1835:
.L812:
.LBB8052:
	.loc 2 885 0
	lwz 0,640(31)
	andis. 9,0,2048
	beq- 0,.L834
.L837:
	lis 22,.LANCHOR0@ha
	la 22,.LANCHOR0@l(22)
.L796:
.LVL1836:
.LBE8052:
.LBB8067:
.LBB8068:
.LBB8069:
.LBB8070:
	.loc 16 241 0
	lis 4,.LC142@ha
	mr 3,27
	la 4,.LC142@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1837:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L826
.LVL1838:
.LBB8071:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1839:
.L801:
.LBE8071:
.LBE8070:
.LBE8069:
	.loc 16 253 0
	bl atoi
.LBE8068:
.LBE8067:
.LBB8075:
	.loc 2 899 0
	mr. 15,3
	bne- 0,.L845
.LVL1840:
.L802:
.LBE8075:
	.loc 2 944 0
	mr 3,31
	addi 4,22,424
	bl _ZN7idClass12CancelEventsEPK10idEventDef
	.loc 2 945 0
	lis 4,EV_Remove@ha
	mr 3,31
	la 4,EV_Remove@l(4)
	mr 5,23
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LVL1841:
.L768:
.LBE8450:
.LBE7964:
	.loc 2 946 0
	lwz 0,404(1)
	lwz 14,280(1)
	mtlr 0
	lwz 15,284(1)
	lwz 16,288(1)
	lwz 17,292(1)
	lwz 18,296(1)
	lwz 19,300(1)
	lwz 20,304(1)
	lwz 21,308(1)
	lwz 22,312(1)
	lwz 23,316(1)
	lwz 24,320(1)
	lwz 25,324(1)
	lwz 26,328(1)
	lwz 27,332(1)
	lwz 28,336(1)
	lwz 29,340(1)
	lwz 30,344(1)
	lwz 31,348(1)
.LVL1842:
	lfd 26,352(1)
	lfd 27,360(1)
	lfd 28,368(1)
	lfd 29,376(1)
	lfd 30,384(1)
	lfd 31,392(1)
	addi 1,1,400
	.cfi_remember_state
.LCFI194:
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
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL1843:
.L813:
.LCFI195:
	.cfi_restore_state
.LBB8452:
	lis 4,.LC120@ha
	la 4,.LC120@l(4)
	b .L770
.LVL1844:
.L778:
.LBB8451:
	.loc 2 825 0
	cmplwi 7,0,2
.LBB8383:
.LBB8384:
	.loc 16 241 0
	mr 3,27
.LBE8384:
.LBE8383:
	.loc 2 825 0
	ble- 7,.L846
	.loc 2 827 0
	cmpwi 7,0,9
	beq- 7,.L847
.LVL1845:
.LBB8386:
.LBB8387:
	.loc 16 241 0
	lis 4,.LC132@ha
.LVL1846:
	la 4,.LC132@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1847:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L819
.LVL1848:
.L835:
.LBB8388:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL1849:
.LBE8388:
.LBE8387:
.LBE8386:
	.loc 2 834 0
	cmpwi 7,4,0
	beq- 7,.L836
.LVL1850:
.L833:
	lbz 0,0(4)
	cmpwi 7,0,0
	bne- 7,.L779
.L836:
	lis 28,gameLocal@ha
	la 28,gameLocal@l(28)
	addis 25,28,0x25
	b .L786
.LVL1851:
.L774:
.LBB8391:
.LBB8392:
	.loc 16 241 0
	lis 4,.LC129@ha
	mr 3,27
	la 4,.LC129@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1852:
	.loc 16 245 0
	mr 4,26
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L775
.LVL1853:
.LBB8393:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
	b .L775
.LVL1854:
.L795:
.LBE8393:
.LBE8392:
.LBE8391:
	.loc 2 881 0
	lwz 9,100(30)
	mr 3,31
	li 5,1
	addi 9,9,132
	slwi 9,9,2
	add 9,28,9
	lwz 4,4(9)
	bl _ZN8idEntity4BindEPS_b
.LBB8394:
	.loc 2 885 0
	lwz 0,640(31)
	andis. 9,0,2048
	bne+ 0,.L837
.LVL1855:
.L834:
.LBB8053:
.LBB8054:
.LBB8055:
.LBB8056:
.LBB8057:
	.loc 16 241 0
	lis 4,.LC139@ha
	mr 3,27
	la 4,.LC139@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1856:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L825
.LVL1857:
.LBB8058:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1858:
.L797:
.LBE8058:
.LBE8057:
.LBE8056:
	.loc 16 249 0
	bl atof
.LBE8055:
.LBE8054:
	.loc 2 887 0
	lis 11,.LC20@ha
.LBB8063:
.LBB8061:
	.loc 16 249 0
	frsp 1,1
.LBE8061:
.LBE8063:
	.loc 2 887 0
	lfs 0,.LC20@l(11)
	fcmpu 7,1,0
	beq- 7,.L798
	.loc 2 888 0
	xoris 0,23,0x8000
	lis 11,.LC4@ha
	stw 0,196(1)
	lis 0,0x4330
	stw 0,192(1)
	lis 9,.LC62@ha
	lfs 0,.LC4@l(11)
	lfd 12,192(1)
	fsub 12,12,0
	lfs 0,.LC62@l(9)
	fmuls 13,1,0
	frsp 12,12
	fcmpu 7,12,13
	bnl- 7,.L799
	.loc 2 889 0
	lis 9,.LC140@ha
	fmr 12,1
	lfd 13,.LC140@l(9)
	addi 9,1,256
	fadd 13,12,13
	fmul 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 23,256(1)
.LVL1859:
.L799:
	.loc 2 891 0
	lis 22,.LANCHOR0@ha
	li 0,101
	la 22,.LANCHOR0@l(22)
	mr 3,31
	addi 4,22,552
	addi 5,1,200
	stw 0,200(1)
	stw 29,204(1)
	bl _ZN7idClass12PostEventSecEPK10idEventDeff10idEventArg
	b .L796
.LVL1860:
.L842:
.LBE8053:
.LBE8394:
	.loc 2 843 0
	li 23,3000
.LVL1861:
	b .L786
.LVL1862:
.L847:
.LBB8395:
.LBB8396:
	.loc 16 241 0
	lis 4,.LC131@ha
.LVL1863:
	la 4,.LC131@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1864:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L835
.LVL1865:
.L819:
.LBE8396:
.LBE8395:
.LBB8397:
.LBB8389:
	.loc 16 245 0
	mr 4,26
	b .L833
.LVL1866:
.L843:
.LBE8389:
.LBE8397:
	.loc 2 849 0
	lis 9,declManager@ha
	mr 4,26
	lwz 3,declManager@l(9)
.LVL1867:
	li 5,0
	li 6,0
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	.loc 2 850 0
	li 0,1
	.loc 2 849 0
	stw 3,808(31)
.LBB8398:
.LBB8399:
.LBB8400:
.LBB8401:
	.loc 16 241 0
	lis 4,.LC134@ha
.LBE8401:
.LBE8400:
.LBE8399:
.LBE8398:
	.loc 2 850 0
	stb 0,714(31)
.LVL1868:
.LBB8410:
.LBB8407:
.LBB8405:
.LBB8403:
	.loc 16 241 0
	mr 3,27
	la 4,.LC134@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1869:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L821
.LVL1870:
.LBB8402:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1871:
.L790:
.LBE8402:
.LBE8403:
.LBE8405:
	.loc 16 249 0
	bl atof
.LBE8407:
.LBE8410:
	.loc 2 854 0
	lis 4,.LC135@ha
.LBB8411:
.LBB8408:
	.loc 16 249 0
	frsp 1,1
.LBE8408:
.LBE8411:
	.loc 2 854 0
	lis 5,.LC136@ha
	la 4,.LC135@l(4)
	la 5,.LC136@l(5)
	addi 6,31,888
	mr 3,27
	.loc 2 853 0
	stfs 1,724(31)
	stfs 1,720(31)
	stfs 1,716(31)
	.loc 2 854 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	.loc 2 856 0
	lwz 9,892(31)
	.loc 2 857 0
	lwz 0,896(31)
.LBB8412:
.LBB8413:
.LBB8414:
.LBB8415:
	.loc 16 241 0
	lis 4,.LC137@ha
.LBE8415:
.LBE8414:
.LBE8413:
.LBE8412:
	.loc 2 856 0
	stw 9,816(31)
	.loc 2 858 0
	lis 9,.LC2@ha
	.loc 2 857 0
	stw 0,820(31)
.LBB8430:
.LBB8425:
.LBB8421:
.LBB8417:
	.loc 16 241 0
	mr 3,27
.LBE8417:
.LBE8421:
.LBE8425:
.LBE8430:
	.loc 2 855 0
	lwz 11,888(31)
.LBB8431:
.LBB8426:
.LBB8422:
.LBB8418:
	.loc 16 241 0
	la 4,.LC137@l(4)
.LBE8418:
.LBE8422:
.LBE8426:
.LBE8431:
	.loc 2 858 0
	lwz 0,.LC2@l(9)
	.loc 2 859 0
	lis 9,0x4330
	.loc 2 855 0
	stw 11,812(31)
	.loc 2 859 0
	lis 11,.LC4@ha
	.loc 2 858 0
	stw 0,824(31)
	.loc 2 859 0
	lfs 0,.LC4@l(11)
	lwz 0,2004(25)
	stw 9,184(1)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	xoris 0,0,0x8000
	stw 0,188(1)
	lfd 13,184(1)
	fsub 0,13,0
	lfs 13,_ZN6idMath8M_MS2SECE@l(9)
	frsp 0,0
	fmuls 0,0,13
	fneg 0,0
	stfs 0,828(31)
.LVL1872:
.LBB8432:
.LBB8427:
.LBB8423:
.LBB8419:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1873:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L822
.LVL1874:
.LBB8416:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1875:
.L791:
.LBE8416:
.LBE8419:
.LBE8423:
	.loc 16 249 0
	bl atof
.LBE8427:
.LBE8432:
	.loc 2 862 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
.LBB8433:
.LBB8428:
	.loc 16 249 0
	frsp 1,1
.LBE8428:
.LBE8433:
	.loc 2 862 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(9)
	.loc 2 861 0
	lwz 0,2004(25)
.LBB8434:
.LBB8435:
	.loc 8 825 0
	addi 11,1,260
.LBE8435:
.LBE8434:
	.loc 2 863 0
	mr 3,31
	li 4,1
	.loc 2 862 0
	fmuls 0,1,0
	.loc 2 861 0
	stw 0,880(31)
	.loc 2 862 0
	lwz 9,2004(25)
.LBB8437:
.LBB8436:
	.loc 8 825 0
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 0,260(1)
.LBE8436:
.LBE8437:
	.loc 2 862 0
	add 0,9,0
	stw 0,884(31)
	.loc 2 863 0
	bl _ZN8idEntity12BecomeActiveEi
	b .L789
.LVL1876:
.L841:
	.loc 2 808 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	addi 4,1,36
	lwz 9,0(3)
	mr 25,3
	addi 3,1,120
	lwz 28,120(9)
	bl _ZNK6idVec36ToMat3Ev
	mr 3,25
	addi 4,1,120
	li 5,-1
	mtctr 28
	bctrl
	b .L772
.LVL1877:
.L845:
.LBB8438:
.LBB8076:
	.loc 2 900 0
	lis 4,.LC143@ha
	mr 3,28
	la 4,.LC143@l(4)
	li 5,0
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL1878:
.LBB8077:
	.loc 2 901 0
	mr. 18,3
	beq- 0,.L803
.LVL1879:
.LBB8078:
.LBB8079:
.LBB8080:
.LBB8081:
.LBB8082:
.LBB8083:
	.loc 7 71 0
	addis 30,28,0x1
.LVL1880:
	lis 27,0x1
.LVL1881:
	lwz 9,-32064(30)
	ori 27,27,3533
	mullw 9,27,9
	addi 9,9,1
	.loc 7 72 0
	rlwinm 0,9,0,17,31
	.loc 7 71 0
	stw 9,-32064(30)
.LBE8083:
.LBE8082:
	.loc 7 79 0
	divw 16,0,15
	mullw 16,16,15
.LBE8081:
.LBE8080:
.LBE8079:
.LBB8084:
	.loc 2 903 0
	subf. 16,16,0
	ble- 0,.L803
	lis 11,.LC4@ha
	lis 8,.LC5@ha
	lis 10,.LC6@ha
	lis 6,.LC98@ha
	lis 7,.LC22@ha
	lis 19,_ZN6idMath5iSqrtE@ha
.LBB8085:
.LBB8086:
.LBB8087:
.LBB8088:
.LBB8089:
	.loc 7 83 0
	lfs 29,.LC4@l(11)
.LBE8089:
.LBE8088:
.LBE8087:
.LBE8086:
	.loc 2 913 0
	lis 17,.LC145@ha
	.loc 2 906 0
	lis 11,.LC144@ha
.LBB8123:
.LBB8112:
	.loc 7 87 0
	lfs 30,.LC5@l(8)
	lfs 31,.LC6@l(10)
.LBE8112:
.LBE8123:
.LBE8085:
	.loc 2 903 0
	li 25,0
.LBB8225:
	.loc 2 906 0
	lfs 27,.LC144@l(11)
	la 19,_ZN6idMath5iSqrtE@l(19)
	.loc 2 908 0
	lfs 26,.LC98@l(6)
	addi 20,1,8
.LBB8124:
.LBB8125:
.LBB8126:
.LBB8127:
	.loc 8 278 0
	lfs 28,.LC22@l(7)
	addi 21,1,24
.LBE8127:
.LBE8126:
.LBE8125:
.LBE8124:
.LBB8132:
.LBB8113:
.LBB8104:
.LBB8096:
	.loc 7 83 0
	lis 29,0x4330
.LVL1882:
.LBE8096:
.LBE8104:
.LBE8113:
.LBE8132:
	.loc 2 913 0
	la 17,.LC145@l(17)
	b .L807
.LVL1883:
.L804:
	mr 3,28
	mr 4,17
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LBB8133:
.LBB8134:
	.loc 4 634 0
	lwz 0,636(31)
.LBE8134:
.LBE8133:
	.loc 2 916 0
	lwz 24,8(1)
.LVL1884:
.LBB8138:
.LBB8135:
	.loc 4 638 0
	li 14,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1885:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L848
.LVL1886:
.L806:
.LBE8135:
.LBE8138:
	.loc 2 917 0
	li 4,0
	mr 3,26
	bl _ZNK19idPhysics_RigidBody9GetOriginEi
	mr 4,21
	mr 5,3
	addi 3,1,84
	stw 5,272(1)
	bl _ZNK6idVec36ToMat3Ev
	lwz 5,272(1)
	mr 3,24
	mr 4,14
	addi 6,1,84
	bl _ZN8idDebris6CreateEP8idEntityRK6idVec3RK6idMat3
.LBE8225:
	.loc 2 903 0
	addi 25,25,1
.LBB8226:
	.loc 2 918 0
	mr 3,24
	bl _ZN8idDebris6LaunchEv
.LVL1887:
.LBE8226:
	.loc 2 903 0
	cmpw 7,25,16
	beq- 7,.L803
	lwz 9,-32064(30)
.LVL1888:
.L807:
.LBB8227:
.LBB8139:
.LBB8114:
.LBB8105:
.LBB8097:
.LBB8090:
.LBB8091:
	.loc 7 71 0
	mullw 9,9,27
.LBE8091:
.LBE8090:
.LBE8097:
.LBE8105:
.LBE8114:
.LBE8139:
.LBB8140:
.LBB8141:
.LBB8142:
.LBB8143:
	.loc 7 83 0
	stw 29,216(1)
.LBE8143:
.LBE8142:
.LBE8141:
.LBE8140:
.LBB8173:
.LBB8115:
.LBB8106:
.LBB8098:
	stw 29,208(1)
.LBE8098:
.LBE8106:
.LBE8115:
.LBE8173:
	.loc 2 911 0
	mr 3,28
.LBB8174:
.LBB8175:
	.loc 7 83 0
	stw 29,224(1)
.LBE8175:
.LBE8174:
	.loc 2 911 0
	mr 4,18
	mr 5,20
.LBB8190:
.LBB8116:
.LBB8107:
.LBB8099:
.LBB8094:
.LBB8092:
	.loc 7 71 0
	addi 9,9,1
.LBE8092:
.LBE8094:
.LBE8099:
.LBE8107:
.LBE8116:
.LBE8190:
	.loc 2 911 0
	li 6,0
.LBB8191:
.LBB8164:
.LBB8157:
.LBB8150:
.LBB8144:
.LBB8145:
	.loc 7 71 0
	mullw 11,9,27
.LBE8145:
.LBE8144:
.LBE8150:
.LBE8157:
.LBE8164:
.LBE8191:
.LBB8192:
.LBB8117:
.LBB8108:
.LBB8100:
.LBB8095:
.LBB8093:
	.loc 7 72 0
	rlwinm 9,9,0,17,31
.LBE8093:
.LBE8095:
	.loc 7 83 0
	xoris 9,9,0x8000
	stw 9,212(1)
.LBE8100:
.LBE8108:
.LBE8117:
.LBE8192:
.LBB8193:
.LBB8165:
.LBB8158:
.LBB8151:
.LBB8148:
.LBB8146:
	.loc 7 71 0
	addi 0,11,1
.LBE8146:
.LBE8148:
.LBE8151:
.LBE8158:
.LBE8165:
.LBE8193:
.LBB8194:
.LBB8118:
.LBB8109:
.LBB8101:
	.loc 7 83 0
	lfd 11,208(1)
.LBE8101:
.LBE8109:
.LBE8118:
.LBE8194:
.LBB8195:
.LBB8166:
.LBB8159:
.LBB8152:
.LBB8149:
.LBB8147:
	.loc 7 72 0
	rlwinm 9,0,0,17,31
.LBE8147:
.LBE8149:
	.loc 7 83 0
	xoris 9,9,0x8000
.LBE8152:
.LBE8159:
.LBE8166:
.LBE8195:
.LBB8196:
.LBB8119:
.LBB8110:
.LBB8102:
	fsub 11,11,29
.LBE8102:
.LBE8110:
.LBE8119:
.LBE8196:
.LBB8197:
.LBB8167:
.LBB8160:
.LBB8153:
	stw 9,220(1)
.LBE8153:
.LBE8160:
.LBE8167:
.LBE8197:
.LBB8198:
.LBB8182:
.LBB8176:
.LBB8177:
	.loc 7 71 0
	mullw 9,0,27
.LBE8177:
.LBE8176:
.LBE8182:
.LBE8198:
.LBB8199:
.LBB8168:
.LBB8161:
.LBB8154:
	.loc 7 83 0
	lfd 12,216(1)
.LBE8154:
.LBE8161:
.LBE8168:
.LBE8199:
.LBB8200:
.LBB8120:
.LBB8111:
.LBB8103:
	frsp 11,11
.LBE8103:
.LBE8111:
.LBE8120:
.LBE8200:
.LBB8201:
.LBB8169:
.LBB8162:
.LBB8155:
	fsub 12,12,29
.LBE8155:
.LBE8162:
.LBE8169:
.LBE8201:
.LBB8202:
.LBB8183:
.LBB8180:
.LBB8178:
	.loc 7 71 0
	addi 0,9,1
	.loc 7 72 0
	rlwinm 9,0,0,17,31
.LBE8178:
.LBE8180:
.LBE8183:
.LBE8202:
.LBB8203:
.LBB8121:
	.loc 7 87 0
	fmsubs 11,11,30,31
.LBE8121:
.LBE8203:
.LBB8204:
.LBB8184:
	.loc 7 83 0
	xoris 9,9,0x8000
.LBE8184:
.LBE8204:
.LBB8205:
.LBB8170:
.LBB8163:
.LBB8156:
	frsp 12,12
.LBE8156:
.LBE8163:
.LBE8170:
.LBE8205:
.LBB8206:
.LBB8185:
	stw 9,228(1)
.LBE8185:
.LBE8206:
.LBB8207:
.LBB8122:
	.loc 7 87 0
	fadds 11,11,11
.LBE8122:
.LBE8207:
.LBB8208:
.LBB8186:
	.loc 7 83 0
	lfd 13,224(1)
.LBE8186:
.LBE8208:
.LBB8209:
.LBB8171:
	.loc 7 87 0
	fmsubs 12,12,30,31
.LBE8171:
.LBE8209:
.LBB8210:
.LBB8187:
.LBB8181:
.LBB8179:
	.loc 7 71 0
	stw 0,-32064(30)
.LBE8179:
.LBE8181:
	.loc 7 83 0
	fsub 13,13,29
.LBE8187:
.LBE8210:
	.loc 2 906 0
	fmuls 11,11,27
.LVL1889:
.LBB8211:
.LBB8172:
	.loc 7 87 0
	fadds 12,12,12
.LBE8172:
.LBE8211:
.LBB8212:
.LBB8188:
	.loc 7 83 0
	frsp 13,13
.LBE8188:
.LBE8212:
	.loc 2 907 0
	fmuls 12,12,27
.LBB8213:
.LBB8189:
	.loc 7 83 0
	fmuls 13,13,30
.LBE8189:
.LBE8213:
.LBB8214:
.LBB8130:
	.loc 3 649 0
	fmuls 10,12,12
.LBE8130:
.LBE8214:
	.loc 2 908 0
	fmuls 13,13,26
.LVL1890:
	.loc 3 649 0
	fmadds 10,11,11,10
	fmadds 10,13,13,10
	stfs 10,268(1)
.LVL1891:
.LBB8215:
.LBB8131:
.LBB8129:
.LBB8128:
	.loc 8 275 0
	fmuls 8,10,31
	.loc 8 270 0
	lwz 0,268(1)
.LVL1892:
	.loc 2 776 0
	fneg 8,8
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	lwzx 9,19,9
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 277 0
	stw 0,276(1)
	lfs 0,276(1)
	fmr 9,0
.LVL1893:
	.loc 8 278 0
	fmul 10,9,9
.LVL1894:
	fmadd 10,8,10,28
	fmul 10,9,10
.LVL1895:
	.loc 8 279 0
	fmul 0,10,10
	fmadd 0,8,0,28
.LVL1896:
	fmul 0,10,0
.LVL1897:
	.loc 8 280 0
	frsp 0,0
.LVL1898:
.LBE8128:
.LBE8129:
	.loc 3 651 0
	fmuls 11,11,0
	.loc 3 652 0
	fmuls 12,12,0
	.loc 3 653 0
	fmuls 0,13,0
	.loc 3 651 0
	stfs 11,24(1)
	.loc 3 652 0
	stfs 12,28(1)
	.loc 3 653 0
	stfs 0,32(1)
.LBE8131:
.LBE8215:
	.loc 2 911 0
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	.loc 2 912 0
	lwz 3,8(1)
	cmpwi 7,3,0
	beq- 7,.L804
.LVL1899:
.LBB8216:
.LBB8217:
	.loc 6 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1900:
.LBB8218:
.LBB8219:
	.loc 6 311 0
	lwz 11,376(22)
.LBE8219:
.LBE8218:
.LBE8217:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB8222:
.LBB8221:
.LBB8220:
	.loc 6 311 0
	cmpw 7,0,11
	blt- 7,.L804
	lwz 9,380(22)
	cmpw 7,0,9
	bgt- 7,.L804
.LBE8220:
.LBE8221:
.LBE8222:
.LBE8216:
.LBB8223:
.LBB8136:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 14,0
.LBE8136:
.LBE8223:
	.loc 2 916 0
	lwz 24,8(1)
.LVL1901:
.LBB8224:
.LBB8137:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1902:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L806
.LVL1903:
.L848:
	.loc 4 636 0
	addi 9,9,132
.LVL1904:
	slwi 9,9,2
.LVL1905:
	add 9,28,9
	lwz 14,4(9)
	b .L806
.LVL1906:
.L803:
.LBE8137:
.LBE8224:
.LBE8227:
.LBE8084:
.LBE8078:
.LBE8077:
	.loc 2 921 0
	lis 4,.LC146@ha
	mr 3,28
	la 4,.LC146@l(4)
	li 5,0
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL1907:
.LBB8228:
	.loc 2 922 0
	mr. 18,3
	beq- 0,.L802
.LVL1908:
.LBB8229:
.LBB8230:
.LBB8231:
.LBB8232:
.LBB8233:
.LBB8234:
	.loc 7 71 0
	addis 30,28,0x1
	lis 27,0x1
	lwz 9,-32064(30)
	ori 27,27,3533
	mullw 9,27,9
	addi 9,9,1
	.loc 7 72 0
	rlwinm 0,9,0,17,31
	.loc 7 71 0
	stw 9,-32064(30)
.LBE8234:
.LBE8233:
	.loc 7 79 0
	divw 17,0,15
	mullw 17,17,15
.LBE8232:
.LBE8231:
.LBE8230:
.LBB8235:
	.loc 2 924 0
	subf. 17,17,0
	ble- 0,.L802
	lis 11,.LC4@ha
	lis 8,.LC5@ha
	lis 10,.LC6@ha
	lis 6,.LC98@ha
	lis 7,.LC22@ha
	lis 19,_ZN6idMath5iSqrtE@ha
.LBB8236:
	.loc 2 934 0
	lis 16,.LC147@ha
.LBB8237:
.LBB8238:
.LBB8239:
.LBB8240:
	.loc 7 83 0
	lfs 28,.LC4@l(11)
.LBE8240:
.LBE8239:
	.loc 7 87 0
	lfs 29,.LC5@l(8)
.LBE8238:
.LBE8237:
.LBE8236:
	.loc 2 924 0
	li 25,0
.LBB8380:
.LBB8274:
.LBB8263:
	.loc 7 87 0
	lfs 30,.LC6@l(10)
	la 19,_ZN6idMath5iSqrtE@l(19)
.LBE8263:
.LBE8274:
	.loc 2 927 0
	lfs 31,.LC98@l(6)
	addi 20,1,8
.LBB8275:
.LBB8276:
.LBB8277:
.LBB8278:
	.loc 8 278 0
	lfs 27,.LC22@l(7)
	addi 21,1,24
.LBE8278:
.LBE8277:
.LBE8276:
.LBE8275:
.LBB8283:
.LBB8264:
.LBB8255:
.LBB8247:
	.loc 7 83 0
	lis 29,0x4330
.LBE8247:
.LBE8255:
.LBE8264:
.LBE8283:
	.loc 2 934 0
	la 16,.LC147@l(16)
	b .L811
.LVL1909:
.L808:
	mr 3,28
	mr 4,16
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LBB8284:
.LBB8285:
	.loc 4 634 0
	lwz 0,636(31)
.LBE8285:
.LBE8284:
	.loc 2 937 0
	lwz 24,8(1)
.LVL1910:
.LBB8289:
.LBB8286:
	.loc 4 638 0
	li 15,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1911:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L849
.LVL1912:
.L810:
.LBE8286:
.LBE8289:
	.loc 2 938 0
	li 4,0
	mr 3,26
	bl _ZNK19idPhysics_RigidBody9GetOriginEi
	mr 4,21
	mr 14,3
	addi 3,1,48
	bl _ZNK6idVec36ToMat3Ev
	mr 3,24
	mr 4,15
	mr 5,14
	addi 6,1,48
.LBE8380:
	.loc 2 924 0
	addi 25,25,1
.LBB8381:
	.loc 2 938 0
	bl _ZN8idDebris6CreateEP8idEntityRK6idVec3RK6idMat3
	.loc 2 939 0
	mr 3,24
	bl _ZN8idDebris6LaunchEv
.LVL1913:
.LBE8381:
	.loc 2 924 0
	cmpw 7,25,17
	beq- 7,.L802
	lwz 9,-32064(30)
.LVL1914:
.L811:
.LBB8382:
.LBB8290:
.LBB8265:
.LBB8256:
.LBB8248:
.LBB8241:
.LBB8242:
	.loc 7 71 0
	mullw 9,9,27
.LBE8242:
.LBE8241:
.LBE8248:
.LBE8256:
.LBE8265:
.LBE8290:
.LBB8291:
.LBB8292:
.LBB8293:
.LBB8294:
	.loc 7 83 0
	stw 29,240(1)
.LBE8294:
.LBE8293:
.LBE8292:
.LBE8291:
.LBB8324:
.LBB8266:
.LBB8257:
.LBB8249:
	stw 29,232(1)
.LBE8249:
.LBE8257:
.LBE8266:
.LBE8324:
	.loc 2 932 0
	mr 3,28
.LBB8325:
.LBB8326:
	.loc 7 83 0
	stw 29,248(1)
.LBE8326:
.LBE8325:
	.loc 2 932 0
	mr 4,18
	mr 5,20
.LBB8344:
.LBB8267:
.LBB8258:
.LBB8250:
.LBB8245:
.LBB8243:
	.loc 7 71 0
	addi 9,9,1
.LBE8243:
.LBE8245:
.LBE8250:
.LBE8258:
.LBE8267:
.LBE8344:
	.loc 2 932 0
	li 6,0
.LBB8345:
.LBB8315:
.LBB8308:
.LBB8301:
.LBB8295:
.LBB8296:
	.loc 7 71 0
	mullw 11,9,27
.LBE8296:
.LBE8295:
.LBE8301:
.LBE8308:
.LBE8315:
.LBE8345:
.LBB8346:
.LBB8268:
.LBB8259:
.LBB8251:
.LBB8246:
.LBB8244:
	.loc 7 72 0
	rlwinm 9,9,0,17,31
.LBE8244:
.LBE8246:
	.loc 7 83 0
	xoris 9,9,0x8000
	stw 9,236(1)
.LBE8251:
.LBE8259:
.LBE8268:
.LBE8346:
.LBB8347:
.LBB8316:
.LBB8309:
.LBB8302:
.LBB8299:
.LBB8297:
	.loc 7 71 0
	addi 0,11,1
.LBE8297:
.LBE8299:
.LBE8302:
.LBE8309:
.LBE8316:
.LBE8347:
.LBB8348:
.LBB8269:
.LBB8260:
.LBB8252:
	.loc 7 83 0
	lfd 11,232(1)
.LBE8252:
.LBE8260:
.LBE8269:
.LBE8348:
.LBB8349:
.LBB8317:
.LBB8310:
.LBB8303:
.LBB8300:
.LBB8298:
	.loc 7 72 0
	rlwinm 9,0,0,17,31
.LBE8298:
.LBE8300:
	.loc 7 83 0
	xoris 9,9,0x8000
.LBE8303:
.LBE8310:
.LBE8317:
.LBE8349:
.LBB8350:
.LBB8270:
.LBB8261:
.LBB8253:
	fsub 11,11,28
.LBE8253:
.LBE8261:
.LBE8270:
.LBE8350:
.LBB8351:
.LBB8318:
.LBB8311:
.LBB8304:
	stw 9,244(1)
.LBE8304:
.LBE8311:
.LBE8318:
.LBE8351:
.LBB8352:
.LBB8335:
.LBB8327:
.LBB8328:
	.loc 7 71 0
	mullw 9,0,27
.LBE8328:
.LBE8327:
.LBE8335:
.LBE8352:
.LBB8353:
.LBB8319:
.LBB8312:
.LBB8305:
	.loc 7 83 0
	lfd 12,240(1)
.LBE8305:
.LBE8312:
.LBE8319:
.LBE8353:
.LBB8354:
.LBB8271:
.LBB8262:
.LBB8254:
	frsp 11,11
.LBE8254:
.LBE8262:
.LBE8271:
.LBE8354:
.LBB8355:
.LBB8320:
.LBB8313:
.LBB8306:
	fsub 12,12,28
.LBE8306:
.LBE8313:
.LBE8320:
.LBE8355:
.LBB8356:
.LBB8336:
.LBB8332:
.LBB8329:
	.loc 7 71 0
	addi 0,9,1
	.loc 7 72 0
	rlwinm 9,0,0,17,31
.LBE8329:
.LBE8332:
.LBE8336:
.LBE8356:
.LBB8357:
.LBB8272:
	.loc 7 87 0
	fmsubs 11,11,29,30
.LBE8272:
.LBE8357:
.LBB8358:
.LBB8337:
	.loc 7 83 0
	xoris 9,9,0x8000
.LBE8337:
.LBE8358:
.LBB8359:
.LBB8321:
.LBB8314:
.LBB8307:
	frsp 12,12
.LBE8307:
.LBE8314:
.LBE8321:
.LBE8359:
.LBB8360:
.LBB8338:
	stw 9,252(1)
.LBE8338:
.LBE8360:
.LBB8361:
.LBB8273:
	.loc 7 87 0
	fadds 11,11,11
.LBE8273:
.LBE8361:
.LBB8362:
.LBB8339:
	.loc 7 83 0
	lfd 13,248(1)
.LBE8339:
.LBE8362:
.LBB8363:
.LBB8322:
	.loc 7 87 0
	fmsubs 12,12,29,30
.LBE8322:
.LBE8363:
.LBB8364:
.LBB8340:
.LBB8333:
.LBB8330:
	.loc 7 71 0
	stw 0,-32064(30)
.LBE8330:
.LBE8333:
	.loc 7 83 0
	fsub 13,13,28
.LBE8340:
.LBE8364:
	.loc 2 927 0
	fmuls 11,11,31
.LVL1915:
.LBB8365:
.LBB8323:
	.loc 7 87 0
	fadds 12,12,12
.LBE8323:
.LBE8365:
.LBB8366:
.LBB8341:
	.loc 7 83 0
	frsp 13,13
.LBE8341:
.LBE8366:
	.loc 2 928 0
	fmuls 12,12,31
.LBB8367:
.LBB8342:
	.loc 7 83 0
	fmuls 13,13,29
.LBE8342:
.LBE8367:
.LBB8368:
.LBB8281:
	.loc 3 649 0
	fmuls 10,12,12
.LBE8281:
.LBE8368:
.LBB8369:
.LBB8343:
.LBB8334:
.LBB8331:
	.loc 2 929 0
	fmadds 13,13,31,31
.LVL1916:
	.loc 3 649 0
	fmadds 10,11,11,10
	fmadds 10,13,13,10
	stfs 10,268(1)
.LVL1917:
.LBE8331:
.LBE8334:
.LBE8343:
.LBE8369:
.LBB8370:
.LBB8282:
.LBB8280:
.LBB8279:
	.loc 8 275 0
	fmuls 8,10,30
	.loc 8 270 0
	lwz 0,268(1)
.LVL1918:
	.loc 2 776 0
	fneg 8,8
	.loc 8 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	lwzx 9,19,9
	subfic 0,11,380
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 8 277 0
	stw 0,276(1)
	lfs 0,276(1)
	fmr 9,0
.LVL1919:
	.loc 8 278 0
	fmul 10,9,9
.LVL1920:
	fmadd 10,8,10,27
	fmul 10,9,10
.LVL1921:
	.loc 8 279 0
	fmul 0,10,10
	fmadd 0,8,0,27
.LVL1922:
	fmul 0,10,0
.LVL1923:
	.loc 8 280 0
	frsp 0,0
.LVL1924:
.LBE8279:
.LBE8280:
	.loc 3 651 0
	fmuls 11,11,0
	.loc 3 652 0
	fmuls 12,12,0
	.loc 3 653 0
	fmuls 0,13,0
	.loc 3 651 0
	stfs 11,24(1)
	.loc 3 652 0
	stfs 12,28(1)
	.loc 3 653 0
	stfs 0,32(1)
.LBE8282:
.LBE8370:
	.loc 2 932 0
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	.loc 2 933 0
	lwz 3,8(1)
	cmpwi 7,3,0
	beq- 7,.L808
.LVL1925:
.LBB8371:
.LBB8372:
	.loc 6 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1926:
.LBB8373:
.LBB8374:
	.loc 6 311 0
	lwz 11,376(22)
.LBE8374:
.LBE8373:
.LBE8372:
	.loc 2 2410 0
	lwz 0,56(3)
.LBB8377:
.LBB8376:
.LBB8375:
	.loc 6 311 0
	cmpw 7,0,11
	blt- 7,.L808
	lwz 9,380(22)
	cmpw 7,0,9
	bgt- 7,.L808
.LBE8375:
.LBE8376:
.LBE8377:
.LBE8371:
.LBB8378:
.LBB8287:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 15,0
.LBE8287:
.LBE8378:
	.loc 2 937 0
	lwz 24,8(1)
.LVL1927:
.LBB8379:
.LBB8288:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1928:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L810
.LVL1929:
.L849:
	.loc 4 636 0
	addi 9,9,132
.LVL1930:
	slwi 9,9,2
.LVL1931:
	add 9,28,9
	lwz 15,4(9)
	b .L810
.LVL1932:
.L844:
.LBE8288:
.LBE8379:
.LBE8382:
.LBE8235:
.LBE8229:
.LBE8228:
.LBE8076:
.LBE8438:
.LBB8439:
.LBB8043:
	addi 9,9,132
.LVL1933:
	slwi 9,9,2
.LVL1934:
	add 9,28,9
	lwz 4,4(9)
	b .L792
.LVL1935:
.L846:
.LBE8043:
.LBE8439:
.LBB8440:
.LBB8385:
	.loc 16 241 0
	lis 4,.LC130@ha
.LVL1936:
	la 4,.LC130@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1937:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L835
.LBE8385:
.LBE8440:
.LBB8441:
.LBB8390:
	.loc 16 245 0
	mr 4,26
	b .L833
.LVL1938:
.L814:
.LBE8390:
.LBE8441:
.LBB8442:
.LBB7990:
.LBB7988:
.LBB7987:
	lis 3,.LC31@ha
.LVL1939:
	la 3,.LC31@l(3)
	b .L773
.LVL1940:
.L826:
.LBE7987:
.LBE7988:
.LBE7990:
.LBE8442:
.LBB8443:
.LBB8074:
.LBB8073:
.LBB8072:
	lis 3,.LC30@ha
.LVL1941:
	la 3,.LC30@l(3)
	b .L801
.LVL1942:
.L798:
.LBE8072:
.LBE8073:
.LBE8074:
.LBE8443:
.LBB8444:
.LBB8065:
	.loc 2 893 0
	mr 3,31
	mr 4,29
	bl _ZN12idProjectile18Event_RadiusDamageEP8idEntity
	b .L837
.LVL1943:
.L824:
.LBE8065:
.LBE8444:
.LBB8445:
.LBB8051:
.LBB8050:
.LBB8049:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL1944:
	la 3,.LC30@l(3)
	b .L794
.LVL1945:
.L821:
.LBE8049:
.LBE8050:
.LBE8051:
.LBE8445:
.LBB8446:
.LBB8409:
.LBB8406:
.LBB8404:
	lis 3,.LC30@ha
.LVL1946:
	la 3,.LC30@l(3)
	b .L790
.LVL1947:
.L822:
.LBE8404:
.LBE8406:
.LBE8409:
.LBE8446:
.LBB8447:
.LBB8429:
.LBB8424:
.LBB8420:
	lis 3,.LC127@ha
.LVL1948:
	la 3,.LC127@l(3)
	b .L791
.LVL1949:
.L825:
.LBE8420:
.LBE8424:
.LBE8429:
.LBE8447:
.LBB8448:
.LBB8066:
.LBB8064:
.LBB8062:
.LBB8060:
.LBB8059:
	lis 3,.LC30@ha
.LVL1950:
	la 3,.LC30@l(3)
	b .L797
.LBE8059:
.LBE8060:
.LBE8062:
.LBE8064:
.LBE8066:
.LBE8448:
.LBE8451:
.LBE8452:
	.cfi_endproc
.LFE2843:
	.size	_ZN12idProjectile7ExplodeERK7trace_sP8idEntity, .-_ZN12idProjectile7ExplodeERK7trace_sP8idEntity
	.align 2
	.globl _ZN15idBFGProjectile7ExplodeERK7trace_sP8idEntity
	.type	_ZN15idBFGProjectile7ExplodeERK7trace_sP8idEntity, @function
_ZN15idBFGProjectile7ExplodeERK7trace_sP8idEntity:
.LFB2908:
	.loc 2 1981 0
	.cfi_startproc
.LVL1951:
	mflr 0
	stwu 1,-152(1)
.LCFI196:
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	mfcr 12
	stw 21,84(1)
	mr 21,5
	.cfi_offset 21, -68
	.cfi_register 70, 12
	stw 23,92(1)
	mr 23,4
	.cfi_offset 23, -60
	stw 27,108(1)
.LBB8510:
.LBB8511:
.LBB8512:
	.loc 4 638 0
	li 27,0
	.cfi_offset 27, -44
.LBE8512:
.LBE8511:
.LBE8510:
	.loc 2 1981 0
	stw 28,112(1)
.LBB8622:
.LBB8517:
.LBB8513:
	.loc 4 635 0
	lis 28,gameLocal@ha
	.cfi_offset 28, -40
.LBE8513:
.LBE8517:
.LBE8622:
	.loc 2 1981 0
	stw 31,124(1)
.LBB8623:
.LBB8518:
.LBB8514:
	.loc 4 635 0
	la 28,gameLocal@l(28)
.LBE8514:
.LBE8518:
.LBE8623:
	.loc 2 1981 0
	stw 0,156(1)
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -28
.LVL1952:
	stfd 29,128(1)
	stfd 30,136(1)
	stfd 31,144(1)
	stw 14,56(1)
	stw 15,60(1)
	stw 16,64(1)
	stw 17,68(1)
	stw 18,72(1)
	stw 19,76(1)
	stw 20,80(1)
	stw 22,88(1)
	stw 24,96(1)
	stw 25,100(1)
	stw 26,104(1)
	stw 29,116(1)
	stw 30,120(1)
	stw 12,52(1)
.LBB8624:
.LBB8519:
.LBB8515:
	.loc 4 634 0
	lwz 0,636(3)
	rlwinm 9,0,0,20,31
.LVL1953:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L887
	.cfi_offset 70, -100
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 22, -64
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
.LVL1954:
.L851:
.LBE8515:
.LBE8519:
	.loc 2 1998 0
	addi 30,31,100
.LBB8520:
.LBB8521:
.LBB8522:
.LBB8523:
	.loc 16 241 0
	lis 4,.LC148@ha
	mr 3,30
	la 4,.LC148@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE8523:
.LBE8522:
.LBE8521:
.LBE8520:
.LBB8536:
.LBB8537:
.LBB8538:
.LBB8539:
	.loc 2 1995 0
	li 24,0
.LVL1955:
.LBE8539:
.LBE8538:
.LBE8537:
.LBE8536:
.LBB8547:
.LBB8531:
.LBB8528:
.LBB8525:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L870
.L895:
.LVL1956:
.LBB8524:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1957:
.LBE8524:
.LBE8525:
.LBE8528:
	.loc 16 249 0
	bl atof
.LVL1958:
.LBE8531:
.LBE8547:
.LBB8548:
.LBB8549:
	.loc 16 241 0
	lis 4,.LC113@ha
	mr 3,30
	la 4,.LC113@l(4)
.LBE8549:
.LBE8548:
.LBB8554:
.LBB8532:
	.loc 16 249 0
	frsp 30,1
.LVL1959:
.LBE8532:
.LBE8554:
.LBB8555:
.LBB8551:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1960:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L871
.LVL1961:
.L896:
.LBB8550:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 25,4(9)
.LVL1962:
.L853:
.LBE8550:
.LBE8551:
.LBE8555:
	.loc 2 2001 0
	lwz 10,1496(31)
	cmpwi 7,10,0
	ble- 7,.L888
	lis 20,gameLocal+2424832@ha
	.loc 2 2013 0
	lis 9,.LC20@ha
.LBB8556:
.LBB8557:
.LBB8558:
.LBB8559:
	.loc 8 276 0
	lis 17,_ZN6idMath5iSqrtE@ha
.LBE8559:
.LBE8558:
.LBE8557:
.LBE8556:
	.loc 2 2002 0
	cmpwi 4,27,0
	.loc 2 2020 0
	cmpwi 3,24,0
	.loc 2 2001 0
	li 30,0
.LVL1963:
	li 29,0
	la 20,gameLocal+2424832@l(20)
.LBB8570:
.LBB8571:
	.loc 4 635 0
	mr 26,28
.LBE8571:
.LBE8570:
	.loc 2 2013 0
	lfs 29,.LC20@l(9)
.LBB8573:
.LBB8566:
.LBB8563:
.LBB8560:
	.loc 8 275 0
	lis 16,.LC6@ha
	.loc 8 276 0
	la 17,_ZN6idMath5iSqrtE@l(17)
	.loc 8 278 0
	lis 18,.LC22@ha
.LBE8560:
.LBE8563:
.LBE8566:
.LBE8573:
.LBB8574:
	.loc 2 2410 0
	lis 22,_ZN7idActor4TypeE@ha
.LBE8574:
	.loc 2 2016 0
	lis 19,.LC2@ha
	b .L863
.LVL1964:
.L855:
	.loc 2 2001 0
	addi 29,29,1
.LVL1965:
	addi 30,30,224
.LVL1966:
	cmpw 7,10,29
	ble- 7,.L854
.LVL1967:
.L863:
.LBB8579:
.LBB8572:
	.loc 4 634 0
	lwz 9,1508(31)
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL1968:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	bne+ 7,.L855
	.loc 4 636 0
	addi 9,9,132
.LVL1969:
	slwi 9,9,2
.LVL1970:
	add 9,26,9
	lwz 14,4(9)
.LBE8572:
.LBE8579:
	.loc 2 2002 0
	cmpwi 7,14,0
	beq- 7,.L855
	.loc 2 2002 0 is_stmt 0 discriminator 2
	beq- 4,.L855
.LVL1971:
	.loc 2 2006 0 is_stmt 1
	lwz 9,0(14)
	mr 3,31
	lwz 15,160(9)
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1972:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	addi 5,1,20
	mr 4,3
	mtctr 15
	mr 3,14
	bctrl
	cmpwi 7,3,0
	beq- 7,.L886
.LVL1973:
	.loc 2 2010 0
	lwz 9,1508(31)
	add 9,9,30
	stfs 30,172(9)
	.loc 2 2013 0
	lfs 31,652(31)
	fcmpu 7,31,29
	bne- 7,.L856
	.loc 2 2016 0
	lfs 31,.LC2@l(19)
.L856:
.LVL1974:
	.loc 2 2020 0
	beq- 3,.L857
.LVL1975:
.LBB8580:
.LBB8581:
	.loc 4 634 0
	lwz 9,1508(31)
	.loc 4 638 0
	li 3,0
	.loc 4 634 0
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL1976:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L889
.LVL1977:
.L858:
.LBE8581:
.LBE8580:
.LBB8583:
.LBB8575:
	.loc 6 340 0
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1978:
.LBE8575:
	.loc 2 2410 0
	la 9,_ZN7idActor4TypeE@l(22)
	lwz 0,56(3)
.LBB8578:
.LBB8576:
.LBB8577:
	.loc 6 311 0
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L857
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L857
.LBE8577:
.LBE8576:
.LBE8578:
.LBE8583:
	.loc 2 2023 0
	lwz 4,2004(20)
	mr 3,24
.LVL1979:
	bl _ZN8idPlayer14SetLastHitTimeEi
	.loc 2 2024 0
	mr 3,24
	li 4,1
	bl _ZN8idPlayer17AddProjectileHitsEi
	.loc 2 2025 0
	mr 3,24
	li 4,1
	bl _ZN8idPlayer15PowerUpModifierEi
	fmuls 31,31,1
.LVL1980:
.L857:
	.loc 2 2029 0
	lbz 0,0(25)
	cmpwi 7,0,0
	beq- 7,.L886
.LBB8584:
.LBB8585:
	.loc 4 634 0 discriminator 1
	lwz 9,1508(31)
	.loc 4 638 0 discriminator 1
	li 11,0
.LBE8585:
.LBE8584:
	.loc 2 2029 0 discriminator 1
	lwz 10,48(28)
.LVL1981:
.LBB8588:
.LBB8586:
	.loc 4 634 0 discriminator 1
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL1982:
	.loc 4 635 0 discriminator 1
	srawi 0,0,12
	addi 8,9,4228
	slwi 8,8,2
	add 8,28,8
	lwz 8,4(8)
	cmpw 7,8,0
	beq- 7,.L890
.L859:
.LBE8586:
.LBE8588:
	.loc 2 2029 0
	lwz 0,4(11)
	cmpw 6,10,0
	bgt- 6,.L886
.LVL1983:
.LBB8589:
.LBB8590:
	.loc 4 635 0 discriminator 4
	beq- 7,.L891
	.loc 4 638 0
	li 3,0
.LVL1984:
.L860:
.LBE8590:
.LBE8589:
	.loc 2 2030 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1985:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 15,3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL1986:
.LBB8592:
.LBB8593:
	.loc 3 431 0
	lfs 12,4(15)
	lfs 0,4(3)
	lfs 11,0(15)
	fsubs 12,12,0
	lfs 0,0(3)
	lfs 10,8(15)
	fsubs 11,11,0
	lfs 13,8(3)
.LBE8593:
.LBE8592:
.LBB8596:
.LBB8567:
	.loc 3 649 0
	fmuls 0,12,12
.LBE8567:
.LBE8596:
.LBB8597:
.LBB8598:
	.loc 4 634 0
	lwz 9,1508(31)
.LBE8598:
.LBE8597:
.LBB8603:
.LBB8594:
	.loc 3 431 0
	fsubs 13,10,13
.LVL1987:
.LBE8594:
.LBE8603:
.LBB8604:
.LBB8568:
.LBB8564:
.LBB8561:
	.loc 8 275 0
	lfs 7,.LC6@l(16)
	.loc 8 278 0
	lfs 8,.LC22@l(18)
.LBE8561:
.LBE8564:
.LBE8568:
.LBE8604:
.LBB8605:
.LBB8599:
	.loc 4 638 0
	li 3,0
.LVL1988:
.LBE8599:
.LBE8605:
.LBB8606:
.LBB8595:
	.loc 3 649 0
	fmadds 0,11,11,0
	fmadds 0,13,13,0
	stfs 0,40(1)
.LVL1989:
.LBE8595:
.LBE8606:
.LBB8607:
.LBB8569:
.LBB8565:
.LBB8562:
	.loc 8 275 0
	fmuls 7,0,7
	.loc 8 270 0
	lwz 0,40(1)
.LVL1990:
	.loc 2 1981 0
	fneg 7,7
	.loc 8 276 0
	rlwinm 11,0,19,21,29
	rlwinm 10,0,9,24,31
	lwzx 11,17,11
	subfic 0,10,380
	rlwinm 0,0,22,0,8
	or 0,0,11
	.loc 8 277 0
	stw 0,44(1)
	lfs 0,44(1)
.LVL1991:
	fmr 9,0
.LVL1992:
	.loc 8 278 0
	fmul 10,9,9
	fmadd 10,7,10,8
	fmul 10,9,10
.LVL1993:
	.loc 8 279 0
	fmul 0,10,10
	fmadd 0,7,0,8
.LVL1994:
	fmul 0,10,0
.LVL1995:
	.loc 8 280 0
	frsp 0,0
.LVL1996:
.LBE8562:
.LBE8565:
	.loc 3 651 0
	fmuls 11,11,0
.LVL1997:
	.loc 3 652 0
	fmuls 12,12,0
.LVL1998:
	.loc 3 653 0
	fmuls 0,13,0
	.loc 3 651 0
	stfs 11,8(1)
	.loc 3 652 0
	stfs 12,12(1)
	.loc 3 653 0
	stfs 0,16(1)
.LVL1999:
.LBE8569:
.LBE8607:
.LBB8608:
.LBB8600:
	.loc 4 634 0
	lwzx 0,9,30
	rlwinm 9,0,0,20,31
.LVL2000:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,28,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L892
.LBE8600:
.LBE8608:
	.loc 2 2032 0
	lwz 9,104(23)
.LVL2001:
	li 8,-1
	lwz 11,0(3)
	cmpwi 7,9,0
	lwz 0,164(11)
	blt- 7,.L893
.L862:
	.loc 2 2032 0 is_stmt 0 discriminator 6
	mr 4,31
	mr 5,27
	addi 6,1,8
	mr 7,25
	fmr 1,31
	mtctr 0
	bctrl
.LVL2002:
.L886:
	lwz 10,1496(31)
	.loc 2 2001 0 is_stmt 1 discriminator 6
	addi 29,29,1
.LVL2003:
	addi 30,30,224
	cmpw 7,10,29
	bgt+ 7,.L863
.LVL2004:
.L854:
	.loc 2 2036 0
	lwz 4,1728(31)
	cmpwi 7,4,0
	blt- 7,.L864
	.loc 2 2037 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
	.loc 2 2038 0
	li 0,-1
	stw 0,1728(31)
.L864:
	.loc 2 2041 0
	cmpwi 7,21,0
	beq- 7,.L894
.L865:
	.loc 2 2045 0
	lbz 0,2018(20)
	cmpwi 6,0,0
	bne- 6,.L866
	.loc 2 2047 0
	lis 4,.LANCHOR0@ha
	mr 3,31
	la 4,.LANCHOR0@l(4)
	addi 4,4,704
	.loc 2 2046 0
	beq- 7,.L867
	.loc 2 2047 0
	li 5,750
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.L866:
	.loc 2 2053 0
	mr 3,31
	mr 4,23
	mr 5,21
	bl _ZN12idProjectile7ExplodeERK7trace_sP8idEntity
.LBE8624:
	.loc 2 2054 0
	lwz 0,156(1)
	lwz 12,52(1)
	mtlr 0
	lwz 14,56(1)
	lwz 15,60(1)
	mtcrf 24,12
	lwz 16,64(1)
	lwz 17,68(1)
	lwz 18,72(1)
	lwz 19,76(1)
	lwz 20,80(1)
	lwz 21,84(1)
.LVL2005:
	lwz 22,88(1)
	lwz 23,92(1)
.LVL2006:
	lwz 24,96(1)
.LVL2007:
	lwz 25,100(1)
	lwz 26,104(1)
	lwz 27,108(1)
	lwz 28,112(1)
	lwz 29,116(1)
	lwz 30,120(1)
	lwz 31,124(1)
.LVL2008:
	lfd 29,128(1)
	lfd 30,136(1)
	lfd 31,144(1)
	addi 1,1,152
	.cfi_remember_state
.LCFI197:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL2009:
.L889:
.LCFI198:
	.cfi_restore_state
.LBB8625:
.LBB8609:
.LBB8582:
	.loc 4 636 0
	addi 9,9,132
.LVL2010:
	slwi 9,9,2
.LVL2011:
	add 9,26,9
	lwz 3,4(9)
	b .L858
.LVL2012:
.L887:
.LBE8582:
.LBE8609:
.LBB8610:
.LBB8516:
	addi 9,9,132
.LVL2013:
	slwi 9,9,2
.LVL2014:
	add 9,28,9
	lwz 27,4(9)
.LBE8516:
.LBE8610:
	.loc 2 1992 0
	cmpwi 7,27,0
	beq- 7,.L851
.LVL2015:
.LBB8611:
.LBB8544:
	.loc 6 340 0 discriminator 1
	lwz 9,0(27)
.LVL2016:
	mr 3,27
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2017:
.LBE8544:
	.loc 2 2410 0 discriminator 1
	lis 9,_ZN8idPlayer4TypeE@ha
	la 9,_ZN8idPlayer4TypeE@l(9)
	lwz 0,56(3)
.LBB8545:
.LBB8542:
.LBB8540:
	.loc 6 311 0 discriminator 1
	lwz 11,56(9)
	cmpw 7,0,11
	blt- 7,.L851
	.loc 6 311 0 is_stmt 0
	lwz 9,60(9)
	cmpw 7,0,9
	bgt- 7,.L851
.LBE8540:
.LBE8542:
.LBE8545:
.LBE8611:
	.loc 2 1998 0 is_stmt 1
	addi 30,31,100
.LBB8612:
.LBB8533:
.LBB8529:
.LBB8526:
	.loc 16 241 0
	lis 4,.LC148@ha
	mr 3,30
.LVL2018:
	la 4,.LC148@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LBE8526:
.LBE8529:
.LBE8533:
.LBE8612:
.LBB8613:
.LBB8546:
.LBB8543:
.LBB8541:
	.loc 6 311 0
	mr 24,27
.LVL2019:
.LBE8541:
.LBE8543:
.LBE8546:
.LBE8613:
.LBB8614:
.LBB8534:
.LBB8530:
.LBB8527:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L895
.LVL2020:
.L870:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL2021:
	la 3,.LC30@l(3)
.LBE8527:
.LBE8530:
	.loc 16 249 0
	bl atof
.LBE8534:
.LBE8614:
.LBB8615:
.LBB8552:
	.loc 16 241 0
	lis 4,.LC113@ha
	mr 3,30
	la 4,.LC113@l(4)
.LBE8552:
.LBE8615:
.LBB8616:
.LBB8535:
	.loc 16 249 0
	frsp 30,1
.LVL2022:
.LBE8535:
.LBE8616:
.LBB8617:
.LBB8553:
	.loc 16 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL2023:
	.loc 16 242 0
	cmpwi 0,3,0
	bne+ 0,.L896
.LVL2024:
.L871:
	.loc 16 245 0
	lis 25,.LC27@ha
	la 25,.LC27@l(25)
	b .L853
.LVL2025:
.L891:
.LBE8553:
.LBE8617:
.LBB8618:
.LBB8591:
	.loc 4 636 0
	addi 9,9,132
.LVL2026:
	slwi 9,9,2
.LVL2027:
	add 9,28,9
	lwz 3,4(9)
	b .L860
.LVL2028:
.L890:
.LBE8591:
.LBE8618:
.LBB8619:
.LBB8587:
	addi 11,9,132
	slwi 11,11,2
	add 11,26,11
	lwz 11,4(11)
	b .L859
.LVL2029:
.L892:
.LBE8587:
.LBE8619:
.LBB8620:
.LBB8601:
	addi 9,9,132
.LVL2030:
.LBE8601:
.LBE8620:
	.loc 2 2032 0
	li 8,-1
.LBB8621:
.LBB8602:
	.loc 4 636 0
	slwi 9,9,2
.LVL2031:
	add 9,26,9
	lwz 3,4(9)
.LBE8602:
.LBE8621:
	.loc 2 2032 0
	lwz 9,104(23)
	lwz 11,0(3)
	cmpwi 7,9,0
	lwz 0,164(11)
	bge+ 7,.L862
.L893:
	.loc 2 2032 0 is_stmt 0 discriminator 3
	nor 8,9,9
	b .L862
.LVL2032:
.L867:
	.loc 2 2049 0 is_stmt 1
	li 5,0
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
	b .L866
.L894:
	.loc 2 2042 0
	lwz 0,640(31)
	li 9,1
	rlwimi 0,9,27,4,4
	stw 0,640(31)
	b .L865
.LVL2033:
.L888:
	lis 20,gameLocal+2424832@ha
	la 20,gameLocal+2424832@l(20)
	b .L854
.LBE8625:
	.cfi_endproc
.LFE2908:
	.size	_ZN15idBFGProjectile7ExplodeERK7trace_sP8idEntity, .-_ZN15idBFGProjectile7ExplodeERK7trace_sP8idEntity
	.align 2
	.globl _ZN8idDebris6FizzleEv
	.type	_ZN8idDebris6FizzleEv, @function
_ZN8idDebris6FizzleEv:
.LFB2926:
	.loc 2 2329 0
	.cfi_startproc
.LVL2034:
	mflr 0
	stwu 1,-48(1)
.LCFI199:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
.LBB8640:
	.loc 2 2330 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	bl _ZNK8idEntity8IsHiddenEv
.LVL2035:
	cmpwi 7,3,0
	beq- 7,.L904
.L897:
.LBE8640:
	.loc 2 2358 0
	lwz 0,52(1)
	lwz 25,20(1)
	mtlr 0
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL2036:
	addi 1,1,48
	.cfi_remember_state
.LCFI200:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL2037:
.L904:
.LCFI201:
	.cfi_restore_state
.LBB8641:
.LBB8642:
	.loc 2 2335 0
	mr 3,31
	li 4,0
	li 5,0
	bl _ZN8idEntity9StopSoundEib
	.loc 2 2336 0
	lis 4,.LC100@ha
	la 4,.LC100@l(4)
	li 5,3
	li 6,0
	li 7,0
	li 8,0
	mr 3,31
	bl _ZN8idEntity10StartSoundEPKciibPi
.LVL2038:
.LBB8643:
.LBB8644:
	.loc 16 241 0
	lis 4,.LC101@ha
	addi 3,31,100
	la 4,.LC101@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2039:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L901
.LVL2040:
.LBB8645:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL2041:
.L899:
.LBE8645:
.LBE8644:
.LBE8643:
	.loc 2 2340 0
	lbz 0,0(5)
	cmpwi 7,0,0
	bne- 7,.L903
	lis 30,gameLocal+2424832@ha
	la 30,gameLocal+2424832@l(30)
.LVL2042:
.L900:
	.loc 2 2346 0
	lwz 0,192(31)
	li 9,0
	.loc 2 2347 0
	addi 29,31,640
	li 4,0
	.loc 2 2346 0
	rlwimi 0,9,29,2,2
	.loc 2 2347 0
	li 5,-1
	.loc 2 2346 0
	stw 0,192(31)
	.loc 2 2347 0
	mr 3,29
	bl _ZN19idPhysics_RigidBody11SetContentsEii
	.loc 2 2348 0
	mr 3,29
	bl _ZN19idPhysics_RigidBody9PutToRestEv
	.loc 2 2350 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 2 2352 0
	lbz 0,2018(30)
	cmpwi 7,0,0
	bne+ 7,.L897
	.loc 2 2356 0
	lis 4,.LANCHOR0@ha
	mr 3,31
	la 4,.LANCHOR0@l(4)
	addi 4,4,488
	bl _ZN7idClass12CancelEventsEPK10idEventDef
	.loc 2 2357 0
	lis 4,EV_Remove@ha
	mr 3,31
	la 4,EV_Remove@l(4)
	li 5,0
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LBE8642:
.LBE8641:
	.loc 2 2358 0
	lwz 0,52(1)
	lwz 25,20(1)
	mtlr 0
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
.LVL2043:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI202:
	.cfi_def_cfa_offset 0
	blr
.LVL2044:
.L903:
.LCFI203:
	.cfi_restore_state
.LBB8697:
.LBB8696:
	.loc 2 2341 0
	lis 9,declManager@ha
	li 6,1
	lwz 3,declManager@l(9)
.LVL2045:
	li 7,0
	li 4,7
.LBB8647:
.LBB8648:
.LBB8649:
.LBB8650:
.LBB8651:
.LBB8652:
	.loc 7 71 0
	lis 26,0x1
.LBE8652:
.LBE8651:
.LBE8650:
.LBE8649:
.LBE8648:
.LBE8647:
	.loc 2 2341 0
	lwz 9,0(3)
.LBB8687:
.LBB8679:
.LBB8670:
.LBB8661:
.LBB8657:
.LBB8653:
	.loc 7 71 0
	ori 26,26,3533
.LBE8653:
.LBE8657:
.LBE8661:
.LBE8670:
.LBE8679:
.LBE8687:
	.loc 2 2341 0
	lwz 0,60(9)
	mtctr 0
	bctrl
	.loc 2 2342 0
	lis 9,gameLocal@ha
	.loc 2 2341 0
	stw 3,1184(31)
	.loc 2 2342 0
	la 9,gameLocal@l(9)
	addis 30,9,0x25
.LBB8688:
.LBB8680:
.LBB8671:
.LBB8662:
.LBB8658:
.LBB8654:
	.loc 7 71 0
	addis 9,9,0x1
.LBE8654:
.LBE8658:
.LBE8662:
.LBE8671:
.LBE8680:
.LBE8688:
	.loc 2 2342 0
	lwz 28,2004(30)
	.loc 2 2341 0
	mr 27,3
	.loc 2 2343 0
	mr 3,31
	.loc 2 2342 0
	stw 28,1188(31)
.LBB8689:
.LBB8681:
.LBB8672:
.LBB8663:
.LBB8659:
.LBB8655:
	.loc 7 71 0
	lwz 0,-32064(9)
.LBE8655:
.LBE8659:
.LBE8663:
.LBE8672:
.LBE8681:
.LBE8689:
	.loc 2 2343 0
	lwz 25,1972(30)
.LVL2046:
.LBB8690:
.LBB8682:
.LBB8673:
.LBB8664:
.LBB8660:
.LBB8656:
	.loc 7 71 0
	mullw 26,26,0
	addi 26,26,1
	stw 26,-32064(9)
	.loc 7 72 0
	rlwinm 26,26,0,17,31
.LBE8656:
.LBE8660:
	.loc 7 83 0
	xoris 26,26,0x8000
.LBE8664:
.LBE8673:
.LBE8682:
.LBE8690:
	.loc 2 2343 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 29,3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LBB8691:
.LBB8683:
.LBB8674:
.LBB8665:
	.loc 7 83 0
	lis 0,0x4330
	stw 26,12(1)
	lis 9,.LC4@ha
	stw 0,8(1)
.LBE8665:
.LBE8674:
.LBE8683:
.LBE8691:
	.loc 2 2343 0
	mr 7,3
.LBB8692:
.LBB8684:
.LBB8675:
.LBB8666:
	.loc 7 83 0
	lfs 0,.LC4@l(9)
.LBE8666:
.LBE8675:
	.loc 7 87 0
	lis 9,.LC6@ha
.LBB8676:
.LBB8667:
	.loc 7 83 0
	lfd 1,8(1)
.LBE8667:
.LBE8676:
.LBE8684:
.LBE8692:
	.loc 2 2343 0
	mr 3,25
	mr 4,27
	mr 5,28
.LBB8693:
.LBB8685:
.LBB8677:
.LBB8668:
	.loc 7 83 0
	fsub 1,1,0
.LBE8668:
.LBE8677:
	.loc 7 87 0
	lfs 0,.LC6@l(9)
	lis 9,.LC5@ha
.LBE8685:
.LBE8693:
	.loc 2 2343 0
	mr 6,29
.LBB8694:
.LBB8686:
	.loc 7 87 0
	lfs 13,.LC5@l(9)
.LBB8678:
.LBB8669:
	.loc 7 83 0
	frsp 1,1
.LBE8669:
.LBE8678:
	.loc 7 87 0
	fmsubs 1,1,13,0
.LBE8686:
.LBE8694:
	.loc 2 2343 0
	fadds 1,1,1
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
	b .L900
.LVL2047:
.L901:
.LBB8695:
.LBB8646:
	.loc 16 245 0
	lis 5,.LC27@ha
	la 5,.LC27@l(5)
	b .L899
.LBE8646:
.LBE8695:
.LBE8696:
.LBE8697:
	.cfi_endproc
.LFE2926:
	.size	_ZN8idDebris6FizzleEv, .-_ZN8idDebris6FizzleEv
	.align 2
	.globl _ZN8idDebris12Event_FizzleEv
	.type	_ZN8idDebris12Event_FizzleEv, @function
_ZN8idDebris12Event_FizzleEv:
.LFB2929:
	.loc 2 2408 0
	.cfi_startproc
.LVL2048:
	.loc 2 2410 0
	.loc 2 2409 0
	b _ZN8idDebris6FizzleEv
.LVL2049:
	.cfi_endproc
.LFE2929:
	.size	_ZN8idDebris12Event_FizzleEv, .-_ZN8idDebris12Event_FizzleEv
	.align 2
	.globl _ZN8idDebris7ExplodeEv
	.type	_ZN8idDebris7ExplodeEv, @function
_ZN8idDebris7ExplodeEv:
.LFB2927:
	.loc 2 2365 0
	.cfi_startproc
.LVL2050:
	mflr 0
	stwu 1,-40(1)
.LCFI204:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 30,32(1)
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 0,44(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
.LBB8712:
	.loc 2 2366 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	bl _ZNK8idEntity8IsHiddenEv
.LVL2051:
	mr. 30,3
	beq- 0,.L911
.LBE8712:
	.loc 2 2392 0
	lwz 0,44(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL2052:
	addi 1,1,40
	.cfi_remember_state
.LCFI205:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL2053:
.L911:
.LCFI206:
	.cfi_restore_state
.LBB8713:
.LBB8714:
	.loc 2 2371 0
	mr 3,31
	li 4,0
	li 5,0
	bl _ZN8idEntity9StopSoundEib
	.loc 2 2372 0
	lis 4,.LC120@ha
	la 4,.LC120@l(4)
	li 5,3
	li 6,0
	li 7,0
	li 8,0
	mr 3,31
	bl _ZN8idEntity10StartSoundEPKciibPi
	.loc 2 2374 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 2 2377 0
	stw 30,1184(31)
	.loc 2 2378 0
	stw 30,1188(31)
.LVL2054:
.LBB8715:
.LBB8716:
	.loc 16 241 0
	lis 4,.LC149@ha
	addi 3,31,100
	la 4,.LC149@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2055:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L910
.LVL2056:
.LBB8717:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL2057:
.L908:
.LBE8717:
.LBE8716:
.LBE8715:
	.loc 2 2380 0
	lbz 0,0(5)
	cmpwi 7,0,0
	bne- 7,.L912
.LVL2058:
.L909:
	.loc 2 2386 0
	lwz 0,192(31)
	li 9,0
	.loc 2 2387 0
	addi 30,31,640
	li 5,-1
	.loc 2 2386 0
	rlwimi 0,9,29,2,2
	.loc 2 2387 0
	li 4,0
	.loc 2 2386 0
	stw 0,192(31)
	.loc 2 2387 0
	mr 3,30
	bl _ZN19idPhysics_RigidBody11SetContentsEii
	.loc 2 2388 0
	mr 3,30
	bl _ZN19idPhysics_RigidBody9PutToRestEv
	.loc 2 2390 0
	lis 4,.LANCHOR0@ha
	la 4,.LANCHOR0@l(4)
	mr 3,31
	addi 4,4,424
	bl _ZN7idClass12CancelEventsEPK10idEventDef
	.loc 2 2391 0
	lis 4,EV_Remove@ha
	mr 3,31
	la 4,EV_Remove@l(4)
	li 5,0
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LBE8714:
.LBE8713:
	.loc 2 2392 0
	lwz 0,44(1)
	lwz 26,16(1)
	mtlr 0
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL2059:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI207:
	.cfi_def_cfa_offset 0
	blr
.LVL2060:
.L912:
.LCFI208:
	.cfi_restore_state
.LBB8769:
.LBB8768:
	.loc 2 2381 0
	lis 9,declManager@ha
	li 6,1
	lwz 3,declManager@l(9)
.LVL2061:
	li 7,0
	li 4,7
.LBB8719:
.LBB8720:
.LBB8721:
.LBB8722:
.LBB8723:
.LBB8724:
	.loc 7 71 0
	lis 27,0x1
.LBE8724:
.LBE8723:
.LBE8722:
.LBE8721:
.LBE8720:
.LBE8719:
	.loc 2 2381 0
	lwz 9,0(3)
.LBB8759:
.LBB8751:
.LBB8742:
.LBB8733:
.LBB8729:
.LBB8725:
	.loc 7 71 0
	ori 27,27,3533
.LBE8725:
.LBE8729:
.LBE8733:
.LBE8742:
.LBE8751:
.LBE8759:
	.loc 2 2381 0
	lwz 0,60(9)
	mtctr 0
	bctrl
	.loc 2 2382 0
	lis 9,gameLocal@ha
	.loc 2 2381 0
	stw 3,1184(31)
	.loc 2 2382 0
	la 9,gameLocal@l(9)
	addis 11,9,0x25
.LBB8760:
.LBB8752:
.LBB8743:
.LBB8734:
.LBB8730:
.LBB8726:
	.loc 7 71 0
	addis 9,9,0x1
.LBE8726:
.LBE8730:
.LBE8734:
.LBE8743:
.LBE8752:
.LBE8760:
	.loc 2 2382 0
	lwz 29,2004(11)
	.loc 2 2381 0
	mr 28,3
	.loc 2 2383 0
	mr 3,31
	.loc 2 2382 0
	stw 29,1188(31)
.LBB8761:
.LBB8753:
.LBB8744:
.LBB8735:
.LBB8731:
.LBB8727:
	.loc 7 71 0
	lwz 0,-32064(9)
.LBE8727:
.LBE8731:
.LBE8735:
.LBE8744:
.LBE8753:
.LBE8761:
	.loc 2 2383 0
	lwz 26,1972(11)
.LVL2062:
.LBB8762:
.LBB8754:
.LBB8745:
.LBB8736:
.LBB8732:
.LBB8728:
	.loc 7 71 0
	mullw 27,27,0
	addi 27,27,1
	stw 27,-32064(9)
	.loc 7 72 0
	rlwinm 27,27,0,17,31
.LBE8728:
.LBE8732:
	.loc 7 83 0
	xoris 27,27,0x8000
.LBE8736:
.LBE8745:
.LBE8754:
.LBE8762:
	.loc 2 2383 0
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 30,3
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LBB8763:
.LBB8755:
.LBB8746:
.LBB8737:
	.loc 7 83 0
	lis 0,0x4330
	stw 27,12(1)
	lis 9,.LC4@ha
	stw 0,8(1)
.LBE8737:
.LBE8746:
.LBE8755:
.LBE8763:
	.loc 2 2383 0
	mr 7,3
.LBB8764:
.LBB8756:
.LBB8747:
.LBB8738:
	.loc 7 83 0
	lfs 0,.LC4@l(9)
.LBE8738:
.LBE8747:
	.loc 7 87 0
	lis 9,.LC6@ha
.LBB8748:
.LBB8739:
	.loc 7 83 0
	lfd 1,8(1)
.LBE8739:
.LBE8748:
.LBE8756:
.LBE8764:
	.loc 2 2383 0
	mr 3,26
	mr 4,28
	mr 5,29
.LBB8765:
.LBB8757:
.LBB8749:
.LBB8740:
	.loc 7 83 0
	fsub 1,1,0
.LBE8740:
.LBE8749:
	.loc 7 87 0
	lfs 0,.LC6@l(9)
	lis 9,.LC5@ha
.LBE8757:
.LBE8765:
	.loc 2 2383 0
	mr 6,30
.LBB8766:
.LBB8758:
	.loc 7 87 0
	lfs 13,.LC5@l(9)
.LBB8750:
.LBB8741:
	.loc 7 83 0
	frsp 1,1
.LBE8741:
.LBE8750:
	.loc 7 87 0
	fmsubs 1,1,13,0
.LBE8758:
.LBE8766:
	.loc 2 2383 0
	fadds 1,1,1
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
	b .L909
.LVL2063:
.L910:
.LBB8767:
.LBB8718:
	.loc 16 245 0
	lis 5,.LC27@ha
	la 5,.LC27@l(5)
	b .L908
.LBE8718:
.LBE8767:
.LBE8768:
.LBE8769:
	.cfi_endproc
.LFE2927:
	.size	_ZN8idDebris7ExplodeEv, .-_ZN8idDebris7ExplodeEv
	.align 2
	.globl _ZN8idDebris13Event_ExplodeEv
	.type	_ZN8idDebris13Event_ExplodeEv, @function
_ZN8idDebris13Event_ExplodeEv:
.LFB2928:
	.loc 2 2399 0
	.cfi_startproc
.LVL2064:
	.loc 2 2401 0
	.loc 2 2400 0
	b _ZN8idDebris7ExplodeEv
.LVL2065:
	.cfi_endproc
.LFE2928:
	.size	_ZN8idDebris13Event_ExplodeEv, .-_ZN8idDebris13Event_ExplodeEv
	.align 2
	.globl _ZN8idDebris6KilledEP8idEntityS1_iRK6idVec3i
	.type	_ZN8idDebris6KilledEP8idEntityS1_iRK6idVec3i, @function
_ZN8idDebris6KilledEP8idEntityS1_iRK6idVec3i:
.LFB2924:
	.loc 2 2302 0
	.cfi_startproc
.LVL2066:
	stwu 1,-16(1)
.LCFI209:
	.cfi_def_cfa_offset 16
	mflr 0
.LBB8776:
.LBB8777:
.LBB8778:
.LBB8779:
	.loc 16 241 0
	lis 4,.LC102@ha
.LVL2067:
.LBE8779:
.LBE8778:
.LBE8777:
.LBE8776:
	.loc 2 2302 0
	stw 31,12(1)
.LBB8793:
.LBB8789:
.LBB8785:
.LBB8781:
	.loc 16 241 0
	la 4,.LC102@l(4)
.LBE8781:
.LBE8785:
.LBE8789:
.LBE8793:
	.loc 2 2302 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LVL2068:
.LBB8794:
.LBB8790:
.LBB8786:
.LBB8782:
	.loc 16 241 0
	addi 3,3,100
.LVL2069:
.LBE8782:
.LBE8786:
.LBE8790:
.LBE8794:
	.loc 2 2302 0
	stw 0,20(1)
.LBB8795:
.LBB8791:
.LBB8787:
.LBB8783:
	.loc 16 241 0
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL2070:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L917
.LVL2071:
.LBB8780:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2072:
.L915:
.LBE8780:
.LBE8783:
.LBE8787:
	.loc 16 257 0
	bl atoi
.LBE8791:
.LBE8795:
	.loc 2 2303 0
	cmpwi 7,3,0
	.loc 2 2304 0
	mr 3,31
	.loc 2 2303 0
	bne- 7,.L918
	.loc 2 2308 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2073:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI210:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 2 2306 0
	b _ZN8idDebris6FizzleEv
.LVL2074:
.L918:
.LCFI211:
	.cfi_restore_state
	.loc 2 2308 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI212:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 2 2304 0
	b _ZN8idDebris7ExplodeEv
.LVL2075:
.L917:
.LCFI213:
	.cfi_restore_state
.LBB8796:
.LBB8792:
.LBB8788:
.LBB8784:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL2076:
	la 3,.LC30@l(3)
	b .L915
.LBE8784:
.LBE8788:
.LBE8792:
.LBE8796:
	.cfi_endproc
.LFE2924:
	.size	_ZN8idDebris6KilledEP8idEntityS1_iRK6idVec3i, .-_ZN8idDebris6KilledEP8idEntityS1_iRK6idVec3i
	.section	.text._ZN6idListI12beamTarget_tE5ClearEv,"axG",@progbits,_ZN6idListI12beamTarget_tE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI12beamTarget_tE5ClearEv
	.type	_ZN6idListI12beamTarget_tE5ClearEv, @function
_ZN6idListI12beamTarget_tE5ClearEv:
.LFB3151:
	.loc 5 192 0
	.cfi_startproc
.LVL2077:
	mflr 0
	stwu 1,-16(1)
.LCFI214:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 5 193 0
	lwz 3,12(3)
.LVL2078:
	cmpwi 7,3,0
	beq- 7,.L920
	.cfi_offset 65, 4
	.loc 5 194 0 discriminator 1
	bl _ZdaPv
.L920:
	.loc 5 197 0
	li 0,0
	stw 0,12(31)
	.loc 5 198 0
	stw 0,0(31)
	.loc 5 199 0
	stw 0,4(31)
	.loc 5 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2079:
	mtlr 0
	addi 1,1,16
.LCFI215:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3151:
	.size	_ZN6idListI12beamTarget_tE5ClearEv, .-_ZN6idListI12beamTarget_tE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN15idBFGProjectileC2Ev
	.type	_ZN15idBFGProjectileC2Ev, @function
_ZN15idBFGProjectileC2Ev:
.LFB2892:
	.loc 2 1687 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2892
.LVL2080:
	mflr 0
	stwu 1,-16(1)
.LCFI216:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB42:
.LBB8811:
	.loc 2 1687 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN12idProjectileC2Ev
.LEHE42:
.LVL2081:
	lis 11,_ZTV15idBFGProjectile+8@ha
.LBB8812:
.LBB8813:
.LBB8814:
.LBB8815:
	.loc 5 197 0
	li 0,0
.LBE8815:
.LBE8814:
.LBE8813:
.LBE8812:
	.loc 2 1687 0
	la 11,_ZTV15idBFGProjectile+8@l(11)
.LBB8823:
.LBB8824:
.LBB8825:
	.file 24 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Str.h"
	.loc 24 358 0
	addi 9,31,1748
.LBE8825:
.LBE8824:
.LBE8823:
	.loc 2 1687 0
	stw 11,0(31)
.LVL2082:
.LBB8830:
.LBB8820:
	.loc 5 159 0
	li 11,16
	stw 11,1504(31)
.LVL2083:
.LBE8820:
.LBE8830:
.LBB8831:
.LBB8828:
.LBB8826:
	.loc 24 357 0
	li 11,20
.LBE8826:
.LBE8828:
.LBE8831:
	.loc 2 1689 0
	lis 3,.LC150@ha
.LBB8832:
.LBB8821:
.LBB8818:
.LBB8816:
	.loc 5 197 0
	stw 0,1508(31)
	.loc 5 198 0
	stw 0,1496(31)
.LBE8816:
.LBE8818:
.LBE8821:
.LBE8832:
	.loc 2 1689 0
	la 3,.LC150@l(3)
.LBB8833:
.LBB8822:
.LBB8819:
.LBB8817:
	.loc 5 199 0
	stw 0,1500(31)
.LVL2084:
.LBE8817:
.LBE8819:
.LBE8822:
.LBE8833:
	.loc 2 1689 0
	li 4,1768
.LBB8834:
.LBB8829:
.LBB8827:
	.loc 24 356 0
	stw 0,1736(31)
	.loc 24 357 0
	stw 11,1744(31)
	.loc 24 358 0
	stw 9,1740(31)
	.loc 24 359 0
	stb 0,1748(31)
.LEHB43:
.LBE8827:
.LBE8829:
.LBE8834:
	.loc 2 1689 0
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE43:
	.loc 2 1692 0
	addi 3,31,1512
	li 4,0
	li 5,216
	bl memset
	.loc 2 1693 0
	li 0,-1
	stw 0,1728(31)
	.loc 2 1694 0
	li 0,0
	stw 0,1732(31)
.LBE8811:
	.loc 2 1695 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL2085:
	addi 1,1,16
	.cfi_remember_state
.LCFI217:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL2086:
.L925:
.LCFI218:
	.cfi_restore_state
	mr 30,3
.LVL2087:
.LBB8841:
.LBB8835:
.LBB8836:
.LBB8837:
	.loc 24 501 0
	addi 3,31,1736
	bl _ZN5idStr8FreeDataEv
.LVL2088:
.LBE8837:
.LBE8836:
.LBE8835:
.LBB8838:
.LBB8839:
.LBB8840:
	.loc 5 181 0
	addi 3,31,1496
	bl _ZN6idListI12beamTarget_tE5ClearEv
.LBE8840:
.LBE8839:
.LBE8838:
	.loc 2 1687 0
	mr 3,31
	bl _ZN12idProjectileD2Ev
	mr 3,30
.LEHB44:
	bl _Unwind_Resume
.LEHE44:
.LBE8841:
	.cfi_endproc
.LFE2892:
	.section	.gcc_except_table
.LLSDA2892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2892-.LLSDACSB2892
.LLSDACSB2892:
	.uleb128 .LEHB42-.LFB2892
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB2892
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L925-.LFB2892
	.uleb128 0
	.uleb128 .LEHB44-.LFB2892
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE2892:
	.section	".text"
	.size	_ZN15idBFGProjectileC2Ev, .-_ZN15idBFGProjectileC2Ev
	.align 2
	.globl _ZN15idBFGProjectile14CreateInstanceEv
	.type	_ZN15idBFGProjectile14CreateInstanceEv, @function
_ZN15idBFGProjectile14CreateInstanceEv:
.LFB2886:
	.loc 2 1677 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2886
	mflr 0
	stwu 1,-24(1)
.LCFI219:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB8842:
	li 3,1768
.LBE8842:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB45:
.LBB8843:
	.loc 2 1677 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE45:
	mr 31,3
.LEHB46:
	bl _ZN15idBFGProjectileC1Ev
.LEHE46:
.LVL2089:
	.loc 2 1677 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB47:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE47:
.LVL2090:
.L931:
.LBE8843:
	.loc 2 1677 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI220:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L932:
.L928:
.LCFI221:
	.cfi_restore_state
.LBB8844:
	cmpwi 7,4,1
	beq- 7,.L930
.LEHB48:
	bl _Unwind_Resume
.LEHE48:
.L933:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L928
.L930:
.LBE8844:
.LBB8845:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L931
.LBE8845:
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
	.uleb128 .LEHB45-.LFB2886
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L932-.LFB2886
	.uleb128 0x1
	.uleb128 .LEHB46-.LFB2886
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L933-.LFB2886
	.uleb128 0x3
	.uleb128 .LEHB47-.LFB2886
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L932-.LFB2886
	.uleb128 0x1
	.uleb128 .LEHB48-.LFB2886
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
.LLSDACSE2886:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2886:
	.section	".text"
	.size	_ZN15idBFGProjectile14CreateInstanceEv, .-_ZN15idBFGProjectile14CreateInstanceEv
	.align 2
	.globl _ZN15idBFGProjectileD2Ev
	.type	_ZN15idBFGProjectileD2Ev, @function
_ZN15idBFGProjectileD2Ev:
.LFB2895:
	.loc 2 1702 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2895
.LVL2091:
	mflr 0
	stwu 1,-16(1)
.LCFI222:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB8861:
	lis 9,_ZTV15idBFGProjectile+8@ha
.LBE8861:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB8879:
	la 0,_ZTV15idBFGProjectile+8@l(9)
	.cfi_offset 65, 4
.LBE8879:
	stw 30,8(1)
.LBB8880:
	.loc 2 1702 0
	stw 0,0(3)
.LEHB49:
	.loc 2 1703 0
	.cfi_offset 30, -8
	bl _ZN15idBFGProjectile9FreeBeamsEv
.LVL2092:
	.loc 2 1705 0
	lwz 4,1728(31)
	cmpwi 7,4,0
	blt- 7,.L935
	.loc 2 1706 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
	bctrl
.LEHE49:
	.loc 2 1707 0
	li 0,-1
	stw 0,1728(31)
.L935:
.LVL2093:
.LBB8862:
.LBB8863:
.LBB8864:
	.loc 24 501 0
	addi 3,31,1736
.LEHB50:
	bl _ZN5idStr8FreeDataEv
.LEHE50:
.LVL2094:
.LBE8864:
.LBE8863:
.LBE8862:
.LBB8865:
.LBB8866:
.LBB8867:
.LBB8868:
	.loc 5 193 0 discriminator 1
	lwz 3,1508(31)
	cmpwi 7,3,0
	beq- 7,.L937
	.loc 5 194 0
	bl _ZdaPv
.L937:
	.loc 5 197 0
	li 0,0
.LBE8868:
.LBE8867:
.LBE8866:
.LBE8865:
	.loc 2 1702 0
	mr 3,31
.LBB8872:
.LBB8871:
.LBB8870:
.LBB8869:
	.loc 5 197 0
	stw 0,1508(31)
	.loc 5 198 0
	stw 0,1496(31)
	.loc 5 199 0
	stw 0,1500(31)
.LBE8869:
.LBE8870:
.LBE8871:
.LBE8872:
.LBE8880:
	.loc 2 1709 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
.LVL2095:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI223:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LEHB51:
.LBB8881:
	.loc 2 1702 0
	b _ZN12idProjectileD2Ev
.LEHE51:
.LVL2096:
.L944:
.LCFI224:
	.cfi_restore_state
	mr 30,3
.LVL2097:
.LBB8873:
.LBB8874:
.LBB8875:
	.loc 24 501 0
	addi 3,31,1736
	bl _ZN5idStr8FreeDataEv
.LVL2098:
.L942:
.LBE8875:
.LBE8874:
.LBE8873:
.LBB8876:
.LBB8877:
.LBB8878:
	.loc 5 181 0
	addi 3,31,1496
	bl _ZN6idListI12beamTarget_tE5ClearEv
.LBE8878:
.LBE8877:
.LBE8876:
	.loc 2 1702 0
	mr 3,31
	bl _ZN12idProjectileD2Ev
	mr 3,30
.LEHB52:
	bl _Unwind_Resume
.LEHE52:
.LVL2099:
.L945:
	mr 30,3
	b .L942
.LBE8881:
	.cfi_endproc
.LFE2895:
	.section	.gcc_except_table
.LLSDA2895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2895-.LLSDACSB2895
.LLSDACSB2895:
	.uleb128 .LEHB49-.LFB2895
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L944-.LFB2895
	.uleb128 0
	.uleb128 .LEHB50-.LFB2895
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L945-.LFB2895
	.uleb128 0
	.uleb128 .LEHB51-.LFB2895
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB2895
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
.LLSDACSE2895:
	.section	".text"
	.size	_ZN15idBFGProjectileD2Ev, .-_ZN15idBFGProjectileD2Ev
	.align 2
	.globl _ZN15idBFGProjectileD0Ev
	.type	_ZN15idBFGProjectileD0Ev, @function
_ZN15idBFGProjectileD0Ev:
.LFB2897:
	.loc 2 1702 0
	.cfi_startproc
.LVL2100:
	stwu 1,-16(1)
.LCFI225:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1709 0
	.cfi_offset 65, 4
	bl _ZN15idBFGProjectileD1Ev
.LVL2101:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2102:
	mtlr 0
	addi 1,1,16
.LCFI226:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2897:
	.size	_ZN15idBFGProjectileD0Ev, .-_ZN15idBFGProjectileD0Ev
	.section	.text._ZN6idListI10idKeyValueE5ClearEv,"axG",@progbits,_ZN6idListI10idKeyValueE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI10idKeyValueE5ClearEv
	.type	_ZN6idListI10idKeyValueE5ClearEv, @function
_ZN6idListI10idKeyValueE5ClearEv:
.LFB3181:
	.loc 5 192 0
	.cfi_startproc
.LVL2103:
	mflr 0
	stwu 1,-16(1)
.LCFI227:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 5 193 0
	lwz 3,12(3)
.LVL2104:
	cmpwi 7,3,0
	beq- 7,.L949
	.cfi_offset 65, 4
	.loc 5 194 0 discriminator 1
	bl _ZdaPv
.L949:
	.loc 5 197 0
	li 0,0
	stw 0,12(31)
	.loc 5 198 0
	stw 0,0(31)
	.loc 5 199 0
	stw 0,4(31)
	.loc 5 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL2105:
	mtlr 0
	addi 1,1,16
.LCFI228:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3181:
	.size	_ZN6idListI10idKeyValueE5ClearEv, .-_ZN6idListI10idKeyValueE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN12idProjectile6CreateEP8idEntityRK6idVec3S4_
	.type	_ZN12idProjectile6CreateEP8idEntityRK6idVec3S4_, @function
_ZN12idProjectile6CreateEP8idEntityRK6idVec3S4_:
.LFB2822:
	.loc 2 197 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2822
.LVL2106:
	mflr 0
	stwu 1,-192(1)
.LCFI229:
	.cfi_def_cfa_offset 192
	.cfi_register 65, 0
.LVL2107:
.LBB8983:
.LBB8984:
.LBB8985:
.LBB8986:
	.loc 5 159 0
	li 9,16
.LBE8986:
.LBE8985:
.LBE8984:
.LBE8983:
	.loc 2 197 0
	stw 27,172(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 0,196(1)
.LBB9169:
.LBB9035:
.LBB8993:
.LBB8994:
	.file 25 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/HashIndex.h"
	.loc 25 112 0
	li 5,1024
.LVL2108:
.LBE8994:
.LBE8993:
.LBB8997:
.LBB8991:
.LBB8987:
.LBB8988:
	.loc 5 197 0
	li 0,0
	.cfi_offset 65, 4
.LBE8988:
.LBE8987:
.LBE8991:
.LBE8997:
.LBE9035:
.LBE9169:
	.loc 2 197 0
	stw 29,180(1)
	stw 31,188(1)
	mr 29,4
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	mr 31,3
.LBB9170:
.LBB9036:
.LBB8998:
.LBB8995:
	.loc 25 112 0
	li 4,1024
.LVL2109:
	addi 3,1,140
.LVL2110:
.LBE8995:
.LBE8998:
.LBE9036:
.LBE9170:
	.loc 2 197 0
	stw 28,176(1)
	stw 30,184(1)
	.loc 2 197 0
	mr 28,6
	.cfi_offset 30, -8
	.cfi_offset 28, -16
.LBB9171:
.LBB9037:
.LBB8999:
.LBB8992:
	.loc 5 159 0
	stw 9,132(1)
.LVL2111:
.LBB8990:
.LBB8989:
	.loc 5 197 0
	stw 0,136(1)
	.loc 5 198 0
	stw 0,124(1)
	.loc 5 199 0
	stw 0,128(1)
.LVL2112:
.LEHB53:
.LBE8989:
.LBE8990:
.LBE8992:
.LBE8999:
.LBB9000:
.LBB8996:
	.loc 25 112 0
	bl _ZN11idHashIndex4InitEii
.LEHE53:
.LVL2113:
.LBE8996:
.LBE9000:
.LBB9001:
.LBB9002:
	.loc 5 319 0
	lwz 30,136(1)
	.loc 5 317 0
	li 0,16
	stw 0,132(1)
	.loc 5 319 0
	cmpwi 7,30,0
	beq- 7,.L951
	.loc 5 321 0
	lwz 9,124(1)
	.loc 5 323 0
	lwz 0,128(1)
	.loc 5 321 0
	addi 3,9,15
.LVL2114:
	.loc 5 322 0
	srawi 3,3,4
	addze 3,3
.LVL2115:
	slwi 3,3,4
.LVL2116:
	.loc 5 323 0
	cmpw 7,3,0
	beq- 7,.L951
.LVL2117:
.LBB9003:
.LBB9004:
	.loc 5 375 0
	cmpwi 7,3,0
	ble- 7,.L1000
.LVL2118:
	.loc 5 387 0
	cmpw 7,9,3
	.loc 5 386 0
	stw 3,128(1)
	.loc 5 387 0
	bgt- 7,.L1001
.L953:
	.loc 5 392 0
	slwi 3,3,3
.LVL2119:
.LEHB54:
	bl _Znaj
.LVL2120:
	.loc 5 393 0
	lwz 0,124(1)
	.loc 5 392 0
	stw 3,136(1)
.LVL2121:
	.loc 5 393 0
	cmpwi 7,0,0
	ble- 7,.L954
	.loc 2 197 0
	addi 8,30,-8
.LBE9004:
.LBE9003:
.LBE9002:
.LBE9001:
.LBE9037:
.LBE9171:
	.loc 5 393 0
	li 9,0
	b .L955
.LVL2122:
.L1002:
.LBB9172:
.LBB9038:
.LBB9016:
.LBB9013:
.LBB9010:
.LBB9007:
	lwz 3,136(1)
.LVL2123:
.L955:
	.loc 5 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 5 393 0
	addi 9,9,1
.LVL2124:
	.loc 5 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 5 393 0
	lwz 0,124(1)
	cmpw 7,9,0
	blt+ 7,.L1002
.LVL2125:
.L954:
	.loc 5 399 0
	mr 3,30
	bl _ZdaPv
.LVL2126:
.L951:
.LBE9007:
.LBE9010:
.LBE9013:
.LBE9016:
.LBB9017:
.LBB9018:
	.loc 25 371 0
	li 0,16
.LBE9018:
.LBE9017:
.LBB9020:
.LBB9021:
	.loc 25 341 0
	addi 3,1,140
.LVL2127:
.LBE9021:
.LBE9020:
.LBB9024:
.LBB9019:
	.loc 25 371 0
	stw 0,156(1)
.LVL2128:
.LBE9019:
.LBE9024:
.LBB9025:
.LBB9022:
	.loc 25 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE54:
.LVL2129:
	.loc 25 342 0
	li 9,128
.LBE9022:
.LBE9025:
.LBE9038:
.LBB9039:
.LBB9040:
.LBB9041:
	.loc 24 356 0
	li 0,0
.LBE9041:
.LBE9040:
.LBE9039:
.LBB9046:
.LBB9026:
.LBB9023:
	.loc 25 342 0
	stw 9,140(1)
	.loc 25 343 0
	li 9,16
	stw 9,148(1)
.LVL2130:
.LBE9023:
.LBE9026:
.LBE9046:
.LBB9047:
.LBB9044:
.LBB9042:
	.loc 24 357 0
	li 9,20
	stw 9,28(1)
.LBE9042:
.LBE9044:
.LBE9047:
	.loc 2 205 0
	mr 3,31
.LBB9048:
.LBB9045:
.LBB9043:
	.loc 24 358 0
	addi 9,1,32
	.loc 24 356 0
	stw 0,20(1)
	.loc 24 358 0
	stw 9,24(1)
	addi 30,1,20
	.loc 24 359 0
	stb 0,32(1)
.LEHB55:
.LBE9043:
.LBE9045:
.LBE9048:
	.loc 2 205 0
	bl _ZN8idEntity6UnbindEv
	.loc 2 208 0
	addi 3,1,52
	mr 4,28
	addi 30,1,20
	bl _ZNK6idVec36ToMat3Ev
	li 10,0
.L961:
.LBB9049:
.LBB9050:
.LBB9051:
.LBB9052:
	.loc 3 424 0
	addi 11,1,52
.LBE9052:
.LBE9051:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB9055:
.LBB9053:
	.loc 3 424 0
	lwzux 0,11,10
	addi 9,1,88
	stwux 0,9,10
.LBE9053:
.LBE9055:
	.loc 12 333 0
	addi 10,10,12
.LBB9056:
.LBB9054:
	.loc 3 425 0
	lwz 8,4(11)
	.loc 3 426 0
	lwz 0,8(11)
	.loc 3 425 0
	stw 8,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LBE9054:
.LBE9056:
	.loc 12 333 0
	bne+ 7,.L961
.LVL2131:
.LBE9050:
.LBE9049:
.LBB9057:
.LBB9058:
	.loc 3 424 0
	lwz 0,88(1)
.LBE9058:
.LBE9057:
	.loc 2 213 0
	addi 28,31,936
.LVL2132:
.LBB9063:
.LBB9064:
	.loc 3 424 0
	lfs 12,112(1)
.LVL2133:
.LBE9064:
.LBE9063:
	.loc 2 213 0
	mr 3,28
.LBB9065:
.LBB9066:
	.loc 3 420 0
	lfs 13,116(1)
.LBE9066:
.LBE9065:
	.loc 2 213 0
	mr 4,27
.LBB9070:
.LBB9067:
	.loc 3 420 0
	lfs 0,120(1)
	fneg 12,12
.LBE9067:
.LBE9070:
.LBB9071:
.LBB9059:
	.loc 3 424 0
	stw 0,112(1)
.LBE9059:
.LBE9071:
.LBB9072:
.LBB9068:
	.loc 3 420 0
	fneg 13,13
.LBE9068:
.LBE9072:
.LBB9073:
.LBB9060:
	.loc 3 425 0
	lwz 0,92(1)
.LBE9060:
.LBE9073:
.LBB9074:
.LBB9069:
	.loc 3 420 0
	fneg 0,0
.LBE9069:
.LBE9074:
	.loc 2 213 0
	li 5,-1
.LBB9075:
.LBB9076:
	.loc 3 424 0
	stfs 12,88(1)
.LBE9076:
.LBE9075:
.LBB9079:
.LBB9061:
	.loc 3 425 0
	stw 0,116(1)
	addi 30,1,20
	.loc 3 426 0
	lwz 0,96(1)
.LBE9061:
.LBE9079:
.LBB9080:
.LBB9077:
	.loc 3 425 0
	stfs 13,92(1)
.LBE9077:
.LBE9080:
.LBB9081:
.LBB9062:
	.loc 3 426 0
	stw 0,120(1)
.LVL2134:
.LBE9062:
.LBE9081:
.LBB9082:
.LBB9078:
	stfs 0,96(1)
.LBE9078:
.LBE9082:
	.loc 2 213 0
	bl _ZN19idPhysics_RigidBody9SetOriginERK6idVec3i
.LVL2135:
	.loc 2 214 0
	mr 3,28
	addi 4,1,88
.LVL2136:
	li 5,-1
	addi 30,1,20
	bl _ZN19idPhysics_RigidBody7SetAxisERK6idMat3i
.LVL2137:
	.loc 2 216 0
	mr 3,28
	li 4,0
	addi 30,1,20
	bl _ZNK19idPhysics_RigidBody12GetClipModelEi
.LVL2138:
.LBB9083:
.LBB9084:
	.loc 4 605 0
	cmpwi 7,29,0
.LBE9084:
.LBE9083:
.LBB9087:
.LBB9088:
	.loc 17 191 0
	stw 29,12(3)
.LVL2139:
.LBE9088:
.LBE9087:
.LBB9089:
.LBB9085:
	.loc 4 605 0
	beq- 7,.L1003
	.loc 4 608 0
	lwz 9,4(29)
	lis 11,gameLocal@ha
	la 11,gameLocal@l(11)
	addi 0,9,4228
	slwi 0,0,2
	add 11,11,0
	lwz 0,4(11)
	slwi 0,0,12
	or 9,0,9
	stw 9,636(31)
.L963:
.LBE9085:
.LBE9089:
	.loc 2 220 0
	li 4,0
	addi 3,31,656
	li 5,208
	.loc 2 221 0
	addi 29,31,100
.LVL2140:
	.loc 2 220 0
	bl memset
.LVL2141:
.LBB9090:
.LBB9091:
	.loc 16 241 0
	lis 4,.LC151@ha
	mr 3,29
	la 4,.LC151@l(4)
	addi 30,1,20
	bl _ZNK6idDict7FindKeyEPKc
.LVL2142:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L987
.LVL2143:
.LBB9092:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL2144:
.L964:
.LBE9092:
.LBE9091:
.LBE9090:
	.loc 2 221 0
	addi 30,1,20
	mr 3,30
.LVL2145:
	bl _ZN5idStraSEPKc
.LVL2146:
.LBB9094:
	.loc 2 2410 0
	lwz 4,4(30)
.LBE9094:
	.loc 2 222 0
	lbz 0,0(4)
	cmpwi 7,0,0
	beq- 7,.L965
	.loc 2 223 0
	lis 9,declManager@ha
	li 5,0
	lwz 3,declManager@l(9)
.LVL2147:
	li 6,0
	lwz 9,0(3)
	lwz 0,104(9)
	mtctr 0
	bctrl
	.loc 2 224 0
	li 0,1
	.loc 2 223 0
	stw 3,808(31)
.LBB9095:
.LBB9096:
.LBB9097:
.LBB9098:
	.loc 16 241 0
	lis 4,.LC152@ha
.LBE9098:
.LBE9097:
.LBE9096:
.LBE9095:
	.loc 2 224 0
	stb 0,714(31)
.LVL2148:
.LBB9107:
.LBB9104:
.LBB9102:
.LBB9100:
	.loc 16 241 0
	mr 3,29
	la 4,.LC152@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL2149:
	.loc 16 242 0 discriminator 1
	cmpwi 0,3,0
	beq- 0,.L988
.LVL2150:
.LBB9099:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2151:
.L966:
.LBE9099:
.LBE9100:
.LBE9102:
	.loc 16 249 0
	bl atof
.LBE9104:
.LBE9107:
	.loc 2 228 0
	lis 4,.LC153@ha
.LBB9108:
.LBB9105:
	.loc 16 249 0
	frsp 1,1
.LBE9105:
.LBE9108:
	.loc 2 228 0
	lis 5,.LC136@ha
	mr 3,29
	la 4,.LC153@l(4)
	la 5,.LC136@l(5)
	addi 6,1,8
	.loc 2 227 0
	stfs 1,724(31)
	stfs 1,720(31)
	stfs 1,716(31)
	.loc 2 228 0
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL2152:
	.loc 2 229 0
	lwz 0,8(1)
	.loc 2 232 0
	lis 9,.LC2@ha
	.loc 2 229 0
	stw 0,812(31)
.LVL2153:
	.loc 2 230 0
	lwz 0,12(1)
	stw 0,816(31)
.LVL2154:
	.loc 2 231 0
	lwz 0,16(1)
	stw 0,820(31)
	.loc 2 232 0
	lwz 0,.LC2@l(9)
	stw 0,824(31)
.LVL2155:
.L965:
	.loc 2 235 0
	lis 4,.LC154@ha
	lis 5,.LC36@ha
	mr 3,29
	la 4,.LC154@l(4)
	la 5,.LC36@l(5)
	addi 6,31,868
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	.loc 2 237 0
	li 0,0
	.loc 2 241 0
	lis 9,.LC2@ha
	.loc 2 237 0
	stw 0,880(31)
	.loc 2 243 0
	mr 3,31
	.loc 2 238 0
	stw 0,884(31)
	.loc 2 239 0
	stw 0,1484(31)
	.loc 2 241 0
	lwz 0,.LC2@l(9)
	stw 0,652(31)
	.loc 2 243 0
	bl _ZN8idEntity13UpdateVisualsEv
	.loc 2 245 0
	li 0,1
.LBB9109:
.LBB9110:
.LBB9111:
.LBB9112:
	.loc 16 241 0
	lis 4,.LC155@ha
.LBE9112:
.LBE9111:
.LBE9110:
.LBE9109:
	.loc 2 245 0
	stw 0,1488(31)
.LVL2156:
.LBB9120:
.LBB9118:
.LBB9116:
.LBB9114:
	.loc 16 241 0
	mr 3,29
	la 4,.LC155@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LEHE55:
.LVL2157:
	.loc 16 242 0
	cmpwi 0,3,0
	beq- 0,.L989
.LVL2158:
.LBB9113:
	.loc 2 2410 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2159:
.L967:
.LBE9113:
.LBE9114:
.LBE9116:
	.loc 16 257 0
	bl atoi
.LBE9118:
.LBE9120:
	.loc 2 247 0
	cmpwi 7,3,0
	beq- 7,.L968
	.loc 2 248 0
	li 0,1
	stb 0,1492(31)
.L968:
.LVL2160:
.LBB9121:
.LBB9122:
.LBB9123:
	.loc 24 501 0
	mr 3,30
.LEHB56:
	bl _ZN5idStr8FreeDataEv
.LEHE56:
.LVL2161:
.LBE9123:
.LBE9122:
.LBE9121:
.LBB9124:
.LBB9125:
.LBB9126:
	.loc 2 249 0
	addi 31,1,124
.LVL2162:
	.loc 16 174 0
	mr 3,31
.LEHB57:
	bl _ZN6idDict5ClearEv
.LEHE57:
.LVL2163:
.LBB9127:
.LBB9128:
.LBB9129:
	.loc 25 130 0
	addi 3,1,140
.LVL2164:
.LEHB58:
	bl _ZN11idHashIndex4FreeEv
.LEHE58:
.LVL2165:
.LBE9129:
.LBE9128:
.LBE9127:
.LBB9130:
.LBB9131:
.LBB9132:
.LBB9133:
	.loc 5 193 0
	lwz 3,136(1)
	cmpwi 7,3,0
	beq- 7,.L950
	.loc 5 194 0
	bl _ZdaPv
.L950:
.LBE9133:
.LBE9132:
.LBE9131:
.LBE9130:
.LBE9126:
.LBE9125:
.LBE9124:
.LBE9172:
	.loc 2 250 0
	lwz 0,196(1)
	lwz 27,172(1)
.LVL2166:
	mtlr 0
	lwz 28,176(1)
.LVL2167:
	lwz 29,180(1)
.LVL2168:
	lwz 30,184(1)
	lwz 31,188(1)
	addi 1,1,192
	.cfi_remember_state
.LCFI230:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL2169:
.L1001:
.LCFI231:
	.cfi_restore_state
.LBB9173:
.LBB9142:
.LBB9027:
.LBB9014:
.LBB9011:
.LBB9008:
	.loc 5 388 0
	stw 3,124(1)
	b .L953
.LVL2170:
.L988:
.LBE9008:
.LBE9011:
.LBE9014:
.LBE9027:
.LBE9142:
.LBB9143:
.LBB9106:
.LBB9103:
.LBB9101:
	.loc 16 245 0
	lis 3,.LC30@ha
.LVL2171:
	la 3,.LC30@l(3)
	b .L966
.LVL2172:
.L1003:
.LBE9101:
.LBE9103:
.LBE9106:
.LBE9143:
.LBB9144:
.LBB9086:
	.loc 4 606 0
	stw 29,636(31)
	b .L963
.LVL2173:
.L987:
.LBE9086:
.LBE9144:
.LBB9145:
.LBB9093:
	.loc 16 245 0
	lis 4,.LC27@ha
	la 4,.LC27@l(4)
	b .L964
.LVL2174:
.L989:
.LBE9093:
.LBE9145:
.LBB9146:
.LBB9119:
.LBB9117:
.LBB9115:
	lis 3,.LC30@ha
.LVL2175:
	la 3,.LC30@l(3)
	b .L967
.LVL2176:
.L1000:
.LBE9115:
.LBE9117:
.LBE9119:
.LBE9146:
.LBB9147:
.LBB9028:
.LBB9015:
.LBB9012:
.LBB9009:
.LBB9005:
.LBB9006:
	.loc 5 194 0
	mr 3,30
.LVL2177:
	bl _ZdaPv
	.loc 5 197 0
	li 0,0
	stw 0,136(1)
	.loc 5 198 0
	stw 0,124(1)
	.loc 5 199 0
	stw 0,128(1)
	b .L951
.LVL2178:
.L994:
	mr 30,3
.LVL2179:
.L974:
.LBE9006:
.LBE9005:
.LBE9009:
.LBE9012:
.LBE9015:
.LBE9028:
.LBE9147:
.LBB9148:
.LBB9141:
.LBB9140:
.LBB9134:
.LBB9135:
.LBB9136:
	.loc 5 181 0
	mr 3,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,30
.LEHB59:
	bl _Unwind_Resume
.LEHE59:
.LVL2180:
.L995:
	mr 30,3
.LVL2181:
.LBE9136:
.LBE9135:
.LBE9134:
.LBB9137:
.LBB9138:
.LBB9139:
	.loc 25 130 0
	addi 3,1,140
.LVL2182:
	bl _ZN11idHashIndex4FreeEv
.LVL2183:
	b .L974
.LVL2184:
.L991:
	mr 30,3
.LVL2185:
.L979:
.LBE9139:
.LBE9138:
.LBE9137:
.LBE9140:
.LBE9141:
.LBE9148:
.LBB9149:
.LBB9150:
.LBB9151:
	.loc 2 249 0
	addi 31,1,124
	.loc 16 174 0
	mr 3,31
.LEHB60:
	bl _ZN6idDict5ClearEv
.LEHE60:
.LVL2186:
.LBB9152:
.LBB9153:
.LBB9154:
	.loc 25 130 0
	addi 3,1,140
.LVL2187:
.LEHB61:
	bl _ZN11idHashIndex4FreeEv
.LEHE61:
.LVL2188:
.LBE9154:
.LBE9153:
.LBE9152:
.LBB9155:
.LBB9156:
.LBB9157:
.LBB9158:
	.loc 5 193 0
	lwz 3,136(1)
	cmpwi 7,3,0
	beq- 7,.L986
	.loc 5 194 0
	bl _ZdaPv
.L986:
.LBE9158:
.LBE9157:
.LBE9156:
.LBE9155:
.LBB9159:
.LBB9160:
.LBB9161:
	.loc 5 181 0
	mr 3,30
.LEHB62:
	bl _Unwind_Resume
.LEHE62:
.LVL2189:
.L996:
.L984:
	mr 3,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	bl _ZSt9terminatev
.LVL2190:
.L997:
.LBE9161:
.LBE9160:
.LBE9159:
.LBB9162:
.LBB9163:
.LBB9164:
	.loc 25 130 0
	addi 3,1,140
.LVL2191:
	bl _ZN11idHashIndex4FreeEv
.LVL2192:
	b .L984
.LVL2193:
.L990:
	mr 31,3
.LVL2194:
.LBE9164:
.LBE9163:
.LBE9162:
.LBE9151:
.LBE9150:
.LBE9149:
.LBB9165:
.LBB9166:
.LBB9167:
	.loc 24 501 0
	mr 3,30
	bl _ZN5idStr8FreeDataEv
	mr 30,31
	b .L979
.LVL2195:
.L993:
	mr 31,3
.LVL2196:
.LBE9167:
.LBE9166:
.LBE9165:
.LBB9168:
.LBB9029:
.LBB9030:
.LBB9031:
	.loc 25 130 0
	addi 3,1,140
.LVL2197:
	bl _ZN11idHashIndex4FreeEv
.LVL2198:
.L959:
.LBE9031:
.LBE9030:
.LBE9029:
.LBB9032:
.LBB9033:
.LBB9034:
	.loc 5 181 0
	addi 3,1,124
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB63:
	bl _Unwind_Resume
.LEHE63:
.LVL2199:
.L992:
	mr 31,3
.LVL2200:
	b .L959
.LBE9034:
.LBE9033:
.LBE9032:
.LBE9168:
.LBE9173:
	.cfi_endproc
.LFE2822:
	.section	.gcc_except_table
.LLSDA2822:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2822-.LLSDACSB2822
.LLSDACSB2822:
	.uleb128 .LEHB53-.LFB2822
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L992-.LFB2822
	.uleb128 0
	.uleb128 .LEHB54-.LFB2822
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L993-.LFB2822
	.uleb128 0
	.uleb128 .LEHB55-.LFB2822
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L990-.LFB2822
	.uleb128 0
	.uleb128 .LEHB56-.LFB2822
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L991-.LFB2822
	.uleb128 0
	.uleb128 .LEHB57-.LFB2822
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L995-.LFB2822
	.uleb128 0
	.uleb128 .LEHB58-.LFB2822
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L994-.LFB2822
	.uleb128 0
	.uleb128 .LEHB59-.LFB2822
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB2822
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L997-.LFB2822
	.uleb128 0
	.uleb128 .LEHB61-.LFB2822
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L996-.LFB2822
	.uleb128 0
	.uleb128 .LEHB62-.LFB2822
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB63-.LFB2822
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
.LLSDACSE2822:
	.section	".text"
	.size	_ZN12idProjectile6CreateEP8idEntityRK6idVec3S4_, .-_ZN12idProjectile6CreateEP8idEntityRK6idVec3S4_
	.align 2
	.globl _ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta
	.type	_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta, @function
_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta:
.LFB2852:
	.loc 2 1111 0
	.cfi_startproc
.LVL2201:
	stwu 1,-256(1)
.LCFI232:
	.cfi_def_cfa_offset 256
	mflr 0
	mfcr 12
	stw 21,212(1)
	mr 21,4
	.cfi_offset 21, -44
	.cfi_register 70, 12
	.cfi_register 65, 0
	stw 31,252(1)
.LBB9231:
	.loc 2 1114 0
	li 4,32
.LVL2202:
.LBE9231:
	.loc 2 1111 0
	mr 31,3
	.cfi_offset 31, -4
.LBB9372:
	.loc 2 1114 0
	mr 3,21
.LVL2203:
.LBE9372:
	.loc 2 1111 0
	stw 0,260(1)
	stw 22,216(1)
	stw 23,220(1)
	stw 24,224(1)
	stw 25,228(1)
	stw 26,232(1)
	stw 27,236(1)
	stw 28,240(1)
	stw 29,244(1)
	stw 30,248(1)
	stw 12,208(1)
.LBB9373:
	.loc 2 1114 0
	.cfi_offset 70, -48
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	bl _ZNK13idBitMsgDelta8ReadBitsEi
.LVL2204:
.LBB9232:
.LBB9233:
	.loc 4 617 0
	lwz 0,636(31)
	cmpw 7,3,0
	beq- 7,.L1005
	.loc 4 620 0
	rlwinm 9,3,0,20,31
	addi 0,9,4228
	lis 9,gameLocal@ha
	slwi 0,0,2
	la 9,gameLocal@l(9)
	add 9,9,0
	lwz 0,4(9)
	srawi 9,3,12
	cmpw 7,9,0
	beq- 7,.L1029
.L1005:
.LBE9233:
.LBE9232:
	.loc 2 1115 0
	li 4,3
	mr 3,21
.LVL2205:
	bl _ZNK13idBitMsgDelta8ReadBitsEi
	.loc 2 1116 0
	li 4,1
	.loc 2 1115 0
	mr 28,3
.LVL2206:
	.loc 2 1116 0
	mr 3,21
.LVL2207:
	bl _ZNK13idBitMsgDelta8ReadBitsEi
	.loc 2 1117 0
	lwz 9,0(31)
	.loc 2 1116 0
	cmpwi 7,3,0
	.loc 2 1117 0
	mr 3,31
	.loc 2 1116 0
	beq- 7,.L1006
	.loc 2 1117 0
	lwz 0,76(9)
	mtctr 0
	bctrl
.L1007:
.LBB9235:
	.loc 2 1123 0 discriminator 1
	lis 29,.L1014@ha
.LBB9236:
	.loc 2 1130 0 discriminator 1
	lis 27,vec3_origin@ha
.LBB9237:
.LBB9238:
	.loc 4 635 0 discriminator 1
	lis 25,gameLocal@ha
.LBE9238:
.LBE9237:
.LBE9236:
.LBE9235:
	.loc 2 1119 0 discriminator 1
	lwz 0,1488(31)
.LBB9297:
.LBB9293:
.LBB9243:
	.loc 2 1134 0 discriminator 1
	cmpwi 4,28,3
.LBE9243:
.LBE9293:
	.loc 2 1123 0 discriminator 1
	la 29,.L1014@l(29)
.LBB9294:
	.loc 2 1150 0 discriminator 1
	lis 22,gameEdit@ha
	addi 23,31,100
	addi 24,31,196
.LBB9275:
.LBB9244:
.LBB9245:
.LBB9246:
	.loc 3 410 0 discriminator 1
	li 30,0
	.loc 3 412 0 discriminator 1
	lis 26,.LC2@ha
.LBE9246:
.LBE9245:
.LBE9244:
.LBE9275:
	.loc 2 1130 0 discriminator 1
	la 27,vec3_origin@l(27)
.LBB9276:
.LBB9239:
	.loc 4 635 0 discriminator 1
	la 25,gameLocal@l(25)
.L1028:
.LBE9239:
.LBE9276:
.LBE9294:
.LBE9297:
	.loc 2 1122 0 discriminator 1
	cmpw 7,28,0
	beq- 7,.L1030
.L1024:
.LBB9298:
	.loc 2 1123 0
	cmplwi 7,0,4
	bgt- 7,.L1024
	slwi 0,0,2
	lwzx 0,29,0
	add 0,0,29
	mtctr 0
	bctr
	.section	.rodata
	.align 2
	.align 2
.L1014:
	.long .L1010-.L1014
	.long .L1011-.L1014
	.long .L1012-.L1014
	.long .L1013-.L1014
	.long .L1013-.L1014
	.section	".text"
.L1012:
.LBB9295:
.LBB9277:
	.loc 2 1134 0
	beq- 4,.L1031
.LBB9273:
	.loc 2 1138 0
	li 4,0
	li 5,108
	addi 3,1,92
	bl memset
	.loc 2 1139 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL2208:
	.loc 2 1111 0
	addi 11,1,144
.LBE9273:
.LBE9277:
.LBB9278:
.LBB9240:
	.loc 12 333 0
	addi 9,1,108
.L1018:
.LVL2209:
.LBE9240:
.LBE9278:
.LBB9279:
.LBB9274:
.LBB9250:
.LBB9251:
.LBB9252:
.LBB9253:
	.loc 3 424 0
	lwz 0,0(3)
	stw 0,0(9)
	.loc 3 425 0
	lwz 0,4(3)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(3)
.LBE9253:
.LBE9252:
	.loc 12 333 0
	addi 3,3,12
.LBB9255:
.LBB9254:
	.loc 3 426 0
	stw 0,8(9)
.LBE9254:
.LBE9255:
	.loc 12 333 0
	addi 9,9,12
.LVL2210:
	cmpw 7,9,11
	bne+ 7,.L1018
.LBE9251:
.LBE9250:
	.loc 2 1140 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
.LVL2211:
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB9256:
.LBB9257:
	.loc 3 424 0
	lwz 0,0(3)
.LBE9257:
.LBE9256:
	.loc 2 1140 0
	mr 9,3
.LVL2212:
	.loc 2 1141 0
	mr 3,31
.LVL2213:
.LBB9259:
.LBB9258:
	.loc 3 424 0
	stw 0,96(1)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,100(1)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,104(1)
.LBE9258:
.LBE9259:
	.loc 2 1141 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL2214:
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB9260:
.LBB9247:
	.loc 3 412 0
	lwz 0,.LC2@l(26)
.LBE9247:
.LBE9260:
.LBB9261:
.LBB9262:
	.loc 3 424 0
	lwz 9,0(3)
.LBE9262:
.LBE9261:
	.loc 2 1141 0
	mr 11,3
.LVL2215:
	.loc 2 1143 0
	addi 4,1,92
	li 5,0
.LBB9267:
.LBB9263:
	.loc 3 424 0
	stw 9,148(1)
.LBE9263:
.LBE9267:
	.loc 2 1143 0
	lwz 9,0(31)
.LBB9268:
.LBB9264:
	.loc 3 425 0
	lwz 10,4(3)
.LBE9264:
.LBE9268:
	.loc 2 1143 0
	mr 3,31
.LVL2216:
.LBB9269:
.LBB9265:
	.loc 3 425 0
	stw 10,152(1)
	.loc 3 426 0
	lwz 11,8(11)
.LVL2217:
.LBE9265:
.LBE9269:
.LBB9270:
.LBB9248:
	.loc 3 410 0
	stw 30,160(1)
.LBE9248:
.LBE9270:
.LBB9271:
.LBB9266:
	.loc 3 426 0
	stw 11,156(1)
.LVL2218:
.LBE9266:
.LBE9271:
.LBB9272:
.LBB9249:
	.loc 3 411 0
	stw 30,164(1)
	.loc 3 412 0
	stw 0,168(1)
.LBE9249:
.LBE9272:
	.loc 2 1143 0
	lwz 0,232(9)
	mtctr 0
	bctrl
	lwz 0,1488(31)
.LBE9274:
.LBE9279:
.LBE9295:
.LBE9298:
	.loc 2 1122 0
	cmpw 7,28,0
	bne+ 7,.L1024
.LVL2219:
.L1030:
.LBB9299:
	.loc 2 1157 0
	mr 3,21
	li 4,1
	bl _ZNK13idBitMsgDelta8ReadBitsEi
	cmpwi 7,3,0
	beq- 7,.L1019
	.loc 2 1158 0
	addi 3,31,936
	mr 4,21
	bl _ZN19idPhysics_RigidBody16ReadFromSnapshotERK13idBitMsgDelta
.LVL2220:
.L1020:
.LBE9299:
	.loc 2 1185 0
	lbz 0,16(21)
	cmpwi 7,0,0
	beq+ 7,.L1004
	.loc 2 1186 0
	mr 3,31
	bl _ZN8idEntity13UpdateVisualsEv
.L1004:
.LBE9373:
	.loc 2 1188 0
	lwz 0,260(1)
	lwz 12,208(1)
	mtlr 0
	lwz 21,212(1)
.LVL2221:
	lwz 22,216(1)
	mtcrf 8,12
	lwz 23,220(1)
	lwz 24,224(1)
	lwz 25,228(1)
	lwz 26,232(1)
	lwz 27,236(1)
	lwz 28,240(1)
	lwz 29,244(1)
	lwz 30,248(1)
	lwz 31,252(1)
.LVL2222:
	addi 1,1,256
	.cfi_remember_state
.LCFI233:
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
.LVL2223:
.L1011:
.LCFI234:
	.cfi_restore_state
.LBB9374:
.LBB9369:
.LBB9296:
	.loc 2 1130 0
	lwz 9,0(31)
	mr 3,31
.LBB9280:
.LBB9281:
	.loc 3 396 0
	lfs 0,.LC2@l(26)
.LBE9281:
.LBE9280:
	.loc 2 1130 0
	mr 4,27
	lwz 0,228(9)
.LVL2224:
	lis 9,.LC20@ha
	fmr 2,0
.LBB9284:
.LBB9282:
	.loc 3 396 0
	stfs 0,32(1)
.LBE9282:
.LBE9284:
	.loc 2 1130 0
	mtctr 0
.LBB9285:
.LBB9283:
	.loc 3 397 0
	stw 30,36(1)
	.loc 3 398 0
	stw 30,40(1)
.LBE9283:
.LBE9285:
	.loc 2 1130 0
	addi 5,1,32
	mr 6,27
	lfs 1,.LC20@l(9)
	fmr 3,0
	bctrl
	lwz 0,1488(31)
	.loc 2 1131 0
	b .L1028
.LVL2225:
.L1010:
.LBB9286:
.LBB9241:
	.loc 4 634 0
	lwz 0,636(31)
	.loc 4 638 0
	li 4,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL2226:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,25,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L1032
.LVL2227:
.L1015:
.LBE9241:
.LBE9286:
.LBB9287:
.LBB9288:
	.loc 3 396 0
	lwz 0,.LC2@l(26)
.LBE9288:
.LBE9287:
	.loc 2 1125 0
	mr 3,31
	mr 5,27
	addi 6,1,44
.LBB9290:
.LBB9289:
	.loc 3 396 0
	stw 0,44(1)
	.loc 3 397 0
	stw 30,48(1)
	.loc 3 398 0
	stw 30,52(1)
.LBE9289:
.LBE9290:
	.loc 2 1125 0
	bl _ZN12idProjectile6CreateEP8idEntityRK6idVec3S4_
	lwz 0,1488(31)
	.loc 2 1126 0
	b .L1028
.LVL2228:
.L1013:
	.loc 2 1149 0
	mr 3,31
	li 4,4
	li 5,0
	bl _ZN8idEntity9StopSoundEib
	.loc 2 1150 0
	lwz 3,gameEdit@l(22)
	mr 4,23
	mr 5,24
	lwz 9,0(3)
	lwz 0,12(9)
	mtctr 0
	bctrl
	.loc 2 1151 0
	li 0,0
	stw 0,1488(31)
	.loc 2 1152 0
	b .L1028
.L1031:
.LBB9291:
	.loc 2 1135 0
	mr 3,31
	bl _ZN12idProjectile6FizzleEv
	lwz 0,1488(31)
	b .L1028
.LVL2229:
.L1032:
.LBE9291:
.LBB9292:
.LBB9242:
	.loc 4 636 0
	addi 9,9,132
.LVL2230:
	slwi 9,9,2
.LVL2231:
	add 9,25,9
	lwz 4,4(9)
	b .L1015
.LVL2232:
.L1006:
.LBE9242:
.LBE9292:
.LBE9296:
.LBE9369:
	.loc 2 1119 0
	lwz 0,80(9)
	mtctr 0
	bctrl
	b .L1007
.L1019:
.LVL2233:
.LBB9370:
.LBB9300:
.LBB9301:
.LBB9302:
	.loc 10 627 0
	li 4,32
	mr 3,21
	bl _ZNK13idBitMsgDelta8ReadBitsEi
.LVL2234:
.LBE9302:
.LBE9301:
.LBB9303:
.LBB9304:
	li 4,32
.LBE9304:
.LBE9303:
	.loc 2 1165 0
	stw 3,20(1)
.LVL2235:
.LBB9306:
.LBB9305:
	.loc 10 627 0
	mr 3,21
.LVL2236:
	bl _ZNK13idBitMsgDelta8ReadBitsEi
.LVL2237:
.LBE9305:
.LBE9306:
.LBB9307:
.LBB9308:
	li 4,32
.LBE9308:
.LBE9307:
	.loc 2 1166 0
	stw 3,24(1)
.LVL2238:
.LBB9310:
.LBB9309:
	.loc 10 627 0
	mr 3,21
.LVL2239:
	bl _ZNK13idBitMsgDelta8ReadBitsEi
.LVL2240:
.LBE9309:
.LBE9310:
	.loc 2 1169 0
	lis 9,RB_VELOCITY_EXPONENT_BITS@ha
	lwz 29,RB_VELOCITY_EXPONENT_BITS@l(9)
	lis 9,RB_VELOCITY_MANTISSA_BITS@ha
	lwz 30,RB_VELOCITY_MANTISSA_BITS@l(9)
.LVL2241:
.LBB9311:
.LBB9312:
	.loc 10 671 0
	lis 9,.LC20@ha
.LVL2242:
	lfs 1,.LC20@l(9)
	.loc 10 672 0
	addi 28,29,1
.LVL2243:
	.loc 10 671 0
	mr 4,30
.LBE9312:
.LBE9311:
	.loc 2 1167 0
	stw 3,28(1)
.LBB9314:
.LBB9313:
	.loc 10 671 0
	mr 3,29
.LVL2244:
	.loc 10 672 0
	add 28,30,28
	.loc 10 671 0
	bl _ZN6idMath11FloatToBitsEfii
.LVL2245:
	.loc 10 672 0
	mr 5,28
	.loc 10 671 0
	mr 4,3
.LVL2246:
	.loc 10 672 0
	mr 3,21
.LVL2247:
	bl _ZNK13idBitMsgDelta9ReadDeltaEii
.LVL2248:
	.loc 10 673 0
	mr 5,30
	mr 4,29
	bl _ZN6idMath11BitsToFloatEiii
.LBE9313:
.LBE9314:
.LBB9315:
.LBB9316:
	.loc 10 671 0
	lis 9,.LC20@ha
.LBE9316:
.LBE9315:
	.loc 2 1169 0
	stfs 1,8(1)
.LVL2249:
.LBB9318:
.LBB9317:
	.loc 10 671 0
	mr 4,30
	lfs 1,.LC20@l(9)
	mr 3,29
	bl _ZN6idMath11FloatToBitsEfii
	.loc 10 672 0
	mr 5,28
	.loc 10 671 0
	mr 4,3
.LVL2250:
	.loc 10 672 0
	mr 3,21
.LVL2251:
	bl _ZNK13idBitMsgDelta9ReadDeltaEii
.LVL2252:
	.loc 10 673 0
	mr 5,30
	mr 4,29
	bl _ZN6idMath11BitsToFloatEiii
.LBE9317:
.LBE9318:
.LBB9319:
.LBB9320:
	.loc 10 671 0
	lis 9,.LC20@ha
.LBE9320:
.LBE9319:
	.loc 2 1170 0
	stfs 1,12(1)
.LVL2253:
.LBB9323:
.LBB9321:
	.loc 10 671 0
	mr 4,30
	lfs 1,.LC20@l(9)
	mr 3,29
	bl _ZN6idMath11FloatToBitsEfii
	.loc 10 672 0
	mr 5,28
	.loc 10 671 0
	mr 4,3
.LVL2254:
	.loc 10 672 0
	mr 3,21
.LVL2255:
	bl _ZNK13idBitMsgDelta9ReadDeltaEii
.LVL2256:
	.loc 10 673 0
	mr 5,30
	mr 4,29
.LBE9321:
.LBE9323:
	.loc 2 1173 0
	addi 30,31,936
.LBB9324:
.LBB9322:
	.loc 10 673 0
	bl _ZN6idMath11BitsToFloatEiii
.LBE9322:
.LBE9324:
	.loc 2 1173 0
	addi 4,1,20
	li 5,-1
	mr 3,30
	.loc 2 1171 0
	stfs 1,16(1)
	.loc 2 1173 0
	bl _ZN19idPhysics_RigidBody9SetOriginERK6idVec3i
	.loc 2 1174 0
	mr 3,30
	addi 4,1,8
	li 5,0
	bl _ZN19idPhysics_RigidBody17SetLinearVelocityERK6idVec3i
.LVL2257:
.LBB9325:
.LBB9326:
	.loc 3 527 0
	lfs 12,12(1)
	lfs 11,8(1)
.LBB9327:
.LBB9328:
	.loc 8 246 0
	lis 9,.LC6@ha
.LBE9328:
.LBE9327:
	.loc 3 527 0
	fmuls 0,12,12
	lfs 13,16(1)
.LBB9331:
.LBB9329:
	.loc 8 246 0
	lfs 9,.LC6@l(9)
.LBE9329:
.LBE9331:
.LBE9326:
.LBE9325:
	.loc 2 1178 0
	addi 3,1,56
	addi 4,1,8
.LVL2258:
.LBB9334:
.LBB9333:
	.loc 3 527 0
	fmadds 0,11,11,0
	fmadds 0,13,13,0
	stfs 0,200(1)
.LVL2259:
.LBB9332:
.LBB9330:
	.loc 8 246 0
	fmuls 9,0,9
	.loc 8 248 0
	lwz 9,200(1)
	.loc 2 1111 0
	fneg 9,9
	.loc 8 248 0
	srawi 0,9,1
	.loc 8 249 0
	lis 9,0x5f37
	ori 9,9,23007
	subf 9,0,9
	stw 9,200(1)
.LVL2260:
	.loc 8 250 0
	lis 9,.LC22@ha
	lfs 10,.LC22@l(9)
	lfs 8,200(1)
	fmuls 0,8,8
.LVL2261:
	fmadds 0,9,0,10
	fmuls 0,8,0
.LVL2262:
.LBE9330:
.LBE9332:
	.loc 3 529 0
	fmuls 11,11,0
	.loc 3 530 0
	fmuls 12,12,0
	.loc 3 531 0
	fmuls 0,13,0
.LVL2263:
	.loc 3 529 0
	stfs 11,8(1)
	.loc 3 530 0
	stfs 12,12(1)
	.loc 3 531 0
	stfs 0,16(1)
.LBE9333:
.LBE9334:
	.loc 2 1178 0
	bl _ZNK6idVec36ToMat3Ev
.LVL2264:
	li 10,0
.L1021:
.LBB9335:
.LBB9336:
.LBB9337:
.LBB9338:
	.loc 3 424 0
	addi 11,1,56
.LVL2265:
.LBE9338:
.LBE9337:
	.loc 12 333 0
	cmpwi 7,10,24
.LBB9341:
.LBB9339:
	.loc 3 424 0
	lwzux 0,11,10
.LVL2266:
	addi 9,1,92
.LVL2267:
	stwux 0,9,10
.LVL2268:
.LBE9339:
.LBE9341:
	.loc 12 333 0
	addi 10,10,12
.LBB9342:
.LBB9340:
	.loc 3 425 0
	lwz 8,4(11)
	.loc 3 426 0
	lwz 0,8(11)
	.loc 3 425 0
	stw 8,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LBE9340:
.LBE9342:
	.loc 12 333 0
	bne+ 7,.L1021
.LVL2269:
.LBE9336:
.LBE9335:
.LBB9343:
.LBB9344:
	.loc 3 424 0
	lwz 0,92(1)
.LBE9344:
.LBE9343:
	.loc 2 1182 0
	mr 3,30
.LBB9349:
.LBB9350:
	.loc 3 424 0
	lfs 12,116(1)
.LVL2270:
.LBE9350:
.LBE9349:
	.loc 2 1182 0
	addi 4,1,92
.LVL2271:
.LBB9351:
.LBB9352:
	.loc 3 420 0
	lfs 13,120(1)
.LBE9352:
.LBE9351:
	.loc 2 1182 0
	li 5,-1
.LBB9356:
.LBB9353:
	.loc 3 420 0
	lfs 0,124(1)
	fneg 12,12
.LBE9353:
.LBE9356:
.LBB9357:
.LBB9345:
	.loc 3 424 0
	stw 0,116(1)
.LBE9345:
.LBE9357:
.LBB9358:
.LBB9354:
	.loc 3 420 0
	fneg 13,13
.LBE9354:
.LBE9358:
.LBB9359:
.LBB9346:
	.loc 3 425 0
	lwz 0,96(1)
.LBE9346:
.LBE9359:
.LBB9360:
.LBB9355:
	.loc 3 420 0
	fneg 0,0
.LBE9355:
.LBE9360:
.LBB9361:
.LBB9362:
	.loc 3 424 0
	stfs 12,92(1)
.LBE9362:
.LBE9361:
.LBB9365:
.LBB9347:
	.loc 3 425 0
	stw 0,120(1)
	.loc 3 426 0
	lwz 0,100(1)
.LBE9347:
.LBE9365:
.LBB9366:
.LBB9363:
	.loc 3 425 0
	stfs 13,96(1)
.LBE9363:
.LBE9366:
.LBB9367:
.LBB9348:
	.loc 3 426 0
	stw 0,124(1)
.LVL2272:
.LBE9348:
.LBE9367:
.LBB9368:
.LBB9364:
	stfs 0,100(1)
.LBE9364:
.LBE9368:
	.loc 2 1182 0
	bl _ZN19idPhysics_RigidBody7SetAxisERK6idMat3i
.LVL2273:
	b .L1020
.LVL2274:
.L1029:
.LBE9300:
.LBE9370:
.LBB9371:
.LBB9234:
	.loc 4 621 0
	stw 3,636(31)
	b .L1005
.LBE9234:
.LBE9371:
.LBE9374:
	.cfi_endproc
.LFE2852:
	.size	_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta, .-_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta
	.section	.text.startup,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I_EV_Explode, @function
_GLOBAL__sub_I_EV_Explode:
.LFB3236:
	.loc 2 2410 0
	.cfi_startproc
	.loc 2 2410 0
	li 3,1
	b _Z41__static_initialization_and_destruction_0ii.constprop.52
	.cfi_endproc
.LFE3236:
	.size	_GLOBAL__sub_I_EV_Explode, .-_GLOBAL__sub_I_EV_Explode
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I_EV_Explode
	.section	.text.exit,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_D_EV_Explode, @function
_GLOBAL__sub_D_EV_Explode:
.LFB3237:
	.loc 2 2410 0
	.cfi_startproc
	.loc 2 2410 0
	li 3,0
	b _Z41__static_initialization_and_destruction_0ii.constprop.52
	.cfi_endproc
.LFE3237:
	.size	_GLOBAL__sub_D_EV_Explode, .-_GLOBAL__sub_D_EV_Explode
	.section	.dtors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_D_EV_Explode
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
	.weak	_ZTS12idProjectile
	.section	.rodata._ZTS12idProjectile,"aG",@progbits,_ZTS12idProjectile,comdat
	.align 2
	.type	_ZTS12idProjectile, @object
	.size	_ZTS12idProjectile, 15
_ZTS12idProjectile:
	.string	"12idProjectile"
	.weak	_ZTI12idProjectile
	.section	.rodata._ZTI12idProjectile,"aG",@progbits,_ZTI12idProjectile,comdat
	.align 2
	.type	_ZTI12idProjectile, @object
	.size	_ZTI12idProjectile, 12
_ZTI12idProjectile:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12idProjectile
	.long	_ZTI8idEntity
	.weak	_ZTS18idGuidedProjectile
	.section	.rodata._ZTS18idGuidedProjectile,"aG",@progbits,_ZTS18idGuidedProjectile,comdat
	.align 2
	.type	_ZTS18idGuidedProjectile, @object
	.size	_ZTS18idGuidedProjectile, 21
_ZTS18idGuidedProjectile:
	.string	"18idGuidedProjectile"
	.weak	_ZTI18idGuidedProjectile
	.section	.rodata._ZTI18idGuidedProjectile,"aG",@progbits,_ZTI18idGuidedProjectile,comdat
	.align 2
	.type	_ZTI18idGuidedProjectile, @object
	.size	_ZTI18idGuidedProjectile, 12
_ZTI18idGuidedProjectile:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS18idGuidedProjectile
	.long	_ZTI12idProjectile
	.weak	_ZTS17idSoulCubeMissile
	.section	.rodata._ZTS17idSoulCubeMissile,"aG",@progbits,_ZTS17idSoulCubeMissile,comdat
	.align 2
	.type	_ZTS17idSoulCubeMissile, @object
	.size	_ZTS17idSoulCubeMissile, 20
_ZTS17idSoulCubeMissile:
	.string	"17idSoulCubeMissile"
	.weak	_ZTI17idSoulCubeMissile
	.section	.rodata._ZTI17idSoulCubeMissile,"aG",@progbits,_ZTI17idSoulCubeMissile,comdat
	.align 2
	.type	_ZTI17idSoulCubeMissile, @object
	.size	_ZTI17idSoulCubeMissile, 12
_ZTI17idSoulCubeMissile:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS17idSoulCubeMissile
	.long	_ZTI18idGuidedProjectile
	.weak	_ZTS15idBFGProjectile
	.section	.rodata._ZTS15idBFGProjectile,"aG",@progbits,_ZTS15idBFGProjectile,comdat
	.align 2
	.type	_ZTS15idBFGProjectile, @object
	.size	_ZTS15idBFGProjectile, 18
_ZTS15idBFGProjectile:
	.string	"15idBFGProjectile"
	.weak	_ZTI15idBFGProjectile
	.section	.rodata._ZTI15idBFGProjectile,"aG",@progbits,_ZTI15idBFGProjectile,comdat
	.align 2
	.type	_ZTI15idBFGProjectile, @object
	.size	_ZTI15idBFGProjectile, 12
_ZTI15idBFGProjectile:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS15idBFGProjectile
	.long	_ZTI12idProjectile
	.weak	_ZTS8idDebris
	.section	.rodata._ZTS8idDebris,"aG",@progbits,_ZTS8idDebris,comdat
	.align 2
	.type	_ZTS8idDebris, @object
	.size	_ZTS8idDebris, 10
_ZTS8idDebris:
	.string	"8idDebris"
	.weak	_ZTI8idDebris
	.section	.rodata._ZTI8idDebris,"aG",@progbits,_ZTI8idDebris,comdat
	.align 2
	.type	_ZTI8idDebris, @object
	.size	_ZTI8idDebris, 12
_ZTI8idDebris:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS8idDebris
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
	.weak	_ZTV12idProjectile
	.section	.rodata._ZTV12idProjectile,"aG",@progbits,_ZTV12idProjectile,comdat
	.align 3
	.type	_ZTV12idProjectile, @object
	.size	_ZTV12idProjectile, 244
_ZTV12idProjectile:
	.long	0
	.long	_ZTI12idProjectile
	.long	_ZNK12idProjectile7GetTypeEv
	.long	_ZN12idProjectileD1Ev
	.long	_ZN12idProjectileD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN12idProjectile5ThinkEv
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
	.long	_ZN12idProjectile12FreeLightDefEv
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
	.long	_ZN12idProjectile7CollideERK7trace_sRK6idVec3
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
	.long	_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN8idEntity17ShowEditingDialogEv
	.long	_ZN12idProjectile21ClientPredictionThinkEv
	.long	_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZN12idProjectile6LaunchERK6idVec3S2_S2_fff
	.long	_ZN12idProjectile7ExplodeERK7trace_sP8idEntity
	.weak	_ZTV18idGuidedProjectile
	.section	.rodata._ZTV18idGuidedProjectile,"aG",@progbits,_ZTV18idGuidedProjectile,comdat
	.align 3
	.type	_ZTV18idGuidedProjectile, @object
	.size	_ZTV18idGuidedProjectile, 248
_ZTV18idGuidedProjectile:
	.long	0
	.long	_ZTI18idGuidedProjectile
	.long	_ZNK18idGuidedProjectile7GetTypeEv
	.long	_ZN18idGuidedProjectileD1Ev
	.long	_ZN18idGuidedProjectileD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN18idGuidedProjectile5ThinkEv
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
	.long	_ZN12idProjectile12FreeLightDefEv
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
	.long	_ZN12idProjectile7CollideERK7trace_sRK6idVec3
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
	.long	_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN8idEntity17ShowEditingDialogEv
	.long	_ZN12idProjectile21ClientPredictionThinkEv
	.long	_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZN18idGuidedProjectile6LaunchERK6idVec3S2_S2_fff
	.long	_ZN12idProjectile7ExplodeERK7trace_sP8idEntity
	.long	_ZN18idGuidedProjectile10GetSeekPosER6idVec3
	.weak	_ZTV17idSoulCubeMissile
	.section	.rodata._ZTV17idSoulCubeMissile,"aG",@progbits,_ZTV17idSoulCubeMissile,comdat
	.align 3
	.type	_ZTV17idSoulCubeMissile, @object
	.size	_ZTV17idSoulCubeMissile, 248
_ZTV17idSoulCubeMissile:
	.long	0
	.long	_ZTI17idSoulCubeMissile
	.long	_ZNK17idSoulCubeMissile7GetTypeEv
	.long	_ZN17idSoulCubeMissileD1Ev
	.long	_ZN17idSoulCubeMissileD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN17idSoulCubeMissile5ThinkEv
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
	.long	_ZN12idProjectile12FreeLightDefEv
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
	.long	_ZN12idProjectile7CollideERK7trace_sRK6idVec3
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
	.long	_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN8idEntity17ShowEditingDialogEv
	.long	_ZN12idProjectile21ClientPredictionThinkEv
	.long	_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZN17idSoulCubeMissile6LaunchERK6idVec3S2_S2_fff
	.long	_ZN12idProjectile7ExplodeERK7trace_sP8idEntity
	.long	_ZN17idSoulCubeMissile10GetSeekPosER6idVec3
	.weak	_ZTV15idBFGProjectile
	.section	.rodata._ZTV15idBFGProjectile,"aG",@progbits,_ZTV15idBFGProjectile,comdat
	.align 3
	.type	_ZTV15idBFGProjectile, @object
	.size	_ZTV15idBFGProjectile, 244
_ZTV15idBFGProjectile:
	.long	0
	.long	_ZTI15idBFGProjectile
	.long	_ZNK15idBFGProjectile7GetTypeEv
	.long	_ZN15idBFGProjectileD1Ev
	.long	_ZN15idBFGProjectileD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN15idBFGProjectile5ThinkEv
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
	.long	_ZN12idProjectile12FreeLightDefEv
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
	.long	_ZN12idProjectile7CollideERK7trace_sRK6idVec3
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
	.long	_ZN12idProjectile6KilledEP8idEntityS1_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN8idEntity17ShowEditingDialogEv
	.long	_ZN12idProjectile21ClientPredictionThinkEv
	.long	_ZNK12idProjectile15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN12idProjectile16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN12idProjectile18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZN15idBFGProjectile6LaunchERK6idVec3S2_S2_fff
	.long	_ZN15idBFGProjectile7ExplodeERK7trace_sP8idEntity
	.weak	_ZTV8idDebris
	.section	.rodata._ZTV8idDebris,"aG",@progbits,_ZTV8idDebris,comdat
	.align 3
	.type	_ZTV8idDebris, @object
	.size	_ZTV8idDebris, 236
_ZTV8idDebris:
	.long	0
	.long	_ZTI8idDebris
	.long	_ZNK8idDebris7GetTypeEv
	.long	_ZN8idDebrisD1Ev
	.long	_ZN8idDebrisD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN8idDebris5ThinkEv
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
	.long	_ZN8idDebris7CollideERK7trace_sRK6idVec3
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
	.long	_ZN8idDebris6KilledEP8idEntityS1_iRK6idVec3i
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
	.globl _ZN8idDebris14eventCallbacksE
	.globl _ZN8idDebris4TypeE
	.globl _ZN15idBFGProjectile14eventCallbacksE
	.globl _ZN15idBFGProjectile4TypeE
	.globl _ZN17idSoulCubeMissile14eventCallbacksE
	.globl _ZN17idSoulCubeMissile4TypeE
	.globl _ZN18idGuidedProjectile14eventCallbacksE
	.globl _ZN18idGuidedProjectile4TypeE
	.globl _ZN12idProjectile14eventCallbacksE
	.globl _ZN12idProjectile4TypeE
	.globl EV_Explode
	.weak	_ZTI12idAllocError
	.section	.rodata._ZTI12idAllocError,"aG",@progbits,_ZTI12idAllocError,comdat
	.align 2
	.type	_ZTI12idAllocError, @object
	.size	_ZTI12idAllocError, 12
_ZTI12idAllocError:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12idAllocError
	.long	_ZTI11idException
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
	.weak	_ZTS11idException
	.section	.rodata._ZTS11idException,"aG",@progbits,_ZTS11idException,comdat
	.align 2
	.type	_ZTS11idException, @object
	.size	_ZTS11idException, 14
_ZTS11idException:
	.string	"11idException"
	.weak	_ZN9idWindingD1Ev
	.set	_ZN9idWindingD1Ev,_ZN9idWindingD2Ev
	.globl _ZN8idDebrisD1Ev
	.set	_ZN8idDebrisD1Ev,_ZN8idDebrisD2Ev
	.globl _ZN12idProjectileD1Ev
	.set	_ZN12idProjectileD1Ev,_ZN12idProjectileD2Ev
	.globl _ZN18idGuidedProjectileD1Ev
	.set	_ZN18idGuidedProjectileD1Ev,_ZN18idGuidedProjectileD2Ev
	.globl _ZN17idSoulCubeMissileD1Ev
	.set	_ZN17idSoulCubeMissileD1Ev,_ZN17idSoulCubeMissileD2Ev
	.weak	_ZN14idFixedWindingD1Ev
	.set	_ZN14idFixedWindingD1Ev,_ZN14idFixedWindingD2Ev
	.globl _ZN12idProjectileC1Ev
	.set	_ZN12idProjectileC1Ev,_ZN12idProjectileC2Ev
	.globl _ZN18idGuidedProjectileC1Ev
	.set	_ZN18idGuidedProjectileC1Ev,_ZN18idGuidedProjectileC2Ev
	.globl _ZN8idDebrisC1Ev
	.set	_ZN8idDebrisC1Ev,_ZN8idDebrisC2Ev
	.globl _ZN15idBFGProjectileC1Ev
	.set	_ZN15idBFGProjectileC1Ev,_ZN15idBFGProjectileC2Ev
	.globl _ZN15idBFGProjectileD1Ev
	.set	_ZN15idBFGProjectileD1Ev,_ZN15idBFGProjectileD2Ev
	.section	.rodata
	.align 2
	.set	.LANCHOR2,. + 0
	.type	CSWTCH.364, @object
	.size	CSWTCH.364, 12
CSWTCH.364:
	.long	.LC156
	.long	.LC157
	.long	.LC158
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1094713344
.LC1:
	.4byte	1073741824
.LC2:
	.4byte	1065353216
.LC4:
	.4byte	1501560836
.LC5:
	.4byte	939524096
.LC6:
	.4byte	1056964608
.LC7:
	.4byte	-997900288
.LC20:
	.4byte	0
.LC22:
	.4byte	1069547520
.LC23:
	.4byte	1135869952
.LC24:
	.4byte	-1182793728
.LC25:
	.4byte	-1174405120
.LC26:
	.4byte	1092616192
.LC62:
	.4byte	1148846080
.LC66:
	.4byte	1114636288
.LC75:
	.4byte	1132462080
.LC85:
	.4byte	1061158912
.LC89:
	.4byte	.LC86
.LC98:
	.4byte	1090519040
.LC108:
	.4byte	1128792064
.LC109:
	.4byte	1137180672
.LC111:
	.4byte	1120403456
.LC116:
	.4byte	1059481190
.LC119:
	.4byte	1048576000
.LC121:
	.4byte	1107296256
.LC144:
	.4byte	1082130432
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC140:
	.4byte	1069128089
	.4byte	-1717986918
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	_ZN12idProjectile14eventCallbacksE, @object
	.size	_ZN12idProjectile14eventCallbacksE, 72
_ZN12idProjectile14eventCallbacksE:
	.long	EV_Explode
	.long	_ZN12idProjectile13Event_ExplodeEv
	.long	0
	.long	_ZL9EV_Fizzle
	.long	_ZN12idProjectile12Event_FizzleEv
	.long	0
	.long	EV_Touch
	.long	_ZN12idProjectile11Event_TouchEP8idEntityP7trace_s
	.long	0
	.long	_ZL15EV_RadiusDamage
	.long	_ZN12idProjectile18Event_RadiusDamageEP8idEntity
	.long	0
	.long	_ZL21EV_GetProjectileState
	.long	_ZN12idProjectile24Event_GetProjectileStateEv
	.long	0
	.long	0
	.long	0
	.long	0
	.type	_ZN15idBFGProjectile14eventCallbacksE, @object
	.size	_ZN15idBFGProjectile14eventCallbacksE, 24
_ZN15idBFGProjectile14eventCallbacksE:
	.long	_ZL14EV_RemoveBeams
	.long	_ZN15idBFGProjectile17Event_RemoveBeamsEv
	.long	0
	.long	0
	.long	0
	.long	0
	.type	_ZN8idDebris14eventCallbacksE, @object
	.size	_ZN8idDebris14eventCallbacksE, 36
_ZN8idDebris14eventCallbacksE:
	.long	EV_Explode
	.long	_ZN8idDebris13Event_ExplodeEv
	.long	0
	.long	_ZL9EV_Fizzle
	.long	_ZN8idDebris12Event_FizzleEv
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC8:
	.string	"<explode>"
	.zero	2
.LC9:
	.string	"<fizzle>"
	.zero	3
.LC10:
	.string	"<radiusdmg>"
.LC11:
	.string	"e"
	.zero	2
.LC12:
	.string	"getProjectileState"
	.zero	1
.LC13:
	.string	"idProjectile"
	.zero	3
.LC14:
	.string	"idEntity"
	.zero	3
.LC15:
	.string	"idGuidedProjectile"
	.zero	1
.LC16:
	.string	"idSoulCubeMissile"
	.zero	2
.LC17:
	.string	"<removeBeams>"
	.zero	2
.LC18:
	.string	"idBFGProjectile"
.LC19:
	.string	"idDebris"
	.zero	3
.LC27:
	.string	""
	.zero	3
.LC28:
	.string	"def_splash_damage"
	.zero	2
.LC29:
	.string	"model_two"
	.zero	2
.LC30:
	.string	"0"
	.zero	2
.LC31:
	.string	"1500"
	.zero	3
.LC32:
	.string	"thrust"
	.zero	1
.LC33:
	.string	"thrust_start"
	.zero	3
.LC34:
	.string	"thrust_end"
	.zero	1
.LC35:
	.string	"velocity"
	.zero	3
.LC36:
	.string	"0 0 0"
	.zero	2
.LC37:
	.string	"angular_velocity"
	.zero	3
.LC38:
	.string	"linear_friction"
.LC39:
	.string	"angular_friction"
	.zero	3
.LC40:
	.string	"contact_friction"
	.zero	3
.LC41:
	.string	"bounce"
	.zero	1
.LC42:
	.string	"mass"
	.zero	3
.LC43:
	.string	"gravity"
.LC44:
	.string	"fuse"
	.zero	3
.LC45:
	.string	"detonate_on_world"
	.zero	2
.LC46:
	.string	"detonate_on_actor"
	.zero	2
.LC47:
	.string	"random_shader_spin"
	.zero	1
.LC48:
	.string	"Invalid mass on '%s'\n"
	.zero	2
.LC49:
	.string	"detonate_on_trigger"
.LC50:
	.string	"no_contents"
.LC51:
	.string	"tracers"
.LC52:
	.string	"model_tracer"
	.zero	3
.LC53:
	.string	"remove_time"
.LC54:
	.string	"detonate_on_fuse"
	.zero	3
.LC55:
	.string	"snd_tracer"
	.zero	1
.LC56:
	.string	"snd_fly"
.LC57:
	.string	"smoke_fly"
	.zero	2
.LC58:
	.string	"180"
.LC59:
	.string	"256"
.LC60:
	.string	"64"
	.zero	1
.LC61:
	.string	"1.25"
	.zero	3
.LC63:
	.string	"random"
	.zero	1
.LC64:
	.string	"15 15 0"
.LC65:
	.string	"turn_max"
	.zero	3
.LC67:
	.string	"clamp_dist"
	.zero	1
.LC68:
	.string	"burstMode"
	.zero	2
.LC69:
	.string	"burstDist"
	.zero	2
.LC70:
	.string	"burstVelocity"
	.zero	2
.LC71:
	.string	"5"
	.zero	2
.LC72:
	.string	"launchDist"
	.zero	1
.LC73:
	.string	"launchOffset"
	.zero	3
.LC74:
	.string	"0 0 -4"
	.zero	1
.LC76:
	.string	"startingVelocity"
	.zero	3
.LC77:
	.string	"15 0 0"
	.zero	1
.LC78:
	.string	"endingVelocity"
	.zero	1
.LC79:
	.string	"1500 0 0"
	.zero	3
.LC80:
	.string	"accelTime"
	.zero	2
.LC81:
	.string	"damageRadius"
	.zero	3
.LC82:
	.string	"512"
.LC83:
	.string	"beam_WidthFly"
	.zero	2
.LC84:
	.string	"skin_beam"
	.zero	2
.LC86:
	.string	"_beam"
	.zero	2
.LC87:
	.string	"snd_beam"
	.zero	3
.LC88:
	.string	"def_damageFreq"
	.zero	1
.LC90:
	.string	"idProjectile::idProjectile( void ) size %d\r\n"
	.zero	3
.LC91:
	.string	"6.0"
.LC92:
	.string	"snd_%s"
	.zero	1
.LC93:
	.string	"snd_metal"
	.zero	2
.LC94:
	.string	"snd_impact"
	.zero	1
.LC95:
	.string	"mtr_detonate_%s"
.LC96:
	.string	"mtr_detonate"
	.zero	3
.LC97:
	.string	"decal_size"
	.zero	1
.LC99:
	.string	"net_instanthit"
	.zero	1
.LC100:
	.string	"snd_fizzle"
	.zero	1
.LC101:
	.string	"smoke_fuse"
	.zero	1
.LC102:
	.string	"detonate_on_death"
	.zero	2
.LC103:
	.string	"impact_damage_effect"
	.zero	3
.LC104:
	.string	"bleed"
	.zero	2
.LC105:
	.string	"Projectile collision no impact\n"
.LC106:
	.string	"no_touch"
	.zero	3
.LC107:
	.string	"snd_ricochet"
	.zero	3
.LC112:
	.string	"snd_bounce"
	.zero	1
.LC113:
	.string	"def_damage"
	.zero	1
.LC114:
	.string	"push"
	.zero	3
.LC115:
	.string	"idGuidedProjectile::idGuidedProjectile( void ) size %d\r\n"
	.zero	3
.LC117:
	.string	"smoke_kill"
	.zero	1
.LC118:
	.string	"boss"
	.zero	3
.LC120:
	.string	"snd_explode"
.LC122:
	.string	"snd_return"
	.zero	1
.LC123:
	.string	"idDebris::idDebris( void ) size %d\r\n"
	.zero	3
.LC124:
	.string	"random_velocity"
.LC125:
	.string	"clipmodel"
	.zero	2
.LC126:
	.string	"model"
	.zero	2
.LC127:
	.string	"0.5"
.LC128:
	.string	"detonation_axis"
.LC129:
	.string	"model_detonate"
	.zero	1
.LC130:
	.string	"model_smokespark"
	.zero	3
.LC131:
	.string	"model_ricochet"
	.zero	1
.LC132:
	.string	"model_smoke"
.LC133:
	.string	"mtr_explode_light_shader"
	.zero	3
.LC134:
	.string	"explode_light_radius"
	.zero	3
.LC135:
	.string	"explode_light_color"
.LC136:
	.string	"1 1 1"
	.zero	2
.LC137:
	.string	"explode_light_fadetime"
	.zero	1
.LC138:
	.string	"bindOnImpact"
	.zero	3
.LC139:
	.string	"delay_splash"
	.zero	3
.LC142:
	.string	"debris_count"
	.zero	3
.LC143:
	.string	"projectile_debris"
	.zero	2
.LC145:
	.string	"'projectile_debris' is not an idDebris"
	.zero	1
.LC146:
	.string	"projectile_shrapnel"
.LC147:
	.string	"'projectile_shrapnel' is not an idDebris"
	.zero	3
.LC148:
	.string	"beam_WidthExplode"
	.zero	2
.LC149:
	.string	"smoke_detonate"
	.zero	1
.LC150:
	.string	"idBFGProjectile::idBFGProjectile() size %d\r\n"
	.zero	3
.LC151:
	.string	"mtr_light_shader"
	.zero	3
.LC152:
	.string	"light_radius"
	.zero	3
.LC153:
	.string	"light_color"
.LC154:
	.string	"light_offset"
	.zero	3
.LC155:
	.string	"net_fullphysics"
.LC156:
	.string	"snd_explode2"
	.zero	3
.LC157:
	.string	"snd_explode3"
	.zero	3
.LC158:
	.string	"snd_explode4"
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZN12idProjectile4TypeE, @object
	.size	_ZN12idProjectile4TypeE, 80
_ZN12idProjectile4TypeE:
	.zero	80
	.type	_ZN18idGuidedProjectile4TypeE, @object
	.size	_ZN18idGuidedProjectile4TypeE, 80
_ZN18idGuidedProjectile4TypeE:
	.zero	80
	.type	_ZN17idSoulCubeMissile4TypeE, @object
	.size	_ZN17idSoulCubeMissile4TypeE, 80
_ZN17idSoulCubeMissile4TypeE:
	.zero	80
	.type	_ZN15idBFGProjectile4TypeE, @object
	.size	_ZN15idBFGProjectile4TypeE, 80
_ZN15idBFGProjectile4TypeE:
	.zero	80
	.type	_ZN8idDebris4TypeE, @object
	.size	_ZN8idDebris4TypeE, 80
_ZN8idDebris4TypeE:
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
	.type	EV_Explode, @object
	.size	EV_Explode, 64
EV_Explode:
	.zero	64
	.type	_ZL9EV_Fizzle, @object
	.size	_ZL9EV_Fizzle, 64
_ZL9EV_Fizzle:
	.zero	64
	.type	_ZL15EV_RadiusDamage, @object
	.size	_ZL15EV_RadiusDamage, 64
_ZL15EV_RadiusDamage:
	.zero	64
	.type	_ZL21EV_GetProjectileState, @object
	.size	_ZL21EV_GetProjectileState, 64
_ZL21EV_GetProjectileState:
	.zero	64
	.type	_ZN18idGuidedProjectile14eventCallbacksE, @object
	.size	_ZN18idGuidedProjectile14eventCallbacksE, 12
_ZN18idGuidedProjectile14eventCallbacksE:
	.zero	12
	.type	_ZN17idSoulCubeMissile14eventCallbacksE, @object
	.size	_ZN17idSoulCubeMissile14eventCallbacksE, 12
_ZN17idSoulCubeMissile14eventCallbacksE:
	.zero	12
	.type	_ZL14EV_RemoveBeams, @object
	.size	_ZL14EV_RemoveBeams, 64
_ZL14EV_RemoveBeams:
	.zero	64
	.section	".text"
.Letext0:
	.file 26 "<built-in>"
	.file 27 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 28 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 29 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../sys/sys_public.h"
	.file 30 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Common.h"
	.file 31 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/FileSystem.h"
	.file 32 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Lib.h"
	.file 33 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/CmdArgs.h"
	.file 34 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Quat.h"
	.file 35 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Rotation.h"
	.file 36 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Plane.h"
	.file 37 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Ode.h"
	.file 38 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Sphere.h"
	.file 39 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Box.h"
	.file 40 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Frustum.h"
	.file 41 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/DrawVert.h"
	.file 42 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/JointTransform.h"
	.file 43 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/Surface.h"
	.file 44 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Token.h"
	.file 45 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Lexer.h"
	.file 46 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/File.h"
	.file 47 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Parser.h"
	.file 48 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/StrList.h"
	.file 49 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/StrPool.h"
	.file 50 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/PlaneSet.h"
	.file 51 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/LangDict.h"
	.file 52 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/MapFile.h"
	.file 53 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/CmdSystem.h"
	.file 54 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/UsercmdGen.h"
	.file 55 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclParticle.h"
	.file 56 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclAF.h"
	.file 57 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Cinematic.h"
	.file 58 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Model.h"
	.file 59 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/RenderSystem.h"
	.file 60 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../sound/sound.h"
	.file 61 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../ui/UserInterface.h"
	.file 62 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../cm/CollisionModel.h"
	.file 63 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../tools/compilers/aas/AASFile.h"
	.file 64 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../game/Game.h"
	.file 65 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/NetworkSystem.h"
	.file 66 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/ModelManager.h"
	.file 67 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../tools/compilers/aas/AASFileManager.h"
	.file 68 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Session.h"
	.file 69 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../ui/ListGUI.h"
	.file 70 "d:/Data/Nintendo/DoomGX/src/game/gamesys/Event.h"
	.file 71 "d:/Data/Nintendo/DoomGX/src/game/gamesys/SaveGame.h"
	.file 72 "d:/Data/Nintendo/DoomGX/src/game/Entity.h"
	.file 73 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/Hierarchy.h"
	.file 74 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Program.h"
	.file 75 "d:/Data/Nintendo/DoomGX/src/game/anim/Anim.h"
	.file 76 "d:/Data/Nintendo/DoomGX/src/game/Actor.h"
	.file 77 "d:/Data/Nintendo/DoomGX/src/game/physics/Physics.h"
	.file 78 "d:/Data/Nintendo/DoomGX/src/game/AF.h"
	.file 79 "d:/Data/Nintendo/DoomGX/src/game/AFEntity.h"
	.file 80 "d:/Data/Nintendo/DoomGX/src/game/ai/AAS.h"
	.file 81 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Console.h"
	.file 82 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Curve.h"
	.file 83 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Simd.h"
	.file 84 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/BuildVersion.h"
	.file 85 "d:/Data/Nintendo/DoomGX/src/game/../idlib/precompiled.h"
	.file 86 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/EventLoop.h"
	.file 87 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/EditField.h"
	.file 88 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/AsyncNetwork.h"
	.file 89 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/AsyncServer.h"
	.file 90 "d:/Data/Nintendo/DoomGX/src/game/gamesys/SysCvar.h"
	.file 91 "d:/Data/Nintendo/DoomGX/src/game/MultiplayerGame.h"
	.file 92 "d:/Data/Nintendo/DoomGX/src/game/physics/Physics_RigidBody.h"
	.file 93 "d:/Data/Nintendo/DoomGX/src/game/Weapon.h"
	.file 94 "d:/Data/Nintendo/DoomGX/src/game/ai/AI.h"
	.file 95 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Compiler.h"
	.file 96 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Thread.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x40a3a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF8045
	.byte	0x4
	.4byte	.LASF8046
	.4byte	.LASF8047
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x7650
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
	.4byte	.LASF3774
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
	.4byte	0x2f025
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
	.4byte	0x31864
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
	.4byte	0x17f30
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
	.4byte	0x17ebd
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
	.byte	0xb
	.byte	0xd0
	.4byte	0x7cc
	.4byte	0xc2a
	.uleb128 0x15
	.4byte	.LASF121
	.4byte	0x2f025
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF123
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
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
	.4byte	0x3186f
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF127
	.byte	0xb
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
	.4byte	0x20a6c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF129
	.byte	0xb
	.byte	0xdd
	.4byte	.LASF130
	.4byte	0x20a6c
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
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
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
	.4byte	0x3186f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF141
	.byte	0xb
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
	.4byte	0x3186f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF143
	.byte	0xb
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
	.4byte	0x3186f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF145
	.byte	0xb
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
	.4byte	0x3186f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF147
	.byte	0xb
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
	.byte	0xb
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
	.4byte	0x17ebd
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF151
	.byte	0xb
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
	.4byte	0x17ebd
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF153
	.byte	0xb
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
	.byte	0xb
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
	.4byte	0x3186f
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF157
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
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
	.4byte	0x3186f
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
	.byte	0xb
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
	.4byte	0x3186f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF1329
	.byte	0xb
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
	.4byte	0x2f025
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
	.4byte	0x31841
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
	.4byte	0x31841
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1f
	.byte	0xa4
	.4byte	.LASF177
	.4byte	0x3184c
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
	.4byte	0x3184c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1f
	.byte	0xac
	.4byte	.LASF181
	.4byte	0x31852
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
	.4byte	0x31852
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
	.4byte	0x31852
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
	.4byte	0x18015
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
	.4byte	0x31858
	.uleb128 0x19
	.4byte	0x3185e
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
	.4byte	0x17fe5
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
	.4byte	0x30357
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
	.4byte	0x18099
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
	.4byte	0x31841
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
	.4byte	.LASF8048
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
	.byte	0x7
	.byte	0x28
	.4byte	0x21e8
	.uleb128 0x39
	.4byte	.LASF451
	.byte	0x7
	.byte	0x34
	.4byte	0x21e8
	.byte	0x1
	.byte	0x1
	.2byte	0x7fff
	.uleb128 0x28
	.4byte	.LASF452
	.byte	0x7
	.byte	0x37
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF450
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x3
	.byte	0x34
	.4byte	0x26ea
	.uleb128 0x5
	.string	"x"
	.byte	0x3
	.byte	0x36
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0x3
	.byte	0x37
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF464
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.2byte	0x13c
	.4byte	0x2ec2
	.uleb128 0x13
	.string	"x"
	.byte	0x3
	.2byte	0x13e
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x3
	.2byte	0x13f
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x3
	.2byte	0x140
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF524
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0xf
	.byte	0x33
	.4byte	0x33e5
	.uleb128 0x6
	.4byte	.LASF590
	.byte	0xf
	.byte	0x35
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"yaw"
	.byte	0xf
	.byte	0x36
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF591
	.byte	0xf
	.byte	0x37
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF589
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0xf
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
	.byte	0x3
	.2byte	0x785
	.4byte	0x353e
	.uleb128 0x10
	.4byte	.LASF633
	.byte	0x3
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF634
	.byte	0x3
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"phi"
	.byte	0x3
	.2byte	0x787
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF632
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0xc
	.2byte	0x14d
	.4byte	0x3d48
	.uleb128 0x46
	.string	"mat"
	.byte	0xc
	.2byte	0x198
	.4byte	0x5636
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF643
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0x3
	.2byte	0x328
	.4byte	0x426a
	.uleb128 0x13
	.string	"x"
	.byte	0x3
	.2byte	0x32a
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x3
	.2byte	0x32b
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x3
	.2byte	0x32c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"w"
	.byte	0x3
	.2byte	0x32d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF719
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.2byte	0x42a
	.4byte	0x44bc
	.uleb128 0x13
	.string	"x"
	.byte	0x3
	.2byte	0x42c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x3
	.2byte	0x42d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x3
	.2byte	0x42e
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"s"
	.byte	0x3
	.2byte	0x42f
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"t"
	.byte	0x3
	.2byte	0x430
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF753
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.2byte	0x486
	.4byte	0x4977
	.uleb128 0x46
	.string	"p"
	.byte	0x3
	.2byte	0x4b1
	.4byte	0x4977
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF764
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.2byte	0x59b
	.4byte	0x5073
	.uleb128 0x48
	.4byte	.LASF795
	.byte	0x3
	.2byte	0x5d5
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF796
	.byte	0x3
	.2byte	0x5d6
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x46
	.string	"p"
	.byte	0x3
	.2byte	0x5d7
	.4byte	0x21fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF797
	.byte	0x3
	.2byte	0x5d9
	.4byte	0x5073
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF798
	.byte	0x3
	.2byte	0x5da
	.4byte	0x21fe
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF799
	.byte	0x3
	.2byte	0x5db
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF794
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0xc
	.byte	0x37
	.4byte	0x55ee
	.uleb128 0x4b
	.string	"mat"
	.byte	0xc
	.byte	0x6a
	.4byte	0x55ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF852
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.byte	0xc
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
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF612
	.byte	0x23
	.byte	0x56
	.4byte	.LASF975
	.byte	0x1
	.4byte	0x61e4
	.4byte	0x61eb
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF610
	.byte	0x23
	.byte	0x57
	.4byte	.LASF976
	.byte	0x1
	.4byte	0x61fc
	.uleb128 0x17
	.4byte	0x8df7
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF977
	.byte	0x40
	.byte	0xc
	.2byte	0x2fc
	.4byte	0x6849
	.uleb128 0x46
	.string	"mat"
	.byte	0xc
	.2byte	0x33a
	.4byte	0x6849
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF977
	.byte	0xc
	.2byte	0x2fe
	.byte	0x1
	.4byte	0x6233
	.4byte	0x623a
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF977
	.byte	0xc
	.2byte	0x2ff
	.byte	0x1
	.byte	0x1
	.4byte	0x624d
	.4byte	0x6268
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.uleb128 0x19
	.4byte	0x685f
	.uleb128 0x19
	.4byte	0x685f
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF977
	.byte	0xc
	.2byte	0x300
	.byte	0x1
	.byte	0x1
	.4byte	0x627b
	.4byte	0x62d2
	.uleb128 0x17
	.4byte	0x6859
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
	.4byte	.LASF977
	.byte	0xc
	.2byte	0x304
	.byte	0x1
	.byte	0x1
	.4byte	0x62e5
	.4byte	0x62f6
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF977
	.byte	0xc
	.2byte	0x305
	.byte	0x1
	.byte	0x1
	.4byte	0x6309
	.4byte	0x6315
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0x686b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x307
	.4byte	.LASF978
	.4byte	0x685f
	.byte	0x1
	.4byte	0x632f
	.4byte	0x633b
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x308
	.4byte	.LASF979
	.4byte	0x688c
	.byte	0x1
	.4byte	0x6355
	.4byte	0x6361
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x309
	.4byte	.LASF980
	.4byte	0x6204
	.byte	0x1
	.4byte	0x637b
	.4byte	0x6387
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x30a
	.4byte	.LASF981
	.4byte	0x3d54
	.byte	0x1
	.4byte	0x63a1
	.4byte	0x63ad
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x30b
	.4byte	.LASF982
	.4byte	0x270c
	.byte	0x1
	.4byte	0x63c7
	.4byte	0x63d3
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x30c
	.4byte	.LASF983
	.4byte	0x6204
	.byte	0x1
	.4byte	0x63ed
	.4byte	0x63f9
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0xc
	.2byte	0x30d
	.4byte	.LASF984
	.4byte	0x6204
	.byte	0x1
	.4byte	0x6413
	.4byte	0x641f
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0xc
	.2byte	0x30e
	.4byte	.LASF985
	.4byte	0x6204
	.byte	0x1
	.4byte	0x6439
	.4byte	0x6445
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x30f
	.4byte	.LASF986
	.4byte	0x689d
	.byte	0x1
	.4byte	0x645f
	.4byte	0x646b
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x310
	.4byte	.LASF987
	.4byte	0x689d
	.byte	0x1
	.4byte	0x6485
	.4byte	0x6491
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0xc
	.2byte	0x311
	.4byte	.LASF988
	.4byte	0x689d
	.byte	0x1
	.4byte	0x64ab
	.4byte	0x64b7
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0xc
	.2byte	0x312
	.4byte	.LASF989
	.4byte	0x689d
	.byte	0x1
	.4byte	0x64d1
	.4byte	0x64dd
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x31a
	.4byte	.LASF990
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x64f7
	.4byte	0x6503
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x31b
	.4byte	.LASF991
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x651d
	.4byte	0x652e
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0xc
	.2byte	0x31c
	.4byte	.LASF992
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6548
	.4byte	0x6554
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0xc
	.2byte	0x31d
	.4byte	.LASF993
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x656e
	.4byte	0x657a
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x31f
	.4byte	.LASF994
	.byte	0x1
	.4byte	0x6590
	.4byte	0x6597
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF661
	.byte	0xc
	.2byte	0x320
	.4byte	.LASF995
	.byte	0x1
	.4byte	0x65ad
	.4byte	0x65b4
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0xc
	.2byte	0x321
	.4byte	.LASF996
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x65ce
	.4byte	0x65da
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF665
	.byte	0xc
	.2byte	0x322
	.4byte	.LASF997
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x65f4
	.4byte	0x6600
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF667
	.byte	0xc
	.2byte	0x323
	.4byte	.LASF998
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x661a
	.4byte	0x6626
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF669
	.byte	0xc
	.2byte	0x324
	.4byte	.LASF999
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6640
	.4byte	0x6647
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF671
	.byte	0xc
	.2byte	0x326
	.4byte	.LASF1000
	.byte	0x1
	.4byte	0x665d
	.4byte	0x666e
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.uleb128 0x19
	.4byte	0x688c
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF673
	.byte	0xc
	.2byte	0x327
	.4byte	.LASF1001
	.byte	0x1
	.4byte	0x6684
	.4byte	0x6695
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.uleb128 0x19
	.4byte	0x688c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF678
	.byte	0xc
	.2byte	0x329
	.4byte	.LASF1002
	.4byte	0x109
	.byte	0x1
	.4byte	0x66af
	.4byte	0x66b6
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF680
	.byte	0xc
	.2byte	0x32a
	.4byte	.LASF1003
	.4byte	0x109
	.byte	0x1
	.4byte	0x66d0
	.4byte	0x66d7
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF686
	.byte	0xc
	.2byte	0x32b
	.4byte	.LASF1004
	.4byte	0x6204
	.byte	0x1
	.4byte	0x66f1
	.4byte	0x66f8
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF688
	.byte	0xc
	.2byte	0x32c
	.4byte	.LASF1005
	.4byte	0x689d
	.byte	0x1
	.4byte	0x6712
	.4byte	0x6719
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF690
	.byte	0xc
	.2byte	0x32d
	.4byte	.LASF1006
	.4byte	0x6204
	.byte	0x1
	.4byte	0x6733
	.4byte	0x673a
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF692
	.byte	0xc
	.2byte	0x32e
	.4byte	.LASF1007
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6754
	.4byte	0x675b
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF694
	.byte	0xc
	.2byte	0x32f
	.4byte	.LASF1008
	.4byte	0x6204
	.byte	0x1
	.4byte	0x6775
	.4byte	0x677c
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF696
	.byte	0xc
	.2byte	0x330
	.4byte	.LASF1009
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6796
	.4byte	0x679d
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF698
	.byte	0xc
	.2byte	0x331
	.4byte	.LASF1010
	.4byte	0x6204
	.byte	0x1
	.4byte	0x67b7
	.4byte	0x67c3
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6892
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0xc
	.2byte	0x333
	.4byte	.LASF1011
	.4byte	0xac
	.byte	0x1
	.4byte	0x67dd
	.4byte	0x67e4
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x335
	.4byte	.LASF1012
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x67fe
	.4byte	0x6805
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x336
	.4byte	.LASF1013
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x681f
	.4byte	0x6826
	.uleb128 0x17
	.4byte	0x6859
	.byte	0x1
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF520
	.byte	0xc
	.2byte	0x337
	.4byte	.LASF1014
	.4byte	0xe5
	.byte	0x1
	.4byte	0x683c
	.uleb128 0x17
	.4byte	0x6881
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3d54
	.4byte	0x6859
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6204
	.uleb128 0x24
	.byte	0x4
	.4byte	0x4276
	.uleb128 0x24
	.byte	0x4
	.4byte	0x5668
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6871
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x6881
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6887
	.uleb128 0xc
	.4byte	0x6204
	.uleb128 0x24
	.byte	0x4
	.4byte	0x3d54
	.uleb128 0x24
	.byte	0x4
	.4byte	0x6898
	.uleb128 0xc
	.4byte	0x6204
	.uleb128 0x24
	.byte	0x4
	.4byte	0x6204
	.uleb128 0x3d
	.4byte	.LASF1015
	.byte	0x64
	.byte	0xc
	.2byte	0x480
	.4byte	0x6da4
	.uleb128 0x46
	.string	"mat"
	.byte	0xc
	.2byte	0x4b1
	.4byte	0x6da4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF1015
	.byte	0xc
	.2byte	0x482
	.byte	0x1
	.4byte	0x68d2
	.4byte	0x68d9
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1015
	.byte	0xc
	.2byte	0x483
	.byte	0x1
	.byte	0x1
	.4byte	0x68ec
	.4byte	0x690c
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6dba
	.uleb128 0x19
	.4byte	0x6dba
	.uleb128 0x19
	.4byte	0x6dba
	.uleb128 0x19
	.4byte	0x6dba
	.uleb128 0x19
	.4byte	0x6dba
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1015
	.byte	0xc
	.2byte	0x484
	.byte	0x1
	.byte	0x1
	.4byte	0x691f
	.4byte	0x692b
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6dc0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x486
	.4byte	.LASF1016
	.4byte	0x6dba
	.byte	0x1
	.4byte	0x6945
	.4byte	0x6951
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x487
	.4byte	.LASF1017
	.4byte	0x6de1
	.byte	0x1
	.4byte	0x696b
	.4byte	0x6977
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x488
	.4byte	.LASF1018
	.4byte	0x68a3
	.byte	0x1
	.4byte	0x6991
	.4byte	0x699d
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x489
	.4byte	.LASF1019
	.4byte	0x4298
	.byte	0x1
	.4byte	0x69b7
	.4byte	0x69c3
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6dba
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x48a
	.4byte	.LASF1020
	.4byte	0x68a3
	.byte	0x1
	.4byte	0x69dd
	.4byte	0x69e9
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0xc
	.2byte	0x48b
	.4byte	.LASF1021
	.4byte	0x68a3
	.byte	0x1
	.4byte	0x6a03
	.4byte	0x6a0f
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0xc
	.2byte	0x48c
	.4byte	.LASF1022
	.4byte	0x68a3
	.byte	0x1
	.4byte	0x6a29
	.4byte	0x6a35
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x48d
	.4byte	.LASF1023
	.4byte	0x6df2
	.byte	0x1
	.4byte	0x6a4f
	.4byte	0x6a5b
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x48e
	.4byte	.LASF1024
	.4byte	0x6df2
	.byte	0x1
	.4byte	0x6a75
	.4byte	0x6a81
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0xc
	.2byte	0x48f
	.4byte	.LASF1025
	.4byte	0x6df2
	.byte	0x1
	.4byte	0x6a9b
	.4byte	0x6aa7
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0xc
	.2byte	0x490
	.4byte	.LASF1026
	.4byte	0x6df2
	.byte	0x1
	.4byte	0x6ac1
	.4byte	0x6acd
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x496
	.4byte	.LASF1027
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6ae7
	.4byte	0x6af3
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x497
	.4byte	.LASF1028
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6b0d
	.4byte	0x6b1e
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0xc
	.2byte	0x498
	.4byte	.LASF1029
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6b38
	.4byte	0x6b44
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0xc
	.2byte	0x499
	.4byte	.LASF1030
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6b5e
	.4byte	0x6b6a
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6de7
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x49b
	.4byte	.LASF1031
	.byte	0x1
	.4byte	0x6b80
	.4byte	0x6b87
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF661
	.byte	0xc
	.2byte	0x49c
	.4byte	.LASF1032
	.byte	0x1
	.4byte	0x6b9d
	.4byte	0x6ba4
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0xc
	.2byte	0x49d
	.4byte	.LASF1033
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6bbe
	.4byte	0x6bca
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF665
	.byte	0xc
	.2byte	0x49e
	.4byte	.LASF1034
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6be4
	.4byte	0x6bf0
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF667
	.byte	0xc
	.2byte	0x49f
	.4byte	.LASF1035
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6c0a
	.4byte	0x6c16
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF678
	.byte	0xc
	.2byte	0x4a1
	.4byte	.LASF1036
	.4byte	0x109
	.byte	0x1
	.4byte	0x6c30
	.4byte	0x6c37
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF680
	.byte	0xc
	.2byte	0x4a2
	.4byte	.LASF1037
	.4byte	0x109
	.byte	0x1
	.4byte	0x6c51
	.4byte	0x6c58
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF686
	.byte	0xc
	.2byte	0x4a3
	.4byte	.LASF1038
	.4byte	0x68a3
	.byte	0x1
	.4byte	0x6c72
	.4byte	0x6c79
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF688
	.byte	0xc
	.2byte	0x4a4
	.4byte	.LASF1039
	.4byte	0x6df2
	.byte	0x1
	.4byte	0x6c93
	.4byte	0x6c9a
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF690
	.byte	0xc
	.2byte	0x4a5
	.4byte	.LASF1040
	.4byte	0x68a3
	.byte	0x1
	.4byte	0x6cb4
	.4byte	0x6cbb
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF692
	.byte	0xc
	.2byte	0x4a6
	.4byte	.LASF1041
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6cd5
	.4byte	0x6cdc
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF694
	.byte	0xc
	.2byte	0x4a7
	.4byte	.LASF1042
	.4byte	0x68a3
	.byte	0x1
	.4byte	0x6cf6
	.4byte	0x6cfd
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF696
	.byte	0xc
	.2byte	0x4a8
	.4byte	.LASF1043
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x6d17
	.4byte	0x6d1e
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0xc
	.2byte	0x4aa
	.4byte	.LASF1044
	.4byte	0xac
	.byte	0x1
	.4byte	0x6d38
	.4byte	0x6d3f
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x4ac
	.4byte	.LASF1045
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x6d59
	.4byte	0x6d60
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x4ad
	.4byte	.LASF1046
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x6d7a
	.4byte	0x6d81
	.uleb128 0x17
	.4byte	0x6db4
	.byte	0x1
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF520
	.byte	0xc
	.2byte	0x4ae
	.4byte	.LASF1047
	.4byte	0xe5
	.byte	0x1
	.4byte	0x6d97
	.uleb128 0x17
	.4byte	0x6dd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4298
	.4byte	0x6db4
	.uleb128 0xa
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x68a3
	.uleb128 0x24
	.byte	0x4
	.4byte	0x44c8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6dc6
	.uleb128 0x9
	.4byte	0x109
	.4byte	0x6dd6
	.uleb128 0xa
	.4byte	0x34
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6ddc
	.uleb128 0xc
	.4byte	0x68a3
	.uleb128 0x24
	.byte	0x4
	.4byte	0x4298
	.uleb128 0x24
	.byte	0x4
	.4byte	0x6ded
	.uleb128 0xc
	.4byte	0x68a3
	.uleb128 0x24
	.byte	0x4
	.4byte	0x68a3
	.uleb128 0x3d
	.4byte	.LASF1048
	.byte	0x90
	.byte	0xc
	.2byte	0x5a9
	.4byte	0x7352
	.uleb128 0x46
	.string	"mat"
	.byte	0xc
	.2byte	0x5dc
	.4byte	0x7352
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF1048
	.byte	0xc
	.2byte	0x5ab
	.byte	0x1
	.4byte	0x6e27
	.4byte	0x6e2e
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1048
	.byte	0xc
	.2byte	0x5ac
	.byte	0x1
	.byte	0x1
	.4byte	0x6e41
	.4byte	0x6e66
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0x50a6
	.uleb128 0x19
	.4byte	0x50a6
	.uleb128 0x19
	.4byte	0x50a6
	.uleb128 0x19
	.4byte	0x50a6
	.uleb128 0x19
	.4byte	0x50a6
	.uleb128 0x19
	.4byte	0x50a6
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1048
	.byte	0xc
	.2byte	0x5ad
	.byte	0x1
	.byte	0x1
	.4byte	0x6e79
	.4byte	0x6e94
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1048
	.byte	0xc
	.2byte	0x5ae
	.byte	0x1
	.byte	0x1
	.4byte	0x6ea7
	.4byte	0x6eb3
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7368
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x5b0
	.4byte	.LASF1049
	.4byte	0x50a6
	.byte	0x1
	.4byte	0x6ecd
	.4byte	0x6ed9
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x5b1
	.4byte	.LASF1050
	.4byte	0x50ac
	.byte	0x1
	.4byte	0x6ef3
	.4byte	0x6eff
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x5b2
	.4byte	.LASF1051
	.4byte	0x6df8
	.byte	0x1
	.4byte	0x6f19
	.4byte	0x6f25
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x5b3
	.4byte	.LASF1052
	.4byte	0x44de
	.byte	0x1
	.4byte	0x6f3f
	.4byte	0x6f4b
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x50a6
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x5b4
	.4byte	.LASF1053
	.4byte	0x6df8
	.byte	0x1
	.4byte	0x6f65
	.4byte	0x6f71
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0xc
	.2byte	0x5b5
	.4byte	.LASF1054
	.4byte	0x6df8
	.byte	0x1
	.4byte	0x6f8b
	.4byte	0x6f97
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0xc
	.2byte	0x5b6
	.4byte	.LASF1055
	.4byte	0x6df8
	.byte	0x1
	.4byte	0x6fb1
	.4byte	0x6fbd
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x5b7
	.4byte	.LASF1056
	.4byte	0x7384
	.byte	0x1
	.4byte	0x6fd7
	.4byte	0x6fe3
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x5b8
	.4byte	.LASF1057
	.4byte	0x7384
	.byte	0x1
	.4byte	0x6ffd
	.4byte	0x7009
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0xc
	.2byte	0x5b9
	.4byte	.LASF1058
	.4byte	0x7384
	.byte	0x1
	.4byte	0x7023
	.4byte	0x702f
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0xc
	.2byte	0x5ba
	.4byte	.LASF1059
	.4byte	0x7384
	.byte	0x1
	.4byte	0x7049
	.4byte	0x7055
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x5c0
	.4byte	.LASF1060
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x706f
	.4byte	0x707b
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x5c1
	.4byte	.LASF1061
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7095
	.4byte	0x70a6
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0xc
	.2byte	0x5c2
	.4byte	.LASF1062
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x70c0
	.4byte	0x70cc
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0xc
	.2byte	0x5c3
	.4byte	.LASF1063
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x70e6
	.4byte	0x70f2
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x7379
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x5c5
	.4byte	.LASF1064
	.byte	0x1
	.4byte	0x7108
	.4byte	0x710f
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF661
	.byte	0xc
	.2byte	0x5c6
	.4byte	.LASF1065
	.byte	0x1
	.4byte	0x7125
	.4byte	0x712c
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0xc
	.2byte	0x5c7
	.4byte	.LASF1066
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7146
	.4byte	0x7152
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF665
	.byte	0xc
	.2byte	0x5c8
	.4byte	.LASF1067
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x716c
	.4byte	0x7178
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF667
	.byte	0xc
	.2byte	0x5c9
	.4byte	.LASF1068
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7192
	.4byte	0x719e
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1069
	.byte	0xc
	.2byte	0x5cb
	.4byte	.LASF1070
	.4byte	0x353e
	.byte	0x1
	.4byte	0x71b8
	.4byte	0x71c4
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF678
	.byte	0xc
	.2byte	0x5cc
	.4byte	.LASF1071
	.4byte	0x109
	.byte	0x1
	.4byte	0x71de
	.4byte	0x71e5
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF680
	.byte	0xc
	.2byte	0x5cd
	.4byte	.LASF1072
	.4byte	0x109
	.byte	0x1
	.4byte	0x71ff
	.4byte	0x7206
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF686
	.byte	0xc
	.2byte	0x5ce
	.4byte	.LASF1073
	.4byte	0x6df8
	.byte	0x1
	.4byte	0x7220
	.4byte	0x7227
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF688
	.byte	0xc
	.2byte	0x5cf
	.4byte	.LASF1074
	.4byte	0x7384
	.byte	0x1
	.4byte	0x7241
	.4byte	0x7248
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF690
	.byte	0xc
	.2byte	0x5d0
	.4byte	.LASF1075
	.4byte	0x6df8
	.byte	0x1
	.4byte	0x7262
	.4byte	0x7269
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF692
	.byte	0xc
	.2byte	0x5d1
	.4byte	.LASF1076
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7283
	.4byte	0x728a
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF694
	.byte	0xc
	.2byte	0x5d2
	.4byte	.LASF1077
	.4byte	0x6df8
	.byte	0x1
	.4byte	0x72a4
	.4byte	0x72ab
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF696
	.byte	0xc
	.2byte	0x5d3
	.4byte	.LASF1078
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x72c5
	.4byte	0x72cc
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0xc
	.2byte	0x5d5
	.4byte	.LASF1079
	.4byte	0xac
	.byte	0x1
	.4byte	0x72e6
	.4byte	0x72ed
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x5d7
	.4byte	.LASF1080
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x7307
	.4byte	0x730e
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x5d8
	.4byte	.LASF1081
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x7328
	.4byte	0x732f
	.uleb128 0x17
	.4byte	0x7362
	.byte	0x1
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF520
	.byte	0xc
	.2byte	0x5d9
	.4byte	.LASF1082
	.4byte	0xe5
	.byte	0x1
	.4byte	0x7345
	.uleb128 0x17
	.4byte	0x736e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x44de
	.4byte	0x7362
	.uleb128 0xa
	.4byte	0x34
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6df8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4977
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7374
	.uleb128 0xc
	.4byte	0x6df8
	.uleb128 0x24
	.byte	0x4
	.4byte	0x737f
	.uleb128 0xc
	.4byte	0x6df8
	.uleb128 0x24
	.byte	0x4
	.4byte	0x6df8
	.uleb128 0x3d
	.4byte	.LASF1083
	.byte	0x10
	.byte	0xc
	.2byte	0x6fa
	.4byte	0x8d5d
	.uleb128 0x48
	.4byte	.LASF1084
	.byte	0xc
	.2byte	0x7b2
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF1085
	.byte	0xc
	.2byte	0x7b3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF796
	.byte	0xc
	.2byte	0x7b4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x46
	.string	"mat"
	.byte	0xc
	.2byte	0x7b5
	.4byte	0x21fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF797
	.byte	0xc
	.2byte	0x7b7
	.4byte	0x5073
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF798
	.byte	0xc
	.2byte	0x7b8
	.4byte	0x21fe
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF799
	.byte	0xc
	.2byte	0x7b9
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF1083
	.byte	0xc
	.2byte	0x6fc
	.byte	0x1
	.4byte	0x7416
	.4byte	0x741d
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1083
	.byte	0xc
	.2byte	0x6fd
	.byte	0x1
	.byte	0x1
	.4byte	0x7430
	.4byte	0x7441
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF1083
	.byte	0xc
	.2byte	0x6fe
	.byte	0x1
	.byte	0x1
	.4byte	0x7454
	.4byte	0x746a
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF1086
	.byte	0xc
	.2byte	0x6ff
	.byte	0x1
	.4byte	0x747c
	.4byte	0x7489
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0xc
	.2byte	0x701
	.4byte	.LASF1087
	.byte	0x1
	.4byte	0x749f
	.4byte	0x74b5
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x20d8
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0xc
	.2byte	0x702
	.4byte	.LASF1088
	.byte	0x1
	.4byte	0x74cb
	.4byte	0x74dc
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Set"
	.byte	0xc
	.2byte	0x703
	.4byte	.LASF1089
	.byte	0x1
	.4byte	0x74f2
	.4byte	0x750d
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x705
	.4byte	.LASF1090
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x7527
	.4byte	0x7533
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x706
	.4byte	.LASF1091
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x754d
	.4byte	0x7559
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0xc
	.2byte	0x707
	.4byte	.LASF1092
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x7573
	.4byte	0x757f
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x708
	.4byte	.LASF1093
	.4byte	0x738a
	.byte	0x1
	.4byte	0x7599
	.4byte	0x75a5
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x709
	.4byte	.LASF1094
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x75bf
	.4byte	0x75cb
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF473
	.byte	0xc
	.2byte	0x70a
	.4byte	.LASF1095
	.4byte	0x738a
	.byte	0x1
	.4byte	0x75e5
	.4byte	0x75f1
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF478
	.byte	0xc
	.2byte	0x70b
	.4byte	.LASF1096
	.4byte	0x738a
	.byte	0x1
	.4byte	0x760b
	.4byte	0x7617
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF471
	.byte	0xc
	.2byte	0x70c
	.4byte	.LASF1097
	.4byte	0x738a
	.byte	0x1
	.4byte	0x7631
	.4byte	0x763d
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x70d
	.4byte	.LASF1098
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x7657
	.4byte	0x7663
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF488
	.byte	0xc
	.2byte	0x70e
	.4byte	.LASF1099
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x767d
	.4byte	0x7689
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF481
	.byte	0xc
	.2byte	0x70f
	.4byte	.LASF1100
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x76a3
	.4byte	0x76af
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF483
	.byte	0xc
	.2byte	0x710
	.4byte	.LASF1101
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x76c9
	.4byte	0x76d5
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x716
	.4byte	.LASF1102
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x76ef
	.4byte	0x76fb
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF490
	.byte	0xc
	.2byte	0x717
	.4byte	.LASF1103
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7715
	.4byte	0x7726
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF493
	.byte	0xc
	.2byte	0x718
	.4byte	.LASF1104
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7740
	.4byte	0x774c
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF495
	.byte	0xc
	.2byte	0x719
	.4byte	.LASF1105
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7766
	.4byte	0x7772
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF818
	.byte	0xc
	.2byte	0x71b
	.4byte	.LASF1106
	.byte	0x1
	.4byte	0x7788
	.4byte	0x7799
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF820
	.byte	0xc
	.2byte	0x71c
	.4byte	.LASF1107
	.byte	0x1
	.4byte	0x77af
	.4byte	0x77c5
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1108
	.byte	0xc
	.2byte	0x71d
	.4byte	.LASF1109
	.4byte	0xac
	.byte	0x1
	.4byte	0x77df
	.4byte	0x77e6
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1110
	.byte	0xc
	.2byte	0x71e
	.4byte	.LASF1111
	.4byte	0xac
	.byte	0x1
	.4byte	0x7800
	.4byte	0x7807
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF824
	.byte	0xc
	.2byte	0x71f
	.4byte	.LASF1112
	.byte	0x1
	.4byte	0x781d
	.4byte	0x7833
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x720
	.4byte	.LASF1113
	.byte	0x1
	.4byte	0x7849
	.4byte	0x7850
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x721
	.4byte	.LASF1114
	.byte	0x1
	.4byte	0x7866
	.4byte	0x7877
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF661
	.byte	0xc
	.2byte	0x722
	.4byte	.LASF1115
	.byte	0x1
	.4byte	0x788d
	.4byte	0x7894
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF661
	.byte	0xc
	.2byte	0x723
	.4byte	.LASF1116
	.byte	0x1
	.4byte	0x78aa
	.4byte	0x78bb
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1117
	.byte	0xc
	.2byte	0x724
	.4byte	.LASF1118
	.byte	0x1
	.4byte	0x78d1
	.4byte	0x78dd
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF828
	.byte	0xc
	.2byte	0x725
	.4byte	.LASF1119
	.byte	0x1
	.4byte	0x78f3
	.4byte	0x7909
	.uleb128 0x17
	.4byte	0x8d5d
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
	.byte	0xc
	.2byte	0x726
	.4byte	.LASF1120
	.byte	0x1
	.4byte	0x791f
	.4byte	0x793f
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
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
	.byte	0xc
	.2byte	0x727
	.4byte	.LASF1121
	.byte	0x1
	.4byte	0x7955
	.4byte	0x795c
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF509
	.byte	0xc
	.2byte	0x728
	.4byte	.LASF1122
	.byte	0x1
	.4byte	0x7972
	.4byte	0x7983
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1123
	.byte	0xc
	.2byte	0x729
	.4byte	.LASF1124
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x799d
	.4byte	0x79ae
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1125
	.byte	0xc
	.2byte	0x72a
	.4byte	.LASF1126
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x79c8
	.4byte	0x79d9
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1127
	.byte	0xc
	.2byte	0x72b
	.4byte	.LASF1128
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x79f3
	.4byte	0x7a04
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1129
	.byte	0xc
	.2byte	0x72c
	.4byte	.LASF1130
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x7a1e
	.4byte	0x7a2a
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1131
	.byte	0xc
	.2byte	0x72d
	.4byte	.LASF1132
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x7a44
	.4byte	0x7a50
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1133
	.byte	0xc
	.2byte	0x72e
	.4byte	.LASF1134
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x7a6a
	.4byte	0x7a76
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1135
	.byte	0xc
	.2byte	0x72f
	.4byte	.LASF1136
	.byte	0x1
	.4byte	0x7a8c
	.4byte	0x7a93
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1137
	.byte	0xc
	.2byte	0x730
	.4byte	.LASF1138
	.byte	0x1
	.4byte	0x7aa9
	.4byte	0x7ab0
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1139
	.byte	0xc
	.2byte	0x731
	.4byte	.LASF1140
	.byte	0x1
	.4byte	0x7ac6
	.4byte	0x7ad7
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1141
	.byte	0xc
	.2byte	0x732
	.4byte	.LASF1142
	.4byte	0x109
	.byte	0x1
	.4byte	0x7af1
	.4byte	0x7afd
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1143
	.byte	0xc
	.2byte	0x734
	.4byte	.LASF1144
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7b17
	.4byte	0x7b1e
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1145
	.byte	0xc
	.2byte	0x735
	.4byte	.LASF1146
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7b38
	.4byte	0x7b44
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF663
	.byte	0xc
	.2byte	0x736
	.4byte	.LASF1147
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7b5e
	.4byte	0x7b6a
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF667
	.byte	0xc
	.2byte	0x737
	.4byte	.LASF1148
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7b84
	.4byte	0x7b90
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1149
	.byte	0xc
	.2byte	0x738
	.4byte	.LASF1150
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7baa
	.4byte	0x7bb6
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF665
	.byte	0xc
	.2byte	0x739
	.4byte	.LASF1151
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7bd0
	.4byte	0x7bdc
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1152
	.byte	0xc
	.2byte	0x73a
	.4byte	.LASF1153
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7bf6
	.4byte	0x7c02
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1154
	.byte	0xc
	.2byte	0x73b
	.4byte	.LASF1155
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7c1c
	.4byte	0x7c28
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1156
	.byte	0xc
	.2byte	0x73c
	.4byte	.LASF1157
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7c42
	.4byte	0x7c4e
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1158
	.byte	0xc
	.2byte	0x73d
	.4byte	.LASF1159
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7c68
	.4byte	0x7c74
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1160
	.byte	0xc
	.2byte	0x73e
	.4byte	.LASF1161
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7c8e
	.4byte	0x7c9a
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1162
	.byte	0xc
	.2byte	0x73f
	.4byte	.LASF1163
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7cb4
	.4byte	0x7cc0
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1164
	.byte	0xc
	.2byte	0x740
	.4byte	.LASF1165
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7cda
	.4byte	0x7ce6
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1166
	.byte	0xc
	.2byte	0x741
	.4byte	.LASF1167
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7d00
	.4byte	0x7d0c
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF678
	.byte	0xc
	.2byte	0x743
	.4byte	.LASF1168
	.4byte	0x109
	.byte	0x1
	.4byte	0x7d26
	.4byte	0x7d2d
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF680
	.byte	0xc
	.2byte	0x744
	.4byte	.LASF1169
	.4byte	0x109
	.byte	0x1
	.4byte	0x7d47
	.4byte	0x7d4e
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF686
	.byte	0xc
	.2byte	0x745
	.4byte	.LASF1170
	.4byte	0x738a
	.byte	0x1
	.4byte	0x7d68
	.4byte	0x7d6f
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF688
	.byte	0xc
	.2byte	0x746
	.4byte	.LASF1171
	.4byte	0x8d6e
	.byte	0x1
	.4byte	0x7d89
	.4byte	0x7d90
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF690
	.byte	0xc
	.2byte	0x747
	.4byte	.LASF1172
	.4byte	0x738a
	.byte	0x1
	.4byte	0x7daa
	.4byte	0x7db1
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF692
	.byte	0xc
	.2byte	0x748
	.4byte	.LASF1173
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7dcb
	.4byte	0x7dd2
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF694
	.byte	0xc
	.2byte	0x749
	.4byte	.LASF1174
	.4byte	0x738a
	.byte	0x1
	.4byte	0x7dec
	.4byte	0x7df3
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF696
	.byte	0xc
	.2byte	0x74a
	.4byte	.LASF1175
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7e0d
	.4byte	0x7e14
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1176
	.byte	0xc
	.2byte	0x74c
	.4byte	.LASF1177
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7e2e
	.4byte	0x7e35
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1178
	.byte	0xc
	.2byte	0x74d
	.4byte	.LASF1179
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x7e4f
	.4byte	0x7e56
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1180
	.byte	0xc
	.2byte	0x74f
	.4byte	.LASF1181
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x7e70
	.4byte	0x7e7c
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF698
	.byte	0xc
	.2byte	0x750
	.4byte	.LASF1182
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x7e96
	.4byte	0x7ea2
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1180
	.byte	0xc
	.2byte	0x752
	.4byte	.LASF1183
	.4byte	0x738a
	.byte	0x1
	.4byte	0x7ebc
	.4byte	0x7ec8
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF698
	.byte	0xc
	.2byte	0x753
	.4byte	.LASF1184
	.4byte	0x738a
	.byte	0x1
	.4byte	0x7ee2
	.4byte	0x7eee
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1180
	.byte	0xc
	.2byte	0x755
	.4byte	.LASF1185
	.byte	0x1
	.4byte	0x7f04
	.4byte	0x7f15
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1186
	.byte	0xc
	.2byte	0x756
	.4byte	.LASF1187
	.byte	0x1
	.4byte	0x7f2b
	.4byte	0x7f3c
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1188
	.byte	0xc
	.2byte	0x757
	.4byte	.LASF1189
	.byte	0x1
	.4byte	0x7f52
	.4byte	0x7f63
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF698
	.byte	0xc
	.2byte	0x758
	.4byte	.LASF1190
	.byte	0x1
	.4byte	0x7f79
	.4byte	0x7f8a
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1191
	.byte	0xc
	.2byte	0x759
	.4byte	.LASF1192
	.byte	0x1
	.4byte	0x7fa0
	.4byte	0x7fb1
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1193
	.byte	0xc
	.2byte	0x75a
	.4byte	.LASF1194
	.byte	0x1
	.4byte	0x7fc7
	.4byte	0x7fd8
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1180
	.byte	0xc
	.2byte	0x75c
	.4byte	.LASF1195
	.byte	0x1
	.4byte	0x7fee
	.4byte	0x7fff
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF698
	.byte	0xc
	.2byte	0x75d
	.4byte	.LASF1196
	.byte	0x1
	.4byte	0x8015
	.4byte	0x8026
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF515
	.byte	0xc
	.2byte	0x75f
	.4byte	.LASF1197
	.4byte	0xac
	.byte	0x1
	.4byte	0x8040
	.4byte	0x8047
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF844
	.byte	0xc
	.2byte	0x761
	.4byte	.LASF1198
	.4byte	0x50a6
	.byte	0x1
	.4byte	0x8061
	.4byte	0x806d
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF844
	.byte	0xc
	.2byte	0x762
	.4byte	.LASF1199
	.4byte	0x50ac
	.byte	0x1
	.4byte	0x8087
	.4byte	0x8093
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1200
	.byte	0xc
	.2byte	0x763
	.4byte	.LASF1201
	.4byte	0x5090
	.byte	0x1
	.4byte	0x80ad
	.4byte	0x80b9
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1200
	.byte	0xc
	.2byte	0x764
	.4byte	.LASF1202
	.4byte	0x49a9
	.byte	0x1
	.4byte	0x80d3
	.4byte	0x80df
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x765
	.4byte	.LASF1203
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x80f9
	.4byte	0x8100
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF517
	.byte	0xc
	.2byte	0x766
	.4byte	.LASF1204
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x811a
	.4byte	0x8121
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF520
	.byte	0xc
	.2byte	0x767
	.4byte	.LASF1205
	.4byte	0xe5
	.byte	0x1
	.4byte	0x813b
	.4byte	0x8147
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1206
	.byte	0xc
	.2byte	0x769
	.4byte	.LASF1207
	.byte	0x1
	.4byte	0x815d
	.4byte	0x8173
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1208
	.byte	0xc
	.2byte	0x76a
	.4byte	.LASF1209
	.byte	0x1
	.4byte	0x8189
	.4byte	0x819a
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1210
	.byte	0xc
	.2byte	0x76b
	.4byte	.LASF1211
	.byte	0x1
	.4byte	0x81b0
	.4byte	0x81c6
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1212
	.byte	0xc
	.2byte	0x76c
	.4byte	.LASF1213
	.byte	0x1
	.4byte	0x81dc
	.4byte	0x81ed
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1214
	.byte	0xc
	.2byte	0x76d
	.4byte	.LASF1215
	.byte	0x1
	.4byte	0x8203
	.4byte	0x8214
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1216
	.byte	0xc
	.2byte	0x76e
	.4byte	.LASF1217
	.byte	0x1
	.4byte	0x822a
	.4byte	0x8236
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1218
	.byte	0xc
	.2byte	0x76f
	.4byte	.LASF1219
	.byte	0x1
	.4byte	0x824c
	.4byte	0x8258
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1220
	.byte	0xc
	.2byte	0x771
	.4byte	.LASF1221
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8272
	.4byte	0x8279
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1222
	.byte	0xc
	.2byte	0x772
	.4byte	.LASF1223
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8293
	.4byte	0x82a9
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1224
	.byte	0xc
	.2byte	0x773
	.4byte	.LASF1225
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x82c3
	.4byte	0x82d9
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1226
	.byte	0xc
	.2byte	0x774
	.4byte	.LASF1227
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x82f3
	.4byte	0x8304
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1228
	.byte	0xc
	.2byte	0x775
	.4byte	.LASF1229
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x831e
	.4byte	0x8334
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1230
	.byte	0xc
	.2byte	0x776
	.4byte	.LASF1231
	.byte	0x1
	.4byte	0x834a
	.4byte	0x835b
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1232
	.byte	0xc
	.2byte	0x778
	.4byte	.LASF1233
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8375
	.4byte	0x8386
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d8b
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1234
	.byte	0xc
	.2byte	0x779
	.4byte	.LASF1235
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x83a0
	.4byte	0x83bb
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1236
	.byte	0xc
	.2byte	0x77a
	.4byte	.LASF1237
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x83d5
	.4byte	0x83f0
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1238
	.byte	0xc
	.2byte	0x77b
	.4byte	.LASF1239
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x840a
	.4byte	0x8420
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1240
	.byte	0xc
	.2byte	0x77c
	.4byte	.LASF1241
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x843a
	.4byte	0x845a
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1242
	.byte	0xc
	.2byte	0x77d
	.4byte	.LASF1243
	.byte	0x1
	.4byte	0x8470
	.4byte	0x8486
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d91
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1244
	.byte	0xc
	.2byte	0x77e
	.4byte	.LASF1245
	.byte	0x1
	.4byte	0x849c
	.4byte	0x84ad
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d91
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1246
	.byte	0xc
	.2byte	0x77f
	.4byte	.LASF1247
	.byte	0x1
	.4byte	0x84c3
	.4byte	0x84d4
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1248
	.byte	0xc
	.2byte	0x780
	.4byte	.LASF1249
	.byte	0x1
	.4byte	0x84ea
	.4byte	0x84fb
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d91
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1250
	.byte	0xc
	.2byte	0x782
	.4byte	.LASF1251
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8515
	.4byte	0x8526
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1252
	.byte	0xc
	.2byte	0x783
	.4byte	.LASF1253
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8540
	.4byte	0x855b
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1254
	.byte	0xc
	.2byte	0x784
	.4byte	.LASF1255
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8575
	.4byte	0x8590
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1256
	.byte	0xc
	.2byte	0x785
	.4byte	.LASF1257
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x85aa
	.4byte	0x85c0
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1258
	.byte	0xc
	.2byte	0x786
	.4byte	.LASF1259
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x85da
	.4byte	0x85f5
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1260
	.byte	0xc
	.2byte	0x787
	.4byte	.LASF1261
	.byte	0x1
	.4byte	0x860b
	.4byte	0x8626
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1260
	.byte	0xc
	.2byte	0x788
	.4byte	.LASF1262
	.byte	0x1
	.4byte	0x863c
	.4byte	0x8652
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1263
	.byte	0xc
	.2byte	0x789
	.4byte	.LASF1264
	.byte	0x1
	.4byte	0x8668
	.4byte	0x867e
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1265
	.byte	0xc
	.2byte	0x78a
	.4byte	.LASF1266
	.byte	0x1
	.4byte	0x8694
	.4byte	0x86af
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1267
	.byte	0xc
	.2byte	0x78b
	.4byte	.LASF1268
	.byte	0x1
	.4byte	0x86c5
	.4byte	0x86db
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1269
	.byte	0xc
	.2byte	0x78d
	.4byte	.LASF1270
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x86f5
	.4byte	0x8706
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1271
	.byte	0xc
	.2byte	0x78e
	.4byte	.LASF1272
	.byte	0x1
	.4byte	0x871c
	.4byte	0x8737
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1273
	.byte	0xc
	.2byte	0x78f
	.4byte	.LASF1274
	.byte	0x1
	.4byte	0x874d
	.4byte	0x8763
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1275
	.byte	0xc
	.2byte	0x790
	.4byte	.LASF1276
	.byte	0x1
	.4byte	0x8779
	.4byte	0x878f
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x8d74
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1277
	.byte	0xc
	.2byte	0x792
	.4byte	.LASF1278
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x87a9
	.4byte	0x87b0
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1279
	.byte	0xc
	.2byte	0x793
	.4byte	.LASF1280
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x87ca
	.4byte	0x87e0
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1281
	.byte	0xc
	.2byte	0x794
	.4byte	.LASF1282
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x87fa
	.4byte	0x880b
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1283
	.byte	0xc
	.2byte	0x795
	.4byte	.LASF1284
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8825
	.4byte	0x8831
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1285
	.byte	0xc
	.2byte	0x796
	.4byte	.LASF1286
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x884b
	.4byte	0x885c
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1287
	.byte	0xc
	.2byte	0x797
	.4byte	.LASF1288
	.byte	0x1
	.4byte	0x8872
	.4byte	0x8883
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1289
	.byte	0xc
	.2byte	0x798
	.4byte	.LASF1290
	.byte	0x1
	.4byte	0x8899
	.4byte	0x88a5
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1291
	.byte	0xc
	.2byte	0x799
	.4byte	.LASF1292
	.byte	0x1
	.4byte	0x88bb
	.4byte	0x88c7
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1293
	.byte	0xc
	.2byte	0x79b
	.4byte	.LASF1294
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x88e1
	.4byte	0x88e8
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1295
	.byte	0xc
	.2byte	0x79c
	.4byte	.LASF1296
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8902
	.4byte	0x8918
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1297
	.byte	0xc
	.2byte	0x79d
	.4byte	.LASF1298
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8932
	.4byte	0x8943
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1299
	.byte	0xc
	.2byte	0x79e
	.4byte	.LASF1300
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x895d
	.4byte	0x8969
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1301
	.byte	0xc
	.2byte	0x79f
	.4byte	.LASF1302
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8983
	.4byte	0x8994
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d7f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1303
	.byte	0xc
	.2byte	0x7a0
	.4byte	.LASF1304
	.byte	0x1
	.4byte	0x89aa
	.4byte	0x89bb
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1305
	.byte	0xc
	.2byte	0x7a1
	.4byte	.LASF1306
	.byte	0x1
	.4byte	0x89d1
	.4byte	0x89dd
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1307
	.byte	0xc
	.2byte	0x7a2
	.4byte	.LASF1308
	.byte	0x1
	.4byte	0x89f3
	.4byte	0x8a04
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1309
	.byte	0xc
	.2byte	0x7a3
	.4byte	.LASF1310
	.byte	0x1
	.4byte	0x8a1a
	.4byte	0x8a26
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1311
	.byte	0xc
	.2byte	0x7a5
	.4byte	.LASF1312
	.byte	0x1
	.4byte	0x8a3c
	.4byte	0x8a43
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1313
	.byte	0xc
	.2byte	0x7a6
	.4byte	.LASF1314
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8a5d
	.4byte	0x8a6e
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d7f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1315
	.byte	0xc
	.2byte	0x7a7
	.4byte	.LASF1316
	.byte	0x1
	.4byte	0x8a84
	.4byte	0x8a90
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1317
	.byte	0xc
	.2byte	0x7a9
	.4byte	.LASF1318
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8aaa
	.4byte	0x8ab6
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1319
	.byte	0xc
	.2byte	0x7aa
	.4byte	.LASF1320
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8ad0
	.4byte	0x8adc
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1321
	.byte	0xc
	.2byte	0x7ab
	.4byte	.LASF1322
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8af6
	.4byte	0x8b07
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1323
	.byte	0xc
	.2byte	0x7ac
	.4byte	.LASF1324
	.byte	0x1
	.4byte	0x8b1d
	.4byte	0x8b29
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1325
	.byte	0xc
	.2byte	0x7ad
	.4byte	.LASF1326
	.byte	0x1
	.4byte	0x8b3f
	.4byte	0x8b4b
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF1327
	.byte	0xc
	.2byte	0x7af
	.4byte	.LASF2355
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF850
	.byte	0xc
	.2byte	0x7bc
	.4byte	.LASF1328
	.byte	0x3
	.byte	0x1
	.4byte	0x8b70
	.4byte	0x8b81
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1330
	.byte	0xc
	.2byte	0x7bd
	.4byte	.LASF1332
	.4byte	0x109
	.byte	0x3
	.byte	0x1
	.4byte	0x8b9c
	.4byte	0x8ba3
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1333
	.byte	0xc
	.2byte	0x7be
	.4byte	.LASF1334
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0x8bbe
	.4byte	0x8bc5
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1335
	.byte	0xc
	.2byte	0x7bf
	.4byte	.LASF1336
	.byte	0x3
	.byte	0x1
	.4byte	0x8bdc
	.4byte	0x8bf7
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1337
	.byte	0xc
	.2byte	0x7c0
	.4byte	.LASF1338
	.4byte	0x109
	.byte	0x3
	.byte	0x1
	.4byte	0x8c12
	.4byte	0x8c23
	.uleb128 0x17
	.4byte	0x8d63
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1339
	.byte	0xc
	.2byte	0x7c1
	.4byte	.LASF1340
	.byte	0x3
	.byte	0x1
	.4byte	0x8c3a
	.4byte	0x8c50
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1341
	.byte	0xc
	.2byte	0x7c2
	.4byte	.LASF1342
	.byte	0x3
	.byte	0x1
	.4byte	0x8c67
	.4byte	0x8c7d
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1343
	.byte	0xc
	.2byte	0x7c3
	.4byte	.LASF1344
	.byte	0x3
	.byte	0x1
	.4byte	0x8c94
	.4byte	0x8ca5
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"QL"
	.byte	0xc
	.2byte	0x7c4
	.4byte	.LASF8049
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0x8cbf
	.4byte	0x8cd0
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1345
	.byte	0xc
	.2byte	0x7c5
	.4byte	.LASF1346
	.byte	0x3
	.byte	0x1
	.4byte	0x8ce7
	.4byte	0x8cf3
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF1347
	.byte	0xc
	.2byte	0x7c6
	.4byte	.LASF1348
	.byte	0x3
	.byte	0x1
	.4byte	0x8d0a
	.4byte	0x8d2f
	.uleb128 0x17
	.4byte	0x8d5d
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
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.4byte	.LASF1349
	.byte	0xc
	.2byte	0x7c7
	.4byte	.LASF1350
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0x8d46
	.uleb128 0x17
	.4byte	0x8d5d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d6e
	.uleb128 0x19
	.4byte	0x8d85
	.uleb128 0x19
	.4byte	0x8d85
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x738a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d69
	.uleb128 0xc
	.4byte	0x738a
	.uleb128 0x24
	.byte	0x4
	.4byte	0x738a
	.uleb128 0x24
	.byte	0x4
	.4byte	0x8d7a
	.uleb128 0xc
	.4byte	0x738a
	.uleb128 0x24
	.byte	0x4
	.4byte	0x5090
	.uleb128 0x24
	.byte	0x4
	.4byte	0x49a9
	.uleb128 0xb
	.byte	0x4
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x21e8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2ee4
	.uleb128 0x24
	.byte	0x4
	.4byte	0x2ee4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8da9
	.uleb128 0xc
	.4byte	0x2ee4
	.uleb128 0x24
	.byte	0x4
	.4byte	0x8db4
	.uleb128 0xc
	.4byte	0x2ee4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x567e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8dc5
	.uleb128 0xc
	.4byte	0x567e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x567e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x8dd6
	.uleb128 0xc
	.4byte	0x567e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5b94
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8de7
	.uleb128 0xc
	.4byte	0x5b94
	.uleb128 0x24
	.byte	0x4
	.4byte	0x8df2
	.uleb128 0xc
	.4byte	0x5b94
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e49
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8e03
	.uleb128 0xc
	.4byte	0x5e49
	.uleb128 0x24
	.byte	0x4
	.4byte	0x5e49
	.uleb128 0x2d
	.4byte	.LASF1351
	.byte	0x10
	.byte	0x24
	.byte	0x47
	.4byte	0x94ac
	.uleb128 0x4b
	.string	"a"
	.byte	0x24
	.byte	0x80
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x4b
	.string	"b"
	.byte	0x24
	.byte	0x81
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x4b
	.string	"c"
	.byte	0x24
	.byte	0x82
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x4b
	.string	"d"
	.byte	0x24
	.byte	0x83
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1351
	.byte	0x24
	.byte	0x49
	.byte	0x1
	.4byte	0x8e5f
	.4byte	0x8e66
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1351
	.byte	0x24
	.byte	0x4a
	.byte	0x1
	.4byte	0x8e77
	.4byte	0x8e92
	.uleb128 0x17
	.4byte	0x94ac
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
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1351
	.byte	0x24
	.byte	0x4b
	.byte	0x1
	.4byte	0x8ea3
	.4byte	0x8eb4
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x24
	.byte	0x4d
	.4byte	.LASF1352
	.4byte	0x109
	.byte	0x1
	.4byte	0x8ecd
	.4byte	0x8ed9
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x24
	.byte	0x4e
	.4byte	.LASF1353
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x8ef2
	.4byte	0x8efe
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x24
	.byte	0x4f
	.4byte	.LASF1354
	.4byte	0x8e0e
	.byte	0x1
	.4byte	0x8f17
	.4byte	0x8f1e
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0x24
	.byte	0x50
	.4byte	.LASF1355
	.4byte	0x94bd
	.byte	0x1
	.4byte	0x8f37
	.4byte	0x8f43
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x24
	.byte	0x51
	.4byte	.LASF1356
	.4byte	0x8e0e
	.byte	0x1
	.4byte	0x8f5c
	.4byte	0x8f68
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x24
	.byte	0x52
	.4byte	.LASF1357
	.4byte	0x8e0e
	.byte	0x1
	.4byte	0x8f81
	.4byte	0x8f8d
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0x24
	.byte	0x53
	.4byte	.LASF1358
	.4byte	0x94bd
	.byte	0x1
	.4byte	0x8fa6
	.4byte	0x8fb2
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x24
	.byte	0x55
	.4byte	.LASF1359
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8fcb
	.4byte	0x8fd7
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x24
	.byte	0x56
	.4byte	.LASF1360
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x8ff0
	.4byte	0x9001
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x24
	.byte	0x57
	.4byte	.LASF1361
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x901a
	.4byte	0x9030
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x24
	.byte	0x58
	.4byte	.LASF1362
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9049
	.4byte	0x9055
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x24
	.byte	0x59
	.4byte	.LASF1363
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x906e
	.4byte	0x907a
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF466
	.byte	0x24
	.byte	0x5b
	.4byte	.LASF1364
	.byte	0x1
	.4byte	0x908f
	.4byte	0x9096
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1365
	.byte	0x24
	.byte	0x5c
	.4byte	.LASF1366
	.byte	0x1
	.4byte	0x90ab
	.4byte	0x90b7
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1367
	.byte	0x24
	.byte	0x5d
	.4byte	.LASF1368
	.4byte	0x428c
	.byte	0x1
	.4byte	0x90d0
	.4byte	0x90d7
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1367
	.byte	0x24
	.byte	0x5e
	.4byte	.LASF1369
	.4byte	0x4292
	.byte	0x1
	.4byte	0x90f0
	.4byte	0x90f7
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF503
	.byte	0x24
	.byte	0x5f
	.4byte	.LASF1370
	.4byte	0x109
	.byte	0x1
	.4byte	0x9110
	.4byte	0x911c
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF543
	.byte	0x24
	.byte	0x60
	.4byte	.LASF1371
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9135
	.4byte	0x913c
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF675
	.byte	0x24
	.byte	0x61
	.4byte	.LASF1372
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9155
	.4byte	0x9161
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1373
	.byte	0x24
	.byte	0x62
	.4byte	.LASF1374
	.4byte	0x109
	.byte	0x1
	.4byte	0x917a
	.4byte	0x9181
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1375
	.byte	0x24
	.byte	0x63
	.4byte	.LASF1376
	.byte	0x1
	.4byte	0x9196
	.4byte	0x91a2
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1377
	.byte	0x24
	.byte	0x64
	.4byte	.LASF1378
	.4byte	0xac
	.byte	0x1
	.4byte	0x91bb
	.4byte	0x91c2
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1379
	.byte	0x24
	.byte	0x66
	.4byte	.LASF1380
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x91db
	.4byte	0x91f6
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1381
	.byte	0x24
	.byte	0x67
	.4byte	.LASF1382
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x920f
	.4byte	0x922a
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1383
	.byte	0x24
	.byte	0x68
	.4byte	.LASF1384
	.byte	0x1
	.4byte	0x923f
	.4byte	0x924b
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1385
	.byte	0x24
	.byte	0x69
	.4byte	.LASF1386
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9264
	.4byte	0x9275
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x24
	.byte	0x6a
	.4byte	.LASF1388
	.4byte	0x8e0e
	.byte	0x1
	.4byte	0x928e
	.4byte	0x929a
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x24
	.byte	0x6b
	.4byte	.LASF1390
	.4byte	0x94bd
	.byte	0x1
	.4byte	0x92b3
	.4byte	0x92bf
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x24
	.byte	0x6c
	.4byte	.LASF1392
	.4byte	0x8e0e
	.byte	0x1
	.4byte	0x92d8
	.4byte	0x92e9
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x24
	.byte	0x6d
	.4byte	.LASF1394
	.4byte	0x94bd
	.byte	0x1
	.4byte	0x9302
	.4byte	0x9313
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1395
	.byte	0x24
	.byte	0x6f
	.4byte	.LASF1396
	.4byte	0x109
	.byte	0x1
	.4byte	0x932c
	.4byte	0x9338
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1397
	.byte	0x24
	.byte	0x70
	.4byte	.LASF1398
	.4byte	0xac
	.byte	0x1
	.4byte	0x9351
	.4byte	0x9362
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x24
	.byte	0x72
	.4byte	.LASF1400
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x937b
	.4byte	0x938c
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x24
	.byte	0x74
	.4byte	.LASF1402
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x93a5
	.4byte	0x93bb
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1403
	.byte	0x24
	.byte	0x75
	.4byte	.LASF1404
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x93d4
	.4byte	0x93ea
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94c3
	.uleb128 0x19
	.4byte	0x4292
	.uleb128 0x19
	.4byte	0x4292
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF515
	.byte	0x24
	.byte	0x77
	.4byte	.LASF1405
	.4byte	0xac
	.byte	0x1
	.4byte	0x9403
	.4byte	0x940a
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1406
	.byte	0x24
	.byte	0x79
	.4byte	.LASF1407
	.4byte	0x685f
	.byte	0x1
	.4byte	0x9423
	.4byte	0x942a
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1406
	.byte	0x24
	.byte	0x7a
	.4byte	.LASF1408
	.4byte	0x688c
	.byte	0x1
	.4byte	0x9443
	.4byte	0x944a
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0x24
	.byte	0x7b
	.4byte	.LASF1409
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x9463
	.4byte	0x946a
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0x24
	.byte	0x7c
	.4byte	.LASF1410
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x9483
	.4byte	0x948a
	.uleb128 0x17
	.4byte	0x94ac
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF520
	.byte	0x24
	.byte	0x7d
	.4byte	.LASF1411
	.4byte	0xe5
	.byte	0x1
	.4byte	0x949f
	.uleb128 0x17
	.4byte	0x94b2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8e0e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94b8
	.uleb128 0xc
	.4byte	0x8e0e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x8e0e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x94c9
	.uleb128 0xc
	.4byte	0x8e0e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x94b8
	.uleb128 0x2d
	.4byte	.LASF1412
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0x9a75
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0x21fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0x9a75
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0x9a89
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0x9543
	.4byte	0x954f
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0x9560
	.4byte	0x956c
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a94
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0x957d
	.4byte	0x958a
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF1419
	.byte	0x1
	.4byte	0x959f
	.4byte	0x95a6
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF1447
	.4byte	0xac
	.byte	0x1
	.4byte	0x95c0
	.4byte	0x95c7
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF1421
	.4byte	0xac
	.byte	0x1
	.4byte	0x95e1
	.4byte	0x95e8
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF1423
	.byte	0x1
	.4byte	0x95fe
	.4byte	0x960a
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF1425
	.4byte	0xac
	.byte	0x1
	.4byte	0x9624
	.4byte	0x962b
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF1427
	.4byte	0x29
	.byte	0x1
	.4byte	0x9644
	.4byte	0x964b
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF1429
	.4byte	0x29
	.byte	0x1
	.4byte	0x9664
	.4byte	0x966b
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF1431
	.4byte	0x29
	.byte	0x1
	.4byte	0x9685
	.4byte	0x968c
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF1432
	.4byte	0x9aa5
	.byte	0x1
	.4byte	0x96a6
	.4byte	0x96b2
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a94
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF1433
	.4byte	0x9aab
	.byte	0x1
	.4byte	0x96cc
	.4byte	0x96d8
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF1434
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x96f2
	.4byte	0x96fe
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF1436
	.byte	0x1
	.4byte	0x9714
	.4byte	0x971b
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF1438
	.byte	0x1
	.4byte	0x9731
	.4byte	0x973d
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF1439
	.byte	0x1
	.4byte	0x9753
	.4byte	0x9764
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF1441
	.byte	0x1
	.4byte	0x977a
	.4byte	0x978b
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF1443
	.byte	0x1
	.4byte	0x97a1
	.4byte	0x97ad
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF1444
	.byte	0x1
	.4byte	0x97c3
	.4byte	0x97d4
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x9aab
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF1446
	.byte	0x1
	.4byte	0x97ea
	.4byte	0x97fb
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x9ab1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF1448
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x9815
	.4byte	0x981c
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF1449
	.4byte	0x20d8
	.byte	0x1
	.4byte	0x9836
	.4byte	0x983d
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF1451
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x9857
	.4byte	0x985e
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF1453
	.4byte	0xac
	.byte	0x1
	.4byte	0x9878
	.4byte	0x9884
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9aab
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF1454
	.4byte	0xac
	.byte	0x1
	.4byte	0x989e
	.4byte	0x98aa
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9a94
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF1456
	.4byte	0xac
	.byte	0x1
	.4byte	0x98c4
	.4byte	0x98d0
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9aab
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF1458
	.4byte	0xac
	.byte	0x1
	.4byte	0x98ea
	.4byte	0x98fb
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9aab
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF1460
	.4byte	0xac
	.byte	0x1
	.4byte	0x9915
	.4byte	0x9921
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9aab
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF1461
	.4byte	0x21fe
	.byte	0x1
	.4byte	0x993b
	.4byte	0x9947
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9aab
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF1463
	.4byte	0xac
	.byte	0x1
	.4byte	0x9961
	.4byte	0x9968
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF1465
	.4byte	0xac
	.byte	0x1
	.4byte	0x9982
	.4byte	0x998e
	.uleb128 0x17
	.4byte	0x9a9f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x20d8
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF1467
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x99a8
	.4byte	0x99b4
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF1469
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x99ce
	.4byte	0x99da
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9aab
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF1471
	.byte	0x1
	.4byte	0x99f0
	.4byte	0x99fc
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9ab7
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF1473
	.byte	0x1
	.4byte	0x9a12
	.4byte	0x9a28
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x9ab7
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF1475
	.byte	0x1
	.4byte	0x9a3e
	.4byte	0x9a4a
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9aa5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF1477
	.byte	0x1
	.4byte	0x9a5f
	.4byte	0x9a6b
	.uleb128 0x17
	.4byte	0x9a8e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0x109
	.byte	0
	.uleb128 0x53
	.4byte	0xac
	.4byte	0x9a89
	.uleb128 0x19
	.4byte	0x20d8
	.uleb128 0x19
	.4byte	0x20d8
	.byte	0
	.uleb128 0x54
	.4byte	0x109
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94d4
	.uleb128 0x24
	.byte	0x4
	.4byte	0x9a9a
	.uleb128 0xc
	.4byte	0x94d4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9a9a
	.uleb128 0x24
	.byte	0x4
	.4byte	0x94d4
	.uleb128 0x24
	.byte	0x4
	.4byte	0x20b6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9527
	.uleb128 0xb
	.byte	0x4
	.4byte	0x951c
	.uleb128 0x2
	.4byte	.LASF1478
	.byte	0x25
	.byte	0x2f
	.4byte	0x9ac8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9ace
	.uleb128 0x55
	.4byte	0x9ae8
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x9ae8
	.uleb128 0x19
	.4byte	0x20d8
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9aee
	.uleb128 0x56
	.uleb128 0x2d
	.4byte	.LASF1479
	.byte	0x10
	.byte	0x26
	.byte	0x28
	.4byte	0xa088
	.uleb128 0x28
	.4byte	.LASF940
	.byte	0x26
	.byte	0x5f
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF633
	.byte	0x26
	.byte	0x60
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1479
	.byte	0x26
	.byte	0x2a
	.byte	0x1
	.4byte	0x9b2a
	.4byte	0x9b31
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1479
	.byte	0x26
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0x9b43
	.4byte	0x9b4f
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1479
	.byte	0x26
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0x9b61
	.4byte	0x9b72
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x26
	.byte	0x2e
	.4byte	.LASF1480
	.4byte	0x109
	.byte	0x1
	.4byte	0x9b8b
	.4byte	0x9b97
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x26
	.byte	0x2f
	.4byte	.LASF1481
	.4byte	0x20cc
	.byte	0x1
	.4byte	0x9bb0
	.4byte	0x9bbc
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x26
	.byte	0x30
	.4byte	.LASF1482
	.4byte	0x9aef
	.byte	0x1
	.4byte	0x9bd5
	.4byte	0x9be1
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x26
	.byte	0x31
	.4byte	.LASF1483
	.4byte	0xa099
	.byte	0x1
	.4byte	0x9bfa
	.4byte	0x9c06
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x26
	.byte	0x32
	.4byte	.LASF1484
	.4byte	0x9aef
	.byte	0x1
	.4byte	0x9c1f
	.4byte	0x9c2b
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x26
	.byte	0x33
	.4byte	.LASF1485
	.4byte	0xa099
	.byte	0x1
	.4byte	0x9c44
	.4byte	0x9c50
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x26
	.byte	0x35
	.4byte	.LASF1486
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9c69
	.4byte	0x9c75
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x26
	.byte	0x36
	.4byte	.LASF1487
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9c8e
	.4byte	0x9c9f
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x26
	.byte	0x37
	.4byte	.LASF1488
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9cb8
	.4byte	0x9cc4
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x26
	.byte	0x38
	.4byte	.LASF1489
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9cdd
	.4byte	0x9ce9
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x26
	.byte	0x3a
	.4byte	.LASF1490
	.byte	0x1
	.4byte	0x9cfe
	.4byte	0x9d05
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF466
	.byte	0x26
	.byte	0x3b
	.4byte	.LASF1491
	.byte	0x1
	.4byte	0x9d1a
	.4byte	0x9d21
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF945
	.byte	0x26
	.byte	0x3c
	.4byte	.LASF1492
	.byte	0x1
	.4byte	0x9d36
	.4byte	0x9d42
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1493
	.byte	0x26
	.byte	0x3d
	.4byte	.LASF1494
	.byte	0x1
	.4byte	0x9d57
	.4byte	0x9d63
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF956
	.byte	0x26
	.byte	0x3f
	.4byte	.LASF1495
	.4byte	0x428c
	.byte	0x1
	.4byte	0x9d7c
	.4byte	0x9d83
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1496
	.byte	0x26
	.byte	0x40
	.4byte	.LASF1497
	.4byte	0x109
	.byte	0x1
	.4byte	0x9d9c
	.4byte	0x9da3
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x26
	.byte	0x41
	.4byte	.LASF1499
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9dbc
	.4byte	0x9dc3
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x26
	.byte	0x43
	.4byte	.LASF1501
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9ddc
	.4byte	0x9de8
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1502
	.byte	0x26
	.byte	0x44
	.4byte	.LASF1503
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9e01
	.4byte	0x9e0d
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x26
	.byte	0x45
	.4byte	.LASF1505
	.4byte	0x9aef
	.byte	0x1
	.4byte	0x9e26
	.4byte	0x9e32
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1506
	.byte	0x26
	.byte	0x46
	.4byte	.LASF1507
	.4byte	0xa099
	.byte	0x1
	.4byte	0x9e4b
	.4byte	0x9e57
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x26
	.byte	0x47
	.4byte	.LASF1508
	.4byte	0x9aef
	.byte	0x1
	.4byte	0x9e70
	.4byte	0x9e7c
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x26
	.byte	0x48
	.4byte	.LASF1509
	.4byte	0xa099
	.byte	0x1
	.4byte	0x9e95
	.4byte	0x9ea1
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x26
	.byte	0x4a
	.4byte	.LASF1511
	.4byte	0x109
	.byte	0x1
	.4byte	0x9eba
	.4byte	0x9ec6
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x26
	.byte	0x4b
	.4byte	.LASF1513
	.4byte	0xac
	.byte	0x1
	.4byte	0x9edf
	.4byte	0x9ef0
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x26
	.byte	0x4d
	.4byte	.LASF1515
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9f09
	.4byte	0x9f15
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1516
	.byte	0x26
	.byte	0x4e
	.4byte	.LASF1517
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9f2e
	.4byte	0x9f3a
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x26
	.byte	0x4f
	.4byte	.LASF1518
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9f53
	.4byte	0x9f64
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x26
	.byte	0x51
	.4byte	.LASF1519
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x9f7d
	.4byte	0x9f98
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1379
	.byte	0x26
	.byte	0x54
	.4byte	.LASF1520
	.byte	0x1
	.4byte	0x9fad
	.4byte	0x9fbe
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1521
	.byte	0x26
	.byte	0x56
	.4byte	.LASF1522
	.byte	0x1
	.4byte	0x9fd3
	.4byte	0x9fe4
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1523
	.byte	0x26
	.byte	0x57
	.4byte	.LASF1524
	.byte	0x1
	.4byte	0x9ff9
	.4byte	0xa00f
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1525
	.byte	0x26
	.byte	0x59
	.4byte	.LASF1526
	.byte	0x1
	.4byte	0xa024
	.4byte	0xa035
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xa0aa
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1527
	.byte	0x26
	.byte	0x5a
	.4byte	.LASF1528
	.byte	0x1
	.4byte	0xa04a
	.4byte	0xa060
	.uleb128 0x17
	.4byte	0xa088
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa09f
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xa0aa
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x26
	.byte	0x5c
	.4byte	.LASF1530
	.byte	0x1
	.4byte	0xa071
	.uleb128 0x17
	.4byte	0xa08e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9aef
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa094
	.uleb128 0xc
	.4byte	0x9aef
	.uleb128 0x24
	.byte	0x4
	.4byte	0x9aef
	.uleb128 0x24
	.byte	0x4
	.4byte	0xa0a5
	.uleb128 0xc
	.4byte	0x9aef
	.uleb128 0x24
	.byte	0x4
	.4byte	0x8e03
	.uleb128 0x2d
	.4byte	.LASF1531
	.byte	0x18
	.byte	0xd
	.byte	0x28
	.4byte	0xa829
	.uleb128 0x4b
	.string	"b"
	.byte	0xd
	.byte	0x6d
	.4byte	0xa829
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1531
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.4byte	0xa0da
	.4byte	0xa0e1
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1531
	.byte	0xd
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0xa0f3
	.4byte	0xa104
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1531
	.byte	0xd
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0xa116
	.4byte	0xa122
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0xd
	.byte	0x2e
	.4byte	.LASF1532
	.4byte	0x428c
	.byte	0x1
	.4byte	0xa13b
	.4byte	0xa147
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0xd
	.byte	0x2f
	.4byte	.LASF1533
	.4byte	0x4292
	.byte	0x1
	.4byte	0xa160
	.4byte	0xa16c
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0xd
	.byte	0x30
	.4byte	.LASF1534
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa185
	.4byte	0xa191
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0xd
	.byte	0x31
	.4byte	.LASF1535
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa1aa
	.4byte	0xa1b6
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0xd
	.byte	0x32
	.4byte	.LASF1536
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa1cf
	.4byte	0xa1db
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0xd
	.byte	0x33
	.4byte	.LASF1537
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa1f4
	.4byte	0xa200
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0xd
	.byte	0x34
	.4byte	.LASF1538
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa219
	.4byte	0xa225
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0xd
	.byte	0x35
	.4byte	.LASF1539
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa23e
	.4byte	0xa24a
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0xd
	.byte	0x36
	.4byte	.LASF1540
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa263
	.4byte	0xa26f
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0xd
	.byte	0x37
	.4byte	.LASF1541
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa288
	.4byte	0xa294
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0xd
	.byte	0x39
	.4byte	.LASF1542
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa2ad
	.4byte	0xa2b9
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF1543
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa2d2
	.4byte	0xa2e3
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0xd
	.byte	0x3b
	.4byte	.LASF1544
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa2fc
	.4byte	0xa308
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0xd
	.byte	0x3c
	.4byte	.LASF1545
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa321
	.4byte	0xa32d
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0xd
	.byte	0x3e
	.4byte	.LASF1546
	.byte	0x1
	.4byte	0xa342
	.4byte	0xa349
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF466
	.byte	0xd
	.byte	0x3f
	.4byte	.LASF1547
	.byte	0x1
	.4byte	0xa35e
	.4byte	0xa365
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1548
	.byte	0xd
	.byte	0x41
	.4byte	.LASF1549
	.4byte	0x270c
	.byte	0x1
	.4byte	0xa37e
	.4byte	0xa385
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1496
	.byte	0xd
	.byte	0x42
	.4byte	.LASF1550
	.4byte	0x109
	.byte	0x1
	.4byte	0xa39e
	.4byte	0xa3a5
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1496
	.byte	0xd
	.byte	0x43
	.4byte	.LASF1551
	.4byte	0x109
	.byte	0x1
	.4byte	0xa3be
	.4byte	0xa3ca
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1552
	.byte	0xd
	.byte	0x44
	.4byte	.LASF1553
	.4byte	0x109
	.byte	0x1
	.4byte	0xa3e3
	.4byte	0xa3ea
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1498
	.byte	0xd
	.byte	0x45
	.4byte	.LASF1554
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa403
	.4byte	0xa40a
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1500
	.byte	0xd
	.byte	0x47
	.4byte	.LASF1555
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa423
	.4byte	0xa42f
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1556
	.byte	0xd
	.byte	0x48
	.4byte	.LASF1557
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa448
	.4byte	0xa454
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1558
	.byte	0xd
	.byte	0x49
	.4byte	.LASF1559
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa46d
	.4byte	0xa479
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1560
	.byte	0xd
	.byte	0x4a
	.4byte	.LASF1561
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa492
	.4byte	0xa49e
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1504
	.byte	0xd
	.byte	0x4b
	.4byte	.LASF1562
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa4b7
	.4byte	0xa4c3
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1506
	.byte	0xd
	.byte	0x4c
	.4byte	.LASF1563
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa4dc
	.4byte	0xa4e8
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1387
	.byte	0xd
	.byte	0x4d
	.4byte	.LASF1564
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa501
	.4byte	0xa50d
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1389
	.byte	0xd
	.byte	0x4e
	.4byte	.LASF1565
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa526
	.4byte	0xa532
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1391
	.byte	0xd
	.byte	0x4f
	.4byte	.LASF1566
	.4byte	0xa0b0
	.byte	0x1
	.4byte	0xa54b
	.4byte	0xa557
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1393
	.byte	0xd
	.byte	0x50
	.4byte	.LASF1567
	.4byte	0xa84a
	.byte	0x1
	.4byte	0xa570
	.4byte	0xa57c
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1510
	.byte	0xd
	.byte	0x52
	.4byte	.LASF1568
	.4byte	0x109
	.byte	0x1
	.4byte	0xa595
	.4byte	0xa5a1
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1512
	.byte	0xd
	.byte	0x53
	.4byte	.LASF1569
	.4byte	0xac
	.byte	0x1
	.4byte	0xa5ba
	.4byte	0xa5cb
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1514
	.byte	0xd
	.byte	0x55
	.4byte	.LASF1570
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa5e4
	.4byte	0xa5f0
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1571
	.byte	0xd
	.byte	0x56
	.4byte	.LASF1572
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa609
	.4byte	0xa615
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1399
	.byte	0xd
	.byte	0x57
	.4byte	.LASF1573
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa62e
	.4byte	0xa63f
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1401
	.byte	0xd
	.byte	0x59
	.4byte	.LASF1574
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xa658
	.4byte	0xa66e
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1575
	.byte	0xd
	.byte	0x5c
	.4byte	.LASF1576
	.byte	0x1
	.4byte	0xa683
	.4byte	0xa699
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1379
	.byte	0xd
	.byte	0x5e
	.4byte	.LASF1577
	.byte	0x1
	.4byte	0xa6ae
	.4byte	0xa6bf
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1521
	.byte	0xd
	.byte	0x60
	.4byte	.LASF1578
	.byte	0x1
	.4byte	0xa6d4
	.4byte	0xa6e5
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1579
	.byte	0xd
	.byte	0x61
	.4byte	.LASF1580
	.byte	0x1
	.4byte	0xa6fa
	.4byte	0xa715
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1525
	.byte	0xd
	.byte	0x63
	.4byte	.LASF1581
	.byte	0x1
	.4byte	0xa72a
	.4byte	0xa73b
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xa0aa
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1582
	.byte	0xd
	.byte	0x64
	.4byte	.LASF1583
	.byte	0x1
	.4byte	0xa750
	.4byte	0xa76b
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xa850
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0xa0aa
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1584
	.byte	0xd
	.byte	0x66
	.4byte	.LASF1585
	.byte	0x1
	.4byte	0xa780
	.4byte	0xa78c
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1586
	.byte	0xd
	.byte	0x67
	.4byte	.LASF1587
	.4byte	0x9aef
	.byte	0x1
	.4byte	0xa7a5
	.4byte	0xa7ac
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1529
	.byte	0xd
	.byte	0x69
	.4byte	.LASF1588
	.byte	0x1
	.4byte	0xa7c1
	.4byte	0xa7d7
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1529
	.byte	0xd
	.byte	0x6a
	.4byte	.LASF1589
	.byte	0x1
	.4byte	0xa7ec
	.4byte	0xa80c
	.uleb128 0x17
	.4byte	0xa83f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.4byte	.LASF285
	.4byte	0xafb9
	.byte	0x1
	.byte	0x1
	.4byte	0xa81c
	.uleb128 0x17
	.4byte	0xa839
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x270c
	.4byte	0xa839
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa0b0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa845
	.uleb128 0xc
	.4byte	0xa0b0
	.uleb128 0x24
	.byte	0x4
	.4byte	0xa0b0
	.uleb128 0x24
	.byte	0x4
	.4byte	0xa856
	.uleb128 0xc
	.4byte	0xa0b0
	.uleb128 0x2d
	.4byte	.LASF1590
	.byte	0x3c
	.byte	0x27
	.byte	0x28
	.4byte	0xaf91
	.uleb128 0x28
	.4byte	.LASF1591
	.byte	0x27
	.byte	0x6e
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1592
	.byte	0x27
	.byte	0x6f
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF942
	.byte	0x27
	.byte	0x70
	.4byte	0x353e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1590
	.byte	0x27
	.byte	0x2a
	.byte	0x1
	.4byte	0xa8a5
	.4byte	0xa8ac
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1590
	.byte	0x27
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.4byte	0xa8be
	.4byte	0xa8d4
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1590
	.byte	0x27
	.byte	0x2c
	.byte	0x1
	.byte	0x1
	.4byte	0xa8e6
	.4byte	0xa8f2
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1590
	.byte	0x27
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.4byte	0xa904
	.4byte	0xa910
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1590
	.byte	0x27
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.4byte	0xa922
	.4byte	0xa938
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x27
	.byte	0x30
	.4byte	.LASF1593
	.4byte	0xa85b
	.byte	0x1
	.4byte	0xa951
	.4byte	0xa95d
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x27
	.byte	0x31
	.4byte	.LASF1594
	.4byte	0xafa8
	.byte	0x1
	.4byte	0xa976
	.4byte	0xa982
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x27
	.byte	0x32
	.4byte	.LASF1595
	.4byte	0xa85b
	.byte	0x1
	.4byte	0xa99b
	.4byte	0xa9a7
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0x27
	.byte	0x33
	.4byte	.LASF1596
	.4byte	0xafa8
	.byte	0x1
	.4byte	0xa9c0
	.4byte	0xa9cc
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x27
	.byte	0x34
	.4byte	.LASF1597
	.4byte	0xa85b
	.byte	0x1
	.4byte	0xa9e5
	.4byte	0xa9f1
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x27
	.byte	0x35
	.4byte	.LASF1598
	.4byte	0xafa8
	.byte	0x1
	.4byte	0xaa0a
	.4byte	0xaa16
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x27
	.byte	0x36
	.4byte	.LASF1599
	.4byte	0xa85b
	.byte	0x1
	.4byte	0xaa2f
	.4byte	0xaa3b
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0x27
	.byte	0x37
	.4byte	.LASF1600
	.4byte	0xafa8
	.byte	0x1
	.4byte	0xaa54
	.4byte	0xaa60
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x27
	.byte	0x39
	.4byte	.LASF1601
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xaa79
	.4byte	0xaa85
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x27
	.byte	0x3a
	.4byte	.LASF1602
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xaa9e
	.4byte	0xaaaf
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x27
	.byte	0x3b
	.4byte	.LASF1603
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xaac8
	.4byte	0xaad4
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x27
	.byte	0x3c
	.4byte	.LASF1604
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xaaed
	.4byte	0xaaf9
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x27
	.byte	0x3e
	.4byte	.LASF1605
	.byte	0x1
	.4byte	0xab0e
	.4byte	0xab15
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF466
	.byte	0x27
	.byte	0x3f
	.4byte	.LASF1606
	.byte	0x1
	.4byte	0xab2a
	.4byte	0xab31
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1548
	.byte	0x27
	.byte	0x41
	.4byte	.LASF1607
	.4byte	0x428c
	.byte	0x1
	.4byte	0xab4a
	.4byte	0xab51
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1608
	.byte	0x27
	.byte	0x42
	.4byte	.LASF1609
	.4byte	0x428c
	.byte	0x1
	.4byte	0xab6a
	.4byte	0xab71
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1610
	.byte	0x27
	.byte	0x43
	.4byte	.LASF1611
	.4byte	0x6865
	.byte	0x1
	.4byte	0xab8a
	.4byte	0xab91
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1552
	.byte	0x27
	.byte	0x44
	.4byte	.LASF1612
	.4byte	0x109
	.byte	0x1
	.4byte	0xabaa
	.4byte	0xabb1
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1498
	.byte	0x27
	.byte	0x45
	.4byte	.LASF1613
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xabca
	.4byte	0xabd1
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x27
	.byte	0x47
	.4byte	.LASF1614
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xabea
	.4byte	0xabf6
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1615
	.byte	0x27
	.byte	0x48
	.4byte	.LASF1616
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xac0f
	.4byte	0xac1b
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x27
	.byte	0x49
	.4byte	.LASF1617
	.4byte	0xa85b
	.byte	0x1
	.4byte	0xac34
	.4byte	0xac40
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1506
	.byte	0x27
	.byte	0x4a
	.4byte	.LASF1618
	.4byte	0xafa8
	.byte	0x1
	.4byte	0xac59
	.4byte	0xac65
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x27
	.byte	0x4b
	.4byte	.LASF1619
	.4byte	0xa85b
	.byte	0x1
	.4byte	0xac7e
	.4byte	0xac8a
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x27
	.byte	0x4c
	.4byte	.LASF1620
	.4byte	0xafa8
	.byte	0x1
	.4byte	0xaca3
	.4byte	0xacaf
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x27
	.byte	0x4d
	.4byte	.LASF1621
	.4byte	0xa85b
	.byte	0x1
	.4byte	0xacc8
	.4byte	0xacd4
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x27
	.byte	0x4e
	.4byte	.LASF1622
	.4byte	0xafa8
	.byte	0x1
	.4byte	0xaced
	.4byte	0xacf9
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x27
	.byte	0x50
	.4byte	.LASF1623
	.4byte	0x109
	.byte	0x1
	.4byte	0xad12
	.4byte	0xad1e
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x27
	.byte	0x51
	.4byte	.LASF1624
	.4byte	0xac
	.byte	0x1
	.4byte	0xad37
	.4byte	0xad48
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x27
	.byte	0x53
	.4byte	.LASF1625
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xad61
	.4byte	0xad6d
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1626
	.byte	0x27
	.byte	0x54
	.4byte	.LASF1627
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xad86
	.4byte	0xad92
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x27
	.byte	0x55
	.4byte	.LASF1628
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xadab
	.4byte	0xadbc
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x27
	.byte	0x57
	.4byte	.LASF1629
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xadd5
	.4byte	0xadf0
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1379
	.byte	0x27
	.byte	0x5a
	.4byte	.LASF1630
	.byte	0x1
	.4byte	0xae05
	.4byte	0xae16
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1521
	.byte	0x27
	.byte	0x5c
	.4byte	.LASF1631
	.byte	0x1
	.4byte	0xae2b
	.4byte	0xae3c
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1632
	.byte	0x27
	.byte	0x5d
	.4byte	.LASF1633
	.byte	0x1
	.4byte	0xae51
	.4byte	0xae62
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1525
	.byte	0x27
	.byte	0x5f
	.4byte	.LASF1634
	.byte	0x1
	.4byte	0xae77
	.4byte	0xae88
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xa0aa
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1635
	.byte	0x27
	.byte	0x60
	.4byte	.LASF1636
	.byte	0x1
	.4byte	0xae9d
	.4byte	0xaeae
	.uleb128 0x17
	.4byte	0xaf91
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafae
	.uleb128 0x19
	.4byte	0xa0aa
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1584
	.byte	0x27
	.byte	0x62
	.4byte	.LASF1637
	.byte	0x1
	.4byte	0xaec3
	.4byte	0xaecf
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1586
	.byte	0x27
	.byte	0x63
	.4byte	.LASF1638
	.4byte	0x9aef
	.byte	0x1
	.4byte	0xaee8
	.4byte	0xaeef
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x27
	.byte	0x66
	.4byte	.LASF1639
	.byte	0x1
	.4byte	0xaf04
	.4byte	0xaf1a
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x27
	.byte	0x67
	.4byte	.LASF1640
	.byte	0x1
	.4byte	0xaf2f
	.4byte	0xaf40
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1641
	.byte	0x27
	.byte	0x6a
	.4byte	.LASF1642
	.4byte	0xac
	.byte	0x1
	.4byte	0xaf59
	.4byte	0xaf6a
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1643
	.byte	0x27
	.byte	0x6b
	.4byte	.LASF1644
	.4byte	0xac
	.byte	0x1
	.4byte	0xaf7f
	.uleb128 0x17
	.4byte	0xaf9d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa85b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xa845
	.uleb128 0xb
	.byte	0x4
	.4byte	0xafa3
	.uleb128 0xc
	.4byte	0xa85b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xa85b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xafb4
	.uleb128 0xc
	.4byte	0xa85b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xa0b0
	.uleb128 0x2d
	.4byte	.LASF1645
	.byte	0x44
	.byte	0x28
	.byte	0x28
	.4byte	0xbb9a
	.uleb128 0x28
	.4byte	.LASF940
	.byte	0x28
	.byte	0x76
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF942
	.byte	0x28
	.byte	0x77
	.4byte	0x353e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1646
	.byte	0x28
	.byte	0x78
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1647
	.byte	0x28
	.byte	0x79
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1648
	.byte	0x28
	.byte	0x7a
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x3
	.uleb128 0x4b
	.string	"dUp"
	.byte	0x28
	.byte	0x7b
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1649
	.byte	0x28
	.byte	0x7c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1645
	.byte	0x28
	.byte	0x2a
	.byte	0x1
	.4byte	0xb045
	.4byte	0xb04c
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF945
	.byte	0x28
	.byte	0x2c
	.4byte	.LASF1650
	.byte	0x1
	.4byte	0xb061
	.4byte	0xb06d
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1651
	.byte	0x28
	.byte	0x2d
	.4byte	.LASF1652
	.byte	0x1
	.4byte	0xb082
	.4byte	0xb08e
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF818
	.byte	0x28
	.byte	0x2e
	.4byte	.LASF1653
	.byte	0x1
	.4byte	0xb0a3
	.4byte	0xb0be
	.uleb128 0x17
	.4byte	0xbb9a
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
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1654
	.byte	0x28
	.byte	0x2f
	.4byte	.LASF1655
	.byte	0x1
	.4byte	0xb0d3
	.4byte	0xb0e4
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1656
	.byte	0x28
	.byte	0x30
	.4byte	.LASF1657
	.byte	0x1
	.4byte	0xb0f9
	.4byte	0xb105
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1658
	.byte	0x28
	.byte	0x31
	.4byte	.LASF1659
	.byte	0x1
	.4byte	0xb11a
	.4byte	0xb126
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF956
	.byte	0x28
	.byte	0x33
	.4byte	.LASF1660
	.4byte	0x428c
	.byte	0x1
	.4byte	0xb13f
	.4byte	0xb146
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1610
	.byte	0x28
	.byte	0x34
	.4byte	.LASF1661
	.4byte	0x6865
	.byte	0x1
	.4byte	0xb15f
	.4byte	0xb166
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1548
	.byte	0x28
	.byte	0x35
	.4byte	.LASF1662
	.4byte	0x270c
	.byte	0x1
	.4byte	0xb17f
	.4byte	0xb186
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1663
	.byte	0x28
	.byte	0x37
	.4byte	.LASF1664
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb19f
	.4byte	0xb1a6
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1665
	.byte	0x28
	.byte	0x38
	.4byte	.LASF1666
	.4byte	0x109
	.byte	0x1
	.4byte	0xb1bf
	.4byte	0xb1c6
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1667
	.byte	0x28
	.byte	0x39
	.4byte	.LASF1668
	.4byte	0x109
	.byte	0x1
	.4byte	0xb1df
	.4byte	0xb1e6
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1669
	.byte	0x28
	.byte	0x3a
	.4byte	.LASF1670
	.4byte	0x109
	.byte	0x1
	.4byte	0xb1ff
	.4byte	0xb206
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1671
	.byte	0x28
	.byte	0x3b
	.4byte	.LASF1672
	.4byte	0x109
	.byte	0x1
	.4byte	0xb21f
	.4byte	0xb226
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1504
	.byte	0x28
	.byte	0x3d
	.4byte	.LASF1673
	.4byte	0xafbf
	.byte	0x1
	.4byte	0xb23f
	.4byte	0xb24b
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1506
	.byte	0x28
	.byte	0x3e
	.4byte	.LASF1674
	.4byte	0xbbab
	.byte	0x1
	.4byte	0xb264
	.4byte	0xb270
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x28
	.byte	0x3f
	.4byte	.LASF1675
	.4byte	0xafbf
	.byte	0x1
	.4byte	0xb289
	.4byte	0xb295
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x28
	.byte	0x40
	.4byte	.LASF1676
	.4byte	0xbbab
	.byte	0x1
	.4byte	0xb2ae
	.4byte	0xb2ba
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x28
	.byte	0x41
	.4byte	.LASF1677
	.4byte	0xafbf
	.byte	0x1
	.4byte	0xb2d3
	.4byte	0xb2df
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x28
	.byte	0x42
	.4byte	.LASF1678
	.4byte	0xbbab
	.byte	0x1
	.4byte	0xb2f8
	.4byte	0xb304
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x28
	.byte	0x44
	.4byte	.LASF1679
	.4byte	0x109
	.byte	0x1
	.4byte	0xb31d
	.4byte	0xb329
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x28
	.byte	0x45
	.4byte	.LASF1680
	.4byte	0xac
	.byte	0x1
	.4byte	0xb342
	.4byte	0xb353
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1681
	.byte	0x28
	.byte	0x48
	.4byte	.LASF1682
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb36c
	.4byte	0xb378
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1683
	.byte	0x28
	.byte	0x49
	.4byte	.LASF1684
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb391
	.4byte	0xb39d
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1685
	.byte	0x28
	.byte	0x4a
	.4byte	.LASF1686
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb3b6
	.4byte	0xb3c2
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1687
	.byte	0x28
	.byte	0x4b
	.4byte	.LASF1688
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb3db
	.4byte	0xb3e7
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1689
	.byte	0x28
	.byte	0x4c
	.4byte	.LASF1690
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb400
	.4byte	0xb40c
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbbd
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1691
	.byte	0x28
	.byte	0x4d
	.4byte	.LASF1692
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb425
	.4byte	0xb431
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbc8
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1514
	.byte	0x28
	.byte	0x50
	.4byte	.LASF1693
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb44a
	.4byte	0xb456
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1571
	.byte	0x28
	.byte	0x51
	.4byte	.LASF1694
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb46f
	.4byte	0xb47b
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1626
	.byte	0x28
	.byte	0x52
	.4byte	.LASF1695
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb494
	.4byte	0xb4a0
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1516
	.byte	0x28
	.byte	0x53
	.4byte	.LASF1696
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb4b9
	.4byte	0xb4c5
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1697
	.byte	0x28
	.byte	0x54
	.4byte	.LASF1698
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb4de
	.4byte	0xb4ea
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbbd
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1699
	.byte	0x28
	.byte	0x55
	.4byte	.LASF1700
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb503
	.4byte	0xb50f
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbc8
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x28
	.byte	0x56
	.4byte	.LASF1701
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb528
	.4byte	0xb539
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x28
	.byte	0x57
	.4byte	.LASF1702
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb552
	.4byte	0xb56d
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1703
	.byte	0x28
	.byte	0x5a
	.4byte	.LASF1704
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb586
	.4byte	0xb59c
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1703
	.byte	0x28
	.byte	0x5b
	.4byte	.LASF1705
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb5b5
	.4byte	0xb5cb
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1703
	.byte	0x28
	.byte	0x5c
	.4byte	.LASF1706
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb5e4
	.4byte	0xb5fa
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb7
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1707
	.byte	0x28
	.byte	0x5f
	.4byte	.LASF1708
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb613
	.4byte	0xb61f
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1709
	.byte	0x28
	.byte	0x60
	.4byte	.LASF1710
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb638
	.4byte	0xb644
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1711
	.byte	0x28
	.byte	0x61
	.4byte	.LASF1712
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb65d
	.4byte	0xb669
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb7
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1713
	.byte	0x28
	.byte	0x62
	.4byte	.LASF1714
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb682
	.4byte	0xb68e
	.uleb128 0x17
	.4byte	0xbb9a
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbbd
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1715
	.byte	0x28
	.byte	0x64
	.4byte	.LASF1716
	.byte	0x1
	.4byte	0xb6a3
	.4byte	0xb6af
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1584
	.byte	0x28
	.byte	0x65
	.4byte	.LASF1717
	.byte	0x1
	.4byte	0xb6c4
	.4byte	0xb6d0
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x28
	.byte	0x68
	.4byte	.LASF1718
	.byte	0x1
	.4byte	0xb6e5
	.4byte	0xb6fb
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x28
	.byte	0x69
	.4byte	.LASF1719
	.byte	0x1
	.4byte	0xb710
	.4byte	0xb721
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1720
	.byte	0x28
	.byte	0x6c
	.4byte	.LASF1721
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb73a
	.4byte	0xb74b
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1720
	.byte	0x28
	.byte	0x6d
	.4byte	.LASF1722
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb764
	.4byte	0xb775
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb1
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1720
	.byte	0x28
	.byte	0x6e
	.4byte	.LASF1723
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb78e
	.4byte	0xb79f
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb7
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1720
	.byte	0x28
	.byte	0x6f
	.4byte	.LASF1724
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb7b8
	.4byte	0xb7c9
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbbd
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1720
	.byte	0x28
	.byte	0x70
	.4byte	.LASF1725
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb7e2
	.4byte	0xb7f3
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbc8
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1726
	.byte	0x28
	.byte	0x73
	.4byte	.LASF1727
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xb80c
	.4byte	0xb822
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbbd
	.uleb128 0x19
	.4byte	0xbbb1
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1728
	.byte	0x28
	.byte	0x7f
	.4byte	.LASF1730
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb83c
	.4byte	0xb852
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1729
	.byte	0x28
	.byte	0x80
	.4byte	.LASF1731
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb86c
	.4byte	0xb882
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbbd
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0x2ec8
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1732
	.byte	0x28
	.byte	0x81
	.4byte	.LASF1733
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb89c
	.4byte	0xb8b2
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1734
	.byte	0x28
	.byte	0x82
	.4byte	.LASF1735
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb8cc
	.4byte	0xb8e7
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xbbbd
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0x2ec8
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1736
	.byte	0x28
	.byte	0x83
	.4byte	.LASF1737
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb901
	.4byte	0xb912
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1738
	.byte	0x28
	.byte	0x84
	.4byte	.LASF1739
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb92c
	.4byte	0xb947
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1740
	.byte	0x28
	.byte	0x85
	.4byte	.LASF1741
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb961
	.4byte	0xb972
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1742
	.byte	0x28
	.byte	0x86
	.4byte	.LASF1743
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xb98c
	.4byte	0xb99d
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1744
	.byte	0x28
	.byte	0x87
	.4byte	.LASF1745
	.byte	0x3
	.byte	0x1
	.4byte	0xb9b3
	.4byte	0xb9c4
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x20d8
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1746
	.byte	0x28
	.byte	0x88
	.4byte	.LASF1747
	.byte	0x3
	.byte	0x1
	.4byte	0xb9da
	.4byte	0xb9e6
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1748
	.byte	0x28
	.byte	0x89
	.4byte	.LASF1749
	.byte	0x3
	.byte	0x1
	.4byte	0xb9fc
	.4byte	0xba0d
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec2
	.uleb128 0x19
	.4byte	0x2ec2
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1529
	.byte	0x28
	.byte	0x8a
	.4byte	.LASF1750
	.byte	0x3
	.byte	0x1
	.4byte	0xba23
	.4byte	0xba43
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1751
	.byte	0x28
	.byte	0x8b
	.4byte	.LASF1752
	.byte	0x3
	.byte	0x1
	.4byte	0xba59
	.4byte	0xba79
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xc3c0
	.uleb128 0x19
	.4byte	0xc3c0
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1753
	.byte	0x28
	.byte	0x8c
	.4byte	.LASF1754
	.byte	0x3
	.byte	0x1
	.4byte	0xba8f
	.4byte	0xbaaf
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1755
	.byte	0x28
	.byte	0x8d
	.4byte	.LASF1756
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xbac9
	.4byte	0xbaee
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0x8d91
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF1757
	.byte	0x28
	.byte	0x8e
	.4byte	.LASF1758
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xbb08
	.4byte	0xbb28
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF1759
	.byte	0x28
	.byte	0x8f
	.4byte	.LASF1760
	.byte	0x3
	.byte	0x1
	.4byte	0xbb3e
	.4byte	0xbb54
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbb1
	.uleb128 0x19
	.4byte	0x21fe
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF1761
	.byte	0x28
	.byte	0x90
	.4byte	.LASF1762
	.4byte	0x15c9
	.byte	0x3
	.byte	0x1
	.4byte	0xbb6a
	.uleb128 0x17
	.4byte	0xbba0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x4292
	.uleb128 0x19
	.4byte	0x4292
	.uleb128 0x19
	.4byte	0xc3c0
	.uleb128 0x19
	.4byte	0xc3c0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xafbf
	.uleb128 0xb
	.byte	0x4
	.4byte	0xbba6
	.uleb128 0xc
	.4byte	0xafbf
	.uleb128 0x24
	.byte	0x4
	.4byte	0xafbf
	.uleb128 0x24
	.byte	0x4
	.4byte	0xafa3
	.uleb128 0x24
	.byte	0x4
	.4byte	0xa094
	.uleb128 0x24
	.byte	0x4
	.4byte	0xbbc3
	.uleb128 0xc
	.4byte	0xafbf
	.uleb128 0x24
	.byte	0x4
	.4byte	0xbbce
	.uleb128 0xc
	.4byte	0xbbd3
	.uleb128 0x14
	.4byte	.LASF1763
	.byte	0x10
	.byte	0x1
	.byte	0x28
	.4byte	0xbbd3
	.4byte	0xc3c0
	.uleb128 0x15
	.4byte	.LASF1764
	.4byte	0x2f025
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF1765
	.byte	0x1
	.byte	0x7c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x4b
	.string	"p"
	.byte	0x1
	.byte	0x7d
	.4byte	0x44bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x28
	.4byte	.LASF1766
	.byte	0x1
	.byte	0x7e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1763
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	0xbc2c
	.4byte	0xbc33
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1763
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.4byte	0xbc45
	.4byte	0xbc51
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1763
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.byte	0x1
	.4byte	0xbc63
	.4byte	0xbc74
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1763
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.byte	0x1
	.4byte	0xbc86
	.4byte	0xbc97
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1763
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.byte	0x1
	.4byte	0xbca9
	.4byte	0xbcb5
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1763
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.byte	0x1
	.4byte	0xbcc7
	.4byte	0xbcd3
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x31d1f
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF1767
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	0xbbd3
	.byte	0x1
	.4byte	0xbce9
	.4byte	0xbcf6
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0x1
	.byte	0xbc
	.4byte	.LASF1768
	.4byte	0x23a5d
	.byte	0x1
	.4byte	0xbd0f
	.4byte	0xbd1b
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x31d1f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x1
	.byte	0xca
	.4byte	.LASF1769
	.4byte	0x6dba
	.byte	0x1
	.4byte	0xbd34
	.4byte	0xbd40
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x1
	.byte	0xcf
	.4byte	.LASF1770
	.4byte	0x6de1
	.byte	0x1
	.4byte	0xbd59
	.4byte	0xbd65
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x1
	.byte	0xd4
	.4byte	.LASF1771
	.4byte	0x23a5d
	.byte	0x1
	.4byte	0xbd7e
	.4byte	0xbd8a
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x1
	.byte	0xd9
	.4byte	.LASF1772
	.4byte	0x23a5d
	.byte	0x1
	.4byte	0xbda3
	.4byte	0xbdaf
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6dba
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x1
	.byte	0xde
	.4byte	.LASF1773
	.byte	0x1
	.4byte	0xbdc4
	.4byte	0xbdd0
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1500
	.byte	0x1
	.byte	0xe6
	.4byte	.LASF1774
	.byte	0x1
	.4byte	0xbde5
	.4byte	0xbdf1
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6dba
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1775
	.byte	0x1
	.byte	0xee
	.4byte	.LASF1776
	.4byte	0xac
	.byte	0x1
	.4byte	0xbe0a
	.4byte	0xbe11
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1777
	.byte	0x1
	.byte	0xf2
	.4byte	.LASF1778
	.byte	0x1
	.4byte	0xbe26
	.4byte	0xbe32
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF291
	.byte	0x1
	.byte	0xf9
	.4byte	.LASF1779
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x2
	.4byte	0xbbd3
	.byte	0x1
	.4byte	0xbe4f
	.4byte	0xbe56
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1780
	.byte	0x1
	.byte	0x43
	.4byte	.LASF1781
	.byte	0x1
	.4byte	0xbe6b
	.4byte	0xbe7c
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1780
	.byte	0x1
	.byte	0xff
	.4byte	.LASF1782
	.byte	0x1
	.4byte	0xbe91
	.4byte	0xbe9d
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1783
	.byte	0x1
	.byte	0x48
	.4byte	.LASF1784
	.4byte	0xac
	.byte	0x1
	.4byte	0xbeb6
	.4byte	0xbed1
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x31d41
	.uleb128 0x19
	.4byte	0x31d41
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1785
	.byte	0x1
	.byte	0x4b
	.4byte	.LASF1786
	.4byte	0x31d47
	.byte	0x1
	.4byte	0xbeea
	.4byte	0xbf00
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1787
	.byte	0x1
	.byte	0x4e
	.4byte	.LASF1788
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xbf19
	.4byte	0xbf2f
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1789
	.byte	0x1
	.byte	0x51
	.4byte	.LASF1790
	.4byte	0x31d47
	.byte	0x1
	.4byte	0xbf48
	.4byte	0xbf4f
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1791
	.byte	0x1
	.byte	0x52
	.4byte	.LASF1792
	.4byte	0x31d47
	.byte	0x1
	.4byte	0xbf68
	.4byte	0xbf6f
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1793
	.byte	0x1
	.byte	0x53
	.4byte	.LASF1794
	.byte	0x1
	.4byte	0xbf84
	.4byte	0xbf8b
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1795
	.byte	0x1
	.byte	0x54
	.4byte	.LASF1796
	.byte	0x1
	.4byte	0xbfa0
	.4byte	0xbfac
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1797
	.byte	0x1
	.byte	0x55
	.4byte	.LASF1798
	.byte	0x1
	.4byte	0xbfc1
	.4byte	0xbfd2
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1799
	.byte	0x1
	.byte	0x56
	.4byte	.LASF1800
	.byte	0x1
	.4byte	0xbfe7
	.4byte	0xbff3
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1801
	.byte	0x1
	.byte	0x57
	.4byte	.LASF1802
	.byte	0x1
	.4byte	0xc008
	.4byte	0xc019
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1803
	.byte	0x1
	.byte	0x58
	.4byte	.LASF1804
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc032
	.4byte	0xc048
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1805
	.byte	0x1
	.byte	0x5a
	.4byte	.LASF1806
	.byte	0x1
	.4byte	0xc05d
	.4byte	0xc073
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x31d4d
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1805
	.byte	0x1
	.byte	0x5c
	.4byte	.LASF1807
	.byte	0x1
	.4byte	0xc088
	.4byte	0xc09e
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1808
	.byte	0x1
	.byte	0x5f
	.4byte	.LASF1809
	.4byte	0x31d47
	.byte	0x1
	.4byte	0xc0b7
	.4byte	0xc0cd
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x31d1f
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1810
	.byte	0x1
	.byte	0x61
	.4byte	.LASF1811
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc0e6
	.4byte	0xc0f2
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1812
	.byte	0x1
	.byte	0x63
	.4byte	.LASF1813
	.4byte	0x109
	.byte	0x1
	.4byte	0xc10b
	.4byte	0xc112
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1548
	.byte	0x1
	.byte	0x64
	.4byte	.LASF1814
	.4byte	0x270c
	.byte	0x1
	.4byte	0xc12b
	.4byte	0xc132
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1496
	.byte	0x1
	.byte	0x65
	.4byte	.LASF1815
	.4byte	0x109
	.byte	0x1
	.4byte	0xc14b
	.4byte	0xc157
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1816
	.byte	0x1
	.byte	0x66
	.4byte	.LASF1817
	.byte	0x1
	.4byte	0xc16c
	.4byte	0xc17d
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4292
	.uleb128 0x19
	.4byte	0x20cc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1816
	.byte	0x1
	.byte	0x67
	.4byte	.LASF1818
	.byte	0x1
	.4byte	0xc192
	.4byte	0xc19e
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1390a
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1819
	.byte	0x1
	.byte	0x68
	.4byte	.LASF1820
	.byte	0x1
	.4byte	0xc1b3
	.4byte	0xc1bf
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xafb9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1821
	.byte	0x1
	.byte	0x6a
	.4byte	.LASF1822
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc1d8
	.4byte	0xc1df
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1823
	.byte	0x1
	.byte	0x6b
	.4byte	.LASF1824
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc1f8
	.4byte	0xc1ff
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1825
	.byte	0x1
	.byte	0x6c
	.4byte	.LASF1826
	.byte	0x1
	.4byte	0xc214
	.4byte	0xc21b
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x1
	.byte	0x6e
	.4byte	.LASF1827
	.4byte	0x109
	.byte	0x1
	.4byte	0xc234
	.4byte	0xc240
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x1
	.byte	0x6f
	.4byte	.LASF1828
	.4byte	0xac
	.byte	0x1
	.4byte	0xc259
	.4byte	0xc26a
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1829
	.byte	0x1
	.byte	0x71
	.4byte	.LASF1830
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc283
	.4byte	0xc2a3
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x31d1f
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1831
	.byte	0x1
	.byte	0x73
	.4byte	.LASF1832
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc2bc
	.4byte	0xc2d2
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x1
	.byte	0x75
	.4byte	.LASF1833
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc2eb
	.4byte	0xc306
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x1
	.byte	0x77
	.4byte	.LASF1834
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc31f
	.4byte	0xc33f
	.uleb128 0x17
	.4byte	0x1a5e0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF1835
	.byte	0x1
	.byte	0x79
	.4byte	.LASF1836
	.4byte	0x109
	.byte	0x1
	.4byte	0xc364
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF1837
	.byte	0x1
	.2byte	0x103
	.4byte	.LASF1838
	.4byte	0x15c9
	.byte	0x2
	.byte	0x1
	.4byte	0xc37f
	.4byte	0xc390
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.4byte	.LASF1839
	.byte	0x1
	.byte	0x81
	.4byte	.LASF1840
	.4byte	0x15c9
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x3
	.4byte	0xbbd3
	.byte	0x2
	.byte	0x1
	.4byte	0xc3ae
	.uleb128 0x17
	.4byte	0x31d3b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x4
	.4byte	0xac
	.uleb128 0x2d
	.4byte	.LASF1841
	.byte	0x3c
	.byte	0x29
	.byte	0x28
	.4byte	0xc52d
	.uleb128 0x5
	.string	"xyz"
	.byte	0x29
	.byte	0x2a
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"st"
	.byte	0x29
	.byte	0x2b
	.4byte	0x2204
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF1842
	.byte	0x29
	.byte	0x2c
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF1843
	.byte	0x29
	.byte	0x2d
	.4byte	0xa829
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF1844
	.byte	0x29
	.byte	0x2e
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x29
	.byte	0x32
	.4byte	.LASF1845
	.4byte	0x109
	.byte	0x1
	.4byte	0xc430
	.4byte	0xc43c
	.uleb128 0x17
	.4byte	0xc52d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x29
	.byte	0x33
	.4byte	.LASF1846
	.4byte	0x20cc
	.byte	0x1
	.4byte	0xc455
	.4byte	0xc461
	.uleb128 0x17
	.4byte	0xc538
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x29
	.byte	0x35
	.4byte	.LASF1847
	.byte	0x1
	.4byte	0xc476
	.4byte	0xc47d
	.uleb128 0x17
	.4byte	0xc538
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF522
	.byte	0x29
	.byte	0x37
	.4byte	.LASF1848
	.byte	0x1
	.4byte	0xc492
	.4byte	0xc4a8
	.uleb128 0x17
	.4byte	0xc538
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc53e
	.uleb128 0x19
	.4byte	0xc53e
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1849
	.byte	0x29
	.byte	0x38
	.4byte	.LASF1850
	.byte	0x1
	.4byte	0xc4bd
	.4byte	0xc4d3
	.uleb128 0x17
	.4byte	0xc538
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc53e
	.uleb128 0x19
	.4byte	0xc53e
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF503
	.byte	0x29
	.byte	0x3a
	.4byte	.LASF1851
	.byte	0x1
	.4byte	0xc4e8
	.4byte	0xc4ef
	.uleb128 0x17
	.4byte	0xc538
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1852
	.byte	0x29
	.byte	0x3c
	.4byte	.LASF1853
	.byte	0x1
	.4byte	0xc504
	.4byte	0xc510
	.uleb128 0x17
	.4byte	0xc538
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1567
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF1854
	.byte	0x29
	.byte	0x3d
	.4byte	.LASF1855
	.4byte	0x1567
	.byte	0x1
	.4byte	0xc525
	.uleb128 0x17
	.4byte	0xc52d
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc533
	.uleb128 0xc
	.4byte	0xc3c6
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc3c6
	.uleb128 0x24
	.byte	0x4
	.4byte	0xc544
	.uleb128 0xc
	.4byte	0xc3c6
	.uleb128 0x2d
	.4byte	.LASF1856
	.byte	0x1c
	.byte	0x2a
	.byte	0x28
	.4byte	0xc56e
	.uleb128 0x5
	.string	"q"
	.byte	0x2a
	.byte	0x2b
	.4byte	0x567e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"t"
	.byte	0x2a
	.byte	0x2c
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF1857
	.byte	0x30
	.byte	0x2a
	.byte	0x3f
	.4byte	0xc795
	.uleb128 0x4b
	.string	"mat"
	.byte	0x2a
	.byte	0x57
	.4byte	0xc795
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1858
	.byte	0x2a
	.byte	0x42
	.4byte	.LASF1859
	.byte	0x1
	.4byte	0xc59e
	.4byte	0xc5aa
	.uleb128 0x17
	.4byte	0xc7a5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1860
	.byte	0x2a
	.byte	0x43
	.4byte	.LASF1861
	.byte	0x1
	.4byte	0xc5bf
	.4byte	0xc5cb
	.uleb128 0x17
	.4byte	0xc7a5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x2a
	.byte	0x45
	.4byte	.LASF1862
	.4byte	0x270c
	.byte	0x1
	.4byte	0xc5e4
	.4byte	0xc5f0
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x2a
	.byte	0x46
	.4byte	.LASF1863
	.4byte	0x270c
	.byte	0x1
	.4byte	0xc609
	.4byte	0xc615
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF488
	.byte	0x2a
	.byte	0x48
	.4byte	.LASF1864
	.4byte	0xc7b6
	.byte	0x1
	.4byte	0xc62e
	.4byte	0xc63a
	.uleb128 0x17
	.4byte	0xc7a5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc7bc
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF485
	.byte	0x2a
	.byte	0x49
	.4byte	.LASF1865
	.4byte	0xc7b6
	.byte	0x1
	.4byte	0xc653
	.4byte	0xc65f
	.uleb128 0x17
	.4byte	0xc7a5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc7bc
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x2a
	.byte	0x4b
	.4byte	.LASF1866
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc678
	.4byte	0xc684
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc7bc
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x2a
	.byte	0x4c
	.4byte	.LASF1867
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc69d
	.4byte	0xc6ae
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc7bc
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x2a
	.byte	0x4d
	.4byte	.LASF1868
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc6c7
	.4byte	0xc6d3
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc7bc
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x2a
	.byte	0x4e
	.4byte	.LASF1869
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xc6ec
	.4byte	0xc6f8
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc7bc
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF569
	.byte	0x2a
	.byte	0x50
	.4byte	.LASF1870
	.4byte	0x353e
	.byte	0x1
	.4byte	0xc711
	.4byte	0xc718
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF641
	.byte	0x2a
	.byte	0x51
	.4byte	.LASF1871
	.4byte	0x270c
	.byte	0x1
	.4byte	0xc731
	.4byte	0xc738
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1872
	.byte	0x2a
	.byte	0x52
	.4byte	.LASF1873
	.4byte	0xc549
	.byte	0x1
	.4byte	0xc751
	.4byte	0xc758
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF517
	.byte	0x2a
	.byte	0x53
	.4byte	.LASF1874
	.4byte	0x20d8
	.byte	0x1
	.4byte	0xc771
	.4byte	0xc778
	.uleb128 0x17
	.4byte	0xc7ab
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF517
	.byte	0x2a
	.byte	0x54
	.4byte	.LASF1875
	.4byte	0x21fe
	.byte	0x1
	.4byte	0xc78d
	.uleb128 0x17
	.4byte	0xc7a5
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x109
	.4byte	0xc7a5
	.uleb128 0xa
	.4byte	0x34
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc56e
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc7b1
	.uleb128 0xc
	.4byte	0xc56e
	.uleb128 0x24
	.byte	0x4
	.4byte	0xc56e
	.uleb128 0x24
	.byte	0x4
	.4byte	0xc7c2
	.uleb128 0xc
	.4byte	0xc56e
	.uleb128 0x4
	.4byte	.LASF1876
	.byte	0x10
	.byte	0x2b
	.byte	0x2b
	.4byte	0xc7f0
	.uleb128 0x6
	.4byte	.LASF1877
	.byte	0x2b
	.byte	0x2c
	.4byte	0xc7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1878
	.byte	0x2b
	.byte	0x2d
	.4byte	0xc7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.4byte	0xac
	.4byte	0xc800
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1879
	.byte	0x2b
	.byte	0x2e
	.4byte	0xc7c7
	.uleb128 0x2d
	.4byte	.LASF1880
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0xcdac
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0xc538
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0xcdac
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0xcdc0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0xc87a
	.4byte	0xc886
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0xc897
	.4byte	0xc8a3
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcdcb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0xc8b4
	.4byte	0xc8c1
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF1881
	.byte	0x1
	.4byte	0xc8d6
	.4byte	0xc8dd
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF1882
	.4byte	0xac
	.byte	0x1
	.4byte	0xc8f7
	.4byte	0xc8fe
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF1883
	.4byte	0xac
	.byte	0x1
	.4byte	0xc918
	.4byte	0xc91f
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF1884
	.byte	0x1
	.4byte	0xc935
	.4byte	0xc941
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF1885
	.4byte	0xac
	.byte	0x1
	.4byte	0xc95b
	.4byte	0xc962
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF1886
	.4byte	0x29
	.byte	0x1
	.4byte	0xc97b
	.4byte	0xc982
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF1887
	.4byte	0x29
	.byte	0x1
	.4byte	0xc99b
	.4byte	0xc9a2
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF1888
	.4byte	0x29
	.byte	0x1
	.4byte	0xc9bc
	.4byte	0xc9c3
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF1889
	.4byte	0xcddc
	.byte	0x1
	.4byte	0xc9dd
	.4byte	0xc9e9
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcdcb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF1890
	.4byte	0xcde2
	.byte	0x1
	.4byte	0xca03
	.4byte	0xca0f
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF1891
	.4byte	0xcde8
	.byte	0x1
	.4byte	0xca29
	.4byte	0xca35
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF1892
	.byte	0x1
	.4byte	0xca4b
	.4byte	0xca52
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF1893
	.byte	0x1
	.4byte	0xca68
	.4byte	0xca74
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF1894
	.byte	0x1
	.4byte	0xca8a
	.4byte	0xca9b
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF1895
	.byte	0x1
	.4byte	0xcab1
	.4byte	0xcac2
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF1896
	.byte	0x1
	.4byte	0xcad8
	.4byte	0xcae4
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF1897
	.byte	0x1
	.4byte	0xcafa
	.4byte	0xcb0b
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xcde2
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF1898
	.byte	0x1
	.4byte	0xcb21
	.4byte	0xcb32
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xcdee
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF1899
	.4byte	0xc538
	.byte	0x1
	.4byte	0xcb4c
	.4byte	0xcb53
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF1900
	.4byte	0xc52d
	.byte	0x1
	.4byte	0xcb6d
	.4byte	0xcb74
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF1901
	.4byte	0xcde8
	.byte	0x1
	.4byte	0xcb8e
	.4byte	0xcb95
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF1902
	.4byte	0xac
	.byte	0x1
	.4byte	0xcbaf
	.4byte	0xcbbb
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcde2
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF1903
	.4byte	0xac
	.byte	0x1
	.4byte	0xcbd5
	.4byte	0xcbe1
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcdcb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF1904
	.4byte	0xac
	.byte	0x1
	.4byte	0xcbfb
	.4byte	0xcc07
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcde2
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF1905
	.4byte	0xac
	.byte	0x1
	.4byte	0xcc21
	.4byte	0xcc32
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcde2
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF1906
	.4byte	0xac
	.byte	0x1
	.4byte	0xcc4c
	.4byte	0xcc58
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcde2
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF1907
	.4byte	0xc538
	.byte	0x1
	.4byte	0xcc72
	.4byte	0xcc7e
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcde2
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF1908
	.4byte	0xac
	.byte	0x1
	.4byte	0xcc98
	.4byte	0xcc9f
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF1909
	.4byte	0xac
	.byte	0x1
	.4byte	0xccb9
	.4byte	0xccc5
	.uleb128 0x17
	.4byte	0xcdd6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc52d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF1910
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xccdf
	.4byte	0xcceb
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF1911
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xcd05
	.4byte	0xcd11
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcde2
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF1912
	.byte	0x1
	.4byte	0xcd27
	.4byte	0xcd33
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcdf4
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF1913
	.byte	0x1
	.4byte	0xcd49
	.4byte	0xcd5f
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xcdf4
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF1914
	.byte	0x1
	.4byte	0xcd75
	.4byte	0xcd81
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xcddc
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF1915
	.byte	0x1
	.4byte	0xcd96
	.4byte	0xcda2
	.uleb128 0x17
	.4byte	0xcdc5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0xc3c6
	.byte	0
	.uleb128 0x53
	.4byte	0xac
	.4byte	0xcdc0
	.uleb128 0x19
	.4byte	0xc52d
	.uleb128 0x19
	.4byte	0xc52d
	.byte	0
	.uleb128 0x54
	.4byte	0xc3c6
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc80b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xcdd1
	.uleb128 0xc
	.4byte	0xc80b
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcdd1
	.uleb128 0x24
	.byte	0x4
	.4byte	0xc80b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xc533
	.uleb128 0x24
	.byte	0x4
	.4byte	0xc3c6
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc85e
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc853
	.uleb128 0x2d
	.4byte	.LASF1916
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0xd39b
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0xd39b
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0xd3af
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0xce69
	.4byte	0xce75
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0xce86
	.4byte	0xce92
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3ba
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0xcea3
	.4byte	0xceb0
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF1917
	.byte	0x1
	.4byte	0xcec5
	.4byte	0xcecc
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF1918
	.4byte	0xac
	.byte	0x1
	.4byte	0xcee6
	.4byte	0xceed
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF1919
	.4byte	0xac
	.byte	0x1
	.4byte	0xcf07
	.4byte	0xcf0e
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF1920
	.byte	0x1
	.4byte	0xcf24
	.4byte	0xcf30
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF1921
	.4byte	0xac
	.byte	0x1
	.4byte	0xcf4a
	.4byte	0xcf51
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF1922
	.4byte	0x29
	.byte	0x1
	.4byte	0xcf6a
	.4byte	0xcf71
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF1923
	.4byte	0x29
	.byte	0x1
	.4byte	0xcf8a
	.4byte	0xcf91
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF1924
	.4byte	0x29
	.byte	0x1
	.4byte	0xcfab
	.4byte	0xcfb2
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF1925
	.4byte	0xd3cb
	.byte	0x1
	.4byte	0xcfcc
	.4byte	0xcfd8
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3ba
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF1926
	.4byte	0xd3d1
	.byte	0x1
	.4byte	0xcff2
	.4byte	0xcffe
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF1927
	.4byte	0xc3c0
	.byte	0x1
	.4byte	0xd018
	.4byte	0xd024
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF1928
	.byte	0x1
	.4byte	0xd03a
	.4byte	0xd041
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF1929
	.byte	0x1
	.4byte	0xd057
	.4byte	0xd063
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF1930
	.byte	0x1
	.4byte	0xd079
	.4byte	0xd08a
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF1931
	.byte	0x1
	.4byte	0xd0a0
	.4byte	0xd0b1
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF1932
	.byte	0x1
	.4byte	0xd0c7
	.4byte	0xd0d3
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF1933
	.byte	0x1
	.4byte	0xd0e9
	.4byte	0xd0fa
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF1934
	.byte	0x1
	.4byte	0xd110
	.4byte	0xd121
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd3d7
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF1935
	.4byte	0x8d8b
	.byte	0x1
	.4byte	0xd13b
	.4byte	0xd142
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF1936
	.4byte	0x8d91
	.byte	0x1
	.4byte	0xd15c
	.4byte	0xd163
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF1937
	.4byte	0xc3c0
	.byte	0x1
	.4byte	0xd17d
	.4byte	0xd184
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF1938
	.4byte	0xac
	.byte	0x1
	.4byte	0xd19e
	.4byte	0xd1aa
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF1939
	.4byte	0xac
	.byte	0x1
	.4byte	0xd1c4
	.4byte	0xd1d0
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3ba
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF1940
	.4byte	0xac
	.byte	0x1
	.4byte	0xd1ea
	.4byte	0xd1f6
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF1941
	.4byte	0xac
	.byte	0x1
	.4byte	0xd210
	.4byte	0xd221
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF1942
	.4byte	0xac
	.byte	0x1
	.4byte	0xd23b
	.4byte	0xd247
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF1943
	.4byte	0x8d8b
	.byte	0x1
	.4byte	0xd261
	.4byte	0xd26d
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF1944
	.4byte	0xac
	.byte	0x1
	.4byte	0xd287
	.4byte	0xd28e
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF1945
	.4byte	0xac
	.byte	0x1
	.4byte	0xd2a8
	.4byte	0xd2b4
	.uleb128 0x17
	.4byte	0xd3c5
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d91
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF1946
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xd2ce
	.4byte	0xd2da
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF1947
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xd2f4
	.4byte	0xd300
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF1948
	.byte	0x1
	.4byte	0xd316
	.4byte	0xd322
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3dd
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF1949
	.byte	0x1
	.4byte	0xd338
	.4byte	0xd34e
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd3dd
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF1950
	.byte	0x1
	.4byte	0xd364
	.4byte	0xd370
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3cb
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF1951
	.byte	0x1
	.4byte	0xd385
	.4byte	0xd391
	.uleb128 0x17
	.4byte	0xd3b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0xac
	.byte	0
	.uleb128 0x53
	.4byte	0xac
	.4byte	0xd3af
	.uleb128 0x19
	.4byte	0x8d91
	.uleb128 0x19
	.4byte	0x8d91
	.byte	0
	.uleb128 0x54
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcdfa
	.uleb128 0x24
	.byte	0x4
	.4byte	0xd3c0
	.uleb128 0xc
	.4byte	0xcdfa
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd3c0
	.uleb128 0x24
	.byte	0x4
	.4byte	0xcdfa
	.uleb128 0x24
	.byte	0x4
	.4byte	0x21e8
	.uleb128 0xb
	.byte	0x4
	.4byte	0xce4d
	.uleb128 0xb
	.byte	0x4
	.4byte	0xce42
	.uleb128 0x2d
	.4byte	.LASF1952
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0xd984
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0xd984
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0xd98a
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0xd9a9
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0xd452
	.4byte	0xd45e
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0xd46f
	.4byte	0xd47b
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9b4
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0xd48c
	.4byte	0xd499
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF1953
	.byte	0x1
	.4byte	0xd4ae
	.4byte	0xd4b5
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF1954
	.4byte	0xac
	.byte	0x1
	.4byte	0xd4cf
	.4byte	0xd4d6
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF1955
	.4byte	0xac
	.byte	0x1
	.4byte	0xd4f0
	.4byte	0xd4f7
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF1956
	.byte	0x1
	.4byte	0xd50d
	.4byte	0xd519
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF1957
	.4byte	0xac
	.byte	0x1
	.4byte	0xd533
	.4byte	0xd53a
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF1958
	.4byte	0x29
	.byte	0x1
	.4byte	0xd553
	.4byte	0xd55a
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF1959
	.4byte	0x29
	.byte	0x1
	.4byte	0xd573
	.4byte	0xd57a
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF1960
	.4byte	0x29
	.byte	0x1
	.4byte	0xd594
	.4byte	0xd59b
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF1961
	.4byte	0xd9c5
	.byte	0x1
	.4byte	0xd5b5
	.4byte	0xd5c1
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9b4
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF1962
	.4byte	0xd9cb
	.byte	0x1
	.4byte	0xd5db
	.4byte	0xd5e7
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF1963
	.4byte	0xd9d1
	.byte	0x1
	.4byte	0xd601
	.4byte	0xd60d
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF1964
	.byte	0x1
	.4byte	0xd623
	.4byte	0xd62a
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF1965
	.byte	0x1
	.4byte	0xd640
	.4byte	0xd64c
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF1966
	.byte	0x1
	.4byte	0xd662
	.4byte	0xd673
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF1967
	.byte	0x1
	.4byte	0xd689
	.4byte	0xd69a
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF1968
	.byte	0x1
	.4byte	0xd6b0
	.4byte	0xd6bc
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF1969
	.byte	0x1
	.4byte	0xd6d2
	.4byte	0xd6e3
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd9cb
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF1970
	.byte	0x1
	.4byte	0xd6f9
	.4byte	0xd70a
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd9d7
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF1971
	.4byte	0xd984
	.byte	0x1
	.4byte	0xd724
	.4byte	0xd72b
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF1972
	.4byte	0xd99e
	.byte	0x1
	.4byte	0xd745
	.4byte	0xd74c
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF1973
	.4byte	0xd9d1
	.byte	0x1
	.4byte	0xd766
	.4byte	0xd76d
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF1974
	.4byte	0xac
	.byte	0x1
	.4byte	0xd787
	.4byte	0xd793
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9cb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF1975
	.4byte	0xac
	.byte	0x1
	.4byte	0xd7ad
	.4byte	0xd7b9
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9b4
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF1976
	.4byte	0xac
	.byte	0x1
	.4byte	0xd7d3
	.4byte	0xd7df
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9cb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF1977
	.4byte	0xac
	.byte	0x1
	.4byte	0xd7f9
	.4byte	0xd80a
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9cb
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF1978
	.4byte	0xac
	.byte	0x1
	.4byte	0xd824
	.4byte	0xd830
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9cb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF1979
	.4byte	0xd984
	.byte	0x1
	.4byte	0xd84a
	.4byte	0xd856
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9cb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF1980
	.4byte	0xac
	.byte	0x1
	.4byte	0xd870
	.4byte	0xd877
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF1981
	.4byte	0xac
	.byte	0x1
	.4byte	0xd891
	.4byte	0xd89d
	.uleb128 0x17
	.4byte	0xd9bf
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd99e
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF1982
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xd8b7
	.4byte	0xd8c3
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF1983
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xd8dd
	.4byte	0xd8e9
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9cb
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF1984
	.byte	0x1
	.4byte	0xd8ff
	.4byte	0xd90b
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9dd
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF1985
	.byte	0x1
	.4byte	0xd921
	.4byte	0xd937
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xd9dd
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF1986
	.byte	0x1
	.4byte	0xd94d
	.4byte	0xd959
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd9c5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF1987
	.byte	0x1
	.4byte	0xd96e
	.4byte	0xd97a
	.uleb128 0x17
	.4byte	0xd9ae
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0xc7c7
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc7c7
	.uleb128 0x53
	.4byte	0xac
	.4byte	0xd99e
	.uleb128 0x19
	.4byte	0xd99e
	.uleb128 0x19
	.4byte	0xd99e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd9a4
	.uleb128 0xc
	.4byte	0xc7c7
	.uleb128 0x54
	.4byte	0xc7c7
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd3e3
	.uleb128 0x24
	.byte	0x4
	.4byte	0xd9ba
	.uleb128 0xc
	.4byte	0xd3e3
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd9ba
	.uleb128 0x24
	.byte	0x4
	.4byte	0xd3e3
	.uleb128 0x24
	.byte	0x4
	.4byte	0xd9a4
	.uleb128 0x24
	.byte	0x4
	.4byte	0xc7c7
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd436
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd42b
	.uleb128 0x2d
	.4byte	.LASF1988
	.byte	0x40
	.byte	0x2b
	.byte	0x31
	.4byte	0xde23
	.uleb128 0x28
	.4byte	.LASF1877
	.byte	0x2b
	.byte	0x60
	.4byte	0xc80b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x28
	.4byte	.LASF1989
	.byte	0x2b
	.byte	0x61
	.4byte	0xcdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x2
	.uleb128 0x28
	.4byte	.LASF1990
	.byte	0x2b
	.byte	0x62
	.4byte	0xd3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x2
	.uleb128 0x28
	.4byte	.LASF1991
	.byte	0x2b
	.byte	0x63
	.4byte	0xcdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x2
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1988
	.byte	0x2b
	.byte	0x33
	.byte	0x1
	.4byte	0xda3c
	.4byte	0xda43
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1988
	.byte	0x2b
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.4byte	0xda55
	.4byte	0xda61
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde29
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF1988
	.byte	0x2b
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.4byte	0xda73
	.4byte	0xda8e
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc52d
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x8d91
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1992
	.byte	0x2b
	.byte	0x36
	.byte	0x1
	.4byte	0xda9f
	.4byte	0xdaac
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x2b
	.byte	0x38
	.4byte	.LASF1993
	.4byte	0xcde2
	.byte	0x1
	.4byte	0xdac5
	.4byte	0xdad1
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x2b
	.byte	0x39
	.4byte	.LASF1994
	.4byte	0xcde8
	.byte	0x1
	.4byte	0xdaea
	.4byte	0xdaf6
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x2b
	.byte	0x3a
	.4byte	.LASF1995
	.4byte	0xde3f
	.byte	0x1
	.4byte	0xdb0f
	.4byte	0xdb1b
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde29
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1996
	.byte	0x2b
	.byte	0x3c
	.4byte	.LASF1997
	.4byte	0xac
	.byte	0x1
	.4byte	0xdb34
	.4byte	0xdb3b
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1998
	.byte	0x2b
	.byte	0x3d
	.4byte	.LASF1999
	.4byte	0x8d91
	.byte	0x1
	.4byte	0xdb54
	.4byte	0xdb5b
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2000
	.byte	0x2b
	.byte	0x3e
	.4byte	.LASF2001
	.4byte	0xac
	.byte	0x1
	.4byte	0xdb74
	.4byte	0xdb7b
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2002
	.byte	0x2b
	.byte	0x3f
	.4byte	.LASF2003
	.4byte	0xc52d
	.byte	0x1
	.4byte	0xdb94
	.4byte	0xdb9b
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2004
	.byte	0x2b
	.byte	0x40
	.4byte	.LASF2005
	.4byte	0x8d91
	.byte	0x1
	.4byte	0xdbb4
	.4byte	0xdbbb
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2006
	.byte	0x2b
	.byte	0x41
	.4byte	.LASF2007
	.4byte	0xde45
	.byte	0x1
	.4byte	0xdbd4
	.4byte	0xdbdb
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x2b
	.byte	0x43
	.4byte	.LASF2008
	.byte	0x1
	.4byte	0xdbf0
	.4byte	0xdbf7
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2009
	.byte	0x2b
	.byte	0x44
	.4byte	.LASF2010
	.byte	0x1
	.4byte	0xdc0c
	.4byte	0xdc18
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde3f
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1389
	.byte	0x2b
	.byte	0x45
	.4byte	.LASF2011
	.byte	0x1
	.4byte	0xdc2d
	.4byte	0xdc39
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1393
	.byte	0x2b
	.byte	0x46
	.4byte	.LASF2012
	.byte	0x1
	.4byte	0xdc4e
	.4byte	0xdc5a
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1783
	.byte	0x2b
	.byte	0x4b
	.4byte	.LASF2013
	.4byte	0xac
	.byte	0x1
	.4byte	0xdc73
	.4byte	0xdc98
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xde50
	.uleb128 0x19
	.4byte	0xde50
	.uleb128 0x19
	.4byte	0x8d8b
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1787
	.byte	0x2b
	.byte	0x4e
	.4byte	.LASF2014
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xdcb1
	.4byte	0xdcc7
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2015
	.byte	0x2b
	.byte	0x51
	.4byte	.LASF2016
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xdce0
	.4byte	0xdce7
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2017
	.byte	0x2b
	.byte	0x53
	.4byte	.LASF2018
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xdd00
	.4byte	0xdd07
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2019
	.byte	0x2b
	.byte	0x55
	.4byte	.LASF2020
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xdd20
	.4byte	0xdd2c
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1510
	.byte	0x2b
	.byte	0x57
	.4byte	.LASF2021
	.4byte	0x109
	.byte	0x1
	.4byte	0xdd45
	.4byte	0xdd51
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1512
	.byte	0x2b
	.byte	0x58
	.4byte	.LASF2022
	.4byte	0xac
	.byte	0x1
	.4byte	0xdd6a
	.4byte	0xdd7b
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1399
	.byte	0x2b
	.byte	0x5b
	.4byte	.LASF2023
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xdd94
	.4byte	0xddaa
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1401
	.byte	0x2b
	.byte	0x5d
	.4byte	.LASF2024
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xddc3
	.4byte	0xddde
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2025
	.byte	0x2b
	.byte	0x66
	.4byte	.LASF2026
	.byte	0x2
	.byte	0x1
	.4byte	0xddf4
	.4byte	0xddfb
	.uleb128 0x17
	.4byte	0xde23
	.byte	0x1
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF2027
	.byte	0x2b
	.byte	0x67
	.4byte	.LASF2028
	.4byte	0xac
	.byte	0x2
	.byte	0x1
	.4byte	0xde11
	.uleb128 0x17
	.4byte	0xde34
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd9e3
	.uleb128 0x24
	.byte	0x4
	.4byte	0xde2f
	.uleb128 0xc
	.4byte	0xd9e3
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde3a
	.uleb128 0xc
	.4byte	0xd9e3
	.uleb128 0x24
	.byte	0x4
	.4byte	0xd9e3
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde4b
	.uleb128 0xc
	.4byte	0xc800
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde56
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd9e3
	.uleb128 0x24
	.byte	0x4
	.4byte	0x353e
	.uleb128 0x2d
	.4byte	.LASF2029
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0xe403
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0x426a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0xe403
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0xe417
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0xded1
	.4byte	0xdedd
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0xdeee
	.4byte	0xdefa
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe422
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0xdf0b
	.4byte	0xdf18
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF2030
	.byte	0x1
	.4byte	0xdf2d
	.4byte	0xdf34
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF2031
	.4byte	0xac
	.byte	0x1
	.4byte	0xdf4e
	.4byte	0xdf55
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF2032
	.4byte	0xac
	.byte	0x1
	.4byte	0xdf6f
	.4byte	0xdf76
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF2033
	.byte	0x1
	.4byte	0xdf8c
	.4byte	0xdf98
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF2034
	.4byte	0xac
	.byte	0x1
	.4byte	0xdfb2
	.4byte	0xdfb9
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF2035
	.4byte	0x29
	.byte	0x1
	.4byte	0xdfd2
	.4byte	0xdfd9
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF2036
	.4byte	0x29
	.byte	0x1
	.4byte	0xdff2
	.4byte	0xdff9
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF2037
	.4byte	0x29
	.byte	0x1
	.4byte	0xe013
	.4byte	0xe01a
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF2038
	.4byte	0xe433
	.byte	0x1
	.4byte	0xe034
	.4byte	0xe040
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe422
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF2039
	.4byte	0x685f
	.byte	0x1
	.4byte	0xe05a
	.4byte	0xe066
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF2040
	.4byte	0x688c
	.byte	0x1
	.4byte	0xe080
	.4byte	0xe08c
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF2041
	.byte	0x1
	.4byte	0xe0a2
	.4byte	0xe0a9
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF2042
	.byte	0x1
	.4byte	0xe0bf
	.4byte	0xe0cb
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF2043
	.byte	0x1
	.4byte	0xe0e1
	.4byte	0xe0f2
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF2044
	.byte	0x1
	.4byte	0xe108
	.4byte	0xe119
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF2045
	.byte	0x1
	.4byte	0xe12f
	.4byte	0xe13b
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF2046
	.byte	0x1
	.4byte	0xe151
	.4byte	0xe162
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF2047
	.byte	0x1
	.4byte	0xe178
	.4byte	0xe189
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe439
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF2048
	.4byte	0x426a
	.byte	0x1
	.4byte	0xe1a3
	.4byte	0xe1aa
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF2049
	.4byte	0x4270
	.byte	0x1
	.4byte	0xe1c4
	.4byte	0xe1cb
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF2050
	.4byte	0x688c
	.byte	0x1
	.4byte	0xe1e5
	.4byte	0xe1ec
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF2051
	.4byte	0xac
	.byte	0x1
	.4byte	0xe206
	.4byte	0xe212
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF2052
	.4byte	0xac
	.byte	0x1
	.4byte	0xe22c
	.4byte	0xe238
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe422
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF2053
	.4byte	0xac
	.byte	0x1
	.4byte	0xe252
	.4byte	0xe25e
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF2054
	.4byte	0xac
	.byte	0x1
	.4byte	0xe278
	.4byte	0xe289
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF2055
	.4byte	0xac
	.byte	0x1
	.4byte	0xe2a3
	.4byte	0xe2af
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF2056
	.4byte	0x426a
	.byte	0x1
	.4byte	0xe2c9
	.4byte	0xe2d5
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF2057
	.4byte	0xac
	.byte	0x1
	.4byte	0xe2ef
	.4byte	0xe2f6
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF2058
	.4byte	0xac
	.byte	0x1
	.4byte	0xe310
	.4byte	0xe31c
	.uleb128 0x17
	.4byte	0xe42d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x4270
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF2059
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe336
	.4byte	0xe342
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF2060
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe35c
	.4byte	0xe368
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF2061
	.byte	0x1
	.4byte	0xe37e
	.4byte	0xe38a
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe43f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF2062
	.byte	0x1
	.4byte	0xe3a0
	.4byte	0xe3b6
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe43f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF2063
	.byte	0x1
	.4byte	0xe3cc
	.4byte	0xe3d8
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe433
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF2064
	.byte	0x1
	.4byte	0xe3ed
	.4byte	0xe3f9
	.uleb128 0x17
	.4byte	0xe41c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0x3d54
	.byte	0
	.uleb128 0x53
	.4byte	0xac
	.4byte	0xe417
	.uleb128 0x19
	.4byte	0x4270
	.uleb128 0x19
	.4byte	0x4270
	.byte	0
	.uleb128 0x54
	.4byte	0x3d54
	.uleb128 0xb
	.byte	0x4
	.4byte	0xde62
	.uleb128 0x24
	.byte	0x4
	.4byte	0xe428
	.uleb128 0xc
	.4byte	0xde62
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe428
	.uleb128 0x24
	.byte	0x4
	.4byte	0xde62
	.uleb128 0xb
	.byte	0x4
	.4byte	0xdeb5
	.uleb128 0xb
	.byte	0x4
	.4byte	0xdeaa
	.uleb128 0xd
	.byte	0x4
	.byte	0x17
	.byte	0x31
	.4byte	.LASF2065
	.4byte	0xe48e
	.uleb128 0xe
	.4byte	.LASF2066
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF2067
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF2068
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF2069
	.sleb128 3
	.uleb128 0xe
	.4byte	.LASF2070
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF2071
	.sleb128 5
	.uleb128 0xe
	.4byte	.LASF2072
	.sleb128 6
	.uleb128 0xe
	.4byte	.LASF2073
	.sleb128 7
	.uleb128 0xe
	.4byte	.LASF2074
	.sleb128 8
	.uleb128 0xe
	.4byte	.LASF2075
	.sleb128 9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2076
	.byte	0x17
	.byte	0x3c
	.4byte	0xe445
	.uleb128 0x5b
	.byte	0x14
	.byte	0x17
	.byte	0x46
	.4byte	.LASF2078
	.4byte	0xe4d2
	.uleb128 0x5
	.string	"v"
	.byte	0x17
	.byte	0x47
	.4byte	0xc7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1842
	.byte	0x17
	.byte	0x48
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5c
	.4byte	.LASF2077
	.byte	0x1
	.byte	0x1
	.4byte	0xe4ca
	.uleb128 0x17
	.4byte	0x33601
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2077
	.byte	0x17
	.byte	0x49
	.4byte	0xe499
	.uleb128 0x5b
	.byte	0x6c
	.byte	0x17
	.byte	0x4b
	.4byte	.LASF2079
	.4byte	0xe542
	.uleb128 0x6
	.4byte	.LASF1842
	.byte	0x17
	.byte	0x4c
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2080
	.byte	0x17
	.byte	0x4d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF2081
	.byte	0x17
	.byte	0x4e
	.4byte	0xa0b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF2082
	.byte	0x17
	.byte	0x4f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF1990
	.byte	0x17
	.byte	0x50
	.4byte	0xe542
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5c
	.4byte	.LASF2083
	.byte	0x1
	.byte	0x1
	.4byte	0xe53a
	.uleb128 0x17
	.4byte	0x338cb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xac
	.4byte	0xe552
	.uleb128 0xa
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2083
	.byte	0x17
	.byte	0x51
	.4byte	0xe4dd
	.uleb128 0x21
	.4byte	.LASF2084
	.2byte	0xb0c
	.byte	0x17
	.byte	0x53
	.4byte	0xeb32
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x17
	.byte	0x56
	.4byte	0xe48e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2085
	.byte	0x17
	.byte	0x57
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF1877
	.byte	0x17
	.byte	0x58
	.4byte	0xeb32
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2082
	.byte	0x17
	.byte	0x59
	.4byte	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x6
	.4byte	.LASF1990
	.byte	0x17
	.byte	0x5a
	.4byte	0xeb42
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x6
	.4byte	.LASF2086
	.byte	0x17
	.byte	0x5b
	.4byte	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x420
	.uleb128 0x6
	.4byte	.LASF2087
	.byte	0x17
	.byte	0x5c
	.4byte	0xeb52
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0x6
	.4byte	.LASF2088
	.byte	0x17
	.byte	0x5d
	.4byte	0x270c
	.byte	0x3
	.byte	0x23
	.uleb128 0xae4
	.uleb128 0x6
	.4byte	.LASF2081
	.byte	0x17
	.byte	0x5e
	.4byte	0xa0b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xaf0
	.uleb128 0x6
	.4byte	.LASF2089
	.byte	0x17
	.byte	0x5f
	.4byte	0x15c9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb08
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x17
	.byte	0x62
	.byte	0x1
	.4byte	0xe60e
	.4byte	0xe615
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x17
	.byte	0x64
	.byte	0x1
	.4byte	0xe626
	.4byte	0xe632
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x17
	.byte	0x66
	.byte	0x1
	.4byte	0xe643
	.4byte	0xe654
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x17
	.byte	0x68
	.byte	0x1
	.4byte	0xe665
	.4byte	0xe676
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2090
	.byte	0x17
	.byte	0x6b
	.4byte	.LASF2091
	.byte	0x1
	.4byte	0xe68b
	.4byte	0xe697
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2090
	.byte	0x17
	.byte	0x6c
	.4byte	.LASF2092
	.byte	0x1
	.4byte	0xe6ac
	.4byte	0xe6b8
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2093
	.byte	0x17
	.byte	0x6e
	.4byte	.LASF2094
	.byte	0x1
	.4byte	0xe6cd
	.4byte	0xe6d9
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2093
	.byte	0x17
	.byte	0x6f
	.4byte	.LASF2095
	.byte	0x1
	.4byte	0xe6ee
	.4byte	0xe6fa
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2096
	.byte	0x17
	.byte	0x71
	.4byte	.LASF2097
	.byte	0x1
	.4byte	0xe70f
	.4byte	0xe71b
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2096
	.byte	0x17
	.byte	0x72
	.4byte	.LASF2098
	.byte	0x1
	.4byte	0xe730
	.4byte	0xe73c
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2099
	.byte	0x17
	.byte	0x74
	.4byte	.LASF2100
	.byte	0x1
	.4byte	0xe751
	.4byte	0xe762
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2099
	.byte	0x17
	.byte	0x75
	.4byte	.LASF2101
	.byte	0x1
	.4byte	0xe777
	.4byte	0xe78d
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2102
	.byte	0x17
	.byte	0x77
	.4byte	.LASF2103
	.byte	0x1
	.4byte	0xe7a2
	.4byte	0xe7b3
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2102
	.byte	0x17
	.byte	0x78
	.4byte	.LASF2104
	.byte	0x1
	.4byte	0xe7c8
	.4byte	0xe7de
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2105
	.byte	0x17
	.byte	0x7a
	.4byte	.LASF2106
	.byte	0x1
	.4byte	0xe7f3
	.4byte	0xe804
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2107
	.byte	0x17
	.byte	0x7c
	.4byte	.LASF2108
	.byte	0x1
	.4byte	0xe819
	.4byte	0xe82a
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2107
	.byte	0x17
	.byte	0x7d
	.4byte	.LASF2109
	.byte	0x1
	.4byte	0xe83f
	.4byte	0xe84b
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbc8
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2110
	.byte	0x17
	.byte	0x7f
	.4byte	.LASF2111
	.4byte	0xac
	.byte	0x1
	.4byte	0xe864
	.4byte	0xe86b
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x17
	.byte	0x81
	.4byte	.LASF2112
	.byte	0x1
	.4byte	0xe880
	.4byte	0xe88c
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x17
	.byte	0x83
	.4byte	.LASF2113
	.byte	0x1
	.4byte	0xe8a1
	.4byte	0xe8ad
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2114
	.byte	0x17
	.byte	0x85
	.4byte	.LASF2115
	.byte	0x1
	.4byte	0xe8c2
	.4byte	0xe8ce
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x17
	.byte	0x87
	.4byte	.LASF2116
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe8e7
	.4byte	0xe8f3
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeb73
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x17
	.byte	0x88
	.4byte	.LASF2117
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe90c
	.4byte	0xe918
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeb73
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x17
	.byte	0x89
	.4byte	.LASF2118
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe931
	.4byte	0xe93d
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeb73
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2119
	.byte	0x17
	.byte	0x8b
	.4byte	.LASF2120
	.4byte	0x109
	.byte	0x1
	.4byte	0xe956
	.4byte	0xe962
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2121
	.byte	0x17
	.byte	0x8d
	.4byte	.LASF2122
	.4byte	0xac
	.byte	0x1
	.4byte	0xe97b
	.4byte	0xe98c
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2123
	.byte	0x17
	.byte	0x8e
	.4byte	.LASF2124
	.4byte	0xac
	.byte	0x1
	.4byte	0xe9a5
	.4byte	0xe9b6
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2125
	.byte	0x17
	.byte	0x90
	.4byte	.LASF2126
	.byte	0x1
	.4byte	0xe9cb
	.4byte	0xe9e6
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x20cc
	.uleb128 0x19
	.4byte	0x4292
	.uleb128 0x19
	.4byte	0xde5c
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2127
	.byte	0x17
	.byte	0x93
	.4byte	.LASF2128
	.byte	0x3
	.byte	0x1
	.4byte	0xe9fc
	.4byte	0xea03
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2129
	.byte	0x17
	.byte	0x94
	.4byte	.LASF2130
	.byte	0x3
	.byte	0x1
	.4byte	0xea19
	.4byte	0xea20
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2131
	.byte	0x17
	.byte	0x95
	.4byte	.LASF2132
	.byte	0x3
	.byte	0x1
	.4byte	0xea36
	.4byte	0xea3d
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2133
	.byte	0x17
	.byte	0x96
	.4byte	.LASF2134
	.byte	0x3
	.byte	0x1
	.4byte	0xea53
	.4byte	0xea5a
	.uleb128 0x17
	.4byte	0xeb62
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2135
	.byte	0x17
	.byte	0x98
	.4byte	.LASF2136
	.byte	0x3
	.byte	0x1
	.4byte	0xea70
	.4byte	0xea8b
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xeb7e
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2137
	.byte	0x17
	.byte	0x99
	.4byte	.LASF2138
	.byte	0x3
	.byte	0x1
	.4byte	0xeaa1
	.4byte	0xeac1
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xeb8a
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2139
	.byte	0x17
	.byte	0x9a
	.4byte	.LASF2140
	.byte	0x3
	.byte	0x1
	.4byte	0xead7
	.4byte	0xeae3
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeb96
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2141
	.byte	0x17
	.byte	0x9b
	.4byte	.LASF2142
	.byte	0x3
	.byte	0x1
	.4byte	0xeaf9
	.4byte	0xeb0a
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0xeba2
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF2143
	.byte	0x17
	.byte	0x9c
	.4byte	.LASF2144
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0xeb20
	.uleb128 0x17
	.4byte	0xeb68
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d91
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x270c
	.4byte	0xeb42
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0xe4d2
	.4byte	0xeb52
	.uleb128 0xa
	.4byte	0x34
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	0xe552
	.4byte	0xeb62
	.uleb128 0xa
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe55d
	.uleb128 0xb
	.byte	0x4
	.4byte	0xeb6e
	.uleb128 0xc
	.4byte	0xe55d
	.uleb128 0x24
	.byte	0x4
	.4byte	0xeb79
	.uleb128 0xc
	.4byte	0xe55d
	.uleb128 0x24
	.byte	0x4
	.4byte	0xeb84
	.uleb128 0x5d
	.4byte	.LASF2145
	.byte	0x1
	.uleb128 0x24
	.byte	0x4
	.4byte	0xeb90
	.uleb128 0x5d
	.4byte	.LASF2146
	.byte	0x1
	.uleb128 0x24
	.byte	0x4
	.4byte	0xeb9c
	.uleb128 0x5d
	.4byte	.LASF2147
	.byte	0x1
	.uleb128 0x24
	.byte	0x4
	.4byte	0xe55d
	.uleb128 0xd
	.byte	0x4
	.byte	0x18
	.byte	0x84
	.4byte	.LASF2148
	.4byte	0xebc1
	.uleb128 0xe
	.4byte	.LASF2149
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF2150
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2151
	.byte	0x18
	.byte	0x87
	.4byte	0xeba8
	.uleb128 0x2d
	.4byte	.LASF2152
	.byte	0x20
	.byte	0x18
	.byte	0x89
	.4byte	0xff4b
	.uleb128 0x46
	.string	"len"
	.byte	0x18
	.2byte	0x151
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x48
	.4byte	.LASF2153
	.byte	0x18
	.2byte	0x152
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x48
	.4byte	.LASF796
	.byte	0x18
	.2byte	0x153
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x48
	.4byte	.LASF2154
	.byte	0x18
	.2byte	0x154
	.4byte	0xff4b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x8c
	.byte	0x1
	.4byte	0xec29
	.4byte	0xec30
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x8d
	.byte	0x1
	.4byte	0xec41
	.4byte	0xec4d
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff61
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x8e
	.byte	0x1
	.4byte	0xec5e
	.4byte	0xec74
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff61
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x8f
	.byte	0x1
	.4byte	0xec85
	.4byte	0xec91
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x90
	.byte	0x1
	.4byte	0xeca2
	.4byte	0xecb8
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x91
	.byte	0x1
	.byte	0x1
	.4byte	0xecca
	.4byte	0xecd6
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x92
	.byte	0x1
	.byte	0x1
	.4byte	0xece8
	.4byte	0xecf4
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x93
	.byte	0x1
	.byte	0x1
	.4byte	0xed06
	.4byte	0xed12
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x94
	.byte	0x1
	.byte	0x1
	.4byte	0xed24
	.4byte	0xed30
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x34
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x18
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.4byte	0xed42
	.4byte	0xed4e
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2155
	.byte	0x18
	.byte	0x96
	.byte	0x1
	.4byte	0xed5f
	.4byte	0xed6c
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x18
	.byte	0x98
	.4byte	.LASF2156
	.4byte	0x29
	.byte	0x1
	.4byte	0xed85
	.4byte	0xed8c
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2157
	.byte	0x18
	.byte	0x99
	.4byte	.LASF2158
	.4byte	0xe5
	.byte	0x1
	.4byte	0xeda5
	.4byte	0xedac
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2159
	.byte	0x18
	.byte	0x9a
	.4byte	.LASF2160
	.4byte	0xe5
	.byte	0x1
	.4byte	0xedc5
	.4byte	0xedcc
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2159
	.byte	0x18
	.byte	0x9b
	.4byte	.LASF2161
	.4byte	0xe5
	.byte	0x1
	.4byte	0xede5
	.4byte	0xedec
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x18
	.byte	0x9d
	.4byte	.LASF2162
	.4byte	0xde
	.byte	0x1
	.4byte	0xee05
	.4byte	0xee11
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x18
	.byte	0x9e
	.4byte	.LASF2163
	.4byte	0xff77
	.byte	0x1
	.4byte	0xee2a
	.4byte	0xee36
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x18
	.byte	0xa0
	.4byte	.LASF2164
	.byte	0x1
	.4byte	0xee4b
	.4byte	0xee57
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff61
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x18
	.byte	0xa1
	.4byte	.LASF2165
	.byte	0x1
	.4byte	0xee6c
	.4byte	0xee78
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x18
	.byte	0xad
	.4byte	.LASF2166
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xee91
	.4byte	0xee9d
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff61
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x18
	.byte	0xae
	.4byte	.LASF2167
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xeeb6
	.4byte	0xeec2
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x18
	.byte	0xaf
	.4byte	.LASF2168
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xeedb
	.4byte	0xeee7
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x18
	.byte	0xb0
	.4byte	.LASF2169
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xef00
	.4byte	0xef0c
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x18
	.byte	0xb1
	.4byte	.LASF2170
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xef25
	.4byte	0xef31
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x18
	.byte	0xb2
	.4byte	.LASF2171
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xef4a
	.4byte	0xef56
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x34
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x18
	.byte	0xb3
	.4byte	.LASF2172
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xef6f
	.4byte	0xef7b
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"Cmp"
	.byte	0x18
	.byte	0xc0
	.4byte	.LASF2234
	.4byte	0xac
	.byte	0x1
	.4byte	0xef94
	.4byte	0xefa0
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2173
	.byte	0x18
	.byte	0xc1
	.4byte	.LASF2174
	.4byte	0xac
	.byte	0x1
	.4byte	0xefb9
	.4byte	0xefca
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2175
	.byte	0x18
	.byte	0xc2
	.4byte	.LASF2176
	.4byte	0xac
	.byte	0x1
	.4byte	0xefe3
	.4byte	0xefef
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2177
	.byte	0x18
	.byte	0xc5
	.4byte	.LASF2178
	.4byte	0xac
	.byte	0x1
	.4byte	0xf008
	.4byte	0xf014
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2179
	.byte	0x18
	.byte	0xc6
	.4byte	.LASF2180
	.4byte	0xac
	.byte	0x1
	.4byte	0xf02d
	.4byte	0xf03e
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2181
	.byte	0x18
	.byte	0xc7
	.4byte	.LASF2182
	.4byte	0xac
	.byte	0x1
	.4byte	0xf057
	.4byte	0xf063
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2183
	.byte	0x18
	.byte	0xca
	.4byte	.LASF2184
	.4byte	0xac
	.byte	0x1
	.4byte	0xf07c
	.4byte	0xf088
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2185
	.byte	0x18
	.byte	0xcd
	.4byte	.LASF2186
	.4byte	0xac
	.byte	0x1
	.4byte	0xf0a1
	.4byte	0xf0ad
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2187
	.byte	0x18
	.byte	0xce
	.4byte	.LASF2188
	.4byte	0xac
	.byte	0x1
	.4byte	0xf0c6
	.4byte	0xf0d7
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2189
	.byte	0x18
	.byte	0xcf
	.4byte	.LASF2190
	.4byte	0xac
	.byte	0x1
	.4byte	0xf0f0
	.4byte	0xf0fc
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF497
	.byte	0x18
	.byte	0xd1
	.4byte	.LASF2191
	.4byte	0xac
	.byte	0x1
	.4byte	0xf115
	.4byte	0xf11c
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x18
	.byte	0xd2
	.4byte	.LASF2192
	.4byte	0xac
	.byte	0x1
	.4byte	0xf135
	.4byte	0xf13c
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2193
	.byte	0x18
	.byte	0xd3
	.4byte	.LASF2194
	.byte	0x1
	.4byte	0xf151
	.4byte	0xf158
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2195
	.byte	0x18
	.byte	0xd4
	.4byte	.LASF2196
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf171
	.4byte	0xf178
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x18
	.byte	0xd5
	.4byte	.LASF2197
	.byte	0x1
	.4byte	0xf18d
	.4byte	0xf194
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x18
	.byte	0xd6
	.4byte	.LASF2198
	.byte	0x1
	.4byte	0xf1a9
	.4byte	0xf1b5
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x18
	.byte	0xd7
	.4byte	.LASF2199
	.byte	0x1
	.4byte	0xf1ca
	.4byte	0xf1d6
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff61
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x18
	.byte	0xd8
	.4byte	.LASF2200
	.byte	0x1
	.4byte	0xf1eb
	.4byte	0xf1f7
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x18
	.byte	0xd9
	.4byte	.LASF2201
	.byte	0x1
	.4byte	0xf20c
	.4byte	0xf21d
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x18
	.byte	0xda
	.4byte	.LASF2202
	.byte	0x1
	.4byte	0xf232
	.4byte	0xf243
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x18
	.byte	0xdb
	.4byte	.LASF2203
	.byte	0x1
	.4byte	0xf258
	.4byte	0xf269
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x18
	.byte	0xdc
	.4byte	.LASF2205
	.byte	0x1
	.4byte	0xf27e
	.4byte	0xf285
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x18
	.byte	0xdd
	.4byte	.LASF2207
	.byte	0x1
	.4byte	0xf29a
	.4byte	0xf2a1
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2208
	.byte	0x18
	.byte	0xde
	.4byte	.LASF2209
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf2ba
	.4byte	0xf2c1
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2210
	.byte	0x18
	.byte	0xdf
	.4byte	.LASF2211
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf2da
	.4byte	0xf2e1
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2212
	.byte	0x18
	.byte	0xe0
	.4byte	.LASF2213
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf2fa
	.4byte	0xf301
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2214
	.byte	0x18
	.byte	0xe1
	.4byte	.LASF2215
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf31a
	.4byte	0xf321
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2216
	.byte	0x18
	.byte	0xe2
	.4byte	.LASF2217
	.4byte	0xac
	.byte	0x1
	.4byte	0xf33a
	.4byte	0xf341
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2218
	.byte	0x18
	.byte	0xe3
	.4byte	.LASF2219
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf35a
	.4byte	0xf361
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2220
	.byte	0x18
	.byte	0xe4
	.4byte	.LASF2221
	.byte	0x1
	.4byte	0xf376
	.4byte	0xf382
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2222
	.byte	0x18
	.byte	0xe5
	.4byte	.LASF2223
	.byte	0x1
	.4byte	0xf397
	.4byte	0xf3a8
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF129
	.byte	0x18
	.byte	0xe7
	.4byte	.LASF2224
	.4byte	0xac
	.byte	0x1
	.4byte	0xf3c1
	.4byte	0xf3d7
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF129
	.byte	0x18
	.byte	0xe8
	.4byte	.LASF2225
	.4byte	0xac
	.byte	0x1
	.4byte	0xf3f0
	.4byte	0xf40b
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2226
	.byte	0x18
	.byte	0xe9
	.4byte	.LASF2227
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf424
	.4byte	0xf435
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2228
	.byte	0x18
	.byte	0xea
	.4byte	.LASF2229
	.4byte	0xac
	.byte	0x1
	.4byte	0xf44e
	.4byte	0xf45a
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2230
	.byte	0x18
	.byte	0xeb
	.4byte	.LASF2231
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf473
	.4byte	0xf484
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2232
	.byte	0x18
	.byte	0xec
	.4byte	.LASF2233
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf49d
	.4byte	0xf4ae
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"Mid"
	.byte	0x18
	.byte	0xed
	.4byte	.LASF2235
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf4c7
	.4byte	0xf4dd
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2230
	.byte	0x18
	.byte	0xee
	.4byte	.LASF2236
	.4byte	0xebcc
	.byte	0x1
	.4byte	0xf4f6
	.4byte	0xf502
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2232
	.byte	0x18
	.byte	0xef
	.4byte	.LASF2237
	.4byte	0xebcc
	.byte	0x1
	.4byte	0xf51b
	.4byte	0xf527
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"Mid"
	.byte	0x18
	.byte	0xf0
	.4byte	.LASF2238
	.4byte	0xebcc
	.byte	0x1
	.4byte	0xf540
	.4byte	0xf551
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2239
	.byte	0x18
	.byte	0xf1
	.4byte	.LASF2240
	.byte	0x1
	.4byte	0xf566
	.4byte	0xf572
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2239
	.byte	0x18
	.byte	0xf2
	.4byte	.LASF2241
	.byte	0x1
	.4byte	0xf587
	.4byte	0xf593
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2242
	.byte	0x18
	.byte	0xf3
	.4byte	.LASF2243
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf5ac
	.4byte	0xf5b8
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2244
	.byte	0x18
	.byte	0xf4
	.4byte	.LASF2245
	.byte	0x1
	.4byte	0xf5cd
	.4byte	0xf5d9
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2244
	.byte	0x18
	.byte	0xf5
	.4byte	.LASF2246
	.byte	0x1
	.4byte	0xf5ee
	.4byte	0xf5fa
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2247
	.byte	0x18
	.byte	0xf6
	.4byte	.LASF2248
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf613
	.4byte	0xf61f
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2249
	.byte	0x18
	.byte	0xf7
	.4byte	.LASF2250
	.byte	0x1
	.4byte	0xf634
	.4byte	0xf640
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2249
	.byte	0x18
	.byte	0xf8
	.4byte	.LASF2251
	.byte	0x1
	.4byte	0xf655
	.4byte	0xf661
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2252
	.byte	0x18
	.byte	0xf9
	.4byte	.LASF2253
	.byte	0x1
	.4byte	0xf676
	.4byte	0xf67d
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2254
	.byte	0x18
	.byte	0xfa
	.4byte	.LASF2255
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf696
	.4byte	0xf69d
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2256
	.byte	0x18
	.byte	0xfb
	.4byte	.LASF2257
	.byte	0x1
	.4byte	0xf6b2
	.4byte	0xf6c3
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2258
	.byte	0x18
	.byte	0xfe
	.4byte	.LASF2259
	.4byte	0xac
	.byte	0x1
	.4byte	0xf6dc
	.4byte	0xf6e3
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2260
	.byte	0x18
	.byte	0xff
	.4byte	.LASF2261
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf6fc
	.4byte	0xf703
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2262
	.byte	0x18
	.2byte	0x100
	.4byte	.LASF2263
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf71d
	.4byte	0xf729
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2264
	.byte	0x18
	.2byte	0x101
	.4byte	.LASF2265
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf743
	.4byte	0xf74a
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2266
	.byte	0x18
	.2byte	0x102
	.4byte	.LASF2267
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf764
	.4byte	0xf76b
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2268
	.byte	0x18
	.2byte	0x103
	.4byte	.LASF2269
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf785
	.4byte	0xf791
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2270
	.byte	0x18
	.2byte	0x104
	.4byte	.LASF2271
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf7ab
	.4byte	0xf7b7
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2272
	.byte	0x18
	.2byte	0x105
	.4byte	.LASF2273
	.byte	0x1
	.4byte	0xf7cd
	.4byte	0xf7d9
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2274
	.byte	0x18
	.2byte	0x106
	.4byte	.LASF2275
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf7f3
	.4byte	0xf7fa
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2276
	.byte	0x18
	.2byte	0x107
	.4byte	.LASF2277
	.4byte	0xff7d
	.byte	0x1
	.4byte	0xf814
	.4byte	0xf81b
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2278
	.byte	0x18
	.2byte	0x108
	.4byte	.LASF2279
	.byte	0x1
	.4byte	0xf831
	.4byte	0xf83d
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2280
	.byte	0x18
	.2byte	0x109
	.4byte	.LASF2281
	.byte	0x1
	.4byte	0xf853
	.4byte	0xf85f
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2282
	.byte	0x18
	.2byte	0x10a
	.4byte	.LASF2283
	.byte	0x1
	.4byte	0xf875
	.4byte	0xf881
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2284
	.byte	0x18
	.2byte	0x10b
	.4byte	.LASF2285
	.byte	0x1
	.4byte	0xf897
	.4byte	0xf8a3
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2286
	.byte	0x18
	.2byte	0x10c
	.4byte	.LASF2287
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf8bd
	.4byte	0xf8c9
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF497
	.byte	0x18
	.2byte	0x10f
	.4byte	.LASF2288
	.4byte	0xac
	.byte	0x1
	.4byte	0xf8e5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x18
	.2byte	0x110
	.4byte	.LASF2289
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf901
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x18
	.2byte	0x111
	.4byte	.LASF2290
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf91d
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2208
	.byte	0x18
	.2byte	0x112
	.4byte	.LASF2291
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf939
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2210
	.byte	0x18
	.2byte	0x113
	.4byte	.LASF2292
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf955
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2212
	.byte	0x18
	.2byte	0x114
	.4byte	.LASF2293
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf971
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2214
	.byte	0x18
	.2byte	0x115
	.4byte	.LASF2294
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf98d
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2216
	.byte	0x18
	.2byte	0x116
	.4byte	.LASF2295
	.4byte	0xac
	.byte	0x1
	.4byte	0xf9a9
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2218
	.byte	0x18
	.2byte	0x117
	.4byte	.LASF2296
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf9c5
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.string	"Cmp"
	.byte	0x18
	.2byte	0x118
	.4byte	.LASF2297
	.4byte	0xac
	.byte	0x1
	.4byte	0xf9e6
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2173
	.byte	0x18
	.2byte	0x119
	.4byte	.LASF2298
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa0c
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2177
	.byte	0x18
	.2byte	0x11a
	.4byte	.LASF2299
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa2d
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2179
	.byte	0x18
	.2byte	0x11b
	.4byte	.LASF2300
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa53
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2183
	.byte	0x18
	.2byte	0x11c
	.4byte	.LASF2301
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa74
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2185
	.byte	0x18
	.2byte	0x11d
	.4byte	.LASF2302
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa95
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2187
	.byte	0x18
	.2byte	0x11e
	.4byte	.LASF2303
	.4byte	0xac
	.byte	0x1
	.4byte	0xfabb
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x18
	.2byte	0x11f
	.4byte	.LASF2304
	.byte	0x1
	.4byte	0xfadd
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.4byte	.LASF2305
	.byte	0x18
	.2byte	0x120
	.4byte	.LASF2306
	.byte	0x1
	.4byte	0xfaff
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2307
	.byte	0x18
	.2byte	0x121
	.4byte	.LASF2308
	.4byte	0xac
	.byte	0x1
	.4byte	0xfb26
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2309
	.byte	0x18
	.2byte	0x122
	.4byte	.LASF2310
	.4byte	0xac
	.byte	0x1
	.4byte	0xfb51
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xff83
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2311
	.byte	0x18
	.2byte	0x123
	.4byte	.LASF2312
	.4byte	0xac
	.byte	0x1
	.4byte	0xfb7c
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2313
	.byte	0x18
	.2byte	0x124
	.4byte	.LASF2314
	.4byte	0xac
	.byte	0x1
	.4byte	0xfbac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2226
	.byte	0x18
	.2byte	0x125
	.4byte	.LASF2315
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfbd2
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.4byte	.LASF2316
	.byte	0x18
	.2byte	0x126
	.4byte	.LASF2317
	.byte	0x1
	.4byte	0xfbef
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xff7d
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2286
	.byte	0x18
	.2byte	0x127
	.4byte	.LASF2318
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfc10
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2319
	.byte	0x18
	.2byte	0x128
	.4byte	.LASF2320
	.4byte	0xe5
	.byte	0x1
	.4byte	0xfc36
	.uleb128 0x19
	.4byte	0x20d8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2321
	.byte	0x18
	.2byte	0x12b
	.4byte	.LASF2322
	.4byte	0xac
	.byte	0x1
	.4byte	0xfc52
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2321
	.byte	0x18
	.2byte	0x12c
	.4byte	.LASF2323
	.4byte	0xac
	.byte	0x1
	.4byte	0xfc73
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2324
	.byte	0x18
	.2byte	0x12d
	.4byte	.LASF2325
	.4byte	0xac
	.byte	0x1
	.4byte	0xfc8f
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2324
	.byte	0x18
	.2byte	0x12e
	.4byte	.LASF2326
	.4byte	0xac
	.byte	0x1
	.4byte	0xfcb0
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x18
	.2byte	0x131
	.4byte	.LASF2327
	.4byte	0xde
	.byte	0x1
	.4byte	0xfccc
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x18
	.2byte	0x132
	.4byte	.LASF2328
	.4byte	0xde
	.byte	0x1
	.4byte	0xfce8
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2329
	.byte	0x18
	.2byte	0x133
	.4byte	.LASF2330
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd04
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2331
	.byte	0x18
	.2byte	0x134
	.4byte	.LASF2332
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd20
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2333
	.byte	0x18
	.2byte	0x135
	.4byte	.LASF2334
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd3c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2335
	.byte	0x18
	.2byte	0x136
	.4byte	.LASF2336
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd58
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2337
	.byte	0x18
	.2byte	0x137
	.4byte	.LASF2338
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd74
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2339
	.byte	0x18
	.2byte	0x138
	.4byte	.LASF2340
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd90
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2341
	.byte	0x18
	.2byte	0x139
	.4byte	.LASF2342
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfdac
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2343
	.byte	0x18
	.2byte	0x13a
	.4byte	.LASF2344
	.4byte	0xac
	.byte	0x1
	.4byte	0xfdc8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2345
	.byte	0x18
	.2byte	0x13b
	.4byte	.LASF2346
	.4byte	0x688c
	.byte	0x1
	.4byte	0xfde4
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1839
	.byte	0x18
	.2byte	0x140
	.4byte	.LASF2347
	.byte	0x1
	.4byte	0xfdfa
	.4byte	0xfe0b
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2348
	.byte	0x18
	.2byte	0x141
	.4byte	.LASF2349
	.byte	0x1
	.4byte	0xfe21
	.4byte	0xfe28
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2350
	.byte	0x18
	.2byte	0x144
	.4byte	.LASF2351
	.4byte	0xac
	.byte	0x1
	.4byte	0xfe42
	.4byte	0xfe58
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xebc1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2352
	.byte	0x18
	.2byte	0x146
	.4byte	.LASF2353
	.byte	0x1
	.4byte	0xfe6e
	.4byte	0xfe89
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xebc1
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF2354
	.byte	0x18
	.2byte	0x148
	.4byte	.LASF2356
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF2357
	.byte	0x18
	.2byte	0x149
	.4byte	.LASF2358
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF2359
	.byte	0x18
	.2byte	0x14a
	.4byte	.LASF2360
	.byte	0x1
	.uleb128 0x61
	.byte	0x1
	.4byte	.LASF2361
	.byte	0x18
	.2byte	0x14b
	.4byte	.LASF2362
	.byte	0x1
	.4byte	0xfecb
	.uleb128 0x19
	.4byte	0x15d0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2363
	.byte	0x18
	.2byte	0x14d
	.4byte	.LASF2364
	.4byte	0xac
	.byte	0x1
	.4byte	0xfee5
	.4byte	0xfeec
	.uleb128 0x17
	.4byte	0xff6c
	.byte	0x1
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.4byte	.LASF2365
	.byte	0x18
	.2byte	0x14e
	.4byte	.LASF2366
	.4byte	0xebcc
	.byte	0x1
	.4byte	0xff08
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF60
	.byte	0x18
	.2byte	0x156
	.4byte	.LASF2367
	.byte	0x2
	.byte	0x1
	.4byte	0xff1f
	.4byte	0xff26
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1837
	.byte	0x18
	.2byte	0x157
	.4byte	.LASF2368
	.byte	0x2
	.byte	0x1
	.4byte	0xff39
	.uleb128 0x17
	.4byte	0xff5b
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xde
	.4byte	0xff5b
	.uleb128 0xa
	.4byte	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xebcc
	.uleb128 0x24
	.byte	0x4
	.4byte	0xff67
	.uleb128 0xc
	.4byte	0xebcc
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff72
	.uleb128 0xc
	.4byte	0xebcc
	.uleb128 0x24
	.byte	0x4
	.4byte	0xde
	.uleb128 0x24
	.byte	0x4
	.4byte	0xebcc
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3b
	.uleb128 0x2d
	.4byte	.LASF2369
	.byte	0x50
	.byte	0x2c
	.byte	0x47
	.4byte	0x101bb
	.uleb128 0x62
	.4byte	0xebcc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x2c
	.byte	0x4d
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF2370
	.byte	0x2c
	.byte	0x4e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF2371
	.byte	0x2c
	.byte	0x4f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF2372
	.byte	0x2c
	.byte	0x50
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.4byte	.LASF2373
	.byte	0x2c
	.byte	0x51
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x28
	.4byte	.LASF2374
	.byte	0x2c
	.byte	0x65
	.4byte	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2375
	.byte	0x2c
	.byte	0x66
	.4byte	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2376
	.byte	0x2c
	.byte	0x69
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2377
	.byte	0x2c
	.byte	0x6a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2378
	.byte	0x2c
	.byte	0x6b
	.4byte	0x101bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2369
	.byte	0x2c
	.byte	0x54
	.byte	0x1
	.4byte	0x10040
	.4byte	0x10047
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2369
	.byte	0x2c
	.byte	0x55
	.byte	0x1
	.4byte	0x10058
	.4byte	0x10064
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c7
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2379
	.byte	0x2c
	.byte	0x56
	.byte	0x1
	.4byte	0x10075
	.4byte	0x10082
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x2c
	.byte	0x58
	.4byte	.LASF2380
	.byte	0x1
	.4byte	0x10097
	.4byte	0x100a3
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff61
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x2c
	.byte	0x59
	.4byte	.LASF2381
	.byte	0x1
	.4byte	0x100b8
	.4byte	0x100c4
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2382
	.byte	0x2c
	.byte	0x5b
	.4byte	.LASF2383
	.4byte	0x102
	.byte	0x1
	.4byte	0x100dd
	.4byte	0x100e4
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2384
	.byte	0x2c
	.byte	0x5c
	.4byte	.LASF2385
	.4byte	0x109
	.byte	0x1
	.4byte	0x100fd
	.4byte	0x10104
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2386
	.byte	0x2c
	.byte	0x5d
	.4byte	.LASF2387
	.4byte	0xd1
	.byte	0x1
	.4byte	0x1011d
	.4byte	0x10124
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2388
	.byte	0x2c
	.byte	0x5e
	.4byte	.LASF2389
	.4byte	0xac
	.byte	0x1
	.4byte	0x1013d
	.4byte	0x10144
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2390
	.byte	0x2c
	.byte	0x5f
	.4byte	.LASF2391
	.4byte	0xac
	.byte	0x1
	.4byte	0x1015d
	.4byte	0x10164
	.uleb128 0x17
	.4byte	0x101d2
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2392
	.byte	0x2c
	.byte	0x60
	.4byte	.LASF2393
	.byte	0x1
	.4byte	0x10179
	.4byte	0x10180
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2394
	.byte	0x2c
	.byte	0x62
	.4byte	.LASF2395
	.byte	0x1
	.4byte	0x10195
	.4byte	0x1019c
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.byte	0
	.uleb128 0x63
	.byte	0x1
	.4byte	.LASF2396
	.byte	0x2c
	.byte	0x6d
	.4byte	.LASF2397
	.byte	0x3
	.byte	0x1
	.4byte	0x101ae
	.uleb128 0x17
	.4byte	0x101c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff89
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff89
	.uleb128 0xb
	.byte	0x4
	.4byte	0x101cd
	.uleb128 0xc
	.4byte	0xff89
	.uleb128 0xb
	.byte	0x4
	.4byte	0x101d8
	.uleb128 0xc
	.4byte	0xff89
	.uleb128 0x4
	.4byte	.LASF2398
	.byte	0x8
	.byte	0x2d
	.byte	0x82
	.4byte	0x10202
	.uleb128 0x5
	.string	"p"
	.byte	0x2d
	.byte	0x84
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"n"
	.byte	0x2d
	.byte	0x85
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2399
	.byte	0x2d
	.byte	0x86
	.4byte	0x101dd
	.uleb128 0x2d
	.4byte	.LASF2400
	.byte	0x1c
	.byte	0x2d
	.byte	0x8a
	.4byte	0x1060e
	.uleb128 0x5
	.string	"ptr"
	.byte	0x2d
	.byte	0xab
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"buf"
	.byte	0x2d
	.byte	0xac
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2401
	.byte	0x2d
	.byte	0xad
	.4byte	0x10638
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x28
	.4byte	.LASF2402
	.byte	0x2d
	.byte	0xb3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2403
	.byte	0x2d
	.byte	0xb4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x2d
	.byte	0xb5
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2404
	.byte	0x2d
	.byte	0xb6
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2405
	.byte	0x2d
	.byte	0xb7
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2400
	.byte	0x2d
	.byte	0x8c
	.byte	0x1
	.4byte	0x1029f
	.4byte	0x102a6
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2406
	.byte	0x2d
	.byte	0x8d
	.byte	0x1
	.4byte	0x102b7
	.4byte	0x102c4
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2400
	.byte	0x2d
	.byte	0x8f
	.byte	0x1
	.4byte	0x102d5
	.4byte	0x102e1
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10644
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2400
	.byte	0x2d
	.byte	0x90
	.byte	0x1
	.4byte	0x102f2
	.4byte	0x102fe
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1064f
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2407
	.byte	0x2d
	.byte	0x92
	.4byte	.LASF2408
	.byte	0x1
	.4byte	0x10313
	.4byte	0x1031f
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2409
	.byte	0x2d
	.byte	0x93
	.4byte	.LASF2410
	.byte	0x1
	.4byte	0x10334
	.4byte	0x10345
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2411
	.byte	0x2d
	.byte	0x95
	.4byte	.LASF2412
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x1035e
	.4byte	0x10365
	.uleb128 0x17
	.4byte	0x10655
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2411
	.byte	0x2d
	.byte	0x96
	.4byte	.LASF2413
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x1037e
	.4byte	0x10385
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x2d
	.byte	0x98
	.4byte	.LASF2414
	.4byte	0xde
	.byte	0x1
	.4byte	0x1039e
	.4byte	0x103a5
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x2d
	.byte	0x99
	.4byte	.LASF2415
	.4byte	0xde
	.byte	0x1
	.4byte	0x103be
	.4byte	0x103ca
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc3c0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2416
	.byte	0x2d
	.byte	0x9a
	.4byte	.LASF2417
	.4byte	0x1064f
	.byte	0x1
	.4byte	0x103e3
	.4byte	0x103ea
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2416
	.byte	0x2d
	.byte	0x9b
	.4byte	.LASF2418
	.4byte	0x1020d
	.byte	0x1
	.4byte	0x10403
	.4byte	0x1040f
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2419
	.byte	0x2d
	.byte	0x9c
	.4byte	.LASF2420
	.4byte	0x1064f
	.byte	0x1
	.4byte	0x10428
	.4byte	0x1042f
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2419
	.byte	0x2d
	.byte	0x9d
	.4byte	.LASF2421
	.4byte	0x1020d
	.byte	0x1
	.4byte	0x10448
	.4byte	0x10454
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x2d
	.byte	0x9e
	.4byte	.LASF2422
	.4byte	0x1064f
	.byte	0x1
	.4byte	0x1046d
	.4byte	0x10479
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0x2d
	.byte	0x9f
	.4byte	.LASF2423
	.4byte	0x1064f
	.byte	0x1
	.4byte	0x10492
	.4byte	0x1049e
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x2d
	.byte	0xa0
	.4byte	.LASF2424
	.4byte	0x1020d
	.byte	0x1
	.4byte	0x104b7
	.4byte	0x104c3
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x2d
	.byte	0xa1
	.4byte	.LASF2425
	.4byte	0x1020d
	.byte	0x1
	.4byte	0x104dc
	.4byte	0x104e8
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0x2d
	.byte	0xa2
	.4byte	.LASF2426
	.4byte	0x1064f
	.byte	0x1
	.4byte	0x10501
	.4byte	0x1050d
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x2d
	.byte	0xa3
	.4byte	.LASF2427
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10526
	.4byte	0x10532
	.uleb128 0x17
	.4byte	0x10655
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x2d
	.byte	0xa4
	.4byte	.LASF2428
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x1054b
	.4byte	0x10557
	.uleb128 0x17
	.4byte	0x10655
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2429
	.byte	0x2d
	.byte	0xa5
	.4byte	.LASF2430
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10570
	.4byte	0x1057c
	.uleb128 0x17
	.4byte	0x10655
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2431
	.byte	0x2d
	.byte	0xa6
	.4byte	.LASF2432
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10595
	.4byte	0x105a1
	.uleb128 0x17
	.4byte	0x10655
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2433
	.byte	0x2d
	.byte	0xa7
	.4byte	.LASF2434
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x105ba
	.4byte	0x105c6
	.uleb128 0x17
	.4byte	0x10655
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2435
	.byte	0x2d
	.byte	0xa8
	.4byte	.LASF2436
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x105df
	.4byte	0x105eb
	.uleb128 0x17
	.4byte	0x10655
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF2437
	.byte	0x2d
	.byte	0xb1
	.4byte	.LASF2438
	.4byte	0xde
	.byte	0x3
	.byte	0x1
	.4byte	0x10601
	.uleb128 0x17
	.4byte	0x1063e
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x64
	.4byte	.LASF3654
	.byte	0x1
	.4byte	0x10638
	.uleb128 0x65
	.byte	0x1
	.4byte	.LASF2439
	.byte	0x2e
	.byte	0x3c
	.byte	0x1
	.4byte	0x1060e
	.byte	0x1
	.4byte	0x1062a
	.uleb128 0x17
	.4byte	0x10638
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1060e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1020d
	.uleb128 0x24
	.byte	0x4
	.4byte	0x1064a
	.uleb128 0xc
	.4byte	0x1020d
	.uleb128 0x24
	.byte	0x4
	.4byte	0x1020d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1065b
	.uleb128 0xc
	.4byte	0x1020d
	.uleb128 0x2d
	.4byte	.LASF2440
	.byte	0xd0
	.byte	0x2d
	.byte	0xbd
	.4byte	0x11075
	.uleb128 0x48
	.4byte	.LASF2441
	.byte	0x2d
	.2byte	0x12a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2442
	.byte	0x2d
	.2byte	0x12b
	.4byte	0xebcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2404
	.byte	0x2d
	.2byte	0x12c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2443
	.byte	0x2d
	.2byte	0x12e
	.4byte	0x1020d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2444
	.byte	0x2d
	.2byte	0x12f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2445
	.byte	0x2d
	.2byte	0x130
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2376
	.byte	0x2d
	.2byte	0x131
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2377
	.byte	0x2d
	.2byte	0x132
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2446
	.byte	0x2d
	.2byte	0x13b
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2447
	.byte	0x2d
	.2byte	0x13c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2371
	.byte	0x2d
	.2byte	0x13d
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2448
	.byte	0x2d
	.2byte	0x13e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2449
	.byte	0x2d
	.2byte	0x13f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2373
	.byte	0x2d
	.2byte	0x140
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2450
	.byte	0x2d
	.2byte	0x141
	.4byte	0x11075
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2451
	.byte	0x2d
	.2byte	0x142
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2452
	.byte	0x2d
	.2byte	0x143
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2453
	.byte	0x2d
	.2byte	0x144
	.4byte	0xff89
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2378
	.byte	0x2d
	.2byte	0x145
	.4byte	0x11080
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2454
	.byte	0x2d
	.2byte	0x146
	.4byte	0x15c9
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF2455
	.byte	0x2d
	.2byte	0x148
	.4byte	0x11086
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2440
	.byte	0x2d
	.byte	0xc3
	.byte	0x1
	.4byte	0x107ce
	.4byte	0x107d5
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2440
	.byte	0x2d
	.byte	0xc4
	.byte	0x1
	.4byte	0x107e6
	.4byte	0x107f2
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2440
	.byte	0x2d
	.byte	0xc5
	.byte	0x1
	.4byte	0x10803
	.4byte	0x10819
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2440
	.byte	0x2d
	.byte	0xc6
	.byte	0x1
	.4byte	0x1082a
	.4byte	0x10845
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2456
	.byte	0x2d
	.byte	0xc8
	.byte	0x1
	.4byte	0x10856
	.4byte	0x10863
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2457
	.byte	0x2d
	.byte	0xca
	.4byte	.LASF2458
	.4byte	0xac
	.byte	0x1
	.4byte	0x1087c
	.4byte	0x1088d
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2459
	.byte	0x2d
	.byte	0xce
	.4byte	.LASF2460
	.4byte	0xac
	.byte	0x1
	.4byte	0x108a6
	.4byte	0x108c1
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2461
	.byte	0x2d
	.byte	0xd0
	.4byte	.LASF2462
	.byte	0x1
	.4byte	0x108d6
	.4byte	0x108dd
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2463
	.byte	0x2d
	.byte	0xd2
	.4byte	.LASF2464
	.4byte	0xac
	.byte	0x1
	.4byte	0x108f6
	.4byte	0x108fd
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2465
	.byte	0x2d
	.byte	0xd4
	.4byte	.LASF2466
	.4byte	0xac
	.byte	0x1
	.4byte	0x10916
	.4byte	0x10922
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2467
	.byte	0x2d
	.byte	0xd6
	.4byte	.LASF2468
	.4byte	0xac
	.byte	0x1
	.4byte	0x1093b
	.4byte	0x10947
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2469
	.byte	0x2d
	.byte	0xd8
	.4byte	.LASF2470
	.4byte	0xac
	.byte	0x1
	.4byte	0x10960
	.4byte	0x10976
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2471
	.byte	0x2d
	.byte	0xda
	.4byte	.LASF2472
	.4byte	0xac
	.byte	0x1
	.4byte	0x1098f
	.4byte	0x1099b
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2473
	.byte	0x2d
	.byte	0xdc
	.4byte	.LASF2474
	.4byte	0xac
	.byte	0x1
	.4byte	0x109b4
	.4byte	0x109c0
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2475
	.byte	0x2d
	.byte	0xde
	.4byte	.LASF2476
	.4byte	0xac
	.byte	0x1
	.4byte	0x109d9
	.4byte	0x109ef
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2477
	.byte	0x2d
	.byte	0xe0
	.4byte	.LASF2478
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a08
	.4byte	0x10a14
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2479
	.byte	0x2d
	.byte	0xe2
	.4byte	.LASF2480
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a2d
	.4byte	0x10a43
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2481
	.byte	0x2d
	.byte	0xe4
	.4byte	.LASF2482
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a5c
	.4byte	0x10a68
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2483
	.byte	0x2d
	.byte	0xe6
	.4byte	.LASF2484
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a81
	.4byte	0x10a88
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2485
	.byte	0x2d
	.byte	0xe8
	.4byte	.LASF2486
	.4byte	0xac
	.byte	0x1
	.4byte	0x10aa1
	.4byte	0x10aad
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2487
	.byte	0x2d
	.byte	0xea
	.4byte	.LASF2488
	.byte	0x1
	.4byte	0x10ac2
	.4byte	0x10ace
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101d2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2489
	.byte	0x2d
	.byte	0xec
	.4byte	.LASF2490
	.4byte	0xac
	.byte	0x1
	.4byte	0x10ae7
	.4byte	0x10af3
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2491
	.byte	0x2d
	.byte	0xef
	.4byte	.LASF2492
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10b0c
	.4byte	0x10b18
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2493
	.byte	0x2d
	.byte	0xf2
	.4byte	.LASF2494
	.4byte	0xac
	.byte	0x1
	.4byte	0x10b31
	.4byte	0x10b38
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2495
	.byte	0x2d
	.byte	0xf4
	.4byte	.LASF2496
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10b51
	.4byte	0x10b58
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2497
	.byte	0x2d
	.byte	0xf7
	.4byte	.LASF2498
	.4byte	0x109
	.byte	0x1
	.4byte	0x10b71
	.4byte	0x10b7d
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110a2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2499
	.byte	0x2d
	.byte	0xf9
	.4byte	.LASF2500
	.4byte	0xac
	.byte	0x1
	.4byte	0x10b96
	.4byte	0x10ba7
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2501
	.byte	0x2d
	.byte	0xfa
	.4byte	.LASF2502
	.4byte	0xac
	.byte	0x1
	.4byte	0x10bc0
	.4byte	0x10bd6
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2503
	.byte	0x2d
	.byte	0xfb
	.4byte	.LASF2504
	.4byte	0xac
	.byte	0x1
	.4byte	0x10bef
	.4byte	0x10c0a
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2505
	.byte	0x2d
	.byte	0xfd
	.4byte	.LASF2506
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10c23
	.4byte	0x10c2f
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2507
	.byte	0x2d
	.byte	0xff
	.4byte	.LASF2508
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10c48
	.4byte	0x10c59
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2509
	.byte	0x2d
	.2byte	0x101
	.4byte	.LASF2510
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10c73
	.4byte	0x10c7f
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2511
	.byte	0x2d
	.2byte	0x103
	.4byte	.LASF2512
	.4byte	0xac
	.byte	0x1
	.4byte	0x10c99
	.4byte	0x10ca5
	.uleb128 0x17
	.4byte	0x110a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2513
	.byte	0x2d
	.2byte	0x105
	.4byte	.LASF2514
	.4byte	0xac
	.byte	0x1
	.4byte	0x10cbf
	.4byte	0x10cc6
	.uleb128 0x17
	.4byte	0x110a8
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2515
	.byte	0x2d
	.2byte	0x107
	.4byte	.LASF2516
	.4byte	0xac
	.byte	0x1
	.4byte	0x10ce0
	.4byte	0x10ce7
	.uleb128 0x17
	.4byte	0x110a8
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2517
	.byte	0x2d
	.2byte	0x109
	.4byte	.LASF2518
	.byte	0x1
	.4byte	0x10cfd
	.4byte	0x10d09
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11075
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2519
	.byte	0x2d
	.2byte	0x10b
	.4byte	.LASF2520
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10d23
	.4byte	0x10d2f
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2521
	.byte	0x2d
	.2byte	0x10d
	.4byte	.LASF2522
	.4byte	0xac
	.byte	0x1
	.4byte	0x10d49
	.4byte	0x10d55
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2523
	.byte	0x2d
	.2byte	0x10f
	.4byte	.LASF2524
	.byte	0x1
	.4byte	0x10d6b
	.4byte	0x10d77
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2525
	.byte	0x2d
	.2byte	0x111
	.4byte	.LASF2526
	.4byte	0xac
	.byte	0x1
	.4byte	0x10d91
	.4byte	0x10d98
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2527
	.byte	0x2d
	.2byte	0x113
	.4byte	.LASF2528
	.byte	0x1
	.4byte	0x10dae
	.4byte	0x10db5
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2529
	.byte	0x2d
	.2byte	0x115
	.4byte	.LASF2530
	.4byte	0xac
	.byte	0x1
	.4byte	0x10dcf
	.4byte	0x10dd6
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2531
	.byte	0x2d
	.2byte	0x117
	.4byte	.LASF2532
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10df0
	.4byte	0x10df7
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2533
	.byte	0x2d
	.2byte	0x119
	.4byte	.LASF2534
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x10e11
	.4byte	0x10e18
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2535
	.byte	0x2d
	.2byte	0x11a
	.4byte	.LASF2536
	.byte	0x1
	.4byte	0x10e2e
	.4byte	0x10e3a
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2537
	.byte	0x2d
	.2byte	0x11c
	.4byte	.LASF2538
	.4byte	0x110b3
	.byte	0x1
	.4byte	0x10e54
	.4byte	0x10e5b
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2539
	.byte	0x2d
	.2byte	0x11e
	.4byte	.LASF2540
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x10e75
	.4byte	0x10e7c
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF102
	.byte	0x2d
	.2byte	0x120
	.4byte	.LASF2541
	.byte	0x1
	.4byte	0x10e92
	.4byte	0x10e9f
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF94
	.byte	0x2d
	.2byte	0x122
	.4byte	.LASF2542
	.byte	0x1
	.4byte	0x10eb5
	.4byte	0x10ec2
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2543
	.byte	0x2d
	.2byte	0x124
	.4byte	.LASF2544
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10edc
	.4byte	0x10ee3
	.uleb128 0x17
	.4byte	0x110a8
	.byte	0x1
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.4byte	.LASF2545
	.byte	0x2d
	.2byte	0x127
	.4byte	.LASF2546
	.byte	0x1
	.4byte	0x10efb
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF2547
	.byte	0x2d
	.2byte	0x14b
	.4byte	.LASF2548
	.byte	0x3
	.byte	0x1
	.4byte	0x10f12
	.4byte	0x10f1e
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11075
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2549
	.byte	0x2d
	.2byte	0x14c
	.4byte	.LASF2550
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f39
	.4byte	0x10f40
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2551
	.byte	0x2d
	.2byte	0x14d
	.4byte	.LASF2552
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f5b
	.4byte	0x10f67
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2553
	.byte	0x2d
	.2byte	0x14e
	.4byte	.LASF2554
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f82
	.4byte	0x10f93
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2555
	.byte	0x2d
	.2byte	0x14f
	.4byte	.LASF2556
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10fae
	.4byte	0x10fba
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2557
	.byte	0x2d
	.2byte	0x150
	.4byte	.LASF2558
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10fd5
	.4byte	0x10fe1
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2559
	.byte	0x2d
	.2byte	0x151
	.4byte	.LASF2560
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10ffc
	.4byte	0x11008
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2561
	.byte	0x2d
	.2byte	0x152
	.4byte	.LASF2562
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11023
	.4byte	0x1102f
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2563
	.byte	0x2d
	.2byte	0x153
	.4byte	.LASF2564
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x1104a
	.4byte	0x11056
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.4byte	.LASF2565
	.byte	0x2d
	.2byte	0x154
	.4byte	.LASF2566
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x1106d
	.uleb128 0x17
	.4byte	0x11096
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1107b
	.uleb128 0xc
	.4byte	0x10202
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10660
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x11096
	.uleb128 0xa
	.4byte	0x34
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10660
	.uleb128 0x24
	.byte	0x4
	.4byte	0xebcc
	.uleb128 0xb
	.byte	0x4
	.4byte	0x15c9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x110ae
	.uleb128 0xc
	.4byte	0x10660
	.uleb128 0xc
	.4byte	0xf7
	.uleb128 0x4
	.4byte	.LASF2567
	.byte	0x20
	.byte	0x2f
	.byte	0x37
	.4byte	0x11135
	.uleb128 0x6
	.4byte	.LASF2568
	.byte	0x2f
	.byte	0x38
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2373
	.byte	0x2f
	.byte	0x39
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2569
	.byte	0x2f
	.byte	0x3a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2570
	.byte	0x2f
	.byte	0x3b
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF2571
	.byte	0x2f
	.byte	0x3c
	.4byte	0x101c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF2572
	.byte	0x2f
	.byte	0x3d
	.4byte	0x101c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF2378
	.byte	0x2f
	.byte	0x3e
	.4byte	0x11135
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF2573
	.byte	0x2f
	.byte	0x3f
	.4byte	0x11135
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x110b8
	.uleb128 0x2
	.4byte	.LASF2574
	.byte	0x2f
	.byte	0x40
	.4byte	0x110b8
	.uleb128 0x4
	.4byte	.LASF2575
	.byte	0x10
	.byte	0x2f
	.byte	0x44
	.4byte	0x1118b
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x2f
	.byte	0x45
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2576
	.byte	0x2f
	.byte	0x46
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2577
	.byte	0x2f
	.byte	0x47
	.4byte	0x11096
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2378
	.byte	0x2f
	.byte	0x48
	.4byte	0x1118b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11146
	.uleb128 0x2
	.4byte	.LASF2578
	.byte	0x2f
	.byte	0x49
	.4byte	0x11146
	.uleb128 0x2d
	.4byte	.LASF2579
	.byte	0x6c
	.byte	0x2f
	.byte	0x4c
	.4byte	0x1203b
	.uleb128 0x28
	.4byte	.LASF2441
	.byte	0x2f
	.byte	0xb6
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2442
	.byte	0x2f
	.byte	0xb7
	.4byte	0xebcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2580
	.byte	0x2f
	.byte	0xb8
	.4byte	0xebcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2581
	.byte	0x2f
	.byte	0xb9
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2450
	.byte	0x2f
	.byte	0xba
	.4byte	0x11075
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2373
	.byte	0x2f
	.byte	0xbb
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2582
	.byte	0x2f
	.byte	0xbc
	.4byte	0x11096
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2572
	.byte	0x2f
	.byte	0xbd
	.4byte	0x101c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2583
	.byte	0x2f
	.byte	0xbe
	.4byte	0x1203b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2584
	.byte	0x2f
	.byte	0xbf
	.4byte	0x12041
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2585
	.byte	0x2f
	.byte	0xc0
	.4byte	0x12047
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2576
	.byte	0x2f
	.byte	0xc1
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2586
	.byte	0x2f
	.byte	0xc3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x3
	.uleb128 0x33
	.4byte	.LASF2587
	.byte	0x2f
	.byte	0xc5
	.4byte	0x1203b
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2579
	.byte	0x2f
	.byte	0x50
	.byte	0x1
	.4byte	0x1128a
	.4byte	0x11291
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2579
	.byte	0x2f
	.byte	0x51
	.byte	0x1
	.4byte	0x112a2
	.4byte	0x112ae
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2579
	.byte	0x2f
	.byte	0x52
	.byte	0x1
	.4byte	0x112bf
	.4byte	0x112d5
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2579
	.byte	0x2f
	.byte	0x53
	.byte	0x1
	.4byte	0x112e6
	.4byte	0x11301
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2588
	.byte	0x2f
	.byte	0x55
	.byte	0x1
	.4byte	0x11312
	.4byte	0x1131f
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2457
	.byte	0x2f
	.byte	0x57
	.4byte	.LASF2589
	.4byte	0xac
	.byte	0x1
	.4byte	0x11338
	.4byte	0x11349
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2459
	.byte	0x2f
	.byte	0x5a
	.4byte	.LASF2590
	.4byte	0xac
	.byte	0x1
	.4byte	0x11362
	.4byte	0x11378
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2461
	.byte	0x2f
	.byte	0x5c
	.4byte	.LASF2591
	.byte	0x1
	.4byte	0x1138d
	.4byte	0x11399
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2463
	.byte	0x2f
	.byte	0x5e
	.4byte	.LASF2592
	.4byte	0xac
	.byte	0x1
	.4byte	0x113b2
	.4byte	0x113b9
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2465
	.byte	0x2f
	.byte	0x60
	.4byte	.LASF2593
	.4byte	0xac
	.byte	0x1
	.4byte	0x113d2
	.4byte	0x113de
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2467
	.byte	0x2f
	.byte	0x62
	.4byte	.LASF2594
	.4byte	0xac
	.byte	0x1
	.4byte	0x113f7
	.4byte	0x11403
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2469
	.byte	0x2f
	.byte	0x64
	.4byte	.LASF2595
	.4byte	0xac
	.byte	0x1
	.4byte	0x1141c
	.4byte	0x11432
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2471
	.byte	0x2f
	.byte	0x66
	.4byte	.LASF2596
	.4byte	0xac
	.byte	0x1
	.4byte	0x1144b
	.4byte	0x11457
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2473
	.byte	0x2f
	.byte	0x68
	.4byte	.LASF2597
	.4byte	0xac
	.byte	0x1
	.4byte	0x11470
	.4byte	0x1147c
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2475
	.byte	0x2f
	.byte	0x6a
	.4byte	.LASF2598
	.4byte	0xac
	.byte	0x1
	.4byte	0x11495
	.4byte	0x114ab
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2477
	.byte	0x2f
	.byte	0x6c
	.4byte	.LASF2599
	.4byte	0xac
	.byte	0x1
	.4byte	0x114c4
	.4byte	0x114d0
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2479
	.byte	0x2f
	.byte	0x6e
	.4byte	.LASF2600
	.4byte	0xac
	.byte	0x1
	.4byte	0x114e9
	.4byte	0x114ff
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2481
	.byte	0x2f
	.byte	0x70
	.4byte	.LASF2601
	.4byte	0xac
	.byte	0x1
	.4byte	0x11518
	.4byte	0x11524
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2483
	.byte	0x2f
	.byte	0x72
	.4byte	.LASF2602
	.4byte	0xac
	.byte	0x1
	.4byte	0x1153d
	.4byte	0x11544
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2485
	.byte	0x2f
	.byte	0x74
	.4byte	.LASF2603
	.4byte	0xac
	.byte	0x1
	.4byte	0x1155d
	.4byte	0x11569
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2505
	.byte	0x2f
	.byte	0x76
	.4byte	.LASF2604
	.4byte	0xe5
	.byte	0x1
	.4byte	0x11582
	.4byte	0x11593
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2507
	.byte	0x2f
	.byte	0x78
	.4byte	.LASF2605
	.4byte	0xe5
	.byte	0x1
	.4byte	0x115ac
	.4byte	0x115bd
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2509
	.byte	0x2f
	.byte	0x7a
	.4byte	.LASF2606
	.4byte	0xe5
	.byte	0x1
	.4byte	0x115d6
	.4byte	0x115e2
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2487
	.byte	0x2f
	.byte	0x7c
	.4byte	.LASF2607
	.byte	0x1
	.4byte	0x115f7
	.4byte	0x11603
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2489
	.byte	0x2f
	.byte	0x7e
	.4byte	.LASF2608
	.4byte	0xac
	.byte	0x1
	.4byte	0x1161c
	.4byte	0x11628
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2493
	.byte	0x2f
	.byte	0x80
	.4byte	.LASF2609
	.4byte	0xac
	.byte	0x1
	.4byte	0x11641
	.4byte	0x11648
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2495
	.byte	0x2f
	.byte	0x82
	.4byte	.LASF2610
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x11661
	.4byte	0x11668
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2497
	.byte	0x2f
	.byte	0x84
	.4byte	.LASF2611
	.4byte	0x109
	.byte	0x1
	.4byte	0x11681
	.4byte	0x11688
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2499
	.byte	0x2f
	.byte	0x86
	.4byte	.LASF2612
	.4byte	0xac
	.byte	0x1
	.4byte	0x116a1
	.4byte	0x116b2
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2501
	.byte	0x2f
	.byte	0x87
	.4byte	.LASF2613
	.4byte	0xac
	.byte	0x1
	.4byte	0x116cb
	.4byte	0x116e1
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2503
	.byte	0x2f
	.byte	0x88
	.4byte	.LASF2614
	.4byte	0xac
	.byte	0x1
	.4byte	0x116fa
	.4byte	0x11715
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2511
	.byte	0x2f
	.byte	0x8a
	.4byte	.LASF2615
	.4byte	0xac
	.byte	0x1
	.4byte	0x1172e
	.4byte	0x1173a
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2616
	.byte	0x2f
	.byte	0x8c
	.4byte	.LASF2617
	.byte	0x1
	.4byte	0x1174f
	.4byte	0x11756
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2618
	.byte	0x2f
	.byte	0x8e
	.4byte	.LASF2619
	.byte	0x1
	.4byte	0x1176b
	.4byte	0x1177c
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1109c
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2620
	.byte	0x2f
	.byte	0x90
	.4byte	.LASF2621
	.4byte	0xac
	.byte	0x1
	.4byte	0x11795
	.4byte	0x117a1
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2622
	.byte	0x2f
	.byte	0x92
	.4byte	.LASF2623
	.byte	0x1
	.4byte	0x117b6
	.4byte	0x117bd
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2624
	.byte	0x2f
	.byte	0x94
	.4byte	.LASF2625
	.byte	0x1
	.4byte	0x117d2
	.4byte	0x117de
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2517
	.byte	0x2f
	.byte	0x96
	.4byte	.LASF2626
	.byte	0x1
	.4byte	0x117f3
	.4byte	0x117ff
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11075
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2519
	.byte	0x2f
	.byte	0x98
	.4byte	.LASF2627
	.4byte	0xe5
	.byte	0x1
	.4byte	0x11818
	.4byte	0x11824
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2521
	.byte	0x2f
	.byte	0x9a
	.4byte	.LASF2628
	.4byte	0xac
	.byte	0x1
	.4byte	0x1183d
	.4byte	0x11849
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2523
	.byte	0x2f
	.byte	0x9c
	.4byte	.LASF2629
	.byte	0x1
	.4byte	0x1185e
	.4byte	0x1186a
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2525
	.byte	0x2f
	.byte	0x9e
	.4byte	.LASF2630
	.4byte	0xac
	.byte	0x1
	.4byte	0x11883
	.4byte	0x1188a
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2531
	.byte	0x2f
	.byte	0xa0
	.4byte	.LASF2631
	.4byte	0xe5
	.byte	0x1
	.4byte	0x118a3
	.4byte	0x118aa
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2533
	.byte	0x2f
	.byte	0xa2
	.4byte	.LASF2632
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x118c3
	.4byte	0x118ca
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2537
	.byte	0x2f
	.byte	0xa4
	.4byte	.LASF2633
	.4byte	0x110b3
	.byte	0x1
	.4byte	0x118e3
	.4byte	0x118ea
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2539
	.byte	0x2f
	.byte	0xa6
	.4byte	.LASF2634
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x11903
	.4byte	0x1190a
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF102
	.byte	0x2f
	.byte	0xa8
	.4byte	.LASF2635
	.byte	0x1
	.4byte	0x1191f
	.4byte	0x1192c
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF94
	.byte	0x2f
	.byte	0xaa
	.4byte	.LASF2636
	.byte	0x1
	.4byte	0x11941
	.4byte	0x1194e
	.uleb128 0x17
	.4byte	0x12053
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF2637
	.byte	0x2f
	.byte	0xad
	.4byte	.LASF2638
	.4byte	0xac
	.byte	0x1
	.4byte	0x11969
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF2639
	.byte	0x2f
	.byte	0xaf
	.4byte	.LASF2640
	.4byte	0xac
	.byte	0x1
	.4byte	0x11984
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF2641
	.byte	0x2f
	.byte	0xb1
	.4byte	.LASF2643
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF2545
	.byte	0x2f
	.byte	0xb3
	.4byte	.LASF2644
	.byte	0x1
	.4byte	0x119a8
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2645
	.byte	0x2f
	.byte	0xc8
	.4byte	.LASF2646
	.byte	0x3
	.byte	0x1
	.4byte	0x119be
	.4byte	0x119cf
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2647
	.byte	0x2f
	.byte	0xc9
	.4byte	.LASF2648
	.byte	0x3
	.byte	0x1
	.4byte	0x119e5
	.4byte	0x119f6
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d8b
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2649
	.byte	0x2f
	.byte	0xca
	.4byte	.LASF2650
	.byte	0x3
	.byte	0x1
	.4byte	0x11a0c
	.4byte	0x11a18
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11096
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2651
	.byte	0x2f
	.byte	0xcb
	.4byte	.LASF2652
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11a32
	.4byte	0x11a3e
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2653
	.byte	0x2f
	.byte	0xcc
	.4byte	.LASF2654
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11a58
	.4byte	0x11a64
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2655
	.byte	0x2f
	.byte	0xcd
	.4byte	.LASF2656
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11a7e
	.4byte	0x11a8a
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2657
	.byte	0x2f
	.byte	0xce
	.4byte	.LASF2658
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11aa4
	.4byte	0x11aba
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1203b
	.uleb128 0x19
	.4byte	0x1205e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2659
	.byte	0x2f
	.byte	0xcf
	.4byte	.LASF2660
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11ad4
	.4byte	0x11ae5
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2661
	.byte	0x2f
	.byte	0xd0
	.4byte	.LASF2662
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11aff
	.4byte	0x11b10
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.uleb128 0x19
	.4byte	0x101c1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2663
	.byte	0x2f
	.byte	0xd1
	.4byte	.LASF2664
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11b2a
	.4byte	0x11b45
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.uleb128 0x19
	.4byte	0x1203b
	.uleb128 0x19
	.4byte	0x1205e
	.uleb128 0x19
	.4byte	0x1205e
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2665
	.byte	0x2f
	.byte	0xd2
	.4byte	.LASF2666
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11b5f
	.4byte	0x11b7a
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.uleb128 0x19
	.4byte	0x1203b
	.uleb128 0x19
	.4byte	0x1205e
	.uleb128 0x19
	.4byte	0x1205e
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2667
	.byte	0x2f
	.byte	0xd3
	.4byte	.LASF2668
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11b94
	.4byte	0x11ba5
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.uleb128 0x19
	.4byte	0x1203b
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2669
	.byte	0x2f
	.byte	0xd4
	.4byte	.LASF2670
	.byte	0x3
	.byte	0x1
	.4byte	0x11bbb
	.4byte	0x11bc2
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2671
	.byte	0x2f
	.byte	0xd5
	.4byte	.LASF2672
	.4byte	0x1203b
	.byte	0x3
	.byte	0x1
	.4byte	0x11bdc
	.4byte	0x11be8
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1203b
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2673
	.byte	0x2f
	.byte	0xd6
	.4byte	.LASF2674
	.4byte	0x1203b
	.byte	0x3
	.byte	0x1
	.4byte	0x11c02
	.4byte	0x11c13
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12041
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2675
	.byte	0x2f
	.byte	0xd7
	.4byte	.LASF2676
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11c2d
	.4byte	0x11c3e
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1203b
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2677
	.byte	0x2f
	.byte	0xd8
	.4byte	.LASF2678
	.byte	0x3
	.byte	0x1
	.4byte	0x11c54
	.4byte	0x11c65
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1203b
	.uleb128 0x19
	.4byte	0x12041
	.byte	0
	.uleb128 0x66
	.byte	0x1
	.4byte	.LASF2679
	.byte	0x2f
	.byte	0xd9
	.4byte	.LASF2680
	.byte	0x3
	.byte	0x1
	.4byte	0x11c7d
	.uleb128 0x19
	.4byte	0x1203b
	.byte	0
	.uleb128 0x66
	.byte	0x1
	.4byte	.LASF2681
	.byte	0x2f
	.byte	0xda
	.4byte	.LASF2682
	.byte	0x3
	.byte	0x1
	.4byte	0x11c95
	.uleb128 0x19
	.4byte	0x1203b
	.byte	0
	.uleb128 0x67
	.byte	0x1
	.4byte	.LASF2683
	.byte	0x2f
	.byte	0xdb
	.4byte	.LASF2684
	.4byte	0x1203b
	.byte	0x3
	.byte	0x1
	.4byte	0x11cb6
	.uleb128 0x19
	.4byte	0x1203b
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x67
	.byte	0x1
	.4byte	.LASF2685
	.byte	0x2f
	.byte	0xdc
	.4byte	.LASF2686
	.4byte	0x1203b
	.byte	0x3
	.byte	0x1
	.4byte	0x11cd2
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2687
	.byte	0x2f
	.byte	0xdd
	.4byte	.LASF2688
	.4byte	0x1203b
	.byte	0x3
	.byte	0x1
	.4byte	0x11cec
	.4byte	0x11cf3
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2689
	.byte	0x2f
	.byte	0xde
	.4byte	.LASF2690
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11d0d
	.4byte	0x11d14
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2691
	.byte	0x2f
	.byte	0xdf
	.4byte	.LASF2692
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11d2e
	.4byte	0x11d35
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2693
	.byte	0x2f
	.byte	0xe0
	.4byte	.LASF2694
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11d4f
	.4byte	0x11d5b
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2695
	.byte	0x2f
	.byte	0xe1
	.4byte	.LASF2696
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11d75
	.4byte	0x11d7c
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2697
	.byte	0x2f
	.byte	0xe2
	.4byte	.LASF2698
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11d96
	.4byte	0x11d9d
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2699
	.byte	0x2f
	.byte	0xe3
	.4byte	.LASF2700
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11db7
	.4byte	0x11dbe
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2701
	.byte	0x2f
	.byte	0xe4
	.4byte	.LASF2702
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11dd8
	.4byte	0x11ddf
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2703
	.byte	0x2f
	.byte	0xe5
	.4byte	.LASF2704
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11df9
	.4byte	0x11e14
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x101c1
	.uleb128 0x19
	.4byte	0x12064
	.uleb128 0x19
	.4byte	0x1206a
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2705
	.byte	0x2f
	.byte	0xe6
	.4byte	.LASF2706
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11e2e
	.4byte	0x11e44
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12064
	.uleb128 0x19
	.4byte	0x1206a
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2707
	.byte	0x2f
	.byte	0xe7
	.4byte	.LASF2708
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11e5e
	.4byte	0x11e74
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12064
	.uleb128 0x19
	.4byte	0x1206a
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2709
	.byte	0x2f
	.byte	0xe8
	.4byte	.LASF2710
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11e8e
	.4byte	0x11e95
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2711
	.byte	0x2f
	.byte	0xe9
	.4byte	.LASF2712
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11eaf
	.4byte	0x11eb6
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2713
	.byte	0x2f
	.byte	0xea
	.4byte	.LASF2714
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11ed0
	.4byte	0x11ed7
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2715
	.byte	0x2f
	.byte	0xeb
	.4byte	.LASF2716
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11ef1
	.4byte	0x11ef8
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2717
	.byte	0x2f
	.byte	0xec
	.4byte	.LASF2718
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11f12
	.4byte	0x11f19
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2719
	.byte	0x2f
	.byte	0xed
	.4byte	.LASF2720
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11f33
	.4byte	0x11f3a
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2721
	.byte	0x2f
	.byte	0xee
	.4byte	.LASF2722
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11f54
	.4byte	0x11f5b
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2723
	.byte	0x2f
	.byte	0xef
	.4byte	.LASF2724
	.byte	0x3
	.byte	0x1
	.4byte	0x11f71
	.4byte	0x11f78
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2725
	.byte	0x2f
	.byte	0xf0
	.4byte	.LASF2726
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11f92
	.4byte	0x11f99
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2727
	.byte	0x2f
	.byte	0xf1
	.4byte	.LASF2728
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11fb3
	.4byte	0x11fba
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2729
	.byte	0x2f
	.byte	0xf2
	.4byte	.LASF2730
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11fd4
	.4byte	0x11fdb
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2731
	.byte	0x2f
	.byte	0xf3
	.4byte	.LASF2732
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11ff5
	.4byte	0x11ffc
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2733
	.byte	0x2f
	.byte	0xf4
	.4byte	.LASF2734
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x12016
	.4byte	0x1201d
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF2735
	.byte	0x2f
	.byte	0xf5
	.4byte	.LASF2736
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x12033
	.uleb128 0x17
	.4byte	0x1204d
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1113b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1203b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11191
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1119c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12059
	.uleb128 0xc
	.4byte	0x1119c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x101c1
	.uleb128 0xb
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x102
	.uleb128 0xb
	.byte	0x4
	.4byte	0x155c
	.uleb128 0x24
	.byte	0x4
	.4byte	0xff72
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12082
	.uleb128 0xc
	.4byte	0x155c
	.uleb128 0x9
	.4byte	0xd8
	.4byte	0x12097
	.uleb128 0xa
	.4byte	0x34
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x120a8
	.uleb128 0x23
	.4byte	0x34
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x15db
	.uleb128 0x24
	.byte	0x4
	.4byte	0x120b4
	.uleb128 0xc
	.4byte	0x15db
	.uleb128 0xb
	.byte	0x4
	.4byte	0x15d6
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x2d
	.4byte	.LASF2737
	.byte	0x1c
	.byte	0x19
	.byte	0x2c
	.4byte	0x124ab
	.uleb128 0x28
	.4byte	.LASF2738
	.byte	0x19
	.byte	0x5c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2739
	.byte	0x19
	.byte	0x5d
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2740
	.byte	0x19
	.byte	0x5e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2741
	.byte	0x19
	.byte	0x5f
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x19
	.byte	0x60
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2742
	.byte	0x19
	.byte	0x61
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2743
	.byte	0x19
	.byte	0x62
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x33
	.4byte	.LASF2744
	.byte	0x19
	.byte	0x64
	.4byte	0x124ab
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2737
	.byte	0x19
	.byte	0x2e
	.byte	0x1
	.4byte	0x12159
	.4byte	0x12160
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2737
	.byte	0x19
	.byte	0x2f
	.byte	0x1
	.4byte	0x12171
	.4byte	0x12182
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2745
	.byte	0x19
	.byte	0x30
	.byte	0x1
	.4byte	0x12193
	.4byte	0x121a0
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x19
	.byte	0x33
	.4byte	.LASF2746
	.4byte	0x29
	.byte	0x1
	.4byte	0x121b9
	.4byte	0x121c0
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x19
	.byte	0x35
	.4byte	.LASF2747
	.4byte	0x29
	.byte	0x1
	.4byte	0x121d9
	.4byte	0x121e0
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0x19
	.byte	0x37
	.4byte	.LASF2748
	.4byte	0x124cc
	.byte	0x1
	.4byte	0x121f9
	.4byte	0x12205
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0x124d2
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Add"
	.byte	0x19
	.byte	0x39
	.4byte	.LASF2749
	.byte	0x1
	.4byte	0x1221a
	.4byte	0x1222b
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x19
	.byte	0x3b
	.4byte	.LASF2750
	.byte	0x1
	.4byte	0x12240
	.4byte	0x12251
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2751
	.byte	0x19
	.byte	0x3d
	.4byte	.LASF2752
	.4byte	0xac
	.byte	0x1
	.4byte	0x1226a
	.4byte	0x12276
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2753
	.byte	0x19
	.byte	0x3f
	.4byte	.LASF2754
	.4byte	0xac
	.byte	0x1
	.4byte	0x1228f
	.4byte	0x1229b
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2755
	.byte	0x19
	.byte	0x41
	.4byte	.LASF2756
	.byte	0x1
	.4byte	0x122b0
	.4byte	0x122c1
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x19
	.byte	0x43
	.4byte	.LASF2757
	.byte	0x1
	.4byte	0x122d6
	.4byte	0x122e7
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x19
	.byte	0x45
	.4byte	.LASF2758
	.byte	0x1
	.4byte	0x122fc
	.4byte	0x12303
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x19
	.byte	0x47
	.4byte	.LASF2759
	.byte	0x1
	.4byte	0x12318
	.4byte	0x12329
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2760
	.byte	0x19
	.byte	0x49
	.4byte	.LASF2761
	.byte	0x1
	.4byte	0x1233e
	.4byte	0x12345
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2762
	.byte	0x19
	.byte	0x4b
	.4byte	.LASF2763
	.4byte	0xac
	.byte	0x1
	.4byte	0x1235e
	.4byte	0x12365
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2764
	.byte	0x19
	.byte	0x4d
	.4byte	.LASF2765
	.4byte	0xac
	.byte	0x1
	.4byte	0x1237e
	.4byte	0x12385
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x19
	.byte	0x4f
	.4byte	.LASF2766
	.byte	0x1
	.4byte	0x1239a
	.4byte	0x123a6
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2767
	.byte	0x19
	.byte	0x51
	.4byte	.LASF2768
	.byte	0x1
	.4byte	0x123bb
	.4byte	0x123c7
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2769
	.byte	0x19
	.byte	0x53
	.4byte	.LASF2770
	.4byte	0xac
	.byte	0x1
	.4byte	0x123e0
	.4byte	0x123e7
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2771
	.byte	0x19
	.byte	0x55
	.4byte	.LASF2772
	.4byte	0xac
	.byte	0x1
	.4byte	0x12400
	.4byte	0x12411
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2771
	.byte	0x19
	.byte	0x57
	.4byte	.LASF2773
	.4byte	0xac
	.byte	0x1
	.4byte	0x1242a
	.4byte	0x12436
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2771
	.byte	0x19
	.byte	0x59
	.4byte	.LASF2774
	.4byte	0xac
	.byte	0x1
	.4byte	0x1244f
	.4byte	0x12460
	.uleb128 0x17
	.4byte	0x124c1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF60
	.byte	0x19
	.byte	0x66
	.4byte	.LASF2775
	.byte	0x3
	.byte	0x1
	.4byte	0x12476
	.4byte	0x12487
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x63
	.byte	0x1
	.4byte	.LASF2776
	.byte	0x19
	.byte	0x67
	.4byte	.LASF2777
	.byte	0x3
	.byte	0x1
	.4byte	0x12499
	.uleb128 0x17
	.4byte	0x124bb
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xac
	.4byte	0x124bb
	.uleb128 0xa
	.4byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x120c5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x124c7
	.uleb128 0xc
	.4byte	0x120c5
	.uleb128 0x24
	.byte	0x4
	.4byte	0x120c5
	.uleb128 0x24
	.byte	0x4
	.4byte	0x124d8
	.uleb128 0xc
	.4byte	0x120c5
	.uleb128 0x2
	.4byte	.LASF2778
	.byte	0x30
	.byte	0x28
	.4byte	0x124e8
	.uleb128 0x4
	.4byte	.LASF2779
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0x12a89
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0xff5b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0x12a89
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0x12a9d
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0x12557
	.4byte	0x12563
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0x12574
	.4byte	0x12580
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12aa8
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0x12591
	.4byte	0x1259e
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF2780
	.byte	0x1
	.4byte	0x125b3
	.4byte	0x125ba
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF2781
	.4byte	0xac
	.byte	0x1
	.4byte	0x125d4
	.4byte	0x125db
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF2782
	.4byte	0xac
	.byte	0x1
	.4byte	0x125f5
	.4byte	0x125fc
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF2783
	.byte	0x1
	.4byte	0x12612
	.4byte	0x1261e
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF2784
	.4byte	0xac
	.byte	0x1
	.4byte	0x12638
	.4byte	0x1263f
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF2785
	.4byte	0x29
	.byte	0x1
	.4byte	0x12658
	.4byte	0x1265f
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF2786
	.4byte	0x29
	.byte	0x1
	.4byte	0x12678
	.4byte	0x1267f
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF2787
	.4byte	0x29
	.byte	0x1
	.4byte	0x12699
	.4byte	0x126a0
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF2788
	.4byte	0x12ab9
	.byte	0x1
	.4byte	0x126ba
	.4byte	0x126c6
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12aa8
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF2789
	.4byte	0x12076
	.byte	0x1
	.4byte	0x126e0
	.4byte	0x126ec
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF2790
	.4byte	0x1109c
	.byte	0x1
	.4byte	0x12706
	.4byte	0x12712
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF2791
	.byte	0x1
	.4byte	0x12728
	.4byte	0x1272f
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF2792
	.byte	0x1
	.4byte	0x12745
	.4byte	0x12751
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF2793
	.byte	0x1
	.4byte	0x12767
	.4byte	0x12778
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF2794
	.byte	0x1
	.4byte	0x1278e
	.4byte	0x1279f
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF2795
	.byte	0x1
	.4byte	0x127b5
	.4byte	0x127c1
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF2796
	.byte	0x1
	.4byte	0x127d7
	.4byte	0x127e8
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x12076
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF2797
	.byte	0x1
	.4byte	0x127fe
	.4byte	0x1280f
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x12abf
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF2798
	.4byte	0xff5b
	.byte	0x1
	.4byte	0x12829
	.4byte	0x12830
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF2799
	.4byte	0xff6c
	.byte	0x1
	.4byte	0x1284a
	.4byte	0x12851
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF2800
	.4byte	0x1109c
	.byte	0x1
	.4byte	0x1286b
	.4byte	0x12872
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF2801
	.4byte	0xac
	.byte	0x1
	.4byte	0x1288c
	.4byte	0x12898
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12076
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF2802
	.4byte	0xac
	.byte	0x1
	.4byte	0x128b2
	.4byte	0x128be
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12aa8
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF2803
	.4byte	0xac
	.byte	0x1
	.4byte	0x128d8
	.4byte	0x128e4
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12076
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF2804
	.4byte	0xac
	.byte	0x1
	.4byte	0x128fe
	.4byte	0x1290f
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12076
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF2805
	.4byte	0xac
	.byte	0x1
	.4byte	0x12929
	.4byte	0x12935
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12076
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF2806
	.4byte	0xff5b
	.byte	0x1
	.4byte	0x1294f
	.4byte	0x1295b
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12076
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF2807
	.4byte	0xac
	.byte	0x1
	.4byte	0x12975
	.4byte	0x1297c
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF2808
	.4byte	0xac
	.byte	0x1
	.4byte	0x12996
	.4byte	0x129a2
	.uleb128 0x17
	.4byte	0x12ab3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xff6c
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF2809
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x129bc
	.4byte	0x129c8
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF2810
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x129e2
	.4byte	0x129ee
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12076
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF2811
	.byte	0x1
	.4byte	0x12a04
	.4byte	0x12a10
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12ac5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF2812
	.byte	0x1
	.4byte	0x12a26
	.4byte	0x12a3c
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x12ac5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF2813
	.byte	0x1
	.4byte	0x12a52
	.4byte	0x12a5e
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12ab9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF2814
	.byte	0x1
	.4byte	0x12a73
	.4byte	0x12a7f
	.uleb128 0x17
	.4byte	0x12aa2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0xebcc
	.byte	0
	.uleb128 0x53
	.4byte	0xac
	.4byte	0x12a9d
	.uleb128 0x19
	.4byte	0xff6c
	.uleb128 0x19
	.4byte	0xff6c
	.byte	0
	.uleb128 0x54
	.4byte	0xebcc
	.uleb128 0xb
	.byte	0x4
	.4byte	0x124e8
	.uleb128 0x24
	.byte	0x4
	.4byte	0x12aae
	.uleb128 0xc
	.4byte	0x124e8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12aae
	.uleb128 0x24
	.byte	0x4
	.4byte	0x124e8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1253b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12530
	.uleb128 0xc
	.4byte	0xff5b
	.uleb128 0x2d
	.4byte	.LASF2815
	.byte	0x28
	.byte	0x31
	.byte	0x2a
	.4byte	0x12b96
	.uleb128 0x62
	.4byte	0xebcc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF2816
	.byte	0x31
	.byte	0x39
	.4byte	0x12d11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2817
	.byte	0x31
	.byte	0x3a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2815
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.4byte	0x12b14
	.4byte	0x12b1b
	.uleb128 0x17
	.4byte	0x12d17
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2818
	.byte	0x31
	.byte	0x2f
	.byte	0x1
	.4byte	0x12b2c
	.4byte	0x12b39
	.uleb128 0x17
	.4byte	0x12d17
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x31
	.byte	0x32
	.4byte	.LASF2819
	.4byte	0x29
	.byte	0x1
	.4byte	0x12b52
	.4byte	0x12b59
	.uleb128 0x17
	.4byte	0x12d1d
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x31
	.byte	0x34
	.4byte	.LASF2820
	.4byte	0x29
	.byte	0x1
	.4byte	0x12b72
	.4byte	0x12b79
	.uleb128 0x17
	.4byte	0x12d1d
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF2821
	.byte	0x31
	.byte	0x36
	.4byte	.LASF2822
	.4byte	0x12d28
	.byte	0x1
	.4byte	0x12b8e
	.uleb128 0x17
	.4byte	0x12d1d
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF2823
	.byte	0x30
	.byte	0x31
	.byte	0x3d
	.4byte	0x12d11
	.uleb128 0x28
	.4byte	.LASF2824
	.byte	0x31
	.byte	0x4f
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2816
	.byte	0x31
	.byte	0x50
	.4byte	0x12d33
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2825
	.byte	0x31
	.byte	0x51
	.4byte	0x120c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2823
	.byte	0x31
	.byte	0x3f
	.byte	0x1
	.4byte	0x12be0
	.4byte	0x12be7
	.uleb128 0x17
	.4byte	0x12d11
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2826
	.byte	0x31
	.byte	0x41
	.4byte	.LASF2827
	.byte	0x1
	.4byte	0x12bfc
	.4byte	0x12c08
	.uleb128 0x17
	.4byte	0x12d11
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"Num"
	.byte	0x31
	.byte	0x43
	.4byte	.LASF2828
	.4byte	0xac
	.byte	0x1
	.4byte	0x12c21
	.4byte	0x12c28
	.uleb128 0x17
	.4byte	0x12d28
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x31
	.byte	0x44
	.4byte	.LASF2829
	.4byte	0x29
	.byte	0x1
	.4byte	0x12c41
	.4byte	0x12c48
	.uleb128 0x17
	.4byte	0x12d28
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x31
	.byte	0x45
	.4byte	.LASF2830
	.4byte	0x29
	.byte	0x1
	.4byte	0x12c61
	.4byte	0x12c68
	.uleb128 0x17
	.4byte	0x12d28
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x31
	.byte	0x47
	.4byte	.LASF2831
	.4byte	0x12d1d
	.byte	0x1
	.4byte	0x12c81
	.4byte	0x12c8d
	.uleb128 0x17
	.4byte	0x12d28
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2832
	.byte	0x31
	.byte	0x49
	.4byte	.LASF2833
	.4byte	0x12d1d
	.byte	0x1
	.4byte	0x12ca6
	.4byte	0x12cb2
	.uleb128 0x17
	.4byte	0x12d11
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2834
	.byte	0x31
	.byte	0x4a
	.4byte	.LASF2835
	.byte	0x1
	.4byte	0x12cc7
	.4byte	0x12cd3
	.uleb128 0x17
	.4byte	0x12d11
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12d1d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2836
	.byte	0x31
	.byte	0x4b
	.4byte	.LASF2837
	.4byte	0x12d1d
	.byte	0x1
	.4byte	0x12cec
	.4byte	0x12cf8
	.uleb128 0x17
	.4byte	0x12d11
	.byte	0x1
	.uleb128 0x19
	.4byte	0x12d1d
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF291
	.byte	0x31
	.byte	0x4c
	.4byte	.LASF2838
	.byte	0x1
	.4byte	0x12d09
	.uleb128 0x17
	.4byte	0x12d11
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12b96
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12ad0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12d23
	.uleb128 0xc
	.4byte	0x12ad0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12d2e
	.uleb128 0xc
	.4byte	0x12b96
	.uleb128 0x2d
	.4byte	.LASF2839
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0x132d4
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0x132d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0x132da
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0x132f9
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0x12da2
	.4byte	0x12dae
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0x12dbf
	.4byte	0x12dcb
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13304
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0x12ddc
	.4byte	0x12de9
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF2840
	.byte	0x1
	.4byte	0x12dfe
	.4byte	0x12e05
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF2841
	.4byte	0xac
	.byte	0x1
	.4byte	0x12e1f
	.4byte	0x12e26
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF2842
	.4byte	0xac
	.byte	0x1
	.4byte	0x12e40
	.4byte	0x12e47
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF2843
	.byte	0x1
	.4byte	0x12e5d
	.4byte	0x12e69
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF2844
	.4byte	0xac
	.byte	0x1
	.4byte	0x12e83
	.4byte	0x12e8a
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF2845
	.4byte	0x29
	.byte	0x1
	.4byte	0x12ea3
	.4byte	0x12eaa
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF2846
	.4byte	0x29
	.byte	0x1
	.4byte	0x12ec3
	.4byte	0x12eca
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF2847
	.4byte	0x29
	.byte	0x1
	.4byte	0x12ee4
	.4byte	0x12eeb
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF2848
	.4byte	0x13315
	.byte	0x1
	.4byte	0x12f05
	.4byte	0x12f11
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13304
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF2849
	.4byte	0x1331b
	.byte	0x1
	.4byte	0x12f2b
	.4byte	0x12f37
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF2850
	.4byte	0x13321
	.byte	0x1
	.4byte	0x12f51
	.4byte	0x12f5d
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF2851
	.byte	0x1
	.4byte	0x12f73
	.4byte	0x12f7a
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF2852
	.byte	0x1
	.4byte	0x12f90
	.4byte	0x12f9c
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF2853
	.byte	0x1
	.4byte	0x12fb2
	.4byte	0x12fc3
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF2854
	.byte	0x1
	.4byte	0x12fd9
	.4byte	0x12fea
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF2855
	.byte	0x1
	.4byte	0x13000
	.4byte	0x1300c
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF2856
	.byte	0x1
	.4byte	0x13022
	.4byte	0x13033
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1331b
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF2857
	.byte	0x1
	.4byte	0x13049
	.4byte	0x1305a
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x13327
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF2858
	.4byte	0x132d4
	.byte	0x1
	.4byte	0x13074
	.4byte	0x1307b
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF2859
	.4byte	0x132ee
	.byte	0x1
	.4byte	0x13095
	.4byte	0x1309c
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF2860
	.4byte	0x13321
	.byte	0x1
	.4byte	0x130b6
	.4byte	0x130bd
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF2861
	.4byte	0xac
	.byte	0x1
	.4byte	0x130d7
	.4byte	0x130e3
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1331b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF2862
	.4byte	0xac
	.byte	0x1
	.4byte	0x130fd
	.4byte	0x13109
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13304
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF2863
	.4byte	0xac
	.byte	0x1
	.4byte	0x13123
	.4byte	0x1312f
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1331b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF2864
	.4byte	0xac
	.byte	0x1
	.4byte	0x13149
	.4byte	0x1315a
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1331b
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF2865
	.4byte	0xac
	.byte	0x1
	.4byte	0x13174
	.4byte	0x13180
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1331b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF2866
	.4byte	0x132d4
	.byte	0x1
	.4byte	0x1319a
	.4byte	0x131a6
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1331b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF2867
	.4byte	0xac
	.byte	0x1
	.4byte	0x131c0
	.4byte	0x131c7
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF2868
	.4byte	0xac
	.byte	0x1
	.4byte	0x131e1
	.4byte	0x131ed
	.uleb128 0x17
	.4byte	0x1330f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x132ee
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF2869
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x13207
	.4byte	0x13213
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF2870
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x1322d
	.4byte	0x13239
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1331b
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF2871
	.byte	0x1
	.4byte	0x1324f
	.4byte	0x1325b
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1332d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF2872
	.byte	0x1
	.4byte	0x13271
	.4byte	0x13287
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1332d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF2873
	.byte	0x1
	.4byte	0x1329d
	.4byte	0x132a9
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13315
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF2874
	.byte	0x1
	.4byte	0x132be
	.4byte	0x132ca
	.uleb128 0x17
	.4byte	0x132fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0x12d17
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12d17
	.uleb128 0x53
	.4byte	0xac
	.4byte	0x132ee
	.uleb128 0x19
	.4byte	0x132ee
	.uleb128 0x19
	.4byte	0x132ee
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x132f4
	.uleb128 0xc
	.4byte	0x12d17
	.uleb128 0x54
	.4byte	0x12d17
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12d33
	.uleb128 0x24
	.byte	0x4
	.4byte	0x1330a
	.uleb128 0xc
	.4byte	0x12d33
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1330a
	.uleb128 0x24
	.byte	0x4
	.4byte	0x12d33
	.uleb128 0x24
	.byte	0x4
	.4byte	0x132f4
	.uleb128 0x24
	.byte	0x4
	.4byte	0x12d17
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12d86
	.uleb128 0xb
	.byte	0x4
	.4byte	0x12d7b
	.uleb128 0x2d
	.4byte	.LASF2875
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0x138d4
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0x94ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0x138d4
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0x138e8
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0x133a2
	.4byte	0x133ae
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0x133bf
	.4byte	0x133cb
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x138f3
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0x133dc
	.4byte	0x133e9
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF2876
	.byte	0x1
	.4byte	0x133fe
	.4byte	0x13405
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF2877
	.4byte	0xac
	.byte	0x1
	.4byte	0x1341f
	.4byte	0x13426
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF2878
	.4byte	0xac
	.byte	0x1
	.4byte	0x13440
	.4byte	0x13447
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF2879
	.byte	0x1
	.4byte	0x1345d
	.4byte	0x13469
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF2880
	.4byte	0xac
	.byte	0x1
	.4byte	0x13483
	.4byte	0x1348a
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF2881
	.4byte	0x29
	.byte	0x1
	.4byte	0x134a3
	.4byte	0x134aa
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF2882
	.4byte	0x29
	.byte	0x1
	.4byte	0x134c3
	.4byte	0x134ca
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF2883
	.4byte	0x29
	.byte	0x1
	.4byte	0x134e4
	.4byte	0x134eb
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF2884
	.4byte	0x13904
	.byte	0x1
	.4byte	0x13505
	.4byte	0x13511
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x138f3
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF2885
	.4byte	0x94ce
	.byte	0x1
	.4byte	0x1352b
	.4byte	0x13537
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF2886
	.4byte	0x1390a
	.byte	0x1
	.4byte	0x13551
	.4byte	0x1355d
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF2887
	.byte	0x1
	.4byte	0x13573
	.4byte	0x1357a
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF2888
	.byte	0x1
	.4byte	0x13590
	.4byte	0x1359c
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF2889
	.byte	0x1
	.4byte	0x135b2
	.4byte	0x135c3
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF2890
	.byte	0x1
	.4byte	0x135d9
	.4byte	0x135ea
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF2891
	.byte	0x1
	.4byte	0x13600
	.4byte	0x1360c
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF2892
	.byte	0x1
	.4byte	0x13622
	.4byte	0x13633
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF2893
	.byte	0x1
	.4byte	0x13649
	.4byte	0x1365a
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x13910
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF2894
	.4byte	0x94ac
	.byte	0x1
	.4byte	0x13674
	.4byte	0x1367b
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF2895
	.4byte	0x94b2
	.byte	0x1
	.4byte	0x13695
	.4byte	0x1369c
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF2896
	.4byte	0x1390a
	.byte	0x1
	.4byte	0x136b6
	.4byte	0x136bd
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF2897
	.4byte	0xac
	.byte	0x1
	.4byte	0x136d7
	.4byte	0x136e3
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF2898
	.4byte	0xac
	.byte	0x1
	.4byte	0x136fd
	.4byte	0x13709
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x138f3
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF2899
	.4byte	0xac
	.byte	0x1
	.4byte	0x13723
	.4byte	0x1372f
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF2900
	.4byte	0xac
	.byte	0x1
	.4byte	0x13749
	.4byte	0x1375a
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF2901
	.4byte	0xac
	.byte	0x1
	.4byte	0x13774
	.4byte	0x13780
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF2902
	.4byte	0x94ac
	.byte	0x1
	.4byte	0x1379a
	.4byte	0x137a6
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF2903
	.4byte	0xac
	.byte	0x1
	.4byte	0x137c0
	.4byte	0x137c7
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF2904
	.4byte	0xac
	.byte	0x1
	.4byte	0x137e1
	.4byte	0x137ed
	.uleb128 0x17
	.4byte	0x138fe
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94b2
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF2905
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x13807
	.4byte	0x13813
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF2906
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x1382d
	.4byte	0x13839
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF2907
	.byte	0x1
	.4byte	0x1384f
	.4byte	0x1385b
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13916
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF2908
	.byte	0x1
	.4byte	0x13871
	.4byte	0x13887
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x13916
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF2909
	.byte	0x1
	.4byte	0x1389d
	.4byte	0x138a9
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13904
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF2910
	.byte	0x1
	.4byte	0x138be
	.4byte	0x138ca
	.uleb128 0x17
	.4byte	0x138ed
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0x8e0e
	.byte	0
	.uleb128 0x53
	.4byte	0xac
	.4byte	0x138e8
	.uleb128 0x19
	.4byte	0x94b2
	.uleb128 0x19
	.4byte	0x94b2
	.byte	0
	.uleb128 0x54
	.4byte	0x8e0e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13333
	.uleb128 0x24
	.byte	0x4
	.4byte	0x138f9
	.uleb128 0xc
	.4byte	0x13333
	.uleb128 0xb
	.byte	0x4
	.4byte	0x138f9
	.uleb128 0x24
	.byte	0x4
	.4byte	0x13333
	.uleb128 0x24
	.byte	0x4
	.4byte	0x8e0e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13386
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1337b
	.uleb128 0x2d
	.4byte	.LASF2911
	.byte	0x2c
	.byte	0x32
	.byte	0x28
	.4byte	0x13988
	.uleb128 0x62
	.4byte	0x13333
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF2739
	.byte	0x32
	.byte	0x30
	.4byte	0x120c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x32
	.byte	0x2b
	.4byte	.LASF2912
	.byte	0x1
	.4byte	0x13955
	.4byte	0x1395c
	.uleb128 0x17
	.4byte	0x13988
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF2913
	.byte	0x32
	.byte	0x2d
	.4byte	.LASF2914
	.4byte	0xac
	.byte	0x1
	.4byte	0x13971
	.uleb128 0x17
	.4byte	0x13988
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1391c
	.uleb128 0x2d
	.4byte	.LASF2915
	.byte	0x8
	.byte	0x10
	.byte	0x30
	.4byte	0x13a5a
	.uleb128 0x4b
	.string	"key"
	.byte	0x10
	.byte	0x3d
	.4byte	0x12d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2916
	.byte	0x10
	.byte	0x3e
	.4byte	0x12d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2917
	.byte	0x10
	.byte	0x34
	.4byte	.LASF2918
	.4byte	0x12076
	.byte	0x1
	.4byte	0x139d1
	.4byte	0x139d8
	.uleb128 0x17
	.4byte	0x13a5a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2919
	.byte	0x10
	.byte	0x35
	.4byte	.LASF2920
	.4byte	0x12076
	.byte	0x1
	.4byte	0x139f1
	.4byte	0x139f8
	.uleb128 0x17
	.4byte	0x13a5a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x10
	.byte	0x37
	.4byte	.LASF2921
	.4byte	0x29
	.byte	0x1
	.4byte	0x13a11
	.4byte	0x13a18
	.uleb128 0x17
	.4byte	0x13a5a
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x10
	.byte	0x38
	.4byte	.LASF2922
	.4byte	0x29
	.byte	0x1
	.4byte	0x13a31
	.4byte	0x13a38
	.uleb128 0x17
	.4byte	0x13a5a
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF493
	.byte	0x10
	.byte	0x3a
	.4byte	.LASF2923
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x13a4d
	.uleb128 0x17
	.4byte	0x13a5a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13a65
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13a60
	.uleb128 0xc
	.4byte	0x1398e
	.uleb128 0x24
	.byte	0x4
	.4byte	0x13a6b
	.uleb128 0xc
	.4byte	0x1398e
	.uleb128 0x2d
	.4byte	.LASF2924
	.byte	0x10
	.byte	0x5
	.byte	0x5c
	.4byte	0x14011
	.uleb128 0x4b
	.string	"num"
	.byte	0x5
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x5
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x92
	.4byte	0x14011
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0x5
	.byte	0x5f
	.4byte	0x14017
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x60
	.4byte	0x1402b
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.4byte	0x13adf
	.4byte	0x13aeb
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.4byte	0x13afc
	.4byte	0x13b08
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x14036
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1418
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.4byte	0x13b19
	.4byte	0x13b26
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF2925
	.byte	0x1
	.4byte	0x13b3b
	.4byte	0x13b42
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Num"
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF2926
	.4byte	0xac
	.byte	0x1
	.4byte	0x13b5c
	.4byte	0x13b63
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1420
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF2927
	.4byte	0xac
	.byte	0x1
	.4byte	0x13b7d
	.4byte	0x13b84
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF2928
	.byte	0x1
	.4byte	0x13b9a
	.4byte	0x13ba6
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1424
	.byte	0x5
	.2byte	0x151
	.4byte	.LASF2929
	.4byte	0xac
	.byte	0x1
	.4byte	0x13bc0
	.4byte	0x13bc7
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xee
	.4byte	.LASF2930
	.4byte	0x29
	.byte	0x1
	.4byte	0x13be0
	.4byte	0x13be7
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF2931
	.4byte	0x29
	.byte	0x1
	.4byte	0x13c00
	.4byte	0x13c07
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1430
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF2932
	.4byte	0x29
	.byte	0x1
	.4byte	0x13c21
	.4byte	0x13c28
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.2byte	0x21d
	.4byte	.LASF2933
	.4byte	0x14047
	.byte	0x1
	.4byte	0x13c42
	.4byte	0x13c4e
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x14036
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x239
	.4byte	.LASF2934
	.4byte	0x1404d
	.byte	0x1
	.4byte	0x13c68
	.4byte	0x13c74
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.2byte	0x249
	.4byte	.LASF2935
	.4byte	0x14053
	.byte	0x1
	.4byte	0x13c8e
	.4byte	0x13c9a
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1435
	.byte	0x5
	.2byte	0x15d
	.4byte	.LASF2936
	.byte	0x1
	.4byte	0x13cb0
	.4byte	0x13cb7
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x170
	.4byte	.LASF2937
	.byte	0x1
	.4byte	0x13ccd
	.4byte	0x13cd9
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1437
	.byte	0x5
	.2byte	0x19c
	.4byte	.LASF2938
	.byte	0x1
	.4byte	0x13cef
	.4byte	0x13d00
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1440
	.byte	0x5
	.2byte	0x129
	.4byte	.LASF2939
	.byte	0x1
	.4byte	0x13d16
	.4byte	0x13d27
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1c5
	.4byte	.LASF2940
	.byte	0x1
	.4byte	0x13d3d
	.4byte	0x13d49
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1442
	.byte	0x5
	.2byte	0x1de
	.4byte	.LASF2941
	.byte	0x1
	.4byte	0x13d5f
	.4byte	0x13d70
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1404d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1445
	.byte	0x5
	.2byte	0x1ff
	.4byte	.LASF2942
	.byte	0x1
	.4byte	0x13d86
	.4byte	0x13d97
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x14059
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x25c
	.4byte	.LASF2943
	.4byte	0x14011
	.byte	0x1
	.4byte	0x13db1
	.4byte	0x13db8
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"Ptr"
	.byte	0x5
	.2byte	0x26c
	.4byte	.LASF2944
	.4byte	0x13a5a
	.byte	0x1
	.4byte	0x13dd2
	.4byte	0x13dd9
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1450
	.byte	0x5
	.2byte	0x278
	.4byte	.LASF2945
	.4byte	0x14053
	.byte	0x1
	.4byte	0x13df3
	.4byte	0x13dfa
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x28e
	.4byte	.LASF2946
	.4byte	0xac
	.byte	0x1
	.4byte	0x13e14
	.4byte	0x13e20
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1404d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x2d6
	.4byte	.LASF2947
	.4byte	0xac
	.byte	0x1
	.4byte	0x13e3a
	.4byte	0x13e46
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x14036
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1455
	.byte	0x5
	.2byte	0x2ee
	.4byte	.LASF2948
	.4byte	0xac
	.byte	0x1
	.4byte	0x13e60
	.4byte	0x13e6c
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1404d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.2byte	0x2af
	.4byte	.LASF2949
	.4byte	0xac
	.byte	0x1
	.4byte	0x13e86
	.4byte	0x13e97
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1404d
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1459
	.byte	0x5
	.2byte	0x301
	.4byte	.LASF2950
	.4byte	0xac
	.byte	0x1
	.4byte	0x13eb1
	.4byte	0x13ebd
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1404d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x316
	.4byte	.LASF2951
	.4byte	0x14011
	.byte	0x1
	.4byte	0x13ed7
	.4byte	0x13ee3
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1404d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1462
	.byte	0x5
	.2byte	0x32c
	.4byte	.LASF2952
	.4byte	0xac
	.byte	0x1
	.4byte	0x13efd
	.4byte	0x13f04
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1464
	.byte	0x5
	.2byte	0x344
	.4byte	.LASF2953
	.4byte	0xac
	.byte	0x1
	.4byte	0x13f1e
	.4byte	0x13f2a
	.uleb128 0x17
	.4byte	0x14041
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13a5a
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1466
	.byte	0x5
	.2byte	0x359
	.4byte	.LASF2954
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x13f44
	.4byte	0x13f50
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF1468
	.byte	0x5
	.2byte	0x376
	.4byte	.LASF2955
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x13f6a
	.4byte	0x13f76
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1404d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1470
	.byte	0x5
	.2byte	0x38a
	.4byte	.LASF2956
	.byte	0x1
	.4byte	0x13f8c
	.4byte	0x13f98
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1405f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1472
	.byte	0x5
	.2byte	0x39c
	.4byte	.LASF2957
	.byte	0x1
	.4byte	0x13fae
	.4byte	0x13fc4
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1405f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1474
	.byte	0x5
	.2byte	0x3b7
	.4byte	.LASF2958
	.byte	0x1
	.4byte	0x13fda
	.4byte	0x13fe6
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x14047
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1476
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF2959
	.byte	0x1
	.4byte	0x13ffb
	.4byte	0x14007
	.uleb128 0x17
	.4byte	0x14030
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x52
	.4byte	.LASF57
	.4byte	0x1398e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1398e
	.uleb128 0x53
	.4byte	0xac
	.4byte	0x1402b
	.uleb128 0x19
	.4byte	0x13a5a
	.uleb128 0x19
	.4byte	0x13a5a
	.byte	0
	.uleb128 0x54
	.4byte	0x1398e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13a70
	.uleb128 0x24
	.byte	0x4
	.4byte	0x1403c
	.uleb128 0xc
	.4byte	0x13a70
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1403c
	.uleb128 0x24
	.byte	0x4
	.4byte	0x13a70
	.uleb128 0x24
	.byte	0x4
	.4byte	0x13a60
	.uleb128 0x24
	.byte	0x4
	.4byte	0x1398e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13ac3
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13ab8
	.uleb128 0x2d
	.4byte	.LASF2960
	.byte	0x2c
	.byte	0x10
	.byte	0x41
	.4byte	0x148cd
	.uleb128 0x28
	.4byte	.LASF2961
	.byte	0x10
	.byte	0x9b
	.4byte	0x13a70
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2962
	.byte	0x10
	.byte	0x9c
	.4byte	0x120c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x33
	.4byte	.LASF2963
	.byte	0x10
	.byte	0x9e
	.4byte	0x12b96
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF2964
	.byte	0x10
	.byte	0x9f
	.4byte	0x12b96
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2960
	.byte	0x10
	.byte	0x43
	.byte	0x1
	.4byte	0x140bc
	.4byte	0x140c3
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2960
	.byte	0x10
	.byte	0x44
	.byte	0x1
	.4byte	0x140d4
	.4byte	0x140e0
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x148d3
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2965
	.byte	0x10
	.byte	0x45
	.byte	0x1
	.4byte	0x140f1
	.4byte	0x140fe
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1422
	.byte	0x10
	.byte	0x48
	.4byte	.LASF2966
	.byte	0x1
	.4byte	0x14113
	.4byte	0x1411f
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2967
	.byte	0x10
	.byte	0x4a
	.4byte	.LASF2968
	.byte	0x1
	.4byte	0x14134
	.4byte	0x14140
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0x10
	.byte	0x4c
	.4byte	.LASF2969
	.4byte	0x148de
	.byte	0x1
	.4byte	0x14159
	.4byte	0x14165
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x148d3
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1789
	.byte	0x10
	.byte	0x4e
	.4byte	.LASF2970
	.byte	0x1
	.4byte	0x1417a
	.4byte	0x14186
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x148d3
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2971
	.byte	0x10
	.byte	0x50
	.4byte	.LASF2972
	.byte	0x1
	.4byte	0x1419b
	.4byte	0x141a7
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x148de
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2973
	.byte	0x10
	.byte	0x52
	.4byte	.LASF2974
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x141c0
	.4byte	0x141cc
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x148e4
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2975
	.byte	0x10
	.byte	0x54
	.4byte	.LASF2976
	.byte	0x1
	.4byte	0x141e1
	.4byte	0x141ed
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0x148ea
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x10
	.byte	0x56
	.4byte	.LASF2977
	.byte	0x1
	.4byte	0x14202
	.4byte	0x14209
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1825
	.byte	0x10
	.byte	0x58
	.4byte	.LASF2978
	.byte	0x1
	.4byte	0x1421e
	.4byte	0x14225
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x10
	.byte	0x5a
	.4byte	.LASF2979
	.4byte	0x29
	.byte	0x1
	.4byte	0x1423e
	.4byte	0x14245
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x10
	.byte	0x5b
	.4byte	.LASF2980
	.4byte	0x29
	.byte	0x1
	.4byte	0x1425e
	.4byte	0x14265
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Set"
	.byte	0x10
	.byte	0x5d
	.4byte	.LASF2981
	.byte	0x1
	.4byte	0x1427a
	.4byte	0x1428b
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2982
	.byte	0x10
	.byte	0x5e
	.4byte	.LASF2983
	.byte	0x1
	.4byte	0x142a0
	.4byte	0x142b1
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2984
	.byte	0x10
	.byte	0x5f
	.4byte	.LASF2985
	.byte	0x1
	.4byte	0x142c6
	.4byte	0x142d7
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2986
	.byte	0x10
	.byte	0x60
	.4byte	.LASF2987
	.byte	0x1
	.4byte	0x142ec
	.4byte	0x142fd
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2988
	.byte	0x10
	.byte	0x61
	.4byte	.LASF2989
	.byte	0x1
	.4byte	0x14312
	.4byte	0x14323
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2990
	.byte	0x10
	.byte	0x62
	.4byte	.LASF2991
	.byte	0x1
	.4byte	0x14338
	.4byte	0x14349
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x3d48
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2992
	.byte	0x10
	.byte	0x63
	.4byte	.LASF2993
	.byte	0x1
	.4byte	0x1435e
	.4byte	0x1436f
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x685f
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2994
	.byte	0x10
	.byte	0x64
	.4byte	.LASF2995
	.byte	0x1
	.4byte	0x14384
	.4byte	0x14395
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x148fb
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2996
	.byte	0x10
	.byte	0x65
	.4byte	.LASF2997
	.byte	0x1
	.4byte	0x143aa
	.4byte	0x143bb
	.uleb128 0x17
	.4byte	0x148cd
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2998
	.byte	0x10
	.byte	0x68
	.4byte	.LASF2999
	.4byte	0xe5
	.byte	0x1
	.4byte	0x143d4
	.4byte	0x143e5
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF3000
	.byte	0x10
	.byte	0x69
	.4byte	.LASF3001
	.4byte	0x109
	.byte	0x1
	.4byte	0x143fe
	.4byte	0x1440f
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF3002
	.byte	0x10
	.byte	0x6a
	.4byte	.LASF3003
	.4byte	0xac
	.byte	0x1
	.4byte	0x14428
	.4byte	0x14439
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF3004
	.byte	0x10
	.byte	0x6b
	.4byte	.LASF3005
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x14452
	.4byte	0x14463
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF3006
	.byte	0x10
	.byte	0x6c
	.4byte	.LASF3007
	.4byte	0x270c
	.byte	0x1
	.4byte	0x1447c
	.4byte	0x1448d
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF3008
	.byte	0x10
	.byte	0x6d
	.4byte	.LASF3009
	.4byte	0x2204
	.byte	0x1
	.4byte	0x144a6
	.4byte	0x144b7
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF3010
	.byte	0x10
	.byte	0x6e
	.4byte	.LASF3011
	.4byte	0x3d54
	.byte	0x1
	.4byte	0x144d0
	.4byte	0x144e1
	.uleb128 0x17
	.4byte	0x148f0
	.byte	0x1
	.uleb128 0x19
	.byte	0