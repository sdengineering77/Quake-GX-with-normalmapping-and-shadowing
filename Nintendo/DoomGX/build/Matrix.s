	.file	"Matrix.cpp"
	.section	".text"
.Ltext0:
	.section	.text._ZN14idFixedWinding5ClearEv,"axG",@progbits,_ZN14idFixedWinding5ClearEv,comdat
	.align 2
	.weak	_ZN14idFixedWinding5ClearEv
	.type	_ZN14idFixedWinding5ClearEv, @function
_ZN14idFixedWinding5ClearEv:
.LFB1502:
	.file 1 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/geometry/Winding.h"
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
	.section	.text._ZN9idWinding5ClearEv,"axG",@progbits,_ZN9idWinding5ClearEv,comdat
	.align 2
	.weak	_ZN9idWinding5ClearEv
	.type	_ZN9idWinding5ClearEv, @function
_ZN9idWinding5ClearEv:
.LFB1473:
	.loc 1 249 0
	.cfi_startproc
.LVL1:
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
.LVL2:
	.loc 1 250 0
	stw 0,4(31)
	.loc 1 251 0
	cmpwi 7,3,0
	beq- 7,.L3
	.loc 1 251 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L3:
	.loc 1 252 0 is_stmt 1
	li 0,0
	stw 0,8(31)
	.loc 1 253 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL3:
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
.LVL4:
	mflr 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB10469:
	lis 9,_ZTV9idWinding+8@ha
.LBE10469:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
.LBB10470:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	.cfi_offset 65, 4
	.loc 1 184 0
	lwz 3,8(3)
.LVL5:
	.loc 1 183 0
	stw 0,0(31)
	.loc 1 184 0
	cmpwi 7,3,0
	beq- 7,.L6
	.loc 1 184 0 is_stmt 0 discriminator 1
	bl _ZdaPv
.L6:
	.loc 1 185 0 is_stmt 1
	li 0,0
	stw 0,8(31)
.LBE10470:
	.loc 1 186 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL6:
	mtlr 0
	addi 1,1,16
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE1461:
	.size	_ZN9idWindingD2Ev, .-_ZN9idWindingD2Ev
	.section	".text"
	.align 2
	.type	_ZN6idVecXD2Ev.isra.6, @function
_ZN6idVecXD2Ev.isra.6:
.LFB2903:
	.file 2 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/math/Vector.h"
	.loc 2 1523 0
	.cfi_startproc
.LBB10472:
	.loc 2 1525 0
	cmpwi 0,4,0
.LBE10472:
	.loc 2 1523 0
	mflr 0
	stwu 1,-8(1)
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB10473:
	.loc 2 1525 0
	beq- 0,.L8
	.cfi_offset 65, 4
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,9,4
	ble- 7,.L11
	cmpwi 7,3,-1
	beq- 7,.L8
.L12:
	.loc 2 1526 0
	mr 3,4
	bl _Z10Mem_Free16Pv
.L8:
.LBE10473:
	.loc 2 1528 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L11:
.LCFI6:
	.cfi_restore_state
.LBB10474:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,4,9
	blt- 7,.L8
	cmpwi 7,3,-1
	bne+ 7,.L12
	b .L8
.LBE10474:
	.cfi_endproc
.LFE2903:
	.size	_ZN6idVecXD2Ev.isra.6, .-_ZN6idVecXD2Ev.isra.6
	.align 2
	.type	_ZN6idMatXD2Ev.isra.27, @function
_ZN6idMatXD2Ev.isra.27:
.LFB2924:
	.file 3 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/math/Matrix.h"
	.loc 3 1999 0
	.cfi_startproc
.LBB10476:
	.loc 3 2001 0
	cmpwi 0,4,0
.LBE10476:
	.loc 3 1999 0
	mflr 0
	stwu 1,-8(1)
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
.LBB10477:
	.loc 3 2001 0
	beq- 0,.L13
	.cfi_offset 65, 4
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,9,4
	ble- 7,.L16
	cmpwi 7,3,-1
	beq- 7,.L13
.L17:
	.loc 3 2002 0
	mr 3,4
	bl _Z10Mem_Free16Pv
.L13:
.LBE10477:
	.loc 3 2004 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI8:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L16:
.LCFI9:
	.cfi_restore_state
.LBB10478:
	.loc 3 2001 0
	addi 9,9,4096
	cmplw 7,4,9
	ble- 7,.L13
	cmpwi 7,3,-1
	bne+ 7,.L17
	b .L13
.LBE10478:
	.cfi_endproc
.LFE2924:
	.size	_ZN6idMatXD2Ev.isra.27, .-_ZN6idMatXD2Ev.isra.27
	.align 2
	.type	_Z41__static_initialization_and_destruction_0ii.constprop.51, @function
_Z41__static_initialization_and_destruction_0ii.constprop.51:
.LFB2947:
	.file 4 "d:/Data/Nintendo/DoomGX/src/idlib/math/Matrix.cpp"
	.loc 4 8102 0
	.cfi_startproc
.LVL7:
.LBB10479:
.LBB10480:
	.loc 3 117 0
	lis 11,.LC1@ha
.LBE10480:
.LBE10479:
.LBB10483:
.LBB10484:
	lis 10,.LANCHOR0@ha
.LBE10484:
.LBE10483:
.LBB10489:
.LBB10481:
	lwz 11,.LC1@l(11)
.LBE10481:
.LBE10489:
.LBB10490:
.LBB10485:
	la 9,.LANCHOR0@l(10)
	li 0,0
.LBE10485:
.LBE10490:
	.loc 4 2939 0
	addi 8,9,735
.LBB10491:
.LBB10486:
	.loc 3 117 0
	stw 0,4(9)
.LBE10486:
.LBE10491:
	.loc 4 2939 0
	rlwinm 8,8,0,0,27
.LBB10492:
.LBB10487:
	.loc 3 118 0
	stw 0,8(9)
	stw 0,12(9)
.LVL8:
.LBE10487:
.LBE10492:
.LBB10493:
.LBB10482:
	.loc 3 117 0
	stw 11,16(9)
	stw 0,20(9)
	.loc 3 118 0
	stw 0,24(9)
	stw 11,28(9)
.LVL9:
.LBE10482:
.LBE10493:
.LBB10494:
.LBB10495:
	.loc 3 419 0
	stw 0,32(9)
	stw 0,36(9)
	stw 0,40(9)
	.loc 3 420 0
	stw 0,44(9)
	stw 0,48(9)
	stw 0,52(9)
	.loc 3 421 0
	stw 0,56(9)
	stw 0,60(9)
	stw 0,64(9)
.LVL10:
.LBE10495:
.LBE10494:
.LBB10496:
.LBB10497:
	.loc 3 419 0
	stw 11,68(9)
	stw 0,72(9)
	stw 0,76(9)
	.loc 3 420 0
	stw 0,80(9)
	stw 11,84(9)
	stw 0,88(9)
	.loc 3 421 0
	stw 0,92(9)
	stw 0,96(9)
	stw 11,100(9)
.LVL11:
	.loc 3 837 0
	stw 0,104(9)
	stw 0,108(9)
	stw 0,112(9)
	stw 0,116(9)
	.loc 3 838 0
	stw 0,120(9)
	stw 0,124(9)
.LBE10497:
.LBE10496:
.LBB10499:
.LBB10488:
	.loc 3 117 0
	stw 0,.LANCHOR0@l(10)
.LBE10488:
.LBE10499:
.LBB10500:
.LBB10498:
	.loc 3 838 0
	stw 0,128(9)
	stw 0,132(9)
	.loc 3 839 0
	stw 0,136(9)
	stw 0,140(9)
	stw 0,144(9)
	stw 0,148(9)
	.loc 3 840 0
	stw 0,152(9)
	stw 0,156(9)
	stw 0,160(9)
	stw 0,164(9)
.LVL12:
	.loc 3 837 0
	stw 11,168(9)
	stw 0,172(9)
	stw 0,176(9)
	stw 0,180(9)
	.loc 3 838 0
	stw 0,184(9)
	stw 11,188(9)
	stw 0,192(9)
	stw 0,196(9)
	.loc 3 839 0
	stw 0,200(9)
	stw 0,204(9)
	stw 11,208(9)
	stw 0,212(9)
	.loc 3 840 0
	stw 0,216(9)
	stw 0,220(9)
	stw 0,224(9)
	stw 11,228(9)
.LVL13:
	.loc 3 1216 0
	stw 0,232(9)
	stw 0,236(9)
	stw 0,240(9)
	stw 0,244(9)
	stw 0,248(9)
	.loc 3 1217 0
	stw 0,252(9)
	stw 0,256(9)
	stw 0,260(9)
	stw 0,264(9)
	stw 0,268(9)
	.loc 3 1218 0
	stw 0,272(9)
	stw 0,276(9)
	stw 0,280(9)
	stw 0,284(9)
	stw 0,288(9)
	.loc 3 1219 0
	stw 0,292(9)
	stw 0,296(9)
	stw 0,300(9)
	stw 0,304(9)
	stw 0,308(9)
	.loc 3 1220 0
	stw 0,312(9)
	stw 0,316(9)
	stw 0,320(9)
	stw 0,324(9)
	stw 0,328(9)
.LVL14:
	.loc 3 1216 0
	stw 11,332(9)
	stw 0,336(9)
	stw 0,340(9)
	stw 0,344(9)
	stw 0,348(9)
	.loc 3 1217 0
	stw 0,352(9)
	stw 11,356(9)
	stw 0,360(9)
	stw 0,364(9)
	stw 0,368(9)
	.loc 3 1218 0
	stw 0,372(9)
	stw 0,376(9)
	stw 11,380(9)
	stw 0,384(9)
	stw 0,388(9)
	.loc 3 1219 0
	stw 0,392(9)
	stw 0,396(9)
	stw 0,400(9)
	stw 11,404(9)
	stw 0,408(9)
	.loc 3 1220 0
	stw 0,412(9)
	stw 0,416(9)
	stw 0,420(9)
	stw 0,424(9)
	stw 11,428(9)
.LVL15:
	.loc 3 1520 0
	stw 0,432(9)
	stw 0,436(9)
	stw 0,440(9)
	stw 0,444(9)
	stw 0,448(9)
	stw 0,452(9)
	.loc 3 1521 0
	stw 0,456(9)
	stw 0,460(9)
	stw 0,464(9)
	stw 0,468(9)
	stw 0,472(9)
	stw 0,476(9)
	.loc 3 1522 0
	stw 0,480(9)
	stw 0,484(9)
	stw 0,488(9)
	stw 0,492(9)
	stw 0,496(9)
	stw 0,500(9)
	.loc 3 1523 0
	stw 0,504(9)
	stw 0,508(9)
	stw 0,512(9)
	stw 0,516(9)
	stw 0,520(9)
	stw 0,524(9)
	.loc 3 1524 0
	stw 0,528(9)
	stw 0,532(9)
	stw 0,536(9)
	stw 0,540(9)
	stw 0,544(9)
	stw 0,548(9)
	.loc 3 1525 0
	stw 0,552(9)
	stw 0,556(9)
	stw 0,560(9)
	stw 0,564(9)
	stw 0,568(9)
	stw 0,572(9)
.LVL16:
	.loc 3 1520 0
	stw 11,576(9)
	stw 0,580(9)
	stw 0,584(9)
	stw 0,588(9)
	stw 0,592(9)
	stw 0,596(9)
	.loc 3 1521 0
	stw 0,600(9)
	stw 11,604(9)
	stw 0,608(9)
	stw 0,612(9)
	stw 0,616(9)
	stw 0,620(9)
	.loc 3 1522 0
	stw 0,624(9)
	stw 0,628(9)
	stw 11,632(9)
	stw 0,636(9)
	stw 0,640(9)
	stw 0,644(9)
	.loc 3 1523 0
	stw 0,648(9)
	stw 0,652(9)
	stw 0,656(9)
	stw 11,660(9)
	stw 0,664(9)
	stw 0,668(9)
	.loc 3 1524 0
	stw 0,672(9)
	stw 0,676(9)
	stw 0,680(9)
	stw 0,684(9)
	stw 11,688(9)
	stw 0,692(9)
	.loc 3 1525 0
	stw 0,696(9)
	stw 0,700(9)
	stw 0,704(9)
	stw 0,708(9)
	stw 0,712(9)
	stw 11,716(9)
.LBE10498:
.LBE10500:
	.loc 4 2939 0
	lis 9,_ZN6idMatX7tempPtrE@ha
	stw 8,_ZN6idMatX7tempPtrE@l(9)
	.loc 4 8102 0
	blr
	.cfi_endproc
.LFE2947:
	.size	_Z41__static_initialization_and_destruction_0ii.constprop.51, .-_Z41__static_initialization_and_destruction_0ii.constprop.51
	.section	.text._ZN14idFixedWindingD2Ev,"axG",@progbits,_ZN14idFixedWindingD5Ev,comdat
	.align 2
	.weak	_ZN14idFixedWindingD2Ev
	.type	_ZN14idFixedWindingD2Ev, @function
_ZN14idFixedWindingD2Ev:
.LFB1498:
	.loc 1 380 0
	.cfi_startproc
.LVL17:
.LBB10506:
	.loc 1 381 0
	li 0,0
.LBB10507:
.LBB10508:
.LBB10509:
	.loc 1 183 0
	lis 9,_ZTV9idWinding+8@ha
.LBE10509:
.LBE10508:
.LBE10507:
	.loc 1 381 0
	stw 0,8(3)
.LVL18:
.LBB10512:
.LBB10511:
.LBB10510:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(9)
	stw 0,0(3)
.LBE10510:
.LBE10511:
.LBE10512:
.LBE10506:
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
.LVL19:
	mflr 0
	stwu 1,-16(1)
.LCFI10:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB10516:
.LBB10517:
.LBB10518:
	lis 9,_ZTV9idWinding+8@ha
.LBE10518:
.LBE10517:
.LBE10516:
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL20:
	stw 0,20(1)
.LBB10523:
.LBB10521:
.LBB10519:
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
	beq- 7,.L23
	bl _ZdaPv
.L23:
	.loc 1 185 0
	li 0,0
.LBE10519:
.LBE10521:
.LBE10523:
	.loc 1 186 0
	mr 3,31
.LBB10524:
.LBB10522:
.LBB10520:
	.loc 1 185 0
	stw 0,8(31)
.LBE10520:
.LBE10522:
.LBE10524:
	.loc 1 186 0
	bl _ZdlPv
	lwz 0,20(1)
	lwz 31,12(1)
.LVL22:
	mtlr 0
	addi 1,1,16
.LCFI11:
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
.LVL23:
	mflr 0
	stwu 1,-8(1)
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB10531:
.LBB10532:
.LBB10533:
.LBB10534:
.LBB10535:
.LBB10536:
	.loc 1 183 0
	lis 11,_ZTV9idWinding+8@ha
.LBE10536:
.LBE10535:
.LBE10534:
.LBE10533:
.LBE10532:
.LBE10531:
	.loc 1 380 0
	stw 0,12(1)
.LBB10542:
.LBB10541:
.LBB10540:
	.loc 1 381 0
	li 0,0
	.cfi_offset 65, 4
	stw 0,8(3)
.LVL24:
.LBB10539:
.LBB10538:
.LBB10537:
	.loc 1 183 0
	la 0,_ZTV9idWinding+8@l(11)
	stw 0,0(3)
.LBE10537:
.LBE10538:
.LBE10539:
.LBE10540:
.LBE10541:
.LBE10542:
	.loc 1 382 0
	bl _ZdlPv
.LVL25:
	lwz 0,12(1)
	addi 1,1,8
.LCFI13:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE1500:
	.size	_ZN14idFixedWindingD0Ev, .-_ZN14idFixedWindingD0Ev
	.section	.text._ZN6idVecX7SetSizeEi,"axG",@progbits,_ZN6idVecX7SetSizeEi,comdat
	.align 2
	.weak	_ZN6idVecX7SetSizeEi
	.type	_ZN6idVecX7SetSizeEi, @function
_ZN6idVecX7SetSizeEi:
.LFB492:
	.loc 2 1707 0
	.cfi_startproc
.LVL26:
	mflr 0
	stwu 1,-24(1)
.LCFI14:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
.LBB10544:
	.loc 2 1708 0
	addi 29,4,3
	.cfi_offset 29, -12
.LBE10544:
	.loc 2 1707 0
	stw 30,16(1)
.LBB10545:
	.loc 2 1708 0
	rlwinm 29,29,0,0,29
.LVL27:
.LBE10545:
	.loc 2 1707 0
	stw 31,20(1)
	mr 30,4
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	stw 0,28(1)
	.loc 2 1707 0
	mr 31,3
.LBB10546:
	.loc 2 1709 0
	lwz 0,4(3)
	.cfi_offset 65, 4
	cmpw 7,29,0
	ble- 7,.L31
	.loc 2 1709 0 is_stmt 0 discriminator 1
	cmpwi 7,0,-1
	beq- 7,.L31
	.loc 2 1710 0 is_stmt 1
	lwz 3,8(3)
.LVL28:
	cmpwi 7,3,0
	beq- 7,.L32
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL29:
.L32:
	.loc 2 1713 0
	slwi 3,29,2
	bl _Z11Mem_Alloc16i
	.loc 2 1714 0
	stw 29,4(31)
	.loc 2 1713 0
	stw 3,8(31)
.L31:
	.loc 2 1717 0
	cmpw 7,30,29
	.loc 2 1716 0
	stw 30,0(31)
.LVL30:
	.loc 2 1717 0
	bge- 7,.L30
	slwi 9,30,2
	li 10,0
.LVL31:
.L34:
	.loc 2 1717 0 is_stmt 0 discriminator 2
	addi 30,30,1
.LVL32:
	lwz 11,8(31)
	.loc 2 1707 0 is_stmt 1 discriminator 2
	addi 0,30,3
	.loc 2 1717 0 discriminator 2
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,0,30
	addi 9,9,4
	bgt+ 7,.L34
.L30:
.LBE10546:
	.loc 2 1718 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL33:
	mtlr 0
	lwz 30,16(1)
.LVL34:
	lwz 31,20(1)
.LVL35:
	addi 1,1,24
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE492:
	.size	_ZN6idVecX7SetSizeEi, .-_ZN6idVecX7SetSizeEi
	.section	.text._ZN6idMatXaSERKS_,"axG",@progbits,_ZN6idMatXaSERKS_,comdat
	.align 2
	.weak	_ZN6idMatXaSERKS_
	.type	_ZN6idMatXaSERKS_, @function
_ZN6idMatXaSERKS_:
.LFB777:
	.loc 3 2059 0
	.cfi_startproc
.LVL36:
	mflr 0
	stwu 1,-32(1)
.LCFI16:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL37:
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
	.loc 3 2060 0
	lwz 26,0(4)
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
.LVL38:
	lwz 27,4(4)
.LVL39:
.LBB10550:
.LBB10551:
	.loc 3 2250 0
	lwz 0,8(3)
	.loc 3 2249 0
	mullw 29,26,27
	addi 28,29,3
	rlwinm 28,28,0,0,29
.LVL40:
	.loc 3 2250 0
	cmpw 7,28,0
	ble- 7,.L44
.LVL41:
	cmpwi 7,0,-1
	beq- 7,.L44
	.loc 3 2251 0
	lwz 3,12(3)
.LVL42:
	cmpwi 7,3,0
	beq- 7,.L40
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL43:
.L40:
	.loc 3 2254 0
	slwi 3,28,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 28,8(31)
	.loc 3 2254 0
	mr 4,3
	stw 3,12(31)
	b .L38
.L44:
	.loc 3 2250 0
	lwz 4,12(31)
.L38:
	.loc 3 2259 0
	cmpw 7,29,28
	.loc 3 2257 0
	stw 26,0(31)
	.loc 3 2258 0
	stw 27,4(31)
.LVL44:
	.loc 3 2259 0
	bge- 7,.L41
	slwi 9,29,2
	li 11,0
.L43:
	addi 29,29,1
.LVL45:
	stwx 11,4,9
	.loc 3 2059 0
	addi 0,29,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,12(31)
	cmpw 7,29,0
	blt+ 7,.L43
.L41:
.LBE10551:
.LBE10550:
	.loc 3 2062 0
	lis 9,SIMDProcessor@ha
	lwz 6,0(30)
	lwz 3,SIMDProcessor@l(9)
	lwz 9,4(30)
	lwz 11,0(3)
	lwz 5,12(30)
	mullw 6,6,9
	lwz 0,164(11)
	mtctr 0
	bctrl
	.loc 3 2066 0
	li 0,0
	lis 9,_ZN6idMatX9tempIndexE@ha
	.loc 3 2068 0
	mr 3,31
	.loc 3 2066 0
	stw 0,_ZN6idMatX9tempIndexE@l(9)
	.loc 3 2068 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL46:
	mtlr 0
	lwz 27,12(1)
.LVL47:
	lwz 28,16(1)
.LVL48:
	lwz 29,20(1)
.LVL49:
	lwz 30,24(1)
.LVL50:
	lwz 31,28(1)
.LVL51:
	addi 1,1,32
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE777:
	.size	_ZN6idMatXaSERKS_, .-_ZN6idMatXaSERKS_
	.section	.text._ZNK6idMatXmlERKS_,"axG",@progbits,_ZNK6idMatXmlERKS_,comdat
	.align 2
	.weak	_ZNK6idMatXmlERKS_
	.type	_ZNK6idMatXmlERKS_, @function
_ZNK6idMatXmlERKS_:
.LFB780:
	.loc 3 2100 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA780
.LVL52:
	mflr 0
	stwu 1,-16(1)
.LCFI18:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	mr 6,5
	mr 9,4
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
.LVL53:
	stw 0,20(1)
.LBB10561:
.LBB10562:
.LBB10563:
	.loc 3 1995 0
	li 0,0
	.cfi_offset 65, 4
.LBE10563:
.LBE10562:
.LBE10561:
	.loc 3 2100 0
	stw 30,8(1)
.LBB10570:
.LBB10565:
.LBB10564:
	.loc 3 1995 0
	stw 0,0(3)
	stw 0,8(3)
	stw 0,4(3)
	.loc 3 1996 0
	stw 0,12(3)
.LBE10564:
.LBE10565:
	.loc 3 2105 0
	lwz 5,0(4)
.LVL54:
.LBB10566:
.LBB10567:
	.loc 3 2267 0
	lis 4,_ZN6idMatX9tempIndexE@ha
.LVL55:
.LBE10567:
.LBE10566:
	.loc 3 2105 0
	lwz 7,4(6)
.LVL56:
.LBB10569:
.LBB10568:
	.loc 3 2267 0
	lwz 8,_ZN6idMatX9tempIndexE@l(4)
	.loc 3 2265 0
	mullw 11,5,7
	addi 0,11,3
	rlwinm 0,0,0,0,29
.LVL57:
	.loc 3 2267 0
	add 10,0,8
	slwi 8,8,2
	cmpwi 7,10,1024
	ble- 7,.L46
	.cfi_offset 30, -8
.LVL58:
	mr 10,0
	li 8,0
.LVL59:
.L46:
	.loc 3 2270 0
	lis 3,_ZN6idMatX7tempPtrE@ha
.LVL60:
	.loc 3 2275 0
	cmpw 7,11,0
	.loc 3 2270 0
	lwz 3,_ZN6idMatX7tempPtrE@l(3)
	.loc 3 2271 0
	stw 10,_ZN6idMatX9tempIndexE@l(4)
	.loc 3 2270 0
	add 8,3,8
	.loc 3 2272 0
	stw 0,8(31)
	.loc 3 2270 0
	stw 8,12(31)
	.loc 3 2273 0
	stw 5,0(31)
	.loc 3 2274 0
	stw 7,4(31)
.LVL61:
	.loc 3 2275 0
	bge- 7,.L47
	slwi 10,11,2
	li 7,0
	b .L48
.LVL62:
.L53:
	lwz 8,12(31)
.L48:
	addi 11,11,1
.LVL63:
	stwx 7,8,10
	.loc 3 2100 0
	addi 0,11,3
	.loc 3 2275 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,11,0
	blt+ 7,.L53
.L47:
.LBE10568:
.LBE10569:
	.loc 3 2107 0
	lis 11,SIMDProcessor@ha
.LVL64:
	mr 4,31
	lwz 3,SIMDProcessor@l(11)
	mr 5,9
	lwz 11,0(3)
	lwz 0,216(11)
	mtctr 0
.LEHB0:
	bctrl
.LEHE0:
.LVL65:
.LBE10570:
	.loc 3 2112 0
	lwz 0,20(1)
	mr 3,31
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL66:
	addi 1,1,16
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL67:
.L51:
.LCFI20:
	.cfi_restore_state
	mr 30,3
.LBB10571:
	.loc 3 2111 0
	lwz 4,12(31)
	lwz 3,8(31)
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,30
.LEHB1:
	bl _Unwind_Resume
.LEHE1:
.LBE10571:
	.cfi_endproc
.LFE780:
	.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA780:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE780-.LLSDACSB780
.LLSDACSB780:
	.uleb128 .LEHB0-.LFB780
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L51-.LFB780
	.uleb128 0
	.uleb128 .LEHB1-.LFB780
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE780:
	.section	.text._ZNK6idMatXmlERKS_,"axG",@progbits,_ZNK6idMatXmlERKS_,comdat
	.size	_ZNK6idMatXmlERKS_, .-_ZNK6idMatXmlERKS_
	.section	.text._ZN6idMatX8SwapRowsEii,"axG",@progbits,_ZN6idMatX8SwapRowsEii,comdat
	.align 2
	.weak	_ZN6idMatX8SwapRowsEii
	.type	_ZN6idMatX8SwapRowsEii, @function
_ZN6idMatX8SwapRowsEii:
.LFB806:
	.loc 3 2382 0
	.cfi_startproc
.LVL68:
	mflr 0
	stwu 1,-32(1)
.LCFI21:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 28,16(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 29,20(1)
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,28(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI22:
	.cfi_def_cfa_register 31
	stw 0,36(1)
.LBB10572:
	.loc 3 2385 0
	lwz 10,0(1)
	lwz 0,4(3)
	.cfi_offset 65, 4
	slwi 9,0,2
	.loc 3 2386 0
	mullw 0,0,4
	.loc 3 2385 0
	addi 11,9,45
	rlwinm 11,11,0,0,27
	neg 11,11
	stwux 10,1,11
	.loc 3 2386 0
	slwi 0,0,2
	mr 5,9
.LVL69:
	lwz 4,12(3)
.LVL70:
	.loc 3 2385 0
	addi 29,1,23
	rlwinm 29,29,0,0,27
.LVL71:
	.loc 3 2386 0
	add 4,4,0
	mr 3,29
.LVL72:
	bl memcpy
	.loc 3 2387 0
	lwz 4,4(30)
	lwz 0,12(30)
	mullw 27,4,27
.LVL73:
	slwi 5,4,2
	mullw 4,4,28
	slwi 3,27,2
	add 3,0,3
	slwi 4,4,2
	add 4,0,4
	bl memcpy
	.loc 3 2388 0
	lwz 5,4(30)
	lwz 3,12(30)
	mr 4,29
	mullw 28,5,28
.LVL74:
	slwi 5,5,2
	slwi 28,28,2
	add 3,3,28
	bl memcpy
.LBE10572:
	.loc 3 2391 0
	addi 11,31,32
	lwz 0,4(11)
	mr 3,30
	lwz 27,-20(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL75:
	lwz 30,-8(11)
.LVL76:
	lwz 31,-4(11)
.LCFI23:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI24:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
.LVL77:
	blr
	.cfi_endproc
.LFE806:
	.size	_ZN6idMatX8SwapRowsEii, .-_ZN6idMatX8SwapRowsEii
	.section	".text"
	.align 2
	.globl _ZN6idMat211InverseSelfEv
	.type	_ZN6idMat211InverseSelfEv, @function
_ZN6idMat211InverseSelfEv:
.LFB2538:
	.loc 4 47 0
	.cfi_startproc
.LVL78:
	stwu 1,-16(1)
.LCFI25:
	.cfi_def_cfa_offset 16
	.loc 4 47 0
	mr 9,3
.LVL79:
.LBB10573:
	.loc 4 52 0
	lfs 10,4(3)
	lfs 11,8(3)
	lfs 13,0(3)
.LVL80:
	fmuls 0,10,11
	lfs 12,12(3)
.LVL81:
	.loc 4 55 0
	li 3,0
.LVL82:
	.loc 4 52 0
	fmsubs 0,13,12,0
	stfs 0,8(1)
.LVL83:
.LBB10574:
.LBB10575:
	.file 5 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/math/Math.h"
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE10575:
.LBE10574:
	.loc 4 54 0
	lis 11,.LC2@ha
	stw 0,12(1)
	lfs 0,12(1)
.LVL84:
	fmr 9,0
	lfd 0,.LC2@l(11)
	fcmpu 7,9,0
	blt- 7,.L56
	.loc 4 58 0
	lis 11,.LC1@ha
	.loc 4 52 0
	lfs 0,8(1)
	.loc 4 58 0
	lfs 9,.LC1@l(11)
	.loc 4 62 0
	fneg 10,10
	.loc 4 63 0
	fneg 11,11
	.loc 4 66 0
	li 3,1
	.loc 4 58 0
	fdiv 0,9,0
.LVL85:
	.loc 4 61 0
	fmul 12,12,0
	.loc 4 62 0
	fmul 10,10,0
	.loc 4 63 0
	fmul 11,11,0
	.loc 4 64 0
	fmul 0,13,0
.LVL86:
	.loc 4 61 0
	frsp 12,12
	.loc 4 62 0
	frsp 10,10
	.loc 4 63 0
	frsp 11,11
	.loc 4 64 0
	frsp 0,0
	.loc 4 61 0
	stfs 12,0(9)
.LVL87:
	.loc 4 62 0
	stfs 10,4(9)
.LVL88:
	.loc 4 63 0
	stfs 11,8(9)
.LVL89:
	.loc 4 64 0
	stfs 0,12(9)
.LVL90:
.L56:
.LBE10573:
	.loc 4 67 0
	addi 1,1,16
.LCFI26:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2538:
	.size	_ZN6idMat211InverseSelfEv, .-_ZN6idMat211InverseSelfEv
	.align 2
	.globl _ZN6idMat215InverseFastSelfEv
	.type	_ZN6idMat215InverseFastSelfEv, @function
_ZN6idMat215InverseFastSelfEv:
.LFB2539:
	.loc 4 74 0
	.cfi_startproc
.LVL91:
	stwu 1,-16(1)
.LCFI27:
	.cfi_def_cfa_offset 16
	.loc 4 74 0
	mr 9,3
.LVL92:
.LBB10576:
	.loc 4 80 0
	lfs 10,4(3)
	lfs 11,8(3)
	lfs 13,0(3)
.LVL93:
	fmuls 0,10,11
	lfs 12,12(3)
.LVL94:
	.loc 4 83 0
	li 3,0
.LVL95:
	.loc 4 80 0
	fmsubs 0,13,12,0
	stfs 0,8(1)
.LVL96:
.LBB10577:
.LBB10578:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE10578:
.LBE10577:
	.loc 4 82 0
	lis 11,.LC2@ha
	stw 0,12(1)
	lfs 0,12(1)
.LVL97:
	fmr 9,0
	lfd 0,.LC2@l(11)
	fcmpu 7,9,0
	blt- 7,.L59
	.loc 4 86 0
	lis 11,.LC1@ha
	.loc 4 80 0
	lfs 0,8(1)
	.loc 4 86 0
	lfs 9,.LC1@l(11)
	.loc 4 90 0
	fneg 10,10
	.loc 4 91 0
	fneg 11,11
	.loc 4 94 0
	li 3,1
	.loc 4 86 0
	fdiv 0,9,0
.LVL98:
	.loc 4 89 0
	fmul 12,12,0
	.loc 4 90 0
	fmul 10,10,0
	.loc 4 91 0
	fmul 11,11,0
	.loc 4 92 0
	fmul 0,13,0
.LVL99:
	.loc 4 89 0
	frsp 12,12
	.loc 4 90 0
	frsp 10,10
	.loc 4 91 0
	frsp 11,11
	.loc 4 92 0
	frsp 0,0
	.loc 4 89 0
	stfs 12,0(9)
.LVL100:
	.loc 4 90 0
	stfs 10,4(9)
.LVL101:
	.loc 4 91 0
	stfs 11,8(9)
.LVL102:
	.loc 4 92 0
	stfs 0,12(9)
.LVL103:
.L59:
.LBE10576:
	.loc 4 121 0
	addi 1,1,16
.LCFI28:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2539:
	.size	_ZN6idMat215InverseFastSelfEv, .-_ZN6idMat215InverseFastSelfEv
	.align 2
	.globl _ZNK6idMat28ToStringEi
	.type	_ZNK6idMat28ToStringEi, @function
_ZNK6idMat28ToStringEi:
.LFB2540:
	.loc 4 128 0
	.cfi_startproc
.LVL104:
	mflr 0
	stwu 1,-8(1)
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 5,4
	.loc 4 129 0
	li 4,4
.LVL105:
	.loc 4 128 0
	stw 0,12(1)
	.loc 4 129 0
	.cfi_offset 65, 4
	bl _ZN5idStr18FloatArrayToStringEPKfii
.LVL106:
	.loc 4 130 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI30:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2540:
	.size	_ZNK6idMat28ToStringEi, .-_ZNK6idMat28ToStringEi
	.align 2
	.globl _ZNK6idMat38ToAnglesEv
	.type	_ZNK6idMat38ToAnglesEv, @function
_ZNK6idMat38ToAnglesEv:
.LFB2541:
	.loc 4 147 0
	.cfi_startproc
.LVL107:
.LBB10579:
	.loc 4 156 0
	lis 9,.LC1@ha
.LBB10580:
.LBB10581:
	.loc 2 402 0
	lfs 1,8(4)
.LBE10581:
.LBE10580:
	.loc 4 156 0
	lfs 0,.LC1@l(9)
.LBE10579:
	.loc 4 147 0
	mflr 0
	stwu 1,-32(1)
.LCFI31:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB10582:
	.loc 4 156 0
	fcmpu 7,1,0
.LBE10582:
	.loc 4 147 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -24
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -20
.LVL108:
	stw 0,36(1)
	stfd 30,16(1)
	stfd 31,24(1)
.LBB10583:
	.loc 4 156 0
	bgt- 7,.L68
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
.LVL109:
	.loc 4 158 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	fcmpu 7,1,0
	blt- 7,.L68
.LVL110:
	.loc 4 162 0
	bl asin
.LVL111:
	fneg 31,1
.LVL112:
	.loc 4 163 0
	fmr 1,31
	bl cos
.LVL113:
	.loc 4 165 0
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	lis 9,_ZN6idMath11FLT_EPSILONE@ha
	lfs 13,_ZN6idMath11FLT_EPSILONE@l(9)
	.loc 4 166 0
	lis 9,_ZN6idMath9M_RAD2DEGE@ha
	lfs 30,_ZN6idMath9M_RAD2DEGE@l(9)
	.loc 4 165 0
	fmuls 0,13,0
	fcmpu 7,0,1
	blt- 7,.L71
.L70:
	.loc 4 170 0
	fmul 31,30,31
.LVL114:
	.loc 4 171 0
	lfs 1,12(31)
.LVL115:
	lfs 2,16(31)
	.loc 4 170 0
	frsp 31,31
	stfs 31,0(30)
.LVL116:
	.loc 4 171 0
	bl atan2
	.loc 4 172 0
	li 0,0
	.loc 4 171 0
	fneg 1,1
	.loc 4 172 0
	stw 0,8(30)
.LBE10583:
	.loc 4 175 0
	mr 3,30
.LBB10584:
	.loc 4 171 0
	fmul 30,30,1
	frsp 30,30
	stfs 30,4(30)
.LBE10584:
	.loc 4 175 0
	lwz 0,36(1)
	lwz 30,8(1)
.LVL117:
	mtlr 0
	lwz 31,12(1)
.LVL118:
	lfd 30,16(1)
	lfd 31,24(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI32:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL119:
.L68:
.LCFI33:
	.cfi_restore_state
.LBB10585:
	.loc 4 159 0
	fmr 1,0
.LVL120:
	.loc 4 162 0
	bl asin
.LVL121:
	fneg 31,1
.LVL122:
	.loc 4 163 0
	fmr 1,31
	bl cos
.LVL123:
	.loc 4 165 0
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	lis 9,_ZN6idMath11FLT_EPSILONE@ha
	lfs 13,_ZN6idMath11FLT_EPSILONE@l(9)
	.loc 4 166 0
	lis 9,_ZN6idMath9M_RAD2DEGE@ha
	lfs 30,_ZN6idMath9M_RAD2DEGE@l(9)
	.loc 4 165 0
	fmuls 0,13,0
	fcmpu 7,0,1
	bnl+ 7,.L70
.L71:
	.loc 4 166 0
	fmul 31,30,31
.LVL124:
	.loc 4 167 0
	lfs 2,0(31)
	lfs 1,4(31)
.LVL125:
	.loc 4 166 0
	frsp 31,31
	stfs 31,0(30)
.LVL126:
	.loc 4 167 0
	bl atan2
	.loc 4 168 0
	lfs 2,32(31)
	.loc 4 167 0
	fmul 0,30,1
	.loc 4 168 0
	lfs 1,20(31)
	.loc 4 167 0
	frsp 0,0
	stfs 0,4(30)
.LVL127:
	.loc 4 168 0
	bl atan2
.LBE10585:
	.loc 4 175 0
	mr 3,30
.LBB10586:
	.loc 4 168 0
	fmul 30,30,1
	frsp 30,30
	stfs 30,8(30)
.LBE10586:
	.loc 4 175 0
	lwz 0,36(1)
	lwz 30,8(1)
.LVL128:
	mtlr 0
	lwz 31,12(1)
.LVL129:
	lfd 30,16(1)
	lfd 31,24(1)
	addi 1,1,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI34:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2541:
	.size	_ZNK6idMat38ToAnglesEv, .-_ZNK6idMat38ToAnglesEv
	.align 2
	.globl _ZNK6idMat36ToQuatEv
	.type	_ZNK6idMat36ToQuatEv, @function
_ZNK6idMat36ToQuatEv:
.LFB2542:
	.loc 4 182 0
	.cfi_startproc
.LVL130:
	stwu 1,-16(1)
.LCFI35:
	.cfi_def_cfa_offset 16
.LBB10644:
	.loc 4 195 0
	lis 9,.LC9@ha
	lfs 10,.LC9@l(9)
.LBB10645:
.LBB10646:
	.loc 2 402 0
	lfs 12,0(4)
.LVL131:
.LBE10646:
.LBE10645:
.LBB10647:
.LBB10648:
	lfs 13,16(4)
.LVL132:
.LBE10648:
.LBE10647:
.LBB10649:
.LBB10650:
	lfs 0,32(4)
.LBE10650:
.LBE10649:
	.loc 4 193 0
	fadds 11,12,13
	fadds 11,11,0
.LVL133:
	.loc 4 195 0
	fcmpu 7,11,10
	bgt- 7,.L80
.LVL134:
	.loc 4 207 0
	fcmpu 7,12,13
	mfcr 11
	rlwinm 11,11,29,1
.LVL135:
	.loc 4 211 0
	mulli 10,11,12
.LBB10651:
.LBB10652:
	.loc 2 402 0
	slwi 11,11,2
.LVL136:
	add 9,4,10
.LBE10652:
.LBE10651:
	.loc 4 211 0
	lfsx 13,9,11
.LBB10654:
.LBB10653:
	.loc 2 402 0
	mr 9,11
.LBE10653:
.LBE10654:
	.loc 4 211 0
	fcmpu 7,0,13
.LVL137:
	bgt- 7,.L81
.LVL138:
.L76:
	.loc 4 214 0
	lis 7,.LANCHOR1@ha
	.loc 4 217 0
	add 10,4,10
	.loc 4 214 0
	la 7,.LANCHOR1@l(7)
	.loc 4 217 0
	lfsx 0,10,9
	.loc 4 214 0
	lwzx 8,7,11
.LVL139:
	.loc 4 215 0
	slwi 0,8,2
	.loc 4 217 0
	mulli 8,8,12
	.loc 4 215 0
	lwzx 11,7,0
.LVL140:
	.loc 4 217 0
	add 8,4,8
	mulli 7,11,12
.LVL141:
.LBB10655:
.LBB10656:
	.loc 2 402 0
	slwi 11,11,2
.LBE10656:
.LBE10655:
	.loc 4 217 0
	lfsx 12,8,0
	add 4,4,7
.LVL142:
	lis 7,.LC1@ha
	lfsx 13,4,11
	fadds 13,12,13
	fsubs 13,0,13
	lfs 0,.LC1@l(7)
.LBB10657:
.LBB10658:
	.loc 5 275 0
	lis 7,.LC6@ha
	lfs 11,.LC6@l(7)
.LVL143:
.LBE10658:
.LBE10657:
	.loc 4 217 0
	fadds 0,13,0
	stfs 0,8(1)
.LVL144:
.LBB10661:
.LBB10659:
	.loc 5 275 0
	fmuls 9,0,11
	.loc 5 270 0
	lwz 7,8(1)
.LVL145:
	.loc 4 182 0
	fneg 9,9
	.loc 5 276 0
	rlwinm 5,7,9,24,31
	rlwinm 6,7,19,21,29
	subfic 7,5,380
	lis 5,_ZN6idMath5iSqrtE@ha
	la 5,_ZN6idMath5iSqrtE@l(5)
	rlwinm 7,7,22,0,8
	lwzx 6,5,6
	or 7,7,6
	.loc 5 277 0
	stw 7,12(1)
	.loc 5 278 0
	lis 7,.LC8@ha
	lfs 10,.LC8@l(7)
	.loc 5 277 0
	lfs 0,12(1)
.LVL146:
	fmr 12,0
.LVL147:
	.loc 5 278 0
	fmul 13,12,12
	fmadd 13,9,13,10
	fmul 13,12,13
.LVL148:
.LBE10659:
.LBE10661:
	.loc 4 220 0
	lfs 12,8(1)
.LBB10662:
.LBB10660:
	.loc 5 279 0
	fmul 0,13,13
	fmadd 0,9,0,10
.LVL149:
	fmul 0,13,0
.LVL150:
	.loc 5 280 0
	frsp 0,0
.LBE10660:
.LBE10662:
	.loc 4 218 0
	fmuls 0,0,11
.LVL151:
	.loc 4 220 0
	fmuls 13,0,12
.LVL152:
	stfsx 13,3,9
.LVL153:
	.loc 4 221 0
	lfsx 12,4,0
	lfsx 13,8,11
	fsubs 13,12,13
	fmuls 13,13,0
	stfs 13,12(3)
.LVL154:
	.loc 4 222 0
	lfsx 12,8,9
	lfsx 13,10,0
	fadds 13,12,13
	fmuls 13,13,0
	stfsx 13,3,0
.LVL155:
	.loc 4 223 0
	lfsx 12,4,9
	lfsx 13,10,11
.LBE10644:
	.loc 4 226 0
	addi 1,1,16
	.cfi_remember_state
.LCFI36:
	.cfi_def_cfa_offset 0
.LBB10679:
	.loc 4 223 0
	fadds 13,12,13
	fmuls 0,13,0
.LVL156:
	stfsx 0,3,11
.LBE10679:
	.loc 4 226 0
	blr
.LVL157:
.L81:
.LCFI37:
	.cfi_restore_state
.LBB10680:
	.loc 4 211 0
	li 9,8
	li 11,8
	li 10,24
	b .L76
.LVL158:
.L80:
	.loc 4 197 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
.LBB10663:
.LBB10664:
	.loc 5 275 0
	lis 9,.LC6@ha
.LBE10664:
.LBE10663:
	.loc 4 197 0
	fadds 0,11,0
.LBB10672:
.LBB10665:
	.loc 5 275 0
	lfs 11,.LC6@l(9)
.LVL159:
.LBE10665:
.LBE10672:
	.loc 4 197 0
	stfs 0,8(1)
.LVL160:
.LBB10673:
.LBB10666:
	.loc 5 275 0
	fmuls 9,0,11
	.loc 5 270 0
	lwz 0,8(1)
.LVL161:
	.loc 4 182 0
	fneg 9,9
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	or 0,0,9
	.loc 5 278 0
	lis 9,.LC8@ha
	.loc 5 277 0
	stw 0,12(1)
	.loc 5 278 0
	lfs 10,.LC8@l(9)
	.loc 5 277 0
	lfs 0,12(1)
.LVL162:
.LBE10666:
.LBE10673:
	.loc 4 201 0
	lfs 3,28(4)
.LBB10674:
.LBB10667:
	.loc 5 277 0
	fmr 12,0
.LVL163:
.LBE10667:
.LBE10674:
	.loc 4 201 0
	lfs 4,20(4)
	.loc 4 202 0
	lfs 5,8(4)
	lfs 7,24(4)
.LBB10675:
.LBB10668:
	.loc 5 278 0
	fmul 13,12,12
.LBE10668:
.LBE10675:
	.loc 4 203 0
	lfs 6,12(4)
	lfs 8,4(4)
	.loc 4 202 0
	fsubs 7,5,7
	.loc 4 203 0
	fsubs 8,6,8
.LBB10676:
.LBB10669:
	.loc 5 278 0
	fmadd 13,9,13,10
	fmul 13,12,13
.LVL164:
.LBE10669:
.LBE10676:
	.loc 4 201 0
	fsubs 12,3,4
.LBB10677:
.LBB10670:
	.loc 5 279 0
	fmul 0,13,13
	fmadd 0,9,0,10
.LVL165:
	fmul 0,13,0
.LVL166:
.LBE10670:
.LBE10677:
	.loc 4 200 0
	lfs 13,8(1)
.LVL167:
.LBE10680:
	.loc 4 226 0
	addi 1,1,16
.LCFI38:
	.cfi_def_cfa_offset 0
.LBB10681:
.LBB10678:
.LBB10671:
	.loc 5 280 0
	frsp 0,0
.LVL168:
.LBE10671:
.LBE10678:
	.loc 4 198 0
	fmuls 0,0,11
.LVL169:
	.loc 4 200 0
	fmuls 11,0,13
	.loc 4 201 0
	fmuls 12,12,0
	.loc 4 202 0
	fmuls 13,7,0
	.loc 4 203 0
	fmuls 0,8,0
.LVL170:
	.loc 4 200 0
	stfs 11,12(3)
.LVL171:
	.loc 4 201 0
	stfs 12,0(3)
.LVL172:
	.loc 4 202 0
	stfs 13,4(3)
.LVL173:
	.loc 4 203 0
	stfs 0,8(3)
.LBE10681:
	.loc 4 226 0
	blr
	.cfi_endproc
.LFE2542:
	.size	_ZNK6idMat36ToQuatEv, .-_ZNK6idMat36ToQuatEv
	.align 2
	.globl _ZNK6idMat37ToCQuatEv
	.type	_ZNK6idMat37ToCQuatEv, @function
_ZNK6idMat37ToCQuatEv:
.LFB2543:
	.loc 4 233 0
	.cfi_startproc
.LVL174:
	stwu 1,-32(1)
.LCFI39:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB10682:
	.loc 4 234 0
	addi 3,1,8
.LVL175:
.LBE10682:
	.loc 4 233 0
	stw 0,36(1)
.LBB10689:
	.loc 4 234 0
	.cfi_offset 65, 4
	bl _ZNK6idMat36ToQuatEv
.LVL176:
	.loc 4 235 0
	lis 9,.LC9@ha
	lfs 13,20(1)
	lfs 0,.LC9@l(9)
	.loc 4 234 0
	lfs 12,8(1)
.LVL177:
	.loc 4 235 0
	fcmpu 7,13,0
	.loc 4 234 0
	lfs 13,12(1)
.LVL178:
	lfs 0,16(1)
.LVL179:
	.loc 4 235 0
	blt- 7,.L88
.LVL180:
.LBB10683:
.LBB10684:
	.file 6 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/math/Quat.h"
	.loc 6 341 0
	stfs 12,0(31)
.LBE10684:
.LBE10683:
.LBE10689:
	.loc 4 239 0
	mr 3,31
.LBB10690:
.LBB10686:
.LBB10685:
	.loc 6 342 0
	stfs 13,4(31)
	.loc 6 343 0
	stfs 0,8(31)
.LBE10685:
.LBE10686:
.LBE10690:
	.loc 4 239 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL181:
	mtlr 0
	addi 1,1,32
	.cfi_remember_state
.LCFI40:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL182:
.L88:
.LCFI41:
	.cfi_restore_state
.LBB10691:
	.loc 4 236 0
	fneg 12,12
.LBE10691:
	.loc 4 239 0
	mr 3,31
.LBB10692:
	.loc 4 236 0
	fneg 13,13
	fneg 0,0
.LBB10687:
.LBB10688:
	.loc 6 341 0
	stfs 12,0(31)
	.loc 6 342 0
	stfs 13,4(31)
	.loc 6 343 0
	stfs 0,8(31)
.LBE10688:
.LBE10687:
.LBE10692:
	.loc 4 239 0
	lwz 0,36(1)
	lwz 31,28(1)
.LVL183:
	mtlr 0
	addi 1,1,32
	.cfi_restore 31
.LCFI42:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2543:
	.size	_ZNK6idMat37ToCQuatEv, .-_ZNK6idMat37ToCQuatEv
	.align 2
	.globl _ZNK6idMat310ToRotationEv
	.type	_ZNK6idMat310ToRotationEv, @function
_ZNK6idMat310ToRotationEv:
.LFB2544:
	.loc 4 246 0
	.cfi_startproc
.LVL184:
	mflr 0
	stwu 1,-56(1)
.LCFI43:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
.LBB10775:
	.loc 4 257 0
	lis 9,.LC9@ha
.LBE10775:
	.loc 4 246 0
	stw 27,36(1)
	stw 0,60(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	stw 31,52(1)
.LBB10874:
	.loc 4 257 0
	lfs 10,.LC9@l(9)
.LBB10776:
.LBB10777:
	.loc 2 402 0
	lfs 12,0(4)
.LVL185:
.LBE10777:
.LBE10776:
.LBB10778:
.LBB10779:
	lfs 13,16(4)
.LVL186:
.LBE10779:
.LBE10778:
.LBB10780:
.LBB10781:
	lfs 0,32(4)
.LBE10781:
.LBE10780:
	.loc 4 256 0
	fadds 11,12,13
	fadds 11,11,0
.LVL187:
	.loc 4 257 0
	fcmpu 7,11,10
	bng- 7,.L124
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.cfi_offset 27, -20
.LVL188:
	.loc 4 259 0
	lis 31,.LC1@ha
.LBB10782:
.LBB10783:
	.loc 5 276 0
	lis 30,_ZN6idMath5iSqrtE@ha
.LBE10783:
.LBE10782:
	.loc 4 259 0
	lfs 0,.LC1@l(31)
.LBB10792:
.LBB10784:
	.loc 5 276 0
	la 30,_ZN6idMath5iSqrtE@l(30)
	.loc 5 275 0
	lis 28,.LC6@ha
	.loc 5 278 0
	lis 29,.LC8@ha
.LBE10784:
.LBE10792:
	.loc 4 259 0
	fadds 0,11,0
.LBB10793:
.LBB10785:
	.loc 5 275 0
	lfs 11,.LC6@l(28)
.LVL189:
	.loc 5 278 0
	lfs 10,.LC8@l(29)
.LBE10785:
.LBE10793:
.LBB10794:
.LBB10795:
	.loc 5 545 0
	lis 27,.LC4@ha
.LBE10795:
.LBE10794:
	.loc 4 259 0
	stfs 0,8(1)
.LVL190:
.LBB10801:
.LBB10786:
	.loc 5 275 0
	fmuls 9,0,11
	.loc 5 270 0
	lwz 0,8(1)
.LVL191:
	.loc 4 246 0
	fneg 9,9
.LVL192:
	.loc 5 276 0
	rlwinm 9,0,19,21,29
	rlwinm 11,0,9,24,31
	subfic 0,11,380
	lwzx 9,30,9
	rlwinm 0,0,22,0,8
	or 0,0,9
	.loc 5 277 0
	stw 0,28(1)
	lfs 0,28(1)
.LVL193:
.LBE10786:
.LBE10801:
	.loc 4 263 0
	lfs 4,28(4)
.LBB10802:
.LBB10787:
	.loc 5 277 0
	fmr 12,0
.LVL194:
.LBE10787:
.LBE10802:
	.loc 4 263 0
	lfs 0,20(4)
.LVL195:
	.loc 4 264 0
	lfs 5,8(4)
	lfs 7,24(4)
.LBB10803:
.LBB10788:
	.loc 5 278 0
	fmul 13,12,12
.LBE10788:
.LBE10803:
	.loc 4 265 0
	lfs 6,12(4)
	lfs 8,4(4)
	.loc 4 264 0
	fsubs 7,5,7
	.loc 4 265 0
	fsubs 8,6,8
.LBB10804:
.LBB10789:
	.loc 5 278 0
	fmadd 13,9,13,10
	fmul 13,12,13
.LVL196:
.LBE10789:
.LBE10804:
	.loc 4 263 0
	fsubs 12,4,0
.LBB10805:
.LBB10790:
	.loc 5 279 0
	fmul 0,13,13
	fmadd 0,9,0,10
.LVL197:
	fmul 0,13,0
.LVL198:
.LBE10790:
.LBE10805:
	.loc 4 262 0
	lfs 13,8(1)
.LVL199:
.LBB10806:
.LBB10791:
	.loc 5 280 0
	frsp 0,0
.LVL200:
.LBE10791:
.LBE10806:
	.loc 4 260 0
	fmuls 0,0,11
.LVL201:
	.loc 4 262 0
	fmuls 1,0,13
	.loc 4 263 0
	fmuls 12,12,0
	.loc 4 264 0
	fmuls 13,7,0
	.loc 4 265 0
	fmuls 0,8,0
.LVL202:
	.loc 4 262 0
	stfs 1,24(3)
.LVL203:
	.loc 4 263 0
	stfs 12,12(3)
.LVL204:
	.loc 4 264 0
	stfs 13,16(3)
.LVL205:
	.loc 4 265 0
	stfs 0,20(3)
.LVL206:
.LBB10807:
.LBB10796:
	.loc 5 545 0
	lfs 0,.LC4@l(27)
	fcmpu 7,1,0
	cror 30,28,30
	bne- 7,.L125
.LVL207:
.L133:
	.loc 5 546 0
	lis 9,_ZN6idMath2PIE@ha
	lwz 0,_ZN6idMath2PIE@l(9)
.LVL208:
.L96:
.LBE10796:
.LBE10807:
.LBB10808:
.LBB10809:
	.loc 5 781 0
	rlwinm 9,0,0,1,31
.LBE10809:
.LBE10808:
	.loc 4 288 0
	lis 11,.LC10@ha
	stw 9,28(1)
	lfs 0,.LC10@l(11)
	lfs 13,28(1)
	.loc 4 287 0
	stw 0,24(3)
.LVL209:
	.loc 4 288 0
	fcmpu 7,13,0
	blt- 7,.L97
.LVL210:
.LBB10810:
.LBB10811:
	.loc 2 649 0
	lfs 12,16(3)
.LBE10811:
.LBE10810:
.LBB10821:
.LBB10822:
	.loc 2 536 0
	lis 9,.LC9@ha
.LBE10822:
.LBE10821:
.LBB10836:
.LBB10818:
	.loc 2 649 0
	lfs 11,12(3)
	fmuls 0,12,12
	lfs 13,20(3)
.LBE10818:
.LBE10836:
.LBB10837:
.LBB10831:
	.loc 2 536 0
	lfs 8,.LC9@l(9)
.LBE10831:
.LBE10837:
.LBB10838:
.LBB10819:
.LBB10812:
.LBB10813:
	.loc 5 275 0
	lfs 6,.LC6@l(28)
.LBE10813:
.LBE10812:
	.loc 2 649 0
	fmadds 0,11,11,0
.LBB10816:
.LBB10814:
	.loc 5 278 0
	lfs 7,.LC8@l(29)
.LBE10814:
.LBE10816:
	.loc 2 649 0
	fmadds 0,13,13,0
	stfs 0,8(1)
.LVL211:
.LBB10817:
.LBB10815:
	.loc 5 275 0
	fmuls 6,0,6
	.loc 5 270 0
	lwz 9,8(1)
.LVL212:
	.loc 4 246 0
	fneg 6,6
	.loc 5 276 0
	rlwinm 11,9,19,21,29
	rlwinm 10,9,9,24,31
	lwzx 11,30,11
	subfic 9,10,380
	rlwinm 9,9,22,0,8
	or 9,9,11
	.loc 5 277 0
	stw 9,28(1)
	lfs 0,28(1)
.LVL213:
	fmr 9,0
.LVL214:
	.loc 5 278 0
	fmul 10,9,9
	fmadd 10,6,10,7
	fmul 10,9,10
.LVL215:
	.loc 5 279 0
	fmul 0,10,10
	fmadd 0,6,0,7
.LVL216:
	fmul 0,10,0
.LVL217:
	.loc 5 280 0
	frsp 0,0
.LVL218:
.LBE10815:
.LBE10817:
	.loc 2 651 0
	fmuls 11,11,0
	.loc 2 652 0
	fmuls 12,12,0
	.loc 2 653 0
	fmuls 0,13,0
	.loc 2 651 0
	stfs 11,8(1)
.LBE10819:
.LBE10838:
.LBB10839:
.LBB10832:
	.loc 2 536 0
	fcmpu 7,11,8
.LBE10832:
.LBE10839:
.LBB10840:
.LBB10820:
	.loc 2 652 0
	stfs 12,12(1)
	.loc 2 651 0
	lwz 9,8(1)
	.loc 2 653 0
	stfs 0,16(1)
	.loc 2 651 0
	stw 9,12(3)
	.loc 2 652 0
	lwz 11,12(1)
	.loc 2 653 0
	lwz 9,16(1)
	.loc 2 652 0
	stw 11,16(3)
	.loc 2 653 0
	stw 9,20(3)
.LVL219:
.LBE10820:
.LBE10840:
.LBB10841:
.LBB10833:
	.loc 2 536 0
	bne- 7,.L101
	.loc 2 537 0
	fcmpu 7,12,8
	bne- 7,.L102
	.loc 2 538 0
	lfs 12,16(1)
	fcmpu 7,12,8
	bng- 7,.L127
	.loc 2 539 0
	lfs 0,.LC1@l(31)
	fcmpu 7,12,0
	beq- 7,.L105
	.loc 2 545 0
	stfs 0,20(3)
.L105:
.LBE10833:
.LBE10841:
	.loc 4 295 0
	lis 9,_ZN6idMath9M_RAD2DEGE@ha
	stw 0,28(1)
	lfs 0,_ZN6idMath9M_RAD2DEGE@l(9)
	lfs 12,28(1)
	fadds 0,0,0
	fmuls 0,0,12
	stfs 0,24(3)
	b .L100
.LVL220:
.L124:
	.loc 4 269 0
	fcmpu 7,12,13
	mfcr 11
	rlwinm 11,11,29,1
.LVL221:
	.loc 4 273 0
	mulli 10,11,12
.LBB10842:
.LBB10843:
	.loc 2 402 0
	slwi 11,11,2
.LVL222:
	add 9,4,10
.LVL223:
.LBE10843:
.LBE10842:
	.loc 4 273 0
	lfsx 13,9,11
.LBB10845:
.LBB10844:
	.loc 2 402 0
	mr 9,11
.LVL224:
.LBE10844:
.LBE10845:
	.loc 4 273 0
	fcmpu 7,0,13
	bng- 7,.L93
	li 9,8
	li 11,8
	li 10,24
.L93:
	.loc 4 276 0
	lis 8,.LANCHOR1@ha
	.loc 4 279 0
	add 10,4,10
	.loc 4 276 0
	la 8,.LANCHOR1@l(8)
	.loc 4 279 0
	lfsx 12,10,9
	.loc 4 276 0
	add 11,8,11
	.loc 4 279 0
	lis 31,.LC1@ha
	.loc 4 276 0
	lwz 7,12(11)
.LVL225:
.LBB10846:
.LBB10847:
	.loc 5 276 0
	lis 30,_ZN6idMath5iSqrtE@ha
	la 30,_ZN6idMath5iSqrtE@l(30)
	.loc 5 275 0
	lis 28,.LC6@ha
.LBE10847:
.LBE10846:
	.loc 4 277 0
	slwi 0,7,2
	.loc 4 279 0
	mulli 7,7,12
	.loc 4 277 0
	add 8,8,0
.LBB10853:
.LBB10848:
	.loc 5 275 0
	lfs 11,.LC6@l(28)
.LVL226:
.LBE10848:
.LBE10853:
	.loc 4 277 0
	lwz 11,12(8)
.LVL227:
	.loc 4 279 0
	add 7,4,7
	lfsx 13,7,0
	.loc 4 282 0
	add 27,3,9
	.loc 4 279 0
	mulli 8,11,12
.LVL228:
.LBB10854:
.LBB10855:
	.loc 2 402 0
	slwi 11,11,2
.LVL229:
.LBE10855:
.LBE10854:
	.loc 4 279 0
	add 8,4,8
	lfsx 0,8,11
	fadds 13,13,0
	lfs 0,.LC1@l(31)
	fsubs 13,12,13
	fadds 0,13,0
	stfs 0,8(1)
.LVL230:
.LBB10856:
.LBB10849:
	.loc 5 275 0
	fmuls 10,0,11
	.loc 5 270 0
	lwz 6,8(1)
.LVL231:
	.loc 4 246 0
	fneg 10,10
	.loc 5 276 0
	rlwinm 29,6,9,24,31
	rlwinm 5,6,19,21,29
	lwzx 5,30,5
	subfic 6,29,380
	rlwinm 6,6,22,0,8
	.loc 5 278 0
	lis 29,.LC8@ha
	.loc 5 276 0
	or 6,6,5
.LBE10849:
.LBE10856:
	.loc 4 284 0
	add 5,3,0
.LBB10857:
.LBB10850:
	.loc 5 277 0
	stw 6,28(1)
.LBE10850:
.LBE10857:
	.loc 4 285 0
	add 6,3,11
.LBB10858:
.LBB10851:
	.loc 5 277 0
	lfs 0,28(1)
.LVL232:
	fmr 12,0
.LVL233:
	.loc 5 278 0
	lfs 0,.LC8@l(29)
.LVL234:
	fmul 13,12,12
	fmadd 13,10,13,0
	fmul 13,12,13
.LVL235:
	.loc 5 279 0
	fmul 12,13,13
	fmadd 0,10,12,0
.LVL236:
.LBE10851:
.LBE10858:
	.loc 4 282 0
	lfs 12,8(1)
.LBB10859:
.LBB10852:
	.loc 5 279 0
	fmul 0,13,0
.LVL237:
	.loc 5 280 0
	frsp 0,0
.LVL238:
.LBE10852:
.LBE10859:
	.loc 4 280 0
	fmuls 0,0,11
.LVL239:
	.loc 4 282 0
	fmuls 13,0,12
	stfs 13,12(27)
.LBB10860:
.LBB10797:
	.loc 5 545 0
	lis 27,.LC4@ha
.LBE10797:
.LBE10860:
	.loc 4 283 0
	lfsx 12,8,0
	lfsx 13,7,11
	fsubs 13,12,13
	fmuls 13,13,0
	stfs 13,24(3)
.LVL240:
	.loc 4 284 0
	lfsx 12,7,9
	lfsx 13,10,0
	fadds 13,12,13
	fmuls 13,13,0
	stfs 13,12(5)
.LVL241:
	.loc 4 285 0
	lfsx 12,8,9
	lfsx 13,10,11
	fadds 13,12,13
	fmuls 0,13,0
.LVL242:
	stfs 0,12(6)
.LBB10861:
.LBB10798:
	.loc 5 545 0
	lfs 0,.LC4@l(27)
.LBE10798:
.LBE10861:
	.loc 4 285 0
	lfs 1,24(3)
.LVL243:
.LBB10862:
.LBB10799:
	.loc 5 545 0
	fcmpu 7,1,0
	cror 30,28,30
	beq- 7,.L133
.LVL244:
.L125:
	.loc 5 548 0
	lfs 0,.LC1@l(31)
	fcmpu 7,1,0
	cror 30,29,30
	bne- 7,.L134
.LVL245:
.L97:
.LBE10799:
.LBE10862:
.LBB10863:
.LBB10864:
	.loc 2 412 0
	lwz 9,.LC1@l(31)
	.loc 2 410 0
	li 0,0
	stw 0,12(3)
	.loc 2 411 0
	stw 0,16(3)
	.loc 2 412 0
	stw 9,20(3)
.LBE10864:
.LBE10863:
	.loc 4 290 0
	stw 0,24(3)
.LVL246:
.L100:
.LBB10865:
.LBB10866:
	.loc 2 416 0
	li 0,0
	addi 9,3,28
	stw 0,8(3)
	.loc 4 246 0
	addi 11,3,64
	.loc 2 416 0
	stw 0,4(3)
	stw 0,0(3)
.LVL247:
.L116:
.LBE10866:
.LBE10865:
.LBB10867:
.LBB10868:
.LBB10869:
.LBB10870:
	.loc 2 424 0
	lwz 0,0(4)
	stw 0,0(9)
	.loc 2 425 0
	lwz 0,4(4)
	stw 0,4(9)
	.loc 2 426 0
	lwz 0,8(4)
	addi 4,4,12
	stw 0,8(9)
	addi 9,9,12
.LBE10870:
.LBE10869:
	.loc 3 333 0
	cmpw 7,9,11
	bne+ 7,.L116
.LBE10868:
.LBE10867:
	.loc 4 300 0
	li 0,1
	stb 0,64(3)
.LBE10874:
	.loc 4 302 0
	lwz 0,60(1)
	lwz 27,36(1)
	mtlr 0
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI44:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL248:
.L101:
.LCFI45:
	.cfi_restore_state
.LBB10875:
.LBB10871:
.LBB10834:
	.loc 2 564 0
	lfs 0,12(1)
	fcmpu 6,0,8
	bne- 6,.L106
	.loc 2 565 0
	lfs 12,16(1)
	fcmpu 6,12,8
	bne- 6,.L106
	.loc 2 566 0
	bng- 7,.L129
	.loc 2 567 0
	lfs 0,.LC1@l(31)
	lfs 13,8(1)
	fcmpu 7,13,0
	beq- 7,.L105
	.loc 2 573 0
	stfs 0,12(3)
	b .L105
.L106:
.LVL249:
.LBB10823:
.LBB10824:
	.loc 5 781 0
	lwz 11,8(1)
.LBE10824:
.LBE10823:
	.loc 2 580 0
	lfs 0,.LC1@l(31)
.LBB10826:
.LBB10825:
	.loc 5 781 0
	rlwinm 9,11,0,1,31
.LBE10825:
.LBE10826:
	.loc 2 580 0
	stw 9,28(1)
	lfs 12,28(1)
	fcmpu 7,12,0
	bne- 7,.L111
	.loc 2 581 0
	lis 9,.LC9@ha
	lfs 12,12(1)
	lfs 0,.LC9@l(9)
	fcmpu 7,12,0
	bne- 7,.L112
	lfs 13,16(1)
	fcmpu 7,13,0
	beq- 7,.L105
.L112:
	.loc 2 582 0
	li 9,0
	stw 9,20(3)
	stw 9,16(3)
	b .L105
.LVL250:
.L134:
.LBE10834:
.LBE10871:
.LBB10872:
.LBB10800:
	.loc 5 551 0
	stw 3,20(1)
	stw 4,24(1)
	bl acosf
.LVL251:
	stfs 1,28(1)
	lwz 4,24(1)
	lwz 0,28(1)
	lwz 3,20(1)
	b .L96
.LVL252:
.L102:
.LBE10800:
.LBE10872:
.LBB10873:
.LBB10835:
	.loc 2 550 0
	lfs 13,16(1)
	fcmpu 6,13,8
	bne- 6,.L106
	.loc 2 551 0
	bng- 7,.L128
	.loc 2 552 0
	lfs 0,.LC1@l(31)
	lfs 12,12(1)
	fcmpu 7,12,0
	beq- 7,.L105
	.loc 2 558 0
	stfs 0,16(3)
	b .L105
.LVL253:
.L111:
.LBB10827:
.LBB10828:
	.loc 5 781 0
	lwz 11,12(1)
	rlwinm 9,11,0,1,31
.LVL254:
.LBE10828:
.LBE10827:
	.loc 2 586 0
	stw 9,28(1)
	lfs 12,28(1)
	fcmpu 7,12,0
	bne- 7,.L113
	.loc 2 587 0
	lis 9,.LC9@ha
	lfs 12,8(1)
	lfs 0,.LC9@l(9)
	fcmpu 7,12,0
	beq- 7,.L135
.L114:
	.loc 2 588 0
	li 9,0
	stw 9,20(3)
	stw 9,12(3)
	b .L105
.L113:
.LVL255:
.LBB10829:
.LBB10830:
	.loc 5 781 0
	lwz 11,16(1)
	rlwinm 9,11,0,1,31
.LBE10830:
.LBE10829:
	.loc 2 592 0
	stw 9,28(1)
	lfs 12,28(1)
	fcmpu 7,12,0
	bne- 7,.L105
	.loc 2 593 0
	lis 9,.LC9@ha
	lfs 12,8(1)
	lfs 0,.LC9@l(9)
	fcmpu 7,12,0
	bne- 7,.L115
	lfs 13,12(1)
	fcmpu 7,13,0
	beq- 7,.L105
.L115:
	.loc 2 594 0
	li 9,0
	stw 9,16(3)
	stw 9,12(3)
	b .L105
.LVL256:
.L127:
	.loc 2 544 0
	lfs 0,.LC4@l(27)
	lfs 12,16(1)
	fcmpu 7,12,0
	beq- 7,.L105
	.loc 2 545 0
	stfs 0,20(3)
	b .L105
.L129:
	.loc 2 572 0
	lfs 0,.LC4@l(27)
	lfs 12,8(1)
	fcmpu 7,12,0
	beq- 7,.L105
	.loc 2 573 0
	stfs 0,12(3)
	b .L105
.L128:
	.loc 2 557 0
	lfs 0,.LC4@l(27)
	lfs 13,12(1)
	fcmpu 7,13,0
	beq- 7,.L105
	.loc 2 558 0
	stfs 0,16(3)
	b .L105
.LVL257:
.L135:
	.loc 2 587 0
	lfs 13,16(1)
	fcmpu 7,13,0
	beq- 7,.L105
	b .L114
.LBE10835:
.LBE10873:
.LBE10875:
	.cfi_endproc
.LFE2544:
	.size	_ZNK6idMat310ToRotationEv, .-_ZNK6idMat310ToRotationEv
	.align 2
	.globl _ZNK6idMat317ToAngularVelocityEv
	.type	_ZNK6idMat317ToAngularVelocityEv, @function
_ZNK6idMat317ToAngularVelocityEv:
.LFB2545:
	.loc 4 309 0
	.cfi_startproc
.LVL258:
	stwu 1,-96(1)
.LCFI46:
	.cfi_def_cfa_offset 96
	mflr 0
	stw 31,92(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
.LBB10876:
	.loc 4 310 0
	addi 3,1,8
.LVL259:
.LBE10876:
	.loc 4 309 0
	stw 0,100(1)
.LBB10883:
	.loc 4 310 0
	.cfi_offset 65, 4
	bl _ZNK6idMat310ToRotationEv
.LVL260:
	.loc 4 311 0
	lis 9,_ZN6idMath9M_DEG2RADE@ha
	lfs 13,32(1)
.LBE10883:
	.loc 4 312 0
	mr 3,31
.LBB10884:
	.loc 4 311 0
	lfs 0,_ZN6idMath9M_DEG2RADE@l(9)
.LBB10877:
.LBB10878:
	.loc 2 439 0
	lfs 12,24(1)
.LBE10878:
.LBE10877:
	.loc 4 311 0
	fmuls 0,13,0
.LVL261:
.LBB10882:
.LBB10881:
	.loc 2 439 0
	lfs 11,20(1)
	lfs 13,28(1)
	fmuls 12,0,12
	fmuls 13,0,13
.LVL262:
	fmuls 0,0,11
.LVL263:
.LBB10879:
.LBB10880:
	.loc 2 397 0
	stfs 12,4(31)
	.loc 2 398 0
	stfs 13,8(31)
	.loc 2 396 0
	stfs 0,0(31)
.LBE10880:
.LBE10879:
.LBE10881:
.LBE10882:
.LBE10884:
	.loc 4 312 0
	lwz 0,100(1)
	lwz 31,92(1)
.LVL264:
	mtlr 0
	addi 1,1,96
.LCFI47:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE2545:
	.size	_ZNK6idMat317ToAngularVelocityEv, .-_ZNK6idMat317ToAngularVelocityEv
	.align 2
	.globl _ZNK6idMat311DeterminantEv
	.type	_ZNK6idMat311DeterminantEv, @function
_ZNK6idMat311DeterminantEv:
.LFB2546:
	.loc 4 319 0
	.cfi_startproc
.LVL265:
.LBB10885:
.LBB10886:
.LBB10887:
	.loc 2 402 0
	lfs 11,20(3)
.LBE10887:
.LBE10886:
.LBE10885:
	.loc 4 326 0
.LBB10898:
.LBB10888:
.LBB10889:
	.loc 2 402 0
	lfs 10,24(3)
.LBE10889:
.LBE10888:
.LBB10890:
.LBB10891:
	lfs 12,32(3)
.LBE10891:
.LBE10890:
	.loc 4 322 0
	fmuls 9,10,11
.LBB10892:
.LBB10893:
	.loc 2 402 0
	lfs 13,12(3)
.LVL266:
.LBE10893:
.LBE10892:
.LBB10894:
.LBB10895:
	lfs 0,28(3)
.LVL267:
.LBE10895:
.LBE10894:
	.loc 4 325 0
	lfs 7,4(3)
	.loc 4 323 0
	fmuls 8,0,11
.LBB10896:
.LBB10897:
	.loc 2 402 0
	lfs 11,16(3)
.LVL268:
.LBE10897:
.LBE10896:
	.loc 4 322 0
	fmsubs 9,13,12,9
	.loc 4 321 0
	fmuls 10,11,10
	.loc 4 323 0
	fmsubs 11,11,12,8
	.loc 4 325 0
	lfs 8,0(3)
	fmuls 9,9,7
	lfs 12,8(3)
	.loc 4 321 0
	fmsubs 0,13,0,10
	.loc 4 325 0
	fmsubs 11,11,8,9
.LBE10898:
	.loc 4 326 0
	fmadds 1,0,12,11
	blr
	.cfi_endproc
.LFE2546:
	.size	_ZNK6idMat311DeterminantEv, .-_ZNK6idMat311DeterminantEv
	.align 2
	.globl _ZN6idMat311InverseSelfEv
	.type	_ZN6idMat311InverseSelfEv, @function
_ZN6idMat311InverseSelfEv:
.LFB2547:
	.loc 4 333 0
	.cfi_startproc
.LVL269:
	stwu 1,-56(1)
.LCFI48:
	.cfi_def_cfa_offset 56
	mr 9,3
.LVL270:
	stfd 27,16(1)
	stfd 28,24(1)
	stfd 29,32(1)
	stfd 30,40(1)
	stfd 31,48(1)
.LBB10899:
	.loc 4 339 0
	lfs 7,32(3)
	.loc 4 340 0
	lfs 8,12(3)
	.loc 4 339 0
	lfs 6,20(3)
	.loc 4 340 0
	fmuls 3,7,8
	.loc 4 339 0
	lfs 5,28(3)
	.loc 4 340 0
	lfs 9,24(3)
	.loc 4 339 0
	fmuls 2,6,5
	lfs 10,16(3)
.LVL271:
	.loc 4 340 0
	fmsubs 3,6,9,3
	.loc 4 343 0
	lfs 12,4(3)
	.loc 4 341 0
	fmuls 4,10,9
	.loc 4 343 0
	lfs 13,0(3)
	.loc 4 339 0
	fmsubs 2,10,7,2
.LVL272:
	.loc 4 343 0
	lfs 11,8(3)
	fmuls 0,3,12
	.loc 4 346 0
	li 3,0
.LVL273:
	.loc 4 341 0
	fmsubs 4,5,8,4
.LVL274:
	.loc 4 343 0
	fmadds 0,2,13,0
	fmadds 0,4,11,0
	stfs 0,8(1)
.LVL275:
.LBB10900:
.LBB10901:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE10901:
.LBE10900:
	.loc 4 345 0
	lis 11,.LC2@ha
	stw 0,12(1)
	lfs 0,12(1)
.LVL276:
	fmr 1,0
	lfd 0,.LC2@l(11)
	fcmpu 7,1,0
	blt- 7,.L139
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.loc 4 349 0
	lis 11,.LC1@ha
	.loc 4 343 0
	lfs 0,8(1)
	.loc 4 349 0
	lfs 1,.LC1@l(11)
	.loc 4 351 0
	fmuls 27,7,12
	.loc 4 354 0
	fmuls 30,6,13
	.loc 4 370 0
	li 3,1
	.loc 4 349 0
	fdiv 0,1,0
.LVL277:
	.loc 4 355 0
	fmuls 31,5,13
	.loc 4 352 0
	fmuls 28,10,11
	.loc 4 353 0
	fmuls 29,9,11
	.loc 4 356 0
	fmuls 1,8,12
	.loc 4 351 0
	fmsubs 5,5,11,27
	.loc 4 352 0
	fmsubs 6,6,12,28
	.loc 4 353 0
	fmsubs 7,7,13,29
	.loc 4 354 0
	fmsubs 11,8,11,30
	.loc 4 355 0
	fmsubs 12,9,12,31
	.loc 4 356 0
	fmsubs 13,10,13,1
	.loc 4 358 0
	fmul 2,2,0
	.loc 4 359 0
	fmul 5,5,0
	.loc 4 360 0
	fmul 6,6,0
	.loc 4 362 0
	fmul 3,3,0
	.loc 4 363 0
	fmul 7,7,0
	.loc 4 364 0
	fmul 11,11,0
	.loc 4 366 0
	fmul 4,4,0
	.loc 4 367 0
	fmul 12,12,0
	.loc 4 368 0
	fmul 0,13,0
.LVL278:
	.loc 4 358 0
	frsp 2,2
	.loc 4 359 0
	frsp 5,5
	.loc 4 360 0
	frsp 6,6
	.loc 4 362 0
	frsp 3,3
	.loc 4 358 0
	stfs 2,0(9)
.LVL279:
	.loc 4 363 0
	frsp 7,7
	.loc 4 359 0
	stfs 5,4(9)
.LVL280:
	.loc 4 364 0
	frsp 11,11
	.loc 4 360 0
	stfs 6,8(9)
.LVL281:
	.loc 4 366 0
	frsp 4,4
	.loc 4 362 0
	stfs 3,12(9)
.LVL282:
	.loc 4 367 0
	frsp 12,12
	.loc 4 363 0
	stfs 7,16(9)
.LVL283:
	.loc 4 368 0
	frsp 0,0
	.loc 4 364 0
	stfs 11,20(9)
.LVL284:
	.loc 4 366 0
	stfs 4,24(9)
.LVL285:
	.loc 4 367 0
	stfs 12,28(9)
.LVL286:
	.loc 4 368 0
	stfs 0,32(9)
.LVL287:
.L139:
.LBE10899:
	.loc 4 371 0
	lfd 27,16(1)
	lfd 28,24(1)
	lfd 29,32(1)
	lfd 30,40(1)
	lfd 31,48(1)
	addi 1,1,56
.LCFI49:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	blr
	.cfi_endproc
.LFE2547:
	.size	_ZN6idMat311InverseSelfEv, .-_ZN6idMat311InverseSelfEv
	.align 2
	.globl _ZN6idMat315InverseFastSelfEv
	.type	_ZN6idMat315InverseFastSelfEv, @function
_ZN6idMat315InverseFastSelfEv:
.LFB2548:
	.loc 4 378 0
	.cfi_startproc
.LVL288:
	stwu 1,-56(1)
.LCFI50:
	.cfi_def_cfa_offset 56
	mr 9,3
.LVL289:
	stfd 27,16(1)
	stfd 28,24(1)
	stfd 29,32(1)
	stfd 30,40(1)
	stfd 31,48(1)
.LBB10902:
	.loc 4 385 0
	lfs 7,32(3)
	.loc 4 386 0
	lfs 8,12(3)
	.loc 4 385 0
	lfs 6,20(3)
	.loc 4 386 0
	fmuls 3,7,8
	.loc 4 385 0
	lfs 5,28(3)
	.loc 4 386 0
	lfs 9,24(3)
	.loc 4 385 0
	fmuls 2,6,5
	lfs 10,16(3)
.LVL290:
	.loc 4 386 0
	fmsubs 3,6,9,3
	.loc 4 389 0
	lfs 12,4(3)
	.loc 4 387 0
	fmuls 4,10,9
	.loc 4 389 0
	lfs 13,0(3)
	.loc 4 385 0
	fmsubs 2,10,7,2
.LVL291:
	.loc 4 389 0
	lfs 11,8(3)
	fmuls 0,3,12
	.loc 4 392 0
	li 3,0
.LVL292:
	.loc 4 387 0
	fmsubs 4,5,8,4
.LVL293:
	.loc 4 389 0
	fmadds 0,2,13,0
	fmadds 0,4,11,0
	stfs 0,8(1)
.LVL294:
.LBB10903:
.LBB10904:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE10904:
.LBE10903:
	.loc 4 391 0
	lis 11,.LC2@ha
	stw 0,12(1)
	lfs 0,12(1)
.LVL295:
	fmr 1,0
	lfd 0,.LC2@l(11)
	fcmpu 7,1,0
	blt- 7,.L142
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.loc 4 395 0
	lis 11,.LC1@ha
	.loc 4 389 0
	lfs 0,8(1)
	.loc 4 395 0
	lfs 1,.LC1@l(11)
	.loc 4 397 0
	fmuls 27,7,12
	.loc 4 400 0
	fmuls 30,6,13
	.loc 4 416 0
	li 3,1
	.loc 4 395 0
	fdiv 0,1,0
.LVL296:
	.loc 4 401 0
	fmuls 31,5,13
	.loc 4 398 0
	fmuls 28,10,11
	.loc 4 399 0
	fmuls 29,9,11
	.loc 4 402 0
	fmuls 1,8,12
	.loc 4 397 0
	fmsubs 5,5,11,27
	.loc 4 398 0
	fmsubs 6,6,12,28
	.loc 4 399 0
	fmsubs 7,7,13,29
	.loc 4 400 0
	fmsubs 11,8,11,30
	.loc 4 401 0
	fmsubs 12,9,12,31
	.loc 4 402 0
	fmsubs 13,10,13,1
	.loc 4 404 0
	fmul 2,2,0
	.loc 4 405 0
	fmul 5,5,0
	.loc 4 406 0
	fmul 6,6,0
	.loc 4 408 0
	fmul 3,3,0
	.loc 4 409 0
	fmul 7,7,0
	.loc 4 410 0
	fmul 11,11,0
	.loc 4 412 0
	fmul 4,4,0
	.loc 4 413 0
	fmul 12,12,0
	.loc 4 414 0
	fmul 0,13,0
.LVL297:
	.loc 4 404 0
	frsp 2,2
	.loc 4 405 0
	frsp 5,5
	.loc 4 406 0
	frsp 6,6
	.loc 4 408 0
	frsp 3,3
	.loc 4 404 0
	stfs 2,0(9)
.LVL298:
	.loc 4 409 0
	frsp 7,7
	.loc 4 405 0
	stfs 5,4(9)
.LVL299:
	.loc 4 410 0
	frsp 11,11
	.loc 4 406 0
	stfs 6,8(9)
.LVL300:
	.loc 4 412 0
	frsp 4,4
	.loc 4 408 0
	stfs 3,12(9)
.LVL301:
	.loc 4 413 0
	frsp 12,12
	.loc 4 409 0
	stfs 7,16(9)
.LVL302:
	.loc 4 414 0
	frsp 0,0
	.loc 4 410 0
	stfs 11,20(9)
.LVL303:
	.loc 4 412 0
	stfs 4,24(9)
.LVL304:
	.loc 4 413 0
	stfs 12,28(9)
.LVL305:
	.loc 4 414 0
	stfs 0,32(9)
.LVL306:
.L142:
.LBE10902:
	.loc 4 530 0
	lfd 27,16(1)
	lfd 28,24(1)
	lfd 29,32(1)
	lfd 30,40(1)
	lfd 31,48(1)
	addi 1,1,56
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	blr
	.cfi_endproc
.LFE2548:
	.size	_ZN6idMat315InverseFastSelfEv, .-_ZN6idMat315InverseFastSelfEv
	.align 2
	.globl _ZNK6idMat316InertiaTranslateEfRK6idVec3S2_
	.type	_ZNK6idMat316InertiaTranslateEfRK6idVec3S2_, @function
_ZNK6idMat316InertiaTranslateEfRK6idVec3S2_:
.LFB2549:
	.loc 4 537 0
	.cfi_startproc
.LVL307:
.LBB10905:
.LBB10906:
.LBB10907:
	.loc 2 452 0
	lfs 11,0(5)
	lfs 12,8(5)
	lfs 9,0(6)
.LBE10907:
.LBE10906:
	.loc 4 546 0
	fmuls 5,11,11
.LBB10911:
.LBB10908:
	.loc 2 452 0
	lfs 10,8(6)
.LBE10908:
.LBE10911:
	.loc 4 544 0
	fmuls 7,12,12
.LBB10912:
.LBB10909:
	.loc 2 452 0
	fadds 9,11,9
	lfs 0,4(5)
	fadds 10,12,10
	lfs 13,4(6)
.LBE10909:
.LBE10912:
.LBE10905:
	.loc 4 537 0
	stwu 1,-40(1)
.LCFI52:
	.cfi_def_cfa_offset 40
.LBB10938:
	.loc 4 551 0
	fmuls 2,0,12
.LBB10913:
.LBB10910:
	.loc 2 452 0
	fadds 13,0,13
.LVL308:
.LBE10910:
.LBE10913:
	.loc 4 544 0
	fmuls 8,10,10
.LBE10938:
	.loc 4 537 0
	stfd 31,32(1)
.LBB10939:
	.loc 4 546 0
	fmuls 6,9,9
.LBE10939:
	.loc 4 537 0
	stfd 28,8(1)
.LBB10940:
	.loc 4 550 0
	fmuls 31,11,0
	.cfi_offset 60, -32
	.cfi_offset 63, -8
.LBE10940:
	.loc 4 537 0
	stfd 29,16(1)
.LBB10941:
	.loc 4 546 0
	fadds 3,7,5
.LBE10941:
	.loc 4 537 0
	stfd 30,24(1)
.LBB10942:
	.loc 4 546 0
	fadds 4,8,6
.LBB10914:
.LBB10915:
.LBB10916:
.LBB10917:
	.loc 3 490 0
	lfs 28,0(4)
.LBE10917:
.LBE10916:
.LBE10915:
.LBE10914:
	.loc 4 552 0
	fmuls 12,11,12
	.loc 3 490 0
	lfs 29,4(4)
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.loc 4 548 0
	fmadds 5,0,0,5
	.loc 3 490 0
	lfs 30,8(4)
	.loc 4 544 0
	fmadds 0,0,0,7
	.loc 3 490 0
	lfs 11,20(4)
	.loc 4 548 0
	fmadds 6,13,13,6
	.loc 3 490 0
	lfs 7,12(4)
	.loc 4 544 0
	fmadds 8,13,13,8
.LVL309:
	.loc 4 550 0
	fmsubs 31,9,13,31
.LVL310:
	.loc 4 552 0
	fmsubs 12,9,10,12
	.loc 3 490 0
	lfs 9,16(4)
.LVL311:
	.loc 4 551 0
	fmsubs 13,13,10,2
.LVL312:
	.loc 3 490 0
	lfs 10,24(4)
.LVL313:
	.loc 4 544 0
	fsubs 8,0,8
	.loc 3 490 0
	lfs 2,28(4)
	.loc 4 546 0
	fsubs 4,3,4
	.loc 3 490 0
	lfs 0,32(4)
	.loc 4 548 0
	fsubs 6,5,6
	.loc 3 490 0
	fmadds 29,31,1,29
.LVL314:
	fmadds 30,12,1,30
.LVL315:
	fmadds 31,31,1,7
.LVL316:
	fmadds 11,13,1,11
.LBB10933:
.LBB10928:
.LBB10923:
.LBB10918:
	.loc 3 425 0
	stfs 29,4(3)
.LBE10918:
.LBE10923:
.LBE10928:
.LBE10933:
	.loc 3 490 0
	fmadds 4,4,1,9
.LVL317:
.LBB10934:
.LBB10929:
.LBB10924:
.LBB10919:
	.loc 3 425 0
	stfs 30,8(3)
.LBE10919:
.LBE10924:
.LBE10929:
.LBE10934:
	.loc 3 490 0
	fmadds 12,12,1,10
.LVL318:
.LBB10935:
.LBB10930:
.LBB10925:
.LBB10920:
	.loc 3 426 0
	stfs 31,12(3)
.LBE10920:
.LBE10925:
.LBE10930:
.LBE10935:
	.loc 3 490 0
	fmadds 13,13,1,2
.LVL319:
.LBE10942:
	.loc 4 555 0
	lfd 29,16(1)
.LBB10943:
	.loc 3 490 0
	fmadds 6,6,1,0
.LBE10943:
	.loc 4 555 0
	lfd 30,24(1)
.LBB10944:
.LBB10936:
.LBB10931:
.LBB10926:
.LBB10921:
	.loc 3 490 0
	fmadds 1,8,1,28
.LVL320:
.LBE10921:
.LBE10926:
.LBE10931:
.LBE10936:
.LBE10944:
	.loc 4 555 0
	lfd 31,32(1)
.LVL321:
	lfd 28,8(1)
.LBB10945:
.LBB10937:
.LBB10932:
.LBB10927:
.LBB10922:
	.loc 3 426 0
	stfs 4,16(3)
	.loc 3 425 0
	stfs 1,0(3)
	.loc 3 426 0
	stfs 11,20(3)
	.loc 3 427 0
	stfs 12,24(3)
	stfs 13,28(3)
	stfs 6,32(3)
.LBE10922:
.LBE10927:
.LBE10932:
.LBE10937:
.LBE10945:
	.loc 4 555 0
	addi 1,1,40
.LCFI53:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	blr
	.cfi_endproc
.LFE2549:
	.size	_ZNK6idMat316InertiaTranslateEfRK6idVec3S2_, .-_ZNK6idMat316InertiaTranslateEfRK6idVec3S2_
	.align 2
	.globl _ZN6idMat320InertiaTranslateSelfEfRK6idVec3S2_
	.type	_ZN6idMat320InertiaTranslateSelfEfRK6idVec3S2_, @function
_ZN6idMat320InertiaTranslateSelfEfRK6idVec3S2_:
.LFB2550:
	.loc 4 562 0
	.cfi_startproc
.LVL322:
.LBB10946:
.LBB10947:
.LBB10948:
	.loc 2 452 0
	lfs 11,0(4)
	lfs 12,8(4)
	lfs 9,0(5)
.LBE10948:
.LBE10947:
	.loc 4 571 0
	fmuls 7,11,11
.LBB10952:
.LBB10949:
	.loc 2 452 0
	lfs 10,8(5)
.LBE10949:
.LBE10952:
	.loc 4 569 0
	fmuls 5,12,12
.LBB10953:
.LBB10950:
	.loc 2 452 0
	fadds 9,11,9
	lfs 0,4(4)
	fadds 10,12,10
	lfs 13,4(5)
.LBE10950:
.LBE10953:
.LBE10946:
	.loc 4 562 0
	stwu 1,-40(1)
.LCFI54:
	.cfi_def_cfa_offset 40
.LBB10981:
	.loc 4 576 0
	fmuls 2,0,12
.LBB10954:
.LBB10951:
	.loc 2 452 0
	fadds 13,0,13
.LVL323:
.LBE10951:
.LBE10954:
	.loc 4 569 0
	fmuls 6,10,10
.LBE10981:
	.loc 4 562 0
	stfd 31,32(1)
.LBB10982:
	.loc 4 571 0
	fmuls 8,9,9
.LBE10982:
	.loc 4 562 0
	stfd 28,8(1)
.LBB10983:
	.loc 4 575 0
	fmuls 31,11,0
	.cfi_offset 60, -32
	.cfi_offset 63, -8
.LBE10983:
	.loc 4 562 0
	stfd 29,16(1)
.LBB10984:
	.loc 4 569 0
	fmadds 3,0,0,5
.LBE10984:
	.loc 4 562 0
	stfd 30,24(1)
.LBB10985:
	.loc 4 569 0
	fmadds 4,13,13,6
.LBB10955:
.LBB10956:
	.loc 3 531 0
	lfs 28,32(3)
.LBE10956:
.LBE10955:
	.loc 4 573 0
	fmadds 0,0,0,7
.LBB10969:
.LBB10957:
	.loc 3 529 0
	lfs 29,4(3)
	.cfi_offset 62, -16
	.cfi_offset 61, -24
.LBE10957:
.LBE10969:
	.loc 4 577 0
	fmuls 12,11,12
.LBB10970:
.LBB10958:
	.loc 3 529 0
	lfs 30,8(3)
.LBE10958:
.LBE10970:
	.loc 4 571 0
	fadds 5,5,7
.LBB10971:
.LBB10959:
	.loc 3 530 0
	lfs 11,20(3)
.LBE10959:
.LBE10971:
	.loc 4 571 0
	fadds 6,6,8
.LBB10972:
.LBB10960:
	.loc 3 529 0
	lfs 7,0(3)
.LBE10960:
.LBE10972:
	.loc 4 573 0
	fmadds 8,13,13,8
.LVL324:
	.loc 4 575 0
	fmsubs 31,9,13,31
.LVL325:
	.loc 4 577 0
	fmsubs 12,9,10,12
.LBB10973:
.LBB10961:
	.loc 3 530 0
	lfs 9,12(3)
.LVL326:
.LBE10961:
.LBE10973:
	.loc 4 576 0
	fmsubs 13,13,10,2
.LVL327:
.LBB10974:
.LBB10962:
	.loc 3 531 0
	lfs 10,24(3)
.LVL328:
.LBE10962:
.LBE10974:
	.loc 4 573 0
	fsubs 8,0,8
.LBB10975:
.LBB10963:
	.loc 3 531 0
	lfs 2,28(3)
.LBE10963:
.LBE10975:
	.loc 4 569 0
	fsubs 4,3,4
.LBB10976:
.LBB10964:
	.loc 3 530 0
	lfs 0,16(3)
.LBE10964:
.LBE10976:
	.loc 4 571 0
	fsubs 6,5,6
.LBB10977:
.LBB10965:
	.loc 3 529 0
	fmadds 29,31,1,29
	fmadds 30,12,1,30
	.loc 3 530 0
	fmadds 31,31,1,9
	fmadds 11,13,1,11
	.loc 3 529 0
	stfs 29,4(3)
	fmadds 4,4,1,7
	stfs 30,8(3)
	.loc 3 530 0
	fmadds 6,6,1,0
	stfs 31,12(3)
	.loc 3 531 0
	fmadds 12,12,1,10
.LBE10965:
.LBE10977:
.LBE10985:
	.loc 4 582 0
	lfd 29,16(1)
.LBB10986:
.LBB10978:
.LBB10966:
	.loc 3 531 0
	fmadds 13,13,1,2
.LBE10966:
.LBE10978:
.LBE10986:
	.loc 4 582 0
	lfd 30,24(1)
.LBB10987:
.LBB10979:
.LBB10967:
	.loc 3 531 0
	fmadds 1,8,1,28
.LVL329:
.LBE10967:
.LBE10979:
.LBE10987:
	.loc 4 582 0
	lfd 31,32(1)
	lfd 28,8(1)
.LBB10988:
.LBB10980:
.LBB10968:
	.loc 3 529 0
	stfs 4,0(3)
.LVL330:
	.loc 3 530 0
	stfs 6,16(3)
.LVL331:
	stfs 11,20(3)
.LVL332:
	.loc 3 531 0
	stfs 12,24(3)
.LVL333:
	stfs 13,28(3)
.LVL334:
	stfs 1,32(3)
.LBE10968:
.LBE10980:
.LBE10988:
	.loc 4 582 0
	addi 1,1,40
.LCFI55:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	blr
	.cfi_endproc
.LFE2550:
	.size	_ZN6idMat320InertiaTranslateSelfEfRK6idVec3S2_, .-_ZN6idMat320InertiaTranslateSelfEfRK6idVec3S2_
	.align 2
	.globl _ZNK6idMat313InertiaRotateERKS_
	.type	_ZNK6idMat313InertiaRotateERKS_, @function
_ZNK6idMat313InertiaRotateERKS_:
.LFB2551:
	.loc 4 589 0
	.cfi_startproc
.LVL335:
	stwu 1,-88(1)
.LCFI56:
	.cfi_def_cfa_offset 88
	addi 4,4,-4
.LVL336:
.LBB11016:
.LBB11017:
.LBB11018:
	.loc 2 402 0
	lfs 9,0(5)
.LVL337:
.LBE11018:
.LBE11017:
.LBB11019:
.LBB11020:
	.loc 4 591 0
	addi 9,1,44
.LBE11020:
.LBE11019:
.LBB11024:
.LBB11025:
	.loc 2 402 0
	lfs 10,12(5)
.LVL338:
.LBE11025:
.LBE11024:
.LBB11026:
.LBB11027:
	lfs 11,24(5)
.LVL339:
.LBE11027:
.LBE11026:
.LBB11028:
.LBB11029:
	lwz 6,4(5)
.LVL340:
.LBE11029:
.LBE11028:
.LBB11030:
.LBB11031:
	lwz 7,16(5)
.LVL341:
.LBE11031:
.LBE11030:
.LBB11032:
.LBB11033:
	lwz 8,28(5)
.LVL342:
.LBE11033:
.LBE11032:
.LBB11034:
.LBB11035:
	lwz 10,8(5)
.LVL343:
.LBE11035:
.LBE11034:
.LBB11036:
.LBB11037:
	lwz 11,20(5)
.LVL344:
.LBE11037:
.LBE11036:
.LBB11038:
.LBB11039:
	lwz 0,32(5)
.LVL345:
.LBE11039:
.LBE11038:
.LBB11040:
.LBB11021:
	.loc 3 425 0
	stfs 9,44(1)
	stfs 10,48(1)
	stfs 11,52(1)
	.loc 3 426 0
	stw 6,56(1)
	stw 7,60(1)
	stw 8,64(1)
	.loc 3 427 0
	stw 10,68(1)
	stw 11,72(1)
.LBE11021:
.LBE11040:
.LBE11016:
	.loc 3 465 0
	addi 11,1,8
.LBB11043:
.LBB11041:
.LBB11022:
	.loc 3 427 0
	stw 0,76(1)
.LVL346:
	.loc 4 589 0
	mr 0,9
.LVL347:
.L147:
.LBE11022:
.LBE11041:
.LBE11043:
.LBB11044:
.LBB11045:
	mr 10,4
.LBE11045:
.LBE11044:
	li 8,0
.LVL348:
.L148:
.LBB11048:
.LBB11042:
.LBB11023:
	addi 10,10,4
.LBE11023:
.LBE11042:
.LBE11048:
.LBB11049:
.LBB11046:
	.loc 3 468 0
	cmpwi 7,8,8
	.loc 3 471 0
	lfs 0,12(10)
	lfs 12,0(10)
	fmuls 0,10,0
	lfs 13,24(10)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsx 0,11,8
	.loc 3 468 0
	addi 8,8,4
	bne+ 7,.L148
	addi 11,11,12
.LVL349:
	.loc 3 467 0
	cmpw 7,11,0
	beq- 7,.L155
	.loc 4 589 0
	lfs 9,12(9)
	lfs 10,16(9)
	lfs 11,20(9)
	addi 9,9,12
	b .L147
.L155:
	addi 0,3,36
.LVL350:
.LBE11046:
.LBE11049:
	addi 8,1,8
	mr 10,3
	addi 5,5,-4
.LVL351:
.L150:
.LBB11050:
.LBB11051:
	.loc 3 467 0
	lfs 9,0(8)
	.loc 4 589 0
	mr 9,5
	.loc 3 467 0
	lfs 10,4(8)
.LBE11051:
.LBE11050:
	.loc 4 589 0
	li 11,0
.LBB11054:
.LBB11052:
	.loc 3 467 0
	lfs 11,8(8)
.LVL352:
.L151:
.LBE11052:
.LBE11054:
.LBB11055:
.LBB11047:
	.loc 4 589 0
	addi 9,9,4
.LBE11047:
.LBE11055:
.LBB11056:
.LBB11053:
	.loc 3 468 0
	cmpwi 7,11,8
	.loc 3 471 0
	lfs 0,12(9)
	lfs 12,0(9)
	fmuls 0,10,0
	lfs 13,24(9)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsx 0,10,11
	.loc 3 468 0
	addi 11,11,4
	bne+ 7,.L151
	addi 10,10,12
	.loc 3 474 0
	addi 8,8,12
.LVL353:
	.loc 3 467 0
	cmpw 7,10,0
	bne+ 7,.L150
.LBE11053:
.LBE11056:
	.loc 4 592 0
	addi 1,1,88
.LCFI57:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2551:
	.size	_ZNK6idMat313InertiaRotateERKS_, .-_ZNK6idMat313InertiaRotateERKS_
	.align 2
	.globl _ZN6idMat317InertiaRotateSelfERKS_
	.type	_ZN6idMat317InertiaRotateSelfERKS_, @function
_ZN6idMat317InertiaRotateSelfERKS_:
.LFB2552:
	.loc 4 599 0
	.cfi_startproc
.LVL354:
	stwu 1,-120(1)
.LCFI58:
	.cfi_def_cfa_offset 120
.LBB11088:
.LBB11089:
.LBB11090:
	.loc 2 402 0
	lfs 9,0(4)
.LVL355:
.LBE11090:
.LBE11089:
.LBB11091:
.LBB11092:
	.loc 4 601 0
	addi 6,1,80
.LBE11092:
.LBE11091:
.LBB11097:
.LBB11098:
	.loc 2 402 0
	lfs 10,12(4)
.LVL356:
.LBE11098:
.LBE11097:
.LBB11099:
.LBB11093:
	.loc 4 599 0
	addi 5,1,44
.LBE11093:
.LBE11099:
.LBB11100:
.LBB11101:
	.loc 2 402 0
	lfs 11,24(4)
.LVL357:
.LBE11101:
.LBE11100:
.LBB11102:
.LBB11103:
	lwz 7,4(4)
.LVL358:
.LBE11103:
.LBE11102:
.LBB11104:
.LBB11105:
	lwz 11,8(4)
.LBE11105:
.LBE11104:
.LBB11106:
.LBB11107:
	lwz 9,20(4)
.LBE11107:
.LBE11106:
.LBB11108:
.LBB11109:
	lwz 8,16(4)
.LVL359:
.LBE11109:
.LBE11108:
.LBB11110:
.LBB11111:
	lwz 10,28(4)
.LVL360:
.LBE11111:
.LBE11110:
.LBB11112:
.LBB11113:
	lwz 0,32(4)
.LVL361:
.LBE11113:
.LBE11112:
.LBB11114:
.LBB11094:
	.loc 3 425 0
	stfs 9,80(1)
	stfs 10,84(1)
	stfs 11,88(1)
	.loc 3 426 0
	stw 7,92(1)
	.loc 3 427 0
	stw 11,104(1)
	stw 9,108(1)
	.loc 3 426 0
	stw 8,96(1)
	.loc 4 599 0
	mr 8,6
	.loc 3 426 0
	stw 10,100(1)
.LBE11094:
.LBE11114:
.LBE11088:
	.loc 3 465 0
	mr 10,5
.LBB11117:
.LBB11115:
.LBB11095:
	.loc 3 427 0
	stw 0,112(1)
.LVL362:
	addi 0,3,-4
.LVL363:
.L157:
.LBE11095:
.LBE11115:
.LBE11117:
.LBB11118:
.LBB11119:
	.loc 4 599 0
	mr 9,0
.LBE11119:
.LBE11118:
	li 11,0
.LVL364:
.L158:
.LBB11122:
.LBB11116:
.LBB11096:
	addi 9,9,4
.LBE11096:
.LBE11116:
.LBE11122:
.LBB11123:
.LBB11120:
	.loc 3 468 0
	cmpwi 7,11,8
	.loc 3 471 0
	lfs 0,12(9)
	lfs 12,0(9)
	fmuls 0,10,0
	lfs 13,24(9)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsx 0,10,11
	.loc 3 468 0
	addi 11,11,4
	bne+ 7,.L158
	addi 10,10,12
.LVL365:
	.loc 3 467 0
	cmpw 7,10,8
	beq- 7,.L167
	.loc 4 599 0
	lfs 9,12(6)
	lfs 10,16(6)
	lfs 11,20(6)
	addi 6,6,12
	b .L157
.L167:
.LBE11120:
.LBE11123:
	.loc 4 601 0
	mr 8,5
.LVL366:
	.loc 4 599 0
	addi 10,1,8
.LVL367:
	addi 4,4,-4
.LVL368:
.L160:
.LBB11124:
.LBB11125:
	.loc 3 467 0
	lfs 9,0(8)
	.loc 4 599 0
	mr 9,4
	.loc 3 467 0
	lfs 10,4(8)
.LBE11125:
.LBE11124:
	.loc 4 599 0
	li 11,0
.LBB11128:
.LBB11126:
	.loc 3 467 0
	lfs 11,8(8)
.LVL369:
.L161:
.LBE11126:
.LBE11128:
.LBB11129:
.LBB11121:
	.loc 4 599 0
	addi 9,9,4
.LBE11121:
.LBE11129:
.LBB11130:
.LBB11127:
	.loc 3 468 0
	cmpwi 7,11,8
	.loc 3 471 0
	lfs 0,12(9)
	lfs 12,0(9)
	fmuls 0,10,0
	lfs 13,24(9)
	fmadds 0,12,9,0
	fmadds 0,13,11,0
	stfsx 0,10,11
	.loc 3 468 0
	addi 11,11,4
	bne+ 7,.L161
	addi 10,10,12
	.loc 3 474 0
	addi 8,8,12
.LVL370:
	.loc 3 467 0
	cmpw 7,10,5
	bne+ 7,.L160
.LVL371:
.LBE11127:
.LBE11130:
.LBB11131:
.LBB11132:
	.loc 3 333 0
	li 10,0
.LVL372:
.L163:
.LBB11133:
.LBB11134:
	.loc 2 424 0
	addi 11,1,8
.LVL373:
.LBE11134:
.LBE11133:
	.loc 3 333 0
	cmpwi 7,10,24
.LBB11137:
.LBB11135:
	.loc 2 424 0
	lwzux 0,11,10
.LVL374:
	mr 9,3
	stwux 0,9,10
.LBE11135:
.LBE11137:
	.loc 3 333 0
	addi 10,10,12
.LBB11138:
.LBB11136:
	.loc 2 425 0
	lwz 8,4(11)
	.loc 2 426 0
	lwz 0,8(11)
	.loc 2 425 0
	stw 8,4(9)
	.loc 2 426 0
	stw 0,8(9)
.LBE11136:
.LBE11138:
	.loc 3 333 0
	bne+ 7,.L163
.LBE11132:
.LBE11131:
	.loc 4 603 0
	addi 1,1,120
.LCFI59:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2552:
	.size	_ZN6idMat317InertiaRotateSelfERKS_, .-_ZN6idMat317InertiaRotateSelfERKS_
	.align 2
	.globl _ZNK6idMat38ToStringEi
	.type	_ZNK6idMat38ToStringEi, @function
_ZNK6idMat38ToStringEi:
.LFB2553:
	.loc 4 610 0
	.cfi_startproc
.LVL375:
	mflr 0
	stwu 1,-8(1)
.LCFI60:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 5,4
	.loc 4 611 0
	li 4,9
.LVL376:
	.loc 4 610 0
	stw 0,12(1)
	.loc 4 611 0
	.cfi_offset 65, 4
	bl _ZN5idStr18FloatArrayToStringEPKfii
.LVL377:
	.loc 4 612 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI61:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2553:
	.size	_ZNK6idMat38ToStringEi, .-_ZNK6idMat38ToStringEi
	.align 2
	.globl _ZNK6idMat49TransposeEv
	.type	_ZNK6idMat49TransposeEv, @function
_ZNK6idMat49TransposeEv:
.LFB2554:
	.loc 4 629 0
	.cfi_startproc
.LVL378:
	.loc 4 633 0
	li 8,0
.LVL379:
.L170:
	li 0,4
.LBB11139:
	.loc 4 629 0 discriminator 1
	slwi 6,8,2
	mtctr 0
.LBE11139:
	li 9,0
	slwi 7,8,4
.LVL380:
.L171:
.LBB11142:
	.loc 4 635 0
	slwi 10,9,4
	slwi 11,9,2
.LBB11140:
.LBB11141:
	.loc 2 885 0
	add 10,4,10
.LBE11141:
.LBE11140:
	.loc 4 635 0
	add 11,3,11
	lwzx 0,10,6
	.loc 4 634 0
	addi 9,9,1
.LVL381:
	.loc 4 635 0
	stwx 0,11,7
	.loc 4 634 0
	bdnz .L171
.LVL382:
	.loc 4 633 0
	cmpwi 7,8,3
	addi 8,8,1
.LVL383:
	bne+ 7,.L170
	blr
.LBE11142:
	.cfi_endproc
.LFE2554:
	.size	_ZNK6idMat49TransposeEv, .-_ZNK6idMat49TransposeEv
	.align 2
	.globl _ZN6idMat413TransposeSelfEv
	.type	_ZN6idMat413TransposeSelfEv, @function
_ZN6idMat413TransposeSelfEv:
.LFB2555:
	.loc 4 646 0
	.cfi_startproc
.LVL384:
	.loc 4 650 0
	li 7,0
.LVL385:
	.loc 4 646 0
	li 8,0
.LBB11143:
	.loc 4 651 0
	cmpwi 7,7,3
	addi 5,7,1
	beqlr- 7
.LVL386:
.L181:
	.loc 4 652 0
	subfic 0,5,4
	slwi 7,7,4
	mtctr 0
	.loc 4 646 0
	slwi 9,5,2
.LBE11143:
	mr 11,5
.LBB11144:
	.loc 4 652 0
	add 7,3,7
.LVL387:
.L177:
	.loc 4 653 0 discriminator 2
	slwi 10,11,4
	.loc 4 652 0 discriminator 2
	lwzx 0,7,9
.LVL388:
	.loc 4 653 0 discriminator 2
	add 10,3,10
	.loc 4 651 0 discriminator 2
	addi 11,11,1
.LVL389:
	.loc 4 653 0 discriminator 2
	lwzx 6,10,8
	stwx 6,7,9
.LVL390:
	.loc 4 651 0 discriminator 2
	addi 9,9,4
.LVL391:
	.loc 4 654 0 discriminator 2
	stwx 0,10,8
	.loc 4 651 0 discriminator 2
	bdnz .L177
.LVL392:
	.loc 4 651 0 is_stmt 0
	mr 7,5
.LVL393:
	addi 8,8,4
	cmpwi 7,7,3
	addi 5,7,1
.LVL394:
	bne+ 7,.L181
	blr
.LBE11144:
	.cfi_endproc
.LFE2555:
	.size	_ZN6idMat413TransposeSelfEv, .-_ZN6idMat413TransposeSelfEv
	.align 2
	.globl _ZNK6idMat411DeterminantEv
	.type	_ZNK6idMat411DeterminantEv, @function
_ZNK6idMat411DeterminantEv:
.LFB2556:
	.loc 4 665 0 is_stmt 1
	.cfi_startproc
.LVL395:
.LBB11145:
.LBB11146:
.LBB11147:
	.loc 2 885 0
	lfs 8,16(3)
.LBE11147:
.LBE11146:
.LBB11149:
.LBB11150:
	lfs 0,12(3)
.LBE11150:
.LBE11149:
.LBB11155:
.LBB11156:
	lfs 12,28(3)
.LBE11156:
.LBE11155:
	.loc 4 670 0
	fmuls 1,8,0
.LBB11157:
.LBB11158:
	.loc 2 885 0
	lfs 9,0(3)
.LVL396:
.LBE11158:
.LBE11157:
.LBB11159:
.LBB11160:
	lfs 10,20(3)
.LVL397:
.LBE11160:
.LBE11159:
.LBB11161:
.LBB11162:
	lfs 6,24(3)
.LBE11162:
.LBE11161:
	.loc 4 672 0
	fmuls 4,10,0
.LBE11145:
	.loc 4 665 0
	stwu 1,-24(1)
.LCFI62:
	.cfi_def_cfa_offset 24
.LBB11182:
.LBB11163:
.LBB11151:
	.loc 4 670 0
	fmsubs 1,9,12,1
.LBE11151:
.LBE11163:
.LBB11164:
.LBB11165:
	.loc 2 885 0
	lfs 7,4(3)
.LVL398:
.LBE11165:
.LBE11164:
	.loc 4 673 0
	fmuls 2,6,0
.LBB11166:
.LBB11167:
	.loc 2 885 0
	lfs 5,8(3)
.LBE11167:
.LBE11166:
.LBB11169:
.LBB11170:
	lfs 0,40(3)
.LBE11170:
.LBE11169:
.LBB11171:
.LBB11152:
	.loc 4 672 0
	fmsubs 4,7,12,4
.LBE11152:
.LBE11171:
.LBE11182:
	.loc 4 665 0
	stfd 31,16(1)
.LBB11183:
	.loc 4 669 0
	fmuls 3,8,5
.LBB11172:
.LBB11153:
	.loc 4 673 0
	fmsubs 2,5,12,2
.LBE11153:
.LBE11172:
.LBB11173:
.LBB11174:
	.loc 2 885 0
	lfs 12,32(3)
.LBE11174:
.LBE11173:
	.loc 4 678 0
	fmuls 31,1,0
	.cfi_offset 63, -8
.LBE11183:
	.loc 4 665 0
	stfd 30,8(1)
.LBB11184:
.LBB11175:
.LBB11168:
	.loc 4 669 0
	fmsubs 3,9,6,3
.LBE11168:
.LBE11175:
.LBB11176:
.LBB11177:
	.loc 2 885 0
	lfs 11,36(3)
.LBE11177:
.LBE11176:
	.loc 4 671 0
	fmuls 5,10,5
.LBB11178:
.LBB11179:
	.loc 2 885 0
	lfs 13,44(3)
.LBE11179:
.LBE11178:
	.loc 4 679 0
	fmuls 30,4,0
	.cfi_offset 62, -16
	.loc 4 678 0
	fmsubs 31,2,12,31
.LBB11180:
.LBB11154:
	.loc 4 671 0
	fmsubs 6,7,6,5
.LBE11154:
.LBE11180:
	.loc 4 681 0
	lfs 5,52(3)
	.loc 4 668 0
	fmuls 7,7,8
	.loc 4 677 0
	fmuls 1,1,11
	.loc 4 679 0
	fmsubs 2,2,11,30
.LBE11184:
	.loc 4 682 0
	lfd 30,8(1)
.LBB11185:
	.loc 4 678 0
	fmadds 31,3,13,31
.LBB11181:
.LBB11148:
	.loc 4 668 0
	fmsubs 10,9,10,7
.LVL399:
.LBE11148:
.LBE11181:
	.loc 4 681 0
	lfs 7,48(3)
	.loc 4 677 0
	fmsubs 4,4,12,1
.LVL400:
	.loc 4 681 0
	fnmadds 2,6,13,2
	fmuls 8,31,5
.LBE11185:
	.loc 4 682 0
	lfd 31,16(1)
.LBB11186:
	.loc 4 676 0
	fmuls 11,3,11
.LBE11186:
	.loc 4 682 0
.LBB11187:
	.loc 4 665 0
	fnmadds 13,10,13,4
	.loc 4 681 0
	lfs 4,60(3)
	fmadds 2,2,7,8
	lfs 8,56(3)
	.loc 4 676 0
	fmsubs 6,6,12,11
.LVL401:
.LBE11187:
	.loc 4 682 0
	addi 1,1,24
.LCFI63:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
.LBB11188:
	.loc 4 681 0
	fmadds 13,13,8,2
	.loc 4 676 0
	fmadds 10,10,0,6
.LVL402:
.LBE11188:
	.loc 4 682 0
	fmadds 1,10,4,13
	blr
	.cfi_endproc
.LFE2556:
	.size	_ZNK6idMat411DeterminantEv, .-_ZNK6idMat411DeterminantEv
	.align 2
	.globl _ZN6idMat411InverseSelfEv
	.type	_ZN6idMat411InverseSelfEv, @function
_ZN6idMat411InverseSelfEv:
.LFB2557:
	.loc 4 689 0
	.cfi_startproc
.LVL403:
	stwu 1,-200(1)
.LCFI64:
	.cfi_def_cfa_offset 200
	mr 9,3
.LVL404:
	stfd 18,88(1)
	stfd 19,96(1)
	stfd 20,104(1)
	stfd 21,112(1)
	stfd 22,120(1)
	stfd 23,128(1)
	stfd 24,136(1)
	stfd 25,144(1)
	stfd 26,152(1)
	stfd 27,160(1)
	stfd 28,168(1)
	stfd 14,56(1)
	stfd 15,64(1)
	stfd 16,72(1)
	stfd 17,80(1)
	stfd 29,176(1)
	stfd 30,184(1)
	stfd 31,192(1)
.LBB11189:
	.loc 4 695 0
	lfs 5,16(3)
	.loc 4 697 0
	lfs 29,12(3)
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	.cfi_offset 47, -136
	.cfi_offset 46, -144
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
	.loc 4 695 0
	lfs 4,0(3)
.LVL405:
	.loc 4 697 0
	fmuls 23,5,29
	.loc 4 695 0
	lfs 3,20(3)
.LVL406:
	.loc 4 696 0
	lfs 1,24(3)
	.loc 4 697 0
	lfs 30,28(3)
	.loc 4 699 0
	fmuls 25,3,29
	.loc 4 700 0
	fmuls 24,1,29
	.loc 4 695 0
	lfs 2,4(3)
.LVL407:
	.loc 4 697 0
	fmsubs 23,4,30,23
	.loc 4 696 0
	lfs 31,8(3)
	.loc 4 703 0
	lfs 13,40(3)
	.loc 4 699 0
	fmsubs 25,2,30,25
	.loc 4 700 0
	fmsubs 24,31,30,24
	.loc 4 703 0
	lfs 11,32(3)
	.loc 4 696 0
	fmuls 27,5,31
	.loc 4 703 0
	lfs 10,36(3)
	.loc 4 705 0
	fmuls 21,23,13
	.loc 4 704 0
	lfs 12,44(3)
	.loc 4 698 0
	fmuls 26,3,31
	.loc 4 708 0
	lfs 6,52(3)
	.loc 4 696 0
	fmsubs 27,4,1,27
	.loc 4 708 0
	lfs 7,48(3)
	.loc 4 705 0
	fmsubs 21,24,11,21
	.loc 4 708 0
	lfs 9,56(3)
	.loc 4 706 0
	fmuls 20,25,13
	.loc 4 708 0
	lfs 8,60(3)
	.loc 4 698 0
	fmsubs 26,2,1,26
	.loc 4 711 0
	li 3,0
.LVL408:
	.loc 4 695 0
	fmuls 28,2,5
	.loc 4 704 0
	fmuls 19,23,10
	.loc 4 705 0
	fmadds 21,27,12,21
	.loc 4 706 0
	fmsubs 20,24,10,20
	.loc 4 695 0
	fmsubs 28,4,3,28
.LVL409:
	.loc 4 703 0
	fmuls 22,10,27
	.loc 4 704 0
	fmsubs 19,25,11,19
	.loc 4 708 0
	fnmadds 20,26,12,20
	fmuls 0,6,21
	.loc 4 689 0
	fneg 18,9
	.loc 4 703 0
	fmsubs 22,11,26,22
	.loc 4 704 0
	fmadds 19,12,28,19
	.loc 4 708 0
	fmadds 0,20,7,0
	.loc 4 703 0
	fmadds 22,13,28,22
.LVL410:
	.loc 4 708 0
	fmadds 0,18,19,0
	fmadds 0,8,22,0
	stfs 0,8(1)
.LVL411:
.LBB11190:
.LBB11191:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE11191:
.LBE11190:
	.loc 4 710 0
	lis 11,.LC2@ha
	stw 0,48(1)
	lfs 0,48(1)
.LVL412:
	fmr 18,0
	lfd 0,.LC2@l(11)
	fcmpu 7,18,0
	blt- 7,.L184
	.loc 4 714 0
	lis 11,.LC1@ha
	.loc 4 708 0
	lfs 0,8(1)
	.loc 4 714 0
	lfs 18,.LC1@l(11)
	.loc 4 726 0
	fmuls 14,30,7
	.loc 4 718 0
	fmuls 16,31,7
	.loc 4 767 0
	li 3,1
	.loc 4 714 0
	fdiv 0,18,0
.LVL413:
	.loc 4 726 0
	stfs 14,16(1)
	.loc 4 725 0
	fmuls 18,1,7
	.loc 4 728 0
	fmuls 14,30,6
	.loc 4 718 0
	fmsubs 16,4,9,16
	.loc 4 725 0
	fmsubs 18,5,9,18
	.loc 4 728 0
	stfs 14,12(1)
	.loc 4 719 0
	fmuls 15,29,7
	.loc 4 718 0
	stfs 16,8(1)
	.loc 4 721 0
	fmuls 17,29,6
	.loc 4 725 0
	stfs 18,52(1)
	.loc 4 729 0
	fmuls 30,30,9
	.loc 4 726 0
	lfs 18,16(1)
	.loc 4 719 0
	fmsubs 15,4,8,15
	.loc 4 721 0
	fmsubs 17,2,8,17
	.loc 4 726 0
	fmsubs 14,5,8,18
	.loc 4 728 0
	lfs 18,12(1)
	.loc 4 729 0
	stfs 30,24(1)
	.loc 4 764 0
	fneg 19,19
.LVL414:
	.loc 4 728 0
	fmsubs 16,3,8,18
	.loc 4 720 0
	fmuls 18,31,6
	.loc 4 762 0
	fmul 20,20,0
	.loc 4 720 0
	stfs 18,12(1)
	.loc 4 722 0
	fmuls 18,29,9
	.loc 4 727 0
	fmuls 29,1,6
	.loc 4 720 0
	lfs 30,12(1)
	.loc 4 763 0
	fmul 21,21,0
.LVL415:
	.loc 4 727 0
	stfs 29,20(1)
	.loc 4 722 0
	fmsubs 31,31,8,18
	.loc 4 720 0
	fmsubs 29,2,9,30
	.loc 4 727 0
	lfs 18,20(1)
	.loc 4 717 0
	fmuls 2,2,7
	.loc 4 764 0
	fmul 19,19,0
	.loc 4 727 0
	fmsubs 30,3,9,18
	.loc 4 729 0
	lfs 18,24(1)
	.loc 4 724 0
	fmuls 3,3,7
	.loc 4 729 0
	fmsubs 1,1,8,18
	.loc 4 740 0
	fmuls 18,13,16
	.loc 4 717 0
	fmsubs 2,4,6,2
	.loc 4 724 0
	fmsubs 3,5,6,3
	.loc 4 740 0
	stfs 18,12(1)
	.loc 4 739 0
	fmuls 18,13,14
	.loc 4 738 0
	fmuls 14,10,14
	.loc 4 740 0
	lfs 4,12(1)
	.loc 4 762 0
	frsp 20,20
	.loc 4 739 0
	stfs 18,16(1)
	.loc 4 763 0
	frsp 21,21
	.loc 4 737 0
	lfs 18,52(1)
	.loc 4 740 0
	fmsubs 5,10,1,4
	.loc 4 738 0
	fmsubs 14,11,16,14
	.loc 4 737 0
	fmuls 18,10,18
	.loc 4 764 0
	frsp 19,19
	.loc 4 749 0
	fnmadds 14,12,3,14
	.loc 4 737 0
	stfs 18,20(1)
	.loc 4 735 0
	fmuls 18,13,17
	.loc 4 749 0
	fmul 14,14,0
	.loc 4 735 0
	stfs 18,24(1)
	.loc 4 734 0
	fmuls 18,13,15
	.loc 4 733 0
	fmuls 15,10,15
	.loc 4 749 0
	frsp 14,14
	.loc 4 734 0
	stfs 18,28(1)
	.loc 4 732 0
	lfs 18,8(1)
	.loc 4 733 0
	stfs 15,32(1)
	.loc 4 742 0
	fmuls 15,27,6
	.loc 4 732 0
	fmuls 18,10,18
	stfs 18,36(1)
	.loc 4 745 0
	fmuls 18,25,9
	stfs 18,40(1)
	.loc 4 744 0
	fmuls 18,23,9
	.loc 4 743 0
	fmuls 23,23,6
.LVL416:
	.loc 4 744 0
	stfs 18,44(1)
.LVL417:
	.loc 4 739 0
	lfs 18,16(1)
	.loc 4 743 0
	fmsubs 23,25,7,23
	.loc 4 739 0
	fmsubs 1,11,1,18
.LVL418:
	.loc 4 737 0
	lfs 18,20(1)
	fmsubs 4,11,30,18
	.loc 4 735 0
	lfs 18,24(1)
	.loc 4 747 0
	fnmadds 30,12,30,5
.LVL419:
	.loc 4 739 0
	lfs 5,52(1)
	.loc 4 735 0
	fmsubs 10,10,31,18
	.loc 4 734 0
	lfs 18,28(1)
	.loc 4 739 0
	fmadds 1,12,5,1
	.loc 4 734 0
	fmsubs 31,11,31,18
.LVL420:
	.loc 4 733 0
	lfs 18,32(1)
	.loc 4 737 0
	fmadds 3,13,3,4
.LVL421:
	.loc 4 733 0
	fmsubs 17,11,17,18
.LVL422:
	.loc 4 732 0
	lfs 18,36(1)
	.loc 4 735 0
	fmadds 10,12,29,10
.LVL423:
	.loc 4 732 0
	fmsubs 11,11,29,18
	.loc 4 745 0
	lfs 18,40(1)
	.loc 4 747 0
	fmul 30,30,0
	.loc 4 745 0
	fmsubs 6,24,6,18
	.loc 4 744 0
	lfs 18,44(1)
	.loc 4 755 0
	fnmadds 13,13,2,11
	.loc 4 744 0
	fmsubs 24,24,7,18
.LVL424:
	.loc 4 753 0
	lfs 18,8(1)
	.loc 4 742 0
	fmsubs 7,26,7,15
	.loc 4 753 0
	fnmadds 31,12,18,31
	.loc 4 745 0
	fmadds 6,26,8,6
.LVL425:
	.loc 4 758 0
	fnmadds 27,27,8,24
.LVL426:
	.loc 4 733 0
	fmadds 12,12,2,17
	.loc 4 743 0
	fmadds 8,28,8,23
	.loc 4 760 0
	fnmadds 9,28,9,7
	.loc 4 748 0
	fmul 1,1,0
	.loc 4 750 0
	fmul 3,3,0
	.loc 4 752 0
	fmul 10,10,0
.LVL427:
	.loc 4 753 0
	fmul 31,31,0
	.loc 4 754 0
	fmul 12,12,0
	.loc 4 755 0
	fmul 13,13,0
	.loc 4 757 0
	fmul 6,6,0
.LVL428:
	.loc 4 758 0
	fmul 27,27,0
	.loc 4 759 0
	fmul 8,8,0
	.loc 4 760 0
	fmul 9,9,0
	.loc 4 765 0
	fmul 0,22,0
.LVL429:
	.loc 4 747 0
	frsp 30,30
	.loc 4 748 0
	frsp 1,1
	.loc 4 750 0
	frsp 3,3
	.loc 4 752 0
	frsp 10,10
	.loc 4 747 0
	stfs 30,0(9)
.LVL430:
	.loc 4 753 0
	frsp 31,31
	.loc 4 748 0
	stfs 1,16(9)
.LVL431:
	.loc 4 754 0
	frsp 12,12
	.loc 4 749 0
	stfs 14,32(9)
.LVL432:
	.loc 4 755 0
	frsp 13,13
	.loc 4 750 0
	stfs 3,48(9)
.LVL433:
	.loc 4 757 0
	frsp 6,6
	.loc 4 752 0
	stfs 10,4(9)
.LVL434:
	.loc 4 758 0
	frsp 27,27
	.loc 4 753 0
	stfs 31,20(9)
.LVL435:
	.loc 4 759 0
	frsp 8,8
	.loc 4 754 0
	stfs 12,36(9)
.LVL436:
	.loc 4 760 0
	frsp 9,9
	.loc 4 755 0
	stfs 13,52(9)
.LVL437:
	.loc 4 765 0
	frsp 0,0
	.loc 4 757 0
	stfs 6,8(9)
.LVL438:
	.loc 4 758 0
	stfs 27,24(9)
.LVL439:
	.loc 4 759 0
	stfs 8,40(9)
.LVL440:
	.loc 4 760 0
	stfs 9,56(9)
.LVL441:
	.loc 4 762 0
	stfs 20,12(9)
.LVL442:
	.loc 4 763 0
	stfs 21,28(9)
.LVL443:
	.loc 4 764 0
	stfs 19,44(9)
.LVL444:
	.loc 4 765 0
	stfs 0,60(9)
.LVL445:
.L184:
.LBE11189:
	.loc 4 768 0
	lfd 14,56(1)
	lfd 15,64(1)
	lfd 16,72(1)
	lfd 17,80(1)
	lfd 18,88(1)
	lfd 19,96(1)
	lfd 20,104(1)
	lfd 21,112(1)
	lfd 22,120(1)
.LVL446:
	lfd 23,128(1)
	lfd 24,136(1)
	lfd 25,144(1)
.LVL447:
	lfd 26,152(1)
.LVL448:
	lfd 27,160(1)
	lfd 28,168(1)
.LVL449:
	lfd 29,176(1)
	lfd 30,184(1)
	lfd 31,192(1)
	addi 1,1,200
.LCFI65:
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
	blr
	.cfi_endproc
.LFE2557:
	.size	_ZN6idMat411InverseSelfEv, .-_ZN6idMat411InverseSelfEv
	.align 2
	.globl _ZN6idMat415InverseFastSelfEv
	.type	_ZN6idMat415InverseFastSelfEv, @function
_ZN6idMat415InverseFastSelfEv:
.LFB2558:
	.loc 4 775 0
	.cfi_startproc
.LVL450:
	stwu 1,-88(1)
.LCFI66:
	.cfi_def_cfa_offset 88
.LBB11192:
	.loc 4 962 0
	lis 11,.LC2@ha
	lfd 6,.LC2@l(11)
.LBE11192:
	.loc 4 775 0
	mr 9,3
.LVL451:
	stfd 23,16(1)
	stfd 24,24(1)
	stfd 25,32(1)
	stfd 26,40(1)
	stfd 27,48(1)
	stfd 28,56(1)
	stfd 29,64(1)
	stfd 30,72(1)
	stfd 31,80(1)
.LBB11197:
	.loc 4 960 0
	lfs 7,4(3)
	lfs 8,16(3)
	lfs 9,0(3)
	fmuls 0,7,8
	lfs 5,20(3)
	.loc 4 963 0
	li 3,0
.LVL452:
	.loc 4 960 0
	fmsubs 0,9,5,0
	stfs 0,8(1)
.LVL453:
.LBB11193:
.LBB11194:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE11194:
.LBE11193:
	.loc 4 962 0
	stw 0,12(1)
	lfs 13,12(1)
	fmr 0,13
.LVL454:
	fcmpu 7,0,6
	blt- 7,.L187
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.loc 4 966 0
	lis 11,.LC1@ha
	lfs 26,8(1)
	lfs 29,.LC1@l(11)
	.loc 4 969 0
	fneg 7,7
	.loc 4 970 0
	fneg 8,8
	.loc 4 974 0
	lfs 12,24(9)
	.loc 4 966 0
	fdivs 0,29,26
.LVL455:
	.loc 4 975 0
	lfs 10,28(9)
	.loc 4 974 0
	lfs 27,8(9)
	.loc 4 975 0
	lfs 28,12(9)
	.loc 4 980 0
	lfs 3,36(9)
	.loc 4 982 0
	lfs 1,52(9)
	.loc 4 980 0
	lfs 4,32(9)
	.loc 4 982 0
	lfs 2,48(9)
	.loc 4 987 0
	lfs 23,44(9)
	.loc 4 988 0
	lfs 24,56(9)
	.loc 4 989 0
	lfs 26,60(9)
	.loc 4 986 0
	lfs 25,40(9)
	.loc 4 971 0
	fmuls 9,9,0
	.loc 4 969 0
	fmuls 7,7,0
	.loc 4 970 0
	fmuls 8,8,0
	.loc 4 976 0
	fmuls 13,9,12
	.loc 4 977 0
	fmuls 11,9,10
	.loc 4 968 0
	fmuls 0,5,0
.LVL456:
	.loc 4 976 0
	fmadds 13,8,27,13
	.loc 4 977 0
	fmadds 11,8,28,11
	.loc 4 974 0
	fmuls 12,7,12
	.loc 4 975 0
	fmuls 10,7,10
	.loc 4 981 0
	fmuls 31,11,3
	.loc 4 974 0
	fmadds 12,0,27,12
.LVL457:
	.loc 4 975 0
	fmadds 10,0,28,10
.LVL458:
	.loc 4 982 0
	fmuls 5,13,1
	.loc 4 980 0
	fmuls 28,13,3
	.loc 4 981 0
	fmadds 31,10,4,31
	.loc 4 982 0
	fmadds 5,12,2,5
	.loc 4 983 0
	fmuls 30,11,1
	.loc 4 980 0
	fmadds 28,12,4,28
	.loc 4 987 0
	fsubs 31,31,23
	.loc 4 988 0
	fsubs 5,5,24
	.loc 4 983 0
	fmadds 30,10,2,30
	.loc 4 986 0
	fsubs 28,28,25
.LVL459:
	.loc 4 992 0
	fmuls 27,31,5
	.loc 4 989 0
	fsubs 30,30,26
.LVL460:
	.loc 4 992 0
	fmsubs 27,28,30,27
	stfs 27,8(1)
.LVL461:
.LBB11195:
.LBB11196:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE11196:
.LBE11195:
	.loc 4 994 0
	stw 0,12(1)
	lfs 26,12(1)
	fmr 27,26
.LVL462:
	fcmpu 7,27,6
	blt- 7,.L187
	.loc 4 998 0
	lfs 6,8(1)
	.loc 4 1009 0
	fmuls 26,8,1
	.loc 4 1002 0
	fneg 31,31
	.loc 4 1036 0
	li 3,1
	.loc 4 998 0
	fdivs 29,29,6
.LVL463:
	.loc 4 1010 0
	fmuls 1,9,1
	.loc 4 1002 0
	fmuls 31,31,29
	.loc 4 1009 0
	fmadds 26,0,2,26
	.loc 4 1007 0
	fmuls 23,8,3
	.loc 4 1010 0
	fmadds 2,7,2,1
	.loc 4 1008 0
	fmuls 3,9,3
	.loc 4 1001 0
	fmuls 30,30,29
.LVL464:
	.loc 4 1004 0
	fmuls 6,28,29
	.loc 4 1007 0
	fmadds 23,0,4,23
	.loc 4 1013 0
	fmuls 27,31,26
	.loc 4 1008 0
	fmadds 4,7,4,3
	.loc 4 1014 0
	fmuls 28,31,2
.LVL465:
	.loc 4 1003 0
	fneg 5,5
	.loc 4 1013 0
	fmadds 27,30,23,27
	.loc 4 1014 0
	fmadds 28,30,4,28
	.loc 4 1003 0
	fmuls 5,5,29
.LVL466:
	.loc 4 775 0
	fneg 24,12
	.loc 4 1013 0
	stfs 27,32(9)
.LVL467:
	.loc 4 775 0
	fneg 25,13
	.loc 4 1014 0
	stfs 28,36(9)
.LVL468:
	.loc 4 1015 0
	fmuls 29,6,26
.LVL469:
	.loc 4 1016 0
	fmuls 2,6,2
	.loc 4 775 0
	fneg 26,10
	.loc 4 1015 0
	fmadds 29,5,23,29
	.loc 4 1016 0
	fmadds 4,5,4,2
	.loc 4 775 0
	fneg 3,11
	.loc 4 1025 0
	fmuls 1,10,5
	.loc 4 1015 0
	stfs 29,48(9)
.LVL470:
	.loc 4 1027 0
	fmuls 2,11,5
	.loc 4 1016 0
	stfs 4,52(9)
.LVL471:
	.loc 4 1026 0
	fmuls 10,10,6
	.loc 4 1028 0
	fmuls 11,11,6
	.loc 4 1019 0
	fmadds 0,24,27,0
	.loc 4 1020 0
	fmadds 7,24,28,7
	.loc 4 1021 0
	fmadds 8,25,27,8
	.loc 4 1022 0
	fmadds 9,25,28,9
	.loc 4 1025 0
	fmadds 1,12,30,1
	.loc 4 1027 0
	fmadds 2,13,30,2
	.loc 4 1019 0
	fmadds 0,26,29,0
	.loc 4 1021 0
	fmadds 8,3,29,8
	.loc 4 1025 0
	stfs 1,8(9)
	.loc 4 1026 0
	fmadds 12,12,31,10
	.loc 4 1027 0
	stfs 2,24(9)
	.loc 4 1028 0
	fmadds 13,13,31,11
	.loc 4 1019 0
	stfs 0,0(9)
.LVL472:
	.loc 4 1020 0
	fmadds 26,26,4,7
	.loc 4 1021 0
	stfs 8,16(9)
	.loc 4 1022 0
	fmadds 3,3,4,9
	.loc 4 1026 0
	stfs 12,12(9)
	.loc 4 1031 0
	fneg 30,30
	.loc 4 1028 0
	stfs 13,28(9)
	.loc 4 1032 0
	fneg 31,31
	.loc 4 1020 0
	stfs 26,4(9)
.LVL473:
	.loc 4 1033 0
	fneg 5,5
	.loc 4 1022 0
	stfs 3,20(9)
.LVL474:
	.loc 4 1034 0
	fneg 6,6
	.loc 4 1031 0
	stfs 30,40(9)
.LVL475:
	.loc 4 1032 0
	stfs 31,44(9)
.LVL476:
	.loc 4 1033 0
	stfs 5,56(9)
.LVL477:
	.loc 4 1034 0
	stfs 6,60(9)
.LVL478:
.L187:
.LBE11197:
	.loc 4 1038 0
	lfd 23,16(1)
	lfd 24,24(1)
	lfd 25,32(1)
	lfd 26,40(1)
	lfd 27,48(1)
	lfd 28,56(1)
	lfd 29,64(1)
	lfd 30,72(1)
	lfd 31,80(1)
	addi 1,1,88
.LCFI67:
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
	blr
	.cfi_endproc
.LFE2558:
	.size	_ZN6idMat415InverseFastSelfEv, .-_ZN6idMat415InverseFastSelfEv
	.align 2
	.globl _ZNK6idMat48ToStringEi
	.type	_ZNK6idMat48ToStringEi, @function
_ZNK6idMat48ToStringEi:
.LFB2559:
	.loc 4 1045 0
	.cfi_startproc
.LVL479:
	mflr 0
	stwu 1,-8(1)
.LCFI68:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 5,4
	.loc 4 1046 0
	li 4,16
.LVL480:
	.loc 4 1045 0
	stw 0,12(1)
	.loc 4 1046 0
	.cfi_offset 65, 4
	bl _ZN5idStr18FloatArrayToStringEPKfii
.LVL481:
	.loc 4 1047 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI69:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2559:
	.size	_ZNK6idMat48ToStringEi, .-_ZNK6idMat48ToStringEi
	.align 2
	.globl _ZNK6idMat59TransposeEv
	.type	_ZNK6idMat59TransposeEv, @function
_ZNK6idMat59TransposeEv:
.LFB2560:
	.loc 4 1064 0
	.cfi_startproc
.LVL482:
	.loc 4 1068 0
	li 6,0
.LVL483:
.L192:
	li 0,5
	mulli 8,6,20
	mtctr 0
.LBB11198:
	.loc 4 1064 0 discriminator 1
	slwi 7,6,2
.LBE11198:
	li 9,0
.LVL484:
.L193:
.LBB11201:
	.loc 4 1070 0
	mulli 10,9,20
	slwi 11,9,2
	add 11,3,11
	.loc 4 1069 0
	addi 9,9,1
.LVL485:
.LBB11199:
.LBB11200:
	.loc 2 1116 0
	add 10,4,10
.LBE11200:
.LBE11199:
	.loc 4 1070 0
	lwzx 0,10,7
	stwx 0,11,8
	.loc 4 1069 0
	bdnz .L193
.LVL486:
	.loc 4 1068 0
	cmpwi 7,6,4
	addi 6,6,1
.LVL487:
	bne+ 7,.L192
	blr
.LBE11201:
	.cfi_endproc
.LFE2560:
	.size	_ZNK6idMat59TransposeEv, .-_ZNK6idMat59TransposeEv
	.align 2
	.globl _ZN6idMat513TransposeSelfEv
	.type	_ZN6idMat513TransposeSelfEv, @function
_ZN6idMat513TransposeSelfEv:
.LFB2561:
	.loc 4 1081 0
	.cfi_startproc
.LVL488:
	.loc 4 1085 0
	li 7,0
.LVL489:
	.loc 4 1081 0
	li 8,0
.LBB11202:
	.loc 4 1086 0
	cmpwi 7,7,4
	addi 5,7,1
	beqlr- 7
.LVL490:
.L203:
	mulli 7,7,20
	.loc 4 1087 0
	subfic 0,5,5
	mtctr 0
	.loc 4 1081 0
	slwi 9,5,2
.LBE11202:
	mr 11,5
.LBB11203:
	.loc 4 1087 0
	add 7,3,7
.LVL491:
.L199:
	.loc 4 1088 0 discriminator 2
	mulli 10,11,20
	.loc 4 1087 0 discriminator 2
	lwzx 0,7,9
.LVL492:
	.loc 4 1086 0 discriminator 2
	addi 11,11,1
.LVL493:
	.loc 4 1088 0 discriminator 2
	add 10,3,10
	lwzx 6,10,8
	stwx 6,7,9
.LVL494:
	.loc 4 1086 0 discriminator 2
	addi 9,9,4
.LVL495:
	.loc 4 1089 0 discriminator 2
	stwx 0,10,8
	.loc 4 1086 0 discriminator 2
	bdnz .L199
.LVL496:
	.loc 4 1086 0 is_stmt 0
	mr 7,5
.LVL497:
	addi 8,8,4
	cmpwi 7,7,4
	addi 5,7,1
.LVL498:
	bne+ 7,.L203
	blr
.LBE11203:
	.cfi_endproc
.LFE2561:
	.size	_ZN6idMat513TransposeSelfEv, .-_ZN6idMat513TransposeSelfEv
	.align 2
	.globl _ZNK6idMat511DeterminantEv
	.type	_ZNK6idMat511DeterminantEv, @function
_ZNK6idMat511DeterminantEv:
.LFB2562:
	.loc 4 1100 0 is_stmt 1
	.cfi_startproc
.LVL499:
	stwu 1,-128(1)
.LCFI70:
	.cfi_def_cfa_offset 128
.LBB11204:
.LBB11205:
.LBB11206:
	.loc 2 1116 0
	lfs 0,76(3)
.LBE11206:
.LBE11205:
.LBB11213:
.LBB11214:
	lfs 3,80(3)
.LBE11214:
.LBE11213:
.LBE11204:
	.loc 4 1100 0
	stfd 26,80(1)
.LBB11291:
	.loc 4 1106 0
	fmuls 26,3,0
	.cfi_offset 58, -48
.LBB11216:
.LBB11217:
	.loc 2 1116 0
	lfs 8,84(3)
.LBE11217:
.LBE11216:
.LBB11218:
.LBB11219:
	lfs 9,88(3)
.LBE11219:
.LBE11218:
.LBB11220:
.LBB11221:
	lfs 6,92(3)
.LBE11221:
.LBE11220:
.LBB11222:
.LBB11223:
	lfs 13,96(3)
.LBE11223:
.LBE11222:
.LBB11224:
.LBB11225:
	lfs 4,60(3)
.LVL500:
.LBE11225:
.LBE11224:
	.loc 4 1112 0
	fmuls 7,6,0
.LBE11291:
	.loc 4 1100 0
	stfd 28,96(1)
.LBB11292:
	.loc 4 1111 0
	fmuls 28,9,0
	.cfi_offset 60, -32
.LBB11226:
.LBB11207:
	.loc 4 1106 0
	fmsubs 26,4,13,26
.LBE11207:
.LBE11226:
.LBE11292:
	.loc 4 1100 0
	stfd 30,112(1)
.LBB11293:
	.loc 4 1109 0
	fmuls 30,8,0
	.cfi_offset 62, -16
.LBB11227:
.LBB11228:
	.loc 2 1116 0
	lfs 10,52(3)
.LBE11228:
.LBE11227:
.LBB11231:
.LBB11232:
	lfs 2,64(3)
.LVL501:
.LBE11232:
.LBE11231:
.LBB11233:
.LBB11234:
	lfs 0,72(3)
.LBE11234:
.LBE11233:
.LBB11236:
.LBB11237:
	lfs 1,68(3)
.LBE11237:
.LBE11236:
.LBB11239:
.LBB11208:
	.loc 4 1109 0
	fmsubs 30,2,13,30
	.loc 4 1112 0
	fmsubs 7,0,13,7
.LBE11208:
.LBE11239:
.LBE11293:
	.loc 4 1100 0
	stfd 20,32(1)
.LBB11294:
.LBB11240:
.LBB11209:
	.loc 4 1111 0
	fmsubs 28,1,13,28
.LBE11209:
.LBE11240:
.LBE11294:
	.loc 4 1100 0
	stfd 25,72(1)
.LBB11295:
	.loc 4 1120 0
	fmuls 20,26,10
	.cfi_offset 57, -56
	.cfi_offset 52, -96
.LBB11241:
.LBB11242:
	.loc 2 1116 0
	lfs 13,40(3)
.LBE11242:
.LBE11241:
	.loc 4 1105 0
	fmuls 25,3,0
.LBE11295:
	.loc 4 1100 0
	stfd 21,40(1)
	stfd 23,56(1)
.LBB11296:
	.loc 4 1124 0
	fmuls 21,28,10
	.cfi_offset 55, -72
	.cfi_offset 53, -88
.LBE11296:
	.loc 4 1100 0
	stfd 27,88(1)
.LBB11297:
.LBB11243:
.LBB11244:
	.loc 4 1120 0
	fmsubs 20,7,13,20
.LBE11244:
.LBE11243:
.LBB11256:
.LBB11235:
	.loc 4 1105 0
	fmsubs 25,4,6,25
.LBE11235:
.LBE11256:
.LBE11297:
	.loc 4 1100 0
	stfd 29,104(1)
.LBB11298:
	.loc 4 1110 0
	fmuls 27,9,0
	.cfi_offset 61, -24
	.cfi_offset 59, -40
.LBB11257:
.LBB11258:
	.loc 2 1116 0
	lfs 12,44(3)
.LBE11258:
.LBE11257:
	.loc 4 1108 0
	fmuls 29,8,0
.LBB11259:
.LBB11245:
	.loc 2 1116 0
	lfs 11,56(3)
.LBE11245:
.LBE11259:
	.loc 4 1123 0
	fmuls 23,30,10
.LBB11260:
.LBB11261:
	.loc 2 1116 0
	lfs 0,48(3)
.LBE11261:
.LBE11260:
.LBB11263:
.LBB11210:
	.loc 4 1110 0
	fmsubs 27,1,6,27
.LBE11210:
.LBE11263:
.LBE11298:
	.loc 4 1100 0
	stfd 22,48(1)
.LBB11299:
.LBB11264:
.LBB11211:
	.loc 4 1108 0
	fmsubs 29,2,6,29
.LBE11211:
.LBE11264:
.LBE11299:
	.loc 4 1100 0
	stfd 24,64(1)
	stfd 31,120(1)
.LBB11300:
.LBB11265:
.LBB11246:
	.loc 4 1120 0
	fmadds 20,25,11,20
.LBE11246:
.LBE11265:
	.loc 4 1104 0
	fmuls 31,3,1
	.cfi_offset 63, -8
	.cfi_offset 56, -64
	.cfi_offset 54, -80
.LBE11300:
	.loc 4 1100 0
	stfd 17,8(1)
.LBB11301:
.LBB11266:
.LBB11247:
	.loc 4 1123 0
	fmsubs 23,7,12,23
.LBE11247:
.LBE11266:
.LBE11301:
	.loc 4 1100 0
	stfd 18,16(1)
.LBB11302:
	.loc 4 1118 0
	fmuls 24,25,0
.LBE11302:
	.loc 4 1100 0
	stfd 19,24(1)
.LBB11303:
	.loc 4 1119 0
	fmuls 22,26,0
.LBB11267:
.LBB11268:
	.loc 2 1116 0
	lfs 6,20(3)
.LBE11268:
.LBE11267:
.LBB11269:
.LBB11248:
	.loc 4 1124 0
	fmsubs 21,7,0,21
.LBE11248:
.LBE11269:
.LBB11270:
.LBB11271:
	.loc 2 1116 0
	lfs 7,28(3)
.LBE11271:
.LBE11270:
.LBB11272:
.LBB11238:
	.loc 4 1104 0
	fmsubs 31,4,9,31
.LBE11238:
.LBE11272:
.LBB11273:
.LBB11274:
	.loc 2 1116 0
	lfs 5,24(3)
.LBE11274:
.LBE11273:
.LBB11275:
.LBB11249:
	.loc 4 1123 0
	fmadds 23,29,11,23
	.loc 4 1124 0
	fmadds 21,27,11,21
	.loc 4 1118 0
	fmsubs 24,27,13,24
	.loc 4 1119 0
	fmsubs 22,28,13,22
.LBE11249:
.LBE11275:
	.loc 4 1121 0
	fmuls 17,29,0
	.cfi_offset 51, -104
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.loc 4 1122 0
	fmuls 18,30,0
	.loc 4 1130 0
	fmuls 19,20,7
	.loc 4 1107 0
	fmuls 1,8,1
.LBB11276:
.LBB11250:
	.loc 4 1118 0
	fmadds 24,31,10,24
	.loc 4 1119 0
	fmadds 22,31,11,22
.LBE11250:
.LBE11276:
.LBB11277:
.LBB11212:
	.loc 4 1107 0
	fmsubs 1,2,9,1
.LBE11212:
.LBE11277:
.LBB11278:
.LBB11279:
	.loc 2 1116 0
	lfs 9,32(3)
.LBE11279:
.LBE11278:
	.loc 4 1103 0
	fmuls 3,2,3
	.loc 4 1116 0
	fmuls 25,25,12
	.loc 4 1130 0
	fmsubs 2,21,6,19
	.loc 4 1117 0
	fmuls 26,26,12
.LBB11280:
.LBB11251:
	.loc 4 1121 0
	fmsubs 27,27,12,17
.LBE11251:
.LBE11280:
.LBE11303:
	.loc 4 1135 0
	lfd 17,8(1)
.LBB11304:
.LBB11281:
.LBB11252:
	.loc 4 1122 0
	fmsubs 28,28,12,18
.LBE11252:
.LBE11281:
	.loc 4 1131 0
	fmuls 18,23,7
.LBB11282:
.LBB11215:
	.loc 4 1103 0
	fmsubs 4,4,8,3
.LVL502:
.LBE11215:
.LBE11282:
.LBB11283:
.LBB11284:
	.loc 2 1116 0
	lfs 8,36(3)
.LBE11284:
.LBE11283:
.LBB11285:
.LBB11253:
	.loc 4 1121 0
	fmadds 27,1,10,27
	.loc 4 1122 0
	fmadds 28,1,11,28
.LBE11253:
.LBE11285:
.LBB11286:
.LBB11229:
	.loc 4 1116 0
	fmsubs 29,29,13,25
.LVL503:
.LBE11229:
.LBE11286:
.LBB11287:
.LBB11254:
	.loc 4 1117 0
	fmsubs 30,30,13,26
.LVL504:
.LBE11254:
.LBE11287:
	.loc 4 1134 0
	lfs 26,0(3)
	.loc 4 1131 0
	fmsubs 21,21,5,18
.LBE11304:
	.loc 4 1135 0
	lfd 18,16(1)
.LBB11305:
	.loc 4 1129 0
	fmuls 20,20,5
	.loc 4 1100 0
	fneg 19,24
	.loc 4 1130 0
	fmadds 2,22,9,2
.LBB11288:
.LBB11230:
	.loc 4 1116 0
	fmadds 10,4,10,29
.LBE11230:
.LBE11288:
.LBB11289:
.LBB11255:
	.loc 4 1117 0
	fmadds 11,4,11,30
.LBE11255:
.LBE11289:
	.loc 4 1134 0
	lfs 30,4(3)
	.loc 4 1130 0
	fmadds 29,19,8,2
.LBE11305:
	.loc 4 1135 0
	lfd 19,24(1)
.LBB11306:
	.loc 4 1115 0
	fmuls 12,31,12
.LBE11306:
	.loc 4 1135 0
	lfd 31,120(1)
.LVL505:
.LBB11307:
	.loc 4 1128 0
	fmuls 22,22,5
	.loc 4 1129 0
	fmsubs 23,23,6,20
.LBE11307:
	.loc 4 1135 0
	lfd 20,32(1)
.LBB11308:
	.loc 4 1100 0
	fneg 2,27
	.loc 4 1131 0
	fmadds 3,28,9,21
.LBB11290:
.LBB11262:
	.loc 4 1115 0
	fmsubs 13,1,13,12
.LVL506:
.LBE11262:
.LBE11290:
	.loc 4 1134 0
	lfs 12,12(3)
	.loc 4 1128 0
	fmsubs 28,28,6,22
.LVL507:
.LBE11308:
	.loc 4 1135 0
	lfd 22,48(1)
.LBB11309:
	.loc 4 1100 0
	fneg 25,10
	.loc 4 1134 0
	fmuls 29,29,30
.LBE11309:
	.loc 4 1135 0
	lfd 30,112(1)
.LBB11310:
	.loc 4 1127 0
	fmuls 5,24,5
.LBE11310:
	.loc 4 1135 0
	lfd 24,64(1)
.LVL508:
.LBB11311:
	.loc 4 1129 0
	fmadds 23,11,9,23
	.loc 4 1131 0
	fmadds 21,2,8,3
	.loc 4 1100 0
	fnmadds 4,4,0,13
.LVL509:
	.loc 4 1134 0
	lfs 13,8(3)
	.loc 4 1128 0
	fmadds 11,11,7,28
.LVL510:
.LBE11311:
	.loc 4 1135 0
	lfd 28,96(1)
.LBB11312:
	.loc 4 1134 0
	fmsubs 21,21,26,29
.LBE11312:
	.loc 4 1135 0
	lfd 26,80(1)
.LBB11313:
	.loc 4 1129 0
	fmadds 23,25,8,23
.LBE11313:
	.loc 4 1135 0
	lfd 29,104(1)
.LBB11314:
	.loc 4 1127 0
	fmsubs 6,27,6,5
.LBE11314:
	.loc 4 1135 0
	lfd 25,72(1)
.LBB11315:
	.loc 4 1100 0
	fnmadds 8,4,8,11
	.loc 4 1134 0
	lfs 11,16(3)
	fmadds 23,23,13,21
.LBE11315:
	.loc 4 1135 0
	lfd 27,88(1)
.LVL511:
.LBB11316:
	.loc 4 1127 0
	fmadds 10,10,7,6
.LVL512:
.LBE11316:
	.loc 4 1135 0
	lfd 21,40(1)
.LBB11317:
	.loc 4 1134 0
	fmadds 8,8,12,23
.LBE11317:
	.loc 4 1135 0
	lfd 23,56(1)
.LBB11318:
	.loc 4 1127 0
	fmadds 4,4,9,10
.LVL513:
.LBE11318:
	.loc 4 1135 0
	addi 1,1,128
.LCFI71:
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
	fmadds 1,4,11,8
.LVL514:
	blr
	.cfi_endproc
.LFE2562:
	.size	_ZNK6idMat511DeterminantEv, .-_ZNK6idMat511DeterminantEv
	.align 2
	.globl _ZN6idMat511InverseSelfEv
	.type	_ZN6idMat511InverseSelfEv, @function
_ZN6idMat511InverseSelfEv:
.LFB2563:
	.loc 4 1142 0
	.cfi_startproc
.LVL515:
	stwu 1,-400(1)
.LCFI72:
	.cfi_def_cfa_offset 400
	mr 9,3
.LVL516:
	stfd 14,256(1)
	stfd 15,264(1)
	stfd 16,272(1)
	stfd 17,280(1)
	stfd 18,288(1)
	stfd 19,296(1)
	stfd 20,304(1)
	stfd 31,392(1)
	stfd 21,312(1)
	stfd 22,320(1)
	stfd 23,328(1)
	stfd 24,336(1)
	stfd 25,344(1)
	stfd 26,352(1)
	stfd 27,360(1)
	stfd 28,368(1)
	stfd 29,376(1)
	stfd 30,384(1)
.LBB11319:
	.loc 4 1148 0
	lfs 28,80(3)
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
	.cfi_offset 63, -8
	.cfi_offset 52, -96
	.cfi_offset 51, -104
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	.cfi_offset 47, -136
	.cfi_offset 46, -144
	.loc 4 1151 0
	lfs 22,76(3)
	.loc 4 1148 0
	lfs 27,60(3)
.LVL517:
	.loc 4 1151 0
	fmuls 15,28,22
	.loc 4 1148 0
	lfs 30,84(3)
.LVL518:
	.loc 4 1149 0
	lfs 26,88(3)
	.loc 4 1150 0
	lfs 23,92(3)
	.loc 4 1154 0
	fmuls 12,30,22
	.loc 4 1151 0
	lfs 24,96(3)
	.loc 4 1156 0
	fmuls 16,26,22
	.loc 4 1157 0
	fmuls 17,23,22
	.loc 4 1161 0
	lfs 5,52(3)
	.loc 4 1151 0
	fmsubs 15,27,24,15
	.loc 4 1148 0
	lfs 29,64(3)
.LVL519:
	.loc 4 1149 0
	lfs 25,68(3)
	.loc 4 1150 0
	lfs 21,72(3)
	.loc 4 1154 0
	fmsubs 12,29,24,12
	.loc 4 1156 0
	fmsubs 16,25,24,16
	.loc 4 1160 0
	lfs 8,40(3)
	.loc 4 1157 0
	fmsubs 17,21,24,17
	.loc 4 1160 0
	lfs 7,44(3)
	.loc 4 1150 0
	fmuls 14,28,21
	.loc 4 1154 0
	stfs 12,24(1)
	.loc 4 1165 0
	fmuls 0,15,5
	.loc 4 1160 0
	lfs 6,48(3)
	.loc 4 1168 0
	fmuls 3,12,5
	.loc 4 1162 0
	lfs 4,56(3)
	.loc 4 1150 0
	fmsubs 14,27,23,14
	.loc 4 1153 0
	fmuls 20,30,21
	.loc 4 1155 0
	fmuls 18,26,21
	.loc 4 1165 0
	fmsubs 0,17,8,0
	.loc 4 1169 0
	fmuls 12,16,5
	.loc 4 1153 0
	fmsubs 20,29,23,20
	.loc 4 1155 0
	fmsubs 18,25,23,18
	.loc 4 1165 0
	fmadds 0,14,4,0
	.loc 4 1168 0
	fmsubs 3,17,7,3
	.loc 4 1153 0
	stfs 20,252(1)
	.loc 4 1169 0
	fmsubs 12,17,6,12
	.loc 4 1167 0
	lfs 2,24(1)
	.loc 4 1149 0
	fmuls 19,28,25
	.loc 4 1165 0
	stfs 0,84(1)
	.loc 4 1163 0
	fmuls 9,14,6
	.loc 4 1172 0
	lfs 0,28(3)
	.loc 4 1164 0
	fmuls 11,15,6
	.loc 4 1175 0
	lfs 13,84(1)
	.loc 4 1152 0
	fmuls 10,30,25
	.loc 4 1168 0
	fmadds 3,20,4,3
	.loc 4 1169 0
	fmadds 12,18,4,12
	.loc 4 1149 0
	fmsubs 19,27,26,19
	.loc 4 1152 0
	fmsubs 10,29,26,10
	.loc 4 1168 0
	stfs 3,88(1)
	.loc 4 1163 0
	fmsubs 9,18,8,9
	.loc 4 1169 0
	stfs 12,156(1)
	.loc 4 1164 0
	fmsubs 11,16,8,11
	.loc 4 1149 0
	stfs 19,248(1)
	.loc 4 1166 0
	fmuls 12,20,6
	.loc 4 1152 0
	stfs 10,28(1)
	.loc 4 1167 0
	fmuls 3,2,6
	.loc 4 1176 0
	lfs 10,88(1)
	.loc 4 1175 0
	fmuls 1,13,0
	.loc 4 1172 0
	lfs 13,20(3)
	.loc 4 1163 0
	fmadds 9,19,5,9
	.loc 4 1164 0
	fmadds 11,19,4,11
	.loc 4 1175 0
	lfs 19,156(1)
	.loc 4 1166 0
	fmsubs 2,18,7,12
	.loc 4 1167 0
	fmsubs 12,16,7,3
	.loc 4 1163 0
	stfs 9,100(1)
	.loc 4 1175 0
	fmsubs 1,19,13,1
	.loc 4 1166 0
	lfs 19,28(1)
	.loc 4 1148 0
	fmuls 9,29,28
	.loc 4 1164 0
	stfs 11,148(1)
	.loc 4 1167 0
	fmadds 12,19,4,12
	.loc 4 1172 0
	lfs 11,32(3)
	.loc 4 1162 0
	fmuls 20,15,7
	.loc 4 1148 0
	fmsubs 9,27,30,9
	.loc 4 1166 0
	fmadds 2,19,5,2
	.loc 4 1167 0
	stfs 12,152(1)
	.loc 4 1162 0
	lfs 12,24(1)
	.loc 4 1161 0
	fmuls 31,14,7
	.loc 4 1148 0
	stfs 9,60(1)
.LVL520:
	.loc 4 1176 0
	fmuls 3,10,0
	.loc 4 1162 0
	fmsubs 9,12,8,20
.LVL521:
	.loc 4 1142 0
	lfs 20,100(1)
	.loc 4 1172 0
	lfs 10,24(3)
	.loc 4 1174 0
	lfs 19,84(1)
	.loc 4 1142 0
	fneg 20,20
	.loc 4 1166 0
	stfs 2,184(1)
	.loc 4 1161 0
	lfs 2,252(1)
	.loc 4 1142 0
	stfs 20,204(1)
	.loc 4 1161 0
	fmsubs 31,2,8,31
	.loc 4 1175 0
	lfs 12,148(1)
	.loc 4 1174 0
	fmuls 2,19,10
	.loc 4 1176 0
	lfs 19,156(1)
	.loc 4 1175 0
	fmadds 1,12,11,1
	.loc 4 1173 0
	lfs 12,36(3)
	.loc 4 1176 0
	fmsubs 20,19,10,3
	.loc 4 1161 0
	lfs 3,60(1)
	.loc 4 1162 0
	fmadds 9,4,3,9
	.loc 4 1161 0
	fmadds 31,5,3,31
	.loc 4 1173 0
	lfs 3,148(1)
	.loc 4 1162 0
	stfs 9,144(1)
	.loc 4 1173 0
	fmuls 19,3,10
	.loc 4 1160 0
	lfs 9,248(1)
	.loc 4 1161 0
	stfs 31,180(1)
	.loc 4 1160 0
	fmuls 31,7,9
	.loc 4 1174 0
	lfs 9,88(1)
	fmsubs 2,9,13,2
	stfs 2,8(1)
	.loc 4 1142 0
	lfs 3,184(1)
	.loc 4 1175 0
	lfs 2,204(1)
	.loc 4 1142 0
	fneg 3,3
	.loc 4 1175 0
	fmadds 1,2,12,1
	.loc 4 1176 0
	lfs 2,152(1)
	.loc 4 1142 0
	stfs 3,208(1)
	.loc 4 1176 0
	fmadds 9,2,11,20
	.loc 4 1160 0
	lfs 3,28(1)
	.loc 4 1172 0
	lfs 2,100(1)
	.loc 4 1160 0
	fmsubs 31,8,3,31
	.loc 4 1173 0
	lfs 3,152(1)
	.loc 4 1172 0
	fmuls 20,10,2
	.loc 4 1174 0
	lfs 2,144(1)
	.loc 4 1173 0
	fmsubs 19,3,13,19
	.loc 4 1174 0
	lfs 3,8(1)
	.loc 4 1175 0
	stfs 1,192(1)
	.loc 4 1174 0
	fmadds 2,2,11,3
	.loc 4 1160 0
	lfs 3,60(1)
	.loc 4 1173 0
	stfs 19,48(1)
	.loc 4 1142 0
	lfs 19,180(1)
	.loc 4 1160 0
	fmadds 31,6,3,31
	.loc 4 1174 0
	stfs 2,8(1)
	.loc 4 1142 0
	fneg 3,12
	fneg 19,19
	.loc 4 1179 0
	lfs 1,4(3)
	.loc 4 1160 0
	stfs 31,176(1)
.LVL522:
	.loc 4 1172 0
	lfs 31,184(1)
.LVL523:
	.loc 4 1142 0
	stfs 19,200(1)
	.loc 4 1176 0
	lfs 19,208(1)
	.loc 4 1179 0
	lfs 2,192(1)
	.loc 4 1176 0
	fmadds 9,19,12,9
	.loc 4 1142 0
	stfs 3,104(1)
	.loc 4 1172 0
	fmsubs 19,13,31,20
	.loc 4 1173 0
	lfs 31,48(1)
	lfs 20,144(1)
	.loc 4 1176 0
	stfs 9,196(1)
	.loc 4 1179 0
	fmuls 9,1,2
	.loc 4 1173 0
	fmadds 20,20,0,31
	.loc 4 1179 0
	lfs 2,0(3)
	lfs 31,196(1)
	.loc 4 1174 0
	lfs 3,200(1)
	.loc 4 1179 0
	fmsubs 9,2,31,9
	.loc 4 1173 0
	stfs 20,48(1)
	.loc 4 1174 0
	lfs 20,8(1)
	.loc 4 1179 0
	lfs 31,12(3)
	.loc 4 1174 0
	fmadds 3,3,12,20
	.loc 4 1179 0
	stfs 9,8(1)
	.loc 4 1142 0
	fneg 9,11
	.loc 4 1174 0
	stfs 3,188(1)
	.loc 4 1179 0
	lfs 3,8(3)
	.loc 4 1142 0
	stfs 9,16(1)
	.loc 4 1172 0
	lfs 20,180(1)
	.loc 4 1173 0
	lfs 9,104(1)
	.loc 4 1172 0
	fmadds 19,0,20,19
	.loc 4 1173 0
	lfs 20,48(1)
	.loc 4 1172 0
	stfs 19,32(1)
	.loc 4 1173 0
	lfs 19,176(1)
	fmadds 9,9,19,20
	.loc 4 1179 0
	lfs 20,8(1)
	lfs 19,188(1)
	.loc 4 1173 0
	stfs 9,48(1)
	.loc 4 1179 0
	fmadds 19,3,19,20
	.loc 4 1142 0
	fneg 9,31
	.loc 4 1172 0
	lfs 20,32(1)
	.loc 4 1179 0
	stfs 19,8(1)
	.loc 4 1142 0
	stfs 9,20(1)
	.loc 4 1172 0
	lfs 19,176(1)
	lfs 9,16(1)
	fmadds 9,9,19,20
	.loc 4 1179 0
	lfs 20,48(1)
	lfs 19,20(1)
	.loc 4 1172 0
	stfs 9,104(1)
.LVL524:
	.loc 4 1179 0
	lfs 9,16(3)
.LVL525:
	.loc 4 1182 0
	li 3,0
.LVL526:
	.loc 4 1179 0
	stfs 9,16(1)
	lfs 9,8(1)
	fmadds 19,19,20,9
	lfs 9,104(1)
	lfs 20,16(1)
	fmadds 19,20,9,19
	stfs 19,8(1)
.LVL527:
.LBB11320:
.LBB11321:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE11321:
.LBE11320:
	.loc 4 1181 0
	lis 11,.LC2@ha
	stw 0,244(1)
	lfs 9,244(1)
	fmr 19,9
.LVL528:
	lfd 9,.LC2@l(11)
	fcmpu 7,19,9
	blt- 7,.L206
	.loc 4 1190 0
	fmuls 20,27,5
	.loc 4 1179 0
	lfs 19,8(1)
	.loc 4 1185 0
	lis 11,.LC1@ha
	.loc 4 1293 0
	li 3,1
	.loc 4 1185 0
	lfs 9,.LC1@l(11)
	.loc 4 1190 0
	stfs 20,32(1)
	.loc 4 1194 0
	fmuls 20,29,4
	.loc 4 1185 0
	fdiv 9,9,19
.LVL529:
	.loc 4 1194 0
	stfs 20,92(1)
	.loc 4 1200 0
	fmuls 20,28,5
	.loc 4 1191 0
	fmuls 19,27,4
	.loc 4 1200 0
	stfs 20,40(1)
	.loc 4 1201 0
	fmuls 20,28,4
	.loc 4 1191 0
	fmsubs 19,22,8,19
	.loc 4 1201 0
	stfs 20,64(1)
	.loc 4 1204 0
	fmuls 20,30,4
	stfs 20,56(1)
	.loc 4 1190 0
	lfs 20,32(1)
	.loc 4 1191 0
	stfs 19,32(1)
	.loc 4 1190 0
	fmsubs 20,21,8,20
	.loc 4 1194 0
	lfs 19,92(1)
	fmsubs 19,22,7,19
	.loc 4 1190 0
	stfs 20,8(1)
	.loc 4 1200 0
	lfs 20,40(1)
	.loc 4 1194 0
	stfs 19,92(1)
	.loc 4 1200 0
	fmsubs 20,23,8,20
	.loc 4 1201 0
	lfs 19,64(1)
	fmsubs 19,24,8,19
	.loc 4 1200 0
	stfs 20,108(1)
	.loc 4 1204 0
	lfs 20,56(1)
	.loc 4 1201 0
	stfs 19,64(1)
	.loc 4 1193 0
	fmuls 19,29,5
	.loc 4 1204 0
	fmsubs 20,24,7,20
	.loc 4 1193 0
	fmsubs 19,21,7,19
	.loc 4 1204 0
	stfs 20,160(1)
	.loc 4 1195 0
	fmuls 20,25,5
	.loc 4 1193 0
	stfs 19,52(1)
	.loc 4 1195 0
	stfs 20,40(1)
	.loc 4 1196 0
	fmuls 20,25,4
	stfs 20,56(1)
	.loc 4 1197 0
	fmuls 20,21,4
	.loc 4 1196 0
	lfs 19,56(1)
	.loc 4 1197 0
	stfs 20,68(1)
	.loc 4 1203 0
	fmuls 20,30,5
	stfs 20,112(1)
	.loc 4 1205 0
	fmuls 20,26,5
	stfs 20,116(1)
	.loc 4 1206 0
	fmuls 20,26,4
	stfs 20,44(1)
	.loc 4 1207 0
	fmuls 20,23,4
	.loc 4 1195 0
	lfs 4,40(1)
	fmsubs 21,21,6,4
	.loc 4 1197 0
	lfs 4,68(1)
	.loc 4 1195 0
	stfs 21,40(1)
	.loc 4 1196 0
	fmsubs 21,22,6,19
	.loc 4 1203 0
	lfs 19,112(1)
	.loc 4 1197 0
	fmsubs 22,22,5,4
	.loc 4 1205 0
	lfs 4,116(1)
	.loc 4 1203 0
	fmsubs 19,23,7,19
	.loc 4 1205 0
	fmsubs 23,23,6,4
	.loc 4 1203 0
	stfs 19,56(1)
	.loc 4 1206 0
	lfs 19,44(1)
	.loc 4 1205 0
	stfs 23,68(1)
	.loc 4 1199 0
	fmuls 23,28,6
	.loc 4 1206 0
	fmsubs 4,24,6,19
	.loc 4 1207 0
	fmsubs 24,24,5,20
	.loc 4 1213 0
	lfs 20,8(1)
	.loc 4 1189 0
	fmuls 5,27,6
	.loc 4 1213 0
	fmuls 20,0,20
	.loc 4 1199 0
	fmsubs 23,26,8,23
	.loc 4 1189 0
	fmsubs 5,25,8,5
	.loc 4 1213 0
	stfs 20,44(1)
	.loc 4 1214 0
	lfs 19,32(1)
	.loc 4 1215 0
	lfs 20,32(1)
	.loc 4 1214 0
	fmuls 19,0,19
	.loc 4 1215 0
	fmuls 20,11,20
	.loc 4 1214 0
	stfs 19,72(1)
	.loc 4 1218 0
	lfs 19,92(1)
	.loc 4 1215 0
	stfs 20,120(1)
	.loc 4 1218 0
	fmuls 19,11,19
	.loc 4 1223 0
	lfs 20,108(1)
	fmuls 20,0,20
	.loc 4 1218 0
	stfs 19,124(1)
	.loc 4 1224 0
	lfs 19,64(1)
	.loc 4 1223 0
	stfs 20,76(1)
	.loc 4 1224 0
	fmuls 19,0,19
	.loc 4 1225 0
	lfs 20,64(1)
	fmuls 20,11,20
	.loc 4 1224 0
	stfs 19,128(1)
	.loc 4 1228 0
	lfs 19,160(1)
	.loc 4 1225 0
	stfs 20,132(1)
	.loc 4 1233 0
	fmuls 20,14,0
	.loc 4 1228 0
	fmuls 19,11,19
	.loc 4 1233 0
	stfs 20,80(1)
	.loc 4 1235 0
	fmuls 20,15,11
	.loc 4 1228 0
	stfs 19,136(1)
	.loc 4 1234 0
	fmuls 19,15,0
	.loc 4 1232 0
	fmuls 15,15,10
.LVL530:
	.loc 4 1235 0
	stfs 20,96(1)
	.loc 4 1234 0
	stfs 19,140(1)
	.loc 4 1238 0
	lfs 19,24(1)
	.loc 4 1213 0
	lfs 20,40(1)
	.loc 4 1238 0
	fmuls 19,19,11
	stfs 19,164(1)
	.loc 4 1192 0
	fmuls 19,29,6
	.loc 4 1202 0
	fmuls 6,30,6
	.loc 4 1192 0
	fmsubs 25,25,7,19
	.loc 4 1202 0
	stfs 6,116(1)
	.loc 4 1213 0
	lfs 6,44(1)
	fmsubs 20,13,20,6
	.loc 4 1215 0
	lfs 6,120(1)
	fmsubs 6,13,22,6
	.loc 4 1213 0
	stfs 20,44(1)
	.loc 4 1214 0
	lfs 20,72(1)
	.loc 4 1215 0
	stfs 6,120(1)
	.loc 4 1214 0
	fmsubs 20,13,21,20
	.loc 4 1217 0
	lfs 6,92(1)
	fmuls 6,0,6
	.loc 4 1214 0
	stfs 20,72(1)
	.loc 4 1216 0
	lfs 20,52(1)
	.loc 4 1217 0
	stfs 6,172(1)
	.loc 4 1219 0
	fmuls 6,11,21
	.loc 4 1216 0
	fmuls 20,0,20
	stfs 20,168(1)
	.loc 4 1218 0
	lfs 20,124(1)
	fmsubs 20,10,22,20
	stfs 20,124(1)
	.loc 4 1219 0
	stfs 6,216(1)
	.loc 4 1223 0
	lfs 6,76(1)
	lfs 20,68(1)
	.loc 4 1202 0
	lfs 19,116(1)
	.loc 4 1223 0
	fmsubs 20,13,20,6
	.loc 4 1202 0
	fmsubs 26,26,7,19
	.loc 4 1214 0
	lfs 19,72(1)
	.loc 4 1223 0
	stfs 20,76(1)
	.loc 4 1214 0
	fmadds 19,12,5,19
	.loc 4 1224 0
	lfs 20,128(1)
	fmsubs 6,13,4,20
	.loc 4 1225 0
	lfs 20,132(1)
	.loc 4 1214 0
	stfs 19,116(1)
	.loc 4 1225 0
	fmsubs 20,13,24,20
	.loc 4 1215 0
	lfs 19,120(1)
	.loc 4 1224 0
	fmadds 6,12,23,6
	.loc 4 1225 0
	stfs 20,128(1)
	.loc 4 1226 0
	lfs 20,56(1)
	fmuls 20,0,20
	stfs 20,220(1)
	.loc 4 1227 0
	lfs 20,160(1)
	fmuls 20,0,20
	stfs 20,224(1)
	.loc 4 1228 0
	lfs 20,136(1)
	fmsubs 20,10,24,20
	stfs 20,132(1)
	.loc 4 1229 0
	fmuls 20,11,4
	stfs 20,228(1)
	.loc 4 1233 0
	lfs 20,80(1)
	fmsubs 20,18,13,20
	stfs 20,136(1)
	.loc 4 1234 0
	lfs 20,140(1)
	fmsubs 20,16,13,20
	stfs 20,80(1)
	.loc 4 1235 0
	lfs 20,96(1)
	fmsubs 20,17,13,20
	stfs 20,140(1)
	.loc 4 1236 0
	lfs 20,252(1)
	fmuls 20,20,0
	stfs 20,232(1)
	.loc 4 1237 0
	lfs 20,24(1)
	fmuls 20,20,0
	stfs 20,236(1)
	.loc 4 1238 0
	lfs 20,164(1)
	fmsubs 20,17,10,20
	stfs 20,96(1)
	.loc 4 1239 0
	fmuls 20,16,11
	stfs 20,240(1)
	.loc 4 1213 0
	lfs 20,44(1)
	fmadds 20,11,5,20
	.loc 4 1210 0
	fmuls 5,10,5
	.loc 4 1213 0
	stfs 20,112(1)
	.loc 4 1215 0
	lfs 20,8(1)
	fmadds 20,12,20,19
	stfs 20,44(1)
	.loc 4 1218 0
	lfs 19,124(1)
	lfs 20,52(1)
	.loc 4 1224 0
	stfs 6,124(1)
	.loc 4 1218 0
	fmadds 20,12,20,19
	.loc 4 1225 0
	lfs 6,108(1)
	lfs 19,128(1)
	.loc 4 1218 0
	stfs 20,72(1)
	.loc 4 1225 0
	fmadds 6,12,6,19
	.loc 4 1223 0
	lfs 20,76(1)
	.loc 4 1233 0
	lfs 19,248(1)
	.loc 4 1223 0
	fmadds 20,11,23,20
	.loc 4 1225 0
	stfs 6,76(1)
	.loc 4 1228 0
	lfs 6,132(1)
	.loc 4 1223 0
	stfs 20,120(1)
	.loc 4 1228 0
	lfs 20,56(1)
	fmadds 20,12,20,6
	.loc 4 1234 0
	lfs 6,248(1)
	.loc 4 1228 0
	stfs 20,128(1)
	.loc 4 1233 0
	lfs 20,136(1)
	fmadds 19,19,11,20
	.loc 4 1235 0
	lfs 20,140(1)
	fmadds 20,14,12,20
	.loc 4 1233 0
	stfs 19,132(1)
	.loc 4 1231 0
	fmuls 14,14,10
.LVL531:
	.loc 4 1234 0
	lfs 19,80(1)
	.loc 4 1235 0
	stfs 20,80(1)
	.loc 4 1234 0
	fmadds 6,6,12,19
	.loc 4 1211 0
	lfs 20,8(1)
	.loc 4 1238 0
	lfs 19,96(1)
	.loc 4 1211 0
	fmuls 20,10,20
	.loc 4 1234 0
	stfs 6,136(1)
	.loc 4 1238 0
	lfs 6,252(1)
	.loc 4 1211 0
	stfs 20,164(1)
	.loc 4 1238 0
	fmadds 6,6,12,19
	.loc 4 1217 0
	lfs 20,172(1)
	.loc 4 1188 0
	fmuls 19,27,7
	.loc 4 1198 0
	fmuls 27,28,7
	.loc 4 1212 0
	lfs 28,32(1)
	.loc 4 1216 0
	lfs 7,168(1)
	.loc 4 1217 0
	fmsubs 21,10,21,20
	.loc 4 1212 0
	fmuls 28,10,28
	.loc 4 1238 0
	stfs 6,140(1)
	.loc 4 1216 0
	lfs 6,40(1)
	.loc 4 1188 0
	fmsubs 29,29,8,19
	.loc 4 1222 0
	lfs 20,64(1)
	.loc 4 1217 0
	fmadds 21,12,25,21
	.loc 4 1212 0
	stfs 28,212(1)
	.loc 4 1216 0
	fmsubs 28,10,6,7
	.loc 4 1221 0
	lfs 7,108(1)
	.loc 4 1222 0
	fmuls 20,10,20
	.loc 4 1219 0
	lfs 6,216(1)
	.loc 4 1198 0
	fmsubs 8,30,8,27
	.loc 4 1221 0
	fmuls 7,10,7
	.loc 4 1219 0
	fmsubs 22,0,22,6
	.loc 4 1216 0
	fmadds 28,11,25,28
	.loc 4 1221 0
	stfs 7,168(1)
	.loc 4 1222 0
	stfs 20,172(1)
	.loc 4 1226 0
	lfs 7,68(1)
	lfs 20,220(1)
	.loc 4 1216 0
	stfs 28,8(1)
	.loc 4 1226 0
	fmsubs 6,10,7,20
	.loc 4 1229 0
	lfs 20,228(1)
	.loc 4 1227 0
	lfs 7,224(1)
	.loc 4 1229 0
	fmsubs 24,0,24,20
	.loc 4 1236 0
	lfs 20,232(1)
	.loc 4 1227 0
	fmsubs 4,10,4,7
.LVL532:
	.loc 4 1236 0
	lfs 28,28(1)
	fmsubs 7,18,10,20
	.loc 4 1237 0
	lfs 20,236(1)
	.loc 4 1226 0
	fmadds 6,11,26,6
	.loc 4 1229 0
	lfs 27,68(1)
	.loc 4 1227 0
	fmadds 4,12,26,4
	.loc 4 1211 0
	lfs 30,52(1)
	.loc 4 1236 0
	fmadds 7,28,11,7
	.loc 4 1221 0
	lfs 19,168(1)
	.loc 4 1237 0
	fmsubs 16,16,10,20
.LVL533:
	.loc 4 1217 0
	stfs 21,32(1)
	.loc 4 1229 0
	fmadds 24,12,27,24
	.loc 4 1219 0
	lfs 21,40(1)
	.loc 4 1239 0
	lfs 20,240(1)
	.loc 4 1230 0
	lfs 27,248(1)
	.loc 4 1219 0
	fmadds 22,12,21,22
	.loc 4 1226 0
	stfs 6,40(1)
	.loc 4 1239 0
	fmsubs 17,17,0,20
.LVL534:
	.loc 4 1212 0
	lfs 6,212(1)
	.loc 4 1237 0
	fmadds 16,28,12,16
	.loc 4 1227 0
	stfs 4,108(1)
	.loc 4 1220 0
	fmuls 21,10,23
	.loc 4 1211 0
	lfs 4,164(1)
	.loc 4 1239 0
	fmadds 18,18,12,17
.LVL535:
	.loc 4 1236 0
	stfs 7,64(1)
	.loc 4 1210 0
	stfs 5,96(1)
	.loc 4 1211 0
	fmsubs 28,13,30,4
	.loc 4 1212 0
	lfs 5,92(1)
	.loc 4 1220 0
	fmsubs 26,13,26,21
.LVL536:
	.loc 4 1221 0
	lfs 7,56(1)
	.loc 4 1212 0
	fmsubs 30,13,5,6
	.loc 4 1222 0
	lfs 20,160(1)
	.loc 4 1221 0
	fmsubs 6,13,7,19
	.loc 4 1222 0
	lfs 23,172(1)
.LVL537:
	.loc 4 1230 0
	fmuls 19,27,10
	.loc 4 1232 0
	lfs 7,24(1)
	.loc 4 1261 0
	lfs 10,88(1)
	.loc 4 1222 0
	fmsubs 4,13,20,23
	.loc 4 1231 0
	lfs 5,252(1)
	.loc 4 1232 0
	fmsubs 15,7,13,15
	.loc 4 1251 0
	lfs 23,128(1)
	.loc 4 1261 0
	fmuls 7,10,3
	.loc 4 1246 0
	lfs 10,72(1)
	.loc 4 1231 0
	fmsubs 20,5,13,14
	.loc 4 1251 0
	fmuls 27,3,23
	.loc 4 1256 0
	lfs 14,140(1)
	.loc 4 1246 0
	fmuls 23,3,10
	.loc 4 1255 0
	lfs 10,80(1)
	.loc 4 1256 0
	fmuls 5,3,14
	.loc 4 1237 0
	stfs 16,68(1)
	.loc 4 1260 0
	lfs 14,84(1)
	.loc 4 1255 0
	fmuls 16,3,10
	.loc 4 1250 0
	lfs 10,76(1)
	.loc 4 1211 0
	fmadds 28,11,29,28
	.loc 4 1260 0
	fmuls 17,14,3
	.loc 4 1250 0
	fmuls 14,3,10
	.loc 4 1245 0
	lfs 10,44(1)
	.loc 4 1221 0
	fmadds 6,11,8,6
	.loc 4 1245 0
	fmuls 10,3,10
	.loc 4 1222 0
	fmadds 4,12,8,4
	.loc 4 1256 0
	fmsubs 5,1,18,5
	.loc 4 1245 0
	stfs 10,52(1)
	.loc 4 1255 0
	fmsubs 18,2,18,16
	.loc 4 1259 0
	lfs 10,84(1)
	.loc 4 1220 0
	fmadds 8,0,8,26
.LVL538:
	.loc 4 1211 0
	stfs 28,24(1)
	.loc 4 1259 0
	fmuls 10,10,1
	.loc 4 1231 0
	lfs 28,60(1)
	fmadds 20,28,11,20
	.loc 4 1230 0
	lfs 11,28(1)
	.loc 4 1259 0
	stfs 10,92(1)
	.loc 4 1232 0
	fmadds 15,28,12,15
	.loc 4 1254 0
	lfs 10,80(1)
	.loc 4 1259 0
	lfs 21,92(1)
	.loc 4 1254 0
	fmuls 10,1,10
	.loc 4 1249 0
	lfs 28,128(1)
	.loc 4 1254 0
	stfs 10,56(1)
	.loc 4 1249 0
	lfs 10,76(1)
	fmuls 10,1,10
	stfs 10,160(1)
	.loc 4 1244 0
	lfs 10,44(1)
	fmuls 10,1,10
	stfs 10,44(1)
	.loc 4 1258 0
	lfs 10,148(1)
	fmuls 10,10,1
	stfs 10,76(1)
	.loc 4 1253 0
	lfs 10,136(1)
	fmuls 10,1,10
	stfs 10,80(1)
	.loc 4 1248 0
	lfs 10,124(1)
	fmuls 10,1,10
	stfs 10,164(1)
	.loc 4 1243 0
	lfs 10,116(1)
	fmuls 10,1,10
	stfs 10,212(1)
	.loc 4 1257 0
	lfs 10,100(1)
	fmuls 10,10,1
	stfs 10,100(1)
	.loc 4 1252 0
	lfs 10,132(1)
	fmuls 10,1,10
	stfs 10,168(1)
	.loc 4 1247 0
	lfs 10,120(1)
	fmuls 10,1,10
	stfs 10,172(1)
	.loc 4 1242 0
	lfs 10,112(1)
	fmuls 10,1,10
	stfs 10,216(1)
	.loc 4 1212 0
	fmadds 10,12,29,30
	.loc 4 1210 0
	lfs 30,96(1)
	.loc 4 1261 0
	lfs 12,156(1)
	.loc 4 1210 0
	fmsubs 25,13,25,30
.LVL539:
	.loc 4 1251 0
	fmsubs 30,1,24,27
	.loc 4 1254 0
	lfs 27,56(1)
	.loc 4 1230 0
	fmsubs 13,11,13,19
	.loc 4 1259 0
	lfs 19,88(1)
	.loc 4 1250 0
	fmsubs 24,2,24,14
	.loc 4 1245 0
	lfs 14,52(1)
	.loc 4 1261 0
	fmsubs 7,12,1,7
	.loc 4 1210 0
	stfs 25,84(1)
	.loc 4 1246 0
	fmsubs 1,1,22,23
	.loc 4 1254 0
	lfs 23,140(1)
	.loc 4 1260 0
	fmsubs 25,12,2,17
	.loc 4 1249 0
	lfs 12,160(1)
	.loc 4 1259 0
	fmsubs 17,19,2,21
	.loc 4 1244 0
	lfs 21,44(1)
	.loc 4 1245 0
	fmsubs 22,2,22,14
	.loc 4 1244 0
	lfs 14,72(1)
	.loc 4 1254 0
	fmsubs 11,2,23,27
	.loc 4 1244 0
	fmsubs 14,2,14,21
	.loc 4 1249 0
	fmsubs 19,2,28,12
	.loc 4 1254 0
	fmadds 11,31,15,11
	.loc 4 1244 0
	stfs 14,44(1)
	.loc 4 1258 0
	lfs 27,152(1)
	.loc 4 1249 0
	fmadds 19,31,4,19
	.loc 4 1258 0
	lfs 28,76(1)
	.loc 4 1253 0
	lfs 12,68(1)
	lfs 14,80(1)
	.loc 4 1258 0
	fmsubs 23,27,2,28
	.loc 4 1248 0
	lfs 28,164(1)
	.loc 4 1253 0
	fmsubs 21,2,12,14
	.loc 4 1248 0
	lfs 27,108(1)
	.loc 4 1243 0
	lfs 14,212(1)
	lfs 12,32(1)
	.loc 4 1248 0
	fmsubs 27,2,27,28
	.loc 4 1257 0
	lfs 28,100(1)
	.loc 4 1253 0
	fmadds 15,3,15,21
	.loc 4 1243 0
	fmsubs 12,2,12,14
	.loc 4 1252 0
	lfs 14,168(1)
	.loc 4 1248 0
	stfs 27,28(1)
	.loc 4 1257 0
	lfs 27,184(1)
	.loc 4 1243 0
	stfs 12,88(1)
	.loc 4 1252 0
	lfs 12,64(1)
	.loc 4 1257 0
	fmsubs 16,27,2,28
	.loc 4 1248 0
	lfs 21,28(1)
	.loc 4 1252 0
	fmsubs 27,2,12,14
	.loc 4 1247 0
	lfs 12,40(1)
	lfs 14,172(1)
	.loc 4 1248 0
	fmadds 4,3,4,21
	.loc 4 1257 0
	lfs 21,180(1)
	.loc 4 1247 0
	fmsubs 28,2,12,14
	.loc 4 1242 0
	lfs 12,8(1)
	lfs 14,216(1)
	.loc 4 1257 0
	fmadds 16,21,3,16
	.loc 4 1252 0
	fmadds 27,3,20,27
	.loc 4 1264 0
	lfs 21,16(1)
	.loc 4 1242 0
	fmsubs 2,2,12,14
	.loc 4 1142 0
	lfs 12,16(1)
	.loc 4 1247 0
	fmadds 28,3,6,28
	.loc 4 1142 0
	fneg 14,12
	.loc 4 1210 0
	lfs 12,84(1)
	fmadds 29,0,29,12
.LVL540:
	.loc 4 1230 0
	lfs 12,60(1)
	.loc 4 1254 0
	fmadds 11,14,20,11
	.loc 4 1258 0
	lfs 20,16(1)
	.loc 4 1230 0
	fmadds 13,12,0,13
.LVL541:
	.loc 4 1142 0
	lfs 0,176(1)
	.loc 4 1261 0
	lfs 12,152(1)
	.loc 4 1278 0
	fnmadds 19,14,6,19
	.loc 4 1142 0
	fneg 26,0
	.loc 4 1256 0
	lfs 0,68(1)
	.loc 4 1261 0
	fmadds 7,12,31,7
	.loc 4 1251 0
	lfs 12,108(1)
	.loc 4 1256 0
	fmadds 5,31,0,5
	.loc 4 1246 0
	lfs 0,32(1)
	.loc 4 1251 0
	fmadds 30,31,12,30
	.loc 4 1260 0
	lfs 12,148(1)
	.loc 4 1246 0
	fmadds 1,31,0,1
	.loc 4 1255 0
	lfs 0,136(1)
	.loc 4 1260 0
	fmadds 25,12,31,25
	.loc 4 1250 0
	lfs 12,124(1)
	.loc 4 1255 0
	fmadds 18,31,0,18
	.loc 4 1245 0
	lfs 0,116(1)
	.loc 4 1250 0
	fmadds 24,31,12,24
	.loc 4 1259 0
	lfs 12,144(1)
	.loc 4 1245 0
	fmadds 22,31,0,22
	.loc 4 1244 0
	lfs 0,44(1)
	.loc 4 1259 0
	fmadds 17,12,31,17
	.loc 4 1281 0
	lfs 6,48(1)
.LVL542:
	.loc 4 1244 0
	fmadds 12,31,10,0
	.loc 4 1258 0
	lfs 0,144(1)
	.loc 4 1283 0
	fnmadds 15,14,13,15
	.loc 4 1258 0
	fmadds 23,0,3,23
	.loc 4 1243 0
	lfs 0,88(1)
	.loc 4 1248 0
	fmadds 4,14,8,4
	.loc 4 1243 0
	fmadds 10,3,10,0
.LVL543:
	.loc 4 1242 0
	lfs 0,24(1)
	.loc 4 1258 0
	fmadds 23,26,20,23
	.loc 4 1242 0
	fmadds 2,3,0,2
	.loc 4 1264 0
	lfs 3,208(1)
	.loc 4 1256 0
	lfs 0,64(1)
	.loc 4 1288 0
	fnmadds 31,26,31,16
	.loc 4 1264 0
	fnmadds 7,3,21,7
	.loc 4 1266 0
	lfs 3,40(1)
	.loc 4 1246 0
	lfs 21,8(1)
	.loc 4 1256 0
	fmadds 5,14,0,5
	.loc 4 1266 0
	fnmadds 30,14,3,30
	.loc 4 1269 0
	lfs 3,192(1)
	.loc 4 1246 0
	fmadds 1,14,21,1
	.loc 4 1260 0
	lfs 21,204(1)
	.loc 4 1269 0
	fneg 0,3
	.loc 4 1260 0
	lfs 3,16(1)
	.loc 4 1263 0
	lfs 26,196(1)
	.loc 4 1264 0
	fmul 7,7,9
	.loc 4 1260 0
	fmadds 25,21,3,25
	.loc 4 1271 0
	lfs 21,132(1)
	.loc 4 1250 0
	lfs 3,120(1)
	.loc 4 1263 0
	fmul 26,26,9
	.loc 4 1271 0
	fnmadds 18,14,21,18
	.loc 4 1273 0
	lfs 21,112(1)
	.loc 4 1250 0
	fmadds 24,14,3,24
	.loc 4 1276 0
	lfs 3,200(1)
	.loc 4 1273 0
	fnmadds 22,14,21,22
	.loc 4 1276 0
	lfs 21,16(1)
	.loc 4 1265 0
	fmul 5,5,9
	.loc 4 1276 0
	fnmadds 17,3,21,17
	.loc 4 1244 0
	lfs 3,24(1)
	.loc 4 1281 0
	fneg 21,6
	.loc 4 1244 0
	fmadds 12,14,3,12
	.loc 4 1252 0
	lfs 3,20(1)
	.loc 4 1285 0
	fnmadds 14,14,29,10
	.loc 4 1287 0
	lfs 10,104(1)
	.loc 4 1252 0
	fmadds 13,3,13,27
.LVL544:
	.loc 4 1290 0
	fnmadds 8,3,8,28
.LVL545:
	.loc 4 1242 0
	fmadds 29,3,29,2
.LVL546:
	.loc 4 1275 0
	lfs 3,188(1)
	.loc 4 1266 0
	fmul 30,30,9
	.loc 4 1267 0
	fmul 1,1,9
	.loc 4 1269 0
	fmul 0,0,9
	.loc 4 1270 0
	fmul 25,25,9
	.loc 4 1271 0
	fmul 18,18,9
	.loc 4 1272 0
	fmul 24,24,9
	.loc 4 1273 0
	fmul 22,22,9
	.loc 4 1275 0
	fmul 3,3,9
	.loc 4 1276 0
	fmul 17,17,9
	.loc 4 1277 0
	fmul 11,11,9
	.loc 4 1278 0
	fmul 19,19,9
	.loc 4 1279 0
	fmul 12,12,9
	.loc 4 1281 0
	fmul 21,21,9
	.loc 4 1282 0
	fmul 23,23,9
	.loc 4 1283 0
	fmul 15,15,9
	.loc 4 1284 0
	fmul 4,4,9
	.loc 4 1285 0
	fmul 14,14,9
	.loc 4 1287 0
	fmul 10,10,9
	.loc 4 1288 0
	fmul 31,31,9
	.loc 4 1289 0
	fmul 13,13,9
	.loc 4 1290 0
	fmul 8,8,9
	.loc 4 1291 0
	fmul 9,29,9
.LVL547:
	.loc 4 1263 0
	frsp 26,26
	.loc 4 1264 0
	frsp 7,7
	.loc 4 1265 0
	frsp 5,5
	.loc 4 1266 0
	frsp 30,30
	.loc 4 1263 0
	stfs 26,0(9)
.LVL548:
	.loc 4 1267 0
	frsp 1,1
	.loc 4 1264 0
	stfs 7,4(9)
.LVL549:
	.loc 4 1269 0
	frsp 0,0
	.loc 4 1265 0
	stfs 5,8(9)
.LVL550:
	.loc 4 1270 0
	frsp 25,25
	.loc 4 1266 0
	stfs 30,12(9)
.LVL551:
	.loc 4 1271 0
	frsp 18,18
	.loc 4 1267 0
	stfs 1,16(9)
.LVL552:
	.loc 4 1272 0
	frsp 24,24
	.loc 4 1269 0
	stfs 0,20(9)
.LVL553:
	.loc 4 1273 0
	frsp 22,22
	.loc 4 1270 0
	stfs 25,24(9)
.LVL554:
	.loc 4 1275 0
	frsp 3,3
	.loc 4 1271 0
	stfs 18,28(9)
.LVL555:
	.loc 4 1276 0
	frsp 17,17
	.loc 4 1272 0
	stfs 24,32(9)
.LVL556:
	.loc 4 1277 0
	frsp 11,11
	.loc 4 1273 0
	stfs 22,36(9)
.LVL557:
	.loc 4 1278 0
	frsp 19,19
	.loc 4 1275 0
	stfs 3,40(9)
.LVL558:
	.loc 4 1279 0
	frsp 12,12
	.loc 4 1276 0
	stfs 17,44(9)
.LVL559:
	.loc 4 1281 0
	frsp 21,21
	.loc 4 1277 0
	stfs 11,48(9)
.LVL560:
	.loc 4 1282 0
	frsp 23,23
	.loc 4 1278 0
	stfs 19,52(9)
.LVL561:
	.loc 4 1283 0
	frsp 15,15
	.loc 4 1279 0
	stfs 12,56(9)
.LVL562:
	.loc 4 1284 0
	frsp 4,4
	.loc 4 1281 0
	stfs 21,60(9)
.LVL563:
	.loc 4 1285 0
	frsp 14,14
	.loc 4 1282 0
	stfs 23,64(9)
.LVL564:
	.loc 4 1287 0
	frsp 10,10
	.loc 4 1283 0
	stfs 15,68(9)
.LVL565:
	.loc 4 1288 0
	frsp 31,31
	.loc 4 1284 0
	stfs 4,72(9)
.LVL566:
	.loc 4 1289 0
	frsp 13,13
	.loc 4 1285 0
	stfs 14,76(9)
.LVL567:
	.loc 4 1290 0
	frsp 8,8
	.loc 4 1287 0
	stfs 10,80(9)
.LVL568:
	.loc 4 1291 0
	frsp 9,9
	.loc 4 1288 0
	stfs 31,84(9)
.LVL569:
	.loc 4 1289 0
	stfs 13,88(9)
.LVL570:
	.loc 4 1290 0
	stfs 8,92(9)
.LVL571:
	.loc 4 1291 0
	stfs 9,96(9)
.LVL572:
.L206:
.LBE11319:
	.loc 4 1294 0
	lfd 14,256(1)
	lfd 15,264(1)
	lfd 16,272(1)
	lfd 17,280(1)
	lfd 18,288(1)
	lfd 19,296(1)
	lfd 20,304(1)
	lfd 21,312(1)
	lfd 22,320(1)
	lfd 23,328(1)
	lfd 24,336(1)
	lfd 25,344(1)
	lfd 26,352(1)
	lfd 27,360(1)
	lfd 28,368(1)
	lfd 29,376(1)
	lfd 30,384(1)
	lfd 31,392(1)
	addi 1,1,400
.LCFI73:
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
	blr
	.cfi_endproc
.LFE2563:
	.size	_ZN6idMat511InverseSelfEv, .-_ZN6idMat511InverseSelfEv
	.align 2
	.globl _ZN6idMat515InverseFastSelfEv
	.type	_ZN6idMat515InverseFastSelfEv, @function
_ZN6idMat515InverseFastSelfEv:
.LFB2564:
	.loc 4 1301 0
	.cfi_startproc
.LVL573:
	stwu 1,-160(1)
.LCFI74:
	.cfi_def_cfa_offset 160
.LBB11322:
	.loc 4 1637 0
	lis 11,.LC2@ha
.LBE11322:
	.loc 4 1301 0
	mr 9,3
.LVL574:
	stfd 26,112(1)
	stfd 27,120(1)
	stfd 28,128(1)
	stfd 14,16(1)
	stfd 15,24(1)
	stfd 16,32(1)
	stfd 17,40(1)
	stfd 18,48(1)
	stfd 19,56(1)
	stfd 20,64(1)
	stfd 21,72(1)
	stfd 22,80(1)
	stfd 23,88(1)
	stfd 24,96(1)
	stfd 25,104(1)
	stfd 29,136(1)
	stfd 30,144(1)
	stfd 31,152(1)
.LBB11327:
	.loc 4 1637 0
	lfd 28,.LC2@l(11)
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
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
	.cfi_offset 46, -144
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.loc 4 1631 0
	lfs 6,48(3)
	.loc 4 1632 0
	lfs 9,20(3)
	.loc 4 1631 0
	lfs 8,28(3)
	.loc 4 1632 0
	fmuls 5,6,9
	.loc 4 1631 0
	lfs 16,44(3)
	.loc 4 1632 0
	lfs 7,40(3)
	.loc 4 1631 0
	fmuls 26,8,16
	lfs 10,24(3)
	.loc 4 1632 0
	fmsubs 5,8,7,5
	.loc 4 1635 0
	lfs 12,4(3)
	.loc 4 1633 0
	fmuls 27,10,7
	.loc 4 1635 0
	lfs 13,0(3)
	.loc 4 1631 0
	fmsubs 26,10,6,26
.LVL575:
	.loc 4 1635 0
	lfs 11,8(3)
	fmuls 0,12,5
	.loc 4 1638 0
	li 3,0
.LVL576:
	.loc 4 1633 0
	fmsubs 27,16,9,27
.LVL577:
	.loc 4 1635 0
	fmadds 0,13,26,0
	fmadds 0,11,27,0
	stfs 0,8(1)
.LVL578:
.LBB11323:
.LBB11324:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE11324:
.LBE11323:
	.loc 4 1637 0
	stw 0,12(1)
	lfs 4,12(1)
	fmr 0,4
.LVL579:
	fcmpu 7,0,28
	blt- 7,.L209
	.loc 4 1641 0
	lis 11,.LC1@ha
	lfs 23,8(1)
	lfs 19,.LC1@l(11)
	.loc 4 1647 0
	fmuls 15,7,11
	.loc 4 1644 0
	fmuls 4,6,12
	.loc 4 1654 0
	lfs 20,32(9)
	.loc 4 1641 0
	fdivs 0,19,23
.LVL580:
	.loc 4 1655 0
	lfs 21,36(9)
	lfs 23,16(9)
	.loc 4 1654 0
	lfs 22,12(9)
	lfs 24,52(9)
	.loc 4 1655 0
	lfs 25,56(9)
	.loc 4 1662 0
	lfs 30,64(9)
	.loc 4 1664 0
	lfs 29,84(9)
	.loc 4 1662 0
	lfs 2,60(9)
	.loc 4 1664 0
	lfs 31,80(9)
	.loc 4 1662 0
	lfs 3,68(9)
	.loc 4 1664 0
	lfs 1,88(9)
	.loc 4 1669 0
	lfs 17,76(9)
	.loc 4 1670 0
	lfs 18,92(9)
	.loc 4 1647 0
	fmsubs 6,6,13,15
	.loc 4 1644 0
	fmsubs 4,16,11,4
	.loc 4 1648 0
	fmuls 15,8,13
	.loc 4 1647 0
	fmuls 6,6,0
	.loc 4 1650 0
	fmuls 16,16,13
	.loc 4 1645 0
	fmuls 14,10,11
	.loc 4 1644 0
	fmuls 4,4,0
	.loc 4 1646 0
	fmuls 5,5,0
.LVL581:
	.loc 4 1648 0
	fmsubs 11,9,11,15
	.loc 4 1650 0
	fmsubs 7,7,12,16
	.loc 4 1656 0
	fmuls 15,6,20
	.loc 4 1657 0
	fmuls 16,6,21
	.loc 4 1643 0
	fmuls 26,26,0
.LVL582:
	.loc 4 1648 0
	fmuls 11,11,0
	.loc 4 1650 0
	fmuls 7,7,0
	.loc 4 1645 0
	fmsubs 8,8,12,14
	.loc 4 1657 0
	fmadds 16,5,23,16
	.loc 4 1651 0
	fmuls 12,9,12
	.loc 4 1655 0
	fmuls 14,4,21
	.loc 4 1654 0
	fmuls 9,4,20
	.loc 4 1656 0
	fmadds 15,5,22,15
	.loc 4 1645 0
	fmuls 8,8,0
.LVL583:
	.loc 4 1649 0
	fmuls 27,27,0
.LVL584:
	.loc 4 1656 0
	fmadds 15,11,24,15
	.loc 4 1657 0
	fmadds 16,11,25,16
	.loc 4 1651 0
	fmsubs 12,10,13,12
	.loc 4 1655 0
	fmadds 14,26,23,14
	.loc 4 1654 0
	fmadds 9,26,22,9
	.loc 4 1658 0
	fmuls 20,7,20
	.loc 4 1659 0
	fmuls 21,7,21
	.loc 4 1651 0
	fmuls 12,12,0
.LVL585:
	.loc 4 1654 0
	fmadds 9,8,24,9
.LVL586:
	.loc 4 1655 0
	fmadds 14,8,25,14
.LVL587:
	.loc 4 1659 0
	fmadds 21,27,23,21
	.loc 4 1658 0
	fmadds 20,27,22,20
	.loc 4 1663 0
	fmuls 23,16,30
	.loc 4 1664 0
	fmuls 10,15,29
	.loc 4 1658 0
	fmadds 24,12,24,20
.LVL588:
	.loc 4 1659 0
	fmadds 25,12,25,21
.LVL589:
	.loc 4 1662 0
	fmuls 0,15,30
.LVL590:
	.loc 4 1663 0
	fmadds 23,14,2,23
	.loc 4 1664 0
	fmadds 10,9,31,10
	.loc 4 1665 0
	fmuls 13,16,29
	.loc 4 1663 0
	fmadds 23,25,3,23
	.loc 4 1664 0
	fmadds 10,24,1,10
	.loc 4 1662 0
	fmadds 0,9,2,0
	.loc 4 1665 0
	fmadds 13,14,31,13
	.loc 4 1669 0
	fsubs 17,23,17
	.loc 4 1671 0
	lfs 23,96(9)
	.loc 4 1670 0
	fsubs 18,10,18
	.loc 4 1668 0
	lfs 10,72(9)
	.loc 4 1662 0
	fmadds 0,24,3,0
	.loc 4 1665 0
	fmadds 13,25,1,13
	.loc 4 1668 0
	fsubs 0,0,10
.LVL591:
	.loc 4 1671 0
	fsubs 13,13,23
.LVL592:
	.loc 4 1674 0
	fmuls 10,17,18
	fmsubs 10,0,13,10
	stfs 10,8(1)
.LVL593:
.LBB11325:
.LBB11326:
	.loc 5 781 0
	lwz 11,8(1)
	rlwinm 0,11,0,1,31
.LBE11326:
.LBE11325:
	.loc 4 1676 0
	stw 0,12(1)
	lfs 23,12(1)
	fmr 10,23
.LVL594:
	fcmpu 7,10,28
	blt- 7,.L209
	.loc 4 1680 0
	lfs 10,8(1)
	.loc 4 1692 0
	fmuls 20,5,29
	.loc 4 1693 0
	fmuls 21,6,29
	.loc 4 1729 0
	li 3,1
	.loc 4 1680 0
	fdivs 19,19,10
.LVL595:
	.loc 4 1694 0
	fmuls 29,11,29
	.loc 4 1689 0
	fmuls 10,5,30
	.loc 4 1690 0
	fmuls 22,6,30
	.loc 4 1694 0
	fmadds 29,8,31,29
	.loc 4 1691 0
	fmuls 30,11,30
	.loc 4 1692 0
	fmadds 20,26,31,20
	.loc 4 1693 0
	fmadds 21,4,31,21
	.loc 4 1684 0
	fneg 17,17
	.loc 4 1692 0
	fmadds 20,27,1,20
	.loc 4 1693 0
	fmadds 21,7,1,21
	.loc 4 1684 0
	fmuls 17,17,19
	.loc 4 1694 0
	fmadds 1,12,1,29
	.loc 4 1689 0
	fmadds 31,26,2,10
	.loc 4 1690 0
	fmadds 22,4,2,22
	.loc 4 1691 0
	fmadds 2,8,2,30
	.loc 4 1683 0
	fmuls 29,13,19
.LVL596:
	.loc 4 1686 0
	fmuls 28,0,19
	.loc 4 1689 0
	fmadds 31,27,3,31
	.loc 4 1690 0
	fmadds 22,7,3,22
	.loc 4 1699 0
	fmuls 0,17,1
.LVL597:
	.loc 4 1691 0
	fmadds 3,12,3,2
	.loc 4 1697 0
	fmuls 23,17,20
	.loc 4 1698 0
	fmuls 30,17,21
	.loc 4 1685 0
	fneg 18,18
	.loc 4 1697 0
	fmadds 23,29,31,23
	.loc 4 1698 0
	fmadds 30,29,22,30
	.loc 4 1685 0
	fmuls 19,18,19
.LVL598:
	.loc 4 1301 0
	fneg 10,9
	.loc 4 1697 0
	stfs 23,60(9)
.LVL599:
	.loc 4 1699 0
	fmadds 18,29,3,0
	.loc 4 1698 0
	stfs 30,64(9)
.LVL600:
	.loc 4 1301 0
	fneg 13,15
	fneg 0,24
	.loc 4 1701 0
	fmuls 21,28,21
	.loc 4 1699 0
	stfs 18,68(9)
.LVL601:
	.loc 4 1702 0
	fmuls 1,28,1
	.loc 4 1700 0
	fmuls 20,28,20
	.loc 4 1701 0
	fmadds 22,19,22,21
	.loc 4 1702 0
	fmadds 3,19,3,1
	.loc 4 1700 0
	fmadds 20,19,31,20
	.loc 4 1301 0
	fneg 1,16
	.loc 4 1701 0
	stfs 22,84(9)
	.loc 4 1301 0
	fneg 31,14
	.loc 4 1702 0
	stfs 3,88(9)
	.loc 4 1301 0
	fneg 2,25
	.loc 4 1700 0
	stfs 20,80(9)
.LVL602:
	.loc 4 1720 0
	fmuls 21,25,19
	.loc 4 1705 0
	fmadds 26,10,23,26
	.loc 4 1706 0
	fmadds 4,10,30,4
	.loc 4 1707 0
	fmadds 8,10,18,8
	.loc 4 1708 0
	fmadds 5,13,23,5
	.loc 4 1718 0
	fmuls 10,16,19
	.loc 4 1709 0
	fmadds 6,13,30,6
	.loc 4 1710 0
	fmadds 11,13,18,11
	.loc 4 1719 0
	fmuls 16,16,28
	.loc 4 1716 0
	fmuls 13,14,19
	.loc 4 1721 0
	fmuls 25,25,28
	.loc 4 1717 0
	fmuls 14,14,28
	.loc 4 1711 0
	fmadds 27,0,23,27
	.loc 4 1712 0
	fmadds 7,0,30,7
	.loc 4 1713 0
	fmadds 12,0,18,12
	.loc 4 1716 0
	fmadds 13,9,29,13
	.loc 4 1718 0
	fmadds 10,15,29,10
	.loc 4 1720 0
	fmadds 21,24,29,21
	.loc 4 1717 0
	fmadds 9,9,17,14
	.loc 4 1716 0
	stfs 13,12(9)
	.loc 4 1719 0
	fmadds 15,15,17,16
	.loc 4 1718 0
	stfs 10,32(9)
	.loc 4 1721 0
	fmadds 24,24,17,25
	.loc 4 1720 0
	stfs 21,52(9)
	.loc 4 1705 0
	fmadds 26,31,20,26
	.loc 4 1717 0
	stfs 9,16(9)
	.loc 4 1706 0
	fmadds 4,31,22,4
	.loc 4 1719 0
	stfs 15,36(9)
	.loc 4 1707 0
	fmadds 8,31,3,8
	.loc 4 1721 0
	stfs 24,56(9)
	.loc 4 1708 0
	fmadds 5,1,20,5
	.loc 4 1705 0
	stfs 26,0(9)
.LVL603:
	.loc 4 1709 0
	fmadds 6,1,22,6
	.loc 4 1706 0
	stfs 4,4(9)
.LVL604:
	.loc 4 1710 0
	fmadds 11,1,3,11
	.loc 4 1707 0
	stfs 8,8(9)
.LVL605:
	.loc 4 1711 0
	fmadds 27,2,20,27
	.loc 4 1708 0
	stfs 5,20(9)
.LVL606:
	.loc 4 1712 0
	fmadds 7,2,22,7
	.loc 4 1709 0
	stfs 6,24(9)
.LVL607:
	.loc 4 1713 0
	fmadds 12,2,3,12
	.loc 4 1710 0
	stfs 11,28(9)
.LVL608:
	.loc 4 1724 0
	fneg 29,29
	.loc 4 1711 0
	stfs 27,40(9)
.LVL609:
	.loc 4 1725 0
	fneg 17,17
	.loc 4 1712 0
	stfs 7,44(9)
.LVL610:
	.loc 4 1726 0
	fneg 19,19
	.loc 4 1713 0
	stfs 12,48(9)
.LVL611:
	.loc 4 1727 0
	fneg 28,28
	.loc 4 1724 0
	stfs 29,72(9)
.LVL612:
	.loc 4 1725 0
	stfs 17,76(9)
.LVL613:
	.loc 4 1726 0
	stfs 19,92(9)
.LVL614:
	.loc 4 1727 0
	stfs 28,96(9)
.LVL615:
.L209:
.LBE11327:
	.loc 4 1731 0
	lfd 14,16(1)
	lfd 15,24(1)
	lfd 16,32(1)
	lfd 17,40(1)
	lfd 18,48(1)
	lfd 19,56(1)
	lfd 20,64(1)
	lfd 21,72(1)
	lfd 22,80(1)
	lfd 23,88(1)
	lfd 24,96(1)
	lfd 25,104(1)
	lfd 26,112(1)
	lfd 27,120(1)
	lfd 28,128(1)
	lfd 29,136(1)
	lfd 30,144(1)
	lfd 31,152(1)
	addi 1,1,160
.LCFI75:
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
	blr
	.cfi_endproc
.LFE2564:
	.size	_ZN6idMat515InverseFastSelfEv, .-_ZN6idMat515InverseFastSelfEv
	.align 2
	.globl _ZNK6idMat58ToStringEi
	.type	_ZNK6idMat58ToStringEi, @function
_ZNK6idMat58ToStringEi:
.LFB2565:
	.loc 4 1738 0
	.cfi_startproc
.LVL616:
	mflr 0
	stwu 1,-8(1)
.LCFI76:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 5,4
	.loc 4 1739 0
	li 4,25
.LVL617:
	.loc 4 1738 0
	stw 0,12(1)
	.loc 4 1739 0
	.cfi_offset 65, 4
	bl _ZN5idStr18FloatArrayToStringEPKfii
.LVL618:
	.loc 4 1740 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI77:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2565:
	.size	_ZNK6idMat58ToStringEi, .-_ZNK6idMat58ToStringEi
	.align 2
	.globl _ZNK6idMat69TransposeEv
	.type	_ZNK6idMat69TransposeEv, @function
_ZNK6idMat69TransposeEv:
.LFB2566:
	.loc 4 1757 0
	.cfi_startproc
.LVL619:
	.loc 4 1761 0
	li 6,0
.LVL620:
.L214:
.LBB11328:
.LBB11329:
.LBB11330:
	.loc 2 1229 0 discriminator 1
	li 0,6
	slwi 8,6,2
	mulli 7,6,24
	mtctr 0
.LBE11330:
.LBE11329:
.LBE11328:
	.loc 4 1757 0 discriminator 1
	li 9,0
.LBB11333:
.LBB11332:
.LBB11331:
	.loc 2 1229 0 discriminator 1
	add 8,4,8
.LVL621:
.L215:
.LBE11331:
.LBE11332:
	.loc 4 1763 0
	mulli 10,9,24
	slwi 11,9,2
	add 11,3,11
	.loc 4 1762 0
	addi 9,9,1
.LVL622:
	.loc 4 1763 0
	lwzx 0,8,10
	stwx 0,11,7
	.loc 4 1762 0
	bdnz .L215
.LVL623:
	.loc 4 1761 0
	cmpwi 7,6,5
	addi 6,6,1
.LVL624:
	bne+ 7,.L214
	blr
.LBE11333:
	.cfi_endproc
.LFE2566:
	.size	_ZNK6idMat69TransposeEv, .-_ZNK6idMat69TransposeEv
	.align 2
	.globl _ZN6idMat613TransposeSelfEv
	.type	_ZN6idMat613TransposeSelfEv, @function
_ZN6idMat613TransposeSelfEv:
.LFB2567:
	.loc 4 1774 0
	.cfi_startproc
.LVL625:
.LBB11334:
	.loc 4 1778 0
	li 8,0
.LVL626:
	.loc 4 1779 0
	cmpwi 7,8,5
	addi 5,8,1
	beqlr- 7
.LVL627:
.L225:
	mulli 10,8,24
	.loc 4 1780 0 discriminator 2
	subfic 0,5,6
	mtctr 0
	.loc 4 1779 0 discriminator 2
	mr 9,5
	slwi 8,8,2
	.loc 4 1780 0 discriminator 2
	add 10,3,10
.LVL628:
.L221:
	.loc 4 1781 0 discriminator 2
	mulli 11,9,24
	.loc 4 1780 0 discriminator 2
	slwi 0,9,2
	lwzx 7,10,0
.LVL629:
	.loc 4 1779 0 discriminator 2
	addi 9,9,1
.LVL630:
	.loc 4 1781 0 discriminator 2
	add 11,3,11
.LVL631:
	lwzx 6,11,8
	stwx 6,10,0
.LVL632:
	.loc 4 1782 0 discriminator 2
	stwx 7,11,8
	.loc 4 1779 0 discriminator 2
	bdnz .L221
	.loc 4 1779 0 is_stmt 0
	mr 8,5
.LVL633:
	cmpwi 7,8,5
	addi 5,8,1
.LVL634:
	bne+ 7,.L225
	blr
.LBE11334:
	.cfi_endproc
.LFE2567:
	.size	_ZN6idMat613TransposeSelfEv, .-_ZN6idMat613TransposeSelfEv
	.align 2
	.globl _ZNK6idMat611DeterminantEv
	.type	_ZNK6idMat611DeterminantEv, @function
_ZNK6idMat611DeterminantEv:
.LFB2568:
	.loc 4 1793 0 is_stmt 1
	.cfi_startproc
.LVL635:
	stwu 1,-248(1)
.LCFI78:
	.cfi_def_cfa_offset 248
.LBB11335:
.LBB11336:
.LBB11337:
	.loc 2 1229 0
	lfs 1,96(3)
.LVL636:
.LBE11337:
.LBE11336:
.LBE11335:
	.loc 4 1793 0
	stfd 14,104(1)
	stfd 31,240(1)
.LBB11632:
.LBB11338:
.LBB11339:
	.loc 2 1229 0
	lfs 14,116(3)
	.cfi_offset 63, -8
	.cfi_offset 46, -144
.LBE11339:
.LBE11338:
.LBB11350:
.LBB11351:
	lfs 31,120(3)
.LBE11351:
.LBE11350:
.LBE11632:
	.loc 4 1793 0
	stfd 21,160(1)
.LBB11633:
	.loc 4 1800 0
	fmuls 21,31,14
	.cfi_offset 53, -88
.LBB11353:
.LBB11354:
	.loc 2 1229 0
	lfs 13,132(3)
.LBE11354:
.LBE11353:
.LBB11355:
.LBB11356:
	lfs 0,136(3)
.LBE11356:
.LBE11355:
.LBB11357:
.LBB11358:
	lfs 2,124(3)
.LVL637:
.LBE11358:
.LBE11357:
	.loc 4 1809 0
	fmuls 12,13,14
.LBB11359:
.LBB11360:
	.loc 2 1229 0
	lfs 11,140(3)
.LBE11360:
.LBE11359:
.LBE11633:
	.loc 4 1793 0
	stfd 29,224(1)
.LBB11634:
.LBB11361:
.LBB11362:
	.loc 2 1229 0
	lfs 29,128(3)
	.cfi_offset 61, -24
.LBE11362:
.LBE11361:
.LBB11363:
.LBB11340:
	.loc 4 1800 0
	fmsubs 21,1,11,21
.LBE11340:
.LBE11363:
.LBE11634:
	.loc 4 1793 0
	stfd 24,184(1)
	stfd 27,208(1)
.LBB11635:
	.loc 4 1807 0
	fmuls 24,29,14
	.cfi_offset 59, -40
	.cfi_offset 56, -64
	.loc 4 1804 0
	fmuls 27,2,14
.LBB11364:
.LBB11365:
	.loc 2 1229 0
	lfs 3,88(3)
.LBE11365:
.LBE11364:
	.loc 4 1810 0
	fmuls 14,0,14
.LBB11369:
.LBB11370:
	.loc 2 1229 0
	lfs 10,104(3)
.LBE11370:
.LBE11369:
.LBB11372:
.LBB11373:
	lfs 9,112(3)
.LBE11373:
.LBE11372:
.LBE11635:
	.loc 4 1793 0
	stfd 22,168(1)
.LBB11636:
.LBB11375:
.LBB11341:
	.loc 4 1807 0
	fmsubs 24,10,11,24
.LBE11341:
.LBE11375:
.LBB11376:
.LBB11377:
	.loc 2 1229 0
	lfs 22,108(3)
	.cfi_offset 54, -80
.LBE11377:
.LBE11376:
.LBE11636:
	.loc 4 1793 0
	stfd 30,232(1)
.LBB11637:
.LBB11379:
.LBB11380:
	.loc 2 1229 0
	lfs 30,100(3)
	.cfi_offset 62, -16
.LVL638:
.LBE11380:
.LBE11379:
.LBB11381:
.LBB11342:
	.loc 4 1809 0
	fmsubs 12,22,11,12
.LBE11342:
.LBE11381:
.LBE11637:
	.loc 4 1793 0
	stfd 16,120(1)
.LBB11638:
	.loc 4 1822 0
	fmuls 16,21,3
	.cfi_offset 48, -128
.LBB11382:
.LBB11343:
	.loc 4 1804 0
	fmsubs 27,30,11,27
.LBE11343:
.LBE11382:
.LBE11638:
	.loc 4 1793 0
	stfd 20,152(1)
.LBB11639:
.LBB11383:
.LBB11344:
	.loc 4 1810 0
	fmsubs 11,9,11,14
.LBE11344:
.LBE11383:
.LBB11384:
.LBB11385:
	.loc 2 1229 0
	lfs 7,72(3)
.LBE11385:
.LBE11384:
	.loc 4 1799 0
	fmuls 20,31,9
	.cfi_offset 52, -96
.LBE11639:
	.loc 4 1793 0
	stfd 23,176(1)
	stfd 26,200(1)
.LBB11640:
	.loc 4 1806 0
	fmuls 23,29,9
	.cfi_offset 58, -48
	.cfi_offset 55, -72
.LBE11640:
	.loc 4 1793 0
	stfd 28,216(1)
.LBB11641:
	.loc 4 1803 0
	fmuls 26,2,9
.LBB11386:
.LBB11374:
	.loc 4 1799 0
	fmsubs 20,1,0,20
.LBE11374:
.LBE11386:
.LBB11387:
.LBB11388:
	.loc 2 1229 0
	lfs 4,92(3)
	.loc 4 1822 0
	fmsubs 16,11,7,16
.LBE11388:
.LBE11387:
.LBB11426:
.LBB11427:
	.loc 2 1229 0
	lfs 6,76(3)
.LBE11427:
.LBE11426:
	.loc 4 1828 0
	fmuls 28,27,3
	.cfi_offset 60, -32
.LBE11641:
	.loc 4 1793 0
	stfd 18,136(1)
.LBB11642:
	.loc 4 1832 0
	fmuls 14,12,3
.LBB11428:
.LBB11429:
	.loc 2 1229 0
	lfs 8,80(3)
.LBE11429:
.LBE11428:
	.loc 4 1831 0
	fmuls 18,24,3
	.cfi_offset 50, -112
.LBB11431:
.LBB11432:
	.loc 2 1229 0
	lfs 5,84(3)
.LBE11432:
.LBE11431:
	.loc 4 1808 0
	fmuls 9,13,9
.LBE11642:
	.loc 4 1793 0
	stfd 19,144(1)
.LBB11643:
.LBB11437:
.LBB11345:
	.loc 4 1803 0
	fmsubs 26,30,0,26
.LBE11345:
.LBE11437:
.LBE11643:
	.loc 4 1793 0
	stfd 15,112(1)
.LBB11644:
.LBB11438:
.LBB11346:
	.loc 4 1806 0
	fmsubs 23,10,0,23
.LBE11346:
.LBE11438:
.LBE11644:
	.loc 4 1793 0
	stfd 17,128(1)
.LBB11645:
.LBB11439:
.LBB11389:
	.loc 4 1822 0
	fmadds 16,20,4,16
.LBE11389:
.LBE11439:
.LBE11645:
	.loc 4 1793 0
	stfd 25,192(1)
.LBB11646:
	.loc 4 1798 0
	fmuls 19,31,22
	.cfi_offset 57, -56
	.cfi_offset 49, -120
	.cfi_offset 47, -136
	.cfi_offset 51, -104
.LBB11440:
.LBB11390:
	.loc 4 1828 0
	fmsubs 28,11,6,28
.LBE11390:
.LBE11440:
.LBB11441:
.LBB11347:
	.loc 4 1808 0
	fmsubs 9,22,0,9
.LBE11347:
.LBE11441:
.LBB11442:
.LBB11391:
	.loc 4 1822 0
	stfs 16,96(1)
	.loc 4 1831 0
	fmsubs 18,11,8,18
.LBE11391:
.LBE11442:
.LBB11443:
.LBB11444:
	.loc 2 1229 0
	lfs 0,60(3)
.LBE11444:
.LBE11443:
.LBB11450:
.LBB11392:
	.loc 4 1832 0
	fmsubs 11,11,5,14
.LBE11392:
.LBE11450:
.LBB11451:
.LBB11378:
	.loc 4 1798 0
	fmsubs 19,1,13,19
.LBE11378:
.LBE11451:
.LBB11452:
.LBB11393:
	.loc 4 1828 0
	fmadds 28,26,4,28
.LBE11393:
.LBE11452:
	.loc 4 1829 0
	fmuls 16,23,5
	.loc 4 1802 0
	fmuls 25,2,22
	.loc 4 1805 0
	fmuls 22,29,22
.LBB11453:
.LBB11394:
	.loc 4 1828 0
	stfs 28,68(1)
	.loc 4 1832 0
	fmadds 14,9,4,11
.LBE11394:
.LBE11453:
	.loc 4 1829 0
	stfs 16,32(1)
	.loc 4 1827 0
	fmuls 11,27,5
	.loc 4 1820 0
	fmuls 17,20,5
.LBB11454:
.LBB11348:
	.loc 4 1805 0
	fmsubs 22,10,13,22
	.loc 4 1802 0
	fmsubs 25,30,13,25
.LBE11348:
.LBE11454:
	.loc 4 1827 0
	stfs 11,28(1)
	.loc 4 1826 0
	fmuls 28,26,5
	.loc 4 1844 0
	lfs 11,96(1)
	.loc 4 1817 0
	fmuls 13,19,8
	.loc 4 1818 0
	fmuls 16,20,8
.LBB11455:
.LBB11395:
	.loc 4 1820 0
	fmsubs 17,9,7,17
	.loc 4 1831 0
	fmadds 18,23,4,18
.LBE11395:
.LBE11455:
	.loc 4 1817 0
	stfs 13,8(1)
	.loc 4 1844 0
	fmuls 11,11,0
.LBB11456:
.LBB11396:
	.loc 4 1829 0
	lfs 13,32(1)
.LBE11396:
.LBE11456:
	.loc 4 1818 0
	stfs 16,12(1)
.LBB11457:
.LBB11397:
	.loc 4 1826 0
	fmsubs 16,9,6,28
	.loc 4 1827 0
	lfs 28,28(1)
	.loc 4 1820 0
	fmadds 17,19,3,17
	.loc 4 1829 0
	fmsubs 9,9,8,13
	.loc 4 1831 0
	stfs 18,100(1)
	.loc 4 1827 0
	fmsubs 28,12,6,28
.LBE11397:
.LBE11457:
	.loc 4 1844 0
	stfs 11,20(1)
	.loc 4 1830 0
	fmuls 18,24,5
.LBB11458:
.LBB11459:
	.loc 2 1229 0
	lfs 11,48(3)
.LBE11459:
.LBE11458:
.LBB11460:
.LBB11398:
	.loc 4 1826 0
	fmadds 16,25,3,16
	.loc 4 1829 0
	stfs 9,32(1)
	.loc 4 1827 0
	stfs 28,28(1)
.LBE11398:
.LBE11460:
	.loc 4 1821 0
	fmuls 15,21,5
.LBB11461:
.LBB11399:
	.loc 4 1820 0
	stfs 17,48(1)
.LBE11399:
.LBE11461:
	.loc 4 1819 0
	fmuls 17,21,8
.LBB11462:
.LBB11463:
	.loc 4 1844 0
	lfs 28,20(1)
.LBE11463:
.LBE11462:
	.loc 4 1816 0
	fmuls 21,21,6
	.loc 4 1830 0
	stfs 18,16(1)
	.loc 4 1797 0
	fmuls 18,31,10
.LBB11514:
.LBB11464:
	.loc 4 1844 0
	fmsubs 28,14,11,28
.LBE11464:
.LBE11514:
.LBB11515:
.LBB11400:
	.loc 4 1826 0
	stfs 16,52(1)
	.loc 4 1829 0
	lfs 16,32(1)
	.loc 4 1821 0
	fmsubs 15,12,7,15
.LBE11400:
.LBE11515:
	.loc 4 1819 0
	stfs 17,36(1)
	.loc 4 1815 0
	fmuls 20,20,6
.LBB11516:
.LBB11401:
	.loc 4 1830 0
	lfs 17,16(1)
	.loc 4 1829 0
	fmadds 16,22,3,16
.LBE11401:
.LBE11516:
.LBB11517:
.LBB11465:
	.loc 4 1844 0
	stfs 28,40(1)
.LBE11465:
.LBE11517:
.LBB11518:
.LBB11371:
	.loc 4 1797 0
	fmsubs 28,1,29,18
.LBE11371:
.LBE11518:
.LBB11519:
.LBB11402:
	.loc 4 1830 0
	fmsubs 12,12,8,17
	.loc 4 1827 0
	lfs 18,28(1)
.LBE11402:
.LBE11519:
	.loc 4 1848 0
	lfs 13,68(1)
.LBB11520:
.LBB11403:
	.loc 4 1821 0
	fmadds 15,19,4,15
	.loc 4 1827 0
	fmadds 18,25,4,18
.LBE11403:
.LBE11520:
	.loc 4 1849 0
	lfs 17,100(1)
.LBB11521:
.LBB11404:
	.loc 4 1829 0
	stfs 16,32(1)
.LBE11404:
.LBE11521:
	.loc 4 1801 0
	fmuls 16,2,10
.LBB11522:
.LBB11405:
	.loc 4 1817 0
	lfs 10,8(1)
.LBE11405:
.LBE11522:
	.loc 4 1848 0
	fmuls 13,13,0
.LBB11523:
.LBB11406:
	.loc 4 1830 0
	stfs 12,16(1)
.LBE11406:
.LBE11523:
	.loc 4 1849 0
	fmuls 17,17,0
.LBB11524:
.LBB11407:
	.loc 4 1817 0
	fmsubs 10,22,7,10
	.loc 4 1827 0
	stfs 18,28(1)
	.loc 4 1830 0
	lfs 18,16(1)
.LBE11407:
.LBE11524:
.LBB11525:
.LBB11349:
	.loc 4 1801 0
	fmsubs 29,30,29,16
.LBE11349:
.LBE11525:
.LBB11526:
.LBB11527:
	.loc 2 1229 0
	lfs 9,52(3)
.LBE11527:
.LBE11526:
	.loc 4 1814 0
	fmuls 19,19,6
.LBB11528:
.LBB11529:
	.loc 2 1229 0
	lfs 12,64(3)
.LBE11529:
.LBE11528:
	.loc 4 1848 0
	stfs 13,44(1)
	.loc 4 1849 0
	stfs 17,72(1)
.LBB11534:
.LBB11408:
	.loc 4 1830 0
	fmadds 17,22,4,18
.LBE11408:
.LBE11534:
.LBB11535:
.LBB11536:
	.loc 2 1229 0
	lfs 13,56(3)
.LBE11536:
.LBE11535:
.LBB11537:
.LBB11409:
	.loc 4 1817 0
	stfs 10,8(1)
	.loc 4 1818 0
	lfs 18,12(1)
	.loc 4 1819 0
	lfs 10,36(1)
	.loc 4 1818 0
	fmsubs 18,23,7,18
	.loc 4 1819 0
	fmsubs 10,24,7,10
	.loc 4 1818 0
	stfs 18,12(1)
.LBE11409:
.LBE11537:
	.loc 4 1823 0
	fmuls 18,25,8
.LBB11538:
.LBB11410:
	.loc 4 1819 0
	stfs 10,36(1)
.LBE11410:
.LBE11538:
	.loc 4 1824 0
	fmuls 10,26,8
	.loc 4 1823 0
	stfs 18,16(1)
	.loc 4 1825 0
	fmuls 18,27,8
	.loc 4 1824 0
	stfs 10,56(1)
	.loc 4 1842 0
	fmuls 10,15,13
.LBB11539:
.LBB11411:
	.loc 4 1819 0
	lfs 16,36(1)
.LBE11411:
.LBE11539:
	.loc 4 1825 0
	stfs 18,60(1)
	.loc 4 1843 0
	lfs 18,96(1)
	.loc 4 1842 0
	stfs 10,64(1)
	.loc 4 1843 0
	fmuls 18,18,13
.LBB11540:
.LBB11466:
	.loc 4 1793 0
	lfs 10,48(1)
	fneg 10,10
.LBE11466:
.LBE11540:
	.loc 4 1843 0
	stfs 18,76(1)
.LBB11541:
.LBB11467:
	.loc 4 1844 0
	lfs 18,40(1)
	.loc 4 1793 0
	stfs 10,20(1)
	.loc 4 1844 0
	fmadds 18,15,12,18
	.loc 4 1848 0
	lfs 10,44(1)
.LBE11467:
.LBE11541:
	.loc 4 1816 0
	stfs 21,44(1)
	.loc 4 1839 0
	fmuls 15,15,9
.LBB11542:
.LBB11468:
	.loc 4 1848 0
	fmsubs 10,14,9,10
.LBE11468:
.LBE11542:
.LBB11543:
.LBB11412:
	.loc 4 1823 0
	lfs 21,16(1)
.LBE11412:
.LBE11543:
.LBB11544:
.LBB11469:
	.loc 4 1844 0
	stfs 18,40(1)
	.loc 4 1849 0
	lfs 18,72(1)
	.loc 4 1848 0
	stfs 10,88(1)
	.loc 4 1849 0
	fmsubs 14,14,13,18
.LBE11469:
.LBE11544:
.LBB11545:
.LBB11413:
	.loc 4 1817 0
	lfs 18,8(1)
.LBE11413:
.LBE11545:
.LBB11546:
.LBB11470:
	.loc 2 1229 0
	lfs 10,68(3)
.LBE11470:
.LBE11546:
.LBB11547:
.LBB11414:
	.loc 4 1817 0
	fmadds 18,28,5,18
.LBE11414:
.LBE11547:
.LBB11548:
.LBB11471:
	.loc 4 1849 0
	stfs 14,92(1)
.LBE11471:
.LBE11548:
.LBB11549:
.LBB11415:
	.loc 4 1818 0
	lfs 14,12(1)
	.loc 4 1817 0
	stfs 18,36(1)
	.loc 4 1818 0
	fmadds 14,28,3,14
.LBE11415:
.LBE11549:
.LBB11550:
.LBB11472:
	.loc 4 1844 0
	lfs 18,40(1)
.LBE11472:
.LBE11550:
	.loc 4 1814 0
	stfs 19,12(1)
.LBB11551:
.LBB11416:
	.loc 4 1818 0
	stfs 14,24(1)
	.loc 4 1819 0
	fmadds 14,28,4,16
.LBE11416:
.LBE11551:
.LBB11552:
.LBB11473:
	.loc 4 1844 0
	lfs 16,20(1)
.LBE11473:
.LBE11552:
	.loc 4 1815 0
	stfs 20,20(1)
.LBB11553:
.LBB11474:
	.loc 4 1844 0
	fmadds 16,16,10,18
	.loc 4 1842 0
	lfs 18,64(1)
	fmsubs 18,17,11,18
	.loc 4 1844 0
	stfs 16,40(1)
.LBE11474:
.LBE11553:
	.loc 4 1796 0
	fmuls 16,30,31
.LBB11554:
.LBB11417:
	.loc 4 1823 0
	fmsubs 30,22,6,21
	.loc 4 1824 0
	lfs 22,56(1)
	.loc 4 1825 0
	lfs 31,60(1)
	.loc 4 1824 0
	fmsubs 23,23,6,22
.LBE11417:
.LBE11554:
.LBB11555:
.LBB11475:
	.loc 4 1842 0
	stfs 18,72(1)
	.loc 4 1843 0
	lfs 22,76(1)
.LBE11475:
.LBE11555:
.LBB11556:
.LBB11418:
	.loc 4 1825 0
	fmsubs 24,24,6,31
.LBE11418:
.LBE11556:
.LBB11557:
.LBB11476:
	.loc 4 1843 0
	lfs 21,100(1)
.LBE11476:
.LBE11557:
.LBB11558:
.LBB11419:
	.loc 4 1823 0
	fmadds 30,29,5,30
.LBE11419:
.LBE11558:
	.loc 4 1847 0
	lfs 18,68(1)
.LBB11559:
.LBB11420:
	.loc 4 1824 0
	fmadds 23,29,3,23
.LBE11420:
.LBE11559:
.LBB11560:
.LBB11477:
	.loc 4 1843 0
	fmsubs 21,21,11,22
.LBE11477:
.LBE11560:
	.loc 4 1846 0
	lfs 31,28(1)
	.loc 4 1847 0
	fmuls 18,18,13
.LBB11561:
.LBB11478:
	.loc 4 1848 0
	lfs 22,28(1)
.LBE11478:
.LBE11561:
	.loc 4 1846 0
	fmuls 31,31,13
.LBB11562:
.LBB11421:
	.loc 4 1824 0
	stfs 23,8(1)
.LBE11421:
.LBE11562:
.LBB11563:
.LBB11479:
	.loc 4 1843 0
	stfs 21,76(1)
.LBE11479:
.LBE11563:
.LBB11564:
.LBB11352:
	.loc 4 1796 0
	fmsubs 2,1,2,16
.LVL639:
.LBE11352:
.LBE11564:
	.loc 4 1847 0
	stfs 18,84(1)
.LBB11565:
.LBB11422:
	.loc 4 1825 0
	fmadds 24,29,4,24
.LBE11422:
.LBE11565:
.LBB11566:
.LBB11480:
	.loc 4 1793 0
	lfs 21,52(1)
.LBE11480:
.LBE11566:
	.loc 4 1813 0
	fmuls 6,28,6
.LBB11567:
.LBB11481:
	.loc 4 1848 0
	lfs 18,88(1)
.LBE11481:
.LBE11567:
	.loc 4 1846 0
	stfs 31,80(1)
.LBB11568:
.LBB11482:
	.loc 4 1793 0
	fneg 31,21
	.loc 4 1848 0
	fmadds 19,22,12,18
	.loc 4 1793 0
	lfs 21,32(1)
	.loc 4 1849 0
	lfs 22,92(1)
.LBE11482:
.LBE11568:
.LBB11569:
.LBB11430:
	.loc 4 1813 0
	fmsubs 29,29,7,6
.LVL640:
.LBE11430:
.LBE11569:
.LBB11570:
.LBB11483:
	.loc 4 1793 0
	fneg 20,21
	lfs 23,36(1)
	.loc 4 1849 0
	fmadds 21,17,12,22
.LBE11483:
.LBE11570:
.LBB11571:
.LBB11366:
	.loc 4 1815 0
	lfs 1,20(1)
.LBE11366:
.LBE11571:
.LBB11572:
.LBB11484:
	.loc 4 1793 0
	fneg 23,23
.LBE11484:
.LBE11572:
.LBB11573:
.LBB11423:
	.loc 4 1816 0
	lfs 16,44(1)
.LBE11423:
.LBE11573:
.LBB11574:
.LBB11485:
	.loc 4 1848 0
	fmadds 19,31,10,19
.LBE11485:
.LBE11574:
.LBB11575:
.LBB11433:
	.loc 4 1814 0
	lfs 31,12(1)
.LBE11433:
.LBE11575:
.LBB11576:
.LBB11486:
	.loc 4 1849 0
	fmadds 21,20,10,21
.LBE11486:
.LBE11576:
	.loc 4 1840 0
	lfs 18,96(1)
.LBB11577:
.LBB11487:
	.loc 4 1793 0
	stfs 23,64(1)
.LBE11487:
.LBE11577:
.LBB11578:
.LBB11434:
	.loc 4 1814 0
	fmsubs 25,25,7,31
.LVL641:
.LBE11434:
.LBE11578:
.LBB11579:
.LBB11488:
	.loc 4 1842 0
	lfs 23,72(1)
.LBE11488:
.LBE11579:
.LBB11580:
.LBB11367:
	.loc 4 1815 0
	fmsubs 26,26,7,1
.LVL642:
.LBE11367:
.LBE11580:
.LBB11581:
.LBB11489:
	.loc 4 1849 0
	stfs 21,60(1)
.LBE11489:
.LBE11581:
.LBB11582:
.LBB11424:
	.loc 4 1816 0
	fmsubs 27,27,7,16
.LVL643:
.LBE11424:
.LBE11582:
	.loc 4 1841 0
	lfs 21,48(1)
.LBB11583:
.LBB11435:
	.loc 4 1814 0
	fmadds 25,2,5,25
.LBE11435:
.LBE11583:
.LBB11584:
.LBB11490:
	.loc 4 1793 0
	lfs 31,24(1)
.LBE11490:
.LBE11584:
	.loc 4 1840 0
	fmuls 16,18,9
.LBB11585:
.LBB11491:
	.loc 4 1843 0
	lfs 1,76(1)
.LBE11491:
.LBE11585:
.LBB11586:
.LBB11425:
	.loc 4 1816 0
	fmadds 27,2,4,27
	.loc 4 1823 0
	stfs 30,16(1)
.LBE11425:
.LBE11586:
	.loc 4 1841 0
	fmuls 30,21,13
.LBB11587:
.LBB11492:
	.loc 4 1842 0
	fmadds 21,14,0,23
	lfs 5,64(1)
	.loc 4 1846 0
	lfs 18,80(1)
	.loc 4 1793 0
	fneg 23,31
	.loc 4 1848 0
	stfs 19,56(1)
	.loc 4 1843 0
	fmadds 19,14,12,1
	.loc 4 1847 0
	lfs 31,100(1)
	.loc 4 1842 0
	fmadds 21,5,10,21
	.loc 4 1847 0
	lfs 1,84(1)
	.loc 4 1846 0
	fmsubs 17,17,9,18
.LBE11492:
.LBE11587:
.LBB11588:
.LBB11589:
	.loc 2 1229 0
	lfs 22,32(3)
.LBE11589:
.LBE11588:
.LBB11590:
.LBB11493:
	.loc 4 1843 0
	fmadds 19,23,10,19
	.loc 4 1847 0
	fmsubs 18,31,9,1
.LBE11493:
.LBE11590:
	.loc 4 1856 0
	lfs 1,40(1)
.LBB11591:
.LBB11436:
	.loc 4 1814 0
	stfs 25,12(1)
.LBE11436:
.LBE11591:
.LBB11592:
.LBB11368:
	.loc 4 1815 0
	fmadds 26,2,3,26
.LBE11368:
.LBE11592:
	.loc 4 1856 0
	fmuls 31,1,22
.LBB11593:
.LBB11594:
	.loc 2 1229 0
	lfs 1,24(3)
.LBE11594:
.LBE11593:
.LBB11595:
.LBB11494:
	.loc 4 1842 0
	stfs 21,20(1)
	.loc 4 1847 0
	fmadds 18,24,12,18
	.loc 4 1793 0
	lfs 21,16(1)
	.loc 4 1846 0
	fmadds 17,24,0,17
	.loc 4 1839 0
	lfs 23,28(1)
.LBE11494:
.LBE11595:
	.loc 4 1837 0
	fmuls 14,14,9
.LBB11596:
.LBB11495:
	.loc 4 1793 0
	fneg 21,21
	.loc 4 1840 0
	lfs 5,68(1)
	.loc 4 1839 0
	fmsubs 15,23,11,15
.LBE11495:
.LBE11596:
	.loc 4 1845 0
	lfs 23,52(1)
.LBB11597:
.LBB11496:
	.loc 4 1840 0
	fmsubs 16,5,11,16
	.loc 4 1793 0
	lfs 5,8(1)
	stfs 21,44(1)
.LBE11496:
.LBE11597:
	.loc 4 1845 0
	fmuls 20,23,13
.LBB11598:
.LBB11497:
	.loc 4 1841 0
	lfs 21,32(1)
	.loc 4 1793 0
	fneg 4,5
.LBE11497:
.LBE11598:
	.loc 4 1857 0
	lfs 23,56(1)
.LBB11599:
.LBB11498:
	.loc 4 1840 0
	fmadds 16,27,12,16
.LBE11498:
.LBE11599:
	.loc 4 1838 0
	lfs 28,48(1)
.LVL644:
.LBB11600:
.LBB11499:
	.loc 4 1841 0
	fmsubs 30,21,11,30
.LBE11499:
.LBE11600:
	.loc 4 1856 0
	lfs 21,60(1)
.LBB11601:
.LBB11500:
	.loc 4 1847 0
	fmadds 4,4,10,18
.LBE11500:
.LBE11601:
	.loc 4 1838 0
	fmuls 28,28,9
.LBB11602:
.LBB11501:
	.loc 4 1841 0
	lfs 18,24(1)
.LBE11501:
.LBE11602:
	.loc 4 1856 0
	fmsubs 31,21,1,31
.LBB11603:
.LBB11604:
	.loc 2 1229 0
	lfs 25,28(3)
.LBE11604:
.LBE11603:
	.loc 4 1857 0
	fmuls 21,23,22
.LBB11605:
.LBB11502:
	.loc 4 1793 0
	lfs 23,12(1)
.LBE11502:
.LBE11605:
	.loc 4 1838 0
	stfs 28,48(1)
.LBB11606:
.LBB11503:
	.loc 4 1793 0
	fneg 28,26
	fneg 3,23
	.loc 4 1846 0
	lfs 23,44(1)
	.loc 4 1841 0
	fmadds 30,18,0,30
.LBE11503:
.LBE11606:
	.loc 4 1855 0
	lfs 18,40(1)
.LBB11607:
.LBB11504:
	.loc 4 1846 0
	fmadds 17,23,10,17
	.loc 4 1845 0
	lfs 23,32(1)
	.loc 4 1840 0
	fmadds 16,28,10,16
	.loc 4 1841 0
	lfs 28,64(1)
	.loc 4 1845 0
	fmsubs 20,23,9,20
.LBE11504:
.LBE11607:
	.loc 4 1836 0
	lfs 6,24(1)
	.loc 4 1855 0
	fmuls 23,18,25
	.loc 4 1793 0
	lfs 18,20(1)
.LBB11608:
.LBB11505:
	.loc 4 1841 0
	fmadds 30,28,12,30
	.loc 4 1838 0
	lfs 28,48(1)
	.loc 4 1837 0
	fmsubs 24,24,11,14
	.loc 4 1838 0
	lfs 14,52(1)
.LBE11505:
.LBE11608:
	.loc 4 1793 0
	fneg 18,18
.LBB11609:
.LBB11610:
	.loc 2 1229 0
	lfs 5,36(3)
.LBE11610:
.LBE11609:
	.loc 4 1836 0
	fmuls 7,6,9
.LBB11611:
.LBB11506:
	.loc 4 1838 0
	fmsubs 6,14,11,28
	.loc 4 1845 0
	lfs 28,8(1)
.LBE11506:
.LBE11611:
	.loc 4 1793 0
	stfs 18,28(1)
.LBB11612:
.LBB11445:
	fnmadds 2,2,8,29
.LVL645:
.LBE11445:
.LBE11612:
	.loc 4 1857 0
	lfs 18,60(1)
.LBB11613:
.LBB11507:
	.loc 4 1845 0
	fmadds 14,28,0,20
.LBE11507:
.LBE11613:
	.loc 4 1855 0
	lfs 28,56(1)
.LBB11614:
.LBB11508:
	.loc 4 1839 0
	fmadds 15,27,0,15
	.loc 4 1845 0
	lfs 29,44(1)
.LBE11508:
.LBE11614:
	.loc 4 1856 0
	fmadds 31,19,5,31
.LVL646:
	.loc 4 1857 0
	fmsubs 21,18,25,21
.LBB11615:
.LBB11616:
	.loc 2 1229 0
	lfs 18,40(3)
.LBE11616:
.LBE11615:
	.loc 4 1855 0
	fmsubs 23,28,1,23
	.loc 4 1856 0
	lfs 28,28(1)
.LBB11617:
.LBB11509:
	.loc 4 1845 0
	fmadds 14,29,12,14
.LBE11509:
.LBE11617:
.LBB11618:
.LBB11530:
	.loc 4 1836 0
	lfs 29,8(1)
.LBE11530:
.LBE11618:
.LBB11619:
.LBB11510:
	.loc 4 1839 0
	fmadds 15,3,10,15
.LBE11510:
.LBE11619:
.LBB11620:
.LBB11621:
	.loc 2 1229 0
	lfs 20,44(3)
.LBE11621:
.LBE11620:
	.loc 4 1854 0
	fmuls 19,19,25
	.loc 4 1835 0
	lfs 8,36(1)
	.loc 4 1856 0
	fmadds 31,28,18,31
	.loc 4 1857 0
	fmadds 21,4,5,21
	.loc 4 1793 0
	fneg 28,17
.LBB11622:
.LBB11531:
	.loc 4 1836 0
	fmsubs 7,29,11,7
.LBE11531:
.LBE11622:
	.loc 4 1853 0
	lfs 29,20(1)
.LBB11623:
.LBB11511:
	.loc 4 1837 0
	fmadds 27,27,13,24
.LVL647:
.LBE11511:
.LBE11623:
	.loc 4 1861 0
	lfs 24,0(3)
.LBB11624:
.LBB11512:
	.loc 4 1838 0
	fmadds 6,26,0,6
.LBE11512:
.LBE11624:
	.loc 4 1854 0
	fmsubs 4,4,1,19
.LBE11646:
	.loc 4 1862 0
	lfd 19,144(1)
.LBB11647:
	.loc 4 1855 0
	fmadds 23,16,5,23
	.loc 4 1856 0
	fmadds 31,30,20,31
	.loc 4 1857 0
	fmadds 21,28,18,21
	.loc 4 1861 0
	lfs 28,4(3)
	.loc 4 1835 0
	fmuls 9,8,9
	.loc 4 1853 0
	fmuls 8,29,25
	.loc 4 1793 0
	fneg 29,15
	fnmadds 27,2,10,27
.LBB11625:
.LBB11446:
	.loc 4 1835 0
	lfs 10,16(1)
.LBE11446:
.LBE11625:
.LBB11626:
.LBB11513:
	.loc 4 1838 0
	fmadds 6,3,12,6
.LBE11513:
.LBE11626:
.LBB11627:
.LBB11532:
	.loc 4 1836 0
	fmadds 26,26,13,7
.LVL648:
.LBE11532:
.LBE11627:
	.loc 4 1852 0
	fmuls 30,30,25
.LBE11647:
	.loc 4 1862 0
	lfd 25,192(1)
.LBB11648:
	.loc 4 1853 0
	fmsubs 17,17,1,8
	.loc 4 1854 0
	fmadds 4,16,22,4
.LBE11648:
	.loc 4 1862 0
	lfd 16,120(1)
.LBB11649:
	.loc 4 1855 0
	fmadds 23,29,18,23
.LBE11649:
	.loc 4 1862 0
	lfd 29,224(1)
.LBB11650:
	.loc 4 1861 0
	fmuls 31,31,28
.LBE11650:
	.loc 4 1862 0
	lfd 28,216(1)
.LBB11651:
	.loc 4 1857 0
	fmadds 21,14,20,21
.LBB11628:
.LBB11447:
	.loc 4 1835 0
	fmsubs 9,10,11,9
	lfs 11,12(1)
.LBE11447:
.LBE11628:
.LBB11629:
.LBB11533:
	.loc 4 1836 0
	fmadds 12,2,12,26
.LBE11533:
.LBE11629:
	.loc 4 1861 0
	lfs 26,8(3)
	.loc 4 1852 0
	fmsubs 14,14,1,30
.LBE11651:
	.loc 4 1862 0
	lfd 30,232(1)
.LBB11652:
	.loc 4 1853 0
	fmadds 15,15,22,17
.LBE11652:
	.loc 4 1862 0
	lfd 17,128(1)
.LBB11653:
	.loc 4 1855 0
	fmadds 23,6,20,23
.LBB11630:
.LBB11448:
	.loc 4 1835 0
	fmadds 13,11,13,9
.LBE11448:
.LBE11630:
	.loc 4 1861 0
	lfs 11,16(3)
	.loc 4 1854 0
	fmadds 4,27,18,4
	.loc 4 1861 0
	fmsubs 21,21,24,31
.LBE11653:
	.loc 4 1862 0
	lfd 24,184(1)
.LBB11654:
.LBB11631:
.LBB11449:
	.loc 4 1835 0
	fmadds 2,2,0,13
.LVL649:
.LBE11449:
.LBE11631:
	.loc 4 1861 0
	lfs 13,12(3)
	.loc 4 1853 0
	fmadds 27,27,5,15
.LBE11654:
	.loc 4 1862 0
	lfd 15,112(1)
.LBB11655:
	.loc 4 1861 0
	fmadds 31,23,26,21
.LBE11655:
	.loc 4 1862 0
	lfd 21,160(1)
.LBB11656:
	.loc 4 1852 0
	fmadds 6,6,22,14
.LVL650:
.LBE11656:
	.loc 4 1862 0
	lfd 23,176(1)
.LBB11657:
	.loc 4 1793 0
	fneg 0,12
.LBE11657:
	.loc 4 1862 0
	lfd 14,104(1)
.LBB11658:
	.loc 4 1793 0
	fnmadds 12,12,20,4
.LVL651:
.LBE11658:
	.loc 4 1862 0
	lfd 22,168(1)
.LBB11659:
	.loc 4 1853 0
	fmadds 20,2,20,27
.LBE11659:
	.loc 4 1862 0
	lfd 26,200(1)
.LBB11660:
	.loc 4 1852 0
	fmadds 5,0,5,6
.LBE11660:
	.loc 4 1862 0
	lfd 27,208(1)
.LBB11661:
	.loc 4 1861 0
	fmadds 12,12,13,31
.LBE11661:
	.loc 4 1862 0
	lfd 31,240(1)
.LBB11662:
	.loc 4 1793 0
	fnmadds 2,2,18,5
.LVL652:
.LBE11662:
	.loc 4 1862 0
	lfd 18,136(1)
.LBB11663:
	.loc 4 1861 0
	fmadds 20,20,11,12
	lfs 12,20(3)
.LBE11663:
	.loc 4 1862 0
	fmadds 1,2,12,20
	lfd 20,152(1)
	addi 1,1,248
.LCFI79:
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
	blr
	.cfi_endproc
.LFE2568:
	.size	_ZNK6idMat611DeterminantEv, .-_ZNK6idMat611DeterminantEv
	.align 2
	.globl _ZN6idMat611InverseSelfEv
	.type	_ZN6idMat611InverseSelfEv, @function
_ZN6idMat611InverseSelfEv:
.LFB2569:
	.loc 4 1869 0
	.cfi_startproc
.LVL653:
	stwu 1,-856(1)
.LCFI80:
	.cfi_def_cfa_offset 856
	mr 9,3
.LVL654:
	stfd 14,712(1)
	stfd 15,720(1)
	stfd 19,752(1)
	stfd 21,768(1)
	stfd 22,776(1)
	stfd 23,784(1)
	stfd 24,792(1)
	stfd 25,800(1)
	stfd 27,816(1)
	stfd 28,824(1)
	stfd 29,832(1)
	stfd 30,840(1)
	stfd 31,848(1)
	stfd 16,728(1)
	stfd 17,736(1)
	stfd 18,744(1)
	stfd 20,760(1)
	stfd 26,808(1)
.LBB11664:
	.loc 4 1879 0
	lfs 16,116(3)
	.cfi_offset 58, -48
	.cfi_offset 52, -96
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	.cfi_offset 51, -104
	.cfi_offset 47, -136
	.cfi_offset 46, -144
	.loc 4 1875 0
	lfs 0,120(3)
	lfs 1,96(3)
	stfs 0,24(1)
	.loc 4 1879 0
	fmuls 0,0,16
	lfs 18,140(3)
	.loc 4 1878 0
	lfs 17,136(3)
	.loc 4 1879 0
	fmsubs 0,1,18,0
	.loc 4 1875 0
	lfs 2,124(3)
	.loc 4 1876 0
	lfs 3,128(3)
	.loc 4 1875 0
	lfs 4,100(3)
	.loc 4 1883 0
	fmuls 7,2,16
	.loc 4 1879 0
	stfs 0,92(1)
	.loc 4 1889 0
	fmuls 0,17,16
	.loc 4 1894 0
	lfs 26,88(3)
	.loc 4 1886 0
	fmuls 12,3,16
	.loc 4 1877 0
	lfs 20,132(3)
	.loc 4 1883 0
	fmsubs 7,4,18,7
	.loc 4 1875 0
	stfs 1,16(1)
.LVL655:
	stfs 2,48(1)
.LVL656:
	.loc 4 1888 0
	fmuls 13,20,16
	.loc 4 1876 0
	stfs 3,640(1)
	.loc 4 1875 0
	stfs 4,56(1)
.LVL657:
	.loc 4 1878 0
	lfs 15,112(3)
	lfs 6,24(1)
	.loc 4 1889 0
	fmsubs 0,15,18,0
	.loc 4 1883 0
	stfs 7,124(1)
	.loc 4 1901 0
	lfs 7,92(1)
	.loc 4 1885 0
	fmuls 9,3,15
	.loc 4 1877 0
	lfs 19,108(3)
	.loc 4 1887 0
	fmuls 10,20,15
	.loc 4 1889 0
	stfs 0,88(1)
	.loc 4 1878 0
	fmuls 0,6,15
	.loc 4 1876 0
	lfs 5,104(3)
	.loc 4 1901 0
	fmuls 11,7,26
	.loc 4 1892 0
	lfs 30,72(3)
	.loc 4 1888 0
	fmsubs 13,19,18,13
	.loc 4 1878 0
	fmsubs 0,1,17,0
	.loc 4 1901 0
	lfs 8,88(1)
	.loc 4 1886 0
	fmsubs 12,5,18,12
	.loc 4 1895 0
	lfs 25,92(3)
	.loc 4 1901 0
	fmsubs 11,8,30,11
	.loc 4 1888 0
	stfs 13,36(1)
	.loc 4 1878 0
	stfs 0,64(1)
	.loc 4 1885 0
	fmsubs 9,5,17,9
	.loc 4 1886 0
	stfs 12,80(1)
	.loc 4 1887 0
	fmsubs 10,19,17,10
	.loc 4 1901 0
	lfs 22,64(1)
	.loc 4 1882 0
	fmuls 6,2,15
	.loc 4 1910 0
	lfs 14,80(1)
	.loc 4 1911 0
	lfs 21,36(1)
	.loc 4 1901 0
	fmadds 11,22,25,11
	.loc 4 1907 0
	lfs 13,124(1)
	.loc 4 1882 0
	fmsubs 6,4,17,6
	.loc 4 1877 0
	lfs 23,24(1)
	.loc 4 1911 0
	fmuls 0,21,26
	.loc 4 1907 0
	fmuls 12,13,26
	.loc 4 1892 0
	lfs 29,76(3)
	.loc 4 1910 0
	fmuls 13,14,26
	.loc 4 1892 0
	lfs 28,80(3)
	.loc 4 1893 0
	lfs 27,84(3)
	.loc 4 1907 0
	lfs 24,88(1)
	.loc 4 1901 0
	stfs 11,284(1)
	.loc 4 1877 0
	fmuls 11,23,19
	.loc 4 1885 0
	stfs 9,128(1)
	.loc 4 1907 0
	fmsubs 12,24,29,12
	.loc 4 1887 0
	stfs 10,84(1)
	.loc 4 1910 0
	fmsubs 13,24,28,13
	.loc 4 1911 0
	fmsubs 0,24,27,0
	.loc 4 1910 0
	lfs 31,128(1)
	.loc 4 1877 0
	fmsubs 11,1,20,11
	.loc 4 1911 0
	lfs 1,84(1)
	.loc 4 1907 0
	fmadds 12,6,25,12
	.loc 4 1914 0
	lfs 9,60(3)
	.loc 4 1910 0
	fmadds 13,31,25,13
	.loc 4 1876 0
	stfs 5,644(1)
	.loc 4 1911 0
	fmadds 0,1,25,0
	.loc 4 1882 0
	stfs 6,136(1)
	.loc 4 1900 0
	fmuls 8,7,27
	.loc 4 1877 0
	stfs 11,112(1)
	.loc 4 1907 0
	stfs 12,296(1)
	.loc 4 1899 0
	fmuls 10,22,27
	.loc 4 1910 0
	stfs 13,300(1)
	.loc 4 1881 0
	fmuls 13,2,19
	.loc 4 1911 0
	stfs 0,232(1)
	.loc 4 1884 0
	fmuls 0,3,19
	.loc 4 1900 0
	fmsubs 11,21,30,8
	.loc 4 1884 0
	lfs 21,644(1)
	.loc 4 1906 0
	lfs 2,124(1)
	.loc 4 1905 0
	fmuls 8,6,27
	.loc 4 1884 0
	fmsubs 0,21,20,0
	.loc 4 1923 0
	lfs 4,284(1)
	.loc 4 1908 0
	fmuls 6,31,27
	.loc 4 1899 0
	lfs 22,112(1)
	.loc 4 1909 0
	fmuls 5,14,27
	.loc 4 1881 0
	lfs 14,56(1)
	.loc 4 1906 0
	fmuls 7,2,27
	.loc 4 1884 0
	stfs 0,104(1)
	.loc 4 1906 0
	lfs 0,36(1)
	.loc 4 1881 0
	fmsubs 13,14,20,13
	.loc 4 1899 0
	fmsubs 12,1,30,10
	.loc 4 1914 0
	lfs 10,48(3)
	.loc 4 1923 0
	fmuls 3,4,9
	.loc 4 1898 0
	lfs 24,92(1)
	.loc 4 1905 0
	fmsubs 4,1,29,8
	.loc 4 1881 0
	stfs 13,120(1)
	.loc 4 1906 0
	fmsubs 7,0,29,7
	.loc 4 1928 0
	lfs 8,300(1)
	.loc 4 1908 0
	fmsubs 0,1,28,6
	.loc 4 1909 0
	lfs 1,36(1)
	.loc 4 1899 0
	fmadds 12,22,26,12
	.loc 4 1927 0
	lfs 6,296(1)
	.loc 4 1909 0
	fmsubs 13,1,28,5
	.loc 4 1923 0
	lfs 5,232(1)
	.loc 4 1900 0
	fmadds 11,22,25,11
	.loc 4 1923 0
	fmsubs 1,5,10,3
	.loc 4 1905 0
	lfs 3,120(1)
	.loc 4 1899 0
	stfs 12,216(1)
	.loc 4 1876 0
	fmuls 12,23,21
	.loc 4 1905 0
	fmadds 4,3,26,4
	.loc 4 1876 0
	lfs 21,16(1)
	.loc 4 1896 0
	fmuls 2,22,28
	.loc 4 1876 0
	lfs 22,640(1)
	.loc 4 1897 0
	lfs 23,64(1)
	.loc 4 1906 0
	fmadds 7,3,25,7
	.loc 4 1876 0
	fmsubs 12,21,22,12
	.loc 4 1905 0
	stfs 4,372(1)
	.loc 4 1908 0
	lfs 4,104(1)
	.loc 4 1897 0
	fmuls 31,23,28
	.loc 4 1900 0
	stfs 11,172(1)
	.loc 4 1898 0
	fmuls 23,24,28
	.loc 4 1909 0
	fmadds 13,4,25,13
	.loc 4 1876 0
	stfs 12,96(1)
	.loc 4 1897 0
	lfs 12,128(1)
	.loc 4 1908 0
	fmadds 0,4,26,0
	.loc 4 1914 0
	lfs 11,56(3)
	.loc 4 1927 0
	fmuls 24,6,9
	.loc 4 1909 0
	stfs 13,228(1)
	.loc 4 1897 0
	fmsubs 13,12,30,31
	.loc 4 1921 0
	lfs 31,172(1)
	.loc 4 1928 0
	fmuls 14,8,9
	.loc 4 1880 0
	lfs 5,48(1)
	.loc 4 1902 0
	fmuls 3,3,28
	.loc 4 1921 0
	fmuls 31,31,11
	.loc 4 1898 0
	lfs 21,80(1)
	.loc 4 1906 0
	stfs 7,292(1)
	.loc 4 1880 0
	lfs 7,644(1)
	.loc 4 1898 0
	fmsubs 12,21,30,23
	.loc 4 1914 0
	lfs 8,52(3)
	.loc 4 1915 0
	lfs 6,64(3)
	.loc 4 1903 0
	lfs 22,136(1)
	.loc 4 1904 0
	lfs 23,124(1)
	.loc 4 1908 0
	stfs 0,220(1)
	.loc 4 1880 0
	fmuls 0,5,7
	.loc 4 1921 0
	stfs 31,32(1)
	.loc 4 1896 0
	fmsubs 5,4,30,2
	.loc 4 1922 0
	lfs 4,284(1)
	.loc 4 1903 0
	fmuls 2,22,28
	.loc 4 1923 0
	lfs 22,172(1)
	.loc 4 1904 0
	fmuls 21,23,28
	.loc 4 1922 0
	fmuls 4,4,11
	.loc 4 1880 0
	lfs 31,56(1)
	.loc 4 1869 0
	lfs 7,216(1)
	.loc 4 1927 0
	lfs 23,232(1)
	.loc 4 1922 0
	stfs 4,132(1)
	.loc 4 1923 0
	fmadds 4,22,6,1
	.loc 4 1880 0
	lfs 1,640(1)
	.loc 4 1869 0
	fneg 7,7
	.loc 4 1897 0
	lfs 22,96(1)
	.loc 4 1927 0
	fmsubs 24,23,8,24
	.loc 4 1880 0
	fmsubs 0,31,1,0
	.loc 4 1897 0
	fmadds 13,22,26,13
	.loc 4 1869 0
	stfs 7,384(1)
	.loc 4 1898 0
	fmadds 12,22,25,12
	.loc 4 1916 0
	lfs 7,68(3)
	.loc 4 1880 0
	stfs 0,108(1)
	.loc 4 1928 0
	fmsubs 14,23,11,14
	.loc 4 1875 0
	lfs 0,24(1)
	.loc 4 1896 0
	fmadds 5,22,27,5
	.loc 4 1923 0
	lfs 23,384(1)
	.loc 4 1875 0
	fmuls 1,31,0
	.loc 4 1897 0
	stfs 13,212(1)
	.loc 4 1903 0
	lfs 0,128(1)
	.loc 4 1923 0
	fmadds 4,23,7,4
	.loc 4 1902 0
	lfs 13,104(1)
	.loc 4 1898 0
	stfs 12,168(1)
	.loc 4 1902 0
	fmsubs 3,13,29,3
	.loc 4 1895 0
	lfs 12,92(1)
	.loc 4 1903 0
	fmsubs 13,0,29,2
	.loc 4 1904 0
	lfs 2,80(1)
	.loc 4 1895 0
	fmuls 22,12,29
	.loc 4 1922 0
	lfs 0,300(1)
	.loc 4 1904 0
	fmsubs 12,2,29,21
	.loc 4 1922 0
	lfs 2,132(1)
	.loc 4 1896 0
	stfs 5,440(1)
	.loc 4 1923 0
	stfs 4,376(1)
	.loc 4 1922 0
	fmsubs 0,0,10,2
	.loc 4 1893 0
	lfs 4,112(1)
	.loc 4 1894 0
	lfs 5,64(1)
	.loc 4 1893 0
	fmuls 31,4,29
	.loc 4 1921 0
	lfs 4,228(1)
	.loc 4 1894 0
	fmuls 23,5,29
	.loc 4 1921 0
	lfs 5,32(1)
	.loc 4 1922 0
	stfs 0,132(1)
	.loc 4 1921 0
	fmsubs 21,4,10,5
	.loc 4 1869 0
	lfs 0,372(1)
	.loc 4 1925 0
	lfs 4,292(1)
	.loc 4 1926 0
	lfs 5,296(1)
	.loc 4 1869 0
	fneg 0,0
	.loc 4 1925 0
	fmuls 4,4,11
	.loc 4 1926 0
	fmuls 5,5,11
	.loc 4 1925 0
	stfs 4,208(1)
	.loc 4 1926 0
	stfs 5,144(1)
	.loc 4 1869 0
	stfs 0,388(1)
	lfs 4,220(1)
	.loc 4 1927 0
	lfs 2,292(1)
	.loc 4 1869 0
	fneg 4,4
	.loc 4 1931 0
	lfs 0,32(3)
	.loc 4 1927 0
	fmadds 5,2,6,24
	.loc 4 1928 0
	lfs 24,228(1)
	.loc 4 1875 0
	lfs 2,16(1)
	.loc 4 1869 0
	stfs 4,524(1)
	.loc 4 1928 0
	fmadds 4,24,6,14
	.loc 4 1903 0
	lfs 24,108(1)
	.loc 4 1875 0
	lfs 14,48(1)
	.loc 4 1902 0
	fmadds 3,24,27,3
	.loc 4 1903 0
	fmadds 13,24,26,13
	.loc 4 1875 0
	fmsubs 1,2,14,1
	.loc 4 1927 0
	lfs 2,388(1)
	.loc 4 1902 0
	stfs 3,496(1)
	.loc 4 1904 0
	fmadds 12,24,25,12
	.loc 4 1928 0
	lfs 3,524(1)
	.loc 4 1927 0
	fmadds 5,2,7,5
	.loc 4 1903 0
	stfs 13,304(1)
	.loc 4 1928 0
	fmadds 4,3,7,4
	.loc 4 1895 0
	lfs 13,124(1)
	.loc 4 1875 0
	stfs 1,72(1)
.LVL658:
	.loc 4 1895 0
	fmsubs 24,13,30,22
	.loc 4 1869 0
	lfs 1,440(1)
.LVL659:
	lfs 13,212(1)
	.loc 4 1920 0
	lfs 2,216(1)
	.loc 4 1869 0
	fneg 1,1
	.loc 4 1921 0
	lfs 3,168(1)
	.loc 4 1869 0
	fneg 13,13
	.loc 4 1904 0
	stfs 12,288(1)
	.loc 4 1928 0
	stfs 4,464(1)
	.loc 4 1894 0
	lfs 12,136(1)
	.loc 4 1893 0
	lfs 4,120(1)
	.loc 4 1918 0
	lfs 14,172(1)
	.loc 4 1927 0
	stfs 5,460(1)
	.loc 4 1893 0
	fmsubs 5,4,30,31
	.loc 4 1894 0
	fmsubs 4,12,30,23
	.loc 4 1919 0
	lfs 23,284(1)
	.loc 4 1921 0
	fmadds 12,3,9,21
	.loc 4 1925 0
	lfs 21,228(1)
	.loc 4 1920 0
	fmuls 31,2,11
	.loc 4 1925 0
	lfs 2,208(1)
	.loc 4 1918 0
	fmuls 22,14,8
	.loc 4 1869 0
	stfs 1,368(1)
	.loc 4 1922 0
	lfs 14,132(1)
	.loc 4 1919 0
	fmuls 1,23,8
	.loc 4 1869 0
	stfs 13,380(1)
	.loc 4 1925 0
	fmsubs 23,21,8,2
	.loc 4 1926 0
	lfs 13,300(1)
	.loc 4 1922 0
	fmadds 3,3,6,14
	.loc 4 1926 0
	lfs 21,144(1)
	.loc 4 1935 0
	lfs 2,376(1)
	.loc 4 1926 0
	fmsubs 14,13,8,21
	.loc 4 1931 0
	lfs 13,24(3)
	.loc 4 1935 0
	fmuls 21,2,0
	.loc 4 1894 0
	lfs 2,72(1)
	fmadds 4,26,2,4
	.loc 4 1893 0
	fmadds 5,27,2,5
	.loc 4 1895 0
	fmadds 24,25,2,24
	.loc 4 1894 0
	stfs 4,208(1)
	.loc 4 1921 0
	lfs 4,368(1)
	.loc 4 1893 0
	stfs 5,596(1)
	.loc 4 1921 0
	fmadds 12,4,7,12
	.loc 4 1922 0
	lfs 5,380(1)
	.loc 4 1895 0
	stfs 24,132(1)
	.loc 4 1922 0
	fmadds 3,5,7,3
	.loc 4 1918 0
	lfs 24,292(1)
	.loc 4 1921 0
	stfs 12,500(1)
	.loc 4 1869 0
	lfs 12,496(1)
	.loc 4 1918 0
	fmsubs 2,24,10,22
	.loc 4 1924 0
	lfs 5,372(1)
	.loc 4 1869 0
	fneg 12,12
	.loc 4 1920 0
	lfs 4,220(1)
	.loc 4 1924 0
	fmuls 24,5,11
	.loc 4 1935 0
	lfs 5,464(1)
	.loc 4 1920 0
	fmsubs 31,4,10,31
	.loc 4 1922 0
	stfs 3,452(1)
	.loc 4 1869 0
	stfs 12,436(1)
	.loc 4 1925 0
	lfs 12,288(1)
	.loc 4 1919 0
	lfs 3,296(1)
	.loc 4 1925 0
	fmadds 4,12,9,23
	.loc 4 1869 0
	lfs 22,304(1)
	.loc 4 1935 0
	fmsubs 23,5,13,21
	.loc 4 1925 0
	lfs 21,436(1)
	.loc 4 1919 0
	fmsubs 1,3,10,1
	.loc 4 1931 0
	lfs 5,36(3)
	.loc 4 1869 0
	fneg 22,22
	.loc 4 1926 0
	fmadds 3,12,6,14
	.loc 4 1869 0
	lfs 14,596(1)
	.loc 4 1925 0
	fmadds 4,21,7,4
	.loc 4 1936 0
	lfs 12,460(1)
	.loc 4 1869 0
	fneg 14,14
	stfs 22,472(1)
	.loc 4 1926 0
	fmadds 3,22,7,3
	.loc 4 1925 0
	stfs 4,504(1)
	.loc 4 1936 0
	fmuls 12,12,0
	.loc 4 1916 0
	lfs 4,168(1)
	.loc 4 1869 0
	stfs 14,468(1)
	.loc 4 1916 0
	fmuls 21,4,8
	.loc 4 1917 0
	lfs 14,216(1)
	.loc 4 1869 0
	lfs 4,208(1)
	.loc 4 1926 0
	stfs 3,456(1)
	.loc 4 1917 0
	fmuls 14,14,8
	.loc 4 1892 0
	lfs 3,96(1)
	.loc 4 1869 0
	fneg 4,4
	.loc 4 1936 0
	stfs 12,160(1)
	.loc 4 1892 0
	fmuls 22,29,3
	.loc 4 1918 0
	lfs 3,132(1)
	.loc 4 1917 0
	stfs 14,144(1)
	.loc 4 1869 0
	stfs 4,520(1)
	.loc 4 1918 0
	fmadds 14,3,9,2
	.loc 4 1924 0
	lfs 4,220(1)
	.loc 4 1919 0
	fmadds 3,3,6,1
	.loc 4 1920 0
	lfs 1,212(1)
	.loc 4 1931 0
	lfs 12,28(3)
	.loc 4 1920 0
	fmadds 2,1,9,31
	.loc 4 1924 0
	fmsubs 1,4,8,24
	.loc 4 1934 0
	lfs 24,376(1)
	fmuls 24,24,12
	stfs 24,164(1)
	.loc 4 1869 0
	lfs 31,500(1)
	.loc 4 1935 0
	lfs 4,452(1)
	.loc 4 1869 0
	fneg 31,31
	stfs 31,632(1)
	.loc 4 1935 0
	fmadds 31,4,5,23
	.loc 4 1936 0
	lfs 4,160(1)
	lfs 23,464(1)
	fmsubs 24,23,12,4
	.loc 4 1918 0
	lfs 23,468(1)
	.loc 4 1931 0
	lfs 4,40(3)
	.loc 4 1918 0
	fmadds 14,23,7,14
	.loc 4 1920 0
	lfs 23,368(1)
	fmadds 2,23,6,2
	.loc 4 1916 0
	lfs 23,288(1)
	.loc 4 1918 0
	stfs 14,600(1)
	.loc 4 1919 0
	lfs 14,520(1)
	.loc 4 1920 0
	stfs 2,508(1)
	.loc 4 1919 0
	fmadds 3,14,7,3
	stfs 3,448(1)
	.loc 4 1892 0
	lfs 3,108(1)
	fmsubs 2,30,3,22
	.loc 4 1915 0
	lfs 22,212(1)
	.loc 4 1917 0
	lfs 3,372(1)
	.loc 4 1915 0
	fmuls 14,22,8
	.loc 4 1916 0
	fmsubs 22,23,10,21
	.loc 4 1917 0
	lfs 21,144(1)
	.loc 4 1924 0
	lfs 23,304(1)
	.loc 4 1917 0
	fmsubs 3,3,10,21
	.loc 4 1934 0
	lfs 21,460(1)
	.loc 4 1917 0
	stfs 3,32(1)
	.loc 4 1924 0
	fmadds 3,23,9,1
	.loc 4 1933 0
	lfs 1,452(1)
	.loc 4 1934 0
	lfs 23,164(1)
	.loc 4 1933 0
	fmuls 1,1,12
	.loc 4 1934 0
	fmsubs 21,21,13,23
	.loc 4 1936 0
	lfs 23,456(1)
	.loc 4 1933 0
	stfs 1,160(1)
	.loc 4 1936 0
	fmadds 24,23,5,24
	.loc 4 1935 0
	lfs 1,632(1)
	.loc 4 1934 0
	stfs 21,164(1)
	.loc 4 1935 0
	fmadds 31,1,4,31
	.loc 4 1869 0
	lfs 21,504(1)
	.loc 4 1924 0
	lfs 1,436(1)
	.loc 4 1869 0
	fneg 21,21
	.loc 4 1936 0
	stfs 24,40(1)
	.loc 4 1935 0
	stfs 31,392(1)
	.loc 4 1924 0
	fmadds 3,1,6,3
	.loc 4 1892 0
	lfs 31,72(1)
	.loc 4 1932 0
	lfs 24,44(3)
	.loc 4 1892 0
	fmadds 2,28,31,2
	.loc 4 1869 0
	stfs 21,636(1)
	.loc 4 1892 0
	stfs 2,144(1)
.LVL660:
	.loc 4 1924 0
	stfs 3,512(1)
	.loc 4 1915 0
	lfs 3,304(1)
	.loc 4 1917 0
	lfs 31,32(1)
	.loc 4 1915 0
	fmsubs 21,3,10,14
	.loc 4 1916 0
	lfs 14,132(1)
	.loc 4 1914 0
	lfs 2,440(1)
.LVL661:
	.loc 4 1916 0
	fmadds 1,14,11,22
	.loc 4 1917 0
	lfs 22,208(1)
	.loc 4 1932 0
	lfs 14,500(1)
	.loc 4 1914 0
	fmuls 23,8,2
	.loc 4 1917 0
	fmadds 3,22,9,31
	.loc 4 1933 0
	lfs 31,160(1)
	lfs 22,456(1)
	.loc 4 1932 0
	fmuls 14,14,12
	.loc 4 1869 0
	fneg 2,7
	.loc 4 1933 0
	fmsubs 22,22,13,31
	.loc 4 1934 0
	lfs 31,164(1)
	.loc 4 1932 0
	stfs 14,8(1)
	.loc 4 1869 0
	lfs 14,600(1)
	.loc 4 1933 0
	stfs 22,32(1)
	.loc 4 1934 0
	lfs 22,448(1)
	.loc 4 1869 0
	fneg 14,14
	.loc 4 1934 0
	fmadds 22,22,5,31
	.loc 4 1936 0
	lfs 31,636(1)
	.loc 4 1869 0
	stfs 14,628(1)
	.loc 4 1935 0
	lfs 14,508(1)
	.loc 4 1934 0
	stfs 22,164(1)
	.loc 4 1935 0
	lfs 22,392(1)
	fmadds 14,14,24,22
	.loc 4 1917 0
	lfs 22,468(1)
	fmadds 3,22,6,3
	.loc 4 1935 0
	stfs 14,620(1)
	.loc 4 1936 0
	lfs 14,40(1)
	.loc 4 1917 0
	stfs 3,392(1)
	.loc 4 1936 0
	fmadds 31,31,4,14
	.loc 4 1914 0
	lfs 14,496(1)
	.loc 4 1869 0
	lfs 3,144(1)
	.loc 4 1914 0
	fmsubs 22,10,14,23
	.loc 4 1915 0
	lfs 23,208(1)
	.loc 4 1869 0
	fnmadds 1,2,3,1
	.loc 4 1936 0
	stfs 31,40(1)
	.loc 4 1915 0
	fmadds 2,23,11,21
	.loc 4 1932 0
	lfs 23,8(1)
	lfs 21,504(1)
	.loc 4 1869 0
	fneg 3,6
	stfs 1,516(1)
	.loc 4 1932 0
	fmsubs 21,21,13,23
	.loc 4 1931 0
	lfs 1,508(1)
	.loc 4 1940 0
	lfs 31,4(3)
	.loc 4 1931 0
	fmuls 14,12,1
	.loc 4 1933 0
	lfs 1,448(1)
	.loc 4 1932 0
	stfs 21,160(1)
	.loc 4 1933 0
	lfs 21,32(1)
	fmadds 1,1,0,21
	stfs 1,444(1)
	.loc 4 1934 0
	lfs 1,164(1)
	lfs 23,628(1)
	.loc 4 1936 0
	lfs 21,512(1)
	.loc 4 1934 0
	fmadds 23,23,4,1
	.loc 4 1940 0
	lfs 1,620(1)
	fmuls 1,31,1
	.loc 4 1934 0
	stfs 23,140(1)
	.loc 4 1936 0
	lfs 23,40(1)
	.loc 4 1940 0
	stfs 1,224(1)
	.loc 4 1936 0
	fmadds 21,21,24,23
	.loc 4 1914 0
	lfs 23,596(1)
	.loc 4 1940 0
	lfs 1,0(3)
	.loc 4 1914 0
	fmadds 22,11,23,22
	.loc 4 1933 0
	lfs 23,444(1)
	.loc 4 1936 0
	stfs 21,624(1)
	.loc 4 1915 0
	lfs 21,144(1)
	.loc 4 1914 0
	stfs 22,32(1)
	.loc 4 1915 0
	fmadds 2,3,21,2
	.loc 4 1933 0
	lfs 22,516(1)
	.loc 4 1932 0
	lfs 3,600(1)
	.loc 4 1869 0
	fneg 21,9
	.loc 4 1933 0
	fmadds 22,22,4,23
	.loc 4 1940 0
	lfs 23,12(3)
	.loc 4 1915 0
	stfs 2,164(1)
	.loc 4 1931 0
	lfs 2,512(1)
	.loc 4 1933 0
	stfs 22,152(1)
	.loc 4 1931 0
	fmsubs 14,13,2,14
	.loc 4 1940 0
	lfs 22,224(1)
	.loc 4 1934 0
	lfs 2,392(1)
	.loc 4 1931 0
	stfs 14,40(1)
	.loc 4 1932 0
	lfs 14,160(1)
	fmadds 3,3,0,14
	.loc 4 1940 0
	lfs 14,624(1)
	fmsubs 14,1,14,22
	.loc 4 1931 0
	lfs 22,392(1)
	.loc 4 1932 0
	stfs 3,148(1)
	.loc 4 1934 0
	lfs 3,140(1)
	.loc 4 1940 0
	stfs 14,140(1)
	.loc 4 1934 0
	fmadds 2,2,24,3
	.loc 4 1914 0
	lfs 14,32(1)
	lfs 3,144(1)
	fmadds 21,21,3,14
	.loc 4 1931 0
	lfs 3,40(1)
	.loc 4 1932 0
	lfs 14,516(1)
	.loc 4 1934 0
	stfs 2,616(1)
	.loc 4 1914 0
	stfs 21,160(1)
.LVL662:
	.loc 4 1869 0
	fneg 21,5
.LVL663:
	.loc 4 1940 0
	lfs 2,8(3)
	.loc 4 1869 0
	stfs 21,444(1)
	.loc 4 1931 0
	fmadds 21,0,22,3
	.loc 4 1932 0
	lfs 22,148(1)
	fmadds 14,14,5,22
	.loc 4 1869 0
	fneg 22,23
	.loc 4 1932 0
	stfs 14,148(1)
	.loc 4 1933 0
	lfs 14,152(1)
	lfs 3,164(1)
	.loc 4 1869 0
	stfs 22,32(1)
	.loc 4 1933 0
	fmadds 3,3,24,14
	.loc 4 1940 0
	lfs 14,140(1)
	.loc 4 1931 0
	lfs 22,444(1)
	.loc 4 1933 0
	stfs 3,612(1)
	.loc 4 1940 0
	lfs 3,616(1)
	fmadds 3,2,3,14
	.loc 4 1932 0
	lfs 14,160(1)
	.loc 4 1940 0
	stfs 3,140(1)
	.loc 4 1931 0
	lfs 3,164(1)
	fmadds 21,22,3,21
	.loc 4 1932 0
	lfs 22,148(1)
	.loc 4 1940 0
	lfs 3,32(1)
	.loc 4 1932 0
	fmadds 14,24,14,22
	.loc 4 1940 0
	lfs 22,140(1)
	.loc 4 1932 0
	stfs 14,608(1)
	.loc 4 1940 0
	lfs 14,612(1)
	fmadds 3,3,14,22
	.loc 4 1931 0
	lfs 14,160(1)
	fmadds 21,4,14,21
	.loc 4 1940 0
	lfs 14,608(1)
	stfs 3,140(1)
	lfs 3,16(3)
	.loc 4 1931 0
	stfs 21,604(1)
.LVL664:
	.loc 4 1940 0
	stfs 3,8(1)
	lfs 3,20(3)
	.loc 4 1943 0
	li 3,0
.LVL665:
	.loc 4 1940 0
	lfs 22,8(1)
	.loc 4 1869 0
	fneg 21,3
.LVL666:
	stfs 21,40(1)
	.loc 4 1940 0
	lfs 21,140(1)
	fmadds 22,22,14,21
	lfs 14,40(1)
	lfs 21,604(1)
	stfs 22,140(1)
	fmadds 22,14,21,22
	stfs 22,236(1)
.LVL667:
.LBB11665:
.LBB11666:
	.loc 5 781 0
	lwz 11,236(1)
	rlwinm 0,11,0,1,31
.LBE11666:
.LBE11665:
	.loc 4 1942 0
	lis 11,.LC2@ha
	stw 0,700(1)
	lfs 14,700(1)
	fmr 21,14
	lfd 14,.LC2@l(11)
	fcmpu 7,21,14
	blt- 7,.L228
	.loc 4 1957 0
	lfs 22,56(1)
.LVL668:
	.loc 4 1946 0
	lis 11,.LC1@ha
	.loc 4 1952 0
	lfs 21,16(1)
	.loc 4 2178 0
	li 3,1
	.loc 4 1957 0
	fmuls 22,22,25
	.loc 4 1952 0
	fmuls 14,21,26
	.loc 4 1953 0
	fmuls 21,21,25
	.loc 4 1957 0
	stfs 22,176(1)
	.loc 4 1967 0
	lfs 22,24(1)
	.loc 4 1952 0
	fmsubs 14,15,30,14
	.loc 4 1953 0
	fmsubs 21,16,30,21
	.loc 4 1967 0
	fmuls 22,22,26
	.loc 4 1952 0
	stfs 14,140(1)
	.loc 4 1957 0
	lfs 14,176(1)
	.loc 4 1967 0
	stfs 22,148(1)
	.loc 4 1968 0
	lfs 22,24(1)
	.loc 4 1957 0
	fmsubs 14,16,29,14
	.loc 4 1953 0
	stfs 21,224(1)
	.loc 4 1968 0
	fmuls 22,22,25
	.loc 4 1967 0
	lfs 21,148(1)
	.loc 4 1957 0
	stfs 14,308(1)
	.loc 4 1967 0
	fmsubs 21,17,30,21
	.loc 4 1968 0
	stfs 22,180(1)
	.loc 4 1972 0
	lfs 22,48(1)
	.loc 4 1967 0
	stfs 21,312(1)
	.loc 4 1972 0
	fmuls 22,22,25
	.loc 4 1956 0
	lfs 21,56(1)
	.loc 4 1972 0
	stfs 22,184(1)
	.loc 4 1968 0
	lfs 22,180(1)
	.loc 4 1972 0
	lfs 14,184(1)
	.loc 4 1968 0
	fmsubs 22,18,30,22
	.loc 4 1972 0
	fmsubs 14,18,29,14
	.loc 4 1968 0
	stfs 22,188(1)
	.loc 4 1959 0
	lfs 22,644(1)
	.loc 4 1972 0
	stfs 14,316(1)
	.loc 4 1956 0
	fmuls 14,21,26
	.loc 4 1959 0
	fmuls 21,22,26
	.loc 4 1960 0
	fmuls 22,22,25
	.loc 4 1956 0
	fmsubs 14,15,29,14
	.loc 4 1959 0
	fmsubs 21,15,28,21
	.loc 4 1960 0
	stfs 22,180(1)
	.loc 4 1961 0
	fmuls 22,19,26
	stfs 22,184(1)
	.loc 4 1962 0
	fmuls 22,19,25
	stfs 22,240(1)
	.loc 4 1963 0
	fmuls 22,15,25
	stfs 22,244(1)
	.loc 4 1971 0
	lfs 22,48(1)
	fmuls 22,22,26
	stfs 22,152(1)
	.loc 4 1974 0
	lfs 22,640(1)
	fmuls 22,22,26
	stfs 22,156(1)
	.loc 4 1975 0
	lfs 22,640(1)
	fmuls 22,22,25
	stfs 22,248(1)
	.loc 4 1976 0
	fmuls 22,20,26
	stfs 22,192(1)
	.loc 4 1977 0
	fmuls 22,20,25
	.loc 4 1978 0
	fmuls 25,17,25
	.loc 4 1977 0
	stfs 22,320(1)
	.loc 4 1978 0
	stfs 25,196(1)
	.loc 4 1960 0
	lfs 25,180(1)
	.loc 4 1962 0
	lfs 22,240(1)
	.loc 4 1960 0
	fmsubs 25,16,28,25
	.loc 4 1959 0
	stfs 21,148(1)
	.loc 4 1961 0
	lfs 21,184(1)
	.loc 4 1956 0
	stfs 14,176(1)
	.loc 4 1960 0
	stfs 25,180(1)
	.loc 4 1961 0
	fmsubs 14,15,27,21
	.loc 4 1963 0
	lfs 25,244(1)
	.loc 4 1962 0
	fmsubs 15,16,27,22
	.loc 4 1971 0
	lfs 21,152(1)
	.loc 4 1974 0
	lfs 22,156(1)
	.loc 4 1963 0
	fmsubs 16,16,26,25
	.loc 4 1971 0
	fmsubs 21,17,29,21
	.loc 4 1975 0
	lfs 25,248(1)
	.loc 4 1974 0
	fmsubs 22,17,28,22
	.loc 4 1975 0
	fmsubs 25,18,28,25
	.loc 4 1971 0
	stfs 21,244(1)
	.loc 4 1974 0
	stfs 22,152(1)
	.loc 4 1976 0
	lfs 21,192(1)
	.loc 4 1977 0
	lfs 22,320(1)
	.loc 4 1976 0
	fmsubs 17,17,27,21
	.loc 4 1975 0
	stfs 25,156(1)
	.loc 4 1978 0
	lfs 21,196(1)
	.loc 4 1977 0
	fmsubs 25,18,27,22
	.loc 4 1951 0
	lfs 22,16(1)
	.loc 4 1978 0
	fmsubs 18,18,26,21
	.loc 4 1951 0
	fmuls 26,22,27
	.loc 4 1966 0
	lfs 22,24(1)
	fmuls 21,22,27
	.loc 4 1988 0
	lfs 22,140(1)
	.loc 4 1951 0
	fmsubs 26,19,30,26
	.loc 4 1988 0
	fmuls 22,9,22
	.loc 4 1966 0
	fmsubs 21,20,30,21
	.loc 4 1988 0
	stfs 22,248(1)
	.loc 4 1989 0
	lfs 22,224(1)
	fmuls 22,9,22
	stfs 22,196(1)
	.loc 4 1990 0
	lfs 22,224(1)
	fmuls 22,6,22
	stfs 22,256(1)
	.loc 4 1996 0
	lfs 22,308(1)
	fmuls 22,6,22
	stfs 22,332(1)
	.loc 4 2008 0
	lfs 22,312(1)
	fmuls 22,9,22
	stfs 22,200(1)
	.loc 4 2009 0
	lfs 22,188(1)
	fmuls 22,9,22
	stfs 22,400(1)
	.loc 4 2010 0
	lfs 22,188(1)
	fmuls 22,6,22
	stfs 22,268(1)
	.loc 4 2016 0
	lfs 22,316(1)
	fmuls 22,6,22
	stfs 22,352(1)
	.loc 4 2028 0
	lfs 22,64(1)
	.loc 4 1966 0
	stfs 21,184(1)
	.loc 4 2028 0
	fmuls 22,22,9
	.loc 4 1955 0
	lfs 21,56(1)
	.loc 4 1951 0
	stfs 26,40(1)
	.loc 4 1955 0
	fmuls 26,21,27
	.loc 4 2028 0
	stfs 22,204(1)
	.loc 4 2029 0
	lfs 22,92(1)
	.loc 4 1955 0
	fmsubs 26,19,29,26
	.loc 4 2029 0
	fmuls 22,22,9
	stfs 22,412(1)
	.loc 4 2030 0
	lfs 22,92(1)
	fmuls 22,22,6
	stfs 22,280(1)
	.loc 4 2036 0
	lfs 22,124(1)
	fmuls 22,22,6
	stfs 22,420(1)
	.loc 4 1958 0
	lfs 22,644(1)
	fmuls 21,22,27
	.loc 4 1970 0
	lfs 22,48(1)
	fmuls 22,22,27
	.loc 4 1958 0
	fmsubs 19,19,28,21
	.loc 4 1970 0
	stfs 22,192(1)
	.loc 4 1973 0
	lfs 22,640(1)
	fmuls 27,22,27
	.loc 4 1989 0
	lfs 22,196(1)
	fmsubs 22,10,15,22
	.loc 4 1973 0
	stfs 27,476(1)
	.loc 4 1988 0
	lfs 27,248(1)
	.loc 4 1989 0
	stfs 22,196(1)
	.loc 4 1988 0
	fmsubs 27,10,14,27
	.loc 4 1994 0
	lfs 22,176(1)
	fmuls 22,9,22
	.loc 4 1988 0
	stfs 27,320(1)
	.loc 4 1990 0
	lfs 27,256(1)
	.loc 4 1994 0
	stfs 22,324(1)
	.loc 4 1990 0
	fmsubs 27,10,16,27
	.loc 4 1996 0
	lfs 22,332(1)
	fmsubs 22,8,16,22
	.loc 4 1990 0
	stfs 27,256(1)
	.loc 4 1995 0
	lfs 27,308(1)
	.loc 4 1996 0
	stfs 22,332(1)
	.loc 4 1995 0
	fmuls 27,9,27
	.loc 4 1998 0
	lfs 22,180(1)
	fmuls 22,9,22
	.loc 4 1995 0
	stfs 27,328(1)
	.loc 4 1997 0
	lfs 27,148(1)
	.loc 4 1998 0
	stfs 22,336(1)
	.loc 4 2000 0
	fmuls 22,6,15
	.loc 4 1997 0
	fmuls 27,9,27
	stfs 27,396(1)
	.loc 4 1999 0
	lfs 27,180(1)
	fmuls 27,6,27
	stfs 27,260(1)
	.loc 4 2008 0
	lfs 27,200(1)
	.loc 4 2000 0
	stfs 22,264(1)
	.loc 4 2008 0
	fmsubs 27,10,17,27
	.loc 4 2009 0
	lfs 22,400(1)
	fmsubs 22,10,25,22
	.loc 4 2008 0
	stfs 27,200(1)
	.loc 4 2010 0
	lfs 27,268(1)
	.loc 4 2009 0
	stfs 22,340(1)
	.loc 4 2010 0
	fmsubs 27,10,18,27
	.loc 4 2014 0
	lfs 22,244(1)
	fmuls 22,9,22
	.loc 4 2010 0
	stfs 27,268(1)
	.loc 4 2015 0
	lfs 27,316(1)
	.loc 4 2014 0
	stfs 22,344(1)
	.loc 4 2015 0
	fmuls 27,9,27
	.loc 4 2016 0
	lfs 22,352(1)
	fmsubs 22,8,18,22
	.loc 4 2015 0
	stfs 27,348(1)
	.loc 4 2017 0
	lfs 27,152(1)
	.loc 4 2016 0
	stfs 22,352(1)
	.loc 4 2017 0
	fmuls 27,9,27
	.loc 4 2018 0
	lfs 22,156(1)
	fmuls 22,9,22
	.loc 4 2017 0
	stfs 27,404(1)
	.loc 4 2019 0
	lfs 27,156(1)
	.loc 4 2018 0
	stfs 22,408(1)
	.loc 4 2020 0
	fmuls 22,6,25
	.loc 4 2019 0
	fmuls 27,6,27
	.loc 4 2020 0
	stfs 22,276(1)
	.loc 4 2019 0
	stfs 27,272(1)
	.loc 4 2028 0
	lfs 22,204(1)
	lfs 27,84(1)
	fmsubs 27,27,10,22
	.loc 4 2029 0
	lfs 22,412(1)
	.loc 4 2028 0
	stfs 27,204(1)
	.loc 4 2029 0
	lfs 27,36(1)
	fmsubs 27,27,10,22
	.loc 4 2030 0
	lfs 22,280(1)
	.loc 4 2029 0
	stfs 27,356(1)
	.loc 4 2030 0
	lfs 27,88(1)
	fmsubs 27,27,10,22
	.loc 4 2035 0
	lfs 22,124(1)
	fmuls 22,22,9
	.loc 4 2030 0
	stfs 27,280(1)
	.loc 4 2034 0
	lfs 27,136(1)
	.loc 4 2035 0
	stfs 22,416(1)
	.loc 4 2034 0
	fmuls 27,27,9
	.loc 4 2036 0
	lfs 22,420(1)
	.loc 4 2034 0
	stfs 27,360(1)
	.loc 4 2036 0
	lfs 27,88(1)
	fmsubs 27,27,8,22
	stfs 27,420(1)
	.loc 4 2037 0
	lfs 27,128(1)
	.loc 4 2038 0
	lfs 22,80(1)
	.loc 4 2037 0
	fmuls 27,27,9
	.loc 4 1970 0
	lfs 21,192(1)
	.loc 4 2038 0
	fmuls 22,22,9
	.loc 4 1970 0
	fmsubs 21,20,29,21
	.loc 4 2037 0
	stfs 27,424(1)
	.loc 4 2038 0
	stfs 22,428(1)
	.loc 4 2039 0
	lfs 27,80(1)
	.loc 4 2040 0
	lfs 22,36(1)
	.loc 4 2039 0
	fmuls 27,27,6
	.loc 4 1970 0
	stfs 21,240(1)
	.loc 4 2040 0
	fmuls 22,22,6
	.loc 4 1989 0
	lfs 21,40(1)
	.loc 4 2039 0
	stfs 27,364(1)
	.loc 4 2040 0
	stfs 22,432(1)
	.loc 4 1940 0
	lfs 27,236(1)
	.loc 4 1973 0
	lfs 22,476(1)
	.loc 4 1940 0
	stfd 27,248(1)
	.loc 4 1955 0
	stfs 26,236(1)
	.loc 4 1973 0
	fmsubs 26,20,28,22
	.loc 4 1988 0
	lfs 27,40(1)
	lfs 20,320(1)
	.loc 4 1989 0
	lfs 22,196(1)
	.loc 4 1988 0
	fmadds 27,6,27,20
	.loc 4 1990 0
	lfs 20,256(1)
	.loc 4 1989 0
	fmadds 21,7,21,22
	.loc 4 1996 0
	lfs 22,332(1)
	.loc 4 1988 0
	stfs 27,320(1)
	.loc 4 1990 0
	lfs 27,140(1)
	.loc 4 1989 0
	stfs 21,196(1)
	.loc 4 1990 0
	fmadds 27,7,27,20
	.loc 4 1996 0
	lfs 21,176(1)
	.loc 4 2008 0
	lfs 20,200(1)
	.loc 4 1996 0
	fmadds 21,7,21,22
	.loc 4 2009 0
	lfs 22,340(1)
	.loc 4 1990 0
	stfs 27,256(1)
	.loc 4 2008 0
	lfs 27,184(1)
	.loc 4 1996 0
	stfs 21,332(1)
	.loc 4 2008 0
	fmadds 27,6,27,20
	.loc 4 2009 0
	lfs 21,184(1)
	.loc 4 2010 0
	lfs 20,268(1)
	.loc 4 2009 0
	fmadds 21,7,21,22
	.loc 4 2008 0
	stfs 27,400(1)
	.loc 4 2010 0
	lfs 27,312(1)
	.loc 4 2009 0
	stfs 21,340(1)
	.loc 4 2010 0
	fmadds 27,7,27,20
	stfs 27,268(1)
	.loc 4 2016 0
	lfs 22,352(1)
	lfs 21,244(1)
	.loc 4 2028 0
	lfs 20,204(1)
	.loc 4 2016 0
	fmadds 21,7,21,22
	.loc 4 2029 0
	lfs 22,356(1)
	.loc 4 2028 0
	lfs 27,112(1)
	.loc 4 2016 0
	stfs 21,352(1)
	.loc 4 2028 0
	fmadds 27,27,6,20
	.loc 4 2029 0
	lfs 21,112(1)
	.loc 4 2030 0
	lfs 20,280(1)
	.loc 4 2029 0
	fmadds 21,21,7,22
	.loc 4 2036 0
	lfs 22,420(1)
	.loc 4 2028 0
	stfs 27,412(1)
	.loc 4 2030 0
	lfs 27,64(1)
	.loc 4 2029 0
	stfs 21,356(1)
	.loc 4 2036 0
	lfs 21,136(1)
	.loc 4 2030 0
	fmadds 27,27,7,20
	.loc 4 1950 0
	lfs 20,16(1)
	.loc 4 2036 0
	fmadds 21,21,7,22
	.loc 4 1986 0
	lfs 22,140(1)
	.loc 4 2030 0
	stfs 27,280(1)
	.loc 4 1950 0
	fmuls 27,20,28
	.loc 4 1986 0
	fmuls 22,11,22
	.loc 4 2036 0
	stfs 21,420(1)
	.loc 4 1965 0
	lfs 21,24(1)
	.loc 4 1986 0
	stfs 22,192(1)
	.loc 4 1965 0
	fmuls 20,21,28
	.loc 4 1987 0
	lfs 21,224(1)
	.loc 4 1994 0
	lfs 22,324(1)
	.loc 4 1987 0
	fmuls 21,11,21
	.loc 4 1994 0
	fmsubs 22,8,14,22
	.loc 4 1987 0
	stfs 21,200(1)
	.loc 4 1995 0
	lfs 21,328(1)
	.loc 4 1994 0
	stfs 22,324(1)
	.loc 4 1995 0
	fmsubs 21,8,15,21
	.loc 4 1997 0
	lfs 22,396(1)
	fmsubs 22,11,14,22
	.loc 4 1995 0
	stfs 21,328(1)
	.loc 4 1998 0
	lfs 21,336(1)
	.loc 4 1997 0
	stfs 22,396(1)
	.loc 4 1998 0
	fmsubs 15,11,15,21
	.loc 4 1999 0
	lfs 22,260(1)
	.loc 4 2006 0
	lfs 21,312(1)
	.loc 4 1999 0
	fmsubs 22,11,16,22
	.loc 4 2006 0
	fmuls 21,11,21
	.loc 4 1998 0
	stfs 15,336(1)
	.loc 4 2000 0
	lfs 15,264(1)
	.loc 4 1999 0
	stfs 22,260(1)
	.loc 4 2000 0
	fmsubs 16,9,16,15
	.loc 4 2006 0
	stfs 21,264(1)
	.loc 4 2014 0
	lfs 15,344(1)
	.loc 4 2007 0
	lfs 22,188(1)
	.loc 4 2014 0
	fmsubs 15,8,17,15
	.loc 4 2015 0
	lfs 21,348(1)
	.loc 4 2007 0
	fmuls 22,11,22
	.loc 4 2015 0
	fmsubs 21,8,25,21
	.loc 4 2014 0
	stfs 15,344(1)
	.loc 4 2000 0
	fmadds 14,7,14,16
	.loc 4 2018 0
	lfs 15,408(1)
	.loc 4 2007 0
	stfs 22,204(1)
	.loc 4 2017 0
	lfs 22,404(1)
	.loc 4 2018 0
	fmsubs 25,11,25,15
	.loc 4 2015 0
	stfs 21,348(1)
	.loc 4 2017 0
	fmsubs 22,11,17,22
	.loc 4 2019 0
	lfs 21,272(1)
	.loc 4 2026 0
	lfs 15,64(1)
	.loc 4 2018 0
	fmadds 25,7,26,25
	.loc 4 2019 0
	fmsubs 21,11,18,21
	.loc 4 2026 0
	fmuls 15,15,11
	.loc 4 2017 0
	stfs 22,404(1)
	.loc 4 2020 0
	lfs 22,276(1)
	.loc 4 2019 0
	stfs 21,272(1)
	.loc 4 2020 0
	fmsubs 18,9,18,22
	.loc 4 2026 0
	stfs 15,276(1)
	.loc 4 2027 0
	lfs 21,92(1)
	.loc 4 2034 0
	lfs 15,360(1)
	lfs 22,84(1)
	.loc 4 2027 0
	fmuls 21,21,11
	.loc 4 2020 0
	fmadds 16,7,17,18
	.loc 4 2034 0
	fmsubs 22,22,8,15
	.loc 4 2037 0
	lfs 15,84(1)
	.loc 4 2027 0
	stfs 21,492(1)
	.loc 4 2035 0
	lfs 21,36(1)
	.loc 4 2034 0
	stfs 22,360(1)
	.loc 4 2035 0
	lfs 22,416(1)
	fmsubs 21,21,8,22
	.loc 4 2038 0
	lfs 22,36(1)
	.loc 4 2035 0
	stfs 21,416(1)
	.loc 4 2037 0
	lfs 21,424(1)
	fmsubs 15,15,11,21
	.loc 4 2039 0
	lfs 21,88(1)
	.loc 4 2037 0
	stfs 15,424(1)
	.loc 4 2038 0
	lfs 15,428(1)
	fmsubs 22,22,11,15
	.loc 4 2040 0
	lfs 15,88(1)
	.loc 4 2038 0
	stfs 22,428(1)
	.loc 4 2039 0
	lfs 22,364(1)
	fmsubs 21,21,11,22
	stfs 21,364(1)
	.loc 4 2040 0
	lfs 21,432(1)
	fmsubs 15,15,9,21
	stfs 15,88(1)
	.loc 4 1950 0
	lfs 22,644(1)
	.loc 4 1994 0
	lfs 21,324(1)
	.loc 4 1950 0
	fmsubs 15,22,30,27
	.loc 4 1965 0
	lfs 27,640(1)
	.loc 4 1995 0
	lfs 22,236(1)
	.loc 4 1965 0
	fmsubs 20,27,30,20
	.loc 4 1995 0
	lfs 27,328(1)
	.loc 4 2034 0
	lfs 18,360(1)
	.loc 4 1995 0
	fmadds 22,7,22,27
	.loc 4 1999 0
	lfs 27,260(1)
	.loc 4 1965 0
	stfs 20,36(1)
	.loc 4 1994 0
	lfs 20,236(1)
	.loc 4 1995 0
	stfs 22,328(1)
	.loc 4 1994 0
	fmadds 20,6,20,21
	.loc 4 1999 0
	lfs 22,148(1)
	.loc 4 1998 0
	lfs 21,336(1)
	.loc 4 1999 0
	fmadds 22,7,22,27
	.loc 4 2015 0
	lfs 27,348(1)
	.loc 4 1994 0
	stfs 20,324(1)
	.loc 4 1998 0
	fmadds 21,7,19,21
	.loc 4 1997 0
	lfs 20,396(1)
	.loc 4 1999 0
	stfs 22,260(1)
	.loc 4 1997 0
	fmadds 20,6,19,20
	.loc 4 1998 0
	stfs 21,336(1)
	.loc 4 2015 0
	lfs 22,240(1)
	.loc 4 2014 0
	lfs 21,344(1)
	.loc 4 1997 0
	stfs 20,396(1)
	.loc 4 2015 0
	fmadds 22,7,22,27
	.loc 4 2014 0
	lfs 20,240(1)
	.loc 4 2034 0
	lfs 17,120(1)
	.loc 4 2014 0
	fmadds 20,6,20,21
	.loc 4 2015 0
	stfs 22,348(1)
	.loc 4 2019 0
	lfs 21,152(1)
	.loc 4 2034 0
	fmadds 17,17,6,18
	.loc 4 2019 0
	lfs 22,272(1)
	.loc 4 2014 0
	stfs 20,344(1)
	.loc 4 2017 0
	lfs 20,404(1)
	.loc 4 2019 0
	fmadds 21,7,21,22
	.loc 4 2018 0
	stfs 25,408(1)
	.loc 4 2017 0
	fmadds 20,6,26,20
	.loc 4 1946 0
	lfd 25,248(1)
	.loc 4 2019 0
	stfs 21,272(1)
	.loc 4 2035 0
	lfs 21,416(1)
	.loc 4 2017 0
	stfs 20,404(1)
	.loc 4 2035 0
	lfs 20,120(1)
	.loc 4 1946 0
	lfs 27,.LC1@l(11)
	.loc 4 2035 0
	fmadds 20,20,7,21
	.loc 4 2034 0
	stfs 17,360(1)
	.loc 4 1946 0
	fdiv 27,27,25
.LVL669:
	.loc 4 2035 0
	stfs 20,416(1)
	.loc 4 2037 0
	lfs 25,424(1)
	lfs 22,104(1)
	.loc 4 2038 0
	lfs 18,428(1)
	lfs 17,104(1)
	.loc 4 2039 0
	lfs 21,364(1)
	lfs 20,128(1)
	.loc 4 2037 0
	fmadds 22,22,6,25
	.loc 4 2040 0
	lfs 25,88(1)
	.loc 4 2038 0
	fmadds 17,17,7,18
	.loc 4 2037 0
	stfs 22,424(1)
	.loc 4 2040 0
	lfs 22,84(1)
	.loc 4 2038 0
	stfs 17,428(1)
	.loc 4 2039 0
	fmadds 17,20,7,21
	.loc 4 2040 0
	fmadds 18,22,7,25
	.loc 4 1954 0
	lfs 20,56(1)
	.loc 4 1969 0
	lfs 22,48(1)
	.loc 4 1954 0
	fmuls 25,20,28
	.loc 4 1969 0
	fmuls 21,22,28
	.loc 4 1985 0
	lfs 28,40(1)
	.loc 4 1986 0
	lfs 22,148(1)
	.loc 4 1985 0
	fmuls 28,11,28
	stfs 28,364(1)
	.loc 4 1986 0
	lfs 28,192(1)
	fmsubs 20,10,22,28
	.loc 4 1987 0
	lfs 28,200(1)
	lfs 22,180(1)
	fmsubs 22,10,22,28
	.loc 4 1993 0
	lfs 28,308(1)
	.loc 4 1986 0
	fmadds 20,6,15,20
	.loc 4 1993 0
	fmuls 28,11,28
	.loc 4 1987 0
	stfs 22,192(1)
	.loc 4 1992 0
	lfs 22,176(1)
	.loc 4 1993 0
	stfs 28,476(1)
	.loc 4 1992 0
	fmuls 22,11,22
	.loc 4 2006 0
	lfs 28,152(1)
	.loc 4 1992 0
	stfs 22,432(1)
	.loc 4 2005 0
	lfs 22,184(1)
	fmuls 22,11,22
	stfs 22,480(1)
	.loc 4 2006 0
	lfs 22,264(1)
	fmsubs 28,10,28,22
	.loc 4 2007 0
	lfs 22,204(1)
	.loc 4 2006 0
	stfs 28,200(1)
	.loc 4 2007 0
	lfs 28,156(1)
	fmsubs 28,10,28,22
	.loc 4 2013 0
	lfs 22,316(1)
	fmuls 22,11,22
	.loc 4 2007 0
	stfs 28,264(1)
	.loc 4 2012 0
	lfs 28,244(1)
	fmuls 28,11,28
	stfs 28,484(1)
	.loc 4 2013 0
	stfs 22,488(1)
	.loc 4 2025 0
	lfs 28,112(1)
	.loc 4 2026 0
	lfs 22,128(1)
	.loc 4 2025 0
	fmuls 28,28,11
	stfs 28,528(1)
	.loc 4 2026 0
	lfs 28,276(1)
	fmsubs 22,22,10,28
	.loc 4 2027 0
	lfs 28,492(1)
	.loc 4 2026 0
	stfs 22,204(1)
	.loc 4 2027 0
	lfs 22,80(1)
	fmsubs 22,22,10,28
	.loc 4 2033 0
	lfs 28,124(1)
	fmuls 28,28,11
	.loc 4 2027 0
	stfs 22,276(1)
	.loc 4 2032 0
	lfs 22,136(1)
	.loc 4 2033 0
	stfs 28,532(1)
	.loc 4 2032 0
	fmuls 22,22,11
	.loc 4 2050 0
	lfs 28,196(1)
	fmuls 28,0,28
	.loc 4 2032 0
	stfs 22,492(1)
	.loc 4 2049 0
	lfs 22,320(1)
	.loc 4 2050 0
	stfs 28,540(1)
	.loc 4 2049 0
	fmuls 22,0,22
	.loc 4 2052 0
	lfs 28,256(1)
	fmuls 28,5,28
	.loc 4 2049 0
	stfs 22,536(1)
	.loc 4 2051 0
	lfs 22,256(1)
	.loc 4 2052 0
	stfs 28,548(1)
	.loc 4 2051 0
	fmuls 22,0,22
	.loc 4 2064 0
	lfs 28,400(1)
	fmuls 28,0,28
	.loc 4 2051 0
	stfs 22,544(1)
	.loc 4 2056 0
	lfs 22,332(1)
	.loc 4 2064 0
	stfs 28,556(1)
	.loc 4 2056 0
	fmuls 22,5,22
	.loc 4 2066 0
	lfs 28,268(1)
	fmuls 28,0,28
	.loc 4 2056 0
	stfs 22,552(1)
	.loc 4 2065 0
	lfs 22,340(1)
	.loc 4 2066 0
	stfs 28,564(1)
	.loc 4 2065 0
	fmuls 22,0,22
	.loc 4 2071 0
	lfs 28,352(1)
	fmuls 28,5,28
	.loc 4 2065 0
	stfs 22,560(1)
	.loc 4 2067 0
	lfs 22,268(1)
	.loc 4 2071 0
	stfs 28,572(1)
	.loc 4 2067 0
	fmuls 22,5,22
	stfs 22,568(1)
	.loc 4 2079 0
	lfs 22,412(1)
	fmuls 22,0,22
	stfs 22,576(1)
	.loc 4 2081 0
	lfs 22,280(1)
	.loc 4 2080 0
	lfs 28,356(1)
	.loc 4 2081 0
	fmuls 22,0,22
	.loc 4 1986 0
	stfs 20,248(1)
	.loc 4 2080 0
	fmuls 28,0,28
	.loc 4 2006 0
	lfs 20,36(1)
	.loc 4 2081 0
	stfs 22,584(1)
	.loc 4 2086 0
	lfs 22,420(1)
	.loc 4 2080 0
	stfs 28,580(1)
	.loc 4 2086 0
	fmuls 22,5,22
	.loc 4 2082 0
	lfs 28,280(1)
	fmuls 28,5,28
	.loc 4 2086 0
	stfs 22,592(1)
	.loc 4 2095 0
	lfs 22,172(1)
	.loc 4 2082 0
	stfs 28,588(1)
	.loc 4 2095 0
	fmuls 22,22,0
	.loc 4 2094 0
	lfs 28,216(1)
	fmuls 28,28,0
	.loc 4 2095 0
	stfs 22,668(1)
	.loc 4 2097 0
	lfs 22,284(1)
	.loc 4 2094 0
	stfs 28,664(1)
	.loc 4 2097 0
	fmuls 22,22,5
	.loc 4 2096 0
	lfs 28,284(1)
	fmuls 28,28,0
	.loc 4 2097 0
	stfs 22,676(1)
	.loc 4 1954 0
	lfs 22,644(1)
	.loc 4 2096 0
	stfs 28,672(1)
	.loc 4 1954 0
	fmsubs 25,22,29,25
	.loc 4 2101 0
	lfs 28,296(1)
	.loc 4 2007 0
	lfs 22,36(1)
	.loc 4 2101 0
	fmuls 28,28,5
	.loc 4 1954 0
	stfs 25,84(1)
	.loc 4 1969 0
	lfs 25,640(1)
	.loc 4 2101 0
	stfs 28,680(1)
	.loc 4 1969 0
	fmsubs 21,25,29,21
	.loc 4 1987 0
	lfs 28,192(1)
	.loc 4 2007 0
	lfs 25,264(1)
	.loc 4 1987 0
	fmadds 28,7,15,28
	.loc 4 1969 0
	stfs 21,88(1)
	.loc 4 2007 0
	fmadds 22,7,22,25
	.loc 4 2006 0
	lfs 21,200(1)
	.loc 4 1987 0
	stfs 28,192(1)
	.loc 4 2006 0
	fmadds 20,6,20,21
	.loc 4 2026 0
	lfs 28,96(1)
	.loc 4 2007 0
	stfs 22,264(1)
	.loc 4 2006 0
	stfs 20,200(1)
	.loc 4 2026 0
	lfs 20,204(1)
	fmadds 28,28,6,20
	stfs 28,204(1)
	.loc 4 1964 0
	lfs 28,24(1)
	.loc 4 1949 0
	lfs 25,16(1)
	.loc 4 2027 0
	lfs 22,276(1)
	.loc 4 1949 0
	fmuls 25,25,29
	.loc 4 2027 0
	lfs 21,96(1)
	.loc 4 1964 0
	fmuls 29,28,29
	.loc 4 1984 0
	lfs 20,224(1)
	.loc 4 2027 0
	fmadds 21,21,7,22
	.loc 4 1991 0
	lfs 22,236(1)
	.loc 4 1949 0
	stfs 25,704(1)
	.loc 4 1984 0
	fmuls 20,8,20
	.loc 4 1964 0
	stfs 29,16(1)
	.loc 4 1991 0
	fmuls 22,11,22
	.loc 4 1983 0
	lfs 29,140(1)
	.loc 4 1992 0
	lfs 25,148(1)
	.loc 4 1983 0
	fmuls 29,8,29
	.loc 4 2027 0
	stfs 21,276(1)
	.loc 4 1985 0
	lfs 21,364(1)
	.loc 4 1984 0
	stfs 20,224(1)
	.loc 4 1983 0
	stfs 29,140(1)
	.loc 4 1985 0
	fmsubs 21,10,19,21
	.loc 4 1992 0
	lfs 29,432(1)
	.loc 4 1993 0
	lfs 20,180(1)
	.loc 4 1992 0
	fmsubs 28,8,25,29
	.loc 4 2003 0
	lfs 25,312(1)
	.loc 4 2004 0
	lfs 29,188(1)
	.loc 4 2003 0
	fmuls 25,8,25
	.loc 4 1985 0
	stfs 21,708(1)
	.loc 4 2004 0
	fmuls 29,8,29
	.loc 4 1993 0
	lfs 21,476(1)
	.loc 4 1991 0
	stfs 22,364(1)
	.loc 4 2003 0
	stfs 25,180(1)
	.loc 4 1993 0
	fmsubs 22,8,20,21
	.loc 4 2012 0
	lfs 25,152(1)
	.loc 4 2004 0
	stfs 29,312(1)
	.loc 4 2005 0
	lfs 20,480(1)
	.loc 4 2012 0
	lfs 29,484(1)
	.loc 4 2011 0
	lfs 21,240(1)
	.loc 4 2005 0
	fmsubs 20,10,26,20
	.loc 4 2012 0
	fmsubs 25,8,25,29
	.loc 4 2011 0
	fmuls 21,11,21
	.loc 4 2005 0
	stfs 20,24(1)
	.loc 4 2012 0
	stfs 25,148(1)
	.loc 4 2011 0
	stfs 21,188(1)
	.loc 4 2013 0
	lfs 20,156(1)
	lfs 21,488(1)
	.loc 4 2023 0
	lfs 25,64(1)
	.loc 4 2013 0
	fmsubs 20,8,20,21
	.loc 4 2023 0
	fmuls 25,25,8
	.loc 4 2013 0
	stfs 20,152(1)
	.loc 4 2023 0
	stfs 25,156(1)
	.loc 4 2025 0
	lfs 21,528(1)
	.loc 4 2024 0
	lfs 29,92(1)
	.loc 4 2025 0
	lfs 20,104(1)
	.loc 4 2031 0
	lfs 25,120(1)
	.loc 4 2024 0
	fmuls 29,29,8
	.loc 4 2025 0
	fmsubs 20,20,10,21
	.loc 4 2033 0
	lfs 21,80(1)
	.loc 4 2031 0
	fmuls 25,25,11
	.loc 4 2024 0
	stfs 29,432(1)
	.loc 4 2025 0
	stfs 20,92(1)
	.loc 4 2032 0
	lfs 29,128(1)
	lfs 20,492(1)
	.loc 4 2031 0
	stfs 25,476(1)
	.loc 4 2033 0
	lfs 25,532(1)
	.loc 4 2032 0
	fmsubs 29,29,8,20
	.loc 4 2049 0
	lfs 20,536(1)
	.loc 4 2033 0
	fmsubs 21,21,8,25
	.loc 4 2050 0
	lfs 25,540(1)
	.loc 4 2032 0
	stfs 29,128(1)
	.loc 4 2049 0
	lfs 29,396(1)
	.loc 4 2033 0
	stfs 21,80(1)
	.loc 4 2050 0
	lfs 21,336(1)
	.loc 4 2049 0
	fmsubs 29,13,29,20
	.loc 4 2051 0
	lfs 20,544(1)
	.loc 4 2050 0
	fmsubs 21,13,21,25
	.loc 4 2053 0
	lfs 25,324(1)
	.loc 4 2049 0
	stfs 29,480(1)
	.loc 4 2051 0
	lfs 29,260(1)
	.loc 4 2053 0
	fmuls 25,0,25
	.loc 4 2050 0
	stfs 21,484(1)
	.loc 4 2052 0
	lfs 21,548(1)
	.loc 4 2051 0
	fmsubs 29,13,29,20
	.loc 4 2053 0
	stfs 25,492(1)
	.loc 4 2052 0
	fmsubs 21,13,14,21
	.loc 4 2055 0
	lfs 20,332(1)
	.loc 4 2051 0
	stfs 29,488(1)
	.loc 4 2057 0
	lfs 25,260(1)
	.loc 4 2055 0
	fmuls 20,0,20
	.loc 4 2052 0
	stfs 21,528(1)
	.loc 4 2054 0
	lfs 29,328(1)
	.loc 4 2057 0
	fmuls 25,5,25
	.loc 4 2056 0
	lfs 21,552(1)
	.loc 4 2054 0
	fmuls 29,0,29
	.loc 4 2055 0
	stfs 20,536(1)
	.loc 4 2056 0
	fmsubs 21,12,14,21
	.loc 4 2054 0
	stfs 29,532(1)
	.loc 4 2056 0
	stfs 21,540(1)
	.loc 4 2057 0
	stfs 25,544(1)
	.loc 4 2064 0
	lfs 20,556(1)
	.loc 4 2065 0
	lfs 25,560(1)
	.loc 4 2064 0
	lfs 29,404(1)
	.loc 4 2065 0
	lfs 21,408(1)
	.loc 4 2064 0
	fmsubs 29,13,29,20
	.loc 4 2066 0
	lfs 20,564(1)
	.loc 4 2065 0
	fmsubs 21,13,21,25
	.loc 4 2068 0
	lfs 25,344(1)
	.loc 4 2064 0
	stfs 29,548(1)
	.loc 4 2068 0
	fmuls 25,0,25
	.loc 4 2065 0
	stfs 21,552(1)
	.loc 4 2066 0
	lfs 29,272(1)
	.loc 4 2067 0
	lfs 21,568(1)
	.loc 4 2066 0
	fmsubs 29,13,29,20
	.loc 4 2068 0
	stfs 25,564(1)
	.loc 4 2067 0
	fmsubs 21,13,16,21
	.loc 4 2070 0
	lfs 20,352(1)
	.loc 4 2072 0
	lfs 25,272(1)
	.loc 4 2066 0
	stfs 29,556(1)
	.loc 4 2070 0
	fmuls 20,0,20
	.loc 4 2067 0
	stfs 21,560(1)
	.loc 4 2072 0
	fmuls 25,5,25
	.loc 4 2071 0
	lfs 21,572(1)
	.loc 4 2069 0
	lfs 29,348(1)
	.loc 4 2071 0
	fmsubs 21,12,16,21
	.loc 4 2070 0
	stfs 20,640(1)
	.loc 4 2069 0
	fmuls 29,0,29
	.loc 4 2079 0
	lfs 20,576(1)
	.loc 4 2072 0
	stfs 25,644(1)
	.loc 4 2071 0
	stfs 21,572(1)
	.loc 4 2080 0
	lfs 25,580(1)
	.loc 4 2069 0
	stfs 29,568(1)
	.loc 4 2080 0
	lfs 21,428(1)
	.loc 4 2079 0
	lfs 29,424(1)
	.loc 4 2080 0
	fmsubs 21,13,21,25
	.loc 4 2084 0
	lfs 25,416(1)
	.loc 4 2079 0
	fmsubs 29,13,29,20
	.loc 4 2082 0
	lfs 20,588(1)
	.loc 4 2084 0
	fmuls 25,0,25
	.loc 4 2080 0
	stfs 21,580(1)
	.loc 4 2082 0
	fmsubs 20,13,18,20
	.loc 4 2079 0
	stfs 29,576(1)
	.loc 4 2083 0
	lfs 21,360(1)
	.loc 4 2081 0
	lfs 29,584(1)
	.loc 4 2083 0
	fmuls 21,0,21
	.loc 4 2082 0
	stfs 20,588(1)
	.loc 4 2081 0
	fmsubs 29,13,17,29
	.loc 4 2083 0
	stfs 21,648(1)
	.loc 4 2087 0
	fmuls 21,5,17
	.loc 4 2081 0
	stfs 29,584(1)
	.loc 4 2084 0
	stfs 25,652(1)
	.loc 4 2085 0
	lfs 29,420(1)
	.loc 4 2094 0
	lfs 25,220(1)
	.loc 4 2085 0
	fmuls 29,0,29
	.loc 4 2086 0
	lfs 20,592(1)
	.loc 4 2087 0
	stfs 21,660(1)
	.loc 4 2086 0
	fmsubs 20,12,18,20
	.loc 4 2095 0
	lfs 21,668(1)
	.loc 4 2085 0
	stfs 29,656(1)
	.loc 4 2094 0
	lfs 29,664(1)
	.loc 4 2086 0
	stfs 20,592(1)
	.loc 4 2094 0
	fmsubs 25,25,13,29
	.loc 4 2096 0
	lfs 29,672(1)
	.loc 4 2095 0
	lfs 20,228(1)
	.loc 4 2094 0
	stfs 25,664(1)
	.loc 4 2095 0
	fmsubs 20,20,13,21
	.loc 4 2096 0
	lfs 25,300(1)
	.loc 4 2097 0
	lfs 21,676(1)
	.loc 4 2096 0
	fmsubs 25,25,13,29
	.loc 4 2099 0
	lfs 29,292(1)
	.loc 4 2095 0
	stfs 20,668(1)
	.loc 4 2099 0
	fmuls 29,29,0
	.loc 4 2097 0
	lfs 20,232(1)
	.loc 4 2096 0
	stfs 25,672(1)
	.loc 4 2098 0
	lfs 25,372(1)
	.loc 4 2097 0
	fmsubs 20,20,13,21
	.loc 4 2099 0
	stfs 29,688(1)
	.loc 4 2098 0
	fmuls 25,25,0
	.loc 4 2101 0
	lfs 21,232(1)
	.loc 4 2102 0
	lfs 29,300(1)
	.loc 4 2097 0
	stfs 20,676(1)
	.loc 4 2098 0
	stfs 25,684(1)
	.loc 4 2102 0
	fmuls 29,29,5
	.loc 4 2101 0
	lfs 25,680(1)
	.loc 4 2100 0
	lfs 20,296(1)
	.loc 4 2101 0
	fmsubs 21,21,12,25
	.loc 4 2102 0
	stfs 29,696(1)
	.loc 4 1949 0
	lfs 29,704(1)
	.loc 4 2100 0
	fmuls 20,20,0
	.loc 4 1869 0
	fneg 25,24
	.loc 4 2101 0
	stfs 21,680(1)
	.loc 4 1949 0
	lfs 21,56(1)
	.loc 4 2100 0
	stfs 20,692(1)
	.loc 4 1869 0
	fneg 20,4
	.loc 4 1949 0
	fmsubs 21,21,30,29
	.loc 4 1964 0
	lfs 29,16(1)
	.loc 4 1949 0
	stfs 21,704(1)
.LVL670:
	.loc 4 1964 0
	lfs 21,48(1)
.LVL671:
	fmsubs 30,21,30,29
.LVL672:
	.loc 4 1985 0
	lfs 21,708(1)
	fmadds 21,9,15,21
	.loc 4 1981 0
	fmuls 15,8,15
.LVL673:
	.loc 4 1985 0
	stfs 21,708(1)
	.loc 4 1992 0
	lfs 29,84(1)
	.loc 4 2005 0
	lfs 21,36(1)
	.loc 4 1992 0
	fmadds 28,6,29,28
	.loc 4 1993 0
	fmadds 22,7,29,22
	.loc 4 2005 0
	lfs 29,24(1)
	fmadds 21,9,21,29
	.loc 4 2012 0
	lfs 29,148(1)
	.loc 4 2005 0
	stfs 21,56(1)
	.loc 4 2012 0
	lfs 21,88(1)
	fmadds 21,6,21,29
	.loc 4 2013 0
	lfs 29,152(1)
	.loc 4 2012 0
	stfs 21,24(1)
	.loc 4 2013 0
	lfs 21,88(1)
	fmadds 21,7,21,29
	.loc 4 2025 0
	lfs 29,92(1)
	.loc 4 2013 0
	stfs 21,64(1)
	.loc 4 2025 0
	lfs 21,96(1)
	fmadds 21,21,9,29
	.loc 4 2032 0
	lfs 29,128(1)
	.loc 4 2025 0
	stfs 21,92(1)
	.loc 4 2032 0
	lfs 21,108(1)
	fmadds 21,21,6,29
	.loc 4 2033 0
	lfs 29,80(1)
	.loc 4 2032 0
	stfs 21,128(1)
	.loc 4 2033 0
	lfs 21,108(1)
	fmadds 21,21,7,29
	.loc 4 1983 0
	lfs 29,176(1)
	.loc 4 2033 0
	stfs 21,80(1)
	.loc 4 1982 0
	lfs 21,40(1)
	fmuls 21,8,21
	stfs 21,148(1)
	.loc 4 1983 0
	lfs 21,140(1)
	fmsubs 29,10,29,21
	.loc 4 1984 0
	lfs 21,224(1)
	.loc 4 1983 0
	stfs 29,16(1)
	.loc 4 1984 0
	lfs 29,308(1)
	fmsubs 29,10,29,21
	.loc 4 2002 0
	lfs 21,184(1)
	fmuls 21,8,21
	.loc 4 1984 0
	stfs 29,48(1)
	.loc 4 1991 0
	lfs 29,364(1)
	.loc 4 2002 0
	stfs 21,152(1)
	.loc 4 1991 0
	fmsubs 19,8,19,29
.LVL674:
	.loc 4 2003 0
	lfs 21,180(1)
	lfs 29,244(1)
	fmsubs 29,10,29,21
	.loc 4 2004 0
	lfs 21,312(1)
	.loc 4 2003 0
	stfs 29,40(1)
	.loc 4 2004 0
	lfs 29,316(1)
	fmsubs 29,10,29,21
	stfs 29,140(1)
	.loc 4 2011 0
	lfs 29,188(1)
	.loc 4 2022 0
	lfs 21,112(1)
	.loc 4 2011 0
	fmsubs 26,8,26,29
.LVL675:
	.loc 4 2023 0
	lfs 29,156(1)
	.loc 4 2022 0
	fmuls 21,21,8
	.loc 4 2011 0
	stfs 26,224(1)
	.loc 4 2023 0
	lfs 26,136(1)
	.loc 4 2022 0
	stfs 21,244(1)
	.loc 4 2023 0
	fmsubs 26,26,10,29
	.loc 4 2024 0
	lfs 21,124(1)
	.loc 4 2031 0
	lfs 29,104(1)
	.loc 4 2023 0
	stfs 26,112(1)
	.loc 4 2024 0
	lfs 26,432(1)
	fmsubs 21,21,10,26
	.loc 4 2046 0
	lfs 26,320(1)
	fmuls 26,12,26
	.loc 4 2024 0
	stfs 21,136(1)
	.loc 4 2031 0
	lfs 21,476(1)
	.loc 4 2046 0
	stfs 26,364(1)
	.loc 4 2031 0
	fmsubs 29,29,8,21
	.loc 4 2049 0
	lfs 26,248(1)
	.loc 4 2048 0
	lfs 21,256(1)
	.loc 4 2031 0
	stfs 29,124(1)
	.loc 4 2048 0
	fmuls 21,12,21
	.loc 4 2047 0
	lfs 29,196(1)
	fmuls 29,12,29
	.loc 4 2048 0
	stfs 21,256(1)
	.loc 4 2050 0
	lfs 21,192(1)
	.loc 4 2047 0
	stfs 29,432(1)
	.loc 4 2049 0
	lfs 29,480(1)
	fmadds 26,5,26,29
	.loc 4 2051 0
	lfs 29,192(1)
	.loc 4 2049 0
	stfs 26,104(1)
	.loc 4 2050 0
	lfs 26,484(1)
	fmadds 21,5,21,26
	.loc 4 2052 0
	lfs 26,196(1)
	.loc 4 2050 0
	stfs 21,176(1)
	.loc 4 2051 0
	lfs 21,488(1)
	fmadds 29,4,29,21
	.loc 4 2053 0
	lfs 21,396(1)
	.loc 4 2051 0
	stfs 29,308(1)
	.loc 4 2052 0
	lfs 29,528(1)
	fmadds 26,4,26,29
	stfs 26,180(1)
	.loc 4 2053 0
	lfs 26,492(1)
	fmsubs 21,12,21,26
	stfs 21,476(1)
	.loc 4 2054 0
	lfs 21,532(1)
	lfs 29,336(1)
	.loc 4 2055 0
	lfs 26,260(1)
	.loc 4 2054 0
	fmsubs 29,12,29,21
	.loc 4 2056 0
	lfs 21,328(1)
	.loc 4 2054 0
	stfs 29,480(1)
	.loc 4 2055 0
	lfs 29,536(1)
	fmsubs 26,12,26,29
	.loc 4 2057 0
	lfs 29,544(1)
	fmsubs 14,0,14,29
	.loc 4 2064 0
	lfs 29,200(1)
	.loc 4 2055 0
	stfs 26,260(1)
	.loc 4 2056 0
	lfs 26,540(1)
	.loc 4 2057 0
	stfs 14,484(1)
	.loc 4 2056 0
	fmadds 21,4,21,26
	.loc 4 2061 0
	lfs 14,400(1)
	.loc 4 2063 0
	lfs 26,268(1)
	.loc 4 2061 0
	fmuls 14,12,14
	.loc 4 2056 0
	stfs 21,184(1)
	.loc 4 2063 0
	fmuls 26,12,26
	.loc 4 2062 0
	lfs 21,340(1)
	.loc 4 2061 0
	stfs 14,488(1)
	.loc 4 2062 0
	fmuls 21,12,21
	.loc 4 2064 0
	lfs 14,548(1)
	.loc 4 2063 0
	stfs 26,268(1)
	.loc 4 2065 0
	lfs 26,552(1)
	.loc 4 2064 0
	fmadds 29,5,29,14
	.loc 4 2062 0
	stfs 21,528(1)
	.loc 4 2065 0
	lfs 21,264(1)
	.loc 4 2066 0
	lfs 14,556(1)
	.loc 4 2065 0
	fmadds 21,5,21,26
	.loc 4 2064 0
	stfs 29,312(1)
	.loc 4 2067 0
	lfs 26,560(1)
	.loc 4 2066 0
	lfs 29,264(1)
	.loc 4 2065 0
	stfs 21,188(1)
	.loc 4 2067 0
	lfs 21,340(1)
	.loc 4 2066 0
	fmadds 29,4,29,14
	.loc 4 2068 0
	lfs 14,564(1)
	.loc 4 2067 0
	fmadds 21,4,21,26
	.loc 4 2069 0
	lfs 26,568(1)
	.loc 4 2066 0
	stfs 29,316(1)
	.loc 4 2068 0
	lfs 29,404(1)
	.loc 4 2067 0
	stfs 21,156(1)
	.loc 4 2069 0
	lfs 21,408(1)
	.loc 4 2068 0
	fmsubs 29,12,29,14
	.loc 4 2069 0
	fmsubs 21,12,21,26
	.loc 4 2068 0
	stfs 29,340(1)
	.loc 4 2069 0
	stfs 21,492(1)
	.loc 4 2070 0
	lfs 29,272(1)
	lfs 14,640(1)
	.loc 4 2071 0
	lfs 26,572(1)
	.loc 4 2070 0
	fmsubs 29,12,29,14
	.loc 4 2071 0
	lfs 21,348(1)
	.loc 4 2076 0
	lfs 14,412(1)
	.loc 4 2071 0
	fmadds 21,4,21,26
	.loc 4 2078 0
	lfs 26,280(1)
	.loc 4 2076 0
	fmuls 14,12,14
	.loc 4 2070 0
	stfs 29,272(1)
	.loc 4 2072 0
	lfs 29,644(1)
	.loc 4 2078 0
	fmuls 26,12,26
	.loc 4 2071 0
	stfs 21,196(1)
	.loc 4 2072 0
	fmsubs 16,0,16,29
	.loc 4 2077 0
	lfs 21,356(1)
	.loc 4 2076 0
	stfs 14,536(1)
	.loc 4 2079 0
	lfs 29,204(1)
	.loc 4 2077 0
	fmuls 21,12,21
	.loc 4 2079 0
	lfs 14,576(1)
	.loc 4 2078 0
	stfs 26,280(1)
	.loc 4 2079 0
	fmadds 29,5,29,14
	.loc 4 2080 0
	lfs 26,580(1)
	.loc 4 2081 0
	lfs 14,584(1)
	.loc 4 2077 0
	stfs 21,540(1)
	.loc 4 2079 0
	stfs 29,544(1)
	.loc 4 2080 0
	lfs 21,276(1)
	.loc 4 2081 0
	lfs 29,276(1)
	.loc 4 2080 0
	fmadds 21,5,21,26
	.loc 4 2082 0
	lfs 26,588(1)
	.loc 4 2081 0
	fmadds 29,4,29,14
	.loc 4 2083 0
	lfs 14,648(1)
	.loc 4 2072 0
	stfs 16,532(1)
	.loc 4 2080 0
	stfs 21,548(1)
	.loc 4 2081 0
	stfs 29,552(1)
	.loc 4 2082 0
	lfs 21,356(1)
	.loc 4 2083 0
	lfs 29,424(1)
	.loc 4 2082 0
	fmadds 21,4,21,26
	.loc 4 2084 0
	lfs 26,652(1)
	.loc 4 2083 0
	fmsubs 29,12,29,14
	.loc 4 2082 0
	stfs 21,356(1)
	.loc 4 2083 0
	stfs 29,556(1)
	.loc 4 2084 0
	lfs 21,428(1)
	.loc 4 2085 0
	lfs 29,656(1)
	.loc 4 2084 0
	fmsubs 21,12,21,26
	.loc 4 2085 0
	fmsubs 17,12,17,29
	.loc 4 2084 0
	stfs 21,560(1)
	.loc 4 2085 0
	stfs 17,564(1)
	.loc 4 2087 0
	lfs 21,660(1)
	.loc 4 2086 0
	lfs 17,592(1)
	.loc 4 2087 0
	fmsubs 18,0,18,21
	.loc 4 2086 0
	lfs 14,416(1)
	.loc 4 2091 0
	lfs 26,216(1)
	.loc 4 2086 0
	fmadds 14,4,14,17
	.loc 4 2094 0
	lfs 17,212(1)
	.loc 4 2087 0
	stfs 18,640(1)
	.loc 4 2091 0
	fmuls 26,26,12
	.loc 4 2094 0
	lfs 18,664(1)
	.loc 4 2086 0
	stfs 14,568(1)
	.loc 4 2094 0
	fmadds 17,17,5,18
	.loc 4 2092 0
	lfs 29,172(1)
	.loc 4 2093 0
	lfs 14,284(1)
	.loc 4 2092 0
	fmuls 29,29,12
	.loc 4 2097 0
	lfs 18,676(1)
	.loc 4 2093 0
	fmuls 14,14,12
	.loc 4 2094 0
	stfs 17,580(1)
	.loc 4 2097 0
	lfs 17,172(1)
	.loc 4 2091 0
	stfs 26,572(1)
	.loc 4 2097 0
	fmadds 17,17,4,18
	.loc 4 2095 0
	lfs 26,668(1)
	.loc 4 2092 0
	stfs 29,644(1)
	.loc 4 2093 0
	stfs 14,576(1)
	.loc 4 2095 0
	lfs 21,168(1)
	.loc 4 2096 0
	lfs 14,672(1)
	lfs 29,168(1)
	.loc 4 2095 0
	fmadds 21,21,5,26
	.loc 4 2100 0
	lfs 18,692(1)
	.loc 4 2096 0
	fmadds 29,29,4,14
	.loc 4 2097 0
	stfs 17,648(1)
	.loc 4 2100 0
	lfs 17,300(1)
	.loc 4 2098 0
	lfs 26,684(1)
	.loc 4 2100 0
	fmsubs 17,17,12,18
	.loc 4 2099 0
	lfs 14,688(1)
	.loc 4 2095 0
	stfs 21,584(1)
	.loc 4 2096 0
	stfs 29,588(1)
	.loc 4 2098 0
	lfs 21,220(1)
	.loc 4 2099 0
	lfs 29,228(1)
	.loc 4 2098 0
	fmsubs 21,21,12,26
	.loc 4 2100 0
	stfs 17,592(1)
	.loc 4 2099 0
	fmsubs 29,29,12,14
	.loc 4 2102 0
	lfs 17,696(1)
	lfs 14,232(1)
	.loc 4 2098 0
	stfs 21,652(1)
	.loc 4 2102 0
	fmsubs 14,14,0,17
	.loc 4 2101 0
	lfs 21,292(1)
	.loc 4 2099 0
	stfs 29,656(1)
	.loc 4 2101 0
	lfs 29,680(1)
	.loc 4 2102 0
	stfs 14,660(1)
	.loc 4 2101 0
	fmadds 26,21,4,29
	.loc 4 1983 0
	lfs 18,704(1)
	lfs 21,16(1)
	.loc 4 1984 0
	lfs 29,48(1)
	.loc 4 1983 0
	fmadds 14,6,18,21
	.loc 4 2003 0
	lfs 21,40(1)
	.loc 4 1984 0
	fmadds 18,7,18,29
	.loc 4 2004 0
	lfs 29,140(1)
	.loc 4 2003 0
	fmadds 21,6,30,21
	.loc 4 1991 0
	lfs 17,84(1)
	.loc 4 2004 0
	fmadds 29,7,30,29
	.loc 4 1991 0
	fmadds 19,9,17,19
	.loc 4 2011 0
	lfs 17,88(1)
	.loc 4 2003 0
	stfs 21,16(1)
	.loc 4 2011 0
	lfs 21,224(1)
	.loc 4 2004 0
	stfs 29,48(1)
	.loc 4 2011 0
	fmadds 16,9,17,21
	.loc 4 2023 0
	lfs 29,72(1)
	lfs 17,112(1)
	.loc 4 2024 0
	lfs 21,136(1)
	.loc 4 2023 0
	fmadds 6,29,6,17
	.loc 4 2024 0
	fmadds 7,29,7,21
	.loc 4 2031 0
	lfs 21,124(1)
	lfs 29,108(1)
	fmadds 17,29,9,21
	.loc 4 2049 0
	lfs 21,104(1)
	lfs 29,708(1)
	fmadds 29,20,29,21
	.loc 4 2050 0
	lfs 21,176(1)
	.loc 4 2049 0
	stfs 29,112(1)
	.loc 4 2050 0
	lfs 29,708(1)
	fmadds 29,25,29,21
	.loc 4 2051 0
	lfs 21,308(1)
	.loc 4 2050 0
	stfs 29,136(1)
	.loc 4 2051 0
	lfs 29,248(1)
	fmadds 29,25,29,21
	.loc 4 2052 0
	lfs 21,180(1)
	.loc 4 2051 0
	stfs 29,124(1)
	.loc 4 2052 0
	lfs 29,320(1)
	fmadds 29,25,29,21
	.loc 4 2056 0
	lfs 21,184(1)
	.loc 4 2052 0
	stfs 29,104(1)
	.loc 4 2056 0
	lfs 29,324(1)
	fmadds 29,25,29,21
	.loc 4 2064 0
	lfs 21,312(1)
	.loc 4 2056 0
	stfs 29,172(1)
	.loc 4 2064 0
	lfs 29,56(1)
	fmadds 29,20,29,21
	.loc 4 2065 0
	lfs 21,188(1)
	.loc 4 2064 0
	stfs 29,284(1)
	.loc 4 2065 0
	lfs 29,56(1)
	fmadds 29,25,29,21
	stfs 29,300(1)
	.loc 4 2066 0
	lfs 21,316(1)
	lfs 29,200(1)
	fmadds 29,25,29,21
	.loc 4 2067 0
	lfs 21,156(1)
	.loc 4 2066 0
	stfs 29,232(1)
	.loc 4 2067 0
	lfs 29,400(1)
	fmadds 29,25,29,21
	.loc 4 2071 0
	lfs 21,196(1)
	.loc 4 2067 0
	stfs 29,216(1)
	.loc 4 2071 0
	lfs 29,344(1)
	fmadds 29,25,29,21
	.loc 4 2079 0
	lfs 21,544(1)
	.loc 4 2071 0
	stfs 29,220(1)
	.loc 4 2079 0
	lfs 29,92(1)
	fmadds 29,20,29,21
	.loc 4 2080 0
	lfs 21,548(1)
	.loc 4 2079 0
	stfs 29,40(1)
	.loc 4 2080 0
	lfs 29,92(1)
	fmadds 29,25,29,21
	.loc 4 2081 0
	lfs 21,552(1)
	.loc 4 2080 0
	stfs 29,140(1)
	.loc 4 2081 0
	lfs 29,204(1)
	fmadds 29,25,29,21
	.loc 4 2082 0
	lfs 21,356(1)
	.loc 4 2081 0
	stfs 29,224(1)
	.loc 4 2082 0
	lfs 29,412(1)
	fmadds 29,25,29,21
	.loc 4 2086 0
	lfs 21,568(1)
	.loc 4 2082 0
	stfs 29,176(1)
	.loc 4 2086 0
	lfs 29,360(1)
	fmadds 29,25,29,21
	.loc 4 2094 0
	lfs 21,580(1)
	.loc 4 2086 0
	stfs 29,308(1)
	.loc 4 2094 0
	lfs 29,368(1)
	fmadds 29,29,4,21
	.loc 4 2095 0
	lfs 21,584(1)
	.loc 4 2094 0
	stfs 29,180(1)
	.loc 4 2095 0
	lfs 29,368(1)
	fmadds 29,29,24,21
	.loc 4 2096 0
	lfs 21,588(1)
	.loc 4 2095 0
	stfs 29,184(1)
	.loc 4 2096 0
	lfs 29,380(1)
	fmadds 29,29,24,21
	.loc 4 2097 0
	lfs 21,648(1)
	.loc 4 2096 0
	stfs 29,312(1)
	.loc 4 2097 0
	lfs 29,384(1)
	fmadds 29,29,24,21
	stfs 29,188(1)
	.loc 4 2101 0
	lfs 29,388(1)
	.loc 4 1982 0
	lfs 21,148(1)
	.loc 4 2101 0
	fmadds 26,29,24,26
	.loc 4 2001 0
	lfs 29,36(1)
	.loc 4 1981 0
	stfs 15,156(1)
	.loc 4 2001 0
	fmuls 29,8,29
	.loc 4 1982 0
	lfs 15,236(1)
	.loc 4 2101 0
	stfs 26,316(1)
	.loc 4 1982 0
	fmsubs 26,10,15,21
	.loc 4 2002 0
	lfs 21,240(1)
	.loc 4 2001 0
	stfs 29,380(1)
	.loc 4 2002 0
	lfs 29,152(1)
	fmsubs 15,10,21,29
	.loc 4 2021 0
	lfs 21,96(1)
	.loc 4 2022 0
	lfs 29,120(1)
	.loc 4 2021 0
	fmuls 8,21,8
	.loc 4 2044 0
	lfs 21,248(1)
	.loc 4 2002 0
	fmadds 15,9,30,15
	.loc 4 2044 0
	fmuls 21,12,21
	.loc 4 2021 0
	stfs 8,384(1)
	.loc 4 2022 0
	lfs 8,244(1)
	.loc 4 2044 0
	stfs 21,388(1)
	.loc 4 2022 0
	fmsubs 29,29,10,8
	.loc 4 2046 0
	lfs 21,364(1)
	lfs 8,324(1)
	.loc 4 2022 0
	stfs 29,96(1)
	.loc 4 2046 0
	fmsubs 8,13,8,21
	.loc 4 2045 0
	lfs 29,192(1)
	.loc 4 2048 0
	lfs 21,332(1)
	.loc 4 2045 0
	fmuls 29,12,29
	.loc 4 2046 0
	stfs 8,192(1)
	.loc 4 2047 0
	lfs 8,432(1)
	.loc 4 2045 0
	stfs 29,248(1)
	.loc 4 2047 0
	lfs 29,328(1)
	fmsubs 29,13,29,8
	.loc 4 2053 0
	lfs 8,476(1)
	fmadds 8,5,28,8
	.loc 4 2047 0
	stfs 29,320(1)
	.loc 4 2048 0
	lfs 29,256(1)
	.loc 4 2053 0
	stfs 8,120(1)
	.loc 4 2048 0
	fmsubs 21,13,21,29
	.loc 4 2057 0
	lfs 8,336(1)
	.loc 4 2055 0
	lfs 29,260(1)
	.loc 4 2048 0
	stfs 21,196(1)
	.loc 4 2055 0
	fmadds 29,4,22,29
	.loc 4 2054 0
	lfs 21,480(1)
	fmadds 21,5,22,21
	.loc 4 2055 0
	stfs 29,368(1)
	.loc 4 2054 0
	stfs 21,36(1)
	.loc 4 2057 0
	lfs 21,484(1)
	fmadds 8,4,8,21
	stfs 8,236(1)
	.loc 4 2059 0
	lfs 29,200(1)
	.loc 4 2060 0
	lfs 8,264(1)
	.loc 4 2059 0
	fmuls 29,12,29
	.loc 4 2061 0
	lfs 21,344(1)
	.loc 4 2060 0
	fmuls 8,12,8
	.loc 4 2059 0
	stfs 29,256(1)
	.loc 4 2061 0
	lfs 29,488(1)
	.loc 4 2060 0
	stfs 8,324(1)
	.loc 4 2061 0
	fmsubs 21,13,21,29
	.loc 4 2062 0
	lfs 8,348(1)
	.loc 4 2063 0
	lfs 29,352(1)
	.loc 4 2061 0
	stfs 21,328(1)
	.loc 4 2062 0
	lfs 21,528(1)
	fmsubs 8,13,8,21
	.loc 4 2068 0
	lfs 21,24(1)
	.loc 4 2062 0
	stfs 8,332(1)
	.loc 4 2063 0
	lfs 8,268(1)
	fmsubs 29,13,29,8
	.loc 4 2069 0
	lfs 8,64(1)
	.loc 4 2063 0
	stfs 29,336(1)
	.loc 4 2068 0
	lfs 29,340(1)
	fmadds 21,5,21,29
	.loc 4 2070 0
	lfs 29,64(1)
	.loc 4 2068 0
	stfs 21,148(1)
	.loc 4 2069 0
	lfs 21,492(1)
	fmadds 8,5,8,21
	.loc 4 2072 0
	lfs 21,408(1)
	.loc 4 2069 0
	stfs 8,240(1)
	.loc 4 2070 0
	lfs 8,272(1)
	fmadds 29,4,29,8
	.loc 4 2074 0
	lfs 8,204(1)
	fmuls 8,12,8
	.loc 4 2070 0
	stfs 29,244(1)
	.loc 4 2072 0
	lfs 29,532(1)
	.loc 4 2074 0
	stfs 8,260(1)
	.loc 4 2072 0
	fmadds 21,4,21,29
	.loc 4 2076 0
	lfs 8,536(1)
	lfs 29,360(1)
	.loc 4 2072 0
	stfs 21,152(1)
	.loc 4 2076 0
	fmsubs 29,13,29,8
	.loc 4 2075 0
	lfs 21,276(1)
	fmuls 21,12,21
	.loc 4 2076 0
	stfs 29,264(1)
	.loc 4 2077 0
	lfs 29,540(1)
	.loc 4 2075 0
	stfs 21,200(1)
	.loc 4 2077 0
	lfs 21,416(1)
	fmsubs 21,13,21,29
	stfs 21,400(1)
	.loc 4 2078 0
	lfs 21,280(1)
	lfs 8,420(1)
	.loc 4 2083 0
	lfs 29,128(1)
	.loc 4 2078 0
	fmsubs 8,13,8,21
	.loc 4 2084 0
	lfs 21,80(1)
	.loc 4 2078 0
	stfs 8,340(1)
	.loc 4 2083 0
	lfs 8,556(1)
	fmadds 29,5,29,8
	.loc 4 2085 0
	lfs 8,80(1)
	.loc 4 2083 0
	stfs 29,268(1)
	.loc 4 2084 0
	lfs 29,560(1)
	fmadds 21,5,21,29
	.loc 4 2087 0
	lfs 29,428(1)
	.loc 4 2084 0
	stfs 21,344(1)
	.loc 4 2085 0
	lfs 21,564(1)
	fmadds 8,4,8,21
	.loc 4 2089 0
	lfs 21,212(1)
	fmuls 21,21,12
	.loc 4 2085 0
	stfs 8,348(1)
	.loc 4 2087 0
	lfs 8,640(1)
	.loc 4 2089 0
	stfs 21,408(1)
	.loc 4 2087 0
	fmadds 29,4,29,8
	.loc 4 2091 0
	lfs 21,572(1)
	lfs 8,372(1)
	.loc 4 2087 0
	stfs 29,352(1)
	.loc 4 2091 0
	fmsubs 8,8,13,21
	.loc 4 2090 0
	lfs 29,168(1)
	.loc 4 2093 0
	lfs 21,296(1)
	.loc 4 2090 0
	fmuls 29,29,12
	.loc 4 2091 0
	stfs 8,204(1)
	.loc 4 2092 0
	lfs 8,644(1)
	.loc 4 2090 0
	stfs 29,272(1)
	.loc 4 2092 0
	lfs 29,292(1)
	fmsubs 29,29,13,8
	.loc 4 2098 0
	lfs 8,304(1)
	.loc 4 2092 0
	stfs 29,276(1)
	.loc 4 2093 0
	lfs 29,576(1)
	fmsubs 21,21,13,29
	.loc 4 2099 0
	lfs 29,288(1)
	.loc 4 2093 0
	stfs 21,412(1)
	.loc 4 2098 0
	lfs 21,652(1)
	fmadds 8,8,5,21
	stfs 8,356(1)
	.loc 4 2099 0
	lfs 8,656(1)
	fmadds 29,29,5,8
	stfs 29,280(1)
	.loc 4 2100 0
	lfs 29,592(1)
	lfs 21,288(1)
	fmadds 21,21,4,29
	.loc 4 2102 0
	lfs 29,660(1)
	.loc 4 2100 0
	stfs 21,360(1)
	.loc 4 2102 0
	lfs 21,228(1)
	fmadds 8,21,4,29
	.loc 4 1982 0
	lfs 21,704(1)
	.loc 4 2022 0
	lfs 29,72(1)
	.loc 4 1982 0
	fmadds 26,9,21,26
	.loc 4 2022 0
	lfs 21,96(1)
	fmadds 9,29,9,21
	.loc 4 2053 0
	lfs 29,120(1)
	.loc 4 2054 0
	lfs 21,36(1)
	.loc 4 2053 0
	fmadds 29,20,19,29
	.loc 4 2054 0
	fmadds 21,25,19,21
	.loc 4 2053 0
	stfs 29,96(1)
	.loc 4 2055 0
	lfs 29,368(1)
	.loc 4 2054 0
	stfs 21,120(1)
	.loc 4 2055 0
	fmadds 29,25,28,29
	.loc 4 2057 0
	lfs 21,396(1)
	.loc 4 2055 0
	stfs 29,36(1)
	.loc 4 2057 0
	lfs 29,236(1)
	fmadds 21,25,21,29
	.loc 4 2069 0
	lfs 29,240(1)
	fmadds 29,25,16,29
	.loc 4 2057 0
	stfs 21,168(1)
	.loc 4 2068 0
	lfs 21,148(1)
	.loc 4 2069 0
	stfs 29,296(1)
	.loc 4 2068 0
	fmadds 21,20,16,21
	.loc 4 2070 0
	lfs 29,244(1)
	.loc 4 2068 0
	stfs 21,292(1)
	.loc 4 2070 0
	lfs 21,24(1)
	fmadds 21,25,21,29
	.loc 4 2072 0
	lfs 29,152(1)
	.loc 4 2070 0
	stfs 21,228(1)
	.loc 4 2072 0
	lfs 21,404(1)
	fmadds 21,25,21,29
	.loc 4 2084 0
	lfs 29,344(1)
	fmadds 29,25,17,29
	.loc 4 2072 0
	stfs 21,212(1)
	.loc 4 2083 0
	lfs 21,268(1)
	.loc 4 2084 0
	stfs 29,368(1)
	.loc 4 2083 0
	fmadds 21,20,17,21
	.loc 4 2085 0
	lfs 29,348(1)
	.loc 4 2083 0
	stfs 21,372(1)
	.loc 4 2085 0
	lfs 21,128(1)
	fmadds 21,25,21,29
	stfs 21,236(1)
	.loc 4 2087 0
	lfs 29,352(1)
	lfs 21,424(1)
	fmadds 21,25,21,29
	.loc 4 2098 0
	lfs 29,356(1)
	.loc 4 2087 0
	stfs 21,148(1)
	.loc 4 2098 0
	lfs 21,436(1)
	fmadds 21,21,4,29
	.loc 4 2099 0
	lfs 29,280(1)
	.loc 4 2098 0
	stfs 21,240(1)
	.loc 4 2099 0
	lfs 21,436(1)
	fmadds 21,21,24,29
	.loc 4 2100 0
	lfs 29,360(1)
	.loc 4 2099 0
	stfs 21,436(1)
	.loc 4 2100 0
	lfs 21,472(1)
	fmadds 21,21,24,29
	.loc 4 1981 0
	lfs 29,84(1)
	.loc 4 2100 0
	stfs 21,244(1)
	.loc 4 2102 0
	lfs 21,524(1)
	fmadds 8,21,24,8
	stfs 8,152(1)
	.loc 4 1981 0
	lfs 8,156(1)
	fmsubs 21,10,29,8
	.loc 4 2001 0
	lfs 8,380(1)
	lfs 29,88(1)
	fmsubs 29,10,29,8
	.loc 4 2021 0
	lfs 8,384(1)
	.loc 4 2001 0
	stfs 29,88(1)
	.loc 4 2021 0
	lfs 29,108(1)
	fmsubs 10,29,10,8
	.loc 4 2044 0
	lfs 29,388(1)
	.loc 4 2045 0
	lfs 8,248(1)
	.loc 4 2044 0
	fmsubs 28,13,28,29
	.loc 4 2048 0
	lfs 29,196(1)
	.loc 4 2021 0
	stfs 10,108(1)
	.loc 4 2045 0
	fmsubs 22,13,22,8
	.loc 4 2043 0
	lfs 10,708(1)
	.loc 4 2048 0
	fmadds 29,4,18,29
	.loc 4 2044 0
	stfs 28,380(1)
	.loc 4 2043 0
	fmuls 10,12,10
	.loc 4 2047 0
	lfs 28,320(1)
	.loc 4 2058 0
	lfs 8,56(1)
	.loc 4 2047 0
	fmadds 28,5,18,28
	.loc 4 2045 0
	stfs 22,384(1)
	.loc 4 2058 0
	fmuls 8,12,8
	.loc 4 2043 0
	stfs 10,156(1)
	.loc 4 2046 0
	lfs 10,192(1)
	.loc 4 2047 0
	stfs 28,388(1)
	.loc 4 2046 0
	fmadds 22,5,14,10
	.loc 4 2048 0
	stfs 29,524(1)
	.loc 4 2058 0
	stfs 8,248(1)
	.loc 4 2059 0
	lfs 28,256(1)
	lfs 10,24(1)
	.loc 4 2046 0
	fmadds 22,20,26,22
	.loc 4 2060 0
	lfs 8,324(1)
	.loc 4 2059 0
	fmsubs 10,13,10,28
	.loc 4 2060 0
	lfs 29,64(1)
	.loc 4 2061 0
	lfs 28,328(1)
	.loc 4 2060 0
	fmsubs 29,13,29,8
	.loc 4 2062 0
	lfs 8,332(1)
	.loc 4 2059 0
	stfs 10,192(1)
	.loc 4 2061 0
	lfs 10,16(1)
	.loc 4 2060 0
	stfs 29,320(1)
	.loc 4 2061 0
	fmadds 10,5,10,28
	.loc 4 2062 0
	lfs 29,48(1)
	.loc 4 2063 0
	lfs 28,336(1)
	.loc 4 2062 0
	fmadds 29,5,29,8
	.loc 4 2074 0
	lfs 8,128(1)
	.loc 4 2061 0
	stfs 10,492(1)
	.loc 4 2063 0
	lfs 10,48(1)
	.loc 4 2062 0
	stfs 29,64(1)
	.loc 4 2063 0
	fmadds 10,4,10,28
	.loc 4 2073 0
	lfs 29,92(1)
	.loc 4 2075 0
	lfs 28,80(1)
	.loc 4 2073 0
	fmuls 29,12,29
	.loc 4 2063 0
	stfs 10,196(1)
	.loc 4 2074 0
	lfs 10,260(1)
	.loc 4 2073 0
	stfs 29,256(1)
	.loc 4 2074 0
	fmsubs 8,13,8,10
	.loc 4 2075 0
	lfs 29,200(1)
	.loc 4 2077 0
	lfs 10,400(1)
	.loc 4 2075 0
	fmsubs 28,13,28,29
	.loc 4 2088 0
	lfs 29,440(1)
	.loc 4 2074 0
	stfs 8,324(1)
	.loc 4 2077 0
	fmadds 10,5,7,10
	.loc 4 2076 0
	lfs 8,264(1)
	.loc 4 2088 0
	fmuls 12,29,12
	.loc 4 2075 0
	stfs 28,328(1)
	.loc 4 2076 0
	fmadds 8,5,6,8
	.loc 4 2077 0
	stfs 10,80(1)
	.loc 4 2078 0
	lfs 28,340(1)
	.loc 4 2089 0
	lfs 10,408(1)
	.loc 4 2076 0
	stfs 8,128(1)
	.loc 4 2078 0
	fmadds 28,4,7,28
	.loc 4 2089 0
	lfs 8,304(1)
	.loc 4 2088 0
	stfs 12,440(1)
	.loc 4 2089 0
	fmsubs 8,8,13,10
	.loc 4 2078 0
	stfs 28,332(1)
	.loc 4 2089 0
	stfs 8,396(1)
	.loc 4 2090 0
	lfs 12,288(1)
	lfs 28,272(1)
	.loc 4 2091 0
	lfs 8,204(1)
	.loc 4 2090 0
	fmsubs 12,12,13,28
	.loc 4 2091 0
	lfs 29,208(1)
	.loc 4 2092 0
	lfs 10,132(1)
	.loc 4 2091 0
	fmadds 29,29,5,8
	.loc 4 2093 0
	lfs 28,132(1)
	.loc 4 2090 0
	stfs 12,336(1)
	.loc 4 2092 0
	lfs 12,276(1)
	.loc 4 2093 0
	lfs 8,412(1)
	.loc 4 2092 0
	fmadds 10,10,5,12
	.loc 4 2091 0
	stfs 29,288(1)
	.loc 4 2128 0
	lfs 12,316(1)
	.loc 4 2093 0
	fmadds 29,28,4,8
	.loc 4 2122 0
	lfs 28,308(1)
	.loc 4 2092 0
	stfs 10,304(1)
	.loc 4 2128 0
	fmuls 12,2,12
	.loc 4 2134 0
	lfs 10,460(1)
	.loc 4 2122 0
	fmuls 28,2,28
	.loc 4 2116 0
	lfs 8,220(1)
	.loc 4 2134 0
	fmuls 10,10,2
	.loc 4 2128 0
	stfs 12,200(1)
	.loc 4 2116 0
	fmuls 8,2,8
	.loc 4 2122 0
	stfs 28,264(1)
	.loc 4 2133 0
	lfs 12,376(1)
	.loc 4 2134 0
	stfs 10,260(1)
	.loc 4 2116 0
	stfs 8,400(1)
	.loc 4 2133 0
	fmuls 12,12,2
	.loc 4 2110 0
	lfs 10,172(1)
	.loc 4 2127 0
	lfs 28,188(1)
	.loc 4 2121 0
	lfs 8,176(1)
	.loc 4 2110 0
	fmuls 10,2,10
	.loc 4 2127 0
	fmuls 28,2,28
	.loc 4 2133 0
	stfs 12,268(1)
	.loc 4 2121 0
	fmuls 8,2,8
	.loc 4 2109 0
	lfs 12,104(1)
	.loc 4 2110 0
	stfs 10,340(1)
	.loc 4 2127 0
	stfs 28,344(1)
	.loc 4 2109 0
	fmuls 12,2,12
	.loc 4 2121 0
	stfs 8,348(1)
	.loc 4 2115 0
	lfs 10,216(1)
	.loc 4 2132 0
	lfs 28,376(1)
	.loc 4 2126 0
	lfs 8,188(1)
	.loc 4 2115 0
	fmuls 10,2,10
	.loc 4 2132 0
	fmuls 28,28,31
	.loc 4 2109 0
	stfs 12,404(1)
	.loc 4 2126 0
	fmuls 8,31,8
	.loc 4 2115 0
	stfs 10,352(1)
	.loc 4 2132 0
	stfs 28,408(1)
	.loc 4 2126 0
	stfs 8,188(1)
	.loc 4 2120 0
	lfs 10,176(1)
	.loc 4 2114 0
	lfs 12,216(1)
	.loc 4 2120 0
	fmuls 10,31,10
	.loc 4 2108 0
	lfs 28,104(1)
	.loc 4 2131 0
	lfs 8,452(1)
	.loc 4 2114 0
	fmuls 12,31,12
	.loc 4 2108 0
	fmuls 28,31,28
	.loc 4 2120 0
	stfs 10,176(1)
	.loc 4 2131 0
	fmuls 8,8,31
	.loc 4 2125 0
	lfs 10,312(1)
	.loc 4 2114 0
	stfs 12,272(1)
	.loc 4 2125 0
	fmuls 10,31,10
	.loc 4 2108 0
	stfs 28,204(1)
	.loc 4 2131 0
	stfs 8,276(1)
	.loc 4 2119 0
	lfs 12,224(1)
	.loc 4 2125 0
	stfs 10,412(1)
	.loc 4 2113 0
	lfs 28,232(1)
	.loc 4 2119 0
	fmuls 12,31,12
	.loc 4 2107 0
	lfs 8,124(1)
	.loc 4 2130 0
	lfs 10,500(1)
	.loc 4 2113 0
	fmuls 28,31,28
	.loc 4 2107 0
	fmuls 8,31,8
	.loc 4 2119 0
	stfs 12,356(1)
	.loc 4 2130 0
	fmuls 10,10,31
	.loc 4 2124 0
	lfs 12,184(1)
	.loc 4 2113 0
	stfs 28,280(1)
	.loc 4 2107 0
	stfs 8,360(1)
	.loc 4 2124 0
	fmuls 12,31,12
	.loc 4 2130 0
	stfs 10,416(1)
	.loc 4 2118 0
	lfs 28,140(1)
	.loc 4 2112 0
	lfs 8,300(1)
	.loc 4 2106 0
	lfs 10,136(1)
	.loc 4 2118 0
	fmuls 28,31,28
	.loc 4 2112 0
	fmuls 8,31,8
	.loc 4 2124 0
	stfs 12,420(1)
	.loc 4 2106 0
	fmuls 10,31,10
	.loc 4 2129 0
	lfs 12,508(1)
	.loc 4 2118 0
	stfs 28,424(1)
	.loc 4 2112 0
	stfs 8,428(1)
	.loc 4 2129 0
	fmuls 12,12,31
	.loc 4 2106 0
	stfs 10,364(1)
	.loc 4 2123 0
	lfs 28,180(1)
	.loc 4 2117 0
	lfs 8,40(1)
	.loc 4 2111 0
	lfs 10,284(1)
	.loc 4 2123 0
	fmuls 28,31,28
	.loc 4 2117 0
	fmuls 8,31,8
	.loc 4 2129 0
	stfs 12,432(1)
	.loc 4 2111 0
	fmuls 10,31,10
	.loc 4 2123 0
	stfs 28,476(1)
	.loc 4 2117 0
	stfs 8,480(1)
	.loc 4 2111 0
	stfs 10,484(1)
	.loc 4 2105 0
	lfs 12,112(1)
	.loc 4 2001 0
	lfs 8,88(1)
	.loc 4 2105 0
	fmuls 12,31,12
	.loc 4 2021 0
	lfs 10,72(1)
	.loc 4 1981 0
	lfs 28,704(1)
	.loc 4 2001 0
	fmadds 30,11,30,8
.LVL676:
	.loc 4 1869 0
	lfs 8,144(1)
	.loc 4 2105 0
	stfs 12,488(1)
	.loc 4 1981 0
	fmadds 21,11,28,21
.LVL677:
	.loc 4 2021 0
	lfs 12,108(1)
	.loc 4 1869 0
	fneg 28,8
	.loc 4 2046 0
	stfs 22,56(1)
	.loc 4 2021 0
	fmadds 11,10,11,12
.LVL678:
	.loc 4 2047 0
	lfs 10,388(1)
	.loc 4 2048 0
	lfs 12,524(1)
	.loc 4 2047 0
	fmadds 10,25,26,10
	.loc 4 2061 0
	lfs 22,492(1)
	.loc 4 2048 0
	fmadds 12,25,14,12
	.loc 4 2062 0
	lfs 8,64(1)
	.loc 4 2061 0
	fmadds 22,20,15,22
	.loc 4 2062 0
	fmadds 8,25,15,8
	.loc 4 2047 0
	stfs 10,24(1)
	.loc 4 2048 0
	stfs 12,72(1)
	.loc 4 2063 0
	lfs 10,16(1)
	lfs 12,196(1)
	.loc 4 2061 0
	stfs 22,92(1)
	.loc 4 2062 0
	stfs 8,108(1)
	.loc 4 2063 0
	fmadds 8,25,10,12
	.loc 4 2076 0
	lfs 22,128(1)
	.loc 4 2077 0
	lfs 10,80(1)
	.loc 4 2076 0
	fmadds 22,20,9,22
	.loc 4 2078 0
	lfs 12,332(1)
	.loc 4 2077 0
	fmadds 10,25,9,10
	.loc 4 2076 0
	stfs 22,128(1)
	.loc 4 2078 0
	fmadds 22,25,6,12
	.loc 4 2077 0
	stfs 10,80(1)
	.loc 4 2091 0
	lfs 12,288(1)
	lfs 10,468(1)
	fmadds 10,10,4,12
	.loc 4 2092 0
	lfs 12,304(1)
	.loc 4 2091 0
	stfs 10,88(1)
	.loc 4 2092 0
	lfs 10,468(1)
	fmadds 10,10,24,12
	.loc 4 2093 0
	lfs 12,520(1)
	.loc 4 2092 0
	stfs 10,288(1)
	.loc 4 2093 0
	fmadds 10,12,24,29
	.loc 4 2043 0
	lfs 29,156(1)
	.loc 4 2044 0
	lfs 12,380(1)
	.loc 4 2043 0
	fmsubs 19,13,19,29
.LVL679:
	.loc 4 2044 0
	fmadds 14,0,14,12
.LVL680:
	.loc 4 2043 0
	stfs 19,216(1)
	.loc 4 2044 0
	stfs 14,64(1)
	.loc 4 2045 0
	lfs 14,384(1)
	.loc 4 2059 0
	lfs 12,192(1)
	.loc 4 2045 0
	fmadds 18,0,18,14
.LVL681:
	.loc 4 2059 0
	lfs 29,16(1)
	.loc 4 2060 0
	lfs 14,48(1)
	.loc 4 2059 0
	fmadds 29,0,29,12
	.loc 4 2074 0
	lfs 12,324(1)
	.loc 4 2045 0
	stfs 18,104(1)
	.loc 4 2058 0
	lfs 18,248(1)
	.loc 4 2059 0
	stfs 29,84(1)
	.loc 4 2058 0
	fmsubs 16,13,16,18
.LVL682:
	.loc 4 2073 0
	lfs 29,256(1)
	.loc 4 2060 0
	lfs 18,320(1)
	.loc 4 2073 0
	fmsubs 17,13,17,29
.LVL683:
	.loc 4 2088 0
	lfs 29,440(1)
	.loc 4 2058 0
	stfs 16,304(1)
	.loc 4 2060 0
	fmadds 16,0,14,18
	.loc 4 2088 0
	lfs 18,496(1)
	.loc 4 2075 0
	lfs 14,328(1)
	.loc 4 2088 0
	fmsubs 13,18,13,29
	.loc 4 2073 0
	stfs 17,144(1)
	.loc 4 2074 0
	fmadds 17,0,6,12
	.loc 4 2089 0
	lfs 6,208(1)
.LVL684:
	lfs 12,396(1)
	.loc 4 2075 0
	fmadds 7,0,7,14
.LVL685:
	.loc 4 2134 0
	lfs 18,464(1)
	.loc 4 2089 0
	fmadds 19,6,0,12
	.loc 4 2090 0
	lfs 14,336(1)
	.loc 4 2134 0
	lfs 6,260(1)
	.loc 4 2074 0
	fmadds 17,20,11,17
	.loc 4 2088 0
	stfs 13,192(1)
	.loc 4 2075 0
	fmadds 7,25,11,7
	.loc 4 2090 0
	lfs 13,132(1)
	.loc 4 2134 0
	fmsubs 29,18,31,6
	.loc 4 2128 0
	lfs 18,200(1)
	.loc 4 2089 0
	fmadds 19,28,4,19
	.loc 4 2090 0
	fmadds 12,13,0,14
	.loc 4 2128 0
	lfs 13,152(1)
	.loc 4 2122 0
	lfs 6,148(1)
	.loc 4 2128 0
	fmsubs 14,31,13,18
	.loc 4 2122 0
	lfs 13,264(1)
	.loc 4 2090 0
	fmadds 24,28,24,12
	.loc 4 2122 0
	fmsubs 18,31,6,13
	.loc 4 2116 0
	lfs 13,400(1)
	lfs 6,212(1)
	fmsubs 6,31,6,13
	.loc 4 2110 0
	lfs 13,340(1)
	.loc 4 2116 0
	stfs 6,196(1)
	.loc 4 2110 0
	lfs 6,168(1)
	fmsubs 31,31,6,13
	.loc 4 2133 0
	lfs 6,268(1)
	.loc 4 2110 0
	stfs 31,132(1)
	.loc 4 2133 0
	lfs 31,464(1)
	fmsubs 31,31,1,6
	stfs 31,208(1)
	.loc 4 2127 0
	lfs 31,344(1)
	lfs 13,152(1)
	.loc 4 2121 0
	lfs 6,148(1)
	.loc 4 2127 0
	fmsubs 13,1,13,31
	.loc 4 2115 0
	lfs 31,212(1)
	.loc 4 2127 0
	stfs 13,376(1)
	.loc 4 2121 0
	lfs 13,348(1)
	fmsubs 6,1,6,13
	.loc 4 2109 0
	lfs 13,168(1)
	.loc 4 2121 0
	stfs 6,464(1)
	.loc 4 2115 0
	lfs 6,352(1)
	fmsubs 31,1,31,6
	.loc 4 2132 0
	lfs 6,460(1)
	.loc 4 2115 0
	stfs 31,212(1)
	.loc 4 2109 0
	lfs 31,404(1)
	fmsubs 13,1,13,31
	.loc 4 2126 0
	lfs 31,316(1)
	.loc 4 2109 0
	stfs 13,168(1)
	.loc 4 2132 0
	lfs 13,408(1)
	fmsubs 6,6,1,13
	.loc 4 2120 0
	lfs 13,308(1)
	.loc 4 2132 0
	stfs 6,460(1)
	.loc 4 2126 0
	lfs 6,188(1)
	fmsubs 31,1,31,6
	.loc 4 2114 0
	lfs 6,220(1)
	.loc 4 2126 0
	stfs 31,468(1)
	.loc 4 2120 0
	lfs 31,176(1)
	fmsubs 13,1,13,31
	.loc 4 2108 0
	lfs 31,172(1)
	.loc 4 2120 0
	stfs 13,440(1)
	.loc 4 2114 0
	lfs 13,272(1)
	fmsubs 6,1,6,13
	.loc 4 2131 0
	lfs 13,456(1)
	.loc 4 2114 0
	stfs 6,220(1)
	.loc 4 2108 0
	lfs 6,204(1)
	fmsubs 31,1,31,6
	.loc 4 2125 0
	lfs 6,244(1)
	.loc 4 2108 0
	stfs 31,172(1)
	.loc 4 2131 0
	lfs 31,276(1)
	fmsubs 13,13,1,31
	.loc 4 2119 0
	lfs 31,236(1)
	.loc 4 2131 0
	stfs 13,496(1)
	.loc 4 2125 0
	lfs 13,412(1)
	fmsubs 6,1,6,13
	stfs 6,500(1)
	.loc 4 2119 0
	lfs 6,356(1)
	fmsubs 31,1,31,6
	stfs 31,176(1)
	.loc 4 2113 0
	lfs 31,280(1)
	lfs 13,228(1)
	.loc 4 2107 0
	lfs 6,36(1)
	.loc 4 2113 0
	fmsubs 13,1,13,31
	.loc 4 2130 0
	lfs 31,504(1)
	.loc 4 2113 0
	stfs 13,308(1)
	.loc 4 2107 0
	lfs 13,360(1)
	fmsubs 6,1,6,13
	.loc 4 2124 0
	lfs 13,436(1)
	.loc 4 2107 0
	stfs 6,148(1)
	.loc 4 2130 0
	lfs 6,416(1)
	fmsubs 31,31,1,6
	.loc 4 2118 0
	lfs 6,368(1)
	.loc 4 2130 0
	stfs 31,504(1)
	.loc 4 2124 0
	lfs 31,420(1)
	fmsubs 13,1,13,31
	.loc 4 2112 0
	lfs 31,296(1)
	.loc 4 2124 0
	stfs 13,188(1)
	.loc 4 2118 0
	lfs 13,424(1)
	fmsubs 6,1,6,13
	.loc 4 2106 0
	lfs 13,120(1)
	.loc 4 2118 0
	stfs 6,316(1)
	.loc 4 2112 0
	lfs 6,428(1)
	fmsubs 31,1,31,6
	.loc 4 2129 0
	lfs 6,512(1)
	.loc 4 2112 0
	stfs 31,152(1)
	.loc 4 2106 0
	lfs 31,364(1)
	fmsubs 13,1,13,31
	.loc 4 2123 0
	lfs 31,240(1)
	.loc 4 2106 0
	stfs 13,156(1)
	.loc 4 2129 0
	lfs 13,432(1)
	fmsubs 6,6,1,13
	.loc 4 2117 0
	lfs 13,372(1)
	.loc 4 2129 0
	stfs 6,520(1)
	.loc 4 2123 0
	lfs 6,476(1)
	fmsubs 31,1,31,6
	.loc 4 2111 0
	lfs 6,292(1)
	.loc 4 2123 0
	stfs 31,380(1)
	.loc 4 2117 0
	lfs 31,480(1)
	fmsubs 13,1,13,31
	.loc 4 2105 0
	lfs 31,96(1)
	.loc 4 2117 0
	stfs 13,384(1)
	.loc 4 2111 0
	lfs 13,484(1)
	fmsubs 6,1,6,13
	stfs 6,472(1)
	.loc 4 2105 0
	lfs 6,488(1)
	fmsubs 1,1,31,6
	stfs 1,388(1)
	.loc 4 1869 0
	lfs 13,8(1)
	.loc 4 2044 0
	lfs 31,64(1)
	.loc 4 2045 0
	lfs 6,104(1)
	.loc 4 1869 0
	fneg 1,13
	.loc 4 2044 0
	fmadds 31,20,21,31
	.loc 4 2059 0
	lfs 13,84(1)
	.loc 4 2045 0
	fmadds 6,25,21,6
	.loc 4 2088 0
	lfs 4,596(1)
	.loc 4 2059 0
	fmadds 13,20,30,13
	.loc 4 2074 0
	stfs 17,104(1)
	.loc 4 2058 0
	lfs 20,304(1)
	.loc 4 2043 0
	lfs 17,216(1)
	.loc 4 2044 0
	stfs 31,16(1)
	.loc 4 2060 0
	fmadds 31,25,30,16
	.loc 4 2045 0
	stfs 6,48(1)
	.loc 4 2043 0
	fmadds 26,0,26,17
.LVL686:
	.loc 4 2073 0
	lfs 25,144(1)
	.loc 4 2058 0
	fmadds 15,0,15,20
.LVL687:
	.loc 4 2088 0
	lfs 6,192(1)
	.loc 4 2073 0
	fmadds 9,0,9,25
.LVL688:
	.loc 4 2134 0
	lfs 12,456(1)
	.loc 4 2128 0
	lfs 17,244(1)
	.loc 4 2122 0
	lfs 20,236(1)
	.loc 4 2134 0
	fmadds 29,12,23,29
	.loc 4 2116 0
	lfs 25,228(1)
	.loc 4 2128 0
	fmadds 14,23,17,14
	.loc 4 2059 0
	stfs 13,64(1)
	.loc 4 2088 0
	fmadds 13,4,0,6
	.loc 4 2116 0
	lfs 0,196(1)
	.loc 4 2122 0
	fmadds 18,23,20,18
	.loc 4 2110 0
	lfs 4,36(1)
	.loc 4 2116 0
	fmadds 6,23,25,0
	.loc 4 2110 0
	lfs 12,132(1)
	.loc 4 2133 0
	lfs 17,452(1)
	.loc 4 2088 0
	fmadds 13,28,5,13
	.loc 4 2133 0
	lfs 20,208(1)
	.loc 4 2110 0
	fmadds 16,23,4,12
	.loc 4 2127 0
	lfs 25,312(1)
	lfs 0,376(1)
	.loc 4 2089 0
	stfs 19,84(1)
	.loc 4 2133 0
	fmadds 19,17,23,20
	.loc 4 2127 0
	fmadds 4,23,25,0
	.loc 4 2121 0
	lfs 17,224(1)
	lfs 20,464(1)
	.loc 4 2115 0
	lfs 25,232(1)
	lfs 0,212(1)
	.loc 4 2121 0
	fmadds 12,23,17,20
	.loc 4 2109 0
	lfs 17,124(1)
	.loc 4 2115 0
	fmadds 20,23,25,0
	.loc 4 2109 0
	lfs 0,168(1)
	fmadds 25,23,17,0
	.loc 4 2132 0
	lfs 0,460(1)
	lfs 17,448(1)
	fmadds 17,17,23,0
	stfs 17,192(1)
	.loc 4 2126 0
	lfs 17,468(1)
	.loc 4 2120 0
	lfs 0,440(1)
	.loc 4 2126 0
	fmadds 17,23,10,17
	.loc 4 2120 0
	fmadds 0,23,22,0
	.loc 4 2126 0
	stfs 17,124(1)
	.loc 4 2114 0
	lfs 17,220(1)
	.loc 4 2120 0
	stfs 0,36(1)
	.loc 4 2114 0
	fmadds 17,23,8,17
	.loc 4 2108 0
	lfs 0,72(1)
	.loc 4 2114 0
	stfs 17,132(1)
	.loc 4 2108 0
	lfs 17,172(1)
	fmadds 0,23,0,17
	.loc 4 2131 0
	lfs 17,496(1)
	.loc 4 2108 0
	stfs 0,168(1)
	.loc 4 2131 0
	lfs 0,448(1)
	fmadds 0,0,2,17
	.loc 4 2113 0
	lfs 17,308(1)
	fmadds 8,2,8,17
	.loc 4 2131 0
	stfs 0,172(1)
	.loc 4 2125 0
	lfs 0,500(1)
	.loc 4 2113 0
	fmadds 8,1,31,8
	.loc 4 2125 0
	fmadds 10,2,10,0
	.loc 4 2107 0
	lfs 0,148(1)
	.loc 4 2125 0
	stfs 10,228(1)
	.loc 4 2119 0
	lfs 10,176(1)
	fmadds 22,2,22,10
	.loc 4 2130 0
	lfs 10,600(1)
	.loc 4 2119 0
	stfs 22,232(1)
	.loc 4 2107 0
	lfs 22,72(1)
	fmadds 17,2,22,0
	.loc 4 2130 0
	lfs 0,504(1)
	fmadds 22,10,2,0
	.loc 4 2124 0
	lfs 0,188(1)
	lfs 10,288(1)
	fmadds 10,2,10,0
	.loc 4 2118 0
	lfs 0,316(1)
	.loc 4 2124 0
	stfs 10,208(1)
	.loc 4 2118 0
	lfs 10,80(1)
	fmadds 10,2,10,0
	.loc 4 2112 0
	lfs 0,152(1)
	.loc 4 2118 0
	stfs 10,212(1)
	.loc 4 2112 0
	lfs 10,108(1)
	fmadds 10,2,10,0
	.loc 4 2106 0
	lfs 0,156(1)
	.loc 4 2112 0
	stfs 10,216(1)
	.loc 4 2106 0
	lfs 10,24(1)
	fmadds 10,2,10,0
	stfs 10,304(1)
	.loc 4 1869 0
	lfs 10,164(1)
	fneg 10,10
	stfs 10,220(1)
	.loc 4 2129 0
	lfs 10,520(1)
	lfs 0,392(1)
	.loc 4 2134 0
	lfs 5,8(1)
	.loc 4 2129 0
	fmadds 0,0,2,10
	.loc 4 2123 0
	lfs 10,380(1)
	.loc 4 2133 0
	lfs 28,632(1)
	.loc 4 2129 0
	stfs 0,144(1)
	.loc 4 2133 0
	fmadds 19,28,5,19
	.loc 4 2123 0
	lfs 0,88(1)
	.loc 4 2126 0
	lfs 28,288(1)
	.loc 4 2123 0
	fmadds 0,2,0,10
	.loc 4 2117 0
	lfs 10,384(1)
	.loc 4 2123 0
	stfs 0,448(1)
	.loc 4 2117 0
	lfs 0,128(1)
	fmadds 0,2,0,10
	.loc 4 2111 0
	lfs 10,472(1)
	.loc 4 2117 0
	stfs 0,452(1)
	.loc 4 2111 0
	lfs 0,92(1)
	fmadds 0,2,0,10
	.loc 4 2105 0
	lfs 10,388(1)
	.loc 4 2111 0
	stfs 0,376(1)
	.loc 4 2105 0
	lfs 0,56(1)
	fmadds 2,2,0,10
	.loc 4 2043 0
	lfs 0,444(1)
	.loc 4 2122 0
	lfs 10,368(1)
	.loc 4 2043 0
	fmadds 21,0,21,26
.LVL689:
	.loc 4 2110 0
	lfs 26,120(1)
	.loc 4 2058 0
	fmadds 30,0,30,15
.LVL690:
	.loc 4 2105 0
	stfs 2,456(1)
	.loc 4 2116 0
	lfs 15,296(1)
	.loc 4 2122 0
	fmadds 18,1,10,18
	.loc 4 2134 0
	lfs 2,636(1)
	.loc 4 2110 0
	fmadds 16,1,26,16
	.loc 4 2116 0
	fmadds 6,1,15,6
	.loc 4 2132 0
	lfs 10,628(1)
	.loc 4 2134 0
	fmadds 29,2,5,29
	.loc 4 2132 0
	lfs 15,8(1)
	.loc 4 2115 0
	lfs 5,300(1)
	.loc 4 2073 0
	fmadds 11,0,11,9
.LVL691:
	.loc 4 2132 0
	lfs 26,192(1)
	.loc 4 2128 0
	lfs 9,436(1)
	.loc 4 2115 0
	fmadds 20,1,5,20
	.loc 4 2132 0
	fmadds 5,10,15,26
	.loc 4 2114 0
	lfs 26,132(1)
	lfs 15,108(1)
	.loc 4 2128 0
	fmadds 14,1,9,14
	.loc 4 2127 0
	lfs 0,184(1)
	.loc 4 2121 0
	lfs 2,140(1)
	.loc 4 2114 0
	fmadds 15,1,15,26
	.loc 4 2109 0
	lfs 9,136(1)
	.loc 4 2127 0
	fmadds 4,1,0,4
	.loc 4 2121 0
	fmadds 12,1,2,12
	.loc 4 2126 0
	lfs 0,124(1)
	.loc 4 2109 0
	fmadds 25,1,9,25
	.loc 4 2120 0
	lfs 2,80(1)
	lfs 9,36(1)
	.loc 4 2126 0
	fmadds 10,1,28,0
	.loc 4 2114 0
	stfs 15,72(1)
	.loc 4 2120 0
	fmadds 0,1,2,9
	.loc 4 2131 0
	lfs 15,8(1)
	lfs 26,172(1)
	lfs 9,516(1)
	.loc 4 2108 0
	lfs 28,24(1)
	.loc 4 2131 0
	fmadds 9,9,15,26
	.loc 4 2108 0
	lfs 2,168(1)
	.loc 4 2113 0
	stfs 8,124(1)
	.loc 4 2107 0
	lfs 8,48(1)
	.loc 4 2108 0
	fmadds 28,1,28,2
	.loc 4 2131 0
	stfs 9,108(1)
	.loc 4 2107 0
	fmadds 17,1,8,17
	.loc 4 2130 0
	lfs 9,516(1)
	.loc 4 2119 0
	lfs 2,232(1)
	.loc 4 2130 0
	fmadds 22,9,23,22
	.loc 4 2108 0
	stfs 28,24(1)
	.loc 4 2119 0
	fmadds 2,1,7,2
	.loc 4 2125 0
	lfs 28,228(1)
	.loc 4 2124 0
	lfs 15,32(1)
	.loc 4 2107 0
	stfs 17,80(1)
	.loc 4 2125 0
	fmadds 28,1,24,28
	.loc 4 2124 0
	lfs 17,208(1)
	.loc 4 2106 0
	lfs 26,304(1)
	.loc 4 2119 0
	stfs 2,136(1)
	.loc 4 2124 0
	fmadds 2,15,24,17
	.loc 4 2130 0
	stfs 22,36(1)
	.loc 4 2106 0
	fmadds 1,15,8,26
	.loc 4 2118 0
	lfs 22,212(1)
	.loc 4 2112 0
	lfs 24,216(1)
.LVL692:
	.loc 4 2124 0
	fmadds 2,3,13,2
	.loc 4 2118 0
	fmadds 7,15,7,22
.LVL693:
	.loc 4 2129 0
	lfs 8,144(1)
	.loc 4 2112 0
	fmadds 31,15,31,24
.LVL694:
	.loc 4 2123 0
	lfs 9,84(1)
	lfs 17,448(1)
	.loc 4 2169 0
	fnmadds 1,3,21,1
	.loc 4 2117 0
	lfs 22,104(1)
	.loc 4 2167 0
	fnmadds 7,3,11,7
	.loc 4 2117 0
	lfs 24,452(1)
	.loc 4 2112 0
	fmadds 31,3,30,31
	.loc 4 2125 0
	stfs 28,120(1)
	.loc 4 2166 0
	fmul 2,2,27
	.loc 4 2129 0
	lfs 28,220(1)
	.loc 4 2111 0
	lfs 26,64(1)
	.loc 4 2167 0
	fmul 7,7,27
	.loc 4 2129 0
	fmadds 23,28,23,8
	.loc 4 2111 0
	lfs 8,376(1)
	.loc 4 2123 0
	fmadds 28,15,9,17
	.loc 4 2105 0
	lfs 17,32(1)
	.loc 4 2117 0
	fmadds 9,15,22,24
	.loc 4 2105 0
	lfs 22,16(1)
	lfs 24,456(1)
	.loc 4 2111 0
	fmadds 15,15,26,8
	.loc 4 2137 0
	lfs 8,512(1)
	.loc 4 2166 0
	frsp 2,2
	.loc 4 2105 0
	fmadds 26,17,22,24
	.loc 4 2116 0
	lfs 24,292(1)
	.loc 4 2137 0
	fnmadds 29,8,3,29
	.loc 4 2139 0
	lfs 22,372(1)
	.loc 4 2116 0
	fmadds 6,3,24,6
	.loc 4 2133 0
	lfs 24,508(1)
	.loc 4 2141 0
	lfs 8,96(1)
	.loc 4 2139 0
	fnmadds 18,3,22,18
	.loc 4 2133 0
	fmadds 19,24,3,19
	.loc 4 2147 0
	lfs 24,284(1)
	.loc 4 2128 0
	lfs 17,240(1)
	.loc 4 2141 0
	fnmadds 16,3,8,16
	.loc 4 2147 0
	fnmadds 20,3,24,20
	.loc 4 2126 0
	lfs 24,88(1)
	.loc 4 2143 0
	lfs 22,620(1)
	.loc 4 2128 0
	fmadds 14,3,17,14
	.loc 4 2145 0
	lfs 8,180(1)
	.loc 4 2126 0
	fmadds 10,3,24,10
	.loc 4 2143 0
	fneg 17,22
	.loc 4 2121 0
	lfs 22,40(1)
	.loc 4 2145 0
	fnmadds 4,3,8,4
	.loc 4 2109 0
	lfs 8,112(1)
	.loc 4 2121 0
	fmadds 12,3,22,12
	.loc 4 2151 0
	lfs 22,392(1)
	.loc 4 2109 0
	fmadds 25,3,8,25
	.loc 4 2126 0
	stfs 10,32(1)
	.loc 4 2153 0
	lfs 8,128(1)
	.loc 4 2151 0
	fnmadds 5,22,3,5
	.loc 4 2114 0
	lfs 10,92(1)
	.loc 4 2140 0
	fmul 6,6,27
	.loc 4 2112 0
	stfs 31,112(1)
	.loc 4 2153 0
	fnmadds 22,3,8,0
	.loc 4 2114 0
	lfs 0,72(1)
	.loc 4 2155 0
	lfs 8,56(1)
	.loc 4 2137 0
	fmul 29,29,27
	.loc 4 2114 0
	fmadds 24,3,10,0
	.loc 4 2155 0
	lfs 10,24(1)
	.loc 4 2157 0
	lfs 0,612(1)
	.loc 4 2138 0
	fmul 14,14,27
	.loc 4 2155 0
	fnmadds 8,3,8,10
	.loc 4 2131 0
	lfs 10,164(1)
	.loc 4 2139 0
	fmul 18,18,27
	.loc 4 2155 0
	stfs 8,40(1)
	.loc 4 2157 0
	fneg 8,0
	.loc 4 2131 0
	lfs 0,108(1)
	.loc 4 2141 0
	fmul 16,16,27
	.loc 4 2131 0
	fmadds 10,10,3,0
	.loc 4 2159 0
	lfs 0,120(1)
	.loc 4 2143 0
	fmul 17,17,27
	.loc 4 2131 0
	stfs 10,48(1)
	.loc 4 2144 0
	fmul 19,19,27
	.loc 4 2159 0
	lfs 10,84(1)
	.loc 4 2145 0
	fmul 4,4,27
	.loc 4 2159 0
	fnmadds 10,3,10,0
	.loc 4 2119 0
	lfs 0,136(1)
	.loc 4 2146 0
	fmul 12,12,27
	.loc 4 2159 0
	stfs 10,56(1)
	.loc 4 2147 0
	fmul 20,20,27
	.loc 4 2119 0
	lfs 10,104(1)
	.loc 4 2148 0
	fmul 25,25,27
	.loc 4 2119 0
	fmadds 10,3,10,0
	.loc 4 2161 0
	lfs 0,124(1)
	.loc 4 2151 0
	fmul 5,5,27
	.loc 4 2119 0
	stfs 10,24(1)
	.loc 4 2153 0
	fmul 22,22,27
	.loc 4 2161 0
	lfs 10,64(1)
	.loc 4 2169 0
	stfs 1,64(1)
	.loc 4 2154 0
	fmul 24,24,27
	.loc 4 2171 0
	lfs 1,604(1)
	.loc 4 2161 0
	fnmadds 10,3,10,0
	.loc 4 2107 0
	lfs 0,80(1)
	.loc 4 2171 0
	fneg 1,1
	.loc 4 2157 0
	fmul 8,8,27
	.loc 4 2161 0
	stfs 10,72(1)
	.loc 4 2107 0
	lfs 10,16(1)
	.loc 4 2140 0
	frsp 6,6
	.loc 4 2171 0
	stfs 1,92(1)
	.loc 4 2137 0
	frsp 29,29
	.loc 4 2107 0
	fmadds 10,3,10,0
	.loc 4 2165 0
	lfs 0,36(1)
	.loc 4 2138 0
	frsp 14,14
	.loc 4 2139 0
	frsp 18,18
	.loc 4 2107 0
	stfs 10,16(1)
	.loc 4 2141 0
	frsp 16,16
	.loc 4 2165 0
	lfs 10,160(1)
	.loc 4 2143 0
	frsp 17,17
	.loc 4 2144 0
	frsp 19,19
	.loc 4 2165 0
	fnmadds 10,10,3,0
	.loc 4 2129 0
	lfs 3,160(1)
	.loc 4 2145 0
	frsp 4,4
	.loc 4 2146 0
	frsp 12,12
	.loc 4 2165 0
	stfs 10,96(1)
	.loc 4 2147 0
	frsp 20,20
	.loc 4 2129 0
	lfs 10,8(1)
	.loc 4 2148 0
	frsp 25,25
	.loc 4 2151 0
	frsp 5,5
	.loc 4 2129 0
	fmadds 23,3,10,23
	.loc 4 2173 0
	fnmadds 28,10,13,28
	.loc 4 2155 0
	lfs 13,40(1)
.LVL695:
	.loc 4 2117 0
	fmadds 11,10,11,9
.LVL696:
	.loc 4 2175 0
	fnmadds 30,10,30,15
.LVL697:
	.loc 4 2129 0
	stfs 23,108(1)
	.loc 4 2105 0
	fmadds 21,10,21,26
.LVL698:
	.loc 4 2173 0
	stfs 28,120(1)
	.loc 4 2136 0
	lfs 26,624(1)
	.loc 4 2153 0
	frsp 22,22
	.loc 4 2150 0
	lfs 15,616(1)
	.loc 4 2154 0
	frsp 24,24
	.loc 4 2152 0
	lfs 10,32(1)
	.loc 4 2136 0
	fmul 26,26,27
	.loc 4 2155 0
	stfd 13,40(1)
	.loc 4 2168 0
	lfs 0,112(1)
	.loc 4 2150 0
	fmul 15,15,27
	.loc 4 2158 0
	lfs 9,48(1)
	.loc 4 2168 0
	stfd 0,48(1)
	.loc 4 2152 0
	fmul 10,10,27
	.loc 4 2169 0
	lfs 0,64(1)
	.loc 4 2159 0
	lfs 31,56(1)
	.loc 4 2158 0
	fmul 9,9,27
	.loc 4 2169 0
	stfd 0,56(1)
	.loc 4 2171 0
	lfs 0,92(1)
	.loc 4 2159 0
	fmul 31,31,27
	.loc 4 2165 0
	lfs 13,96(1)
	.loc 4 2160 0
	lfs 23,24(1)
	.loc 4 2150 0
	frsp 15,15
	.loc 4 2174 0
	stfd 11,96(1)
	.loc 4 2165 0
	fmul 13,13,27
	.loc 4 2171 0
	stfd 0,24(1)
	.loc 4 2155 0
	lfd 11,40(1)
	.loc 4 2160 0
	fmul 23,23,27
	.loc 4 2172 0
	lfs 0,108(1)
	.loc 4 2155 0
	fmul 11,11,27
	.loc 4 2161 0
	lfs 28,72(1)
	.loc 4 2172 0
	stfd 0,8(1)
	.loc 4 2173 0
	lfs 0,120(1)
	.loc 4 2161 0
	fmul 28,28,27
	.loc 4 2162 0
	lfs 1,16(1)
	.loc 4 2173 0
	stfd 0,72(1)
	.loc 4 2152 0
	frsp 10,10
	.loc 4 2169 0
	lfd 0,56(1)
	.loc 4 2162 0
	fmul 1,1,27
	.loc 4 2136 0
	stfd 26,16(1)
	.loc 4 2168 0
	lfd 26,48(1)
	.loc 4 2157 0
	frsp 8,8
	.loc 4 2176 0
	stfd 21,64(1)
	.loc 4 2158 0
	frsp 9,9
	.loc 4 2168 0
	fmul 21,26,27
	.loc 4 2155 0
	stfd 11,40(1)
	.loc 4 2171 0
	lfd 11,24(1)
	.loc 4 2169 0
	fmul 26,0,27
	.loc 4 2172 0
	lfd 0,8(1)
	.loc 4 2175 0
	stfd 30,112(1)
	.loc 4 2171 0
	fmul 30,11,27
	.loc 4 2164 0
	lfs 3,608(1)
	.loc 4 2172 0
	fmul 11,0,27
	.loc 4 2173 0
	lfd 0,72(1)
	fmul 0,0,27
	.loc 4 2164 0
	fmul 3,3,27
	.loc 4 2173 0
	stfd 0,8(1)
	.loc 4 2159 0
	frsp 31,31
	.loc 4 2174 0
	lfd 0,96(1)
	.loc 4 2160 0
	frsp 23,23
	.loc 4 2161 0
	frsp 28,28
	.loc 4 2174 0
	fmul 0,0,27
	.loc 4 2162 0
	frsp 1,1
	.loc 4 2164 0
	frsp 3,3
	.loc 4 2174 0
	stfd 0,72(1)
	.loc 4 2165 0
	frsp 13,13
	.loc 4 2175 0
	lfd 0,112(1)
	.loc 4 2167 0
	frsp 7,7
	.loc 4 2168 0
	frsp 21,21
	.loc 4 2175 0
	fmul 0,0,27
	.loc 4 2169 0
	frsp 26,26
	.loc 4 2171 0
	frsp 30,30
	.loc 4 2175 0
	stfd 0,96(1)
	.loc 4 2172 0
	frsp 11,11
	.loc 4 2176 0
	lfd 0,64(1)
	fmul 27,0,27
.LVL699:
	stfd 27,24(1)
.LVL700:
	.loc 4 2136 0
	lfd 27,16(1)
	.loc 4 2140 0
	stfs 6,16(9)
	.loc 4 2173 0
	lfd 6,8(1)
	.loc 4 2136 0
	frsp 27,27
	.loc 4 2137 0
	stfs 29,4(9)
	.loc 4 2138 0
	stfs 14,8(9)
	.loc 4 2173 0
	frsp 14,6
	.loc 4 2155 0
	lfd 29,40(1)
	.loc 4 2175 0
	lfd 6,96(1)
	.loc 4 2136 0
	stfs 27,0(9)
	.loc 4 2155 0
	frsp 0,29
	.loc 4 2174 0
	lfd 27,72(1)
	.loc 4 2175 0
	frsp 29,6
	.loc 4 2176 0
	lfd 6,24(1)
	.loc 4 2139 0
	stfs 18,12(9)
	.loc 4 2174 0
	frsp 18,27
	.loc 4 2176 0
	frsp 27,6
	.loc 4 2141 0
	stfs 16,20(9)
.LVL701:
	.loc 4 2143 0
	stfs 17,24(9)
.LVL702:
	.loc 4 2144 0
	stfs 19,28(9)
.LVL703:
	.loc 4 2145 0
	stfs 4,32(9)
.LVL704:
	.loc 4 2146 0
	stfs 12,36(9)
.LVL705:
	.loc 4 2147 0
	stfs 20,40(9)
.LVL706:
	.loc 4 2148 0
	stfs 25,44(9)
.LVL707:
	.loc 4 2150 0
	stfs 15,48(9)
.LVL708:
	.loc 4 2151 0
	stfs 5,52(9)
.LVL709:
	.loc 4 2152 0
	stfs 10,56(9)
.LVL710:
	.loc 4 2153 0
	stfs 22,60(9)
.LVL711:
	.loc 4 2154 0
	stfs 24,64(9)
.LVL712:
	.loc 4 2155 0
	stfs 0,68(9)
.LVL713:
	.loc 4 2157 0
	stfs 8,72(9)
.LVL714:
	.loc 4 2158 0
	stfs 9,76(9)
.LVL715:
	.loc 4 2159 0
	stfs 31,80(9)
.LVL716:
	.loc 4 2160 0
	stfs 23,84(9)
.LVL717:
	.loc 4 2161 0
	stfs 28,88(9)
.LVL718:
	.loc 4 2162 0
	stfs 1,92(9)
.LVL719:
	.loc 4 2164 0
	stfs 3,96(9)
.LVL720:
	.loc 4 2165 0
	stfs 13,100(9)
.LVL721:
	.loc 4 2166 0
	stfs 2,104(9)
.LVL722:
	.loc 4 2167 0
	stfs 7,108(9)
.LVL723:
	.loc 4 2168 0
	stfs 21,112(9)
.LVL724:
	.loc 4 2169 0
	stfs 26,116(9)
.LVL725:
	.loc 4 2171 0
	stfs 30,120(9)
.LVL726:
	.loc 4 2172 0
	stfs 11,124(9)
.LVL727:
	.loc 4 2173 0
	stfs 14,128(9)
.LVL728:
	.loc 4 2174 0
	stfs 18,132(9)
.LVL729:
	.loc 4 2175 0
	stfs 29,136(9)
.LVL730:
	.loc 4 2176 0
	stfs 27,140(9)
.LVL731:
.L228:
.LBE11664:
	.loc 4 2179 0
	lfd 14,712(1)
	lfd 15,720(1)
	lfd 16,728(1)
	lfd 17,736(1)
	lfd 18,744(1)
	lfd 19,752(1)
	lfd 20,760(1)
	lfd 21,768(1)
	lfd 22,776(1)
	lfd 23,784(1)
	lfd 24,792(1)
	lfd 25,800(1)
	lfd 26,808(1)
	lfd 27,816(1)
	lfd 28,824(1)
	lfd 29,832(1)
	lfd 30,840(1)
	lfd 31,848(1)
	addi 1,1,856
.LCFI81:
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
	blr
	.cfi_endproc
.LFE2569:
	.size	_ZN6idMat611InverseSelfEv, .-_ZN6idMat611InverseSelfEv
	.align 2
	.globl _ZN6idMat615InverseFastSelfEv
	.type	_ZN6idMat615InverseFastSelfEv, @function
_ZN6idMat615InverseFastSelfEv:
.LFB2570:
	.loc 4 2186 0
	.cfi_startproc
.LVL732:
	stwu 1,-256(1)
.LCFI82:
	.cfi_def_cfa_offset 256
	mr 9,3
.LVL733:
	stfd 28,224(1)
	stfd 31,248(1)
	stfd 14,112(1)
	stfd 15,120(1)
	stfd 16,128(1)
	stfd 17,136(1)
	stfd 18,144(1)
	stfd 19,152(1)
	stfd 20,160(1)
	stfd 21,168(1)
	stfd 22,176(1)
	stfd 23,184(1)
	stfd 24,192(1)
	stfd 25,200(1)
	stfd 26,208(1)
	stfd 27,216(1)
	stfd 29,232(1)
	stfd 30,240(1)
.LBB11667:
	.loc 4 2778 0
	lfs 7,56(3)
	.loc 4 2779 0
	lfs 5,24(3)
	.loc 4 2778 0
	lfs 9,32(3)
	.loc 4 2779 0
	fmuls 31,7,5
	.cfi_offset 62, -16
	.cfi_offset 61, -24
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
	.cfi_offset 46, -144
	.cfi_offset 63, -8
	.cfi_offset 60, -32
	.loc 4 2778 0
	lfs 4,52(3)
	.loc 4 2779 0
	lfs 10,48(3)
	.loc 4 2778 0
	fmuls 28,9,4
	lfs 14,28(3)
	.loc 4 2779 0
	fmsubs 31,9,10,31
	.loc 4 2782 0
	lfs 12,4(3)
	.loc 4 2780 0
	fmuls 3,14,10
	.loc 4 2782 0
	lfs 6,0(3)
	.loc 4 2778 0
	fmsubs 28,14,7,28
.LVL734:
	.loc 4 2782 0
	lfs 13,8(3)
	fmuls 0,12,31
	.loc 4 2785 0
	li 3,0
.LVL735:
	.loc 4 2780 0
	fmsubs 3,4,5,3
.LVL736:
	.loc 4 2782 0
	fmadds 0,6,28,0
	fmadds 0,13,3,0
	stfs 0,8(1)
.LVL737:
.LBB11668:
.LBB11669:
	.loc 5 781 0
	lwz 7,8(1)
	rlwinm 0,7,0,1,31
.LBE11669:
.LBE11668:
	.loc 4 2784 0
	lis 7,.LC2@ha
	stw 0,104(1)
	lfs 1,104(1)
	fmr 0,1
.LVL738:
	lfd 1,.LC2@l(7)
	fcmpu 7,0,1
	blt- 7,.L231
	.loc 4 2788 0
	lis 7,.LC1@ha
	lfs 2,8(1)
	lfs 0,.LC1@l(7)
	.loc 4 2794 0
	fmuls 1,10,13
	.loc 4 2791 0
	fmuls 29,7,12
	.loc 4 2801 0
	lfs 11,36(9)
	.loc 4 2788 0
	fdivs 27,0,2
.LVL739:
	.loc 4 2801 0
	lfs 15,12(9)
	.loc 4 2802 0
	lfs 8,40(9)
	.loc 4 2803 0
	lfs 0,44(9)
	.loc 4 2801 0
	lfs 17,60(9)
	.loc 4 2802 0
	lfs 24,16(9)
	.loc 4 2803 0
	lfs 16,20(9)
	.loc 4 2815 0
	lfs 18,100(9)
	.loc 4 2818 0
	lfs 23,124(9)
	.loc 4 2803 0
	lfs 22,68(9)
	.loc 4 2815 0
	lfs 20,96(9)
	.loc 4 2818 0
	lfs 25,120(9)
	.loc 4 2815 0
	lfs 21,104(9)
	.loc 4 2812 0
	lfs 19,76(9)
	.loc 4 2818 0
	lfs 26,128(9)
	.loc 4 2794 0
	fmsubs 1,7,6,1
	.loc 4 2791 0
	fmsubs 29,4,13,29
	.loc 4 2797 0
	fmuls 4,4,6
	.loc 4 2794 0
	fmuls 1,1,27
	.loc 4 2795 0
	fmuls 2,9,6
	.loc 4 2797 0
	fmsubs 4,10,12,4
	.loc 4 2791 0
	fmuls 29,29,27
	.loc 4 2793 0
	fmuls 31,31,27
.LVL740:
	.loc 4 2792 0
	fmuls 30,14,13
	.loc 4 2795 0
	fmsubs 2,5,13,2
	.loc 4 2804 0
	fmuls 10,1,11
	.loc 4 2797 0
	fmuls 4,4,27
	.loc 4 2798 0
	fmuls 5,5,12
	.loc 4 2790 0
	fmuls 28,28,27
.LVL741:
	.loc 4 2795 0
	fmuls 2,2,27
	.loc 4 2792 0
	fmsubs 30,9,12,30
	.loc 4 2804 0
	fmadds 10,31,15,10
	.loc 4 2801 0
	fmuls 9,29,11
	.loc 4 2796 0
	fmuls 3,3,27
.LVL742:
	.loc 4 2798 0
	fmsubs 5,14,6,5
	.loc 4 2805 0
	lfs 6,64(9)
	fmuls 7,1,8
	.loc 4 2807 0
	fmuls 11,4,11
	.loc 4 2806 0
	fmuls 13,1,0
	.loc 4 2792 0
	fmuls 30,30,27
.LVL743:
	.loc 4 2804 0
	fmadds 10,2,17,10
	.loc 4 2803 0
	fmuls 12,29,0
	.loc 4 2801 0
	fmadds 9,28,15,9
	.loc 4 2809 0
	fmuls 0,4,0
	.loc 4 2798 0
	fmuls 5,5,27
.LVL744:
	.loc 4 2802 0
	fmuls 14,29,8
	.loc 4 2805 0
	fmadds 7,31,24,7
	.loc 4 2807 0
	fmadds 11,3,15,11
	.loc 4 2802 0
	lfs 15,64(9)
	.loc 4 2806 0
	fmadds 13,31,16,13
	.loc 4 2801 0
	fmadds 9,30,17,9
.LVL745:
	.loc 4 2803 0
	fmadds 12,28,16,12
	.loc 4 2809 0
	fmadds 0,3,16,0
	.loc 4 2815 0
	fmuls 16,10,18
	.loc 4 2805 0
	fmadds 7,2,6,7
	.loc 4 2807 0
	fmadds 11,5,17,11
	.loc 4 2802 0
	fmadds 6,28,24,14
	.loc 4 2818 0
	fmuls 17,10,23
	.loc 4 2806 0
	fmadds 13,2,22,13
	.loc 4 2808 0
	fmuls 8,4,8
	.loc 4 2815 0
	fmadds 16,9,20,16
	.loc 4 2803 0
	fmadds 12,30,22,12
	.loc 4 2802 0
	fmadds 6,30,15,6
.LVL746:
	.loc 4 2809 0
	fmadds 0,5,22,0
	.loc 4 2818 0
	fmadds 17,9,25,17
	.loc 4 2819 0
	fmuls 22,7,23
	.loc 4 2820 0
	fmuls 14,13,23
	.loc 4 2817 0
	fmuls 15,13,18
	.loc 4 2818 0
	stfs 17,32(1)
	.loc 4 2808 0
	fmadds 8,3,24,8
	.loc 4 2826 0
	lfs 17,108(9)
	.loc 4 2815 0
	fmadds 16,11,21,16
	.loc 4 2808 0
	lfs 24,64(9)
	.loc 4 2816 0
	fmuls 27,7,18
.LVL747:
	.loc 4 2819 0
	fmadds 22,6,25,22
	.loc 4 2820 0
	fmadds 14,12,25,14
	.loc 4 2817 0
	fmadds 15,12,20,15
	.loc 4 2808 0
	fmadds 8,5,24,8
.LVL748:
	.loc 4 2819 0
	stfs 22,16(1)
	.loc 4 2826 0
	fsubs 16,16,17
	.loc 4 2812 0
	lfs 22,72(9)
.LVL749:
	.loc 4 2816 0
	fmadds 27,6,20,27
	.loc 4 2818 0
	lfs 17,32(1)
	.loc 4 2813 0
	fmuls 24,7,19
	.loc 4 2820 0
	fmadds 14,0,26,14
	.loc 4 2826 0
	stfs 16,8(1)
	.loc 4 2817 0
	fmadds 15,0,21,15
	.loc 4 2831 0
	lfs 16,140(9)
	.loc 4 2813 0
	fmadds 24,6,22,24
	.loc 4 2816 0
	stfs 27,36(1)
	.loc 4 2818 0
	fmadds 27,11,26,17
	.loc 4 2828 0
	lfs 17,116(9)
	.loc 4 2831 0
	fsubs 14,14,16
	.loc 4 2828 0
	fsubs 15,15,17
	.loc 4 2813 0
	stfs 24,20(1)
	.loc 4 2819 0
	lfs 24,16(1)
	.loc 4 2831 0
	stfs 14,72(1)
	.loc 4 2812 0
	fmuls 14,10,19
	.loc 4 2819 0
	fmadds 16,8,26,24
	.loc 4 2812 0
	lfs 24,80(9)
.LVL750:
	.loc 4 2828 0
	stfs 15,32(1)
	.loc 4 2829 0
	lfs 15,132(9)
	.loc 4 2830 0
	lfs 17,136(9)
	.loc 4 2829 0
	fsubs 27,27,15
	.loc 4 2830 0
	fsubs 16,16,17
	.loc 4 2812 0
	fmadds 17,9,22,14
	.loc 4 2816 0
	lfs 14,36(1)
	.loc 4 2829 0
	stfs 27,16(1)
	.loc 4 2814 0
	fmuls 15,13,19
	.loc 4 2813 0
	lfs 27,20(1)
	.loc 4 2830 0
	stfs 16,28(1)
	.loc 4 2813 0
	fmadds 27,8,24,27
	.loc 4 2835 0
	lfs 16,8(1)
	.loc 4 2814 0
	fmadds 15,12,22,15
	.loc 4 2813 0
	stfs 27,20(1)
	.loc 4 2816 0
	fmadds 27,8,21,14
	.loc 4 2835 0
	lfs 14,72(1)
	fmuls 16,16,14
	.loc 4 2812 0
	fmadds 14,11,24,17
	.loc 4 2824 0
	lfs 17,20(1)
	.loc 4 2814 0
	stfs 15,20(1)
	.loc 4 2835 0
	stfs 16,36(1)
	.loc 4 2827 0
	lfs 16,112(9)
	.loc 4 2834 0
	lfs 15,32(1)
	.loc 4 2827 0
	fsubs 27,27,16
	stfs 27,12(1)
	.loc 4 2824 0
	lfs 27,88(9)
	fsubs 16,17,27
	.loc 4 2834 0
	lfs 17,28(1)
	.loc 4 2835 0
	lfs 27,32(1)
	.loc 4 2834 0
	fmuls 15,15,17
	.loc 4 2835 0
	lfs 17,36(1)
	.loc 4 2834 0
	stfs 15,40(1)
	.loc 4 2835 0
	lfs 15,16(1)
	fmsubs 27,27,15,17
	.loc 4 2823 0
	lfs 17,84(9)
	.loc 4 2834 0
	lfs 15,72(1)
	.loc 4 2823 0
	fsubs 17,14,17
	.loc 4 2834 0
	lfs 14,12(1)
	.loc 4 2835 0
	stfs 27,36(1)
	.loc 4 2814 0
	lfs 27,20(1)
	.loc 4 2823 0
	stfs 17,76(1)
.LVL751:
	.loc 4 2834 0
	lfs 17,40(1)
	.loc 4 2814 0
	fmadds 27,0,24,27
	.loc 4 2834 0
	fmsubs 14,14,15,17
	.loc 4 2838 0
	lfs 17,36(1)
	.loc 4 2836 0
	lfs 15,16(1)
	.loc 4 2814 0
	stfs 27,24(1)
	.loc 4 2838 0
	fmuls 17,16,17
	.loc 4 2836 0
	lfs 27,12(1)
	.loc 4 2834 0
	stfs 14,20(1)
	.loc 4 2836 0
	fmuls 14,27,15
	.loc 4 2838 0
	stfs 17,40(1)
	.loc 4 2836 0
	lfs 27,8(1)
	lfs 15,28(1)
	.loc 4 2825 0
	lfs 17,92(9)
	.loc 4 2836 0
	fmsubs 14,27,15,14
	.loc 4 2825 0
	lfs 27,24(1)
	fsubs 15,27,17
.LVL752:
	.loc 4 2838 0
	lfs 17,20(1)
	.loc 4 2836 0
	stfs 14,48(1)
	.loc 4 2838 0
	lfs 27,40(1)
	lfs 14,76(1)
	fmadds 14,14,17,27
	lfs 17,48(1)
	fmadds 14,15,17,14
	stfs 14,24(1)
.LVL753:
.LBB11670:
.LBB11671:
	.loc 5 781 0
	lwz 7,24(1)
	rlwinm 0,7,0,1,31
.LBE11671:
.LBE11670:
	.loc 4 2840 0
	lis 7,.LC2@ha
	stw 0,104(1)
	lfs 14,104(1)
.LVL754:
	fmr 27,14
	lfd 14,.LC2@l(7)
	fcmpu 7,27,14
	blt- 7,.L231
	.loc 4 2844 0
	lis 7,.LC1@ha
	lfs 17,24(1)
	lfs 14,.LC1@l(7)
	.loc 4 2918 0
	li 3,1
	.loc 4 2844 0
	fdivs 27,14,17
.LVL755:
	.loc 4 2846 0
	lfs 17,72(1)
	fmuls 14,16,17
	.loc 4 2867 0
	fmuls 17,31,18
	stfs 17,40(1)
	.loc 4 2868 0
	fmuls 17,1,18
	.loc 4 2869 0
	fmuls 18,2,18
	.loc 4 2868 0
	stfs 17,52(1)
	.loc 4 2848 0
	lfs 17,16(1)
	.loc 4 2869 0
	stfs 18,44(1)
	.loc 4 2846 0
	lfs 18,28(1)
	.loc 4 2848 0
	fmuls 17,15,17
	.loc 4 2846 0
	fmsubs 14,15,18,14
	.loc 4 2864 0
	fmuls 18,31,19
	.loc 4 2848 0
	stfs 17,56(1)
	.loc 4 2865 0
	fmuls 17,1,19
	.loc 4 2866 0
	fmuls 19,2,19
	.loc 4 2864 0
	stfs 18,64(1)
	.loc 4 2867 0
	lfs 18,40(1)
	.loc 4 2865 0
	stfs 17,60(1)
	.loc 4 2866 0
	stfs 19,68(1)
	.loc 4 2867 0
	fmadds 19,28,20,18
	.loc 4 2868 0
	lfs 17,52(1)
	fmadds 18,29,20,17
	.loc 4 2869 0
	lfs 17,44(1)
	.loc 4 2867 0
	fmadds 19,3,21,19
	.loc 4 2869 0
	fmadds 20,30,20,17
	.loc 4 2848 0
	lfs 17,76(1)
	.loc 4 2868 0
	fmadds 18,4,21,18
	.loc 4 2867 0
	stfs 19,40(1)
	.loc 4 2847 0
	lfs 19,12(1)
	.loc 4 2869 0
	stfs 20,44(1)
	.loc 4 2854 0
	fmuls 20,27,14
	.loc 4 2847 0
	fmuls 19,15,19
	.loc 4 2868 0
	stfs 18,52(1)
	.loc 4 2869 0
	lfs 18,44(1)
	.loc 4 2847 0
	stfs 19,44(1)
	.loc 4 2869 0
	fmadds 21,5,21,18
	.loc 4 2848 0
	lfs 19,56(1)
	lfs 18,72(1)
	fmsubs 14,17,18,19
	.loc 4 2850 0
	lfs 18,28(1)
	.loc 4 2864 0
	lfs 19,64(1)
	.loc 4 2850 0
	fmuls 17,17,18
	.loc 4 2864 0
	fmadds 18,28,22,19
	.loc 4 2866 0
	lfs 19,68(1)
	.loc 4 2857 0
	fmuls 14,27,14
	.loc 4 2850 0
	stfs 17,56(1)
	.loc 4 2865 0
	lfs 17,60(1)
	.loc 4 2864 0
	fmadds 18,3,24,18
	.loc 4 2865 0
	fmadds 17,29,22,17
	.loc 4 2866 0
	fmadds 22,30,22,19
	.loc 4 2871 0
	fmuls 19,1,23
	.loc 4 2865 0
	stfs 17,24(1)
	.loc 4 2870 0
	fmuls 17,31,23
	.loc 4 2866 0
	fmadds 22,5,24,22
	.loc 4 2871 0
	stfs 19,60(1)
	.loc 4 2872 0
	fmuls 23,2,23
	.loc 4 2870 0
	stfs 17,64(1)
	.loc 4 2853 0
	lfs 17,20(1)
	.loc 4 2864 0
	stfs 18,28(1)
	.loc 4 2865 0
	lfs 18,24(1)
	.loc 4 2853 0
	fmuls 19,17,27
.LVL756:
	.loc 4 2847 0
	lfs 17,44(1)
	.loc 4 2865 0
	fmadds 18,4,24,18
	.loc 4 2847 0
	lfs 24,32(1)
	.loc 4 2866 0
	stfs 22,24(1)
	.loc 4 2847 0
	fmsubs 22,16,24,17
	.loc 4 2850 0
	lfs 17,56(1)
	.loc 4 2865 0
	stfs 18,20(1)
	.loc 4 2849 0
	lfs 18,76(1)
	.loc 4 2855 0
	fmuls 22,27,22
.LVL757:
	.loc 4 2849 0
	fmuls 18,18,24
	.loc 4 2850 0
	lfs 24,16(1)
	.loc 4 2849 0
	stfs 18,44(1)
	.loc 4 2850 0
	fmsubs 18,16,24,17
	.loc 4 2870 0
	lfs 17,64(1)
	fmadds 24,28,25,17
	.loc 4 2871 0
	lfs 17,60(1)
	.loc 4 2860 0
	fmuls 18,27,18
	.loc 4 2871 0
	fmadds 17,29,25,17
	.loc 4 2872 0
	fmadds 25,30,25,23
	.loc 4 2875 0
	lfs 23,40(1)
	.loc 4 2870 0
	fmadds 24,3,26,24
	.loc 4 2871 0
	stfs 17,16(1)
	.loc 4 2875 0
	fmuls 23,20,23
	.loc 4 2876 0
	lfs 17,52(1)
	.loc 4 2872 0
	fmadds 25,5,26,25
	.loc 4 2870 0
	stfs 24,32(1)
	.loc 4 2876 0
	fmuls 17,20,17
	.loc 4 2875 0
	stfs 23,56(1)
	.loc 4 2871 0
	lfs 24,16(1)
	.loc 4 2877 0
	fmuls 23,20,21
	.loc 4 2876 0
	stfs 17,60(1)
	.loc 4 2871 0
	fmadds 24,4,26,24
	.loc 4 2856 0
	lfs 17,36(1)
	.loc 4 2872 0
	stfs 25,36(1)
	.loc 4 2849 0
	lfs 25,8(1)
	.loc 4 2877 0
	stfs 23,68(1)
	.loc 4 2856 0
	fmuls 23,17,27
.LVL758:
	.loc 4 2851 0
	fmuls 16,16,25
	.loc 4 2849 0
	lfs 26,44(1)
	.loc 4 2875 0
	lfs 17,56(1)
	.loc 4 2849 0
	fmsubs 15,15,25,26
	.loc 4 2871 0
	stfs 24,16(1)
	.loc 4 2851 0
	stfs 16,64(1)
	.loc 4 2875 0
	lfs 16,28(1)
	.loc 4 2876 0
	lfs 26,20(1)
	.loc 4 2858 0
	fmuls 15,27,15
	.loc 4 2875 0
	fmadds 24,19,16,17
	.loc 4 2876 0
	lfs 16,60(1)
	.loc 4 2877 0
	lfs 17,24(1)
	.loc 4 2876 0
	fmadds 25,19,26,16
	.loc 4 2877 0
	lfs 16,68(1)
	fmadds 26,19,17,16
	.loc 4 2878 0
	lfs 17,40(1)
	.loc 4 2879 0
	lfs 16,52(1)
	.loc 4 2878 0
	fmuls 17,14,17
	.loc 4 2879 0
	fmuls 16,14,16
	.loc 4 2878 0
	stfs 17,60(1)
	.loc 4 2880 0
	fmuls 17,14,21
	.loc 4 2879 0
	stfs 16,68(1)
.LVL759:
	.loc 4 2883 0
	fmuls 21,18,21
	.loc 4 2880 0
	stfs 17,72(1)
	.loc 4 2859 0
	lfs 17,48(1)
	fmuls 16,17,27
.LVL760:
	.loc 4 2875 0
	lfs 17,32(1)
	fmadds 24,22,17,24
	.loc 4 2186 0
	fneg 17,10
	.loc 4 2875 0
	stfs 24,72(9)
	.loc 4 2876 0
	lfs 24,16(1)
	.loc 4 2186 0
	stfs 17,44(1)
	.loc 4 2876 0
	fmadds 25,22,24,25
	.loc 4 2851 0
	lfs 17,12(1)
	.loc 4 2186 0
	fneg 24,11
	.loc 4 2876 0
	stfs 25,76(9)
	.loc 4 2877 0
	lfs 25,36(1)
	.loc 4 2186 0
	stfs 24,56(1)
	.loc 4 2877 0
	fmadds 26,22,25,26
	.loc 4 2851 0
	lfs 24,64(1)
	.loc 4 2877 0
	stfs 26,80(9)
	.loc 4 2186 0
	fneg 26,9
	stfs 26,48(1)
	.loc 4 2851 0
	lfs 26,76(1)
	fmsubs 25,26,17,24
	.loc 4 2878 0
	lfs 17,60(1)
	lfs 26,28(1)
	fmadds 24,23,26,17
	.loc 4 2879 0
	lfs 17,68(1)
	lfs 26,20(1)
	.loc 4 2861 0
	fmuls 27,27,25
.LVL761:
	.loc 4 2879 0
	fmadds 26,23,26,17
	.loc 4 2880 0
	lfs 17,72(1)
	.loc 4 2883 0
	stfs 21,72(1)
	.loc 4 2878 0
	lfs 21,32(1)
	.loc 4 2879 0
	stfs 26,12(1)
	.loc 4 2880 0
	lfs 26,24(1)
	.loc 4 2879 0
	lfs 25,12(1)
	.loc 4 2880 0
	fmadds 26,23,26,17
	.loc 4 2882 0
	lfs 17,52(1)
	fmuls 17,18,17
	.loc 4 2880 0
	stfs 26,64(1)
	.loc 4 2881 0
	lfs 26,40(1)
	.loc 4 2882 0
	stfs 17,68(1)
	.loc 4 2881 0
	fmuls 26,18,26
	stfs 26,60(1)
.LVL762:
	.loc 4 2878 0
	fmadds 26,15,21,24
	.loc 4 2879 0
	lfs 24,16(1)
	fmadds 17,15,24,25
	.loc 4 2880 0
	lfs 24,36(1)
	lfs 25,64(1)
	fmadds 21,15,24,25
	.loc 4 2186 0
	fneg 24,6
	fneg 25,7
	stfs 24,12(1)
	fneg 24,8
	stfs 25,40(1)
	.loc 4 2881 0
	lfs 25,28(1)
	.loc 4 2186 0
	stfs 24,52(1)
	.loc 4 2881 0
	lfs 24,60(1)
	fmadds 25,16,25,24
	.loc 4 2882 0
	lfs 24,68(1)
	.loc 4 2881 0
	stfs 25,28(1)
	.loc 4 2882 0
	lfs 25,20(1)
	fmadds 25,16,25,24
	.loc 4 2883 0
	lfs 24,72(1)
	.loc 4 2882 0
	stfs 25,20(1)
	.loc 4 2883 0
	lfs 25,24(1)
	fmadds 25,16,25,24
	.loc 4 2886 0
	lfs 24,72(9)
	.loc 4 2883 0
	stfs 25,24(1)
	.loc 4 2886 0
	lfs 25,48(1)
	fmadds 28,25,24,28
	.loc 4 2888 0
	lfs 24,80(9)
	.loc 4 2886 0
	stfs 28,64(1)
	.loc 4 2887 0
	lfs 28,76(9)
	fmadds 25,25,28,29
	.loc 4 2888 0
	lfs 29,48(1)
	.loc 4 2889 0
	lfs 28,44(1)
	.loc 4 2888 0
	fmadds 30,29,24,30
	.loc 4 2889 0
	lfs 29,72(9)
	.loc 4 2891 0
	fmadds 2,28,24,2
	.loc 4 2889 0
	fmadds 31,28,29,31
	.loc 4 2888 0
	stfs 30,48(1)
	.loc 4 2890 0
	lfs 30,76(9)
	.loc 4 2889 0
	stfs 31,68(1)
	.loc 4 2890 0
	fmadds 1,28,30,1
	.loc 4 2892 0
	lfs 31,56(1)
	.loc 4 2900 0
	fmuls 28,7,23
	.loc 4 2894 0
	fmadds 5,31,24,5
	.loc 4 2890 0
	stfs 1,72(1)
	.loc 4 2898 0
	fmuls 24,6,14
	.loc 4 2893 0
	fmadds 1,31,30,4
	.loc 4 2900 0
	stfs 28,80(1)
	.loc 4 2897 0
	fmuls 4,6,23
	.loc 4 2899 0
	fmuls 6,6,15
	.loc 4 2898 0
	stfs 24,56(1)
	.loc 4 2892 0
	fmadds 3,31,29,3
	.loc 4 2883 0
	lfs 24,36(1)
	.loc 4 2897 0
	stfs 4,44(1)
	.loc 4 2901 0
	fmuls 29,7,14
	.loc 4 2881 0
	lfs 4,32(1)
	.loc 4 2903 0
	fmuls 30,8,23
	.loc 4 2899 0
	stfs 6,76(1)
	.loc 4 2904 0
	fmuls 31,8,14
	.loc 4 2881 0
	lfs 6,28(1)
	.loc 4 2902 0
	fmuls 7,7,15
	.loc 4 2905 0
	fmuls 8,8,15
	.loc 4 2901 0
	stfs 29,84(1)
	.loc 4 2881 0
	fmadds 28,27,4,6
	.loc 4 2886 0
	lfs 6,12(1)
	.loc 4 2902 0
	stfs 7,88(1)
	.loc 4 2186 0
	fneg 4,13
	.loc 4 2887 0
	fmadds 25,6,17,25
	.loc 4 2882 0
	lfs 7,16(1)
	.loc 4 2905 0
	stfs 8,100(1)
	.loc 4 2911 0
	fneg 23,23
	.loc 4 2882 0
	lfs 8,20(1)
	.loc 4 2912 0
	fneg 14,14
	.loc 4 2903 0
	stfs 30,92(1)
	.loc 4 2913 0
	fneg 15,15
	.loc 4 2882 0
	fmadds 29,27,7,8
	.loc 4 2883 0
	lfs 30,24(1)
	.loc 4 2886 0
	lfs 7,64(1)
	.loc 4 2186 0
	fneg 8,0
	.loc 4 2904 0
	stfs 31,96(1)
	.loc 4 2883 0
	fmadds 31,27,24,30
	.loc 4 2887 0
	stfs 25,16(1)
.LVL763:
	.loc 4 2886 0
	fmadds 24,6,26,7
	.loc 4 2888 0
	lfs 25,48(1)
	.loc 4 2186 0
	fneg 30,12
	.loc 4 2889 0
	lfs 7,68(1)
	.loc 4 2888 0
	fmadds 25,6,21,25
	.loc 4 2889 0
	lfs 6,40(1)
	.loc 4 2886 0
	fmadds 24,30,28,24
	.loc 4 2889 0
	fmadds 6,6,26,7
	.loc 4 2891 0
	lfs 7,40(1)
	.loc 4 2888 0
	stfs 25,28(1)
	.loc 4 2890 0
	lfs 25,40(1)
	.loc 4 2891 0
	fmadds 2,7,21,2
	.loc 4 2889 0
	stfs 6,20(1)
	.loc 4 2890 0
	lfs 6,72(1)
	.loc 4 2891 0
	fmadds 2,4,31,2
	.loc 4 2890 0
	fmadds 25,25,17,6
	stfs 25,36(1)
	.loc 4 2892 0
	lfs 25,52(1)
	.loc 4 2893 0
	fmadds 1,25,17,1
	.loc 4 2892 0
	fmadds 6,25,26,3
	.loc 4 2898 0
	lfs 3,56(1)
	.loc 4 2894 0
	fmadds 5,25,21,5
	.loc 4 2899 0
	lfs 25,76(1)
	.loc 4 2893 0
	stfs 1,48(1)
	.loc 4 2898 0
	fmadds 3,9,20,3
	.loc 4 2897 0
	lfs 1,44(1)
	.loc 4 2892 0
	fmadds 6,8,28,6
	.loc 4 2894 0
	fmadds 5,8,31,5
	.loc 4 2897 0
	fmadds 7,9,19,1
	.loc 4 2898 0
	stfs 3,24(1)
	.loc 4 2899 0
	fmadds 9,9,22,25
	.loc 4 2901 0
	lfs 25,84(1)
	.loc 4 2900 0
	lfs 3,80(1)
	.loc 4 2901 0
	fmadds 25,10,20,25
	.loc 4 2900 0
	fmadds 1,10,19,3
	.loc 4 2902 0
	lfs 3,88(1)
	.loc 4 2897 0
	fmadds 7,12,16,7
	.loc 4 2901 0
	stfs 25,40(1)
	.loc 4 2902 0
	fmadds 10,10,22,3
	.loc 4 2903 0
	lfs 25,92(1)
	.loc 4 2899 0
	fmadds 9,12,27,9
	.loc 4 2900 0
	fmadds 1,13,16,1
	.loc 4 2903 0
	fmadds 3,11,19,25
	.loc 4 2904 0
	lfs 25,96(1)
	.loc 4 2902 0
	fmadds 10,13,27,10
	.loc 4 2904 0
	fmadds 25,11,20,25
	.loc 4 2903 0
	fmadds 3,0,16,3
	.loc 4 2908 0
	fneg 19,19
	.loc 4 2904 0
	stfs 25,52(1)
	.loc 4 2909 0
	fneg 20,20
	.loc 4 2905 0
	lfs 25,100(1)
	.loc 4 2914 0
	fneg 16,16
	.loc 4 2905 0
	fmadds 11,11,22,25
	.loc 4 2887 0
	lfs 25,16(1)
	.loc 4 2910 0
	fneg 22,22
	.loc 4 2887 0
	fmadds 25,30,29,25
	.loc 4 2905 0
	fmadds 11,0,27,11
	.loc 4 2916 0
	fneg 27,27
	.loc 4 2887 0
	stfs 25,4(9)
	.loc 4 2888 0
	lfs 25,28(1)
	fmadds 30,30,31,25
	.loc 4 2890 0
	lfs 25,36(1)
	.loc 4 2888 0
	stfs 30,8(9)
	.loc 4 2889 0
	lfs 30,20(1)
	fmadds 30,4,28,30
	stfs 30,24(9)
	.loc 4 2890 0
	fmadds 30,4,29,25
	.loc 4 2893 0
	lfs 25,48(1)
	fmadds 4,8,29,25
	.loc 4 2898 0
	lfs 25,24(1)
	fmadds 8,12,18,25
	.loc 4 2901 0
	lfs 25,40(1)
	fmadds 12,13,18,25
	.loc 4 2904 0
	lfs 25,52(1)
	.loc 4 2878 0
	stfs 26,96(9)
.LVL764:
	.loc 4 2904 0
	fmadds 13,0,18,25
	.loc 4 2879 0
	stfs 17,100(9)
.LVL765:
	.loc 4 2915 0
	fneg 18,18
	.loc 4 2880 0
	stfs 21,104(9)
.LVL766:
	.loc 4 2881 0
	stfs 28,120(9)
.LVL767:
	.loc 4 2882 0
	stfs 29,124(9)
.LVL768:
	.loc 4 2883 0
	stfs 31,128(9)
.LVL769:
	.loc 4 2886 0
	stfs 24,0(9)
.LVL770:
	.loc 4 2890 0
	stfs 30,28(9)
.LVL771:
	.loc 4 2891 0
	stfs 2,32(9)
.LVL772:
	.loc 4 2892 0
	stfs 6,48(9)
.LVL773:
	.loc 4 2893 0
	stfs 4,52(9)
.LVL774:
	.loc 4 2894 0
	stfs 5,56(9)
.LVL775:
	.loc 4 2897 0
	stfs 7,12(9)
.LVL776:
	.loc 4 2898 0
	stfs 8,16(9)
.LVL777:
	.loc 4 2899 0
	stfs 9,20(9)
.LVL778:
	.loc 4 2900 0
	stfs 1,36(9)
.LVL779:
	.loc 4 2901 0
	stfs 12,40(9)
.LVL780:
	.loc 4 2902 0
	stfs 10,44(9)
.LVL781:
	.loc 4 2903 0
	stfs 3,60(9)
.LVL782:
	.loc 4 2904 0
	stfs 13,64(9)
.LVL783:
	.loc 4 2905 0
	stfs 11,68(9)
.LVL784:
	.loc 4 2908 0
	stfs 19,84(9)
.LVL785:
	.loc 4 2909 0
	stfs 20,88(9)
.LVL786:
	.loc 4 2910 0
	stfs 22,92(9)
.LVL787:
	.loc 4 2911 0
	stfs 23,108(9)
.LVL788:
	.loc 4 2912 0
	stfs 14,112(9)
.LVL789:
	.loc 4 2913 0
	stfs 15,116(9)
.LVL790:
	.loc 4 2914 0
	stfs 16,132(9)
.LVL791:
	.loc 4 2915 0
	stfs 18,136(9)
.LVL792:
	.loc 4 2916 0
	stfs 27,140(9)
.LVL793:
.L231:
.LBE11667:
	.loc 4 2920 0
	lfd 14,112(1)
	lfd 15,120(1)
	lfd 16,128(1)
	lfd 17,136(1)
	lfd 18,144(1)
	lfd 19,152(1)
	lfd 20,160(1)
	lfd 21,168(1)
	lfd 22,176(1)
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
.LCFI83:
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
	blr
	.cfi_endproc
.LFE2570:
	.size	_ZN6idMat615InverseFastSelfEv, .-_ZN6idMat615InverseFastSelfEv
	.align 2
	.globl _ZNK6idMat68ToStringEi
	.type	_ZNK6idMat68ToStringEi, @function
_ZNK6idMat68ToStringEi:
.LFB2571:
	.loc 4 2927 0
	.cfi_startproc
.LVL794:
	mflr 0
	stwu 1,-8(1)
.LCFI84:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 5,4
	.loc 4 2928 0
	li 4,36
.LVL795:
	.loc 4 2927 0
	stw 0,12(1)
	.loc 4 2928 0
	.cfi_offset 65, 4
	bl _ZN5idStr18FloatArrayToStringEPKfii
.LVL796:
	.loc 4 2929 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI85:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2571:
	.size	_ZNK6idMat68ToStringEi, .-_ZNK6idMat68ToStringEi
	.align 2
	.globl _ZN6idMatX10ChangeSizeEiib
	.type	_ZN6idMatX10ChangeSizeEiib, @function
_ZN6idMatX10ChangeSizeEiib:
.LFB2572:
	.loc 4 2948 0
	.cfi_startproc
.LVL797:
	stwu 1,-48(1)
.LCFI86:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 30,40(1)
.LBB11672:
	.loc 4 2949 0
	mullw 30,4,5
	.cfi_offset 30, -8
	.cfi_register 65, 0
.LBE11672:
	.loc 4 2948 0
	stw 26,24(1)
	stw 28,32(1)
	mr 28,4
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	stw 29,36(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 31,44(1)
.LBB11700:
	.loc 4 2949 0
	addi 26,30,3
.LBE11700:
	.loc 4 2948 0
	stw 0,52(1)
.LBB11701:
	.loc 4 2949 0
	rlwinm 26,26,0,0,29
.LVL798:
.LBE11701:
	.loc 4 2948 0
	stw 25,20(1)
	mr 31,3
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	stw 27,28(1)
.LBB11702:
.LBB11673:
	.loc 4 2950 0
	lwz 0,8(3)
	cmpw 7,26,0
	ble- 7,.L236
	.cfi_offset 27, -20
	.loc 4 2950 0 is_stmt 0 discriminator 1
	cmpwi 7,0,-1
	beq- 7,.L236
.LBB11674:
	.loc 4 2952 0 is_stmt 1
	slwi 25,26,2
	.loc 4 2951 0
	lwz 27,12(31)
.LVL799:
	.loc 4 2952 0
	mr 3,25
.LVL800:
	stw 6,8(1)
	bl _Z11Mem_Alloc16i
.LVL801:
	.loc 4 2953 0
	lwz 6,8(1)
	.loc 4 2952 0
	stw 3,12(31)
	.loc 4 2953 0
	cmpwi 7,6,0
	bne- 7,.L275
.L237:
.LBB11675:
	.loc 4 2957 0
	cmpwi 7,27,0
.LBE11675:
	.loc 4 2956 0
	stw 26,8(31)
.LBB11680:
	.loc 4 2957 0
	beq- 7,.L238
.LBB11676:
	.loc 4 2958 0
	lwz 0,0(31)
.LVL802:
	mr 6,28
	cmpw 7,28,0
	bgt- 7,.L276
	.loc 4 2959 0
	lwz 0,4(31)
.LVL803:
	mr 5,29
	cmpw 7,29,0
	bgt- 7,.L277
.LVL804:
.L240:
.LBB11677:
	.loc 4 2960 0
	cmpwi 7,6,0
	ble- 7,.L241
	cmpwi 6,5,0
	.loc 4 2948 0
	slwi 4,29,2
.LBB11678:
	li 7,0
	.loc 4 2960 0
	li 8,0
.LVL805:
.L242:
	.loc 4 2961 0 discriminator 1
	ble- 6,.L244
	.loc 4 2961 0 is_stmt 0
	mtctr 5
	mr 11,7
	li 9,0
.LVL806:
.L243:
	.loc 4 2962 0 is_stmt 1 discriminator 2
	lwz 0,4(31)
	lwz 10,12(31)
	mullw 0,8,0
	add 0,0,9
	.loc 4 2961 0 discriminator 2
	addi 9,9,1
.LVL807:
	.loc 4 2962 0 discriminator 2
	slwi 0,0,2
	lwzx 0,27,0
	stwx 0,10,11
	.loc 4 2961 0 discriminator 2
	addi 11,11,4
	bdnz .L243
.LVL808:
.L244:
.LBE11678:
	.loc 4 2960 0
	addi 8,8,1
.LVL809:
	add 7,7,4
	cmpw 7,8,6
	bne+ 7,.L242
.LVL810:
.L241:
.LBE11677:
	.loc 4 2965 0
	mr 3,27
	bl _Z10Mem_Free16Pv
.LVL811:
	b .L238
.LVL812:
.L236:
.LBE11676:
.LBE11680:
.LBE11674:
.LBB11682:
.LBB11683:
	.loc 4 2968 0
	lwz 0,4(31)
	cmpw 7,29,0
	bge- 7,.L245
.LBB11684:
	.loc 4 2969 0
	lwz 0,0(31)
.LVL813:
	mr 5,28
	cmpw 7,28,0
	bgt- 7,.L278
.L246:
.LVL814:
.LBB11685:
	.loc 4 2970 0
	cmpwi 7,5,0
	cmpwi 6,6,0
	ble- 7,.L247
	cmpwi 6,29,0
	.loc 4 2948 0
	slwi 4,29,2
.LBB11686:
	li 7,0
	.loc 4 2970 0
	li 8,0
.LVL815:
.L248:
	.loc 4 2971 0 discriminator 1
	ble- 6,.L250
	.loc 4 2971 0 is_stmt 0
	mtctr 29
	mr 11,7
	li 9,0
.LVL816:
.L249:
	.loc 4 2972 0 is_stmt 1 discriminator 2
	lwz 0,4(31)
	lwz 10,12(31)
	mullw 0,8,0
	add 0,0,9
	.loc 4 2971 0 discriminator 2
	addi 9,9,1
.LVL817:
	.loc 4 2972 0 discriminator 2
	slwi 0,0,2
	lwzx 0,10,0
	stwx 0,10,11
	.loc 4 2971 0 discriminator 2
	addi 11,11,4
	bdnz .L249
.LVL818:
.L250:
.LBE11686:
	.loc 4 2970 0
	addi 8,8,1
.LVL819:
	add 7,7,4
	cmpw 7,8,5
	bne+ 7,.L248
.LVL820:
.L274:
	cmpwi 6,6,0
.LVL821:
.L247:
.LBE11685:
.LBE11684:
.LBE11683:
	.loc 4 2987 0
	beq- 6,.L238
	.loc 4 2987 0 is_stmt 0 discriminator 1
	lwz 0,0(31)
	cmpw 7,28,0
	bgt- 7,.L279
.L238:
.LBE11682:
.LBE11673:
	.loc 4 2993 0 is_stmt 1
	cmpw 7,30,26
	.loc 4 2991 0
	stw 28,0(31)
	.loc 4 2992 0
	stw 29,4(31)
.LVL822:
	.loc 4 2993 0
	bge- 7,.L235
	slwi 9,30,2
	li 10,0
.L258:
	.loc 4 2993 0 is_stmt 0 discriminator 2
	addi 30,30,1
.LVL823:
	lwz 11,12(31)
	.loc 4 2948 0 is_stmt 1 discriminator 2
	addi 0,30,3
	.loc 4 2993 0 discriminator 2
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,0,30
	addi 9,9,4
	bgt+ 7,.L258
.L235:
.LBE11702:
	.loc 4 2994 0
	lwz 0,52(1)
	lwz 25,20(1)
	mtlr 0
	lwz 26,24(1)
.LVL824:
	lwz 27,28(1)
	lwz 28,32(1)
.LVL825:
	lwz 29,36(1)
.LVL826:
	lwz 30,40(1)
.LVL827:
	lwz 31,44(1)
.LVL828:
	addi 1,1,48
	.cfi_remember_state
.LCFI87:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL829:
.L245:
.LCFI88:
	.cfi_restore_state
.LBB11703:
.LBB11699:
.LBB11696:
.LBB11695:
.LBB11687:
	.loc 4 2975 0
	ble- 7,.L274
.LBB11688:
	.loc 4 2976 0
	lwz 9,0(31)
.LVL830:
	mr 8,28
	cmpw 7,28,9
	ble- 7,.L251
	mr 8,9
.L251:
.LVL831:
	addic. 8,8,-1
.LVL832:
	cmpwi 6,6,0
	blt- 0,.L247
	.loc 4 2948 0
	mullw 6,29,8
.LVL833:
	addi 4,29,-1
.LVL834:
	neg 27,29
.LBB11689:
.LBB11690:
	.loc 4 2979 0
	li 7,0
.LBE11690:
.LBE11689:
	.loc 4 2948 0
	add 5,4,6
.LVL835:
	mulli 3,29,-4
.LVL836:
	slwi 5,5,2
.L256:
.LBB11692:
	.loc 4 2977 0
	beq- 6,.L252
.LVL837:
.LBB11691:
	.loc 4 2978 0
	cmpw 7,0,4
	bgt- 7,.L252
	mr 11,5
	mr 9,4
.LVL838:
.L253:
	.loc 4 2979 0 discriminator 2
	lwz 10,12(31)
	.loc 4 2978 0 discriminator 2
	addi 9,9,-1
.LVL839:
	.loc 4 2979 0 discriminator 2
	stwx 7,10,11
	.loc 4 2978 0 discriminator 2
	addi 11,11,-4
	lwz 0,4(31)
	cmpw 7,0,9
	ble+ 7,.L253
.LVL840:
.L252:
.LBE11691:
.LBE11692:
.LBB11693:
	.loc 4 2982 0
	addic. 9,0,-1
	blt- 0,.L254
	.loc 4 2948 0
	add 11,9,6
	.loc 4 2982 0
	mtctr 0
	slwi 11,11,2
	b .L255
.LVL841:
.L280:
	lwz 0,4(31)
.L255:
	.loc 4 2983 0 discriminator 2
	mullw 0,8,0
	lwz 10,12(31)
	add 0,0,9
	.loc 4 2982 0 discriminator 2
	addi 9,9,-1
.LVL842:
	.loc 4 2983 0 discriminator 2
	slwi 0,0,2
	lwzx 0,10,0
	stwx 0,10,11
	.loc 4 2982 0 discriminator 2
	addi 11,11,-4
	bdnz .L280
.L254:
.LVL843:
.LBE11693:
	.loc 4 2976 0
	cmpwi 7,8,0
	add 5,5,3
	add 6,6,27
	addi 8,8,-1
.LVL844:
	beq- 7,.L247
	lwz 0,4(31)
	b .L256
.LVL845:
.L278:
.LBE11688:
.LBE11687:
.LBB11694:
	.loc 4 2969 0
	mr 5,0
	b .L246
.LVL846:
.L277:
.LBE11694:
.LBE11695:
.LBE11696:
.LBB11697:
.LBB11681:
.LBB11679:
	.loc 4 2959 0
	mr 5,0
	b .L240
.LVL847:
.L276:
	.loc 4 2958 0
	mr 6,0
	.loc 4 2959 0
	lwz 0,4(31)
.LVL848:
	mr 5,29
	cmpw 7,29,0
	ble- 7,.L240
	b .L277
.LVL849:
.L275:
.LBE11679:
.LBE11681:
	.loc 4 2954 0
	li 4,0
	mr 5,25
	bl memset
	b .L237
.LVL850:
.L279:
.LBE11697:
.LBB11698:
	.loc 4 2988 0
	subf 5,0,28
	mullw 0,29,0
	lwz 3,12(31)
	li 4,0
	mullw 5,5,29
	slwi 0,0,2
	add 3,3,0
	slwi 5,5,2
	bl memset
	b .L238
.LBE11698:
.LBE11699:
.LBE11703:
	.cfi_endproc
.LFE2572:
	.size	_ZN6idMatX10ChangeSizeEiib, .-_ZN6idMatX10ChangeSizeEiib
	.align 2
	.globl _ZN6idMatX9RemoveRowEi
	.type	_ZN6idMatX9RemoveRowEi, @function
_ZN6idMatX9RemoveRowEi:
.LFB2573:
	.loc 4 3001 0
	.cfi_startproc
.LVL851:
	mflr 0
	stwu 1,-16(1)
.LCFI89:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
.LBB11704:
	.loc 4 3006 0
	lwz 9,0(3)
	addi 9,9,-1
	.loc 4 3008 0
	cmpw 7,9,4
	.loc 4 3006 0
	stw 9,0(3)
.LVL852:
	.loc 4 3008 0
	ble- 7,.L282
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 4 3008 0 is_stmt 0 discriminator 2
	mr 31,4
.LVL853:
.L283:
	.loc 4 3009 0 is_stmt 1 discriminator 2
	lwz 4,4(30)
	lwz 0,12(30)
	mullw 3,4,31
	addi 31,31,1
.LVL854:
	slwi 5,4,2
	mullw 4,4,31
	slwi 3,3,2
	add 3,0,3
	slwi 4,4,2
	add 4,0,4
	bl memcpy
.LVL855:
	.loc 4 3008 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,31
	bgt+ 7,.L283
.LVL856:
.L282:
.LBE11704:
	.loc 4 3013 0
	lwz 0,20(1)
	mr 3,30
	lwz 31,12(1)
	mtlr 0
	lwz 30,8(1)
.LVL857:
	addi 1,1,16
.LCFI90:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2573:
	.size	_ZN6idMatX9RemoveRowEi, .-_ZN6idMatX9RemoveRowEi
	.align 2
	.globl _ZN6idMatX12RemoveColumnEi
	.type	_ZN6idMatX12RemoveColumnEi, @function
_ZN6idMatX12RemoveColumnEi:
.LFB2574:
	.loc 4 3020 0
	.cfi_startproc
.LVL858:
	mflr 0
	stwu 1,-24(1)
.LCFI91:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB11705:
	.loc 4 3027 0
	li 11,0
.LBE11705:
	.loc 4 3020 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,20(1)
.LBB11706:
	.loc 4 3027 0
	li 31,0
	.cfi_offset 31, -4
.LBE11706:
	.loc 4 3020 0
	stw 0,28(1)
.LBB11707:
	.loc 4 3027 0
	lwz 0,0(3)
	.cfi_offset 65, 4
	.loc 4 3025 0
	lwz 9,4(3)
	.loc 4 3027 0
	cmpwi 7,0,1
	.loc 4 3025 0
	addi 9,9,-1
	stw 9,4(3)
.LVL859:
	.loc 4 3027 0
	ble- 7,.L286
.LVL860:
.L288:
	.loc 4 3028 0 discriminator 2
	addi 4,9,1
	mullw 3,31,9
	lwz 0,12(30)
	slwi 5,9,2
	mullw 4,4,31
	add 3,3,29
	slwi 3,3,2
	add 3,0,3
	.loc 4 3027 0 discriminator 2
	addi 31,31,1
	.loc 4 3028 0 discriminator 2
	add 4,4,29
	addi 4,4,1
	slwi 4,4,2
	add 4,0,4
	bl memmove
.LVL861:
	.loc 4 3027 0 discriminator 2
	lwz 9,0(30)
	addi 0,9,-1
	lwz 9,4(30)
	cmpw 7,0,31
	bgt+ 7,.L288
	.loc 4 3027 0 is_stmt 0
	addi 0,9,1
	mullw 11,31,9
	mullw 31,31,0
.LVL862:
.L286:
	.loc 4 3030 0 is_stmt 1
	add 31,29,31
	lwz 0,12(30)
	add 11,29,11
	addi 4,31,1
	subf 29,29,9
.LVL863:
	slwi 3,11,2
	slwi 4,4,2
	add 3,0,3
	add 4,0,4
	slwi 5,29,2
	bl memmove
.LBE11707:
	.loc 4 3033 0
	lwz 0,28(1)
	mr 3,30
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
.LVL864:
	lwz 31,20(1)
	addi 1,1,24
.LCFI92:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2574:
	.size	_ZN6idMatX12RemoveColumnEi, .-_ZN6idMatX12RemoveColumnEi
	.align 2
	.globl _ZN6idMatX15RemoveRowColumnEi
	.type	_ZN6idMatX15RemoveRowColumnEi, @function
_ZN6idMatX15RemoveRowColumnEi:
.LFB2575:
	.loc 4 3040 0
	.cfi_startproc
.LVL865:
	mflr 0
	stwu 1,-24(1)
.LCFI93:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
.LBB11708:
	.loc 4 3048 0
	mr. 29,4
	.cfi_offset 29, -12
.LBE11708:
	.loc 4 3040 0
	stw 0,28(1)
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	stw 28,8(1)
	stw 30,16(1)
.LBB11709:
	.loc 4 3045 0
	lwz 11,0(3)
	.loc 4 3046 0
	lwz 9,4(3)
	.loc 4 3045 0
	addi 0,11,-1
	.loc 4 3046 0
	addi 9,9,-1
	.loc 4 3045 0
	stw 0,0(3)
	.loc 4 3046 0
	stw 9,4(3)
	.loc 4 3048 0
	ble- 0,.L291
	.cfi_offset 30, -8
	.cfi_offset 28, -16
.LVL866:
	.loc 4 3049 0 discriminator 1
	addic. 28,29,-1
	li 4,0
.LVL867:
	li 11,0
	beq- 0,.L292
	.loc 4 3049 0 is_stmt 0
	li 30,0
.LVL868:
.L294:
	.loc 4 3050 0 is_stmt 1 discriminator 2
	addi 4,9,1
	mullw 3,30,9
	lwz 0,12(31)
	slwi 5,9,2
	mullw 4,4,30
	add 3,3,29
	slwi 3,3,2
	add 3,0,3
	.loc 4 3049 0 discriminator 2
	addi 30,30,1
	.loc 4 3050 0 discriminator 2
	add 4,4,29
	addi 4,4,1
	slwi 4,4,2
	add 4,0,4
	bl memmove
.LVL869:
	.loc 4 3049 0 discriminator 2
	cmpw 7,28,30
	lwz 9,4(31)
	bgt+ 7,.L294
	.loc 4 3049 0 is_stmt 0
	addi 4,9,1
	mullw 11,28,9
	mullw 4,28,4
.LVL870:
.L292:
	.loc 4 3052 0 is_stmt 1
	add 4,29,4
	lwz 0,12(31)
	add 11,29,11
	addi 4,4,1
	subf 5,29,9
	slwi 3,11,2
	slwi 4,4,2
	add 3,0,3
	add 4,0,4
	slwi 5,5,2
	bl memmove
	lwz 9,4(31)
.L291:
	.loc 4 3055 0
	addi 4,9,1
	addi 28,29,1
	mullw 9,29,9
	lwz 0,12(31)
	slwi 5,29,2
	.loc 4 3057 0
	mr 30,29
	.loc 4 3055 0
	mullw 4,28,4
	slwi 3,9,2
	add 3,0,3
	slwi 4,4,2
	add 4,0,4
	bl memcpy
.LVL871:
	.loc 4 3057 0
	lwz 9,0(31)
	addi 0,9,-1
	cmpw 7,29,0
	bge- 7,.L295
.LVL872:
.L296:
	.loc 4 3058 0 discriminator 2
	lwz 5,4(31)
	lwz 0,12(31)
	mullw 3,5,30
	addi 4,5,1
	addi 30,30,1
.LVL873:
	slwi 5,5,2
	mullw 4,30,4
	add 3,3,29
	slwi 3,3,2
	add 3,0,3
	add 4,4,29
	addi 4,4,1
	slwi 4,4,2
	add 4,0,4
	bl memcpy
.LVL874:
	.loc 4 3057 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,-1
	cmpw 7,0,30
	bgt+ 7,.L296
	.loc 4 3057 0 is_stmt 0
	addi 28,30,1
.L295:
	.loc 4 3060 0 is_stmt 1
	lwz 9,4(31)
	lwz 0,12(31)
	addi 4,9,1
	mullw 30,9,30
.LVL875:
	subf 5,29,9
	slwi 5,5,2
	mullw 4,4,28
	add 4,4,29
	add 29,30,29
.LVL876:
	addi 4,4,1
	slwi 3,29,2
	slwi 4,4,2
	add 3,0,3
	add 4,0,4
	bl memcpy
.LBE11709:
	.loc 4 3063 0
	lwz 0,28(1)
	mr 3,31
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL877:
	addi 1,1,24
.LCFI94:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE2575:
	.size	_ZN6idMatX15RemoveRowColumnEi, .-_ZN6idMatX15RemoveRowColumnEi
	.align 2
	.globl _ZNK6idMatX12IsOrthogonalEf
	.type	_ZNK6idMatX12IsOrthogonalEf, @function
_ZNK6idMatX12IsOrthogonalEf:
.LFB2576:
	.loc 4 3072 0
	.cfi_startproc
.LVL878:
	stwu 1,-16(1)
.LCFI95:
	.cfi_def_cfa_offset 16
	.loc 4 3072 0
	mr 9,3
.LBB11710:
.LBB11711:
	.loc 4 8102 0
	lwz 7,0(3)
.LBE11711:
	.loc 4 3075 0
	lwz 0,4(3)
	.loc 4 3076 0
	li 3,0
.LVL879:
	.loc 4 3075 0
	cmpw 7,7,0
	beq- 7,.L314
.LVL880:
.L301:
.LBE11710:
	.loc 4 3095 0
	addi 1,1,16
	.cfi_remember_state
.LCFI96:
	.cfi_def_cfa_offset 0
	blr
.LVL881:
.L314:
.LCFI97:
	.cfi_restore_state
.LBB11728:
.LBB11725:
	.loc 4 3080 0
	cmpwi 7,7,0
.LBE11725:
	.loc 4 3079 0
	lwz 12,12(9)
.LVL882:
.LBB11726:
	.loc 4 3094 0
	li 3,1
	.loc 4 3080 0
	ble- 7,.L301
	cmpwi 6,7,1
	slwi 3,7,2
	.loc 4 3079 0
	mr 5,12
	.loc 4 3080 0
	li 6,0
.LBB11712:
.LBB11713:
.LBB11714:
	.loc 4 3083 0
	lis 4,.LC1@ha
.LVL883:
.L302:
.LBE11714:
.LBE11713:
.LBE11712:
	.loc 4 3080 0 discriminator 1
	lfs 12,0(5)
	mr 10,12
.LBE11726:
.LBE11728:
	.loc 4 3072 0 discriminator 1
	li 8,0
.LVL884:
.L306:
.LBB11729:
.LBB11727:
.LBB11722:
.LBB11720:
.LBB11718:
	.loc 4 3083 0
	cmpw 7,6,8
	lfs 13,0(10)
	lis 11,.LC9@ha
	.loc 4 3082 0
	mr 9,10
.LVL885:
	.loc 4 3083 0
	fmuls 13,12,13
	lfs 0,.LC9@l(11)
	beq- 7,.L315
.L303:
	.loc 4 3083 0 is_stmt 0 discriminator 3
	fsubs 13,13,0
	stfs 13,8(1)
.LVL886:
.LBB11715:
	.loc 4 3084 0 is_stmt 1 discriminator 3
	beq- 6,.L304
	.loc 4 3084 0 is_stmt 0
	addi 0,7,-1
	mr 11,5
	mtctr 0
.LVL887:
.L305:
	.loc 4 3086 0 is_stmt 1 discriminator 2
	lfs 11,8(1)
	lfsu 13,4(11)
	lfsux 0,9,3
.LVL888:
	fmadds 11,13,0,11
	stfs 11,8(1)
.LVL889:
	.loc 4 3084 0 discriminator 2
	bdnz .L305
.LVL890:
.L304:
.LBE11715:
.LBB11716:
.LBB11717:
	.loc 5 781 0
	lwz 9,8(1)
.LVL891:
	rlwinm 0,9,0,1,31
.LBE11717:
.LBE11716:
	.loc 4 3088 0
	stw 0,12(1)
	lfs 0,12(1)
	fcmpu 7,1,0
	blt- 7,.L310
.LBE11718:
	.loc 4 3081 0
	addi 8,8,1
.LVL892:
	addi 10,10,4
	cmpw 7,8,7
	bne+ 7,.L306
.LBE11720:
.LBE11722:
	.loc 4 3080 0
	addi 6,6,1
.LBB11723:
	.loc 4 3092 0
	add 5,5,3
.LVL893:
.LBE11723:
	.loc 4 3080 0
	cmpw 7,6,8
	bne+ 7,.L302
	.loc 4 3094 0
	li 3,1
	b .L301
.LVL894:
.L315:
.LBB11724:
.LBB11721:
.LBB11719:
	.loc 4 3083 0
	lfs 0,.LC1@l(4)
	b .L303
.LVL895:
.L310:
	.loc 4 3089 0
	li 3,0
.LBE11719:
.LBE11721:
.LBE11724:
.LBE11727:
.LBE11729:
	.loc 4 3095 0
	addi 1,1,16
.LCFI98:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2576:
	.size	_ZNK6idMatX12IsOrthogonalEf, .-_ZNK6idMatX12IsOrthogonalEf
	.align 2
	.globl _ZNK6idMatX13IsOrthonormalEf
	.type	_ZNK6idMatX13IsOrthonormalEf, @function
_ZNK6idMatX13IsOrthonormalEf:
.LFB2577:
	.loc 4 3104 0
	.cfi_startproc
.LVL896:
	stwu 1,-24(1)
.LCFI99:
	.cfi_def_cfa_offset 24
	mr 9,3
	stw 31,20(1)
.LBB11730:
.LBB11731:
	.loc 4 8102 0
	lwz 7,0(3)
.LBE11731:
	.loc 4 3107 0
	lwz 0,4(3)
	.loc 4 3108 0
	li 3,0
.LVL897:
	.loc 4 3107 0
	cmpw 7,7,0
	beq- 7,.L335
	.cfi_offset 31, -4
.LVL898:
.L317:
.LBE11730:
	.loc 4 3137 0
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI100:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL899:
.L335:
.LCFI101:
	.cfi_restore_state
.LBB11759:
.LBB11754:
	.loc 4 3112 0
	cmpwi 7,7,0
.LBE11754:
	.loc 4 3111 0
	lwz 12,12(9)
.LVL900:
.LBB11755:
	.loc 4 3136 0
	li 3,1
	.loc 4 3112 0
	ble- 7,.L317
	slwi 31,7,2
	cmpwi 6,7,1
	.loc 4 3111 0
	mr 5,12
	.loc 4 3112 0
	li 6,0
.LBB11732:
.LBB11733:
.LBB11734:
	.loc 4 3115 0
	lis 3,.LC1@ha
.LBE11734:
.LBE11733:
	.loc 4 3104 0
	addi 4,31,4
.LVL901:
.L318:
.LBE11732:
	.loc 4 3112 0 discriminator 1
	lfs 12,0(5)
	mr 10,12
.LBE11755:
.LBE11759:
	.loc 4 3104 0 discriminator 1
	li 8,0
.LVL902:
.L322:
.LBB11760:
.LBB11756:
.LBB11750:
.LBB11744:
.LBB11740:
	.loc 4 3115 0
	cmpw 7,6,8
	lfs 13,0(10)
	lis 11,.LC9@ha
	.loc 4 3114 0
	mr 9,10
.LVL903:
	.loc 4 3115 0
	fmuls 13,12,13
	lfs 0,.LC9@l(11)
	beq- 7,.L336
.L319:
	.loc 4 3115 0 is_stmt 0 discriminator 3
	fsubs 13,13,0
	stfs 13,8(1)
.LVL904:
.LBB11735:
	.loc 4 3116 0 is_stmt 1 discriminator 3
	beq- 6,.L320
	.loc 4 3116 0 is_stmt 0
	addi 0,7,-1
	mr 11,5
	mtctr 0
.LVL905:
.L321:
	.loc 4 3118 0 is_stmt 1 discriminator 2
	lfs 11,8(1)
	lfsu 13,4(11)
	lfsux 0,9,31
.LVL906:
	fmadds 11,13,0,11
	stfs 11,8(1)
.LVL907:
	.loc 4 3116 0 discriminator 2
	bdnz .L321
.LVL908:
.L320:
.LBE11735:
.LBB11736:
.LBB11737:
	.loc 5 781 0
	lwz 9,8(1)
.LVL909:
	rlwinm 0,9,0,1,31
.LBE11737:
.LBE11736:
	.loc 4 3120 0
	stw 0,12(1)
	lfs 0,12(1)
	fcmpu 7,1,0
	blt- 7,.L330
.LBE11740:
	.loc 4 3113 0
	addi 8,8,1
.LVL910:
	addi 10,10,4
	cmpw 7,8,7
	bne+ 7,.L322
.LBE11744:
	.loc 4 3126 0
	slwi 6,6,2
	.loc 4 3127 0
	lfs 13,.LC1@l(3)
	lfsx 0,12,6
	.loc 4 3124 0
	add 5,5,31
.LVL911:
	.loc 4 3126 0
	add 9,12,6
.LVL912:
	.loc 4 3127 0
	fmsubs 13,0,0,13
	stfs 13,8(1)
.LVL913:
	.loc 4 3128 0
	beq- 6,.L329
.LBB11745:
.LBB11741:
.LBB11738:
	addi 0,7,-1
.LBE11738:
.LBE11741:
.LBE11745:
	.loc 4 3104 0
	add 9,9,31
.LBB11746:
.LBB11742:
.LBB11739:
	.loc 4 3128 0
	mtctr 0
	li 6,1
.LVL914:
.L324:
.LBE11739:
.LBE11742:
.LBE11746:
	.loc 4 3130 0 discriminator 2
	lfs 0,4(9)
	.loc 4 3128 0 discriminator 2
	addi 6,6,1
	.loc 4 3130 0 discriminator 2
	lfs 11,8(1)
	.loc 4 3128 0 discriminator 2
	add 9,9,4
	.loc 4 3130 0 discriminator 2
	fmadds 11,0,0,11
	stfs 11,8(1)
.LVL915:
	.loc 4 3128 0 discriminator 2
	bdnz .L324
.LVL916:
.L323:
.LBB11747:
.LBB11748:
	.loc 5 781 0
	lwz 9,8(1)
	rlwinm 0,9,0,1,31
.LBE11748:
.LBE11747:
	.loc 4 3132 0
	stw 0,12(1)
	lfs 0,12(1)
	fcmpu 7,1,0
	blt- 7,.L330
.LBE11750:
	.loc 4 3112 0
	addi 6,6,1
.LVL917:
	cmpw 7,7,6
	bgt+ 7,.L318
	.loc 4 3136 0
	li 3,1
	b .L317
.LVL918:
.L336:
.LBB11751:
.LBB11749:
.LBB11743:
	.loc 4 3115 0
	lfs 0,.LC1@l(3)
	b .L319
.LVL919:
.L330:
.LBE11743:
.LBE11749:
.LBE11751:
.LBE11756:
.LBE11760:
	.loc 4 3137 0
	lwz 31,20(1)
.LBB11761:
.LBB11757:
.LBB11752:
	.loc 4 3133 0
	li 3,0
.LBE11752:
.LBE11757:
.LBE11761:
	.loc 4 3137 0
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
.LCFI102:
	.cfi_def_cfa_offset 0
	blr
.LVL920:
.L329:
.LCFI103:
	.cfi_restore_state
.LBB11762:
.LBB11758:
.LBB11753:
	.loc 4 3128 0
	li 6,1
	b .L323
.LBE11753:
.LBE11758:
.LBE11762:
	.cfi_endproc
.LFE2577:
	.size	_ZNK6idMatX13IsOrthonormalEf, .-_ZNK6idMatX13IsOrthonormalEf
	.align 2
	.globl _ZNK6idMatX9IsPMatrixEf
	.type	_ZNK6idMatX9IsPMatrixEf, @function
_ZNK6idMatX9IsPMatrixEf:
.LFB2578:
	.loc 4 3147 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2578
.LVL921:
	mflr 0
	stwu 1,-40(1)
.LCFI104:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stfd 31,32(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,44(1)
.LBB11782:
.LBB11783:
.LBB11784:
	.loc 3 1995 0
	li 0,0
	.cfi_offset 65, 4
.LBE11784:
.LBE11783:
.LBE11782:
	.loc 4 3147 0
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 31,28(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI105:
	.cfi_def_cfa_register 31
.LVL922:
.LBB11822:
.LBB11788:
.LBB11785:
	.loc 3 1995 0
	stw 0,16(31)
	.loc 4 8102 0
	lwz 9,0(3)
.LBE11785:
.LBE11788:
	.loc 4 3152 0
	lwz 11,4(3)
.LBB11789:
.LBB11786:
	.loc 3 1995 0
	stw 0,12(31)
.LBE11786:
.LBE11789:
	.loc 4 3152 0
	cmpw 7,9,11
.LBB11790:
.LBB11787:
	.loc 3 1995 0
	stw 0,8(31)
	.loc 3 1996 0
	stw 0,20(31)
.LBE11787:
.LBE11790:
	.loc 4 3152 0
	bne- 7,.L358
	.loc 4 3156 0
	cmpwi 7,9,0
	ble- 7,.L359
.LVL923:
	.loc 4 3160 0
	lwz 11,12(3)
	lfs 0,0(11)
	fcmpu 7,0,1
	cror 30,28,30
	beq- 7,.L358
	.loc 4 3164 0
	cmpwi 7,9,1
	beq- 7,.L359
	.loc 4 3168 0
	addi 0,9,-1
.LBB11791:
.LBB11792:
	.loc 3 2285 0
	li 11,-1
.LBE11792:
.LBE11791:
	.loc 4 3168 0
	mullw 9,0,0
.LBB11797:
.LBB11793:
	.loc 3 2285 0
	stw 11,16(31)
.LBE11793:
.LBE11797:
	.loc 4 3168 0
	lwz 8,0(1)
.LBB11798:
.LBB11794:
	.loc 3 2286 0
	stw 0,8(31)
	.loc 3 2287 0
	stw 0,12(31)
.LBE11794:
.LBE11798:
	.loc 4 3168 0
	addi 11,9,3
	rlwinm 11,11,0,0,29
	slwi 10,11,2
.LBB11799:
.LBB11795:
	.loc 3 2288 0
	cmpw 7,9,11
.LBE11795:
.LBE11799:
	.loc 4 3168 0
	subfic 10,10,-32
	stwux 8,1,10
	addi 10,1,23
.LVL924:
	rlwinm 10,10,0,0,27
.LVL925:
.LBB11800:
.LBB11796:
	.loc 3 2284 0
	stw 10,20(31)
	.loc 3 2288 0
	bge- 7,.L340
	slwi 11,9,2
	li 8,0
	b .L341
.LVL926:
.L366:
	lwz 10,20(31)
.L341:
	addi 9,9,1
.LVL927:
	stwx 8,10,11
	.loc 4 3147 0
	addi 0,9,3
	.loc 3 2288 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L366
.L340:
.LVL928:
.LBE11796:
.LBE11800:
	.loc 4 3170 0 discriminator 1
	lwz 9,0(30)
.LVL929:
	cmpwi 7,9,1
	ble- 7,.L343
	lwz 0,4(30)
	.loc 4 3170 0 is_stmt 0
	li 7,1
.LVL930:
.L342:
	.loc 4 3171 0 is_stmt 1 discriminator 1
	cmpwi 7,0,1
	ble- 7,.L345
	.loc 4 3147 0
	addi 6,7,-1
.LBE11822:
	li 9,0
	li 11,1
.LVL931:
.L344:
.LBB11823:
.LBB11801:
.LBB11802:
	.loc 3 2056 0 discriminator 2
	lwz 10,12(31)
.LBE11802:
.LBE11801:
.LBB11805:
.LBB11806:
	.loc 3 2051 0 discriminator 2
	mullw 0,7,0
.LBE11806:
.LBE11805:
	.loc 4 3172 0 discriminator 2
	lwz 8,12(30)
	.loc 4 3171 0 discriminator 2
	addi 11,11,1
.LBB11807:
.LBB11803:
	.loc 3 2056 0 discriminator 2
	mullw 10,6,10
.LBE11803:
.LBE11807:
	.loc 4 3172 0 discriminator 2
	slwi 0,0,2
	add 8,8,0
.LBB11808:
.LBB11804:
	.loc 3 2056 0 discriminator 2
	lwz 0,20(31)
	slwi 10,10,2
	add 10,0,10
.LBE11804:
.LBE11808:
	.loc 4 3172 0 discriminator 2
	add 10,10,9
.LVL932:
	.loc 4 3147 0 discriminator 2
	addi 9,9,4
	.loc 4 3172 0 discriminator 2
	lwzx 0,8,9
	stw 0,0(10)
	.loc 4 3171 0 discriminator 2
	lwz 0,4(30)
	cmpw 7,0,11
	bgt+ 7,.L344
	lwz 9,0(30)
.LVL933:
.L345:
	.loc 4 3170 0
	addi 7,7,1
.LVL934:
	cmpw 7,9,7
	bgt+ 7,.L342
.LVL935:
.L343:
	.loc 4 3176 0
	fmr 1,31
.LVL936:
	addi 3,31,8
.LVL937:
.LEHB2:
	bl _ZNK6idMatX9IsPMatrixEf
.LVL938:
	cmpwi 7,3,0
	beq- 7,.L367
.LVL939:
	.loc 4 3180 0 discriminator 1
	lwz 9,0(30)
	cmpwi 7,9,1
	ble- 7,.L348
	.loc 4 3180 0 is_stmt 0
	li 6,1
.LVL940:
.L351:
	.loc 4 8102 0 is_stmt 1
	lwz 0,4(30)
	lwz 11,12(30)
.LVL941:
.LBB11809:
.LBB11810:
	.loc 3 2051 0
	mullw 8,6,0
.LBE11810:
.LBE11809:
	.loc 4 3182 0
	cmpwi 7,0,1
	.loc 4 3181 0
	lfs 0,0(11)
	slwi 0,8,2
	lfsx 12,11,0
	fdivs 12,12,0
.LVL942:
	.loc 4 3182 0
	ble- 7,.L349
	.loc 4 3147 0
	addi 5,6,-1
	li 9,0
	.loc 4 3182 0
	li 10,1
	b .L350
.LVL943:
.L365:
	mullw 8,6,0
	lwz 11,12(30)
.LVL944:
.L350:
.LBB11811:
.LBB11812:
	.loc 3 2056 0 discriminator 2
	lwz 7,12(31)
.LBE11812:
.LBE11811:
	.loc 4 3183 0 discriminator 2
	slwi 8,8,2
.LBB11816:
.LBB11813:
	.loc 3 2056 0 discriminator 2
	lwz 0,20(31)
.LBE11813:
.LBE11816:
	.loc 4 3183 0 discriminator 2
	add 8,11,8
.LBB11817:
.LBB11814:
	.loc 3 2056 0 discriminator 2
	mullw 7,5,7
.LBE11814:
.LBE11817:
	.loc 4 3182 0 discriminator 2
	addi 10,10,1
.LBB11818:
.LBB11815:
	.loc 3 2056 0 discriminator 2
	slwi 7,7,2
	add 7,0,7
.LBE11815:
.LBE11818:
	.loc 4 3183 0 discriminator 2
	add 7,7,9
	.loc 4 3147 0 discriminator 2
	addi 9,9,4
.LVL945:
	lfsx 0,11,9
	.loc 4 3183 0 discriminator 2
	lfsx 13,8,9
	.loc 4 3147 0 discriminator 2
	fneg 0,0
	.loc 4 3183 0 discriminator 2
	fmadds 0,0,12,13
	stfs 0,0(7)
	.loc 4 3182 0 discriminator 2
	lwz 0,4(30)
	cmpw 7,0,10
	bgt+ 7,.L365
	lwz 9,0(30)
.LVL946:
.L349:
	.loc 4 3180 0
	addi 6,6,1
.LVL947:
	cmpw 7,9,6
	bgt+ 7,.L351
.LVL948:
.L348:
	.loc 4 3187 0
	fmr 1,31
	addi 3,31,8
	bl _ZNK6idMatX9IsPMatrixEf
.LEHE2:
	cmpwi 7,3,0
	lwz 0,16(31)
	lwz 3,20(31)
	beq- 7,.L368
	.loc 4 3191 0
	li 30,1
.LVL949:
.L347:
.LBB11819:
.LBB11820:
.LBB11821:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L353
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,9,3
	bgt- 7,.L354
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L353
.L354:
	cmpwi 7,0,-1
	beq- 7,.L353
.LEHB3:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.LEHE3:
.LBE11821:
.LBE11820:
.LBE11819:
.LBE11823:
	.loc 4 3192 0
	addi 11,31,40
	lwz 0,4(11)
	mr 3,30
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI106:
	.cfi_def_cfa 11, 0
	mtlr 0
	lwz 30,-16(11)
	lfd 31,-8(11)
.LVL950:
	mr 1,11
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI107:
	.cfi_def_cfa_register 1
.LVL951:
	blr
.LVL952:
.L358:
.LCFI108:
	.cfi_restore_state
.LBB11824:
	.loc 4 3161 0
	li 30,0
.LVL953:
.L353:
.LBE11824:
	.loc 4 3192 0
	addi 11,31,40
	mr 3,30
	lwz 0,4(11)
	lwz 30,-16(11)
	mtlr 0
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI109:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL954:
	mr 1,11
.LCFI110:
	.cfi_def_cfa_register 1
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL955:
.L359:
.LCFI111:
	.cfi_restore_state
	addi 11,31,40
.LBB11825:
	.loc 4 3165 0
	li 30,1
.LBE11825:
	.loc 4 3192 0
	lwz 0,4(11)
	mr 3,30
.LVL956:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI112:
	.cfi_def_cfa 11, 0
	mtlr 0
	lwz 30,-16(11)
	lfd 31,-8(11)
	mr 1,11
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI113:
	.cfi_def_cfa_register 1
	blr
.LVL957:
.L367:
.LCFI114:
	.cfi_restore_state
.LBB11826:
	.loc 4 3176 0
	lwz 0,16(31)
	.loc 4 3177 0
	li 30,0
.LVL958:
	.loc 4 3176 0
	lwz 3,20(31)
	b .L347
.LVL959:
.L368:
	.loc 4 3188 0
	li 30,0
.LVL960:
	b .L347
.LVL961:
.L361:
	mr 30,3
.LVL962:
	.loc 4 3191 0
	lwz 4,20(31)
	lwz 3,16(31)
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,30
.LEHB4:
	bl _Unwind_Resume
.LEHE4:
.LBE11826:
	.cfi_endproc
.LFE2578:
	.section	.gcc_except_table
.LLSDA2578:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2578-.LLSDACSB2578
.LLSDACSB2578:
	.uleb128 .LEHB2-.LFB2578
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L361-.LFB2578
	.uleb128 0
	.uleb128 .LEHB3-.LFB2578
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2578
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2578:
	.section	".text"
	.size	_ZNK6idMatX9IsPMatrixEf, .-_ZNK6idMatX9IsPMatrixEf
	.align 2
	.globl _ZNK6idMatX9IsZMatrixEf
	.type	_ZNK6idMatX9IsZMatrixEf, @function
_ZNK6idMatX9IsZMatrixEf:
.LFB2579:
	.loc 4 3202 0
	.cfi_startproc
.LVL963:
.LBB11827:
	.loc 4 3205 0
	lwz 9,4(3)
	.loc 4 8102 0
	lwz 0,0(3)
	.loc 4 3205 0
	cmpw 7,0,9
	.loc 4 3206 0
	li 9,0
	.loc 4 3205 0
	beq- 7,.L383
.L370:
.LBE11827:
	.loc 4 3217 0
	mr 3,9
.LVL964:
	blr
.LVL965:
.L383:
.LBB11828:
	.loc 4 3209 0 discriminator 1
	cmpwi 7,0,0
	.loc 4 3216 0 discriminator 1
	li 9,1
	.loc 4 3209 0 discriminator 1
	ble- 7,.L370
	.loc 4 3202 0
	lwz 8,12(3)
	slwi 7,0,2
.LBE11828:
	li 10,0
.LBB11829:
	addi 8,8,-4
.LVL966:
.L371:
.LBE11829:
	.loc 4 3202 0 is_stmt 0 discriminator 1
	mtctr 0
	mr 11,8
	li 9,0
.LVL967:
.L374:
.LBB11830:
	.loc 4 3211 0 is_stmt 1
	lfsu 0,4(11)
	cmpw 6,10,9
	fcmpu 7,0,1
	bng- 7,.L372
	.loc 4 3211 0 is_stmt 0 discriminator 1
	beq- 6,.L372
	.loc 4 3212 0 is_stmt 1
	li 9,0
.LBE11830:
	.loc 4 3217 0
	mr 3,9
.LVL968:
	blr
.LVL969:
.L372:
.LBB11831:
	.loc 4 3210 0
	addi 9,9,1
.LVL970:
	bdnz .L374
	.loc 4 3209 0
	addi 10,10,1
.LVL971:
	add 8,8,7
	cmpw 7,10,9
	bne+ 7,.L371
	.loc 4 3216 0
	li 9,1
.LVL972:
	b .L370
.LBE11831:
	.cfi_endproc
.LFE2579:
	.size	_ZNK6idMatX9IsZMatrixEf, .-_ZNK6idMatX9IsZMatrixEf
	.align 2
	.globl _ZNK6idMatX18IsPositiveDefiniteEf
	.type	_ZNK6idMatX18IsPositiveDefiniteEf, @function
_ZNK6idMatX18IsPositiveDefiniteEf:
.LFB2580:
	.loc 4 3227 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2580
.LVL973:
	mflr 0
	stwu 1,-48(1)
.LCFI115:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stfd 31,40(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 31,36(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI116:
	.cfi_def_cfa_register 31
	stw 0,52(1)
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
.LBB11862:
	.loc 4 8102 0
	lwz 9,0(3)
	.loc 4 3233 0
	lwz 0,4(3)
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 65, 4
	.loc 4 3234 0
	li 3,0
.LVL974:
	.loc 4 3233 0
	cmpw 7,9,0
	beq- 7,.L416
.LVL975:
.L385:
.LBE11862:
	.loc 4 3268 0
	addi 11,31,48
	lwz 0,4(11)
	lwz 24,-40(11)
	mtlr 0
	lwz 25,-36(11)
	lwz 26,-32(11)
	lwz 27,-28(11)
	lwz 28,-24(11)
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL976:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI117:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL977:
	mr 1,11
.LCFI118:
	.cfi_def_cfa_register 1
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
.LVL978:
.L416:
.LCFI119:
	.cfi_restore_state
.LBB11873:
	.loc 4 3238 0
	mullw 9,9,9
	lwz 10,0(1)
	addi 11,9,3
	rlwinm 11,11,0,0,29
	slwi 0,11,2
.LBB11863:
.LBB11864:
	.loc 3 2288 0
	cmpw 7,9,11
.LBE11864:
.LBE11863:
	.loc 4 3238 0
	subfic 0,0,-32
	stwux 10,1,0
	addi 29,1,23
	rlwinm 29,29,0,0,27
.LVL979:
.LBB11866:
.LBB11865:
	.loc 3 2288 0
	bge- 7,.L386
	.loc 4 3227 0
	slwi 11,9,2
	.loc 3 2288 0
	li 10,0
	.loc 4 3227 0
	addi 11,11,-4
	.loc 3 2288 0
	add 11,11,29
.L387:
	addi 9,9,1
.LVL980:
	stwu 10,4(11)
	.loc 4 3227 0
	addi 0,9,3
	.loc 3 2288 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L387
.L386:
.LVL981:
.LBE11865:
.LBE11866:
.LBB11867:
.LBB11868:
	.loc 3 2060 0
	lwz 28,4(30)
.LVL982:
.LBB11869:
.LBB11870:
	.loc 3 2249 0
	lwz 6,0(30)
	mullw 6,28,6
.LVL983:
	.loc 3 2259 0
	addi 0,6,3
	rlwinm 0,0,0,0,29
	cmpw 7,0,6
	ble- 7,.L388
	.loc 4 3227 0
	slwi 9,6,2
.LVL984:
	.loc 3 2259 0
	li 11,0
	.loc 4 3227 0
	addi 9,9,-4
	.loc 3 2259 0
	add 9,9,29
.LVL985:
.L389:
	addi 6,6,1
.LVL986:
	stwu 11,4(9)
	.loc 4 3227 0
	addi 0,6,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	cmpw 7,6,0
	blt+ 7,.L389
	lwz 6,4(30)
.LVL987:
	lwz 0,0(30)
	mullw 6,6,0
.L388:
.LBE11870:
.LBE11869:
	.loc 3 2062 0
	lis 9,SIMDProcessor@ha
	mr 4,29
	lwz 3,SIMDProcessor@l(9)
	lwz 5,12(30)
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
.LEHB5:
	bctrl
.LEHE5:
.LVL988:
	.loc 3 2066 0
	li 0,0
	lis 9,_ZN6idMatX9tempIndexE@ha
	stw 0,_ZN6idMatX9tempIndexE@l(9)
.LVL989:
	slwi 4,28,2
.LBE11868:
.LBE11867:
	.loc 4 3242 0
	lwz 10,0(30)
	cmpwi 7,10,0
	ble- 7,.L390
	lwz 0,4(30)
	.loc 4 3227 0
	addi 5,29,-4
.LBE11873:
	li 6,0
.LVL990:
.L391:
.LBB11874:
	.loc 4 3243 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L393
	.loc 4 3227 0
	slwi 7,6,2
.LBE11874:
	mr 11,5
	li 9,0
.LVL991:
.L392:
.LBB11875:
.LBB11871:
.LBB11872:
	.loc 3 2051 0 discriminator 2
	mullw 10,9,0
.LBE11872:
.LBE11871:
	.loc 4 3244 0 discriminator 2
	lwz 8,12(30)
	.loc 4 3243 0 discriminator 2
	lwz 0,4(30)
	addi 9,9,1
.LVL992:
	.loc 4 3244 0 discriminator 2
	lfsu 13,4(11)
	.loc 4 3243 0 discriminator 2
	cmpw 7,0,9
	.loc 4 3244 0 discriminator 2
	slwi 10,10,2
	add 10,8,10
	lfsx 0,10,7
	fadds 0,13,0
	stfs 0,0(11)
	.loc 4 3243 0 discriminator 2
	bgt+ 7,.L392
	lwz 10,0(30)
.LVL993:
.L393:
	.loc 4 3242 0
	addi 6,6,1
.LVL994:
	add 5,5,4
	cmpw 7,10,6
	bgt+ 7,.L391
.LVL995:
.L390:
	.loc 4 3227 0 discriminator 1
	addi 5,28,1
	mulli 25,28,-4
	slwi 5,5,2
	add 27,29,4
.LBE11875:
	li 26,0
	li 12,0
	li 0,0
.LBB11876:
	.loc 4 3257 0 discriminator 1
	lis 24,.LC1@ha
	.loc 4 3260 0 discriminator 1
	li 28,0
.LVL996:
.L400:
	.loc 4 3249 0 discriminator 1
	cmpw 7,0,10
	bge- 7,.L407
.LVL997:
	.loc 4 3251 0 discriminator 1
	lwz 11,4(30)
	.loc 4 3252 0 discriminator 1
	lfsx 13,27,25
	.loc 4 3251 0 discriminator 1
	cmpw 7,0,11
	bge- 7,.L402
.LVL998:
	.loc 4 3252 0
	fcmpu 7,13,31
	cror 30,28,30
	beq- 7,.L408
.LBE11876:
	.loc 4 3227 0
	subf 8,0,11
.LBB11877:
	addi 9,27,4
.LBE11877:
	mtctr 8
.LVL999:
.L403:
.LBB11878:
	.loc 4 3251 0
	bdz .L402
	.loc 4 3252 0
	lfs 0,0(9)
	add 9,9,5
	fcmpu 7,0,31
	cror 30,28,30
	bne+ 7,.L403
.L408:
.LBE11878:
	.loc 4 3268 0
	addi 11,31,48
.LBB11879:
	.loc 4 3253 0
	li 3,0
.LBE11879:
	.loc 4 3268 0
	lwz 0,4(11)
.LVL1000:
	lwz 24,-40(11)
	mtlr 0
	lwz 25,-36(11)
	lwz 26,-32(11)
	lwz 27,-28(11)
	lwz 28,-24(11)
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL1001:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI120:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL1002:
	mr 1,11
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI121:
	.cfi_def_cfa_register 1
	blr
.LVL1003:
.L402:
.LCFI122:
	.cfi_restore_state
.LBB11880:
	.loc 4 3258 0
	addic 0,0,1
.LVL1004:
	.loc 4 3257 0
	lfs 11,.LC1@l(24)
	.loc 4 3258 0
	cmpw 7,0,11
	.loc 4 3257 0
	fdivs 11,11,13
.LVL1005:
	.loc 4 3258 0
	bge- 7,.L396
.LVL1006:
.LBE11880:
	.loc 4 3227 0
	mr 7,27
	mr 6,0
	add 3,12,26
.LVL1007:
.L399:
.LBB11881:
	.loc 4 3259 0
	lfsx 12,3,7
	.loc 4 3260 0
	stwx 28,3,7
	.loc 4 3259 0
	fmuls 12,11,12
.LVL1008:
	.loc 4 3261 0
	lwz 10,0(30)
	cmpw 7,0,10
	bge- 7,.L397
.LVL1009:
	.loc 4 3227 0
	add 8,29,12
.LBE11881:
	mr 11,7
	mr 9,0
.LVL1010:
.L398:
.LBB11882:
	.loc 4 3227 0 is_stmt 0 discriminator 2
	lfsu 0,4(8)
	.loc 4 3261 0 is_stmt 1 discriminator 2
	addi 9,9,1
.LVL1011:
	.loc 4 3262 0 discriminator 2
	lfsu 13,4(11)
	.loc 4 3227 0 discriminator 2
	fneg 0,0
	.loc 4 3262 0 discriminator 2
	fmadds 0,0,12,13
	stfs 0,0(11)
	.loc 4 3261 0 discriminator 2
	lwz 10,0(30)
	cmpw 7,10,9
	bgt+ 7,.L398
.LVL1012:
.L397:
	.loc 4 3258 0
	lwz 9,4(30)
	addi 6,6,1
.LVL1013:
	add 7,7,4
	cmpw 7,9,6
	bgt+ 7,.L399
.LVL1014:
.L396:
	addi 12,12,4
	add 29,29,4
	add 27,27,5
	addi 26,26,-4
	b .L400
.LVL1015:
.L407:
	.loc 4 3267 0
	li 3,1
	b .L385
.LVL1016:
.L409:
	mr 30,3
.LVL1017:
	mr 4,29
	li 3,-1
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,30
.LEHB6:
	bl _Unwind_Resume
.LEHE6:
.LBE11882:
	.cfi_endproc
.LFE2580:
	.section	.gcc_except_table
.LLSDA2580:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2580-.LLSDACSB2580
.LLSDACSB2580:
	.uleb128 .LEHB5-.LFB2580
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L409-.LFB2580
	.uleb128 0
	.uleb128 .LEHB6-.LFB2580
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2580:
	.section	".text"
	.size	_ZNK6idMatX18IsPositiveDefiniteEf, .-_ZNK6idMatX18IsPositiveDefiniteEf
	.align 2
	.globl _ZNK6idMatX22IsPositiveSemiDefiniteEf
	.type	_ZNK6idMatX22IsPositiveSemiDefiniteEf, @function
_ZNK6idMatX22IsPositiveSemiDefiniteEf:
.LFB2582:
	.loc 4 3301 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2582
.LVL1018:
	mflr 0
	stwu 1,-72(1)
.LCFI123:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stfd 31,64(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 30,56(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 31,60(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI124:
	.cfi_def_cfa_register 31
	stw 0,76(1)
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
.LBB11925:
	.loc 4 8102 0
	lwz 9,0(3)
	.loc 4 3307 0
	lwz 0,4(3)
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
	.cfi_offset 65, 4
	.loc 4 3308 0
	li 3,0
.LVL1019:
	.loc 4 3307 0
	cmpw 7,9,0
	beq- 7,.L458
.LVL1020:
.L418:
.LBE11925:
	.loc 4 3357 0
	addi 11,31,72
	lwz 0,4(11)
	lwz 20,-56(11)
	mtlr 0
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
.LVL1021:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI125:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL1022:
	mr 1,11
.LCFI126:
	.cfi_def_cfa_register 1
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
	blr
.LVL1023:
.L458:
.LCFI127:
	.cfi_restore_state
.LBB11946:
	.loc 4 3312 0
	mullw 9,9,9
	lwz 10,0(1)
	addi 11,9,3
	rlwinm 11,11,0,0,29
	slwi 0,11,2
.LBB11926:
.LBB11927:
	.loc 3 2288 0
	cmpw 7,9,11
.LBE11927:
.LBE11926:
	.loc 4 3312 0
	subfic 0,0,-32
	stwux 10,1,0
	addi 29,1,23
	rlwinm 29,29,0,0,27
.LVL1024:
.LBB11929:
.LBB11928:
	.loc 3 2288 0
	bge- 7,.L419
	.loc 4 3301 0
	slwi 11,9,2
	.loc 3 2288 0
	li 10,0
	.loc 4 3301 0
	addi 11,11,-4
	.loc 3 2288 0
	add 11,11,29
.L420:
	addi 9,9,1
.LVL1025:
	stwu 10,4(11)
	.loc 4 3301 0
	addi 0,9,3
	.loc 3 2288 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L420
.L419:
.LVL1026:
.LBE11928:
.LBE11929:
.LBB11930:
.LBB11931:
	.loc 3 2060 0
	lwz 28,4(30)
.LVL1027:
.LBB11932:
.LBB11933:
	.loc 3 2249 0
	lwz 6,0(30)
	mullw 6,28,6
.LVL1028:
	.loc 3 2259 0
	addi 0,6,3
	rlwinm 0,0,0,0,29
	cmpw 7,0,6
	ble- 7,.L421
	.loc 4 3301 0
	slwi 9,6,2
.LVL1029:
	.loc 3 2259 0
	li 11,0
	.loc 4 3301 0
	addi 9,9,-4
	.loc 3 2259 0
	add 9,9,29
.LVL1030:
.L422:
	addi 6,6,1
.LVL1031:
	stwu 11,4(9)
	.loc 4 3301 0
	addi 0,6,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	cmpw 7,6,0
	blt+ 7,.L422
	lwz 6,4(30)
.LVL1032:
	lwz 0,0(30)
	mullw 6,6,0
.L421:
.LBE11933:
.LBE11932:
	.loc 3 2062 0
	lis 9,SIMDProcessor@ha
	mr 4,29
	lwz 3,SIMDProcessor@l(9)
	lwz 5,12(30)
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
.LEHB7:
	bctrl
.LEHE7:
.LVL1033:
	.loc 3 2066 0
	li 0,0
	lis 9,_ZN6idMatX9tempIndexE@ha
	stw 0,_ZN6idMatX9tempIndexE@l(9)
.LVL1034:
.LBE11931:
.LBE11930:
	.loc 4 3356 0
	li 3,1
	.loc 4 3316 0
	lwz 11,0(30)
	cmpwi 7,11,0
	ble- 7,.L418
	lwz 0,4(30)
	.loc 4 3301 0
	slwi 4,28,2
	addi 5,29,-4
.LBE11946:
	li 6,0
.LVL1035:
.L424:
.LBB11947:
	.loc 4 3317 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L427
	.loc 4 3301 0
	slwi 7,6,2
.LBE11947:
	mr 11,5
	li 9,0
.LVL1036:
.L425:
.LBB11948:
.LBB11934:
.LBB11935:
	.loc 3 2051 0 discriminator 2
	mullw 10,9,0
.LBE11935:
.LBE11934:
	.loc 4 3318 0 discriminator 2
	lwz 8,12(30)
	.loc 4 3317 0 discriminator 2
	lwz 0,4(30)
	addi 9,9,1
.LVL1037:
	.loc 4 3318 0 discriminator 2
	lfsu 13,4(11)
	.loc 4 3317 0 discriminator 2
	cmpw 7,0,9
	.loc 4 3318 0 discriminator 2
	slwi 10,10,2
	add 10,8,10
	lfsx 0,10,7
	fadds 0,13,0
	stfs 0,0(11)
	.loc 4 3317 0 discriminator 2
	bgt+ 7,.L425
	lwz 11,0(30)
.LVL1038:
.L427:
	.loc 4 3316 0
	addi 6,6,1
.LVL1039:
	add 5,5,4
	cmpw 7,11,6
	bgt+ 7,.L424
.LVL1040:
	.loc 4 3323 0 discriminator 1
	cmpwi 7,11,0
	.loc 4 3356 0 discriminator 1
	li 3,1
	.loc 4 3323 0 discriminator 1
	ble- 7,.L418
	.loc 4 3326 0
	fneg 12,31
	.loc 4 3301 0
	addi 28,28,1
.LVL1041:
	slwi 12,28,2
	mr 10,29
	mr 28,29
.LVL1042:
	li 25,0
	li 26,0
	li 20,0
	addi 23,4,4
	add 27,29,4
	.loc 4 3346 0
	lis 21,.LC1@ha
	.loc 4 3349 0
	li 22,0
.LVL1043:
.L428:
	.loc 4 3325 0 discriminator 1
	cmpw 7,0,20
	add 24,10,4
	ble- 7,.L437
.LVL1044:
	.loc 4 3326 0
	lfs 0,0(28)
	fcmpu 7,0,12
	blt- 7,.L448
	.loc 4 3301 0
	add 24,4,10
	.loc 4 3332 0
	cmpwi 6,11,0
	.loc 4 3301 0
	subfic 3,26,4
	mr 5,24
	add 6,23,28
	.loc 4 3326 0
	mr 9,25
	.loc 4 3301 0
	mr 7,20
.LVL1045:
.L438:
	.loc 4 3329 0
	fcmpu 7,0,31
	bgt- 7,.L429
.LVL1046:
	.loc 4 3332 0 discriminator 1
	ble- 6,.L429
.LVL1047:
.LBB11936:
.LBB11937:
	.loc 5 781 0
	lwzx 8,29,9
	rlwinm 8,8,0,1,31
.LBE11937:
.LBE11936:
	.loc 4 3333 0
	stw 8,8(31)
	lfs 0,8(31)
	fcmpu 7,31,0
	blt- 7,.L448
	.loc 4 3301 0
	addi 10,10,-4
	add 9,27,9
.LVL1048:
	mtctr 11
	b .L430
.LVL1049:
.L459:
	.loc 4 3332 0
	bdz .L429
.LVL1050:
.LBB11940:
.LBB11938:
	.loc 5 781 0
	lwz 8,0(9)
.LBE11938:
.LBE11940:
	.loc 4 3333 0
	add 9,9,4
.LVL1051:
.LBB11941:
.LBB11939:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LVL1052:
.LBE11939:
.LBE11941:
	.loc 4 3333 0
	stw 8,8(31)
	lfs 0,8(31)
	fcmpu 7,31,0
	blt- 7,.L448
.LVL1053:
.L430:
.LBB11942:
.LBB11943:
	.loc 5 781 0
	lwzu 8,4(10)
.LVL1054:
	rlwinm 8,8,0,1,31
.LBE11943:
.LBE11942:
	.loc 4 3336 0
	stw 8,8(31)
	lfs 0,8(31)
	fcmpu 7,31,0
	bnl+ 7,.L459
.LVL1055:
.L448:
	.loc 4 3327 0
	li 3,0
.LVL1056:
	b .L418
.LVL1057:
.L429:
	.loc 4 3325 0
	addi 7,7,1
.LVL1058:
	cmpw 7,7,0
	beq- 7,.L437
.LVL1059:
	.loc 4 3326 0
	lfs 0,0(6)
.LBB11944:
.LBB11945:
	.loc 3 2056 0
	mr 10,5
.LBE11945:
.LBE11944:
	.loc 4 3326 0
	addi 8,3,4
	add 5,5,4
	fcmpu 7,0,12
	add 6,6,12
	blt- 7,.L448
	mr 9,3
	mr 3,8
	b .L438
.LVL1060:
.L437:
	.loc 4 3342 0
	lfs 0,0(28)
	addi 20,20,1
.LVL1061:
	fcmpu 7,0,31
	cror 30,28,30
	beq- 7,.L433
	.loc 4 3347 0
	cmpw 7,0,20
	.loc 4 3346 0
	lfs 10,.LC1@l(21)
	fdivs 10,10,0
.LVL1062:
	.loc 4 3347 0
	ble- 7,.L433
	.loc 4 3301 0
	add 7,28,4
	mr 6,20
	add 5,26,25
.LVL1063:
.L436:
	.loc 4 3350 0
	lwz 11,0(30)
	.loc 4 3348 0
	lfsx 11,5,7
	.loc 4 3350 0
	cmpw 7,11,20
	.loc 4 3349 0
	stwx 22,5,7
	.loc 4 3348 0
	fmuls 11,10,11
.LVL1064:
	.loc 4 3350 0
	ble- 7,.L434
.LVL1065:
	mr 8,28
	mr 10,7
	mr 9,20
.LVL1066:
.L435:
	.loc 4 3301 0 discriminator 2
	lfsu 13,4(8)
	.loc 4 3350 0 discriminator 2
	addi 9,9,1
.LVL1067:
	lwz 11,0(30)
	.loc 4 3301 0 discriminator 2
	fneg 13,13
	.loc 4 3351 0 discriminator 2
	lfsu 0,4(10)
	.loc 4 3350 0 discriminator 2
	cmpw 7,11,9
	.loc 4 3351 0 discriminator 2
	fmadds 0,13,11,0
	stfs 0,0(10)
	.loc 4 3350 0 discriminator 2
	bgt+ 7,.L435
.LVL1068:
.L434:
	.loc 4 3347 0
	lwz 0,4(30)
	addi 6,6,1
.LVL1069:
	add 7,7,4
	cmpw 7,0,6
	bgt+ 7,.L436
.LVL1070:
.L433:
	.loc 4 3323 0
	cmpw 7,11,20
	add 28,28,12
	addi 26,26,-4
	addi 25,25,4
	mr 10,24
	bgt+ 7,.L428
	.loc 4 3356 0
	li 3,1
	b .L418
.LVL1071:
.L449:
	mr 30,3
.LVL1072:
	mr 4,29
	li 3,-1
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,30
.LEHB8:
	bl _Unwind_Resume
.LEHE8:
.LBE11948:
	.cfi_endproc
.LFE2582:
	.section	.gcc_except_table
.LLSDA2582:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2582-.LLSDACSB2582
.LLSDACSB2582:
	.uleb128 .LEHB7-.LFB2582
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L449-.LFB2582
	.uleb128 0
	.uleb128 .LEHB8-.LFB2582
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2582:
	.section	".text"
	.size	_ZNK6idMatX22IsPositiveSemiDefiniteEf, .-_ZNK6idMatX22IsPositiveSemiDefiniteEf
	.align 2
	.globl _ZNK6idMatX31IsSymmetricPositiveSemiDefiniteEf
	.type	_ZNK6idMatX31IsSymmetricPositiveSemiDefiniteEf, @function
_ZNK6idMatX31IsSymmetricPositiveSemiDefiniteEf:
.LFB2583:
	.loc 4 3366 0
	.cfi_startproc
.LVL1073:
	stwu 1,-16(1)
.LCFI128:
	.cfi_def_cfa_offset 16
.LBB11959:
.LBB11960:
	.loc 3 2514 0
	lwz 8,0(3)
	lwz 0,4(3)
.LVL1074:
	cmpw 7,8,0
	beq- 7,.L470
.L461:
.LBE11960:
.LBE11959:
	.loc 4 3374 0
	li 3,0
.LVL1075:
	addi 1,1,16
	.cfi_remember_state
.LCFI129:
	.cfi_def_cfa_offset 0
	blr
.LVL1076:
.L470:
.LCFI130:
	.cfi_restore_state
.LBB11976:
.LBB11961:
.LBB11962:
	.loc 3 2517 0
	cmpwi 7,8,0
	ble- 7,.L462
	.loc 4 3366 0
	lwz 7,12(3)
	slwi 10,8,2
.LBE11962:
.LBE11961:
.LBE11976:
	li 5,0
.LBB11977:
.LBB11973:
.LBB11970:
	addi 6,7,-4
.LVL1077:
.L463:
.LBB11963:
	.loc 3 2519 0
	lfs 13,0(7)
	lfsu 0,4(6)
.LVL1078:
	fsubs 0,13,0
	stfs 0,8(1)
	lwz 0,8(1)
.LBB11964:
.LBB11965:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE11965:
.LBE11964:
	.loc 3 2519 0
	stw 0,8(1)
	lfs 0,8(1)
	fcmpu 7,1,0
	blt- 7,.L461
.LBE11963:
.LBE11970:
.LBE11973:
.LBE11977:
	.loc 4 3366 0
	mtctr 8
.LVL1079:
.LBB11978:
.LBB11974:
.LBB11971:
.LBB11968:
	add 9,6,10
.LBE11968:
.LBE11971:
.LBE11974:
.LBE11978:
	mr 11,7
.LBB11979:
.LBB11975:
.LBB11972:
.LBB11969:
	.loc 3 2518 0
	bdz .L471
.LVL1080:
.L464:
	.loc 3 2519 0
	lfs 0,0(9)
	add 9,9,10
.LVL1081:
	lfsu 13,4(11)
.LVL1082:
	fsubs 0,13,0
.LVL1083:
	stfs 0,8(1)
	lwz 0,8(1)
.LBB11967:
.LBB11966:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE11966:
.LBE11967:
	.loc 3 2519 0
	stw 0,8(1)
	lfs 0,8(1)
	fcmpu 7,1,0
	blt- 7,.L461
	.loc 3 2518 0
	bdnz .L464
.L471:
.LBE11969:
	.loc 3 2517 0
	addi 5,5,1
.LVL1084:
	add 7,7,10
	cmpw 7,5,8
	bne+ 7,.L463
.LVL1085:
.L462:
.LBE11972:
.LBE11975:
.LBE11979:
	.loc 4 3374 0
	addi 1,1,16
.LCFI131:
	.cfi_def_cfa_offset 0
	.loc 4 3373 0
	b _ZNK6idMatX22IsPositiveSemiDefiniteEf
.LVL1086:
.LVL1087:
.LVL1088:
.LVL1089:
	.cfi_endproc
.LFE2583:
	.size	_ZNK6idMatX31IsSymmetricPositiveSemiDefiniteEf, .-_ZNK6idMatX31IsSymmetricPositiveSemiDefiniteEf
	.align 2
	.globl _ZN6idMatX22LowerTriangularInverseEv
	.type	_ZN6idMatX22LowerTriangularInverseEv, @function
_ZN6idMatX22LowerTriangularInverseEv:
.LFB2584:
	.loc 4 3383 0
	.cfi_startproc
.LVL1090:
	stwu 1,-16(1)
.LCFI132:
	.cfi_def_cfa_offset 16
.LBB11980:
	.loc 4 3402 0
	li 0,1
.LBE11980:
	.loc 4 3383 0
	stw 30,8(1)
	stw 31,12(1)
.LBB11989:
	.loc 4 3387 0
	lwz 9,0(3)
	cmpwi 7,9,0
	ble- 7,.L473
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 4 8102 0
	lwz 9,12(3)
.LVL1091:
	.loc 4 3389 0
	lis 31,.LC11@ha
	lfd 13,.LC11@l(31)
	.loc 4 3390 0
	li 0,0
	.loc 4 3388 0
	lfs 0,0(9)
.LVL1092:
	.loc 4 3389 0
	fcmpu 7,0,13
	beq- 7,.L473
.LVL1093:
	.loc 4 3392 0
	lis 30,.LC1@ha
	.loc 4 3387 0
	li 7,0
	.loc 4 3392 0
	lfs 13,.LC1@l(30)
	fdiv 0,13,0
.LVL1094:
	frsp 0,0
.LVL1095:
	stfs 0,0(9)
.LVL1096:
.L491:
	.loc 4 3387 0
	lwz 0,0(3)
	addi 7,7,1
.LVL1097:
	cmpw 7,0,7
	ble- 7,.L493
.LVL1098:
.LBB11981:
.LBB11982:
	.loc 3 2056 0
	lwz 0,4(3)
.LBE11982:
.LBE11981:
	.loc 4 3383 0
	slwi 9,7,2
.LBB11986:
.LBB11983:
	.loc 3 2056 0
	lwz 11,12(3)
.LBE11983:
.LBE11986:
	.loc 4 3389 0
	la 12,.LC11@l(31)
.LBB11987:
.LBB11984:
	.loc 3 2056 0
	mullw 0,7,0
.LBE11984:
.LBE11987:
	.loc 4 3389 0
	lfd 13,.LC11@l(31)
.LBB11988:
.LBB11985:
	.loc 3 2056 0
	slwi 0,0,2
	add 11,11,0
.LBE11985:
.LBE11988:
	.loc 4 3388 0
	lfsx 0,11,9
.LVL1099:
	.loc 4 3389 0
	fcmpu 7,0,13
	beq- 7,.L484
.LVL1100:
	.loc 4 3392 0
	lfs 11,.LC1@l(30)
	.loc 4 3394 0
	cmpwi 7,7,0
	li 10,0
	li 8,0
	.loc 4 3392 0
	fdiv 11,11,0
.LVL1101:
	frsp 0,11
	stfsx 0,11,9
.LVL1102:
	.loc 4 3394 0
	ble- 7,.L491
.LVL1103:
	.loc 4 3396 0 discriminator 1
	cmpw 7,8,7
	bge- 7,.L494
.LVL1104:
.L478:
	.loc 4 3396 0 is_stmt 0
	lwz 6,4(3)
	.loc 4 3383 0 is_stmt 1
	addi 11,10,-4
	.loc 4 3396 0
	lwz 4,12(3)
	mullw 5,7,6
	.loc 4 3383 0
	slwi 0,6,2
.LBE11989:
	lfd 0,0(12)
.LBB11990:
	mullw 9,8,6
	.loc 4 3396 0
	slwi 5,5,2
.LBE11990:
	.loc 4 3383 0
	subf 6,8,7
.LBB11991:
	.loc 4 3396 0
	add 5,4,5
.LBE11991:
	.loc 4 3383 0
	mtctr 6
.LBB11992:
	add 11,5,11
	slwi 9,9,2
	add 9,10,9
	add 9,4,9
.LVL1105:
.L477:
	.loc 4 3397 0 discriminator 2
	lfs 13,0(9)
	.loc 4 3396 0 discriminator 2
	add 9,9,0
	.loc 4 3397 0 discriminator 2
	lfsu 12,4(11)
	fmuls 13,12,13
	fsub 0,0,13
.LVL1106:
	.loc 4 3396 0 discriminator 2
	bdnz .L477
.LVL1107:
	.loc 4 3399 0
	fmul 0,0,11
.LVL1108:
	.loc 4 3394 0
	addi 8,8,1
.LVL1109:
	cmpw 7,8,7
	.loc 4 3399 0
	frsp 0,0
	stfsx 0,5,10
	.loc 4 3394 0
	addi 10,10,4
	bge- 7,.L491
.LVL1110:
.L495:
	.loc 4 3396 0
	cmpw 7,8,7
	blt+ 7,.L478
.LVL1111:
.L494:
	lfd 0,0(12)
	.loc 4 3394 0
	addi 8,8,1
.LVL1112:
	.loc 4 3396 0
	lwz 0,4(3)
	.loc 4 3394 0
	cmpw 7,8,7
	.loc 4 3399 0
	fmul 0,0,11
	.loc 4 3396 0
	lwz 5,12(3)
	mullw 0,7,0
	.loc 4 3399 0
	frsp 0,0
	.loc 4 3396 0
	slwi 0,0,2
	add 5,5,0
.LVL1113:
	.loc 4 3399 0
	stfsx 0,5,10
	.loc 4 3394 0
	addi 10,10,4
	blt+ 7,.L495
	b .L491
.LVL1114:
.L484:
	.loc 4 3390 0
	li 0,0
.LVL1115:
.L473:
.LBE11992:
	.loc 4 3403 0
	lwz 30,8(1)
	mr 3,0
.LVL1116:
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI133:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL1117:
.L493:
.LCFI134:
	.cfi_restore_state
.LBB11993:
	.loc 4 3402 0
	li 0,1
.LBE11993:
	.loc 4 3403 0
	lwz 30,8(1)
	lwz 31,12(1)
	mr 3,0
.LVL1118:
	addi 1,1,16
	.cfi_restore 30
	.cfi_restore 31
.LCFI135:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2584:
	.size	_ZN6idMatX22LowerTriangularInverseEv, .-_ZN6idMatX22LowerTriangularInverseEv
	.align 2
	.globl _ZN6idMatX22UpperTriangularInverseEv
	.type	_ZN6idMatX22UpperTriangularInverseEv, @function
_ZN6idMatX22UpperTriangularInverseEv:
.LFB2585:
	.loc 4 3412 0
	.cfi_startproc
.LVL1119:
	stwu 1,-16(1)
.LCFI136:
	.cfi_def_cfa_offset 16
	mr 4,3
	stw 31,12(1)
.LBB11994:
	.loc 4 3416 0
	lwz 11,0(3)
.LVL1120:
	.loc 4 3431 0
	li 3,1
.LVL1121:
	.loc 4 3416 0
	addic. 10,11,-1
	blt- 0,.L497
	.cfi_offset 31, -4
.LVL1122:
.LBB11995:
.LBB11996:
	.loc 3 2056 0
	lwz 0,4(4)
.LBE11996:
.LBE11995:
	.loc 4 3417 0
	slwi 9,10,2
.LBB12002:
.LBB11997:
	.loc 3 2056 0
	lwz 8,12(4)
.LBE11997:
.LBE12002:
	.loc 4 3418 0
	lis 12,.LC11@ha
.LBB12003:
.LBB11998:
	.loc 3 2056 0
	mullw 0,10,0
.LBE11998:
.LBE12003:
	.loc 4 3418 0
	lfd 0,.LC11@l(12)
	.loc 4 3419 0
	li 3,0
.LBB12004:
.LBB11999:
	.loc 3 2056 0
	slwi 0,0,2
	add 8,8,0
.LBE11999:
.LBE12004:
	.loc 4 3417 0
	lfsx 11,8,9
.LVL1123:
	add 9,8,9
	.loc 4 3418 0
	fcmpu 7,11,0
	beq- 7,.L497
	.loc 4 3412 0
	addi 11,11,-2
	mr 31,12
	.loc 4 3418 0
	slwi 3,11,2
	.loc 4 3421 0
	lis 11,.LC1@ha
	lfs 9,.LC1@l(11)
.LVL1124:
.L498:
	fdiv 11,9,11
.LVL1125:
	frsp 0,11
	stfs 0,0(9)
	.loc 4 3423 0
	lwz 11,0(4)
	addi 8,11,-1
.LVL1126:
	cmpw 7,8,10
	ble- 7,.L499
.LBE11994:
	.loc 4 3412 0
	lfd 10,.LC11@l(31)
.LBB12007:
	.loc 4 3423 0
	slwi 11,11,2
.L500:
.LVL1127:
	.loc 4 3423 0 is_stmt 0 discriminator 1
	lwz 0,4(4)
	addi 9,8,-1
	cmpw 7,10,9
	lwz 5,12(4)
	.loc 4 3412 0 is_stmt 1 discriminator 1
	mullw 9,8,0
	addi 7,11,-4
.LBE12007:
	fmr 0,10
.LBB12008:
	mullw 6,10,0
	slwi 9,9,2
	add 9,7,9
	add 9,5,9
	slwi 6,6,2
	mulli 0,0,-4
	add 6,5,6
.LBE12008:
	subf 5,10,8
.LBB12009:
	add 11,6,11
.LBE12009:
	mtctr 5
	bgt- 7,.L508
.LVL1128:
	xoris 5,10,0x8000
	cmpwi 7,5,-1
	beq 7,.L508
.LVL1129:
.L501:
.LBB12010:
	.loc 4 3426 0 discriminator 2
	lfs 13,0(9)
	.loc 4 3425 0 discriminator 2
	add 9,9,0
	.loc 4 3426 0 discriminator 2
	lfsu 12,-4(11)
	fmuls 13,12,13
	fsub 0,0,13
.LVL1130:
	.loc 4 3425 0 discriminator 2
	bdnz .L501
.LVL1131:
	.loc 4 3428 0
	fmul 0,11,0
.LVL1132:
	.loc 4 3423 0
	addi 8,8,-1
.LVL1133:
	cmpw 7,8,10
	mr 11,7
	.loc 4 3428 0
	frsp 0,0
	stfsx 0,6,7
	.loc 4 3423 0
	bne+ 7,.L500
.LVL1134:
.L499:
	.loc 4 3416 0
	cmpwi 7,10,0
	addi 10,10,-1
.LVL1135:
	beq- 7,.L509
.LVL1136:
.LBB12005:
.LBB12000:
	.loc 3 2056 0
	lwz 0,4(4)
	lwz 9,12(4)
	mullw 0,10,0
.LBE12000:
.LBE12005:
	.loc 4 3418 0
	lfd 0,.LC11@l(12)
.LBB12006:
.LBB12001:
	.loc 3 2056 0
	slwi 0,0,2
	add 9,9,0
.LBE12001:
.LBE12006:
	.loc 4 3417 0
	lfsx 11,9,3
.LVL1137:
	add 9,9,3
	addi 3,3,-4
	.loc 4 3418 0
	fcmpu 7,11,0
	bne+ 7,.L498
	.loc 4 3419 0
	li 3,0
.LVL1138:
.L497:
.LBE12010:
	.loc 4 3432 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI137:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL1139:
.L509:
.LCFI138:
	.cfi_restore_state
	lwz 31,12(1)
.LBB12011:
	.loc 4 3431 0
	li 3,1
.LBE12011:
	.loc 4 3432 0
	addi 1,1,16
	.cfi_remember_state
	.cfi_restore 31
.LCFI139:
	.cfi_def_cfa_offset 0
	blr
.LVL1140:
.L508:
.LCFI140:
	.cfi_restore_state
	li 5,1
	mtctr 5
	b .L501
	.cfi_endproc
.LFE2585:
	.size	_ZN6idMatX22UpperTriangularInverseEv, .-_ZN6idMatX22UpperTriangularInverseEv
	.align 2
	.globl _ZNK6idMatX8ToStringEi
	.type	_ZNK6idMatX8ToStringEi, @function
_ZNK6idMatX8ToStringEi:
.LFB2586:
	.loc 4 3439 0
	.cfi_startproc
.LVL1141:
	mflr 0
	stwu 1,-8(1)
.LCFI141:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	mr 5,4
	stw 0,12(1)
.LBB12012:
.LBB12013:
	.loc 3 2908 0
	lwz 0,4(3)
	.cfi_offset 65, 4
	lwz 9,0(3)
.LBE12013:
.LBE12012:
	.loc 4 3440 0
	lwz 3,12(3)
.LVL1142:
	mullw 4,9,0
.LVL1143:
	bl _ZN5idStr18FloatArrayToStringEPKfii
.LVL1144:
	.loc 4 3441 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI142:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2586:
	.size	_ZNK6idMatX8ToStringEi, .-_ZNK6idMatX8ToStringEi
	.align 2
	.globl _ZN6idMatX14Update_RankOneERK6idVecXS2_f
	.type	_ZN6idMatX14Update_RankOneERK6idVecXS2_f, @function
_ZN6idMatX14Update_RankOneERK6idVecXS2_f:
.LFB2587:
	.loc 4 3450 0
	.cfi_startproc
.LVL1145:
.LBB12014:
	.loc 4 3457 0
	lwz 0,0(3)
	cmpwi 7,0,0
	blelr- 7
	lwz 11,4(3)
	li 7,0
.LVL1146:
.L515:
.LBB12015:
.LBB12016:
	.loc 2 1532 0
	lwz 10,8(4)
.LBE12016:
.LBE12015:
	.loc 4 3459 0
	cmpwi 7,11,0
.LBB12018:
.LBB12017:
	.loc 2 1532 0
	slwi 9,7,2
.LBE12017:
.LBE12018:
	.loc 4 3458 0
	lfsx 12,10,9
	fmuls 12,1,12
.LVL1147:
	.loc 4 3459 0
	ble- 7,.L513
	li 9,0
.LVL1148:
.L514:
.LBB12019:
.LBB12020:
	.loc 3 2056 0 discriminator 2
	mullw 10,7,11
	lwz 0,12(3)
.LBE12020:
.LBE12019:
.LBB12022:
.LBB12023:
	.loc 2 1532 0 discriminator 2
	lwz 8,8(5)
.LBE12023:
.LBE12022:
	.loc 4 3450 0 discriminator 2
	slwi 11,9,2
	.loc 4 3459 0 discriminator 2
	addi 9,9,1
	.loc 4 3460 0 discriminator 2
	lfsx 13,8,11
.LBB12024:
.LBB12021:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
.LVL1149:
.LBE12021:
.LBE12024:
	.loc 4 3460 0 discriminator 2
	lfsx 0,10,11
	fmadds 0,12,13,0
	stfsx 0,10,11
	.loc 4 3459 0 discriminator 2
	lwz 11,4(3)
	cmpw 7,11,9
	bgt+ 7,.L514
	lwz 0,0(3)
.LVL1150:
.L513:
	.loc 4 3457 0
	addi 7,7,1
.LVL1151:
	cmpw 7,0,7
	bgt+ 7,.L515
	blr
.LBE12014:
	.cfi_endproc
.LFE2587:
	.size	_ZN6idMatX14Update_RankOneERK6idVecXS2_f, .-_ZN6idMatX14Update_RankOneERK6idVecXS2_f
	.align 2
	.globl _ZN6idMatX23Update_RankOneSymmetricERK6idVecXf
	.type	_ZN6idMatX23Update_RankOneSymmetricERK6idVecXf, @function
_ZN6idMatX23Update_RankOneSymmetricERK6idVecXf:
.LFB2588:
	.loc 4 3472 0
	.cfi_startproc
.LVL1152:
.LBB12025:
	.loc 4 3479 0
	lwz 0,0(3)
	cmpwi 7,0,0
	blelr- 7
	lwz 11,4(3)
	li 7,0
.LVL1153:
.L522:
	.loc 4 8102 0
	lwz 8,8(4)
.LVL1154:
	.loc 4 3481 0
	cmpwi 7,11,0
.LBB12026:
.LBB12027:
	.loc 2 1532 0
	slwi 9,7,2
.LBE12027:
.LBE12026:
	.loc 4 3480 0
	lfsx 12,8,9
	fmuls 12,1,12
.LVL1155:
	.loc 4 3481 0
	ble- 7,.L520
	li 9,0
	b .L521
.LVL1156:
.L525:
	lwz 8,8(4)
.LVL1157:
.L521:
.LBB12028:
.LBB12029:
	.loc 3 2056 0 discriminator 2
	mullw 10,7,11
	lwz 0,12(3)
.LBE12029:
.LBE12028:
	.loc 4 3472 0 discriminator 2
	slwi 11,9,2
	.loc 4 3482 0 discriminator 2
	lfsx 13,8,11
	.loc 4 3481 0 discriminator 2
	addi 9,9,1
.LBB12031:
.LBB12030:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
.LVL1158:
.LBE12030:
.LBE12031:
	.loc 4 3482 0 discriminator 2
	lfsx 0,10,11
	fmadds 0,12,13,0
	stfsx 0,10,11
	.loc 4 3481 0 discriminator 2
	lwz 11,4(3)
	cmpw 7,11,9
	bgt+ 7,.L525
	lwz 0,0(3)
.LVL1159:
.L520:
	.loc 4 3479 0
	addi 7,7,1
.LVL1160:
	cmpw 7,0,7
	bgt+ 7,.L522
	blr
.LBE12025:
	.cfi_endproc
.LFE2588:
	.size	_ZN6idMatX23Update_RankOneSymmetricERK6idVecXf, .-_ZN6idMatX23Update_RankOneSymmetricERK6idVecXf
	.align 2
	.globl _ZN6idMatX16Update_RowColumnERK6idVecXS2_i
	.type	_ZN6idMatX16Update_RowColumnERK6idVecXS2_i, @function
_ZN6idMatX16Update_RowColumnERK6idVecXS2_i:
.LFB2589:
	.loc 4 3500 0
	.cfi_startproc
.LVL1161:
.LBB12032:
	.loc 4 3507 0
	lwz 0,0(3)
	cmpwi 7,0,0
	ble- 7,.L527
	lwz 11,4(3)
	slwi 10,6,2
	li 9,0
	b .L528
.LVL1162:
.L532:
	lwz 11,4(3)
.LVL1163:
.L528:
.LBB12033:
.LBB12034:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
	lwz 7,12(3)
.LBE12034:
.LBE12033:
.LBB12036:
.LBB12037:
	.loc 2 1532 0 discriminator 2
	lwz 8,8(4)
	slwi 0,9,2
.LBE12037:
.LBE12036:
	.loc 4 3507 0 discriminator 2
	addi 9,9,1
.LVL1164:
	.loc 4 3508 0 discriminator 2
	lfsx 0,8,0
.LBB12038:
.LBB12035:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,7,11
.LVL1165:
.LBE12035:
.LBE12038:
	.loc 4 3508 0 discriminator 2
	lfsx 13,11,10
	fadds 0,13,0
	stfsx 0,11,10
	.loc 4 3507 0 discriminator 2
	lwz 0,0(3)
	cmpw 7,0,9
	bgt+ 7,.L532
.LVL1166:
.L527:
	.loc 4 3510 0 discriminator 1
	lwz 0,4(3)
	cmpwi 7,0,0
	blelr- 7
	.loc 4 3510 0 is_stmt 0
	li 9,0
.LVL1167:
.L530:
.LBB12039:
.LBB12040:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 0,6,0
	lwz 10,12(3)
.LBE12040:
.LBE12039:
.LBB12042:
.LBB12043:
	.loc 2 1532 0 discriminator 2
	lwz 8,8(5)
.LBE12043:
.LBE12042:
	.loc 4 3500 0 discriminator 2
	slwi 11,9,2
	.loc 4 3510 0 discriminator 2
	addi 9,9,1
	.loc 4 3511 0 discriminator 2
	lfsx 0,8,11
.LBB12044:
.LBB12041:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 10,10,0
.LVL1168:
.LBE12041:
.LBE12044:
	.loc 4 3511 0 discriminator 2
	lfsx 13,10,11
	fadds 0,13,0
	stfsx 0,10,11
	.loc 4 3510 0 discriminator 2
	lwz 0,4(3)
	cmpw 7,0,9
	bgt+ 7,.L530
.LVL1169:
	blr
.LBE12032:
	.cfi_endproc
.LFE2589:
	.size	_ZN6idMatX16Update_RowColumnERK6idVecXS2_i, .-_ZN6idMatX16Update_RowColumnERK6idVecXS2_i
	.align 2
	.globl _ZN6idMatX25Update_RowColumnSymmetricERK6idVecXi
	.type	_ZN6idMatX25Update_RowColumnSymmetricERK6idVecXi, @function
_ZN6idMatX25Update_RowColumnSymmetricERK6idVecXi:
.LFB2590:
	.loc 4 3528 0
	.cfi_startproc
.LVL1170:
.LBB12045:
	.loc 4 3534 0
	cmpwi 0,5,0
	ble- 0,.L541
	lwz 8,4(3)
	slwi 11,5,2
	li 10,0
	mtctr 5
	b .L536
.LVL1171:
.L542:
	lwz 8,4(3)
.LVL1172:
.L536:
.LBB12046:
.LBB12047:
	.loc 3 2056 0 discriminator 2
	mullw 8,10,8
	lwz 0,12(3)
.LBE12047:
.LBE12046:
.LBB12049:
.LBB12050:
	.loc 2 1532 0 discriminator 2
	lwz 7,8(4)
.LBE12050:
.LBE12049:
	.loc 4 3528 0 discriminator 2
	slwi 9,10,2
	.loc 4 3534 0 discriminator 2
	addi 10,10,1
.LVL1173:
	.loc 4 3535 0 discriminator 2
	lfsx 0,7,9
.LBB12051:
.LBB12048:
	.loc 3 2056 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
.LBE12048:
.LBE12051:
	.loc 4 3535 0 discriminator 2
	lfsx 13,8,11
	fadds 0,13,0
	stfsx 0,8,11
.LVL1174:
.LBB12052:
.LBB12053:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(3)
	lwz 0,12(3)
	mullw 8,5,8
.LBE12053:
.LBE12052:
.LBB12055:
.LBB12056:
	.loc 2 1532 0 discriminator 2
	lwz 7,8(4)
.LBE12056:
.LBE12055:
	.loc 4 3536 0 discriminator 2
	lfsx 0,7,9
.LBB12057:
.LBB12054:
	.loc 3 2056 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
.LVL1175:
.LBE12054:
.LBE12057:
	.loc 4 3536 0 discriminator 2
	lfsx 13,8,9
	fadds 0,13,0
	stfsx 0,8,9
	.loc 4 3534 0 discriminator 2
	bdnz .L542
.LVL1176:
.L535:
.LBB12058:
.LBB12059:
	.loc 3 2056 0
	lwz 9,4(3)
.LBE12059:
.LBE12058:
	.loc 4 3539 0
	addi 10,5,1
.LBB12062:
.LBB12060:
	.loc 3 2056 0
	lwz 0,12(3)
	mullw 9,5,9
.LBE12060:
.LBE12062:
.LBB12063:
.LBB12064:
	.loc 2 1532 0
	lwz 8,8(4)
.LBE12064:
.LBE12063:
	.loc 4 3538 0
	lfsx 0,8,11
.LBB12065:
.LBB12061:
	.loc 3 2056 0
	slwi 9,9,2
	add 9,0,9
.LVL1177:
.LBE12061:
.LBE12065:
	.loc 4 3538 0
	lfsx 13,9,11
	fadds 0,13,0
	stfsx 0,9,11
	.loc 4 3539 0
	lwz 0,0(3)
	cmpw 7,10,0
	bgelr- 7
	slwi 9,10,2
.L538:
.LVL1178:
.LBB12066:
.LBB12067:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(3)
	lwz 0,12(3)
	mullw 8,10,8
.LBE12067:
.LBE12066:
.LBB12069:
.LBB12070:
	.loc 2 1532 0 discriminator 2
	lwz 7,8(4)
.LBE12070:
.LBE12069:
	.loc 4 3539 0 discriminator 2
	addi 10,10,1
.LVL1179:
	.loc 4 3540 0 discriminator 2
	lfsx 0,7,9
.LBB12071:
.LBB12068:
	.loc 3 2056 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
.LBE12068:
.LBE12071:
	.loc 4 3540 0 discriminator 2
	lfsx 13,8,11
	fadds 0,13,0
	stfsx 0,8,11
.LVL1180:
.LBB12072:
.LBB12073:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(3)
	lwz 0,12(3)
	mullw 8,5,8
.LBE12073:
.LBE12072:
.LBB12075:
.LBB12076:
	.loc 2 1532 0 discriminator 2
	lwz 7,8(4)
.LBE12076:
.LBE12075:
	.loc 4 3541 0 discriminator 2
	lfsx 0,7,9
.LBB12077:
.LBB12074:
	.loc 3 2056 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
.LVL1181:
.LBE12074:
.LBE12077:
	.loc 4 3541 0 discriminator 2
	lfsx 13,8,9
	fadds 0,13,0
	stfsx 0,8,9
	.loc 4 3539 0 discriminator 2
	addi 9,9,4
	lwz 0,0(3)
	cmpw 7,0,10
	bgt+ 7,.L538
	blr
.LVL1182:
.L541:
	.loc 4 3534 0
	slwi 11,5,2
	b .L535
.LBE12045:
	.cfi_endproc
.LFE2590:
	.size	_ZN6idMatX25Update_RowColumnSymmetricERK6idVecXi, .-_ZN6idMatX25Update_RowColumnSymmetricERK6idVecXi
	.align 2
	.globl _ZN6idMatX16Update_IncrementERK6idVecXS2_
	.type	_ZN6idMatX16Update_IncrementERK6idVecXS2_, @function
_ZN6idMatX16Update_IncrementERK6idVecXS2_:
.LFB2591:
	.loc 4 3557 0
	.cfi_startproc
.LVL1183:
	stwu 1,-24(1)
.LCFI143:
	.cfi_def_cfa_offset 24
	mflr 0
.LBB12078:
	.loc 4 3564 0
	lwz 11,0(3)
	li 6,0
	lwz 9,4(3)
.LBE12078:
	.loc 4 3557 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 30,16(1)
.LBB12091:
	.loc 4 3564 0
	addi 4,11,1
.LVL1184:
.LBE12091:
	.loc 4 3557 0
	stw 31,20(1)
	mr 30,5
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	mr 31,3
.LBB12092:
	.loc 4 3564 0
	addi 5,9,1
.LVL1185:
.LBE12092:
	.loc 4 3557 0
	stw 0,28(1)
.LBB12093:
	.loc 4 3564 0
	.cfi_offset 65, 4
	bl _ZN6idMatX10ChangeSizeEiib
.LVL1186:
	.loc 4 3566 0
	lwz 11,0(31)
	cmpwi 7,11,0
	ble- 7,.L544
	lwz 11,4(31)
	li 9,0
	b .L545
.LVL1187:
.L549:
	lwz 11,4(31)
.LVL1188:
.L545:
.LBB12079:
.LBB12080:
	.loc 3 2056 0 discriminator 2
	mullw 10,9,11
.LBE12080:
.LBE12079:
.LBB12081:
.LBB12082:
	.loc 2 1532 0 discriminator 2
	lwz 7,8(29)
	slwi 0,9,2
.LBE12082:
.LBE12081:
	.loc 4 3567 0 discriminator 2
	lwz 8,12(31)
	addi 11,11,-1
.LBB12084:
.LBB12083:
	.loc 2 1532 0 discriminator 2
	lwzx 0,7,0
.LBE12083:
.LBE12084:
	.loc 4 3567 0 discriminator 2
	slwi 11,11,2
	slwi 10,10,2
	.loc 4 3566 0 discriminator 2
	addi 9,9,1
.LVL1189:
	.loc 4 3567 0 discriminator 2
	add 10,8,10
	stwx 0,10,11
	.loc 4 3566 0 discriminator 2
	lwz 11,0(31)
	cmpw 7,11,9
	bgt+ 7,.L549
.LVL1190:
.L544:
	.loc 4 3569 0 discriminator 1
	lwz 10,4(31)
	cmpwi 7,10,1
	ble- 7,.L543
	.loc 4 3569 0 is_stmt 0
	li 9,0
	b .L547
.LVL1191:
.L550:
	lwz 11,0(31)
.LVL1192:
.L547:
	.loc 4 3570 0 is_stmt 1 discriminator 2
	addi 11,11,-1
	.loc 4 3557 0 discriminator 2
	slwi 8,9,2
.LVL1193:
.LBB12085:
.LBB12086:
	.loc 3 2056 0 discriminator 2
	mullw 10,10,11
.LBE12086:
.LBE12085:
.LBB12087:
.LBB12088:
	.loc 2 1532 0 discriminator 2
	lwz 11,8(30)
.LBE12088:
.LBE12087:
	.loc 4 3570 0 discriminator 2
	lwz 7,12(31)
	.loc 4 3569 0 discriminator 2
	addi 9,9,1
.LVL1194:
.LBB12090:
.LBB12089:
	.loc 2 1532 0 discriminator 2
	lwzx 0,11,8
.LBE12089:
.LBE12090:
	.loc 4 3570 0 discriminator 2
	slwi 10,10,2
	add 10,7,10
	stwx 0,10,8
	.loc 4 3569 0 discriminator 2
	lwz 10,4(31)
	addi 0,10,-1
	cmpw 7,0,9
	bgt+ 7,.L550
.LVL1195:
.L543:
.LBE12093:
	.loc 4 3572 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL1196:
	mtlr 0
	lwz 30,16(1)
.LVL1197:
	lwz 31,20(1)
.LVL1198:
	addi 1,1,24
.LCFI144:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2591:
	.size	_ZN6idMatX16Update_IncrementERK6idVecXS2_, .-_ZN6idMatX16Update_IncrementERK6idVecXS2_
	.align 2
	.globl _ZN6idMatX25Update_IncrementSymmetricERK6idVecX
	.type	_ZN6idMatX25Update_IncrementSymmetricERK6idVecX, @function
_ZN6idMatX25Update_IncrementSymmetricERK6idVecX:
.LFB2592:
	.loc 4 3586 0
	.cfi_startproc
.LVL1199:
	stwu 1,-16(1)
.LCFI145:
	.cfi_def_cfa_offset 16
	mflr 0
.LBB12094:
	.loc 4 3592 0
	lwz 9,0(3)
	li 6,0
	lwz 5,4(3)
.LBE12094:
	.loc 4 3586 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_register 65, 0
	stw 31,12(1)
.LBB12107:
	.loc 4 3592 0
	addi 5,5,1
.LBE12107:
	.loc 4 3586 0
	mr 31,3
	.cfi_offset 31, -4
.LBB12108:
	.loc 4 3592 0
	addi 4,9,1
.LVL1200:
.LBE12108:
	.loc 4 3586 0
	stw 0,20(1)
.LBB12109:
	.loc 4 3592 0
	.cfi_offset 65, 4
	bl _ZN6idMatX10ChangeSizeEiib
.LVL1201:
	.loc 4 3594 0
	lwz 11,0(31)
	cmpwi 7,11,1
	ble- 7,.L552
	lwz 11,4(31)
	li 9,0
	b .L553
.LVL1202:
.L557:
	lwz 11,4(31)
.LVL1203:
.L553:
.LBB12095:
.LBB12096:
	.loc 3 2056 0 discriminator 2
	mullw 10,9,11
.LBE12096:
.LBE12095:
.LBB12097:
.LBB12098:
	.loc 2 1532 0 discriminator 2
	lwz 7,8(30)
	slwi 0,9,2
.LBE12098:
.LBE12097:
	.loc 4 3595 0 discriminator 2
	lwz 8,12(31)
.LBB12100:
.LBB12099:
	.loc 2 1532 0 discriminator 2
	lwzx 0,7,0
.LBE12099:
.LBE12100:
	.loc 4 3595 0 discriminator 2
	addi 11,11,-1
	slwi 11,11,2
	slwi 10,10,2
	.loc 4 3594 0 discriminator 2
	addi 9,9,1
.LVL1204:
	.loc 4 3595 0 discriminator 2
	add 10,8,10
	stwx 0,10,11
	.loc 4 3594 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,-1
	cmpw 7,0,9
	bgt+ 7,.L557
.LVL1205:
.L552:
	.loc 4 3597 0 discriminator 1
	lwz 0,4(31)
	cmpwi 7,0,0
	ble- 7,.L551
	.loc 4 3597 0 is_stmt 0
	li 9,0
	b .L555
.LVL1206:
.L558:
	lwz 11,0(31)
.LVL1207:
.L555:
	.loc 4 3598 0 is_stmt 1 discriminator 2
	addi 11,11,-1
.LBB12101:
.LBB12102:
	.loc 2 1532 0 discriminator 2
	lwz 8,8(30)
.LBE12102:
.LBE12101:
.LBB12104:
.LBB12105:
	.loc 3 2056 0 discriminator 2
	mullw 0,0,11
.LBE12105:
.LBE12104:
	.loc 4 3586 0 discriminator 2
	slwi 10,9,2
.LVL1208:
	.loc 4 3598 0 discriminator 2
	lwz 11,12(31)
	.loc 4 3597 0 discriminator 2
	addi 9,9,1
.LVL1209:
.LBB12106:
.LBB12103:
	.loc 2 1532 0 discriminator 2
	lwzx 8,8,10
.LBE12103:
.LBE12106:
	.loc 4 3598 0 discriminator 2
	slwi 0,0,2
	add 11,11,0
	stwx 8,11,10
	.loc 4 3597 0 discriminator 2
	lwz 0,4(31)
	cmpw 7,0,9
	bgt+ 7,.L558
.LVL1210:
.L551:
.LBE12109:
	.loc 4 3600 0
	lwz 0,20(1)
	lwz 30,8(1)
.LVL1211:
	mtlr 0
	lwz 31,12(1)
.LVL1212:
	addi 1,1,16
.LCFI146:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2592:
	.size	_ZN6idMatX25Update_IncrementSymmetricERK6idVecX, .-_ZN6idMatX25Update_IncrementSymmetricERK6idVecX
	.align 2
	.globl _ZN6idMatX16Update_DecrementEi
	.type	_ZN6idMatX16Update_DecrementEi, @function
_ZN6idMatX16Update_DecrementEi:
.LFB2593:
	.loc 4 3609 0
	.cfi_startproc
.LVL1213:
	.loc 4 3611 0
	.loc 4 3610 0
	b _ZN6idMatX15RemoveRowColumnEi
.LVL1214:
.LVL1215:
	.cfi_endproc
.LFE2593:
	.size	_ZN6idMatX16Update_DecrementEi, .-_ZN6idMatX16Update_DecrementEi
	.align 2
	.globl _ZN6idMatX19Inverse_GaussJordanEv
	.type	_ZN6idMatX19Inverse_GaussJordanEv, @function
_ZN6idMatX19Inverse_GaussJordanEv:
.LFB2594:
	.loc 4 3620 0
	.cfi_startproc
.LVL1216:
	mflr 0
	stwu 1,-64(1)
.LCFI147:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
.LBB12110:
	.loc 4 3630 0
	li 4,0
.LBE12110:
	.loc 4 3620 0
	stw 24,24(1)
	stw 0,68(1)
	stw 25,28(1)
	stw 28,40(1)
	stw 30,48(1)
	mr 30,3
	.cfi_offset 30, -16
	.cfi_offset 28, -24
	.cfi_offset 25, -36
	.cfi_offset 65, 4
	.cfi_offset 24, -40
	stw 31,52(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI148:
	.cfi_def_cfa_register 31
	stfd 31,56(1)
	stw 22,16(1)
	stw 23,20(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 29,44(1)
.LBB12149:
	.loc 4 3626 0
	lwz 9,0(1)
	lwz 5,0(3)
	slwi 0,5,2
	addic 0,0,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 9,1,0
	.loc 4 3628 0
	addi 9,5,45
	.loc 4 3627 0
	lwz 11,0(1)
	.loc 4 3626 0
	addi 24,1,23
	rlwinm 24,24,0,0,27
.LVL1217:
	.loc 4 3627 0
	stwux 11,1,0
	.loc 4 3628 0
	rlwinm 0,9,0,0,27
	neg 0,0
	.loc 4 3627 0
	addi 25,1,23
	.loc 4 3628 0
	stwux 11,1,0
	.loc 4 3627 0
	rlwinm 25,25,0,0,27
.LVL1218:
	.loc 4 3628 0
	addi 28,1,23
	rlwinm 28,28,0,0,27
.LVL1219:
	.loc 4 3630 0
	mr 3,28
.LVL1220:
	.cfi_offset 29, -20
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 63, -8
	bl memset
.LVL1221:
	.loc 4 3633 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L562
	lis 11,.LC9@ha
	li 26,0
	lfs 0,.LC9@l(11)
	li 29,0
	li 27,0
	li 10,0
	.loc 4 3653 0
	fmr 31,0
	.loc 4 3658 0
	li 22,1
	.loc 4 3670 0
	lis 23,.LC1@ha
.LVL1222:
.L592:
	.loc 4 3639 0
	lbzx 9,28,10
	cmpwi 7,9,0
	bne- 7,.L563
	cmpwi 7,0,0
	mtctr 0
	ble- 7,.L593
.L565:
	.loc 4 3641 0
	lbzx 11,9,28
	.loc 4 3642 0
	slwi 8,9,2
	.loc 4 3641 0
	cmpwi 7,11,0
	bne- 7,.L564
.LVL1223:
.LBB12111:
.LBB12112:
	.loc 3 2056 0
	lwz 11,4(30)
.LBE12112:
.LBE12111:
	.loc 4 3642 0
	lwz 7,12(30)
.LBB12114:
.LBB12113:
	.loc 3 2056 0
	mullw 11,10,11
.LBE12113:
.LBE12114:
	.loc 4 3642 0
	slwi 11,11,2
	add 11,7,11
.LBB12115:
.LBB12116:
	.loc 5 781 0
	lwzx 11,11,8
	.loc 5 782 0
	rlwinm 11,11,0,1,31
.LBE12116:
.LBE12115:
	.loc 4 3643 0
	stw 11,8(31)
	lfs 13,8(31)
	fcmpu 7,0,13
	bnl- 7,.L564
	.loc 4 3644 0
	fmr 0,13
	.loc 4 3643 0
	mr 29,9
	mr 27,10
.LVL1224:
.L564:
	.loc 4 3640 0
	addi 9,9,1
.LVL1225:
	bdnz .L565
.LVL1226:
.L563:
	.loc 4 3638 0
	addi 10,10,1
.LVL1227:
	cmpw 7,10,0
	blt+ 7,.L592
	.loc 4 3653 0
	fcmpu 7,0,31
	beq- 7,.L581
	.loc 4 3661 0
	cmpw 7,27,29
	.loc 4 3658 0
	stbx 22,28,29
	.loc 4 3661 0
	beq- 7,.L568
	.loc 4 3662 0
	mr 3,30
	mr 4,27
	mr 5,29
	bl _ZN6idMatX8SwapRowsEii
.LVL1228:
.L568:
.LBB12117:
.LBB12118:
	.loc 3 2056 0
	lwz 0,4(30)
.LBE12118:
.LBE12117:
	.loc 4 3666 0
	slwi 11,26,2
.LBB12122:
.LBB12119:
	.loc 3 2056 0
	lwz 9,12(30)
.LBE12119:
.LBE12122:
	.loc 4 3670 0
	slwi 6,29,2
.LBB12123:
.LBB12120:
	.loc 3 2056 0
	mullw 0,29,0
.LBE12120:
.LBE12123:
	.loc 4 3666 0
	stwx 27,25,11
	.loc 4 3670 0
	lfs 0,.LC1@l(23)
	.loc 4 3667 0
	stwx 29,24,11
.LVL1229:
.LBB12124:
.LBB12121:
	.loc 3 2056 0
	slwi 0,0,2
	add 9,9,0
.LBE12121:
.LBE12124:
	.loc 4 3670 0
	lfsx 13,9,6
	.loc 4 3671 0
	stfsx 0,9,6
	.loc 4 3670 0
	fdivs 13,0,13
.LVL1230:
	.loc 4 3672 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L569
	li 9,0
.LVL1231:
.L570:
.LBB12125:
.LBB12126:
	.loc 3 2056 0 discriminator 2
	lwz 10,4(30)
.LBE12126:
.LBE12125:
	.loc 4 3620 0 discriminator 2
	slwi 11,9,2
.LBB12129:
.LBB12127:
	.loc 3 2056 0 discriminator 2
	lwz 0,12(30)
.LBE12127:
.LBE12129:
	.loc 4 3672 0 discriminator 2
	addi 9,9,1
.LVL1232:
.LBB12130:
.LBB12128:
	.loc 3 2056 0 discriminator 2
	mullw 10,29,10
	slwi 10,10,2
	add 10,0,10
.LBE12128:
.LBE12130:
	.loc 4 3673 0 discriminator 2
	lfsx 0,10,11
	fmuls 0,0,13
	stfsx 0,10,11
	.loc 4 3672 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L570
.LVL1233:
	.loc 4 3677 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L569
	.loc 4 3677 0 is_stmt 0
	li 7,0
.LVL1234:
.L575:
	.loc 4 3678 0 is_stmt 1
	cmpw 7,29,7
	beq- 7,.L572
.LVL1235:
.LBB12131:
.LBB12132:
	.loc 3 2056 0
	lwz 9,4(30)
.LVL1236:
	lwz 0,12(30)
	mullw 9,7,9
	slwi 9,9,2
	add 9,0,9
.LBE12132:
.LBE12131:
	.loc 4 3679 0
	lfsx 12,9,6
.LVL1237:
	.loc 4 3680 0
	stfsx 31,9,6
.LVL1238:
	.loc 4 3681 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L569
	li 9,0
.LVL1239:
.L574:
	.loc 4 8102 0 discriminator 2
	lwz 10,4(30)
	.loc 4 3620 0 discriminator 2
	slwi 11,9,2
	.loc 4 8102 0 discriminator 2
	lwz 0,12(30)
.LVL1240:
	.loc 4 3681 0 discriminator 2
	addi 9,9,1
.LBB12133:
.LBB12134:
	.loc 3 2056 0 discriminator 2
	mullw 8,29,10
.LBE12134:
.LBE12133:
.LBB12135:
.LBB12136:
	mullw 10,7,10
.LBE12136:
.LBE12135:
	.loc 4 3682 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
	.loc 4 3620 0 discriminator 2
	lfsx 0,8,11
.LBB12139:
.LBB12137:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
.LBE12137:
.LBE12139:
	.loc 4 3620 0 discriminator 2
	fneg 0,0
.LBB12140:
.LBB12138:
	.loc 3 2056 0 discriminator 2
	add 10,0,10
.LVL1241:
.LBE12138:
.LBE12140:
	.loc 4 3682 0 discriminator 2
	lfsx 13,10,11
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 4 3681 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L574
.LVL1242:
.L572:
	.loc 4 3677 0
	addi 7,7,1
.LVL1243:
	cmpw 7,7,0
	blt+ 7,.L575
.LVL1244:
.L569:
	.loc 4 3633 0
	addi 26,26,1
.LVL1245:
	cmpw 7,26,0
	bge- 7,.L562
.LVL1246:
	.loc 4 3638 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L581
	.loc 4 3638 0 is_stmt 0
	lis 9,.LC9@ha
	li 29,0
.LVL1247:
	lfs 0,.LC9@l(9)
	li 27,0
	li 10,0
	b .L592
.LVL1248:
.L581:
	.loc 4 3655 0 is_stmt 1
	li 3,0
.L567:
.LBE12149:
	.loc 4 3700 0
	addi 11,31,64
	lwz 0,4(11)
	lwz 22,-48(11)
	mtlr 0
	lwz 23,-44(11)
	lwz 24,-40(11)
.LVL1249:
	lwz 25,-36(11)
.LVL1250:
	lwz 26,-32(11)
	lwz 27,-28(11)
	lwz 28,-24(11)
.LVL1251:
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL1252:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI149:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
	mr 1,11
.LCFI150:
	.cfi_def_cfa_register 1
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
.LVL1253:
	blr
.LVL1254:
.L562:
.LCFI151:
	.cfi_restore_state
.LBB12150:
	.loc 4 3689 0
	addic. 5,0,-1
	.loc 4 3699 0
	li 3,1
	.loc 4 3689 0
	blt- 0,.L567
	.loc 4 3620 0
	addi 10,25,4
	slwi 9,5,2
	add 10,10,9
	subf 25,25,24
.LVL1255:
.L578:
	.loc 4 3690 0
	lwzu 8,-4(10)
	lwzx 7,25,10
	cmpw 7,8,7
	beq- 7,.L576
.LVL1256:
	.loc 4 3691 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L576
	.loc 4 3691 0 is_stmt 0
	lwz 0,4(30)
	li 9,0
	b .L577
.LVL1257:
.L594:
	lwz 8,0(10)
	lwzx 7,25,10
.LVL1258:
	lwz 0,4(30)
.LVL1259:
.L577:
.LBB12141:
.LBB12142:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 11,9,0
	lwz 6,12(30)
.LBE12142:
.LBE12141:
	.loc 4 3693 0 discriminator 2
	slwi 7,7,2
	.loc 4 3692 0 discriminator 2
	slwi 0,8,2
.LBB12144:
.LBB12143:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,6,11
.LBE12143:
.LBE12144:
	.loc 4 3693 0 discriminator 2
	lwzx 8,11,7
	.loc 4 3692 0 discriminator 2
	lwzx 7,11,0
.LVL1260:
	.loc 4 3693 0 discriminator 2
	stwx 8,11,0
.LVL1261:
.LBB12145:
.LBB12146:
	.loc 3 2056 0 discriminator 2
	lwz 0,4(30)
.LVL1262:
.LBE12146:
.LBE12145:
	.loc 4 3694 0 discriminator 2
	lwzx 11,25,10
.LBB12148:
.LBB12147:
	.loc 3 2056 0 discriminator 2
	mullw 0,9,0
.LBE12147:
.LBE12148:
	.loc 4 3694 0 discriminator 2
	lwz 8,12(30)
	slwi 11,11,2
	.loc 4 3691 0 discriminator 2
	addi 9,9,1
.LVL1263:
	.loc 4 3694 0 discriminator 2
	slwi 0,0,2
	add 8,8,0
	stwx 7,8,11
	.loc 4 3691 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L594
.LVL1264:
.L576:
	.loc 4 3689 0
	cmpwi 7,5,0
	addi 5,5,-1
.LVL1265:
	bne+ 7,.L578
.LBE12150:
	.loc 4 3700 0
	addi 11,31,64
.LBB12151:
	.loc 4 3699 0
	li 3,1
.LBE12151:
	.loc 4 3700 0
	lwz 0,4(11)
	lwz 22,-48(11)
	mtlr 0
	lwz 23,-44(11)
	lwz 24,-40(11)
.LVL1266:
	lwz 25,-36(11)
	lwz 26,-32(11)
	lwz 27,-28(11)
	lwz 28,-24(11)
.LVL1267:
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL1268:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI152:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
	mr 1,11
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
	.cfi_restore 63
.LCFI153:
	.cfi_def_cfa_register 1
.LVL1269:
	blr
.LVL1270:
.L593:
.LCFI154:
	.cfi_restore_state
	li 11,1
	mtctr 11
	b .L565
	.cfi_endproc
.LFE2594:
	.size	_ZN6idMatX19Inverse_GaussJordanEv, .-_ZN6idMatX19Inverse_GaussJordanEv
	.align 2
	.globl _ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f
	.type	_ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f, @function
_ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f:
.LFB2595:
	.loc 4 3709 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2595
.LVL1271:
	mflr 0
	stwu 1,-88(1)
.LCFI155:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stfd 31,80(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,92(1)
	stw 24,48(1)
	mr 24,4
	.cfi_offset 24, -40
	.cfi_offset 65, 4
	stw 26,56(1)
	mr 26,5
	.cfi_offset 26, -32
	stw 28,64(1)
	stw 30,72(1)
	mr 30,3
	.cfi_offset 30, -16
	.cfi_offset 28, -24
	stw 31,76(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI156:
	.cfi_def_cfa_register 31
.LVL1272:
	stw 23,44(1)
	stw 25,52(1)
	stw 27,60(1)
	stw 29,68(1)
.LBB12181:
	.loc 4 3718 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 28,9
	rlwinm 0,0,0,0,29
.LBB12182:
.LBB12183:
	.loc 2 1762 0
	stw 9,20(31)
.LBE12183:
.LBE12182:
	.loc 4 3718 0
	slwi 11,0,2
.LBB12186:
.LBB12184:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE12184:
.LBE12186:
	.loc 4 3718 0
	subfic 11,11,-32
.LBB12187:
.LBB12188:
	.loc 2 1507 0
	li 0,0
.LVL1273:
.LBE12188:
.LBE12187:
	.loc 4 3718 0
	stwux 10,1,11
.LBB12189:
.LBB12190:
	.loc 2 1507 0
	stw 0,12(31)
.LBE12190:
.LBE12189:
	.loc 4 3718 0
	addi 11,1,23
.LVL1274:
.LBB12193:
.LBB12191:
	.loc 2 1507 0
	stw 0,8(31)
.LBE12191:
.LBE12193:
	.loc 4 3718 0
	rlwinm 11,11,0,0,27
.LVL1275:
.LBB12194:
.LBB12192:
	.loc 2 1508 0
	stw 0,16(31)
.LBE12192:
.LBE12194:
.LBB12195:
.LBB12185:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL1276:
	.loc 2 1764 0
	bge- 7,.L598
	.cfi_offset 29, -20
	.cfi_offset 27, -28
	.cfi_offset 25, -36
	.cfi_offset 23, -44
.LVL1277:
	slwi 10,9,2
	li 8,0
	b .L599
.LVL1278:
.L625:
	lwz 11,28(31)
.L599:
	addi 9,9,1
.LVL1279:
	stwx 8,11,10
	.loc 4 3709 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L625
	lwz 28,0(30)
.L598:
.LBE12185:
.LBE12195:
	.loc 4 3719 0
	addi 25,28,3
.LBB12196:
.LBB12197:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL1280:
.LBE12197:
.LBE12196:
	.loc 4 3719 0
	rlwinm 25,25,0,0,29
	lwz 9,0(1)
.LVL1281:
	slwi 0,25,2
.LBB12201:
.LBB12198:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE12198:
.LBE12201:
	.loc 4 3719 0
	subfic 0,0,-32
	mr 29,28
	stwux 9,1,0
.LVL1282:
	addi 23,1,23
	rlwinm 23,23,0,0,27
.LVL1283:
.LBB12202:
.LBB12199:
	.loc 2 1757 0
	beq- 7,.L600
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L626
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L600
.L632:
	addi 27,31,20
.LEHB9:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL1284:
.L600:
	.loc 2 1764 0
	cmpw 7,28,25
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 23,16(31)
	.loc 2 1762 0
	stw 28,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL1285:
	.loc 2 1764 0
	bge- 7,.L602
	slwi 28,28,2
.LVL1286:
	li 9,0
	b .L603
.LVL1287:
.L627:
	lwz 23,16(31)
.L603:
	addi 29,29,1
.LVL1288:
	stwx 9,23,28
	.loc 4 3709 0
	addi 0,29,3
	.loc 2 1764 0
	addi 28,28,4
	rlwinm 0,0,0,0,29
	cmpw 7,29,0
	blt+ 7,.L627
.L602:
.LVL1289:
.LBE12199:
.LBE12202:
.LBB12203:
.LBB12204:
	.loc 3 2713 0
	lis 29,SIMDProcessor@ha
.LVL1290:
	addi 27,31,20
	lwz 3,SIMDProcessor@l(29)
	mr 4,27
	mr 5,30
	mr 6,24
	lwz 9,0(3)
	lwz 0,192(9)
	mtctr 0
	bctrl
.LVL1291:
.LBE12204:
.LBE12203:
.LBB12205:
.LBB12206:
	.loc 3 2779 0
	lwz 3,SIMDProcessor@l(29)
	addi 4,31,8
	mr 5,30
	mr 6,26
	lwz 9,0(3)
	lwz 0,204(9)
	mtctr 0
	bctrl
.LEHE9:
	.loc 4 8102 0
	lwz 0,0(26)
.LVL1292:
.LBE12206:
.LBE12205:
.LBB12207:
.LBB12208:
	.loc 2 1669 0
	cmpwi 7,0,0
	ble- 7,.L616
	.loc 4 3709 0
	lwz 11,8(26)
.LBE12208:
.LBE12207:
.LBE12181:
	.loc 2 1666 0
	lis 10,.LC9@ha
.LBB12236:
.LBB12212:
.LBB12209:
	.loc 4 3709 0
	lwz 9,8(27)
.LBE12209:
.LBE12212:
.LBE12236:
	.loc 2 1669 0
	mtctr 0
	.loc 2 1666 0
	lfs 0,.LC9@l(10)
.LBB12237:
.LBB12213:
.LBB12210:
	.loc 4 3709 0
	addi 11,11,-4
	addi 9,9,-4
.LVL1293:
.L605:
	.loc 2 1670 0
	lfsu 12,4(11)
	lfsu 13,4(9)
	fmadds 0,12,13,0
.LVL1294:
	.loc 2 1669 0
	bdnz .L605
.LBE12210:
.LBE12213:
	.loc 4 3723 0
	lis 9,.LC1@ha
	.loc 4 3726 0
	li 29,0
	.loc 4 3723 0
	lfs 13,.LC1@l(9)
	.loc 4 3725 0
	lis 9,.LC9@ha
	.loc 4 3723 0
	fadds 0,0,13
.LVL1295:
	.loc 4 3725 0
	lfs 13,.LC9@l(9)
	fcmpu 7,0,13
	bne- 7,.L604
.LVL1296:
.L606:
	.loc 4 3737 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB12214:
.LBB12215:
.LBB12216:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L610
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L628
	cmpwi 7,0,-1
	beq- 7,.L610
.L631:
.LEHB10:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE10:
.L610:
	.loc 4 3737 0
	lwz 3,8(27)
	lwz 0,4(27)
.LBE12216:
.LBE12215:
.LBE12214:
.LBB12219:
.LBB12220:
.LBB12221:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L612
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L629
	cmpwi 7,0,-1
	beq- 7,.L612
.L630:
.LEHB11:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE11:
.L612:
.LBE12221:
.LBE12220:
.LBE12219:
.LBE12237:
	.loc 4 3738 0
	addi 11,31,88
	mr 3,29
	lwz 0,4(11)
	lwz 23,-44(11)
	mtlr 0
	lwz 24,-40(11)
.LVL1297:
	lwz 25,-36(11)
	lwz 26,-32(11)
.LVL1298:
	lwz 27,-28(11)
	lwz 28,-24(11)
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL1299:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI157:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL1300:
	mr 1,11
.LCFI158:
	.cfi_def_cfa_register 1
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
	blr
.LVL1301:
.L616:
.LCFI159:
	.cfi_restore_state
.LBB12238:
.LBB12224:
.LBB12211:
	.loc 4 3723 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
.LVL1302:
.L604:
.LBE12211:
.LBE12224:
	.loc 4 3731 0
	lwz 28,0(30)
	.loc 4 3729 0
	fdivs 31,31,0
.LVL1303:
	.loc 4 3737 0
	li 29,1
	.loc 4 3731 0
	cmpwi 7,28,0
	ble- 7,.L606
	lwz 0,4(30)
	li 7,0
.LVL1304:
.L609:
	.loc 4 3732 0
	lwz 11,8(27)
	.loc 4 3733 0
	cmpwi 7,0,0
	.loc 4 3732 0
	slwi 9,7,2
	lfsx 12,11,9
	fmuls 12,31,12
.LVL1305:
	.loc 4 3733 0
	ble- 7,.L607
	li 9,0
.LVL1306:
.L608:
.LBB12225:
.LBB12226:
	.loc 3 2056 0 discriminator 2
	mullw 0,7,0
.LBE12226:
.LBE12225:
	.loc 4 3709 0 discriminator 2
	lwz 8,16(31)
	slwi 11,9,2
.LBB12230:
.LBB12227:
	.loc 3 2056 0 discriminator 2
	lwz 10,12(30)
.LBE12227:
.LBE12230:
	.loc 4 3709 0 discriminator 2
	lfsx 0,8,11
	.loc 4 3733 0 discriminator 2
	addi 9,9,1
.LBB12231:
.LBB12228:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
.LBE12228:
.LBE12231:
	.loc 4 3709 0 discriminator 2
	fneg 0,0
.LBB12232:
.LBB12229:
	.loc 3 2056 0 discriminator 2
	add 10,10,0
.LVL1307:
.LBE12229:
.LBE12232:
	.loc 4 3734 0 discriminator 2
	lfsx 13,10,11
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 4 3733 0 discriminator 2
	lwz 0,4(30)
	cmpw 7,0,9
	bgt+ 7,.L608
	lwz 28,0(30)
.LVL1308:
.L607:
	.loc 4 3731 0
	addi 7,7,1
.LVL1309:
	cmpw 7,28,7
	bgt+ 7,.L609
	.loc 4 3737 0
	li 29,1
	b .L606
.LVL1310:
.L629:
.LBB12233:
.LBB12223:
.LBB12222:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L612
	cmpwi 7,0,-1
	bne+ 7,.L630
	b .L612
.L628:
.LBE12222:
.LBE12223:
.LBE12233:
.LBB12234:
.LBB12218:
.LBB12217:
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L610
	cmpwi 7,0,-1
	bne+ 7,.L631
	b .L610
.LVL1311:
.L626:
.LBE12217:
.LBE12218:
.LBE12234:
.LBB12235:
.LBB12200:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L600
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L632
	b .L600
.LVL1312:
.L620:
	mr 30,3
.LVL1313:
.L615:
.LBE12200:
.LBE12235:
	.loc 4 3737 0
	lwz 3,4(27)
	lwz 4,8(27)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB12:
	bl _Unwind_Resume
.LEHE12:
.LVL1314:
.L619:
	mr 30,3
.LVL1315:
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	b .L615
.LBE12238:
	.cfi_endproc
.LFE2595:
	.section	.gcc_except_table
.LLSDA2595:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2595-.LLSDACSB2595
.LLSDACSB2595:
	.uleb128 .LEHB9-.LFB2595
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L619-.LFB2595
	.uleb128 0
	.uleb128 .LEHB10-.LFB2595
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L620-.LFB2595
	.uleb128 0
	.uleb128 .LEHB11-.LFB2595
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB2595
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE2595:
	.section	".text"
	.size	_ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f, .-_ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f
	.align 2
	.globl _ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i
	.type	_ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i, @function
_ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i:
.LFB2596:
	.loc 4 3753 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2596
.LVL1316:
	mflr 0
	stwu 1,-56(1)
.LCFI160:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 24,24(1)
	mr 24,5
	.cfi_offset 24, -32
	stw 0,60(1)
.LBB12256:
.LBB12257:
.LBB12258:
	.loc 2 1507 0
	li 0,0
	.cfi_offset 65, 4
.LBE12258:
.LBE12257:
.LBE12256:
	.loc 4 3753 0
	stw 26,32(1)
	mr 26,6
	.cfi_offset 26, -24
	stw 27,36(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 29,44(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 31,52(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI161:
	.cfi_def_cfa_register 31
.LVL1317:
	stw 25,28(1)
	stw 28,40(1)
	stw 30,48(1)
.LBB12283:
.LBB12262:
.LBB12259:
	.loc 2 1507 0
	stw 0,12(31)
.LBE12259:
.LBE12262:
	.loc 4 3762 0
	lwz 9,0(3)
	lwz 30,4(3)
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 25, -28
.LVL1318:
.LBB12263:
.LBB12260:
	.loc 2 1507 0
	stw 0,8(31)
.LBE12260:
.LBE12263:
	.loc 4 3762 0
	cmpw 7,30,9
.LBB12264:
.LBB12261:
	.loc 2 1508 0
	stw 0,16(31)
.LBE12261:
.LBE12264:
	.loc 4 3762 0
	bge- 7,.L634
.LVL1319:
	mr 30,9
.LVL1320:
.L634:
	addi 28,30,3
.LBB12265:
.LBB12266:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL1321:
.LBE12266:
.LBE12265:
	.loc 4 3762 0
	rlwinm 28,28,0,0,29
	lwz 9,0(1)
	slwi 0,28,2
.LBB12271:
.LBB12267:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE12267:
.LBE12271:
	.loc 4 3762 0
	subfic 0,0,-32
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL1322:
.LBB12272:
.LBB12268:
	.loc 2 1757 0
	beq- 7,.L635
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L647
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L635
.L651:
.LEHB13:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL1323:
.L635:
	.loc 2 1764 0
	cmpw 7,30,28
	.loc 2 1763 0
	li 0,-1
.LBE12268:
.LBE12272:
	.loc 4 3762 0
	mr 4,25
.LBB12273:
.LBB12269:
	.loc 2 1761 0
	stw 25,16(31)
	.loc 2 1762 0
	stw 30,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL1324:
	.loc 2 1764 0
	bge- 7,.L637
	slwi 9,30,2
	li 11,0
	b .L639
.LVL1325:
.L648:
	lwz 4,16(31)
.L639:
	addi 30,30,1
.LVL1326:
	stwx 11,4,9
	.loc 4 3753 0
	addi 0,30,3
	.loc 2 1764 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,30,0
	blt+ 7,.L648
	lwz 30,8(31)
.LVL1327:
	lwz 4,16(31)
.L637:
.LBE12269:
.LBE12273:
.LBB12274:
.LBB12275:
	.loc 2 1769 0
	lis 9,SIMDProcessor@ha
	mr 5,30
	lwz 3,SIMDProcessor@l(9)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL1328:
.LBE12275:
.LBE12274:
	.loc 4 3764 0
	lis 30,.LC1@ha
	lwz 9,16(31)
	lfs 0,.LC1@l(30)
	slwi 26,26,2
.LVL1329:
	.loc 4 3766 0
	mr 3,29
	mr 4,27
	fmr 1,0
	.loc 4 3764 0
	stfsx 0,9,26
	.loc 4 3766 0
	addi 5,31,8
	bl _ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f
	cmpwi 7,3,0
	beq- 7,.L644
	.loc 4 3769 0
	lfs 1,.LC1@l(30)
	mr 3,29
	addi 4,31,8
	mr 5,24
	bl _ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f
.LEHE13:
	cmpwi 7,3,0
	.loc 4 3772 0
	li 30,1
	.loc 4 3769 0
	beq- 7,.L644
.L640:
	.loc 4 3772 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB12276:
.LBB12277:
.LBB12278:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L641
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L649
	cmpwi 7,0,-1
	beq- 7,.L641
.L650:
.LEHB14:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE14:
.L641:
.LBE12278:
.LBE12277:
.LBE12276:
.LBE12283:
	.loc 4 3773 0
	addi 11,31,56
	mr 3,30
	lwz 0,4(11)
	lwz 24,-32(11)
.LVL1330:
	mtlr 0
	lwz 25,-28(11)
.LVL1331:
	lwz 26,-24(11)
	lwz 27,-20(11)
.LVL1332:
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL1333:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI162:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI163:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL1334:
.L644:
.LCFI164:
	.cfi_restore_state
.LBB12284:
	.loc 4 3767 0
	li 30,0
	b .L640
.L649:
.LBB12281:
.LBB12280:
.LBB12279:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L641
	cmpwi 7,0,-1
	bne+ 7,.L650
	b .L641
.LVL1335:
.L647:
.LBE12279:
.LBE12280:
.LBE12281:
.LBB12282:
.LBB12270:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L635
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L651
	b .L635
.LVL1336:
.L646:
	mr 30,3
.LBE12270:
.LBE12282:
	.loc 4 3772 0
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB15:
	bl _Unwind_Resume
.LEHE15:
.LBE12284:
	.cfi_endproc
.LFE2596:
	.section	.gcc_except_table
.LLSDA2596:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2596-.LLSDACSB2596
.LLSDACSB2596:
	.uleb128 .LEHB13-.LFB2596
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L646-.LFB2596
	.uleb128 0
	.uleb128 .LEHB14-.LFB2596
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB2596
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2596:
	.section	".text"
	.size	_ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i, .-_ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i
	.align 2
	.globl _ZN6idMatX23Inverse_UpdateIncrementERK6idVecXS2_
	.type	_ZN6idMatX23Inverse_UpdateIncrementERK6idVecXS2_, @function
_ZN6idMatX23Inverse_UpdateIncrementERK6idVecXS2_:
.LFB2597:
	.loc 4 3787 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2597
.LVL1337:
	mflr 0
	stwu 1,-56(1)
.LCFI165:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
.LBB12303:
	.loc 4 3794 0
	li 6,1
.LBE12303:
	.loc 4 3787 0
	stw 24,24(1)
	mr 24,5
	.cfi_offset 24, -32
	stw 0,60(1)
.LBB12340:
.LBB12304:
.LBB12305:
	.loc 2 1507 0
	li 0,0
	.cfi_offset 65, 4
.LBE12305:
.LBE12304:
.LBE12340:
	.loc 4 3787 0
	stw 28,40(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 29,44(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 31,52(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI166:
	.cfi_def_cfa_register 31
.LVL1338:
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 30,48(1)
.LBB12341:
.LBB12309:
.LBB12306:
	.loc 2 1507 0
	stw 0,12(31)
.LBE12306:
.LBE12309:
	.loc 4 3794 0
	lwz 11,0(3)
	lwz 9,4(3)
	addi 4,11,1
.LVL1339:
.LBB12310:
.LBB12307:
	.loc 2 1507 0
	stw 0,8(31)
.LBE12307:
.LBE12310:
	.loc 4 3794 0
	addi 5,9,1
.LVL1340:
.LBB12311:
.LBB12308:
	.loc 2 1508 0
	stw 0,16(31)
.LEHB16:
.LBE12308:
.LBE12311:
	.loc 4 3794 0
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	bl _ZN6idMatX10ChangeSizeEiib
.LVL1341:
	.loc 4 3795 0
	lwz 9,0(29)
.LVL1342:
	lis 27,.LC1@ha
.LBB12312:
.LBB12313:
	.loc 3 2056 0
	lwz 11,4(29)
.LBE12313:
.LBE12312:
	.loc 4 3795 0
	addi 0,9,-1
	lwz 9,12(29)
.LBB12315:
.LBB12314:
	.loc 3 2056 0
	mullw 11,0,11
.LBE12314:
.LBE12315:
	.loc 4 3795 0
	lwz 10,.LC1@l(27)
	slwi 11,11,2
	add 11,9,11
	slwi 9,0,2
	stwx 10,11,9
	.loc 4 3797 0
	lwz 30,0(29)
.LBB12316:
.LBB12317:
	.loc 2 1757 0
	lwz 3,16(31)
.LBE12317:
.LBE12316:
	.loc 4 3797 0
	addi 26,30,3
	lwz 9,0(1)
	rlwinm 26,26,0,0,29
.LBB12322:
.LBB12318:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE12318:
.LBE12322:
	.loc 4 3797 0
	slwi 0,26,2
	subfic 0,0,-32
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL1343:
.LBB12323:
.LBB12319:
	.loc 2 1757 0
	beq- 7,.L653
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L668
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L653
.L672:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL1344:
.L653:
	.loc 2 1764 0
	cmpw 7,30,26
	.loc 2 1763 0
	li 0,-1
.LBE12319:
.LBE12323:
	.loc 4 3797 0
	mr 4,25
.LBB12324:
.LBB12320:
	.loc 2 1761 0
	stw 25,16(31)
	.loc 2 1762 0
	stw 30,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL1345:
	.loc 2 1764 0
	bge- 7,.L655
	slwi 9,30,2
	li 11,0
	b .L657
.LVL1346:
.L669:
	lwz 4,16(31)
.L657:
	addi 30,30,1
.LVL1347:
	stwx 11,4,9
	.loc 4 3787 0
	addi 0,30,3
	.loc 2 1764 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,30,0
	blt+ 7,.L669
	lwz 0,12(31)
	lwz 4,16(31)
.L655:
.LVL1348:
.LBE12320:
.LBE12324:
.LBB12325:
.LBB12326:
	.loc 2 1552 0
	lwz 30,0(28)
.LVL1349:
.LBB12327:
.LBB12328:
	.loc 2 1708 0
	addi 26,30,3
	rlwinm 26,26,0,0,29
.LVL1350:
	.loc 2 1709 0
	cmpw 7,26,0
	ble- 7,.L658
	cmpwi 7,0,-1
	beq- 7,.L658
	.loc 2 1710 0
	cmpwi 7,4,0
	beq- 7,.L659
	.loc 2 1711 0
	mr 3,4
	bl _Z10Mem_Free16Pv
.LVL1351:
.L659:
	.loc 2 1713 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	stw 3,16(31)
	mr 4,3
	.loc 2 1714 0
	stw 26,12(31)
.L658:
	.loc 2 1717 0
	cmpw 7,30,26
	.loc 2 1716 0
	stw 30,8(31)
.LVL1352:
	.loc 2 1717 0
	bge- 7,.L660
	slwi 9,30,2
	li 11,0
.LVL1353:
.L662:
	addi 30,30,1
.LVL1354:
	stwx 11,4,9
	.loc 4 3787 0
	addi 0,30,3
	.loc 2 1717 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,30,0
	blt+ 7,.L662
.L660:
.LBE12328:
.LBE12327:
	.loc 2 1554 0
	lis 9,SIMDProcessor@ha
	lwz 5,8(28)
	lwz 3,SIMDProcessor@l(9)
	lwz 6,0(28)
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LVL1355:
	.loc 2 1558 0
	li 0,0
	lis 9,_ZN6idVecX9tempIndexE@ha
	stw 0,_ZN6idVecX9tempIndexE@l(9)
.LVL1356:
.LBE12326:
.LBE12325:
	.loc 4 3801 0
	mr 3,29
.LBB12329:
.LBB12330:
	.loc 2 1537 0
	lwz 9,16(31)
.LBE12330:
.LBE12329:
	.loc 4 3801 0
	addi 4,31,8
	.loc 4 3799 0
	lwz 11,0(29)
	.loc 4 3801 0
	mr 5,24
	.loc 4 3799 0
	lfs 0,.LC1@l(27)
	addi 0,11,-1
.LBB12332:
.LBB12331:
	.loc 2 1537 0
	slwi 0,0,2
.LBE12331:
.LBE12332:
	.loc 4 3799 0
	lfsx 13,9,0
	fsubs 0,13,0
	stfsx 0,9,0
	.loc 4 3801 0
	lwz 6,0(29)
	addi 6,6,-1
	bl _ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i
.LEHE16:
.LVL1357:
	mr 30,3
.LVL1358:
	lwz 3,16(31)
	lwz 0,12(31)
.LBB12333:
.LBB12334:
.LBB12335:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L663
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L670
	cmpwi 7,0,-1
	beq- 7,.L663
.L671:
.LEHB17:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE17:
.L663:
.LBE12335:
.LBE12334:
.LBE12333:
.LBE12341:
	.loc 4 3802 0 discriminator 1
	addi 11,31,56
	mr 3,30
	lwz 0,4(11)
	lwz 24,-32(11)
.LVL1359:
	mtlr 0
	lwz 25,-28(11)
.LVL1360:
	lwz 26,-24(11)
.LVL1361:
	lwz 27,-20(11)
	lwz 28,-16(11)
.LVL1362:
	lwz 29,-12(11)
.LVL1363:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI167:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI168:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
.LVL1364:
	blr
.LVL1365:
.L670:
.LCFI169:
	.cfi_restore_state
.LBB12342:
.LBB12338:
.LBB12337:
.LBB12336:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L663
	cmpwi 7,0,-1
	bne+ 7,.L671
	b .L663
.LVL1366:
.L668:
.LBE12336:
.LBE12337:
.LBE12338:
.LBB12339:
.LBB12321:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L653
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L672
	b .L653
.LVL1367:
.L667:
	mr 30,3
.LBE12321:
.LBE12339:
	.loc 4 3801 0
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB18:
	bl _Unwind_Resume
.LEHE18:
.LBE12342:
	.cfi_endproc
.LFE2597:
	.section	.gcc_except_table
.LLSDA2597:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2597-.LLSDACSB2597
.LLSDACSB2597:
	.uleb128 .LEHB16-.LFB2597
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L667-.LFB2597
	.uleb128 0
	.uleb128 .LEHB17-.LFB2597
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB2597
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE2597:
	.section	".text"
	.size	_ZN6idMatX23Inverse_UpdateIncrementERK6idVecXS2_, .-_ZN6idMatX23Inverse_UpdateIncrementERK6idVecXS2_
	.align 2
	.globl _ZN6idMatX23Inverse_UpdateDecrementERK6idVecXS2_i
	.type	_ZN6idMatX23Inverse_UpdateDecrementERK6idVecXS2_i, @function
_ZN6idMatX23Inverse_UpdateDecrementERK6idVecXS2_i:
.LFB2598:
	.loc 4 3812 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2598
.LVL1368:
	mflr 0
	stwu 1,-88(1)
.LCFI170:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	mfcr 12
	stw 21,44(1)
	mr 21,6
	.cfi_offset 21, -44
	.cfi_register 70, 12
	stw 0,92(1)
	stw 22,48(1)
	mr 22,3
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	stw 25,60(1)
	stw 29,76(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_offset 25, -28
	stw 30,80(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 31,84(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI171:
	.cfi_def_cfa_register 31
.LVL1369:
	stw 23,52(1)
	stw 24,56(1)
	stw 26,64(1)
	stw 27,68(1)
	stw 28,72(1)
	stw 12,40(1)
.LBB12396:
	.loc 4 3820 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 25,9
	rlwinm 0,0,0,0,29
.LBB12397:
.LBB12398:
	.loc 2 1762 0
	stw 9,20(31)
.LBE12398:
.LBE12397:
	.loc 4 3820 0
	slwi 11,0,2
.LBB12401:
.LBB12399:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE12399:
.LBE12401:
	.loc 4 3820 0
	subfic 11,11,-32
.LBB12402:
.LBB12403:
	.loc 2 1507 0
	li 0,0
.LVL1370:
.LBE12403:
.LBE12402:
	.loc 4 3820 0
	stwux 10,1,11
.LBB12404:
.LBB12405:
	.loc 2 1507 0
	stw 0,12(31)
.LBE12405:
.LBE12404:
	.loc 4 3820 0
	addi 11,1,23
.LVL1371:
.LBB12408:
.LBB12406:
	.loc 2 1507 0
	stw 0,8(31)
.LBE12406:
.LBE12408:
	.loc 4 3820 0
	rlwinm 11,11,0,0,27
.LVL1372:
.LBB12409:
.LBB12407:
	.loc 2 1508 0
	stw 0,16(31)
.LBE12407:
.LBE12409:
.LBB12410:
.LBB12400:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL1373:
	.loc 2 1764 0
	bge- 7,.L676
	.cfi_offset 70, -48
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	slwi 10,9,2
	li 8,0
	b .L677
.LVL1374:
.L734:
	lwz 11,28(31)
.L677:
	addi 9,9,1
.LVL1375:
	stwx 8,11,10
	.loc 4 3812 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L734
	lwz 25,0(22)
.L676:
.LBE12400:
.LBE12410:
	.loc 4 3821 0
	addi 24,25,3
.LBB12411:
.LBB12412:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL1376:
.LBE12412:
.LBE12411:
	.loc 4 3821 0
	rlwinm 24,24,0,0,29
	lwz 9,0(1)
.LVL1377:
	slwi 0,24,2
.LBB12418:
.LBB12413:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE12413:
.LBE12418:
	.loc 4 3821 0
	subfic 0,0,-32
.LBB12419:
.LBB12414:
	.loc 2 1757 0
	lis 27,_ZN6idVecX7tempPtrE@ha
.LBE12414:
.LBE12419:
	.loc 4 3821 0
	stwux 9,1,0
.LVL1378:
	mr 26,25
	addi 23,1,23
	rlwinm 23,23,0,0,27
.LVL1379:
.LBB12420:
.LBB12415:
	.loc 2 1757 0
	beq- 7,.L678
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,3,9
	bge- 7,.L738
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L678
.L742:
	addi 28,31,20
.LEHB19:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LEHE19:
.LVL1380:
.L678:
	.loc 2 1764 0
	cmpw 7,25,24
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 23,16(31)
	.loc 2 1762 0
	stw 25,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL1381:
	.loc 2 1764 0
	bge- 7,.L680
	slwi 25,25,2
.LVL1382:
	li 9,0
	b .L681
.LVL1383:
.L739:
	lwz 23,16(31)
.L681:
	addi 26,26,1
.LVL1384:
	stwx 9,23,25
	.loc 4 3812 0
	addi 0,26,3
	.loc 2 1764 0
	addi 25,25,4
	rlwinm 0,0,0,0,29
	cmpw 7,26,0
	blt+ 7,.L739
.L680:
.LBE12415:
.LBE12420:
.LBB12421:
.LBB12422:
	.loc 2 1544 0
	lwz 28,0(29)
.LBB12423:
.LBB12424:
	.loc 2 1748 0
	lis 25,_ZN6idVecX9tempIndexE@ha
	lwz 26,_ZN6idVecX9tempIndexE@l(25)
.LVL1385:
.LBE12424:
.LBE12423:
.LBE12422:
.LBE12421:
.LBB12433:
.LBB12416:
	.loc 4 8102 0
	addi 8,29,8
.LVL1386:
.LBE12416:
.LBE12433:
.LBB12434:
.LBB12431:
.LBB12428:
.LBB12425:
	.loc 2 1746 0
	addi 24,28,3
	rlwinm 24,24,0,0,29
	.loc 2 1748 0
	add 0,24,26
	slwi 26,26,2
	cmpwi 7,0,1024
	ble- 7,.L682
	.loc 2 1746 0
	mr 0,24
	.loc 2 1748 0
	li 26,0
.L682:
	.loc 2 1753 0
	cmpw 4,28,24
	.loc 2 1751 0
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LVL1387:
	.loc 2 1751 0
	add 26,9,26
	.loc 2 1753 0
	bge- 4,.L683
	.loc 4 3812 0
	addi 11,28,-1
	mr 9,28
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 3812 0
	add 11,26,11
.LVL1388:
.L684:
	.loc 2 1753 0
	addi 9,9,1
.LVL1389:
	stwu 10,4(11)
	.loc 4 3812 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L684
.LVL1390:
.L683:
.LBE12425:
.LBE12428:
	.loc 2 1545 0
	lwz 0,0(29)
	cmpwi 7,0,0
	ble- 7,.L685
	.loc 4 3812 0
	addi 11,26,-4
.LBB12429:
.LBB12426:
	li 9,0
.LVL1391:
.L686:
.LBE12426:
.LBE12429:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL1392:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(29)
	cmpw 7,9,0
	blt+ 7,.L686
.LVL1393:
.L685:
.LBE12431:
.LBE12434:
.LBB12435:
.LBB12436:
.LBB12437:
.LBB12438:
	.loc 2 1709 0
	lwz 0,24(31)
	cmpw 7,24,0
	ble- 7,.L736
	cmpwi 7,0,-1
	beq- 7,.L736
	.loc 2 1710 0
	lwz 3,28(31)
	cmpwi 7,3,0
	beq- 7,.L690
.LEHB20:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL1394:
.L690:
	.loc 2 1713 0
	slwi 3,24,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,28(31)
	.loc 2 1714 0
	stw 24,24(31)
	b .L688
.LVL1395:
.L736:
	.loc 2 1709 0
	lwz 4,28(31)
.LVL1396:
.L688:
	.loc 2 1716 0
	stw 28,20(31)
.LVL1397:
	.loc 2 1717 0
	bge- 4,.L691
	slwi 11,28,2
.LBE12438:
.LBE12437:
.LBE12436:
.LBE12435:
.LBB12443:
.LBB12432:
.LBB12430:
.LBB12427:
	.loc 4 3812 0
	mr 9,28
.LBE12427:
.LBE12430:
.LBE12432:
.LBE12443:
.LBB12444:
.LBB12441:
.LBB12440:
.LBB12439:
	.loc 2 1717 0
	li 10,0
.LVL1398:
.L693:
	addi 9,9,1
.LVL1399:
	stwx 10,4,11
	.loc 4 3812 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,28(31)
	cmpw 7,9,0
	blt+ 7,.L693
.LVL1400:
.L691:
.LBE12439:
.LBE12440:
	.loc 2 1554 0
	lis 23,SIMDProcessor@ha
	mr 5,26
	lwz 3,SIMDProcessor@l(23)
	mr 6,28
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE20:
.LBE12441:
.LBE12444:
.LBB12445:
.LBB12446:
.LBB12447:
	.loc 2 1525 0
	cmpwi 7,26,0
.LBE12447:
.LBE12446:
.LBE12445:
.LBB12454:
.LBB12442:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LBE12442:
.LBE12454:
.LBB12455:
.LBB12451:
.LBB12448:
	.loc 2 1525 0
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	beq- 7,.L721
	cmplw 7,26,9
	bge- 7,.L740
.L696:
	.loc 2 1526 0
	mr 3,26
	addi 28,31,20
.LVL1401:
.LEHB21:
	bl _Z10Mem_Free16Pv
.LEHE21:
	lwz 28,_ZN6idVecX9tempIndexE@l(25)
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
.L695:
.LBE12448:
.LBE12451:
.LBE12455:
.LBB12456:
.LBB12457:
	.loc 2 1544 0
	lwz 29,0(30)
.LVL1402:
.LBE12457:
.LBE12456:
.LBB12466:
.LBB12452:
.LBB12449:
	.loc 4 8102 0
	addi 8,30,8
.LVL1403:
.LBE12449:
.LBE12452:
.LBE12466:
.LBB12467:
.LBB12464:
.LBB12458:
.LBB12459:
	.loc 2 1746 0
	addi 26,29,3
	rlwinm 26,26,0,0,29
	.loc 2 1748 0
	add 0,26,28
	slwi 28,28,2
	cmpwi 7,0,1024
	ble- 7,.L697
	.loc 2 1746 0
	mr 0,26
	.loc 2 1748 0
	li 28,0
.L697:
	.loc 2 1753 0
	cmpw 4,29,26
	.loc 2 1751 0
	add 28,9,28
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LVL1404:
	.loc 2 1753 0
	bge- 4,.L698
	.loc 4 3812 0
	addi 11,29,-1
	mr 9,29
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 3812 0
	add 11,28,11
.LVL1405:
.L699:
	.loc 2 1753 0
	addi 9,9,1
.LVL1406:
	stwu 10,4(11)
	.loc 4 3812 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L699
.LVL1407:
.L698:
.LBE12459:
.LBE12458:
	.loc 2 1545 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L700
	.loc 4 3812 0
	addi 11,28,-4
.LBB12462:
.LBB12460:
	li 9,0
.LVL1408:
.L701:
.LBE12460:
.LBE12462:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL1409:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L701
.LVL1410:
.L700:
.LBE12464:
.LBE12467:
.LBB12468:
.LBB12469:
.LBB12470:
.LBB12471:
	.loc 2 1709 0
	lwz 0,12(31)
	cmpw 7,26,0
	ble- 7,.L737
	cmpwi 7,0,-1
	beq- 7,.L737
	.loc 2 1710 0
	lwz 3,16(31)
	cmpwi 7,3,0
	beq- 7,.L705
.LEHB22:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL1411:
.L705:
	.loc 2 1713 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	stw 3,16(31)
	mr 4,3
	.loc 2 1714 0
	stw 26,12(31)
.L703:
	.loc 2 1716 0
	stw 29,8(31)
.LVL1412:
	.loc 2 1717 0
	bge- 4,.L706
	slwi 11,29,2
.LBE12471:
.LBE12470:
.LBE12469:
.LBE12468:
.LBB12479:
.LBB12465:
.LBB12463:
.LBB12461:
	.loc 4 3812 0
	mr 9,29
.LBE12461:
.LBE12463:
.LBE12465:
.LBE12479:
.LBB12480:
.LBB12476:
.LBB12474:
.LBB12472:
	.loc 2 1717 0
	li 10,0
.LVL1413:
.L708:
	addi 9,9,1
.LVL1414:
	stwx 10,4,11
	.loc 4 3812 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,9,0
	blt+ 7,.L708
.LVL1415:
.L706:
.LBE12472:
.LBE12474:
	.loc 2 1554 0
	lwz 3,SIMDProcessor@l(23)
	mr 5,28
	mr 6,29
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE22:
.LBE12476:
.LBE12480:
.LBB12481:
.LBB12482:
.LBB12483:
	.loc 2 1525 0
	cmpwi 7,28,0
.LBE12483:
.LBE12482:
.LBE12481:
.LBB12486:
.LBB12477:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LBE12477:
.LBE12486:
.LBB12487:
.LBB12485:
.LBB12484:
	.loc 2 1525 0
	beq- 7,.L709
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,28,9
	blt- 7,.L710
	addi 9,9,4096
	cmplw 7,28,9
	blt- 7,.L709
.L710:
	.loc 2 1526 0
	mr 3,28
	addi 28,31,20
.LEHB23:
	bl _Z10Mem_Free16Pv
.L709:
.LVL1416:
.LBE12484:
.LBE12485:
.LBE12487:
.LBB12488:
.LBB12489:
	.loc 4 3826 0
	addi 28,31,20
	.loc 2 1537 0
	slwi 0,21,2
	lwz 9,8(28)
.LBE12489:
.LBE12488:
	.loc 4 3826 0
	lis 11,.LC1@ha
	lfs 0,.LC1@l(11)
	.loc 4 3827 0
	li 11,0
	.loc 4 3826 0
	lfsx 13,9,0
	.loc 4 3829 0
	mr 3,22
	mr 4,28
	addi 5,31,8
	.loc 4 3826 0
	fadds 0,13,0
	.loc 4 3829 0
	mr 6,21
	.loc 4 3826 0
	stfsx 0,9,0
.LVL1417:
	.loc 4 3827 0
	lwz 9,16(31)
	stwx 11,9,0
	.loc 4 3829 0
	bl _ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i
.LEHE23:
	cmpwi 7,3,0
	.loc 4 3830 0
	li 30,0
.LVL1418:
	.loc 4 3829 0
	bne- 7,.L741
.L711:
	.loc 4 3836 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB12490:
.LBB12491:
.LBB12492:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L712
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,3,9
	blt- 7,.L713
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L712
.L713:
	cmpwi 7,0,-1
	beq- 7,.L712
.LEHB24:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE24:
.L712:
	.loc 4 3836 0
	lwz 3,8(28)
	lwz 0,4(28)
.LBE12492:
.LBE12491:
.LBE12490:
.LBB12493:
.LBB12494:
.LBB12495:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L714
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,3,9
	blt- 7,.L715
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L714
.L715:
	cmpwi 7,0,-1
	beq- 7,.L714
.LEHB25:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE25:
.L714:
.LBE12495:
.LBE12494:
.LBE12493:
.LBE12396:
	.loc 4 3837 0
	addi 11,31,88
	mr 3,30
	lwz 0,4(11)
	lwz 12,-48(11)
	mtlr 0
	lwz 21,-44(11)
.LVL1419:
	lwz 22,-40(11)
.LVL1420:
	mtcrf 8,12
	lwz 23,-36(11)
	lwz 24,-32(11)
.LVL1421:
	lwz 25,-28(11)
	lwz 26,-24(11)
.LVL1422:
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL1423:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI172:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI173:
	.cfi_def_cfa_register 1
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
.LVL1424:
.L740:
.LCFI174:
	.cfi_restore_state
.LBB12499:
.LBB12496:
.LBB12453:
.LBB12450:
	.loc 2 1525 0
	addi 0,9,4096
	cmplw 7,26,0
	bge+ 7,.L696
.L721:
	li 28,0
.LVL1425:
	b .L695
.LVL1426:
.L738:
.LBE12450:
.LBE12453:
.LBE12496:
.LBB12497:
.LBB12417:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L678
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L742
	b .L678
.LVL1427:
.L737:
.LBE12417:
.LBE12497:
.LBB12498:
.LBB12478:
.LBB12475:
.LBB12473:
	.loc 2 1709 0
	lwz 4,16(31)
	b .L703
.LVL1428:
.L741:
.LBE12473:
.LBE12475:
.LBE12478:
.LBE12498:
	.loc 4 3834 0
	mr 3,22
	mr 4,21
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 3836 0
	li 30,1
	b .L711
.LVL1429:
.L724:
	mr 30,3
.LVL1430:
.L717:
	lwz 3,12(31)
	lwz 4,16(31)
	bl _ZN6idVecXD2Ev.isra.6
.L719:
	lwz 3,4(28)
	lwz 4,8(28)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB26:
	bl _Unwind_Resume
.LEHE26:
.LVL1431:
.L726:
	.loc 4 3825 0
	mr 4,28
	mr 30,3
.LVL1432:
	mr 3,26
	addi 28,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L717
.LVL1433:
.L727:
	mr 30,3
	b .L719
.LVL1434:
.L725:
	mr 30,3
.LVL1435:
	.loc 4 3824 0
	mr 4,26
	mr 3,24
	addi 28,31,20
.LVL1436:
	bl _ZN6idVecXD2Ev.isra.6
	b .L717
.LBE12499:
	.cfi_endproc
.LFE2598:
	.section	.gcc_except_table
.LLSDA2598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2598-.LLSDACSB2598
.LLSDACSB2598:
	.uleb128 .LEHB19-.LFB2598
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L724-.LFB2598
	.uleb128 0
	.uleb128 .LEHB20-.LFB2598
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L725-.LFB2598
	.uleb128 0
	.uleb128 .LEHB21-.LFB2598
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L724-.LFB2598
	.uleb128 0
	.uleb128 .LEHB22-.LFB2598
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L726-.LFB2598
	.uleb128 0
	.uleb128 .LEHB23-.LFB2598
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L724-.LFB2598
	.uleb128 0
	.uleb128 .LEHB24-.LFB2598
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L727-.LFB2598
	.uleb128 0
	.uleb128 .LEHB25-.LFB2598
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB2598
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE2598:
	.section	".text"
	.size	_ZN6idMatX23Inverse_UpdateDecrementERK6idVecXS2_i, .-_ZN6idMatX23Inverse_UpdateDecrementERK6idVecXS2_i
	.align 2
	.globl _ZNK6idMatX13Inverse_SolveER6idVecXRKS0_
	.type	_ZNK6idMatX13Inverse_SolveER6idVecXRKS0_, @function
_ZNK6idMatX13Inverse_SolveER6idVecXRKS0_:
.LFB2599:
	.loc 4 3846 0
	.cfi_startproc
.LVL1437:
	mflr 0
	stwu 1,-8(1)
.LCFI175:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
.LBB12500:
.LBB12501:
	.loc 3 2713 0
	lis 9,SIMDProcessor@ha
.LBE12501:
.LBE12500:
	.loc 4 3846 0
	mr 11,3
.LVL1438:
.LBB12504:
.LBB12502:
	.loc 3 2713 0
	lwz 9,SIMDProcessor@l(9)
.LBE12502:
.LBE12504:
	.loc 4 3846 0
	mr 6,5
.LVL1439:
	stw 0,12(1)
.LBB12505:
.LBB12503:
	.loc 3 2713 0
	mr 5,11
.LVL1440:
	mr 3,9
.LVL1441:
	lwz 10,0(9)
	lwz 0,192(10)
	.cfi_offset 65, 4
	mtctr 0
	bctrl
.LVL1442:
.LBE12503:
.LBE12505:
	.loc 4 3848 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI176:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE2599:
	.size	_ZNK6idMatX13Inverse_SolveER6idVecXRKS0_, .-_ZNK6idMatX13Inverse_SolveER6idVecXRKS0_
	.align 2
	.globl _ZN6idMatX9LU_FactorEPiPf
	.type	_ZN6idMatX9LU_FactorEPiPf, @function
_ZN6idMatX9LU_FactorEPiPf:
.LFB2600:
	.loc 4 3863 0
	.cfi_startproc
.LVL1443:
	stwu 1,-40(1)
.LCFI177:
	.cfi_def_cfa_offset 40
.LBB12506:
	.loc 4 3868 0
	cmpwi 0,4,0
.LBE12506:
	.loc 4 3863 0
	mr 9,3
	stw 28,24(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 26,16(1)
	stw 27,20(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
.LBB12541:
	.loc 4 3869 0
	lwz 8,0(3)
	.loc 4 3868 0
	beq- 0,.L746
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
.LVL1444:
	.loc 4 3869 0 discriminator 1
	cmpwi 7,8,0
	ble- 7,.L746
	.loc 4 3863 0
	addi 10,4,-4
.LBE12541:
	li 11,0
.LVL1445:
.L747:
.LBB12542:
	.loc 4 3870 0 discriminator 2
	stwu 11,4(10)
	.loc 4 3869 0 discriminator 2
	addi 11,11,1
.LVL1446:
	lwz 8,0(9)
	cmpw 7,8,11
	bgt+ 7,.L747
.LVL1447:
.L746:
	.loc 4 3875 0
	lwz 7,4(9)
.LVL1448:
	mr 31,8
	cmpw 7,8,7
	ble- 7,.L748
	mr 31,7
.L748:
.LVL1449:
	.loc 4 3876 0
	cmpwi 7,31,0
	ble- 7,.L766
	.loc 4 3892 0
	lis 11,.LC11@ha
	.loc 4 3876 0
	li 6,0
	.loc 4 3892 0
	lfd 10,.LC11@l(11)
.LBB12507:
.LBB12508:
	.loc 3 2056 0
	mullw 11,6,7
.LBE12508:
.LBE12507:
	.loc 4 8102 0
	lwz 0,12(9)
	.loc 4 3876 0
	li 12,0
	lis 29,.LC1@ha
	lfs 11,.LC1@l(29)
	li 5,1
.LVL1450:
	.loc 4 3879 0
	slwi 11,11,2
	.loc 4 3920 0
	addi 30,31,-1
.LVL1451:
	.loc 4 3879 0
	add 11,0,11
.LBB12510:
.LBB12511:
	.loc 5 781 0
	lwzx 11,11,12
	rlwinm 11,11,0,1,31
.LBE12511:
.LBE12510:
	.loc 4 3879 0
	stw 11,8(1)
	lfs 0,8(1)
	fmr 13,0
.LVL1452:
	.loc 4 3881 0
	beq- 0,.L767
.LVL1453:
.L783:
	.loc 4 3883 0
	cmpw 7,5,8
	mr 10,5
.LVL1454:
	mr 3,6
	bge- 7,.L750
.LVL1455:
	.loc 4 3863 0
	mullw 11,5,7
	subf 27,5,8
	mtctr 27
	slwi 7,7,2
	slwi 11,11,2
	add 11,12,11
	add 11,0,11
.LVL1456:
.L752:
.LBB12513:
.LBB12514:
	.loc 5 781 0
	lwz 0,0(11)
.LBE12514:
.LBE12513:
	.loc 4 3883 0
	add 11,11,7
.LVL1457:
.LBB12516:
.LBB12515:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LVL1458:
.LBE12515:
.LBE12516:
	.loc 4 3884 0
	stw 0,8(1)
	lfs 12,8(1)
	fmr 0,12
.LVL1459:
	.loc 4 3885 0
	fcmpu 7,0,13
	bng- 7,.L751
	.loc 4 3887 0
	fmr 13,0
.LVL1460:
	.loc 4 3885 0
	mr 3,10
.L751:
.LVL1461:
	.loc 4 3883 0
	addi 10,10,1
.LVL1462:
	bdnz .L752
.LVL1463:
.L750:
	.loc 4 3892 0
	fcmpu 7,13,10
	beq- 7,.L770
.LVL1464:
.L784:
	.loc 4 3896 0
	cmpw 7,3,6
	beq- 7,.L754
	.loc 4 3902 0
	slwi 0,3,2
	.loc 4 3901 0
	lwzx 11,4,12
	.loc 4 3902 0
	lwzx 10,4,0
	.loc 4 3898 0
	fneg 11,11
.LVL1465:
	.loc 4 3902 0
	stwx 10,4,12
	.loc 4 3906 0
	li 10,0
	.loc 4 3903 0
	stwx 11,4,0
.LVL1466:
	.loc 4 3906 0
	lwz 0,4(9)
	cmpwi 7,0,0
	ble- 7,.L781
.LVL1467:
.L755:
.LBB12517:
.LBB12518:
	.loc 3 2056 0 discriminator 2
	mullw 27,6,0
.LBE12518:
.LBE12517:
	.loc 4 8102 0 discriminator 2
	lwz 7,12(9)
.LVL1468:
	.loc 4 3863 0 discriminator 2
	slwi 11,10,2
	.loc 4 3906 0 discriminator 2
	addi 10,10,1
.LBB12519:
.LBB12520:
	.loc 3 2056 0 discriminator 2
	mullw 8,3,0
.LBE12520:
.LBE12519:
	.loc 4 3908 0 discriminator 2
	slwi 27,27,2
	add 27,7,27
	lwzx 27,27,11
.LBB12522:
.LBB12521:
	.loc 3 2056 0 discriminator 2
	slwi 8,8,2
	add 8,7,8
.LBE12521:
.LBE12522:
	.loc 4 3907 0 discriminator 2
	lwzx 0,8,11
.LVL1469:
	.loc 4 3908 0 discriminator 2
	stwx 27,8,11
.LVL1470:
.LBB12523:
.LBB12524:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(9)
.LVL1471:
.LBE12524:
.LBE12523:
	.loc 4 3909 0 discriminator 2
	lwz 7,12(9)
.LBB12526:
.LBB12525:
	.loc 3 2056 0 discriminator 2
	mullw 8,6,8
.LBE12525:
.LBE12526:
	.loc 4 3909 0 discriminator 2
	slwi 8,8,2
	add 8,7,8
	stwx 0,8,11
	.loc 4 3906 0 discriminator 2
	lwz 0,4(9)
.LVL1472:
	cmpw 7,0,10
	bgt+ 7,.L755
.LVL1473:
.L781:
	lwz 8,0(9)
.LVL1474:
.L754:
	.loc 4 3913 0
	cmpw 7,8,6
	mr 27,5
	ble- 7,.L757
	.loc 4 8102 0
	lwz 0,4(9)
	.loc 4 3915 0
	cmpw 7,8,5
	.loc 4 8102 0
	lwz 7,12(9)
.LVL1475:
	.loc 4 3915 0
	mr 27,5
.LBB12527:
.LBB12528:
	.loc 3 2056 0
	mullw 11,6,0
.LBE12528:
.LBE12527:
	.loc 4 3914 0
	lfs 13,.LC1@l(29)
.LVL1476:
	slwi 11,11,2
	add 11,7,11
	lfsx 0,11,12
	fdivs 13,13,0
.LVL1477:
	.loc 4 3915 0
	ble- 7,.L757
	.loc 4 3915 0 is_stmt 0 discriminator 2
	mr 11,5
	b .L758
.LVL1478:
.L782:
	.loc 4 3915 0
	lwz 0,4(9)
	lwz 7,12(9)
.LVL1479:
.L758:
.LBB12529:
.LBB12530:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 10,11,0
.LBE12530:
.LBE12529:
	.loc 4 3915 0 discriminator 2
	addi 11,11,1
.LVL1480:
.LBB12532:
.LBB12531:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
	add 10,7,10
.LBE12531:
.LBE12532:
	.loc 4 3916 0 discriminator 2
	lfsx 0,10,12
	fmul 0,0,13
	frsp 0,0
	stfsx 0,10,12
	.loc 4 3915 0 discriminator 2
	lwz 8,0(9)
	cmpw 7,8,11
	bgt+ 7,.L782
.LVL1481:
.L757:
	.loc 4 3920 0
	cmpw 7,30,6
	ble- 7,.L759
.LVL1482:
	.loc 4 3921 0
	cmpw 7,8,5
	ble- 7,.L759
	mr 3,5
.LVL1483:
	.loc 4 3923 0
	slwi 26,5,2
.LVL1484:
.L762:
	.loc 4 8102 0
	lwz 0,4(9)
	lwz 10,12(9)
.LVL1485:
.LBB12533:
.LBB12534:
	.loc 3 2056 0
	mullw 7,3,0
.LBE12534:
.LBE12533:
	.loc 4 3923 0
	cmpw 7,0,5
	.loc 4 3922 0
	slwi 11,7,2
	add 11,10,11
	lfsx 12,11,12
.LVL1486:
	.loc 4 3923 0
	ble- 7,.L760
.LVL1487:
	mr 11,26
	mr 8,5
	b .L761
.LVL1488:
.L780:
	mullw 7,3,0
	lwz 10,12(9)
.LVL1489:
.L761:
.LBB12535:
.LBB12536:
	.loc 3 2056 0 discriminator 2
	mullw 0,6,0
.LBE12536:
.LBE12535:
.LBB12537:
.LBB12538:
	slwi 7,7,2
	add 7,10,7
.LVL1490:
.LBE12538:
.LBE12537:
	.loc 4 3924 0 discriminator 2
	lfsx 13,7,11
	.loc 4 3923 0 discriminator 2
	addi 8,8,1
.LVL1491:
	.loc 4 3924 0 discriminator 2
	slwi 0,0,2
	add 10,10,0
	lfsx 0,10,11
	.loc 4 3863 0 discriminator 2
	fneg 0,0
	.loc 4 3924 0 discriminator 2
	fmadd 0,0,12,13
	frsp 0,0
	stfsx 0,7,11
	.loc 4 3923 0 discriminator 2
	addi 11,11,4
	lwz 0,4(9)
	cmpw 7,0,8
	bgt+ 7,.L780
	lwz 8,0(9)
.LVL1492:
.L760:
	.loc 4 3921 0
	addi 3,3,1
.LVL1493:
	cmpw 7,8,3
	bgt+ 7,.L762
.LVL1494:
.L759:
	.loc 4 3876 0
	cmpw 7,31,27
	.loc 4 3921 0
	addi 6,6,1
.LVL1495:
	addi 12,12,4
	addi 5,5,1
.LVL1496:
	.loc 4 3876 0
	ble- 7,.L749
	lwz 7,4(9)
.LVL1497:
	.loc 4 8102 0
	lwz 0,12(9)
.LVL1498:
.LBB12539:
.LBB12509:
	.loc 3 2056 0
	mullw 11,6,7
.LBE12509:
.LBE12539:
	.loc 4 3879 0
	slwi 11,11,2
	add 11,0,11
.LBB12540:
.LBB12512:
	.loc 5 781 0
	lwzx 11,11,12
	rlwinm 11,11,0,1,31
.LBE12512:
.LBE12540:
	.loc 4 3879 0
	stw 11,8(1)
	lfs 0,8(1)
	fmr 13,0
.LVL1499:
	.loc 4 3881 0
	bne+ 0,.L783
.LVL1500:
.L767:
	.loc 4 3892 0
	fcmpu 7,13,10
	.loc 4 3881 0
	mr 3,6
	.loc 4 3892 0
	bne+ 7,.L784
.LVL1501:
.L770:
.LBE12542:
	.loc 4 3938 0
	lwz 26,16(1)
.LBB12543:
	.loc 4 3893 0
	li 3,0
.LVL1502:
.LBE12543:
	.loc 4 3938 0
	lwz 27,20(1)
	lwz 28,24(1)
.LVL1503:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI178:
	.cfi_def_cfa_offset 0
	blr
.LVL1504:
.L766:
.LCFI179:
	.cfi_restore_state
.LBB12544:
	.loc 4 3874 0
	lis 11,.LC1@ha
	lfs 11,.LC1@l(11)
.LVL1505:
.L749:
	.loc 4 3930 0
	cmpwi 7,28,0
	.loc 4 3937 0
	li 3,1
	.loc 4 3930 0
	beq- 7,.L753
.LVL1506:
	.loc 4 3931 0 discriminator 1
	cmpwi 7,8,0
	ble- 7,.L764
	.loc 4 3863 0
	lwz 0,4(9)
	mtctr 8
	lwz 9,12(9)
.LVL1507:
	addic 0,0,1
	slwi 0,0,2
.LVL1508:
.L765:
	.loc 4 3932 0 discriminator 2
	lfs 0,0(9)
	.loc 4 3931 0 discriminator 2
	add 9,9,0
	.loc 4 3932 0 discriminator 2
	fmul 11,11,0
.LVL1509:
	.loc 4 3931 0 discriminator 2
	bdnz .L765
.L764:
	.loc 4 3934 0
	frsp 11,11
.LVL1510:
	.loc 4 3937 0
	li 3,1
	.loc 4 3934 0
	stfs 11,0(28)
.L753:
.LBE12544:
	.loc 4 3938 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
.LVL1511:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
	addi 1,1,40
.LCFI180:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE2600:
	.size	_ZN6idMatX9LU_FactorEPiPf, .-_ZN6idMatX9LU_FactorEPiPf
	.align 2
	.globl _ZN6idMatX16LU_UpdateRankOneERK6idVecXS2_fPi
	.type	_ZN6idMatX16LU_UpdateRankOneERK6idVecXS2_fPi, @function
_ZN6idMatX16LU_UpdateRankOneERK6idVecXS2_fPi:
.LFB2601:
	.loc 4 3947 0
	.cfi_startproc
.LVL1512:
	mflr 0
	stwu 1,-32(1)
.LCFI181:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB12545:
	.loc 4 3958 0
	cmpwi 0,6,0
.LBE12545:
	.loc 4 3947 0
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 31,28(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI182:
	.cfi_def_cfa_register 31
	stw 0,36(1)
	stw 27,12(1)
.LBB12566:
	.loc 4 3955 0
	lwz 11,0(1)
	lwz 0,0(4)
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	slwi 9,0,2
	.loc 4 3956 0
	lwz 0,0(5)
	.loc 4 3955 0
	addi 9,9,45
	rlwinm 9,9,0,0,27
	neg 9,9
	stwux 11,1,9
	.loc 4 3956 0
	slwi 9,0,2
	addi 9,9,45
	rlwinm 9,9,0,0,27
	.loc 4 3955 0
	addi 28,1,23
	.loc 4 3956 0
	neg 9,9
	.loc 4 3955 0
	rlwinm 28,28,0,0,27
.LVL1513:
	.loc 4 3956 0
	stwux 11,1,9
	addi 29,1,23
	rlwinm 29,29,0,0,27
.LVL1514:
	.loc 4 3958 0
	beq- 0,.L808
.LVL1515:
	.loc 4 3959 0 discriminator 1
	lwz 9,0(3)
	cmpwi 7,9,0
	ble- 7,.L788
	.loc 4 3947 0
	addi 9,6,-4
.LBE12566:
	li 11,0
.LVL1516:
.L789:
.LBB12567:
	.loc 4 3959 0 discriminator 2
	addi 9,9,4
.LVL1517:
.LBB12546:
.LBB12547:
	.loc 2 1532 0 discriminator 2
	lwz 8,8(4)
	lwz 10,0(9)
.LBE12547:
.LBE12546:
	.loc 4 3959 0 discriminator 2
	addi 11,11,1
.LVL1518:
	lwz 0,0(30)
.LBB12549:
.LBB12548:
	.loc 2 1532 0 discriminator 2
	slwi 10,10,2
.LBE12548:
.LBE12549:
	.loc 4 3960 0 discriminator 2
	lfsx 0,8,10
	.loc 4 3959 0 discriminator 2
	cmpw 7,0,11
	.loc 4 3947 0 discriminator 2
	subf 10,6,9
	.loc 4 3960 0 discriminator 2
	fmuls 0,1,0
	stfsx 0,10,28
	.loc 4 3959 0 discriminator 2
	bgt+ 7,.L789
.LVL1519:
.L807:
	lwz 0,0(5)
.LVL1520:
.L788:
	.loc 4 3968 0
	lwz 4,8(5)
.LVL1521:
	mr 3,29
.LVL1522:
	slwi 5,0,2
.LVL1523:
	bl memcpy
.LVL1524:
	.loc 4 3970 0
	lwz 0,0(30)
	lwz 12,4(30)
.LVL1525:
	cmpw 7,12,0
	ble- 7,.L790
	mr 12,0
.L790:
.LVL1526:
	.loc 4 3971 0
	cmpwi 7,12,0
	.loc 4 4006 0
	li 3,1
	.loc 4 3971 0
	ble- 7,.L791
	.loc 4 8102 0
	lwz 9,12(30)
.LVL1527:
	.loc 4 3978 0
	lis 27,.LC11@ha
	.loc 4 3974 0
	lfs 12,0(28)
	.loc 4 3979 0
	li 3,0
	.loc 4 3972 0
	lfs 11,0(9)
.LVL1528:
	.loc 4 3975 0
	lfs 0,0(29)
.LVL1529:
	.loc 4 3978 0
	lfd 13,.LC11@l(27)
	.loc 4 3976 0
	fmadd 11,12,0,11
.LVL1530:
	.loc 4 3978 0
	fcmpu 7,11,13
	beq- 7,.L791
	li 4,4
	.loc 4 3972 0
	li 8,0
	.loc 4 3971 0
	li 10,0
.LVL1531:
.L792:
	.loc 4 3984 0
	frsp 13,11
	.loc 4 3986 0
	addi 5,10,1
	.loc 4 3982 0
	fdiv 11,0,11
.LVL1532:
	.loc 4 3984 0
	stfs 13,0(9)
	.loc 4 3986 0
	lwz 0,4(30)
	cmpw 7,5,0
	bge- 7,.L793
	fneg 10,11
	mr 9,4
	mr 11,5
.LVL1533:
.L794:
.LBB12550:
.LBB12551:
	.loc 3 2056 0 discriminator 2
	mullw 0,10,0
.LBE12551:
.LBE12550:
	.loc 4 3988 0 discriminator 2
	lwz 6,12(30)
	.loc 4 3990 0 discriminator 2
	lfsx 13,9,29
	.loc 4 3986 0 discriminator 2
	addi 11,11,1
.LVL1534:
.LBB12552:
.LBB12553:
	.loc 3 2056 0 discriminator 2
	lwz 7,4(30)
.LBE12553:
.LBE12552:
	.loc 4 3988 0 discriminator 2
	slwi 0,0,2
.LBB12555:
.LBB12554:
	.loc 3 2056 0 discriminator 2
	mullw 7,10,7
.LBE12554:
.LBE12555:
	.loc 4 3988 0 discriminator 2
	add 6,6,0
	.loc 4 3993 0 discriminator 2
	lwz 0,12(30)
	.loc 4 3988 0 discriminator 2
	lfsx 0,6,9
.LVL1535:
	.loc 4 3990 0 discriminator 2
	fmadd 0,13,12,0
.LVL1536:
	.loc 4 3993 0 discriminator 2
	slwi 7,7,2
	add 7,0,7
	.loc 4 3991 0 discriminator 2
	fmadd 13,10,0,13
	.loc 4 3993 0 discriminator 2
	frsp 0,0
.LVL1537:
	.loc 4 3991 0 discriminator 2
	frsp 13,13
	stfsx 13,9,29
.LVL1538:
	.loc 4 3993 0 discriminator 2
	stfsx 0,7,9
	.loc 4 3986 0 discriminator 2
	addi 9,9,4
	lwz 0,4(30)
	cmpw 7,0,11
	bgt+ 7,.L794
.LVL1539:
.L793:
	.loc 4 3996 0 discriminator 1
	lwz 0,0(30)
	cmpw 7,0,5
	ble- 7,.L795
	fneg 10,12
	.loc 4 3996 0 is_stmt 0
	mr 11,28
	mr 9,5
.LVL1540:
.L796:
.LBB12556:
.LBB12557:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	lwz 7,4(30)
.LBE12557:
.LBE12556:
	.loc 4 3998 0 discriminator 2
	lwz 6,12(30)
.LBB12559:
.LBB12558:
	.loc 3 2056 0 discriminator 2
	mullw 7,9,7
.LBE12558:
.LBE12559:
	.loc 4 4000 0 discriminator 2
	lfsu 13,4(11)
	.loc 4 3996 0 discriminator 2
	addi 9,9,1
.LVL1541:
	.loc 4 3998 0 discriminator 2
	slwi 7,7,2
	add 7,6,7
	lfsx 0,7,8
.LVL1542:
	.loc 4 4000 0 discriminator 2
	fmadd 13,10,0,13
	frsp 13,13
	.loc 4 4001 0 discriminator 2
	fmr 12,13
	.loc 4 4000 0 discriminator 2
	stfs 13,0(11)
.LVL1543:
	.loc 4 4001 0 discriminator 2
	fmadd 0,12,11,0
.LVL1544:
	.loc 4 4003 0 discriminator 2
	frsp 0,0
	stfsx 0,7,8
	.loc 4 3996 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L796
.LVL1545:
.L795:
	.loc 4 3971 0
	cmpw 7,5,12
	beq- 7,.L809
.LVL1546:
.LBB12560:
.LBB12561:
	.loc 3 2056 0
	lwz 9,4(30)
	lwz 0,12(30)
	mullw 9,5,9
.LBE12561:
.LBE12560:
	.loc 4 3974 0
	lfsu 12,4(28)
	.loc 4 3975 0
	lfsx 0,4,29
	.loc 4 3978 0
	lfd 13,.LC11@l(27)
.LBB12563:
.LBB12562:
	.loc 3 2056 0
	slwi 9,9,2
	add 9,0,9
.LBE12562:
.LBE12563:
	.loc 4 3976 0
	addi 0,4,4
	.loc 4 3972 0
	lfsx 11,9,4
.LVL1547:
	add 9,9,4
	.loc 4 3976 0
	fmadd 11,12,0,11
.LVL1548:
	.loc 4 3978 0
	fcmpu 7,11,13
	beq- 7,.L801
	.loc 4 3972 0
	mr 8,4
	.loc 4 3978 0
	mr 10,5
.LVL1549:
	mr 4,0
	b .L792
.L801:
	.loc 4 3979 0
	li 3,0
.LVL1550:
.L791:
.LBE12567:
	.loc 4 4007 0
	addi 11,31,32
	lwz 0,4(11)
	lwz 27,-20(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL1551:
	lwz 30,-8(11)
.LVL1552:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI183:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI184:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
.LVL1553:
	blr
.LVL1554:
.L809:
.LCFI185:
	.cfi_restore_state
	addi 11,31,32
.LBB12568:
	.loc 4 4006 0
	li 3,1
.LBE12568:
	.loc 4 4007 0
	lwz 0,4(11)
	lwz 27,-20(11)
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL1555:
	lwz 30,-8(11)
.LVL1556:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI186:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI187:
	.cfi_def_cfa_register 1
.LVL1557:
	blr
.LVL1558:
.L808:
.LCFI188:
	.cfi_restore_state
.LBB12569:
	.loc 4 3963 0 discriminator 1
	lwz 11,0(3)
	li 9,0
	cmpwi 7,11,0
	li 11,0
	ble- 7,.L788
.LVL1559:
.L802:
.LBB12564:
.LBB12565:
	.loc 2 1532 0 discriminator 2
	lwz 10,8(4)
.LBE12565:
.LBE12564:
	.loc 4 3963 0 discriminator 2
	addi 11,11,1
.LVL1560:
	lwz 0,0(30)
	.loc 4 3964 0 discriminator 2
	lfsx 0,10,9
	.loc 4 3963 0 discriminator 2
	cmpw 7,0,11
	.loc 4 3964 0 discriminator 2
	fmuls 0,1,0
	stfsx 0,9,28
	.loc 4 3963 0 discriminator 2
	addi 9,9,4
	bgt+ 7,.L802
	b .L807
.LBE12569:
	.cfi_endproc
.LFE2601:
	.size	_ZN6idMatX16LU_UpdateRankOneERK6idVecXS2_fPi, .-_ZN6idMatX16LU_UpdateRankOneERK6idVecXS2_fPi
	.align 2
	.globl _ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi
	.type	_ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi, @function
_ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi:
.LFB2602:
	.loc 4 4022 0
	.cfi_startproc
.LVL1561:
	mflr 0
	stwu 1,-56(1)
.LCFI189:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
.LBB12570:
	.loc 4 4060 0
	cmpwi 0,7,0
.LBE12570:
	.loc 4 4022 0
	stw 22,16(1)
	stw 23,20(1)
	mr 23,6
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	stw 24,24(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	stw 29,44(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,48(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,52(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI190:
	.cfi_def_cfa_register 31
	stw 0,60(1)
	stw 20,8(1)
	stw 21,12(1)
	stw 25,28(1)
.LBB12609:
	.loc 4 4055 0
	lwz 10,0(1)
	lwz 0,0(4)
	.cfi_offset 25, -28
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 65, 4
	.loc 4 4056 0
	lwz 9,0(29)
	.loc 4 4055 0
	slwi 5,0,2
.LVL1562:
	addi 11,5,45
	.loc 4 4056 0
	slwi 9,9,2
	.loc 4 4055 0
	rlwinm 11,11,0,0,27
	.loc 4 4056 0
	addi 9,9,45
	.loc 4 4055 0
	neg 11,11
	.loc 4 4056 0
	rlwinm 9,9,0,0,27
	.loc 4 4055 0
	stwux 10,1,11
	.loc 4 4056 0
	neg 9,9
	.loc 4 4055 0
	addi 22,1,23
	.loc 4 4056 0
	stwux 10,1,9
	.loc 4 4055 0
	rlwinm 22,22,0,0,27
.LVL1563:
	.loc 4 4056 0
	addi 26,1,23
	.loc 4 4057 0
	stwux 10,1,11
	.loc 4 4056 0
	rlwinm 26,26,0,0,27
.LVL1564:
	.loc 4 4057 0
	addi 24,1,23
	.loc 4 4058 0
	stwux 10,1,9
	.loc 4 4057 0
	rlwinm 24,24,0,0,27
.LVL1565:
	.loc 4 4058 0
	addi 27,1,23
	rlwinm 27,27,0,0,27
.LVL1566:
	.loc 4 4060 0
	beq- 0,.L811
.LVL1567:
	.loc 4 4061 0 discriminator 1
	lwz 9,0(3)
	.loc 4 4022 0 discriminator 1
	addi 11,7,-4
	.loc 4 4061 0 discriminator 1
	cmpwi 7,9,0
.LBE12609:
	.loc 4 4022 0 discriminator 1
	li 9,0
.LBB12610:
	.loc 4 4061 0 discriminator 1
	ble- 7,.L848
.LVL1568:
.L840:
	.loc 4 4061 0 is_stmt 0 discriminator 2
	lwz 0,0(28)
	addi 9,9,1
.LVL1569:
.LBB12571:
.LBB12572:
	.loc 2 1532 0 is_stmt 1 discriminator 2
	lwzu 10,4(11)
.LVL1570:
	lwz 8,8(30)
.LBE12572:
.LBE12571:
	.loc 4 4061 0 discriminator 2
	cmpw 7,0,9
.LBB12575:
.LBB12573:
	.loc 2 1532 0 discriminator 2
	slwi 10,10,2
	lwzx 6,8,10
.LBE12573:
.LBE12575:
	.loc 4 4022 0 discriminator 2
	subf 8,7,11
.LBB12576:
.LBB12574:
	mr 10,7
.LBE12574:
.LBE12576:
	.loc 4 4062 0 discriminator 2
	stwx 6,8,22
	.loc 4 4061 0 discriminator 2
	bgt+ 7,.L840
.LVL1571:
	.loc 4 4065 0
	cmpwi 7,0,0
	ble- 7,.L847
	.loc 4 4066 0
	lwz 9,0(7)
	li 21,0
	mtctr 0
	cmpw 7,9,23
	bne+ 7,.L839
	b .L853
.LVL1572:
.L817:
	lwzu 0,4(10)
	.loc 4 4022 0
	slwi 20,21,2
	.loc 4 4066 0
	cmpw 7,0,23
	beq- 7,.L850
.LVL1573:
.L839:
	.loc 4 4065 0
	addi 21,21,1
.LVL1574:
	bdnz .L817
.LVL1575:
.L847:
	slwi 20,23,2
	lwz 0,0(30)
	mr 25,20
	mr 21,23
.LVL1576:
.L813:
	.loc 4 4076 0
	slwi 5,0,2
	li 4,0
	mr 3,24
	bl memset
	.loc 4 4077 0
	lis 9,.LC1@ha
	lwz 30,.LC1@l(9)
.LVL1577:
	.loc 4 4079 0
	li 4,0
	lwz 5,0(29)
	mr 3,26
	.loc 4 4077 0
	stwx 30,24,20
	.loc 4 4079 0
	slwi 5,5,2
	bl memset
	.loc 4 4082 0
	lwz 5,0(29)
	lwz 4,8(29)
	mr 3,27
	.loc 4 4080 0
	stwx 30,26,25
	.loc 4 4082 0
	slwi 5,5,2
	bl memcpy
.LVL1578:
	cmpw 7,21,23
	mr 8,21
	ble- 7,.L818
	mr 8,23
.L818:
.LVL1579:
	.loc 4 4086 0
	cmpwi 7,8,0
	ble- 7,.L819
	lwz 9,4(28)
	addi 3,22,-4
	.loc 4 4022 0
	li 6,0
	.loc 4 4086 0
	li 5,0
.LVL1580:
.L825:
.LBB12577:
.LBB12578:
	.loc 3 2056 0
	mullw 9,5,9
	lwz 0,12(28)
.LBE12578:
.LBE12577:
	.loc 4 4087 0
	lfsu 11,4(3)
.LVL1581:
	.loc 4 4091 0
	addi 4,5,1
	.loc 4 4088 0
	lfsx 12,6,27
.LBB12580:
.LBB12579:
	.loc 3 2056 0
	slwi 9,9,2
	add 9,0,9
.LBE12579:
.LBE12580:
	.loc 4 4090 0
	lfsx 0,9,25
	.loc 4 4088 0
	lfsx 13,9,6
	.loc 4 4090 0
	fadd 0,0,11
	.loc 4 4088 0
	fdivs 12,12,13
.LVL1582:
	.loc 4 4090 0
	frsp 0,0
	stfsx 0,9,25
	.loc 4 4091 0
	lwz 0,4(28)
	cmpw 7,0,4
	ble- 7,.L820
	.loc 4 4022 0
	slwi 9,4,2
	mr 11,4
.LVL1583:
.L821:
.LBB12581:
.LBB12582:
	.loc 3 2056 0 discriminator 2
	mullw 10,5,0
.LBE12582:
.LBE12581:
	.loc 4 4092 0 discriminator 2
	lwz 7,12(28)
	lfsx 13,9,27
	.loc 4 4091 0 discriminator 2
	addi 11,11,1
.LVL1584:
	lwz 0,4(28)
	.loc 4 4092 0 discriminator 2
	slwi 10,10,2
	.loc 4 4091 0 discriminator 2
	cmpw 7,0,11
	.loc 4 4092 0 discriminator 2
	add 10,7,10
	lfsx 0,10,9
	.loc 4 4022 0 discriminator 2
	fneg 0,0
	.loc 4 4092 0 discriminator 2
	fmadd 0,0,12,13
	frsp 0,0
	stfsx 0,9,27
	.loc 4 4091 0 discriminator 2
	addi 9,9,4
	bgt+ 7,.L821
.LVL1585:
.L820:
	.loc 4 4094 0 discriminator 1
	lwz 9,0(28)
	cmpw 7,4,9
	bge- 7,.L822
	.loc 4 4094 0 is_stmt 0
	mr 11,3
	mr 9,4
.LVL1586:
.L824:
.LBB12583:
.LBB12584:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 0,9,0
.LBE12584:
.LBE12583:
	.loc 4 4095 0 discriminator 2
	lwz 7,12(28)
	lfsu 13,4(11)
	.loc 4 4094 0 discriminator 2
	addi 9,9,1
.LVL1587:
	lwz 10,0(28)
	.loc 4 4095 0 discriminator 2
	slwi 0,0,2
	.loc 4 4094 0 discriminator 2
	cmpw 7,10,9
	.loc 4 4095 0 discriminator 2
	add 7,7,0
	lfsx 0,7,6
	.loc 4 4022 0 discriminator 2
	fneg 0,0
	.loc 4 4095 0 discriminator 2
	fmadd 0,0,11,13
	frsp 0,0
	stfs 0,0(11)
	.loc 4 4094 0 discriminator 2
	lwz 0,4(28)
	bgt+ 7,.L824
.LVL1588:
.L822:
.LBB12585:
.LBB12586:
	.loc 3 2056 0
	mullw 0,21,0
	lwz 9,12(28)
.LBE12586:
.LBE12585:
	.loc 4 4086 0
	cmpw 7,4,8
.LBB12588:
.LBB12587:
	.loc 3 2056 0
	slwi 0,0,2
	add 9,9,0
.LBE12587:
.LBE12588:
	.loc 4 4097 0
	lfsx 0,9,6
	fadd 12,0,12
.LVL1589:
	frsp 12,12
	stfsx 12,9,6
.LVL1590:
	addi 6,6,4
	.loc 4 4086 0
	beq- 7,.L819
	lwz 9,4(28)
	.loc 4 4091 0
	mr 5,4
.LVL1591:
	b .L825
.LVL1592:
.L819:
	.loc 4 4101 0
	lwz 0,4(28)
	lwz 9,0(28)
.LVL1593:
	mr 30,0
	cmpw 7,0,9
	ble- 7,.L826
	mr 30,9
.L826:
.LVL1594:
	.loc 4 4102 0
	cmpw 7,8,30
	.loc 4 4153 0
	li 3,1
	.loc 4 4102 0
	bge- 7,.L827
.LVL1595:
.LBB12589:
.LBB12590:
	.loc 3 2056 0
	mullw 0,0,8
	lwz 9,12(28)
.LBE12590:
.LBE12589:
	.loc 4 4103 0
	slwi 10,8,2
	.loc 4 4105 0
	lfsx 12,22,10
	.loc 4 4109 0
	lis 11,.LC11@ha
	.loc 4 4106 0
	lfsx 13,26,10
	.loc 4 4110 0
	li 3,0
.LBB12595:
.LBB12591:
	.loc 3 2056 0
	slwi 0,0,2
.LBE12591:
.LBE12595:
	.loc 4 4109 0
	lfd 6,.LC11@l(11)
.LBB12596:
.LBB12592:
	.loc 3 2056 0
	add 9,9,0
.LBE12592:
.LBE12596:
	.loc 4 4103 0
	lfsx 10,9,10
.LVL1596:
	add 9,9,10
	.loc 4 4107 0
	fmadd 10,12,13,10
.LVL1597:
	.loc 4 4109 0
	fcmpu 7,10,6
	beq- 7,.L827
	.loc 4 4115 0
	lfsx 11,24,10
	.loc 4 4022 0
	addi 5,8,1
	.loc 4 4116 0
	lfsx 9,27,10
	.loc 4 4022 0
	addi 4,22,-4
	.loc 4 4109 0
	slwi 5,5,2
	la 3,.LC11@l(11)
	.loc 4 4117 0
	fmadd 0,11,9,10
	.loc 4 4022 0
	add 4,5,4
	subf 22,22,24
.LVL1598:
	.loc 4 4119 0
	fcmpu 7,0,6
	beq- 7,.L838
.LVL1599:
.L852:
	.loc 4 4125 0
	frsp 8,0
	.loc 4 4127 0
	addi 29,8,1
	.loc 4 4113 0
	fdiv 10,13,10
	.loc 4 4125 0
	stfs 8,0(9)
	.loc 4 4127 0
	lwz 0,4(28)
	cmpw 7,29,0
	.loc 4 4123 0
	fdiv 9,9,0
.LVL1600:
	.loc 4 4127 0
	bge- 7,.L829
	fneg 7,10
	mr 9,5
	fneg 8,9
	mr 11,29
.LVL1601:
.L830:
.LBB12597:
.LBB12598:
	.loc 3 2056 0 discriminator 2
	mullw 0,8,0
.LBE12598:
.LBE12597:
	.loc 4 4129 0 discriminator 2
	lwz 6,12(28)
	.loc 4 4131 0 discriminator 2
	lfsx 13,9,26
	.loc 4 4127 0 discriminator 2
	addi 11,11,1
.LVL1602:
.LBB12599:
.LBB12600:
	.loc 3 2056 0 discriminator 2
	lwz 7,4(28)
.LBE12600:
.LBE12599:
	.loc 4 4129 0 discriminator 2
	slwi 0,0,2
.LBB12602:
.LBB12601:
	.loc 3 2056 0 discriminator 2
	mullw 7,8,7
.LBE12601:
.LBE12602:
	.loc 4 4129 0 discriminator 2
	add 6,6,0
	.loc 4 4137 0 discriminator 2
	lwz 0,12(28)
	.loc 4 4129 0 discriminator 2
	lfsx 0,6,9
.LVL1603:
	.loc 4 4131 0 discriminator 2
	fmadd 0,13,12,0
.LVL1604:
	.loc 4 4137 0 discriminator 2
	slwi 7,7,2
	add 7,0,7
	.loc 4 4132 0 discriminator 2
	fmadd 13,7,0,13
	frsp 13,13
	stfsx 13,9,26
	.loc 4 4134 0 discriminator 2
	lfsx 13,9,27
	fmadd 0,13,11,0
.LVL1605:
	.loc 4 4135 0 discriminator 2
	fmadd 13,8,0,13
	.loc 4 4137 0 discriminator 2
	frsp 0,0
.LVL1606:
	.loc 4 4135 0 discriminator 2
	frsp 13,13
	stfsx 13,9,27
.LVL1607:
	.loc 4 4137 0 discriminator 2
	stfsx 0,7,9
	.loc 4 4127 0 discriminator 2
	addi 9,9,4
	lwz 0,4(28)
	cmpw 7,0,11
	bgt+ 7,.L830
.LVL1608:
.L829:
	.loc 4 4140 0 discriminator 1
	lwz 0,0(28)
	cmpw 7,29,0
	bge- 7,.L831
	fneg 8,12
	.loc 4 4140 0 is_stmt 0
	mr 11,4
	fneg 11,11
.LVL1609:
	mr 9,29
.LVL1610:
.L832:
.LBB12603:
.LBB12604:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	lwz 7,4(28)
.LBE12604:
.LBE12603:
	.loc 4 4142 0 discriminator 2
	lwz 6,12(28)
.LBB12606:
.LBB12605:
	.loc 3 2056 0 discriminator 2
	mullw 7,9,7
.LBE12605:
.LBE12606:
	.loc 4 4144 0 discriminator 2
	lfsu 13,4(11)
	.loc 4 4140 0 discriminator 2
	addi 9,9,1
.LVL1611:
	.loc 4 4142 0 discriminator 2
	slwi 7,7,2
	add 7,6,7
	lfsx 0,7,10
.LVL1612:
	.loc 4 4144 0 discriminator 2
	fmadd 13,8,0,13
	frsp 13,13
	.loc 4 4145 0 discriminator 2
	fmr 12,13
	.loc 4 4144 0 discriminator 2
	stfs 13,0(11)
	.loc 4 4147 0 discriminator 2
	lfsx 13,22,11
	.loc 4 4145 0 discriminator 2
	fmadd 0,12,10,0
.LVL1613:
	.loc 4 4147 0 discriminator 2
	fmadd 13,11,0,13
	frsp 13,13
	.loc 4 4148 0 discriminator 2
	fmr 12,13
	.loc 4 4147 0 discriminator 2
	stfsx 13,22,11
.LVL1614:
	.loc 4 4148 0 discriminator 2
	fmadd 0,12,9,0
.LVL1615:
	.loc 4 4150 0 discriminator 2
	frsp 0,0
	stfsx 0,7,10
	.loc 4 4140 0 discriminator 2
	lwz 0,0(28)
	cmpw 7,0,9
	bgt+ 7,.L832
.LVL1616:
.L831:
	.loc 4 4102 0
	cmpw 7,29,30
	beq- 7,.L851
.LVL1617:
.LBB12607:
.LBB12593:
	.loc 3 2056 0
	lwz 9,4(28)
	lwz 0,12(28)
	mullw 9,29,9
.LBE12593:
.LBE12607:
	.loc 4 4105 0
	lfsu 12,4(4)
	.loc 4 4106 0
	lfsx 13,5,26
	.loc 4 4109 0
	lfd 0,0(3)
.LBB12608:
.LBB12594:
	.loc 3 2056 0
	slwi 9,9,2
	add 9,0,9
.LBE12594:
.LBE12608:
	.loc 4 4107 0
	addi 0,5,4
	.loc 4 4103 0
	lfsx 10,9,5
.LVL1618:
	add 9,9,5
	.loc 4 4107 0
	fmadd 10,12,13,10
.LVL1619:
	.loc 4 4109 0
	fcmpu 7,10,0
	beq- 7,.L838
	.loc 4 4103 0
	mr 10,5
	.loc 4 4109 0
	mr 8,29
.LVL1620:
	.loc 4 4115 0
	lfsx 11,24,10
	.loc 4 4109 0
	mr 5,0
.LVL1621:
	.loc 4 4116 0
	lfsx 9,27,10
.LVL1622:
	.loc 4 4117 0
	fmadd 0,11,9,10
.LVL1623:
	.loc 4 4119 0
	fcmpu 7,0,6
	bne+ 7,.L852
.LVL1624:
.L838:
	.loc 4 4120 0
	li 3,0
.LVL1625:
.L827:
.LBE12610:
	.loc 4 4156 0
	addi 11,31,56
	lwz 0,4(11)
	lwz 20,-48(11)
	mtlr 0
	lwz 21,-44(11)
.LVL1626:
	lwz 22,-40(11)
	lwz 23,-36(11)
.LVL1627:
	lwz 24,-32(11)
.LVL1628:
	lwz 25,-28(11)
	lwz 26,-24(11)
.LVL1629:
	lwz 27,-20(11)
.LVL1630:
	lwz 28,-16(11)
.LVL1631:
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI191:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI192:
	.cfi_def_cfa_register 1
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
.LVL1632:
	blr
.LVL1633:
.L850:
.LCFI193:
	.cfi_restore_state
.LBB12611:
	.loc 4 4066 0
	slwi 25,23,2
	lwz 0,0(30)
	b .L813
.LVL1634:
.L851:
	.loc 4 4153 0
	li 3,1
	b .L827
.LVL1635:
.L848:
	.loc 4 4061 0
	slwi 20,6,2
	mr 21,6
	mr 25,20
	b .L813
.LVL1636:
.L811:
	.loc 4 4072 0
	lwz 4,8(4)
.LVL1637:
	mr 3,22
	slwi 20,23,2
	mr 21,23
	bl memcpy
.LVL1638:
	mr 25,20
	lwz 0,0(30)
	b .L813
.LVL1639:
.L853:
	.loc 4 4066 0
	slwi 25,23,2
	li 20,0
	lwz 0,0(30)
	b .L813
.LBE12611:
	.cfi_endproc
.LFE2602:
	.size	_ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi, .-_ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi
	.align 2
	.globl _ZN6idMatX18LU_UpdateIncrementERK6idVecXS2_Pi
	.type	_ZN6idMatX18LU_UpdateIncrementERK6idVecXS2_Pi, @function
_ZN6idMatX18LU_UpdateIncrementERK6idVecXS2_Pi:
.LFB2603:
	.loc 4 4170 0
	.cfi_startproc
.LVL1640:
	mflr 0
	stwu 1,-24(1)
.LCFI194:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	mr 28,4
	.cfi_offset 28, -16
	stw 0,28(1)
	stw 29,12(1)
	mr 29,5
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	stw 30,16(1)
	mr 30,6
	.cfi_offset 30, -8
	stw 31,20(1)
.LBB12612:
	.loc 4 4178 0
	li 6,1
.LVL1641:
.LBE12612:
	.loc 4 4170 0
	mr 31,3
	.cfi_offset 31, -4
.LBB12631:
	.loc 4 4178 0
	lwz 11,0(3)
	lwz 9,4(3)
	addi 4,11,1
.LVL1642:
	addi 5,9,1
.LVL1643:
	bl _ZN6idMatX10ChangeSizeEiib
.LVL1644:
	.loc 4 4181 0
	lwz 11,0(31)
	addic. 0,11,-1
	ble- 0,.L856
.LVL1645:
.LBB12613:
.LBB12614:
	.loc 2 1532 0
	lwz 6,4(31)
	.loc 4 4181 0
	li 10,0
	.loc 2 1532 0
	lwz 7,12(31)
	li 8,0
	mullw 5,0,6
	lwz 9,8(29)
	lfs 0,0(9)
.LVL1646:
.LBE12614:
.LBE12613:
.LBB12619:
.LBB12620:
	.loc 3 2056 0
	mullw 6,10,6
.LBE12620:
.LBE12619:
	.loc 4 4186 0
	slwi 5,5,2
	add 5,7,5
	.loc 4 4181 0
	addi 10,10,1
.LVL1647:
	.loc 4 4186 0
	slwi 6,6,2
	add 7,7,6
	lfsx 13,7,8
	fdivs 0,0,13
	stfsx 0,5,8
	.loc 4 4181 0
	lwz 11,0(31)
	addi 0,11,-1
	cmpw 7,0,10
	ble- 7,.L856
.LVL1648:
.L858:
.LBB12622:
.LBB12615:
	.loc 2 1532 0
	lwz 6,4(31)
	cmpwi 7,10,0
	lwz 7,12(31)
.LBE12615:
.LBE12622:
	.loc 4 4170 0
	slwi 8,10,2
.LBB12623:
.LBB12616:
	.loc 2 1532 0
	mullw 5,0,6
	lwz 9,8(29)
	.loc 4 4170 0
	slwi 0,6,2
.LBE12616:
.LBE12623:
.LBE12631:
	.loc 4 4183 0
	mtctr 10
.LBB12632:
.LBB12624:
.LBB12617:
	.loc 2 1532 0
	lfsx 0,9,8
.LVL1649:
	.loc 4 4170 0
	add 9,7,8
	slwi 11,5,2
	add 11,7,11
	addi 11,11,-4
	ble- 7,.L871
.LVL1650:
.L857:
	.loc 4 4170 0 is_stmt 0 discriminator 2
	lfsu 12,4(11)
	.loc 4 4184 0 is_stmt 1 discriminator 2
	lfs 13,0(9)
.LBE12617:
.LBE12624:
	.loc 4 4183 0 discriminator 2
	add 9,9,0
.LBB12625:
.LBB12618:
	.loc 4 4170 0 discriminator 2
	fneg 12,12
	.loc 4 4184 0 discriminator 2
	fmadds 0,12,13,0
.LVL1651:
.LBE12618:
.LBE12625:
	.loc 4 4183 0 discriminator 2
	bdnz .L857
.LVL1652:
.LBB12626:
.LBB12621:
	.loc 3 2056 0
	mullw 6,10,6
.LBE12621:
.LBE12626:
	.loc 4 4186 0
	slwi 5,5,2
	add 5,7,5
	.loc 4 4181 0
	addi 10,10,1
.LVL1653:
	.loc 4 4186 0
	slwi 6,6,2
	add 7,7,6
	lfsx 13,7,8
	fdivs 0,0,13
.LVL1654:
	stfsx 0,5,8
	.loc 4 4181 0
	lwz 11,0(31)
	addi 0,11,-1
	cmpw 7,0,10
	bgt+ 7,.L858
.LVL1655:
.L856:
	.loc 4 4190 0
	cmpwi 6,30,0
	beq- 6,.L859
	.loc 4 4191 0
	slwi 9,0,2
	stwx 0,30,9
	lwz 11,0(31)
.L859:
.LVL1656:
	.loc 4 4195 0 discriminator 1
	cmpwi 7,11,0
	ble- 7,.L860
	.loc 4 4195 0 is_stmt 0
	lwz 0,4(31)
	li 8,0
	li 10,0
	.loc 4 4196 0 is_stmt 1
	beq- 6,.L861
.LVL1657:
.L873:
	.loc 4 4201 0
	cmpwi 7,10,0
.LBB12627:
.LBB12628:
	.loc 2 1532 0
	lwzx 9,30,8
	lwz 7,8(28)
	slwi 9,9,2
	lfsx 0,7,9
.LVL1658:
.LBE12628:
.LBE12627:
	.loc 4 4201 0
	beq- 7,.L872
.LVL1659:
.L863:
	mullw 6,10,0
	lwz 9,12(31)
	addi 11,11,-1
	.loc 4 4170 0
	mtctr 10
	.loc 4 4201 0
	slwi 7,11,2
	.loc 4 4170 0
	slwi 0,0,2
	.loc 4 4201 0
	slwi 6,6,2
	add 6,9,6
	.loc 4 4170 0
	add 9,9,7
	addi 11,6,-4
.LVL1660:
.L865:
	.loc 4 4170 0 is_stmt 0 discriminator 2
	lfsu 12,4(11)
	.loc 4 4202 0 is_stmt 1 discriminator 2
	lfs 13,0(9)
	.loc 4 4201 0 discriminator 2
	add 9,9,0
	.loc 4 4170 0 discriminator 2
	fneg 12,12
	.loc 4 4202 0 discriminator 2
	fmadds 0,12,13,0
.LVL1661:
	.loc 4 4201 0 discriminator 2
	bdnz .L865
.LVL1662:
	.loc 4 4204 0
	stfsx 0,6,7
	.loc 4 4195 0
	addi 10,10,1
.LVL1663:
	addi 8,8,4
	lwz 11,0(31)
	cmpw 7,11,10
	ble- 7,.L860
.LVL1664:
.L874:
	lwz 0,4(31)
	.loc 4 4196 0
	bne+ 6,.L873
.LVL1665:
.L861:
	.loc 4 4201 0
	cmpwi 7,10,0
.LBB12629:
.LBB12630:
	.loc 2 1532 0
	lwz 9,8(28)
	lfsx 0,9,8
.LVL1666:
.LBE12630:
.LBE12629:
	.loc 4 4201 0
	bne+ 7,.L863
.LVL1667:
.L872:
	addi 11,11,-1
	lwz 6,12(31)
	slwi 7,11,2
.LVL1668:
	.loc 4 4195 0
	addi 10,10,1
.LVL1669:
	.loc 4 4204 0
	stfsx 0,6,7
	.loc 4 4195 0
	addi 8,8,4
	lwz 11,0(31)
	cmpw 7,11,10
	bgt+ 7,.L874
.LVL1670:
.L860:
.LBE12632:
	.loc 4 4208 0
	lwz 0,28(1)
	li 3,1
	lwz 28,8(1)
.LVL1671:
	mtlr 0
	lwz 29,12(1)
.LVL1672:
	lwz 30,16(1)
.LVL1673:
	lwz 31,20(1)
.LVL1674:
	addi 1,1,24
	.cfi_remember_state
.LCFI195:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL1675:
.L871:
.LCFI196:
	.cfi_restore_state
	li 4,1
	mtctr 4
	b .L857
	.cfi_endproc
.LFE2603:
	.size	_ZN6idMatX18LU_UpdateIncrementERK6idVecXS2_Pi, .-_ZN6idMatX18LU_UpdateIncrementERK6idVecXS2_Pi
	.align 2
	.globl _ZN6idMatX18LU_UpdateDecrementERK6idVecXS2_S2_iPi
	.type	_ZN6idMatX18LU_UpdateDecrementERK6idVecXS2_S2_iPi, @function
_ZN6idMatX18LU_UpdateDecrementERK6idVecXS2_S2_iPi:
.LFB2604:
	.loc 4 4219 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2604
.LVL1676:
	mflr 0
	stwu 1,-104(1)
.LCFI197:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	mfcr 12
	stw 18,48(1)
	mr 18,5
	.cfi_offset 18, -56
	.cfi_register 70, 12
	stw 0,108(1)
	stw 24,72(1)
	mr 24,3
	.cfi_offset 24, -32
	.cfi_offset 65, 4
	stw 25,76(1)
	mr 25,8
	.cfi_offset 25, -28
	stw 26,80(1)
	mr 26,6
	.cfi_offset 26, -24
	stw 27,84(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 28,88(1)
	mr 28,7
	.cfi_offset 28, -16
	stw 29,92(1)
	stw 31,100(1)
	mr 31,1
	.cfi_offset 31, -4
	.cfi_offset 29, -12
.LCFI198:
	.cfi_def_cfa_register 31
.LVL1677:
	stw 19,52(1)
	stw 20,56(1)
	stw 21,60(1)
	stw 22,64(1)
	stw 23,68(1)
	stw 30,96(1)
	stw 12,44(1)
.LBB12749:
	.loc 4 4228 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 29,9
	rlwinm 0,0,0,0,29
.LBB12750:
.LBB12751:
	.loc 2 1762 0
	stw 9,20(31)
.LBE12751:
.LBE12750:
	.loc 4 4228 0
	slwi 11,0,2
.LBB12754:
.LBB12752:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE12752:
.LBE12754:
	.loc 4 4228 0
	subfic 11,11,-32
.LBB12755:
.LBB12756:
	.loc 2 1507 0
	li 0,0
.LVL1678:
.LBE12756:
.LBE12755:
	.loc 4 4228 0
	stwux 10,1,11
.LBB12757:
.LBB12758:
	.loc 2 1507 0
	stw 0,12(31)
.LBE12758:
.LBE12757:
	.loc 4 4228 0
	addi 11,1,23
.LVL1679:
.LBB12761:
.LBB12759:
	.loc 2 1507 0
	stw 0,8(31)
.LBE12759:
.LBE12761:
	.loc 4 4228 0
	rlwinm 11,11,0,0,27
.LVL1680:
.LBB12762:
.LBB12760:
	.loc 2 1508 0
	stw 0,16(31)
.LBE12760:
.LBE12762:
.LBB12763:
.LBB12753:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL1681:
	.loc 2 1764 0
	bge- 7,.L878
	.cfi_offset 70, -60
	.cfi_offset 30, -8
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
.LVL1682:
	slwi 10,9,2
	li 8,0
.LVL1683:
	b .L879
.LVL1684:
.L1014:
	lwz 11,28(31)
.L879:
	addi 9,9,1
.LVL1685:
	stwx 8,11,10
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1014
	lwz 29,0(24)
.L878:
.LBE12753:
.LBE12763:
	.loc 4 4229 0
	addi 21,29,3
.LBB12764:
.LBB12765:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL1686:
.LBE12765:
.LBE12764:
	.loc 4 4229 0
	rlwinm 21,21,0,0,29
	lwz 9,0(1)
.LVL1687:
	slwi 0,21,2
.LBB12770:
.LBB12766:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE12766:
.LBE12770:
	.loc 4 4229 0
	subfic 0,0,-32
.LBB12771:
.LBB12767:
	.loc 2 1757 0
	lis 22,_ZN6idVecX7tempPtrE@ha
.LBE12767:
.LBE12771:
	.loc 4 4229 0
	stwux 9,1,0
	mr 30,29
	addi 20,1,23
	rlwinm 20,20,0,0,27
.LVL1688:
.LBB12772:
.LBB12768:
	.loc 2 1757 0
	beq- 7,.L880
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	cmplw 7,3,9
	bge- 7,.L1022
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L880
.L1027:
	addi 23,31,20
.LEHB27:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LEHE27:
.LVL1689:
.L880:
	.loc 2 1764 0
	cmpw 7,29,21
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 20,16(31)
	.loc 2 1762 0
	stw 29,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL1690:
	.loc 2 1764 0
	bge- 7,.L882
	slwi 29,29,2
.LVL1691:
	li 9,0
	b .L883
.LVL1692:
.L1023:
	lwz 20,16(31)
.L883:
	addi 30,30,1
.LVL1693:
	stwx 9,20,29
	.loc 4 4219 0
	addi 0,30,3
	.loc 2 1764 0
	addi 29,29,4
	rlwinm 0,0,0,0,29
	cmpw 7,30,0
	blt+ 7,.L1023
.L882:
.LBE12768:
.LBE12772:
	.loc 4 4231 0
	cmpwi 7,25,0
	beq- 7,.L884
.LVL1694:
	.loc 4 4234 0 discriminator 1
	lwz 0,0(24)
	li 19,0
	cmpwi 7,0,0
	ble- 7,.L885
	.loc 4 4235 0
	lwz 9,0(25)
	cmpw 7,9,28
	beq- 7,.L885
	mr 9,25
	mtctr 0
	b .L886
.LVL1695:
.L887:
	lwzu 0,4(9)
	cmpw 7,0,28
	beq- 7,.L885
.LVL1696:
.L886:
	.loc 4 4234 0
	addi 19,19,1
.LVL1697:
	bdnz .L887
	li 19,0
.LVL1698:
.L885:
.LBB12773:
.LBB12774:
	.loc 2 1544 0
	lwz 30,0(27)
.LVL1699:
.LBB12775:
.LBB12776:
	.loc 2 1748 0
	lis 29,_ZN6idVecX9tempIndexE@ha
	lwz 23,_ZN6idVecX9tempIndexE@l(29)
.LBE12776:
.LBE12775:
.LBE12774:
.LBE12773:
	.loc 4 8102 0
	addi 8,27,8
.LVL1700:
.LBB12788:
.LBB12785:
.LBB12781:
.LBB12777:
	.loc 2 1746 0
	addi 20,30,3
	rlwinm 20,20,0,0,29
	.loc 2 1748 0
	add 0,20,23
	slwi 23,23,2
	cmpwi 7,0,1024
	bgt- 7,.L1024
.L888:
	.loc 2 1753 0
	cmpw 4,30,20
	.loc 2 1751 0
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LVL1701:
	.loc 2 1751 0
	add 23,9,23
	.loc 2 1753 0
	bge- 4,.L889
	.loc 4 4219 0
	addi 11,30,-1
	mr 9,30
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 4219 0
	add 11,23,11
.LVL1702:
.L890:
	.loc 2 1753 0
	addi 9,9,1
.LVL1703:
	stwu 10,4(11)
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L890
.LVL1704:
.L889:
.LBE12777:
.LBE12781:
	.loc 2 1545 0
	lwz 0,0(27)
	cmpwi 7,0,0
	ble- 7,.L891
	.loc 4 4219 0
	addi 11,23,-4
.LBB12782:
.LBB12778:
	li 9,0
.LVL1705:
.L892:
.LBE12778:
.LBE12782:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL1706:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(27)
	cmpw 7,9,0
	blt+ 7,.L892
.LVL1707:
.L891:
.LBE12785:
.LBE12788:
.LBB12789:
.LBB12790:
.LBB12791:
.LBB12792:
	.loc 2 1709 0
	lwz 0,24(31)
	cmpw 7,20,0
	ble- 7,.L1017
	cmpwi 7,0,-1
	beq- 7,.L1017
	.loc 2 1710 0
	lwz 3,28(31)
	cmpwi 7,3,0
	beq- 7,.L896
.LEHB28:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL1708:
.L896:
	.loc 2 1713 0
	slwi 3,20,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,28(31)
	.loc 2 1714 0
	stw 20,24(31)
	b .L894
.LVL1709:
.L1017:
	.loc 2 1709 0
	lwz 4,28(31)
.LVL1710:
.L894:
	.loc 2 1716 0
	stw 30,20(31)
.LVL1711:
	.loc 2 1717 0
	bge- 4,.L897
	slwi 11,30,2
.LBE12792:
.LBE12791:
.LBE12790:
.LBE12789:
.LBB12797:
.LBB12786:
.LBB12783:
.LBB12779:
	.loc 4 4219 0
	mr 9,30
.LBE12779:
.LBE12783:
.LBE12786:
.LBE12797:
.LBB12798:
.LBB12795:
.LBB12794:
.LBB12793:
	.loc 2 1717 0
	li 10,0
.LVL1712:
.L899:
	addi 9,9,1
.LVL1713:
	stwx 10,4,11
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,28(31)
	cmpw 7,9,0
	blt+ 7,.L899
.LVL1714:
.L897:
.LBE12793:
.LBE12794:
	.loc 2 1554 0
	lis 21,SIMDProcessor@ha
	mr 5,23
	lwz 3,SIMDProcessor@l(21)
	mr 6,30
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE28:
.LBE12795:
.LBE12798:
.LBB12799:
.LBB12800:
.LBB12801:
	.loc 2 1525 0
	cmpwi 7,23,0
.LBE12801:
.LBE12800:
.LBE12799:
.LBB12808:
.LBB12796:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LBE12796:
.LBE12808:
.LBB12809:
.LBB12805:
.LBB12802:
	.loc 2 1525 0
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	beq- 7,.L984
	cmplw 7,23,9
	blt- 7,.L902
	addi 0,9,4096
	cmplw 7,23,0
	blt- 7,.L984
.L902:
	.loc 2 1526 0
	mr 3,23
	addi 23,31,20
.LEHB29:
	bl _Z10Mem_Free16Pv
.LEHE29:
	lwz 27,_ZN6idVecX9tempIndexE@l(29)
.LVL1715:
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
.L901:
.LBE12802:
.LBE12805:
.LBE12809:
.LBB12810:
.LBB12811:
	.loc 2 1544 0
	lwz 30,0(26)
.LVL1716:
.LBE12811:
.LBE12810:
.LBB12820:
.LBB12806:
.LBB12803:
	.loc 4 8102 0
	addi 8,26,8
.LVL1717:
.LBE12803:
.LBE12806:
.LBE12820:
.LBB12821:
.LBB12818:
.LBB12812:
.LBB12813:
	.loc 2 1746 0
	addi 23,30,3
	rlwinm 23,23,0,0,29
	.loc 2 1748 0
	add 0,23,27
	slwi 27,27,2
	cmpwi 7,0,1024
	ble- 7,.L903
	.loc 2 1746 0
	mr 0,23
	.loc 2 1748 0
	li 27,0
.L903:
	.loc 2 1753 0
	cmpw 4,30,23
	.loc 2 1751 0
	add 27,9,27
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LVL1718:
	.loc 2 1753 0
	bge- 4,.L904
	.loc 4 4219 0
	addi 11,30,-1
	mr 9,30
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 4219 0
	add 11,27,11
.LVL1719:
.L905:
	.loc 2 1753 0
	addi 9,9,1
.LVL1720:
	stwu 10,4(11)
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L905
.LVL1721:
.L904:
.LBE12813:
.LBE12812:
	.loc 2 1545 0
	lwz 0,0(26)
	cmpwi 7,0,0
	ble- 7,.L906
	.loc 4 4219 0
	addi 11,27,-4
.LBB12816:
.LBB12814:
	li 9,0
.LVL1722:
.L907:
.LBE12814:
.LBE12816:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL1723:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(26)
	cmpw 7,9,0
	blt+ 7,.L907
.LVL1724:
.L906:
.LBE12818:
.LBE12821:
.LBB12822:
.LBB12823:
.LBB12824:
.LBB12825:
	.loc 2 1709 0
	lwz 0,12(31)
	cmpw 7,23,0
	ble- 7,.L1018
	cmpwi 7,0,-1
	beq- 7,.L1018
	.loc 2 1710 0
	lwz 3,16(31)
	cmpwi 7,3,0
	beq- 7,.L911
.LEHB30:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL1725:
.L911:
	.loc 2 1713 0
	slwi 3,23,2
	bl _Z11Mem_Alloc16i
	stw 3,16(31)
	mr 4,3
	.loc 2 1714 0
	stw 23,12(31)
.L909:
	.loc 2 1716 0
	stw 30,8(31)
.LVL1726:
	.loc 2 1717 0
	bge- 4,.L912
	slwi 11,30,2
.LBE12825:
.LBE12824:
.LBE12823:
.LBE12822:
.LBB12833:
.LBB12819:
.LBB12817:
.LBB12815:
	.loc 4 4219 0
	mr 9,30
.LBE12815:
.LBE12817:
.LBE12819:
.LBE12833:
.LBB12834:
.LBB12830:
.LBB12828:
.LBB12826:
	.loc 2 1717 0
	li 10,0
.LVL1727:
.L914:
	addi 9,9,1
.LVL1728:
	stwx 10,4,11
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,9,0
	blt+ 7,.L914
.LVL1729:
.L912:
.LBE12826:
.LBE12828:
	.loc 2 1554 0
	lwz 3,SIMDProcessor@l(21)
	mr 5,27
	mr 6,30
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE30:
.LBE12830:
.LBE12834:
.LBB12835:
.LBB12836:
.LBB12837:
	.loc 2 1525 0
	cmpwi 7,27,0
.LBE12837:
.LBE12836:
.LBE12835:
.LBB12840:
.LBB12831:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LBE12831:
.LBE12840:
.LBB12841:
.LBB12839:
.LBB12838:
	.loc 2 1525 0
	beq- 7,.L915
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	cmplw 7,27,9
	blt- 7,.L916
	addi 9,9,4096
	cmplw 7,27,9
	blt- 7,.L915
.L916:
	.loc 2 1526 0
	mr 3,27
	addi 23,31,20
.LVL1730:
.LEHB31:
	bl _Z10Mem_Free16Pv
.L915:
.LBE12838:
.LBE12839:
.LBE12841:
	.loc 4 4245 0
	cmpw 4,19,28
	beq- 4,.L1025
	.loc 4 4246 0
	slwi 0,28,2
	slwi 30,19,2
.LVL1731:
.LBB12842:
.LBB12843:
	.loc 2 1537 0
	lwzx 10,25,0
.LBE12843:
.LBE12842:
	.loc 4 4246 0
	addi 23,31,20
.LBB12845:
.LBB12846:
	.loc 2 1537 0
	lwzx 11,25,30
.LBE12846:
.LBE12845:
	.loc 4 4246 0
	lwz 9,8(23)
.LVL1732:
.LBB12848:
.LBB12844:
	.loc 2 1537 0
	slwi 10,10,2
.LVL1733:
.LBE12844:
.LBE12848:
.LBB12849:
.LBB12847:
	slwi 11,11,2
.LVL1734:
.LBE12847:
.LBE12849:
.LBB12850:
.LBB12851:
	.file 7 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/containers/List.h"
	.loc 7 87 0
	lwzx 7,9,11
	.loc 7 86 0
	lwzx 8,9,10
.LVL1735:
	.loc 7 87 0
	stwx 7,9,10
	.loc 7 88 0
	stwx 8,9,11
.LVL1736:
.LBE12851:
.LBE12850:
.LBB12852:
.LBB12853:
	.loc 7 86 0
	lwzx 9,25,0
.LVL1737:
	.loc 7 87 0
	lwzx 11,25,30
.LVL1738:
	stwx 11,25,0
	.loc 7 88 0
	stwx 9,25,30
.LVL1739:
.L918:
.LBE12853:
.LBE12852:
.LBB12854:
.LBB12855:
	.loc 2 1537 0
	lwz 9,8(23)
.LBE12855:
.LBE12854:
	.loc 4 4250 0
	lis 20,.LC1@ha
.LVL1740:
	lfs 0,.LC1@l(20)
	.loc 4 4251 0
	li 11,0
	.loc 4 4250 0
	lfsx 13,9,0
	.loc 4 4253 0
	mr 3,24
	mr 4,23
	addi 5,31,8
	.loc 4 4250 0
	fadds 0,13,0
	.loc 4 4253 0
	mr 6,28
	mr 7,25
	.loc 4 4254 0
	li 27,0
	.loc 4 4250 0
	stfsx 0,9,0
.LVL1741:
	.loc 4 4251 0
	lwz 9,16(31)
	stwx 11,9,0
	.loc 4 4253 0
	bl _ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi
	cmpwi 7,3,0
	beq- 7,.L919
	.loc 4 4257 0
	beq- 4,.L920
.LBB12856:
.LBB12857:
	.loc 2 1769 0
	lwz 3,SIMDProcessor@l(21)
	lwz 4,8(23)
	lwz 9,0(3)
	lwz 5,0(23)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LEHE31:
.LBE12857:
.LBE12856:
.LBB12858:
.LBB12859:
	.loc 2 1537 0
	lwzx 0,25,30
.LBE12859:
.LBE12858:
	.loc 4 4265 0
	lwz 9,8(23)
	lwz 11,.LC1@l(20)
	slwi 0,0,2
	stwx 11,9,0
.LVL1742:
.LBB12860:
.LBB12861:
	.loc 2 1582 0
	lwz 30,0(26)
.LVL1743:
.LBB12862:
.LBB12863:
	.loc 2 1748 0
	lwz 9,_ZN6idVecX9tempIndexE@l(29)
	.loc 2 1746 0
	addi 19,30,3
.LVL1744:
	rlwinm 19,19,0,0,29
	.loc 2 1748 0
	slwi 27,9,2
	add 0,19,9
	cmpwi 7,0,1024
	bgt- 7,.L1026
.L921:
	.loc 2 1753 0
	cmpw 4,30,19
	.loc 2 1751 0
	lwz 11,_ZN6idVecX7tempPtrE@l(22)
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LVL1745:
	.loc 2 1751 0
	add 27,11,27
	.loc 2 1753 0
	bge- 4,.L922
	.loc 4 4219 0
	addi 11,30,-1
	mr 9,30
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 4219 0
	add 11,27,11
.LVL1746:
.L923:
	.loc 2 1753 0
	addi 9,9,1
.LVL1747:
	stwu 10,4(11)
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L923
.LVL1748:
.L922:
.LBE12863:
.LBE12862:
	.loc 2 1584 0
	lwz 3,SIMDProcessor@l(21)
	mr 4,27
	lwz 5,8(26)
	lwz 9,0(3)
	lwz 6,8(18)
	lwz 0,172(9)
	lwz 7,0(26)
	mtctr 0
.LEHB32:
	bctrl
.LEHE32:
.LVL1749:
.LBE12861:
.LBE12860:
.LBB12877:
.LBB12878:
.LBB12879:
.LBB12880:
	.loc 2 1709 0
	lwz 0,12(31)
	cmpw 7,19,0
	ble- 7,.L1019
	cmpwi 7,0,-1
	beq- 7,.L1019
	.loc 2 1710 0
	lwz 3,16(31)
	cmpwi 7,3,0
	beq- 7,.L930
.LEHB33:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.L930:
	.loc 2 1713 0
	slwi 3,19,2
	bl _Z11Mem_Alloc16i
.LEHE33:
	mr 4,3
	stw 3,16(31)
	.loc 2 1714 0
	stw 19,12(31)
	b .L928
.LVL1750:
.L1024:
.LBE12880:
.LBE12879:
.LBE12878:
.LBE12877:
.LBB12888:
.LBB12787:
.LBB12784:
.LBB12780:
	.loc 2 1746 0
	mr 0,20
	.loc 2 1748 0
	li 23,0
	b .L888
.LVL1751:
.L1022:
.LBE12780:
.LBE12784:
.LBE12787:
.LBE12888:
.LBB12889:
.LBB12769:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L880
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L1027
	b .L880
.LVL1752:
.L884:
.LBE12769:
.LBE12889:
.LBB12890:
.LBB12891:
	.loc 2 1544 0
	lwz 30,0(27)
.LVL1753:
.LBB12892:
.LBB12893:
	.loc 2 1748 0
	lis 29,_ZN6idVecX9tempIndexE@ha
	lwz 9,_ZN6idVecX9tempIndexE@l(29)
.LBE12893:
.LBE12892:
.LBE12891:
.LBE12890:
	.loc 4 8102 0
	addi 8,27,8
.LVL1754:
.LBB12902:
.LBB12900:
.LBB12897:
.LBB12894:
	.loc 2 1746 0
	addi 25,30,3
.LVL1755:
	rlwinm 25,25,0,0,29
	.loc 2 1748 0
	add 0,25,9
	slwi 9,9,2
	cmpwi 7,0,1024
	ble- 7,.L941
	li 9,0
	mr 0,25
.L941:
	.loc 2 1753 0
	cmpw 4,30,25
	.loc 2 1751 0
	lwz 26,_ZN6idVecX7tempPtrE@l(22)
.LVL1756:
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LVL1757:
	.loc 2 1751 0
	add 26,26,9
	.loc 2 1753 0
	bge- 4,.L942
	.loc 4 4219 0
	addi 11,30,-1
	mr 9,30
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 4219 0
	add 11,26,11
.LVL1758:
.L943:
	.loc 2 1753 0
	addi 9,9,1
.LVL1759:
	stwu 10,4(11)
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L943
.LVL1760:
.L942:
.LBE12894:
.LBE12897:
	.loc 2 1545 0
	lwz 0,0(27)
	cmpwi 7,0,0
	ble- 7,.L944
	.loc 4 4219 0
	addi 11,26,-4
.LBB12898:
.LBB12895:
	li 9,0
.LVL1761:
.L945:
.LBE12895:
.LBE12898:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL1762:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(27)
	cmpw 7,9,0
	blt+ 7,.L945
.LVL1763:
.L944:
.LBE12900:
.LBE12902:
.LBB12903:
.LBB12904:
.LBB12905:
.LBB12906:
	.loc 2 1709 0
	lwz 0,24(31)
	cmpw 7,25,0
	bgt- 7,.L946
.L1020:
	lwz 4,28(31)
.LVL1764:
.L947:
	.loc 2 1716 0
	stw 30,20(31)
.LVL1765:
	.loc 2 1717 0
	bge- 4,.L950
	slwi 11,30,2
.LBE12906:
.LBE12905:
.LBE12904:
.LBE12903:
.LBB12914:
.LBB12901:
.LBB12899:
.LBB12896:
	.loc 4 4219 0
	mr 9,30
.LBE12896:
.LBE12899:
.LBE12901:
.LBE12914:
.LBB12915:
.LBB12911:
.LBB12909:
.LBB12907:
	.loc 2 1717 0
	li 10,0
.LVL1766:
.L952:
	addi 9,9,1
.LVL1767:
	stwx 10,4,11
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,28(31)
	cmpw 7,9,0
	blt+ 7,.L952
.LVL1768:
.L950:
.LBE12907:
.LBE12909:
	.loc 2 1554 0
	lis 21,SIMDProcessor@ha
	mr 5,26
	lwz 3,SIMDProcessor@l(21)
	mr 6,30
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
.LEHB34:
	bctrl
.LEHE34:
.LBE12911:
.LBE12915:
.LBB12916:
.LBB12917:
.LBB12918:
	.loc 2 1525 0
	cmpwi 7,26,0
.LBE12918:
.LBE12917:
.LBE12916:
.LBB12925:
.LBB12912:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LBE12912:
.LBE12925:
.LBB12926:
.LBB12922:
.LBB12919:
	.loc 2 1525 0
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	beq- 7,.L990
	cmplw 7,26,9
	blt- 7,.L955
	addi 0,9,4096
	cmplw 7,26,0
	blt- 7,.L990
.L955:
	.loc 2 1526 0
	mr 3,26
	addi 23,31,20
.LEHB35:
	bl _Z10Mem_Free16Pv
.LEHE35:
	lwz 11,_ZN6idVecX9tempIndexE@l(29)
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
.L954:
.LBE12919:
.LBE12922:
.LBE12926:
.LBB12927:
.LBB12928:
	.loc 2 1544 0
	lwz 30,0(18)
.LVL1769:
.LBE12928:
.LBE12927:
.LBB12937:
.LBB12923:
.LBB12920:
	.loc 4 8102 0
	addi 8,18,8
.LVL1770:
.LBE12920:
.LBE12923:
.LBE12937:
.LBB12938:
.LBB12935:
.LBB12929:
.LBB12930:
	.loc 2 1746 0
	addi 26,30,3
	rlwinm 26,26,0,0,29
	.loc 2 1748 0
	add 0,26,11
	slwi 11,11,2
	cmpwi 7,0,1024
	ble- 7,.L956
	.loc 2 1746 0
	mr 0,26
	.loc 2 1748 0
	li 11,0
.L956:
	.loc 2 1753 0
	cmpw 4,30,26
	.loc 2 1751 0
	add 27,9,11
.LVL1771:
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LVL1772:
	.loc 2 1753 0
	bge- 4,.L957
	.loc 4 4219 0
	addi 11,30,-1
	mr 9,30
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 4219 0
	add 11,27,11
.LVL1773:
.L958:
	.loc 2 1753 0
	addi 9,9,1
.LVL1774:
	stwu 10,4(11)
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L958
.LVL1775:
.L957:
.LBE12930:
.LBE12929:
	.loc 2 1545 0
	lwz 0,0(18)
	cmpwi 7,0,0
	ble- 7,.L959
	.loc 4 4219 0
	addi 11,27,-4
.LBB12933:
.LBB12931:
	li 9,0
.LVL1776:
.L960:
.LBE12931:
.LBE12933:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL1777:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(18)
	cmpw 7,9,0
	blt+ 7,.L960
.LVL1778:
.L959:
.LBE12935:
.LBE12938:
.LBB12939:
.LBB12940:
.LBB12941:
.LBB12942:
	.loc 2 1709 0
	lwz 0,12(31)
	cmpw 7,26,0
	ble- 7,.L1021
	cmpwi 7,0,-1
	beq- 7,.L1021
	.loc 2 1710 0
	lwz 3,16(31)
	cmpwi 7,3,0
	beq- 7,.L964
.LEHB36:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL1779:
.L964:
	.loc 2 1713 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	stw 3,16(31)
	mr 4,3
	.loc 2 1714 0
	stw 26,12(31)
.L962:
	.loc 2 1716 0
	stw 30,8(31)
.LVL1780:
	.loc 2 1717 0
	bge- 4,.L965
	slwi 11,30,2
.LBE12942:
.LBE12941:
.LBE12940:
.LBE12939:
.LBB12950:
.LBB12936:
.LBB12934:
.LBB12932:
	.loc 4 4219 0
	mr 9,30
.LBE12932:
.LBE12934:
.LBE12936:
.LBE12950:
.LBB12951:
.LBB12947:
.LBB12945:
.LBB12943:
	.loc 2 1717 0
	li 10,0
.LVL1781:
.L967:
	addi 9,9,1
.LVL1782:
	stwx 10,4,11
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,9,0
	blt+ 7,.L967
.LVL1783:
.L965:
.LBE12943:
.LBE12945:
	.loc 2 1554 0
	lwz 3,SIMDProcessor@l(21)
	mr 5,27
	mr 6,30
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE36:
.LBE12947:
.LBE12951:
.LBB12952:
.LBB12953:
.LBB12954:
	.loc 2 1525 0
	cmpwi 7,27,0
.LBE12954:
.LBE12953:
.LBE12952:
.LBB12957:
.LBB12948:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LBE12948:
.LBE12957:
.LBB12958:
.LBB12956:
.LBB12955:
	.loc 2 1525 0
	beq- 7,.L968
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	cmplw 7,27,9
	blt- 7,.L969
	addi 9,9,4096
	cmplw 7,27,9
	blt- 7,.L968
.L969:
	.loc 2 1526 0
	mr 3,27
	addi 23,31,20
.LEHB37:
	bl _Z10Mem_Free16Pv
.LEHE37:
.L968:
.LVL1784:
.LBE12955:
.LBE12956:
.LBE12958:
.LBB12959:
.LBB12960:
	.loc 4 4287 0
	addi 23,31,20
	.loc 2 1537 0
	slwi 0,28,2
	lwz 9,8(23)
.LBE12960:
.LBE12959:
	.loc 4 4287 0
	lis 11,.LC1@ha
	lfs 0,.LC1@l(11)
	.loc 4 4288 0
	li 11,0
	.loc 4 4287 0
	lfsx 13,9,0
	.loc 4 4290 0
	mr 3,24
	mr 4,23
	addi 5,31,8
	.loc 4 4287 0
	fadds 0,13,0
	.loc 4 4290 0
	mr 6,28
	li 7,0
	.loc 4 4291 0
	li 27,0
	.loc 4 4287 0
	stfsx 0,9,0
.LVL1785:
	.loc 4 4288 0
	lwz 9,16(31)
	stwx 11,9,0
	.loc 4 4290 0
	bl _ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi
	cmpwi 7,3,0
	beq- 7,.L919
.LVL1786:
.L938:
	.loc 4 4296 0
	mr 3,24
	mr 4,28
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 4298 0
	li 27,1
.L919:
	lwz 3,16(31)
	lwz 0,12(31)
.LBB12961:
.LBB12962:
.LBB12963:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L970
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	cmplw 7,3,9
	blt- 7,.L971
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L970
.L971:
	cmpwi 7,0,-1
	beq- 7,.L970
.LEHB38:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE38:
.L970:
	.loc 4 4298 0
	lwz 3,8(23)
	lwz 0,4(23)
.LBE12963:
.LBE12962:
.LBE12961:
.LBB12964:
.LBB12965:
.LBB12966:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L972
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	cmplw 7,3,9
	blt- 7,.L973
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L972
.L973:
	cmpwi 7,0,-1
	beq- 7,.L972
.LEHB39:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE39:
.L972:
.LBE12966:
.LBE12965:
.LBE12964:
.LBE12749:
	.loc 4 4299 0
	addi 11,31,104
	mr 3,27
	lwz 0,4(11)
	lwz 12,-60(11)
	mtlr 0
	lwz 18,-56(11)
.LVL1787:
	lwz 19,-52(11)
	mtcrf 8,12
	lwz 20,-48(11)
	lwz 21,-44(11)
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
.LVL1788:
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
.LVL1789:
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI199:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI200:
	.cfi_def_cfa_register 1
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
.LVL1790:
	blr
.LVL1791:
.L1018:
.LCFI201:
	.cfi_restore_state
.LBB12986:
.LBB12967:
.LBB12832:
.LBB12829:
.LBB12827:
	.loc 2 1709 0
	lwz 4,16(31)
	b .L909
.LVL1792:
.L1019:
.LBE12827:
.LBE12829:
.LBE12832:
.LBE12967:
.LBB12968:
.LBB12885:
.LBB12883:
.LBB12881:
	lwz 4,16(31)
.L928:
	.loc 2 1716 0
	stw 30,8(31)
.LVL1793:
	.loc 2 1717 0
	bge- 4,.L931
	slwi 11,30,2
.LBE12881:
.LBE12883:
.LBE12885:
.LBE12968:
.LBB12969:
.LBB12872:
.LBB12868:
.LBB12864:
	.loc 4 4219 0
	mr 9,30
.LBE12864:
.LBE12868:
.LBE12872:
.LBE12969:
.LBB12970:
.LBB12886:
.LBB12884:
.LBB12882:
	.loc 2 1717 0
	li 10,0
.LVL1794:
.L933:
	addi 9,9,1
.LVL1795:
	stwx 10,4,11
	.loc 4 4219 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,9,0
	blt+ 7,.L933
.LVL1796:
.L931:
.LBE12882:
.LBE12884:
	.loc 2 1554 0
	lwz 3,SIMDProcessor@l(21)
	mr 5,27
	mr 6,30
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
.LEHB40:
	bctrl
.LEHE40:
.LBE12886:
.LBE12970:
.LBB12971:
.LBB12972:
.LBB12973:
	.loc 2 1525 0
	cmpwi 7,27,0
.LBE12973:
.LBE12972:
.LBE12971:
.LBB12976:
.LBB12887:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(29)
.LBE12887:
.LBE12976:
.LBB12977:
.LBB12975:
.LBB12974:
	.loc 2 1525 0
	beq- 7,.L934
	lwz 9,_ZN6idVecX7tempPtrE@l(22)
	cmplw 7,27,9
	blt- 7,.L935
	addi 9,9,4096
	cmplw 7,27,9
	blt- 7,.L934
.L935:
	.loc 2 1526 0
	mr 3,27
.LEHB41:
	bl _Z10Mem_Free16Pv
.LEHE41:
.L934:
.LBE12974:
.LBE12975:
.LBE12977:
	.loc 4 4268 0
	lfs 1,.LC1@l(20)
	mr 3,24
	mr 4,23
	addi 5,31,8
	mr 6,25
	.loc 4 4269 0
	li 27,0
	.loc 4 4268 0
	bl _ZN6idMatX16LU_UpdateRankOneERK6idVecXS2_fPi
	cmpwi 7,3,0
	beq- 7,.L919
.LVL1797:
.L920:
	.loc 4 4274 0 discriminator 1
	lwz 29,0(24)
	addi 0,29,-1
	cmpw 7,28,0
	bge- 7,.L936
	.loc 4 4219 0
	slwi 11,28,2
.LBB12978:
.LBB12873:
.LBB12869:
.LBB12865:
	mr 9,28
.LBE12865:
.LBE12869:
.LBE12873:
.LBE12978:
	add 11,25,11
.LVL1798:
.L937:
	.loc 4 4275 0 discriminator 2
	lwzu 0,4(11)
	.loc 4 4274 0 discriminator 2
	addi 9,9,1
.LVL1799:
	.loc 4 4275 0 discriminator 2
	stw 0,-4(11)
	.loc 4 4274 0 discriminator 2
	lwz 29,0(24)
	addi 0,29,-1
	cmpw 7,0,9
	bgt+ 7,.L937
.LVL1800:
.L936:
	.loc 4 4277 0 discriminator 1
	cmpwi 7,29,1
	ble- 7,.L938
	.loc 4 4219 0
	addi 25,25,-4
.LVL1801:
.LBB12979:
.LBB12874:
.LBB12870:
.LBB12866:
	li 9,0
.LVL1802:
.L940:
.LBE12866:
.LBE12870:
.LBE12874:
.LBE12979:
	.loc 4 4278 0
	lwzu 11,4(25)
	cmpw 7,28,11
	bge- 7,.L939
	.loc 4 4279 0
	addi 11,11,-1
	stw 11,0(25)
	lwz 29,0(24)
.L939:
	.loc 4 4277 0
	addi 9,9,1
.LVL1803:
	addi 0,29,-1
	cmpw 7,0,9
	bgt+ 7,.L940
	.loc 4 4296 0
	mr 3,24
	mr 4,28
	bl _ZN6idMatX16Update_DecrementEi
.LVL1804:
	.loc 4 4298 0
	li 27,1
	b .L919
.LVL1805:
.L1025:
	.loc 4 4245 0
	slwi 30,28,2
.LVL1806:
	addi 23,31,20
	mr 0,30
	b .L918
.LVL1807:
.L984:
.LBB12980:
.LBB12807:
.LBB12804:
	.loc 2 1525 0
	li 27,0
.LVL1808:
	b .L901
.LVL1809:
.L1026:
.LBE12804:
.LBE12807:
.LBE12980:
.LBB12981:
.LBB12875:
.LBB12871:
.LBB12867:
	.loc 2 1746 0
	mr 0,19
	.loc 2 1748 0
	li 27,0
	b .L921
.LVL1810:
.L946:
.LBE12867:
.LBE12871:
.LBE12875:
.LBE12981:
.LBB12982:
.LBB12913:
.LBB12910:
.LBB12908:
	.loc 2 1709 0
	cmpwi 7,0,-1
	beq- 7,.L1020
	.loc 2 1710 0
	lwz 3,28(31)
	cmpwi 7,3,0
	beq- 7,.L949
.LEHB42:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL1811:
.L949:
	.loc 2 1713 0
	slwi 3,25,2
	bl _Z11Mem_Alloc16i
.LEHE42:
	mr 4,3
	stw 3,28(31)
	.loc 2 1714 0
	stw 25,24(31)
	b .L947
.LVL1812:
.L1021:
.LBE12908:
.LBE12910:
.LBE12913:
.LBE12982:
.LBB12983:
.LBB12949:
.LBB12946:
.LBB12944:
	.loc 2 1709 0
	lwz 4,16(31)
	b .L962
.LVL1813:
.L990:
.LBE12944:
.LBE12946:
.LBE12949:
.LBE12983:
.LBB12984:
.LBB12924:
.LBB12921:
	.loc 2 1525 0
	li 11,0
	b .L954
.LVL1814:
.L998:
	mr 30,3
.LVL1815:
.LBE12921:
.LBE12924:
.LBE12984:
	.loc 4 4286 0
	mr 4,27
	mr 3,26
	addi 23,31,20
	bl _ZN6idVecXD2Ev.isra.6
.LVL1816:
.L926:
	.loc 4 4298 0
	lwz 3,12(31)
	lwz 4,16(31)
	bl _ZN6idVecXD2Ev.isra.6
.L979:
	lwz 3,4(23)
	lwz 4,8(23)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB43:
	bl _Unwind_Resume
.LEHE43:
.LVL1817:
.L997:
	mr 30,3
.LVL1818:
	.loc 4 4285 0
	mr 4,26
	mr 3,25
	addi 23,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L926
.LVL1819:
.L996:
	mr 30,3
.LVL1820:
	.loc 4 4266 0
	mr 4,27
	mr 3,19
	bl _ZN6idVecXD2Ev.isra.6
	b .L926
.LVL1821:
.L994:
	.loc 4 4242 0
	mr 4,23
	mr 30,3
.LVL1822:
	mr 3,20
	addi 23,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L926
.LVL1823:
.L993:
	mr 30,3
	b .L926
.LVL1824:
.L995:
	mr 30,3
.LVL1825:
	.loc 4 4243 0
	mr 4,27
	mr 3,23
	addi 23,31,20
.LVL1826:
	bl _ZN6idVecXD2Ev.isra.6
.LVL1827:
	b .L926
.LVL1828:
.L1000:
	mr 30,3
.LVL1829:
.LBB12985:
.LBB12876:
	.loc 2 1591 0
	mr 4,27
	mr 3,19
	bl _ZN6idVecXD2Ev.isra.6
	b .L926
.LVL1830:
.L999:
	mr 30,3
	b .L979
.LBE12876:
.LBE12985:
.LBE12986:
	.cfi_endproc
.LFE2604:
	.section	.gcc_except_table
.LLSDA2604:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2604-.LLSDACSB2604
.LLSDACSB2604:
	.uleb128 .LEHB27-.LFB2604
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L993-.LFB2604
	.uleb128 0
	.uleb128 .LEHB28-.LFB2604
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L994-.LFB2604
	.uleb128 0
	.uleb128 .LEHB29-.LFB2604
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L993-.LFB2604
	.uleb128 0
	.uleb128 .LEHB30-.LFB2604
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L995-.LFB2604
	.uleb128 0
	.uleb128 .LEHB31-.LFB2604
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L993-.LFB2604
	.uleb128 0
	.uleb128 .LEHB32-.LFB2604
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L1000-.LFB2604
	.uleb128 0
	.uleb128 .LEHB33-.LFB2604
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L996-.LFB2604
	.uleb128 0
	.uleb128 .LEHB34-.LFB2604
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L997-.LFB2604
	.uleb128 0
	.uleb128 .LEHB35-.LFB2604
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L993-.LFB2604
	.uleb128 0
	.uleb128 .LEHB36-.LFB2604
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L998-.LFB2604
	.uleb128 0
	.uleb128 .LEHB37-.LFB2604
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L993-.LFB2604
	.uleb128 0
	.uleb128 .LEHB38-.LFB2604
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L999-.LFB2604
	.uleb128 0
	.uleb128 .LEHB39-.LFB2604
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB2604
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L996-.LFB2604
	.uleb128 0
	.uleb128 .LEHB41-.LFB2604
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L993-.LFB2604
	.uleb128 0
	.uleb128 .LEHB42-.LFB2604
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L997-.LFB2604
	.uleb128 0
	.uleb128 .LEHB43-.LFB2604
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE2604:
	.section	".text"
	.size	_ZN6idMatX18LU_UpdateDecrementERK6idVecXS2_S2_iPi, .-_ZN6idMatX18LU_UpdateDecrementERK6idVecXS2_S2_iPi
	.align 2
	.globl _ZNK6idMatX8LU_SolveER6idVecXRKS0_PKi
	.type	_ZNK6idMatX8LU_SolveER6idVecXRKS0_PKi, @function
_ZNK6idMatX8LU_SolveER6idVecXRKS0_PKi:
.LFB2605:
	.loc 4 4308 0
	.cfi_startproc
.LVL1831:
.LBB12987:
	.loc 4 4315 0
	lwz 0,0(3)
	cmpwi 7,0,0
	ble- 7,.L1029
	cmpwi 6,6,0
	li 7,0
	li 8,0
.LVL1832:
.L1035:
	.loc 4 4316 0
	beq- 6,.L1030
.LVL1833:
	.loc 4 4321 0
	cmpwi 7,8,0
.LBB12988:
.LBB12989:
	.loc 2 1532 0
	lwzx 0,6,7
	lwz 9,8(5)
	slwi 0,0,2
.LBE12989:
.LBE12988:
	.loc 4 4317 0
	lfsx 0,9,0
.LVL1834:
	.loc 4 4321 0
	beq- 7,.L1045
.LVL1835:
.L1032:
	lwz 11,4(3)
	.loc 4 4308 0
	mtctr 8
	lwz 0,12(3)
	li 9,0
	.loc 4 4321 0
	mullw 11,8,11
	lwz 10,8(4)
	.loc 4 4308 0
	slwi 11,11,2
	add 11,0,11
	addi 11,11,-4
.LVL1836:
.L1034:
	.loc 4 4322 0 discriminator 2
	slwi 0,9,2
	lfsu 12,4(11)
	lfsx 13,10,0
	.loc 4 4321 0 discriminator 2
	addi 9,9,1
.LVL1837:
	.loc 4 4322 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL1838:
	.loc 4 4321 0 discriminator 2
	bdnz .L1034
.LVL1839:
	.loc 4 4324 0
	frsp 0,0
.LVL1840:
	.loc 4 4315 0
	addi 8,8,1
.LVL1841:
	.loc 4 4324 0
	stfsx 0,10,7
	.loc 4 4315 0
	addi 7,7,4
	lwz 0,0(3)
	cmpw 7,0,8
	bgt+ 7,.L1035
.LVL1842:
.L1029:
	.loc 4 4328 0
	addic. 8,0,-1
	bltlr- 0
	.loc 4 4308 0
	addi 6,8,1
.LVL1843:
	.loc 4 4328 0
	slwi 9,0,2
	.loc 4 4330 0
	cmpw 7,6,0
	.loc 4 8102 0
	lwz 11,8(4)
.LVL1844:
.LBB12990:
.LBB12991:
	.loc 2 1537 0
	addi 7,9,-4
.LBE12991:
.LBE12990:
	.loc 4 4329 0
	lfsx 0,11,7
.LVL1845:
	.loc 4 4330 0
	bge- 7,.L1046
.LVL1846:
.L1037:
	lwz 10,4(3)
	subf 0,6,0
	lwz 5,12(3)
	mtctr 0
	mullw 10,8,10
	slwi 10,10,2
	add 10,5,10
.LVL1847:
.L1039:
	.loc 4 4331 0 discriminator 2
	lfsx 12,10,9
	lfsx 13,11,9
	.loc 4 4330 0 discriminator 2
	addi 9,9,4
	.loc 4 4331 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL1848:
	.loc 4 4330 0 discriminator 2
	bdnz .L1039
.LVL1849:
	.loc 4 4333 0
	lfsx 13,10,7
	.loc 4 4328 0
	cmpwi 7,8,0
	mr 9,7
	addi 8,8,-1
.LVL1850:
	.loc 4 4333 0
	fdiv 0,0,13
.LVL1851:
	frsp 0,0
	stfsx 0,11,7
	.loc 4 4328 0
	beqlr- 7
.LVL1852:
.L1047:
	lwz 0,0(3)
	.loc 4 4308 0
	addi 6,8,1
	.loc 4 8102 0
	lwz 11,8(4)
.LVL1853:
.LBB12993:
.LBB12992:
	.loc 2 1537 0
	addi 7,9,-4
.LBE12992:
.LBE12993:
	.loc 4 4330 0
	cmpw 7,6,0
	.loc 4 4329 0
	lfsx 0,11,7
.LVL1854:
	.loc 4 4330 0
	blt+ 7,.L1037
.L1046:
	lwz 0,4(3)
	.loc 4 4328 0
	cmpwi 7,8,0
	.loc 4 4330 0
	lwz 10,12(3)
	.loc 4 4328 0
	mr 9,7
	.loc 4 4330 0
	mullw 0,8,0
	.loc 4 4328 0
	addi 8,8,-1
.LVL1855:
	.loc 4 4330 0
	slwi 0,0,2
	add 10,10,0
	.loc 4 4333 0
	lfsx 13,10,7
	fdiv 0,0,13
.LVL1856:
	frsp 0,0
	stfsx 0,11,7
	.loc 4 4328 0
	bne+ 7,.L1047
	blr
.LVL1857:
.L1030:
	.loc 4 4321 0
	cmpwi 7,8,0
.LBB12994:
.LBB12995:
	.loc 2 1532 0
	lwz 9,8(5)
.LBE12995:
.LBE12994:
	.loc 4 4319 0
	lfsx 0,9,7
.LVL1858:
	.loc 4 4321 0
	bne+ 7,.L1032
.LVL1859:
.L1045:
	.loc 4 4324 0
	frsp 0,0
.LVL1860:
	.loc 4 4321 0
	lwz 10,8(4)
.LVL1861:
	.loc 4 4315 0
	addi 8,8,1
.LVL1862:
	.loc 4 4324 0
	stfsx 0,10,7
	.loc 4 4315 0
	addi 7,7,4
	lwz 0,0(3)
	cmpw 7,0,8
	bgt+ 7,.L1035
	b .L1029
.LBE12987:
	.cfi_endproc
.LFE2605:
	.size	_ZNK6idMatX8LU_SolveER6idVecXRKS0_PKi, .-_ZNK6idMatX8LU_SolveER6idVecXRKS0_PKi
	.align 2
	.globl _ZNK6idMatX10LU_InverseERS_PKi
	.type	_ZNK6idMatX10LU_InverseERS_PKi, @function
_ZNK6idMatX10LU_InverseERS_PKi:
.LFB2606:
	.loc 4 4344 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2606
.LVL1863:
	mflr 0
	stwu 1,-80(1)
.LCFI202:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	stw 26,56(1)
	stw 0,84(1)
	stw 27,60(1)
	mr 27,5
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.cfi_offset 26, -24
	stw 29,68(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,72(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,76(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI203:
	.cfi_def_cfa_register 31
.LVL1864:
	stw 23,44(1)
	stw 24,48(1)
	stw 25,52(1)
	stw 28,64(1)
.LBB13026:
	.loc 4 4350 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 26,9
	rlwinm 0,0,0,0,29
.LBB13027:
.LBB13028:
	.loc 2 1762 0
	stw 9,20(31)
.LBE13028:
.LBE13027:
	.loc 4 4350 0
	slwi 11,0,2
.LBB13031:
.LBB13029:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE13029:
.LBE13031:
	.loc 4 4350 0
	subfic 11,11,-32
.LBB13032:
.LBB13033:
	.loc 2 1507 0
	li 0,0
.LVL1865:
.LBE13033:
.LBE13032:
	.loc 4 4350 0
	stwux 10,1,11
.LBB13034:
.LBB13035:
	.loc 2 1507 0
	stw 0,12(31)
.LBE13035:
.LBE13034:
	.loc 4 4350 0
	addi 11,1,23
.LVL1866:
.LBB13038:
.LBB13036:
	.loc 2 1507 0
	stw 0,8(31)
.LBE13036:
.LBE13038:
	.loc 4 4350 0
	rlwinm 11,11,0,0,27
.LVL1867:
.LBB13039:
.LBB13037:
	.loc 2 1508 0
	stw 0,16(31)
.LBE13037:
.LBE13039:
.LBB13040:
.LBB13030:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL1868:
	.loc 2 1764 0
	bge- 7,.L1051
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	slwi 10,9,2
	li 8,0
	b .L1052
.LVL1869:
.L1078:
	lwz 11,28(31)
.L1052:
	addi 9,9,1
.LVL1870:
	stwx 8,11,10
	.loc 4 4344 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1078
	lwz 26,0(29)
.L1051:
.LBE13030:
.LBE13040:
	.loc 4 4351 0
	addi 25,26,3
.LBB13041:
.LBB13042:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL1871:
.LBE13042:
.LBE13041:
	.loc 4 4351 0
	rlwinm 25,25,0,0,29
	lwz 9,0(1)
.LVL1872:
	slwi 0,25,2
.LBB13047:
.LBB13043:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE13043:
.LBE13047:
	.loc 4 4351 0
	subfic 0,0,-32
	mr 28,26
	stwux 9,1,0
.LVL1873:
	addi 24,1,23
	rlwinm 24,24,0,0,27
.LVL1874:
.LBB13048:
.LBB13044:
	.loc 2 1757 0
	beq- 7,.L1053
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1079
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L1053
.L1086:
.LEHB44:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL1875:
.L1053:
	.loc 2 1764 0
	cmpw 7,26,25
	.loc 2 1763 0
	li 0,-1
.LBE13044:
.LBE13048:
	.loc 4 4351 0
	mr 4,24
.LBB13049:
.LBB13045:
	.loc 2 1761 0
	stw 24,16(31)
	.loc 2 1762 0
	stw 26,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL1876:
	.loc 2 1764 0
	bge- 7,.L1055
	slwi 26,26,2
.LVL1877:
	li 9,0
	b .L1057
.LVL1878:
.L1080:
	lwz 4,16(31)
.L1057:
	addi 28,28,1
.LVL1879:
	stwx 9,4,26
	.loc 4 4344 0
	addi 0,28,3
	.loc 2 1764 0
	addi 26,26,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L1080
	lwz 28,8(31)
.LVL1880:
	lwz 4,16(31)
.L1055:
.LBE13045:
.LBE13049:
.LBB13050:
.LBB13051:
	.loc 2 1769 0
	lis 9,SIMDProcessor@ha
	mr 5,28
	lwz 3,SIMDProcessor@l(9)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL1881:
.LBE13051:
.LBE13050:
	.loc 4 4353 0
	lwz 25,0(29)
	lwz 24,4(29)
.LVL1882:
.LBB13052:
.LBB13053:
	.loc 3 2250 0
	lwz 0,8(30)
	.loc 3 2249 0
	mullw 28,25,24
	addi 26,28,3
	rlwinm 26,26,0,0,29
.LVL1883:
	.loc 3 2250 0
	cmpw 7,26,0
	ble- 7,.L1058
	cmpwi 7,0,-1
	beq- 7,.L1058
	.loc 3 2251 0
	lwz 3,12(30)
	cmpwi 7,3,0
	beq- 7,.L1059
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL1884:
.L1059:
	.loc 3 2254 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
.LEHE44:
	stw 3,12(30)
	.loc 3 2255 0
	stw 26,8(30)
.L1058:
	.loc 3 2259 0
	cmpw 7,28,26
	.loc 3 2257 0
	stw 25,0(30)
	.loc 3 2258 0
	stw 24,4(30)
.LVL1885:
	.loc 3 2259 0
	bge- 7,.L1060
	slwi 9,28,2
	li 10,0
.L1061:
	addi 28,28,1
.LVL1886:
	lwz 11,12(30)
	.loc 4 4344 0
	addi 0,28,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,28,0
	addi 9,9,4
	blt+ 7,.L1061
.L1060:
.LVL1887:
.LBE13053:
.LBE13052:
	.loc 4 4355 0 discriminator 1
	lwz 0,0(29)
	addi 28,31,20
.LVL1888:
	cmpwi 7,0,0
	ble- 7,.L1062
	lis 9,.LC1@ha
	.loc 4 4355 0 is_stmt 0
	li 25,0
.LVL1889:
	.loc 4 4357 0 is_stmt 1
	lwz 23,.LC1@l(9)
	.loc 4 4362 0
	li 24,0
.LVL1890:
.L1065:
	.loc 4 4357 0
	lwz 9,16(31)
	.loc 4 4344 0
	slwi 26,25,2
	.loc 4 4358 0
	mr 3,29
	mr 4,28
	.loc 4 4357 0
	stwx 23,9,26
	.loc 4 4358 0
	addi 5,31,8
	mr 6,27
	bl _ZNK6idMatX8LU_SolveER6idVecXRKS0_PKi
.LVL1891:
	.loc 4 4359 0
	lwz 0,0(29)
	cmpwi 7,0,0
	ble- 7,.L1063
	lwz 11,4(30)
	li 9,0
	b .L1064
.LVL1892:
.L1081:
	lwz 11,4(30)
.LVL1893:
.L1064:
.LBB13054:
.LBB13055:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE13055:
.LBE13054:
	.loc 4 4360 0 discriminator 2
	lwz 8,8(28)
	slwi 0,9,2
	lwz 10,12(30)
	lwzx 0,8,0
	.loc 4 4359 0 discriminator 2
	addi 9,9,1
.LVL1894:
	.loc 4 4360 0 discriminator 2
	slwi 11,11,2
	add 11,10,11
	stwx 0,11,26
	.loc 4 4359 0 discriminator 2
	lwz 0,0(29)
	cmpw 7,0,9
	bgt+ 7,.L1081
.LVL1895:
.L1063:
	.loc 4 4362 0
	lwz 9,16(31)
	.loc 4 4355 0
	addi 25,25,1
.LVL1896:
	.loc 4 4362 0
	stwx 24,9,26
	.loc 4 4355 0
	lwz 0,0(29)
	cmpw 7,0,25
	bgt+ 7,.L1065
.LVL1897:
.L1062:
	.loc 4 4363 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB13056:
.LBB13057:
.LBB13058:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1066
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1082
	cmpwi 7,0,-1
	beq- 7,.L1066
.L1085:
.LEHB45:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE45:
.L1066:
	.loc 4 4363 0 discriminator 1
	lwz 3,8(28)
	lwz 0,4(28)
.LBE13058:
.LBE13057:
.LBE13056:
.LBB13061:
.LBB13062:
.LBB13063:
	.loc 2 1525 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L1048
	.loc 2 1525 0 is_stmt 0
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1083
	cmpwi 7,0,-1
	beq- 7,.L1048
.L1084:
.LEHB46:
	.loc 2 1526 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE46:
.L1048:
.LBE13063:
.LBE13062:
.LBE13061:
.LBE13026:
	.loc 4 4364 0
	addi 11,31,80
	lwz 0,4(11)
	lwz 23,-36(11)
	mtlr 0
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
.LVL1898:
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL1899:
	lwz 30,-8(11)
.LVL1900:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI204:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI205:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
.LVL1901:
	blr
.LVL1902:
.L1083:
.LCFI206:
	.cfi_restore_state
.LBB13069:
.LBB13066:
.LBB13065:
.LBB13064:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1048
	cmpwi 7,0,-1
	bne+ 7,.L1084
	b .L1048
.L1082:
.LBE13064:
.LBE13065:
.LBE13066:
.LBB13067:
.LBB13060:
.LBB13059:
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1066
	cmpwi 7,0,-1
	bne+ 7,.L1085
	b .L1066
.LVL1903:
.L1079:
.LBE13059:
.LBE13060:
.LBE13067:
.LBB13068:
.LBB13046:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1053
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L1086
	b .L1053
.LVL1904:
.L1073:
	mr 30,3
.LVL1905:
.L1071:
.LBE13046:
.LBE13068:
	.loc 4 4363 0
	lwz 3,4(28)
	lwz 4,8(28)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB47:
	bl _Unwind_Resume
.LEHE47:
.LVL1906:
.L1072:
	mr 30,3
.LVL1907:
	lwz 4,16(31)
	lwz 3,12(31)
	addi 28,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L1071
.LBE13069:
	.cfi_endproc
.LFE2606:
	.section	.gcc_except_table
.LLSDA2606:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2606-.LLSDACSB2606
.LLSDACSB2606:
	.uleb128 .LEHB44-.LFB2606
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L1072-.LFB2606
	.uleb128 0
	.uleb128 .LEHB45-.LFB2606
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L1073-.LFB2606
	.uleb128 0
	.uleb128 .LEHB46-.LFB2606
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB2606
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE2606:
	.section	".text"
	.size	_ZNK6idMatX10LU_InverseERS_PKi, .-_ZNK6idMatX10LU_InverseERS_PKi
	.align 2
	.globl _ZNK6idMatX16LU_UnpackFactorsERS_S0_
	.type	_ZNK6idMatX16LU_UnpackFactorsERS_S0_, @function
_ZNK6idMatX16LU_UnpackFactorsERS_S0_:
.LFB2607:
	.loc 4 4373 0
	.cfi_startproc
.LVL1908:
	mflr 0
	stwu 1,-40(1)
.LCFI207:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 25,12(1)
	stw 28,24(1)
	stw 29,28(1)
	mr 29,5
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	stw 30,32(1)
	mr 30,4
	.cfi_offset 30, -8
.LVL1909:
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 24,8(1)
	stw 26,16(1)
	stw 27,20(1)
.LBB13091:
	.loc 4 4376 0
	lwz 26,0(3)
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 65, 4
.LVL1910:
	lwz 27,4(3)
.LVL1911:
.LBB13092:
.LBB13093:
.LBB13094:
.LBB13095:
	.loc 3 2250 0
	lwz 0,8(4)
	.loc 3 2249 0
	mullw 28,26,27
	addi 25,28,3
	rlwinm 25,25,0,0,29
.LVL1912:
	.loc 3 2250 0
	cmpw 7,25,0
	ble- 7,.L1112
.LVL1913:
	cmpwi 7,0,-1
	beq- 7,.L1112
	.loc 3 2251 0
	lwz 3,12(4)
.LVL1914:
	cmpwi 7,3,0
	beq- 7,.L1091
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL1915:
.L1091:
	.loc 3 2254 0
	slwi 3,25,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 25,8(30)
	.loc 3 2254 0
	mr 4,3
	stw 3,12(30)
	b .L1089
.L1112:
	.loc 3 2250 0
	lwz 4,12(30)
.L1089:
	.loc 3 2259 0
	cmpw 7,28,25
	.loc 3 2257 0
	stw 26,0(30)
	.loc 3 2258 0
	stw 27,4(30)
.LVL1916:
	.loc 3 2259 0
	bge- 7,.L1092
	slwi 9,28,2
	li 11,0
	b .L1094
.L1114:
	lwz 4,12(30)
.L1094:
	addi 28,28,1
.LVL1917:
	stwx 11,4,9
	.loc 4 4373 0
	addi 0,28,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L1114
	lwz 28,0(30)
.LVL1918:
	lwz 0,4(30)
	lwz 4,12(30)
	mullw 28,28,0
.L1092:
.LBE13095:
.LBE13094:
	.loc 3 2302 0
	lis 27,SIMDProcessor@ha
.LVL1919:
	mr 5,28
	lwz 3,SIMDProcessor@l(27)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL1920:
.LBE13093:
.LBE13092:
	.loc 4 4377 0
	lwz 24,0(31)
	lwz 25,4(31)
.LVL1921:
.LBB13096:
.LBB13097:
.LBB13098:
.LBB13099:
	.loc 3 2250 0
	lwz 0,8(29)
	.loc 3 2249 0
	mullw 28,24,25
	addi 26,28,3
.LVL1922:
	rlwinm 26,26,0,0,29
.LVL1923:
	.loc 3 2250 0
	cmpw 7,26,0
	ble- 7,.L1113
	cmpwi 7,0,-1
	beq- 7,.L1113
	.loc 3 2251 0
	lwz 3,12(29)
	cmpwi 7,3,0
	beq- 7,.L1098
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL1924:
.L1098:
	.loc 3 2254 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 26,8(29)
	.loc 3 2254 0
	mr 4,3
	stw 3,12(29)
	b .L1096
.L1113:
	.loc 3 2250 0
	lwz 4,12(29)
.L1096:
	.loc 3 2259 0
	cmpw 7,28,26
	.loc 3 2257 0
	stw 24,0(29)
	.loc 3 2258 0
	stw 25,4(29)
.LVL1925:
	.loc 3 2259 0
	bge- 7,.L1099
	slwi 9,28,2
	li 11,0
	b .L1101
.L1115:
	lwz 4,12(29)
.L1101:
	addi 28,28,1
.LVL1926:
	stwx 11,4,9
	.loc 4 4373 0
	addi 0,28,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L1115
	lwz 28,0(29)
.LVL1927:
	lwz 0,4(29)
	lwz 4,12(29)
	mullw 28,28,0
.L1099:
.LBE13099:
.LBE13098:
	.loc 3 2302 0
	lwz 3,SIMDProcessor@l(27)
	mr 5,28
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL1928:
.LBE13097:
.LBE13096:
	.loc 4 4378 0
	lwz 0,0(31)
	cmpwi 7,0,0
	ble- 7,.L1087
	.loc 4 4382 0
	lis 10,.LC1@ha
	.loc 4 4378 0
	lwz 11,4(30)
	.loc 4 4382 0
	lwz 4,.LC1@l(10)
	.loc 4 4378 0
	li 5,0
	li 9,0
.LVL1929:
.L1103:
.LBB13100:
.LBB13101:
	.loc 3 2056 0
	mullw 11,9,11
.LBE13101:
.LBE13100:
	.loc 4 4382 0
	lwz 0,12(30)
	slwi 11,11,2
	add 11,0,11
	stwx 4,11,5
.LVL1930:
	.loc 4 4383 0
	lwz 0,4(31)
	cmpw 7,0,9
	ble- 7,.L1105
	mr 11,5
	mr 10,9
.LVL1931:
.L1106:
.LBB13102:
.LBB13103:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(29)
.LBE13103:
.LBE13102:
.LBB13105:
.LBB13106:
	.loc 3 2051 0 discriminator 2
	mullw 0,9,0
.LBE13106:
.LBE13105:
	.loc 4 4384 0 discriminator 2
	lwz 6,12(31)
	.loc 4 4383 0 discriminator 2
	addi 10,10,1
.LVL1932:
	.loc 4 4384 0 discriminator 2
	lwz 7,12(29)
.LBB13107:
.LBB13104:
	.loc 3 2056 0 discriminator 2
	mullw 8,9,8
.LBE13104:
.LBE13107:
	.loc 4 4384 0 discriminator 2
	slwi 0,0,2
	add 6,6,0
	lwzx 0,6,11
	slwi 8,8,2
	add 8,7,8
	stwx 0,8,11
	.loc 4 4383 0 discriminator 2
	addi 11,11,4
	lwz 0,4(31)
	cmpw 7,0,10
	bgt+ 7,.L1106
.LVL1933:
.L1105:
	.loc 4 4378 0
	lwz 0,0(31)
	addi 9,9,1
.LVL1934:
	cmpw 7,0,9
	ble- 7,.L1087
.LVL1935:
	.loc 4 4379 0 discriminator 1
	cmpwi 7,9,0
	li 11,0
	mtctr 9
	ble- 7,.L1107
.LVL1936:
.L1109:
.LBB13108:
.LBB13109:
	.loc 3 2051 0 discriminator 2
	lwz 6,4(31)
.LBE13109:
.LBE13108:
	.loc 4 4373 0 discriminator 2
	slwi 10,11,2
.LVL1937:
.LBB13111:
.LBB13112:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(30)
.LBE13112:
.LBE13111:
	.loc 4 4379 0 discriminator 2
	addi 11,11,1
.LVL1938:
.LBB13114:
.LBB13110:
	.loc 3 2051 0 discriminator 2
	mullw 6,9,6
.LBE13110:
.LBE13114:
	.loc 4 4380 0 discriminator 2
	lwz 0,12(31)
	lwz 7,12(30)
.LBB13115:
.LBB13113:
	.loc 3 2056 0 discriminator 2
	mullw 8,9,8
.LBE13113:
.LBE13115:
	.loc 4 4380 0 discriminator 2
	slwi 6,6,2
	add 6,0,6
	lwzx 0,6,10
	slwi 8,8,2
	add 8,7,8
	stwx 0,8,10
	.loc 4 4379 0 discriminator 2
	bdnz .L1109
.LVL1939:
.L1107:
	.loc 4 4379 0 is_stmt 0
	lwz 11,4(30)
	addi 5,5,4
	b .L1103
.LVL1940:
.L1087:
.LBE13091:
	.loc 4 4387 0 is_stmt 1
	lwz 0,44(1)
	lwz 24,8(1)
.LVL1941:
	mtlr 0
	lwz 25,12(1)
.LVL1942:
	lwz 26,16(1)
.LVL1943:
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL1944:
	lwz 30,32(1)
.LVL1945:
	lwz 31,36(1)
.LVL1946:
	addi 1,1,40
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
	blr
	.cfi_endproc
.LFE2607:
	.size	_ZNK6idMatX16LU_UnpackFactorsERS_S0_, .-_ZNK6idMatX16LU_UnpackFactorsERS_S0_
	.align 2
	.globl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.type	_ZNK6idMatX18LU_MultiplyFactorsERS_PKi, @function
_ZNK6idMatX18LU_MultiplyFactorsERS_PKi:
.LFB2608:
	.loc 4 4396 0
	.cfi_startproc
.LVL1947:
	mflr 0
	stwu 1,-40(1)
.LCFI209:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 25,12(1)
	stw 26,16(1)
	mr 26,5
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	stw 27,20(1)
	stw 28,24(1)
	mr 28,4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL1948:
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 29,28(1)
	stw 30,32(1)
.LBB13128:
	.loc 4 4400 0
	lwz 29,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL1949:
	lwz 30,4(3)
.LVL1950:
.LBB13129:
.LBB13130:
	.loc 3 2250 0
	lwz 0,8(4)
	.loc 3 2249 0
	mullw 27,29,30
	addi 25,27,3
	rlwinm 25,25,0,0,29
.LVL1951:
	.loc 3 2250 0
	cmpw 7,25,0
	ble- 7,.L1117
	cmpwi 7,0,-1
	beq- 7,.L1117
	.loc 3 2251 0
	lwz 3,12(4)
.LVL1952:
	cmpwi 7,3,0
	beq- 7,.L1118
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL1953:
.L1118:
	.loc 3 2254 0
	slwi 3,25,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 25,8(28)
	.loc 3 2254 0
	stw 3,12(28)
.L1117:
	.loc 3 2259 0
	cmpw 7,27,25
	.loc 3 2257 0
	stw 29,0(28)
	.loc 3 2258 0
	stw 30,4(28)
.LVL1954:
	.loc 3 2259 0
	bge- 7,.L1119
	slwi 9,27,2
	li 10,0
.L1120:
	addi 27,27,1
.LVL1955:
	lwz 11,12(28)
	.loc 4 4396 0
	addi 0,27,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,27,0
	addi 9,9,4
	blt+ 7,.L1120
.L1119:
.LVL1956:
.LBE13130:
.LBE13129:
	.loc 4 4402 0 discriminator 1
	lwz 9,0(31)
	cmpwi 7,9,0
	ble- 7,.L1116
	lwz 0,4(31)
	cmpwi 0,26,0
	.loc 4 4402 0 is_stmt 0
	li 7,0
	.loc 4 4415 0 is_stmt 1
	lis 4,.LC11@ha
.LVL1957:
.L1129:
	.loc 4 4404 0
	beq- 0,.L1130
	.loc 4 4396 0
	slwi 11,7,2
	.loc 4 4405 0
	lwzx 5,26,11
.LVL1958:
.L1122:
	.loc 4 4411 0
	cmpwi 7,0,0
	ble- 7,.L1123
	cmpwi 1,7,0
	li 6,0
	li 10,0
.LVL1959:
.L1128:
	.loc 4 4412 0
	cmpw 7,7,10
	.loc 4 4415 0
	lfd 0,.LC11@l(4)
	.loc 4 4412 0
	bgt- 7,.L1124
.LVL1960:
.LBB13131:
.LBB13132:
	.loc 3 2051 0
	mullw 9,7,0
.LBE13132:
.LBE13131:
	.loc 4 4413 0
	lwz 11,12(31)
	slwi 9,9,2
	add 9,11,9
	lfsx 0,9,6
.LVL1961:
.L1124:
	.loc 4 4417 0 discriminator 1
	beq- 1,.L1125
	.loc 4 4417 0 is_stmt 0
	mullw 8,7,0
	lwz 9,12(31)
	.loc 4 4396 0 is_stmt 1
	slwi 0,0,2
	add 11,9,6
	slwi 8,8,2
	add 9,9,8
	addi 8,9,-4
	li 9,0
.LVL1962:
.L1126:
	.loc 4 4418 0 discriminator 5
	lfs 13,0(11)
	.loc 4 4417 0 discriminator 5
	addi 9,9,1
.LVL1963:
	.loc 4 4418 0 discriminator 5
	lfsu 12,4(8)
	.loc 4 4417 0 discriminator 5
	cmpw 6,9,10
	cmpw 7,9,7
	.loc 4 4396 0 discriminator 5
	add 11,11,0
	.loc 4 4418 0 discriminator 5
	fmuls 13,12,13
	fadd 0,0,13
.LVL1964:
	.loc 4 4417 0 discriminator 5
	ble- 6,.L1127
.LVL1965:
.L1125:
.LBB13133:
.LBB13134:
	.loc 3 2056 0
	lwz 9,4(28)
.LBE13134:
.LBE13133:
	.loc 4 4420 0
	frsp 0,0
.LVL1966:
	lwz 0,12(28)
	.loc 4 4411 0
	addi 10,10,1
.LVL1967:
.LBB13136:
.LBB13135:
	.loc 3 2056 0
	mullw 9,5,9
.LBE13135:
.LBE13136:
	.loc 4 4420 0
	slwi 9,9,2
	add 9,0,9
	stfsx 0,9,6
	.loc 4 4411 0
	addi 6,6,4
	lwz 0,4(31)
	cmpw 7,0,10
	bgt+ 7,.L1128
	lwz 9,0(31)
.LVL1968:
.L1123:
	.loc 4 4402 0
	addi 7,7,1
.LVL1969:
	cmpw 7,9,7
	bgt+ 7,.L1129
.LVL1970:
.L1116:
.LBE13128:
	.loc 4 4423 0
	lwz 0,44(1)
	lwz 25,12(1)
.LVL1971:
	mtlr 0
	lwz 26,16(1)
.LVL1972:
	lwz 27,20(1)
.LVL1973:
	lwz 28,24(1)
.LVL1974:
	lwz 29,28(1)
.LVL1975:
	lwz 30,32(1)
.LVL1976:
	lwz 31,36(1)
.LVL1977:
	addi 1,1,40
	.cfi_remember_state
.LCFI210:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL1978:
.L1127:
.LCFI211:
	.cfi_restore_state
.LBB13137:
	.loc 4 4417 0 discriminator 2
	beq- 7,.L1125
	b .L1126
.LVL1979:
.L1130:
	.loc 4 4404 0
	mr 5,7
	b .L1122
.LBE13137:
	.cfi_endproc
.LFE2608:
	.size	_ZNK6idMatX18LU_MultiplyFactorsERS_PKi, .-_ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.align 2
	.globl _ZN6idMatX9QR_FactorER6idVecXS1_
	.type	_ZN6idMatX9QR_FactorER6idVecXS1_, @function
_ZN6idMatX9QR_FactorER6idVecXS1_:
.LFB2609:
	.loc 4 4435 0
	.cfi_startproc
.LVL1980:
	stwu 1,-56(1)
.LCFI212:
	.cfi_def_cfa_offset 56
	mr 9,3
	stw 30,48(1)
.LBB13182:
	.loc 4 4438 0
	li 30,0
	.cfi_offset 30, -8
.LBE13182:
	.loc 4 4435 0
	stw 31,52(1)
	mr 31,5
	.cfi_offset 31, -4
	stw 22,16(1)
	stw 23,20(1)
	stw 24,24(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
.LBB13239:
	.loc 4 4443 0
	lwz 11,0(3)
	addic. 0,11,-1
	ble- 0,.L1137
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.loc 4 4469 0
	lis 10,.LC9@ha
.LBB13183:
.LBB13184:
.LBB13185:
.LBB13186:
	.loc 5 276 0
	lis 27,_ZN6idMath5iSqrtE@ha
.LBE13186:
.LBE13185:
.LBE13184:
.LBE13183:
	.loc 4 4469 0
	lfs 11,.LC9@l(10)
	.loc 4 4443 0
	li 7,0
	li 30,0
	li 3,0
.LVL1981:
.LBE13239:
	.loc 4 4435 0
	lis 5,.LC11@ha
.LVL1982:
.LBB13240:
	.loc 4 4457 0
	lis 26,.LC1@ha
.LBB13204:
.LBB13199:
.LBB13193:
.LBB13187:
	.loc 5 276 0
	la 27,_ZN6idMath5iSqrtE@l(27)
	.loc 5 278 0
	lis 28,.LC8@ha
.LBE13187:
.LBE13193:
.LBE13199:
.LBE13204:
	.loc 4 4463 0
	lis 29,.LC6@ha
.LVL1983:
.L1136:
	.loc 4 4446 0 discriminator 1
	cmpw 7,3,11
	bge- 7,.L1154
	.loc 4 4446 0 is_stmt 0
	lwz 8,4(9)
.LBE13240:
	.loc 4 4435 0 is_stmt 1
	subf 0,3,11
.LBB13241:
	.loc 4 4446 0
	lwz 6,12(9)
.LBE13241:
	.loc 4 4435 0
	mtctr 0
.LBB13242:
	mullw 24,3,8
.LBE13242:
	lfd 13,.LC11@l(5)
.LBB13243:
	slwi 12,8,2
.LBE13243:
	la 25,.LC11@l(5)
.LBB13244:
	slwi 10,24,2
	add 10,10,7
	add 10,6,10
.LVL1984:
.L1139:
.LBB13205:
.LBB13206:
	.loc 5 781 0
	lwz 0,0(10)
.LBE13206:
.LBE13205:
	.loc 4 4446 0
	add 10,10,12
.LVL1985:
.LBB13208:
.LBB13207:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LVL1986:
.LBE13207:
.LBE13208:
	.loc 4 4447 0
	stw 0,12(1)
	lfs 10,12(1)
	fmr 0,10
.LVL1987:
	.loc 4 4448 0
	fcmpu 7,0,13
	bng- 7,.L1138
	.loc 4 4449 0
	fmr 13,0
.L1138:
.LVL1988:
	.loc 4 4446 0
	bdnz .L1139
	.loc 4 4452 0
	lfd 0,.LC11@l(5)
	fcmpu 7,13,0
	beq- 7,.L1154
	.loc 4 4458 0
	cmpw 7,11,3
	.loc 4 4457 0
	lfs 12,.LC1@l(26)
	fdiv 12,12,13
.LVL1989:
	.loc 4 4458 0
	ble- 7,.L1158
	.loc 4 4458 0 is_stmt 0 discriminator 2
	mr 11,3
.LVL1990:
.L1144:
.LBB13209:
.LBB13210:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 10,11,8
.LBE13210:
.LBE13209:
	.loc 4 4458 0 discriminator 2
	addi 11,11,1
.LVL1991:
.LBB13212:
.LBB13211:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
	add 10,6,10
.LBE13211:
.LBE13212:
	.loc 4 4459 0 discriminator 2
	lfsx 0,10,7
	fmul 0,0,12
	frsp 0,0
	stfsx 0,10,7
	.loc 4 4458 0 discriminator 2
	lwz 0,0(9)
	lwz 8,4(9)
	cmpw 7,0,11
	lwz 6,12(9)
	bgt+ 7,.L1144
.LVL1992:
	.loc 4 4463 0
	cmpw 7,3,0
	bge- 7,.L1167
	.loc 4 4435 0
	mullw 24,3,8
	subf 0,3,0
	lfd 12,.LC11@l(5)
.LVL1993:
	mtctr 0
	slwi 8,8,2
	slwi 11,24,2
.LVL1994:
	add 11,11,7
	add 11,6,11
.LVL1995:
.L1146:
	.loc 4 4464 0 discriminator 2
	lfs 0,0(11)
.LVL1996:
	.loc 4 4463 0 discriminator 2
	add 11,11,8
	.loc 4 4465 0 discriminator 2
	fmadd 12,0,0,12
.LVL1997:
	.loc 4 4463 0 discriminator 2
	bdnz .L1146
	.loc 4 4463 0 is_stmt 0
	frsp 12,12
.LVL1998:
	lfs 0,.LC6@l(29)
.LVL1999:
	fmuls 0,12,0
	stfs 12,8(1)
.L1142:
.LVL2000:
.LBB13213:
.LBB13200:
.LBB13194:
.LBB13188:
	.loc 5 270 0 is_stmt 1
	lwz 0,8(1)
.LVL2001:
.LBE13188:
.LBE13194:
.LBE13200:
.LBE13213:
.LBB13214:
.LBB13215:
	.loc 3 2056 0
	slwi 24,24,2
.LBE13215:
.LBE13214:
.LBB13217:
.LBB13201:
.LBB13195:
.LBB13189:
	.loc 5 278 0
	lfs 9,.LC8@l(28)
.LBE13189:
.LBE13195:
.LBE13201:
.LBE13217:
.LBB13218:
.LBB13216:
	.loc 3 2056 0
	add 6,6,24
.LBE13216:
.LBE13218:
.LBB13219:
.LBB13202:
.LBB13196:
.LBB13190:
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	subfic 11,11,380
	lwzx 0,27,0
	rlwinm 11,11,22,0,8
	or 0,11,0
	.loc 5 277 0
	stw 0,12(1)
	lfs 10,12(1)
	fmr 12,10
.LVL2002:
.LBE13190:
.LBE13196:
.LBE13202:
.LBE13219:
	.loc 4 4469 0
	lfsx 10,6,7
.LVL2003:
	add 6,6,7
	fcmpu 7,10,11
.LBB13220:
.LBB13203:
.LBB13197:
.LBB13191:
	.loc 5 278 0
	fmul 8,12,12
	.loc 4 4435 0
	fneg 8,8
	.loc 5 278 0
	fmadd 8,8,0,9
	fmul 12,12,8
.LVL2004:
	.loc 5 279 0
	fmul 8,12,12
	.loc 4 4435 0
	fneg 8,8
	.loc 5 279 0
	fmadd 0,8,0,9
.LVL2005:
	fmul 0,12,0
.LVL2006:
.LBE13191:
.LBE13197:
	.loc 5 303 0
	lfs 12,8(1)
.LBB13198:
.LBB13192:
	.loc 5 280 0
	frsp 0,0
.LVL2007:
.LBE13192:
.LBE13198:
	.loc 5 303 0
	fmuls 0,0,12
.LVL2008:
.LBE13203:
.LBE13220:
	.loc 4 4469 0
	bnl- 7,.L1147
	.loc 4 4470 0
	fneg 0,0
.LVL2009:
.L1147:
	.loc 4 4472 0
	fmr 12,10
	.loc 4 4435 0
	addi 24,3,1
	.loc 4 4474 0
	fneg 13,13
.LVL2010:
	addi 23,7,4
	.loc 4 4435 0
	mr 12,24
	.loc 4 4476 0
	mr 8,23
	.loc 4 4472 0
	fadd 12,12,0
	.loc 4 4474 0
	fmul 13,13,0
	.loc 4 4472 0
	frsp 12,12
	.loc 4 4474 0
	frsp 13,13
	.loc 4 4472 0
	stfs 12,0(6)
.LVL2011:
.LBB13221:
.LBB13222:
	.loc 3 2056 0
	lwz 0,4(9)
.LBE13222:
.LBE13221:
	.loc 4 4473 0
	lwz 10,12(9)
.LBB13224:
.LBB13223:
	.loc 3 2056 0
	mullw 0,3,0
.LBE13223:
.LBE13224:
	.loc 4 4473 0
	lwz 11,8(4)
	slwi 0,0,2
	add 10,10,0
	lfsx 12,10,7
	fmul 0,12,0
.LVL2012:
	frsp 0,0
	stfsx 0,11,7
.LVL2013:
	.loc 4 4474 0
	lwz 11,8(31)
	stfsx 13,11,7
	.loc 4 4476 0
	lwz 11,0(9)
	cmpw 7,24,11
	mr 6,11
	bge- 7,.L1141
.LVL2014:
	.loc 4 4479 0 discriminator 1
	cmpw 7,6,3
	ble- 7,.L1160
.LVL2015:
.L1168:
	.loc 4 4479 0 is_stmt 0
	lwz 0,4(9)
	.loc 4 4435 0 is_stmt 1
	subf 6,3,6
	lwz 22,12(9)
	mtctr 6
	mullw 10,3,0
	lfd 0,0(25)
	slwi 0,0,2
	slwi 10,10,2
	add 10,10,7
	add 10,22,10
.LVL2016:
.L1150:
	.loc 4 4435 0 is_stmt 0 discriminator 2
	subf 6,7,10
	.loc 4 4480 0 is_stmt 1 discriminator 2
	lfs 12,0(10)
	lfsx 13,6,8
	.loc 4 4479 0 discriminator 2
	add 10,10,0
	.loc 4 4480 0 discriminator 2
	fmuls 13,12,13
	fadd 0,0,13
.LVL2017:
	.loc 4 4479 0 discriminator 2
	bdnz .L1150
.LVL2018:
.L1153:
	.loc 4 4482 0
	lwz 10,8(4)
	.loc 4 4483 0
	cmpw 7,3,11
	.loc 4 4482 0
	lfsx 13,10,7
	fdiv 0,0,13
.LVL2019:
	.loc 4 4483 0
	bge- 7,.L1151
	mr 10,3
.LVL2020:
.L1152:
.LBB13225:
.LBB13226:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(9)
	lwz 0,12(9)
	mullw 11,10,11
.LBE13226:
.LBE13225:
	.loc 4 4483 0 discriminator 2
	addi 10,10,1
.LVL2021:
.LBB13228:
.LBB13227:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
.LVL2022:
.LBE13227:
.LBE13228:
	.loc 4 4484 0 discriminator 2
	lfsx 13,11,7
	lfsx 12,11,8
	.loc 4 4435 0 discriminator 2
	fneg 13,13
	.loc 4 4484 0 discriminator 2
	fmadd 13,13,0,12
	frsp 13,13
	stfsx 13,11,8
	.loc 4 4483 0 discriminator 2
	lwz 11,0(9)
	cmpw 7,11,10
	bgt+ 7,.L1152
.LVL2023:
.L1151:
	.loc 4 4476 0
	addi 12,12,1
.LVL2024:
	addi 8,8,4
	cmpw 7,12,11
	bge- 7,.L1141
	mr 6,11
.LVL2025:
	.loc 4 4479 0
	cmpw 7,6,3
	bgt+ 7,.L1168
.LVL2026:
.L1160:
	lfd 0,0(25)
	b .L1153
.LVL2027:
.L1154:
.LBB13229:
.LBB13230:
	.loc 2 1537 0
	lwz 11,8(4)
.LVL2028:
.LBE13230:
.LBE13229:
	.loc 4 4453 0
	li 30,1
	.loc 4 4454 0
	lwz 10,8(31)
	addi 24,3,1
	addi 23,7,4
	stfsx 11,10,7
	stfsx 11,11,7
	lwz 11,0(9)
.LVL2029:
.L1141:
	.loc 4 4443 0
	addi 0,11,-1
	mr 7,23
	cmpw 7,0,24
	ble- 7,.L1137
	mr 3,24
	b .L1136
.LVL2030:
.L1137:
.LBB13231:
.LBB13232:
	.loc 3 2056 0
	lwz 10,4(9)
.LBE13232:
.LBE13231:
	.loc 4 4490 0
	li 3,0
	.loc 4 4489 0
	lwz 8,12(9)
.LBB13234:
.LBB13233:
	.loc 3 2056 0
	mullw 10,0,10
.LBE13233:
.LBE13234:
	.loc 4 4489 0
	slwi 0,0,2
.LVL2031:
	lwz 11,8(31)
	slwi 10,10,2
	add 10,8,10
	lwzx 10,10,0
	stwx 10,11,0
.LVL2032:
.LBB13235:
.LBB13236:
	.loc 2 1537 0
	lwz 0,0(9)
.LBE13236:
.LBE13235:
	.loc 4 4490 0
	lwz 9,8(31)
.LVL2033:
.LBB13238:
.LBB13237:
	.loc 2 1537 0
	addic 0,0,-1
.LVL2034:
.LBE13237:
.LBE13238:
	.loc 4 4490 0
	slwi 0,0,2
.LVL2035:
	lfsx 13,9,0
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	fcmpu 7,13,0
	beq+ 7,.L1155
	xori 3,30,1
.L1155:
.LBE13244:
	.loc 4 4495 0
	lwz 22,16(1)
	lwz 23,20(1)
	lwz 24,24(1)
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL2036:
	addi 1,1,56
	.cfi_remember_state
.LCFI213:
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
.LVL2037:
.L1158:
.LCFI214:
	.cfi_restore_state
.LBB13245:
	.loc 4 4458 0
	li 10,0
	stw 10,8(1)
	b .L1142
.LVL2038:
.L1167:
	.loc 4 4463 0
	li 0,0
	lfd 0,.LC11@l(5)
	stw 0,8(1)
	mullw 24,3,8
	b .L1142
.LBE13245:
	.cfi_endproc
.LFE2609:
	.size	_ZN6idMatX9QR_FactorER6idVecXS1_, .-_ZN6idMatX9QR_FactorER6idVecXS1_
	.align 2
	.globl _ZN6idMatX9QR_RotateERS_iff
	.type	_ZN6idMatX9QR_RotateERS_iff, @function
_ZN6idMatX9QR_RotateERS_iff:
.LFB2610:
	.loc 4 4504 0
	.cfi_startproc
.LVL2039:
.LBB13281:
	.loc 4 4508 0
	lis 9,.LC9@ha
.LBE13281:
	.loc 4 4504 0
	stwu 1,-24(1)
.LCFI215:
	.cfi_def_cfa_offset 24
.LBB13338:
	.loc 4 4508 0
	lfs 0,.LC9@l(9)
.LBE13338:
	.loc 4 4504 0
	stfs 1,8(1)
.LBB13339:
	.loc 4 4508 0
	fcmpu 7,1,0
.LBE13339:
	.loc 4 4504 0
	stfs 2,12(1)
.LBB13340:
	.loc 4 4508 0
	bne- 7,.L1170
.LVL2040:
	.loc 4 4510 0
	fcmpu 7,2,0
	cror 30,29,30
	beq- 7,.L1191
	lis 9,.LC4@ha
	.loc 4 4509 0
	stfs 0,8(1)
	.loc 4 4510 0
	lfs 12,.LC4@l(9)
	stfs 12,12(1)
.LVL2041:
.L1171:
	.loc 4 4526 0
	lwz 0,0(3)
	cmpw 7,5,0
	bge- 7,.L1179
	addi 8,5,1
	slwi 9,5,2
	.loc 4 4504 0
	mr 11,5
.LVL2042:
.L1180:
	.loc 4 8102 0 discriminator 2
	lwz 10,4(4)
	.loc 4 4526 0 discriminator 2
	addi 11,11,1
.LVL2043:
	.loc 4 8102 0 discriminator 2
	lwz 0,12(4)
.LVL2044:
.LBB13282:
.LBB13283:
	.loc 3 2056 0 discriminator 2
	mullw 7,10,8
.LBE13283:
.LBE13282:
	.loc 4 4529 0 discriminator 2
	lfs 0,12(1)
	.loc 4 4530 0 discriminator 2
	lfs 11,8(1)
.LBB13284:
.LBB13285:
	.loc 3 2056 0 discriminator 2
	mullw 10,5,10
.LBE13285:
.LBE13284:
	.loc 4 4528 0 discriminator 2
	slwi 7,7,2
	add 7,0,7
	lfsx 13,7,9
.LBB13288:
.LBB13286:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
.LBE13286:
.LBE13288:
	.loc 4 4529 0 discriminator 2
	fmuls 12,0,13
.LBB13289:
.LBB13287:
	.loc 3 2056 0 discriminator 2
	add 10,0,10
.LBE13287:
.LBE13289:
	.loc 4 4530 0 discriminator 2
	fmuls 13,11,13
	.loc 4 4527 0 discriminator 2
	lfsx 0,10,9
.LVL2045:
	.loc 4 4529 0 discriminator 2
	fmsubs 12,11,0,12
	.loc 4 4530 0 discriminator 2
	lfs 11,12(1)
	fmadds 0,11,0,13
	.loc 4 4529 0 discriminator 2
	stfsx 12,10,9
.LVL2046:
.LBB13290:
.LBB13291:
	.loc 3 2056 0 discriminator 2
	lwz 10,4(4)
.LVL2047:
.LBE13291:
.LBE13290:
	.loc 4 4530 0 discriminator 2
	lwz 7,12(4)
.LBB13293:
.LBB13292:
	.loc 3 2056 0 discriminator 2
	mullw 10,8,10
.LBE13292:
.LBE13293:
	.loc 4 4530 0 discriminator 2
	slwi 10,10,2
	add 10,7,10
	stfsx 0,10,9
	.loc 4 4526 0 discriminator 2
	addi 9,9,4
	lwz 0,0(3)
	cmpw 7,0,11
	bgt+ 7,.L1180
.LVL2048:
.L1179:
	.loc 4 4532 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L1169
	.loc 4 4532 0 is_stmt 0
	addi 10,5,1
	lwz 11,4(3)
	slwi 0,5,2
	slwi 10,10,2
	li 9,0
	b .L1182
.LVL2049:
.L1192:
	lwz 11,4(3)
.LVL2050:
.L1182:
.LBB13294:
.LBB13295:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 11,9,11
	lwz 8,12(3)
.LBE13295:
.LBE13294:
	.loc 4 4535 0 discriminator 2
	lfs 11,12(1)
.LBB13297:
.LBB13296:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,8,11
.LBE13296:
.LBE13297:
	.loc 4 4534 0 discriminator 2
	lfsx 13,11,10
	.loc 4 4533 0 discriminator 2
	lfsx 0,11,0
.LVL2051:
	.loc 4 4535 0 discriminator 2
	fmuls 12,11,13
	.loc 4 4536 0 discriminator 2
	lfs 11,8(1)
	fmuls 13,11,13
	.loc 4 4535 0 discriminator 2
	fmsubs 12,11,0,12
	.loc 4 4536 0 discriminator 2
	lfs 11,12(1)
	fmadds 0,11,0,13
	.loc 4 4535 0 discriminator 2
	stfsx 12,11,0
.LVL2052:
.LBB13298:
.LBB13299:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(3)
.LVL2053:
.LBE13299:
.LBE13298:
	.loc 4 4536 0 discriminator 2
	lwz 8,12(3)
.LBB13301:
.LBB13300:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE13300:
.LBE13301:
	.loc 4 4532 0 discriminator 2
	addi 9,9,1
.LVL2054:
	.loc 4 4536 0 discriminator 2
	slwi 11,11,2
	add 11,8,11
	stfsx 0,11,10
	.loc 4 4532 0 discriminator 2
	lwz 11,0(3)
	cmpw 7,11,9
	bgt+ 7,.L1192
.LVL2055:
.L1169:
.LBE13340:
	.loc 4 4538 0
	addi 1,1,24
	.cfi_remember_state
.LCFI216:
	.cfi_def_cfa_offset 0
	blr
.LVL2056:
.L1170:
.LCFI217:
	.cfi_restore_state
.LBB13341:
.LBB13302:
.LBB13303:
	.loc 5 781 0
	lwz 0,8(1)
.LBE13303:
.LBE13302:
.LBB13305:
.LBB13306:
	lwz 11,12(1)
.LBE13306:
.LBE13305:
.LBB13308:
.LBB13304:
	rlwinm 9,0,0,1,31
.LBE13304:
.LBE13308:
	.loc 4 4511 0
	stw 9,16(1)
.LBB13309:
.LBB13307:
	.loc 5 781 0
	rlwinm 0,11,0,1,31
.LBE13307:
.LBE13309:
	.loc 4 4511 0
	lfs 11,16(1)
	stw 0,16(1)
	lfs 12,16(1)
	fcmpu 6,11,12
	bng- 6,.L1190
	.loc 4 4512 0
	lfs 11,8(1)
	.loc 4 4513 0
	lis 9,.LC1@ha
	.loc 4 4512 0
	lfs 13,12(1)
	fdivs 0,13,11
.LVL2057:
	.loc 4 4513 0
	lfs 11,.LC1@l(9)
.LBB13310:
.LBB13311:
.LBB13312:
.LBB13313:
	.loc 5 278 0
	lis 9,.LC8@ha
	lfs 10,.LC8@l(9)
.LBE13313:
.LBE13312:
.LBE13311:
.LBE13310:
	.loc 4 4513 0
	fmadds 12,0,0,11
	stfs 12,8(1)
.LVL2058:
.LBB13319:
.LBB13318:
.LBB13316:
.LBB13314:
	.loc 5 270 0
	lwz 0,8(1)
.LVL2059:
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 5 275 0
	lis 11,.LC6@ha
	lfs 9,.LC6@l(11)
	.loc 5 276 0
	or 0,0,9
	.loc 5 277 0
	stw 0,16(1)
	.loc 5 275 0
	fmuls 9,12,9
.LVL2060:
	.loc 5 277 0
	lfs 13,16(1)
	.loc 4 4504 0
	fneg 9,9
.LVL2061:
	.loc 5 277 0
	fmr 12,13
.LVL2062:
	.loc 5 278 0
	fmul 13,12,12
.LVL2063:
	fmadd 13,9,13,10
	fmul 13,12,13
.LVL2064:
	.loc 5 279 0
	fmul 12,13,13
	fmadd 10,9,12,10
.LVL2065:
.LBE13314:
.LBE13316:
	.loc 5 303 0
	lfs 12,8(1)
.LBB13317:
.LBB13315:
	.loc 5 279 0
	fmul 13,13,10
.LVL2066:
	.loc 5 280 0
	frsp 13,13
.LVL2067:
.LBE13315:
.LBE13317:
	.loc 5 303 0
	fmuls 13,12,13
.LBE13318:
.LBE13319:
	.loc 4 4513 0
	fdivs 13,11,13
.LVL2068:
	stfs 13,16(1)
	lwz 0,16(1)
.LBB13320:
.LBB13321:
	.loc 5 782 0
	rlwinm 9,0,0,1,31
	stw 9,8(1)
.LBE13321:
.LBE13320:
	.loc 4 4514 0
	bnl- 7,.L1175
	.loc 4 4515 0
	lfs 11,8(1)
	fneg 11,11
	stfs 11,8(1)
.LVL2069:
.L1175:
	.loc 4 4517 0
	lfs 12,8(1)
	fmuls 0,0,12
.LVL2070:
	stfs 0,12(1)
.LVL2071:
	b .L1171
.LVL2072:
.L1190:
	.loc 4 4519 0
	lfs 11,8(1)
	.loc 4 4520 0
	lis 9,.LC1@ha
	.loc 4 4519 0
	lfs 12,12(1)
	fdivs 13,11,12
.LVL2073:
	.loc 4 4520 0
	lfs 11,.LC1@l(9)
.LBB13322:
.LBB13323:
.LBB13324:
.LBB13325:
	.loc 5 278 0
	lis 9,.LC8@ha
	lfs 10,.LC8@l(9)
.LBE13325:
.LBE13324:
.LBE13323:
.LBE13322:
	.loc 4 4520 0
	fmadds 12,13,13,11
	stfs 12,8(1)
.LVL2074:
	.loc 4 4521 0
	lfs 12,12(1)
.LVL2075:
.LBB13334:
.LBB13332:
.LBB13329:
.LBB13326:
	.loc 5 270 0
	lwz 0,8(1)
.LVL2076:
.LBE13326:
.LBE13329:
.LBE13332:
.LBE13334:
	.loc 4 4521 0
	fcmpu 7,12,0
.LBB13335:
.LBB13333:
.LBB13330:
.LBB13327:
	.loc 5 275 0
	lfs 0,8(1)
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 5 275 0
	lis 11,.LC6@ha
	lfs 9,.LC6@l(11)
	.loc 5 276 0
	or 0,0,9
	.loc 5 277 0
	stw 0,16(1)
	.loc 5 275 0
	fmuls 9,0,9
.LVL2077:
	.loc 5 277 0
	lfs 0,16(1)
	.loc 4 4504 0
	fneg 9,9
.LVL2078:
	.loc 5 277 0
	fmr 12,0
.LVL2079:
	.loc 5 278 0
	fmul 0,12,12
.LVL2080:
	fmadd 0,9,0,10
	fmul 0,12,0
.LVL2081:
	.loc 5 279 0
	fmul 12,0,0
	fmadd 10,9,12,10
.LVL2082:
.LBE13327:
.LBE13330:
	.loc 5 303 0
	lfs 12,8(1)
.LBB13331:
.LBB13328:
	.loc 5 279 0
	fmul 0,0,10
.LVL2083:
	.loc 5 280 0
	frsp 0,0
.LVL2084:
.LBE13328:
.LBE13331:
	.loc 5 303 0
	fmuls 0,12,0
.LBE13333:
.LBE13335:
	.loc 4 4520 0
	fdivs 0,11,0
.LVL2085:
	stfs 0,16(1)
	lwz 0,16(1)
.LBB13336:
.LBB13337:
	.loc 5 782 0
	rlwinm 9,0,0,1,31
	stw 9,12(1)
.LBE13337:
.LBE13336:
	.loc 4 4521 0
	bnl- 7,.L1177
	.loc 4 4522 0
	lfs 0,12(1)
.LVL2086:
	fneg 0,0
	stfs 0,12(1)
.LVL2087:
.L1177:
	.loc 4 4524 0
	lfs 11,12(1)
	fmuls 13,13,11
.LVL2088:
	stfs 13,8(1)
.LVL2089:
	b .L1171
.LVL2090:
.L1191:
	.loc 4 4510 0
	lis 9,.LC1@ha
	.loc 4 4509 0
	stfs 0,8(1)
	.loc 4 4510 0
	lfs 11,.LC1@l(9)
	stfs 11,12(1)
	b .L1171
.LBE13341:
	.cfi_endproc
.LFE2610:
	.size	_ZN6idMatX9QR_RotateERS_iff, .-_ZN6idMatX9QR_RotateERS_iff
	.align 2
	.globl _ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f
	.type	_ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f, @function
_ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f:
.LFB2611:
	.loc 4 4547 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2611
.LVL2091:
	mflr 0
	stwu 1,-104(1)
.LCFI218:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	mfcr 12
	stfd 31,96(1)
	fmr 31,1
	.cfi_offset 63, -8
	.cfi_register 70, 12
	stw 0,108(1)
	stw 27,76(1)
	mr 27,6
	.cfi_offset 27, -28
	.cfi_offset 65, 4
	stw 28,80(1)
	mr 28,5
	.cfi_offset 28, -24
	stw 29,84(1)
	mr 29,3
	.cfi_offset 29, -20
	stw 30,88(1)
	mr 30,4
	.cfi_offset 30, -16
	stw 31,92(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI219:
	.cfi_def_cfa_register 31
.LVL2092:
	stw 19,44(1)
	stw 20,48(1)
	stw 21,52(1)
	stw 22,56(1)
	stw 23,60(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 12,40(1)
.LBB13413:
	.loc 4 4555 0
	lwz 10,0(1)
.LBB13414:
.LBB13415:
	.loc 4 8102 0
	lwz 9,0(5)
.LBE13415:
.LBE13414:
	.loc 4 4555 0
	addi 0,9,3
.LBB13416:
.LBB13417:
	.loc 2 1762 0
	stw 9,8(31)
.LBE13417:
.LBE13416:
	.loc 4 4555 0
	rlwinm 0,0,0,0,29
	slwi 11,0,2
.LBB13422:
.LBB13418:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE13418:
.LBE13422:
	.loc 4 4555 0
	subfic 11,11,-32
.LBB13423:
.LBB13419:
	.loc 2 1763 0
	li 0,-1
.LBE13419:
.LBE13423:
	.loc 4 4555 0
	stwux 10,1,11
.LBB13424:
.LBB13420:
	.loc 2 1763 0
	stw 0,12(31)
.LBE13420:
.LBE13424:
	.loc 4 4555 0
	addi 11,1,23
.LVL2093:
	rlwinm 11,11,0,0,27
.LVL2094:
.LBB13425:
.LBB13421:
	.loc 2 1761 0
	stw 11,16(31)
	.loc 2 1764 0
	bge- 7,.L1196
	.cfi_offset 70, -64
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
.LVL2095:
	slwi 10,9,2
	li 8,0
	b .L1197
.LVL2096:
.L1219:
	lwz 11,16(31)
.L1197:
	addi 9,9,1
.LVL2097:
	stwx 8,11,10
	.loc 4 4547 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1219
.L1196:
.LVL2098:
.LBE13421:
.LBE13425:
.LBB13426:
.LBB13427:
	.loc 3 2779 0
	lis 26,SIMDProcessor@ha
	addi 4,31,8
.LVL2099:
	lwz 3,SIMDProcessor@l(26)
.LVL2100:
	mr 5,29
.LVL2101:
	mr 6,28
.LVL2102:
	lwz 9,0(3)
.LVL2103:
	lwz 0,204(9)
	mtctr 0
.LEHB48:
	bctrl
.LVL2104:
.LBE13427:
.LBE13426:
.LBB13428:
.LBB13429:
	.loc 2 1639 0
	lwz 3,SIMDProcessor@l(26)
	fmr 1,31
	lwz 4,16(31)
	lwz 9,0(3)
	lwz 5,8(31)
	lwz 0,188(9)
	mtctr 0
	bctrl
.LEHE48:
	.loc 4 8102 0
	lwz 10,0(28)
.LVL2105:
.LBE13429:
.LBE13428:
	.loc 4 4559 0
	addi 25,10,-1
	cmpwi 4,25,0
	ble- 4,.L1198
	.loc 4 4560 0
	lwz 11,16(31)
.LVL2106:
	slwi 0,25,2
	lis 9,.LC9@ha
	lfsx 0,11,0
	lfs 13,.LC9@l(9)
	fcmpu 7,0,13
	bne- 7,.L1198
	.loc 4 4547 0
	addi 9,10,-2
	.loc 4 4560 0
	mtctr 25
	slwi 9,9,2
	b .L1199
.LVL2107:
.L1200:
	lfsx 0,11,9
	addi 9,9,-4
	fcmpu 7,0,13
	bne- 7,.L1198
.L1199:
.LVL2108:
	.loc 4 4559 0
	addi 25,25,-1
.LVL2109:
	cmpwi 4,25,0
	bdnz .L1200
.LVL2110:
.L1201:
	.loc 4 4576 0 discriminator 1
	cmpwi 7,10,0
	ble- 7,.L1207
	.loc 4 4576 0 is_stmt 0
	li 9,0
.LVL2111:
.L1208:
	.loc 4 4577 0 is_stmt 1 discriminator 2
	lwz 11,12(30)
.LVL2112:
	.loc 4 4547 0 discriminator 2
	slwi 0,9,2
.LBB13430:
.LBB13431:
	.loc 2 1532 0 discriminator 2
	lwz 10,8(27)
.LBE13431:
.LBE13430:
	.loc 4 4576 0 discriminator 2
	addi 9,9,1
.LVL2113:
	.loc 4 4577 0 discriminator 2
	lwz 8,16(31)
	lfsx 0,10,0
	lfsx 13,11,0
	lfs 12,0(8)
	fmadds 0,12,0,13
	stfsx 0,11,0
	.loc 4 4576 0 discriminator 2
	lwz 0,0(28)
	cmpw 7,0,9
	bgt+ 7,.L1208
.LVL2114:
.L1207:
	.loc 4 4579 0 discriminator 1
	ble- 4,.L1209
	.loc 4 4579 0 is_stmt 0
	lwz 0,4(30)
	li 5,0
	b .L1210
.LVL2115:
.L1220:
	lwz 0,4(30)
	mr 5,28
.LVL2116:
.L1210:
.LBB13432:
.LBB13433:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 10,5,0
.LBE13433:
.LBE13432:
	.loc 4 4580 0 discriminator 2
	addi 28,5,1
	.loc 4 8102 0 discriminator 2
	lwz 11,12(30)
.LVL2117:
	.loc 4 4547 0 discriminator 2
	slwi 9,5,2
	.loc 4 4580 0 discriminator 2
	mr 3,29
	mr 4,30
.LBB13434:
.LBB13435:
	.loc 3 2056 0 discriminator 2
	mullw 0,28,0
.LBE13435:
.LBE13434:
	.loc 4 4580 0 discriminator 2
	slwi 10,10,2
	add 10,11,10
	lfsx 1,10,9
	slwi 0,0,2
	fneg 1,1
	add 11,11,0
	lfsx 2,11,9
	bl _ZN6idMatX9QR_RotateERS_iff
.LVL2118:
	.loc 4 4579 0 discriminator 2
	cmpw 7,28,25
	bne+ 7,.L1220
.LVL2119:
.L1209:
	.loc 4 4582 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB13436:
.LBB13437:
.LBB13438:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1211
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1221
	cmpwi 7,0,-1
	beq- 7,.L1211
.L1224:
.LEHB49:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE49:
.L1211:
.LBE13438:
.LBE13437:
.LBE13436:
.LBE13413:
	.loc 4 4583 0
	addi 11,31,104
	li 3,1
	lwz 0,4(11)
	lwz 12,-64(11)
	mtlr 0
	lwz 19,-60(11)
	lwz 20,-56(11)
	mtcrf 8,12
	lwz 21,-52(11)
	lwz 22,-48(11)
	lwz 23,-44(11)
	lwz 24,-40(11)
	lwz 25,-36(11)
.LVL2120:
	lwz 26,-32(11)
	lwz 27,-28(11)
.LVL2121:
	lwz 28,-24(11)
	lwz 29,-20(11)
.LVL2122:
	lwz 30,-16(11)
.LVL2123:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI220:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
	mr 1,11
.LCFI221:
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
.LVL2124:
	blr
.LVL2125:
.L1198:
.LCFI222:
	.cfi_restore_state
.LBB13494:
	.loc 4 4564 0
	addic. 23,25,-1
	blt- 0,.L1201
	.loc 4 4566 0
	lis 10,.LC9@ha
.LBB13441:
.LBB13442:
.LBB13443:
.LBB13444:
	.loc 5 276 0
	lis 21,_ZN6idMath5iSqrtE@ha
.LBE13444:
.LBE13443:
.LBE13442:
.LBE13441:
	.loc 4 4564 0
	slwi 24,25,2
	.loc 4 4566 0
	lfs 31,.LC9@l(10)
.LVL2126:
	.loc 4 4573 0
	lis 19,.LC1@ha
.LBB13462:
.LBB13457:
.LBB13451:
.LBB13445:
	.loc 5 275 0
	lis 20,.LC6@ha
	.loc 5 276 0
	la 21,_ZN6idMath5iSqrtE@l(21)
	.loc 5 278 0
	lis 22,.LC8@ha
	b .L1206
.LVL2127:
.L1223:
.LBE13445:
.LBE13451:
.LBE13457:
.LBE13462:
.LBB13463:
.LBB13464:
	.loc 5 781 0
	lwzx 0,9,24
	rlwinm 0,0,0,1,31
.LBE13464:
.LBE13463:
	.loc 4 4567 0
	stwx 0,9,26
.LVL2128:
.L1203:
	.loc 4 4564 0
	cmpwi 7,23,0
	mr 24,26
	addi 23,23,-1
.LVL2129:
	beq- 7,.L1222
.LVL2130:
.L1206:
	.loc 4 4565 0
	lwz 9,16(31)
.LVL2131:
.LBB13465:
.LBB13466:
	.loc 2 1537 0
	addi 26,24,-4
.LVL2132:
.LBE13466:
.LBE13465:
	.loc 4 4565 0
	mr 3,29
	mr 4,30
	lfsx 2,9,24
	mr 5,23
	lfsx 1,9,26
	fneg 2,2
	bl _ZN6idMatX9QR_RotateERS_iff
	.loc 4 4566 0
	lwz 9,16(31)
.LVL2133:
	lwzx 0,9,26
	stw 0,32(31)
	lfs 0,32(31)
	fcmpu 7,0,31
	beq- 7,.L1223
.LVL2134:
	.loc 4 4568 0
	lwzx 11,9,24
.LBB13467:
.LBB13468:
	.loc 5 782 0
	rlwinm 10,0,0,1,31
	stw 10,24(31)
.LVL2135:
.LBE13468:
.LBE13467:
.LBB13469:
.LBB13470:
	rlwinm 10,11,0,1,31
	stw 10,28(31)
.LBE13470:
.LBE13469:
	.loc 4 4568 0
	lfs 0,24(31)
	lfs 12,28(31)
	fcmpu 7,0,12
	bng- 7,.L1218
.LVL2136:
	.loc 4 4569 0
	stw 11,32(31)
	.loc 4 4564 0
	cmpwi 7,23,0
.LBB13471:
.LBB13472:
.LBB13473:
.LBB13474:
	.loc 5 275 0
	lfs 11,.LC6@l(20)
.LBE13474:
.LBE13473:
.LBE13472:
.LBE13471:
	.loc 4 4564 0
	mr 24,26
.LVL2137:
	.loc 4 4569 0
	lfs 13,32(31)
	.loc 4 4564 0
	addi 23,23,-1
.LVL2138:
	.loc 4 4569 0
	stw 0,32(31)
	lfs 12,32(31)
	fdivs 0,13,12
.LVL2139:
	.loc 4 4570 0
	lfs 13,.LC1@l(19)
.LBB13486:
.LBB13483:
.LBB13479:
.LBB13475:
	.loc 5 278 0
	lfs 12,.LC8@l(22)
.LBE13475:
.LBE13479:
.LBE13483:
.LBE13486:
	.loc 4 4570 0
	fmadds 13,0,0,13
	stfs 13,28(31)
.LVL2140:
.LBB13487:
.LBB13484:
.LBB13480:
.LBB13476:
	.loc 5 275 0
	fmuls 11,13,11
	.loc 5 270 0
	lwz 0,28(31)
.LVL2141:
	.loc 4 4547 0
	fneg 11,11
	.loc 5 276 0
	rlwinm 10,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 11,21,0
	subfic 0,10,380
	rlwinm 0,0,22,0,8
	or 0,0,11
	.loc 5 277 0
	stw 0,32(31)
	lfs 0,32(31)
.LVL2142:
	fmr 13,0
.LVL2143:
	.loc 5 278 0
	fmul 0,13,13
.LVL2144:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL2145:
	.loc 5 279 0
	fmul 13,0,0
	fmadd 12,11,13,12
.LVL2146:
.LBE13476:
.LBE13480:
.LBE13484:
.LBE13487:
	.loc 4 4570 0
	lfs 13,24(31)
.LBB13488:
.LBB13485:
.LBB13481:
.LBB13477:
	.loc 5 279 0
	fmul 0,0,12
.LVL2147:
.LBE13477:
.LBE13481:
	.loc 5 303 0
	lfs 12,28(31)
.LBB13482:
.LBB13478:
	.loc 5 280 0
	frsp 0,0
.LVL2148:
.LBE13478:
.LBE13482:
	.loc 5 303 0
	fmuls 0,12,0
.LBE13485:
.LBE13488:
	.loc 4 4570 0
	fmuls 0,13,0
	stfsx 0,9,26
	.loc 4 4564 0
	bne+ 7,.L1206
.LVL2149:
.L1222:
	lwz 10,0(28)
	b .L1201
.LVL2150:
.L1218:
	.loc 4 4572 0
	stw 0,32(31)
.LBB13489:
.LBB13458:
.LBB13452:
.LBB13446:
	.loc 5 275 0
	lfs 11,.LC6@l(20)
.LBE13446:
.LBE13452:
.LBE13458:
.LBE13489:
	.loc 4 4572 0
	lfs 12,32(31)
	stw 11,32(31)
	lfs 13,32(31)
	fdivs 0,12,13
.LVL2151:
	.loc 4 4573 0
	lfs 13,.LC1@l(19)
.LBB13490:
.LBB13459:
.LBB13453:
.LBB13447:
	.loc 5 278 0
	lfs 12,.LC8@l(22)
.LBE13447:
.LBE13453:
.LBE13459:
.LBE13490:
	.loc 4 4573 0
	fmadds 13,0,0,13
	stfs 13,24(31)
.LVL2152:
.LBB13491:
.LBB13460:
.LBB13454:
.LBB13448:
	.loc 5 275 0
	fmuls 11,13,11
	.loc 5 270 0
	lwz 0,24(31)
.LVL2153:
	.loc 4 4547 0
	fneg 11,11
	.loc 5 276 0
	rlwinm 10,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 11,21,0
.LVL2154:
	subfic 0,10,380
	rlwinm 0,0,22,0,8
	or 0,0,11
	.loc 5 277 0
	stw 0,32(31)
	lfs 0,32(31)
.LVL2155:
	fmr 13,0
.LVL2156:
	.loc 5 278 0
	fmul 0,13,13
.LVL2157:
	fmadd 0,11,0,12
	fmul 0,13,0
.LVL2158:
	.loc 5 279 0
	fmul 13,0,0
	fmadd 12,11,13,12
.LVL2159:
.LBE13448:
.LBE13454:
.LBE13460:
.LBE13491:
	.loc 4 4573 0
	lfs 13,28(31)
.LBB13492:
.LBB13461:
.LBB13455:
.LBB13449:
	.loc 5 279 0
	fmul 0,0,12
.LVL2160:
.LBE13449:
.LBE13455:
	.loc 5 303 0
	lfs 12,24(31)
.LBB13456:
.LBB13450:
	.loc 5 280 0
	frsp 0,0
.LVL2161:
.LBE13450:
.LBE13456:
	.loc 5 303 0
	fmuls 0,12,0
.LBE13461:
.LBE13492:
	.loc 4 4573 0
	fmuls 0,13,0
	stfsx 0,9,26
	b .L1203
.LVL2162:
.L1221:
.LBB13493:
.LBB13440:
.LBB13439:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1211
	cmpwi 7,0,-1
	bne+ 7,.L1224
	b .L1211
.LVL2163:
.L1214:
	mr 30,3
.LVL2164:
.LBE13439:
.LBE13440:
.LBE13493:
	.loc 4 4582 0
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB50:
	bl _Unwind_Resume
.LEHE50:
.LBE13494:
	.cfi_endproc
.LFE2611:
	.section	.gcc_except_table
.LLSDA2611:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2611-.LLSDACSB2611
.LLSDACSB2611:
	.uleb128 .LEHB48-.LFB2611
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L1214-.LFB2611
	.uleb128 0
	.uleb128 .LEHB49-.LFB2611
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB2611
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE2611:
	.section	".text"
	.size	_ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f, .-_ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f
	.align 2
	.globl _ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i
	.type	_ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i, @function
_ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i:
.LFB2612:
	.loc 4 4598 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2612
.LVL2165:
	mflr 0
	stwu 1,-64(1)
.LCFI223:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 23,28(1)
	mr 23,6
	.cfi_offset 23, -36
	stw 0,68(1)
.LBB13512:
.LBB13513:
.LBB13514:
	.loc 2 1507 0
	li 0,0
	.cfi_offset 65, 4
.LBE13514:
.LBE13513:
.LBE13512:
	.loc 4 4598 0
	stw 24,32(1)
	mr 24,5
	.cfi_offset 24, -32
	stw 26,40(1)
	mr 26,7
	.cfi_offset 26, -24
	stw 27,44(1)
	mr 27,4
	.cfi_offset 27, -20
	stw 29,52(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 31,60(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI224:
	.cfi_def_cfa_register 31
.LVL2166:
	stw 25,36(1)
	stw 28,48(1)
	stw 30,56(1)
.LBB13539:
.LBB13518:
.LBB13515:
	.loc 2 1507 0
	stw 0,12(31)
.LBE13515:
.LBE13518:
	.loc 4 4606 0
	lwz 9,0(3)
	lwz 30,4(3)
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 25, -28
.LVL2167:
.LBB13519:
.LBB13516:
	.loc 2 1507 0
	stw 0,8(31)
.LBE13516:
.LBE13519:
	.loc 4 4606 0
	cmpw 7,30,9
.LBB13520:
.LBB13517:
	.loc 2 1508 0
	stw 0,16(31)
.LBE13517:
.LBE13520:
	.loc 4 4606 0
	bge- 7,.L1226
.LVL2168:
	mr 30,9
.LVL2169:
.L1226:
	addi 28,30,3
.LBB13521:
.LBB13522:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL2170:
.LBE13522:
.LBE13521:
	.loc 4 4606 0
	rlwinm 28,28,0,0,29
	lwz 9,0(1)
	slwi 0,28,2
.LBB13527:
.LBB13523:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE13523:
.LBE13527:
	.loc 4 4606 0
	subfic 0,0,-32
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL2171:
.LBB13528:
.LBB13524:
	.loc 2 1757 0
	beq- 7,.L1227
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1239
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L1227
.L1243:
.LEHB51:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL2172:
.L1227:
	.loc 2 1764 0
	cmpw 7,30,28
	.loc 2 1763 0
	li 0,-1
.LBE13524:
.LBE13528:
	.loc 4 4606 0
	mr 4,25
.LBB13529:
.LBB13525:
	.loc 2 1761 0
	stw 25,16(31)
	.loc 2 1762 0
	stw 30,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL2173:
	.loc 2 1764 0
	bge- 7,.L1229
	slwi 9,30,2
	li 11,0
	b .L1231
.LVL2174:
.L1240:
	lwz 4,16(31)
.L1231:
	addi 30,30,1
.LVL2175:
	stwx 11,4,9
	.loc 4 4598 0
	addi 0,30,3
	.loc 2 1764 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,30,0
	blt+ 7,.L1240
	lwz 30,8(31)
.LVL2176:
	lwz 4,16(31)
.L1229:
.LBE13525:
.LBE13529:
.LBB13530:
.LBB13531:
	.loc 2 1769 0
	lis 9,SIMDProcessor@ha
	mr 5,30
	lwz 3,SIMDProcessor@l(9)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL2177:
.LBE13531:
.LBE13530:
	.loc 4 4608 0
	lis 30,.LC1@ha
	lwz 9,16(31)
	lfs 0,.LC1@l(30)
	slwi 26,26,2
.LVL2178:
	.loc 4 4610 0
	mr 3,29
	mr 4,27
	fmr 1,0
	.loc 4 4608 0
	stfsx 0,9,26
	.loc 4 4610 0
	mr 5,24
	addi 6,31,8
	bl _ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f
	cmpwi 7,3,0
	beq- 7,.L1236
	.loc 4 4613 0
	lfs 1,.LC1@l(30)
	mr 3,29
	mr 4,27
	addi 5,31,8
	mr 6,23
	bl _ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f
.LEHE51:
	cmpwi 7,3,0
	.loc 4 4616 0
	li 30,1
	.loc 4 4613 0
	beq- 7,.L1236
.L1232:
	.loc 4 4616 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB13532:
.LBB13533:
.LBB13534:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1233
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1241
	cmpwi 7,0,-1
	beq- 7,.L1233
.L1242:
.LEHB52:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE52:
.L1233:
.LBE13534:
.LBE13533:
.LBE13532:
.LBE13539:
	.loc 4 4617 0
	addi 11,31,64
	mr 3,30
	lwz 0,4(11)
	lwz 23,-36(11)
.LVL2179:
	mtlr 0
	lwz 24,-32(11)
.LVL2180:
	lwz 25,-28(11)
.LVL2181:
	lwz 26,-24(11)
	lwz 27,-20(11)
.LVL2182:
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL2183:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI225:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI226:
	.cfi_def_cfa_register 1
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
.LVL2184:
.L1236:
.LCFI227:
	.cfi_restore_state
.LBB13540:
	.loc 4 4611 0
	li 30,0
	b .L1232
.L1241:
.LBB13537:
.LBB13536:
.LBB13535:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1233
	cmpwi 7,0,-1
	bne+ 7,.L1242
	b .L1233
.LVL2185:
.L1239:
.LBE13535:
.LBE13536:
.LBE13537:
.LBB13538:
.LBB13526:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1227
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L1243
	b .L1227
.LVL2186:
.L1238:
	mr 30,3
.LBE13526:
.LBE13538:
	.loc 4 4616 0
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB53:
	bl _Unwind_Resume
.LEHE53:
.LBE13540:
	.cfi_endproc
.LFE2612:
	.section	.gcc_except_table
.LLSDA2612:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2612-.LLSDACSB2612
.LLSDACSB2612:
	.uleb128 .LEHB51-.LFB2612
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L1238-.LFB2612
	.uleb128 0
	.uleb128 .LEHB52-.LFB2612
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB2612
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE2612:
	.section	".text"
	.size	_ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i, .-_ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i
	.align 2
	.globl _ZN6idMatX18QR_UpdateIncrementERS_RK6idVecXS3_
	.type	_ZN6idMatX18QR_UpdateIncrementERS_RK6idVecXS3_, @function
_ZN6idMatX18QR_UpdateIncrementERS_RK6idVecXS3_:
.LFB2613:
	.loc 4 4631 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2613
.LVL2187:
	mflr 0
	stwu 1,-64(1)
.LCFI228:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 23,28(1)
	mr 23,6
	.cfi_offset 23, -36
	stw 0,68(1)
.LBB13561:
	.loc 4 4638 0
	li 6,1
.LVL2188:
.LBE13561:
	.loc 4 4631 0
	stw 26,40(1)
.LBB13602:
.LBB13562:
.LBB13563:
	.loc 2 1507 0
	li 0,0
	.cfi_offset 26, -24
	.cfi_offset 65, 4
.LBE13563:
.LBE13562:
.LBE13602:
	.loc 4 4631 0
	stw 28,48(1)
	mr 26,5
	stw 29,52(1)
	mr 28,4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 31,60(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI229:
	.cfi_def_cfa_register 31
.LVL2189:
	stw 24,32(1)
	mr 29,3
	stw 25,36(1)
	stw 27,44(1)
	stw 30,56(1)
.LBB13603:
.LBB13567:
.LBB13564:
	.loc 2 1507 0
	stw 0,12(31)
.LBE13564:
.LBE13567:
	.loc 4 4638 0
	lwz 11,0(3)
	lwz 9,4(3)
	addi 4,11,1
.LVL2190:
.LBB13568:
.LBB13565:
	.loc 2 1507 0
	stw 0,8(31)
.LBE13565:
.LBE13568:
	.loc 4 4638 0
	addi 5,9,1
.LVL2191:
.LBB13569:
.LBB13566:
	.loc 2 1508 0
	stw 0,16(31)
.LEHB54:
.LBE13566:
.LBE13569:
	.loc 4 4638 0
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	bl _ZN6idMatX10ChangeSizeEiib
.LVL2192:
	.loc 4 4639 0
	lwz 9,0(29)
.LVL2193:
	lis 27,.LC1@ha
.LBB13570:
.LBB13571:
	.loc 3 2056 0
	lwz 11,4(29)
.LBE13571:
.LBE13570:
	.loc 4 4641 0
	mr 3,28
	.loc 4 4639 0
	addi 0,9,-1
	lwz 9,12(29)
.LBB13573:
.LBB13572:
	.loc 3 2056 0
	mullw 11,0,11
.LBE13572:
.LBE13573:
	.loc 4 4639 0
	lwz 10,.LC1@l(27)
	.loc 4 4641 0
	li 6,1
	.loc 4 4639 0
	slwi 11,11,2
	add 11,9,11
	slwi 9,0,2
	stwx 10,11,9
	.loc 4 4641 0
	lwz 4,0(28)
	lwz 5,4(28)
	addi 4,4,1
	addi 5,5,1
	bl _ZN6idMatX10ChangeSizeEiib
.LVL2194:
	.loc 4 4642 0
	lwz 9,0(28)
.LVL2195:
.LBB13574:
.LBB13575:
	.loc 3 2056 0
	lwz 11,4(28)
.LBE13575:
.LBE13574:
	.loc 4 4642 0
	addi 0,9,-1
	lwz 8,12(28)
.LBB13577:
.LBB13576:
	.loc 3 2056 0
	mullw 11,0,11
.LBE13576:
.LBE13577:
	.loc 4 4642 0
	lwz 10,.LC1@l(27)
	slwi 9,0,2
	slwi 11,11,2
	add 11,8,11
	stwx 10,11,9
	.loc 4 4644 0
	lwz 30,0(29)
.LBB13578:
.LBB13579:
	.loc 2 1757 0
	lwz 3,16(31)
.LBE13579:
.LBE13578:
	.loc 4 4644 0
	addi 25,30,3
	lwz 9,0(1)
	rlwinm 25,25,0,0,29
.LBB13584:
.LBB13580:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE13580:
.LBE13584:
	.loc 4 4644 0
	slwi 0,25,2
	subfic 0,0,-32
	stwux 9,1,0
	addi 24,1,23
	rlwinm 24,24,0,0,27
.LVL2196:
.LBB13585:
.LBB13581:
	.loc 2 1757 0
	beq- 7,.L1245
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1260
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L1245
.L1264:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL2197:
.L1245:
	.loc 2 1764 0
	cmpw 7,30,25
	.loc 2 1763 0
	li 0,-1
.LBE13581:
.LBE13585:
	.loc 4 4644 0
	mr 4,24
.LBB13586:
.LBB13582:
	.loc 2 1761 0
	stw 24,16(31)
	.loc 2 1762 0
	stw 30,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL2198:
	.loc 2 1764 0
	bge- 7,.L1247
	slwi 9,30,2
	li 11,0
	b .L1249
.LVL2199:
.L1261:
	lwz 4,16(31)
.L1249:
	addi 30,30,1
.LVL2200:
	stwx 11,4,9
	.loc 4 4631 0
	addi 0,30,3
	.loc 2 1764 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,30,0
	blt+ 7,.L1261
	lwz 0,12(31)
	lwz 4,16(31)
.L1247:
.LVL2201:
.LBE13582:
.LBE13586:
.LBB13587:
.LBB13588:
	.loc 2 1552 0
	lwz 30,0(26)
.LVL2202:
.LBB13589:
.LBB13590:
	.loc 2 1708 0
	addi 25,30,3
	rlwinm 25,25,0,0,29
.LVL2203:
	.loc 2 1709 0
	cmpw 7,25,0
	ble- 7,.L1250
	cmpwi 7,0,-1
	beq- 7,.L1250
	.loc 2 1710 0
	cmpwi 7,4,0
	beq- 7,.L1251
	.loc 2 1711 0
	mr 3,4
	bl _Z10Mem_Free16Pv
.LVL2204:
.L1251:
	.loc 2 1713 0
	slwi 3,25,2
	bl _Z11Mem_Alloc16i
	stw 3,16(31)
	mr 4,3
	.loc 2 1714 0
	stw 25,12(31)
.L1250:
	.loc 2 1717 0
	cmpw 7,30,25
	.loc 2 1716 0
	stw 30,8(31)
.LVL2205:
	.loc 2 1717 0
	bge- 7,.L1252
	slwi 9,30,2
	li 11,0
.LVL2206:
.L1254:
	addi 30,30,1
.LVL2207:
	stwx 11,4,9
	.loc 4 4631 0
	addi 0,30,3
	.loc 2 1717 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,30,0
	blt+ 7,.L1254
.L1252:
.LBE13590:
.LBE13589:
	.loc 2 1554 0
	lis 9,SIMDProcessor@ha
	lwz 5,8(26)
	lwz 3,SIMDProcessor@l(9)
	lwz 6,0(26)
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LVL2208:
	.loc 2 1558 0
	li 0,0
	lis 9,_ZN6idVecX9tempIndexE@ha
	stw 0,_ZN6idVecX9tempIndexE@l(9)
.LVL2209:
.LBE13588:
.LBE13587:
	.loc 4 4648 0
	mr 3,29
.LBB13591:
.LBB13592:
	.loc 2 1537 0
	lwz 9,16(31)
.LBE13592:
.LBE13591:
	.loc 4 4648 0
	mr 4,28
	.loc 4 4646 0
	lwz 11,0(29)
	.loc 4 4648 0
	addi 5,31,8
	.loc 4 4646 0
	lfs 0,.LC1@l(27)
	.loc 4 4648 0
	mr 6,23
	.loc 4 4646 0
	addi 0,11,-1
.LBB13594:
.LBB13593:
	.loc 2 1537 0
	slwi 0,0,2
.LBE13593:
.LBE13594:
	.loc 4 4646 0
	lfsx 13,9,0
	fsubs 0,13,0
	stfsx 0,9,0
	.loc 4 4648 0
	lwz 7,0(29)
	addi 7,7,-1
	bl _ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i
.LEHE54:
.LVL2210:
	mr 30,3
.LVL2211:
	lwz 3,16(31)
	lwz 0,12(31)
.LBB13595:
.LBB13596:
.LBB13597:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1255
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1262
	cmpwi 7,0,-1
	beq- 7,.L1255
.L1263:
.LEHB55:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE55:
.L1255:
.LBE13597:
.LBE13596:
.LBE13595:
.LBE13603:
	.loc 4 4649 0 discriminator 1
	addi 11,31,64
	mr 3,30
	lwz 0,4(11)
	lwz 23,-36(11)
.LVL2212:
	mtlr 0
	lwz 24,-32(11)
.LVL2213:
	lwz 25,-28(11)
.LVL2214:
	lwz 26,-24(11)
.LVL2215:
	lwz 27,-20(11)
	lwz 28,-16(11)
.LVL2216:
	lwz 29,-12(11)
.LVL2217:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI230:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI231:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
.LVL2218:
	blr
.LVL2219:
.L1262:
.LCFI232:
	.cfi_restore_state
.LBB13604:
.LBB13600:
.LBB13599:
.LBB13598:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1255
	cmpwi 7,0,-1
	bne+ 7,.L1263
	b .L1255
.LVL2220:
.L1260:
.LBE13598:
.LBE13599:
.LBE13600:
.LBB13601:
.LBB13583:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1245
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L1264
	b .L1245
.LVL2221:
.L1259:
	mr 30,3
.LBE13583:
.LBE13601:
	.loc 4 4648 0
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB56:
	bl _Unwind_Resume
.LEHE56:
.LBE13604:
	.cfi_endproc
.LFE2613:
	.section	.gcc_except_table
.LLSDA2613:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2613-.LLSDACSB2613
.LLSDACSB2613:
	.uleb128 .LEHB54-.LFB2613
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L1259-.LFB2613
	.uleb128 0
	.uleb128 .LEHB55-.LFB2613
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB2613
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
.LLSDACSE2613:
	.section	".text"
	.size	_ZN6idMatX18QR_UpdateIncrementERS_RK6idVecXS3_, .-_ZN6idMatX18QR_UpdateIncrementERS_RK6idVecXS3_
	.align 2
	.globl _ZN6idMatX18QR_UpdateDecrementERS_RK6idVecXS3_i
	.type	_ZN6idMatX18QR_UpdateDecrementERS_RK6idVecXS3_i, @function
_ZN6idMatX18QR_UpdateDecrementERS_RK6idVecXS3_i:
.LFB2614:
	.loc 4 4659 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2614
.LVL2222:
	mflr 0
	stwu 1,-96(1)
.LCFI233:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	mfcr 12
	stw 20,48(1)
	mr 20,4
	.cfi_offset 20, -48
	.cfi_register 70, 12
	stw 0,100(1)
	stw 21,52(1)
	mr 21,7
	.cfi_offset 21, -44
	.cfi_offset 65, 4
	stw 22,56(1)
	mr 22,3
	.cfi_offset 22, -40
	stw 25,68(1)
	stw 29,84(1)
	mr 29,5
	.cfi_offset 29, -12
	.cfi_offset 25, -28
	stw 30,88(1)
	mr 30,6
	.cfi_offset 30, -8
	stw 31,92(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI234:
	.cfi_def_cfa_register 31
.LVL2223:
	stw 23,60(1)
	stw 24,64(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 12,44(1)
.LBB13658:
	.loc 4 4667 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 25,9
	rlwinm 0,0,0,0,29
.LBB13659:
.LBB13660:
	.loc 2 1762 0
	stw 9,20(31)
.LBE13660:
.LBE13659:
	.loc 4 4667 0
	slwi 11,0,2
.LBB13663:
.LBB13661:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE13661:
.LBE13663:
	.loc 4 4667 0
	subfic 11,11,-32
.LBB13664:
.LBB13665:
	.loc 2 1507 0
	li 0,0
.LVL2224:
.LBE13665:
.LBE13664:
	.loc 4 4667 0
	stwux 10,1,11
.LBB13666:
.LBB13667:
	.loc 2 1507 0
	stw 0,12(31)
.LBE13667:
.LBE13666:
	.loc 4 4667 0
	addi 11,1,23
.LVL2225:
.LBB13670:
.LBB13668:
	.loc 2 1507 0
	stw 0,8(31)
.LBE13668:
.LBE13670:
	.loc 4 4667 0
	rlwinm 11,11,0,0,27
.LVL2226:
.LBB13671:
.LBB13669:
	.loc 2 1508 0
	stw 0,16(31)
.LBE13669:
.LBE13671:
.LBB13672:
.LBB13662:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL2227:
	.loc 2 1764 0
	bge- 7,.L1268
	.cfi_offset 70, -52
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	slwi 10,9,2
	li 8,0
	b .L1269
.LVL2228:
.L1326:
	lwz 11,28(31)
.L1269:
	addi 9,9,1
.LVL2229:
	stwx 8,11,10
	.loc 4 4659 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1326
	lwz 25,0(22)
.L1268:
.LBE13662:
.LBE13672:
	.loc 4 4668 0
	addi 24,25,3
.LBB13673:
.LBB13674:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL2230:
.LBE13674:
.LBE13673:
	.loc 4 4668 0
	rlwinm 24,24,0,0,29
	lwz 9,0(1)
.LVL2231:
	slwi 0,24,2
.LBB13680:
.LBB13675:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE13675:
.LBE13680:
	.loc 4 4668 0
	subfic 0,0,-32
.LBB13681:
.LBB13676:
	.loc 2 1757 0
	lis 27,_ZN6idVecX7tempPtrE@ha
.LBE13676:
.LBE13681:
	.loc 4 4668 0
	stwux 9,1,0
.LVL2232:
	mr 26,25
	addi 23,1,23
	rlwinm 23,23,0,0,27
.LVL2233:
.LBB13682:
.LBB13677:
	.loc 2 1757 0
	beq- 7,.L1270
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,3,9
	bge- 7,.L1330
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L1270
.L1334:
	addi 28,31,20
.LEHB57:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LEHE57:
.LVL2234:
.L1270:
	.loc 2 1764 0
	cmpw 7,25,24
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 23,16(31)
	.loc 2 1762 0
	stw 25,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL2235:
	.loc 2 1764 0
	bge- 7,.L1272
	slwi 25,25,2
.LVL2236:
	li 9,0
	b .L1273
.LVL2237:
.L1331:
	lwz 23,16(31)
.L1273:
	addi 26,26,1
.LVL2238:
	stwx 9,23,25
	.loc 4 4659 0
	addi 0,26,3
	.loc 2 1764 0
	addi 25,25,4
	rlwinm 0,0,0,0,29
	cmpw 7,26,0
	blt+ 7,.L1331
.L1272:
.LBE13677:
.LBE13682:
.LBB13683:
.LBB13684:
	.loc 2 1544 0
	lwz 28,0(29)
.LBB13685:
.LBB13686:
	.loc 2 1748 0
	lis 25,_ZN6idVecX9tempIndexE@ha
	lwz 26,_ZN6idVecX9tempIndexE@l(25)
.LVL2239:
.LBE13686:
.LBE13685:
.LBE13684:
.LBE13683:
.LBB13695:
.LBB13678:
	.loc 4 8102 0
	addi 8,29,8
.LVL2240:
.LBE13678:
.LBE13695:
.LBB13696:
.LBB13693:
.LBB13690:
.LBB13687:
	.loc 2 1746 0
	addi 24,28,3
	rlwinm 24,24,0,0,29
	.loc 2 1748 0
	add 0,24,26
	slwi 26,26,2
	cmpwi 7,0,1024
	ble- 7,.L1274
	.loc 2 1746 0
	mr 0,24
	.loc 2 1748 0
	li 26,0
.L1274:
	.loc 2 1753 0
	cmpw 4,28,24
	.loc 2 1751 0
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LVL2241:
	.loc 2 1751 0
	add 26,9,26
	.loc 2 1753 0
	bge- 4,.L1275
	.loc 4 4659 0
	addi 11,28,-1
	mr 9,28
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 4659 0
	add 11,26,11
.LVL2242:
.L1276:
	.loc 2 1753 0
	addi 9,9,1
.LVL2243:
	stwu 10,4(11)
	.loc 4 4659 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1276
.LVL2244:
.L1275:
.LBE13687:
.LBE13690:
	.loc 2 1545 0
	lwz 0,0(29)
	cmpwi 7,0,0
	ble- 7,.L1277
	.loc 4 4659 0
	addi 11,26,-4
.LBB13691:
.LBB13688:
	li 9,0
.LVL2245:
.L1278:
.LBE13688:
.LBE13691:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL2246:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(29)
	cmpw 7,9,0
	blt+ 7,.L1278
.LVL2247:
.L1277:
.LBE13693:
.LBE13696:
.LBB13697:
.LBB13698:
.LBB13699:
.LBB13700:
	.loc 2 1709 0
	lwz 0,24(31)
	cmpw 7,24,0
	ble- 7,.L1328
	cmpwi 7,0,-1
	beq- 7,.L1328
	.loc 2 1710 0
	lwz 3,28(31)
	cmpwi 7,3,0
	beq- 7,.L1282
.LEHB58:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL2248:
.L1282:
	.loc 2 1713 0
	slwi 3,24,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,28(31)
	.loc 2 1714 0
	stw 24,24(31)
	b .L1280
.LVL2249:
.L1328:
	.loc 2 1709 0
	lwz 4,28(31)
.LVL2250:
.L1280:
	.loc 2 1716 0
	stw 28,20(31)
.LVL2251:
	.loc 2 1717 0
	bge- 4,.L1283
	slwi 11,28,2
.LBE13700:
.LBE13699:
.LBE13698:
.LBE13697:
.LBB13705:
.LBB13694:
.LBB13692:
.LBB13689:
	.loc 4 4659 0
	mr 9,28
.LBE13689:
.LBE13692:
.LBE13694:
.LBE13705:
.LBB13706:
.LBB13703:
.LBB13702:
.LBB13701:
	.loc 2 1717 0
	li 10,0
.LVL2252:
.L1285:
	addi 9,9,1
.LVL2253:
	stwx 10,4,11
	.loc 4 4659 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,28(31)
	cmpw 7,9,0
	blt+ 7,.L1285
.LVL2254:
.L1283:
.LBE13701:
.LBE13702:
	.loc 2 1554 0
	lis 23,SIMDProcessor@ha
	mr 5,26
	lwz 3,SIMDProcessor@l(23)
	mr 6,28
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE58:
.LBE13703:
.LBE13706:
.LBB13707:
.LBB13708:
.LBB13709:
	.loc 2 1525 0
	cmpwi 7,26,0
.LBE13709:
.LBE13708:
.LBE13707:
.LBB13716:
.LBB13704:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LBE13704:
.LBE13716:
.LBB13717:
.LBB13713:
.LBB13710:
	.loc 2 1525 0
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	beq- 7,.L1313
	cmplw 7,26,9
	bge- 7,.L1332
.L1288:
	.loc 2 1526 0
	mr 3,26
	addi 28,31,20
.LVL2255:
.LEHB59:
	bl _Z10Mem_Free16Pv
.LEHE59:
	lwz 28,_ZN6idVecX9tempIndexE@l(25)
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
.L1287:
.LBE13710:
.LBE13713:
.LBE13717:
.LBB13718:
.LBB13719:
	.loc 2 1544 0
	lwz 29,0(30)
.LVL2256:
.LBE13719:
.LBE13718:
.LBB13728:
.LBB13714:
.LBB13711:
	.loc 4 8102 0
	addi 8,30,8
.LVL2257:
.LBE13711:
.LBE13714:
.LBE13728:
.LBB13729:
.LBB13726:
.LBB13720:
.LBB13721:
	.loc 2 1746 0
	addi 26,29,3
	rlwinm 26,26,0,0,29
	.loc 2 1748 0
	add 0,26,28
	slwi 28,28,2
	cmpwi 7,0,1024
	ble- 7,.L1289
	.loc 2 1746 0
	mr 0,26
	.loc 2 1748 0
	li 28,0
.L1289:
	.loc 2 1753 0
	cmpw 4,29,26
	.loc 2 1751 0
	add 28,9,28
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LVL2258:
	.loc 2 1753 0
	bge- 4,.L1290
	.loc 4 4659 0
	addi 11,29,-1
	mr 9,29
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 4659 0
	add 11,28,11
.LVL2259:
.L1291:
	.loc 2 1753 0
	addi 9,9,1
.LVL2260:
	stwu 10,4(11)
	.loc 4 4659 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1291
.LVL2261:
.L1290:
.LBE13721:
.LBE13720:
	.loc 2 1545 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L1292
	.loc 4 4659 0
	addi 11,28,-4
.LBB13724:
.LBB13722:
	li 9,0
.LVL2262:
.L1293:
.LBE13722:
.LBE13724:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL2263:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L1293
.LVL2264:
.L1292:
.LBE13726:
.LBE13729:
.LBB13730:
.LBB13731:
.LBB13732:
.LBB13733:
	.loc 2 1709 0
	lwz 0,12(31)
	cmpw 7,26,0
	ble- 7,.L1329
	cmpwi 7,0,-1
	beq- 7,.L1329
	.loc 2 1710 0
	lwz 3,16(31)
	cmpwi 7,3,0
	beq- 7,.L1297
.LEHB60:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL2265:
.L1297:
	.loc 2 1713 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	stw 3,16(31)
	mr 4,3
	.loc 2 1714 0
	stw 26,12(31)
.L1295:
	.loc 2 1716 0
	stw 29,8(31)
.LVL2266:
	.loc 2 1717 0
	bge- 4,.L1298
	slwi 11,29,2
.LBE13733:
.LBE13732:
.LBE13731:
.LBE13730:
.LBB13741:
.LBB13727:
.LBB13725:
.LBB13723:
	.loc 4 4659 0
	mr 9,29
.LBE13723:
.LBE13725:
.LBE13727:
.LBE13741:
.LBB13742:
.LBB13738:
.LBB13736:
.LBB13734:
	.loc 2 1717 0
	li 10,0
.LVL2267:
.L1300:
	addi 9,9,1
.LVL2268:
	stwx 10,4,11
	.loc 4 4659 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,9,0
	blt+ 7,.L1300
.LVL2269:
.L1298:
.LBE13734:
.LBE13736:
	.loc 2 1554 0
	lwz 3,SIMDProcessor@l(23)
	mr 5,28
	mr 6,29
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE60:
.LBE13738:
.LBE13742:
.LBB13743:
.LBB13744:
.LBB13745:
	.loc 2 1525 0
	cmpwi 7,28,0
.LBE13745:
.LBE13744:
.LBE13743:
.LBB13748:
.LBB13739:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(25)
.LBE13739:
.LBE13748:
.LBB13749:
.LBB13747:
.LBB13746:
	.loc 2 1525 0
	beq- 7,.L1301
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,28,9
	blt- 7,.L1302
	addi 9,9,4096
	cmplw 7,28,9
	blt- 7,.L1301
.L1302:
	.loc 2 1526 0
	mr 3,28
	addi 28,31,20
.LEHB61:
	bl _Z10Mem_Free16Pv
.L1301:
.LVL2270:
.LBE13746:
.LBE13747:
.LBE13749:
.LBB13750:
.LBB13751:
	.loc 4 4673 0
	addi 28,31,20
	.loc 2 1537 0
	slwi 0,21,2
	lwz 9,8(28)
.LBE13751:
.LBE13750:
	.loc 4 4673 0
	lis 11,.LC1@ha
	lfs 0,.LC1@l(11)
	.loc 4 4674 0
	li 11,0
	.loc 4 4673 0
	lfsx 13,9,0
	.loc 4 4676 0
	mr 3,22
	mr 4,20
	mr 5,28
	.loc 4 4673 0
	fadds 0,13,0
	.loc 4 4676 0
	addi 6,31,8
	mr 7,21
	.loc 4 4673 0
	stfsx 0,9,0
.LVL2271:
	.loc 4 4674 0
	lwz 9,16(31)
	stwx 11,9,0
	.loc 4 4676 0
	bl _ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i
.LEHE61:
	cmpwi 7,3,0
	.loc 4 4677 0
	li 30,0
.LVL2272:
	.loc 4 4676 0
	bne- 7,.L1333
.L1303:
	.loc 4 4684 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB13752:
.LBB13753:
.LBB13754:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1304
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,3,9
	blt- 7,.L1305
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1304
.L1305:
	cmpwi 7,0,-1
	beq- 7,.L1304
.LEHB62:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE62:
.L1304:
	.loc 4 4684 0
	lwz 3,8(28)
	lwz 0,4(28)
.LBE13754:
.LBE13753:
.LBE13752:
.LBB13755:
.LBB13756:
.LBB13757:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1306
	lwz 9,_ZN6idVecX7tempPtrE@l(27)
	cmplw 7,3,9
	blt- 7,.L1307
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1306
.L1307:
	cmpwi 7,0,-1
	beq- 7,.L1306
.LEHB63:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE63:
.L1306:
.LBE13757:
.LBE13756:
.LBE13755:
.LBE13658:
	.loc 4 4685 0
	addi 11,31,96
	mr 3,30
	lwz 0,4(11)
	lwz 12,-52(11)
	mtlr 0
	lwz 20,-48(11)
.LVL2273:
	lwz 21,-44(11)
.LVL2274:
	mtcrf 8,12
	lwz 22,-40(11)
.LVL2275:
	lwz 23,-36(11)
	lwz 24,-32(11)
.LVL2276:
	lwz 25,-28(11)
	lwz 26,-24(11)
.LVL2277:
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL2278:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI235:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI236:
	.cfi_def_cfa_register 1
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
.LVL2279:
.L1332:
.LCFI237:
	.cfi_restore_state
.LBB13761:
.LBB13758:
.LBB13715:
.LBB13712:
	.loc 2 1525 0
	addi 0,9,4096
	cmplw 7,26,0
	bge+ 7,.L1288
.L1313:
	li 28,0
.LVL2280:
	b .L1287
.LVL2281:
.L1330:
.LBE13712:
.LBE13715:
.LBE13758:
.LBB13759:
.LBB13679:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1270
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L1334
	b .L1270
.LVL2282:
.L1329:
.LBE13679:
.LBE13759:
.LBB13760:
.LBB13740:
.LBB13737:
.LBB13735:
	.loc 2 1709 0
	lwz 4,16(31)
	b .L1295
.LVL2283:
.L1333:
.LBE13735:
.LBE13737:
.LBE13740:
.LBE13760:
	.loc 4 4681 0
	mr 3,22
	mr 4,21
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 4682 0
	mr 3,20
	mr 4,21
	.loc 4 4684 0
	li 30,1
	.loc 4 4682 0
	bl _ZN6idMatX16Update_DecrementEi
	b .L1303
.LVL2284:
.L1316:
	mr 30,3
.LVL2285:
.L1309:
	.loc 4 4684 0
	lwz 3,12(31)
	lwz 4,16(31)
	bl _ZN6idVecXD2Ev.isra.6
.L1311:
	lwz 3,4(28)
	lwz 4,8(28)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB64:
	bl _Unwind_Resume
.LEHE64:
.LVL2286:
.L1318:
	.loc 4 4672 0
	mr 4,28
	mr 30,3
.LVL2287:
	mr 3,26
	addi 28,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L1309
.LVL2288:
.L1319:
	mr 30,3
	b .L1311
.LVL2289:
.L1317:
	mr 30,3
.LVL2290:
	.loc 4 4671 0
	mr 4,26
	mr 3,24
	addi 28,31,20
.LVL2291:
	bl _ZN6idVecXD2Ev.isra.6
	b .L1309
.LBE13761:
	.cfi_endproc
.LFE2614:
	.section	.gcc_except_table
.LLSDA2614:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2614-.LLSDACSB2614
.LLSDACSB2614:
	.uleb128 .LEHB57-.LFB2614
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L1316-.LFB2614
	.uleb128 0
	.uleb128 .LEHB58-.LFB2614
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L1317-.LFB2614
	.uleb128 0
	.uleb128 .LEHB59-.LFB2614
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L1316-.LFB2614
	.uleb128 0
	.uleb128 .LEHB60-.LFB2614
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L1318-.LFB2614
	.uleb128 0
	.uleb128 .LEHB61-.LFB2614
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L1316-.LFB2614
	.uleb128 0
	.uleb128 .LEHB62-.LFB2614
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L1319-.LFB2614
	.uleb128 0
	.uleb128 .LEHB63-.LFB2614
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB64-.LFB2614
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
.LLSDACSE2614:
	.section	".text"
	.size	_ZN6idMatX18QR_UpdateDecrementERS_RK6idVecXS3_i, .-_ZN6idMatX18QR_UpdateDecrementERS_RK6idVecXS3_i
	.align 2
	.globl _ZNK6idMatX8QR_SolveER6idVecXRKS0_S3_S3_
	.type	_ZNK6idMatX8QR_SolveER6idVecXRKS0_S3_S3_, @function
_ZNK6idMatX8QR_SolveER6idVecXRKS0_S3_S3_:
.LFB2615:
	.loc 4 4694 0
	.cfi_startproc
.LVL2292:
.LBB13762:
	.loc 4 4702 0
	lwz 9,0(3)
.LBE13762:
	.loc 4 4694 0
	stwu 1,-24(1)
.LCFI238:
	.cfi_def_cfa_offset 24
.LBB13779:
	.loc 4 4702 0
	cmpwi 7,9,0
.LBE13779:
	.loc 4 4694 0
	stw 31,20(1)
.LBB13780:
	.loc 4 4702 0
	mr 31,9
	.cfi_offset 31, -4
.LBE13780:
	.loc 4 4694 0
	stw 29,12(1)
	stw 30,16(1)
.LBB13781:
	.loc 4 4702 0
	ble- 7,.L1336
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	li 11,0
.LVL2293:
.L1337:
.LBB13763:
.LBB13764:
	.loc 2 1532 0 discriminator 2
	lwz 9,8(5)
.LBE13764:
.LBE13763:
	.loc 4 4694 0 discriminator 2
	slwi 0,11,2
.LVL2294:
	.loc 4 4702 0 discriminator 2
	addi 11,11,1
.LVL2295:
.LBB13766:
.LBB13765:
	.loc 2 1532 0 discriminator 2
	lwzx 10,9,0
.LBE13765:
.LBE13766:
	.loc 4 4703 0 discriminator 2
	lwz 9,8(4)
	stwx 10,9,0
	.loc 4 4702 0 discriminator 2
	lwz 9,0(3)
	cmpw 7,9,11
	mr 31,9
	bgt+ 7,.L1337
.LVL2296:
.L1336:
	.loc 4 4707 0 discriminator 1
	addic. 8,9,-1
	ble- 0,.L1339
	.loc 4 4707 0 is_stmt 0
	li 12,0
	lis 29,.LC11@ha
	.loc 4 4710 0 is_stmt 1
	cmpw 7,31,12
	.loc 4 4707 0
	li 5,0
.LVL2297:
	la 29,.LC11@l(29)
.LVL2298:
	.loc 4 4710 0
	ble- 7,.L1349
.LVL2299:
.L1358:
	lwz 0,4(3)
	.loc 4 4694 0
	subf 31,12,31
	lwz 30,12(3)
	mtctr 31
	mullw 11,12,0
	.loc 4 4710 0
	lwz 8,8(4)
	.loc 4 4694 0
	lfd 0,0(29)
	slwi 0,0,2
	mr 10,5
	slwi 11,11,2
	add 11,5,11
	add 11,30,11
.LVL2300:
.L1340:
	.loc 4 4711 0 discriminator 2
	lfs 12,0(11)
	.loc 4 4710 0 discriminator 2
	add 11,11,0
	.loc 4 4711 0 discriminator 2
	lfsx 13,8,10
	.loc 4 4710 0 discriminator 2
	addi 10,10,4
	.loc 4 4711 0 discriminator 2
	fmuls 13,12,13
	fadd 0,0,13
.LVL2301:
	.loc 4 4710 0 discriminator 2
	bdnz .L1340
.LVL2302:
.L1343:
.LBB13767:
.LBB13768:
	.loc 2 1532 0
	lwz 11,8(6)
.LBE13768:
.LBE13767:
	.loc 4 4714 0
	cmpw 7,12,9
	.loc 4 4713 0
	lfsx 13,11,5
	fdiv 0,0,13
.LVL2303:
	.loc 4 4714 0
	bge- 7,.L1341
	mr 10,5
	mr 11,12
.LVL2304:
.L1342:
.LBB13769:
.LBB13770:
	.loc 3 2051 0 discriminator 2
	lwz 8,4(3)
.LBE13770:
.LBE13769:
	.loc 4 4715 0 discriminator 2
	lwz 0,12(3)
.LBB13772:
.LBB13771:
	.loc 3 2051 0 discriminator 2
	mullw 8,11,8
.LBE13771:
.LBE13772:
.LBB13773:
.LBB13774:
	.loc 2 1537 0 discriminator 2
	lwz 9,8(4)
.LVL2305:
.LBE13774:
.LBE13773:
	.loc 4 4714 0 discriminator 2
	addi 11,11,1
.LVL2306:
	.loc 4 4715 0 discriminator 2
	lfsx 12,9,10
	slwi 8,8,2
	add 8,0,8
	lfsx 13,8,5
	.loc 4 4694 0 discriminator 2
	fneg 13,13
	.loc 4 4715 0 discriminator 2
	fmadd 13,13,0,12
	frsp 13,13
	stfsx 13,9,10
	.loc 4 4714 0 discriminator 2
	addi 10,10,4
	lwz 9,0(3)
	cmpw 7,9,11
	bgt+ 7,.L1342
.LVL2307:
.L1341:
	.loc 4 4707 0
	addi 12,12,1
.LVL2308:
	addi 8,9,-1
	cmpw 7,8,12
	addi 5,5,4
	ble- 7,.L1357
	mr 31,9
.LVL2309:
	.loc 4 4710 0
	cmpw 7,31,12
	bgt+ 7,.L1358
.LVL2310:
.L1349:
	lfd 0,0(29)
	b .L1343
.LVL2311:
.L1357:
	cmpwi 0,8,0
.LVL2312:
.L1339:
	.loc 4 4720 0
	blt- 0,.L1335
	slwi 6,8,2
.LVL2313:
.L1347:
	.loc 4 4694 0
	addi 0,8,1
	.loc 4 8102 0
	lwz 10,8(4)
.LVL2314:
	.loc 4 4723 0
	cmpw 7,0,9
.LBB13775:
.LBB13776:
	.loc 2 1537 0
	add 5,10,6
.LBE13776:
.LBE13775:
	.loc 4 4722 0
	lfsx 0,10,6
.LVL2315:
	.loc 4 4723 0
	bge- 7,.L1345
	lwz 12,4(3)
	subf 9,0,9
	lwz 31,12(3)
	mtctr 9
	mullw 12,8,12
	addi 11,6,4
	slwi 9,12,2
	add 9,31,9
.LVL2316:
.L1346:
	.loc 4 4724 0 discriminator 2
	lfsx 12,9,11
	lfsx 13,10,11
	.loc 4 4723 0 discriminator 2
	addi 11,11,4
	.loc 4 4724 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL2317:
	.loc 4 4723 0 discriminator 2
	bdnz .L1346
.L1345:
.LVL2318:
.LBB13777:
.LBB13778:
	.loc 2 1532 0
	lwz 9,8(7)
.LBE13778:
.LBE13777:
	.loc 4 4720 0
	cmpwi 7,8,0
	addi 8,8,-1
.LVL2319:
	.loc 4 4726 0
	lfsx 13,9,6
	.loc 4 4720 0
	addi 6,6,-4
	.loc 4 4726 0
	fdiv 0,0,13
.LVL2320:
	frsp 0,0
	stfs 0,0(5)
	.loc 4 4720 0
	beq- 7,.L1335
	lwz 9,0(3)
	b .L1347
.LVL2321:
.L1335:
.LBE13781:
	.loc 4 4728 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI239:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2615:
	.size	_ZNK6idMatX8QR_SolveER6idVecXRKS0_S3_S3_, .-_ZNK6idMatX8QR_SolveER6idVecXRKS0_S3_S3_
	.align 2
	.globl _ZNK6idMatX8QR_SolveER6idVecXRKS0_RKS_
	.type	_ZNK6idMatX8QR_SolveER6idVecXRKS0_RKS_, @function
_ZNK6idMatX8QR_SolveER6idVecXRKS0_RKS_:
.LFB2616:
	.loc 4 4737 0
	.cfi_startproc
.LVL2322:
	mflr 0
	stwu 1,-24(1)
.LCFI240:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB13782:
.LBB13783:
.LBB13784:
	.loc 3 2779 0
	lis 9,SIMDProcessor@ha
.LBE13784:
.LBE13783:
.LBE13782:
	.loc 4 4737 0
	mr 11,5
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
.LVL2323:
	stw 31,20(1)
.LBB13793:
.LBB13787:
.LBB13785:
	.loc 3 2779 0
	mr 5,30
.LVL2324:
.LBE13785:
.LBE13787:
.LBE13793:
	.loc 4 4737 0
	stw 0,28(1)
	.loc 4 4737 0
	mr 31,6
	.cfi_offset 65, 4
	.cfi_offset 31, -4
.LBB13794:
.LBB13788:
.LBB13786:
	.loc 3 2779 0
	lwz 9,SIMDProcessor@l(9)
	mr 6,11
.LVL2325:
	lwz 10,0(9)
	mr 3,9
.LVL2326:
	lwz 0,204(10)
	mtctr 0
	bctrl
.LVL2327:
.LBE13786:
.LBE13788:
	.loc 4 4747 0
	lwz 7,0(30)
.LVL2328:
	addic. 8,7,-1
	blt- 0,.L1359
	.loc 4 4737 0
	addi 6,8,1
	.loc 4 4747 0
	slwi 9,7,2
	.loc 4 4750 0
	cmpw 7,6,7
	.loc 4 8102 0
	lwz 11,8(29)
.LVL2329:
.LBB13789:
.LBB13790:
	.loc 2 1537 0
	addi 0,9,-4
.LBE13790:
.LBE13789:
	.loc 4 4749 0
	lfsx 0,11,0
.LVL2330:
	.loc 4 4750 0
	bge- 7,.L1367
.LVL2331:
.L1361:
	lwz 10,4(31)
	subf 7,6,7
	lwz 5,12(31)
	mtctr 7
	mullw 10,8,10
	slwi 10,10,2
	add 10,5,10
.LVL2332:
.L1363:
	.loc 4 4751 0 discriminator 2
	lfsx 12,10,9
	lfsx 13,11,9
	.loc 4 4750 0 discriminator 2
	addi 9,9,4
	.loc 4 4751 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL2333:
	.loc 4 4750 0 discriminator 2
	bdnz .L1363
.LVL2334:
	.loc 4 4753 0
	lfsx 13,10,0
	.loc 4 4747 0
	cmpwi 7,8,0
	mr 9,0
	addi 8,8,-1
.LVL2335:
	.loc 4 4753 0
	fdiv 0,0,13
.LVL2336:
	frsp 0,0
	stfsx 0,11,0
	.loc 4 4747 0
	beq- 7,.L1359
.LVL2337:
.L1368:
	lwz 7,0(30)
	.loc 4 4737 0
	addi 6,8,1
	.loc 4 8102 0
	lwz 11,8(29)
.LVL2338:
.LBB13792:
.LBB13791:
	.loc 2 1537 0
	addi 0,9,-4
.LBE13791:
.LBE13792:
	.loc 4 4750 0
	cmpw 7,6,7
	.loc 4 4749 0
	lfsx 0,11,0
.LVL2339:
	.loc 4 4750 0
	blt+ 7,.L1361
.L1367:
	lwz 9,4(31)
	.loc 4 4747 0
	cmpwi 7,8,0
	.loc 4 4750 0
	lwz 10,12(31)
	mullw 9,8,9
	.loc 4 4747 0
	addi 8,8,-1
.LVL2340:
	.loc 4 4750 0
	slwi 9,9,2
	add 10,10,9
	.loc 4 4747 0
	mr 9,0
	.loc 4 4753 0
	lfsx 13,10,0
	fdiv 0,0,13
.LVL2341:
	frsp 0,0
	stfsx 0,11,0
	.loc 4 4747 0
	bne+ 7,.L1368
.LVL2342:
.L1359:
.LBE13794:
	.loc 4 4755 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL2343:
	mtlr 0
	lwz 30,16(1)
.LVL2344:
	lwz 31,20(1)
.LVL2345:
	addi 1,1,24
.LCFI241:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE2616:
	.size	_ZNK6idMatX8QR_SolveER6idVecXRKS0_RKS_, .-_ZNK6idMatX8QR_SolveER6idVecXRKS0_RKS_
	.align 2
	.globl _ZNK6idMatX10QR_InverseERS_RK6idVecXS3_
	.type	_ZNK6idMatX10QR_InverseERS_RK6idVecXS3_, @function
_ZNK6idMatX10QR_InverseERS_RK6idVecXS3_:
.LFB2617:
	.loc 4 4764 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2617
.LVL2346:
	mflr 0
	stwu 1,-80(1)
.LCFI242:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	stw 25,52(1)
	stw 0,84(1)
	stw 26,56(1)
	mr 26,6
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.cfi_offset 25, -28
	stw 27,60(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 29,68(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 30,72(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,76(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI243:
	.cfi_def_cfa_register 31
.LVL2347:
	stw 22,40(1)
	stw 23,44(1)
	stw 24,48(1)
	stw 28,64(1)
.LBB13825:
	.loc 4 4770 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 25,9
	rlwinm 0,0,0,0,29
.LBB13826:
.LBB13827:
	.loc 2 1762 0
	stw 9,20(31)
.LBE13827:
.LBE13826:
	.loc 4 4770 0
	slwi 11,0,2
.LBB13830:
.LBB13828:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE13828:
.LBE13830:
	.loc 4 4770 0
	subfic 11,11,-32
.LBB13831:
.LBB13832:
	.loc 2 1507 0
	li 0,0
.LVL2348:
.LBE13832:
.LBE13831:
	.loc 4 4770 0
	stwux 10,1,11
.LBB13833:
.LBB13834:
	.loc 2 1507 0
	stw 0,12(31)
.LBE13834:
.LBE13833:
	.loc 4 4770 0
	addi 11,1,23
.LVL2349:
.LBB13837:
.LBB13835:
	.loc 2 1507 0
	stw 0,8(31)
.LBE13835:
.LBE13837:
	.loc 4 4770 0
	rlwinm 11,11,0,0,27
.LVL2350:
.LBB13838:
.LBB13836:
	.loc 2 1508 0
	stw 0,16(31)
.LBE13836:
.LBE13838:
.LBB13839:
.LBB13829:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL2351:
	.loc 2 1764 0
	bge- 7,.L1372
	.cfi_offset 28, -16
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
.LVL2352:
	slwi 10,9,2
	li 8,0
	b .L1373
.LVL2353:
.L1399:
	lwz 11,28(31)
.L1373:
	addi 9,9,1
.LVL2354:
	stwx 8,11,10
	.loc 4 4764 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1399
	lwz 25,0(29)
.L1372:
.LBE13829:
.LBE13839:
	.loc 4 4771 0
	addi 24,25,3
.LBB13840:
.LBB13841:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL2355:
.LBE13841:
.LBE13840:
	.loc 4 4771 0
	rlwinm 24,24,0,0,29
	lwz 9,0(1)
.LVL2356:
	slwi 0,24,2
.LBB13846:
.LBB13842:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE13842:
.LBE13846:
	.loc 4 4771 0
	subfic 0,0,-32
	mr 28,25
	stwux 9,1,0
	addi 23,1,23
	rlwinm 23,23,0,0,27
.LVL2357:
.LBB13847:
.LBB13843:
	.loc 2 1757 0
	beq- 7,.L1374
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1400
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L1374
.L1407:
.LEHB65:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL2358:
.L1374:
	.loc 2 1764 0
	cmpw 7,25,24
	.loc 2 1763 0
	li 0,-1
.LBE13843:
.LBE13847:
	.loc 4 4771 0
	mr 4,23
.LBB13848:
.LBB13844:
	.loc 2 1761 0
	stw 23,16(31)
	.loc 2 1762 0
	stw 25,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL2359:
	.loc 2 1764 0
	bge- 7,.L1376
	slwi 25,25,2
.LVL2360:
	li 9,0
	b .L1378
.LVL2361:
.L1401:
	lwz 4,16(31)
.L1378:
	addi 28,28,1
.LVL2362:
	stwx 9,4,25
	.loc 4 4764 0
	addi 0,28,3
	.loc 2 1764 0
	addi 25,25,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L1401
	lwz 28,8(31)
.LVL2363:
	lwz 4,16(31)
.L1376:
.LBE13844:
.LBE13848:
.LBB13849:
.LBB13850:
	.loc 2 1769 0
	lis 9,SIMDProcessor@ha
	mr 5,28
	lwz 3,SIMDProcessor@l(9)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL2364:
.LBE13850:
.LBE13849:
	.loc 4 4773 0
	lwz 24,0(29)
	lwz 23,4(29)
.LVL2365:
.LBB13851:
.LBB13852:
	.loc 3 2250 0
	lwz 0,8(30)
	.loc 3 2249 0
	mullw 28,24,23
	addi 25,28,3
	rlwinm 25,25,0,0,29
.LVL2366:
	.loc 3 2250 0
	cmpw 7,25,0
	ble- 7,.L1379
	cmpwi 7,0,-1
	beq- 7,.L1379
	.loc 3 2251 0
	lwz 3,12(30)
	cmpwi 7,3,0
	beq- 7,.L1380
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL2367:
.L1380:
	.loc 3 2254 0
	slwi 3,25,2
	bl _Z11Mem_Alloc16i
.LEHE65:
	stw 3,12(30)
	.loc 3 2255 0
	stw 25,8(30)
.L1379:
	.loc 3 2259 0
	cmpw 7,28,25
	.loc 3 2257 0
	stw 24,0(30)
	.loc 3 2258 0
	stw 23,4(30)
.LVL2368:
	.loc 3 2259 0
	bge- 7,.L1381
	slwi 9,28,2
	li 10,0
.L1382:
	addi 28,28,1
.LVL2369:
	lwz 11,12(30)
	.loc 4 4764 0
	addi 0,28,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,28,0
	addi 9,9,4
	blt+ 7,.L1382
.L1381:
.LVL2370:
.LBE13852:
.LBE13851:
	.loc 4 4775 0 discriminator 1
	lwz 0,0(29)
	addi 28,31,20
.LVL2371:
	cmpwi 7,0,0
	ble- 7,.L1383
	lis 9,.LC1@ha
	.loc 4 4775 0 is_stmt 0
	li 24,0
.LVL2372:
	.loc 4 4777 0 is_stmt 1
	lwz 22,.LC1@l(9)
	.loc 4 4782 0
	li 23,0
.LVL2373:
.L1386:
	.loc 4 4777 0
	lwz 9,16(31)
	.loc 4 4764 0
	slwi 25,24,2
	.loc 4 4778 0
	mr 3,29
	mr 4,28
	.loc 4 4777 0
	stwx 22,9,25
	.loc 4 4778 0
	addi 5,31,8
	mr 6,27
	mr 7,26
	bl _ZNK6idMatX8QR_SolveER6idVecXRKS0_S3_S3_
.LVL2374:
	.loc 4 4779 0
	lwz 0,0(29)
	cmpwi 7,0,0
	ble- 7,.L1384
	lwz 11,4(30)
	li 9,0
	b .L1385
.LVL2375:
.L1402:
	lwz 11,4(30)
.LVL2376:
.L1385:
.LBB13853:
.LBB13854:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE13854:
.LBE13853:
	.loc 4 4780 0 discriminator 2
	lwz 8,8(28)
	slwi 0,9,2
	lwz 10,12(30)
	lwzx 0,8,0
	.loc 4 4779 0 discriminator 2
	addi 9,9,1
.LVL2377:
	.loc 4 4780 0 discriminator 2
	slwi 11,11,2
	add 11,10,11
	stwx 0,11,25
	.loc 4 4779 0 discriminator 2
	lwz 0,0(29)
	cmpw 7,0,9
	bgt+ 7,.L1402
.LVL2378:
.L1384:
	.loc 4 4782 0
	lwz 9,16(31)
	.loc 4 4775 0
	addi 24,24,1
.LVL2379:
	.loc 4 4782 0
	stwx 23,9,25
	.loc 4 4775 0
	lwz 0,0(29)
	cmpw 7,0,24
	bgt+ 7,.L1386
.LVL2380:
.L1383:
	.loc 4 4783 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB13855:
.LBB13856:
.LBB13857:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1387
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1403
	cmpwi 7,0,-1
	beq- 7,.L1387
.L1406:
.LEHB66:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE66:
.L1387:
	.loc 4 4783 0 discriminator 1
	lwz 3,8(28)
	lwz 0,4(28)
.LBE13857:
.LBE13856:
.LBE13855:
.LBB13860:
.LBB13861:
.LBB13862:
	.loc 2 1525 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L1369
	.loc 2 1525 0 is_stmt 0
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1404
	cmpwi 7,0,-1
	beq- 7,.L1369
.L1405:
.LEHB67:
	.loc 2 1526 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE67:
.L1369:
.LBE13862:
.LBE13861:
.LBE13860:
.LBE13825:
	.loc 4 4784 0
	addi 11,31,80
	lwz 0,4(11)
	lwz 22,-40(11)
	mtlr 0
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
.LVL2381:
	lwz 27,-20(11)
.LVL2382:
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL2383:
	lwz 30,-8(11)
.LVL2384:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI244:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI245:
	.cfi_def_cfa_register 1
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
.LVL2385:
.L1404:
.LCFI246:
	.cfi_restore_state
.LBB13868:
.LBB13865:
.LBB13864:
.LBB13863:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1369
	cmpwi 7,0,-1
	bne+ 7,.L1405
	b .L1369
.L1403:
.LBE13863:
.LBE13864:
.LBE13865:
.LBB13866:
.LBB13859:
.LBB13858:
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1387
	cmpwi 7,0,-1
	bne+ 7,.L1406
	b .L1387
.LVL2386:
.L1400:
.LBE13858:
.LBE13859:
.LBE13866:
.LBB13867:
.LBB13845:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1374
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L1407
	b .L1374
.LVL2387:
.L1394:
	mr 30,3
.LVL2388:
.L1392:
.LBE13845:
.LBE13867:
	.loc 4 4783 0
	lwz 3,4(28)
	lwz 4,8(28)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB68:
	bl _Unwind_Resume
.LEHE68:
.LVL2389:
.L1393:
	mr 30,3
.LVL2390:
	lwz 4,16(31)
	lwz 3,12(31)
	addi 28,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L1392
.LBE13868:
	.cfi_endproc
.LFE2617:
	.section	.gcc_except_table
.LLSDA2617:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2617-.LLSDACSB2617
.LLSDACSB2617:
	.uleb128 .LEHB65-.LFB2617
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1393-.LFB2617
	.uleb128 0
	.uleb128 .LEHB66-.LFB2617
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1394-.LFB2617
	.uleb128 0
	.uleb128 .LEHB67-.LFB2617
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB2617
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
.LLSDACSE2617:
	.section	".text"
	.size	_ZNK6idMatX10QR_InverseERS_RK6idVecXS3_, .-_ZNK6idMatX10QR_InverseERS_RK6idVecXS3_
	.align 2
	.globl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
	.type	_ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_, @function
_ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_:
.LFB2618:
	.loc 4 4793 0
	.cfi_startproc
.LVL2391:
	mflr 0
	stwu 1,-48(1)
.LCFI247:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 23,12(1)
	stw 24,16(1)
	mr 24,7
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	stw 25,20(1)
	mr 25,6
	.cfi_offset 25, -28
	stw 28,32(1)
	stw 29,36(1)
	mr 29,5
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -8
.LVL2392:
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 26,24(1)
	stw 27,28(1)
.LBB13904:
	.loc 4 4797 0
	lwz 26,0(3)
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
.LVL2393:
	lwz 27,4(3)
.LVL2394:
.LBB13905:
.LBB13906:
.LBB13907:
	.loc 3 2250 0
	lwz 0,8(4)
	.loc 3 2249 0
	mullw 28,26,27
	addi 23,28,3
	rlwinm 23,23,0,0,29
.LVL2395:
	.loc 3 2250 0
	cmpw 7,23,0
	ble- 7,.L1444
.LVL2396:
	cmpwi 7,0,-1
	beq- 7,.L1444
	.loc 3 2251 0
	lwz 3,12(4)
.LVL2397:
	cmpwi 7,3,0
	beq- 7,.L1412
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL2398:
.L1412:
	.loc 3 2254 0
	slwi 3,23,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 23,8(30)
	.loc 3 2254 0
	mr 4,3
	stw 3,12(30)
	b .L1410
.L1444:
	.loc 3 2250 0
	lwz 4,12(30)
.L1410:
	.loc 3 2259 0
	cmpw 7,28,23
	.loc 3 2257 0
	stw 26,0(30)
	.loc 3 2258 0
	stw 27,4(30)
.LVL2399:
	.loc 3 2259 0
	bge- 7,.L1413
	slwi 9,28,2
	li 11,0
	b .L1415
.L1446:
	lwz 4,12(30)
.L1415:
	addi 28,28,1
.LVL2400:
	stwx 11,4,9
	.loc 4 4793 0
	addi 0,28,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L1446
	lwz 28,0(30)
.LVL2401:
	lwz 0,4(30)
	lwz 4,12(30)
	mullw 28,28,0
.L1413:
.LVL2402:
.LBE13907:
.LBE13906:
.LBB13908:
.LBB13909:
	.loc 3 2311 0
	lis 27,SIMDProcessor@ha
.LVL2403:
	mr 5,28
	lwz 11,SIMDProcessor@l(27)
	lwz 9,0(11)
	mr 3,11
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL2404:
.LBB13910:
	.loc 3 2315 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L1416
	.loc 3 2316 0
	lis 9,.LC1@ha
	.loc 3 2315 0
	lwz 11,4(30)
	.loc 3 2316 0
	lwz 8,.LC1@l(9)
	.loc 3 2315 0
	li 9,0
	b .L1417
.LVL2405:
.L1447:
	lwz 11,4(30)
.LVL2406:
.L1417:
	.loc 3 2316 0
	addi 0,11,1
	lwz 10,12(30)
	mullw 0,0,9
	.loc 3 2315 0
	addi 9,9,1
.LVL2407:
	.loc 3 2316 0
	slwi 0,0,2
	stwx 8,10,0
	.loc 3 2315 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L1447
.LVL2408:
.L1416:
.LBE13910:
.LBE13909:
.LBE13908:
.LBE13905:
	.loc 4 4798 0 discriminator 1
	lwz 28,4(31)
	cmpwi 7,28,1
	ble- 7,.L1448
	.loc 4 4798 0 is_stmt 0
	lwz 0,0(31)
	.loc 4 4799 0 is_stmt 1
	lis 9,.LC9@ha
	lfs 11,.LC9@l(9)
	.loc 4 4798 0
	li 7,0
	mr 26,0
.LVL2409:
	li 4,0
	.loc 4 4793 0
	lis 23,.LC11@ha
.LVL2410:
.L1425:
.LBB13911:
.LBB13912:
	.loc 2 1532 0
	lwz 9,8(25)
.LBE13912:
.LBE13911:
	.loc 4 4799 0
	lfsx 0,9,7
	fcmpu 7,0,11
	beq- 7,.L1420
.LVL2411:
	.loc 4 4802 0 discriminator 1
	cmpwi 7,0,0
	li 6,0
	.loc 4 4793 0 discriminator 1
	addi 3,7,-4
	.loc 4 4802 0 discriminator 1
	ble- 7,.L1420
.LVL2412:
.L1442:
	.loc 4 4804 0 discriminator 1
	cmpw 7,4,28
	bge- 7,.L1423
	.loc 4 4804 0 is_stmt 0
	lwz 10,4(30)
	.loc 4 4793 0 is_stmt 1
	mullw 9,4,28
	.loc 4 4804 0
	lwz 0,12(30)
	.loc 4 4793 0
	subf 26,4,28
	.loc 4 4804 0
	lwz 8,12(31)
	.loc 4 4793 0
	mtctr 26
	lfd 0,.LC11@l(23)
	slwi 5,28,2
	.loc 4 4804 0
	mullw 10,6,10
	.loc 4 4793 0
	slwi 9,9,2
	add 9,9,7
	add 9,8,9
	slwi 11,10,2
	add 11,0,11
	add 11,11,3
.LVL2413:
.L1422:
	.loc 4 4805 0 discriminator 2
	lfs 12,0(9)
	.loc 4 4804 0 discriminator 2
	add 9,9,5
	.loc 4 4805 0 discriminator 2
	lfsu 13,4(11)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2414:
	.loc 4 4804 0 discriminator 2
	bdnz .L1422
.LVL2415:
.LBB13913:
.LBB13914:
	.loc 2 1532 0
	lwz 9,8(25)
.LBE13914:
.LBE13913:
	.loc 4 4807 0
	mr 11,7
	lfsx 13,9,7
	mr 9,4
	fdiv 0,0,13
.LVL2416:
	b .L1424
.LVL2417:
.L1443:
	.loc 4 4808 0
	lwz 10,4(30)
	lwz 0,12(30)
	mullw 10,6,10
	lwz 8,12(31)
.LVL2418:
.L1424:
.LBB13915:
.LBB13916:
	.loc 3 2051 0 discriminator 2
	mullw 28,9,28
.LBE13916:
.LBE13915:
.LBB13917:
.LBB13918:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
.LVL2419:
.LBE13918:
.LBE13917:
	.loc 4 4809 0 discriminator 2
	lfsx 12,10,11
	.loc 4 4808 0 discriminator 2
	addi 9,9,1
.LVL2420:
	.loc 4 4809 0 discriminator 2
	slwi 28,28,2
	add 8,8,28
	lfsx 13,8,7
	.loc 4 4793 0 discriminator 2
	fneg 13,13
	.loc 4 4809 0 discriminator 2
	fmadd 13,13,0,12
	frsp 13,13
	stfsx 13,10,11
	.loc 4 4808 0 discriminator 2
	addi 11,11,4
	lwz 28,4(31)
	cmpw 7,28,9
	bgt+ 7,.L1443
	lwz 0,0(31)
.LVL2421:
.L1423:
	.loc 4 4802 0
	addi 6,6,1
.LVL2422:
	mr 26,0
	cmpw 7,0,6
	bgt+ 7,.L1442
.LVL2423:
.L1420:
	.loc 4 4798 0
	addi 4,4,1
.LVL2424:
	addi 9,28,-1
	cmpw 7,9,4
	addi 7,7,4
	bgt+ 7,.L1425
.LVL2425:
.L1419:
.LBB13919:
.LBB13920:
.LBB13921:
.LBB13922:
	.loc 3 2249 0
	mullw 30,28,26
.LVL2426:
	.loc 3 2250 0
	lwz 0,8(29)
	.loc 3 2249 0
	addi 25,30,3
.LVL2427:
	rlwinm 25,25,0,0,29
.LVL2428:
	.loc 3 2250 0
	cmpw 7,25,0
	ble- 7,.L1445
	cmpwi 7,0,-1
	beq- 7,.L1445
	.loc 3 2251 0
	lwz 3,12(29)
	cmpwi 7,3,0
	beq- 7,.L1429
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.L1429:
	.loc 3 2254 0
	slwi 3,25,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 25,8(29)
	.loc 3 2254 0
	mr 4,3
	stw 3,12(29)
	b .L1427
.L1445:
	.loc 3 2250 0
	lwz 4,12(29)
.L1427:
	.loc 3 2259 0
	cmpw 7,30,25
	.loc 3 2257 0
	stw 26,0(29)
	.loc 3 2258 0
	stw 28,4(29)
.LVL2429:
	.loc 3 2259 0
	bge- 7,.L1430
	slwi 9,30,2
	li 11,0
	b .L1432
.L1449:
	lwz 4,12(29)
.L1432:
	addi 30,30,1
.LVL2430:
	stwx 11,4,9
	.loc 4 4793 0
	addi 0,30,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,30,0
	blt+ 7,.L1449
	lwz 30,0(29)
.LVL2431:
	lwz 0,4(29)
	lwz 4,12(29)
	mullw 30,30,0
.L1430:
.LBE13922:
.LBE13921:
	.loc 3 2302 0
	lwz 11,SIMDProcessor@l(27)
	mr 5,30
	lwz 9,0(11)
	mr 3,11
	lwz 0,156(9)
	mtctr 0
	bctrl
.LBE13920:
.LBE13919:
	.loc 4 4815 0
	lwz 0,0(31)
.LBB13925:
.LBB13923:
	li 10,0
.LVL2432:
.LBE13923:
.LBE13925:
	cmpw 7,10,0
	bge- 7,.L1450
.L1436:
.LVL2433:
.LBB13926:
.LBB13927:
	.loc 3 2056 0
	lwz 11,4(29)
.LBE13927:
.LBE13926:
.LBB13929:
.LBB13924:
	.loc 4 4793 0
	slwi 9,10,2
.LVL2434:
.LBE13924:
.LBE13929:
.LBB13930:
.LBB13931:
	.loc 2 1532 0
	lwz 7,8(24)
.LBE13931:
.LBE13930:
	.loc 4 4817 0
	addi 5,10,1
.LVL2435:
.LBB13933:
.LBB13928:
	.loc 3 2056 0
	mullw 11,10,11
.LBE13928:
.LBE13933:
	.loc 4 4816 0
	lwz 8,12(29)
.LBB13934:
.LBB13932:
	.loc 2 1532 0
	lwzx 0,7,9
.LBE13932:
.LBE13934:
	.loc 4 4816 0
	slwi 11,11,2
	add 11,8,11
	stwx 0,11,9
	.loc 4 4817 0
	lwz 0,4(31)
	cmpw 7,5,0
	bge- 7,.L1434
.LVL2436:
	.loc 4 4793 0
	slwi 9,5,2
	mr 11,5
.LVL2437:
.L1435:
.LBB13935:
.LBB13936:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(29)
.LBE13936:
.LBE13935:
.LBB13938:
.LBB13939:
	.loc 3 2051 0 discriminator 2
	mullw 0,10,0
.LBE13939:
.LBE13938:
	.loc 4 4818 0 discriminator 2
	lwz 6,12(31)
	.loc 4 4817 0 discriminator 2
	addi 11,11,1
.LVL2438:
	.loc 4 4818 0 discriminator 2
	lwz 7,12(29)
.LBB13940:
.LBB13937:
	.loc 3 2056 0 discriminator 2
	mullw 8,10,8
.LBE13937:
.LBE13940:
	.loc 4 4818 0 discriminator 2
	slwi 0,0,2
	add 6,6,0
	lwzx 0,6,9
	slwi 8,8,2
	add 8,7,8
	stwx 0,8,9
	.loc 4 4817 0 discriminator 2
	addi 9,9,4
	lwz 0,4(31)
	cmpw 7,0,11
	bgt+ 7,.L1435
.LVL2439:
.L1434:
	.loc 4 4815 0
	lwz 0,0(31)
	.loc 4 4817 0
	mr 10,5
.LVL2440:
	.loc 4 4815 0
	cmpw 7,10,0
	blt+ 7,.L1436
.LVL2441:
.L1450:
.LBE13904:
	.loc 4 4821 0
	lwz 0,52(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
.LVL2442:
	lwz 25,20(1)
.LVL2443:
	lwz 26,24(1)
.LVL2444:
	lwz 27,28(1)
	lwz 28,32(1)
.LVL2445:
	lwz 29,36(1)
.LVL2446:
	lwz 30,40(1)
	lwz 31,44(1)
.LVL2447:
	addi 1,1,48
	.cfi_remember_state
.LCFI248:
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
.LVL2448:
.L1448:
.LCFI249:
	.cfi_restore_state
.LBB13941:
	.loc 4 4798 0
	lwz 26,0(31)
.LVL2449:
	b .L1419
.LBE13941:
	.cfi_endproc
.LFE2618:
	.size	_ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_, .-_ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
	.align 2
	.globl _ZNK6idMatX18QR_MultiplyFactorsERS_RK6idVecXS3_
	.type	_ZNK6idMatX18QR_MultiplyFactorsERS_RK6idVecXS3_, @function
_ZNK6idMatX18QR_MultiplyFactorsERS_RK6idVecXS3_:
.LFB2619:
	.loc 4 4830 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2619
.LVL2450:
	mflr 0
	stwu 1,-48(1)
.LCFI250:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 22,8(1)
.LBB13979:
.LBB13980:
.LBB13981:
.LBB13982:
	.loc 3 1995 0
	li 22,0
	.cfi_offset 22, -40
.LBE13982:
.LBE13981:
.LBE13980:
.LBE13979:
	.loc 4 4830 0
	stw 24,16(1)
	stw 26,24(1)
	stw 27,28(1)
.LBB14022:
.LBB14000:
.LBB13990:
.LBB13983:
	.loc 3 1996 0
	li 27,0
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
.LBE13983:
.LBE13990:
.LBE14000:
.LBE14022:
	.loc 4 4830 0
	stw 28,32(1)
	mr 28,5
	.cfi_offset 28, -16
	stw 29,36(1)
	mr 29,6
	.cfi_offset 29, -12
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 23,12(1)
	stw 25,20(1)
.LBB14023:
	.loc 4 4835 0
	lwz 23,0(3)
	.cfi_offset 25, -28
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	lwz 25,4(3)
.LVL2451:
.LBB14001:
.LBB13991:
.LBB13984:
	.loc 3 2249 0
	mullw 26,23,25
	addi 24,26,3
.LVL2452:
	.loc 3 2250 0
	rlwinm. 24,24,0,0,29
.LVL2453:
	ble- 0,.L1452
.LVL2454:
	.loc 3 2254 0
	slwi 3,24,2
.LVL2455:
.LEHB69:
	bl _Z11Mem_Alloc16i
.LEHE69:
.LVL2456:
	mr 27,3
	mr 22,24
.L1452:
.LVL2457:
	.loc 3 2259 0
	cmpw 7,26,24
	bge- 7,.L1453
	.loc 4 4830 0
	addi 11,26,-1
	mr 9,26
	slwi 11,11,2
	.loc 3 2259 0
	li 10,0
	.loc 4 4830 0
	add 11,27,11
.LVL2458:
.L1454:
	.loc 3 2259 0
	addi 9,9,1
.LVL2459:
	stwu 10,4(11)
	.loc 4 4830 0
	addi 0,9,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1454
.LVL2460:
.L1453:
.LBE13984:
.LBE13991:
.LBB13992:
.LBB13993:
	.loc 3 2311 0
	lis 9,SIMDProcessor@ha
	mr 4,27
	lwz 3,SIMDProcessor@l(9)
	mr 5,26
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
.LEHB70:
	bctrl
.LEHE70:
.LVL2461:
.LBB13994:
	.loc 3 2315 0
	cmpwi 7,23,0
	ble- 7,.L1455
	.loc 3 2316 0
	lis 9,.LC1@ha
	.loc 4 4830 0
	addi 0,25,1
	.loc 3 2316 0
	mtctr 23
	lwz 11,.LC1@l(9)
	.loc 4 4830 0
	slwi 0,0,2
	mr 9,27
.LVL2462:
.L1456:
	.loc 3 2316 0
	stw 11,0(9)
	.loc 3 2315 0
	add 9,9,0
	bdnz .L1456
.L1455:
.LVL2463:
.LBE13994:
.LBE13993:
.LBE13992:
.LBE14001:
	.loc 4 4836 0 discriminator 1
	lwz 11,4(31)
	lwz 0,0(31)
	cmpwi 7,11,1
	cmpwi 6,0,0
	ble- 7,.L1458
	.loc 4 4837 0
	lis 9,.LC9@ha
	cmpwi 6,0,0
	lfs 11,.LC9@l(9)
	.loc 4 4830 0
	addi 24,27,-4
.LVL2464:
.LBB14002:
.LBB13995:
.LBB13985:
	li 6,0
.LBE13985:
.LBE13995:
.LBE14002:
	slwi 3,25,2
.LBB14003:
.LBB13996:
.LBB13986:
	lis 26,.LC11@ha
.LVL2465:
.L1464:
.LBE13986:
.LBE13996:
.LBE14003:
.LBB14004:
.LBB14005:
	.loc 2 1532 0
	lwz 9,8(28)
.LBE14005:
.LBE14004:
	.loc 4 4830 0
	slwi 8,6,2
	.loc 4 4837 0
	lfsx 0,9,8
	fcmpu 7,0,11
	beq- 7,.L1459
.LVL2466:
	.loc 4 4840 0 discriminator 1
	ble- 6,.L1459
	.loc 4 4830 0
	mr 5,24
	li 4,0
.LVL2467:
.L1460:
	.loc 4 4842 0 discriminator 1
	cmpw 7,6,11
	bge- 7,.L1462
	.loc 4 4830 0
	mullw 9,6,11
	.loc 4 4842 0
	lwz 0,12(31)
.LBB14006:
.LBB13997:
.LBB13987:
	.loc 4 4830 0
	subf 23,6,11
	lfd 0,.LC11@l(26)
	mtctr 23
.LBE13987:
.LBE13997:
.LBE14006:
	slwi 7,11,2
.LBB14007:
.LBB13998:
.LBB13988:
	mr 10,5
.LBE13988:
.LBE13998:
.LBE14007:
	slwi 9,9,2
	add 9,8,9
	add 9,0,9
.LVL2468:
.L1461:
	.loc 4 4843 0 discriminator 2
	lfs 12,0(9)
	.loc 4 4842 0 discriminator 2
	add 9,9,7
	.loc 4 4843 0 discriminator 2
	lfsu 13,4(10)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2469:
	.loc 4 4842 0 discriminator 2
	bdnz .L1461
.LVL2470:
.LBB14008:
.LBB14009:
	.loc 2 1532 0
	lwz 9,8(28)
.LBE14009:
.LBE14008:
	.loc 4 4845 0
	mr 10,5
	lfsx 13,9,8
	mr 9,6
	fdiv 0,0,13
.LVL2471:
	b .L1463
.LVL2472:
.L1486:
	.loc 4 4846 0
	lwz 0,12(31)
.LVL2473:
.L1463:
.LBB14010:
.LBB14011:
	.loc 3 2051 0 discriminator 2
	mullw 11,9,11
.LBE14011:
.LBE14010:
	.loc 4 4847 0 discriminator 2
	lfsu 12,4(10)
	.loc 4 4846 0 discriminator 2
	addi 9,9,1
.LVL2474:
	.loc 4 4847 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
	lfsx 13,11,8
	.loc 4 4830 0 discriminator 2
	fneg 13,13
	.loc 4 4847 0 discriminator 2
	fmadd 13,13,0,12
	frsp 13,13
	stfs 13,0(10)
	.loc 4 4846 0 discriminator 2
	lwz 11,4(31)
	cmpw 7,11,9
	bgt+ 7,.L1486
	lwz 0,0(31)
.LVL2475:
.L1462:
	.loc 4 4840 0
	addi 4,4,1
.LVL2476:
	add 5,5,3
	cmpw 7,0,4
	bgt+ 7,.L1460
	cmpwi 6,0,0
.LVL2477:
.L1459:
	.loc 4 4836 0
	addi 6,6,1
.LVL2478:
	addi 9,11,-1
	cmpw 7,9,6
	addi 24,24,4
	bgt+ 7,.L1464
.LVL2479:
.L1458:
	.loc 4 4852 0 discriminator 1
	ble- 6,.L1465
	.loc 4 4830 0
	slwi 25,25,2
.LVL2480:
	mr 6,27
	li 7,0
.LVL2481:
.L1466:
	.loc 4 4853 0 discriminator 1
	cmpwi 7,11,0
	ble- 7,.L1470
	cmpwi 6,7,0
	.loc 4 4830 0
	slwi 5,7,2
	li 10,0
	li 8,0
.LVL2482:
.L1469:
.LBB14012:
.LBB14013:
	.loc 2 1532 0
	lwz 9,8(29)
.LBE14013:
.LBE14012:
	.loc 4 4854 0
	lfsx 13,6,10
	lfsx 0,9,5
	fmuls 0,13,0
.LVL2483:
	.loc 4 4855 0
	beq- 6,.L1467
	mullw 9,8,11
	.loc 4 4830 0
	lwz 0,12(31)
	.loc 4 4855 0
	mtctr 7
	.loc 4 4830 0
	addi 11,6,-4
	slwi 9,9,2
	add 9,0,9
	addi 9,9,-4
.LVL2484:
.L1468:
	.loc 4 4856 0 discriminator 2
	lfsu 12,4(11)
	lfsu 13,4(9)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2485:
	.loc 4 4855 0 discriminator 2
	bdnz .L1468
.LVL2486:
.L1467:
.LBB14014:
.LBB14015:
	.loc 3 2056 0
	lwz 9,4(30)
.LBE14015:
.LBE14014:
	.loc 4 4858 0
	frsp 0,0
.LVL2487:
	lwz 0,12(30)
	.loc 4 4853 0
	addi 8,8,1
.LVL2488:
.LBB14017:
.LBB14016:
	.loc 3 2056 0
	mullw 9,7,9
.LBE14016:
.LBE14017:
	.loc 4 4858 0
	slwi 9,9,2
	add 9,0,9
	stfsx 0,9,10
	.loc 4 4853 0
	addi 10,10,4
	lwz 11,4(31)
	cmpw 7,11,8
	bgt+ 7,.L1469
	lwz 0,0(31)
.LVL2489:
.L1470:
	.loc 4 4852 0
	addi 7,7,1
.LVL2490:
	add 6,6,25
	cmpw 7,0,7
	bgt+ 7,.L1466
.LVL2491:
.L1465:
.LBB14018:
.LBB14019:
.LBB14020:
	.loc 3 2001 0
	cmpwi 7,27,0
	beq- 7,.L1451
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,27,9
	blt- 7,.L1472
	addi 9,9,4096
	cmplw 7,27,9
	ble- 7,.L1451
.L1472:
	.loc 3 2002 0
	mr 3,27
.LEHB71:
	bl _Z10Mem_Free16Pv
.LEHE71:
.L1451:
.LBE14020:
.LBE14019:
.LBE14018:
.LBE14023:
	.loc 4 4861 0
	lwz 0,52(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
.LVL2492:
	lwz 28,32(1)
.LVL2493:
	lwz 29,36(1)
.LVL2494:
	lwz 30,40(1)
.LVL2495:
	lwz 31,44(1)
.LVL2496:
	addi 1,1,48
	.cfi_remember_state
.LCFI251:
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
.LVL2497:
.L1477:
.LCFI252:
	.cfi_restore_state
	mr 31,3
.LVL2498:
.LBB14024:
.LBB14021:
.LBB13999:
.LBB13989:
	.loc 3 1996 0
	li 27,0
	.loc 3 1995 0
	li 22,0
.LVL2499:
.L1474:
.LBE13989:
.LBE13999:
.LBE14021:
	.loc 4 4860 0
	mr 3,22
	mr 4,27
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,31
.LEHB72:
	bl _Unwind_Resume
.LEHE72:
.LVL2500:
.L1476:
	mr 31,3
.LVL2501:
	b .L1474
.LBE14024:
	.cfi_endproc
.LFE2619:
	.section	.gcc_except_table
.LLSDA2619:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2619-.LLSDACSB2619
.LLSDACSB2619:
	.uleb128 .LEHB69-.LFB2619
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1477-.LFB2619
	.uleb128 0
	.uleb128 .LEHB70-.LFB2619
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L1476-.LFB2619
	.uleb128 0
	.uleb128 .LEHB71-.LFB2619
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB2619
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
.LLSDACSE2619:
	.section	".text"
	.size	_ZNK6idMatX18QR_MultiplyFactorsERS_RK6idVecXS3_, .-_ZNK6idMatX18QR_MultiplyFactorsERS_RK6idVecXS3_
	.align 2
	.globl _ZNK6idMatX6PythagEff
	.type	_ZNK6idMatX6PythagEff, @function
_ZNK6idMatX6PythagEff:
.LFB2620:
	.loc 4 4870 0
	.cfi_startproc
.LVL2502:
	stwu 1,-24(1)
.LCFI253:
	.cfi_def_cfa_offset 24
.LBB14040:
.LBB14041:
.LBB14042:
	.loc 5 781 0
	stfs 1,16(1)
	lwz 0,16(1)
.LBE14042:
.LBE14041:
.LBB14045:
.LBB14046:
	stfs 2,16(1)
.LBE14046:
.LBE14045:
.LBB14049:
.LBB14043:
	rlwinm 0,0,0,1,31
.LBE14043:
.LBE14049:
.LBB14050:
.LBB14047:
	lwz 9,16(1)
.LBE14047:
.LBE14050:
.LBB14051:
.LBB14044:
	stw 0,8(1)
.LBE14044:
.LBE14051:
.LBB14052:
.LBB14048:
	rlwinm 9,9,0,1,31
	stw 9,12(1)
.LBE14048:
.LBE14052:
	.loc 4 4873 0
	lfs 0,8(1)
	.loc 4 4874 0
	lfs 12,12(1)
	.loc 4 4873 0
	fmr 13,0
.LVL2503:
	.loc 4 4874 0
	fmr 0,12
.LVL2504:
	.loc 4 4875 0
	fcmpu 7,13,0
	bgt- 7,.L1494
	.loc 4 4883 0
	lis 9,.LC9@ha
	lfs 1,.LC9@l(9)
.LVL2505:
	.loc 4 4879 0
	lis 9,.LC11@ha
	lfd 12,.LC11@l(9)
.LVL2506:
	fcmpu 7,0,12
	beq- 7,.L1490
	.loc 4 4880 0
	fdiv 13,13,0
.LVL2507:
.LBB14053:
.LBB14054:
.LBB14055:
.LBB14056:
	.loc 5 278 0
	lis 9,.LC8@ha
	lfs 11,.LC8@l(9)
.LBE14056:
.LBE14055:
.LBE14054:
.LBE14053:
	.loc 4 4881 0
	lis 9,.LC1@ha
	lfs 12,.LC1@l(9)
	fmadd 13,13,13,12
.LVL2508:
	frsp 13,13
	stfs 13,8(1)
.LVL2509:
.LBB14062:
.LBB14061:
.LBB14059:
.LBB14057:
	.loc 5 270 0
	lwz 0,8(1)
.LVL2510:
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 5 275 0
	lis 11,.LC6@ha
	lfs 10,.LC6@l(11)
	.loc 5 276 0
	or 0,0,9
	.loc 5 277 0
	stw 0,16(1)
	.loc 5 275 0
	fmuls 10,13,10
.LVL2511:
	.loc 5 277 0
	lfs 13,16(1)
.LVL2512:
	.loc 4 4870 0
	fneg 10,10
.LVL2513:
	.loc 5 277 0
	fmr 12,13
.LVL2514:
	.loc 5 278 0
	fmul 13,12,12
.LVL2515:
	fmadd 13,10,13,11
	fmul 13,12,13
.LVL2516:
.LBE14057:
.LBE14059:
	.loc 5 303 0
	lfs 12,8(1)
.LBB14060:
.LBB14058:
	.loc 5 279 0
	fmul 1,13,13
	fmadd 1,10,1,11
.LVL2517:
	fmul 1,13,1
.LVL2518:
	.loc 5 280 0
	frsp 1,1
.LVL2519:
.LBE14058:
.LBE14060:
	.loc 5 303 0
	fmuls 1,12,1
.LBE14061:
.LBE14062:
	.loc 4 4881 0
	fmul 0,1,0
.LVL2520:
	frsp 1,0
.LVL2521:
.L1490:
.LBE14040:
	.loc 4 4886 0
	addi 1,1,24
	.cfi_remember_state
.LCFI254:
	.cfi_def_cfa_offset 0
	blr
.LVL2522:
.L1494:
.LCFI255:
	.cfi_restore_state
.LBB14075:
	.loc 4 4876 0
	fdiv 0,0,13
.LVL2523:
.LBB14063:
.LBB14064:
.LBB14065:
.LBB14066:
	.loc 5 278 0
	lis 9,.LC8@ha
	lfs 11,.LC8@l(9)
.LBE14066:
.LBE14065:
.LBE14064:
.LBE14063:
	.loc 4 4877 0
	lis 9,.LC1@ha
	lfs 12,.LC1@l(9)
.LVL2524:
	fmadd 0,0,0,12
.LVL2525:
	frsp 0,0
	stfs 0,8(1)
.LVL2526:
.LBB14073:
.LBB14071:
.LBB14069:
.LBB14067:
	.loc 5 270 0
	lwz 0,8(1)
.LVL2527:
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	subfic 0,11,380
	lis 11,_ZN6idMath5iSqrtE@ha
	la 11,_ZN6idMath5iSqrtE@l(11)
	rlwinm 0,0,22,0,8
	lwzx 9,11,9
	.loc 5 275 0
	lis 11,.LC6@ha
	lfs 10,.LC6@l(11)
	.loc 5 276 0
	or 0,0,9
	.loc 5 277 0
	stw 0,16(1)
	.loc 5 275 0
	fmuls 10,0,10
.LVL2528:
	.loc 5 277 0
	lfs 0,16(1)
.LVL2529:
	.loc 4 4870 0
	fneg 10,10
.LVL2530:
	.loc 5 277 0
	fmr 12,0
.LVL2531:
	.loc 5 278 0
	fmul 0,12,12
.LVL2532:
	fmadd 0,10,0,11
	fmul 0,12,0
.LVL2533:
.LBE14067:
.LBE14069:
	.loc 5 303 0
	lfs 12,8(1)
.LBE14071:
.LBE14073:
.LBE14075:
	.loc 4 4886 0
	addi 1,1,24
.LCFI256:
	.cfi_def_cfa_offset 0
.LBB14076:
.LBB14074:
.LBB14072:
.LBB14070:
.LBB14068:
	.loc 5 279 0
	fmul 1,0,0
	fmadd 1,10,1,11
.LVL2534:
	fmul 1,0,1
.LVL2535:
	.loc 5 280 0
	frsp 1,1
.LBE14068:
.LBE14070:
	.loc 5 303 0
	fmuls 1,12,1
.LBE14072:
.LBE14074:
	.loc 4 4877 0
	fmul 13,1,13
.LVL2536:
	frsp 1,13
.LBE14076:
	.loc 4 4886 0
	blr
	.cfi_endproc
.LFE2620:
	.size	_ZNK6idMatX6PythagEff, .-_ZNK6idMatX6PythagEff
	.align 2
	.globl _ZN6idMatX10SVD_BiDiagER6idVecXS1_Rf
	.type	_ZN6idMatX10SVD_BiDiagER6idVecXS1_Rf, @function
_ZN6idMatX10SVD_BiDiagER6idVecXS1_Rf:
.LFB2621:
	.loc 4 4893 0
	.cfi_startproc
.LVL2537:
.LBB14152:
	.loc 4 4897 0
	li 0,0
.LBE14152:
	.loc 4 4893 0
	stwu 1,-56(1)
.LCFI257:
	.cfi_def_cfa_offset 56
.LBB14253:
	.loc 4 4897 0
	stw 0,0(6)
.LVL2538:
.LBE14253:
	.loc 4 4893 0
	stw 22,16(1)
.LBB14254:
	.loc 4 4899 0
	lwz 0,4(3)
.LBE14254:
	.loc 4 4893 0
	stw 23,20(1)
.LBB14255:
	.loc 4 4899 0
	cmpwi 7,0,0
.LBE14255:
	.loc 4 4893 0
	stw 24,24(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	stw 31,52(1)
.LBB14256:
	.loc 4 4899 0
	ble- 7,.L1495
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	lis 29,.LC11@ha
.LBB14153:
.LBB14154:
.LBB14155:
.LBB14156:
	.loc 5 276 0
	lis 26,_ZN6idMath5iSqrtE@ha
.LBE14156:
.LBE14155:
.LBE14154:
.LBE14153:
	.loc 4 4899 0
	lfd 11,.LC11@l(29)
	li 28,4
	li 10,0
	li 31,0
	fmr 10,11
	la 29,.LC11@l(29)
.LBB14180:
.LBB14173:
.LBB14165:
.LBB14157:
	.loc 5 275 0
	lis 25,.LC6@ha
	.loc 5 276 0
	la 26,_ZN6idMath5iSqrtE@l(26)
	.loc 5 278 0
	lis 27,.LC8@ha
.LBE14157:
.LBE14165:
.LBE14173:
.LBE14180:
	.loc 4 4951 0
	lis 24,.LC1@ha
.LVL2539:
.L1529:
	.loc 4 4901 0
	fmul 11,11,10
	lwz 9,8(5)
	.loc 4 4900 0
	addi 30,31,1
.LVL2540:
	.loc 4 4903 0
	li 0,0
	.loc 4 4901 0
	frsp 11,11
	stfsx 11,9,10
.LVL2541:
	.loc 4 4903 0
	lwz 9,0(3)
	cmpw 7,9,31
	ble- 7,.L1497
	lwz 11,4(3)
	.loc 4 4893 0
	subf 9,31,9
	.loc 4 4903 0
	lwz 8,12(3)
	.loc 4 4893 0
	mtctr 9
	mullw 0,31,11
	lfd 11,0(29)
	slwi 7,11,2
	slwi 9,0,2
	add 9,9,10
	add 9,8,9
.LVL2542:
.L1498:
.LBB14181:
.LBB14182:
	.loc 5 781 0 discriminator 2
	lwz 0,0(9)
.LBE14182:
.LBE14181:
	.loc 4 4904 0 discriminator 2
	add 9,9,7
.LVL2543:
.LBB14184:
.LBB14183:
	.loc 5 781 0 discriminator 2
	rlwinm 0,0,0,1,31
.LVL2544:
.LBE14183:
.LBE14184:
	.loc 4 4905 0 discriminator 2
	stw 0,12(1)
	lfs 10,12(1)
	fmr 0,10
	fadd 11,11,0
.LVL2545:
	.loc 4 4904 0 discriminator 2
	bdnz .L1498
	.loc 4 4907 0
	lfd 0,0(29)
	mr 9,31
	fcmpu 7,11,0
	fmr 13,0
	bne- 7,.L1541
	fmul 0,11,0
	frsp 0,0
	stfs 0,12(1)
	lwz 0,12(1)
.LVL2546:
.L1497:
	.loc 4 4935 0
	lwz 9,8(4)
	stwx 0,9,10
.LVL2547:
	.loc 4 4937 0
	lwz 0,0(3)
	cmpw 7,0,31
	ble- 7,.L1533
	.loc 4 4937 0 is_stmt 0 discriminator 1
	lwz 11,4(3)
	addi 0,11,-1
	cmpw 7,0,31
	beq- 7,.L1533
.LVL2548:
	.loc 4 4938 0 is_stmt 1 discriminator 1
	cmpw 7,30,11
	bge- 7,.L1533
	.loc 4 4938 0 is_stmt 0
	mullw 7,11,31
	lwz 8,12(3)
	.loc 4 4893 0 is_stmt 1
	subf 11,30,11
	lfd 11,0(29)
	mtctr 11
	slwi 9,7,2
	add 9,8,9
	add 9,9,10
.LVL2549:
.L1514:
.LBB14185:
.LBB14186:
	.loc 5 781 0 discriminator 2
	lwzu 0,4(9)
.LVL2550:
	rlwinm 0,0,0,1,31
.LBE14186:
.LBE14185:
	.loc 4 4939 0 discriminator 2
	stw 0,12(1)
	lfs 13,12(1)
	fmr 0,13
	fadd 11,11,0
.LVL2551:
	.loc 4 4938 0 discriminator 2
	bdnz .L1514
	.loc 4 4941 0
	lfd 13,0(29)
	fcmpu 7,11,13
	.loc 4 4936 0
	fmr 10,13
	.loc 4 4941 0
	beq- 7,.L1513
	mr 9,28
.LVL2552:
	mr 23,30
.LVL2553:
.L1515:
.LBB14187:
.LBB14188:
	.loc 3 2056 0 discriminator 2
	slwi 7,7,2
.LBE14188:
.LBE14187:
	.loc 4 4942 0 discriminator 2
	addi 23,23,1
.LBB14190:
.LBB14189:
	.loc 3 2056 0 discriminator 2
	add 8,8,7
.LBE14189:
.LBE14190:
	.loc 4 4943 0 discriminator 2
	lfsx 0,8,9
	fdiv 0,0,11
	frsp 0,0
	stfsx 0,8,9
	.loc 4 8102 0 discriminator 2
	lwz 11,4(3)
	lwz 8,12(3)
.LVL2554:
.LBB14191:
.LBB14192:
	.loc 3 2056 0 discriminator 2
	mullw 7,31,11
.LBE14192:
.LBE14191:
	.loc 4 4942 0 discriminator 2
	cmpw 7,11,23
.LBB14194:
.LBB14193:
	.loc 3 2056 0 discriminator 2
	slwi 11,7,2
	add 11,8,11
.LBE14193:
.LBE14194:
	.loc 4 4944 0 discriminator 2
	lfsx 0,11,9
.LVL2555:
	.loc 4 4942 0 discriminator 2
	addi 9,9,4
	.loc 4 4944 0 discriminator 2
	fmuls 0,0,0
	fadd 13,13,0
.LVL2556:
	.loc 4 4942 0 discriminator 2
	bgt+ 7,.L1515
	.loc 4 4942 0 is_stmt 0
	frsp 0,13
	lfs 9,.LC6@l(25)
.LBB14195:
.LBB14196:
.LBB14197:
.LBB14198:
	.loc 5 278 0 is_stmt 1
	lfs 10,.LC8@l(27)
.LBE14198:
.LBE14197:
.LBE14196:
.LBE14195:
	.loc 4 4948 0
	lfd 7,0(29)
	.loc 4 4942 0
	stfs 0,8(1)
.LBB14211:
.LBB14207:
.LBB14203:
.LBB14199:
	.loc 5 270 0
	lwz 0,8(1)
	.loc 5 276 0
	rlwinm 9,0,9,24,31
.LVL2557:
	rlwinm 0,0,19,21,29
	subfic 9,9,380
	lwzx 0,26,0
	rlwinm 9,9,22,0,8
	or 0,9,0
	.loc 5 277 0
	stw 0,12(1)
	lfs 0,12(1)
	fmr 12,0
.LBE14199:
.LBE14203:
.LBE14207:
.LBE14211:
	.loc 4 4942 0
	lfs 0,8(1)
	fmuls 9,0,9
	.loc 4 4946 0
	lfsx 0,11,28
.LVL2558:
.LBB14212:
.LBB14208:
.LBB14204:
.LBB14200:
	.loc 5 278 0
	fmul 8,12,12
.LBE14200:
.LBE14204:
.LBE14208:
.LBE14212:
	.loc 4 4946 0
	add 11,11,28
	.loc 4 4948 0
	fcmpu 7,0,7
.LBB14213:
.LBB14209:
.LBB14205:
.LBB14201:
	.loc 4 4893 0
	fneg 8,8
.LBE14201:
.LBE14205:
.LBE14209:
.LBE14213:
	.loc 4 4948 0
	cror 30,29,30
.LBB14214:
.LBB14210:
.LBB14206:
.LBB14202:
	.loc 5 278 0
	fmadd 8,8,9,10
	fmul 12,12,8
.LVL2559:
	.loc 5 279 0
	fmul 8,12,12
	.loc 4 4893 0
	fneg 8,8
	.loc 5 279 0
	fmadd 10,8,9,10
.LVL2560:
	fmul 12,12,10
.LVL2561:
	.loc 5 280 0
	frsp 10,12
.LBE14202:
.LBE14206:
	.loc 5 303 0
	lfs 12,8(1)
.LVL2562:
	fmuls 10,10,12
.LVL2563:
.LBE14210:
.LBE14214:
	.loc 4 4948 0
	bne- 7,.L1516
	.loc 4 4949 0
	fneg 10,10
.LVL2564:
.L1516:
	.loc 4 4952 0
	fsub 12,0,10
	.loc 4 4951 0
	fmsub 0,0,10,13
.LVL2565:
	lfs 13,.LC1@l(24)
.LVL2566:
	.loc 4 4952 0
	frsp 12,12
	.loc 4 4951 0
	fdiv 13,13,0
.LVL2567:
	.loc 4 4952 0
	stfs 12,0(11)
.LVL2568:
	.loc 4 4953 0
	lwz 0,4(3)
	cmpw 7,30,0
	bge- 7,.L1518
	mr 9,28
	mr 11,30
.LVL2569:
.L1519:
.LBB14215:
.LBB14216:
	.loc 3 2056 0 discriminator 2
	mullw 0,31,0
.LBE14216:
.LBE14215:
	.loc 4 4954 0 discriminator 2
	lwz 7,12(3)
	lwz 8,8(5)
	.loc 4 4953 0 discriminator 2
	addi 11,11,1
.LVL2570:
	.loc 4 4954 0 discriminator 2
	slwi 0,0,2
	add 7,7,0
	lfsx 0,7,9
	fmul 0,0,13
	frsp 0,0
	stfsx 0,8,9
	.loc 4 4953 0 discriminator 2
	addi 9,9,4
	lwz 0,4(3)
	cmpw 7,0,11
	bgt+ 7,.L1519
	cmpw 7,30,0
.LVL2571:
.L1518:
	.loc 4 4956 0
	lwz 9,0(3)
	addi 11,9,-1
	cmpw 6,11,31
	beq- 6,.L1520
.LVL2572:
	.loc 4 4957 0 discriminator 1
	cmpw 6,30,9
	mr 23,30
	bge- 6,.L1520
.LVL2573:
.L1540:
	.loc 4 4958 0 discriminator 1
	bge- 7,.L1523
	.loc 4 4893 0
	subf 9,30,0
	.loc 4 4958 0
	mullw 8,23,0
	.loc 4 4893 0
	mtctr 9
	.loc 4 4958 0
	lwz 7,12(3)
	.loc 4 4893 0
	lfd 0,0(29)
	.loc 4 4958 0
	mullw 9,31,0
	.loc 4 4893 0
	slwi 11,8,2
	add 11,7,11
	add 11,11,10
	slwi 9,9,2
	add 9,7,9
	add 9,9,10
.LVL2574:
.L1522:
	.loc 4 4959 0 discriminator 2
	lfsu 12,4(11)
	lfsu 13,4(9)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2575:
	.loc 4 4958 0 discriminator 2
	bdnz .L1522
.LVL2576:
	.loc 4 4958 0 is_stmt 0
	mr 9,28
	mr 11,30
	b .L1524
.LVL2577:
.L1552:
	mullw 8,23,0
	.loc 4 4961 0 is_stmt 1
	lwz 7,12(3)
.LVL2578:
.L1524:
	.loc 4 4962 0 discriminator 2
	lwz 12,8(5)
.LBB14217:
.LBB14218:
	.loc 3 2056 0 discriminator 2
	slwi 8,8,2
	add 8,7,8
.LVL2579:
.LBE14218:
.LBE14217:
	.loc 4 4961 0 discriminator 2
	addi 11,11,1
.LVL2580:
	.loc 4 4962 0 discriminator 2
	lfsx 12,12,9
	lfsx 13,8,9
	fmadd 13,12,0,13
	frsp 13,13
	stfsx 13,8,9
	.loc 4 4961 0 discriminator 2
	addi 9,9,4
	lwz 0,4(3)
	cmpw 7,0,11
	bgt+ 7,.L1552
	lwz 9,0(3)
	cmpw 7,30,0
.LVL2581:
.L1523:
	.loc 4 4957 0
	addi 23,23,1
.LVL2582:
	cmpw 6,9,23
	bgt+ 6,.L1540
.LVL2583:
.L1520:
	.loc 4 4966 0 discriminator 1
	bge- 7,.L1513
	.loc 4 4966 0 is_stmt 0
	mr 9,28
	mr 11,30
.LVL2584:
.L1526:
.LBB14219:
.LBB14220:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 0,31,0
	lwz 8,12(3)
.LBE14220:
.LBE14219:
	.loc 4 4966 0 discriminator 2
	addi 11,11,1
.LVL2585:
.LBB14222:
.LBB14221:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 8,8,0
.LBE14221:
.LBE14222:
	.loc 4 4967 0 discriminator 2
	lfsx 0,8,9
	fmul 0,0,11
	frsp 0,0
	stfsx 0,8,9
	.loc 4 4966 0 discriminator 2
	addi 9,9,4
	lwz 0,4(3)
	cmpw 7,0,11
	bgt+ 7,.L1526
.LVL2586:
.L1513:
	.loc 4 4971 0
	lwz 9,8(4)
	lwz 11,8(5)
.LBB14223:
.LBB14224:
	.loc 5 781 0
	lwzx 9,9,10
.LBE14224:
.LBE14223:
.LBB14226:
.LBB14227:
	lwzx 0,11,10
.LBE14227:
.LBE14226:
.LBB14229:
.LBB14225:
	rlwinm 9,9,0,1,31
.LBE14225:
.LBE14229:
	.loc 4 4971 0
	stw 9,12(1)
.LBB14230:
.LBB14228:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE14228:
.LBE14230:
	.loc 4 4971 0
	lfs 0,12(1)
	stw 0,12(1)
	lfs 12,12(1)
	fadds 13,0,12
.LVL2587:
	.loc 4 4972 0
	lfs 0,0(6)
	fmr 9,0
	.loc 4 4971 0
	fmr 12,13
	.loc 4 4972 0
	fcmpu 7,9,12
	bnl- 7,.L1527
	.loc 4 4973 0
	fmr 0,13
.L1527:
	.loc 4 4972 0
	stfs 0,0(6)
.LVL2588:
	addi 10,10,4
.LVL2589:
	addi 28,28,4
	.loc 4 4899 0
	lwz 0,4(3)
	cmpw 7,0,30
	ble- 7,.L1495
	.loc 4 4900 0
	mr 31,30
.LVL2590:
	b .L1529
.LVL2591:
.L1541:
.LBB14231:
.LBB14232:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
	slwi 11,11,2
	add 8,8,11
.LBE14232:
.LBE14231:
	.loc 4 4909 0 discriminator 2
	lfsx 0,8,10
	fdiv 0,0,11
	frsp 0,0
	stfsx 0,8,10
	.loc 4 8102 0 discriminator 2
	lwz 11,4(3)
	lwz 8,12(3)
.LVL2592:
.LBB14233:
.LBB14234:
	.loc 3 2056 0 discriminator 2
	mullw 7,9,11
.LBE14234:
.LBE14233:
	.loc 4 4908 0 discriminator 2
	lwz 0,0(3)
	addi 9,9,1
.LVL2593:
	cmpw 7,0,9
	.loc 4 4910 0 discriminator 2
	slwi 7,7,2
	add 7,8,7
	lfsx 0,7,10
	fmuls 0,0,0
	fadd 13,13,0
.LVL2594:
	.loc 4 4908 0 discriminator 2
	bgt+ 7,.L1541
.LVL2595:
	.loc 4 4913 0
	frsp 12,13
.LBB14235:
.LBB14174:
.LBB14166:
.LBB14158:
	.loc 5 275 0
	lfs 9,.LC6@l(25)
.LBE14158:
.LBE14166:
.LBE14174:
.LBE14235:
	.loc 4 4914 0
	lfd 8,0(29)
	.loc 4 4913 0
	stfs 12,8(1)
.LBB14236:
.LBB14175:
.LBB14167:
.LBB14159:
	.loc 5 278 0
	lfs 12,.LC8@l(27)
	.loc 5 270 0
	lwz 0,8(1)
	.loc 5 275 0
	lfs 0,8(1)
	.loc 5 276 0
	rlwinm 9,0,9,24,31
.LVL2596:
	rlwinm 0,0,19,21,29
	subfic 9,9,380
	lwzx 0,26,0
	rlwinm 9,9,22,0,8
	.loc 5 275 0
	fmuls 9,0,9
	.loc 5 276 0
	or 0,9,0
	.loc 5 277 0
	stw 0,12(1)
.LBE14159:
.LBE14167:
.LBE14175:
.LBE14236:
.LBB14237:
.LBB14238:
	.loc 3 2056 0
	mullw 0,31,11
.LBE14238:
.LBE14237:
.LBB14240:
.LBB14176:
.LBB14168:
.LBB14160:
	.loc 4 4893 0
	fneg 9,9
	.loc 5 277 0
	lfs 10,12(1)
	fmr 0,10
.LBE14160:
.LBE14168:
.LBE14176:
.LBE14240:
.LBB14241:
.LBB14239:
	.loc 3 2056 0
	slwi 0,0,2
	add 8,8,0
.LBE14239:
.LBE14241:
	.loc 4 4912 0
	lfsx 10,8,10
.LVL2597:
	add 8,8,10
.LBB14242:
.LBB14177:
.LBB14169:
.LBB14161:
	.loc 5 278 0
	fmul 7,0,0
.LBE14161:
.LBE14169:
.LBE14177:
.LBE14242:
	.loc 4 4914 0
	fcmpu 7,10,8
.LBB14243:
.LBB14178:
.LBB14170:
.LBB14162:
	.loc 5 278 0
	fmadd 7,9,7,12
.LBE14162:
.LBE14170:
.LBE14178:
.LBE14243:
	.loc 4 4914 0
	cror 30,29,30
.LBB14244:
.LBB14179:
.LBB14171:
.LBB14163:
	.loc 5 278 0
	fmul 0,0,7
.LVL2598:
	.loc 5 279 0
	fmul 8,0,0
	fmadd 12,9,8,12
.LVL2599:
	fmul 0,0,12
.LVL2600:
.LBE14163:
.LBE14171:
	.loc 5 303 0
	lfs 12,8(1)
.LBB14172:
.LBB14164:
	.loc 5 280 0
	frsp 9,0
.LBE14164:
.LBE14172:
	.loc 5 303 0
	fmuls 9,12,9
.LVL2601:
.LBE14179:
.LBE14244:
	.loc 4 4914 0
	bne- 7,.L1501
	.loc 4 4915 0
	fneg 9,9
.LVL2602:
.L1501:
	.loc 4 4918 0
	fsub 0,10,9
.LVL2603:
	.loc 4 4917 0
	fmsub 10,10,9,13
.LVL2604:
	.loc 4 4918 0
	frsp 0,0
	stfs 0,0(8)
	.loc 4 4919 0
	lwz 23,4(3)
	addi 0,23,-1
	cmpw 7,0,31
	.loc 4 4920 0
	lwz 0,0(3)
	.loc 4 4919 0
	beq- 7,.L1553
.LVL2605:
	.loc 4 4920 0 discriminator 1
	cmpw 7,30,23
	bge- 7,.L1553
	cmpw 7,31,0
	.loc 4 4920 0 is_stmt 0
	mr 8,28
	mr 7,23
	mr 22,30
.LVL2606:
.L1506:
	.loc 4 4921 0 is_stmt 1 discriminator 1
	bge- 7,.L1510
	.loc 4 4893 0
	mullw 9,23,31
	.loc 4 4921 0
	lwz 12,12(3)
	.loc 4 4893 0
	subf 0,31,0
	lfd 0,0(29)
	mtctr 0
	slwi 23,23,2
	slwi 9,9,2
	add 9,10,9
	add 9,12,9
.LVL2607:
.L1507:
	.loc 4 4893 0 is_stmt 0 discriminator 2
	subf 11,10,9
	.loc 4 4922 0 is_stmt 1 discriminator 2
	lfs 12,0(9)
	lfsx 13,11,8
	.loc 4 4921 0 discriminator 2
	add 9,9,23
	.loc 4 4922 0 discriminator 2
	fmuls 13,12,13
	fadd 0,0,13
.LVL2608:
	.loc 4 4921 0 discriminator 2
	bdnz .L1507
	.loc 4 4924 0
	fdiv 0,0,10
.LVL2609:
	mr 9,31
	b .L1509
.LVL2610:
.L1555:
	.loc 4 4925 0
	lwz 12,12(3)
.LVL2611:
.L1509:
.LBB14245:
.LBB14246:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,7
.LBE14246:
.LBE14245:
	.loc 4 4925 0 discriminator 2
	addi 9,9,1
.LVL2612:
.LBB14248:
.LBB14247:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,12,11
.LVL2613:
.LBE14247:
.LBE14248:
	.loc 4 4926 0 discriminator 2
	lfsx 12,11,10
	lfsx 13,11,8
	fmadd 13,12,0,13
	frsp 13,13
	stfsx 13,11,8
	.loc 4 4925 0 discriminator 2
	lwz 0,0(3)
	lwz 7,4(3)
	cmpw 7,0,9
	bgt+ 7,.L1555
	cmpw 7,31,0
.LVL2614:
.L1510:
	.loc 4 4920 0
	addi 22,22,1
.LVL2615:
	addi 8,8,4
	cmpw 6,22,7
	bge- 6,.L1505
	mr 23,7
	b .L1506
.LVL2616:
.L1533:
	.loc 4 4938 0
	lfd 11,0(29)
	.loc 4 4936 0
	fmr 10,11
	b .L1513
.LVL2617:
.L1553:
	cmpw 7,31,0
.LVL2618:
.L1505:
	.loc 4 4930 0 discriminator 1
	bge- 7,.L1554
	.loc 4 4930 0 is_stmt 0 discriminator 2
	mr 9,31
.LVL2619:
.L1512:
.LBB14249:
.LBB14250:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	lwz 11,4(3)
	lwz 0,12(3)
	mullw 11,9,11
.LBE14250:
.LBE14249:
	.loc 4 4930 0 discriminator 2
	addi 9,9,1
.LVL2620:
.LBB14252:
.LBB14251:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
.LBE14251:
.LBE14252:
	.loc 4 4931 0 discriminator 2
	lfsx 0,11,10
	fmul 0,0,11
	frsp 0,0
	stfsx 0,11,10
	.loc 4 4930 0 discriminator 2
	lwz 0,0(3)
	cmpw 7,0,9
	bgt+ 7,.L1512
.LVL2621:
.L1554:
	.loc 4 4930 0 is_stmt 0
	fmul 11,9,11
.LVL2622:
	frsp 11,11
	stfs 11,12(1)
	lwz 0,12(1)
	b .L1497
.LVL2623:
.L1495:
.LBE14256:
	.loc 4 4976 0 is_stmt 1
	lwz 22,16(1)
	lwz 23,20(1)
	lwz 24,24(1)
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
.LCFI258:
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
.LFE2621:
	.size	_ZN6idMatX10SVD_BiDiagER6idVecXS1_Rf, .-_ZN6idMatX10SVD_BiDiagER6idVecXS1_Rf
	.align 2
	.globl _ZN6idMatX13SVD_InitialWVER6idVecXRS_S1_
	.type	_ZN6idMatX13SVD_InitialWVER6idVecXRS_S1_, @function
_ZN6idMatX13SVD_InitialWVER6idVecXRS_S1_:
.LFB2622:
	.loc 4 4983 0
	.cfi_startproc
.LVL2624:
.LBB14257:
	.loc 4 4988 0
	lwz 9,4(3)
.LVL2625:
.LBE14257:
	.loc 4 4983 0
	stwu 1,-56(1)
.LCFI259:
	.cfi_def_cfa_offset 56
.LBB14300:
	.loc 4 4988 0
	addic. 11,9,-1
.LBE14300:
	.loc 4 4983 0
	stw 21,12(1)
	stw 22,16(1)
	stw 23,20(1)
	stw 24,24(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	stw 31,52(1)
.LBB14301:
	.loc 4 4988 0
	blt- 0,.L1556
	.cfi_offset 31, -4
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
.LVL2626:
	lwz 0,4(5)
	lis 30,.LC1@ha
	lwz 8,12(5)
	la 30,.LC1@l(30)
.LBB14258:
.LBB14259:
	.loc 3 2056 0
	mullw 0,11,0
.LBE14259:
.LBE14258:
	.loc 4 5009 0
	lwz 23,0(30)
	.loc 4 4988 0
	slwi 25,11,2
	cmpwi 7,11,0
	.loc 4 4983 0
	addi 9,9,-2
	.loc 4 5009 0
	slwi 0,0,2
	.loc 4 4988 0
	slwi 29,9,2
	.loc 4 5009 0
	add 8,8,0
	.loc 4 4991 0
	lis 24,.LC11@ha
	.loc 4 5009 0
	stwx 23,8,25
.LVL2627:
	.loc 4 5006 0
	li 26,0
	.loc 4 4988 0
	addi 27,11,-1
	.loc 4 5010 0
	lwz 9,8(6)
	lfsx 12,9,25
.LVL2628:
	.loc 4 4988 0
	beq- 7,.L1601
.LVL2629:
.L1573:
	.loc 4 4990 0
	lwz 10,4(3)
	addi 0,10,-1
	cmpw 7,0,27
	ble- 7,.L1562
.LVL2630:
	.loc 4 4991 0
	lfd 0,.LC11@l(24)
	la 31,.LC11@l(24)
	fcmpu 7,12,0
	beq- 7,.L1561
.LVL2631:
	.loc 4 4992 0 discriminator 1
	cmpw 7,11,10
	bge- 7,.L1562
	.loc 4 4992 0 is_stmt 0
	mr 8,25
	mr 9,11
.LVL2632:
.L1563:
.LBB14261:
.LBB14262:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 10,27,10
	lwz 28,12(3)
.LBE14262:
.LBE14261:
.LBB14265:
.LBB14266:
	lwz 0,4(5)
.LBE14266:
.LBE14265:
	.loc 4 4993 0 discriminator 2
	lwz 7,12(5)
.LBB14268:
.LBB14263:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
.LBE14263:
.LBE14268:
.LBB14269:
.LBB14267:
	mullw 0,9,0
.LBE14267:
.LBE14269:
.LBB14270:
.LBB14264:
	add 10,28,10
.LVL2633:
.LBE14264:
.LBE14270:
	.loc 4 4993 0 discriminator 2
	lfsx 13,10,8
	.loc 4 4992 0 discriminator 2
	addi 9,9,1
.LVL2634:
	.loc 4 4993 0 discriminator 2
	lfsx 0,10,25
	.loc 4 4992 0 discriminator 2
	addi 8,8,4
	.loc 4 4993 0 discriminator 2
	slwi 0,0,2
	fdivs 0,13,0
	add 10,7,0
	fdiv 0,0,12
	frsp 0,0
	stfsx 0,10,29
	.loc 4 4992 0 discriminator 2
	lwz 10,4(3)
	cmpw 7,10,9
	bgt+ 7,.L1563
.LVL2635:
	.loc 4 4996 0 discriminator 1
	cmpw 7,11,10
	bge- 7,.L1562
	.loc 4 4996 0 is_stmt 0
	lwz 0,4(5)
	mr 7,25
	lwz 8,12(5)
	mr 22,11
.LVL2636:
.L1564:
	.loc 4 4997 0 is_stmt 1 discriminator 1
	bge- 7,.L1595
	.loc 4 4997 0 is_stmt 0
	mullw 12,27,10
	.loc 4 4983 0 is_stmt 1
	lwz 21,12(3)
	lfd 0,0(31)
	slwi 28,0,2
	mullw 9,11,0
	slwi 12,12,2
	add 12,21,12
	subf 21,11,10
	mtctr 21
	add 12,12,29
	slwi 9,9,2
	add 9,7,9
	add 9,8,9
.LVL2637:
.L1565:
	.loc 4 4998 0 discriminator 2
	lfs 13,0(9)
	.loc 4 4997 0 discriminator 2
	add 9,9,28
	.loc 4 4998 0 discriminator 2
	lfsu 12,4(12)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2638:
	.loc 4 4997 0 discriminator 2
	bdnz .L1565
.LVL2639:
.L1570:
	.loc 4 5000 0 discriminator 1
	bge- 7,.L1566
	.loc 4 5000 0 is_stmt 0
	mr 9,11
.L1568:
.LVL2640:
.LBB14271:
.LBB14272:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 10,9,0
.LBE14272:
.LBE14271:
	.loc 4 5000 0 discriminator 2
	addi 9,9,1
.LVL2641:
.LBB14274:
.LBB14273:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
	add 10,8,10
.LVL2642:
.LBE14273:
.LBE14274:
	.loc 4 5001 0 discriminator 2
	lfsx 12,10,29
	lfsx 13,10,7
	fmadd 13,12,0,13
	frsp 13,13
	stfsx 13,10,7
	.loc 4 5000 0 discriminator 2
	lwz 10,4(3)
	lwz 0,4(5)
	cmpw 7,10,9
	lwz 8,12(5)
	bgt+ 7,.L1568
	cmpw 7,11,10
.LVL2643:
.L1566:
	.loc 4 4996 0
	addi 22,22,1
.LVL2644:
	addi 7,7,4
	cmpw 6,22,10
	blt+ 6,.L1564
.LVL2645:
.L1569:
	.loc 4 5005 0 discriminator 1
	bge- 7,.L1560
	.loc 4 5005 0 is_stmt 0
	mr 9,25
.LVL2646:
.L1572:
.LBB14275:
.LBB14276:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 10,11,0
.LBE14276:
.LBE14275:
	.loc 4 5005 0 discriminator 2
	addi 11,11,1
.LVL2647:
.LBB14277:
.LBB14278:
	.loc 3 2056 0 discriminator 2
	mullw 0,27,0
.LBE14278:
.LBE14277:
	.loc 4 5006 0 discriminator 2
	slwi 10,10,2
	add 10,8,10
	stwx 26,10,29
	slwi 0,0,2
	add 8,8,0
	stwx 26,8,9
	.loc 4 5005 0 discriminator 2
	addi 9,9,4
	lwz 0,4(3)
	lwz 8,12(5)
	cmpw 7,0,11
	lwz 0,4(5)
	bgt+ 7,.L1572
.LVL2648:
.L1560:
	.loc 4 5005 0 is_stmt 0
	addi 25,25,-4
	addi 29,29,-4
	mr 11,27
.LVL2649:
.L1607:
.LBB14279:
.LBB14260:
	.loc 3 2056 0 is_stmt 1
	mullw 0,11,0
.LBE14260:
.LBE14279:
	.loc 4 4988 0
	cmpwi 7,11,0
	addi 27,11,-1
.LVL2650:
	.loc 4 5009 0
	slwi 0,0,2
	add 8,8,0
	stwx 23,8,25
.LVL2651:
	.loc 4 5010 0
	lwz 9,8(6)
	lfsx 12,9,25
.LVL2652:
	.loc 4 4988 0
	bne+ 7,.L1573
.LVL2653:
.L1601:
	.loc 4 5012 0
	lwz 28,4(3)
.LVL2654:
	addic. 29,28,-1
	blt- 0,.L1556
.LVL2655:
	.loc 4 5014 0
	lwz 9,8(4)
	lis 31,.LC11@ha
.LBB14280:
.LBB14281:
	.loc 2 1537 0
	slwi 8,29,2
	la 31,.LC11@l(31)
.LBE14281:
.LBE14280:
	.loc 4 5014 0
	lfsx 0,9,8
.LVL2656:
	.loc 4 4983 0
	addi 25,28,-2
	.loc 4 5020 0
	lfd 10,0(31)
	.loc 4 5014 0
	slwi 25,25,2
	.loc 4 4983 0
	mr 5,28
.LVL2657:
	.loc 4 5039 0
	li 26,0
	.loc 4 5020 0
	fcmpu 7,0,10
	bne- 7,.L1577
.LVL2658:
.L1604:
	.loc 4 5038 0 discriminator 1
	lwz 0,0(3)
	mr 9,29
	cmpw 7,29,0
	blt+ 7,.L1579
.LVL2659:
	b .L1608
.LVL2660:
.L1603:
	.loc 4 5038 0 is_stmt 0
	lwz 5,4(3)
.LVL2661:
.L1579:
.LBB14282:
.LBB14283:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 5,9,5
.LBE14283:
.LBE14282:
	.loc 4 5039 0 discriminator 2
	lwz 0,12(3)
	.loc 4 5038 0 discriminator 2
	addi 9,9,1
.LVL2662:
	.loc 4 5039 0 discriminator 2
	slwi 5,5,2
	add 5,0,5
	stwx 26,5,8
	.loc 4 5038 0 discriminator 2
	lwz 0,0(3)
	cmpw 7,0,9
	bgt+ 7,.L1603
	.loc 4 5038 0 is_stmt 0
	lwz 11,4(3)
	lwz 0,12(3)
.LVL2663:
.L1580:
.LBB14284:
.LBB14285:
	.loc 3 2056 0 is_stmt 1
	mullw 11,29,11
.LBE14285:
.LBE14284:
	.loc 4 5042 0
	lfs 0,0(30)
	.loc 4 5012 0
	cmpwi 7,29,0
	addi 10,29,-1
.LBB14287:
.LBB14286:
	.loc 3 2056 0
	slwi 11,11,2
	add 11,0,11
.LBE14286:
.LBE14287:
	.loc 4 5042 0
	lfsx 13,11,8
	fadds 0,13,0
	stfsx 0,11,8
	.loc 4 5012 0
	beq- 7,.L1556
.LVL2664:
	.loc 4 5015 0
	lwz 5,4(3)
	.loc 4 5014 0
	lwz 9,8(4)
	.loc 4 5015 0
	addi 0,5,-1
	cmpw 7,0,10
	.loc 4 5014 0
	lfsx 0,9,25
.LVL2665:
	.loc 4 5015 0
	ble- 7,.L1575
.LVL2666:
	.loc 4 5016 0 discriminator 1
	cmpw 7,29,5
	bge- 7,.L1575
	.loc 4 5016 0 is_stmt 0
	addi 11,25,4
	mr 9,29
.LVL2667:
.L1576:
.LBB14288:
.LBB14289:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 5,5,10
.LBE14289:
.LBE14288:
	.loc 4 5017 0 discriminator 2
	lwz 0,12(3)
	.loc 4 5016 0 discriminator 2
	addi 9,9,1
.LVL2668:
	.loc 4 5017 0 discriminator 2
	slwi 5,5,2
	add 5,0,5
	stwx 26,5,11
	.loc 4 5016 0 discriminator 2
	addi 11,11,4
	lwz 5,4(3)
	cmpw 7,5,9
	bgt+ 7,.L1576
.LVL2669:
.L1575:
	.loc 4 5020 0
	fcmpu 7,0,10
	.loc 4 5016 0
	mr 28,29
	.loc 2 1537 0
	mr 8,25
	mr 29,10
.LVL2670:
	addi 25,25,-4
	.loc 4 5020 0
	beq- 7,.L1604
.LVL2671:
.L1577:
	.loc 4 5022 0
	addi 0,5,-1
	.loc 4 5021 0
	lfs 11,0(30)
	.loc 4 5022 0
	cmpw 7,0,29
	.loc 4 5023 0
	lwz 7,0(3)
	.loc 4 5021 0
	fdiv 11,11,0
.LVL2672:
	.loc 4 5023 0
	lwz 0,12(3)
	.loc 4 5022 0
	beq- 7,.L1581
.LVL2673:
	.loc 4 5023 0 discriminator 1
	cmpw 7,28,5
	bge- 7,.L1605
.LVL2674:
	.loc 4 5024 0
	cmpw 6,28,7
	.loc 4 5023 0
	slwi 10,28,2
	.loc 4 4983 0
	mr 11,5
	mr 27,28
	cmpw 7,29,7
.LVL2675:
	.loc 4 5024 0
	bge- 6,.L1596
.LVL2676:
.L1606:
	.loc 4 4983 0
	mullw 9,28,5
	subf 6,28,7
	lfd 0,0(31)
	mtctr 6
	slwi 12,5,2
	slwi 9,9,2
	add 9,9,8
	add 9,0,9
.LVL2677:
.L1585:
	.loc 4 4983 0 is_stmt 0 discriminator 2
	subf 6,8,9
	.loc 4 5025 0 is_stmt 1 discriminator 2
	lfs 12,0(9)
	lfsx 13,6,10
	.loc 4 5024 0 discriminator 2
	add 9,9,12
	.loc 4 5025 0 discriminator 2
	fmuls 13,12,13
	fadd 0,0,13
.LVL2678:
	.loc 4 5024 0 discriminator 2
	bdnz .L1585
.LVL2679:
.L1589:
.LBB14290:
.LBB14291:
	.loc 3 2056 0
	mullw 5,29,5
.LBE14291:
.LBE14290:
	.loc 4 5027 0
	slwi 5,5,2
	add 5,0,5
	lfsx 13,5,8
	fdiv 0,0,13
	fmul 0,0,11
.LVL2680:
	.loc 4 5028 0
	bge- 7,.L1586
	mr 9,29
.LVL2681:
.L1588:
.LBB14292:
.LBB14293:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE14293:
.LBE14292:
	.loc 4 5028 0 discriminator 2
	addi 9,9,1
.LVL2682:
.LBB14295:
.LBB14294:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
.LVL2683:
.LBE14294:
.LBE14295:
	.loc 4 5029 0 discriminator 2
	lfsx 12,11,8
	lfsx 13,11,10
	fmadd 13,12,0,13
	frsp 13,13
	stfsx 13,11,10
	.loc 4 5028 0 discriminator 2
	lwz 7,0(3)
	lwz 11,4(3)
	cmpw 7,7,9
	lwz 0,12(3)
	bgt+ 7,.L1588
	cmpw 7,29,7
.LVL2684:
.L1586:
	.loc 4 5023 0
	addi 27,27,1
.LVL2685:
	addi 10,10,4
	cmpw 6,27,11
	bge- 6,.L1583
	.loc 4 5024 0
	cmpw 6,28,7
	.loc 4 5023 0
	mr 5,11
.LVL2686:
	.loc 4 5024 0
	blt+ 6,.L1606
.LVL2687:
.L1596:
	lfd 0,0(31)
	b .L1589
.LVL2688:
.L1562:
.LBE14301:
	.loc 4 5044 0
	lwz 0,4(5)
.LBB14302:
	.loc 4 5005 0
	addi 25,25,-4
.LBE14302:
	.loc 4 5044 0
	lwz 8,12(5)
.LBB14303:
	.loc 4 5005 0
	addi 29,29,-4
	mr 11,27
.LVL2689:
	b .L1607
.LVL2690:
.L1561:
	.loc 4 4983 0
	lwz 0,4(5)
	cmpw 7,11,10
	lwz 8,12(5)
	b .L1569
.LVL2691:
.L1595:
	.loc 4 4997 0
	lfd 0,0(31)
	b .L1570
.LVL2692:
.L1556:
.LBE14303:
	.loc 4 5044 0
	lwz 21,12(1)
	lwz 22,16(1)
	lwz 23,20(1)
	lwz 24,24(1)
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI260:
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
.LVL2693:
.L1581:
.LCFI261:
	.cfi_restore_state
	cmpw 7,29,7
.LBB14304:
	.loc 4 5022 0
	mr 11,5
.L1583:
.LVL2694:
	.loc 4 5033 0 discriminator 1
	bge- 7,.L1580
	.loc 4 5033 0 is_stmt 0 discriminator 2
	mr 9,29
.LVL2695:
.L1591:
.LBB14296:
.LBB14297:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 11,9,11
.LBE14297:
.LBE14296:
	.loc 4 5033 0 discriminator 2
	addi 9,9,1
.LVL2696:
.LBB14299:
.LBB14298:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
.LBE14298:
.LBE14299:
	.loc 4 5034 0 discriminator 2
	lfsx 0,11,8
	fmul 0,0,11
	frsp 0,0
	stfsx 0,11,8
	.loc 4 5033 0 discriminator 2
	lwz 0,0(3)
	lwz 11,4(3)
	cmpw 7,0,9
	lwz 0,12(3)
	bgt+ 7,.L1591
	b .L1580
.LVL2697:
.L1608:
	.loc 4 5038 0
	lwz 0,12(3)
	mr 11,5
	b .L1580
.LVL2698:
.L1605:
	.loc 4 5023 0
	mr 11,5
	cmpw 7,29,7
	b .L1583
.LBE14304:
	.cfi_endproc
.LFE2622:
	.size	_ZN6idMatX13SVD_InitialWVER6idVecXRS_S1_, .-_ZN6idMatX13SVD_InitialWVER6idVecXRS_S1_
	.align 2
	.globl _ZN6idMatX10SVD_FactorER6idVecXRS_
	.type	_ZN6idMatX10SVD_FactorER6idVecXRS_, @function
_ZN6idMatX10SVD_FactorER6idVecXRS_:
.LFB2623:
	.loc 4 5057 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2623
.LVL2699:
	mflr 0
	stwu 1,-176(1)
.LCFI262:
	.cfi_def_cfa_offset 176
	.cfi_register 65, 0
	stw 28,96(1)
	mr 28,4
	.cfi_offset 28, -80
	stw 0,180(1)
.LBB14396:
	.loc 4 5060 0
	li 0,0
	.cfi_offset 65, 4
.LBE14396:
	.loc 4 5057 0
	stw 29,100(1)
	mr 29,5
	.cfi_offset 29, -76
	stw 30,104(1)
	mr 30,3
	.cfi_offset 30, -72
	stw 31,108(1)
	mr 31,1
	.cfi_offset 31, -68
.LCFI263:
	.cfi_def_cfa_register 31
	stfd 24,112(1)
	stfd 25,120(1)
	stfd 26,128(1)
	stfd 27,136(1)
	stfd 28,144(1)
	stfd 29,152(1)
	stfd 30,160(1)
	stfd 31,168(1)
	stw 14,40(1)
	stw 15,44(1)
	stw 16,48(1)
	stw 17,52(1)
	stw 18,56(1)
	stw 19,60(1)
	stw 20,64(1)
	stw 21,68(1)
	stw 22,72(1)
	stw 23,76(1)
	stw 24,80(1)
	stw 25,84(1)
	stw 26,88(1)
	stw 27,92(1)
.LBB14472:
	.loc 4 5060 0
	stw 0,8(31)
.LVL2700:
	.loc 4 5063 0
	lwz 9,4(3)
	lwz 11,0(3)
	cmpw 7,11,9
	blt- 7,.L1660
	.cfi_offset 27, -84
	.cfi_offset 26, -88
	.cfi_offset 25, -92
	.cfi_offset 24, -96
	.cfi_offset 23, -100
	.cfi_offset 22, -104
	.cfi_offset 21, -108
	.cfi_offset 20, -112
	.cfi_offset 19, -116
	.cfi_offset 18, -120
	.cfi_offset 17, -124
	.cfi_offset 16, -128
	.cfi_offset 15, -132
	.cfi_offset 14, -136
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.loc 4 5067 0
	addi 11,9,3
	lwz 8,0(1)
	rlwinm 11,11,0,0,29
.LBB14397:
.LBB14398:
	.loc 2 1762 0
	stw 9,12(31)
.LBE14398:
.LBE14397:
	.loc 4 5067 0
	slwi 10,11,2
.LBB14403:
.LBB14399:
	.loc 2 1764 0
	cmpw 7,9,11
.LBE14399:
.LBE14403:
	.loc 4 5067 0
	subfic 10,10,-32
.LBB14404:
.LBB14400:
	.loc 2 1763 0
	li 11,-1
.LBE14400:
.LBE14404:
	.loc 4 5067 0
	stwux 8,1,10
.LBB14405:
.LBB14401:
	.loc 2 1763 0
	stw 11,16(31)
.LBE14401:
.LBE14405:
	.loc 4 5067 0
	addi 4,1,23
.LVL2701:
	rlwinm 4,4,0,0,27
.LVL2702:
.LBB14406:
.LBB14402:
	.loc 2 1761 0
	stw 4,20(31)
	.loc 2 1764 0
	bge- 7,.L1613
	slwi 11,9,2
	b .L1615
.LVL2703:
.L1671:
	lwz 4,20(31)
.L1615:
	addi 9,9,1
.LVL2704:
	stwx 0,4,11
	.loc 4 5057 0
	addi 10,9,3
	.loc 2 1764 0
	addi 11,11,4
	rlwinm 10,10,0,0,29
	cmpw 7,9,10
	blt+ 7,.L1671
	lwz 9,12(31)
.LVL2705:
	lwz 4,20(31)
.L1613:
.LBE14402:
.LBE14406:
.LBB14407:
.LBB14408:
	.loc 2 1769 0
	lis 25,SIMDProcessor@ha
	mr 5,9
.LVL2706:
	lwz 3,SIMDProcessor@l(25)
.LVL2707:
	lwz 11,0(3)
	lwz 0,156(11)
	mtctr 0
.LEHB73:
	bctrl
.LVL2708:
.LBE14408:
.LBE14407:
	.loc 4 5069 0
	lwz 27,4(30)
.LVL2709:
.LBB14409:
.LBB14410:
.LBB14411:
.LBB14412:
	.loc 2 1709 0
	lwz 0,4(28)
	.loc 2 1708 0
	addi 26,27,3
	rlwinm 26,26,0,0,29
.LVL2710:
	.loc 2 1709 0
	cmpw 7,26,0
	ble- 7,.L1668
	cmpwi 7,0,-1
	beq- 7,.L1668
	.loc 2 1710 0
	lwz 3,8(28)
	cmpwi 7,3,0
	beq- 7,.L1619
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL2711:
.L1619:
	.loc 2 1713 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	.loc 2 1717 0
	cmpw 7,27,26
	.loc 2 1713 0
	mr 4,3
	stw 3,8(28)
	.loc 2 1714 0
	stw 26,4(28)
	.loc 2 1716 0
	stw 27,0(28)
.LVL2712:
	.loc 2 1717 0
	blt+ 7,.L1672
.LVL2713:
.L1620:
.LBE14412:
.LBE14411:
	.loc 2 1778 0
	lwz 11,SIMDProcessor@l(25)
	mr 5,27
	lwz 9,0(11)
	mr 3,11
	lwz 0,156(9)
	mtctr 0
	bctrl
.LBE14410:
.LBE14409:
	.loc 4 5070 0
	lwz 24,4(30)
.LVL2714:
.LBB14419:
.LBB14420:
.LBB14421:
.LBB14422:
	.loc 3 2250 0
	lwz 0,8(29)
	.loc 3 2249 0
	mullw 27,24,24
.LVL2715:
	addi 26,27,3
.LVL2716:
	rlwinm 26,26,0,0,29
.LVL2717:
	.loc 3 2250 0
	cmpw 7,26,0
	ble- 7,.L1669
	cmpwi 7,0,-1
	beq- 7,.L1669
	.loc 3 2251 0
	lwz 3,12(29)
	cmpwi 7,3,0
	beq- 7,.L1626
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL2718:
.L1626:
	.loc 3 2254 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,12(29)
	.loc 3 2255 0
	stw 26,8(29)
	b .L1624
.LVL2719:
.L1668:
.LBE14422:
.LBE14421:
.LBE14420:
.LBE14419:
.LBB14426:
.LBB14417:
.LBB14415:
.LBB14413:
	.loc 2 1717 0
	cmpw 7,27,26
	.loc 2 1709 0
	lwz 4,8(28)
	.loc 2 1716 0
	stw 27,0(28)
.LVL2720:
	.loc 2 1717 0
	bge- 7,.L1620
.L1672:
	slwi 11,27,2
.LBE14413:
.LBE14415:
.LBE14417:
.LBE14426:
.LBE14472:
	.loc 4 5057 0
	mr 9,27
.LBB14473:
.LBB14427:
.LBB14418:
.LBB14416:
.LBB14414:
	.loc 2 1717 0
	li 10,0
.LVL2721:
.L1622:
	addi 9,9,1
.LVL2722:
	stwx 10,4,11
	.loc 4 5057 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,8(28)
	cmpw 7,9,0
	blt+ 7,.L1622
	b .L1620
.LVL2723:
.L1669:
.LBE14414:
.LBE14416:
.LBE14418:
.LBE14427:
.LBB14428:
.LBB14425:
.LBB14424:
.LBB14423:
	.loc 3 2250 0
	lwz 4,12(29)
.L1624:
	.loc 3 2259 0
	cmpw 7,27,26
	.loc 3 2257 0
	stw 24,0(29)
	.loc 3 2258 0
	stw 24,4(29)
.LVL2724:
	.loc 3 2259 0
	bge- 7,.L1627
	slwi 9,27,2
	li 11,0
	b .L1629
.L1673:
	lwz 4,12(29)
.L1629:
	addi 27,27,1
.LVL2725:
	stwx 11,4,9
	.loc 4 5057 0
	addi 0,27,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,27,0
	blt+ 7,.L1673
	lwz 27,0(29)
.LVL2726:
	lwz 0,4(29)
	lwz 4,12(29)
	mullw 27,27,0
.L1627:
.LBE14423:
.LBE14424:
	.loc 3 2302 0
	lwz 11,SIMDProcessor@l(25)
	mr 5,27
	lwz 9,0(11)
	mr 3,11
	lwz 0,156(9)
	mtctr 0
	bctrl
.LEHE73:
.LBE14425:
.LBE14428:
	.loc 4 5072 0
	mr 3,30
	mr 4,28
	addi 5,31,12
	addi 6,31,8
	bl _ZN6idMatX10SVD_BiDiagER6idVecXS1_Rf
	.loc 4 5073 0
	mr 3,30
	mr 4,28
	mr 5,29
	addi 6,31,12
	bl _ZN6idMatX13SVD_InitialWVER6idVecXRS_S1_
	.loc 4 5075 0
	lwz 22,4(30)
	addi 22,22,-1
.LVL2727:
	cmpwi 7,22,0
	slwi 20,22,2
	blt- 7,.L1670
.LBE14473:
	.loc 4 5057 0 discriminator 1
	lis 19,.LC1@ha
.LBB14474:
	.loc 4 5131 0 discriminator 1
	lis 17,.LC11@ha
	.loc 4 5170 0 discriminator 1
	li 14,0
.LVL2728:
.L1665:
.LBB14429:
.LBB14430:
	.loc 2 1537 0 discriminator 1
	li 9,30
.LBE14430:
.LBE14429:
	.loc 4 5057 0 discriminator 1
	addi 15,22,-1
.LBB14432:
.LBB14431:
	.loc 2 1537 0 discriminator 1
	stw 9,28(31)
	addi 16,20,-4
.L1655:
.LVL2729:
.LBE14431:
.LBE14432:
.LBE14474:
	.loc 4 5057 0 discriminator 1
	addi 0,22,1
.LBB14475:
	.loc 4 5172 0 discriminator 1
	lwz 11,20(31)
	lfs 0,8(31)
.LBE14475:
	.loc 4 5057 0 discriminator 1
	mtctr 0
.LBB14476:
	.loc 4 5172 0 discriminator 1
	lwz 25,8(28)
.LBE14476:
	.loc 4 5057 0 discriminator 1
	mr 9,20
	mr 23,22
.LVL2730:
.L1635:
.LBB14477:
.LBB14433:
.LBB14434:
	.loc 5 781 0
	lwzx 0,11,9
	rlwinm 0,0,0,1,31
.LBE14434:
.LBE14433:
	.loc 4 5081 0
	stw 0,32(31)
	lfs 11,32(31)
	fadds 13,0,11
	fcmpu 7,13,0
	beq- 7,.L1633
.LVL2731:
.LBB14435:
.LBB14436:
	.loc 2 1537 0
	addi 27,9,-4
.LVL2732:
.LBE14436:
.LBE14435:
.LBB14437:
.LBB14438:
	.loc 5 781 0
	lwzx 0,25,27
	rlwinm 0,0,0,1,31
.LBE14438:
.LBE14437:
	.loc 4 5085 0
	stw 0,32(31)
	lfs 12,32(31)
	fadds 13,0,12
	fcmpu 7,13,0
	beq- 7,.L1634
	.loc 4 5079 0
	addi 23,23,-1
.LVL2733:
	mr 9,27
.LVL2734:
	bdnz .L1635
.LVL2735:
.L1634:
	.loc 4 5092 0
	cmpw 7,22,23
	blt- 7,.L1658
.LBE14477:
	.loc 4 5057 0
	lfs 12,.LC1@l(19)
.LBB14478:
	.loc 4 5092 0
	slwi 26,23,2
.LBE14478:
	.loc 4 5057 0
	mr 24,23
	la 21,.LC1@l(19)
.LVL2736:
.L1659:
.LBB14479:
	.loc 4 5093 0
	lfsx 31,11,26
	fmul 31,31,12
.LVL2737:
	.loc 4 5095 0
	frsp 13,31
	stfs 13,24(31)
.LVL2738:
.LBB14439:
.LBB14440:
	.loc 5 781 0
	lwz 9,24(31)
	rlwinm 0,9,0,1,31
.LBE14440:
.LBE14439:
	.loc 4 5095 0
	stw 0,32(31)
	lfs 11,32(31)
	fadds 13,0,11
.LVL2739:
	fcmpu 7,13,0
	beq- 7,.L1636
.LVL2740:
	.loc 4 5096 0
	lfsx 30,25,26
.LVL2741:
	.loc 4 5097 0
	mr 3,30
	lfs 1,24(31)
	.loc 4 5101 0
	fneg 31,31
.LVL2742:
	.loc 4 5097 0
	fmr 2,30
	bl _ZNK6idMatX6PythagEff
.LVL2743:
	.loc 4 5099 0
	lfs 12,0(21)
	.loc 4 5097 0
	fmr 0,1
.LVL2744:
	.loc 4 5098 0
	stfsx 1,25,26
	.loc 4 5102 0
	lwz 0,0(30)
	.loc 4 5099 0
	fdiv 0,12,0
.LVL2745:
	.loc 4 5102 0
	cmpwi 7,0,0
	.loc 4 5100 0
	fmul 30,30,0
.LVL2746:
	.loc 4 5101 0
	fmul 12,31,0
.LVL2747:
	.loc 4 5102 0
	ble- 7,.L1638
	lwz 11,4(30)
	li 9,0
	b .L1639
.LVL2748:
.L1674:
	lwz 11,4(30)
.LVL2749:
.L1639:
.LBB14441:
.LBB14442:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
	lwz 0,12(30)
	slwi 11,11,2
	add 11,0,11
.LBE14442:
.LBE14441:
	.loc 4 5104 0 discriminator 2
	lfsx 0,11,26
	.loc 4 5103 0 discriminator 2
	lfsx 13,11,27
.LVL2750:
	.loc 4 5105 0 discriminator 2
	fmul 10,0,12
	.loc 4 5106 0 discriminator 2
	fmul 11,13,12
	.loc 4 5105 0 discriminator 2
	fmadd 13,13,30,10
.LVL2751:
	.loc 4 5106 0 discriminator 2
	fmsub 0,0,30,11
.LVL2752:
	.loc 4 5105 0 discriminator 2
	frsp 13,13
	.loc 4 5106 0 discriminator 2
	frsp 0,0
	.loc 4 5105 0 discriminator 2
	stfsx 13,11,27
.LVL2753:
.LBB14443:
.LBB14444:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(30)
.LBE14444:
.LBE14443:
	.loc 4 5106 0 discriminator 2
	lwz 0,12(30)
.LBB14446:
.LBB14445:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE14445:
.LBE14446:
	.loc 4 5102 0 discriminator 2
	addi 9,9,1
.LVL2754:
	.loc 4 5106 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
	stfsx 0,11,26
	.loc 4 5102 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L1674
.LVL2755:
.L1638:
	.loc 4 5102 0 is_stmt 0
	lwz 25,8(28)
.LVL2756:
.L1636:
	.loc 4 5092 0 is_stmt 1
	addi 24,24,1
.LVL2757:
	addi 26,26,4
	cmpw 7,22,24
	blt- 7,.L1633
	.loc 4 5079 0
	lwz 11,20(31)
	lfs 0,8(31)
	b .L1659
.LVL2758:
.L1633:
	.loc 4 5112 0
	cmpw 7,23,22
	.loc 4 5111 0
	lfsx 0,25,20
.LBB14447:
.LBB14448:
	.loc 2 1537 0
	add 9,25,20
.LBE14448:
.LBE14447:
	.loc 4 5111 0
	fmr 30,0
.LVL2759:
	.loc 4 5112 0
	beq- 7,.L1675
	.loc 4 5121 0
	lwz 0,28(31)
	addic. 9,0,-1
	stw 9,28(31)
	beq- 0,.L1676
.LVL2760:
.L1645:
	.loc 4 5127 0
	lwz 24,20(31)
	.loc 4 5130 0
	mr 3,30
	.loc 4 5126 0
	lfsx 28,25,16
.LBB14449:
.LBB14450:
	.loc 2 1537 0
	slwi 18,23,2
.LBE14450:
.LBE14449:
	.loc 4 5128 0
	lfsx 31,24,20
	.loc 4 5130 0
	la 21,.LC1@l(19)
	.loc 4 5127 0
	lfsx 12,24,16
	.loc 4 5129 0
	fsub 27,28,30
	fadd 0,31,31
	.loc 4 5130 0
	lfs 2,.LC1@l(19)
	.loc 4 5129 0
	fsub 11,12,31
	.loc 4 5124 0
	lfsx 29,25,18
.LVL2761:
	.loc 4 5129 0
	fadd 13,12,31
	fadd 12,28,30
.LVL2762:
	fmul 0,0,28
	fmul 13,11,13
	fmadd 27,27,12,13
	fdiv 27,27,0
.LVL2763:
	.loc 4 5130 0
	frsp 1,27
	bl _ZNK6idMatX6PythagEff
.LVL2764:
	.loc 4 5131 0
	lfd 0,.LC11@l(17)
	fcmpu 7,27,0
	cror 30,29,30
	beq- 7,.L1646
	.loc 4 5131 0 is_stmt 0 discriminator 2
	fneg 1,1
.LVL2765:
.L1646:
	.loc 4 5132 0 is_stmt 1 discriminator 3
	fadd 13,1,27
	.loc 4 5134 0 discriminator 3
	cmpw 7,15,23
	.loc 4 5132 0 discriminator 3
	fsub 0,29,30
	fadd 30,29,30
.LVL2766:
	fdiv 13,28,13
	fsub 13,13,31
	fmul 31,13,31
.LVL2767:
	fmadd 28,0,30,31
.LVL2768:
	fdiv 28,28,29
.LVL2769:
	.loc 4 5134 0 discriminator 3
	blt- 7,.L1647
	.loc 4 5133 0
	lfs 31,.LC1@l(19)
	.loc 4 5134 0
	mr 27,18
	.loc 4 5156 0
	lfd 24,.LC11@l(17)
	.loc 4 5133 0
	fmr 30,31
.LVL2770:
.L1654:
.LBB14451:
.LBB14452:
	.loc 2 1537 0
	addi 26,27,4
.LBE14452:
.LBE14451:
	.loc 4 5140 0
	frsp 1,28
	.loc 4 5136 0
	lfsx 26,24,26
	.loc 4 5140 0
	mr 3,30
	.loc 4 5137 0
	lfsx 27,25,26
	.loc 4 5135 0
	addi 23,23,1
.LVL2771:
	.loc 4 5138 0
	fmul 30,30,26
.LVL2772:
	.loc 4 5139 0
	fmul 26,31,26
.LVL2773:
	.loc 4 5140 0
	frsp 2,30
	bl _ZNK6idMatX6PythagEff
	fmr 31,1
.LVL2774:
	.loc 4 5141 0
	stfsx 1,24,27
	.loc 4 5148 0
	lwz 0,4(30)
	.loc 4 5143 0
	fdiv 30,30,31
.LVL2775:
	.loc 4 5148 0
	cmpwi 7,0,0
	.loc 4 5142 0
	fdiv 31,28,31
.LVL2776:
	.loc 4 5144 0
	fmul 0,26,30
	.loc 4 5145 0
	fmul 28,29,30
.LVL2777:
	.loc 4 5146 0
	fmul 25,27,30
	.loc 4 5144 0
	fmadd 29,29,31,0
.LVL2778:
	.loc 4 5145 0
	fmsub 28,26,31,28
.LVL2779:
	.loc 4 5147 0
	fmul 27,27,31
.LVL2780:
	.loc 4 5148 0
	ble- 7,.L1648
	lwz 11,4(29)
	li 9,0
	b .L1649
.LVL2781:
.L1677:
	lwz 11,4(29)
.LVL2782:
.L1649:
.LBB14453:
.LBB14454:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
	lwz 0,12(29)
	slwi 11,11,2
	add 11,0,11
.LBE14454:
.LBE14453:
	.loc 4 5150 0 discriminator 2
	lfsx 0,11,26
	.loc 4 5149 0 discriminator 2
	lfsx 13,11,27
.LVL2783:
	.loc 4 5151 0 discriminator 2
	fmul 11,0,30
	.loc 4 5152 0 discriminator 2
	fmul 12,13,30
	.loc 4 5151 0 discriminator 2
	fmadd 13,13,31,11
.LVL2784:
	.loc 4 5152 0 discriminator 2
	fmsub 0,0,31,12
.LVL2785:
	.loc 4 5151 0 discriminator 2
	frsp 13,13
	.loc 4 5152 0 discriminator 2
	frsp 0,0
	.loc 4 5151 0 discriminator 2
	stfsx 13,11,27
.LVL2786:
.LBB14455:
.LBB14456:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(29)
.LBE14456:
.LBE14455:
	.loc 4 5152 0 discriminator 2
	lwz 0,12(29)
.LBB14458:
.LBB14457:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE14457:
.LBE14458:
	.loc 4 5148 0 discriminator 2
	addi 9,9,1
.LVL2787:
	.loc 4 5152 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
	stfsx 0,11,26
	.loc 4 5148 0 discriminator 2
	lwz 0,4(30)
	cmpw 7,0,9
	bgt+ 7,.L1677
.LVL2788:
.L1648:
	.loc 4 5154 0
	frsp 1,29
	mr 3,30
	frsp 2,25
	bl _ZNK6idMatX6PythagEff
	.loc 4 5155 0
	lwz 9,8(28)
	.loc 4 5154 0
	fmr 0,1
.LVL2789:
	.loc 4 5155 0
	stfsx 1,9,27
	.loc 4 5156 0
	fcmpu 7,0,24
	beq- 7,.L1650
	.loc 4 5157 0
	lfs 30,0(21)
.LVL2790:
	fdiv 0,30,0
.LVL2791:
	.loc 4 5158 0
	fmul 31,29,0
.LVL2792:
	.loc 4 5159 0
	fmul 30,25,0
.LVL2793:
.L1650:
	.loc 4 5163 0
	lwz 0,0(30)
	.loc 4 5162 0
	fmul 29,30,28
.LVL2794:
	.loc 4 5161 0
	fmul 0,30,27
.LVL2795:
	.loc 4 5163 0
	cmpwi 7,0,0
	.loc 4 5162 0
	fmsub 29,31,27,29
	.loc 4 5161 0
	fmadd 28,31,28,0
.LVL2796:
	.loc 4 5163 0
	ble- 7,.L1651
	lwz 11,4(30)
	li 9,0
	b .L1652
.LVL2797:
.L1678:
	lwz 11,4(30)
.LVL2798:
.L1652:
.LBB14459:
.LBB14460:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
	lwz 0,12(30)
	slwi 11,11,2
	add 11,0,11
.LBE14460:
.LBE14459:
	.loc 4 5165 0 discriminator 2
	lfsx 0,11,26
	.loc 4 5164 0 discriminator 2
	lfsx 13,11,27
.LVL2799:
	.loc 4 5166 0 discriminator 2
	fmul 11,0,30
	.loc 4 5167 0 discriminator 2
	fmul 12,13,30
	.loc 4 5166 0 discriminator 2
	fmadd 13,13,31,11
.LVL2800:
	.loc 4 5167 0 discriminator 2
	fmsub 0,0,31,12
.LVL2801:
	.loc 4 5166 0 discriminator 2
	frsp 13,13
	.loc 4 5167 0 discriminator 2
	frsp 0,0
	.loc 4 5166 0 discriminator 2
	stfsx 13,11,27
.LVL2802:
.LBB14461:
.LBB14462:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(30)
.LBE14462:
.LBE14461:
	.loc 4 5167 0 discriminator 2
	lwz 0,12(30)
.LBB14464:
.LBB14463:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE14463:
.LBE14464:
	.loc 4 5163 0 discriminator 2
	addi 9,9,1
.LVL2803:
	.loc 4 5167 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
	stfsx 0,11,26
	.loc 4 5163 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L1678
.LVL2804:
.L1651:
	.loc 4 5134 0
	cmpw 7,23,22
	lwz 24,20(31)
	beq- 7,.L1647
	lwz 25,8(28)
	mr 27,26
	b .L1654
.LVL2805:
.L1647:
	.loc 4 5170 0
	stwx 14,24,18
	.loc 4 5171 0
	frsp 28,28
.LVL2806:
	.loc 4 5172 0
	frsp 29,29
.LVL2807:
	.loc 4 5171 0
	lwz 9,20(31)
	stfsx 28,9,20
	.loc 4 5172 0
	lwz 9,8(28)
	stfsx 29,9,20
	b .L1655
.LVL2808:
.L1658:
	.loc 4 5121 0
	lwz 0,28(31)
.LVL2809:
	.loc 4 5111 0
	lfsx 30,25,20
.LVL2810:
	.loc 4 5121 0
	addic. 9,0,-1
	stw 9,28(31)
	bne+ 0,.L1645
.LVL2811:
.L1676:
	lwz 0,16(31)
	.loc 4 5122 0
	li 30,0
.LVL2812:
	.loc 4 5121 0
	lwz 3,20(31)
.LVL2813:
.L1631:
.LBB14465:
.LBB14466:
.LBB14467:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1610
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,9,3
	bgt- 7,.L1656
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1610
.L1656:
	cmpwi 7,0,-1
	beq- 7,.L1610
.LEHB74:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE74:
.LVL2814:
.L1610:
.LBE14467:
.LBE14466:
.LBE14465:
.LBE14479:
	.loc 4 5176 0
	addi 11,31,176
	mr 3,30
	lwz 0,4(11)
	lwz 14,-136(11)
	mtlr 0
	lwz 15,-132(11)
	lwz 16,-128(11)
	lwz 17,-124(11)
	lwz 18,-120(11)
	lwz 19,-116(11)
	lwz 20,-112(11)
	lwz 21,-108(11)
	lwz 22,-104(11)
	lwz 23,-100(11)
	lwz 24,-96(11)
	lwz 25,-92(11)
	lwz 26,-88(11)
	lwz 27,-84(11)
	lwz 28,-80(11)
.LVL2815:
	lwz 29,-76(11)
.LVL2816:
	lwz 30,-72(11)
	lwz 31,-68(11)
	.cfi_remember_state
.LCFI264:
	.cfi_def_cfa 11, 0
	lfd 24,-64(11)
	lfd 25,-56(11)
	lfd 26,-48(11)
	lfd 27,-40(11)
	lfd 28,-32(11)
	lfd 29,-24(11)
	lfd 30,-16(11)
	lfd 31,-8(11)
	mr 1,11
.LCFI265:
	.cfi_def_cfa_register 1
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 56
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
.LVL2817:
.L1675:
.LCFI266:
	.cfi_restore_state
.LBB14480:
	.loc 4 5113 0
	lfd 13,.LC11@l(17)
	fcmpu 7,30,13
	bnl- 7,.L1642
	.loc 4 5114 0
	fneg 0,0
	stfs 0,0(9)
.LVL2818:
	.loc 4 5115 0
	lwz 0,4(30)
	cmpwi 7,0,0
	ble- 7,.L1642
	lwz 0,4(29)
	li 9,0
	b .L1644
.LVL2819:
.L1679:
	lwz 0,4(29)
.LVL2820:
.L1644:
.LBB14468:
.LBB14469:
	.loc 3 2056 0 discriminator 2
	mullw 0,9,0
	lwz 11,12(29)
.LBE14469:
.LBE14468:
	.loc 4 5115 0 discriminator 2
	addi 9,9,1
.LVL2821:
.LBB14471:
.LBB14470:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 11,11,0
.LVL2822:
.LBE14470:
.LBE14471:
	.loc 4 5116 0 discriminator 2
	lfsx 0,11,20
	fneg 0,0
	stfsx 0,11,20
	.loc 4 5115 0 discriminator 2
	lwz 0,4(30)
	cmpw 7,0,9
	bgt+ 7,.L1679
.LVL2823:
.L1642:
	.loc 4 5075 0
	cmpwi 7,15,-1
	mr 22,15
.LVL2824:
	mr 20,16
	bne+ 7,.L1665
.LVL2825:
.L1670:
	lwz 0,16(31)
	.loc 4 5175 0
	li 30,1
.LVL2826:
	.loc 4 5075 0
	lwz 3,20(31)
	b .L1631
.LVL2827:
.L1660:
	.loc 4 5064 0
	li 30,0
	b .L1610
.LVL2828:
.L1662:
	mr 30,3
.LVL2829:
	.loc 4 5175 0
	lwz 4,20(31)
	lwz 3,16(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB75:
	bl _Unwind_Resume
.LEHE75:
.LBE14480:
	.cfi_endproc
.LFE2623:
	.section	.gcc_except_table
.LLSDA2623:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2623-.LLSDACSB2623
.LLSDACSB2623:
	.uleb128 .LEHB73-.LFB2623
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L1662-.LFB2623
	.uleb128 0
	.uleb128 .LEHB74-.LFB2623
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB2623
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE2623:
	.section	".text"
	.size	_ZN6idMatX10SVD_FactorER6idVecXRS_, .-_ZN6idMatX10SVD_FactorER6idVecXRS_
	.align 2
	.globl _ZNK6idMatX9SVD_SolveER6idVecXRKS0_S3_RKS_
	.type	_ZNK6idMatX9SVD_SolveER6idVecXRKS0_S3_RKS_, @function
_ZNK6idMatX9SVD_SolveER6idVecXRKS0_S3_RKS_:
.LFB2624:
	.loc 4 5185 0
	.cfi_startproc
.LVL2830:
.LBB14506:
	.loc 4 5195 0
	lwz 9,4(3)
.LBE14506:
	.loc 4 5185 0
	mflr 0
	stwu 1,-24(1)
.LCFI267:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB14515:
	.loc 4 5195 0
	addi 11,9,3
	rlwinm 11,11,0,0,29
.LBE14515:
	.loc 4 5185 0
	stw 0,28(1)
.LBB14516:
	.loc 4 5195 0
	lwz 10,0(1)
	slwi 0,11,2
	.cfi_offset 65, 4
	subfic 0,0,-32
.LBB14507:
.LBB14508:
	.loc 2 1764 0
	cmpw 7,9,11
.LBE14508:
.LBE14507:
.LBE14516:
	.loc 4 5185 0
	stw 31,20(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI268:
	.cfi_def_cfa_register 31
	stw 29,12(1)
.LBB14517:
	.loc 4 5195 0
	mr 11,9
.LBE14517:
	.loc 4 5185 0
	stw 30,16(1)
.LBB14518:
	.loc 4 5195 0
	stwux 10,1,0
	addi 0,1,23
	rlwinm 8,0,0,0,27
.LVL2831:
.LBB14510:
.LBB14509:
	.loc 2 1764 0
	bge- 7,.L1681
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.loc 4 5185 0
	slwi 11,9,2
	.loc 2 1764 0
	li 10,0
	.loc 4 5185 0
	addi 11,11,-4
	.loc 2 1764 0
	add 11,11,8
.LVL2832:
.L1682:
	addi 9,9,1
.LVL2833:
	stwu 10,4(11)
	.loc 4 5185 0
	addi 0,9,3
	.loc 2 1764 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1682
	lwz 11,4(3)
.L1681:
.LVL2834:
.LBE14509:
.LBE14510:
	.loc 4 5197 0 discriminator 1
	cmpwi 7,11,0
	mr 0,11
	ble- 7,.L1680
	.loc 4 5197 0 is_stmt 0
	lis 9,_ZN6idMath11FLT_EPSILONE@ha
.LVL2835:
	li 10,0
	lfs 10,_ZN6idMath11FLT_EPSILONE@l(9)
	.loc 4 5200 0 is_stmt 1
	lis 29,.LC11@ha
.LVL2836:
.L1688:
.LBB14511:
.LBB14512:
	.loc 2 1532 0
	lwz 9,8(6)
.LBE14512:
.LBE14511:
	.loc 4 5185 0
	slwi 12,10,2
.LBB14514:
.LBB14513:
	.loc 2 1532 0
	lfsx 11,9,12
.LBE14513:
.LBE14514:
	.loc 4 5199 0
	fcmpu 7,11,10
	cror 30,29,30
	bne- 7,.L1702
.LVL2837:
	.loc 4 5200 0 discriminator 1
	lwz 30,0(3)
	lfd 0,.LC11@l(29)
	cmpwi 7,30,0
	ble- 7,.L1686
	.loc 4 5185 0
	lwz 9,12(3)
	mtctr 30
	lwz 11,8(5)
	slwi 0,0,2
	add 9,9,12
	addi 11,11,-4
.LVL2838:
.L1687:
	.loc 4 5201 0 discriminator 2
	lfs 12,0(9)
	.loc 4 5200 0 discriminator 2
	add 9,9,0
	.loc 4 5201 0 discriminator 2
	lfsu 13,4(11)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2839:
	.loc 4 5200 0 discriminator 2
	bdnz .L1687
.LVL2840:
.L1686:
	.loc 4 5203 0
	fdiv 0,0,11
.LVL2841:
	.loc 4 5200 0
	frsp 0,0
.LVL2842:
.L1684:
	.loc 4 5197 0
	lwz 0,4(3)
	addi 10,10,1
.LVL2843:
	.loc 4 5205 0
	stfsx 0,8,12
	.loc 4 5197 0
	cmpw 7,0,10
	bgt+ 7,.L1688
.LVL2844:
	.loc 4 5207 0 discriminator 1
	cmpwi 7,0,0
	li 6,0
.LVL2845:
	.loc 4 5185 0 discriminator 1
	lis 5,.LC11@ha
.LVL2846:
	.loc 4 5207 0 discriminator 1
	ble- 7,.L1680
.LVL2847:
	.loc 4 5209 0 discriminator 1
	ble- 7,.L1695
.LVL2848:
.L1703:
	.loc 4 5209 0 is_stmt 0
	lwz 11,4(7)
	.loc 4 5185 0 is_stmt 1
	mtctr 0
	lwz 10,12(7)
	li 9,0
	.loc 4 5209 0
	mullw 11,6,11
	.loc 4 5185 0
	lfd 0,.LC11@l(5)
	slwi 11,11,2
	add 11,10,11
	addi 11,11,-4
.LVL2849:
.L1690:
	.loc 4 5210 0 discriminator 2
	slwi 10,9,2
	lfsu 12,4(11)
	lfsx 13,8,10
	.loc 4 5209 0 discriminator 2
	addi 9,9,1
.LVL2850:
	.loc 4 5210 0 discriminator 2
	fmuls 13,12,13
	fadd 0,0,13
.LVL2851:
	.loc 4 5209 0 discriminator 2
	bdnz .L1690
	.loc 4 5209 0 is_stmt 0
	frsp 0,0
.LVL2852:
	.loc 4 5212 0 is_stmt 1
	lwz 9,8(4)
.LVL2853:
	slwi 0,6,2
	.loc 4 5207 0
	addi 6,6,1
.LVL2854:
	.loc 4 5212 0
	stfsx 0,9,0
	.loc 4 5207 0
	lwz 0,4(3)
	cmpw 7,0,6
	ble- 7,.L1680
.LVL2855:
.L1704:
	cmpwi 7,0,0
.LVL2856:
	.loc 4 5209 0
	bgt+ 7,.L1703
.LVL2857:
.L1695:
	lis 9,.LC9@ha
	.loc 4 5212 0
	slwi 0,6,2
	.loc 4 5209 0
	lfs 0,.LC9@l(9)
.LVL2858:
	.loc 4 5207 0
	addi 6,6,1
.LVL2859:
	.loc 4 5212 0
	lwz 9,8(4)
	stfsx 0,9,0
	.loc 4 5207 0
	lwz 0,4(3)
	cmpw 7,0,6
	bgt+ 7,.L1704
.LVL2860:
.L1680:
.LBE14518:
	.loc 4 5214 0
	addi 11,31,24
	lwz 0,4(11)
	lwz 29,-12(11)
	mtlr 0
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI269:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI270:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL2861:
.L1702:
.LCFI271:
	.cfi_restore_state
.LBB14519:
	.loc 4 5199 0
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	b .L1684
.LBE14519:
	.cfi_endproc
.LFE2624:
	.size	_ZNK6idMatX9SVD_SolveER6idVecXRKS0_S3_RKS_, .-_ZNK6idMatX9SVD_SolveER6idVecXRKS0_S3_RKS_
	.align 2
	.globl _ZNK6idMatX11SVD_InverseERS_RK6idVecXRKS_
	.type	_ZNK6idMatX11SVD_InverseERS_RK6idVecXRKS_, @function
_ZNK6idMatX11SVD_InverseERS_RK6idVecXRKS_:
.LFB2625:
	.loc 4 5223 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2625
.LVL2862:
	mflr 0
	stwu 1,-48(1)
.LCFI272:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 23,12(1)
.LBB14545:
.LBB14546:
.LBB14547:
.LBB14548:
.LBB14549:
	.loc 3 1995 0
	li 23,0
	.cfi_offset 23, -36
.LBE14549:
.LBE14548:
.LBE14547:
.LBE14546:
.LBE14545:
	.loc 4 5223 0
	stw 25,20(1)
	stw 26,24(1)
	mr 26,6
	.cfi_offset 26, -24
	.cfi_offset 25, -28
.LVL2863:
	stw 27,28(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 28,32(1)
.LBB14577:
.LBB14559:
.LBB14556:
.LBB14553:
.LBB14550:
	.loc 3 1996 0
	li 28,0
	.cfi_offset 28, -16
.LBE14550:
.LBE14553:
.LBE14556:
.LBE14559:
.LBE14577:
	.loc 4 5223 0
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 24,16(1)
	stw 29,36(1)
.LBB14578:
.LBB14560:
.LBB14557:
	.loc 3 2060 0
	lwz 24,4(6)
	.cfi_offset 29, -12
	.cfi_offset 24, -32
	.cfi_offset 65, 4
.LVL2864:
.LBB14554:
.LBB14551:
	.loc 3 2249 0
	lwz 29,0(6)
	mullw 29,24,29
	addi 25,29,3
.LVL2865:
	.loc 3 2250 0
	rlwinm. 25,25,0,0,29
.LVL2866:
	ble- 0,.L1706
.LVL2867:
	.loc 3 2254 0
	slwi 3,25,2
.LVL2868:
.LEHB76:
	bl _Z11Mem_Alloc16i
.LEHE76:
.LVL2869:
	mr 28,3
	mr 23,25
.L1706:
.LVL2870:
	.loc 3 2259 0
	cmpw 7,29,25
	bge- 7,.L1707
	.loc 4 5223 0
	addi 9,29,-1
	.loc 3 2259 0
	li 11,0
	.loc 4 5223 0
	slwi 9,9,2
	add 9,28,9
.L1708:
	.loc 3 2259 0
	addi 29,29,1
.LVL2871:
	stwu 11,4(9)
	.loc 4 5223 0
	addi 0,29,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	cmpw 7,29,0
	blt+ 7,.L1708
.L1707:
.LBE14551:
.LBE14554:
	.loc 3 2062 0
	lis 9,SIMDProcessor@ha
	lwz 6,0(26)
	lwz 3,SIMDProcessor@l(9)
	mr 4,28
	lwz 9,4(26)
	lwz 11,0(3)
	lwz 5,12(26)
	mullw 6,6,9
	lwz 0,164(11)
	mtctr 0
.LEHB77:
	bctrl
.LEHE77:
	.loc 3 2066 0
	lis 9,_ZN6idMatX9tempIndexE@ha
	li 0,0
	stw 0,_ZN6idMatX9tempIndexE@l(9)
.LVL2872:
.LBE14557:
.LBE14560:
	.loc 4 5233 0
	lwz 9,0(31)
	cmpwi 7,9,0
	ble- 7,.L1709
	lis 11,_ZN6idMath11FLT_EPSILONE@ha
	lwz 10,4(31)
	lfs 12,_ZN6idMath11FLT_EPSILONE@l(11)
	mr 7,28
	mr 6,28
	li 8,0
	.loc 4 5235 0
	lis 4,.LC11@ha
	lis 3,.LC1@ha
	.loc 4 5223 0
	slwi 0,24,2
.LVL2873:
.L1713:
.LBB14561:
.LBB14562:
	.loc 2 1532 0
	lwz 5,8(27)
	slwi 11,8,2
.LBE14562:
.LBE14561:
	.loc 4 5235 0
	lfd 13,.LC11@l(4)
	.loc 4 5234 0
	lfsx 0,5,11
.LVL2874:
	.loc 4 5235 0
	fcmpu 7,0,12
	blt- 7,.L1710
	.loc 4 5235 0 is_stmt 0 discriminator 2
	lfs 13,.LC1@l(3)
	fdiv 13,13,0
.L1710:
.LVL2875:
	.loc 4 5236 0 is_stmt 1 discriminator 3
	cmpwi 7,10,0
	ble- 7,.L1711
	.loc 4 5223 0
	mr 9,6
	.loc 4 5236 0
	li 11,0
.LVL2876:
.L1712:
	.loc 4 5237 0 discriminator 2
	lfs 0,0(9)
	.loc 4 5236 0 discriminator 2
	addi 11,11,1
.LVL2877:
	.loc 4 5237 0 discriminator 2
	fmul 0,13,0
	frsp 0,0
	stfs 0,0(9)
	.loc 4 5236 0 discriminator 2
	add 9,9,0
	lwz 10,4(31)
	cmpw 7,10,11
	bgt+ 7,.L1712
	lwz 9,0(31)
.LVL2878:
.L1711:
	.loc 4 5233 0
	addi 8,8,1
.LVL2879:
	addi 6,6,4
	cmpw 7,9,8
	bgt+ 7,.L1713
.LVL2880:
	.loc 4 5242 0 discriminator 1
	cmpwi 7,9,0
	.loc 4 5223 0 discriminator 1
	slwi 24,24,2
.LVL2881:
	li 6,0
	.loc 4 5242 0 discriminator 1
	ble- 7,.L1709
.LVL2882:
.L1714:
	.loc 4 5243 0 discriminator 1
	cmpwi 7,10,0
	li 8,0
	ble- 7,.L1718
.LVL2883:
.L1728:
.LBB14563:
.LBB14564:
	.loc 3 2051 0
	mullw 0,8,10
	lwz 11,12(31)
.LBE14564:
.LBE14563:
	.loc 4 5245 0
	cmpwi 7,10,1
	.loc 4 5244 0
	lfs 13,0(7)
.LBB14567:
.LBB14565:
	.loc 3 2051 0
	slwi 0,0,2
.LBE14565:
.LBE14567:
	.loc 4 5244 0
	lfsx 0,11,0
.LBB14568:
.LBB14566:
	.loc 3 2051 0
	add 11,11,0
.LBE14566:
.LBE14568:
	.loc 4 5244 0
	fmuls 0,13,0
.LVL2884:
	.loc 4 5245 0
	ble- 7,.L1715
	addi 10,10,-1
	mr 9,7
	mtctr 10
.LVL2885:
.L1716:
	.loc 4 5246 0 discriminator 2
	lfsu 12,4(9)
	lfsu 13,4(11)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2886:
	.loc 4 5245 0 discriminator 2
	bdnz .L1716
.L1715:
.LVL2887:
.LBB14569:
.LBB14570:
	.loc 3 2056 0
	lwz 11,4(30)
.LBE14570:
.LBE14569:
	.loc 4 5248 0
	frsp 0,0
.LVL2888:
	lwz 0,12(30)
	slwi 9,8,2
.LBB14572:
.LBB14571:
	.loc 3 2056 0
	mullw 11,6,11
.LBE14571:
.LBE14572:
	.loc 4 5243 0
	addi 8,8,1
.LVL2889:
	.loc 4 5248 0
	slwi 11,11,2
	add 11,0,11
	stfsx 0,11,9
	.loc 4 5243 0
	lwz 10,4(31)
	cmpw 7,10,8
	bgt+ 7,.L1728
	lwz 9,0(31)
.LVL2890:
.L1718:
	.loc 4 5242 0
	addi 6,6,1
.LVL2891:
	add 7,7,24
	cmpw 7,9,6
	bgt+ 7,.L1714
.LVL2892:
.L1709:
.LBB14573:
.LBB14574:
.LBB14575:
	.loc 3 2001 0
	cmpwi 7,28,0
	beq- 7,.L1705
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,28,9
	blt- 7,.L1720
	addi 9,9,4096
	cmplw 7,28,9
	ble- 7,.L1705
.L1720:
	.loc 3 2002 0
	mr 3,28
.LEHB78:
	bl _Z10Mem_Free16Pv
.LEHE78:
.L1705:
.LBE14575:
.LBE14574:
.LBE14573:
.LBE14578:
	.loc 4 5251 0
	lwz 0,52(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
.LVL2893:
	lwz 26,24(1)
.LVL2894:
	lwz 27,28(1)
.LVL2895:
	lwz 28,32(1)
.LVL2896:
	lwz 29,36(1)
.LVL2897:
	lwz 30,40(1)
.LVL2898:
	lwz 31,44(1)
.LVL2899:
	addi 1,1,48
	.cfi_remember_state
.LCFI273:
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
.LVL2900:
.L1727:
.LCFI274:
	.cfi_restore_state
	mr 31,3
.LVL2901:
.LBB14579:
.LBB14576:
.LBB14558:
.LBB14555:
.LBB14552:
	.loc 3 1996 0
	li 28,0
	.loc 3 1995 0
	li 23,0
.LVL2902:
.L1722:
.LBE14552:
.LBE14555:
.LBE14558:
.LBE14576:
	.loc 4 5250 0
	mr 3,23
	mr 4,28
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,31
.LEHB79:
	bl _Unwind_Resume
.LEHE79:
.LVL2903:
.L1726:
	mr 31,3
.LVL2904:
	b .L1722
.LBE14579:
	.cfi_endproc
.LFE2625:
	.section	.gcc_except_table
.LLSDA2625:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2625-.LLSDACSB2625
.LLSDACSB2625:
	.uleb128 .LEHB76-.LFB2625
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1727-.LFB2625
	.uleb128 0
	.uleb128 .LEHB77-.LFB2625
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1726-.LFB2625
	.uleb128 0
	.uleb128 .LEHB78-.LFB2625
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB2625
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSE2625:
	.section	".text"
	.size	_ZNK6idMatX11SVD_InverseERS_RK6idVecXRKS_, .-_ZNK6idMatX11SVD_InverseERS_RK6idVecXRKS_
	.align 2
	.globl _ZNK6idMatX19SVD_MultiplyFactorsERS_RK6idVecXRKS_
	.type	_ZNK6idMatX19SVD_MultiplyFactorsERS_RK6idVecXRKS_, @function
_ZNK6idMatX19SVD_MultiplyFactorsERS_RK6idVecXRKS_:
.LFB2626:
	.loc 4 5260 0
	.cfi_startproc
.LVL2905:
	mflr 0
	stwu 1,-40(1)
.LCFI275:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 24,8(1)
	stw 25,12(1)
	mr 25,5
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	stw 26,16(1)
	stw 27,20(1)
	mr 27,4
	.cfi_offset 27, -20
	.cfi_offset 26, -24
.LVL2906:
	stw 30,32(1)
	mr 30,6
	.cfi_offset 30, -8
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,44(1)
	stw 28,24(1)
	stw 29,28(1)
.LBB14596:
	.loc 4 5264 0
	lwz 28,0(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL2907:
	.loc 4 8102 0
	lwz 29,0(6)
.LVL2908:
.LBB14597:
.LBB14598:
	.loc 3 2250 0
	lwz 0,8(4)
	.loc 3 2249 0
	mullw 26,28,29
	addi 24,26,3
	rlwinm 24,24,0,0,29
.LVL2909:
	.loc 3 2250 0
	cmpw 7,24,0
	ble- 7,.L1735
.LVL2910:
	cmpwi 7,0,-1
	beq- 7,.L1735
	.loc 3 2251 0
	lwz 3,12(4)
.LVL2911:
	cmpwi 7,3,0
	beq- 7,.L1736
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL2912:
.L1736:
	.loc 3 2254 0
	slwi 3,24,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 24,8(27)
	.loc 3 2254 0
	stw 3,12(27)
.L1735:
	.loc 3 2259 0
	cmpw 7,26,24
	.loc 3 2257 0
	stw 28,0(27)
	.loc 3 2258 0
	stw 29,4(27)
.LVL2913:
	.loc 3 2259 0
	bge- 7,.L1737
	slwi 9,26,2
	li 10,0
.L1738:
	addi 26,26,1
.LVL2914:
	lwz 11,12(27)
	.loc 4 5260 0
	addi 0,26,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,26,0
	addi 9,9,4
	blt+ 7,.L1738
.L1737:
.LVL2915:
.LBE14598:
.LBE14597:
	.loc 4 5266 0 discriminator 1
	lwz 11,0(31)
	cmpwi 7,11,0
	ble- 7,.L1734
	.loc 4 5268 0
	lis 9,_ZN6idMath11FLT_EPSILONE@ha
	lwz 0,0(30)
	lfs 10,_ZN6idMath11FLT_EPSILONE@l(9)
	li 8,0
	lis 5,.LC11@ha
	.loc 4 5278 0
	li 6,0
.LVL2916:
.L1746:
.LBB14599:
.LBB14600:
	.loc 2 1532 0
	lwz 9,8(25)
.LBE14600:
.LBE14599:
	.loc 4 5260 0
	slwi 3,8,2
.LBB14602:
.LBB14601:
	.loc 2 1532 0
	lfsx 11,9,3
.LBE14601:
.LBE14602:
	.loc 4 5268 0
	fcmpu 7,10,11
	cror 30,28,30
	beq- 7,.L1740
.LVL2917:
	.loc 4 5277 0 discriminator 1
	cmpwi 7,0,0
	li 9,0
	ble- 7,.L1742
.LVL2918:
.L1751:
.LBB14603:
.LBB14604:
	.loc 3 2056 0 discriminator 2
	lwz 10,4(27)
.LBE14604:
.LBE14603:
	.loc 4 5278 0 discriminator 2
	slwi 11,9,2
	lwz 0,12(27)
	.loc 4 5277 0 discriminator 2
	addi 9,9,1
.LVL2919:
.LBB14606:
.LBB14605:
	.loc 3 2056 0 discriminator 2
	mullw 10,8,10
.LBE14605:
.LBE14606:
	.loc 4 5278 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
	stwx 6,10,11
	.loc 4 5277 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L1751
.LVL2920:
.L1757:
	lwz 11,0(31)
.L1742:
	.loc 4 5266 0
	addi 8,8,1
.LVL2921:
	cmpw 7,11,8
	bgt+ 7,.L1746
.LVL2922:
.L1734:
.LBE14596:
	.loc 4 5282 0
	lwz 0,44(1)
	lwz 24,8(1)
.LVL2923:
	mtlr 0
	lwz 25,12(1)
.LVL2924:
	lwz 26,16(1)
.LVL2925:
	lwz 27,20(1)
.LVL2926:
	lwz 28,24(1)
.LVL2927:
	lwz 29,28(1)
	lwz 30,32(1)
.LVL2928:
	lwz 31,36(1)
.LVL2929:
	addi 1,1,40
	.cfi_remember_state
.LCFI276:
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
.LVL2930:
.L1740:
.LCFI277:
	.cfi_restore_state
.LBB14611:
	.loc 4 5269 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L1742
	.loc 4 5271 0
	lwz 0,4(31)
	.loc 4 5269 0
	li 10,0
	la 29,.LC11@l(5)
.LVL2931:
	.loc 4 5271 0
	cmpwi 7,0,0
	ble- 7,.L1749
.LVL2932:
.L1758:
	lwz 9,4(30)
	mullw 11,8,0
	.loc 4 5260 0
	lwz 4,12(31)
	mtctr 0
	lwz 7,12(30)
	lfd 0,0(29)
	.loc 4 5271 0
	mullw 9,10,9
	.loc 4 5260 0
	slwi 11,11,2
	add 11,4,11
	addi 11,11,-4
	slwi 9,9,2
	add 9,7,9
	addi 9,9,-4
.LVL2933:
.L1744:
	.loc 4 5272 0 discriminator 2
	lfsu 12,4(11)
	lfsu 13,4(9)
	fmuls 13,12,13
	fadd 0,0,13
.LVL2934:
	.loc 4 5271 0 discriminator 2
	bdnz .L1744
.LVL2935:
.L1745:
.LBB14607:
.LBB14608:
	.loc 3 2056 0
	lwz 11,4(27)
.LBE14608:
.LBE14607:
	.loc 4 5274 0
	fmul 0,11,0
	lwz 0,12(27)
	slwi 9,10,2
.LBB14610:
.LBB14609:
	.loc 3 2056 0
	mullw 11,8,11
.LBE14609:
.LBE14610:
	.loc 4 5269 0
	addi 10,10,1
.LVL2936:
	.loc 4 5274 0
	frsp 0,0
	slwi 11,11,2
	add 11,0,11
	stfsx 0,11,9
	.loc 4 5269 0
	lwz 0,0(30)
	cmpw 7,0,10
	ble- 7,.L1757
	.loc 4 5271 0
	lwz 0,4(31)
	.loc 4 5269 0
	lwz 9,8(25)
	.loc 4 5271 0
	cmpwi 7,0,0
	.loc 4 5269 0
	lfsx 11,9,3
.LVL2937:
	.loc 4 5271 0
	bgt+ 7,.L1758
.LVL2938:
.L1749:
	lfd 0,0(29)
	b .L1745
.LBE14611:
	.cfi_endproc
.LFE2626:
	.size	_ZNK6idMatX19SVD_MultiplyFactorsERS_RK6idVecXRKS_, .-_ZNK6idMatX19SVD_MultiplyFactorsERS_RK6idVecXRKS_
	.align 2
	.globl _ZN6idMatX15Cholesky_FactorEv
	.type	_ZN6idMatX15Cholesky_FactorEv, @function
_ZN6idMatX15Cholesky_FactorEv:
.LFB2627:
	.loc 4 5294 0
	.cfi_startproc
.LVL2939:
	mflr 0
	stwu 1,-32(1)
.LCFI278:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	mr 6,3
	stw 31,28(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI279:
	.cfi_def_cfa_register 31
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
.LBB14632:
	.loc 4 5301 0
	lwz 11,0(1)
	lwz 9,0(3)
	.loc 4 5326 0
	li 3,1
.LVL2940:
	.loc 4 5301 0
	slwi 0,9,2
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 4 5303 0
	cmpwi 7,9,0
	.loc 4 5301 0
	addic 0,0,45
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 11,1,0
	addi 4,1,23
	rlwinm 4,4,0,0,27
.LVL2941:
	.loc 4 5303 0
	ble- 7,.L1760
	li 7,0
	lis 28,.LC11@ha
	.loc 4 5305 0
	cmpwi 7,7,0
.LBB14633:
.LBB14634:
	.loc 5 276 0
	lis 30,_ZN6idMath5iSqrtE@ha
.LBE14634:
.LBE14633:
	.loc 4 5303 0
	lwz 0,4(6)
	li 3,0
	la 28,.LC11@l(28)
.LBB14641:
.LBB14635:
	.loc 5 275 0
	lis 29,.LC6@ha
	.loc 5 276 0
	la 30,_ZN6idMath5iSqrtE@l(30)
	.loc 5 278 0
	lis 12,.LC8@ha
.LVL2942:
.LBE14635:
.LBE14641:
	.loc 4 5305 0
	beq- 7,.L1779
.LVL2943:
.L1766:
.LBB14642:
.LBB14643:
	.loc 3 2056 0
	mullw 0,7,0
	lwz 9,12(6)
.LBE14643:
.LBE14642:
	.loc 4 5307 0
	li 10,0
	li 8,0
.LBB14647:
.LBB14644:
	.loc 3 2056 0
	slwi 0,0,2
.LBE14644:
.LBE14647:
	.loc 4 5307 0
	lfsx 0,9,0
.LVL2944:
.LBB14648:
.LBB14645:
	.loc 3 2056 0
	add 5,9,0
.LVL2945:
.L1777:
.LBE14645:
.LBE14648:
	.loc 4 5311 0
	lfsx 13,4,8
	.loc 4 5305 0
	addi 10,10,1
.LVL2946:
	cmpw 7,10,7
	.loc 4 5311 0
	fmul 0,13,0
.LVL2947:
	frsp 0,0
	stfs 0,0(5)
	.loc 4 5305 0
	beq- 7,.L1780
.LVL2948:
.L1764:
	.loc 4 8102 0
	lwz 9,4(6)
	.loc 4 5308 0
	cmpwi 7,10,0
	.loc 4 8102 0
	lwz 0,12(6)
.LBB14649:
.LBB14646:
	.loc 4 5294 0
	slwi 8,10,2
	.loc 3 2056 0
	mullw 11,7,9
	slwi 11,11,2
	add 11,0,11
.LBE14646:
.LBE14649:
	.loc 4 5307 0
	add 5,11,8
	lfsx 0,11,8
.LVL2949:
	.loc 4 5308 0
	ble- 7,.L1777
.LBB14650:
.LBB14651:
	.loc 3 2056 0
	mullw 9,9,10
.LBE14651:
.LBE14650:
.LBE14632:
	.loc 4 5308 0
	mtctr 10
.LBB14667:
	.loc 4 5294 0
	addi 11,11,-4
.LBB14653:
.LBB14652:
	.loc 3 2056 0
	slwi 9,9,2
	add 9,0,9
.LBE14652:
.LBE14653:
	.loc 4 5294 0
	addi 9,9,-4
.LVL2950:
.L1763:
	.loc 4 5309 0 discriminator 2
	lfsu 12,4(11)
	lfsu 13,4(9)
	fmuls 13,12,13
	fsub 0,0,13
.LVL2951:
	.loc 4 5308 0 discriminator 2
	bdnz .L1763
	.loc 4 5311 0
	lfsx 13,4,8
	.loc 4 5305 0
	addi 10,10,1
.LVL2952:
	cmpw 7,10,7
	.loc 4 5311 0
	fmul 0,13,0
.LVL2953:
	frsp 0,0
	stfs 0,0(5)
	.loc 4 5305 0
	bne+ 7,.L1764
.LVL2954:
.L1780:
.LBB14654:
.LBB14655:
	.loc 3 2056 0
	lwz 0,4(6)
.LBE14655:
.LBE14654:
	.loc 4 5315 0
	mtctr 7
.LBB14657:
.LBB14656:
	.loc 3 2056 0
	lwz 9,12(6)
	mullw 0,7,0
	slwi 0,0,2
	add 9,9,0
.LBE14656:
.LBE14657:
	.loc 4 5314 0
	lfsx 13,9,3
.LVL2955:
	.loc 4 5294 0
	addi 9,9,-4
.LVL2956:
.L1765:
	.loc 4 5316 0 discriminator 2
	lfsu 0,4(9)
.LVL2957:
	fmuls 0,0,0
	fsub 13,13,0
.LVL2958:
	.loc 4 5315 0 discriminator 2
	bdnz .L1765
	.loc 4 5319 0
	lfd 0,0(28)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L1771
.LVL2959:
.L1781:
	.loc 4 5323 0
	frsp 0,13
.LBB14658:
.LBB14636:
	.loc 5 275 0
	lfs 11,.LC6@l(29)
	.loc 5 278 0
	lfs 12,.LC8@l(12)
.LBE14636:
.LBE14658:
	.loc 4 5323 0
	stfs 0,8(31)
.LVL2960:
.LBB14659:
.LBB14637:
	.loc 5 275 0
	fmuls 11,0,11
	.loc 5 270 0
	lwz 0,8(31)
.LVL2961:
	.loc 4 5294 0
	fneg 11,11
	.loc 5 276 0
	rlwinm 9,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,30,0
	subfic 9,9,380
	rlwinm 9,9,22,0,8
	or 0,9,0
	.loc 5 277 0
	stw 0,12(31)
	lfs 10,12(31)
.LBE14637:
.LBE14659:
.LBB14660:
.LBB14661:
	.loc 3 2056 0
	lwz 0,4(6)
.LBE14661:
.LBE14660:
.LBB14663:
.LBB14638:
	.loc 5 277 0
	fmr 0,10
.LVL2962:
.LBE14638:
.LBE14663:
	.loc 4 5324 0
	lwz 9,12(6)
.LBB14664:
.LBB14662:
	.loc 3 2056 0
	mullw 0,7,0
.LBE14662:
.LBE14664:
	.loc 4 5303 0
	addi 7,7,1
.LBB14665:
.LBB14639:
	.loc 5 278 0
	fmul 10,0,0
.LVL2963:
.LBE14639:
.LBE14665:
	.loc 4 5324 0
	slwi 0,0,2
	add 9,9,0
.LBB14666:
.LBB14640:
	.loc 5 278 0
	fmadd 10,11,10,12
	fmul 0,0,10
.LVL2964:
	.loc 5 279 0
	fmul 10,0,0
	fmadd 12,11,10,12
.LVL2965:
	fmul 0,0,12
.LVL2966:
	.loc 5 280 0
	frsp 0,0
.LVL2967:
.LBE14640:
.LBE14666:
	.loc 4 5324 0
	fmr 12,0
	.loc 4 5323 0
	stfsx 0,3,4
.LVL2968:
	.loc 4 5324 0
	fmul 0,12,13
	frsp 0,0
	stfsx 0,9,3
	.loc 4 5303 0
	addi 3,3,4
	lwz 0,0(6)
	cmpw 7,0,7
	ble- 7,.L1772
	.loc 4 5305 0
	cmpwi 7,7,0
	.loc 4 5303 0
	lwz 0,4(6)
.LVL2969:
	.loc 4 5305 0
	bne+ 7,.L1766
.LVL2970:
.L1779:
	.loc 4 5314 0
	lwz 9,12(6)
	.loc 4 5319 0
	lfd 0,0(28)
	.loc 4 5314 0
	lfsx 13,9,3
.LVL2971:
	.loc 4 5319 0
	fcmpu 7,13,0
	cror 30,28,30
	bne+ 7,.L1781
.LVL2972:
.L1771:
	.loc 4 5320 0
	li 3,0
.LVL2973:
.L1760:
.LBE14667:
	.loc 4 5327 0
	addi 11,31,32
	lwz 0,4(11)
	lwz 28,-16(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI280:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI281:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL2974:
.L1772:
.LCFI282:
	.cfi_restore_state
	addi 11,31,32
.LBB14668:
	.loc 4 5326 0
	li 3,1
.LBE14668:
	.loc 4 5327 0
	lwz 0,4(11)
	lwz 28,-16(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
.LCFI283:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI284:
	.cfi_def_cfa_register 1
	blr
	.cfi_endproc
.LFE2627:
	.size	_ZN6idMatX15Cholesky_FactorEv, .-_ZN6idMatX15Cholesky_FactorEv
	.align 2
	.globl _ZNK6idMatX27IsSymmetricPositiveDefiniteEf
	.type	_ZNK6idMatX27IsSymmetricPositiveDefiniteEf, @function
_ZNK6idMatX27IsSymmetricPositiveDefiniteEf:
.LFB2581:
	.loc 4 3277 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2581
.LVL2975:
	mflr 0
	stwu 1,-64(1)
.LCFI285:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 29,52(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,68(1)
.LBB14693:
.LBB14694:
.LBB14695:
	.loc 3 1995 0
	li 0,0
	.cfi_offset 65, 4
.LBE14695:
.LBE14694:
.LBE14693:
	.loc 4 3277 0
	stw 30,56(1)
.LBB14753:
.LBB14699:
.LBB14700:
	.loc 3 2514 0
	li 30,0
	.cfi_offset 30, -8
.LBE14700:
.LBE14699:
.LBE14753:
	.loc 4 3277 0
	stw 31,60(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI286:
	.cfi_def_cfa_register 31
.LVL2976:
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
.LBB14754:
.LBB14724:
.LBB14696:
	.loc 3 1995 0
	stw 0,16(31)
.LBE14696:
.LBE14724:
.LBB14725:
.LBB14701:
	.loc 3 2514 0
	lwz 28,0(3)
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	lwz 27,4(3)
.LBE14701:
.LBE14725:
.LBB14726:
.LBB14697:
	.loc 3 1995 0
	stw 0,12(31)
.LBE14697:
.LBE14726:
.LBB14727:
.LBB14702:
	.loc 3 2514 0
	cmpw 7,28,27
.LBE14702:
.LBE14727:
.LBB14728:
.LBB14698:
	.loc 3 1995 0
	stw 0,8(31)
	.loc 3 1996 0
	stw 0,20(31)
.LVL2977:
.LBE14698:
.LBE14728:
.LBB14729:
.LBB14703:
	.loc 3 2514 0
	beq- 7,.L1806
.LVL2978:
.L1783:
.LBE14703:
.LBE14729:
.LBE14754:
	.loc 4 3291 0
	addi 11,31,64
	mr 3,30
	lwz 0,4(11)
	lwz 25,-28(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL2979:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI287:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI288:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL2980:
.L1806:
.LCFI289:
	.cfi_restore_state
.LBB14755:
.LBB14730:
.LBB14704:
.LBB14705:
	.loc 3 2517 0
	cmpwi 7,28,0
	ble- 7,.L1784
	.loc 4 3277 0
	lwz 8,12(3)
	slwi 10,28,2
.LBE14705:
.LBE14704:
.LBE14730:
.LBE14755:
	li 6,0
.LBB14756:
.LBB14731:
.LBB14719:
.LBB14714:
	addi 7,8,-4
.LVL2981:
.L1785:
.LBB14706:
	.loc 3 2519 0
	lfs 13,0(8)
	lfsu 0,4(7)
.LVL2982:
	fsubs 0,13,0
	stfs 0,24(31)
	lwz 0,24(31)
.LBB14707:
.LBB14708:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE14708:
.LBE14707:
	.loc 3 2519 0
	stw 0,24(31)
	lfs 0,24(31)
	fcmpu 7,1,0
	blt- 7,.L1802
.LBE14706:
.LBE14714:
.LBE14719:
.LBE14731:
.LBE14756:
	.loc 4 3277 0
	mtctr 28
.LBB14757:
.LBB14732:
.LBB14720:
.LBB14715:
.LBB14711:
	add 9,7,10
.LBE14711:
.LBE14715:
.LBE14720:
.LBE14732:
.LBE14757:
	mr 11,8
.LVL2983:
.L1787:
.LBB14758:
.LBB14733:
.LBB14721:
.LBB14716:
.LBB14712:
	.loc 3 2518 0
	bdz .L1807
.LVL2984:
	.loc 3 2519 0
	lfs 0,0(9)
	add 9,9,10
.LVL2985:
	lfsu 13,4(11)
.LVL2986:
	fsubs 0,13,0
.LVL2987:
	stfs 0,24(31)
	lwz 0,24(31)
.LBB14710:
.LBB14709:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE14709:
.LBE14710:
	.loc 3 2519 0
	stw 0,24(31)
	lfs 0,24(31)
	fcmpu 7,1,0
	bnl+ 7,.L1787
.L1802:
.LBE14712:
.LBE14716:
.LBE14721:
.LBE14733:
.LBE14758:
	.loc 4 3291 0
	addi 11,31,64
.LBB14759:
.LBB14734:
.LBB14722:
.LBB14717:
.LBB14713:
	.loc 3 2519 0
	li 30,0
.LBE14713:
.LBE14717:
.LBE14722:
.LBE14734:
.LBE14759:
	.loc 4 3291 0
	lwz 0,4(11)
	mr 3,30
.LVL2988:
	lwz 25,-28(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL2989:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI290:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI291:
	.cfi_def_cfa_register 1
	blr
.LVL2990:
.L1807:
.LCFI292:
	.cfi_restore_state
.LBB14760:
.LBB14735:
.LBB14723:
.LBB14718:
	.loc 3 2517 0
	addi 6,6,1
.LVL2991:
	add 8,8,10
	cmpw 7,6,28
	bne+ 7,.L1785
.LVL2992:
.L1784:
.LBE14718:
.LBE14723:
.LBE14735:
	.loc 4 3286 0
	mullw 30,28,27
.LBB14736:
.LBB14737:
	.loc 3 2280 0
	lwz 3,20(31)
.LVL2993:
.LBE14737:
.LBE14736:
	.loc 4 3286 0
	lwz 9,0(1)
.LBB14741:
.LBB14738:
	.loc 3 2280 0
	cmpwi 7,3,0
.LBE14738:
.LBE14741:
	.loc 4 3286 0
	addi 26,30,3
	rlwinm 26,26,0,0,29
	slwi 0,26,2
	subfic 0,0,-32
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL2994:
.LBB14742:
.LBB14739:
	.loc 3 2280 0
	beq- 7,.L1788
	lwz 0,16(31)
	cmpwi 7,0,-1
	beq- 7,.L1788
.LEHB80:
	.loc 3 2281 0
	bl _Z10Mem_Free16Pv
.LVL2995:
.L1788:
	.loc 3 2288 0
	cmpw 7,30,26
	.loc 3 2285 0
	li 0,-1
.LBE14739:
.LBE14742:
	.loc 4 3286 0
	mr 4,25
.LBB14743:
.LBB14740:
	.loc 3 2284 0
	stw 25,20(31)
	.loc 3 2285 0
	stw 0,16(31)
	.loc 3 2286 0
	stw 28,8(31)
	.loc 3 2287 0
	stw 27,12(31)
.LVL2996:
	.loc 3 2288 0
	bge- 7,.L1789
	slwi 9,30,2
	li 11,0
	b .L1791
.L1808:
	lwz 4,20(31)
.L1791:
	addi 30,30,1
.LVL2997:
	stwx 11,4,9
	.loc 4 3277 0
	addi 0,30,3
	.loc 3 2288 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,30,0
	blt+ 7,.L1808
	lwz 0,16(31)
	lwz 4,20(31)
.L1789:
.LVL2998:
.LBE14740:
.LBE14743:
.LBB14744:
.LBB14745:
	.loc 3 2060 0
	lwz 26,0(29)
	lwz 27,4(29)
.LVL2999:
.LBB14746:
.LBB14747:
	.loc 3 2249 0
	mullw 30,26,27
.LVL3000:
	addi 28,30,3
.LVL3001:
	rlwinm 28,28,0,0,29
.LVL3002:
	.loc 3 2250 0
	cmpw 7,28,0
	ble- 7,.L1792
	cmpwi 7,0,-1
	beq- 7,.L1792
	.loc 3 2251 0
	cmpwi 7,4,0
	beq- 7,.L1793
	.loc 3 2252 0
	mr 3,4
	bl _Z10Mem_Free16Pv
.LVL3003:
.L1793:
	.loc 3 2254 0
	slwi 3,28,2
	bl _Z11Mem_Alloc16i
	stw 3,20(31)
	mr 4,3
	.loc 3 2255 0
	stw 28,16(31)
.L1792:
	.loc 3 2259 0
	cmpw 7,30,28
	.loc 3 2257 0
	stw 26,8(31)
	.loc 3 2258 0
	stw 27,12(31)
.LVL3004:
	.loc 3 2259 0
	bge- 7,.L1794
	slwi 9,30,2
	li 11,0
.L1796:
	addi 30,30,1
.LVL3005:
	stwx 11,4,9
	.loc 4 3277 0
	addi 0,30,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,20(31)
	cmpw 7,30,0
	blt+ 7,.L1796
.L1794:
.LBE14747:
.LBE14746:
	.loc 3 2062 0
	lis 9,SIMDProcessor@ha
	lwz 6,0(29)
	lwz 3,SIMDProcessor@l(9)
	lwz 9,4(29)
	lwz 11,0(3)
	lwz 5,12(29)
	mullw 6,6,9
	lwz 0,164(11)
	mtctr 0
	bctrl
.LEHE80:
	.loc 3 2066 0
	li 0,0
	lis 9,_ZN6idMatX9tempIndexE@ha
.LBE14745:
.LBE14744:
	.loc 4 3290 0
	addi 3,31,8
.LBB14749:
.LBB14748:
	.loc 3 2066 0
	stw 0,_ZN6idMatX9tempIndexE@l(9)
.LBE14748:
.LBE14749:
	.loc 4 3290 0
	bl _ZN6idMatX15Cholesky_FactorEv
	lwz 0,16(31)
	mr 30,3
.LVL3006:
	lwz 3,20(31)
.LBB14750:
.LBB14751:
.LBB14752:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L1783
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,9,3
	bgt- 7,.L1797
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L1783
.L1797:
	cmpwi 7,0,-1
	beq- 7,.L1783
.LEHB81:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.LEHE81:
.LBE14752:
.LBE14751:
.LBE14750:
.LBE14760:
	.loc 4 3291 0
	addi 11,31,64
	lwz 0,4(11)
	mr 3,30
	lwz 25,-28(11)
.LVL3007:
	mtlr 0
	lwz 26,-24(11)
.LVL3008:
	lwz 27,-20(11)
.LVL3009:
	lwz 28,-16(11)
.LVL3010:
	lwz 29,-12(11)
.LVL3011:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI293:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI294:
	.cfi_def_cfa_register 1
.LVL3012:
	blr
.LVL3013:
.L1804:
.LCFI295:
	.cfi_restore_state
	mr 30,3
.LBB14761:
	.loc 4 3290 0
	lwz 4,20(31)
	lwz 3,16(31)
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,30
.LEHB82:
	bl _Unwind_Resume
.LEHE82:
.LBE14761:
	.cfi_endproc
.LFE2581:
	.section	.gcc_except_table
.LLSDA2581:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2581-.LLSDACSB2581
.LLSDACSB2581:
	.uleb128 .LEHB80-.LFB2581
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1804-.LFB2581
	.uleb128 0
	.uleb128 .LEHB81-.LFB2581
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB2581
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
.LLSDACSE2581:
	.section	".text"
	.size	_ZNK6idMatX27IsSymmetricPositiveDefiniteEf, .-_ZNK6idMatX27IsSymmetricPositiveDefiniteEf
	.align 2
	.globl _ZN6idMatX22Cholesky_UpdateRankOneERK6idVecXfi
	.type	_ZN6idMatX22Cholesky_UpdateRankOneERK6idVecXfi, @function
_ZN6idMatX22Cholesky_UpdateRankOneERK6idVecXfi:
.LFB2628:
	.loc 4 5337 0
	.cfi_startproc
.LVL3014:
	mflr 0
	stwu 1,-48(1)
.LCFI296:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stfd 31,40(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,52(1)
	stw 26,16(1)
.LBB14776:
.LBB14777:
.LBB14778:
.LBB14779:
.LBB14780:
	.loc 5 275 0
	lis 26,.LC6@ha
	.cfi_offset 26, -32
	.cfi_offset 65, 4
.LBE14780:
.LBE14779:
.LBE14778:
.LBE14777:
.LBE14776:
	.loc 4 5337 0
	stw 27,20(1)
.LBB14829:
.LBB14810:
.LBB14801:
.LBB14791:
.LBB14781:
	.loc 5 276 0
	lis 27,_ZN6idMath5iSqrtE@ha
	.cfi_offset 27, -28
.LBE14781:
.LBE14791:
.LBE14801:
.LBE14810:
.LBE14829:
	.loc 4 5337 0
	stw 28,24(1)
	mr 28,5
	.cfi_offset 28, -24
	stw 29,28(1)
.LBB14830:
.LBB14811:
.LBB14802:
.LBB14792:
.LBB14782:
	.loc 5 276 0
	la 27,_ZN6idMath5iSqrtE@l(27)
.LBE14782:
.LBE14792:
.LBE14802:
.LBE14811:
.LBE14830:
	.loc 4 5337 0
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	stw 31,36(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI297:
	.cfi_def_cfa_register 31
.LBB14831:
	.loc 4 5346 0
	lwz 11,0(1)
	lwz 9,0(4)
	slwi 9,9,2
	addi 0,9,45
	.loc 4 5347 0
	mr 5,9
.LVL3015:
	.loc 4 5346 0
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 11,1,0
	addi 29,1,23
	.loc 4 5347 0
	lwz 4,8(4)
.LVL3016:
	.loc 4 5346 0
	rlwinm 29,29,0,0,27
.LVL3017:
	.loc 4 5347 0
	mr 3,29
.LVL3018:
	bl memcpy
.LVL3019:
	.loc 4 5337 0
	slwi 5,28,2
	addi 5,5,-4
	.loc 4 5352 0
	lis 3,.LC1@ha
	.loc 4 5337 0
	add 5,5,29
	.loc 4 5356 0
	lis 4,.LC11@ha
	.loc 4 5337 0
	subfic 29,29,4
.LVL3020:
.LBB14812:
.LBB14803:
.LBB14793:
.LBB14783:
	.loc 5 278 0
	lis 12,.LC8@ha
.LVL3021:
.L1810:
.LBE14783:
.LBE14793:
.LBE14803:
.LBE14812:
	.loc 4 5349 0 discriminator 1
	lwz 0,4(30)
	cmpw 7,28,0
	bge- 7,.L1817
.L1814:
.LBB14813:
.LBB14814:
	.loc 3 2056 0
	mullw 0,28,0
	lwz 9,12(30)
.LBE14814:
.LBE14813:
	.loc 4 5337 0
	add 10,29,5
	.loc 4 5354 0
	fmr 13,31
	.loc 4 5350 0
	lfsu 8,4(5)
.LVL3022:
	.loc 4 5352 0
	lfs 11,.LC1@l(3)
.LBB14817:
.LBB14815:
	.loc 3 2056 0
	slwi 0,0,2
.LBE14815:
.LBE14817:
	.loc 4 5354 0
	fmul 9,13,8
.LBB14818:
.LBB14816:
	.loc 3 2056 0
	add 9,9,0
.LBE14816:
.LBE14818:
	.loc 4 5356 0
	lfd 10,.LC11@l(4)
	.loc 4 5351 0
	lfsx 0,9,10
.LVL3023:
	.loc 4 5353 0
	fmul 12,0,0
	.loc 4 5352 0
	fdiv 11,11,0
.LVL3024:
	.loc 4 5354 0
	fmadd 0,9,8,12
.LVL3025:
	.loc 4 5356 0
	fcmpu 7,0,10
	cror 30,28,30
	beq- 7,.L1815
.LVL3026:
	.loc 4 5362 0
	fdiv 9,13,0
	.loc 4 5366 0
	lwz 0,0(30)
	addi 28,28,1
.LVL3027:
.LBB14819:
.LBB14804:
.LBB14794:
.LBB14784:
	.loc 5 275 0
	lfs 7,.LC6@l(26)
.LBE14784:
.LBE14794:
.LBE14804:
.LBE14819:
	.loc 4 5366 0
	cmpw 7,28,0
.LBB14820:
.LBB14805:
.LBB14795:
.LBB14785:
	.loc 5 278 0
	lfs 10,.LC8@l(12)
.LBE14785:
.LBE14795:
.LBE14805:
.LBE14820:
	.loc 4 5360 0
	frsp 0,0
.LVL3028:
	.loc 4 5362 0
	frsp 9,9
	.loc 4 5360 0
	stfs 0,8(31)
.LVL3029:
.LBB14821:
.LBB14806:
.LBB14796:
.LBB14786:
	.loc 5 275 0
	fmuls 7,0,7
.LBE14786:
.LBE14796:
.LBE14806:
.LBE14821:
	.loc 4 5364 0
	fmul 12,12,9
.LVL3030:
.LBB14822:
.LBB14807:
.LBB14797:
.LBB14787:
	.loc 5 270 0
	lwz 0,8(31)
.LVL3031:
	.loc 4 5337 0
	fneg 7,7
	.loc 5 276 0
	rlwinm 11,0,19,21,29
	rlwinm 8,0,9,24,31
	lwzx 11,27,11
	subfic 0,8,380
	rlwinm 0,0,22,0,8
.LBE14787:
.LBE14797:
.LBE14807:
.LBE14822:
	.loc 4 5363 0
	fmul 9,9,8
.LBB14823:
.LBB14808:
.LBB14798:
.LBB14788:
	.loc 5 276 0
	or 0,0,11
	.loc 5 277 0
	stw 0,12(31)
.LBE14788:
.LBE14798:
.LBE14808:
.LBE14823:
	.loc 4 5364 0
	frsp 31,12
.LVL3032:
.LBB14824:
.LBB14809:
.LBB14799:
.LBB14789:
	.loc 5 277 0
	lfs 0,12(31)
.LVL3033:
	fmr 13,0
.LVL3034:
	.loc 5 278 0
	fmul 0,13,13
.LVL3035:
	fmadd 0,7,0,10
	fmul 0,13,0
.LVL3036:
	.loc 5 279 0
	fmul 13,0,0
	fmadd 10,7,13,10
.LVL3037:
.LBE14789:
.LBE14799:
	.loc 5 303 0
	lfs 13,8(31)
.LBB14800:
.LBB14790:
	.loc 5 279 0
	fmul 0,0,10
.LVL3038:
	.loc 5 280 0
	frsp 0,0
.LVL3039:
.LBE14790:
.LBE14800:
	.loc 5 303 0
	fmuls 0,13,0
.LBE14809:
.LBE14824:
	.loc 4 5360 0
	fmr 10,0
.LVL3040:
	stfsx 0,9,10
	.loc 4 5366 0
	bge- 7,.L1810
	fneg 8,8
.LVL3041:
	mr 11,5
	mr 9,28
.LVL3042:
.L1813:
.LBB14825:
.LBB14826:
	.loc 3 2056 0 discriminator 2
	lwz 7,4(30)
.LBE14826:
.LBE14825:
	.loc 4 5368 0 discriminator 2
	lwz 6,12(30)
.LBB14828:
.LBB14827:
	.loc 3 2056 0 discriminator 2
	mullw 7,9,7
.LBE14827:
.LBE14828:
	.loc 4 5370 0 discriminator 2
	lfsu 13,4(11)
	.loc 4 5366 0 discriminator 2
	lwz 0,0(30)
	addi 9,9,1
.LVL3043:
	cmpw 7,0,9
	.loc 4 5368 0 discriminator 2
	slwi 7,7,2
	add 7,6,7
	lfsx 0,7,10
	fmul 0,0,11
.LVL3044:
	.loc 4 5370 0 discriminator 2
	fmadd 13,8,0,13
	frsp 13,13
	.loc 4 5371 0 discriminator 2
	fmr 12,13
	.loc 4 5370 0 discriminator 2
	stfs 13,0(11)
.LVL3045:
	.loc 4 5371 0 discriminator 2
	fmadd 0,12,9,0
.LVL3046:
	.loc 4 5373 0 discriminator 2
	fmul 0,0,10
	frsp 0,0
	stfsx 0,7,10
	.loc 4 5366 0 discriminator 2
	bgt+ 7,.L1813
.LVL3047:
	.loc 4 5349 0
	lwz 0,4(30)
	cmpw 7,28,0
	blt+ 7,.L1814
.LVL3048:
.L1817:
.LBE14831:
	.loc 4 5377 0
	addi 11,31,48
.LBB14832:
	.loc 4 5376 0
	li 3,1
.LBE14832:
	.loc 4 5377 0
	lwz 0,4(11)
	lwz 26,-32(11)
	mtlr 0
	lwz 27,-28(11)
	lwz 28,-24(11)
.LVL3049:
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL3050:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI298:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL3051:
	mr 1,11
.LCFI299:
	.cfi_def_cfa_register 1
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
.LVL3052:
	blr
.LVL3053:
.L1815:
.LCFI300:
	.cfi_restore_state
	addi 11,31,48
.LBB14833:
	.loc 4 5357 0
	li 3,0
.LBE14833:
	.loc 4 5377 0
	lwz 0,4(11)
	lwz 26,-32(11)
	mtlr 0
	lwz 27,-28(11)
	lwz 28,-24(11)
.LVL3054:
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL3055:
	lwz 31,-12(11)
.LCFI301:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL3056:
	mr 1,11
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI302:
	.cfi_def_cfa_register 1
.LVL3057:
	blr
	.cfi_endproc
.LFE2628:
	.size	_ZN6idMatX22Cholesky_UpdateRankOneERK6idVecXfi, .-_ZN6idMatX22Cholesky_UpdateRankOneERK6idVecXfi
	.align 2
	.globl _ZN6idMatX24Cholesky_UpdateRowColumnERK6idVecXi
	.type	_ZN6idMatX24Cholesky_UpdateRowColumnERK6idVecXi, @function
_ZN6idMatX24Cholesky_UpdateRowColumnERK6idVecXi:
.LFB2629:
	.loc 4 5392 0
	.cfi_startproc
.LVL3058:
	mflr 0
	stwu 1,-48(1)
.LCFI303:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	mr 9,3
	stw 31,44(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI304:
	.cfi_def_cfa_register 31
	stw 0,52(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
.LBB14912:
	.loc 4 5402 0
	lwz 8,0(1)
	lwz 11,4(3)
	slwi 10,11,2
.LBB14913:
.LBB14914:
	.loc 2 1764 0
	addi 7,11,3
.LBE14914:
.LBE14913:
	.loc 4 5402 0
	addi 0,10,45
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
.LBB14918:
.LBB14915:
	.loc 2 1764 0
	rlwinm 7,7,0,0,29
.LBE14915:
.LBE14918:
	.loc 4 5402 0
	rlwinm 0,0,0,0,27
.LBB14919:
.LBB14916:
	.loc 2 1764 0
	cmpw 7,11,7
.LBE14916:
.LBE14919:
	.loc 4 5402 0
	neg 0,0
	stwux 8,1,0
	mr 8,11
	addi 0,1,23
	rlwinm 3,0,0,0,27
.LVL3059:
.LBB14920:
.LBB14917:
	.loc 2 1764 0
	bge- 7,.L1819
	.loc 4 5392 0
	addi 10,10,-4
	.loc 2 1764 0
	li 0,0
	add 10,10,3
.LVL3060:
.L1820:
	addi 11,11,1
.LVL3061:
	stwu 0,4(10)
	.loc 4 5392 0
	addi 8,11,3
	.loc 2 1764 0
	rlwinm 8,8,0,0,29
	cmpw 7,11,8
	blt+ 7,.L1820
	lwz 8,4(9)
.L1819:
.LBE14917:
.LBE14920:
.LBB14921:
	.loc 4 5404 0
	cmpwi 6,5,0
	bne- 6,.L1821
.LBB14922:
.LBB14923:
	.loc 4 5406 0
	cmpwi 7,8,1
	beq- 7,.L1822
.LVL3062:
.LBE14923:
	.loc 4 5417 0 discriminator 1
	cmpwi 7,8,0
	li 11,0
.LVL3063:
	ble- 7,.L1869
.LVL3064:
.L1857:
	.loc 4 5417 0 is_stmt 0 discriminator 2
	lwz 8,4(9)
.LBB14944:
.LBB14924:
	.loc 4 5392 0 is_stmt 1 discriminator 2
	slwi 10,11,2
.LVL3065:
.LBE14924:
.LBE14944:
	.loc 4 5417 0 discriminator 2
	addi 11,11,1
.LVL3066:
.LBB14945:
.LBB14946:
	.loc 2 1532 0 discriminator 2
	lwz 7,8(4)
.LBE14946:
.LBE14945:
	.loc 4 5417 0 discriminator 2
	cmpw 7,8,11
.LBB14948:
.LBB14947:
	.loc 2 1532 0 discriminator 2
	lwzx 0,7,10
.LBE14947:
.LBE14948:
	.loc 4 5418 0 discriminator 2
	stwx 0,3,10
	.loc 4 5417 0 discriminator 2
	bgt+ 7,.L1857
.LVL3067:
.L1869:
	li 27,0
.L1824:
.LBE14922:
.LBE14921:
	.loc 4 5500 0
	slwi 8,8,2
	lwz 11,0(1)
	addi 0,8,45
	.loc 4 5504 0
	lis 28,.LC6@ha
	.loc 4 5500 0
	rlwinm 0,0,0,0,27
	.loc 4 5504 0
	lis 29,.LC1@ha
	.loc 4 5500 0
	neg 0,0
	.loc 4 5504 0
	lfs 12,.LC6@l(28)
	.loc 4 5500 0
	stwux 11,1,0
	.loc 4 5506 0
	addi 6,5,1
	.loc 4 5504 0
	lfs 0,.LC1@l(29)
	mr 8,27
	.loc 4 5500 0
	addi 7,1,23
	.loc 4 5501 0
	stwux 11,1,0
	.loc 4 5503 0
	lis 11,_ZN6idMath11SQRT_1OVER2E@ha
	.loc 4 5500 0
	rlwinm 7,7,0,0,27
.LVL3068:
	.loc 4 5504 0
	lfsx 11,3,27
	.loc 4 5501 0
	addi 30,1,23
	.loc 4 5503 0
	lfs 13,_ZN6idMath11SQRT_1OVER2E@l(11)
	.loc 4 5501 0
	rlwinm 30,30,0,0,27
.LVL3069:
	.loc 4 5504 0
	fmadds 11,11,12,0
	.loc 4 5506 0
	lwz 11,4(9)
	cmpw 7,11,6
	.loc 4 5504 0
	fmul 11,11,13
	frsp 11,11
	stfsx 11,7,27
.LVL3070:
	.loc 4 5505 0
	lfsx 11,3,27
	fmsubs 0,11,12,0
	fmul 0,0,13
	frsp 0,0
	stfsx 0,30,27
	.loc 4 5506 0
	ble- 7,.L1842
	slwi 10,6,2
.L1843:
.LVL3071:
	.loc 4 5507 0 discriminator 2
	lfsx 0,3,10
	.loc 4 5506 0 discriminator 2
	addi 6,6,1
.LVL3072:
	lwz 11,4(9)
	.loc 4 5507 0 discriminator 2
	fmul 0,0,13
	.loc 4 5506 0 discriminator 2
	cmpw 7,11,6
	.loc 4 5507 0 discriminator 2
	frsp 0,0
	stfsx 0,10,30
	stfsx 0,10,7
	.loc 4 5506 0 discriminator 2
	addi 10,10,4
	bgt+ 7,.L1843
.LVL3073:
.L1842:
	.loc 4 5514 0 discriminator 1
	cmpw 7,5,11
	.loc 4 5392 0 discriminator 1
	addi 27,27,-4
	lis 10,.LC4@ha
.LBB14992:
.LBB14993:
.LBB14994:
.LBB14995:
	.loc 5 276 0 discriminator 1
	lis 25,_ZN6idMath5iSqrtE@ha
.LBE14995:
.LBE14994:
.LBE14993:
.LBE14992:
	.loc 4 5392 0 discriminator 1
	add 12,27,7
	lfs 5,.LC4@l(10)
	lfs 12,.LC1@l(29)
	.loc 4 5521 0 discriminator 1
	lis 27,.LC11@ha
.LBB15013:
.LBB15008:
.LBB15002:
.LBB14996:
	.loc 5 276 0 discriminator 1
	la 25,_ZN6idMath5iSqrtE@l(25)
	.loc 5 278 0 discriminator 1
	lis 26,.LC8@ha
	subf 7,7,30
.LVL3074:
.LBE14996:
.LBE15002:
.LBE15008:
.LBE15013:
	.loc 4 5514 0 discriminator 1
	bge- 7,.L1870
.LVL3075:
.L1847:
.LBB15014:
.LBB15015:
	.loc 3 2056 0
	mullw 11,5,11
	lwz 0,12(9)
.LBE15015:
.LBE15014:
	.loc 4 5515 0
	lfsu 6,4(12)
.LVL3076:
	.loc 4 5521 0
	lfd 9,.LC11@l(27)
	.loc 4 5519 0
	fmul 0,12,6
	.loc 4 5517 0
	lfs 11,.LC1@l(29)
.LBB15017:
.LBB15016:
	.loc 3 2056 0
	slwi 11,11,2
	add 11,0,11
.LBE15016:
.LBE15017:
	.loc 4 5516 0
	lfsx 13,11,8
.LVL3077:
	add 11,11,8
	.loc 4 5518 0
	fmul 4,13,13
	.loc 4 5517 0
	fdiv 11,11,13
.LVL3078:
	.loc 4 5519 0
	fmadd 0,0,6,4
.LVL3079:
	.loc 4 5521 0
	fcmpu 7,0,9
	cror 30,28,30
	beq- 7,.L1855
	.loc 4 5525 0
	fdiv 3,12,0
.LVL3080:
	.loc 4 5529 0
	lfsx 7,8,30
	.loc 4 5531 0
	fmul 13,5,7
.LVL3081:
	.loc 4 5526 0
	fmul 10,6,3
.LVL3082:
	.loc 4 5531 0
	fmadd 13,13,7,0
.LVL3083:
	.loc 4 5533 0
	fcmpu 7,13,9
	cror 30,28,30
	beq- 7,.L1855
.LVL3084:
	.loc 4 5539 0
	fdiv 5,5,13
.LVL3085:
.LBB15018:
.LBB15009:
.LBB15003:
.LBB14997:
	.loc 5 275 0
	lfs 2,.LC6@l(28)
	.loc 5 278 0
	lfs 9,.LC8@l(26)
.LBE14997:
.LBE15003:
.LBE15009:
.LBE15018:
	.loc 4 5543 0
	addi 3,5,1
	.loc 4 5537 0
	frsp 8,13
	stfs 8,8(31)
.LVL3086:
.LBB15019:
.LBB15010:
.LBB15004:
.LBB14998:
	.loc 5 275 0
	fmuls 2,8,2
	.loc 5 270 0
	lwz 0,8(31)
.LVL3087:
	.loc 4 5392 0
	fneg 2,2
	.loc 5 276 0
	rlwinm 6,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 10,25,0
	subfic 0,6,380
	rlwinm 0,0,22,0,8
	or 0,0,10
	.loc 5 277 0
	stw 0,12(31)
	lfs 8,12(31)
.LVL3088:
	fmr 12,8
.LVL3089:
.LBE14998:
.LBE15004:
.LBE15010:
.LBE15019:
	.loc 4 5540 0
	fmul 8,7,5
.LVL3090:
.LBB15020:
.LBB15011:
.LBB15005:
.LBB14999:
	.loc 5 278 0
	fmul 13,12,12
.LVL3091:
.LBE14999:
.LBE15005:
.LBE15011:
.LBE15020:
	.loc 4 5541 0
	fmul 5,0,5
.LBB15021:
.LBB15012:
.LBB15006:
.LBB15000:
	.loc 5 278 0
	fmadd 13,2,13,9
	fmul 0,12,13
.LVL3092:
.LBE15000:
.LBE15006:
	.loc 5 303 0
	lfs 12,8(31)
.LBB15007:
.LBB15001:
	.loc 5 279 0
	fmul 13,0,0
	fmadd 9,2,13,9
.LVL3093:
	fmul 9,0,9
.LVL3094:
	.loc 5 280 0
	frsp 9,9
.LVL3095:
.LBE15001:
.LBE15007:
	.loc 5 303 0
	fmuls 9,12,9
.LVL3096:
.LBE15012:
.LBE15021:
	.loc 4 5537 0
	stfs 9,0(11)
	.loc 4 5543 0
	lwz 0,0(9)
	cmpw 7,3,0
	bge- 7,.L1844
	fneg 6,6
.LVL3097:
	mr 10,12
	fneg 7,7
.LVL3098:
	mr 11,3
.LVL3099:
.L1845:
.LBB15022:
.LBB15023:
	.loc 3 2056 0 discriminator 2
	lwz 5,4(9)
.LBE15023:
.LBE15022:
	.loc 4 5545 0 discriminator 2
	lwz 4,12(9)
.LBB15025:
.LBB15024:
	.loc 3 2056 0 discriminator 2
	mullw 5,11,5
.LBE15024:
.LBE15025:
	.loc 4 5547 0 discriminator 2
	lfsu 13,4(10)
	.loc 4 5543 0 discriminator 2
	addi 11,11,1
.LVL3100:
	.loc 4 5545 0 discriminator 2
	slwi 5,5,2
	add 5,4,5
	lfsx 0,5,8
	fmul 0,0,11
.LVL3101:
	.loc 4 5547 0 discriminator 2
	fmadd 13,6,0,13
	frsp 13,13
	.loc 4 5548 0 discriminator 2
	fmr 12,13
	.loc 4 5547 0 discriminator 2
	stfs 13,0(10)
	.loc 4 5550 0 discriminator 2
	lfsx 13,7,10
	.loc 4 5548 0 discriminator 2
	fmadd 0,12,10,0
.LVL3102:
	.loc 4 5550 0 discriminator 2
	fmadd 13,7,0,13
	frsp 13,13
	.loc 4 5551 0 discriminator 2
	fmr 12,13
	.loc 4 5550 0 discriminator 2
	stfsx 13,7,10
.LVL3103:
	.loc 4 5551 0 discriminator 2
	fmadd 0,12,8,0
.LVL3104:
	.loc 4 5553 0 discriminator 2
	fmul 0,0,9
	frsp 0,0
	stfsx 0,5,8
	.loc 4 5543 0 discriminator 2
	lwz 0,0(9)
	cmpw 7,0,11
	bgt+ 7,.L1845
.LVL3105:
.L1844:
	.loc 4 5527 0
	lwz 11,4(9)
	.loc 4 5543 0
	mr 5,3
	.loc 4 5527 0
	fmul 12,3,4
.LVL3106:
	addi 8,8,4
	.loc 4 5514 0
	cmpw 7,5,11
	blt+ 7,.L1847
.LVL3107:
.L1870:
.LBE14912:
	.loc 4 5560 0
	addi 11,31,48
.LBB15029:
	.loc 4 5559 0
	li 3,1
.LBE15029:
	.loc 4 5560 0
	lwz 0,4(11)
	lwz 25,-28(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
.LVL3108:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI305:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI306:
	.cfi_def_cfa_register 1
.LVL3109:
	blr
.LVL3110:
.L1855:
.LCFI307:
	.cfi_restore_state
.LBB15030:
	.loc 4 5534 0
	li 3,0
.LVL3111:
.L1848:
.LBE15030:
	.loc 4 5560 0
	addi 11,31,48
	lwz 0,4(11)
	lwz 25,-28(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI308:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI309:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL3112:
.L1821:
.LCFI310:
	.cfi_restore_state
.LBB15031:
.LBB15026:
	.loc 4 5423 0
	slwi 11,8,2
.LVL3113:
	lwz 10,0(1)
	addi 0,11,45
	.loc 4 5427 0
	lwz 11,0(9)
	.loc 4 5423 0
	rlwinm 0,0,0,0,27
	neg 0,0
	.loc 4 5427 0
	cmpwi 7,11,0
	.loc 4 5423 0
	stwux 10,1,0
	addi 29,1,23
	.loc 4 5424 0
	stwux 10,1,0
	.loc 4 5423 0
	rlwinm 29,29,0,0,27
.LVL3114:
	.loc 4 5427 0
	ble- 7,.L1827
	lis 28,.LC11@ha
	.loc 4 5436 0
	addi 6,29,-4
.LBB14952:
	.loc 4 5392 0
	lfd 11,.LC11@l(28)
	.loc 4 5427 0
	li 7,0
.LVL3115:
.L1829:
.LBE14952:
	.loc 4 5436 0 discriminator 1
	lwz 10,4(9)
.LBB14953:
	.loc 4 5392 0 discriminator 1
	fmr 0,11
.LBE14953:
	.loc 4 5436 0 discriminator 1
	lwz 0,12(9)
.LBB14954:
	.loc 4 5392 0 discriminator 1
	li 11,0
.LBE14954:
	.loc 4 5436 0 discriminator 1
	mullw 8,5,10
	mullw 10,7,10
	.loc 4 5392 0 discriminator 1
	slwi 8,8,2
	add 8,0,8
	addi 8,8,-4
	slwi 10,10,2
	add 10,0,10
	addi 10,10,-4
.LVL3116:
.L1828:
	.loc 4 5430 0 discriminator 2
	lfsu 12,4(8)
	.loc 4 5429 0 discriminator 2
	addi 11,11,1
	.loc 4 5430 0 discriminator 2
	lfsu 13,4(10)
	.loc 4 5429 0 discriminator 2
	cmpw 7,11,7
	.loc 4 5430 0 discriminator 2
	fmuls 13,12,13
	fadd 0,0,13
.LVL3117:
	.loc 4 5429 0 discriminator 2
	ble+ 7,.L1828
	.loc 4 5427 0
	lwz 0,0(9)
	addi 7,7,1
.LVL3118:
	.loc 4 5432 0
	frsp 0,0
.LVL3119:
	.loc 4 5427 0
	cmpw 7,0,7
	.loc 4 5432 0
	stfsu 0,4(6)
	.loc 4 5427 0
	bgt+ 7,.L1829
	lwz 8,4(9)
.LVL3120:
.L1827:
	.loc 4 5436 0 discriminator 1
	ble- 6,.L1831
.LVL3121:
.LBB14955:
.LBB14956:
	.loc 2 1532 0
	lwz 11,8(4)
	mullw 8,5,8
.LBE14956:
.LBE14955:
	.loc 4 5437 0
	lfs 13,0(29)
	mr 28,29
	lfs 0,0(11)
	li 7,0
	lwz 0,12(9)
	li 6,0
	fadds 0,13,0
.LVL3122:
	li 30,0
.LVL3123:
.L1868:
	.loc 4 5441 0
	slwi 30,30,2
	.loc 4 5436 0
	addi 7,7,1
.LVL3124:
	.loc 4 5441 0
	add 30,0,30
	.loc 4 5436 0
	cmpw 7,7,5
	.loc 4 5441 0
	lfsx 13,30,6
	slwi 8,8,2
	add 8,0,8
	fdiv 0,0,13
.LVL3125:
	frsp 0,0
	stfsx 0,8,6
	.loc 4 5436 0
	beq- 7,.L1871
.LVL3126:
.L1835:
.LBB14958:
.LBB14957:
	.loc 2 1532 0
	lwz 11,8(4)
.LBE14957:
.LBE14958:
	.loc 4 5438 0
	cmpwi 7,7,0
	.loc 4 5392 0
	slwi 6,7,2
.LVL3127:
	.loc 4 5437 0
	lfsu 13,4(28)
	lfsx 0,11,6
	.loc 4 5438 0
	lwz 30,4(9)
	.loc 4 5437 0
	fadds 0,13,0
.LVL3128:
	.loc 4 5438 0
	lwz 0,12(9)
	mullw 8,5,30
	ble- 7,.L1872
	mullw 30,7,30
	.loc 4 5392 0
	slwi 10,8,2
	add 10,0,10
.LBB14959:
	.loc 4 5438 0
	mtctr 7
.LBE14959:
	.loc 4 5392 0
	addi 10,10,-4
	slwi 11,30,2
	add 11,0,11
	addi 11,11,-4
.LVL3129:
.L1834:
	.loc 4 5439 0 discriminator 2
	lfsu 12,4(10)
	lfsu 13,4(11)
	fmuls 13,12,13
	fsub 0,0,13
.LVL3130:
	.loc 4 5438 0 discriminator 2
	bdnz .L1834
.LVL3131:
	.loc 4 5441 0
	slwi 30,30,2
	.loc 4 5436 0
	addi 7,7,1
.LVL3132:
	.loc 4 5441 0
	add 30,0,30
	.loc 4 5436 0
	cmpw 7,7,5
	.loc 4 5441 0
	lfsx 13,30,6
	slwi 8,8,2
	add 8,0,8
	fdiv 0,0,13
.LVL3133:
	frsp 0,0
	stfsx 0,8,6
	.loc 4 5436 0
	bne+ 7,.L1835
.LVL3134:
.L1871:
	lwz 8,4(9)
.LVL3135:
.L1831:
	.loc 4 5445 0
	addi 0,8,-1
	cmpw 7,0,5
	beq- 7,.L1836
.LVL3136:
	.loc 4 5459 0 discriminator 1
	cmpw 7,5,8
	slwi 27,5,2
	bge- 7,.L1824
	lis 28,.LC11@ha
	.loc 4 5459 0 is_stmt 0
	mr 7,27
	.loc 4 5392 0 is_stmt 1
	mr 6,5
	la 28,.LC11@l(28)
.LVL3137:
	.loc 4 5461 0
	blt- 6,.L1853
.LVL3138:
.L1873:
	mullw 10,8,6
	lwz 0,12(9)
	.loc 4 5392 0
	lfd 0,0(28)
	li 11,0
	.loc 4 5461 0
	mullw 30,5,8
	.loc 4 5392 0
	slwi 10,10,2
	add 10,0,10
	addi 10,10,-4
	slwi 8,30,2
	add 8,0,8
	addi 8,8,-4
.LVL3139:
.L1840:
	.loc 4 5462 0 discriminator 2
	lfsu 12,4(8)
	.loc 4 5461 0 discriminator 2
	addi 11,11,1
	.loc 4 5462 0 discriminator 2
	lfsu 13,4(10)
	.loc 4 5461 0 discriminator 2
	cmpw 7,5,11
	.loc 4 5462 0 discriminator 2
	fmuls 13,12,13
	fadd 0,0,13
.LVL3140:
	.loc 4 5461 0 discriminator 2
	bge+ 7,.L1840
.LVL3141:
	.loc 4 5464 0
	lfsx 13,7,29
	.loc 4 5459 0
	addi 6,6,1
.LVL3142:
.LBB14960:
.LBB14961:
	.loc 2 1532 0
	lwz 11,8(4)
.LVL3143:
.LBE14961:
.LBE14960:
	.loc 4 5464 0
	fsub 0,0,13
.LVL3144:
	.loc 4 5459 0
	lwz 8,4(9)
	.loc 4 5464 0
	lfsx 13,11,7
	.loc 4 5459 0
	cmpw 7,8,6
	.loc 4 5464 0
	fsub 0,13,0
	frsp 0,0
	stfsx 0,3,7
	.loc 4 5459 0
	addi 7,7,4
	ble- 7,.L1824
.LVL3145:
.L1874:
	.loc 4 5461 0
	bge+ 6,.L1873
.L1853:
	.loc 4 5464 0
	lfsx 13,7,29
	.loc 4 5459 0
	addi 6,6,1
.LVL3146:
	.loc 4 5461 0
	lfd 0,0(28)
.LVL3147:
.LBB14963:
.LBB14962:
	.loc 2 1532 0
	lwz 11,8(4)
.LBE14962:
.LBE14963:
	.loc 4 5464 0
	fsub 0,0,13
	.loc 4 5459 0
	lwz 8,4(9)
	.loc 4 5464 0
	lfsx 13,11,7
	.loc 4 5459 0
	cmpw 7,8,6
	.loc 4 5464 0
	fsub 0,13,0
	frsp 0,0
	stfsx 0,3,7
	.loc 4 5459 0
	addi 7,7,4
	bgt+ 7,.L1874
	b .L1824
.LVL3148:
.L1822:
.LBB14964:
.LBB14949:
.LBB14941:
.LBB14925:
.LBB14926:
	.loc 2 1532 0
	lwz 11,8(4)
.LVL3149:
.LBE14926:
.LBE14925:
	.loc 4 5412 0
	li 3,0
.LVL3150:
.LBE14941:
.LBE14949:
	.loc 4 8102 0
	lwz 9,12(9)
.LVL3151:
.LBB14950:
.LBB14942:
	.loc 4 5407 0
	lfs 13,0(11)
	.loc 4 5411 0
	lis 11,.LC11@ha
	.loc 4 5408 0
	lfs 0,0(9)
.LVL3152:
	.loc 4 5410 0
	fmadd 0,0,0,13
.LVL3153:
	.loc 4 5411 0
	lfd 13,.LC11@l(11)
	fcmpu 7,0,13
	cror 30,28,30
	beq- 7,.L1848
.LVL3154:
	.loc 4 5414 0
	frsp 0,0
.LVL3155:
.LBB14927:
.LBB14928:
.LBB14929:
.LBB14930:
	.loc 5 276 0
	lis 10,_ZN6idMath5iSqrtE@ha
	la 10,_ZN6idMath5iSqrtE@l(10)
.LBE14930:
.LBE14929:
.LBE14928:
.LBE14927:
	.loc 4 5415 0
	li 3,1
	.loc 4 5414 0
	stfs 0,8(31)
.LVL3156:
.LBB14939:
.LBB14937:
.LBB14934:
.LBB14931:
	.loc 5 270 0
	lwz 0,8(31)
.LVL3157:
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,10,0
	subfic 11,11,380
	rlwinm 11,11,22,0,8
	.loc 5 275 0
	lis 10,.LC6@ha
	.loc 5 276 0
	or 0,11,0
	.loc 5 275 0
	lfs 12,.LC6@l(10)
	.loc 5 277 0
	stw 0,12(31)
	.loc 5 278 0
	lis 11,.LC8@ha
	.loc 5 275 0
	fmuls 12,0,12
.LVL3158:
	.loc 5 278 0
	lfs 13,.LC8@l(11)
	.loc 5 277 0
	lfs 8,12(31)
.LBE14931:
.LBE14934:
.LBE14937:
.LBE14939:
.LBE14942:
.LBE14950:
.LBE14964:
.LBE15026:
.LBE15031:
	.loc 4 5560 0
	addi 11,31,48
.LBB15032:
.LBB15027:
.LBB14965:
.LBB14951:
.LBB14943:
.LBB14940:
.LBB14938:
.LBB14935:
.LBB14932:
	.loc 5 277 0
	fmr 0,8
.LVL3159:
	.loc 4 5392 0
	fneg 12,12
.LVL3160:
	.loc 5 278 0
	fmul 11,0,0
	fmadd 11,12,11,13
	fmul 0,0,11
.LVL3161:
	.loc 5 279 0
	fmul 11,0,0
	fmadd 13,12,11,13
.LVL3162:
.LBE14932:
.LBE14935:
	.loc 5 303 0
	lfs 12,8(31)
.LBB14936:
.LBB14933:
	.loc 5 279 0
	fmul 0,0,13
.LVL3163:
	.loc 5 280 0
	frsp 0,0
.LVL3164:
.LBE14933:
.LBE14936:
	.loc 5 303 0
	fmuls 0,12,0
.LBE14938:
.LBE14940:
	.loc 4 5414 0
	stfs 0,0(9)
.LBE14943:
.LBE14951:
.LBE14965:
.LBE15027:
.LBE15032:
	.loc 4 5560 0
	lwz 0,4(11)
	lwz 25,-28(11)
	mtlr 0
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI311:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI312:
	.cfi_def_cfa_register 1
.LVL3165:
	blr
.LVL3166:
.L1836:
.LCFI313:
	.cfi_restore_state
.LBB15033:
.LBB15028:
.LBB14966:
.LBB14967:
	.loc 2 1532 0
	lwz 11,8(4)
.LBE14967:
.LBE14966:
	.loc 4 5447 0
	slwi 10,5,2
.LVL3167:
	lfsx 13,29,10
	lfsx 0,11,10
	fadds 13,13,0
.LVL3168:
	.loc 4 5448 0
	ble- 6,.L1838
	mullw 0,8,5
	cmpwi 7,5,0
	.loc 4 5392 0
	lwz 11,12(9)
	.loc 4 5448 0
	mtctr 5
	.loc 4 5392 0
	slwi 0,0,2
	add 11,11,0
	addi 11,11,-4
	ble- 7,.L1875
.LVL3169:
.L1839:
	.loc 4 5449 0 discriminator 2
	lfsu 0,4(11)
	fmuls 0,0,0
	fsub 13,13,0
.LVL3170:
	.loc 4 5448 0 discriminator 2
	bdnz .L1839
.L1838:
	.loc 4 5451 0
	lis 11,.LC11@ha
	.loc 4 5452 0
	li 3,0
.LVL3171:
	.loc 4 5451 0
	lfd 0,.LC11@l(11)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L1848
.LVL3172:
	.loc 4 5454 0
	frsp 13,13
.LVL3173:
.LBB14968:
.LBB14969:
.LBB14970:
.LBB14971:
	.loc 5 276 0
	lis 7,_ZN6idMath5iSqrtE@ha
	la 7,_ZN6idMath5iSqrtE@l(7)
.LBE14971:
.LBE14970:
.LBE14969:
.LBE14968:
	.loc 4 5455 0
	li 3,1
	.loc 4 5454 0
	stfs 13,8(31)
.LVL3174:
.LBB14986:
.LBB14982:
.LBB14977:
.LBB14972:
	.loc 5 270 0
	lwz 0,8(31)
.LVL3175:
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,7,0
	subfic 11,11,380
	rlwinm 11,11,22,0,8
	.loc 5 275 0
	lis 7,.LC6@ha
	.loc 5 276 0
	or 0,11,0
	.loc 5 275 0
	lfs 12,.LC6@l(7)
	.loc 5 277 0
	stw 0,12(31)
	.loc 5 278 0
	lis 11,.LC8@ha
	.loc 5 275 0
	fmuls 12,13,12
.LVL3176:
	.loc 5 278 0
	lfs 13,.LC8@l(11)
.LVL3177:
	.loc 5 277 0
	lfs 8,12(31)
.LBE14972:
.LBE14977:
.LBE14982:
.LBE14986:
.LBB14987:
.LBB14988:
	.loc 3 2056 0
	mullw 0,5,8
.LBE14988:
.LBE14987:
	.loc 4 5454 0
	lwz 9,12(9)
.LVL3178:
.LBB14989:
.LBB14983:
.LBB14978:
.LBB14973:
	.loc 5 277 0
	fmr 0,8
.LVL3179:
	.loc 4 5392 0
	fneg 12,12
.LVL3180:
.LBE14973:
.LBE14978:
.LBE14983:
.LBE14989:
	.loc 4 5454 0
	slwi 0,0,2
.LBB14990:
.LBB14984:
.LBB14979:
.LBB14974:
	.loc 5 278 0
	fmul 11,0,0
.LBE14974:
.LBE14979:
.LBE14984:
.LBE14990:
	.loc 4 5454 0
	add 9,9,0
.LBB14991:
.LBB14985:
.LBB14980:
.LBB14975:
	.loc 5 278 0
	fmadd 11,12,11,13
	fmul 0,0,11
.LVL3181:
	.loc 5 279 0
	fmul 11,0,0
	fmadd 13,12,11,13
.LVL3182:
.LBE14975:
.LBE14980:
	.loc 5 303 0
	lfs 12,8(31)
.LBB14981:
.LBB14976:
	.loc 5 279 0
	fmul 0,0,13
.LVL3183:
	.loc 5 280 0
	frsp 0,0
.LVL3184:
.LBE14976:
.LBE14981:
	.loc 5 303 0
	fmuls 0,12,0
.LBE14985:
.LBE14991:
	.loc 4 5454 0
	stfsx 0,9,10
	b .L1848
.LVL3185:
.L1872:
	mullw 30,7,30
	b .L1868
.LVL3186:
.L1875:
	li 0,1
	mtctr 0
	b .L1839
.LBE15028:
.LBE15033:
	.cfi_endproc
.LFE2629:
	.size	_ZN6idMatX24Cholesky_UpdateRowColumnERK6idVecXi, .-_ZN6idMatX24Cholesky_UpdateRowColumnERK6idVecXi
	.align 2
	.globl _ZN6idMatX24Cholesky_UpdateIncrementERK6idVecX
	.type	_ZN6idMatX24Cholesky_UpdateIncrementERK6idVecX, @function
_ZN6idMatX24Cholesky_UpdateIncrementERK6idVecX:
.LFB2630:
	.loc 4 5574 0
	.cfi_startproc
.LVL3187:
	mflr 0
	stwu 1,-32(1)
.LCFI314:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
.LBB15052:
	.loc 4 5582 0
	li 6,0
.LBE15052:
	.loc 4 5574 0
	stw 29,20(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,36(1)
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,28(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI315:
	.cfi_def_cfa_register 31
.LBB15095:
	.loc 4 5582 0
	lwz 9,0(3)
	lwz 5,4(3)
	addi 4,9,1
.LVL3188:
	addi 5,5,1
	bl _ZN6idMatX10ChangeSizeEiib
.LVL3189:
	.loc 4 5584 0
	lwz 11,0(30)
	lwz 10,0(1)
	slwi 9,11,2
	.loc 4 5587 0
	addic. 0,11,-1
	.loc 4 5584 0
	addi 9,9,45
	rlwinm 9,9,0,0,27
	neg 9,9
	stwux 10,1,9
	addi 10,1,23
	rlwinm 10,10,0,0,27
.LVL3190:
	.loc 4 5587 0
	ble- 0,.L1892
.LVL3191:
.LBB15053:
.LBB15054:
	.loc 2 1532 0
	lwz 9,8(29)
.LBE15054:
.LBE15053:
	li 6,0
	.loc 4 5588 0
	lwz 5,12(30)
	.loc 4 5587 0
	li 7,0
	.loc 4 5588 0
	lfs 0,0(9)
.LVL3192:
	li 0,0
.LVL3193:
.L1891:
	.loc 4 5592 0
	slwi 0,0,2
	.loc 4 5587 0
	lwz 11,0(30)
	.loc 4 5592 0
	add 5,5,0
	.loc 4 5587 0
	addi 7,7,1
.LVL3194:
	.loc 4 5592 0
	lfsx 13,5,6
	.loc 4 5587 0
	addi 0,11,-1
	cmpw 7,0,7
	.loc 4 5592 0
	fdiv 0,0,13
.LVL3195:
	frsp 0,0
	stfsx 0,10,6
	.loc 4 5587 0
	ble- 7,.L1893
.LVL3196:
.L1882:
	.loc 4 5589 0
	cmpwi 7,7,0
.LBB15056:
.LBB15055:
	.loc 2 1532 0
	lwz 9,8(29)
.LBE15055:
.LBE15056:
	.loc 4 5589 0
	lwz 0,4(30)
	.loc 4 5574 0
	slwi 6,7,2
	.loc 4 5588 0
	lfsx 0,9,6
.LVL3197:
	.loc 4 5589 0
	lwz 5,12(30)
	mullw 0,7,0
	ble- 7,.L1891
.LVL3198:
	slwi 8,0,2
.LBE15095:
	mtctr 7
.LBB15096:
	add 8,5,8
	.loc 4 5574 0
	addi 9,8,-4
.LVL3199:
.L1881:
	.loc 4 5589 0 discriminator 2
	addi 9,9,4
	.loc 4 5574 0 discriminator 2
	subf 11,8,9
	.loc 4 5590 0 discriminator 2
	lfs 12,0(9)
	lfsx 13,11,10
	fmuls 13,12,13
	fsub 0,0,13
.LVL3200:
	.loc 4 5589 0 discriminator 2
	bdnz .L1881
.LVL3201:
	.loc 4 5592 0
	slwi 0,0,2
	.loc 4 5587 0
	lwz 11,0(30)
	.loc 4 5592 0
	add 5,5,0
	.loc 4 5587 0
	addi 7,7,1
.LVL3202:
	.loc 4 5592 0
	lfsx 13,5,6
	.loc 4 5587 0
	addi 0,11,-1
	cmpw 7,0,7
	.loc 4 5592 0
	fdiv 0,0,13
.LVL3203:
	frsp 0,0
	stfsx 0,10,6
	.loc 4 5587 0
	bgt+ 7,.L1882
.LVL3204:
.L1893:
	.loc 4 5597 0
	cmpwi 7,0,0
.LBB15057:
.LBB15058:
	.loc 2 1532 0
	lwz 8,8(29)
	slwi 9,0,2
.LBE15058:
.LBE15057:
	.loc 4 5596 0
	lfsx 13,8,9
.LVL3205:
	.loc 4 5597 0
	ble- 7,.L1883
	li 9,0
	li 8,0
.LVL3206:
.L1884:
.LBB15060:
.LBB15061:
	.loc 3 2056 0 discriminator 2
	lwz 7,4(30)
.LBE15061:
.LBE15060:
	.loc 4 5597 0 discriminator 2
	addi 8,8,1
	.loc 4 5598 0 discriminator 2
	lwz 11,12(30)
.LBB15063:
.LBB15062:
	.loc 3 2056 0 discriminator 2
	mullw 0,0,7
.LVL3207:
.LBE15062:
.LBE15063:
	.loc 4 5598 0 discriminator 2
	lwzx 7,9,10
	slwi 0,0,2
	add 11,11,0
	stwx 7,11,9
	.loc 4 5597 0 discriminator 2
	lwz 11,0(30)
	.loc 4 5599 0 discriminator 2
	lfsx 0,9,10
	.loc 4 5597 0 discriminator 2
	addi 9,9,4
	addi 0,11,-1
	cmpw 7,0,8
	.loc 4 5599 0 discriminator 2
	fmuls 0,0,0
	fsub 13,13,0
.LVL3208:
	.loc 4 5597 0 discriminator 2
	bgt+ 7,.L1884
.LVL3209:
.L1883:
	.loc 4 5602 0
	lis 9,.LC11@ha
	.loc 4 5603 0
	li 3,0
	.loc 4 5602 0
	lfd 0,.LC11@l(9)
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L1885
.LVL3210:
	.loc 4 5607 0
	frsp 13,13
.LVL3211:
.LBB15064:
.LBB15065:
.LBB15066:
.LBB15067:
	.loc 5 276 0
	lis 8,_ZN6idMath5iSqrtE@ha
	la 8,_ZN6idMath5iSqrtE@l(8)
.LBE15067:
.LBE15066:
.LBE15065:
.LBE15064:
	.loc 4 5609 0
	li 3,1
	.loc 4 5607 0
	stfs 13,8(31)
.LVL3212:
.LBB15085:
.LBB15080:
.LBB15074:
.LBB15068:
	.loc 5 270 0
	lwz 9,8(31)
.LVL3213:
	.loc 5 276 0
	rlwinm 10,9,9,24,31
	rlwinm 9,9,19,21,29
	lwzx 9,8,9
	subfic 10,10,380
	rlwinm 10,10,22,0,8
	.loc 5 275 0
	lis 8,.LC6@ha
	.loc 5 276 0
	or 9,10,9
	.loc 5 275 0
	lfs 12,.LC6@l(8)
	.loc 5 277 0
	stw 9,12(31)
	.loc 5 278 0
	lis 9,.LC8@ha
	.loc 5 275 0
	fmuls 12,13,12
.LVL3214:
	.loc 5 277 0
	lfs 13,12(31)
.LVL3215:
.LBE15068:
.LBE15074:
.LBE15080:
.LBE15085:
	.loc 4 5607 0
	lwz 10,12(30)
.LBB15086:
.LBB15081:
.LBB15075:
.LBB15069:
	.loc 5 277 0
	fmr 0,13
.LVL3216:
	.loc 5 278 0
	lfs 13,.LC8@l(9)
.LVL3217:
	.loc 4 5574 0
	fneg 12,12
.LVL3218:
.LBE15069:
.LBE15075:
.LBE15081:
.LBE15086:
.LBB15087:
.LBB15088:
	.loc 3 2056 0
	lwz 9,4(30)
.LBE15088:
.LBE15087:
.LBB15090:
.LBB15082:
.LBB15076:
.LBB15070:
	.loc 5 278 0
	fmul 11,0,0
.LBE15070:
.LBE15076:
.LBE15082:
.LBE15090:
.LBB15091:
.LBB15089:
	.loc 3 2056 0
	mullw 0,0,9
.LVL3219:
.LBE15089:
.LBE15091:
	.loc 4 5607 0
	addi 9,11,-1
	slwi 9,9,2
.LBB15092:
.LBB15083:
.LBB15077:
.LBB15071:
	.loc 5 278 0
	fmadd 11,12,11,13
.LBE15071:
.LBE15077:
.LBE15083:
.LBE15092:
	.loc 4 5607 0
	slwi 0,0,2
	add 11,10,0
.LBB15093:
.LBB15084:
.LBB15078:
.LBB15072:
	.loc 5 278 0
	fmul 0,0,11
.LVL3220:
	.loc 5 279 0
	fmul 11,0,0
	fmadd 13,12,11,13
.LVL3221:
	fmul 0,0,13
.LVL3222:
.LBE15072:
.LBE15078:
	.loc 5 303 0
	lfs 13,8(31)
.LBB15079:
.LBB15073:
	.loc 5 280 0
	frsp 0,0
.LVL3223:
.LBE15073:
.LBE15079:
	.loc 5 303 0
	fmuls 0,13,0
.LBE15084:
.LBE15093:
	.loc 4 5607 0
	stfsx 0,11,9
.LVL3224:
.L1885:
.LBE15096:
	.loc 4 5610 0
	addi 11,31,32
	lwz 0,4(11)
	lwz 29,-12(11)
.LVL3225:
	mtlr 0
	lwz 30,-8(11)
.LVL3226:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI316:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI317:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
.LVL3227:
	blr
.LVL3228:
.L1892:
.LCFI318:
	.cfi_restore_state
.LBB15097:
.LBB15094:
.LBB15059:
	.loc 2 1532 0
	lwz 10,8(29)
.LVL3229:
	slwi 9,0,2
.LBE15059:
.LBE15094:
	.loc 4 5596 0
	lfsx 13,10,9
.LVL3230:
	b .L1883
.LBE15097:
	.cfi_endproc
.LFE2630:
	.size	_ZN6idMatX24Cholesky_UpdateIncrementERK6idVecX, .-_ZN6idMatX24Cholesky_UpdateIncrementERK6idVecX
	.align 2
	.globl _ZN6idMatX24Cholesky_UpdateDecrementERK6idVecXi
	.type	_ZN6idMatX24Cholesky_UpdateDecrementERK6idVecXi, @function
_ZN6idMatX24Cholesky_UpdateDecrementERK6idVecXi:
.LFB2631:
	.loc 4 5620 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2631
.LVL3231:
	mflr 0
	stwu 1,-64(1)
.LCFI319:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	mfcr 12
	stw 24,32(1)
	mr 24,5
	.cfi_offset 24, -32
	.cfi_register 70, 12
	stw 0,68(1)
	stw 25,36(1)
	mr 25,3
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	stw 31,60(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI320:
	.cfi_def_cfa_register 31
.LVL3232:
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	stw 12,28(1)
.LBB15125:
	.loc 4 5627 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
.LBB15126:
.LBB15127:
	.loc 2 1762 0
	stw 9,8(31)
.LBE15127:
.LBE15126:
	.loc 4 5627 0
	rlwinm 0,0,0,0,29
	slwi 11,0,2
.LBB15133:
.LBB15128:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE15128:
.LBE15133:
	.loc 4 5627 0
	subfic 11,11,-32
.LBB15134:
.LBB15129:
	.loc 2 1763 0
	li 0,-1
.LBE15129:
.LBE15134:
	.loc 4 5627 0
	stwux 10,1,11
.LBB15135:
.LBB15130:
	.loc 2 1763 0
	stw 0,12(31)
.LBE15130:
.LBE15135:
	.loc 4 5627 0
	addi 11,1,23
.LVL3233:
	rlwinm 11,11,0,0,27
.LVL3234:
.LBB15136:
.LBB15131:
	.loc 2 1761 0
	stw 11,16(31)
	.loc 2 1764 0
	bge- 7,.L1897
	.cfi_offset 70, -36
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	slwi 10,9,2
	li 8,0
	b .L1898
.LVL3235:
.L1925:
	lwz 11,16(31)
.L1898:
	addi 9,9,1
.LVL3236:
	stwx 8,11,10
	.loc 4 5620 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1925
.L1897:
.LBE15131:
.LBE15136:
.LBB15137:
.LBB15138:
	.loc 2 1544 0
	lwz 30,0(4)
.LBB15139:
.LBB15140:
	.loc 2 1748 0
	lis 27,_ZN6idVecX9tempIndexE@ha
	lwz 29,_ZN6idVecX9tempIndexE@l(27)
.LBE15140:
.LBE15139:
.LBE15138:
.LBE15137:
.LBB15149:
.LBB15132:
	.loc 4 8102 0
	addi 8,4,8
.LVL3237:
.LBE15132:
.LBE15149:
.LBB15150:
.LBB15147:
.LBB15144:
.LBB15141:
	.loc 2 1746 0
	addi 28,30,3
	rlwinm 28,28,0,0,29
	.loc 2 1748 0
	add 0,28,29
	slwi 29,29,2
	cmpwi 7,0,1024
	ble- 7,.L1899
.LVL3238:
	.loc 2 1746 0
	mr 0,28
	.loc 2 1748 0
	li 29,0
.LVL3239:
.L1899:
	.loc 2 1753 0
	cmpw 4,30,28
	.loc 2 1751 0
	lis 26,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(26)
.LVL3240:
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(27)
.LVL3241:
	.loc 2 1751 0
	add 29,9,29
	.loc 2 1753 0
	bge- 4,.L1900
	.loc 4 5620 0
	addi 11,30,-1
	mr 9,30
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 5620 0
	add 11,29,11
.LVL3242:
.L1901:
	.loc 2 1753 0
	addi 9,9,1
.LVL3243:
	stwu 10,4(11)
	.loc 4 5620 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1901
.LVL3244:
.L1900:
.LBE15141:
.LBE15144:
	.loc 2 1545 0
	lwz 0,0(4)
	cmpwi 7,0,0
	ble- 7,.L1902
	.loc 4 5620 0
	addi 11,29,-4
.LBB15145:
.LBB15142:
	li 9,0
.LVL3245:
.L1903:
.LBE15142:
.LBE15145:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL3246:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(4)
	cmpw 7,9,0
	blt+ 7,.L1903
.LVL3247:
.L1902:
.LBE15147:
.LBE15150:
.LBB15151:
.LBB15152:
.LBB15153:
.LBB15154:
	.loc 2 1709 0
	lwz 0,12(31)
	cmpw 7,28,0
	ble- 7,.L1924
	cmpwi 7,0,-1
	beq- 7,.L1924
	.loc 2 1710 0
	lwz 3,16(31)
.LVL3248:
	cmpwi 7,3,0
	beq- 7,.L1907
.LEHB83:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL3249:
.L1907:
	.loc 2 1713 0
	slwi 3,28,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,16(31)
	.loc 2 1714 0
	stw 28,12(31)
	b .L1905
.LVL3250:
.L1924:
	.loc 2 1709 0
	lwz 4,16(31)
.LVL3251:
.L1905:
	.loc 2 1716 0
	stw 30,8(31)
.LVL3252:
	.loc 2 1717 0
	bge- 4,.L1908
	slwi 11,30,2
.LBE15154:
.LBE15153:
.LBE15152:
.LBE15151:
.LBB15159:
.LBB15148:
.LBB15146:
.LBB15143:
	.loc 4 5620 0
	mr 9,30
.LBE15143:
.LBE15146:
.LBE15148:
.LBE15159:
.LBB15160:
.LBB15157:
.LBB15156:
.LBB15155:
	.loc 2 1717 0
	li 10,0
.LVL3253:
.L1910:
	addi 9,9,1
.LVL3254:
	stwx 10,4,11
	.loc 4 5620 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,9,0
	blt+ 7,.L1910
.LVL3255:
.L1908:
.LBE15155:
.LBE15156:
	.loc 2 1554 0
	lis 9,SIMDProcessor@ha
	mr 5,29
	lwz 3,SIMDProcessor@l(9)
	mr 6,30
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE83:
.LBE15157:
.LBE15160:
.LBB15161:
.LBB15162:
.LBB15163:
	.loc 2 1525 0
	cmpwi 7,29,0
.LBE15163:
.LBE15162:
.LBE15161:
.LBB15168:
.LBB15158:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(27)
.LBE15158:
.LBE15168:
.LBB15169:
.LBB15166:
.LBB15164:
	.loc 2 1525 0
	beq- 7,.L1911
	lwz 9,_ZN6idVecX7tempPtrE@l(26)
	cmplw 7,29,9
	bge- 7,.L1926
	.loc 2 1526 0
	mr 3,29
.LEHB84:
	bl _Z10Mem_Free16Pv
.LEHE84:
.L1911:
.LVL3256:
.LBE15164:
.LBE15166:
.LBE15169:
.LBB15170:
.LBB15171:
	.loc 2 1537 0
	lwz 9,16(31)
	slwi 0,24,2
.LBE15171:
.LBE15170:
	.loc 4 5631 0
	lis 11,.LC1@ha
	.loc 4 5638 0
	mr 3,25
	.loc 4 5631 0
	lfsx 13,9,0
	.loc 4 5638 0
	addi 4,31,8
	.loc 4 5631 0
	lfs 0,.LC1@l(11)
	.loc 4 5638 0
	mr 5,24
	.loc 4 5641 0
	li 30,0
.LVL3257:
	.loc 4 5631 0
	fadds 0,13,0
	stfsx 0,9,0
	.loc 4 5638 0
	bl _ZN6idMatX24Cholesky_UpdateRowColumnERK6idVecXi
.LVL3258:
	.loc 4 5639 0
	cmpwi 7,3,0
	beq+ 7,.L1913
	.loc 4 5645 0
	mr 3,25
.LVL3259:
	mr 4,24
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 5647 0
	li 30,1
.L1913:
	lwz 3,16(31)
	lwz 0,12(31)
.LBB15172:
.LBB15173:
.LBB15174:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1914
	lwz 9,_ZN6idVecX7tempPtrE@l(26)
	cmplw 7,3,9
	bge- 7,.L1927
	cmpwi 7,0,-1
	beq- 7,.L1914
.L1928:
.LEHB85:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE85:
.L1914:
.LBE15174:
.LBE15173:
.LBE15172:
.LBE15125:
	.loc 4 5648 0
	addi 11,31,64
	mr 3,30
	lwz 0,4(11)
	lwz 12,-36(11)
	mtlr 0
	lwz 24,-32(11)
.LVL3260:
	lwz 25,-28(11)
.LVL3261:
	mtcrf 8,12
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
.LVL3262:
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI321:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI322:
	.cfi_def_cfa_register 1
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
.LVL3263:
.L1927:
.LCFI323:
	.cfi_restore_state
.LBB15179:
.LBB15177:
.LBB15176:
.LBB15175:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1914
	cmpwi 7,0,-1
	bne+ 7,.L1928
	b .L1914
.LVL3264:
.L1926:
.LBE15175:
.LBE15176:
.LBE15177:
.LBB15178:
.LBB15167:
.LBB15165:
	addi 9,9,4096
	cmplw 7,29,9
	blt- 7,.L1911
	.loc 2 1526 0
	mr 3,29
.LEHB86:
	bl _Z10Mem_Free16Pv
.LEHE86:
	b .L1911
.L1920:
	mr 30,3
.LVL3265:
.L1917:
.LBE15165:
.LBE15167:
.LBE15178:
	.loc 4 5647 0
	lwz 3,12(31)
	lwz 4,16(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB87:
	bl _Unwind_Resume
.LEHE87:
.LVL3266:
.L1921:
	mr 30,3
.LVL3267:
	.loc 4 5630 0
	mr 4,29
	mr 3,28
	bl _ZN6idVecXD2Ev.isra.6
	b .L1917
.LBE15179:
	.cfi_endproc
.LFE2631:
	.section	.gcc_except_table
.LLSDA2631:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2631-.LLSDACSB2631
.LLSDACSB2631:
	.uleb128 .LEHB83-.LFB2631
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1921-.LFB2631
	.uleb128 0
	.uleb128 .LEHB84-.LFB2631
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1920-.LFB2631
	.uleb128 0
	.uleb128 .LEHB85-.LFB2631
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB2631
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1920-.LFB2631
	.uleb128 0
	.uleb128 .LEHB87-.LFB2631
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
.LLSDACSE2631:
	.section	".text"
	.size	_ZN6idMatX24Cholesky_UpdateDecrementERK6idVecXi, .-_ZN6idMatX24Cholesky_UpdateDecrementERK6idVecXi
	.align 2
	.globl _ZNK6idMatX14Cholesky_SolveER6idVecXRKS0_
	.type	_ZNK6idMatX14Cholesky_SolveER6idVecXRKS0_, @function
_ZNK6idMatX14Cholesky_SolveER6idVecXRKS0_:
.LFB2632:
	.loc 4 5657 0
	.cfi_startproc
.LVL3268:
.LBB15180:
	.loc 4 5665 0
	lwz 0,0(3)
.LBE15180:
	.loc 4 5657 0
	stwu 1,-16(1)
.LCFI324:
	.cfi_def_cfa_offset 16
.LBB15189:
	.loc 4 5665 0
	cmpwi 7,0,0
.LBE15189:
	.loc 4 5657 0
	stw 31,12(1)
.LBB15190:
	.loc 4 5665 0
	ble- 7,.L1931
	.cfi_offset 31, -4
.LVL3269:
.LBB15181:
.LBB15182:
	.loc 2 1532 0
	lwz 9,8(5)
.LBE15182:
.LBE15181:
	li 7,0
	.loc 4 5666 0
	lwz 10,8(4)
	.loc 4 5665 0
	li 8,0
	.loc 4 5666 0
	lfs 0,0(9)
.LVL3270:
	li 6,0
	lwz 12,12(3)
.LVL3271:
.L1945:
	.loc 4 5670 0
	slwi 6,6,2
	.loc 4 5665 0
	addi 8,8,1
.LVL3272:
	.loc 4 5670 0
	add 12,12,6
	lfsx 13,12,7
	fdiv 0,0,13
.LVL3273:
	frsp 0,0
	stfsx 0,10,7
	.loc 4 5665 0
	lwz 0,0(3)
	cmpw 7,0,8
	ble- 7,.L1946
.LVL3274:
.L1935:
	.loc 4 5667 0
	cmpwi 7,8,0
.LBB15184:
.LBB15183:
	.loc 2 1532 0
	lwz 9,8(5)
.LBE15183:
.LBE15184:
	.loc 4 5657 0
	slwi 7,8,2
	.loc 4 5667 0
	lwz 6,4(3)
	.loc 4 5666 0
	lfsx 0,9,7
.LVL3275:
	.loc 4 5667 0
	lwz 12,12(3)
	ble- 7,.L1947
	mullw 6,8,6
	lwz 10,8(4)
.LBE15190:
	mtctr 8
	li 9,0
.LBB15191:
	.loc 4 5657 0
	slwi 11,6,2
	add 11,12,11
	addi 11,11,-4
.LVL3276:
.L1934:
	.loc 4 5668 0 discriminator 2
	slwi 0,9,2
	lfsu 12,4(11)
	lfsx 13,10,0
	.loc 4 5667 0 discriminator 2
	addi 9,9,1
.LVL3277:
	.loc 4 5668 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL3278:
	.loc 4 5667 0 discriminator 2
	bdnz .L1934
.LVL3279:
	.loc 4 5670 0
	slwi 6,6,2
	.loc 4 5665 0
	addi 8,8,1
.LVL3280:
	.loc 4 5670 0
	add 12,12,6
	lfsx 13,12,7
	fdiv 0,0,13
.LVL3281:
	frsp 0,0
	stfsx 0,10,7
	.loc 4 5665 0
	lwz 0,0(3)
	cmpw 7,0,8
	bgt+ 7,.L1935
.LVL3282:
.L1946:
	cmpwi 7,0,0
.LVL3283:
.L1931:
	.loc 4 5674 0
	ble- 7,.L1929
	.loc 4 5657 0
	mr 6,0
	slwi 11,0,2
.LVL3284:
.L1940:
	.loc 4 5676 0
	cmpw 7,6,0
	.loc 4 8102 0
	lwz 10,8(4)
.LBB15185:
.LBB15186:
	.loc 2 1537 0
	addi 7,11,-4
.LBE15186:
.LBE15185:
	.loc 4 5676 0
	mr 5,6
	.loc 4 5675 0
	lfsx 0,10,7
	.loc 4 5657 0
	addi 6,6,-1
.LVL3285:
	.loc 4 5676 0
	lwz 12,4(3)
	lwz 31,12(3)
	bge- 7,.L1938
	.loc 4 5657 0
	mullw 9,5,12
	subf 0,5,0
	mtctr 0
	slwi 8,12,2
	slwi 9,9,2
	add 9,9,7
	add 9,31,9
.LVL3286:
.L1939:
	.loc 4 5677 0 discriminator 2
	lfs 12,0(9)
	.loc 4 5676 0 discriminator 2
	add 9,9,8
	.loc 4 5677 0 discriminator 2
	lfsx 13,10,11
	.loc 4 5676 0 discriminator 2
	addi 11,11,4
	.loc 4 5677 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL3287:
	.loc 4 5676 0 discriminator 2
	bdnz .L1939
.L1938:
.LVL3288:
.LBB15187:
.LBB15188:
	.loc 3 2051 0
	mullw 12,6,12
.LBE15188:
.LBE15187:
	.loc 4 5674 0
	cmpwi 7,6,0
	.loc 4 5679 0
	mr 11,7
	slwi 12,12,2
	add 31,31,12
	lfsx 13,31,7
	fdiv 0,0,13
.LVL3289:
	frsp 0,0
	stfsx 0,10,7
.LVL3290:
	.loc 4 5674 0
	beq- 7,.L1929
	lwz 0,0(3)
	b .L1940
.LVL3291:
.L1929:
.LBE15191:
	.loc 4 5681 0
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI325:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL3292:
.L1947:
.LCFI326:
	.cfi_restore_state
.LBB15192:
	.loc 4 5667 0
	lwz 10,8(4)
	mullw 6,8,6
	b .L1945
.LBE15192:
	.cfi_endproc
.LFE2632:
	.size	_ZNK6idMatX14Cholesky_SolveER6idVecXRKS0_, .-_ZNK6idMatX14Cholesky_SolveER6idVecXRKS0_
	.align 2
	.globl _ZNK6idMatX16Cholesky_InverseERS_
	.type	_ZNK6idMatX16Cholesky_InverseERS_, @function
_ZNK6idMatX16Cholesky_InverseERS_:
.LFB2633:
	.loc 4 5690 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2633
.LVL3293:
	mflr 0
	stwu 1,-72(1)
.LCFI327:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 27,52(1)
	stw 0,76(1)
	stw 29,60(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	stw 30,64(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,68(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI328:
	.cfi_def_cfa_register 31
.LVL3294:
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 28,56(1)
.LBB15223:
	.loc 4 5696 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 27,9
	rlwinm 0,0,0,0,29
.LBB15224:
.LBB15225:
	.loc 2 1762 0
	stw 9,20(31)
.LBE15225:
.LBE15224:
	.loc 4 5696 0
	slwi 11,0,2
.LBB15228:
.LBB15226:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE15226:
.LBE15228:
	.loc 4 5696 0
	subfic 11,11,-32
.LBB15229:
.LBB15230:
	.loc 2 1507 0
	li 0,0
.LVL3295:
.LBE15230:
.LBE15229:
	.loc 4 5696 0
	stwux 10,1,11
.LBB15231:
.LBB15232:
	.loc 2 1507 0
	stw 0,12(31)
.LBE15232:
.LBE15231:
	.loc 4 5696 0
	addi 11,1,23
.LVL3296:
.LBB15235:
.LBB15233:
	.loc 2 1507 0
	stw 0,8(31)
.LBE15233:
.LBE15235:
	.loc 4 5696 0
	rlwinm 11,11,0,0,27
.LVL3297:
.LBB15236:
.LBB15234:
	.loc 2 1508 0
	stw 0,16(31)
.LBE15234:
.LBE15236:
.LBB15237:
.LBB15227:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL3298:
	.loc 2 1764 0
	bge- 7,.L1951
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
.LVL3299:
	slwi 10,9,2
	li 8,0
	b .L1952
.LVL3300:
.L1978:
	lwz 11,28(31)
.L1952:
	addi 9,9,1
.LVL3301:
	stwx 8,11,10
	.loc 4 5690 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L1978
	lwz 27,0(29)
.L1951:
.LBE15227:
.LBE15237:
	.loc 4 5697 0
	addi 26,27,3
.LBB15238:
.LBB15239:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL3302:
.LBE15239:
.LBE15238:
	.loc 4 5697 0
	rlwinm 26,26,0,0,29
	lwz 9,0(1)
.LVL3303:
	slwi 0,26,2
.LBB15244:
.LBB15240:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE15240:
.LBE15244:
	.loc 4 5697 0
	subfic 0,0,-32
	mr 28,27
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL3304:
.LBB15245:
.LBB15241:
	.loc 2 1757 0
	beq- 7,.L1953
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1979
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L1953
.L1986:
.LEHB88:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL3305:
.L1953:
	.loc 2 1764 0
	cmpw 7,27,26
	.loc 2 1763 0
	li 0,-1
.LBE15241:
.LBE15245:
	.loc 4 5697 0
	mr 4,25
.LBB15246:
.LBB15242:
	.loc 2 1761 0
	stw 25,16(31)
	.loc 2 1762 0
	stw 27,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL3306:
	.loc 2 1764 0
	bge- 7,.L1955
	slwi 27,27,2
.LVL3307:
	li 9,0
	b .L1957
.LVL3308:
.L1980:
	lwz 4,16(31)
.L1957:
	addi 28,28,1
.LVL3309:
	stwx 9,4,27
	.loc 4 5690 0
	addi 0,28,3
	.loc 2 1764 0
	addi 27,27,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L1980
	lwz 28,8(31)
.LVL3310:
	lwz 4,16(31)
.L1955:
.LBE15242:
.LBE15246:
.LBB15247:
.LBB15248:
	.loc 2 1769 0
	lis 9,SIMDProcessor@ha
	mr 5,28
	lwz 3,SIMDProcessor@l(9)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL3311:
.LBE15248:
.LBE15247:
	.loc 4 5699 0
	lwz 25,0(29)
.LVL3312:
	lwz 26,4(29)
.LVL3313:
.LBB15249:
.LBB15250:
	.loc 3 2250 0
	lwz 0,8(30)
	.loc 3 2249 0
	mullw 28,25,26
	addi 27,28,3
	rlwinm 27,27,0,0,29
.LVL3314:
	.loc 3 2250 0
	cmpw 7,27,0
	ble- 7,.L1958
	cmpwi 7,0,-1
	beq- 7,.L1958
	.loc 3 2251 0
	lwz 3,12(30)
	cmpwi 7,3,0
	beq- 7,.L1959
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL3315:
.L1959:
	.loc 3 2254 0
	slwi 3,27,2
	bl _Z11Mem_Alloc16i
.LEHE88:
	stw 3,12(30)
	.loc 3 2255 0
	stw 27,8(30)
.L1958:
	.loc 3 2259 0
	cmpw 7,28,27
	.loc 3 2257 0
	stw 25,0(30)
	.loc 3 2258 0
	stw 26,4(30)
.LVL3316:
	.loc 3 2259 0
	bge- 7,.L1960
	slwi 9,28,2
	li 10,0
.L1961:
	addi 28,28,1
.LVL3317:
	lwz 11,12(30)
	.loc 4 5690 0
	addi 0,28,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,28,0
	addi 9,9,4
	blt+ 7,.L1961
.L1960:
.LVL3318:
.LBE15250:
.LBE15249:
	.loc 4 5701 0 discriminator 1
	lwz 0,0(29)
	addi 28,31,20
.LVL3319:
	cmpwi 7,0,0
	ble- 7,.L1962
	lis 9,.LC1@ha
	.loc 4 5701 0 is_stmt 0
	li 26,0
.LVL3320:
	.loc 4 5703 0 is_stmt 1
	lwz 24,.LC1@l(9)
	.loc 4 5708 0
	li 25,0
.LVL3321:
.L1965:
	.loc 4 5703 0
	lwz 9,16(31)
	.loc 4 5690 0
	slwi 27,26,2
	.loc 4 5704 0
	mr 3,29
	mr 4,28
	.loc 4 5703 0
	stwx 24,9,27
	.loc 4 5704 0
	addi 5,31,8
	bl _ZNK6idMatX14Cholesky_SolveER6idVecXRKS0_
.LVL3322:
	.loc 4 5705 0
	lwz 0,0(29)
	cmpwi 7,0,0
	ble- 7,.L1963
	lwz 11,4(30)
	li 9,0
	b .L1964
.LVL3323:
.L1981:
	lwz 11,4(30)
.LVL3324:
.L1964:
.LBB15251:
.LBB15252:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE15252:
.LBE15251:
	.loc 4 5706 0 discriminator 2
	lwz 8,8(28)
	slwi 0,9,2
	lwz 10,12(30)
	lwzx 0,8,0
	.loc 4 5705 0 discriminator 2
	addi 9,9,1
.LVL3325:
	.loc 4 5706 0 discriminator 2
	slwi 11,11,2
	add 11,10,11
	stwx 0,11,27
	.loc 4 5705 0 discriminator 2
	lwz 0,0(29)
	cmpw 7,0,9
	bgt+ 7,.L1981
.LVL3326:
.L1963:
	.loc 4 5708 0
	lwz 9,16(31)
	.loc 4 5701 0
	addi 26,26,1
.LVL3327:
	.loc 4 5708 0
	stwx 25,9,27
	.loc 4 5701 0
	lwz 0,0(29)
	cmpw 7,0,26
	bgt+ 7,.L1965
.LVL3328:
.L1962:
	.loc 4 5709 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB15253:
.LBB15254:
.LBB15255:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L1966
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1982
	cmpwi 7,0,-1
	beq- 7,.L1966
.L1985:
.LEHB89:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE89:
.L1966:
	.loc 4 5709 0 discriminator 1
	lwz 3,8(28)
	lwz 0,4(28)
.LBE15255:
.LBE15254:
.LBE15253:
.LBB15258:
.LBB15259:
.LBB15260:
	.loc 2 1525 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L1948
	.loc 2 1525 0 is_stmt 0
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L1983
	cmpwi 7,0,-1
	beq- 7,.L1948
.L1984:
.LEHB90:
	.loc 2 1526 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE90:
.L1948:
.LBE15260:
.LBE15259:
.LBE15258:
.LBE15223:
	.loc 4 5710 0
	addi 11,31,72
	lwz 0,4(11)
	lwz 24,-32(11)
	mtlr 0
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL3329:
	lwz 30,-8(11)
.LVL3330:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI329:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI330:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL3331:
.L1983:
.LCFI331:
	.cfi_restore_state
.LBB15266:
.LBB15263:
.LBB15262:
.LBB15261:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1948
	cmpwi 7,0,-1
	bne+ 7,.L1984
	b .L1948
.L1982:
.LBE15261:
.LBE15262:
.LBE15263:
.LBB15264:
.LBB15257:
.LBB15256:
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1966
	cmpwi 7,0,-1
	bne+ 7,.L1985
	b .L1966
.LVL3332:
.L1979:
.LBE15256:
.LBE15257:
.LBE15264:
.LBB15265:
.LBB15243:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L1953
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L1986
	b .L1953
.LVL3333:
.L1973:
	mr 30,3
.LVL3334:
.L1971:
.LBE15243:
.LBE15265:
	.loc 4 5709 0
	lwz 3,4(28)
	lwz 4,8(28)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB91:
	bl _Unwind_Resume
.LEHE91:
.LVL3335:
.L1972:
	mr 30,3
.LVL3336:
	lwz 4,16(31)
	lwz 3,12(31)
	addi 28,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L1971
.LBE15266:
	.cfi_endproc
.LFE2633:
	.section	.gcc_except_table
.LLSDA2633:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2633-.LLSDACSB2633
.LLSDACSB2633:
	.uleb128 .LEHB88-.LFB2633
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1972-.LFB2633
	.uleb128 0
	.uleb128 .LEHB89-.LFB2633
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L1973-.LFB2633
	.uleb128 0
	.uleb128 .LEHB90-.LFB2633
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB2633
	.uleb128 .LEHE91-.LEHB91
	.uleb128 0
	.uleb128 0
.LLSDACSE2633:
	.section	".text"
	.size	_ZNK6idMatX16Cholesky_InverseERS_, .-_ZNK6idMatX16Cholesky_InverseERS_
	.align 2
	.globl _ZNK6idMatX24Cholesky_MultiplyFactorsERS_
	.type	_ZNK6idMatX24Cholesky_MultiplyFactorsERS_, @function
_ZNK6idMatX24Cholesky_MultiplyFactorsERS_:
.LFB2634:
	.loc 4 5719 0
	.cfi_startproc
.LVL3337:
	mflr 0
	stwu 1,-32(1)
.LCFI332:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 26,8(1)
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	mr 28,4
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.cfi_offset 26, -24
.LVL3338:
	stw 31,28(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 29,20(1)
	stw 30,24(1)
.LBB15277:
.LBB15278:
.LBB15279:
	.loc 3 2250 0
	lwz 0,8(4)
.LBE15279:
.LBE15278:
	.loc 4 5723 0
	lwz 29,0(3)
	.cfi_offset 30, -8
	.cfi_offset 29, -12
.LVL3339:
	lwz 30,4(3)
.LVL3340:
.LBB15281:
.LBB15280:
	.loc 3 2249 0
	mullw 27,29,30
	addi 26,27,3
	rlwinm 26,26,0,0,29
.LVL3341:
	.loc 3 2250 0
	cmpw 7,26,0
	ble- 7,.L1988
	cmpwi 7,0,-1
	beq- 7,.L1988
	.loc 3 2251 0
	lwz 3,12(4)
.LVL3342:
	cmpwi 7,3,0
	beq- 7,.L1989
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL3343:
.L1989:
	.loc 3 2254 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 26,8(28)
	.loc 3 2254 0
	stw 3,12(28)
.L1988:
	.loc 3 2259 0
	cmpw 7,27,26
	.loc 3 2257 0
	stw 29,0(28)
	.loc 3 2258 0
	stw 30,4(28)
.LVL3344:
	.loc 3 2259 0
	bge- 7,.L1990
	slwi 9,27,2
	li 10,0
.L1991:
	addi 27,27,1
.LVL3345:
	lwz 11,12(28)
	.loc 4 5719 0
	addi 0,27,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,27,0
	addi 9,9,4
	blt+ 7,.L1991
.L1990:
.LVL3346:
.LBE15280:
.LBE15281:
	.loc 4 5725 0 discriminator 1
	lwz 0,0(31)
	cmpwi 7,0,0
	ble- 7,.L1987
	lis 9,.LC11@ha
	.loc 4 5725 0 is_stmt 0
	li 7,0
.LBE15277:
	.loc 4 5719 0 is_stmt 1
	lfd 11,.LC11@l(9)
.LVL3347:
.L1992:
.LBB15290:
	.loc 4 5725 0 discriminator 1
	li 11,0
	b .L1997
.LVL3348:
.L2007:
.LBB15282:
.LBB15283:
	.loc 3 2056 0
	lwz 10,4(28)
.LBE15283:
.LBE15282:
	.loc 4 5730 0
	frsp 0,0
.LVL3349:
	.loc 4 5733 0
	lwz 0,12(28)
	slwi 9,11,2
.LVL3350:
.LBB15287:
.LBB15284:
	.loc 3 2056 0
	mullw 10,7,10
.LBE15284:
.LBE15287:
	.loc 4 5728 0
	addi 11,11,1
.LVL3351:
	.loc 4 5733 0
	slwi 10,10,2
	add 10,0,10
	stfsx 0,10,9
	.loc 4 5728 0
	lwz 0,0(31)
	cmpw 7,0,11
	ble- 7,.L2006
.LVL3352:
.L1997:
	.loc 4 5728 0 is_stmt 0 discriminator 1
	lwz 10,4(31)
.LBE15290:
	.loc 4 5719 0 is_stmt 1 discriminator 1
	fmr 0,11
.LBB15291:
	.loc 4 5728 0 discriminator 1
	lwz 0,12(31)
.LBE15291:
	.loc 4 5719 0 discriminator 1
	li 9,0
.LBB15292:
	.loc 4 5728 0 discriminator 1
	mullw 8,7,10
	mullw 10,11,10
	.loc 4 5719 0 discriminator 1
	slwi 8,8,2
	add 8,0,8
	addi 8,8,-4
	slwi 10,10,2
	add 10,0,10
	addi 10,10,-4
.LVL3353:
.L1994:
	.loc 4 5730 0 discriminator 5
	addi 9,9,1
	.loc 4 5731 0 discriminator 5
	lfsu 12,4(8)
	lfsu 13,4(10)
	.loc 4 5730 0 discriminator 5
	cmpw 6,9,11
	cmpw 7,9,7
	.loc 4 5731 0 discriminator 5
	fmuls 13,12,13
	fadd 0,0,13
.LVL3354:
	.loc 4 5730 0 discriminator 5
	bgt- 6,.L2007
	.loc 4 5730 0 is_stmt 0 discriminator 2
	ble- 7,.L1994
.LBB15288:
.LBB15285:
	.loc 3 2056 0 is_stmt 1
	lwz 10,4(28)
.LBE15285:
.LBE15288:
	.loc 4 5730 0
	frsp 0,0
.LVL3355:
	.loc 4 5733 0
	lwz 0,12(28)
	slwi 9,11,2
.LVL3356:
.LBB15289:
.LBB15286:
	.loc 3 2056 0
	mullw 10,7,10
.LBE15286:
.LBE15289:
	.loc 4 5728 0
	addi 11,11,1
.LVL3357:
	.loc 4 5733 0
	slwi 10,10,2
	add 10,0,10
	stfsx 0,10,9
	.loc 4 5728 0
	lwz 0,0(31)
	cmpw 7,0,11
	bgt+ 7,.L1997
.LVL3358:
.L2006:
	.loc 4 5725 0
	addi 7,7,1
.LVL3359:
	cmpw 7,0,7
	ble- 7,.L1987
.LVL3360:
	.loc 4 5728 0 discriminator 1
	cmpwi 7,0,0
	bgt+ 7,.L1992
.LVL3361:
.L1987:
.LBE15292:
	.loc 4 5736 0
	lwz 0,36(1)
	lwz 26,8(1)
.LVL3362:
	mtlr 0
	lwz 27,12(1)
.LVL3363:
	lwz 28,16(1)
.LVL3364:
	lwz 29,20(1)
.LVL3365:
	lwz 30,24(1)
.LVL3366:
	lwz 31,28(1)
.LVL3367:
	addi 1,1,32
.LCFI333:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE2634:
	.size	_ZNK6idMatX24Cholesky_MultiplyFactorsERS_, .-_ZNK6idMatX24Cholesky_MultiplyFactorsERS_
	.align 2
	.globl _ZN6idMatX11LDLT_FactorEv
	.type	_ZN6idMatX11LDLT_FactorEv, @function
_ZN6idMatX11LDLT_FactorEv:
.LFB2635:
	.loc 4 5750 0
	.cfi_startproc
.LVL3368:
	mflr 0
	stwu 1,-16(1)
.LCFI334:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
.LBB15293:
	.loc 4 5759 0
	li 6,0
	.loc 4 5768 0
	lis 12,.LC11@ha
.LBE15293:
	.loc 4 5750 0
	stw 30,8(1)
.LBB15304:
	.loc 4 5773 0
	lis 30,.LC1@ha
	.cfi_offset 30, -8
.LBE15304:
	.loc 4 5750 0
	stw 31,12(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI335:
	.cfi_def_cfa_register 31
	stw 0,20(1)
.LBB15305:
	.loc 4 5757 0
	lwz 11,0(1)
	lwz 0,0(3)
	.cfi_offset 65, 4
	slwi 9,0,2
	.loc 4 5759 0
	cmpw 7,6,0
	.loc 4 5757 0
	addi 9,9,45
	rlwinm 9,9,0,0,27
	neg 9,9
	stwux 11,1,9
	addi 8,1,23
	rlwinm 8,8,0,0,27
.LVL3369:
	.loc 4 5759 0
	bge- 7,.L2022
.L2017:
	.loc 4 8102 0
	lwz 10,4(3)
	.loc 4 5762 0
	cmpwi 7,6,0
	.loc 4 8102 0
	lwz 0,12(3)
.LVL3370:
	.loc 4 5750 0
	slwi 5,6,2
.LBB15294:
.LBB15295:
	.loc 3 2056 0
	mullw 7,6,10
.LBE15295:
.LBE15294:
	.loc 4 5761 0
	slwi 9,7,2
	add 9,0,9
	lfsx 12,9,5
.LVL3371:
	.loc 4 5762 0
	ble- 7,.L2010
	li 9,0
	li 11,0
	mtctr 6
	b .L2011
.LVL3372:
.L2023:
	lwz 10,4(3)
	lwz 0,12(3)
	mullw 7,6,10
.LVL3373:
.L2011:
.LBB15296:
.LBB15297:
	.loc 3 2056 0 discriminator 2
	mullw 10,11,10
.LBE15297:
.LBE15296:
	.loc 4 5763 0 discriminator 2
	slwi 7,7,2
	add 7,0,7
	lfsx 0,7,9
.LVL3374:
	.loc 4 5762 0 discriminator 2
	addi 11,11,1
.LVL3375:
	.loc 4 5764 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
	lfsx 13,10,9
	fmul 13,13,0
	frsp 13,13
	.loc 4 5765 0 discriminator 2
	fmr 11,13
	.loc 4 5764 0 discriminator 2
	stfsx 13,9,8
	.loc 4 5762 0 discriminator 2
	addi 9,9,4
	.loc 4 5750 0 discriminator 2
	fneg 13,11
	.loc 4 5765 0 discriminator 2
	fmadd 12,13,0,12
.LVL3376:
	.loc 4 5762 0 discriminator 2
	bdnz .L2023
.LVL3377:
.L2010:
	.loc 4 5768 0
	lfd 0,.LC11@l(12)
	fcmpu 7,12,0
	beq- 7,.L2018
.LVL3378:
.LBB15298:
.LBB15299:
	.loc 3 2056 0
	lwz 0,4(3)
.LBE15299:
.LBE15298:
	.loc 4 5772 0
	frsp 0,12
	lwz 9,12(3)
	.loc 4 5775 0
	addi 4,6,1
.LBB15301:
.LBB15300:
	.loc 3 2056 0
	mullw 0,6,0
.LBE15300:
.LBE15301:
	.loc 4 5773 0
	lfs 11,.LC1@l(30)
	fdiv 11,11,12
.LVL3379:
	.loc 4 5772 0
	slwi 0,0,2
	add 9,9,0
	stfsx 0,9,5
	.loc 4 5775 0
	lwz 0,0(3)
	cmpw 7,4,0
	bge- 7,.L2013
	.loc 4 5777 0
	cmpwi 6,6,0
	.loc 4 5775 0
	mr 7,4
.LVL3380:
.L2016:
.LBB15302:
.LBB15303:
	.loc 3 2056 0
	lwz 10,4(3)
	lwz 0,12(3)
	mullw 10,7,10
	slwi 10,10,2
	add 10,0,10
.LBE15303:
.LBE15302:
	.loc 4 5776 0
	lfsx 0,10,5
.LVL3381:
	.loc 4 5777 0
	ble- 6,.L2014
.LVL3382:
	mtctr 6
	.loc 4 5750 0
	addi 9,10,-4
.LVL3383:
.L2015:
	.loc 4 5777 0 discriminator 2
	addi 9,9,4
	.loc 4 5750 0 discriminator 2
	subf 11,10,9
	.loc 4 5778 0 discriminator 2
	lfs 12,0(9)
	lfsx 13,11,8
	fmuls 13,12,13
	fsub 0,0,13
.LVL3384:
	.loc 4 5777 0 discriminator 2
	bdnz .L2015
.L2014:
.LVL3385:
	.loc 4 5780 0
	fmul 0,0,11
.LVL3386:
	.loc 4 5775 0
	addi 7,7,1
.LVL3387:
	.loc 4 5780 0
	frsp 0,0
	stfsx 0,10,5
	.loc 4 5775 0
	lwz 0,0(3)
	cmpw 7,0,7
	bgt+ 7,.L2016
.LVL3388:
.L2013:
	mr 6,4
.LVL3389:
	.loc 4 5759 0
	cmpw 7,6,0
	blt+ 7,.L2017
.LVL3390:
.L2022:
.LBE15305:
	.loc 4 5785 0
	addi 11,31,16
.LBB15306:
	.loc 4 5784 0
	li 3,1
.LVL3391:
.LBE15306:
	.loc 4 5785 0
	lwz 0,4(11)
	lwz 30,-8(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI336:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 30
	.cfi_restore 31
.LCFI337:
	.cfi_def_cfa_register 1
	blr
.LVL3392:
.L2018:
.LCFI338:
	.cfi_restore_state
	addi 11,31,16
.LBB15307:
	.loc 4 5769 0
	li 3,0
.LVL3393:
.LBE15307:
	.loc 4 5785 0
	lwz 0,4(11)
	lwz 30,-8(11)
	mtlr 0
	lwz 31,-4(11)
.LCFI339:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI340:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2635:
	.size	_ZN6idMatX11LDLT_FactorEv, .-_ZN6idMatX11LDLT_FactorEv
	.align 2
	.globl _ZN6idMatX18LDLT_UpdateRankOneERK6idVecXfi
	.type	_ZN6idMatX18LDLT_UpdateRankOneERK6idVecXfi, @function
_ZN6idMatX18LDLT_UpdateRankOneERK6idVecXfi:
.LFB2636:
	.loc 4 5795 0
	.cfi_startproc
.LVL3394:
	mflr 0
	stwu 1,-32(1)
.LCFI341:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stfd 31,24(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 0,36(1)
	stw 28,8(1)
	mr 28,5
	.cfi_offset 28, -24
	.cfi_offset 65, 4
	stw 29,12(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	stw 31,20(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI342:
	.cfi_def_cfa_register 31
.LBB15308:
	.loc 4 5804 0
	lwz 11,0(1)
	lwz 9,0(4)
	slwi 9,9,2
	addi 0,9,45
	.loc 4 5805 0
	mr 5,9
.LVL3395:
	.loc 4 5804 0
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 11,1,0
	addi 29,1,23
	.loc 4 5805 0
	lwz 4,8(4)
.LVL3396:
	.loc 4 5804 0
	rlwinm 29,29,0,0,27
.LVL3397:
	.loc 4 5805 0
	mr 3,29
.LVL3398:
	bl memcpy
.LVL3399:
	.loc 4 5795 0
	slwi 5,28,2
	addi 5,5,-4
	.loc 4 5812 0
	lis 4,.LC11@ha
	.loc 4 5795 0
	add 5,5,29
	subfic 29,29,4
.LVL3400:
.L2025:
	.loc 4 5807 0 discriminator 1
	lwz 0,4(30)
	cmpw 7,28,0
	bge- 7,.L2032
.L2029:
.LBB15309:
.LBB15310:
	.loc 3 2056 0
	mullw 0,28,0
.LBE15310:
.LBE15309:
	.loc 4 5810 0
	fmr 12,31
	.loc 4 5795 0
	add 10,29,5
	.loc 4 5808 0
	lfsu 10,4(5)
.LVL3401:
.LBB15313:
.LBB15311:
	.loc 3 2056 0
	lwz 9,12(30)
.LBE15311:
.LBE15313:
	.loc 4 5810 0
	fmul 0,12,10
	.loc 4 5812 0
	lfd 11,.LC11@l(4)
.LBB15314:
.LBB15312:
	.loc 3 2056 0
	slwi 0,0,2
	add 9,9,0
.LBE15312:
.LBE15314:
	.loc 4 5809 0
	lfsx 13,9,10
.LVL3402:
	.loc 4 5810 0
	fmadd 0,0,10,13
.LVL3403:
	.loc 4 5812 0
	fcmpu 7,0,11
	.loc 4 5810 0
	frsp 11,0
	stfsx 11,9,10
	.loc 4 5812 0
	beq- 7,.L2030
.LVL3404:
	.loc 4 5816 0
	fdiv 11,12,0
	.loc 4 5820 0
	lwz 0,0(30)
	addi 28,28,1
.LVL3405:
	cmpw 7,28,0
	.loc 4 5816 0
	frsp 11,11
.LVL3406:
	.loc 4 5818 0
	fmul 13,13,11
.LVL3407:
	.loc 4 5817 0
	fmul 11,11,10
.LVL3408:
	.loc 4 5818 0
	frsp 31,13
.LVL3409:
	.loc 4 5820 0
	bge- 7,.L2025
	fneg 10,10
.LVL3410:
	mr 11,5
	mr 9,28
.LVL3411:
.L2028:
.LBB15315:
.LBB15316:
	.loc 3 2056 0 discriminator 2
	lwz 7,4(30)
.LBE15316:
.LBE15315:
	.loc 4 5822 0 discriminator 2
	lwz 6,12(30)
.LBB15318:
.LBB15317:
	.loc 3 2056 0 discriminator 2
	mullw 7,9,7
.LBE15317:
.LBE15318:
	.loc 4 5824 0 discriminator 2
	lfsu 13,4(11)
	.loc 4 5820 0 discriminator 2
	lwz 0,0(30)
	addi 9,9,1
.LVL3412:
	cmpw 7,0,9
	.loc 4 5822 0 discriminator 2
	slwi 7,7,2
	add 7,6,7
	lfsx 0,7,10
.LVL3413:
	.loc 4 5824 0 discriminator 2
	fmadd 13,10,0,13
	frsp 13,13
	.loc 4 5825 0 discriminator 2
	fmr 12,13
	.loc 4 5824 0 discriminator 2
	stfs 13,0(11)
.LVL3414:
	.loc 4 5825 0 discriminator 2
	fmadd 0,12,11,0
.LVL3415:
	.loc 4 5827 0 discriminator 2
	frsp 0,0
	stfsx 0,7,10
	.loc 4 5820 0 discriminator 2
	bgt+ 7,.L2028
.LVL3416:
	.loc 4 5807 0
	lwz 0,4(30)
	cmpw 7,28,0
	blt+ 7,.L2029
.LVL3417:
.L2032:
.LBE15308:
	.loc 4 5832 0
	addi 11,31,32
.LBB15319:
	.loc 4 5831 0
	li 3,1
.LBE15319:
	.loc 4 5832 0
	lwz 0,4(11)
	lwz 28,-24(11)
.LVL3418:
	mtlr 0
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL3419:
	lwz 31,-12(11)
	.cfi_remember_state
.LCFI343:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL3420:
	mr 1,11
.LCFI344:
	.cfi_def_cfa_register 1
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
.LVL3421:
	blr
.LVL3422:
.L2030:
.LCFI345:
	.cfi_restore_state
	addi 11,31,32
.LBB15320:
	.loc 4 5813 0
	li 3,0
.LBE15320:
	.loc 4 5832 0
	lwz 0,4(11)
	lwz 28,-24(11)
.LVL3423:
	mtlr 0
	lwz 29,-20(11)
	lwz 30,-16(11)
.LVL3424:
	lwz 31,-12(11)
.LCFI346:
	.cfi_def_cfa 11, 0
	lfd 31,-8(11)
.LVL3425:
	mr 1,11
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI347:
	.cfi_def_cfa_register 1
.LVL3426:
	blr
	.cfi_endproc
.LFE2636:
	.size	_ZN6idMatX18LDLT_UpdateRankOneERK6idVecXfi, .-_ZN6idMatX18LDLT_UpdateRankOneERK6idVecXfi
	.align 2
	.globl _ZN6idMatX20LDLT_UpdateRowColumnERK6idVecXi
	.type	_ZN6idMatX20LDLT_UpdateRowColumnERK6idVecXi, @function
_ZN6idMatX20LDLT_UpdateRowColumnERK6idVecXi:
.LFB2637:
	.loc 4 5847 0
	.cfi_startproc
.LVL3427:
	mflr 0
	stwu 1,-24(1)
.LCFI348:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	mr 9,3
	stw 31,20(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI349:
	.cfi_def_cfa_register 31
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 30,16(1)
.LBB15396:
	.loc 4 5857 0
	lwz 8,0(1)
	lwz 11,4(3)
	slwi 10,11,2
.LBB15397:
.LBB15398:
	.loc 2 1764 0
	addi 7,11,3
.LBE15398:
.LBE15397:
	.loc 4 5857 0
	addi 0,10,45
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LBB15402:
.LBB15399:
	.loc 2 1764 0
	rlwinm 7,7,0,0,29
.LBE15399:
.LBE15402:
	.loc 4 5857 0
	rlwinm 0,0,0,0,27
.LBB15403:
.LBB15400:
	.loc 2 1764 0
	cmpw 7,11,7
.LBE15400:
.LBE15403:
	.loc 4 5857 0
	neg 0,0
	mr 7,11
	stwux 8,1,0
	addi 0,1,23
	rlwinm 12,0,0,0,27
.LVL3428:
.LBB15404:
.LBB15401:
	.loc 2 1764 0
	bge- 7,.L2034
.LVL3429:
	.loc 4 5847 0
	addi 10,10,-4
	.loc 2 1764 0
	li 0,0
	add 10,10,12
.LVL3430:
.L2035:
	addi 11,11,1
.LVL3431:
	stwu 0,4(10)
	.loc 4 5847 0
	addi 8,11,3
	.loc 2 1764 0
	rlwinm 8,8,0,0,29
	cmpw 7,11,8
	blt+ 7,.L2035
	lwz 7,4(9)
.L2034:
.LBE15401:
.LBE15404:
	.loc 4 5859 0
	cmpwi 6,5,0
	bne- 6,.L2036
	.loc 4 5861 0
	cmpwi 7,7,1
	beq- 7,.L2037
.LVL3432:
	.loc 4 5865 0 discriminator 1
	cmpwi 7,7,0
	li 11,0
.LVL3433:
	ble- 7,.L2104
.LVL3434:
.L2087:
	.loc 4 5865 0 is_stmt 0 discriminator 2
	lwz 7,4(9)
	.loc 4 5847 0 is_stmt 1 discriminator 2
	slwi 10,11,2
.LVL3435:
	.loc 4 5865 0 discriminator 2
	addi 11,11,1
.LVL3436:
.LBB15405:
.LBB15406:
	.loc 2 1532 0 discriminator 2
	lwz 8,8(4)
.LBE15406:
.LBE15405:
	.loc 4 5865 0 discriminator 2
	cmpw 7,7,11
.LBB15408:
.LBB15407:
	.loc 2 1532 0 discriminator 2
	lwzx 0,8,10
.LBE15407:
.LBE15408:
	.loc 4 5866 0 discriminator 2
	stwx 0,12,10
	.loc 4 5865 0 discriminator 2
	bgt+ 7,.L2087
.LVL3437:
.L2104:
	.loc 4 5865 0 is_stmt 0
	li 29,0
	li 8,0
.LVL3438:
.L2039:
	.loc 4 5968 0 is_stmt 1
	slwi 7,7,2
	lwz 11,0(1)
	addi 0,7,45
	.loc 4 5972 0
	lis 4,.LC1@ha
.LVL3439:
	.loc 4 5968 0
	rlwinm 0,0,0,0,27
	.loc 4 5972 0
	lfs 0,.LC1@l(4)
	.loc 4 5968 0
	neg 0,0
	.loc 4 5974 0
	addi 6,5,1
	.loc 4 5968 0
	stwux 11,1,0
	addi 7,1,23
	.loc 4 5969 0
	stwux 11,1,0
	.loc 4 5972 0
	lis 11,.LC6@ha
	.loc 4 5968 0
	rlwinm 7,7,0,0,27
.LVL3440:
	.loc 4 5972 0
	lfsx 11,12,29
	.loc 4 5969 0
	addi 30,1,23
	.loc 4 5972 0
	lfs 12,.LC6@l(11)
	.loc 4 5971 0
	lis 11,_ZN6idMath11SQRT_1OVER2E@ha
	lfs 13,_ZN6idMath11SQRT_1OVER2E@l(11)
	.loc 4 5969 0
	rlwinm 30,30,0,0,27
.LVL3441:
	.loc 4 5972 0
	fmadds 11,11,12,0
	.loc 4 5974 0
	lwz 11,4(9)
	cmpw 7,6,11
	.loc 4 5972 0
	fmul 11,11,13
	frsp 11,11
	stfsx 11,7,29
.LVL3442:
	.loc 4 5973 0
	lfsx 11,12,29
	fmsubs 0,11,12,0
	fmul 0,0,13
	frsp 0,0
	stfsx 0,30,29
	.loc 4 5974 0
	bge- 7,.L2070
	slwi 10,6,2
.L2071:
.LVL3443:
	.loc 4 5975 0 discriminator 2
	lfsx 0,12,10
	.loc 4 5974 0 discriminator 2
	addi 6,6,1
.LVL3444:
	lwz 11,4(9)
	.loc 4 5975 0 discriminator 2
	fmul 0,0,13
	.loc 4 5974 0 discriminator 2
	cmpw 7,11,6
	.loc 4 5975 0 discriminator 2
	frsp 0,0
	stfsx 0,10,30
	stfsx 0,10,7
	.loc 4 5974 0 discriminator 2
	addi 10,10,4
	bgt+ 7,.L2071
.LVL3445:
.L2070:
	.loc 4 5982 0 discriminator 1
	cmpw 7,5,11
	.loc 4 5847 0 discriminator 1
	addi 12,8,-4
.LVL3446:
	lis 10,.LC4@ha
	add 12,12,7
	lfs 7,.LC4@l(10)
	.loc 4 5988 0 discriminator 1
	lis 29,.LC11@ha
	.loc 4 5847 0 discriminator 1
	lfs 13,.LC1@l(4)
.LVL3447:
	subf 7,7,30
.LVL3448:
	.loc 4 5982 0 discriminator 1
	bge- 7,.L2107
.LVL3449:
.L2075:
.LBB15409:
.LBB15410:
	.loc 3 2056 0
	mullw 11,5,11
.LBE15410:
.LBE15409:
	.loc 4 5985 0
	lfsu 8,4(12)
.LBB15413:
.LBB15411:
	.loc 3 2056 0
	lwz 0,12(9)
.LBE15411:
.LBE15413:
	.loc 4 5986 0
	fmul 0,13,8
	.loc 4 5988 0
	lfd 12,.LC11@l(29)
.LBB15414:
.LBB15412:
	.loc 3 2056 0
	slwi 11,11,2
	add 11,0,11
.LBE15412:
.LBE15414:
	.loc 4 5984 0
	lfsx 6,11,8
.LVL3450:
	add 11,11,8
	.loc 4 5986 0
	fmadd 0,0,8,6
.LVL3451:
	.loc 4 5988 0
	fcmpu 7,0,12
	beq- 7,.L2082
.LVL3452:
	.loc 4 5992 0
	fdiv 5,13,0
.LVL3453:
	.loc 4 5997 0
	lfsx 9,8,30
	.loc 4 5998 0
	fmul 13,7,9
	.loc 4 5993 0
	fmul 11,8,5
.LVL3454:
	.loc 4 5998 0
	fmadd 13,13,9,0
.LVL3455:
	.loc 4 6000 0
	fcmpu 7,13,12
	beq- 7,.L2082
	.loc 4 6004 0
	fdiv 7,7,13
.LVL3456:
	.loc 4 6010 0
	addi 3,5,1
.LVL3457:
	.loc 4 6008 0
	frsp 13,13
.LVL3458:
	.loc 4 6005 0
	fmul 10,9,7
.LVL3459:
	.loc 4 6008 0
	stfs 13,0(11)
	.loc 4 6006 0
	fmul 7,0,7
.LVL3460:
	.loc 4 6010 0
	lwz 0,0(9)
	cmpw 7,3,0
	bge- 7,.L2072
	fneg 8,8
.LVL3461:
	mr 10,12
	fneg 9,9
.LVL3462:
	mr 11,3
.LVL3463:
.L2073:
.LBB15415:
.LBB15416:
	.loc 3 2056 0 discriminator 2
	lwz 5,4(9)
.LBE15416:
.LBE15415:
	.loc 4 6012 0 discriminator 2
	lwz 4,12(9)
.LBB15418:
.LBB15417:
	.loc 3 2056 0 discriminator 2
	mullw 5,11,5
.LBE15417:
.LBE15418:
	.loc 4 6014 0 discriminator 2
	lfsu 13,4(10)
	.loc 4 6010 0 discriminator 2
	addi 11,11,1
.LVL3464:
	.loc 4 6012 0 discriminator 2
	slwi 5,5,2
	add 5,4,5
	lfsx 0,5,8
.LVL3465:
	.loc 4 6014 0 discriminator 2
	fmadd 13,8,0,13
	frsp 13,13
	.loc 4 6015 0 discriminator 2
	fmr 12,13
	.loc 4 6014 0 discriminator 2
	stfs 13,0(10)
	.loc 4 6017 0 discriminator 2
	lfsx 13,7,10
	.loc 4 6015 0 discriminator 2
	fmadd 0,12,11,0
.LVL3466:
	.loc 4 6017 0 discriminator 2
	fmadd 13,9,0,13
	frsp 13,13
	.loc 4 6018 0 discriminator 2
	fmr 12,13
	.loc 4 6017 0 discriminator 2
	stfsx 13,7,10
.LVL3467:
	.loc 4 6018 0 discriminator 2
	fmadd 0,12,10,0
.LVL3468:
	.loc 4 6020 0 discriminator 2
	frsp 0,0
	stfsx 0,5,8
	.loc 4 6010 0 discriminator 2
	lwz 0,0(9)
	cmpw 7,0,11
	bgt+ 7,.L2073
.LVL3469:
.L2072:
	.loc 4 5994 0
	lwz 11,4(9)
	.loc 4 6010 0
	mr 5,3
	.loc 4 5994 0
	fmul 13,5,6
.LVL3470:
	addi 8,8,4
	.loc 4 5982 0
	cmpw 7,5,11
	blt+ 7,.L2075
.LVL3471:
.L2107:
.LBE15396:
	.loc 4 6027 0
	addi 11,31,24
.LBB15459:
	.loc 4 6026 0
	li 3,1
.LBE15459:
	.loc 4 6027 0
	lwz 0,4(11)
	lwz 28,-16(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
.LVL3472:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI350:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI351:
	.cfi_def_cfa_register 1
.LVL3473:
	blr
.LVL3474:
.L2082:
.LCFI352:
	.cfi_restore_state
.LBB15460:
	.loc 4 6001 0
	li 3,0
.LVL3475:
.L2076:
.LBE15460:
	.loc 4 6027 0
	addi 11,31,24
	lwz 0,4(11)
	lwz 28,-16(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI353:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI354:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL3476:
.L2036:
.LCFI355:
	.cfi_restore_state
.LBB15461:
	.loc 4 5871 0
	slwi 11,7,2
.LVL3477:
	addi 0,11,45
	lwz 11,0(1)
	rlwinm 0,0,0,0,27
	neg 0,0
	stwux 11,1,0
	addi 28,1,23
	.loc 4 5872 0
	stwux 11,1,0
	.loc 4 5871 0
	rlwinm 28,28,0,0,27
.LVL3478:
	.loc 4 5872 0
	addi 10,1,23
	rlwinm 10,10,0,0,27
.LVL3479:
	.loc 4 5875 0
	ble- 6,.L2041
	mtctr 5
	li 11,0
	li 8,0
.LVL3480:
.L2042:
.LBB15419:
.LBB15420:
	.loc 3 2056 0 discriminator 2
	mullw 6,8,7
.LBE15420:
.LBE15419:
	.loc 4 8102 0 discriminator 2
	lwz 0,12(9)
.LVL3481:
	.loc 4 5875 0 discriminator 2
	addi 8,8,1
.LVL3482:
.LBB15421:
.LBB15422:
	.loc 3 2056 0 discriminator 2
	mullw 7,5,7
.LBE15422:
.LBE15421:
	.loc 4 5876 0 discriminator 2
	slwi 6,6,2
	add 6,0,6
	lfsx 0,6,11
	slwi 7,7,2
	add 7,0,7
	lfsx 13,7,11
	fmuls 0,13,0
	stfsx 0,11,10
	.loc 4 5875 0 discriminator 2
	addi 11,11,4
	lwz 7,4(9)
	bdnz .L2042
.LVL3483:
.L2041:
	.loc 4 5878 0 discriminator 1
	cmpwi 7,7,0
	slwi 8,5,2
	ble- 7,.L2043
	.loc 4 5882 0
	li 30,0
	li 3,0
.LVL3484:
	b .L2051
.LVL3485:
.L2108:
.LBB15423:
.LBB15424:
	.loc 3 2056 0
	mullw 11,3,7
.LBE15424:
.LBE15423:
	.loc 4 8102 0
	lwz 0,12(9)
.LVL3486:
	.loc 4 5886 0
	cmpwi 7,3,0
.LBB15425:
.LBB15426:
	.loc 3 2056 0
	mullw 7,5,7
.LBE15426:
.LBE15425:
	.loc 4 5880 0
	slwi 6,11,2
	add 6,0,6
	lfsx 13,6,30
	slwi 7,7,2
	add 7,0,7
	lfsx 0,7,30
	fmuls 0,13,0
.LVL3487:
	.loc 4 5886 0
	bne- 7,.L2045
.LVL3488:
.L2046:
	.loc 4 5878 0
	lwz 7,4(9)
	addi 3,3,1
.LVL3489:
	.loc 4 5889 0
	frsp 0,0
.LVL3490:
	.loc 4 5878 0
	cmpw 7,7,3
	.loc 4 5889 0
	stfsx 0,30,28
	.loc 4 5878 0
	addi 30,30,4
	ble- 7,.L2043
.LVL3491:
.L2051:
	.loc 4 5879 0
	cmpw 7,5,3
	bgt- 7,.L2108
	.loc 4 5881 0
	cmpw 7,3,5
	beq- 7,.L2109
.LBB15427:
.LBB15428:
	.loc 3 2056 0
	mullw 6,5,7
.LBE15428:
.LBE15427:
	.loc 4 8102 0
	lwz 0,12(9)
.LVL3492:
	.loc 4 5886 0
	cmpwi 7,3,0
.LBB15429:
.LBB15430:
	.loc 3 2056 0
	mullw 11,3,7
.LBE15430:
.LBE15429:
	.loc 4 5884 0
	slwi 7,6,2
	add 7,0,7
	lfsx 13,7,8
	slwi 7,11,2
	add 7,0,7
	lfsx 0,7,8
	fmuls 0,13,0
.LVL3493:
	.loc 4 5886 0
	beq+ 7,.L2046
.LVL3494:
.L2045:
	ble- 6,.L2046
	slwi 11,11,2
	.loc 4 5847 0
	mtctr 3
	.loc 4 5886 0
	add 29,0,11
	.loc 4 5847 0
	li 7,0
	addi 11,29,-4
.LVL3495:
.L2049:
	.loc 4 5886 0 discriminator 5
	addi 11,11,4
	addi 7,7,1
	.loc 4 5847 0 discriminator 5
	subf 6,29,11
	.loc 4 5887 0 discriminator 5
	lfs 12,0(11)
	lfsx 13,6,10
	.loc 4 5886 0 discriminator 5
	cmpw 7,7,5
	.loc 4 5887 0 discriminator 5
	fmuls 13,12,13
	fadd 0,0,13
.LVL3496:
	.loc 4 5886 0 discriminator 5
	bdz .L2046
	.loc 4 5886 0 is_stmt 0 discriminator 2
	bne- 7,.L2049
	.loc 4 5878 0 is_stmt 1
	lwz 7,4(9)
.LVL3497:
	addi 3,3,1
.LVL3498:
	.loc 4 5889 0
	frsp 0,0
.LVL3499:
	.loc 4 5878 0
	cmpw 7,7,3
	.loc 4 5889 0
	stfsx 0,30,28
	.loc 4 5878 0
	addi 30,30,4
	bgt+ 7,.L2051
.LVL3500:
.L2043:
	.loc 4 5893 0 discriminator 1
	ble- 6,.L2053
.LVL3501:
.LBB15431:
.LBB15432:
	.loc 2 1532 0
	lwz 11,8(4)
.LBE15432:
.LBE15431:
	.loc 4 5894 0
	mr 29,28
	lfs 13,0(28)
	li 3,0
	lfs 0,0(11)
	li 30,0
	fadds 0,13,0
.LVL3502:
.L2102:
	.loc 4 5893 0
	addi 3,3,1
.LVL3503:
	.loc 4 5898 0
	frsp 0,0
.LVL3504:
	.loc 4 5893 0
	cmpw 7,3,5
	.loc 4 5898 0
	stfsx 0,10,30
	.loc 4 5893 0
	beq- 7,.L2110
.LVL3505:
.L2056:
.LBB15434:
.LBB15433:
	.loc 2 1532 0
	lwz 11,8(4)
.LBE15433:
.LBE15434:
	.loc 4 5895 0
	cmpwi 7,3,0
	.loc 4 5847 0
	slwi 30,3,2
.LVL3506:
	.loc 4 5894 0
	lfsu 13,4(29)
	lfsx 0,11,30
	fadds 0,13,0
.LVL3507:
	.loc 4 5895 0
	ble- 7,.L2102
.LVL3508:
	lwz 0,4(9)
	mtctr 3
	lwz 6,12(9)
	mullw 0,3,0
	slwi 0,0,2
	add 6,6,0
	.loc 4 5847 0
	addi 11,6,-4
.LVL3509:
.L2055:
	.loc 4 5895 0 discriminator 2
	addi 11,11,4
	.loc 4 5847 0 discriminator 2
	subf 7,6,11
	.loc 4 5896 0 discriminator 2
	lfs 12,0(11)
	lfsx 13,7,10
	fmuls 13,12,13
	fsub 0,0,13
.LVL3510:
	.loc 4 5895 0 discriminator 2
	bdnz .L2055
	.loc 4 5893 0
	addi 3,3,1
.LVL3511:
	.loc 4 5898 0
	frsp 0,0
.LVL3512:
	.loc 4 5893 0
	cmpw 7,3,5
	.loc 4 5898 0
	stfsx 0,10,30
	.loc 4 5893 0
	bne+ 7,.L2056
.LVL3513:
.L2110:
	lwz 6,4(9)
	li 11,0
	li 7,0
	mtctr 5
	b .L2057
.LVL3514:
.L2099:
	.loc 4 5902 0
	lwz 6,4(9)
.LVL3515:
.L2057:
.LBB15435:
.LBB15436:
	.loc 3 2056 0 discriminator 2
	mullw 3,7,6
.LBE15436:
.LBE15435:
	.loc 4 8102 0 discriminator 2
	lwz 0,12(9)
.LVL3516:
	.loc 4 5903 0 discriminator 2
	lfsx 13,11,10
	.loc 4 5902 0 discriminator 2
	addi 7,7,1
.LVL3517:
	.loc 4 5903 0 discriminator 2
	slwi 3,3,2
.LBB15437:
.LBB15438:
	.loc 3 2056 0 discriminator 2
	mullw 6,5,6
.LBE15438:
.LBE15437:
	.loc 4 5903 0 discriminator 2
	add 3,0,3
	lfsx 0,3,11
	fdivs 0,13,0
	slwi 6,6,2
	add 6,0,6
	stfsx 0,6,11
	.loc 4 5902 0 discriminator 2
	addi 11,11,4
	bdnz .L2099
	lwz 7,4(9)
.LVL3518:
.L2053:
	.loc 4 5907 0
	addi 0,7,-1
	mr 6,7
	cmpw 7,0,5
	beq- 7,.L2058
.LVL3519:
	.loc 4 5921 0 discriminator 1
	ble- 6,.L2060
	.loc 4 5921 0 is_stmt 0
	li 11,0
	li 7,0
	mtctr 5
	b .L2059
.LVL3520:
.L2111:
	lwz 6,4(9)
.LVL3521:
.L2059:
.LBB15439:
.LBB15440:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 3,7,6
.LBE15440:
.LBE15439:
	.loc 4 8102 0 discriminator 2
	lwz 0,12(9)
.LVL3522:
	.loc 4 5921 0 discriminator 2
	addi 7,7,1
.LVL3523:
.LBB15441:
.LBB15442:
	.loc 3 2056 0 discriminator 2
	mullw 6,5,6
.LBE15442:
.LBE15441:
	.loc 4 5922 0 discriminator 2
	slwi 3,3,2
	add 3,0,3
	lfsx 0,3,11
	slwi 6,6,2
	add 6,0,6
	lfsx 13,6,11
	fmuls 0,13,0
	stfsx 0,11,10
	.loc 4 5921 0 discriminator 2
	addi 11,11,4
	bdnz .L2111
	.loc 4 5921 0 is_stmt 0
	lwz 7,4(9)
.LVL3524:
.L2060:
	.loc 4 5924 0 is_stmt 1 discriminator 1
	cmpw 7,5,7
	mr 29,8
	mr 3,8
	mr 30,5
	bge- 7,.L2039
	.loc 4 5925 0
	cmpw 7,30,5
	beq- 7,.L2112
.LVL3525:
.L2065:
.LBB15443:
.LBB15444:
	.loc 3 2056 0
	mullw 11,5,7
.LBE15444:
.LBE15443:
	.loc 4 8102 0
	lwz 0,12(9)
.LVL3526:
.LBB15445:
.LBB15446:
	.loc 3 2056 0
	mullw 7,30,7
.LBE15446:
.LBE15445:
	.loc 4 5928 0
	slwi 11,11,2
	add 11,0,11
	lfsx 13,11,8
	slwi 11,7,2
	add 11,0,11
	lfsx 0,11,8
	fmuls 0,13,0
.LVL3527:
.L2066:
	.loc 4 5930 0 discriminator 1
	ble- 6,.L2067
	.loc 4 5930 0 is_stmt 0
	slwi 7,7,2
	.loc 4 5847 0 is_stmt 1
	mtctr 5
	.loc 4 5930 0
	add 6,0,7
	.loc 4 5847 0
	addi 11,6,-4
.LVL3528:
.L2068:
	.loc 4 5930 0 discriminator 2
	addi 11,11,4
	.loc 4 5847 0 discriminator 2
	subf 7,6,11
	.loc 4 5931 0 discriminator 2
	lfs 12,0(11)
	lfsx 13,7,10
	fmuls 13,12,13
	fadd 0,0,13
.LVL3529:
	.loc 4 5930 0 discriminator 2
	bdnz .L2068
.L2067:
.LVL3530:
	.loc 4 5933 0
	lfsx 13,3,28
	.loc 4 5924 0
	addi 30,30,1
.LVL3531:
.LBB15447:
.LBB15448:
	.loc 2 1532 0
	lwz 11,8(4)
.LBE15448:
.LBE15447:
	.loc 4 5933 0
	fsub 0,0,13
.LVL3532:
	.loc 4 5924 0
	lwz 7,4(9)
	.loc 4 5933 0
	lfsx 13,11,3
	.loc 4 5924 0
	cmpw 7,7,30
	.loc 4 5933 0
	fsub 0,13,0
	frsp 0,0
	stfsx 0,12,3
	.loc 4 5924 0
	addi 3,3,4
	ble- 7,.L2039
	.loc 4 5925 0
	cmpw 7,30,5
	bne+ 7,.L2065
.LVL3533:
.L2112:
.LBB15449:
.LBB15450:
	.loc 3 2056 0
	mullw 7,30,7
.LBE15450:
.LBE15449:
	.loc 4 5926 0
	lwz 0,12(9)
	slwi 11,7,2
	add 11,0,11
	lfsx 0,11,8
.LVL3534:
	b .L2066
.LVL3535:
.L2109:
.LBB15451:
.LBB15452:
	.loc 3 2056 0
	mullw 11,3,7
.LBE15452:
.LBE15451:
	.loc 4 5882 0
	lwz 0,12(9)
	slwi 7,11,2
	add 7,0,7
	lfsx 0,7,8
.LVL3536:
	b .L2045
.LVL3537:
.L2037:
.LBB15453:
.LBB15454:
	.loc 2 1532 0
	lwz 11,8(4)
.LVL3538:
.LBE15454:
.LBE15453:
	.loc 4 5863 0
	li 3,1
	.loc 4 8102 0
	lwz 9,12(9)
.LVL3539:
	.loc 4 5862 0
	lfs 0,0(11)
.LBE15461:
	.loc 4 6027 0
	addi 11,31,24
.LBB15462:
	.loc 4 5862 0
	lfs 13,0(9)
	fadds 0,13,0
	stfs 0,0(9)
.LBE15462:
	.loc 4 6027 0
	lwz 0,4(11)
	lwz 28,-16(11)
	mtlr 0
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI356:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI357:
	.cfi_def_cfa_register 1
	blr
.LVL3540:
.L2058:
.LCFI358:
	.cfi_restore_state
.LBB15463:
.LBB15455:
.LBB15456:
	.loc 2 1532 0
	lwz 11,8(4)
.LBE15456:
.LBE15455:
	.loc 4 5909 0
	lfsx 13,28,8
	lfsx 0,11,8
	fadds 0,13,0
.LVL3541:
	.loc 4 5910 0
	ble- 6,.L2061
	mullw 0,7,5
	cmpwi 7,5,0
	lwz 4,12(9)
.LVL3542:
	mtctr 5
	slwi 0,0,2
	add 4,4,0
	.loc 4 5847 0
	addi 11,4,-4
	ble- 7,.L2113
.LVL3543:
.L2062:
	.loc 4 5910 0 discriminator 2
	addi 11,11,4
	.loc 4 5847 0 discriminator 2
	subf 6,4,11
	.loc 4 5911 0 discriminator 2
	lfs 12,0(11)
	lfsx 13,6,10
	fmuls 13,12,13
	fsub 0,0,13
.LVL3544:
	.loc 4 5910 0 discriminator 2
	bdnz .L2062
.L2061:
	.loc 4 5913 0
	lis 11,.LC11@ha
	.loc 4 5914 0
	li 3,0
	.loc 4 5913 0
	lfd 13,.LC11@l(11)
	fcmpu 7,0,13
	beq- 7,.L2076
.LVL3545:
.LBB15457:
.LBB15458:
	.loc 3 2056 0
	mullw 0,5,7
.LBE15458:
.LBE15457:
	.loc 4 5916 0
	lwz 9,12(9)
.LVL3546:
	frsp 0,0
.LVL3547:
	.loc 4 5917 0
	li 3,1
	.loc 4 5916 0
	slwi 0,0,2
	add 9,9,0
	stfsx 0,9,8
	b .L2076
.LVL3548:
.L2113:
	li 0,1
	mtctr 0
	b .L2062
.LBE15463:
	.cfi_endproc
.LFE2637:
	.size	_ZN6idMatX20LDLT_UpdateRowColumnERK6idVecXi, .-_ZN6idMatX20LDLT_UpdateRowColumnERK6idVecXi
	.align 2
	.globl _ZN6idMatX20LDLT_UpdateIncrementERK6idVecX
	.type	_ZN6idMatX20LDLT_UpdateIncrementERK6idVecX, @function
_ZN6idMatX20LDLT_UpdateIncrementERK6idVecX:
.LFB2638:
	.loc 4 6041 0
	.cfi_startproc
.LVL3549:
	mflr 0
	stwu 1,-24(1)
.LCFI359:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
.LBB15464:
	.loc 4 6049 0
	li 6,0
.LBE15464:
	.loc 4 6041 0
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 0,28(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	stw 31,20(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI360:
	.cfi_def_cfa_register 31
.LBB15481:
	.loc 4 6049 0
	lwz 9,0(3)
	lwz 5,4(3)
	addi 4,9,1
.LVL3550:
	addi 5,5,1
	bl _ZN6idMatX10ChangeSizeEiib
.LVL3551:
	.loc 4 6051 0
	lwz 11,0(30)
	lwz 10,0(1)
	slwi 9,11,2
	.loc 4 6054 0
	addic. 0,11,-1
	.loc 4 6051 0
	addi 9,9,45
	rlwinm 9,9,0,0,27
	neg 9,9
	stwux 10,1,9
	addi 10,1,23
	rlwinm 10,10,0,0,27
.LVL3552:
	.loc 4 6054 0
	ble- 0,.L2130
.LVL3553:
.LBB15465:
.LBB15466:
	.loc 2 1532 0
	lwz 9,8(29)
.LBE15466:
.LBE15465:
	.loc 4 6054 0
	li 7,0
	.loc 2 1532 0
	li 6,0
	.loc 4 6055 0
	lfs 0,0(9)
.LVL3554:
.L2128:
	.loc 4 6054 0
	lwz 11,0(30)
	addi 7,7,1
.LVL3555:
	.loc 4 6059 0
	frsp 0,0
.LVL3556:
	.loc 4 6054 0
	addi 0,11,-1
	cmpw 7,0,7
	.loc 4 6059 0
	stfsx 0,10,6
	.loc 4 6054 0
	ble- 7,.L2131
.LVL3557:
.L2119:
	.loc 4 6056 0
	cmpwi 7,7,0
.LBB15468:
.LBB15467:
	.loc 2 1532 0
	lwz 9,8(29)
.LBE15467:
.LBE15468:
	.loc 4 6041 0
	slwi 6,7,2
	.loc 4 6055 0
	lfsx 0,9,6
.LVL3558:
	.loc 4 6056 0
	ble- 7,.L2128
.LVL3559:
	lwz 8,4(30)
.LBE15481:
	mtctr 7
.LBB15482:
	lwz 0,12(30)
	mullw 8,7,8
	slwi 8,8,2
	add 8,0,8
	.loc 4 6041 0
	addi 9,8,-4
.LVL3560:
.L2118:
	.loc 4 6056 0 discriminator 2
	addi 9,9,4
	.loc 4 6041 0 discriminator 2
	subf 11,8,9
	.loc 4 6057 0 discriminator 2
	lfs 12,0(9)
	lfsx 13,11,10
	fmuls 13,12,13
	fsub 0,0,13
.LVL3561:
	.loc 4 6056 0 discriminator 2
	bdnz .L2118
	.loc 4 6054 0
	lwz 11,0(30)
	addi 7,7,1
.LVL3562:
	.loc 4 6059 0
	frsp 0,0
.LVL3563:
	.loc 4 6054 0
	addi 0,11,-1
	cmpw 7,0,7
	.loc 4 6059 0
	stfsx 0,10,6
	.loc 4 6054 0
	bgt+ 7,.L2119
.LVL3564:
.L2131:
	.loc 4 6064 0
	cmpwi 7,0,0
.LBB15469:
.LBB15470:
	.loc 2 1532 0
	lwz 8,8(29)
	slwi 9,0,2
.LBE15470:
.LBE15469:
	.loc 4 6063 0
	lfsx 13,8,9
.LVL3565:
	.loc 4 6064 0
	ble- 7,.L2120
	lwz 7,4(30)
	li 9,0
	li 8,0
	b .L2121
.LVL3566:
.L2132:
	lwz 7,4(30)
.LVL3567:
.L2121:
.LBB15472:
.LBB15473:
	.loc 3 2056 0 discriminator 2
	mullw 6,8,7
.LBE15473:
.LBE15472:
	.loc 4 8102 0 discriminator 2
	lwz 11,12(30)
.LVL3568:
	.loc 4 6065 0 discriminator 2
	lfsx 12,9,10
	.loc 4 6064 0 discriminator 2
	addi 8,8,1
.LVL3569:
	.loc 4 6065 0 discriminator 2
	slwi 6,6,2
.LBB15474:
.LBB15475:
	.loc 3 2056 0 discriminator 2
	mullw 0,0,7
.LVL3570:
.LBE15475:
.LBE15474:
	.loc 4 6065 0 discriminator 2
	add 6,11,6
	lfsx 0,6,9
	fdivs 0,12,0
.LVL3571:
	slwi 0,0,2
	add 11,11,0
	stfsx 0,11,9
	.loc 4 6064 0 discriminator 2
	lwz 11,0(30)
	.loc 4 6066 0 discriminator 2
	lfsx 12,9,10
	.loc 4 6064 0 discriminator 2
	addi 9,9,4
	addi 0,11,-1
	cmpw 7,0,8
	.loc 4 6041 0 discriminator 2
	fneg 12,12
	.loc 4 6066 0 discriminator 2
	fmadd 13,12,0,13
.LVL3572:
	.loc 4 6064 0 discriminator 2
	bgt+ 7,.L2132
.LVL3573:
.L2120:
	.loc 4 6069 0
	lis 9,.LC11@ha
	.loc 4 6070 0
	li 3,0
	.loc 4 6069 0
	lfd 0,.LC11@l(9)
	fcmpu 7,13,0
	beq- 7,.L2122
.LVL3574:
.LBB15476:
.LBB15477:
	.loc 3 2056 0
	lwz 9,4(30)
.LBE15477:
.LBE15476:
	.loc 4 6074 0
	frsp 13,13
.LVL3575:
	lwz 10,12(30)
	.loc 4 6076 0
	li 3,1
.LBB15479:
.LBB15478:
	.loc 3 2056 0
	mullw 0,0,9
.LVL3576:
.LBE15478:
.LBE15479:
	.loc 4 6074 0
	addi 9,11,-1
	slwi 9,9,2
	slwi 0,0,2
	add 11,10,0
	stfsx 13,11,9
.L2122:
.LBE15482:
	.loc 4 6077 0
	addi 11,31,24
	lwz 0,4(11)
	lwz 29,-12(11)
.LVL3577:
	mtlr 0
	lwz 30,-8(11)
.LVL3578:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI361:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI362:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
.LVL3579:
	blr
.LVL3580:
.L2130:
.LCFI363:
	.cfi_restore_state
.LBB15483:
.LBB15480:
.LBB15471:
	.loc 2 1532 0
	lwz 10,8(29)
.LVL3581:
	slwi 9,0,2
.LBE15471:
.LBE15480:
	.loc 4 6063 0
	lfsx 13,10,9
.LVL3582:
	b .L2120
.LBE15483:
	.cfi_endproc
.LFE2638:
	.size	_ZN6idMatX20LDLT_UpdateIncrementERK6idVecX, .-_ZN6idMatX20LDLT_UpdateIncrementERK6idVecX
	.align 2
	.globl _ZN6idMatX20LDLT_UpdateDecrementERK6idVecXi
	.type	_ZN6idMatX20LDLT_UpdateDecrementERK6idVecXi, @function
_ZN6idMatX20LDLT_UpdateDecrementERK6idVecXi:
.LFB2639:
	.loc 4 6087 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2639
.LVL3583:
	mflr 0
	stwu 1,-64(1)
.LCFI364:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	mfcr 12
	stw 24,32(1)
	mr 24,5
	.cfi_offset 24, -32
	.cfi_register 70, 12
	stw 0,68(1)
	stw 25,36(1)
	mr 25,3
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	stw 31,60(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI365:
	.cfi_def_cfa_register 31
.LVL3584:
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	stw 12,28(1)
.LBB15511:
	.loc 4 6094 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
.LBB15512:
.LBB15513:
	.loc 2 1762 0
	stw 9,8(31)
.LBE15513:
.LBE15512:
	.loc 4 6094 0
	rlwinm 0,0,0,0,29
	slwi 11,0,2
.LBB15519:
.LBB15514:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE15514:
.LBE15519:
	.loc 4 6094 0
	subfic 11,11,-32
.LBB15520:
.LBB15515:
	.loc 2 1763 0
	li 0,-1
.LBE15515:
.LBE15520:
	.loc 4 6094 0
	stwux 10,1,11
.LBB15521:
.LBB15516:
	.loc 2 1763 0
	stw 0,12(31)
.LBE15516:
.LBE15521:
	.loc 4 6094 0
	addi 11,1,23
.LVL3585:
	rlwinm 11,11,0,0,27
.LVL3586:
.LBB15522:
.LBB15517:
	.loc 2 1761 0
	stw 11,16(31)
	.loc 2 1764 0
	bge- 7,.L2136
	.cfi_offset 70, -36
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
.LVL3587:
	slwi 10,9,2
	li 8,0
	b .L2137
.LVL3588:
.L2164:
	lwz 11,16(31)
.L2137:
	addi 9,9,1
.LVL3589:
	stwx 8,11,10
	.loc 4 6087 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2164
.L2136:
.LBE15517:
.LBE15522:
.LBB15523:
.LBB15524:
	.loc 2 1544 0
	lwz 30,0(4)
.LBB15525:
.LBB15526:
	.loc 2 1748 0
	lis 27,_ZN6idVecX9tempIndexE@ha
	lwz 29,_ZN6idVecX9tempIndexE@l(27)
.LBE15526:
.LBE15525:
.LBE15524:
.LBE15523:
.LBB15535:
.LBB15518:
	.loc 4 8102 0
	addi 8,4,8
.LVL3590:
.LBE15518:
.LBE15535:
.LBB15536:
.LBB15533:
.LBB15530:
.LBB15527:
	.loc 2 1746 0
	addi 28,30,3
	rlwinm 28,28,0,0,29
	.loc 2 1748 0
	add 0,28,29
	slwi 29,29,2
	cmpwi 7,0,1024
	ble- 7,.L2138
.LVL3591:
	.loc 2 1746 0
	mr 0,28
	.loc 2 1748 0
	li 29,0
.LVL3592:
.L2138:
	.loc 2 1753 0
	cmpw 4,30,28
	.loc 2 1751 0
	lis 26,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(26)
.LVL3593:
	.loc 2 1752 0
	stw 0,_ZN6idVecX9tempIndexE@l(27)
.LVL3594:
	.loc 2 1751 0
	add 29,9,29
	.loc 2 1753 0
	bge- 4,.L2139
	.loc 4 6087 0
	addi 11,30,-1
	mr 9,30
	slwi 11,11,2
	.loc 2 1753 0
	li 10,0
	.loc 4 6087 0
	add 11,29,11
.LVL3595:
.L2140:
	.loc 2 1753 0
	addi 9,9,1
.LVL3596:
	stwu 10,4(11)
	.loc 4 6087 0
	addi 0,9,3
	.loc 2 1753 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2140
.LVL3597:
.L2139:
.LBE15527:
.LBE15530:
	.loc 2 1545 0
	lwz 0,0(4)
	cmpwi 7,0,0
	ble- 7,.L2141
	.loc 4 6087 0
	addi 11,29,-4
.LBB15531:
.LBB15528:
	li 9,0
.LVL3598:
.L2142:
.LBE15528:
.LBE15531:
	.loc 2 1546 0
	lwz 10,0(8)
	slwi 0,9,2
	.loc 2 1545 0
	addi 9,9,1
.LVL3599:
	.loc 2 1546 0
	lfsx 0,10,0
	fneg 0,0
	stfsu 0,4(11)
	.loc 2 1545 0
	lwz 0,0(4)
	cmpw 7,9,0
	blt+ 7,.L2142
.LVL3600:
.L2141:
.LBE15533:
.LBE15536:
.LBB15537:
.LBB15538:
.LBB15539:
.LBB15540:
	.loc 2 1709 0
	lwz 0,12(31)
	cmpw 7,28,0
	ble- 7,.L2163
	cmpwi 7,0,-1
	beq- 7,.L2163
	.loc 2 1710 0
	lwz 3,16(31)
.LVL3601:
	cmpwi 7,3,0
	beq- 7,.L2146
.LEHB92:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL3602:
.L2146:
	.loc 2 1713 0
	slwi 3,28,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,16(31)
	.loc 2 1714 0
	stw 28,12(31)
	b .L2144
.LVL3603:
.L2163:
	.loc 2 1709 0
	lwz 4,16(31)
.LVL3604:
.L2144:
	.loc 2 1716 0
	stw 30,8(31)
.LVL3605:
	.loc 2 1717 0
	bge- 4,.L2147
	slwi 11,30,2
.LBE15540:
.LBE15539:
.LBE15538:
.LBE15537:
.LBB15545:
.LBB15534:
.LBB15532:
.LBB15529:
	.loc 4 6087 0
	mr 9,30
.LBE15529:
.LBE15532:
.LBE15534:
.LBE15545:
.LBB15546:
.LBB15543:
.LBB15542:
.LBB15541:
	.loc 2 1717 0
	li 10,0
.LVL3606:
.L2149:
	addi 9,9,1
.LVL3607:
	stwx 10,4,11
	.loc 4 6087 0
	addi 0,9,3
	.loc 2 1717 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	lwz 4,16(31)
	cmpw 7,9,0
	blt+ 7,.L2149
.LVL3608:
.L2147:
.LBE15541:
.LBE15542:
	.loc 2 1554 0
	lis 9,SIMDProcessor@ha
	mr 5,29
	lwz 3,SIMDProcessor@l(9)
	mr 6,30
	lwz 9,0(3)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LEHE92:
.LBE15543:
.LBE15546:
.LBB15547:
.LBB15548:
.LBB15549:
	.loc 2 1525 0
	cmpwi 7,29,0
.LBE15549:
.LBE15548:
.LBE15547:
.LBB15554:
.LBB15544:
	.loc 2 1558 0
	li 0,0
	stw 0,_ZN6idVecX9tempIndexE@l(27)
.LBE15544:
.LBE15554:
.LBB15555:
.LBB15552:
.LBB15550:
	.loc 2 1525 0
	beq- 7,.L2150
	lwz 9,_ZN6idVecX7tempPtrE@l(26)
	cmplw 7,29,9
	bge- 7,.L2165
	.loc 2 1526 0
	mr 3,29
.LEHB93:
	bl _Z10Mem_Free16Pv
.LEHE93:
.L2150:
.LVL3609:
.LBE15550:
.LBE15552:
.LBE15555:
.LBB15556:
.LBB15557:
	.loc 2 1537 0
	lwz 9,16(31)
	slwi 0,24,2
.LBE15557:
.LBE15556:
	.loc 4 6098 0
	lis 11,.LC1@ha
	.loc 4 6105 0
	mr 3,25
	.loc 4 6098 0
	lfsx 13,9,0
	.loc 4 6105 0
	addi 4,31,8
	.loc 4 6098 0
	lfs 0,.LC1@l(11)
	.loc 4 6105 0
	mr 5,24
	.loc 4 6108 0
	li 30,0
.LVL3610:
	.loc 4 6098 0
	fadds 0,13,0
	stfsx 0,9,0
	.loc 4 6105 0
	bl _ZN6idMatX20LDLT_UpdateRowColumnERK6idVecXi
.LVL3611:
	.loc 4 6106 0
	cmpwi 7,3,0
	beq+ 7,.L2152
	.loc 4 6112 0
	mr 3,25
.LVL3612:
	mr 4,24
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 6114 0
	li 30,1
.L2152:
	lwz 3,16(31)
	lwz 0,12(31)
.LBB15558:
.LBB15559:
.LBB15560:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L2153
	lwz 9,_ZN6idVecX7tempPtrE@l(26)
	cmplw 7,3,9
	bge- 7,.L2166
	cmpwi 7,0,-1
	beq- 7,.L2153
.L2167:
.LEHB94:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE94:
.L2153:
.LBE15560:
.LBE15559:
.LBE15558:
.LBE15511:
	.loc 4 6115 0
	addi 11,31,64
	mr 3,30
	lwz 0,4(11)
	lwz 12,-36(11)
	mtlr 0
	lwz 24,-32(11)
.LVL3613:
	lwz 25,-28(11)
.LVL3614:
	mtcrf 8,12
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
.LVL3615:
	lwz 29,-12(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI366:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI367:
	.cfi_def_cfa_register 1
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
.LVL3616:
.L2166:
.LCFI368:
	.cfi_restore_state
.LBB15565:
.LBB15563:
.LBB15562:
.LBB15561:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2153
	cmpwi 7,0,-1
	bne+ 7,.L2167
	b .L2153
.LVL3617:
.L2165:
.LBE15561:
.LBE15562:
.LBE15563:
.LBB15564:
.LBB15553:
.LBB15551:
	addi 9,9,4096
	cmplw 7,29,9
	blt- 7,.L2150
	.loc 2 1526 0
	mr 3,29
.LEHB95:
	bl _Z10Mem_Free16Pv
.LEHE95:
	b .L2150
.L2159:
	mr 30,3
.LVL3618:
.L2156:
.LBE15551:
.LBE15553:
.LBE15564:
	.loc 4 6114 0
	lwz 3,12(31)
	lwz 4,16(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB96:
	bl _Unwind_Resume
.LEHE96:
.LVL3619:
.L2160:
	mr 30,3
.LVL3620:
	.loc 4 6097 0
	mr 4,29
	mr 3,28
	bl _ZN6idVecXD2Ev.isra.6
	b .L2156
.LBE15565:
	.cfi_endproc
.LFE2639:
	.section	.gcc_except_table
.LLSDA2639:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2639-.LLSDACSB2639
.LLSDACSB2639:
	.uleb128 .LEHB92-.LFB2639
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L2160-.LFB2639
	.uleb128 0
	.uleb128 .LEHB93-.LFB2639
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L2159-.LFB2639
	.uleb128 0
	.uleb128 .LEHB94-.LFB2639
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB95-.LFB2639
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L2159-.LFB2639
	.uleb128 0
	.uleb128 .LEHB96-.LFB2639
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE2639:
	.section	".text"
	.size	_ZN6idMatX20LDLT_UpdateDecrementERK6idVecXi, .-_ZN6idMatX20LDLT_UpdateDecrementERK6idVecXi
	.align 2
	.globl _ZNK6idMatX10LDLT_SolveER6idVecXRKS0_
	.type	_ZNK6idMatX10LDLT_SolveER6idVecXRKS0_, @function
_ZNK6idMatX10LDLT_SolveER6idVecXRKS0_:
.LFB2640:
	.loc 4 6124 0
	.cfi_startproc
.LVL3621:
.LBB15566:
	.loc 4 6132 0
	lwz 9,0(3)
	cmpwi 7,9,0
	ble- 7,.L2170
.LVL3622:
.LBB15567:
.LBB15568:
	.loc 2 1532 0
	lwz 9,8(5)
.LBE15568:
.LBE15567:
	.loc 4 6132 0
	li 8,0
	.loc 4 6133 0
	lwz 10,8(4)
	.loc 2 1532 0
	li 7,0
	.loc 4 6133 0
	lfs 0,0(9)
.LVL3623:
.L2184:
	.loc 4 6137 0
	frsp 0,0
.LVL3624:
	.loc 4 6132 0
	addi 8,8,1
.LVL3625:
	.loc 4 6137 0
	stfsx 0,10,7
	.loc 4 6132 0
	lwz 9,0(3)
	cmpw 7,9,8
	ble- 7,.L2185
.LVL3626:
.L2174:
	.loc 4 6134 0
	cmpwi 7,8,0
.LBB15570:
.LBB15569:
	.loc 2 1532 0
	lwz 9,8(5)
.LBE15569:
.LBE15570:
	.loc 4 6124 0
	slwi 7,8,2
	.loc 4 6133 0
	lfsx 0,9,7
.LVL3627:
	.loc 4 6134 0
	ble- 7,.L2186
	lwz 11,4(3)
.LBE15566:
	mtctr 8
.LBB15577:
	.loc 4 6124 0
	lwz 0,12(3)
.LBE15577:
	.loc 4 6134 0
	li 9,0
.LBB15578:
	mullw 11,8,11
	lwz 10,8(4)
	.loc 4 6124 0
	slwi 11,11,2
	add 11,0,11
	addi 11,11,-4
.LVL3628:
.L2173:
	.loc 4 6135 0 discriminator 2
	slwi 0,9,2
	lfsu 12,4(11)
	lfsx 13,10,0
	.loc 4 6134 0 discriminator 2
	addi 9,9,1
.LVL3629:
	.loc 4 6135 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL3630:
	.loc 4 6134 0 discriminator 2
	bdnz .L2173
.LVL3631:
	.loc 4 6137 0
	frsp 0,0
.LVL3632:
	.loc 4 6132 0
	addi 8,8,1
.LVL3633:
	.loc 4 6137 0
	stfsx 0,10,7
	.loc 4 6132 0
	lwz 9,0(3)
.LVL3634:
	cmpw 7,9,8
	bgt+ 7,.L2174
.LVL3635:
.L2185:
	.loc 4 6141 0 discriminator 1
	cmpwi 7,9,0
	ble- 7,.L2170
	.loc 4 6141 0 is_stmt 0
	lwz 8,4(3)
	li 11,0
	b .L2175
.LVL3636:
.L2187:
	lwz 8,4(3)
.LVL3637:
.L2175:
.LBB15571:
.LBB15572:
	.loc 3 2051 0 is_stmt 1 discriminator 2
	mullw 8,11,8
.LBE15572:
.LBE15571:
	.loc 4 6142 0 discriminator 2
	lwz 0,12(3)
.LBB15573:
.LBB15574:
	.loc 2 1537 0 discriminator 2
	lwz 10,8(4)
.LVL3638:
.LBE15574:
.LBE15573:
	.loc 4 6124 0 discriminator 2
	slwi 9,11,2
	.loc 4 6141 0 discriminator 2
	addi 11,11,1
.LVL3639:
	.loc 4 6142 0 discriminator 2
	lfsx 13,10,9
	slwi 8,8,2
	add 8,0,8
	lfsx 0,8,9
	fdivs 0,13,0
	stfsx 0,10,9
	.loc 4 6141 0 discriminator 2
	lwz 9,0(3)
	cmpw 7,9,11
	bgt+ 7,.L2187
.LVL3640:
.L2170:
	.loc 4 6146 0
	addic. 7,9,-2
	bltlr- 0
	slwi 7,7,2
	.loc 4 6124 0
	addi 8,9,-1
.LVL3641:
.L2179:
	.loc 4 6148 0
	cmpw 7,8,9
	.loc 4 8102 0
	lwz 10,8(4)
.LBB15575:
.LBB15576:
	.loc 2 1537 0
	add 6,10,7
.LBE15576:
.LBE15575:
	.loc 4 6147 0
	lfsx 0,10,7
.LVL3642:
	.loc 4 6148 0
	bge- 7,.L2177
	lwz 0,4(3)
	.loc 4 6124 0
	subf 9,8,9
	lwz 5,12(3)
	mtctr 9
	mullw 12,8,0
	addi 11,7,4
	slwi 0,0,2
	slwi 9,12,2
	add 9,9,7
	add 9,5,9
.LVL3643:
.L2178:
	.loc 4 6149 0 discriminator 2
	lfs 12,0(9)
	.loc 4 6148 0 discriminator 2
	add 9,9,0
	.loc 4 6149 0 discriminator 2
	lfsx 13,10,11
	.loc 4 6148 0 discriminator 2
	addi 11,11,4
	.loc 4 6149 0 discriminator 2
	fmuls 13,12,13
	fsub 0,0,13
.LVL3644:
	.loc 4 6148 0 discriminator 2
	bdnz .L2178
.L2177:
	.loc 4 6146 0
	addic. 8,8,-1
	.loc 4 6151 0
	frsp 0,0
.LVL3645:
	addi 7,7,-4
	stfs 0,0(6)
	.loc 4 6146 0
	beqlr- 0
	lwz 9,0(3)
	b .L2179
.LVL3646:
.L2186:
	.loc 4 6134 0
	lwz 10,8(4)
	b .L2184
.LBE15578:
	.cfi_endproc
.LFE2640:
	.size	_ZNK6idMatX10LDLT_SolveER6idVecXRKS0_, .-_ZNK6idMatX10LDLT_SolveER6idVecXRKS0_
	.align 2
	.globl _ZNK6idMatX12LDLT_InverseERS_
	.type	_ZNK6idMatX12LDLT_InverseERS_, @function
_ZNK6idMatX12LDLT_InverseERS_:
.LFB2641:
	.loc 4 6162 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2641
.LVL3647:
	mflr 0
	stwu 1,-72(1)
.LCFI369:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 27,52(1)
	stw 0,76(1)
	stw 29,60(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	stw 30,64(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,68(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI370:
	.cfi_def_cfa_register 31
.LVL3648:
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 28,56(1)
.LBB15609:
	.loc 4 6168 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 27,9
	rlwinm 0,0,0,0,29
.LBB15610:
.LBB15611:
	.loc 2 1762 0
	stw 9,20(31)
.LBE15611:
.LBE15610:
	.loc 4 6168 0
	slwi 11,0,2
.LBB15614:
.LBB15612:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE15612:
.LBE15614:
	.loc 4 6168 0
	subfic 11,11,-32
.LBB15615:
.LBB15616:
	.loc 2 1507 0
	li 0,0
.LVL3649:
.LBE15616:
.LBE15615:
	.loc 4 6168 0
	stwux 10,1,11
.LBB15617:
.LBB15618:
	.loc 2 1507 0
	stw 0,12(31)
.LBE15618:
.LBE15617:
	.loc 4 6168 0
	addi 11,1,23
.LVL3650:
.LBB15621:
.LBB15619:
	.loc 2 1507 0
	stw 0,8(31)
.LBE15619:
.LBE15621:
	.loc 4 6168 0
	rlwinm 11,11,0,0,27
.LVL3651:
.LBB15622:
.LBB15620:
	.loc 2 1508 0
	stw 0,16(31)
.LBE15620:
.LBE15622:
.LBB15623:
.LBB15613:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL3652:
	.loc 2 1764 0
	bge- 7,.L2191
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
.LVL3653:
	slwi 10,9,2
	li 8,0
	b .L2192
.LVL3654:
.L2218:
	lwz 11,28(31)
.L2192:
	addi 9,9,1
.LVL3655:
	stwx 8,11,10
	.loc 4 6162 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2218
	lwz 27,0(29)
.L2191:
.LBE15613:
.LBE15623:
	.loc 4 6169 0
	addi 26,27,3
.LBB15624:
.LBB15625:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL3656:
.LBE15625:
.LBE15624:
	.loc 4 6169 0
	rlwinm 26,26,0,0,29
	lwz 9,0(1)
.LVL3657:
	slwi 0,26,2
.LBB15630:
.LBB15626:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE15626:
.LBE15630:
	.loc 4 6169 0
	subfic 0,0,-32
	mr 28,27
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL3658:
.LBB15631:
.LBB15627:
	.loc 2 1757 0
	beq- 7,.L2193
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2219
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L2193
.L2226:
.LEHB97:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL3659:
.L2193:
	.loc 2 1764 0
	cmpw 7,27,26
	.loc 2 1763 0
	li 0,-1
.LBE15627:
.LBE15631:
	.loc 4 6169 0
	mr 4,25
.LBB15632:
.LBB15628:
	.loc 2 1761 0
	stw 25,16(31)
	.loc 2 1762 0
	stw 27,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL3660:
	.loc 2 1764 0
	bge- 7,.L2195
	slwi 27,27,2
.LVL3661:
	li 9,0
	b .L2197
.LVL3662:
.L2220:
	lwz 4,16(31)
.L2197:
	addi 28,28,1
.LVL3663:
	stwx 9,4,27
	.loc 4 6162 0
	addi 0,28,3
	.loc 2 1764 0
	addi 27,27,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L2220
	lwz 28,8(31)
.LVL3664:
	lwz 4,16(31)
.L2195:
.LBE15628:
.LBE15632:
.LBB15633:
.LBB15634:
	.loc 2 1769 0
	lis 9,SIMDProcessor@ha
	mr 5,28
	lwz 3,SIMDProcessor@l(9)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL3665:
.LBE15634:
.LBE15633:
	.loc 4 6171 0
	lwz 25,0(29)
.LVL3666:
	lwz 26,4(29)
.LVL3667:
.LBB15635:
.LBB15636:
	.loc 3 2250 0
	lwz 0,8(30)
	.loc 3 2249 0
	mullw 28,25,26
	addi 27,28,3
	rlwinm 27,27,0,0,29
.LVL3668:
	.loc 3 2250 0
	cmpw 7,27,0
	ble- 7,.L2198
	cmpwi 7,0,-1
	beq- 7,.L2198
	.loc 3 2251 0
	lwz 3,12(30)
	cmpwi 7,3,0
	beq- 7,.L2199
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL3669:
.L2199:
	.loc 3 2254 0
	slwi 3,27,2
	bl _Z11Mem_Alloc16i
.LEHE97:
	stw 3,12(30)
	.loc 3 2255 0
	stw 27,8(30)
.L2198:
	.loc 3 2259 0
	cmpw 7,28,27
	.loc 3 2257 0
	stw 25,0(30)
	.loc 3 2258 0
	stw 26,4(30)
.LVL3670:
	.loc 3 2259 0
	bge- 7,.L2200
	slwi 9,28,2
	li 10,0
.L2201:
	addi 28,28,1
.LVL3671:
	lwz 11,12(30)
	.loc 4 6162 0
	addi 0,28,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,28,0
	addi 9,9,4
	blt+ 7,.L2201
.L2200:
.LVL3672:
.LBE15636:
.LBE15635:
	.loc 4 6173 0 discriminator 1
	lwz 0,0(29)
	addi 28,31,20
.LVL3673:
	cmpwi 7,0,0
	ble- 7,.L2202
	lis 9,.LC1@ha
	.loc 4 6173 0 is_stmt 0
	li 26,0
.LVL3674:
	.loc 4 6175 0 is_stmt 1
	lwz 24,.LC1@l(9)
	.loc 4 6180 0
	li 25,0
.LVL3675:
.L2205:
	.loc 4 6175 0
	lwz 9,16(31)
	.loc 4 6162 0
	slwi 27,26,2
	.loc 4 6176 0
	mr 3,29
	mr 4,28
	.loc 4 6175 0
	stwx 24,9,27
	.loc 4 6176 0
	addi 5,31,8
	bl _ZNK6idMatX10LDLT_SolveER6idVecXRKS0_
.LVL3676:
	.loc 4 6177 0
	lwz 0,0(29)
	cmpwi 7,0,0
	ble- 7,.L2203
	lwz 11,4(30)
	li 9,0
	b .L2204
.LVL3677:
.L2221:
	lwz 11,4(30)
.LVL3678:
.L2204:
.LBB15637:
.LBB15638:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE15638:
.LBE15637:
	.loc 4 6178 0 discriminator 2
	lwz 8,8(28)
	slwi 0,9,2
	lwz 10,12(30)
	lwzx 0,8,0
	.loc 4 6177 0 discriminator 2
	addi 9,9,1
.LVL3679:
	.loc 4 6178 0 discriminator 2
	slwi 11,11,2
	add 11,10,11
	stwx 0,11,27
	.loc 4 6177 0 discriminator 2
	lwz 0,0(29)
	cmpw 7,0,9
	bgt+ 7,.L2221
.LVL3680:
.L2203:
	.loc 4 6180 0
	lwz 9,16(31)
	.loc 4 6173 0
	addi 26,26,1
.LVL3681:
	.loc 4 6180 0
	stwx 25,9,27
	.loc 4 6173 0
	lwz 0,0(29)
	cmpw 7,0,26
	bgt+ 7,.L2205
.LVL3682:
.L2202:
	.loc 4 6181 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB15639:
.LBB15640:
.LBB15641:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L2206
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2222
	cmpwi 7,0,-1
	beq- 7,.L2206
.L2225:
.LEHB98:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE98:
.L2206:
	.loc 4 6181 0 discriminator 1
	lwz 3,8(28)
	lwz 0,4(28)
.LBE15641:
.LBE15640:
.LBE15639:
.LBB15644:
.LBB15645:
.LBB15646:
	.loc 2 1525 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L2188
	.loc 2 1525 0 is_stmt 0
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2223
	cmpwi 7,0,-1
	beq- 7,.L2188
.L2224:
.LEHB99:
	.loc 2 1526 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE99:
.L2188:
.LBE15646:
.LBE15645:
.LBE15644:
.LBE15609:
	.loc 4 6182 0
	addi 11,31,72
	lwz 0,4(11)
	lwz 24,-32(11)
	mtlr 0
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL3683:
	lwz 30,-8(11)
.LVL3684:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI371:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI372:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL3685:
.L2223:
.LCFI373:
	.cfi_restore_state
.LBB15652:
.LBB15649:
.LBB15648:
.LBB15647:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2188
	cmpwi 7,0,-1
	bne+ 7,.L2224
	b .L2188
.L2222:
.LBE15647:
.LBE15648:
.LBE15649:
.LBB15650:
.LBB15643:
.LBB15642:
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2206
	cmpwi 7,0,-1
	bne+ 7,.L2225
	b .L2206
.LVL3686:
.L2219:
.LBE15642:
.LBE15643:
.LBE15650:
.LBB15651:
.LBB15629:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2193
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L2226
	b .L2193
.LVL3687:
.L2213:
	mr 30,3
.LVL3688:
.L2211:
.LBE15629:
.LBE15651:
	.loc 4 6181 0
	lwz 3,4(28)
	lwz 4,8(28)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB100:
	bl _Unwind_Resume
.LEHE100:
.LVL3689:
.L2212:
	mr 30,3
.LVL3690:
	lwz 4,16(31)
	lwz 3,12(31)
	addi 28,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L2211
.LBE15652:
	.cfi_endproc
.LFE2641:
	.section	.gcc_except_table
.LLSDA2641:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2641-.LLSDACSB2641
.LLSDACSB2641:
	.uleb128 .LEHB97-.LFB2641
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L2212-.LFB2641
	.uleb128 0
	.uleb128 .LEHB98-.LFB2641
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L2213-.LFB2641
	.uleb128 0
	.uleb128 .LEHB99-.LFB2641
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB100-.LFB2641
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
.LLSDACSE2641:
	.section	".text"
	.size	_ZNK6idMatX12LDLT_InverseERS_, .-_ZNK6idMatX12LDLT_InverseERS_
	.align 2
	.globl _ZNK6idMatX18LDLT_UnpackFactorsERS_S0_
	.type	_ZNK6idMatX18LDLT_UnpackFactorsERS_S0_, @function
_ZNK6idMatX18LDLT_UnpackFactorsERS_S0_:
.LFB2642:
	.loc 4 6191 0
	.cfi_startproc
.LVL3691:
	mflr 0
	stwu 1,-40(1)
.LCFI374:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 25,12(1)
	stw 28,24(1)
	mr 28,5
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	stw 29,28(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	stw 31,36(1)
	mr 31,4
	.cfi_offset 31, -4
.LVL3692:
	stw 0,44(1)
	stw 24,8(1)
	stw 26,16(1)
	stw 27,20(1)
.LBB15674:
	.loc 4 6194 0
	lwz 26,0(3)
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 65, 4
.LVL3693:
	lwz 27,4(3)
.LVL3694:
.LBB15675:
.LBB15676:
.LBB15677:
.LBB15678:
	.loc 3 2250 0
	lwz 0,8(4)
	.loc 3 2249 0
	mullw 29,26,27
	addi 25,29,3
	rlwinm 25,25,0,0,29
.LVL3695:
	.loc 3 2250 0
	cmpw 7,25,0
	ble- 7,.L2249
.LVL3696:
	cmpwi 7,0,-1
	beq- 7,.L2249
	.loc 3 2251 0
	lwz 3,12(4)
.LVL3697:
	cmpwi 7,3,0
	beq- 7,.L2231
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL3698:
.L2231:
	.loc 3 2254 0
	slwi 3,25,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 25,8(31)
	.loc 3 2254 0
	mr 4,3
	stw 3,12(31)
	b .L2229
.L2249:
	.loc 3 2250 0
	lwz 4,12(31)
.L2229:
	.loc 3 2259 0
	cmpw 7,29,25
	.loc 3 2257 0
	stw 26,0(31)
	.loc 3 2258 0
	stw 27,4(31)
.LVL3699:
	.loc 3 2259 0
	bge- 7,.L2232
	slwi 9,29,2
	li 11,0
	b .L2234
.L2251:
	lwz 4,12(31)
.L2234:
	addi 29,29,1
.LVL3700:
	stwx 11,4,9
	.loc 4 6191 0
	addi 0,29,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,29,0
	blt+ 7,.L2251
	lwz 29,0(31)
.LVL3701:
	lwz 0,4(31)
	lwz 4,12(31)
	mullw 29,29,0
.L2232:
.LBE15678:
.LBE15677:
	.loc 3 2302 0
	lis 27,SIMDProcessor@ha
.LVL3702:
	mr 5,29
	lwz 3,SIMDProcessor@l(27)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL3703:
.LBE15676:
.LBE15675:
	.loc 4 6195 0
	lwz 24,0(30)
	lwz 25,4(30)
.LVL3704:
.LBB15679:
.LBB15680:
.LBB15681:
.LBB15682:
	.loc 3 2250 0
	lwz 0,8(28)
	.loc 3 2249 0
	mullw 29,24,25
	addi 26,29,3
.LVL3705:
	rlwinm 26,26,0,0,29
.LVL3706:
	.loc 3 2250 0
	cmpw 7,26,0
	ble- 7,.L2250
	cmpwi 7,0,-1
	beq- 7,.L2250
	.loc 3 2251 0
	lwz 3,12(28)
	cmpwi 7,3,0
	beq- 7,.L2238
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL3707:
.L2238:
	.loc 3 2254 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 26,8(28)
	.loc 3 2254 0
	mr 4,3
	stw 3,12(28)
	b .L2236
.L2250:
	.loc 3 2250 0
	lwz 4,12(28)
.L2236:
	.loc 3 2259 0
	cmpw 7,29,26
	.loc 3 2257 0
	stw 24,0(28)
	.loc 3 2258 0
	stw 25,4(28)
.LVL3708:
	.loc 3 2259 0
	bge- 7,.L2239
	slwi 9,29,2
	li 11,0
	b .L2241
.L2252:
	lwz 4,12(28)
.L2241:
	addi 29,29,1
.LVL3709:
	stwx 11,4,9
	.loc 4 6191 0
	addi 0,29,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,29,0
	blt+ 7,.L2252
	lwz 29,0(28)
.LVL3710:
	lwz 0,4(28)
	lwz 4,12(28)
	mullw 29,29,0
.L2239:
.LBE15682:
.LBE15681:
	.loc 3 2302 0
	lwz 3,SIMDProcessor@l(27)
	mr 5,29
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL3711:
.LBE15680:
.LBE15679:
	.loc 4 6196 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L2227
	.loc 4 6200 0
	lis 9,.LC1@ha
	.loc 4 6196 0
	lwz 11,4(31)
	.loc 4 6200 0
	lwz 5,.LC1@l(9)
	.loc 4 6196 0
	li 10,0
.LVL3712:
.L2243:
.LBB15683:
.LBB15684:
	.loc 3 2056 0
	mullw 11,10,11
.LBE15684:
.LBE15683:
	.loc 4 6200 0
	lwz 0,12(31)
	.loc 4 6191 0
	slwi 9,10,2
	.loc 4 6200 0
	slwi 11,11,2
	add 11,0,11
	stwx 5,11,9
.LVL3713:
.LBB15685:
.LBB15686:
	.loc 3 2051 0
	lwz 7,4(30)
.LBE15686:
.LBE15685:
.LBB15688:
.LBB15689:
	.loc 3 2056 0
	lwz 11,4(28)
.LBE15689:
.LBE15688:
.LBB15691:
.LBB15687:
	.loc 3 2051 0
	mullw 7,10,7
.LBE15687:
.LBE15691:
	.loc 4 6201 0
	lwz 0,12(30)
	lwz 8,12(28)
.LBB15692:
.LBB15690:
	.loc 3 2056 0
	mullw 11,10,11
.LBE15690:
.LBE15692:
	.loc 4 6201 0
	slwi 7,7,2
	add 7,0,7
	lwzx 0,7,9
	.loc 4 6196 0
	addi 10,10,1
.LVL3714:
	.loc 4 6201 0
	slwi 11,11,2
	add 11,8,11
	stwx 0,11,9
	.loc 4 6196 0
	lwz 0,0(30)
	cmpw 7,0,10
	ble- 7,.L2227
.LVL3715:
	.loc 4 6197 0 discriminator 1
	cmpwi 7,10,0
	li 9,0
	mtctr 10
	ble- 7,.L2245
.LVL3716:
.L2247:
.LBB15693:
.LBB15694:
	.loc 3 2051 0 discriminator 2
	lwz 6,4(30)
.LBE15694:
.LBE15693:
	.loc 4 6191 0 discriminator 2
	slwi 11,9,2
.LVL3717:
.LBB15696:
.LBB15697:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(31)
.LBE15697:
.LBE15696:
	.loc 4 6197 0 discriminator 2
	addi 9,9,1
.LVL3718:
.LBB15699:
.LBB15695:
	.loc 3 2051 0 discriminator 2
	mullw 6,10,6
.LBE15695:
.LBE15699:
	.loc 4 6198 0 discriminator 2
	lwz 0,12(30)
	lwz 7,12(31)
.LBB15700:
.LBB15698:
	.loc 3 2056 0 discriminator 2
	mullw 8,10,8
.LBE15698:
.LBE15700:
	.loc 4 6198 0 discriminator 2
	slwi 6,6,2
	add 6,0,6
	lwzx 0,6,11
	slwi 8,8,2
	add 8,7,8
	stwx 0,8,11
	.loc 4 6197 0 discriminator 2
	bdnz .L2247
.LVL3719:
.L2245:
	.loc 4 6197 0 is_stmt 0
	lwz 11,4(31)
	b .L2243
.LVL3720:
.L2227:
.LBE15674:
	.loc 4 6203 0 is_stmt 1
	lwz 0,44(1)
	lwz 24,8(1)
.LVL3721:
	mtlr 0
	lwz 25,12(1)
.LVL3722:
	lwz 26,16(1)
.LVL3723:
	lwz 27,20(1)
	lwz 28,24(1)
.LVL3724:
	lwz 29,28(1)
	lwz 30,32(1)
.LVL3725:
	lwz 31,36(1)
.LVL3726:
	addi 1,1,40
.LCFI375:
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
.LFE2642:
	.size	_ZNK6idMatX18LDLT_UnpackFactorsERS_S0_, .-_ZNK6idMatX18LDLT_UnpackFactorsERS_S0_
	.align 2
	.globl _ZNK6idMatX20LDLT_MultiplyFactorsERS_
	.type	_ZNK6idMatX20LDLT_MultiplyFactorsERS_, @function
_ZNK6idMatX20LDLT_MultiplyFactorsERS_:
.LFB2643:
	.loc 4 6212 0
	.cfi_startproc
.LVL3727:
	mflr 0
	stwu 1,-40(1)
.LCFI376:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 24,8(1)
	stw 25,12(1)
	stw 26,16(1)
	mr 26,4
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	stw 27,20(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	stw 31,36(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI377:
	.cfi_def_cfa_register 31
	stw 0,44(1)
	stw 28,24(1)
	stw 29,28(1)
.LBB15723:
	.loc 4 6217 0
	lwz 11,0(1)
	lwz 29,0(3)
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 4 6218 0
	lwz 28,4(3)
	.loc 4 6217 0
	slwi 9,29,2
.LBB15724:
.LBB15725:
	.loc 3 2250 0
	lwz 0,8(4)
	.loc 3 2249 0
	mullw 25,29,28
.LBE15725:
.LBE15724:
	.loc 4 6217 0
	addi 9,9,45
	rlwinm 9,9,0,0,27
	neg 9,9
	stwux 11,1,9
.LBB15729:
.LBB15726:
	.loc 3 2249 0
	addi 24,25,3
	rlwinm 24,24,0,0,29
.LBE15726:
.LBE15729:
	.loc 4 6217 0
	addi 27,1,23
.LBB15730:
.LBB15727:
	.loc 3 2250 0
	cmpw 7,24,0
.LBE15727:
.LBE15730:
	.loc 4 6217 0
	rlwinm 27,27,0,0,27
.LVL3728:
.LBB15731:
.LBB15728:
	.loc 3 2250 0
	ble- 7,.L2254
.LVL3729:
	cmpwi 7,0,-1
	beq- 7,.L2254
	.loc 3 2251 0
	lwz 3,12(4)
.LVL3730:
	cmpwi 7,3,0
	beq- 7,.L2255
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL3731:
.L2255:
	.loc 3 2254 0
	slwi 3,24,2
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	stw 24,8(26)
	.loc 3 2254 0
	stw 3,12(26)
.L2254:
	.loc 3 2259 0
	cmpw 7,25,24
	.loc 3 2257 0
	stw 29,0(26)
	.loc 3 2258 0
	stw 28,4(26)
.LVL3732:
	.loc 3 2259 0
	bge- 7,.L2256
	slwi 9,25,2
	li 10,0
.L2257:
	addi 25,25,1
.LVL3733:
	lwz 11,12(26)
	.loc 4 6212 0
	addi 0,25,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,25,0
	addi 9,9,4
	blt+ 7,.L2257
.L2256:
.LVL3734:
.LBE15728:
.LBE15731:
	.loc 4 6220 0 discriminator 1
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L2253
	lwz 0,4(30)
	.loc 4 6220 0 is_stmt 0
	li 4,0
	li 10,0
.LVL3735:
.L2258:
	.loc 4 6226 0 is_stmt 1 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L2261
	.loc 4 6234 0
	cmpwi 6,10,0
	.loc 4 6226 0
	li 6,0
	li 8,0
	b .L2269
.LVL3736:
.L2264:
.LBB15732:
.LBB15733:
	.loc 3 2056 0
	lwz 9,4(26)
.LBE15733:
.LBE15732:
	.loc 4 6237 0
	frsp 0,0
.LVL3737:
	lwz 0,12(26)
	.loc 4 6226 0
	addi 8,8,1
.LVL3738:
.LBB15737:
.LBB15734:
	.loc 3 2056 0
	mullw 9,10,9
.LBE15734:
.LBE15737:
	.loc 4 6237 0
	slwi 9,9,2
	add 9,0,9
	stfsx 0,9,6
	.loc 4 6226 0
	addi 6,6,4
	lwz 0,4(30)
	cmpw 7,0,8
	ble- 7,.L2261
.LVL3739:
.L2269:
	.loc 4 6227 0
	cmpw 7,8,10
	bge- 7,.L2262
.LBB15738:
.LBB15739:
	.loc 3 2051 0
	mullw 5,8,0
.LBE15739:
.LBE15738:
	.loc 4 8102 0
	lwz 9,12(30)
.LVL3740:
.LBB15740:
.LBB15741:
	.loc 3 2051 0
	mullw 11,10,0
.LBE15741:
.LBE15740:
	.loc 4 6228 0
	slwi 7,5,2
	add 7,9,7
	lfsx 13,7,6
	slwi 11,11,2
	add 11,9,11
	lfsx 0,11,6
	fmuls 0,13,0
.LVL3741:
.L2266:
	.loc 4 6234 0 discriminator 1
	cmpwi 7,8,0
	beq- 7,.L2264
	.loc 4 6234 0 is_stmt 0
	ble- 6,.L2264
	slwi 5,5,2
	.loc 4 6212 0 is_stmt 1
	mtctr 8
	.loc 4 6234 0
	add 5,9,5
	.loc 4 6212 0
	li 11,0
	addi 9,5,-4
.LVL3742:
.L2267:
	.loc 4 6234 0 discriminator 5
	addi 9,9,4
	addi 11,11,1
	.loc 4 6212 0 discriminator 5
	subf 7,5,9
	.loc 4 6235 0 discriminator 5
	lfs 12,0(9)
	lfsx 13,7,27
	.loc 4 6234 0 discriminator 5
	cmpw 7,11,10
	.loc 4 6235 0 discriminator 5
	fmuls 13,12,13
	fadd 0,0,13
.LVL3743:
	.loc 4 6234 0 discriminator 5
	bdz .L2264
	.loc 4 6234 0 is_stmt 0 discriminator 2
	bne- 7,.L2267
.LVL3744:
.LBB15742:
.LBB15735:
	.loc 3 2056 0 is_stmt 1
	lwz 9,4(26)
.LBE15735:
.LBE15742:
	.loc 4 6237 0
	frsp 0,0
.LVL3745:
	lwz 0,12(26)
	.loc 4 6226 0
	addi 8,8,1
.LVL3746:
.LBB15743:
.LBB15736:
	.loc 3 2056 0
	mullw 9,10,9
.LBE15736:
.LBE15743:
	.loc 4 6237 0
	slwi 9,9,2
	add 9,0,9
	stfsx 0,9,6
	.loc 4 6226 0
	addi 6,6,4
	lwz 0,4(30)
	cmpw 7,0,8
	bgt+ 7,.L2269
.LVL3747:
.L2261:
	.loc 4 6220 0
	lwz 9,0(30)
	addi 10,10,1
.LVL3748:
	cmpw 7,9,10
	ble- 7,.L2253
.LVL3749:
	.loc 4 6223 0 discriminator 1
	cmpwi 7,10,0
	ble- 7,.L2270
	.loc 4 6223 0 is_stmt 0
	mtctr 10
	li 9,0
	li 11,0
.LVL3750:
.L2271:
.LBB15744:
.LBB15745:
	.loc 3 2051 0 is_stmt 1 discriminator 2
	mullw 7,11,0
.LBE15745:
.LBE15744:
	.loc 4 8102 0 discriminator 2
	lwz 8,12(30)
.LVL3751:
	.loc 4 6223 0 discriminator 2
	addi 11,11,1
.LVL3752:
.LBB15746:
.LBB15747:
	.loc 3 2051 0 discriminator 2
	mullw 0,10,0
.LBE15747:
.LBE15746:
	.loc 4 6224 0 discriminator 2
	slwi 7,7,2
	add 7,8,7
	lfsx 0,7,9
	slwi 0,0,2
	add 8,8,0
	lfsx 13,8,9
	fmuls 0,13,0
	stfsx 0,9,27
	.loc 4 6223 0 discriminator 2
	addi 9,9,4
	.loc 4 6220 0 discriminator 2
	lwz 0,4(30)
	.loc 4 6223 0 discriminator 2
	bdnz .L2271
.LVL3753:
.L2270:
	.loc 4 6223 0 is_stmt 0 discriminator 1
	addi 4,4,4
	b .L2258
.LVL3754:
.L2262:
	.loc 4 6229 0 is_stmt 1
	beq- 7,.L2276
.LBB15748:
.LBB15749:
	.loc 3 2051 0
	mullw 11,10,0
.LBE15749:
.LBE15748:
	.loc 4 8102 0
	lwz 9,12(30)
.LVL3755:
.LBB15750:
.LBB15751:
	.loc 3 2051 0
	mullw 5,8,0
.LBE15751:
.LBE15750:
	.loc 4 6232 0
	slwi 11,11,2
	add 11,9,11
	lfsx 13,11,4
	slwi 11,5,2
	add 11,9,11
	lfsx 0,11,4
	fmuls 0,13,0
.LVL3756:
	b .L2266
.LVL3757:
.L2276:
.LBB15752:
.LBB15753:
	.loc 3 2051 0
	mullw 5,8,0
.LBE15753:
.LBE15752:
	.loc 4 6230 0
	lwz 9,12(30)
	slwi 11,5,2
	add 11,9,11
	lfsx 0,11,4
.LVL3758:
	b .L2266
.LVL3759:
.L2253:
.LBE15723:
	.loc 4 6240 0
	addi 11,31,40
	lwz 0,4(11)
	lwz 24,-32(11)
.LVL3760:
	mtlr 0
	lwz 25,-28(11)
.LVL3761:
	lwz 26,-24(11)
.LVL3762:
	lwz 27,-20(11)
.LVL3763:
	lwz 28,-16(11)
.LVL3764:
	lwz 29,-12(11)
.LVL3765:
	lwz 30,-8(11)
.LVL3766:
	lwz 31,-4(11)
.LCFI378:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI379:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
.LVL3767:
	blr
	.cfi_endproc
.LFE2643:
	.size	_ZNK6idMatX20LDLT_MultiplyFactorsERS_, .-_ZNK6idMatX20LDLT_MultiplyFactorsERS_
	.align 2
	.globl _ZN6idMatX26TriDiagonal_ClearTrianglesEv
	.type	_ZN6idMatX26TriDiagonal_ClearTrianglesEv, @function
_ZN6idMatX26TriDiagonal_ClearTrianglesEv:
.LFB2644:
	.loc 4 6247 0
	.cfi_startproc
.LVL3768:
.LBB15754:
	.loc 4 6251 0
	lwz 11,0(3)
	cmpwi 7,11,2
	blelr- 7
	lwz 0,4(3)
	li 5,2
	li 7,0
	.loc 4 6253 0
	li 10,0
.LVL3769:
.L2281:
	.loc 4 6252 0
	cmpw 7,5,0
	mr 9,5
.LVL3770:
	bge- 7,.L2279
	.loc 4 6247 0
	slwi 6,7,2
	slwi 11,5,2
.LVL3771:
.L2280:
.LBB15755:
.LBB15756:
	.loc 3 2056 0 discriminator 2
	mullw 0,7,0
.LBE15756:
.LBE15755:
	.loc 4 6253 0 discriminator 2
	lwz 8,12(3)
	slwi 0,0,2
	add 8,8,0
	stwx 10,8,11
.LVL3772:
	.loc 4 6252 0 discriminator 2
	addi 11,11,4
.LBB15757:
.LBB15758:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(3)
.LBE15758:
.LBE15757:
	.loc 4 6254 0 discriminator 2
	lwz 0,12(3)
.LBB15760:
.LBB15759:
	.loc 3 2056 0 discriminator 2
	mullw 8,9,8
.LBE15759:
.LBE15760:
	.loc 4 6252 0 discriminator 2
	addi 9,9,1
.LVL3773:
	.loc 4 6254 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
	stwx 10,8,6
	.loc 4 6252 0 discriminator 2
	lwz 0,4(3)
	cmpw 7,0,9
	bgt+ 7,.L2280
	lwz 11,0(3)
.LVL3774:
.L2279:
	.loc 4 6251 0
	addi 7,7,1
.LVL3775:
	addi 9,11,-2
.LVL3776:
	cmpw 7,9,7
	addi 5,5,1
	bgt+ 7,.L2281
	blr
.LBE15754:
	.cfi_endproc
.LFE2644:
	.size	_ZN6idMatX26TriDiagonal_ClearTrianglesEv, .-_ZN6idMatX26TriDiagonal_ClearTrianglesEv
	.align 2
	.globl _ZNK6idMatX17TriDiagonal_SolveER6idVecXRKS0_
	.type	_ZNK6idMatX17TriDiagonal_SolveER6idVecXRKS0_, @function
_ZNK6idMatX17TriDiagonal_SolveER6idVecXRKS0_:
.LFB2645:
	.loc 4 6266 0
	.cfi_startproc
.LVL3777:
	mflr 0
	stwu 1,-16(1)
.LCFI380:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	mr 11,3
	stw 31,12(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI381:
	.cfi_def_cfa_register 31
	stw 0,20(1)
	stw 30,8(1)
.LBB15796:
	.loc 4 6274 0
	lwz 8,0(1)
	lwz 9,0(3)
	addi 10,9,3
	rlwinm 10,10,0,0,29
	slwi 0,10,2
	.cfi_offset 30, -8
	.cfi_offset 65, 4
.LBB15797:
.LBB15798:
	.loc 2 1764 0
	cmpw 7,9,10
.LBE15798:
.LBE15797:
	.loc 4 6274 0
	subfic 0,0,-32
	stwux 8,1,0
	addi 0,1,23
	rlwinm 12,0,0,0,27
.LVL3778:
.LBB15800:
.LBB15799:
	.loc 2 1764 0
	bge- 7,.L2285
	.loc 4 6266 0
	slwi 10,9,2
	.loc 2 1764 0
	li 0,0
	.loc 4 6266 0
	addi 10,10,-4
	.loc 2 1764 0
	add 10,10,12
.LVL3779:
.L2286:
	addi 9,9,1
.LVL3780:
	stwu 0,4(10)
	.loc 4 6266 0
	addi 8,9,3
	.loc 2 1764 0
	rlwinm 8,8,0,0,29
	cmpw 7,9,8
	blt+ 7,.L2286
.L2285:
.LVL3781:
.LBE15799:
.LBE15800:
	.loc 4 6276 0
	lwz 9,12(11)
.LVL3782:
	.loc 4 6277 0
	lis 10,.LC9@ha
	lfs 10,.LC9@l(10)
	.loc 4 6278 0
	li 3,0
.LVL3783:
	.loc 4 6276 0
	lfs 0,0(9)
.LVL3784:
	.loc 4 6277 0
	fcmpu 7,0,10
	beq- 7,.L2291
	.loc 4 6280 0
	lis 30,.LC1@ha
.LBB15801:
.LBB15802:
	.loc 2 1532 0
	lwz 9,8(5)
.LBE15802:
.LBE15801:
	.loc 4 6280 0
	lfs 13,.LC1@l(30)
	fdivs 0,13,0
.LVL3785:
	.loc 4 6281 0
	lfs 13,0(9)
	.loc 4 8102 0
	lwz 9,8(4)
.LVL3786:
	.loc 4 6281 0
	fmuls 13,0,13
	stfs 13,0(9)
.LVL3787:
	.loc 4 6282 0
	lwz 10,0(11)
	cmpwi 7,10,1
	ble- 7,.L2288
	lwz 6,4(11)
	li 8,0
	li 9,1
	b .L2289
.LVL3788:
.L2297:
	.loc 4 6288 0
	lfs 0,.LC1@l(30)
	.loc 4 8102 0
	lwz 7,8(4)
	.loc 4 6288 0
	fdivs 0,0,13
.LVL3789:
.LBB15803:
.LBB15804:
	.loc 2 1532 0
	lwz 6,8(5)
.LBE15804:
.LBE15803:
	.loc 4 6289 0
	lfsx 12,7,8
	.loc 4 6282 0
	addi 8,8,4
	.loc 4 6289 0
	lfsx 13,6,10
	fmadds 11,11,12,13
	fmuls 11,11,0
	stfsx 11,7,10
	.loc 4 6282 0
	lwz 10,0(11)
	cmpw 7,10,9
	ble- 7,.L2288
.LVL3790:
	lwz 6,4(11)
.LVL3791:
.L2289:
.LBB15805:
.LBB15806:
	.loc 4 6266 0
	addi 10,9,-1
.LBE15806:
.LBE15805:
	.loc 4 6283 0
	lwz 3,12(11)
.LBB15808:
.LBB15807:
	.loc 3 2051 0
	mullw 6,6,10
.LBE15807:
.LBE15808:
.LBB15809:
.LBB15810:
	lwz 7,4(11)
.LBE15810:
.LBE15809:
	.loc 4 6266 0
	slwi 10,9,2
	.loc 4 6283 0
	slwi 6,6,2
.LBB15813:
.LBB15811:
	.loc 3 2051 0
	mullw 7,9,7
.LBE15811:
.LBE15813:
	.loc 4 6283 0
	add 6,3,6
	lfsx 13,6,10
	.loc 4 6282 0
	addi 9,9,1
.LVL3792:
	.loc 4 6283 0
	fmuls 0,0,13
.LVL3793:
.LBB15814:
.LBB15812:
	.loc 3 2051 0
	slwi 7,7,2
	add 7,3,7
.LBE15812:
.LBE15814:
	.loc 4 6283 0
	stfsx 0,12,10
	.loc 4 6266 0
	fneg 0,0
	.loc 4 6284 0
	lfsx 13,7,8
	lfsx 12,7,10
	.loc 4 6266 0
	fneg 11,13
	.loc 4 6284 0
	fmadds 13,0,13,12
.LVL3794:
	.loc 4 6285 0
	fcmpu 7,13,10
	bne+ 7,.L2297
	.loc 4 6286 0
	li 3,0
.LVL3795:
.L2291:
.LBE15796:
	.loc 4 6295 0
	addi 11,31,16
.LVL3796:
	lwz 0,4(11)
	lwz 30,-8(11)
	mtlr 0
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI382:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI383:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL3797:
.L2288:
.LCFI384:
	.cfi_restore_state
.LBB15817:
	.loc 4 6291 0
	addic. 9,10,-2
	.loc 4 6294 0
	li 3,1
	.loc 4 6291 0
	blt- 0,.L2291
	addi 10,10,-1
.LVL3798:
	slwi 9,9,2
	mtctr 10
.LVL3799:
.L2290:
.LBB15815:
.LBB15816:
	.loc 2 1537 0 discriminator 2
	addi 10,9,4
.LBE15816:
.LBE15815:
	.loc 4 8102 0 discriminator 2
	lwz 11,8(4)
	.loc 4 6266 0 discriminator 2
	lfsx 0,12,10
	.loc 4 6292 0 discriminator 2
	lfsx 13,11,9
	.loc 4 6266 0 discriminator 2
	fneg 0,0
	.loc 4 6292 0 discriminator 2
	lfsx 12,11,10
	fmadds 0,0,12,13
	stfsx 0,11,9
	.loc 4 6291 0 discriminator 2
	addi 9,9,-4
	bdnz .L2290
.LBE15817:
	.loc 4 6295 0
	addi 11,31,16
.LBB15818:
	.loc 4 6294 0
	li 3,1
.LBE15818:
	.loc 4 6295 0
	lwz 0,4(11)
	lwz 30,-8(11)
	mtlr 0
	lwz 31,-4(11)
.LCFI385:
	.cfi_def_cfa 11, 0
	mr 1,11
	.cfi_restore 30
	.cfi_restore 31
.LCFI386:
	.cfi_def_cfa_register 1
	blr
	.cfi_endproc
.LFE2645:
	.size	_ZNK6idMatX17TriDiagonal_SolveER6idVecXRKS0_, .-_ZNK6idMatX17TriDiagonal_SolveER6idVecXRKS0_
	.align 2
	.globl _ZNK6idMatX19TriDiagonal_InverseERS_
	.type	_ZNK6idMatX19TriDiagonal_InverseERS_, @function
_ZNK6idMatX19TriDiagonal_InverseERS_:
.LFB2646:
	.loc 4 6304 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2646
.LVL3800:
	mflr 0
	stwu 1,-72(1)
.LCFI387:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 27,52(1)
	stw 0,76(1)
	stw 29,60(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	stw 30,64(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,68(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI388:
	.cfi_def_cfa_register 31
.LVL3801:
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 28,56(1)
.LBB15849:
	.loc 4 6310 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 27,9
	rlwinm 0,0,0,0,29
.LBB15850:
.LBB15851:
	.loc 2 1762 0
	stw 9,20(31)
.LBE15851:
.LBE15850:
	.loc 4 6310 0
	slwi 11,0,2
.LBB15854:
.LBB15852:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE15852:
.LBE15854:
	.loc 4 6310 0
	subfic 11,11,-32
.LBB15855:
.LBB15856:
	.loc 2 1507 0
	li 0,0
.LVL3802:
.LBE15856:
.LBE15855:
	.loc 4 6310 0
	stwux 10,1,11
.LBB15857:
.LBB15858:
	.loc 2 1507 0
	stw 0,12(31)
.LBE15858:
.LBE15857:
	.loc 4 6310 0
	addi 11,1,23
.LVL3803:
.LBB15861:
.LBB15859:
	.loc 2 1507 0
	stw 0,8(31)
.LBE15859:
.LBE15861:
	.loc 4 6310 0
	rlwinm 11,11,0,0,27
.LVL3804:
.LBB15862:
.LBB15860:
	.loc 2 1508 0
	stw 0,16(31)
.LBE15860:
.LBE15862:
.LBB15863:
.LBB15853:
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 11,28(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL3805:
	.loc 2 1764 0
	bge- 7,.L2301
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
.LVL3806:
	slwi 10,9,2
	li 8,0
	b .L2302
.LVL3807:
.L2328:
	lwz 11,28(31)
.L2302:
	addi 9,9,1
.LVL3808:
	stwx 8,11,10
	.loc 4 6304 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2328
	lwz 27,0(29)
.L2301:
.LBE15853:
.LBE15863:
	.loc 4 6311 0
	addi 26,27,3
.LBB15864:
.LBB15865:
	.loc 2 1757 0
	lwz 3,16(31)
.LVL3809:
.LBE15865:
.LBE15864:
	.loc 4 6311 0
	rlwinm 26,26,0,0,29
	lwz 9,0(1)
.LVL3810:
	slwi 0,26,2
.LBB15870:
.LBB15866:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE15866:
.LBE15870:
	.loc 4 6311 0
	subfic 0,0,-32
	mr 28,27
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL3811:
.LBB15871:
.LBB15867:
	.loc 2 1757 0
	beq- 7,.L2303
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2329
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L2303
.L2336:
.LEHB101:
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL3812:
.L2303:
	.loc 2 1764 0
	cmpw 7,27,26
	.loc 2 1763 0
	li 0,-1
.LBE15867:
.LBE15871:
	.loc 4 6311 0
	mr 4,25
.LBB15872:
.LBB15868:
	.loc 2 1761 0
	stw 25,16(31)
	.loc 2 1762 0
	stw 27,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL3813:
	.loc 2 1764 0
	bge- 7,.L2305
	slwi 27,27,2
.LVL3814:
	li 9,0
	b .L2307
.LVL3815:
.L2330:
	lwz 4,16(31)
.L2307:
	addi 28,28,1
.LVL3816:
	stwx 9,4,27
	.loc 4 6304 0
	addi 0,28,3
	.loc 2 1764 0
	addi 27,27,4
	rlwinm 0,0,0,0,29
	cmpw 7,28,0
	blt+ 7,.L2330
	lwz 28,8(31)
.LVL3817:
	lwz 4,16(31)
.L2305:
.LBE15868:
.LBE15872:
.LBB15873:
.LBB15874:
	.loc 2 1769 0
	lis 9,SIMDProcessor@ha
	mr 5,28
	lwz 3,SIMDProcessor@l(9)
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL3818:
.LBE15874:
.LBE15873:
	.loc 4 6313 0
	lwz 25,0(29)
.LVL3819:
	lwz 26,4(29)
.LVL3820:
.LBB15875:
.LBB15876:
	.loc 3 2250 0
	lwz 0,8(30)
	.loc 3 2249 0
	mullw 28,25,26
	addi 27,28,3
	rlwinm 27,27,0,0,29
.LVL3821:
	.loc 3 2250 0
	cmpw 7,27,0
	ble- 7,.L2308
	cmpwi 7,0,-1
	beq- 7,.L2308
	.loc 3 2251 0
	lwz 3,12(30)
	cmpwi 7,3,0
	beq- 7,.L2309
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL3822:
.L2309:
	.loc 3 2254 0
	slwi 3,27,2
	bl _Z11Mem_Alloc16i
.LEHE101:
	stw 3,12(30)
	.loc 3 2255 0
	stw 27,8(30)
.L2308:
	.loc 3 2259 0
	cmpw 7,28,27
	.loc 3 2257 0
	stw 25,0(30)
	.loc 3 2258 0
	stw 26,4(30)
.LVL3823:
	.loc 3 2259 0
	bge- 7,.L2310
	slwi 9,28,2
	li 10,0
.L2311:
	addi 28,28,1
.LVL3824:
	lwz 11,12(30)
	.loc 4 6304 0
	addi 0,28,3
	.loc 3 2259 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,28,0
	addi 9,9,4
	blt+ 7,.L2311
.L2310:
.LVL3825:
.LBE15876:
.LBE15875:
	.loc 4 6315 0 discriminator 1
	lwz 0,0(29)
	addi 28,31,20
.LVL3826:
	cmpwi 7,0,0
	ble- 7,.L2312
	lis 9,.LC1@ha
	.loc 4 6315 0 is_stmt 0
	li 26,0
.LVL3827:
	.loc 4 6317 0 is_stmt 1
	lwz 24,.LC1@l(9)
	.loc 4 6322 0
	li 25,0
.LVL3828:
.L2315:
	.loc 4 6317 0
	lwz 9,16(31)
	.loc 4 6304 0
	slwi 27,26,2
	.loc 4 6318 0
	mr 3,29
	mr 4,28
	.loc 4 6317 0
	stwx 24,9,27
	.loc 4 6318 0
	addi 5,31,8
	bl _ZNK6idMatX17TriDiagonal_SolveER6idVecXRKS0_
.LVL3829:
	.loc 4 6319 0
	lwz 0,0(29)
	cmpwi 7,0,0
	ble- 7,.L2313
	lwz 11,4(30)
	li 9,0
	b .L2314
.LVL3830:
.L2331:
	lwz 11,4(30)
.LVL3831:
.L2314:
.LBB15877:
.LBB15878:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE15878:
.LBE15877:
	.loc 4 6320 0 discriminator 2
	lwz 8,8(28)
	slwi 0,9,2
	lwz 10,12(30)
	lwzx 0,8,0
	.loc 4 6319 0 discriminator 2
	addi 9,9,1
.LVL3832:
	.loc 4 6320 0 discriminator 2
	slwi 11,11,2
	add 11,10,11
	stwx 0,11,27
	.loc 4 6319 0 discriminator 2
	lwz 0,0(29)
	cmpw 7,0,9
	bgt+ 7,.L2331
.LVL3833:
.L2313:
	.loc 4 6322 0
	lwz 9,16(31)
	.loc 4 6315 0
	addi 26,26,1
.LVL3834:
	.loc 4 6322 0
	stwx 25,9,27
	.loc 4 6315 0
	lwz 0,0(29)
	cmpw 7,0,26
	bgt+ 7,.L2315
.LVL3835:
.L2312:
	.loc 4 6323 0
	lwz 3,16(31)
	lwz 0,12(31)
.LBB15879:
.LBB15880:
.LBB15881:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L2316
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2332
	cmpwi 7,0,-1
	beq- 7,.L2316
.L2335:
.LEHB102:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE102:
.L2316:
	.loc 4 6323 0 discriminator 1
	lwz 3,8(28)
	lwz 0,4(28)
.LBE15881:
.LBE15880:
.LBE15879:
.LBB15884:
.LBB15885:
.LBB15886:
	.loc 2 1525 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L2298
	.loc 2 1525 0 is_stmt 0
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2333
	cmpwi 7,0,-1
	beq- 7,.L2298
.L2334:
.LEHB103:
	.loc 2 1526 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE103:
.L2298:
.LBE15886:
.LBE15885:
.LBE15884:
.LBE15849:
	.loc 4 6324 0
	addi 11,31,72
	lwz 0,4(11)
	lwz 24,-32(11)
	mtlr 0
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL3836:
	lwz 30,-8(11)
.LVL3837:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI389:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI390:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL3838:
.L2333:
.LCFI391:
	.cfi_restore_state
.LBB15892:
.LBB15889:
.LBB15888:
.LBB15887:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2298
	cmpwi 7,0,-1
	bne+ 7,.L2334
	b .L2298
.L2332:
.LBE15887:
.LBE15888:
.LBE15889:
.LBB15890:
.LBB15883:
.LBB15882:
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2316
	cmpwi 7,0,-1
	bne+ 7,.L2335
	b .L2316
.LVL3839:
.L2329:
.LBE15882:
.LBE15883:
.LBE15890:
.LBB15891:
.LBB15869:
	.loc 2 1757 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2303
	lwz 0,12(31)
	cmpwi 7,0,-1
	bne- 7,.L2336
	b .L2303
.LVL3840:
.L2323:
	mr 30,3
.LVL3841:
.L2321:
.LBE15869:
.LBE15891:
	.loc 4 6323 0
	lwz 3,4(28)
	lwz 4,8(28)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB104:
	bl _Unwind_Resume
.LEHE104:
.LVL3842:
.L2322:
	mr 30,3
.LVL3843:
	lwz 4,16(31)
	lwz 3,12(31)
	addi 28,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L2321
.LBE15892:
	.cfi_endproc
.LFE2646:
	.section	.gcc_except_table
.LLSDA2646:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2646-.LLSDACSB2646
.LLSDACSB2646:
	.uleb128 .LEHB101-.LFB2646
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L2322-.LFB2646
	.uleb128 0
	.uleb128 .LEHB102-.LFB2646
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L2323-.LFB2646
	.uleb128 0
	.uleb128 .LEHB103-.LFB2646
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB104-.LFB2646
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
.LLSDACSE2646:
	.section	".text"
	.size	_ZNK6idMatX19TriDiagonal_InverseERS_, .-_ZNK6idMatX19TriDiagonal_InverseERS_
	.align 2
	.globl _ZN6idMatX20HouseholderReductionER6idVecXS1_
	.type	_ZN6idMatX20HouseholderReductionER6idVecXS1_, @function
_ZN6idMatX20HouseholderReductionER6idVecXS1_:
.LFB2647:
	.loc 4 6337 0
	.cfi_startproc
.LVL3844:
	mflr 0
	stwu 1,-48(1)
.LCFI392:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 27,28(1)
	mr 27,5
	.cfi_offset 27, -20
	stw 28,32(1)
	stw 29,36(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
.LVL3845:
	stw 31,44(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,52(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 30,40(1)
.LBB15987:
	.loc 4 6343 0
	lwz 30,0(3)
	.cfi_offset 30, -8
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
.LVL3846:
.LBB15988:
.LBB15989:
	.loc 2 1709 0
	lwz 0,4(4)
	.loc 2 1708 0
	addi 28,30,3
	rlwinm 28,28,0,0,29
.LVL3847:
	.loc 2 1709 0
	cmpw 7,28,0
	ble- 7,.L2338
.LVL3848:
	cmpwi 7,0,-1
	beq- 7,.L2338
	.loc 2 1710 0
	lwz 3,8(4)
.LVL3849:
	cmpwi 7,3,0
	beq- 7,.L2339
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL3850:
.L2339:
	.loc 2 1713 0
	slwi 3,28,2
	bl _Z11Mem_Alloc16i
	.loc 2 1714 0
	stw 28,4(29)
	.loc 2 1713 0
	stw 3,8(29)
.L2338:
	.loc 2 1717 0
	cmpw 7,30,28
	.loc 2 1716 0
	stw 30,0(29)
.LVL3851:
	.loc 2 1717 0
	bge- 7,.L2340
	slwi 9,30,2
	li 10,0
.LVL3852:
.L2341:
	addi 30,30,1
.LVL3853:
	lwz 11,8(29)
	.loc 4 6337 0
	addi 0,30,3
	.loc 2 1717 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,30,0
	addi 9,9,4
	blt+ 7,.L2341
.L2340:
.LBE15989:
.LBE15988:
	.loc 4 6344 0
	lwz 30,0(31)
.LVL3854:
.LBB15990:
.LBB15991:
	.loc 2 1709 0
	lwz 0,4(27)
	.loc 2 1708 0
	addi 28,30,3
.LVL3855:
	rlwinm 28,28,0,0,29
.LVL3856:
	.loc 2 1709 0
	cmpw 7,28,0
	ble- 7,.L2342
	cmpwi 7,0,-1
	beq- 7,.L2342
	.loc 2 1710 0
	lwz 3,8(27)
	cmpwi 7,3,0
	beq- 7,.L2343
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL3857:
.L2343:
	.loc 2 1713 0
	slwi 3,28,2
	bl _Z11Mem_Alloc16i
	.loc 2 1714 0
	stw 28,4(27)
	.loc 2 1713 0
	stw 3,8(27)
.L2342:
	.loc 2 1717 0
	cmpw 7,30,28
	.loc 2 1716 0
	stw 30,0(27)
.LVL3858:
	.loc 2 1717 0
	bge- 7,.L2344
	slwi 9,30,2
	li 10,0
.LVL3859:
.L2345:
	addi 30,30,1
.LVL3860:
	lwz 11,8(27)
	.loc 4 6337 0
	addi 0,30,3
	.loc 2 1717 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,30,0
	addi 9,9,4
	blt+ 7,.L2345
.L2344:
.LBE15991:
.LBE15990:
	.loc 4 6346 0
	lwz 5,0(31)
.LVL3861:
	addic. 3,5,-1
	ble- 0,.L2346
	.loc 4 6347 0
	lis 9,.LC9@ha
	.loc 4 6346 0
	addi 5,5,-2
.LBB15992:
.LBB15993:
.LBB15994:
.LBB15995:
	.loc 5 276 0
	lis 25,_ZN6idMath5iSqrtE@ha
.LBE15995:
.LBE15994:
.LBE15993:
.LBE15992:
	.loc 4 6347 0
	lfs 8,.LC9@l(9)
	.loc 4 6346 0
	slwi 3,3,2
	slwi 30,5,2
.LVL3862:
	.loc 4 6357 0
	lis 12,.LC1@ha
.LBB16007:
.LBB16004:
.LBB16000:
.LBB15996:
	.loc 5 275 0
	lis 28,.LC6@ha
.LVL3863:
	.loc 5 276 0
	la 25,_ZN6idMath5iSqrtE@l(25)
	.loc 5 278 0
	lis 26,.LC8@ha
.LVL3864:
.L2360:
.LBE15996:
.LBE16000:
.LBE16004:
.LBE16007:
	.loc 4 6350 0
	cmpwi 7,5,0
	.loc 4 6337 0
	addi 4,5,1
.LVL3865:
	.loc 4 6350 0
	ble- 7,.L2347
	lwz 8,4(31)
.LBE15987:
	.loc 4 6337 0
	lis 11,.LC9@ha
.LBB16068:
	.loc 4 6350 0
	lwz 10,12(31)
.LBE16068:
	.loc 4 6337 0
	li 9,0
.LBB16069:
	.loc 4 6350 0
	mullw 8,4,8
.LBE16069:
	.loc 4 6337 0
	lfs 0,.LC9@l(11)
.LBB16070:
	.loc 4 6350 0
	slwi 7,8,2
	add 7,10,7
	.loc 4 6337 0
	addi 11,7,-4
.LVL3866:
.L2348:
.LBB16008:
.LBB16009:
	.loc 5 781 0 discriminator 2
	lwzu 0,4(11)
.LVL3867:
.LBE16009:
.LBE16008:
	.loc 4 6351 0 discriminator 2
	addi 9,9,1
	cmpw 7,9,5
.LBB16011:
.LBB16010:
	.loc 5 781 0 discriminator 2
	rlwinm 0,0,0,1,31
.LBE16010:
.LBE16011:
	.loc 4 6352 0 discriminator 2
	stw 0,12(1)
	lfs 11,12(1)
	fadds 0,0,11
.LVL3868:
	.loc 4 6351 0 discriminator 2
	ble+ 7,.L2348
	.loc 4 6354 0
	fcmpu 7,0,8
	bne- 7,.L2349
	.loc 4 6355 0
	lwzx 0,7,30
	.loc 4 6347 0
	lis 10,.LC9@ha
	.loc 4 6355 0
	lwz 9,8(27)
.LVL3869:
	.loc 4 6347 0
	lfs 9,.LC9@l(10)
	.loc 4 6355 0
	stwx 0,9,3
.LVL3870:
.L2350:
	.loc 4 6346 0
	cmpwi 7,5,0
	.loc 4 6399 0
	lwz 9,8(29)
	.loc 4 6346 0
	addi 30,30,-4
	addi 5,5,-1
	.loc 4 6399 0
	stfsx 9,9,3
	.loc 4 6346 0
	addi 3,3,-4
	bne+ 7,.L2360
.LVL3871:
.L2346:
	.loc 4 8102 0
	lwz 9,8(29)
.LVL3872:
	.loc 4 6402 0
	li 11,0
	stw 11,0(9)
	.loc 4 8102 0
	lwz 9,8(27)
.LVL3873:
	.loc 4 6403 0
	stw 11,0(9)
.LVL3874:
	.loc 4 6404 0
	lwz 9,0(31)
	cmpwi 7,9,0
	ble- 7,.L2361
	lwz 0,4(31)
	lis 28,.LC1@ha
	.loc 4 6405 0
	stw 11,12(1)
	.loc 4 6404 0
	li 8,-1
	li 3,0
	la 28,.LC1@l(28)
	.loc 4 6405 0
	lfs 11,12(1)
.LVL3875:
.L2371:
.LBB16012:
.LBB16013:
	.loc 2 1537 0
	lwz 9,8(29)
.LBE16013:
.LBE16012:
	.loc 4 6337 0
	slwi 5,3,2
	cmpwi 6,8,-1
	.loc 4 6405 0
	lfsx 0,9,5
.LBB16015:
.LBB16014:
	.loc 2 1537 0
	add 9,9,5
.LBE16014:
.LBE16015:
	.loc 4 6405 0
	fcmpu 7,0,11
	beq- 7,.L2362
.LVL3876:
	.loc 4 6406 0 discriminator 1
	li 30,0
	beq- 6,.L2362
.LVL3877:
.L2387:
	.loc 4 6337 0 discriminator 1
	mullw 11,3,0
	.loc 4 6406 0 discriminator 1
	lwz 6,12(31)
	.loc 4 6337 0 discriminator 1
	lis 9,.LC9@ha
	slwi 7,30,2
	lfs 0,.LC9@l(9)
	slwi 4,0,2
	slwi 11,11,2
	add 10,6,7
	add 11,6,11
	li 9,0
	addi 11,11,-4
.LVL3878:
.L2364:
	.loc 4 6408 0 discriminator 2
	addi 9,9,1
.LVL3879:
	.loc 4 6409 0 discriminator 2
	lfs 13,0(10)
	.loc 4 6408 0 discriminator 2
	cmpw 7,8,9
	.loc 4 6409 0 discriminator 2
	lfsu 12,4(11)
	.loc 4 6408 0 discriminator 2
	add 10,10,4
	.loc 4 6409 0 discriminator 2
	fmadds 0,12,13,0
.LVL3880:
	.loc 4 6408 0 discriminator 2
	bge+ 7,.L2364
.LVL3881:
	.loc 4 6408 0 is_stmt 0
	li 9,0
.LVL3882:
	b .L2366
.LVL3883:
.L2388:
	.loc 4 6411 0 is_stmt 1
	lwz 0,4(31)
	lwz 6,12(31)
.LVL3884:
.L2366:
.LBB16016:
.LBB16017:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,0
.LBE16017:
.LBE16016:
	.loc 4 6411 0 discriminator 2
	addi 9,9,1
.LVL3885:
	cmpw 7,8,9
.LBB16019:
.LBB16018:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,6,11
.LVL3886:
.LBE16018:
.LBE16019:
	.loc 4 6337 0 discriminator 2
	lfsx 13,11,5
	.loc 4 6412 0 discriminator 2
	lfsx 12,11,7
	.loc 4 6337 0 discriminator 2
	fneg 13,13
	.loc 4 6412 0 discriminator 2
	fmadds 13,13,0,12
	stfsx 13,11,7
	.loc 4 6411 0 discriminator 2
	bge+ 7,.L2388
	.loc 4 6406 0
	addi 30,30,1
.LVL3887:
	cmpw 7,8,30
	blt- 7,.L2389
	lwz 0,4(31)
	b .L2387
.L2389:
	lwz 9,8(29)
.LVL3888:
	lwz 0,4(31)
	add 9,9,5
.LVL3889:
.L2362:
.LBB16020:
.LBB16021:
	.loc 3 2056 0
	mullw 0,3,0
.LBE16021:
.LBE16020:
	.loc 4 6416 0
	lwz 10,12(31)
	.loc 4 6417 0
	lwz 11,0(28)
	.loc 4 6416 0
	slwi 0,0,2
	add 10,10,0
	lwzx 0,10,5
	stw 0,0(9)
.LVL3890:
.LBB16022:
.LBB16023:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE16023:
.LBE16022:
	.loc 4 6417 0
	lwz 9,12(31)
.LBB16025:
.LBB16024:
	.loc 3 2056 0
	mullw 0,3,0
.LBE16024:
.LBE16025:
	.loc 4 6417 0
	slwi 0,0,2
	add 9,9,0
	stwx 11,9,5
.LVL3891:
	.loc 4 6418 0
	beq- 6,.L2368
	lwz 10,4(31)
	li 9,0
	b .L2369
.LVL3892:
.L2390:
	lwz 10,4(31)
.LVL3893:
.L2369:
.LBB16026:
.LBB16027:
	.loc 3 2056 0 discriminator 2
	mullw 10,9,10
.LBE16027:
.LBE16026:
	.loc 4 6419 0 discriminator 2
	lwz 0,12(31)
	.loc 4 6420 0 discriminator 2
	slwi 11,9,2
	.loc 4 6418 0 discriminator 2
	addi 9,9,1
.LVL3894:
	cmpw 7,8,9
	.loc 4 6419 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
	stfsx 11,10,5
.LVL3895:
.LBB16028:
.LBB16029:
	.loc 3 2056 0 discriminator 2
	lwz 10,4(31)
.LBE16029:
.LBE16028:
	.loc 4 6420 0 discriminator 2
	lwz 0,12(31)
.LBB16031:
.LBB16030:
	.loc 3 2056 0 discriminator 2
	mullw 10,3,10
.LBE16030:
.LBE16031:
	.loc 4 6420 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
	stfsx 11,10,11
	.loc 4 6418 0 discriminator 2
	bge+ 7,.L2390
.LVL3896:
.L2368:
	.loc 4 6404 0
	lwz 9,0(31)
	addi 3,3,1
.LVL3897:
	cmpw 7,9,3
	ble- 7,.L2370
	addi 8,8,1
.LVL3898:
	lwz 0,4(31)
	b .L2371
.LVL3899:
.L2349:
	.loc 4 6357 0
	lfs 12,.LC1@l(12)
	.loc 4 6347 0
	li 11,0
.LVL3900:
	stw 11,8(1)
	.loc 4 6358 0
	li 9,0
.LVL3901:
	.loc 4 6357 0
	fdivs 12,12,0
.LVL3902:
.L2351:
.LBB16032:
.LBB16033:
	.loc 3 2056 0 discriminator 2
	slwi 8,8,2
.LBE16033:
.LBE16032:
	.loc 4 6337 0 discriminator 2
	slwi 11,9,2
.LBB16035:
.LBB16034:
	.loc 3 2056 0 discriminator 2
	add 10,10,8
.LBE16034:
.LBE16035:
	.loc 4 6361 0 discriminator 2
	lfs 11,8(1)
	.loc 4 6360 0 discriminator 2
	lfsx 13,10,11
	.loc 4 6358 0 discriminator 2
	addi 9,9,1
	cmpw 7,9,5
	.loc 4 6360 0 discriminator 2
	fmuls 13,13,12
	stfsx 13,10,11
	.loc 4 8102 0 discriminator 2
	lwz 8,4(31)
	lwz 10,12(31)
.LVL3903:
.LBB16036:
.LBB16037:
	.loc 3 2056 0 discriminator 2
	mullw 8,8,4
	slwi 7,8,2
	add 7,10,7
.LBE16037:
.LBE16036:
	.loc 4 6361 0 discriminator 2
	lfsx 13,7,11
.LVL3904:
	fmadds 11,13,13,11
	stfs 11,8(1)
.LVL3905:
	.loc 4 6358 0 discriminator 2
	ble+ 7,.L2351
.LVL3906:
.LBB16038:
.LBB16005:
.LBB16001:
.LBB15997:
	.loc 5 270 0
	lwz 0,8(1)
	.loc 5 275 0
	lfs 10,.LC6@l(28)
	.loc 5 276 0
	rlwinm 9,0,9,24,31
.LVL3907:
	rlwinm 0,0,19,21,29
	subfic 9,9,380
	lwzx 0,25,0
	rlwinm 9,9,22,0,8
	.loc 5 275 0
	fmuls 10,11,10
	.loc 5 276 0
	or 0,9,0
	.loc 5 278 0
	lfs 11,.LC8@l(26)
.LVL3908:
	.loc 5 277 0
	stw 0,12(1)
	.loc 4 6337 0
	fneg 10,10
	.loc 5 277 0
	lfs 12,12(1)
.LVL3909:
	fmr 13,12
.LBE15997:
.LBE16001:
.LBE16005:
.LBE16038:
	.loc 4 6363 0
	lfsx 12,7,30
.LVL3910:
	.loc 4 6365 0
	fcmpu 7,12,8
.LBB16039:
.LBB16006:
.LBB16002:
.LBB15998:
	.loc 5 278 0
	fmul 9,13,13
	fmadd 9,10,9,11
	fmul 13,13,9
.LVL3911:
	.loc 5 279 0
	fmul 9,13,13
	fmadd 11,10,9,11
.LVL3912:
	fmul 13,13,11
.LVL3913:
.LBE15998:
.LBE16002:
	.loc 5 303 0
	lfs 11,8(1)
.LBB16003:
.LBB15999:
	.loc 5 280 0
	frsp 13,13
.LVL3914:
.LBE15999:
.LBE16003:
	.loc 5 303 0
	fmuls 13,13,11
.LBE16006:
.LBE16039:
	.loc 4 6365 0
	bng- 7,.L2352
	.loc 4 6366 0
	fneg 13,13
.LVL3915:
.L2352:
	.loc 4 6368 0
	fmuls 0,13,0
.LVL3916:
	lwz 9,8(27)
	.loc 4 6370 0
	fsubs 10,12,13
	.loc 4 6372 0
	lfs 11,.LC1@l(12)
	.loc 4 6337 0
	fneg 12,12
	.loc 4 6372 0
	li 7,0
.LVL3917:
	.loc 4 6368 0
	stfsx 0,9,3
	.loc 4 6373 0
	li 8,0
	.loc 4 6369 0
	lfs 0,8(1)
.LBB16040:
.LBB16041:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE16041:
.LBE16040:
	.loc 4 6369 0
	fmadds 9,12,13,0
.LVL3918:
	.loc 4 6370 0
	lwz 9,12(31)
.LBB16043:
.LBB16042:
	.loc 3 2056 0
	mullw 0,4,0
.LBE16042:
.LBE16043:
	.loc 4 6372 0
	fdivs 11,11,9
	.loc 4 6370 0
	slwi 0,0,2
	add 9,9,0
	stfsx 10,9,30
.LVL3919:
	.loc 4 6371 0
	lis 9,.LC9@ha
	lfs 10,.LC9@l(9)
	.loc 4 6372 0
	lwz 11,4(31)
	lwz 0,12(31)
	mullw 9,4,11
.LVL3920:
.L2357:
	.loc 4 6374 0
	slwi 9,9,2
.LBB16044:
.LBB16045:
	.loc 3 2056 0
	mullw 11,8,11
.LBE16045:
.LBE16044:
	.loc 4 6374 0
	add 9,0,9
	lfsx 13,9,7
	.loc 4 6375 0
	lis 10,.LC9@ha
	lfs 0,.LC9@l(10)
	.loc 4 6376 0
	li 9,0
	.loc 4 6374 0
	fmuls 13,13,11
	slwi 11,11,2
	add 11,0,11
	stfsx 13,11,3
.LVL3921:
	lwz 0,4(31)
	lwz 6,12(31)
	mullw 10,8,0
	mullw 24,4,0
	.loc 4 6337 0
	slwi 10,10,2
	add 10,6,10
	addi 10,10,-4
	.loc 4 6374 0
	slwi 24,24,2
	add 24,6,24
	.loc 4 6337 0
	addi 11,24,-4
.LVL3922:
.L2354:
	.loc 4 6376 0 discriminator 2
	addi 9,9,1
	.loc 4 6377 0 discriminator 2
	lfsu 12,4(10)
	.loc 4 6376 0 discriminator 2
	cmpw 7,8,9
	.loc 4 6377 0 discriminator 2
	lfsu 13,4(11)
	fmadds 0,12,13,0
.LVL3923:
	.loc 4 6376 0 discriminator 2
	bge+ 7,.L2354
	.loc 4 6379 0
	addi 8,8,1
.LVL3924:
	cmpw 6,8,5
	bgt- 6,.L2355
.LVL3925:
	.loc 4 6337 0
	mullw 9,8,0
	add 10,24,7
	slwi 0,0,2
	mr 11,8
	slwi 9,9,2
	add 9,7,9
	add 9,6,9
.LVL3926:
.L2356:
	.loc 4 6379 0 discriminator 2
	addi 11,11,1
.LVL3927:
	.loc 4 6380 0 discriminator 2
	lfs 12,0(9)
	.loc 4 6379 0 discriminator 2
	cmpw 7,11,5
	.loc 4 6380 0 discriminator 2
	lfsu 13,4(10)
	.loc 4 6379 0 discriminator 2
	add 9,9,0
	.loc 4 6380 0 discriminator 2
	fmadds 0,12,13,0
.LVL3928:
	.loc 4 6379 0 discriminator 2
	ble+ 7,.L2356
.LVL3929:
.L2355:
	.loc 4 6382 0
	fmuls 0,0,11
.LVL3930:
	lwz 9,8(27)
	stfsx 0,9,7
	.loc 4 8102 0
	lwz 11,4(31)
	lwz 0,12(31)
.LBB16046:
.LBB16047:
	.loc 3 2056 0
	mullw 9,11,4
.LBE16047:
.LBE16046:
	.loc 4 8102 0
	lwz 10,8(27)
.LVL3931:
	.loc 4 6383 0
	lfsx 13,10,7
	slwi 6,9,2
	add 6,0,6
	lfsx 0,6,7
	addi 7,7,4
	fmadds 10,13,0,10
.LVL3932:
	.loc 4 6373 0
	ble+ 6,.L2357
	.loc 4 6385 0
	lfs 0,.LC6@l(28)
	.loc 4 6386 0
	li 8,0
.LVL3933:
	.loc 4 6385 0
	fmuls 10,10,0
.LVL3934:
	fmuls 11,10,11
.LVL3935:
	fneg 10,11
.LVL3936:
.L2359:
	.loc 4 6387 0
	slwi 9,9,2
	.loc 4 6337 0
	slwi 7,8,2
	.loc 4 6387 0
	add 9,0,9
.LBB16048:
.LBB16049:
	.loc 4 6388 0
	lfsx 12,10,7
.LBE16049:
.LBE16048:
	.loc 4 6387 0
	lfsx 11,9,7
.LVL3937:
	.loc 4 6390 0
	li 11,0
.LBB16051:
.LBB16050:
	.loc 4 6388 0
	fmadds 12,10,11,12
.LVL3938:
.LBE16050:
.LBE16051:
	.loc 4 6389 0
	stfsx 12,10,7
.LVL3939:
.L2358:
	.loc 4 8102 0 discriminator 2
	lwz 10,4(31)
	.loc 4 6337 0 discriminator 2
	slwi 9,11,2
	.loc 4 8102 0 discriminator 2
	lwz 0,12(31)
.LVL3940:
	.loc 4 6390 0 discriminator 2
	addi 11,11,1
.LBB16052:
.LBB16053:
	.loc 3 2056 0 discriminator 2
	mullw 6,10,4
.LBE16053:
.LBE16052:
	.loc 4 6391 0 discriminator 2
	lwz 7,8(27)
	.loc 4 6390 0 discriminator 2
	cmpw 7,8,11
	.loc 4 6391 0 discriminator 2
	lfsx 13,7,9
	slwi 6,6,2
.LBB16054:
.LBB16055:
	.loc 3 2056 0 discriminator 2
	mullw 10,8,10
.LBE16055:
.LBE16054:
	.loc 4 6391 0 discriminator 2
	add 6,0,6
	lfsx 0,6,9
	fmuls 0,12,0
.LBB16057:
.LBB16056:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
.LVL3941:
.LBE16056:
.LBE16057:
	.loc 4 6391 0 discriminator 2
	fmadds 0,13,11,0
	lfsx 13,10,9
	fsubs 0,13,0
	stfsx 0,10,9
	.loc 4 6390 0 discriminator 2
	bge+ 7,.L2358
	.loc 4 6386 0
	addi 8,8,1
.LVL3942:
	cmpw 7,8,5
	bgt- 7,.L2350
.LVL3943:
	lwz 11,4(31)
.LVL3944:
	lwz 0,12(31)
	lwz 10,8(27)
	mullw 9,4,11
	b .L2359
.LVL3945:
.L2347:
.LBB16058:
.LBB16059:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE16059:
.LBE16058:
	.loc 4 6347 0
	lis 10,.LC9@ha
	.loc 4 6396 0
	lwz 11,12(31)
.LBB16061:
.LBB16060:
	.loc 3 2056 0
	mullw 0,4,0
.LBE16060:
.LBE16061:
	.loc 4 6396 0
	lwz 9,8(27)
	.loc 4 6347 0
	lfs 9,.LC9@l(10)
	.loc 4 6396 0
	slwi 0,0,2
	add 11,11,0
	lwzx 0,11,30
	stwx 0,9,3
	b .L2350
.LVL3946:
.L2370:
	.loc 4 6425 0
	cmpwi 7,9,1
	ble- 7,.L2361
	li 11,0
	li 10,1
.LVL3947:
.L2372:
	.loc 4 8102 0 discriminator 2
	lwz 9,8(27)
	.loc 4 6425 0 discriminator 2
	addi 10,10,1
.LBB16062:
.LBB16063:
	.loc 2 1537 0 discriminator 2
	add 8,9,11
.LVL3948:
.LBE16063:
.LBE16062:
.LBB16064:
.LBB16065:
	addi 11,11,4
.LBE16065:
.LBE16064:
	.loc 4 6426 0 discriminator 2
	lwzx 0,9,11
	stw 0,0(8)
	.loc 4 6425 0 discriminator 2
	lwz 9,0(31)
	cmpw 7,9,10
	bgt+ 7,.L2372
.LVL3949:
.L2361:
	.loc 4 6428 0
	lwz 11,8(27)
.LBB16066:
.LBB16067:
	.loc 2 1537 0
	addi 0,9,-1
.LBE16067:
.LBE16066:
	.loc 4 6428 0
	slwi 0,0,2
	li 9,0
.LVL3950:
	stwx 9,11,0
.LBE16070:
	.loc 4 6429 0
	lwz 0,52(1)
	lwz 24,16(1)
	mtlr 0
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
.LVL3951:
	lwz 28,32(1)
	lwz 29,36(1)
.LVL3952:
	lwz 30,40(1)
	lwz 31,44(1)
.LVL3953:
	addi 1,1,48
.LCFI393:
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
.LFE2647:
	.size	_ZN6idMatX20HouseholderReductionER6idVecXS1_, .-_ZN6idMatX20HouseholderReductionER6idVecXS1_
	.align 2
	.globl _ZN6idMatX2QLER6idVecXS1_
	.type	_ZN6idMatX2QLER6idVecXS1_, @function
_ZN6idMatX2QLER6idVecXS1_:
.LFB2648:
	.loc 4 6442 0
	.cfi_startproc
.LVL3954:
	mflr 0
	stwu 1,-72(1)
.LCFI394:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 21,28(1)
	stw 0,76(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 30,64(1)
	stw 31,68(1)
.LBB16158:
.LBB16159:
	.loc 4 6449 0
	lwz 9,0(3)
	cmpwi 7,9,0
	ble- 7,.L2421
	.cfi_offset 31, -4
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
	.cfi_offset 21, -44
.LBB16160:
.LBB16161:
.LBB16162:
	.loc 4 6463 0
	lis 11,.LC9@ha
.LBB16163:
.LBB16164:
.LBB16165:
.LBB16166:
	.loc 5 276 0
	lis 12,_ZN6idMath5iSqrtE@ha
.LBE16166:
.LBE16165:
.LBE16164:
.LBE16163:
	.loc 4 6463 0
	lfs 7,.LC9@l(11)
.LBE16162:
.LBE16161:
.LBE16160:
	.loc 4 6449 0
	li 28,0
	li 6,0
	addi 30,9,-1
.LBB16293:
.LBB16286:
.LBB16279:
	.loc 4 6462 0
	lis 27,.LC1@ha
.LBB16187:
.LBB16181:
.LBB16174:
.LBB16167:
	.loc 5 275 0
	lis 25,.LC6@ha
	.loc 5 276 0
	la 12,_ZN6idMath5iSqrtE@l(12)
	.loc 5 278 0
	lis 26,.LC8@ha
.LVL3955:
.L2392:
	cmpw 7,6,30
.LBE16167:
.LBE16174:
.LBE16181:
.LBE16187:
.LBE16279:
.LBE16286:
.LBE16293:
.LBE16159:
.LBE16158:
	.loc 4 6442 0
	subf 10,6,30
.LBB16306:
.LBB16300:
	.loc 4 6449 0
	addi 23,6,1
.LBB16294:
.LBB16287:
.LBB16280:
.LBB16188:
	.loc 4 6442 0
	li 21,32
.LBE16188:
.LBE16280:
.LBE16287:
.LBE16294:
.LBE16300:
.LBE16306:
	addi 10,10,1
.LBB16307:
.LBB16301:
	slwi 24,23,2
.LBB16295:
.LBB16288:
.LBB16281:
.LBB16251:
	mtlr 21
.LBE16251:
.LBE16281:
.LBE16288:
.LBE16295:
.LBE16301:
.LBE16307:
	mr 11,28
	mr 7,6
	mtctr 10
	bgt- 7,.L2417
.LVL3956:
.L2424:
	lis 0,0x8000
	cmpw 7,30,0
	bne+ 7,.L2408
	b .L2417
.LVL3957:
.L2395:
.LBB16308:
.LBB16302:
	.loc 4 8102 0
	lwz 10,8(4)
.LVL3958:
.LBB16296:
.LBB16289:
.LBB16282:
	.loc 4 6453 0
	lwz 8,8(5)
.LBB16252:
.LBB16253:
	.loc 5 781 0
	lwzx 31,10,11
.LBE16253:
.LBE16252:
.LBB16255:
.LBB16256:
	lwzx 10,10,0
.LBE16256:
.LBE16255:
.LBB16258:
.LBB16254:
	rlwinm 31,31,0,1,31
.LBE16254:
.LBE16258:
	.loc 4 6452 0
	stw 31,16(1)
.LBB16259:
.LBB16257:
	.loc 5 781 0
	rlwinm 10,10,0,1,31
.LBE16257:
.LBE16259:
	.loc 4 6452 0
	lfs 8,16(1)
	stw 10,16(1)
	addi 10,7,1
.LBB16260:
.LBB16261:
	.loc 5 781 0
	lwzx 11,8,11
.LVL3959:
.LBE16261:
.LBE16260:
	.loc 4 6452 0
	lfs 10,16(1)
.LBB16263:
.LBB16262:
	.loc 5 781 0
	rlwinm 11,11,0,1,31
.LBE16262:
.LBE16263:
	.loc 4 6453 0
	stw 11,16(1)
	.loc 4 6452 0
	fadds 0,8,10
.LVL3960:
	.loc 4 6453 0
	mr 11,0
	lfs 11,16(1)
	fadds 13,0,11
	fcmpu 7,0,13
	beq- 7,.L2394
.LVL3961:
	.loc 4 6451 0
	mr 7,10
.LVL3962:
.L2408:
.LBB16264:
.LBB16265:
	.loc 2 1537 0 discriminator 1
	addi 0,11,4
.LBE16265:
.LBE16264:
	.loc 4 6451 0 discriminator 1
	bdnz .L2395
.L2394:
	.loc 4 6457 0
	cmpw 7,6,7
	beq- 7,.L2396
	.loc 4 8102 0
	lwz 11,8(4)
	.loc 4 6462 0
	la 31,.LC1@l(27)
	.loc 4 8102 0
	lwz 9,8(5)
.LBB16266:
.LBB16182:
.LBB16175:
.LBB16168:
	.loc 5 275 0
	la 30,.LC6@l(25)
.LBE16168:
.LBE16175:
.LBE16182:
.LBE16266:
	.loc 4 6461 0
	lfsx 0,11,28
.LBB16267:
.LBB16268:
	.loc 2 1537 0
	add 10,11,28
.LBE16268:
.LBE16267:
	.loc 4 6461 0
	lfsx 12,9,28
.LBB16269:
.LBB16183:
.LBB16176:
.LBB16169:
	.loc 5 278 0
	la 29,.LC8@l(26)
.LBE16169:
.LBE16176:
.LBE16183:
.LBE16269:
	.loc 4 6461 0
	lfsx 10,11,24
	fadds 13,12,12
	.loc 4 6462 0
	lfs 11,.LC1@l(27)
	.loc 4 6461 0
	fsubs 10,10,0
.LBB16270:
.LBB16184:
.LBB16177:
.LBB16170:
	.loc 5 275 0
	lfs 9,.LC6@l(25)
.LBE16170:
.LBE16177:
.LBE16184:
.LBE16270:
	.loc 4 6461 0
	fdivs 13,10,13
.LVL3963:
.LBB16271:
.LBB16185:
.LBB16178:
.LBB16171:
	.loc 5 278 0
	lfs 10,.LC8@l(26)
.LBE16171:
.LBE16178:
.LBE16185:
.LBE16271:
	.loc 4 6462 0
	fmadds 11,13,13,11
	.loc 4 6463 0
	fcmpu 7,13,7
	.loc 4 6462 0
	stfs 11,8(1)
.LVL3964:
.LBB16272:
.LBB16186:
.LBB16179:
.LBB16172:
	.loc 5 275 0
	fmuls 9,11,9
	.loc 5 270 0
	lwz 0,8(1)
.LVL3965:
	.loc 4 6442 0
	fneg 9,9
	.loc 5 276 0
	rlwinm 8,0,9,24,31
	rlwinm 0,0,19,21,29
	subfic 8,8,380
	lwzx 0,12,0
	rlwinm 8,8,22,0,8
	or 0,8,0
	.loc 5 277 0
	stw 0,16(1)
	lfs 8,16(1)
	fmr 11,8
.LVL3966:
	.loc 5 278 0
	fmul 8,11,11
.LVL3967:
	fmadd 8,9,8,10
	fmul 11,11,8
.LVL3968:
	.loc 5 279 0
	fmul 8,11,11
	fmadd 10,9,8,10
.LVL3969:
	fmul 11,11,10
.LVL3970:
.LBE16172:
.LBE16179:
	.loc 5 303 0
	lfs 10,8(1)
.LBB16180:
.LBB16173:
	.loc 5 280 0
	frsp 11,11
.LVL3971:
.LBE16173:
.LBE16180:
	.loc 5 303 0
	fmuls 11,10,11
.LBE16186:
.LBE16272:
	.loc 4 6463 0
	bnl- 7,.L2418
.LVL3972:
	.loc 4 6464 0
	fsubs 11,13,11
.LVL3973:
.L2420:
	.loc 4 6466 0
	fdivs 12,12,11
.LBB16273:
.LBB16274:
	.loc 2 1537 0
	slwi 22,7,2
.LBE16274:
.LBE16273:
	.loc 4 6466 0
	lfsx 13,11,22
.LVL3974:
.LBB16275:
	.loc 4 6471 0
	addi 7,7,-1
.LVL3975:
	cmpw 7,7,6
	.loc 4 6470 0
	lis 11,.LC9@ha
	lfs 9,.LC9@l(11)
.LBE16275:
	.loc 4 6466 0
	fsubs 13,13,0
	fadds 13,13,12
	stfs 13,8(1)
.LVL3976:
.LBB16276:
	.loc 4 6471 0
	blt- 7,.L2400
.LBE16276:
	.loc 4 6469 0
	lfs 13,.LC1@l(27)
.LVL3977:
.LBB16277:
	.loc 4 6471 0
	mr 8,22
.LBB16189:
.LBB16190:
.LBB16191:
	.loc 2 1537 0
	addi 10,8,-4
.LBE16191:
.LBE16190:
.LBB16193:
.LBB16194:
	.loc 5 781 0
	lwz 21,8(1)
.LBE16194:
.LBE16193:
.LBE16189:
.LBE16277:
	.loc 4 6468 0
	fmr 12,13
.LVL3978:
.LBB16278:
.LBB16249:
	.loc 4 6472 0
	lfsx 0,9,10
.LBB16198:
.LBB16195:
	.loc 5 781 0
	rlwinm 0,21,0,1,31
.LBE16195:
.LBE16198:
	.loc 4 6472 0
	fmuls 12,0,12
	.loc 4 6473 0
	fmuls 0,13,0
	.loc 4 6472 0
	stfs 12,12(1)
.LVL3979:
.LBB16199:
.LBB16200:
	.loc 5 781 0
	lwz 21,12(1)
	rlwinm 11,21,0,1,31
.LBE16200:
.LBE16199:
	.loc 4 6474 0
	stw 11,16(1)
	lfs 8,16(1)
	stw 0,16(1)
	lfs 10,16(1)
	fcmpu 7,8,10
	cror 30,29,30
	bne- 7,.L2419
.LVL3980:
.L2423:
	.loc 4 6475 0
	lfs 11,8(1)
.LBB16202:
.LBB16203:
.LBB16204:
.LBB16205:
	.loc 5 275 0
	lfs 6,0(30)
.LBE16205:
.LBE16204:
.LBE16203:
.LBE16202:
	.loc 4 6475 0
	fdivs 13,11,12
.LVL3981:
	.loc 4 6476 0
	lfs 12,0(31)
.LVL3982:
.LBB16217:
.LBB16214:
.LBB16210:
.LBB16206:
	.loc 5 278 0
	lfs 8,0(29)
.LBE16206:
.LBE16210:
.LBE16214:
.LBE16217:
	.loc 4 6476 0
	fmadds 10,13,13,12
	stfs 10,8(1)
.LVL3983:
.LBB16218:
.LBB16215:
.LBB16211:
.LBB16207:
	.loc 5 275 0
	fmuls 6,10,6
	.loc 5 270 0
	lwz 0,8(1)
.LVL3984:
	.loc 4 6442 0
	fneg 6,6
	.loc 5 276 0
	rlwinm 21,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 11,12,0
.LVL3985:
	subfic 0,21,380
	rlwinm 0,0,22,0,8
	or 0,0,11
	.loc 5 277 0
	stw 0,16(1)
	lfs 11,16(1)
	fmr 10,11
.LVL3986:
	.loc 5 278 0
	fmul 11,10,10
.LVL3987:
	fmadd 11,6,11,8
	fmul 11,10,11
.LVL3988:
	.loc 5 279 0
	fmul 10,11,11
	fmadd 8,6,10,8
.LVL3989:
.LBE16207:
.LBE16211:
.LBE16215:
.LBE16218:
	.loc 4 6477 0
	lfs 10,12(1)
.LBB16219:
.LBB16216:
.LBB16212:
.LBB16208:
	.loc 5 279 0
	fmul 11,11,8
.LVL3990:
.LBE16208:
.LBE16212:
	.loc 5 303 0
	lfs 8,8(1)
.LBB16213:
.LBB16209:
	.loc 5 280 0
	frsp 11,11
.LVL3991:
.LBE16209:
.LBE16213:
	.loc 5 303 0
	fmuls 11,8,11
.LVL3992:
.LBE16216:
.LBE16219:
	.loc 4 6478 0
	fdivs 12,12,11
.LVL3993:
	.loc 4 6477 0
	fmuls 11,10,11
	.loc 4 6479 0
	fmuls 13,13,12
.LVL3994:
	.loc 4 6477 0
	stfsx 11,9,8
.LVL3995:
.L2403:
	.loc 4 8102 0
	lwz 9,8(4)
	.loc 4 6488 0
	fadds 8,0,0
	.loc 4 6487 0
	lfsx 11,9,8
	.loc 4 6488 0
	lfsx 10,9,10
	.loc 4 6487 0
	fsubs 11,11,9
.LVL3996:
	.loc 4 6488 0
	fmuls 9,8,13
	fsubs 10,10,11
	fmadds 10,10,12,9
.LVL3997:
	.loc 4 6489 0
	fmuls 9,12,10
.LVL3998:
	.loc 4 6491 0
	fmsubs 10,13,10,0
.LVL3999:
	.loc 4 6490 0
	fadds 11,11,9
.LVL4000:
	.loc 4 6491 0
	stfs 10,8(1)
.LVL4001:
	.loc 4 6490 0
	stfsx 11,9,8
.LBB16220:
	.loc 4 6493 0
	lwz 0,0(3)
	cmpwi 7,0,0
	ble- 7,.L2404
	lwz 11,4(3)
	li 9,0
	b .L2405
.LVL4002:
.L2422:
	lwz 11,4(3)
.LVL4003:
.L2405:
.LBB16221:
.LBB16222:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
	lwz 0,12(3)
	slwi 11,11,2
	add 11,0,11
.LBE16222:
.LBE16221:
	.loc 4 6494 0 discriminator 2
	lfsx 0,11,8
.LVL4004:
	.loc 4 6495 0 discriminator 2
	lfsx 10,11,10
	fmuls 11,13,0
	.loc 4 6496 0 discriminator 2
	fmuls 0,12,0
	.loc 4 6495 0 discriminator 2
	fmadds 11,10,12,11
	stfsx 11,11,8
.LVL4005:
.LBB16223:
.LBB16224:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(3)
.LVL4006:
	lwz 0,12(3)
	mullw 11,9,11
.LBE16224:
.LBE16223:
	.loc 4 6493 0 discriminator 2
	addi 9,9,1
.LVL4007:
.LBB16226:
.LBB16225:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
.LVL4008:
.LBE16225:
.LBE16226:
	.loc 4 6496 0 discriminator 2
	lfsx 11,11,10
	fmsubs 0,11,13,0
	stfsx 0,11,10
	.loc 4 6493 0 discriminator 2
	lwz 0,0(3)
	cmpw 7,0,9
	bgt+ 7,.L2422
.LVL4009:
.L2404:
.LBE16220:
.LBE16249:
	.loc 4 6471 0
	addi 7,7,-1
.LVL4010:
	mr 8,10
	cmpw 7,7,6
	blt- 7,.L2406
	lwz 9,8(5)
.LVL4011:
.LBB16250:
.LBB16227:
.LBB16192:
	.loc 2 1537 0
	addi 10,8,-4
.LBE16192:
.LBE16227:
.LBB16228:
.LBB16196:
	.loc 5 781 0
	lwz 21,8(1)
.LBE16196:
.LBE16228:
	.loc 4 6472 0
	lfsx 0,9,10
.LBB16229:
.LBB16197:
	.loc 5 781 0
	rlwinm 0,21,0,1,31
.LBE16197:
.LBE16229:
	.loc 4 6472 0
	fmuls 12,0,12
.LVL4012:
	.loc 4 6473 0
	fmuls 0,13,0
	.loc 4 6472 0
	stfs 12,12(1)
.LVL4013:
.LBB16230:
.LBB16201:
	.loc 5 781 0
	lwz 21,12(1)
	rlwinm 11,21,0,1,31
.LBE16201:
.LBE16230:
	.loc 4 6474 0
	stw 11,16(1)
	lfs 8,16(1)
	stw 0,16(1)
	lfs 10,16(1)
	fcmpu 7,8,10
	cror 30,29,30
	beq- 7,.L2423
.LVL4014:
.L2419:
	.loc 4 6481 0
	lfs 11,12(1)
	lfs 13,8(1)
.LBB16231:
.LBB16232:
.LBB16233:
.LBB16234:
	.loc 5 275 0
	lfs 6,0(30)
.LBE16234:
.LBE16233:
.LBE16232:
.LBE16231:
	.loc 4 6481 0
	fdivs 12,11,13
.LVL4015:
	.loc 4 6482 0
	lfs 13,0(31)
.LBB16246:
.LBB16243:
.LBB16239:
.LBB16235:
	.loc 5 278 0
	lfs 8,0(29)
.LBE16235:
.LBE16239:
.LBE16243:
.LBE16246:
	.loc 4 6482 0
	fmadds 10,12,12,13
	stfs 10,12(1)
.LVL4016:
.LBB16247:
.LBB16244:
.LBB16240:
.LBB16236:
	.loc 5 275 0
	fmuls 6,10,6
	.loc 5 270 0
	lwz 0,12(1)
.LVL4017:
	.loc 4 6442 0
	fneg 6,6
	.loc 5 276 0
	rlwinm 21,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 11,12,0
.LVL4018:
	subfic 0,21,380
	rlwinm 0,0,22,0,8
	or 0,0,11
	.loc 5 277 0
	stw 0,16(1)
	lfs 11,16(1)
	fmr 10,11
.LVL4019:
	.loc 5 278 0
	fmul 11,10,10
.LVL4020:
	fmadd 11,6,11,8
	fmul 11,10,11
.LVL4021:
	.loc 5 279 0
	fmul 10,11,11
	fmadd 8,6,10,8
.LVL4022:
.LBE16236:
.LBE16240:
.LBE16244:
.LBE16247:
	.loc 4 6483 0
	lfs 10,8(1)
.LBB16248:
.LBB16245:
.LBB16241:
.LBB16237:
	.loc 5 279 0
	fmul 11,11,8
.LVL4023:
.LBE16237:
.LBE16241:
	.loc 5 303 0
	lfs 8,12(1)
.LBB16242:
.LBB16238:
	.loc 5 280 0
	frsp 11,11
.LVL4024:
.LBE16238:
.LBE16242:
	.loc 5 303 0
	fmuls 11,8,11
.LVL4025:
.LBE16245:
.LBE16248:
	.loc 4 6484 0
	fdivs 13,13,11
.LVL4026:
	.loc 4 6483 0
	fmuls 11,10,11
	.loc 4 6485 0
	fmuls 12,12,13
.LVL4027:
	.loc 4 6483 0
	stfsx 11,9,8
	b .L2403
.LVL4028:
.L2406:
.LBE16250:
	.loc 4 6471 0
	lwz 10,8(4)
	lfsx 0,10,28
	add 10,10,28
.LVL4029:
.L2400:
.LBE16278:
	.loc 4 6499 0
	fsubs 0,0,9
	.loc 4 6500 0
	lwz 0,8(1)
	.loc 4 6499 0
	stfs 0,0(10)
	.loc 4 6500 0
	lwz 9,8(5)
	stwx 0,9,28
.LBE16282:
	.loc 4 6450 0
	mflr 0
.LBB16283:
	.loc 4 6501 0
	lwz 9,8(5)
.LBE16283:
	.loc 4 6450 0
	addic. 0,0,-1
.LBB16284:
	.loc 4 6501 0
	stfsx 7,9,22
.LBE16284:
	.loc 4 6450 0
	mtlr 0
	beq- 0,.L2412
	lwz 9,0(3)
.LBE16289:
.LBE16296:
.LBE16302:
.LBE16308:
	.loc 4 6442 0
	mr 11,28
	mr 7,6
.LVL4030:
	addi 30,9,-1
	cmpw 7,6,30
	subf 10,6,30
	addi 10,10,1
	mtctr 10
	ble+ 7,.L2424
.LVL4031:
.L2417:
	li 21,1
	mtctr 21
	b .L2408
.LVL4032:
.L2418:
.LBB16309:
.LBB16303:
.LBB16297:
.LBB16290:
.LBB16285:
	.loc 4 6466 0
	fadds 11,13,11
	b .L2420
.LVL4033:
.L2396:
.LBE16285:
.LBE16290:
.LBE16297:
	.loc 4 6449 0
	cmpw 7,9,23
.LBB16298:
.LBB16291:
	.loc 4 6450 0
	addi 28,28,4
.LBE16291:
.LBE16298:
	.loc 4 6449 0
	ble- 7,.L2421
	mr 6,23
	b .L2392
.LVL4034:
.L2412:
.LBE16303:
.LBE16309:
	.loc 4 6508 0
	lwz 0,76(1)
.LBB16310:
.LBB16304:
.LBB16299:
.LBB16292:
	.loc 4 6504 0
	li 3,0
.LVL4035:
.LBE16292:
.LBE16299:
.LBE16304:
.LBE16310:
	.loc 4 6508 0
	lwz 21,28(1)
	mtlr 0
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI395:
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
.LVL4036:
.L2421:
.LCFI396:
	.cfi_restore_state
	lwz 0,76(1)
.LBB16311:
.LBB16305:
	.loc 4 6507 0
	li 3,1
.LVL4037:
.LBE16305:
.LBE16311:
	.loc 4 6508 0
	lwz 21,28(1)
	mtlr 0
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	addi 1,1,72
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
.LCFI397:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE2648:
	.size	_ZN6idMatX2QLER6idVecXS1_, .-_ZN6idMatX2QLER6idVecXS1_
	.align 2
	.globl _ZN6idMatX31Eigen_SolveSymmetricTriDiagonalER6idVecX
	.type	_ZN6idMatX31Eigen_SolveSymmetricTriDiagonalER6idVecX, @function
_ZN6idMatX31Eigen_SolveSymmetricTriDiagonalER6idVecX:
.LFB2649:
	.loc 4 6520 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2649
.LVL4038:
	mflr 0
	stwu 1,-48(1)
.LCFI398:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 27,28(1)
	stw 0,52(1)
	stw 28,32(1)
	mr 28,4
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.cfi_offset 27, -20
	stw 30,40(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,44(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI399:
	.cfi_def_cfa_register 31
.LVL4039:
	stw 26,24(1)
	stw 29,36(1)
.LBB16340:
	.loc 4 6526 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 27,9
	rlwinm 0,0,0,0,29
.LBB16341:
.LBB16342:
	.loc 2 1762 0
	stw 9,8(31)
.LBE16342:
.LBE16341:
	.loc 4 6526 0
	slwi 11,0,2
.LBB16347:
.LBB16343:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE16343:
.LBE16347:
	.loc 4 6526 0
	subfic 11,11,-32
.LBB16348:
.LBB16344:
	.loc 2 1763 0
	li 0,-1
.LBE16344:
.LBE16348:
	.loc 4 6526 0
	stwux 10,1,11
.LBB16349:
.LBB16345:
	.loc 2 1763 0
	stw 0,12(31)
.LBE16345:
.LBE16349:
	.loc 4 6526 0
	addi 11,1,23
.LVL4040:
	rlwinm 11,11,0,0,27
.LVL4041:
.LBB16350:
.LBB16346:
	.loc 2 1761 0
	stw 11,16(31)
	.loc 2 1764 0
	bge- 7,.L2428
	.cfi_offset 29, -12
	.cfi_offset 26, -24
.LVL4042:
	slwi 10,9,2
	li 8,0
	b .L2429
.LVL4043:
.L2447:
	lwz 11,16(31)
.L2429:
	addi 9,9,1
.LVL4044:
	stwx 8,11,10
	.loc 4 6520 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2447
	lwz 27,0(30)
.L2428:
.LBE16346:
.LBE16350:
.LBB16351:
.LBB16352:
	.loc 2 1708 0
	addi 26,27,3
	.loc 2 1709 0
	lwz 0,4(28)
	.loc 2 1708 0
	rlwinm 26,26,0,0,29
	.loc 2 1710 0
	lwz 3,8(28)
.LVL4045:
	.loc 2 1709 0
	cmpw 7,26,0
.LBE16352:
.LBE16351:
	.loc 4 6527 0
	mr 29,27
.LVL4046:
.LBB16354:
.LBB16353:
	.loc 2 1709 0
	ble- 7,.L2431
	cmpwi 7,0,-1
	beq- 7,.L2431
	.loc 2 1710 0
	cmpwi 7,3,0
	beq- 7,.L2433
.LEHB105:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL4047:
.L2433:
	.loc 2 1713 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	stw 3,8(28)
	.loc 2 1714 0
	stw 26,4(28)
.L2431:
	.loc 2 1717 0
	cmpw 7,27,26
	.loc 2 1716 0
	stw 27,0(28)
.LVL4048:
	.loc 2 1717 0
	bge- 7,.L2434
	slwi 27,27,2
.LVL4049:
	li 9,0
.LVL4050:
.L2436:
	addi 29,29,1
.LVL4051:
	stwx 9,3,27
	.loc 4 6520 0
	addi 0,29,3
	.loc 2 1717 0
	addi 27,27,4
	rlwinm 0,0,0,0,29
	lwz 3,8(28)
	cmpw 7,29,0
	blt+ 7,.L2436
.L2434:
.LVL4052:
.LBE16353:
.LBE16354:
	.loc 4 6529 0 discriminator 1
	lwz 11,0(30)
	addic. 0,11,-1
	ble- 0,.L2437
	.loc 4 6529 0 is_stmt 0
	lwz 10,4(30)
	li 9,0
	b .L2439
.LVL4053:
.L2448:
	lwz 10,4(30)
.LVL4054:
.L2439:
.LBB16355:
.LBB16356:
	.loc 3 2056 0 is_stmt 1 discriminator 2
	mullw 10,9,10
.LBE16356:
.LBE16355:
	.loc 4 6530 0 discriminator 2
	lwz 0,12(30)
	.loc 4 6520 0 discriminator 2
	slwi 11,9,2
.LVL4055:
	.loc 4 6531 0 discriminator 2
	addi 9,9,1
.LVL4056:
	.loc 4 6530 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
	lwzx 0,10,11
	stwx 0,3,11
.LVL4057:
.LBB16357:
.LBB16358:
	.loc 3 2056 0 discriminator 2
	lwz 10,4(30)
.LBE16358:
.LBE16357:
	.loc 4 6531 0 discriminator 2
	lwz 0,12(30)
.LBB16360:
.LBB16359:
	.loc 3 2056 0 discriminator 2
	mullw 10,9,10
.LBE16359:
.LBE16360:
	.loc 4 6531 0 discriminator 2
	slwi 10,10,2
	add 10,0,10
	lwzx 0,10,11
	lwz 10,16(31)
	stwx 0,10,11
.LVL4058:
	.loc 4 6529 0 discriminator 2
	lwz 11,0(30)
	lwz 3,8(28)
	addi 0,11,-1
	cmpw 7,0,9
	bgt+ 7,.L2448
.LVL4059:
.L2437:
.LBB16361:
.LBB16362:
	.loc 3 2056 0
	lwz 11,4(30)
.LBE16362:
.LBE16361:
	.loc 4 6533 0
	slwi 9,0,2
	lwz 10,12(30)
.LBB16364:
.LBB16363:
	.loc 3 2056 0
	mullw 11,0,11
.LBE16363:
.LBE16364:
	.loc 4 6533 0
	slwi 11,11,2
	add 11,10,11
	lwzx 0,11,9
.LVL4060:
	stwx 0,3,9
.LVL4061:
.LBB16365:
.LBB16366:
	.loc 3 2311 0
	lis 9,SIMDProcessor@ha
	lwz 3,SIMDProcessor@l(9)
	lwz 5,0(30)
	lwz 11,0(3)
	lwz 9,4(30)
	lwz 0,156(11)
	lwz 4,12(30)
	mullw 5,5,9
	mtctr 0
	bctrl
.LEHE105:
.LVL4062:
.LBB16367:
	.loc 3 2315 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L2440
	.loc 3 2316 0
	lis 9,.LC1@ha
	.loc 3 2315 0
	lwz 11,4(30)
	.loc 3 2316 0
	lwz 10,.LC1@l(9)
	.loc 3 2315 0
	li 9,0
	b .L2441
.LVL4063:
.L2449:
	lwz 11,4(30)
.LVL4064:
.L2441:
	.loc 3 2316 0
	addi 0,11,1
	lwz 11,12(30)
	mullw 0,0,9
	.loc 3 2315 0
	addi 9,9,1
.LVL4065:
	.loc 3 2316 0
	slwi 0,0,2
	stwx 10,11,0
	.loc 3 2315 0
	lwz 0,0(30)
	cmpw 7,9,0
	blt+ 7,.L2449
.LVL4066:
.L2440:
.LBE16367:
.LBE16366:
.LBE16365:
	.loc 4 6537 0
	mr 3,30
	mr 4,28
	addi 5,31,8
	bl _ZN6idMatX2QLER6idVecXS1_
	lwz 0,12(31)
	mr 30,3
.LVL4067:
	lwz 3,16(31)
.LBB16368:
.LBB16369:
.LBB16370:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L2442
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2450
	cmpwi 7,0,-1
	beq- 7,.L2442
.L2451:
.LEHB106:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE106:
.L2442:
.LBE16370:
.LBE16369:
.LBE16368:
.LBE16340:
	.loc 4 6538 0
	addi 11,31,48
	mr 3,30
	lwz 0,4(11)
	lwz 26,-24(11)
.LVL4068:
	mtlr 0
	lwz 27,-20(11)
	lwz 28,-16(11)
.LVL4069:
	lwz 29,-12(11)
.LVL4070:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI400:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI401:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
.LVL4071:
	blr
.LVL4072:
.L2450:
.LCFI402:
	.cfi_restore_state
.LBB16374:
.LBB16373:
.LBB16372:
.LBB16371:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2442
	cmpwi 7,0,-1
	bne+ 7,.L2451
	b .L2442
.LVL4073:
.L2445:
	mr 30,3
.LVL4074:
.LBE16371:
.LBE16372:
.LBE16373:
	.loc 4 6537 0
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB107:
	bl _Unwind_Resume
.LEHE107:
.LBE16374:
	.cfi_endproc
.LFE2649:
	.section	.gcc_except_table
.LLSDA2649:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2649-.LLSDACSB2649
.LLSDACSB2649:
	.uleb128 .LEHB105-.LFB2649
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L2445-.LFB2649
	.uleb128 0
	.uleb128 .LEHB106-.LFB2649
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB2649
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
.LLSDACSE2649:
	.section	".text"
	.size	_ZN6idMatX31Eigen_SolveSymmetricTriDiagonalER6idVecX, .-_ZN6idMatX31Eigen_SolveSymmetricTriDiagonalER6idVecX
	.align 2
	.globl _ZN6idMatX20Eigen_SolveSymmetricER6idVecX
	.type	_ZN6idMatX20Eigen_SolveSymmetricER6idVecX, @function
_ZN6idMatX20Eigen_SolveSymmetricER6idVecX:
.LFB2650:
	.loc 4 6550 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2650
.LVL4075:
	mflr 0
	stwu 1,-48(1)
.LCFI403:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 27,28(1)
	mr 27,3
	.cfi_offset 27, -20
	stw 0,52(1)
	stw 28,32(1)
	stw 29,36(1)
	mr 29,4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 31,44(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI404:
	.cfi_def_cfa_register 31
.LVL4076:
	stw 26,24(1)
	stw 30,40(1)
.LBB16387:
	.loc 4 6555 0
	lwz 10,0(1)
	lwz 9,0(3)
	addi 0,9,3
	mr 28,9
	rlwinm 0,0,0,0,29
.LBB16388:
.LBB16389:
	.loc 2 1762 0
	stw 9,8(31)
.LBE16389:
.LBE16388:
	.loc 4 6555 0
	slwi 11,0,2
.LBB16394:
.LBB16390:
	.loc 2 1764 0
	cmpw 7,9,0
.LBE16390:
.LBE16394:
	.loc 4 6555 0
	subfic 11,11,-32
.LBB16395:
.LBB16391:
	.loc 2 1763 0
	li 0,-1
.LBE16391:
.LBE16395:
	.loc 4 6555 0
	stwux 10,1,11
.LBB16396:
.LBB16392:
	.loc 2 1763 0
	stw 0,12(31)
.LBE16392:
.LBE16396:
	.loc 4 6555 0
	addi 11,1,23
.LVL4077:
	rlwinm 11,11,0,0,27
.LVL4078:
.LBB16397:
.LBB16393:
	.loc 2 1761 0
	stw 11,16(31)
	.loc 2 1764 0
	bge- 7,.L2455
	.cfi_offset 30, -8
	.cfi_offset 26, -24
.LVL4079:
	slwi 10,9,2
	li 8,0
	b .L2456
.LVL4080:
.L2467:
	lwz 11,16(31)
.L2456:
	addi 9,9,1
.LVL4081:
	stwx 8,11,10
	.loc 4 6550 0
	addi 0,9,3
	.loc 2 1764 0
	addi 10,10,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2467
	lwz 28,0(27)
.L2455:
.LBE16393:
.LBE16397:
.LBB16398:
.LBB16399:
	.loc 2 1708 0
	addi 26,28,3
	.loc 2 1709 0
	lwz 0,4(29)
	.loc 2 1708 0
	rlwinm 26,26,0,0,29
.LBE16399:
.LBE16398:
	.loc 4 6556 0
	mr 30,28
.LVL4082:
.LBB16401:
.LBB16400:
	.loc 2 1709 0
	cmpw 7,26,0
	ble- 7,.L2457
	cmpwi 7,0,-1
	beq- 7,.L2457
	.loc 2 1710 0
	lwz 3,8(29)
.LVL4083:
	cmpwi 7,3,0
	beq- 7,.L2458
.LEHB108:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL4084:
.L2458:
	.loc 2 1713 0
	slwi 3,26,2
	bl _Z11Mem_Alloc16i
	stw 3,8(29)
	.loc 2 1714 0
	stw 26,4(29)
.L2457:
	.loc 2 1717 0
	cmpw 7,28,26
	.loc 2 1716 0
	stw 28,0(29)
.LVL4085:
	.loc 2 1717 0
	bge- 7,.L2459
	slwi 28,28,2
.LVL4086:
	li 11,0
.LVL4087:
.L2460:
	addi 30,30,1
.LVL4088:
	lwz 9,8(29)
	.loc 4 6550 0
	addi 0,30,3
	.loc 2 1717 0
	rlwinm 0,0,0,0,29
	stwx 11,9,28
	cmpw 7,30,0
	addi 28,28,4
	blt+ 7,.L2460
.L2459:
.LBE16400:
.LBE16401:
	.loc 4 6558 0
	mr 3,27
	mr 4,29
	addi 5,31,8
	bl _ZN6idMatX20HouseholderReductionER6idVecXS1_
.LEHE108:
.LVL4089:
	.loc 4 6559 0
	mr 3,27
	mr 4,29
	addi 5,31,8
	bl _ZN6idMatX2QLER6idVecXS1_
	lwz 0,12(31)
	mr 30,3
.LVL4090:
	lwz 3,16(31)
.LBB16402:
.LBB16403:
.LBB16404:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L2461
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2468
	cmpwi 7,0,-1
	beq- 7,.L2461
.L2469:
.LEHB109:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE109:
.L2461:
.LBE16404:
.LBE16403:
.LBE16402:
.LBE16387:
	.loc 4 6560 0
	addi 11,31,48
	mr 3,30
	lwz 0,4(11)
	lwz 26,-24(11)
.LVL4091:
	mtlr 0
	lwz 27,-20(11)
.LVL4092:
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL4093:
	lwz 30,-8(11)
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI405:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI406:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
.LVL4094:
	blr
.LVL4095:
.L2468:
.LCFI407:
	.cfi_restore_state
.LBB16408:
.LBB16407:
.LBB16406:
.LBB16405:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2461
	cmpwi 7,0,-1
	bne+ 7,.L2469
	b .L2461
.L2464:
	mr 30,3
.LBE16405:
.LBE16406:
.LBE16407:
	.loc 4 6559 0
	lwz 4,16(31)
	lwz 3,12(31)
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB110:
	bl _Unwind_Resume
.LEHE110:
.LBE16408:
	.cfi_endproc
.LFE2650:
	.section	.gcc_except_table
.LLSDA2650:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2650-.LLSDACSB2650
.LLSDACSB2650:
	.uleb128 .LEHB108-.LFB2650
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L2464-.LFB2650
	.uleb128 0
	.uleb128 .LEHB109-.LFB2650
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB110-.LFB2650
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
.LLSDACSE2650:
	.section	".text"
	.size	_ZN6idMatX20Eigen_SolveSymmetricER6idVecX, .-_ZN6idMatX20Eigen_SolveSymmetricER6idVecX
	.align 2
	.globl _ZN6idMatX19HessenbergReductionERS_
	.type	_ZN6idMatX19HessenbergReductionERS_, @function
_ZN6idMatX19HessenbergReductionERS_:
.LFB2651:
	.loc 4 6569 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2651
.LVL4096:
	mflr 0
	stwu 1,-64(1)
.LCFI408:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	stw 27,44(1)
	mr 27,3
	.cfi_offset 27, -20
	stw 0,68(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 31,60(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI409:
	.cfi_def_cfa_register 31
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
.LBB16488:
	.loc 4 6576 0
	lwz 11,0(1)
	.loc 4 6572 0
	lwz 26,0(3)
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.loc 4 6576 0
	addi 9,26,3
	.loc 4 6572 0
	addi 28,26,-1
.LVL4097:
	.loc 4 6576 0
	rlwinm 9,9,0,0,29
	slwi 0,9,2
.LBB16489:
.LBB16490:
	.loc 2 1764 0
	cmpw 7,26,9
.LBE16490:
.LBE16489:
	.loc 4 6576 0
	subfic 0,0,-32
	stwux 11,1,0
	addi 29,1,23
	rlwinm 29,29,0,0,27
.LVL4098:
.LBB16493:
.LBB16491:
	.loc 2 1764 0
	bge- 7,.L2471
.LVL4099:
	.loc 4 6569 0
	slwi 11,26,2
.LBE16491:
.LBE16493:
.LBE16488:
	mr 9,26
.LBB16579:
.LBB16494:
.LBB16492:
	addi 11,11,-4
	.loc 2 1764 0
	li 10,0
	add 11,11,29
.LVL4100:
.L2472:
	addi 9,9,1
.LVL4101:
	stwu 10,4(11)
	.loc 4 6569 0
	addi 0,9,3
	.loc 2 1764 0
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2472
.LVL4102:
.L2471:
.LBE16492:
.LBE16494:
	.loc 4 6578 0 discriminator 1
	cmpwi 7,28,1
	li 3,4
.LVL4103:
	li 8,1
	ble- 7,.L2474
.LBE16579:
	.loc 4 6569 0 discriminator 1
	lis 24,.LC9@ha
.LBB16580:
	.loc 4 6612 0 discriminator 1
	cmpwi 6,28,0
.LBE16580:
	.loc 4 6569 0 discriminator 1
	lfs 7,.LC9@l(24)
.LBB16581:
.LBB16495:
.LBB16496:
.LBB16497:
.LBB16498:
	.loc 5 276 0 discriminator 1
	lis 24,_ZN6idMath5iSqrtE@ha
.LBE16498:
.LBE16497:
.LBE16496:
.LBE16495:
	.loc 4 6584 0 discriminator 1
	slwi 4,28,2
.LVL4104:
.LBB16514:
.LBB16509:
.LBB16504:
.LBB16499:
	.loc 5 275 0 discriminator 1
	lis 23,.LC6@ha
	.loc 5 276 0 discriminator 1
	la 24,_ZN6idMath5iSqrtE@l(24)
	.loc 5 278 0 discriminator 1
	lis 25,.LC8@ha
.LVL4105:
.L2521:
.LBE16499:
.LBE16504:
.LBE16509:
.LBE16514:
	.loc 4 6578 0 discriminator 1
	lwz 10,4(30)
	.loc 4 6569 0 discriminator 1
	addi 12,3,-4
	.loc 4 6578 0 discriminator 1
	lwz 7,12(30)
.LBE16581:
	.loc 4 6569 0 discriminator 1
	lis 5,.LC9@ha
.LBB16582:
	mullw 9,8,10
.LBE16582:
	lfs 10,.LC9@l(5)
.LBB16583:
	slwi 6,10,2
.LBE16583:
	mr 11,8
.LBB16584:
	slwi 9,9,2
	add 9,12,9
	add 9,7,9
.LVL4106:
.L2475:
.LBB16515:
.LBB16516:
	.loc 5 781 0 discriminator 2
	lwz 0,0(9)
.LBE16516:
.LBE16515:
	.loc 4 6581 0 discriminator 2
	addi 11,11,1
.LVL4107:
	cmpw 7,28,11
	add 9,9,6
.LVL4108:
.LBB16518:
.LBB16517:
	.loc 5 781 0 discriminator 2
	rlwinm 0,0,0,1,31
.LVL4109:
.LBE16517:
.LBE16518:
	.loc 4 6582 0 discriminator 2
	stw 0,12(31)
	lfs 0,12(31)
	fadds 10,10,0
.LVL4110:
	.loc 4 6581 0 discriminator 2
	bge+ 7,.L2475
	.loc 4 6584 0
	fcmpu 7,10,7
	beq- 7,.L2476
.LBE16584:
	.loc 4 6569 0
	li 0,0
.LVL4111:
	mr 11,4
.LVL4112:
	mr 9,28
	stw 0,8(31)
	b .L2478
.LVL4113:
.L2523:
.LBB16585:
	.loc 4 6588 0
	lwz 10,4(30)
	lwz 7,12(30)
.LVL4114:
.L2478:
.LBB16519:
.LBB16520:
	.loc 3 2056 0 discriminator 2
	mullw 10,9,10
.LBE16520:
.LBE16519:
	.loc 4 6590 0 discriminator 2
	lfs 12,8(31)
	.loc 4 6588 0 discriminator 2
	addi 9,9,-1
.LVL4115:
	cmpw 7,9,8
	.loc 4 6589 0 discriminator 2
	slwi 10,10,2
	add 7,7,10
	lfsx 0,7,12
	fdivs 0,0,10
	.loc 4 6590 0 discriminator 2
	fmadds 12,0,0,12
	.loc 4 6589 0 discriminator 2
	stfsx 0,29,11
	.loc 4 6588 0 discriminator 2
	addi 11,11,-4
	.loc 4 6590 0 discriminator 2
	stfs 12,8(31)
.LVL4116:
	.loc 4 6588 0 discriminator 2
	bge+ 7,.L2523
.LVL4117:
.LBB16521:
.LBB16510:
.LBB16505:
.LBB16500:
	.loc 5 270 0
	lwz 0,8(31)
.LVL4118:
.LBE16500:
.LBE16505:
.LBE16510:
.LBE16521:
.LBB16522:
.LBB16523:
	.loc 2 1537 0
	add 5,29,3
.LBE16523:
.LBE16522:
.LBB16524:
.LBB16511:
.LBB16506:
.LBB16501:
	.loc 5 275 0
	lfs 13,8(31)
	.loc 5 276 0
	rlwinm 9,0,9,24,31
.LVL4119:
	rlwinm 0,0,19,21,29
	lwzx 0,24,0
	subfic 9,9,380
	rlwinm 9,9,22,0,8
	.loc 5 275 0
	lfs 11,.LC6@l(23)
	.loc 5 276 0
	or 0,9,0
	.loc 5 277 0
	stw 0,12(31)
	.loc 5 275 0
	fmuls 11,13,11
.LVL4120:
	.loc 5 277 0
	lfs 12,12(31)
.LVL4121:
	.loc 4 6569 0
	fneg 11,11
.LVL4122:
.LBE16501:
.LBE16506:
.LBE16511:
.LBE16524:
	.loc 4 6593 0
	lfsx 13,29,3
.LVL4123:
.LBB16525:
.LBB16512:
.LBB16507:
.LBB16502:
	.loc 5 277 0
	fmr 0,12
.LVL4124:
	.loc 5 278 0
	lfs 12,.LC8@l(25)
.LVL4125:
.LBE16502:
.LBE16507:
.LBE16512:
.LBE16525:
	.loc 4 6593 0
	fcmpu 7,13,7
.LBB16526:
.LBB16513:
.LBB16508:
.LBB16503:
	.loc 5 278 0
	fmul 9,0,0
	fmadd 9,11,9,12
	fmul 0,0,9
.LVL4126:
	.loc 5 279 0
	fmul 9,0,0
	fmadd 12,11,9,12
.LVL4127:
	fmul 0,0,12
.LVL4128:
	.loc 5 280 0
	frsp 8,0
.LBE16503:
.LBE16508:
	.loc 5 303 0
	lfs 0,8(31)
.LVL4129:
	fmuls 8,8,0
.LVL4130:
.LBE16513:
.LBE16526:
	.loc 4 6593 0
	bng- 7,.L2479
	.loc 4 6594 0
	fneg 8,8
.LVL4131:
.L2479:
	.loc 4 6601 0
	lwz 0,0(27)
	.loc 4 6569 0
	fneg 9,8
	.loc 4 6597 0
	fsubs 0,13,8
	.loc 4 6596 0
	lfs 12,8(31)
	.loc 4 6601 0
	cmpw 7,8,0
	mr 7,3
	.loc 4 6596 0
	fmadds 9,9,13,12
.LVL4132:
	.loc 4 6601 0
	mr 21,8
	.loc 4 6597 0
	stfs 0,0(5)
.LVL4133:
	.loc 4 6601 0
	bge- 7,.L2482
.LVL4134:
.L2520:
	.loc 4 6612 0 discriminator 1
	lwz 0,4(30)
.LBE16585:
	.loc 4 6569 0 discriminator 1
	lis 22,.LC9@ha
.LBB16586:
	.loc 4 6612 0 discriminator 1
	lwz 6,12(30)
.LBE16586:
	.loc 4 6569 0 discriminator 1
	mr 10,4
.LBB16587:
	mullw 9,28,0
.LBE16587:
	lfs 13,.LC9@l(22)
	mr 11,28
.LBB16588:
	slwi 9,9,2
	mulli 22,0,-4
	add 9,9,7
	add 9,6,9
.LVL4135:
.L2483:
	.loc 4 6603 0 discriminator 2
	addi 11,11,-1
.LVL4136:
	.loc 4 6604 0 discriminator 2
	lfsx 11,29,10
	.loc 4 6603 0 discriminator 2
	cmpw 7,11,8
	.loc 4 6604 0 discriminator 2
	lfs 12,0(9)
	.loc 4 6603 0 discriminator 2
	addi 10,10,-4
	add 9,9,22
	.loc 4 6604 0 discriminator 2
	fmadds 13,11,12,13
.LVL4137:
	.loc 4 6603 0 discriminator 2
	bge+ 7,.L2483
	.loc 4 6606 0
	fdivs 13,13,9
.LVL4138:
	.loc 4 6569 0
	mr 10,5
.LBE16588:
	mr 9,8
	fneg 13,13
.LVL4139:
	b .L2485
.LVL4140:
.L2524:
.LBB16589:
	.loc 4 6607 0
	lwz 0,4(30)
	lwz 6,12(30)
	lfsu 0,4(10)
.LVL4141:
.L2485:
.LBB16527:
.LBB16528:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,0
.LBE16528:
.LBE16527:
	.loc 4 6607 0 discriminator 2
	addi 9,9,1
.LVL4142:
	cmpw 7,28,9
.LBB16530:
.LBB16529:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,6,11
.LVL4143:
.LBE16529:
.LBE16530:
	.loc 4 6608 0 discriminator 2
	lfsx 12,11,7
	fmadds 0,13,0,12
	stfsx 0,11,7
	.loc 4 6607 0 discriminator 2
	bge+ 7,.L2524
	.loc 4 6601 0
	lwz 0,0(27)
	addi 21,21,1
.LVL4144:
	lfs 0,0(5)
	addi 7,7,4
	cmpw 7,0,21
	bgt+ 7,.L2520
.LVL4145:
.L2482:
	.loc 4 6612 0 discriminator 1
	blt- 6,.L2487
	.loc 4 6612 0 is_stmt 0
	lwz 10,4(30)
	li 7,0
.LVL4146:
.L2488:
	.loc 4 6612 0 discriminator 1
	mullw 10,7,10
	lwz 0,12(30)
	.loc 4 6601 0 is_stmt 1 discriminator 1
	lis 22,.LC9@ha
	lfs 13,.LC9@l(22)
	mr 9,4
	mr 11,28
	.loc 4 6612 0 discriminator 1
	slwi 6,10,2
	add 6,0,6
.LVL4147:
.L2489:
	.loc 4 6614 0 discriminator 2
	addi 11,11,-1
.LVL4148:
	.loc 4 6615 0 discriminator 2
	lfsx 11,29,9
	.loc 4 6614 0 discriminator 2
	cmpw 7,11,8
	.loc 4 6615 0 discriminator 2
	lfsx 12,6,9
	.loc 4 6614 0 discriminator 2
	addi 9,9,-4
	.loc 4 6615 0 discriminator 2
	fmadds 13,11,12,13
.LVL4149:
	.loc 4 6614 0 discriminator 2
	bge+ 7,.L2489
	.loc 4 6617 0
	fdivs 13,13,9
.LVL4150:
	mr 9,3
	mr 11,8
.LVL4151:
	fneg 13,13
.LVL4152:
	b .L2491
.LVL4153:
.L2525:
	.loc 4 6618 0
	lwz 10,4(30)
	lwz 0,12(30)
	mullw 10,7,10
	lfsx 0,9,29
.L2491:
.LBB16531:
.LBB16532:
	.loc 3 2056 0 discriminator 2
	slwi 10,10,2
.LBE16532:
.LBE16531:
	.loc 4 6618 0 discriminator 2
	addi 11,11,1
.LVL4154:
.LBB16534:
.LBB16533:
	.loc 3 2056 0 discriminator 2
	add 10,0,10
.LVL4155:
.LBE16533:
.LBE16534:
	.loc 4 6618 0 discriminator 2
	cmpw 7,28,11
	.loc 4 6619 0 discriminator 2
	lfsx 12,10,9
	fmadds 0,13,0,12
	stfsx 0,10,9
	.loc 4 6618 0 discriminator 2
	addi 9,9,4
	bge+ 7,.L2525
	.loc 4 6612 0
	addi 7,7,1
.LVL4156:
	cmpw 7,7,26
	beq- 7,.L2526
	lwz 10,4(30)
	lfs 0,0(5)
	b .L2488
.L2526:
	lfs 0,0(5)
.LVL4157:
.L2487:
.LBB16535:
.LBB16536:
	.loc 3 2056 0
	lwz 0,4(30)
.LBE16536:
.LBE16535:
	.loc 4 6622 0
	fmuls 0,0,10
	.loc 4 6623 0
	lwz 9,12(30)
	fmuls 10,8,10
.LVL4158:
.LBB16538:
.LBB16537:
	.loc 3 2056 0
	mullw 0,8,0
.LBE16537:
.LBE16538:
	.loc 4 6622 0
	stfs 0,0(5)
.LVL4159:
	.loc 4 6623 0
	slwi 0,0,2
	add 9,9,0
	stfsx 10,9,12
.LVL4160:
.L2476:
	.loc 4 6578 0
	addi 8,8,1
.LVL4161:
	addi 3,3,4
	cmpw 7,28,8
	bgt+ 7,.L2521
.LVL4162:
.L2474:
.LBB16539:
.LBB16540:
	.loc 3 2311 0
	lis 9,SIMDProcessor@ha
	lwz 5,0(27)
	lwz 3,SIMDProcessor@l(9)
	lwz 9,4(27)
	lwz 11,0(3)
	lwz 4,12(27)
	mullw 5,5,9
	lwz 0,156(11)
	mtctr 0
.LEHB111:
	bctrl
.LEHE111:
.LVL4163:
.LBB16541:
	.loc 3 2315 0
	lwz 0,0(27)
	cmpwi 7,0,0
	ble- 7,.L2493
	.loc 3 2316 0
	lis 9,.LC1@ha
	.loc 3 2315 0
	lwz 11,4(27)
	.loc 3 2316 0
	lwz 8,.LC1@l(9)
	.loc 3 2315 0
	li 9,0
	b .L2494
.LVL4164:
.L2527:
	lwz 11,4(27)
.LVL4165:
.L2494:
	.loc 3 2316 0
	addi 0,11,1
	lwz 10,12(27)
	mullw 0,0,9
	.loc 3 2315 0
	addi 9,9,1
.LVL4166:
	.loc 3 2316 0
	slwi 0,0,2
	stwx 8,10,0
	.loc 3 2315 0
	lwz 0,0(27)
	cmpw 7,9,0
	blt+ 7,.L2527
.LVL4167:
.L2493:
.LBE16541:
.LBE16540:
.LBE16539:
.LBB16554:
	.loc 4 6629 0
	addic. 6,26,-2
	ble- 0,.L2470
	.loc 4 6630 0
	lis 5,.LC9@ha
	.loc 4 6629 0
	mr 25,28
	.loc 4 6630 0
	lfs 11,.LC9@l(5)
	.loc 4 6629 0
	slwi 4,6,2
.LVL4168:
.L2503:
	.loc 4 8102 0
	lwz 0,4(30)
	.loc 4 6569 0
	addi 3,4,-4
	.loc 4 8102 0
	lwz 10,12(30)
.LVL4169:
.LBB16555:
.LBB16556:
	.loc 3 2056 0
	mullw 9,6,0
.LBE16556:
.LBE16555:
	.loc 4 6630 0
	slwi 9,9,2
	add 9,10,9
	lfsx 0,9,3
	fcmpu 7,0,11
	beq- 7,.L2496
	.loc 4 6631 0
	cmpw 7,28,25
	mr 11,25
.LVL4170:
	blt- 7,.L2497
	subf 8,25,26
	addi 9,4,4
	mtctr 8
	b .L2498
.LVL4171:
.L2528:
	lwz 0,4(30)
	lwz 10,12(30)
.LVL4172:
.L2498:
.LBB16557:
.LBB16558:
	.loc 3 2056 0 discriminator 2
	mullw 0,11,0
.LBE16558:
.LBE16557:
	.loc 4 6631 0 discriminator 2
	addi 11,11,1
.LVL4173:
	.loc 4 6632 0 discriminator 2
	slwi 0,0,2
	add 10,10,0
	lwzx 0,10,3
	stwx 0,29,9
	.loc 4 6631 0 discriminator 2
	addi 9,9,4
	bdnz .L2528
.LVL4174:
.L2497:
	.loc 4 6634 0 discriminator 1
	cmpw 7,6,28
	bgt- 7,.L2496
	.loc 4 6634 0 is_stmt 0
	mr 10,4
	mr 5,6
	add 23,4,29
.LVL4175:
.L2499:
	.loc 4 6634 0 discriminator 1
	lwz 0,4(27)
.LBE16554:
.LBB16567:
.LBB16548:
.LBB16542:
	.loc 4 6569 0 is_stmt 1 discriminator 1
	lis 22,.LC9@ha
.LBE16542:
.LBE16548:
.LBE16567:
.LBB16568:
	.loc 4 6634 0 discriminator 1
	lwz 8,12(27)
.LBE16568:
.LBB16569:
.LBB16549:
.LBB16543:
	.loc 4 6569 0 discriminator 1
	subf 24,6,26
.LBE16543:
.LBE16549:
.LBE16569:
.LBB16570:
	mullw 9,6,0
.LBE16570:
.LBB16571:
.LBB16550:
.LBB16544:
	lfs 0,.LC9@l(22)
	mtctr 24
.LBE16544:
.LBE16550:
.LBE16571:
.LBB16572:
	slwi 7,0,2
.LBE16572:
.LBB16573:
.LBB16551:
.LBB16545:
	mr 11,4
.LBE16545:
.LBE16551:
.LBE16573:
.LBB16574:
	slwi 9,9,2
	add 9,9,10
	add 9,8,9
.LVL4176:
.L2500:
	.loc 4 6637 0 discriminator 2
	lfsx 12,29,11
	.loc 4 6636 0 discriminator 2
	addi 11,11,4
	.loc 4 6637 0 discriminator 2
	lfs 13,0(9)
	.loc 4 6636 0 discriminator 2
	add 9,9,7
	.loc 4 6637 0 discriminator 2
	fmadds 0,12,13,0
.LVL4177:
	.loc 4 6636 0 discriminator 2
	bdnz .L2500
.LVL4178:
	.loc 4 6640 0
	lfsx 13,4,29
	.loc 4 6569 0
	mr 7,23
.LBB16559:
.LBB16560:
	.loc 3 2056 0
	lwz 11,4(30)
.LBE16560:
.LBE16559:
.LBE16574:
.LBB16575:
.LBB16552:
.LBB16546:
	.loc 4 6569 0
	mr 9,6
.LBE16546:
.LBE16552:
.LBE16575:
.LBB16576:
	.loc 4 6640 0
	fdivs 0,0,13
.LVL4179:
	lwz 24,12(30)
.LBB16562:
.LBB16561:
	.loc 3 2056 0
	mullw 11,6,11
.LBE16561:
.LBE16562:
	.loc 4 6640 0
	slwi 11,11,2
	add 11,24,11
	lfsx 12,11,3
.LBE16576:
.LBB16577:
.LBB16553:
.LBB16547:
	.loc 4 6569 0
	subf 11,6,26
	mtctr 11
.LBE16547:
.LBE16553:
.LBE16577:
.LBB16578:
	.loc 4 6640 0
	fdivs 0,0,12
.LVL4180:
	b .L2502
.LVL4181:
.L2529:
	.loc 4 6641 0
	lwz 0,4(27)
	lwz 8,12(27)
	lfsu 13,4(7)
.LVL4182:
.L2502:
.LBB16563:
.LBB16564:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,0
.LBE16564:
.LBE16563:
	.loc 4 6641 0 discriminator 2
	addi 9,9,1
.LVL4183:
.LBB16566:
.LBB16565:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,8,11
.LVL4184:
.LBE16565:
.LBE16566:
	.loc 4 6642 0 discriminator 2
	lfsx 12,11,10
	fmadds 13,0,13,12
	stfsx 13,11,10
	.loc 4 6641 0 discriminator 2
	bdnz .L2529
	.loc 4 6634 0
	addi 5,5,1
.LVL4185:
	addi 10,10,4
	cmpw 7,5,26
	bne+ 7,.L2499
.LVL4186:
.L2496:
	.loc 4 6629 0
	addic. 6,6,-1
.LVL4187:
	addi 25,25,-1
	mr 4,3
	bne+ 0,.L2503
.LVL4188:
.L2470:
.LBE16578:
.LBE16589:
	.loc 4 6647 0
	addi 11,31,64
	lwz 0,4(11)
	lwz 21,-44(11)
	mtlr 0
	lwz 22,-40(11)
	lwz 23,-36(11)
	lwz 24,-32(11)
	lwz 25,-28(11)
	lwz 26,-24(11)
.LVL4189:
	lwz 27,-20(11)
.LVL4190:
	lwz 28,-16(11)
.LVL4191:
	lwz 29,-12(11)
.LVL4192:
	lwz 30,-8(11)
.LVL4193:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI410:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI411:
	.cfi_def_cfa_register 1
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
.LVL4194:
.L2508:
.LCFI412:
	.cfi_restore_state
	mr 30,3
.LVL4195:
.LBB16590:
	.loc 4 6646 0
	mr 4,29
	li 3,-1
	bl _ZN6idVecXD2Ev.isra.6
	mr 3,30
.LEHB112:
	bl _Unwind_Resume
.LEHE112:
.LBE16590:
	.cfi_endproc
.LFE2651:
	.section	.gcc_except_table
.LLSDA2651:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2651-.LLSDACSB2651
.LLSDACSB2651:
	.uleb128 .LEHB111-.LFB2651
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L2508-.LFB2651
	.uleb128 0
	.uleb128 .LEHB112-.LFB2651
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
.LLSDACSE2651:
	.section	".text"
	.size	_ZN6idMatX19HessenbergReductionERS_, .-_ZN6idMatX19HessenbergReductionERS_
	.align 2
	.globl _ZN6idMatX15ComplexDivisionEffffRfS0_
	.type	_ZN6idMatX15ComplexDivisionEffffRfS0_, @function
_ZN6idMatX15ComplexDivisionEffffRfS0_:
.LFB2652:
	.loc 4 6656 0
	.cfi_startproc
.LVL4196:
	stwu 1,-24(1)
.LCFI413:
	.cfi_def_cfa_offset 24
	.loc 4 6656 0
	stfs 3,8(1)
.LVL4197:
	stfs 4,12(1)
.LVL4198:
.LBB16603:
.LBB16604:
.LBB16605:
	.loc 5 781 0
	lwz 0,8(1)
.LBE16605:
.LBE16604:
.LBB16607:
.LBB16608:
	lwz 11,12(1)
.LBE16608:
.LBE16607:
.LBB16610:
.LBB16606:
	rlwinm 9,0,0,1,31
.LBE16606:
.LBE16610:
	.loc 4 6658 0
	stw 9,16(1)
.LBB16611:
.LBB16609:
	.loc 5 781 0
	rlwinm 0,11,0,1,31
.LBE16609:
.LBE16611:
	.loc 4 6658 0
	lfs 0,16(1)
	stw 0,16(1)
	lfs 10,16(1)
	fcmpu 7,0,10
	bgt- 7,.L2536
.LVL4199:
	.loc 4 6664 0
	lfs 12,12(1)
	lfs 11,8(1)
.LBE16603:
	.loc 4 6669 0
	addi 1,1,24
	.cfi_remember_state
.LCFI414:
	.cfi_def_cfa_offset 0
.LBB16612:
	.loc 4 6664 0
	fdivs 0,11,12
.LVL4200:
	.loc 4 6665 0
	fmadds 13,0,11,12
.LVL4201:
	.loc 4 6666 0
	fmadds 12,0,1,2
	.loc 4 6667 0
	fmsubs 1,0,2,1
.LVL4202:
	.loc 4 6666 0
	fdivs 12,12,13
	.loc 4 6667 0
	fdivs 13,1,13
.LVL4203:
	.loc 4 6666 0
	stfs 12,0(4)
	.loc 4 6667 0
	stfs 13,0(5)
.LBE16612:
	.loc 4 6669 0
	blr
.LVL4204:
.L2536:
.LCFI415:
	.cfi_restore_state
.LBB16613:
.LBB16614:
.LBB16615:
	.loc 4 6659 0
	fdivs 0,4,3
.LVL4205:
.LBE16615:
.LBE16614:
.LBE16613:
	.loc 4 6669 0
	addi 1,1,24
.LCFI416:
	.cfi_def_cfa_offset 0
.LBB16618:
.LBB16617:
.LBB16616:
	.loc 4 6656 0
	fneg 12,1
	.loc 4 6660 0
	fmadds 13,4,0,3
.LVL4206:
	.loc 4 6661 0
	fmadds 1,2,0,1
.LVL4207:
	.loc 4 6662 0
	fmadds 2,12,0,2
.LVL4208:
	.loc 4 6661 0
	fdivs 1,1,13
	.loc 4 6662 0
	fdivs 13,2,13
.LVL4209:
	.loc 4 6661 0
	stfs 1,0(4)
	.loc 4 6662 0
	stfs 13,0(5)
.LBE16616:
.LBE16617:
.LBE16618:
	.loc 4 6669 0
	blr
	.cfi_endproc
.LFE2652:
	.size	_ZN6idMatX15ComplexDivisionEffffRfS0_, .-_ZN6idMatX15ComplexDivisionEffffRfS0_
	.align 2
	.globl _ZN6idMatX21HessenbergToRealSchurERS_R6idVecXS2_
	.type	_ZN6idMatX21HessenbergToRealSchurERS_R6idVecXS2_, @function
_ZN6idMatX21HessenbergToRealSchurERS_R6idVecXS2_:
.LFB2653:
	.loc 4 6678 0
	.cfi_startproc
.LVL4210:
	mflr 0
	stwu 1,-176(1)
.LCFI417:
	.cfi_def_cfa_offset 176
	.cfi_register 65, 0
	mfcr 12
	stfd 29,152(1)
	stw 26,104(1)
	stw 27,108(1)
	mr 27,6
	.cfi_offset 27, -68
	.cfi_offset 26, -72
	.cfi_offset 61, -24
	.cfi_register 70, 12
	stw 28,112(1)
	stw 29,116(1)
	mr 29,5
	.cfi_offset 29, -60
	.cfi_offset 28, -64
	stw 30,120(1)
	mr 30,3
	.cfi_offset 30, -56
	stw 31,124(1)
	mr 31,4
	.cfi_offset 31, -52
	stw 0,180(1)
	stfd 26,128(1)
	stfd 27,136(1)
	stfd 28,144(1)
	stfd 30,160(1)
	stfd 31,168(1)
	stw 14,56(1)
	stw 15,60(1)
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
	stw 12,52(1)
.LBB17080:
	.loc 4 6680 0
	lwz 9,0(3)
	.loc 4 6687 0
	lis 3,.LC9@ha
.LVL4211:
	lfs 29,.LC9@l(3)
	.loc 4 6688 0
	cmpwi 7,9,0
	.loc 4 6680 0
	mr 28,9
	addi 26,9,-1
.LVL4212:
	.loc 4 6688 0
	ble- 7,.L2538
	.cfi_offset 70, -124
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
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	.loc 4 6691 0
	stfs 29,44(1)
	.loc 4 6688 0
	li 10,0
	.loc 4 6691 0
	lwz 6,44(1)
.LVL4213:
.L2543:
	.loc 4 6689 0
	cmpw 7,26,10
	bge- 7,.L2539
.LVL4214:
.LBB17081:
.LBB17082:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE17082:
.LBE17081:
	.loc 4 6678 0
	slwi 9,10,2
.LVL4215:
	.loc 4 6690 0
	lwz 8,12(31)
.LBB17084:
.LBB17083:
	.loc 3 2056 0
	mullw 0,10,0
.LBE17083:
.LBE17084:
	.loc 4 6690 0
	lwz 11,8(29)
	slwi 0,0,2
	add 8,8,0
	lwzx 0,8,9
	stwx 0,11,9
.LVL4216:
	.loc 4 6691 0
	lwz 11,8(27)
	stwx 6,11,9
	lwz 9,0(30)
.LVL4217:
.L2539:
	.loc 4 6678 0
	addi 8,10,-1
	.loc 4 6691 0
	nor 0,8,8
	srawi 0,0,31
	and 8,8,0
.LVL4218:
	.loc 4 6693 0
	cmpw 7,9,8
	ble- 7,.L2541
	lwz 11,4(31)
	.loc 4 6678 0
	addi 0,8,-1
	lwz 7,12(31)
	subf 8,8,9
.LVL4219:
	.loc 4 6693 0
	mullw 11,10,11
	.loc 4 6678 0
	slwi 0,0,2
.LVL4220:
	mtctr 8
	slwi 11,11,2
	add 11,7,11
	add 11,11,0
.L2542:
.LVL4221:
.LBB17085:
.LBB17086:
	.loc 5 781 0 discriminator 2
	lwzu 0,4(11)
.LVL4222:
	rlwinm 0,0,0,1,31
.LBE17086:
.LBE17085:
	.loc 4 6694 0 discriminator 2
	stw 0,44(1)
	lfs 3,44(1)
	fadds 29,29,3
.LVL4223:
	.loc 4 6693 0 discriminator 2
	bdnz .L2542
.LVL4224:
.L2541:
	.loc 4 6688 0
	addi 10,10,1
.LVL4225:
	cmpw 7,10,9
	blt+ 7,.L2543
.LVL4226:
.L2538:
	.loc 4 6699 0 discriminator 1
	cmpwi 4,26,0
	li 0,0
	stw 0,24(1)
	blt- 4,.L2728
	.loc 4 6699 0 is_stmt 0
	mr 10,26
.LVL4227:
	lfs 8,24(1)
.LBB17087:
	.loc 4 6703 0 is_stmt 1
	cmpwi 7,10,0
.LBB17088:
.LBB17089:
.LBB17090:
.LBB17091:
.LBB17092:
.LBB17093:
.LBB17094:
.LBB17095:
.LBB17096:
	.loc 5 276 0
	lis 16,_ZN6idMath5iSqrtE@ha
.LBE17096:
.LBE17095:
.LBE17094:
.LBE17093:
.LBE17092:
.LBE17091:
.LBE17090:
.LBE17089:
.LBE17088:
.LBE17087:
	.loc 4 6699 0
	li 15,0
	stw 0,12(1)
	stw 0,16(1)
	lis 14,.LC14@ha
	stw 0,8(1)
.LBB17426:
	.loc 4 6705 0
	fmr 9,8
.LBE17426:
	.loc 4 6699 0
	stw 0,20(1)
.LBB17427:
.LBB17408:
.LBB17395:
.LBB17266:
.LBB17180:
.LBB17175:
.LBB17111:
.LBB17107:
.LBB17102:
.LBB17097:
	.loc 5 275 0
	lis 18,.LC6@ha
	.loc 5 276 0
	la 16,_ZN6idMath5iSqrtE@l(16)
	.loc 5 278 0
	lis 17,.LC8@ha
.LBE17097:
.LBE17102:
.LBE17107:
.LBE17111:
.LBE17175:
.LBE17180:
.LBE17266:
.LBE17395:
.LBE17408:
	.loc 4 6703 0
	lwz 4,4(31)
.LVL4228:
	beq- 7,.L2729
.LVL4229:
.L2605:
	.loc 4 6678 0
	mulli 6,4,-4
	addi 9,4,1
	addi 23,10,-1
	mullw 9,10,9
	addi 6,6,-4
	.loc 4 6703 0
	lwz 3,12(31)
	.loc 4 6678 0
	mr 25,10
	.loc 4 6708 0
	lfs 13,.LC14@l(14)
.LBE17427:
	.loc 4 6678 0
	mr 8,10
.LBB17428:
	.loc 4 6708 0
	mtctr 10
	.loc 4 6678 0
	mullw 24,23,4
	addi 9,9,-1
	slwi 9,9,2
	add 9,3,9
	slwi 7,10,2
	mullw 0,10,6
	slwi 5,24,2
	la 22,.LC14@l(14)
	add 5,5,0
	b .L2551
.LVL4230:
.L2708:
	.loc 4 6711 0
	addi 8,8,-1
.LVL4231:
	.loc 4 6703 0
	bdz .L2550
.LVL4232:
.L2551:
	.loc 4 6678 0
	add 11,5,9
.LBB17409:
.LBB17410:
	.loc 5 781 0
	lwz 0,4(9)
.LBE17410:
.LBE17409:
.LBB17412:
.LBB17413:
	lwzx 11,11,7
.LBE17413:
.LBE17412:
.LBB17415:
.LBB17411:
	rlwinm 0,0,0,1,31
.LBE17411:
.LBE17415:
.LBB17416:
.LBB17414:
	rlwinm 11,11,0,1,31
.LBE17414:
.LBE17416:
	.loc 4 6704 0
	stw 11,44(1)
	lfs 0,44(1)
	stw 0,44(1)
	lfs 3,44(1)
	fadds 0,0,3
	.loc 4 6705 0
	fcmpu 7,0,9
	.loc 4 6704 0
	stfs 0,20(1)
.LVL4233:
	.loc 4 6705 0
	bne- 7,.L2546
	stfs 29,20(1)
.L2546:
.LVL4234:
.LBB17417:
.LBB17418:
	.loc 5 781 0
	lwz 0,0(9)
.LBE17418:
.LBE17417:
	.loc 4 6711 0
	add 9,9,6
.LVL4235:
	.loc 4 6708 0
	lfs 4,20(1)
.LBB17420:
.LBB17419:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LVL4236:
.LBE17419:
.LBE17420:
	.loc 4 6708 0
	stw 0,44(1)
	fmuls 0,4,13
	lfs 7,44(1)
	fcmpu 7,0,7
	bng+ 7,.L2708
.LVL4237:
.LBB17421:
	.loc 4 6715 0
	cmpw 7,10,8
	bne- 7,.L2550
.LVL4238:
.L2549:
.LBB17396:
.LBB17397:
	.loc 3 2056 0
	mullw 0,10,4
.LBE17397:
.LBE17396:
	.loc 4 6720 0
	li 15,0
.LBB17399:
.LBB17398:
	.loc 3 2056 0
	slwi 0,0,2
	add 3,3,0
.LVL4239:
.LBE17398:
.LBE17399:
	.loc 4 6716 0
	lfsx 0,3,7
	fadds 0,0,8
	stfsx 0,3,7
.LVL4240:
.LBB17400:
.LBB17401:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE17401:
.LBE17400:
	.loc 4 6717 0
	lwz 11,12(31)
.LBB17403:
.LBB17402:
	.loc 3 2056 0
	mullw 0,10,0
.LBE17402:
.LBE17403:
	.loc 4 6717 0
	lwz 9,8(29)
	slwi 0,0,2
	add 11,11,0
	lwzx 0,11,7
	stwx 0,9,7
.LVL4241:
	.loc 4 6718 0
	lwz 9,8(27)
	stfsx 9,9,7
.LVL4242:
.L2552:
.LBE17421:
.LBE17428:
	.loc 4 6699 0 discriminator 1
	cmpwi 7,23,0
	blt- 7,.L2545
.L2743:
	.loc 4 6699 0 is_stmt 0
	mr 10,23
.LVL4243:
.LBB17429:
	.loc 4 6703 0 is_stmt 1
	lwz 4,4(31)
	cmpwi 7,10,0
	bne+ 7,.L2605
.LVL4244:
.L2729:
	lwz 3,12(31)
	li 23,-1
	li 7,0
	b .L2549
.LVL4245:
.L2550:
.LBB17422:
.LBB17404:
	.loc 4 6721 0
	cmpw 7,23,8
	beq- 7,.L2730
.LVL4246:
.LBB17267:
.LBB17181:
.LBB17182:
	.loc 3 2056 0
	mullw 9,4,10
.LBE17182:
.LBE17181:
	.loc 4 6786 0
	cmpw 7,10,8
.LBB17184:
.LBB17183:
	.loc 3 2056 0
	slwi 9,9,2
	add 9,3,9
.LBE17183:
.LBE17184:
	.loc 4 6783 0
	lfsx 0,9,7
.LVL4247:
	.loc 4 6786 0
	ble- 7,.L2657
.LVL4248:
.LBB17185:
.LBB17186:
	.loc 3 2056 0
	slwi 11,24,2
.LBE17186:
.LBE17185:
	.loc 4 6792 0
	cmpwi 7,15,10
.LBB17188:
.LBB17187:
	.loc 3 2056 0
	add 11,3,11
.LBE17187:
.LBE17188:
	.loc 4 6787 0
	slwi 0,23,2
.LVL4249:
	.loc 4 6788 0
	lfsx 5,9,0
	lfsx 13,11,7
	.loc 4 6787 0
	lfsx 6,11,0
.LVL4250:
	.loc 4 6788 0
	fmuls 5,5,13
.LVL4251:
	.loc 4 6792 0
	beq- 7,.L2731
.LVL4252:
.L2567:
	.loc 4 6803 0
	cmpwi 7,15,30
	addi 9,10,-2
.LVL4253:
	beq- 7,.L2732
.LVL4254:
.L2570:
	.loc 4 6824 0
	cmpw 7,9,8
	mr 6,10
	.loc 4 6820 0
	addi 15,15,1
.LVL4255:
	.loc 4 6824 0
	blt- 7,.L2577
	lwz 6,4(31)
	.loc 4 6678 0
	addi 4,10,-3
	.loc 4 6824 0
	lwz 0,12(31)
	.loc 4 6678 0
	addi 11,6,1
	mullw 21,23,6
	slwi 20,11,2
	mullw 11,9,11
	add 7,9,21
	slwi 7,7,2
	add 7,0,7
	mulli 5,6,-4
	addi 11,11,-1
	mullw 6,4,6
	slwi 11,11,2
	addi 5,5,-4
	add 11,0,11
	mullw 12,9,5
	slwi 19,6,2
	mullw 20,20,10
	mulli 21,21,-4
	b .L2578
.LVL4256:
.L2734:
.LBB17189:
.LBB17190:
	.loc 5 781 0
	lwz 24,-4(24)
.LBE17190:
.LBE17189:
.LBB17192:
.LBB17193:
	lwz 0,0(11)
.LVL4257:
.LBE17193:
.LBE17192:
	.loc 4 6824 0
	add 11,11,5
.LVL4258:
.LBB17195:
.LBB17191:
	.loc 5 781 0
	rlwinm 24,24,0,1,31
.LBE17191:
.LBE17195:
	.loc 4 6838 0
	lfs 10,32(1)
.LVL4259:
	stw 24,44(1)
.LBB17196:
.LBB17194:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LVL4260:
.LBE17194:
.LBE17196:
.LBB17197:
.LBB17198:
	lwz 3,12(1)
.LBE17198:
.LBE17197:
	.loc 4 6838 0
	lfs 4,44(1)
	stw 25,44(1)
	lfs 12,0(22)
.LVL4261:
	lfs 7,44(1)
	stw 4,44(1)
.LBB17200:
.LBB17199:
	.loc 5 781 0
	rlwinm 4,3,0,1,31
.LBE17199:
.LBE17200:
	.loc 4 6838 0
	fadds 13,4,7
.LVL4262:
	lfs 3,28(1)
.LVL4263:
	lfs 11,44(1)
	stw 4,44(1)
	fadds 13,13,10
	lfs 4,44(1)
	stw 0,44(1)
	fmuls 13,13,11
	lfs 7,44(1)
	fmuls 13,13,12
	fadds 12,3,4
	fmuls 12,12,7
	fcmpu 7,12,13
	blt- 7,.L2577
	.loc 4 6824 0
	addi 9,9,-1
.LVL4264:
	cmpw 7,9,8
	blt- 7,.L2733
.LVL4265:
.L2578:
	.loc 4 6825 0
	lfs 3,4(11)
	.loc 4 6678 0
	add 6,11,12
	.loc 4 6828 0
	lfs 11,0(7)
	.loc 4 6678 0
	add 24,7,19
	.loc 4 6827 0
	fsubs 13,6,3
	.loc 4 6825 0
	stfs 3,24(1)
.LVL4266:
	.loc 4 6826 0
	fsubs 12,0,3
.LVL4267:
	.loc 4 6829 0
	lwz 4,4(7)
.LBB17201:
.LBB17202:
	.loc 5 781 0
	lwz 0,24(1)
.LBE17202:
.LBE17201:
	.loc 4 6678 0
	add 24,24,21
	.loc 4 6828 0
	lfs 10,8(11)
.LBB17204:
.LBB17205:
	.loc 5 781 0
	rlwinm 3,4,0,1,31
.LBE17205:
.LBE17204:
	.loc 4 6828 0
	fmsubs 7,12,13,5
.LBB17207:
.LBB17203:
	.loc 5 781 0
	rlwinm 25,0,0,1,31
.LBE17203:
.LBE17207:
	.loc 4 6830 0
	lwzx 0,6,20
	.loc 4 6824 0
	add 7,7,5
	.loc 4 6829 0
	stw 4,44(1)
	.loc 4 6678 0
	addi 6,9,2
	.loc 4 6828 0
	fdivs 7,7,11
.LBB17208:
.LBB17206:
	.loc 5 781 0
	stw 3,32(1)
.LBE17206:
.LBE17208:
	.loc 4 6829 0
	lfs 4,44(1)
.LBB17209:
.LBB17210:
	.loc 5 781 0
	rlwinm 3,0,0,1,31
	stw 3,20(1)
.LBE17210:
.LBE17209:
	.loc 4 6829 0
	fsubs 11,4,3
	.loc 4 6828 0
	fadds 10,7,10
	.loc 4 6831 0
	lfs 7,20(1)
	.loc 4 6829 0
	fsubs 12,11,12
.LVL4268:
	.loc 4 6828 0
	stfs 10,8(1)
.LVL4269:
	.loc 4 6829 0
	fsubs 12,12,13
.LBB17211:
.LBB17212:
	.loc 5 781 0
	lwz 3,8(1)
	rlwinm 3,3,0,1,31
.LBE17212:
.LBE17211:
	.loc 4 6829 0
	stfs 12,12(1)
.LVL4270:
.LBB17214:
.LBB17213:
	.loc 5 781 0
	stw 3,16(1)
.LBE17213:
.LBE17214:
.LBB17215:
.LBB17216:
	lwz 3,12(1)
.LVL4271:
.LBE17216:
.LBE17215:
	.loc 4 6831 0
	lfs 3,16(1)
.LBB17218:
.LBB17217:
	.loc 5 781 0
	rlwinm 4,3,0,1,31
.LBE17217:
.LBE17218:
	.loc 4 6831 0
	stw 4,44(1)
	lfs 4,44(1)
	.loc 4 6834 0
	stw 0,44(1)
	.loc 4 6831 0
	fadds 13,3,4
.LVL4272:
	fadds 13,13,7
	.loc 4 6833 0
	fdivs 3,12,13
	.loc 4 6831 0
	stfs 13,20(1)
.LVL4273:
	.loc 4 6832 0
	fdivs 10,10,13
.LVL4274:
	.loc 4 6833 0
	stfs 3,16(1)
	.loc 4 6834 0
	lfs 3,44(1)
	fdivs 3,3,13
	.loc 4 6832 0
	stfs 10,8(1)
.LVL4275:
.LBB17219:
.LBB17220:
	.loc 5 781 0
	lwz 3,8(1)
	rlwinm 4,3,0,1,31
.LBE17220:
.LBE17219:
.LBB17221:
.LBB17222:
	lwz 3,16(1)
	rlwinm 3,3,0,1,31
	stw 3,28(1)
.LBE17222:
.LBE17221:
	.loc 4 6834 0
	stfs 3,12(1)
.LVL4276:
	.loc 4 6835 0
	bne+ 7,.L2734
.LVL4277:
.L2577:
	.loc 4 6844 0
	cmpw 7,6,10
	bgt- 7,.L2580
.LVL4278:
.LBB17223:
.LBB17224:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE17224:
.LBE17223:
	.loc 4 6845 0
	addi 11,6,-2
	lwz 5,12(31)
	slwi 11,11,2
.LBB17228:
.LBB17225:
	.loc 3 2056 0
	mullw 0,6,0
.LBE17225:
.LBE17228:
	.loc 4 6678 0
	addi 7,6,-1
	.loc 4 6845 0
	slwi 7,7,2
	slwi 0,0,2
	add 5,5,0
	stfsx 9,5,11
	.loc 4 6678 0
	mr 11,6
	.loc 4 6844 0
	addi 11,11,1
.LVL4279:
	cmpw 7,11,10
	.loc 4 6846 0
	cmpw 6,11,6
	.loc 4 6844 0
	bgt- 7,.L2580
.LVL4280:
.L2582:
.LBB17229:
.LBB17226:
	.loc 3 2056 0
	lwz 5,4(31)
.LBE17226:
.LBE17229:
	.loc 4 6845 0
	lwz 0,12(31)
.LBB17230:
.LBB17227:
	.loc 3 2056 0
	mullw 5,11,5
.LBE17227:
.LBE17230:
	.loc 4 6845 0
	slwi 5,5,2
	add 5,0,5
	stfsx 9,5,7
	.loc 4 6846 0
	ble- 6,.L2581
.LVL4281:
.LBB17231:
.LBB17232:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE17232:
.LBE17231:
	.loc 4 6847 0
	lwz 5,12(31)
.LBB17234:
.LBB17233:
	.loc 3 2056 0
	mullw 0,11,0
.LBE17233:
.LBE17234:
	.loc 4 6847 0
	slwi 0,0,2
	add 5,5,0
	add 5,5,7
	stfs 9,-4(5)
.LVL4282:
.L2581:
	.loc 4 6844 0
	addi 11,11,1
.LVL4283:
	.loc 4 6847 0
	addi 7,7,4
	.loc 4 6844 0
	cmpw 7,11,10
	.loc 4 6846 0
	cmpw 6,11,6
	.loc 4 6844 0
	ble+ 7,.L2582
.LVL4284:
.L2580:
.LBB17235:
	.loc 4 6852 0 discriminator 1
	cmpw 7,9,10
	bge- 7,.L2659
.LVL4285:
.LBB17176:
	.loc 4 6865 0
	fcmpu 7,0,9
	.loc 4 6853 0
	xor 0,23,9
	cntlzw 0,0
	.loc 4 6876 0
	addi 21,9,-1
.LVL4286:
	.loc 4 6853 0
	srwi 0,0,5
	.loc 4 6876 0
	mr 3,9
	.loc 4 6853 0
	xori 0,0,1
.LVL4287:
	.loc 4 6876 0
	slwi 21,21,2
	.loc 4 6678 0
	addi 22,9,3
	.loc 4 6876 0
	slwi 24,9,2
	.loc 4 6678 0
	addi 25,9,2
	addi 4,9,1
	.loc 4 6865 0
	beq- 7,.L2659
.LVL4288:
.L2742:
	.loc 4 6868 0
	lfs 11,16(1)
	lfs 12,8(1)
	fmuls 13,11,11
	lfs 3,12(1)
.LBB17112:
.LBB17108:
.LBB17103:
.LBB17098:
	.loc 5 275 0
	lfs 10,.LC6@l(18)
.LBE17098:
.LBE17103:
.LBE17108:
.LBE17112:
	.loc 4 6869 0
	fcmpu 7,12,9
.LBB17113:
.LBB17109:
.LBB17104:
.LBB17099:
	.loc 5 278 0
	lfs 11,.LC8@l(17)
.LBE17099:
.LBE17104:
.LBE17109:
.LBE17113:
	.loc 4 6868 0
	fmadds 13,12,12,13
	fmadds 13,3,3,13
	stfs 13,20(1)
.LVL4289:
.LBB17114:
.LBB17110:
.LBB17105:
.LBB17100:
	.loc 5 275 0
	fmuls 10,13,10
	.loc 5 270 0
	lwz 11,20(1)
.LVL4290:
	.loc 4 6678 0
	fneg 10,10
.LBE17100:
.LBE17105:
	.loc 5 303 0
	lfs 7,20(1)
.LBB17106:
.LBB17101:
	.loc 5 276 0
	rlwinm 7,11,19,21,29
	rlwinm 6,11,9,24,31
	lwzx 7,16,7
	subfic 11,6,380
	rlwinm 11,11,22,0,8
	or 11,11,7
	.loc 5 277 0
	stw 11,44(1)
	lfs 4,44(1)
	fmr 12,4
.LVL4291:
	.loc 5 278 0
	fmul 13,12,12
.LVL4292:
	fmadd 13,10,13,11
	fmul 13,12,13
.LVL4293:
	.loc 5 279 0
	fmul 12,13,13
	fmadd 11,10,12,11
.LVL4294:
	fmul 13,13,11
.LVL4295:
	.loc 5 280 0
	frsp 13,13
.LVL4296:
.LBE17101:
.LBE17106:
	.loc 5 303 0
	fmuls 13,7,13
	stfs 13,20(1)
.LBE17110:
.LBE17114:
	.loc 4 6869 0
	bnl- 7,.L2586
	.loc 4 6870 0
	fneg 10,13
	stfs 10,20(1)
.LVL4297:
.L2586:
	.loc 4 6872 0
	lfs 11,20(1)
	fcmpu 7,11,9
	beq- 7,.L2589
	.loc 4 6873 0
	cmpw 7,3,9
	beq- 7,.L2590
.LVL4298:
.LBB17115:
.LBB17116:
	.loc 3 2056 0
	lwz 11,4(31)
.LBE17116:
.LBE17115:
	.loc 4 6874 0
	fneg 13,11
	lwz 7,12(31)
.LBB17118:
.LBB17117:
	.loc 3 2056 0
	mullw 11,3,11
.LBE17117:
.LBE17118:
	.loc 4 6874 0
	fmuls 0,13,0
.LVL4299:
	slwi 11,11,2
	add 11,7,11
	add 11,11,24
	stfs 0,-4(11)
.LVL4300:
.L2591:
	.loc 4 6878 0
	lfs 3,20(1)
	lfs 0,8(1)
	.loc 4 6880 0
	lfs 4,16(1)
	.loc 4 6878 0
	fadds 13,0,3
.LVL4301:
	.loc 4 6881 0
	lfs 7,12(1)
.LVL4302:
	.loc 4 6883 0
	lfs 10,12(1)
	.loc 4 6880 0
	fdivs 11,4,3
	.loc 4 6886 0
	lwz 11,0(30)
	cmpw 7,3,11
	.loc 4 6881 0
	fdivs 7,7,3
	.loc 4 6882 0
	fdivs 4,4,13
	.loc 4 6881 0
	stfs 7,24(1)
	.loc 4 6883 0
	fdivs 10,10,13
	.loc 4 6882 0
	stfs 4,16(1)
	.loc 4 6879 0
	fdivs 0,13,3
.LVL4303:
	.loc 4 6883 0
	stfs 10,12(1)
.LVL4304:
	.loc 4 6886 0
	bge- 7,.L2735
	cmpwi 7,0,0
	mr 11,24
	mr 6,3
	b .L2596
.LVL4305:
.L2736:
	fneg 13,13
.LVL4306:
	addi 6,6,1
.LVL4307:
	.loc 4 6892 0
	fmadds 12,13,0,12
	stfs 12,0(5)
.LVL4308:
.LBB17119:
.LBB17120:
	.loc 3 2056 0
	lwz 7,4(31)
	lwz 0,12(31)
	mullw 7,4,7
	slwi 7,7,2
	add 7,0,7
.LVL4309:
.LBE17120:
.LBE17119:
	.loc 4 6893 0
	lfsx 12,7,11
	fmadds 13,13,11,12
	stfsx 13,7,11
	.loc 4 6886 0
	addi 11,11,4
	lwz 0,0(30)
	cmpw 6,0,6
	ble- 6,.L2594
.LVL4310:
.L2596:
	.loc 4 8102 0
	lwz 7,4(31)
	lwz 0,12(31)
.LVL4311:
.LBB17122:
.LBB17123:
	.loc 3 2056 0
	mullw 5,3,7
.LBE17123:
.LBE17122:
	.loc 4 6887 0
	lfs 3,16(1)
.LBB17125:
.LBB17126:
	.loc 3 2056 0
	mullw 20,4,7
.LBE17126:
.LBE17125:
.LBB17127:
.LBB17124:
	slwi 5,5,2
	add 5,0,5
.LBE17124:
.LBE17127:
	.loc 4 6887 0
	lfsx 12,5,11
.LVL4312:
	add 5,5,11
	slwi 20,20,2
	add 20,0,20
	lfsx 13,20,11
	fmadds 13,13,3,12
.LVL4313:
	.loc 4 6888 0
	beq- 7,.L2736
.LVL4314:
.LBB17128:
.LBB17129:
	.loc 3 2056 0
	mullw 7,7,25
.LBE17129:
.LBE17128:
	.loc 4 6678 0
	lfs 4,12(1)
	.loc 4 6890 0
	lfs 7,24(1)
	.loc 4 6886 0
	addi 6,6,1
.LVL4315:
.LBB17131:
.LBB17130:
	.loc 3 2056 0
	slwi 7,7,2
	add 7,0,7
.LBE17130:
.LBE17131:
	.loc 4 6889 0
	lfsx 12,7,11
.LVL4316:
	.loc 4 6678 0
	fnmadds 13,12,4,13
.LVL4317:
	.loc 4 6890 0
	fmadds 12,13,7,12
	stfsx 12,7,11
	lwz 5,4(31)
	lwz 0,12(31)
	mullw 5,3,5
	slwi 5,5,2
	add 5,0,5
	lfsx 12,5,11
	add 5,5,11
	.loc 4 6892 0
	fmadds 12,13,0,12
	stfs 12,0(5)
.LVL4318:
.LBB17132:
.LBB17121:
	.loc 3 2056 0
	lwz 7,4(31)
	lwz 0,12(31)
	mullw 7,4,7
	slwi 7,7,2
	add 7,0,7
.LVL4319:
.LBE17121:
.LBE17132:
	.loc 4 6893 0
	lfsx 12,7,11
	fmadds 13,13,11,12
	stfsx 13,7,11
	.loc 4 6886 0
	addi 11,11,4
	lwz 0,0(30)
	cmpw 6,0,6
	bgt+ 6,.L2596
.LVL4320:
.L2594:
	.loc 4 6897 0 discriminator 1
	cmpw 6,22,10
	mr 20,22
	ble- 6,.L2597
	mr 20,10
.L2597:
	cmpwi 6,20,0
	addi 7,3,1
	blt- 6,.L2737
	.loc 4 6900 0
	addi 0,3,2
	.loc 4 6897 0
	lwz 11,4(31)
	slwi 6,3,2
	slwi 7,7,2
	.loc 4 6900 0
	slwi 19,0,2
	li 5,0
	b .L2601
.LVL4321:
.L2738:
	.loc 4 6903 0
	lfsx 10,11,6
	fneg 12,13
.LVL4322:
	.loc 4 6904 0
	lfs 4,16(1)
	.loc 4 6903 0
	fsubs 13,10,13
.LVL4323:
	stfsx 13,11,6
.LVL4324:
.LBB17133:
.LBB17134:
	.loc 3 2056 0
	lwz 11,4(31)
	lwz 12,12(31)
	mullw 11,5,11
.LBE17134:
.LBE17133:
	.loc 4 6897 0
	addi 5,5,1
.LVL4325:
	cmpw 6,5,20
.LBB17138:
.LBB17135:
	.loc 3 2056 0
	slwi 11,11,2
	add 11,12,11
.LVL4326:
.LBE17135:
.LBE17138:
	.loc 4 6904 0
	lfsx 13,11,7
	fmadds 12,12,4,13
	stfsx 12,11,7
	.loc 4 6897 0
	bgt- 6,.L2599
.LVL4327:
.L2739:
	lwz 11,4(31)
.LVL4328:
.L2601:
.LBB17139:
.LBB17140:
	.loc 3 2056 0
	mullw 11,11,5
	lwz 12,12(31)
	slwi 11,11,2
	add 11,12,11
.LVL4329:
.LBE17140:
.LBE17139:
	.loc 4 6898 0
	lfsx 13,11,7
.LBB17143:
.LBB17141:
	lfsx 12,11,6
.LBE17141:
.LBE17143:
	fmuls 13,11,13
.LBB17144:
.LBB17142:
	fmadds 13,12,0,13
.LVL4330:
.LBE17142:
.LBE17144:
	.loc 4 6899 0
	beq- 7,.L2738
.LVL4331:
	.loc 4 6900 0
	lfsx 10,11,19
	lfs 12,24(1)
	.loc 4 6901 0
	lfs 3,12(1)
	.loc 4 6900 0
	fmadds 13,10,12,13
.LVL4332:
	.loc 4 6904 0
	lfs 4,16(1)
	.loc 4 6678 0
	fneg 12,13
	.loc 4 6901 0
	fmadds 10,12,3,10
	stfsx 10,11,19
	lwz 11,4(31)
	lwz 12,12(31)
	mullw 11,5,11
	slwi 11,11,2
	add 11,12,11
.LVL4333:
	.loc 4 6903 0
	lfsx 10,11,6
	fsubs 13,10,13
.LVL4334:
	stfsx 13,11,6
.LVL4335:
.LBB17145:
.LBB17136:
	.loc 3 2056 0
	lwz 11,4(31)
	lwz 12,12(31)
	mullw 11,5,11
.LBE17136:
.LBE17145:
	.loc 4 6897 0
	addi 5,5,1
.LVL4336:
	cmpw 6,5,20
.LBB17146:
.LBB17137:
	.loc 3 2056 0
	slwi 11,11,2
	add 11,12,11
.LVL4337:
.LBE17137:
.LBE17146:
	.loc 4 6904 0
	lfsx 13,11,7
	fmadds 12,12,4,13
	stfsx 12,11,7
	.loc 4 6897 0
	ble+ 6,.L2739
.LVL4338:
.L2599:
	.loc 4 6897 0 is_stmt 0 discriminator 1
	lwz 11,4(30)
	.loc 4 6911 0 is_stmt 1 discriminator 1
	slwi 0,0,2
	li 5,0
	mtctr 28
	b .L2603
.LVL4339:
.L2740:
	.loc 4 6914 0
	lfs 4,8(1)
	fneg 12,12
.LVL4340:
	.loc 4 6915 0
	lfs 7,16(1)
	.loc 4 6914 0
	fsubs 13,13,4
	stfs 13,0(20)
.LVL4341:
.LBB17147:
.LBB17148:
	.loc 3 2056 0
	lwz 11,4(30)
	lwz 20,12(30)
	mullw 11,5,11
.LBE17148:
.LBE17147:
	.loc 4 6908 0
	addi 5,5,1
.LVL4342:
.LBB17152:
.LBB17149:
	.loc 3 2056 0
	slwi 11,11,2
	add 11,20,11
.LVL4343:
.LBE17149:
.LBE17152:
	.loc 4 6915 0
	lfsx 13,11,7
	fmadds 12,12,7,13
	stfsx 12,11,7
	.loc 4 6908 0
	bdz .L2589
.LVL4344:
.L2741:
	lwz 11,4(30)
.LVL4345:
.L2603:
.LBB17153:
.LBB17154:
	.loc 3 2056 0
	mullw 11,11,5
	lwz 20,12(30)
	slwi 11,11,2
	add 11,20,11
.LBE17154:
.LBE17153:
	.loc 4 6909 0
	lfsx 12,11,7
	add 20,11,6
	lfsx 13,11,6
.LVL4346:
	fmuls 12,11,12
	fmadds 12,13,0,12
	stfs 12,8(1)
.LVL4347:
	.loc 4 6910 0
	beq- 7,.L2740
.LVL4348:
	.loc 4 6911 0
	lfsx 13,11,0
	lfs 12,8(1)
	lfs 10,24(1)
	.loc 4 6912 0
	lfs 3,12(1)
	.loc 4 6911 0
	fmadds 12,13,10,12
.LVL4349:
	.loc 4 6915 0
	lfs 7,16(1)
	.loc 4 6911 0
	stfs 12,8(1)
.LVL4350:
	.loc 4 6678 0
	fneg 12,12
.LVL4351:
	.loc 4 6914 0
	lfs 4,8(1)
	.loc 4 6912 0
	fmadds 13,12,3,13
	stfsx 13,11,0
	lwz 20,4(30)
	lwz 11,12(30)
	mullw 20,5,20
	slwi 20,20,2
	add 20,11,20
	lfsx 13,20,6
	add 20,20,6
.LVL4352:
	.loc 4 6914 0
	fsubs 13,13,4
	stfs 13,0(20)
.LVL4353:
.LBB17155:
.LBB17150:
	.loc 3 2056 0
	lwz 11,4(30)
	lwz 20,12(30)
	mullw 11,5,11
.LBE17150:
.LBE17155:
	.loc 4 6908 0
	addi 5,5,1
.LVL4354:
.LBB17156:
.LBB17151:
	.loc 3 2056 0
	slwi 11,11,2
	add 11,20,11
.LVL4355:
.LBE17151:
.LBE17156:
	.loc 4 6915 0
	lfsx 13,11,7
	fmadds 12,12,7,13
	stfsx 12,11,7
	.loc 4 6908 0
	bdnz .L2741
.LVL4356:
.L2589:
.LBE17176:
	.loc 4 6852 0
	cmpw 7,10,4
	ble- 7,.L2659
.LBB17177:
	.loc 4 6854 0
	cmpw 7,9,4
	.loc 4 6853 0
	xor 0,23,4
	cntlzw 0,0
	srwi 0,0,5
	xori 0,0,1
.LVL4357:
	.loc 4 6854 0
	beq- 7,.L2584
	.loc 4 8102 0
	lwz 7,4(31)
	.loc 4 6857 0
	li 6,0
	stw 6,12(1)
	cmpwi 7,0,0
.LBB17157:
.LBB17158:
	.loc 3 2056 0
	mullw 5,7,4
.LBE17158:
.LBE17157:
	.loc 4 8102 0
	lwz 11,12(31)
.LVL4358:
.LBB17159:
.LBB17160:
	.loc 3 2056 0
	mullw 6,7,25
.LBE17160:
.LBE17159:
	.loc 4 6855 0
	slwi 5,5,2
	add 5,11,5
	lfsx 0,5,24
.LVL4359:
	.loc 4 6856 0
	slwi 6,6,2
	.loc 4 6855 0
	stfs 0,8(1)
.LVL4360:
	.loc 4 6856 0
	add 6,11,6
	lfsx 3,6,24
	stfs 3,16(1)
.LVL4361:
	.loc 4 6857 0
	beq- 7,.L2585
.LVL4362:
.LBB17161:
.LBB17162:
	.loc 3 2056 0 discriminator 1
	mullw 7,7,22
.LBE17162:
.LBE17161:
	.loc 4 6857 0 discriminator 1
	slwi 7,7,2
	add 11,11,7
	lfsx 4,11,24
	stfs 4,12(1)
.LVL4363:
.L2585:
.LBB17163:
.LBB17164:
	.loc 5 781 0 discriminator 3
	lwz 6,8(1)
.LVL4364:
	rlwinm 7,6,0,1,31
.LBE17164:
.LBE17163:
.LBB17165:
.LBB17166:
	lwz 6,16(1)
.LBE17166:
.LBE17165:
	.loc 4 6858 0 discriminator 3
	stw 7,44(1)
.LBB17168:
.LBB17167:
	.loc 5 781 0 discriminator 3
	rlwinm 11,6,0,1,31
.LBE17167:
.LBE17168:
.LBB17169:
.LBB17170:
	lwz 6,12(1)
.LBE17170:
.LBE17169:
	.loc 4 6858 0 discriminator 3
	lfs 3,44(1)
.LVL4365:
	stw 11,44(1)
.LBB17172:
.LBB17171:
	.loc 5 781 0 discriminator 3
	rlwinm 11,6,0,1,31
.LBE17171:
.LBE17172:
	.loc 4 6858 0 discriminator 3
	lfs 4,44(1)
	stw 11,44(1)
	fadds 0,3,4
	lfs 3,44(1)
	fadds 0,0,3
.LVL4366:
	.loc 4 6859 0 discriminator 3
	fcmpu 7,0,9
	beq- 7,.L2584
	.loc 4 6860 0
	lfs 4,8(1)
	.loc 4 6861 0
	lfs 7,16(1)
	.loc 4 6862 0
	lfs 10,12(1)
	.loc 4 6860 0
	fdivs 4,4,0
	.loc 4 6861 0
	fdivs 7,7,0
	.loc 4 6860 0
	stfs 4,8(1)
.LVL4367:
	.loc 4 6862 0
	fdivs 10,10,0
	.loc 4 6861 0
	stfs 7,16(1)
.LVL4368:
	.loc 4 6862 0
	stfs 10,12(1)
.LVL4369:
.L2584:
	.loc 4 6865 0
	fcmpu 7,0,9
	.loc 4 6862 0
	addi 22,22,1
	addi 3,3,1
	addi 24,24,4
	addi 25,25,1
	addi 4,4,1
.LVL4370:
	.loc 4 6865 0
	bne+ 7,.L2742
.LVL4371:
.L2659:
	mr 23,10
.LBE17177:
.LBE17235:
.LBE17267:
.LBE17404:
.LBE17422:
.LBE17429:
	.loc 4 6699 0
	cmpwi 7,23,0
	bge+ 7,.L2743
.LVL4372:
.L2545:
	.loc 4 6923 0
	lis 3,.LC9@ha
	lfs 28,.LC9@l(3)
	.loc 4 6924 0
	li 3,0
	.loc 4 6923 0
	fcmpu 7,29,28
	beq- 7,.L2606
.LVL4373:
.LBB17430:
	.loc 4 6927 0
	lwz 15,0(30)
.LVL4374:
	addic. 24,15,-1
	blt- 0,.L2607
	.loc 4 6678 0
	addi 19,15,-2
	.loc 4 6927 0
	slwi 24,24,2
	.loc 4 6678 0
	addi 15,15,-3
.LBB17431:
.LBB17432:
.LBB17433:
.LBB17434:
.LBB17435:
.LBB17436:
	.loc 4 7010 0
	lis 18,.LC14@ha
.LVL4375:
.L2639:
.LBE17436:
.LBE17435:
.LBE17434:
.LBE17433:
.LBE17432:
	.loc 4 6929 0
	lwz 11,8(27)
.LBE17431:
	.loc 4 6678 0
	addi 25,19,1
.LVL4376:
.LBB17596:
	.loc 4 6928 0
	lwz 9,8(29)
	.loc 4 6929 0
	lfsx 0,11,24
	.loc 4 6928 0
	lfsx 27,9,24
.LVL4377:
.LBB17591:
	.loc 4 6931 0
	fcmpu 7,0,28
.LBE17591:
	.loc 4 6929 0
	stfs 0,16(1)
.LBB17592:
	.loc 4 6931 0
	bne- 7,.L2608
.LVL4378:
.LBB17550:
.LBB17551:
.LBB17552:
	.loc 3 2056 0
	lwz 9,4(31)
.LBE17552:
.LBE17551:
	.loc 4 6934 0
	cmpwi 7,19,-1
	.loc 4 6933 0
	lwz 11,12(31)
	lis 3,.LC1@ha
.LBB17554:
.LBB17553:
	.loc 3 2056 0
	mullw 9,25,9
.LBE17553:
.LBE17554:
	.loc 4 6933 0
	lwz 0,.LC1@l(3)
	la 17,.LC1@l(3)
	.loc 4 6934 0
	mr 8,19
.LVL4379:
	addi 23,24,-4
	.loc 4 6933 0
	slwi 9,9,2
	add 9,11,9
	stwx 0,9,24
	.loc 4 6934 0
	beq- 7,.L2609
	mr 23,24
	mr 6,25
.LVL4380:
.L2620:
	.loc 4 8102 0
	lwz 5,4(31)
	.loc 4 6937 0
	cmpw 7,25,6
	.loc 4 8102 0
	lwz 3,12(31)
.LVL4381:
	.loc 4 6935 0
	addi 7,23,-4
.LBB17555:
.LBB17556:
	.loc 3 2056 0
	mullw 4,8,5
.LBE17556:
.LBE17555:
	.loc 4 6936 0
	li 9,0
	stw 9,12(1)
.LBB17558:
.LBB17557:
	.loc 3 2056 0
	slwi 4,4,2
	add 4,3,4
.LBE17557:
.LBE17558:
	.loc 4 6935 0
	lfsx 0,4,7
	fsubs 12,0,27
.LVL4382:
	.loc 4 6937 0
	blt- 7,.L2610
.LVL4383:
	.loc 4 6678 0
	mullw 11,5,6
	addi 10,6,-1
.LVL4384:
	slwi 10,10,2
	add 10,4,10
	slwi 0,5,2
	slwi 11,11,2
	mr 9,6
	add 11,11,24
	add 11,3,11
.LVL4385:
.L2611:
	.loc 4 6938 0 discriminator 2
	lfs 0,0(11)
	.loc 4 6937 0 discriminator 2
	addi 9,9,1
.LVL4386:
	.loc 4 6938 0 discriminator 2
	lfs 3,12(1)
	.loc 4 6937 0 discriminator 2
	cmpw 7,25,9
	.loc 4 6938 0 discriminator 2
	lfsu 13,4(10)
	.loc 4 6937 0 discriminator 2
	add 11,11,0
	.loc 4 6938 0 discriminator 2
	fmadds 3,13,0,3
	stfs 3,12(1)
.LVL4387:
	.loc 4 6937 0 discriminator 2
	bge+ 7,.L2611
.LVL4388:
.L2610:
	.loc 4 6940 0
	lwz 9,8(27)
	lfsx 0,9,7
	fcmpu 7,0,28
	blt- 7,.L2662
.LVL4389:
	.loc 4 6945 0
	bne- 7,.L2613
	.loc 4 6946 0
	fcmpu 7,12,28
	beq- 7,.L2614
.LVL4390:
	.loc 4 6947 0
	lfs 4,12(1)
	la 20,.LC14@l(18)
	fneg 0,4
	fdivs 12,0,12
.LVL4391:
	stfsx 12,4,24
.LVL4392:
.L2615:
	.loc 4 8102 0
	lwz 11,4(31)
	lwz 0,12(31)
.LVL4393:
.LBB17559:
.LBB17560:
	.loc 3 2056 0
	mullw 11,8,11
.LBE17560:
.LBE17559:
	.loc 4 6966 0
	lfs 13,0(20)
	lfs 0,0(17)
	.loc 4 6965 0
	slwi 9,11,2
	add 9,0,9
	lwzx 10,9,24
.LVL4394:
.LBB17561:
.LBB17562:
	.loc 5 782 0
	rlwinm 3,10,0,1,31
	stw 3,8(1)
.LBE17562:
.LBE17561:
	.loc 4 6966 0
	lfs 3,8(1)
	fmuls 13,3,13
	fmuls 13,13,3
	fcmpu 7,13,0
	bng- 7,.L2665
.LVL4395:
	.loc 4 6967 0 discriminator 1
	cmpw 7,25,8
	mr 6,8
	blt- 7,.L2612
	.loc 4 6967 0 is_stmt 0 discriminator 2
	mr 9,8
.LVL4396:
	b .L2619
.LVL4397:
.L2744:
	.loc 4 6967 0
	lwz 11,4(31)
	lwz 0,12(31)
	mullw 11,11,9
	slwi 10,11,2
	add 10,0,10
	lwzx 10,10,24
.LVL4398:
.L2619:
	.loc 4 6968 0 is_stmt 1 discriminator 2
	stw 10,44(1)
	.loc 4 6967 0 discriminator 2
	addi 9,9,1
.LVL4399:
	.loc 4 6968 0 discriminator 2
	lfs 7,8(1)
	.loc 4 6967 0 discriminator 2
	cmpw 7,25,9
	.loc 4 6968 0 discriminator 2
	lfs 4,44(1)
	slwi 11,11,2
	add 11,0,11
	fdivs 0,4,7
	stfsx 0,11,24
	.loc 4 6967 0 discriminator 2
	bge+ 7,.L2744
.LVL4400:
.L2665:
	.loc 4 6967 0 is_stmt 0
	mr 6,8
.LVL4401:
.L2612:
	.loc 4 6934 0 is_stmt 1
	cmpwi 7,8,0
	mr 23,7
	addi 8,8,-1
.LVL4402:
	bne+ 7,.L2620
.LVL4403:
.L2727:
	addi 23,24,-4
.LVL4404:
.L2609:
.LBE17550:
.LBE17592:
.LBE17596:
	.loc 4 6927 0
	cmpwi 7,19,-1
.LBB17597:
.LBB17593:
.LBB17579:
.LBB17543:
.LBB17509:
.LBB17501:
	.loc 4 6678 0
	mr 24,23
	addi 15,15,-1
.LBE17501:
.LBE17509:
.LBE17543:
.LBE17579:
.LBE17593:
.LBE17597:
	.loc 4 6927 0
	addi 19,19,-1
	bne+ 7,.L2639
	lwz 15,0(30)
.LVL4405:
.L2607:
.LBE17430:
	.loc 4 7035 0 discriminator 1
	cmpwi 7,15,0
	ble- 7,.L2640
	.loc 4 7035 0 is_stmt 0
	li 10,0
.LVL4406:
.L2643:
	.loc 4 7036 0 is_stmt 1
	cmpw 7,26,10
	bge- 7,.L2641
.LVL4407:
	.loc 4 7037 0 discriminator 1
	cmpw 7,10,15
	bge- 7,.L2641
	.loc 4 6678 0
	slwi 9,10,2
	mr 11,10
.LVL4408:
.L2642:
.LBB17600:
.LBB17601:
	.loc 3 2056 0 discriminator 2
	lwz 0,4(31)
.LBE17601:
.LBE17600:
	.loc 4 7037 0 discriminator 2
	addi 11,11,1
.LVL4409:
.LBB17603:
.LBB17604:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(30)
.LBE17604:
.LBE17603:
.LBB17606:
.LBB17602:
	mullw 0,10,0
.LBE17602:
.LBE17606:
	.loc 4 7038 0 discriminator 2
	lwz 6,12(31)
	lwz 7,12(30)
.LBB17607:
.LBB17605:
	.loc 3 2056 0 discriminator 2
	mullw 8,10,8
.LBE17605:
.LBE17607:
	.loc 4 7038 0 discriminator 2
	slwi 0,0,2
	add 6,6,0
	lwzx 0,6,9
	slwi 8,8,2
	add 8,7,8
	stwx 0,8,9
	.loc 4 7037 0 discriminator 2
	addi 9,9,4
	lwz 15,0(30)
	cmpw 7,15,11
	bgt+ 7,.L2642
.LVL4410:
.L2641:
	.loc 4 7035 0
	addi 10,10,1
.LVL4411:
	cmpw 7,10,15
	blt+ 7,.L2643
.LVL4412:
.L2640:
	.loc 4 7044 0
	addic. 15,15,-1
.LVL4413:
	.loc 4 7054 0
	li 3,1
	.loc 4 7044 0
	blt- 0,.L2606
	slwi 5,15,2
.LVL4414:
.L2644:
	.loc 4 7045 0 discriminator 1
	blt- 4,.L2646
	.loc 4 7045 0 is_stmt 0
	cmpw 7,15,26
	mr 8,15
	ble- 7,.L2649
.LVL4415:
	mr 8,26
.LVL4416:
.L2649:
	cmpwi 6,8,0
.LVL4417:
	lwz 6,4(30)
	li 7,0
	.loc 4 7047 0 is_stmt 1
	blt- 6,.L2745
.LVL4418:
.L2647:
	mullw 6,6,7
	lwz 9,12(30)
	.loc 4 6678 0
	lwz 0,4(31)
	lis 3,.LC9@ha
	lwz 11,12(31)
	lfs 0,.LC9@l(3)
	slwi 0,0,2
	.loc 4 7047 0
	slwi 6,6,2
	.loc 4 6678 0
	add 11,11,5
	.loc 4 7047 0
	add 6,9,6
	.loc 4 6678 0
	li 9,0
	addi 10,6,-4
.LVL4419:
.L2645:
	.loc 4 7047 0 discriminator 2
	addi 9,9,1
.LVL4420:
	.loc 4 7048 0 discriminator 2
	lfs 13,0(11)
	.loc 4 7047 0 discriminator 2
	cmpw 7,8,9
	.loc 4 7048 0 discriminator 2
	lfsu 12,4(10)
	.loc 4 7047 0 discriminator 2
	add 11,11,0
	.loc 4 7048 0 discriminator 2
	fmadds 0,12,13,0
.LVL4421:
	.loc 4 7047 0 discriminator 2
	bge+ 7,.L2645
.LVL4422:
	.loc 4 7045 0
	addi 7,7,1
.LVL4423:
	.loc 4 7050 0
	stfsx 0,6,5
	.loc 4 7045 0
	cmpw 7,7,28
	beq- 7,.L2646
.LVL4424:
.L2746:
	lwz 6,4(30)
.LVL4425:
	.loc 4 7047 0
	bge+ 6,.L2647
.LVL4426:
.L2745:
	mullw 0,6,7
	.loc 4 7045 0
	addi 7,7,1
	cmpw 7,7,28
	.loc 4 7047 0
	lwz 9,12(30)
	lis 10,.LC9@ha
	lfs 0,.LC9@l(10)
	slwi 0,0,2
	add 6,9,0
.LVL4427:
	.loc 4 7050 0
	stfsx 0,6,5
	.loc 4 7045 0
	bne+ 7,.L2746
.LVL4428:
.L2646:
	.loc 4 7044 0
	cmpwi 7,15,0
	addi 5,5,-4
	addi 15,15,-1
.LVL4429:
	bne+ 7,.L2644
	.loc 4 7054 0
	li 3,1
.LVL4430:
.L2606:
.LBE17080:
	.loc 4 7055 0
	lwz 0,180(1)
	lwz 12,52(1)
	mtlr 0
	lwz 14,56(1)
	lwz 15,60(1)
	mtcrf 8,12
	lwz 16,64(1)
	lwz 17,68(1)
	lwz 18,72(1)
	lwz 19,76(1)
	lwz 20,80(1)
	lwz 21,84(1)
	lwz 22,88(1)
	lwz 23,92(1)
	lwz 24,96(1)
	lwz 25,100(1)
	lwz 26,104(1)
.LVL4431:
	lwz 27,108(1)
.LVL4432:
	lwz 28,112(1)
	lwz 29,116(1)
.LVL4433:
	lwz 30,120(1)
.LVL4434:
	lwz 31,124(1)
.LVL4435:
	lfd 26,128(1)
	lfd 27,136(1)
	lfd 28,144(1)
	lfd 29,152(1)
	lfd 30,160(1)
	lfd 31,168(1)
	addi 1,1,176
	.cfi_remember_state
.LCFI418:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL4436:
.L2590:
.LCFI419:
	.cfi_restore_state
.LBB17612:
.LBB17608:
.LBB17423:
.LBB17405:
.LBB17268:
.LBB17236:
.LBB17178:
	.loc 4 6875 0
	cmpw 7,8,3
	beq- 7,.L2591
.LVL4437:
.LBB17173:
.LBB17174:
	.loc 3 2056 0
	lwz 11,4(31)
	lwz 7,12(31)
	mullw 11,3,11
	slwi 11,11,2
	add 11,7,11
.LVL4438:
.LBE17174:
.LBE17173:
	.loc 4 6876 0
	lfsx 0,11,21
.LVL4439:
	fneg 0,0
	stfsx 0,11,21
	b .L2591
.LVL4440:
.L2657:
.LBE17178:
.LBE17236:
	.loc 4 6792 0
	cmpwi 7,15,10
	.loc 4 6784 0
	lis 6,.LC9@ha
	lfs 6,.LC9@l(6)
	.loc 4 6785 0
	fmr 5,6
.LVL4441:
	.loc 4 6792 0
	bne+ 7,.L2567
.LVL4442:
.L2731:
	.loc 4 6793 0
	fadds 8,8,0
.LVL4443:
	.loc 4 6794 0
	li 9,0
	b .L2569
.LVL4444:
.L2747:
	lwz 4,4(31)
	lwz 3,12(31)
.LVL4445:
.L2569:
.LBB17237:
.LBB17238:
	.loc 3 2056 0 discriminator 2
	mullw 0,9,4
.LBE17238:
.LBE17237:
	.loc 4 6678 0 discriminator 2
	slwi 11,9,2
	.loc 4 6794 0 discriminator 2
	addi 9,9,1
.LVL4446:
	cmpw 7,9,10
.LBB17240:
.LBB17239:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 7,3,0
.LBE17239:
.LBE17240:
	.loc 4 6795 0 discriminator 2
	lfsx 13,7,11
	fsubs 13,13,0
	stfsx 13,7,11
	.loc 4 6794 0 discriminator 2
	ble+ 7,.L2747
	.loc 4 8102 0
	lwz 11,4(31)
	.loc 4 6797 0
	slwi 5,23,2
	.loc 4 8102 0
	lwz 0,12(31)
.LVL4447:
	.loc 4 6797 0
	addi 9,10,-2
.LVL4448:
.LBB17241:
.LBB17242:
	.loc 3 2056 0
	mullw 4,11,10
.LBE17242:
.LBE17241:
	.loc 4 6797 0
	slwi 7,9,2
	.loc 4 6798 0
	lis 3,.LC15@ha
	lfs 6,.LC15@l(3)
.LVL4449:
.LBB17243:
.LBB17244:
	.loc 3 2056 0
	mullw 6,23,11
.LBE17244:
.LBE17243:
	.loc 4 6797 0
	slwi 11,4,2
	add 11,0,11
.LBB17245:
.LBB17246:
	.loc 5 781 0
	lwzx 11,11,5
.LBE17246:
.LBE17245:
	.loc 4 6799 0
	lis 4,.LC16@ha
	lfs 5,.LC16@l(4)
.LVL4450:
	.loc 4 6797 0
	slwi 6,6,2
.LBB17248:
.LBB17247:
	.loc 5 781 0
	rlwinm 11,11,0,1,31
.LBE17247:
.LBE17248:
	.loc 4 6797 0
	add 0,0,6
.LBB17249:
.LBB17250:
	.loc 5 781 0
	lwzx 0,7,0
.LBE17250:
.LBE17249:
	.loc 4 6797 0
	stw 11,44(1)
.LBB17252:
.LBB17251:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE17251:
.LBE17252:
	.loc 4 6797 0
	lfs 0,44(1)
.LVL4451:
	stw 0,44(1)
	lfs 3,44(1)
	fadds 0,0,3
	stfs 0,20(1)
.LVL4452:
	.loc 4 6799 0
	fmuls 5,0,5
	.loc 4 6798 0
	fmuls 6,0,6
.LVL4453:
	.loc 4 6799 0
	lfs 3,20(1)
	.loc 4 6798 0
	fmr 0,6
.LVL4454:
	.loc 4 6799 0
	fmuls 5,5,3
.LVL4455:
	b .L2570
.LVL4456:
.L2737:
.LBB17253:
.LBB17179:
	.loc 4 6897 0
	slwi 6,3,2
	slwi 7,7,2
	addi 0,3,2
	b .L2599
.LVL4457:
.L2735:
	cmpwi 7,0,0
	b .L2594
.LVL4458:
.L2730:
.LBE17179:
.LBE17253:
.LBE17268:
.LBB17269:
.LBB17270:
	.loc 3 2056 0
	mullw 0,4,10
.LVL4459:
.LBE17270:
.LBE17269:
.LBB17273:
.LBB17274:
	slwi 9,24,2
.LBE17274:
.LBE17273:
	.loc 4 6722 0
	slwi 8,23,2
.LVL4460:
	.loc 4 6723 0
	lfs 0,.LC6@l(18)
.LBB17276:
.LBB17275:
	.loc 3 2056 0
	add 9,3,9
.LBE17275:
.LBE17276:
	.loc 4 6723 0
	lfsx 12,9,8
.LBB17277:
.LBB17271:
	.loc 3 2056 0
	slwi 0,0,2
.LBE17271:
.LBE17277:
	.loc 4 6722 0
	lfsx 11,9,7
.LBB17278:
.LBB17272:
	.loc 3 2056 0
	add 3,3,0
.LBE17272:
.LBE17278:
	.loc 4 6723 0
	lfsx 13,3,7
	.loc 4 6722 0
	lfsx 10,3,8
	.loc 4 6723 0
	fsubs 12,12,13
	.loc 4 6722 0
	fmuls 11,10,11
.LVL4461:
	.loc 4 6726 0
	fadds 10,8,13
.LBB17279:
.LBB17280:
.LBB17281:
.LBB17282:
	.loc 5 278 0
	lfs 13,.LC8@l(17)
.LBE17282:
.LBE17281:
.LBE17280:
.LBE17279:
	.loc 4 6723 0
	fmuls 12,12,0
	stfs 12,8(1)
.LVL4462:
	.loc 4 6724 0
	fmadds 12,12,12,11
.LVL4463:
	stfs 12,16(1)
.LVL4464:
.LBB17317:
.LBB17318:
	.loc 5 782 0
	lwz 4,16(1)
.LBE17318:
.LBE17317:
	.loc 4 6730 0
	lfs 7,16(1)
.LBB17320:
.LBB17319:
	.loc 5 782 0
	rlwinm 0,4,0,1,31
.LVL4465:
.LBE17319:
.LBE17320:
.LBB17321:
.LBB17305:
.LBB17294:
.LBB17283:
	.loc 5 276 0
	rlwinm 11,0,9,24,31
	rlwinm 9,0,19,21,29
	lwzx 9,16,9
	subfic 11,11,380
	.loc 5 275 0
	stw 0,44(1)
	.loc 5 276 0
	rlwinm 11,11,22,0,8
	or 9,11,9
.LBE17283:
.LBE17294:
.LBE17305:
.LBE17321:
	.loc 4 6730 0
	fcmpu 7,7,9
.LBB17322:
.LBB17306:
.LBB17295:
.LBB17284:
	.loc 5 275 0
	lfs 3,44(1)
	.loc 5 277 0
	stw 9,44(1)
.LBE17284:
.LBE17295:
.LBE17306:
.LBE17322:
	.loc 4 6730 0
	cror 30,29,30
.LBB17323:
.LBB17307:
.LBB17296:
.LBB17285:
	.loc 5 275 0
	fmuls 12,3,0
.LVL4466:
	.loc 5 277 0
	lfs 4,44(1)
.LBE17285:
.LBE17296:
.LBE17307:
.LBE17323:
	.loc 4 6726 0
	stfsx 10,3,7
.LBB17324:
.LBB17308:
.LBB17297:
.LBB17286:
	.loc 5 277 0
	fmr 0,4
.LVL4467:
	.loc 4 6678 0
	fneg 12,12
.LVL4468:
.LBE17286:
.LBE17297:
.LBE17308:
.LBE17324:
.LBB17325:
.LBB17326:
	.loc 3 2056 0
	lwz 9,4(31)
	lwz 11,12(31)
.LBE17326:
.LBE17325:
.LBB17329:
.LBB17309:
.LBB17298:
.LBB17287:
	.loc 5 278 0
	fmul 10,0,0
.LBE17287:
.LBE17298:
.LBE17309:
.LBE17329:
.LBB17330:
.LBB17327:
	.loc 3 2056 0
	mullw 9,23,9
.LBE17327:
.LBE17330:
.LBB17331:
.LBB17310:
.LBB17299:
.LBB17288:
	.loc 5 278 0
	fmadd 10,12,10,13
.LBE17288:
.LBE17299:
.LBE17310:
.LBE17331:
.LBB17332:
.LBB17328:
	.loc 3 2056 0
	slwi 9,9,2
	add 9,11,9
.LBE17328:
.LBE17332:
.LBB17333:
.LBB17311:
.LBB17300:
.LBB17289:
	.loc 5 278 0
	fmul 0,0,10
.LVL4469:
.LBE17289:
.LBE17300:
.LBE17311:
.LBE17333:
	.loc 4 6727 0
	lfsx 10,9,8
	fadds 10,10,8
.LBB17334:
.LBB17312:
.LBB17301:
.LBB17290:
	.loc 5 279 0
	fmul 7,0,0
.LVL4470:
.LBE17290:
.LBE17301:
.LBE17312:
.LBE17334:
	.loc 4 6727 0
	stfsx 10,9,8
.LBB17335:
.LBB17336:
	.loc 3 2056 0
	lwz 9,4(31)
.LBE17336:
.LBE17335:
.LBB17338:
.LBB17313:
.LBB17302:
.LBB17291:
	.loc 5 279 0
	fmadd 13,12,7,13
.LVL4471:
.LBE17291:
.LBE17302:
.LBE17313:
.LBE17338:
	.loc 4 6728 0
	lwz 11,12(31)
.LBB17339:
.LBB17337:
	.loc 3 2056 0
	mullw 9,10,9
.LBE17337:
.LBE17339:
.LBB17340:
.LBB17314:
.LBB17303:
.LBB17292:
	.loc 5 279 0
	fmul 0,0,13
.LVL4472:
.LBE17292:
.LBE17303:
.LBE17314:
.LBE17340:
	.loc 4 6728 0
	slwi 9,9,2
	add 9,11,9
.LBB17341:
.LBB17315:
.LBB17304:
.LBB17293:
	.loc 5 280 0
	frsp 0,0
.LVL4473:
.LBE17293:
.LBE17304:
	.loc 5 303 0
	fmuls 3,3,0
.LBE17315:
.LBE17341:
	.loc 4 6728 0
	lfsx 0,9,7
.LBB17342:
.LBB17316:
	.loc 5 303 0
	stfs 3,24(1)
.LVL4474:
.LBE17316:
.LBE17342:
	.loc 4 6730 0
	bne- 7,.L2709
	.loc 4 6731 0
	lfs 10,8(1)
	fcmpu 7,10,9
	cror 30,29,30
	bne- 7,.L2710
	.loc 4 6732 0
	fadds 12,10,3
	stfs 12,8(1)
.LVL4475:
.L2558:
	.loc 4 6736 0
	lfs 7,8(1)
.LBB17343:
.LBB17344:
	.loc 2 1537 0
	slwi 9,23,2
.LVL4476:
.LBE17344:
.LBE17343:
	.loc 4 6736 0
	lwz 11,8(29)
	fadds 13,0,7
	.loc 4 6738 0
	fcmpu 7,7,9
	.loc 4 6736 0
	stfsx 13,11,9
	.loc 4 8102 0
	lwz 11,8(29)
.LVL4477:
	.loc 4 6737 0
	lwzx 0,11,9
.LVL4478:
	stwx 0,11,7
	.loc 4 6738 0
	beq- 7,.L2559
.LVL4479:
	.loc 4 6739 0
	fdivs 11,11,7
.LVL4480:
	lwz 11,8(29)
	fsubs 0,0,11
.LVL4481:
	stfsx 0,11,7
.LVL4482:
.L2559:
	.loc 4 6741 0
	lwz 11,8(27)
.LBB17345:
.LBB17346:
	.loc 5 781 0
	lwz 0,8(1)
.LBE17346:
.LBE17345:
	.loc 4 6741 0
	stfsx 9,11,9
.LVL4483:
.LBB17348:
.LBB17347:
	.loc 5 781 0
	rlwinm 4,0,0,1,31
.LBE17347:
.LBE17348:
	.loc 4 6746 0
	lfs 4,8(1)
	.loc 4 6742 0
	lwz 11,8(27)
.LBB17349:
.LBB17350:
.LBB17351:
.LBB17352:
	.loc 5 275 0
	lfs 10,.LC6@l(18)
.LBE17352:
.LBE17351:
.LBE17350:
.LBE17349:
	.loc 4 6742 0
	stfsx 9,11,7
.LBB17362:
.LBB17359:
.LBB17356:
.LBB17353:
	.loc 5 278 0
	lfs 11,.LC8@l(17)
.LBE17353:
.LBE17356:
.LBE17359:
.LBE17362:
	.loc 4 8102 0
	lwz 11,4(31)
	.loc 4 6752 0
	lwz 5,0(30)
.LBB17363:
.LBB17364:
	.loc 3 2056 0
	mullw 6,11,10
.LBE17364:
.LBE17363:
	.loc 4 8102 0
	lwz 0,12(31)
.LVL4484:
	.loc 4 6752 0
	cmpw 7,23,5
	.loc 4 6743 0
	slwi 5,6,2
	add 5,0,5
	lwzx 5,5,8
.LVL4485:
.LBB17365:
.LBB17366:
	.loc 5 781 0
	rlwinm 3,5,0,1,31
.LBE17366:
.LBE17365:
	.loc 4 6744 0
	stw 3,44(1)
	lfs 0,44(1)
	stw 4,44(1)
	lfs 3,44(1)
	.loc 4 6745 0
	stw 5,44(1)
	.loc 4 6744 0
	fadds 0,0,3
	.loc 4 6745 0
	lfs 7,44(1)
	.loc 4 6744 0
	stfs 0,20(1)
.LVL4486:
	.loc 4 6746 0
	fdivs 0,4,0
.LVL4487:
	.loc 4 6745 0
	lfs 12,20(1)
	fdivs 13,7,12
.LVL4488:
	.loc 4 6747 0
	fmuls 12,0,0
	fmadds 12,13,13,12
	stfs 12,8(1)
.LVL4489:
.LBB17367:
.LBB17360:
.LBB17357:
.LBB17354:
	.loc 5 275 0
	fmuls 10,12,10
	.loc 5 270 0
	lwz 5,8(1)
.LVL4490:
	.loc 4 6678 0
	fneg 10,10
.LBE17354:
.LBE17357:
	.loc 5 303 0
	lfs 4,8(1)
.LBB17358:
.LBB17355:
	.loc 5 276 0
	rlwinm 4,5,9,24,31
.LVL4491:
	rlwinm 5,5,19,21,29
	lwzx 5,16,5
	subfic 4,4,380
	rlwinm 4,4,22,0,8
	or 5,4,5
	.loc 5 277 0
	stw 5,44(1)
	lfs 3,44(1)
	fmr 12,3
.LVL4492:
	.loc 5 278 0
	fmul 7,12,12
.LVL4493:
	fmadd 7,10,7,11
	fmul 12,12,7
.LVL4494:
	.loc 5 279 0
	fmul 7,12,12
	fmadd 11,10,7,11
.LVL4495:
	fmul 12,12,11
.LVL4496:
	.loc 5 280 0
	frsp 12,12
.LVL4497:
.LBE17355:
.LBE17358:
	.loc 5 303 0
	fmuls 12,4,12
.LBE17360:
.LBE17367:
	.loc 4 6748 0
	fdivs 13,13,12
.LVL4498:
.LBB17368:
.LBB17361:
	.loc 5 303 0
	stfs 12,12(1)
.LBE17361:
.LBE17368:
	.loc 4 6749 0
	fdivs 0,0,12
.LVL4499:
	.loc 4 6748 0
	stfs 13,8(1)
.LVL4500:
	.loc 4 6749 0
	stfs 0,16(1)
.LVL4501:
	.loc 4 6752 0
	blt+ 7,.L2562
	b .L2560
.LVL4502:
.L2561:
	mullw 6,11,10
.LVL4503:
.L2562:
.LBB17369:
.LBB17370:
	.loc 3 2056 0 discriminator 2
	mullw 11,23,11
.LBE17370:
.LBE17369:
	.loc 4 6754 0 discriminator 2
	slwi 6,6,2
	add 6,0,6
	lfs 7,8(1)
	lfsx 13,6,9
	lfs 10,16(1)
.LBB17373:
.LBB17371:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
.LBE17371:
.LBE17373:
	.loc 4 6754 0 discriminator 2
	fmuls 13,7,13
.LBB17374:
.LBB17372:
	.loc 3 2056 0 discriminator 2
	add 11,0,11
.LBE17372:
.LBE17374:
	.loc 4 6752 0 discriminator 2
	mr 0,25
	.loc 4 6753 0 discriminator 2
	lfsx 0,11,9
.LVL4504:
	.loc 4 6752 0 discriminator 2
	addi 25,25,1
	.loc 4 6754 0 discriminator 2
	fmadds 13,10,0,13
	.loc 4 6755 0 discriminator 2
	fmuls 0,7,0
	.loc 4 6754 0 discriminator 2
	stfsx 13,11,9
.LVL4505:
.LBB17375:
.LBB17376:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(31)
.LVL4506:
	lwz 6,12(31)
	mullw 11,10,11
	slwi 11,11,2
	add 11,6,11
.LVL4507:
.LBE17376:
.LBE17375:
	.loc 4 6755 0 discriminator 2
	lfsx 13,11,9
	fmsubs 0,13,10,0
	stfsx 0,11,9
	.loc 4 6752 0 discriminator 2
	addi 9,9,4
	lwz 11,0(30)
	cmpw 7,11,0
	lwz 11,4(31)
	lwz 0,12(31)
	bgt+ 7,.L2561
.LVL4508:
.L2560:
.LBE17405:
.LBE17423:
	.loc 4 6705 0
	li 9,0
	b .L2651
.LVL4509:
.L2563:
.LBB17424:
.LBB17406:
	.loc 4 6752 0
	lwz 11,4(31)
	lwz 0,12(31)
.LVL4510:
.L2651:
.LBB17377:
.LBB17378:
	.loc 3 2056 0 discriminator 2
	mullw 11,11,9
.LBE17378:
.LBE17377:
	.loc 4 6761 0 discriminator 2
	lfs 11,8(1)
	lfs 3,16(1)
.LBB17380:
.LBB17379:
	.loc 3 2056 0 discriminator 2
	slwi 11,11,2
	add 11,0,11
.LBE17379:
.LBE17380:
	.loc 4 6761 0 discriminator 2
	lfsx 12,11,7
	.loc 4 6760 0 discriminator 2
	lfsx 0,11,8
.LVL4511:
	.loc 4 6761 0 discriminator 2
	fmuls 12,11,12
	.loc 4 6762 0 discriminator 2
	fmuls 13,11,0
	.loc 4 6761 0 discriminator 2
	fmadds 0,3,0,12
	stfsx 0,11,8
.LVL4512:
.LBB17381:
.LBB17382:
	.loc 3 2056 0 discriminator 2
	lwz 0,4(31)
	lwz 11,12(31)
.LVL4513:
	mullw 0,9,0
.LBE17382:
.LBE17381:
	.loc 4 6759 0 discriminator 2
	addi 9,9,1
.LVL4514:
	cmpw 7,9,10
.LBB17384:
.LBB17383:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 11,11,0
.LVL4515:
.LBE17383:
.LBE17384:
	.loc 4 6762 0 discriminator 2
	lfsx 0,11,7
	fmsubs 0,0,3,13
	stfsx 0,11,7
	.loc 4 6759 0 discriminator 2
	ble+ 7,.L2563
	.loc 4 6759 0 is_stmt 0
	lwz 0,4(30)
	li 9,0
.LVL4516:
	mtctr 28
	b .L2565
.LVL4517:
.L2748:
	.loc 4 6766 0 is_stmt 1
	lwz 0,4(30)
.LVL4518:
.L2565:
.LBB17385:
.LBB17386:
	.loc 3 2056 0 discriminator 2
	mullw 0,0,9
	lwz 11,12(30)
.LBE17386:
.LBE17385:
	.loc 4 6768 0 discriminator 2
	lfs 7,8(1)
	lfs 10,16(1)
.LBB17388:
.LBB17387:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 11,11,0
.LBE17387:
.LBE17388:
	.loc 4 6768 0 discriminator 2
	lfsx 13,11,7
	.loc 4 6767 0 discriminator 2
	lfsx 4,11,8
	.loc 4 6768 0 discriminator 2
	fmuls 13,7,13
	.loc 4 6769 0 discriminator 2
	fmuls 0,7,4
	.loc 4 6767 0 discriminator 2
	stfs 4,24(1)
.LVL4519:
	.loc 4 6768 0 discriminator 2
	fmadds 13,10,4,13
	stfsx 13,11,8
.LVL4520:
.LBB17389:
.LBB17390:
	.loc 3 2056 0 discriminator 2
	lwz 0,4(30)
	lwz 11,12(30)
.LVL4521:
	mullw 0,9,0
.LBE17390:
.LBE17389:
	.loc 4 6766 0 discriminator 2
	addi 9,9,1
.LVL4522:
.LBB17392:
.LBB17391:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 11,11,0
.LVL4523:
.LBE17391:
.LBE17392:
	.loc 4 6769 0 discriminator 2
	lfsx 13,11,7
	fmsubs 0,13,10,0
	stfsx 0,11,7
	.loc 4 6766 0 discriminator 2
	bdnz .L2748
.LVL4524:
	.loc 4 6777 0
	addi 23,10,-2
.LVL4525:
	.loc 4 6778 0
	li 15,0
	b .L2552
.LVL4526:
.L2733:
.LBB17393:
	.loc 4 6824 0
	addi 6,9,2
	b .L2577
.LVL4527:
.L2732:
	.loc 4 6804 0
	fsubs 13,6,0
	lfs 12,.LC6@l(18)
	fmuls 13,13,12
.LVL4528:
	.loc 4 6805 0
	fmadds 4,13,13,5
	.loc 4 6806 0
	fcmpu 7,4,9
	.loc 4 6805 0
	stfs 4,20(1)
.LVL4529:
	.loc 4 6806 0
	bng- 7,.L2570
.LVL4530:
.LBB17254:
.LBB17255:
.LBB17256:
.LBB17257:
	.loc 5 270 0
	lwz 0,20(1)
.LVL4531:
	.loc 5 275 0
	fmuls 12,4,12
.LBE17257:
.LBE17256:
.LBE17255:
.LBE17254:
	.loc 4 6808 0
	fcmpu 7,6,0
.LBB17261:
.LBB17260:
.LBB17259:
.LBB17258:
	.loc 5 276 0
	rlwinm 9,0,9,24,31
	rlwinm 0,0,19,21,29
	lwzx 0,16,0
	subfic 9,9,380
	rlwinm 9,9,22,0,8
	.loc 5 275 0
	fmr 7,12
.LVL4532:
	.loc 5 276 0
	or 0,9,0
	.loc 5 277 0
	stw 0,44(1)
	.loc 4 6678 0
	fneg 7,7
.LVL4533:
	.loc 5 277 0
	lfs 10,44(1)
	fmr 11,10
.LVL4534:
	.loc 5 278 0
	lfs 10,.LC8@l(17)
.LVL4535:
	fmul 12,11,11
.LVL4536:
	fmadd 12,7,12,10
	fmul 12,11,12
.LVL4537:
	.loc 5 279 0
	fmul 11,12,12
	fmadd 10,7,11,10
.LVL4538:
	fmul 12,12,10
.LVL4539:
	.loc 5 280 0
	frsp 12,12
.LVL4540:
.LBE17258:
.LBE17259:
	.loc 5 303 0
	fmuls 12,4,12
.LVL4541:
.LBE17260:
.LBE17261:
	.loc 4 6808 0
	blt- 7,.L2749
.L2572:
.LVL4542:
	.loc 4 6811 0
	fadds 13,12,13
	.loc 4 6812 0
	li 9,0
	.loc 4 6811 0
	fdivs 5,5,13
.LVL4543:
	fsubs 0,0,5
.LVL4544:
	stfs 0,20(1)
.LVL4545:
	b .L2575
.LVL4546:
.L2750:
	.loc 4 6812 0
	lwz 4,4(31)
	lwz 3,12(31)
.LVL4547:
.L2575:
.LBB17262:
.LBB17263:
	.loc 3 2056 0 discriminator 2
	mullw 0,4,9
.LBE17263:
.LBE17262:
	.loc 4 6678 0 discriminator 2
	slwi 11,9,2
	.loc 4 6813 0 discriminator 2
	lfs 12,20(1)
	.loc 4 6812 0 discriminator 2
	addi 9,9,1
.LVL4548:
	cmpw 7,9,10
.LBB17265:
.LBB17264:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 7,3,0
.LBE17264:
.LBE17265:
	.loc 4 6813 0 discriminator 2
	lfsx 0,7,11
	fsubs 0,0,12
	stfsx 0,7,11
	.loc 4 6812 0 discriminator 2
	ble+ 7,.L2750
	.loc 4 6816 0
	lis 3,.LC13@ha
	.loc 4 6815 0
	lfs 0,20(1)
	.loc 4 6816 0
	lfs 6,.LC13@l(3)
.LVL4549:
	addi 9,10,-2
.LVL4550:
	.loc 4 6815 0
	fadds 8,8,0
.LVL4551:
	.loc 4 6816 0
	fmr 5,6
	fmr 0,6
	b .L2570
.LVL4552:
.L2709:
.LBE17393:
	.loc 4 6772 0
	lfs 11,8(1)
.LVL4553:
	.loc 4 6777 0
	addi 23,10,-2
.LVL4554:
	.loc 4 6772 0
	lwz 9,8(29)
	.loc 4 6778 0
	li 15,0
	.loc 4 6772 0
	fadds 0,0,11
.LVL4555:
	.loc 4 6774 0
	lwz 0,24(1)
.LVL4556:
	.loc 4 6775 0
	lfs 12,24(1)
	.loc 4 6772 0
	stfsx 0,9,8
.LVL4557:
	.loc 4 6775 0
	fneg 13,12
	.loc 4 6773 0
	lwz 9,8(29)
	stfsx 0,9,7
	.loc 4 6774 0
	lwz 9,8(27)
	stwx 0,9,8
.LVL4558:
	.loc 4 6775 0
	lwz 9,8(27)
	stfsx 13,9,7
.LVL4559:
	b .L2552
.LVL4560:
.L2662:
.LBE17406:
.LBE17424:
.LBE17608:
.LBB17609:
.LBB17598:
.LBB17594:
.LBB17580:
	.loc 4 6940 0
	lwz 0,12(1)
	.loc 4 6941 0
	stfs 12,24(1)
	.loc 4 6940 0
	stw 0,20(1)
	b .L2612
.LVL4561:
.L2613:
	.loc 4 6954 0
	lwz 9,8(29)
	fmuls 0,0,0
	.loc 4 6952 0
	lwzx 0,4,23
	.loc 4 6954 0
	lfsx 13,9,7
.LVL4562:
	.loc 4 6678 0
	addi 9,8,1
.LVL4563:
	.loc 4 6955 0
	lfs 9,24(1)
.LBB17563:
.LBB17564:
	.loc 3 2056 0
	mullw 10,5,9
.LBE17564:
.LBE17563:
	.loc 4 6955 0
	lfs 10,12(1)
	.loc 4 6954 0
	fsubs 13,13,27
	.loc 4 6955 0
	stw 0,44(1)
.LBB17565:
.LBB17566:
	.loc 5 781 0
	rlwinm 11,0,0,1,31
.LBE17566:
.LBE17565:
	.loc 4 6955 0
	fmuls 11,9,10
	lfs 4,20(1)
	lfs 3,44(1)
	.loc 4 6954 0
	fmadds 13,13,13,0
.LBB17567:
.LBB17568:
	.loc 5 781 0
	lwz 6,24(1)
.LBE17568:
.LBE17567:
	.loc 4 6953 0
	slwi 10,10,2
	.loc 4 6955 0
	fmsubs 11,3,4,11
	.loc 4 6953 0
	add 3,3,10
.LBB17570:
.LBB17569:
	.loc 5 781 0
	rlwinm 6,6,0,1,31
	stw 6,32(1)
.LBE17569:
.LBE17570:
	.loc 4 6955 0
	fdivs 0,11,13
	.loc 4 6953 0
	lfsx 13,3,7
.LVL4564:
	.loc 4 6957 0
	stw 11,44(1)
	lfs 4,32(1)
	lfs 3,44(1)
	fcmpu 7,3,4
	.loc 4 6956 0
	stfsx 0,4,24
.LVL4565:
	.loc 4 6957 0
	bng- 7,.L2714
.LVL4566:
	.loc 4 6678 0
	fneg 12,12
.LVL4567:
.LBB17571:
.LBB17572:
	.loc 3 2056 0
	lwz 10,4(31)
.LBE17572:
.LBE17571:
	.loc 4 6958 0
	lwz 11,12(31)
	la 20,.LC14@l(18)
	stw 0,44(1)
.LBB17574:
.LBB17573:
	.loc 3 2056 0
	mullw 9,9,10
.LVL4568:
.LBE17573:
.LBE17574:
	.loc 4 6958 0
	fmsubs 0,12,0,10
.LVL4569:
	lfs 9,44(1)
	fdivs 0,0,9
	slwi 0,9,2
	add 9,11,0
	stfsx 0,9,24
	b .L2615
.LVL4570:
.L2714:
	.loc 4 6678 0
	fneg 13,13
	.loc 4 6960 0
	lfs 10,20(1)
	lfs 11,24(1)
	la 20,.LC14@l(18)
.LBB17575:
.LBB17576:
	.loc 3 2056 0
	lwz 0,4(31)
.LBE17576:
.LBE17575:
	.loc 4 6960 0
	fmsubs 0,13,0,10
	lwz 11,12(31)
.LBB17578:
.LBB17577:
	.loc 3 2056 0
	mullw 0,9,0
.LBE17577:
.LBE17578:
	.loc 4 6960 0
	fdivs 0,0,11
	slwi 0,0,2
	add 9,11,0
.LVL4571:
	stfsx 0,9,24
	b .L2615
.LVL4572:
.L2614:
	.loc 4 6949 0
	lfs 0,.LC14@l(18)
	la 20,.LC14@l(18)
	lfs 7,12(1)
	fmuls 0,29,0
	fneg 13,7
	fdivs 0,13,0
	stfsx 0,4,24
	b .L2615
.LVL4573:
.L2608:
.LBE17580:
.LBB17581:
	.loc 4 6973 0
	bnl- 7,.L2727
.LVL4574:
.LBB17544:
	.loc 4 8102 0
	lwz 9,4(31)
	.loc 4 6678 0
	addi 23,24,-4
	.loc 4 8102 0
	lwz 0,12(31)
.LVL4575:
.LBB17510:
.LBB17511:
	.loc 3 2056 0
	mullw 11,25,9
.LBE17511:
.LBE17510:
.LBB17512:
.LBB17513:
	mullw 9,19,9
.LBE17513:
.LBE17512:
	.loc 4 6977 0
	slwi 11,11,2
	add 11,0,11
	lwzx 11,11,23
.LVL4576:
.LBB17516:
.LBB17514:
	.loc 3 2056 0
	slwi 4,9,2
.LBE17514:
.LBE17516:
.LBB17517:
.LBB17518:
	.loc 5 781 0
	rlwinm 10,11,0,1,31
.LBE17518:
.LBE17517:
.LBB17519:
.LBB17515:
	.loc 3 2056 0
	add 4,0,4
.LBE17515:
.LBE17519:
	.loc 4 6977 0
	lwzx 0,4,24
.LVL4577:
	add 5,4,24
	stw 10,44(1)
.LBB17520:
.LBB17521:
	.loc 5 781 0
	rlwinm 9,0,0,1,31
.LBE17521:
.LBE17520:
	.loc 4 6977 0
	lfs 0,44(1)
	stw 9,44(1)
	lfs 3,44(1)
	fcmpu 7,0,3
	bng- 7,.L2716
.LVL4578:
	.loc 4 6978 0
	stw 11,44(1)
	lfs 4,16(1)
	lfs 7,44(1)
	fdivs 0,4,7
	stfsx 0,4,23
	.loc 4 8102 0
	lwz 9,4(31)
	lwz 0,12(31)
.LVL4579:
.LBB17522:
.LBB17523:
	.loc 3 2056 0
	mullw 11,25,9
.LVL4580:
	slwi 11,11,2
.LBE17523:
.LBE17522:
.LBB17525:
.LBB17526:
	mullw 9,19,9
.LBE17526:
.LBE17525:
.LBB17527:
.LBB17524:
	add 11,0,11
.LVL4581:
.LBE17524:
.LBE17527:
	.loc 4 6979 0
	lfsx 13,11,24
	lfsx 0,11,23
	fsubs 13,13,27
	slwi 9,9,2
	add 0,0,9
	fneg 13,13
	fdivs 0,13,0
	stfsx 0,24,0
.LVL4582:
.L2624:
.LBB17528:
.LBB17529:
	.loc 3 2056 0
	lwz 9,4(31)
.LBE17529:
.LBE17528:
.LBB17531:
	.loc 4 6985 0
	cmpwi 7,15,0
.LBE17531:
	.loc 4 6983 0
	lwz 11,12(31)
	.loc 4 6984 0
	lis 7,.LC1@ha
.LBB17532:
.LBB17530:
	.loc 3 2056 0
	mullw 9,25,9
.LBE17530:
.LBE17532:
	.loc 4 6984 0
	lwz 0,.LC1@l(7)
	la 17,.LC1@l(7)
.LBB17533:
	.loc 4 6985 0
	mr 22,15
.LBE17533:
	.loc 4 6983 0
	slwi 9,9,2
	add 9,11,9
	stfsx 28,9,23
.LVL4583:
.LBB17534:
.LBB17535:
	.loc 3 2056 0
	lwz 9,4(31)
.LBE17535:
.LBE17534:
	.loc 4 6984 0
	lwz 11,12(31)
.LBB17537:
.LBB17536:
	.loc 3 2056 0
	mullw 9,25,9
.LBE17536:
.LBE17537:
	.loc 4 6984 0
	slwi 9,9,2
	add 9,11,9
	stwx 0,9,24
.LBB17538:
	.loc 4 6985 0
	blt- 7,.L2609
	.loc 4 6974 0
	mr 7,19
.LBB17502:
.LBB17437:
.LBB17438:
	.loc 5 781 0
	lwz 0,16(1)
.LBE17438:
.LBE17437:
	.loc 4 6989 0
	cmpw 7,25,7
	.loc 4 6678 0
	lfs 0,16(1)
	.loc 4 6989 0
	lwz 6,4(31)
.LBB17441:
.LBB17439:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE17439:
.LBE17441:
.LBE17502:
	.loc 4 6985 0
	addi 21,24,-8
.LBB17503:
	.loc 4 6678 0
	fneg 26,0
.LBB17442:
.LBB17440:
	.loc 5 781 0
	stw 0,40(1)
.LVL4584:
.LBE17440:
.LBE17442:
	.loc 4 6989 0
	mullw 5,6,22
	lwz 4,12(31)
	blt- 7,.L2751
.LVL4585:
.L2637:
.LBE17503:
.LBE17538:
.LBE17544:
.LBE17581:
.LBB17582:
	.loc 4 6678 0
	lis 9,.LC9@ha
.LBE17582:
.LBB17583:
.LBB17545:
.LBB17539:
.LBB17504:
	addi 10,7,-1
.LBE17504:
.LBE17539:
.LBE17545:
.LBE17583:
.LBB17584:
	lfs 31,.LC9@l(9)
.LBE17584:
.LBB17585:
.LBB17546:
.LBB17540:
.LBB17505:
	mullw 9,6,7
	.loc 4 6989 0
	slwi 5,5,2
.LBE17505:
.LBE17540:
.LBE17546:
.LBE17585:
.LBB17586:
	.loc 4 6678 0
	fmr 30,31
.LBE17586:
.LBB17587:
.LBB17547:
.LBB17541:
.LBB17506:
	slwi 10,10,2
	.loc 4 6989 0
	add 5,4,5
	.loc 4 6678 0
	slwi 9,9,2
	add 10,5,10
	add 9,23,9
	slwi 0,6,2
	add 9,4,9
.LBE17506:
.LBE17541:
.LBE17547:
.LBE17587:
.LBB17588:
	mr 11,7
.LVL4586:
.L2626:
.LBE17588:
.LBB17589:
.LBB17548:
.LBB17542:
.LBB17507:
	.loc 4 6989 0 discriminator 2
	addi 11,11,1
.LVL4587:
	.loc 4 6678 0 discriminator 2
	subf 8,23,9
	.loc 4 6989 0 discriminator 2
	cmpw 7,25,11
	.loc 4 6990 0 discriminator 2
	lfsu 0,4(10)
	lfs 12,0(9)
	.loc 4 6989 0 discriminator 2
	add 9,9,0
	.loc 4 6991 0 discriminator 2
	lfsx 13,8,24
	.loc 4 6990 0 discriminator 2
	fmadds 30,0,12,30
.LVL4588:
	.loc 4 6991 0 discriminator 2
	fmadds 31,0,13,31
.LVL4589:
	.loc 4 6989 0 discriminator 2
	bge+ 7,.L2626
.LVL4590:
	.loc 4 6995 0
	lwz 9,8(27)
	.loc 4 6993 0
	lfsx 13,5,21
	.loc 4 6995 0
	lfsx 0,9,21
	.loc 4 6993 0
	fsubs 13,13,27
	.loc 4 6995 0
	fcmpu 7,0,28
	.loc 4 6993 0
	stfs 13,8(1)
.LVL4591:
	.loc 4 6995 0
	blt- 7,.L2666
.LVL4592:
.L2754:
	.loc 4 7001 0
	beq- 7,.L2752
.LVL4593:
	.loc 4 7007 0
	lwz 9,8(29)
	fmuls 0,0,0
	.loc 4 6678 0
	addi 16,22,1
	.loc 4 7007 0
	lfsx 4,9,21
.LBB17443:
.LBB17444:
	.loc 3 2056 0
	mullw 0,6,16
.LBE17444:
.LBE17443:
	.loc 4 7005 0
	add 9,5,21
	.loc 4 7007 0
	fsubs 4,4,27
	.loc 4 7005 0
	lfs 7,4(9)
	.loc 4 7006 0
	slwi 0,0,2
	.loc 4 7005 0
	stfs 7,28(1)
.LVL4594:
	.loc 4 7007 0
	fmadds 3,4,4,0
	lfs 0,16(1)
	.loc 4 7008 0
	fadds 4,4,4
	.loc 4 7006 0
	add 4,4,0
	lwzx 14,4,21
.LVL4595:
	.loc 4 7007 0
	fmadds 3,26,0,3
.LVL4596:
	.loc 4 7008 0
	fmuls 4,4,0
.LVL4597:
	.loc 4 7009 0
	fcmpu 7,3,28
	beq- 7,.L2717
	lwz 0,24(1)
	la 20,.LC14@l(18)
	lwz 3,28(1)
	rlwinm 0,0,0,1,31
	rlwinm 3,3,0,1,31
	stw 0,32(1)
	stw 3,36(1)
.LVL4598:
.L2630:
	.loc 4 7012 0
	lfs 10,24(1)
	add 4,5,23
.LVL4599:
	lfs 11,28(1)
	mr 3,30
	fmuls 1,10,30
	lfs 12,12(1)
	fmuls 2,10,31
	lfs 13,20(1)
.LVL4600:
	lfs 0,16(1)
	add 5,5,24
	fmsubs 1,11,12,1
	fmsubs 2,11,13,2
	fmadds 1,0,31,1
	fmadds 2,26,30,2
	bl _ZN6idMatX15ComplexDivisionEffffRfS0_
.LVL4601:
	.loc 4 7013 0
	lfs 3,32(1)
	lfs 4,40(1)
	lfs 7,36(1)
	fadds 0,3,4
	.loc 4 8102 0
	lwz 9,4(31)
	lwz 0,12(31)
.LVL4602:
.LBB17445:
.LBB17446:
	.loc 3 2056 0
	mullw 11,22,9
.LBE17446:
.LBE17445:
	.loc 4 7013 0
	fcmpu 7,0,7
	bnl- 7,.L2719
.LBB17449:
.LBB17447:
	.loc 3 2056 0
	slwi 11,11,2
.LBE17447:
.LBE17449:
	.loc 4 7014 0
	lfs 9,8(1)
.LBB17450:
.LBB17448:
	.loc 3 2056 0
	add 11,0,11
.LVL4603:
.LBE17448:
.LBE17450:
	.loc 4 7014 0
	lfs 10,16(1)
	.loc 4 6678 0
	lfsx 13,11,23
.LBB17451:
.LBB17452:
	.loc 3 2056 0
	mullw 9,16,9
.LBE17452:
.LBE17451:
	.loc 4 7014 0
	lfsx 0,11,24
	.loc 4 6678 0
	fneg 13,13
	.loc 4 7014 0
	lfs 11,28(1)
	slwi 9,9,2
	fmsubs 30,13,9,30
	add 9,0,9
	fmadds 0,0,10,30
	fdivs 0,0,11
	stfsx 0,9,23
	.loc 4 8102 0
	lwz 9,4(31)
	lwz 0,12(31)
.LVL4604:
.LBB17453:
.LBB17454:
	.loc 3 2056 0
	mullw 11,22,9
	slwi 11,11,2
.LBE17454:
.LBE17453:
.LBB17456:
.LBB17457:
	mullw 9,16,9
.LBE17457:
.LBE17456:
.LBB17458:
.LBB17455:
	add 11,0,11
.LVL4605:
.LBE17455:
.LBE17458:
	.loc 4 6678 0
	lfsx 13,11,24
	lfsx 0,11,23
	fneg 13,13
	.loc 4 7015 0
	slwi 9,9,2
	.loc 4 6678 0
	fneg 0,0
	.loc 4 7015 0
	add 9,0,9
	fmsubs 31,13,9,31
	fmadds 0,0,10,31
	fdivs 0,0,11
	stfsx 0,9,24
.LVL4606:
.L2629:
	.loc 4 8102 0
	lwz 11,4(31)
	lwz 0,12(31)
.LVL4607:
.LBB17459:
.LBB17460:
	.loc 3 2056 0
	mullw 9,22,11
	slwi 9,9,2
	add 9,0,9
.LBE17460:
.LBE17459:
.LBB17461:
.LBB17462:
	.loc 5 781 0
	lwzx 8,9,24
.LBE17462:
.LBE17461:
	.loc 4 7022 0
	lwzx 10,9,23
.LVL4608:
.LBB17465:
.LBB17463:
	.loc 5 782 0
	rlwinm 3,8,0,1,31
.LBE17463:
.LBE17465:
.LBB17466:
.LBB17467:
	rlwinm 9,10,0,1,31
.LVL4609:
.LBE17467:
.LBE17466:
.LBB17468:
.LBB17464:
	stw 3,8(1)
.LVL4610:
.LBE17464:
.LBE17468:
.LBB17469:
.LBB17470:
	.file 8 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/Lib.h"
	.loc 8 158 0
	stw 9,44(1)
	lfs 3,8(1)
	lfs 0,44(1)
	fcmpu 7,0,3
	bng- 7,.L2633
	stw 9,8(1)
.L2633:
.LBE17470:
.LBE17469:
	.loc 4 7023 0
	lfs 4,8(1)
	lfs 13,0(20)
	lfs 0,0(17)
	fmuls 13,4,13
	fmuls 13,13,4
	fcmpu 7,13,0
	bng- 7,.L2669
.LVL4611:
	.loc 4 7024 0 discriminator 1
	cmpw 7,25,22
	mr 7,22
	blt- 7,.L2627
	mullw 11,11,22
	.loc 4 7024 0 is_stmt 0 discriminator 2
	mr 9,22
.LVL4612:
	b .L2636
.LVL4613:
.L2753:
	.loc 4 7024 0
	lwz 11,4(31)
	lwz 0,12(31)
	mullw 11,11,9
	slwi 10,11,2
	add 10,0,10
	lwzx 10,10,23
.LVL4614:
.L2636:
	.loc 4 7025 0 is_stmt 1 discriminator 2
	stw 10,44(1)
	slwi 11,11,2
	lfs 9,8(1)
	add 11,0,11
	lfs 7,44(1)
	fdivs 0,7,9
	stfsx 0,11,23
.LVL4615:
.LBB17471:
.LBB17472:
	.loc 3 2056 0 discriminator 2
	lwz 0,4(31)
	lwz 11,12(31)
	mullw 0,9,0
.LBE17472:
.LBE17471:
	.loc 4 7024 0 discriminator 2
	addi 9,9,1
.LVL4616:
	cmpw 7,25,9
.LBB17474:
.LBB17473:
	.loc 3 2056 0 discriminator 2
	slwi 0,0,2
	add 11,11,0
.LVL4617:
.LBE17473:
.LBE17474:
	.loc 4 7026 0 discriminator 2
	lfsx 0,11,24
	fdivs 0,0,9
	stfsx 0,11,24
	.loc 4 7024 0 discriminator 2
	bge+ 7,.L2753
.LVL4618:
.L2669:
	.loc 4 7024 0 is_stmt 0
	mr 7,22
.LVL4619:
.L2627:
.LBE17507:
	.loc 4 6985 0 is_stmt 1
	cmpwi 7,22,0
	addi 21,21,-4
	addi 22,22,-1
.LVL4620:
	beq- 7,.L2609
.LVL4621:
.LBB17508:
	.loc 4 6989 0
	cmpw 7,25,7
	lwz 6,4(31)
	lwz 4,12(31)
	mullw 5,6,22
	bge+ 7,.L2637
.LVL4622:
.L2751:
	.loc 4 6995 0
	lwz 9,8(27)
	.loc 4 6989 0
	slwi 5,5,2
	add 5,4,5
.LVL4623:
	lis 3,.LC9@ha
	.loc 4 6995 0
	lfsx 0,9,21
	.loc 4 6993 0
	lfsx 13,5,21
	.loc 4 6995 0
	fcmpu 7,0,28
	.loc 4 6989 0
	lfs 31,.LC9@l(3)
	.loc 4 6993 0
	fsubs 13,13,27
	.loc 4 6989 0
	fmr 30,31
	.loc 4 6993 0
	stfs 13,8(1)
.LVL4624:
	.loc 4 6995 0
	bnl- 7,.L2754
.LVL4625:
.L2666:
	.loc 4 6996 0
	lwz 0,8(1)
	.loc 4 6995 0
	stfs 31,20(1)
	.loc 4 6996 0
	stw 0,24(1)
	.loc 4 6995 0
	stfs 30,12(1)
	b .L2627
.LVL4626:
.L2717:
	.loc 4 7009 0 discriminator 1
	fcmpu 7,4,28
	beq- 7,.L2718
	lwz 6,24(1)
	la 20,.LC14@l(18)
	lwz 7,28(1)
	rlwinm 6,6,0,1,31
	rlwinm 7,7,0,1,31
	stw 6,32(1)
	stw 7,36(1)
	b .L2630
.LVL4627:
.L2752:
	.loc 4 7002 0
	fneg 1,30
	lfs 4,16(1)
	fneg 2,31
	add 4,5,23
	fmr 3,13
	mr 3,30
	add 5,5,24
	la 20,.LC14@l(18)
	bl _ZN6idMatX15ComplexDivisionEffffRfS0_
.LVL4628:
	b .L2629
.LVL4629:
.L2719:
.LBB17475:
.LBB17476:
	.loc 3 2056 0
	slwi 11,11,2
.LBE17476:
.LBE17475:
.LBB17478:
.LBB17479:
	mullw 9,16,9
.LBE17479:
.LBE17478:
.LBB17481:
.LBB17477:
	add 11,0,11
.LVL4630:
.LBE17477:
.LBE17481:
	.loc 4 7017 0
	lfs 13,12(1)
	.loc 4 6678 0
	lfsx 1,11,23
	.loc 4 7017 0
	mr 3,30
	.loc 4 6678 0
	lfsx 2,11,24
	.loc 4 7017 0
	stw 14,44(1)
	.loc 4 6678 0
	fneg 1,1
	fneg 2,2
	.loc 4 7017 0
	lfs 0,20(1)
	lfs 12,44(1)
.LBB17482:
.LBB17480:
	.loc 3 2056 0
	slwi 5,9,2
	add 5,0,5
.LVL4631:
.LBE17480:
.LBE17482:
	.loc 4 7017 0
	lfs 3,24(1)
	fmsubs 1,1,12,13
	lfs 4,16(1)
	fmsubs 2,2,12,0
	add 4,5,23
	add 5,5,24
	bl _ZN6idMatX15ComplexDivisionEffffRfS0_
	b .L2629
.LVL4632:
.L2718:
.LBB17483:
.LBB17484:
	.loc 5 781 0
	lwz 9,8(1)
.LBE17484:
.LBE17483:
	.loc 4 7010 0
	la 20,.LC14@l(18)
	lfs 7,40(1)
.LBB17486:
.LBB17485:
	.loc 5 781 0
	rlwinm 0,9,0,1,31
.LBE17485:
.LBE17486:
.LBB17487:
.LBB17488:
	lwz 6,24(1)
.LBE17488:
.LBE17487:
	.loc 4 7010 0
	stw 0,44(1)
.LBB17491:
.LBB17492:
	.loc 5 781 0
	lwz 0,28(1)
.LBE17492:
.LBE17491:
.LBB17495:
.LBB17489:
	rlwinm 6,6,0,1,31
.LBE17489:
.LBE17495:
	.loc 4 7010 0
	lfs 3,44(1)
.LVL4633:
.LBB17496:
.LBB17493:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE17493:
.LBE17496:
.LBB17497:
.LBB17490:
	stw 6,32(1)
.LBE17490:
.LBE17497:
.LBB17498:
.LBB17494:
	stw 0,36(1)
.LBE17494:
.LBE17498:
	.loc 4 7010 0
	fadds 0,3,7
.LBB17499:
.LBB17500:
	.loc 5 781 0
	rlwinm 0,14,0,1,31
.LBE17500:
.LBE17499:
	.loc 4 7010 0
	lfs 9,32(1)
	lfs 3,36(1)
	stw 0,44(1)
	fadds 0,0,3
	lfs 3,.LC14@l(18)
	lfs 7,44(1)
	fmuls 3,29,3
	fadds 0,0,7
	fadds 0,0,9
	fmuls 3,3,0
.LVL4634:
	b .L2630
.LVL4635:
.L2710:
.LBE17508:
.LBE17542:
.LBE17548:
.LBE17589:
.LBE17594:
.LBE17598:
.LBE17609:
.LBB17610:
.LBB17425:
.LBB17407:
	.loc 4 6734 0
	lfs 3,8(1)
	lfs 4,24(1)
	fsubs 3,3,4
	stfs 3,8(1)
.LVL4636:
	b .L2558
.LVL4637:
.L2749:
.LBB17394:
	.loc 4 6809 0
	fneg 12,12
.LVL4638:
	b .L2572
.LVL4639:
.L2716:
.LBE17394:
.LBE17407:
.LBE17425:
.LBE17610:
.LBB17611:
.LBB17599:
.LBB17595:
.LBB17590:
.LBB17549:
	.loc 4 6981 0
	lfsx 3,4,23
	lis 6,.LC9@ha
	stw 0,44(1)
	mr 3,30
	fsubs 3,3,27
	lfs 4,16(1)
	lfs 9,44(1)
	add 4,4,23
	lfs 1,.LC9@l(6)
	fneg 2,9
	bl _ZN6idMatX15ComplexDivisionEffffRfS0_
.LVL4640:
	b .L2624
.LVL4641:
.L2728:
.LBE17549:
.LBE17590:
.LBE17595:
.LBE17599:
.LBE17611:
	.loc 4 6699 0
	stw 0,20(1)
	stw 0,12(1)
	b .L2545
.LBE17612:
	.cfi_endproc
.LFE2653:
	.size	_ZN6idMatX21HessenbergToRealSchurERS_R6idVecXS2_, .-_ZN6idMatX21HessenbergToRealSchurERS_R6idVecXS2_
	.align 2
	.globl _ZN6idMatX11Eigen_SolveER6idVecXS1_
	.type	_ZN6idMatX11Eigen_SolveER6idVecXS1_, @function
_ZN6idMatX11Eigen_SolveER6idVecXS1_:
.LFB2654:
	.loc 4 7066 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2654
.LVL4642:
	mflr 0
	stwu 1,-56(1)
.LCFI420:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
.LVL4643:
	stw 27,36(1)
	stw 0,60(1)
.LBB17630:
.LBB17631:
.LBB17632:
	.loc 3 1995 0
	li 0,0
	.cfi_offset 65, 4
	.cfi_offset 27, -20
.LBE17632:
.LBE17631:
.LBE17630:
	.loc 4 7066 0
	stw 28,40(1)
	mr 28,3
	.cfi_offset 28, -16
	stw 29,44(1)
	mr 29,4
	.cfi_offset 29, -12
.LVL4644:
	stw 30,48(1)
	mr 30,5
	.cfi_offset 30, -8
	stw 25,28(1)
	stw 26,32(1)
	stw 31,52(1)
.LBB17663:
.LBB17637:
.LBB17633:
	.loc 3 1995 0
	stw 0,16(1)
.LBE17633:
.LBE17637:
	.loc 4 7071 0
	lwz 31,0(3)
	.cfi_offset 31, -4
	.cfi_offset 26, -24
	.cfi_offset 25, -28
.LVL4645:
.LBB17638:
.LBB17639:
	.loc 2 1709 0
	lwz 9,4(4)
	.loc 2 1708 0
	addi 27,31,3
.LBE17639:
.LBE17638:
.LBB17643:
.LBB17634:
	.loc 3 1995 0
	stw 0,12(1)
.LBE17634:
.LBE17643:
.LBB17644:
.LBB17640:
	.loc 2 1708 0
	rlwinm 27,27,0,0,29
.LVL4646:
.LBE17640:
.LBE17644:
.LBB17645:
.LBB17635:
	.loc 3 1995 0
	stw 0,8(1)
.LBE17635:
.LBE17645:
.LBB17646:
.LBB17641:
	.loc 2 1709 0
	cmpw 7,27,9
.LBE17641:
.LBE17646:
.LBB17647:
.LBB17636:
	.loc 3 1996 0
	stw 0,20(1)
.LBE17636:
.LBE17647:
.LBB17648:
.LBB17642:
	.loc 2 1709 0
	ble- 7,.L2756
	cmpwi 7,9,-1
	beq- 7,.L2756
	.loc 2 1710 0
	lwz 3,8(4)
.LVL4647:
	cmpwi 7,3,0
	beq- 7,.L2757
.LEHB113:
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL4648:
.L2757:
	.loc 2 1713 0
	slwi 3,27,2
	bl _Z11Mem_Alloc16i
	stw 3,8(29)
	.loc 2 1714 0
	stw 27,4(29)
.L2756:
	.loc 2 1717 0
	cmpw 7,31,27
	.loc 2 1716 0
	stw 31,0(29)
.LVL4649:
	.loc 2 1717 0
	bge- 7,.L2758
	slwi 9,31,2
	li 10,0
.LVL4650:
.L2759:
	addi 31,31,1
.LVL4651:
	lwz 11,8(29)
	.loc 4 7066 0
	addi 0,31,3
	.loc 2 1717 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,31,0
	addi 9,9,4
	blt+ 7,.L2759
.L2758:
.LBE17642:
.LBE17648:
	.loc 4 7072 0
	lwz 31,0(28)
.LVL4652:
.LBB17649:
.LBB17650:
	.loc 2 1709 0
	lwz 0,4(30)
	.loc 2 1708 0
	addi 27,31,3
.LVL4653:
	rlwinm 27,27,0,0,29
.LVL4654:
	.loc 2 1709 0
	cmpw 7,27,0
	ble- 7,.L2760
	cmpwi 7,0,-1
	beq- 7,.L2760
	.loc 2 1710 0
	lwz 3,8(30)
	cmpwi 7,3,0
	beq- 7,.L2761
	.loc 2 1711 0
	bl _Z10Mem_Free16Pv
.LVL4655:
.L2761:
	.loc 2 1713 0
	slwi 3,27,2
	bl _Z11Mem_Alloc16i
	stw 3,8(30)
	.loc 2 1714 0
	stw 27,4(30)
.L2760:
	.loc 2 1717 0
	cmpw 7,31,27
	.loc 2 1716 0
	stw 31,0(30)
.LVL4656:
	.loc 2 1717 0
	bge- 7,.L2762
	slwi 9,31,2
	li 10,0
.LVL4657:
.L2763:
	addi 31,31,1
.LVL4658:
	lwz 11,8(30)
	.loc 4 7066 0
	addi 0,31,3
	.loc 2 1717 0
	rlwinm 0,0,0,0,29
	stwx 10,11,9
	cmpw 7,31,0
	addi 9,9,4
	blt+ 7,.L2763
.L2762:
.LVL4659:
.LBE17650:
.LBE17649:
.LBB17651:
.LBB17652:
	.loc 3 2060 0
	lwz 25,0(28)
	lwz 26,4(28)
.LVL4660:
.LBB17653:
.LBB17654:
	.loc 3 2250 0
	lwz 0,16(1)
	.loc 3 2249 0
	mullw 31,25,26
.LVL4661:
	addi 27,31,3
.LVL4662:
	rlwinm 27,27,0,0,29
.LVL4663:
	.loc 3 2250 0
	cmpw 7,27,0
	ble- 7,.L2777
	cmpwi 7,0,-1
	beq- 7,.L2777
	.loc 3 2251 0
	lwz 3,20(1)
	cmpwi 7,3,0
	beq- 7,.L2767
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL4664:
.L2767:
	.loc 3 2254 0
	slwi 3,27,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,20(1)
	.loc 3 2255 0
	stw 27,16(1)
	b .L2765
.LVL4665:
.L2777:
	.loc 3 2250 0
	lwz 4,20(1)
.LVL4666:
.L2765:
	.loc 3 2259 0
	cmpw 7,31,27
	.loc 3 2257 0
	stw 25,8(1)
	.loc 3 2258 0
	stw 26,12(1)
.LVL4667:
	.loc 3 2259 0
	bge- 7,.L2768
	slwi 9,31,2
	li 11,0
.L2770:
	addi 31,31,1
.LVL4668:
	stwx 11,4,9
	.loc 4 7066 0
	addi 0,31,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,20(1)
	cmpw 7,31,0
	blt+ 7,.L2770
.L2768:
.LBE17654:
.LBE17653:
	.loc 3 2062 0
	lis 9,SIMDProcessor@ha
	lwz 6,0(28)
	lwz 3,SIMDProcessor@l(9)
	lwz 9,4(28)
	lwz 11,0(3)
	lwz 5,12(28)
	mullw 6,6,9
	lwz 0,164(11)
	mtctr 0
	bctrl
	.loc 3 2066 0
	li 0,0
	lis 9,_ZN6idMatX9tempIndexE@ha
.LBE17652:
.LBE17651:
	.loc 4 7077 0
	mr 3,28
	addi 4,1,8
.LBB17656:
.LBB17655:
	.loc 3 2066 0
	stw 0,_ZN6idMatX9tempIndexE@l(9)
.LBE17655:
.LBE17656:
	.loc 4 7077 0
	bl _ZN6idMatX19HessenbergReductionERS_
.LEHE113:
	.loc 4 7080 0
	mr 3,28
	addi 4,1,8
	mr 5,29
	mr 6,30
	bl _ZN6idMatX21HessenbergToRealSchurERS_R6idVecXS2_
	lwz 0,16(1)
	mr 31,3
.LVL4669:
	lwz 3,20(1)
.LBB17657:
.LBB17658:
.LBB17659:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L2771
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2778
	cmpwi 7,0,-1
	beq- 7,.L2771
.L2779:
.LEHB114:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.LEHE114:
.L2771:
.LBE17659:
.LBE17658:
.LBE17657:
.LBE17663:
	.loc 4 7081 0
	lwz 0,60(1)
	mr 3,31
	lwz 25,28(1)
.LVL4670:
	mtlr 0
	lwz 26,32(1)
.LVL4671:
	lwz 27,36(1)
.LVL4672:
	lwz 28,40(1)
.LVL4673:
	lwz 29,44(1)
.LVL4674:
	lwz 30,48(1)
.LVL4675:
	lwz 31,52(1)
	addi 1,1,56
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
	blr
.LVL4676:
.L2778:
.LCFI422:
	.cfi_restore_state
.LBB17664:
.LBB17662:
.LBB17661:
.LBB17660:
	.loc 3 2001 0
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L2771
	cmpwi 7,0,-1
	bne+ 7,.L2779
	b .L2771
.LVL4677:
.L2774:
	mr 31,3
.LBE17660:
.LBE17661:
.LBE17662:
	.loc 4 7080 0
	lwz 4,20(1)
	lwz 3,16(1)
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,31
.LEHB115:
	bl _Unwind_Resume
.LEHE115:
.LBE17664:
	.cfi_endproc
.LFE2654:
	.section	.gcc_except_table
.LLSDA2654:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2654-.LLSDACSB2654
.LLSDACSB2654:
	.uleb128 .LEHB113-.LFB2654
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L2774-.LFB2654
	.uleb128 0
	.uleb128 .LEHB114-.LFB2654
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB115-.LFB2654
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE2654:
	.section	".text"
	.size	_ZN6idMatX11Eigen_SolveER6idVecXS1_, .-_ZN6idMatX11Eigen_SolveER6idVecXS1_
	.align 2
	.globl _ZN6idMatX20Eigen_SortIncreasingER6idVecX
	.type	_ZN6idMatX20Eigen_SortIncreasingER6idVecX, @function
_ZN6idMatX20Eigen_SortIncreasingER6idVecX:
.LFB2655:
	.loc 4 7088 0
	.cfi_startproc
.LVL4678:
	stwu 1,-24(1)
.LCFI423:
	.cfi_def_cfa_offset 24
.LBB17665:
	.loc 4 7092 0
	li 6,0
	lwz 9,0(3)
.LBE17665:
	.loc 4 7088 0
	stw 31,20(1)
	addi 31,9,-1
	.cfi_offset 31, -4
.LVL4679:
	stw 30,16(1)
.LBB17670:
	.loc 4 7092 0
	cmpw 7,6,31
	bge- 7,.L2792
	.cfi_offset 30, -8
.L2786:
.LVL4680:
	.loc 4 7095 0
	addi 5,6,1
	.loc 4 8102 0
	lwz 8,8(4)
.LVL4681:
	.loc 4 7095 0
	cmpw 7,5,9
	.loc 4 7088 0
	slwi 0,6,2
	.loc 4 7094 0
	lwzx 12,8,0
.LVL4682:
	.loc 4 7095 0
	bge- 7,.L2782
.LVL4683:
.LBE17670:
	.loc 4 7094 0
	stw 12,8(1)
	.loc 4 7088 0
	subf 30,5,9
	mtctr 30
.LBB17671:
	slwi 11,5,2
.LBE17671:
	.loc 4 7094 0
	lfs 13,8(1)
	.loc 4 7088 0
	mr 10,5
	mr 7,6
.LVL4684:
.L2784:
.LBB17672:
	.loc 4 7096 0
	lfsx 0,8,11
	.loc 4 7095 0
	addi 11,11,4
	.loc 4 7096 0
	fcmpu 7,0,13
	bnl- 7,.L2783
.LVL4685:
	.loc 4 7098 0
	fmr 13,0
.LVL4686:
	.loc 4 7096 0
	mr 7,10
.LVL4687:
.L2783:
	.loc 4 7095 0
	addi 10,10,1
.LVL4688:
	bdnz .L2784
	.loc 4 7101 0
	cmpw 7,6,7
	beq- 7,.L2782
.LVL4689:
.LBB17666:
.LBB17667:
	.loc 2 1832 0
	slwi 10,7,2
.LVL4690:
	lwzx 9,8,10
	stwx 9,8,0
	.loc 2 1833 0
	lwz 9,8(4)
	stwx 12,9,10
.LVL4691:
.LBE17667:
.LBE17666:
.LBB17668:
.LBB17669:
	.loc 3 2397 0
	lwz 9,0(3)
	cmpwi 7,9,0
	addi 31,9,-1
	ble- 7,.L2782
	lwz 9,4(3)
	li 11,0
	b .L2785
.LVL4692:
.L2791:
	lwz 9,4(3)
.LVL4693:
.L2785:
	.loc 3 2398 0
	mullw 9,11,9
	lwz 8,12(3)
	.loc 3 2397 0
	addi 11,11,1
	.loc 3 2398 0
	slwi 9,9,2
	add 9,8,9
.LVL4694:
	.loc 3 2399 0
	lwzx 8,9,0
.LVL4695:
	.loc 3 2400 0
	lwzx 7,9,10
	stwx 7,9,0
	.loc 3 2401 0
	stwx 8,9,10
	.loc 3 2397 0
	lwz 9,0(3)
.LVL4696:
	cmpw 7,11,9
	blt+ 7,.L2791
	addi 31,9,-1
.LVL4697:
.L2782:
	.loc 4 7095 0
	mr 6,5
.LVL4698:
.LBE17669:
.LBE17668:
	.loc 4 7092 0
	cmpw 7,6,31
	blt+ 7,.L2786
.LVL4699:
.L2792:
.LBE17672:
	.loc 4 7106 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI424:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2655:
	.size	_ZN6idMatX20Eigen_SortIncreasingER6idVecX, .-_ZN6idMatX20Eigen_SortIncreasingER6idVecX
	.align 2
	.globl _ZN6idMatX20Eigen_SortDecreasingER6idVecX
	.type	_ZN6idMatX20Eigen_SortDecreasingER6idVecX, @function
_ZN6idMatX20Eigen_SortDecreasingER6idVecX:
.LFB2656:
	.loc 4 7113 0
	.cfi_startproc
.LVL4700:
	stwu 1,-24(1)
.LCFI425:
	.cfi_def_cfa_offset 24
.LBB17673:
	.loc 4 7117 0
	li 6,0
	lwz 9,0(3)
.LBE17673:
	.loc 4 7113 0
	stw 31,20(1)
	addi 31,9,-1
	.cfi_offset 31, -4
.LVL4701:
	stw 30,16(1)
.LBB17678:
	.loc 4 7117 0
	cmpw 7,6,31
	bge- 7,.L2805
	.cfi_offset 30, -8
.L2799:
.LVL4702:
	.loc 4 7120 0
	addi 5,6,1
	.loc 4 8102 0
	lwz 8,8(4)
.LVL4703:
	.loc 4 7120 0
	cmpw 7,5,9
	.loc 4 7113 0
	slwi 0,6,2
	.loc 4 7119 0
	lwzx 12,8,0
.LVL4704:
	.loc 4 7120 0
	bge- 7,.L2795
.LVL4705:
.LBE17678:
	.loc 4 7119 0
	stw 12,8(1)
	.loc 4 7113 0
	subf 30,5,9
	mtctr 30
.LBB17679:
	slwi 11,5,2
.LBE17679:
	.loc 4 7119 0
	lfs 13,8(1)
	.loc 4 7113 0
	mr 10,5
	mr 7,6
.LVL4706:
.L2797:
.LBB17680:
	.loc 4 7121 0
	lfsx 0,8,11
	.loc 4 7120 0
	addi 11,11,4
	.loc 4 7121 0
	fcmpu 7,0,13
	bng- 7,.L2796
	.loc 4 7123 0
	fmr 13,0
.LVL4707:
	.loc 4 7121 0
	mr 7,10
.L2796:
.LVL4708:
	.loc 4 7120 0
	addi 10,10,1
.LVL4709:
	bdnz .L2797
	.loc 4 7126 0
	cmpw 7,6,7
	beq- 7,.L2795
.LVL4710:
.LBB17674:
.LBB17675:
	.loc 2 1832 0
	slwi 10,7,2
.LVL4711:
	lwzx 9,8,10
	stwx 9,8,0
	.loc 2 1833 0
	lwz 9,8(4)
	stwx 12,9,10
.LVL4712:
.LBE17675:
.LBE17674:
.LBB17676:
.LBB17677:
	.loc 3 2397 0
	lwz 9,0(3)
	cmpwi 7,9,0
	addi 31,9,-1
	ble- 7,.L2795
	lwz 9,4(3)
	li 11,0
	b .L2798
.LVL4713:
.L2804:
	lwz 9,4(3)
.LVL4714:
.L2798:
	.loc 3 2398 0
	mullw 9,11,9
	lwz 8,12(3)
	.loc 3 2397 0
	addi 11,11,1
	.loc 3 2398 0
	slwi 9,9,2
	add 9,8,9
.LVL4715:
	.loc 3 2399 0
	lwzx 8,9,0
.LVL4716:
	.loc 3 2400 0
	lwzx 7,9,10
	stwx 7,9,0
	.loc 3 2401 0
	stwx 8,9,10
	.loc 3 2397 0
	lwz 9,0(3)
.LVL4717:
	cmpw 7,11,9
	blt+ 7,.L2804
	addi 31,9,-1
.LVL4718:
.L2795:
	.loc 4 7120 0
	mr 6,5
.LVL4719:
.LBE17677:
.LBE17676:
	.loc 4 7117 0
	cmpw 7,6,31
	blt+ 7,.L2799
.LVL4720:
.L2805:
.LBE17680:
	.loc 4 7131 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI426:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE2656:
	.size	_ZN6idMatX20Eigen_SortDecreasingER6idVecX, .-_ZN6idMatX20Eigen_SortDecreasingER6idVecX
	.align 2
	.globl _ZNK6idMatX18DeterminantGenericEv
	.type	_ZNK6idMatX18DeterminantGenericEv, @function
_ZNK6idMatX18DeterminantGenericEv:
.LFB2657:
	.loc 4 7138 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2657
.LVL4721:
	mflr 0
	stwu 1,-80(1)
.LCFI427:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	stw 25,52(1)
	stw 29,68(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 25, -28
	stw 31,76(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI428:
	.cfi_def_cfa_register 31
.LVL4722:
	stw 0,84(1)
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 30,72(1)
.LBB17695:
	.loc 4 7143 0
	lwz 8,0(1)
	lwz 0,0(3)
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 4 7144 0
	lwz 11,4(3)
	.loc 4 7143 0
	slwi 10,0,2
.LBB17696:
.LBB17697:
	.loc 3 2286 0
	stw 0,12(31)
.LBE17697:
.LBE17696:
	.loc 4 7144 0
	mullw 9,0,11
	.loc 4 7143 0
	addi 10,10,45
	rlwinm 10,10,0,0,27
.LBB17704:
.LBB17698:
	.loc 3 2287 0
	stw 11,16(31)
.LBE17698:
.LBE17704:
	.loc 4 7143 0
	neg 10,10
	stwux 8,1,10
.LBB17705:
.LBB17699:
	.loc 3 2288 0
	li 0,-1
.LBE17699:
.LBE17705:
	.loc 4 7144 0
	addi 8,9,3
	rlwinm 8,8,0,0,29
	lwz 7,0(1)
	slwi 10,8,2
	.loc 4 7143 0
	addi 25,1,23
	.loc 4 7144 0
	subfic 10,10,-32
.LBB17706:
.LBB17700:
	.loc 3 2288 0
	cmpw 7,9,8
.LBE17700:
.LBE17706:
	.loc 4 7144 0
	stwux 7,1,10
.LBB17707:
.LBB17701:
	.loc 3 2285 0
	li 10,-1
.LBE17701:
.LBE17707:
	.loc 4 7143 0
	rlwinm 25,25,0,0,27
.LBB17708:
.LBB17702:
	.loc 3 2285 0
	stw 10,20(31)
.LBE17702:
.LBE17708:
	.loc 4 7144 0
	addi 4,1,23
.LVL4723:
	rlwinm 4,4,0,0,27
.LVL4724:
.LBB17709:
.LBB17703:
	.loc 3 2284 0
	stw 4,24(31)
	.loc 3 2288 0
	bge- 7,.L2808
	slwi 11,9,2
	li 10,0
	b .L2810
.L2823:
	lwz 4,24(31)
.L2810:
	addi 9,9,1
.LVL4725:
	stwx 10,4,11
	.loc 4 7138 0
	addi 0,9,3
	.loc 3 2288 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2823
	lwz 0,20(31)
	lwz 4,24(31)
.L2808:
.LVL4726:
.LBE17703:
.LBE17709:
.LBB17710:
.LBB17711:
	.loc 3 2060 0
	lwz 26,0(29)
	lwz 27,4(29)
.LVL4727:
.LBB17712:
.LBB17713:
	.loc 3 2249 0
	mullw 30,26,27
	addi 28,30,3
	rlwinm 28,28,0,0,29
.LVL4728:
	.loc 3 2250 0
	cmpw 7,28,0
	ble- 7,.L2811
	cmpwi 7,0,-1
	beq- 7,.L2811
	.loc 3 2251 0
	cmpwi 7,4,0
	beq- 7,.L2812
	.loc 3 2252 0
	mr 3,4
.LVL4729:
.LEHB116:
	bl _Z10Mem_Free16Pv
.LVL4730:
.L2812:
	.loc 3 2254 0
	slwi 3,28,2
	bl _Z11Mem_Alloc16i
	stw 3,24(31)
	mr 4,3
	.loc 3 2255 0
	stw 28,20(31)
.L2811:
	.loc 3 2259 0
	cmpw 7,30,28
	.loc 3 2257 0
	stw 26,12(31)
	.loc 3 2258 0
	stw 27,16(31)
.LVL4731:
	.loc 3 2259 0
	bge- 7,.L2813
	slwi 9,30,2
	li 11,0
.L2815:
	addi 30,30,1
.LVL4732:
	stwx 11,4,9
	.loc 4 7138 0
	addi 0,30,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,24(31)
	cmpw 7,30,0
	blt+ 7,.L2815
.L2813:
.LBE17713:
.LBE17712:
	.loc 3 2062 0
	lis 9,SIMDProcessor@ha
	lwz 6,0(29)
	lwz 3,SIMDProcessor@l(9)
	lwz 9,4(29)
	lwz 11,0(3)
	lwz 5,12(29)
	mullw 6,6,9
	lwz 0,164(11)
	mtctr 0
	bctrl
.LEHE116:
	.loc 3 2066 0
	lis 9,_ZN6idMatX9tempIndexE@ha
	li 0,0
.LBE17711:
.LBE17710:
	.loc 4 7147 0
	addi 3,31,12
	mr 4,25
	addi 5,31,8
.LBB17715:
.LBB17714:
	.loc 3 2066 0
	stw 0,_ZN6idMatX9tempIndexE@l(9)
.LBE17714:
.LBE17715:
	.loc 4 7147 0
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7148 0
	lis 9,.LC9@ha
	.loc 4 7147 0
	cmpwi 7,3,0
	.loc 4 7148 0
	lfs 1,.LC9@l(9)
	.loc 4 7147 0
	beq- 7,.L2816
.LVL4733:
	.loc 4 7151 0
	lfs 1,8(31)
.L2816:
	lwz 3,24(31)
	lwz 0,20(31)
.LBB17716:
.LBB17717:
.LBB17718:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L2817
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2824
	cmpwi 7,0,-1
	beq- 7,.L2817
.L2825:
	.loc 3 2002 0
	stfd 1,40(31)
.LEHB117:
	bl _Z10Mem_Free16Pv
.LEHE117:
	lfd 1,40(31)
.L2817:
.LBE17718:
.LBE17717:
.LBE17716:
.LBE17695:
	.loc 4 7152 0
	addi 11,31,80
	lwz 0,4(11)
	lwz 25,-28(11)
.LVL4734:
	mtlr 0
	lwz 26,-24(11)
.LVL4735:
	lwz 27,-20(11)
.LVL4736:
	lwz 28,-16(11)
.LVL4737:
	lwz 29,-12(11)
.LVL4738:
	lwz 30,-8(11)
.LVL4739:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI429:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI430:
	.cfi_def_cfa_register 1
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
.LVL4740:
	blr
.LVL4741:
.L2824:
.LCFI431:
	.cfi_restore_state
.LBB17722:
.LBB17721:
.LBB17720:
.LBB17719:
	.loc 3 2001 0
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L2817
	cmpwi 7,0,-1
	bne+ 7,.L2825
	b .L2817
.LVL4742:
.L2822:
	mr 30,3
.LBE17719:
.LBE17720:
.LBE17721:
	.loc 4 7151 0
	lwz 4,24(31)
	lwz 3,20(31)
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,30
.LEHB118:
	bl _Unwind_Resume
.LEHE118:
.LBE17722:
	.cfi_endproc
.LFE2657:
	.section	.gcc_except_table
.LLSDA2657:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2657-.LLSDACSB2657
.LLSDACSB2657:
	.uleb128 .LEHB116-.LFB2657
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L2822-.LFB2657
	.uleb128 0
	.uleb128 .LEHB117-.LFB2657
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB118-.LFB2657
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
.LLSDACSE2657:
	.section	".text"
	.size	_ZNK6idMatX18DeterminantGenericEv, .-_ZNK6idMatX18DeterminantGenericEv
	.align 2
	.globl _ZN6idMatX18InverseSelfGenericEv
	.type	_ZN6idMatX18InverseSelfGenericEv, @function
_ZN6idMatX18InverseSelfGenericEv:
.LFB2658:
	.loc 4 7159 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2658
.LVL4743:
	mflr 0
	stwu 1,-96(1)
.LCFI432:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	stw 24,64(1)
	stw 0,100(1)
	stw 30,88(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.cfi_offset 24, -32
	stw 31,92(1)
	mr 31,1
	.cfi_offset 31, -4
.LCFI433:
	.cfi_def_cfa_register 31
.LVL4744:
	stw 23,60(1)
	stw 25,68(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 29,84(1)
.LBB17763:
	.loc 4 7164 0
	lwz 11,0(3)
	.loc 4 7165 0
	lwz 10,4(3)
	.loc 4 7164 0
	slwi 8,11,2
.LBB17764:
.LBB17765:
	.loc 3 2286 0
	stw 11,32(31)
.LBE17765:
.LBE17764:
	.loc 4 7165 0
	mullw 9,11,10
	.loc 4 7164 0
	addi 0,8,45
	rlwinm 0,0,0,0,27
	lwz 8,0(1)
	neg 0,0
.LBB17769:
.LBB17766:
	.loc 3 2287 0
	stw 10,36(31)
.LBE17766:
.LBE17769:
	.loc 4 7164 0
	stwux 8,1,0
	.loc 4 7165 0
	addi 8,9,3
	rlwinm 8,8,0,0,29
	lwz 7,0(1)
	slwi 0,8,2
	.loc 4 7164 0
	addi 24,1,23
	.loc 4 7165 0
	subfic 0,0,-32
.LBB17770:
.LBB17767:
	.loc 3 2288 0
	cmpw 7,9,8
.LBE17767:
.LBE17770:
	.loc 4 7165 0
	stwux 7,1,0
.LBB17771:
.LBB17772:
	.loc 3 1995 0
	li 0,0
.LVL4745:
.LBE17772:
.LBE17771:
.LBB17773:
.LBB17774:
	.loc 2 1507 0
	stw 0,24(31)
.LBE17774:
.LBE17773:
	.loc 4 7164 0
	rlwinm 24,24,0,0,27
	.loc 4 7165 0
	addi 4,1,23
.LBB17777:
.LBB17775:
	.loc 2 1507 0
	stw 0,20(31)
.LBE17775:
.LBE17777:
	.loc 4 7165 0
	rlwinm 4,4,0,0,27
.LBB17778:
.LBB17776:
	.loc 2 1508 0
	stw 0,28(31)
.LVL4746:
.LBE17776:
.LBE17778:
.LBB17779:
.LBB17780:
	.loc 2 1507 0
	stw 0,12(31)
	stw 0,8(31)
	.loc 2 1508 0
	stw 0,16(31)
.LBE17780:
.LBE17779:
.LBB17781:
.LBB17768:
	.loc 3 2285 0
	li 0,-1
	.loc 3 2284 0
	stw 4,44(31)
	.loc 3 2285 0
	stw 0,40(31)
	.loc 3 2288 0
	bge- 7,.L2828
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 23, -36
.LVL4747:
	slwi 11,9,2
	li 10,0
	b .L2830
.LVL4748:
.L2865:
	lwz 4,44(31)
.L2830:
	addi 9,9,1
.LVL4749:
	stwx 10,4,11
	.loc 4 7159 0
	addi 0,9,3
	.loc 3 2288 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L2865
	lwz 0,40(31)
	lwz 4,44(31)
.L2828:
.LVL4750:
.LBE17768:
.LBE17781:
.LBB17782:
.LBB17783:
	.loc 3 2060 0
	lwz 25,0(30)
	lwz 26,4(30)
.LVL4751:
.LBB17784:
.LBB17785:
	.loc 3 2249 0
	mullw 29,25,26
	addi 27,29,3
	rlwinm 27,27,0,0,29
.LVL4752:
	.loc 3 2250 0
	cmpw 7,27,0
	ble- 7,.L2831
	cmpwi 7,0,-1
	beq- 7,.L2831
	.loc 3 2251 0
	cmpwi 7,4,0
	beq- 7,.L2832
	.loc 3 2252 0
	mr 3,4
.LVL4753:
	addi 28,31,32
.LEHB119:
	bl _Z10Mem_Free16Pv
.LVL4754:
.L2832:
	.loc 3 2254 0
	slwi 3,27,2
	addi 28,31,32
	bl _Z11Mem_Alloc16i
	stw 3,44(31)
	mr 4,3
	.loc 3 2255 0
	stw 27,40(31)
.L2831:
	.loc 3 2259 0
	cmpw 7,29,27
	.loc 3 2257 0
	stw 25,32(31)
	.loc 3 2258 0
	stw 26,36(31)
.LVL4755:
	.loc 3 2259 0
	bge- 7,.L2833
	slwi 9,29,2
	li 11,0
.L2835:
	addi 29,29,1
.LVL4756:
	stwx 11,4,9
	.loc 4 7159 0
	addi 0,29,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,44(31)
	cmpw 7,29,0
	blt+ 7,.L2835
.L2833:
.LBE17785:
.LBE17784:
	.loc 3 2062 0
	lis 27,SIMDProcessor@ha
.LVL4757:
	lwz 6,0(30)
	lwz 3,SIMDProcessor@l(27)
	addi 28,31,32
	lwz 9,4(30)
	lwz 11,0(3)
	lwz 5,12(30)
	mullw 6,6,9
	lwz 0,164(11)
	mtctr 0
	bctrl
	.loc 3 2066 0
	li 0,0
	lis 9,_ZN6idMatX9tempIndexE@ha
.LBE17783:
.LBE17782:
	.loc 4 7168 0
	mr 3,28
	mr 4,24
	li 5,0
.LBB17787:
.LBB17786:
	.loc 3 2066 0
	stw 0,_ZN6idMatX9tempIndexE@l(9)
.LBE17786:
.LBE17787:
	.loc 4 7168 0
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7169 0
	li 26,0
.LVL4758:
	.loc 4 7168 0
	cmpwi 7,3,0
	addi 29,31,20
.LVL4759:
	beq- 7,.L2836
	.loc 4 7172 0
	lwz 29,0(30)
.LBB17788:
.LBB17789:
	.loc 2 1757 0
	lwz 3,28(31)
.LBE17789:
.LBE17788:
	.loc 4 7172 0
	addi 26,29,3
	lwz 9,0(1)
	rlwinm 26,26,0,0,29
.LBB17792:
.LBB17790:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE17790:
.LBE17792:
	.loc 4 7172 0
	slwi 0,26,2
	subfic 0,0,-32
	stwux 9,1,0
.LVL4760:
	addi 25,1,23
.LVL4761:
	rlwinm 25,25,0,0,27
.LVL4762:
.LBB17793:
.LBB17791:
	.loc 2 1757 0
	beq- 7,.L2837
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	blt- 7,.L2838
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2837
.L2838:
	lwz 0,24(31)
	cmpwi 7,0,-1
	beq- 7,.L2837
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL4763:
.L2837:
	.loc 2 1764 0
	cmpw 7,29,26
	.loc 2 1763 0
	li 0,-1
	.loc 2 1761 0
	stw 25,28(31)
	.loc 2 1762 0
	stw 29,20(31)
	.loc 2 1763 0
	stw 0,24(31)
.LVL4764:
	.loc 2 1764 0
	bge- 7,.L2839
	slwi 9,29,2
	li 11,0
	b .L2840
.LVL4765:
.L2866:
	lwz 25,28(31)
.L2840:
	addi 29,29,1
.LVL4766:
	stwx 11,25,9
	.loc 4 7159 0
	addi 0,29,3
	.loc 2 1764 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,29,0
	blt+ 7,.L2866
.L2839:
.LBE17791:
.LBE17793:
	.loc 4 7173 0
	lwz 29,0(30)
.LVL4767:
.LBB17794:
.LBB17795:
	.loc 2 1757 0
	lwz 3,16(31)
.LBE17795:
.LBE17794:
	.loc 4 7173 0
	addi 26,29,3
	lwz 9,0(1)
	rlwinm 26,26,0,0,29
.LBB17799:
.LBB17796:
	.loc 2 1757 0
	cmpwi 7,3,0
.LBE17796:
.LBE17799:
	.loc 4 7173 0
	slwi 0,26,2
	subfic 0,0,-32
	stwux 9,1,0
	addi 25,1,23
	rlwinm 25,25,0,0,27
.LVL4768:
.LBB17800:
.LBB17797:
	.loc 2 1757 0
	beq- 7,.L2841
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	blt- 7,.L2842
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2841
.L2842:
	lwz 0,12(31)
	cmpwi 7,0,-1
	beq- 7,.L2841
	.loc 2 1758 0
	bl _Z10Mem_Free16Pv
.LVL4769:
.L2841:
	.loc 2 1764 0
	cmpw 7,29,26
	.loc 2 1763 0
	li 0,-1
.LBE17797:
.LBE17800:
	.loc 4 7173 0
	mr 4,25
.LBB17801:
.LBB17798:
	.loc 2 1761 0
	stw 25,16(31)
	.loc 2 1762 0
	stw 29,8(31)
	.loc 2 1763 0
	stw 0,12(31)
.LVL4770:
	.loc 2 1764 0
	bge- 7,.L2843
	slwi 9,29,2
	li 11,0
	b .L2845
.LVL4771:
.L2867:
	lwz 4,16(31)
.L2845:
	addi 29,29,1
.LVL4772:
	stwx 11,4,9
	.loc 4 7159 0
	addi 0,29,3
	.loc 2 1764 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,29,0
	blt+ 7,.L2867
	lwz 29,8(31)
.LVL4773:
	lwz 4,16(31)
.L2843:
.LBE17798:
.LBE17801:
.LBB17802:
.LBB17803:
	.loc 2 1769 0
	lwz 3,SIMDProcessor@l(27)
	mr 5,29
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LEHE119:
.LVL4774:
.LBE17803:
.LBE17802:
	.loc 4 7176 0 discriminator 1
	lwz 0,0(30)
	.loc 4 7185 0 discriminator 1
	li 26,1
	addi 29,31,20
	.loc 4 7176 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L2836
	lis 9,.LC1@ha
	.loc 4 7176 0 is_stmt 0
	li 26,0
	.loc 4 7178 0 is_stmt 1
	lwz 23,.LC1@l(9)
	.loc 4 7183 0
	li 25,0
.LVL4775:
.L2848:
	.loc 4 7178 0
	lwz 9,16(31)
	.loc 4 7159 0
	slwi 27,26,2
	.loc 4 7179 0
	mr 3,28
	mr 4,29
	.loc 4 7178 0
	stwx 23,9,27
	.loc 4 7179 0
	addi 5,31,8
	mr 6,24
	bl _ZNK6idMatX8LU_SolveER6idVecXRKS0_PKi
.LVL4776:
	.loc 4 7180 0
	lwz 0,0(30)
	cmpwi 7,0,0
	ble- 7,.L2846
	lwz 11,4(30)
	li 9,0
	b .L2847
.LVL4777:
.L2868:
	lwz 11,4(30)
.LVL4778:
.L2847:
.LBB17804:
.LBB17805:
	.loc 3 2056 0 discriminator 2
	mullw 11,9,11
.LBE17805:
.LBE17804:
	.loc 4 7181 0 discriminator 2
	lwz 8,8(29)
	slwi 0,9,2
	lwz 10,12(30)
	lwzx 0,8,0
	.loc 4 7180 0 discriminator 2
	addi 9,9,1
.LVL4779:
	.loc 4 7181 0 discriminator 2
	slwi 11,11,2
	add 11,10,11
	stwx 0,11,27
	.loc 4 7180 0 discriminator 2
	lwz 0,0(30)
	cmpw 7,0,9
	bgt+ 7,.L2868
.LVL4780:
.L2846:
	.loc 4 7183 0
	lwz 9,16(31)
	.loc 4 7176 0
	addi 26,26,1
.LVL4781:
	.loc 4 7183 0
	stwx 25,9,27
	.loc 4 7176 0
	lwz 0,0(30)
	cmpw 7,0,26
	bgt+ 7,.L2848
.LVL4782:
	.loc 4 7185 0
	li 26,1
.LVL4783:
.L2836:
	lwz 3,16(31)
	lwz 0,12(31)
.LBB17806:
.LBB17807:
.LBB17808:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L2849
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2869
	cmpwi 7,0,-1
	beq- 7,.L2849
.L2874:
.LEHB120:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE120:
.L2849:
	.loc 4 7185 0
	lwz 3,8(29)
	lwz 0,4(29)
.LBE17808:
.LBE17807:
.LBE17806:
.LBB17811:
.LBB17812:
.LBB17813:
	.loc 2 1525 0
	cmpwi 7,3,0
	beq- 7,.L2851
	lis 9,_ZN6idVecX7tempPtrE@ha
	lwz 9,_ZN6idVecX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2870
	cmpwi 7,0,-1
	beq- 7,.L2851
.L2873:
.LEHB121:
	.loc 2 1526 0
	bl _Z10Mem_Free16Pv
.LEHE121:
.L2851:
	.loc 4 7185 0
	lwz 3,12(28)
	lwz 0,8(28)
.LBE17813:
.LBE17812:
.LBE17811:
.LBB17816:
.LBB17817:
.LBB17818:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L2853
	lis 9,_ZN6idMatX7tempPtrE@ha
	lwz 9,_ZN6idMatX7tempPtrE@l(9)
	cmplw 7,3,9
	bge- 7,.L2871
	cmpwi 7,0,-1
	beq- 7,.L2853
.L2872:
.LEHB122:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.LEHE122:
.L2853:
.LBE17818:
.LBE17817:
.LBE17816:
.LBE17763:
	.loc 4 7186 0
	addi 11,31,96
	mr 3,26
	lwz 0,4(11)
	lwz 23,-36(11)
	mtlr 0
	lwz 24,-32(11)
.LVL4784:
	lwz 25,-28(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
	lwz 28,-16(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
.LVL4785:
	lwz 31,-4(11)
	.cfi_remember_state
.LCFI434:
	.cfi_def_cfa 11, 0
	mr 1,11
.LCFI435:
	.cfi_def_cfa_register 1
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
.LVL4786:
.L2871:
.LCFI436:
	.cfi_restore_state
.LBB17824:
.LBB17821:
.LBB17820:
.LBB17819:
	.loc 3 2001 0
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L2853
	cmpwi 7,0,-1
	bne+ 7,.L2872
	b .L2853
.L2870:
.LBE17819:
.LBE17820:
.LBE17821:
.LBB17822:
.LBB17815:
.LBB17814:
	.loc 2 1525 0
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2851
	cmpwi 7,0,-1
	bne+ 7,.L2873
	b .L2851
.L2869:
.LBE17814:
.LBE17815:
.LBE17822:
.LBB17823:
.LBB17810:
.LBB17809:
	addi 9,9,4096
	cmplw 7,3,9
	blt- 7,.L2849
	cmpwi 7,0,-1
	bne+ 7,.L2874
	b .L2849
.L2862:
	mr 30,3
.LVL4787:
.L2856:
.LBE17809:
.LBE17810:
.LBE17823:
	.loc 4 7185 0
	lwz 3,4(29)
	lwz 4,8(29)
	bl _ZN6idVecXD2Ev.isra.6
.L2857:
	lwz 3,8(28)
	lwz 4,12(28)
	bl _ZN6idMatXD2Ev.isra.27
	mr 3,30
.LEHB123:
	bl _Unwind_Resume
.LEHE123:
.LVL4788:
.L2861:
	mr 30,3
.LVL4789:
	lwz 4,16(31)
	lwz 3,12(31)
	addi 29,31,20
	bl _ZN6idVecXD2Ev.isra.6
	b .L2856
.LVL4790:
.L2863:
	mr 30,3
.LVL4791:
	b .L2857
.LBE17824:
	.cfi_endproc
.LFE2658:
	.section	.gcc_except_table
.LLSDA2658:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2658-.LLSDACSB2658
.LLSDACSB2658:
	.uleb128 .LEHB119-.LFB2658
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L2861-.LFB2658
	.uleb128 0
	.uleb128 .LEHB120-.LFB2658
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L2862-.LFB2658
	.uleb128 0
	.uleb128 .LEHB121-.LFB2658
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L2863-.LFB2658
	.uleb128 0
	.uleb128 .LEHB122-.LFB2658
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB2658
	.uleb128 .LEHE123-.LEHB123
	.uleb128 0
	.uleb128 0
.LLSDACSE2658:
	.section	".text"
	.size	_ZN6idMatX18InverseSelfGenericEv, .-_ZN6idMatX18InverseSelfGenericEv
	.align 2
	.globl _ZN6idMatX4TestEv
	.type	_ZN6idMatX4TestEv, @function
_ZN6idMatX4TestEv:
.LFB2659:
	.loc 4 7193 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA2659
	mflr 0
	stwu 1,-968(1)
.LCFI437:
	.cfi_def_cfa_offset 968
	.cfi_register 65, 0
.LBB18678:
.LBB18679:
.LBB18680:
.LBB18681:
.LBB18682:
	.loc 3 2254 0
	li 3,144
.LBE18682:
.LBE18681:
.LBE18680:
.LBE18679:
.LBE18678:
	.loc 4 7193 0
	stw 31,956(1)
	mr 31,1
	.cfi_offset 31, -12
.LCFI438:
	.cfi_def_cfa_register 31
.LVL4792:
	stw 0,972(1)
.LBB20234:
.LBB18714:
.LBB18715:
	.loc 3 1995 0
	li 0,0
	.cfi_offset 65, 4
.LBE18715:
.LBE18714:
.LBE20234:
	.loc 4 7193 0
	stw 19,908(1)
	addi 19,31,32
	.cfi_offset 19, -60
	stw 20,912(1)
	addi 20,31,548
	.cfi_offset 20, -56
	stw 21,916(1)
	addi 21,31,516
	.cfi_offset 21, -52
	stw 22,920(1)
	addi 22,31,564
	.cfi_offset 22, -48
	stw 23,924(1)
	addi 23,31,532
	.cfi_offset 23, -44
	stw 24,928(1)
	addi 24,31,580
	.cfi_offset 24, -40
	stw 25,932(1)
	addi 25,31,20
	.cfi_offset 25, -36
	stw 26,936(1)
	addi 26,31,44
	.cfi_offset 26, -32
	stw 27,940(1)
	addi 27,31,596
	.cfi_offset 27, -28
	stw 28,944(1)
	addi 28,31,612
	.cfi_offset 28, -24
	stw 29,948(1)
	addi 29,31,56
	.cfi_offset 29, -20
	stw 30,952(1)
	addi 30,31,628
	.cfi_offset 30, -16
	stfd 31,960(1)
	stw 14,888(1)
	stw 15,892(1)
	stw 16,896(1)
	stw 17,900(1)
	stw 18,904(1)
.LBB20235:
.LBB18717:
.LBB18716:
	.loc 3 1995 0
	stw 0,636(31)
	stw 0,632(31)
	stw 0,628(31)
	.loc 3 1996 0
	stw 0,640(31)
.LVL4793:
.LBE18716:
.LBE18717:
.LBB18718:
.LBB18719:
	.loc 3 1995 0
	stw 0,620(31)
	stw 0,616(31)
	stw 0,612(31)
	.loc 3 1996 0
	stw 0,624(31)
.LVL4794:
.LBE18719:
.LBE18718:
.LBB18720:
.LBB18721:
	.loc 3 1995 0
	stw 0,604(31)
	stw 0,600(31)
	stw 0,596(31)
	.loc 3 1996 0
	stw 0,608(31)
.LVL4795:
.LBE18721:
.LBE18720:
.LBB18722:
.LBB18723:
	.loc 3 1995 0
	stw 0,588(31)
	stw 0,584(31)
	stw 0,580(31)
	.loc 3 1996 0
	stw 0,592(31)
.LVL4796:
.LBE18723:
.LBE18722:
.LBB18724:
.LBB18725:
	.loc 3 1995 0
	stw 0,572(31)
	stw 0,568(31)
	stw 0,564(31)
	.loc 3 1996 0
	stw 0,576(31)
.LVL4797:
.LBE18725:
.LBE18724:
.LBB18726:
.LBB18727:
	.loc 3 1995 0
	stw 0,556(31)
	stw 0,552(31)
	stw 0,548(31)
	.loc 3 1996 0
	stw 0,560(31)
.LVL4798:
.LBE18727:
.LBE18726:
.LBB18728:
.LBB18729:
	.loc 3 1995 0
	stw 0,540(31)
	stw 0,536(31)
	stw 0,532(31)
	.loc 3 1996 0
	stw 0,544(31)
.LVL4799:
.LBE18729:
.LBE18728:
.LBB18730:
.LBB18731:
	.loc 3 1995 0
	stw 0,524(31)
	stw 0,520(31)
	stw 0,516(31)
	.loc 3 1996 0
	stw 0,528(31)
.LVL4800:
.LBE18731:
.LBE18730:
.LBB18732:
.LBB18733:
	.loc 2 1507 0
	stw 0,60(31)
	stw 0,56(31)
	.loc 2 1508 0
	stw 0,64(31)
.LVL4801:
.LBE18733:
.LBE18732:
.LBB18734:
.LBB18735:
	.loc 2 1507 0
	stw 0,48(31)
	stw 0,44(31)
	.loc 2 1508 0
	stw 0,52(31)
.LVL4802:
.LBE18735:
.LBE18734:
.LBB18736:
.LBB18737:
	.loc 2 1507 0
	stw 0,36(31)
	stw 0,32(31)
	.loc 2 1508 0
	stw 0,40(31)
.LVL4803:
.LBE18737:
.LBE18736:
.LBB18738:
.LBB18739:
	.loc 2 1507 0
	stw 0,24(31)
	stw 0,20(31)
	.loc 2 1508 0
	stw 0,28(31)
.LVL4804:
.LBE18739:
.LBE18738:
.LBB18740:
.LBB18741:
	.loc 2 1507 0
	stw 0,12(31)
	stw 0,8(31)
	.loc 2 1508 0
	stw 0,16(31)
.LVL4805:
.LEHB124:
.LBE18741:
.LBE18740:
.LBB18742:
.LBB18711:
.LBB18687:
.LBB18683:
	.loc 3 2254 0
	.cfi_offset 18, -64
	.cfi_offset 17, -68
	.cfi_offset 16, -72
	.cfi_offset 15, -76
	.cfi_offset 14, -80
	.cfi_offset 63, -8
	bl _Z11Mem_Alloc16i
.LEHE124:
.LBE18683:
.LBE18687:
.LBB18688:
.LBB18689:
	.file 9 "d:/Data/Nintendo/DoomGX/src/idlib/math/../../idlib/math/Random.h"
	.loc 9 83 0
	lis 5,.LC18@ha
.LBE18689:
.LBE18688:
	.loc 3 2354 0
	lis 7,.LC19@ha
.LBB18703:
.LBB18684:
	.loc 3 2257 0
	li 0,6
	.loc 3 2255 0
	li 9,36
.LBE18684:
.LBE18703:
.LBB18704:
.LBB18698:
	.loc 9 83 0
	la 5,.LC18@l(5)
.LBE18698:
.LBE18704:
	.loc 3 2354 0
	la 7,.LC19@l(7)
.LBB18705:
.LBB18699:
.LBB18690:
.LBB18691:
	.loc 9 71 0
	lis 8,0x1
.LBE18691:
.LBE18690:
.LBE18699:
.LBE18705:
	.loc 3 2354 0
	lis 11,.LC9@ha
	li 29,36
.LVL4806:
.LBB18706:
.LBB18685:
	.loc 3 2255 0
	stw 9,636(31)
	.loc 3 2257 0
	stw 0,628(31)
	.loc 3 2258 0
	li 9,0
	stw 0,632(31)
.LVL4807:
.LBE18685:
.LBE18706:
.LBB18707:
.LBB18700:
.LBB18695:
.LBB18692:
	.loc 9 71 0
	ori 8,8,3533
.LBE18692:
.LBE18695:
.LBE18700:
.LBE18707:
.LBB18708:
.LBB18686:
	.loc 3 2254 0
	stw 3,640(31)
	.loc 9 59 0
	li 0,0
.LBE18686:
.LBE18708:
.LBB18709:
.LBB18701:
	.loc 9 83 0
	lfs 11,0(5)
	lis 10,0x4330
.LBE18701:
.LBE18709:
	.loc 3 2354 0
	lfs 12,0(7)
	mtctr 29
	lfs 13,.LC9@l(11)
	b .L2877
.LVL4808:
.L3709:
	.loc 3 2353 0
	lwz 3,640(31)
.LVL4809:
.L2877:
.LBB18710:
.LBB18702:
.LBB18696:
.LBB18693:
	.loc 9 71 0
	mullw 11,0,8
.LBE18693:
.LBE18696:
	.loc 9 83 0
	stw 10,680(31)
.LBB18697:
.LBB18694:
	.loc 9 71 0
	addi 0,11,1
.LVL4810:
	.loc 9 72 0
	rlwinm 11,0,0,17,31
.LBE18694:
.LBE18697:
	.loc 9 83 0
	xoris 11,11,0x8000
	stw 11,684(31)
	lfd 0,680(31)
	fsub 0,0,11
	frsp 0,0
.LBE18702:
.LBE18710:
	.loc 3 2354 0
	fmadds 0,0,12,13
	stfsx 0,3,9
	addi 9,9,4
	.loc 3 2353 0
	bdnz .L3709
	lwz 0,632(31)
.LVL4811:
.LBE18711:
.LBE18742:
.LBB18743:
.LBB18744:
.LBB18745:
.LBB18746:
	.loc 3 2267 0
	lis 14,_ZN6idMatX9tempIndexE@ha
.LBE18746:
.LBE18745:
.LBE18744:
.LBE18743:
.LBB18756:
.LBB18712:
	.loc 3 2353 0
	lwz 8,628(31)
.LBE18712:
.LBE18756:
.LBB18757:
.LBB18753:
.LBB18750:
.LBB18747:
	.loc 3 2267 0
	lwz 7,_ZN6idMatX9tempIndexE@l(14)
.LBE18747:
.LBE18750:
.LBE18753:
.LBE18757:
.LBB18758:
.LBB18713:
	.loc 3 2353 0
	mullw 9,0,8
	addi 11,9,3
	rlwinm 11,11,0,0,29
.LVL4812:
.LBE18713:
.LBE18758:
.LBB18759:
.LBB18754:
.LBB18751:
.LBB18748:
	.loc 3 2267 0
	add 10,7,11
	slwi 7,7,2
	cmpwi 7,10,1024
	bgt- 7,.L3710
.L2878:
	.loc 3 2270 0
	lis 15,_ZN6idMatX7tempPtrE@ha
	.loc 3 2275 0
	cmpw 7,9,11
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2275 0
	mr 10,8
	.loc 3 2270 0
	add 7,6,7
	.loc 3 2272 0
	stw 11,508(31)
	.loc 3 2270 0
	stw 7,512(31)
	.loc 3 2273 0
	stw 0,500(31)
	.loc 3 2274 0
	stw 8,504(31)
.LVL4813:
	.loc 3 2275 0
	bge- 7,.L2879
	slwi 11,9,2
.LVL4814:
	li 10,0
	b .L2881
.L3711:
	lwz 7,512(31)
.L2881:
	addi 9,9,1
.LVL4815:
	stwx 10,7,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3711
	lwz 8,628(31)
	lwz 10,504(31)
.L2879:
.LVL4816:
.LBE18748:
.LBE18751:
	.loc 3 2568 0
	cmpwi 7,8,0
	ble- 7,.L2883
	lwz 0,632(31)
	li 11,0
.LVL4817:
.L2882:
	.loc 3 2569 0
	cmpwi 7,0,0
	li 9,0
	ble- 7,.L2886
.LVL4818:
.L3635:
	.loc 3 2570 0
	mullw 0,11,0
	lwz 8,640(31)
	mullw 10,9,10
	add 0,9,0
	slwi 0,0,2
	lwzx 0,8,0
	.loc 3 2569 0
	addi 9,9,1
.LVL4819:
	.loc 3 2570 0
	lwz 8,512(31)
	add 10,10,11
	slwi 10,10,2
	stwx 0,8,10
	.loc 3 2569 0
	lwz 0,632(31)
	.loc 3 2568 0
	lwz 10,504(31)
	.loc 3 2569 0
	cmpw 7,9,0
	blt+ 7,.L3635
	lwz 8,628(31)
.LVL4820:
.L2886:
	.loc 3 2568 0
	addi 11,11,1
.LVL4821:
	cmpw 7,11,8
	blt+ 7,.L2882
.LVL4822:
.L2883:
.LBE18754:
.LBE18759:
.LBB18760:
.LBB18761:
.LBB18762:
.LBB18763:
	.loc 3 2265 0
	mullw 9,8,10
	.loc 3 2267 0
	lwz 7,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL4823:
	.loc 3 2267 0
	add 11,0,7
	slwi 7,7,2
	cmpwi 7,11,1024
	ble- 7,.L2887
	mr 11,0
	li 7,0
.L2887:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 7,6,7
	.loc 3 2272 0
	stw 0,492(31)
	.loc 3 2270 0
	stw 7,496(31)
	.loc 3 2273 0
	stw 8,484(31)
	.loc 3 2274 0
	stw 10,488(31)
.LVL4824:
	.loc 3 2275 0
	bge- 7,.L2888
	slwi 11,9,2
	li 10,0
.LVL4825:
	b .L2889
.LVL4826:
.L3712:
	lwz 7,496(31)
.L2889:
	addi 9,9,1
.LVL4827:
	stwx 10,7,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3712
.L2888:
.LBE18763:
.LBE18762:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	.loc 4 7200 0
	addi 30,31,628
	.loc 3 2107 0
	lwz 3,SIMDProcessor@l(5)
	addi 4,31,484
	mr 5,30
	addi 6,31,500
	lwz 9,0(3)
.LVL4828:
	lwz 0,216(9)
	mtctr 0
.LEHB125:
	bctrl
.LEHE125:
.LVL4829:
.LBE18761:
.LBE18760:
	.loc 4 7200 0 discriminator 2
	mr 3,30
	addi 4,31,484
.LEHB126:
	bl _ZN6idMatXaSERKS_
.LEHE126:
	.loc 4 7200 0 is_stmt 0 discriminator 1
	lwz 3,496(31)
	lwz 0,492(31)
.LBB18765:
.LBB18766:
.LBB18767:
	.loc 3 2001 0 is_stmt 1 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L2893
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3713
	cmpwi 7,0,-1
	beq- 7,.L2893
.L3783:
.LEHB127:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE127:
.L2893:
	.loc 4 7200 0 discriminator 3
	lwz 3,512(31)
	lwz 0,508(31)
.LBE18767:
.LBE18766:
.LBE18765:
.LBB18770:
.LBB18771:
.LBB18772:
	.loc 3 2001 0 discriminator 3
	cmpwi 7,3,0
	beq- 7,.L2895
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3714
	cmpwi 7,0,-1
	beq- 7,.L2895
.L3782:
	addi 28,31,612
	addi 27,31,596
	addi 26,31,44
	addi 29,31,56
.LVL4830:
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
.LEHB128:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LVL4831:
.L2895:
.LBE18772:
.LBE18771:
.LBE18770:
	.loc 4 7202 0
	lwz 0,0(1)
	.loc 4 7209 0
	addi 28,31,612
	mr 3,28
	mr 4,30
	.loc 4 7202 0
	stwu 0,-64(1)
	addi 27,31,596
	addi 26,31,44
	addi 24,31,580
	addi 9,1,23
	.loc 4 7203 0
	stwu 0,-64(1)
	.loc 4 7202 0
	rlwinm 29,9,0,0,27
	addi 19,31,32
	.loc 4 7203 0
	addi 0,1,23
	.loc 4 7202 0
	stw 29,872(31)
.LVL4832:
	.loc 4 7203 0
	rlwinm 29,0,0,0,27
.LVL4833:
	addi 25,31,20
	stw 29,876(31)
.LVL4834:
	addi 22,31,564
	addi 29,31,56
.LVL4835:
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	.loc 4 7209 0
	bl _ZN6idMatXaSERKS_
.LVL4836:
.LBB18775:
.LBB18776:
	.loc 3 2416 0
	lwz 29,612(31)
.LVL4837:
	addic. 29,29,-2
	blt- 0,.L2897
.LVL4838:
.L3563:
	.loc 3 2417 0
	lwz 5,616(31)
	li 4,0
	lwz 3,624(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,29,9
	subf 5,29,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL4839:
	.loc 3 2416 0
	cmpwi 7,29,0
	addi 29,29,-1
.LVL4840:
	bne+ 7,.L3563
.L2897:
.LBE18776:
.LBE18775:
	.loc 4 7211 0
	addi 27,31,596
	mr 4,28
	mr 3,27
	addi 26,31,44
	addi 29,31,56
.LVL4841:
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
.LVL4842:
.LBB18777:
.LBB18778:
	.loc 3 2596 0
	lwz 0,596(31)
	cmplwi 7,0,6
	ble- 7,.L3715
.L2899:
	.loc 3 2614 0
	mr 3,27
	addi 26,31,44
	addi 29,31,56
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatX18InverseSelfGenericEv
.L2907:
.LBE18778:
.LBE18777:
	.loc 4 7214 0
	mr 3,28
	bl _ZN6idMatX22LowerTriangularInverseEv
.LVL4843:
.LBB18787:
.LBB18788:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL4844:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2908
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL4845:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB18789:
.LBB18790:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE18790:
.LBE18789:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2909
.LVL4846:
.L2911:
	.loc 3 2231 0
	bdz .L2908
.LVL4847:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4848:
	lfsu 13,4(11)
.LVL4849:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB18792:
.LBB18791:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE18791:
.LBE18792:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2911
.LVL4850:
.L2909:
.LBE18788:
.LBE18787:
	.loc 4 7217 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC21@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC21@l(4)
	addi 26,31,44
	addi 29,31,56
	lwz 9,0(3)
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	lwz 0,80(9)
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	mtctr 0
	addi 21,31,516
	crxor 6,6,6
	bctrl
.LVL4851:
.L2908:
	.loc 4 7224 0
	mr 3,28
	mr 4,30
	addi 26,31,44
	addi 29,31,56
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
.LVL4852:
.LBB18793:
.LBB18794:
	.loc 3 2423 0
	lwz 0,612(31)
	cmpwi 7,0,1
	ble- 7,.L2913
	li 29,1
.LVL4853:
.L2914:
	.loc 3 2424 0
	lwz 0,616(31)
	slwi 5,29,2
	lwz 3,624(31)
	li 4,0
	mullw 0,29,0
	.loc 3 2423 0
	addi 29,29,1
	.loc 3 2424 0
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL4854:
	.loc 3 2423 0
	lwz 0,612(31)
	cmpw 7,29,0
	blt+ 7,.L2914
.LVL4855:
.L2913:
.LBE18794:
.LBE18793:
	.loc 4 7226 0
	mr 3,27
	mr 4,28
	addi 26,31,44
	addi 29,31,56
.LVL4856:
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
.LVL4857:
.LBB18795:
.LBB18796:
	.loc 3 2596 0
	lwz 0,596(31)
	cmplwi 7,0,6
	ble- 7,.L3716
.L2915:
	.loc 3 2614 0
	mr 3,27
	addi 26,31,44
	addi 29,31,56
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatX18InverseSelfGenericEv
.L2923:
.LBE18796:
.LBE18795:
	.loc 4 7229 0
	mr 3,28
	bl _ZN6idMatX22UpperTriangularInverseEv
.LVL4858:
.LBB18804:
.LBB18805:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL4859:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2924
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL4860:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB18806:
.LBB18807:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE18807:
.LBE18806:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2925
.LVL4861:
.L2927:
	.loc 3 2231 0
	bdz .L2924
.LVL4862:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4863:
	lfsu 13,4(11)
.LVL4864:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB18809:
.LBB18808:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE18808:
.LBE18809:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2927
.LVL4865:
.L2925:
.LBE18805:
.LBE18804:
	.loc 4 7232 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC22@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC22@l(4)
	addi 26,31,44
	addi 29,31,56
	lwz 9,0(3)
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	lwz 0,80(9)
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	mtctr 0
	addi 21,31,516
	crxor 6,6,6
	bctrl
.LVL4866:
.L2924:
	.loc 4 7239 0
	mr 3,28
	mr 4,30
	addi 26,31,44
	addi 29,31,56
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7241 0
	mr 3,28
	bl _ZN6idMatX19Inverse_GaussJordanEv
.LVL4867:
.LBB18810:
.LBB18811:
	.loc 3 2163 0
	addi 3,31,148
	mr 4,28
	mr 5,30
	bl _ZNK6idMatXmlERKS_
.LEHE128:
	mr 3,28
	addi 4,31,148
.LEHB129:
	bl _ZN6idMatXaSERKS_
.LEHE129:
.LBE18811:
	lwz 3,160(31)
	lwz 0,156(31)
.LBB18818:
.LBB18812:
.LBB18813:
.LBB18814:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L2929
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3717
	cmpwi 7,0,-1
	beq- 7,.L2929
.L3784:
	addi 26,31,44
	addi 29,31,56
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
.LEHB130:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.L2929:
.LBE18814:
.LBE18813:
.LBE18812:
.LBE18818:
.LBE18810:
.LBB18822:
.LBB18823:
	.loc 3 2470 0
	lwz 5,612(31)
.LBE18823:
.LBE18822:
.LBB18832:
.LBB18819:
	.loc 3 2164 0
	li 0,0
	stw 0,_ZN6idMatX9tempIndexE@l(14)
.LVL4868:
.LBE18819:
.LBE18832:
.LBB18833:
.LBB18830:
	.loc 3 2470 0
	cmpwi 7,5,0
	ble- 7,.L2931
	lwz 7,616(31)
.LBB18824:
	li 10,0
.LBE18824:
	.loc 4 7193 0
	lwz 6,624(31)
	lis 4,.LC20@ha
	cmpwi 6,7,0
	slwi 3,7,2
	addi 6,6,-4
.LBB18829:
	.loc 3 2472 0
	lis 8,.LC1@ha
.LVL4869:
.L2932:
	.loc 3 2471 0
	ble- 6,.L2938
	.loc 3 2472 0
	lfs 12,.LC20@l(4)
	.loc 3 2471 0
	mr 11,6
	li 9,0
	.loc 3 2472 0
	mtctr 7
	b .L2937
.LVL4870:
.L2935:
	fsubs 0,13,0
.LVL4871:
	stfs 0,880(31)
	lwz 0,880(31)
.LBB18825:
.LBB18826:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE18826:
.LBE18825:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bgt- 7,.L2936
.LVL4872:
.L3718:
	.loc 3 2471 0
	addi 9,9,1
.LVL4873:
	bdz .L2938
.LVL4874:
.L2937:
	.loc 3 2472 0
	cmpw 7,10,9
	lis 29,.LC9@ha
	lfsu 13,4(11)
	lfs 0,.LC9@l(29)
	bne+ 7,.L2935
	lfs 0,.LC1@l(8)
.LVL4875:
	fsubs 0,13,0
.LVL4876:
	stfs 0,880(31)
	lwz 0,880(31)
.LBB18828:
.LBB18827:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE18827:
.LBE18828:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bng+ 7,.L3718
.LVL4877:
.L2936:
.LBE18829:
.LBE18830:
.LBE18833:
	.loc 4 7245 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC23@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC23@l(4)
	addi 26,31,44
	addi 29,31,56
.LVL4878:
	lwz 9,0(3)
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	lwz 0,80(9)
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	mtctr 0
	addi 21,31,516
	crxor 6,6,6
	bctrl
.LVL4879:
.L2931:
	.loc 4 7252 0
	mr 3,28
	mr 4,30
	addi 26,31,44
	addi 29,31,56
.LVL4880:
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7253 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL4881:
.LBB18834:
.LBB18835:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL4882:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L2939
.LBB18836:
.LBB18837:
	.loc 9 83 0
	lis 3,.LC18@ha
.LBE18837:
.LBE18836:
	.loc 2 1803 0
	lis 5,.LC19@ha
.LBB18851:
.LBB18846:
	.loc 9 83 0
	la 3,.LC18@l(3)
.LBE18846:
.LBE18851:
	.loc 2 1803 0
	la 5,.LC19@l(5)
	lis 10,.LC9@ha
.LBB18852:
.LBB18847:
.LBB18838:
.LBB18839:
	.loc 9 71 0
	lis 7,0x1
.LBE18839:
.LBE18838:
	.loc 9 83 0
	lfs 11,0(3)
.LBE18847:
.LBE18852:
	.loc 2 1802 0
	li 0,1
	.loc 2 1803 0
	lfs 12,0(5)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
.LBB18853:
.LBB18848:
.LBB18843:
.LBB18840:
	.loc 9 71 0
	ori 7,7,3533
.LBE18840:
.LBE18843:
	.loc 9 83 0
	lis 8,0x4330
.LVL4883:
.L2940:
.LBB18844:
.LBB18841:
	.loc 9 71 0
	mullw 10,0,7
.LBE18841:
.LBE18844:
	.loc 9 83 0
	stw 8,688(31)
.LBE18848:
.LBE18853:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB18854:
.LBB18849:
.LBB18845:
.LBB18842:
	.loc 9 71 0
	addi 0,10,1
.LVL4884:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE18842:
.LBE18845:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,692(31)
.LBE18849:
.LBE18854:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB18855:
.LBB18850:
	.loc 9 83 0
	lfd 0,688(31)
	fsub 0,0,11
	frsp 0,0
.LBE18850:
.LBE18855:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L2940
.LVL4885:
.L2939:
.LBE18835:
.LBE18834:
.LBB18856:
.LBB18857:
	.loc 4 7256 0
	addi 29,31,56
	.loc 2 1800 0
	li 4,6
	mr 3,29
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
.LVL4886:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L2941
.LBB18858:
.LBB18859:
	.loc 9 83 0
	lis 11,.LC18@ha
.LBE18859:
.LBE18858:
	.loc 2 1803 0
	lis 3,.LC19@ha
.LBB18873:
.LBB18868:
	.loc 9 83 0
	la 11,.LC18@l(11)
.LBE18868:
.LBE18873:
	.loc 2 1803 0
	la 3,.LC19@l(3)
	lis 5,.LC9@ha
.LBB18874:
.LBB18869:
.LBB18860:
.LBB18861:
	.loc 9 71 0
	lis 7,0x1
.LBE18861:
.LBE18860:
	.loc 9 83 0
	lfs 11,0(11)
.LBE18869:
.LBE18874:
	.loc 2 1802 0
	li 0,2
	.loc 2 1803 0
	lfs 12,0(3)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(5)
.LBB18875:
.LBB18870:
.LBB18865:
.LBB18862:
	.loc 9 71 0
	ori 7,7,3533
.LBE18862:
.LBE18865:
	.loc 9 83 0
	lis 8,0x4330
.LVL4887:
.L2942:
.LBB18866:
.LBB18863:
	.loc 9 71 0
	mullw 10,0,7
.LBE18863:
.LBE18866:
	.loc 9 83 0
	stw 8,696(31)
.LBE18870:
.LBE18875:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB18876:
.LBB18871:
.LBB18867:
.LBB18864:
	.loc 9 71 0
	addi 0,10,1
.LVL4888:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE18864:
.LBE18867:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,700(31)
.LBE18871:
.LBE18876:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB18877:
.LBB18872:
	.loc 9 83 0
	lfd 0,696(31)
	fsub 0,0,11
	frsp 0,0
.LBE18872:
.LBE18877:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L2942
.LVL4889:
.L2941:
.LBE18857:
.LBE18856:
	.loc 4 7259 0
	mr 3,28
	addi 24,31,580
	bl _ZN6idMatX19Inverse_GaussJordanEv
	.loc 4 7262 0
	lis 7,.LC1@ha
	lfs 31,.LC1@l(7)
	mr 4,29
	mr 5,26
	mr 3,27
	fmr 1,31
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	bl _ZN6idMatX14Update_RankOneERK6idVecXS2_f
	.loc 4 7263 0
	mr 3,27
	bl _ZN6idMatX19Inverse_GaussJordanEv
	.loc 4 7268 0
	fmr 1,31
	mr 3,28
	mr 4,29
	mr 5,26
	addi 21,31,516
	bl _ZN6idMatX21Inverse_UpdateRankOneERK6idVecXS2_f
.LVL4890:
.LBB18878:
.LBB18879:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL4891:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2943
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL4892:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB18880:
.LBB18881:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE18881:
.LBE18880:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2944
.LVL4893:
.L2946:
	.loc 3 2231 0
	bdz .L2943
.LVL4894:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4895:
	lfsu 13,4(11)
.LVL4896:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB18883:
.LBB18882:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE18882:
.LBE18883:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2946
.LVL4897:
.L2944:
.LBE18879:
.LBE18878:
	.loc 4 7271 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC24@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC24@l(4)
	addi 24,31,580
	addi 19,31,32
	lwz 9,0(3)
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	lwz 0,80(9)
	addi 20,31,548
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL4898:
.L2943:
.LBB18885:
.LBB18886:
	.loc 2 1803 0 discriminator 1
	lis 3,.LC9@ha
.LBB18887:
.LBB18888:
.LBB18889:
.LBB18890:
	.loc 9 71 0 discriminator 1
	lis 17,0x1
.LBE18890:
.LBE18889:
.LBE18888:
.LBE18887:
	.loc 2 1803 0 discriminator 1
	lfs 31,.LC9@l(3)
.LBE18886:
.LBE18885:
.LBB18913:
.LBB18884:
	.loc 3 2232 0 discriminator 1
	li 16,0
.LBE18884:
.LBE18913:
.LBB18914:
.LBB18911:
.LBB18904:
.LBB18897:
.LBB18894:
.LBB18891:
	.loc 9 71 0 discriminator 1
	ori 17,17,3533
.LBE18891:
.LBE18894:
	.loc 9 83 0 discriminator 1
	lis 18,0x4330
.LVL4899:
.L2957:
.LBE18897:
.LBE18904:
.LBE18911:
.LBE18914:
	.loc 4 7279 0
	mr 3,28
	mr 4,30
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7280 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL4900:
.LBB18915:
.LBB18912:
	.loc 2 1800 0
	mr 3,29
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL4901:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L2948
.LBB18905:
.LBB18898:
	.loc 9 83 0
	lis 5,.LC18@ha
.LBE18898:
.LBE18905:
	.loc 2 1803 0
	lis 7,.LC19@ha
.LBB18906:
.LBB18899:
	.loc 9 83 0
	la 5,.LC18@l(5)
.LBE18899:
.LBE18906:
	.loc 2 1803 0
	la 7,.LC19@l(7)
.LBB18907:
.LBB18900:
	.loc 9 83 0
	lfs 12,0(5)
.LBE18900:
.LBE18907:
	.loc 2 1802 0
	li 0,1
	.loc 2 1803 0
	lfs 13,0(7)
	.loc 2 1802 0
	li 9,0
.LVL4902:
.L2949:
.LBB18908:
.LBB18901:
.LBB18895:
.LBB18892:
	.loc 9 71 0
	mullw 10,0,17
.LBE18892:
.LBE18895:
	.loc 9 83 0
	stw 18,704(31)
.LBE18901:
.LBE18908:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB18909:
.LBB18902:
.LBB18896:
.LBB18893:
	.loc 9 71 0
	addi 0,10,1
.LVL4903:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE18893:
.LBE18896:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,708(31)
.LBE18902:
.LBE18909:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB18910:
.LBB18903:
	.loc 9 83 0
	lfd 0,704(31)
	fsub 0,0,12
	frsp 0,0
.LBE18903:
.LBE18910:
	.loc 2 1803 0
	fmadds 0,0,13,31
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L2949
.LVL4904:
.L2948:
.LBE18912:
.LBE18915:
.LBB18916:
.LBB18917:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
.LVL4905:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L2950
	.loc 2 1803 0
	lis 10,.LC19@ha
.LBB18918:
.LBB18919:
	.loc 9 83 0
	lis 9,.LC18@ha
.LBE18919:
.LBE18918:
	.loc 2 1803 0
	la 10,.LC19@l(10)
.LBB18929:
.LBB18924:
	.loc 9 83 0
	la 9,.LC18@l(9)
.LBE18924:
.LBE18929:
	.loc 2 1803 0
	lfs 13,0(10)
	.loc 2 1802 0
	li 0,2
.LBB18930:
.LBB18925:
	.loc 9 83 0
	lfs 12,0(9)
.LBE18925:
.LBE18930:
	.loc 2 1802 0
	li 9,0
.LVL4906:
.L2951:
.LBB18931:
.LBB18926:
.LBB18920:
.LBB18921:
	.loc 9 71 0
	mullw 10,0,17
.LBE18921:
.LBE18920:
	.loc 9 83 0
	stw 18,712(31)
.LBE18926:
.LBE18931:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB18932:
.LBB18927:
.LBB18923:
.LBB18922:
	.loc 9 71 0
	addi 0,10,1
.LVL4907:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE18922:
.LBE18923:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,716(31)
.LBE18927:
.LBE18932:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB18933:
.LBB18928:
	.loc 9 83 0
	lfd 0,712(31)
	fsub 0,0,12
	frsp 0,0
.LBE18928:
.LBE18933:
	.loc 2 1803 0
	fmadds 0,0,13,31
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L2951
.LVL4908:
.L2950:
.LBE18917:
.LBE18916:
	.loc 4 7284 0
	lwz 9,8(26)
	slwi 0,16,2
	.loc 4 7287 0
	mr 3,28
	addi 24,31,580
	.loc 4 7284 0
	stfsx 31,9,0
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	.loc 4 7287 0
	bl _ZN6idMatX19Inverse_GaussJordanEv
	.loc 4 7290 0
	mr 4,29
	mr 5,26
	mr 6,16
	mr 3,27
	addi 23,31,532
	bl _ZN6idMatX16Update_RowColumnERK6idVecXS2_i
	.loc 4 7291 0
	mr 3,27
	bl _ZN6idMatX19Inverse_GaussJordanEv
	.loc 4 7296 0
	mr 3,28
	mr 4,29
	mr 5,26
	mr 6,16
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatX23Inverse_UpdateRowColumnERK6idVecXS2_i
.LVL4909:
.LBB18934:
.LBB18935:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL4910:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2952
	.loc 3 2232 0
	lwz 11,12(27)
	lis 3,.LC25@ha
	lwz 10,624(31)
.LVL4911:
	la 9,.LC25@l(3)
	lfs 13,0(11)
	mtctr 0
	lfs 12,0(10)
	lfs 0,.LC25@l(3)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 8,880(31)
.LBB18936:
.LBB18937:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE18937:
.LBE18936:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2953
.LVL4912:
.L2955:
	.loc 3 2231 0
	bdz .L2952
.LVL4913:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4914:
	lfsu 13,4(11)
.LVL4915:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB18939:
.LBB18938:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE18938:
.LBE18939:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2955
.LVL4916:
.L2953:
.LBE18935:
.LBE18934:
	.loc 4 7299 0
	lis 5,_ZN5idLib6commonE@ha
	lis 7,.LC59@ha
	lwz 3,_ZN5idLib6commonE@l(5)
	addi 24,31,580
	lwz 4,.LC59@l(7)
	addi 19,31,32
	lwz 9,0(3)
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	lwz 0,80(9)
	addi 20,31,548
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL4917:
.L2952:
	.loc 4 7278 0
	cmpwi 7,16,5
	addi 16,16,1
.LVL4918:
	bne+ 7,.L2957
	.loc 4 7307 0
	mr 3,28
	mr 4,30
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7308 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL4919:
.LBB18940:
.LBB18941:
	.loc 2 1800 0
	mr 3,29
	li 4,7
	bl _ZN6idVecX7SetSizeEi
.LVL4920:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L2958
.LBB18942:
.LBB18943:
	.loc 9 83 0
	lis 3,.LC18@ha
.LBE18943:
.LBE18942:
	.loc 2 1803 0
	lis 5,.LC19@ha
.LBB18957:
.LBB18952:
	.loc 9 83 0
	la 3,.LC18@l(3)
.LBE18952:
.LBE18957:
	.loc 2 1803 0
	la 5,.LC19@l(5)
	lis 10,.LC9@ha
.LBB18958:
.LBB18953:
.LBB18944:
.LBB18945:
	.loc 9 71 0
	lis 7,0x1
.LBE18945:
.LBE18944:
	.loc 9 83 0
	lfs 11,0(3)
.LBE18953:
.LBE18958:
	.loc 2 1802 0
	li 0,1
	.loc 2 1803 0
	lfs 12,0(5)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
.LBB18959:
.LBB18954:
.LBB18949:
.LBB18946:
	.loc 9 71 0
	ori 7,7,3533
.LBE18946:
.LBE18949:
	.loc 9 83 0
	lis 8,0x4330
.LVL4921:
.L2959:
.LBB18950:
.LBB18947:
	.loc 9 71 0
	mullw 10,0,7
.LBE18947:
.LBE18950:
	.loc 9 83 0
	stw 8,720(31)
.LBE18954:
.LBE18959:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB18960:
.LBB18955:
.LBB18951:
.LBB18948:
	.loc 9 71 0
	addi 0,10,1
.LVL4922:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE18948:
.LBE18951:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,724(31)
.LBE18955:
.LBE18960:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB18961:
.LBB18956:
	.loc 9 83 0
	lfd 0,720(31)
	fsub 0,0,11
	frsp 0,0
.LBE18956:
.LBE18961:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L2959
.LVL4923:
.L2958:
.LBE18941:
.LBE18940:
.LBB18962:
.LBB18963:
	.loc 2 1800 0
	mr 3,26
	li 4,7
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
.LVL4924:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L2960
.LBB18964:
.LBB18965:
	.loc 9 83 0
	lis 11,.LC18@ha
.LBE18965:
.LBE18964:
	.loc 2 1803 0
	lis 3,.LC19@ha
.LBB18979:
.LBB18974:
	.loc 9 83 0
	la 11,.LC18@l(11)
.LBE18974:
.LBE18979:
	.loc 2 1803 0
	la 3,.LC19@l(3)
	lis 5,.LC9@ha
.LBB18980:
.LBB18975:
.LBB18966:
.LBB18967:
	.loc 9 71 0
	lis 7,0x1
.LBE18967:
.LBE18966:
	.loc 9 83 0
	lfs 11,0(11)
.LBE18975:
.LBE18980:
	.loc 2 1802 0
	li 0,2
	.loc 2 1803 0
	lfs 12,0(3)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(5)
.LBB18981:
.LBB18976:
.LBB18971:
.LBB18968:
	.loc 9 71 0
	ori 7,7,3533
.LBE18968:
.LBE18971:
	.loc 9 83 0
	lis 8,0x4330
.LVL4925:
.L2961:
.LBB18972:
.LBB18969:
	.loc 9 71 0
	mullw 10,0,7
.LBE18969:
.LBE18972:
	.loc 9 83 0
	stw 8,728(31)
.LBE18976:
.LBE18981:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB18982:
.LBB18977:
.LBB18973:
.LBB18970:
	.loc 9 71 0
	addi 0,10,1
.LVL4926:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE18970:
.LBE18973:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,732(31)
.LBE18977:
.LBE18982:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB18983:
.LBB18978:
	.loc 9 83 0
	lfd 0,728(31)
	fsub 0,0,11
	frsp 0,0
.LBE18978:
.LBE18983:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L2961
.LVL4927:
.L2960:
.LBE18963:
.LBE18962:
	.loc 4 7312 0
	lwz 9,8(26)
	li 0,0
	.loc 4 7315 0
	mr 3,28
	addi 24,31,580
	.loc 4 7312 0
	stw 0,24(9)
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	.loc 4 7315 0
	bl _ZN6idMatX19Inverse_GaussJordanEv
	.loc 4 7318 0
	mr 3,27
	mr 4,29
	mr 5,26
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatX16Update_IncrementERK6idVecXS2_
	.loc 4 7319 0
	mr 3,27
	bl _ZN6idMatX19Inverse_GaussJordanEv
	.loc 4 7324 0
	mr 3,28
	mr 4,29
	mr 5,26
	bl _ZN6idMatX23Inverse_UpdateIncrementERK6idVecXS2_
.LVL4928:
.LBB18984:
.LBB18985:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL4929:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2962
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL4930:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB18986:
.LBB18987:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE18987:
.LBE18986:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2963
.LVL4931:
.L2965:
	.loc 3 2231 0
	bdz .L2962
.LVL4932:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4933:
	lfsu 13,4(11)
.LVL4934:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB18989:
.LBB18988:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE18988:
.LBE18989:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2965
.LVL4935:
.L2963:
.LBE18985:
.LBE18984:
	.loc 4 7327 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC27@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC27@l(4)
	addi 24,31,580
	addi 19,31,32
	lwz 9,0(3)
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	lwz 0,80(9)
	addi 20,31,548
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL4936:
.L2962:
.LBB18993:
.LBB18990:
	.loc 3 2232 0 discriminator 1
	li 18,0
.LBE18990:
.LBE18993:
.LBB18994:
.LBB18995:
.LBB18996:
.LBB18997:
	lis 17,.LC25@ha
.LBE18997:
.LBE18996:
	.loc 4 7358 0 discriminator 1
	lis 16,_ZN5idLib6commonE@ha
.LVL4937:
.L2974:
	.loc 4 7335 0
	mr 3,28
	mr 4,30
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7336 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7338 0
	mr 3,29
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7339 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LBE18995:
.LBE18994:
.LBB19014:
.LBB18991:
	.loc 4 7193 0
	li 0,6
.LBE18991:
.LBE19014:
.LBB19015:
.LBB19012:
	lwz 8,4(30)
	slwi 7,18,2
.LBE19012:
.LBE19015:
.LBB19016:
.LBB18992:
	li 9,0
	mtctr 0
	b .L2968
.LVL4938:
.L3719:
.LBE18992:
.LBE19016:
.LBB19017:
.LBB19013:
.LBB19003:
	.loc 4 7340 0
	lwz 8,4(30)
.LVL4939:
.L2968:
.LBB19004:
.LBB19005:
	.loc 3 2056 0 discriminator 2
	mullw 8,9,8
.LBE19005:
.LBE19004:
	.loc 4 7341 0 discriminator 2
	lwz 0,12(30)
	lwz 10,8(29)
.LBE19003:
	.loc 4 7193 0 discriminator 2
	slwi 11,9,2
.LVL4940:
.LBB19010:
	.loc 4 7340 0 discriminator 2
	addi 9,9,1
.LVL4941:
	.loc 4 7341 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
	lwzx 0,8,7
	stwx 0,10,11
.LVL4942:
.LBB19006:
.LBB19007:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(30)
.LBE19007:
.LBE19006:
	.loc 4 7342 0 discriminator 2
	lwz 0,12(30)
.LBB19009:
.LBB19008:
	.loc 3 2056 0 discriminator 2
	mullw 8,18,8
.LBE19008:
.LBE19009:
	.loc 4 7342 0 discriminator 2
	lwz 10,8(26)
	slwi 8,8,2
	add 8,0,8
	lwzx 0,8,11
	stwx 0,10,11
	.loc 4 7340 0 discriminator 2
	bdnz .L3719
.LBE19010:
	.loc 4 7346 0
	mr 3,28
	addi 24,31,580
	bl _ZN6idMatX19Inverse_GaussJordanEv
.LVL4943:
	.loc 4 7349 0
	mr 4,18
	mr 3,27
	addi 19,31,32
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 7350 0
	mr 3,27
	bl _ZN6idMatX19Inverse_GaussJordanEv
	.loc 4 7355 0
	mr 3,28
	mr 4,29
	mr 5,26
	mr 6,18
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatX23Inverse_UpdateDecrementERK6idVecXS2_i
.LVL4944:
.LBB19011:
.LBB19002:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL4945:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2969
	.loc 3 2232 0
	lwz 11,12(27)
	la 9,.LC25@l(17)
	lwz 10,624(31)
.LVL4946:
	mtctr 0
	lfs 13,0(11)
	lfs 12,0(10)
	lfs 0,.LC25@l(17)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 8,880(31)
.LBB18998:
.LBB18999:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE18999:
.LBE18998:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2970
.LVL4947:
.L2972:
	.loc 3 2231 0
	bdz .L2969
.LVL4948:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4949:
	lfsu 13,4(11)
.LVL4950:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19001:
.LBB19000:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19000:
.LBE19001:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2972
.LVL4951:
.L2970:
.LBE19002:
.LBE19011:
	.loc 4 7358 0
	lwz 3,_ZN5idLib6commonE@l(16)
	lis 5,.LC60@ha
	lwz 4,.LC60@l(5)
	addi 24,31,580
	lwz 9,0(3)
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	lwz 0,80(9)
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL4952:
.L2969:
.LBE19013:
	.loc 4 7334 0
	cmpwi 7,18,5
	addi 18,18,1
.LVL4953:
	bne+ 7,.L2974
.LVL4954:
.LBE19017:
	.loc 4 7366 0
	mr 3,28
	mr 4,30
	addi 24,31,580
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7368 0
	li 4,0
	li 5,0
	mr 3,28
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7369 0
	mr 3,28
	mr 4,27
	mr 5,24
	bl _ZNK6idMatX16LU_UnpackFactorsERS_S0_
.LEHE130:
.LVL4955:
.LBB19018:
.LBB19019:
	.loc 3 2105 0
	lwz 7,596(31)
	lwz 8,584(31)
.LVL4956:
.LBB19020:
.LBB19021:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,7,8
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL4957:
	.loc 3 2267 0
	add 11,0,10
	slwi 10,10,2
	cmpwi 7,11,1024
	ble- 7,.L2975
	mr 11,0
	li 10,0
.L2975:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 0,476(31)
	.loc 3 2270 0
	stw 10,480(31)
	.loc 3 2273 0
	stw 7,468(31)
	.loc 3 2274 0
	stw 8,472(31)
.LVL4958:
	.loc 3 2275 0
	bge- 7,.L2976
	slwi 11,9,2
	li 8,0
	b .L2977
.LVL4959:
.L3720:
	lwz 10,480(31)
.L2977:
	addi 9,9,1
.LVL4960:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3720
.L2976:
.LBE19021:
.LBE19020:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,468
	lwz 3,SIMDProcessor@l(5)
	mr 6,24
	mr 5,27
	lwz 9,0(3)
.LVL4961:
	lwz 0,216(9)
	mtctr 0
.LEHB131:
	bctrl
.LEHE131:
.LVL4962:
.LBE19019:
.LBE19018:
	.loc 4 7370 0 discriminator 1
	mr 3,28
	addi 4,31,468
.LEHB132:
	bl _ZN6idMatXaSERKS_
.LEHE132:
	lwz 3,480(31)
	lwz 0,476(31)
.LBB19023:
.LBB19024:
.LBB19025:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L2980
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3721
	cmpwi 7,0,-1
	beq- 7,.L2980
.L3785:
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
.LEHB133:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L2980:
.LVL4963:
.LBE19025:
.LBE19024:
.LBE19023:
.LBB19028:
.LBB19029:
	.loc 3 2230 0
	lwz 9,628(31)
	lwz 0,632(31)
.LVL4964:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2982
	.loc 3 2232 0
	lwz 11,12(28)
	lis 9,.LC20@ha
	lwz 10,640(31)
.LVL4965:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19030:
.LBB19031:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19031:
.LBE19030:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2983
.LVL4966:
.L2985:
	.loc 3 2231 0
	bdz .L2982
.LVL4967:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4968:
	lfsu 13,4(11)
.LVL4969:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19033:
.LBB19032:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19032:
.LBE19033:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2985
.LVL4970:
.L2983:
.LBE19029:
.LBE19028:
	.loc 4 7373 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC29@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC29@l(4)
	addi 19,31,32
	addi 25,31,20
	lwz 9,0(3)
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	lwz 0,80(9)
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL4971:
.L2982:
	.loc 4 7380 0
	mr 3,28
	mr 4,30
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7381 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL4972:
.LBB19034:
.LBB19035:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL4973:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L2987
.LBB19036:
.LBB19037:
	.loc 9 83 0
	lis 3,.LC18@ha
.LBE19037:
.LBE19036:
	.loc 2 1803 0
	lis 5,.LC19@ha
.LBB19051:
.LBB19046:
	.loc 9 83 0
	la 3,.LC18@l(3)
.LBE19046:
.LBE19051:
	.loc 2 1803 0
	la 5,.LC19@l(5)
	lis 10,.LC9@ha
.LBB19052:
.LBB19047:
.LBB19038:
.LBB19039:
	.loc 9 71 0
	lis 7,0x1
.LBE19039:
.LBE19038:
	.loc 9 83 0
	lfs 11,0(3)
.LBE19047:
.LBE19052:
	.loc 2 1802 0
	li 0,1
	.loc 2 1803 0
	lfs 12,0(5)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
.LBB19053:
.LBB19048:
.LBB19043:
.LBB19040:
	.loc 9 71 0
	ori 7,7,3533
.LBE19040:
.LBE19043:
	.loc 9 83 0
	lis 8,0x4330
.LVL4974:
.L2988:
.LBB19044:
.LBB19041:
	.loc 9 71 0
	mullw 10,0,7
.LBE19041:
.LBE19044:
	.loc 9 83 0
	stw 8,736(31)
.LBE19048:
.LBE19053:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19054:
.LBB19049:
.LBB19045:
.LBB19042:
	.loc 9 71 0
	addi 0,10,1
.LVL4975:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19042:
.LBE19045:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,740(31)
.LBE19049:
.LBE19054:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19055:
.LBB19050:
	.loc 9 83 0
	lfd 0,736(31)
	fsub 0,0,11
	frsp 0,0
.LBE19050:
.LBE19055:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L2988
.LVL4976:
.L2987:
.LBE19035:
.LBE19034:
.LBB19056:
.LBB19057:
	.loc 2 1800 0
	mr 3,29
	li 4,6
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
.LVL4977:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L2989
.LBB19058:
.LBB19059:
	.loc 9 83 0
	lis 11,.LC18@ha
.LBE19059:
.LBE19058:
	.loc 2 1803 0
	lis 3,.LC19@ha
.LBB19073:
.LBB19068:
	.loc 9 83 0
	la 11,.LC18@l(11)
.LBE19068:
.LBE19073:
	.loc 2 1803 0
	la 3,.LC19@l(3)
	lis 5,.LC9@ha
.LBB19074:
.LBB19069:
.LBB19060:
.LBB19061:
	.loc 9 71 0
	lis 7,0x1
.LBE19061:
.LBE19060:
	.loc 9 83 0
	lfs 11,0(11)
.LBE19069:
.LBE19074:
	.loc 2 1802 0
	li 0,2
	.loc 2 1803 0
	lfs 12,0(3)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(5)
.LBB19075:
.LBB19070:
.LBB19065:
.LBB19062:
	.loc 9 71 0
	ori 7,7,3533
.LBE19062:
.LBE19065:
	.loc 9 83 0
	lis 8,0x4330
.LVL4978:
.L2990:
.LBB19066:
.LBB19063:
	.loc 9 71 0
	mullw 10,0,7
.LBE19063:
.LBE19066:
	.loc 9 83 0
	stw 8,744(31)
.LBE19070:
.LBE19075:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19076:
.LBB19071:
.LBB19067:
.LBB19064:
	.loc 9 71 0
	addi 0,10,1
.LVL4979:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19064:
.LBE19067:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,748(31)
.LBE19071:
.LBE19076:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB19077:
.LBB19072:
	.loc 9 83 0
	lfd 0,744(31)
	fsub 0,0,11
	frsp 0,0
.LBE19072:
.LBE19077:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L2990
.LVL4980:
.L2989:
.LBE19057:
.LBE19056:
	.loc 4 7202 0
	lwz 16,872(31)
	.loc 4 7387 0
	li 5,0
	mr 3,28
	addi 19,31,32
	mr 4,16
	addi 25,31,20
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7390 0
	lis 7,.LC1@ha
	lfs 1,.LC1@l(7)
	mr 3,27
	mr 4,29
	mr 5,26
	bl _ZN6idMatX14Update_RankOneERK6idVecXS2_f
	.loc 4 7391 0
	lwz 4,876(31)
	li 5,0
	mr 3,27
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7394 0
	lwz 5,876(31)
	mr 3,27
	mr 4,24
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7395 0
	mr 3,27
	mr 4,24
	bl _ZN6idMatXaSERKS_
	.loc 4 7398 0
	lis 9,.LC1@ha
	mr 4,29
	lfs 1,.LC1@l(9)
	mr 5,26
	mr 3,28
	mr 6,16
	bl _ZN6idMatX16LU_UpdateRankOneERK6idVecXS2_fPi
	.loc 4 7399 0
	mr 3,28
	mr 4,24
	mr 5,16
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7400 0
	mr 3,28
	mr 4,24
	bl _ZN6idMatXaSERKS_
.LVL4981:
.LBB19078:
.LBB19079:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL4982:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L2991
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL4983:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19080:
.LBB19081:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19081:
.LBE19080:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L2992
.LVL4984:
.L2994:
	.loc 3 2231 0
	bdz .L2991
.LVL4985:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL4986:
	lfsu 13,4(11)
.LVL4987:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19083:
.LBB19082:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19082:
.LBE19083:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L2994
.LVL4988:
.L2992:
.LBE19079:
.LBE19078:
	.loc 4 7403 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC30@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC30@l(4)
	addi 19,31,32
	addi 25,31,20
	lwz 9,0(3)
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	lwz 0,80(9)
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL4989:
.L2991:
.LBB19086:
.LBB19084:
	.loc 3 2232 0 discriminator 1
	li 3,0
.LBE19084:
.LBE19086:
.LBB19087:
.LBB19088:
	.loc 2 1803 0 discriminator 1
	lis 5,.LC9@ha
.LBB19089:
.LBB19090:
.LBB19091:
.LBB19092:
	.loc 9 71 0 discriminator 1
	lis 17,0x1
.LBE19092:
.LBE19091:
.LBE19090:
.LBE19089:
.LBE19088:
.LBE19087:
.LBB19115:
.LBB19085:
	.loc 3 2232 0 discriminator 1
	stw 3,872(31)
.LBE19085:
.LBE19115:
.LBB19116:
.LBB19113:
	.loc 2 1803 0 discriminator 1
	lfs 31,.LC9@l(5)
.LBB19106:
.LBB19099:
.LBB19096:
.LBB19093:
	.loc 9 71 0 discriminator 1
	ori 17,17,3533
.LBE19093:
.LBE19096:
	.loc 9 83 0 discriminator 1
	lis 18,0x4330
.LVL4990:
.L3005:
.LBE19099:
.LBE19106:
.LBE19113:
.LBE19116:
	.loc 4 7411 0
	mr 3,28
	mr 4,30
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7412 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL4991:
.LBB19117:
.LBB19114:
	.loc 2 1800 0
	mr 3,29
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL4992:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L2996
.LBB19107:
.LBB19100:
	.loc 9 83 0
	lis 7,.LC18@ha
.LBE19100:
.LBE19107:
	.loc 2 1803 0
	lis 9,.LC19@ha
.LBB19108:
.LBB19101:
	.loc 9 83 0
	la 7,.LC18@l(7)
.LBE19101:
.LBE19108:
	.loc 2 1803 0
	la 9,.LC19@l(9)
.LBB19109:
.LBB19102:
	.loc 9 83 0
	lfs 12,0(7)
.LBE19102:
.LBE19109:
	.loc 2 1802 0
	li 0,1
	.loc 2 1803 0
	lfs 13,0(9)
	.loc 2 1802 0
	li 9,0
.LVL4993:
.L2997:
.LBB19110:
.LBB19103:
.LBB19097:
.LBB19094:
	.loc 9 71 0
	mullw 10,0,17
.LBE19094:
.LBE19097:
	.loc 9 83 0
	stw 18,752(31)
.LBE19103:
.LBE19110:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19111:
.LBB19104:
.LBB19098:
.LBB19095:
	.loc 9 71 0
	addi 0,10,1
.LVL4994:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19095:
.LBE19098:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,756(31)
.LBE19104:
.LBE19111:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB19112:
.LBB19105:
	.loc 9 83 0
	lfd 0,752(31)
	fsub 0,0,12
	frsp 0,0
.LBE19105:
.LBE19112:
	.loc 2 1803 0
	fmadds 0,0,13,31
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L2997
.LVL4995:
.L2996:
.LBE19114:
.LBE19117:
.LBB19118:
.LBB19119:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
.LVL4996:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L2998
.LBB19120:
.LBB19121:
	.loc 9 83 0
	lis 10,.LC18@ha
.LBE19121:
.LBE19120:
	.loc 2 1803 0
	lis 11,.LC19@ha
.LBB19131:
.LBB19126:
	.loc 9 83 0
	la 10,.LC18@l(10)
.LBE19126:
.LBE19131:
	.loc 2 1803 0
	la 11,.LC19@l(11)
.LBB19132:
.LBB19127:
	.loc 9 83 0
	lfs 12,0(10)
.LBE19127:
.LBE19132:
	.loc 2 1802 0
	li 0,2
	.loc 2 1803 0
	lfs 13,0(11)
	.loc 2 1802 0
	li 9,0
.LVL4997:
.L2999:
.LBB19133:
.LBB19128:
.LBB19122:
.LBB19123:
	.loc 9 71 0
	mullw 10,0,17
.LBE19123:
.LBE19122:
	.loc 9 83 0
	stw 18,760(31)
.LBE19128:
.LBE19133:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19134:
.LBB19129:
.LBB19125:
.LBB19124:
	.loc 9 71 0
	addi 0,10,1
.LVL4998:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19124:
.LBE19125:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,764(31)
.LBE19129:
.LBE19134:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19135:
.LBB19130:
	.loc 9 83 0
	lfd 0,760(31)
	fsub 0,0,12
	frsp 0,0
.LBE19130:
.LBE19135:
	.loc 2 1803 0
	fmadds 0,0,13,31
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L2999
.LVL4999:
.L2998:
.LBE19119:
.LBE19118:
	.loc 4 7416 0
	lwz 3,872(31)
	.loc 4 7419 0
	mr 4,16
	.loc 4 7416 0
	lwz 9,8(26)
	.loc 4 7419 0
	li 5,0
	.loc 4 7416 0
	slwi 0,3,2
	.loc 4 7419 0
	mr 3,28
	.loc 4 7416 0
	stfsx 31,9,0
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	.loc 4 7419 0
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7422 0
	lwz 6,872(31)
	mr 3,27
	mr 4,29
	mr 5,26
	addi 23,31,532
	bl _ZN6idMatX16Update_RowColumnERK6idVecXS2_i
	.loc 4 7423 0
	lwz 4,876(31)
	li 5,0
	mr 3,27
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7426 0
	lwz 5,876(31)
	mr 3,27
	mr 4,24
	addi 20,31,548
	addi 21,31,516
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7427 0
	mr 3,27
	mr 4,24
	bl _ZN6idMatXaSERKS_
	.loc 4 7430 0
	lwz 6,872(31)
	mr 4,29
	mr 5,26
	mr 3,28
	mr 7,16
	bl _ZN6idMatX18LU_UpdateRowColumnERK6idVecXS2_iPi
	.loc 4 7431 0
	mr 3,28
	mr 4,24
	mr 5,16
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7432 0
	mr 3,28
	mr 4,24
	bl _ZN6idMatXaSERKS_
.LVL5000:
.LBB19136:
.LBB19137:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5001:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3000
	.loc 3 2232 0
	lwz 11,12(27)
	lis 5,.LC25@ha
	lwz 10,624(31)
.LVL5002:
	la 9,.LC25@l(5)
	lfs 13,0(11)
	mtctr 0
	lfs 12,0(10)
	lfs 0,.LC25@l(5)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 8,880(31)
.LBB19138:
.LBB19139:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19139:
.LBE19138:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3001
.LVL5003:
.L3003:
	.loc 3 2231 0
	bdz .L3000
.LVL5004:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5005:
	lfsu 13,4(11)
.LVL5006:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19141:
.LBB19140:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19140:
.LBE19141:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3003
.LVL5007:
.L3001:
.LBE19137:
.LBE19136:
	.loc 4 7435 0
	lis 5,_ZN5idLib6commonE@ha
	lis 7,.LC61@ha
	lwz 3,_ZN5idLib6commonE@l(5)
	addi 19,31,32
	lwz 4,.LC61@l(7)
	addi 25,31,20
	lwz 9,0(3)
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	lwz 0,80(9)
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5008:
.L3000:
	.loc 4 7410 0
	lwz 3,872(31)
	cmpwi 7,3,5
	addi 3,3,1
	stw 3,872(31)
	bne+ 7,.L3005
	.loc 4 7443 0
	mr 3,28
	mr 4,30
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7444 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL5009:
.LBB19142:
.LBB19143:
	.loc 2 1800 0
	mr 3,29
	li 4,7
	bl _ZN6idVecX7SetSizeEi
.LVL5010:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L3006
.LBB19144:
.LBB19145:
	.loc 9 83 0
	lis 5,.LC18@ha
.LBE19145:
.LBE19144:
	.loc 2 1803 0
	lis 7,.LC19@ha
	la 7,.LC19@l(7)
.LBB19159:
.LBB19154:
	.loc 9 83 0
	la 5,.LC18@l(5)
.LBE19154:
.LBE19159:
	.loc 2 1803 0
	lis 10,.LC9@ha
	lfs 12,0(7)
.LBB19160:
.LBB19155:
	.loc 9 83 0
	lfs 11,0(5)
.LBB19146:
.LBB19147:
	.loc 9 71 0
	lis 7,0x1
.LBE19147:
.LBE19146:
.LBE19155:
.LBE19160:
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
	.loc 2 1802 0
	li 0,1
	li 9,0
.LBB19161:
.LBB19156:
.LBB19151:
.LBB19148:
	.loc 9 71 0
	ori 7,7,3533
.LBE19148:
.LBE19151:
	.loc 9 83 0
	lis 8,0x4330
.LVL5011:
.L3007:
.LBB19152:
.LBB19149:
	.loc 9 71 0
	mullw 10,0,7
.LBE19149:
.LBE19152:
	.loc 9 83 0
	stw 8,768(31)
.LBE19156:
.LBE19161:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19162:
.LBB19157:
.LBB19153:
.LBB19150:
	.loc 9 71 0
	addi 0,10,1
.LVL5012:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19150:
.LBE19153:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,772(31)
.LBE19157:
.LBE19162:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB19163:
.LBB19158:
	.loc 9 83 0
	lfd 0,768(31)
	fsub 0,0,11
	frsp 0,0
.LBE19158:
.LBE19163:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L3007
.LVL5013:
.L3006:
.LBE19143:
.LBE19142:
.LBB19164:
.LBB19165:
	.loc 2 1800 0
	mr 3,26
	li 4,7
	addi 19,31,32
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
.LVL5014:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L3008
.LBB19166:
.LBB19167:
	.loc 9 83 0
	lis 11,.LC18@ha
.LBE19167:
.LBE19166:
	.loc 2 1803 0
	lis 3,.LC19@ha
.LBB19181:
.LBB19176:
	.loc 9 83 0
	la 11,.LC18@l(11)
.LBE19176:
.LBE19181:
	.loc 2 1803 0
	la 3,.LC19@l(3)
	lis 5,.LC9@ha
.LBB19182:
.LBB19177:
.LBB19168:
.LBB19169:
	.loc 9 71 0
	lis 7,0x1
.LBE19169:
.LBE19168:
	.loc 9 83 0
	lfs 11,0(11)
.LBE19177:
.LBE19182:
	.loc 2 1802 0
	li 0,2
	.loc 2 1803 0
	lfs 12,0(3)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(5)
.LBB19183:
.LBB19178:
.LBB19173:
.LBB19170:
	.loc 9 71 0
	ori 7,7,3533
.LBE19170:
.LBE19173:
	.loc 9 83 0
	lis 8,0x4330
.LVL5015:
.L3009:
.LBB19174:
.LBB19171:
	.loc 9 71 0
	mullw 10,0,7
.LBE19171:
.LBE19174:
	.loc 9 83 0
	stw 8,776(31)
.LBE19178:
.LBE19183:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19184:
.LBB19179:
.LBB19175:
.LBB19172:
	.loc 9 71 0
	addi 0,10,1
.LVL5016:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19172:
.LBE19175:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,780(31)
.LBE19179:
.LBE19184:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19185:
.LBB19180:
	.loc 9 83 0
	lfd 0,776(31)
	fsub 0,0,11
	frsp 0,0
.LBE19180:
.LBE19185:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L3009
.LVL5017:
.L3008:
.LBE19165:
.LBE19164:
	.loc 4 7448 0
	lwz 9,8(26)
	li 0,0
	.loc 4 7451 0
	mr 4,16
	li 5,0
	.loc 4 7448 0
	stw 0,24(9)
	.loc 4 7451 0
	mr 3,28
	addi 19,31,32
	addi 25,31,20
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7454 0
	mr 3,27
	mr 4,29
	mr 5,26
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatX16Update_IncrementERK6idVecXS2_
	.loc 4 7455 0
	lwz 4,876(31)
	li 5,0
	mr 3,27
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7458 0
	lwz 5,876(31)
	mr 3,27
	mr 4,24
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7459 0
	mr 3,27
	mr 4,24
	bl _ZN6idMatXaSERKS_
	.loc 4 7462 0
	mr 3,28
	mr 4,29
	mr 5,26
	mr 6,16
	bl _ZN6idMatX18LU_UpdateIncrementERK6idVecXS2_Pi
	.loc 4 7463 0
	mr 3,28
	mr 4,24
	mr 5,16
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7464 0
	mr 3,28
	mr 4,24
	bl _ZN6idMatXaSERKS_
.LVL5018:
.LBB19186:
.LBB19187:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5019:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3010
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL5020:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19188:
.LBB19189:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19189:
.LBE19188:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3011
.LVL5021:
.L3013:
	.loc 3 2231 0
	bdz .L3010
.LVL5022:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5023:
	lfsu 13,4(11)
.LVL5024:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19191:
.LBB19190:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19190:
.LBE19191:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3013
.LVL5025:
.L3011:
.LBE19187:
.LBE19186:
	.loc 4 7467 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC32@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC32@l(4)
	addi 19,31,32
	addi 25,31,20
	lwz 9,0(3)
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	lwz 0,80(9)
	addi 21,31,516
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5026:
.L3010:
.LBB19193:
.LBB19192:
	.loc 3 2232 0 discriminator 1
	li 18,0
	li 17,0
	addi 19,31,32
.LVL5027:
.L3023:
.LBE19192:
.LBE19193:
.LBB19194:
.LBB19195:
	.loc 4 7475 0
	mr 3,28
	mr 4,30
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7476 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7478 0
	mr 3,29
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7479 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	li 0,6
	lwz 8,4(30)
	li 9,0
	mtctr 0
	b .L3016
.LVL5028:
.L3722:
.LBB19196:
	.loc 4 7480 0
	lwz 8,4(30)
.LVL5029:
.L3016:
.LBB19197:
.LBB19198:
	.loc 3 2056 0 discriminator 2
	mullw 8,9,8
.LBE19198:
.LBE19197:
	.loc 4 7481 0 discriminator 2
	lwz 0,12(30)
	lwz 10,8(29)
.LBE19196:
	.loc 4 7193 0 discriminator 2
	slwi 11,9,2
.LVL5030:
.LBB19203:
	.loc 4 7480 0 discriminator 2
	addi 9,9,1
.LVL5031:
	.loc 4 7481 0 discriminator 2
	slwi 8,8,2
	add 8,0,8
	lwzx 0,8,18
	stwx 0,10,11
.LVL5032:
.LBB19199:
.LBB19200:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(30)
.LBE19200:
.LBE19199:
	.loc 4 7482 0 discriminator 2
	lwz 0,12(30)
.LBB19202:
.LBB19201:
	.loc 3 2056 0 discriminator 2
	mullw 8,17,8
.LBE19201:
.LBE19202:
	.loc 4 7482 0 discriminator 2
	lwz 10,8(26)
	slwi 8,8,2
	add 8,0,8
	lwzx 0,8,11
	stwx 0,10,11
	.loc 4 7480 0 discriminator 2
	bdnz .L3722
.LBE19203:
	.loc 4 7486 0
	li 5,0
	mr 4,16
	mr 3,28
	addi 25,31,20
	bl _ZN6idMatX9LU_FactorEPiPf
.LVL5033:
	.loc 4 7489 0
	mr 3,27
	mr 4,17
	addi 22,31,564
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 7490 0
	lwz 4,876(31)
	li 5,0
	mr 3,27
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7493 0
	lwz 5,876(31)
	mr 3,27
	mr 4,24
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7494 0
	mr 3,27
	mr 4,24
	bl _ZN6idMatXaSERKS_
	.loc 4 7496 0
	mr 3,19
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	li 3,6
	li 9,0
	mtctr 3
.L3017:
.LVL5034:
.LBB19204:
.LBB19205:
.LBB19206:
	.loc 3 2056 0 discriminator 2
	lwz 11,4(30)
	lwzx 10,18,16
.LBE19206:
.LBE19205:
	.loc 4 7498 0 discriminator 2
	lwz 0,12(30)
.LBB19208:
.LBB19207:
	.loc 3 2056 0 discriminator 2
	mullw 10,10,11
.LBE19207:
.LBE19208:
	.loc 4 7498 0 discriminator 2
	lwz 11,8(19)
	slwi 10,10,2
	add 10,0,10
	lwzx 0,10,9
	stwx 0,11,9
	addi 9,9,4
	.loc 4 7497 0 discriminator 2
	bdnz .L3017
.LBE19204:
	.loc 4 7502 0
	mr 3,28
	mr 4,29
	mr 5,26
	mr 6,19
	mr 7,17
	mr 8,16
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatX18LU_UpdateDecrementERK6idVecXS2_S2_iPi
.LVL5035:
	.loc 4 7503 0
	mr 3,28
	mr 4,24
	mr 5,16
	bl _ZNK6idMatX18LU_MultiplyFactorsERS_PKi
	.loc 4 7504 0
	mr 3,28
	mr 4,24
	bl _ZN6idMatXaSERKS_
.LVL5036:
.LBB19209:
.LBB19210:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5037:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3018
	.loc 3 2232 0
	lwz 11,12(27)
	lis 5,.LC25@ha
	lwz 10,624(31)
.LVL5038:
	la 9,.LC25@l(5)
	lfs 13,0(11)
	mtctr 0
	lfs 12,0(10)
	lfs 0,.LC25@l(5)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 8,880(31)
.LBB19211:
.LBB19212:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19212:
.LBE19211:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3019
.LVL5039:
.L3021:
	.loc 3 2231 0
	bdz .L3018
.LVL5040:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5041:
	lfsu 13,4(11)
.LVL5042:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19214:
.LBB19213:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19213:
.LBE19214:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3021
.LVL5043:
.L3019:
.LBE19210:
.LBE19209:
	.loc 4 7507 0
	lis 5,_ZN5idLib6commonE@ha
	lis 7,.LC62@ha
	lwz 3,_ZN5idLib6commonE@l(5)
	addi 25,31,20
	lwz 4,.LC62@l(7)
	addi 22,31,564
	lwz 9,0(3)
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5044:
.L3018:
.LBE19195:
	.loc 4 7474 0
	cmpwi 7,17,5
	addi 18,18,4
	addi 17,17,1
.LVL5045:
	bne+ 7,.L3023
.LBE19194:
	.loc 4 7515 0
	mr 3,27
	mr 4,30
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idMatXaSERKS_
	.loc 4 7517 0
	li 4,0
	li 5,0
	mr 3,27
	bl _ZN6idMatX9LU_FactorEPiPf
	.loc 4 7518 0
	mr 3,27
	mr 4,28
	li 5,0
	bl _ZNK6idMatX10LU_InverseERS_PKi
.LVL5046:
.LBB19215:
.LBB19216:
	.loc 3 2163 0
	addi 3,31,132
	mr 4,28
	mr 5,30
	bl _ZNK6idMatXmlERKS_
.LEHE133:
	mr 3,28
	addi 4,31,132
.LEHB134:
	bl _ZN6idMatXaSERKS_
.LEHE134:
.LBE19216:
	lwz 3,144(31)
	lwz 0,140(31)
.LBB19223:
.LBB19217:
.LBB19218:
.LBB19219:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L3024
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3723
	cmpwi 7,0,-1
	beq- 7,.L3024
.L3787:
	addi 25,31,20
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
.LEHB135:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.L3024:
.LBE19219:
.LBE19218:
.LBE19217:
.LBE19223:
.LBE19215:
.LBB19227:
.LBB19228:
	.loc 3 2470 0
	lwz 6,612(31)
.LBE19228:
.LBE19227:
.LBB19237:
.LBB19224:
	.loc 3 2164 0
	li 0,0
	stw 0,_ZN6idMatX9tempIndexE@l(14)
.LVL5047:
.LBE19224:
.LBE19237:
.LBB19238:
.LBB19235:
	.loc 3 2470 0
	cmpwi 7,6,0
	ble- 7,.L3026
	lwz 8,616(31)
.LBB19229:
	li 10,0
.LBE19229:
	.loc 4 7193 0
	lwz 7,624(31)
	lis 5,.LC20@ha
	cmpwi 6,8,0
	slwi 4,8,2
	addi 7,7,-4
.LVL5048:
.L3027:
.LBB19234:
	.loc 3 2471 0
	ble- 6,.L3032
	.loc 3 2472 0
	lfs 12,.LC20@l(5)
	.loc 3 2471 0
	mr 11,7
	li 9,0
	.loc 3 2472 0
	mtctr 8
	b .L3031
.LVL5049:
.L3029:
	fsubs 0,13,0
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19230:
.LBB19231:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19231:
.LBE19230:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bgt- 7,.L3030
.LVL5050:
.L3724:
	.loc 3 2471 0
	addi 9,9,1
.LVL5051:
	bdz .L3032
.LVL5052:
.L3031:
	.loc 3 2472 0
	cmpw 7,10,9
	lis 3,.LC9@ha
	lfsu 13,4(11)
	lfs 0,.LC9@l(3)
	bne+ 7,.L3029
	lis 3,.LC1@ha
	lfs 0,.LC1@l(3)
.LVL5053:
	fsubs 0,13,0
.LVL5054:
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19233:
.LBB19232:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19232:
.LBE19233:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bng+ 7,.L3724
.LVL5055:
.L3030:
.LBE19234:
.LBE19235:
.LBE19238:
	.loc 4 7522 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC34@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC34@l(4)
	addi 25,31,20
	addi 22,31,564
	lwz 9,0(3)
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5056:
.L3026:
	.loc 4 7529 0
	addi 25,31,20
	li 4,6
	mr 3,25
	addi 22,31,564
	addi 23,31,532
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7530 0
	addi 3,31,8
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7532 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7534 0
	mr 4,25
	addi 5,31,8
	mr 3,28
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7535 0
	mr 3,28
	mr 4,22
	mr 5,23
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
.LEHE135:
.LVL5057:
.LBB19239:
.LBB19240:
	.loc 3 2105 0
	lwz 7,564(31)
	lwz 8,536(31)
.LVL5058:
.LBB19241:
.LBB19242:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,7,8
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5059:
	.loc 3 2267 0
	add 11,0,10
	slwi 10,10,2
	cmpwi 7,11,1024
	ble- 7,.L3033
	mr 11,0
	li 10,0
.L3033:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 0,460(31)
	.loc 3 2270 0
	stw 10,464(31)
	.loc 3 2273 0
	stw 7,452(31)
	.loc 3 2274 0
	stw 8,456(31)
.LVL5060:
	.loc 3 2275 0
	bge- 7,.L3034
	slwi 11,9,2
	li 8,0
	b .L3035
.LVL5061:
.L3725:
	lwz 10,464(31)
.L3035:
	addi 9,9,1
.LVL5062:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3725
.L3034:
.LBE19242:
.LBE19241:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,452
	lwz 3,SIMDProcessor@l(5)
	mr 6,23
	mr 5,22
	lwz 9,0(3)
.LVL5063:
	lwz 0,216(9)
	mtctr 0
.LEHB136:
	bctrl
.LEHE136:
.LVL5064:
.LBE19240:
.LBE19239:
	.loc 4 7536 0 discriminator 1
	mr 3,28
	addi 4,31,452
.LEHB137:
	bl _ZN6idMatXaSERKS_
.LEHE137:
	lwz 3,464(31)
	lwz 0,460(31)
.LBB19244:
.LBB19245:
.LBB19246:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3038
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3726
	cmpwi 7,0,-1
	beq- 7,.L3038
.L3788:
	addi 20,31,548
	addi 21,31,516
.LEHB138:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3038:
.LVL5065:
.LBE19246:
.LBE19245:
.LBE19244:
.LBB19249:
.LBB19250:
	.loc 3 2230 0
	lwz 9,628(31)
	lwz 0,632(31)
.LVL5066:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3040
	.loc 3 2232 0
	lwz 11,12(28)
	lis 9,.LC20@ha
	lwz 10,640(31)
.LVL5067:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19251:
.LBB19252:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19252:
.LBE19251:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3041
.LVL5068:
.L3043:
	.loc 3 2231 0
	bdz .L3040
.LVL5069:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5070:
	lfsu 13,4(11)
.LVL5071:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19254:
.LBB19253:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19253:
.LBE19254:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3043
.LVL5072:
.L3041:
.LBE19250:
.LBE19249:
	.loc 4 7539 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC35@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC35@l(4)
	addi 20,31,548
	addi 21,31,516
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5073:
.L3040:
	.loc 4 7546 0
	mr 3,25
	li 4,6
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7547 0
	addi 3,31,8
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7549 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7550 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL5074:
.LBB19255:
.LBB19256:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL5075:
	.loc 2 1802 0
	lwz 4,44(31)
	cmpwi 7,4,0
	ble- 7,.L3045
.LBB19257:
.LBB19258:
	.loc 9 83 0
	lis 3,.LC18@ha
.LBE19258:
.LBE19257:
	.loc 2 1803 0
	lis 5,.LC19@ha
.LBB19272:
.LBB19267:
	.loc 9 83 0
	la 3,.LC18@l(3)
.LBE19267:
.LBE19272:
	.loc 2 1803 0
	la 5,.LC19@l(5)
	lis 10,.LC9@ha
.LBB19273:
.LBB19268:
.LBB19259:
.LBB19260:
	.loc 9 71 0
	lis 7,0x1
.LBE19260:
.LBE19259:
	.loc 9 83 0
	lfs 11,0(3)
.LBE19268:
.LBE19273:
	.loc 2 1802 0
	li 0,0
	.loc 2 1803 0
	lfs 12,0(5)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
.LBB19274:
.LBB19269:
.LBB19264:
.LBB19261:
	.loc 9 71 0
	ori 7,7,3533
.LBE19261:
.LBE19264:
	.loc 9 83 0
	lis 8,0x4330
.LVL5076:
.L3046:
.LBB19265:
.LBB19262:
	.loc 9 71 0
	mullw 10,0,7
.LBE19262:
.LBE19265:
	.loc 9 83 0
	stw 8,784(31)
.LBE19269:
.LBE19274:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19275:
.LBB19270:
.LBB19266:
.LBB19263:
	.loc 9 71 0
	addi 0,10,1
.LVL5077:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19263:
.LBE19266:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,788(31)
.LBE19270:
.LBE19275:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19276:
.LBB19271:
	.loc 9 83 0
	lfd 0,784(31)
	fsub 0,0,11
	frsp 0,0
.LBE19271:
.LBE19276:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 4,44(31)
	cmpw 7,9,4
	blt+ 7,.L3046
.LVL5078:
.L3045:
.LBE19256:
.LBE19255:
.LBB19277:
.LBB19278:
	.loc 2 1552 0
	mr 3,29
	addi 20,31,548
	addi 21,31,516
	bl _ZN6idVecX7SetSizeEi
	.loc 2 1554 0
	lis 11,SIMDProcessor@ha
	lwz 4,64(31)
	lwz 3,SIMDProcessor@l(11)
	lwz 5,8(26)
	lwz 9,0(3)
	lwz 6,44(31)
	lwz 0,164(9)
	mtctr 0
	bctrl
.LBE19278:
.LBE19277:
	.loc 4 7556 0
	mr 4,25
	addi 5,31,8
.LBB19281:
.LBB19279:
	.loc 2 1558 0
	li 0,0
	lis 9,_ZN6idVecX9tempIndexE@ha
.LBE19279:
.LBE19281:
	.loc 4 7556 0
	mr 3,28
.LBB19282:
.LBB19280:
	.loc 2 1558 0
	stw 0,_ZN6idVecX9tempIndexE@l(9)
.LBE19280:
.LBE19282:
	.loc 4 7556 0
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7557 0
	mr 3,28
	mr 4,22
	mr 5,23
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
	.loc 4 7560 0
	lis 7,.LC1@ha
	mr 3,27
	lfs 1,.LC1@l(7)
	mr 4,29
	mr 5,26
	bl _ZN6idMatX14Update_RankOneERK6idVecXS2_f
	.loc 4 7561 0
	mr 4,25
	addi 5,31,8
	mr 3,27
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7564 0
	mr 3,27
	mr 4,20
	mr 5,21
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
.LEHE138:
.LVL5079:
.LBB19283:
.LBB19284:
	.loc 3 2105 0
	lwz 7,548(31)
	lwz 8,520(31)
.LVL5080:
.LBB19285:
.LBB19286:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,7,8
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5081:
	.loc 3 2267 0
	add 11,0,10
	slwi 10,10,2
	cmpwi 7,11,1024
	ble- 7,.L3047
	mr 11,0
	li 10,0
.L3047:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 0,444(31)
	.loc 3 2270 0
	stw 10,448(31)
	.loc 3 2273 0
	stw 7,436(31)
	.loc 3 2274 0
	stw 8,440(31)
.LVL5082:
	.loc 3 2275 0
	bge- 7,.L3048
	slwi 11,9,2
	li 8,0
	b .L3049
.LVL5083:
.L3727:
	lwz 10,448(31)
.L3049:
	addi 9,9,1
.LVL5084:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3727
.L3048:
.LBE19286:
.LBE19285:
	.loc 3 2107 0
	lis 9,SIMDProcessor@ha
.LVL5085:
	addi 4,31,436
	lwz 3,SIMDProcessor@l(9)
	mr 5,20
	mr 6,21
	lwz 9,0(3)
	lwz 0,216(9)
	mtctr 0
.LEHB139:
	bctrl
.LEHE139:
.LVL5086:
.LBE19284:
.LBE19283:
	.loc 4 7565 0 discriminator 1
	mr 3,27
	addi 4,31,436
.LEHB140:
	bl _ZN6idMatXaSERKS_
.LEHE140:
	lwz 3,448(31)
	lwz 0,444(31)
.LBB19288:
.LBB19289:
.LBB19290:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3052
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3728
	cmpwi 7,0,-1
	beq- 7,.L3052
.L3789:
.LEHB141:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3052:
.LBE19290:
.LBE19289:
.LBE19288:
	.loc 4 7568 0
	lis 3,.LC1@ha
	mr 4,23
	lfs 1,.LC1@l(3)
	mr 5,29
	mr 3,22
	mr 6,26
	bl _ZN6idMatX16QR_UpdateRankOneERS_RK6idVecXS3_f
.LEHE141:
.LVL5087:
.LBB19293:
.LBB19294:
	.loc 3 2105 0
	lwz 7,564(31)
	lwz 8,536(31)
.LVL5088:
.LBB19295:
.LBB19296:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,7,8
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5089:
	.loc 3 2267 0
	add 11,0,10
	slwi 10,10,2
	cmpwi 7,11,1024
	ble- 7,.L3054
	mr 11,0
	li 10,0
.L3054:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 0,428(31)
	.loc 3 2270 0
	stw 10,432(31)
	.loc 3 2273 0
	stw 7,420(31)
	.loc 3 2274 0
	stw 8,424(31)
.LVL5090:
	.loc 3 2275 0
	bge- 7,.L3055
	slwi 11,9,2
	li 8,0
	b .L3056
.LVL5091:
.L3729:
	lwz 10,432(31)
.L3056:
	addi 9,9,1
.LVL5092:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3729
.L3055:
.LBE19296:
.LBE19295:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,420
	lwz 3,SIMDProcessor@l(5)
	mr 6,23
	mr 5,22
	lwz 9,0(3)
.LVL5093:
	lwz 0,216(9)
	mtctr 0
.LEHB142:
	bctrl
.LEHE142:
.LVL5094:
.LBE19294:
.LBE19293:
	.loc 4 7569 0 discriminator 1
	mr 3,28
	addi 4,31,420
.LEHB143:
	bl _ZN6idMatXaSERKS_
.LEHE143:
	lwz 3,432(31)
	lwz 0,428(31)
.LBB19298:
.LBB19299:
.LBB19300:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3059
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3730
	cmpwi 7,0,-1
	beq- 7,.L3059
.L3786:
.LEHB144:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3059:
.LVL5095:
.LBE19300:
.LBE19299:
.LBE19298:
.LBB19303:
.LBB19304:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5096:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3061
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL5097:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19305:
.LBB19306:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19306:
.LBE19305:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3062
.LVL5098:
.L3064:
	.loc 3 2231 0
	bdz .L3061
.LVL5099:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5100:
	lfsu 13,4(11)
.LVL5101:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19308:
.LBB19307:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19307:
.LBE19308:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3064
.LVL5102:
.L3062:
.LBE19304:
.LBE19303:
	.loc 4 7572 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC36@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC36@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5103:
.L3061:
.LBB19311:
.LBB19309:
	.loc 3 2232 0 discriminator 1
	li 3,0
.LBE19309:
.LBE19311:
.LBB19312:
.LBB19313:
	.loc 2 1803 0 discriminator 1
	lis 5,.LC9@ha
.LBB19314:
.LBB19315:
.LBB19316:
.LBB19317:
	.loc 9 71 0 discriminator 1
	lis 17,0x1
.LVL5104:
.LBE19317:
.LBE19316:
.LBE19315:
.LBE19314:
.LBE19313:
.LBE19312:
.LBB19340:
.LBB19310:
	.loc 3 2232 0 discriminator 1
	stw 3,872(31)
.LBE19310:
.LBE19340:
.LBB19341:
.LBB19338:
	.loc 2 1803 0 discriminator 1
	lfs 31,.LC9@l(5)
.LBB19331:
.LBB19324:
.LBB19321:
.LBB19318:
	.loc 9 71 0 discriminator 1
	ori 17,17,3533
.LBE19318:
.LBE19321:
	.loc 9 83 0 discriminator 1
	lis 18,0x4330
.LVL5105:
.L3089:
.LBE19324:
.LBE19331:
.LBE19338:
.LBE19341:
	.loc 4 7580 0
	mr 3,25
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7581 0
	addi 3,31,8
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7583 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7584 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL5106:
.LBB19342:
.LBB19339:
	.loc 2 1800 0
	mr 3,29
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL5107:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L3066
.LBB19332:
.LBB19325:
	.loc 9 83 0
	lis 7,.LC18@ha
.LBE19325:
.LBE19332:
	.loc 2 1803 0
	lis 9,.LC19@ha
.LBB19333:
.LBB19326:
	.loc 9 83 0
	la 7,.LC18@l(7)
.LBE19326:
.LBE19333:
	.loc 2 1803 0
	la 9,.LC19@l(9)
.LBB19334:
.LBB19327:
	.loc 9 83 0
	lfs 12,0(7)
.LBE19327:
.LBE19334:
	.loc 2 1802 0
	li 0,1
	.loc 2 1803 0
	lfs 13,0(9)
	.loc 2 1802 0
	li 9,0
.LVL5108:
.L3067:
.LBB19335:
.LBB19328:
.LBB19322:
.LBB19319:
	.loc 9 71 0
	mullw 10,0,17
.LBE19319:
.LBE19322:
	.loc 9 83 0
	stw 18,792(31)
.LBE19328:
.LBE19335:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19336:
.LBB19329:
.LBB19323:
.LBB19320:
	.loc 9 71 0
	addi 0,10,1
.LVL5109:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19320:
.LBE19323:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,796(31)
.LBE19329:
.LBE19336:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB19337:
.LBB19330:
	.loc 9 83 0
	lfd 0,792(31)
	fsub 0,0,12
	frsp 0,0
.LBE19330:
.LBE19337:
	.loc 2 1803 0
	fmadds 0,0,13,31
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L3067
.LVL5110:
.L3066:
.LBE19339:
.LBE19342:
.LBB19343:
.LBB19344:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL5111:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L3068
.LBB19345:
.LBB19346:
	.loc 9 83 0
	lis 10,.LC18@ha
.LBE19346:
.LBE19345:
	.loc 2 1803 0
	lis 11,.LC19@ha
.LBB19356:
.LBB19351:
	.loc 9 83 0
	la 10,.LC18@l(10)
.LBE19351:
.LBE19356:
	.loc 2 1803 0
	la 11,.LC19@l(11)
.LBB19357:
.LBB19352:
	.loc 9 83 0
	lfs 12,0(10)
.LBE19352:
.LBE19357:
	.loc 2 1802 0
	li 0,2
	.loc 2 1803 0
	lfs 13,0(11)
	.loc 2 1802 0
	li 9,0
.LVL5112:
.L3069:
.LBB19358:
.LBB19353:
.LBB19347:
.LBB19348:
	.loc 9 71 0
	mullw 10,0,17
.LBE19348:
.LBE19347:
	.loc 9 83 0
	stw 18,800(31)
.LBE19353:
.LBE19358:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19359:
.LBB19354:
.LBB19350:
.LBB19349:
	.loc 9 71 0
	addi 0,10,1
.LVL5113:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19349:
.LBE19350:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,804(31)
.LBE19354:
.LBE19359:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19360:
.LBB19355:
	.loc 9 83 0
	lfd 0,800(31)
	fsub 0,0,12
	frsp 0,0
.LBE19355:
.LBE19360:
	.loc 2 1803 0
	fmadds 0,0,13,31
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L3069
.LVL5114:
.L3068:
.LBE19344:
.LBE19343:
	.loc 4 7588 0
	lwz 3,872(31)
	.loc 4 7591 0
	mr 4,25
	.loc 4 7588 0
	lwz 9,8(26)
	.loc 4 7591 0
	addi 5,31,8
	.loc 4 7588 0
	slwi 0,3,2
	.loc 4 7591 0
	mr 3,28
	.loc 4 7588 0
	stfsx 31,9,0
	.loc 4 7591 0
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7592 0
	mr 3,28
	mr 4,22
	mr 5,23
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
	.loc 4 7595 0
	lwz 6,872(31)
	mr 3,27
	mr 4,29
	mr 5,26
	bl _ZN6idMatX16Update_RowColumnERK6idVecXS2_i
	.loc 4 7596 0
	mr 4,25
	addi 5,31,8
	mr 3,27
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7599 0
	mr 3,27
	mr 4,20
	mr 5,21
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
.LEHE144:
.LVL5115:
.LBB19361:
.LBB19362:
	.loc 3 2105 0
	lwz 8,548(31)
	lwz 10,520(31)
.LVL5116:
.LBB19363:
.LBB19364:
	.loc 3 2267 0
	lwz 6,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,8,10
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5117:
	.loc 3 2267 0
	add 11,0,6
	slwi 6,6,2
	cmpwi 7,11,1024
	ble- 7,.L3070
	mr 11,0
	li 6,0
.L3070:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 7,_ZN6idMatX7tempPtrE@l(15)
	la 16,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 7,7,6
	.loc 3 2272 0
	stw 0,412(31)
	.loc 3 2270 0
	stw 7,416(31)
	.loc 3 2273 0
	stw 8,404(31)
	.loc 3 2274 0
	stw 10,408(31)
.LVL5118:
	.loc 3 2275 0
	bge- 7,.L3071
	slwi 11,9,2
	b .L3072
.LVL5119:
.L3731:
	lwz 7,416(31)
.L3072:
	addi 9,9,1
.LVL5120:
	stfsx 31,7,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3731
.L3071:
.LBE19364:
.LBE19363:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,404
	lwz 3,SIMDProcessor@l(5)
	mr 6,21
	mr 5,20
	lwz 9,0(3)
.LVL5121:
	lwz 0,216(9)
	mtctr 0
.LEHB145:
	bctrl
.LEHE145:
.LVL5122:
.LBE19362:
.LBE19361:
	.loc 4 7600 0 discriminator 1
	mr 3,27
	addi 4,31,404
.LEHB146:
	bl _ZN6idMatXaSERKS_
.LEHE146:
	lwz 3,416(31)
	lwz 0,412(31)
.LBB19366:
.LBB19367:
.LBB19368:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3075
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	blt- 7,.L3076
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L3075
.L3076:
	cmpwi 7,0,-1
	beq- 7,.L3075
.LEHB147:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3075:
.LBE19368:
.LBE19367:
.LBE19366:
	.loc 4 7603 0
	lwz 7,872(31)
	mr 3,22
	mr 4,23
	mr 5,29
	mr 6,26
	bl _ZN6idMatX18QR_UpdateRowColumnERS_RK6idVecXS3_i
.LEHE147:
.LVL5123:
.LBB19369:
.LBB19370:
	.loc 3 2105 0
	lwz 10,564(31)
	lwz 6,536(31)
.LVL5124:
.LBB19371:
.LBB19372:
	.loc 3 2267 0
	lwz 7,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,10,6
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5125:
	.loc 3 2267 0
	add 11,0,7
	slwi 7,7,2
	cmpwi 7,11,1024
	ble- 7,.L3077
	mr 11,0
	li 7,0
.L3077:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 8,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 8,8,7
	.loc 3 2272 0
	stw 0,396(31)
	.loc 3 2270 0
	stw 8,400(31)
	.loc 3 2273 0
	stw 10,388(31)
	.loc 3 2274 0
	stw 6,392(31)
.LVL5126:
	.loc 3 2275 0
	bge- 7,.L3078
	slwi 11,9,2
	b .L3079
.LVL5127:
.L3732:
	lwz 8,400(31)
.L3079:
	addi 9,9,1
.LVL5128:
	stfsx 31,8,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3732
.L3078:
.LBE19372:
.LBE19371:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,388
	lwz 3,SIMDProcessor@l(5)
	mr 6,23
	mr 5,22
	lwz 9,0(3)
.LVL5129:
	lwz 0,216(9)
	mtctr 0
.LEHB148:
	bctrl
.LEHE148:
.LVL5130:
.LBE19370:
.LBE19369:
	.loc 4 7604 0 discriminator 1
	mr 3,28
	addi 4,31,388
.LEHB149:
	bl _ZN6idMatXaSERKS_
.LEHE149:
	lwz 3,400(31)
	lwz 0,396(31)
.LBB19374:
.LBB19375:
.LBB19376:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3082
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	blt- 7,.L3083
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L3082
.L3083:
	cmpwi 7,0,-1
	beq- 7,.L3082
.LEHB150:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3082:
.LVL5131:
.LBE19376:
.LBE19375:
.LBE19374:
.LBB19377:
.LBB19378:
	.loc 3 2230 0
	lwz 8,612(31)
	lwz 0,616(31)
.LVL5132:
	.loc 3 2231 0
	mullw. 8,8,0
	ble- 0,.L3084
	.loc 3 2232 0
	lwz 11,12(27)
	lis 3,.LC25@ha
	lwz 10,624(31)
.LVL5133:
	la 9,.LC25@l(3)
	lfs 13,0(11)
	mtctr 8
	lfs 12,0(10)
	lfs 0,.LC25@l(3)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19379:
.LBB19380:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19380:
.LBE19379:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3085
.LVL5134:
.L3087:
	.loc 3 2231 0
	bdz .L3084
.LVL5135:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5136:
	lfsu 13,4(11)
.LVL5137:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19382:
.LBB19381:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19381:
.LBE19382:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3087
.LVL5138:
.L3085:
.LBE19378:
.LBE19377:
	.loc 4 7607 0
	lis 5,_ZN5idLib6commonE@ha
	lis 7,.LC63@ha
	lwz 3,_ZN5idLib6commonE@l(5)
	lwz 4,.LC63@l(7)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5139:
.L3084:
	.loc 4 7579 0
	lwz 3,872(31)
	cmpwi 7,3,5
	addi 3,3,1
	stw 3,872(31)
	bne+ 7,.L3089
	.loc 4 7615 0
	mr 3,25
	li 4,7
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7616 0
	addi 3,31,8
	li 4,7
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7618 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7619 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL5140:
.LBB19383:
.LBB19384:
	.loc 2 1800 0
	mr 3,29
	li 4,7
	bl _ZN6idVecX7SetSizeEi
.LVL5141:
	.loc 2 1802 0
	lwz 0,56(31)
	cmpwi 7,0,0
	ble- 7,.L3090
.LBB19385:
.LBB19386:
	.loc 9 83 0
	lis 5,.LC18@ha
.LBE19386:
.LBE19385:
	.loc 2 1803 0
	lis 7,.LC19@ha
	la 7,.LC19@l(7)
.LBB19400:
.LBB19395:
	.loc 9 83 0
	la 5,.LC18@l(5)
.LBE19395:
.LBE19400:
	.loc 2 1803 0
	lis 10,.LC9@ha
	lfs 12,0(7)
.LBB19401:
.LBB19396:
	.loc 9 83 0
	lfs 11,0(5)
.LBB19387:
.LBB19388:
	.loc 9 71 0
	lis 7,0x1
.LBE19388:
.LBE19387:
.LBE19396:
.LBE19401:
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
	.loc 2 1802 0
	li 0,1
	li 9,0
.LBB19402:
.LBB19397:
.LBB19392:
.LBB19389:
	.loc 9 71 0
	ori 7,7,3533
.LBE19389:
.LBE19392:
	.loc 9 83 0
	lis 8,0x4330
.LVL5142:
.L3091:
.LBB19393:
.LBB19390:
	.loc 9 71 0
	mullw 10,0,7
.LBE19390:
.LBE19393:
	.loc 9 83 0
	stw 8,808(31)
.LBE19397:
.LBE19402:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19403:
.LBB19398:
.LBB19394:
.LBB19391:
	.loc 9 71 0
	addi 0,10,1
.LVL5143:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19391:
.LBE19394:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,812(31)
.LBE19398:
.LBE19403:
	.loc 2 1803 0
	lwz 10,64(31)
.LBB19404:
.LBB19399:
	.loc 9 83 0
	lfd 0,808(31)
	fsub 0,0,11
	frsp 0,0
.LBE19399:
.LBE19404:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,56(31)
	cmpw 7,9,11
	blt+ 7,.L3091
.LVL5144:
.L3090:
.LBE19384:
.LBE19383:
.LBB19405:
.LBB19406:
	.loc 2 1800 0
	mr 3,26
	li 4,7
	bl _ZN6idVecX7SetSizeEi
.LVL5145:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L3092
.LBB19407:
.LBB19408:
	.loc 9 83 0
	lis 11,.LC18@ha
.LBE19408:
.LBE19407:
	.loc 2 1803 0
	lis 3,.LC19@ha
.LBB19422:
.LBB19417:
	.loc 9 83 0
	la 11,.LC18@l(11)
.LBE19417:
.LBE19422:
	.loc 2 1803 0
	la 3,.LC19@l(3)
	lis 5,.LC9@ha
.LBB19423:
.LBB19418:
.LBB19409:
.LBB19410:
	.loc 9 71 0
	lis 7,0x1
.LBE19410:
.LBE19409:
	.loc 9 83 0
	lfs 11,0(11)
.LBE19418:
.LBE19423:
	.loc 2 1802 0
	li 0,2
	.loc 2 1803 0
	lfs 12,0(3)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(5)
.LBB19424:
.LBB19419:
.LBB19414:
.LBB19411:
	.loc 9 71 0
	ori 7,7,3533
.LBE19411:
.LBE19414:
	.loc 9 83 0
	lis 8,0x4330
.LVL5146:
.L3093:
.LBB19415:
.LBB19412:
	.loc 9 71 0
	mullw 10,0,7
.LBE19412:
.LBE19415:
	.loc 9 83 0
	stw 8,816(31)
.LBE19419:
.LBE19424:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19425:
.LBB19420:
.LBB19416:
.LBB19413:
	.loc 9 71 0
	addi 0,10,1
.LVL5147:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19413:
.LBE19416:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,820(31)
.LBE19420:
.LBE19425:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19426:
.LBB19421:
	.loc 9 83 0
	lfd 0,816(31)
	fsub 0,0,11
	frsp 0,0
.LBE19421:
.LBE19426:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L3093
.LVL5148:
.L3092:
.LBE19406:
.LBE19405:
	.loc 4 7623 0
	lwz 9,8(26)
	li 0,0
	.loc 4 7626 0
	mr 4,25
	addi 5,31,8
	.loc 4 7623 0
	stw 0,24(9)
	.loc 4 7626 0
	mr 3,28
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7627 0
	mr 3,28
	mr 4,22
	mr 5,23
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
	.loc 4 7630 0
	mr 3,27
	mr 4,29
	mr 5,26
	bl _ZN6idMatX16Update_IncrementERK6idVecXS2_
	.loc 4 7631 0
	mr 4,25
	addi 5,31,8
	mr 3,27
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7634 0
	mr 3,27
	mr 4,20
	mr 5,21
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
.LEHE150:
.LVL5149:
.LBB19427:
.LBB19428:
	.loc 3 2105 0
	lwz 7,548(31)
	lwz 8,520(31)
.LVL5150:
.LBB19429:
.LBB19430:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,7,8
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5151:
	.loc 3 2267 0
	add 11,0,10
	slwi 10,10,2
	cmpwi 7,11,1024
	ble- 7,.L3094
	mr 11,0
	li 10,0
.L3094:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 0,380(31)
	.loc 3 2270 0
	stw 10,384(31)
	.loc 3 2273 0
	stw 7,372(31)
	.loc 3 2274 0
	stw 8,376(31)
.LVL5152:
	.loc 3 2275 0
	bge- 7,.L3095
	slwi 11,9,2
	li 8,0
	b .L3096
.LVL5153:
.L3733:
	lwz 10,384(31)
.L3096:
	addi 9,9,1
.LVL5154:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3733
.L3095:
.LBE19430:
.LBE19429:
	.loc 3 2107 0
	lis 7,SIMDProcessor@ha
	addi 4,31,372
	lwz 3,SIMDProcessor@l(7)
	mr 5,20
	mr 6,21
	lwz 9,0(3)
.LVL5155:
	lwz 0,216(9)
	mtctr 0
.LEHB151:
	bctrl
.LEHE151:
.LVL5156:
.LBE19428:
.LBE19427:
	.loc 4 7635 0 discriminator 1
	mr 3,27
	addi 4,31,372
.LEHB152:
	bl _ZN6idMatXaSERKS_
.LEHE152:
	lwz 3,384(31)
	lwz 0,380(31)
.LBB19432:
.LBB19433:
.LBB19434:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3099
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3734
	cmpwi 7,0,-1
	beq- 7,.L3099
.L3792:
.LEHB153:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3099:
.LBE19434:
.LBE19433:
.LBE19432:
	.loc 4 7638 0
	mr 3,22
	mr 4,23
	mr 5,29
	mr 6,26
	bl _ZN6idMatX18QR_UpdateIncrementERS_RK6idVecXS3_
.LEHE153:
.LVL5157:
.LBB19437:
.LBB19438:
	.loc 3 2105 0
	lwz 7,564(31)
	lwz 8,536(31)
.LVL5158:
.LBB19439:
.LBB19440:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,7,8
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5159:
	.loc 3 2267 0
	add 11,0,10
	slwi 10,10,2
	cmpwi 7,11,1024
	ble- 7,.L3101
	mr 11,0
	li 10,0
.L3101:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 0,364(31)
	.loc 3 2270 0
	stw 10,368(31)
	.loc 3 2273 0
	stw 7,356(31)
	.loc 3 2274 0
	stw 8,360(31)
.LVL5160:
	.loc 3 2275 0
	bge- 7,.L3102
	slwi 11,9,2
	li 8,0
	b .L3103
.LVL5161:
.L3735:
	lwz 10,368(31)
.L3103:
	addi 9,9,1
.LVL5162:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3735
.L3102:
.LBE19440:
.LBE19439:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,356
	lwz 3,SIMDProcessor@l(5)
	mr 6,23
	mr 5,22
	lwz 9,0(3)
.LVL5163:
	lwz 0,216(9)
	mtctr 0
.LEHB154:
	bctrl
.LEHE154:
.LVL5164:
.LBE19438:
.LBE19437:
	.loc 4 7639 0 discriminator 1
	mr 3,28
	addi 4,31,356
.LEHB155:
	bl _ZN6idMatXaSERKS_
.LEHE155:
	lwz 3,368(31)
	lwz 0,364(31)
.LBB19442:
.LBB19443:
.LBB19444:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3106
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3736
	cmpwi 7,0,-1
	beq- 7,.L3106
.L3791:
.LEHB156:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3106:
.LVL5165:
.LBE19444:
.LBE19443:
.LBE19442:
.LBB19447:
.LBB19448:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5166:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3108
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL5167:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19449:
.LBB19450:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19450:
.LBE19449:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3109
.LVL5168:
.L3111:
	.loc 3 2231 0
	bdz .L3108
.LVL5169:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5170:
	lfsu 13,4(11)
.LVL5171:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19452:
.LBB19451:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19451:
.LBE19452:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3111
.LVL5172:
.L3109:
.LBE19448:
.LBE19447:
	.loc 4 7642 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC38@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC38@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5173:
.L3108:
.LBB19456:
.LBB19453:
	.loc 3 2232 0 discriminator 1
	li 17,0
.LBE19453:
.LBE19456:
.LBB19457:
.LBB19458:
.LBB19459:
.LBB19460:
.LBB19461:
.LBB19462:
	.loc 3 2275 0 discriminator 1
	li 18,0
.LVL5174:
.L3134:
.LBE19462:
.LBE19461:
.LBE19460:
.LBE19459:
	.loc 4 7650 0
	mr 3,25
	li 4,7
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7651 0
	addi 3,31,8
	li 4,7
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7653 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7654 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7656 0
	mr 3,29
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 4 7657 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LBE19458:
.LBE19457:
.LBB19502:
.LBB19454:
	.loc 4 7193 0
	li 3,6
.LBE19454:
.LBE19502:
.LBB19503:
.LBB19499:
	lwz 0,4(30)
	slwi 7,17,2
.LBE19499:
.LBE19503:
.LBB19504:
.LBB19455:
	li 9,0
	mtctr 3
	b .L3114
.LVL5175:
.L3737:
.LBE19455:
.LBE19504:
.LBB19505:
.LBB19500:
.LBB19469:
	.loc 4 7658 0
	lwz 0,4(30)
.LVL5176:
.L3114:
.LBB19470:
.LBB19471:
	.loc 3 2056 0 discriminator 2
	mullw 8,9,0
.LBE19471:
.LBE19470:
	.loc 4 7659 0 discriminator 2
	lwz 6,12(30)
	lwz 10,8(29)
.LBE19469:
	.loc 4 7193 0 discriminator 2
	slwi 11,9,2
.LVL5177:
.LBB19476:
	.loc 4 7658 0 discriminator 2
	addi 9,9,1
.LVL5178:
	.loc 4 7659 0 discriminator 2
	slwi 8,8,2
	add 8,6,8
	lwzx 0,8,7
	stwx 0,10,11
.LVL5179:
.LBB19472:
.LBB19473:
	.loc 3 2056 0 discriminator 2
	lwz 8,4(30)
.LBE19473:
.LBE19472:
	.loc 4 7660 0 discriminator 2
	lwz 0,12(30)
.LBB19475:
.LBB19474:
	.loc 3 2056 0 discriminator 2
	mullw 8,17,8
.LBE19474:
.LBE19475:
	.loc 4 7660 0 discriminator 2
	lwz 10,8(26)
	slwi 8,8,2
	add 8,0,8
	lwzx 0,8,11
	stwx 0,10,11
	.loc 4 7658 0 discriminator 2
	bdnz .L3737
.LBE19476:
	.loc 4 7664 0
	mr 4,25
	addi 5,31,8
	mr 3,28
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
.LVL5180:
	.loc 4 7665 0
	mr 3,28
	mr 4,22
	mr 5,23
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
	.loc 4 7668 0
	mr 3,27
	mr 4,17
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 7669 0
	mr 4,25
	addi 5,31,8
	mr 3,27
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7672 0
	mr 3,27
	mr 4,20
	mr 5,21
	mr 6,25
	addi 7,31,8
	bl _ZNK6idMatX16QR_UnpackFactorsERS_S0_RK6idVecXS3_
.LEHE156:
.LVL5181:
.LBB19477:
.LBB19467:
	.loc 3 2105 0
	lwz 8,548(31)
.LBB19465:
.LBB19463:
	.loc 3 2267 0
	lis 5,_ZN6idMatX9tempIndexE@ha
.LBE19463:
.LBE19465:
	.loc 3 2105 0
	lwz 10,520(31)
.LVL5182:
.LBB19466:
.LBB19464:
	.loc 3 2267 0
	la 5,_ZN6idMatX9tempIndexE@l(5)
	lwz 6,0(5)
	.loc 3 2265 0
	mullw 9,8,10
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5183:
	.loc 3 2267 0
	add 11,0,6
	slwi 6,6,2
	cmpwi 7,11,1024
	ble- 7,.L3115
	mr 11,0
	li 6,0
.L3115:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 7,0(16)
	.loc 3 2271 0
	lis 3,_ZN6idMatX9tempIndexE@ha
	.loc 3 2272 0
	stw 0,348(31)
	.loc 3 2271 0
	la 3,_ZN6idMatX9tempIndexE@l(3)
	.loc 3 2270 0
	add 7,7,6
	.loc 3 2271 0
	stw 11,0(3)
	.loc 3 2270 0
	stw 7,352(31)
	.loc 3 2273 0
	stw 8,340(31)
	.loc 3 2274 0
	stw 10,344(31)
.LVL5184:
	.loc 3 2275 0
	bge- 7,.L3116
	slwi 11,9,2
	b .L3117
.LVL5185:
.L3738:
	lwz 7,352(31)
.L3117:
	addi 9,9,1
.LVL5186:
	stwx 18,7,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3738
.L3116:
.LBE19464:
.LBE19466:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,340
	la 5,SIMDProcessor@l(5)
	mr 6,21
	lwz 3,0(5)
	mr 5,20
	lwz 9,0(3)
.LVL5187:
	lwz 0,216(9)
	mtctr 0
.LEHB157:
	bctrl
.LEHE157:
.LVL5188:
.LBE19467:
.LBE19477:
	.loc 4 7673 0 discriminator 1
	mr 3,27
	addi 4,31,340
.LEHB158:
	bl _ZN6idMatXaSERKS_
.LEHE158:
	lwz 3,352(31)
	lwz 0,348(31)
.LBB19478:
.LBB19479:
.LBB19480:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3120
	.loc 3 2001 0 is_stmt 0
	lwz 9,0(16)
	cmplw 7,3,9
	blt- 7,.L3121
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L3120
.L3121:
	cmpwi 7,0,-1
	beq- 7,.L3120
.LEHB159:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3120:
.LBE19480:
.LBE19479:
.LBE19478:
	.loc 4 7676 0
	mr 3,22
	mr 4,23
	mr 5,29
	mr 6,26
	mr 7,17
	bl _ZN6idMatX18QR_UpdateDecrementERS_RK6idVecXS3_i
.LEHE159:
.LVL5189:
.LBB19481:
.LBB19482:
	.loc 3 2105 0
	lwz 8,564(31)
.LBB19483:
.LBB19484:
	.loc 3 2267 0
	lis 3,_ZN6idMatX9tempIndexE@ha
.LBE19484:
.LBE19483:
	.loc 3 2105 0
	lwz 10,536(31)
.LVL5190:
.LBB19486:
.LBB19485:
	.loc 3 2267 0
	la 3,_ZN6idMatX9tempIndexE@l(3)
	lwz 6,0(3)
	.loc 3 2265 0
	mullw 9,8,10
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5191:
	.loc 3 2267 0
	add 11,0,6
	slwi 6,6,2
	cmpwi 7,11,1024
	ble- 7,.L3122
	mr 11,0
	li 6,0
.L3122:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 7,0(16)
	.loc 3 2271 0
	lis 5,_ZN6idMatX9tempIndexE@ha
	.loc 3 2272 0
	stw 0,332(31)
	.loc 3 2271 0
	la 5,_ZN6idMatX9tempIndexE@l(5)
	.loc 3 2270 0
	add 7,7,6
	.loc 3 2271 0
	stw 11,0(5)
	.loc 3 2270 0
	stw 7,336(31)
	.loc 3 2273 0
	stw 8,324(31)
	.loc 3 2274 0
	stw 10,328(31)
.LVL5192:
	.loc 3 2275 0
	bge- 7,.L3123
	slwi 11,9,2
	b .L3124
.LVL5193:
.L3739:
	lwz 7,336(31)
.L3124:
	addi 9,9,1
.LVL5194:
	stwx 18,7,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3739
.L3123:
.LBE19485:
.LBE19486:
	.loc 3 2107 0
	lis 7,SIMDProcessor@ha
	addi 4,31,324
	la 7,SIMDProcessor@l(7)
	mr 5,22
	lwz 3,0(7)
	mr 6,23
	lwz 9,0(3)
.LVL5195:
	lwz 0,216(9)
	mtctr 0
.LEHB160:
	bctrl
.LEHE160:
.LVL5196:
.LBE19482:
.LBE19481:
	.loc 4 7677 0 discriminator 1
	mr 3,28
	addi 4,31,324
.LEHB161:
	bl _ZN6idMatXaSERKS_
.LEHE161:
	lwz 3,336(31)
	lwz 0,332(31)
.LBB19488:
.LBB19489:
.LBB19490:
	.loc 3 2001 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3127
	.loc 3 2001 0 is_stmt 0
	lwz 9,0(16)
	cmplw 7,3,9
	blt- 7,.L3128
	addi 9,9,4096
	cmplw 7,3,9
	ble- 7,.L3127
.L3128:
	cmpwi 7,0,-1
	beq- 7,.L3127
.LEHB162:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3127:
.LVL5197:
.LBE19490:
.LBE19489:
.LBE19488:
.LBB19491:
.LBB19492:
	.loc 3 2230 0
	lwz 8,612(31)
	lwz 0,616(31)
.LVL5198:
	.loc 3 2231 0
	mullw. 8,8,0
	ble- 0,.L3129
	.loc 3 2232 0
	lwz 11,12(27)
	lis 3,.LC25@ha
	lwz 10,624(31)
.LVL5199:
	la 9,.LC25@l(3)
	lfs 13,0(11)
	mtctr 8
	lfs 12,0(10)
	lfs 0,.LC25@l(3)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19493:
.LBB19494:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19494:
.LBE19493:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3130
.LVL5200:
.L3132:
	.loc 3 2231 0
	bdz .L3129
.LVL5201:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5202:
	lfsu 13,4(11)
.LVL5203:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19496:
.LBB19495:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19495:
.LBE19496:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3132
.LVL5204:
.L3130:
.LBE19492:
.LBE19491:
	.loc 4 7680 0
	lis 5,_ZN5idLib6commonE@ha
	lis 7,.LC64@ha
	lwz 3,_ZN5idLib6commonE@l(5)
	lwz 4,.LC64@l(7)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5205:
.L3129:
.LBE19500:
	.loc 4 7649 0
	cmpwi 7,17,5
	addi 17,17,1
.LVL5206:
	bne+ 7,.L3134
.LBE19505:
	.loc 4 7688 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7690 0
	mr 4,25
	addi 5,31,8
	mr 3,27
	bl _ZN6idMatX9QR_FactorER6idVecXS1_
	.loc 4 7691 0
	mr 3,27
	mr 4,28
	mr 5,25
	addi 6,31,8
	bl _ZNK6idMatX10QR_InverseERS_RK6idVecXS3_
.LVL5207:
.LBB19506:
.LBB19507:
	.loc 3 2163 0
	addi 3,31,116
	mr 4,28
	mr 5,30
	bl _ZNK6idMatXmlERKS_
.LEHE162:
	mr 3,28
	addi 4,31,116
.LEHB163:
	bl _ZN6idMatXaSERKS_
.LEHE163:
.LBE19507:
	lwz 3,128(31)
	lwz 0,124(31)
.LBB19514:
.LBB19508:
.LBB19509:
.LBB19510:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L3135
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3740
	cmpwi 7,0,-1
	beq- 7,.L3135
.L3793:
.LEHB164:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.L3135:
.LBE19510:
.LBE19509:
.LBE19508:
.LBE19514:
.LBE19506:
.LBB19518:
.LBB19519:
	.loc 3 2470 0
	lwz 6,612(31)
.LBE19519:
.LBE19518:
.LBB19528:
.LBB19515:
	.loc 3 2164 0
	li 0,0
	stw 0,_ZN6idMatX9tempIndexE@l(14)
.LVL5208:
.LBE19515:
.LBE19528:
.LBB19529:
.LBB19526:
	.loc 3 2470 0
	cmpwi 7,6,0
	ble- 7,.L3137
	lwz 8,616(31)
.LBB19520:
	li 10,0
.LBE19520:
	.loc 4 7193 0
	lwz 7,624(31)
	lis 5,.LC20@ha
	cmpwi 6,8,0
	slwi 4,8,2
	addi 7,7,-4
.LVL5209:
.L3138:
.LBB19525:
	.loc 3 2471 0
	ble- 6,.L3143
	.loc 3 2472 0
	lfs 12,.LC20@l(5)
	.loc 3 2471 0
	mr 11,7
	li 9,0
	.loc 3 2472 0
	mtctr 8
	b .L3142
.LVL5210:
.L3140:
	fsubs 0,13,0
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19521:
.LBB19522:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19522:
.LBE19521:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bgt- 7,.L3141
.LVL5211:
.L3741:
	.loc 3 2471 0
	addi 9,9,1
.LVL5212:
	bdz .L3143
.LVL5213:
.L3142:
	.loc 3 2472 0
	cmpw 7,10,9
	lis 3,.LC9@ha
	lfsu 13,4(11)
	lfs 0,.LC9@l(3)
	bne+ 7,.L3140
	lis 3,.LC1@ha
	lfs 0,.LC1@l(3)
.LVL5214:
	fsubs 0,13,0
.LVL5215:
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19524:
.LBB19523:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19523:
.LBE19524:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bng+ 7,.L3741
.LVL5216:
.L3141:
.LBE19525:
.LBE19526:
.LBE19529:
	.loc 4 7695 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC40@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC40@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5217:
.L3137:
	.loc 4 7702 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL5218:
.LBB19530:
.LBB19531:
.LBB19532:
.LBB19533:
	.loc 3 2250 0
	lwz 0,588(31)
	cmpwi 7,0,35
	bgt- 7,.L3144
	cmpwi 7,0,-1
	beq- 7,.L3144
	.loc 3 2251 0
	lwz 3,592(31)
	cmpwi 7,3,0
	beq- 7,.L3145
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.L3145:
	.loc 3 2254 0
	li 3,144
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	li 0,36
	.loc 3 2254 0
	stw 3,592(31)
	.loc 3 2255 0
	stw 0,588(31)
.L3144:
	.loc 3 2257 0
	li 0,6
.LBE19533:
.LBE19532:
	.loc 3 2302 0
	lis 3,SIMDProcessor@ha
	lwz 9,SIMDProcessor@l(3)
	li 5,36
.LBB19535:
.LBB19534:
	.loc 3 2257 0
	stw 0,580(31)
	.loc 3 2258 0
	stw 0,584(31)
.LVL5219:
.LBE19534:
.LBE19535:
	.loc 3 2302 0
	mr 3,9
	lwz 4,592(31)
	lwz 9,0(9)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LVL5220:
.LBE19531:
.LBE19530:
.LBB19536:
.LBB19537:
	.loc 2 1776 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
	.loc 2 1778 0
	lis 5,SIMDProcessor@ha
	lwz 4,52(31)
	lwz 3,SIMDProcessor@l(5)
	li 5,6
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LBE19537:
.LBE19536:
	.loc 4 7706 0
	mr 3,28
	mr 4,26
	mr 5,24
	bl _ZN6idMatX10SVD_FactorER6idVecXRS_
.LVL5221:
.LBB19538:
	.loc 4 8102 0
	lwz 17,44(31)
.LVL5222:
.LBB19539:
.LBB19540:
.LBB19541:
.LBB19542:
	.loc 3 2250 0
	lwz 0,604(31)
	.loc 3 2249 0
	mullw 18,17,17
	addi 16,18,3
	rlwinm 16,16,0,0,29
.LVL5223:
	.loc 3 2250 0
	cmpw 7,16,0
	ble- 7,.L3705
	cmpwi 7,0,-1
	beq- 7,.L3705
	.loc 3 2251 0
	lwz 3,608(31)
	cmpwi 7,3,0
	beq- 7,.L3149
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.LVL5224:
.L3149:
	.loc 3 2254 0
	slwi 3,16,2
	bl _Z11Mem_Alloc16i
	mr 4,3
	stw 3,608(31)
	.loc 3 2255 0
	stw 16,604(31)
	b .L3147
.L3705:
	.loc 3 2250 0
	lwz 4,608(31)
.L3147:
	.loc 3 2259 0
	cmpw 7,18,16
	.loc 3 2257 0
	stw 17,596(31)
	.loc 3 2258 0
	stw 17,600(31)
.LVL5225:
	.loc 3 2259 0
	bge- 7,.L3150
	slwi 9,18,2
	li 11,0
.L3152:
	addi 18,18,1
.LVL5226:
	stwx 11,4,9
	.loc 4 7193 0
	addi 0,18,3
	.loc 3 2259 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	lwz 4,608(31)
	cmpw 7,18,0
	blt+ 7,.L3152
	lwz 0,600(31)
	lwz 18,596(31)
.LVL5227:
	mullw 18,18,0
.L3150:
.LBE19542:
.LBE19541:
	.loc 3 2302 0
	lis 5,SIMDProcessor@ha
	lwz 3,SIMDProcessor@l(5)
	mr 5,18
	lwz 9,0(3)
	lwz 0,156(9)
	mtctr 0
	bctrl
.LEHE164:
.LVL5228:
.LBE19540:
.LBE19539:
.LBB19543:
	.loc 3 2328 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L3153
	lwz 11,600(31)
	li 9,0
	b .L3154
.LVL5229:
.L3742:
	lwz 11,600(31)
.LVL5230:
.L3154:
	.loc 3 2329 0
	addi 0,11,1
.LBB19544:
.LBB19545:
	.loc 2 1532 0
	lwz 10,8(26)
.LBE19545:
.LBE19544:
	.loc 3 2329 0
	mullw 0,0,9
.LBB19547:
.LBB19546:
	.loc 2 1532 0
	slwi 11,9,2
	lwzx 10,10,11
.LBE19546:
.LBE19547:
	.loc 3 2328 0
	addi 9,9,1
.LVL5231:
	.loc 3 2329 0
	lwz 11,608(31)
	slwi 0,0,2
	stwx 10,11,0
	.loc 3 2328 0
	lwz 0,0(26)
	cmpw 7,9,0
	blt+ 7,.L3742
.LVL5232:
.L3153:
.LBE19543:
.LBE19538:
.LBB19548:
.LBB19549:
.LBB19550:
.LBB19551:
	.loc 3 2566 0
	lwz 0,584(31)
	lwz 10,580(31)
.LVL5233:
.LBB19552:
.LBB19553:
	.loc 3 2267 0
	lwz 8,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,0,10
	addi 11,9,3
	rlwinm 11,11,0,0,29
.LVL5234:
	.loc 3 2267 0
	add 7,11,8
	slwi 8,8,2
	cmpwi 7,7,1024
	ble- 7,.L3155
	mr 7,11
	li 8,0
.L3155:
	.loc 3 2275 0
	cmpw 7,9,11
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 7,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 8,6,8
	.loc 3 2272 0
	stw 11,172(31)
	.loc 3 2270 0
	stw 8,176(31)
	.loc 3 2273 0
	stw 0,164(31)
	.loc 3 2274 0
	stw 10,168(31)
.LVL5235:
	.loc 3 2275 0
	bge- 7,.L3156
	slwi 11,9,2
.LVL5236:
	li 10,0
	b .L3158
.L3743:
	lwz 8,176(31)
.L3158:
	addi 9,9,1
.LVL5237:
	stwx 10,8,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3743
	lwz 10,580(31)
.L3156:
.LVL5238:
.LBE19553:
.LBE19552:
	.loc 3 2568 0
	cmpwi 7,10,0
	ble- 7,.L3160
	lwz 0,584(31)
	li 11,0
.LVL5239:
.L3159:
	.loc 3 2569 0
	cmpwi 7,0,0
	ble- 7,.L3162
	lwz 10,168(31)
	li 9,0
	b .L3163
.LVL5240:
.L3161:
	.loc 3 2568 0
	lwz 10,168(31)
.LVL5241:
.L3163:
	.loc 3 2570 0
	mullw 0,11,0
	lwz 8,592(31)
	mullw 10,9,10
	add 0,9,0
	slwi 0,0,2
	lwzx 8,8,0
	.loc 3 2569 0
	addi 9,9,1
.LVL5242:
	.loc 3 2570 0
	add 0,10,11
	lwz 10,176(31)
	slwi 0,0,2
	stwx 8,10,0
	.loc 3 2569 0
	lwz 0,584(31)
	cmpw 7,9,0
	blt+ 7,.L3161
	lwz 10,580(31)
.LVL5243:
.L3162:
	.loc 3 2568 0
	addi 11,11,1
.LVL5244:
	cmpw 7,11,10
	blt+ 7,.L3159
.LVL5245:
.L3160:
.LBE19551:
.LBE19550:
	.loc 3 2578 0
	mr 3,24
	addi 4,31,164
.LEHB165:
	bl _ZN6idMatXaSERKS_
.LEHE165:
.LVL5246:
.LBE19549:
	lwz 3,176(31)
	lwz 0,172(31)
.LBB19560:
.LBB19554:
.LBB19555:
.LBB19556:
	.loc 3 2001 0
	cmpwi 7,3,0
	lwz 11,_ZN6idMatX7tempPtrE@l(15)
	beq- 7,.L3165
	cmplw 7,3,11
	bge- 7,.L3744
	cmpwi 7,0,-1
	beq- 7,.L3165
.L3794:
.LEHB166:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.LEHE166:
	lwz 11,_ZN6idMatX7tempPtrE@l(15)
.L3165:
.LVL5247:
.LBE19556:
.LBE19555:
.LBE19554:
.LBE19560:
.LBE19548:
.LBB19563:
.LBB19564:
	.loc 3 2105 0
	lwz 6,612(31)
	lwz 7,600(31)
.LVL5248:
.LBB19565:
.LBB19566:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,6,7
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5249:
	.loc 3 2267 0
	add 8,0,10
	slwi 10,10,2
	cmpwi 7,8,1024
	ble- 7,.L3167
	mr 8,0
	li 10,0
.L3167:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	add 10,11,10
	stw 10,320(31)
	.loc 3 2271 0
	stw 8,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2272 0
	stw 0,316(31)
	.loc 3 2273 0
	stw 6,308(31)
	.loc 3 2274 0
	stw 7,312(31)
.LVL5250:
	.loc 3 2275 0
	bge- 7,.L3168
	slwi 11,9,2
	li 8,0
	b .L3169
.LVL5251:
.L3745:
	lwz 10,320(31)
.L3169:
	addi 9,9,1
.LVL5252:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3745
.L3168:
.LBE19566:
.LBE19565:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,308
	lwz 3,SIMDProcessor@l(5)
	mr 6,27
	mr 5,28
	lwz 9,0(3)
.LVL5253:
	lwz 0,216(9)
	mtctr 0
.LEHB167:
	bctrl
.LEHE167:
.LVL5254:
.LBE19564:
.LBE19563:
.LBB19568:
.LBB19569:
	.loc 3 2105 0
	lwz 7,308(31)
	lwz 8,584(31)
.LVL5255:
.LBB19570:
.LBB19571:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,7,8
	addi 0,9,3
	rlwinm 0,0,0,0,29
.LVL5256:
	.loc 3 2267 0
	add 11,0,10
	slwi 10,10,2
	cmpwi 7,11,1024
	ble- 7,.L3173
	mr 11,0
	li 10,0
.L3173:
	.loc 3 2275 0
	cmpw 7,9,0
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 11,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 0,300(31)
	.loc 3 2270 0
	stw 10,304(31)
	.loc 3 2273 0
	stw 7,292(31)
	.loc 3 2274 0
	stw 8,296(31)
.LVL5257:
	.loc 3 2275 0
	bge- 7,.L3174
	slwi 11,9,2
	li 8,0
	b .L3175
.LVL5258:
.L3746:
	lwz 10,304(31)
.L3175:
	addi 9,9,1
.LVL5259:
	stwx 8,10,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3746
.L3174:
.LBE19571:
.LBE19570:
	.loc 3 2107 0
	lis 5,SIMDProcessor@ha
	addi 4,31,292
	lwz 3,SIMDProcessor@l(5)
	mr 6,24
	addi 5,31,308
	lwz 9,0(3)
.LVL5260:
	lwz 0,216(9)
	mtctr 0
.LEHB168:
	bctrl
.LEHE168:
.LVL5261:
.LBE19569:
.LBE19568:
	.loc 4 7709 0 discriminator 2
	mr 3,28
	addi 4,31,292
.LEHB169:
	bl _ZN6idMatXaSERKS_
.LEHE169:
	.loc 4 7709 0 is_stmt 0 discriminator 1
	lwz 3,304(31)
	lwz 0,300(31)
.LBB19573:
.LBB19574:
.LBB19575:
	.loc 3 2001 0 is_stmt 1 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3179
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3747
	cmpwi 7,0,-1
	beq- 7,.L3179
.L3797:
.LEHB170:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE170:
.L3179:
	.loc 4 7709 0 discriminator 3
	lwz 3,320(31)
	lwz 0,316(31)
.LBE19575:
.LBE19574:
.LBE19573:
.LBB19578:
.LBB19579:
.LBB19580:
	.loc 3 2001 0 discriminator 3
	cmpwi 7,3,0
	beq- 7,.L3181
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3748
	cmpwi 7,0,-1
	beq- 7,.L3181
.L3796:
.LEHB171:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3181:
.LVL5262:
.LBE19580:
.LBE19579:
.LBE19578:
.LBB19583:
.LBB19584:
	.loc 3 2230 0
	lwz 9,628(31)
	lwz 0,632(31)
.LVL5263:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3183
	.loc 3 2232 0
	lwz 11,12(28)
	lis 9,.LC20@ha
	lwz 10,640(31)
.LVL5264:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19585:
.LBB19586:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19586:
.LBE19585:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3184
.LVL5265:
.L3186:
	.loc 3 2231 0
	bdz .L3183
.LVL5266:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5267:
	lfsu 13,4(11)
.LVL5268:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19588:
.LBB19587:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19587:
.LBE19588:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3186
.LVL5269:
.L3184:
.LBE19584:
.LBE19583:
	.loc 4 7712 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC41@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC41@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5270:
.L3183:
	.loc 4 7719 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7721 0
	mr 3,27
	mr 4,26
	mr 5,24
	bl _ZN6idMatX10SVD_FactorER6idVecXRS_
	.loc 4 7722 0
	mr 3,27
	mr 4,28
	mr 5,26
	mr 6,24
	bl _ZNK6idMatX11SVD_InverseERS_RK6idVecXRKS_
.LVL5271:
.LBB19589:
.LBB19590:
	.loc 3 2163 0
	addi 3,31,100
	mr 4,28
	mr 5,30
	bl _ZNK6idMatXmlERKS_
.LEHE171:
	mr 3,28
	addi 4,31,100
.LEHB172:
	bl _ZN6idMatXaSERKS_
.LEHE172:
.LBE19590:
	lwz 3,112(31)
	lwz 0,108(31)
.LBB19597:
.LBB19591:
.LBB19592:
.LBB19593:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L3188
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3749
	cmpwi 7,0,-1
	beq- 7,.L3188
.L3795:
.LEHB173:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.L3188:
.LBE19593:
.LBE19592:
.LBE19591:
.LBE19597:
.LBE19589:
.LBB19601:
.LBB19602:
	.loc 3 2470 0
	lwz 6,612(31)
.LBE19602:
.LBE19601:
.LBB19611:
.LBB19598:
	.loc 3 2164 0
	li 0,0
	stw 0,_ZN6idMatX9tempIndexE@l(14)
.LVL5272:
.LBE19598:
.LBE19611:
.LBB19612:
.LBB19609:
	.loc 3 2470 0
	cmpwi 7,6,0
	ble- 7,.L3190
	lwz 8,616(31)
.LBB19603:
	li 10,0
.LBE19603:
	.loc 4 7193 0
	lwz 7,624(31)
	lis 5,.LC20@ha
	cmpwi 6,8,0
	slwi 4,8,2
	addi 7,7,-4
.LVL5273:
.L3191:
.LBB19608:
	.loc 3 2471 0
	ble- 6,.L3196
	.loc 3 2472 0
	lfs 12,.LC20@l(5)
	.loc 3 2471 0
	mr 11,7
	li 9,0
	.loc 3 2472 0
	mtctr 8
	b .L3195
.LVL5274:
.L3193:
	fsubs 0,13,0
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19604:
.LBB19605:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19605:
.LBE19604:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bgt- 7,.L3194
.LVL5275:
.L3750:
	.loc 3 2471 0
	addi 9,9,1
.LVL5276:
	bdz .L3196
.LVL5277:
.L3195:
	.loc 3 2472 0
	cmpw 7,10,9
	lis 3,.LC9@ha
	lfsu 13,4(11)
	lfs 0,.LC9@l(3)
	bne+ 7,.L3193
	lis 3,.LC1@ha
	lfs 0,.LC1@l(3)
.LVL5278:
	fsubs 0,13,0
.LVL5279:
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19607:
.LBB19606:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19606:
.LBE19607:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bng+ 7,.L3750
.LVL5280:
.L3194:
.LBE19608:
.LBE19609:
.LBE19612:
	.loc 4 7726 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC42@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC42@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5281:
.L3190:
	.loc 4 7733 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7735 0
	mr 3,28
	bl _ZN6idMatX15Cholesky_FactorEv
	.loc 4 7736 0
	mr 3,28
	mr 4,27
	bl _ZNK6idMatX24Cholesky_MultiplyFactorsERS_
.LVL5282:
.LBB19613:
.LBB19614:
	.loc 3 2230 0
	lwz 9,628(31)
	lwz 0,632(31)
.LVL5283:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3197
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,640(31)
.LVL5284:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19615:
.LBB19616:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19616:
.LBE19615:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3198
.LVL5285:
.L3200:
	.loc 3 2231 0
	bdz .L3197
.LVL5286:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5287:
	lfsu 13,4(11)
.LVL5288:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19618:
.LBB19617:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19617:
.LBE19618:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3200
.LVL5289:
.L3198:
.LBE19614:
.LBE19613:
	.loc 4 7739 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC43@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC43@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5290:
.L3197:
	.loc 4 7746 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7747 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL5291:
.LBB19619:
.LBB19620:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL5292:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L3202
.LBB19621:
.LBB19622:
	.loc 9 83 0
	lis 3,.LC18@ha
.LBE19622:
.LBE19621:
	.loc 2 1803 0
	lis 5,.LC19@ha
.LBB19636:
.LBB19631:
	.loc 9 83 0
	la 3,.LC18@l(3)
.LBE19631:
.LBE19636:
	.loc 2 1803 0
	la 5,.LC19@l(5)
	lis 10,.LC9@ha
.LBB19637:
.LBB19632:
.LBB19623:
.LBB19624:
	.loc 9 71 0
	lis 7,0x1
.LBE19624:
.LBE19623:
	.loc 9 83 0
	lfs 11,0(3)
.LBE19632:
.LBE19637:
	.loc 2 1802 0
	li 0,0
	.loc 2 1803 0
	lfs 12,0(5)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
.LBB19638:
.LBB19633:
.LBB19628:
.LBB19625:
	.loc 9 71 0
	ori 7,7,3533
.LBE19625:
.LBE19628:
	.loc 9 83 0
	lis 8,0x4330
.LVL5293:
.L3203:
.LBB19629:
.LBB19626:
	.loc 9 71 0
	mullw 10,0,7
.LBE19626:
.LBE19629:
	.loc 9 83 0
	stw 8,824(31)
.LBE19633:
.LBE19638:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19639:
.LBB19634:
.LBB19630:
.LBB19627:
	.loc 9 71 0
	addi 0,10,1
.LVL5294:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19627:
.LBE19630:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,828(31)
.LBE19634:
.LBE19639:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19640:
.LBB19635:
	.loc 9 83 0
	lfd 0,824(31)
	fsub 0,0,11
	frsp 0,0
.LBE19635:
.LBE19640:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L3203
.LVL5295:
.L3202:
.LBE19620:
.LBE19619:
	.loc 4 7752 0
	mr 3,28
	bl _ZN6idMatX15Cholesky_FactorEv
.LVL5296:
.LBB19641:
.LBB19642:
	.loc 3 2416 0
	lwz 18,612(31)
.LVL5297:
	addic. 18,18,-2
	blt- 0,.L3204
.LVL5298:
.L3562:
	.loc 3 2417 0
	lwz 5,616(31)
	li 4,0
	lwz 3,624(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5299:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5300:
	bne+ 7,.L3562
.L3204:
.LBE19642:
.LBE19641:
	.loc 4 7756 0
	lis 11,.LC1@ha
	mr 4,26
	lfs 1,.LC1@l(11)
	mr 3,27
	bl _ZN6idMatX23Update_RankOneSymmetricERK6idVecXf
	.loc 4 7757 0
	mr 3,27
	bl _ZN6idMatX15Cholesky_FactorEv
.LVL5301:
.LBB19643:
.LBB19644:
	.loc 3 2416 0
	lwz 18,596(31)
.LVL5302:
	addic. 18,18,-2
	blt- 0,.L3206
.LVL5303:
.L3561:
	.loc 3 2417 0
	lwz 5,600(31)
	li 4,0
	lwz 3,608(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5304:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5305:
	bne+ 7,.L3561
.L3206:
.LBE19644:
.LBE19643:
	.loc 4 7763 0
	lis 3,.LC1@ha
	mr 4,26
	lfs 1,.LC1@l(3)
	li 5,0
	mr 3,28
	bl _ZN6idMatX22Cholesky_UpdateRankOneERK6idVecXfi
.LVL5306:
.LBB19645:
.LBB19646:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5307:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3208
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL5308:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19647:
.LBB19648:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19648:
.LBE19647:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3209
.LVL5309:
.L3211:
	.loc 3 2231 0
	bdz .L3208
.LVL5310:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5311:
	lfsu 13,4(11)
.LVL5312:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19650:
.LBB19649:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19649:
.LBE19650:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3211
.LVL5313:
.L3209:
.LBE19646:
.LBE19645:
	.loc 4 7766 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC44@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC44@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5314:
.L3208:
	.loc 4 7766 0 is_stmt 0 discriminator 1
	addi 3,31,640
.LBB19653:
.LBB19651:
	.loc 3 2232 0 is_stmt 1 discriminator 1
	li 5,0
.LBE19651:
.LBE19653:
.LBB19654:
.LBB19655:
.LBB19656:
.LBB19657:
	.loc 2 1803 0 discriminator 1
	lis 7,.LC9@ha
.LBB19658:
.LBB19659:
.LBB19660:
.LBB19661:
	.loc 9 71 0 discriminator 1
	lis 16,0x1
.LVL5315:
.LBE19661:
.LBE19660:
.LBE19659:
.LBE19658:
.LBE19657:
.LBE19656:
.LBE19655:
.LBE19654:
	.loc 4 7766 0 discriminator 1
	stw 3,876(31)
.LBB19708:
.LBB19706:
.LBB19689:
.LBB19684:
.LBB19676:
.LBB19668:
.LBB19665:
.LBB19662:
	.loc 9 71 0 discriminator 1
	ori 16,16,3533
.LBE19662:
.LBE19665:
.LBE19668:
.LBE19676:
.LBE19684:
.LBE19689:
.LBE19706:
.LBE19708:
.LBB19709:
.LBB19652:
	.loc 3 2232 0 discriminator 1
	stw 5,872(31)
.LBE19652:
.LBE19709:
.LBB19710:
.LBB19707:
.LBB19690:
.LBB19685:
.LBB19677:
.LBB19669:
	.loc 9 83 0 discriminator 1
	lis 17,0x4330
.LVL5316:
.LBE19669:
.LBE19677:
	.loc 2 1803 0 discriminator 1
	lfs 31,.LC9@l(7)
.LVL5317:
.L3224:
.LBE19685:
.LBE19690:
	.loc 4 7774 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7775 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7778 0
	mr 3,28
	bl _ZN6idMatX15Cholesky_FactorEv
.LVL5318:
.LBB19691:
.LBB19692:
	.loc 3 2416 0
	lwz 18,612(31)
.LVL5319:
	addic. 18,18,-2
	blt- 0,.L3213
.LVL5320:
.L3560:
	.loc 3 2417 0
	lwz 5,616(31)
	li 4,0
	lwz 3,624(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5321:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5322:
	bne+ 7,.L3560
.L3213:
.LBE19692:
.LBE19691:
	.loc 4 7781 0
	lis 10,.LANCHOR1@ha
.LBB19693:
.LBB19686:
	.loc 2 1800 0
	mr 3,26
.LBE19686:
.LBE19693:
	.loc 4 7781 0
	la 9,.LANCHOR1@l(10)
.LBB19694:
.LBB19687:
	.loc 2 1800 0
	li 4,6
.LBE19687:
.LBE19694:
	.loc 4 7781 0
	lwz 11,32(9)
	lwz 8,24(9)
	lwz 10,28(9)
	lwz 0,36(9)
	lwz 7,40(9)
	lwz 9,44(9)
	stw 11,652(31)
	stw 8,644(31)
	.loc 4 7782 0
	lwz 11,876(31)
	.loc 4 7781 0
	stw 10,648(31)
	stw 0,656(31)
	stw 7,660(31)
	stw 9,664(31)
	.loc 4 7782 0
	lwzu 18,4(11)
.LVL5323:
	stw 11,876(31)
.LVL5324:
.LBB19695:
.LBB19688:
	.loc 2 1800 0
	bl _ZN6idVecX7SetSizeEi
.LVL5325:
	.loc 2 1802 0
	lwz 5,44(31)
	cmpwi 7,5,0
	ble- 7,.L3215
.LBB19678:
.LBB19670:
	.loc 9 83 0
	lis 3,.LC18@ha
.LBE19670:
.LBE19678:
	.loc 2 1803 0
	lis 5,.LC19@ha
.LBB19679:
.LBB19671:
	.loc 9 83 0
	la 3,.LC18@l(3)
.LBE19671:
.LBE19679:
	.loc 2 1803 0
	la 5,.LC19@l(5)
.LBB19680:
.LBB19672:
	.loc 9 83 0
	lfs 12,0(3)
.LBE19672:
.LBE19680:
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,0(5)
.LVL5326:
.L3216:
.LBB19681:
.LBB19673:
.LBB19666:
.LBB19663:
	.loc 9 71 0
	mullw 18,18,16
.LVL5327:
.LBE19663:
.LBE19666:
	.loc 9 83 0
	stw 17,832(31)
.LBE19673:
.LBE19681:
	.loc 2 1803 0
	slwi 0,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19682:
.LBB19674:
.LBB19667:
.LBB19664:
	.loc 9 71 0
	addi 18,18,1
.LVL5328:
	.loc 9 72 0
	rlwinm 11,18,0,17,31
.LBE19664:
.LBE19667:
	.loc 9 83 0
	xoris 11,11,0x8000
	stw 11,836(31)
.LBE19674:
.LBE19682:
	.loc 2 1803 0
	lwz 11,52(31)
.LBB19683:
.LBB19675:
	.loc 9 83 0
	lfd 0,832(31)
	fsub 0,0,12
	frsp 0,0
.LBE19675:
.LBE19683:
	.loc 2 1803 0
	fmadds 0,0,13,31
	stfsx 0,11,0
	.loc 2 1802 0
	lwz 5,44(31)
	cmpw 7,9,5
	blt+ 7,.L3216
.LVL5329:
.L3215:
.LBE19688:
.LBE19695:
.LBB19696:
.LBB19697:
	.loc 2 1639 0
	lis 7,SIMDProcessor@ha
	lwz 4,52(31)
	la 7,SIMDProcessor@l(7)
	lwz 3,0(7)
	lwz 9,0(3)
	lwz 0,188(9)
	lis 9,.LC45@ha
	lfs 1,.LC45@l(9)
	mtctr 0
	bctrl
.LBE19697:
.LBE19696:
	.loc 4 7786 0
	lwz 5,872(31)
	mr 3,27
	mr 4,26
	bl _ZN6idMatX25Update_RowColumnSymmetricERK6idVecXi
	.loc 4 7787 0
	mr 3,27
	bl _ZN6idMatX15Cholesky_FactorEv
.LVL5330:
.LBB19698:
.LBB19699:
	.loc 3 2416 0
	lwz 18,596(31)
.LVL5331:
	addic. 18,18,-2
	blt- 0,.L3217
.LVL5332:
.L3559:
	.loc 3 2417 0
	lwz 5,600(31)
	li 4,0
	lwz 3,608(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5333:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5334:
	bne+ 7,.L3559
.L3217:
.LBE19699:
.LBE19698:
	.loc 4 7793 0
	lwz 5,872(31)
	mr 3,28
	mr 4,26
	bl _ZN6idMatX24Cholesky_UpdateRowColumnERK6idVecXi
.LVL5335:
.LBB19700:
.LBB19701:
	.loc 3 2230 0
	lwz 8,612(31)
	lwz 0,616(31)
.LVL5336:
	.loc 3 2231 0
	mullw. 8,8,0
	ble- 0,.L3219
	.loc 3 2232 0
	lwz 11,12(27)
	lis 3,.LC25@ha
	lwz 10,624(31)
.LVL5337:
	la 9,.LC25@l(3)
	lfs 13,0(11)
	mtctr 8
	lfs 12,0(10)
	lfs 0,.LC25@l(3)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19702:
.LBB19703:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19703:
.LBE19702:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3220
.LVL5338:
.L3222:
	.loc 3 2231 0
	bdz .L3219
.LVL5339:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5340:
	lfsu 13,4(11)
.LVL5341:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19705:
.LBB19704:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19704:
.LBE19705:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3222
.LVL5342:
.L3220:
.LBE19701:
.LBE19700:
	.loc 4 7796 0
	lis 5,_ZN5idLib6commonE@ha
	lis 7,.LC65@ha
	lwz 3,_ZN5idLib6commonE@l(5)
	lwz 4,.LC65@l(7)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5343:
.L3219:
.LBE19707:
	.loc 4 7773 0
	lwz 3,872(31)
	cmpwi 7,3,5
	addi 3,3,1
	stw 3,872(31)
	bne+ 7,.L3224
.LVL5344:
.LBE19710:
.LBB19711:
.LBB19712:
.LBB19713:
.LBB19714:
	.loc 3 2250 0
	lwz 0,620(31)
	cmpwi 7,0,51
	bgt- 7,.L3706
	cmpwi 7,0,-1
	beq- 7,.L3706
	.loc 3 2251 0
	lwz 3,624(31)
	cmpwi 7,3,0
	beq- 7,.L3228
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.L3228:
	.loc 3 2254 0
	li 3,208
	bl _Z11Mem_Alloc16i
.LEHE173:
	.loc 3 2255 0
	li 0,52
	.loc 3 2254 0
	stw 3,624(31)
	.loc 3 2255 0
	stw 0,620(31)
	mr 9,3
	b .L3226
.L3706:
	.loc 3 2250 0
	lwz 9,624(31)
	mr 3,9
.L3226:
	.loc 3 2259 0
	li 10,0
.LBE19714:
.LBE19713:
.LBB19719:
.LBB19720:
	.loc 9 83 0
	lis 5,.LC18@ha
.LBE19720:
.LBE19719:
.LBB19734:
.LBB19715:
	.loc 3 2259 0
	stw 10,196(3)
.LBE19715:
.LBE19734:
	.loc 3 2354 0
	lis 7,.LC19@ha
.LBB19735:
.LBB19716:
	.loc 3 2259 0
	stw 10,200(9)
	.loc 3 2257 0
	li 0,7
	.loc 3 2259 0
	stw 10,204(9)
.LBE19716:
.LBE19735:
	.loc 3 2354 0
	la 7,.LC19@l(7)
	stw 10,880(31)
.LBB19736:
.LBB19729:
	.loc 9 83 0
	la 5,.LC18@l(5)
.LBB19721:
.LBB19722:
	.loc 9 71 0
	lis 6,0x1
.LBE19722:
.LBE19721:
.LBE19729:
.LBE19736:
	.loc 3 2354 0
	li 10,49
.LBB19737:
.LBB19717:
	.loc 3 2257 0
	stw 0,612(31)
.LBE19717:
.LBE19737:
	.loc 3 2353 0
	li 11,0
.LBB19738:
.LBB19718:
	.loc 3 2258 0
	stw 0,616(31)
.LVL5345:
.LBE19718:
.LBE19738:
.LBB19739:
.LBB19730:
.LBB19726:
.LBB19723:
	.loc 9 71 0
	ori 6,6,3533
.LBE19723:
.LBE19726:
.LBE19730:
.LBE19739:
	.loc 3 2354 0
	lfs 12,0(7)
	.loc 3 2353 0
	li 0,0
.LBB19740:
.LBB19731:
	.loc 9 83 0
	lfs 11,0(5)
	lis 7,0x4330
.LBE19731:
.LBE19740:
	.loc 3 2354 0
	lfs 13,880(31)
	mtctr 10
	b .L3230
.LVL5346:
.L3751:
	lwz 9,624(31)
.LVL5347:
.L3230:
.LBB19741:
.LBB19732:
.LBB19727:
.LBB19724:
	.loc 9 71 0
	mullw 8,0,6
.LBE19724:
.LBE19727:
	.loc 9 83 0
	stw 7,840(31)
.LBE19732:
.LBE19741:
	.loc 3 2354 0
	slwi 10,11,2
	.loc 3 2353 0
	addi 11,11,1
.LBB19742:
.LBB19733:
.LBB19728:
.LBB19725:
	.loc 9 71 0
	addi 0,8,1
.LVL5348:
	.loc 9 72 0
	rlwinm 8,0,0,17,31
.LBE19725:
.LBE19728:
	.loc 9 83 0
	xoris 8,8,0x8000
	stw 8,844(31)
	lfd 0,840(31)
	fsub 0,0,11
	frsp 0,0
.LBE19733:
.LBE19742:
	.loc 3 2354 0
	fmadds 0,0,12,13
	stfsx 0,9,10
	.loc 3 2353 0
	bdnz .L3751
	lwz 0,616(31)
.LVL5349:
	lwz 9,612(31)
.LBE19712:
.LBE19711:
.LBB19744:
.LBB19745:
.LBB19746:
.LBB19747:
	.loc 3 2267 0
	lwz 10,_ZN6idMatX9tempIndexE@l(14)
.LBE19747:
.LBE19746:
.LBE19745:
.LBE19744:
.LBB19754:
.LBB19743:
	.loc 3 2353 0
	mullw 11,0,9
.LVL5350:
.LBE19743:
.LBE19754:
.LBB19755:
.LBB19752:
.LBB19750:
.LBB19748:
	.loc 3 2265 0
	addi 8,11,3
	rlwinm 8,8,0,0,29
.LVL5351:
	.loc 3 2267 0
	add 7,8,10
	slwi 10,10,2
	cmpwi 7,7,1024
	bgt- 7,.L3752
.L3231:
	.loc 3 2275 0
	cmpw 7,8,11
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 7,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 10,6,10
	.loc 3 2272 0
	stw 8,284(31)
	.loc 3 2270 0
	stw 10,288(31)
	.loc 3 2273 0
	stw 0,276(31)
	.loc 3 2274 0
	stw 9,280(31)
.LVL5352:
	.loc 3 2275 0
	ble- 7,.L3232
	slwi 9,11,2
	li 8,0
.LVL5353:
	b .L3234
.L3753:
	lwz 10,288(31)
.L3234:
	addi 11,11,1
.LVL5354:
	stwx 8,10,9
	.loc 4 7193 0
	addi 0,11,3
	.loc 3 2275 0
	addi 9,9,4
	rlwinm 0,0,0,0,29
	cmpw 7,11,0
	blt+ 7,.L3753
	lwz 9,612(31)
.L3232:
.LVL5355:
.LBE19748:
.LBE19750:
	.loc 3 2568 0
	cmpwi 7,9,0
	ble- 7,.L3236
	lwz 0,616(31)
	li 11,0
.LVL5356:
.L3235:
	.loc 3 2569 0
	cmpwi 7,0,0
	ble- 7,.L3238
	lwz 10,280(31)
	li 9,0
	b .L3239
.LVL5357:
.L3237:
	.loc 3 2568 0
	lwz 10,280(31)
.LVL5358:
.L3239:
	.loc 3 2570 0
	mullw 0,11,0
	lwz 8,624(31)
	mullw 10,9,10
	add 0,9,0
	slwi 0,0,2
	lwzx 8,8,0
	.loc 3 2569 0
	addi 9,9,1
.LVL5359:
	.loc 3 2570 0
	add 0,10,11
	lwz 10,288(31)
	slwi 0,0,2
	stwx 8,10,0
	.loc 3 2569 0
	lwz 0,616(31)
	cmpw 7,9,0
	blt+ 7,.L3237
	lwz 9,612(31)
.LVL5360:
.L3238:
	.loc 3 2568 0
	addi 11,11,1
.LVL5361:
	cmpw 7,11,9
	blt+ 7,.L3235
.LVL5362:
.L3236:
.LBE19752:
.LBE19755:
	.loc 4 7805 0
	addi 3,31,260
	mr 4,28
	addi 5,31,276
.LEHB174:
	bl _ZNK6idMatXmlERKS_
.LEHE174:
.LVL5363:
	.loc 4 7805 0 is_stmt 0 discriminator 2
	mr 3,24
	addi 4,31,260
.LEHB175:
	bl _ZN6idMatXaSERKS_
.LEHE175:
	.loc 4 7805 0 discriminator 1
	lwz 3,272(31)
	lwz 0,268(31)
.LBB19756:
.LBB19757:
.LBB19758:
	.loc 3 2001 0 is_stmt 1 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3240
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3754
	cmpwi 7,0,-1
	beq- 7,.L3240
.L3800:
.LEHB176:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE176:
.L3240:
	.loc 4 7805 0 discriminator 3
	lwz 3,288(31)
	lwz 0,284(31)
.LBE19758:
.LBE19757:
.LBE19756:
.LBB19761:
.LBB19762:
.LBB19763:
	.loc 3 2001 0 discriminator 3
	cmpwi 7,3,0
	beq- 7,.L3242
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3755
	cmpwi 7,0,-1
	beq- 7,.L3242
.L3801:
.LEHB177:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3242:
.LVL5364:
.LBE19763:
.LBE19762:
.LBE19761:
.LBB19766:
.LBB19767:
.LBB19768:
.LBB19769:
.LBB19770:
	.loc 3 2250 0
	lwz 0,620(31)
	.loc 3 2251 0
	lwz 3,624(31)
	.loc 3 2250 0
	cmpwi 7,0,35
	bgt- 7,.L3245
	cmpwi 7,0,-1
	beq- 7,.L3245
	.loc 3 2251 0
	cmpwi 7,3,0
	beq- 7,.L3247
	.loc 3 2252 0
	bl _Z10Mem_Free16Pv
.L3247:
	.loc 3 2254 0
	li 3,144
	bl _Z11Mem_Alloc16i
	.loc 3 2255 0
	li 0,36
	.loc 3 2254 0
	stw 3,624(31)
	.loc 3 2255 0
	stw 0,620(31)
.L3245:
	.loc 3 2257 0
	li 0,6
	.loc 3 2258 0
	lwz 9,4(24)
	.loc 3 2257 0
	stw 0,612(31)
	.loc 3 2258 0
	li 10,0
	stw 0,616(31)
.LVL5365:
	mtctr 0
	b .L3249
.LVL5366:
.L3756:
.LBE19770:
.LBE19769:
	.loc 3 2432 0
	lwz 3,624(31)
	lwz 0,616(31)
	lwz 9,4(24)
.LVL5367:
.L3249:
	.loc 3 2433 0
	mullw 9,10,9
	lwz 8,12(24)
	mullw 0,10,0
	slwi 9,9,2
	add 11,8,9
	lwzx 5,8,9
	lwz 6,4(11)
	.loc 3 2432 0
	addi 10,10,1
.LVL5368:
	.loc 3 2433 0
	lwz 8,12(11)
	lwz 7,8(11)
	slwi 0,0,2
	add 9,3,0
	stwx 5,3,0
	stw 6,4(9)
	stw 7,8(9)
	stw 8,12(9)
	lwz 8,16(11)
	lwz 0,20(11)
	stw 8,16(9)
	stw 0,20(9)
	.loc 3 2432 0
	bdnz .L3756
.LBE19768:
.LBE19767:
.LBE19766:
	.loc 4 7808 0
	mr 3,27
	mr 4,28
	bl _ZN6idMatXaSERKS_
.LVL5369:
	.loc 4 7810 0
	mr 3,26
	li 4,7
	bl _ZN6idVecX7SetSizeEi
	li 11,7
	li 9,0
	mtctr 11
.L3250:
.LVL5370:
.LBB19771:
.LBB19772:
.LBB19773:
	.loc 3 2056 0 discriminator 2
	lwz 0,4(24)
.LBE19773:
.LBE19772:
	.loc 4 7812 0 discriminator 2
	lwz 10,12(24)
.LBB19775:
.LBB19774:
	.loc 3 2056 0 discriminator 2
	mulli 0,0,6
.LBE19774:
.LBE19775:
	.loc 4 7812 0 discriminator 2
	lwz 11,8(26)
	slwi 0,0,2
	add 10,10,0
	lwzx 0,10,9
	stwx 0,11,9
	addi 9,9,4
	.loc 4 7811 0 discriminator 2
	bdnz .L3250
.LBE19771:
	.loc 4 7816 0
	mr 3,28
	bl _ZN6idMatX15Cholesky_FactorEv
	.loc 4 7819 0
	mr 3,27
	mr 4,26
	bl _ZN6idMatX25Update_IncrementSymmetricERK6idVecX
	.loc 4 7820 0
	mr 3,27
	bl _ZN6idMatX15Cholesky_FactorEv
	.loc 4 7825 0
	mr 3,28
	mr 4,26
	bl _ZN6idMatX24Cholesky_UpdateIncrementERK6idVecX
.LVL5371:
.LBB19776:
.LBB19777:
	.loc 3 2416 0
	lwz 18,612(31)
.LVL5372:
	addic. 18,18,-2
	blt- 0,.L3251
.LVL5373:
.L3558:
	.loc 3 2417 0
	lwz 5,616(31)
	li 4,0
	lwz 3,624(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5374:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5375:
	bne+ 7,.L3558
.L3251:
.LVL5376:
.LBE19777:
.LBE19776:
.LBB19778:
.LBB19779:
	lwz 18,596(31)
.LVL5377:
	addic. 18,18,-2
	blt- 0,.L3253
.LVL5378:
.L3557:
	.loc 3 2417 0
	lwz 5,600(31)
	li 4,0
	lwz 3,608(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5379:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5380:
	bne+ 7,.L3557
.L3253:
.LVL5381:
.LBE19779:
.LBE19778:
.LBB19780:
.LBB19781:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5382:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3255
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL5383:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19782:
.LBB19783:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19783:
.LBE19782:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3256
.LVL5384:
.L3258:
	.loc 3 2231 0
	bdz .L3255
.LVL5385:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5386:
	lfsu 13,4(11)
.LVL5387:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19785:
.LBB19784:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19784:
.LBE19785:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3258
.LVL5388:
.L3256:
.LBE19781:
.LBE19780:
	.loc 4 7831 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC47@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC47@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5389:
.L3255:
.LBB19789:
.LBB19786:
	.loc 3 2232 0 discriminator 1
	li 18,0
.LVL5390:
.LBE19786:
.LBE19789:
.LBB19790:
.LBB19791:
.LBB19792:
.LBB19793:
	lis 17,.LC25@ha
.LBE19793:
.LBE19792:
	.loc 4 7860 0 discriminator 1
	lis 16,_ZN5idLib6commonE@ha
.LVL5391:
.L3267:
	.loc 4 7839 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7840 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7842 0
	mr 3,29
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LBE19791:
.LBE19790:
.LBB19805:
.LBB19787:
	.loc 4 7193 0
	li 3,6
.LBE19787:
.LBE19805:
.LBB19806:
.LBB19803:
	lwz 0,4(30)
	slwi 8,18,2
.LBE19803:
.LBE19806:
.LBB19807:
.LBB19788:
	li 9,0
	mtctr 3
	b .L3261
.LVL5392:
.L3757:
.LBE19788:
.LBE19807:
.LBB19808:
.LBB19804:
.LBB19799:
	.loc 4 7843 0
	lwz 0,4(30)
.LVL5393:
.L3261:
.LBB19800:
.LBB19801:
	.loc 3 2056 0 discriminator 2
	mullw 10,9,0
.LBE19801:
.LBE19800:
	.loc 4 7844 0 discriminator 2
	lwz 7,12(30)
	lwz 11,8(29)
	slwi 0,9,2
	.loc 4 7843 0 discriminator 2
	addi 9,9,1
.LVL5394:
	.loc 4 7844 0 discriminator 2
	slwi 10,10,2
	add 10,7,10
	lwzx 10,10,8
	stwx 10,11,0
	.loc 4 7843 0 discriminator 2
	bdnz .L3757
.LBE19799:
	.loc 4 7848 0
	mr 3,28
	bl _ZN6idMatX15Cholesky_FactorEv
.LVL5395:
	.loc 4 7851 0
	mr 4,18
	mr 3,27
	bl _ZN6idMatX16Update_DecrementEi
	.loc 4 7852 0
	mr 3,27
	bl _ZN6idMatX15Cholesky_FactorEv
	.loc 4 7857 0
	mr 3,28
	mr 4,29
	mr 5,18
	bl _ZN6idMatX24Cholesky_UpdateDecrementERK6idVecXi
.LVL5396:
.LBB19802:
.LBB19798:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5397:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3262
	.loc 3 2232 0
	lwz 11,12(27)
	la 9,.LC25@l(17)
	lwz 10,624(31)
.LVL5398:
	mtctr 0
	lfs 13,0(11)
	lfs 12,0(10)
	lfs 0,.LC25@l(17)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 8,880(31)
.LBB19794:
.LBB19795:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19795:
.LBE19794:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3263
.LVL5399:
.L3265:
	.loc 3 2231 0
	bdz .L3262
.LVL5400:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5401:
	lfsu 13,4(11)
.LVL5402:
	lfs 0,0(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19797:
.LBB19796:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19796:
.LBE19797:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3265
.LVL5403:
.L3263:
.LBE19798:
.LBE19802:
	.loc 4 7860 0
	lwz 3,_ZN5idLib6commonE@l(16)
	lis 5,.LC66@ha
	lwz 4,.LC66@l(5)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5404:
.L3262:
.LBE19804:
	.loc 4 7838 0
	cmpwi 7,18,5
	addi 18,18,5
.LVL5405:
	bne- 7,.L3267
.LBE19808:
	.loc 4 7868 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7870 0
	mr 3,27
	bl _ZN6idMatX15Cholesky_FactorEv
	.loc 4 7871 0
	mr 3,27
	mr 4,28
	bl _ZNK6idMatX16Cholesky_InverseERS_
.LVL5406:
.LBB19809:
.LBB19810:
	.loc 3 2163 0
	addi 3,31,84
	mr 4,28
	mr 5,30
	bl _ZNK6idMatXmlERKS_
.LEHE177:
	mr 3,28
	addi 4,31,84
.LEHB178:
	bl _ZN6idMatXaSERKS_
.LEHE178:
.LBE19810:
	lwz 3,96(31)
	lwz 0,92(31)
.LBB19817:
.LBB19811:
.LBB19812:
.LBB19813:
	.loc 3 2001 0
	cmpwi 7,3,0
	beq- 7,.L3268
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3758
	cmpwi 7,0,-1
	beq- 7,.L3268
.L3802:
.LEHB179:
	.loc 3 2002 0
	bl _Z10Mem_Free16Pv
.L3268:
.LBE19813:
.LBE19812:
.LBE19811:
.LBE19817:
.LBE19809:
.LBB19821:
.LBB19822:
	.loc 3 2470 0
	lwz 6,612(31)
.LBE19822:
.LBE19821:
.LBB19831:
.LBB19818:
	.loc 3 2164 0
	li 0,0
	stw 0,_ZN6idMatX9tempIndexE@l(14)
.LVL5407:
.LBE19818:
.LBE19831:
.LBB19832:
.LBB19829:
	.loc 3 2470 0
	cmpwi 7,6,0
	ble- 7,.L3270
	lwz 8,616(31)
.LBB19823:
	li 10,0
.LBE19823:
	.loc 4 7193 0
	lwz 7,624(31)
	lis 5,.LC20@ha
	cmpwi 6,8,0
	slwi 4,8,2
	addi 7,7,-4
.LVL5408:
.L3271:
.LBB19828:
	.loc 3 2471 0
	ble- 6,.L3276
	.loc 3 2472 0
	lfs 12,.LC20@l(5)
	.loc 3 2471 0
	mr 11,7
	li 9,0
	.loc 3 2472 0
	mtctr 8
	b .L3275
.LVL5409:
.L3273:
	fsubs 0,13,0
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19824:
.LBB19825:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19825:
.LBE19824:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bgt- 7,.L3274
.LVL5410:
.L3759:
	.loc 3 2471 0
	addi 9,9,1
.LVL5411:
	bdz .L3276
.LVL5412:
.L3275:
	.loc 3 2472 0
	cmpw 7,10,9
	lis 3,.LC9@ha
	lfsu 13,4(11)
	lfs 0,.LC9@l(3)
	bne+ 7,.L3273
	lis 3,.LC1@ha
	lfs 0,.LC1@l(3)
.LVL5413:
	fsubs 0,13,0
.LVL5414:
	stfs 0,880(31)
	lwz 0,880(31)
.LBB19827:
.LBB19826:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19826:
.LBE19827:
	.loc 3 2472 0
	stw 0,880(31)
	lfs 0,880(31)
	fcmpu 7,0,12
	bng+ 7,.L3759
.LVL5415:
.L3274:
.LBE19828:
.LBE19829:
.LBE19832:
	.loc 4 7875 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC49@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC49@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5416:
.L3270:
	.loc 4 7882 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7884 0
	mr 3,28
	bl _ZN6idMatX11LDLT_FactorEv
	.loc 4 7885 0
	mr 3,28
	mr 4,27
	bl _ZNK6idMatX20LDLT_MultiplyFactorsERS_
.LVL5417:
.LBB19833:
.LBB19834:
	.loc 3 2230 0
	lwz 9,628(31)
	lwz 0,632(31)
.LVL5418:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3277
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,640(31)
.LVL5419:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19835:
.LBB19836:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19836:
.LBE19835:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3278
.LVL5420:
.L3280:
	.loc 3 2231 0
	bdz .L3277
.LVL5421:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5422:
	lfsu 13,4(11)
.LVL5423:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19838:
.LBB19837:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19837:
.LBE19838:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3280
.LVL5424:
.L3278:
.LBE19834:
.LBE19833:
	.loc 4 7888 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC50@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC50@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5425:
.L3277:
	.loc 4 7891 0
	mr 3,28
	mr 4,27
	mr 5,24
	bl _ZNK6idMatX18LDLT_UnpackFactorsERS_S0_
	.loc 4 7892 0
	addi 3,31,244
	mr 4,27
	mr 5,24
	bl _ZNK6idMatXmlERKS_
.LEHE179:
.LVL5426:
.LBB19839:
.LBB19840:
	.loc 3 2566 0
	lwz 0,600(31)
	lwz 10,596(31)
.LVL5427:
.LBB19841:
.LBB19842:
	.loc 3 2267 0
	lwz 8,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2265 0
	mullw 9,0,10
	addi 11,9,3
	rlwinm 11,11,0,0,29
.LVL5428:
	.loc 3 2267 0
	add 7,11,8
	slwi 8,8,2
	cmpwi 7,7,1024
	ble- 7,.L3282
	mr 7,11
	li 8,0
.L3282:
	.loc 3 2275 0
	cmpw 7,9,11
	.loc 3 2270 0
	lwz 6,_ZN6idMatX7tempPtrE@l(15)
	.loc 3 2271 0
	stw 7,_ZN6idMatX9tempIndexE@l(14)
	.loc 3 2270 0
	add 8,6,8
	.loc 3 2272 0
	stw 11,236(31)
	.loc 3 2270 0
	stw 8,240(31)
	.loc 3 2273 0
	stw 0,228(31)
	.loc 3 2274 0
	stw 10,232(31)
.LVL5429:
	.loc 3 2275 0
	bge- 7,.L3283
	slwi 11,9,2
.LVL5430:
	li 10,0
	b .L3285
.L3760:
	lwz 8,240(31)
.L3285:
	addi 9,9,1
.LVL5431:
	stwx 10,8,11
	.loc 4 7193 0
	addi 0,9,3
	.loc 3 2275 0
	addi 11,11,4
	rlwinm 0,0,0,0,29
	cmpw 7,9,0
	blt+ 7,.L3760
	lwz 10,596(31)
.L3283:
.LVL5432:
.LBE19842:
.LBE19841:
	.loc 3 2568 0
	cmpwi 7,10,0
	ble- 7,.L3287
	lwz 0,600(31)
	li 11,0
.LVL5433:
.L3286:
	.loc 3 2569 0
	cmpwi 7,0,0
	ble- 7,.L3289
	lwz 10,232(31)
	li 9,0
	b .L3290
.LVL5434:
.L3288:
	.loc 3 2568 0
	lwz 10,232(31)
.LVL5435:
.L3290:
	.loc 3 2570 0
	mullw 0,11,0
	lwz 8,608(31)
	mullw 10,9,10
	add 0,9,0
	slwi 0,0,2
	lwzx 8,8,0
	.loc 3 2569 0
	addi 9,9,1
.LVL5436:
	.loc 3 2570 0
	add 0,10,11
	lwz 10,240(31)
	slwi 0,0,2
	stwx 8,10,0
	.loc 3 2569 0
	lwz 0,600(31)
	cmpw 7,9,0
	blt+ 7,.L3288
	lwz 10,596(31)
.LVL5437:
.L3289:
	.loc 3 2568 0
	addi 11,11,1
.LVL5438:
	cmpw 7,11,10
	blt+ 7,.L3286
.LVL5439:
.L3287:
.LBE19840:
.LBE19839:
	.loc 4 7892 0 discriminator 1
	addi 3,31,212
	addi 4,31,244
	addi 5,31,228
.LEHB180:
	bl _ZNK6idMatXmlERKS_
.LEHE180:
.LVL5440:
	.loc 4 7892 0 is_stmt 0 discriminator 3
	mr 3,27
	addi 4,31,212
.LEHB181:
	bl _ZN6idMatXaSERKS_
.LEHE181:
	.loc 4 7892 0 discriminator 1
	lwz 3,224(31)
	lwz 0,220(31)
.LBB19843:
.LBB19844:
.LBB19845:
	.loc 3 2001 0 is_stmt 1 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L3291
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3761
	cmpwi 7,0,-1
	beq- 7,.L3291
.L3805:
.LEHB182:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE182:
.L3291:
	.loc 4 7892 0 discriminator 4
	lwz 3,240(31)
	lwz 0,236(31)
.LBE19845:
.LBE19844:
.LBE19843:
.LBB19848:
.LBB19849:
.LBB19850:
	.loc 3 2001 0 discriminator 4
	cmpwi 7,3,0
	beq- 7,.L3293
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3762
	cmpwi 7,0,-1
	beq- 7,.L3293
.L3804:
.LEHB183:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.LEHE183:
.L3293:
	.loc 4 7892 0 discriminator 5
	lwz 3,256(31)
	lwz 0,252(31)
.LBE19850:
.LBE19849:
.LBE19848:
.LBB19853:
.LBB19854:
.LBB19855:
	.loc 3 2001 0 discriminator 5
	cmpwi 7,3,0
	beq- 7,.L3295
	.loc 3 2001 0 is_stmt 0
	lwz 9,_ZN6idMatX7tempPtrE@l(15)
	cmplw 7,3,9
	bge- 7,.L3763
	cmpwi 7,0,-1
	beq- 7,.L3295
.L3803:
.LEHB184:
	.loc 3 2002 0 is_stmt 1
	bl _Z10Mem_Free16Pv
.L3295:
.LVL5441:
.LBE19855:
.LBE19854:
.LBE19853:
.LBB19858:
.LBB19859:
	.loc 3 2230 0
	lwz 9,628(31)
	lwz 0,632(31)
.LVL5442:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3297
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,640(31)
.LVL5443:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19860:
.LBB19861:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19861:
.LBE19860:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3298
.LVL5444:
.L3300:
	.loc 3 2231 0
	bdz .L3297
.LVL5445:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5446:
	lfsu 13,4(11)
.LVL5447:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19863:
.LBB19862:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19862:
.LBE19863:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3300
.LVL5448:
.L3298:
.LBE19859:
.LBE19858:
	.loc 4 7895 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC50@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC50@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5449:
.L3297:
	.loc 4 7902 0
	mr 3,28
	mr 4,30
	bl _ZN6idMatXaSERKS_
	.loc 4 7903 0
	mr 3,27
	mr 4,30
	bl _ZN6idMatXaSERKS_
.LVL5450:
.LBB19864:
.LBB19865:
	.loc 2 1800 0
	mr 3,26
	li 4,6
	bl _ZN6idVecX7SetSizeEi
.LVL5451:
	.loc 2 1802 0
	lwz 0,44(31)
	cmpwi 7,0,0
	ble- 7,.L3302
.LBB19866:
.LBB19867:
	.loc 9 83 0
	lis 3,.LC18@ha
.LBE19867:
.LBE19866:
	.loc 2 1803 0
	lis 5,.LC19@ha
.LBB19881:
.LBB19876:
	.loc 9 83 0
	la 3,.LC18@l(3)
.LBE19876:
.LBE19881:
	.loc 2 1803 0
	la 5,.LC19@l(5)
	lis 10,.LC9@ha
.LBB19882:
.LBB19877:
.LBB19868:
.LBB19869:
	.loc 9 71 0
	lis 7,0x1
.LBE19869:
.LBE19868:
	.loc 9 83 0
	lfs 11,0(3)
.LBE19877:
.LBE19882:
	.loc 2 1802 0
	li 0,0
	.loc 2 1803 0
	lfs 12,0(5)
	.loc 2 1802 0
	li 9,0
	.loc 2 1803 0
	lfs 13,.LC9@l(10)
.LBB19883:
.LBB19878:
.LBB19873:
.LBB19870:
	.loc 9 71 0
	ori 7,7,3533
.LBE19870:
.LBE19873:
	.loc 9 83 0
	lis 8,0x4330
.LVL5452:
.L3303:
.LBB19874:
.LBB19871:
	.loc 9 71 0
	mullw 10,0,7
.LBE19871:
.LBE19874:
	.loc 9 83 0
	stw 8,848(31)
.LBE19878:
.LBE19883:
	.loc 2 1803 0
	slwi 11,9,2
	.loc 2 1802 0
	addi 9,9,1
.LBB19884:
.LBB19879:
.LBB19875:
.LBB19872:
	.loc 9 71 0
	addi 0,10,1
.LVL5453:
	.loc 9 72 0
	rlwinm 10,0,0,17,31
.LBE19872:
.LBE19875:
	.loc 9 83 0
	xoris 10,10,0x8000
	stw 10,852(31)
.LBE19879:
.LBE19884:
	.loc 2 1803 0
	lwz 10,52(31)
.LBB19885:
.LBB19880:
	.loc 9 83 0
	lfd 0,848(31)
	fsub 0,0,11
	frsp 0,0
.LBE19880:
.LBE19885:
	.loc 2 1803 0
	fmadds 0,0,12,13
	stfsx 0,10,11
	.loc 2 1802 0
	lwz 11,44(31)
	cmpw 7,9,11
	blt+ 7,.L3303
.LVL5454:
.L3302:
.LBE19865:
.LBE19864:
	.loc 4 7908 0
	mr 3,28
	bl _ZN6idMatX11LDLT_FactorEv
.LVL5455:
.LBB19886:
.LBB19887:
	.loc 3 2416 0
	lwz 18,612(31)
.LVL5456:
	addic. 18,18,-2
	blt- 0,.L3304
.LVL5457:
.L3556:
	.loc 3 2417 0
	lwz 5,616(31)
	li 4,0
	lwz 3,624(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5458:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5459:
	bne+ 7,.L3556
.L3304:
.LBE19887:
.LBE19886:
	.loc 4 7912 0
	lis 11,.LC1@ha
	mr 4,26
	lfs 1,.LC1@l(11)
	mr 3,27
	bl _ZN6idMatX23Update_RankOneSymmetricERK6idVecXf
	.loc 4 7913 0
	mr 3,27
	bl _ZN6idMatX11LDLT_FactorEv
.LVL5460:
.LBB19888:
.LBB19889:
	.loc 3 2416 0
	lwz 18,596(31)
.LVL5461:
	addic. 18,18,-2
	blt- 0,.L3306
.LVL5462:
.L3555:
	.loc 3 2417 0
	lwz 5,600(31)
	li 4,0
	lwz 3,608(31)
	addi 9,5,1
	addi 5,5,-1
	mullw 9,18,9
	subf 5,18,5
	slwi 5,5,2
	addi 0,9,1
	slwi 0,0,2
	add 3,3,0
	bl memset
.LVL5463:
	.loc 3 2416 0
	cmpwi 7,18,0
	addi 18,18,-1
.LVL5464:
	bne+ 7,.L3555
.L3306:
.LBE19889:
.LBE19888:
	.loc 4 7919 0
	lis 3,.LC1@ha
	mr 4,26
	lfs 1,.LC1@l(3)
	li 5,0
	mr 3,28
	bl _ZN6idMatX18LDLT_UpdateRankOneERK6idVecXfi
.LVL5465:
.LBB19890:
.LBB19891:
	.loc 3 2230 0
	lwz 9,612(31)
	lwz 0,616(31)
.LVL5466:
	.loc 3 2231 0
	mullw. 0,9,0
	ble- 0,.L3308
	.loc 3 2232 0
	lwz 11,12(27)
	lis 9,.LC20@ha
	lwz 10,624(31)
.LVL5467:
	mtctr 0
	lfs 0,0(11)
	lfs 13,0(10)
	fsubs 0,13,0
	stfs 0,880(31)
	lfs 0,.LC20@l(9)
	lwz 8,880(31)
.LBB19892:
.LBB19893:
	.loc 5 781 0
	rlwinm 8,8,0,1,31
.LBE19893:
.LBE19892:
	.loc 3 2232 0
	stw 8,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bgt- 7,.L3309
.LVL5468:
.L3311:
	.loc 3 2231 0
	bdz .L3308
.LVL5469:
	.loc 3 2232 0
	lfsu 12,4(10)
.LVL5470:
	lfsu 13,4(11)
.LVL5471:
	lfs 0,.LC20@l(9)
	fsubs 13,12,13
	stfs 13,880(31)
	lwz 0,880(31)
.LBB19895:
.LBB19894:
	.loc 5 781 0
	rlwinm 0,0,0,1,31
.LBE19894:
.LBE19895:
	.loc 3 2232 0
	stw 0,880(31)
	lfs 13,880(31)
	fcmpu 7,13,0
	bng+ 7,.L3311
.LVL5472:
.L3309:
.LBE19891:
.LBE19890:
	.loc 4 7922 0
	lis 9,_ZN5idLib6commonE@ha
	lis 4,.LC51@ha
	lwz 3,_ZN5idLib6commonE@l(9)
	la 4,.LC51@l(4)
	lwz 9,0(3)
	lwz 0,80(9)
	mtctr 0
	crxor 6,6,6
	bctrl
.LVL5473:
.L3308:
.LBB19897:
.LBB19898:
	.loc 2 1803 0 discriminator 1
	lis 3,.LC9@ha
.LBB19899:
.LBB19900:
.LBB19901:
.LBB19902:
	.loc 9 71 0 discriminator 1
	lis 17,0x1
.LBE19902:
.LBE19901:
.LBE19900:
.LBE19899:
	.loc 2 1803 0 discriminator 1
	lfs 31,.LC9@l(3)