; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    ld [de], a
    inc de
    inc de
    add hl, bc
    ld d, $0f
    inc d
    inc d
    jr jr_017_4023

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
    db $10
    ld de, $0805
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    inc c
    rrca
    rrca
    ld [de], a
    inc a
    inc a
    inc a

jr_017_4023:
    ld d, b
    ld d, b
    ld b, e
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld b, b
    ld b, c
    ld d, e
    nop
    nop
    ld c, h
    ld c, [hl]
    nop
    ld c, a
    nop
    ld b, h
    ld b, l
    ld d, a
    nop
    ld b, a
    ld c, d
    ld d, h
    ld h, b
    nop
    nop
    ld c, b
    ld c, c
    ld e, e
    ld d, d
    ld b, [hl]
    dec bc
    ld [hl], h
    add hl, bc
    dec bc
    ld [hl], h
    inc a
    inc a
    inc a
    inc a
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    ccf
    ld c, e
    ld e, b
    ld e, c
    ld e, d
    nop
    ld b, a
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld b, [hl]
    nop
    nop
    jr nz, jr_017_4076

    ld bc, $0c02
    dec c
    dec c
    ld hl, $0504
    rlca
    rlca
    ld [hl+], a
    inc hl
    ld [$0f0f], sp
    rrca

jr_017_4076:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $06
    inc bc
    inc bc
    rlca
    ld de, $1415
    db $10
    ld [$0500], sp
    add hl, bc
    ld c, $0f
    inc c
    dec c
    ld e, [hl]
    ld e, h
    ld [hl], e
    ld e, h
    ld e, a
    ld a, [hl-]
    nop
    nop
    ld h, d
    ld h, e
    ld a, [hl-]
    nop
    nop
    ld h, b
    ld h, h
    ld a, [hl-]
    nop
    dec bc
    ld h, c
    ld h, l
    inc b
    inc b
    inc b
    db $10
    ld b, b
    rst $08
    ld b, b
    or b
    ld b, b
    nop
    ret nc

    ld b, b
    call Call_000_3c3c
    ld hl, $40bc
    ld a, [$d60c]
    jp Jump_000_3d97


    ret nz

    ld b, b
    adc $40
    xor a
    ldh [$b4], a
    ld a, $08
    ld [$d528], a
    ld a, $01
    ld [$d60c], a
    ret


    ret


    ld d, b
    ld a, [bc]
    ld bc, $0701
    ld [bc], a
    dec h
    nop
    nop
    or $c6
    ld bc, $3e07
    ld c, e
    ld [$d2f7], a
    ld a, $3d
    call Call_000_3e6d
    xor a
    ld [$d2f7], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    jr nz, jr_017_4130

    dec hl
    ld b, c
    rst $30
    ld b, b
    nop
    pop bc
    ld b, d
    ld a, $01
    ld [$cf0c], a
    xor a
    ld [$cc3c], a
    ld hl, $4109
    ld a, [$d619]
    jp Jump_000_3d97


    dec c
    ld b, c
    ld a, [hl+]
    ld b, c
    ld a, [$d361]
    cp $04
    ret nz

    ld a, [$d362]
    cp $09
    jr z, jr_017_4120

    ld a, [$d362]
    cp $0a
    ret nz

jr_017_4120:
    xor a
    ldh [$b4], a
    ld a, $01
    ldh [$8c], a
    jp Jump_000_2920


    ret


    dec [hl]
    ld b, c
    ld b, a
    ld b, d
    ld d, [hl]

jr_017_4130:
    ld b, d
    and e
    ld b, d
    or d
    ld b, d
    ld [$61fa], sp
    db $d3
    cp $04
    jr nz, jr_017_4147

    ld a, [$d362]
    cp $0d
    jp z, Jump_017_41f9

    jr jr_017_4163

jr_017_4147:
    cp $03
    jr nz, jr_017_4153

    ld a, [$d362]
    cp $0c
    jp z, Jump_017_41f9

jr_017_4153:
    ld a, [$d754]
    bit 0, a
    jr nz, jr_017_416a

    ld hl, $423d
    call Call_000_3c49
    jp Jump_017_4217


jr_017_4163:
    ld a, [$d754]
    bit 0, a
    jr z, jr_017_4173

jr_017_416a:
    ld hl, $4242
    call Call_000_3c49
    jp Jump_017_4217


jr_017_4173:
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    xor a
    ldh [$b4], a
    ld hl, $421f
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_017_41da

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $50
    ldh [$a1], a
    call Call_000_35a6
    jr nc, jr_017_41a4

    ld hl, $4229
    call Call_000_3c49
    jp Jump_017_41da


jr_017_41a4:
    ld hl, $4224
    call Call_000_3c49
    ld hl, $d754
    set 0, [hl]
    xor a
    ld [$cd3d], a
    ld [$cd3e], a
    ld a, $50
    ld [$cd3f], a
    ld hl, $cd3f
    ld de, $d349
    ld c, $03
    ld a, $0c
    call Call_000_3e6d
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld a, $b2
    call Call_000_3740
    call Call_000_3748
    jr jr_017_41f2

Jump_017_41da:
jr_017_41da:
    ld hl, $421a
    call Call_000_3c49
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    call Call_000_3486
    call Call_000_2429
    jr jr_017_4217

jr_017_41f2:
    ld a, $01
    ld [$d619], a
    jr jr_017_4217

Jump_017_41f9:
    ld hl, $422e
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    cp $00
    jr nz, jr_017_4211

    ld hl, $4233
    call Call_000_3c49
    jr jr_017_4217

jr_017_4211:
    ld hl, $4238
    call Call_000_3c49

Jump_017_4217:
jr_017_4217:
    jp Jump_000_24d7


    rla
    inc l
    ld h, l
    dec h
    ld d, b
    rla
    add hl, sp
    ld h, l
    dec h
    ld d, b
    rla
    ld [hl], d
    ld h, l
    dec h
    ld d, b
    rla
    adc d
    ld h, l
    dec h
    ld d, b
    rla
    and a
    ld h, l
    dec h
    ld d, b
    rla
    pop af
    ld h, l
    dec h
    ld d, b
    rla
    ld [hl], $66
    dec h
    ld d, b
    rla
    ld d, a
    ld h, [hl]
    dec h
    ld d, b
    rla
    ld [hl], l
    ld h, [hl]
    dec h
    ld d, b
    ld [$5121], sp
    ld b, d
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    sub e
    ld h, [hl]
    dec h
    ld d, b
    ld [$54fa], sp
    rst $10
    bit 1, a
    jr nz, jr_017_4285

    ld hl, $428e
    call Call_000_3c49
    ld bc, $1f01
    call Call_000_3e2e
    jr nc, jr_017_4280

    ld hl, $d754
    set 1, [hl]
    ld a, $34
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $4293
    jr jr_017_4288

jr_017_4280:
    ld hl, $429e
    jr jr_017_4288

jr_017_4285:
    ld hl, $4299

jr_017_4288:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    or h
    ld h, [hl]
    dec h
    ld d, b
    rla
    sub b
    ld h, a
    dec h
    dec bc
    ld d, b
    rla
    xor b
    ld h, a
    dec h
    ld d, b
    rla
    ret


    ld h, a
    dec h
    ld d, b
    ld [$ad21], sp
    ld b, d
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    add sp, $67
    dec h
    ld d, b
    ld [$bc21], sp
    ld b, d
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    inc hl
    ld l, b
    dec h
    ld d, b
    ld a, [bc]
    dec b
    rlca
    ld a, [bc]
    nop
    rst $38
    rlca
    dec bc
    nop
    rst $38
    rlca
    db $10
    ld bc, $07ff
    ld de, $ff01
    rlca
    rlca
    nop
    dec [hl]
    nop
    dec b
    jr nz, jr_017_42e3

    db $10
    rst $38
    jp nc, Jump_000_0b01

    ld [$ff05], sp

jr_017_42e3:
    rst $38
    ld [bc], a
    jr nz, jr_017_42ed

    inc de
    rst $38
    ret nc

    inc bc
    jr nz, jr_017_42f5

jr_017_42ed:
    dec d
    rst $38
    rst $38
    inc b
    ld b, l
    ld b, $14
    rst $38

jr_017_42f5:
    rst $38
    dec b
    ld l, $c7
    rlca
    ld a, [bc]
    ld l, $c7
    rlca
    dec bc
    ld sp, $07c7
    db $10
    ld sp, $07c7
    ld de, $c72c
    rlca
    rlca
    ld a, [bc]
    inc b
    rlca
    ld c, b
    ld b, b
    ld a, [de]
    ld b, e
    rla
    ld b, e
    nop
    ld c, e
    ld b, e
    jp Jump_000_3c3c


    jr z, @+$45

    dec l
    ld b, e
    ld [hl-], a
    ld b, e
    scf
    ld b, e
    inc a
    ld b, e
    ld b, c
    ld b, e
    ld b, [hl]
    ld b, e
    rla
    ld b, c
    ld l, b
    dec h
    ld d, b
    rla
    ld l, c
    ld l, b
    dec h
    ld d, b
    rla
    or c
    ld l, b
    dec h
    ld d, b
    rla
    rst $08
    ld l, b
    dec h
    ld d, b
    rla
    ld de, $2569

jr_017_4340:
    ld d, b
    rla
    inc sp
    ld l, c
    dec h
    ld d, b
    rla
    ld c, e
    ld l, c
    dec h
    ld d, b
    ld a, [bc]
    ld bc, $0707
    inc b
    inc [hl]
    ld [bc], a
    ld [bc], a
    dec bc
    ld b, $05
    ld [bc], a
    rlca
    dec b
    inc b
    dec bc
    dec b
    cp $02
    ld bc, $0925
    inc b
    rst $38
    ret nc

    ld [bc], a
    jr nz, jr_017_4370

    dec bc
    rst $38
    ret nc

    inc bc
    dec e
    add hl, bc
    rrca
    rst $38
    rst $38

jr_017_4370:
    inc b
    ld c, $09
    db $10
    rst $38
    ret nc

    dec b
    jr nz, jr_017_4340

    rlca
    rlca
    rlca
    rlca
    dec b
    ld e, b
    ld b, l
    dec [hl]
    ld b, h
    add a
    ld b, e
    nop
    ld l, $45
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_43a4
    call Call_000_3c3c
    ld hl, $4441
    ld de, $43ca
    ld a, [$d5fc]
    call Call_000_3160
    ld [$d5fc], a
    ret


