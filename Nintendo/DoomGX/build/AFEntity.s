	.file	"AFEntity.cpp"
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
	.globl _ZNK14idMultiModelAF7GetTypeEv
	.type	_ZNK14idMultiModelAF7GetTypeEv, @function
_ZNK14idMultiModelAF7GetTypeEv:
.LFB2814:
	.file 2 "d:/Data/Nintendo/DoomGX/src/game/AFEntity.cpp"
	.loc 2 43 0
	.cfi_startproc
.LVL1:
	.loc 2 43 0
	lis 3,.LANCHOR0@ha
.LVL2:
	la 3,.LANCHOR0@l(3)
	blr
	.cfi_endproc
.LFE2814:
	.size	_ZNK14idMultiModelAF7GetTypeEv, .-_ZNK14idMultiModelAF7GetTypeEv
	.align 2
	.globl _ZNK7idChain7GetTypeEv
	.type	_ZNK7idChain7GetTypeEv, @function
_ZNK7idChain7GetTypeEv:
.LFB2827:
	.loc 2 135 0
	.cfi_startproc
.LVL3:
	.loc 2 135 0
	lis 3,.LANCHOR0@ha
.LVL4:
	la 3,.LANCHOR0@l(3)
	addi 3,3,80
	blr
	.cfi_endproc
.LFE2827:
	.size	_ZNK7idChain7GetTypeEv, .-_ZNK7idChain7GetTypeEv
	.align 2
	.globl _ZNK14idAFAttachment7GetTypeEv
	.type	_ZNK14idAFAttachment7GetTypeEv, @function
_ZNK14idAFAttachment7GetTypeEv:
.LFB2834:
	.loc 2 244 0
	.cfi_startproc
.LVL5:
	.loc 2 244 0
	lis 3,.LANCHOR0@ha
.LVL6:
	la 3,.LANCHOR0@l(3)
	addi 3,3,160
	blr
	.cfi_endproc
.LFE2834:
	.size	_ZNK14idAFAttachment7GetTypeEv, .-_ZNK14idAFAttachment7GetTypeEv
	.align 2
	.globl _ZN14idAFAttachment6DamageEP8idEntityS1_RK6idVec3PKcfi
	.type	_ZN14idAFAttachment6DamageEP8idEntityS1_RK6idVec3PKcfi, @function
_ZN14idAFAttachment6DamageEP8idEntityS1_RK6idVec3PKcfi:
.LFB2850:
	.loc 2 379 0
	.cfi_startproc
.LVL7:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 9,3
	stw 0,12(1)
	.loc 2 381 0
	lwz 3,1624(3)
.LVL8:
	cmpwi 7,3,0
	beq- 7,.L5
	.cfi_offset 65, 4
	.loc 2 382 0
	lwz 11,0(3)
	lwz 8,1636(9)
.LVL9:
	lwz 0,164(11)
	mtctr 0
	bctrl
.LVL10:
.L5:
	.loc 2 384 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2850:
	.size	_ZN14idAFAttachment6DamageEP8idEntityS1_RK6idVec3PKcfi, .-_ZN14idAFAttachment6DamageEP8idEntityS1_RK6idVec3PKcfi
	.align 2
	.globl _ZN14idAFAttachment15AddDamageEffectERK7trace_sRK6idVec3PKc
	.type	_ZN14idAFAttachment15AddDamageEffectERK7trace_sRK6idVec3PKc, @function
_ZN14idAFAttachment15AddDamageEffectERK7trace_sRK6idVec3PKc:
.LFB2851:
	.loc 2 391 0
	.cfi_startproc
.LVL11:
	mflr 0
	stwu 1,-144(1)
.LCFI2:
	.cfi_def_cfa_offset 144
	.cfi_register 65, 0
	stw 29,132(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,136(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,148(1)
	stw 31,140(1)
.LBB2563:
	.loc 2 392 0
	lwz 31,1624(3)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	cmpwi 7,31,0
	beq- 7,.L8
.LBB2564:
	.loc 2 393 0
	li 5,108
.LVL12:
	addi 3,1,8
.LVL13:
	stw 6,120(1)
	bl memcpy
.LVL14:
	.loc 2 394 0
	lwz 0,1636(30)
	.loc 2 395 0
	mr 3,31
	addi 4,1,8
	mr 5,29
	.loc 2 394 0
	nor 0,0,0
	.loc 2 395 0
	lwz 6,120(1)
	.loc 2 394 0
	stw 0,112(1)
	.loc 2 395 0
	lwz 9,0(31)
	lwz 0,168(9)
	mtctr 0
	bctrl
.L8:
.LBE2564:
.LBE2563:
	.loc 2 397 0
	lwz 0,148(1)
	lwz 29,132(1)
.LVL15:
	mtlr 0
	lwz 30,136(1)
.LVL16:
	lwz 31,140(1)
	addi 1,1,144
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2851:
	.size	_ZN14idAFAttachment15AddDamageEffectERK7trace_sRK6idVec3PKc, .-_ZN14idAFAttachment15AddDamageEffectERK7trace_sRK6idVec3PKc
	.align 2
	.globl _ZNK15idAFEntity_Base7GetTypeEv
	.type	_ZNK15idAFEntity_Base7GetTypeEv, @function
_ZNK15idAFEntity_Base7GetTypeEv:
.LFB2862:
	.loc 2 522 0
	.cfi_startproc
.LVL17:
	.loc 2 522 0
	lis 3,.LANCHOR0@ha
.LVL18:
	la 3,.LANCHOR0@l(3)
	addi 3,3,240
	blr
	.cfi_endproc
.LFE2862:
	.size	_ZNK15idAFEntity_Base7GetTypeEv, .-_ZNK15idAFEntity_Base7GetTypeEv
	.align 2
	.globl _ZN15idAFEntity_Base17ShowEditingDialogEv
	.type	_ZN15idAFEntity_Base17ShowEditingDialogEv, @function
_ZN15idAFEntity_Base17ShowEditingDialogEv:
.LFB2892:
	.loc 2 886 0
	.cfi_startproc
.LVL19:
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 887 0
	lis 9,common@ha
	addi 5,3,100
	lwz 9,common@l(9)
	li 4,256
	.loc 2 886 0
	stw 0,12(1)
	.loc 2 887 0
	mr 3,9
.LVL20:
	lwz 11,0(9)
	lwz 0,40(11)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL21:
	.loc 2 888 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2892:
	.size	_ZN15idAFEntity_Base17ShowEditingDialogEv, .-_ZN15idAFEntity_Base17ShowEditingDialogEv
	.align 2
	.globl _ZNK19idAFEntity_Gibbable7GetTypeEv
	.type	_ZNK19idAFEntity_Gibbable7GetTypeEv, @function
_ZNK19idAFEntity_Gibbable7GetTypeEv:
.LFB2896:
	.loc 2 958 0
	.cfi_startproc
.LVL22:
	.loc 2 958 0
	lis 3,.LANCHOR0@ha
.LVL23:
	la 3,.LANCHOR0@l(3)
	addi 3,3,320
	blr
	.cfi_endproc
.LFE2896:
	.size	_ZNK19idAFEntity_Gibbable7GetTypeEv, .-_ZNK19idAFEntity_Gibbable7GetTypeEv
	.align 2
	.globl _ZN19idAFEntity_Gibbable9Event_GibEPKc
	.type	_ZN19idAFEntity_Gibbable9Event_GibEPKc, @function
_ZN19idAFEntity_Gibbable9Event_GibEPKc:
.LFB2916:
	.loc 2 1208 0
	.cfi_startproc
.LVL24:
	mflr 0
	stwu 1,-24(1)
.LCFI6:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 2 1209 0
	lwz 9,0(3)
.LBB2565:
.LBB2566:
	.file 3 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Vector.h"
	.loc 3 396 0
	li 11,0
.LBE2566:
.LBE2565:
	.loc 2 1208 0
	mr 5,4
.LBB2571:
.LBB2567:
	.loc 3 396 0
	stw 11,8(1)
.LBE2567:
.LBE2571:
	.loc 2 1208 0
	stw 0,28(1)
	.loc 2 1209 0
	addi 4,1,8
.LVL25:
.LBB2572:
.LBB2568:
	.loc 3 397 0
	stw 11,12(1)
.LBE2568:
.LBE2572:
	.loc 2 1209 0
	lwz 0,248(9)
	.cfi_offset 65, 4
.LVL26:
.LBB2573:
.LBB2569:
	.loc 3 398 0
	lis 9,.LC0@ha
	lwz 9,.LC0@l(9)
.LBE2569:
.LBE2573:
	.loc 2 1209 0
	mtctr 0
.LBB2574:
.LBB2570:
	.loc 3 398 0
	stw 9,16(1)
.LBE2570:
.LBE2574:
	.loc 2 1209 0
	bctrl
.LVL27:
	.loc 2 1210 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI7:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2916:
	.size	_ZN19idAFEntity_Gibbable9Event_GibEPKc, .-_ZN19idAFEntity_Gibbable9Event_GibEPKc
	.align 2
	.globl _ZNK18idAFEntity_Generic7GetTypeEv
	.type	_ZNK18idAFEntity_Generic7GetTypeEv, @function
_ZNK18idAFEntity_Generic7GetTypeEv:
.LFB2918:
	.loc 2 1220 0
	.cfi_startproc
.LVL28:
	.loc 2 1220 0
	lis 3,.LANCHOR0@ha
.LVL29:
	la 3,.LANCHOR0@l(3)
	addi 3,3,400
	blr
	.cfi_endproc
.LFE2918:
	.size	_ZNK18idAFEntity_Generic7GetTypeEv, .-_ZNK18idAFEntity_Generic7GetTypeEv
	.align 2
	.globl _ZNK27idAFEntity_WithAttachedHead7GetTypeEv
	.type	_ZNK27idAFEntity_WithAttachedHead7GetTypeEv, @function
_ZNK27idAFEntity_WithAttachedHead7GetTypeEv:
.LFB2932:
	.loc 2 1339 0
	.cfi_startproc
.LVL30:
	.loc 2 1339 0
	lis 3,.LANCHOR0@ha
.LVL31:
	la 3,.LANCHOR0@l(3)
	addi 3,3,480
	blr
	.cfi_endproc
.LFE2932:
	.size	_ZNK27idAFEntity_WithAttachedHead7GetTypeEv, .-_ZNK27idAFEntity_WithAttachedHead7GetTypeEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead9Event_GibEPKc
	.type	_ZN27idAFEntity_WithAttachedHead9Event_GibEPKc, @function
_ZN27idAFEntity_WithAttachedHead9Event_GibEPKc:
.LFB2951:
	.loc 2 1560 0
	.cfi_startproc
.LVL32:
	mflr 0
	stwu 1,-24(1)
.LCFI8:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 2 1561 0
	lwz 9,0(3)
.LBB2575:
.LBB2576:
	.loc 3 396 0
	li 11,0
.LBE2576:
.LBE2575:
	.loc 2 1560 0
	mr 5,4
.LBB2581:
.LBB2577:
	.loc 3 396 0
	stw 11,8(1)
.LBE2577:
.LBE2581:
	.loc 2 1560 0
	stw 0,28(1)
	.loc 2 1561 0
	addi 4,1,8
.LVL33:
.LBB2582:
.LBB2578:
	.loc 3 397 0
	stw 11,12(1)
.LBE2578:
.LBE2582:
	.loc 2 1561 0
	lwz 0,248(9)
	.cfi_offset 65, 4
.LVL34:
.LBB2583:
.LBB2579:
	.loc 3 398 0
	lis 9,.LC0@ha
	lwz 9,.LC0@l(9)
.LBE2579:
.LBE2583:
	.loc 2 1561 0
	mtctr 0
.LBB2584:
.LBB2580:
	.loc 3 398 0
	stw 9,16(1)
.LBE2580:
.LBE2584:
	.loc 2 1561 0
	bctrl
.LVL35:
	.loc 2 1562 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI9:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2951:
	.size	_ZN27idAFEntity_WithAttachedHead9Event_GibEPKc, .-_ZN27idAFEntity_WithAttachedHead9Event_GibEPKc
	.align 2
	.globl _ZNK18idAFEntity_Vehicle7GetTypeEv
	.type	_ZNK18idAFEntity_Vehicle7GetTypeEv, @function
_ZNK18idAFEntity_Vehicle7GetTypeEv:
.LFB2954:
	.loc 2 1605 0
	.cfi_startproc
.LVL36:
	.loc 2 1605 0
	lis 3,.LANCHOR0@ha
.LVL37:
	la 3,.LANCHOR0@l(3)
	addi 3,3,560
	blr
	.cfi_endproc
.LFE2954:
	.size	_ZNK18idAFEntity_Vehicle7GetTypeEv, .-_ZNK18idAFEntity_Vehicle7GetTypeEv
	.align 2
	.globl _ZNK24idAFEntity_VehicleSimple7GetTypeEv
	.type	_ZNK24idAFEntity_VehicleSimple7GetTypeEv, @function
_ZNK24idAFEntity_VehicleSimple7GetTypeEv:
.LFB2962:
	.loc 2 1725 0
	.cfi_startproc
.LVL38:
	.loc 2 1725 0
	lis 3,.LANCHOR0@ha
.LVL39:
	la 3,.LANCHOR0@l(3)
	addi 3,3,640
	blr
	.cfi_endproc
.LFE2962:
	.size	_ZNK24idAFEntity_VehicleSimple7GetTypeEv, .-_ZNK24idAFEntity_VehicleSimple7GetTypeEv
	.align 2
	.globl _ZNK28idAFEntity_VehicleFourWheels7GetTypeEv
	.type	_ZNK28idAFEntity_VehicleFourWheels7GetTypeEv, @function
_ZNK28idAFEntity_VehicleFourWheels7GetTypeEv:
.LFB2977:
	.loc 2 1922 0
	.cfi_startproc
.LVL40:
	.loc 2 1922 0
	lis 3,.LANCHOR0@ha
.LVL41:
	la 3,.LANCHOR0@l(3)
	addi 3,3,720
	blr
	.cfi_endproc
.LFE2977:
	.size	_ZNK28idAFEntity_VehicleFourWheels7GetTypeEv, .-_ZNK28idAFEntity_VehicleFourWheels7GetTypeEv
	.align 2
	.globl _ZNK27idAFEntity_VehicleSixWheels7GetTypeEv
	.type	_ZNK27idAFEntity_VehicleSixWheels7GetTypeEv, @function
_ZNK27idAFEntity_VehicleSixWheels7GetTypeEv:
.LFB2984:
	.loc 2 2103 0
	.cfi_startproc
.LVL42:
	.loc 2 2103 0
	lis 3,.LANCHOR0@ha
.LVL43:
	la 3,.LANCHOR0@l(3)
	addi 3,3,800
	blr
	.cfi_endproc
.LFE2984:
	.size	_ZNK27idAFEntity_VehicleSixWheels7GetTypeEv, .-_ZNK27idAFEntity_VehicleSixWheels7GetTypeEv
	.align 2
	.globl _ZNK20idAFEntity_SteamPipe7GetTypeEv
	.type	_ZNK20idAFEntity_SteamPipe7GetTypeEv, @function
_ZNK20idAFEntity_SteamPipe7GetTypeEv:
.LFB2991:
	.loc 2 2297 0
	.cfi_startproc
.LVL44:
	.loc 2 2297 0
	lis 3,.LANCHOR0@ha
.LVL45:
	la 3,.LANCHOR0@l(3)
	addi 3,3,880
	blr
	.cfi_endproc
.LFE2991:
	.size	_ZNK20idAFEntity_SteamPipe7GetTypeEv, .-_ZNK20idAFEntity_SteamPipe7GetTypeEv
	.align 2
	.globl _ZNK20idAFEntity_SteamPipe4SaveEP10idSaveGame
	.type	_ZNK20idAFEntity_SteamPipe4SaveEP10idSaveGame, @function
_ZNK20idAFEntity_SteamPipe4SaveEP10idSaveGame:
.LFB2999:
	.loc 2 2334 0
	.cfi_startproc
.LVL46:
	.loc 2 2335 0
	blr
	.cfi_endproc
.LFE2999:
	.size	_ZNK20idAFEntity_SteamPipe4SaveEP10idSaveGame, .-_ZNK20idAFEntity_SteamPipe4SaveEP10idSaveGame
	.align 2
	.globl _ZNK26idAFEntity_ClawFourFingers7GetTypeEv
	.type	_ZNK26idAFEntity_ClawFourFingers7GetTypeEv, @function
_ZNK26idAFEntity_ClawFourFingers7GetTypeEv:
.LFB3005:
	.loc 2 2452 0
	.cfi_startproc
.LVL47:
	.loc 2 2452 0
	lis 3,.LANCHOR0@ha
.LVL48:
	la 3,.LANCHOR0@l(3)
	addi 3,3,960
	blr
	.cfi_endproc
.LFE3005:
	.size	_ZNK26idAFEntity_ClawFourFingers7GetTypeEv, .-_ZNK26idAFEntity_ClawFourFingers7GetTypeEv
	.align 2
	.globl _ZNK26idAFEntity_ClawFourFingers4SaveEP10idSaveGame
	.type	_ZNK26idAFEntity_ClawFourFingers4SaveEP10idSaveGame, @function
_ZNK26idAFEntity_ClawFourFingers4SaveEP10idSaveGame:
.LFB3009:
	.loc 2 2482 0
	.cfi_startproc
.LVL49:
	mflr 0
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	addi 30,3,2244
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,20(1)
	.loc 2 2485 0
	li 31,0
	.cfi_offset 31, -4
.LVL50:
.L25:
.LBB2585:
	.loc 2 2486 0 discriminator 2
	lwzu 3,4(30)
	mr 4,29
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
.LVL51:
	.loc 2 2485 0 discriminator 2
	cmpwi 7,31,3
	addi 31,31,1
.LVL52:
	bne+ 7,.L25
.LBE2585:
	.loc 2 2488 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL53:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL54:
	addi 1,1,24
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE3009:
	.size	_ZNK26idAFEntity_ClawFourFingers4SaveEP10idSaveGame, .-_ZNK26idAFEntity_ClawFourFingers4SaveEP10idSaveGame
	.align 2
	.globl _ZN14idAFAttachment4HideEv
	.type	_ZN14idAFAttachment4HideEv, @function
_ZN14idAFAttachment4HideEv:
.LFB2848:
	.loc 2 356 0
	.cfi_startproc
.LVL55:
	stwu 1,-16(1)
.LCFI12:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 357 0
	.cfi_offset 65, 4
	bl _ZN8idEntity4HideEv
.LVL56:
	.loc 2 358 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
	.loc 2 359 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL57:
	mtlr 0
	addi 1,1,16
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2848:
	.size	_ZN14idAFAttachment4HideEv, .-_ZN14idAFAttachment4HideEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead4HideEv
	.type	_ZN27idAFEntity_WithAttachedHead4HideEv, @function
_ZN27idAFEntity_WithAttachedHead4HideEv:
.LFB2947:
	.loc 2 1504 0
	.cfi_startproc
.LVL58:
	stwu 1,-16(1)
.LCFI14:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1505 0
	.cfi_offset 65, 4
	bl _ZN8idEntity4HideEv
.LVL59:
.LBB2586:
.LBB2587:
	.file 4 "d:/Data/Nintendo/DoomGX/src/game/Game_local.h"
	.loc 4 634 0
	lwz 0,2260(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL60:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L30
.LVL61:
.L29:
.LBE2587:
.LBE2586:
	.loc 2 1509 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,240(9)
	mtctr 0
	bctrl
	.loc 2 1510 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL62:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL63:
.L30:
.LCFI16:
	.cfi_restore_state
.LBB2589:
.LBB2588:
	.loc 4 636 0
	addi 11,11,132
.LVL64:
	slwi 11,11,2
.LVL65:
	add 9,9,11
	lwz 3,4(9)
.LBE2588:
.LBE2589:
	.loc 2 1506 0
	cmpwi 7,3,0
	beq- 7,.L29
.LVL66:
	.loc 2 1507 0
	lwz 9,0(3)
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 2 1509 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,240(9)
	mtctr 0
	bctrl
	.loc 2 1510 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL67:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2947:
	.size	_ZN27idAFEntity_WithAttachedHead4HideEv, .-_ZN27idAFEntity_WithAttachedHead4HideEv
	.align 2
	.globl _ZN14idAFAttachment4ShowEv
	.type	_ZN14idAFAttachment4ShowEv, @function
_ZN14idAFAttachment4ShowEv:
.LFB2849:
	.loc 2 366 0
	.cfi_startproc
.LVL68:
	stwu 1,-16(1)
.LCFI18:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 367 0
	.cfi_offset 65, 4
	bl _ZN8idEntity4ShowEv
.LVL69:
	.loc 2 368 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,232(9)
	mtctr 0
	bctrl
	.loc 2 369 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL70:
	mtlr 0
	addi 1,1,16
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2849:
	.size	_ZN14idAFAttachment4ShowEv, .-_ZN14idAFAttachment4ShowEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead4ShowEv
	.type	_ZN27idAFEntity_WithAttachedHead4ShowEv, @function
_ZN27idAFEntity_WithAttachedHead4ShowEv:
.LFB2948:
	.loc 2 1517 0
	.cfi_startproc
.LVL71:
	stwu 1,-16(1)
.LCFI20:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1518 0
	.cfi_offset 65, 4
	bl _ZN8idEntity4ShowEv
.LVL72:
.LBB2590:
.LBB2591:
	.loc 4 634 0
	lwz 0,2260(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL73:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L34
.LVL74:
.L33:
.LBE2591:
.LBE2590:
	.loc 2 1522 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
	.loc 2 1523 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL75:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL76:
.L34:
.LCFI22:
	.cfi_restore_state
.LBB2593:
.LBB2592:
	.loc 4 636 0
	addi 11,11,132
.LVL77:
	slwi 11,11,2
.LVL78:
	add 9,9,11
	lwz 3,4(9)
.LBE2592:
.LBE2593:
	.loc 2 1519 0
	cmpwi 7,3,0
	beq- 7,.L33
.LVL79:
	.loc 2 1520 0
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	bctrl
	.loc 2 1522 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
	.loc 2 1523 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL80:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI23:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2948:
	.size	_ZN27idAFEntity_WithAttachedHead4ShowEv, .-_ZN27idAFEntity_WithAttachedHead4ShowEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead14ProjectOverlayERK6idVec3S2_fPKc
	.type	_ZN27idAFEntity_WithAttachedHead14ProjectOverlayERK6idVec3S2_fPKc, @function
_ZN27idAFEntity_WithAttachedHead14ProjectOverlayERK6idVec3S2_fPKc:
.LFB2949:
	.loc 2 1530 0
	.cfi_startproc
.LVL81:
	stwu 1,-32(1)
.LCFI24:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -12
	.cfi_register 65, 0
	stw 0,36(1)
	stfd 31,24(1)
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -24
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -20
	stw 30,16(1)
	.loc 2 1530 0
	mr 30,6
	.cfi_offset 30, -16
	.loc 2 1532 0
	bl _ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
.LVL82:
.LBB2594:
.LBB2595:
	.loc 4 634 0
	lwz 0,2260(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL83:
	.loc 4 635 0
	la 9,gameLocal@l(9)
	addi 10,11,4228
	srawi 0,0,12
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L37
.LVL84:
.L35:
.LBE2595:
.LBE2594:
	.loc 2 1537 0
	lwz 0,36(1)
	lwz 28,8(1)
.LVL85:
	mtlr 0
	lwz 29,12(1)
.LVL86:
	lwz 30,16(1)
.LVL87:
	lwz 31,20(1)
.LVL88:
	lfd 31,24(1)
.LVL89:
	addi 1,1,32
	.cfi_remember_state
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL90:
.L37:
.LCFI26:
	.cfi_restore_state
.LBB2597:
.LBB2596:
	.loc 4 636 0
	addi 11,11,132
.LVL91:
	slwi 11,11,2
.LVL92:
	add 9,9,11
	lwz 3,4(9)
.LBE2596:
.LBE2597:
	.loc 2 1534 0
	cmpwi 7,3,0
	beq- 7,.L35
	.loc 2 1535 0
	lwz 9,0(3)
	mr 4,28
	mr 5,29
	fmr 1,31
	lwz 0,84(9)
	mr 6,30
	mtctr 0
	bctrl
	.loc 2 1537 0
	lwz 0,36(1)
	lwz 28,8(1)
.LVL93:
	mtlr 0
	lwz 29,12(1)
.LVL94:
	lwz 30,16(1)
.LVL95:
	lwz 31,20(1)
.LVL96:
	lfd 31,24(1)
.LVL97:
	addi 1,1,32
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI27:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2949:
	.size	_ZN27idAFEntity_WithAttachedHead14ProjectOverlayERK6idVec3S2_fPKc, .-_ZN27idAFEntity_WithAttachedHead14ProjectOverlayERK6idVec3S2_fPKc
	.align 2
	.globl _ZN15idAFEntity_Base12FreeModelDefEv
	.type	_ZN15idAFEntity_Base12FreeModelDefEv, @function
_ZN15idAFEntity_Base12FreeModelDefEv:
.LFB2891:
	.loc 2 876 0
	.cfi_startproc
.LVL98:
	mflr 0
	stwu 1,-16(1)
.LCFI28:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 877 0
	lwz 9,0(3)
	lwz 0,240(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL99:
	.loc 2 878 0
	mr 3,31
	bl _ZN8idEntity12FreeModelDefEv
	.loc 2 879 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL100:
	mtlr 0
	addi 1,1,16
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2891:
	.size	_ZN15idAFEntity_Base12FreeModelDefEv, .-_ZN15idAFEntity_Base12FreeModelDefEv
	.align 2
	.globl _ZN14idAFAttachment13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.type	_ZN14idAFAttachment13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s, @function
_ZN14idAFAttachment13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s:
.LFB2852:
	.loc 2 404 0
	.cfi_startproc
.LVL101:
	mflr 0
	stwu 1,-8(1)
.LCFI30:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 405 0
	lwz 9,1624(3)
	cmpwi 7,9,0
	beq- 7,.L40
	.cfi_offset 65, 4
	.loc 2 406 0
	lwz 10,0(9)
	lwz 5,1636(3)
.LVL102:
	mr 3,9
.LVL103:
	lwz 0,128(10)
	nor 5,5,5
	mtctr 0
	bctrl
.LVL104:
	.loc 2 410 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI31:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL105:
.L40:
.LCFI32:
	.cfi_restore_state
	.loc 2 408 0
	bl _ZN8idEntity13GetImpactInfoEPS_iRK6idVec3P12impactInfo_s
.LVL106:
	.loc 2 410 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI33:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2852:
	.size	_ZN14idAFAttachment13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s, .-_ZN14idAFAttachment13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.align 2
	.globl _ZN14idAFAttachment12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.type	_ZN14idAFAttachment12ApplyImpulseEP8idEntityiRK6idVec3S4_, @function
_ZN14idAFAttachment12ApplyImpulseEP8idEntityiRK6idVec3S4_:
.LFB2853:
	.loc 2 417 0
	.cfi_startproc
.LVL107:
	mflr 0
	stwu 1,-8(1)
.LCFI34:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 418 0
	lwz 9,1624(3)
	cmpwi 7,9,0
	beq- 7,.L43
	.cfi_offset 65, 4
	.loc 2 419 0
	lwz 10,0(9)
	lwz 5,1636(3)
.LVL108:
	mr 3,9
.LVL109:
	lwz 0,132(10)
	nor 5,5,5
	mtctr 0
	bctrl
.LVL110:
	.loc 2 423 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI35:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL111:
.L43:
.LCFI36:
	.cfi_restore_state
	.loc 2 421 0
	bl _ZN8idEntity12ApplyImpulseEPS_iRK6idVec3S3_
.LVL112:
	.loc 2 423 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI37:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2853:
	.size	_ZN14idAFAttachment12ApplyImpulseEP8idEntityiRK6idVec3S4_, .-_ZN14idAFAttachment12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.align 2
	.globl _ZN14idAFAttachment8AddForceEP8idEntityiRK6idVec3S4_
	.type	_ZN14idAFAttachment8AddForceEP8idEntityiRK6idVec3S4_, @function
_ZN14idAFAttachment8AddForceEP8idEntityiRK6idVec3S4_:
.LFB2854:
	.loc 2 430 0
	.cfi_startproc
.LVL113:
	mflr 0
	stwu 1,-8(1)
.LCFI38:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 431 0
	lwz 9,1624(3)
	cmpwi 7,9,0
	beq- 7,.L46
	.cfi_offset 65, 4
	.loc 2 432 0
	lwz 10,0(9)
	lwz 5,1636(3)
.LVL114:
	mr 3,9
.LVL115:
	lwz 0,136(10)
	nor 5,5,5
	mtctr 0
	bctrl
.LVL116:
	.loc 2 436 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI39:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL117:
.L46:
.LCFI40:
	.cfi_restore_state
	.loc 2 434 0
	bl _ZN8idEntity8AddForceEPS_iRK6idVec3S3_
.LVL118:
	.loc 2 436 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI41:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2854:
	.size	_ZN14idAFAttachment8AddForceEP8idEntityiRK6idVec3S4_, .-_ZN14idAFAttachment8AddForceEP8idEntityiRK6idVec3S4_
	.section	.text._ZN9idWinding5ClearEv,"axG",@progbits,_ZN9idWinding5ClearEv,comdat
	.align 2
	.weak	_ZN9idWinding5ClearEv
	.type	_ZN9idWinding5ClearEv, @function
_ZN9idWinding5ClearEv:
.LFB1473:
	.loc 1 249 0
	.cfi_startproc
.LVL119:
	mflr 0
	stwu 1,-16(1)
.LCFI42:
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
.LVL120:
	.loc 1 250 0
	stw 0,4(31)
	.loc 1 251 0
	cmpwi 7,3,0
	beq- 7,.L49
	.loc 1 251 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L49:
	.loc 1 252 0 is_stmt 1
	li 0,0
	stw 0,8(31)
	.loc 1 253 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL121:
	mtlr 0
	addi 1,1,16
.LCFI43:
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
.LVL122:
	mflr 0
	stwu 1,-16(1)
.LCFI44:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2599:
	lis 9,_ZTV9idWinding+8@ha
.LBE2599:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2600:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL123:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L51
	.loc 1 184 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L51:
	.loc 1 185 0 is_stmt 1
	li 0,0
	stw 0,8(31)
.LBE2600:
	.loc 1 186 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL124:
	mtlr 0
	addi 1,1,16
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1461:
	.size	_ZN9idWindingD2Ev, .-_ZN9idWindingD2Ev
	.section	".text"
	.align 2
	.type	_ZL17GetJointTransformPvPK10idJointMatPKcR6idVec3R6idMat3, @function
_ZL17GetJointTransformPvPK10idJointMatPKcR6idVec3R6idMat3:
.LFB3017:
	.loc 2 2689 0
	.cfi_startproc
.LVL125:
	mflr 0
	stwu 1,-88(1)
.LCFI46:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stw 25,60(1)
	mr 25,7
	.cfi_offset 25, -28
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
.LVL126:
	stw 0,92(1)
	stw 26,64(1)
	stw 27,68(1)
.LBB2601:
	.loc 2 2693 0
	lwz 9,0(3)
	.loc 2 2699 0
	li 3,0
.LVL127:
	.loc 2 2693 0
	lwz 0,188(9)
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpwi 7,0,0
	ble- 7,.L54
	li 27,0
	li 26,0
	b .L56
.LVL128:
.L63:
	lwz 0,188(9)
	addi 26,26,1
.LVL129:
	cmpw 7,0,26
	ble- 7,.L62
.LVL130:
.L56:
.LBB2602:
.LBB2603:
	.loc 2 2927 0
	lwz 9,4(31)
	.file 5 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Str.h"
	.loc 5 690 0
	mr 4,29
	.loc 2 2927 0
	add 9,9,27
.LBE2603:
.LBE2602:
	.loc 2 2693 0
	addi 27,27,36
.LBB2605:
.LBB2604:
	.loc 5 690 0
	lwz 3,4(9)
	bl _ZN5idStr4IcmpEPKcS1_
.LBE2604:
.LBE2605:
	.loc 2 2698 0
	lwz 9,0(31)
	.loc 2 2694 0
	cmpwi 7,3,0
	bne+ 7,.L63
	.loc 2 2698 0
	lwz 0,188(9)
	.loc 2 2699 0
	li 3,0
	.loc 2 2698 0
	cmpw 7,0,26
	ble- 7,.L54
	.loc 2 2701 0
	mulli 26,26,48
.LBB2606:
.LBB2607:
	.file 6 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Matrix.h"
	.loc 6 333 0
	li 10,0
	cmpwi 7,10,24
.LBE2607:
.LBE2606:
	.loc 2 2701 0
	add 9,30,26
.LVL131:
.LBB2619:
.LBB2620:
	.file 7 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/JointTransform.h"
	.loc 7 234 0
	lwz 8,12(9)
	lwz 11,28(9)
	lwz 0,44(9)
.LVL132:
.LBE2620:
.LBE2619:
.LBB2621:
.LBB2622:
	.loc 3 424 0
	stw 8,0(28)
	.loc 3 425 0
	stw 11,4(28)
	.loc 3 426 0
	stw 0,8(28)
.LVL133:
.LBE2622:
.LBE2621:
.LBB2623:
.LBB2624:
	.loc 7 230 0
	lwz 8,16(9)
	lwz 0,32(9)
	lwz 3,4(9)
	lwz 6,8(9)
	lwz 11,24(9)
	lwz 4,20(9)
	lwz 5,36(9)
	lwz 9,40(9)
.LVL134:
	lwzx 7,30,26
.LVL135:
.LBB2625:
.LBB2626:
	.loc 6 427 0
	stw 9,40(1)
.LVL136:
.LBE2626:
.LBE2625:
.LBE2624:
.LBE2623:
.LBB2633:
.LBB2616:
.LBB2608:
.LBB2609:
	.loc 3 424 0
	mr 9,25
.LVL137:
	stwux 7,9,10
.LBE2609:
.LBE2608:
	.loc 6 333 0
	addi 10,10,12
.LBE2616:
.LBE2633:
.LBB2634:
.LBB2631:
.LBB2629:
.LBB2627:
	.loc 6 427 0
	stw 11,36(1)
.LBE2627:
.LBE2629:
.LBE2631:
.LBE2634:
.LBB2635:
.LBB2617:
	.loc 6 333 0
	addi 11,1,8
.LVL138:
.LBE2617:
.LBE2635:
.LBB2636:
.LBB2632:
.LBB2630:
.LBB2628:
	.loc 6 425 0
	stw 7,8(1)
	stw 8,12(1)
	stw 0,16(1)
	.loc 6 426 0
	stw 3,20(1)
	stw 4,24(1)
	stw 5,28(1)
	.loc 6 427 0
	stw 6,32(1)
.LBE2628:
.LBE2630:
.LBE2632:
.LBE2636:
.LBB2637:
.LBB2618:
.LBB2613:
.LBB2610:
	.loc 3 425 0
	stw 8,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LBE2610:
.LBE2613:
	.loc 6 333 0
	beq- 7,.L60
.LVL139:
.L64:
	lwzux 7,11,10
	cmpwi 7,10,24
.LBB2614:
.LBB2611:
	.loc 3 424 0
	mr 9,25
	stwux 7,9,10
.LBE2611:
.LBE2614:
	.loc 6 333 0
	addi 10,10,12
	.loc 2 2689 0
	lwz 8,4(11)
	lwz 0,8(11)
	.loc 6 333 0
	addi 11,1,8
.LBB2615:
.LBB2612:
	.loc 3 425 0
	stw 8,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LBE2612:
.LBE2615:
	.loc 6 333 0
	bne+ 7,.L64
.L60:
	.loc 2 2703 0
	li 3,1
.LVL140:
.L54:
.LBE2618:
.LBE2637:
.LBE2601:
	.loc 2 2704 0
	lwz 0,92(1)
	lwz 25,60(1)
.LVL141:
	mtlr 0
	lwz 26,64(1)
	lwz 27,68(1)
	lwz 28,72(1)
.LVL142:
	lwz 29,76(1)
.LVL143:
	lwz 30,80(1)
.LVL144:
	lwz 31,84(1)
.LVL145:
	addi 1,1,88
	.cfi_remember_state
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL146:
.L62:
.LCFI48:
	.cfi_restore_state
	lwz 0,92(1)
.LBB2638:
	.loc 2 2699 0
	li 3,0
.LBE2638:
	.loc 2 2704 0
	lwz 25,60(1)
.LVL147:
	mtlr 0
	lwz 26,64(1)
.LVL148:
	lwz 27,68(1)
	lwz 28,72(1)
.LVL149:
	lwz 29,76(1)
.LVL150:
	lwz 30,80(1)
.LVL151:
	lwz 31,84(1)
.LVL152:
	addi 1,1,88
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI49:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE3017:
	.size	_ZL17GetJointTransformPvPK10idJointMatPKcR6idVec3R6idMat3, .-_ZL17GetJointTransformPvPK10idJointMatPKcR6idVec3R6idMat3
	.align 2
	.globl _ZN26idAFEntity_ClawFourFingers17Event_StopFingersEv
	.type	_ZN26idAFEntity_ClawFourFingers17Event_StopFingersEv, @function
_ZN26idAFEntity_ClawFourFingers17Event_StopFingersEv:
.LFB3013:
	.loc 2 2553 0
	.cfi_startproc
.LVL153:
	mflr 0
	stwu 1,-24(1)
.LCFI50:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	stw 0,28(1)
	li 0,4
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	stw 0,8(1)
	stw 30,16(1)
	.loc 2 2553 0
	addi 30,3,2244
	.cfi_offset 30, -8
.LVL154:
.L66:
.LBB2639:
	.loc 2 2557 0 discriminator 2
	lwzu 31,4(30)
	mr 3,31
	bl _ZNK20idAFConstraint_Hinge8GetAngleEv
	mr 3,31
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
	.loc 2 2556 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L66
.LBE2639:
	.loc 2 2559 0
	lwz 0,28(1)
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE3013:
	.size	_ZN26idAFEntity_ClawFourFingers17Event_StopFingersEv, .-_ZN26idAFEntity_ClawFourFingers17Event_StopFingersEv
	.align 2
	.globl _ZN26idAFEntity_ClawFourFingers20Event_SetFingerAngleEf
	.type	_ZN26idAFEntity_ClawFourFingers20Event_SetFingerAngleEf, @function
_ZN26idAFEntity_ClawFourFingers20Event_SetFingerAngleEf:
.LFB3012:
	.loc 2 2538 0
	.cfi_startproc
.LVL155:
	mflr 0
	stwu 1,-40(1)
.LCFI52:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stfd 31,32(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,44(1)
	li 0,4
	.cfi_offset 65, 4
	stw 30,24(1)
	lis 30,.LC1@ha
	.cfi_offset 30, -16
	stw 0,8(1)
	la 30,.LC1@l(30)
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -20
	stw 31,28(1)
	.loc 2 2538 0
	addi 31,3,2244
	.cfi_offset 31, -12
.LVL156:
.L69:
.LBB2640:
	.loc 2 2542 0 discriminator 2
	fmr 1,31
	lwzu 3,4(31)
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
	.loc 2 2543 0 discriminator 2
	lwz 3,0(31)
	lfs 1,0(30)
	bl _ZN20idAFConstraint_Hinge13SetSteerSpeedEf
	.loc 2 2541 0 discriminator 2
	lwz 0,8(1)
	addic. 9,0,-1
	stw 9,8(1)
	bne+ 0,.L69
.LVL157:
	.loc 2 2545 0
	lwz 9,1656(29)
	addi 3,29,1656
	lwz 0,88(9)
	mtctr 0
	bctrl
.LBE2640:
	.loc 2 2546 0
	lwz 0,44(1)
	lwz 29,20(1)
.LVL158:
	mtlr 0
	lwz 30,24(1)
	lwz 31,28(1)
	lfd 31,32(1)
.LVL159:
	addi 1,1,40
.LCFI53:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE3012:
	.size	_ZN26idAFEntity_ClawFourFingers20Event_SetFingerAngleEf, .-_ZN26idAFEntity_ClawFourFingers20Event_SetFingerAngleEf
	.align 2
	.globl _ZN14idMultiModelAF5ThinkEv
	.type	_ZN14idMultiModelAF5ThinkEv, @function
_ZN14idMultiModelAF5ThinkEv:
.LFB2822:
	.loc 2 121 0
	.cfi_startproc
.LVL160:
	stwu 1,-16(1)
.LCFI54:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 122 0
	.cfi_offset 65, 4
	bl _ZN8idEntity10RunPhysicsEv
.LVL161:
	.loc 2 123 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 124 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL162:
	mtlr 0
	addi 1,1,16
.LCFI55:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2822:
	.size	_ZN14idMultiModelAF5ThinkEv, .-_ZN14idMultiModelAF5ThinkEv
	.align 2
	.globl _ZN15idAFEntity_Base12UnlinkCombatEv
	.type	_ZN15idAFEntity_Base12UnlinkCombatEv, @function
_ZN15idAFEntity_Base12UnlinkCombatEv:
.LFB2890:
	.loc 2 865 0
	.cfi_startproc
.LVL163:
	mflr 0
	stwu 1,-8(1)
.LCFI56:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 866 0
	lwz 3,2188(3)
.LVL164:
	cmpwi 7,3,0
	beq- 7,.L72
	.cfi_offset 65, 4
	.loc 2 867 0
	bl _ZN11idClipModel6UnlinkEv
.L72:
	.loc 2 869 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI57:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2890:
	.size	_ZN15idAFEntity_Base12UnlinkCombatEv, .-_ZN15idAFEntity_Base12UnlinkCombatEv
	.align 2
	.globl _ZN14idAFAttachment12UnlinkCombatEv
	.type	_ZN14idAFAttachment12UnlinkCombatEv, @function
_ZN14idAFAttachment12UnlinkCombatEv:
.LFB2860:
	.loc 2 505 0
	.cfi_startproc
.LVL165:
	mflr 0
	stwu 1,-8(1)
.LCFI58:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 506 0
	lwz 3,1628(3)
.LVL166:
	cmpwi 7,3,0
	beq- 7,.L74
	.cfi_offset 65, 4
	.loc 2 507 0
	bl _ZN11idClipModel6UnlinkEv
.L74:
	.loc 2 509 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI59:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2860:
	.size	_ZN14idAFAttachment12UnlinkCombatEv, .-_ZN14idAFAttachment12UnlinkCombatEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead12UnlinkCombatEv
	.type	_ZN27idAFEntity_WithAttachedHead12UnlinkCombatEv, @function
_ZN27idAFEntity_WithAttachedHead12UnlinkCombatEv:
.LFB2946:
	.loc 2 1487 0
	.cfi_startproc
.LVL167:
	mflr 0
	stwu 1,-16(1)
.LCFI60:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2641:
	.loc 2 1490 0
	lwz 3,2188(3)
.LVL168:
	cmpwi 7,3,0
	beq- 7,.L77
	.cfi_offset 65, 4
	.loc 2 1491 0
	bl _ZN11idClipModel6UnlinkEv
.L77:
.LVL169:
.LBB2642:
.LBB2643:
	.loc 4 634 0
	lwz 0,2260(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL170:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L79
.LVL171:
.L76:
.LBE2643:
.LBE2642:
.LBE2641:
	.loc 2 1497 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL172:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI61:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL173:
.L79:
.LCFI62:
	.cfi_restore_state
.LBB2646:
.LBB2645:
.LBB2644:
	.loc 4 636 0
	addi 11,11,132
.LVL174:
	slwi 11,11,2
.LVL175:
	add 9,9,11
	lwz 3,4(9)
.LBE2644:
.LBE2645:
	.loc 2 1494 0
	cmpwi 7,3,0
	beq- 7,.L76
	.loc 2 1495 0
	lwz 9,0(3)
	lwz 0,236(9)
	mtctr 0
	bctrl
.LBE2646:
	.loc 2 1497 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL176:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI63:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2946:
	.size	_ZN27idAFEntity_WithAttachedHead12UnlinkCombatEv, .-_ZN27idAFEntity_WithAttachedHead12UnlinkCombatEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead7RestoreEP13idRestoreGame
	.type	_ZN27idAFEntity_WithAttachedHead7RestoreEP13idRestoreGame, @function
_ZN27idAFEntity_WithAttachedHead7RestoreEP13idRestoreGame:
.LFB2942:
	.loc 2 1413 0
	.cfi_startproc
.LVL177:
	mflr 0
	stwu 1,-8(1)
.LCFI64:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB2647:
.LBB2648:
	.loc 4 600 0
	addi 0,3,2260
	.cfi_offset 65, 4
	mr 3,4
.LVL178:
	mr 4,0
.LVL179:
	bl _ZN13idRestoreGame7ReadIntERi
.LVL180:
.LBE2648:
.LBE2647:
	.loc 2 1415 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI65:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2942:
	.size	_ZN27idAFEntity_WithAttachedHead7RestoreEP13idRestoreGame, .-_ZN27idAFEntity_WithAttachedHead7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK27idAFEntity_WithAttachedHead4SaveEP10idSaveGame
	.type	_ZNK27idAFEntity_WithAttachedHead4SaveEP10idSaveGame, @function
_ZNK27idAFEntity_WithAttachedHead4SaveEP10idSaveGame:
.LFB2941:
	.loc 2 1404 0
	.cfi_startproc
.LVL181:
	mflr 0
	stwu 1,-8(1)
.LCFI66:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB2649:
.LBB2650:
	.loc 4 595 0
	lwz 0,2260(3)
	.cfi_offset 65, 4
	mr 3,4
.LVL182:
	mr 4,0
.LVL183:
	bl _ZN10idSaveGame8WriteIntEi
.LVL184:
.LBE2650:
.LBE2649:
	.loc 2 1406 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI67:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2941:
	.size	_ZNK27idAFEntity_WithAttachedHead4SaveEP10idSaveGame, .-_ZNK27idAFEntity_WithAttachedHead4SaveEP10idSaveGame
	.align 2
	.globl _ZN14idAFAttachment5SpawnEv
	.type	_ZN14idAFAttachment5SpawnEv, @function
_ZN14idAFAttachment5SpawnEv:
.LFB2842:
	.loc 2 281 0
	.cfi_startproc
.LVL185:
	stwu 1,-16(1)
.LCFI68:
	.cfi_def_cfa_offset 16
	mflr 0
	.loc 2 282 0
	lis 4,.LC2@ha
	.loc 2 281 0
	stw 31,12(1)
	.loc 2 282 0
	la 4,.LC2@l(4)
	.loc 2 281 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 2 282 0
	addi 3,3,636
.LVL186:
	.loc 2 281 0
	stw 0,20(1)
	.loc 2 282 0
	.cfi_offset 65, 4
	bl _ZNK10idAnimator7GetAnimEPKc
	stw 3,1632(31)
	.loc 2 283 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL187:
	mtlr 0
	addi 1,1,16
.LCFI69:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2842:
	.size	_ZN14idAFAttachment5SpawnEv, .-_ZN14idAFAttachment5SpawnEv
	.align 2
	.globl _ZN18idAFEntity_Generic7RestoreEP13idRestoreGame
	.type	_ZN18idAFEntity_Generic7RestoreEP13idRestoreGame, @function
_ZN18idAFEntity_Generic7RestoreEP13idRestoreGame:
.LFB2927:
	.loc 2 1259 0
	.cfi_startproc
.LVL188:
	mflr 0
	stwu 1,-8(1)
.LCFI70:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 1260 0
	addi 0,3,2257
	.cfi_offset 65, 4
	mr 3,4
.LVL189:
	mr 4,0
.LVL190:
	bl _ZN13idRestoreGame8ReadBoolERb
.LVL191:
	.loc 2 1261 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI71:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2927:
	.size	_ZN18idAFEntity_Generic7RestoreEP13idRestoreGame, .-_ZN18idAFEntity_Generic7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK18idAFEntity_Generic4SaveEP10idSaveGame
	.type	_ZNK18idAFEntity_Generic4SaveEP10idSaveGame, @function
_ZNK18idAFEntity_Generic4SaveEP10idSaveGame:
.LFB2926:
	.loc 2 1250 0
	.cfi_startproc
.LVL192:
	mflr 0
	stwu 1,-8(1)
.LCFI72:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 1251 0
	lbz 0,2257(3)
	.cfi_offset 65, 4
	mr 3,4
.LVL193:
	mr 4,0
.LVL194:
	bl _ZN10idSaveGame9WriteBoolEb
.LVL195:
	.loc 2 1252 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI73:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2926:
	.size	_ZNK18idAFEntity_Generic4SaveEP10idSaveGame, .-_ZNK18idAFEntity_Generic4SaveEP10idSaveGame
	.align 2
	.globl _ZNK19idAFEntity_Gibbable4SaveEP10idSaveGame
	.type	_ZNK19idAFEntity_Gibbable4SaveEP10idSaveGame, @function
_ZNK19idAFEntity_Gibbable4SaveEP10idSaveGame:
.LFB2904:
	.loc 2 996 0
	.cfi_startproc
.LVL196:
	mflr 0
	stwu 1,-16(1)
.LCFI74:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 2 996 0
	mr 31,4
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 2 997 0
	lbz 4,2256(3)
.LVL197:
	mr 3,31
.LVL198:
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 2 998 0
	lwz 4,2188(30)
	mr 3,31
	cntlzw 4,4
	srwi 4,4,5
	xori 4,4,1
	bl _ZN10idSaveGame9WriteBoolEb
	.loc 2 999 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL199:
	mtlr 0
	lwz 31,12(1)
.LVL200:
	addi 1,1,16
.LCFI75:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2904:
	.size	_ZNK19idAFEntity_Gibbable4SaveEP10idSaveGame, .-_ZNK19idAFEntity_Gibbable4SaveEP10idSaveGame
	.align 2
	.globl _ZN15idAFEntity_Base5SpawnEv
	.type	_ZN15idAFEntity_Base5SpawnEv, @function
_ZN15idAFEntity_Base5SpawnEv:
.LFB2872:
	.loc 2 591 0
	.cfi_startproc
.LVL201:
	mflr 0
	stwu 1,-16(1)
.LCFI76:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 592 0
	.cfi_offset 65, 4
	bl _ZNK8idEntity7GetNameEv
.LVL202:
	mr 5,3
	lis 3,.LC3@ha
	mr 4,31
	la 3,.LC3@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 2 593 0
	bl _Z18Sys_PrintBacktracev
	.loc 2 594 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	li 4,0
	lwz 9,0(3)
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB2651:
.LBB2652:
	.loc 3 424 0
	lwz 0,0(3)
.LBE2652:
.LBE2651:
	.loc 2 594 0
	mr 9,3
.LVL203:
	.loc 2 595 0
	mr 3,31
.LVL204:
.LBB2654:
.LBB2653:
	.loc 3 424 0
	stw 0,2196(31)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,2200(31)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,2204(31)
.LBE2653:
.LBE2654:
	.loc 2 595 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL205:
	li 4,0
	lwz 9,0(3)
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL206:
.LBB2655:
.LBB2656:
	.loc 6 333 0
	addi 8,31,2208
	li 10,0
.L87:
.LBB2657:
.LBB2658:
	.loc 3 424 0
	mr 11,3
	mr 9,8
	lwzux 0,11,10
.LBE2658:
.LBE2657:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB2661:
.LBB2659:
	.loc 3 424 0
	stwux 0,9,10
.LBE2659:
.LBE2661:
	.loc 6 333 0
	addi 10,10,12
.LBB2662:
.LBB2660:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE2660:
.LBE2662:
	.loc 6 333 0
	bne+ 7,.L87
.LBE2656:
.LBE2655:
	.loc 2 596 0
	li 0,0
	stw 0,2244(31)
	.loc 2 597 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL207:
	mtlr 0
	addi 1,1,16
.LCFI77:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2872:
	.size	_ZN15idAFEntity_Base5SpawnEv, .-_ZN15idAFEntity_Base5SpawnEv
	.align 2
	.globl _ZN15idAFEntity_Base27Event_SetConstraintPositionEPKcRK6idVec3
	.type	_ZN15idAFEntity_Base27Event_SetConstraintPositionEPKcRK6idVec3, @function
_ZN15idAFEntity_Base27Event_SetConstraintPositionEPKcRK6idVec3:
.LFB2894:
	.loc 2 943 0
	.cfi_startproc
.LVL208:
	mflr 0
	stwu 1,-8(1)
.LCFI78:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 944 0
	addi 3,3,1624
.LVL209:
	.loc 2 943 0
	stw 0,12(1)
	.loc 2 944 0
	.cfi_offset 65, 4
	bl _ZN4idAF21SetConstraintPositionEPKcRK6idVec3
.LVL210:
	.loc 2 945 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI79:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2894:
	.size	_ZN15idAFEntity_Base27Event_SetConstraintPositionEPKcRK6idVec3, .-_ZN15idAFEntity_Base27Event_SetConstraintPositionEPKcRK6idVec3
	.align 2
	.globl _ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.type	_ZN15idAFEntity_Base26UpdateAnimationControllersEv, @function
_ZN15idAFEntity_Base26UpdateAnimationControllersEv:
.LFB2885:
	.loc 2 796 0
	.cfi_startproc
.LVL211:
	mflr 0
	stwu 1,-8(1)
.LCFI80:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 9,3
	stw 0,12(1)
	.loc 2 797 0
	lbz 0,2185(3)
	.cfi_offset 65, 4
	.loc 2 802 0
	li 3,0
.LVL212:
	.loc 2 797 0
	cmpwi 7,0,0
	bne- 7,.L93
	.loc 2 803 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI81:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L93:
.LCFI82:
	.cfi_restore_state
	.loc 2 798 0
	addi 3,9,1624
	bl _ZN4idAF15UpdateAnimationEv
.LVL213:
	.loc 2 803 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI83:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2885:
	.size	_ZN15idAFEntity_Base26UpdateAnimationControllersEv, .-_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.align 2
	.globl _ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.type	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_, @function
_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_:
.LFB2882:
	.loc 2 745 0
	.cfi_startproc
.LVL214:
	mflr 0
	stwu 1,-32(1)
.LCFI84:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 28,16(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 29,20(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,7
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
.LBB2663:
.LBB2664:
	.file 8 "d:/Data/Nintendo/DoomGX/src/game/AF.h"
	.loc 8 65 0
	lbz 0,2184(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
.LBE2664:
.LBE2663:
	.loc 2 2927 0
	lwz 0,2084(3)
.LBB2666:
.LBB2665:
	.loc 8 65 0
	beq- 7,.L95
	cmpwi 7,0,0
	beq- 7,.L95
.LBE2665:
.LBE2666:
	.loc 2 747 0
	addi 3,3,1624
.LVL215:
	bl _ZN4idAF8AddForceEP8idEntityiRK6idVec3S4_
.LVL216:
.L95:
	.loc 2 749 0
	lbz 0,2185(31)
	cmpwi 7,0,0
	bne+ 7,.L94
	.loc 2 750 0
	mr 3,31
	mr 4,27
	mr 5,28
	mr 6,29
	mr 7,30
	bl _ZN8idEntity8AddForceEPS_iRK6idVec3S3_
.L94:
	.loc 2 752 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL217:
	mtlr 0
	lwz 28,16(1)
.LVL218:
	lwz 29,20(1)
.LVL219:
	lwz 30,24(1)
.LVL220:
	lwz 31,28(1)
.LVL221:
	addi 1,1,32
.LCFI85:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2882:
	.size	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_, .-_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.align 2
	.globl _ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.type	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_, @function
_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_:
.LFB2881:
	.loc 2 731 0
	.cfi_startproc
.LVL222:
	mflr 0
	stwu 1,-32(1)
.LCFI86:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 28,16(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 29,20(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 30,24(1)
	mr 30,7
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,36(1)
.LBB2667:
.LBB2668:
	.loc 8 65 0
	lbz 0,2184(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
.LBE2668:
.LBE2667:
	.loc 2 2927 0
	lwz 0,2084(3)
.LBB2670:
.LBB2669:
	.loc 8 65 0
	beq- 7,.L98
	cmpwi 7,0,0
	beq- 7,.L98
.LBE2669:
.LBE2670:
	.loc 2 733 0
	addi 3,3,1624
.LVL223:
	bl _ZN4idAF12ApplyImpulseEP8idEntityiRK6idVec3S4_
.LVL224:
.L98:
	.loc 2 735 0
	lbz 0,2185(31)
	cmpwi 7,0,0
	bne+ 7,.L97
	.loc 2 736 0
	mr 3,31
	mr 4,27
	mr 5,28
	mr 6,29
	mr 7,30
	bl _ZN8idEntity12ApplyImpulseEPS_iRK6idVec3S3_
.L97:
	.loc 2 738 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL225:
	mtlr 0
	lwz 28,16(1)
.LVL226:
	lwz 29,20(1)
.LVL227:
	lwz 30,24(1)
.LVL228:
	lwz 31,28(1)
.LVL229:
	addi 1,1,32
.LCFI87:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE2881:
	.size	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_, .-_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.align 2
	.globl _ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.type	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s, @function
_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s:
.LFB2880:
	.loc 2 718 0
	.cfi_startproc
.LVL230:
	mflr 0
	stwu 1,-8(1)
.LCFI88:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 719 0
	lbz 0,2185(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L103
	.loc 2 722 0
	bl _ZN8idEntity13GetImpactInfoEPS_iRK6idVec3P12impactInfo_s
.LVL231:
	.loc 2 724 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI89:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL232:
.L103:
.LCFI90:
	.cfi_restore_state
	.loc 2 720 0
	addi 3,3,1624
.LVL233:
	bl _ZN4idAF13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
.LVL234:
	.loc 2 724 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI91:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2880:
	.size	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s, .-_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.align 2
	.globl _ZN15idAFEntity_Base7RestoreEP13idRestoreGame
	.type	_ZN15idAFEntity_Base7RestoreEP13idRestoreGame, @function
_ZN15idAFEntity_Base7RestoreEP13idRestoreGame:
.LFB2871:
	.loc 2 575 0
	.cfi_startproc
.LVL235:
	stwu 1,-16(1)
.LCFI92:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 2 576 0
	mr 3,4
.LVL236:
	.loc 2 575 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 2 576 0
	addi 4,31,2192
.LVL237:
	.loc 2 575 0
	stw 0,20(1)
	.loc 2 576 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame7ReadIntERi
.LVL238:
	.loc 2 577 0
	mr 3,30
	addi 4,31,2188
	bl _ZN13idRestoreGame13ReadClipModelERP11idClipModel
	.loc 2 578 0
	mr 3,30
	addi 4,31,2196
	bl _ZN13idRestoreGame8ReadVec3ER6idVec3
	.loc 2 579 0
	mr 3,30
	addi 4,31,2208
	bl _ZN13idRestoreGame8ReadMat3ER6idMat3
	.loc 2 580 0
	addi 4,31,2244
	mr 3,30
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 581 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
	.loc 2 583 0
	addi 3,31,1624
	mr 4,30
	bl _ZN4idAF7RestoreEP13idRestoreGame
	.loc 2 584 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL239:
	mtlr 0
	lwz 31,12(1)
.LVL240:
	addi 1,1,16
.LCFI93:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2871:
	.size	_ZN15idAFEntity_Base7RestoreEP13idRestoreGame, .-_ZN15idAFEntity_Base7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK15idAFEntity_Base4SaveEP10idSaveGame
	.type	_ZNK15idAFEntity_Base4SaveEP10idSaveGame, @function
_ZNK15idAFEntity_Base4SaveEP10idSaveGame:
.LFB2870:
	.loc 2 561 0
	.cfi_startproc
.LVL241:
	mflr 0
	stwu 1,-16(1)
.LCFI94:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 2 561 0
	mr 31,4
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 2 562 0
	lwz 4,2192(3)
.LVL242:
	mr 3,31
.LVL243:
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 563 0
	lwz 4,2188(30)
	mr 3,31
	bl _ZN10idSaveGame14WriteClipModelEPK11idClipModel
	.loc 2 564 0
	mr 3,31
	addi 4,30,2196
	bl _ZN10idSaveGame9WriteVec3ERK6idVec3
	.loc 2 565 0
	mr 3,31
	addi 4,30,2208
	bl _ZN10idSaveGame9WriteMat3ERK6idMat3
	.loc 2 566 0
	lwz 4,2244(30)
	mr 3,31
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 567 0
	addi 3,30,1624
	mr 4,31
	bl _ZNK4idAF4SaveEP10idSaveGame
	.loc 2 568 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL244:
	mtlr 0
	lwz 31,12(1)
.LVL245:
	addi 1,1,16
.LCFI95:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2870:
	.size	_ZNK15idAFEntity_Base4SaveEP10idSaveGame, .-_ZNK15idAFEntity_Base4SaveEP10idSaveGame
	.align 2
	.globl _ZN15idAFEntity_BaseD2Ev
	.type	_ZN15idAFEntity_BaseD2Ev, @function
_ZN15idAFEntity_BaseD2Ev:
.LFB2867:
	.loc 2 551 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2867
.LVL246:
	mflr 0
	stwu 1,-16(1)
.LCFI96:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2671:
	lis 9,_ZTV15idAFEntity_Base+8@ha
.LBE2671:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2672:
	la 0,_ZTV15idAFEntity_Base+8@l(9)
	.cfi_offset 65, 4
.LBE2672:
	stw 30,8(1)
.LBB2673:
	.loc 2 551 0
	stw 0,0(3)
	.loc 2 552 0
	lwz 30,2188(3)
	.cfi_offset 30, -8
	cmpwi 7,30,0
	beq- 7,.L107
	.loc 2 552 0 is_stmt 0 discriminator 1
	mr 3,30
.LVL247:
.LEHB0:
	bl _ZN11idClipModelD1Ev
.LEHE0:
	mr 3,30
	bl _ZdlPv
.L107:
	.loc 2 553 0 is_stmt 1
	li 0,0
	.loc 2 551 0
	addi 3,31,1624
	.loc 2 553 0
	stw 0,2188(31)
.LEHB1:
	.loc 2 551 0
	bl _ZN4idAFD1Ev
.LEHE1:
	.loc 2 551 0 is_stmt 0 discriminator 1
	mr 3,31
.LEHB2:
	bl _ZN16idAnimatedEntityD2Ev
.LEHE2:
.LBE2673:
	.loc 2 554 0 is_stmt 1 discriminator 1
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL248:
	addi 1,1,16
	.cfi_remember_state
.LCFI97:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL249:
.L111:
.LCFI98:
	.cfi_restore_state
	mr 30,3
.LBB2674:
	.loc 2 551 0
	addi 3,31,1624
	bl _ZN4idAFD1Ev
.L110:
	mr 3,31
	bl _ZN16idAnimatedEntityD2Ev
	mr 3,30
.LEHB3:
	bl _Unwind_Resume
.LEHE3:
.L112:
	mr 30,3
	b .L110
.LBE2674:
	.cfi_endproc
.LFE2867:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2867:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2867-.LLSDACSB2867
.LLSDACSB2867:
	.uleb128 .LEHB0-.LFB2867
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L111-.LFB2867
	.uleb128 0
	.uleb128 .LEHB1-.LFB2867
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L112-.LFB2867
	.uleb128 0
	.uleb128 .LEHB2-.LFB2867
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2867
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2867:
	.section	".text"
	.size	_ZN15idAFEntity_BaseD2Ev, .-_ZN15idAFEntity_BaseD2Ev
	.section	.text._ZN18idAFEntity_VehicleD2Ev,"axG",@progbits,_ZN18idAFEntity_VehicleD5Ev,comdat
	.align 2
	.weak	_ZN18idAFEntity_VehicleD2Ev
	.type	_ZN18idAFEntity_VehicleD2Ev, @function
_ZN18idAFEntity_VehicleD2Ev:
.LFB2965:
	.file 9 "d:/Data/Nintendo/DoomGX/src/game/AFEntity.h"
	.loc 9 318 0
	.cfi_startproc
.LVL250:
.LBB2676:
	.loc 9 318 0
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
.LBE2676:
.LBB2677:
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	stw 0,0(3)
	b _ZN15idAFEntity_BaseD2Ev
.LVL251:
.LBE2677:
	.cfi_endproc
.LFE2965:
	.size	_ZN18idAFEntity_VehicleD2Ev, .-_ZN18idAFEntity_VehicleD2Ev
	.section	.text._ZN26idAFEntity_ClawFourFingersD2Ev,"axG",@progbits,_ZN26idAFEntity_ClawFourFingersD5Ev,comdat
	.align 2
	.weak	_ZN26idAFEntity_ClawFourFingersD2Ev
	.type	_ZN26idAFEntity_ClawFourFingersD2Ev, @function
_ZN26idAFEntity_ClawFourFingersD2Ev:
.LFB3312:
	.loc 9 457 0
	.cfi_startproc
.LVL252:
.LBB2679:
	.loc 9 457 0
	lis 9,_ZTV26idAFEntity_ClawFourFingers+8@ha
.LBE2679:
.LBB2680:
	la 0,_ZTV26idAFEntity_ClawFourFingers+8@l(9)
	stw 0,0(3)
	b _ZN15idAFEntity_BaseD2Ev
.LVL253:
.LBE2680:
	.cfi_endproc
.LFE3312:
	.size	_ZN26idAFEntity_ClawFourFingersD2Ev, .-_ZN26idAFEntity_ClawFourFingersD2Ev
	.section	".text"
	.align 2
	.globl _ZN20idAFEntity_SteamPipeD2Ev
	.type	_ZN20idAFEntity_SteamPipeD2Ev, @function
_ZN20idAFEntity_SteamPipeD2Ev:
.LFB2996:
	.loc 2 2323 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2996
.LVL254:
	mflr 0
	stwu 1,-16(1)
.LCFI99:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2681:
	lis 9,_ZTV20idAFEntity_SteamPipe+8@ha
.LBE2681:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2682:
	la 0,_ZTV20idAFEntity_SteamPipe+8@l(9)
	.cfi_offset 65, 4
.LBE2682:
	stw 30,8(1)
.LBB2683:
	.loc 2 2323 0
	stw 0,0(3)
	.loc 2 2324 0
	lwz 4,2512(3)
	cmpwi 7,4,0
	blt- 7,.L118
	.cfi_offset 30, -8
	.loc 2 2325 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
.LVL255:
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
.LEHB4:
	bctrl
.LEHE4:
.L118:
	.loc 2 2323 0
	addi 3,31,2260
.LEHB5:
	bl _ZN16idForce_ConstantD1Ev
.LEHE5:
.LBE2683:
	.loc 2 2327 0 discriminator 1
	lwz 0,20(1)
.LBB2684:
	.loc 2 2323 0 discriminator 1
	mr 3,31
.LBE2684:
	.loc 2 2327 0 discriminator 1
	lwz 30,8(1)
	lwz 31,12(1)
.LVL256:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI100:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LEHB6:
.LBB2685:
	.loc 2 2323 0 discriminator 1
	b _ZN15idAFEntity_BaseD2Ev
.LEHE6:
.LVL257:
.L122:
.LCFI101:
	.cfi_restore_state
	mr 30,3
	.loc 2 2323 0 is_stmt 0
	addi 3,31,2260
	bl _ZN16idForce_ConstantD1Ev
.L121:
	mr 3,31
	bl _ZN15idAFEntity_BaseD2Ev
	mr 3,30
.LEHB7:
	bl _Unwind_Resume
.LEHE7:
.L123:
	mr 30,3
	b .L121
.LBE2685:
	.cfi_endproc
.LFE2996:
	.section	.gcc_except_table
.LLSDA2996:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2996-.LLSDACSB2996
.LLSDACSB2996:
	.uleb128 .LEHB4-.LFB2996
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L122-.LFB2996
	.uleb128 0
	.uleb128 .LEHB5-.LFB2996
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L123-.LFB2996
	.uleb128 0
	.uleb128 .LEHB6-.LFB2996
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2996
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2996:
	.section	".text"
	.size	_ZN20idAFEntity_SteamPipeD2Ev, .-_ZN20idAFEntity_SteamPipeD2Ev
	.align 2
	.globl _ZN20idAFEntity_SteamPipeD0Ev
	.type	_ZN20idAFEntity_SteamPipeD0Ev, @function
_ZN20idAFEntity_SteamPipeD0Ev:
.LFB2998:
	.loc 2 2323 0 is_stmt 1
	.cfi_startproc
.LVL258:
	stwu 1,-16(1)
.LCFI102:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 2327 0
	.cfi_offset 65, 4
	bl _ZN20idAFEntity_SteamPipeD1Ev
.LVL259:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL260:
	mtlr 0
	addi 1,1,16
.LCFI103:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2998:
	.size	_ZN20idAFEntity_SteamPipeD0Ev, .-_ZN20idAFEntity_SteamPipeD0Ev
	.align 2
	.globl _ZN19idAFEntity_GibbableD2Ev
	.type	_ZN19idAFEntity_GibbableD2Ev, @function
_ZN19idAFEntity_GibbableD2Ev:
.LFB2901:
	.loc 2 984 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2901
.LVL261:
	mflr 0
	stwu 1,-16(1)
.LCFI104:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2686:
	lis 9,_ZTV19idAFEntity_Gibbable+8@ha
.LBE2686:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2687:
	la 0,_ZTV19idAFEntity_Gibbable+8@l(9)
	.cfi_offset 65, 4
.LBE2687:
	stw 30,8(1)
.LBB2688:
	.loc 2 984 0
	stw 0,0(3)
	.loc 2 985 0
	lwz 4,2252(3)
	cmpwi 7,4,-1
	beq- 7,.L127
	.cfi_offset 30, -8
	.loc 2 986 0
	lis 9,gameRenderWorld@ha
	lwz 3,gameRenderWorld@l(9)
.LVL262:
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
.LEHB8:
	bctrl
.LEHE8:
	.loc 2 987 0
	li 0,-1
	stw 0,2252(31)
.L127:
.LBE2688:
	.loc 2 989 0
	lwz 0,20(1)
.LBB2689:
	.loc 2 984 0
	mr 3,31
.LBE2689:
	.loc 2 989 0
	lwz 30,8(1)
	lwz 31,12(1)
.LVL263:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI105:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LEHB9:
.LBB2690:
	.loc 2 984 0
	b _ZN15idAFEntity_BaseD2Ev
.LEHE9:
.LVL264:
.L130:
.LCFI106:
	.cfi_restore_state
	mr 30,3
	mr 3,31
	bl _ZN15idAFEntity_BaseD2Ev
	mr 3,30
.LEHB10:
	bl _Unwind_Resume
.LEHE10:
.LBE2690:
	.cfi_endproc
.LFE2901:
	.section	.gcc_except_table
.LLSDA2901:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2901-.LLSDACSB2901
.LLSDACSB2901:
	.uleb128 .LEHB8-.LFB2901
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L130-.LFB2901
	.uleb128 0
	.uleb128 .LEHB9-.LFB2901
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2901
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2901:
	.section	".text"
	.size	_ZN19idAFEntity_GibbableD2Ev, .-_ZN19idAFEntity_GibbableD2Ev
	.align 2
	.globl _ZN18idAFEntity_GenericD2Ev
	.type	_ZN18idAFEntity_GenericD2Ev, @function
_ZN18idAFEntity_GenericD2Ev:
.LFB2923:
	.loc 2 1242 0
	.cfi_startproc
.LVL265:
.LBB2691:
	.loc 2 1242 0
	lis 9,_ZTV18idAFEntity_Generic+8@ha
.LBE2691:
	.loc 2 1243 0
.LBB2692:
	.loc 2 1242 0
	la 0,_ZTV18idAFEntity_Generic+8@l(9)
	stw 0,0(3)
	b _ZN19idAFEntity_GibbableD2Ev
.LVL266:
.LBE2692:
	.cfi_endproc
.LFE2923:
	.size	_ZN18idAFEntity_GenericD2Ev, .-_ZN18idAFEntity_GenericD2Ev
	.align 2
	.globl _ZN18idAFEntity_GenericD0Ev
	.type	_ZN18idAFEntity_GenericD0Ev, @function
_ZN18idAFEntity_GenericD0Ev:
.LFB2925:
	.loc 2 1242 0
	.cfi_startproc
.LVL267:
	stwu 1,-16(1)
.LCFI107:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1243 0
	.cfi_offset 65, 4
	bl _ZN18idAFEntity_GenericD1Ev
.LVL268:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL269:
	mtlr 0
	addi 1,1,16
.LCFI108:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2925:
	.size	_ZN18idAFEntity_GenericD0Ev, .-_ZN18idAFEntity_GenericD0Ev
	.align 2
	.globl _ZN19idAFEntity_GibbableD0Ev
	.type	_ZN19idAFEntity_GibbableD0Ev, @function
_ZN19idAFEntity_GibbableD0Ev:
.LFB2903:
	.loc 2 984 0
	.cfi_startproc
.LVL270:
	stwu 1,-16(1)
.LCFI109:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 989 0
	.cfi_offset 65, 4
	bl _ZN19idAFEntity_GibbableD1Ev
.LVL271:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL272:
	mtlr 0
	addi 1,1,16
.LCFI110:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2903:
	.size	_ZN19idAFEntity_GibbableD0Ev, .-_ZN19idAFEntity_GibbableD0Ev
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHeadD2Ev
	.type	_ZN27idAFEntity_WithAttachedHeadD2Ev, @function
_ZN27idAFEntity_WithAttachedHeadD2Ev:
.LFB2937:
	.loc 2 1362 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2937
.LVL273:
	mflr 0
	stwu 1,-16(1)
.LCFI111:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2693:
	lis 10,_ZTV27idAFEntity_WithAttachedHead+8@ha
.LBE2693:
	stw 30,8(1)
.LBB2708:
	la 10,_ZTV27idAFEntity_WithAttachedHead+8@l(10)
.LBE2708:
	stw 31,12(1)
.LBB2709:
.LBB2694:
.LBB2695:
	.loc 4 635 0
	lis 30,gameLocal@ha
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LBE2695:
.LBE2694:
.LBE2709:
	.loc 2 1362 0
	stw 0,20(1)
.LBB2710:
.LBB2699:
.LBB2696:
	.loc 4 635 0
	la 30,gameLocal@l(30)
.LBE2696:
.LBE2699:
	.loc 2 1362 0
	stw 10,0(3)
.LBE2710:
	mr 31,3
.LVL274:
.LBB2711:
.LBB2700:
.LBB2697:
	.loc 4 634 0
	lwz 0,2260(3)
	.cfi_offset 65, 4
	rlwinm 9,0,0,20,31
.LVL275:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L144
.LVL276:
.L138:
.LBE2697:
.LBE2700:
.LBE2711:
	.loc 2 1367 0
	lwz 0,20(1)
.LBB2712:
	.loc 2 1362 0
	mr 3,31
.LBE2712:
	.loc 2 1367 0
	lwz 30,8(1)
	lwz 31,12(1)
.LVL277:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI112:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LEHB11:
.LBB2713:
	.loc 2 1362 0
	b _ZN19idAFEntity_GibbableD2Ev
.LEHE11:
.LVL278:
.L144:
.LCFI113:
	.cfi_restore_state
.LBB2701:
.LBB2698:
	.loc 4 636 0
	addi 9,9,132
.LVL279:
	slwi 9,9,2
.LVL280:
	add 9,30,9
	lwz 3,4(9)
.LVL281:
.LBE2698:
.LBE2701:
	.loc 2 1363 0
	cmpwi 7,3,0
	beq- 7,.L138
.LVL282:
.LBB2702:
.LBB2703:
	.loc 2 308 0
	li 0,0
	.loc 2 310 0
	lwz 9,0(3)
.LVL283:
	.loc 2 308 0
	stw 0,1624(3)
	.loc 2 309 0
	li 0,-1
	stw 0,1636(3)
	.loc 2 310 0
	lwz 0,76(9)
	mtctr 0
.LEHB12:
	bctrl
.LVL284:
.LBE2703:
.LBE2702:
.LBB2704:
.LBB2705:
	.loc 4 634 0
	lwz 0,2260(31)
	.loc 4 638 0
	li 3,0
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL285:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,30,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L145
.LVL286:
.L139:
.LBE2705:
.LBE2704:
	.loc 2 1365 0
	lis 4,EV_Remove@ha
	li 5,0
	la 4,EV_Remove@l(4)
	bl _ZN7idClass11PostEventMSEPK10idEventDefi
.LEHE12:
.LBE2713:
	.loc 2 1367 0
	lwz 0,20(1)
.LBB2714:
	.loc 2 1362 0
	mr 3,31
.LBE2714:
	.loc 2 1367 0
	lwz 30,8(1)
	lwz 31,12(1)
.LVL287:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI114:
	.cfi_def_cfa_offset 0
.LEHB13:
.LBB2715:
	.loc 2 1362 0
	b _ZN19idAFEntity_GibbableD2Ev
.LEHE13:
.LVL288:
.L145:
.LCFI115:
	.cfi_restore_state
.LBB2707:
.LBB2706:
	.loc 4 636 0
	addi 9,9,132
.LVL289:
	slwi 9,9,2
.LVL290:
	add 30,30,9
	lwz 3,4(30)
	b .L139
.LVL291:
.L143:
	mr 30,3
.LBE2706:
.LBE2707:
	.loc 2 1362 0
	mr 3,31
	bl _ZN19idAFEntity_GibbableD2Ev
	mr 3,30
.LEHB14:
	bl _Unwind_Resume
.LEHE14:
.LBE2715:
	.cfi_endproc
.LFE2937:
	.section	.gcc_except_table
.LLSDA2937:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2937-.LLSDACSB2937
.LLSDACSB2937:
	.uleb128 .LEHB11-.LFB2937
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB2937
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L143-.LFB2937
	.uleb128 0
	.uleb128 .LEHB13-.LFB2937
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB2937
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2937:
	.section	".text"
	.size	_ZN27idAFEntity_WithAttachedHeadD2Ev, .-_ZN27idAFEntity_WithAttachedHeadD2Ev
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHeadD0Ev
	.type	_ZN27idAFEntity_WithAttachedHeadD0Ev, @function
_ZN27idAFEntity_WithAttachedHeadD0Ev:
.LFB2939:
	.loc 2 1362 0
	.cfi_startproc
.LVL292:
	stwu 1,-16(1)
.LCFI116:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1367 0
	.cfi_offset 65, 4
	bl _ZN27idAFEntity_WithAttachedHeadD1Ev
.LVL293:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL294:
	mtlr 0
	addi 1,1,16
.LCFI117:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2939:
	.size	_ZN27idAFEntity_WithAttachedHeadD0Ev, .-_ZN27idAFEntity_WithAttachedHeadD0Ev
	.align 2
	.globl _ZN15idAFEntity_BaseD0Ev
	.type	_ZN15idAFEntity_BaseD0Ev, @function
_ZN15idAFEntity_BaseD0Ev:
.LFB2869:
	.loc 2 551 0
	.cfi_startproc
.LVL295:
	stwu 1,-16(1)
.LCFI118:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 554 0
	.cfi_offset 65, 4
	bl _ZN15idAFEntity_BaseD1Ev
.LVL296:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL297:
	mtlr 0
	addi 1,1,16
.LCFI119:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2869:
	.size	_ZN15idAFEntity_BaseD0Ev, .-_ZN15idAFEntity_BaseD0Ev
	.align 2
	.globl _ZN14idAFAttachment5ThinkEv
	.type	_ZN14idAFAttachment5ThinkEv, @function
_ZN14idAFAttachment5ThinkEv:
.LFB2856:
	.loc 2 454 0
	.cfi_startproc
.LVL298:
	stwu 1,-16(1)
.LCFI120:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 455 0
	.cfi_offset 65, 4
	bl _ZN16idAnimatedEntity5ThinkEv
.LVL299:
	.loc 2 456 0
	lwz 0,152(31)
	andi. 9,0,16
	beq+ 0,.L150
	.loc 2 457 0
	mr 3,31
	bl _ZN16idAnimatedEntity19UpdateDamageEffectsEv
.L150:
	.loc 2 459 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL300:
	mtlr 0
	addi 1,1,16
.LCFI121:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2856:
	.size	_ZN14idAFAttachment5ThinkEv, .-_ZN14idAFAttachment5ThinkEv
	.align 2
	.globl _ZNK14idAFAttachment4SaveEP10idSaveGame
	.type	_ZNK14idAFAttachment4SaveEP10idSaveGame, @function
_ZNK14idAFAttachment4SaveEP10idSaveGame:
.LFB2846:
	.loc 2 329 0
	.cfi_startproc
.LVL301:
	mflr 0
	stwu 1,-16(1)
.LCFI122:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 2 329 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 2 330 0
	lwz 4,1624(3)
.LVL302:
	mr 3,30
.LVL303:
	bl _ZN10idSaveGame11WriteObjectEPK7idClass
	.loc 2 331 0
	lwz 4,1632(31)
	mr 3,30
	bl _ZN10idSaveGame8WriteIntEi
	.loc 2 332 0
	lwz 4,1636(31)
	mr 3,30
	bl _ZN10idSaveGame10WriteJointE13jointHandle_t
	.loc 2 333 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL304:
	mtlr 0
	lwz 31,12(1)
.LVL305:
	addi 1,1,16
.LCFI123:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2846:
	.size	_ZNK14idAFAttachment4SaveEP10idSaveGame, .-_ZNK14idAFAttachment4SaveEP10idSaveGame
	.align 2
	.globl _ZN14idAFAttachmentD2Ev
	.type	_ZN14idAFAttachmentD2Ev, @function
_ZN14idAFAttachmentD2Ev:
.LFB2839:
	.loc 2 268 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2839
.LVL306:
	mflr 0
	stwu 1,-16(1)
.LCFI124:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2716:
	lis 9,_ZTV14idAFAttachment+8@ha
	.loc 2 270 0
	li 4,0
.LBE2716:
	.loc 2 268 0
	stw 31,12(1)
.LBB2717:
	.loc 2 270 0
	li 5,0
.LBE2717:
	.loc 2 268 0
	stw 0,20(1)
.LBB2718:
	la 0,_ZTV14idAFAttachment+8@l(9)
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBE2718:
	stw 30,8(1)
	.loc 2 268 0
	mr 31,3
.LBB2719:
	stw 0,0(3)
.LEHB15:
	.loc 2 270 0
	.cfi_offset 30, -8
	bl _ZN8idEntity9StopSoundEib
.LVL307:
	.loc 2 272 0
	lwz 30,1628(31)
	cmpwi 7,30,0
	beq- 7,.L154
	.loc 2 272 0 is_stmt 0 discriminator 1
	mr 3,30
	bl _ZN11idClipModelD1Ev
.LEHE15:
	mr 3,30
	bl _ZdlPv
.L154:
	.loc 2 273 0 is_stmt 1
	li 0,0
	.loc 2 268 0
	mr 3,31
	.loc 2 273 0
	stw 0,1628(31)
.LEHB16:
	.loc 2 268 0
	bl _ZN16idAnimatedEntityD2Ev
.LEHE16:
.LBE2719:
	.loc 2 274 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL308:
	addi 1,1,16
	.cfi_remember_state
.LCFI125:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL309:
.L157:
.LCFI126:
	.cfi_restore_state
	mr 30,3
.LBB2720:
	.loc 2 268 0
	mr 3,31
	bl _ZN16idAnimatedEntityD2Ev
	mr 3,30
.LEHB17:
	bl _Unwind_Resume
.LEHE17:
.LBE2720:
	.cfi_endproc
.LFE2839:
	.section	.gcc_except_table
.LLSDA2839:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2839-.LLSDACSB2839
.LLSDACSB2839:
	.uleb128 .LEHB15-.LFB2839
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L157-.LFB2839
	.uleb128 0
	.uleb128 .LEHB16-.LFB2839
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2839
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2839:
	.section	".text"
	.size	_ZN14idAFAttachmentD2Ev, .-_ZN14idAFAttachmentD2Ev
	.align 2
	.globl _ZN14idAFAttachmentD0Ev
	.type	_ZN14idAFAttachmentD0Ev, @function
_ZN14idAFAttachmentD0Ev:
.LFB2841:
	.loc 2 268 0
	.cfi_startproc
.LVL310:
	stwu 1,-16(1)
.LCFI127:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 274 0
	.cfi_offset 65, 4
	bl _ZN14idAFAttachmentD1Ev
.LVL311:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL312:
	mtlr 0
	addi 1,1,16
.LCFI128:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2841:
	.size	_ZN14idAFAttachmentD0Ev, .-_ZN14idAFAttachmentD0Ev
	.align 2
	.globl _ZN14idMultiModelAF5SpawnEv
	.type	_ZN14idMultiModelAF5SpawnEv, @function
_ZN14idMultiModelAF5SpawnEv:
.LFB2815:
	.loc 2 51 0
	.cfi_startproc
.LVL313:
	mflr 0
	stwu 1,-8(1)
.LCFI129:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 4,3
	.loc 2 52 0
	addi 3,3,636
.LVL314:
	.loc 2 51 0
	stw 0,12(1)
	.loc 2 52 0
	.cfi_offset 65, 4
	bl _ZN14idPhysics_Base7SetSelfEP8idEntity
.LVL315:
	.loc 2 53 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI130:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2815:
	.size	_ZN14idMultiModelAF5SpawnEv, .-_ZN14idMultiModelAF5SpawnEv
	.align 2
	.globl _ZN15idAFEntity_Base5ThinkEv
	.type	_ZN15idAFEntity_Base5ThinkEv, @function
_ZN15idAFEntity_Base5ThinkEv:
.LFB2874:
	.loc 2 635 0
	.cfi_startproc
.LVL316:
	stwu 1,-16(1)
.LCFI131:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 636 0
	.cfi_offset 65, 4
	bl _ZN8idEntity10RunPhysicsEv
.LVL317:
	.loc 2 637 0
	mr 3,31
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
	.loc 2 638 0
	lwz 0,152(31)
	andi. 9,0,8
	beq+ 0,.L161
.LVL318:
.LBB2723:
.LBB2724:
	.loc 2 639 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 640 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
.LVL319:
.L161:
.LBE2724:
.LBE2723:
	.loc 2 642 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL320:
	mtlr 0
	addi 1,1,16
.LCFI132:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2874:
	.size	_ZN15idAFEntity_Base5ThinkEv, .-_ZN15idAFEntity_Base5ThinkEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead5ThinkEv
	.type	_ZN27idAFEntity_WithAttachedHead5ThinkEv, @function
_ZN27idAFEntity_WithAttachedHead5ThinkEv:
.LFB2944:
	.loc 2 1457 0
	.cfi_startproc
.LVL321:
	.loc 2 1459 0
	.loc 2 1458 0
	b _ZN15idAFEntity_Base5ThinkEv
.LVL322:
	.cfi_endproc
.LFE2944:
	.size	_ZN27idAFEntity_WithAttachedHead5ThinkEv, .-_ZN27idAFEntity_WithAttachedHead5ThinkEv
	.align 2
	.globl _ZN20idAFEntity_SteamPipe5ThinkEv
	.type	_ZN20idAFEntity_SteamPipe5ThinkEv, @function
_ZN20idAFEntity_SteamPipe5ThinkEv:
.LFB3003:
	.loc 2 2419 0
	.cfi_startproc
.LVL323:
	mflr 0
	stwu 1,-56(1)
.LCFI133:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,60(1)
	stw 29,44(1)
	stw 30,48(1)
.LBB2725:
	.loc 2 2422 0
	lwz 0,152(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	andi. 9,0,1
	bne- 0,.L169
.LVL324:
.L165:
	.loc 2 2431 0
	lwz 0,2512(31)
	cmpwi 7,0,0
	blt- 7,.L166
.LVL325:
	.loc 2 2432 0
	lwz 9,1656(31)
	addi 30,31,1656
	lwz 4,2248(31)
	mr 3,30
	lwz 0,132(9)
	mtctr 0
	bctrl
	.loc 2 2433 0
	lwz 11,1656(31)
.LBB2726:
.LBB2727:
	.loc 3 424 0
	lwz 0,0(3)
.LBE2727:
.LBE2726:
	.loc 2 2432 0
	mr 9,3
.LVL326:
	.loc 2 2433 0
	lwz 4,2248(31)
	mr 3,30
.LVL327:
.LBB2729:
.LBB2728:
	.loc 3 424 0
	stw 0,2356(31)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,2360(31)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,2364(31)
.LVL328:
.LBE2728:
.LBE2729:
	.loc 2 2433 0
	lwz 0,136(11)
	mtctr 0
	bctrl
.LVL329:
.LBB2730:
.LBB2731:
	.loc 6 333 0
	addi 8,31,2368
	li 10,0
.L167:
.LBB2732:
.LBB2733:
	.loc 3 424 0
	mr 11,3
	mr 9,8
	lwzux 0,11,10
.LBE2733:
.LBE2732:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB2736:
.LBB2734:
	.loc 3 424 0
	stwux 0,9,10
.LBE2734:
.LBE2736:
	.loc 6 333 0
	addi 10,10,12
.LBB2737:
.LBB2735:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE2735:
.LBE2737:
	.loc 6 333 0
	bne+ 7,.L167
.LBE2731:
.LBE2730:
	.loc 2 2434 0
	lis 9,gameRenderWorld@ha
	lwz 4,2512(31)
	lwz 3,gameRenderWorld@l(9)
.LVL330:
	addi 5,31,2296
	lwz 9,0(3)
	lwz 0,20(9)
	mtctr 0
	bctrl
.LVL331:
.L166:
	.loc 2 2437 0
	mr 3,31
	bl _ZN15idAFEntity_Base5ThinkEv
.LBE2725:
	.loc 2 2438 0
	lwz 0,60(1)
	lwz 29,44(1)
	mtlr 0
	lwz 30,48(1)
	lwz 31,52(1)
.LVL332:
	addi 1,1,56
	.cfi_remember_state
.LCFI134:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL333:
.L169:
.LCFI135:
	.cfi_restore_state
.LBB2834:
.LBB2738:
.LBB2739:
.LBB2740:
.LBB2741:
.LBB2742:
.LBB2743:
	.file 10 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Random.h"
	.loc 10 71 0
	lis 29,gameLocal@ha
	lis 11,0x1
	la 29,gameLocal@l(29)
	ori 11,11,3533
	addis 9,29,0x1
.LBE2743:
.LBE2742:
	.loc 10 83 0
	lis 10,0x4330
.LBB2749:
.LBB2744:
	.loc 10 71 0
	lwz 8,-32064(9)
.LBE2744:
.LBE2749:
.LBE2741:
.LBE2740:
.LBE2739:
.LBE2738:
	.loc 2 2426 0
	addi 30,3,2260
.LBB2780:
.LBB2770:
.LBB2762:
.LBB2754:
	.loc 10 83 0
	stw 10,24(1)
.LBE2754:
.LBE2762:
.LBE2770:
.LBE2780:
	.loc 2 2426 0
	addi 4,1,8
.LBB2781:
.LBB2771:
.LBB2763:
.LBB2755:
.LBB2750:
.LBB2745:
	.loc 10 71 0
	mullw 8,11,8
.LBE2745:
.LBE2750:
.LBE2755:
.LBE2763:
.LBE2771:
.LBE2781:
.LBB2782:
.LBB2783:
.LBB2784:
.LBB2785:
	.loc 10 83 0
	stw 10,32(1)
.LBE2785:
.LBE2784:
.LBE2783:
.LBE2782:
	.loc 2 2427 0
	addis 29,29,0x25
.LBB2817:
.LBB2772:
.LBB2764:
.LBB2756:
.LBB2751:
.LBB2746:
	.loc 10 71 0
	addi 0,8,1
.LBE2746:
.LBE2751:
.LBE2756:
.LBE2764:
.LBE2772:
.LBE2817:
.LBB2818:
.LBB2808:
.LBB2801:
.LBB2794:
.LBB2786:
.LBB2787:
	mullw 11,0,11
.LBE2787:
.LBE2786:
.LBE2794:
.LBE2801:
.LBE2808:
.LBE2818:
.LBB2819:
.LBB2773:
.LBB2765:
.LBB2757:
.LBB2752:
.LBB2747:
	.loc 10 72 0
	rlwinm 10,0,0,17,31
.LBE2747:
.LBE2752:
	.loc 10 83 0
	xoris 10,10,0x8000
	stw 10,28(1)
.LBE2757:
.LBE2765:
.LBE2773:
.LBE2819:
.LBB2820:
.LBB2809:
.LBB2802:
.LBB2795:
.LBB2791:
.LBB2788:
	.loc 10 71 0
	addi 11,11,1
.LBE2788:
.LBE2791:
.LBE2795:
.LBE2802:
.LBE2809:
.LBE2820:
.LBB2821:
.LBB2774:
.LBB2766:
.LBB2758:
	.loc 10 83 0
	lfd 13,24(1)
.LBE2758:
.LBE2766:
.LBE2774:
.LBE2821:
.LBB2822:
.LBB2810:
.LBB2803:
.LBB2796:
.LBB2792:
.LBB2789:
	.loc 10 72 0
	rlwinm 10,11,0,17,31
.LBE2789:
.LBE2792:
	.loc 10 83 0
	xoris 10,10,0x8000
	stw 10,36(1)
.LBE2796:
.LBE2803:
.LBE2810:
.LBE2822:
.LBB2823:
.LBB2775:
.LBB2767:
.LBB2759:
	lis 10,.LC5@ha
	lfs 0,.LC5@l(10)
.LBE2759:
.LBE2767:
	.loc 10 87 0
	lis 10,.LC6@ha
.LBE2775:
.LBE2823:
.LBB2824:
.LBB2811:
.LBB2804:
.LBB2797:
	.loc 10 83 0
	lfd 12,32(1)
.LBE2797:
.LBE2804:
.LBE2811:
.LBE2824:
.LBB2825:
.LBB2776:
.LBB2768:
.LBB2760:
	fsub 13,13,0
.LBE2760:
.LBE2768:
	.loc 10 87 0
	lfs 11,.LC6@l(10)
.LBE2776:
.LBE2825:
.LBB2826:
.LBB2812:
.LBB2805:
.LBB2798:
	.loc 10 83 0
	fsub 0,12,0
.LBE2798:
.LBE2805:
.LBE2812:
.LBE2826:
.LBB2827:
.LBB2777:
	.loc 10 87 0
	lis 10,.LC1@ha
	lfs 12,.LC1@l(10)
.LBB2769:
.LBB2761:
	.loc 10 83 0
	frsp 13,13
.LBB2753:
.LBB2748:
	.loc 10 71 0
	stw 0,-32064(9)
.LBE2748:
.LBE2753:
.LBE2761:
.LBE2769:
.LBE2777:
.LBE2827:
.LBB2828:
.LBB2813:
.LBB2806:
.LBB2799:
	.loc 10 83 0
	frsp 0,0
.LBE2799:
.LBE2806:
.LBE2813:
.LBE2828:
.LBB2829:
.LBB2778:
	.loc 10 87 0
	fmsubs 13,13,11,12
.LBE2778:
.LBE2829:
.LBB2830:
.LBB2814:
	fmsubs 0,0,11,12
.LBE2814:
.LBE2830:
	.loc 2 2423 0
	lfs 11,2252(3)
.LBB2831:
.LBB2815:
.LBB2807:
.LBB2800:
.LBB2793:
.LBB2790:
	.loc 10 71 0
	stw 11,-32064(9)
.LBE2790:
.LBE2793:
.LBE2800:
.LBE2807:
.LBE2815:
.LBE2831:
.LBB2832:
.LBB2779:
	.loc 10 87 0
	fadds 13,13,13
.LBE2779:
.LBE2832:
.LBB2833:
.LBB2816:
	fadds 0,0,0
.LBE2816:
.LBE2833:
	.loc 2 2424 0
	lfs 12,2252(3)
	.loc 2 2425 0
	lwz 0,2256(3)
	.loc 2 2426 0
	mr 3,30
.LVL334:
	.loc 2 2423 0
	fmuls 13,11,13
	.loc 2 2424 0
	fmuls 0,12,0
	.loc 2 2425 0
	stw 0,16(1)
	.loc 2 2423 0
	stfs 13,8(1)
.LVL335:
	.loc 2 2424 0
	stfs 0,12(1)
	.loc 2 2426 0
	bl _ZN16idForce_Constant8SetForceERK6idVec3
	.loc 2 2427 0
	lwz 4,2004(29)
	mr 3,30
	bl _ZN16idForce_Constant8EvaluateEi
	b .L165
.LBE2834:
	.cfi_endproc
.LFE3003:
	.size	_ZN20idAFEntity_SteamPipe5ThinkEv, .-_ZN20idAFEntity_SteamPipe5ThinkEv
	.align 2
	.globl _ZN18idAFEntity_Generic5ThinkEv
	.type	_ZN18idAFEntity_Generic5ThinkEv, @function
_ZN18idAFEntity_Generic5ThinkEv:
.LFB2928:
	.loc 2 1268 0
	.cfi_startproc
.LVL336:
	stwu 1,-16(1)
.LCFI136:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1269 0
	.cfi_offset 65, 4
	bl _ZN15idAFEntity_Base5ThinkEv
.LVL337:
	.loc 2 1271 0
	lbz 0,2257(31)
	cmpwi 7,0,0
	beq+ 7,.L170
.LVL338:
.LBB2837:
.LBB2838:
	.loc 2 1272 0
	mr 3,31
	li 4,2
	bl _ZN8idEntity12BecomeActiveEi
.LVL339:
.L170:
.LBE2838:
.LBE2837:
	.loc 2 1274 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL340:
	mtlr 0
	addi 1,1,16
.LCFI137:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2928:
	.size	_ZN18idAFEntity_Generic5ThinkEv, .-_ZN18idAFEntity_Generic5ThinkEv
	.align 2
	.globl _ZN15idAFEntity_Base10LinkCombatEv
	.type	_ZN15idAFEntity_Base10LinkCombatEv, @function
_ZN15idAFEntity_Base10LinkCombatEv:
.LFB2889:
	.loc 2 851 0
	.cfi_startproc
.LVL341:
	mflr 0
	stwu 1,-8(1)
.LCFI138:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 852 0
	lwz 0,192(3)
	.cfi_offset 65, 4
	andis. 9,0,4096
	bne- 0,.L172
	.loc 2 855 0
	lwz 0,2188(3)
	cmpwi 7,0,0
	beq- 7,.L172
.LVL342:
.LBB2841:
.LBB2842:
	.loc 2 856 0
	mr 5,3
	lwz 9,412(3)
	lis 4,gameLocal+2311032@ha
	mr 3,0
.LVL343:
	la 4,gameLocal+2311032@l(4)
	li 6,0
	addi 7,5,256
	addi 8,5,268
	bl _ZN11idClipModel4LinkER6idClipP8idEntityiRK6idVec3RK6idMat3i
.LVL344:
.L172:
.LBE2842:
.LBE2841:
	.loc 2 858 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI139:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2889:
	.size	_ZN15idAFEntity_Base10LinkCombatEv, .-_ZN15idAFEntity_Base10LinkCombatEv
	.align 2
	.globl _ZN14idAFAttachment10LinkCombatEv
	.type	_ZN14idAFAttachment10LinkCombatEv, @function
_ZN14idAFAttachment10LinkCombatEv:
.LFB2859:
	.loc 2 490 0
	.cfi_startproc
.LVL345:
	mflr 0
	stwu 1,-8(1)
.LCFI140:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 491 0
	lwz 0,192(3)
	.cfi_offset 65, 4
	andis. 9,0,4096
	bne- 0,.L174
	.loc 2 495 0
	lwz 0,1628(3)
	cmpwi 7,0,0
	beq- 7,.L174
.LVL346:
.LBB2845:
.LBB2846:
	.loc 2 496 0
	mr 5,3
	lwz 9,412(3)
	lis 4,gameLocal+2311032@ha
	mr 3,0
.LVL347:
	la 4,gameLocal+2311032@l(4)
	li 6,0
	addi 7,5,256
	addi 8,5,268
	bl _ZN11idClipModel4LinkER6idClipP8idEntityiRK6idVec3RK6idMat3i
.LVL348:
.L174:
.LBE2846:
.LBE2845:
	.loc 2 498 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI141:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2859:
	.size	_ZN14idAFAttachment10LinkCombatEv, .-_ZN14idAFAttachment10LinkCombatEv
	.align 2
	.globl _ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi
	.type	_ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi, @function
_ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi:
.LFB2913:
	.loc 2 1101 0
	.cfi_startproc
.LVL349:
	mflr 0
	stwu 1,-24(1)
.LCFI142:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 30,16(1)
	mr 30,7
	.cfi_offset 30, -8
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	.loc 2 1102 0
	lwz 0,192(3)
	.cfi_offset 65, 4
	andis. 9,0,8192
	bne- 0,.L180
.LVL350:
.L176:
	.loc 2 1109 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL351:
	mtlr 0
	lwz 30,16(1)
.LVL352:
	lwz 31,20(1)
.LVL353:
	addi 1,1,24
	.cfi_remember_state
.LCFI143:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL354:
.L180:
.LCFI144:
	.cfi_restore_state
	.loc 2 1105 0
	bl _ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
.LVL355:
	.loc 2 1106 0
	lwz 0,188(31)
	cmpwi 7,0,-20
	bge+ 7,.L176
.LVL356:
.LBB2855:
.LBB2856:
.LBB2857:
.LBB2858:
	.file 11 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Dict.h"
	.loc 11 241 0 discriminator 1
	lis 4,.LC8@ha
	addi 3,31,100
	la 4,.LC8@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL357:
	.loc 11 242 0 discriminator 1
	cmpwi 0,3,0
	beq- 0,.L179
.LVL358:
.LBB2859:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL359:
.L178:
.LBE2859:
.LBE2858:
.LBE2857:
	.loc 11 257 0
	bl atoi
.LBE2856:
.LBE2855:
	.loc 2 1106 0
	cmpwi 7,3,0
	beq- 7,.L176
.LVL360:
.LBB2863:
.LBB2864:
	.loc 2 1107 0 discriminator 4
	lwz 9,0(31)
	mr 3,31
	mr 4,29
	mr 5,30
	lwz 0,248(9)
	mtctr 0
	bctrl
	b .L176
.LVL361:
.L179:
.LBE2864:
.LBE2863:
.LBB2865:
.LBB2862:
.LBB2861:
.LBB2860:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL362:
	la 3,.LC7@l(3)
	b .L178
.LBE2860:
.LBE2861:
.LBE2862:
.LBE2865:
	.cfi_endproc
.LFE2913:
	.size	_ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi, .-_ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi
	.align 2
	.globl _ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.type	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3, @function
_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3:
.LFB2884:
	.loc 2 783 0
	.cfi_startproc
.LVL363:
	mflr 0
	stwu 1,-8(1)
.LCFI145:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 2 784 0
	lbz 0,2185(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	bne- 7,.L184
.LBB2868:
.LBB2869:
	.loc 2 788 0
	bl _ZN8idEntity27GetPhysicsToVisualTransformER6idVec3R6idMat3
.LVL364:
.LBE2869:
.LBE2868:
	.loc 2 789 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI146:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL365:
.L184:
.LCFI147:
	.cfi_restore_state
	.loc 2 785 0
	addi 3,3,1624
.LVL366:
	bl _ZNK4idAF27GetPhysicsToVisualTransformER6idVec3R6idMat3
.LVL367:
	.loc 2 789 0
	lwz 0,12(1)
	.loc 2 786 0
	li 3,1
	.loc 2 789 0
	mtlr 0
	addi 1,1,8
.LCFI148:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2884:
	.size	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3, .-_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.align 2
	.globl _ZN19idAFEntity_Gibbable7PresentEv
	.type	_ZN19idAFEntity_Gibbable7PresentEv, @function
_ZN19idAFEntity_Gibbable7PresentEv:
.LFB2908:
	.loc 2 1069 0
	.cfi_startproc
.LVL368:
	mflr 0
	stwu 1,-264(1)
.LCFI149:
	.cfi_def_cfa_offset 264
	.cfi_register 65, 0
.LBB2886:
	.loc 2 1072 0
	lis 9,gameLocal+2426876@ha
.LBE2886:
	.loc 2 1069 0
	stw 31,260(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,268(1)
.LBB2887:
	.loc 2 1072 0
	lbz 0,gameLocal+2426876@l(9)
	.cfi_offset 65, 4
.LBE2887:
	.loc 2 1069 0
	stw 24,232(1)
.LBB2888:
	.loc 2 1072 0
	cmpwi 7,0,0
.LBE2888:
	.loc 2 1069 0
	stw 25,236(1)
	stw 26,240(1)
	stw 27,244(1)
	stw 28,248(1)
	stw 29,252(1)
	stw 30,256(1)
.LBB2889:
	.loc 2 1072 0
	beq- 7,.L185
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.loc 2 1077 0
	lwz 0,152(3)
	andi. 9,0,8
	beq- 0,.L185
.LVL369:
.LBE2889:
.LBB2890:
.LBB2891:
	.loc 2 1082 0
	lbz 0,2256(3)
	cmpwi 7,0,0
	bne- 7,.L193
.LVL370:
.L189:
	.loc 2 1093 0
	mr 3,31
	bl _ZN8idEntity7PresentEv
.LVL371:
.L185:
.LBE2891:
.LBE2890:
	.loc 2 1094 0
	lwz 0,268(1)
	lwz 24,232(1)
	mtlr 0
	lwz 25,236(1)
	lwz 26,240(1)
	lwz 27,244(1)
	lwz 28,248(1)
	lwz 29,252(1)
	lwz 30,256(1)
	lwz 31,260(1)
.LVL372:
	addi 1,1,264
	.cfi_remember_state
.LCFI150:
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
.LVL373:
.L193:
.LCFI151:
	.cfi_restore_state
.LBB2923:
.LBB2922:
	.loc 2 1082 0
	bl _ZNK8idEntity8IsHiddenEv
.LVL374:
	cmpwi 7,3,0
	bne- 7,.L189
	lwz 30,2248(31)
	cmpwi 7,30,0
	beq- 7,.L189
.LVL375:
.LBB2892:
.LBB2893:
	.file 12 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/RenderWorld.h"
	.loc 12 80 0
	lwz 7,240(31)
	lwz 11,252(31)
.LBB2894:
.LBB2895:
	.loc 3 424 0
	lwz 9,256(31)
.LBE2895:
.LBE2894:
	.loc 12 80 0
	lwz 24,196(31)
	lwz 25,200(31)
	lwz 12,204(31)
.LBB2900:
.LBB2901:
.LBB2902:
	.loc 3 424 0
	lwz 26,208(31)
	.loc 3 425 0
	lwz 27,212(31)
	.loc 3 426 0
	lwz 28,216(31)
	.loc 3 424 0
	lwz 29,220(31)
	.loc 3 425 0
	lwz 3,224(31)
	.loc 3 426 0
	lwz 4,228(31)
.LBE2902:
.LBE2901:
.LBE2900:
	.loc 12 80 0
	lwz 5,232(31)
	lwz 6,236(31)
	lwz 8,244(31)
	lwz 10,248(31)
.LBB2905:
.LBB2896:
	.loc 3 425 0
	lwz 0,260(31)
.LBE2896:
.LBE2905:
	.loc 12 80 0
	stw 7,52(1)
.LBB2906:
.LBB2897:
	.loc 2 1069 0
	addi 7,1,116
.LBE2897:
.LBE2906:
	.loc 12 80 0
	stw 11,64(1)
.LBB2907:
.LBB2908:
	.loc 6 333 0
	addi 11,31,268
.LBE2908:
.LBE2907:
.LBB2912:
.LBB2898:
	.loc 3 424 0
	stw 9,68(1)
	.loc 3 426 0
	addi 9,1,80
.LBE2898:
.LBE2912:
	.loc 12 80 0
	stw 24,8(1)
	stw 25,12(1)
	stw 12,16(1)
.LVL376:
.LBB2913:
.LBB2904:
.LBB2903:
	.loc 3 424 0
	stw 26,20(1)
	.loc 3 425 0
	stw 27,24(1)
	.loc 3 426 0
	stw 28,28(1)
.LVL377:
	.loc 3 424 0
	stw 29,32(1)
	.loc 3 425 0
	stw 3,36(1)
	.loc 3 426 0
	stw 4,40(1)
.LBE2903:
.LBE2904:
.LBE2913:
	.loc 12 80 0
	stw 5,44(1)
	stw 6,48(1)
	stw 8,56(1)
	stw 10,60(1)
.LBB2914:
.LBB2899:
	.loc 3 425 0
	stw 0,72(1)
	.loc 3 426 0
	lwz 0,264(31)
	stw 0,76(1)
.LVL378:
.L190:
.LBE2899:
.LBE2914:
.LBB2915:
.LBB2911:
.LBB2909:
.LBB2910:
	.loc 3 424 0
	lwz 8,0(11)
	.loc 3 425 0
	lwz 10,4(11)
	.loc 3 426 0
	lwz 0,8(11)
	addi 11,11,12
	.loc 3 424 0
	stw 8,0(9)
	.loc 3 425 0
	stw 10,4(9)
	.loc 3 426 0
	stw 0,8(9)
	addi 9,9,12
.LBE2910:
.LBE2909:
	.loc 6 333 0
	cmpw 7,9,7
	bne+ 7,.L190
.LBE2911:
.LBE2915:
	.loc 12 80 0
	lwz 10,304(31)
	addi 4,31,320
	lwz 11,308(31)
	li 5,48
	lwz 9,312(31)
	addi 3,1,132
	lwz 0,316(31)
	stw 10,116(1)
	stw 11,120(1)
	stw 9,124(1)
	stw 0,128(1)
	bl memcpy
.LBE2893:
.LBE2892:
	.loc 2 1086 0
	lwz 4,2252(31)
.LBB2919:
.LBB2916:
	.loc 12 80 0
	lwz 9,404(31)
.LBE2916:
.LBE2919:
	.loc 2 1086 0
	cmpwi 7,4,-1
.LBB2920:
.LBB2917:
	.loc 12 80 0
	lwz 3,388(31)
	lwz 26,368(31)
	lwz 27,372(31)
	lwz 28,376(31)
	lwz 29,380(31)
	lwz 12,384(31)
	lwz 5,392(31)
	lbz 6,396(31)
	lbz 7,397(31)
	lbz 8,398(31)
	lbz 10,399(31)
	lwz 11,400(31)
	lwz 0,408(31)
	stw 9,216(1)
.LBE2917:
.LBE2920:
	.loc 2 1087 0
	lis 9,gameRenderWorld@ha
.LBB2921:
.LBB2918:
	.loc 12 80 0
	stw 3,200(1)
	stw 26,180(1)
	stw 27,184(1)
	stw 28,188(1)
	stw 29,192(1)
	stw 12,196(1)
	stw 5,204(1)
	stb 6,208(1)
	stb 7,209(1)
	stb 8,210(1)
	stb 10,211(1)
	stw 11,212(1)
	stw 0,220(1)
.LBE2918:
.LBE2921:
	.loc 2 1084 0
	stw 30,8(1)
	.loc 2 1087 0
	lwz 3,gameRenderWorld@l(9)
	.loc 2 1086 0
	beq- 7,.L194
	.loc 2 1089 0
	lwz 9,0(3)
	addi 5,1,8
	lwz 0,20(9)
	mtctr 0
	bctrl
	b .L189
.L194:
	.loc 2 1087 0
	lwz 9,0(3)
	addi 4,1,8
	lwz 0,16(9)
	mtctr 0
	bctrl
	stw 3,2252(31)
	b .L189
.LBE2922:
.LBE2923:
	.cfi_endproc
.LFE2908:
	.size	_ZN19idAFEntity_Gibbable7PresentEv, .-_ZN19idAFEntity_Gibbable7PresentEv
	.align 2
	.globl _ZN14idMultiModelAF7PresentEv
	.type	_ZN14idMultiModelAF7PresentEv, @function
_ZN14idMultiModelAF7PresentEv:
.LFB2821:
	.loc 2 87 0
	.cfi_startproc
.LVL379:
	mflr 0
	stwu 1,-40(1)
.LCFI152:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB2946:
	.loc 2 91 0
	lwz 0,152(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	andi. 9,0,8
	bne- 0,.L203
.LVL380:
.L195:
.LBE2946:
	.loc 2 114 0
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
.LVL381:
	addi 1,1,40
	.cfi_remember_state
.LCFI153:
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
.LVL382:
.L203:
.LCFI154:
	.cfi_restore_state
.LBB2947:
.LBB2948:
	.loc 2 94 0
	li 4,8
	bl _ZN8idEntity14BecomeInactiveEi
.LVL383:
	.loc 2 96 0
	lwz 11,1064(31)
	cmpwi 7,11,0
	ble- 7,.L195
	li 30,0
	.loc 2 102 0
	addi 28,31,636
.LBB2949:
.LBB2950:
	.loc 6 333 0
	addi 29,31,268
.LBE2950:
.LBE2949:
	.loc 2 111 0
	lis 26,gameRenderWorld@ha
	addi 27,31,196
.LVL384:
.L200:
	.loc 2 98 0
	lwz 9,1076(31)
	.loc 2 87 0
	slwi 25,30,2
	.loc 2 98 0
	lwzx 0,9,25
	cmpwi 7,0,0
	beq- 7,.L197
	.loc 2 102 0
	mr 4,30
	mr 3,28
	bl _ZNK12idPhysics_AF9GetOriginEi
	.loc 2 103 0
	mr 4,30
.LBB2958:
.LBB2959:
	.loc 3 424 0
	lwz 0,0(3)
.LBE2959:
.LBE2958:
	.loc 2 102 0
	mr 9,3
.LVL385:
	.loc 2 103 0
	mr 3,28
.LVL386:
.LBB2961:
.LBB2960:
	.loc 3 424 0
	stw 0,256(31)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,260(31)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,264(31)
.LBE2960:
.LBE2961:
	.loc 2 103 0
	bl _ZNK12idPhysics_AF7GetAxisEi
.LVL387:
.LBB2962:
.LBB2957:
	.loc 6 333 0
	li 10,0
.L198:
.LBB2951:
.LBB2952:
	.loc 3 424 0
	mr 11,3
	mr 9,29
	lwzux 0,11,10
.LBE2952:
.LBE2951:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB2955:
.LBB2953:
	.loc 3 424 0
	stwux 0,9,10
.LBE2953:
.LBE2955:
	.loc 6 333 0
	addi 10,10,12
.LBB2956:
.LBB2954:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE2954:
.LBE2956:
	.loc 6 333 0
	bne+ 7,.L198
.LVL388:
.LBE2957:
.LBE2962:
	.loc 2 104 0
	lwz 9,1076(31)
.LBB2963:
.LBB2964:
	.file 13 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/List.h"
	.loc 13 589 0
	lwz 24,1092(31)
.LBE2964:
.LBE2963:
	.loc 2 104 0
	lwzx 0,9,25
	.loc 2 105 0
	stw 30,204(31)
.LVL389:
	.loc 2 104 0
	stw 0,196(31)
	.loc 2 109 0
	lwz 3,gameRenderWorld@l(26)
.LVL390:
	.loc 2 108 0
	lwzx 4,24,25
	cmpwi 7,4,-1
	beq- 7,.L204
.LVL391:
	.loc 2 111 0
	lwz 9,0(3)
	mr 5,27
	lwz 0,20(9)
	mtctr 0
	bctrl
	lwz 11,1064(31)
.LVL392:
.L197:
	.loc 2 96 0
	addi 30,30,1
.LVL393:
	cmpw 7,30,11
	blt+ 7,.L200
.LBE2948:
.LBE2947:
	.loc 2 114 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL394:
	lwz 31,36(1)
.LVL395:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI155:
	.cfi_def_cfa_offset 0
	blr
.LVL396:
.L204:
.LCFI156:
	.cfi_restore_state
.LBB2966:
.LBB2965:
	.loc 2 109 0
	lwz 9,0(3)
	mr 4,27
	lwz 0,16(9)
	mtctr 0
	bctrl
	stwx 3,24,25
	lwz 11,1064(31)
	b .L197
.LBE2965:
.LBE2966:
	.cfi_endproc
.LFE2821:
	.size	_ZN14idMultiModelAF7PresentEv, .-_ZN14idMultiModelAF7PresentEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead10LinkCombatEv
	.type	_ZN27idAFEntity_WithAttachedHead10LinkCombatEv, @function
_ZN27idAFEntity_WithAttachedHead10LinkCombatEv:
.LFB2945:
	.loc 2 1466 0
	.cfi_startproc
.LVL397:
	mflr 0
	stwu 1,-16(1)
.LCFI157:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB2973:
	.loc 2 1469 0
	lwz 0,192(3)
	.cfi_offset 65, 4
	andis. 9,0,4096
	bne- 0,.L205
.LVL398:
.LBE2973:
.LBB2974:
.LBB2975:
	.loc 2 1473 0
	lwz 3,2188(3)
.LVL399:
	cmpwi 7,3,0
	beq- 7,.L207
	.loc 2 1474 0
	lis 4,gameLocal+2311032@ha
	lwz 9,412(31)
	la 4,gameLocal+2311032@l(4)
	mr 5,31
	li 6,0
	addi 7,31,256
	addi 8,31,268
	bl _ZN11idClipModel4LinkER6idClipP8idEntityiRK6idVec3RK6idMat3i
.L207:
.LVL400:
.LBB2976:
.LBB2977:
	.loc 4 634 0
	lwz 0,2260(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	la 9,gameLocal@l(9)
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL401:
	.loc 4 635 0
	srawi 0,0,12
	addi 10,11,4228
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	beq- 7,.L208
.LVL402:
.L205:
.LBE2977:
.LBE2976:
.LBE2975:
.LBE2974:
	.loc 2 1480 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL403:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI158:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL404:
.L208:
.LCFI159:
	.cfi_restore_state
.LBB2981:
.LBB2980:
.LBB2979:
.LBB2978:
	.loc 4 636 0
	addi 11,11,132
.LVL405:
	slwi 11,11,2
.LVL406:
	add 9,9,11
	lwz 3,4(9)
.LBE2978:
.LBE2979:
	.loc 2 1477 0
	cmpwi 7,3,0
	beq- 7,.L205
	.loc 2 1478 0
	lwz 9,0(3)
	lwz 0,232(9)
	mtctr 0
	bctrl
.LBE2980:
.LBE2981:
	.loc 2 1480 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL407:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI160:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2945:
	.size	_ZN27idAFEntity_WithAttachedHead10LinkCombatEv, .-_ZN27idAFEntity_WithAttachedHead10LinkCombatEv
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.76, @function
_Z41__static_initialization_and_destruction_0ii.constprop.76:
.LFB3429:
	.loc 2 2927 0
	.cfi_startproc
.LVL408:
	cmpwi 7,3,1
	mflr 0
	stwu 1,-64(1)
.LCFI161:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 0,68(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	stw 31,60(1)
	.loc 2 2927 0
	beq- 7,.L212
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	.loc 2 2452 0
	cmpwi 7,3,0
	bne- 7,.L209
	lis 31,.LANCHOR0@ha
	la 31,.LANCHOR0@l(31)
	addi 3,31,960
.LVL409:
	bl _ZN10idTypeInfoD1Ev
	.loc 2 2297 0
	addi 3,31,880
	bl _ZN10idTypeInfoD1Ev
	.loc 2 2103 0
	addi 3,31,800
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1922 0
	addi 3,31,720
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1725 0
	addi 3,31,640
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1605 0
	addi 3,31,560
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1339 0
	addi 3,31,480
	bl _ZN10idTypeInfoD1Ev
	.loc 2 1220 0
	addi 3,31,400
	bl _ZN10idTypeInfoD1Ev
	.loc 2 958 0
	addi 3,31,320
	bl _ZN10idTypeInfoD1Ev
	.loc 2 522 0
	addi 3,31,240
	bl _ZN10idTypeInfoD1Ev
	.loc 2 244 0
	addi 3,31,160
	bl _ZN10idTypeInfoD1Ev
	.loc 2 135 0
	addi 3,31,80
	bl _ZN10idTypeInfoD1Ev
	.loc 2 43 0
	mr 3,31
	bl _ZN10idTypeInfoD1Ev
.L209:
	.loc 2 2927 0
	lwz 0,68(1)
	lwz 25,36(1)
	mtlr 0
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI162:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL410:
.L212:
.LCFI163:
	.cfi_restore_state
	.loc 4 694 0
	lis 9,_ZN6idMath8M_SEC2MSE@ha
	.loc 4 121 0
	lis 30,.LANCHOR0@ha
	.loc 4 694 0
	lfs 0,_ZN6idMath8M_SEC2MSE@l(9)
	.loc 4 121 0
	la 30,.LANCHOR0@l(30)
	li 26,3
.LBB2982:
.LBB2983:
	.loc 3 396 0
	li 0,0
.LBE2983:
.LBE2982:
	.loc 4 694 0
	fadds 0,0,0
	.loc 4 121 0
	stw 26,1040(30)
.LVL411:
.LBB2987:
.LBB2984:
	.loc 3 398 0
	lis 26,.LC9@ha
	.loc 3 396 0
	stw 0,1044(30)
	.loc 3 397 0
	stw 0,1048(30)
.LBE2984:
.LBE2987:
.LBB2988:
.LBB2989:
	.file 14 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Math.h"
	.loc 14 825 0
	addi 11,30,1056
	fctiwz 0,0
.LBE2989:
.LBE2988:
.LBB2991:
.LBB2985:
	.loc 3 398 0
	lwz 0,.LC9@l(26)
.LBE2985:
.LBE2991:
	.loc 2 43 0
	lis 27,.LC10@ha
	lis 28,_ZNK8idEntity4SaveEP10idSaveGame@ha
	la 27,.LC10@l(27)
.LBB2992:
.LBB2986:
	.loc 3 398 0
	stw 0,1052(30)
.LVL412:
.LBE2986:
.LBE2992:
.LBB2993:
.LBB2990:
	.loc 14 825 0
	stfiwx 0,0,11
.LVL413:
.LBE2990:
.LBE2993:
	.file 15 "d:/Data/Nintendo/DoomGX/src/game/Player.h"
	.loc 15 69 0
	li 0,10
	.loc 2 43 0
	lis 11,_ZN14idMultiModelAF5SpawnEv@ha
	lis 29,_ZN8idEntity7RestoreEP13idRestoreGame@ha
	lis 5,.LC11@ha
	lis 7,_ZN14idMultiModelAF14CreateInstanceEv@ha
	li 31,0
	la 28,_ZNK8idEntity4SaveEP10idSaveGame@l(28)
	la 29,_ZN8idEntity7RestoreEP13idRestoreGame@l(29)
	mr 3,30
.LVL414:
	mr 4,27
	addi 6,30,1064
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	.loc 15 69 0
	stw 0,1060(30)
	.loc 2 43 0
	la 5,.LC11@l(5)
	la 0,_ZN14idMultiModelAF5SpawnEv@l(11)
	la 7,_ZN14idMultiModelAF14CreateInstanceEv@l(7)
	stw 0,8(1)
	stw 28,16(1)
	.loc 2 244 0
	lis 25,.LC14@ha
	.loc 2 43 0
	stw 29,24(1)
	.loc 2 244 0
	la 25,.LC14@l(25)
	.loc 2 43 0
	stw 31,12(1)
	.loc 2 522 0
	lis 26,_ZNK15idAFEntity_Base4SaveEP10idSaveGame@ha
	.loc 2 43 0
	stw 31,20(1)
	.loc 2 522 0
	la 26,_ZNK15idAFEntity_Base4SaveEP10idSaveGame@l(26)
	.loc 2 43 0
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 135 0
	lis 11,_ZN7idChain5SpawnEv@ha
	lis 4,.LC12@ha
	lis 7,_ZN7idChain14CreateInstanceEv@ha
	la 0,_ZN7idChain5SpawnEv@l(11)
	addi 3,30,80
	mr 5,27
	addi 6,30,1076
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 4,.LC12@l(4)
	la 7,_ZN7idChain14CreateInstanceEv@l(7)
	stw 0,8(1)
	.loc 2 522 0
	lis 27,_ZN15idAFEntity_Base7RestoreEP13idRestoreGame@ha
	.loc 2 135 0
	stw 28,16(1)
	.loc 2 522 0
	lis 28,.LC17@ha
	.loc 2 135 0
	stw 29,24(1)
	.loc 2 522 0
	lis 29,.LANCHOR1@ha
	.loc 2 135 0
	stw 31,12(1)
	.loc 2 522 0
	la 28,.LC17@l(28)
	.loc 2 135 0
	stw 31,20(1)
	.loc 2 522 0
	la 29,.LANCHOR1@l(29)
	.loc 2 135 0
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 244 0
	lis 11,_ZN14idAFAttachment5SpawnEv@ha
	lis 7,_ZN14idAFAttachment14CreateInstanceEv@ha
	la 0,_ZN14idAFAttachment5SpawnEv@l(11)
	lis 11,_ZNK14idAFAttachment4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 4,.LC13@ha
	la 0,_ZNK14idAFAttachment4SaveEP10idSaveGame@l(11)
	lis 11,_ZN14idAFAttachment7RestoreEP13idRestoreGame@ha
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 7,_ZN14idAFAttachment14CreateInstanceEv@l(7)
	addi 3,30,160
	mr 5,25
	addi 6,30,1088
	stw 0,16(1)
	la 4,.LC13@l(4)
	la 0,_ZN14idAFAttachment7RestoreEP13idRestoreGame@l(11)
	stw 0,24(1)
	.loc 2 522 0
	la 27,_ZN15idAFEntity_Base7RestoreEP13idRestoreGame@l(27)
	.loc 2 244 0
	stw 31,12(1)
	stw 31,20(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 520 0
	lis 4,.LC15@ha
	lis 5,.LC16@ha
	addi 3,30,1100
	la 4,.LC15@l(4)
	la 5,.LC16@l(5)
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 522 0
	lis 11,_ZN15idAFEntity_Base5SpawnEv@ha
	lis 7,_ZN15idAFEntity_Base14CreateInstanceEv@ha
	la 0,_ZN15idAFEntity_Base5SpawnEv@l(11)
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 7,_ZN15idAFEntity_Base14CreateInstanceEv@l(7)
	addi 3,30,240
	mr 4,28
	mr 5,25
	mr 6,29
	stw 0,8(1)
	.loc 2 958 0
	lis 25,.LC20@ha
	.loc 2 522 0
	stw 31,12(1)
	.loc 2 958 0
	la 25,.LC20@l(25)
	.loc 2 522 0
	stw 26,16(1)
	stw 31,20(1)
	stw 27,24(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 955 0
	lis 4,.LC8@ha
	lis 5,.LC18@ha
	addi 3,30,1164
	la 4,.LC8@l(4)
	la 5,.LC18@l(5)
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 956 0
	lis 4,.LC19@ha
	addi 3,30,1228
	la 4,.LC19@l(4)
	li 5,0
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 958 0
	lis 11,_ZN19idAFEntity_Gibbable5SpawnEv@ha
	la 0,_ZN19idAFEntity_Gibbable5SpawnEv@l(11)
	lis 11,_ZNK19idAFEntity_Gibbable4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 7,_ZN19idAFEntity_Gibbable14CreateInstanceEv@ha
	la 0,_ZNK19idAFEntity_Gibbable4SaveEP10idSaveGame@l(11)
	lis 11,_ZN19idAFEntity_Gibbable7RestoreEP13idRestoreGame@ha
	addi 3,30,320
	mr 4,25
	mr 5,28
	addi 6,29,24
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 0,16(1)
	la 7,_ZN19idAFEntity_Gibbable14CreateInstanceEv@l(7)
	la 0,_ZN19idAFEntity_Gibbable7RestoreEP13idRestoreGame@l(11)
	stw 0,24(1)
	stw 31,12(1)
	stw 31,20(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1220 0
	lis 11,_ZN18idAFEntity_Generic5SpawnEv@ha
	lis 4,.LC21@ha
	la 0,_ZN18idAFEntity_Generic5SpawnEv@l(11)
	lis 11,_ZNK18idAFEntity_Generic4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 7,_ZN18idAFEntity_Generic14CreateInstanceEv@ha
	la 0,_ZNK18idAFEntity_Generic4SaveEP10idSaveGame@l(11)
	lis 11,_ZN18idAFEntity_Generic7RestoreEP13idRestoreGame@ha
	addi 3,30,400
	mr 5,25
	addi 6,29,60
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 0,16(1)
	la 4,.LC21@l(4)
	la 0,_ZN18idAFEntity_Generic7RestoreEP13idRestoreGame@l(11)
	la 7,_ZN18idAFEntity_Generic14CreateInstanceEv@l(7)
	stw 0,24(1)
	stw 31,12(1)
	stw 31,20(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1339 0
	lis 11,_ZN27idAFEntity_WithAttachedHead5SpawnEv@ha
	lis 4,.LC22@ha
	la 0,_ZN27idAFEntity_WithAttachedHead5SpawnEv@l(11)
	lis 11,_ZNK27idAFEntity_WithAttachedHead4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 7,_ZN27idAFEntity_WithAttachedHead14CreateInstanceEv@ha
	la 0,_ZNK27idAFEntity_WithAttachedHead4SaveEP10idSaveGame@l(11)
	lis 11,_ZN27idAFEntity_WithAttachedHead7RestoreEP13idRestoreGame@ha
	addi 3,30,480
	mr 5,25
	addi 6,29,84
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 0,16(1)
	la 4,.LC22@l(4)
	la 0,_ZN27idAFEntity_WithAttachedHead7RestoreEP13idRestoreGame@l(11)
	la 7,_ZN27idAFEntity_WithAttachedHead14CreateInstanceEv@l(7)
	.loc 2 1605 0
	lis 25,.LC23@ha
	.loc 2 1339 0
	stw 0,24(1)
	.loc 2 1605 0
	la 25,.LC23@l(25)
	.loc 2 1339 0
	stw 31,12(1)
	stw 31,20(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1605 0
	lis 11,_ZN18idAFEntity_Vehicle5SpawnEv@ha
	lis 7,_ZN18idAFEntity_Vehicle14CreateInstanceEv@ha
	la 0,_ZN18idAFEntity_Vehicle5SpawnEv@l(11)
	addi 3,30,560
	mr 4,25
	mr 5,28
	addi 6,30,1292
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 7,_ZN18idAFEntity_Vehicle14CreateInstanceEv@l(7)
	stw 0,8(1)
	stw 31,12(1)
	stw 26,16(1)
	stw 31,20(1)
	stw 27,24(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1725 0
	lis 11,_ZN24idAFEntity_VehicleSimple5SpawnEv@ha
	lis 4,.LC24@ha
	lis 7,_ZN24idAFEntity_VehicleSimple14CreateInstanceEv@ha
	la 0,_ZN24idAFEntity_VehicleSimple5SpawnEv@l(11)
	addi 3,30,640
	mr 5,25
	addi 6,30,1304
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 4,.LC24@l(4)
	la 7,_ZN24idAFEntity_VehicleSimple14CreateInstanceEv@l(7)
	stw 0,8(1)
	stw 31,12(1)
	stw 26,16(1)
	stw 31,20(1)
	stw 27,24(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 1922 0
	lis 11,_ZN28idAFEntity_VehicleFourWheels5SpawnEv@ha
	lis 4,.LC25@ha
	lis 7,_ZN28idAFEntity_VehicleFourWheels14CreateInstanceEv@ha
	la 0,_ZN28idAFEntity_VehicleFourWheels5SpawnEv@l(11)
	addi 3,30,720
	mr 5,25
	addi 6,30,1316
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 4,.LC25@l(4)
	la 7,_ZN28idAFEntity_VehicleFourWheels14CreateInstanceEv@l(7)
	stw 0,8(1)
	stw 31,12(1)
	stw 26,16(1)
	stw 31,20(1)
	stw 27,24(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 2103 0
	lis 11,_ZN27idAFEntity_VehicleSixWheels5SpawnEv@ha
	lis 4,.LC26@ha
	lis 7,_ZN27idAFEntity_VehicleSixWheels14CreateInstanceEv@ha
	la 0,_ZN27idAFEntity_VehicleSixWheels5SpawnEv@l(11)
	addi 3,30,800
	mr 5,25
	addi 6,30,1328
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 4,.LC26@l(4)
	la 7,_ZN27idAFEntity_VehicleSixWheels14CreateInstanceEv@l(7)
	stw 0,8(1)
	stw 31,12(1)
	stw 26,16(1)
	stw 31,20(1)
	stw 27,24(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 2297 0
	lis 11,_ZN20idAFEntity_SteamPipe5SpawnEv@ha
	lis 7,_ZN20idAFEntity_SteamPipe14CreateInstanceEv@ha
	la 0,_ZN20idAFEntity_SteamPipe5SpawnEv@l(11)
	lis 11,_ZNK20idAFEntity_SteamPipe4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 4,.LC27@ha
	la 0,_ZNK20idAFEntity_SteamPipe4SaveEP10idSaveGame@l(11)
	lis 11,_ZN20idAFEntity_SteamPipe7RestoreEP13idRestoreGame@ha
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	la 7,_ZN20idAFEntity_SteamPipe14CreateInstanceEv@l(7)
	addi 3,30,880
	mr 5,28
	addi 6,30,1340
	stw 0,16(1)
	la 4,.LC27@l(4)
	la 0,_ZN20idAFEntity_SteamPipe7RestoreEP13idRestoreGame@l(11)
	stw 0,24(1)
	stw 31,12(1)
	stw 31,20(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	.loc 2 2449 0
	lis 4,.LC28@ha
	lis 5,.LC29@ha
	addi 3,30,1352
	la 4,.LC28@l(4)
	la 5,.LC29@l(5)
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 2450 0
	lis 4,.LC30@ha
	addi 3,30,1416
	la 4,.LC30@l(4)
	li 5,0
	li 6,0
	bl _ZN10idEventDefC1EPKcS1_c
	.loc 2 2452 0
	lis 11,_ZN26idAFEntity_ClawFourFingers5SpawnEv@ha
	la 0,_ZN26idAFEntity_ClawFourFingers5SpawnEv@l(11)
	lis 11,_ZNK26idAFEntity_ClawFourFingers4SaveEP10idSaveGame@ha
	stw 0,8(1)
	lis 4,.LC31@ha
	la 0,_ZNK26idAFEntity_ClawFourFingers4SaveEP10idSaveGame@l(11)
	lis 7,_ZN26idAFEntity_ClawFourFingers14CreateInstanceEv@ha
	lis 11,_ZN26idAFEntity_ClawFourFingers7RestoreEP13idRestoreGame@ha
	stw 0,16(1)
	addi 3,30,960
	la 0,_ZN26idAFEntity_ClawFourFingers7RestoreEP13idRestoreGame@l(11)
	la 4,.LC31@l(4)
	mr 5,28
	addi 6,29,120
	la 7,_ZN26idAFEntity_ClawFourFingers14CreateInstanceEv@l(7)
	addi 8,1,8
	addi 9,1,16
	addi 10,1,24
	stw 31,12(1)
	stw 31,20(1)
	stw 0,24(1)
	stw 31,28(1)
	bl _ZN10idTypeInfoC1EPKcS1_P11idEventFuncI7idClassEPFPS3_vEMS3_FvvEMS3_KFvP10idSaveGameEMS3_FvP13idRestoreGameE
	b .L209
	.cfi_endproc
.LFE3429:
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.76, .-_Z41__static_initialization_and_destruction_0ii.constprop.76
	.section	.text._ZN26idAFEntity_ClawFourFingersD0Ev,"axG",@progbits,_ZN26idAFEntity_ClawFourFingersD5Ev,comdat
	.align 2
	.weak	_ZN26idAFEntity_ClawFourFingersD0Ev
	.type	_ZN26idAFEntity_ClawFourFingersD0Ev, @function
_ZN26idAFEntity_ClawFourFingersD0Ev:
.LFB3314:
	.loc 9 457 0
	.cfi_startproc
.LVL415:
	mflr 0
	stwu 1,-16(1)
.LCFI164:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB2997:
.LBB2998:
.LBB2999:
	lis 9,_ZTV26idAFEntity_ClawFourFingers+8@ha
.LBE2999:
.LBE2998:
.LBE2997:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL416:
	stw 0,20(1)
.LBB3002:
.LBB3001:
.LBB3000:
	.loc 9 457 0
	la 0,_ZTV26idAFEntity_ClawFourFingers+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN15idAFEntity_BaseD2Ev
.LVL417:
.LBE3000:
.LBE3001:
.LBE3002:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL418:
	mtlr 0
	addi 1,1,16
.LCFI165:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3314:
	.size	_ZN26idAFEntity_ClawFourFingersD0Ev, .-_ZN26idAFEntity_ClawFourFingersD0Ev
	.section	".text"
	.align 2
	.globl _ZN15idAFEntity_Base6LoadAFEv
	.type	_ZN15idAFEntity_Base6LoadAFEv, @function
_ZN15idAFEntity_Base6LoadAFEv:
.LFB2873:
	.loc 2 604 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2873
.LVL419:
	stwu 1,-144(1)
.LCFI166:
	.cfi_def_cfa_offset 144
.LVL420:
	mflr 0
.LBB3027:
.LBB3028:
.LBB3029:
.LBB3030:
	.loc 5 357 0
	li 9,20
.LBE3030:
.LBE3029:
.LBE3028:
.LBB3039:
.LBB3040:
	.loc 11 231 0
	lis 4,.LC32@ha
.LBE3040:
.LBE3039:
.LBE3027:
	.loc 2 604 0
	stw 27,124(1)
.LBB3090:
	.loc 2 607 0
	addi 27,3,100
	.cfi_offset 27, -20
	.cfi_register 65, 0
.LVL421:
.LBE3090:
	.loc 2 604 0
	stw 0,148(1)
.LBB3091:
.LBB3061:
.LBB3054:
	.loc 11 231 0
	la 4,.LC32@l(4)
.LBE3054:
.LBE3061:
.LBB3062:
.LBB3035:
.LBB3031:
	.loc 5 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE3031:
.LBE3035:
.LBE3062:
.LBE3091:
	.loc 2 604 0
	stw 31,140(1)
.LBB3092:
.LBB3063:
.LBB3036:
.LBB3032:
	.loc 5 357 0
	stw 9,16(1)
.LBE3032:
.LBE3036:
.LBE3063:
.LBE3092:
	.loc 2 604 0
	mr 31,3
	.cfi_offset 31, -4
.LBB3093:
.LBB3064:
.LBB3037:
.LBB3033:
	.loc 5 358 0
	addi 9,1,20
.LBE3033:
.LBE3037:
.LBE3064:
.LBB3065:
.LBB3055:
	.loc 11 231 0
	mr 3,27
.LVL422:
.LBE3055:
.LBE3065:
.LBE3093:
	.loc 2 604 0
	stw 29,132(1)
	addi 29,1,8
	.cfi_offset 29, -12
	stw 26,120(1)
	stw 28,128(1)
	stw 30,136(1)
.LBB3094:
.LBB3066:
.LBB3038:
.LBB3034:
	.loc 5 356 0
	stw 0,8(1)
	.loc 5 358 0
	stw 9,12(1)
	.loc 5 359 0
	stb 0,20(1)
.LEHB18:
.LBE3034:
.LBE3038:
.LBE3066:
.LBB3067:
.LBB3056:
	.loc 11 231 0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	bl _ZNK6idDict7FindKeyEPKc
.LVL423:
	.loc 11 232 0
	cmpwi 0,3,0
	beq- 0,.L217
.LBE3056:
	.loc 2 2927 0
	lwz 28,4(3)
.LVL424:
	addi 29,1,8
.LBB3057:
.LBB3041:
.LBB3042:
.LBB3043:
.LBB3044:
	.loc 5 350 0
	lwz 0,16(1)
.LBE3044:
.LBE3043:
.LBE3042:
	.loc 2 2927 0
	lwz 30,0(28)
.LBB3049:
	.loc 5 534 0
	addi 4,30,1
.LVL425:
.LBB3047:
.LBB3045:
	.loc 5 350 0
	cmpw 7,4,0
	bgt- 7,.L230
.LVL426:
.L218:
.LBE3045:
.LBE3047:
	.loc 5 535 0
	lwz 3,12(1)
	mr 5,30
	lwz 4,4(28)
	bl memcpy
	.loc 5 536 0
	lwz 9,12(1)
	li 0,0
.LBE3049:
.LBE3041:
.LBE3057:
.LBE3067:
	.loc 2 611 0
	mr 3,31
.LBB3068:
.LBB3058:
.LBB3052:
.LBB3050:
	.loc 5 536 0
	stbx 0,9,30
	.loc 5 537 0
	stw 30,8(1)
.LBE3050:
.LBE3052:
.LBE3058:
.LBE3068:
	.loc 2 611 0
	lwz 9,0(31)
	lwz 0,92(9)
	mtctr 0
	bctrl
.LVL427:
.LBB3069:
.LBB3070:
	.loc 8 63 0
	stw 3,2088(31)
.LBE3070:
.LBE3069:
	.loc 2 612 0
	addi 30,31,1624
.LVL428:
	lwz 5,12(1)
	mr 3,30
.LVL429:
	mr 4,31
	bl _ZN4idAF4LoadEP8idEntityPKc
.LVL430:
	.loc 2 612 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L231
.L221:
	.loc 2 616 0 is_stmt 1
	mr 3,30
	bl _ZN4idAF5StartEv
.LVL431:
	.loc 2 618 0
	lwz 9,1656(31)
	addi 3,1,40
	addi 4,31,2208
	lwz 26,128(9)
	bl _ZNK6idMat310ToRotationEv
	.loc 2 618 0 is_stmt 0 discriminator 1
	addi 28,31,1656
.LVL432:
	addi 4,1,40
	mr 3,28
	li 5,-1
	mtctr 26
	bctrl
.LVL433:
	.loc 2 619 0 is_stmt 1
	lwz 9,1656(31)
	mr 3,28
	addi 4,31,2196
	li 5,-1
	lwz 0,124(9)
	mtctr 0
	bctrl
.LVL434:
.LBB3071:
.LBB3072:
	.loc 2 692 0
	mr 3,30
	mr 4,27
	bl _ZN4idAF9LoadStateERK6idDict
.LBE3072:
.LBE3071:
	.loc 2 623 0
	mr 3,30
	bl _ZN4idAF15UpdateAnimationEv
	.loc 2 624 0
	lis 9,gameLocal+2426836@ha
	addi 3,31,636
	lwz 4,gameLocal+2426836@l(9)
	li 5,1
	bl _ZN10idAnimator11CreateFrameEib
	.loc 2 625 0
	mr 3,31
	bl _ZN8idEntity13UpdateVisualsEv
.LEHE18:
.LBB3073:
.LBB3074:
.LBB3075:
	.loc 5 501 0
	mr 3,29
.LBE3075:
.LBE3074:
.LBE3073:
	.loc 2 627 0
	li 31,1
.LVL435:
.LEHB19:
.LBB3082:
.LBB3079:
.LBB3076:
	.loc 5 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE19:
.LBE3076:
.LBE3079:
.LBE3082:
.LBE3094:
	.loc 2 628 0
	lwz 0,148(1)
	mr 3,31
	lwz 26,120(1)
	mtlr 0
	lwz 27,124(1)
.LVL436:
	lwz 28,128(1)
	lwz 29,132(1)
	lwz 30,136(1)
.LVL437:
	lwz 31,140(1)
	addi 1,1,144
	.cfi_remember_state
.LCFI167:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL438:
.L231:
.LCFI168:
	.cfi_restore_state
.LBB3095:
	.loc 2 613 0
	lis 3,gameLocal@ha
	lis 4,.LC34@ha
	lwz 5,12(1)
	la 3,gameLocal@l(3)
	lwz 6,72(31)
	la 4,.LC34@l(4)
.LEHB20:
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L221
.LVL439:
.L230:
.LBB3083:
.LBB3059:
.LBB3053:
.LBB3051:
.LBB3048:
.LBB3046:
	.loc 5 351 0
	mr 3,29
.LVL440:
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL441:
	b .L218
.LVL442:
.L217:
.LBE3046:
.LBE3048:
.LBE3051:
.LBE3053:
	.loc 11 236 0
	addi 29,1,8
	lis 4,.LC33@ha
	mr 3,29
.LVL443:
	la 4,.LC33@l(4)
	bl _ZN5idStraSEPKc
.LEHE20:
.LBE3059:
.LBE3083:
.LBB3084:
.LBB3080:
.LBB3077:
	.loc 5 501 0
	mr 3,29
.LBE3077:
.LBE3080:
.LBE3084:
.LBB3085:
.LBB3060:
	.loc 2 608 0
	li 31,0
.LVL444:
.LEHB21:
.LBE3060:
.LBE3085:
.LBB3086:
.LBB3081:
.LBB3078:
	.loc 5 501 0
	bl _ZN5idStr8FreeDataEv
.LEHE21:
.LBE3078:
.LBE3081:
.LBE3086:
.LBE3095:
	.loc 2 628 0
	lwz 0,148(1)
	mr 3,31
	lwz 26,120(1)
	mtlr 0
	lwz 27,124(1)
.LVL445:
	lwz 28,128(1)
	lwz 29,132(1)
	lwz 30,136(1)
	lwz 31,140(1)
	addi 1,1,144
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI169:
	.cfi_def_cfa_offset 0
	blr
.LVL446:
.L226:
.LCFI170:
	.cfi_restore_state
	mr 31,3
.LVL447:
.LBB3096:
.LBB3087:
.LBB3088:
.LBB3089:
	.loc 5 501 0
	mr 3,29
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB22:
	bl _Unwind_Resume
.LEHE22:
.LBE3089:
.LBE3088:
.LBE3087:
.LBE3096:
	.cfi_endproc
.LFE2873:
	.section	.gcc_except_table
.LLSDA2873:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2873-.LLSDACSB2873
.LLSDACSB2873:
	.uleb128 .LEHB18-.LFB2873
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L226-.LFB2873
	.uleb128 0
	.uleb128 .LEHB19-.LFB2873
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB2873
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L226-.LFB2873
	.uleb128 0
	.uleb128 .LEHB21-.LFB2873
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB2873
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE2873:
	.section	".text"
	.size	_ZN15idAFEntity_Base6LoadAFEv, .-_ZN15idAFEntity_Base6LoadAFEv
	.section	.text._ZN27idAFEntity_VehicleSixWheelsD0Ev,"axG",@progbits,_ZN27idAFEntity_VehicleSixWheelsD5Ev,comdat
	.align 2
	.weak	_ZN27idAFEntity_VehicleSixWheelsD0Ev
	.type	_ZN27idAFEntity_VehicleSixWheelsD0Ev, @function
_ZN27idAFEntity_VehicleSixWheelsD0Ev:
.LFB3318:
	.loc 9 399 0
	.cfi_startproc
.LVL448:
	mflr 0
	stwu 1,-16(1)
.LCFI171:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3103:
.LBB3104:
.LBB3105:
.LBB3106:
.LBB3107:
.LBB3108:
	.loc 9 318 0
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
.LBE3108:
.LBE3107:
.LBE3106:
.LBE3105:
.LBE3104:
.LBE3103:
	.loc 9 399 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL449:
	stw 0,20(1)
.LBB3114:
.LBB3113:
.LBB3112:
.LBB3111:
.LBB3110:
.LBB3109:
	.loc 9 318 0
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN15idAFEntity_BaseD2Ev
.LVL450:
.LBE3109:
.LBE3110:
.LBE3111:
.LBE3112:
.LBE3113:
.LBE3114:
	.loc 9 399 0
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL451:
	mtlr 0
	addi 1,1,16
.LCFI172:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3318:
	.size	_ZN27idAFEntity_VehicleSixWheelsD0Ev, .-_ZN27idAFEntity_VehicleSixWheelsD0Ev
	.section	.text._ZN28idAFEntity_VehicleFourWheelsD2Ev,"axG",@progbits,_ZN28idAFEntity_VehicleFourWheelsD5Ev,comdat
	.align 2
	.weak	_ZN28idAFEntity_VehicleFourWheelsD2Ev
	.type	_ZN28idAFEntity_VehicleFourWheelsD2Ev, @function
_ZN28idAFEntity_VehicleFourWheelsD2Ev:
.LFB3320:
	.loc 9 374 0
	.cfi_startproc
.LVL452:
.LBB3120:
.LBB3121:
.LBB3122:
.LBB3123:
	.loc 9 318 0
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
.LBE3123:
.LBE3122:
.LBE3121:
.LBE3120:
	.loc 9 374 0
.LBB3127:
.LBB3126:
.LBB3125:
.LBB3124:
	.loc 9 318 0
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	stw 0,0(3)
	b _ZN15idAFEntity_BaseD2Ev
.LVL453:
.LVL454:
.LBE3124:
.LBE3125:
.LBE3126:
.LBE3127:
	.cfi_endproc
.LFE3320:
	.size	_ZN28idAFEntity_VehicleFourWheelsD2Ev, .-_ZN28idAFEntity_VehicleFourWheelsD2Ev
	.section	.text._ZN27idAFEntity_VehicleSixWheelsD2Ev,"axG",@progbits,_ZN27idAFEntity_VehicleSixWheelsD5Ev,comdat
	.align 2
	.weak	_ZN27idAFEntity_VehicleSixWheelsD2Ev
	.type	_ZN27idAFEntity_VehicleSixWheelsD2Ev, @function
_ZN27idAFEntity_VehicleSixWheelsD2Ev:
.LFB3316:
	.loc 9 399 0
	.cfi_startproc
.LVL455:
.LBB3132:
.LBB3133:
.LBB3134:
.LBB3135:
	.loc 9 318 0
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
.LBE3135:
.LBE3134:
.LBE3133:
.LBE3132:
	.loc 9 399 0
.LBB3139:
.LBB3138:
.LBB3137:
.LBB3136:
	.loc 9 318 0
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	stw 0,0(3)
	b _ZN15idAFEntity_BaseD2Ev
.LVL456:
.LVL457:
.LBE3136:
.LBE3137:
.LBE3138:
.LBE3139:
	.cfi_endproc
.LFE3316:
	.size	_ZN27idAFEntity_VehicleSixWheelsD2Ev, .-_ZN27idAFEntity_VehicleSixWheelsD2Ev
	.section	".text"
	.align 2
	.globl _ZN24idAFEntity_VehicleSimpleD2Ev
	.type	_ZN24idAFEntity_VehicleSimpleD2Ev, @function
_ZN24idAFEntity_VehicleSimpleD2Ev:
.LFB2971:
	.loc 2 1749 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2971
.LVL458:
	mflr 0
	stwu 1,-16(1)
.LCFI173:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3144:
	lis 9,_ZTV24idAFEntity_VehicleSimple+8@ha
.LBE3144:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB3154:
	la 0,_ZTV24idAFEntity_VehicleSimple+8@l(9)
	.cfi_offset 65, 4
.LBE3154:
	stw 30,8(1)
.LBB3155:
	.loc 2 1749 0
	stw 0,0(3)
	.loc 2 1750 0
	lwz 30,2276(3)
	.cfi_offset 30, -8
	cmpwi 7,30,0
	beq- 7,.L243
	.loc 2 1750 0 is_stmt 0 discriminator 1
	mr 3,30
.LVL459:
.LEHB23:
	bl _ZN11idClipModelD1Ev
.LEHE23:
	mr 3,30
	bl _ZdlPv
.L243:
	.loc 2 1751 0 is_stmt 1
	li 0,0
.LBB3145:
.LBB3146:
.LBB3147:
	.loc 9 318 0
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
.LBE3147:
.LBE3146:
.LBE3145:
	.loc 2 1751 0
	stw 0,2276(31)
.LVL460:
.LBB3152:
.LBB3150:
.LBB3148:
	.loc 9 318 0
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	stw 0,0(31)
	mr 3,31
.LBE3148:
.LBE3150:
.LBE3152:
.LBE3155:
	.loc 2 1752 0
	lwz 0,20(1)
	lwz 30,8(1)
	lwz 31,12(1)
.LVL461:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI174:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
.LEHB24:
.LBB3156:
.LBB3153:
.LBB3151:
.LBB3149:
	.loc 9 318 0
	b _ZN15idAFEntity_BaseD2Ev
.LEHE24:
.LVL462:
.L247:
.LCFI175:
	.cfi_restore_state
	mr 30,3
.LBE3149:
.LBE3151:
.LBE3153:
	.loc 2 1749 0
	mr 3,31
	bl _ZN18idAFEntity_VehicleD2Ev
	mr 3,30
.LEHB25:
	bl _Unwind_Resume
.LEHE25:
.LBE3156:
	.cfi_endproc
.LFE2971:
	.section	.gcc_except_table
.LLSDA2971:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2971-.LLSDACSB2971
.LLSDACSB2971:
	.uleb128 .LEHB23-.LFB2971
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L247-.LFB2971
	.uleb128 0
	.uleb128 .LEHB24-.LFB2971
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB2971
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE2971:
	.section	".text"
	.size	_ZN24idAFEntity_VehicleSimpleD2Ev, .-_ZN24idAFEntity_VehicleSimpleD2Ev
	.align 2
	.globl _ZN24idAFEntity_VehicleSimpleD0Ev
	.type	_ZN24idAFEntity_VehicleSimpleD0Ev, @function
_ZN24idAFEntity_VehicleSimpleD0Ev:
.LFB2973:
	.loc 2 1749 0
	.cfi_startproc
.LVL463:
	stwu 1,-16(1)
.LCFI176:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 1752 0
	.cfi_offset 65, 4
	bl _ZN24idAFEntity_VehicleSimpleD1Ev
.LVL464:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL465:
	mtlr 0
	addi 1,1,16
.LCFI177:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2973:
	.size	_ZN24idAFEntity_VehicleSimpleD0Ev, .-_ZN24idAFEntity_VehicleSimpleD0Ev
	.section	.text._ZN18idAFEntity_VehicleD0Ev,"axG",@progbits,_ZN18idAFEntity_VehicleD5Ev,comdat
	.align 2
	.weak	_ZN18idAFEntity_VehicleD0Ev
	.type	_ZN18idAFEntity_VehicleD0Ev, @function
_ZN18idAFEntity_VehicleD0Ev:
.LFB2967:
	.loc 9 318 0
	.cfi_startproc
.LVL466:
	mflr 0
	stwu 1,-16(1)
.LCFI178:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3160:
.LBB3161:
.LBB3162:
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
.LBE3162:
.LBE3161:
.LBE3160:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL467:
	stw 0,20(1)
.LBB3165:
.LBB3164:
.LBB3163:
	.loc 9 318 0
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN15idAFEntity_BaseD2Ev
.LVL468:
.LBE3163:
.LBE3164:
.LBE3165:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL469:
	mtlr 0
	addi 1,1,16
.LCFI179:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2967:
	.size	_ZN18idAFEntity_VehicleD0Ev, .-_ZN18idAFEntity_VehicleD0Ev
	.section	.text._ZN28idAFEntity_VehicleFourWheelsD0Ev,"axG",@progbits,_ZN28idAFEntity_VehicleFourWheelsD5Ev,comdat
	.align 2
	.weak	_ZN28idAFEntity_VehicleFourWheelsD0Ev
	.type	_ZN28idAFEntity_VehicleFourWheelsD0Ev, @function
_ZN28idAFEntity_VehicleFourWheelsD0Ev:
.LFB3322:
	.loc 9 374 0
	.cfi_startproc
.LVL470:
	mflr 0
	stwu 1,-16(1)
.LCFI180:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3172:
.LBB3173:
.LBB3174:
.LBB3175:
.LBB3176:
.LBB3177:
	.loc 9 318 0
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
.LBE3177:
.LBE3176:
.LBE3175:
.LBE3174:
.LBE3173:
.LBE3172:
	.loc 9 374 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL471:
	stw 0,20(1)
.LBB3183:
.LBB3182:
.LBB3181:
.LBB3180:
.LBB3179:
.LBB3178:
	.loc 9 318 0
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN15idAFEntity_BaseD2Ev
.LVL472:
.LBE3178:
.LBE3179:
.LBE3180:
.LBE3181:
.LBE3182:
.LBE3183:
	.loc 9 374 0
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL473:
	mtlr 0
	addi 1,1,16
.LCFI181:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3322:
	.size	_ZN28idAFEntity_VehicleFourWheelsD0Ev, .-_ZN28idAFEntity_VehicleFourWheelsD0Ev
	.section	.text._ZN14idFixedWindingD0Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD0Ev
	.type	_ZN14idFixedWindingD0Ev, @function
_ZN14idFixedWindingD0Ev:
.LFB1500:
	.loc 1 380 0
	.cfi_startproc
.LVL474:
	mflr 0
	stwu 1,-8(1)
.LCFI182:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB3190:
.LBB3191:
.LBB3192:
.LBB3193:
.LBB3194:
.LBB3195:
	.loc 1 183 0
	lis 11,_ZTV9idWinding+8@ha
.LBE3195:
.LBE3194:
.LBE3193:
.LBE3192:
.LBE3191:
.LBE3190:
	.loc 1 380 0
	stw 0,12(1)
.LBB3201:
.LBB3200:
.LBB3199:
	.loc 1 381 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,8(3)
.LVL475:
.LBB3198:
.LBB3197:
.LBB3196:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(11)
	stw 0,0(3)
.LBE3196:
.LBE3197:
.LBE3198:
.LBE3199:
.LBE3200:
.LBE3201:
	.loc 1 382 0
	bl _ZdlPv
.LVL476:
	lwz 0,12(1)
	addi 1,1,8
.LCFI183:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1500:
	.size	_ZN14idFixedWindingD0Ev, .-_ZN14idFixedWindingD0Ev
	.section	.text._ZN14idFixedWindingD2Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD2Ev
	.type	_ZN14idFixedWindingD2Ev, @function
_ZN14idFixedWindingD2Ev:
.LFB1498:
	.loc 1 380 0
	.cfi_startproc
.LVL477:
.LBB3206:
	.loc 1 381 0
	li 0,0
.LBB3207:
.LBB3208:
.LBB3209:
	.loc 1 183 0
	lis 9,_ZTV9idWinding+8@ha
.LBE3209:
.LBE3208:
.LBE3207:
	.loc 1 381 0
	stw 0,8(3)
.LVL478:
.LBB3212:
.LBB3211:
.LBB3210:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	stw 0,0(3)
.LBE3210:
.LBE3211:
.LBE3212:
.LBE3206:
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
.LVL479:
	mflr 0
	stwu 1,-16(1)
.LCFI184:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB3216:
.LBB3217:
.LBB3218:
	lis 9,_ZTV9idWinding+8@ha
.LBE3218:
.LBE3217:
.LBE3216:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL480:
	stw 0,20(1)
.LBB3223:
.LBB3221:
.LBB3219:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL481:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L265
	bl _ZdaPv
.L265:
	.loc 1 185 0
	li 0,0
.LBE3219:
.LBE3221:
.LBE3223:
	.loc 1 186 0
	mr 3,31
.LBB3224:
.LBB3222:
.LBB3220:
	.loc 1 185 0
	stw 0,8(31)
.LBE3220:
.LBE3222:
.LBE3224:
	.loc 1 186 0
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL482:
	mtlr 0
	addi 1,1,16
.LCFI185:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1463:
	.size	_ZN9idWindingD0Ev, .-_ZN9idWindingD0Ev
	.section	".text"
	.align 2
	.globl _ZN14idMultiModelAF14CreateInstanceEv
	.type	_ZN14idMultiModelAF14CreateInstanceEv, @function
_ZN14idMultiModelAF14CreateInstanceEv:
.LFB2810:
	.loc 2 43 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2810
	mflr 0
	stwu 1,-24(1)
.LCFI186:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB3238:
	li 3,1096
.LBE3238:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB26:
.LBB3257:
	.loc 2 43 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE26:
	mr 31,3
.LVL483:
.LEHB27:
.LBB3239:
.LBB3240:
	.loc 9 45 0
	bl _ZN8idEntityC2Ev
.LEHE27:
.LVL484:
	lis 9,_ZTV14idMultiModelAF+8@ha
	addi 3,31,636
	la 0,_ZTV14idMultiModelAF+8@l(9)
	stw 0,0(31)
.LEHB28:
	bl _ZN12idPhysics_AFC1Ev
.LEHE28:
.LVL485:
.LBB3241:
.LBB3242:
.LBB3243:
.LBB3244:
	.loc 13 197 0
	li 0,0
.LBE3244:
.LBE3243:
	.loc 13 159 0
	li 9,16
	stw 9,1072(31)
.LVL486:
.LBE3242:
.LBE3241:
.LBE3240:
.LBE3239:
	.loc 2 43 0
	mr 3,31
.LBB3255:
.LBB3253:
.LBB3248:
.LBB3247:
.LBB3246:
.LBB3245:
	.loc 13 197 0
	stw 0,1076(31)
	.loc 13 198 0
	stw 0,1064(31)
	.loc 13 199 0
	stw 0,1068(31)
.LVL487:
.LBE3245:
.LBE3246:
.LBE3247:
.LBE3248:
.LBB3249:
.LBB3250:
	.loc 13 159 0
	stw 9,1088(31)
.LVL488:
.LBB3251:
.LBB3252:
	.loc 13 197 0
	stw 0,1092(31)
	.loc 13 198 0
	stw 0,1080(31)
	.loc 13 199 0
	stw 0,1084(31)
.LVL489:
.LEHB29:
.LBE3252:
.LBE3251:
.LBE3250:
.LBE3249:
.LBE3253:
.LBE3255:
	.loc 2 43 0
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE29:
.LVL490:
.L269:
.LBE3257:
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI187:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L275:
.L272:
.LCFI188:
	.cfi_restore_state
.LBB3258:
	cmpwi 7,4,1
	beq- 7,.L274
.LEHB30:
	bl _Unwind_Resume
.LEHE30:
.LVL491:
.L277:
	mr 30,3
.LBB3256:
.LBB3254:
	.loc 9 45 0
	mr 3,31
	stw 4,8(1)
	bl _ZN8idEntityD2Ev
	lwz 4,8(1)
.L271:
.LBE3254:
.LBE3256:
	.loc 2 43 0
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L272
.L276:
	mr 30,3
	b .L271
.LVL492:
.L274:
.LBE3258:
.LBB3259:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L269
.LBE3259:
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
	.uleb128 .LEHB26-.LFB2810
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L275-.LFB2810
	.uleb128 0x1
	.uleb128 .LEHB27-.LFB2810
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L276-.LFB2810
	.uleb128 0x3
	.uleb128 .LEHB28-.LFB2810
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L277-.LFB2810
	.uleb128 0x3
	.uleb128 .LEHB29-.LFB2810
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L275-.LFB2810
	.uleb128 0x1
	.uleb128 .LEHB30-.LFB2810
	.uleb128 .LEHE30-.LEHB30
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
	.size	_ZN14idMultiModelAF14CreateInstanceEv, .-_ZN14idMultiModelAF14CreateInstanceEv
	.align 2
	.globl _ZN27idAFEntity_VehicleSixWheels5SpawnEv
	.type	_ZN27idAFEntity_VehicleSixWheels5SpawnEv, @function
_ZN27idAFEntity_VehicleSixWheels5SpawnEv:
.LFB2988:
	.loc 2 2134 0
	.cfi_startproc
.LVL493:
	stwu 1,-72(1)
.LCFI189:
	.cfi_def_cfa_offset 72
	mflr 0
	stw 25,44(1)
	lis 25,.LANCHOR2@ha
	.cfi_offset 25, -28
	.cfi_register 65, 0
	stw 18,16(1)
	la 25,.LANCHOR2@l(25)
	stw 19,20(1)
.LBB3273:
	.loc 2 2168 0
	lis 18,.LC37@ha
	.cfi_offset 19, -52
	.cfi_offset 18, -56
.LBE3273:
	.loc 2 2134 0
	stw 21,28(1)
.LBB3295:
	.loc 2 2176 0
	lis 19,.LC38@ha
.LBE3295:
	.loc 2 2134 0
	stw 22,32(1)
.LBB3296:
	.loc 2 2164 0
	lis 21,.LC36@ha
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	lis 22,gameLocal@ha
.LBE3296:
	.loc 2 2134 0
	stw 20,24(1)
	stw 23,36(1)
.LBB3297:
.LBB3274:
.LBB3275:
	.loc 11 245 0
	lis 20,.LC35@ha
	.cfi_offset 23, -36
	.cfi_offset 20, -48
.LBE3275:
.LBE3274:
.LBE3297:
	.loc 2 2134 0
	stw 24,40(1)
	addi 23,25,24
	stw 26,48(1)
	addi 24,3,636
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	stw 27,52(1)
	addi 26,3,1656
	stw 28,56(1)
	mr 27,3
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	stw 30,64(1)
	addi 28,3,100
	stw 31,68(1)
.LBB3298:
.LBB3279:
.LBB3280:
	addi 30,3,2312
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LBE3280:
.LBE3279:
.LBE3298:
	stw 0,76(1)
	li 31,0
	stw 17,12(1)
.LBB3299:
	.loc 2 2164 0
	la 22,gameLocal@l(22)
.LBE3299:
	.loc 2 2134 0
	stw 29,60(1)
.LBB3300:
	.loc 2 2164 0
	la 21,.LC36@l(21)
	.loc 2 2168 0
	la 18,.LC37@l(18)
	.loc 2 2176 0
	la 19,.LC38@l(19)
	b .L285
	.cfi_offset 29, -12
	.cfi_offset 17, -60
	.cfi_offset 65, 4
.LVL494:
.L280:
	.loc 2 2166 0
	mr 3,26
.LVL495:
	mr 4,29
	bl _ZNK12idPhysics_AF7GetBodyEPKc
	.loc 2 2167 0
	cmpwi 7,3,0
	.loc 2 2166 0
	stw 3,-36(30)
	.loc 2 2167 0
	beq- 7,.L295
.LVL496:
.L281:
	.loc 2 2170 0
	lwzx 17,23,31
.LVL497:
.LBB3285:
.LBB3286:
	.loc 11 241 0
	mr 3,28
	mr 4,17
	bl _ZNK6idDict7FindKeyEPKc
.LVL498:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L291
.LVL499:
.L299:
.LBB3287:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 29,4(9)
.LBE3287:
.LBE3286:
.LBE3285:
	.loc 2 2171 0
	lbz 0,0(29)
	cmpwi 7,0,0
	beq- 7,.L296
.LVL500:
.L283:
	.loc 2 2174 0
	mr 3,24
.LVL501:
	mr 4,29
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 2175 0
	cmpwi 7,3,-1
	.loc 2 2174 0
	stwu 3,4(30)
	.loc 2 2175 0
	beq- 7,.L297
.L284:
	.loc 2 2161 0
	cmpwi 7,31,20
	addi 31,31,4
.LVL502:
	beq- 7,.L298
.LVL503:
.L285:
	.loc 2 2162 0
	lwzx 17,25,31
.LVL504:
.LBB3289:
.LBB3277:
	.loc 11 241 0
	mr 3,28
	mr 4,17
	bl _ZNK6idDict7FindKeyEPKc
.LVL505:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L290
.LVL506:
.LBB3276:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 29,4(9)
.LVL507:
.L279:
.LBE3276:
.LBE3277:
.LBE3289:
	.loc 2 2163 0
	lbz 0,0(29)
	cmpwi 7,0,0
	bne+ 7,.L280
	.loc 2 2164 0
	lwz 5,72(27)
	mr 3,22
.LVL508:
	mr 4,21
	mr 6,17
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 2166 0
	mr 3,26
	mr 4,29
	bl _ZNK12idPhysics_AF7GetBodyEPKc
	.loc 2 2167 0
	cmpwi 7,3,0
	.loc 2 2166 0
	stw 3,-36(30)
	.loc 2 2167 0
	bne+ 7,.L281
.L295:
	.loc 2 2168 0
	lwz 5,72(27)
	mr 3,22
	mr 4,18
	mr 6,29
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 2170 0
	lwzx 17,23,31
.LVL509:
.LBB3290:
.LBB3288:
	.loc 11 241 0
	mr 3,28
	mr 4,17
	bl _ZNK6idDict7FindKeyEPKc
.LVL510:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L299
.LVL511:
.L291:
	.loc 11 245 0
	la 29,.LC35@l(20)
.LBE3288:
.LBE3290:
	.loc 2 2171 0
	lbz 0,0(29)
	cmpwi 7,0,0
	bne+ 7,.L283
.L296:
	.loc 2 2172 0
	lwz 5,72(27)
	mr 3,22
.LVL512:
	mr 4,21
	mr 6,17
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 2174 0
	mr 3,24
	mr 4,29
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 2175 0
	cmpwi 7,3,-1
	.loc 2 2174 0
	stwu 3,4(30)
	.loc 2 2175 0
	bne+ 7,.L284
.L297:
	.loc 2 2176 0
	lwz 5,72(27)
	mr 3,22
	mr 4,19
	mr 6,29
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 2161 0
	cmpwi 7,31,20
	addi 31,31,4
.LVL513:
	bne+ 7,.L285
.LVL514:
.L298:
	.loc 2 2183 0
	lis 24,gameLocal@ha
	lis 23,.LC36@ha
	.loc 2 2187 0
	lis 21,.LC39@ha
	.loc 2 2161 0
	addi 31,25,44
	.loc 2 2134 0
	addi 29,27,2296
	addi 25,25,60
.LBB3291:
.LBB3282:
	.loc 11 245 0
	lis 22,.LC35@ha
.LBE3282:
.LBE3291:
	.loc 2 2183 0
	la 24,gameLocal@l(24)
	la 23,.LC36@l(23)
	.loc 2 2187 0
	la 21,.LC39@l(21)
.L289:
	.loc 2 2181 0
	lwzu 20,4(31)
.LVL515:
.LBB3292:
.LBB3283:
	.loc 11 241 0
	mr 3,28
	mr 4,20
	bl _ZNK6idDict7FindKeyEPKc
.LVL516:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L292
.LVL517:
.LBB3281:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL518:
.L286:
.LBE3281:
.LBE3283:
.LBE3292:
	.loc 2 2182 0
	lbz 0,0(30)
	cmpwi 7,0,0
	beq- 7,.L300
	.loc 2 2185 0
	mr 4,30
	mr 3,26
.LVL519:
	bl _ZNK12idPhysics_AF13GetConstraintEPKc
	.loc 2 2186 0
	cmpwi 7,3,0
	.loc 2 2185 0
	stwu 3,4(29)
	.loc 2 2186 0
	beq- 7,.L301
.LVL520:
.L288:
	.loc 2 2180 0
	cmpw 7,31,25
	bne+ 7,.L289
	.loc 2 2191 0
	li 0,0
	.loc 2 2192 0
	mr 3,27
	.loc 2 2191 0
	stw 0,2340(27)
	.loc 2 2192 0
	li 4,1
	.loc 2 2191 0
	stw 0,2344(27)
	stw 0,2348(27)
	stw 0,2352(27)
	stw 0,2356(27)
	stw 0,2360(27)
	.loc 2 2192 0
	bl _ZN8idEntity12BecomeActiveEi
.LBE3300:
	.loc 2 2193 0
	lwz 0,76(1)
	lwz 17,12(1)
.LVL521:
	mtlr 0
	lwz 18,16(1)
	lwz 19,20(1)
	lwz 20,24(1)
.LVL522:
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
.LVL523:
	lwz 28,56(1)
.LVL524:
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI190:
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
.LVL525:
.L300:
.LCFI191:
	.cfi_restore_state
.LBB3301:
	.loc 2 2183 0
	lwz 5,72(27)
	mr 6,20
	mr 3,24
.LVL526:
	mr 4,23
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 2185 0
	mr 4,30
	mr 3,26
	bl _ZNK12idPhysics_AF13GetConstraintEPKc
	.loc 2 2186 0
	cmpwi 7,3,0
	.loc 2 2185 0
	stwu 3,4(29)
	.loc 2 2186 0
	bne+ 7,.L288
.L301:
	.loc 2 2187 0
	lwz 5,72(27)
	mr 3,24
	mr 4,21
	mr 6,30
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L288
.LVL527:
.L290:
.LBB3293:
.LBB3278:
	.loc 11 245 0
	la 29,.LC35@l(20)
	b .L279
.LVL528:
.L292:
.LBE3278:
.LBE3293:
.LBB3294:
.LBB3284:
	la 30,.LC35@l(22)
	b .L286
.LBE3284:
.LBE3294:
.LBE3301:
	.cfi_endproc
.LFE2988:
	.size	_ZN27idAFEntity_VehicleSixWheels5SpawnEv, .-_ZN27idAFEntity_VehicleSixWheels5SpawnEv
	.align 2
	.globl _ZN28idAFEntity_VehicleFourWheels5SpawnEv
	.type	_ZN28idAFEntity_VehicleFourWheels5SpawnEv, @function
_ZN28idAFEntity_VehicleFourWheels5SpawnEv:
.LFB2981:
	.loc 2 1952 0
	.cfi_startproc
.LVL529:
	stwu 1,-72(1)
.LCFI192:
	.cfi_def_cfa_offset 72
	mflr 0
	stw 25,44(1)
	lis 25,.LANCHOR2+64@ha
	.cfi_offset 25, -28
	.cfi_register 65, 0
	stw 18,16(1)
	la 25,.LANCHOR2+64@l(25)
	stw 19,20(1)
.LBB3315:
	.loc 2 1980 0
	lis 18,.LC41@ha
	.cfi_offset 19, -52
	.cfi_offset 18, -56
.LBE3315:
	.loc 2 1952 0
	stw 21,28(1)
.LBB3337:
	.loc 2 1988 0
	lis 19,.LC42@ha
.LBE3337:
	.loc 2 1952 0
	stw 22,32(1)
.LBB3338:
	.loc 2 1976 0
	lis 21,.LC40@ha
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	lis 22,gameLocal@ha
.LBE3338:
	.loc 2 1952 0
	stw 0,76(1)
	stw 17,12(1)
.LBB3339:
	.loc 2 1976 0
	la 22,gameLocal@l(22)
.LBE3339:
	.loc 2 1952 0
	stw 28,56(1)
.LBB3340:
	.loc 2 1976 0
	la 21,.LC40@l(21)
.LBE3340:
	.loc 2 1952 0
	stw 20,24(1)
.LBB3341:
	.loc 2 1980 0
	la 18,.LC41@l(18)
.LBE3341:
	.loc 2 1952 0
	stw 23,36(1)
.LBB3342:
.LBB3316:
.LBB3317:
	.loc 11 245 0
	lis 20,.LC35@ha
	.cfi_offset 23, -36
	.cfi_offset 20, -48
	.cfi_offset 28, -16
	.cfi_offset 17, -60
	.cfi_offset 65, 4
.LBE3317:
.LBE3316:
.LBE3342:
	.loc 2 1952 0
	stw 24,40(1)
	addi 23,25,16
	stw 26,48(1)
	addi 24,3,636
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	stw 27,52(1)
	addi 26,3,1656
	stw 29,60(1)
	addi 27,3,100
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	stw 30,64(1)
.LBB3343:
.LBB3321:
.LBB3322:
	addi 29,3,2296
.LBE3322:
.LBE3321:
.LBE3343:
	stw 31,68(1)
	.loc 2 1952 0
	mr 30,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	li 31,0
.LBB3344:
	.loc 2 1988 0
	la 19,.LC42@l(19)
.LVL530:
.L309:
	.loc 2 1974 0
	lwzx 17,25,31
.LVL531:
.LBB3327:
.LBB3319:
	.loc 11 241 0
	mr 3,27
	mr 4,17
	bl _ZNK6idDict7FindKeyEPKc
.LVL532:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L314
.LVL533:
.LBB3318:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL534:
.L303:
.LBE3318:
.LBE3319:
.LBE3327:
	.loc 2 1975 0
	lbz 0,0(28)
	cmpwi 7,0,0
	beq- 7,.L319
	.loc 2 1978 0
	mr 3,26
.LVL535:
	mr 4,28
	bl _ZNK12idPhysics_AF7GetBodyEPKc
	.loc 2 1979 0
	cmpwi 7,3,0
	.loc 2 1978 0
	stw 3,-20(29)
	.loc 2 1979 0
	beq- 7,.L320
.LVL536:
.L305:
	.loc 2 1982 0
	lwzx 17,23,31
.LVL537:
.LBB3328:
.LBB3329:
	.loc 11 241 0
	mr 3,27
	mr 4,17
	bl _ZNK6idDict7FindKeyEPKc
.LVL538:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L315
.LVL539:
.L325:
.LBB3330:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL540:
.L306:
.LBE3330:
.LBE3329:
.LBE3328:
	.loc 2 1983 0
	lbz 0,0(28)
	cmpwi 7,0,0
	beq- 7,.L321
	.loc 2 1986 0
	mr 3,24
.LVL541:
	mr 4,28
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 1987 0
	cmpwi 7,3,-1
	.loc 2 1986 0
	stwu 3,4(29)
	.loc 2 1987 0
	beq- 7,.L322
.L308:
	.loc 2 1973 0
	cmpwi 7,31,12
	addi 31,31,4
.LVL542:
	bne+ 7,.L309
	lis 28,.LANCHOR2+96@ha
	.loc 2 1995 0
	lis 25,gameLocal@ha
.LVL543:
	lis 24,.LC40@ha
	.loc 2 1999 0
	lis 22,.LC43@ha
	.loc 2 1973 0
	li 31,0
.LVL544:
	la 28,.LANCHOR2+96@l(28)
.LBB3332:
.LBB3324:
	.loc 11 245 0
	lis 23,.LC35@ha
.LBE3324:
.LBE3332:
	.loc 2 1995 0
	la 25,gameLocal@l(25)
	la 24,.LC40@l(24)
	.loc 2 1999 0
	la 22,.LC43@l(22)
.L313:
	.loc 2 1993 0
	lwzx 21,28,31
.LVL545:
.LBB3333:
.LBB3325:
	.loc 11 241 0
	mr 3,27
	mr 4,21
	bl _ZNK6idDict7FindKeyEPKc
.LVL546:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L316
.LVL547:
.LBB3323:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 29,4(9)
.LVL548:
.L310:
.LBE3323:
.LBE3325:
.LBE3333:
	.loc 2 1994 0
	lbz 0,0(29)
	cmpwi 7,0,0
	beq- 7,.L323
.LVL549:
	.loc 2 1997 0
	mr 4,29
	mr 3,26
.LVL550:
	bl _ZNK12idPhysics_AF13GetConstraintEPKc
	.loc 2 1952 0
	add 9,30,31
	.loc 2 1998 0
	cmpwi 7,3,0
	.loc 2 1997 0
	stw 3,2292(9)
	.loc 2 1998 0
	beq- 7,.L324
.LVL551:
.L312:
	.loc 2 1992 0
	cmpwi 7,31,4
	addi 31,31,4
.LVL552:
	bne- 7,.L313
	.loc 2 2003 0
	li 0,0
	.loc 2 2004 0
	mr 3,30
	.loc 2 2003 0
	stw 0,2316(30)
	.loc 2 2004 0
	li 4,1
	.loc 2 2003 0
	stw 0,2320(30)
	stw 0,2324(30)
	stw 0,2328(30)
	.loc 2 2004 0
	bl _ZN8idEntity12BecomeActiveEi
.LBE3344:
	.loc 2 2005 0
	lwz 0,76(1)
	lwz 17,12(1)
.LVL553:
	mtlr 0
	lwz 18,16(1)
	lwz 19,20(1)
	lwz 20,24(1)
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
.LVL554:
	lwz 28,56(1)
.LVL555:
	lwz 29,60(1)
	lwz 30,64(1)
.LVL556:
	lwz 31,68(1)
.LVL557:
	addi 1,1,72
	.cfi_remember_state
.LCFI193:
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
.LVL558:
.L321:
.LCFI194:
	.cfi_restore_state
.LBB3345:
	.loc 2 1984 0
	lwz 5,72(30)
	mr 3,22
.LVL559:
	mr 4,21
	mr 6,17
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 1986 0
	mr 3,24
	mr 4,28
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 1987 0
	cmpwi 7,3,-1
	.loc 2 1986 0
	stwu 3,4(29)
	.loc 2 1987 0
	bne+ 7,.L308
.L322:
	.loc 2 1988 0
	lwz 5,72(30)
	mr 3,22
	mr 4,19
	mr 6,28
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L308
.LVL560:
.L319:
	.loc 2 1976 0
	lwz 5,72(30)
	mr 3,22
.LVL561:
	mr 4,21
	mr 6,17
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 1978 0
	mr 3,26
	mr 4,28
	bl _ZNK12idPhysics_AF7GetBodyEPKc
	.loc 2 1979 0
	cmpwi 7,3,0
	.loc 2 1978 0
	stw 3,-20(29)
	.loc 2 1979 0
	bne+ 7,.L305
.L320:
	.loc 2 1980 0
	lwz 5,72(30)
	mr 3,22
	mr 4,18
	mr 6,28
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 1982 0
	lwzx 17,23,31
.LVL562:
.LBB3334:
.LBB3331:
	.loc 11 241 0
	mr 3,27
	mr 4,17
	bl _ZNK6idDict7FindKeyEPKc
.LVL563:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L325
.LVL564:
.L315:
	.loc 11 245 0
	la 28,.LC35@l(20)
	b .L306
.LVL565:
.L323:
.LBE3331:
.LBE3334:
	.loc 2 1995 0
	lwz 5,72(30)
	mr 6,21
	mr 3,25
.LVL566:
	mr 4,24
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LVL567:
	.loc 2 1997 0
	mr 4,29
	mr 3,26
	bl _ZNK12idPhysics_AF13GetConstraintEPKc
	.loc 2 1952 0
	add 9,30,31
	.loc 2 1998 0
	cmpwi 7,3,0
	.loc 2 1997 0
	stw 3,2292(9)
	.loc 2 1998 0
	bne+ 7,.L312
.LVL568:
.L324:
	.loc 2 1999 0
	lwz 5,72(30)
	mr 3,25
	mr 4,22
	mr 6,29
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L312
.LVL569:
.L314:
.LBB3335:
.LBB3320:
	.loc 11 245 0
	la 28,.LC35@l(20)
	b .L303
.LVL570:
.L316:
.LBE3320:
.LBE3335:
.LBB3336:
.LBB3326:
	la 29,.LC35@l(23)
	b .L310
.LBE3326:
.LBE3336:
.LBE3345:
	.cfi_endproc
.LFE2981:
	.size	_ZN28idAFEntity_VehicleFourWheels5SpawnEv, .-_ZN28idAFEntity_VehicleFourWheels5SpawnEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead14Event_ActivateEP8idEntity
	.type	_ZN27idAFEntity_WithAttachedHead14Event_ActivateEP8idEntity, @function
_ZN27idAFEntity_WithAttachedHead14Event_ActivateEP8idEntity:
.LFB2952:
	.loc 2 1569 0
	.cfi_startproc
.LVL571:
	mflr 0
	stwu 1,-64(1)
.LCFI195:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 28,48(1)
.LBB3363:
	.loc 2 1578 0
	lis 28,.LC45@ha
	.cfi_offset 28, -16
.LBE3363:
	.loc 2 1569 0
	stw 29,52(1)
.LBB3388:
	.loc 2 1575 0
	addi 29,3,1656
	.cfi_offset 29, -12
.LBE3388:
	.loc 2 1569 0
	stw 30,56(1)
.LBB3389:
	.loc 2 1578 0
	addi 30,3,100
	.cfi_offset 30, -8
.LBE3389:
	.loc 2 1569 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
.LBB3390:
	.loc 2 1578 0
	la 28,.LC45@l(28)
	.loc 2 1573 0
	lwz 9,0(3)
	lwz 0,80(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL572:
	.loc 2 1575 0
	mr 3,29
	bl _ZN12idPhysics_AF12EnableImpactEv
.LVL573:
	.loc 2 1576 0
	lwz 9,1656(31)
	mr 3,29
	lwz 0,88(9)
	mtctr 0
	bctrl
	.loc 2 1578 0
	lis 4,.LC44@ha
	la 4,.LC44@l(4)
	mr 5,28
	addi 6,1,20
	mr 3,30
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	.loc 2 1579 0
	lis 4,.LC46@ha
	la 4,.LC46@l(4)
	mr 5,28
	addi 6,1,8
	mr 3,30
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL574:
.LBB3364:
.LBB3365:
.LBB3366:
.LBB3367:
	.loc 11 241 0
	lis 4,.LC47@ha
	mr 3,30
	la 4,.LC47@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL575:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L333
.LVL576:
.LBB3368:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL577:
.L327:
.LBE3368:
.LBE3367:
.LBE3366:
	.loc 11 249 0
	bl atof
.LBE3365:
.LBE3364:
	.loc 2 1582 0
	lis 9,.LC49@ha
.LBB3373:
.LBB3371:
	.loc 11 249 0
	frsp 1,1
.LBE3371:
.LBE3373:
	.loc 2 1582 0
	lfs 0,.LC49@l(9)
	fcmpu 7,1,0
	bne- 7,.L328
.LVL578:
	.loc 2 1583 0
	lwz 9,1656(31)
	mr 3,29
	addi 4,1,20
	li 5,0
	lwz 0,140(9)
	mtctr 0
	bctrl
.LVL579:
.LBB3374:
.LBB3375:
.LBB3376:
.LBB3377:
	.loc 11 241 0
	lis 4,.LC48@ha
	mr 3,30
	la 4,.LC48@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL580:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L334
.LVL581:
.L336:
.LBB3378:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL582:
.LBE3378:
.LBE3377:
.LBE3376:
	.loc 11 249 0
	bl atof
.LVL583:
.LBE3375:
.LBE3374:
	.loc 2 1589 0
	lis 9,.LC49@ha
.LBB3384:
.LBB3381:
	.loc 11 249 0
	frsp 1,1
.LBE3381:
.LBE3384:
	.loc 2 1589 0
	lfs 0,.LC49@l(9)
	fcmpu 7,1,0
	beq- 7,.L335
.L331:
.LVL584:
	.loc 2 1592 0
	li 0,118
	lis 4,EV_SetAngularVelocity@ha
	stw 0,40(1)
	mr 3,31
	addi 0,1,8
.LVL585:
	addi 5,1,40
	la 4,EV_SetAngularVelocity@l(4)
	stw 0,44(1)
	bl _ZN7idClass12PostEventSecEPK10idEventDeff10idEventArg
.LVL586:
.LBE3390:
	.loc 2 1594 0
	lwz 0,68(1)
	lwz 28,48(1)
	mtlr 0
	lwz 29,52(1)
	lwz 30,56(1)
.LVL587:
	lwz 31,60(1)
.LVL588:
	addi 1,1,64
	.cfi_remember_state
.LCFI196:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL589:
.L328:
.LCFI197:
	.cfi_restore_state
.LBB3391:
	.loc 2 1585 0
	li 0,118
	lis 4,EV_SetLinearVelocity@ha
	la 4,EV_SetLinearVelocity@l(4)
	addi 5,1,40
	stw 0,40(1)
	mr 3,31
	addi 0,1,20
.LVL590:
	stw 0,44(1)
	bl _ZN7idClass12PostEventSecEPK10idEventDeff10idEventArg
.LVL591:
.LBB3385:
.LBB3382:
.LBB3380:
.LBB3379:
	.loc 11 241 0
	lis 4,.LC48@ha
	mr 3,30
	la 4,.LC48@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL592:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L336
.LVL593:
.L334:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL594:
	la 3,.LC7@l(3)
.LBE3379:
.LBE3380:
	.loc 11 249 0
	bl atof
.LBE3382:
.LBE3385:
	.loc 2 1589 0
	lis 9,.LC49@ha
.LBB3386:
.LBB3383:
	.loc 11 249 0
	frsp 1,1
.LBE3383:
.LBE3386:
	.loc 2 1589 0
	lfs 0,.LC49@l(9)
	fcmpu 7,1,0
	bne+ 7,.L331
.L335:
.LVL595:
	.loc 2 1590 0
	lwz 9,1656(31)
	mr 3,29
	addi 4,1,8
	li 5,0
	lwz 0,144(9)
	mtctr 0
	bctrl
.LBE3391:
	.loc 2 1594 0
	lwz 0,68(1)
	lwz 28,48(1)
	mtlr 0
	lwz 29,52(1)
	lwz 30,56(1)
.LVL596:
	lwz 31,60(1)
.LVL597:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI198:
	.cfi_def_cfa_offset 0
	blr
.LVL598:
.L333:
.LCFI199:
	.cfi_restore_state
.LBB3392:
.LBB3387:
.LBB3372:
.LBB3370:
.LBB3369:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL599:
	la 3,.LC7@l(3)
	b .L327
.LBE3369:
.LBE3370:
.LBE3372:
.LBE3387:
.LBE3392:
	.cfi_endproc
.LFE2952:
	.size	_ZN27idAFEntity_WithAttachedHead14Event_ActivateEP8idEntity, .-_ZN27idAFEntity_WithAttachedHead14Event_ActivateEP8idEntity
	.align 2
	.globl _ZN18idAFEntity_Generic14Event_ActivateEP8idEntity
	.type	_ZN18idAFEntity_Generic14Event_ActivateEP8idEntity, @function
_ZN18idAFEntity_Generic14Event_ActivateEP8idEntity:
.LFB2930:
	.loc 2 1303 0
	.cfi_startproc
.LVL600:
	mflr 0
	stwu 1,-64(1)
.LCFI200:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 28,48(1)
.LBB3410:
	.loc 2 1312 0
	lis 28,.LC45@ha
	.cfi_offset 28, -16
.LBE3410:
	.loc 2 1303 0
	stw 29,52(1)
.LBB3435:
	.loc 2 1309 0
	addi 29,3,1656
	.cfi_offset 29, -12
.LBE3435:
	.loc 2 1303 0
	stw 30,56(1)
.LBB3436:
	.loc 2 1312 0
	addi 30,3,100
	.cfi_offset 30, -8
.LBE3436:
	.loc 2 1303 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
.LBB3437:
	.loc 2 1312 0
	la 28,.LC45@l(28)
	.loc 2 1307 0
	lwz 9,0(3)
	lwz 0,80(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL601:
	.loc 2 1309 0
	mr 3,29
	bl _ZN12idPhysics_AF12EnableImpactEv
.LVL602:
	.loc 2 1310 0
	lwz 9,1656(31)
	mr 3,29
	lwz 0,88(9)
	mtctr 0
	bctrl
	.loc 2 1312 0
	lis 4,.LC44@ha
	la 4,.LC44@l(4)
	mr 5,28
	addi 6,1,20
	mr 3,30
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
	.loc 2 1313 0
	lis 4,.LC46@ha
	la 4,.LC46@l(4)
	mr 5,28
	addi 6,1,8
	mr 3,30
	bl _ZNK6idDict9GetVectorEPKcS1_R6idVec3
.LVL603:
.LBB3411:
.LBB3412:
.LBB3413:
.LBB3414:
	.loc 11 241 0
	lis 4,.LC47@ha
	mr 3,30
	la 4,.LC47@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL604:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L344
.LVL605:
.LBB3415:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL606:
.L338:
.LBE3415:
.LBE3414:
.LBE3413:
	.loc 11 249 0
	bl atof
.LBE3412:
.LBE3411:
	.loc 2 1316 0
	lis 9,.LC49@ha
.LBB3420:
.LBB3418:
	.loc 11 249 0
	frsp 1,1
.LBE3418:
.LBE3420:
	.loc 2 1316 0
	lfs 0,.LC49@l(9)
	fcmpu 7,1,0
	bne- 7,.L339
.LVL607:
	.loc 2 1317 0
	lwz 9,1656(31)
	mr 3,29
	addi 4,1,20
	li 5,0
	lwz 0,140(9)
	mtctr 0
	bctrl
.LVL608:
.LBB3421:
.LBB3422:
.LBB3423:
.LBB3424:
	.loc 11 241 0
	lis 4,.LC48@ha
	mr 3,30
	la 4,.LC48@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL609:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L345
.LVL610:
.L347:
.LBB3425:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL611:
.LBE3425:
.LBE3424:
.LBE3423:
	.loc 11 249 0
	bl atof
.LVL612:
.LBE3422:
.LBE3421:
	.loc 2 1323 0
	lis 9,.LC49@ha
.LBB3431:
.LBB3428:
	.loc 11 249 0
	frsp 1,1
.LBE3428:
.LBE3431:
	.loc 2 1323 0
	lfs 0,.LC49@l(9)
	fcmpu 7,1,0
	beq- 7,.L346
.L342:
.LVL613:
	.loc 2 1326 0
	li 0,118
	lis 4,EV_SetAngularVelocity@ha
	stw 0,40(1)
	mr 3,31
	addi 0,1,8
.LVL614:
	addi 5,1,40
	la 4,EV_SetAngularVelocity@l(4)
	stw 0,44(1)
	bl _ZN7idClass12PostEventSecEPK10idEventDeff10idEventArg
.LVL615:
.LBE3437:
	.loc 2 1328 0
	lwz 0,68(1)
	lwz 28,48(1)
	mtlr 0
	lwz 29,52(1)
	lwz 30,56(1)
.LVL616:
	lwz 31,60(1)
.LVL617:
	addi 1,1,64
	.cfi_remember_state
.LCFI201:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL618:
.L339:
.LCFI202:
	.cfi_restore_state
.LBB3438:
	.loc 2 1319 0
	li 0,118
	lis 4,EV_SetLinearVelocity@ha
	la 4,EV_SetLinearVelocity@l(4)
	addi 5,1,40
	stw 0,40(1)
	mr 3,31
	addi 0,1,20
.LVL619:
	stw 0,44(1)
	bl _ZN7idClass12PostEventSecEPK10idEventDeff10idEventArg
.LVL620:
.LBB3432:
.LBB3429:
.LBB3427:
.LBB3426:
	.loc 11 241 0
	lis 4,.LC48@ha
	mr 3,30
	la 4,.LC48@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL621:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L347
.LVL622:
.L345:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL623:
	la 3,.LC7@l(3)
.LBE3426:
.LBE3427:
	.loc 11 249 0
	bl atof
.LBE3429:
.LBE3432:
	.loc 2 1323 0
	lis 9,.LC49@ha
.LBB3433:
.LBB3430:
	.loc 11 249 0
	frsp 1,1
.LBE3430:
.LBE3433:
	.loc 2 1323 0
	lfs 0,.LC49@l(9)
	fcmpu 7,1,0
	bne+ 7,.L342
.L346:
.LVL624:
	.loc 2 1324 0
	lwz 9,1656(31)
	mr 3,29
	addi 4,1,8
	li 5,0
	lwz 0,144(9)
	mtctr 0
	bctrl
.LBE3438:
	.loc 2 1328 0
	lwz 0,68(1)
	lwz 28,48(1)
	mtlr 0
	lwz 29,52(1)
	lwz 30,56(1)
.LVL625:
	lwz 31,60(1)
.LVL626:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI203:
	.cfi_def_cfa_offset 0
	blr
.LVL627:
.L344:
.LCFI204:
	.cfi_restore_state
.LBB3439:
.LBB3434:
.LBB3419:
.LBB3417:
.LBB3416:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL628:
	la 3,.LC7@l(3)
	b .L338
.LBE3416:
.LBE3417:
.LBE3419:
.LBE3434:
.LBE3439:
	.cfi_endproc
.LFE2930:
	.size	_ZN18idAFEntity_Generic14Event_ActivateEP8idEntity, .-_ZN18idAFEntity_Generic14Event_ActivateEP8idEntity
	.align 2
	.globl _ZN19idAFEntity_Gibbable3GibERK6idVec3PKc
	.type	_ZN19idAFEntity_Gibbable3GibERK6idVec3PKc, @function
_ZN19idAFEntity_Gibbable3GibERK6idVec3PKc:
.LFB2915:
	.loc 2 1163 0
	.cfi_startproc
.LVL629:
	mflr 0
	stwu 1,-40(1)
.LCFI205:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 29,28(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,32(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 27,20(1)
	stw 28,24(1)
.LBB3454:
	.loc 2 1165 0
	lbz 0,2256(3)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L357
.LBE3454:
	.loc 2 1201 0
	lwz 0,44(1)
	lwz 27,20(1)
	mtlr 0
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI206:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.L357:
.LCFI207:
	.cfi_restore_state
.LVL630:
.LBB3455:
.LBB3456:
	.loc 2 1169 0
	lis 28,gameLocal@ha
	mr 4,5
.LVL631:
	la 28,gameLocal@l(28)
	li 5,1
.LVL632:
	mr 3,28
.LVL633:
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL634:
	.loc 2 1170 0
	mr. 27,3
	beq- 0,.L358
.LVL635:
.L350:
.LBB3457:
.LBB3458:
.LBB3459:
.LBB3460:
	.loc 11 241 0
	lis 4,.LC51@ha
	mr 3,27
	la 4,.LC51@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL636:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L356
.LVL637:
.LBB3461:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL638:
.L351:
.LBE3461:
.LBE3460:
.LBE3459:
	.loc 11 257 0
	bl atoi
.LBE3458:
.LBE3457:
.LBE3456:
	.loc 2 1175 0
	addi 27,31,1656
.LVL639:
.LBB3472:
	.loc 2 1174 0
	cmpwi 7,3,0
	.loc 2 1175 0
	lwz 9,1656(31)
	.loc 2 1174 0
	bne- 7,.L359
.LVL640:
	.loc 2 1180 0
	lwz 0,40(9)
	mr 3,27
	li 4,1024
	li 5,-1
	mtctr 0
	bctrl
.LVL641:
	.loc 2 1181 0
	lwz 9,1656(31)
	mr 3,27
	li 4,1
	lwz 0,48(9)
	li 5,-1
	mtctr 0
	bctrl
	.loc 2 1184 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,240(9)
	mtctr 0
	bctrl
.LBE3472:
	.loc 2 1186 0
	lis 9,g_bloodEffects+44@ha
.LBB3473:
.LBB3465:
.LBB3466:
	.file 16 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/CVarSystem.h"
	.loc 16 142 0
	lwz 9,g_bloodEffects+44@l(9)
.LBE3466:
.LBE3465:
	.loc 2 1186 0
	lwz 0,36(9)
	cmpwi 7,0,0
	beq- 7,.L354
.LVL642:
.L361:
	.loc 2 1187 0
	addis 28,28,0x25
	lwz 9,2004(28)
	lwz 0,2244(28)
	cmpw 7,9,0
	bgt- 7,.L360
.LVL643:
.L355:
	.loc 2 1200 0
	lis 9,.LC54@ha
	lis 4,.LANCHOR0@ha
	lfs 1,.LC54@l(9)
	la 4,.LANCHOR0@l(4)
	mr 3,31
	addi 4,4,1228
	bl _ZN7idClass12PostEventSecEPK10idEventDeff
.LBE3473:
.LBE3455:
	.loc 2 1201 0
	lwz 0,44(1)
	lwz 27,20(1)
	mtlr 0
	lwz 28,24(1)
	lwz 29,28(1)
.LVL644:
	lwz 30,32(1)
	lwz 31,36(1)
.LVL645:
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI208:
	.cfi_def_cfa_offset 0
	blr
.LVL646:
.L359:
.LCFI209:
	.cfi_restore_state
.LBB3476:
.LBB3474:
	.loc 2 1175 0
	lwz 0,40(9)
	mr 3,27
	li 4,0
	li 5,-1
	mtctr 0
	bctrl
.LVL647:
	.loc 2 1176 0
	lwz 9,1656(31)
	li 4,0
	li 5,-1
	lwz 0,48(9)
	mr 3,27
	mtctr 0
	bctrl
.LVL648:
	.loc 2 1177 0
	lwz 9,1656(31)
	mr 3,27
	lwz 0,188(9)
	mtctr 0
	bctrl
.LVL649:
	.loc 2 1178 0
	lwz 9,1656(31)
	mr 3,27
	lwz 0,92(9)
	mtctr 0
	bctrl
	.loc 2 1184 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,240(9)
	mtctr 0
	bctrl
.LBE3474:
	.loc 2 1186 0
	lis 9,g_bloodEffects+44@ha
.LBB3475:
.LBB3468:
.LBB3467:
	.loc 16 142 0
	lwz 9,g_bloodEffects+44@l(9)
.LBE3467:
.LBE3468:
	.loc 2 1186 0
	lwz 0,36(9)
	cmpwi 7,0,0
	bne- 7,.L361
.LVL650:
.L354:
	.loc 2 1196 0
	li 0,1
	stb 0,2256(31)
	b .L355
.L360:
.LVL651:
	.loc 2 1188 0
	addi 9,9,200
.LVL652:
	.loc 2 1189 0
	mr 5,30
.LBB3469:
.LBB3470:
	.loc 4 470 0
	stw 9,2244(28)
.LBE3470:
.LBE3469:
	.loc 2 1189 0
	mr 3,31
	mr 4,29
	.loc 2 1190 0
	li 30,1
.LVL653:
	.loc 2 1189 0
	lwz 9,0(31)
	lwz 0,244(9)
	mtctr 0
	bctrl
.LVL654:
	.loc 2 1190 0
	stb 30,397(31)
	.loc 2 1191 0
	lis 9,0x4330
	.loc 2 1192 0
	lis 4,.LC53@ha
	.loc 2 1191 0
	lwz 0,2004(28)
	.loc 2 1192 0
	mr 3,31
	.loc 2 1191 0
	stw 9,8(1)
	lis 9,.LC5@ha
	xoris 0,0,0x8000
	lfs 0,.LC5@l(9)
	stw 0,12(1)
	lis 9,.LC52@ha
	.loc 2 1192 0
	la 4,.LC53@l(4)
	li 5,0
	.loc 2 1191 0
	lfd 13,8(1)
	.loc 2 1192 0
	li 6,0
	li 7,0
	li 8,0
	.loc 2 1191 0
	fsub 13,13,0
	lfs 0,.LC52@l(9)
	frsp 13,13
	fmuls 0,13,0
	stfs 0,348(31)
	.loc 2 1192 0
	bl _ZN8idEntity10StartSoundEPKciibPi
	.loc 2 1193 0
	stb 30,2256(31)
	b .L355
.LVL655:
.L356:
.LBB3471:
.LBB3464:
.LBB3463:
.LBB3462:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL656:
	la 3,.LC7@l(3)
	b .L351
.LVL657:
.L358:
.LBE3462:
.LBE3463:
.LBE3464:
.LBE3471:
	.loc 2 1171 0
	lis 4,.LC50@ha
	mr 3,28
	la 4,.LC50@l(4)
	mr 5,30
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L350
.LBE3475:
.LBE3476:
	.cfi_endproc
.LFE2915:
	.size	_ZN19idAFEntity_Gibbable3GibERK6idVec3PKc, .-_ZN19idAFEntity_Gibbable3GibERK6idVec3PKc
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead3GibERK6idVec3PKc
	.type	_ZN27idAFEntity_WithAttachedHead3GibERK6idVec3PKc, @function
_ZN27idAFEntity_WithAttachedHead3GibERK6idVec3PKc:
.LFB2950:
	.loc 2 1544 0
	.cfi_startproc
.LVL658:
	mflr 0
	stwu 1,-16(1)
.LCFI210:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 1546 0
	lbz 0,2256(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L364
.LVL659:
.L362:
	.loc 2 1553 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL660:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI211:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL661:
.L364:
.LCFI212:
	.cfi_restore_state
	.loc 2 1549 0
	bl _ZN19idAFEntity_Gibbable3GibERK6idVec3PKc
.LVL662:
.LBB3485:
.LBB3486:
	.loc 4 634 0
	lwz 0,2260(31)
	.loc 4 635 0
	lis 9,gameLocal@ha
	.loc 4 634 0
	rlwinm 11,0,0,20,31
.LVL663:
	.loc 4 635 0
	la 9,gameLocal@l(9)
	addi 10,11,4228
	srawi 0,0,12
	slwi 10,10,2
	add 10,9,10
	lwz 10,4(10)
	cmpw 7,10,0
	bne+ 7,.L362
	.loc 4 636 0
	addi 11,11,132
.LVL664:
	slwi 11,11,2
.LVL665:
	add 9,9,11
	lwz 3,4(9)
.LBE3486:
.LBE3485:
	.loc 2 1550 0
	cmpwi 7,3,0
	beq- 7,.L362
.LBB3487:
.LBB3488:
	.loc 2 1551 0
	lwz 9,0(3)
	lwz 0,76(9)
	mtctr 0
	bctrl
.LBE3488:
.LBE3487:
	.loc 2 1553 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL666:
	mtlr 0
	addi 1,1,16
	.cfi_restore 31
.LCFI213:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2950:
	.size	_ZN27idAFEntity_WithAttachedHead3GibERK6idVec3PKc, .-_ZN27idAFEntity_WithAttachedHead3GibERK6idVec3PKc
	.align 2
	.type	_ZL12GetArgStringRK6idDictPS0_PKc, @function
_ZL12GetArgStringRK6idDictPS0_PKc:
.LFB3018:
	.loc 2 2711 0
	.cfi_startproc
.LVL667:
	stwu 1,-16(1)
.LCFI214:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBB3501:
.LBB3502:
.LBB3503:
	.loc 11 241 0
	mr 4,5
.LVL668:
.LBE3503:
.LBE3502:
.LBE3501:
	.loc 2 2711 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 2 2711 0
	mr 31,5
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LVL669:
.LBB3509:
.LBB3507:
.LBB3505:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL670:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L369
.LVL671:
.LBB3504:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL672:
.L366:
.LBE3504:
.LBE3505:
.LBE3507:
	.loc 2 2715 0
	lbz 0,0(3)
	cmpwi 7,0,0
	bne- 7,.L367
	.loc 2 2715 0 is_stmt 0 discriminator 1
	cmpwi 7,30,0
	beq- 7,.L367
.LVL673:
.LBE3509:
.LBB3510:
.LBB3511:
.LBB3512:
.LBB3513:
.LBB3514:
	.loc 11 241 0 is_stmt 1
	mr 3,30
	mr 4,31
	bl _ZNK6idDict7FindKeyEPKc
.LVL674:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L370
.LVL675:
.LBB3515:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL676:
.L367:
.LBE3515:
.LBE3514:
.LBE3513:
.LBE3512:
.LBE3511:
.LBE3510:
	.loc 2 2719 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL677:
	mtlr 0
	lwz 31,12(1)
.LVL678:
	addi 1,1,16
	.cfi_remember_state
.LCFI215:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL679:
.L369:
.LCFI216:
	.cfi_restore_state
.LBB3520:
.LBB3508:
.LBB3506:
	.loc 11 245 0
	lis 3,.LC35@ha
.LVL680:
	la 3,.LC35@l(3)
	b .L366
.LVL681:
.L370:
.LBE3506:
.LBE3508:
.LBE3520:
.LBB3521:
.LBB3519:
.LBB3518:
.LBB3517:
.LBB3516:
	lis 3,.LC35@ha
.LVL682:
	la 3,.LC35@l(3)
.LVL683:
	b .L367
.LBE3516:
.LBE3517:
.LBE3518:
.LBE3519:
.LBE3521:
	.cfi_endproc
.LFE3018:
	.size	_ZL12GetArgStringRK6idDictPS0_PKc, .-_ZL12GetArgStringRK6idDictPS0_PKc
	.align 2
	.globl _ZN7idChain14CreateInstanceEv
	.type	_ZN7idChain14CreateInstanceEv, @function
_ZN7idChain14CreateInstanceEv:
.LFB2823:
	.loc 2 135 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2823
	mflr 0
	stwu 1,-24(1)
.LCFI217:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB3537:
	li 3,1096
.LBE3537:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB31:
.LBB3566:
	.loc 2 135 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE31:
	mr 31,3
.LVL684:
.LEHB32:
.LBB3538:
.LBB3539:
.LBB3540:
.LBB3541:
	.loc 9 45 0
	bl _ZN8idEntityC2Ev
.LEHE32:
.LVL685:
	lis 9,_ZTV14idMultiModelAF+8@ha
	addi 3,31,636
	la 0,_ZTV14idMultiModelAF+8@l(9)
	stw 0,0(31)
.LEHB33:
	bl _ZN12idPhysics_AFC1Ev
.LEHE33:
.LVL686:
.LBB3542:
.LBB3543:
	.loc 13 159 0
	li 9,16
.LBB3544:
.LBB3545:
	.loc 13 197 0
	li 0,0
.LBE3545:
.LBE3544:
	.loc 13 159 0
	stw 9,1072(31)
.LVL687:
.LBE3543:
.LBE3542:
.LBE3541:
.LBE3540:
.LBE3539:
.LBE3538:
	.loc 2 135 0
	mr 3,31
.LBB3564:
.LBB3562:
.LBB3559:
.LBB3556:
.LBB3549:
.LBB3550:
	.loc 13 159 0
	stw 9,1088(31)
.LBE3550:
.LBE3549:
.LBE3556:
.LBE3559:
	.loc 9 76 0
	lis 9,_ZTV7idChain+8@ha
.LBB3560:
.LBB3557:
.LBB3554:
.LBB3548:
.LBB3547:
.LBB3546:
	.loc 13 197 0
	stw 0,1076(31)
	.loc 13 198 0
	stw 0,1064(31)
	.loc 13 199 0
	stw 0,1068(31)
.LVL688:
.LBE3546:
.LBE3547:
.LBE3548:
.LBE3554:
.LBB3555:
.LBB3553:
.LBB3551:
.LBB3552:
	.loc 13 197 0
	stw 0,1092(31)
	.loc 13 198 0
	stw 0,1080(31)
	.loc 13 199 0
	stw 0,1084(31)
.LBE3552:
.LBE3551:
.LBE3553:
.LBE3555:
.LBE3557:
.LBE3560:
	.loc 9 76 0
	la 0,_ZTV7idChain+8@l(9)
	stw 0,0(31)
.LVL689:
.LEHB34:
.LBE3562:
.LBE3564:
	.loc 2 135 0
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE34:
.LVL690:
.L372:
.LBE3566:
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI218:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L378:
.L375:
.LCFI219:
	.cfi_restore_state
.LBB3567:
	cmpwi 7,4,1
	beq- 7,.L377
.LEHB35:
	bl _Unwind_Resume
.LEHE35:
.LVL691:
.L380:
	mr 30,3
.LBB3565:
.LBB3563:
.LBB3561:
.LBB3558:
	.loc 9 45 0
	mr 3,31
	stw 4,8(1)
	bl _ZN8idEntityD2Ev
	lwz 4,8(1)
.L374:
.LBE3558:
.LBE3561:
.LBE3563:
.LBE3565:
	.loc 2 135 0
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L375
.L379:
	mr 30,3
	b .L374
.LVL692:
.L377:
.LBE3567:
.LBB3568:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L372
.LBE3568:
	.cfi_endproc
.LFE2823:
	.section	.gcc_except_table
	.align 2
.LLSDA2823:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2823-.LLSDATTD2823
.LLSDATTD2823:
	.byte	0x1
	.uleb128 .LLSDACSE2823-.LLSDACSB2823
.LLSDACSB2823:
	.uleb128 .LEHB31-.LFB2823
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L378-.LFB2823
	.uleb128 0x1
	.uleb128 .LEHB32-.LFB2823
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L379-.LFB2823
	.uleb128 0x3
	.uleb128 .LEHB33-.LFB2823
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L380-.LFB2823
	.uleb128 0x3
	.uleb128 .LEHB34-.LFB2823
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L378-.LFB2823
	.uleb128 0x1
	.uleb128 .LEHB35-.LFB2823
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE2823:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2823:
	.section	".text"
	.size	_ZN7idChain14CreateInstanceEv, .-_ZN7idChain14CreateInstanceEv
	.align 2
	.globl _ZN24idAFEntity_VehicleSimple5SpawnEv
	.type	_ZN24idAFEntity_VehicleSimple5SpawnEv, @function
_ZN24idAFEntity_VehicleSimple5SpawnEv:
.LFB2974:
	.loc 2 1759 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2974
.LVL693:
	stwu 1,-2984(1)
.LCFI220:
	.cfi_def_cfa_offset 2984
	mflr 0
	stw 29,2972(1)
.LBB3610:
	.loc 2 1766 0
	lis 29,.LANCHOR0@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	la 29,.LANCHOR0@l(29)
.LBE3610:
	.loc 2 1759 0
	stw 30,2976(1)
.LBB3713:
	.loc 2 1766 0
	addi 30,29,1480
	.cfi_offset 30, -8
.LBE3713:
	.loc 2 1759 0
	stw 31,2980(1)
	mr 31,3
	.cfi_offset 31, -4
.LBB3714:
	.loc 2 1766 0
	mr 3,30
.LVL694:
.LBE3714:
	.loc 2 1759 0
	stw 0,2988(1)
	stw 14,2912(1)
	stw 15,2916(1)
	stw 16,2920(1)
	stw 17,2924(1)
	stw 18,2928(1)
	stw 19,2932(1)
	stw 20,2936(1)
	stw 21,2940(1)
	stw 22,2944(1)
	stw 23,2948(1)
	stw 24,2952(1)
	stw 25,2956(1)
	stw 26,2960(1)
	stw 27,2964(1)
	stw 28,2968(1)
.LBB3715:
	.loc 2 1766 0
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
	.cfi_offset 14, -72
	.cfi_offset 65, 4
	bl __cxa_guard_acquire
	cmpwi 7,3,0
	bne- 7,.L393
.L382:
.LVL695:
.LBB3611:
.LBB3612:
.LBB3613:
.LBB3614:
	.file 17 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Bounds.h"
	.loc 17 208 0
	li 30,0
.LBE3614:
.LBE3613:
	.file 18 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/TraceModel.h"
	.loc 18 161 0
	li 0,0
.LBE3612:
.LBE3611:
	.loc 2 1773 0
	li 5,4
	addi 3,1,68
	addi 4,29,1488
.LBB3618:
.LBB3617:
	.loc 18 161 0
	stw 0,68(1)
	.loc 18 162 0
	stw 0,1124(1)
	stw 0,460(1)
	stw 0,72(1)
.LVL696:
.LBB3616:
.LBB3615:
	.loc 17 208 0
	stw 30,2888(1)
	stw 30,2884(1)
	stw 30,2880(1)
	stw 30,2876(1)
	stw 30,2872(1)
	stw 30,2868(1)
.LEHB36:
.LBE3615:
.LBE3616:
.LBE3617:
.LBE3618:
	.loc 2 1773 0
	bl _ZN12idTraceModel12SetupPolygonEPK6idVec3i
	.loc 2 1774 0
	lfs 0,2260(31)
	addi 4,1,8
	addi 3,1,68
.LBB3619:
.LBB3620:
	.loc 3 396 0
	stw 30,8(1)
.LBE3620:
.LBE3619:
	.loc 2 1774 0
	fneg 0,0
.LVL697:
.LBB3622:
.LBB3621:
	.loc 3 397 0
	stw 30,12(1)
	.loc 3 398 0
	stfs 0,16(1)
.LBE3621:
.LBE3622:
	.loc 2 1774 0
	bl _ZN12idTraceModel9TranslateERK6idVec3
.LVL698:
	.loc 2 1775 0
	li 3,140
	bl _Znwj
.LEHE36:
	addi 4,1,68
	mr 30,3
.LEHB37:
	bl _ZN11idClipModelC1ERK12idTraceModel
.LEHE37:
	.loc 2 1775 0 is_stmt 0 discriminator 1
	lis 27,.LANCHOR2@ha
.LBB3623:
.LBB3624:
	.loc 2 1780 0 is_stmt 1 discriminator 1
	lis 19,gameLocal@ha
.LBE3624:
.LBE3623:
	.loc 2 1775 0 discriminator 1
	la 27,.LANCHOR2@l(27)
.LBB3693:
.LBB3688:
	.loc 2 1780 0 discriminator 1
	lis 18,.LC57@ha
	.loc 2 1784 0 discriminator 1
	lis 17,.LC58@ha
	.loc 2 1791 0 discriminator 1
	lis 24,.LC59@ha
.LBE3688:
.LBE3693:
	.loc 2 1775 0 discriminator 1
	stw 30,2276(31)
.LVL699:
	addi 27,27,100
	mr 30,31
	.loc 2 1777 0 discriminator 1
	li 29,0
	addi 25,31,100
	addi 26,31,636
.LBB3694:
.LBB3689:
.LBB3625:
.LBB3626:
	.loc 11 245 0 discriminator 1
	lis 16,.LC35@ha
.LBE3626:
.LBE3625:
	.loc 2 1780 0 discriminator 1
	la 19,gameLocal@l(19)
	la 18,.LC57@l(18)
	.loc 2 1784 0 discriminator 1
	la 17,.LC58@l(17)
	.loc 2 1791 0 discriminator 1
	la 24,.LC59@l(24)
.LBB3630:
.LBB3631:
	.loc 2 1796 0 discriminator 1
	lis 23,g_vehicleSuspensionUp@ha
.LBE3631:
.LBE3630:
.LBB3634:
.LBB3635:
	lis 22,g_vehicleSuspensionDown@ha
.LBE3635:
.LBE3634:
.LBB3638:
.LBB3639:
	lis 21,g_vehicleSuspensionKCompress@ha
.LBE3639:
.LBE3638:
.LBB3642:
.LBB3643:
	lis 20,g_vehicleSuspensionDamping@ha
.LVL700:
.L386:
.LBE3643:
.LBE3642:
	.loc 2 1778 0
	lwzu 15,4(27)
.LVL701:
.LBB3646:
.LBB3628:
	.loc 11 241 0
	mr 3,25
	mr 4,15
.LEHB38:
	bl _ZNK6idDict7FindKeyEPKc
.LVL702:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L389
.LVL703:
.LBB3627:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL704:
.L383:
.LBE3627:
.LBE3628:
.LBE3646:
	.loc 2 1779 0
	lbz 0,0(28)
	cmpwi 7,0,0
	beq- 7,.L394
	.loc 2 1782 0
	mr 3,26
.LVL705:
	mr 4,28
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 1783 0
	cmpwi 7,3,-1
	.loc 2 1782 0
	stw 3,2296(30)
	.loc 2 1783 0
	beq- 7,.L395
.L385:
	.loc 2 1787 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,92(9)
	mtctr 0
	bctrl
	lwz 4,2296(30)
	li 5,0
	addi 6,1,20
	addi 7,1,32
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL706:
.LBB3647:
.LBB3648:
.LBB3649:
	.loc 6 454 0
	lfs 0,24(1)
	lfs 13,280(31)
.LBE3649:
.LBE3648:
.LBE3647:
	.loc 2 1790 0
	li 3,448
.LBB3660:
.LBB3655:
.LBB3650:
	.loc 6 454 0
	lfs 11,284(31)
	lfs 12,288(31)
	fmuls 11,0,11
.LBE3650:
.LBE3655:
.LBE3660:
.LBB3661:
.LBB3662:
	lfs 8,272(31)
.LBE3662:
.LBE3661:
.LBB3667:
.LBB3656:
.LBB3651:
	fmuls 12,0,12
.LBE3651:
.LBE3656:
.LBE3667:
.LBB3668:
.LBB3663:
	lfs 9,276(31)
.LBE3663:
.LBE3668:
.LBB3669:
.LBB3657:
.LBB3652:
	fmuls 0,0,13
.LBE3652:
.LBE3657:
.LBE3669:
.LBB3670:
.LBB3664:
	lfs 10,268(31)
.LBE3664:
.LBE3670:
.LBB3671:
.LBB3658:
.LBB3653:
	lfs 13,20(1)
.LBE3653:
.LBE3658:
.LBE3671:
.LBB3672:
.LBB3665:
	fmadds 11,13,8,11
	lfs 8,296(31)
	fmadds 12,13,9,12
	lfs 9,300(31)
	fmadds 13,10,13,0
.LBE3665:
.LBE3672:
.LBB3673:
.LBB3659:
.LBB3654:
	lfs 0,28(1)
.LVL707:
.LBE3654:
.LBE3659:
.LBE3673:
.LBB3674:
.LBB3666:
	lfs 10,292(31)
	fmadds 11,0,8,11
	fmadds 12,0,9,12
	.loc 3 452 0
	lfs 9,260(31)
	.loc 6 454 0
	fmadds 0,10,0,13
	.loc 3 452 0
	lfs 10,264(31)
	lfs 13,256(31)
	fadds 11,11,9
	fadds 12,12,10
.LVL708:
	fadds 0,13,0
.LBE3666:
.LBE3674:
.LBB3675:
.LBB3676:
	.loc 3 425 0
	stfs 11,24(1)
	.loc 3 426 0
	stfs 12,28(1)
	.loc 3 424 0
	stfs 0,20(1)
.LBE3676:
.LBE3675:
	.loc 2 1790 0
	bl _Znwj
.LEHE38:
.LVL709:
	mr 28,3
.LEHB39:
	bl _ZN25idAFConstraint_SuspensionC1Ev
.LEHE39:
	.loc 2 1790 0 is_stmt 0 discriminator 1
	stw 28,2280(30)
	.loc 2 1791 0 is_stmt 1 discriminator 1
	mr 4,29
	mr 3,24
	addi 15,31,1656
.LVL710:
.LEHB40:
	crxor 6,6,6
	bl _Z2vaPKcz
	li 4,0
	mr 0,3
.LVL711:
	mr 3,15
	stw 0,2904(1)
	bl _ZNK12idPhysics_AF7GetBodyEi
	lwz 9,1656(31)
	mr 14,3
.LVL712:
	li 4,0
	mr 3,15
	lwz 9,136(9)
	mtctr 9
	bctrl
	lwz 0,2904(1)
	lwz 8,2276(31)
	mr 7,3
	mr 4,0
	mr 5,14
	addi 6,1,20
.LVL713:
	mr 3,28
	bl _ZN25idAFConstraint_Suspension5SetupEPKcP8idAFBodyRK6idVec3RK6idMat3P11idClipModel
.LVL714:
.LBB3677:
.LBB3632:
	.loc 2 1796 0 discriminator 1
	la 8,g_vehicleSuspensionUp@l(23)
.LBE3632:
.LBE3677:
.LBB3678:
.LBB3636:
	la 10,g_vehicleSuspensionDown@l(22)
.LBE3636:
.LBE3678:
.LBB3679:
.LBB3640:
	la 11,g_vehicleSuspensionKCompress@l(21)
.LBE3640:
.LBE3679:
.LBB3680:
.LBB3644:
	la 9,g_vehicleSuspensionDamping@l(20)
.LBE3644:
.LBE3680:
.LBB3681:
.LBB3633:
	.loc 16 144 0 discriminator 1
	lwz 7,44(8)
.LBE3633:
.LBE3681:
.LBB3682:
.LBB3637:
	lwz 8,44(10)
.LBE3637:
.LBE3682:
.LBB3683:
.LBB3641:
	lwz 10,44(11)
.LBE3641:
.LBE3683:
.LBB3684:
.LBB3645:
	lwz 11,44(9)
.LBE3645:
.LBE3684:
.LBB3685:
.LBB3686:
	lis 9,g_vehicleTireFriction+44@ha
	lwz 9,g_vehicleTireFriction+44@l(9)
.LBE3686:
.LBE3685:
	.loc 2 1796 0 discriminator 1
	lwz 3,2280(30)
	lfs 1,40(7)
	lfs 2,40(8)
	lfs 3,40(10)
	lfs 4,40(11)
	lfs 5,40(9)
	bl _ZN25idAFConstraint_Suspension13SetSuspensionEfffff
.LVL715:
	.loc 2 1798 0 discriminator 1
	lwz 4,2280(30)
	mr 3,15
.LBE3689:
	.loc 2 1777 0 discriminator 1
	addi 30,30,4
.LBB3690:
	.loc 2 1798 0 discriminator 1
	bl _ZN12idPhysics_AF13AddConstraintEP14idAFConstraint
.LVL716:
.LBE3690:
	.loc 2 1777 0 discriminator 1
	cmpwi 7,29,3
	addi 29,29,1
.LVL717:
	bne+ 7,.L386
.LBE3694:
	.loc 2 1801 0
	li 0,0
	.loc 2 1802 0
	mr 3,31
	.loc 2 1801 0
	stw 0,2312(31)
	.loc 2 1802 0
	li 4,1
	.loc 2 1801 0
	stw 0,2316(31)
	stw 0,2320(31)
	stw 0,2324(31)
	.loc 2 1802 0
	bl _ZN8idEntity12BecomeActiveEi
.LBE3715:
	.loc 2 1803 0
	lwz 0,2988(1)
	lwz 14,2912(1)
	mtlr 0
	lwz 15,2916(1)
	lwz 16,2920(1)
	lwz 17,2924(1)
	lwz 18,2928(1)
	lwz 19,2932(1)
	lwz 20,2936(1)
	lwz 21,2940(1)
	lwz 22,2944(1)
	lwz 23,2948(1)
	lwz 24,2952(1)
	lwz 25,2956(1)
	lwz 26,2960(1)
	lwz 27,2964(1)
	lwz 28,2968(1)
	lwz 29,2972(1)
.LVL718:
	lwz 30,2976(1)
	lwz 31,2980(1)
.LVL719:
	addi 1,1,2984
	.cfi_remember_state
.LCFI221:
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
.LVL720:
.L394:
.LCFI222:
	.cfi_restore_state
.LBB3716:
.LBB3695:
.LBB3691:
	.loc 2 1780 0
	lwz 5,72(31)
	mr 3,19
.LVL721:
	mr 4,18
	mr 6,15
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	.loc 2 1782 0
	mr 3,26
	mr 4,28
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 1783 0
	cmpwi 7,3,-1
	.loc 2 1782 0
	stw 3,2296(30)
	.loc 2 1783 0
	bne+ 7,.L385
.L395:
	.loc 2 1784 0
	lwz 5,72(31)
	mr 3,19
	mr 4,17
	mr 6,28
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L385
.LVL722:
.L389:
.LBB3687:
.LBB3629:
	.loc 11 245 0
	la 28,.LC35@l(16)
	b .L383
.LVL723:
.L393:
.LBE3629:
.LBE3687:
.LBE3691:
.LBE3695:
.LBB3696:
.LBB3697:
	.loc 3 396 0 discriminator 1
	lis 9,.LC55@ha
.LBE3697:
.LBE3696:
.LBB3700:
.LBB3701:
	.loc 3 397 0 discriminator 1
	lis 11,.LC56@ha
.LBE3701:
.LBE3700:
.LBB3704:
.LBB3698:
	.loc 3 396 0 discriminator 1
	lwz 9,.LC55@l(9)
	.loc 3 398 0 discriminator 1
	li 0,0
.LBE3698:
.LBE3704:
.LBB3705:
.LBB3702:
	.loc 3 397 0 discriminator 1
	lwz 11,.LC56@l(11)
.LBE3702:
.LBE3705:
	.loc 2 1766 0 discriminator 1
	mr 3,30
.LBB3706:
.LBB3699:
	.loc 3 396 0 discriminator 1
	stw 9,1488(29)
	.loc 3 397 0 discriminator 1
	stw 9,1492(29)
	.loc 3 398 0 discriminator 1
	stw 0,1496(29)
.LVL724:
.LBE3699:
.LBE3706:
.LBB3707:
.LBB3703:
	.loc 3 396 0 discriminator 1
	stw 9,1500(29)
	.loc 3 397 0 discriminator 1
	stw 11,1504(29)
	.loc 3 398 0 discriminator 1
	stw 0,1508(29)
.LVL725:
.LBE3703:
.LBE3707:
.LBB3708:
.LBB3709:
	.loc 3 396 0 discriminator 1
	stw 11,1512(29)
	.loc 3 397 0 discriminator 1
	stw 11,1516(29)
	.loc 3 398 0 discriminator 1
	stw 0,1520(29)
.LVL726:
.LBE3709:
.LBE3708:
.LBB3710:
.LBB3711:
	.loc 3 396 0 discriminator 1
	stw 11,1524(29)
	.loc 3 397 0 discriminator 1
	stw 9,1528(29)
	.loc 3 398 0 discriminator 1
	stw 0,1532(29)
.LBE3711:
.LBE3710:
	.loc 2 1766 0 discriminator 1
	bl __cxa_guard_release
	b .L382
.LVL727:
.L390:
	mr 31,3
.LVL728:
	.loc 2 1775 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
	bl _Unwind_Resume
.LVL729:
.L391:
	mr 31,3
.LVL730:
.LBB3712:
.LBB3692:
	.loc 2 1790 0
	mr 3,28
	bl _ZdlPv
	mr 3,31
	bl _Unwind_Resume
.LEHE40:
.LBE3692:
.LBE3712:
.LBE3716:
	.cfi_endproc
.LFE2974:
	.section	.gcc_except_table
.LLSDA2974:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2974-.LLSDACSB2974
.LLSDACSB2974:
	.uleb128 .LEHB36-.LFB2974
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB2974
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L390-.LFB2974
	.uleb128 0
	.uleb128 .LEHB38-.LFB2974
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB2974
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L391-.LFB2974
	.uleb128 0
	.uleb128 .LEHB40-.LFB2974
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE2974:
	.section	".text"
	.size	_ZN24idAFEntity_VehicleSimple5SpawnEv, .-_ZN24idAFEntity_VehicleSimple5SpawnEv
	.align 2
	.globl _ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.type	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3, @function
_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3:
.LFB2883:
	.loc 2 759 0
	.cfi_startproc
.LVL731:
	mflr 0
	stwu 1,-32(1)
.LCFI223:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,36(1)
	stfd 31,24(1)
	stw 30,16(1)
.LBB3733:
	.loc 2 762 0
	lbz 0,2185(3)
	.cfi_offset 30, -16
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq- 7,.L397
.LVL732:
.LBE3733:
.LBB3734:
.LBB3735:
.LBB3736:
.LBB3737:
	.loc 3 435 0
	lfs 0,72(4)
.LBE3737:
.LBE3736:
	.loc 2 764 0
	lis 9,.LC60@ha
.LBB3740:
.LBB3738:
	.loc 3 435 0
	lfs 11,4(5)
.LBE3738:
.LBE3740:
	lfs 13,0(5)
.LBB3741:
.LBB3739:
	fmuls 11,11,0
.LBE3739:
.LBE3741:
	lfs 0,68(4)
	lfs 12,8(5)
	fmadds 13,13,0,11
	lfs 0,76(4)
	.loc 2 763 0
	fnmadds 0,12,0,13
.LVL733:
	.loc 2 764 0
	lfs 13,.LC60@l(9)
	fcmpu 7,0,13
	bng- 7,.L397
.LVL734:
	lis 30,gameLocal@ha
	lwz 0,2244(3)
	la 30,gameLocal@l(30)
	addis 30,30,0x25
	lwz 9,2004(30)
	cmpw 7,9,0
	ble- 7,.L397
	.loc 2 765 0
	lis 9,.LC61@ha
	lfs 12,.LC61@l(9)
	fcmpu 7,0,12
	bgt- 7,.L401
.LBB3742:
.LBB3743:
.LBB3744:
.LBB3745:
	.loc 14 276 0
	lis 9,_ZN6idMath5iSqrtE@ha
	.loc 14 278 0
	lis 11,.LC63@ha
	.loc 14 276 0
	la 9,_ZN6idMath5iSqrtE@l(9)
.LBE3745:
.LBE3744:
.LBE3743:
.LBE3742:
	.loc 2 765 0
	fsubs 13,0,13
.LBB3788:
.LBB3789:
.LBB3790:
.LBB3791:
	.loc 14 276 0
	lwz 0,1920(9)
	oris 0,0,0x3d80
.LBE3791:
.LBE3790:
.LBE3789:
.LBE3788:
	.loc 2 765 0
	stfs 13,8(1)
.LVL735:
.LBB3829:
.LBB3816:
.LBB3804:
.LBB3792:
	.loc 14 277 0
	stw 0,12(1)
.LBE3792:
.LBE3804:
.LBE3816:
.LBE3829:
.LBB3830:
.LBB3774:
.LBB3760:
.LBB3746:
	.loc 14 270 0
	lwz 0,8(1)
.LVL736:
.LBE3746:
.LBE3760:
.LBE3774:
.LBE3830:
.LBB3831:
.LBB3817:
.LBB3805:
.LBB3793:
	.loc 14 277 0
	lfs 12,12(1)
.LBE3793:
.LBE3805:
.LBE3817:
.LBE3831:
.LBB3832:
.LBB3775:
.LBB3761:
.LBB3747:
	.loc 14 276 0
	rlwinm 10,0,9,24,31
.LBE3747:
.LBE3761:
.LBE3775:
.LBE3832:
.LBB3833:
.LBB3818:
.LBB3806:
.LBB3794:
	.loc 14 277 0
	fmr 10,12
.LBE3794:
.LBE3806:
.LBE3818:
.LBE3833:
.LBB3834:
.LBB3776:
.LBB3762:
.LBB3748:
	.loc 14 278 0
	lfs 12,.LC63@l(11)
.LBE3748:
.LBE3762:
.LBE3776:
.LBE3834:
.LBB3835:
.LBB3819:
.LBB3807:
.LBB3795:
	lis 11,.LC66@ha
	lfs 9,.LC66@l(11)
.LBE3795:
.LBE3807:
.LBE3819:
.LBE3835:
.LBB3836:
.LBB3777:
.LBB3763:
.LBB3749:
	.loc 14 276 0
	rlwinm 11,0,19,21,29
.LBE3749:
.LBE3763:
.LBE3777:
.LBE3836:
.LBB3837:
.LBB3820:
.LBB3808:
.LBB3796:
	.loc 14 278 0
	fmul 11,10,10
.LBE3796:
.LBE3808:
.LBE3820:
.LBE3837:
.LBB3838:
.LBB3778:
.LBB3764:
.LBB3750:
	.loc 14 276 0
	lwzx 9,9,11
	subfic 0,10,380
	.loc 14 275 0
	lis 11,.LC1@ha
	.loc 14 276 0
	rlwinm 0,0,22,0,8
	or 0,0,9
.LBE3750:
.LBE3764:
.LBE3778:
.LBE3838:
.LBB3839:
.LBB3821:
	.loc 14 303 0
	lis 9,.LC64@ha
.LBB3809:
.LBB3797:
	.loc 2 759 0
	fneg 11,11
.LBE3797:
.LBE3809:
.LBE3821:
.LBE3839:
.LBB3840:
.LBB3779:
.LBB3765:
.LBB3751:
	.loc 14 277 0
	stw 0,12(1)
	lfs 0,12(1)
.LVL737:
.LBE3751:
.LBE3765:
.LBE3779:
.LBE3840:
.LBB3841:
.LBB3822:
.LBB3810:
.LBB3798:
	.loc 14 278 0
	fmadd 11,11,9,12
	fmul 11,10,11
.LBE3798:
.LBE3810:
.LBE3822:
.LBE3841:
.LBB3842:
.LBB3780:
.LBB3766:
.LBB3752:
	.loc 14 275 0
	lfs 10,.LC1@l(11)
	fmuls 10,13,10
.LVL738:
	.loc 14 277 0
	fmr 13,0
.LVL739:
.LBE3752:
.LBE3766:
.LBE3780:
.LBE3842:
.LBB3843:
.LBB3823:
.LBB3811:
.LBB3799:
	.loc 14 279 0
	fmul 8,11,11
.LBE3799:
.LBE3811:
.LBE3823:
.LBE3843:
.LBB3844:
.LBB3781:
.LBB3767:
.LBB3753:
	.loc 14 278 0
	fmul 0,13,13
.LVL740:
.LBE3753:
.LBE3767:
.LBE3781:
.LBE3844:
.LBB3845:
.LBB3824:
.LBB3812:
.LBB3800:
	.loc 2 759 0
	fneg 8,8
.LBE3800:
.LBE3812:
.LBE3824:
.LBE3845:
.LBB3846:
.LBB3782:
.LBB3768:
.LBB3754:
	fneg 10,10
.LVL741:
.LBE3754:
.LBE3768:
.LBE3782:
.LBE3846:
.LBB3847:
.LBB3825:
.LBB3813:
.LBB3801:
	.loc 14 279 0
	fmadd 9,8,9,12
.LBE3801:
.LBE3813:
	.loc 14 303 0
	lfs 8,.LC64@l(9)
.LBE3825:
.LBE3847:
.LBB3848:
.LBB3783:
.LBB3769:
.LBB3755:
	.loc 14 278 0
	fmadd 0,10,0,12
.LBE3755:
.LBE3769:
.LBE3783:
.LBE3848:
	.loc 2 765 0
	lis 9,.LC0@ha
.LBB3849:
.LBB3826:
.LBB3814:
.LBB3802:
	.loc 14 279 0
	fmul 11,11,9
.LBE3802:
.LBE3814:
.LBE3826:
.LBE3849:
.LBB3850:
.LBB3784:
.LBB3770:
.LBB3756:
	.loc 14 278 0
	fmul 0,13,0
.LVL742:
.LBE3756:
.LBE3770:
.LBE3784:
.LBE3850:
.LBB3851:
.LBB3827:
.LBB3815:
.LBB3803:
	.loc 14 280 0
	frsp 11,11
.LBE3803:
.LBE3815:
.LBE3827:
.LBE3851:
.LBB3852:
.LBB3785:
.LBB3771:
.LBB3757:
	.loc 14 279 0
	fmul 31,0,0
.LBE3757:
.LBE3771:
.LBE3785:
.LBE3852:
.LBB3853:
.LBB3828:
	.loc 14 303 0
	fmuls 13,11,8
.LBE3828:
.LBE3853:
	.loc 2 765 0
	lfs 11,.LC0@l(9)
.LBB3854:
.LBB3786:
.LBB3772:
.LBB3758:
	.loc 14 279 0
	fmadd 31,10,31,12
.LVL743:
.LBE3758:
.LBE3772:
	.loc 14 303 0
	lfs 12,8(1)
.LBE3786:
.LBE3854:
	.loc 2 765 0
	fdivs 13,11,13
.LBB3855:
.LBB3787:
.LBB3773:
.LBB3759:
	.loc 14 279 0
	fmul 31,0,31
.LVL744:
	.loc 14 280 0
	frsp 31,31
.LBE3759:
.LBE3773:
	.loc 14 303 0
	fmuls 31,12,31
.LBE3787:
.LBE3855:
	.loc 2 765 0
	fmuls 31,31,13
.LVL745:
.L399:
	.loc 2 766 0
	lis 4,.LC67@ha
.LVL746:
	mr 3,31
.LVL747:
	la 4,.LC67@l(4)
	li 5,0
.LVL748:
	li 6,0
	li 7,0
	li 8,0
	bl _ZN8idEntity10StartSoundEPKciibPi
	cmpwi 7,3,0
	bne- 7,.L403
.L400:
	.loc 2 771 0
	lwz 9,2004(30)
	addi 0,9,500
	stw 0,2244(31)
.LVL749:
.L397:
.LBE3735:
.LBE3734:
	.loc 2 776 0
	lwz 0,36(1)
	li 3,0
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
.LVL750:
	lfd 31,24(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI224:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL751:
.L401:
.LCFI225:
	.cfi_restore_state
.LBB3857:
.LBB3856:
	.loc 2 765 0
	lis 9,.LC0@ha
	lfs 31,.LC0@l(9)
	b .L399
.LVL752:
.L403:
	.loc 2 769 0
	fmr 1,31
	mr 3,31
	bl _ZN8idEntity14SetSoundVolumeEf
	b .L400
.LBE3856:
.LBE3857:
	.cfi_endproc
.LFE2883:
	.size	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3, .-_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.align 2
	.globl _ZN14idMultiModelAF13SetModelForIdEiRK5idStr
	.type	_ZN14idMultiModelAF13SetModelForIdEiRK5idStr, @function
_ZN14idMultiModelAF13SetModelForIdEiRK5idStr:
.LFB2820:
	.loc 2 76 0
	.cfi_startproc
.LVL753:
	mflr 0
	stwu 1,-32(1)
.LCFI226:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 29,20(1)
	.loc 2 77 0
	addi 29,4,1
	.cfi_offset 29, -12
	.loc 2 76 0
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL754:
	stw 0,36(1)
	stw 26,8(1)
	stw 28,16(1)
.LBB3879:
.LBB3880:
.LBB3881:
	.loc 13 481 0
	lwz 0,1068(3)
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	cmpw 7,29,0
	ble- 7,.L405
.LBB3882:
	.loc 13 483 0
	lwz 9,1072(3)
	cmpwi 7,9,0
	addi 28,9,-1
	beq- 7,.L429
	.loc 13 487 0
	add 28,29,28
.LVL755:
	.loc 13 489 0
	stw 0,1064(31)
	.loc 13 488 0
	divw 28,28,9
.LVL756:
.LBB3883:
.LBB3884:
	.loc 13 375 0
	mullw. 28,28,9
.LVL757:
	ble- 0,.L430
.LVL758:
.L408:
	.loc 13 380 0
	cmpw 7,0,28
	beq- 7,.L405
	.loc 13 385 0
	lwz 26,1076(31)
.LVL759:
	.loc 13 386 0
	stw 28,1068(31)
	.loc 13 387 0
	bgt- 7,.L431
.L410:
	.loc 13 392 0
	slwi 3,28,2
.LVL760:
	bl _Znaj
.LVL761:
	.loc 13 393 0
	lwz 0,1064(31)
	.loc 13 392 0
	stw 3,1076(31)
.LVL762:
	.loc 13 393 0
	cmpwi 7,0,0
	ble- 7,.L411
	.loc 2 76 0
	addi 11,26,-4
.LBE3884:
.LBE3883:
	.loc 13 393 0
	li 9,0
	b .L412
.LVL763:
.L432:
.LBB3890:
.LBB3887:
	lwz 3,1076(31)
.LVL764:
.L412:
	.loc 13 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 13 393 0
	addi 9,9,1
.LVL765:
	.loc 13 394 0
	stwx 10,3,0
	.loc 13 393 0
	lwz 0,1064(31)
	cmpw 7,9,0
	blt+ 7,.L432
.LVL766:
.L411:
	.loc 13 398 0
	cmpwi 7,26,0
	beq- 7,.L414
	.loc 13 399 0
	mr 3,26
	bl _ZdaPv
	lwz 0,1064(31)
.L414:
.LVL767:
.LBE3887:
.LBE3890:
.LBB3891:
	.loc 13 492 0
	cmpw 7,28,0
	ble- 7,.L405
	slwi 9,0,2
	.loc 13 493 0
	subf 0,0,28
.LVL768:
	mtctr 0
	li 10,0
.L415:
	lwz 11,1076(31)
	stwx 10,11,9
	.loc 13 492 0
	addi 9,9,4
	bdnz .L415
.LVL769:
.L405:
.LBE3891:
.LBE3882:
.LBE3881:
.LBE3880:
.LBE3879:
.LBB3901:
.LBB3902:
.LBB3903:
	.loc 13 481 0
	lwz 0,1084(31)
.LBE3903:
.LBE3902:
.LBE3901:
.LBB3928:
.LBB3898:
	.loc 13 497 0
	stw 29,1064(31)
.LVL770:
.LBE3898:
.LBE3928:
.LBB3929:
.LBB3923:
.LBB3919:
	.loc 13 481 0
	cmpw 7,29,0
	ble- 7,.L416
.LBB3904:
	.loc 13 483 0
	lwz 9,1088(31)
	cmpwi 7,9,0
	addi 28,9,-1
	beq- 7,.L433
.L418:
	.loc 13 487 0
	add 28,29,28
.LVL771:
	.loc 13 489 0
	stw 0,1080(31)
	.loc 13 488 0
	divw 28,28,9
.LVL772:
.LBB3905:
.LBB3906:
	.loc 13 375 0
	mullw. 28,28,9
.LVL773:
	ble- 0,.L434
	.loc 13 380 0
	cmpw 7,0,28
	beq- 7,.L416
	.loc 13 385 0
	lwz 26,1092(31)
.LVL774:
	.loc 13 386 0
	stw 28,1084(31)
	.loc 13 387 0
	bgt- 7,.L435
.L421:
	.loc 13 392 0
	slwi 3,28,2
	bl _Znaj
.LVL775:
	.loc 13 393 0
	lwz 0,1080(31)
	.loc 13 392 0
	stw 3,1092(31)
.LVL776:
	.loc 13 393 0
	cmpwi 7,0,0
	ble- 7,.L422
	.loc 2 76 0
	addi 11,26,-4
.LBE3906:
.LBE3905:
	.loc 13 393 0
	li 9,0
	b .L423
.LVL777:
.L436:
.LBB3912:
.LBB3909:
	lwz 3,1092(31)
.LVL778:
.L423:
	.loc 13 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 13 393 0
	addi 9,9,1
.LVL779:
	.loc 13 394 0
	stwx 10,3,0
	.loc 13 393 0
	lwz 0,1080(31)
	cmpw 7,9,0
	blt+ 7,.L436
.LVL780:
.L422:
	.loc 13 398 0
	cmpwi 7,26,0
	beq- 7,.L425
	.loc 13 399 0
	mr 3,26
	bl _ZdaPv
	lwz 0,1080(31)
.L425:
.LVL781:
.LBE3909:
.LBE3912:
.LBB3913:
	.loc 13 492 0
	cmpw 7,0,28
	bge- 7,.L416
	slwi 9,0,2
	.loc 13 493 0
	subf 0,0,28
.LVL782:
	mtctr 0
	li 10,-1
.L426:
	lwz 11,1092(31)
	stwx 10,11,9
	.loc 13 492 0
	addi 9,9,4
	bdnz .L426
.LVL783:
.L416:
.LBE3913:
.LBE3904:
.LBE3919:
.LBE3923:
.LBE3929:
	.loc 2 79 0
	lis 9,renderModelManager@ha
.LBB3930:
.LBB3924:
	.loc 13 497 0
	stw 29,1080(31)
.LVL784:
.LBE3924:
.LBE3930:
	.loc 2 79 0
	lwz 3,renderModelManager@l(9)
.LVL785:
.LBB3931:
.LBB3932:
	.loc 13 589 0
	slwi 30,30,2
.LVL786:
.LBE3932:
.LBE3931:
	.loc 2 79 0
	lwz 4,4(27)
	lwz 9,0(3)
.LBB3934:
.LBB3933:
	.loc 13 589 0
	lwz 31,1076(31)
.LVL787:
.LBE3933:
.LBE3934:
	.loc 2 79 0
	lwz 0,32(9)
	mtctr 0
	bctrl
	stwx 3,31,30
	.loc 2 80 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
.LVL788:
	lwz 28,16(1)
	lwz 29,20(1)
.LVL789:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI227:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL790:
.L433:
.LCFI228:
	.cfi_restore_state
.LBB3935:
.LBB3925:
.LBB3920:
.LBB3916:
	.loc 13 484 0
	li 9,16
	li 28,15
	stw 9,1088(31)
	b .L418
.LVL791:
.L429:
.LBE3916:
.LBE3920:
.LBE3925:
.LBE3935:
.LBB3936:
.LBB3899:
.LBB3896:
.LBB3894:
	li 28,15
	li 9,16
	.loc 13 487 0
	add 28,29,28
.LVL792:
	.loc 13 484 0
	stw 9,1072(3)
	.loc 13 488 0
	divw 28,28,9
.LVL793:
	.loc 13 489 0
	stw 0,1064(31)
.LVL794:
.LBB3892:
.LBB3888:
	.loc 13 375 0
	mullw. 28,28,9
.LVL795:
	bgt+ 0,.L408
	b .L430
.LVL796:
.L435:
.LBE3888:
.LBE3892:
.LBE3894:
.LBE3896:
.LBE3899:
.LBE3936:
.LBB3937:
.LBB3926:
.LBB3921:
.LBB3917:
.LBB3914:
.LBB3910:
	.loc 13 388 0
	stw 28,1080(31)
	b .L421
.LVL797:
.L431:
.LBE3910:
.LBE3914:
.LBE3917:
.LBE3921:
.LBE3926:
.LBE3937:
.LBB3938:
.LBB3900:
.LBB3897:
.LBB3895:
.LBB3893:
.LBB3889:
	stw 28,1064(31)
	b .L410
.LVL798:
.L430:
.LBB3885:
.LBB3886:
	.loc 13 193 0
	lwz 3,1076(31)
	cmpwi 7,3,0
	beq- 7,.L409
	.loc 13 194 0
	bl _ZdaPv
.L409:
	.loc 13 197 0
	li 0,0
	stw 0,1076(31)
	.loc 13 199 0
	stw 0,1068(31)
.LVL799:
	b .L405
.LVL800:
.L434:
.LBE3886:
.LBE3885:
.LBE3889:
.LBE3893:
.LBE3895:
.LBE3897:
.LBE3900:
.LBE3938:
.LBB3939:
.LBB3927:
.LBB3922:
.LBB3918:
.LBB3915:
.LBB3911:
.LBB3907:
.LBB3908:
	.loc 13 193 0
	lwz 3,1092(31)
	cmpwi 7,3,0
	beq- 7,.L420
	.loc 13 194 0
	bl _ZdaPv
.L420:
	.loc 13 197 0
	li 0,0
	stw 0,1092(31)
	.loc 13 199 0
	stw 0,1084(31)
.LVL801:
	b .L416
.LBE3908:
.LBE3907:
.LBE3911:
.LBE3915:
.LBE3918:
.LBE3922:
.LBE3927:
.LBE3939:
	.cfi_endproc
.LFE2820:
	.size	_ZN14idMultiModelAF13SetModelForIdEiRK5idStr, .-_ZN14idMultiModelAF13SetModelForIdEiRK5idStr
	.align 2
	.globl _ZN7idChain10BuildChainERK5idStrRK6idVec3fffib
	.type	_ZN7idChain10BuildChainERK5idStrRK6idVec3fffib, @function
_ZN7idChain10BuildChainERK5idStrRK6idVec3fffib:
.LFB2828:
	.loc 2 147 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2828
.LVL802:
	stwu 1,-6256(1)
.LCFI229:
	.cfi_def_cfa_offset 6256
	mflr 0
.LBB4184:
	.loc 2 149 0
	lis 11,.LC1@ha
.LBB4185:
.LBB4186:
	.loc 18 161 0
	li 9,0
.LBE4186:
.LBE4185:
.LBE4184:
	.loc 2 147 0
	stfd 30,6240(1)
	fmr 30,1
	.cfi_offset 62, -16
	.cfi_register 65, 0
	stfd 28,6224(1)
.LBB4723:
	.loc 2 149 0
	lfs 28,.LC1@l(11)
	.cfi_offset 60, -32
.LBE4723:
	.loc 2 147 0
	stw 0,6260(1)
.LBB4724:
.LBB4197:
.LBB4193:
.LBB4187:
.LBB4188:
	.loc 17 208 0
	li 0,0
	.cfi_offset 65, 4
.LBE4188:
.LBE4187:
.LBE4193:
.LBE4197:
.LBE4724:
	.loc 2 147 0
	stw 29,6212(1)
	mr 29,3
	.cfi_offset 29, -44
.LBB4725:
.LBB4198:
.LBB4199:
	.loc 18 176 0
	addi 3,1,480
.LVL803:
.LBE4199:
.LBE4198:
.LBB4201:
.LBB4194:
	.loc 18 161 0
	stw 9,3308(1)
	.loc 18 162 0
	stw 9,4364(1)
.LBE4194:
.LBE4201:
	.loc 2 149 0
	fmuls 28,1,28
.LVL804:
.LBB4202:
.LBB4195:
	.loc 18 162 0
	stw 9,3700(1)
	stw 9,3312(1)
.LVL805:
.LBB4191:
.LBB4189:
	.loc 17 208 0
	stw 0,6128(1)
	stw 0,6124(1)
	stw 0,6120(1)
	stw 0,6116(1)
.LBE4189:
.LBE4191:
.LBE4195:
.LBE4202:
.LBE4725:
	.loc 2 147 0
	stfd 29,6232(1)
	fmr 29,3
	.cfi_offset 61, -24
	stw 17,6164(1)
	mr 17,6
	.cfi_offset 17, -92
	stw 21,6180(1)
	mr 21,7
	.cfi_offset 21, -76
	stw 27,6204(1)
	mr 27,4
	.cfi_offset 27, -52
	stw 31,6220(1)
	mr 31,5
	.cfi_offset 31, -36
	stfd 31,6248(1)
	stw 14,6152(1)
	stw 15,6156(1)
	stw 16,6160(1)
	stw 18,6168(1)
	stw 19,6172(1)
	stw 20,6176(1)
	stw 22,6184(1)
	stw 23,6188(1)
	stw 24,6192(1)
	stw 25,6196(1)
	stw 26,6200(1)
	stw 28,6208(1)
	stw 30,6216(1)
.LBB4726:
.LBB4203:
.LBB4196:
.LBB4192:
.LBB4190:
	.loc 17 208 0
	stw 0,6112(1)
	stw 0,6108(1)
.LVL806:
.LBE4190:
.LBE4192:
.LBE4196:
.LBE4203:
.LBB4204:
.LBB4200:
	.loc 18 176 0
	stfd 2,6144(1)
.LEHB41:
	.cfi_offset 30, -40
	.cfi_offset 28, -48
	.cfi_offset 26, -56
	.cfi_offset 25, -60
	.cfi_offset 24, -64
	.cfi_offset 23, -68
	.cfi_offset 22, -72
	.cfi_offset 20, -80
	.cfi_offset 19, -84
	.cfi_offset 18, -88
	.cfi_offset 16, -96
	.cfi_offset 15, -100
	.cfi_offset 14, -104
	.cfi_offset 63, -8
	bl _ZN12idTraceModel8InitBoneEv
.LVL807:
	.loc 18 177 0
	fmr 1,30
	lfd 2,6144(1)
	addi 3,1,480
.LVL808:
	bl _ZN12idTraceModel9SetupBoneEff
.LVL809:
.LBE4200:
.LBE4204:
.LBB4205:
.LBB4206:
	.loc 18 83 0
	lwz 0,480(1)
	addi 11,1,488
	addi 9,1,3316
	stw 0,3308(1)
	lwz 0,484(1)
	stw 0,3312(1)
	.loc 2 147 0
	li 0,32
	mtctr 0
.LVL810:
.L438:
.LBB4207:
.LBB4208:
	.loc 3 424 0
	lwz 8,0(11)
	.loc 3 425 0
	lwz 10,4(11)
	.loc 3 426 0
	lwz 0,8(11)
	addi 11,11,12
	.loc 3 424 0
	stw 8,0(9)
	.loc 3 425 0
	stw 10,4(9)
	.loc 3 426 0
	stw 0,8(9)
	addi 9,9,12
.LBE4208:
.LBE4207:
	.loc 18 83 0
	bdnz .L438
	lwz 0,872(1)
	addi 8,1,3724
	addi 9,1,896
	stw 0,3700(1)
	.loc 2 147 0
	li 0,33
	mtctr 0
.L439:
.LBB4209:
.LBB4210:
	.loc 18 73 0
	lwz 10,-20(9)
	lwz 11,-16(9)
.LBB4211:
.LBB4212:
	.loc 3 424 0
	lwz 6,-12(9)
	.loc 3 425 0
	lwz 7,-8(9)
	.loc 3 426 0
	lwz 0,-4(9)
	addi 9,9,20
.LBE4212:
.LBE4211:
	.loc 18 73 0
	stw 10,-20(8)
	stw 11,-16(8)
.LBB4214:
.LBB4213:
	.loc 3 424 0
	stw 6,-12(8)
	.loc 3 425 0
	stw 7,-8(8)
	.loc 3 426 0
	stw 0,-4(8)
	addi 8,8,20
.LBE4213:
.LBE4214:
.LBE4210:
.LBE4209:
	.loc 18 83 0
	bdnz .L439
	lwz 0,1536(1)
	addi 30,1,4476
	addi 28,1,1648
	.loc 2 147 0
	addi 26,1,6204
	.loc 18 83 0
	stw 0,4364(1)
.L440:
.LBB4215:
.LBB4216:
.LBB4217:
.LBB4218:
	.loc 3 425 0
	lwz 3,-104(28)
	.loc 3 426 0
	lwz 4,-100(28)
.LBE4218:
.LBE4217:
	.loc 18 81 0
	lwz 5,-96(28)
.LBB4223:
.LBB4219:
	.loc 3 424 0
	lwz 25,-108(28)
.LBE4219:
.LBE4223:
.LBB4224:
.LBB4225:
.LBB4226:
	lwz 6,-92(28)
	.loc 3 425 0
	lwz 7,-88(28)
	.loc 3 426 0
	lwz 8,-84(28)
	.loc 3 424 0
	lwz 10,-80(28)
	.loc 3 425 0
	lwz 11,-76(28)
	.loc 3 426 0
	lwz 9,-72(28)
.LBE4226:
.LBE4225:
.LBE4224:
	.loc 18 81 0
	lwz 0,-68(28)
.LBB4229:
.LBB4220:
	.loc 3 425 0
	stw 3,-104(30)
.LBE4220:
.LBE4229:
	.loc 18 81 0
	addi 3,30,-64
.LBB4230:
.LBB4221:
	.loc 3 426 0
	stw 4,-100(30)
.LBE4221:
.LBE4230:
	.loc 18 81 0
	addi 4,28,-64
	stw 5,-96(30)
	li 5,64
.LBB4231:
.LBB4222:
	.loc 3 424 0
	stw 25,-108(30)
.LBE4222:
.LBE4231:
	.loc 18 81 0
	addi 28,28,108
.LBB4232:
.LBB4228:
.LBB4227:
	.loc 3 424 0
	stw 6,-92(30)
	.loc 3 425 0
	stw 7,-88(30)
	.loc 3 426 0
	stw 8,-84(30)
.LVL811:
	.loc 3 424 0
	stw 10,-80(30)
	.loc 3 425 0
	stw 11,-76(30)
	.loc 3 426 0
	stw 9,-72(30)
.LBE4227:
.LBE4228:
.LBE4232:
	.loc 18 81 0
	stw 0,-68(30)
	addi 30,30,108
	bl memcpy
.LBE4216:
.LBE4215:
	.loc 18 83 0
	cmpw 7,30,26
	bne+ 7,.L440
.LVL812:
.LBB4233:
.LBB4234:
.LBB4235:
	.loc 3 424 0
	lwz 0,3280(1)
.LBE4235:
.LBE4234:
.LBE4233:
.LBE4206:
.LBE4205:
	.loc 2 159 0
	addi 3,1,3308
.LBB4272:
.LBB4266:
.LBB4248:
.LBB4249:
	.loc 3 426 0
	lfs 0,3276(1)
.LBE4249:
.LBE4248:
.LBE4266:
.LBE4272:
	.loc 2 159 0
	addi 4,1,104
.LBB4273:
.LBB4267:
.LBB4255:
.LBB4242:
.LBB4236:
	.loc 3 424 0
	stw 0,6108(1)
	.loc 3 425 0
	lwz 0,3284(1)
.LBE4236:
.LBE4242:
.LBE4255:
.LBE4267:
.LBE4273:
.LBB4274:
.LBB4275:
	.loc 3 420 0
	fneg 11,0
.LBE4275:
.LBE4274:
.LBB4284:
.LBB4268:
.LBB4256:
.LBB4250:
	.loc 3 424 0
	lfs 12,3268(1)
.LBE4250:
.LBE4256:
.LBB4257:
.LBB4243:
.LBB4237:
	.loc 3 425 0
	stw 0,6112(1)
	.loc 3 426 0
	lwz 0,3288(1)
.LBE4237:
.LBE4243:
.LBE4257:
.LBE4268:
.LBE4284:
.LBB4285:
.LBB4280:
	.loc 3 420 0
	fneg 9,12
.LBE4280:
.LBE4285:
.LBB4286:
.LBB4269:
.LBB4258:
.LBB4251:
	.loc 3 425 0
	lfs 13,3272(1)
.LBE4251:
.LBE4258:
.LBB4259:
.LBB4244:
.LBB4238:
	.loc 3 426 0
	stw 0,6116(1)
	.loc 3 424 0
	lwz 0,3292(1)
.LBE4238:
.LBE4244:
.LBE4259:
.LBE4269:
.LBE4286:
.LBB4287:
.LBB4281:
	.loc 3 420 0
	fneg 10,13
.LBE4281:
.LBE4287:
.LBB4288:
.LBB4270:
.LBB4260:
.LBB4252:
	.loc 3 426 0
	stfs 0,6104(1)
.LBE4252:
.LBE4260:
.LBB4261:
.LBB4245:
.LBB4239:
	.loc 3 424 0
	stw 0,6120(1)
	.loc 3 425 0
	lwz 0,3296(1)
.LBE4239:
.LBE4245:
.LBE4261:
.LBB4262:
.LBB4253:
	.loc 3 424 0
	stfs 12,6096(1)
.LBE4253:
.LBE4262:
.LBB4263:
.LBB4246:
.LBB4240:
	.loc 3 425 0
	stw 0,6124(1)
	.loc 3 426 0
	lwz 0,3300(1)
.LBE4240:
.LBE4246:
.LBE4263:
.LBB4264:
.LBB4254:
	.loc 3 425 0
	stfs 13,6100(1)
.LVL813:
.LBE4254:
.LBE4264:
.LBB4265:
.LBB4247:
.LBB4241:
	.loc 3 426 0
	stw 0,6128(1)
.LBE4241:
.LBE4247:
.LBE4265:
	.loc 18 83 0
	lbz 0,3304(1)
.LBE4270:
.LBE4288:
.LBB4289:
.LBB4282:
.LBB4276:
.LBB4277:
	.loc 3 396 0
	stfs 9,104(1)
.LBE4277:
.LBE4276:
.LBE4282:
.LBE4289:
.LBB4290:
.LBB4271:
	.loc 18 83 0
	stb 0,6132(1)
.LVL814:
.LBE4271:
.LBE4290:
.LBB4291:
.LBB4283:
.LBB4279:
.LBB4278:
	.loc 3 397 0
	stfs 10,108(1)
	.loc 3 398 0
	stfs 11,112(1)
.LBE4278:
.LBE4279:
.LBE4283:
.LBE4291:
	.loc 2 159 0
	bl _ZN12idTraceModel9TranslateERK6idVec3
.LVL815:
.LBB4292:
.LBB4293:
	.loc 3 431 0
	lfs 0,8(31)
.LBE4293:
.LBE4292:
	.loc 2 164 0
	cmpwi 7,17,0
.LBB4295:
.LBB4294:
	.loc 3 431 0
	lwz 9,4(31)
	fsubs 0,0,28
.LVL816:
.LBE4294:
.LBE4295:
.LBB4296:
.LBB4297:
	.loc 3 424 0
	lwz 0,0(31)
	.loc 3 425 0
	stw 9,120(1)
	.loc 3 424 0
	stw 0,116(1)
	.loc 3 426 0
	stfs 0,124(1)
.LVL817:
.LBE4297:
.LBE4296:
	.loc 2 164 0
	ble- 7,.L437
.LBB4298:
.LBB4299:
	.loc 3 452 0
	lis 9,.LC49@ha
.LBE4299:
.LBE4298:
	.loc 2 169 0
	lis 16,gameLocal+2311032@ha
	lis 18,mat3_identity@ha
.LBB4306:
.LBB4307:
	.loc 5 470 0
	lis 23,.LC68@ha
.LBE4307:
.LBE4306:
.LBB4323:
.LBB4324:
	.loc 11 241 0
	lis 19,.LC69@ha
.LBE4324:
.LBE4323:
.LBB4331:
.LBB4302:
	.loc 3 452 0
	lfs 31,.LC49@l(9)
.LBE4302:
.LBE4331:
	.loc 2 164 0
	li 26,0
	li 31,0
.LVL818:
	.loc 2 169 0
	la 16,gameLocal+2311032@l(16)
	la 18,mat3_identity@l(18)
.LBB4332:
.LBB4320:
	.loc 5 470 0
	la 23,.LC68@l(23)
.LBE4320:
.LBE4332:
.LBB4333:
.LBB4327:
	.loc 11 241 0
	la 19,.LC69@l(19)
.LBE4327:
.LBE4333:
.LBB4334:
.LBB4335:
.LBB4336:
.LBB4337:
	.loc 11 245 0
	lis 14,.LC35@ha
.LBE4337:
.LBE4336:
.LBE4335:
.LBE4334:
.LBB4351:
.LBB4352:
.LBB4353:
.LBB4354:
.LBB4355:
.LBB4356:
	.loc 5 415 0
	lis 20,.LC72@ha
.LBE4356:
.LBE4355:
.LBE4354:
.LBE4353:
.LBE4352:
.LBE4351:
.LBB4396:
.LBB4397:
	.loc 3 398 0
	lis 22,.LC0@ha
.LBE4397:
.LBE4396:
	.loc 2 197 0
	lis 15,.LC66@ha
.LVL819:
.L497:
	.loc 2 167 0
	li 3,140
	bl _Znwj
.LEHE41:
	addi 4,1,3308
	mr 28,3
.LEHB42:
	bl _ZN11idClipModelC1ERK12idTraceModel
.LEHE42:
.LVL820:
.LBB4401:
.LBB4402:
	.file 19 "d:/Data/Nintendo/DoomGX/src/game/physics/Clip.h"
	.loc 19 167 0 discriminator 1
	li 0,1
.LBE4402:
.LBE4401:
	.loc 2 169 0 discriminator 1
	mr 3,28
.LBB4404:
.LBB4403:
	.loc 19 167 0 discriminator 1
	stw 0,116(28)
.LBE4403:
.LBE4404:
	.loc 2 169 0 discriminator 1
	mr 4,16
	mr 5,29
	li 6,0
	addi 7,1,116
	mr 8,18
	li 9,-1
.LEHB43:
	bl _ZN11idClipModel4LinkER6idClipP8idEntityiRK6idVec3RK6idMat3i
.LVL821:
.LBB4405:
.LBB4321:
.LBB4308:
.LBB4309:
	.loc 5 357 0 discriminator 1
	li 9,20
	.loc 5 356 0 discriminator 1
	li 0,0
.LBE4309:
.LBE4308:
	.loc 5 470 0 discriminator 1
	mr 4,23
.LBB4313:
.LBB4310:
	.loc 5 357 0 discriminator 1
	stw 9,392(1)
.LBE4310:
.LBE4313:
	.loc 5 470 0 discriminator 1
	addi 3,1,416
.LBB4314:
.LBB4311:
	.loc 5 358 0 discriminator 1
	addi 9,1,396
.LBE4311:
.LBE4314:
	.loc 5 470 0 discriminator 1
	mr 5,31
.LBB4315:
.LBB4312:
	.loc 5 356 0 discriminator 1
	stw 0,384(1)
	.loc 5 359 0 discriminator 1
	stb 0,396(1)
	.loc 5 358 0 discriminator 1
	stw 9,388(1)
.LBE4312:
.LBE4315:
	.loc 5 470 0 discriminator 1
	crxor 6,6,6
	bl sprintf
.LBB4316:
.LBB4317:
	.loc 5 350 0 discriminator 1
	lwz 0,392(1)
.LBE4317:
.LBE4316:
	.loc 5 471 0 discriminator 1
	addi 4,3,1
	.loc 5 470 0 discriminator 1
	mr 30,3
.LVL822:
.LBB4319:
.LBB4318:
	.loc 5 350 0 discriminator 1
	cmpw 7,4,0
	ble+ 7,.L442
	.loc 5 351 0
	addi 3,1,384
.LVL823:
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE43:
.LVL824:
.L442:
.LBE4318:
.LBE4319:
	.loc 5 472 0
	lwz 3,388(1)
	addi 4,1,416
	bl strcpy
.LBE4321:
.LBE4405:
.LBB4406:
.LBB4407:
.LBB4408:
	.loc 2 2927 0
	lwz 25,0(27)
.LBB4409:
.LBB4410:
.LBB4411:
	.loc 5 356 0
	li 0,0
	.loc 5 358 0
	addi 3,1,364
.LBE4411:
.LBE4410:
	.loc 5 374 0
	addi 4,25,1
.LBB4414:
.LBB4412:
	.loc 5 357 0
	li 9,20
.LBE4412:
.LBE4414:
.LBB4415:
.LBB4416:
	.loc 5 350 0
	cmpwi 7,4,20
.LBE4416:
.LBE4415:
.LBE4409:
.LBE4408:
.LBE4407:
.LBE4406:
.LBB4453:
.LBB4322:
	.loc 5 473 0
	stw 30,384(1)
.LVL825:
.LBE4322:
.LBE4453:
.LBB4454:
.LBB4449:
.LBB4425:
.LBB4422:
.LBB4419:
.LBB4413:
	.loc 5 356 0
	stw 0,352(1)
	.loc 5 357 0
	stw 9,360(1)
	.loc 5 358 0
	stw 3,356(1)
	.loc 5 359 0
	stb 0,364(1)
.LBE4413:
.LBE4419:
.LBB4420:
.LBB4417:
	.loc 5 350 0
	bgt- 7,.L558
.LVL826:
.L443:
.LBE4417:
.LBE4420:
	.loc 5 375 0
	lwz 4,4(27)
	bl strcpy
.LBE4422:
.LBE4425:
.LBB4426:
	.loc 2 2927 0
	lwz 0,384(1)
.LBB4427:
.LBB4428:
.LBB4429:
	.loc 5 350 0
	lwz 9,360(1)
.LBE4429:
.LBE4428:
	.loc 5 761 0
	add 30,25,0
.LVL827:
.LBE4427:
.LBE4426:
.LBB4441:
.LBB4423:
	.loc 5 376 0
	stw 25,352(1)
.LVL828:
.LBE4423:
.LBE4441:
.LBB4442:
.LBB4438:
	.loc 5 762 0
	addi 4,30,1
.LVL829:
.LBB4432:
.LBB4430:
	.loc 5 350 0
	cmpw 7,4,9
	bgt- 7,.L444
.LVL830:
.L447:
.LBE4430:
.LBE4432:
	.loc 5 763 0
	cmpwi 7,0,0
	li 9,0
	ble- 7,.L446
.LVL831:
.L546:
.LBB4433:
.LBB4434:
	.loc 5 522 0
	lwz 11,388(1)
.LBE4434:
.LBE4433:
	.loc 5 764 0
	lwz 10,356(1)
.LBB4436:
.LBB4435:
	.loc 5 522 0
	lbzx 0,11,9
.LBE4435:
.LBE4436:
	.loc 5 764 0
	lwz 11,352(1)
	add 11,10,11
	stbx 0,11,9
	.loc 5 763 0
	addi 9,9,1
.LVL832:
	lwz 0,384(1)
	cmpw 7,9,0
	blt+ 7,.L546
.LVL833:
.L446:
	.loc 5 767 0
	lwz 9,356(1)
	li 0,0
	.loc 5 766 0
	stw 30,352(1)
.LBE4438:
.LBE4442:
.LBE4449:
.LBE4454:
	.loc 2 170 0
	li 3,704
.LBB4455:
.LBB4450:
.LBB4443:
.LBB4439:
	.loc 5 767 0
	stbx 0,9,30
.LEHB44:
.LBE4439:
.LBE4443:
.LBE4450:
.LBE4455:
	.loc 2 170 0
	bl _Znwj
.LEHE44:
	fmr 1,29
	addi 4,1,352
	mr 5,28
	mr 30,3
.LVL834:
.LEHB45:
	bl _ZN8idAFBodyC1ERK5idStrP11idClipModelf
.LEHE45:
.LVL835:
.LBB4456:
.LBB4457:
.LBB4458:
	.loc 5 501 0 discriminator 1
	addi 3,1,352
.LEHB46:
	bl _ZN5idStr8FreeDataEv
.LEHE46:
.LVL836:
.LBE4458:
.LBE4457:
.LBE4456:
.LBB4459:
.LBB4460:
.LBB4461:
	.loc 5 501 0 is_stmt 0
	addi 3,1,384
.LBE4461:
.LBE4460:
.LBE4459:
	.loc 2 171 0 is_stmt 1
	addi 28,29,636
.LVL837:
.LEHB47:
.LBB4464:
.LBB4463:
.LBB4462:
	.loc 5 501 0
	bl _ZN5idStr8FreeDataEv
.LBE4462:
.LBE4463:
.LBE4464:
	.loc 2 171 0
	mr 4,30
	mr 3,28
	bl _ZN12idPhysics_AF7AddBodyEP8idAFBody
	.loc 2 174 0
	mr 4,30
	mr 3,28
	bl _ZNK12idPhysics_AF9GetBodyIdEP8idAFBody
.LBB4465:
.LBB4328:
	.loc 11 241 0
	mr 4,19
.LBE4328:
.LBE4465:
	.loc 2 174 0
	stw 3,6136(1)
.LVL838:
.LBB4466:
.LBB4329:
	.loc 11 241 0
	addi 3,29,100
	bl _ZNK6idDict7FindKeyEPKc
.LVL839:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L454
.LVL840:
.LBB4325:
	.loc 2 2927 0
	lwz 9,4(3)
.LBE4325:
.LBE4329:
.LBE4466:
.LBB4467:
.LBB4348:
.LBB4342:
.LBB4338:
	.loc 5 356 0
	li 0,0
	stw 0,320(1)
	.loc 5 358 0
	addi 25,1,320
.LBE4338:
.LBE4342:
.LBE4348:
.LBE4467:
.LBB4468:
.LBB4330:
.LBB4326:
	.loc 2 2927 0
	lwz 24,4(9)
.LVL841:
.LBE4326:
.LBE4330:
.LBE4468:
.LBB4469:
.LBB4349:
.LBB4343:
.LBB4339:
	.loc 5 357 0
	li 9,20
	stw 9,328(1)
	.loc 5 358 0
	addi 9,1,332
.LBE4339:
.LBE4343:
	.loc 5 412 0
	cmpwi 7,24,0
.LBB4344:
.LBB4340:
	.loc 5 358 0
	stw 9,324(1)
	.loc 5 359 0
	stb 0,332(1)
.LBE4340:
.LBE4344:
	.loc 5 412 0
	beq- 7,.L455
	.loc 2 147 0
	mr 3,24
.LVL842:
	bl strlen
.LVL843:
	addi 4,3,1
	mr 9,3
.LVL844:
.LBB4345:
.LBB4346:
	.loc 5 350 0
	cmpwi 7,4,20
	ble+ 7,.L456
	.loc 5 351 0
	mr 3,25
.LVL845:
	li 5,1
	stw 9,6144(1)
	bl _ZN5idStr10ReAllocateEib
.LEHE47:
.LVL846:
	lwz 9,6144(1)
.LVL847:
.L456:
.LBE4346:
.LBE4345:
	.loc 5 415 0
	lwz 3,324(1)
	mr 4,24
	stw 9,6144(1)
	bl strcpy
	.loc 5 416 0
	lwz 9,6144(1)
	stw 9,320(1)
.LVL848:
.L455:
.LBE4349:
.LBE4469:
	.loc 2 174 0 discriminator 3
	lwz 4,6136(1)
	mr 3,29
	mr 5,25
.LEHB48:
	bl _ZN14idMultiModelAF13SetModelForIdEiRK5idStr
.LEHE48:
.LVL849:
.LBB4470:
.LBB4471:
.LBB4472:
	.loc 5 501 0
	mr 3,25
.LEHB49:
	bl _ZN5idStr8FreeDataEv
.LBE4472:
.LBE4471:
.LBE4470:
	.loc 2 177 0
	cmpwi 7,21,0
	beq- 7,.L458
	.loc 2 178 0
	cmpwi 7,26,0
	beq- 7,.L559
.LVL850:
.LBB4473:
.LBB4474:
.LBB4475:
.LBB4476:
	.loc 5 357 0
	li 9,20
	.loc 5 356 0
	li 0,0
.LBE4476:
.LBE4475:
	.loc 5 470 0
	mr 4,23
.LBB4480:
.LBB4477:
	.loc 5 357 0
	stw 9,232(1)
.LBE4477:
.LBE4480:
	.loc 5 470 0
	addi 3,1,416
.LBB4481:
.LBB4478:
	.loc 5 358 0
	addi 9,1,236
.LBE4478:
.LBE4481:
	.loc 5 470 0
	mr 5,31
.LBB4482:
.LBB4479:
	.loc 5 356 0
	stw 0,224(1)
	.loc 5 359 0
	stb 0,236(1)
	.loc 5 358 0
	stw 9,228(1)
.LBE4479:
.LBE4482:
	.loc 5 470 0
	crxor 6,6,6
	bl sprintf
.LBB4483:
.LBB4484:
	.loc 5 350 0
	lwz 0,232(1)
.LBE4484:
.LBE4483:
	.loc 5 471 0
	addi 4,3,1
	.loc 5 470 0
	mr 24,3
.LVL851:
.LBB4486:
.LBB4485:
	.loc 5 350 0
	cmpw 7,4,0
	ble+ 7,.L473
	.loc 5 351 0
	addi 3,1,224
.LVL852:
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE49:
.LVL853:
.L473:
.LBE4485:
.LBE4486:
	.loc 5 472 0
	lwz 3,228(1)
	addi 4,1,416
	bl strcpy
.LBE4474:
.LBE4473:
.LBB4488:
.LBB4489:
.LBB4490:
	.loc 2 2927 0
	lwz 25,0(27)
.LVL854:
.LBB4491:
.LBB4492:
.LBB4493:
	.loc 5 356 0
	li 0,0
	.loc 5 358 0
	addi 3,1,204
.LBE4493:
.LBE4492:
	.loc 5 374 0
	addi 4,25,1
.LBB4496:
.LBB4494:
	.loc 5 357 0
	li 9,20
.LBE4494:
.LBE4496:
.LBB4497:
.LBB4498:
	.loc 5 350 0
	cmpwi 7,4,20
.LBE4498:
.LBE4497:
.LBE4491:
.LBE4490:
.LBE4489:
.LBE4488:
.LBB4535:
.LBB4487:
	.loc 5 473 0
	stw 24,224(1)
.LVL855:
.LBE4487:
.LBE4535:
.LBB4536:
.LBB4531:
.LBB4507:
.LBB4504:
.LBB4501:
.LBB4495:
	.loc 5 356 0
	stw 0,192(1)
	.loc 5 357 0
	stw 9,200(1)
	.loc 5 358 0
	stw 3,196(1)
	.loc 5 359 0
	stb 0,204(1)
.LBE4495:
.LBE4501:
.LBB4502:
.LBB4499:
	.loc 5 350 0
	bgt- 7,.L560
.LVL856:
.L474:
.LBE4499:
.LBE4502:
	.loc 5 375 0
	lwz 4,4(27)
	bl strcpy
.LBE4504:
.LBE4507:
.LBB4508:
	.loc 2 2927 0
	lwz 0,224(1)
.LBB4509:
.LBB4510:
.LBB4511:
	.loc 5 350 0
	lwz 9,200(1)
.LBE4511:
.LBE4510:
	.loc 5 761 0
	add 24,25,0
.LVL857:
.LBE4509:
.LBE4508:
.LBB4523:
.LBB4505:
	.loc 5 376 0
	stw 25,192(1)
.LVL858:
.LBE4505:
.LBE4523:
.LBB4524:
.LBB4520:
	.loc 5 762 0
	addi 4,24,1
.LVL859:
.LBB4514:
.LBB4512:
	.loc 5 350 0
	cmpw 7,4,9
	bgt- 7,.L475
.LVL860:
.L478:
.LBE4512:
.LBE4514:
	.loc 5 763 0
	cmpwi 7,0,0
	li 9,0
	ble- 7,.L477
.LVL861:
.L544:
.LBB4515:
.LBB4516:
	.loc 5 522 0
	lwz 11,228(1)
.LBE4516:
.LBE4515:
	.loc 5 764 0
	lwz 10,196(1)
.LBB4518:
.LBB4517:
	.loc 5 522 0
	lbzx 0,11,9
.LBE4517:
.LBE4518:
	.loc 5 764 0
	lwz 11,192(1)
	add 11,10,11
	stbx 0,11,9
	.loc 5 763 0
	addi 9,9,1
.LVL862:
	lwz 0,224(1)
	cmpw 7,9,0
	blt+ 7,.L544
.LVL863:
.L477:
	.loc 5 767 0
	lwz 9,196(1)
	li 0,0
	.loc 5 766 0
	stw 24,192(1)
.LBE4520:
.LBE4524:
.LBE4531:
.LBE4536:
	.loc 2 185 0
	li 3,324
.LBB4537:
.LBB4532:
.LBB4525:
.LBB4521:
	.loc 5 767 0
	stbx 0,9,24
.LEHB50:
.LBE4521:
.LBE4525:
.LBE4532:
.LBE4537:
	.loc 2 185 0
	bl _Znwj
.LEHE50:
	addi 4,1,192
	mr 5,26
	mr 6,30
	mr 25,3
.LEHB51:
	bl _ZN29idAFConstraint_UniversalJointC1ERK5idStrP8idAFBodyS4_
.LEHE51:
.LVL864:
.LBB4538:
.LBB4539:
.LBB4540:
	.loc 5 501 0 discriminator 1
	addi 3,1,192
.LEHB52:
	bl _ZN5idStr8FreeDataEv
.LEHE52:
.LVL865:
.LBE4540:
.LBE4539:
.LBE4538:
.LBB4541:
.LBB4542:
.LBB4543:
	.loc 5 501 0 is_stmt 0
	addi 3,1,224
.LEHB53:
	bl _ZN5idStr8FreeDataEv
.LVL866:
.LBE4543:
.LBE4542:
.LBE4541:
.LBB4544:
.LBB4545:
	.loc 3 398 0 is_stmt 1
	lis 11,.LC70@ha
.LBE4545:
.LBE4544:
.LBB4548:
.LBB4549:
	lwz 9,.LC0@l(22)
.LBE4549:
.LBE4548:
	.loc 2 186 0
	mr 3,25
.LBB4551:
.LBB4546:
	.loc 3 398 0
	lwz 0,.LC70@l(11)
.LBE4546:
.LBE4551:
	.loc 2 186 0
	addi 4,1,68
	addi 5,1,56
.LBB4552:
.LBB4550:
	.loc 3 396 0
	stfs 31,68(1)
	.loc 3 397 0
	stfs 31,72(1)
	.loc 3 398 0
	stw 9,76(1)
.LVL867:
.LBE4550:
.LBE4552:
.LBB4553:
.LBB4547:
	.loc 3 396 0
	stfs 31,56(1)
	.loc 3 397 0
	stfs 31,60(1)
	.loc 3 398 0
	stw 0,64(1)
.LBE4547:
.LBE4553:
	.loc 2 186 0
	bl _ZN29idAFConstraint_UniversalJoint9SetShaftsERK6idVec3S2_
.LVL868:
.L472:
.LBB4554:
.LBB4555:
	.loc 3 452 0
	lfs 13,120(1)
.LBE4555:
.LBE4554:
	.loc 2 189 0
	mr 3,25
.LBB4560:
.LBB4558:
	.loc 3 452 0
	lfs 0,124(1)
.LBE4558:
.LBE4560:
	.loc 2 189 0
	addi 4,1,44
.LBB4561:
.LBB4559:
	.loc 3 452 0
	lfs 12,116(1)
	fadds 13,13,31
	fadds 0,28,0
.LVL869:
	fadds 12,12,31
.LBB4556:
.LBB4557:
	.loc 3 397 0
	stfs 13,48(1)
	.loc 3 398 0
	stfs 0,52(1)
	.loc 3 396 0
	stfs 12,44(1)
.LBE4557:
.LBE4556:
.LBE4559:
.LBE4561:
	.loc 2 189 0
	bl _ZN29idAFConstraint_UniversalJoint9SetAnchorERK6idVec3
.LVL870:
.LBB4562:
.LBB4563:
	.file 20 "d:/Data/Nintendo/DoomGX/src/game/physics/Physics_AF.h"
	.loc 20 250 0
	lis 9,.LC71@ha
.LBE4563:
.LBE4562:
	.loc 2 191 0
	mr 3,28
.LBB4566:
.LBB4564:
	.loc 20 250 0
	lwz 0,.LC71@l(9)
.LBE4564:
.LBE4566:
	.loc 2 191 0
	mr 4,25
.LBB4567:
.LBB4565:
	.loc 20 250 0
	stw 0,308(25)
.LBE4565:
.LBE4567:
	.loc 2 191 0
	bl _ZN12idPhysics_AF13AddConstraintEP14idAFConstraint
.LVL871:
.L485:
	.loc 2 202 0
	lfs 0,124(1)
	.loc 2 164 0
	addi 31,31,1
.LVL872:
	cmpw 7,31,17
	.loc 2 202 0
	fsubs 0,0,30
	stfs 0,124(1)
.LVL873:
	.loc 2 164 0
	beq- 7,.L437
.LVL874:
.L524:
	.loc 2 170 0
	mr 26,30
	b .L497
.LVL875:
.L458:
	.loc 2 194 0
	cmpwi 7,26,0
	beq- 7,.L485
.LVL876:
.LBB4568:
.LBB4569:
.LBB4570:
.LBB4571:
	.loc 5 357 0
	li 0,20
.LBE4571:
.LBE4570:
	.loc 5 470 0
	mr 4,23
.LBB4575:
.LBB4572:
	.loc 5 357 0
	stw 0,168(1)
.LBE4572:
.LBE4575:
	.loc 5 470 0
	addi 3,1,416
.LBB4576:
.LBB4573:
	.loc 5 358 0
	addi 0,1,172
.LBE4573:
.LBE4576:
	.loc 5 470 0
	mr 5,31
.LBB4577:
.LBB4574:
	.loc 5 358 0
	stw 0,164(1)
	.loc 5 356 0
	stw 21,160(1)
	.loc 5 359 0
	stb 21,172(1)
.LBE4574:
.LBE4577:
	.loc 5 470 0
	crxor 6,6,6
	bl sprintf
.LBB4578:
.LBB4579:
	.loc 5 350 0
	lwz 0,168(1)
.LBE4579:
.LBE4578:
	.loc 5 471 0
	addi 4,3,1
	.loc 5 470 0
	mr 24,3
.LVL877:
.LBB4581:
.LBB4580:
	.loc 5 350 0
	cmpw 7,4,0
	ble+ 7,.L486
	.loc 5 351 0
	addi 3,1,160
.LVL878:
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE53:
.LVL879:
.L486:
.LBE4580:
.LBE4581:
	.loc 5 472 0
	lwz 3,164(1)
	addi 4,1,416
.LBE4569:
.LBE4568:
.LBB4584:
.LBB4391:
.LBB4366:
	.loc 2 2927 0
	mr 25,24
.LVL880:
.LBE4366:
.LBE4391:
.LBE4584:
.LBB4585:
.LBB4582:
	.loc 5 472 0
	bl strcpy
.LBE4582:
.LBE4585:
.LBB4586:
.LBB4392:
.LBB4381:
.LBB4367:
	.loc 5 762 0
	addi 4,24,6
.LBE4367:
.LBE4381:
.LBB4382:
.LBB4363:
.LBB4360:
.LBB4357:
	.loc 5 415 0
	la 9,.LC72@l(20)
.LBE4357:
.LBE4360:
.LBE4363:
.LBE4382:
.LBB4383:
.LBB4378:
.LBB4368:
.LBB4369:
	.loc 5 350 0
	cmpwi 7,4,20
.LBE4369:
.LBE4368:
.LBE4378:
.LBE4383:
.LBB4384:
.LBB4364:
.LBB4361:
.LBB4358:
	.loc 5 415 0
	lhz 0,4(9)
	.loc 5 357 0
	li 10,20
	.loc 5 415 0
	lwz 11,.LC72@l(20)
	.loc 5 358 0
	addi 9,1,140
	.loc 5 415 0
	sth 0,144(1)
.LBE4358:
.LBE4361:
	.loc 5 416 0
	li 0,5
.LBE4364:
.LBE4384:
.LBE4392:
.LBE4586:
.LBB4587:
.LBB4583:
	.loc 5 473 0
	stw 24,160(1)
.LVL881:
.LBE4583:
.LBE4587:
.LBB4588:
.LBB4393:
.LBB4385:
.LBB4365:
.LBB4362:
.LBB4359:
	.loc 5 357 0
	stw 10,136(1)
	.loc 5 358 0
	stw 9,132(1)
.LVL882:
	.loc 5 415 0
	stw 11,140(1)
.LBE4359:
.LBE4362:
	.loc 5 416 0
	stw 0,128(1)
.LVL883:
.LBE4365:
.LBE4385:
.LBB4386:
.LBB4379:
.LBB4372:
.LBB4370:
	.loc 5 350 0
	bgt- 7,.L487
	mr 0,24
.LVL884:
.L490:
.LBE4370:
.LBE4372:
	.loc 5 763 0
	cmpwi 7,0,0
	li 9,0
	ble- 7,.L489
.LVL885:
.L545:
.LBB4373:
.LBB4374:
	.loc 5 522 0
	lwz 11,164(1)
.LBE4374:
.LBE4373:
	.loc 5 764 0
	lwz 10,132(1)
.LBB4376:
.LBB4375:
	.loc 5 522 0
	lbzx 0,11,9
.LBE4375:
.LBE4376:
	.loc 5 764 0
	lwz 11,128(1)
	add 11,10,11
	stbx 0,11,9
	.loc 5 763 0
	addi 9,9,1
.LVL886:
	lwz 0,160(1)
	cmpw 7,9,0
	blt+ 7,.L545
.LVL887:
.L489:
	.loc 5 767 0
	lwz 9,132(1)
	.loc 5 761 0
	addi 25,25,5
	.loc 5 767 0
	li 0,0
	.loc 5 766 0
	stw 25,128(1)
	.loc 5 767 0
	stbx 0,9,25
.LBE4379:
.LBE4386:
.LBE4393:
.LBE4588:
	.loc 2 195 0
	li 3,276
.LEHB54:
	bl _Znwj
.LEHE54:
	addi 4,1,128
	mr 5,26
	mr 6,30
	mr 25,3
.LEHB55:
	bl _ZN33idAFConstraint_BallAndSocketJointC1ERK5idStrP8idAFBodyS4_
.LEHE55:
.LVL888:
.LBB4589:
.LBB4590:
.LBB4591:
	.loc 5 501 0 discriminator 1
	addi 3,1,128
.LEHB56:
	bl _ZN5idStr8FreeDataEv
.LEHE56:
.LVL889:
.LBE4591:
.LBE4590:
.LBE4589:
.LBB4592:
.LBB4593:
.LBB4594:
	.loc 5 501 0 is_stmt 0
	addi 3,1,160
.LBE4594:
.LBE4593:
.LBE4592:
	.loc 2 164 0 is_stmt 1
	addi 31,31,1
.LVL890:
.LEHB57:
.LBB4597:
.LBB4596:
.LBB4595:
	.loc 5 501 0
	bl _ZN5idStr8FreeDataEv
.LVL891:
.LBE4595:
.LBE4596:
.LBE4597:
.LBB4598:
.LBB4303:
	.loc 3 452 0
	lfs 13,120(1)
	lfs 0,124(1)
.LBE4303:
.LBE4598:
	.loc 2 196 0
	mr 3,25
.LBB4599:
.LBB4304:
	.loc 3 452 0
	lfs 12,116(1)
	fadds 13,13,31
	fadds 0,28,0
.LVL892:
.LBE4304:
.LBE4599:
	.loc 2 196 0
	addi 4,1,32
.LBB4600:
.LBB4305:
	.loc 3 452 0
	fadds 12,12,31
.LBB4300:
.LBB4301:
	.loc 3 397 0
	stfs 13,36(1)
	.loc 3 398 0
	stfs 0,40(1)
	.loc 3 396 0
	stfs 12,32(1)
.LBE4301:
.LBE4300:
.LBE4305:
.LBE4600:
	.loc 2 196 0
	bl _ZN33idAFConstraint_BallAndSocketJoint9SetAnchorERK6idVec3
.LVL893:
.LBB4601:
.LBB4398:
	.loc 3 398 0
	lwz 0,.LC0@l(22)
.LBE4398:
.LBE4601:
	.loc 2 197 0
	mr 3,25
	lfs 1,.LC66@l(15)
	addi 4,1,20
	addi 5,1,8
.LBB4602:
.LBB4399:
	.loc 3 398 0
	stw 0,28(1)
.LVL894:
.LBE4399:
.LBE4602:
.LBB4603:
.LBB4604:
	stw 0,16(1)
.LBE4604:
.LBE4603:
.LBB4606:
.LBB4400:
	.loc 3 396 0
	stfs 31,20(1)
	.loc 3 397 0
	stfs 31,24(1)
.LBE4400:
.LBE4606:
.LBB4607:
.LBB4605:
	.loc 3 396 0
	stfs 31,8(1)
	.loc 3 397 0
	stfs 31,12(1)
.LBE4605:
.LBE4607:
	.loc 2 197 0
	bl _ZN33idAFConstraint_BallAndSocketJoint12SetConeLimitERK6idVec3fS2_
.LVL895:
	.loc 2 198 0
	mr 3,28
	mr 4,25
	bl _ZN12idPhysics_AF13AddConstraintEP14idAFConstraint
.LEHE57:
.LVL896:
	.loc 2 202 0
	lfs 0,124(1)
	.loc 2 164 0
	cmpw 7,31,17
	.loc 2 202 0
	fsubs 0,0,30
	stfs 0,124(1)
.LVL897:
	.loc 2 164 0
	bne+ 7,.L524
.LVL898:
.L437:
.LBE4726:
	.loc 2 206 0
	lwz 0,6260(1)
	lwz 14,6152(1)
	mtlr 0
	lwz 15,6156(1)
	lwz 16,6160(1)
	lwz 17,6164(1)
.LVL899:
	lwz 18,6168(1)
	lwz 19,6172(1)
	lwz 20,6176(1)
	lwz 21,6180(1)
	lwz 22,6184(1)
	lwz 23,6188(1)
	lwz 24,6192(1)
	lwz 25,6196(1)
	lwz 26,6200(1)
	lwz 27,6204(1)
.LVL900:
	lwz 28,6208(1)
	lwz 29,6212(1)
.LVL901:
	lwz 30,6216(1)
	lwz 31,6220(1)
	lfd 28,6224(1)
.LVL902:
	lfd 29,6232(1)
.LVL903:
	lfd 30,6240(1)
.LVL904:
	lfd 31,6248(1)
	addi 1,1,6256
	.cfi_remember_state
.LCFI230:
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
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL905:
.L444:
.LCFI231:
	.cfi_restore_state
.LBB4727:
.LBB4608:
.LBB4451:
.LBB4444:
.LBB4440:
.LBB4437:
.LBB4431:
	.loc 5 351 0
	addi 3,1,352
	li 5,1
.LEHB58:
	bl _ZN5idStr10ReAllocateEib
.LEHE58:
.LVL906:
	lwz 0,384(1)
	b .L447
.LVL907:
.L558:
.LBE4431:
.LBE4437:
.LBE4440:
.LBE4444:
.LBB4445:
.LBB4424:
.LBB4421:
.LBB4418:
	addi 3,1,352
	li 5,1
.LEHB59:
	bl _ZN5idStr10ReAllocateEib
.LEHE59:
.LVL908:
	lwz 3,356(1)
	b .L443
.LVL909:
.L475:
.LBE4418:
.LBE4421:
.LBE4424:
.LBE4445:
.LBE4451:
.LBE4608:
.LBB4609:
.LBB4533:
.LBB4526:
.LBB4522:
.LBB4519:
.LBB4513:
	addi 3,1,192
	li 5,1
.LEHB60:
	bl _ZN5idStr10ReAllocateEib
.LEHE60:
.LVL910:
	lwz 0,224(1)
	b .L478
.LVL911:
.L560:
.LBE4513:
.LBE4519:
.LBE4522:
.LBE4526:
.LBB4527:
.LBB4506:
.LBB4503:
.LBB4500:
	addi 3,1,192
	li 5,1
.LEHB61:
	bl _ZN5idStr10ReAllocateEib
.LEHE61:
.LVL912:
	lwz 3,196(1)
	b .L474
.LVL913:
.L487:
.LBE4500:
.LBE4503:
.LBE4506:
.LBE4527:
.LBE4533:
.LBE4609:
.LBB4610:
.LBB4394:
.LBB4387:
.LBB4380:
.LBB4377:
.LBB4371:
	addi 3,1,128
	li 5,1
.LEHB62:
	bl _ZN5idStr10ReAllocateEib
.LEHE62:
.LVL914:
	lwz 0,160(1)
	b .L490
.LVL915:
.L454:
.LBE4371:
.LBE4377:
.LBE4380:
.LBE4387:
.LBE4394:
.LBE4610:
.LBB4611:
.LBB4350:
.LBB4347:
.LBB4341:
	.loc 5 357 0
	li 0,20
	.loc 5 356 0
	stw 3,320(1)
	.loc 5 357 0
	stw 0,328(1)
	.loc 5 358 0
	addi 0,1,332
	stw 0,324(1)
	.loc 5 359 0
	li 9,0
	stb 3,332(1)
.LVL916:
	.loc 11 245 0
	la 24,.LC35@l(14)
	addi 25,1,320
.LVL917:
	b .L456
.LVL918:
.L559:
.LBE4341:
.LBE4347:
.LBE4350:
.LBE4611:
.LBB4612:
.LBB4613:
.LBB4614:
.LBB4615:
	.loc 5 357 0
	li 0,20
.LBE4615:
.LBE4614:
	.loc 5 470 0
	mr 4,23
.LBB4619:
.LBB4616:
	.loc 5 357 0
	stw 0,296(1)
.LBE4616:
.LBE4619:
	.loc 5 470 0
	addi 3,1,416
.LBB4620:
.LBB4617:
	.loc 5 358 0
	addi 0,1,300
.LBE4617:
.LBE4620:
	.loc 5 470 0
	mr 5,31
.LBB4621:
.LBB4618:
	.loc 5 358 0
	stw 0,292(1)
	.loc 5 356 0
	stw 26,288(1)
	.loc 5 359 0
	stb 26,300(1)
.LBE4618:
.LBE4621:
	.loc 5 470 0
	crxor 6,6,6
	bl sprintf
.LBB4622:
.LBB4623:
	.loc 5 350 0
	lwz 0,296(1)
.LBE4623:
.LBE4622:
	.loc 5 471 0
	addi 4,3,1
	.loc 5 470 0
	mr 25,3
.LVL919:
.LBB4625:
.LBB4624:
	.loc 5 350 0
	cmpw 7,4,0
	ble+ 7,.L460
	.loc 5 351 0
	addi 3,1,288
.LVL920:
	li 5,1
.LEHB63:
	bl _ZN5idStr10ReAllocateEib
.LEHE63:
.LVL921:
.L460:
.LBE4624:
.LBE4625:
	.loc 5 472 0
	lwz 3,292(1)
	addi 4,1,416
	bl strcpy
.LBE4613:
.LBE4612:
.LBB4627:
.LBB4628:
.LBB4629:
	.loc 2 2927 0
	lwz 26,0(27)
.LBB4630:
.LBB4631:
.LBB4632:
	.loc 5 356 0
	li 0,0
	.loc 5 358 0
	addi 3,1,268
.LBE4632:
.LBE4631:
	.loc 5 374 0
	addi 4,26,1
.LBB4635:
.LBB4633:
	.loc 5 357 0
	li 9,20
.LBE4633:
.LBE4635:
.LBB4636:
.LBB4637:
	.loc 5 350 0
	cmpwi 7,4,20
.LBE4637:
.LBE4636:
.LBE4630:
.LBE4629:
.LBE4628:
.LBE4627:
.LBB4674:
.LBB4626:
	.loc 5 473 0
	stw 25,288(1)
.LVL922:
.LBE4626:
.LBE4674:
.LBB4675:
.LBB4670:
.LBB4646:
.LBB4643:
.LBB4640:
.LBB4634:
	.loc 5 356 0
	stw 0,256(1)
	.loc 5 357 0
	stw 9,264(1)
	.loc 5 358 0
	stw 3,260(1)
	.loc 5 359 0
	stb 0,268(1)
.LBE4634:
.LBE4640:
.LBB4641:
.LBB4638:
	.loc 5 350 0
	bgt- 7,.L561
.LVL923:
.L461:
.LBE4638:
.LBE4641:
	.loc 5 375 0
	lwz 4,4(27)
	bl strcpy
.LBE4643:
.LBE4646:
.LBB4647:
	.loc 2 2927 0
	lwz 0,288(1)
.LBB4648:
.LBB4649:
.LBB4650:
	.loc 5 350 0
	lwz 9,264(1)
.LBE4650:
.LBE4649:
	.loc 5 761 0
	add 25,26,0
.LVL924:
.LBE4648:
.LBE4647:
.LBB4662:
.LBB4644:
	.loc 5 376 0
	stw 26,256(1)
.LVL925:
.LBE4644:
.LBE4662:
.LBB4663:
.LBB4659:
	.loc 5 762 0
	addi 4,25,1
.LVL926:
.LBB4653:
.LBB4651:
	.loc 5 350 0
	cmpw 7,4,9
	bgt- 7,.L462
.LVL927:
.L465:
.LBE4651:
.LBE4653:
	.loc 5 763 0
	cmpwi 7,0,0
	li 9,0
	ble- 7,.L464
.LVL928:
.L543:
.LBB4654:
.LBB4655:
	.loc 5 522 0
	lwz 11,292(1)
.LBE4655:
.LBE4654:
	.loc 5 764 0
	lwz 10,260(1)
.LBB4657:
.LBB4656:
	.loc 5 522 0
	lbzx 0,11,9
.LBE4656:
.LBE4657:
	.loc 5 764 0
	lwz 11,256(1)
	add 11,10,11
	stbx 0,11,9
	.loc 5 763 0
	addi 9,9,1
.LVL929:
	lwz 0,288(1)
	cmpw 7,9,0
	blt+ 7,.L543
.LVL930:
.L464:
	.loc 5 767 0
	lwz 9,260(1)
	li 0,0
	.loc 5 766 0
	stw 25,256(1)
.LBE4659:
.LBE4663:
.LBE4670:
.LBE4675:
	.loc 2 179 0
	li 3,324
.LBB4676:
.LBB4671:
.LBB4664:
.LBB4660:
	.loc 5 767 0
	stbx 0,9,25
.LEHB64:
.LBE4660:
.LBE4664:
.LBE4671:
.LBE4676:
	.loc 2 179 0
	bl _Znwj
.LEHE64:
	addi 4,1,256
	mr 5,30
	li 6,0
	mr 25,3
.LVL931:
.LEHB65:
	bl _ZN29idAFConstraint_UniversalJointC1ERK5idStrP8idAFBodyS4_
.LEHE65:
.LVL932:
.LBB4677:
.LBB4678:
.LBB4679:
	.loc 5 501 0 discriminator 1
	addi 3,1,256
.LEHB66:
	bl _ZN5idStr8FreeDataEv
.LEHE66:
.LVL933:
.LBE4679:
.LBE4678:
.LBE4677:
.LBB4680:
.LBB4681:
.LBB4682:
	.loc 5 501 0 is_stmt 0
	addi 3,1,288
.LEHB67:
	bl _ZN5idStr8FreeDataEv
.LVL934:
.LBE4682:
.LBE4681:
.LBE4680:
.LBB4683:
.LBB4684:
	.loc 3 398 0 is_stmt 1
	lis 9,.LC70@ha
	lwz 9,.LC70@l(9)
.LBE4684:
.LBE4683:
	.loc 2 180 0
	mr 3,25
.LBB4686:
.LBB4687:
	.loc 3 398 0
	lwz 0,.LC0@l(22)
.LBE4687:
.LBE4686:
	.loc 2 180 0
	addi 4,1,92
	addi 5,1,80
.LBB4689:
.LBB4685:
	.loc 3 396 0
	stfs 31,92(1)
	.loc 3 397 0
	stfs 31,96(1)
	.loc 3 398 0
	stw 9,100(1)
.LVL935:
.LBE4685:
.LBE4689:
.LBB4690:
.LBB4688:
	.loc 3 396 0
	stfs 31,80(1)
	.loc 3 397 0
	stfs 31,84(1)
	.loc 3 398 0
	stw 0,88(1)
.LBE4688:
.LBE4690:
	.loc 2 180 0
	bl _ZN29idAFConstraint_UniversalJoint9SetShaftsERK6idVec3S2_
.LEHE67:
.LVL936:
	b .L472
.LVL937:
.L462:
.LBB4691:
.LBB4672:
.LBB4665:
.LBB4661:
.LBB4658:
.LBB4652:
	.loc 5 351 0
	addi 3,1,256
	li 5,1
.LEHB68:
	bl _ZN5idStr10ReAllocateEib
.LEHE68:
.LVL938:
	lwz 0,288(1)
	b .L465
.LVL939:
.L561:
.LBE4652:
.LBE4658:
.LBE4661:
.LBE4665:
.LBB4666:
.LBB4645:
.LBB4642:
.LBB4639:
	addi 3,1,256
	li 5,1
.LEHB69:
	bl _ZN5idStr10ReAllocateEib
.LEHE69:
.LVL940:
	lwz 3,260(1)
	b .L461
.LVL941:
.L525:
	mr 31,3
.LBE4639:
.LBE4642:
.LBE4645:
.LBE4666:
.LBE4672:
.LBE4691:
	.loc 2 167 0
	mr 3,28
	bl _ZdlPv
	mr 3,31
.LEHB70:
	bl _Unwind_Resume
.LEHE70:
.LVL942:
.L527:
	mr 31,3
.LVL943:
.L500:
.LBB4692:
.LBB4693:
.LBB4694:
	.loc 5 501 0
	addi 3,1,352
	bl _ZN5idStr8FreeDataEv
.LVL944:
.L451:
.LBE4694:
.LBE4693:
.LBE4692:
.LBB4695:
.LBB4696:
.LBB4697:
	addi 3,1,384
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB71:
	bl _Unwind_Resume
.LEHE71:
.LVL945:
.L528:
	mr 31,3
.LVL946:
.LBE4697:
.LBE4696:
.LBE4695:
	.loc 2 170 0
	mr 3,30
	bl _ZdlPv
	b .L500
.LVL947:
.L526:
	mr 31,3
.LVL948:
	b .L451
.LVL949:
.L529:
	mr 31,3
.LVL950:
.LBB4698:
.LBB4699:
.LBB4700:
	.loc 5 501 0
	mr 3,25
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB72:
	bl _Unwind_Resume
.LEHE72:
.LVL951:
.L534:
	mr 31,3
.LVL952:
.L510:
.LBE4700:
.LBE4699:
.LBE4698:
.LBB4701:
.LBB4702:
.LBB4703:
	addi 3,1,192
	bl _ZN5idStr8FreeDataEv
.LVL953:
.L482:
.LBE4703:
.LBE4702:
.LBE4701:
.LBB4704:
.LBB4705:
.LBB4706:
	addi 3,1,224
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB73:
	bl _Unwind_Resume
.LEHE73:
.LVL954:
.L535:
	mr 31,3
.LVL955:
.LBE4706:
.LBE4705:
.LBE4704:
	.loc 2 185 0
	mr 3,25
	bl _ZdlPv
	b .L510
.LVL956:
.L533:
	mr 31,3
.LVL957:
	b .L482
.LVL958:
.L537:
	mr 31,3
.LVL959:
.L514:
.LBB4707:
.LBB4708:
.LBB4709:
	.loc 5 501 0
	addi 3,1,128
	bl _ZN5idStr8FreeDataEv
.LVL960:
.L494:
.LBE4709:
.LBE4708:
.LBE4707:
.LBB4710:
.LBB4711:
.LBB4712:
	addi 3,1,160
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB74:
	bl _Unwind_Resume
.LEHE74:
.LVL961:
.L538:
	mr 31,3
.LVL962:
.LBE4712:
.LBE4711:
.LBE4710:
	.loc 2 195 0
	mr 3,25
	bl _ZdlPv
	b .L514
.LVL963:
.L536:
	mr 31,3
.LVL964:
	b .L494
.LVL965:
.L540:
	mr 31,3
.LVL966:
.LBB4713:
.LBB4452:
.LBB4446:
.LBB4447:
.LBB4448:
	.loc 5 501 0
	addi 3,1,352
	bl _ZN5idStr8FreeDataEv
	b .L451
.LVL967:
.L542:
	mr 31,3
.LVL968:
.LBE4448:
.LBE4447:
.LBE4446:
.LBE4452:
.LBE4713:
.LBB4714:
.LBB4534:
.LBB4528:
.LBB4529:
.LBB4530:
	addi 3,1,192
	bl _ZN5idStr8FreeDataEv
	b .L482
.LVL969:
.L539:
	mr 31,3
.LVL970:
.LBE4530:
.LBE4529:
.LBE4528:
.LBE4534:
.LBE4714:
.LBB4715:
.LBB4395:
.LBB4388:
.LBB4389:
.LBB4390:
	addi 3,1,128
	bl _ZN5idStr8FreeDataEv
	b .L494
.LVL971:
.L531:
	mr 31,3
.LVL972:
.L506:
.LBE4390:
.LBE4389:
.LBE4388:
.LBE4395:
.LBE4715:
.LBB4716:
.LBB4717:
.LBB4718:
	addi 3,1,256
	bl _ZN5idStr8FreeDataEv
.LVL973:
.L469:
.LBE4718:
.LBE4717:
.LBE4716:
.LBB4719:
.LBB4720:
.LBB4721:
	addi 3,1,288
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB75:
	bl _Unwind_Resume
.LEHE75:
.LVL974:
.L532:
	mr 31,3
.LVL975:
.LBE4721:
.LBE4720:
.LBE4719:
	.loc 2 179 0
	mr 3,25
	bl _ZdlPv
	b .L506
.LVL976:
.L530:
	mr 31,3
.LVL977:
	b .L469
.LVL978:
.L541:
	mr 31,3
.LVL979:
.LBB4722:
.LBB4673:
.LBB4667:
.LBB4668:
.LBB4669:
	.loc 5 501 0
	addi 3,1,256
	bl _ZN5idStr8FreeDataEv
	b .L469
.LBE4669:
.LBE4668:
.LBE4667:
.LBE4673:
.LBE4722:
.LBE4727:
	.cfi_endproc
.LFE2828:
	.section	.gcc_except_table
.LLSDA2828:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2828-.LLSDACSB2828
.LLSDACSB2828:
	.uleb128 .LEHB41-.LFB2828
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB2828
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L525-.LFB2828
	.uleb128 0
	.uleb128 .LEHB43-.LFB2828
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB2828
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L527-.LFB2828
	.uleb128 0
	.uleb128 .LEHB45-.LFB2828
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L528-.LFB2828
	.uleb128 0
	.uleb128 .LEHB46-.LFB2828
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L526-.LFB2828
	.uleb128 0
	.uleb128 .LEHB47-.LFB2828
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB2828
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L529-.LFB2828
	.uleb128 0
	.uleb128 .LEHB49-.LFB2828
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB2828
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L534-.LFB2828
	.uleb128 0
	.uleb128 .LEHB51-.LFB2828
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L535-.LFB2828
	.uleb128 0
	.uleb128 .LEHB52-.LFB2828
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L533-.LFB2828
	.uleb128 0
	.uleb128 .LEHB53-.LFB2828
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB2828
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L537-.LFB2828
	.uleb128 0
	.uleb128 .LEHB55-.LFB2828
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L538-.LFB2828
	.uleb128 0
	.uleb128 .LEHB56-.LFB2828
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L536-.LFB2828
	.uleb128 0
	.uleb128 .LEHB57-.LFB2828
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB2828
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L540-.LFB2828
	.uleb128 0
	.uleb128 .LEHB59-.LFB2828
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L526-.LFB2828
	.uleb128 0
	.uleb128 .LEHB60-.LFB2828
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L542-.LFB2828
	.uleb128 0
	.uleb128 .LEHB61-.LFB2828
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L533-.LFB2828
	.uleb128 0
	.uleb128 .LEHB62-.LFB2828
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L539-.LFB2828
	.uleb128 0
	.uleb128 .LEHB63-.LFB2828
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB2828
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L531-.LFB2828
	.uleb128 0
	.uleb128 .LEHB65-.LFB2828
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L532-.LFB2828
	.uleb128 0
	.uleb128 .LEHB66-.LFB2828
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L530-.LFB2828
	.uleb128 0
	.uleb128 .LEHB67-.LFB2828
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB2828
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L541-.LFB2828
	.uleb128 0
	.uleb128 .LEHB69-.LFB2828
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L530-.LFB2828
	.uleb128 0
	.uleb128 .LEHB70-.LFB2828
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LFB2828
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB2828
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB73-.LFB2828
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB2828
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB2828
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE2828:
	.section	".text"
	.size	_ZN7idChain10BuildChainERK5idStrRK6idVec3fffib, .-_ZN7idChain10BuildChainERK5idStrRK6idVec3fffib
	.align 2
	.globl _ZN7idChain5SpawnEv
	.type	_ZN7idChain5SpawnEv, @function
_ZN7idChain5SpawnEv:
.LFB2832:
	.loc 2 213 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2832
.LVL980:
	stwu 1,-208(1)
.LCFI232:
	.cfi_def_cfa_offset 208
	mflr 0
.LBB4757:
	.loc 2 219 0
	lis 4,.LC73@ha
	lis 5,.LC7@ha
.LBE4757:
	.loc 2 213 0
	stw 30,192(1)
.LBB4816:
	.loc 2 219 0
	addi 30,3,100
	.cfi_offset 30, -16
	.cfi_register 65, 0
.LBE4816:
	.loc 2 213 0
	stw 31,196(1)
.LBB4817:
	.loc 2 219 0
	la 4,.LC73@l(4)
	la 5,.LC7@l(5)
	addi 6,1,8
.LBE4817:
	.loc 2 213 0
	mr 31,3
	.cfi_offset 31, -12
.LBB4818:
	.loc 2 219 0
	mr 3,30
.LVL981:
.LBE4818:
	.loc 2 213 0
	stw 0,212(1)
	stw 28,184(1)
	stw 29,188(1)
.LBB4819:
	.loc 2 221 0
	lis 29,.LC5@ha
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 65, 4
.LBE4819:
	.loc 2 213 0
	stfd 31,200(1)
.LEHB76:
.LBB4820:
	.loc 2 219 0
	.cfi_offset 63, -8
	bl _ZNK6idDict7GetBoolEPKcS1_Rb
	.loc 2 220 0
	lis 4,.LC74@ha
	lis 5,.LC75@ha
	la 4,.LC74@l(4)
	la 5,.LC75@l(5)
	addi 6,1,24
	mr 3,30
	bl _ZNK6idDict6GetIntEPKcS1_Ri
.LVL982:
	.loc 2 221 0
	lwz 0,24(1)
	lfs 0,.LC5@l(29)
	lis 9,.LC76@ha
	xoris 0,0,0x8000
.LBB4758:
.LBB4759:
	.loc 5 492 0
	lis 5,.LC77@ha
.LBE4759:
.LBE4758:
	.loc 2 221 0
	stw 0,172(1)
	lis 0,0x4330
	stw 0,168(1)
.LBB4779:
.LBB4772:
	.loc 5 492 0
	addi 3,1,104
.LBB4760:
.LBB4761:
	.loc 5 356 0
	li 0,0
.LBE4761:
.LBE4760:
	.loc 5 492 0
	li 4,64
.LBE4772:
.LBE4779:
	.loc 2 221 0
	lfd 1,168(1)
.LBB4780:
.LBB4773:
	.loc 5 492 0
	la 5,.LC77@l(5)
.LBB4765:
.LBB4762:
	.loc 5 356 0
	stw 0,72(1)
.LBE4762:
.LBE4765:
.LBE4773:
.LBE4780:
	.loc 2 221 0
	fsub 1,1,0
	lfs 0,.LC76@l(9)
.LBB4781:
.LBB4774:
.LBB4766:
.LBB4763:
	.loc 5 357 0
	li 9,20
	.loc 5 359 0
	stb 0,84(1)
	.loc 5 357 0
	stw 9,80(1)
	.loc 5 358 0
	addi 9,1,84
.LBE4763:
.LBE4766:
.LBE4774:
.LBE4781:
	.loc 2 221 0
	frsp 1,1
.LBB4782:
.LBB4775:
.LBB4767:
.LBB4764:
	.loc 5 358 0
	stw 9,76(1)
.LBE4764:
.LBE4767:
.LBE4775:
.LBE4782:
	.loc 2 221 0
	fmuls 1,1,0
.LVL983:
.LBB4783:
.LBB4776:
	.loc 5 492 0
	creqv 6,6,6
	bl _ZN5idStr8snPrintfEPciPKcz
.LVL984:
	.loc 5 493 0
	mr. 28,3
	ble- 0,.L567
	addi 0,1,8
	add 9,0,28
	lbz 0,95(9)
	cmpwi 7,0,48
	beq- 7,.L582
.LVL985:
.L564:
	.loc 5 494 0
	cmpwi 7,0,46
	beq- 7,.L583
.L567:
.LBB4768:
.LBB4769:
	.loc 5 350 0
	lwz 0,80(1)
.LBE4769:
.LBE4768:
	.loc 5 495 0
	addi 4,28,1
.LVL986:
.LBB4771:
.LBB4770:
	.loc 5 350 0
	cmpw 7,4,0
	ble+ 7,.L569
	.loc 5 351 0
	addi 3,1,72
	li 5,1
	bl _ZN5idStr10ReAllocateEib
.LEHE76:
.LVL987:
.L569:
.LBE4770:
.LBE4771:
	.loc 5 496 0
	lwz 3,76(1)
	addi 4,1,104
	bl strcpy
.LBE4776:
.LBE4783:
	.loc 2 221 0
	lis 4,.LC78@ha
	lwz 5,76(1)
	mr 3,30
	la 4,.LC78@l(4)
	addi 6,1,20
.LBB4784:
.LBB4777:
	.loc 5 497 0
	stw 28,72(1)
.LVL988:
.LEHB77:
.LBE4777:
.LBE4784:
	.loc 2 221 0
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
.LEHE77:
.LVL989:
.LBB4785:
.LBB4786:
.LBB4787:
	.loc 5 501 0
	addi 3,1,72
.LEHB78:
	bl _ZN5idStr8FreeDataEv
.LBE4787:
.LBE4786:
.LBE4785:
	.loc 2 222 0
	lis 4,.LC79@ha
	lis 5,.LC80@ha
	la 4,.LC79@l(4)
	la 5,.LC80@l(5)
	addi 6,1,16
	mr 3,30
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 2 223 0
	lis 5,.LC82@ha
	lis 4,.LC81@ha
	addi 6,1,12
	la 5,.LC82@l(5)
	la 4,.LC81@l(4)
	mr 3,30
	.loc 2 228 0
	addi 30,31,636
	.loc 2 223 0
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 2 224 0
	lwz 0,24(1)
	lfs 0,.LC5@l(29)
	.loc 2 225 0
	mr 3,31
	.loc 2 224 0
	xoris 0,0,0x8000
.LVL990:
	lfs 31,20(1)
	stw 0,180(1)
	lis 0,0x4330
	stw 0,176(1)
	lfd 13,176(1)
	fsub 0,13,0
	frsp 0,0
	fdivs 31,31,0
.LVL991:
	.loc 2 225 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LVL992:
	.loc 2 228 0
	mr 4,31
.LBB4788:
.LBB4789:
	.loc 3 424 0
	lwz 11,0(3)
	.loc 3 425 0
	lwz 9,4(3)
	.loc 3 426 0
	lwz 0,8(3)
.LBE4789:
.LBE4788:
	.loc 2 228 0
	mr 3,30
.LVL993:
.LBB4791:
.LBB4790:
	.loc 3 424 0
	stw 11,28(1)
	.loc 3 425 0
	stw 9,32(1)
	.loc 3 426 0
	stw 0,36(1)
.LBE4790:
.LBE4791:
	.loc 2 228 0
	bl _ZN14idPhysics_Base7SetSelfEP8idEntity
	.loc 2 229 0
	lis 3,gameLocal@ha
	la 3,gameLocal@l(3)
	bl _ZNK11idGameLocal10GetGravityEv
	mr 4,3
	mr 3,30
	bl _ZN14idPhysics_Base10SetGravityERK6idVec3
	.loc 2 230 0
	li 5,-1
	mr 3,30
	li 4,257
	bl _ZN14idPhysics_Base11SetClipMaskEii
	.loc 2 231 0
	mr 3,31
	mr 4,30
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
.LEHE78:
.LVL994:
.LBB4792:
.LBB4793:
.LBB4794:
.LBB4795:
	.loc 5 415 0
	lis 9,.LC83@ha
	la 10,.LC83@l(9)
	lwz 11,.LC83@l(9)
	lbz 0,4(10)
	.loc 5 358 0
	addi 9,1,52
.LVL995:
.LBE4795:
.LBE4794:
.LBE4793:
.LBE4792:
	.loc 2 233 0
	lbz 7,8(1)
	fmr 1,31
.LBB4803:
.LBB4800:
.LBB4798:
.LBB4796:
	.loc 5 415 0
	stb 0,4(9)
	.loc 5 357 0
	li 10,20
.LVL996:
.LBE4796:
.LBE4798:
.LBE4800:
.LBE4803:
	.loc 2 233 0
	lfs 2,16(1)
.LBB4804:
.LBB4801:
	.loc 5 416 0
	li 0,4
.LVL997:
.LBE4801:
.LBE4804:
	.loc 2 233 0
	lfs 3,12(1)
	mr 3,31
	lwz 6,24(1)
	addi 4,1,40
	addi 5,1,28
	xori 7,7,1
.LBB4805:
.LBB4802:
.LBB4799:
.LBB4797:
	.loc 5 357 0
	stw 10,48(1)
	.loc 5 358 0
	stw 9,44(1)
.LVL998:
	.loc 5 415 0
	stw 11,52(1)
.LBE4797:
.LBE4799:
	.loc 5 416 0
	stw 0,40(1)
.LEHB79:
.LBE4802:
.LBE4805:
	.loc 2 233 0
	bl _ZN7idChain10BuildChainERK5idStrRK6idVec3fffib
.LEHE79:
.LVL999:
.LBB4806:
.LBB4807:
.LBB4808:
	.loc 5 501 0
	addi 3,1,40
.LEHB80:
	bl _ZN5idStr8FreeDataEv
.LEHE80:
.LBE4808:
.LBE4807:
.LBE4806:
.LBE4820:
	.loc 2 234 0
	lwz 0,212(1)
	lwz 28,184(1)
.LVL1000:
	mtlr 0
	lwz 29,188(1)
	lwz 30,192(1)
	lwz 31,196(1)
.LVL1001:
	lfd 31,200(1)
.LVL1002:
	addi 1,1,208
	.cfi_remember_state
.LCFI233:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1003:
.L583:
.LCFI234:
	.cfi_restore_state
.LBB4821:
.LBB4809:
.LBB4778:
	.loc 2 213 0
	addi 11,28,-1
	addi 0,1,104
	.loc 5 494 0
	mtctr 28
	.loc 2 213 0
	add 9,0,11
	.loc 5 494 0
	li 10,0
.L576:
	mr 28,11
.LVL1004:
	stb 10,0(9)
	bdz .L567
	lbzu 0,-1(9)
	cmpwi 7,0,46
	bne+ 7,.L567
	addi 11,11,-1
.LVL1005:
	b .L576
.LVL1006:
.L582:
	.loc 2 213 0
	addi 11,28,-1
	addi 0,1,104
	.loc 5 493 0
	mtctr 28
	.loc 2 213 0
	add 9,0,11
	.loc 5 493 0
	li 10,0
.LVL1007:
.L565:
	mr 28,11
.LVL1008:
	stb 10,0(9)
	bdz .L567
	lbzu 0,-1(9)
	cmpwi 7,0,48
	beq- 7,.L584
	addi 0,1,8
	add 9,0,28
	lbz 0,95(9)
	b .L564
.L584:
	addi 11,11,-1
.LVL1009:
	b .L565
.LVL1010:
.L578:
	mr 31,3
.LVL1011:
.LBE4778:
.LBE4809:
.LBB4810:
.LBB4811:
.LBB4812:
	.loc 5 501 0
	addi 3,1,40
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB81:
	bl _Unwind_Resume
.LEHE81:
.LVL1012:
.L577:
	mr 31,3
.LVL1013:
.LBE4812:
.LBE4811:
.LBE4810:
.LBB4813:
.LBB4814:
.LBB4815:
	addi 3,1,72
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB82:
	bl _Unwind_Resume
.LEHE82:
.LBE4815:
.LBE4814:
.LBE4813:
.LBE4821:
	.cfi_endproc
.LFE2832:
	.section	.gcc_except_table
.LLSDA2832:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2832-.LLSDACSB2832
.LLSDACSB2832:
	.uleb128 .LEHB76-.LFB2832
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB2832
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L577-.LFB2832
	.uleb128 0
	.uleb128 .LEHB78-.LFB2832
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB2832
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L578-.LFB2832
	.uleb128 0
	.uleb128 .LEHB80-.LFB2832
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB2832
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB2832
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
.LLSDACSE2832:
	.section	".text"
	.size	_ZN7idChain5SpawnEv, .-_ZN7idChain5SpawnEv
	.align 2
	.globl _ZN14idAFAttachmentC2Ev
	.type	_ZN14idAFAttachmentC2Ev, @function
_ZN14idAFAttachmentC2Ev:
.LFB2836:
	.loc 2 252 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2836
.LVL1014:
	mflr 0
	stwu 1,-16(1)
.LCFI235:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB83:
.LBB4822:
	.loc 2 252 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN16idAnimatedEntityC2Ev
.LEHE83:
.LVL1015:
	lis 9,_ZTV14idAFAttachment+8@ha
	.loc 2 254 0
	lis 3,.LC84@ha
	.loc 2 252 0
	la 0,_ZTV14idAFAttachment+8@l(9)
	.loc 2 254 0
	la 3,.LC84@l(3)
	.loc 2 252 0
	stw 0,0(31)
	.loc 2 254 0
	li 4,1640
.LEHB84:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE84:
	.loc 2 257 0
	li 0,0
	stw 0,1624(31)
	.loc 2 258 0
	stw 0,1628(31)
	.loc 2 259 0
	stw 0,1632(31)
	.loc 2 260 0
	li 0,-1
	stw 0,1636(31)
.LBE4822:
	.loc 2 261 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1016:
	addi 1,1,16
	.cfi_remember_state
.LCFI236:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1017:
.L587:
.LCFI237:
	.cfi_restore_state
	mr 30,3
.LBB4823:
	.loc 2 252 0
	mr 3,31
	bl _ZN16idAnimatedEntityD2Ev
	mr 3,30
.LEHB85:
	bl _Unwind_Resume
.LEHE85:
.LBE4823:
	.cfi_endproc
.LFE2836:
	.section	.gcc_except_table
.LLSDA2836:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2836-.LLSDACSB2836
.LLSDACSB2836:
	.uleb128 .LEHB83-.LFB2836
	.uleb128 .LEHE83-.LEHB83
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB84-.LFB2836
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L587-.LFB2836
	.uleb128 0
	.uleb128 .LEHB85-.LFB2836
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
.LLSDACSE2836:
	.section	".text"
	.size	_ZN14idAFAttachmentC2Ev, .-_ZN14idAFAttachmentC2Ev
	.align 2
	.globl _ZN14idAFAttachment14CreateInstanceEv
	.type	_ZN14idAFAttachment14CreateInstanceEv, @function
_ZN14idAFAttachment14CreateInstanceEv:
.LFB2833:
	.loc 2 244 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2833
	mflr 0
	stwu 1,-24(1)
.LCFI238:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB4824:
	li 3,1640
.LBE4824:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB86:
.LBB4825:
	.loc 2 244 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE86:
	mr 31,3
.LEHB87:
	bl _ZN14idAFAttachmentC1Ev
.LEHE87:
.LVL1018:
	.loc 2 244 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB88:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE88:
.LVL1019:
.L593:
.LBE4825:
	.loc 2 244 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI239:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L594:
.L590:
.LCFI240:
	.cfi_restore_state
.LBB4826:
	cmpwi 7,4,1
	beq- 7,.L592
.LEHB89:
	bl _Unwind_Resume
.LEHE89:
.L595:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L590
.L592:
.LBE4826:
.LBB4827:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L593
.LBE4827:
	.cfi_endproc
.LFE2833:
	.section	.gcc_except_table
	.align 2
.LLSDA2833:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2833-.LLSDATTD2833
.LLSDATTD2833:
	.byte	0x1
	.uleb128 .LLSDACSE2833-.LLSDACSB2833
.LLSDACSB2833:
	.uleb128 .LEHB86-.LFB2833
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L594-.LFB2833
	.uleb128 0x1
	.uleb128 .LEHB87-.LFB2833
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L595-.LFB2833
	.uleb128 0x3
	.uleb128 .LEHB88-.LFB2833
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L594-.LFB2833
	.uleb128 0x1
	.uleb128 .LEHB89-.LFB2833
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
.LLSDACSE2833:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2833:
	.section	".text"
	.size	_ZN14idAFAttachment14CreateInstanceEv, .-_ZN14idAFAttachment14CreateInstanceEv
	.align 2
	.globl _ZN14idAFAttachment7SetBodyEP8idEntityPKc13jointHandle_t
	.type	_ZN14idAFAttachment7SetBodyEP8idEntityPKc13jointHandle_t, @function
_ZN14idAFAttachment7SetBodyEP8idEntityPKc13jointHandle_t:
.LFB2843:
	.loc 2 290 0 is_stmt 1
	.cfi_startproc
.LVL1020:
	mflr 0
	stwu 1,-16(1)
.LCFI241:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
.LBB4837:
.LBB4838:
.LBB4839:
.LBB4840:
.LBB4841:
	.loc 11 241 0
	lis 30,.LC85@ha
	.cfi_offset 30, -8
.LBE4841:
.LBE4840:
.LBE4839:
.LBE4838:
.LBE4837:
	.loc 2 290 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB4861:
.LBB4855:
.LBB4851:
.LBB4847:
.LBB4843:
	.loc 11 241 0
	la 30,.LC85@l(30)
.LBE4843:
.LBE4847:
.LBE4851:
.LBE4855:
	.loc 2 293 0
	stw 4,1624(3)
	.loc 2 295 0
	mr 4,5
.LVL1021:
	.loc 2 294 0
	stw 6,1636(3)
	.loc 2 295 0
	lwz 9,0(3)
	lwz 0,44(9)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL1022:
	.loc 2 296 0
	lwz 0,192(31)
	li 9,1
	.loc 2 298 0
	lwz 3,1624(31)
	.loc 2 296 0
	rlwimi 0,9,29,2,2
.LBB4856:
.LBB4852:
.LBB4848:
.LBB4844:
	.loc 11 241 0
	mr 4,30
.LBE4844:
.LBE4848:
.LBE4852:
.LBE4856:
	.loc 2 296 0
	stw 0,192(31)
.LVL1023:
.LBB4857:
.LBB4853:
.LBB4849:
.LBB4845:
	.loc 11 241 0
	addi 3,3,100
	bl _ZNK6idDict7FindKeyEPKc
.LVL1024:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L598
.LVL1025:
.LBB4842:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1026:
.L597:
.LBE4842:
.LBE4845:
.LBE4849:
	.loc 11 257 0
	bl atoi
.LVL1027:
.LBE4853:
.LBE4857:
.LBB4858:
.LBB4859:
	.loc 11 197 0
	cntlzw 4,3
	lis 3,.LC86@ha
	srwi 4,4,5
	la 3,.LC86@l(3)
	xori 4,4,1
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,30
	mr 5,3
	addi 3,31,100
	bl _ZN6idDict3SetEPKcS1_
.LBE4859:
.LBE4858:
.LBE4861:
	.loc 2 300 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1028:
	addi 1,1,16
	.cfi_remember_state
.LCFI242:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1029:
.L598:
.LCFI243:
	.cfi_restore_state
.LBB4862:
.LBB4860:
.LBB4854:
.LBB4850:
.LBB4846:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL1030:
	la 3,.LC7@l(3)
	b .L597
.LBE4846:
.LBE4850:
.LBE4854:
.LBE4860:
.LBE4862:
	.cfi_endproc
.LFE2843:
	.size	_ZN14idAFAttachment7SetBodyEP8idEntityPKc13jointHandle_t, .-_ZN14idAFAttachment7SetBodyEP8idEntityPKc13jointHandle_t
	.align 2
	.globl _ZN14idAFAttachment9ClearBodyEv
	.type	_ZN14idAFAttachment9ClearBodyEv, @function
_ZN14idAFAttachment9ClearBodyEv:
.LFB2844:
	.loc 2 307 0
	.cfi_startproc
.LVL1031:
	mflr 0
	stwu 1,-8(1)
.LCFI244:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 310 0
	lwz 9,0(3)
	.loc 2 307 0
	stw 0,12(1)
	.loc 2 308 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,1624(3)
	.loc 2 309 0
	li 0,-1
	stw 0,1636(3)
	.loc 2 310 0
	lwz 0,76(9)
	mtctr 0
	bctrl
.LVL1032:
	.loc 2 311 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI245:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2844:
	.size	_ZN14idAFAttachment9ClearBodyEv, .-_ZN14idAFAttachment9ClearBodyEv
	.align 2
	.globl _ZNK14idAFAttachment7GetBodyEv
	.type	_ZNK14idAFAttachment7GetBodyEv, @function
_ZNK14idAFAttachment7GetBodyEv:
.LFB2845:
	.loc 2 318 0
	.cfi_startproc
.LVL1033:
	.loc 2 320 0
	lwz 3,1624(3)
.LVL1034:
	blr
	.cfi_endproc
.LFE2845:
	.size	_ZNK14idAFAttachment7GetBodyEv, .-_ZNK14idAFAttachment7GetBodyEv
	.align 2
	.globl _ZN14idAFAttachment12PlayIdleAnimEi
	.type	_ZN14idAFAttachment12PlayIdleAnimEi, @function
_ZN14idAFAttachment12PlayIdleAnimEi:
.LFB2855:
	.loc 2 443 0
	.cfi_startproc
.LVL1035:
	mflr 0
	stwu 1,-24(1)
.LCFI246:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 28,8(1)
	stw 30,16(1)
	.loc 2 444 0
	lwz 28,1632(3)
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	cmpwi 7,28,0
	bne- 7,.L603
.LVL1036:
.L601:
	.loc 2 447 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1037:
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1038:
	addi 1,1,24
	.cfi_remember_state
.LCFI247:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1039:
.L603:
.LCFI248:
	.cfi_restore_state
	.loc 2 444 0 discriminator 1
	addi 30,3,636
	li 4,0
.LVL1040:
	mr 3,30
.LVL1041:
	bl _ZN10idAnimator11CurrentAnimEi
	bl _ZNK11idAnimBlend7AnimNumEv
	cmpw 7,28,3
	beq- 7,.L601
	.loc 2 445 0 discriminator 4
	lis 9,gameLocal+2426836@ha
	lwz 5,1632(29)
	lwz 6,gameLocal+2426836@l(9)
	mr 3,30
	mr 7,31
	li 4,0
	bl _ZN10idAnimator9CycleAnimEiiii
	.loc 2 447 0 discriminator 4
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1042:
	lwz 30,16(1)
.LVL1043:
	lwz 31,20(1)
.LVL1044:
	addi 1,1,24
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI249:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2855:
	.size	_ZN14idAFAttachment12PlayIdleAnimEi, .-_ZN14idAFAttachment12PlayIdleAnimEi
	.align 2
	.globl _ZN14idAFAttachment14SetCombatModelEv
	.type	_ZN14idAFAttachment14SetCombatModelEv, @function
_ZN14idAFAttachment14SetCombatModelEv:
.LFB2857:
	.loc 2 466 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2857
.LVL1045:
	mflr 0
	stwu 1,-16(1)
.LCFI250:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
	.loc 2 467 0
	lwz 3,1628(3)
.LVL1046:
	cmpwi 7,3,0
	beq- 7,.L605
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LEHB90:
	.loc 2 468 0
	bl _ZN11idClipModel6UnlinkEv
	.loc 2 469 0
	lwz 3,1628(31)
	lwz 4,412(31)
	bl _ZN11idClipModel9LoadModelEi
	lwz 30,1628(31)
	.loc 2 473 0
	lwz 0,1624(31)
.LVL1047:
.LBB4863:
.LBB4864:
	.loc 19 191 0
	stw 0,12(30)
.LBE4864:
.LBE4863:
	.loc 2 474 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1048:
	addi 1,1,16
	.cfi_remember_state
.LCFI251:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1049:
.L605:
.LCFI252:
	.cfi_restore_state
	.loc 2 471 0
	li 3,140
	bl _Znwj
.LEHE90:
	lwz 4,412(31)
	mr 30,3
.LEHB91:
	bl _ZN11idClipModelC1Ei
.LEHE91:
	.loc 2 473 0 discriminator 1
	lwz 0,1624(31)
.LVL1050:
	.loc 2 471 0 discriminator 1
	stw 30,1628(31)
.LBB4866:
.LBB4865:
	.loc 19 191 0 discriminator 1
	stw 0,12(30)
.LBE4865:
.LBE4866:
	.loc 2 474 0 discriminator 1
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1051:
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI253:
	.cfi_def_cfa_offset 0
	blr
.LVL1052:
.L608:
.LCFI254:
	.cfi_restore_state
	mr 31,3
.LVL1053:
	.loc 2 471 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
.LEHB92:
	bl _Unwind_Resume
.LEHE92:
	.cfi_endproc
.LFE2857:
	.section	.gcc_except_table
.LLSDA2857:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2857-.LLSDACSB2857
.LLSDACSB2857:
	.uleb128 .LEHB90-.LFB2857
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB2857
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L608-.LFB2857
	.uleb128 0
	.uleb128 .LEHB92-.LFB2857
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
.LLSDACSE2857:
	.section	".text"
	.size	_ZN14idAFAttachment14SetCombatModelEv, .-_ZN14idAFAttachment14SetCombatModelEv
	.align 2
	.globl _ZN14idAFAttachment7RestoreEP13idRestoreGame
	.type	_ZN14idAFAttachment7RestoreEP13idRestoreGame, @function
_ZN14idAFAttachment7RestoreEP13idRestoreGame:
.LFB2847:
	.loc 2 342 0
	.cfi_startproc
.LVL1054:
	stwu 1,-16(1)
.LCFI255:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,8(1)
	.loc 2 343 0
	mr 3,4
.LVL1055:
	.loc 2 342 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 2 343 0
	addi 4,31,1624
.LVL1056:
	.loc 2 342 0
	stw 0,20(1)
	.loc 2 343 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame10ReadObjectERP7idClass
.LVL1057:
	.loc 2 344 0
	mr 3,30
	addi 4,31,1632
	bl _ZN13idRestoreGame7ReadIntERi
	.loc 2 345 0
	addi 4,31,1636
	mr 3,30
	bl _ZN13idRestoreGame9ReadJointER13jointHandle_t
	.loc 2 347 0
	mr 3,31
	bl _ZN14idAFAttachment14SetCombatModelEv
	.loc 2 348 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,232(9)
	mtctr 0
	bctrl
	.loc 2 349 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL1058:
	mtlr 0
	lwz 31,12(1)
.LVL1059:
	addi 1,1,16
.LCFI256:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2847:
	.size	_ZN14idAFAttachment7RestoreEP13idRestoreGame, .-_ZN14idAFAttachment7RestoreEP13idRestoreGame
	.align 2
	.globl _ZNK14idAFAttachment14GetCombatModelEv
	.type	_ZNK14idAFAttachment14GetCombatModelEv, @function
_ZNK14idAFAttachment14GetCombatModelEv:
.LFB2858:
	.loc 2 481 0
	.cfi_startproc
.LVL1060:
	.loc 2 483 0
	lwz 3,1628(3)
.LVL1061:
	blr
	.cfi_endproc
.LFE2858:
	.size	_ZNK14idAFAttachment14GetCombatModelEv, .-_ZNK14idAFAttachment14GetCombatModelEv
	.align 2
	.globl _ZN15idAFEntity_BaseC2Ev
	.type	_ZN15idAFEntity_BaseC2Ev, @function
_ZN15idAFEntity_BaseC2Ev:
.LFB2864:
	.loc 2 534 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2864
.LVL1062:
	mflr 0
	stwu 1,-24(1)
.LCFI257:
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
.LEHB93:
.LBB4867:
	.loc 2 534 0
	.cfi_offset 29, -12
	bl _ZN16idAnimatedEntityC2Ev
.LEHE93:
.LVL1063:
	lis 9,_ZTV15idAFEntity_Base+8@ha
	addi 30,31,1624
	la 0,_ZTV15idAFEntity_Base+8@l(9)
	mr 3,30
	stw 0,0(31)
.LEHB94:
	bl _ZN4idAFC1Ev
.LEHE94:
	.loc 2 536 0 discriminator 1
	lis 3,.LC87@ha
	li 4,2248
	la 3,.LC87@l(3)
.LEHB95:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE95:
	.loc 2 539 0
	li 9,0
.LBB4868:
.LBB4869:
	.loc 3 416 0
	li 0,0
	lis 8,mat3_identity@ha
.LBE4869:
.LBE4868:
	.loc 2 539 0
	stw 9,2188(31)
	.loc 2 540 0
	stw 9,2192(31)
.LBB4871:
.LBB4872:
.LBB4873:
	.loc 6 333 0
	li 10,0
.LBE4873:
.LBE4872:
.LBE4871:
	.loc 2 541 0
	stw 9,2244(31)
.LVL1064:
	la 8,mat3_identity@l(8)
.LBB4882:
.LBB4870:
	.loc 3 416 0
	stw 0,2204(31)
	stw 0,2200(31)
	stw 0,2196(31)
.LVL1065:
.LBE4870:
.LBE4882:
.LBB4883:
.LBB4881:
.LBB4880:
	.loc 6 333 0
	addi 31,31,2208
.LVL1066:
.L612:
.LBB4874:
.LBB4875:
	.loc 3 424 0
	mr 11,8
	mr 9,31
	lwzux 0,11,10
.LBE4875:
.LBE4874:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB4878:
.LBB4876:
	.loc 3 424 0
	stwux 0,9,10
.LBE4876:
.LBE4878:
	.loc 6 333 0
	addi 10,10,12
.LBB4879:
.LBB4877:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE4877:
.LBE4879:
	.loc 6 333 0
	bne+ 7,.L612
.LBE4880:
.LBE4881:
.LBE4883:
.LBE4867:
	.loc 2 544 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL1067:
	lwz 31,20(1)
.LVL1068:
	addi 1,1,24
	.cfi_remember_state
.LCFI258:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1069:
.L615:
.LCFI259:
	.cfi_restore_state
	mr 30,3
.L614:
.LBB4884:
	.loc 2 534 0
	mr 3,31
	bl _ZN16idAnimatedEntityD2Ev
	mr 3,30
.LEHB96:
	bl _Unwind_Resume
.LEHE96:
.L616:
	mr 29,3
	mr 3,30
	bl _ZN4idAFD1Ev
	mr 30,29
	b .L614
.LBE4884:
	.cfi_endproc
.LFE2864:
	.section	.gcc_except_table
.LLSDA2864:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2864-.LLSDACSB2864
.LLSDACSB2864:
	.uleb128 .LEHB93-.LFB2864
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB94-.LFB2864
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L615-.LFB2864
	.uleb128 0
	.uleb128 .LEHB95-.LFB2864
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L616-.LFB2864
	.uleb128 0
	.uleb128 .LEHB96-.LFB2864
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE2864:
	.section	".text"
	.size	_ZN15idAFEntity_BaseC2Ev, .-_ZN15idAFEntity_BaseC2Ev
	.align 2
	.globl _ZN15idAFEntity_Base14CreateInstanceEv
	.type	_ZN15idAFEntity_Base14CreateInstanceEv, @function
_ZN15idAFEntity_Base14CreateInstanceEv:
.LFB2861:
	.loc 2 522 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2861
	mflr 0
	stwu 1,-24(1)
.LCFI260:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB4885:
	li 3,2248
.LBE4885:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB97:
.LBB4886:
	.loc 2 522 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE97:
	mr 31,3
.LEHB98:
	bl _ZN15idAFEntity_BaseC1Ev
.LEHE98:
.LVL1070:
	.loc 2 522 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB99:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE99:
.LVL1071:
.L624:
.LBE4886:
	.loc 2 522 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI261:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L625:
.L621:
.LCFI262:
	.cfi_restore_state
.LBB4887:
	cmpwi 7,4,1
	beq- 7,.L623
.LEHB100:
	bl _Unwind_Resume
.LEHE100:
.L626:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L621
.L623:
.LBE4887:
.LBB4888:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L624
.LBE4888:
	.cfi_endproc
.LFE2861:
	.section	.gcc_except_table
	.align 2
.LLSDA2861:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2861-.LLSDATTD2861
.LLSDATTD2861:
	.byte	0x1
	.uleb128 .LLSDACSE2861-.LLSDACSB2861
.LLSDACSB2861:
	.uleb128 .LEHB97-.LFB2861
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L625-.LFB2861
	.uleb128 0x1
	.uleb128 .LEHB98-.LFB2861
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L626-.LFB2861
	.uleb128 0x3
	.uleb128 .LEHB99-.LFB2861
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L625-.LFB2861
	.uleb128 0x1
	.uleb128 .LEHB100-.LFB2861
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
.LLSDACSE2861:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2861:
	.section	".text"
	.size	_ZN15idAFEntity_Base14CreateInstanceEv, .-_ZN15idAFEntity_Base14CreateInstanceEv
	.align 2
	.globl _ZNK15idAFEntity_Base18BodyForClipModelIdEi
	.type	_ZNK15idAFEntity_Base18BodyForClipModelIdEi, @function
_ZNK15idAFEntity_Base18BodyForClipModelIdEi:
.LFB2875:
	.loc 2 649 0 is_stmt 1
	.cfi_startproc
.LVL1072:
	mflr 0
	stwu 1,-8(1)
.LCFI263:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 650 0
	addi 3,3,1624
.LVL1073:
	.loc 2 649 0
	stw 0,12(1)
	.loc 2 650 0
	.cfi_offset 65, 4
	bl _ZNK4idAF18BodyForClipModelIdEi
.LVL1074:
	.loc 2 651 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI264:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2875:
	.size	_ZNK15idAFEntity_Base18BodyForClipModelIdEi, .-_ZNK15idAFEntity_Base18BodyForClipModelIdEi
	.align 2
	.globl _ZNK15idAFEntity_Base9SaveStateER6idDict
	.type	_ZNK15idAFEntity_Base9SaveStateER6idDict, @function
_ZNK15idAFEntity_Base9SaveStateER6idDict:
.LFB2876:
	.loc 2 658 0
	.cfi_startproc
.LVL1075:
	stwu 1,-24(1)
.LCFI265:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 28,8(1)
.LBB4889:
	.loc 2 665 0
	lis 28,.LC88@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
.LBE4889:
	.loc 2 658 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
.LBB4898:
	.loc 2 665 0
	la 28,.LC88@l(28)
	.loc 2 662 0
	addi 3,3,1624
.LVL1076:
	.loc 2 665 0
	addi 30,30,100
.LVL1077:
.LBE4898:
	.loc 2 658 0
	stw 0,28(1)
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	stw 31,20(1)
.LBB4899:
	.loc 2 662 0
	.cfi_offset 31, -4
	bl _ZNK4idAF9SaveStateER6idDict
.LVL1078:
	.loc 2 665 0
	mr 3,30
	mr 4,28
	li 5,0
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1079:
	.loc 2 666 0
	mr. 31,3
	beq- 0,.L629
.L634:
.LVL1080:
.LBB4890:
	.loc 2 2927 0
	lwz 11,0(31)
.LBE4890:
	.loc 2 667 0
	mr 3,29
.LVL1081:
.LBB4891:
	.loc 2 2927 0
	lwz 9,4(31)
.LBE4891:
	.loc 2 667 0
	lwz 4,4(11)
	lwz 5,4(9)
	bl _ZN6idDict3SetEPKcS1_
.LVL1082:
	.loc 2 668 0
	mr 5,31
	mr 3,30
	mr 4,28
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1083:
	.loc 2 666 0
	mr. 31,3
	bne+ 0,.L634
.L629:
	.loc 2 672 0
	lis 4,.LC89@ha
	mr 3,30
.LVL1084:
	la 4,.LC89@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1085:
	.loc 2 673 0
	cmpwi 0,3,0
	beq- 0,.L631
.LVL1086:
.LBB4892:
	.loc 2 2927 0
	lwz 11,0(3)
.LBE4892:
.LBB4893:
	lwz 9,4(3)
.LBE4893:
	.loc 2 674 0
	mr 3,29
.LVL1087:
	lwz 4,4(11)
	lwz 5,4(9)
	bl _ZN6idDict3SetEPKcS1_
.LVL1088:
.L631:
	.loc 2 676 0
	lis 4,.LC90@ha
	mr 3,30
	la 4,.LC90@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1089:
	.loc 2 677 0
	cmpwi 0,3,0
	beq- 0,.L632
.LVL1090:
.LBB4894:
	.loc 2 2927 0
	lwz 11,0(3)
.LBE4894:
.LBB4895:
	lwz 9,4(3)
.LBE4895:
	.loc 2 678 0
	mr 3,29
.LVL1091:
	lwz 4,4(11)
	lwz 5,4(9)
	bl _ZN6idDict3SetEPKcS1_
.LVL1092:
.L632:
	.loc 2 680 0
	lis 4,.LC91@ha
	mr 3,30
	la 4,.LC91@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1093:
	.loc 2 681 0
	cmpwi 0,3,0
	beq- 0,.L628
.LVL1094:
.LBB4896:
	.loc 2 2927 0
	lwz 11,0(3)
.LBE4896:
.LBB4897:
	lwz 9,4(3)
.LBE4897:
	.loc 2 682 0
	mr 3,29
.LVL1095:
	lwz 4,4(11)
	lwz 5,4(9)
	bl _ZN6idDict3SetEPKcS1_
.LVL1096:
.L628:
.LBE4899:
	.loc 2 684 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL1097:
	lwz 30,16(1)
.LVL1098:
	lwz 31,20(1)
	addi 1,1,24
.LCFI266:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2876:
	.size	_ZNK15idAFEntity_Base9SaveStateER6idDict, .-_ZNK15idAFEntity_Base9SaveStateER6idDict
	.align 2
	.globl _ZN15idAFEntity_Base9LoadStateERK6idDict
	.type	_ZN15idAFEntity_Base9LoadStateERK6idDict, @function
_ZN15idAFEntity_Base9LoadStateERK6idDict:
.LFB2877:
	.loc 2 691 0
	.cfi_startproc
.LVL1099:
	mflr 0
	stwu 1,-8(1)
.LCFI267:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 692 0
	addi 3,3,1624
.LVL1100:
	.loc 2 691 0
	stw 0,12(1)
	.loc 2 692 0
	.cfi_offset 65, 4
	bl _ZN4idAF9LoadStateERK6idDict
.LVL1101:
	.loc 2 693 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI268:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2877:
	.size	_ZN15idAFEntity_Base9LoadStateERK6idDict, .-_ZN15idAFEntity_Base9LoadStateERK6idDict
	.align 2
	.globl _ZN15idAFEntity_Base18AddBindConstraintsEv
	.type	_ZN15idAFEntity_Base18AddBindConstraintsEv, @function
_ZN15idAFEntity_Base18AddBindConstraintsEv:
.LFB2878:
	.loc 2 700 0
	.cfi_startproc
.LVL1102:
	mflr 0
	stwu 1,-8(1)
.LCFI269:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 701 0
	addi 3,3,1624
.LVL1103:
	.loc 2 700 0
	stw 0,12(1)
	.loc 2 701 0
	.cfi_offset 65, 4
	bl _ZN4idAF18AddBindConstraintsEv
.LVL1104:
	.loc 2 702 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI270:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2878:
	.size	_ZN15idAFEntity_Base18AddBindConstraintsEv, .-_ZN15idAFEntity_Base18AddBindConstraintsEv
	.align 2
	.globl _ZN15idAFEntity_Base21RemoveBindConstraintsEv
	.type	_ZN15idAFEntity_Base21RemoveBindConstraintsEv, @function
_ZN15idAFEntity_Base21RemoveBindConstraintsEv:
.LFB2879:
	.loc 2 709 0
	.cfi_startproc
.LVL1105:
	mflr 0
	stwu 1,-8(1)
.LCFI271:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 2 710 0
	addi 3,3,1624
.LVL1106:
	.loc 2 709 0
	stw 0,12(1)
	.loc 2 710 0
	.cfi_offset 65, 4
	bl _ZN4idAF21RemoveBindConstraintsEv
.LVL1107:
	.loc 2 711 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI272:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2879:
	.size	_ZN15idAFEntity_Base21RemoveBindConstraintsEv, .-_ZN15idAFEntity_Base21RemoveBindConstraintsEv
	.align 2
	.globl _ZN15idAFEntity_Base14SetCombatModelEv
	.type	_ZN15idAFEntity_Base14SetCombatModelEv, @function
_ZN15idAFEntity_Base14SetCombatModelEv:
.LFB2886:
	.loc 2 810 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2886
.LVL1108:
	mflr 0
	stwu 1,-16(1)
.LCFI273:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
	.loc 2 811 0
	lwz 3,2188(3)
.LVL1109:
	cmpwi 7,3,0
	beq- 7,.L640
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LEHB101:
	.loc 2 812 0
	bl _ZN11idClipModel6UnlinkEv
	.loc 2 813 0
	lwz 3,2188(31)
	lwz 4,412(31)
	bl _ZN11idClipModel9LoadModelEi
	.loc 2 817 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1110:
	addi 1,1,16
	.cfi_remember_state
.LCFI274:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1111:
.L640:
.LCFI275:
	.cfi_restore_state
	.loc 2 815 0
	li 3,140
	bl _Znwj
.LEHE101:
	lwz 4,412(31)
	mr 30,3
.LEHB102:
	bl _ZN11idClipModelC1Ei
.LEHE102:
	.loc 2 815 0 is_stmt 0 discriminator 1
	stw 30,2188(31)
	.loc 2 817 0 is_stmt 1 discriminator 1
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1112:
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI276:
	.cfi_def_cfa_offset 0
	blr
.LVL1113:
.L643:
.LCFI277:
	.cfi_restore_state
	mr 31,3
.LVL1114:
	.loc 2 815 0
	mr 3,30
	bl _ZdlPv
	mr 3,31
.LEHB103:
	bl _Unwind_Resume
.LEHE103:
	.cfi_endproc
.LFE2886:
	.section	.gcc_except_table
.LLSDA2886:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2886-.LLSDACSB2886
.LLSDACSB2886:
	.uleb128 .LEHB101-.LFB2886
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB2886
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L643-.LFB2886
	.uleb128 0
	.uleb128 .LEHB103-.LFB2886
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
.LLSDACSE2886:
	.section	".text"
	.size	_ZN15idAFEntity_Base14SetCombatModelEv, .-_ZN15idAFEntity_Base14SetCombatModelEv
	.align 2
	.globl _ZN26idAFEntity_ClawFourFingers5SpawnEv
	.type	_ZN26idAFEntity_ClawFourFingers5SpawnEv, @function
_ZN26idAFEntity_ClawFourFingers5SpawnEv:
.LFB3011:
	.loc 2 2512 0
	.cfi_startproc
.LVL1115:
	mflr 0
	stwu 1,-40(1)
.LCFI278:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 25,12(1)
.LBB4900:
	.loc 2 2528 0
	lis 25,gameLocal@ha
	.cfi_offset 25, -28
.LBE4900:
	.loc 2 2512 0
	stw 26,16(1)
.LBB4907:
	.loc 2 2528 0
	lis 26,.LC92@ha
	.cfi_offset 26, -24
.LBE4907:
	.loc 2 2512 0
	stw 27,20(1)
.LBB4908:
	.loc 2 2523 0
	lis 27,.LANCHOR2@ha
	.cfi_offset 27, -20
.LBE4908:
	.loc 2 2512 0
	stw 28,24(1)
.LBB4909:
.LBB4901:
.LBB4902:
	.loc 2 2521 0
	addi 28,3,1656
	.cfi_offset 28, -16
.LBE4902:
.LBE4901:
.LBE4909:
	.loc 2 2512 0
	stw 29,28(1)
.LBB4910:
	addi 29,3,2244
	.cfi_offset 29, -12
.LBE4910:
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,36(1)
.LBB4911:
	.loc 2 2523 0
	la 27,.LANCHOR2@l(27)
.LBE4911:
	.loc 2 2512 0
	stw 0,44(1)
.LBB4912:
	.loc 2 2523 0
	addi 31,27,116
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBE4912:
	.loc 2 2512 0
	stw 24,8(1)
.LBB4913:
	.loc 2 2512 0
	addi 27,27,132
	.loc 2 2528 0
	la 25,gameLocal@l(25)
	la 26,.LC92@l(26)
	.loc 2 2515 0
	lwz 9,0(3)
	lwz 0,232(9)
	mtctr 0
	.cfi_offset 24, -32
	bctrl
.LVL1116:
	.loc 2 2517 0
	mr 3,30
	bl _ZN15idAFEntity_Base14SetCombatModelEv
.LVL1117:
.LBB4904:
.LBB4905:
	.loc 20 886 0
	li 0,1
	stb 0,1993(30)
.LVL1118:
.LBE4905:
.LBE4904:
	.loc 2 2521 0
	mr 3,30
.LBB4906:
.LBB4903:
	.loc 20 888 0
	stb 0,1994(30)
.LVL1119:
.LBE4903:
.LBE4906:
	.loc 2 2521 0
	mr 4,28
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
	.loc 2 2523 0
	lwz 0,192(30)
	li 9,1
	rlwimi 0,9,29,2,2
	stw 0,192(30)
.LVL1120:
.L646:
	.loc 2 2526 0
	lwzu 24,4(31)
	mr 3,28
	mr 4,24
	bl _ZNK12idPhysics_AF13GetConstraintEPKc
	.loc 2 2527 0
	cmpwi 7,3,0
	.loc 2 2526 0
	stwu 3,4(29)
	.loc 2 2527 0
	beq- 7,.L648
.L645:
	.loc 2 2525 0
	cmpw 7,31,27
	bne+ 7,.L646
.LBE4913:
	.loc 2 2531 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
.LVL1121:
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI279:
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
.LVL1122:
.L648:
.LCFI280:
	.cfi_restore_state
.LBB4914:
	.loc 2 2528 0
	lwz 5,72(30)
	mr 3,25
	mr 4,26
	mr 6,24
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L645
.LBE4914:
	.cfi_endproc
.LFE3011:
	.size	_ZN26idAFEntity_ClawFourFingers5SpawnEv, .-_ZN26idAFEntity_ClawFourFingers5SpawnEv
	.align 2
	.globl _ZN26idAFEntity_ClawFourFingers7RestoreEP13idRestoreGame
	.type	_ZN26idAFEntity_ClawFourFingers7RestoreEP13idRestoreGame, @function
_ZN26idAFEntity_ClawFourFingers7RestoreEP13idRestoreGame:
.LFB3010:
	.loc 2 2495 0
	.cfi_startproc
.LVL1123:
	stwu 1,-32(1)
.LCFI281:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 27,12(1)
	lis 27,.LANCHOR2@ha
	.cfi_offset 27, -20
	.cfi_register 65, 0
	la 27,.LANCHOR2@l(27)
	stw 0,36(1)
	stw 26,8(1)
	mr 26,4
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	stw 28,16(1)
	addi 28,3,1656
	.cfi_offset 28, -16
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,24(1)
	addi 30,3,2244
	.cfi_offset 30, -8
	stw 31,28(1)
	.loc 2 2495 0
	addi 31,27,116
	.cfi_offset 31, -4
	addi 27,27,132
.LVL1124:
.L650:
.LBB4915:
	.loc 2 2499 0 discriminator 2
	lwzu 4,4(31)
	mr 3,28
	bl _ZNK12idPhysics_AF13GetConstraintEPKc
	.loc 2 2500 0 discriminator 2
	mr 4,26
	.loc 2 2499 0 discriminator 2
	stwu 3,4(30)
	.loc 2 2500 0 discriminator 2
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
	.loc 2 2498 0 discriminator 2
	cmpw 7,31,27
	bne+ 7,.L650
	.loc 2 2503 0
	mr 3,29
	bl _ZN15idAFEntity_Base14SetCombatModelEv
	.loc 2 2504 0
	lwz 9,0(29)
	mr 3,29
	lwz 0,236(9)
	mtctr 0
	bctrl
.LBE4915:
	.loc 2 2505 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL1125:
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1126:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI282:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE3010:
	.size	_ZN26idAFEntity_ClawFourFingers7RestoreEP13idRestoreGame, .-_ZN26idAFEntity_ClawFourFingers7RestoreEP13idRestoreGame
	.align 2
	.globl _ZN18idAFEntity_Vehicle5SpawnEv
	.type	_ZN18idAFEntity_Vehicle5SpawnEv, @function
_ZN18idAFEntity_Vehicle5SpawnEv:
.LFB2958:
	.loc 2 1632 0
	.cfi_startproc
.LVL1127:
	stwu 1,-32(1)
.LCFI283:
	.cfi_def_cfa_offset 32
	mflr 0
.LBB4929:
.LBB4930:
.LBB4931:
	.loc 11 241 0
	lis 4,.LC96@ha
.LBE4931:
.LBE4930:
.LBE4929:
	.loc 2 1632 0
	stw 30,24(1)
.LBB4962:
	.loc 2 1633 0
	addi 30,3,100
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LVL1128:
.LBE4962:
	.loc 2 1632 0
	stw 31,28(1)
.LBB4963:
.LBB4940:
.LBB4934:
	.loc 11 241 0
	la 4,.LC96@l(4)
.LBE4934:
.LBE4940:
.LBE4963:
	.loc 2 1632 0
	mr 31,3
	.cfi_offset 31, -4
.LBB4964:
.LBB4941:
.LBB4935:
	.loc 11 241 0
	mr 3,30
.LVL1129:
.LBE4935:
.LBE4941:
.LBE4964:
	.loc 2 1632 0
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
.LBB4965:
.LBB4942:
.LBB4936:
	.loc 11 241 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	bl _ZNK6idDict7FindKeyEPKc
.LVL1130:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L659
.LVL1131:
.LBB4932:
	.loc 2 2927 0
	lwz 9,4(3)
.LBE4932:
.LBE4936:
.LBE4942:
.LBB4943:
.LBB4944:
	.loc 11 241 0
	lis 4,.LC97@ha
	mr 3,30
.LVL1132:
	la 4,.LC97@l(4)
.LBE4944:
.LBE4943:
.LBB4950:
.LBB4937:
.LBB4933:
	.loc 2 2927 0
	lwz 27,4(9)
.LBE4933:
.LBE4937:
.LBE4950:
.LBB4951:
.LBB4946:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1133:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L660
.L664:
.LVL1134:
.LBB4945:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 28,4(9)
.LVL1135:
.L654:
.LBE4945:
.LBE4946:
.LBE4951:
	.loc 2 1636 0
	lwz 9,0(31)
	mr 3,31
.LVL1136:
	lwz 0,232(9)
	mtctr 0
	bctrl
	.loc 2 1638 0
	mr 3,31
	bl _ZN15idAFEntity_Base14SetCombatModelEv
.LVL1137:
	.loc 2 1640 0
	mr 3,31
	addi 4,31,1656
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
	.loc 2 1642 0
	lwz 0,192(31)
	li 9,1
	rlwimi 0,9,29,2,2
	stw 0,192(31)
	.loc 2 1644 0
	lbz 0,0(27)
	cmpwi 7,0,0
	beq- 7,.L662
.L655:
	.loc 2 1647 0
	addi 29,31,636
	mr 4,27
	mr 3,29
	bl _ZNK10idAnimator14GetJointHandleEPKc
	stw 3,2252(31)
	.loc 2 1648 0
	lbz 0,0(28)
	cmpwi 7,0,0
	beq- 7,.L663
.L656:
	.loc 2 1651 0
	mr 4,28
	mr 3,29
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 1653 0
	lis 4,.LC100@ha
	.loc 2 1651 0
	stw 3,2256(31)
	.loc 2 1653 0
	lis 5,.LC101@ha
	la 4,.LC100@l(4)
	la 5,.LC101@l(5)
	addi 6,31,2260
	mr 3,30
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 2 1654 0
	lis 4,.LC102@ha
	lis 5,.LC103@ha
	la 4,.LC102@l(4)
	la 5,.LC103@l(5)
	addi 6,31,2268
	mr 3,30
	bl _ZNK6idDict8GetFloatEPKcS1_Rf
	.loc 2 1656 0
	li 0,0
	stw 0,2248(31)
	.loc 2 1657 0
	li 0,0
	stw 0,2264(31)
.LVL1138:
.LBB4952:
.LBB4953:
	.loc 11 241 0
	lis 4,.LC104@ha
	mr 3,30
	la 4,.LC104@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1139:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L661
.LVL1140:
.LBB4954:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 5,4(9)
.LVL1141:
.L657:
.LBE4954:
.LBE4953:
.LBE4952:
	.loc 2 1660 0
	lbz 0,0(5)
	cmpwi 7,0,0
	beq+ 7,.L652
	.loc 2 1661 0
	lis 9,declManager@ha
	li 4,7
	lwz 3,declManager@l(9)
.LVL1142:
	li 6,1
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
	stw 3,2272(31)
.L652:
.LBE4965:
	.loc 2 1663 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL1143:
	lwz 31,28(1)
.LVL1144:
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
.LVL1145:
.L663:
.LCFI285:
	.cfi_restore_state
.LBB4966:
	.loc 2 1649 0
	lwz 5,72(31)
	lis 3,gameLocal@ha
	lis 4,.LC99@ha
	la 3,gameLocal@l(3)
	la 4,.LC99@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L656
.L662:
	.loc 2 1645 0
	lwz 5,72(31)
	lis 3,gameLocal@ha
	lis 4,.LC98@ha
	la 3,gameLocal@l(3)
	la 4,.LC98@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L655
.LVL1146:
.L661:
.LBB4956:
.LBB4955:
	.loc 11 245 0
	lis 5,.LC95@ha
	la 5,.LC95@l(5)
	b .L657
.LVL1147:
.L659:
.LBE4955:
.LBE4956:
.LBB4957:
.LBB4947:
	.loc 11 241 0
	lis 4,.LC97@ha
	mr 3,30
.LVL1148:
	la 4,.LC97@l(4)
.LBE4947:
.LBE4957:
.LBB4958:
.LBB4938:
	.loc 11 245 0
	lis 27,.LC93@ha
.LBE4938:
.LBE4958:
.LBB4959:
.LBB4948:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LBE4948:
.LBE4959:
.LBB4960:
.LBB4939:
	.loc 11 245 0
	la 27,.LC93@l(27)
.LVL1149:
.LBE4939:
.LBE4960:
.LBB4961:
.LBB4949:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L664
.L660:
	.loc 11 245 0
	lis 28,.LC94@ha
	la 28,.LC94@l(28)
	b .L654
.LBE4949:
.LBE4961:
.LBE4966:
	.cfi_endproc
.LFE2958:
	.size	_ZN18idAFEntity_Vehicle5SpawnEv, .-_ZN18idAFEntity_Vehicle5SpawnEv
	.align 2
	.globl _ZN18idAFEntity_Generic5SpawnEv
	.type	_ZN18idAFEntity_Generic5SpawnEv, @function
_ZN18idAFEntity_Generic5SpawnEv:
.LFB2929:
	.loc 2 1281 0
	.cfi_startproc
.LVL1150:
	mflr 0
	stwu 1,-16(1)
.LCFI286:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
	.loc 2 1282 0
	lwz 9,0(3)
	lwz 0,232(9)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL1151:
	cmpwi 7,3,0
	beq- 7,.L670
.L666:
	.loc 2 1286 0
	mr 3,31
	.loc 2 1288 0
	addi 30,31,1656
	.loc 2 1286 0
	bl _ZN15idAFEntity_Base14SetCombatModelEv
.LVL1152:
	.loc 2 1288 0
	mr 4,30
	mr 3,31
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
.LVL1153:
	.loc 2 1290 0
	lwz 9,1656(31)
	mr 3,30
	lwz 0,92(9)
	mtctr 0
	bctrl
.LVL1154:
.LBB4975:
.LBB4976:
.LBB4977:
.LBB4978:
	.loc 11 241 0
	lis 4,.LC106@ha
	addi 3,31,100
	la 4,.LC106@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1155:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L669
.LVL1156:
.LBB4979:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1157:
.L667:
.LBE4979:
.LBE4978:
.LBE4977:
	.loc 11 257 0
	bl atoi
.LBE4976:
.LBE4975:
	.loc 2 1291 0
	cmpwi 7,3,0
	bne+ 7,.L668
.LVL1158:
	.loc 2 1292 0
	lwz 9,1656(31)
	mr 3,30
	lwz 0,88(9)
	mtctr 0
	bctrl
.LVL1159:
.L668:
	.loc 2 1295 0
	lwz 0,192(31)
	li 9,1
	rlwimi 0,9,29,2,2
	stw 0,192(31)
	.loc 2 1296 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1160:
	addi 1,1,16
	.cfi_remember_state
.LCFI287:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1161:
.L670:
.LCFI288:
	.cfi_restore_state
	.loc 2 1283 0
	lwz 5,72(31)
	lis 3,gameLocal@ha
	lis 4,.LC105@ha
	la 3,gameLocal@l(3)
	la 4,.LC105@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
	b .L666
.LVL1162:
.L669:
.LBB4983:
.LBB4982:
.LBB4981:
.LBB4980:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL1163:
	la 3,.LC7@l(3)
	b .L667
.LBE4980:
.LBE4981:
.LBE4982:
.LBE4983:
	.cfi_endproc
.LFE2929:
	.size	_ZN18idAFEntity_Generic5SpawnEv, .-_ZN18idAFEntity_Generic5SpawnEv
	.align 2
	.globl _ZNK15idAFEntity_Base14GetCombatModelEv
	.type	_ZNK15idAFEntity_Base14GetCombatModelEv, @function
_ZNK15idAFEntity_Base14GetCombatModelEv:
.LFB2887:
	.loc 2 824 0
	.cfi_startproc
.LVL1164:
	.loc 2 826 0
	lwz 3,2188(3)
.LVL1165:
	blr
	.cfi_endproc
.LFE2887:
	.size	_ZNK15idAFEntity_Base14GetCombatModelEv, .-_ZNK15idAFEntity_Base14GetCombatModelEv
	.align 2
	.globl _ZN15idAFEntity_Base17SetCombatContentsEb
	.type	_ZN15idAFEntity_Base17SetCombatContentsEb, @function
_ZN15idAFEntity_Base17SetCombatContentsEb:
.LFB2888:
	.loc 2 833 0
	.cfi_startproc
.LVL1166:
	.loc 2 835 0
	cmpwi 0,4,0
.LVL1167:
	bne- 0,.L675
	.loc 2 839 0 discriminator 1
	lwz 9,2188(3)
	.loc 2 2927 0 discriminator 1
	lwz 0,116(9)
	.loc 2 839 0 discriminator 1
	cmpwi 7,0,0
	beqlr- 7
	.loc 2 841 0 discriminator 4
	stw 0,2192(3)
.LVL1168:
.LBB4984:
.LBB4985:
	.loc 19 167 0 discriminator 4
	stw 4,116(9)
	blr
.LVL1169:
.L675:
.LBE4985:
.LBE4984:
	.loc 2 835 0 discriminator 1
	lwz 0,2192(3)
	cmpwi 7,0,0
	beqlr+ 7
	.loc 2 837 0
	lwz 9,2188(3)
.LVL1170:
.LBB4986:
.LBB4987:
	.loc 19 167 0
	stw 0,116(9)
.LBE4987:
.LBE4986:
	.loc 2 838 0
	li 0,0
	stw 0,2192(3)
	blr
	.cfi_endproc
.LFE2888:
	.size	_ZN15idAFEntity_Base17SetCombatContentsEb, .-_ZN15idAFEntity_Base17SetCombatContentsEb
	.align 2
	.globl _ZN19idAFEntity_GibbableC2Ev
	.type	_ZN19idAFEntity_GibbableC2Ev, @function
_ZN19idAFEntity_GibbableC2Ev:
.LFB2898:
	.loc 2 969 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2898
.LVL1171:
	mflr 0
	stwu 1,-16(1)
.LCFI289:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB104:
.LBB4988:
	.loc 2 969 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN15idAFEntity_BaseC2Ev
.LEHE104:
.LVL1172:
	lis 9,_ZTV19idAFEntity_Gibbable+8@ha
	.loc 2 971 0
	lis 3,.LC107@ha
	.loc 2 969 0
	la 0,_ZTV19idAFEntity_Gibbable+8@l(9)
	.loc 2 971 0
	la 3,.LC107@l(3)
	.loc 2 969 0
	stw 0,0(31)
	.loc 2 971 0
	li 4,2260
.LEHB105:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE105:
	.loc 2 974 0
	li 0,0
	.loc 2 975 0
	li 9,-1
	.loc 2 974 0
	stw 0,2248(31)
	.loc 2 975 0
	stw 9,2252(31)
	.loc 2 976 0
	stb 0,2256(31)
.LBE4988:
	.loc 2 977 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1173:
	addi 1,1,16
	.cfi_remember_state
.LCFI290:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1174:
.L678:
.LCFI291:
	.cfi_restore_state
	mr 30,3
.LBB4989:
	.loc 2 969 0
	mr 3,31
	bl _ZN15idAFEntity_BaseD2Ev
	mr 3,30
.LEHB106:
	bl _Unwind_Resume
.LEHE106:
.LBE4989:
	.cfi_endproc
.LFE2898:
	.section	.gcc_except_table
.LLSDA2898:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2898-.LLSDACSB2898
.LLSDACSB2898:
	.uleb128 .LEHB104-.LFB2898
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB2898
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L678-.LFB2898
	.uleb128 0
	.uleb128 .LEHB106-.LFB2898
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
.LLSDACSE2898:
	.section	".text"
	.size	_ZN19idAFEntity_GibbableC2Ev, .-_ZN19idAFEntity_GibbableC2Ev
	.align 2
	.globl _ZN19idAFEntity_Gibbable14CreateInstanceEv
	.type	_ZN19idAFEntity_Gibbable14CreateInstanceEv, @function
_ZN19idAFEntity_Gibbable14CreateInstanceEv:
.LFB2895:
	.loc 2 958 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2895
	mflr 0
	stwu 1,-24(1)
.LCFI292:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB4990:
	li 3,2260
.LBE4990:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB107:
.LBB4991:
	.loc 2 958 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE107:
	mr 31,3
.LEHB108:
	bl _ZN19idAFEntity_GibbableC1Ev
.LEHE108:
.LVL1175:
	.loc 2 958 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB109:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE109:
.LVL1176:
.L684:
.LBE4991:
	.loc 2 958 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI293:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L685:
.L681:
.LCFI294:
	.cfi_restore_state
.LBB4992:
	cmpwi 7,4,1
	beq- 7,.L683
.LEHB110:
	bl _Unwind_Resume
.LEHE110:
.L686:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L681
.L683:
.LBE4992:
.LBB4993:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L684
.LBE4993:
	.cfi_endproc
.LFE2895:
	.section	.gcc_except_table
	.align 2
.LLSDA2895:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2895-.LLSDATTD2895
.LLSDATTD2895:
	.byte	0x1
	.uleb128 .LLSDACSE2895-.LLSDACSB2895
.LLSDACSB2895:
	.uleb128 .LEHB107-.LFB2895
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L685-.LFB2895
	.uleb128 0x1
	.uleb128 .LEHB108-.LFB2895
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L686-.LFB2895
	.uleb128 0x3
	.uleb128 .LEHB109-.LFB2895
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L685-.LFB2895
	.uleb128 0x1
	.uleb128 .LEHB110-.LFB2895
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
.LLSDACSE2895:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2895:
	.section	".text"
	.size	_ZN19idAFEntity_Gibbable14CreateInstanceEv, .-_ZN19idAFEntity_Gibbable14CreateInstanceEv
	.align 2
	.globl _ZN19idAFEntity_Gibbable17InitSkeletonModelEv
	.type	_ZN19idAFEntity_Gibbable17InitSkeletonModelEv, @function
_ZN19idAFEntity_Gibbable17InitSkeletonModelEv:
.LFB2907:
	.loc 2 1038 0 is_stmt 1
	.cfi_startproc
.LVL1177:
	mflr 0
	stwu 1,-16(1)
.LCFI295:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB4999:
.LBB5000:
.LBB5001:
	.loc 11 241 0
	lis 4,.LC108@ha
.LBE5001:
.LBE5000:
.LBE4999:
	.loc 2 1038 0
	stw 31,12(1)
.LBB5009:
.LBB5006:
.LBB5003:
	.loc 11 241 0
	la 4,.LC108@l(4)
.LBE5003:
.LBE5006:
.LBE5009:
	.loc 2 1038 0
	stw 0,20(1)
.LBB5010:
	.loc 2 1042 0
	li 0,0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBE5010:
	.loc 2 1038 0
	stw 30,8(1)
	.loc 2 1038 0
	mr 31,3
.LBB5011:
	.loc 2 1042 0
	stw 0,2248(3)
	.loc 2 1043 0
	li 0,-1
	stw 0,2252(3)
.LVL1178:
.LBB5007:
.LBB5004:
	.loc 11 241 0
	addi 3,3,100
.LVL1179:
	.cfi_offset 30, -8
	bl _ZNK6idDict7FindKeyEPKc
.LVL1180:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L692
.LVL1181:
.LBB5002:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 30,4(9)
.LVL1182:
.L688:
.LBE5002:
.LBE5004:
.LBE5007:
	.loc 2 1048 0
	lbz 0,0(30)
	cmpwi 7,0,0
	bne- 7,.L693
.LVL1183:
.L687:
.LBE5011:
	.loc 2 1062 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1184:
	addi 1,1,16
	.cfi_remember_state
.LCFI296:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1185:
.L693:
.LCFI297:
	.cfi_restore_state
.LBB5012:
	.loc 2 1049 0
	lis 9,declManager@ha
	li 4,5
	lwz 3,declManager@l(9)
.LVL1186:
	mr 5,30
	li 6,0
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1187:
	.loc 2 1050 0
	cmpwi 7,3,0
	beq- 7,.L690
	.loc 2 1051 0
	bl _ZNK14idDeclModelDef11ModelHandleEv
.LVL1188:
	stw 3,2248(31)
.L691:
	.loc 2 1055 0
	cmpwi 7,3,0
	beq- 7,.L687
	.loc 2 1055 0 is_stmt 0 discriminator 1
	lwz 0,196(31)
	cmpwi 7,0,0
	beq- 7,.L687
	.loc 2 1056 0 is_stmt 1
	lwz 9,0(3)
	lwz 0,140(9)
	mtctr 0
	bctrl
	mr 30,3
	lwz 3,196(31)
	lwz 9,0(3)
	lwz 0,140(9)
	mtctr 0
	bctrl
	cmpw 7,30,3
	beq- 7,.L687
	.loc 2 1058 0
	lwz 3,2248(31)
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
	mr 30,3
	lwz 3,196(31)
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
	lis 4,.LC109@ha
	mr 6,3
	lis 3,gameLocal@ha
	mr 5,30
	la 3,gameLocal@l(3)
	la 4,.LC109@l(4)
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LBE5012:
	.loc 2 1062 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1189:
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
.LCFI298:
	.cfi_def_cfa_offset 0
	blr
.LVL1190:
.L692:
.LCFI299:
	.cfi_restore_state
.LBB5013:
.LBB5008:
.LBB5005:
	.loc 11 245 0
	lis 30,.LC35@ha
	la 30,.LC35@l(30)
	b .L688
.LVL1191:
.L690:
.LBE5005:
.LBE5008:
	.loc 2 1053 0
	lis 9,renderModelManager@ha
	mr 4,30
	lwz 3,renderModelManager@l(9)
.LVL1192:
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
	stw 3,2248(31)
	b .L691
.LBE5013:
	.cfi_endproc
.LFE2907:
	.size	_ZN19idAFEntity_Gibbable17InitSkeletonModelEv, .-_ZN19idAFEntity_Gibbable17InitSkeletonModelEv
	.align 2
	.globl _ZN19idAFEntity_Gibbable5SpawnEv
	.type	_ZN19idAFEntity_Gibbable5SpawnEv, @function
_ZN19idAFEntity_Gibbable5SpawnEv:
.LFB2906:
	.loc 2 1025 0
	.cfi_startproc
.LVL1193:
	mflr 0
	stwu 1,-16(1)
.LCFI300:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 2 1026 0
	.cfi_offset 65, 4
	bl _ZNK8idEntity7GetNameEv
.LVL1194:
	mr 5,3
	lis 3,.LC110@ha
	mr 4,31
	la 3,.LC110@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
	.loc 2 1027 0
	bl _Z18Sys_PrintBacktracev
	.loc 2 1028 0
	mr 3,31
	bl _ZN19idAFEntity_Gibbable17InitSkeletonModelEv
	.loc 2 1030 0
	li 0,0
	stb 0,2256(31)
	.loc 2 1031 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1195:
	mtlr 0
	addi 1,1,16
.LCFI301:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2906:
	.size	_ZN19idAFEntity_Gibbable5SpawnEv, .-_ZN19idAFEntity_Gibbable5SpawnEv
	.align 2
	.globl _ZN19idAFEntity_Gibbable7RestoreEP13idRestoreGame
	.type	_ZN19idAFEntity_Gibbable7RestoreEP13idRestoreGame, @function
_ZN19idAFEntity_Gibbable7RestoreEP13idRestoreGame:
.LFB2905:
	.loc 2 1006 0
	.cfi_startproc
.LVL1196:
	stwu 1,-32(1)
.LCFI302:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,24(1)
.LBB5018:
	.loc 2 1009 0
	mr 3,4
.LVL1197:
.LBE5018:
	.loc 2 1006 0
	mr 30,4
	.cfi_offset 30, -8
.LBB5019:
	.loc 2 1009 0
	addi 4,31,2256
.LVL1198:
.LBE5019:
	.loc 2 1006 0
	stw 0,36(1)
.LBB5020:
	.loc 2 1009 0
	.cfi_offset 65, 4
	bl _ZN13idRestoreGame8ReadBoolERb
.LVL1199:
	.loc 2 1010 0
	mr 3,30
	addi 4,1,8
	bl _ZN13idRestoreGame8ReadBoolERb
	.loc 2 1012 0
	mr 3,31
	bl _ZN19idAFEntity_Gibbable17InitSkeletonModelEv
.LVL1200:
	.loc 2 1014 0
	lbz 0,8(1)
.LVL1201:
	cmpwi 7,0,0
.LVL1202:
	beq+ 7,.L695
.LVL1203:
.LBE5020:
.LBB5021:
.LBB5022:
.LBB5023:
	.loc 2 1015 0
	mr 3,31
	bl _ZN15idAFEntity_Base14SetCombatModelEv
.LVL1204:
	.loc 2 1016 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
.LVL1205:
.L695:
.LBE5023:
.LBE5022:
.LBE5021:
	.loc 2 1018 0
	lwz 0,36(1)
.LVL1206:
	lwz 30,24(1)
.LVL1207:
	mtlr 0
	lwz 31,28(1)
.LVL1208:
	addi 1,1,32
.LCFI303:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2905:
	.size	_ZN19idAFEntity_Gibbable7RestoreEP13idRestoreGame, .-_ZN19idAFEntity_Gibbable7RestoreEP13idRestoreGame
	.align 2
	.globl _ZN18idAFEntity_GenericC2Ev
	.type	_ZN18idAFEntity_GenericC2Ev, @function
_ZN18idAFEntity_GenericC2Ev:
.LFB2920:
	.loc 2 1229 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2920
.LVL1209:
	mflr 0
	stwu 1,-16(1)
.LCFI304:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB111:
.LBB5024:
	.loc 2 1229 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN19idAFEntity_GibbableC2Ev
.LEHE111:
.LVL1210:
	lis 9,_ZTV18idAFEntity_Generic+8@ha
	.loc 2 1231 0
	lis 3,.LC111@ha
	.loc 2 1229 0
	la 0,_ZTV18idAFEntity_Generic+8@l(9)
	.loc 2 1231 0
	la 3,.LC111@l(3)
	.loc 2 1229 0
	stw 0,0(31)
	.loc 2 1231 0
	li 4,2260
.LEHB112:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE112:
	.loc 2 1234 0
	li 0,0
	stb 0,2257(31)
.LBE5024:
	.loc 2 1235 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1211:
	addi 1,1,16
	.cfi_remember_state
.LCFI305:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1212:
.L699:
.LCFI306:
	.cfi_restore_state
	mr 30,3
.LBB5025:
	.loc 2 1229 0
	mr 3,31
	bl _ZN19idAFEntity_GibbableD2Ev
	mr 3,30
.LEHB113:
	bl _Unwind_Resume
.LEHE113:
.LBE5025:
	.cfi_endproc
.LFE2920:
	.section	.gcc_except_table
.LLSDA2920:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2920-.LLSDACSB2920
.LLSDACSB2920:
	.uleb128 .LEHB111-.LFB2920
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB112-.LFB2920
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L699-.LFB2920
	.uleb128 0
	.uleb128 .LEHB113-.LFB2920
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
.LLSDACSE2920:
	.section	".text"
	.size	_ZN18idAFEntity_GenericC2Ev, .-_ZN18idAFEntity_GenericC2Ev
	.align 2
	.globl _ZN18idAFEntity_Generic14CreateInstanceEv
	.type	_ZN18idAFEntity_Generic14CreateInstanceEv, @function
_ZN18idAFEntity_Generic14CreateInstanceEv:
.LFB2917:
	.loc 2 1220 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2917
	mflr 0
	stwu 1,-24(1)
.LCFI307:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5026:
	li 3,2260
.LBE5026:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB114:
.LBB5027:
	.loc 2 1220 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE114:
	mr 31,3
.LEHB115:
	bl _ZN18idAFEntity_GenericC1Ev
.LEHE115:
.LVL1213:
	.loc 2 1220 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB116:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE116:
.LVL1214:
.L705:
.LBE5027:
	.loc 2 1220 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI308:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L706:
.L702:
.LCFI309:
	.cfi_restore_state
.LBB5028:
	cmpwi 7,4,1
	beq- 7,.L704
.LEHB117:
	bl _Unwind_Resume
.LEHE117:
.L707:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L702
.L704:
.LBE5028:
.LBB5029:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L705
.LBE5029:
	.cfi_endproc
.LFE2917:
	.section	.gcc_except_table
	.align 2
.LLSDA2917:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2917-.LLSDATTD2917
.LLSDATTD2917:
	.byte	0x1
	.uleb128 .LLSDACSE2917-.LLSDACSB2917
.LLSDACSB2917:
	.uleb128 .LEHB114-.LFB2917
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L706-.LFB2917
	.uleb128 0x1
	.uleb128 .LEHB115-.LFB2917
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L707-.LFB2917
	.uleb128 0x3
	.uleb128 .LEHB116-.LFB2917
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L706-.LFB2917
	.uleb128 0x1
	.uleb128 .LEHB117-.LFB2917
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
.LLSDACSE2917:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2917:
	.section	".text"
	.size	_ZN18idAFEntity_Generic14CreateInstanceEv, .-_ZN18idAFEntity_Generic14CreateInstanceEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHeadC2Ev
	.type	_ZN27idAFEntity_WithAttachedHeadC2Ev, @function
_ZN27idAFEntity_WithAttachedHeadC2Ev:
.LFB2934:
	.loc 2 1349 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2934
.LVL1215:
	mflr 0
	stwu 1,-16(1)
.LCFI310:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB118:
.LBB5030:
	.loc 2 1349 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN19idAFEntity_GibbableC2Ev
.LEHE118:
.LVL1216:
	lis 9,_ZTV27idAFEntity_WithAttachedHead+8@ha
	.loc 2 1351 0
	lis 3,.LC112@ha
	.loc 2 1349 0
	la 0,_ZTV27idAFEntity_WithAttachedHead+8@l(9)
	.loc 2 1351 0
	la 3,.LC112@l(3)
	.loc 2 1349 0
	stw 0,0(31)
.LVL1217:
.LBB5031:
.LBB5032:
	.loc 4 590 0
	li 0,0
	stw 0,2260(31)
.LBE5032:
.LBE5031:
	.loc 2 1351 0
	li 4,2264
.LEHB119:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE119:
.LVL1218:
.LBB5033:
.LBB5034:
	.loc 4 606 0
	li 0,0
	stw 0,2260(31)
.LBE5034:
.LBE5033:
.LBE5030:
	.loc 2 1355 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1219:
	addi 1,1,16
	.cfi_remember_state
.LCFI311:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1220:
.L710:
.LCFI312:
	.cfi_restore_state
	mr 30,3
.LBB5035:
	.loc 2 1349 0
	mr 3,31
	bl _ZN19idAFEntity_GibbableD2Ev
	mr 3,30
.LEHB120:
	bl _Unwind_Resume
.LEHE120:
.LBE5035:
	.cfi_endproc
.LFE2934:
	.section	.gcc_except_table
.LLSDA2934:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2934-.LLSDACSB2934
.LLSDACSB2934:
	.uleb128 .LEHB118-.LFB2934
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB119-.LFB2934
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L710-.LFB2934
	.uleb128 0
	.uleb128 .LEHB120-.LFB2934
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
.LLSDACSE2934:
	.section	".text"
	.size	_ZN27idAFEntity_WithAttachedHeadC2Ev, .-_ZN27idAFEntity_WithAttachedHeadC2Ev
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead14CreateInstanceEv
	.type	_ZN27idAFEntity_WithAttachedHead14CreateInstanceEv, @function
_ZN27idAFEntity_WithAttachedHead14CreateInstanceEv:
.LFB2931:
	.loc 2 1339 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2931
	mflr 0
	stwu 1,-24(1)
.LCFI313:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5036:
	li 3,2264
.LBE5036:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB121:
.LBB5037:
	.loc 2 1339 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE121:
	mr 31,3
.LEHB122:
	bl _ZN27idAFEntity_WithAttachedHeadC1Ev
.LEHE122:
.LVL1221:
	.loc 2 1339 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB123:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE123:
.LVL1222:
.L716:
.LBE5037:
	.loc 2 1339 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI314:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L717:
.L713:
.LCFI315:
	.cfi_restore_state
.LBB5038:
	cmpwi 7,4,1
	beq- 7,.L715
.LEHB124:
	bl _Unwind_Resume
.LEHE124:
.L718:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L713
.L715:
.LBE5038:
.LBB5039:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L716
.LBE5039:
	.cfi_endproc
.LFE2931:
	.section	.gcc_except_table
	.align 2
.LLSDA2931:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2931-.LLSDATTD2931
.LLSDATTD2931:
	.byte	0x1
	.uleb128 .LLSDACSE2931-.LLSDACSB2931
.LLSDACSB2931:
	.uleb128 .LEHB121-.LFB2931
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L717-.LFB2931
	.uleb128 0x1
	.uleb128 .LEHB122-.LFB2931
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L718-.LFB2931
	.uleb128 0x3
	.uleb128 .LEHB123-.LFB2931
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L717-.LFB2931
	.uleb128 0x1
	.uleb128 .LEHB124-.LFB2931
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
.LLSDACSE2931:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2931:
	.section	".text"
	.size	_ZN27idAFEntity_WithAttachedHead14CreateInstanceEv, .-_ZN27idAFEntity_WithAttachedHead14CreateInstanceEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead9SetupHeadEv
	.type	_ZN27idAFEntity_WithAttachedHead9SetupHeadEv, @function
_ZN27idAFEntity_WithAttachedHead9SetupHeadEv:
.LFB2943:
	.loc 2 1422 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2943
.LVL1223:
	stwu 1,-120(1)
.LCFI316:
	.cfi_def_cfa_offset 120
.LVL1224:
	mflr 0
.LBB5071:
.LBB5072:
.LBB5073:
.LBB5074:
	.loc 5 357 0
	li 9,20
.LBE5074:
.LBE5073:
.LBE5072:
.LBB5083:
.LBB5084:
	.loc 11 241 0
	lis 4,.LC113@ha
.LBE5084:
.LBE5083:
.LBE5071:
	.loc 2 1422 0
	stw 29,108(1)
.LBB5146:
	.loc 2 1430 0
	addi 29,3,100
	.cfi_offset 29, -12
	.cfi_register 65, 0
.LVL1225:
.LBE5146:
	.loc 2 1422 0
	stw 0,124(1)
.LBB5147:
.LBB5090:
.LBB5086:
	.loc 11 241 0
	la 4,.LC113@l(4)
.LBE5086:
.LBE5090:
.LBB5091:
.LBB5079:
.LBB5075:
	.loc 5 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE5075:
.LBE5079:
.LBE5091:
.LBE5147:
	.loc 2 1422 0
	stw 31,116(1)
.LBB5148:
.LBB5092:
.LBB5080:
.LBB5076:
	.loc 5 357 0
	stw 9,28(1)
.LBE5076:
.LBE5080:
.LBE5092:
.LBE5148:
	.loc 2 1422 0
	mr 31,3
	.cfi_offset 31, -4
.LBB5149:
.LBB5093:
.LBB5081:
.LBB5077:
	.loc 5 358 0
	addi 9,1,32
.LBE5077:
.LBE5081:
.LBE5093:
.LBB5094:
.LBB5087:
	.loc 11 241 0
	mr 3,29
.LVL1226:
.LBE5087:
.LBE5094:
.LBE5149:
	.loc 2 1422 0
	stw 30,112(1)
	addi 30,1,20
	.cfi_offset 30, -8
	stw 25,92(1)
	stw 26,96(1)
	stw 27,100(1)
	stw 28,104(1)
.LBB5150:
.LBB5095:
.LBB5082:
.LBB5078:
	.loc 5 356 0
	stw 0,20(1)
	.loc 5 358 0
	stw 9,24(1)
	.loc 5 359 0
	stb 0,32(1)
.LEHB125:
.LBE5078:
.LBE5082:
.LBE5095:
.LBB5096:
.LBB5088:
	.loc 11 241 0
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	bl _ZNK6idDict7FindKeyEPKc
.LVL1227:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L729
.LVL1228:
.LBB5085:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 27,4(9)
.LVL1229:
.L720:
.LBE5085:
.LBE5088:
.LBE5096:
	.loc 2 1431 0
	lbz 0,0(27)
	addi 30,1,20
	cmpwi 7,0,0
	beq- 7,.L721
.LVL1230:
.LBB5097:
.LBB5098:
	.loc 11 241 0
	lis 4,.LC114@ha
	mr 3,29
.LVL1231:
	la 4,.LC114@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1232:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L730
.LVL1233:
.LBB5099:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL1234:
.L722:
.LBE5099:
.LBE5098:
.LBE5097:
	.loc 2 1432 0
	addi 30,1,20
	mr 3,30
.LVL1235:
	bl _ZN5idStraSEPKc
	.loc 2 1433 0
	addi 25,31,636
.LVL1236:
	lwz 4,4(30)
	mr 3,25
	bl _ZNK10idAnimator14GetJointHandleEPKc
	.loc 2 1434 0
	cmpwi 7,3,-1
	.loc 2 1435 0
	lis 26,gameLocal@ha
	.loc 2 1433 0
	mr 28,3
.LVL1237:
	.loc 2 1435 0
	la 26,gameLocal@l(26)
	.loc 2 1434 0
	beq- 7,.L734
.LVL1238:
.L723:
	.loc 2 1438 0
	lis 4,.LANCHOR0@ha
	mr 3,26
	la 4,.LANCHOR0@l(4)
	li 5,0
	addi 4,4,160
	li 6,0
	bl _ZN11idGameLocal15SpawnEntityTypeERK10idTypeInfoPK6idDictb
	mr 29,3
.LVL1239:
	.loc 2 1439 0
	lwz 4,72(31)
	lis 3,.LC116@ha
.LVL1240:
	la 3,.LC116@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	.loc 2 1439 0 is_stmt 0 discriminator 1
	mr 4,3
	mr 3,29
	bl _ZN8idEntity7SetNameEPKc
	.loc 2 1440 0 is_stmt 1
	mr 3,29
	mr 4,31
	mr 5,27
	mr 6,28
	bl _ZN14idAFAttachment7SetBodyEP8idEntityPKc13jointHandle_t
	.loc 2 1441 0
	mr 3,29
	bl _ZN14idAFAttachment14SetCombatModelEv
.LVL1241:
.LBB5101:
.LBB5102:
	.loc 4 605 0
	cmpwi 7,29,0
	beq- 7,.L735
	.loc 4 608 0
	lwz 9,4(29)
	addi 11,9,4228
	slwi 11,11,2
	add 11,26,11
	lwz 0,4(11)
	slwi 0,0,12
	or 9,0,9
	stw 9,2260(31)
.L725:
.LBE5102:
.LBE5101:
	.loc 2 1444 0
	addis 26,26,0x25
	mr 3,25
	lwz 5,2004(26)
	mr 4,28
	addi 6,1,8
	addi 7,1,52
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL1242:
.LBB5104:
.LBB5105:
.LBB5106:
	.loc 6 454 0
	lfs 0,12(1)
.LBE5106:
.LBE5105:
.LBE5104:
	.loc 2 1446 0
	mr 3,29
.LBB5119:
.LBB5113:
.LBB5107:
	.loc 6 454 0
	lfs 13,280(31)
.LBE5107:
.LBE5113:
.LBE5119:
	.loc 2 1446 0
	addi 4,1,8
.LVL1243:
.LBB5120:
.LBB5114:
.LBB5108:
	.loc 6 454 0
	lfs 11,284(31)
	lfs 12,288(31)
	fmuls 11,0,11
.LBE5108:
.LBE5114:
.LBE5120:
.LBB5121:
.LBB5122:
	lfs 8,272(31)
.LBE5122:
.LBE5121:
.LBB5127:
.LBB5115:
.LBB5109:
	fmuls 12,0,12
.LBE5109:
.LBE5115:
.LBE5127:
.LBB5128:
.LBB5123:
	lfs 9,276(31)
.LBE5123:
.LBE5128:
.LBB5129:
.LBB5116:
.LBB5110:
	fmuls 0,0,13
.LBE5110:
.LBE5116:
.LBE5129:
.LBB5130:
.LBB5124:
	lfs 10,268(31)
.LBE5124:
.LBE5130:
.LBB5131:
.LBB5117:
.LBB5111:
	lfs 13,8(1)
.LBE5111:
.LBE5117:
.LBE5131:
.LBB5132:
.LBB5125:
	fmadds 11,13,8,11
	lfs 8,296(31)
	fmadds 12,13,9,12
	lfs 9,300(31)
	fmadds 13,10,13,0
.LBE5125:
.LBE5132:
.LBB5133:
.LBB5118:
.LBB5112:
	lfs 0,16(1)
.LVL1244:
.LBE5112:
.LBE5118:
.LBE5133:
.LBB5134:
.LBB5126:
	lfs 10,292(31)
	fmadds 12,0,9,12
	.loc 3 452 0
	lfs 9,260(31)
	.loc 6 454 0
	fmadds 11,0,8,11
	fmadds 0,10,0,13
	.loc 3 452 0
	lfs 10,264(31)
	lfs 13,256(31)
	fadds 11,11,9
	fadds 12,12,10
.LVL1245:
	fadds 0,13,0
.LBE5126:
.LBE5134:
.LBB5135:
.LBB5136:
	.loc 3 425 0
	stfs 11,12(1)
	.loc 3 426 0
	stfs 12,16(1)
	.loc 3 424 0
	stfs 0,8(1)
.LBE5136:
.LBE5135:
	.loc 2 1446 0
	bl _ZN8idEntity9SetOriginERK6idVec3
.LVL1246:
	.loc 2 1447 0
	mr 3,29
	addi 4,31,268
	bl _ZN8idEntity7SetAxisERK6idMat3
	.loc 2 1448 0
	mr 3,29
	mr 4,31
	mr 5,28
	li 6,1
	bl _ZN8idEntity11BindToJointEPS_13jointHandle_tb
.LEHE125:
.LVL1247:
.L721:
.LBB5137:
.LBB5138:
.LBB5139:
	.loc 5 501 0
	mr 3,30
.LEHB126:
	bl _ZN5idStr8FreeDataEv
.LEHE126:
.LBE5139:
.LBE5138:
.LBE5137:
.LBE5150:
	.loc 2 1450 0
	lwz 0,124(1)
	lwz 25,92(1)
	mtlr 0
	lwz 26,96(1)
	lwz 27,100(1)
	lwz 28,104(1)
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
.LVL1248:
	addi 1,1,120
	.cfi_remember_state
.LCFI317:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1249:
.L730:
.LCFI318:
	.cfi_restore_state
.LBB5151:
.LBB5140:
.LBB5100:
	.loc 11 245 0
	lis 4,.LC35@ha
	la 4,.LC35@l(4)
	b .L722
.LVL1250:
.L734:
.LBE5100:
.LBE5140:
	.loc 2 1435 0
	lis 4,.LC115@ha
	lwz 5,4(30)
	lwz 6,72(31)
	mr 3,26
.LVL1251:
	la 4,.LC115@l(4)
.LEHB127:
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LEHE127:
	b .L723
.LVL1252:
.L729:
.LBB5141:
.LBB5089:
	.loc 11 245 0
	lis 27,.LC35@ha
	la 27,.LC35@l(27)
	b .L720
.LVL1253:
.L735:
.LBE5089:
.LBE5141:
.LBB5142:
.LBB5103:
	.loc 4 606 0
	stw 29,2260(31)
	b .L725
.LVL1254:
.L731:
	mr 31,3
.LVL1255:
.LBE5103:
.LBE5142:
.LBB5143:
.LBB5144:
.LBB5145:
	.loc 5 501 0
	mr 3,30
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB128:
	bl _Unwind_Resume
.LEHE128:
.LBE5145:
.LBE5144:
.LBE5143:
.LBE5151:
	.cfi_endproc
.LFE2943:
	.section	.gcc_except_table
.LLSDA2943:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2943-.LLSDACSB2943
.LLSDACSB2943:
	.uleb128 .LEHB125-.LFB2943
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L731-.LFB2943
	.uleb128 0
	.uleb128 .LEHB126-.LFB2943
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB127-.LFB2943
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L731-.LFB2943
	.uleb128 0
	.uleb128 .LEHB128-.LFB2943
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
.LLSDACSE2943:
	.section	".text"
	.size	_ZN27idAFEntity_WithAttachedHead9SetupHeadEv, .-_ZN27idAFEntity_WithAttachedHead9SetupHeadEv
	.align 2
	.globl _ZN27idAFEntity_WithAttachedHead5SpawnEv
	.type	_ZN27idAFEntity_WithAttachedHead5SpawnEv, @function
_ZN27idAFEntity_WithAttachedHead5SpawnEv:
.LFB2940:
	.loc 2 1374 0
	.cfi_startproc
.LVL1256:
	stwu 1,-24(1)
.LCFI319:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 0,28(1)
	stw 31,20(1)
.LBB5167:
	.loc 2 1381 0
	addi 31,30,1656
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LBE5167:
	.loc 2 1374 0
	stw 29,12(1)
.LBB5214:
	.loc 2 1375 0
	.cfi_offset 29, -12
	bl _ZN27idAFEntity_WithAttachedHead9SetupHeadEv
.LVL1257:
	.loc 2 1377 0
	lwz 9,0(30)
	mr 3,30
	lwz 0,232(9)
	mtctr 0
	bctrl
	.loc 2 1379 0
	mr 3,30
	bl _ZN15idAFEntity_Base14SetCombatModelEv
.LVL1258:
	.loc 2 1381 0
	mr 4,31
	mr 3,30
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
.LVL1259:
	.loc 2 1383 0
	lwz 9,1656(30)
	mr 3,31
	lwz 0,92(9)
	mtctr 0
	bctrl
.LVL1260:
.LBB5168:
.LBB5169:
.LBB5170:
.LBB5171:
	.loc 11 241 0
	lis 4,.LC106@ha
	addi 3,30,100
	la 4,.LC106@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1261:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L741
.LVL1262:
.LBB5172:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1263:
.L737:
.LBE5172:
.LBE5171:
.LBE5170:
	.loc 11 257 0
	bl atoi
.LBE5169:
.LBE5168:
	.loc 2 1384 0
	cmpwi 7,3,0
	beq- 7,.L743
.LBB5176:
.LBB5177:
.LBB5178:
	.loc 4 634 0
	lwz 0,2260(30)
.LBE5178:
.LBE5177:
.LBE5176:
	.loc 2 1388 0
	li 10,1
	lwz 9,192(30)
.LBB5203:
.LBB5188:
.LBB5179:
	.loc 4 635 0
	lis 29,gameLocal@ha
	.loc 4 634 0
	rlwinm 11,0,0,20,31
	.loc 4 635 0
	la 29,gameLocal@l(29)
.LBE5179:
.LBE5188:
.LBE5203:
	.loc 2 1388 0
	rlwimi 9,10,29,2,2
.LBB5204:
.LBB5189:
.LBB5180:
	.loc 4 635 0
	addi 10,11,4228
.LBE5180:
.LBE5189:
.LBE5204:
	.loc 2 1388 0
	stw 9,192(30)
.LVL1264:
.LBB5205:
.LBB5190:
.LBB5181:
	.loc 4 635 0
	slwi 9,10,2
	add 9,29,9
	srawi 0,0,12
	lwz 9,4(9)
	cmpw 7,9,0
	beq- 7,.L744
.LVL1265:
.L736:
.LBE5181:
.LBE5190:
.LBE5205:
.LBE5214:
	.loc 2 1397 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL1266:
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI320:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1267:
.L743:
.LCFI321:
	.cfi_restore_state
.LBB5215:
	.loc 2 1385 0
	lwz 9,1656(30)
	mr 3,31
.LBB5206:
.LBB5191:
.LBB5182:
	.loc 4 635 0
	lis 29,gameLocal@ha
.LBE5182:
.LBE5191:
.LBE5206:
	.loc 2 1385 0
	lwz 0,88(9)
.LBB5207:
.LBB5192:
.LBB5183:
	.loc 4 635 0
	la 29,gameLocal@l(29)
.LBE5183:
.LBE5192:
.LBE5207:
	.loc 2 1385 0
	mtctr 0
	bctrl
.LBB5208:
.LBB5193:
.LBB5184:
	.loc 4 634 0
	lwz 0,2260(30)
.LBE5184:
.LBE5193:
.LBE5208:
	.loc 2 1388 0
	lwz 9,192(30)
	li 10,1
.LBB5209:
.LBB5194:
.LBB5185:
	.loc 4 634 0
	rlwinm 11,0,0,20,31
	.loc 4 635 0
	srawi 0,0,12
.LBE5185:
.LBE5194:
.LBE5209:
	.loc 2 1388 0
	rlwimi 9,10,29,2,2
.LBB5210:
.LBB5195:
.LBB5186:
	.loc 4 635 0
	addi 10,11,4228
.LBE5186:
.LBE5195:
.LBE5210:
	.loc 2 1388 0
	stw 9,192(30)
.LVL1268:
.LBB5211:
.LBB5196:
.LBB5187:
	.loc 4 635 0
	slwi 9,10,2
	add 9,29,9
	lwz 9,4(9)
	cmpw 7,9,0
	bne+ 7,.L736
.LVL1269:
.L744:
	.loc 4 636 0
	addi 11,11,132
.LVL1270:
	slwi 11,11,2
.LVL1271:
	add 11,29,11
	lwz 3,4(11)
.LBE5187:
.LBE5196:
	.loc 2 1390 0
	cmpwi 7,3,0
	beq- 7,.L736
.LVL1272:
.LBB5197:
	.loc 2 1391 0
	lwz 9,0(3)
	lwz 0,92(9)
	mtctr 0
	bctrl
	lis 4,.LC117@ha
	la 4,.LC117@l(4)
	bl _ZNK10idAnimator7GetAnimEPKc
.LVL1273:
	.loc 2 1393 0
	mr. 31,3
	beq- 0,.L736
.LVL1274:
.LBB5198:
.LBB5199:
	.loc 4 634 0
	lwz 0,2260(30)
	.loc 4 638 0
	li 3,0
.LVL1275:
	.loc 4 634 0
	rlwinm 9,0,0,20,31
.LVL1276:
	.loc 4 635 0
	srawi 0,0,12
	addi 11,9,4228
	slwi 11,11,2
	add 11,29,11
	lwz 11,4(11)
	cmpw 7,11,0
	beq- 7,.L745
.LVL1277:
.L740:
.LBE5199:
.LBE5198:
	.loc 2 1394 0
	lwz 9,0(3)
	addis 29,29,0x25
	lwz 0,92(9)
	mtctr 0
	bctrl
	lwz 7,2004(29)
	mr 5,31
	li 4,0
	li 6,0
	li 8,0
	bl _ZN10idAnimator8SetFrameEiiiii
.LBE5197:
.LBE5211:
.LBE5215:
	.loc 2 1397 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL1278:
	lwz 31,20(1)
.LVL1279:
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI322:
	.cfi_def_cfa_offset 0
	blr
.LVL1280:
.L745:
.LCFI323:
	.cfi_restore_state
.LBB5216:
.LBB5212:
.LBB5202:
.LBB5201:
.LBB5200:
	.loc 4 636 0
	addi 9,9,132
.LVL1281:
	slwi 9,9,2
.LVL1282:
	add 9,29,9
	lwz 3,4(9)
	b .L740
.LVL1283:
.L741:
.LBE5200:
.LBE5201:
.LBE5202:
.LBE5212:
.LBB5213:
.LBB5175:
.LBB5174:
.LBB5173:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL1284:
	la 3,.LC7@l(3)
	b .L737
.LBE5173:
.LBE5174:
.LBE5175:
.LBE5213:
.LBE5216:
	.cfi_endproc
.LFE2940:
	.size	_ZN27idAFEntity_WithAttachedHead5SpawnEv, .-_ZN27idAFEntity_WithAttachedHead5SpawnEv
	.align 2
	.globl _ZN18idAFEntity_VehicleC2Ev
	.type	_ZN18idAFEntity_VehicleC2Ev, @function
_ZN18idAFEntity_VehicleC2Ev:
.LFB2956:
	.loc 2 1613 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2956
.LVL1285:
	mflr 0
	stwu 1,-16(1)
.LCFI324:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB129:
.LBB5217:
	.loc 2 1613 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN15idAFEntity_BaseC2Ev
.LEHE129:
.LVL1286:
	lis 9,_ZTV18idAFEntity_Vehicle+8@ha
	.loc 2 1615 0
	lis 3,.LC118@ha
	.loc 2 1613 0
	la 0,_ZTV18idAFEntity_Vehicle+8@l(9)
	.loc 2 1615 0
	la 3,.LC118@l(3)
	.loc 2 1613 0
	stw 0,0(31)
	.loc 2 1615 0
	li 4,2276
.LEHB130:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE130:
	.loc 2 1621 0
	li 0,0
	.loc 2 1618 0
	li 9,0
	.loc 2 1619 0
	li 11,-1
	.loc 2 1618 0
	stw 9,2248(31)
	.loc 2 1619 0
	stw 11,2252(31)
	.loc 2 1620 0
	stw 11,2256(31)
	.loc 2 1621 0
	stw 0,2260(31)
	.loc 2 1622 0
	stw 0,2264(31)
	.loc 2 1623 0
	stw 0,2268(31)
	.loc 2 1624 0
	stw 9,2272(31)
.LBE5217:
	.loc 2 1625 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1287:
	addi 1,1,16
	.cfi_remember_state
.LCFI325:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1288:
.L748:
.LCFI326:
	.cfi_restore_state
	mr 30,3
.LBB5218:
	.loc 2 1613 0
	mr 3,31
	bl _ZN15idAFEntity_BaseD2Ev
	mr 3,30
.LEHB131:
	bl _Unwind_Resume
.LEHE131:
.LBE5218:
	.cfi_endproc
.LFE2956:
	.section	.gcc_except_table
.LLSDA2956:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2956-.LLSDACSB2956
.LLSDACSB2956:
	.uleb128 .LEHB129-.LFB2956
	.uleb128 .LEHE129-.LEHB129
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB130-.LFB2956
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L748-.LFB2956
	.uleb128 0
	.uleb128 .LEHB131-.LFB2956
	.uleb128 .LEHE131-.LEHB131
	.uleb128 0
	.uleb128 0
.LLSDACSE2956:
	.section	".text"
	.size	_ZN18idAFEntity_VehicleC2Ev, .-_ZN18idAFEntity_VehicleC2Ev
	.align 2
	.globl _ZN18idAFEntity_Vehicle14CreateInstanceEv
	.type	_ZN18idAFEntity_Vehicle14CreateInstanceEv, @function
_ZN18idAFEntity_Vehicle14CreateInstanceEv:
.LFB2953:
	.loc 2 1605 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2953
	mflr 0
	stwu 1,-24(1)
.LCFI327:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5219:
	li 3,2276
.LBE5219:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB132:
.LBB5220:
	.loc 2 1605 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE132:
	mr 31,3
.LEHB133:
	bl _ZN18idAFEntity_VehicleC1Ev
.LEHE133:
.LVL1289:
	.loc 2 1605 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB134:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE134:
.LVL1290:
.L754:
.LBE5220:
	.loc 2 1605 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI328:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L755:
.L751:
.LCFI329:
	.cfi_restore_state
.LBB5221:
	cmpwi 7,4,1
	beq- 7,.L753
.LEHB135:
	bl _Unwind_Resume
.LEHE135:
.L756:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L751
.L753:
.LBE5221:
.LBB5222:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L754
.LBE5222:
	.cfi_endproc
.LFE2953:
	.section	.gcc_except_table
	.align 2
.LLSDA2953:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2953-.LLSDATTD2953
.LLSDATTD2953:
	.byte	0x1
	.uleb128 .LLSDACSE2953-.LLSDACSB2953
.LLSDACSB2953:
	.uleb128 .LEHB132-.LFB2953
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L755-.LFB2953
	.uleb128 0x1
	.uleb128 .LEHB133-.LFB2953
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L756-.LFB2953
	.uleb128 0x3
	.uleb128 .LEHB134-.LFB2953
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L755-.LFB2953
	.uleb128 0x1
	.uleb128 .LEHB135-.LFB2953
	.uleb128 .LEHE135-.LEHB135
	.uleb128 0
	.uleb128 0
.LLSDACSE2953:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2953:
	.section	".text"
	.size	_ZN18idAFEntity_Vehicle14CreateInstanceEv, .-_ZN18idAFEntity_Vehicle14CreateInstanceEv
	.align 2
	.globl _ZN18idAFEntity_Vehicle3UseEP8idPlayer
	.type	_ZN18idAFEntity_Vehicle3UseEP8idPlayer, @function
_ZN18idAFEntity_Vehicle3UseEP8idPlayer:
.LFB2959:
	.loc 2 1670 0 is_stmt 1
	.cfi_startproc
.LVL1291:
	mflr 0
	stwu 1,-64(1)
.LCFI330:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,68(1)
	stw 30,56(1)
.LBB5240:
	.loc 2 1674 0
	lwz 30,2248(3)
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	cmpwi 7,30,0
	beq- 7,.L758
	.loc 2 1675 0
	cmpw 7,30,4
	beq- 7,.L760
.LVL1292:
.L757:
.LBE5240:
	.loc 2 1692 0
	lwz 0,68(1)
	lwz 30,56(1)
	mtlr 0
	lwz 31,60(1)
.LVL1293:
	addi 1,1,64
	.cfi_remember_state
.LCFI331:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1294:
.L758:
.LCFI332:
	.cfi_restore_state
.LBB5272:
	.loc 2 1683 0
	stw 4,2248(3)
	.loc 2 1684 0
	lis 9,gameLocal+2426836@ha
	lwz 4,2252(3)
.LVL1295:
	addi 6,1,8
	lwz 5,gameLocal+2426836@l(9)
	addi 7,1,20
	addi 3,3,636
.LVL1296:
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL1297:
.LBB5241:
.LBB5242:
.LBB5243:
	.loc 6 454 0
	lfs 0,12(1)
	lfs 13,280(31)
	lfs 11,284(31)
	lfs 12,288(31)
	fmuls 11,0,11
.LBE5243:
.LBE5242:
.LBE5241:
.LBB5252:
.LBB5253:
	lfs 8,272(31)
.LBE5253:
.LBE5252:
.LBB5258:
.LBB5248:
.LBB5244:
	fmuls 12,0,12
.LBE5244:
.LBE5248:
.LBE5258:
.LBB5259:
.LBB5254:
	lfs 9,276(31)
.LBE5254:
.LBE5259:
.LBB5260:
.LBB5249:
.LBB5245:
	fmuls 0,0,13
.LBE5245:
.LBE5249:
.LBE5260:
.LBB5261:
.LBB5255:
	lfs 10,268(31)
.LBE5255:
.LBE5261:
.LBB5262:
.LBB5250:
.LBB5246:
	lfs 13,8(1)
.LBE5246:
.LBE5250:
.LBE5262:
	.loc 2 1686 0
	lwz 3,2248(31)
.LBB5263:
.LBB5256:
	.loc 6 454 0
	fmadds 11,13,8,11
	lfs 8,296(31)
	fmadds 12,13,9,12
	lfs 9,300(31)
	fmadds 13,10,13,0
.LBE5256:
.LBE5263:
.LBB5264:
.LBB5251:
.LBB5247:
	lfs 0,16(1)
.LVL1298:
.LBE5247:
.LBE5251:
.LBE5264:
.LBB5265:
.LBB5257:
	lfs 10,292(31)
	fmadds 11,0,8,11
	fmadds 12,0,9,12
	.loc 3 452 0
	lfs 9,260(31)
	.loc 6 454 0
	fmadds 0,10,0,13
	.loc 3 452 0
	lfs 10,264(31)
	lfs 13,256(31)
	fadds 11,11,9
	fadds 12,12,10
.LVL1299:
	fadds 0,13,0
.LBE5257:
.LBE5265:
.LBB5266:
.LBB5267:
	.loc 3 425 0
	stfs 11,12(1)
	.loc 3 426 0
	stfs 12,16(1)
	.loc 3 424 0
	stfs 0,8(1)
.LBE5267:
.LBE5266:
	.loc 2 1686 0
	bl _ZNK8idEntity10GetPhysicsEv
.LVL1300:
	lwz 9,0(3)
	addi 4,1,8
.LVL1301:
	li 5,-1
	lwz 0,116(9)
	mtctr 0
	bctrl
.LVL1302:
	.loc 2 1687 0
	lwz 3,2248(31)
	mr 4,31
	li 5,0
	li 6,1
	bl _ZN8idEntity10BindToBodyEPS_ib
.LVL1303:
.LBB5268:
.LBB5269:
	.loc 20 879 0
	stb 30,1990(31)
.LVL1304:
.LBE5269:
.LBE5268:
	.loc 2 1690 0
	lwz 9,1656(31)
	addi 3,31,1656
	lwz 0,88(9)
	mtctr 0
	bctrl
	b .L757
.LVL1305:
.L760:
	.loc 2 1676 0
	mr 3,30
	bl _ZN8idEntity6UnbindEv
.LVL1306:
	.loc 2 1677 0
	li 0,0
	stw 0,2248(31)
.LVL1307:
.LBB5270:
.LBB5271:
	.loc 20 879 0
	li 0,1
	stb 0,1990(31)
	b .L757
.LBE5271:
.LBE5270:
.LBE5272:
	.cfi_endproc
.LFE2959:
	.size	_ZN18idAFEntity_Vehicle3UseEP8idPlayer, .-_ZN18idAFEntity_Vehicle3UseEP8idPlayer
	.align 2
	.globl _ZN18idAFEntity_Vehicle13GetSteerAngleEv
	.type	_ZN18idAFEntity_Vehicle13GetSteerAngleEv, @function
_ZN18idAFEntity_Vehicle13GetSteerAngleEv:
.LFB2960:
	.loc 2 1699 0
	.cfi_startproc
.LVL1308:
	stwu 1,-16(1)
.LCFI333:
	.cfi_def_cfa_offset 16
.LBB5273:
	.loc 2 1702 0
	lwz 9,2248(3)
	.loc 2 1703 0
	lfs 13,2264(3)
	.loc 2 1702 0
	lbz 0,3958(9)
	lis 9,0x4330
	stw 9,8(1)
	lis 9,.LC5@ha
	extsb 0,0
	lfs 0,.LC5@l(9)
	xoris 0,0,0x8000
	lis 9,.LC119@ha
	stw 0,12(1)
	lfs 12,.LC119@l(9)
	lfd 1,8(1)
	fsub 1,1,0
	.loc 2 1705 0
	lfs 0,2268(3)
	.loc 2 1702 0
	frsp 1,1
	fmuls 1,1,12
.LVL1309:
	.loc 2 1703 0
	fsubs 12,1,13
.LVL1310:
	.loc 2 1705 0
	fcmpu 7,0,12
	blt- 7,.L771
	.loc 2 1707 0
	fneg 11,0
	fcmpu 7,11,12
	bgt- 7,.L772
.LBE5273:
	.loc 2 1714 0
.LBB5274:
	.loc 2 1710 0
	stfs 1,2264(3)
.LBE5274:
	.loc 2 1714 0
	addi 1,1,16
	.cfi_remember_state
.LCFI334:
	.cfi_def_cfa_offset 0
	blr
.L772:
.LCFI335:
	.cfi_restore_state
.LBB5275:
	.loc 2 1708 0
	fsubs 1,13,0
.LVL1311:
.LBE5275:
	.loc 2 1714 0
	addi 1,1,16
	.cfi_remember_state
.LCFI336:
	.cfi_def_cfa_offset 0
.LBB5276:
	.loc 2 1708 0
	stfs 1,2264(3)
.LBE5276:
	.loc 2 1714 0
	blr
.LVL1312:
.L771:
.LCFI337:
	.cfi_restore_state
.LBB5277:
	.loc 2 1706 0
	fadds 1,13,0
.LVL1313:
.LBE5277:
	.loc 2 1714 0
	addi 1,1,16
.LCFI338:
	.cfi_def_cfa_offset 0
.LBB5278:
	.loc 2 1706 0
	stfs 1,2264(3)
.LBE5278:
	.loc 2 1714 0
	blr
	.cfi_endproc
.LFE2960:
	.size	_ZN18idAFEntity_Vehicle13GetSteerAngleEv, .-_ZN18idAFEntity_Vehicle13GetSteerAngleEv
	.align 2
	.globl _ZN27idAFEntity_VehicleSixWheels5ThinkEv
	.type	_ZN27idAFEntity_VehicleSixWheels5ThinkEv, @function
_ZN27idAFEntity_VehicleSixWheels5ThinkEv:
.LFB2989:
	.loc 2 2200 0
	.cfi_startproc
.LVL1314:
	mflr 0
	stwu 1,-392(1)
.LCFI339:
	.cfi_def_cfa_offset 392
	.cfi_register 65, 0
	stw 31,348(1)
	mr 31,3
	.cfi_offset 31, -44
	stw 0,396(1)
	stfd 27,352(1)
	stfd 28,360(1)
	stfd 29,368(1)
	stfd 30,376(1)
	stfd 31,384(1)
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
	stw 29,340(1)
	stw 30,344(1)
.LBB5347:
.LBB5348:
	.loc 2 2207 0
	lwz 0,152(3)
	.cfi_offset 30, -48
	.cfi_offset 29, -52
	.cfi_offset 28, -56
	.cfi_offset 27, -60
	.cfi_offset 26, -64
	.cfi_offset 25, -68
	.cfi_offset 24, -72
	.cfi_offset 23, -76
	.cfi_offset 22, -80
	.cfi_offset 21, -84
	.cfi_offset 20, -88
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
	.cfi_offset 65, 4
	andi. 9,0,1
	beq- 0,.L774
.LBB5349:
	.loc 2 2209 0
	lwz 9,2248(3)
	cmpwi 7,9,0
	beq- 7,.L790
	.loc 2 2212 0
	lbz 0,3957(9)
.LBB5350:
.LBB5351:
	.loc 16 144 0
	lis 9,g_vehicleVelocity+44@ha
	lwz 9,g_vehicleVelocity+44@l(9)
.LBE5351:
.LBE5350:
	.loc 2 2212 0
	extsb. 0,0
.LBB5353:
.LBB5352:
	.loc 16 144 0
	lfs 31,40(9)
.LVL1315:
.LBE5352:
.LBE5353:
	.loc 2 2212 0
	blt- 0,.L799
.L776:
.LVL1316:
	.loc 2 2215 0
	xoris 0,0,0x8000
	lis 9,.LC5@ha
	stw 0,252(1)
	lis 0,0x4330
	stw 0,248(1)
	.loc 2 2216 0
	mr 3,31
.LVL1317:
	.loc 2 2215 0
	lfs 0,.LC5@l(9)
.LBB5354:
.LBB5355:
	.loc 16 144 0
	lis 9,g_vehicleForce+44@ha
.LBE5355:
.LBE5354:
	.loc 2 2215 0
	lfd 13,248(1)
.LBB5357:
.LBB5356:
	.loc 16 144 0
	lwz 9,g_vehicleForce+44@l(9)
.LBE5356:
.LBE5357:
	.loc 2 2215 0
	fsub 13,13,0
	lfs 0,40(9)
	lis 9,.LC121@ha
	lfs 30,.LC121@l(9)
	frsp 13,13
	fmuls 0,13,0
	stfs 0,276(1)
	lwz 0,276(1)
.LBB5358:
.LBB5359:
	.loc 14 781 0
	rlwinm 0,0,0,1,31
.LBE5359:
.LBE5358:
	.loc 2 2215 0
	stw 0,276(1)
	lfs 0,276(1)
	fmuls 30,0,30
.LVL1318:
	.loc 2 2216 0
	bl _ZN18idAFEntity_Vehicle13GetSteerAngleEv
	lis 9,.LC49@ha
	fmr 29,1
.LVL1319:
	lfs 0,.LC49@l(9)
	fneg 28,1
	fcmpu 7,1,0
	mfcr 0
	rlwinm 0,0,29,1
.LVL1320:
.L775:
	.loc 2 2220 0
	li 11,6
	.loc 2 2200 0
	addi 25,31,2272
	.loc 2 2220 0
	mtctr 11
	.loc 2 2200 0
	mr 9,25
.LVL1321:
.L777:
	.loc 2 2221 0 discriminator 2
	lwzu 11,4(9)
.LVL1322:
.LBB5360:
.LBB5361:
	.loc 20 697 0 discriminator 2
	stfs 31,124(11)
.LBE5361:
.LBE5360:
	.loc 2 2222 0 discriminator 2
	lwz 11,0(9)
.LVL1323:
.LBB5362:
.LBB5363:
	.loc 20 699 0 discriminator 2
	stfs 30,128(11)
.LBE5363:
.LBE5362:
	.loc 2 2220 0 discriminator 2
	bdnz .L777
	.loc 2 2226 0
	cmpwi 7,0,0
	beq- 7,.L778
.LVL1324:
	.loc 2 2228 0 discriminator 1
	lis 11,.LC1@ha
	lwz 9,2276(31)
	lfs 0,.LC1@l(11)
	fmuls 0,31,0
.LVL1325:
.LBB5364:
.LBB5365:
	.loc 20 697 0 discriminator 1
	stfs 0,124(9)
.LVL1326:
.LBE5365:
.LBE5364:
	.loc 2 2228 0 discriminator 1
	lwz 9,2284(31)
.LBB5368:
.LBB5366:
	.loc 20 697 0 discriminator 1
	stfs 0,124(9)
.LVL1327:
.LBE5366:
.LBE5368:
	.loc 2 2228 0 discriminator 1
	lwz 9,2292(31)
.LBB5369:
.LBB5367:
	.loc 20 697 0 discriminator 1
	stfs 0,124(9)
.LVL1328:
.L779:
.LBE5367:
.LBE5369:
	.loc 2 2238 0
	fmr 1,29
	lwz 3,2300(31)
	.loc 2 2200 0
	addi 21,31,2296
	.loc 2 2242 0
	li 30,0
	.loc 2 2200 0
	mr 29,21
	.loc 2 2238 0
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
	.loc 2 2239 0
	fmr 1,29
	lwz 3,2304(31)
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
	.loc 2 2240 0
	fmr 1,28
	lwz 3,2308(31)
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
	.loc 2 2241 0
	fmr 1,28
	lwz 3,2312(31)
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
.LVL1329:
	lis 9,.LC122@ha
	.loc 2 2243 0
	lfs 29,.LC122@l(9)
.LVL1330:
.L781:
	.loc 2 2243 0 is_stmt 0 discriminator 2
	fmr 1,29
	lwzu 3,4(29)
	bl _ZN20idAFConstraint_Hinge13SetSteerSpeedEf
.LVL1331:
	.loc 2 2242 0 is_stmt 1 discriminator 2
	cmpwi 7,30,3
	addi 30,30,1
.LVL1332:
	bne+ 7,.L781
	.loc 2 2247 0
	lis 28,gameLocal@ha
	lwz 4,2256(31)
	la 28,gameLocal@l(28)
	addi 30,31,636
.LVL1333:
	addis 28,28,0x25
	addi 7,1,136
	lwz 5,2004(28)
	addi 6,1,16
	mr 3,30
	.loc 2 2200 0
	addi 26,31,2336
	.loc 2 2247 0
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL1334:
.LBB5370:
.LBB5371:
.LBB5372:
.LBB5373:
	.loc 3 424 0
	lwz 0,160(1)
.LBE5373:
.LBE5372:
.LBE5371:
.LBE5370:
	.loc 2 2250 0
	lwz 29,2256(31)
	addi 3,1,172
.LBB5383:
.LBB5380:
.LBB5377:
.LBB5374:
	.loc 3 424 0
	stw 0,184(1)
.LBE5374:
.LBE5377:
.LBE5380:
.LBE5383:
	.loc 2 2200 0
	addi 23,31,2360
.LBB5384:
.LBB5381:
.LBB5378:
.LBB5375:
	.loc 3 425 0
	lwz 0,164(1)
	addi 27,1,100
.LBE5375:
.LBE5378:
.LBE5381:
.LBE5384:
.LBB5385:
.LBB5386:
	.file 21 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Rotation.h"
	.loc 21 132 0
	stfs 28,196(1)
.LBE5386:
.LBE5385:
.LBB5387:
.LBB5388:
	.loc 21 133 0
	li 24,0
.LBE5388:
.LBE5387:
.LBB5391:
.LBB5382:
.LBB5379:
.LBB5376:
	.loc 3 425 0
	stw 0,188(1)
	.loc 3 426 0
	lwz 0,168(1)
	stw 0,192(1)
.LBE5376:
.LBE5379:
	.loc 21 121 0
	li 0,0
	stb 0,236(1)
.LVL1335:
.LBE5382:
.LBE5391:
	.loc 2 2250 0
	bl _ZNK10idRotation6ToMat3Ev
	mr 6,3
	mr 4,29
	mr 3,30
	li 5,3
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
	.loc 2 2253 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
.LVL1336:
	.loc 2 2260 0
	lis 9,.LC123@ha
	lfs 0,.LC123@l(9)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfs 27,_ZN6idMath8M_MS2SECE@l(9)
	.loc 2 2257 0
	lis 11,.LC49@ha
	.loc 2 2253 0
	lis 9,_ZN6idMath9M_RAD2DEGE@ha
	.loc 2 2257 0
	lfs 29,.LC49@l(11)
	.loc 2 2260 0
	fmuls 27,27,0
	.loc 2 2253 0
	lfs 28,_ZN6idMath9M_RAD2DEGE@l(9)
.LVL1337:
	addi 29,31,1656
.LVL1338:
.L785:
	.loc 2 2257 0
	fcmpu 7,30,29
	bne- 7,.L782
	.loc 2 2927 0
	lwz 9,-60(26)
	lwz 9,416(9)
.LVL1339:
.LBB5392:
.LBB5393:
	.loc 3 435 0
	lfs 0,16(9)
	lfs 13,52(9)
.LBE5393:
.LBE5392:
	lfs 12,48(9)
.LBB5395:
.LBB5394:
	fmuls 13,13,0
.LBE5394:
.LBE5395:
	lfs 0,12(9)
	lfs 31,56(9)
.LVL1340:
	fmadds 0,12,0,13
	lfs 13,20(9)
	fmadds 31,31,13,0
.LVL1341:
.L782:
	.loc 2 2260 0
	fmuls 12,27,31
	lfs 0,2260(31)
	lfsu 13,4(26)
	.loc 2 2263 0
	mr 3,29
.LBB5396:
.LBB5389:
	.loc 21 133 0
	stb 24,236(1)
.LBE5389:
.LBE5396:
	.loc 2 2263 0
	li 4,0
	.loc 2 2260 0
	fdivs 0,12,0
	fadds 0,0,13
	stfs 0,0(26)
.LVL1342:
	.loc 2 2262 0
	fmuls 0,28,0
.LVL1343:
	.loc 2 2263 0
	lwz 9,1656(31)
.LBB5397:
.LBB5390:
	.loc 21 132 0
	stfs 0,196(1)
.LBE5390:
.LBE5397:
	.loc 2 2263 0
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL1344:
.LBB5398:
.LBB5399:
	.loc 6 333 0
	li 10,0
.L783:
.LBB5400:
.LBB5401:
	.loc 3 424 0
	mr 11,3
	addi 9,1,136
.LVL1345:
	lwzux 0,11,10
.LBE5401:
.LBE5400:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB5404:
.LBB5402:
	.loc 3 424 0
	stwux 0,9,10
.LVL1346:
.LBE5402:
.LBE5404:
	.loc 6 333 0
	addi 10,10,12
.LBB5405:
.LBB5403:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE5403:
.LBE5405:
	.loc 6 333 0
	bne+ 7,.L783
	.loc 2 2927 0
	lwz 11,-64(26)
.LBE5399:
.LBE5398:
.LBB5409:
.LBB5410:
.LBB5411:
	.loc 3 402 0
	lfs 7,136(1)
.LBE5411:
.LBE5410:
.LBB5412:
.LBB5413:
	lwz 4,148(1)
.LBE5413:
.LBE5412:
.LBB5414:
.LBB5415:
	lwz 5,160(1)
.LBE5415:
.LBE5414:
.LBB5416:
.LBB5417:
	lwz 6,140(1)
.LBE5417:
.LBE5416:
.LBB5418:
.LBB5419:
	lwz 7,152(1)
.LBE5419:
.LBE5418:
.LBB5420:
.LBB5421:
	lwz 8,164(1)
.LBE5421:
.LBE5420:
.LBB5422:
.LBB5423:
	lwz 10,144(1)
.LBE5423:
.LBE5422:
.LBB5424:
.LBB5425:
	lwz 0,168(1)
.LBE5425:
.LBE5424:
.LBB5426:
.LBB5427:
	lwz 9,156(1)
.LBE5427:
.LBE5426:
.LBE5409:
.LBB5438:
.LBB5406:
	.loc 2 2264 0
	lwz 11,416(11)
.LBE5406:
.LBE5438:
.LBB5439:
.LBB5428:
.LBB5429:
	.loc 6 425 0
	stfs 7,100(1)
	stw 4,104(1)
.LBE5429:
.LBE5428:
.LBE5439:
.LBB5440:
.LBB5407:
	.loc 2 2264 0
	addi 11,11,12
.LBE5407:
.LBE5440:
.LBB5441:
.LBB5434:
.LBB5430:
	.loc 6 425 0
	stw 5,108(1)
	.loc 6 426 0
	stw 6,112(1)
	stw 7,116(1)
	stw 8,120(1)
	.loc 6 427 0
	stw 10,124(1)
	stw 0,132(1)
	stw 9,128(1)
.LVL1347:
.LBE5430:
.LBE5434:
.LBE5441:
.LBB5442:
.LBB5408:
	.loc 6 465 0
	addi 9,1,64
.LVL1348:
.L784:
.LBE5408:
.LBE5442:
.LBB5443:
.LBB5435:
.LBB5431:
	.loc 2 2200 0
	lfs 0,4(11)
.LBE5431:
.LBE5435:
.LBE5443:
.LBB5444:
.LBB5445:
	.loc 6 471 0
	lfs 13,20(27)
	lfs 11,12(27)
	lfs 12,16(27)
	fmuls 11,0,11
	lfs 9,4(27)
	fmuls 12,0,12
	lfs 10,8(27)
	fmuls 0,0,13
.LBE5445:
.LBE5444:
.LBB5448:
.LBB5436:
.LBB5432:
	.loc 2 2200 0
	lfs 13,0(11)
.LBE5432:
.LBE5436:
.LBE5448:
.LBB5449:
.LBB5446:
	.loc 6 471 0
	lfs 8,24(27)
	fmadds 12,13,9,12
	lfs 9,28(27)
	fmadds 11,13,7,11
	fmadds 13,13,10,0
.LBE5446:
.LBE5449:
.LBB5450:
.LBB5437:
.LBB5433:
	.loc 2 2200 0
	lfs 0,8(11)
.LBE5433:
.LBE5437:
.LBE5450:
.LBB5451:
.LBB5447:
	.loc 6 471 0
	lfs 10,32(27)
	.loc 6 474 0
	addi 11,11,12
.LVL1349:
	.loc 6 471 0
	fmadds 11,8,0,11
	fmadds 12,9,0,12
	fmadds 0,10,0,13
	stfs 11,0(9)
.LVL1350:
	stfs 12,4(9)
.LVL1351:
	stfs 0,8(9)
.LVL1352:
	addi 9,9,12
.LVL1353:
	.loc 6 467 0
	cmpw 7,9,27
	bne+ 7,.L784
.LVL1354:
.LBE5447:
.LBE5451:
.LBB5452:
.LBB5453:
.LBB5454:
.LBB5455:
	.loc 3 424 0
	lwz 0,88(1)
.LBE5455:
.LBE5454:
.LBE5453:
.LBE5452:
	.loc 2 2265 0
	addi 3,1,172
	lwz 22,-24(26)
.LBB5461:
.LBB5460:
.LBB5458:
.LBB5456:
	.loc 3 424 0
	stw 0,184(1)
	.loc 3 425 0
	lwz 0,92(1)
.LBE5456:
.LBE5458:
	.loc 21 121 0
	stb 24,236(1)
.LBB5459:
.LBB5457:
	.loc 3 425 0
	stw 0,188(1)
	.loc 3 426 0
	lwz 0,96(1)
	stw 0,192(1)
.LBE5457:
.LBE5459:
.LBE5460:
.LBE5461:
	.loc 2 2265 0
	bl _ZNK10idRotation6ToMat3Ev
.LVL1355:
	mr 6,3
	mr 4,22
	mr 3,30
	li 5,3
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
	.loc 2 2256 0
	cmpw 7,26,23
	bne+ 7,.L785
.LBB5462:
	.loc 2 2269 0
	lis 9,.LC49@ha
	lfs 0,.LC49@l(9)
	fcmpu 7,30,0
	beq- 7,.L774
	.loc 2 2269 0 is_stmt 0 discriminator 1
	lwz 0,1996(28)
	andi. 11,0,7
	bne- 0,.L774
.LBB5463:
.LBB5464:
.LBB5465:
.LBB5466:
.LBB5467:
.LBB5468:
.LBB5469:
.LBB5470:
	.loc 10 71 0 is_stmt 1
	lis 19,0x1
	lis 16,.LC5@ha
	lis 17,gameLocal+65536@ha
	lis 18,.LC6@ha
	ori 19,19,3533
.LBE5470:
.LBE5469:
	.loc 10 83 0
	lis 20,0x4330
.LVL1356:
.L788:
.LBE5468:
.LBE5467:
.LBE5466:
	.loc 2 2927 0
	lwzu 9,4(25)
	.loc 2 2273 0
	mr 3,29
	addi 5,1,8
	li 6,2
	.loc 2 2927 0
	lwz 9,52(9)
	.loc 2 2273 0
	lwz 4,8(9)
	bl _ZNK12idPhysics_AF25GetBodyContactConstraintsEiPP22idAFConstraint_Contacti
.LVL1357:
.LBB5491:
	.loc 2 2274 0
	mr. 24,3
	ble- 0,.L786
	addi 26,1,4
	li 30,0
	la 27,gameLocal+65536@l(17)
	la 22,.LC5@l(16)
	la 23,.LC6@l(18)
.LVL1358:
.L787:
.LBB5484:
.LBB5477:
.LBB5474:
.LBB5471:
	.loc 10 71 0 discriminator 2
	lwz 14,-32064(27)
.LBE5471:
.LBE5474:
.LBE5477:
.LBE5484:
	.loc 2 2275 0 discriminator 2
	addi 3,1,28
	lwzu 15,4(26)
	.loc 2 2274 0 discriminator 2
	addi 30,30,1
.LBB5485:
.LBB5478:
.LBB5475:
.LBB5472:
	.loc 10 71 0 discriminator 2
	mullw 14,19,14
.LBE5472:
.LBE5475:
.LBE5478:
.LBE5485:
	.loc 2 2275 0 discriminator 2
	lwz 0,2272(31)
	lwz 9,1972(28)
	addi 4,15,252
	lwz 5,2004(28)
.LVL1359:
.LBB5486:
.LBB5479:
.LBB5476:
.LBB5473:
	.loc 10 71 0 discriminator 2
	addi 14,14,1
	stw 14,-32064(27)
	.loc 10 72 0 discriminator 2
	rlwinm 14,14,0,17,31
.LBE5473:
.LBE5476:
	.loc 10 83 0 discriminator 2
	xoris 14,14,0x8000
.LBE5479:
.LBE5486:
	.loc 2 2275 0 discriminator 2
	stw 0,268(1)
	stw 5,272(1)
	stw 9,264(1)
	bl _ZNK6idVec36ToMat3Ev
.LVL1360:
.LBB5487:
.LBB5480:
	.loc 10 83 0 discriminator 2
	stw 14,260(1)
.LBE5480:
.LBE5487:
	.loc 2 2275 0 discriminator 2
	addi 6,15,240
.LBB5488:
.LBB5481:
	.loc 10 83 0 discriminator 2
	stw 20,256(1)
.LBE5481:
.LBE5488:
	.loc 2 2275 0 discriminator 2
	addi 7,1,28
.LBB5489:
.LBB5482:
	.loc 10 83 0 discriminator 2
	lfs 13,0(22)
	lfd 1,256(1)
	lfs 0,0(23)
	fsub 1,1,13
.LBE5482:
.LBE5489:
	.loc 2 2275 0 discriminator 2
	lwz 9,264(1)
	lwz 0,268(1)
	lwz 5,272(1)
	mr 3,9
.LBB5490:
.LBB5483:
	.loc 10 83 0 discriminator 2
	frsp 1,1
.LBE5483:
.LBE5490:
	.loc 2 2275 0 discriminator 2
	mr 4,0
	fmuls 1,1,0
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
.LVL1361:
	.loc 2 2274 0 discriminator 2
	cmpw 7,30,24
	bne+ 7,.L787
.LVL1362:
.L786:
.LBE5491:
.LBE5465:
	.loc 2 2272 0
	cmpw 7,25,21
	bne+ 7,.L788
.LVL1363:
.L774:
.LBE5464:
.LBE5463:
.LBE5462:
.LBE5349:
.LBE5348:
	.loc 2 2281 0
	mr 3,31
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
	.loc 2 2282 0
	lwz 0,152(31)
	andi. 9,0,8
	beq+ 0,.L773
	.loc 2 2283 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 2284 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
.L773:
.LBE5347:
	.loc 2 2286 0
	lwz 0,396(1)
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
.LVL1364:
	lfd 27,352(1)
	lfd 28,360(1)
	lfd 29,368(1)
	lfd 30,376(1)
	lfd 31,384(1)
	addi 1,1,392
	.cfi_remember_state
.LCFI340:
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
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL1365:
.L778:
.LCFI341:
	.cfi_restore_state
.LBB5500:
.LBB5499:
.LBB5498:
	.loc 2 2231 0
	lis 9,.LC49@ha
	lfs 0,.LC49@l(9)
	fcmpu 7,29,0
	bng- 7,.L779
.LVL1366:
	.loc 2 2233 0 discriminator 1
	lis 11,.LC1@ha
	lwz 9,2280(31)
	lfs 0,.LC1@l(11)
	fmuls 0,31,0
.LVL1367:
.LBB5492:
.LBB5493:
	.loc 20 697 0 discriminator 1
	stfs 0,124(9)
.LVL1368:
.LBE5493:
.LBE5492:
	.loc 2 2233 0 discriminator 1
	lwz 9,2288(31)
.LBB5496:
.LBB5494:
	.loc 20 697 0 discriminator 1
	stfs 0,124(9)
.LVL1369:
.LBE5494:
.LBE5496:
	.loc 2 2233 0 discriminator 1
	lwz 9,2296(31)
.LBB5497:
.LBB5495:
	.loc 20 697 0 discriminator 1
	stfs 0,124(9)
.LVL1370:
	b .L779
.LVL1371:
.L790:
.LBE5495:
.LBE5497:
	.loc 2 2202 0
	lis 11,.LC49@ha
	.loc 2 2209 0
	lis 9,.LC120@ha
	.loc 2 2202 0
	lfs 29,.LC49@l(11)
	.loc 2 2209 0
	li 0,0
	lfs 28,.LC120@l(9)
	.loc 2 2202 0
	fmr 31,29
	fmr 30,29
	b .L775
.LVL1372:
.L799:
	.loc 2 2213 0
	fneg 31,31
.LVL1373:
	b .L776
.LBE5498:
.LBE5499:
.LBE5500:
	.cfi_endproc
.LFE2989:
	.size	_ZN27idAFEntity_VehicleSixWheels5ThinkEv, .-_ZN27idAFEntity_VehicleSixWheels5ThinkEv
	.align 2
	.globl _ZN28idAFEntity_VehicleFourWheels5ThinkEv
	.type	_ZN28idAFEntity_VehicleFourWheels5ThinkEv, @function
_ZN28idAFEntity_VehicleFourWheels5ThinkEv:
.LFB2982:
	.loc 2 2012 0
	.cfi_startproc
.LVL1374:
	mflr 0
	stwu 1,-392(1)
.LCFI342:
	.cfi_def_cfa_offset 392
	.cfi_register 65, 0
	stw 31,348(1)
	mr 31,3
	.cfi_offset 31, -44
	stw 0,396(1)
	stfd 27,352(1)
	stfd 28,360(1)
	stfd 29,368(1)
	stfd 30,376(1)
	stfd 31,384(1)
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
	stw 29,340(1)
	stw 30,344(1)
.LBB5569:
.LBB5570:
	.loc 2 2019 0
	lwz 0,152(3)
	.cfi_offset 30, -48
	.cfi_offset 29, -52
	.cfi_offset 28, -56
	.cfi_offset 27, -60
	.cfi_offset 26, -64
	.cfi_offset 25, -68
	.cfi_offset 24, -72
	.cfi_offset 23, -76
	.cfi_offset 22, -80
	.cfi_offset 21, -84
	.cfi_offset 20, -88
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
	.cfi_offset 65, 4
	andi. 9,0,1
	beq- 0,.L801
.LBB5571:
	.loc 2 2021 0
	lwz 9,2248(3)
	cmpwi 7,9,0
	beq- 7,.L802
	.loc 2 2024 0
	lbz 0,3957(9)
.LBB5572:
.LBB5573:
	.loc 16 144 0
	lis 9,g_vehicleVelocity+44@ha
	lwz 9,g_vehicleVelocity+44@l(9)
.LBE5573:
.LBE5572:
	.loc 2 2024 0
	extsb. 0,0
.LBB5575:
.LBB5574:
	.loc 16 144 0
	lfs 31,40(9)
.LVL1375:
.LBE5574:
.LBE5575:
	.loc 2 2024 0
	blt- 0,.L824
.L803:
.LVL1376:
	.loc 2 2027 0
	xoris 0,0,0x8000
	lis 9,.LC5@ha
	stw 0,252(1)
	lis 0,0x4330
	stw 0,248(1)
	.loc 2 2028 0
	mr 3,31
.LVL1377:
	.loc 2 2027 0
	lfs 0,.LC5@l(9)
.LBB5576:
.LBB5577:
	.loc 16 144 0
	lis 9,g_vehicleForce+44@ha
.LBE5577:
.LBE5576:
	.loc 2 2027 0
	lfd 13,248(1)
.LBB5579:
.LBB5578:
	.loc 16 144 0
	lwz 9,g_vehicleForce+44@l(9)
.LBE5578:
.LBE5579:
	.loc 2 2027 0
	fsub 13,13,0
	lfs 0,40(9)
	lis 9,.LC121@ha
	lfs 30,.LC121@l(9)
	frsp 13,13
	fmuls 0,13,0
	stfs 0,276(1)
	lwz 0,276(1)
.LBB5580:
.LBB5581:
	.loc 14 781 0
	rlwinm 0,0,0,1,31
.LBE5581:
.LBE5580:
	.loc 2 2027 0
	stw 0,276(1)
	lfs 0,276(1)
	fmuls 30,0,30
.LVL1378:
	.loc 2 2028 0
	bl _ZN18idAFEntity_Vehicle13GetSteerAngleEv
	.loc 2 2033 0
	lwz 9,2284(31)
	.loc 2 2028 0
	fmr 29,1
.LVL1379:
.LBB5582:
.LBB5583:
	.loc 20 697 0
	stfs 31,124(9)
.LBE5583:
.LBE5582:
	.loc 2 2038 0
	lis 9,.LC49@ha
	lfs 0,.LC49@l(9)
	.loc 2 2034 0
	lwz 9,2284(31)
.LVL1380:
	.loc 2 2038 0
	fcmpu 7,1,0
.LBB5587:
.LBB5588:
	.loc 20 699 0
	stfs 30,128(9)
.LVL1381:
.LBE5588:
.LBE5587:
	.loc 2 2033 0
	lwz 9,2288(31)
.LBB5594:
.LBB5584:
	.loc 20 697 0
	stfs 31,124(9)
.LBE5584:
.LBE5594:
	.loc 2 2034 0
	lwz 9,2288(31)
.LBB5595:
.LBB5589:
	.loc 20 699 0
	stfs 30,128(9)
.LVL1382:
.LBE5589:
.LBE5595:
	.loc 2 2038 0
	bnl- 7,.L822
	.loc 2 2039 0
	lwz 9,2284(31)
.LVL1383:
.L823:
	.loc 2 2042 0
	lis 11,.LC1@ha
.LBB5596:
.LBB5597:
	.loc 20 697 0
	fneg 28,29
.LBE5597:
.LBE5596:
	.loc 2 2042 0
	lfs 0,.LC1@l(11)
	fmuls 0,31,0
.LBB5599:
.LBB5598:
	.loc 20 697 0
	stfs 0,124(9)
.LVL1384:
.L806:
.LBE5598:
.LBE5599:
	.loc 2 2046 0
	fmr 1,29
	lwz 3,2292(31)
	.loc 2 2053 0
	lis 28,gameLocal@ha
	addi 29,31,636
	la 28,gameLocal@l(28)
	.loc 2 2012 0
	addi 30,31,2312
	.loc 2 2046 0
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
	.loc 2 2047 0
	fmr 1,29
	lwz 3,2296(31)
	.loc 2 2053 0
	addis 28,28,0x25
	.loc 2 2012 0
	addi 26,31,2328
	addi 25,1,100
	.loc 2 2047 0
	bl _ZN20idAFConstraint_Hinge13SetSteerAngleEf
.LVL1385:
	.loc 2 2049 0
	lis 9,.LC122@ha
	lfs 29,.LC122@l(9)
.LBB5600:
.LBB5601:
	.loc 21 133 0
	li 24,0
.LBE5601:
.LBE5600:
	.loc 2 2049 0
	lwz 3,2292(31)
	fmr 1,29
	bl _ZN20idAFConstraint_Hinge13SetSteerSpeedEf
.LVL1386:
	fmr 1,29
	lwz 3,2296(31)
	bl _ZN20idAFConstraint_Hinge13SetSteerSpeedEf
.LVL1387:
	.loc 2 2053 0
	lwz 5,2004(28)
	lwz 4,2256(31)
	addi 7,1,136
	addi 6,1,16
	mr 3,29
	bl _ZN10idAnimator17GetJointTransformE13jointHandle_tiR6idVec3R6idMat3
.LVL1388:
.LBB5604:
.LBB5605:
.LBB5606:
.LBB5607:
	.loc 3 424 0
	lwz 0,160(1)
.LBE5607:
.LBE5606:
.LBE5605:
.LBE5604:
	.loc 2 2056 0
	lwz 27,2256(31)
	addi 3,1,172
.LBB5614:
.LBB5612:
.LBB5610:
.LBB5608:
	.loc 3 424 0
	stw 0,184(1)
	.loc 3 425 0
	lwz 0,164(1)
.LBE5608:
.LBE5610:
.LBE5612:
.LBE5614:
.LBB5615:
.LBB5616:
	.loc 21 132 0
	stfs 28,196(1)
.LBE5616:
.LBE5615:
.LBB5617:
.LBB5613:
.LBB5611:
.LBB5609:
	.loc 3 425 0
	stw 0,188(1)
	.loc 3 426 0
	lwz 0,168(1)
	stw 0,192(1)
.LBE5609:
.LBE5611:
	.loc 21 121 0
	li 0,0
	stb 0,236(1)
.LVL1389:
.LBE5613:
.LBE5617:
	.loc 2 2056 0
	bl _ZNK10idRotation6ToMat3Ev
	mr 6,3
	mr 4,27
	mr 3,29
	li 5,3
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
	.loc 2 2059 0
	mr 3,31
	bl _ZN8idEntity10RunPhysicsEv
.LVL1390:
	.loc 2 2066 0
	lis 9,.LC123@ha
	lfs 0,.LC123@l(9)
	lis 9,_ZN6idMath8M_MS2SECE@ha
	lfs 27,_ZN6idMath8M_MS2SECE@l(9)
	.loc 2 2059 0
	lis 9,_ZN6idMath9M_RAD2DEGE@ha
	lfs 28,_ZN6idMath9M_RAD2DEGE@l(9)
.LVL1391:
	.loc 2 2063 0
	lis 9,.LC49@ha
	.loc 2 2066 0
	fmuls 27,27,0
	.loc 2 2063 0
	lfs 29,.LC49@l(9)
	addi 27,31,1656
.LVL1392:
.L811:
	fcmpu 7,30,29
	bne- 7,.L808
	.loc 2 2927 0
	lwz 9,-36(30)
	lwz 9,416(9)
.LVL1393:
.LBB5618:
.LBB5619:
	.loc 3 435 0
	lfs 0,16(9)
	lfs 13,52(9)
.LBE5619:
.LBE5618:
	lfs 12,48(9)
.LBB5621:
.LBB5620:
	fmuls 13,13,0
.LBE5620:
.LBE5621:
	lfs 0,12(9)
	lfs 31,56(9)
.LVL1394:
	fmadds 0,12,0,13
	lfs 13,20(9)
	fmadds 31,31,13,0
.LVL1395:
.L808:
	.loc 2 2066 0
	fmuls 12,27,31
	lfs 0,2260(31)
	lfsu 13,4(30)
	.loc 2 2069 0
	mr 3,27
.LBB5622:
.LBB5602:
	.loc 21 133 0
	stb 24,236(1)
.LBE5602:
.LBE5622:
	.loc 2 2069 0
	li 4,0
	.loc 2 2066 0
	fdivs 0,12,0
	fadds 0,0,13
	stfs 0,0(30)
.LVL1396:
	.loc 2 2068 0
	fmuls 0,0,28
.LVL1397:
	.loc 2 2069 0
	lwz 9,1656(31)
.LBB5623:
.LBB5603:
	.loc 21 132 0
	stfs 0,196(1)
.LBE5603:
.LBE5623:
	.loc 2 2069 0
	lwz 0,136(9)
	mtctr 0
	bctrl
.LVL1398:
.LBB5624:
.LBB5625:
	.loc 6 333 0
	li 10,0
.L809:
.LBB5626:
.LBB5627:
	.loc 3 424 0
	mr 11,3
	addi 9,1,136
.LVL1399:
	lwzux 0,11,10
.LBE5627:
.LBE5626:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB5630:
.LBB5628:
	.loc 3 424 0
	stwux 0,9,10
.LVL1400:
.LBE5628:
.LBE5630:
	.loc 6 333 0
	addi 10,10,12
.LBB5631:
.LBB5629:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE5629:
.LBE5631:
	.loc 6 333 0
	bne+ 7,.L809
	.loc 2 2927 0
	lwz 11,-40(30)
.LBE5625:
.LBE5624:
.LBB5635:
.LBB5636:
.LBB5637:
	.loc 3 402 0
	lfs 7,136(1)
.LBE5637:
.LBE5636:
.LBB5638:
.LBB5639:
	lwz 4,148(1)
.LBE5639:
.LBE5638:
.LBB5640:
.LBB5641:
	lwz 5,160(1)
.LBE5641:
.LBE5640:
.LBB5642:
.LBB5643:
	lwz 6,140(1)
.LBE5643:
.LBE5642:
.LBB5644:
.LBB5645:
	lwz 7,152(1)
.LBE5645:
.LBE5644:
.LBB5646:
.LBB5647:
	lwz 8,164(1)
.LBE5647:
.LBE5646:
.LBB5648:
.LBB5649:
	lwz 10,144(1)
.LBE5649:
.LBE5648:
.LBB5650:
.LBB5651:
	lwz 0,168(1)
.LBE5651:
.LBE5650:
.LBB5652:
.LBB5653:
	lwz 9,156(1)
.LBE5653:
.LBE5652:
.LBE5635:
.LBB5664:
.LBB5632:
	.loc 2 2070 0
	lwz 11,416(11)
.LBE5632:
.LBE5664:
.LBB5665:
.LBB5654:
.LBB5655:
	.loc 6 425 0
	stfs 7,100(1)
	stw 4,104(1)
.LBE5655:
.LBE5654:
.LBE5665:
.LBB5666:
.LBB5633:
	.loc 2 2070 0
	addi 11,11,12
.LBE5633:
.LBE5666:
.LBB5667:
.LBB5660:
.LBB5656:
	.loc 6 425 0
	stw 5,108(1)
	.loc 6 426 0
	stw 6,112(1)
	stw 7,116(1)
	stw 8,120(1)
	.loc 6 427 0
	stw 10,124(1)
	stw 0,132(1)
	stw 9,128(1)
.LVL1401:
.LBE5656:
.LBE5660:
.LBE5667:
.LBB5668:
.LBB5634:
	.loc 6 465 0
	addi 9,1,64
.LVL1402:
.L810:
.LBE5634:
.LBE5668:
.LBB5669:
.LBB5661:
.LBB5657:
	.loc 2 2012 0
	lfs 0,4(11)
.LBE5657:
.LBE5661:
.LBE5669:
.LBB5670:
.LBB5671:
	.loc 6 471 0
	lfs 13,20(25)
	lfs 11,12(25)
	lfs 12,16(25)
	fmuls 11,0,11
	lfs 9,4(25)
	fmuls 12,0,12
	lfs 10,8(25)
	fmuls 0,0,13
.LBE5671:
.LBE5670:
.LBB5674:
.LBB5662:
.LBB5658:
	.loc 2 2012 0
	lfs 13,0(11)
.LBE5658:
.LBE5662:
.LBE5674:
.LBB5675:
.LBB5672:
	.loc 6 471 0
	lfs 8,24(25)
	fmadds 12,13,9,12
	lfs 9,28(25)
	fmadds 11,7,13,11
	fmadds 13,13,10,0
.LBE5672:
.LBE5675:
.LBB5676:
.LBB5663:
.LBB5659:
	.loc 2 2012 0
	lfs 0,8(11)
.LBE5659:
.LBE5663:
.LBE5676:
.LBB5677:
.LBB5673:
	.loc 6 471 0
	lfs 10,32(25)
	.loc 6 474 0
	addi 11,11,12
.LVL1403:
	.loc 6 471 0
	fmadds 11,8,0,11
	fmadds 12,9,0,12
	fmadds 0,10,0,13
	stfs 11,0(9)
.LVL1404:
	stfs 12,4(9)
.LVL1405:
	stfs 0,8(9)
.LVL1406:
	addi 9,9,12
.LVL1407:
	.loc 6 467 0
	cmpw 7,9,25
	bne+ 7,.L810
.LVL1408:
.LBE5673:
.LBE5677:
.LBB5678:
.LBB5679:
.LBB5680:
.LBB5681:
	.loc 3 424 0
	lwz 0,88(1)
.LBE5681:
.LBE5680:
.LBE5679:
.LBE5678:
	.loc 2 2071 0
	addi 3,1,172
	lwz 23,-16(30)
.LBB5687:
.LBB5686:
.LBB5684:
.LBB5682:
	.loc 3 424 0
	stw 0,184(1)
	.loc 3 425 0
	lwz 0,92(1)
.LBE5682:
.LBE5684:
	.loc 21 121 0
	stb 24,236(1)
.LBB5685:
.LBB5683:
	.loc 3 425 0
	stw 0,188(1)
	.loc 3 426 0
	lwz 0,96(1)
	stw 0,192(1)
.LBE5683:
.LBE5685:
.LBE5686:
.LBE5687:
	.loc 2 2071 0
	bl _ZNK10idRotation6ToMat3Ev
.LVL1409:
	mr 6,3
	mr 4,23
	mr 3,29
	li 5,3
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
	.loc 2 2062 0
	cmpw 7,30,26
	bne+ 7,.L811
.LBB5688:
	.loc 2 2075 0
	lis 9,.LC49@ha
	lfs 0,.LC49@l(9)
	fcmpu 7,30,0
	beq- 7,.L801
	.loc 2 2075 0 is_stmt 0 discriminator 1
	lwz 0,1996(28)
	andi. 9,0,7
	bne- 0,.L801
.LBB5689:
.LBB5690:
.LBB5691:
.LBB5692:
.LBB5693:
.LBB5694:
.LBB5695:
.LBB5696:
	.loc 10 71 0 is_stmt 1
	lis 20,0x1
.LBE5696:
.LBE5695:
.LBE5694:
.LBE5693:
.LBE5692:
.LBE5691:
.LBE5690:
.LBE5689:
	.loc 2 2012 0
	addi 25,31,2272
.LVL1410:
	addi 19,31,2288
	lis 16,.LC5@ha
	lis 17,gameLocal+65536@ha
	lis 18,.LC6@ha
.LBB5725:
.LBB5724:
.LBB5723:
.LBB5721:
.LBB5713:
.LBB5705:
.LBB5701:
.LBB5697:
	.loc 10 71 0
	ori 20,20,3533
.LBE5697:
.LBE5701:
	.loc 10 83 0
	lis 21,0x4330
.L814:
.LBE5705:
.LBE5713:
.LBE5721:
	.loc 2 2927 0
	lwzu 9,4(25)
	.loc 2 2079 0
	mr 3,27
	addi 5,1,8
	li 6,2
	.loc 2 2927 0
	lwz 9,52(9)
	.loc 2 2079 0
	lwz 4,8(9)
	bl _ZNK12idPhysics_AF25GetBodyContactConstraintsEiPP22idAFConstraint_Contacti
.LVL1411:
.LBB5722:
	.loc 2 2080 0
	mr. 24,3
	ble- 0,.L812
	addi 26,1,4
	li 30,0
	la 29,gameLocal+65536@l(17)
	la 22,.LC5@l(16)
	la 23,.LC6@l(18)
.LVL1412:
.L813:
.LBB5714:
.LBB5706:
.LBB5702:
.LBB5698:
	.loc 10 71 0 discriminator 2
	lwz 14,-32064(29)
.LBE5698:
.LBE5702:
.LBE5706:
.LBE5714:
	.loc 2 2081 0 discriminator 2
	addi 3,1,28
	lwzu 15,4(26)
	.loc 2 2080 0 discriminator 2
	addi 30,30,1
.LBB5715:
.LBB5707:
.LBB5703:
.LBB5699:
	.loc 10 71 0 discriminator 2
	mullw 14,20,14
.LBE5699:
.LBE5703:
.LBE5707:
.LBE5715:
	.loc 2 2081 0 discriminator 2
	lwz 0,2272(31)
	lwz 9,1972(28)
	addi 4,15,252
	lwz 5,2004(28)
.LVL1413:
.LBB5716:
.LBB5708:
.LBB5704:
.LBB5700:
	.loc 10 71 0 discriminator 2
	addi 14,14,1
	stw 14,-32064(29)
	.loc 10 72 0 discriminator 2
	rlwinm 14,14,0,17,31
.LBE5700:
.LBE5704:
	.loc 10 83 0 discriminator 2
	xoris 14,14,0x8000
.LBE5708:
.LBE5716:
	.loc 2 2081 0 discriminator 2
	stw 0,268(1)
	stw 5,272(1)
	stw 9,264(1)
	bl _ZNK6idVec36ToMat3Ev
.LVL1414:
.LBB5717:
.LBB5709:
	.loc 10 83 0 discriminator 2
	stw 14,260(1)
.LBE5709:
.LBE5717:
	.loc 2 2081 0 discriminator 2
	addi 6,15,240
.LBB5718:
.LBB5710:
	.loc 10 83 0 discriminator 2
	stw 21,256(1)
.LBE5710:
.LBE5718:
	.loc 2 2081 0 discriminator 2
	addi 7,1,28
.LBB5719:
.LBB5711:
	.loc 10 83 0 discriminator 2
	lfs 13,0(22)
	lfd 1,256(1)
	lfs 0,0(23)
	fsub 1,1,13
.LBE5711:
.LBE5719:
	.loc 2 2081 0 discriminator 2
	lwz 9,264(1)
	lwz 0,268(1)
	lwz 5,272(1)
	mr 3,9
.LBB5720:
.LBB5712:
	.loc 10 83 0 discriminator 2
	frsp 1,1
.LBE5712:
.LBE5720:
	.loc 2 2081 0 discriminator 2
	mr 4,0
	fmuls 1,1,0
	bl _ZN16idSmokeParticles9EmitSmokeEPK14idDeclParticleifRK6idVec3RK6idMat3
.LVL1415:
	.loc 2 2080 0 discriminator 2
	cmpw 7,30,24
	bne+ 7,.L813
.LVL1416:
.L812:
.LBE5722:
.LBE5723:
	.loc 2 2078 0
	cmpw 7,25,19
	bne+ 7,.L814
.LVL1417:
.L801:
.LBE5724:
.LBE5725:
.LBE5688:
.LBE5571:
.LBE5570:
	.loc 2 2087 0
	mr 3,31
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
	.loc 2 2088 0
	lwz 0,152(31)
	andi. 9,0,8
	beq+ 0,.L800
	.loc 2 2089 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 2090 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
.L800:
.LBE5569:
	.loc 2 2092 0
	lwz 0,396(1)
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
.LVL1418:
	lfd 27,352(1)
	lfd 28,360(1)
	lfd 29,368(1)
	lfd 30,376(1)
	lfd 31,384(1)
	addi 1,1,392
	.cfi_remember_state
.LCFI343:
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
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL1419:
.L802:
.LCFI344:
	.cfi_restore_state
.LBB5734:
.LBB5733:
.LBB5732:
	.loc 2 2033 0
	lwz 9,2284(3)
.LVL1420:
.LBB5726:
.LBB5585:
	.loc 20 697 0
	li 0,0
	stw 0,124(9)
.LBE5585:
.LBE5726:
.LBB5727:
.LBB5590:
	.loc 2 2014 0
	stw 0,276(1)
.LBE5590:
.LBE5727:
	.loc 2 2034 0
	lwz 9,2284(3)
.LVL1421:
.LBB5728:
.LBB5591:
	.loc 2 2014 0
	lfs 29,276(1)
	.loc 20 699 0
	stw 0,128(9)
.LVL1422:
	lis 9,.LC120@ha
	lfs 28,.LC120@l(9)
	.loc 2 2014 0
	fmr 31,29
.LBE5591:
.LBE5728:
	.loc 2 2033 0
	lwz 9,2288(3)
.LBB5729:
.LBB5592:
	.loc 2 2014 0
	fmr 30,29
.LBE5592:
.LBE5729:
.LBB5730:
.LBB5586:
	.loc 20 697 0
	stw 0,124(9)
.LBE5586:
.LBE5730:
	.loc 2 2034 0
	lwz 9,2288(3)
.LBB5731:
.LBB5593:
	.loc 20 699 0
	stw 0,128(9)
.LVL1423:
	b .L806
.LVL1424:
.L822:
.LBE5593:
.LBE5731:
	.loc 2 2041 0
	bng- 7,.L825
	.loc 2 2042 0
	lwz 9,2288(31)
	b .L823
.LVL1425:
.L824:
	.loc 2 2025 0
	fneg 31,31
.LVL1426:
	b .L803
.LVL1427:
.L825:
	.loc 2 2041 0
	fneg 28,1
	b .L806
.LBE5732:
.LBE5733:
.LBE5734:
	.cfi_endproc
.LFE2982:
	.size	_ZN28idAFEntity_VehicleFourWheels5ThinkEv, .-_ZN28idAFEntity_VehicleFourWheels5ThinkEv
	.align 2
	.globl _ZN24idAFEntity_VehicleSimple5ThinkEv
	.type	_ZN24idAFEntity_VehicleSimple5ThinkEv, @function
_ZN24idAFEntity_VehicleSimple5ThinkEv:
.LFB2975:
	.loc 2 1810 0
	.cfi_startproc
.LVL1428:
	mflr 0
	stwu 1,-320(1)
.LCFI345:
	.cfi_def_cfa_offset 320
	.cfi_register 65, 0
	stw 31,292(1)
	mr 31,3
	.cfi_offset 31, -28
	stw 0,324(1)
	stfd 29,296(1)
	stfd 30,304(1)
	stfd 31,312(1)
	stw 17,236(1)
	stw 18,240(1)
	stw 19,244(1)
	stw 20,248(1)
	stw 21,252(1)
	stw 22,256(1)
	stw 23,260(1)
	stw 24,264(1)
	stw 25,268(1)
	stw 26,272(1)
	stw 27,276(1)
	stw 28,280(1)
	stw 29,284(1)
	stw 30,288(1)
.LBB5818:
.LBB5819:
	.loc 2 1817 0
	lwz 0,152(3)
	.cfi_offset 30, -32
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
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	andi. 9,0,1
	beq- 0,.L827
.LBB5820:
	.loc 2 1819 0
	lwz 9,2248(3)
	cmpwi 7,9,0
	beq- 7,.L845
	.loc 2 1822 0
	lbz 0,3957(9)
.LBB5821:
.LBB5822:
	.loc 16 144 0
	lis 9,g_vehicleVelocity+44@ha
	lwz 9,g_vehicleVelocity+44@l(9)
.LBE5822:
.LBE5821:
	.loc 2 1822 0
	extsb. 0,0
.LBB5824:
.LBB5823:
	.loc 16 144 0
	lfs 30,40(9)
.LVL1429:
.LBE5823:
.LBE5824:
	.loc 2 1822 0
	blt- 0,.L851
.L829:
.LVL1430:
	.loc 2 1825 0
	xoris 0,0,0x8000
	lis 9,.LC5@ha
	stw 0,220(1)
	lis 0,0x4330
	stw 0,216(1)
	.loc 2 1826 0
	mr 3,31
.LVL1431:
	.loc 2 1825 0
	lfs 0,.LC5@l(9)
.LBB5825:
.LBB5826:
	.loc 16 144 0
	lis 9,g_vehicleForce+44@ha
.LBE5826:
.LBE5825:
	.loc 2 1825 0
	lfd 13,216(1)
.LBB5828:
.LBB5827:
	.loc 16 144 0
	lwz 9,g_vehicleForce+44@l(9)
.LBE5827:
.LBE5828:
	.loc 2 1825 0
	fsub 13,13,0
	lfs 0,40(9)
	lis 9,.LC121@ha
	lfs 29,.LC121@l(9)
	frsp 13,13
	fmuls 0,13,0
	stfs 0,224(1)
	lwz 0,224(1)
.LBB5829:
.LBB5830:
	.loc 14 781 0
	rlwinm 0,0,0,1,31
.LBE5830:
.LBE5829:
	.loc 2 1825 0
	stw 0,224(1)
	lfs 0,224(1)
	fmuls 29,0,29
.LVL1432:
	.loc 2 1826 0
	bl _ZN18idAFEntity_Vehicle13GetSteerAngleEv
	lis 9,.LC49@ha
	fmr 31,1
.LVL1433:
	lfs 0,.LC49@l(9)
	.loc 2 1833 0
	fcmpu 7,30,0
	.loc 2 1826 0
	fcmpu 6,1,0
	mfcr 0
	rlwinm 0,0,25,1
.LVL1434:
	.loc 2 1833 0
	beq- 7,.L828
	.loc 2 1834 0
	lwz 9,2280(31)
.LVL1435:
.LBB5831:
.LBB5832:
	.loc 20 610 0
	li 11,1
	stb 11,308(9)
.LBE5832:
.LBE5831:
	.loc 2 1838 0
	lwz 9,2280(31)
.LVL1436:
.LBB5834:
.LBB5835:
	.loc 20 612 0
	stfs 30,316(9)
.LBE5835:
.LBE5834:
	.loc 2 1839 0
	lwz 9,2280(31)
.LVL1437:
.LBB5838:
.LBB5839:
	.loc 20 611 0
	stfs 29,312(9)
.LBE5839:
.LBE5838:
	.loc 2 1842 0
	lwz 9,2280(31)
.LVL1438:
.LBB5842:
.LBB5843:
	.loc 20 609 0
	stfs 1,300(9)
.LVL1439:
.L831:
.LBE5843:
.LBE5842:
	.loc 2 1834 0
	lwz 9,2284(31)
.LVL1440:
.LBB5846:
.LBB5833:
	.loc 20 610 0
	li 11,1
	stb 11,308(9)
.LVL1441:
.L833:
.LBE5833:
.LBE5846:
	.loc 2 1838 0
	lwz 9,2284(31)
	.loc 2 1846 0
	cmpwi 7,0,0
.LBB5847:
.LBB5836:
	.loc 20 612 0
	stfs 30,316(9)
.LBE5836:
.LBE5847:
	.loc 2 1839 0
	lwz 9,2284(31)
.LBB5848:
.LBB5840:
	.loc 20 611 0
	stfs 29,312(9)
.LBE5840:
.LBE5848:
	.loc 2 1842 0
	lwz 9,2284(31)
.LBB5849:
.LBB5844:
	.loc 20 609 0
	stfs 31,300(9)
.LVL1442:
.LBE5844:
.LBE5849:
	.loc 2 1846 0
	beq- 7,.L834
	.loc 2 1847 0
	lis 11,.LC1@ha
	lwz 9,2280(31)
.LVL1443:
	lfs 0,.LC1@l(11)
	fmuls 30,30,0
.LVL1444:
.LBB5850:
.LBB5851:
	.loc 20 612 0
	stfs 30,316(9)
.LVL1445:
.L836:
	lis 24,g_vehicleSuspensionUp@ha
	lis 25,g_vehicleSuspensionDown@ha
	lis 26,g_vehicleSuspensionKCompress@ha
	lis 27,g_vehicleSuspensionDamping@ha
	lis 28,g_vehicleTireFriction@ha
	.loc 2 1810 0 discriminator 1
	addi 29,31,2276
.LBE5851:
.LBE5850:
	li 30,0
	la 24,g_vehicleSuspensionUp@l(24)
	la 25,g_vehicleSuspensionDown@l(25)
	la 26,g_vehicleSuspensionKCompress@l(26)
	la 27,g_vehicleSuspensionDamping@l(27)
	la 28,g_vehicleTireFriction@l(28)
.LVL1446:
.L835:
.LBB5852:
.LBB5853:
	.loc 16 144 0 discriminator 2
	lwz 7,44(24)
.LBE5853:
.LBE5852:
.LBB5854:
.LBB5855:
	lwz 8,44(25)
.LBE5855:
.LBE5854:
.LBB5856:
.LBB5857:
	lwz 10,44(26)
.LBE5857:
.LBE5856:
.LBB5858:
.LBB5859:
	lwz 11,44(27)
.LBE5859:
.LBE5858:
.LBB5860:
.LBB5861:
	lwz 9,44(28)
.LBE5861:
.LBE5860:
	.loc 2 1858 0 discriminator 2
	lwzu 3,4(29)
	lfs 1,40(7)
	lfs 2,40(8)
	lfs 3,40(10)
	lfs 4,40(11)
	lfs 5,40(9)
	bl _ZN25idAFConstraint_Suspension13SetSuspensionEfffff
.LVL1447:
	.loc 2 1853 0 discriminator 2
	cmpwi 7,30,3
	addi 30,30,1
.LVL1448:
	bne+ 7,.L835
	.loc 2 1862 0
	mr 3,31
	lis 21,_ZN6idMath8M_MS2SECE@ha
	lis 22,.LC123@ha
	lis 23,_ZN6idMath9M_RAD2DEGE@ha
	lis 24,.LC70@ha
	bl _ZN8idEntity10RunPhysicsEv
.LVL1449:
	.loc 2 1810 0
	addi 30,31,2308
	.loc 2 1865 0
	li 29,0
	addi 20,31,1656
	la 21,_ZN6idMath8M_MS2SECE@l(21)
	la 22,.LC123@l(22)
	la 23,_ZN6idMath9M_RAD2DEGE@l(23)
	la 24,.LC70@l(24)
	addi 25,31,636
.LBB5862:
.LBB5863:
.LBB5864:
.LBB5865:
	.loc 21 133 0
	li 27,0
.LBE5865:
.LBE5864:
.LBB5868:
.LBB5869:
	.loc 21 125 0
	li 28,0
.LBE5869:
.LBE5868:
.LBB5873:
.LBB5874:
	.loc 21 127 0
	lis 19,.LC0@ha
.LBE5874:
.LBE5873:
	.loc 2 1881 0
	addi 26,1,80
.LVL1450:
.L843:
	.loc 2 1866 0
	li 4,0
	mr 3,20
	bl _ZNK12idPhysics_AF7GetBodyEi
	.loc 2 1868 0
	lwz 4,-28(30)
	.loc 2 1866 0
	mr 18,3
.LVL1451:
	.loc 2 1868 0
	addi 3,1,20
.LVL1452:
	bl _ZNK25idAFConstraint_Suspension14GetWheelOriginEv
.LVL1453:
.LBB5878:
.LBB5879:
	.loc 3 424 0
	lwz 0,20(1)
.LBE5879:
.LBE5878:
	.loc 2 1869 0
	addi 3,1,8
	mr 4,18
.LBB5882:
.LBB5880:
	.loc 3 424 0
	stw 0,32(1)
.LBE5880:
.LBE5882:
	.loc 2 1869 0
	addi 5,1,32
.LBB5883:
.LBB5881:
	.loc 3 425 0
	lwz 0,24(1)
	stw 0,36(1)
	.loc 3 426 0
	lwz 0,28(1)
	stw 0,40(1)
.LBE5881:
.LBE5883:
	.loc 2 1869 0
	bl _ZNK8idAFBody16GetPointVelocityERK6idVec3
	.loc 2 2927 0
	lwz 9,416(18)
.LVL1454:
	.loc 2 1876 0
	cmpwi 7,29,1
.LBB5884:
.LBB5885:
	.loc 3 435 0
	lfs 13,12(1)
	lfs 0,16(9)
.LBE5885:
.LBE5884:
	lfs 10,12(9)
.LBB5887:
.LBB5886:
	fmuls 13,13,0
.LBE5886:
.LBE5887:
	lfs 12,8(1)
	.loc 2 1870 0
	lfs 0,0(22)
	.loc 3 435 0
	lfs 11,20(9)
	fmadds 12,12,10,13
	.loc 2 1870 0
	lfs 13,0(21)
.LBB5888:
.LBB5870:
	.loc 21 126 0
	lwz 0,0(24)
.LBE5870:
.LBE5888:
	.loc 2 1870 0
	fmuls 13,13,0
	.loc 3 435 0
	lfs 0,16(1)
.LBB5889:
.LBB5866:
	.loc 21 133 0
	stb 27,212(1)
.LBE5866:
.LBE5889:
	.loc 3 435 0
	fmadds 0,0,11,12
	.loc 2 1870 0
	lfs 11,2260(31)
	lfsu 12,4(30)
.LBB5890:
.LBB5871:
	.loc 21 125 0
	stw 28,160(1)
.LBE5871:
.LBE5890:
	.loc 2 1870 0
	fmuls 0,13,0
	.loc 2 1873 0
	lfs 13,0(23)
.LBB5891:
.LBB5872:
	.loc 21 126 0
	stw 0,164(1)
	.loc 21 127 0
	stw 28,168(1)
.LBE5872:
.LBE5891:
	.loc 2 1870 0
	fdivs 0,0,11
	fadds 0,0,12
	.loc 2 1873 0
	fmuls 13,0,13
	.loc 2 1870 0
	stfs 0,0(30)
.LVL1455:
.LBB5892:
.LBB5867:
	.loc 21 132 0
	stfs 13,172(1)
.LBE5867:
.LBE5892:
	.loc 2 1876 0
	ble- 7,.L852
	.loc 2 1884 0
	lwz 18,-16(30)
.LVL1456:
	addi 3,1,148
	bl _ZNK10idRotation6ToMat3Ev
.LVL1457:
	li 5,3
	mr 6,3
	mr 4,18
	mr 3,25
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
.LVL1458:
.L842:
.LBB5893:
.LBB5894:
	.loc 3 431 0
	lfs 0,260(31)
.LBE5894:
.LBE5893:
	.loc 2 1889 0
	mr 3,31
.LBB5903:
.LBB5895:
	.loc 3 431 0
	lfs 12,36(1)
	lfs 9,32(1)
	fsubs 12,12,0
	lfs 13,256(31)
.LBE5895:
.LBE5903:
.LBB5904:
.LBB5905:
.LBB5906:
	.loc 6 454 0
	lfs 0,272(31)
	lfs 10,284(31)
.LBE5906:
.LBE5905:
.LBE5904:
.LBB5913:
.LBB5896:
	.loc 3 431 0
	fsubs 13,9,13
.LBE5896:
.LBE5913:
.LBB5914:
.LBB5910:
.LBB5907:
	.loc 6 454 0
	lfs 11,296(31)
	fmuls 10,12,10
.LBE5907:
.LBE5910:
.LBE5914:
.LBB5915:
.LBB5897:
	.loc 3 431 0
	lfs 6,40(1)
.LBE5897:
.LBE5915:
.LBB5916:
.LBB5911:
.LBB5908:
	.loc 6 454 0
	fmuls 11,12,11
.LBE5908:
.LBE5911:
.LBE5916:
.LBB5917:
.LBB5898:
	lfs 7,280(31)
.LBE5898:
.LBE5917:
.LBB5918:
.LBB5912:
.LBB5909:
	fmuls 12,12,0
.LBE5909:
.LBE5912:
.LBE5918:
.LBB5919:
.LBB5899:
	lfs 8,292(31)
.LBE5899:
.LBE5919:
.LBB5920:
.LBB5921:
	lfs 9,268(31)
.LBE5921:
.LBE5920:
.LBB5926:
.LBB5900:
	fmadds 10,13,7,10
	.loc 3 431 0
	lfs 0,264(31)
	.loc 6 454 0
	fmadds 11,13,8,11
.LBE5900:
.LBE5926:
.LBB5927:
.LBB5922:
	fmadds 13,13,9,12
.LBE5922:
.LBE5927:
.LBB5928:
.LBB5901:
	lfs 8,288(31)
	.loc 3 431 0
	fsubs 0,6,0
.LVL1459:
	.loc 6 454 0
	lfs 9,300(31)
.LBE5901:
.LBE5928:
.LBB5929:
.LBB5923:
	lfs 12,276(31)
.LBE5923:
.LBE5929:
	.loc 2 1889 0
	lwz 9,0(31)
.LBB5930:
.LBB5902:
	.loc 6 454 0
	fmadds 10,0,8,10
	fmadds 11,0,9,11
.LVL1460:
.LBE5902:
.LBE5930:
	.loc 2 1889 0
	lwz 0,92(9)
.LBB5931:
.LBB5924:
	.loc 6 454 0
	fmadds 0,0,12,13
.LVL1461:
	.loc 3 425 0
	stfs 10,36(1)
.LBE5924:
.LBE5931:
	.loc 2 1889 0
	mtctr 0
.LBB5932:
.LBB5925:
	.loc 3 426 0
	stfs 11,40(1)
	.loc 3 424 0
	stfs 0,32(1)
.LBE5925:
.LBE5932:
	.loc 2 1889 0
	bctrl
.LVL1462:
	lwz 4,-16(30)
	li 5,4
	addi 6,1,32
	bl _ZN10idAnimator11SetJointPosE13jointHandle_t19jointModTransform_tRK6idVec3
.LVL1463:
.LBE5863:
	.loc 2 1865 0
	cmpwi 7,29,3
	addi 29,29,1
.LVL1464:
	bne+ 7,.L843
.LVL1465:
.L827:
.LBE5862:
.LBE5820:
.LBE5819:
	.loc 2 1906 0
	mr 3,31
	bl _ZN16idAnimatedEntity15UpdateAnimationEv
	.loc 2 1907 0
	lwz 0,152(31)
	andi. 9,0,8
	beq+ 0,.L826
	.loc 2 1908 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 1909 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,236(9)
	mtctr 0
	bctrl
.L826:
.LBE5818:
	.loc 2 1911 0
	lwz 0,324(1)
	lwz 17,236(1)
	mtlr 0
	lwz 18,240(1)
	lwz 19,244(1)
	lwz 20,248(1)
	lwz 21,252(1)
	lwz 22,256(1)
	lwz 23,260(1)
	lwz 24,264(1)
	lwz 25,268(1)
	lwz 26,272(1)
	lwz 27,276(1)
	lwz 28,280(1)
	lwz 29,284(1)
	lwz 30,288(1)
	lwz 31,292(1)
.LVL1466:
	lfd 29,296(1)
	lfd 30,304(1)
	lfd 31,312(1)
	addi 1,1,320
	.cfi_remember_state
.LCFI346:
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
	blr
.LVL1467:
.L852:
.LCFI347:
	.cfi_restore_state
.LBB5961:
.LBB5960:
.LBB5959:
.LBB5945:
.LBB5942:
.LBB5933:
.LBB5875:
	.loc 21 127 0
	lwz 0,.LC0@l(19)
.LBE5875:
.LBE5933:
	.loc 2 1881 0
	addi 3,1,148
	lwz 17,-16(30)
.LBB5934:
.LBB5876:
	.loc 21 127 0
	stw 0,100(1)
.LBE5876:
.LBE5934:
.LBB5935:
.LBB5936:
	.loc 21 132 0
	stfs 31,104(1)
	.loc 21 133 0
	stb 27,144(1)
.LVL1468:
.LBE5936:
.LBE5935:
.LBB5937:
.LBB5877:
	.loc 21 125 0
	stw 28,92(1)
.LVL1469:
	.loc 21 126 0
	stw 28,96(1)
.LVL1470:
.LBE5877:
.LBE5937:
	.loc 2 1881 0
	bl _ZNK10idRotation6ToMat3Ev
.LVL1471:
	mr 18,3
.LVL1472:
	mr 3,26
	bl _ZNK10idRotation6ToMat3Ev
.LVL1473:
.LBE5942:
.LBE5945:
	.loc 6 465 0
	addi 10,1,44
	addi 3,3,-4
.LVL1474:
.L839:
.LBB5946:
.LBB5943:
.LBB5938:
.LBB5939:
	.loc 2 1810 0
	mr 9,3
.LBE5939:
.LBE5938:
.LBE5943:
.LBE5946:
	li 11,0
.LVL1475:
.L840:
.LBB5947:
.LBB5944:
	addi 9,9,4
.LBB5941:
.LBB5940:
	.loc 6 471 0
	lfs 11,4(18)
	lfs 0,12(9)
	.loc 6 468 0
	cmpwi 7,11,8
	.loc 6 471 0
	lfs 13,0(18)
	fmuls 11,11,0
	lfs 0,0(9)
	lfs 12,8(18)
	fmadds 13,13,0,11
	lfs 0,24(9)
	fmadds 0,12,0,13
	stfsx 0,10,11
	.loc 6 468 0
	addi 11,11,4
	bne+ 7,.L840
	addi 10,10,12
	.loc 6 474 0
	addi 18,18,12
.LVL1476:
	.loc 6 467 0
	cmpw 7,10,26
	bne+ 7,.L839
.LBE5940:
.LBE5941:
	.loc 2 1881 0
	mr 3,25
.LVL1477:
	mr 4,17
	li 5,3
	addi 6,1,44
	bl _ZN10idAnimator12SetJointAxisE13jointHandle_t19jointModTransform_tRK6idMat3
.LVL1478:
	b .L842
.LVL1479:
.L834:
.LBE5944:
.LBE5947:
	.loc 2 1848 0
	lis 9,.LC49@ha
	lfs 0,.LC49@l(9)
	fcmpu 7,31,0
	bng- 7,.L836
	.loc 2 1849 0
	lis 11,.LC1@ha
	lwz 9,2284(31)
.LVL1480:
	lfs 0,.LC1@l(11)
	fmuls 30,30,0
.LVL1481:
.LBB5948:
.LBB5949:
	.loc 20 612 0
	stfs 30,316(9)
	b .L836
.LVL1482:
.L845:
.LBE5949:
.LBE5948:
	.loc 2 1812 0
	lis 10,.LC49@ha
	.loc 2 1819 0
	li 0,0
	.loc 2 1812 0
	lfs 31,.LC49@l(10)
	fmr 30,31
	fmr 29,31
.LVL1483:
.L828:
	.loc 2 1836 0
	lwz 11,2280(31)
.LVL1484:
.LBB5950:
.LBB5951:
	.loc 20 610 0
	li 9,0
.LBE5951:
.LBE5950:
	.loc 2 1833 0
	lis 10,.LC49@ha
.LBB5954:
.LBB5952:
	.loc 20 610 0
	stb 9,308(11)
.LBE5952:
.LBE5954:
	.loc 2 1833 0
	lfs 0,.LC49@l(10)
	.loc 2 1838 0
	lwz 11,2280(31)
.LVL1485:
	.loc 2 1833 0
	fcmpu 7,30,0
.LBB5955:
.LBB5837:
	.loc 20 612 0
	stfs 30,316(11)
.LBE5837:
.LBE5955:
	.loc 2 1839 0
	lwz 11,2280(31)
.LVL1486:
.LBB5956:
.LBB5841:
	.loc 20 611 0
	stfs 29,312(11)
.LBE5841:
.LBE5956:
	.loc 2 1842 0
	lwz 11,2280(31)
.LVL1487:
.LBB5957:
.LBB5845:
	.loc 20 609 0
	stfs 31,300(11)
.LVL1488:
.LBE5845:
.LBE5957:
	.loc 2 1833 0
	bne- 7,.L831
	.loc 2 1836 0
	lwz 11,2284(31)
.LBB5958:
.LBB5953:
	.loc 20 610 0
	stb 9,308(11)
	b .L833
.LVL1489:
.L851:
.LBE5953:
.LBE5958:
	.loc 2 1823 0
	fneg 30,30
.LVL1490:
	b .L829
.LBE5959:
.LBE5960:
.LBE5961:
	.cfi_endproc
.LFE2975:
	.size	_ZN24idAFEntity_VehicleSimple5ThinkEv, .-_ZN24idAFEntity_VehicleSimple5ThinkEv
	.align 2
	.globl _ZN24idAFEntity_VehicleSimpleC2Ev
	.type	_ZN24idAFEntity_VehicleSimpleC2Ev, @function
_ZN24idAFEntity_VehicleSimpleC2Ev:
.LFB2968:
	.loc 2 1733 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2968
.LVL1491:
	mflr 0
	stwu 1,-16(1)
.LCFI348:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB136:
.LBB5962:
	.loc 2 1733 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN18idAFEntity_VehicleC2Ev
.LEHE136:
.LVL1492:
	lis 9,_ZTV24idAFEntity_VehicleSimple+8@ha
.LBB5963:
	.loc 2 1735 0
	lis 3,.LC124@ha
.LBE5963:
	.loc 2 1733 0
	la 0,_ZTV24idAFEntity_VehicleSimple+8@l(9)
.LBB5964:
	.loc 2 1735 0
	la 3,.LC124@l(3)
.LBE5964:
	.loc 2 1733 0
	stw 0,0(31)
.LBB5965:
	.loc 2 1735 0
	li 4,2328
.LEHB137:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE137:
.LVL1493:
	.loc 2 1740 0 discriminator 1
	li 0,0
	stw 0,2280(31)
.LVL1494:
	stw 0,2284(31)
.LVL1495:
	stw 0,2288(31)
.LVL1496:
	stw 0,2292(31)
.LVL1497:
.LBE5965:
.LBE5962:
	.loc 2 1742 0 discriminator 1
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1498:
	addi 1,1,16
	.cfi_remember_state
.LCFI349:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1499:
.L855:
.LCFI350:
	.cfi_restore_state
	mr 30,3
.LBB5966:
	.loc 2 1733 0
	mr 3,31
	bl _ZN18idAFEntity_VehicleD2Ev
	mr 3,30
.LEHB138:
	bl _Unwind_Resume
.LEHE138:
.LBE5966:
	.cfi_endproc
.LFE2968:
	.section	.gcc_except_table
.LLSDA2968:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2968-.LLSDACSB2968
.LLSDACSB2968:
	.uleb128 .LEHB136-.LFB2968
	.uleb128 .LEHE136-.LEHB136
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB137-.LFB2968
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L855-.LFB2968
	.uleb128 0
	.uleb128 .LEHB138-.LFB2968
	.uleb128 .LEHE138-.LEHB138
	.uleb128 0
	.uleb128 0
.LLSDACSE2968:
	.section	".text"
	.size	_ZN24idAFEntity_VehicleSimpleC2Ev, .-_ZN24idAFEntity_VehicleSimpleC2Ev
	.align 2
	.globl _ZN24idAFEntity_VehicleSimple14CreateInstanceEv
	.type	_ZN24idAFEntity_VehicleSimple14CreateInstanceEv, @function
_ZN24idAFEntity_VehicleSimple14CreateInstanceEv:
.LFB2961:
	.loc 2 1725 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2961
	mflr 0
	stwu 1,-24(1)
.LCFI351:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5967:
	li 3,2328
.LBE5967:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB139:
.LBB5968:
	.loc 2 1725 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE139:
	mr 31,3
.LEHB140:
	bl _ZN24idAFEntity_VehicleSimpleC1Ev
.LEHE140:
.LVL1500:
	.loc 2 1725 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB141:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE141:
.LVL1501:
.L861:
.LBE5968:
	.loc 2 1725 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI352:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L862:
.L858:
.LCFI353:
	.cfi_restore_state
.LBB5969:
	cmpwi 7,4,1
	beq- 7,.L860
.LEHB142:
	bl _Unwind_Resume
.LEHE142:
.L863:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L858
.L860:
.LBE5969:
.LBB5970:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L861
.LBE5970:
	.cfi_endproc
.LFE2961:
	.section	.gcc_except_table
	.align 2
.LLSDA2961:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2961-.LLSDATTD2961
.LLSDATTD2961:
	.byte	0x1
	.uleb128 .LLSDACSE2961-.LLSDACSB2961
.LLSDACSB2961:
	.uleb128 .LEHB139-.LFB2961
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L862-.LFB2961
	.uleb128 0x1
	.uleb128 .LEHB140-.LFB2961
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L863-.LFB2961
	.uleb128 0x3
	.uleb128 .LEHB141-.LFB2961
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L862-.LFB2961
	.uleb128 0x1
	.uleb128 .LEHB142-.LFB2961
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
.LLSDACSE2961:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2961:
	.section	".text"
	.size	_ZN24idAFEntity_VehicleSimple14CreateInstanceEv, .-_ZN24idAFEntity_VehicleSimple14CreateInstanceEv
	.align 2
	.globl _ZN28idAFEntity_VehicleFourWheelsC2Ev
	.type	_ZN28idAFEntity_VehicleFourWheelsC2Ev, @function
_ZN28idAFEntity_VehicleFourWheelsC2Ev:
.LFB2979:
	.loc 2 1931 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2979
.LVL1502:
	mflr 0
	stwu 1,-16(1)
.LCFI354:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB143:
.LBB5971:
	.loc 2 1931 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN18idAFEntity_VehicleC2Ev
.LEHE143:
.LVL1503:
	lis 9,_ZTV28idAFEntity_VehicleFourWheels+8@ha
.LBB5972:
	.loc 2 1933 0
	lis 3,.LC125@ha
.LBE5972:
	.loc 2 1931 0
	la 0,_ZTV28idAFEntity_VehicleFourWheels+8@l(9)
.LBB5973:
	.loc 2 1933 0
	la 3,.LC125@l(3)
.LBE5973:
	.loc 2 1931 0
	stw 0,0(31)
.LBB5974:
	.loc 2 1933 0
	li 4,2332
.LEHB144:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE144:
	.loc 2 1941 0
	li 0,4
	.loc 2 1931 0
	addi 9,31,2272
	.loc 2 1941 0
	mtctr 0
	.loc 2 1939 0
	li 8,0
	.loc 2 1940 0
	li 10,-1
	.loc 2 1941 0
	li 11,0
.L865:
	.loc 2 1939 0 discriminator 2
	stwu 8,4(9)
	li 0,0
	.loc 2 1940 0 discriminator 2
	stw 10,24(9)
	.loc 2 1941 0 discriminator 2
	stw 11,40(9)
	.loc 2 1938 0 discriminator 2
	bdnz .L865
	.loc 2 1943 0
	stw 0,2292(31)
	.loc 2 1944 0
	stw 0,2296(31)
.LBE5974:
.LBE5971:
	.loc 2 1945 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1504:
	addi 1,1,16
	.cfi_remember_state
.LCFI355:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1505:
.L867:
.LCFI356:
	.cfi_restore_state
	mr 30,3
.LBB5975:
	.loc 2 1931 0
	mr 3,31
	bl _ZN18idAFEntity_VehicleD2Ev
	mr 3,30
.LEHB145:
	bl _Unwind_Resume
.LEHE145:
.LBE5975:
	.cfi_endproc
.LFE2979:
	.section	.gcc_except_table
.LLSDA2979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2979-.LLSDACSB2979
.LLSDACSB2979:
	.uleb128 .LEHB143-.LFB2979
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB144-.LFB2979
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L867-.LFB2979
	.uleb128 0
	.uleb128 .LEHB145-.LFB2979
	.uleb128 .LEHE145-.LEHB145
	.uleb128 0
	.uleb128 0
.LLSDACSE2979:
	.section	".text"
	.size	_ZN28idAFEntity_VehicleFourWheelsC2Ev, .-_ZN28idAFEntity_VehicleFourWheelsC2Ev
	.align 2
	.globl _ZN28idAFEntity_VehicleFourWheels14CreateInstanceEv
	.type	_ZN28idAFEntity_VehicleFourWheels14CreateInstanceEv, @function
_ZN28idAFEntity_VehicleFourWheels14CreateInstanceEv:
.LFB2976:
	.loc 2 1922 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2976
	mflr 0
	stwu 1,-24(1)
.LCFI357:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5976:
	li 3,2332
.LBE5976:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB146:
.LBB5977:
	.loc 2 1922 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE146:
	mr 31,3
.LEHB147:
	bl _ZN28idAFEntity_VehicleFourWheelsC1Ev
.LEHE147:
.LVL1506:
	.loc 2 1922 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB148:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE148:
.LVL1507:
.L874:
.LBE5977:
	.loc 2 1922 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI358:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L875:
.L871:
.LCFI359:
	.cfi_restore_state
.LBB5978:
	cmpwi 7,4,1
	beq- 7,.L873
.LEHB149:
	bl _Unwind_Resume
.LEHE149:
.L876:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L871
.L873:
.LBE5978:
.LBB5979:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L874
.LBE5979:
	.cfi_endproc
.LFE2976:
	.section	.gcc_except_table
	.align 2
.LLSDA2976:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2976-.LLSDATTD2976
.LLSDATTD2976:
	.byte	0x1
	.uleb128 .LLSDACSE2976-.LLSDACSB2976
.LLSDACSB2976:
	.uleb128 .LEHB146-.LFB2976
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L875-.LFB2976
	.uleb128 0x1
	.uleb128 .LEHB147-.LFB2976
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L876-.LFB2976
	.uleb128 0x3
	.uleb128 .LEHB148-.LFB2976
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L875-.LFB2976
	.uleb128 0x1
	.uleb128 .LEHB149-.LFB2976
	.uleb128 .LEHE149-.LEHB149
	.uleb128 0
	.uleb128 0
.LLSDACSE2976:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2976:
	.section	".text"
	.size	_ZN28idAFEntity_VehicleFourWheels14CreateInstanceEv, .-_ZN28idAFEntity_VehicleFourWheels14CreateInstanceEv
	.align 2
	.globl _ZN27idAFEntity_VehicleSixWheelsC2Ev
	.type	_ZN27idAFEntity_VehicleSixWheelsC2Ev, @function
_ZN27idAFEntity_VehicleSixWheelsC2Ev:
.LFB2986:
	.loc 2 2111 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2986
.LVL1508:
	mflr 0
	stwu 1,-16(1)
.LCFI360:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB150:
.LBB5980:
	.loc 2 2111 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN18idAFEntity_VehicleC2Ev
.LEHE150:
.LVL1509:
	lis 9,_ZTV27idAFEntity_VehicleSixWheels+8@ha
.LBB5981:
	.loc 2 2113 0
	lis 3,.LC126@ha
.LBE5981:
	.loc 2 2111 0
	la 0,_ZTV27idAFEntity_VehicleSixWheels+8@l(9)
.LBB5982:
	.loc 2 2113 0
	la 3,.LC126@l(3)
.LBE5982:
	.loc 2 2111 0
	stw 0,0(31)
.LBB5983:
	.loc 2 2113 0
	li 4,2364
.LEHB151:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE151:
	.loc 2 2121 0
	li 0,6
	.loc 2 2111 0
	addi 9,31,2272
	.loc 2 2121 0
	mtctr 0
	.loc 2 2119 0
	li 8,0
	.loc 2 2120 0
	li 10,-1
	.loc 2 2121 0
	li 11,0
.L878:
	.loc 2 2119 0 discriminator 2
	stwu 8,4(9)
	li 0,0
	.loc 2 2120 0 discriminator 2
	stw 10,40(9)
	.loc 2 2121 0 discriminator 2
	stw 11,64(9)
	.loc 2 2118 0 discriminator 2
	bdnz .L878
	.loc 2 2123 0
	stw 0,2300(31)
	.loc 2 2124 0
	stw 0,2304(31)
	.loc 2 2125 0
	stw 0,2308(31)
	.loc 2 2126 0
	stw 0,2312(31)
.LBE5983:
.LBE5980:
	.loc 2 2127 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1510:
	addi 1,1,16
	.cfi_remember_state
.LCFI361:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1511:
.L880:
.LCFI362:
	.cfi_restore_state
	mr 30,3
.LBB5984:
	.loc 2 2111 0
	mr 3,31
	bl _ZN18idAFEntity_VehicleD2Ev
	mr 3,30
.LEHB152:
	bl _Unwind_Resume
.LEHE152:
.LBE5984:
	.cfi_endproc
.LFE2986:
	.section	.gcc_except_table
.LLSDA2986:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2986-.LLSDACSB2986
.LLSDACSB2986:
	.uleb128 .LEHB150-.LFB2986
	.uleb128 .LEHE150-.LEHB150
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB151-.LFB2986
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L880-.LFB2986
	.uleb128 0
	.uleb128 .LEHB152-.LFB2986
	.uleb128 .LEHE152-.LEHB152
	.uleb128 0
	.uleb128 0
.LLSDACSE2986:
	.section	".text"
	.size	_ZN27idAFEntity_VehicleSixWheelsC2Ev, .-_ZN27idAFEntity_VehicleSixWheelsC2Ev
	.align 2
	.globl _ZN27idAFEntity_VehicleSixWheels14CreateInstanceEv
	.type	_ZN27idAFEntity_VehicleSixWheels14CreateInstanceEv, @function
_ZN27idAFEntity_VehicleSixWheels14CreateInstanceEv:
.LFB2983:
	.loc 2 2103 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2983
	mflr 0
	stwu 1,-24(1)
.LCFI363:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5985:
	li 3,2364
.LBE5985:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB153:
.LBB5986:
	.loc 2 2103 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE153:
	mr 31,3
.LEHB154:
	bl _ZN27idAFEntity_VehicleSixWheelsC1Ev
.LEHE154:
.LVL1512:
	.loc 2 2103 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB155:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE155:
.LVL1513:
.L887:
.LBE5986:
	.loc 2 2103 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI364:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L888:
.L884:
.LCFI365:
	.cfi_restore_state
.LBB5987:
	cmpwi 7,4,1
	beq- 7,.L886
.LEHB156:
	bl _Unwind_Resume
.LEHE156:
.L889:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L884
.L886:
.LBE5987:
.LBB5988:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L887
.LBE5988:
	.cfi_endproc
.LFE2983:
	.section	.gcc_except_table
	.align 2
.LLSDA2983:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2983-.LLSDATTD2983
.LLSDATTD2983:
	.byte	0x1
	.uleb128 .LLSDACSE2983-.LLSDACSB2983
.LLSDACSB2983:
	.uleb128 .LEHB153-.LFB2983
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L888-.LFB2983
	.uleb128 0x1
	.uleb128 .LEHB154-.LFB2983
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L889-.LFB2983
	.uleb128 0x3
	.uleb128 .LEHB155-.LFB2983
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L888-.LFB2983
	.uleb128 0x1
	.uleb128 .LEHB156-.LFB2983
	.uleb128 .LEHE156-.LEHB156
	.uleb128 0
	.uleb128 0
.LLSDACSE2983:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2983:
	.section	".text"
	.size	_ZN27idAFEntity_VehicleSixWheels14CreateInstanceEv, .-_ZN27idAFEntity_VehicleSixWheels14CreateInstanceEv
	.align 2
	.globl _ZN20idAFEntity_SteamPipeC2Ev
	.type	_ZN20idAFEntity_SteamPipeC2Ev, @function
_ZN20idAFEntity_SteamPipeC2Ev:
.LFB2993:
	.loc 2 2306 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2993
.LVL1514:
	mflr 0
	stwu 1,-24(1)
.LCFI366:
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
.LEHB157:
.LBB5989:
	.loc 2 2306 0
	.cfi_offset 29, -12
	bl _ZN15idAFEntity_BaseC2Ev
.LEHE157:
.LVL1515:
	lis 9,_ZTV20idAFEntity_SteamPipe+8@ha
	addi 30,31,2260
	la 0,_ZTV20idAFEntity_SteamPipe+8@l(9)
	mr 3,30
	stw 0,0(31)
.LEHB158:
	bl _ZN16idForce_ConstantC1Ev
.LEHE158:
	.loc 2 2308 0 discriminator 1
	lis 3,.LC127@ha
	li 4,2516
	la 3,.LC127@l(3)
.LEHB159:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE159:
	.loc 2 2312 0
	li 0,0
	.loc 2 2311 0
	li 9,0
	.loc 2 2312 0
	stw 0,2252(31)
	.loc 2 2315 0
	addi 3,31,2296
	.loc 2 2313 0
	stw 0,2256(31)
	.loc 2 2314 0
	li 0,-1
	stw 0,2512(31)
	.loc 2 2315 0
	li 4,0
	.loc 2 2311 0
	stw 9,2248(31)
	.loc 2 2315 0
	li 5,216
	bl memset
.LBE5989:
	.loc 2 2316 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL1516:
	addi 1,1,24
	.cfi_remember_state
.LCFI367:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1517:
.L893:
.LCFI368:
	.cfi_restore_state
	mr 30,3
.L892:
.LBB5990:
	.loc 2 2306 0
	mr 3,31
	bl _ZN15idAFEntity_BaseD2Ev
	mr 3,30
.LEHB160:
	bl _Unwind_Resume
.LEHE160:
.L894:
	mr 29,3
	mr 3,30
	bl _ZN16idForce_ConstantD1Ev
	mr 30,29
	b .L892
.LBE5990:
	.cfi_endproc
.LFE2993:
	.section	.gcc_except_table
.LLSDA2993:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2993-.LLSDACSB2993
.LLSDACSB2993:
	.uleb128 .LEHB157-.LFB2993
	.uleb128 .LEHE157-.LEHB157
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB158-.LFB2993
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L893-.LFB2993
	.uleb128 0
	.uleb128 .LEHB159-.LFB2993
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L894-.LFB2993
	.uleb128 0
	.uleb128 .LEHB160-.LFB2993
	.uleb128 .LEHE160-.LEHB160
	.uleb128 0
	.uleb128 0
.LLSDACSE2993:
	.section	".text"
	.size	_ZN20idAFEntity_SteamPipeC2Ev, .-_ZN20idAFEntity_SteamPipeC2Ev
	.align 2
	.globl _ZN20idAFEntity_SteamPipe14CreateInstanceEv
	.type	_ZN20idAFEntity_SteamPipe14CreateInstanceEv, @function
_ZN20idAFEntity_SteamPipe14CreateInstanceEv:
.LFB2990:
	.loc 2 2297 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2990
	mflr 0
	stwu 1,-24(1)
.LCFI369:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB5991:
	li 3,2516
.LBE5991:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB161:
.LBB5992:
	.loc 2 2297 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE161:
	mr 31,3
.LEHB162:
	bl _ZN20idAFEntity_SteamPipeC1Ev
.LEHE162:
.LVL1518:
	.loc 2 2297 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB163:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE163:
.LVL1519:
.L900:
.LBE5992:
	.loc 2 2297 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI370:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L901:
.L897:
.LCFI371:
	.cfi_restore_state
.LBB5993:
	cmpwi 7,4,1
	beq- 7,.L899
.LEHB164:
	bl _Unwind_Resume
.LEHE164:
.L902:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L897
.L899:
.LBE5993:
.LBB5994:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L900
.LBE5994:
	.cfi_endproc
.LFE2990:
	.section	.gcc_except_table
	.align 2
.LLSDA2990:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT2990-.LLSDATTD2990
.LLSDATTD2990:
	.byte	0x1
	.uleb128 .LLSDACSE2990-.LLSDACSB2990
.LLSDACSB2990:
	.uleb128 .LEHB161-.LFB2990
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L901-.LFB2990
	.uleb128 0x1
	.uleb128 .LEHB162-.LFB2990
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L902-.LFB2990
	.uleb128 0x3
	.uleb128 .LEHB163-.LFB2990
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L901-.LFB2990
	.uleb128 0x1
	.uleb128 .LEHB164-.LFB2990
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
.LLSDACSE2990:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT2990:
	.section	".text"
	.size	_ZN20idAFEntity_SteamPipe14CreateInstanceEv, .-_ZN20idAFEntity_SteamPipe14CreateInstanceEv
	.align 2
	.globl _ZN20idAFEntity_SteamPipe21InitSteamRenderEntityEv
	.type	_ZN20idAFEntity_SteamPipe21InitSteamRenderEntityEv, @function
_ZN20idAFEntity_SteamPipe21InitSteamRenderEntityEv:
.LFB3002:
	.loc 2 2381 0 is_stmt 1
	.cfi_startproc
.LVL1520:
	stwu 1,-56(1)
.LCFI372:
	.cfi_def_cfa_offset 56
	mflr 0
.LBB6012:
	.loc 2 2385 0
	li 4,0
	li 5,216
.LBE6012:
	.loc 2 2381 0
	stw 30,48(1)
.LBB6041:
	.loc 2 2385 0
	addi 30,3,2296
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE6041:
	.loc 2 2381 0
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
.LBB6042:
	.loc 2 2385 0
	mr 3,30
.LVL1521:
.LBE6042:
	.loc 2 2381 0
	stw 0,60(1)
	stw 29,44(1)
.LBB6043:
	.loc 2 2385 0
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl memset
	.loc 2 2386 0
	lis 9,.LC0@ha
.LBB6013:
.LBB6014:
	.loc 11 241 0
	lis 4,.LC128@ha
.LBE6014:
.LBE6013:
	.loc 2 2386 0
	lwz 0,.LC0@l(9)
.LBB6019:
.LBB6016:
	.loc 11 241 0
	addi 3,31,100
	la 4,.LC128@l(4)
.LBE6016:
.LBE6019:
	.loc 2 2386 0
	stw 0,2420(31)
	.loc 2 2387 0
	stw 0,2424(31)
	.loc 2 2388 0
	stw 0,2428(31)
.LVL1522:
.LBB6020:
.LBB6017:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1523:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L913
.LVL1524:
.LBB6015:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 29,4(9)
.LVL1525:
.L904:
.LBE6015:
.LBE6017:
.LBE6020:
	.loc 2 2391 0
	lbz 0,0(29)
	cmpwi 7,0,0
	beq- 7,.L903
	.loc 2 2392 0
	mr 3,29
.LVL1526:
	li 4,46
	bl strchr
	cmpwi 7,3,0
	beq- 7,.L906
.LVL1527:
.L915:
	.loc 2 2394 0
	lwz 4,2296(31)
.L907:
	.loc 2 2399 0
	cmpwi 7,4,0
	beq- 7,.L916
.L909:
	.loc 2 2404 0
	lwz 9,0(4)
	addi 3,1,8
	mr 5,30
	lwz 0,128(9)
	mtctr 0
	bctrl
.LVL1528:
.LBB6021:
.LBB6022:
.LBB6023:
	.loc 3 424 0
	lwz 0,8(1)
	stw 0,2308(31)
	.loc 3 425 0
	lwz 0,12(1)
	stw 0,2312(31)
	.loc 3 426 0
	lwz 0,16(1)
	stw 0,2316(31)
.LVL1529:
	.loc 3 424 0
	lwz 0,20(1)
	stw 0,2320(31)
	.loc 3 425 0
	lwz 0,24(1)
	stw 0,2324(31)
	.loc 3 426 0
	lwz 0,28(1)
	stw 0,2328(31)
.LVL1530:
.L911:
.LBE6023:
.LBE6022:
.LBE6021:
	.loc 2 2408 0
	lwz 9,1656(31)
.LBB6024:
.LBB6025:
	addi 29,31,1656
.LBE6025:
.LBE6024:
	lwz 4,2248(31)
	mr 3,29
	lwz 0,132(9)
	mtctr 0
	bctrl
	.loc 2 2409 0
	lwz 11,1656(31)
.LBB6027:
.LBB6028:
	.loc 3 424 0
	lwz 0,0(3)
.LBE6028:
.LBE6027:
	.loc 2 2408 0
	mr 9,3
.LVL1531:
	.loc 2 2409 0
	lwz 4,2248(31)
	mr 3,29
.LVL1532:
.LBB6030:
.LBB6029:
	.loc 3 424 0
	stw 0,2356(31)
	.loc 3 425 0
	lwz 0,4(9)
	stw 0,2360(31)
	.loc 3 426 0
	lwz 0,8(9)
	stw 0,2364(31)
.LVL1533:
.LBE6029:
.LBE6030:
	.loc 2 2409 0
	lwz 0,136(11)
	mtctr 0
	bctrl
.LVL1534:
.LBB6031:
.LBB6032:
	.loc 6 333 0
	addi 8,31,2368
	li 10,0
.L912:
.LBB6033:
.LBB6034:
	.loc 3 424 0
	mr 11,3
	mr 9,8
	lwzux 0,11,10
.LBE6034:
.LBE6033:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB6037:
.LBB6035:
	.loc 3 424 0
	stwux 0,9,10
.LBE6035:
.LBE6037:
	.loc 6 333 0
	addi 10,10,12
.LBB6038:
.LBB6036:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE6036:
.LBE6038:
	.loc 6 333 0
	bne+ 7,.L912
.LBE6032:
.LBE6031:
	.loc 2 2410 0
	lis 9,gameRenderWorld@ha
	mr 4,30
	lwz 3,gameRenderWorld@l(9)
.LVL1535:
	lwz 9,0(3)
	lwz 0,16(9)
	mtctr 0
	bctrl
	stw 3,2512(31)
.LVL1536:
.L903:
.LBE6043:
	.loc 2 2412 0
	lwz 0,60(1)
	lwz 29,44(1)
	mtlr 0
	lwz 30,48(1)
	lwz 31,52(1)
.LVL1537:
	addi 1,1,56
	.cfi_remember_state
.LCFI373:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL1538:
.L913:
.LCFI374:
	.cfi_restore_state
.LBB6044:
.LBB6039:
.LBB6018:
	.loc 11 245 0
	lis 29,.LC35@ha
	la 29,.LC35@l(29)
	b .L904
.LVL1539:
.L906:
.LBE6018:
.LBE6039:
	.loc 2 2393 0
	lis 9,declManager@ha
	li 4,5
	lwz 3,declManager@l(9)
	mr 5,29
	li 6,0
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1540:
	.loc 2 2394 0
	cmpwi 7,3,0
	beq- 7,.L915
	.loc 2 2395 0
	bl _ZNK14idDeclModelDef11ModelHandleEv
.LVL1541:
	mr 4,3
	stw 3,2296(31)
	b .L907
.L916:
	.loc 2 2400 0
	lis 9,renderModelManager@ha
	mr 4,29
	lwz 3,renderModelManager@l(9)
	lwz 9,0(3)
	lwz 0,32(9)
	mtctr 0
	bctrl
	.loc 2 2403 0
	cmpwi 7,3,0
	.loc 2 2400 0
	mr 4,3
	stw 3,2296(31)
	.loc 2 2403 0
	bne- 7,.L909
.LVL1542:
.LBB6040:
.LBB6026:
	.loc 17 208 0
	li 0,0
	stw 0,2328(31)
	stw 0,2324(31)
	stw 0,2320(31)
	stw 0,2316(31)
	stw 0,2312(31)
	stw 0,2308(31)
	b .L911
.LBE6026:
.LBE6040:
.LBE6044:
	.cfi_endproc
.LFE3002:
	.size	_ZN20idAFEntity_SteamPipe21InitSteamRenderEntityEv, .-_ZN20idAFEntity_SteamPipe21InitSteamRenderEntityEv
	.align 2
	.globl _ZN20idAFEntity_SteamPipe5SpawnEv
	.type	_ZN20idAFEntity_SteamPipe5SpawnEv, @function
_ZN20idAFEntity_SteamPipe5SpawnEv:
.LFB3001:
	.loc 2 2351 0
	.cfi_startproc
.LVL1543:
	mflr 0
	stwu 1,-64(1)
.LCFI375:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 29,28(1)
.LBB6068:
	.loc 2 2359 0
	addi 29,3,1656
	.cfi_offset 29, -36
.LBE6068:
	.loc 2 2351 0
	stw 30,32(1)
.LBB6147:
	.loc 2 2363 0
	addi 30,3,100
	.cfi_offset 30, -32
.LBE6147:
	.loc 2 2351 0
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -28
	stw 0,68(1)
	stfd 29,40(1)
	stfd 30,48(1)
	stfd 31,56(1)
	stw 28,24(1)
.LBB6148:
	.loc 2 2355 0
	lwz 9,0(3)
	lwz 0,232(9)
	.cfi_offset 28, -40
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL1544:
	.loc 2 2357 0
	mr 3,31
	bl _ZN15idAFEntity_Base14SetCombatModelEv
.LVL1545:
	.loc 2 2359 0
	mr 3,31
	mr 4,29
	bl _ZN8idEntity10SetPhysicsEP9idPhysics
.LVL1546:
	.loc 2 2361 0
	lwz 0,192(31)
	li 9,1
.LBB6069:
.LBB6070:
	.loc 11 241 0
	lis 4,.LC131@ha
.LBE6070:
.LBE6069:
	.loc 2 2361 0
	rlwimi 0,9,29,2,2
.LBB6078:
.LBB6073:
	.loc 11 241 0
	mr 3,30
.LBE6073:
.LBE6078:
	.loc 2 2361 0
	stw 0,192(31)
.LBB6079:
.LBB6074:
	.loc 11 241 0
	la 4,.LC131@l(4)
	bl _ZNK6idDict7FindKeyEPKc
.LVL1547:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L921
.LVL1548:
.LBB6071:
	.loc 2 2927 0
	lwz 9,4(3)
.LBE6071:
.LBE6074:
.LBE6079:
.LBB6080:
.LBB6081:
.LBB6082:
.LBB6083:
	.loc 11 241 0
	lis 4,.LC132@ha
	mr 3,30
.LVL1549:
	la 4,.LC132@l(4)
.LBE6083:
.LBE6082:
.LBE6081:
.LBE6080:
.LBB6101:
.LBB6075:
.LBB6072:
	.loc 2 2927 0
	lwz 28,4(9)
.LBE6072:
.LBE6075:
.LBE6101:
.LBB6102:
.LBB6093:
.LBB6089:
.LBB6085:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1550:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L922
.L924:
.LVL1551:
.LBB6084:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1552:
.LBE6084:
.LBE6085:
.LBE6089:
	.loc 11 249 0
	bl atof
.LVL1553:
.LBE6093:
.LBE6102:
.LBB6103:
.LBB6104:
.LBB6105:
.LBB6106:
	.loc 11 241 0
	lis 4,.LC133@ha
.LBE6106:
.LBE6105:
.LBE6104:
.LBE6103:
.LBB6125:
.LBB6094:
	.loc 11 249 0
	frsp 1,1
.LBE6094:
.LBE6125:
.LBB6126:
.LBB6118:
.LBB6113:
.LBB6108:
	.loc 11 241 0
	mr 3,30
	la 4,.LC133@l(4)
.LBE6108:
.LBE6113:
.LBE6118:
.LBE6126:
.LBB6127:
.LBB6095:
	.loc 11 249 0
	stfs 1,2252(31)
.LVL1554:
.LBE6095:
.LBE6127:
.LBB6128:
.LBB6119:
.LBB6114:
.LBB6109:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1555:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L923
.LVL1556:
.L925:
.LBB6107:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL1557:
.L920:
.LBE6107:
.LBE6109:
.LBE6114:
	.loc 11 249 0
	bl atof
.LBE6119:
.LBE6128:
	.loc 2 2366 0
	lwz 9,1656(31)
.LBB6129:
.LBB6120:
	.loc 11 249 0
	frsp 1,1
.LBE6120:
.LBE6129:
	.loc 2 2366 0
	lwz 4,2248(31)
	mr 3,29
	.loc 2 2368 0
	addi 30,31,2260
.LVL1558:
.LBB6130:
.LBB6121:
	.loc 11 249 0
	stfs 1,2256(31)
.LVL1559:
.LBE6121:
.LBE6130:
	.loc 2 2366 0
	lwz 0,136(9)
	mtctr 0
	bctrl
	.loc 2 2367 0
	mr 4,28
	.loc 2 2366 0
	mr 9,3
.LVL1560:
	.loc 2 2367 0
	mr 3,29
.LVL1561:
.LBB6131:
.LBB6132:
	.loc 3 424 0
	lfs 29,24(9)
.LVL1562:
	.loc 3 425 0
	lfs 30,28(9)
.LVL1563:
	.loc 3 426 0
	lfs 31,32(9)
.LVL1564:
.LBE6132:
.LBE6131:
	.loc 2 2367 0
	bl _ZNK12idPhysics_AF9GetBodyIdEPKc
.LVL1565:
	stw 3,2248(31)
	mr 28,3
	.loc 2 2368 0
	lwz 9,1656(31)
	mr 4,28
	mr 3,29
	lwz 0,132(9)
	mtctr 0
	bctrl
	mr 5,28
	mr 6,3
	mr 4,29
	mr 3,30
	bl _ZN16idForce_Constant11SetPositionEP9idPhysicsiRK6idVec3
	.loc 2 2369 0
	lfs 0,2252(31)
	addi 4,1,8
	mr 3,30
	fneg 0,0
.LVL1566:
.LBB6133:
.LBB6134:
	.loc 3 439 0
	fmuls 12,0,29
	fmuls 13,0,30
	fmuls 0,0,31
.LVL1567:
.LBB6135:
.LBB6136:
	.loc 3 396 0
	stfs 12,8(1)
	.loc 3 397 0
	stfs 13,12(1)
	.loc 3 398 0
	stfs 0,16(1)
.LBE6136:
.LBE6135:
.LBE6134:
.LBE6133:
	.loc 2 2369 0
	bl _ZN16idForce_Constant8SetForceERK6idVec3
.LVL1568:
	.loc 2 2371 0
	mr 3,31
	bl _ZN20idAFEntity_SteamPipe21InitSteamRenderEntityEv
	.loc 2 2373 0
	mr 3,31
	li 4,1
	bl _ZN8idEntity12BecomeActiveEi
.LBE6148:
	.loc 2 2374 0
	lwz 0,68(1)
	lwz 28,24(1)
	mtlr 0
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL1569:
	lfd 29,40(1)
.LVL1570:
	lfd 30,48(1)
.LVL1571:
	lfd 31,56(1)
.LVL1572:
	addi 1,1,64
	.cfi_remember_state
.LCFI376:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1573:
.L921:
.LCFI377:
	.cfi_restore_state
.LBB6149:
.LBB6137:
.LBB6096:
.LBB6090:
.LBB6086:
	.loc 11 241 0
	lis 4,.LC132@ha
	mr 3,30
.LVL1574:
	la 4,.LC132@l(4)
.LBE6086:
.LBE6090:
.LBE6096:
.LBE6137:
.LBB6138:
.LBB6076:
	.loc 11 245 0
	lis 28,.LC35@ha
.LBE6076:
.LBE6138:
.LBB6139:
.LBB6097:
.LBB6091:
.LBB6087:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LBE6087:
.LBE6091:
.LBE6097:
.LBE6139:
.LBB6140:
.LBB6077:
	.loc 11 245 0
	la 28,.LC35@l(28)
.LVL1575:
.LBE6077:
.LBE6140:
.LBB6141:
.LBB6098:
.LBB6092:
.LBB6088:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L924
.L922:
	.loc 11 245 0
	lis 3,.LC129@ha
.LVL1576:
	la 3,.LC129@l(3)
.LBE6088:
.LBE6092:
	.loc 11 249 0
	bl atof
.LBE6098:
.LBE6141:
.LBB6142:
.LBB6122:
.LBB6115:
.LBB6110:
	.loc 11 241 0
	lis 4,.LC133@ha
.LBE6110:
.LBE6115:
.LBE6122:
.LBE6142:
.LBB6143:
.LBB6099:
	.loc 11 249 0
	frsp 1,1
.LBE6099:
.LBE6143:
.LBB6144:
.LBB6123:
.LBB6116:
.LBB6111:
	.loc 11 241 0
	mr 3,30
	la 4,.LC133@l(4)
.LBE6111:
.LBE6116:
.LBE6123:
.LBE6144:
.LBB6145:
.LBB6100:
	.loc 11 249 0
	stfs 1,2252(31)
.LVL1577:
.LBE6100:
.LBE6145:
.LBB6146:
.LBB6124:
.LBB6117:
.LBB6112:
	.loc 11 241 0
	bl _ZNK6idDict7FindKeyEPKc
.LVL1578:
	.loc 11 242 0
	cmpwi 0,3,0
	bne+ 0,.L925
.LVL1579:
.L923:
	.loc 11 245 0
	lis 3,.LC130@ha
.LVL1580:
	la 3,.LC130@l(3)
	b .L920
.LBE6112:
.LBE6117:
.LBE6124:
.LBE6146:
.LBE6149:
	.cfi_endproc
.LFE3001:
	.size	_ZN20idAFEntity_SteamPipe5SpawnEv, .-_ZN20idAFEntity_SteamPipe5SpawnEv
	.align 2
	.globl _ZN20idAFEntity_SteamPipe7RestoreEP13idRestoreGame
	.type	_ZN20idAFEntity_SteamPipe7RestoreEP13idRestoreGame, @function
_ZN20idAFEntity_SteamPipe7RestoreEP13idRestoreGame:
.LFB3000:
	.loc 2 2342 0
	.cfi_startproc
.LVL1581:
	.loc 2 2344 0
	.loc 2 2343 0
	b _ZN20idAFEntity_SteamPipe5SpawnEv
.LVL1582:
.LVL1583:
	.cfi_endproc
.LFE3000:
	.size	_ZN20idAFEntity_SteamPipe7RestoreEP13idRestoreGame, .-_ZN20idAFEntity_SteamPipe7RestoreEP13idRestoreGame
	.align 2
	.globl _ZN26idAFEntity_ClawFourFingersC2Ev
	.type	_ZN26idAFEntity_ClawFourFingersC2Ev, @function
_ZN26idAFEntity_ClawFourFingersC2Ev:
.LFB3007:
	.loc 2 2466 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3007
.LVL1584:
	mflr 0
	stwu 1,-16(1)
.LCFI378:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB165:
.LBB6150:
	.loc 2 2466 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN15idAFEntity_BaseC2Ev
.LEHE165:
.LVL1585:
	lis 9,_ZTV26idAFEntity_ClawFourFingers+8@ha
	.loc 2 2468 0
	lis 3,.LC134@ha
	.loc 2 2466 0
	la 0,_ZTV26idAFEntity_ClawFourFingers+8@l(9)
	.loc 2 2468 0
	la 3,.LC134@l(3)
	.loc 2 2466 0
	stw 0,0(31)
	.loc 2 2468 0
	li 4,2264
.LEHB166:
	crxor 6,6,6
	bl _Z15Sys_DebugPrintfPKcz
.LEHE166:
	.loc 2 2471 0
	li 0,0
	stw 0,2248(31)
	.loc 2 2472 0
	stw 0,2252(31)
	.loc 2 2473 0
	stw 0,2256(31)
	.loc 2 2474 0
	stw 0,2260(31)
.LBE6150:
	.loc 2 2475 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1586:
	addi 1,1,16
	.cfi_remember_state
.LCFI379:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1587:
.L929:
.LCFI380:
	.cfi_restore_state
	mr 30,3
.LBB6151:
	.loc 2 2466 0
	mr 3,31
	bl _ZN15idAFEntity_BaseD2Ev
	mr 3,30
.LEHB167:
	bl _Unwind_Resume
.LEHE167:
.LBE6151:
	.cfi_endproc
.LFE3007:
	.section	.gcc_except_table
.LLSDA3007:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3007-.LLSDACSB3007
.LLSDACSB3007:
	.uleb128 .LEHB165-.LFB3007
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB3007
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L929-.LFB3007
	.uleb128 0
	.uleb128 .LEHB167-.LFB3007
	.uleb128 .LEHE167-.LEHB167
	.uleb128 0
	.uleb128 0
.LLSDACSE3007:
	.section	".text"
	.size	_ZN26idAFEntity_ClawFourFingersC2Ev, .-_ZN26idAFEntity_ClawFourFingersC2Ev
	.align 2
	.globl _ZN26idAFEntity_ClawFourFingers14CreateInstanceEv
	.type	_ZN26idAFEntity_ClawFourFingers14CreateInstanceEv, @function
_ZN26idAFEntity_ClawFourFingers14CreateInstanceEv:
.LFB3004:
	.loc 2 2452 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3004
	mflr 0
	stwu 1,-24(1)
.LCFI381:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB6152:
	li 3,2264
.LBE6152:
	stw 30,16(1)
	stw 0,28(1)
	stw 31,20(1)
.LEHB168:
.LBB6153:
	.loc 2 2452 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl _ZN7idClassnwEj
.LEHE168:
	mr 31,3
.LEHB169:
	bl _ZN26idAFEntity_ClawFourFingersC1Ev
.LEHE169:
.LVL1588:
	.loc 2 2452 0 is_stmt 0 discriminator 2
	mr 3,31
.LEHB170:
	bl _ZN7idClass23FindUninitializedMemoryEv
.LEHE170:
.LVL1589:
.L935:
.LBE6153:
	.loc 2 2452 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,16(1)
	mtlr 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI382:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L936:
.L932:
.LCFI383:
	.cfi_restore_state
.LBB6154:
	cmpwi 7,4,1
	beq- 7,.L934
.LEHB171:
	bl _Unwind_Resume
.LEHE171:
.L937:
	mr 30,3
	mr 3,31
	stw 4,8(1)
	bl _ZN7idClassdlEPv
	mr 3,30
	lwz 4,8(1)
	b .L932
.L934:
.LBE6154:
.LBB6155:
	bl __cxa_begin_catch
	li 31,0
	bl __cxa_end_catch
	b .L935
.LBE6155:
	.cfi_endproc
.LFE3004:
	.section	.gcc_except_table
	.align 2
.LLSDA3004:
	.byte	0xff
	.byte	0
	.uleb128 .LLSDATT3004-.LLSDATTD3004
.LLSDATTD3004:
	.byte	0x1
	.uleb128 .LLSDACSE3004-.LLSDACSB3004
.LLSDACSB3004:
	.uleb128 .LEHB168-.LFB3004
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L936-.LFB3004
	.uleb128 0x1
	.uleb128 .LEHB169-.LFB3004
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L937-.LFB3004
	.uleb128 0x3
	.uleb128 .LEHB170-.LFB3004
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L936-.LFB3004
	.uleb128 0x1
	.uleb128 .LEHB171-.LFB3004
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
.LLSDACSE3004:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 2
	.long	_ZTI12idAllocError
.LLSDATT3004:
	.section	".text"
	.size	_ZN26idAFEntity_ClawFourFingers14CreateInstanceEv, .-_ZN26idAFEntity_ClawFourFingers14CreateInstanceEv
	.align 2
	.globl _ZN10idGameEdit17AF_UpdateEntitiesEPKc
	.type	_ZN10idGameEdit17AF_UpdateEntitiesEPKc, @function
_ZN10idGameEdit17AF_UpdateEntitiesEPKc:
.LFB3015:
	.loc 2 2626 0 is_stmt 1
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3015
.LVL1590:
	mflr 0
	stwu 1,-48(1)
.LCFI384:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
.LVL1591:
.LBB6156:
.LBB6157:
.LBB6158:
.LBB6159:
	.loc 5 357 0
	li 9,20
	stw 9,16(1)
.LBE6159:
.LBE6158:
.LBE6157:
	.loc 2 2631 0
	addi 3,1,8
.LVL1592:
.LBE6156:
	.loc 2 2626 0
	stw 0,52(1)
.LBB6183:
.LBB6164:
.LBB6162:
.LBB6160:
	.loc 5 358 0
	addi 9,1,20
	.loc 5 356 0
	li 0,0
	.cfi_offset 65, 4
.LBE6160:
.LBE6162:
.LBE6164:
.LBE6183:
	.loc 2 2626 0
	stw 30,40(1)
	stw 31,44(1)
.LBB6184:
.LBB6165:
.LBB6163:
.LBB6161:
	.loc 5 356 0
	stw 0,8(1)
	.loc 5 358 0
	stw 9,12(1)
	.loc 5 359 0
	stb 0,20(1)
.LEHB172:
.LBE6161:
.LBE6163:
.LBE6165:
	.loc 2 2631 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	bl _ZN5idStraSEPKc
.LVL1593:
	.loc 2 2632 0
	addi 3,1,8
	bl _ZN5idStr18StripFileExtensionEv
	.loc 2 2635 0
	lis 11,gameLocal@ha
	la 11,gameLocal@l(11)
	addis 11,11,0x1
	lwz 9,-32192(11)
	lwz 0,-32196(11)
.LBB6166:
.LBB6167:
	.file 22 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/LinkList.h"
	.loc 22 268 0
	cmpwi 7,9,0
	beq- 7,.L939
	cmpw 7,0,9
	beq- 7,.L939
	.loc 22 271 0
	lwz 31,12(9)
.LVL1594:
.LBE6167:
.LBE6166:
	.loc 2 2635 0
	cmpwi 7,31,0
	beq- 7,.L939
.LBB6168:
	.loc 2 2927 0
	lis 30,.LANCHOR0@ha
	la 30,.LANCHOR0@l(30)
.LVL1595:
.L946:
.LBB6169:
	.file 23 "d:/Data/Nintendo/DoomGX/src/game/gamesys/Class.h"
	.loc 23 340 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1596:
.LBE6169:
	.loc 2 2927 0
	lwz 0,56(3)
.LBB6172:
.LBB6170:
.LBB6171:
	.loc 23 311 0
	lwz 11,296(30)
	cmpw 7,0,11
	blt- 7,.L940
	lwz 9,300(30)
	cmpw 7,0,9
	bgt- 7,.L940
.LVL1597:
.LBE6171:
.LBE6170:
.LBE6172:
.LBE6168:
.LBB6173:
.LBB6174:
	.loc 5 690 0
	lwz 3,12(1)
.LVL1598:
	lwz 4,1628(31)
	bl _ZN5idStr4IcmpEPKcS1_
.LEHE172:
.LVL1599:
.LBE6174:
.LBE6173:
	.loc 2 2638 0
	cmpwi 7,3,0
	beq- 7,.L948
.LVL1600:
.L940:
	.loc 2 2927 0
	lwz 9,16(31)
	lwz 0,12(31)
.LBB6175:
.LBB6176:
	.loc 22 268 0
	cmpwi 7,9,0
	beq- 7,.L939
	cmpw 7,0,9
	beq- 7,.L939
	.loc 22 271 0
	lwz 31,12(9)
.LVL1601:
.LBE6176:
.LBE6175:
	.loc 2 2635 0
	cmpwi 7,31,0
	bne+ 7,.L946
.LVL1602:
.L939:
.LBB6177:
.LBB6178:
.LBB6179:
	.loc 5 501 0
	addi 3,1,8
.LEHB173:
	bl _ZN5idStr8FreeDataEv
.LEHE173:
.LBE6179:
.LBE6178:
.LBE6177:
.LBE6184:
	.loc 2 2644 0
	lwz 0,52(1)
	lwz 30,40(1)
	mtlr 0
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI385:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1603:
.L948:
.LCFI386:
	.cfi_restore_state
.LBB6185:
	.loc 2 2639 0
	lwz 9,0(31)
	mr 3,31
	lwz 0,232(9)
	mtctr 0
.LEHB174:
	bctrl
.LVL1604:
	.loc 2 2640 0
	lwz 9,1656(31)
	addi 3,31,1656
	lwz 0,92(9)
	mtctr 0
	bctrl
.LEHE174:
	b .L940
.LVL1605:
.L945:
	mr 31,3
.LVL1606:
.LBB6180:
.LBB6181:
.LBB6182:
	.loc 5 501 0
	addi 3,1,8
	bl _ZN5idStr8FreeDataEv
	mr 3,31
.LEHB175:
	bl _Unwind_Resume
.LEHE175:
.LBE6182:
.LBE6181:
.LBE6180:
.LBE6185:
	.cfi_endproc
.LFE3015:
	.section	.gcc_except_table
.LLSDA3015:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3015-.LLSDACSB3015
.LLSDACSB3015:
	.uleb128 .LEHB172-.LFB3015
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L945-.LFB3015
	.uleb128 0
	.uleb128 .LEHB173-.LFB3015
	.uleb128 .LEHE173-.LEHB173
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB174-.LFB3015
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L945-.LFB3015
	.uleb128 0
	.uleb128 .LEHB175-.LFB3015
	.uleb128 .LEHE175-.LEHB175
	.uleb128 0
	.uleb128 0
.LLSDACSE3015:
	.section	".text"
	.size	_ZN10idGameEdit17AF_UpdateEntitiesEPKc, .-_ZN10idGameEdit17AF_UpdateEntitiesEPKc
	.align 2
	.globl _ZN10idGameEdit14AF_UndoChangesEv
	.type	_ZN10idGameEdit14AF_UndoChangesEv, @function
_ZN10idGameEdit14AF_UndoChangesEv:
.LFB3016:
	.loc 2 2651 0
	.cfi_startproc
.LVL1607:
	stwu 1,-40(1)
.LCFI387:
	.cfi_def_cfa_offset 40
	mflr 0
.LBB6186:
	.loc 2 2657 0
	li 4,8
.LBE6186:
	.loc 2 2651 0
	stw 28,24(1)
.LBB6212:
	.loc 2 2657 0
	lis 28,declManager@ha
	.cfi_offset 28, -16
	.cfi_register 65, 0
.LBE6212:
	.loc 2 2651 0
	stw 27,20(1)
	stw 0,44(1)
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
.LBB6213:
	.loc 2 2657 0
	lwz 3,declManager@l(28)
.LVL1608:
	lwz 9,0(3)
	lwz 0,72(9)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	mtctr 0
	bctrl
.LVL1609:
	.loc 2 2658 0
	mr. 27,3
	ble- 0,.L949
	.loc 2 2668 0
	lis 26,gameLocal@ha
	lis 31,.LANCHOR0+240@ha
	la 26,gameLocal@l(26)
	.loc 2 2658 0
	li 30,0
	la 28,declManager@l(28)
	.loc 2 2668 0
	addis 26,26,0x1
	la 31,.LANCHOR0+240@l(31)
	b .L954
.LVL1610:
.L951:
	.loc 2 2658 0
	addi 30,30,1
.LVL1611:
	cmpw 7,30,27
	beq- 7,.L949
.LVL1612:
.L954:
	.loc 2 2659 0
	lwz 3,0(28)
	li 4,8
	mr 5,30
	li 6,0
	lwz 9,0(3)
	lwz 0,76(9)
	mtctr 0
	bctrl
	.loc 2 2660 0
	lbz 0,8(3)
	.loc 2 2659 0
	mr 29,3
.LVL1613:
	.loc 2 2660 0
	cmpwi 7,0,0
	beq+ 7,.L951
	.loc 2 2927 0
	lwz 3,4(3)
.LVL1614:
.LBB6187:
.LBB6188:
	.file 24 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclManager.h"
	.loc 24 158 0
	lwz 9,0(3)
	lwz 0,28(9)
	mtctr 0
	bctrl
.LBE6188:
.LBE6187:
	.loc 2 2927 0
	lwz 3,4(29)
	.loc 2 2665 0
	lwz 24,0(28)
.LBB6189:
.LBB6190:
	.loc 24 140 0
	lwz 9,0(3)
	lwz 0,8(9)
.LBE6190:
.LBE6189:
	.loc 2 2665 0
	lwz 9,0(24)
.LBB6194:
.LBB6191:
	.loc 24 140 0
	mtctr 0
.LBE6191:
.LBE6194:
	.loc 2 2665 0
	lwz 25,60(9)
.LBB6195:
.LBB6192:
	.loc 24 140 0
	bctrl
.LBE6192:
.LBE6195:
	.loc 2 2665 0
	li 4,8
.LBB6196:
.LBB6193:
	.loc 24 140 0
	mr 5,3
.LBE6193:
.LBE6196:
	.loc 2 2665 0
	li 6,1
	mr 3,24
	li 7,0
	mtctr 25
	bctrl
	.loc 2 2668 0
	lwz 9,-32192(26)
	lwz 0,-32196(26)
.LBB6197:
.LBB6198:
	.loc 22 268 0
	cmpwi 7,9,0
	beq- 7,.L951
	cmpw 7,0,9
	bne+ 7,.L957
	b .L951
.LVL1615:
.L952:
.LBE6198:
.LBE6197:
	.loc 2 2927 0
	lwz 9,16(25)
	lwz 0,12(25)
.LBB6200:
.LBB6201:
	.loc 22 268 0
	cmpwi 7,9,0
	cmpw 6,0,9
	beq- 7,.L951
	beq- 6,.L951
.LVL1616:
.L957:
.LBE6201:
.LBE6200:
.LBB6202:
.LBB6199:
	.loc 22 271 0
	lwz 25,12(9)
.LVL1617:
.LBE6199:
.LBE6202:
	.loc 2 2668 0
	cmpwi 7,25,0
	beq- 7,.L951
.LVL1618:
.LBB6203:
.LBB6204:
	.loc 23 340 0
	lwz 9,0(25)
.LVL1619:
	mr 3,25
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL1620:
.LBB6205:
.LBB6206:
	.loc 23 311 0
	lwz 9,56(31)
.LBE6206:
.LBE6205:
.LBE6204:
	.loc 2 2927 0
	lwz 0,56(3)
.LBB6209:
.LBB6208:
.LBB6207:
	.loc 23 311 0
	cmpw 7,0,9
	blt- 7,.L952
	lwz 9,60(31)
	cmpw 7,0,9
	bgt- 7,.L952
.LVL1621:
	.loc 2 2927 0
	lwz 3,4(29)
.LVL1622:
.LBE6207:
.LBE6208:
.LBE6209:
.LBE6203:
.LBB6210:
.LBB6211:
	.loc 24 140 0
	lwz 9,0(3)
	lwz 0,8(9)
	mtctr 0
	bctrl
.LVL1623:
.LBE6211:
.LBE6210:
	.loc 2 2671 0
	lwz 4,1628(25)
	bl _ZN5idStr4IcmpEPKcS1_
	cmpwi 7,3,0
	bne+ 7,.L952
	.loc 2 2672 0
	lwz 9,0(25)
	mr 3,25
	lwz 0,232(9)
	mtctr 0
	bctrl
	b .L952
.LVL1624:
.L949:
.LBE6213:
	.loc 2 2677 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
.LVL1625:
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
.LCFI388:
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
.LFE3016:
	.size	_ZN10idGameEdit14AF_UndoChangesEv, .-_ZN10idGameEdit14AF_UndoChangesEv
	.align 2
	.globl _ZN10idGameEdit13AF_CreateMeshERK6idDictR6idVec3R6idMat3Rb
	.type	_ZN10idGameEdit13AF_CreateMeshERK6idDictR6idVec3R6idMat3Rb, @function
_ZN10idGameEdit13AF_CreateMeshERK6idDictR6idVec3R6idMat3Rb:
.LFB3019:
	.loc 2 2726 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3019
.LVL1626:
	stwu 1,-1104(1)
.LCFI389:
	.cfi_def_cfa_offset 1104
	mflr 0
.LBB6582:
.LBB6583:
.LBB6584:
.LBB6585:
	.loc 5 357 0
	li 11,20
.LBE6585:
.LBE6584:
.LBE6583:
.LBE6582:
	.loc 2 2726 0
	mfcr 12
	stw 31,1092(1)
	mr 31,1
	.cfi_offset 31, -12
	.cfi_register 70, 12
	.cfi_register 65, 0
.LCFI390:
	.cfi_def_cfa_register 31
.LVL1627:
	stw 0,1108(1)
.LBB7169:
.LBB6592:
.LBB6589:
.LBB6586:
	.loc 5 356 0
	li 9,0
.LBE6586:
.LBE6589:
.LBE6592:
.LBB6593:
.LBB6594:
	.loc 3 416 0
	li 0,0
	.cfi_offset 65, 4
.LBE6594:
.LBE6593:
.LBB6596:
.LBB6590:
.LBB6587:
	.loc 5 357 0
	stw 11,48(31)
	.loc 5 358 0
	addi 11,31,52
.LBE6587:
.LBE6590:
.LBE6596:
.LBE7169:
	.loc 2 2726 0
	stw 20,1048(1)
	stw 22,1056(1)
	lis 8,mat3_identity@ha
	stw 24,1064(1)
	mr 20,5
	.cfi_offset 24, -40
	.cfi_offset 22, -48
	.cfi_offset 20, -56
	stw 26,1072(1)
	mr 22,4
	stfd 31,1096(1)
	mr 26,3
	.cfi_offset 63, -8
	.cfi_offset 26, -32
	stw 14,1024(1)
	mr 24,6
	stw 15,1028(1)
.LBB7170:
.LBB6597:
.LBB6598:
.LBB6599:
	.loc 6 333 0
	li 10,0
.LBE6599:
.LBE6598:
.LBE6597:
.LBE7170:
	.loc 2 2726 0
	stw 16,1032(1)
	la 8,mat3_identity@l(8)
	stw 17,1036(1)
	stw 18,1040(1)
	stw 19,1044(1)
	stw 21,1052(1)
	stw 23,1060(1)
	stw 25,1068(1)
	stw 27,1076(1)
	stw 28,1080(1)
	stw 29,1084(1)
	stw 30,1088(1)
	stw 12,1020(1)
	.loc 2 2726 0
	stw 7,992(31)
.LBB7171:
	.loc 2 2749 0
	stb 9,0(7)
.LVL1628:
.LBB6608:
.LBB6591:
.LBB6588:
	.loc 5 356 0
	stw 9,40(31)
	.loc 5 358 0
	stw 11,44(31)
	.loc 5 359 0
	stb 9,52(31)
.LBE6588:
.LBE6591:
.LBE6608:
.LBB6609:
.LBB6595:
	.loc 3 416 0
	stw 0,8(5)
	stw 0,4(5)
	stw 0,0(5)
.L959:
.LBE6595:
.LBE6609:
.LBB6610:
.LBB6607:
.LBB6606:
.LBB6600:
.LBB6601:
	.loc 3 424 0
	mr 11,8
	mr 9,24
	lwzux 0,11,10
.LBE6601:
.LBE6600:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB6604:
.LBB6602:
	.loc 3 424 0
	stwux 0,9,10
.LBE6602:
.LBE6604:
	.loc 6 333 0
	addi 10,10,12
.LBB6605:
.LBB6603:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE6603:
.LBE6605:
	.loc 6 333 0
	bne+ 7,.L959
	.cfi_offset 70, -84
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 25, -36
	.cfi_offset 23, -44
	.cfi_offset 21, -52
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	.cfi_offset 17, -68
	.cfi_offset 16, -72
	.cfi_offset 15, -76
	.cfi_offset 14, -80
.LVL1629:
.LBE6606:
.LBE6607:
.LBE6610:
.LBB6611:
.LBB6612:
	.loc 11 241 0
	lis 4,.LC135@ha
.LVL1630:
	mr 3,22
.LVL1631:
	la 4,.LC135@l(4)
	addi 29,31,40
.LEHB176:
	bl _ZNK6idDict7FindKeyEPKc
.LVL1632:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1019
.LVL1633:
.LBB6613:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL1634:
.L960:
.LBE6613:
.LBE6612:
.LBE6611:
	.loc 2 2754 0
	lis 3,gameLocal@ha
.LVL1635:
	li 5,1
	la 3,gameLocal@l(3)
	addi 29,31,40
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
	mr 27,3
.LVL1636:
	.loc 2 2757 0
	lis 5,.LC32@ha
	mr 3,22
.LVL1637:
	mr 4,27
	la 5,.LC32@l(5)
	bl _ZL12GetArgStringRK6idDictPS0_PKc
	.loc 2 2758 0 discriminator 1
	lis 28,declManager@ha
	.loc 2 2757 0 discriminator 1
	mr 5,3
.LVL1638:
	.loc 2 2758 0 discriminator 1
	lwz 3,declManager@l(28)
.LVL1639:
	li 4,8
	li 6,1
	li 7,0
	lwz 9,0(3)
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1640:
	.loc 2 2759 0 discriminator 1
	mr. 30,3
	beq- 0,.L1023
	.loc 2 2764 0
	lis 5,.LC69@ha
	mr 3,22
.LVL1641:
	mr 4,27
	la 5,.LC69@l(5)
	bl _ZL12GetArgStringRK6idDictPS0_PKc
	mr 5,3
.LVL1642:
	.loc 2 2765 0
	lwz 3,declManager@l(28)
.LVL1643:
	li 4,5
	li 6,0
	lwz 9,0(3)
	li 7,0
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL1644:
	.loc 2 2766 0 discriminator 1
	mr. 28,3
	beq- 0,.L1023
	.loc 2 2771 0
	bl _ZNK14idDeclModelDef11ModelHandleEv
.LVL1645:
	cmpwi 7,3,0
	beq- 7,.L1017
	.loc 2 2771 0 is_stmt 0 discriminator 1
	mr 3,28
	bl _ZNK14idDeclModelDef11ModelHandleEv
	lwz 9,0(3)
	lwz 0,40(9)
	mtctr 0
	bctrl
	cmpwi 7,3,0
	beq- 7,.L1048
.L1017:
	.loc 2 2776 0 is_stmt 1
	mr 3,28
	addi 29,31,40
	bl _ZNK14idDeclModelDef11ModelHandleEv
.LVL1646:
	.loc 2 2777 0
	mr. 9,3
	stw 9,1004(31)
	beq- 0,.L1023
	.loc 2 2777 0 is_stmt 0 discriminator 2
	lwz 9,0(9)
	lwz 0,124(9)
	mtctr 0
	bctrl
.LVL1647:
	cmpwi 7,3,0
	bne- 7,.L1023
	.loc 2 2782 0 is_stmt 1
	lis 4,.LC139@ha
	mr 3,28
	la 4,.LC139@l(4)
	addi 29,31,40
	bl _ZNK14idDeclModelDef7GetAnimEPKc
.LVL1648:
	.loc 2 2783 0
	mr. 4,3
	beq- 0,.L1023
	.loc 2 2786 0
	mr 3,28
.LVL1649:
	addi 29,31,40
	bl _ZNK14idDeclModelDef7GetAnimEi
.LVL1650:
	.loc 2 2787 0
	cmpwi 7,3,0
	beq- 7,.L1023
	.loc 2 2790 0
	li 4,0
	bl _ZNK6idAnim7MD5AnimEi
.LVL1651:
	.loc 2 2791 0
	lwz 10,1004(31)
	.loc 2 2790 0
	mr 23,3
.LVL1652:
	.loc 2 2791 0
	lwz 9,0(10)
	mr 3,10
.LVL1653:
	lwz 0,144(9)
	mtctr 0
	bctrl
	.loc 2 2792 0 discriminator 1
	lwz 10,1004(31)
	.loc 2 2791 0 discriminator 1
	mr 16,3
.LVL1654:
	.loc 2 2792 0 discriminator 1
	lwz 9,0(10)
	mr 3,10
.LVL1655:
	lwz 0,140(9)
	mtctr 0
	bctrl
	mr 25,3
.LVL1656:
	.loc 2 2795 0 discriminator 1
	li 4,0
	addi 3,31,756
.LVL1657:
	li 5,216
	bl memset
	.loc 2 2796 0 discriminator 1
	mr 3,28
	bl _ZNK14idDeclModelDef7GetSkinEv
	.loc 2 2799 0 discriminator 1
	mulli 9,25,48
	.loc 2 2796 0 discriminator 1
	stw 3,872(31)
.LVL1658:
	.loc 2 2798 0 discriminator 1
	stw 25,944(31)
	.loc 2 2802 0 discriminator 1
	mr 3,28
	.loc 2 2799 0 discriminator 1
	stw 9,996(31)
	lwz 9,0(1)
	lwz 10,996(31)
	subfic 0,10,-32
	addi 11,10,15
	stwux 9,1,0
.LBB6615:
.LBB6616:
	.loc 17 202 0 discriminator 1
	lis 9,_ZN6idMath8INFINITYE@ha
	lfs 0,_ZN6idMath8INFINITYE@l(9)
.LBE6616:
.LBE6615:
	.loc 2 2799 0 discriminator 1
	addi 27,1,23
.LVL1659:
	.loc 2 2802 0 discriminator 1
	lwz 9,0(26)
.LBB6619:
.LBB6617:
	.loc 17 203 0 discriminator 1
	fneg 13,0
.LBE6617:
.LBE6619:
	.loc 2 2799 0 discriminator 1
	rlwinm 27,27,0,0,27
	stw 27,948(31)
.LBB6620:
.LBB6618:
	.loc 17 202 0 discriminator 1
	stfs 0,776(31)
	stfs 0,772(31)
	stfs 0,768(31)
.LVL1660:
	.loc 17 203 0 discriminator 1
	stfs 13,788(31)
	stfs 13,784(31)
	stfs 13,780(31)
.LBE6618:
.LBE6620:
	.loc 2 2799 0 discriminator 1
	stw 11,1000(31)
	.loc 2 2802 0 discriminator 1
	lwz 28,60(9)
.LVL1661:
	bl _ZNK14idDeclModelDef15GetVisualOffsetEv
.LVL1662:
	mr 9,3
	lwz 4,1004(31)
	mr 3,26
	mr 5,23
	mr 6,25
	mr 7,27
	li 8,1
	li 10,0
	mtctr 28
	bctrl
	.loc 2 2805 0
	lwz 0,144(30)
	.loc 2 2811 0
	addi 10,31,756
	.loc 2 2805 0
	lwz 9,0(1)
	.loc 2 2813 0
	lis 4,_ZL17GetJointTransformPvPK10idJointMatPKcR6idVec3R6idMat3@ha
	.loc 2 2805 0
	mulli 0,0,12
	.loc 2 2811 0
	stw 10,8(31)
	.loc 2 2812 0
	stw 16,12(31)
	.loc 2 2813 0
	mr 3,30
	.loc 2 2805 0
	addic 0,0,45
	.loc 2 2813 0
	la 4,_ZL17GetJointTransformPvPK10idJointMatPKcR6idVec3R6idMat3@l(4)
	.loc 2 2805 0
	rlwinm 0,0,0,0,27
	.loc 2 2813 0
	lwz 5,948(31)
	.loc 2 2805 0
	neg 0,0
	.loc 2 2813 0
	addi 6,31,8
	.loc 2 2805 0
	stwux 9,1,0
	.loc 2 2806 0
	lwz 0,144(30)
	.loc 2 2805 0
	addi 15,1,23
	.loc 2 2806 0
	lwz 9,0(1)
	.loc 2 2805 0
	rlwinm 15,15,0,0,27
.LVL1663:
	.loc 2 2806 0
	mulli 0,0,36
	addic 0,0,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 9,1,0
	.loc 2 2807 0
	lwz 0,144(30)
	.loc 2 2806 0
	addi 17,1,23
	rlwinm 17,17,0,0,27
.LVL1664:
	.loc 2 2807 0
	mulli 0,0,12
	addic 0,0,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 9,1,0
	.loc 2 2808 0
	lwz 0,144(30)
	.loc 2 2807 0
	addi 14,1,23
	rlwinm 14,14,0,0,27
.LVL1665:
	.loc 2 2808 0
	mulli 0,0,36
	addic 0,0,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 9,1,0
	.loc 2 2813 0
	lwz 9,0(30)
	.loc 2 2808 0
	addi 28,1,23
	rlwinm 28,28,0,0,27
.LVL1666:
	.loc 2 2813 0
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 2 2816 0 discriminator 1
	lwz 0,144(30)
	.loc 2 2808 0 discriminator 1
	stw 28,988(31)
.LVL1667:
	.loc 2 2816 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L965
.LBB6621:
.LBB6622:
	.loc 3 731 0
	lis 9,.LC49@ha
.LBE6622:
.LBE6621:
.LBB6636:
.LBB6637:
.LBB6638:
.LBB6639:
	.loc 14 276 0
	lis 18,_ZN6idMath5iSqrtE@ha
.LBE6639:
.LBE6638:
.LBE6637:
.LBE6636:
.LBB6660:
.LBB6631:
	.loc 3 731 0
	lfs 31,.LC49@l(9)
.LBE6631:
.LBE6660:
	.loc 2 2816 0
	mr 27,15
	mr 26,28
.LVL1668:
	li 23,0
.LVL1669:
.LBB6661:
.LBB6652:
.LBB6646:
.LBB6640:
	.loc 14 276 0
	la 18,_ZN6idMath5iSqrtE@l(18)
.LBE6640:
.LBE6646:
.LBE6652:
.LBE6661:
.LBB6662:
.LBB6663:
	.loc 2 2726 0
	subf 21,15,14
.LBE6663:
.LBE6662:
	subf 19,28,17
.LVL1670:
.L973:
	.loc 2 2817 0
	lwz 9,156(30)
	slwi 0,23,2
	lwzx 28,9,0
.LVL1671:
	.loc 2 2819 0
	lwz 0,68(28)
.LVL1672:
	cmpwi 7,0,6
	bne- 7,.L966
.LVL1673:
.LBB6666:
.LBB6667:
	.loc 3 431 0
	lfs 13,228(28)
.LBE6667:
.LBE6666:
.LBB6672:
.LBB6653:
.LBB6647:
.LBB6641:
	.loc 14 275 0
	lis 10,.LC1@ha
.LBE6641:
.LBE6647:
.LBE6653:
.LBE6672:
.LBB6673:
.LBB6668:
	.loc 3 431 0
	lfs 0,144(28)
.LBE6668:
.LBE6673:
.LBB6674:
.LBB6654:
.LBB6648:
.LBB6642:
	.loc 14 278 0
	lis 11,.LC63@ha
.LBE6642:
.LBE6648:
.LBE6654:
.LBE6674:
.LBB6675:
.LBB6669:
	.loc 3 431 0
	lfs 12,224(28)
	fsubs 0,13,0
	lfs 13,140(28)
	lfs 11,148(28)
	fsubs 13,12,13
	lfs 10,232(28)
.LBE6669:
.LBE6675:
.LBB6676:
.LBB6655:
	.loc 3 649 0
	fmuls 12,0,0
.LBB6649:
.LBB6643:
	.loc 14 275 0
	lfs 8,.LC1@l(10)
.LBE6643:
.LBE6649:
.LBE6655:
.LBE6676:
.LBB6677:
.LBB6670:
	.loc 3 431 0
	fsubs 10,10,11
.LVL1674:
.LBE6670:
.LBE6677:
.LBB6678:
.LBB6656:
.LBB6650:
.LBB6644:
	.loc 14 278 0
	lfs 11,.LC63@l(11)
.LBE6644:
.LBE6650:
.LBE6656:
.LBE6678:
.LBB6679:
.LBB6671:
	.loc 3 649 0
	fmadds 12,13,13,12
	fmadds 12,10,10,12
	stfs 12,984(31)
.LVL1675:
.LBE6671:
.LBE6679:
.LBB6680:
.LBB6657:
.LBB6651:
.LBB6645:
	.loc 14 275 0
	fmuls 9,12,8
	.loc 14 270 0
	lwz 0,984(31)
.LVL1676:
	.loc 2 2726 0
	fneg 9,9
	.loc 14 276 0
	rlwinm 9,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,18,0
	subfic 9,9,380
	rlwinm 9,9,22,0,8
	or 0,9,0
	.loc 14 277 0
	stw 0,1012(31)
	lfs 7,1012(31)
	fmr 12,7
.LVL1677:
	.loc 14 278 0
	fmul 7,12,12
.LVL1678:
	fmadd 7,9,7,11
	fmul 12,12,7
.LVL1679:
	.loc 14 279 0
	fmul 7,12,12
	fmadd 9,9,7,11
.LVL1680:
	fmul 12,12,9
.LVL1681:
	.loc 14 280 0
	frsp 12,12
.LVL1682:
.LBE6645:
.LBE6651:
	.loc 3 652 0
	fmuls 0,0,12
.LVL1683:
	.loc 3 651 0
	fmuls 13,13,12
.LVL1684:
	.loc 3 653 0
	fmuls 12,10,12
.LBE6657:
.LBE6680:
.LBB6681:
.LBB6632:
	.loc 3 730 0
	fmuls 10,0,0
.LVL1685:
.LBE6632:
.LBE6681:
.LBB6682:
.LBB6658:
	.loc 3 652 0
	stfs 0,748(31)
	.loc 3 651 0
	stfs 13,744(31)
	.loc 3 653 0
	stfs 12,752(31)
.LVL1686:
	.loc 3 730 0
	fmadds 10,13,13,10
.LBE6658:
.LBE6682:
.LBB6683:
.LBB6633:
	.loc 3 731 0
	fcmpu 7,10,31
.LBE6633:
.LBE6683:
.LBB6684:
.LBB6659:
	.loc 3 730 0
	stfs 10,984(31)
.LBE6659:
.LBE6684:
.LBB6685:
.LBB6634:
	.loc 3 731 0
	bne- 7,.L967
.LVL1687:
	.loc 3 732 0
	lis 9,.LC0@ha
	.loc 3 734 0
	lis 10,.LC49@ha
	.loc 3 732 0
	lwz 0,.LC0@l(9)
	.loc 3 733 0
	stfs 31,724(31)
	.loc 3 734 0
	stw 0,1012(31)
	.loc 3 732 0
	stw 0,720(31)
.LVL1688:
	.loc 3 734 0
	stfs 31,728(31)
	lfs 11,1012(31)
	lfs 10,.LC49@l(10)
.LVL1689:
.L968:
.LBB6623:
.LBB6624:
	.loc 3 620 0
	fmuls 7,0,31
	fmuls 8,12,11
	fmuls 9,13,10
.LBE6624:
.LBE6623:
.LBE6634:
.LBE6685:
.LBB6686:
.LBB6687:
	.loc 3 420 0
	fnmsubs 12,12,10,7
.LVL1690:
	fnmsubs 13,13,31,8
.LVL1691:
	fnmsubs 0,0,11,9
.LVL1692:
.LBE6687:
.LBE6686:
.LBB6688:
.LBB6689:
	.loc 3 424 0
	stfs 12,732(31)
	.loc 3 425 0
	stfs 13,736(31)
	.loc 3 426 0
	stfs 0,740(31)
.LVL1693:
.L969:
.LBE6689:
.LBE6688:
.LBB6690:
.LBB6664:
	.loc 3 424 0
	lwz 10,320(28)
.LBE6664:
.LBE6690:
.LBB6691:
.LBB6692:
	mr 11,27
.LBE6692:
.LBE6691:
	.loc 2 2726 0
	add 0,19,26
.LBB6694:
.LBB6695:
	.loc 6 333 0
	li 9,0
.LBE6695:
.LBE6694:
.LBB6703:
.LBB6665:
	.loc 3 424 0
	stw 10,0(27)
	.loc 3 425 0
	lwz 8,324(28)
	stw 8,4(27)
	.loc 3 426 0
	lwz 8,328(28)
	stw 8,8(27)
.LVL1694:
.LBE6665:
.LBE6703:
.LBB6704:
.LBB6693:
	.loc 3 424 0
	stwux 10,11,21
	.loc 3 425 0
	lwz 10,4(27)
	stw 10,4(11)
	.loc 3 426 0
	lwz 10,8(27)
	stw 10,8(11)
.L971:
.LBE6693:
.LBE6704:
.LBB6705:
.LBB6702:
.LBB6696:
.LBB6697:
	.loc 3 424 0
	addi 10,31,720
.LVL1695:
	mr 11,0
	lwzux 8,10,9
.LVL1696:
.LBE6697:
.LBE6696:
	.loc 6 333 0
	cmpwi 7,9,24
.LBB6700:
.LBB6698:
	.loc 3 424 0
	stwux 8,11,9
.LBE6698:
.LBE6700:
	.loc 6 333 0
	addi 9,9,12
.LBB6701:
.LBB6699:
	.loc 3 425 0
	lwz 8,4(10)
	.loc 3 426 0
	lwz 10,8(10)
	.loc 3 425 0
	stw 8,4(11)
	.loc 3 426 0
	stw 10,8(11)
.LBE6699:
.LBE6701:
	.loc 6 333 0
	bne+ 7,.L971
.LVL1697:
.LBE6702:
.LBE6705:
.LBB6706:
.LBB6707:
	li 10,0
.L972:
.LBB6708:
.LBB6709:
	.loc 3 424 0
	mr 11,0
	mr 9,26
	lwzux 8,11,10
.LBE6709:
.LBE6708:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB6712:
.LBB6710:
	.loc 3 424 0
	stwux 8,9,10
.LBE6710:
.LBE6712:
	.loc 6 333 0
	addi 10,10,12
.LBB6713:
.LBB6711:
	.loc 3 425 0
	lwz 8,4(11)
	stw 8,4(9)
	.loc 3 426 0
	lwz 11,8(11)
	stw 11,8(9)
.LBE6711:
.LBE6713:
	.loc 6 333 0
	bne+ 7,.L972
.LBE6707:
.LBE6706:
	.loc 2 2816 0
	lwz 0,144(30)
.LVL1698:
	addi 23,23,1
.LVL1699:
	addi 26,26,36
.LVL1700:
	addi 27,27,12
	cmpw 7,0,23
	bgt+ 7,.L973
.LVL1701:
.L965:
	.loc 2 2834 0
	lis 23,.LC136@ha
	mr 3,22
	la 23,.LC136@l(23)
	li 5,0
	mr 4,23
	addi 29,31,40
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1702:
	mr. 26,3
	beq- 0,.L974
	.loc 2 2846 0
	lis 19,.LC137@ha
.LBB6714:
.LBB6715:
	.loc 5 690 0
	lis 21,.LC138@ha
	addi 29,31,40
.LBE6715:
.LBE6714:
	.loc 2 2846 0
	la 19,.LC137@l(19)
.LBB6718:
.LBB6716:
	.loc 5 690 0
	la 21,.LC138@l(21)
.L985:
.LBE6716:
.LBE6718:
	.loc 2 2927 0
	lwz 27,0(26)
.LVL1703:
.LBB6719:
.LBB6720:
.LBB6721:
.LBB6722:
	.loc 5 350 0
	lwz 0,48(31)
.LBE6722:
.LBE6721:
.LBE6720:
	.loc 2 2927 0
	lwz 28,0(27)
.LBB6727:
	.loc 5 534 0
	addi 4,28,1
.LVL1704:
.LBB6725:
.LBB6723:
	.loc 5 350 0
	cmpw 7,4,0
	bgt- 7,.L1049
.LVL1705:
.L975:
.LBE6723:
.LBE6725:
	.loc 5 535 0
	lwz 4,4(27)
	mr 5,28
	lwz 3,44(31)
	bl memcpy
	.loc 5 536 0
	lwz 9,44(31)
	li 0,0
.LBE6727:
.LBE6719:
.LBB6731:
.LBB6732:
	.loc 5 942 0
	mr 3,29
.LBE6732:
.LBE6731:
.LBB6735:
.LBB6728:
	.loc 5 536 0
	stbx 0,9,28
.LBE6728:
.LBE6735:
.LBB6736:
.LBB6733:
	.loc 5 942 0
	mr 4,23
.LBE6733:
.LBE6736:
.LBB6737:
.LBB6729:
	.loc 5 537 0
	stw 28,40(31)
.LVL1706:
.LBE6729:
.LBE6737:
.LBB6738:
.LBB6734:
	.loc 5 942 0
	bl _ZN5idStr12StripLeadingEPKc
	.loc 5 943 0
	mr 3,29
	mr 4,23
	bl _ZN5idStr13StripTrailingEPKc
.LVL1707:
.LBE6734:
.LBE6738:
	.loc 2 2837 0 discriminator 1
	lwz 0,144(30)
	cmpwi 7,0,0
	ble- 7,.L979
	.loc 2 2837 0 is_stmt 0
	li 28,0
	b .L978
.LVL1708:
.L1050:
	addi 28,28,1
.LVL1709:
	cmpw 7,0,28
	ble- 7,.L979
.LVL1710:
.L978:
	.loc 2 2838 0 is_stmt 1
	lwz 9,156(30)
	slwi 0,28,2
.LBB6739:
.LBB6740:
	.loc 5 690 0
	lwz 4,4(29)
.LBE6740:
.LBE6739:
	.loc 2 2838 0
	lwzx 27,9,0
.LVL1711:
.LBB6742:
.LBB6741:
	.loc 5 690 0
	lwz 3,4(27)
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1712:
.LBE6741:
.LBE6742:
	.loc 2 2839 0
	cmpwi 7,3,0
	.loc 2 2843 0
	lwz 0,144(30)
	.loc 2 2839 0
	bne+ 7,.L1050
	.loc 2 2843 0
	cmpw 7,0,28
	ble- 7,.L979
.LVL1713:
.LBB6743:
	.loc 2 2927 0
	lwz 9,4(26)
.LBE6743:
	.loc 2 2846 0
	mr 4,19
	addi 5,31,28
	addi 6,31,32
	lwz 3,4(9)
	addi 7,31,36
	addi 8,31,16
	addi 9,31,20
	addi 10,31,24
	crxor 6,6,6
	bl sscanf
.LVL1714:
.LBB6744:
.LBB6717:
	.loc 5 690 0
	lwz 3,36(27)
	mr 4,21
	bl _ZN5idStr4IcmpEPKcS1_
.LBE6717:
.LBE6744:
	.loc 2 2848 0
	cmpwi 7,3,0
	bne- 7,.L980
	.loc 2 2849 0
	mulli 9,28,36
	addi 3,31,612
	add 4,17,9
.LVL1715:
.LBB6745:
.LBB6746:
.LBB6747:
	.loc 3 402 0
	lwzx 27,17,9
.LVL1716:
.LBE6747:
.LBE6746:
.LBB6748:
.LBB6749:
	lwz 7,4(4)
.LBE6749:
.LBE6748:
.LBB6750:
.LBB6751:
	lwz 5,12(4)
.LVL1717:
.LBE6751:
.LBE6750:
.LBB6752:
.LBB6753:
	lwz 11,8(4)
.LBE6753:
.LBE6752:
.LBB6754:
.LBB6755:
	lwz 8,16(4)
.LBE6755:
.LBE6754:
.LBB6756:
.LBB6757:
	lwz 6,24(4)
.LVL1718:
.LBE6757:
.LBE6756:
.LBB6758:
.LBB6759:
	lwz 9,20(4)
.LBE6759:
.LBE6758:
.LBB6760:
.LBB6761:
	lwz 10,28(4)
.LVL1719:
.LBE6761:
.LBE6760:
.LBB6762:
.LBB6763:
	lwz 0,32(4)
.LVL1720:
.LBE6763:
.LBE6762:
.LBE6745:
	.loc 2 2849 0
	addi 4,31,16
.LVL1721:
.LBB6766:
.LBB6764:
.LBB6765:
	.loc 6 425 0
	stw 27,648(31)
	stw 5,652(31)
	stw 6,656(31)
	.loc 6 426 0
	stw 7,660(31)
	stw 8,664(31)
	stw 10,668(31)
	.loc 6 427 0
	stw 11,672(31)
	stw 9,676(31)
	stw 0,680(31)
.LBE6765:
.LBE6764:
.LBE6766:
	.loc 2 2849 0
	bl _ZNK8idAngles6ToMat3Ev
.LVL1722:
	addi 8,31,572
	.loc 2 2726 0
	addi 7,31,684
	.loc 2 2849 0
	addi 11,31,648
	addi 0,31,620
.L981:
.LVL1723:
.LBB6767:
.LBB6768:
	.loc 6 467 0
	addi 9,31,608
.LBE6768:
.LBE6767:
	.loc 2 2726 0
	mr 10,8
.LVL1724:
.L982:
	addi 9,9,4
.LBB6770:
.LBB6769:
	.loc 6 471 0
	lfs 11,4(11)
	lfs 0,12(9)
	.loc 6 468 0
	cmpw 7,9,0
	.loc 6 471 0
	lfs 13,0(11)
	fmuls 11,11,0
	lfs 0,0(9)
	lfs 12,8(11)
	fmadds 13,13,0,11
	lfs 0,24(9)
	fmadds 0,12,0,13
	stfsu 0,4(10)
	.loc 6 468 0
	bne+ 7,.L982
	.loc 6 474 0
	addi 11,11,12
.LVL1725:
	addi 8,8,12
	.loc 6 467 0
	cmpw 7,11,7
	bne+ 7,.L981
	li 10,0
.LVL1726:
.L983:
.LBE6769:
.LBE6770:
.LBB6771:
.LBB6772:
.LBB6773:
.LBB6774:
	.loc 3 424 0
	addi 11,31,576
	mr 9,24
	lwzux 0,11,10
.LBE6774:
.LBE6773:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB6777:
.LBB6775:
	.loc 3 424 0
	stwux 0,9,10
.LBE6775:
.LBE6777:
	.loc 6 333 0
	addi 10,10,12
.LBB6778:
.LBB6776:
	.loc 3 425 0
	lwz 8,4(11)
	.loc 3 426 0
	lwz 0,8(11)
	.loc 3 425 0
	stw 8,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LBE6776:
.LBE6778:
	.loc 6 333 0
	bne+ 7,.L983
.LBE6772:
.LBE6771:
	.loc 2 2850 0
	mulli 28,28,12
.LVL1727:
.LBB6779:
.LBB6780:
.LBB6781:
	.loc 6 454 0
	lfs 12,16(24)
	lfs 13,20(24)
.LBE6781:
.LBE6780:
.LBE6779:
	.loc 2 2851 0
	li 0,1
	.loc 2 2850 0
	add 9,15,28
.LVL1728:
.LBB6792:
.LBB6787:
.LBB6782:
	.loc 6 454 0
	lfs 11,12(24)
	lfs 0,4(9)
.LBE6782:
.LBE6787:
.LBE6792:
.LBB6793:
.LBB6794:
	lfs 7,4(24)
.LBE6794:
.LBE6793:
.LBB6801:
.LBB6788:
.LBB6783:
	fmuls 12,0,12
.LBE6783:
.LBE6788:
.LBE6801:
.LBB6802:
.LBB6795:
	lfs 9,8(24)
.LBE6795:
.LBE6802:
.LBB6803:
.LBB6789:
.LBB6784:
	fmuls 13,0,13
.LBE6784:
.LBE6789:
.LBE6803:
.LBB6804:
.LBB6796:
	lfs 10,0(24)
.LBE6796:
.LBE6804:
.LBB6805:
.LBB6790:
.LBB6785:
	fmuls 11,0,11
	lfsx 0,15,28
.LBE6785:
.LBE6790:
.LBE6805:
.LBB6806:
.LBB6797:
	lfs 8,28(24)
	fmadds 12,0,7,12
	fmadds 11,10,0,11
	lfs 10,24(24)
	fmadds 13,0,9,13
.LBE6797:
.LBE6806:
.LBB6807:
.LBB6791:
.LBB6786:
	lfs 0,8(9)
.LVL1729:
.LBE6786:
.LBE6791:
.LBE6807:
.LBB6808:
.LBB6798:
	lfs 9,32(24)
	fmadds 12,0,8,12
.LBE6798:
.LBE6808:
	.loc 2 2851 0
	lwz 9,992(31)
.LVL1730:
.LBB6809:
.LBB6799:
	.loc 6 454 0
	fmadds 13,0,9,13
	fmadds 0,10,0,11
	.loc 3 431 0
	lfs 11,32(31)
	fsubs 12,11,12
	lfs 11,36(31)
	fsubs 13,11,13
.LVL1731:
	lfs 11,28(31)
.LBE6799:
.LBE6809:
.LBB6810:
.LBB6811:
	.loc 3 425 0
	stfs 12,4(20)
.LBE6811:
.LBE6810:
.LBB6813:
.LBB6800:
	.loc 3 431 0
	fsubs 0,11,0
.LBE6800:
.LBE6813:
.LBB6814:
.LBB6812:
	.loc 3 426 0
	stfs 13,8(20)
	.loc 3 424 0
	stfs 0,0(20)
.LBE6812:
.LBE6814:
	.loc 2 2851 0
	stb 0,0(9)
.LVL1732:
.L979:
	.loc 2 2834 0
	mr 3,22
	mr 4,23
	mr 5,26
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL1733:
	mr. 26,3
	bne+ 0,.L985
.LVL1734:
.L974:
	.loc 2 2859 0
	lwz 9,1000(31)
	.loc 2 2860 0
	lwz 4,948(31)
	.loc 2 2859 0
	addi 0,9,30
	lwz 9,0(1)
	rlwinm 0,0,0,0,27
	.loc 2 2860 0
	lwz 5,996(31)
	.loc 2 2859 0
	neg 0,0
	stwux 9,1,0
	addi 18,1,23
	rlwinm 18,18,0,0,27
.LVL1735:
	.loc 2 2860 0
	mr 3,18
.LVL1736:
	bl memcpy
	.loc 2 2863 0
	slwi 5,25,2
	addi 0,5,45
	lwz 9,0(1)
	rlwinm 0,0,0,0,27
	.loc 2 2864 0
	li 4,-1
	.loc 2 2863 0
	neg 0,0
	stwux 9,1,0
	addi 0,1,23
	rlwinm 10,0,0,0,27
	.loc 2 2864 0
	mr 3,10
	.loc 2 2863 0
	stw 10,1008(31)
.LVL1737:
	.loc 2 2864 0
	bl memset
.LVL1738:
	.loc 2 2865 0
	mulli 5,25,12
	lwz 9,0(1)
	.loc 2 2866 0
	li 4,0
	.loc 2 2865 0
	addi 0,5,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 9,1,0
	addi 14,1,23
.LVL1739:
	rlwinm 14,14,0,0,27
.LVL1740:
	.loc 2 2866 0
	mr 3,14
	bl memset
	.loc 2 2867 0
	mulli 5,25,36
	lwz 9,0(1)
	.loc 2 2868 0
	li 4,0
	.loc 2 2867 0
	addi 0,5,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 9,1,0
	addi 15,1,23
.LVL1741:
	rlwinm 15,15,0,0,27
.LVL1742:
	.loc 2 2868 0
	mr 3,15
	bl memset
.LVL1743:
	.loc 2 2871 0
	lwz 0,144(30)
	cmpwi 7,0,0
	ble- 7,.L986
	mr 20,17
.LVL1744:
	.loc 2 2878 0
	cmpwi 4,25,0
	lis 17,.LC138@ha
.LVL1745:
	.loc 2 2871 0
	lwz 21,988(31)
	li 23,0
	la 17,.LC138@l(17)
	.loc 6 465 0
	addi 22,31,468
.LVL1746:
	addi 19,31,368
.LVL1747:
.L1000:
	.loc 2 2872 0
	lwz 9,156(30)
	slwi 0,23,2
.LBB6815:
.LBB6816:
	.loc 5 690 0
	mr 4,17
.LBE6816:
.LBE6815:
	.loc 2 2872 0
	lwzx 26,9,0
.LVL1748:
.LBB6818:
.LBB6817:
	.loc 5 690 0
	lwz 3,36(26)
	bl _ZN5idStr4IcmpEPKcS1_
.LVL1749:
.LBE6817:
.LBE6818:
	.loc 2 2874 0
	cmpwi 7,3,0
	beq- 7,.L987
.LVL1750:
	.loc 2 2878 0 discriminator 1
	ble- 4,.L1025
	.loc 2 2726 0
	addi 27,16,4
	li 28,0
	b .L990
.LVL1751:
.L1051:
	.loc 2 2878 0
	addi 28,28,1
.LVL1752:
	addi 27,27,36
	cmpw 7,28,25
	beq- 7,.L988
.LVL1753:
.L990:
.LBB6819:
.LBB6820:
	.loc 5 690 0
	lwz 3,0(27)
	lwz 4,36(26)
	bl _ZN5idStr4IcmpEPKcS1_
.LEHE176:
.LVL1754:
.LBE6820:
.LBE6819:
	.loc 2 2879 0
	cmpwi 7,3,0
	bne+ 7,.L1051
.LVL1755:
.L988:
	.loc 2 2884 0 discriminator 1
	lwz 0,944(31)
	cmpw 7,28,0
	bge- 7,.L987
	.loc 2 2885 0
	lwz 0,64(26)
	.loc 2 2886 0
	mulli 11,28,48
	.loc 2 2885 0
	lwz 10,1008(31)
	slwi 9,28,2
	stwx 0,10,9
	.loc 2 2886 0
	add 9,18,11
.LVL1756:
	mulli 0,28,36
.LBB6821:
.LBB6822:
	.loc 7 230 0
	lfsx 0,18,11
.LBE6822:
.LBE6821:
	.loc 2 2886 0
	mr 11,20
.LBB6825:
.LBB6823:
	.loc 7 230 0
	lwz 27,4(9)
.LBE6823:
.LBE6825:
	.loc 2 2886 0
	add 0,15,0
.LBB6826:
.LBB6824:
	.loc 7 230 0
	lwz 3,8(9)
	lwz 4,16(9)
	lwz 5,20(9)
	lwz 6,24(9)
	lwz 7,32(9)
	lwz 8,36(9)
	lwz 10,40(9)
.LVL1757:
.LBE6824:
.LBE6826:
.LBB6827:
.LBB6828:
.LBB6829:
	.loc 6 425 0
	stfs 0,504(31)
	stw 27,508(31)
	stw 3,512(31)
	.loc 6 426 0
	stw 4,516(31)
	stw 5,520(31)
	stw 6,524(31)
	.loc 6 427 0
	stw 7,528(31)
	stw 8,532(31)
	.loc 2 2726 0
	addi 8,20,24
	.loc 6 427 0
	stw 10,536(31)
.LVL1758:
.LBE6829:
.LBE6828:
.LBE6827:
	.loc 6 465 0
	mr 10,22
.LVL1759:
.L991:
.LBB6830:
.LBB6831:
	.loc 6 471 0
	lfs 13,516(31)
	.loc 6 467 0
	cmpw 7,11,8
	.loc 6 471 0
	lfs 11,4(11)
	lfs 10,0(11)
	fmuls 11,11,13
	lfs 12,8(11)
	lfs 13,528(31)
	lfs 8,4(11)
	fmadds 0,0,10,11
	fmr 11,8
	fmadds 0,12,13,0
	stfs 0,0(10)
.LVL1760:
	lfs 0,520(31)
	lfs 7,508(31)
	fmuls 8,8,0
	lfs 9,532(31)
	lfs 13,0(11)
	lfs 0,8(11)
	fmadds 10,10,7,8
	fmadds 12,12,9,10
	stfs 12,4(10)
.LVL1761:
	lfs 12,524(31)
	lfs 10,512(31)
	fmuls 11,11,12
	lfs 12,536(31)
	fmadds 13,13,10,11
	fmadds 0,0,12,13
	stfs 0,8(10)
.LVL1762:
	addi 10,10,12
.LVL1763:
	.loc 6 467 0
	beq- 7,.L1052
	.loc 6 474 0
	lfs 0,504(31)
	addi 11,11,12
.LVL1764:
	b .L991
.LVL1765:
.L1023:
.LBE6831:
.LBE6830:
	.loc 2 2788 0
	li 30,0
.LVL1766:
	addi 29,31,40
.LVL1767:
.L961:
.LBB6832:
.LBB6833:
.LBB6834:
	.loc 5 501 0
	mr 3,29
.LEHB177:
	bl _ZN5idStr8FreeDataEv
.LEHE177:
.LBE6834:
.LBE6833:
.LBE6832:
.LBE7171:
	.loc 2 2927 0
	addi 11,31,1104
	lwz 0,4(11)
	mr 3,30
	lwz 12,-84(11)
	mtlr 0
	lwz 14,-80(11)
	lwz 15,-76(11)
	mtcrf 8,12
	lwz 16,-72(11)
	lwz 17,-68(11)
	lwz 18,-64(11)
	lwz 19,-60(11)
	lwz 20,-56(11)
	lwz 21,-52(11)
	lwz 22,-48(11)
	lwz 23,-44(11)
	lwz 24,-40(11)
	lwz 25,-36(11)
	lwz 26,-32(11)
	lwz 27,-28(11)
	lwz 28,-24(11)
	lwz 29,-20(11)
	lwz 30,-16(11)
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI391:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
	mr 1,11
.LCFI392:
	.cfi_def_cfa_register 1
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
.LVL1768:
.L1048:
.LCFI393:
	.cfi_restore_state
.LBB7172:
	.loc 2 2772 0 discriminator 4
	mr 3,28
.LEHB178:
	bl _ZNK14idDeclModelDef11ModelHandleEv
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	b .L1017
.LVL1769:
.L1055:
.LBB6835:
.LBB6836:
.LBB6837:
	.loc 2 2726 0
	addi 7,31,320
	addi 10,31,432
.LVL1770:
.L994:
.LBE6837:
.LBE6836:
.LBE6835:
.LBB6856:
.LBB6857:
	.loc 6 467 0
	addi 11,31,356
.LBE6857:
.LBE6856:
	.loc 2 2726 0
	mr 8,7
.LVL1771:
.L997:
.LBB6859:
.LBB6860:
	.loc 6 467 0
	addi 11,11,4
.LBE6860:
.LBE6859:
.LBB6862:
.LBB6858:
	.loc 6 471 0
	lfs 11,4(10)
	lfs 0,12(11)
	.loc 6 468 0
	cmpw 7,11,19
	.loc 6 471 0
	lfs 13,0(10)
	fmuls 11,11,0
	lfs 0,0(11)
	lfs 12,8(10)
	fmadds 13,13,0,11
	lfs 0,24(11)
	fmadds 0,12,0,13
	stfsu 0,4(8)
	.loc 6 468 0
	bne+ 7,.L997
	.loc 6 474 0
	addi 10,10,12
.LVL1772:
	addi 7,7,12
	.loc 6 467 0
	cmpw 7,10,22
	bne+ 7,.L994
.LVL1773:
.LBE6858:
.LBE6862:
.LBB6863:
.LBB6864:
	.loc 6 333 0
	li 8,0
.LVL1774:
.L999:
.LBB6865:
.LBB6866:
	.loc 3 424 0
	addi 10,31,324
	mr 11,0
	lwzux 7,10,8
.LBE6866:
.LBE6865:
	.loc 6 333 0
	cmpwi 7,8,24
.LBB6869:
.LBB6867:
	.loc 3 424 0
	stwux 7,11,8
.LBE6867:
.LBE6869:
	.loc 6 333 0
	addi 8,8,12
.LBB6870:
.LBB6868:
	.loc 3 425 0
	lwz 7,4(10)
	.loc 3 426 0
	lwz 10,8(10)
	.loc 3 425 0
	stw 7,4(11)
	.loc 3 426 0
	stw 10,8(11)
.LBE6868:
.LBE6870:
	.loc 6 333 0
	bne+ 7,.L999
.LBE6864:
.LBE6863:
	.loc 2 2888 0
	mulli 28,28,12
.LBB6878:
.LBB6879:
	.loc 7 234 0
	lwz 11,28(9)
	lwz 0,44(9)
.LVL1775:
	lwz 10,12(9)
.LBE6879:
.LBE6878:
	.loc 2 2888 0
	add 9,14,28
.LVL1776:
.LBB6880:
.LBB6881:
	.loc 3 424 0
	stwx 10,14,28
	.loc 3 425 0
	stw 11,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LVL1777:
.L987:
.LBE6881:
.LBE6880:
	.loc 2 2871 0
	lwz 0,144(30)
	addi 23,23,1
.LVL1778:
	addi 21,21,36
	addi 20,20,36
	cmpw 7,0,23
	bgt+ 7,.L1000
.LVL1779:
.L986:
.LBB6882:
	.loc 2 2894 0
	cmpwi 7,25,1
	ble- 7,.L1001
.LBB6883:
	.loc 2 2896 0
	lis 27,0x38e3
.LBE6883:
.LBE6882:
	.loc 2 2726 0
	lwz 30,1008(31)
.LVL1780:
	.loc 2 2893 0
	addi 7,16,36
	mr 9,18
	.loc 2 2726 0
	addi 4,14,16
	addi 5,14,20
.LBB7084:
.LBB6871:
	li 8,48
	.loc 2 2894 0
	li 6,1
	addi 0,31,324
.LBE6871:
.LBE7084:
.LBB7085:
.LBB7075:
	.loc 2 2896 0
	ori 27,27,36409
.LBB6884:
.LBB6885:
.LBB6886:
.LBB6887:
	.loc 2 2726 0
	addi 28,31,312
.LVL1781:
.L1013:
.LBE6887:
.LBE6886:
.LBE6885:
.LBE6884:
	.loc 2 2896 0
	lwz 26,32(7)
.LBB6892:
.LBB6893:
	.loc 7 230 0
	lwz 10,72(9)
.LBE6893:
.LBE6892:
	.loc 2 2896 0
	subf 26,16,26
.LBB6907:
.LBB6900:
	.loc 7 230 0
	lwz 11,88(9)
.LBE6900:
.LBE6907:
	.loc 2 2896 0
	srawi 26,26,2
.LBB6908:
.LBB6901:
	.loc 7 230 0
	lfs 12,48(9)
.LBE6901:
.LBE6908:
	.loc 2 2896 0
	mullw 26,26,27
.LBB6909:
.LBB6902:
	.loc 7 230 0
	lfs 13,64(9)
	lfs 0,80(9)
	lwz 21,52(9)
	lwz 22,68(9)
.LBE6902:
.LBE6909:
	.loc 2 2897 0
	mulli 26,26,48
.LBB6910:
.LBB6903:
	.loc 7 230 0
	lwz 23,84(9)
	lwz 24,56(9)
.LBE6903:
.LBE6910:
.LBB6911:
.LBB6912:
	lfsx 10,18,26
.LBE6912:
.LBE6911:
	.loc 2 2897 0
	add 3,18,26
.LVL1782:
.LBB6915:
.LBB6913:
	.loc 7 230 0
	lfs 5,4(3)
	lfs 6,8(3)
.LBE6913:
.LBE6915:
.LBE7075:
.LBE7085:
.LBB7086:
.LBB6872:
	.loc 2 2726 0
	fmr 11,10
.LBE6872:
.LBE7086:
.LBB7087:
.LBB7076:
.LBB6916:
.LBB6914:
	.loc 7 230 0
	lfs 2,16(3)
	lfs 3,20(3)
	lfs 4,24(3)
	lfs 7,32(3)
	lfs 8,36(3)
	lfs 9,40(3)
.LVL1783:
.LBE6914:
.LBE6916:
.LBB6917:
.LBB6904:
.LBB6894:
.LBB6895:
	.loc 6 427 0
	stw 10,280(31)
.LBE6895:
.LBE6894:
.LBE6904:
.LBE6917:
.LBE7076:
.LBE7087:
.LBB7088:
.LBB6873:
	.loc 6 465 0
	addi 10,31,288
.LBE6873:
.LBE7088:
.LBB7089:
.LBB7077:
.LBB6918:
.LBB6905:
.LBB6898:
.LBB6896:
	.loc 6 427 0
	stw 11,284(31)
.LVL1784:
.LBE6896:
.LBE6898:
.LBE6905:
.LBE6918:
.LBB6919:
.LBB6920:
.LBB6921:
	.loc 2 2898 0
	addi 11,31,252
.LBE6921:
.LBE6920:
.LBE6919:
.LBB6926:
.LBB6906:
.LBB6899:
.LBB6897:
	.loc 6 425 0
	stfs 12,252(31)
	stfs 13,256(31)
	stfs 0,260(31)
	.loc 6 426 0
	stw 21,264(31)
	stw 22,268(31)
	stw 23,272(31)
	.loc 6 427 0
	stw 24,276(31)
.LBE6897:
.LBE6899:
.LBE6906:
.LBE6926:
.LBB6927:
.LBB6924:
.LBB6922:
	.loc 6 425 0
	stfs 10,216(31)
	stfs 5,220(31)
	stfs 6,224(31)
	.loc 6 426 0
	stfs 2,228(31)
	stfs 3,232(31)
	stfs 4,236(31)
	.loc 6 427 0
	stfs 7,240(31)
	stfs 8,244(31)
	stfs 9,248(31)
.LVL1785:
.L1002:
.LBE6922:
.LBE6924:
.LBE6927:
.LBB6928:
.LBB6929:
	.loc 6 471 0
	lfs 31,228(31)
	lfs 1,240(31)
	fmuls 13,13,31
	fmadds 12,12,11,13
	fmadds 0,0,1,12
	stfs 0,0(10)
.LVL1786:
	lfs 0,232(31)
	lfs 11,4(11)
	lfs 13,0(11)
	fmuls 11,11,0
	lfs 0,220(31)
	lfs 12,8(11)
	fmadds 13,13,0,11
	lfs 0,244(31)
	fmadds 0,12,0,13
	stfs 0,4(10)
.LVL1787:
	lfs 0,4(11)
	lfs 11,236(31)
	lfs 13,0(11)
	fmuls 11,11,0
	lfs 0,224(31)
	lfs 12,248(31)
	fmadds 13,13,0,11
	lfs 0,8(11)
	fmadds 0,12,0,13
	stfs 0,8(10)
.LVL1788:
	addi 10,10,12
.LVL1789:
	.loc 6 467 0
	cmpw 7,10,0
	beq- 7,.L1053
.LBE6929:
.LBE6928:
.LBB6930:
.LBB6925:
.LBB6923:
	.loc 2 2726 0
	lfs 12,12(11)
	lfs 13,16(11)
	lfs 0,20(11)
	addi 11,11,12
	lfs 11,216(31)
	b .L1002
.LVL1790:
.L1049:
.LBE6923:
.LBE6925:
.LBE6930:
.LBE7077:
.LBE7089:
.LBB7090:
.LBB6730:
.LBB6726:
.LBB6724:
	.loc 5 351 0
	mr 3,29
.LVL1791:
	li 5,0
	bl _ZN5idStr10ReAllocateEib
.LVL1792:
	b .L975
.LVL1793:
.L966:
.LBE6724:
.LBE6726:
.LBE6730:
.LBE7090:
	.loc 2 2826 0
	addi 3,31,684
	addi 4,28,336
	addi 29,31,40
	bl _ZNK8idAngles6ToMat3Ev
	li 10,0
.L970:
.LBB7091:
.LBB7092:
.LBB7093:
.LBB7094:
	.loc 3 424 0
	addi 11,31,684
	addi 9,31,720
	lwzux 0,11,10
.LBE7094:
.LBE7093:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB7097:
.LBB7095:
	.loc 3 424 0
	stwux 0,9,10
.LBE7095:
.LBE7097:
	.loc 6 333 0
	addi 10,10,12
.LBB7098:
.LBB7096:
	.loc 3 425 0
	lwz 0,4(11)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,8(11)
	stw 0,8(9)
.LBE7096:
.LBE7098:
	.loc 6 333 0
	bne+ 7,.L970
	b .L969
.LVL1794:
.L1053:
.LBE7092:
.LBE7091:
.LBB7099:
.LBB7078:
.LBB6931:
.LBB6932:
	.loc 3 431 0
	lfs 13,76(9)
	lfs 0,28(3)
	lfs 12,60(9)
	fsubs 0,13,0
	lfs 13,12(3)
.LBE6932:
.LBE6931:
	.loc 2 2901 0
	lwzu 11,4(30)
.LBB6935:
.LBB6933:
	.loc 3 431 0
	fsubs 13,12,13
	lfs 12,92(9)
.LBE6933:
.LBE6935:
.LBB6936:
.LBB6937:
.LBB6938:
	.loc 6 454 0
	fmuls 2,2,0
.LVL1795:
.LBE6938:
.LBE6937:
.LBE6936:
	.loc 2 2901 0
	cmpwi 7,11,1
.LBB6941:
.LBB6940:
.LBB6939:
	.loc 6 454 0
	fmuls 3,3,0
.LVL1796:
	fmuls 4,4,0
.LVL1797:
.LBE6939:
.LBE6940:
.LBE6941:
.LBB6942:
.LBB6934:
	.loc 3 431 0
	lfs 0,44(3)
	.loc 6 454 0
	fmadds 10,10,13,2
.LVL1798:
	.loc 3 431 0
	fsubs 0,12,0
.LVL1799:
	.loc 6 454 0
	fmadds 5,5,13,3
.LVL1800:
	fmadds 13,6,13,4
.LVL1801:
	fmadds 7,7,0,10
.LVL1802:
	fmadds 8,8,0,5
.LVL1803:
	fmadds 0,9,0,13
.LVL1804:
.LBE6934:
.LBE6942:
	.loc 2 2901 0
	beq- 7,.L1006
	cmpwi 7,11,2
	beq- 7,.L1007
	cmpwi 7,11,0
	bne- 7,.L1054
.LBB6943:
.LBB6944:
.LBB6945:
.LBB6946:
	.loc 3 402 0
	subf 11,16,7
.LBE6946:
.LBE6945:
.LBE6944:
.LBE6943:
	.loc 2 2908 0
	lwz 10,948(31)
.LVL1805:
.LBB6967:
.LBB6965:
.LBB6948:
.LBB6947:
	.loc 3 402 0
	lwzux 3,11,15
.LVL1806:
.LBE6947:
.LBE6948:
	.loc 7 92 0
	stwx 3,10,8
.LBE6965:
.LBE6967:
	.loc 2 2908 0
	add 10,10,8
.LVL1807:
.LBB6968:
.LBB6966:
.LBB6949:
.LBB6950:
	.loc 3 402 0
	lwz 3,12(11)
.LBE6950:
.LBE6949:
	.loc 7 93 0
	stw 3,4(10)
.LVL1808:
.LBB6951:
.LBB6952:
	.loc 3 402 0
	lwz 3,24(11)
.LBE6952:
.LBE6951:
	.loc 7 94 0
	stw 3,8(10)
.LVL1809:
.LBB6953:
.LBB6954:
	.loc 3 402 0
	lwz 3,4(11)
.LBE6954:
.LBE6953:
	.loc 7 95 0
	stw 3,16(10)
.LVL1810:
.LBB6955:
.LBB6956:
	.loc 3 402 0
	lwz 3,16(11)
.LBE6956:
.LBE6955:
	.loc 7 96 0
	stw 3,20(10)
.LVL1811:
.LBB6957:
.LBB6958:
	.loc 3 402 0
	lwz 3,28(11)
.LBE6958:
.LBE6957:
	.loc 7 97 0
	stw 3,24(10)
.LVL1812:
.LBB6959:
.LBB6960:
	.loc 3 402 0
	lwz 3,8(11)
.LBE6960:
.LBE6959:
	.loc 7 98 0
	stw 3,32(10)
.LVL1813:
.LBB6961:
.LBB6962:
	.loc 3 402 0
	lwz 3,20(11)
.LBE6962:
.LBE6961:
	.loc 7 99 0
	stw 3,36(10)
.LVL1814:
.LBB6963:
.LBB6964:
	.loc 3 402 0
	lwz 11,32(11)
.LBE6964:
.LBE6963:
	.loc 7 100 0
	stw 11,40(10)
.LBE6966:
.LBE6968:
	.loc 2 2909 0
	lwz 10,948(31)
	add 11,10,26
.LVL1815:
.LBB6969:
.LBB6970:
.LBB6971:
	.loc 6 454 0
	lfs 13,4(11)
	lfs 11,20(11)
	lfs 12,36(11)
	fmuls 11,8,11
.LBE6971:
.LBE6970:
.LBE6969:
.LBB6976:
.LBB6977:
	lfs 9,16(11)
.LVL1816:
.LBE6977:
.LBE6976:
.LBB6981:
.LBB6974:
.LBB6972:
	fmuls 12,8,12
.LBE6972:
.LBE6974:
.LBE6981:
.LBB6982:
.LBB6978:
	lfs 10,32(11)
.LBE6978:
.LBE6982:
.LBB6983:
.LBB6975:
.LBB6973:
	fmuls 8,8,13
.LVL1817:
.LBE6973:
.LBE6975:
.LBE6983:
.LBB6984:
.LBB6979:
	lfsx 13,10,26
	fmadds 11,9,7,11
	lfs 9,24(11)
	fmadds 12,10,7,12
	lfs 10,40(11)
	fmadds 7,13,7,8
	lfs 13,8(11)
	fmadds 9,9,0,11
.LVL1818:
	.loc 3 452 0
	lfs 11,12(11)
	.loc 6 454 0
	fmadds 10,10,0,12
.LVL1819:
	.loc 3 452 0
	lfs 12,28(11)
	.loc 6 454 0
	fmadds 0,13,0,7
.LVL1820:
	.loc 3 452 0
	lfs 13,44(11)
	fadds 12,9,12
.LBE6979:
.LBE6984:
	.loc 2 2909 0
	add 11,10,8
.LVL1821:
.LBB6985:
.LBB6980:
	.loc 3 452 0
	fadds 13,10,13
.LVL1822:
	fadds 0,11,0
.LVL1823:
.LBE6980:
.LBE6985:
.LBB6986:
.LBB6987:
	.loc 7 104 0
	stfs 0,12(11)
.LVL1824:
	.loc 7 105 0
	stfs 12,28(11)
.LVL1825:
	.loc 7 106 0
	stfs 13,44(11)
.LVL1826:
.L1010:
.LBE6987:
.LBE6986:
.LBE7078:
	.loc 2 2894 0
	addi 6,6,1
.LVL1827:
	addi 7,7,36
.LVL1828:
	cmpw 7,6,25
	addi 9,9,48
.LVL1829:
	addi 8,8,48
.LVL1830:
	addi 14,14,12
	addi 4,4,12
	addi 5,5,12
	bne+ 7,.L1013
.LVL1831:
.L1001:
.LBE7099:
	.loc 2 2926 0
	lwz 11,1004(31)
	addi 4,31,756
	li 5,0
	li 6,0
	lwz 9,0(11)
	mr 3,11
	lwz 0,136(9)
	mtctr 0
	bctrl
	mr 30,3
	b .L961
.LVL1832:
.L980:
	.loc 2 2853 0
	mulli 11,28,12
.LBB7100:
.LBB7101:
	.loc 3 424 0
	lwz 0,28(31)
.LBE7101:
.LBE7100:
	.loc 2 2854 0
	addi 3,31,540
	addi 4,31,16
.LBB7104:
.LBB7102:
	.loc 3 424 0
	stwx 0,14,11
.LBE7102:
.LBE7104:
	.loc 2 2853 0
	add 9,14,11
.LVL1833:
.LBB7105:
.LBB7103:
	.loc 3 425 0
	lwz 0,32(31)
	stw 0,4(9)
	.loc 3 426 0
	lwz 0,36(31)
	stw 0,8(9)
.LBE7103:
.LBE7105:
	.loc 2 2854 0
	bl _ZNK8idAngles6ToMat3Ev
.LEHE178:
.LVL1834:
	mulli 7,28,36
	lwz 11,988(31)
.LBB7106:
.LBB7107:
	.loc 6 333 0
	li 10,0
.LBE7107:
.LBE7106:
	.loc 2 2854 0
	add 7,11,7
.L984:
.LBB7115:
.LBB7114:
.LBB7108:
.LBB7109:
	.loc 3 424 0
	addi 11,31,540
.LVL1835:
	mr 9,7
	lwzux 0,11,10
.LVL1836:
.LBE7109:
.LBE7108:
	.loc 6 333 0
	cmpwi 7,10,24
.LBB7112:
.LBB7110:
	.loc 3 424 0
	stwux 0,9,10
.LBE7110:
.LBE7112:
	.loc 6 333 0
	addi 10,10,12
.LBB7113:
.LBB7111:
	.loc 3 425 0
	lwz 8,4(11)
	.loc 3 426 0
	lwz 0,8(11)
	.loc 3 425 0
	stw 8,4(9)
	.loc 3 426 0
	stw 0,8(9)
.LBE7111:
.LBE7113:
	.loc 6 333 0
	bne+ 7,.L984
	b .L979
.LVL1837:
.L1052:
.LBE7114:
.LBE7115:
.LBB7116:
.LBB7117:
.LBB7118:
	.loc 3 402 0
	lwz 10,20(22)
.LVL1838:
.LBE7118:
.LBE7117:
.LBB7119:
.LBB7120:
	.loc 6 427 0
	lwz 11,32(22)
.LVL1839:
	stw 10,460(31)
.LBE7120:
.LBE7119:
.LBE7116:
.LBB7141:
.LBB6844:
.LBB6838:
	.loc 6 426 0
	lwz 10,4(24)
.LBE6838:
.LBE6844:
.LBE7141:
.LBB7142:
.LBB7125:
.LBB7126:
	.loc 3 402 0
	lwz 8,8(22)
.LBE7126:
.LBE7125:
.LBE7142:
.LBB7143:
.LBB6845:
.LBB6839:
	.loc 6 426 0
	stw 10,408(31)
	lwz 10,28(24)
.LBE6839:
.LBE6845:
.LBE7143:
.LBB7144:
.LBB7127:
.LBB7128:
	.loc 3 402 0
	lwz 3,12(22)
.LVL1840:
.LBE7128:
.LBE7127:
.LBE7144:
.LBB7145:
.LBB6846:
.LBB6840:
	.loc 6 426 0
	stw 10,416(31)
	.loc 6 427 0
	lwz 10,8(24)
.LBE6840:
.LBE6846:
.LBE7145:
.LBB7146:
.LBB7129:
.LBB7130:
	.loc 3 402 0
	lwz 4,24(22)
.LVL1841:
.LBE7130:
.LBE7129:
.LBB7131:
.LBB7132:
	lwz 5,4(22)
.LVL1842:
.LBE7132:
.LBE7131:
.LBB7133:
.LBB7134:
	lwz 6,16(22)
.LVL1843:
.LBE7134:
.LBE7133:
.LBB7135:
.LBB7136:
	lwz 7,28(22)
.LVL1844:
.LBE7136:
.LBE7135:
.LBB7137:
.LBB7121:
	.loc 6 425 0
	lwz 27,0(22)
.LVL1845:
.LBE7121:
.LBE7137:
.LBE7146:
.LBB7147:
.LBB6847:
.LBB6848:
	.loc 3 402 0
	lfs 0,0(24)
.LBE6848:
.LBE6847:
.LBB6849:
.LBB6850:
	lwz 26,12(24)
.LVL1846:
.LBE6850:
.LBE6849:
.LBB6851:
.LBB6852:
	lwz 12,24(24)
.LBE6852:
.LBE6851:
.LBE7147:
.LBB7148:
.LBB7138:
.LBB7122:
	.loc 6 427 0
	stw 11,464(31)
.LBE7122:
.LBE7138:
.LBE7148:
.LBB7149:
.LBB6853:
.LBB6841:
	stw 10,420(31)
	.loc 6 426 0
	lwz 11,16(24)
	.loc 6 427 0
	lwz 10,20(24)
.LBE6841:
.LBE6853:
.LBE7149:
.LBB7150:
.LBB7139:
.LBB7123:
	stw 8,456(31)
.LBE7123:
.LBE7139:
.LBE7150:
.LBB7151:
.LBB6854:
.LBB6842:
	.loc 2 2726 0
	addi 8,21,24
	.loc 6 426 0
	stw 11,412(31)
.LBE6842:
.LBE6854:
.LBE7151:
	.loc 2 2886 0
	mr 11,21
.LBB7152:
.LBB7140:
.LBB7124:
	.loc 6 425 0
	stw 27,432(31)
	stw 3,436(31)
	stw 4,440(31)
	.loc 6 426 0
	stw 5,444(31)
	stw 6,448(31)
	stw 7,452(31)
.LBE7124:
.LBE7140:
.LBE7152:
.LBB7153:
.LBB6855:
.LBB6843:
	.loc 6 425 0
	stfs 0,396(31)
	stw 26,400(31)
	stw 12,404(31)
.LVL1847:
	.loc 6 427 0
	stw 10,424(31)
	lwz 10,32(24)
	stw 10,428(31)
.LVL1848:
.LBE6843:
.LBE6855:
.LBE7153:
	.loc 6 465 0
	addi 10,31,360
.LVL1849:
.L993:
.LBB7154:
.LBB6861:
	.loc 6 471 0
	lfs 13,408(31)
	.loc 6 467 0
	cmpw 7,11,8
	.loc 6 471 0
	lfs 11,4(11)
	lfs 10,0(11)
	fmuls 11,11,13
	lfs 12,8(11)
	lfs 13,420(31)
	fmr 7,10
	lfs 8,4(11)
	fmadds 0,0,10,11
	fmr 11,8
	fmadds 0,12,13,0
	stfs 0,0(10)
.LVL1850:
	lfs 0,412(31)
	lfs 10,400(31)
	fmuls 8,8,0
	lfs 9,424(31)
	lfs 13,0(11)
	lfs 0,8(11)
	fmadds 10,10,7,8
	fmadds 12,12,9,10
	stfs 12,4(10)
.LVL1851:
	lfs 12,416(31)
	lfs 10,404(31)
	fmuls 11,11,12
	lfs 12,428(31)
	fmadds 13,13,10,11
	fmadds 0,0,12,13
	stfs 0,8(10)
.LVL1852:
	addi 10,10,12
.LVL1853:
	.loc 6 467 0
	beq- 7,.L1055
	.loc 6 474 0
	lfs 0,396(31)
	addi 11,11,12
.LVL1854:
	b .L993
.LVL1855:
.L967:
.LBE6861:
.LBE7154:
.LBB7155:
.LBB6635:
.LBB6625:
.LBB6626:
	.loc 14 270 0
	lwz 0,984(31)
.LVL1856:
	.loc 14 275 0
	lfs 7,984(31)
	.loc 14 276 0
	rlwinm 9,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,18,0
	subfic 9,9,380
	rlwinm 9,9,22,0,8
	.loc 14 275 0
	fmuls 9,7,8
.LVL1857:
	.loc 14 276 0
	or 0,9,0
.LBE6626:
.LBE6625:
	.loc 3 739 0
	stfs 31,728(31)
.LBB6629:
.LBB6627:
	.loc 14 277 0
	stw 0,1012(31)
	.loc 2 2726 0
	fneg 9,9
.LVL1858:
	.loc 14 277 0
	lfs 8,1012(31)
	fmr 10,8
.LVL1859:
.LBE6627:
.LBE6629:
	.loc 3 737 0
	fneg 8,0
.LVL1860:
.LBB6630:
.LBB6628:
	.loc 14 278 0
	fmul 7,10,10
	fmadd 7,9,7,11
	fmul 10,10,7
.LVL1861:
	.loc 14 279 0
	fmul 7,10,10
	fmadd 11,9,7,11
.LVL1862:
	fmul 10,10,11
.LVL1863:
	.loc 14 280 0
	frsp 10,10
.LVL1864:
.LBE6628:
.LBE6630:
	.loc 3 737 0
	fmuls 11,8,10
	.loc 3 738 0
	fmuls 10,13,10
	.loc 3 737 0
	stfs 11,720(31)
.LVL1865:
	.loc 3 738 0
	stfs 10,724(31)
.LVL1866:
	b .L968
.LVL1867:
.L1007:
.LBE6635:
.LBE7155:
.LBB7156:
.LBB7079:
.LBB6988:
.LBB6989:
.LBB6990:
.LBB6991:
	.loc 3 402 0
	subf 11,16,7
.LBE6991:
.LBE6990:
.LBE6989:
.LBE6988:
	.loc 2 2913 0
	lwz 10,948(31)
.LVL1868:
.LBB7012:
.LBB7010:
.LBB6993:
.LBB6992:
	.loc 3 402 0
	lwzux 3,11,15
.LVL1869:
.LBE6992:
.LBE6993:
	.loc 7 92 0
	stwx 3,10,8
.LBE7010:
.LBE7012:
	.loc 2 2913 0
	add 10,10,8
.LVL1870:
.LBB7013:
.LBB7011:
.LBB6994:
.LBB6995:
	.loc 3 402 0
	lwz 3,12(11)
.LBE6995:
.LBE6994:
	.loc 7 93 0
	stw 3,4(10)
.LVL1871:
.LBB6996:
.LBB6997:
	.loc 3 402 0
	lwz 3,24(11)
.LBE6997:
.LBE6996:
	.loc 7 94 0
	stw 3,8(10)
.LVL1872:
.LBB6998:
.LBB6999:
	.loc 3 402 0
	lwz 3,4(11)
.LBE6999:
.LBE6998:
	.loc 7 95 0
	stw 3,16(10)
.LVL1873:
.LBB7000:
.LBB7001:
	.loc 3 402 0
	lwz 3,16(11)
.LBE7001:
.LBE7000:
	.loc 7 96 0
	stw 3,20(10)
.LVL1874:
.LBB7002:
.LBB7003:
	.loc 3 402 0
	lwz 3,28(11)
.LBE7003:
.LBE7002:
	.loc 7 97 0
	stw 3,24(10)
.LVL1875:
.LBB7004:
.LBB7005:
	.loc 3 402 0
	lwz 3,8(11)
.LBE7005:
.LBE7004:
	.loc 7 98 0
	stw 3,32(10)
.LVL1876:
.LBB7006:
.LBB7007:
	.loc 3 402 0
	lwz 3,20(11)
.LBE7007:
.LBE7006:
	.loc 7 99 0
	stw 3,36(10)
.LVL1877:
.LBB7008:
.LBB7009:
	.loc 3 402 0
	lwz 11,32(11)
.LBE7009:
.LBE7008:
	.loc 7 100 0
	stw 11,40(10)
.LVL1878:
.L1047:
.LBE7011:
.LBE7013:
	.loc 2 2914 0
	lwz 11,948(31)
.LBB7014:
.LBB7015:
.LBB7016:
.LBB7017:
	.loc 3 402 0
	lwz 10,12(14)
.LBE7017:
.LBE7016:
.LBE7015:
.LBE7014:
	.loc 2 2914 0
	add 11,11,8
.LVL1879:
.LBB7023:
.LBB7022:
	.loc 7 104 0
	stw 10,12(11)
.LVL1880:
.LBB7018:
.LBB7019:
	.loc 3 402 0
	lwz 10,0(4)
.LBE7019:
.LBE7018:
	.loc 7 105 0
	stw 10,28(11)
.LVL1881:
.LBB7020:
.LBB7021:
	.loc 3 402 0
	lwz 10,0(5)
.LBE7021:
.LBE7020:
	.loc 7 106 0
	stw 10,44(11)
	b .L1010
.LVL1882:
.L1006:
.LBE7022:
.LBE7023:
	.loc 2 2903 0
	lwz 3,948(31)
.LVL1883:
.LBE7079:
.LBE7156:
.LBB7157:
.LBB6874:
	addi 11,31,288
.LBE6874:
.LBE7157:
.LBB7158:
.LBB7080:
	add 10,3,26
.LVL1884:
.LBB7024:
.LBB6890:
	.loc 7 230 0
	lfsx 0,3,26
.LVL1885:
	lwz 21,4(10)
.LBE6890:
.LBE7024:
	.loc 2 2903 0
	add 3,3,8
.LBB7025:
.LBB6891:
	.loc 7 230 0
	lwz 24,8(10)
	lwz 19,16(10)
	lwz 22,20(10)
	lwz 26,24(10)
.LVL1886:
	lwz 20,32(10)
	lwz 23,36(10)
	lwz 10,40(10)
.LVL1887:
.LBB6889:
.LBB6888:
	.loc 6 425 0
	stfs 0,180(31)
	stw 19,184(31)
	stw 20,188(31)
	.loc 6 426 0
	stw 21,192(31)
	stw 22,196(31)
	stw 23,200(31)
	.loc 6 427 0
	stw 24,204(31)
	stw 26,208(31)
	stw 10,212(31)
.LVL1888:
.LBE6888:
.LBE6889:
.LBE6891:
.LBE7025:
.LBE7080:
.LBE7158:
.LBB7159:
.LBB6875:
	.loc 6 465 0
	addi 10,31,144
.LVL1889:
.L1008:
.LBE6875:
.LBE7159:
.LBB7160:
.LBB7081:
.LBB7026:
.LBB7027:
	.loc 6 471 0
	lfs 13,192(31)
	.loc 6 467 0
	cmpw 7,11,28
	.loc 6 471 0
	lfs 11,4(11)
	lfs 10,0(11)
	fmuls 11,11,13
	lfs 12,8(11)
	lfs 13,204(31)
	fmadds 0,0,10,11
	fmadds 0,12,13,0
	stfs 0,0(10)
.LVL1890:
	lfs 13,4(11)
	lfs 0,196(31)
	lfs 11,184(31)
	fmuls 0,13,0
	lfs 13,0(11)
	lfs 12,8(11)
	fmadds 13,11,13,0
	lfs 0,208(31)
	fmadds 0,12,0,13
	stfs 0,4(10)
.LVL1891:
	lfs 13,4(11)
	lfs 0,200(31)
	lfs 11,0(11)
	fmuls 0,13,0
	lfs 13,188(31)
	lfs 12,8(11)
	fmadds 13,11,13,0
	lfs 0,212(31)
	fmadds 0,12,0,13
	stfs 0,8(10)
.LVL1892:
	addi 10,10,12
.LVL1893:
	.loc 6 467 0
	beq- 7,.L1056
	.loc 6 474 0
	lfs 0,180(31)
	addi 11,11,12
.LVL1894:
	b .L1008
.LVL1895:
.L1054:
.LBE7027:
.LBE7026:
	.loc 2 2918 0
	lwz 3,948(31)
.LVL1896:
.LBE7081:
.LBE7160:
.LBB7161:
.LBB6876:
	addi 11,31,288
.LBE6876:
.LBE7161:
.LBB7162:
.LBB7082:
	add 10,3,26
.LVL1897:
.LBB7028:
.LBB7029:
	.loc 7 230 0
	lfsx 13,3,26
	lwz 20,4(10)
.LBE7029:
.LBE7028:
	.loc 2 2918 0
	add 3,3,8
.LBB7033:
.LBB7032:
	.loc 7 230 0
	lwz 23,8(10)
	lwz 17,16(10)
	lwz 21,20(10)
	lwz 24,24(10)
	lwz 19,32(10)
	lwz 22,36(10)
	lwz 10,40(10)
.LVL1898:
.LBB7030:
.LBB7031:
	.loc 6 425 0
	stfs 13,108(31)
	stw 17,112(31)
	stw 19,116(31)
	.loc 6 426 0
	stw 20,120(31)
	stw 21,124(31)
	stw 22,128(31)
	.loc 6 427 0
	stw 23,132(31)
	stw 24,136(31)
	stw 10,140(31)
.LVL1899:
.LBE7031:
.LBE7030:
.LBE7032:
.LBE7033:
.LBE7082:
.LBE7162:
.LBB7163:
.LBB6877:
	.loc 6 465 0
	addi 10,31,72
.LVL1900:
.L1011:
.LBE6877:
.LBE7163:
.LBB7164:
.LBB7083:
.LBB7034:
.LBB7035:
	.loc 6 471 0
	lfs 12,120(31)
	.loc 6 467 0
	cmpw 7,11,28
	.loc 6 471 0
	lfs 10,4(11)
	lfs 9,0(11)
	fmuls 10,10,12
	lfs 11,8(11)
	lfs 12,132(31)
	fmadds 13,13,9,10
	fmadds 13,11,12,13
	stfs 13,0(10)
.LVL1901:
	lfs 12,4(11)
	lfs 13,124(31)
	lfs 10,112(31)
	fmuls 13,12,13
	lfs 12,0(11)
	lfs 11,8(11)
	fmadds 12,10,12,13
	lfs 13,136(31)
	fmadds 13,11,13,12
	stfs 13,4(10)
.LVL1902:
	lfs 12,4(11)
	lfs 13,128(31)
	lfs 10,0(11)
	fmuls 13,12,13
	lfs 12,116(31)
	lfs 11,8(11)
	fmadds 12,10,12,13
	lfs 13,140(31)
	fmadds 13,11,13,12
	stfs 13,8(10)
.LVL1903:
	addi 10,10,12
.LVL1904:
	.loc 6 467 0
	beq- 7,.L1057
	.loc 6 474 0
	lfs 13,108(31)
	addi 11,11,12
.LVL1905:
	b .L1011
.LVL1906:
.L1056:
.LBE7035:
.LBE7034:
.LBB7036:
.LBB7037:
.LBB7038:
.LBB7039:
	.loc 3 402 0
	lwz 11,144(31)
.LVL1907:
.LBE7039:
.LBE7038:
	.loc 7 92 0
	stw 11,0(3)
.LVL1908:
.LBB7040:
.LBB7041:
	.loc 3 402 0
	lwz 11,156(31)
.LBE7041:
.LBE7040:
	.loc 7 93 0
	stw 11,4(3)
.LVL1909:
.LBB7042:
.LBB7043:
	.loc 3 402 0
	lwz 10,168(31)
.LVL1910:
.LBE7043:
.LBE7042:
	.loc 7 95 0
	lwz 11,148(31)
	.loc 7 94 0
	stw 10,8(3)
.LVL1911:
	.loc 7 95 0
	stw 11,16(3)
.LVL1912:
	.loc 7 98 0
	lwz 10,152(31)
	.loc 7 96 0
	lwz 11,160(31)
	.loc 7 98 0
	stw 10,32(3)
	.loc 7 96 0
	stw 11,20(3)
.LVL1913:
.LBB7044:
.LBB7045:
	.loc 3 402 0
	lwz 10,172(31)
.LBE7045:
.LBE7044:
	.loc 7 99 0
	lwz 11,164(31)
	.loc 7 97 0
	stw 10,24(3)
.LVL1914:
	.loc 7 99 0
	stw 11,36(3)
.LVL1915:
	.loc 7 100 0
	lwz 11,176(31)
	stw 11,40(3)
	b .L1047
.LVL1916:
.L1057:
.LBE7037:
.LBE7036:
.LBB7046:
.LBB7047:
.LBB7048:
.LBB7049:
	.loc 3 402 0
	lwz 11,72(31)
.LVL1917:
.LBE7049:
.LBE7048:
	.loc 7 92 0
	stw 11,0(3)
.LVL1918:
.LBB7050:
.LBB7051:
	.loc 3 402 0
	lwz 11,84(31)
.LBE7051:
.LBE7050:
	.loc 7 93 0
	stw 11,4(3)
.LVL1919:
.LBB7052:
.LBB7053:
	.loc 3 402 0
	lwz 10,96(31)
.LVL1920:
.LBE7053:
.LBE7052:
	.loc 7 95 0
	lwz 11,76(31)
	.loc 7 94 0
	stw 10,8(3)
.LVL1921:
	.loc 7 95 0
	stw 11,16(3)
.LVL1922:
	.loc 7 98 0
	lwz 10,80(31)
	.loc 7 96 0
	lwz 11,88(31)
	.loc 7 98 0
	stw 10,32(3)
	.loc 7 96 0
	stw 11,20(3)
.LVL1923:
.LBB7054:
.LBB7055:
	.loc 3 402 0
	lwz 10,100(31)
.LBE7055:
.LBE7054:
	.loc 7 99 0
	lwz 11,92(31)
	.loc 7 97 0
	stw 10,24(3)
.LVL1924:
	.loc 7 99 0
	stw 11,36(3)
.LVL1925:
	.loc 7 100 0
	lwz 11,104(31)
	stw 11,40(3)
.LBE7047:
.LBE7046:
	.loc 2 2919 0
	lwz 10,948(31)
.LVL1926:
	add 11,10,26
.LVL1927:
.LBB7056:
.LBB7057:
.LBB7058:
	.loc 6 454 0
	lfs 13,4(11)
	lfs 11,20(11)
	lfs 12,36(11)
	fmuls 11,8,11
.LBE7058:
.LBE7057:
.LBE7056:
.LBB7063:
.LBB7064:
	lfs 9,16(11)
.LBE7064:
.LBE7063:
.LBB7068:
.LBB7061:
.LBB7059:
	fmuls 12,8,12
.LBE7059:
.LBE7061:
.LBE7068:
.LBB7069:
.LBB7065:
	lfs 10,32(11)
.LBE7065:
.LBE7069:
.LBB7070:
.LBB7062:
.LBB7060:
	fmuls 8,8,13
.LVL1928:
.LBE7060:
.LBE7062:
.LBE7070:
.LBB7071:
.LBB7066:
	lfsx 13,10,26
	fmadds 11,9,7,11
	lfs 9,24(11)
	fmadds 12,10,7,12
	lfs 10,40(11)
	fmadds 7,13,7,8
	lfs 13,8(11)
	fmadds 9,9,0,11
.LVL1929:
	.loc 3 452 0
	lfs 11,12(11)
	.loc 6 454 0
	fmadds 10,10,0,12
.LVL1930:
	.loc 3 452 0
	lfs 12,28(11)
	.loc 6 454 0
	fmadds 0,13,0,7
.LVL1931:
	.loc 3 452 0
	lfs 13,44(11)
	fadds 12,9,12
.LBE7066:
.LBE7071:
	.loc 2 2919 0
	add 11,10,8
.LVL1932:
.LBB7072:
.LBB7067:
	.loc 3 452 0
	fadds 13,10,13
.LVL1933:
	fadds 0,11,0
.LVL1934:
.LBE7067:
.LBE7072:
.LBB7073:
.LBB7074:
	.loc 7 105 0
	stfs 12,28(11)
	.loc 7 104 0
	stfs 0,12(11)
.LVL1935:
	.loc 7 106 0
	stfs 13,44(11)
	b .L1010
.LVL1936:
.L1025:
.LBE7074:
.LBE7073:
.LBE7083:
.LBE7164:
	.loc 2 2878 0
	li 28,0
	b .L988
.LVL1937:
.L1019:
.LBB7165:
.LBB6614:
	.loc 11 245 0
	lis 4,.LC35@ha
	la 4,.LC35@l(4)
	b .L960
.LVL1938:
.L1026:
	mr 30,3
.LVL1939:
.LBE6614:
.LBE7165:
.LBB7166:
.LBB7167:
.LBB7168:
	.loc 5 501 0
	mr 3,29
	bl _ZN5idStr8FreeDataEv
	mr 3,30
.LEHB179:
	bl _Unwind_Resume
.LEHE179:
.LBE7168:
.LBE7167:
.LBE7166:
.LBE7172:
	.cfi_endproc
.LFE3019:
	.section	.gcc_except_table
.LLSDA3019:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3019-.LLSDACSB3019
.LLSDACSB3019:
	.uleb128 .LEHB176-.LFB3019
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L1026-.LFB3019
	.uleb128 0
	.uleb128 .LEHB177-.LFB3019
	.uleb128 .LEHE177-.LEHB177
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB178-.LFB3019
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L1026-.LFB3019
	.uleb128 0
	.uleb128 .LEHB179-.LFB3019
	.uleb128 .LEHE179-.LEHB179
	.uleb128 0
	.uleb128 0
.LLSDACSE3019:
	.section	".text"
	.size	_ZN10idGameEdit13AF_CreateMeshERK6idDictR6idVec3R6idMat3Rb, .-_ZN10idGameEdit13AF_CreateMeshERK6idDictR6idVec3R6idMat3Rb
	.section	.text._ZN6idListIiE5ClearEv,"axG",@progbits,_ZN6idListIiE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListIiE5ClearEv
	.type	_ZN6idListIiE5ClearEv, @function
_ZN6idListIiE5ClearEv:
.LFB3060:
	.loc 13 192 0
	.cfi_startproc
.LVL1940:
	mflr 0
	stwu 1,-16(1)
.LCFI394:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 13 193 0
	lwz 3,12(3)
.LVL1941:
	cmpwi 7,3,0
	beq- 7,.L1059
	.cfi_offset 65, 4
	.loc 13 194 0 discriminator 1
	bl _ZdaPv
.L1059:
	.loc 13 197 0
	li 0,0
	stw 0,12(31)
	.loc 13 198 0
	stw 0,0(31)
	.loc 13 199 0
	stw 0,4(31)
	.loc 13 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1942:
	mtlr 0
	addi 1,1,16
.LCFI395:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3060:
	.size	_ZN6idListIiE5ClearEv, .-_ZN6idListIiE5ClearEv
	.section	".text"
	.align 2
	.globl _ZN14idMultiModelAFD2Ev
	.type	_ZN14idMultiModelAFD2Ev, @function
_ZN14idMultiModelAFD2Ev:
.LFB2817:
	.loc 2 60 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2817
.LVL1943:
	mflr 0
	stwu 1,-32(1)
.LCFI396:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB7201:
	lis 9,_ZTV14idMultiModelAF+8@ha
.LBE7201:
	stw 29,20(1)
.LBB7242:
	la 9,_ZTV14idMultiModelAF+8@l(9)
.LBE7242:
	stw 0,36(1)
	mr 29,3
	.cfi_offset 65, 4
	.cfi_offset 29, -12
	stw 27,12(1)
	stw 28,16(1)
	stw 30,24(1)
	stw 31,28(1)
.LBB7243:
	.loc 2 60 0
	stw 9,0(3)
.LVL1944:
.LBB7202:
	.loc 2 63 0
	lwz 0,1080(3)
	lwz 3,1092(3)
.LVL1945:
	cmpwi 7,0,0
	ble- 7,.L1062
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	li 31,0
	.loc 2 65 0
	lis 27,gameRenderWorld@ha
	.loc 2 66 0
	li 28,-1
.LVL1946:
.L1064:
	.loc 2 60 0
	slwi 30,31,2
	.loc 2 64 0
	lwzx 4,3,30
	cmpwi 7,4,-1
	beq- 7,.L1063
	.loc 2 65 0
	lwz 3,gameRenderWorld@l(27)
.LVL1947:
	lwz 9,0(3)
	lwz 0,24(9)
	mtctr 0
.LEHB180:
	bctrl
.LEHE180:
.LVL1948:
	.loc 2 66 0
	lwz 9,1092(29)
	stwx 28,9,30
	lwz 3,1092(29)
	lwz 0,1080(29)
.LVL1949:
.L1063:
	.loc 2 63 0
	addi 31,31,1
.LVL1950:
	cmpw 7,0,31
	bgt+ 7,.L1064
.LVL1951:
.L1062:
.LBE7202:
.LBB7203:
.LBB7204:
.LBB7205:
.LBB7206:
	.loc 13 193 0
	cmpwi 7,3,0
	beq- 7,.L1065
	.loc 13 194 0
	bl _ZdaPv
.L1065:
.LBE7206:
.LBE7205:
.LBE7204:
.LBE7203:
.LBB7213:
.LBB7214:
.LBB7215:
.LBB7216:
	.loc 13 193 0
	lwz 3,1076(29)
.LBE7216:
.LBE7215:
.LBE7214:
.LBE7213:
.LBB7226:
.LBB7211:
.LBB7209:
.LBB7207:
	.loc 13 197 0
	li 0,0
	stw 0,1092(29)
.LBE7207:
.LBE7209:
.LBE7211:
.LBE7226:
.LBB7227:
.LBB7223:
.LBB7220:
.LBB7217:
	.loc 13 193 0
	cmpwi 7,3,0
.LBE7217:
.LBE7220:
.LBE7223:
.LBE7227:
.LBB7228:
.LBB7212:
.LBB7210:
.LBB7208:
	.loc 13 198 0
	stw 0,1080(29)
	.loc 13 199 0
	stw 0,1084(29)
.LVL1952:
.LBE7208:
.LBE7210:
.LBE7212:
.LBE7228:
.LBB7229:
.LBB7224:
.LBB7221:
.LBB7218:
	.loc 13 193 0
	beq- 7,.L1067
	.loc 13 194 0
	bl _ZdaPv
.L1067:
	.loc 13 197 0
	li 0,0
.LBE7218:
.LBE7221:
.LBE7224:
.LBE7229:
	.loc 2 60 0
	addi 3,29,636
.LBB7230:
.LBB7225:
.LBB7222:
.LBB7219:
	.loc 13 197 0
	stw 0,1076(29)
	.loc 13 198 0
	stw 0,1064(29)
	.loc 13 199 0
	stw 0,1068(29)
.LEHB181:
.LBE7219:
.LBE7222:
.LBE7225:
.LBE7230:
	.loc 2 60 0
	bl _ZN12idPhysics_AFD1Ev
.LEHE181:
	.loc 2 60 0 is_stmt 0 discriminator 3
	mr 3,29
.LEHB182:
	bl _ZN8idEntityD2Ev
.LEHE182:
.LBE7243:
	.loc 2 69 0 is_stmt 1 discriminator 3
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL1953:
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI397:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL1954:
.L1075:
.LCFI398:
	.cfi_restore_state
	mr 31,3
.LVL1955:
.LBB7244:
.LBB7231:
.LBB7232:
.LBB7233:
	.loc 13 181 0
	addi 3,29,1080
	bl _ZN6idListIiE5ClearEv
.LVL1956:
.LBE7233:
.LBE7232:
.LBE7231:
.LBB7234:
.LBB7235:
.LBB7236:
.LBB7237:
	.loc 13 193 0
	lwz 3,1076(29)
	cmpwi 7,3,0
	beq- 7,.L1072
	.loc 13 194 0
	bl _ZdaPv
.L1072:
	.loc 13 197 0
	li 0,0
.LBE7237:
.LBE7236:
.LBE7235:
.LBE7234:
	.loc 2 60 0
	addi 3,29,636
.LBB7241:
.LBB7240:
.LBB7239:
.LBB7238:
	.loc 13 197 0
	stw 0,1076(29)
	.loc 13 198 0
	stw 0,1064(29)
	.loc 13 199 0
	stw 0,1068(29)
.LBE7238:
.LBE7239:
.LBE7240:
.LBE7241:
	.loc 2 60 0
	bl _ZN12idPhysics_AFD1Ev
.LVL1957:
.L1074:
	mr 3,29
	bl _ZN8idEntityD2Ev
	mr 3,31
.LEHB183:
	bl _Unwind_Resume
.LEHE183:
.LVL1958:
.L1076:
	mr 31,3
	b .L1074
.LBE7244:
	.cfi_endproc
.LFE2817:
	.section	.gcc_except_table
.LLSDA2817:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2817-.LLSDACSB2817
.LLSDACSB2817:
	.uleb128 .LEHB180-.LFB2817
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L1075-.LFB2817
	.uleb128 0
	.uleb128 .LEHB181-.LFB2817
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L1076-.LFB2817
	.uleb128 0
	.uleb128 .LEHB182-.LFB2817
	.uleb128 .LEHE182-.LEHB182
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB183-.LFB2817
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
.LLSDACSE2817:
	.section	".text"
	.size	_ZN14idMultiModelAFD2Ev, .-_ZN14idMultiModelAFD2Ev
	.section	.text._ZN7idChainD2Ev,"axG",@progbits,_ZN7idChainD5Ev,comdat
	.align 2
	.weak	_ZN7idChainD2Ev
	.type	_ZN7idChainD2Ev, @function
_ZN7idChainD2Ev:
.LFB3324:
	.loc 9 76 0
	.cfi_startproc
.LVL1959:
.LBB7246:
	.loc 9 76 0
	lis 9,_ZTV7idChain+8@ha
.LBE7246:
.LBB7247:
	la 0,_ZTV7idChain+8@l(9)
	stw 0,0(3)
	b _ZN14idMultiModelAFD2Ev
.LVL1960:
.LBE7247:
	.cfi_endproc
.LFE3324:
	.size	_ZN7idChainD2Ev, .-_ZN7idChainD2Ev
	.section	".text"
	.align 2
	.globl _ZN14idMultiModelAFD0Ev
	.type	_ZN14idMultiModelAFD0Ev, @function
_ZN14idMultiModelAFD0Ev:
.LFB2819:
	.loc 2 60 0
	.cfi_startproc
.LVL1961:
	stwu 1,-16(1)
.LCFI399:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 2 69 0
	.cfi_offset 65, 4
	bl _ZN14idMultiModelAFD1Ev
.LVL1962:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1963:
	mtlr 0
	addi 1,1,16
.LCFI400:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2819:
	.size	_ZN14idMultiModelAFD0Ev, .-_ZN14idMultiModelAFD0Ev
	.section	.text._ZN7idChainD0Ev,"axG",@progbits,_ZN7idChainD5Ev,comdat
	.align 2
	.weak	_ZN7idChainD0Ev
	.type	_ZN7idChainD0Ev, @function
_ZN7idChainD0Ev:
.LFB3326:
	.loc 9 76 0
	.cfi_startproc
.LVL1964:
	mflr 0
	stwu 1,-16(1)
.LCFI401:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB7251:
.LBB7252:
.LBB7253:
	lis 9,_ZTV7idChain+8@ha
.LBE7253:
.LBE7252:
.LBE7251:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL1965:
	stw 0,20(1)
.LBB7256:
.LBB7255:
.LBB7254:
	.loc 9 76 0
	la 0,_ZTV7idChain+8@l(9)
	.cfi_offset 65, 4
	stw 0,0(3)
	bl _ZN14idMultiModelAFD2Ev
.LVL1966:
.LBE7254:
.LBE7255:
.LBE7256:
	mr 3,31
	bl _ZN7idClassdlEPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1967:
	mtlr 0
	addi 1,1,16
.LCFI402:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3326:
	.size	_ZN7idChainD0Ev, .-_ZN7idChainD0Ev
	.section	.text._ZN6idListI10idKeyValueE5ClearEv,"axG",@progbits,_ZN6idListI10idKeyValueE5ClearEv,comdat
	.align 2
	.weak	_ZN6idListI10idKeyValueE5ClearEv
	.type	_ZN6idListI10idKeyValueE5ClearEv, @function
_ZN6idListI10idKeyValueE5ClearEv:
.LFB3277:
	.loc 13 192 0
	.cfi_startproc
.LVL1968:
	mflr 0
	stwu 1,-16(1)
.LCFI403:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 13 193 0
	lwz 3,12(3)
.LVL1969:
	cmpwi 7,3,0
	beq- 7,.L1086
	.cfi_offset 65, 4
	.loc 13 194 0 discriminator 1
	bl _ZdaPv
.L1086:
	.loc 13 197 0
	li 0,0
	stw 0,12(31)
	.loc 13 198 0
	stw 0,0(31)
	.loc 13 199 0
	stw 0,4(31)
	.loc 13 200 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL1970:
	mtlr 0
	addi 1,1,16
.LCFI404:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE3277:
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
.LVL1971:
	mflr 0
	stwu 1,-16(1)
.LCFI405:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	stw 30,8(1)
.LEHB184:
.LBB7285:
	.loc 11 174 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl _ZN6idDict5ClearEv
.LEHE184:
.LVL1972:
.LBB7286:
.LBB7287:
.LBB7288:
	.file 25 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/HashIndex.h"
	.loc 25 130 0
	addi 3,31,16
.LEHB185:
	bl _ZN11idHashIndex4FreeEv
.LEHE185:
.LVL1973:
.LBE7288:
.LBE7287:
.LBE7286:
.LBB7289:
.LBB7290:
.LBB7291:
.LBB7292:
	.loc 13 193 0 discriminator 1
	lwz 3,12(31)
	cmpwi 7,3,0
	beq- 7,.L1089
	.loc 13 194 0
	bl _ZdaPv
.L1089:
	.loc 13 197 0
	li 0,0
	stw 0,12(31)
	.loc 13 198 0
	stw 0,0(31)
	.loc 13 199 0
	stw 0,4(31)
.LBE7292:
.LBE7291:
.LBE7290:
.LBE7289:
.LBE7285:
	.loc 11 175 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL1974:
	addi 1,1,16
	.cfi_remember_state
.LCFI406:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1975:
.L1096:
.LCFI407:
	.cfi_restore_state
	mr 30,3
.LVL1976:
.LBB7299:
.LBB7293:
.LBB7294:
.LBB7295:
	.loc 25 130 0
	addi 3,31,16
	bl _ZN11idHashIndex4FreeEv
.LVL1977:
.L1094:
.LBE7295:
.LBE7294:
.LBE7293:
.LBB7296:
.LBB7297:
.LBB7298:
	.loc 13 181 0
	mr 3,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,30
.LEHB186:
	bl _Unwind_Resume
.LEHE186:
.LVL1978:
.L1097:
	mr 30,3
	b .L1094
.LBE7298:
.LBE7297:
.LBE7296:
.LBE7299:
	.cfi_endproc
.LFE1936:
	.section	.gcc_except_table
.LLSDA1936:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1936-.LLSDACSB1936
.LLSDACSB1936:
	.uleb128 .LEHB184-.LFB1936
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L1096-.LFB1936
	.uleb128 0
	.uleb128 .LEHB185-.LFB1936
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L1097-.LFB1936
	.uleb128 0
	.uleb128 .LEHB186-.LFB1936
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
.LLSDACSE1936:
	.section	.text._ZN6idDictD2Ev,"axG",@progbits,_ZN6idDictD5Ev,comdat
	.size	_ZN6idDictD2Ev, .-_ZN6idDictD2Ev
	.section	".text"
	.align 2
	.globl _ZN10idGameEdit14AF_SpawnEntityEPKc
	.type	_ZN10idGameEdit14AF_SpawnEntityEPKc, @function
_ZN10idGameEdit14AF_SpawnEntityEPKc:
.LFB3014:
	.loc 2 2576 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA3014
.LVL1979:
	mflr 0
	stwu 1,-120(1)
.LCFI408:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
.LVL1980:
.LBB7361:
.LBB7362:
.LBB7363:
.LBB7364:
	.loc 13 159 0
	li 9,16
.LBE7364:
.LBE7363:
.LBB7371:
.LBB7372:
	.loc 25 112 0
	li 5,1024
.LBE7372:
.LBE7371:
.LBE7362:
.LBE7361:
	.loc 2 2576 0
	stw 28,96(1)
.LBB7460:
.LBB7415:
.LBB7376:
.LBB7373:
	.loc 25 112 0
	addi 3,1,60
.LVL1981:
.LBE7373:
.LBE7376:
.LBE7415:
.LBE7460:
	.loc 2 2576 0
	stw 0,124(1)
	mr 28,4
	.cfi_offset 65, 4
	.cfi_offset 28, -24
.LBB7461:
.LBB7416:
.LBB7377:
.LBB7369:
.LBB7365:
.LBB7366:
	.loc 13 197 0
	li 0,0
.LBE7366:
.LBE7365:
.LBE7369:
.LBE7377:
.LBB7378:
.LBB7374:
	.loc 25 112 0
	li 4,1024
.LVL1982:
.LBE7374:
.LBE7378:
.LBE7416:
.LBE7461:
	.loc 2 2576 0
	stfd 31,112(1)
	stw 26,88(1)
	stw 27,92(1)
	stw 29,100(1)
	stw 30,104(1)
	stw 31,108(1)
.LBB7462:
.LBB7417:
.LBB7379:
.LBB7370:
	.loc 13 159 0
	stw 9,52(1)
.LVL1983:
.LBB7368:
.LBB7367:
	.loc 13 197 0
	stw 0,56(1)
	.loc 13 198 0
	stw 0,44(1)
	.loc 13 199 0
	stw 0,48(1)
.LVL1984:
.LEHB187:
.LBE7367:
.LBE7368:
.LBE7370:
.LBE7379:
.LBB7380:
.LBB7375:
	.loc 25 112 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 63, -8
	bl _ZN11idHashIndex4InitEii
.LEHE187:
.LVL1985:
.LBE7375:
.LBE7380:
.LBB7381:
.LBB7382:
	.loc 13 319 0
	lwz 31,56(1)
	.loc 13 317 0
	li 0,16
	stw 0,52(1)
	.loc 13 319 0
	cmpwi 7,31,0
	beq- 7,.L1099
	.loc 13 321 0
	lwz 9,44(1)
	.loc 13 323 0
	lwz 0,48(1)
	.loc 13 321 0
	addi 3,9,15
.LVL1986:
	.loc 13 322 0
	srawi 3,3,4
	addze 3,3
.LVL1987:
	slwi 3,3,4
.LVL1988:
	.loc 13 323 0
	cmpw 7,3,0
	beq- 7,.L1099
.LVL1989:
.LBB7383:
.LBB7384:
	.loc 13 375 0
	cmpwi 7,3,0
	ble- 7,.L1134
.LVL1990:
	.loc 13 387 0
	cmpw 7,9,3
	.loc 13 386 0
	stw 3,48(1)
	.loc 13 387 0
	bgt- 7,.L1135
.L1101:
	.loc 13 392 0
	slwi 3,3,3
.LVL1991:
.LEHB188:
	bl _Znaj
.LVL1992:
	.loc 13 393 0
	lwz 0,44(1)
	.loc 13 392 0
	stw 3,56(1)
.LVL1993:
	.loc 13 393 0
	cmpwi 7,0,0
	ble- 7,.L1102
	.loc 2 2576 0
	addi 8,31,-8
.LBE7384:
.LBE7383:
.LBE7382:
.LBE7381:
.LBE7417:
.LBE7462:
	.loc 13 393 0
	li 9,0
	b .L1103
.LVL1994:
.L1136:
.LBB7463:
.LBB7418:
.LBB7393:
.LBB7391:
.LBB7389:
.LBB7387:
	lwz 3,56(1)
.LVL1995:
.L1103:
	.loc 13 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 13 393 0
	addi 9,9,1
.LVL1996:
	.loc 13 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 13 393 0
	lwz 0,44(1)
	cmpw 7,9,0
	blt+ 7,.L1136
.LVL1997:
.L1102:
	.loc 13 399 0
	mr 3,31
	bl _ZdaPv
.LVL1998:
.L1099:
.LBE7387:
.LBE7389:
.LBE7391:
.LBE7393:
.LBB7394:
.LBB7395:
	.loc 25 371 0
	li 0,16
.LBE7395:
.LBE7394:
.LBB7397:
.LBB7398:
	.loc 25 341 0
	addi 3,1,60
.LVL1999:
.LBE7398:
.LBE7397:
.LBB7403:
.LBB7396:
	.loc 25 371 0
	stw 0,76(1)
.LVL2000:
.LBE7396:
.LBE7403:
.LBB7404:
.LBB7399:
	.loc 25 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE188:
.LVL2001:
.LBE7399:
.LBE7404:
.LBE7418:
	.loc 2 2584 0
	lis 30,gameLocal@ha
.LBB7419:
.LBB7405:
.LBB7400:
	.loc 25 342 0
	li 0,128
.LBE7400:
.LBE7405:
.LBE7419:
	.loc 2 2584 0
	la 30,gameLocal@l(30)
.LBB7420:
.LBB7406:
.LBB7401:
	.loc 25 342 0
	stw 0,60(1)
.LBE7401:
.LBE7406:
.LBE7420:
	.loc 2 2584 0
	mr 3,30
.LBB7421:
.LBB7407:
.LBB7402:
	.loc 25 343 0
	li 0,16
	stw 0,68(1)
	addi 31,1,44
.LEHB189:
.LBE7402:
.LBE7407:
.LBE7421:
	.loc 2 2584 0
	bl _ZNK11idGameLocal14GetLocalPlayerEv
.LVL2002:
	.loc 2 2585 0
	mr. 29,3
	beq- 0,.L1124
	.loc 2 2585 0 is_stmt 0 discriminator 2
	mr 3,30
.LVL2003:
	li 4,0
	addi 31,1,44
	bl _ZN11idGameLocal8CheatsOkEb
	cmpwi 7,3,0
	beq- 7,.L1124
	.loc 2 2589 0 is_stmt 1
	lis 9,declManager@ha
	li 4,8
	lwz 3,declManager@l(9)
	mr 5,28
	li 6,1
	li 7,0
	lwz 9,0(3)
	addi 31,1,44
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL2004:
	.loc 2 2590 0
	mr. 26,3
	beq- 0,.L1124
	.loc 2 2595 0
	lis 9,.LC140@ha
	.loc 2 2594 0
	lfs 31,4648(29)
.LVL2005:
	.loc 2 2595 0
	lfs 1,.LC140@l(9)
	lis 3,.LC77@ha
.LVL2006:
	la 3,.LC77@l(3)
	addi 31,1,44
	fadds 1,31,1
	creqv 6,6,6
	bl _Z2vaPKcz
.LVL2007:
	addi 31,1,44
	lis 4,.LC141@ha
	mr 5,3
	la 4,.LC141@l(4)
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
	.loc 2 2596 0
	mr 3,29
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
.LBB7422:
.LBB7423:
	.file 26 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Angles.h"
	.loc 26 109 0 discriminator 1
	li 0,0
.LBE7423:
.LBE7422:
	.loc 2 2596 0 discriminator 1
	mr 27,3
.LVL2008:
	addi 4,1,20
	addi 3,1,8
.LBB7425:
.LBB7424:
	.loc 26 109 0 discriminator 1
	stw 0,20(1)
	.loc 26 110 0 discriminator 1
	stfs 31,24(1)
	.loc 26 111 0 discriminator 1
	stw 0,28(1)
.LBE7424:
.LBE7425:
	.loc 2 2596 0 discriminator 1
	bl _ZNK8idAngles9ToForwardEv
.LVL2009:
.LBB7426:
.LBB7427:
	.loc 3 452 0
	lis 9,.LC60@ha
	lfs 11,4(27)
	lfs 0,.LC60@l(9)
	lis 9,.LC49@ha
	lfs 10,12(1)
.LBE7427:
.LBE7426:
	.loc 2 2597 0
	addi 3,1,32
.LBB7430:
.LBB7428:
	.loc 3 452 0
	lfs 12,8(27)
.LBE7428:
.LBE7430:
	.loc 2 2597 0
	li 4,2
.LBB7431:
.LBB7429:
	.loc 3 452 0
	fmadds 11,10,0,11
	lfs 10,16(1)
	lfs 13,0(27)
	fmadds 12,10,0,12
	lfs 10,8(1)
	fmadds 0,10,0,13
	lfs 13,.LC49@l(9)
	lis 9,.LC0@ha
	lfs 10,.LC0@l(9)
	fadds 11,11,13
	fadds 13,0,13
	fadds 12,12,10
.LVL2010:
.LBE7429:
.LBE7431:
.LBB7432:
.LBB7433:
	.loc 3 425 0
	stfs 11,36(1)
	.loc 3 424 0
	stfs 13,32(1)
	.loc 3 426 0
	stfs 12,40(1)
.LBE7433:
.LBE7432:
	.loc 2 2597 0
	bl _ZNK6idVec38ToStringEi
.LVL2011:
	lis 4,.LC138@ha
	mr 5,3
	la 4,.LC138@l(4)
	mr 3,31
	bl _ZN6idDict3SetEPKcS1_
	.loc 2 2598 0
	lis 4,.LC142@ha
	lis 5,.LC21@ha
	mr 3,31
	la 4,.LC142@l(4)
	la 5,.LC21@l(5)
	bl _ZN6idDict3SetEPKcS1_
	.loc 2 2927 0
	lwz 5,16(26)
.LVL2012:
	.loc 2 2600 0
	lis 4,.LC69@ha
	mr 3,31
	la 4,.LC69@l(4)
	.loc 2 2599 0
	lbz 0,0(5)
	cmpwi 7,0,0
	bne- 7,.L1133
	.loc 2 2602 0
	mr 5,28
.L1133:
	bl _ZN6idDict3SetEPKcS1_
	.loc 2 2927 0
	lwz 5,48(26)
.LVL2013:
	.loc 2 2604 0
	lbz 0,0(5)
	cmpwi 7,0,0
	beq- 7,.L1114
	.loc 2 2605 0
	lis 4,.LC143@ha
	mr 3,31
	la 4,.LC143@l(4)
	bl _ZN6idDict3SetEPKcS1_
.L1114:
	.loc 2 2607 0
	lis 4,.LC32@ha
	mr 3,31
	la 4,.LC32@l(4)
	mr 5,28
	bl _ZN6idDict3SetEPKcS1_
	.loc 2 2608 0
	lis 4,.LC106@ha
	lis 5,.LC144@ha
	mr 3,31
	la 4,.LC106@l(4)
	la 5,.LC144@l(5)
	bl _ZN6idDict3SetEPKcS1_
	.loc 2 2609 0
	lis 4,.LANCHOR0@ha
	mr 3,30
	la 4,.LANCHOR0@l(4)
	mr 5,31
	addi 4,4,400
	li 6,0
	bl _ZN11idGameLocal15SpawnEntityTypeERK10idTypeInfoPK6idDictb
	.loc 2 2612 0
	li 4,1
	.loc 2 2609 0
	mr 30,3
.LVL2014:
	.loc 2 2612 0
	bl _ZN8idEntity12BecomeActiveEi
.LVL2015:
	.loc 2 2614 0
	lwz 0,192(30)
	li 9,1
.LBB7434:
.LBB7435:
	.loc 9 259 0
	stb 9,2257(30)
.LBE7435:
.LBE7434:
	.loc 2 2616 0
	addi 3,29,5368
	.loc 2 2614 0
	rlwimi 0,9,25,6,6
	.loc 2 2616 0
	mr 4,30
	.loc 2 2614 0
	stw 0,192(30)
	.loc 2 2616 0
	bl _ZN12idDragEntity11SetSelectedEP8idEntity
.LEHE189:
	.loc 2 2618 0
	li 30,1
.LVL2016:
	b .L1111
.LVL2017:
.L1124:
	.loc 2 2591 0
	li 30,0
	addi 31,1,44
.L1111:
.LVL2018:
.LBB7436:
.LBB7437:
.LBB7438:
	.loc 11 174 0
	mr 3,31
.LEHB190:
	bl _ZN6idDict5ClearEv
.LEHE190:
.LVL2019:
.LBB7439:
.LBB7440:
.LBB7441:
	.loc 25 130 0
	addi 3,1,60
.LVL2020:
.LEHB191:
	bl _ZN11idHashIndex4FreeEv
.LEHE191:
.LVL2021:
.LBE7441:
.LBE7440:
.LBE7439:
.LBB7442:
.LBB7443:
.LBB7444:
.LBB7445:
	.loc 13 193 0
	lwz 3,56(1)
	cmpwi 7,3,0
	beq- 7,.L1121
	.loc 13 194 0
	bl _ZdaPv
.L1121:
.LBE7445:
.LBE7444:
.LBE7443:
.LBE7442:
.LBE7438:
.LBE7437:
.LBE7436:
.LBE7463:
	.loc 2 2619 0
	lwz 0,124(1)
	mr 3,30
	lwz 26,88(1)
	mtlr 0
	lwz 27,92(1)
	lwz 28,96(1)
.LVL2022:
	lwz 29,100(1)
.LVL2023:
	lwz 30,104(1)
	lwz 31,108(1)
	lfd 31,112(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI409:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL2024:
.L1135:
.LCFI410:
	.cfi_restore_state
.LBB7464:
.LBB7456:
.LBB7408:
.LBB7392:
.LBB7390:
.LBB7388:
	.loc 13 388 0
	stw 3,44(1)
	b .L1101
.LVL2025:
.L1134:
.LBB7385:
.LBB7386:
	.loc 13 194 0
	mr 3,31
.LVL2026:
	bl _ZdaPv
	.loc 13 197 0
	li 0,0
	stw 0,56(1)
	.loc 13 198 0
	stw 0,44(1)
	.loc 13 199 0
	stw 0,48(1)
	b .L1099
.LVL2027:
.L1128:
	mr 30,3
.LVL2028:
.L1119:
.LBE7386:
.LBE7385:
.LBE7388:
.LBE7390:
.LBE7392:
.LBE7408:
.LBE7456:
.LBB7457:
.LBB7454:
.LBB7452:
.LBB7446:
.LBB7447:
.LBB7448:
	.loc 13 181 0
	mr 3,31
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,30
.LEHB192:
	bl _Unwind_Resume
.LEHE192:
.LVL2029:
.L1127:
	mr 31,3
.LVL2030:
.LBE7448:
.LBE7447:
.LBE7446:
.LBE7452:
.LBE7454:
.LBE7457:
.LBB7458:
.LBB7409:
.LBB7410:
.LBB7411:
	.loc 25 130 0
	addi 3,1,60
.LVL2031:
	bl _ZN11idHashIndex4FreeEv
.LVL2032:
.L1107:
.LBE7411:
.LBE7410:
.LBE7409:
.LBB7412:
.LBB7413:
.LBB7414:
	.loc 13 181 0
	addi 3,1,44
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB193:
	bl _Unwind_Resume
.LEHE193:
.LVL2033:
.L1125:
	mr 30,3
.LBE7414:
.LBE7413:
.LBE7412:
.LBE7458:
	.loc 2 2618 0
	mr 3,31
	bl _ZN6idDictD1Ev
	mr 3,30
.LEHB194:
	bl _Unwind_Resume
.LEHE194:
.LVL2034:
.L1126:
	mr 31,3
	b .L1107
.LVL2035:
.L1129:
	mr 30,3
.LVL2036:
.LBB7459:
.LBB7455:
.LBB7453:
.LBB7449:
.LBB7450:
.LBB7451:
	.loc 25 130 0
	addi 3,1,60
.LVL2037:
	bl _ZN11idHashIndex4FreeEv
.LVL2038:
	b .L1119
.LBE7451:
.LBE7450:
.LBE7449:
.LBE7453:
.LBE7455:
.LBE7459:
.LBE7464:
	.cfi_endproc
.LFE3014:
	.section	.gcc_except_table
.LLSDA3014:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3014-.LLSDACSB3014
.LLSDACSB3014:
	.uleb128 .LEHB187-.LFB3014
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L1126-.LFB3014
	.uleb128 0
	.uleb128 .LEHB188-.LFB3014
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L1127-.LFB3014
	.uleb128 0
	.uleb128 .LEHB189-.LFB3014
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L1125-.LFB3014
	.uleb128 0
	.uleb128 .LEHB190-.LFB3014
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L1129-.LFB3014
	.uleb128 0
	.uleb128 .LEHB191-.LFB3014
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L1128-.LFB3014
	.uleb128 0
	.uleb128 .LEHB192-.LFB3014
	.uleb128 .LEHE192-.LEHB192
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB193-.LFB3014
	.uleb128 .LEHE193-.LEHB193
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB194-.LFB3014
	.uleb128 .LEHE194-.LEHB194
	.uleb128 0
	.uleb128 0
.LLSDACSE3014:
	.section	".text"
	.size	_ZN10idGameEdit14AF_SpawnEntityEPKc, .-_ZN10idGameEdit14AF_SpawnEntityEPKc
	.align 2
	.globl _ZN15idAFEntity_Base7DropAFsEP8idEntityPKcP6idListIS1_E
	.type	_ZN15idAFEntity_Base7DropAFsEP8idEntityPKcP6idListIS1_E, @function
_ZN15idAFEntity_Base7DropAFsEP8idEntityPKcP6idListIS1_E:
.LFB2893:
	.loc 2 902 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2893
.LVL2039:
	mflr 0
	stwu 1,-128(1)
.LCFI411:
	.cfi_def_cfa_offset 128
	.cfi_register 65, 0
.LVL2040:
	mfcr 12
.LBB7531:
.LBB7532:
.LBB7533:
.LBB7534:
	.loc 13 159 0
	li 9,16
.LBE7534:
.LBE7533:
.LBE7532:
.LBE7531:
	.loc 2 902 0
	stw 20,80(1)
	mr 20,4
	.cfi_offset 20, -48
	.cfi_register 70, 12
	stw 0,132(1)
.LBB7672:
.LBB7589:
.LBB7541:
.LBB7542:
	.loc 25 112 0
	li 4,1024
.LVL2041:
.LBE7542:
.LBE7541:
.LBB7545:
.LBB7539:
.LBB7535:
.LBB7536:
	.loc 13 197 0
	li 0,0
	.cfi_offset 65, 4
.LBE7536:
.LBE7535:
.LBE7539:
.LBE7545:
.LBE7589:
.LBE7672:
	.loc 2 902 0
	stw 27,108(1)
	stw 31,124(1)
	mr 27,3
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	mr 31,5
.LBB7673:
.LBB7590:
.LBB7546:
.LBB7543:
	.loc 25 112 0
	addi 3,1,28
.LVL2042:
	li 5,1024
.LVL2043:
.LBE7543:
.LBE7546:
.LBE7590:
.LBE7673:
	.loc 2 902 0
	stw 17,68(1)
	stw 18,72(1)
	stw 19,76(1)
	stw 21,84(1)
	stw 22,88(1)
	stw 23,92(1)
	stw 24,96(1)
	stw 25,100(1)
	stw 26,104(1)
	stw 28,112(1)
	stw 29,116(1)
	stw 30,120(1)
	stw 12,64(1)
.LBB7674:
.LBB7591:
.LBB7547:
.LBB7540:
	.loc 13 159 0
	stw 9,20(1)
.LVL2044:
.LBB7538:
.LBB7537:
	.loc 13 197 0
	stw 0,24(1)
	.loc 13 198 0
	stw 0,12(1)
	.loc 13 199 0
	stw 0,16(1)
.LVL2045:
.LEHB195:
.LBE7537:
.LBE7538:
.LBE7540:
.LBE7547:
.LBB7548:
.LBB7544:
	.loc 25 112 0
	.cfi_offset 70, -64
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	bl _ZN11idHashIndex4InitEii
.LEHE195:
.LVL2046:
.LBE7544:
.LBE7548:
.LBB7549:
.LBB7550:
	.loc 13 319 0
	lwz 30,24(1)
	.loc 13 317 0
	li 0,16
	stw 0,20(1)
	.loc 13 319 0
	cmpwi 7,30,0
	beq- 7,.L1138
	.loc 13 321 0
	lwz 9,12(1)
	.loc 13 323 0
	lwz 0,16(1)
	.loc 13 321 0
	addi 3,9,15
.LVL2047:
	.loc 13 322 0
	srawi 3,3,4
	addze 3,3
.LVL2048:
	slwi 3,3,4
.LVL2049:
	.loc 13 323 0
	cmpw 7,3,0
	beq- 7,.L1138
.LVL2050:
.LBB7551:
.LBB7552:
	.loc 13 375 0
	cmpwi 7,3,0
	ble- 7,.L1193
.LVL2051:
	.loc 13 387 0
	cmpw 7,9,3
	.loc 13 386 0
	stw 3,16(1)
	.loc 13 387 0
	bgt- 7,.L1194
.L1140:
	.loc 13 392 0
	slwi 3,3,3
.LVL2052:
.LEHB196:
	bl _Znaj
.LVL2053:
	.loc 13 393 0
	lwz 0,12(1)
	.loc 13 392 0
	stw 3,24(1)
.LVL2054:
	.loc 13 393 0
	cmpwi 7,0,0
	ble- 7,.L1141
	.loc 2 902 0
	addi 8,30,-8
.LBE7552:
.LBE7551:
.LBE7550:
.LBE7549:
.LBE7591:
.LBE7674:
	.loc 13 393 0
	li 9,0
	b .L1142
.LVL2055:
.L1195:
.LBB7675:
.LBB7592:
.LBB7564:
.LBB7561:
.LBB7558:
.LBB7555:
	lwz 3,24(1)
.LVL2056:
.L1142:
	.loc 13 394 0
	addi 8,8,8
	slwi 0,9,3
	lwz 10,0(8)
	add 3,3,0
	lwz 11,4(8)
	.loc 13 393 0
	addi 9,9,1
.LVL2057:
	.loc 13 394 0
	stw 10,0(3)
	stw 11,4(3)
	.loc 13 393 0
	lwz 0,12(1)
	cmpw 7,9,0
	blt+ 7,.L1195
.LVL2058:
.L1141:
	.loc 13 399 0
	mr 3,30
	bl _ZdaPv
.LVL2059:
.L1138:
.LBE7555:
.LBE7558:
.LBE7561:
.LBE7564:
.LBB7565:
.LBB7566:
	.loc 25 371 0
	li 0,16
.LBE7566:
.LBE7565:
.LBB7568:
.LBB7569:
	.loc 25 341 0
	addi 3,1,28
.LVL2060:
.LBE7569:
.LBE7568:
.LBB7575:
.LBB7567:
	.loc 25 371 0
	stw 0,44(1)
.LVL2061:
.LBE7567:
.LBE7575:
.LBB7576:
.LBB7570:
	.loc 25 341 0
	bl _ZN11idHashIndex4FreeEv
.LEHE196:
.LVL2062:
.LBE7570:
.LBE7576:
.LBE7592:
	.loc 2 911 0
	lis 23,.LC145@ha
.LBB7593:
.LBB7577:
.LBB7571:
	.loc 25 342 0
	li 0,128
.LBE7571:
.LBE7577:
.LBE7593:
	.loc 2 911 0
	la 23,.LC145@l(23)
.LBB7594:
.LBB7578:
.LBB7572:
	.loc 25 342 0
	stw 0,28(1)
.LBE7572:
.LBE7578:
.LBE7594:
	.loc 2 911 0
	mr 3,23
.LBB7595:
.LBB7579:
.LBB7573:
	.loc 25 343 0
	li 0,16
.LBE7573:
.LBE7579:
.LBE7595:
	.loc 2 911 0
	mr 4,20
.LBB7596:
.LBB7580:
.LBB7574:
	.loc 25 343 0
	stw 0,36(1)
	addi 29,1,12
.LEHB197:
.LBE7574:
.LBE7580:
.LBE7596:
	.loc 2 911 0
	crxor 6,6,6
	bl _Z2vaPKcz
	addi 25,27,100
	mr 4,3
	li 5,0
	mr 3,25
	addi 29,1,12
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL2063:
	.loc 2 912 0 discriminator 1
	mr. 30,3
	addi 29,1,12
	beq- 0,.L1148
	.loc 2 915 0
	lis 22,gameLocal@ha
	lis 21,.LC135@ha
	la 22,gameLocal@l(22)
.LBB7597:
	.loc 2 917 0
	lis 19,.LANCHOR0@ha
.LBE7597:
	.loc 2 922 0
	cmpwi 4,31,0
	addi 29,1,12
	la 21,.LC135@l(21)
.LBB7602:
	.loc 2 917 0
	la 19,.LANCHOR0@l(19)
.LBE7602:
	.loc 2 921 0
	addis 18,22,0x25
.LBB7603:
.LBB7604:
.LBB7605:
.LBB7606:
	.loc 13 663 0
	li 17,16
	b .L1168
.LVL2064:
.L1192:
.LBB7607:
.LBB7608:
	.loc 13 399 0
	slwi 0,0,2
	add 26,26,0
.L1159:
.LBE7608:
.LBE7607:
.LBE7606:
.LBE7605:
	.loc 13 669 0
	stw 28,0(26)
	.loc 13 670 0
	lwz 9,0(31)
	addi 0,9,1
	stw 0,0(31)
.LVL2065:
.L1150:
.LBE7604:
.LBE7603:
	.loc 2 927 0
	mr 3,23
	mr 4,20
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,3
	mr 5,30
	mr 3,25
	bl _ZNK6idDict11MatchPrefixEPKcPK10idKeyValue
.LVL2066:
	.loc 2 912 0 discriminator 1
	mr. 30,3
	beq- 0,.L1148
.LVL2067:
.L1168:
.LBB7639:
	.loc 2 2927 0
	lwz 9,4(30)
.LBE7639:
	.loc 2 914 0
	mr 3,29
.LVL2068:
	mr 4,21
	lwz 5,4(9)
	bl _ZN6idDict3SetEPKcS1_
.LVL2069:
	.loc 2 915 0
	mr 3,22
	mr 4,29
	addi 5,1,8
	li 6,1
	bl _ZN11idGameLocal14SpawnEntityDefERK6idDictPP8idEntityb
	.loc 2 917 0
	lwz 3,8(1)
	cmpwi 7,3,0
	beq- 7,.L1150
.LVL2070:
.LBB7640:
.LBB7598:
	.loc 23 340 0 discriminator 1
	lwz 9,0(3)
	lwz 0,0(9)
	mtctr 0
	bctrl
.LVL2071:
.LBE7598:
	.loc 2 2927 0 discriminator 1
	lwz 0,56(3)
.LBB7601:
.LBB7599:
.LBB7600:
	.loc 23 311 0 discriminator 1
	lwz 11,296(19)
	cmpw 7,0,11
	blt- 7,.L1150
	.loc 23 311 0 is_stmt 0
	lwz 9,300(19)
	cmpw 7,0,9
	bgt- 7,.L1150
.LBE7600:
.LBE7599:
.LBE7601:
.LBE7640:
	.loc 2 918 0 is_stmt 1 discriminator 4
	lwz 28,8(1)
.LVL2072:
	.loc 2 919 0 discriminator 4
	mr 3,28
.LVL2073:
	bl _ZNK8idEntity10GetPhysicsEv
.LVL2074:
	lwz 9,0(3)
	mr 26,3
	mr 3,27
	lwz 9,116(9)
	stw 9,56(1)
	bl _ZNK8idEntity10GetPhysicsEv
	.loc 2 919 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	li 4,0
	lwz 0,132(9)
	mtctr 0
	bctrl
	lwz 0,56(1)
	mr 4,3
	li 5,-1
	mr 3,26
	mtctr 0
	bctrl
	.loc 2 920 0 is_stmt 1
	mr 3,28
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	mr 26,3
	mr 3,27
	lwz 24,120(9)
	bl _ZNK8idEntity10GetPhysicsEv
	.loc 2 920 0 is_stmt 0 discriminator 1
	lwz 9,0(3)
	li 4,0
	lwz 0,136(9)
	mtctr 0
	bctrl
	mr 4,3
	li 5,-1
	mr 3,26
	mtctr 24
	bctrl
	.loc 2 921 0 is_stmt 1
	lwz 5,2004(18)
	addi 3,28,1624
	mr 4,27
	bl _ZN4idAF9SetupPoseEP8idEntityi
	.loc 2 922 0
	beq- 4,.L1150
.LVL2075:
.LBB7641:
.LBB7635:
	.loc 13 655 0
	lwz 26,12(31)
	cmpwi 7,26,0
	beq- 7,.L1151
	lwz 0,0(31)
	lwz 9,4(31)
.L1152:
.LBB7622:
	.loc 13 659 0
	cmpw 7,0,9
	bne+ 7,.L1192
	lwz 3,8(31)
	mr 10,0
.L1154:
.LBB7619:
	.loc 13 662 0
	cmpwi 7,3,0
	mr 9,3
	bne- 7,.L1160
	.loc 13 663 0
	stw 17,8(31)
	li 9,16
.L1160:
	.loc 13 665 0
	add 11,10,9
.LVL2076:
	.loc 13 666 0
	divw 11,11,9
.LVL2077:
.LBB7615:
.LBB7611:
	.loc 13 375 0
	mullw. 9,11,9
.LVL2078:
	ble- 0,.L1196
	.loc 13 380 0
	cmpw 7,10,9
	beq- 7,.L1192
.LVL2079:
	.loc 13 387 0
	cmpw 7,9,0
	.loc 13 386 0
	stw 9,4(31)
	.loc 13 387 0
	bge- 7,.L1164
	.loc 13 388 0
	stw 9,0(31)
.L1164:
	.loc 13 392 0
	slwi 3,9,2
	bl _Znaj
.LVL2080:
	.loc 13 393 0
	lwz 0,0(31)
	.loc 13 392 0
	stw 3,12(31)
.LVL2081:
	.loc 13 393 0
	cmpwi 7,0,0
	ble- 7,.L1165
	.loc 2 902 0
	addi 11,26,-4
.LBE7611:
.LBE7615:
	.loc 13 393 0
	li 9,0
	b .L1166
.LVL2082:
.L1197:
.LBB7616:
.LBB7612:
	lwz 3,12(31)
.LVL2083:
.L1166:
	.loc 13 394 0
	lwzu 10,4(11)
	slwi 0,9,2
	.loc 13 393 0
	addi 9,9,1
.LVL2084:
	.loc 13 394 0
	stwx 10,3,0
	.loc 13 393 0
	lwz 0,0(31)
	cmpw 7,9,0
	blt+ 7,.L1197
.LVL2085:
.L1165:
	.loc 13 398 0
	cmpwi 7,26,0
	beq- 7,.L1198
	.loc 13 399 0
	mr 3,26
	bl _ZdaPv
	lwz 0,0(31)
	lwz 26,12(31)
.LVL2086:
	b .L1192
.L1151:
.LBE7612:
.LBE7616:
.LBE7619:
.LBE7622:
	.loc 13 656 0
	lwz 3,8(31)
.LBB7623:
.LBB7624:
	.loc 13 375 0
	cmpwi 7,3,0
.LBE7624:
.LBE7623:
	.loc 13 656 0
	mr 9,3
.LVL2087:
.LBB7630:
.LBB7627:
	.loc 13 375 0
	ble- 7,.L1199
	.loc 13 380 0
	lwz 0,4(31)
	cmpw 7,3,0
	lwz 0,0(31)
	beq- 7,.L1152
.LVL2088:
	.loc 13 387 0
	cmpw 7,3,0
	.loc 13 386 0
	stw 3,4(31)
	.loc 13 387 0
	bge- 7,.L1156
	.loc 13 388 0
	stw 3,0(31)
.L1156:
	.loc 13 392 0
	slwi 3,3,2
	bl _Znaj
.LVL2089:
	.loc 13 393 0
	lwz 0,0(31)
	.loc 13 392 0
	mr 26,3
	stw 3,12(31)
.LVL2090:
	.loc 13 393 0
	li 9,0
	cmpwi 7,0,0
	li 11,0
	bgt+ 7,.L1189
	b .L1202
.LVL2091:
.L1201:
	lwz 26,12(31)
.LVL2092:
.L1189:
	.loc 13 394 0
	lwz 0,0(9)
	.loc 13 393 0
	addi 11,11,1
.LVL2093:
	.loc 13 394 0
	stwx 0,26,9
	.loc 13 393 0
	addi 9,9,4
	lwz 0,0(31)
	cmpw 7,11,0
	blt+ 7,.L1201
	lwz 9,4(31)
	lwz 26,12(31)
	b .L1152
.LVL2094:
.L1148:
.LBE7627:
.LBE7630:
.LBE7635:
.LBE7641:
	.loc 2 931 0
	lis 3,.LC146@ha
.LVL2095:
	mr 4,20
	la 3,.LC146@l(3)
	crxor 6,6,6
	bl _Z2vaPKcz
	mr 4,3
.LVL2096:
.LBB7642:
.LBB7643:
	.loc 11 241 0
	mr 3,25
.LVL2097:
	bl _ZNK6idDict7FindKeyEPKc
.LVL2098:
	.loc 11 242 0
	cmpwi 0,3,0
	beq- 0,.L1181
.LVL2099:
.LBB7644:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 4,4(9)
.LVL2100:
.L1169:
.LBE7644:
.LBE7643:
.LBE7642:
	.loc 2 932 0
	lbz 0,0(4)
	cmpwi 7,0,0
	beq- 7,.L1170
	.loc 2 933 0
	lis 9,declManager@ha
	li 5,1
	lwz 3,declManager@l(9)
.LVL2101:
	lwz 9,0(3)
	lwz 0,108(9)
	mtctr 0
	bctrl
	mr 4,3
.LVL2102:
	.loc 2 934 0
	mr 3,27
.LVL2103:
	bl _ZN8idEntity7SetSkinEPK10idDeclSkin
.LEHE197:
.LVL2104:
.L1170:
.LBB7646:
.LBB7647:
.LBB7648:
	.loc 11 174 0
	mr 3,29
.LEHB198:
	bl _ZN6idDict5ClearEv
.LEHE198:
.LVL2105:
.LBB7649:
.LBB7650:
.LBB7651:
	.loc 25 130 0
	addi 3,1,28
.LVL2106:
.LEHB199:
	bl _ZN11idHashIndex4FreeEv
.LEHE199:
.LVL2107:
.LBE7651:
.LBE7650:
.LBE7649:
.LBB7652:
.LBB7653:
.LBB7654:
.LBB7655:
	.loc 13 193 0
	lwz 3,24(1)
	cmpwi 7,3,0
	beq- 7,.L1137
	.loc 13 194 0
	bl _ZdaPv
.L1137:
.LBE7655:
.LBE7654:
.LBE7653:
.LBE7652:
.LBE7648:
.LBE7647:
.LBE7646:
.LBE7675:
	.loc 2 936 0
	lwz 0,132(1)
	lwz 12,64(1)
	mtlr 0
	lwz 17,68(1)
	lwz 18,72(1)
	mtcrf 8,12
	lwz 19,76(1)
	lwz 20,80(1)
.LVL2108:
	lwz 21,84(1)
	lwz 22,88(1)
	lwz 23,92(1)
	lwz 24,96(1)
	lwz 25,100(1)
	lwz 26,104(1)
	lwz 27,108(1)
.LVL2109:
	lwz 28,112(1)
	lwz 29,116(1)
	lwz 30,120(1)
.LVL2110:
	lwz 31,124(1)
.LVL2111:
	addi 1,1,128
	.cfi_remember_state
.LCFI412:
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
.LVL2112:
.L1196:
.LCFI413:
	.cfi_restore_state
.LBB7676:
.LBB7664:
.LBB7636:
.LBB7631:
.LBB7620:
.LBB7617:
.LBB7613:
.LBB7609:
.LBB7610:
	.loc 13 193 0
	cmpwi 7,26,0
	beq- 7,.L1162
	.loc 13 194 0
	mr 3,26
	bl _ZdaPv
.LVL2113:
.L1162:
	.loc 13 197 0
	li 0,0
	.loc 13 199 0
	li 26,0
	.loc 13 197 0
	stw 0,12(31)
	.loc 13 198 0
	stw 0,0(31)
	.loc 13 199 0
	stw 0,4(31)
	b .L1159
.LVL2114:
.L1194:
.LBE7610:
.LBE7609:
.LBE7613:
.LBE7617:
.LBE7620:
.LBE7631:
.LBE7636:
.LBE7664:
.LBB7665:
.LBB7581:
.LBB7562:
.LBB7559:
.LBB7556:
	.loc 13 388 0
	stw 3,12(1)
	b .L1140
.LVL2115:
.L1198:
.LBE7556:
.LBE7559:
.LBE7562:
.LBE7581:
.LBE7665:
.LBB7666:
.LBB7637:
.LBB7632:
.LBB7621:
.LBB7618:
.LBB7614:
	.loc 13 398 0
	lwz 26,12(31)
.LVL2116:
	slwi 0,0,2
	add 26,26,0
	b .L1159
.LVL2117:
.L1199:
.LBE7614:
.LBE7618:
.LBE7621:
.LBE7632:
.LBB7633:
.LBB7628:
.LBB7625:
.LBB7626:
	.loc 13 198 0
	stw 26,0(31)
	.loc 13 199 0
	li 10,0
	stw 26,4(31)
	li 0,0
	b .L1154
.LVL2118:
.L1181:
.LBE7626:
.LBE7625:
.LBE7628:
.LBE7633:
.LBE7637:
.LBE7666:
.LBB7667:
.LBB7645:
	.loc 11 245 0
	lis 4,.LC35@ha
	la 4,.LC35@l(4)
	b .L1169
.LVL2119:
.L1202:
.LBE7645:
.LBE7667:
.LBB7668:
.LBB7638:
.LBB7634:
.LBB7629:
	.loc 13 393 0
	lwz 9,4(31)
	b .L1152
.LVL2120:
.L1193:
.LBE7629:
.LBE7634:
.LBE7638:
.LBE7668:
.LBB7669:
.LBB7582:
.LBB7563:
.LBB7560:
.LBB7557:
.LBB7553:
.LBB7554:
	.loc 13 194 0
	mr 3,30
.LVL2121:
	bl _ZdaPv
	.loc 13 197 0
	li 0,0
	stw 0,24(1)
	.loc 13 198 0
	stw 0,12(1)
	.loc 13 199 0
	stw 0,16(1)
	b .L1138
.LVL2122:
.L1183:
	mr 31,3
.LVL2123:
.L1146:
.LBE7554:
.LBE7553:
.LBE7557:
.LBE7560:
.LBE7563:
.LBE7582:
.LBB7583:
.LBB7584:
.LBB7585:
	.loc 13 181 0
	addi 3,1,12
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
.LEHB200:
	bl _Unwind_Resume
.LVL2124:
.L1185:
	mr 31,3
.LVL2125:
.L1175:
.LBE7585:
.LBE7584:
.LBE7583:
.LBE7669:
.LBB7670:
.LBB7663:
.LBB7662:
.LBB7656:
.LBB7657:
.LBB7658:
	mr 3,29
	bl _ZN6idListI10idKeyValueE5ClearEv
	mr 3,31
	bl _Unwind_Resume
.LEHE200:
.LVL2126:
.L1186:
	mr 31,3
.LVL2127:
.LBE7658:
.LBE7657:
.LBE7656:
.LBB7659:
.LBB7660:
.LBB7661:
	.loc 25 130 0
	addi 3,1,28
.LVL2128:
	bl _ZN11idHashIndex4FreeEv
.LVL2129:
	b .L1175
.LVL2130:
.L1182:
	mr 31,3
.LVL2131:
.LBE7661:
.LBE7660:
.LBE7659:
.LBE7662:
.LBE7663:
.LBE7670:
	.loc 2 935 0
	mr 3,29
	bl _ZN6idDictD1Ev
	mr 3,31
.LEHB201:
	bl _Unwind_Resume
.LEHE201:
.LVL2132:
.L1184:
	mr 31,3
.LVL2133:
.LBB7671:
.LBB7586:
.LBB7587:
.LBB7588:
	.loc 25 130 0
	addi 3,1,28
.LVL2134:
	bl _ZN11idHashIndex4FreeEv
.LVL2135:
	b .L1146
.LBE7588:
.LBE7587:
.LBE7586:
.LBE7671:
.LBE7676:
	.cfi_endproc
.LFE2893:
	.section	.gcc_except_table
.LLSDA2893:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2893-.LLSDACSB2893
.LLSDACSB2893:
	.uleb128 .LEHB195-.LFB2893
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L1183-.LFB2893
	.uleb128 0
	.uleb128 .LEHB196-.LFB2893
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L1184-.LFB2893
	.uleb128 0
	.uleb128 .LEHB197-.LFB2893
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L1182-.LFB2893
	.uleb128 0
	.uleb128 .LEHB198-.LFB2893
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L1186-.LFB2893
	.uleb128 0
	.uleb128 .LEHB199-.LFB2893
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L1185-.LFB2893
	.uleb128 0
	.uleb128 .LEHB200-.LFB2893
	.uleb128 .LEHE200-.LEHB200
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB201-.LFB2893
	.uleb128 .LEHE201-.LEHB201
	.uleb128 0
	.uleb128 0
.LLSDACSE2893:
	.section	".text"
	.size	_ZN15idAFEntity_Base7DropAFsEP8idEntityPKcP6idListIS1_E, .-_ZN15idAFEntity_Base7DropAFsEP8idEntityPKcP6idListIS1_E
	.align 2
	.globl _ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc
	.type	_ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc, @function
_ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc:
.LFB2914:
	.loc 2 1116 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2914
.LVL2136:
	stwu 1,-216(1)
.LCFI414:
	.cfi_def_cfa_offset 216
.LVL2137:
	mflr 0
	mfcr 12
.LBB7762:
.LBB7763:
.LBB7764:
	.loc 13 159 0
	li 9,16
.LBE7764:
.LBE7763:
.LBE7762:
	.loc 2 1116 0
	stw 28,104(1)
.LBB7858:
	.loc 2 1124 0
	lis 28,gameLocal@ha
	.cfi_offset 28, -112
	.cfi_register 70, 12
	.cfi_register 65, 0
	la 28,gameLocal@l(28)
.LBE7858:
	.loc 2 1116 0
	stw 0,220(1)
	stw 29,108(1)
.LBB7859:
.LBB7771:
.LBB7769:
.LBB7765:
.LBB7766:
	.loc 13 197 0
	li 0,0
	.cfi_offset 29, -108
	.cfi_offset 65, 4
.LBE7766:
.LBE7765:
.LBE7769:
.LBE7771:
.LBE7859:
	.loc 2 1116 0
	stw 30,112(1)
	mr 29,4
	stw 31,116(1)
	mr 30,5
	.cfi_offset 31, -100
	.cfi_offset 30, -104
	mr 31,3
.LBB7860:
	.loc 2 1124 0
	mr 4,5
.LVL2138:
	mr 3,28
.LVL2139:
	li 5,1
.LVL2140:
.LBE7860:
	.loc 2 1116 0
	stfd 20,120(1)
	stfd 21,128(1)
	stfd 22,136(1)
	stfd 23,144(1)
	stfd 24,152(1)
	stfd 25,160(1)
	stfd 26,168(1)
	stfd 27,176(1)
	stfd 28,184(1)
	stfd 29,192(1)
	stfd 30,200(1)
	stfd 31,208(1)
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
	stw 12,60(1)
.LBB7861:
.LBB7772:
.LBB7770:
	.loc 13 159 0
	stw 9,28(1)
.LVL2141:
.LBB7768:
.LBB7767:
	.loc 13 197 0
	stw 0,32(1)
	.loc 13 198 0
	stw 0,20(1)
	.loc 13 199 0
	stw 0,24(1)
.LEHB202:
.LBE7767:
.LBE7768:
.LBE7770:
.LBE7772:
	.loc 2 1124 0
	.cfi_offset 70, -156
	.cfi_offset 27, -116
	.cfi_offset 26, -120
	.cfi_offset 25, -124
	.cfi_offset 24, -128
	.cfi_offset 23, -132
	.cfi_offset 22, -136
	.cfi_offset 21, -140
	.cfi_offset 20, -144
	.cfi_offset 19, -148
	.cfi_offset 18, -152
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
	bl _ZNK11idGameLocal17FindEntityDefDictEPKcb
.LVL2142:
	.loc 2 1125 0
	mr. 27,3
	beq- 0,.L1218
.LVL2143:
.L1204:
	.loc 2 1130 0
	lis 30,.LC8@ha
.LVL2144:
	mr 3,31
	la 30,.LC8@l(30)
	addi 5,1,20
	mr 4,30
	bl _ZN15idAFEntity_Base7DropAFsEP8idEntityPKcP6idListIS1_E
	.loc 2 1133 0
	mr 3,31
	mr 4,30
	addi 5,1,20
	bl _ZN14idMoveableItem9DropItemsEP16idAnimatedEntityPKcP6idListIP8idEntityE
	.loc 2 1136 0
	mr 3,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,-1
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL2145:
.LBB7773:
.LBB7774:
	.loc 17 212 0 discriminator 1
	lfs 0,8(3)
	lis 21,.LC1@ha
	lfs 20,12(3)
.LBE7774:
.LBE7773:
.LBB7778:
.LBB7779:
.LBB7780:
.LBB7781:
	.loc 11 241 0 discriminator 1
	lis 4,.LC51@ha
.LBE7781:
.LBE7780:
.LBE7779:
.LBE7778:
.LBB7795:
.LBB7775:
	.loc 17 212 0 discriminator 1
	lfs 12,0(3)
.LBE7775:
.LBE7795:
.LBB7796:
.LBB7791:
.LBB7787:
.LBB7783:
	.loc 11 241 0 discriminator 1
	la 4,.LC51@l(4)
.LBE7783:
.LBE7787:
.LBE7791:
.LBE7796:
.LBB7797:
.LBB7776:
	.loc 17 212 0 discriminator 1
	lfs 21,16(3)
	lfs 13,4(3)
	fadds 20,20,12
	lfs 22,20(3)
.LBE7776:
.LBE7797:
.LBB7798:
.LBB7792:
.LBB7788:
.LBB7784:
	.loc 11 241 0 discriminator 1
	mr 3,27
.LVL2146:
.LBE7784:
.LBE7788:
.LBE7792:
.LBE7798:
.LBB7799:
.LBB7777:
	.loc 17 212 0 discriminator 1
	fadds 21,21,13
	fadds 22,22,0
	lfs 0,.LC1@l(21)
	fmuls 20,20,0
.LVL2147:
	fmuls 21,21,0
.LVL2148:
	fmuls 22,22,0
.LVL2149:
.LBE7777:
.LBE7799:
.LBB7800:
.LBB7793:
.LBB7789:
.LBB7785:
	.loc 11 241 0 discriminator 1
	bl _ZNK6idDict7FindKeyEPKc
.LVL2150:
	.loc 11 242 0 discriminator 1
	cmpwi 0,3,0
	beq- 0,.L1215
.LVL2151:
.LBB7782:
	.loc 2 2927 0
	lwz 9,4(3)
	lwz 3,4(9)
.LVL2152:
.L1205:
.LBE7782:
.LBE7785:
.LBE7789:
	.loc 11 257 0
	bl atoi
.LVL2153:
.LBE7793:
.LBE7800:
	.loc 2 1138 0
	lwz 0,20(1)
	cmpwi 7,0,0
	ble- 7,.L1206
.LBB7801:
.LBB7802:
.LBB7803:
.LBB7804:
	.loc 14 248 0
	lis 18,0x5f37
.LBE7804:
.LBE7803:
.LBE7802:
.LBE7801:
	.loc 2 1154 0
	lis 26,EV_Remove@ha
	cmpwi 4,3,0
	.loc 2 1138 0
	li 31,0
.LVL2154:
	li 30,0
.LBB7815:
.LBB7811:
.LBB7808:
.LBB7805:
	.loc 14 248 0
	ori 18,18,23007
	.loc 14 250 0
	lis 19,.LC63@ha
.LBE7805:
.LBE7808:
.LBE7811:
.LBE7815:
.LBB7816:
.LBB7817:
	.loc 3 439 0
	lis 20,.LC147@ha
.LBE7817:
.LBE7816:
	.loc 2 1152 0
	li 22,1
	.loc 2 1153 0
	addis 28,28,0x25
	lis 23,0x4330
	lis 24,.LC5@ha
	lis 27,.LC52@ha
.LVL2155:
	.loc 2 1154 0
	la 26,EV_Remove@l(26)
	lis 25,.LC54@ha
	b .L1211
.LVL2156:
.L1219:
	.loc 2 1140 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	li 5,-1
	lwz 0,40(9)
	mtctr 0
	bctrl
.LVL2157:
	.loc 2 1141 0
	lwz 9,32(1)
	lwzx 3,9,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,0
	li 5,-1
	lwz 0,48(9)
	mtctr 0
	bctrl
.LVL2158:
	.loc 2 1142 0
	lwz 9,32(1)
	lwzx 3,9,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,188(9)
	mtctr 0
	bctrl
.LVL2159:
	.loc 2 1143 0
	lwz 9,32(1)
	lwzx 3,9,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	lwz 0,92(9)
	mtctr 0
	bctrl
.LVL2160:
.L1208:
	.loc 2 1152 0
	lwz 9,32(1)
	lwzx 3,9,31
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	stb 22,201(3)
.LVL2161:
	.loc 2 1153 0
	lwz 9,32(1)
	lwzx 3,9,31
	lwz 9,0(3)
	lwz 0,36(9)
	mtctr 0
	bctrl
	.loc 2 1153 0 is_stmt 0 discriminator 1
	lwz 0,2004(28)
	.loc 2 1154 0 is_stmt 1 discriminator 1
	mr 4,26
	.loc 2 1153 0 discriminator 1
	stw 23,40(1)
	xoris 0,0,0x8000
	lfs 0,.LC5@l(24)
	stw 0,44(1)
	lfs 13,.LC52@l(27)
	lfd 12,40(1)
	.loc 2 1154 0 discriminator 1
	lwz 9,32(1)
	.loc 2 1153 0 discriminator 1
	fsub 0,12,0
	.loc 2 1154 0 discriminator 1
	lfs 1,.LC54@l(25)
	.loc 2 1153 0 discriminator 1
	frsp 0,0
	fmuls 0,0,13
	stfs 0,152(3)
.LVL2162:
	.loc 2 1154 0 discriminator 1
	lwzx 3,9,31
	bl _ZN7idClass12PostEventSecEPK10idEventDeff
	.loc 2 1138 0
	lwz 0,20(1)
	addi 30,30,1
.LVL2163:
	addi 31,31,4
	cmpw 7,0,30
	ble- 7,.L1206
.LVL2164:
.L1211:
	.loc 2 1140 0
	lwz 9,32(1)
	lwzx 3,9,31
	.loc 2 1139 0
	bne- 4,.L1219
.LVL2165:
	.loc 2 1145 0
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,1024
	li 5,-1
	lwz 0,40(9)
	mtctr 0
	bctrl
.LVL2166:
	.loc 2 1146 0
	lwz 9,32(1)
	lwzx 3,9,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,1
	li 5,-1
	lwz 0,48(9)
	mtctr 0
	bctrl
.LVL2167:
	.loc 2 1147 0
	lwz 9,32(1)
	lwzx 3,9,31
	bl _ZNK8idEntity10GetPhysicsEv
	lwz 9,0(3)
	li 4,-1
	lwz 0,60(9)
	mtctr 0
	bctrl
.LVL2168:
	.loc 2 1149 0 discriminator 1
	andi. 0,30,1
.LBB7822:
.LBB7823:
.LBB7824:
.LBB7825:
	.loc 3 402 0 discriminator 1
	lfs 28,12(3)
.LVL2169:
.LBE7825:
.LBE7824:
.LBB7826:
.LBB7827:
	lfs 29,0(3)
.LVL2170:
.LBE7827:
.LBE7826:
.LBB7828:
.LBB7829:
	lfs 30,16(3)
.LVL2171:
.LBE7829:
.LBE7828:
.LBB7830:
.LBB7831:
	lfs 31,4(3)
.LVL2172:
.LBE7831:
.LBE7830:
.LBB7832:
.LBB7833:
	lfs 27,20(3)
.LVL2173:
.LBE7833:
.LBE7832:
.LBB7834:
.LBB7835:
	lfs 26,8(3)
.LVL2174:
.LBE7835:
.LBE7834:
.LBE7823:
.LBE7822:
	.loc 2 1149 0 discriminator 1
	lfs 25,0(29)
	lfs 24,4(29)
	lfs 23,8(29)
	bne- 0,.L1210
.LVL2175:
.LBB7839:
.LBB7840:
	.loc 3 420 0
	fneg 25,25
	fneg 24,24
	fneg 23,23
.LVL2176:
.L1210:
.LBE7840:
.LBE7839:
	.loc 2 1150 0 discriminator 3
	lwz 9,32(1)
	lwzx 3,9,31
.LVL2177:
	bl _ZNK8idEntity10GetPhysicsEv
.LBB7841:
.LBB7836:
	.loc 17 212 0 discriminator 3
	fadds 29,28,29
.LVL2178:
.LBE7836:
.LBE7841:
	.loc 3 431 0 discriminator 3
	lfs 0,.LC1@l(21)
.LBB7842:
.LBB7837:
	.loc 17 212 0 discriminator 3
	fadds 31,30,31
.LVL2179:
.LBE7837:
.LBE7842:
	.loc 2 1150 0 discriminator 3
	lwz 9,0(3)
.LBB7843:
.LBB7838:
	.loc 17 212 0 discriminator 3
	fadds 27,27,26
.LVL2180:
.LBE7838:
.LBE7843:
.LBB7844:
.LBB7812:
.LBB7809:
.LBB7806:
	.loc 14 250 0 discriminator 3
	lfs 12,.LC63@l(19)
.LBE7806:
.LBE7809:
.LBE7812:
.LBE7844:
	.loc 3 431 0 discriminator 3
	fmsubs 29,29,0,20
	.loc 2 1150 0 discriminator 3
	lwz 0,140(9)
.LVL2181:
	.loc 3 431 0 discriminator 3
	fmsubs 31,31,0,21
.LBB7845:
.LBB7820:
	.loc 3 439 0 discriminator 3
	lfs 13,.LC147@l(20)
.LBE7820:
.LBE7845:
	.loc 3 431 0 discriminator 3
	fmsubs 27,27,0,22
	.loc 2 1150 0 discriminator 3
	addi 4,1,8
.LBB7846:
.LBB7813:
	.loc 3 527 0 discriminator 3
	fmuls 11,29,29
.LBE7813:
.LBE7846:
	.loc 2 1150 0 discriminator 3
	li 5,0
	mtctr 0
	.loc 3 527 0 discriminator 3
	fmadds 11,31,31,11
	fmadds 11,27,27,11
	stfs 11,48(1)
.LBB7847:
.LBB7814:
.LBB7810:
.LBB7807:
	.loc 14 246 0 discriminator 3
	fmuls 0,11,0
	.loc 14 248 0 discriminator 3
	lwz 11,48(1)
	.loc 2 1116 0 discriminator 3
	fneg 0,0
	.loc 14 248 0 discriminator 3
	srawi 9,11,1
	.loc 14 249 0 discriminator 3
	subf 9,9,18
	stw 9,48(1)
	.loc 14 250 0 discriminator 3
	lfs 9,48(1)
	fmuls 11,9,9
	fmadds 0,0,11,12
	fmuls 0,9,0
.LVL2182:
.LBE7807:
.LBE7810:
.LBE7814:
.LBE7847:
.LBB7848:
.LBB7821:
	.loc 3 456 0 discriminator 3
	fmadds 29,29,0,25
.LVL2183:
	.loc 3 457 0 discriminator 3
	fmadds 31,31,0,24
.LVL2184:
	.loc 3 458 0 discriminator 3
	fmadds 23,27,0,23
.LVL2185:
	.loc 3 439 0 discriminator 3
	fmuls 29,29,13
.LVL2186:
	fmuls 31,31,13
.LVL2187:
	fmuls 13,23,13
.LVL2188:
.LBB7818:
.LBB7819:
	.loc 3 396 0 discriminator 3
	stfs 29,8(1)
	.loc 3 397 0 discriminator 3
	stfs 31,12(1)
	.loc 3 398 0 discriminator 3
	stfs 13,16(1)
.LBE7819:
.LBE7818:
.LBE7821:
.LBE7848:
	.loc 2 1150 0 discriminator 3
	bctrl
.LVL2189:
	b .L1208
.LVL2190:
.L1206:
.LBB7849:
.LBB7850:
.LBB7851:
.LBB7852:
	.loc 13 193 0
	lwz 3,32(1)
	cmpwi 7,3,0
	beq- 7,.L1203
	.loc 13 194 0
	bl _ZdaPv
.L1203:
.LBE7852:
.LBE7851:
.LBE7850:
.LBE7849:
.LBE7861:
	.loc 2 1156 0
	lwz 0,220(1)
	lwz 12,60(1)
	mtlr 0
	lwz 18,64(1)
	lwz 19,68(1)
	mtcrf 8,12
	lwz 20,72(1)
	lwz 21,76(1)
	lwz 22,80(1)
	lwz 23,84(1)
	lwz 24,88(1)
	lwz 25,92(1)
	lwz 26,96(1)
	lwz 27,100(1)
	lwz 28,104(1)
	lwz 29,108(1)
.LVL2191:
	lwz 30,112(1)
	lwz 31,116(1)
	lfd 20,120(1)
.LVL2192:
	lfd 21,128(1)
.LVL2193:
	lfd 22,136(1)
.LVL2194:
	lfd 23,144(1)
	lfd 24,152(1)
	lfd 25,160(1)
	lfd 26,168(1)
	lfd 27,176(1)
	lfd 28,184(1)
	lfd 29,192(1)
	lfd 30,200(1)
	lfd 31,208(1)
	addi 1,1,216
	.cfi_remember_state
.LCFI415:
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
.LVL2195:
.L1218:
.LCFI416:
	.cfi_restore_state
.LBB7862:
	.loc 2 1126 0
	lis 4,.LC50@ha
	mr 3,28
.LVL2196:
	la 4,.LC50@l(4)
	mr 5,30
	crxor 6,6,6
	bl _ZNK11idGameLocal5ErrorEPKcz
.LEHE202:
	b .L1204
.LVL2197:
.L1215:
.LBB7853:
.LBB7794:
.LBB7790:
.LBB7786:
	.loc 11 245 0
	lis 3,.LC7@ha
.LVL2198:
	la 3,.LC7@l(3)
	b .L1205
.LVL2199:
.L1216:
.LBE7786:
.LBE7790:
.LBE7794:
.LBE7853:
.LBB7854:
.LBB7855:
.LBB7856:
.LBB7857:
	.loc 13 193 0
	lwz 0,32(1)
	mr 31,3
.LVL2200:
	cmpwi 7,0,0
	beq- 7,.L1214
	.loc 13 194 0
	mr 3,0
	bl _ZdaPv
.L1214:
	mr 3,31
.LEHB203:
	bl _Unwind_Resume
.LEHE203:
.LBE7857:
.LBE7856:
.LBE7855:
.LBE7854:
.LBE7862:
	.cfi_endproc
.LFE2914:
	.section	.gcc_except_table
.LLSDA2914:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2914-.LLSDACSB2914
.LLSDACSB2914:
	.uleb128 .LEHB202-.LFB2914
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L1216-.LFB2914
	.uleb128 0
	.uleb128 .LEHB203-.LFB2914
	.uleb128 .LEHE203-.LEHB203
	.uleb128 0
	.uleb128 0
.LLSDACSE2914:
	.section	".text"
	.size	_ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc, .-_ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc
	.section	.text.startup,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_I__ZN14idMultiModelAF4TypeE, @function
_GLOBAL__sub_I__ZN14idMultiModelAF4TypeE:
.LFB3351:
	.loc 2 2927 0
	.cfi_startproc
	.loc 2 2927 0
	li 3,1
	b _Z41__static_initialization_and_destruction_0ii.constprop.76
	.cfi_endproc
.LFE3351:
	.size	_GLOBAL__sub_I__ZN14idMultiModelAF4TypeE, .-_GLOBAL__sub_I__ZN14idMultiModelAF4TypeE
	.section	.ctors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_I__ZN14idMultiModelAF4TypeE
	.section	.text.exit,"ax",@progbits
	.align 2
	.type	_GLOBAL__sub_D__ZN14idMultiModelAF4TypeE, @function
_GLOBAL__sub_D__ZN14idMultiModelAF4TypeE:
.LFB3352:
	.loc 2 2927 0
	.cfi_startproc
	.loc 2 2927 0
	li 3,0
	b _Z41__static_initialization_and_destruction_0ii.constprop.76
	.cfi_endproc
.LFE3352:
	.size	_GLOBAL__sub_D__ZN14idMultiModelAF4TypeE, .-_GLOBAL__sub_D__ZN14idMultiModelAF4TypeE
	.section	.dtors,"aw",@progbits
	.align 2
	.long	_GLOBAL__sub_D__ZN14idMultiModelAF4TypeE
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
	.weak	_ZTS14idMultiModelAF
	.section	.rodata._ZTS14idMultiModelAF,"aG",@progbits,_ZTS14idMultiModelAF,comdat
	.align 2
	.type	_ZTS14idMultiModelAF, @object
	.size	_ZTS14idMultiModelAF, 17
_ZTS14idMultiModelAF:
	.string	"14idMultiModelAF"
	.weak	_ZTI14idMultiModelAF
	.section	.rodata._ZTI14idMultiModelAF,"aG",@progbits,_ZTI14idMultiModelAF,comdat
	.align 2
	.type	_ZTI14idMultiModelAF, @object
	.size	_ZTI14idMultiModelAF, 12
_ZTI14idMultiModelAF:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14idMultiModelAF
	.long	_ZTI8idEntity
	.weak	_ZTS7idChain
	.section	.rodata._ZTS7idChain,"aG",@progbits,_ZTS7idChain,comdat
	.align 2
	.type	_ZTS7idChain, @object
	.size	_ZTS7idChain, 9
_ZTS7idChain:
	.string	"7idChain"
	.weak	_ZTI7idChain
	.section	.rodata._ZTI7idChain,"aG",@progbits,_ZTI7idChain,comdat
	.align 2
	.type	_ZTI7idChain, @object
	.size	_ZTI7idChain, 12
_ZTI7idChain:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS7idChain
	.long	_ZTI14idMultiModelAF
	.weak	_ZTS14idAFAttachment
	.section	.rodata._ZTS14idAFAttachment,"aG",@progbits,_ZTS14idAFAttachment,comdat
	.align 2
	.type	_ZTS14idAFAttachment, @object
	.size	_ZTS14idAFAttachment, 17
_ZTS14idAFAttachment:
	.string	"14idAFAttachment"
	.weak	_ZTI14idAFAttachment
	.section	.rodata._ZTI14idAFAttachment,"aG",@progbits,_ZTI14idAFAttachment,comdat
	.align 2
	.type	_ZTI14idAFAttachment, @object
	.size	_ZTI14idAFAttachment, 12
_ZTI14idAFAttachment:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14idAFAttachment
	.long	_ZTI16idAnimatedEntity
	.weak	_ZTS15idAFEntity_Base
	.section	.rodata._ZTS15idAFEntity_Base,"aG",@progbits,_ZTS15idAFEntity_Base,comdat
	.align 2
	.type	_ZTS15idAFEntity_Base, @object
	.size	_ZTS15idAFEntity_Base, 18
_ZTS15idAFEntity_Base:
	.string	"15idAFEntity_Base"
	.weak	_ZTI15idAFEntity_Base
	.section	.rodata._ZTI15idAFEntity_Base,"aG",@progbits,_ZTI15idAFEntity_Base,comdat
	.align 2
	.type	_ZTI15idAFEntity_Base, @object
	.size	_ZTI15idAFEntity_Base, 12
_ZTI15idAFEntity_Base:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS15idAFEntity_Base
	.long	_ZTI16idAnimatedEntity
	.weak	_ZTS19idAFEntity_Gibbable
	.section	.rodata._ZTS19idAFEntity_Gibbable,"aG",@progbits,_ZTS19idAFEntity_Gibbable,comdat
	.align 2
	.type	_ZTS19idAFEntity_Gibbable, @object
	.size	_ZTS19idAFEntity_Gibbable, 22
_ZTS19idAFEntity_Gibbable:
	.string	"19idAFEntity_Gibbable"
	.weak	_ZTI19idAFEntity_Gibbable
	.section	.rodata._ZTI19idAFEntity_Gibbable,"aG",@progbits,_ZTI19idAFEntity_Gibbable,comdat
	.align 2
	.type	_ZTI19idAFEntity_Gibbable, @object
	.size	_ZTI19idAFEntity_Gibbable, 12
_ZTI19idAFEntity_Gibbable:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS19idAFEntity_Gibbable
	.long	_ZTI15idAFEntity_Base
	.weak	_ZTS18idAFEntity_Generic
	.section	.rodata._ZTS18idAFEntity_Generic,"aG",@progbits,_ZTS18idAFEntity_Generic,comdat
	.align 2
	.type	_ZTS18idAFEntity_Generic, @object
	.size	_ZTS18idAFEntity_Generic, 21
_ZTS18idAFEntity_Generic:
	.string	"18idAFEntity_Generic"
	.weak	_ZTI18idAFEntity_Generic
	.section	.rodata._ZTI18idAFEntity_Generic,"aG",@progbits,_ZTI18idAFEntity_Generic,comdat
	.align 2
	.type	_ZTI18idAFEntity_Generic, @object
	.size	_ZTI18idAFEntity_Generic, 12
_ZTI18idAFEntity_Generic:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS18idAFEntity_Generic
	.long	_ZTI19idAFEntity_Gibbable
	.weak	_ZTS27idAFEntity_WithAttachedHead
	.section	.rodata._ZTS27idAFEntity_WithAttachedHead,"aG",@progbits,_ZTS27idAFEntity_WithAttachedHead,comdat
	.align 2
	.type	_ZTS27idAFEntity_WithAttachedHead, @object
	.size	_ZTS27idAFEntity_WithAttachedHead, 30
_ZTS27idAFEntity_WithAttachedHead:
	.string	"27idAFEntity_WithAttachedHead"
	.weak	_ZTI27idAFEntity_WithAttachedHead
	.section	.rodata._ZTI27idAFEntity_WithAttachedHead,"aG",@progbits,_ZTI27idAFEntity_WithAttachedHead,comdat
	.align 2
	.type	_ZTI27idAFEntity_WithAttachedHead, @object
	.size	_ZTI27idAFEntity_WithAttachedHead, 12
_ZTI27idAFEntity_WithAttachedHead:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS27idAFEntity_WithAttachedHead
	.long	_ZTI19idAFEntity_Gibbable
	.weak	_ZTS18idAFEntity_Vehicle
	.section	.rodata._ZTS18idAFEntity_Vehicle,"aG",@progbits,_ZTS18idAFEntity_Vehicle,comdat
	.align 2
	.type	_ZTS18idAFEntity_Vehicle, @object
	.size	_ZTS18idAFEntity_Vehicle, 21
_ZTS18idAFEntity_Vehicle:
	.string	"18idAFEntity_Vehicle"
	.weak	_ZTI18idAFEntity_Vehicle
	.section	.rodata._ZTI18idAFEntity_Vehicle,"aG",@progbits,_ZTI18idAFEntity_Vehicle,comdat
	.align 2
	.type	_ZTI18idAFEntity_Vehicle, @object
	.size	_ZTI18idAFEntity_Vehicle, 12
_ZTI18idAFEntity_Vehicle:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS18idAFEntity_Vehicle
	.long	_ZTI15idAFEntity_Base
	.weak	_ZTS24idAFEntity_VehicleSimple
	.section	.rodata._ZTS24idAFEntity_VehicleSimple,"aG",@progbits,_ZTS24idAFEntity_VehicleSimple,comdat
	.align 2
	.type	_ZTS24idAFEntity_VehicleSimple, @object
	.size	_ZTS24idAFEntity_VehicleSimple, 27
_ZTS24idAFEntity_VehicleSimple:
	.string	"24idAFEntity_VehicleSimple"
	.weak	_ZTI24idAFEntity_VehicleSimple
	.section	.rodata._ZTI24idAFEntity_VehicleSimple,"aG",@progbits,_ZTI24idAFEntity_VehicleSimple,comdat
	.align 2
	.type	_ZTI24idAFEntity_VehicleSimple, @object
	.size	_ZTI24idAFEntity_VehicleSimple, 12
_ZTI24idAFEntity_VehicleSimple:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS24idAFEntity_VehicleSimple
	.long	_ZTI18idAFEntity_Vehicle
	.weak	_ZTS28idAFEntity_VehicleFourWheels
	.section	.rodata._ZTS28idAFEntity_VehicleFourWheels,"aG",@progbits,_ZTS28idAFEntity_VehicleFourWheels,comdat
	.align 2
	.type	_ZTS28idAFEntity_VehicleFourWheels, @object
	.size	_ZTS28idAFEntity_VehicleFourWheels, 31
_ZTS28idAFEntity_VehicleFourWheels:
	.string	"28idAFEntity_VehicleFourWheels"
	.weak	_ZTI28idAFEntity_VehicleFourWheels
	.section	.rodata._ZTI28idAFEntity_VehicleFourWheels,"aG",@progbits,_ZTI28idAFEntity_VehicleFourWheels,comdat
	.align 2
	.type	_ZTI28idAFEntity_VehicleFourWheels, @object
	.size	_ZTI28idAFEntity_VehicleFourWheels, 12
_ZTI28idAFEntity_VehicleFourWheels:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS28idAFEntity_VehicleFourWheels
	.long	_ZTI18idAFEntity_Vehicle
	.weak	_ZTS27idAFEntity_VehicleSixWheels
	.section	.rodata._ZTS27idAFEntity_VehicleSixWheels,"aG",@progbits,_ZTS27idAFEntity_VehicleSixWheels,comdat
	.align 2
	.type	_ZTS27idAFEntity_VehicleSixWheels, @object
	.size	_ZTS27idAFEntity_VehicleSixWheels, 30
_ZTS27idAFEntity_VehicleSixWheels:
	.string	"27idAFEntity_VehicleSixWheels"
	.weak	_ZTI27idAFEntity_VehicleSixWheels
	.section	.rodata._ZTI27idAFEntity_VehicleSixWheels,"aG",@progbits,_ZTI27idAFEntity_VehicleSixWheels,comdat
	.align 2
	.type	_ZTI27idAFEntity_VehicleSixWheels, @object
	.size	_ZTI27idAFEntity_VehicleSixWheels, 12
_ZTI27idAFEntity_VehicleSixWheels:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS27idAFEntity_VehicleSixWheels
	.long	_ZTI18idAFEntity_Vehicle
	.weak	_ZTS20idAFEntity_SteamPipe
	.section	.rodata._ZTS20idAFEntity_SteamPipe,"aG",@progbits,_ZTS20idAFEntity_SteamPipe,comdat
	.align 2
	.type	_ZTS20idAFEntity_SteamPipe, @object
	.size	_ZTS20idAFEntity_SteamPipe, 23
_ZTS20idAFEntity_SteamPipe:
	.string	"20idAFEntity_SteamPipe"
	.weak	_ZTI20idAFEntity_SteamPipe
	.section	.rodata._ZTI20idAFEntity_SteamPipe,"aG",@progbits,_ZTI20idAFEntity_SteamPipe,comdat
	.align 2
	.type	_ZTI20idAFEntity_SteamPipe, @object
	.size	_ZTI20idAFEntity_SteamPipe, 12
_ZTI20idAFEntity_SteamPipe:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS20idAFEntity_SteamPipe
	.long	_ZTI15idAFEntity_Base
	.weak	_ZTS26idAFEntity_ClawFourFingers
	.section	.rodata._ZTS26idAFEntity_ClawFourFingers,"aG",@progbits,_ZTS26idAFEntity_ClawFourFingers,comdat
	.align 2
	.type	_ZTS26idAFEntity_ClawFourFingers, @object
	.size	_ZTS26idAFEntity_ClawFourFingers, 29
_ZTS26idAFEntity_ClawFourFingers:
	.string	"26idAFEntity_ClawFourFingers"
	.weak	_ZTI26idAFEntity_ClawFourFingers
	.section	.rodata._ZTI26idAFEntity_ClawFourFingers,"aG",@progbits,_ZTI26idAFEntity_ClawFourFingers,comdat
	.align 2
	.type	_ZTI26idAFEntity_ClawFourFingers, @object
	.size	_ZTI26idAFEntity_ClawFourFingers, 12
_ZTI26idAFEntity_ClawFourFingers:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS26idAFEntity_ClawFourFingers
	.long	_ZTI15idAFEntity_Base
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
	.weak	_ZTV14idMultiModelAF
	.section	.rodata._ZTV14idMultiModelAF,"aG",@progbits,_ZTV14idMultiModelAF,comdat
	.align 3
	.type	_ZTV14idMultiModelAF, @object
	.size	_ZTV14idMultiModelAF, 236
_ZTV14idMultiModelAF:
	.long	0
	.long	_ZTI14idMultiModelAF
	.long	_ZNK14idMultiModelAF7GetTypeEv
	.long	_ZN14idMultiModelAFD1Ev
	.long	_ZN14idMultiModelAFD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN14idMultiModelAF5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN14idMultiModelAF7PresentEv
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
	.weak	_ZTV7idChain
	.section	.rodata._ZTV7idChain,"aG",@progbits,_ZTV7idChain,comdat
	.align 3
	.type	_ZTV7idChain, @object
	.size	_ZTV7idChain, 236
_ZTV7idChain:
	.long	0
	.long	_ZTI7idChain
	.long	_ZNK7idChain7GetTypeEv
	.long	_ZN7idChainD1Ev
	.long	_ZN7idChainD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN14idMultiModelAF5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN14idMultiModelAF7PresentEv
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
	.weak	_ZTV14idAFAttachment
	.section	.rodata._ZTV14idAFAttachment,"aG",@progbits,_ZTV14idAFAttachment,comdat
	.align 3
	.type	_ZTV14idAFAttachment, @object
	.size	_ZTV14idAFAttachment, 248
_ZTV14idAFAttachment:
	.long	0
	.long	_ZTI14idAFAttachment
	.long	_ZNK14idAFAttachment7GetTypeEv
	.long	_ZN14idAFAttachmentD1Ev
	.long	_ZN14idAFAttachmentD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN14idAFAttachment5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN8idEntity12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN14idAFAttachment4HideEv
	.long	_ZN14idAFAttachment4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN8idEntity26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN8idEntity27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN8idEntity7CollideERK7trace_sRK6idVec3
	.long	_ZN14idAFAttachment13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN14idAFAttachment12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN14idAFAttachment8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN14idAFAttachment6DamageEP8idEntityS1_RK6idVec3PKcfi
	.long	_ZN14idAFAttachment15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN8idEntity17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN14idAFAttachment10LinkCombatEv
	.long	_ZN14idAFAttachment12UnlinkCombatEv
	.weak	_ZTV15idAFEntity_Base
	.section	.rodata._ZTV15idAFEntity_Base,"aG",@progbits,_ZTV15idAFEntity_Base,comdat
	.align 3
	.type	_ZTV15idAFEntity_Base, @object
	.size	_ZTV15idAFEntity_Base, 252
_ZTV15idAFEntity_Base:
	.long	0
	.long	_ZTI15idAFEntity_Base
	.long	_ZNK15idAFEntity_Base7GetTypeEv
	.long	_ZN15idAFEntity_BaseD1Ev
	.long	_ZN15idAFEntity_BaseD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN15idAFEntity_Base5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.weak	_ZTV19idAFEntity_Gibbable
	.section	.rodata._ZTV19idAFEntity_Gibbable,"aG",@progbits,_ZTV19idAFEntity_Gibbable,comdat
	.align 3
	.type	_ZTV19idAFEntity_Gibbable, @object
	.size	_ZTV19idAFEntity_Gibbable, 260
_ZTV19idAFEntity_Gibbable:
	.long	0
	.long	_ZTI19idAFEntity_Gibbable
	.long	_ZNK19idAFEntity_Gibbable7GetTypeEv
	.long	_ZN19idAFEntity_GibbableD1Ev
	.long	_ZN19idAFEntity_GibbableD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN15idAFEntity_Base5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN19idAFEntity_Gibbable7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.long	_ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc
	.long	_ZN19idAFEntity_Gibbable3GibERK6idVec3PKc
	.weak	_ZTV18idAFEntity_Generic
	.section	.rodata._ZTV18idAFEntity_Generic,"aG",@progbits,_ZTV18idAFEntity_Generic,comdat
	.align 3
	.type	_ZTV18idAFEntity_Generic, @object
	.size	_ZTV18idAFEntity_Generic, 260
_ZTV18idAFEntity_Generic:
	.long	0
	.long	_ZTI18idAFEntity_Generic
	.long	_ZNK18idAFEntity_Generic7GetTypeEv
	.long	_ZN18idAFEntity_GenericD1Ev
	.long	_ZN18idAFEntity_GenericD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN18idAFEntity_Generic5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN19idAFEntity_Gibbable7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.long	_ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc
	.long	_ZN19idAFEntity_Gibbable3GibERK6idVec3PKc
	.weak	_ZTV27idAFEntity_WithAttachedHead
	.section	.rodata._ZTV27idAFEntity_WithAttachedHead,"aG",@progbits,_ZTV27idAFEntity_WithAttachedHead,comdat
	.align 3
	.type	_ZTV27idAFEntity_WithAttachedHead, @object
	.size	_ZTV27idAFEntity_WithAttachedHead, 260
_ZTV27idAFEntity_WithAttachedHead:
	.long	0
	.long	_ZTI27idAFEntity_WithAttachedHead
	.long	_ZNK27idAFEntity_WithAttachedHead7GetTypeEv
	.long	_ZN27idAFEntity_WithAttachedHeadD1Ev
	.long	_ZN27idAFEntity_WithAttachedHeadD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN27idAFEntity_WithAttachedHead5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN19idAFEntity_Gibbable7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN27idAFEntity_WithAttachedHead4HideEv
	.long	_ZN27idAFEntity_WithAttachedHead4ShowEv
	.long	_ZN27idAFEntity_WithAttachedHead14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN19idAFEntity_Gibbable6DamageEP8idEntityS1_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN27idAFEntity_WithAttachedHead10LinkCombatEv
	.long	_ZN27idAFEntity_WithAttachedHead12UnlinkCombatEv
	.long	_ZN19idAFEntity_Gibbable9SpawnGibsERK6idVec3PKc
	.long	_ZN27idAFEntity_WithAttachedHead3GibERK6idVec3PKc
	.weak	_ZTV18idAFEntity_Vehicle
	.section	.rodata._ZTV18idAFEntity_Vehicle,"aG",@progbits,_ZTV18idAFEntity_Vehicle,comdat
	.align 3
	.type	_ZTV18idAFEntity_Vehicle, @object
	.size	_ZTV18idAFEntity_Vehicle, 252
_ZTV18idAFEntity_Vehicle:
	.long	0
	.long	_ZTI18idAFEntity_Vehicle
	.long	_ZNK18idAFEntity_Vehicle7GetTypeEv
	.long	_ZN18idAFEntity_VehicleD1Ev
	.long	_ZN18idAFEntity_VehicleD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN15idAFEntity_Base5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.weak	_ZTV24idAFEntity_VehicleSimple
	.section	.rodata._ZTV24idAFEntity_VehicleSimple,"aG",@progbits,_ZTV24idAFEntity_VehicleSimple,comdat
	.align 3
	.type	_ZTV24idAFEntity_VehicleSimple, @object
	.size	_ZTV24idAFEntity_VehicleSimple, 252
_ZTV24idAFEntity_VehicleSimple:
	.long	0
	.long	_ZTI24idAFEntity_VehicleSimple
	.long	_ZNK24idAFEntity_VehicleSimple7GetTypeEv
	.long	_ZN24idAFEntity_VehicleSimpleD1Ev
	.long	_ZN24idAFEntity_VehicleSimpleD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN24idAFEntity_VehicleSimple5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.weak	_ZTV28idAFEntity_VehicleFourWheels
	.section	.rodata._ZTV28idAFEntity_VehicleFourWheels,"aG",@progbits,_ZTV28idAFEntity_VehicleFourWheels,comdat
	.align 3
	.type	_ZTV28idAFEntity_VehicleFourWheels, @object
	.size	_ZTV28idAFEntity_VehicleFourWheels, 252
_ZTV28idAFEntity_VehicleFourWheels:
	.long	0
	.long	_ZTI28idAFEntity_VehicleFourWheels
	.long	_ZNK28idAFEntity_VehicleFourWheels7GetTypeEv
	.long	_ZN28idAFEntity_VehicleFourWheelsD1Ev
	.long	_ZN28idAFEntity_VehicleFourWheelsD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN28idAFEntity_VehicleFourWheels5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.weak	_ZTV27idAFEntity_VehicleSixWheels
	.section	.rodata._ZTV27idAFEntity_VehicleSixWheels,"aG",@progbits,_ZTV27idAFEntity_VehicleSixWheels,comdat
	.align 3
	.type	_ZTV27idAFEntity_VehicleSixWheels, @object
	.size	_ZTV27idAFEntity_VehicleSixWheels, 252
_ZTV27idAFEntity_VehicleSixWheels:
	.long	0
	.long	_ZTI27idAFEntity_VehicleSixWheels
	.long	_ZNK27idAFEntity_VehicleSixWheels7GetTypeEv
	.long	_ZN27idAFEntity_VehicleSixWheelsD1Ev
	.long	_ZN27idAFEntity_VehicleSixWheelsD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN27idAFEntity_VehicleSixWheels5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.weak	_ZTV20idAFEntity_SteamPipe
	.section	.rodata._ZTV20idAFEntity_SteamPipe,"aG",@progbits,_ZTV20idAFEntity_SteamPipe,comdat
	.align 3
	.type	_ZTV20idAFEntity_SteamPipe, @object
	.size	_ZTV20idAFEntity_SteamPipe, 252
_ZTV20idAFEntity_SteamPipe:
	.long	0
	.long	_ZTI20idAFEntity_SteamPipe
	.long	_ZNK20idAFEntity_SteamPipe7GetTypeEv
	.long	_ZN20idAFEntity_SteamPipeD1Ev
	.long	_ZN20idAFEntity_SteamPipeD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN20idAFEntity_SteamPipe5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.weak	_ZTV26idAFEntity_ClawFourFingers
	.section	.rodata._ZTV26idAFEntity_ClawFourFingers,"aG",@progbits,_ZTV26idAFEntity_ClawFourFingers,comdat
	.align 3
	.type	_ZTV26idAFEntity_ClawFourFingers, @object
	.size	_ZTV26idAFEntity_ClawFourFingers, 252
_ZTV26idAFEntity_ClawFourFingers:
	.long	0
	.long	_ZTI26idAFEntity_ClawFourFingers
	.long	_ZNK26idAFEntity_ClawFourFingers7GetTypeEv
	.long	_ZN26idAFEntity_ClawFourFingersD1Ev
	.long	_ZN26idAFEntity_ClawFourFingersD0Ev
	.long	_ZN8idEntity25UpdateChangeableSpawnArgsEPK6idDict
	.long	_ZN8idEntity13GetRenderViewEv
	.long	_ZN15idAFEntity_Base5ThinkEv
	.long	_ZN8idEntity12DormantBeginEv
	.long	_ZN8idEntity10DormantEndEv
	.long	_ZN8idEntity7PresentEv
	.long	_ZN8idEntity15GetRenderEntityEv
	.long	_ZN8idEntity17GetModelDefHandleEv
	.long	_ZN16idAnimatedEntity8SetModelEPKc
	.long	_ZN8idEntity8SetColorEfff
	.long	_ZN8idEntity8SetColorERK6idVec3
	.long	_ZNK8idEntity8GetColorER6idVec3
	.long	_ZN8idEntity8SetColorERK6idVec4
	.long	_ZNK8idEntity8GetColorER6idVec4
	.long	_ZN15idAFEntity_Base12FreeModelDefEv
	.long	_ZN8idEntity12FreeLightDefEv
	.long	_ZN8idEntity4HideEv
	.long	_ZN8idEntity4ShowEv
	.long	_ZN8idEntity14ProjectOverlayERK6idVec3S2_fPKc
	.long	_ZN15idAFEntity_Base26UpdateAnimationControllersEv
	.long	_ZN16idAnimatedEntity11GetAnimatorEv
	.long	_ZNK8idEntity20CanPlayChatterSoundsEv
	.long	_ZN8idEntity7PreBindEv
	.long	_ZN8idEntity8PostBindEv
	.long	_ZN8idEntity9PreUnbindEv
	.long	_ZN8idEntity10PostUnbindEv
	.long	_ZN15idAFEntity_Base27GetPhysicsToVisualTransformER6idVec3R6idMat3
	.long	_ZN8idEntity26GetPhysicsToSoundTransformER6idVec3R6idMat3
	.long	_ZN15idAFEntity_Base7CollideERK7trace_sRK6idVec3
	.long	_ZN15idAFEntity_Base13GetImpactInfoEP8idEntityiRK6idVec3P12impactInfo_s
	.long	_ZN15idAFEntity_Base12ApplyImpulseEP8idEntityiRK6idVec3S4_
	.long	_ZN15idAFEntity_Base8AddForceEP8idEntityiRK6idVec3S4_
	.long	_ZN8idEntity15ActivatePhysicsEPS_
	.long	_ZNK8idEntity8IsAtRestEv
	.long	_ZNK8idEntity16GetRestStartTimeEv
	.long	_ZN8idEntity16AddContactEntityEPS_
	.long	_ZN8idEntity19RemoveContactEntityEPS_
	.long	_ZNK8idEntity9CanDamageERK6idVec3RS0_
	.long	_ZN8idEntity6DamageEPS_S0_RK6idVec3PKcfi
	.long	_ZN16idAnimatedEntity15AddDamageEffectERK7trace_sRK6idVec3PKc
	.long	_ZN8idEntity14DamageFeedbackEPS_S0_Ri
	.long	_ZN8idEntity4PainEPS_S0_iRK6idVec3i
	.long	_ZN8idEntity6KilledEPS_S0_iRK6idVec3i
	.long	_ZNK8idEntity34ShouldConstructScriptObjectAtSpawnEv
	.long	_ZN8idEntity21ConstructScriptObjectEv
	.long	_ZN8idEntity23DeconstructScriptObjectEv
	.long	_ZN8idEntity22HandleSingleGuiCommandEPS_P7idLexer
	.long	_ZN8idEntity8TeleportERK6idVec3RK8idAnglesPS_
	.long	_ZN15idAFEntity_Base17ShowEditingDialogEv
	.long	_ZN16idAnimatedEntity21ClientPredictionThinkEv
	.long	_ZNK8idEntity15WriteToSnapshotER13idBitMsgDelta
	.long	_ZN8idEntity16ReadFromSnapshotERK13idBitMsgDelta
	.long	_ZN8idEntity18ServerReceiveEventEiiRK8idBitMsg
	.long	_ZN16idAnimatedEntity18ClientReceiveEventEiiRK8idBitMsg
	.long	_ZNK16idAnimatedEntity21GetDefaultSurfaceTypeEv
	.long	_ZN15idAFEntity_Base6LoadAFEv
	.long	_ZN15idAFEntity_Base10LinkCombatEv
	.long	_ZN15idAFEntity_Base12UnlinkCombatEv
	.globl _ZN26idAFEntity_ClawFourFingers14eventCallbacksE
	.globl _ZN26idAFEntity_ClawFourFingers4TypeE
	.globl _ZN20idAFEntity_SteamPipe14eventCallbacksE
	.globl _ZN20idAFEntity_SteamPipe4TypeE
	.globl _ZN27idAFEntity_VehicleSixWheels14eventCallbacksE
	.globl _ZN27idAFEntity_VehicleSixWheels4TypeE
	.globl _ZN28idAFEntity_VehicleFourWheels14eventCallbacksE
	.globl _ZN28idAFEntity_VehicleFourWheels4TypeE
	.globl _ZN24idAFEntity_VehicleSimple14eventCallbacksE
	.globl _ZN24idAFEntity_VehicleSimple4TypeE
	.globl _ZN18idAFEntity_Vehicle14eventCallbacksE
	.globl _ZN18idAFEntity_Vehicle4TypeE
	.globl _ZN27idAFEntity_WithAttachedHead14eventCallbacksE
	.globl _ZN27idAFEntity_WithAttachedHead4TypeE
	.globl _ZN18idAFEntity_Generic14eventCallbacksE
	.globl _ZN18idAFEntity_Generic4TypeE
	.globl _ZN19idAFEntity_Gibbable14eventCallbacksE
	.globl _ZN19idAFEntity_Gibbable4TypeE
	.globl EV_Gibbed
	.globl EV_Gib
	.globl _ZN15idAFEntity_Base14eventCallbacksE
	.globl _ZN15idAFEntity_Base4TypeE
	.globl _ZN14idAFAttachment14eventCallbacksE
	.globl _ZN14idAFAttachment4TypeE
	.globl _ZN7idChain14eventCallbacksE
	.globl _ZN7idChain4TypeE
	.globl _ZN14idMultiModelAF14eventCallbacksE
	.globl _ZN14idMultiModelAF4TypeE
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
	.globl _ZN15idAFEntity_BaseD1Ev
	.set	_ZN15idAFEntity_BaseD1Ev,_ZN15idAFEntity_BaseD2Ev
	.weak	_ZN18idAFEntity_VehicleD1Ev
	.set	_ZN18idAFEntity_VehicleD1Ev,_ZN18idAFEntity_VehicleD2Ev
	.weak	_ZN26idAFEntity_ClawFourFingersD1Ev
	.set	_ZN26idAFEntity_ClawFourFingersD1Ev,_ZN26idAFEntity_ClawFourFingersD2Ev
	.globl _ZN20idAFEntity_SteamPipeD1Ev
	.set	_ZN20idAFEntity_SteamPipeD1Ev,_ZN20idAFEntity_SteamPipeD2Ev
	.globl _ZN19idAFEntity_GibbableD1Ev
	.set	_ZN19idAFEntity_GibbableD1Ev,_ZN19idAFEntity_GibbableD2Ev
	.globl _ZN18idAFEntity_GenericD1Ev
	.set	_ZN18idAFEntity_GenericD1Ev,_ZN18idAFEntity_GenericD2Ev
	.globl _ZN27idAFEntity_WithAttachedHeadD1Ev
	.set	_ZN27idAFEntity_WithAttachedHeadD1Ev,_ZN27idAFEntity_WithAttachedHeadD2Ev
	.globl _ZN14idAFAttachmentD1Ev
	.set	_ZN14idAFAttachmentD1Ev,_ZN14idAFAttachmentD2Ev
	.weak	_ZN28idAFEntity_VehicleFourWheelsD1Ev
	.set	_ZN28idAFEntity_VehicleFourWheelsD1Ev,_ZN28idAFEntity_VehicleFourWheelsD2Ev
	.weak	_ZN27idAFEntity_VehicleSixWheelsD1Ev
	.set	_ZN27idAFEntity_VehicleSixWheelsD1Ev,_ZN27idAFEntity_VehicleSixWheelsD2Ev
	.globl _ZN24idAFEntity_VehicleSimpleD1Ev
	.set	_ZN24idAFEntity_VehicleSimpleD1Ev,_ZN24idAFEntity_VehicleSimpleD2Ev
	.weak	_ZN14idFixedWindingD1Ev
	.set	_ZN14idFixedWindingD1Ev,_ZN14idFixedWindingD2Ev
	.globl _ZN14idAFAttachmentC1Ev
	.set	_ZN14idAFAttachmentC1Ev,_ZN14idAFAttachmentC2Ev
	.globl _ZN15idAFEntity_BaseC1Ev
	.set	_ZN15idAFEntity_BaseC1Ev,_ZN15idAFEntity_BaseC2Ev
	.globl _ZN19idAFEntity_GibbableC1Ev
	.set	_ZN19idAFEntity_GibbableC1Ev,_ZN19idAFEntity_GibbableC2Ev
	.globl _ZN18idAFEntity_GenericC1Ev
	.set	_ZN18idAFEntity_GenericC1Ev,_ZN18idAFEntity_GenericC2Ev
	.globl _ZN27idAFEntity_WithAttachedHeadC1Ev
	.set	_ZN27idAFEntity_WithAttachedHeadC1Ev,_ZN27idAFEntity_WithAttachedHeadC2Ev
	.globl _ZN18idAFEntity_VehicleC1Ev
	.set	_ZN18idAFEntity_VehicleC1Ev,_ZN18idAFEntity_VehicleC2Ev
	.globl _ZN24idAFEntity_VehicleSimpleC1Ev
	.set	_ZN24idAFEntity_VehicleSimpleC1Ev,_ZN24idAFEntity_VehicleSimpleC2Ev
	.globl _ZN28idAFEntity_VehicleFourWheelsC1Ev
	.set	_ZN28idAFEntity_VehicleFourWheelsC1Ev,_ZN28idAFEntity_VehicleFourWheelsC2Ev
	.globl _ZN27idAFEntity_VehicleSixWheelsC1Ev
	.set	_ZN27idAFEntity_VehicleSixWheelsC1Ev,_ZN27idAFEntity_VehicleSixWheelsC2Ev
	.globl _ZN20idAFEntity_SteamPipeC1Ev
	.set	_ZN20idAFEntity_SteamPipeC1Ev,_ZN20idAFEntity_SteamPipeC2Ev
	.globl _ZN26idAFEntity_ClawFourFingersC1Ev
	.set	_ZN26idAFEntity_ClawFourFingersC1Ev,_ZN26idAFEntity_ClawFourFingersC2Ev
	.globl _ZN14idMultiModelAFD1Ev
	.set	_ZN14idMultiModelAFD1Ev,_ZN14idMultiModelAFD2Ev
	.weak	_ZN7idChainD1Ev
	.set	_ZN7idChainD1Ev,_ZN7idChainD2Ev
	.weak	_ZN6idDictD1Ev
	.set	_ZN6idDictD1Ev,_ZN6idDictD2Ev
	.section	.rodata
	.align 2
	.set	.LANCHOR2,. + 0
	.type	_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE13wheelBodyKeys, @object
	.size	_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE13wheelBodyKeys, 24
_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE13wheelBodyKeys:
	.long	.LC152
	.long	.LC153
	.long	.LC158
	.long	.LC159
	.long	.LC154
	.long	.LC155
	.type	_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE14wheelJointKeys, @object
	.size	_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE14wheelJointKeys, 24
_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE14wheelJointKeys:
	.long	.LC148
	.long	.LC149
	.long	.LC160
	.long	.LC161
	.long	.LC150
	.long	.LC151
	.type	_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE17steeringHingeKeys, @object
	.size	_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE17steeringHingeKeys, 16
_ZZN27idAFEntity_VehicleSixWheels5SpawnEvE17steeringHingeKeys:
	.long	.LC156
	.long	.LC157
	.long	.LC162
	.long	.LC163
	.type	_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE13wheelBodyKeys, @object
	.size	_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE13wheelBodyKeys, 16
_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE13wheelBodyKeys:
	.long	.LC152
	.long	.LC153
	.long	.LC154
	.long	.LC155
	.type	_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE14wheelJointKeys, @object
	.size	_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE14wheelJointKeys, 16
_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE14wheelJointKeys:
	.long	.LC148
	.long	.LC149
	.long	.LC150
	.long	.LC151
	.type	_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE17steeringHingeKeys, @object
	.size	_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE17steeringHingeKeys, 8
_ZZN28idAFEntity_VehicleFourWheels5SpawnEvE17steeringHingeKeys:
	.long	.LC156
	.long	.LC157
	.type	_ZZN24idAFEntity_VehicleSimple5SpawnEvE14wheelJointKeys, @object
	.size	_ZZN24idAFEntity_VehicleSimple5SpawnEvE14wheelJointKeys, 16
_ZZN24idAFEntity_VehicleSimple5SpawnEvE14wheelJointKeys:
	.long	.LC148
	.long	.LC149
	.long	.LC150
	.long	.LC151
	.type	_ZL19clawConstraintNames, @object
	.size	_ZL19clawConstraintNames, 16
_ZL19clawConstraintNames:
	.long	.LC164
	.long	.LC165
	.long	.LC166
	.long	.LC167
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC1:
	.4byte	1056964608
.LC5:
	.4byte	1501560836
.LC6:
	.4byte	939524096
.LC9:
	.4byte	-997900288
.LC49:
	.4byte	0
.LC52:
	.4byte	981668463
.LC54:
	.4byte	1082130432
.LC55:
	.4byte	1073741824
.LC56:
	.4byte	-1073741824
.LC60:
	.4byte	1117782016
.LC61:
	.4byte	1128792064
.LC63:
	.4byte	1069547520
.LC64:
	.4byte	1123024896
.LC66:
	.4byte	1114636288
.LC70:
	.4byte	-1082130432
.LC71:
	.4byte	1063675494
.LC76:
	.4byte	1107296256
.LC119:
	.4byte	1047527424
.LC120:
	.4byte	-2147483648
.LC121:
	.4byte	1006632960
.LC122:
	.4byte	1077936128
.LC123:
	.4byte	1098907648
.LC140:
	.4byte	1127481344
.LC147:
	.4byte	1117126656
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	_ZN15idAFEntity_Base14eventCallbacksE, @object
	.size	_ZN15idAFEntity_Base14eventCallbacksE, 24
_ZN15idAFEntity_Base14eventCallbacksE:
	.long	_ZL24EV_SetConstraintPosition
	.long	_ZN15idAFEntity_Base27Event_SetConstraintPositionEPKcRK6idVec3
	.long	0
	.long	0
	.long	0
	.long	0
	.type	_ZN19idAFEntity_Gibbable14eventCallbacksE, @object
	.size	_ZN19idAFEntity_Gibbable14eventCallbacksE, 36
_ZN19idAFEntity_Gibbable14eventCallbacksE:
	.long	EV_Gib
	.long	_ZN19idAFEntity_Gibbable9Event_GibEPKc
	.long	0
	.long	EV_Gibbed
	.long	_ZN7idClass12Event_RemoveEv
	.long	0
	.long	0
	.long	0
	.long	0
	.type	_ZN18idAFEntity_Generic14eventCallbacksE, @object
	.size	_ZN18idAFEntity_Generic14eventCallbacksE, 24
_ZN18idAFEntity_Generic14eventCallbacksE:
	.long	EV_Activate
	.long	_ZN18idAFEntity_Generic14Event_ActivateEP8idEntity
	.long	0
	.long	0
	.long	0
	.long	0
	.type	_ZN27idAFEntity_WithAttachedHead14eventCallbacksE, @object
	.size	_ZN27idAFEntity_WithAttachedHead14eventCallbacksE, 36
_ZN27idAFEntity_WithAttachedHead14eventCallbacksE:
	.long	EV_Gib
	.long	_ZN27idAFEntity_WithAttachedHead9Event_GibEPKc
	.long	0
	.long	EV_Activate
	.long	_ZN27idAFEntity_WithAttachedHead14Event_ActivateEP8idEntity
	.long	0
	.long	0
	.long	0
	.long	0
	.type	_ZN26idAFEntity_ClawFourFingers14eventCallbacksE, @object
	.size	_ZN26idAFEntity_ClawFourFingers14eventCallbacksE, 36
_ZN26idAFEntity_ClawFourFingers14eventCallbacksE:
	.long	_ZL17EV_SetFingerAngle
	.long	_ZN26idAFEntity_ClawFourFingers20Event_SetFingerAngleEf
	.long	0
	.long	_ZL14EV_StopFingers
	.long	_ZN26idAFEntity_ClawFourFingers17Event_StopFingersEv
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC2:
	.string	"idle"
	.zero	3
.LC3:
	.string	">>> TRACE_CLIPMODEL idAFEntity_Base::Spawn %p %s\r\n"
	.zero	1
.LC7:
	.string	"0"
	.zero	2
.LC8:
	.string	"gib"
.LC10:
	.string	"idMultiModelAF"
	.zero	1
.LC11:
	.string	"idEntity"
	.zero	3
.LC12:
	.string	"idChain"
.LC13:
	.string	"idAFAttachment"
	.zero	1
.LC14:
	.string	"idAnimatedEntity"
	.zero	3
.LC15:
	.string	"SetConstraintPosition"
	.zero	2
.LC16:
	.string	"sv"
	.zero	1
.LC17:
	.string	"idAFEntity_Base"
.LC18:
	.string	"s"
	.zero	2
.LC19:
	.string	"<gibbed>"
	.zero	3
.LC20:
	.string	"idAFEntity_Gibbable"
.LC21:
	.string	"idAFEntity_Generic"
	.zero	1
.LC22:
	.string	"idAFEntity_WithAttachedHead"
.LC23:
	.string	"idAFEntity_Vehicle"
	.zero	1
.LC24:
	.string	"idAFEntity_VehicleSimple"
	.zero	3
.LC25:
	.string	"idAFEntity_VehicleFourWheels"
	.zero	3
.LC26:
	.string	"idAFEntity_VehicleSixWheels"
.LC27:
	.string	"idAFEntity_SteamPipe"
	.zero	3
.LC28:
	.string	"setFingerAngle"
	.zero	1
.LC29:
	.string	"f"
	.zero	2
.LC30:
	.string	"stopFingers"
.LC31:
	.string	"idAFEntity_ClawFourFingers"
	.zero	1
.LC32:
	.string	"articulatedFigure"
	.zero	2
.LC33:
	.string	"*unknown*"
	.zero	2
.LC34:
	.string	"idAFEntity_Base::LoadAF: Couldn't load af file '%s' on entity '%s'"
	.zero	1
.LC35:
	.string	""
	.zero	3
.LC36:
	.string	"idAFEntity_VehicleSixWheels '%s' no '%s' specified"
	.zero	1
.LC37:
	.string	"idAFEntity_VehicleSixWheels '%s' can't find wheel body '%s'"
.LC38:
	.string	"idAFEntity_VehicleSixWheels '%s' can't find wheel joint '%s'"
	.zero	3
.LC39:
	.string	"idAFEntity_VehicleSixWheels '%s': can't find steering hinge '%s'"
	.zero	3
.LC40:
	.string	"idAFEntity_VehicleFourWheels '%s' no '%s' specified"
.LC41:
	.string	"idAFEntity_VehicleFourWheels '%s' can't find wheel body '%s'"
	.zero	3
.LC42:
	.string	"idAFEntity_VehicleFourWheels '%s' can't find wheel joint '%s'"
	.zero	2
.LC43:
	.string	"idAFEntity_VehicleFourWheels '%s': can't find steering hinge '%s'"
	.zero	2
.LC44:
	.string	"init_velocity"
	.zero	2
.LC45:
	.string	"0 0 0"
	.zero	2
.LC46:
	.string	"init_avelocity"
	.zero	1
.LC47:
	.string	"init_velocityDelay"
	.zero	1
.LC48:
	.string	"init_avelocityDelay"
.LC50:
	.string	"Unknown damageDef '%s'"
	.zero	1
.LC51:
	.string	"gibNonSolid"
.LC53:
	.string	"snd_gibbed"
	.zero	1
.LC57:
	.string	"idAFEntity_VehicleSimple '%s' no '%s' specified"
.LC58:
	.string	"idAFEntity_VehicleSimple '%s' can't find wheel joint '%s'"
	.zero	2
.LC59:
	.string	"suspension%d"
	.zero	3
.LC67:
	.string	"snd_bounce"
	.zero	1
.LC68:
	.string	"%d"
	.zero	1
.LC69:
	.string	"model"
	.zero	2
.LC72:
	.string	"joint"
	.zero	2
.LC73:
	.string	"drop"
	.zero	3
.LC74:
	.string	"links"
	.zero	2
.LC75:
	.string	"3"
	.zero	2
.LC77:
	.string	"%f"
	.zero	1
.LC78:
	.string	"length"
	.zero	1
.LC79:
	.string	"width"
	.zero	2
.LC80:
	.string	"8"
	.zero	2
.LC81:
	.string	"density"
.LC82:
	.string	"0.2"
.LC83:
	.string	"link"
	.zero	3
.LC84:
	.string	"idAFAttachment::idAFAttachment( void ) size %d\r\n"
	.zero	3
.LC85:
	.string	"bleed"
	.zero	2
.LC86:
	.string	"%i"
	.zero	1
.LC87:
	.string	"idAFEntity_Base::idAFEntity_Base( void ) size %d\r\n"
	.zero	1
.LC88:
	.string	"bindConstraint "
.LC89:
	.string	"bind"
	.zero	3
.LC90:
	.string	"bindToJoint"
.LC91:
	.string	"bindToBody"
	.zero	1
.LC92:
	.string	"idClaw_FourFingers '%s': can't find claw constraint '%s'"
	.zero	3
.LC93:
	.string	"eyes"
	.zero	3
.LC94:
	.string	"steeringWheel"
	.zero	2
.LC95:
	.string	"muzzlesmoke"
.LC96:
	.string	"eyesJoint"
	.zero	2
.LC97:
	.string	"steeringWheelJoint"
	.zero	1
.LC98:
	.string	"idAFEntity_Vehicle '%s' no eyes joint specified"
.LC99:
	.string	"idAFEntity_Vehicle '%s' no steering wheel joint specified"
	.zero	2
.LC100:
	.string	"wheelRadius"
.LC101:
	.string	"20"
	.zero	1
.LC102:
	.string	"steerSpeed"
	.zero	1
.LC103:
	.string	"5"
	.zero	2
.LC104:
	.string	"smoke_vehicle_dust"
	.zero	1
.LC105:
	.string	"Couldn't load af file on entity '%s'"
	.zero	3
.LC106:
	.string	"nodrop"
	.zero	1
.LC107:
	.string	"idAFEntity_Gibbable::idAFEntity_Gibbable( void ) size %d\r\n"
	.zero	1
.LC108:
	.string	"model_gib"
	.zero	2
.LC109:
	.string	"gib model '%s' has different number of joints than model '%s'"
	.zero	2
.LC110:
	.string	">>> TRACE_CLIPMODEL idAFEntity_Gibbable::Spawn %p %s\r\n"
	.zero	1
.LC111:
	.string	"idAFEntity_Generic::idAFEntity_Generic( void ) size %d\r\n"
	.zero	3
.LC112:
	.string	"idAFEntity_WithAttachedHead::idAFEntity_WithAttachedHead() size %d\r\n"
	.zero	3
.LC113:
	.string	"def_head"
	.zero	3
.LC114:
	.string	"head_joint"
	.zero	1
.LC115:
	.string	"Joint '%s' not found for 'head_joint' on '%s'"
	.zero	2
.LC116:
	.string	"%s_head"
.LC117:
	.string	"dead"
	.zero	3
.LC118:
	.string	"idAFEntity_Vehicle::idAFEntity_Vehicle( void ) size %d\r\n"
	.zero	3
.LC124:
	.string	"idAFEntity_VehicleSimple::idAFEntity_VehicleSimple( void ) size %d\r\n"
	.zero	3
.LC125:
	.string	"idAFEntity_VehicleFourWheels::idAFEntity_VehicleFourWheels( void ) size %d\r\n"
	.zero	3
.LC126:
	.string	"idAFEntity_VehicleSixWheels::idAFEntity_VehicleSixWheels( void ) size %d\r\n"
	.zero	1
.LC127:
	.string	"idAFEntity_SteamPipe::idAFEntity_SteamPipe( void ) size %d\r\n"
	.zero	3
.LC128:
	.string	"model_steam"
.LC129:
	.string	"2000"
	.zero	3
.LC130:
	.string	"10"
	.zero	1
.LC131:
	.string	"steamBody"
	.zero	2
.LC132:
	.string	"steamForce"
	.zero	1
.LC133:
	.string	"steamUpForce"
	.zero	3
.LC134:
	.string	"idAFEntity_ClawFourFingers::idAFEntity_ClawFourFingers( void ) size %d\r\n"
	.zero	3
.LC135:
	.string	"classname"
	.zero	2
.LC136:
	.string	"body "
	.zero	2
.LC137:
	.string	"%f %f %f %f %f %f"
	.zero	2
.LC138:
	.string	"origin"
	.zero	1
.LC139:
	.string	"af_pose"
.LC141:
	.string	"angle"
	.zero	2
.LC142:
	.string	"spawnclass"
	.zero	1
.LC143:
	.string	"skin"
	.zero	3
.LC144:
	.string	"1"
	.zero	2
.LC145:
	.string	"def_drop%sAF"
	.zero	3
.LC146:
	.string	"skin_drop%s"
.LC148:
	.string	"wheelJointFrontLeft"
.LC149:
	.string	"wheelJointFrontRight"
	.zero	3
.LC150:
	.string	"wheelJointRearLeft"
	.zero	1
.LC151:
	.string	"wheelJointRearRight"
.LC152:
	.string	"wheelBodyFrontLeft"
	.zero	1
.LC153:
	.string	"wheelBodyFrontRight"
.LC154:
	.string	"wheelBodyRearLeft"
	.zero	2
.LC155:
	.string	"wheelBodyRearRight"
	.zero	1
.LC156:
	.string	"steeringHingeFrontLeft"
	.zero	1
.LC157:
	.string	"steeringHingeFrontRight"
.LC158:
	.string	"wheelBodyMiddleLeft"
.LC159:
	.string	"wheelBodyMiddleRight"
	.zero	3
.LC160:
	.string	"wheelJointMiddleLeft"
	.zero	3
.LC161:
	.string	"wheelJointMiddleRight"
	.zero	2
.LC162:
	.string	"steeringHingeRearLeft"
	.zero	2
.LC163:
	.string	"steeringHingeRearRight"
	.zero	1
.LC164:
	.string	"claw1"
	.zero	2
.LC165:
	.string	"claw2"
	.zero	2
.LC166:
	.string	"claw3"
	.zero	2
.LC167:
	.string	"claw4"
	.section	".bss"
	.align 3
	.set	.LANCHOR0,. + 0
	.type	_ZN14idMultiModelAF4TypeE, @object
	.size	_ZN14idMultiModelAF4TypeE, 80
_ZN14idMultiModelAF4TypeE:
	.zero	80
	.type	_ZN7idChain4TypeE, @object
	.size	_ZN7idChain4TypeE, 80
_ZN7idChain4TypeE:
	.zero	80
	.type	_ZN14idAFAttachment4TypeE, @object
	.size	_ZN14idAFAttachment4TypeE, 80
_ZN14idAFAttachment4TypeE:
	.zero	80
	.type	_ZN15idAFEntity_Base4TypeE, @object
	.size	_ZN15idAFEntity_Base4TypeE, 80
_ZN15idAFEntity_Base4TypeE:
	.zero	80
	.type	_ZN19idAFEntity_Gibbable4TypeE, @object
	.size	_ZN19idAFEntity_Gibbable4TypeE, 80
_ZN19idAFEntity_Gibbable4TypeE:
	.zero	80
	.type	_ZN18idAFEntity_Generic4TypeE, @object
	.size	_ZN18idAFEntity_Generic4TypeE, 80
_ZN18idAFEntity_Generic4TypeE:
	.zero	80
	.type	_ZN27idAFEntity_WithAttachedHead4TypeE, @object
	.size	_ZN27idAFEntity_WithAttachedHead4TypeE, 80
_ZN27idAFEntity_WithAttachedHead4TypeE:
	.zero	80
	.type	_ZN18idAFEntity_Vehicle4TypeE, @object
	.size	_ZN18idAFEntity_Vehicle4TypeE, 80
_ZN18idAFEntity_Vehicle4TypeE:
	.zero	80
	.type	_ZN24idAFEntity_VehicleSimple4TypeE, @object
	.size	_ZN24idAFEntity_VehicleSimple4TypeE, 80
_ZN24idAFEntity_VehicleSimple4TypeE:
	.zero	80
	.type	_ZN28idAFEntity_VehicleFourWheels4TypeE, @object
	.size	_ZN28idAFEntity_VehicleFourWheels4TypeE, 80
_ZN28idAFEntity_VehicleFourWheels4TypeE:
	.zero	80
	.type	_ZN27idAFEntity_VehicleSixWheels4TypeE, @object
	.size	_ZN27idAFEntity_VehicleSixWheels4TypeE, 80
_ZN27idAFEntity_VehicleSixWheels4TypeE:
	.zero	80
	.type	_ZN20idAFEntity_SteamPipe4TypeE, @object
	.size	_ZN20idAFEntity_SteamPipe4TypeE, 80
_ZN20idAFEntity_SteamPipe4TypeE:
	.zero	80
	.type	_ZN26idAFEntity_ClawFourFingers4TypeE, @object
	.size	_ZN26idAFEntity_ClawFourFingers4TypeE, 80
_ZN26idAFEntity_ClawFourFingers4TypeE:
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
	.type	_ZN14idMultiModelAF14eventCallbacksE, @object
	.size	_ZN14idMultiModelAF14eventCallbacksE, 12
_ZN14idMultiModelAF14eventCallbacksE:
	.zero	12
	.type	_ZN7idChain14eventCallbacksE, @object
	.size	_ZN7idChain14eventCallbacksE, 12
_ZN7idChain14eventCallbacksE:
	.zero	12
	.type	_ZN14idAFAttachment14eventCallbacksE, @object
	.size	_ZN14idAFAttachment14eventCallbacksE, 12
_ZN14idAFAttachment14eventCallbacksE:
	.zero	12
	.type	_ZL24EV_SetConstraintPosition, @object
	.size	_ZL24EV_SetConstraintPosition, 64
_ZL24EV_SetConstraintPosition:
	.zero	64
	.type	EV_Gib, @object
	.size	EV_Gib, 64
EV_Gib:
	.zero	64
	.type	EV_Gibbed, @object
	.size	EV_Gibbed, 64
EV_Gibbed:
	.zero	64
	.type	_ZN18idAFEntity_Vehicle14eventCallbacksE, @object
	.size	_ZN18idAFEntity_Vehicle14eventCallbacksE, 12
_ZN18idAFEntity_Vehicle14eventCallbacksE:
	.zero	12
	.type	_ZN24idAFEntity_VehicleSimple14eventCallbacksE, @object
	.size	_ZN24idAFEntity_VehicleSimple14eventCallbacksE, 12
_ZN24idAFEntity_VehicleSimple14eventCallbacksE:
	.zero	12
	.type	_ZN28idAFEntity_VehicleFourWheels14eventCallbacksE, @object
	.size	_ZN28idAFEntity_VehicleFourWheels14eventCallbacksE, 12
_ZN28idAFEntity_VehicleFourWheels14eventCallbacksE:
	.zero	12
	.type	_ZN27idAFEntity_VehicleSixWheels14eventCallbacksE, @object
	.size	_ZN27idAFEntity_VehicleSixWheels14eventCallbacksE, 12
_ZN27idAFEntity_VehicleSixWheels14eventCallbacksE:
	.zero	12
	.type	_ZN20idAFEntity_SteamPipe14eventCallbacksE, @object
	.size	_ZN20idAFEntity_SteamPipe14eventCallbacksE, 12
_ZN20idAFEntity_SteamPipe14eventCallbacksE:
	.zero	12
	.type	_ZL17EV_SetFingerAngle, @object
	.size	_ZL17EV_SetFingerAngle, 64
_ZL17EV_SetFingerAngle:
	.zero	64
	.type	_ZL14EV_StopFingers, @object
	.size	_ZL14EV_StopFingers, 64
_ZL14EV_StopFingers:
	.zero	64
	.type	_ZGVZN24idAFEntity_VehicleSimple5SpawnEvE9wheelPoly, @object
	.size	_ZGVZN24idAFEntity_VehicleSimple5SpawnEvE9wheelPoly, 8
_ZGVZN24idAFEntity_VehicleSimple5SpawnEvE9wheelPoly:
	.zero	8
	.type	_ZZN24idAFEntity_VehicleSimple5SpawnEvE9wheelPoly, @object
	.size	_ZZN24idAFEntity_VehicleSimple5SpawnEvE9wheelPoly, 48
_ZZN24idAFEntity_VehicleSimple5SpawnEvE9wheelPoly:
	.zero	48
	.section	".text"
.Letext0:
	.file 27 "<built-in>"
	.file 28 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 29 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/types.h"
	.file 30 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../sys/sys_public.h"
	.file 31 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Common.h"
	.file 32 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/FileSystem.h"
	.file 33 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Lib.h"
	.file 34 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/CmdArgs.h"
	.file 35 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Quat.h"
	.file 36 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Plane.h"
	.file 37 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Ode.h"
	.file 38 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Sphere.h"
	.file 39 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Box.h"
	.file 40 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/bv/Frustum.h"
	.file 41 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/DrawVert.h"
	.file 42 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/geometry/Surface.h"
	.file 43 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Token.h"
	.file 44 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Lexer.h"
	.file 45 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/File.h"
	.file 46 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/Parser.h"
	.file 47 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/StrList.h"
	.file 48 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/StrPool.h"
	.file 49 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/PlaneSet.h"
	.file 50 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/LangDict.h"
	.file 51 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/BitMsg.h"
	.file 52 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/MapFile.h"
	.file 53 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/CmdSystem.h"
	.file 54 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/UsercmdGen.h"
	.file 55 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclParticle.h"
	.file 56 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/DeclAF.h"
	.file 57 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Cinematic.h"
	.file 58 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Material.h"
	.file 59 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/Model.h"
	.file 60 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/RenderSystem.h"
	.file 61 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../sound/sound.h"
	.file 62 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../ui/UserInterface.h"
	.file 63 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../cm/CollisionModel.h"
	.file 64 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../tools/compilers/aas/AASFile.h"
	.file 65 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../game/Game.h"
	.file 66 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/NetworkSystem.h"
	.file 67 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../renderer/ModelManager.h"
	.file 68 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../tools/compilers/aas/AASFileManager.h"
	.file 69 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Session.h"
	.file 70 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../ui/ListGUI.h"
	.file 71 "d:/Data/Nintendo/DoomGX/src/game/gamesys/Event.h"
	.file 72 "d:/Data/Nintendo/DoomGX/src/game/gamesys/SaveGame.h"
	.file 73 "d:/Data/Nintendo/DoomGX/src/game/Entity.h"
	.file 74 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/containers/Hierarchy.h"
	.file 75 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Program.h"
	.file 76 "d:/Data/Nintendo/DoomGX/src/game/anim/Anim.h"
	.file 77 "d:/Data/Nintendo/DoomGX/src/game/physics/Physics.h"
	.file 78 "d:/Data/Nintendo/DoomGX/src/game/ai/AAS.h"
	.file 79 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/Console.h"
	.file 80 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Curve.h"
	.file 81 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../idlib/math/Simd.h"
	.file 82 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/BuildVersion.h"
	.file 83 "d:/Data/Nintendo/DoomGX/src/game/../idlib/precompiled.h"
	.file 84 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/EventLoop.h"
	.file 85 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/EditField.h"
	.file 86 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/AsyncNetwork.h"
	.file 87 "d:/Data/Nintendo/DoomGX/src/game/../idlib/../framework/async/AsyncServer.h"
	.file 88 "d:/Data/Nintendo/DoomGX/src/game/gamesys/SysCvar.h"
	.file 89 "d:/Data/Nintendo/DoomGX/src/game/MultiplayerGame.h"
	.file 90 "d:/Data/Nintendo/DoomGX/src/game/Weapon.h"
	.file 91 "d:/Data/Nintendo/DoomGX/src/game/ai/AI.h"
	.file 92 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Compiler.h"
	.file 93 "d:/Data/Nintendo/DoomGX/src/game/script/Script_Thread.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x419c7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF8096
	.byte	0x4
	.4byte	.LASF8097
	.4byte	.LASF8098
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_ranges0+0x5010
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x1c
	.byte	0xd4
	.4byte	0x34
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF272
	.byte	0xc
	.byte	0x1b
	.byte	0
	.4byte	0x8e
	.uleb128 0x5
	.string	"gpr"
	.byte	0x1b
	.byte	0
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"fpr"
	.byte	0x1b
	.byte	0
	.4byte	0x8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1b
	.byte	0
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x1b
	.byte	0
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x1b
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1e
	.byte	0xbe
	.4byte	0x117
	.uleb128 0xd
	.byte	0x4
	.byte	0x1e
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
	.byte	0x1e
	.byte	0xe7
	.4byte	0x194
	.uleb128 0xf
	.byte	0x18
	.byte	0x1e
	.2byte	0x102
	.4byte	.LASF55
	.4byte	0x238
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1e
	.2byte	0x103
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1e
	.2byte	0x104
	.4byte	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1e
	.2byte	0x105
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1e
	.2byte	0x106
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1e
	.2byte	0x107
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1e
	.2byte	0x108
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1e
	.2byte	0x109
	.4byte	0x1d0
	.uleb128 0x12
	.byte	0x4
	.byte	0x1e
	.2byte	0x1bd
	.4byte	.LASF3744
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
	.byte	0x1e
	.2byte	0x1c2
	.4byte	0x244
	.uleb128 0xf
	.byte	0xc
	.byte	0x1e
	.2byte	0x1c4
	.4byte	.LASF56
	.4byte	0x2b0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1e
	.2byte	0x1c5
	.4byte	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"ip"
	.byte	0x1e
	.2byte	0x1c6
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1e
	.2byte	0x1c7
	.4byte	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1e
	.2byte	0x1c8
	.4byte	0x276
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x4
	.byte	0x1f
	.byte	0x70
	.4byte	0x2bc
	.4byte	0x7c6
	.uleb128 0x15
	.4byte	.LASF120
	.4byte	0x2ff70
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1f
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
	.byte	0x1f
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
	.4byte	0x1211d
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.4byte	0x327aa
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.4byte	0x17767
	.uleb128 0x19
	.4byte	0x1494e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.4byte	0x176f4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.4byte	0xffe1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
	.byte	0xc6
	.4byte	.LASF109
	.4byte	0x151b6
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x1f
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
	.byte	0x10
	.byte	0xd0
	.4byte	0x7cc
	.4byte	0xc2a
	.uleb128 0x15
	.4byte	.LASF121
	.4byte	0x2ff70
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF123
	.byte	0x10
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
	.byte	0x10
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
	.byte	0x10
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
	.byte	0x10
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
	.4byte	0x327b5
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF127
	.byte	0x10
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
	.4byte	0x207cc
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF129
	.byte	0x10
	.byte	0xdd
	.4byte	.LASF130
	.4byte	0x207cc
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
	.byte	0x10
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
	.byte	0x10
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
	.byte	0x10
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
	.byte	0x10
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
	.byte	0x10
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
	.4byte	0x327b5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF141
	.byte	0x10
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
	.4byte	0x327b5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF143
	.byte	0x10
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
	.4byte	0x327b5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF145
	.byte	0x10
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
	.4byte	0x327b5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF147
	.byte	0x10
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
	.byte	0x10
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
	.4byte	0x176f4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF151
	.byte	0x10
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
	.4byte	0x176f4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF153
	.byte	0x10
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
	.byte	0x10
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
	.4byte	0x327b5
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF157
	.byte	0x10
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
	.byte	0x10
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
	.byte	0x10
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
	.byte	0x10
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
	.4byte	0x327b5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x10696
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF165
	.byte	0x10
	.2byte	0x102
	.4byte	.LASF245
	.4byte	0x1494e
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.4byte	0x7cc
	.byte	0x1
	.4byte	0xbf7
	.4byte	0xc03
	.uleb128 0x17
	.4byte	0x327b5
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF1329
	.byte	0x10
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
	.4byte	0x15e19
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7cc
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0x4
	.byte	0x20
	.byte	0x94
	.4byte	0xc30
	.4byte	0x1556
	.uleb128 0x15
	.4byte	.LASF167
	.4byte	0x2ff70
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF168
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.4byte	0x32787
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF174
	.byte	0x20
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
	.4byte	0x32787
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF176
	.byte	0x20
	.byte	0xa4
	.4byte	.LASF177
	.4byte	0x32792
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
	.byte	0x20
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
	.4byte	0x32792
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF180
	.byte	0x20
	.byte	0xac
	.4byte	.LASF181
	.4byte	0x32798
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
	.byte	0x20
	.byte	0xb1
	.4byte	.LASF183
	.4byte	0x32798
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
	.byte	0x20
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
	.4byte	0x32798
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF186
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
	.byte	0xca
	.4byte	.LASF201
	.4byte	0x1784c
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.4byte	0x3279e
	.uleb128 0x19
	.4byte	0x327a4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF212
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
	.byte	0xe5
	.4byte	.LASF219
	.4byte	0x10696
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
	.byte	0x20
	.byte	0xe7
	.4byte	.LASF221
	.4byte	0x10696
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
	.byte	0x20
	.byte	0xe9
	.4byte	.LASF223
	.4byte	0x10696
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
	.byte	0x20
	.byte	0xeb
	.4byte	.LASF225
	.4byte	0x10696
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
	.4byte	0x1781c
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF226
	.byte	0x20
	.byte	0xed
	.4byte	.LASF227
	.4byte	0x10696
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
	.byte	0x20
	.byte	0xef
	.4byte	.LASF229
	.4byte	0x10696
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
	.byte	0x20
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
	.4byte	0x10696
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF232
	.byte	0x20
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
	.4byte	0x312a2
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF234
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
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
	.byte	0x20
	.2byte	0x10c
	.4byte	.LASF253
	.4byte	0x10696
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
	.byte	0x20
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
	.byte	0x20
	.2byte	0x113
	.4byte	.LASF257
	.4byte	0x178d0
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
	.byte	0x20
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
	.byte	0x20
	.2byte	0x118
	.4byte	.LASF261
	.4byte	0x1494e
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
	.byte	0x20
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
	.byte	0x20
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
	.4byte	0x32787
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
	.byte	0x21
	.byte	0x4b
	.4byte	0x8e
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x21
	.byte	0x4d
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x21
	.byte	0x51
	.4byte	0xac
	.uleb128 0x21
	.4byte	.LASF295
	.2byte	0x400
	.byte	0x21
	.byte	0x96
	.4byte	0x15b2
	.uleb128 0x6
	.4byte	.LASF270
	.byte	0x21
	.byte	0x98
	.4byte	0x15b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF295
	.byte	0x21
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
	.byte	0x22
	.byte	0x28
	.4byte	0x1789
	.uleb128 0x26
	.4byte	.LASF274
	.byte	0x22
	.byte	0x41
	.4byte	0x21e8
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x40
	.uleb128 0x27
	.4byte	.LASF275
	.byte	0x22
	.byte	0x42
	.4byte	0x21e8
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.2byte	0x800
	.uleb128 0x28
	.4byte	.LASF276
	.byte	0x22
	.byte	0x44
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF277
	.byte	0x22
	.byte	0x45
	.4byte	0x120e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF278
	.byte	0x22
	.byte	0x46
	.4byte	0x120f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF273
	.byte	0x22
	.byte	0x2a
	.byte	0x1
	.4byte	0x1646
	.4byte	0x164d
	.uleb128 0x17
	.4byte	0x12106
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF273
	.byte	0x22
	.byte	0x2b
	.byte	0x1
	.4byte	0x165e
	.4byte	0x166f
	.uleb128 0x17
	.4byte	0x12106
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x22
	.byte	0x2d
	.4byte	.LASF287
	.byte	0x1
	.4byte	0x1684
	.4byte	0x1690
	.uleb128 0x17
	.4byte	0x12106
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1210c
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF279
	.byte	0x22
	.byte	0x30
	.4byte	.LASF281
	.4byte	0xac
	.byte	0x1
	.4byte	0x16a9
	.4byte	0x16b0
	.uleb128 0x17
	.4byte	0x12117
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF280
	.byte	0x22
	.byte	0x32
	.4byte	.LASF282
	.4byte	0xe5
	.byte	0x1
	.4byte	0x16c9
	.4byte	0x16d5
	.uleb128 0x17
	.4byte	0x12117
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF283
	.byte	0x22
	.byte	0x35
	.4byte	.LASF284
	.4byte	0xe5
	.byte	0x1
	.4byte	0x16ee
	.4byte	0x1704
	.uleb128 0x17
	.4byte	0x12117
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
	.byte	0x22
	.byte	0x3a
	.4byte	.LASF288
	.byte	0x1
	.4byte	0x1719
	.4byte	0x172a
	.uleb128 0x17
	.4byte	0x12106
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF289
	.byte	0x22
	.byte	0x3c
	.4byte	.LASF290
	.byte	0x1
	.4byte	0x173f
	.4byte	0x174b
	.uleb128 0x17
	.4byte	0x12106
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x22
	.byte	0x3d
	.4byte	.LASF292
	.byte	0x1
	.4byte	0x1760
	.4byte	0x1767
	.uleb128 0x17
	.4byte	0x12106
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF293
	.byte	0x22
	.byte	0x3e
	.4byte	.LASF294
	.4byte	0x1211d
	.byte	0x1
	.4byte	0x177c
	.uleb128 0x17
	.4byte	0x12106
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF296
	.byte	0x1
	.byte	0xe
	.byte	0x6c
	.4byte	0x20b6
	.uleb128 0x2e
	.byte	0x4
	.byte	0xe
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
	.4byte	.LASF8099
	.byte	0x4
	.byte	0xe
	.byte	0xe8
	.byte	0x3
	.4byte	0x17ec
	.uleb128 0x30
	.string	"i"
	.byte	0xe
	.byte	0xe9
	.4byte	0x1567
	.uleb128 0x30
	.string	"f"
	.byte	0xe
	.byte	0xea
	.4byte	0x109
	.byte	0
	.uleb128 0x31
	.string	"PI"
	.byte	0xe
	.byte	0xcd
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF304
	.byte	0xe
	.byte	0xce
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF305
	.byte	0xe
	.byte	0xcf
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF306
	.byte	0xe
	.byte	0xd0
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"E"
	.byte	0xe
	.byte	0xd1
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF307
	.byte	0xe
	.byte	0xd2
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF308
	.byte	0xe
	.byte	0xd3
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF309
	.byte	0xe
	.byte	0xd4
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF310
	.byte	0xe
	.byte	0xd5
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF311
	.byte	0xe
	.byte	0xd6
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF312
	.byte	0xe
	.byte	0xd7
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF313
	.byte	0xe
	.byte	0xd8
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF314
	.byte	0xe
	.byte	0xd9
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF315
	.byte	0xe
	.byte	0xda
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF316
	.byte	0xe
	.byte	0xdb
	.4byte	0x20b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF317
	.byte	0xe
	.byte	0xed
	.4byte	0x20bb
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF318
	.byte	0xe
	.byte	0xee
	.4byte	0x15c9
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF60
	.byte	0xe
	.byte	0x6f
	.4byte	.LASF2642
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF319
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xa
	.byte	0x28
	.4byte	0x21e8
	.uleb128 0x39
	.4byte	.LASF451
	.byte	0xa
	.byte	0x34
	.4byte	0x21e8
	.byte	0x1
	.byte	0x1
	.2byte	0x7fff
	.uleb128 0x28
	.4byte	.LASF452
	.byte	0xa
	.byte	0x37
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF450
	.byte	0xa
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
	.byte	0xa
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
	.byte	0xa
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
	.byte	0xa
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
	.byte	0xa
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
	.byte	0xa
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
	.byte	0xa
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
	.byte	0x1a
	.byte	0x33
	.4byte	0x33e5
	.uleb128 0x6
	.4byte	.LASF590
	.byte	0x1a
	.byte	0x35
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"yaw"
	.byte	0x1a
	.byte	0x36
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF591
	.byte	0x1a
	.byte	0x37
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF589
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x1a
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
	.byte	0x6
	.2byte	0x14d
	.4byte	0x3d48
	.uleb128 0x46
	.string	"mat"
	.byte	0x6
	.2byte	0x198
	.4byte	0x5636
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF643
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
	.byte	0x37
	.4byte	0x55ee
	.uleb128 0x4b
	.string	"mat"
	.byte	0x6
	.byte	0x6a
	.4byte	0x55ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF852
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x23
	.byte	0x30
	.4byte	0x5b94
	.uleb128 0x5
	.string	"x"
	.byte	0x23
	.byte	0x32
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"y"
	.byte	0x23
	.byte	0x33
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"z"
	.byte	0x23
	.byte	0x34
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"w"
	.byte	0x23
	.byte	0x35
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF886
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
	.2byte	0x132
	.4byte	0x5e49
	.uleb128 0x13
	.string	"x"
	.byte	0x23
	.2byte	0x134
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"y"
	.byte	0x23
	.2byte	0x135
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"z"
	.byte	0x23
	.2byte	0x136
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF922
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x23
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
	.byte	0x15
	.byte	0x2e
	.4byte	0x6204
	.uleb128 0x28
	.4byte	.LASF940
	.byte	0x15
	.byte	0x5a
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x4b
	.string	"vec"
	.byte	0x15
	.byte	0x5b
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF941
	.byte	0x15
	.byte	0x5c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF942
	.byte	0x15
	.byte	0x5d
	.4byte	0x353e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF943
	.byte	0x15
	.byte	0x5e
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF939
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x6
	.2byte	0x2fc
	.4byte	0x6849
	.uleb128 0x46
	.string	"mat"
	.byte	0x6
	.2byte	0x33a
	.4byte	0x6849
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF977
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
	.2byte	0x480
	.4byte	0x6da4
	.uleb128 0x46
	.string	"mat"
	.byte	0x6
	.2byte	0x4b1
	.4byte	0x6da4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF1015
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
	.2byte	0x5a9
	.4byte	0x7352
	.uleb128 0x46
	.string	"mat"
	.byte	0x6
	.2byte	0x5dc
	.4byte	0x7352
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF1048
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
	.2byte	0x6fa
	.4byte	0x8d5d
	.uleb128 0x48
	.4byte	.LASF1084
	.byte	0x6
	.2byte	0x7b2
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF1085
	.byte	0x6
	.2byte	0x7b3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF796
	.byte	0x6
	.2byte	0x7b4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x46
	.string	"mat"
	.byte	0x6
	.2byte	0x7b5
	.4byte	0x21fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF797
	.byte	0x6
	.2byte	0x7b7
	.4byte	0x5073
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF798
	.byte	0x6
	.2byte	0x7b8
	.4byte	0x21fe
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x49
	.4byte	.LASF799
	.byte	0x6
	.2byte	0x7b9
	.4byte	0xac
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF1083
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
	.2byte	0x7af
	.4byte	.LASF2355
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF850
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
	.2byte	0x7c4
	.4byte	.LASF8100
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0xd
	.byte	0x5c
	.4byte	0x9a75
	.uleb128 0x4b
	.string	"num"
	.byte	0xd
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0xd
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0xd
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0xd
	.byte	0x92
	.4byte	0x21fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0xd
	.byte	0x5f
	.4byte	0x9a75
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0xd
	.byte	0x60
	.4byte	0x9a89
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0x11
	.byte	0x28
	.4byte	0xa829
	.uleb128 0x4b
	.string	"b"
	.byte	0x11
	.byte	0x6d
	.4byte	0xa829
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1531
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.byte	0x11
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
	.4byte	0x2ff70
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
	.byte	0x1
	.uleb128 0x19
	.4byte	0x32c65
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
	.4byte	0x32c81
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
	.4byte	0x237be
	.byte	0x1
	.4byte	0xbd0f
	.4byte	0xbd1b
	.uleb128 0x17
	.4byte	0x32c81
	.byte	0x1
	.uleb128 0x19
	.4byte	0x32c65
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
	.4byte	0x1a2d2
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
	.4byte	0x32c81
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
	.4byte	0x237be
	.byte	0x1
	.4byte	0xbd7e
	.4byte	0xbd8a
	.uleb128 0x17
	.4byte	0x32c81
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
	.4byte	0x237be
	.byte	0x1
	.4byte	0xbda3
	.4byte	0xbdaf
	.uleb128 0x17
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x1a2d2
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x1a2d2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x94ce
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x32c87
	.uleb128 0x19
	.4byte	0x32c87
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1785
	.byte	0x1
	.byte	0x4b
	.4byte	.LASF1786
	.4byte	0x32c8d
	.byte	0x1
	.4byte	0xbeea
	.4byte	0xbf00
	.uleb128 0x17
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c8d
	.byte	0x1
	.4byte	0xbf48
	.4byte	0xbf4f
	.uleb128 0x17
	.4byte	0x1a2d2
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1791
	.byte	0x1
	.byte	0x52
	.4byte	.LASF1792
	.4byte	0x32c8d
	.byte	0x1
	.4byte	0xbf68
	.4byte	0xbf6f
	.uleb128 0x17
	.4byte	0x1a2d2
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.4byte	0x32c81
	.byte	0x1
	.uleb128 0x19
	.4byte	0x32c93
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
	.4byte	0x32c81
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
	.4byte	0x32c8d
	.byte	0x1
	.4byte	0xc0b7
	.4byte	0xc0cd
	.uleb128 0x17
	.4byte	0x1a2d2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x32c65
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x13968
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
	.byte	0x1
	.uleb128 0x19
	.4byte	0x32c65
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x1a2d2
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
	.4byte	0x32c81
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
	.4byte	0x32c81
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
	.byte	0x7
	.byte	0x28
	.4byte	0xc56e
	.uleb128 0x5
	.string	"q"
	.byte	0x7
	.byte	0x2b
	.4byte	0x567e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"t"
	.byte	0x7
	.byte	0x2c
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF1857
	.byte	0x30
	.byte	0x7
	.byte	0x3f
	.4byte	0xc795
	.uleb128 0x4b
	.string	"mat"
	.byte	0x7
	.byte	0x57
	.4byte	0xc795
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1858
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x2a
	.byte	0x2b
	.4byte	0xc7f0
	.uleb128 0x6
	.4byte	.LASF1877
	.byte	0x2a
	.byte	0x2c
	.4byte	0xc7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1878
	.byte	0x2a
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
	.byte	0x2a
	.byte	0x2e
	.4byte	0xc7c7
	.uleb128 0x2d
	.4byte	.LASF1880
	.byte	0x10
	.byte	0xd
	.byte	0x5c
	.4byte	0xcdac
	.uleb128 0x4b
	.string	"num"
	.byte	0xd
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0xd
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0xd
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0xd
	.byte	0x92
	.4byte	0xc538
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0xd
	.byte	0x5f
	.4byte	0xcdac
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0xd
	.byte	0x60
	.4byte	0xcdc0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
	.byte	0x5c
	.4byte	0xd39b
	.uleb128 0x4b
	.string	"num"
	.byte	0xd
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0xd
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0xd
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0xd
	.byte	0x92
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0xd
	.byte	0x5f
	.4byte	0xd39b
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0xd
	.byte	0x60
	.4byte	0xd3af
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
	.byte	0x5c
	.4byte	0xd984
	.uleb128 0x4b
	.string	"num"
	.byte	0xd
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0xd
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0xd
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0xd
	.byte	0x92
	.4byte	0xd984
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0xd
	.byte	0x5f
	.4byte	0xd98a
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0xd
	.byte	0x60
	.4byte	0xd9a9
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0x2a
	.byte	0x31
	.4byte	0xde23
	.uleb128 0x28
	.4byte	.LASF1877
	.byte	0x2a
	.byte	0x60
	.4byte	0xc80b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x28
	.4byte	.LASF1989
	.byte	0x2a
	.byte	0x61
	.4byte	0xcdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x2
	.uleb128 0x28
	.4byte	.LASF1990
	.byte	0x2a
	.byte	0x62
	.4byte	0xd3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x2
	.uleb128 0x28
	.4byte	.LASF1991
	.byte	0x2a
	.byte	0x63
	.4byte	0xcdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x2
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1988
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0x2a
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
	.byte	0xd
	.byte	0x5c
	.4byte	0xe403
	.uleb128 0x4b
	.string	"num"
	.byte	0xd
	.byte	0x8f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0xd
	.byte	0x90
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1413
	.byte	0xd
	.byte	0x91
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF1414
	.byte	0xd
	.byte	0x92
	.4byte	0x426a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF1415
	.byte	0xd
	.byte	0x5f
	.4byte	0xe403
	.uleb128 0x2
	.4byte	.LASF1416
	.byte	0xd
	.byte	0x60
	.4byte	0xe417
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF1417
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0x12
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
	.byte	0x12
	.byte	0x3c
	.4byte	0xe445
	.uleb128 0x5b
	.byte	0x14
	.byte	0x12
	.byte	0x46
	.4byte	.LASF2078
	.4byte	0xe4f1
	.uleb128 0x5
	.string	"v"
	.byte	0x12
	.byte	0x47
	.4byte	0xc7f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1842
	.byte	0x12
	.byte	0x48
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5c
	.4byte	.LASF2077
	.byte	0x1
	.byte	0x1
	.4byte	0xe4ce
	.4byte	0xe4d5
	.uleb128 0x17
	.4byte	0x3453e
	.byte	0x1
	.byte	0
	.uleb128 0x5d
	.4byte	.LASF285
	.4byte	0x353b3
	.byte	0x1
	.byte	0x1
	.4byte	0xe4e4
	.uleb128 0x17
	.4byte	0x3453e
	.byte	0x1
	.uleb128 0x19
	.4byte	0x353b9
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2077
	.byte	0x12
	.byte	0x49
	.4byte	0xe499
	.uleb128 0x5b
	.byte	0x6c
	.byte	0x12
	.byte	0x4b
	.4byte	.LASF2079
	.4byte	0xe580
	.uleb128 0x6
	.4byte	.LASF1842
	.byte	0x12
	.byte	0x4c
	.4byte	0x270c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2080
	.byte	0x12
	.byte	0x4d
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF2081
	.byte	0x12
	.byte	0x4e
	.4byte	0xa0b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF2082
	.byte	0x12
	.byte	0x4f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF1990
	.byte	0x12
	.byte	0x50
	.4byte	0xe580
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5c
	.4byte	.LASF2083
	.byte	0x1
	.byte	0x1
	.4byte	0xe55d
	.4byte	0xe564
	.uleb128 0x17
	.4byte	0x348be
	.byte	0x1
	.byte	0
	.uleb128 0x5d
	.4byte	.LASF285
	.4byte	0x353eb
	.byte	0x1
	.byte	0x1
	.4byte	0xe573
	.uleb128 0x17
	.4byte	0x348be
	.byte	0x1
	.uleb128 0x19
	.4byte	0x353f1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xac
	.4byte	0xe590
	.uleb128 0xa
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2083
	.byte	0x12
	.byte	0x51
	.4byte	0xe4fc
	.uleb128 0x21
	.4byte	.LASF2084
	.2byte	0xb0c
	.byte	0x12
	.byte	0x53
	.4byte	0xeb90
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x12
	.byte	0x56
	.4byte	0xe48e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2085
	.byte	0x12
	.byte	0x57
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF1877
	.byte	0x12
	.byte	0x58
	.4byte	0xeb90
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2082
	.byte	0x12
	.byte	0x59
	.4byte	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x6
	.4byte	.LASF1990
	.byte	0x12
	.byte	0x5a
	.4byte	0xeba0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x6
	.4byte	.LASF2086
	.byte	0x12
	.byte	0x5b
	.4byte	0xac
	.byte	0x3
	.byte	0x23
	.uleb128 0x420
	.uleb128 0x6
	.4byte	.LASF2087
	.byte	0x12
	.byte	0x5c
	.4byte	0xebb0
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0x6
	.4byte	.LASF2088
	.byte	0x12
	.byte	0x5d
	.4byte	0x270c
	.byte	0x3
	.byte	0x23
	.uleb128 0xae4
	.uleb128 0x6
	.4byte	.LASF2081
	.byte	0x12
	.byte	0x5e
	.4byte	0xa0b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xaf0
	.uleb128 0x6
	.4byte	.LASF2089
	.byte	0x12
	.byte	0x5f
	.4byte	0x15c9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb08
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x12
	.byte	0x62
	.byte	0x1
	.4byte	0xe64c
	.4byte	0xe653
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x12
	.byte	0x64
	.byte	0x1
	.4byte	0xe664
	.4byte	0xe670
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x12
	.byte	0x66
	.byte	0x1
	.4byte	0xe681
	.4byte	0xe692
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2084
	.byte	0x12
	.byte	0x68
	.byte	0x1
	.4byte	0xe6a3
	.4byte	0xe6b4
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2090
	.byte	0x12
	.byte	0x6b
	.4byte	.LASF2091
	.byte	0x1
	.4byte	0xe6c9
	.4byte	0xe6d5
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2090
	.byte	0x12
	.byte	0x6c
	.4byte	.LASF2092
	.byte	0x1
	.4byte	0xe6ea
	.4byte	0xe6f6
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2093
	.byte	0x12
	.byte	0x6e
	.4byte	.LASF2094
	.byte	0x1
	.4byte	0xe70b
	.4byte	0xe717
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2093
	.byte	0x12
	.byte	0x6f
	.4byte	.LASF2095
	.byte	0x1
	.4byte	0xe72c
	.4byte	0xe738
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2096
	.byte	0x12
	.byte	0x71
	.4byte	.LASF2097
	.byte	0x1
	.4byte	0xe74d
	.4byte	0xe759
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2096
	.byte	0x12
	.byte	0x72
	.4byte	.LASF2098
	.byte	0x1
	.4byte	0xe76e
	.4byte	0xe77a
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2099
	.byte	0x12
	.byte	0x74
	.4byte	.LASF2100
	.byte	0x1
	.4byte	0xe78f
	.4byte	0xe7a0
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2099
	.byte	0x12
	.byte	0x75
	.4byte	.LASF2101
	.byte	0x1
	.4byte	0xe7b5
	.4byte	0xe7cb
	.uleb128 0x17
	.4byte	0xebc0
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
	.byte	0x12
	.byte	0x77
	.4byte	.LASF2103
	.byte	0x1
	.4byte	0xe7e0
	.4byte	0xe7f1
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xaf97
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2102
	.byte	0x12
	.byte	0x78
	.4byte	.LASF2104
	.byte	0x1
	.4byte	0xe806
	.4byte	0xe81c
	.uleb128 0x17
	.4byte	0xebc0
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
	.byte	0x12
	.byte	0x7a
	.4byte	.LASF2106
	.byte	0x1
	.4byte	0xe831
	.4byte	0xe842
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2107
	.byte	0x12
	.byte	0x7c
	.4byte	.LASF2108
	.byte	0x1
	.4byte	0xe857
	.4byte	0xe868
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2ec8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2107
	.byte	0x12
	.byte	0x7d
	.4byte	.LASF2109
	.byte	0x1
	.4byte	0xe87d
	.4byte	0xe889
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0xbbc8
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2110
	.byte	0x12
	.byte	0x7f
	.4byte	.LASF2111
	.4byte	0xac
	.byte	0x1
	.4byte	0xe8a2
	.4byte	0xe8a9
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1387
	.byte	0x12
	.byte	0x81
	.4byte	.LASF2112
	.byte	0x1
	.4byte	0xe8be
	.4byte	0xe8ca
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1391
	.byte	0x12
	.byte	0x83
	.4byte	.LASF2113
	.byte	0x1
	.4byte	0xe8df
	.4byte	0xe8eb
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x6865
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2114
	.byte	0x12
	.byte	0x85
	.4byte	.LASF2115
	.byte	0x1
	.4byte	0xe900
	.4byte	0xe90c
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF490
	.byte	0x12
	.byte	0x87
	.4byte	.LASF2116
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe925
	.4byte	0xe931
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xebd1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x12
	.byte	0x88
	.4byte	.LASF2117
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe94a
	.4byte	0xe956
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xebd1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x12
	.byte	0x89
	.4byte	.LASF2118
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xe96f
	.4byte	0xe97b
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xebd1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2119
	.byte	0x12
	.byte	0x8b
	.4byte	.LASF2120
	.4byte	0x109
	.byte	0x1
	.4byte	0xe994
	.4byte	0xe9a0
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2121
	.byte	0x12
	.byte	0x8d
	.4byte	.LASF2122
	.4byte	0xac
	.byte	0x1
	.4byte	0xe9b9
	.4byte	0xe9ca
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2123
	.byte	0x12
	.byte	0x8e
	.4byte	.LASF2124
	.4byte	0xac
	.byte	0x1
	.4byte	0xe9e3
	.4byte	0xe9f4
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x428c
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2125
	.byte	0x12
	.byte	0x90
	.4byte	.LASF2126
	.byte	0x1
	.4byte	0xea09
	.4byte	0xea24
	.uleb128 0x17
	.4byte	0xebc6
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
	.byte	0x12
	.byte	0x93
	.4byte	.LASF2128
	.byte	0x3
	.byte	0x1
	.4byte	0xea3a
	.4byte	0xea41
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2129
	.byte	0x12
	.byte	0x94
	.4byte	.LASF2130
	.byte	0x3
	.byte	0x1
	.4byte	0xea57
	.4byte	0xea5e
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2131
	.byte	0x12
	.byte	0x95
	.4byte	.LASF2132
	.byte	0x3
	.byte	0x1
	.4byte	0xea74
	.4byte	0xea7b
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2133
	.byte	0x12
	.byte	0x96
	.4byte	.LASF2134
	.byte	0x3
	.byte	0x1
	.4byte	0xea91
	.4byte	0xea98
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2135
	.byte	0x12
	.byte	0x98
	.4byte	.LASF2136
	.byte	0x3
	.byte	0x1
	.4byte	0xeaae
	.4byte	0xeac9
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xebdc
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2137
	.byte	0x12
	.byte	0x99
	.4byte	.LASF2138
	.byte	0x3
	.byte	0x1
	.4byte	0xeadf
	.4byte	0xeaff
	.uleb128 0x17
	.4byte	0xebc6
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
	.4byte	0xebe8
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2139
	.byte	0x12
	.byte	0x9a
	.4byte	.LASF2140
	.byte	0x3
	.byte	0x1
	.4byte	0xeb15
	.4byte	0xeb21
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xebf4
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.4byte	.LASF2141
	.byte	0x12
	.byte	0x9b
	.4byte	.LASF2142
	.byte	0x3
	.byte	0x1
	.4byte	0xeb37
	.4byte	0xeb48
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0xec00
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x57
	.byte	0x1
	.4byte	.LASF2143
	.byte	0x12
	.byte	0x9c
	.4byte	.LASF2144
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0xeb62
	.4byte	0xeb73
	.uleb128 0x17
	.4byte	0xebc6
	.byte	0x1
	.uleb128 0x19
	.4byte	0x8d91
	.uleb128 0x19
	.4byte	0x8d8b
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.4byte	.LASF285
	.4byte	0x23818
	.byte	0x1
	.byte	0x1
	.4byte	0xeb83
	.uleb128 0x17
	.4byte	0xebc0
	.byte	0x1
	.uleb128 0x19
	.4byte	0x22a53
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x270c
	.4byte	0xeba0
	.uleb128 0xa
	.4byte	0x34
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	0xe4f1
	.4byte	0xebb0
	.uleb128 0xa
	.4byte	0x34
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	0xe590
	.4byte	0xebc0
	.uleb128 0xa
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe59b
	.uleb128 0xb
	.byte	0x4
	.4byte	0xebcc
	.uleb128 0xc
	.4byte	0xe59b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xebd7
	.uleb128 0xc
	.4byte	0xe59b
	.uleb128 0x24
	.byte	0x4
	.4byte	0xebe2
	.uleb128 0x5e
	.4byte	.LASF2145
	.byte	0x1
	.uleb128 0x24
	.byte	0x4
	.4byte	0xebee
	.uleb128 0x5e
	.4byte	.LASF2146
	.byte	0x1
	.uleb128 0x24
	.byte	0x4
	.4byte	0xebfa
	.uleb128 0x5e
	.4byte	.LASF2147
	.byte	0x1
	.uleb128 0x24
	.byte	0x4
	.4byte	0xe59b
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.byte	0x84
	.4byte	.LASF2148
	.4byte	0xec1f
	.uleb128 0xe
	.4byte	.LASF2149
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF2150
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2151
	.byte	0x5
	.byte	0x87
	.4byte	0xec06
	.uleb128 0x2d
	.4byte	.LASF2152
	.byte	0x20
	.byte	0x5
	.byte	0x89
	.4byte	0xffa9
	.uleb128 0x46
	.string	"len"
	.byte	0x5
	.2byte	0x151
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x48
	.4byte	.LASF2153
	.byte	0x5
	.2byte	0x152
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x48
	.4byte	.LASF796
	.byte	0x5
	.2byte	0x153
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x48
	.4byte	.LASF2154
	.byte	0x5
	.2byte	0x154
	.4byte	0xffa9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x8c
	.byte	0x1
	.4byte	0xec87
	.4byte	0xec8e
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x8d
	.byte	0x1
	.4byte	0xec9f
	.4byte	0xecab
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffbf
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x8e
	.byte	0x1
	.4byte	0xecbc
	.4byte	0xecd2
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffbf
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x8f
	.byte	0x1
	.4byte	0xece3
	.4byte	0xecef
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x90
	.byte	0x1
	.4byte	0xed00
	.4byte	0xed16
	.uleb128 0x17
	.4byte	0xffb9
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
	.byte	0x5
	.byte	0x91
	.byte	0x1
	.byte	0x1
	.4byte	0xed28
	.4byte	0xed34
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x92
	.byte	0x1
	.byte	0x1
	.4byte	0xed46
	.4byte	0xed52
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.byte	0x1
	.4byte	0xed64
	.4byte	0xed70
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.byte	0x1
	.4byte	0xed82
	.4byte	0xed8e
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x34
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.4byte	0xeda0
	.4byte	0xedac
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2155
	.byte	0x5
	.byte	0x96
	.byte	0x1
	.4byte	0xedbd
	.4byte	0xedca
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0x98
	.4byte	.LASF2156
	.4byte	0x29
	.byte	0x1
	.4byte	0xede3
	.4byte	0xedea
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2157
	.byte	0x5
	.byte	0x99
	.4byte	.LASF2158
	.4byte	0xe5
	.byte	0x1
	.4byte	0xee03
	.4byte	0xee0a
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2159
	.byte	0x5
	.byte	0x9a
	.4byte	.LASF2160
	.4byte	0xe5
	.byte	0x1
	.4byte	0xee23
	.4byte	0xee2a
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2159
	.byte	0x5
	.byte	0x9b
	.4byte	.LASF2161
	.4byte	0xe5
	.byte	0x1
	.4byte	0xee43
	.4byte	0xee4a
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.byte	0x9d
	.4byte	.LASF2162
	.4byte	0xde
	.byte	0x1
	.4byte	0xee63
	.4byte	0xee6f
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x5
	.byte	0x9e
	.4byte	.LASF2163
	.4byte	0xffd5
	.byte	0x1
	.4byte	0xee88
	.4byte	0xee94
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.byte	0xa0
	.4byte	.LASF2164
	.byte	0x1
	.4byte	0xeea9
	.4byte	0xeeb5
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffbf
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x5
	.byte	0xa1
	.4byte	.LASF2165
	.byte	0x1
	.4byte	0xeeca
	.4byte	0xeed6
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x5
	.byte	0xad
	.4byte	.LASF2166
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xeeef
	.4byte	0xeefb
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffbf
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x5
	.byte	0xae
	.4byte	.LASF2167
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xef14
	.4byte	0xef20
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x5
	.byte	0xaf
	.4byte	.LASF2168
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xef39
	.4byte	0xef45
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x109
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x5
	.byte	0xb0
	.4byte	.LASF2169
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xef5e
	.4byte	0xef6a
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x5
	.byte	0xb1
	.4byte	.LASF2170
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xef83
	.4byte	0xef8f
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x5
	.byte	0xb2
	.4byte	.LASF2171
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xefa8
	.4byte	0xefb4
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x34
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x5
	.byte	0xb3
	.4byte	.LASF2172
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xefcd
	.4byte	0xefd9
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.string	"Cmp"
	.byte	0x5
	.byte	0xc0
	.4byte	.LASF2234
	.4byte	0xac
	.byte	0x1
	.4byte	0xeff2
	.4byte	0xeffe
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2173
	.byte	0x5
	.byte	0xc1
	.4byte	.LASF2174
	.4byte	0xac
	.byte	0x1
	.4byte	0xf017
	.4byte	0xf028
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2175
	.byte	0x5
	.byte	0xc2
	.4byte	.LASF2176
	.4byte	0xac
	.byte	0x1
	.4byte	0xf041
	.4byte	0xf04d
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2177
	.byte	0x5
	.byte	0xc5
	.4byte	.LASF2178
	.4byte	0xac
	.byte	0x1
	.4byte	0xf066
	.4byte	0xf072
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2179
	.byte	0x5
	.byte	0xc6
	.4byte	.LASF2180
	.4byte	0xac
	.byte	0x1
	.4byte	0xf08b
	.4byte	0xf09c
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2181
	.byte	0x5
	.byte	0xc7
	.4byte	.LASF2182
	.4byte	0xac
	.byte	0x1
	.4byte	0xf0b5
	.4byte	0xf0c1
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2183
	.byte	0x5
	.byte	0xca
	.4byte	.LASF2184
	.4byte	0xac
	.byte	0x1
	.4byte	0xf0da
	.4byte	0xf0e6
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2185
	.byte	0x5
	.byte	0xcd
	.4byte	.LASF2186
	.4byte	0xac
	.byte	0x1
	.4byte	0xf0ff
	.4byte	0xf10b
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2187
	.byte	0x5
	.byte	0xce
	.4byte	.LASF2188
	.4byte	0xac
	.byte	0x1
	.4byte	0xf124
	.4byte	0xf135
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2189
	.byte	0x5
	.byte	0xcf
	.4byte	.LASF2190
	.4byte	0xac
	.byte	0x1
	.4byte	0xf14e
	.4byte	0xf15a
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF497
	.byte	0x5
	.byte	0xd1
	.4byte	.LASF2191
	.4byte	0xac
	.byte	0x1
	.4byte	0xf173
	.4byte	0xf17a
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0xd2
	.4byte	.LASF2192
	.4byte	0xac
	.byte	0x1
	.4byte	0xf193
	.4byte	0xf19a
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2193
	.byte	0x5
	.byte	0xd3
	.4byte	.LASF2194
	.byte	0x1
	.4byte	0xf1af
	.4byte	0xf1b6
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2195
	.byte	0x5
	.byte	0xd4
	.4byte	.LASF2196
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf1cf
	.4byte	0xf1d6
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF291
	.byte	0x5
	.byte	0xd5
	.4byte	.LASF2197
	.byte	0x1
	.4byte	0xf1eb
	.4byte	0xf1f2
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.byte	0xd6
	.4byte	.LASF2198
	.byte	0x1
	.4byte	0xf207
	.4byte	0xf213
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.byte	0xd7
	.4byte	.LASF2199
	.byte	0x1
	.4byte	0xf228
	.4byte	0xf234
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffbf
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.byte	0xd8
	.4byte	.LASF2200
	.byte	0x1
	.4byte	0xf249
	.4byte	0xf255
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.byte	0xd9
	.4byte	.LASF2201
	.byte	0x1
	.4byte	0xf26a
	.4byte	0xf27b
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.byte	0xda
	.4byte	.LASF2202
	.byte	0x1
	.4byte	0xf290
	.4byte	0xf2a1
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF1457
	.byte	0x5
	.byte	0xdb
	.4byte	.LASF2203
	.byte	0x1
	.4byte	0xf2b6
	.4byte	0xf2c7
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x5
	.byte	0xdc
	.4byte	.LASF2205
	.byte	0x1
	.4byte	0xf2dc
	.4byte	0xf2e3
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x5
	.byte	0xdd
	.4byte	.LASF2207
	.byte	0x1
	.4byte	0xf2f8
	.4byte	0xf2ff
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2208
	.byte	0x5
	.byte	0xde
	.4byte	.LASF2209
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf318
	.4byte	0xf31f
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2210
	.byte	0x5
	.byte	0xdf
	.4byte	.LASF2211
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf338
	.4byte	0xf33f
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2212
	.byte	0x5
	.byte	0xe0
	.4byte	.LASF2213
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf358
	.4byte	0xf35f
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2214
	.byte	0x5
	.byte	0xe1
	.4byte	.LASF2215
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf378
	.4byte	0xf37f
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2216
	.byte	0x5
	.byte	0xe2
	.4byte	.LASF2217
	.4byte	0xac
	.byte	0x1
	.4byte	0xf398
	.4byte	0xf39f
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2218
	.byte	0x5
	.byte	0xe3
	.4byte	.LASF2219
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf3b8
	.4byte	0xf3bf
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2220
	.byte	0x5
	.byte	0xe4
	.4byte	.LASF2221
	.byte	0x1
	.4byte	0xf3d4
	.4byte	0xf3e0
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2222
	.byte	0x5
	.byte	0xe5
	.4byte	.LASF2223
	.byte	0x1
	.4byte	0xf3f5
	.4byte	0xf406
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF129
	.byte	0x5
	.byte	0xe7
	.4byte	.LASF2224
	.4byte	0xac
	.byte	0x1
	.4byte	0xf41f
	.4byte	0xf435
	.uleb128 0x17
	.4byte	0xffca
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
	.byte	0x5
	.byte	0xe8
	.4byte	.LASF2225
	.4byte	0xac
	.byte	0x1
	.4byte	0xf44e
	.4byte	0xf469
	.uleb128 0x17
	.4byte	0xffca
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
	.byte	0x5
	.byte	0xe9
	.4byte	.LASF2227
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf482
	.4byte	0xf493
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2228
	.byte	0x5
	.byte	0xea
	.4byte	.LASF2229
	.4byte	0xac
	.byte	0x1
	.4byte	0xf4ac
	.4byte	0xf4b8
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2230
	.byte	0x5
	.byte	0xeb
	.4byte	.LASF2231
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf4d1
	.4byte	0xf4e2
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2232
	.byte	0x5
	.byte	0xec
	.4byte	.LASF2233
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf4fb
	.4byte	0xf50c
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.string	"Mid"
	.byte	0x5
	.byte	0xed
	.4byte	.LASF2235
	.4byte	0xe5
	.byte	0x1
	.4byte	0xf525
	.4byte	0xf53b
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2230
	.byte	0x5
	.byte	0xee
	.4byte	.LASF2236
	.4byte	0xec2a
	.byte	0x1
	.4byte	0xf554
	.4byte	0xf560
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2232
	.byte	0x5
	.byte	0xef
	.4byte	.LASF2237
	.4byte	0xec2a
	.byte	0x1
	.4byte	0xf579
	.4byte	0xf585
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x5f
	.byte	0x1
	.string	"Mid"
	.byte	0x5
	.byte	0xf0
	.4byte	.LASF2238
	.4byte	0xec2a
	.byte	0x1
	.4byte	0xf59e
	.4byte	0xf5af
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2239
	.byte	0x5
	.byte	0xf1
	.4byte	.LASF2240
	.byte	0x1
	.4byte	0xf5c4
	.4byte	0xf5d0
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2239
	.byte	0x5
	.byte	0xf2
	.4byte	.LASF2241
	.byte	0x1
	.4byte	0xf5e5
	.4byte	0xf5f1
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2242
	.byte	0x5
	.byte	0xf3
	.4byte	.LASF2243
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf60a
	.4byte	0xf616
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2244
	.byte	0x5
	.byte	0xf4
	.4byte	.LASF2245
	.byte	0x1
	.4byte	0xf62b
	.4byte	0xf637
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2244
	.byte	0x5
	.byte	0xf5
	.4byte	.LASF2246
	.byte	0x1
	.4byte	0xf64c
	.4byte	0xf658
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2247
	.byte	0x5
	.byte	0xf6
	.4byte	.LASF2248
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf671
	.4byte	0xf67d
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2249
	.byte	0x5
	.byte	0xf7
	.4byte	.LASF2250
	.byte	0x1
	.4byte	0xf692
	.4byte	0xf69e
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2249
	.byte	0x5
	.byte	0xf8
	.4byte	.LASF2251
	.byte	0x1
	.4byte	0xf6b3
	.4byte	0xf6bf
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2252
	.byte	0x5
	.byte	0xf9
	.4byte	.LASF2253
	.byte	0x1
	.4byte	0xf6d4
	.4byte	0xf6db
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2254
	.byte	0x5
	.byte	0xfa
	.4byte	.LASF2255
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf6f4
	.4byte	0xf6fb
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2256
	.byte	0x5
	.byte	0xfb
	.4byte	.LASF2257
	.byte	0x1
	.4byte	0xf710
	.4byte	0xf721
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2258
	.byte	0x5
	.byte	0xfe
	.4byte	.LASF2259
	.4byte	0xac
	.byte	0x1
	.4byte	0xf73a
	.4byte	0xf741
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2260
	.byte	0x5
	.byte	0xff
	.4byte	.LASF2261
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf75a
	.4byte	0xf761
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2262
	.byte	0x5
	.2byte	0x100
	.4byte	.LASF2263
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf77b
	.4byte	0xf787
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2264
	.byte	0x5
	.2byte	0x101
	.4byte	.LASF2265
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf7a1
	.4byte	0xf7a8
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2266
	.byte	0x5
	.2byte	0x102
	.4byte	.LASF2267
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf7c2
	.4byte	0xf7c9
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2268
	.byte	0x5
	.2byte	0x103
	.4byte	.LASF2269
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf7e3
	.4byte	0xf7ef
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2270
	.byte	0x5
	.2byte	0x104
	.4byte	.LASF2271
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf809
	.4byte	0xf815
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2272
	.byte	0x5
	.2byte	0x105
	.4byte	.LASF2273
	.byte	0x1
	.4byte	0xf82b
	.4byte	0xf837
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2274
	.byte	0x5
	.2byte	0x106
	.4byte	.LASF2275
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf851
	.4byte	0xf858
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2276
	.byte	0x5
	.2byte	0x107
	.4byte	.LASF2277
	.4byte	0xffdb
	.byte	0x1
	.4byte	0xf872
	.4byte	0xf879
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2278
	.byte	0x5
	.2byte	0x108
	.4byte	.LASF2279
	.byte	0x1
	.4byte	0xf88f
	.4byte	0xf89b
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2280
	.byte	0x5
	.2byte	0x109
	.4byte	.LASF2281
	.byte	0x1
	.4byte	0xf8b1
	.4byte	0xf8bd
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2282
	.byte	0x5
	.2byte	0x10a
	.4byte	.LASF2283
	.byte	0x1
	.4byte	0xf8d3
	.4byte	0xf8df
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2284
	.byte	0x5
	.2byte	0x10b
	.4byte	.LASF2285
	.byte	0x1
	.4byte	0xf8f5
	.4byte	0xf901
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2286
	.byte	0x5
	.2byte	0x10c
	.4byte	.LASF2287
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf91b
	.4byte	0xf927
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF497
	.byte	0x5
	.2byte	0x10f
	.4byte	.LASF2288
	.4byte	0xac
	.byte	0x1
	.4byte	0xf943
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x5
	.2byte	0x110
	.4byte	.LASF2289
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf95f
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x5
	.2byte	0x111
	.4byte	.LASF2290
	.4byte	0xd8
	.byte	0x1
	.4byte	0xf97b
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2208
	.byte	0x5
	.2byte	0x112
	.4byte	.LASF2291
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf997
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2210
	.byte	0x5
	.2byte	0x113
	.4byte	.LASF2292
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf9b3
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2212
	.byte	0x5
	.2byte	0x114
	.4byte	.LASF2293
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf9cf
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2214
	.byte	0x5
	.2byte	0x115
	.4byte	.LASF2294
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xf9eb
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2216
	.byte	0x5
	.2byte	0x116
	.4byte	.LASF2295
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa07
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2218
	.byte	0x5
	.2byte	0x117
	.4byte	.LASF2296
	.4byte	0xd8
	.byte	0x1
	.4byte	0xfa23
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.string	"Cmp"
	.byte	0x5
	.2byte	0x118
	.4byte	.LASF2297
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa44
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2173
	.byte	0x5
	.2byte	0x119
	.4byte	.LASF2298
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa6a
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2177
	.byte	0x5
	.2byte	0x11a
	.4byte	.LASF2299
	.4byte	0xac
	.byte	0x1
	.4byte	0xfa8b
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2179
	.byte	0x5
	.2byte	0x11b
	.4byte	.LASF2300
	.4byte	0xac
	.byte	0x1
	.4byte	0xfab1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2183
	.byte	0x5
	.2byte	0x11c
	.4byte	.LASF2301
	.4byte	0xac
	.byte	0x1
	.4byte	0xfad2
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2185
	.byte	0x5
	.2byte	0x11d
	.4byte	.LASF2302
	.4byte	0xac
	.byte	0x1
	.4byte	0xfaf3
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2187
	.byte	0x5
	.2byte	0x11e
	.4byte	.LASF2303
	.4byte	0xac
	.byte	0x1
	.4byte	0xfb19
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x62
	.byte	0x1
	.4byte	.LASF1452
	.byte	0x5
	.2byte	0x11f
	.4byte	.LASF2304
	.byte	0x1
	.4byte	0xfb3b
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x62
	.byte	0x1
	.4byte	.LASF2305
	.byte	0x5
	.2byte	0x120
	.4byte	.LASF2306
	.byte	0x1
	.4byte	0xfb5d
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2307
	.byte	0x5
	.2byte	0x121
	.4byte	.LASF2308
	.4byte	0xac
	.byte	0x1
	.4byte	0xfb84
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2309
	.byte	0x5
	.2byte	0x122
	.4byte	.LASF2310
	.4byte	0xac
	.byte	0x1
	.4byte	0xfbaf
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xffe1
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2311
	.byte	0x5
	.2byte	0x123
	.4byte	.LASF2312
	.4byte	0xac
	.byte	0x1
	.4byte	0xfbda
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xde
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2313
	.byte	0x5
	.2byte	0x124
	.4byte	.LASF2314
	.4byte	0xac
	.byte	0x1
	.4byte	0xfc0a
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
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2226
	.byte	0x5
	.2byte	0x125
	.4byte	.LASF2315
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfc30
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x62
	.byte	0x1
	.4byte	.LASF2316
	.byte	0x5
	.2byte	0x126
	.4byte	.LASF2317
	.byte	0x1
	.4byte	0xfc4d
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xffdb
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2286
	.byte	0x5
	.2byte	0x127
	.4byte	.LASF2318
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfc6e
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2319
	.byte	0x5
	.2byte	0x128
	.4byte	.LASF2320
	.4byte	0xe5
	.byte	0x1
	.4byte	0xfc94
	.uleb128 0x19
	.4byte	0x20d8
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2321
	.byte	0x5
	.2byte	0x12b
	.4byte	.LASF2322
	.4byte	0xac
	.byte	0x1
	.4byte	0xfcb0
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2321
	.byte	0x5
	.2byte	0x12c
	.4byte	.LASF2323
	.4byte	0xac
	.byte	0x1
	.4byte	0xfcd1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2324
	.byte	0x5
	.2byte	0x12d
	.4byte	.LASF2325
	.4byte	0xac
	.byte	0x1
	.4byte	0xfced
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2324
	.byte	0x5
	.2byte	0x12e
	.4byte	.LASF2326
	.4byte	0xac
	.byte	0x1
	.4byte	0xfd0e
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2204
	.byte	0x5
	.2byte	0x131
	.4byte	.LASF2327
	.4byte	0xde
	.byte	0x1
	.4byte	0xfd2a
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2206
	.byte	0x5
	.2byte	0x132
	.4byte	.LASF2328
	.4byte	0xde
	.byte	0x1
	.4byte	0xfd46
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2329
	.byte	0x5
	.2byte	0x133
	.4byte	.LASF2330
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd62
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2331
	.byte	0x5
	.2byte	0x134
	.4byte	.LASF2332
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd7e
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2333
	.byte	0x5
	.2byte	0x135
	.4byte	.LASF2334
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfd9a
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2335
	.byte	0x5
	.2byte	0x136
	.4byte	.LASF2336
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfdb6
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2337
	.byte	0x5
	.2byte	0x137
	.4byte	.LASF2338
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfdd2
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2339
	.byte	0x5
	.2byte	0x138
	.4byte	.LASF2340
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfdee
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2341
	.byte	0x5
	.2byte	0x139
	.4byte	.LASF2342
	.4byte	0x15c9
	.byte	0x1
	.4byte	0xfe0a
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2343
	.byte	0x5
	.2byte	0x13a
	.4byte	.LASF2344
	.4byte	0xac
	.byte	0x1
	.4byte	0xfe26
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2345
	.byte	0x5
	.2byte	0x13b
	.4byte	.LASF2346
	.4byte	0x688c
	.byte	0x1
	.4byte	0xfe42
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF1839
	.byte	0x5
	.2byte	0x140
	.4byte	.LASF2347
	.byte	0x1
	.4byte	0xfe58
	.4byte	0xfe69
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2348
	.byte	0x5
	.2byte	0x141
	.4byte	.LASF2349
	.byte	0x1
	.4byte	0xfe7f
	.4byte	0xfe86
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2350
	.byte	0x5
	.2byte	0x144
	.4byte	.LASF2351
	.4byte	0xac
	.byte	0x1
	.4byte	0xfea0
	.4byte	0xfeb6
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xec1f
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2352
	.byte	0x5
	.2byte	0x146
	.4byte	.LASF2353
	.byte	0x1
	.4byte	0xfecc
	.4byte	0xfee7
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x109
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xec1f
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF2354
	.byte	0x5
	.2byte	0x148
	.4byte	.LASF2356
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF2357
	.byte	0x5
	.2byte	0x149
	.4byte	.LASF2358
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.4byte	.LASF2359
	.byte	0x5
	.2byte	0x14a
	.4byte	.LASF2360
	.byte	0x1
	.uleb128 0x62
	.byte	0x1
	.4byte	.LASF2361
	.byte	0x5
	.2byte	0x14b
	.4byte	.LASF2362
	.byte	0x1
	.4byte	0xff29
	.uleb128 0x19
	.4byte	0x15d0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2363
	.byte	0x5
	.2byte	0x14d
	.4byte	.LASF2364
	.4byte	0xac
	.byte	0x1
	.4byte	0xff43
	.4byte	0xff4a
	.uleb128 0x17
	.4byte	0xffca
	.byte	0x1
	.byte	0
	.uleb128 0x60
	.byte	0x1
	.4byte	.LASF2365
	.byte	0x5
	.2byte	0x14e
	.4byte	.LASF2366
	.4byte	0xec2a
	.byte	0x1
	.4byte	0xff66
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x156
	.4byte	.LASF2367
	.byte	0x2
	.byte	0x1
	.4byte	0xff7d
	.4byte	0xff84
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF1837
	.byte	0x5
	.2byte	0x157
	.4byte	.LASF2368
	.byte	0x2
	.byte	0x1
	.4byte	0xff97
	.uleb128 0x17
	.4byte	0xffb9
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xde
	.4byte	0xffb9
	.uleb128 0xa
	.4byte	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xec2a
	.uleb128 0x24
	.byte	0x4
	.4byte	0xffc5
	.uleb128 0xc
	.4byte	0xec2a
	.uleb128 0xb
	.byte	0x4
	.4byte	0xffd0
	.uleb128 0xc
	.4byte	0xec2a
	.uleb128 0x24
	.byte	0x4
	.4byte	0xde
	.uleb128 0x24
	.byte	0x4
	.4byte	0xec2a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3b
	.uleb128 0x2d
	.4byte	.LASF2369
	.byte	0x50
	.byte	0x2b
	.byte	0x47
	.4byte	0x10219
	.uleb128 0x63
	.4byte	0xec2a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x2b
	.byte	0x4d
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF2370
	.byte	0x2b
	.byte	0x4e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF2371
	.byte	0x2b
	.byte	0x4f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF2372
	.byte	0x2b
	.byte	0x50
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.4byte	.LASF2373
	.byte	0x2b
	.byte	0x51
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x28
	.4byte	.LASF2374
	.byte	0x2b
	.byte	0x65
	.4byte	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2375
	.byte	0x2b
	.byte	0x66
	.4byte	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2376
	.byte	0x2b
	.byte	0x69
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2377
	.byte	0x2b
	.byte	0x6a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2378
	.byte	0x2b
	.byte	0x6b
	.4byte	0x10219
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2369
	.byte	0x2b
	.byte	0x54
	.byte	0x1
	.4byte	0x1009e
	.4byte	0x100a5
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2369
	.byte	0x2b
	.byte	0x55
	.byte	0x1
	.4byte	0x100b6
	.4byte	0x100c2
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10225
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2379
	.byte	0x2b
	.byte	0x56
	.byte	0x1
	.4byte	0x100d3
	.4byte	0x100e0
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x2b
	.byte	0x58
	.4byte	.LASF2380
	.byte	0x1
	.4byte	0x100f5
	.4byte	0x10101
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xffbf
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF285
	.byte	0x2b
	.byte	0x59
	.4byte	.LASF2381
	.byte	0x1
	.4byte	0x10116
	.4byte	0x10122
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2382
	.byte	0x2b
	.byte	0x5b
	.4byte	.LASF2383
	.4byte	0x102
	.byte	0x1
	.4byte	0x1013b
	.4byte	0x10142
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2384
	.byte	0x2b
	.byte	0x5c
	.4byte	.LASF2385
	.4byte	0x109
	.byte	0x1
	.4byte	0x1015b
	.4byte	0x10162
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2386
	.byte	0x2b
	.byte	0x5d
	.4byte	.LASF2387
	.4byte	0xd1
	.byte	0x1
	.4byte	0x1017b
	.4byte	0x10182
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2388
	.byte	0x2b
	.byte	0x5e
	.4byte	.LASF2389
	.4byte	0xac
	.byte	0x1
	.4byte	0x1019b
	.4byte	0x101a2
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2390
	.byte	0x2b
	.byte	0x5f
	.4byte	.LASF2391
	.4byte	0xac
	.byte	0x1
	.4byte	0x101bb
	.4byte	0x101c2
	.uleb128 0x17
	.4byte	0x10230
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2392
	.byte	0x2b
	.byte	0x60
	.4byte	.LASF2393
	.byte	0x1
	.4byte	0x101d7
	.4byte	0x101de
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2394
	.byte	0x2b
	.byte	0x62
	.4byte	.LASF2395
	.byte	0x1
	.4byte	0x101f3
	.4byte	0x101fa
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.byte	0
	.uleb128 0x64
	.byte	0x1
	.4byte	.LASF2396
	.byte	0x2b
	.byte	0x6d
	.4byte	.LASF2397
	.byte	0x3
	.byte	0x1
	.4byte	0x1020c
	.uleb128 0x17
	.4byte	0x1021f
	.byte	0x1
	.uleb128 0x19
	.4byte	0xde
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xffe7
	.uleb128 0xb
	.byte	0x4
	.4byte	0xffe7
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1022b
	.uleb128 0xc
	.4byte	0xffe7
	.uleb128 0xb
	.byte	0x4
	.4byte	0x10236
	.uleb128 0xc
	.4byte	0xffe7
	.uleb128 0x4
	.4byte	.LASF2398
	.byte	0x8
	.byte	0x2c
	.byte	0x82
	.4byte	0x10260
	.uleb128 0x5
	.string	"p"
	.byte	0x2c
	.byte	0x84
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"n"
	.byte	0x2c
	.byte	0x85
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF2399
	.byte	0x2c
	.byte	0x86
	.4byte	0x1023b
	.uleb128 0x2d
	.4byte	.LASF2400
	.byte	0x1c
	.byte	0x2c
	.byte	0x8a
	.4byte	0x1066c
	.uleb128 0x5
	.string	"ptr"
	.byte	0x2c
	.byte	0xab
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"buf"
	.byte	0x2c
	.byte	0xac
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2401
	.byte	0x2c
	.byte	0xad
	.4byte	0x10696
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x28
	.4byte	.LASF2402
	.byte	0x2c
	.byte	0xb3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2403
	.byte	0x2c
	.byte	0xb4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF795
	.byte	0x2c
	.byte	0xb5
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2404
	.byte	0x2c
	.byte	0xb6
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2405
	.byte	0x2c
	.byte	0xb7
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2400
	.byte	0x2c
	.byte	0x8c
	.byte	0x1
	.4byte	0x102fd
	.4byte	0x10304
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2406
	.byte	0x2c
	.byte	0x8d
	.byte	0x1
	.4byte	0x10315
	.4byte	0x10322
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2400
	.byte	0x2c
	.byte	0x8f
	.byte	0x1
	.4byte	0x10333
	.4byte	0x1033f
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x106a2
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2400
	.byte	0x2c
	.byte	0x90
	.byte	0x1
	.4byte	0x10350
	.4byte	0x1035c
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0x106ad
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2407
	.byte	0x2c
	.byte	0x92
	.4byte	.LASF2408
	.byte	0x1
	.4byte	0x10371
	.4byte	0x1037d
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2409
	.byte	0x2c
	.byte	0x93
	.4byte	.LASF2410
	.byte	0x1
	.4byte	0x10392
	.4byte	0x103a3
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2411
	.byte	0x2c
	.byte	0x95
	.4byte	.LASF2412
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x103bc
	.4byte	0x103c3
	.uleb128 0x17
	.4byte	0x106b3
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2411
	.byte	0x2c
	.byte	0x96
	.4byte	.LASF2413
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x103dc
	.4byte	0x103e3
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF473
	.byte	0x2c
	.byte	0x98
	.4byte	.LASF2414
	.4byte	0xde
	.byte	0x1
	.4byte	0x103fc
	.4byte	0x10403
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF468
	.byte	0x2c
	.byte	0x99
	.4byte	.LASF2415
	.4byte	0xde
	.byte	0x1
	.4byte	0x1041c
	.4byte	0x10428
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xc3c0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2416
	.byte	0x2c
	.byte	0x9a
	.4byte	.LASF2417
	.4byte	0x106ad
	.byte	0x1
	.4byte	0x10441
	.4byte	0x10448
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2416
	.byte	0x2c
	.byte	0x9b
	.4byte	.LASF2418
	.4byte	0x1026b
	.byte	0x1
	.4byte	0x10461
	.4byte	0x1046d
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2419
	.byte	0x2c
	.byte	0x9c
	.4byte	.LASF2420
	.4byte	0x106ad
	.byte	0x1
	.4byte	0x10486
	.4byte	0x1048d
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2419
	.byte	0x2c
	.byte	0x9d
	.4byte	.LASF2421
	.4byte	0x1026b
	.byte	0x1
	.4byte	0x104a6
	.4byte	0x104b2
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF481
	.byte	0x2c
	.byte	0x9e
	.4byte	.LASF2422
	.4byte	0x106ad
	.byte	0x1
	.4byte	0x104cb
	.4byte	0x104d7
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF483
	.byte	0x2c
	.byte	0x9f
	.4byte	.LASF2423
	.4byte	0x106ad
	.byte	0x1
	.4byte	0x104f0
	.4byte	0x104fc
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF478
	.byte	0x2c
	.byte	0xa0
	.4byte	.LASF2424
	.4byte	0x1026b
	.byte	0x1
	.4byte	0x10515
	.4byte	0x10521
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF471
	.byte	0x2c
	.byte	0xa1
	.4byte	.LASF2425
	.4byte	0x1026b
	.byte	0x1
	.4byte	0x1053a
	.4byte	0x10546
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF285
	.byte	0x2c
	.byte	0xa2
	.4byte	.LASF2426
	.4byte	0x106ad
	.byte	0x1
	.4byte	0x1055f
	.4byte	0x1056b
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF493
	.byte	0x2c
	.byte	0xa3
	.4byte	.LASF2427
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10584
	.4byte	0x10590
	.uleb128 0x17
	.4byte	0x106b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF495
	.byte	0x2c
	.byte	0xa4
	.4byte	.LASF2428
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x105a9
	.4byte	0x105b5
	.uleb128 0x17
	.4byte	0x106b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2429
	.byte	0x2c
	.byte	0xa5
	.4byte	.LASF2430
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x105ce
	.4byte	0x105da
	.uleb128 0x17
	.4byte	0x106b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2431
	.byte	0x2c
	.byte	0xa6
	.4byte	.LASF2432
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x105f3
	.4byte	0x105ff
	.uleb128 0x17
	.4byte	0x106b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2433
	.byte	0x2c
	.byte	0xa7
	.4byte	.LASF2434
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10618
	.4byte	0x10624
	.uleb128 0x17
	.4byte	0x106b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2435
	.byte	0x2c
	.byte	0xa8
	.4byte	.LASF2436
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x1063d
	.4byte	0x10649
	.uleb128 0x17
	.4byte	0x106b3
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd3d1
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.4byte	.LASF2437
	.byte	0x2c
	.byte	0xb1
	.4byte	.LASF2438
	.4byte	0xde
	.byte	0x3
	.byte	0x1
	.4byte	0x1065f
	.uleb128 0x17
	.4byte	0x1069c
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x65
	.4byte	.LASF4976
	.byte	0x1
	.4byte	0x10696
	.uleb128 0x66
	.byte	0x1
	.4byte	.LASF2439
	.byte	0x2d
	.byte	0x3c
	.byte	0x1
	.4byte	0x1066c
	.byte	0x1
	.4byte	0x10688
	.uleb128 0x17
	.4byte	0x10696
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1066c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1026b
	.uleb128 0x24
	.byte	0x4
	.4byte	0x106a8
	.uleb128 0xc
	.4byte	0x1026b
	.uleb128 0x24
	.byte	0x4
	.4byte	0x1026b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x106b9
	.uleb128 0xc
	.4byte	0x1026b
	.uleb128 0x2d
	.4byte	.LASF2440
	.byte	0xd0
	.byte	0x2c
	.byte	0xbd
	.4byte	0x110d3
	.uleb128 0x48
	.4byte	.LASF2441
	.byte	0x2c
	.2byte	0x12a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2442
	.byte	0x2c
	.2byte	0x12b
	.4byte	0xec2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2404
	.byte	0x2c
	.2byte	0x12c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2443
	.byte	0x2c
	.2byte	0x12e
	.4byte	0x1026b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2444
	.byte	0x2c
	.2byte	0x12f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2445
	.byte	0x2c
	.2byte	0x130
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2376
	.byte	0x2c
	.2byte	0x131
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2377
	.byte	0x2c
	.2byte	0x132
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2446
	.byte	0x2c
	.2byte	0x13b
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2447
	.byte	0x2c
	.2byte	0x13c
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2371
	.byte	0x2c
	.2byte	0x13d
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2448
	.byte	0x2c
	.2byte	0x13e
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2449
	.byte	0x2c
	.2byte	0x13f
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2373
	.byte	0x2c
	.2byte	0x140
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2450
	.byte	0x2c
	.2byte	0x141
	.4byte	0x110d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2451
	.byte	0x2c
	.2byte	0x142
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2452
	.byte	0x2c
	.2byte	0x143
	.4byte	0x8d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2453
	.byte	0x2c
	.2byte	0x144
	.4byte	0xffe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2378
	.byte	0x2c
	.2byte	0x145
	.4byte	0x110de
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.byte	0x3
	.uleb128 0x48
	.4byte	.LASF2454
	.byte	0x2c
	.2byte	0x146
	.4byte	0x15c9
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x3
	.uleb128 0x49
	.4byte	.LASF2455
	.byte	0x2c
	.2byte	0x148
	.4byte	0x110e4
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2440
	.byte	0x2c
	.byte	0xc3
	.byte	0x1
	.4byte	0x1082c
	.4byte	0x10833
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2440
	.byte	0x2c
	.byte	0xc4
	.byte	0x1
	.4byte	0x10844
	.4byte	0x10850
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2440
	.byte	0x2c
	.byte	0xc5
	.byte	0x1
	.4byte	0x10861
	.4byte	0x10877
	.uleb128 0x17
	.4byte	0x110f4
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
	.byte	0x2c
	.byte	0xc6
	.byte	0x1
	.4byte	0x10888
	.4byte	0x108a3
	.uleb128 0x17
	.4byte	0x110f4
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
	.byte	0x2c
	.byte	0xc8
	.byte	0x1
	.4byte	0x108b4
	.4byte	0x108c1
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2457
	.byte	0x2c
	.byte	0xca
	.4byte	.LASF2458
	.4byte	0xac
	.byte	0x1
	.4byte	0x108da
	.4byte	0x108eb
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2459
	.byte	0x2c
	.byte	0xce
	.4byte	.LASF2460
	.4byte	0xac
	.byte	0x1
	.4byte	0x10904
	.4byte	0x1091f
	.uleb128 0x17
	.4byte	0x110f4
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
	.byte	0x2c
	.byte	0xd0
	.4byte	.LASF2462
	.byte	0x1
	.4byte	0x10934
	.4byte	0x1093b
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2463
	.byte	0x2c
	.byte	0xd2
	.4byte	.LASF2464
	.4byte	0xac
	.byte	0x1
	.4byte	0x10954
	.4byte	0x1095b
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2465
	.byte	0x2c
	.byte	0xd4
	.4byte	.LASF2466
	.4byte	0xac
	.byte	0x1
	.4byte	0x10974
	.4byte	0x10980
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2467
	.byte	0x2c
	.byte	0xd6
	.4byte	.LASF2468
	.4byte	0xac
	.byte	0x1
	.4byte	0x10999
	.4byte	0x109a5
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2469
	.byte	0x2c
	.byte	0xd8
	.4byte	.LASF2470
	.4byte	0xac
	.byte	0x1
	.4byte	0x109be
	.4byte	0x109d4
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2471
	.byte	0x2c
	.byte	0xda
	.4byte	.LASF2472
	.4byte	0xac
	.byte	0x1
	.4byte	0x109ed
	.4byte	0x109f9
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2473
	.byte	0x2c
	.byte	0xdc
	.4byte	.LASF2474
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a12
	.4byte	0x10a1e
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2475
	.byte	0x2c
	.byte	0xde
	.4byte	.LASF2476
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a37
	.4byte	0x10a4d
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2477
	.byte	0x2c
	.byte	0xe0
	.4byte	.LASF2478
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a66
	.4byte	0x10a72
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2479
	.byte	0x2c
	.byte	0xe2
	.4byte	.LASF2480
	.4byte	0xac
	.byte	0x1
	.4byte	0x10a8b
	.4byte	0x10aa1
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2481
	.byte	0x2c
	.byte	0xe4
	.4byte	.LASF2482
	.4byte	0xac
	.byte	0x1
	.4byte	0x10aba
	.4byte	0x10ac6
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2483
	.byte	0x2c
	.byte	0xe6
	.4byte	.LASF2484
	.4byte	0xac
	.byte	0x1
	.4byte	0x10adf
	.4byte	0x10ae6
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2485
	.byte	0x2c
	.byte	0xe8
	.4byte	.LASF2486
	.4byte	0xac
	.byte	0x1
	.4byte	0x10aff
	.4byte	0x10b0b
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2487
	.byte	0x2c
	.byte	0xea
	.4byte	.LASF2488
	.byte	0x1
	.4byte	0x10b20
	.4byte	0x10b2c
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x10230
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2489
	.byte	0x2c
	.byte	0xec
	.4byte	.LASF2490
	.4byte	0xac
	.byte	0x1
	.4byte	0x10b45
	.4byte	0x10b51
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2491
	.byte	0x2c
	.byte	0xef
	.4byte	.LASF2492
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10b6a
	.4byte	0x10b76
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2493
	.byte	0x2c
	.byte	0xf2
	.4byte	.LASF2494
	.4byte	0xac
	.byte	0x1
	.4byte	0x10b8f
	.4byte	0x10b96
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2495
	.byte	0x2c
	.byte	0xf4
	.4byte	.LASF2496
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10baf
	.4byte	0x10bb6
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2497
	.byte	0x2c
	.byte	0xf7
	.4byte	.LASF2498
	.4byte	0x109
	.byte	0x1
	.4byte	0x10bcf
	.4byte	0x10bdb
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x11100
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2499
	.byte	0x2c
	.byte	0xf9
	.4byte	.LASF2500
	.4byte	0xac
	.byte	0x1
	.4byte	0x10bf4
	.4byte	0x10c05
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2501
	.byte	0x2c
	.byte	0xfa
	.4byte	.LASF2502
	.4byte	0xac
	.byte	0x1
	.4byte	0x10c1e
	.4byte	0x10c34
	.uleb128 0x17
	.4byte	0x110f4
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
	.byte	0x2c
	.byte	0xfb
	.4byte	.LASF2504
	.4byte	0xac
	.byte	0x1
	.4byte	0x10c4d
	.4byte	0x10c68
	.uleb128 0x17
	.4byte	0x110f4
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
	.byte	0x2c
	.byte	0xfd
	.4byte	.LASF2506
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10c81
	.4byte	0x10c8d
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2507
	.byte	0x2c
	.byte	0xff
	.4byte	.LASF2508
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10ca6
	.4byte	0x10cb7
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2509
	.byte	0x2c
	.2byte	0x101
	.4byte	.LASF2510
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10cd1
	.4byte	0x10cdd
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2511
	.byte	0x2c
	.2byte	0x103
	.4byte	.LASF2512
	.4byte	0xac
	.byte	0x1
	.4byte	0x10cf7
	.4byte	0x10d03
	.uleb128 0x17
	.4byte	0x11106
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2513
	.byte	0x2c
	.2byte	0x105
	.4byte	.LASF2514
	.4byte	0xac
	.byte	0x1
	.4byte	0x10d1d
	.4byte	0x10d24
	.uleb128 0x17
	.4byte	0x11106
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2515
	.byte	0x2c
	.2byte	0x107
	.4byte	.LASF2516
	.4byte	0xac
	.byte	0x1
	.4byte	0x10d3e
	.4byte	0x10d45
	.uleb128 0x17
	.4byte	0x11106
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2517
	.byte	0x2c
	.2byte	0x109
	.4byte	.LASF2518
	.byte	0x1
	.4byte	0x10d5b
	.4byte	0x10d67
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110d3
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2519
	.byte	0x2c
	.2byte	0x10b
	.4byte	.LASF2520
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10d81
	.4byte	0x10d8d
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2521
	.byte	0x2c
	.2byte	0x10d
	.4byte	.LASF2522
	.4byte	0xac
	.byte	0x1
	.4byte	0x10da7
	.4byte	0x10db3
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2523
	.byte	0x2c
	.2byte	0x10f
	.4byte	.LASF2524
	.byte	0x1
	.4byte	0x10dc9
	.4byte	0x10dd5
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2525
	.byte	0x2c
	.2byte	0x111
	.4byte	.LASF2526
	.4byte	0xac
	.byte	0x1
	.4byte	0x10def
	.4byte	0x10df6
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2527
	.byte	0x2c
	.2byte	0x113
	.4byte	.LASF2528
	.byte	0x1
	.4byte	0x10e0c
	.4byte	0x10e13
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2529
	.byte	0x2c
	.2byte	0x115
	.4byte	.LASF2530
	.4byte	0xac
	.byte	0x1
	.4byte	0x10e2d
	.4byte	0x10e34
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2531
	.byte	0x2c
	.2byte	0x117
	.4byte	.LASF2532
	.4byte	0xe5
	.byte	0x1
	.4byte	0x10e4e
	.4byte	0x10e55
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2533
	.byte	0x2c
	.2byte	0x119
	.4byte	.LASF2534
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x10e6f
	.4byte	0x10e76
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF2535
	.byte	0x2c
	.2byte	0x11a
	.4byte	.LASF2536
	.byte	0x1
	.4byte	0x10e8c
	.4byte	0x10e98
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2537
	.byte	0x2c
	.2byte	0x11c
	.4byte	.LASF2538
	.4byte	0x11111
	.byte	0x1
	.4byte	0x10eb2
	.4byte	0x10eb9
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2539
	.byte	0x2c
	.2byte	0x11e
	.4byte	.LASF2540
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x10ed3
	.4byte	0x10eda
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF102
	.byte	0x2c
	.2byte	0x120
	.4byte	.LASF2541
	.byte	0x1
	.4byte	0x10ef0
	.4byte	0x10efd
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF94
	.byte	0x2c
	.2byte	0x122
	.4byte	.LASF2542
	.byte	0x1
	.4byte	0x10f13
	.4byte	0x10f20
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF2543
	.byte	0x2c
	.2byte	0x124
	.4byte	.LASF2544
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x10f3a
	.4byte	0x10f41
	.uleb128 0x17
	.4byte	0x11106
	.byte	0x1
	.byte	0
	.uleb128 0x62
	.byte	0x1
	.4byte	.LASF2545
	.byte	0x2c
	.2byte	0x127
	.4byte	.LASF2546
	.byte	0x1
	.4byte	0x10f59
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.4byte	.LASF2547
	.byte	0x2c
	.2byte	0x14b
	.4byte	.LASF2548
	.byte	0x3
	.byte	0x1
	.4byte	0x10f70
	.4byte	0x10f7c
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110d3
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2549
	.byte	0x2c
	.2byte	0x14c
	.4byte	.LASF2550
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10f97
	.4byte	0x10f9e
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2551
	.byte	0x2c
	.2byte	0x14d
	.4byte	.LASF2552
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10fb9
	.4byte	0x10fc5
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd8
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2553
	.byte	0x2c
	.2byte	0x14e
	.4byte	.LASF2554
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x10fe0
	.4byte	0x10ff1
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2555
	.byte	0x2c
	.2byte	0x14f
	.4byte	.LASF2556
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x1100c
	.4byte	0x11018
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2557
	.byte	0x2c
	.2byte	0x150
	.4byte	.LASF2558
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11033
	.4byte	0x1103f
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2559
	.byte	0x2c
	.2byte	0x151
	.4byte	.LASF2560
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x1105a
	.4byte	0x11066
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2561
	.byte	0x2c
	.2byte	0x152
	.4byte	.LASF2562
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x11081
	.4byte	0x1108d
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF2563
	.byte	0x2c
	.2byte	0x153
	.4byte	.LASF2564
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x110a8
	.4byte	0x110b4
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.4byte	.LASF2565
	.byte	0x2c
	.2byte	0x154
	.4byte	.LASF2566
	.4byte	0xac
	.byte	0x3
	.byte	0x1
	.4byte	0x110cb
	.uleb128 0x17
	.4byte	0x110f4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x110d9
	.uleb128 0xc
	.4byte	0x10260
	.uleb128 0xb
	.byte	0x4
	.4byte	0x106be
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x110f4
	.uleb128 0xa
	.4byte	0x34
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x106be
	.uleb128 0x24
	.byte	0x4
	.4byte	0xec2a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x15c9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1110c
	.uleb128 0xc
	.4byte	0x106be
	.uleb128 0xc
	.4byte	0xf7
	.uleb128 0x4
	.4byte	.LASF2567
	.byte	0x20
	.byte	0x2e
	.byte	0x37
	.4byte	0x11193
	.uleb128 0x6
	.4byte	.LASF2568
	.byte	0x2e
	.byte	0x38
	.4byte	0xd8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2373
	.byte	0x2e
	.byte	0x39
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2569
	.byte	0x2e
	.byte	0x3a
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2570
	.byte	0x2e
	.byte	0x3b
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF2571
	.byte	0x2e
	.byte	0x3c
	.4byte	0x1021f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF2572
	.byte	0x2e
	.byte	0x3d
	.4byte	0x1021f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF2378
	.byte	0x2e
	.byte	0x3e
	.4byte	0x11193
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF2573
	.byte	0x2e
	.byte	0x3f
	.4byte	0x11193
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x11116
	.uleb128 0x2
	.4byte	.LASF2574
	.byte	0x2e
	.byte	0x40
	.4byte	0x11116
	.uleb128 0x4
	.4byte	.LASF2575
	.byte	0x10
	.byte	0x2e
	.byte	0x44
	.4byte	0x111e9
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x2e
	.byte	0x45
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF2576
	.byte	0x2e
	.byte	0x46
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2577
	.byte	0x2e
	.byte	0x47
	.4byte	0x110f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF2378
	.byte	0x2e
	.byte	0x48
	.4byte	0x111e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x111a4
	.uleb128 0x2
	.4byte	.LASF2578
	.byte	0x2e
	.byte	0x49
	.4byte	0x111a4
	.uleb128 0x2d
	.4byte	.LASF2579
	.byte	0x6c
	.byte	0x2e
	.byte	0x4c
	.4byte	0x12099
	.uleb128 0x28
	.4byte	.LASF2441
	.byte	0x2e
	.byte	0xb6
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2442
	.byte	0x2e
	.byte	0xb7
	.4byte	0xec2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2580
	.byte	0x2e
	.byte	0xb8
	.4byte	0xec2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2581
	.byte	0x2e
	.byte	0xb9
	.4byte	0x15c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2450
	.byte	0x2e
	.byte	0xba
	.4byte	0x110d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2373
	.byte	0x2e
	.byte	0xbb
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2582
	.byte	0x2e
	.byte	0xbc
	.4byte	0x110f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2572
	.byte	0x2e
	.byte	0xbd
	.4byte	0x1021f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2583
	.byte	0x2e
	.byte	0xbe
	.4byte	0x12099
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2584
	.byte	0x2e
	.byte	0xbf
	.4byte	0x1209f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2585
	.byte	0x2e
	.byte	0xc0
	.4byte	0x120a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2576
	.byte	0x2e
	.byte	0xc1
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF2586
	.byte	0x2e
	.byte	0xc3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x3
	.uleb128 0x33
	.4byte	.LASF2587
	.byte	0x2e
	.byte	0xc5
	.4byte	0x12099
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2579
	.byte	0x2e
	.byte	0x50
	.byte	0x1
	.4byte	0x112e8
	.4byte	0x112ef
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2579
	.byte	0x2e
	.byte	0x51
	.byte	0x1
	.4byte	0x11300
	.4byte	0x1130c
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF2579
	.byte	0x2e
	.byte	0x52
	.byte	0x1
	.4byte	0x1131d
	.4byte	0x11333
	.uleb128 0x17
	.4byte	0x120ab
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
	.byte	0x2e
	.byte	0x53
	.byte	0x1
	.4byte	0x11344
	.4byte	0x1135f
	.uleb128 0x17
	.4byte	0x120ab
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
	.byte	0x2e
	.byte	0x55
	.byte	0x1
	.4byte	0x11370
	.4byte	0x1137d
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x17
	.4byte	0xac
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2457
	.byte	0x2e
	.byte	0x57
	.4byte	.LASF2589
	.4byte	0xac
	.byte	0x1
	.4byte	0x11396
	.4byte	0x113a7
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2459
	.byte	0x2e
	.byte	0x5a
	.4byte	.LASF2590
	.4byte	0xac
	.byte	0x1
	.4byte	0x113c0
	.4byte	0x113d6
	.uleb128 0x17
	.4byte	0x120ab
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
	.byte	0x2e
	.byte	0x5c
	.4byte	.LASF2591
	.byte	0x1
	.4byte	0x113eb
	.4byte	0x113f7
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2463
	.byte	0x2e
	.byte	0x5e
	.4byte	.LASF2592
	.4byte	0xac
	.byte	0x1
	.4byte	0x11410
	.4byte	0x11417
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2465
	.byte	0x2e
	.byte	0x60
	.4byte	.LASF2593
	.4byte	0xac
	.byte	0x1
	.4byte	0x11430
	.4byte	0x1143c
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2467
	.byte	0x2e
	.byte	0x62
	.4byte	.LASF2594
	.4byte	0xac
	.byte	0x1
	.4byte	0x11455
	.4byte	0x11461
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2469
	.byte	0x2e
	.byte	0x64
	.4byte	.LASF2595
	.4byte	0xac
	.byte	0x1
	.4byte	0x1147a
	.4byte	0x11490
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2471
	.byte	0x2e
	.byte	0x66
	.4byte	.LASF2596
	.4byte	0xac
	.byte	0x1
	.4byte	0x114a9
	.4byte	0x114b5
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2473
	.byte	0x2e
	.byte	0x68
	.4byte	.LASF2597
	.4byte	0xac
	.byte	0x1
	.4byte	0x114ce
	.4byte	0x114da
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2475
	.byte	0x2e
	.byte	0x6a
	.4byte	.LASF2598
	.4byte	0xac
	.byte	0x1
	.4byte	0x114f3
	.4byte	0x11509
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2477
	.byte	0x2e
	.byte	0x6c
	.4byte	.LASF2599
	.4byte	0xac
	.byte	0x1
	.4byte	0x11522
	.4byte	0x1152e
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2479
	.byte	0x2e
	.byte	0x6e
	.4byte	.LASF2600
	.4byte	0xac
	.byte	0x1
	.4byte	0x11547
	.4byte	0x1155d
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2481
	.byte	0x2e
	.byte	0x70
	.4byte	.LASF2601
	.4byte	0xac
	.byte	0x1
	.4byte	0x11576
	.4byte	0x11582
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2483
	.byte	0x2e
	.byte	0x72
	.4byte	.LASF2602
	.4byte	0xac
	.byte	0x1
	.4byte	0x1159b
	.4byte	0x115a2
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2485
	.byte	0x2e
	.byte	0x74
	.4byte	.LASF2603
	.4byte	0xac
	.byte	0x1
	.4byte	0x115bb
	.4byte	0x115c7
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2505
	.byte	0x2e
	.byte	0x76
	.4byte	.LASF2604
	.4byte	0xe5
	.byte	0x1
	.4byte	0x115e0
	.4byte	0x115f1
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2507
	.byte	0x2e
	.byte	0x78
	.4byte	.LASF2605
	.4byte	0xe5
	.byte	0x1
	.4byte	0x1160a
	.4byte	0x1161b
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2509
	.byte	0x2e
	.byte	0x7a
	.4byte	.LASF2606
	.4byte	0xe5
	.byte	0x1
	.4byte	0x11634
	.4byte	0x11640
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2487
	.byte	0x2e
	.byte	0x7c
	.4byte	.LASF2607
	.byte	0x1
	.4byte	0x11655
	.4byte	0x11661
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2489
	.byte	0x2e
	.byte	0x7e
	.4byte	.LASF2608
	.4byte	0xac
	.byte	0x1
	.4byte	0x1167a
	.4byte	0x11686
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x1021f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2493
	.byte	0x2e
	.byte	0x80
	.4byte	.LASF2609
	.4byte	0xac
	.byte	0x1
	.4byte	0x1169f
	.4byte	0x116a6
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2495
	.byte	0x2e
	.byte	0x82
	.4byte	.LASF2610
	.4byte	0x15c9
	.byte	0x1
	.4byte	0x116bf
	.4byte	0x116c6
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2497
	.byte	0x2e
	.byte	0x84
	.4byte	.LASF2611
	.4byte	0x109
	.byte	0x1
	.4byte	0x116df
	.4byte	0x116e6
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2499
	.byte	0x2e
	.byte	0x86
	.4byte	.LASF2612
	.4byte	0xac
	.byte	0x1
	.4byte	0x116ff
	.4byte	0x11710
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.uleb128 0x19
	.4byte	0x21fe
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2501
	.byte	0x2e
	.byte	0x87
	.4byte	.LASF2613
	.4byte	0xac
	.byte	0x1
	.4byte	0x11729
	.4byte	0x1173f
	.uleb128 0x17
	.4byte	0x120ab
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
	.byte	0x2e
	.byte	0x88
	.4byte	.LASF2614
	.4byte	0xac
	.byte	0x1
	.4byte	0x11758
	.4byte	0x11773
	.uleb128 0x17
	.4byte	0x120ab
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
	.byte	0x2e
	.byte	0x8a
	.4byte	.LASF2615
	.4byte	0xac
	.byte	0x1
	.4byte	0x1178c
	.4byte	0x11798
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2616
	.byte	0x2e
	.byte	0x8c
	.4byte	.LASF2617
	.byte	0x1
	.4byte	0x117ad
	.4byte	0x117b4
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2618
	.byte	0x2e
	.byte	0x8e
	.4byte	.LASF2619
	.byte	0x1
	.4byte	0x117c9
	.4byte	0x117da
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110fa
	.uleb128 0x19
	.4byte	0x15c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2620
	.byte	0x2e
	.byte	0x90
	.4byte	.LASF2621
	.4byte	0xac
	.byte	0x1
	.4byte	0x117f3
	.4byte	0x117ff
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2622
	.byte	0x2e
	.byte	0x92
	.4byte	.LASF2623
	.byte	0x1
	.4byte	0x11814
	.4byte	0x1181b
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2624
	.byte	0x2e
	.byte	0x94
	.4byte	.LASF2625
	.byte	0x1
	.4byte	0x11830
	.4byte	0x1183c
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2517
	.byte	0x2e
	.byte	0x96
	.4byte	.LASF2626
	.byte	0x1
	.4byte	0x11851
	.4byte	0x1185d
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0x110d3
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2519
	.byte	0x2e
	.byte	0x98
	.4byte	.LASF2627
	.4byte	0xe5
	.byte	0x1
	.4byte	0x11876
	.4byte	0x11882
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2521
	.byte	0x2e
	.byte	0x9a
	.4byte	.LASF2628
	.4byte	0xac
	.byte	0x1
	.4byte	0x1189b
	.4byte	0x118a7
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF2523
	.byte	0x2e
	.byte	0x9c
	.4byte	.LASF2629
	.byte	0x1
	.4byte	0x118bc
	.4byte	0x118c8
	.uleb128 0x17
	.4byte	0x120ab
	.byte	0x1
	.uleb128 0x19
	.4byte	0xac
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2525
	.byte	0x2e
	.byte	0x9e
	.4byte	.LASF2630
	.4byte	0xac
	.byte	0x1
	.4byte	0x118e1
	.4byte	0x118e8
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2531
	.byte	0x2e
	.byte	0xa0
	.4byte	.LASF2631
	.4byte	0xe5
	.byte	0x1
	.4byte	0x11901
	.4byte	0x11908
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2533
	.byte	0x2e
	.byte	0xa2
	.4byte	.LASF2632
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x11921
	.4byte	0x11928
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2537
	.byte	0x2e
	.byte	0xa4
	.4byte	.LASF2633
	.4byte	0x11111
	.byte	0x1
	.4byte	0x11941
	.4byte	0x11948
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF2539
	.byte	0x2e
	.byte	0xa6
	.4byte	.LASF2634
	.4byte	0x21e8
	.byte	0x1
	.4byte	0x11961
	.4byte	0x11968
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF102
	.byte	0x2e
	.byte	0xa8
	.4byte	.LASF2635
	.byte	0x1
	.4byte	0x1197d
	.4byte	0x1198a
	.uleb128 0x17
	.4byte	0x120b1
	.byte	0x1
	.uleb128 0x19
	.4byte	0xe5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x2a