Call_017_43a4:
    ld hl, $43ad
    ld de, $43b9
    jp Jump_000_317f


    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, b

Jump_017_43bf:
    xor a
    ld [$cd6b], a
    ld [$d5fc], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    jp nc, $fa43

    ld d, a
    ret nc

    cp $ff
    jp z, Jump_017_43bf

    ld a, $f0
    ld [$cd6b], a

Call_017_43df:
    ld a, $04
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d755
    set 7, [hl]
    ld bc, $ea01
    call Call_000_3e2e
    jr nc, jr_017_4401

    ld a, $05
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d755
    set 6, [hl]
    jr jr_017_4408

jr_017_4401:
    ld a, $06
    ldh [$8c], a
    call Call_000_2920

jr_017_4408:
    ld hl, $d356
    set 0, [hl]
    ld hl, $d72a
    set 0, [hl]
    ld a, $04
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $22
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d7eb
    res 0, [hl]
    res 7, [hl]
    ld hl, $d755
    set 2, [hl]
    jp Jump_017_43bf


    ld c, [hl]
    ld b, h
    add $44
    rst $18
    ld b, h
    xor b
    ld b, h
    xor l
    ld b, h
    or a
    ld b, h
    ld [bc], a
    ld d, b
    ld d, l
    rst $10
    ret nc

    ld b, h
    jp c, $d544

    ld b, h
    push de
    ld b, h
    rst $38
    ld [$55fa], sp
    rst $10
    bit 7, a
    jr z, jr_017_446a

    bit 6, a
    jr nz, jr_017_4462

    call z, Call_017_43df
    call Call_000_30b6
    jr jr_017_449b

jr_017_4462:
    ld hl, $44a3
    call Call_000_3c49
    jr jr_017_449b

jr_017_446a:
    ld hl, $449e
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $44bc
    ld de, $44bc
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $01
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d5fc], a
    ld [$da39], a

jr_017_449b:
    jp Jump_000_24d7


    rla
    ld a, d
    ld l, c
    dec h
    ld d, b
    rla
    nop
    ld b, b
    ld h, $50
    rla
    sub d
    ld b, b
    ld h, $50
    rla
    xor l
    ld b, b
    ld h, $0b
    rla
    ret nz

    ld b, b
    ld h, $50
    rla
    xor e
    ld b, c
    ld h, $50
    rla
    ret


    ld b, c
    ld h, $0b
    rla
    ld [hl-], a
    ld b, d
    ld h, $50
    ld [$4121], sp
    ld b, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor [hl]
    ld b, d
    ld h, $50
    rla
    pop af
    ld b, d
    ld h, $50
    rla
    dec h
    ld b, e
    ld h, $50
    ld [$2afa], sp
    rst $10
    bit 0, a
    jr nz, jr_017_450c

    ld hl, $4515
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_017_44fe

    ld hl, $451a
    call Call_000_3c49
    jr jr_017_4504

jr_017_44fe:
    ld hl, $4524
    call Call_000_3c49

jr_017_4504:
    ld hl, $451f
    call Call_000_3c49
    jr jr_017_4512

jr_017_450c:
    ld hl, $4529
    call Call_000_3c49

jr_017_4512:
    jp Jump_000_24d7


    rla
    ld d, c
    ld b, e
    ld h, $50
    rla
    call c, Call_000_2643
    ld d, b
    rla
    db $fc
    ld b, e
    ld h, $50
    rla
    db $76
    ld b, h
    ld h, $50
    rla
    sbc a
    ld b, h
    ld h, $50
    inc bc
    ld [bc], a
    dec c
    inc b
    ld [bc], a
    rst $38
    dec c
    dec b
    ld [bc], a
    rst $38
    nop
    inc bc
    inc c
    dec b
    ld [$d0ff], sp
    ld b, c
    ld [$0701], a
    ld a, [bc]
    rlca
    rst $38
    db $d3
    ld b, d
    call Call_000_2401
    ld c, $0b
    rst $38
    ret nc

    inc bc
    jr c, @-$37

    dec c
    inc b
    jr c, @-$37

    dec c
    dec b
    ld [$0a0a], sp
    ld a, [bc]
    add hl, bc
    inc c
    dec bc
    dec b
    dec bc
    dec c
    ld c, $12
    inc de
    dec bc
    rrca
    ld c, $12
    inc de
    dec bc
    rrca
    inc c
    rlca
    dec b
    ld b, $0d
    dec b
    ld de, $1005
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    ld b, $04
    rlca
    ld h, h
    ld b, b
    adc l
    ld b, l
    add a
    ld b, l
    nop
    dec c
    ld b, [hl]
    call Call_000_22fa
    jp Jump_000_3c3c


    sub l
    ld b, l
    sub [hl]
    ld b, l
    sbc e
    ld b, l
    inc c
    ld b, [hl]
    rst $38
    rla
    inc b
    ld b, a
    ld h, $50
    ld [$013e], sp
    ld [$cc3c], a
    ld hl, $4603
    call Call_000_3c49
    ld a, $ff
    call Call_000_23b1
    ld c, $20
    call Call_000_3739
    ld hl, $4608
    ld de, $cd3f
    ld bc, $0004
    call Call_000_00b5
    ld a, [$c132]
    ld hl, $cd3f

jr_017_45c3:
    cp [hl]
    inc hl
    jr nz, jr_017_45c3

    dec hl
    push hl
    ld c, $1f
    ld a, $d0
    call Call_000_23a1
    pop hl

jr_017_45d1:
    ld a, [hl]
    ld [$c132], a
    push hl
    ld hl, $cd3f
    ld de, $cd3e
    ld bc, $0004
    call Call_000_00b5
    ld a, [$cd3e]
    ld [$cd42], a
    pop hl
    ld c, $18
    call Call_000_3739
    ld a, [$c026]
    ld b, a
    ld a, [$c027]
    or b
    jr nz, jr_017_45d1

    ld c, $30
    call Call_000_3739
    call Call_000_2307
    jp Jump_000_24d7


    rla
    ld b, h
    ld b, a
    ld h, $50
    jr nc, jr_017_4642

    inc [hl]
    inc a
    or $00
    ld [bc], a
    rlca
    inc bc
    ld b, $ff
    rlca
    inc b
    ld b, $ff
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0b10
    rrca
    rst $38
    jp nc, Jump_000_3802

    rlca
    dec b
    rst $38
    ret nc

    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld b, $04
    rlca
    adc e
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld b, l
    ld b, [hl]

jr_017_4642:
    nop
    ld e, a
    ld b, [hl]
    call Call_000_22fa
    jp Jump_000_3c3c


    ld d, h
    ld b, [hl]
    ld d, l
    ld b, [hl]
    ld e, d
    ld b, [hl]
    ld d, e
    ld b, [hl]
    or $ff
    rla
    push hl
    ld c, b
    ld h, $50
    rla
    ld a, [hl+]
    ld c, c
    ld h, $50
    nop
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    rst $38
    rlca
    inc b
    ld [bc], a
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $090c
    ld c, $fe
    nop
    ld [bc], a
    db $10
    rlca
    ld [$d0ff], sp
    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    jr nz, jr_017_469d

    ld bc, $0c02
    dec c
    dec c
    ld hl, $0504
    rlca
    rlca
    ld [hl+], a
    inc hl
    ld [$0f0f], sp
    rrca

jr_017_469d:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $07
    rlca
    dec b
    ld h, [hl]
    ld c, b
    ld c, d
    ld b, a
    or e
    ld b, [hl]
    nop
    inc [hl]
    ld c, b
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_46d0
    call Call_000_3c3c
    ld hl, $4758
    ld de, $46f8
    ld a, [$d5fd]
    call Call_000_3160
    ld [$d5fd], a
    ret


Call_017_46d0:
    ld hl, $46d9
    ld de, $46e7
    jp Jump_000_317f


    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, b

Jump_017_46ed:
    xor a
    ld [$cd6b], a
    ld [$d5fd], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    nop
    ld b, a
    ld a, [$d057]
    cp $ff
    jp z, Jump_017_46ed

    ld a, $f0
    ld [$cd6b], a

Call_017_470d:
    ld a, $05
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d75e
    set 7, [hl]
    ld bc, $d301
    call Call_000_3e2e
    jr nc, jr_017_472f

    ld a, $06
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d75e
    set 6, [hl]
    jr jr_017_4736

jr_017_472f:
    ld a, $07
    ldh [$8c], a
    call Call_000_2920

jr_017_4736:
    ld hl, $d356
    set 1, [hl]
    ld hl, $d72a
    set 1, [hl]
    ld hl, $d75e
    set 2, [hl]
    set 3, [hl]
    jp Jump_017_46ed


    ld [hl], c
    ld b, a
    rst $18
    ld b, a
    ld hl, sp+$47
    ld de, $c848
    ld b, a
    call $d347
    ld b, a
    ld [bc], a
    jr nc, @+$60

    rst $10
    jp hl


    ld b, a
    di
    ld b, a
    xor $47
    xor $47
    inc bc
    jr nc, jr_017_47c5

    rst $10
    ld [bc], a
    ld c, b
    inc c
    ld c, b
    rlca
    ld c, b
    rlca
    ld c, b
    rst $38
    ld [$5efa], sp
    rst $10
    bit 7, a
    jr z, jr_017_478d

    bit 6, a
    jr nz, jr_017_4785

    call z, Call_017_470d
    call Call_000_30b6
    jr jr_017_47bb

jr_017_4785:
    ld hl, $47c3
    call Call_000_3c49
    jr jr_017_47bb

jr_017_478d:
    ld hl, $47be
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $47d8
    ld de, $47d8
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $02
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d5fd], a

jr_017_47bb:
    jp Jump_000_24d7


    rla
    pop bc
    ld c, c
    ld h, $50
    rla
    ld a, e

jr_017_47c5:
    ld c, d
    ld h, $50
    rla
    or b
    ld c, d
    ld h, $50
    rla
    ld a, l
    ld c, e
    ld h, $0b
    ld d, b
    rla
    sub b
    ld c, e
    ld h, $50
    rla
    or b
    ld c, e
    ld h, $11
    ld b, $50
    ld [$5821], sp
    ld b, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    dec b
    ld c, h
    ld h, $50
    rla
    jr c, jr_017_483d

    ld h, $50
    rla
    ld c, l
    ld c, h
    ld h, $50
    ld [$6421], sp
    ld b, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub e
    ld c, h
    ld h, $50
    rla
    or l
    ld c, h
    ld h, $50
    rla
    call nz, $264c
    ld d, b
    ld [$5efa], sp
    rst $10
    bit 7, a
    jr nz, jr_017_4821

    ld hl, $482a
    call Call_000_3c49
    jr jr_017_4827

jr_017_4821:
    ld hl, $482f
    call Call_000_3c49

jr_017_4827:
    jp Jump_000_24d7


    rla

jr_017_482b:
    ld a, [bc]
    ld c, l
    ld h, $50
    rla
    or b
    ld c, l
    ld h, $50
    inc bc
    ld [bc], a
    dec c
    inc b
    inc bc
    rst $38
    dec c
    dec b
    inc bc

jr_017_483d:
    rst $38
    nop
    inc b
    dec e
    ld b, $08
    rst $38
    ret nc

    ld b, c
    db $eb
    ld bc, $0706
    ld b, $ff
    db $d3
    ld b, d
    adc $01
    ld [hl+], a
    dec bc
    inc c
    rst $38
    jp nc, $d743

    ld bc, $0e24
    dec bc
    rst $38
    ret nc

    inc b
    jr c, jr_017_4827

    dec c
    inc b
    jr c, jr_017_482b

    dec c
    dec b
    inc d
    inc d
    ld hl, $1414
    dec d
    inc hl
    ld [hl+], a
    inc hl
    ld d, $15
    ld e, $1e
    rra
    ld d, $15
    inc e
    dec e
    jr nz, jr_017_4890

    dec d
    dec de
    dec b
    rla
    ld d, $15
    ld a, [de]
    dec b
    add hl, de
    ld d, $18
    jr jr_017_488b

    jr jr_017_48a1

    ld [bc], a
    inc b

jr_017_488b:
    inc b
    nop
    ld b, b
    sbc b
    ld c, b

jr_017_4890:
    sub l
    ld c, b
    nop
    xor b
    ld c, b
    jp Jump_000_3c3c


    ld d, e
    inc h
    sbc [hl]
    ld c, b
    and e
    ld c, b
    rla
    ld [de], a
    ld d, b

jr_017_48a1:
    ld h, $50
    rla
    ld a, a
    ld d, b
    ld h, $50
    nop
    ld [bc], a
    rlca
    inc bc
    dec b
    rst $38
    rlca
    inc b
    dec b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0807
    rlca
    cp $01
    ld [bc], a
    ld b, $06
    ld a, [bc]
    cp $02
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld b, $04
    rlca
    ld h, h
    ld b, b
    ldh [rOBP0], a
    jp c, LCDCInterrupt

    db $f4
    ld c, b
    call Call_000_22fa
    jp Jump_000_3c3c


    jp hl


    ld c, b
    ld [$ef48], a
    ld c, b
    add sp, $48
    or $ff
    rla
    ld c, $54
    ld h, $50
    rla
    ld b, d
    ld d, h
    ld h, $50
    nop
    ld [bc], a
    rlca
    inc bc
    nop
    rst $38
    rlca
    inc b
    nop
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0710
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    ld [$060a], sp
    cp $01
    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    ld b, b
    cpl
    ld c, c
    inc l
    ld c, c
    nop
    ld e, l
    ld c, c
    jp Jump_000_3c3c


    ld l, d
    inc h
    dec [hl]
    ld c, c
    ld a, [hl-]
    ld c, c
    rla
    inc b
    ld h, c
    ld h, $50
    ld [$e0fa], sp
    rst $10
    bit 7, a
    jr nz, jr_017_494a

    ld hl, $4953
    call Call_000_3c49
    jr jr_017_4950

jr_017_494a:
    ld hl, $4958
    call Call_000_3c49

jr_017_4950:
    jp Jump_000_24d7


    rla
    or h
    ld h, c
    ld h, $50
    rla
    db $e3
    ld h, c
    ld h, $50
    nop
    ld [bc], a
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0834
    rlca
    rst $38
    rst $38
    ld [bc], a
    rlca
    ld b, $0b
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld b, $04
    rlca
    ld h, h
    ld b, b
    sub l
    ld c, c
    adc a
    ld c, c
    nop
    xor c
    ld c, c
    call Call_000_22fa
    jp Jump_000_3c3c


    sbc l
    ld c, c
    sbc [hl]
    ld c, c
    and e
    ld c, c
    xor b
    ld c, c
    rst $38
    rla
    or d
    ld h, h
    ld h, $50
    rla
    add hl, sp
    ld h, l
    ld h, $50
    or $00
    ld [bc], a
    rlca
    inc bc
    nop
    rst $38
    rlca
    inc b
    nop
    rst $38
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0927
    ld c, $ff
    rst $38
    ld [bc], a
    inc de
    ld [$ff09], sp
    rst $38
    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    ld b, b
    db $e4
    ld c, c
    pop hl
    ld c, c
    nop
    db $f4
    ld c, c
    jp Jump_000_3c3c


    ld h, c
    inc h
    ld [$ef49], a
    ld c, c
    rla
    pop bc
    ld l, c
    ld h, $50
    rla
    ld h, a
    ld l, d
    ld h, $50
    nop
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    rst $38
    rlca
    inc b
    ld [bc], a
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0a07
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    ld b, $07
    rlca
    cp $02
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    rlca
    add hl, bc
    dec b
    jr c, jr_017_4a6b

    add sp, $4a
    ld h, $4a
    nop
    cp $4b
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    push hl
    call nz, Call_017_4a4c
    pop hl
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_4a6d
    call Call_000_3c3c
    ld hl, $4af8
    ld de, $4a95
    ld a, [$d5fe]
    call Call_000_3160
    ld [$d5fe], a
    ret


Call_017_4a4c:
    ld hl, $4a55
    ld de, $4a64
    jp Jump_000_317f


    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]

jr_017_4a6b:
    add h
    ld d, b

Call_017_4a6d:
    ld a, [$d773]
    bit 0, a
    jr nz, jr_017_4a78

    ld a, $24
    jr jr_017_4a7f

jr_017_4a78:
    ld a, $ad
    call Call_000_23b1
    ld a, $05

jr_017_4a7f:
    ld [$d09f], a
    ld bc, $0202
    ld a, $17
    jp Jump_000_3e6d


Jump_017_4a8a:
    xor a
    ld [$cd6b], a
    ld [$d5fe], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    sbc l
    ld c, d
    ld a, [$d057]
    cp $ff
    jp z, Jump_017_4a8a

    ld a, $f0
    ld [$cd6b], a

Call_017_4aaa:
    ld a, $06
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d773
    set 7, [hl]
    ld bc, $e001
    call Call_000_3e2e
    jr nc, jr_017_4acc

    ld a, $07
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d773
    set 6, [hl]
    jr jr_017_4ad3

jr_017_4acc:
    ld a, $08
    ldh [$8c], a
    call Call_000_2920

jr_017_4ad3:
    ld hl, $d356
    set 2, [hl]
    ld hl, $d72a
    set 2, [hl]
    ld a, [$d773]
    or $1c
    ld [$d773], a
    jp Jump_017_4a8a


    dec e
    ld c, e
    sub b
    ld c, e
    xor c
    ld c, e
    jp nz, $db4b

    ld c, e
    ld [hl], a
    ld c, e
    ld a, h
    ld c, e
    add [hl]
    ld c, e
    ld [bc], a
    jr nc, jr_017_4b6e

    rst $10
    sbc d
    ld c, e
    and h
    ld c, e
    sbc a
    ld c, e
    sbc a
    ld c, e
    inc bc
    jr nz, jr_017_4b7a

    rst $10
    or e
    ld c, e
    cp l
    ld c, e
    cp b
    ld c, e
    cp b
    ld c, e
    inc b
    jr nc, jr_017_4b86

    rst $10
    call z, $d64b
    ld c, e
    pop de
    ld c, e
    pop de
    ld c, e
    rst $38
    ld [$73fa], sp
    rst $10
    bit 7, a
    jr z, jr_017_4b39

    bit 6, a
    jr nz, jr_017_4b31

    call z, Call_017_4aaa
    call Call_000_30b6
    jr jr_017_4b6a

jr_017_4b31:
    ld hl, $4b72
    call Call_000_3c49
    jr jr_017_4b6a

jr_017_4b39:
    ld hl, $4b6d
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $4b8b
    ld de, $4b8b
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $03
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d5fe], a
    ld [$da39], a

jr_017_4b6a:
    jp Jump_000_24d7


    rla

jr_017_4b6e:
    and l
    ld l, d
    ld h, $50
    rla
    nop
    ld b, b
    daa
    ld d, b
    rla
    ld l, c
    ld b, b

jr_017_4b7a:
    daa
    ld d, b
    rla
    ldh [rLCDC], a
    daa
    ld de, $f517
    ld b, b
    daa
    ld d, b

jr_017_4b86:
    rla
    jr nc, @+$43

    daa
    ld d, b
    rla
    ld d, c
    ld b, c
    daa
    ld d, b
    ld [$f821], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub h
    ld b, c
    daa
    ld d, b
    rla
    ret z

    ld b, c
    daa
    ld d, b
    rla
    ldh [rSTAT], a
    daa
    ld d, b
    ld [$0421], sp
    ld c, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc de
    ld b, d
    daa
    ld d, b
    rla
    ld b, h
    ld b, d
    daa
    ld d, b
    rla
    ld c, h
    ld b, d
    daa
    ld d, b
    ld [$1021], sp
    ld c, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub b
    ld b, d
    daa
    ld d, b
    rla
    xor h
    ld b, d
    daa
    ld d, b
    rla
    ret nz

    ld b, d
    daa
    ld d, b
    ld [$2afa], sp
    rst $10
    bit 2, a
    jr nz, jr_017_4beb

    ld hl, $4bf4
    call Call_000_3c49
    jr jr_017_4bf1

jr_017_4beb:
    ld hl, $4bf9
    call Call_000_3c49

jr_017_4bf1:
    jp Jump_000_24d7


    rla
    dec hl
    ld b, e
    daa
    ld d, b
    rla
    add hl, hl
    ld b, h
    daa
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0304
    rst $38
    ld de, $0305
    rst $38
    nop
    dec b
    ld hl, $0905
    rst $38
    ret nc

    ld b, c
    db $ec
    ld bc, $0a10
    dec c
    rst $38
    jp nc, $f142

    inc bc
    inc c
    inc c
    rlca
    rst $38
    jp nc, $dc43

    ld bc, $0e13
    inc b
    rst $38
    db $d3
    ld b, h
    call z, Call_000_2408
    ld [de], a
    ld [$d0ff], sp
    dec b
    ld c, [hl]
    rst $00
    ld de, $4e04
    rst $00
    ld de, $2c05
    dec h
    dec h
    ld h, $2c
    inc l
    dec b
    dec b
    dec b
    inc l
    ld a, [hl+]
    dec hl
    dec b
    ld a, [hl+]
    dec hl
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    dec b
    add hl, hl
    dec b
    jr z, jr_017_4c60

    dec b
    ld de, $1005
    dec b

jr_017_4c60:
    dec b
    dec b
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    db $10
    ld b, b
    ld [hl], h
    ld c, h
    ld [hl], c
    ld c, h
    nop
    ld hl, $c34d
    inc a
    inc a
    add d
    ld c, h
    db $f4
    ld c, h
    ld sp, hl
    ld c, h
    ld sp, hl
    ld c, h
    ld sp, hl
    ld c, h
    cp $4c
    inc bc
    ld c, l
    ld [$affa], sp
    rst $10
    bit 0, a
    jr nz, jr_017_4ccb

    ld a, $01
    ld [$cc3c], a
    ld hl, $4cd4
    call Call_000_3c49
    ld b, $33
    call Call_000_3493
    jr z, jr_017_4cd1

    ld hl, $4cd9
    call Call_000_3c49
    ld bc, $e701
    call Call_000_3e2e
    jr nc, jr_017_4cc3

    ld hl, $4cde
    call Call_000_3c49
    ld a, $33
    ldh [$db], a
    ld b, $05
    ld hl, $7f37
    call Call_000_35d6
    ld hl, $d7af
    set 0, [hl]
    jr jr_017_4cd1

jr_017_4cc3:
    ld hl, $4cee
    call Call_000_3c49
    jr jr_017_4cd1

jr_017_4ccb:
    ld hl, $4ce9
    call Call_000_3c49

jr_017_4cd1:
    jp Jump_000_24d7


    rla
    xor l
    ld d, l
    jr z, jr_017_4d29

    rla
    ld [hl], $56
    jr z, jr_017_4d2e

    rla
    ld [hl], l
    ld d, [hl]
    jr z, jr_017_4cee

    rla
    adc c
    ld d, [hl]
    jr z, jr_017_4cf5

    ld d, b
    rla
    push bc
    ld d, [hl]
    jr z, jr_017_4d3e

jr_017_4cee:
    rla
    inc sp
    ld d, a
    jr z, jr_017_4d00

    ld d, b
    rla

jr_017_4cf5:
    ld c, c
    ld d, a
    jr z, jr_017_4d49

    rla
    sub d
    ld d, a
    jr z, @+$52

    rla
    cp [hl]

jr_017_4d00:
    ld d, a
    jr z, @+$52

    ld [$09fa], sp
    pop bc
    cp $04
    ld hl, $4d1c
    jr nz, jr_017_4d11

    ld hl, $4d17

jr_017_4d11:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    rst $28
    ld d, a
    jr z, jr_017_4d6c

    rla
    ld b, d
    ld e, b
    jr z, jr_017_4d71

    ld a, [bc]
    ld bc, $0701
    ld [bc], a
    xor a
    ld [bc], a
    dec b

jr_017_4d29:
    inc bc
    ld b, $01
    nop
    rlca

jr_017_4d2e:
    dec b
    dec e
    rlca
    ld [$00fe], sp
    ld bc, $0a09
    ld [$02fe], sp
    ld [bc], a
    dec b
    dec b
    add hl, bc

jr_017_4d3e:
    rst $38
    ret nc

    inc bc
    add hl, bc
    inc b
    ld b, $ff
    ret nc

    inc b
    jr c, @+$0c

jr_017_4d49:
    dec b
    rst $38
    db $d3
    dec b
    or $c6
    ld bc, $0507
    ld b, $05
    db $e3
    ld c, a
    inc bc
    ld c, [hl]
    ld e, l
    ld c, l
    nop
    sbc e
    ld c, a
    call Call_000_3c3c
    ld hl, $4e13
    ld de, $4d7b
    ld a, [$d642]
    call Call_000_3160

jr_017_4d6c:
    ld [$d642], a
    ret


Jump_017_4d70:
    xor a

jr_017_4d71:
    ld [$cd6b], a
    ld [$d642], a
    ld [$da39], a
    ret


    add e
    ld c, l
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    add $4d
    ld a, [$d7b1]
    bit 0, a
    ret nz

    call Call_000_3219
    ld a, [$cc55]
    and a
    ret nz

    ld a, [$d7b1]
    bit 1, a
    ret nz

    xor a
    ldh [$b4], a
    ld [$cf0d], a
    ld a, [$d361]
    cp $03
    ret nz

    ld a, [$d362]
    cp $04
    ret nz

    ld a, $01
    ld [$cf0d], a
    ld a, $01
    ld [$d528], a
    ld a, $01
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call Call_000_34a6
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_017_4d70

    ld a, [$cf0d]
    and a
    jr z, jr_017_4de4

    ld a, $01
    ld [$d528], a
    ld a, $01
    ldh [$8c], a
    ld a, $08

jr_017_4ddf:
    ldh [$8d], a
    call Call_000_34a6

jr_017_4de4:
    ld a, $f0
    ld [$cd6b], a
    ld a, [$d7b1]
    or $3e
    ld [$d7b1], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2920
    xor a
    ld [$cd6b], a
    ld [$d642], a
    ld [$da39], a
    ret


    ld b, h
    ld c, [hl]
    and d
    ld c, [hl]
    cp e
    ld c, [hl]
    call nc, $ed4e
    ld c, [hl]
    ld b, $4f
    ld c, [hl]
    ld c, a
    sbc b
    ld c, [hl]
    ld [bc], a
    ld b, b
    or c
    rst $10
    xor h
    ld c, [hl]
    or [hl]
    ld c, [hl]
    or c
    ld c, [hl]
    or c
    ld c, [hl]
    inc bc
    ld b, b
    or c
    rst $10
    push bc
    ld c, [hl]
    rst $08
    ld c, [hl]
    jp z, $ca4e

    ld c, [hl]
    inc b
    jr nc, jr_017_4ddf

    rst $10
    sbc $4e
    add sp, $4e
    db $e3
    ld c, [hl]
    db $e3
    ld c, [hl]
    dec b
    jr nc, @-$4d

    rst $10
    rst $30
    ld c, [hl]
    ld bc, $fc4f
    ld c, [hl]
    db $fc
    ld c, [hl]
    rst $38
    ld [$b1fa], sp
    rst $10
    bit 0, a
    jp nz, Jump_017_4e7d

    bit 1, a
    jp nz, Jump_017_4e85

    ld hl, $4e8e
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $4e93
    ld de, $4e93
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $03
    ld [$d642], a
    ld [$da39], a
    jr jr_017_4e8b

Jump_017_4e7d:
    ld hl, $4e9d
    call Call_000_3c49
    jr jr_017_4e8b

Jump_017_4e85:
    ld hl, $4e98
    call Call_000_3c49

jr_017_4e8b:
    jp Jump_000_24d7


    rla
    ld d, d
    ld e, b
    jr z, jr_017_4ee3

    rla
    cp d
    ld e, b
    jr z, jr_017_4ee8

    rla
    rst $08
    ld e, b
    jr z, jr_017_4eed

    rla
    ld [hl], d
    ld e, c
    jr z, @+$52

    ld [$1321], sp
    ld c, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sbc c
    ld e, c
    jr z, jr_017_4f01

    rla
    or a
    ld e, c
    jr z, jr_017_4f06

    rla
    jp $2859


    ld d, b
    ld [$1f21], sp
    ld c, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    dec b
    ld e, d
    jr z, @+$52

    rla
    ld [hl+], a
    ld e, d
    jr z, @+$52

    rla
    inc sp
    ld e, d
    jr z, jr_017_4f24

    ld [$2b21], sp
    ld c, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld d, c
    ld e, d
    jr z, jr_017_4f33

jr_017_4ee3:
    rla
    adc l
    ld e, d
    jr z, @+$52

jr_017_4ee8:
    rla
    and h
    ld e, d
    jr z, @+$52

jr_017_4eed:
    ld [$3721], sp
    ld c, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret c

    ld e, d
    jr z, jr_017_4f4c

    rla
    add hl, bc
    ld e, e
    jr z, jr_017_4f51

jr_017_4f01:
    rla
    ld a, [de]
    ld e, e
    jr z, jr_017_4f56

jr_017_4f06:
    ld [$b1fa], sp
    rst $10
    and $c0
    jr z, jr_017_4f16

    ld hl, $4f96
    call Call_000_3c49
    jr jr_017_4f46

jr_017_4f16:
    ld a, $2b
    call Call_000_349b
    ld hl, $4f49
    call Call_000_3c49
    call Call_000_35ec

jr_017_4f24:
    ld a, [$cc26]
    and a
    jr nz, jr_017_4f46

    ld a, [$cf91]
    ld b, a
    ld c, $1e
    call Call_000_3e48

jr_017_4f33:
    jr nc, jr_017_4f46

    ld a, $4a
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d7b1
    set 6, [hl]
    set 0, [hl]

jr_017_4f46:
    jp Jump_000_24d7


    rla
    ld c, d
    ld e, e

jr_017_4f4c:
    jr z, jr_017_4f9e

    ld [$b1fa], sp

jr_017_4f51:
    rst $10
    and $c0
    jr z, jr_017_4f5e

jr_017_4f56:
    ld hl, $4f96
    call Call_000_3c49
    jr jr_017_4f8e

jr_017_4f5e:
    ld a, $2c
    call Call_000_349b
    ld hl, $4f91
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_017_4f8e

    ld a, [$cf91]
    ld b, a
    ld c, $1e
    call Call_000_3e48
    jr nc, jr_017_4f8e

    ld hl, $d7b1
    set 7, [hl]
    set 0, [hl]
    ld a, $4b
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d

jr_017_4f8e:
    jp Jump_000_24d7


    rla
    ld [hl], b
    ld e, e
    jr z, jr_017_4fe6

    rla
    sbc d
    ld e, e
    jr z, jr_017_4feb

    inc bc
    ld [bc], a
    dec bc

jr_017_4f9e:
    inc b
    ld bc, $0bff
    dec b
    ld bc, $00ff
    rlca
    ld c, $07
    add hl, bc
    rst $38
    ret nc

    ld b, c
    ldh [rSB], a
    ld c, $08
    rlca
    rst $38
    db $d3
    ld b, d
    ldh [rSC], a
    ld c, $0a
    rlca
    rst $38
    db $d3
    ld b, e
    ldh [$03], a
    ld c, $09
    add hl, bc
    rst $38
    jp nc, $e044

    inc b
    ld c, $0b
    add hl, bc
    rst $38
    jp nc, $e045

    dec b
    dec a
    dec b
    ld [$ffff], sp
    ld b, $3d
    dec b
    add hl, bc
    rst $38
    rst $38
    rlca
    dec l
    rst $00
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    ld c, c
    ld c, d
    ld h, a

jr_017_4fe6:
    ld c, c
    ld c, d
    ld c, e
    ld d, c
    dec b

jr_017_4feb:
    ld d, b
    ld c, h
    ld c, e
    dec b
    dec b
    dec b
    ld c, h
    ld c, e
    dec b
    dec b
    dec b
    ld c, h
    ld c, e
    ld [hl-], a
    dec b
    ld sp, $524c
    ld b, [hl]
    inc b
    ld b, [hl]
    ld l, a
    ld d, $09
    ld a, [bc]
    and e
    ld d, e
    xor e
    ld d, b
    dec c
    ld d, b
    nop
    ld e, c
    ld d, d
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_502a
    call Call_000_3c3c
    ld hl, $50c3
    ld de, $5053
    ld a, [$d65c]
    call Call_000_3160
    ld [$d65c], a
    ret


Call_017_502a:
    ld hl, $5033
    ld de, $5040
    jp Jump_000_317f


    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, b

Jump_017_5048:
    xor a
    ld [$cd6b], a
    ld [$d65c], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld e, e
    ld d, b
    ld a, [$d057]
    cp $ff
    jp z, Jump_017_5048

    ld a, $f0
    ld [$cd6b], a

Call_017_5068:
    ld a, $0a
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d7b3
    set 1, [hl]
    ld bc, $f601
    call Call_000_3e2e
    jr nc, jr_017_508a

    ld a, $0b
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d7b3
    set 0, [hl]
    jr jr_017_5091

jr_017_508a:
    ld a, $0c
    ldh [$8c], a
    call Call_000_2920

jr_017_5091:
    ld hl, $d356
    set 5, [hl]
    ld hl, $d72a
    set 5, [hl]
    ld a, [$d7b3]
    or $fc
    ld [$d7b3], a
    ld hl, $d7b4
    set 0, [hl]
    jp Jump_017_5048


    jr jr_017_50fe

    add a
    ld d, c
    sub c
    ld d, c
    sbc e
    ld d, c
    and l
    ld d, c

jr_017_50b5:
    xor a
    ld d, c
    cp c
    ld d, c
    jp $cd51


    ld d, c
    ld [hl], e
    ld d, c
    ld a, b
    ld d, c
    add d
    ld d, c
    ld [bc], a
    jr nc, @-$4b

    rst $10
    ldh a, [rHDMA1]
    ld a, [$f551]
    ld d, c
    push af
    ld d, c
    inc bc
    jr nc, @-$4b

    rst $10
    rst $38
    ld d, c
    add hl, bc
    ld d, d
    inc b
    ld d, d
    inc b
    ld d, d
    inc b
    jr nc, jr_017_5091

    rst $10
    ld c, $52
    jr @+$54

    inc de
    ld d, d
    inc de
    ld d, d
    dec b
    jr nc, @-$4b

    rst $10
    dec e
    ld d, d
    daa
    ld d, d
    ld [hl+], a
    ld d, d
    ld [hl+], a
    ld d, d
    ld b, $30
    or e
    rst $10
    inc l
    ld d, d
    ld [hl], $52
    ld sp, $3152

jr_017_50fe:
    ld d, d
    rlca
    jr nc, jr_017_50b5

    rst $10
    dec sp
    ld d, d
    ld b, l
    ld d, d
    ld b, b
    ld d, d
    ld b, b
    ld d, d
    ld [$b330], sp
    rst $10
    ld c, d
    ld d, d
    ld d, h
    ld d, d
    ld c, a
    ld d, d
    ld c, a
    ld d, d
    rst $38
    ld [$b3fa], sp
    rst $10
    bit 1, a
    jr z, jr_017_5134

    bit 0, a
    jr nz, jr_017_512c

    call z, Call_017_5068
    call Call_000_30b6
    jr jr_017_515f

jr_017_512c:
    ld hl, $516e
    call Call_000_3c49
    jr jr_017_515f

jr_017_5134:
    ld hl, $5162
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $5167
    ld de, $5167
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $06
    ld [$d05c], a
    ld a, $03
    ld [$d65c], a

jr_017_515f:
    jp Jump_000_24d7


    rla
    or h
    ld e, e
    jr z, @+$52

    rla
    ld [hl], e
    ld e, h
    jr z, jr_017_517d

    ld b, $50
    rla
    call c, $285c
    ld d, b
    rla
    ld d, $5d
    jr z, @+$52

    rla
    call $285d
    dec bc

jr_017_517d:
    rla
    ldh [$5d], a
    jr z, @+$52

    rla
    dec h
    ld e, [hl]
    jr z, @+$52

    ld [$c321], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$cf21], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$db21], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$e721], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$f321], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$ff21], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$0b21], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$b3fa], sp
    rst $10
    bit 1, a
    jr nz, jr_017_51dd

    ld hl, $51e6
    call Call_000_3c49
    jr jr_017_51e3

jr_017_51dd:
    ld hl, $51eb
    call Call_000_3c49

jr_017_51e3:
    jp Jump_000_24d7


    rla
    ld c, b
    ld e, [hl]
    jr z, jr_017_523b

    rla
    ldh a, [$5e]
    jr z, jr_017_5240

    rla
    inc sp
    ld e, a
    jr z, jr_017_5245

    rla
    ld h, d
    ld e, a
    jr z, jr_017_524a

    rla
    ld [hl], h
    ld e, a
    jr z, jr_017_524f

    rla
    ldh [$5f], a
    jr z, jr_017_5254

    rla
    ld [bc], a
    ld h, b
    jr z, jr_017_5259

    rla
    add hl, de
    ld h, b
    jr z, jr_017_525e

    rla
    ld b, d
    ld h, b
    jr z, jr_017_5263

    rla
    sub c
    ld h, b
    jr z, jr_017_5268

    rla
    sbc l
    ld h, b
    jr z, @+$52

    rla
    ret


    ld h, b
    jr z, @+$52

    rla
    pop af
    ld h, b
    jr z, jr_017_5277

    rla
    rlca
    ld h, c
    jr z, jr_017_527c

    rla
    inc a
    ld h, c
    jr z, jr_017_5281

    rla
    ld e, [hl]
    ld h, c
    jr z, @+$52

    rla
    ld [hl], c
    ld h, c
    jr z, jr_017_528b

jr_017_523b:
    rla
    sbc h
    ld h, c
    jr z, @+$52

jr_017_5240:
    rla
    db $e4
    ld h, c
    jr z, jr_017_5295

jr_017_5245:
    rla
    cp $61
    jr z, jr_017_529a

jr_017_524a:
    rla
    ld [hl], a
    ld h, d
    jr z, jr_017_529f

jr_017_524f:
    rla
    jp z, Jump_000_2862

    ld d, b

jr_017_5254:
    rla
    db $d3
    ld h, d
    jr z, jr_017_52a9

jr_017_5259:
    ld l, $20
    ld de, $0208

jr_017_525e:
    rst $38
    ld de, $0209
    rst $38

jr_017_5263:
    inc bc
    ld bc, $b216
    inc bc

jr_017_5268:
    dec b
    rrca
    or d
    dec b
    ld bc, $b212
    dec b
    dec b
    ld [$09b2], sp
    ld bc, $b21b

jr_017_5277:
    add hl, bc
    dec b
    db $10
    or d
    dec bc

jr_017_527c:
    ld bc, $b205
    dec bc
    dec b

jr_017_5281:
    dec c
    or d
    rrca
    ld bc, $b217
    rrca
    dec b
    ld e, $b2

jr_017_528b:
    ld de, $1101
    or d
    ld de, $0905
    or d
    inc bc
    add hl, bc

jr_017_5295:
    ld a, [de]
    or d
    inc bc
    dec bc
    inc bc

jr_017_529a:
    or d
    dec b
    add hl, bc
    rlca
    or d

jr_017_529f:
    dec b
    dec bc
    inc c
    or d
    dec bc
    dec bc
    inc b
    or d
    rrca
    dec bc

jr_017_52a9:
    rra
    or d
    inc bc
    rrca
    jr @-$4c

    inc bc
    inc de
    inc e
    or d
    dec b
    rrca
    ld [bc], a
    or d
    dec b
    inc de
    ld a, [bc]
    or d
    add hl, bc
    rrca
    inc d
    or d
    add hl, bc
    inc de
    dec e
    or d
    dec bc
    rrca
    ld c, $b2
    dec bc
    inc de
    ld b, $b2
    rrca
    rrca
    dec d
    or d
    rrca
    inc de
    add hl, de
    or d
    ld de, $0b0f
    or d
    ld de, $1313
    or d
    nop
    add hl, bc
    dec c
    inc c
    dec c
    rst $38
    ret nc

    ld b, c
    ldh a, [rSB]
    add hl, de
    dec b
    ld c, $ff
    ret nc

    ld b, d
    push af
    ld d, $04
    dec b
    dec d
    rst $38
    ret nc

    ld b, e
    db $db
    ld bc, $0b19
    rlca
    rst $38
    ret nc

    ld b, h
    push af
    rla
    inc b
    dec bc
    dec d
    rst $38
    ret nc

    ld b, l
    db $db
    ld [bc], a
    add hl, de
    ld de, $ff07
    ret nc

    ld b, [hl]
    push af
    jr jr_017_5312

    ld de, $ff15
    ret nc

jr_017_5312:
    ld b, a
    db $db
    inc bc
    inc b
    dec b
    rlca
    rst $38
    ret nc

    ld c, b
    db $db
    inc b
    inc h
    inc de
    ld c, $ff
    ret nc

    add hl, bc
    ld a, l
    rst $00
    ld de, $7d08
    rst $00
    ld de, $0909
    rst $00
    inc bc
    ld bc, $c70b
    inc bc
    dec b
    add hl, de
    rst $00
    dec b
    ld bc, $c71b
    dec b
    dec b
    add hl, sp
    rst $00
    add hl, bc
    ld bc, $c73b
    add hl, bc
    dec b
    ld c, c

jr_017_5344:
    rst $00
    dec bc
    ld bc, $c74b
    dec bc
    dec b
    ld l, c
    rst $00
    rrca
    ld bc, $c76b
    rrca
    dec b
    ld a, c
    rst $00
    ld de, $7b01
    rst $00
    ld de, $0d05
    rst $00
    inc bc
    add hl, bc
    ld c, $c7
    inc bc
    dec bc
    dec e
    rst $00
    dec b
    add hl, bc
    ld e, $c7
    dec b
    dec bc
    ld c, [hl]
    rst $00
    dec bc
    dec bc
    ld l, [hl]
    rst $00
    rrca
    dec bc
    db $10
    rst $00
    inc bc
    rrca
    ld [de], a
    rst $00
    inc bc
    inc de
    jr nz, jr_017_5344

    dec b
    rrca
    ld [hl+], a
    rst $00
    dec b
    inc de
    ld b, b
    rst $00
    add hl, bc
    rrca
    ld b, d
    rst $00
    add hl, bc
    inc de
    ld d, b
    rst $00
    dec bc
    rrca
    ld d, d
    rst $00
    dec bc
    inc de
    ld [hl], b
    rst $00
    rrca
    rrca
    ld [hl], d
    rst $00
    rrca
    inc de
    add b
    rst $00
    ld de, $820f
    rst $00
    ld de, $4113
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    cpl
    ld c, $2f
    ld b, h
    cpl
    cpl
    ld b, [hl]
    cpl
    ld c, $2f
    cpl
    ld c, $2f
    ld b, h
    cpl
    cpl
    ld b, [hl]
    cpl
    ld c, $2f
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    cpl
    ld c, $2f
    ld b, h
    ld c, $0e
    ld b, [hl]
    cpl
    ld c, $2f
    cpl
    ld c, $2f
    ld b, h
    ld c, $2f
    ld b, [hl]
    cpl
    ld c, $2f
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    cpl
    ld c, $2f
    ld b, h
    ld b, l
    cpl
    ld b, [hl]
    cpl
    ld c, $2f
    cpl
    ld c, $2f
    ld b, h
    inc l
    ld c, $46
    cpl
    ld c, $2f
    ld [bc], a
    inc b
    inc b
    nop
    ld b, b
    inc c
    ld d, h
    add hl, bc
    ld d, h
    nop
    inc e
    ld d, h
    jp Jump_000_3c3c


    jp Jump_000_1224


    ld d, h
    rla
    ld d, h
    rla
    db $e3
    ld h, e
    jr z, @+$52

    rla
    ld a, [hl+]
    ld h, h
    jr z, jr_017_546c

    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $060c
    ld [$ffff], sp
    ld [bc], a
    ld b, $09
    ld a, [bc]
    cp $00
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld d, $09
    rrca
    and d
    ld d, h
    ld l, c
    ld d, h
    ld c, [hl]
    ld d, h
    nop
    ld [hl], b
    ld d, h
    call Call_000_3c3c
    ld a, [$d838]
    bit 7, a
    ret z

    ld hl, $d7b9
    bit 7, [hl]
    set 7, [hl]
    ret nz

    ld a, $4c
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3e6d


    ld l, e
    ld d, h
    rla

jr_017_546c:
    ld e, d
    ld h, h
    jr z, jr_017_54c0

    ld l, $05
    ld de, $050a
    rst $38
    ld de, $050b
    rst $38
    nop
    ld a, [de]
    nop
    rst $08
    nop
    inc d
    nop
    db $ec
    ld a, [bc]
    db $10
    ld b, $d0
    nop
    ld bc, $062a
    ld [$d0ff], sp
    ld bc, $c7ab
    ld de, $ab0a
    rst $00
    ld de, $0b0b
    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    ld l, a
    rst $00
    ld a, [bc]
    db $10
    inc a
    dec a
    dec a
    ld a, a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld a, h
    dec a
    dec a
    ld a, l
    ld a, $7e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld c, $0e
    dec e
    ld c, $0e
    dec e
    ld c, $0e
    ld c, $09
    ld b, [hl]

jr_017_54c0:
    ld b, h
    ld c, $0e
    ld c, $0e
    ld e, $5b
    inc e
    ld e, $5b
    inc e
    ld c, $0e
    ld c, $46
    ld b, h
    dec c
    ld c, $0e
    jr nz, jr_017_5530

    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    add hl, sp
    ld c, $09
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld e, e
    jr jr_017_5501

    ld e, e
    jr @+$10

    ld c, $0e
    ld b, [hl]
    ld b, h
    dec c
    ld c, $0e
    ld c, $0e
    add hl, de
    ld c, $0e
    add hl, de
    ld c, $0e
    ld c, $09
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e

jr_017_5501:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, h
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0b
    dec bc
    dec bc
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    inc l
    ld d, a
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld b, $04
    rlca
    ld h, h
    ld b, b
    dec sp
    ld d, l

jr_017_5530:
    dec [hl]
    ld d, l
    nop
    ld c, a
    ld d, l
    call Call_000_22fa
    jp Jump_000_3c3c


    ld b, e
    ld d, l
    ld b, h
    ld d, l
    ld c, c
    ld d, l
    ld c, [hl]
    ld d, l
    rst $38
    rla
    adc [hl]
    ld h, h
    jr z, jr_017_5599

    rla
    cp a
    ld h, h
    jr z, @+$52

    or $00
    ld [bc], a
    rlca
    inc bc
    ld b, $ff
    rlca
    inc b
    ld b, $ff
    nop
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $090f
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    db $10
    rlca
    inc c
    rst $38
    ret nc

    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    add hl, bc
    inc b
    dec b
    sub b
    ld b, b
    adc d
    ld d, l
    add a
    ld d, l
    nop
    sbc b
    ld d, l
    jp Jump_000_3c3c


    adc [hl]
    ld d, l
    sub e
    ld d, l
    rla
    db $fd
    ld h, [hl]
    ld [hl+], a
    ld d, b
    rla
    ld e, l
    ld h, a
    ld [hl+], a
    ld d, b
    ld a, [bc]

jr_017_5599:
    inc b
    nop
    inc b
    ld bc, $00ff
    dec b
    ld bc, $07ff
    inc b
    nop
    inc sp
    rlca
    dec b
    nop
    inc sp
    nop
    ld [bc], a
    inc c
    ld b, $07
    rst $38
    rst $38
    ld bc, $0925
    ld b, $ff
    rst $38
    ld [bc], a
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    inc c
    inc b
    dec b
    sub b
    ld b, b
    rst $10
    ld d, l
    call nc, Call_000_0055
    jr nz, jr_017_562a

    jp Jump_000_3c3c


    db $db
    ld d, l
    dec de
    ld d, [hl]
    ld [$c2fa], sp
    rst $10
    bit 0, a
    jr nz, jr_017_560d

    ld a, $0a
    ldh [$db], a
    ld a, $c8
    ldh [$dc], a
    ld [$d11e], a
    call Call_000_2fcf
    ld hl, $cd6d
    ld de, $cc5b
    ld bc, $000d
    call Call_000_00b5
    ld a, $62
    call Call_000_3e6d
    ldh a, [$db]
    cp $01
    jr nz, jr_017_5613

    ld hl, $d7c2
    set 0, [hl]

jr_017_560d:
    ld hl, $5616
    call Call_000_3c49

jr_017_5613:
    jp Jump_000_24d7


    rla
    db $fc
    ld h, a
    ld [hl+], a
    ld d, b
    rla
    inc l
    ld l, b
    ld [hl+], a
    ld d, b
    ld a, [bc]
    inc b
    nop
    inc b
    inc bc
    rst $38
    nop
    dec b
    inc bc
    rst $38

jr_017_562a:
    rlca
    inc b
    inc b
    rst $38
    rlca
    dec b
    inc b
    rst $38
    nop
    ld [bc], a
    jr nz, jr_017_563e

    dec b
    rst $38
    jp nc, $0401

    ld [$fe09], sp

jr_017_563e:
    ld [bc], a
    ld [bc], a
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    add hl, bc
    inc b
    dec b
    sub b
    ld b, b
    ld e, a
    ld d, [hl]
    ld e, h
    ld d, [hl]
    nop
    ld l, l
    ld d, [hl]
    jp Jump_000_3c3c


    ld h, e
    ld d, [hl]
    ld l, b
    ld d, [hl]
    rla
    ld l, b
    ld l, b
    ld [hl+], a
    ld d, b
    rla
    xor e
    ld l, b
    ld [hl+], a
    ld d, b
    ld a, [bc]
    inc b
    nop
    inc b
    inc bc
    inc sp
    nop
    dec b
    inc b
    inc sp
    rlca
    inc b
    dec b
    rst $38
    rlca
    dec b
    dec b
    rst $38
    nop
    ld [bc], a
    dec c
    ld [$ff0c], sp
    jp nc, $0801

    ld [$fe06], sp
    ld bc, $f602
    add $00
    inc b
    or $c6
    nop
    dec b
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    inc c
    inc b
    inc b
    add b
    ld b, b
    or b
    ld d, [hl]
    xor c
    ld d, [hl]
    nop
    pop bc
    ld d, [hl]
    ld a, $10
    ld [$d365], a
    ret


    ld d, b
    or d
    ld d, [hl]
    ld [$093e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3e6d
    ld hl, $56af
    ret


    ld a, [bc]
    inc bc
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    inc b
    inc b
    nop
    ld [hl], a
    nop
    ld bc, $0708
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    inc c
    inc b
    inc b
    add b
    ld b, b
    rst $30
    ld d, [hl]
    rst $28
    ld d, [hl]
    nop
    cp $56
    ld a, $11
    ld [$d365], a
    jp Jump_000_3c3c


    ld sp, hl
    ld d, [hl]
    rla
    bit 0, b
    inc hl
    ld d, b
    ld a, [bc]
    inc bc
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    inc b
    inc b
    ld bc, $0077
    ld bc, $070d
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    inc c
    inc b
    inc b
    add b
    ld b, b
    inc [hl]
    ld d, a
    inc l
    ld d, a
    nop
    dec sp
    ld d, a
    ld a, $12
    ld [$d365], a
    jp Jump_000_3c3c


    ld [hl], $57
    rla
    rst $38
    ld b, b
    inc hl
    ld d, b
    ld a, [bc]
    inc bc
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    inc b
    inc b
    nop
    ld a, c
    nop
    ld bc, $080a
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    inc c
    inc b
    inc b
    add b
    ld b, b
    ld l, a
    ld d, a
    ld l, c
    ld d, a
    nop
    add a
    ld d, a
    ld a, $12
    ld [$d365], a
    ret


    ld [hl], e
    ld d, a
    ld a, l
    ld d, a
    rla
    ld [hl-], a
    ld b, c
    inc hl
    ld d, b
    rla
    sub l
    ld b, c
    inc hl
    ld d, b
    rla
    ret z

    ld b, c
    inc hl
    ld d, b
    rla
    add hl, bc
    ld b, d
    inc hl
    ld d, b
    ld a, [bc]
    inc bc
    rlca
    inc bc
    dec b
    rst $38
    rlca
    inc b
    dec b
    rst $38
    inc b
    inc b
    nop
    ld a, c
    nop
    ld [bc], a
    dec c
    ld b, $07
    rst $38
    rst $38
    ld bc, $080a
    ld b, $ff
    rst $38
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    ld d, $09
    dec c
    adc c
    ld e, c
    adc e
    ld e, b
    cp e
    ld d, a
    nop
    ccf
    ld e, c
    call Call_017_57d1
    call Call_000_3c3c
    ld hl, $5893
    ld de, $5885
    ld a, [$d64a]
    call Call_000_3160
    ld [$d64a], a
    ret


Call_017_57d1:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $582e
    call Call_017_5837
    call Call_017_5863
    ld a, [$d834]
    bit 0, a
    jr nz, jr_017_57f8

    push af
    ld a, $5f
    ld [$d09f], a
    ld bc, $0401
    ld a, $17
    call Call_000_3e6d
    pop af

jr_017_57f8:
    bit 1, a
    jr nz, jr_017_580b

    push af
    ld a, $54
    ld [$d09f], a
    ld bc, $0209
    ld a, $17
    call Call_000_3e6d
    pop af

jr_017_580b:
    bit 2, a
    jr nz, jr_017_581e

    push af
    ld a, $54
    ld [$d09f], a
    ld bc, $0509
    ld a, $17
    call Call_000_3e6d
    pop af

jr_017_581e:
    bit 3, a
    ret nz

    ld a, $5f
    ld [$d09f], a
    ld bc, $0605
    ld a, $17
    jp Jump_000_3e6d


    inc b
    ld bc, $0902
    dec b
    add hl, bc
    ld b, $05
    rst $38

Call_017_5837:
    push hl
    ld hl, $d73f
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_017_5843:
    ld a, [hl+]
    cp $ff
    jr z, jr_017_585f

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_017_5854

    inc hl
    jr jr_017_5843

jr_017_5854:
    ld a, [hl+]
    cp c
    jr nz, jr_017_5843

    ld hl, $d73f
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_017_585f:
    xor a
    ldh [$e0], a
    ret


Call_017_5863:
    ld hl, $d834
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_017_5871

    set 0, [hl]
    ret


jr_017_5871:
    cp $02
    jr nz, jr_017_5878

    set 1, [hl]
    ret


jr_017_5878:
    cp $03
    jr nz, jr_017_587f

    set 2, [hl]
    ret


jr_017_587f:
    cp $04
    ret nz

    set 3, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    cp b
    ld e, b
    db $f4
    ld e, b
    cp $58
    ld [$0259], sp
    ld b, b
    inc sp
    ret c

    ld [de], a
    ld e, c
    inc e
    ld e, c
    rla
    ld e, c
    rla
    ld e, c
    inc bc
    jr nz, @+$35

    ret c

    ld hl, $2b59
    ld e, c
    ld h, $59
    ld h, $59
    inc b
    ld b, b
    inc sp
    ret c

    jr nc, @+$5b

    ld a, [hl-]
    ld e, c
    dec [hl]
    ld e, c
    dec [hl]
    ld e, c
    rst $38
    ld [$38fa], sp
    ret c

    bit 7, a
    jr nz, jr_017_58dc

    ld hl, $58e5
    call Call_000_3c49
    ld a, $07
    call Call_000_3e6d
    call Call_000_20d8
    call Call_000_3dd7
    call Call_000_20f6
    ld hl, $58ea
    call Call_000_3c49
    jr jr_017_58e2

jr_017_58dc:
    ld hl, $58ef
    call Call_000_3c49

jr_017_58e2:
    jp Jump_000_24d7


    rla
    dec bc
    ld c, h
    ld hl, $1750
    add hl, sp
    ld c, h
    ld hl, $1750
    ld c, b
    ld c, h
    ld hl, $0850
    ld hl, $5893
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9f21], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$ab21], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, h
    ld c, h
    ld hl, $1750
    ld a, a
    ld c, h
    ld hl, $1750
    adc b
    ld c, h
    ld hl, $1750
    or [hl]
    ld c, h
    ld hl, $1750
    db $e4
    ld c, h
    ld hl, $1750
    or $4c
    ld hl, $1750
    inc sp
    ld c, l
    ld hl, $1750
    ld d, a
    ld c, l
    ld hl, $1750
    ld [hl], b
    ld c, l
    ld hl, $2e50
    dec b
    nop
    ld c, $00
    ld [$1000], a
    nop
    push de
    nop
    ld [de], a
    nop
    db $ec
    inc bc
    add hl, bc
    rlca
    ret nc

    rrca
    ld de, $d204
    nop
    inc b
    add hl, hl
    ld [de], a
    rlca
    rst $38
    ret nc

    ld bc, $0818
    ld b, $ff
    pop de
    ld b, d
    and $25
    jr nz, jr_017_5978

    add hl, de
    rst $38
    ret nc

    ld b, e
    db $e4
    ld a, [bc]
    jr jr_017_5983

    ld de, $d1ff
    ld b, h
    and $26
    inc bc
    rst $00
    nop

jr_017_5978:
    ld c, $04
    rst $00
    nop
    db $10
    dec b
    rst $00
    nop
    ld [de], a
    inc de
    rst $00

jr_017_5983:
    inc bc
    add hl, bc
    adc c
    rst $00
    rrca
    ld de, $4140
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld a, l
    inc h
    ld a, h
    dec a
    dec a
    ld a, $44
    ld c, $0e
    ld c, $2f
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld e, d
    ld h, a
    ld b, c
    ld b, c
    ld b, d
    ld c, $40
    ld h, e
    ld c, $67
    ld e, c
    ld b, [hl]
    ld b, h
    ld d, [hl]
    ld c, $47
    ld b, a
    ld b, [hl]
    ld c, $44
    ld c, $34
    ld c, $12
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld h, a
    ld b, b
    ld b, d
    dec c
    ld b, h
    ld c, $37
    ld c, $12
    ld b, [hl]
    ld b, h
    ld e, d
    ld c, $0e
    ld d, l
    ld d, [hl]
    dec c
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld b, [hl]
    ld d, b
    ld c, d
    ld b, e
    ld b, e
    ld c, $0e
    ld c, $44
    ld b, a
    ld a, e
    ld c, $56
    ld b, [hl]
    ld b, h
    ld b, e
    ld b, e
    ld b, e
    ld e, c
    ld e, d
    ld c, $44
    cpl
    ld b, a
    ld c, $0e
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, d
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld de, $0a09
    inc b
    ld e, e
    ld e, a
    ld e, d
    ld a, [bc]
    ld e, d
    nop
    cp b
    ld e, d
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_017_5a27
    call Call_000_3c3c
    ld hl, $5a6d
    ld de, $5a3a
    ld a, [$d651]
    call Call_000_3160
    ld [$d651], a
    ret


Call_017_5a27:
    ld a, [$d869]
    bit 7, a
    ret z

    ld a, $1d
    ld [$d09f], a
    ld bc, $0604
    ld a, $17
    jp Jump_000_3e6d


    ld b, b
    ld e, d
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld a, [$d869]
    bit 7, a
    jp nz, Jump_000_3219

    ld hl, $5a5c
    call Call_000_34e4
    jp nc, Jump_000_3219

    ld hl, $d126
    set 5, [hl]
    ld hl, $d869
    set 7, [hl]
    ret


    dec c
    ld de, $86ff
    ld e, d
    sub b
    ld e, d
    db $f4
    inc h
    db $f4
    inc h
    push hl
    inc h
    push hl
    inc h
    push hl
    inc h
    ld bc, $6920
    ret c

    sbc d
    ld e, d
    and h
    ld e, d
    sbc a
    ld e, d
    sbc a
    ld e, d
    ld [bc], a
    jr nz, jr_017_5ae5

    ret c

    xor c
    ld e, d
    or e
    ld e, d
    xor [hl]
    ld e, d
    xor [hl]
    ld e, d
    rst $38
    ld [$6d21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$7921], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld a, c
    ld e, h
    ld hl, $1750
    and d
    ld e, h
    ld hl, $1750
    xor a
    ld e, h
    ld hl, $1750
    db $d3
    ld e, h
    ld hl, $1750
    rlca
    ld e, l
    ld hl, $1750
    ld a, [de]
    ld e, l
    ld hl, $7d50
    inc bc
    ld de, $0208
    rst $38
    ld de, $0209
    rst $38
    ld bc, $0001
    jp nz, Jump_000_0700

    ld b, $09
    dec bc
    rst $38
    db $d3
    ld b, c
    add sp, $05
    rlca
    ld b, $07
    rst $38
    ret nc

    ld b, d
    rst $20
    dec b
    dec a
    inc b
    rrca
    rst $38
    rst $38
    add e
    di
    dec a
    ld b, $0d
    rst $38
    rst $38
    add h

jr_017_5ae5:
    jr z, jr_017_5b26

    inc de
    add hl, bc
    rst $38
    db $10
    dec b
    ccf
    ld b, $12
    rst $38
    db $10
    ld b, $3f
    ld c, $06
    rst $38
    db $10
    rlca
    ld a, l
    rst $00
    ld de, $7d08
    rst $00
    ld de, $f909
    add $01
    ld bc, $0562
    ld a, l
    ld a, l
    ld c, [hl]
    ld l, l
    ld [hl], h
    inc c
    add hl, bc
    ld a, l
    ld c, l
    ld bc, $7d7a
    ld a, [bc]
    inc c
    dec c
    ld bc, $7a01
    ld b, $01
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld a, l
    ld bc, $2d1c

jr_017_5b26:
    dec e
    dec hl
    inc l
    dec l
    ld e, $01
    ld a, l
    ld c, $6a
    ld e, e
    ld l, a
    jr @+$1c

    ld c, h
    ld bc, $4d0d
    rrca
    jr jr_017_5b53

    ld [hl], b
    jr jr_017_5b57

    ld c, a
    dec b
    ld [hl], d
    ld c, $0d
    ld h, [hl]
    dec e
    dec h
    dec e
    ld e, $0d
    ld l, h
    ld [hl], h
    inc c
    dec b
    ld bc, $0108
    ld e, [hl]
    ld bc, $0701

jr_017_5b53:
    ld a, l
    ld d, e
    inc b
    inc b

jr_017_5b57:
    ld bc, $7d24
    inc b
    ld d, c
    ld a, l
    ld a, l
    call Call_000_3e94
    ld bc, $0005
    add hl, bc
    ld a, [$d11e]
    ld [$d0b5], a
    push hl
    call Call_000_1537
    pop hl
    ld a, [$d0be]
    ld [hl+], a
    ld a, [$d0bf]
    ld [hl], a
    ret


    call Call_000_3c3c
    ld a, $04
    jp Jump_000_3ef5


    rla
    daa
    ld c, a
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld a, $03
    jp Jump_000_3ef5


    db $fc
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c3c
    ld a, $0a
    call Call_000_3ef5
    ld a, $4a
    ld [$cf91], a
    call Call_000_13d0
    jp Jump_017_5bd9


    rla
    ld e, b
    ld c, a
    ld [hl+], a
    ld d, b
    ld a, $b7
    ld [$cf91], a
    call Call_017_5bd9
    call Call_000_3c3c
    ld a, $09
    call Call_000_3ef5
    ret


    rla
    and a
    ld c, a
    ld [hl+], a
    ld d, b
    ld a, $b6
    ld [$cf91], a
    call Call_017_5bd9
    call Call_000_3c3c
    ld a, $0b
    call Call_000_3ef5
    ret


    rla
    push de
    ld c, a
    ld [hl+], a
    ld d, b

Call_017_5bd9:
Jump_017_5bd9:
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    xor a
    ldh [$b0], a
    call Call_000_3719
    ld a, $11
    ld [$d125], a
    call Call_000_30e8
    call Call_000_2429
    ld a, [$cf91]
    ld [$d0b5], a
    call Call_000_1537
    ld de, $8b10
    call Call_000_1665
    ld a, $80
    ldh [$e1], a
    ld hl, $c486
    ld a, $02
    call Call_000_3e6d
    call Call_000_3865
    call Call_000_3725
    call Call_000_3dd7
    ld a, $90
    ldh [$b0], a
    ret


    call Call_000_3c3c
    ld a, $01
    ld [$cc3c], a
    ld a, [$cd3d]
    call Call_000_3ef5
    ret


    ld [$19cd], sp
    scf
    ld hl, $5c9e
    call Call_000_3c49
    xor a
    ld [$d07c], a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $03
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

Jump_017_5c51:
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3a0
    ld b, $08
    ld c, $0d
    call Call_000_1922
    ld hl, $c3ca
    ld de, $5ca8
    call Call_000_1955
    ld hl, $5ca3
    call Call_000_3c49
    call Call_000_3abe
    bit 1, a
    jr nz, jr_017_5c93

    ld a, [$cc26]
    cp $03
    jr z, jr_017_5c93

    ld hl, $d730
    res 6, [hl]
    ld hl, $5cd8
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c49
    jp Jump_017_5c51


jr_017_5c93:
    ld hl, $d730
    res 6, [hl]
    call Call_000_3725
    jp Jump_000_24d7


    rla
    ld bc, $2250
    ld d, b
    rla
    daa
    ld d, b
    ld [hl+], a
    ld d, b
    add a
    adc [hl]
    sub [hl]
    ld a, a
    sub e
    adc [hl]
    ld a, a
    adc e
    adc b
    adc l
    adc d
    ld c, [hl]
    add d
    adc [hl]
    adc e
    adc [hl]
    sub d
    sub d
    add h
    sub h
    adc h
    ld c, [hl]
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld c, [hl]
    sub d
    sub e
    adc [hl]
    adc a
    ld a, a
    sub c
    add h
    add b
    add e
    adc b
    adc l
    add [hl]
    ld d, b
    sbc $5c
    db $e3
    ld e, h
    add sp, $5c
    rla
    ld c, e
    ld d, b
    ld [hl+], a
    ld d, b
    rla
    cp l
    ld d, b
    ld [hl+], a
    ld d, b
    rla
    add sp, $50
    ld [hl+], a
    ld d, b
    ld [$19cd], sp
    scf
    ld hl, $5da2
    call Call_000_3c49
    xor a
    ld [$d07c], a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $33
    ld [$cc29], a
    ld a, $02
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

Jump_017_5d15:
jr_017_5d15:
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3a0
    ld bc, $060a
    call Call_000_1922
    ld hl, $c3c9
    ld de, $5dac
    call Call_000_1955
    ld hl, $c3ce
    ld de, $5dbb
    call Call_000_1955
    ld hl, $5da7
    call Call_000_3c49
    call Call_000_3abe
    bit 1, a
    jr nz, jr_017_5d97

    bit 4, a
    jr z, jr_017_5d5c

    ld a, $02
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $06
    ld [$cc25], a
    ld a, $03
    ld [$d07c], a
    jr jr_017_5d15

jr_017_5d5c:
    bit 5, a
    jr z, jr_017_5d75

    ld a, $02
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    xor a
    ld [$d07c], a
    jr jr_017_5d15

jr_017_5d75:
    ld a, [$cc26]
    ld b, a
    ld a, [$d07c]
    add b
    cp $05
    jr z, jr_017_5d97

    ld hl, $d730
    res 6, [hl]
    ld hl, $5dcc
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c49
    jp Jump_017_5d15


jr_017_5d97:
    ld hl, $d730
    res 6, [hl]
    call Call_000_3725
    jp Jump_000_24d7


    rla
    db $10
    ld d, c
    ld [hl+], a
    ld d, b
    rla
    ld c, [hl]
    ld d, c
    ld [hl+], a
    ld d, b
    ld a, a
    sub d
    adc e
    adc a
    ld c, [hl]
    ld a, a
    adc a
    sub d
    adc l
    ld c, [hl]
    ld a, a
    adc a
    add b
    sub c
    ld d, b
    ld a, a
    add c
    sub c
    adc l
    ld c, [hl]
    ld a, a
    add l
    sub c
    sbc c
    ld c, [hl]
    ld a, a
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld d, b
    sub $5d
    db $db
    ld e, l
    ldh [$5d], a
    push hl
    ld e, l
    ld [$175d], a
    ld [hl], d
    ld d, c
    ld [hl+], a
    ld d, b
    rla
    sbc $51
    ld [hl+], a
    ld d, b
    rla
    ld c, e
    ld d, d
    ld [hl+], a
    ld d, b
    rla
    or l
    ld d, d
    ld [hl+], a
    ld d, b
    rla
    cpl
    ld d, e
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld a, $26
    jp Jump_000_3ef5


    rla
    and a
    ld d, e
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld a, [$cd3d]
    ld [$cd5b], a
    ld a, [$d773]
    bit 0, a
    jr z, jr_017_5e11

    ld a, $26
    jp Jump_000_3ef5


jr_017_5e11:
    bit 1, a
    jr nz, jr_017_5e53

    ld a, [$d743]
    ld b, a
    ld a, [$cd5b]
    cp b
    jr z, jr_017_5e23

    ld a, $26
    jr jr_017_5e7a

jr_017_5e23:
    ld hl, $d773
    set 1, [hl]
    ld hl, $5e7d
    ld a, [$cd5b]
    ld b, a
    add a
    add a
    add b
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ldh [$db], a
    push hl
    call Call_000_3e5c
    swap a
    ld b, a
    ldh a, [$db]
    and b
    dec a
    pop hl
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    and $0f
    ld [$d744], a
    ld a, $3b
    jr jr_017_5e7a

jr_017_5e53:
    ld a, [$d744]
    ld b, a
    ld a, [$cd5b]
    cp b
    jr z, jr_017_5e6e

    ld hl, $d773
    res 1, [hl]
    call Call_000_3e5c
    and $0e
    ld [$d743], a
    ld a, $3e
    jr jr_017_5e7a

jr_017_5e6e:
    ld hl, $d773
    set 0, [hl]
    ld hl, $d126
    set 6, [hl]
    ld a, $3d

jr_017_5e7a:
    jp Jump_000_3ef5


    ld [bc], a
    ld bc, $0003
    nop
    inc bc
    nop
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld bc, $0005
    nop
    inc bc
    nop
    inc b
    ld b, $00
    inc b
    ld bc, $0503
    rlca
    inc bc
    ld [bc], a
    inc b
    ld [$0300], sp
    inc bc
    rlca
    add hl, bc
    nop
    inc b
    inc b
    ld b, $08
    ld a, [bc]
    inc bc
    dec b
    rlca
    dec bc
    nop
    inc bc
    ld b, $0a
    inc c
    nop
    inc b
    rlca
    add hl, bc
    dec bc
    dec c
    inc bc
    ld [$0e0a], sp
    nop
    ld [bc], a
    add hl, bc
    dec c
    nop
    nop
    inc bc
    ld a, [bc]
    inc c
    ld c, $00
    ld [bc], a
    dec bc
    dec c
    nop
    nop
    rla
    add $53
    ld [hl+], a
    ld [$48cd], sp
    scf
    ld a, $9d
    call Call_000_23b1
    call Call_000_3748
    jp Jump_000_24d7


    rla
    jr jr_017_5f32

    ld [hl+], a
    ld d, b
    ld [$48cd], sp
    scf
    ld a, $9d
    call Call_000_23b1
    call Call_000_3748
    jp Jump_000_24d7


    rla
    ld d, c
    ld d, h
    ld [hl+], a
    ld [$48cd], sp
    scf
    ld a, $ad
    call Call_000_23b1
    call Call_000_3748
    jp Jump_000_24d7


    rla
    adc h
    ld d, h
    ld [hl+], a
    ld [$48cd], sp
    scf
    ld a, $a5
    call Call_000_23b1
    call Call_000_3748
    jp Jump_000_24d7


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_5f32:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
