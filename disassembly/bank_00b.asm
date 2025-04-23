; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld [hl], a
    rst $28
    call nc, $d02f
    ld a, a
    ld b, l
    scf
    ld e, a
    cp $53
    add d
    or b
    ld b, [hl]
    pop bc
    dec d
    db $ed
    dec b
    jr nc, jr_00b_408e

    ld a, [hl+]
    sbc c
    ld [hl-], a
    cp l
    ld b, [hl]
    or l
    add hl, bc
    ld b, l
    ld c, b
    ld [$534a], a
    and [hl]
    cp l
    ld b, d
    add c
    ld [hl], d
    ld hl, $b987
    ld d, l
    or h
    push bc
    ld [$f885], sp
    jp nz, Jump_00b_7abd

    db $f4
    ld h, h
    add h
    inc a
    dec d
    ldh [$94], a
    push bc
    ld a, [$5e35]
    cp l
    ld c, $b6
    sub c
    ld e, b
    sbc c
    ld [hl+], a
    jr nc, jr_00b_408f

    ld d, e
    add hl, sp
    and l
    ld [$7121], sp
    db $d3
    dec b
    push bc
    adc b
    ld b, c
    db $38, $94
    inc h
    sbc b
    and [hl]
    ld c, e
    ld h, l
    inc d
    jr z, @-$31

    ld c, l
    inc d
    ld d, b
    ld h, b
    add l
    ld c, d
    ld e, d
    ld h, c
    db $d3
    ld [$35aa], sp
    ld b, d
    ld e, [hl]
    ld a, [$aa31]
    ld sp, $0753
    adc l
    ret c

jr_00b_4070:
    jr nz, jr_00b_40d4

    ld l, a
    jp nc, $8d13

    ld c, l
    add sp, $25
    or d
    ld a, [hl+]
    dec h
    ld a, b
    ldh a, [$a8]
    ld de, $f85b
    xor l
    adc h
    and e

jr_00b_4085:
    ld [$a3e1], sp
    ld b, $29
    ld a, b
    or l
    ld h, c
    ld b, d

jr_00b_408e:
    add l

jr_00b_408f:
    ld hl, $0a4e
    and d
    ld d, l
    ld a, [$2a07]
    sub e
    ld b, h
    pop hl
    ld a, c
    ld e, l
    ei
    push de
    and d
    db $f4
    add [hl]
    and b
    and c
    ld c, b
    and e
    ld c, d
    ld a, e
    ld e, d
    and d
    inc d
    ld h, d
    ld de, $22ad
    add c
    ld c, b
    add [hl]
    adc l
    add hl, hl
    add c
    ld b, l
    add c
    add l
    adc c
    or l
    jr nc, jr_00b_4070

    ld b, d
    ld [$ca54], sp
    sub [hl]
    add c
    ld h, b
    db $e3
    inc b
    sbc b
    inc hl
    dec d
    ld d, b
    add d
    inc [hl]
    xor [hl]
    ld [hl+], a
    adc l
    ld e, c
    ld d, h
    pop de
    ld d, h
    db $10
    add c
    adc e

jr_00b_40d4:
    and d
    db $e3
    dec l
    ld [hl+], a
    ld b, d
    and e
    ld h, l
    inc b
    jp z, Jump_00b_4989

    adc b
    adc c
    ld h, h
    db $e3
    and c
    ld c, h
    xor b
    sub l
    ld [hl+], a
    adc c
    adc d
    cp d
    ld [$4bd9], sp
    ld d, d
    jr z, jr_00b_4085

    sub h
    cp e
    ld d, h
    add h
    adc l
    inc sp
    ld b, l
    inc b
    jp nz, Jump_00b_4289

    dec h
    ld c, e
    xor d
    dec hl
    dec bc
    push de
    ld d, [hl]
    ret c

    ld d, b
    add d
    ld b, [hl]
    adc c

Call_00b_4108:
    ld d, e
    dec bc
    ld a, b
    jp z, $4642

    cp a
    rst $30
    ld sp, hl
    add l
    ld sp, $5050
    ld a, b
    adc b
    jp c, Jump_00b_425a

    cp a
    jp c, $8a85

    ld d, l
    ld c, b
    cp b
    rst $20
    and a
    rst $28
    pop af
    ld e, d
    ld l, $0a
    sbc d
    and a
    inc l
    ld a, [bc]
    and a
    dec b
    ld a, [$e90a]
    ld [de], a
    ld [hl-], a
    ld l, b
    sbc b
    ld e, a
    xor c
    cp l
    ld a, a
    cp $a1
    and e
    sub c
    sbc h
    scf
    rst $20
    dec h
    ld [hl], a
    ld a, e
    ld [$7052], a
    ld a, a
    call nz, Call_000_1c21
    ld d, b
    ld [hl], a
    ld a, [$4fff]
    ld [$4742], a
    ld hl, sp-$19
    ld c, h
    rla
    rst $38
    ccf
    ld b, e
    ld a, b
    ld l, h
    ccf
    ldh [$95], a
    ld b, [hl]
    sbc c
    inc sp
    adc a
    ld hl, sp+$71
    ld c, a
    ld e, b
    ld c, h
    rra
    ret


    push bc
    inc c
    adc e
    add d
    inc d
    or h
    xor e
    di
    ld l, b
    ccf
    rlca
    sub [hl]

jr_00b_4175:
    pop de
    and h
    ld b, h
    adc d
    dec bc
    call nz, $ac5f
    ld b, [hl]
    call nz, $12e1
    sbc e
    and c
    and e
    dec [hl]
    cp $a6
    cp b
    or e
    sub l
    inc e
    ld e, c
    ld de, $911d
    jr z, jr_00b_41b6

    ld hl, $e493
    rst $00
    dec b
    inc b
    and h
    ld a, [hl-]

jr_00b_4199:
    ld d, e
    pop de
    ld a, e
    sub e
    ldh [$9c], a
    xor b
    xor e

Call_00b_41a1:
    ld b, a
    rrca
    ldh a, [$a3]
    rst $20
    inc d
    ld [hl], b
    inc h
    cp b
    cp a
    ld a, [$8257]
    add hl, bc
    jp nz, $9090

    adc h
    ld b, e
    jr nc, jr_00b_4175

jr_00b_41b6:
    rst $38
    db $10

jr_00b_41b8:
    adc [hl]
    pop bc
    dec de
    ld l, h
    ld h, d
    sub c
    ld c, e
    pop af
    dec c
    pop hl
    ld a, [bc]
    ld c, l
    add d
    add hl, de
    jp nz, $ab8c

    rst $38
    rst $38
    ld [bc], a
    rla
    sbc b
    inc h
    ld hl, sp+$21
    sbc e
    rst $08
    rst $38

jr_00b_41d4:
    rst $38
    rst $18
    jp $1bed


    ld a, b
    ld a, [$f569]
    rst $38
    pop bc
    pop bc
    ld b, h
    ld a, a
    and $71
    rla
    adc [hl]
    ld l, c
    jp $11ff


    rla
    or l
    ld b, [hl]
    sub c
    ld d, $47
    jr jr_00b_41d4

    adc l
    jr jr_00b_4199

    ld e, [hl]
    ld [hl], b
    jr nz, @-$77

    xor [hl]
    ld h, e
    sub c
    inc de
    sub c
    sub c
    ld l, b
    ld sp, hl
    add $f8
    ld a, d
    ld h, [hl]
    sub e
    dec d
    ld de, $0e8c
    ld l, [hl]
    add a
    add [hl]
    dec e
    add hl, de
    ld h, $c8
    ld b, h
    ld d, a
    and [hl]
    xor a
    adc $e6
    ld l, b
    ld b, a
    inc hl
    db $fc
    push hl
    rst $28
    di
    cp l
    inc c
    ld l, d
    sbc h
    ld d, a
    cp d
    xor d
    dec d
    xor a
    dec a
    add hl, de
    ld b, c
    dec e
    db $10
    ld [hl], a
    xor d
    and d
    xor l
    sbc c
    or c
    rst $18
    rrca
    ld d, l
    ld h, c
    jr jr_00b_41b8

    ld b, h
    cp h
    sub l
    ld a, [hl-]
    call nc, Call_00b_548b
    push de
    inc sp
    or h
    sub l
    sub h
    or a
    db $e3
    ld a, [hl+]
    add hl, bc
    ld h, d
    add hl, hl
    sub c
    ld a, b
    inc d
    call Call_00b_7246
    and [hl]
    ld b, c
    ld a, [$5234]
    ld d, h
    xor c
    and e
    add l
    ld b, [hl]

Jump_00b_425a:
    dec bc
    ld b, l
    ld h, d
    rra
    ld [hl], $bd
    ld b, $06
    sub b
    sbc [hl]
    jr c, @-$15

    ld c, $a0
    add d
    ld a, [hl-]
    dec hl
    db $d3
    jp Jump_00b_54b5


    db $ec
    xor d
    adc a
    and l
    sbc a
    ld d, $9d
    ld [hl], d
    ld b, [hl]
    inc d
    sbc c
    cp c
    xor h
    reti


    ld e, d
    ld e, a
    ld b, [hl]
    di
    dec d
    ld l, c
    rst $08
    add [hl]
    ld c, e
    ld sp, hl
    set 7, c

Jump_00b_4289:
    rla
    rst $18
    xor h
    ld [hl], c
    jp nz, Jump_00b_4584

    ld b, h
    ld h, a
    ld [hl+], a
    ld c, $61
    rst $20
    ld h, a
    cp $76
    push de
    rra
    add e
    nop
    ld [hl], a
    cp h
    ld d, a
    ld c, a
    ld e, c
    ld d, h
    ldh a, [$6d]
    inc sp
    ld h, h
    and l
    ld d, e
    sub c
    ld d, d
    jp hl


    dec de
    ld c, c
    ld b, l
    ld a, e
    ld d, d
    dec d
    ld c, [hl]
    scf
    cp a
    ld d, b
    adc b
    add [hl]
    ret nc

    ld b, d
    ld d, b
    or a
    cp l
    dec b
    and e
    adc [hl]
    pop de
    xor a
    ld c, h
    inc l
    pop bc
    ld l, a
    ld a, a
    db $db
    ld d, d
    inc d
    pop de
    db $e4
    xor h
    ld h, h
    sbc c
    ld [$fb96], sp
    rst $38
    rlca
    cp a
    ld hl, sp-$35
    push hl
    ld d, c
    xor c
    ld c, $45
    ld h, b
    ld e, l
    and a
    ldh [$59], a
    ld e, a
    cp l
    adc h
    ld d, a
    or $bf
    sub b
    sub c
    and c
    ld a, [$e505]
    xor c
    pop hl
    ld a, c
    ld d, c
    ld d, c
    ld a, [hl]
    and c
    cp l
    ld a, [bc]

jr_00b_42f6:
    cp l
    ret nc

    ld l, b
    ld d, [hl]
    rlca
    rst $28
    ld [$9887], sp
    cpl
    rst $38
    dec bc
    rst $38
    rst $38
    rst $18
    ld b, c
    ld l, b
    add hl, sp
    ld b, $23
    ld a, a
    sub c
    ld e, a
    ld h, l
    ld a, a
    add sp, -$1f
    ld a, [$9006]
    ret z

    ld e, e
    push af
    add hl, bc
    sbc $f6
    add a
    db $f4
    db $dd
    ld [c], a
    ld hl, $68b8
    adc e
    ld a, a
    jp hl


    dec de
    db $db
    rrca
    di
    ld d, a
    adc c
    ld e, d
    add d
    ld l, b
    cp d
    cp e
    rst $28
    db $ed
    add a
    ld hl, sp-$33
    pop hl
    ld l, h
    sub h
    ld d, b
    ld hl, sp+$35
    rst $38
    rst $28
    ld l, d
    and l
    rra
    call z, Call_00b_5f9e
    add [hl]
    add c
    ld d, d
    ld l, b
    ld h, [hl]
    xor a
    jp c, $af79

    db $fd
    ld c, e
    ld a, a
    add sp, $55
    ld b, c
    ld b, d
    add d
    adc e
    sub b
    ld c, e
    or a
    cp a
    rst $38
    ret


    cp [hl]
    inc sp
    ld d, d
    dec l
    ld [hl-], a
    sbc c
    ld l, $bf
    or $8a
    and e
    dec b
    dec d
    ld l, $42
    ld sp, $3199
    xor l
    add hl, sp
    jr jr_00b_42f6

    dec h
    ld a, [hl+]
    ld d, d
    ld h, $4e
    xor d
    add hl, hl
    adc h
    ld d, d
    rst $28
    ld e, h
    inc h
    rst $20
    and d
    ld e, b
    jp nz, $8233

    and l
    ld [hl], e
    sub [hl]
    adc b
    ld a, b
    adc b
    add h
    sub h
    db $10
    ld h, h
    inc hl
    xor [hl]
    add l
    ldh [$86], a
    ld a, [hl+]
    inc d
    adc b
    adc c
    ld a, [hl-]
    xor b
    ld e, $2a
    ld h, $a0
    ld c, a
    ld c, $9e
    ld l, $21
    ld d, c
    ld b, l
    ld d, e
    cp l
    db $e3
    ld [$52a4], sp
    ld d, e
    db $e4
    ld h, a

jr_00b_43ab:
    ret nc

    daa
    add h
    sbc h
    or d
    ld [hl], a
    ld [hl], d
    ld e, $5a
    ld l, l
    daa
    dec l
    xor d
    ld c, d
    ld b, [hl]
    sub d
    add h
    ld b, [hl]

jr_00b_43bd:
    and c
    xor c
    rla
    inc e
    or a
    jr jr_00b_43bd

    add d
    rrca
    inc de
    ld c, e
    ld e, d

jr_00b_43c9:
    add hl, bc
    add hl, bc
    or d
    ld h, e
    ld h, c
    ld l, c
    jr z, jr_00b_43c9

    and c
    jr nc, jr_00b_43ab

    ld e, d
    ld [hl], c
    ret nz

    sub h
    add [hl]
    sbc $2b
    ld h, c
    ld [bc], a
    ld de, $718c
    xor c
    ld c, b
    ld e, [hl]
    add h
    ld [hl-], a
    db $10
    xor h
    jr z, @+$43

    add $32
    ld b, d
    ld b, d
    rst $38
    ld a, [$5298]
    add hl, bc
    inc l
    ld c, [hl]
    add h
    ld l, d
    jp nz, Jump_000_05c7

    xor b
    ld a, [hl]
    inc de
    jp z, Jump_00b_6cd1

    ld c, d
    cp c
    ld de, $d1ce
    dec c
    ld c, d
    add hl, hl
    ld c, d
    rst $38
    ld b, h
    xor [hl]
    ld [hl], d
    or d
    cpl
    add a
    ld a, [$3531]
    ld a, a
    ld b, c
    ld h, b

jr_00b_4415:
    cp c
    call nz, $bfe1
    ld b, c
    ld h, c
    rst $38
    rst $38
    and b
    xor c
    and h
    ld l, [hl]
    or l
    ld h, c
    pop de
    inc l
    rst $30
    inc h
    xor l
    db $10
    ld [$6d4c], a
    add h
    ld b, l
    push bc
    ccf
    sub c
    ld h, $56
    adc h
    add hl, bc
    add hl, bc

jr_00b_4436:
    sbc h
    ld c, d
    inc de
    inc b
    jr z, jr_00b_4415

    ld [hl], d
    ld [hl], c
    or c
    inc sp
    add hl, de
    pop hl
    ld d, $e9
    add h
    sbc [hl]
    ld [bc], a
    ld b, a
    db $10
    sub c
    db $76
    ld h, e
    and a
    add e
    db $10
    push bc
    ld h, c
    sub e
    ld a, [hl+]
    ld a, [$c575]
    ld sp, $a318
    and [hl]
    dec [hl]
    ld l, c
    pop de
    ld [de], a
    call nz, $a121
    ld de, $1897
    ld b, a
    inc l
    ld b, e
    ld [de], a
    adc a
    db $e4
    xor $54
    ld [hl], l
    jp nz, Jump_00b_60c4

    sub c
    push hl
    rst $20
    add e
    ld l, h
    ld e, d
    ld c, a
    rla
    sbc [hl]
    dec b
    add $09
    inc [hl]
    ld e, l
    rst $00
    sbc a
    jr jr_00b_44c9

    ret z

    add b
    ld b, h
    or h
    ld d, e
    ld a, b
    pop hl
    and d
    ret c

    sbc d
    jr c, jr_00b_4436

    add a
    ld a, [hl+]
    adc h
    ld a, c
    ld c, c

jr_00b_4493:
    and b
    and b
    ld d, c
    ld b, [hl]
    adc h
    rst $20
    push hl
    dec b
    ld a, [bc]
    add d
    ld d, $8d

jr_00b_449f:
    xor a
    sbc a

jr_00b_44a1:
    inc b
    ld hl, $8e5e
    dec de
    ld b, [hl]
    adc h
    push de
    scf
    or h
    ret


    and l
    ld c, l
    sbc $14
    sbc a
    jr jr_00b_4493

    ld a, b
    ld e, d
    dec e
    ld b, c
    add hl, bc
    dec [hl]
    ld a, b
    rra
    adc c
    ld b, d
    call c, $c564
    cp a
    ld [$058a], sp
    ld h, b
    ld a, d
    and e
    ld a, [de]
    adc h

jr_00b_44c9:
    sub h
    ld l, l
    ld d, e
    and c
    ld a, [hl+]
    db $d3
    sbc [hl]
    dec a
    add hl, de
    and d
    sbc e
    and a
    inc d
    ld h, c
    sub d
    sbc h
    jr z, jr_00b_449f

    ld l, $4a
    ld h, a
    ld [bc], a
    ld d, h
    jr nc, jr_00b_44a1

    ld a, [bc]
    ld l, l
    jr c, jr_00b_4507

    ld [hl+], a
    cp $42
    ld a, [hl+]
    ld l, l
    ld b, c
    xor c
    dec d
    inc b
    rst $38
    sbc h
    ld a, [bc]
    ld h, d
    rst $38
    ld sp, hl
    pop bc
    ld a, c
    ld c, a
    db $fd
    inc b
    ld [hl], c
    cp b
    ccf
    or c
    call z, $fff7
    ld a, [hl]
    sbc h
    dec l
    dec bc
    cp $45

jr_00b_4507:
    ret nc

    ld h, $6c
    ld h, c
    ld a, b
    rst $00
    ld h, [hl]
    ld c, h
    sbc l
    add hl, hl
    add h
    ld a, h
    ld c, b
    ld d, l
    cp [hl]
    and l
    ld d, h
    pop af
    db $10
    ld b, [hl]
    inc a
    jr z, @+$22

    add [hl]
    add hl, sp
    dec d
    ld sp, $3a66
    ld h, l
    ld a, [bc]
    and l
    xor d
    ld a, [hl+]
    add hl, sp
    ld d, h
    ld a, [hl+]
    sub l
    and e
    xor c
    cp $25
    inc a
    ld e, h
    ldh [rDMA], a
    scf
    and d
    add sp, -$2f
    add hl, bc
    ld d, e
    adc c
    dec d
    ld [hl], $8e
    rla
    add [hl]
    dec b
    ld [hl], $45
    add hl, sp
    ld d, h
    ldh a, [$6f]
    ld b, [hl]
    ld c, e
    ld d, h
    ld d, d
    ld d, e
    ld [hl], l
    ld h, b
    cp [hl]
    dec h
    adc b
    and b
    ld c, [hl]
    ld a, [hl+]
    xor d
    add l
    ld e, d

jr_00b_4558:
    inc [hl]
    adc l
    push de
    ld d, l
    and b
    ld d, [hl]
    and l
    dec h
    ld b, d
    add d
    dec [hl]
    xor d
    xor d
    adc h
    ld l, c
    ld h, b
    xor b
    ld h, e
    pop bc
    xor c
    ld e, b
    bit 7, l
    ld c, d
    add hl, hl
    ld [c], a
    ld a, a
    ld h, b
    sbc [hl]
    ld c, $ce
    add hl, hl
    sbc $e1
    rst $00
    ld c, l
    ld c, d
    ld [c], a
    cp e
    dec e
    ld [hl], d
    ld c, l
    ld b, a
    ld l, d

Jump_00b_4584:
    or h
    ld b, d
    ld l, l
    daa
    dec c
    ld de, $788a
    ld sp, $c551
    inc e
    ld c, b
    or c
    push bc
    dec de
    jr nc, jr_00b_4558

    sbc [hl]
    dec c
    db $10
    rst $20
    adc b
    adc h
    ld l, d
    and h
    add $e8
    ld sp, $a7c2
    ld d, $c6
    ld a, [hl+]
    xor c
    db $10
    ld b, h
    ld b, a
    dec bc
    ld d, d
    db $fd
    pop hl
    or $8e
    inc d
    ld c, $9c
    sub h
    ld h, c
    ld b, $0b
    db $fc
    rst $00
    add e
    ld b, h
    add $40
    ld b, h
    cp l
    sub l
    and e
    sub c
    rst $38
    xor d
    dec d
    jr c, @-$16

    sbc d
    ld d, [hl]
    add hl, sp
    ld l, l
    ld d, e

jr_00b_45cc:
    cp d
    xor b
    db $ed
    ld a, [hl]
    dec sp
    ld l, a
    ld d, e
    cp c
    inc b
    db $ed
    db $fd
    ld c, [hl]
    jp c, $8554

    ld a, [hl-]
    db $fc
    inc hl
    or d
    sbc b
    jr jr_00b_45cc

    or l
    adc a
    add a
    sbc $da
    sbc h
    xor d
    xor b
    cp h
    ld [hl], d
    di
    ld l, b
    ld d, a
    inc e
    push af
    jr nc, @+$3b

    push de
    ld b, c
    ld [bc], a
    db $76
    inc l
    ld [hl], a
    ld c, d
    ld a, b
    add hl, bc

jr_00b_45fc:
    rst $18
    daa
    ld a, h
    inc d
    sbc [hl]
    ld c, $32
    ld [hl], l
    jp nz, $b59d

    rra
    db $10
    ld d, l
    cp l
    sub a
    jr nc, @+$76

    push bc
    db $f4
    db $e3
    adc d
    ld d, l
    jr nc, @+$52

    adc h
    sub l
    ld d, e
    dec [hl]
    ld d, e
    jr c, jr_00b_45fc

    xor e
    xor c
    ld d, b
    ld d, e
    ld a, [de]
    adc l
    reti


    ld b, c
    ld a, d
    xor c
    push af
    dec h
    ld b, d
    ld b, c
    ld sp, $0c45
    jr nz, @+$55

    dec de
    cp a
    add hl, bc
    inc b
    rst $18
    ld h, $e7
    push af
    ld a, [de]
    ld [hl+], a
    xor b
    inc hl
    rlca
    call nc, $e09f
    add [hl]
    db $e4
    jp z, $c204

    cp $e1
    ld d, l
    ld h, $0c
    ret


Jump_00b_464a:
    ld [hl], e
    scf
    xor e
    ld a, l
    sub h
    sbc [hl]
    adc b
    ld e, a
    xor c
    ld c, l
    add sp, -$68
    rst $00
    add sp, -$54
    pop bc

Jump_00b_465a:
    ld e, l
    ld d, l
    pop hl
    ld d, c
    and b
    ld d, d
    sub l
    dec d
    dec hl
    push af
    cp $81
    sbc a
    ld b, a
    ld b, e
    ld e, d
    add l
    db $fc
    jp nz, $ac22

    ld e, [hl]
    and l
    ld a, l
    ld a, [bc]
    and b
    adc l
    ld h, c
    push bc
    ld h, l
    cp h
    ld h, b
    ld d, d
    xor b
    add [hl]
    ld [$8ab4], sp
    ld d, [hl]
    ld c, $57
    or d
    rla
    add c
    ld h, h
    adc $aa
    ld [hl+], a
    and d
    ld d, h
    ld a, [hl+]
    inc c
    ld d, h

Jump_00b_468f:
    push hl
    xor d
    sub d
    inc d
    and a
    add [hl]
    push bc
    scf
    cp b
    adc d
    ld d, l
    ld d, [hl]
    adc e
    and b
    sbc [hl]
    jp z, $2698

Jump_00b_46a1:
    adc d
    ld [hl], l
    add hl, hl

Jump_00b_46a4:
    sbc a
    add $49
    add hl, bc
    add hl, bc
    ld l, e
    add hl, de
    jr c, jr_00b_4714

    inc c
    ld h, e
    add hl, de
    ld d, a
    and $bf
    and [hl]
    ld l, d
    ld h, l
    pop af
    sub h
    ld a, $4e
    add hl, bc
    ccf
    ld a, [$f94d]
    and d
    ld h, c
    ld [c], a
    cp l
    db $fc
    ld d, a
    add $71
    add l
    ei
    pop bc
    ld e, d
    ld h, e
    jp hl


    xor l
    ld a, [bc]
    cp $61
    ld h, $1d
    ld a, [de]
    pop hl
    adc l
    ld sp, $266f
    ld a, [hl-]
    ld l, c
    add [hl]
    add hl, de
    sub e
    pop hl
    or c
    ld c, a
    sbc b
    ld hl, $1004
    ld b, h
    inc h
    rst $18
    ccf
    xor b
    ld d, a
    add $95
    ld a, b
    and h
    ld h, h
    ld b, e
    ld d, h
    rla
    xor c
    sub h
    rrca
    rst $28
    and h
    ldh [$b1], a
    add [hl]
    rra
    sbc b
    jp $05ff


    ld l, a
    rst $38
    rla
    ld a, e
    cp $6a
    adc h
    inc c
    dec d
    dec h
    inc hl
    ld [hl], b
    cp $70
    xor b
    ei
    ld [hl-], a
    cp d
    ld b, h
    rrca

jr_00b_4714:
    ld b, a
    ld [bc], a
    ld d, l
    ld h, e

Jump_00b_4718:
    ld a, a
    dec h

Jump_00b_471a:
    pop de
    jp Jump_00b_4718


    ld [$be44], sp
    ld c, c
    db $fd
    ld d, e
    sub c
    xor c
    rst $18
    sbc b
    inc hl
    sbc c
    adc c
    ld l, b
    ld l, c
    ld [hl], $fc
    inc hl
    add hl, bc
    ld b, a
    adc l
    call nc, $acd6
    sbc $8e
    ld [$f0db], sp
    ld c, h
    ld de, $e458
    sub d
    ld d, h
    add l
    adc [hl]
    add hl, bc
    ld e, e
    cp [hl]
    rlca
    adc [hl]
    sub l
    ld e, [hl]
    dec sp
    ld a, [hl+]
    ld a, $b2
    ld a, h
    xor d
    ld [hl], e
    or b
    ld b, c
    inc de
    cp c
    ret z

    add e
    rla
    ld l, [hl]
    and a
    ld [hl], l
    ld e, c
    push bc
    sbc b
    and h
    and a
    rla
    sub [hl]
    ld a, [$c0f9]
    add a
    ld [$f7bd], a
    rst $00
    ld [bc], a
    dec [hl]
    rst $38
    cp [hl]
    ld [hl], d
    pop bc
    inc b
    rrca
    pop af
    reti


    ld d, c
    ld hl, sp+$60
    ld d, l
    or e
    ld a, c
    push af
    dec b
    ld hl, $3855
    ld d, b
    ld d, h
    sbc d
    ld a, [$05ea]
    ld e, d
    sub h
    push bc
    rst $20
    db $fc
    ld [hl], $04
    add h
    ccf
    ld a, [bc]
    and d
    dec de
    ld c, d
    sbc l
    ld b, d
    ld a, c
    ld e, [hl]
    ret nc

    ld c, l
    ld [hl], c
    or h
    add l
    ld d, $66
    ld hl, $367a
    sub h
    ld d, h
    adc d
    and c
    sub b
    ld d, h
    dec d
    ld c, h
    db $10
    xor d
    sub [hl]
    ld c, d
    add l
    xor h
    dec [hl]
    ld a, [bc]
    dec d
    sub b
    ld l, b

Jump_00b_47b3:
    cpl
    adc c
    add d
    ld [hl+], a
    dec hl
    ld h, $0a
    ld l, $d5
    ld e, [hl]
    ld a, [hl+]
    ld h, b
    sub h
    ld h, l
    ld d, c
    ld b, l
    ld c, h
    ld a, [hl+]
    and e
    ld b, [hl]
    add e
    dec h
    ld b, l
    dec de
    and e
    sub l
    ld sp, $4851
    ld c, [hl]
    adc a
    inc b
    dec d
    ld b, l
    rla
    xor b
    push hl
    adc b
    and b
    ld c, [hl]
    rlca
    rst $38
    ld c, h
    ld [de], a
    ld [hl+], a
    db $10
    sub b
    ld e, h
    jr z, jr_00b_4839

    dec de
    dec h
    ld [c], a
    and [hl]
    ld [hl+], a
    inc b
    ld a, [hl+]
    ld h, l
    ld l, l
    ld d, b
    adc b
    xor d
    xor b
    ld d, [hl]
    ld c, c
    ld a, b
    jr nc, jr_00b_486b

    sub l
    ld c, l
    ld a, [hl+]
    and l
    add l
    ld hl, $6666

jr_00b_47ff:
    ld d, l
    inc c
    inc h
    rst $10
    ld b, l
    ret z

    sbc h

jr_00b_4806:
    add hl, de
    ld a, c
    ld b, d
    and c
    ld c, l
    xor $2e
    sub a
    ldh a, [$82]
    ld a, a
    inc d
    pop de
    ld h, e
    add c
    ld b, c
    and l
    cp [hl]
    and l
    ld d, [hl]
    and e
    add hl, de
    and d
    ld a, [hl+]
    add hl, hl
    ret c

    sbc b
    ld d, a

jr_00b_4822:
    sub b
    xor a
    sub $a9

jr_00b_4826:
    and d
    dec l
    ld d, b
    ld b, d
    and e
    ld a, e
    rst $38
    rst $38
    ld a, [$2d5c]
    jp hl


    add l
    sub c
    ld d, a
    rst $38
    rst $38
    and $3f

jr_00b_4839:
    or h
    cp a
    inc c
    ld c, a
    jp hl


    add l
    ld a, d
    sub a
    jr nz, jr_00b_47ff

    jr c, jr_00b_4806

    inc bc
    rst $38
    and [hl]
    scf
    sub l
    ret z

    ld e, d
    dec [hl]
    db $10
    adc e
    ld a, a
    ld de, $a417
    ld a, c
    ld e, [hl]

Call_00b_4855:
    jr jr_00b_4826

    sub c
    dec b
    ld d, h
    ld l, c
    ld [bc], a
    add sp, -$42
    ret z

    sbc $9c
    db $eb
    rst $38
    cp [hl]
    ret z

    or c
    pop de
    ld d, a
    rst $38
    di
    inc c

jr_00b_486b:
    sbc h
    ret z

    ld d, a
    rrca
    di
    ld de, $cff1
    push hl
    ld a, b
    ld h, l
    ld h, h
    jr nz, jr_00b_4822

    jp Jump_000_3cb0


    ld a, [hl+]
    ld h, c
    ccf
    ld hl, sp-$5b
    and $10
    ld d, [hl]
    adc [hl]
    inc l
    add l
    rst $38
    add $2d
    inc d
    db $fc
    or l
    add sp, -$5c
    db $fd
    jr jr_00b_48c0

    add e
    ld de, $f153
    add e
    sub b
    xor a
    rst $38
    rst $38
    db $fc
    ld e, [hl]
    inc d
    xor d
    ld [$bff0], sp
    rst $38
    rst $38
    rst $38

Call_00b_48a5:
    ld a, [de]
    ld b, h
    jp nz, Jump_000_1bbe

    ld d, a
    rst $38
    ld d, c
    rst $08
    ld d, c
    ret nc

    ld b, h
    or e
    ld d, l
    ld d, e
    and c
    and d
    jp hl


    ld c, c
    ld d, l
    inc sp
    xor b
    jp nc, $8468

    pop de
    adc l

jr_00b_48c0:
    sub d
    inc hl
    ld b, h
    ld d, h
    and l
    sub b
    jp Jump_000_3419


    ld h, c
    xor d
    add a
    add $3b
    inc d
    pop bc
    inc [hl]
    ld c, h
    add sp, -$48
    pop de
    add hl, bc
    ld l, d
    and l
    ld [$34b9], sp
    sub e
    dec hl
    db $f4
    pop hl
    ld h, e
    ld b, [hl]
    sub l
    ld c, l
    inc h
    call $ffbe
    ld c, l
    ld l, c
    ld d, l

jr_00b_48ea:
    ld l, b
    ld a, [$e4f9]
    xor a
    rst $38
    xor c
    call $ff7f
    ld d, h
    sub d
    or d
    ld l, c
    db $f4
    ld b, e
    db $fd
    dec bc
    pop hl
    sbc d
    push bc
    ld d, h
    ld c, l
    cp a
    or c
    push de
    rst $38
    ld sp, hl
    push de
    rst $38
    ret


    push de
    cp $19
    xor d
    ld d, d

jr_00b_490e:
    and h
    rst $10
    ei
    ld a, [de]
    ld e, d
    sub c
    ld a, [hl]
    and h
    ld d, a
    and $9f
    rst $38
    ld [$c0a0], a
    xor e
    ld a, [de]
    rst $10
    rst $38
    pop de
    ld hl, sp+$78
    ld h, [hl]
    cp l
    sub l
    ld d, h
    or l

Jump_00b_4929:
    ld d, e
    cp l
    ld d, b
    ld [$feaf], a
    cp l
    ld a, [hl-]

Call_00b_4931:
    sbc a
    xor d
    ld l, d
    ld [$1078], sp
    add d
    sub l
    ld a, a
    ld c, [hl]
    ld a, [bc]
    dec l
    ld h, $a0
    sub d
    ld d, [hl]
    sub b
    ld c, b
    sub b
    ld e, d
    sub e
    ld a, $74
    cp b
    rla
    inc e
    xor b
    jr z, @+$60

    and e
    dec hl
    ld e, c
    add [hl]
    ld c, b
    add [hl]
    ld d, c
    adc c
    ld e, l
    ld e, b
    sub h
    inc d
    add $08
    add h
    add [hl]
    jr nc, jr_00b_48ea

    xor b
    and l
    sbc b
    ld e, d
    adc h
    add sp, -$6c
    ld d, b
    ld h, c
    adc c
    ld d, l
    ld l, l
    and b
    ld e, b
    jp z, $82d6

    ld e, b
    ld sp, $22d4
    and l
    inc b
    ld a, [hl+]
    and d
    db $d3
    ld a, [bc]
    xor b
    ld d, [hl]
    ld a, b
    adc e
    ld c, h
    jr nz, jr_00b_490e

    ld d, [hl]
    ld [hl], $55

jr_00b_4985:
    pop hl

jr_00b_4986:
    ld d, l
    ld a, l
    ld e, b

Jump_00b_4989:
    xor b
    add l
    and e
    adc d
    and c
    ld a, d
    and h
    inc hl
    rra
    ld d, [hl]
    ld c, [hl]
    adc d
    ld e, [hl]
    and d
    db $e3
    ld a, [de]
    ld a, [$e1a4]
    ld a, [$3109]
    sub e
    jr c, jr_00b_4986

    ld d, d
    ld d, $33
    and l
    ld d, l
    ld l, b
    add h
    db $e3
    ld a, c
    jr c, jr_00b_49e7

    xor d
    xor b

Call_00b_49af:
    db $e3
    ld d, e
    sub d
    ld c, [hl]
    adc e
    ld l, $91
    ld d, d
    ld d, l
    ld b, [hl]
    ld d, h
    and $a1
    and d
    ld [hl+], a
    inc h
    cp b
    ld a, [de]
    or h
    push hl
    ld d, e
    ld a, [bc]
    ld [hl+], a
    ld d, d
    ld d, l
    ld a, [hl-]
    xor l
    ld c, d
    and d
    ld l, l
    ld b, [hl]
    add [hl]
    adc [hl]
    sbc e
    ld d, d
    add hl, hl
    daa
    push af
    ld e, [hl]
    dec sp
    dec hl
    cp $bf
    add sp, $2a
    adc d
    sbc $ca
    ld b, d
    ld e, d
    add hl, hl
    sbc $8c
    ret nc

    inc l
    or b

jr_00b_49e7:
    ld c, h
    sbc l
    cp l
    rst $10
    xor d
    ccf
    sub c
    ld c, $08
    xor d
    ld [hl], b
    and $54
    sbc c
    ld hl, $6868
    ret z

    and h
    ld l, c
    ld l, c
    ld a, [bc]
    add a
    ld [c], a
    sub b
    xor b
    jr nz, jr_00b_4985

    ld c, h
    xor d
    add l
    ld hl, $0217
    inc e
    ld [de], a
    ld b, d
    sub b
    xor h
    add hl, bc
    ld [de], a
    inc c
    pop de
    ld c, c
    sbc h
    ld de, $5c6a
    add hl, bc
    ld [hl], c
    adc e
    db $10
    db $fc
    ld d, d
    ld b, e
    ld b, [hl]
    inc e
    add hl, bc
    or e

jr_00b_4a22:
    ld b, d
    add a
    inc c
    ld d, h
    ld d, $af
    sub l
    adc h

Jump_00b_4a2a:
    sbc c
    ld [hl], $54
    ld l, l
    ld de, $2b5a
    inc de
    ld h, $08
    ld d, d
    ld [hl], e
    add sp, $71
    add hl, bc
    inc l
    sub a
    ld [hl-], a
    ld b, [hl]
    ld [hl], d
    ld b, c
    dec bc
    or l
    ld b, b

Jump_00b_4a42:
    add d
    ld h, c
    ld d, d
    ld [hl], l
    ld [hl-], a
    ccf
    xor h
    and [hl]
    ld [hl], h
    xor b
    jp hl


    jp $1303


    ld e, h
    ld [de], a
    ld l, l
    inc c
    ld [hl], b
    jr c, jr_00b_4a22

    rst $38
    ret c

    jp c, $aaaa

    or b
    add hl, sp
    pop bc
    db $10
    pop de
    rrca
    db $db
    inc b
    ld a, [bc]
    ld h, l
    inc e
    jr z, jr_00b_4aa5

    ld b, e
    jp $1246


    ld [hl], h
    pop bc
    sub e
    call nz, Call_00b_4931
    jr nc, jr_00b_4a95

    sbc h
    sub $12

jr_00b_4a78:
    ld d, d

jr_00b_4a79:
    ld d, h
    ld d, l
    pop bc
    ld [bc], a
    ld [hl], d

Call_00b_4a7e:
    and $59
    ld [hl-], a
    dec hl
    and h
    rst $20
    ld b, [hl]
    adc e
    ld d, a
    ld d, e
    ld [$0c31], a
    ld [hl], l
    ld d, d
    ld b, h
    sub e
    ld b, $08
    and c
    dec e
    or [hl]
    inc a

jr_00b_4a95:
    jr jr_00b_4a78

    inc b
    ld sp, $4440
    cp [hl]
    add hl, hl
    dec sp
    ld e, d
    jp c, Jump_00b_47b3

    ld [hl-], a
    ld d, h
    add h

jr_00b_4aa5:
    ld d, l
    ld b, c

Call_00b_4aa7:
    ld d, h
    ld e, $36
    ld c, b
    add d
    rst $00
    xor d
    db $e3
    add l
    ld d, b
    add c
    ld h, e
    adc [hl]
    ld [$3a9b], sp
    ld de, $21bf
    sub e
    sub [hl]
    ld b, d
    ld d, [hl]
    sub [hl]
    inc d
    sub a
    di
    ld c, d
    ld d, l
    cp a
    call c, $aeef
    ld a, b
    db $ed
    and e
    ld [$d4b7], a
    jr z, jr_00b_4a79

    cp d
    ld h, [hl]
    sub c
    ld a, [bc]
    ld b, d
    ld [$b1a0], sp
    xor d
    ld c, d
    call nc, Call_00b_41a1
    inc e
    scf
    add d
    ld [$9c7c], sp
    ld d, a
    ld hl, $a321
    ld sp, $6482
    add a
    sub c
    jp nz, $b198

    and h
    or l
    ld [bc], a
    add sp, $29
    rrca
    sbc h
    dec d
    ld b, e
    ld d, a
    sub e
    dec e
    sub h
    sbc a
    add l
    nop
    ld [hl], a
    cp b
    sub l
    ld c, e
    ld c, a
    ld bc, $5055
    ld d, a
    ld a, [$6949]
    adc $45

jr_00b_4b0d:
    ei
    ld a, [hl+]

jr_00b_4b0f:
    ld c, b
    cp [hl]
    and d
    sub h
    adc d
    add c
    rst $38
    ld c, l
    ld e, [hl]
    add d
    adc h
    rra
    ld c, $32
    ld [hl], a
    dec b
    ld a, b
    adc h
    pop de
    ld [c], a
    jr z, jr_00b_4b37

    ld e, [hl]
    xor b
    sub l
    adc b
    ld e, e
    ld a, [$8a74]
    ld [hl-], a
    ld d, d
    sub a
    and c
    and d
    sub c
    push bc
    ld e, $a8
    cp e

jr_00b_4b37:
    xor b
    ret


    ld c, d
    xor b
    sub l
    dec h
    and d
    jr z, jr_00b_4b0d

    add hl, hl
    inc b
    ldh [$98], a
    ld d, h
    and [hl]
    inc c
    inc d
    bit 2, b
    or a
    ld d, h
    ld d, h
    or l
    dec h
    ld c, h
    inc d
    ld d, h
    inc e
    ld l, c
    jr nc, @-$4f

    sbc $aa
    xor a
    rst $38
    jr c, jr_00b_4bc4

    adc d
    inc b
    ld l, e
    ld c, [hl]
    ld a, [$b433]
    ld l, d
    ld a, [hl+]
    db $d3
    ld b, l
    ld d, l
    ld d, l
    ld d, b
    ld b, l
    ld c, l
    xor l
    adc h
    ld d, a
    ld c, h
    xor d
    call z, $2de9
    ld c, h
    ld h, h
    adc b
    adc d
    ld e, $4c
    cp d
    xor c
    dec l
    jr c, jr_00b_4b0f

    add d
    rlca
    jp nz, Jump_000_24a2

    rst $18
    dec [hl]
    ld d, h
    add $f9
    ldh [$4c], a
    sub a

jr_00b_4b8c:
    inc sp
    ld c, d
    adc [hl]
    sub l
    inc [hl]
    call z, $a3d2
    ld a, [bc]
    dec [hl]
    ld [hl], a

jr_00b_4b97:
    xor c
    ld c, h
    and h
    pop bc
    dec [hl]
    ld a, b
    ld d, h
    pop bc
    db $e3
    sub d
    ld d, l
    ld h, e
    inc b
    sub l
    dec [hl]
    and e
    jr z, jr_00b_4b97

jr_00b_4ba9:
    ld d, e
    ld h, l
    jr nc, jr_00b_4c27

    sub e
    and d
    ld a, b
    ldh [rHDMA2], a
    xor b
    xor c

jr_00b_4bb4:
    jr c, jr_00b_4b8c

    and e
    ld a, [de]
    ld sp, $05b5
    jr nc, @+$50

    jr z, jr_00b_4ba9

    xor h
    push de
    ld d, e
    ld d, l
    inc sp

jr_00b_4bc4:
    ld a, b
    sbc $8c
    ld e, b
    adc d
    ld c, d
    ld l, d
    xor a
    ld d, l
    ld e, a
    adc $2b
    ld c, d
    ld d, e
    inc b
    ld e, b
    add $aa
    adc [hl]
    ld a, e
    ld d, d
    add hl, hl
    ld l, $63
    add c
    db $e3
    sbc d
    cp a
    db $eb

jr_00b_4be1:
    ld d, d
    xor c
    inc [hl]
    ld a, b
    ldh a, [rOCPD]
    rst $38
    db $eb
    push af
    ld d, l
    ld hl, sp-$3a
    ld [hl], c
    ld h, $0b
    ld [$129e], a
    ld b, d
    add h
    ld e, e
    rst $38
    pop de
    add $c3
    jr jr_00b_4c53

    pop af
    adc e
    cp l
    ld d, b
    jp $1427


    ld h, d
    adc e
    inc d
    and d
    pop bc
    ld a, [bc]
    ld a, [hl+]
    ld l, $9c
    jr nc, jr_00b_4bb4

    ld c, c
    add h
    jr z, jr_00b_4c3a

    ld b, e
    dec b
    db $fc
    ld l, c
    ld [de], a
    call nz, $1043
    ld a, [$c332]
    db $f4
    ld h, e
    and [hl]
    adc h
    ld c, [hl]
    and l
    jr nc, jr_00b_4be1

    and $10

Call_00b_4c27:
jr_00b_4c27:
    and h
    xor b
    cp [hl]
    and [hl]
    db $fc
    ld c, e

Jump_00b_4c2d:
    dec d
    ccf
    jp nc, $5a98

    rst $38
    push af
    ld a, [bc]
    ld e, e
    db $10
    pop af
    add h

Call_00b_4c39:
    ld b, h

jr_00b_4c3a:
    dec bc
    ei
    ld a, c
    adc l
    ld d, h
    ld h, c
    rla
    sub c
    and [hl]
    ld l, b
    ld l, $ff
    inc e
    ld a, [bc]
    ld l, l
    rst $28
    dec de
    ld e, a
    cp [hl]
    ld [hl], c
    ld e, a
    ld d, l
    ld d, l
    ld e, a
    db $f4

jr_00b_4c53:
    ld [hl], b
    ld e, [hl]
    jp hl


    ld c, d
    ld l, c
    ld a, h
    dec d
    ldh [rIE], a
    ld h, l
    or c
    sbc l
    and l
    ld a, a
    and b
    sbc b
    ld d, c
    ld c, h
    rra
    xor $70
    and d
    sub b
    xor d
    push de
    cp d

Jump_00b_4c6d:
    add hl, hl
    sub a
    ccf
    ld a, $53
    and [hl]
    ld d, h
    cpl
    rst $38
    cp $c1
    ld [hl], c
    sub a
    cp b
    ccf
    push hl
    and $fd
    ld d, l
    ld d, l
    ei
    add hl, hl
    ld c, e
    pop hl
    ccf
    cp $90
    reti


Call_00b_4c89:
    xor d
    cp a
    rst $38
    ld a, [$1faa]
    rst $38
    ei
    rst $38
    rst $38
    db $fc
    ld c, [hl]
    sbc c
    rst $38
    rst $38
    db $fd
    ld c, d

Jump_00b_4c9a:
    xor b
    ld e, a
    db $fc
    rra
    rst $38
    rst $38
    pop de
    xor h
    ld b, l
    rst $38
    ld a, [c]
    rst $38
    rst $38
    add $1f
    rst $38
    rst $38
    pop de
    or h
    sub l
    ld d, e
    rst $38
    rst $38
    ld l, $86
    jp z, Jump_00b_55d5

    ld l, c
    adc d
    ld l, a
    ld a, a
    rst $38
    rst $08
    cp $1f
    or a
    rst $38
    rst $38
    add $11
    cp e
    ld de, $bf7f
    cp $1f
    ei
    ld a, a
    rst $38
    sbc b
    and [hl]
    jp hl


    db $76
    rra

jr_00b_4cd1:
    rst $38
    or a
    rst $38
    xor l
    cp $75
    ld h, $3f
    rst $38
    pop hl
    rst $38
    rst $38
    rst $28
    sub d
    ld [$5775], a
    rst $38
    db $ed
    rst $38
    rst $38
    call nc, $a755
    ld [hl-], a
    ld b, e
    or h
    ld h, c
    ld a, a
    rst $00
    adc e
    inc c
    ld c, d
    ld c, e
    or [hl]
    ld a, d
    ld de, $3231
    ld c, e
    add hl, de
    add b
    ld b, h
    rst $18
    ld [$a193], a
    ld b, [hl]
    ld h, $4e
    ld a, b
    ld h, d
    db $e4
    rst $20
    add c
    inc hl
    ld [hl], e
    ld h, l
    adc e
    ld b, e
    db $e4
    jr nz, @-$66

    or l
    ld a, [hl]
    and d
    and b
    ld h, e
    add hl, hl
    ld e, a
    xor b
    jp nc, $262a

    ld d, $38
    ld d, e
    ld b, [hl]
    jr c, jr_00b_4cd1

    sub e
    dec b
    add hl, sp
    ld [hl], l
    sub d
    ld e, $8c
    ld d, h
    jp z, $0a57

    db $e3
    ld e, e
    db $fc
    jp nz, $bfaa

    ld a, [$14b2]
    add sp, -$59
    ld d, l
    dec sp
    ld h, l
    ld a, $32
    or c
    ld a, [bc]
    jp c, $7e76

    ret


    db $d3
    ld l, l
    ei
    inc e
    rst $30
    db $ed
    ld a, [$2a9a]
    ld e, e
    rst $38
    add a
    ld a, h
    ld e, d
    dec bc
    ld b, [hl]
    rla
    db $fc
    and c
    inc b
    sub b
    pop bc
    dec de
    ld a, h
    pop bc
    sub h
    db $fc
    ld [hl], b
    ccf
    inc h
    ld b, h
    ld d, a
    inc e
    dec hl
    ld l, [hl]
    sub h
    add $1a
    ld h, a
    call $af79
    sbc $a6
    jr jr_00b_4dca

    db $10
    xor d
    ld d, a
    adc h
    ld [hl], b
    ld d, c
    ld sp, $7574
    ld b, h
    rst $00
    push de
    add b
    ld d, l
    sub h
    db $eb
    ld d, e
    ld e, c
    inc [hl]
    ld d, [hl]
    and h
    dec d
    ld d, c
    sub e
    inc h
    ld h, h
    and l
    ldh [$e4], a
    ld e, [hl]
    xor d
    ld d, c
    adc h
    sub c
    or h
    rra
    jp nz, $a361

    add hl, hl
    inc [hl]
    sub h
    ld a, [hl+]
    ldh a, [$c7]
    ld c, l
    call nc, $d8d2
    ld l, b
    db $10
    ld d, e
    add l
    add hl, sp
    jr nz, jr_00b_4dfb

    ld [hl], h
    pop af
    db $d3
    adc l
    db $e4
    ld a, b
    push bc
    rst $38
    ld d, $33
    ld d, a
    ld b, $04
    ld [de], a
    inc e
    ld [de], a
    ld [hl+], a

jr_00b_4db9:
    ld l, e
    ld c, h
    ld e, [hl]
    add c
    ld b, d
    add d
    ld h, b
    add d
    pop hl
    ld c, h
    ld l, b
    cp b
    ld de, $d65b
    ldh [$98], a

jr_00b_4dca:
    ld e, c
    ld [hl-], a
    ld d, h
    adc b
    add a
    adc c
    xor a
    ld d, l
    inc d
    cp c
    ld hl, $2946
    adc h
    ld [$15bd], a
    ld h, c
    ld l, [hl]
    sub [hl]
    dec d
    adc b
    ld [hl], h
    sub [hl]
    ld c, e
    xor d
    and c
    ld h, e
    ld d, a
    add d
    add c
    adc b
    sub d
    sub $82
    dec [hl]
    ld a, b
    sbc e
    adc e
    sub l
    and d
    jr @-$2d

    ld [c], a
    ld e, l
    ld [$2959], sp
    ld e, d

jr_00b_4dfb:
    inc [hl]
    ld l, l
    ld d, l
    ldh [$b0], a
    ld h, d
    ld a, [hl+]
    and e
    add [hl]
    xor d
    xor b
    xor b
    db $eb
    adc d
    ld d, e
    and a
    ld a, [de]
    ld l, l
    inc h
    ld d, l
    jr jr_00b_4db9

    and l
    ld l, c
    sbc h
    ld [hl-], a
    ld d, d
    inc de
    pop hl
    inc [hl]
    ld a, [bc]
    cp [hl]
    reti


    sbc h
    and $28
    ld b, l
    ccf
    rst $38
    ei
    ld a, [de]
    rst $18
    ld [de], a
    sub a
    rst $38
    rst $38
    rst $38
    sbc e
    and $50
    rst $38
    rst $38
    rst $38
    jp hl


    ld a, a
    pop af
    pop bc
    ld a, a
    rst $38
    rst $38
    and $14
    ld l, [hl]
    sub e
    ld a, a
    rst $38
    cp $72
    ld b, [hl]
    adc e
    ld a, [bc]
    add $f1
    ld c, b
    ld h, $31
    db $76
    sbc c
    cp d
    push hl
    db $76
    inc a
    ld c, d
    ld d, e
    ld sp, hl
    add l

jr_00b_4e51:
    rst $38
    ld de, $1002
    xor c
    rrca
    db $10
    rst $38
    ld sp, hl
    ld d, b
    ld e, h
    ld h, l
    ld d, l
    db $eb
    ld [c], a
    cp a
    rst $38
    ld a, c
    rst $08
    rrca
    ld d, l
    ld d, l
    add hl, de
    ld b, l
    dec h
    and [hl]
    db $d3
    inc e
    ld e, c
    rrca
    jp hl


    add d
    db $10
    daa
    daa
    cp a
    db $f4
    ld b, d
    ld d, e
    ld de, $9b6a
    ld e, a
    jp Jump_000_2324


    ld a, [bc]
    ld d, l
    ld hl, sp+$25
    and l
    ld b, [hl]
    rst $08
    jr jr_00b_4ecf

    ld l, l
    ld b, [hl]
    add b
    ld b, h
    cp h
    sbc e
    db $f4
    add a
    ret nc

    ld l, c
    jr c, jr_00b_4ec1

    dec bc
    ld a, b
    ld l, h
    ld d, b
    xor b
    sbc $d0
    add [hl]
    db $fd
    sbc a
    ld d, e
    ld h, l
    ld l, l
    ld l, b
    rla
    add $38
    inc h
    cpl
    rst $38
    and c
    ld b, c
    jr c, jr_00b_4e51

    ld b, $30
    ld c, [hl]
    ld e, b
    pop de
    dec a
    ld l, a
    add hl, hl
    add hl, sp
    sbc [hl]
    cpl
    ld c, [hl]
    ld b, [hl]
    rlca
    sbc $45
    inc b
    pop hl
    push de
    add [hl]
    add hl, bc

jr_00b_4ec1:
    ld e, a
    and l
    ld a, [hl-]
    ld l, d
    dec d

jr_00b_4ec6:
    adc a
    add l
    sbc e
    add hl, hl
    ldh [rOBP0], a
    add hl, hl
    ld a, [bc]
    ld [hl], h

jr_00b_4ecf:
    rst $38
    cp h
    ld de, $f1ce
    db $10
    inc hl
    and a
    ld [bc], a
    dec [hl]
    db $10
    res 3, h
    ld [hl], e
    and b
    or h
    ld b, a
    and $de
    sub c
    inc a
    ld h, c
    and $f5
    and [hl]
    reti


    add sp, $2c
    jr nc, jr_00b_4f31

    ld [hl], $9c
    ld sp, $7729
    rst $00
    inc hl
    pop bc
    ld b, c
    ld h, d
    add d
    ld [hl], b
    jp $8a12


    add hl, bc
    add hl, de
    ret z

    pop af
    adc h
    ld a, h
    jr c, jr_00b_4f7b

    cp d
    push de
    ld d, l
    ld d, h
    di
    jp hl


    ld a, [hl]

Jump_00b_4f0b:
    xor e
    db $fd
    ld d, h
    ld a, [c]
    db $eb
    sub h
    sbc d
    xor a
    push de
    dec sp
    sub $a2
    ld l, c

jr_00b_4f18:
    push hl
    jr nc, jr_00b_4ec6

    call nc, Call_00b_63e9
    ld l, c
    ld l, c
    ld sp, $e758
    ld h, d
    ld d, l
    rst $38
    push de
    ld b, [hl]
    ld b, d
    sub c
    ld l, [hl]
    add hl, sp
    dec d
    ld h, d
    ld d, $31
    and h

jr_00b_4f31:
    add hl, hl
    ld a, [bc]
    ld c, b
    sub h
    ld [c], a
    ld a, [hl]
    or d
    jr jr_00b_4f18

    ld b, [hl]
    rlca
    adc [hl]
    ld d, [hl]
    add hl, bc
    ld h, d
    inc de
    adc l
    dec de
    ld l, $8d
    ld a, [de]
    call z, $9563
    ld d, $4a
    ld d, e
    ld d, $34
    adc [hl]
    sbc d
    ld h, h
    push de
    inc [hl]
    adc [hl]
    call nz, Call_00b_5026
    ld d, d
    sub e
    ld e, b
    and l
    xor d
    cp l
    ld d, h
    jp c, Jump_00b_4a42

    ld c, [hl]
    ld [$9862], sp
    ld l, d
    cp a
    ld e, b
    sbc c
    ld [hl+], a
    ld a, [hl-]

jr_00b_4f6b:
    ld h, l
    jr c, jr_00b_4fd2

    and [hl]
    call nc, Call_000_14c2
    xor h
    adc $2a
    ld c, l
    inc de
    ld [$3823], sp
    pop bc

jr_00b_4f7b:
    xor c
    inc [hl]
    sub e
    inc h
    ld de, $4a50
    ld c, c
    add [hl]
    ld a, [hl+]
    ld a, [hl+]
    dec [hl]
    xor c
    ld d, [hl]
    add d
    add hl, bc
    jr jr_00b_4f6b

    add hl, hl
    ld a, [hl+]
    add hl, sp
    sub d
    ld h, l
    ld c, b
    ld e, b
    ld h, e
    ld c, c
    ld e, b
    and $4e
    dec sp
    ld h, e
    dec b
    add hl, sp
    ret c

    and $49
    ld d, c
    ld h, e
    dec b
    ld c, h
    sub [hl]
    inc [hl]
    ld c, l
    ld hl, $8c61
    ld e, b
    adc d
    ld c, c
    ld h, e
    adc c
    jr nc, jr_00b_4ffa

    ld c, b
    add c
    ld d, [hl]
    db $d3
    ld [$3689], sp
    ld c, l
    ld [c], a
    call nc, $b45e
    cp b
    sub h
    call $8d88
    add hl, de
    ld c, h
    db $d3
    add hl, hl
    ld [hl+], a
    sub d
    dec d
    adc b
    ld h, e
    add hl, hl
    inc e
    dec l
    ld b, d
    sbc e
    push hl
    ld [hl-], a

jr_00b_4fd2:
    sub d
    ld l, d
    add hl, hl
    adc l
    and l
    ldh a, [$af]
    ld l, a
    ld hl, sp-$2a
    sub l
    ld d, l
    ld l, b
    adc $7c
    jp z, $c59e

    ld a, d
    and a
    sub a
    inc b
    ld h, e
    ld a, a
    xor c
    ld [c], a
    ld a, [hl-]
    add hl, hl
    and l
    rst $38
    xor b
    or c
    call nc, Call_000_1cd5
    ld d, a
    rst $38
    inc e
    ret


    ld a, [bc]

jr_00b_4ffa:
    db $f4
    ld [hl], d
    call c, Call_000_3b73
    rst $38
    rst $00
    ld a, [bc]
    ld d, e
    inc e
    rst $38
    rst $38
    pop af
    push bc
    ld h, h
    ld e, d
    ld [hl], c
    and h
    db $ed
    db $fc
    ld [hl], d
    ld a, c
    rla
    xor c
    xor d
    rra
    xor a
    db $e3
    ld b, a
    cpl
    and h
    rst $18
    and [hl]
    ld c, b
    ld a, a
    cp $e1
    sbc h
    rst $18
    push hl
    rst $18

Call_00b_5023:
    and l
    db $e3
    rst $38

Call_00b_5026:
    rst $38
    adc d
    sbc c
    ld [hl+], a
    sub l
    rst $38
    and $17
    sub h
    sub c
    rst $38
    rst $38
    cp a
    and [hl]
    ld de, $0d84
    db $fc
    add hl, hl
    ld a, c
    sub a
    db $fd
    ld a, a
    rst $38
    jp hl


    jp Jump_000_3fb6


    ld a, [bc]
    ld h, c
    ld c, $1f
    sub e
    rst $38
    rst $38
    jp hl


    ld [de], a
    ld h, e
    cp $47
    adc [hl]
    ld [hl-], a
    ld e, e
    pop hl
    ld a, [$7ffd]
    rst $38
    add d
    adc h
    sub b
    cp a
    ld sp, hl
    ld d, $f9
    ld sp, $6155
    rst $38
    db $eb
    rst $38
    cp $1f
    ld a, [$54b5]
    ld h, c
    ld b, l
    and d
    sub e
    dec c
    rst $38
    cp $1f
    cp $1f
    rst $38
    rst $38
    db $fc
    ld e, h
    ld e, h
    ld l, l
    ld e, a
    pop hl
    rst $38
    cp $ff
    or l
    rst $38
    inc e
    or e
    add hl, de
    cp a
    rst $38
    add sp, $57
    jp hl


    reti


    db $10
    ld a, [$ff45]
    call nz, $d145
    cp d
    ld l, c
    rrca
    db $f4
    sub e
    ld d, c
    adc d
    ld [hl], e
    and $08
    cp [hl]
    ld b, h
    ld c, h
    ld l, b
    adc h
    sbc e
    ld h, d
    sbc d
    ld a, c
    ld e, c

Call_00b_50a3:
    add hl, bc
    add hl, hl
    add d
    ld b, d
    ld h, [hl]
    jp nz, $28c6

    ret


    ld l, b
    and [hl]
    jp nc, $9044

    add l
    dec bc
    ld a, [de]
    ld c, b
    dec h
    ld a, [hl-]
    ld e, h
    ld h, a
    ld h, $6c
    ld [hl], b
    ld b, e
    ld de, $1c17
    ld de, $6874
    ld b, h
    or d
    ld e, e
    db $d3
    ld b, l
    adc e
    ld a, a
    ld d, b
    ld h, b
    ld d, e
    dec b
    and d
    ret nc

    adc h
    ld hl, $5a89
    scf
    add [hl]
    ld [hl+], a
    ld b, c
    ld l, b
    ldh [$88], a
    adc h
    inc hl
    adc [hl]
    inc b
    adc c
    adc [hl]
    sub l
    ld c, c
    adc [hl]
    and l
    ld c, [hl]
    push af
    adc [hl]
    ei
    call z, $93da
    add [hl]

jr_00b_50ed:
    sub l
    inc a
    jr jr_00b_510e

    add hl, bc
    ld e, b
    ld d, e
    sub d
    ret c

    jp nz, Jump_000_390a

    ld h, l
    ld hl, $d3bf
    sbc [hl]
    and e
    ld [$36f1], sp
    ld c, a
    ld a, [hl-]
    ld h, [hl]
    cp [hl]
    ld e, d
    ld e, $d4
    pop bc
    ld d, $bf
    ld b, c
    db $10

jr_00b_510e:
    add a
    ld de, $a5c0
    cpl
    ld a, d
    ld c, h
    ld b, h

jr_00b_5116:
    ld b, h
    add h
    ld b, e
    cpl
    ld h, c
    inc de
    dec h
    cp b
    jp z, Jump_000_1609

    ld de, $549a
    ld de, $a30e
    dec de
    and l

Call_00b_5129:
    ld a, h
    ld d, d
    ld de, $72cf
    ld d, h
    sbc h
    ld de, $a576
    rst $00
    dec a
    sbc b
    ld b, h
    and [hl]
    ld c, c
    sub h
    jr jr_00b_50ed

    ld d, c
    sub h
    ld l, [hl]

jr_00b_513f:
    and b
    ret


    sub d
    ld [hl], c
    and d
    adc a
    and b
    call Call_000_2327
    ld [bc], a
    add l
    adc l
    and a
    inc [hl]
    ld h, l
    ld e, $20
    ld d, l
    cp [hl]
    ld [hl], l
    rst $38
    ld c, a
    ld a, [bc]
    adc c
    and e
    dec b
    rst $38
    call nc, $a8d5
    ld [de], a
    xor b
    add a
    add sp, -$56
    db $d3
    jr z, @-$45

    ld d, [hl]
    dec b
    db $e3
    ld e, e
    ld c, e
    add c

jr_00b_516c:
    dec [hl]
    ld h, e
    add l
    ld c, b
    ld [hl], c
    adc l
    ld h, h
    push hl
    and e
    adc [hl]
    sub l
    xor c
    ld c, h
    xor b
    jr c, jr_00b_5116

    ld sp, $e054
    and d
    ld e, [hl]
    ld b, [hl]
    adc d
    ld l, b
    ld h, e
    inc d
    and l
    dec d
    ld [c], a
    jr nz, jr_00b_51ef

    ld e, b
    sbc b
    push bc
    dec h
    ld [c], a
    ld h, d
    ld e, [hl]
    ld a, [de]
    add hl, bc
    dec h
    jr nc, jr_00b_516c

    di
    ld b, l
    ld h, $a1
    sub d
    inc de
    inc l

Jump_00b_519e:
    ld l, l
    inc [hl]
    ld e, a
    ld [c], a
    ld [de], a
    ld h, h
    add $4d
    ld e, [hl]
    add [hl]
    xor d
    jr nc, jr_00b_513f

    cp c
    and e
    ld a, [de]
    scf
    push de
    ld h, d
    or $3a
    push hl
    dec h
    ld l, b
    ldh a, [rOCPS]
    adc a
    ld c, [hl]
    ld a, h
    db $f4
    ld c, $78
    ld [hl], b
    cp a
    add $50
    ld hl, $7002
    ccf
    rst $38
    pop af
    ld [hl], d
    ld b, [hl]
    ld l, a
    ld a, a
    rst $38
    rst $38
    sub e
    sub c
    inc hl
    sub e
    sbc b

Jump_00b_51d3:
    db $dd
    ld a, a
    rst $38
    ld hl, sp+$3a
    ld [de], a
    add h
    add [hl]
    ld b, [hl]
    ld [hl-], a
    ld c, d
    ld a, [de]
    rst $38
    ld e, a
    pop hl
    rst $38
    xor a
    rst $38
    xor h
    ld b, d
    ld b, l
    ld l, a
    db $fc
    ld c, a
    ccf
    rst $38
    ld d, d
    cp l

jr_00b_51ef:
    xor d
    ret nz

    add h
    ld [hl], $1f
    add l
    inc bc
    db $fd
    ld [de], a
    rst $38
    rst $38
    and h
    add $57
    rst $10
    pop de
    ld d, a

jr_00b_5200:
    rst $38
    rst $38
    add l
    xor h
    ld sp, $fa84
    ld h, c
    ld a, a
    rst $38
    rst $38
    xor c
    and d
    scf
    ld a, d
    ld d, l
    ld a, a
    db $fd
    ld e, [hl]
    sbc d
    inc h
    db $fd
    ld a, [$7f4d]
    rst $38
    rst $38
    xor c
    and d
    db $10
    ld h, c
    ld e, h
    ld d, l
    ld a, a
    rst $38
    cp $98

Call_00b_5225:
    and a
    inc h
    dec d
    db $dd
    jp hl


    push de
    inc h

jr_00b_522c:
    ld b, h
    ld b, c
    sbc l
    ldh a, [rNR43]
    add h
    ld a, h
    ret z

    ld b, h
    cp l
    or l
    dec sp
    ld e, b
    db $ed
    and e
    sbc c
    ld c, e
    add l
    ld h, h
    sub $f5
    dec bc
    ld d, h
    sbc b
    pop hl
    cp b
    add hl, hl
    ld [hl], d
    ld h, l
    ld b, [hl]
    scf
    xor e
    ld a, [hl+]
    ld b, [hl]
    ret c

    db $dd
    ld a, [bc]
    ld sp, $e1a8
    xor h
    jr jr_00b_522c

    ld c, l
    ld d, h
    jr nz, jr_00b_52c1

    jr nc, jr_00b_5200

    add d
    rst $18
    ld b, $69
    ld a, [bc]
    rst $38
    jr c, jr_00b_5290

    call c, $3a85
    rst $28
    db $e3
    db $e3
    daa
    or [hl]
    sbc l
    xor l
    dec e
    adc h
    ld [hl], e
    and [hl]
    db $10
    dec l
    ld h, a

jr_00b_5276:
    ld [bc], a
    ld e, d
    ld b, e
    inc e
    sub [hl]
    adc l
    dec e
    adc a
    cp $96
    rst $20
    inc de
    rst $38
    ld a, [$e7bf]
    rrca
    ld e, l
    ld a, a
    rst $38
    ld sp, hl
    jp nz, $8791

    push af
    ld d, c

jr_00b_5290:
    rst $00
    ld l, h
    rst $38
    sbc l
    rst $18
    rra
    ld e, b
    ld h, [hl]
    or l
    ld d, l
    dec h
    ld d, e
    or l
    ld d, l
    ld e, e
    ld h, h
    dec hl
    ld [$abd3], a
    and $b6
    ld a, l
    xor b
    cp d
    ld a, [hl-]
    xor a
    xor b
    xor d
    inc a
    ld a, b
    ld de, $81bf
    ld d, d
    ld d, h
    xor $41
    ld c, b
    ld e, a
    jr jr_00b_52d2

    ld a, $4e
    ld sp, hl
    ld b, e
    ld c, c
    adc b
    ld d, c

jr_00b_52c1:
    adc [hl]
    add a
    ld [$25a5], a
    ld h, e
    dec d
    ld c, [hl]
    scf
    add [hl]
    inc d
    adc b
    rla
    ld b, c
    dec l
    ld [hl+], a
    sub h

jr_00b_52d2:
    jp c, $a085

    ld b, c
    ld a, a
    ld a, h
    ld h, $55
    add d
    daa
    or h
    jp nc, $befe

    cp a
    add sp, $61
    ld c, h
    ld [hl+], a
    ld h, [hl]
    sub e
    adc c
    add sp, -$33
    jr nc, jr_00b_5276

    ld h, b
    ld c, l
    sbc $32
    ld c, c
    ld c, h
    ld [hl+], a
    ldh [rKEY1], a
    ld e, $33
    ld b, l
    ld h, e
    dec a
    ld b, d
    ld h, e
    ld b, l
    inc [hl]
    ld e, d
    ld [hl+], a
    adc l
    ld hl, $3981
    sub h
    cp d
    dec [hl]
    adc l
    ld l, b
    ldh [$57], a
    adc h
    db $10
    ld c, c
    adc [hl]
    sbc e
    ld a, [$2c8e]
    pop af
    ldh [$89], a
    ld h, d
    inc h
    or l
    ld a, [hl-]
    and b
    adc e
    and e
    ld b, l
    add hl, sp
    reti


    adc e
    add sp, $58
    add $d3
    adc l
    sbc b
    jp nz, $8dc6

    ld l, a
    ld d, h
    ret


    ld l, l
    adc e
    ld e, b

jr_00b_5330:
    ld d, $38
    xor d
    rst $38
    rst $38
    ld [$aa32], a
    ld [hl-], a
    jp c, $92a2

    sbc l
    jp hl


    ld l, b
    ld b, c
    ld hl, sp+$3c
    ld [hl], a
    ld [hl], c
    ld e, h
    db $e3
    inc c
    ld e, [hl]
    ld [hl], l
    db $e3
    jp $22c8


    and a
    adc h
    add h
    call c, $c21a
    reti


    db $dd
    and c
    ld a, [hl+]
    ld b, a
    dec b
    ld c, [hl]
    add hl, hl
    jp c, Jump_000_0ba9

    di
    inc [hl]
    ld c, h
    ld [hl], l
    ld h, b
    pop hl

Call_00b_5364:
    ld hl, $0cb7
    jr nc, jr_00b_5330

    ld h, e
    inc c
    dec d
    ld b, c
    ld c, b
    inc l
    or d
    db $f4
    and a
    ld h, $b0
    ld e, [hl]
    db $10
    xor l
    or a
    or $14
    ld b, l
    daa
    inc h
    ld e, a
    ld [de], a
    and e
    inc c
    inc d
    ld d, h
    sbc [hl]
    ld [bc], a
    sub h
    add l
    ld d, $9e
    ld c, l
    dec h
    daa
    inc a
    ld b, d
    ret nc

    ld b, [hl]
    dec hl
    ld c, c
    cp e
    jr @-$5c

    rst $00
    inc b
    ld b, h
    add hl, hl
    sbc [hl]
    ld l, e
    sub [hl]

jr_00b_539c:
    sub e
    add hl, de
    ld b, [hl]
    sbc c
    sbc h
    add hl, de
    ld [$1821], sp
    or c
    ld d, c
    or d
    ld h, e
    inc sp
    inc a
    ld d, h
    ld c, e
    rla
    dec de
    ld h, $55
    jr jr_00b_53f7

    jp hl


    ld c, l
    jp hl


    add [hl]
    sub c
    inc e
    dec bc
    inc de
    and l
    jp nc, $a499

    ld c, d
    ld l, b
    sub h
    pop de
    adc [hl]
    or c
    sbc h
    sub e
    ld d, h
    xor d
    pop de
    inc l
    ld h, h
    rst $00
    inc c
    add d
    ld l, b
    or h
    ld l, c
    ld b, a
    inc e
    inc de
    ld d, l
    ld d, e
    dec e
    jr nz, @+$46

    cp c
    rst $10
    db $fc
    rst $20
    ld d, a
    and e
    add d
    db $d3
    ld a, [bc]
    jp nz, $f35f

    ld h, l
    ld c, d
    ld h, c
    ld l, b
    ldh [$a1], a
    cp c
    ld d, b
    add l
    add hl, sp
    ld a, e
    ld l, c
    sbc c
    jr c, @-$4f

jr_00b_53f5:
    sbc b
    xor c

jr_00b_53f7:
    ret c

    db $e4
    cp c

jr_00b_53fa:
    ld c, e
    or h
    ldh [$62], a
    ld h, b
    sub h
    cp d
    sub h
    push de
    add c
    ld e, e

Jump_00b_5405:
    or h
    jr jr_00b_539c

    pop de
    ld d, l
    dec b
    ld a, [bc]
    jr jr_00b_5423

    dec c
    adc h
    ld e, e
    ld b, c
    or a

jr_00b_5413:
    ld l, [hl]
    ld a, [hl+]
    and b
    adc h
    ld l, d
    and a
    ld a, a
    call nc, $81ab
    jr c, jr_00b_5449

    ld [hl], l
    ld b, $26
    adc [hl]

jr_00b_5423:
    ld e, d
    and e
    adc $9d
    ld l, d
    ld [hl], a
    ld a, $69
    ld a, [de]
    jr c, jr_00b_53f5

jr_00b_542e:
    ld [bc], a
    ld h, a
    ld d, c
    ret


    jr nz, jr_00b_53fa

    add hl, bc
    ret z

jr_00b_5436:
    adc d
    push de
    and a
    inc l
    ld b, l
    sub l
    ld l, c
    db $d3
    ld [bc], a
    cp a
    jp hl


    jp Jump_00b_465a


    dec d
    rst $38
    add sp, $40
    sbc e

jr_00b_5449:
    ld b, c
    inc d
    rst $18
    rst $38
    jp hl


    and l
    ld d, [hl]
    sub b
    pop hl
    jp $9a57


    ld b, b
    xor a
    ld d, h
    ld sp, hl
    ld d, e
    dec de
    db $dd
    ld d, e
    ld a, [$474d]
    ld [hl+], a

Jump_00b_5461:
    ld d, $7c
    ld [hl], b
    ld d, l
    cp c
    dec d
    rst $38
    call nc, $aaee

jr_00b_546b:
    ld a, [hl+]
    cp l
    ld a, [hl-]
    dec d
    ld a, [bc]

Call_00b_5470:
    cp d
    rst $38
    ld e, d
    add hl, sp
    ld a, [de]
    jr nc, jr_00b_5436

    ret nc

    xor l
    jr c, jr_00b_5413

    and h
    add l
    ld e, l
    or h
    db $e3
    ld h, d
    sub b
    add d
    adc d
    or [hl]
    adc [hl]
    jr jr_00b_542e

    ld a, [bc]
    adc h
    sub [hl]

Call_00b_548b:
    adc l
    ld [c], a
    ld e, b
    pop hl
    add d
    adc l
    ld h, d
    ld h, e
    sbc c
    ld c, h
    ld [c], a
    ld h, e
    ld [hl], h
    db $e3
    ld c, c
    adc l
    sbc c
    sub e
    dec [hl]
    ld sp, $d08d
    add c
    ld [hl-], a
    and d
    and d
    inc hl
    add d
    ld h, d
    ret nc

    ld a, b
    cp b
    rst $28
    add [hl]
    adc h

Jump_00b_54ae:
    and e
    sbc [hl]
    ld h, c
    and e
    ld b, h
    push hl
    and d

Jump_00b_54b5:
    jr z, jr_00b_546b

    jp hl


    ld a, b
    ld e, [hl]
    ld sp, $a84a
    reti


    push de
    ld a, b
    jp nc, $aa92

    xor h
    add l
    ld hl, sp+$6a
    jr c, jr_00b_552e

    ld a, a
    db $fd
    cp $8e
    dec e
    adc $aa
    sbc [hl]
    dec bc
    ld b, c
    ld hl, sp+$32
    sbc l
    adc a
    db $fd
    ld d, l
    inc l
    ld [hl], e
    dec l
    ld b, l
    ld d, d
    sub e
    inc e
    adc h
    ld b, e
    ld h, $29
    call z, $20c5
    sbc c
    ld b, a
    inc h
    ld h, e
    ld a, [de]
    ld b, a
    inc d
    ld [hl], e
    and a
    inc b
    ld l, h
    and a
    ld b, h
    ld l, l

Jump_00b_54f5:
    inc c
    ld h, e
    ld a, [de]
    xor [hl]
    ld l, e
    inc l
    ret


    add $a7
    ld [de], a
    add hl, bc
    ld c, c
    ld d, c
    rst $10
    add hl, de
    cp h
    ld e, a
    sbc l
    ld sp, $9812
    ld a, d
    ld [hl], e
    and d
    push de
    jr jr_00b_558e

    ld [hl], e
    inc hl
    dec [hl]
    jr @+$01

    and a
    inc de
    inc bc
    rst $08
    add hl, de
    rst $18
    ld l, $68
    or c
    rla
    add $f5
    ld b, [hl]
    ld a, [bc]
    pop de

Jump_00b_5524:
    rst $10
    ld d, d
    xor e
    inc e
    ldh [rLY], a
    cp [hl]
    ld d, l
    ld e, a
    db $d3

jr_00b_552e:
    sbc c
    ld a, [hl]
    or l
    ld c, [hl]
    ld d, [hl]
    ld h, c
    ld a, d
    jp nz, $e638

    dec d
    adc [hl]
    adc b
    rla
    ret c

    ld [$f868], a
    dec d
    ld d, h
    adc c
    ld c, [hl]
    ld a, [hl+]
    ld a, [$ffab]
    inc b
    ld [c], a
    ld h, l
    add hl, hl
    ld e, b
    push hl
    sub b
    xor d
    adc d
    ld c, [hl]
    ld e, d
    sub l
    ld d, [hl]
    adc a
    add [hl]
    rst $18
    ld l, $8a
    db $76
    dec sp
    add hl, hl
    jp z, $c0e2

    ret nc

    ld b, a
    daa
    sub $0c
    and a
    inc [hl]
    add d
    ret nz

    rst $00
    ld b, e
    ld c, h
    db $76
    inc l

jr_00b_556e:
    db $76
    and l
    and h
    jp z, $4871

    ret c

    ld b, l
    ret


    push bc
    and c
    add hl, de
    ld d, c
    ret


    ld a, [hl+]
    ld e, d
    sbc l
    dec [hl]

Jump_00b_5580:
    ld d, h
    ld a, h
    ld b, b
    ld h, [hl]
    cp c
    push de
    ld d, l
    inc a
    ld h, a
    jp nz, $a0aa

    db $fd
    ld c, [hl]

jr_00b_558e:
    ld a, [$4315]
    res 5, a
    ld d, e
    dec sp
    pop bc
    ld d, h
    add $f6
    ld [hl], l
    rst $38
    ld d, l
    ld [hl+], a

Jump_00b_559d:
    ld h, h
    ld e, [hl]
    ld hl, $ab46

jr_00b_55a2:
    db $fd
    ld d, d
    ld l, [hl]
    rlca
    ld d, c
    xor d
    db $fd
    ld h, l
    dec d

Jump_00b_55ab:
    adc b
    ld d, e
    ld a, [hl+]
    cp l
    ld [hl+], a
    ld e, h
    cpl
    ld b, l
    rst $20
    or l
    ld b, c
    dec l
    ld c, l
    xor l
    ld l, b
    adc d
    sub b
    ld d, d
    ld a, [hl-]
    dec b
    ld a, [bc]
    ld c, d
    ld d, e
    dec b
    ld d, d
    ld [de], a
    sub a
    dec d
    ld [$9514], sp
    inc sp
    ld d, l
    ld d, b
    xor a
    pop de
    ld b, c
    ld b, d
    add l
    jr jr_00b_556e

    and l

Jump_00b_55d5:
    inc b
    cp [hl]
    xor d
    xor a
    push de
    pop hl
    ld d, b
    add c
    dec h
    jr jr_00b_55a2

    ld c, e
    adc l
    xor d
    db $f4
    xor b
    and [hl]

jr_00b_55e6:
    inc a
    jr c, jr_00b_55fe

    dec b
    sub l
    add d
    ld d, l
    dec sp
    sub c
    xor l
    ld d, [hl]
    ld a, [c]
    db $fc
    ret


    ld [hl-], a
    ld d, l
    xor e
    ld [hl-], a
    jp nz, $a851

    adc $09
    ld d, [hl]

jr_00b_55fe:
    xor l
    dec de
    inc b
    adc c
    inc d
    inc d
    sbc c
    scf
    adc c
    ld d, [hl]
    ld e, a
    ret c

    inc h
    ld hl, $0c85
    ld [hl+], a
    ld a, [de]
    inc [hl]
    ld b, c
    and d
    ld l, d
    adc b
    add d
    dec b
    ld b, l
    ld [$8889], sp
    adc h
    sub b
    adc l
    and d
    ld [de], a
    ld hl, $2f41
    jr jr_00b_55e6

    ld [$a8d1], sp
    ld d, d
    and b
    ld h, h
    and h
    sbc b
    and h
    ld [hl+], a
    ld d, l
    ld l, d
    add c
    ld [hl], b
    ld c, b
    ld d, a
    push hl
    ld hl, $1a42
    adc d
    jp c, Jump_00b_70a5

    ld e, e
    ld a, a
    ld a, a
    xor b
    ld d, h
    ld a, [hl+]
    ld a, [hl+]
    cp b
    sbc d
    xor d
    sbc h
    jr z, jr_00b_56bf

    ld a, [$5704]
    db $e3
    dec hl
    ld c, l
    sub h
    add l
    ld d, l
    rrca
    ld a, a
    and e
    cp d
    rst $30
    rst $38
    rst $18
    and e
    and a
    ld [hl], e
    add hl, hl
    ld c, d
    ld a, b
    xor [hl]
    inc d
    ld d, l
    ld c, $09
    ldh [rSCY], a
    xor l
    ld d, l
    ld d, l
    inc bc
    ld [bc], a
    ld e, d
    ld c, e
    jp nz, $a4a9

    add d
    or h
    db $f4
    ld a, [bc]
    ret nz

    and e
    ld [bc], a
    ld b, a
    inc b
    inc sp
    rlca
    ld h, b
    and l
    ld a, [hl]
    sub e
    dec c
    adc a
    jr c, @-$36

    ld h, h
    ld a, l
    ld d, l
    ld l, $83
    ld b, l
    ld b, c
    ld [hl-], a
    sub b
    add d
    db $10
    jp nz, $e9c5

    sub l
    ld a, $42
    ret nc

    xor b
    or h
    ld [hl-], a
    and b
    xor b
    ld b, l
    ld h, [hl]
    jp nc, $ad18

    jr c, jr_00b_56d6

    ld [$bc60], sp
    ld [$e545], sp
    db $fd
    ld c, b
    rl c

jr_00b_56ac:
    ret nz

    xor c
    inc [hl]
    ld b, h
    add h
    ld d, e
    push de
    ld e, [hl]
    ld [hl-], a
    jp c, $382f

    jr nz, @-$6d

    dec h
    ret nc

    ld b, l
    push de
    ld d, c

jr_00b_56bf:
    sub h
    and l
    ld b, d
    add h
    and b
    sbc e
    rst $00
    dec c
    inc b
    add d
    cpl
    dec l
    ld d, [hl]
    ld a, [bc]
    ld [hl], a
    ld hl, $93cc
    adc h
    ccf
    and $09
    or d

jr_00b_56d6:
    cp [hl]
    ld d, l
    ld [bc], a
    db $d3

jr_00b_56da:
    ld [hl], $14
    ld h, h
    and h
    xor d
    db $fd
    ld l, h
    jr nc, jr_00b_5728

    bit 1, c
    add hl, bc
    xor l
    db $fd
    ld c, a
    ld a, [bc]
    ld b, d
    inc l
    inc c
    ld e, $54
    ld a, [bc]
    sbc d
    ld h, $35

jr_00b_56f3:
    db $10
    and h
    ld [hl], d
    jr jr_00b_56ac

    jr z, @-$54

    ld h, h
    sbc e
    xor c
    ld d, d
    add [hl]
    sub b
    ld [c], a
    add d
    and [hl]
    add hl, bc
    xor d
    ret nc

    ld b, l
    and c
    add a
    db $10
    ld [$6929], a
    ld l, d
    or l
    jr z, jr_00b_577a

    jr z, jr_00b_56f3

    ldh [$b8], a
    ld h, b
    add d
    sbc b
    dec hl
    ld a, h
    db $10
    ld h, c
    add a
    add h
    add a
    add h
    ld a, [hl+]
    db $e4
    ld b, h
    cp h
    add hl, de
    sub l
    inc c
    ld d, l

jr_00b_5728:
    inc c
    jr z, @+$3f

    ld h, $73
    inc e
    ld a, [bc]
    ld a, [bc]
    xor d

jr_00b_5731:
    sub $28
    ld b, [hl]
    call nc, Call_00b_5470
    ld a, [bc]
    and e
    ld hl, $201d
    ld b, h
    and [hl]
    ei
    call nc, Call_00b_4aa7
    ld e, h
    add $db
    cp a
    jp nc, $6b6d

    db $e3
    add [hl]
    cp l
    ld c, d
    rst $28
    add hl, sp
    ld h, d
    jr jr_00b_56da

    push hl
    or c
    and e
    xor d
    ld c, l
    ld d, h
    pop hl
    adc l
    ld h, [hl]
    dec [hl]
    ld c, [hl]
    jr jr_00b_5731

    sub e
    or c
    add d
    dec sp
    inc hl
    sbc a
    sub d
    call nc, $93e7
    ld a, [de]
    ld d, l
    dec d
    ld l, d
    ld b, c
    xor e
    inc d
    sbc $bd
    ld d, l
    push de
    sub [hl]
    add hl, sp
    ld a, [hl+]
    xor d
    xor b
    ld a, [c]

jr_00b_577a:
    db $76
    ld a, [hl+]
    ld [hl], c
    ld h, $b3
    add hl, hl
    add d
    ld c, a
    sbc h

Jump_00b_5783:
    inc d
    ld a, [c]
    dec bc
    inc b
    add e
    ld e, c
    rst $00
    ld h, $14
    ld [hl], b
    inc h
    cp e
    jr jr_00b_57e3

    sbc d
    ld b, h
    add $e9
    jp nz, Jump_00b_4c9a

    ld [hl], c
    cp h
    ld h, b
    and [hl]
    ret nc

    ld b, l
    or c
    sbc d
    ld h, d
    pop bc
    ld a, [hl+]
    or h
    inc d
    ld c, l
    xor h
    ld h, e
    inc bc
    add $68
    xor l
    ld c, c
    adc l
    ld h, [hl]
    ld c, h
    ld b, d
    inc d
    and c
    add hl, de
    push de
    ld d, a
    jp nz, Jump_00b_55ab

    ld d, c
    jp $ae5f


    xor e
    ld b, a
    jp Jump_00b_5580


    cp c
    sbc [hl]
    and h
    ldh a, [$94]
    xor b
    db $eb
    ld e, [hl]
    or d
    db $d3
    sbc c
    ld d, l
    db $eb
    add hl, de
    dec de
    db $e4
    db $e4
    rst $38
    jp nc, $166a

    ld a, [hl-]
    ld l, d
    add hl, hl
    ld d, h
    ld e, b
    ldh a, [$28]
    ld a, b
    rst $28
    ld d, d
    ld h, l
    ld [hl+], a

jr_00b_57e3:
    inc hl
    ld e, a
    cp $38
    ld d, h
    rra
    push af
    adc b
    ld d, b
    adc d
    ld h, h
    ldh [$f0], a
    ld d, b
    ld h, d
    dec d
    ld [$8884], sp
    inc de
    ld d, a
    sbc b
    jp $91a7


    and e
    add c
    and $68
    add h
    and h
    ld e, e
    and e
    add c
    and [hl]
    ld [hl-], a
    ld c, c
    ld d, b
    ld e, c
    ld h, b

jr_00b_580b:
    ld c, l
    jr z, @-$54

    cp e
    pop hl
    and e
    ld b, $39
    ld l, l
    db $76
    ld b, d
    dec h
    ld b, $3a
    ld l, d
    and b
    and l
    ld d, [hl]
    ccf
    daa
    db $dd
    ld a, [bc]
    sbc [hl]
    dec l
    ld d, h
    ld [hl], a
    and h
    xor d
    sbc l
    jp nc, $c4e2

    daa
    scf
    ldh a, [$a3]
    ld c, h
    cpl
    sbc l
    ld d, l
    ld a, [bc]
    xor b
    pop af
    ldh [rNR42], a
    inc c
    ld c, d
    ld [hl], l
    ld l, c
    scf
    sub d
    xor d
    ld d, d
    rst $20
    ld c, $84
    xor e
    ld a, [bc]
    adc [hl]
    ld b, e
    ld hl, $1627
    ld e, e
    ld b, h
    ld c, c
    inc c
    ld c, d
    ld l, h
    ret nz

    ret nc

    or d
    sub c
    ld h, h
    ld d, c
    inc d
    ld l, b
    ret nz

    call nz, Call_00b_61aa
    ccf
    inc e
    dec hl
    jr jr_00b_580b

    ld l, l
    ld h, a
    dec h
    inc c
    ld l, $62
    rst $00
    inc a
    xor d
    add [hl]
    and h
    inc l
    ld a, b
    db $10
    ld [hl], l
    ld h, a
    push hl
    nop
    ld b, h
    cp [hl]
    ld b, l
    ld a, [hl-]
    db $dd
    ld l, [hl]
    ld [hl], h
    rst $20
    ld d, [hl]
    xor c
    ld d, e
    sbc [hl]
    adc e
    and d
    ld e, $ce
    inc d
    or h
    ld d, $39
    xor h
    ld e, $22
    ld a, [bc]
    ld h, e
    add e
    ld a, b
    ld l, h
    jp hl


    ld a, c
    ld d, b
    ld b, a
    sub h
    rst $20
    add l
    jp nz, $ec70

    and $aa
    ld [hl+], a
    xor b
    db $fc
    ld d, $7d
    ld [hl], d
    ld c, d
    ld [hl], l
    ld b, c
    cp $c7

jr_00b_58a6:
    ld b, h
    add e
    rst $38
    call nz, Call_00b_7132
    ld a, a
    rst $38
    sub a
    sbc h
    cpl
    inc a
    ld d, $0d
    jp c, Jump_000_3f9d

    cp $e7
    inc h
    inc d
    rst $10
    rst $38
    sbc h
    call z, Call_00b_4108
    call nc, Call_00b_4a7e
    ld h, [hl]
    cp b
    dec l
    dec a
    dec b
    inc a
    dec [hl]
    ld sp, $53a0
    pop bc
    ei
    push de
    ld h, $82
    db $d3
    add l
    ld c, l
    xor l
    ld l, d
    db $fd
    ld a, c
    dec bc
    ld c, l
    xor d
    db $f4
    sub $bf
    ld d, [hl]
    xor d
    add $f4
    inc d
    or l

jr_00b_58e6:
    ld a, [bc]
    ld l, b
    ldh [$7f], a
    db $fc
    and l
    sbc $69
    dec l
    ld a, [de]
    adc h
    rra
    rst $38
    xor h
    cpl
    cp $98
    xor h
    ld h, a
    adc b
    sub h
    jp z, $ffff

    ld d, a
    xor e
    ld h, b
    ld e, a
    and [hl]
    ld e, b
    sub l
    xor [hl]
    jr c, jr_00b_58a6

    ld b, $5f
    and c
    add c
    dec h
    ld l, c
    ld l, b
    ld [c], a
    ld a, a
    ld a, d
    ld [$74b8], sp
    jr nz, jr_00b_597f

    push hl
    ld e, a
    ld h, l
    add c
    dec h
    sub d
    db $d3
    xor [hl]
    and a
    add sp, $7c
    scf
    ld sp, hl
    ld c, l
    sub l
    ld c, e
    and d
    ld e, $15
    and h
    ld a, [hl+]
    or [hl]
    dec c
    dec b
    rst $38
    ld d, d
    rra
    db $fd
    ld d, d
    ld e, a
    ld l, d
    dec l
    rst $38
    ld a, [c]
    ld a, [hl-]
    ld h, $b4
    ld h, h
    dec hl
    db $fd
    ret nc

    adc d
    ld d, h
    dec h
    jr nc, jr_00b_58e6

    ld e, d
    ld c, b
    ld d, d
    add hl, hl
    ld e, l
    or l
    rst $38
    and e
    ld d, $06
    dec h
    dec d
    ld h, h
    jp nc, $ffaf

    cp a
    rst $10
    sbc b
    sub h
    ld d, b
    sub h
    ld d, d
    inc hl
    dec d
    ld a, a
    rst $28
    ld a, a
    ldh [$62], a
    and c
    ld l, l
    ld d, [hl]
    ld b, $41
    dec d
    ld a, [hl]
    or l
    xor c
    inc b
    add l
    adc b
    ld e, c
    ld l, b
    adc c
    ld e, e
    ld h, [hl]
    rrca
    db $fd
    xor c
    ld e, d
    ld hl, sp+$58
    or h
    pop bc
    ld d, [hl]
    or [hl]
    adc d

jr_00b_597f:
    xor d
    xor b
    add a
    add c
    ld a, c
    ld c, e
    xor d
    xor c
    ld e, d
    adc [hl]
    ld c, e
    ld a, [$aa26]
    xor d
    xor d
    dec a
    jp hl


    or $69
    ld [c], a
    ld h, $ba
    ld a, b
    ld [hl], h
    xor c
    adc l
    and a
    adc l
    ld d, d
    xor d
    dec d
    xor c
    or [hl]
    ld d, $72
    xor e
    rst $38
    jp nc, Jump_00b_65ba

    and e
    sbc c
    ld a, [hl+]
    xor d
    xor c
    ld c, d
    dec c
    ld a, [hl+]
    adc h
    ld e, e
    cp $9c
    call nc, $ff43
    cp $aa
    rst $38
    pop de
    jp nc, $ffbf

    pop hl
    ld a, a
    db $fd
    dec e
    ld c, e
    rst $10
    rst $38
    ldh a, [rSTAT]
    ld [$5276], a
    pop hl
    ld a, a
    pop af
    ld e, a
    sbc l
    ld l, a
    call nz, $a0ba
    and b
    pop af
    reti


    ldh a, [$ad]
    dec l
    rst $38
    call nc, $c009
    and [hl]
    inc a
    dec c
    cpl
    ld hl, sp+$72
    or l
    add hl, sp
    jp $a45a


    ld b, h
    ld d, l
    inc de
    rst $08
    pop hl
    add [hl]
    ld c, e
    ld d, d
    ld l, l
    ld d, a
    ld [$e1a5], a
    ldh a, [$3e]
    ld c, [hl]
    rla
    or d
    add hl, bc
    pop bc
    ld d, a
    ld d, h
    xor a
    jr c, jr_00b_5a7d

    and e
    cpl
    rst $08
    and $8a
    ld [hl-], a
    or l
    ld c, a
    dec b
    ld a, [hl-]
    db $d3
    and e
    ld c, a
    db $fc
    ld e, d
    inc d
    xor l
    ld b, h
    cp a
    ccf
    cp $bf
    rst $38
    rst $38
    pop de
    sub l
    ld b, [hl]
    cpl
    cpl
    rst $38
    rst $38
    rst $38
    db $fd
    ld b, a
    dec sp
    ld b, h
    push de
    ld d, l
    ld d, l
    ld b, a

jr_00b_5a29:
    rst $10
    nop
    ld b, h
    or h
    sub h
    and a
    ld c, l
    sub e
    ld [$2e3d], sp
    rla
    ld c, h
    ld [hl], h
    sub a
    db $db
    jp nc, Jump_00b_4c6d

    sub [hl]
    jp nc, $f1df

    ld d, l
    inc b
    jp z, $dcdf

    db $10
    ld d, l
    adc b
    ld b, c
    inc [hl]
    ld e, b
    sbc d
    ret nc

    ld l, b
    inc d
    ld de, $b489
    jr z, jr_00b_5a29

    and h
    ld de, $6a62
    adc $06
    inc b
    add h
    cp e
    ld d, h
    ld [de], a
    jp nc, $5520

    db $e4
    add $83
    sbc b
    ld h, h
    add a
    ld [hl+], a
    ld b, d
    db $d3
    dec b
    sbc e
    jr nc, jr_00b_5ab5

    sub l
    and e

Jump_00b_5a71:
    ld b, $de
    sub c
    add c
    sub h
    pop hl
    xor d
    dec h
    jp nz, $8e22

    xor e

jr_00b_5a7d:
    ld d, a
    adc [hl]
    jp z, Jump_00b_468f

    ld a, c
    xor [hl]
    sub a
    call nz, $0227
    ld [$4f5a], sp
    and h
    ld b, [hl]
    ld l, c
    add h
    ld d, $83
    ld [hl], b
    ret


    sbc l
    ld a, [hl+]
    sub c
    dec b
    ld hl, sp+$43
    add hl, hl
    and l
    rst $38
    add sp, $23
    db $e4
    ld c, h
    sbc e
    ld a, a
    cp $08
    db $e3

Jump_00b_5aa5:
    inc b
    add hl, bc
    add d
    ld a, [de]
    rst $38
    rst $38
    or d
    ld b, h
    pop bc
    ld h, [hl]
    scf
    rst $18
    rst $38
    ld hl, sp+$28
    ld b, b

jr_00b_5ab5:
    add a
    and [hl]
    ld d, e
    pop bc
    pop hl
    db $fc
    dec d
    ccf
    inc b
    ld l, c
    ld de, $f1e1
    rst $10
    add l
    jp hl


    db $db
    ld a, a
    rra
    ld h, b
    ld d, l
    cp d
    sub l
    ld a, [hl-]
    push de
    ld [hl-], a
    xor d
    ld d, h
    ld [c], a
    ld d, [hl]
    ld d, [hl]
    ld c, e
    and b
    and d
    add hl, hl
    ld [hl], $b0
    ld [hl], d
    db $10
    ld c, b
    ld d, a
    sbc d
    sub h
    ld h, h
    ret


    sub [hl]
    inc b
    or [hl]
    add sp, $24
    jr nz, @-$27

    ld [hl-], a
    ld a, h
    inc h
    ld e, h

jr_00b_5aed:
    sbc b
    add l
    ld e, l
    pop hl
    ret


    adc h
    ld l, c
    add c
    sub h
    sub h
    and l

jr_00b_5af8:
    add $8d
    ld l, h
    ld d, b
    db $eb
    ld [$bcc9], sp
    db $e3
    add d
    add hl, de
    ld h, e
    inc b
    ld a, d
    adc $18
    dec hl
    ld sp, $0b86
    ld e, b
    add l
    ld d, b
    sub e
    jr z, jr_00b_5b2b

    inc b
    ld e, b
    add h
    ld h, b
    ldh a, [$e2]
    ld l, b
    jp nc, Jump_000_0456

    dec h
    xor b
    ld sp, $49e9
    ld h, e
    dec h
    rst $10
    ld b, l
    ld c, b
    ld d, [hl]
    ld b, $f8
    ld a, [hl+]
    adc l

jr_00b_5b2b:
    ld l, d
    add [hl]
    sub [hl]
    ld e, [hl]
    and b
    sub c
    sub d
    db $e3
    ld d, l
    ld a, [hl+]
    ld d, b
    and a
    rlca
    inc d
    and h
    sbc $f5
    ld h, $c9
    ld [$3729], a
    or a
    xor e
    db $ed
    ld a, [bc]
    jr jr_00b_5aed

    jr c, jr_00b_5af8

    or h
    inc d
    ld d, b
    add sp, -$7a
    add hl, sp
    jp hl


    ldh [$b0], a
    or b
    ld e, d
    dec sp

jr_00b_5b55:
    ld l, d
    xor d
    adc l
    ld h, a
    xor [hl]
    adc d
    ld h, b
    add [hl]
    ld [c], a
    sbc h
    xor e
    jp hl


    adc d
    dec d
    db $eb
    inc e
    cpl
    pop bc
    ld l, c
    add hl, hl
    ld e, l
    rst $38
    xor c
    sbc e
    db $ed
    and e
    add sp, $5d
    di
    ld a, a
    rst $38
    jr jr_00b_5ba8

jr_00b_5b76:
    inc de
    rst $08
    ld de, $7fe1
    ld c, h
    cp $a9
    adc d
    db $db
    rlca
    jp nc, $a13f

    ld d, d
    db $10
    ld e, l
    ld b, c
    sbc b
    pop bc
    rst $08
    sub a
    cp $2c
    inc c

jr_00b_5b8f:
    rra
    jp hl


    and e
    cp [hl]
    jr jr_00b_5b55

jr_00b_5b95:
    cp $0f
    or b
    jr nz, jr_00b_5b76

    add $8d
    db $ec

jr_00b_5b9d:
    cpl
    cp $17
    db $ec
    ld b, [hl]
    xor d
    ret


    adc l
    dec a
    rst $38
    db $fc

jr_00b_5ba8:
    add sp, $58
    dec l
    sub e
    ld a, c
    and h
    ld hl, sp+$7f
    ldh a, [$5f]
    ret z

    cp d
    xor a
    add $52
    jr c, jr_00b_5b8f

    cp h
    or h
    or $f5
    ld b, a
    ld b, h
    rst $38
    db $ed
    xor l
    ld a, a
    inc e

jr_00b_5bc4:
    ld a, [bc]
    ld e, h
    dec e
    ld a, [hl]
    rst $10
    db $fc
    add h
    ld l, l
    add a
    add d
    ld d, d
    ld a, [bc]
    cp a
    add sp, -$4f
    pop bc
    ld d, e
    ldh [$a1], a
    pop hl
    rst $38
    ld d, h
    rst $00
    inc h
    inc e
    ei
    ld l, l
    db $fd
    ld sp, $03d5
    push de
    ld l, b
    ld b, a
    and [hl]
    ld b, h

jr_00b_5be8:
    cp l
    dec [hl]
    ld l, a
    cp l
    jr c, jr_00b_5bc4

    ret c

    jr nz, jr_00b_5c42

    adc $2c
    jr nc, jr_00b_5b9d

    jr z, jr_00b_5c0d

    adc [hl]
    dec b
    ld l, e
    ld b, $b5
    jr c, jr_00b_5be8

    xor $b6

jr_00b_5c00:
    ld b, [hl]
    jr @-$20

    ldh [$85], a
    push hl
    rlca
    and h
    ld [c], a
    rst $18
    ld d, l
    dec c
    ret nc

jr_00b_5c0d:
    ld c, [hl]
    jr z, jr_00b_5b95

    and l
    ld a, [de]
    ld c, [hl]
    dec h
    ldh a, [rLYC]
    db $76
    adc [hl]
    inc h
    ld de, $856f
    adc $17
    jp nc, $a414

    jr c, jr_00b_5c00

    ld b, a
    ldh a, [$e5]
    ld h, d
    inc hl
    add d
    ld hl, sp+$6a
    xor d
    and e
    pop hl
    rst $20

jr_00b_5c2f:
    xor h
    adc d
    ld [hl], h
    ld hl, $7c38
    jp hl


    rst $00
    ld d, l
    ld d, l
    rst $28
    sbc h
    add sp, -$46
    or [hl]
    sbc h
    inc l
    adc e
    db $fc

jr_00b_5c42:
    rrca
    add [hl]
    ld [hl], c
    inc hl
    ldh a, [rVBK]
    ret nz

    and a
    ld [de], a
    sub $bf
    ld a, e
    rst $20
    ld e, $0f
    inc bc
    or a
    ld sp, hl
    push bc
    push af
    or a
    pop hl
    ld h, a
    inc h
    db $fd
    ld d, l
    ld l, b
    add hl, sp
    rst $00

jr_00b_5c5f:
    ret nz

    add d
    ld c, [hl]
    inc d
    ld [hl], b
    cp l
    ld c, b
    inc [hl]
    db $10
    daa
    db $d3
    add b
    ld h, [hl]
    cp e
    ld d, l
    inc a
    dec b
    ld d, h
    pop bc
    db $ed
    db $f4
    jp hl


    ld a, a
    xor d
    add e
    ld d, l
    db $76
    add c
    db $e3
    cp c
    ld d, d
    dec hl
    cp $74
    db $ec
    and a
    jp c, $0c27

    ld h, h
    dec hl
    db $f4
    push hl
    ld e, [hl]
    adc h
    ld [$baa8], a
    jr c, jr_00b_5c2f

    adc e
    ld e, a
    inc a

jr_00b_5c94:
    cpl

jr_00b_5c95:
    ld d, l
    ld d, a
    add sp, -$78
    and l
    ld c, c
    ld a, b
    add [hl]
    ld sp, $c15e
    inc c
    ld [hl], $ea
    cp b
    add [hl]
    ld l, $c9
    ld h, e
    ld b, $c2
    rlca
    add l
    rst $20
    xor d
    ld l, $18
    ld h, c
    ret nc

    and e
    ld a, [de]
    xor l
    ld c, c
    sbc b
    and [hl]
    ret


    ret c

    ld h, d
    ld d, h
    inc [hl]
    pop de
    jp Jump_000_2116


    ld l, [hl]
    adc c
    add l
    ld h, d
    ld [de], a
    jr nc, jr_00b_5c95

    ld l, b
    ld [hl], l
    xor b
    add hl, de
    xor e

jr_00b_5ccd:
    ld b, $a2
    sub d
    jr nz, jr_00b_5c5f

    ld l, d
    ld sp, $1642
    ld [$6895], sp
    push bc
    inc sp
    ld d, e
    ld b, [hl]
    sub [hl]
    ld a, [hl+]
    ld d, e
    dec d
    inc sp
    adc c
    adc e
    xor d
    db $ed
    ld l, d
    xor c
    db $fd
    ld c, [hl]
    inc d
    inc hl
    ld c, b
    jr z, jr_00b_5c94

    ld d, a
    jp $d9e8


    adc l
    rst $28
    rst $38
    xor d
    ret c

    ld a, d
    dec [hl]
    ld c, e
    adc h
    and d
    sub $81
    ld l, b
    ld l, b
    ld d, $f4
    jp z, Jump_00b_668c

    ld a, [$62a2]
    rst $10
    ld b, d
    rra
    ld sp, $3185
    xor b
    add $48
    ld h, d
    ld l, c
    db $e3
    jr jr_00b_5ccd

    ld c, [hl]
    ld a, [de]
    sub c
    sub [hl]
    ld l, l
    ld [hl], $89
    sub h
    ldh [$dd], a
    ld c, e
    di
    ld l, b
    cp d
    ld d, l
    sub d
    sub [hl]
    and c
    xor e
    ld hl, sp+$27
    ld l, d
    sbc [hl]
    ld a, [bc]
    ld b, d
    sub [hl]
    ret nz

    adc h
    ld [hl], l
    ld sp, $8c92
    jr nc, jr_00b_5d6a

    sub $8a
    db $d3
    ld [$b408], a
    pop af
    db $db
    adc l
    rst $38
    ld [$a143], a
    ld b, c
    inc e
    ret


    dec bc
    rst $38
    rst $38
    jp hl


    sbc a
    inc e
    xor a
    rst $38
    ret nc

    rst $38
    db $fd
    ld d, $e9
    add hl, hl
    or l
    ld d, l
    ld b, d
    cp a
    rst $38
    ld [bc], a
    sub h
    push bc
    ld [hl], c
    adc d
    dec bc
    rst $08
    cp $ad
    ld e, a
    xor $42
    add hl, hl
    ld a, c

jr_00b_5d6a:
    sbc l
    ld d, b
    ccf
    db $fc
    rra
    rst $38
    cp $14
    db $10
    inc hl
    xor b
    ld b, b
    sbc d
    db $dd
    ld c, b
    cp a
    db $fd
    dec [hl]
    add e
    ret nz

    adc e
    db $ec
    ld sp, hl
    and h
    ccf
    inc bc
    rst $38
    add $11
    db $10
    cp a
    add e
    ld sp, hl
    xor l
    db $ed
    ld d, d
    sub b
    rst $08
    push bc
    ccf
    ld hl, sp-$29
    sbc d
    ld b, c
    ei
    rst $38
    inc bc
    ccf
    ld [de], a
    rst $38
    rst $38
    inc de
    reti


    sub d
    cp $1f
    db $e4
    ld a, l
    jr jr_00b_5dfb

    ld sp, hl
    add h
    ld h, a
    rlca
    dec b
    ld hl, sp-$58
    ld h, $ea
    ld b, [hl]
    sbc e
    ld c, [hl]
    ld a, $2f
    jr nc, @+$22

    xor d
    xor b
    ld d, h
    dec c
    and [hl]
    rst $28
    ld h, b
    ld [c], a
    ld hl, sp+$63
    ld a, h
    ld b, h
    dec hl
    ld c, a
    ld sp, hl
    or [hl]
    ld c, [hl]
    pop bc
    db $e3
    adc [hl]
    ld a, [bc]
    xor e

jr_00b_5dcc:
    ld c, e
    rst $38
    cp $45
    ld b, $99
    jr nc, jr_00b_5dcc

    ld a, [hl]
    sbc $a5
    ld a, a
    rst $38
    ld a, [$2018]
    add $2c
    jr c, jr_00b_5e40

    rst $38
    sub b
    cp d
    ld b, a
    rst $38
    cp $be
    ld de, $4b9e
    ld de, $8f7e
    cp $b5
    ld d, d
    rst $18
    jp $c91b


    jr nc, jr_00b_5e6c

    adc l
    rst $38
    db $eb
    rlca
    inc a

jr_00b_5dfb:
    dec de
    add $f1
    and h
    jr z, jr_00b_5e53

    ld de, $1285
    ld b, h
    add hl, sp
    inc d
    ld d, l
    ld d, e
    sbc c
    add [hl]
    add c
    ld c, [hl]
    ld h, [hl]
    ld [hl], b
    ld e, a
    and e
    sub c
    sbc [hl]
    dec d
    jr c, @-$29

    ld d, b
    cp e
    ld hl, $537c
    ld l, d
    rlca
    ld e, d
    ld l, [hl]
    push bc
    db $e3
    ld b, h
    rra
    db $f4
    ld h, h
    ld l, $18
    pop de
    ld b, c
    inc b

jr_00b_5e2a:
    ld sp, $6d70
    inc d
    db $db
    ld e, b
    adc b
    ld l, e
    xor $37
    sbc c
    cp h
    add $0f
    pop bc
    inc sp
    ld e, h
    ld d, b
    and l
    ld a, [de]
    ld a, d
    dec b

jr_00b_5e40:
    adc h
    sbc l
    dec b
    sub c
    ld h, [hl]
    xor d
    ld a, [bc]
    ld [$f7ce], sp
    ld h, c
    add l
    or b
    xor b
    jr jr_00b_5e2a

    xor c
    ld d, l
    ld h, h

jr_00b_5e53:
    dec de
    ld a, h
    add sp, -$58
    ld a, [c]
    rst $20
    and [hl]
    ldh [$bd], a
    ld h, a
    inc sp
    inc sp
    xor a
    add hl, sp
    add $cf
    dec b
    ld a, [hl+]
    and a
    ld a, [de]
    db $fc
    db $fd
    inc l
    add $ea

jr_00b_5e6c:
    dec d
    rlca
    xor a
    call z, $a8e6
    jp c, $f24d

    xor c
    cp h
    add d
    pop bc
    ld l, d
    rrca
    ld [bc], a
    ld c, $66
    add h
    jp hl


    db $76
    ld b, a
    add a
    sbc d
    ld e, e
    and [hl]
    ld a, h
    add a
    sbc d
    ld [c], a
    pop de
    ld l, [hl]
    ld b, e
    ld h, [hl]
    sub h
    call $9197
    add [hl]
    sbc h
    scf
    xor d
    adc [hl]
    ld d, $11

jr_00b_5e99:
    db $d3
    inc b
    ld a, h
    ld e, b
    ld d, l
    ld a, $bd
    ld d, e
    call nz, Call_00b_657a
    db $d3
    sub c
    ld d, l
    ld d, d
    ld [de], a
    jr c, @+$20

    ld c, l
    rst $10
    ld c, $59
    ld d, [hl]
    sbc e
    xor d
    sbc [hl]
    dec [hl]
    ld h, [hl]
    scf
    pop bc
    ld [hl+], a
    sbc b
    call $e0d8
    or a
    add [hl]
    ld c, l
    inc de
    ld [hl], h
    and l
    ld c, b
    and e
    ld b, [hl]
    dec [hl]
    ld b, c
    ld b, [hl]
    jp $f486


    push bc
    dec h
    dec e
    add hl, de
    ld d, c
    sub b
    ld h, h
    ld d, b
    reti


    ld [hl], $b5
    ld e, e
    ld d, l
    dec de
    add hl, bc
    ld [hl+], a
    dec bc
    adc l
    rst $18
    ldh [$e8], a
    cpl
    xor b
    ld d, d
    di
    add hl, de
    inc hl
    xor l
    or [hl]
    ld a, [$250d]
    ld h, d
    inc de
    dec h
    rla
    ldh a, [$6d]
    ld a, [bc]
    or b
    and a
    ld b, c
    add c
    adc l
    inc d
    jr nz, jr_00b_5e99

    and b
    cp $9a
    dec de
    ld e, b
    sbc $c1
    push af
    ld l, b
    ld a, [hl-]
    ld e, b
    ld [$66ac], a
    cp [hl]
    adc a
    ld [bc], a
    xor b
    rst $30
    ld [hl], a
    db $e3
    ld a, [hl-]
    ld [hl], e
    and a
    ld b, $83
    sbc h
    inc sp
    add a
    rst $18
    ret c

    add hl, sp
    db $10
    ld a, [c]
    ld l, [hl]
    call $4e46
    ld a, [de]
    ld c, a
    ld a, [de]
    cp h
    ld [hl], b
    or e
    ld c, $6b
    add $c9
    ld c, b
    daa
    dec bc
    jr z, jr_00b_5f57

    ld d, b
    xor d
    jr z, jr_00b_5f5b

    ld l, h
    ld a, [hl-]
    ld h, a
    sub d
    add e
    dec [hl]
    dec h
    ld l, $12
    ld [$6736], sp
    ld b, c
    ld [hl-], a
    add hl, hl
    add hl, hl
    rra
    jr c, jr_00b_5f67

    ld a, d
    ld h, [hl]
    jp c, $afe4

    cp d
    add l
    ld b, b
    xor a
    ld sp, hl
    sub a
    ld a, [hl]
    ld c, e
    rst $18
    ld e, d
    ld a, [de]
    ld c, d

jr_00b_5f57:
    db $10
    and [hl]
    sub $56

jr_00b_5f5b:
    or e
    inc b
    inc d
    ld c, e
    ld h, $fe
    jp $dc7b


    pop hl
    dec d
    ld b, a

jr_00b_5f67:
    dec d
    add d
    jr z, jr_00b_5fbd

    inc de
    dec e
    ld d, b
    ld [hl+], a
    ld a, [$7832]
    ld de, $ee31
    nop
    ld b, h
    cp [hl]
    ld e, c
    ld d, e
    and l
    ld d, [hl]
    rst $38
    ld d, h
    ld [c], a
    ld l, h
    jr z, jr_00b_5fac

    inc c
    inc sp
    add l
    and e
    pop bc
    ld e, e
    ld l, l
    ld a, [bc]
    add hl, sp
    rla
    push de
    ldh a, [$a3]
    sub c
    cp b
    add hl, de
    db $f4
    rst $20
    sub h
    rra
    ld l, b
    sub [hl]
    add hl, sp
    dec hl
    ld d, l
    dec b
    add c
    ld a, [hl-]

Call_00b_5f9e:
    cpl
    add l
    db $e3
    and d
    rst $10
    db $e3
    or d
    adc a
    adc d
    sbc a
    inc l
    add d
    ld a, b
    add hl, hl

jr_00b_5fac:
    call z, Call_000_3986
    ld a, [de]
    pop de
    jp nz, Jump_000_1886

    db $e4
    ld a, a
    sbc h
    ld e, b
    ld c, e
    rst $38
    rst $38
    rst $20
    inc d

jr_00b_5fbd:
    db $dd
    adc d
    xor e
    inc e
    ld [hl], e
    inc sp
    ld a, [bc]
    call c, $c909
    ld l, b
    ld [hl], c
    cpl
    sbc l
    ld l, b
    ld d, a
    dec e
    db $10
    ld b, a
    add l
    rra
    ld d, d
    ld h, [hl]
    cp d
    ld e, a
    db $fd
    rlca
    db $f4
    ldh a, [$9b]
    ld d, d
    ld a, [hl+]
    ld [hl+], a
    add l
    db $e4
    ldh [$7f], a
    ld sp, hl
    ld d, a
    xor c
    ret nc

    ld b, d
    db $f4
    jr z, @-$75

    sub e
    ld h, l
    ld h, $aa
    ld a, a
    sub b
    adc b
    and b
    and c
    and d
    ld h, h
    sub $d4
    pop bc
    ld e, [hl]
    sub l
    ld c, d
    sbc $18
    ld [c], a
    ei
    cp $89
    sub d
    ld l, d
    xor d
    jr nc, jr_00b_6052

    rst $10
    cp d
    ld hl, $fc41
    ld l, d
    xor d
    ld d, e
    adc l
    rst $28
    and [hl]
    ld d, h
    add [hl]
    xor h
    ld e, d
    ld b, c
    sbc c
    ld hl, $2582
    ld d, a
    adc d
    xor d
    ld b, [hl]
    ld e, $8c
    ld h, c
    sbc c
    add l
    ld h, $a9
    push hl
    ld b, [hl]
    sub c
    sub d
    ld h, d
    ld h, l
    ld b, [hl]
    sub h
    adc $d2
    inc h
    ld [hl+], a
    ld l, l
    ld d, c
    adc h
    dec d
    ld b, c
    ld d, d
    and e
    rrca
    ld c, c
    ld d, c
    and b
    and a
    and $26
    ld sp, $958c
    dec de
    ld hl, sp-$5b
    ld hl, $a406
    cp b
    add [hl]
    ld sp, $09a9
    jr @+$6f

    dec de
    ld c, c
    rst $38

jr_00b_6052:
    ld a, [de]
    and c
    and b
    ld h, h
    add l
    dec bc
    ld c, b
    ld d, b
    or h
    ld l, l
    ld e, $81
    ld hl, $2515
    and d
    ld h, $18
    ld l, c
    ld b, $d6
    rst $10
    rrca
    ld a, [bc]
    jp nz, Jump_00b_46a1

    xor b
    add $2d
    ld h, a
    ld a, [hl]
    sub b
    xor l
    ld c, $2d
    dec h
    ld l, d
    ld c, l
    ld d, [hl]
    ld b, d
    xor a
    push bc
    ld b, [hl]
    inc [hl]
    push bc
    sub b
    sub d
    ld hl, $8146
    rst $38
    db $fc
    inc h
    dec [hl]
    ld c, h
    ld [de], a
    ld l, b
    adc b
    ld l, d
    inc d
    adc e
    or $be
    sbc h
    ld l, e
    adc h
    ld h, l
    ld hl, $bca4
    jp z, $b77a

    sub l
    dec l
    ld e, c
    ld a, d
    ld b, $a4
    xor b
    jp nc, $f7a9

    ld d, [hl]
    xor b
    jp nz, Jump_00b_54ae

    ld a, [c]
    sbc d
    ld sp, $c463
    sub l
    ld e, c
    ld e, b
    adc l
    push de
    adc d
    sub h
    sbc [hl]
    ld a, [de]
    ld c, h
    ld sp, $4410
    xor c
    jp nz, Jump_000_09f9

    ld sp, $8c1c

Jump_00b_60c4:
    ld [hl-], a
    ld de, $6e52
    sub l
    inc bc
    jp nc, $a3a8

    adc h
    ld d, h
    ld b, h
    sbc h
    ld l, a
    push hl
    push de
    ld [$0b15], a
    inc e
    xor b
    and c
    cp d
    ld a, [bc]
    sbc b
    ld d, l
    ld d, c
    ld l, c
    and d
    ld [de], a
    add sp, -$5c
    ld [hl], b
    jp hl


    ld a, [bc]
    and a
    ld a, [hl+]
    or e
    ld a, [bc]
    ld e, $82
    db $e3
    ld hl, $1bba
    and l
    call nz, Call_000_13a9
    jr jr_00b_616c

    ld l, l
    and h
    ld b, h
    ld b, c
    add l
    jp hl


    add hl, bc
    ld c, h
    jr @+$6b

    ld l, b
    ret


    ld [hl], c
    rla
    db $e3
    ld hl, sp+$51
    or h
    db $d3
    ld de, $f1a3
    adc d
    ld c, d
    cp h
    ld sp, $918a
    add hl, hl
    dec d
    ld a, d
    ld a, [hl+]
    ret z

    ret nc

    pop bc
    ld e, b
    ld l, c
    sbc [hl]
    jp z, $2af1

    jr z, jr_00b_6170

    ld [hl-], a
    add d
    bit 0, b
    and [hl]
    ld d, l
    db $fd
    ld de, $2168
    ld b, h
    db $e3
    adc [hl]
    add d
    ld b, e
    call nz, Call_00b_48a5
    xor b
    ld e, d
    ld [$2b44], sp
    ld sp, $c008
    cp b
    ld b, l
    ld e, l
    inc de
    di
    ld l, d
    ld de, $d40f
    ld d, $0c
    ld [hl], h
    ld l, h
    xor $55
    dec bc
    ei
    add $4a
    sbc h
    ld a, [de]
    inc d
    ld h, e
    ld [$8f31], a
    rst $28
    and l
    and h
    or d
    call nc, $a155
    ld d, l
    ld e, d
    ld h, e
    pop hl
    inc b
    sub b
    sub l
    ld d, b
    ld l, c
    adc l
    rst $38
    ld de, $546a
    cp b

jr_00b_616c:
    ld hl, $9d59
    ret c

jr_00b_6170:
    ld a, [hl+]
    ld e, d
    xor a
    ld e, b
    ld d, l
    ld d, h
    inc d
    db $10
    ld b, c
    ld h, [hl]
    sub h
    dec a
    ld d, l
    ld h, h
    ld b, [hl]
    ld [hl], h
    and l
    and a
    adc d
    xor e
    inc a
    dec c
    ld e, $2d
    ld d, h
    dec d
    ld [de], a
    ld b, h
    or e
    ld a, a
    ld d, d
    ld d, a
    db $f4
    inc de
    adc [hl]
    xor c
    cp l
    ld b, d
    di
    ld a, d
    ld d, [hl]
    rst $38
    add hl, hl
    ld [hl], $5b
    db $db
    ld l, l
    jp nc, Jump_00b_4c2d

    ld e, e
    add hl, bc
    ld e, [hl]
    daa
    inc b
    ld hl, $0b63

Call_00b_61aa:
    ld e, h
    db $10
    ld d, a
    daa
    ld [$c694], sp
    sub b
    ld b, c
    ld b, [hl]
    adc b
    ld d, l
    ld d, d
    jr z, @-$63

    add a
    ld [hl], b
    ld e, d
    ld a, c
    ld b, c
    ld [$ab94], sp
    push bc
    dec bc
    ld e, e
    cp a
    ld sp, $baf8
    ld b, d
    ld h, b
    cp [hl]
    inc [hl]
    adc l
    dec h
    jr nc, jr_00b_621a

    ld b, l
    jr c, @+$2b

    ld d, b
    cp l
    ld h, $85
    adc $07
    add a
    sbc d
    push de
    add sp, -$20
    ld d, l
    ret c

    sbc d
    cp [hl]
    jr c, jr_00b_624e

    dec a
    add hl, hl
    rst $20
    cp d
    sub h
    and a
    dec l
    ld d, l
    ld c, d
    add a
    and [hl]
    db $eb
    rst $10
    ld e, l
    xor b
    ld a, a
    ld h, $6f
    ld b, d
    or b
    ret nz

    add a
    ld sp, $a9a2
    ld d, d
    jr c, jr_00b_6221

    add [hl]
    ld d, $99
    ldh a, [rNR42]
    xor [hl]
    rst $38
    rst $38
    dec sp
    inc d
    and c
    adc e
    rst $38
    ld d, l
    ld d, a
    db $e3
    ld a, [hl]
    ld e, h
    ld e, $fc
    cp a
    rst $38
    and b
    ld hl, sp+$7e
    ld h, l

jr_00b_621a:
    ld a, b
    ld a, a
    pop de
    inc de
    cp $1f
    sbc d

jr_00b_6221:
    ret nz

    ret nc

    xor e
    db $e3
    ld c, l
    rst $20
    rra
    rst $38
    dec d
    ld b, a
    dec l
    rst $00
    rst $10
    add b
    ld d, l
    cp c
    sbc $3c
    sbc b
    pop af
    db $10
    ld [hl], b
    sub h
    db $ec
    ld e, [hl]
    sbc $aa
    ld a, c
    jr c, @-$67

    rst $28
    cp a
    xor [hl]
    ld l, $a4
    sbc $a7
    rst $38
    ld d, a
    inc b
    jp z, Jump_00b_5461

    add $d0

jr_00b_624e:
    ld [c], a
    ld l, a
    ld hl, sp+$13
    ld a, [hl+]
    and e
    dec [hl]
    add hl, hl
    ld d, l
    adc c
    sub h
    xor b
    ld d, l
    inc [hl]
    add l
    add c
    db $f4
    or l
    ld [hl-], a
    ld c, l
    sub h
    rra
    rst $38
    ld b, [hl]
    adc h
    db $e3
    ld a, d
    xor d
    ld [hl+], a
    and e
    inc [hl]
    ld d, e
    adc c
    ld e, h
    ld d, l
    ld [hl], $63
    dec [hl]
    ld a, [hl+]
    rst $38
    db $e3
    add d
    adc h
    sub h
    inc d
    sbc d
    adc l
    ld h, b
    ld c, l
    ld e, $61
    sub d
    jp nc, $5812

    db $10
    cp [hl]
    jr nc, jr_00b_62d9

    ld c, c
    ld c, d
    and c
    ld b, c
    ld l, b
    ld d, e
    ld a, e
    rst $38
    ld sp, hl
    ld b, c
    ld b, l
    dec l
    adc [hl]
    ld a, [hl-]
    and b
    xor e
    rla
    ld d, l
    ld l, b
    xor $78
    or $a7
    dec sp
    ld b, a
    sub c
    rst $00
    adc b
    push de
    ld b, b
    sbc l
    xor h
    dec [hl]
    ld d, a
    xor $72
    xor b
    add $59
    rla
    and a
    rrca
    jp $3f1c


    and d
    add d
    ld h, a
    inc d
    xor c
    ld l, d
    ld d, a
    ld hl, sp-$1a
    ld l, [hl]
    adc e
    rst $38
    rla
    push hl
    ld a, b
    ld a, l
    add hl, de
    pop hl
    rst $38
    ld [bc], a
    add hl, bc
    ld d, e
    inc de
    db $ed
    ld b, [hl]
    sbc b
    db $76
    ld b, d
    add hl, bc
    xor a
    and $f9
    jr nc, jr_00b_631c

    ld b, c

jr_00b_62d9:
    add hl, de
    ld a, b
    ld h, $de
    ld b, h
    ld [de], a
    inc c
    ld d, $61
    ld hl, sp+$7c
    ld h, a
    ld a, d
    ld d, d
    add hl, bc
    ld de, $e16f
    db $fc
    ld l, c

jr_00b_62ed:
    ld a, c
    jp nz, Jump_000_02ff

    ld a, [de]
    ld h, [hl]
    jp Jump_00b_4929


    dec bc
    rst $38
    call nz, $8e46
    adc e
    cp $b1
    dec e
    rst $38
    rst $00
    inc c
    dec e
    ld h, c
    ld e, a
    ret nz

    rst $08
    jp nc, $c376

    dec d
    ld e, $04
    ld a, e
    add b
    ld b, h
    cp [hl]
    ld d, c
    ld e, a
    db $fd
    jr c, jr_00b_62ed

    cp d
    adc d
    adc [hl]
    ld d, $aa
    ld a, [hl-]

jr_00b_631c:
    db $eb
    and e
    rst $20
    ld e, [hl]
    dec sp
    ld a, l
    ld d, e
    or [hl]
    ld d, b
    call nc, Call_000_39b6
    ld l, a
    ld a, [bc]
    xor d
    inc b
    rst $20
    xor d
    xor d
    adc a
    and [hl]
    sbc a
    inc [hl]
    and a
    ld [hl-], a
    ld h, l
    ld h, a
    rra
    and a
    rst $08
    and a
    sbc c
    sbc h
    xor c
    adc e
    rst $20
    ld c, d

Jump_00b_6341:
    cp a
    ld sp, hl
    pop de
    dec c
    ld d, h
    ld a, [hl]
    inc c
    ld h, [hl]
    add l
    jr c, @+$17

    ld d, e
    sbc l
    ld c, b
    cp l
    ld c, h
    ld [$fdab], a
    ld d, h
    jp c, $1418

    ld a, e
    ld c, h
    ld a, d
    xor a
    ldh a, [$a9]
    rst $38
    sub l
    ld h, $2d
    ld b, c
    add c
    ld c, b
    ld e, a
    ld l, d
    adc l
    xor c
    ld l, c
    adc h
    ld d, h
    add hl, de
    ld e, a
    and l
    rst $38
    ld d, e
    add [hl]
    ld c, l
    inc d
    ld de, $ee85
    xor e
    and h
    pop hl
    ld c, d
    adc d
    ld e, b
    jp nz, $8e2e

    jr c, @-$35

    ld c, b
    ld c, d
    ld a, b
    sub h
    push hl
    add l
    rla
    ld [$42a6], a
    rst $18
    ld d, a
    ld a, e
    sub e
    add l
    ld hl, $604c
    add [hl]
    cp a
    add sp, -$58
    add sp, $53
    ld [$d4f0], sp
    ld a, [hl-]
    sub e

jr_00b_639f:
    rla
    rst $38
    ret nc

    ld b, c
    adc [hl]
    ld d, l
    inc d

jr_00b_63a6:
    ld de, $7985
    xor d
    ld l, d
    adc [hl]
    adc e
    db $dd
    ld h, c
    ld c, b
    adc e
    xor b
    rst $28
    ld d, [hl]
    inc a
    or h
    ld [de], a
    sub l
    ld [c], a
    ld d, l
    jr c, jr_00b_639f

    inc h
    inc e
    and l
    push af
    ld [hl], l
    jr c, jr_00b_63a6

    rla
    cp d
    ld b, d
    ld [hl+], a
    cp a
    add sp, -$1e
    ld h, d
    ld [hl+], a
    ld d, h
    ld [de], a
    inc d
    inc de
    xor c
    adc h
    sub h
    ld [hl+], a
    add hl, hl
    sbc d
    sub l
    ld [hl], e
    ld [hl], l
    adc h
    ld d, b
    ld d, b
    adc b
    xor b
    adc d
    sub l
    call z, $a2d5
    ld d, $32
    add l
    xor b
    push bc
    ld [c], a

Call_00b_63e9:
    ld d, [hl]
    cp l
    ld d, l
    ld l, b
    adc b
    xor d
    ld d, [hl]
    ld a, b
    push de
    ld l, l
    xor b
    db $dd
    add hl, hl
    rst $18
    adc l
    cpl
    ld l, b
    push hl
    ld b, l
    jp nz, $a270

    and a
    ld e, h
    ld a, [bc]
    add hl, bc
    xor l
    ld a, [bc]
    or c
    ld a, [bc]
    ld l, l
    ld b, e
    add h
    db $10
    ld c, c
    adc e
    dec hl
    ld hl, sp-$2b
    ld [$95e2], a
    jr jr_00b_644f

    add hl, de
    jr z, jr_00b_6467

    ld d, h
    ld l, l
    ld d, [hl]
    add sp, $46
    ld l, d

jr_00b_641e:
    ld [$4028], sp
    or h
    and [hl]
    xor d
    xor b
    ld d, h
    ld h, [hl]
    add e
    inc b
    ld b, l

jr_00b_642a:
    add [hl]
    jr c, jr_00b_64a6

    ld l, e
    ld b, l
    ld c, l
    ld de, $3418
    ld c, h
    ld a, [bc]
    sub d
    pop de
    inc c
    ld l, c
    ld c, c
    and [hl]
    sub d
    add l
    pop de
    db $10
    ld [hl+], a
    sbc e
    call nc, $8792
    db $fd
    add sp, -$43
    pop bc
    add [hl]
    add [hl]
    add d
    ld l, a
    ld sp, $5031

jr_00b_644f:
    xor c
    inc d
    or h
    ld d, l
    inc e
    inc c
    ld a, d
    cp $84
    ld h, b
    add l
    ld e, c
    ld a, [bc]
    add hl, de
    call $a48a
    jr z, @+$01

    ei
    and c
    ld d, c
    push de
    ld h, h

jr_00b_6467:
    jr z, jr_00b_641e

    inc de
    ld c, e
    dec e
    cp [hl]
    ld de, $9352
    db $10
    sbc h
    ld sp, $5a9a
    rra
    ld b, d
    ldh [$8a], a
    ld l, a
    add hl, hl
    sub d
    ld h, c
    scf
    rlca
    ld sp, $9932
    jr nc, jr_00b_642a

    inc c
    ld [de], a
    add hl, hl
    ld [hl-], a
    xor h
    ld h, l
    ld c, d
    xor l
    dec c
    ld e, c
    ld c, b
    jr nc, jr_00b_64b1

    and a
    ld l, e
    add $08
    ld [hl+], a
    add a
    jr c, jr_00b_64c2

    ret nc

    sub l
    db $10
    add d
    jr nc, jr_00b_64eb

    inc d
    dec de
    ld l, c
    ret nz

    cp l
    pop de
    sbc e

jr_00b_64a6:
    inc b
    ld h, h
    pop af
    ld c, d
    rst $38
    push af
    ldh a, [$da]
    ld d, h
    inc e
    inc c

jr_00b_64b1:
    ld h, a
    db $10
    or h
    ld b, l
    ld d, h
    ld h, h
    and h
    xor e
    ld b, [hl]
    push de
    inc e
    ret nc

    jr z, jr_00b_64bf

jr_00b_64bf:
    ld b, h
    or c
    rst $28

jr_00b_64c2:
    ld c, d
    or l
    dec d
    ld l, b
    push de
    add d
    push hl
    rla
    rrca
    xor d
    adc l
    xor d
    ld a, c
    add c
    and e
    sbc d
    ld [hl+], a
    xor b
    ld [$8e88], a
    sub h
    adc h
    inc hl
    and l
    ld d, b
    xor e
    ld c, [hl]
    xor e
    adc [hl]
    push bc
    add hl, hl
    ld c, l
    inc de
    ld d, l
    ld hl, $4d35
    rst $28
    ld b, [hl]
    sub h

jr_00b_64eb:
    and [hl]
    jr c, jr_00b_6546

    jp nz, $38aa

    ld e, b

jr_00b_64f2:
    or a
    ld d, e
    adc l
    adc d
    ld l, d
    ld a, [bc]
    ld e, d
    xor d
    inc sp
    xor d

Jump_00b_64fc:
    xor b
    adc d
    and e
    call z, $a9d9
    add d
    ld h, b
    and [hl]
    ret nc

    ld c, c
    ld a, b
    dec l
    ld b, a
    inc c
    add l
    jr z, jr_00b_6582

    ld [hl], h
    inc h
    jp hl


    db $dd
    inc c
    ld [hl], l
    ld b, d
    add e
    dec e
    ld [hl], d
    ld de, $e9eb
    ld c, $9d
    ld c, h
    ret


    db $db
    ld c, e
    dec e
    xor h
    ld b, d
    sbc l
    inc c
    dec hl
    rrca
    ld a, [$9aaa]
    ld [$ebc4], a
    ld b, a
    push bc
    nop
    ld d, l
    cp h
    set 5, c
    ld c, a
    ld d, $46
    sub c
    ld d, h
    rla
    db $fd
    ld c, [hl]
    ld a, [de]
    ld d, b
    or b
    ld b, d
    add e
    or b
    adc c
    ld hl, sp-$1f

jr_00b_6546:
    sub b
    and [hl]
    rlca
    pop bc
    ld a, [de]
    inc hl
    xor e
    ld d, e

jr_00b_654e:
    add c
    inc b
    sbc d
    add d
    ld a, [bc]
    adc h
    ld l, a
    ld b, l
    ld d, e
    adc [hl]
    ld d, e
    add hl, sp
    ld b, c
    db $eb
    adc l
    sbc d
    jr @-$34

    dec d
    and d
    inc sp
    ld l, c
    jr jr_00b_64eb

    ld hl, $1272
    ld d, l
    adc h
    jr z, jr_00b_64f2

    pop bc
    inc d
    xor d
    ld c, c
    sub a
    and e
    jr z, @+$27

    add hl, bc
    add c
    add [hl]

Call_00b_6578:
    ld d, l
    adc d

Call_00b_657a:
    ld e, b
    jp nc, $2aa2

    and e
    ld d, [hl]
    adc l
    xor b

jr_00b_6582:
    inc de
    sub l
    ld hl, $1a53
    inc b
    push hl
    sbc a
    jp hl


jr_00b_658b:
    adc d
    ld a, l
    adc d
    ld d, e
    ld a, b
    cp h
    or [hl]
    add hl, hl
    and c
    sub e
    ld l, c
    ld d, l
    ld [c], a
    ld [$b4b4], a
    push bc

jr_00b_659c:
    xor d
    xor d
    and e
    ld b, l
    add hl, hl
    adc e
    ld e, b
    db $eb
    ld e, l
    ld l, d
    xor b
    ld [$a35f], a
    or a
    ld a, c
    xor d
    ldh [$9e], a
    ld [hl+], a
    inc de
    ld b, $42
    add hl, bc
    rst $10
    jr c, jr_00b_658b

    ld b, d
    cp $4b

Jump_00b_65ba:
    ld b, a
    inc e
    sub b
    call c, Call_00b_50a3
    db $ed
    db $10
    sbc h
    jr z, jr_00b_6611

    db $e4
    jr nz, jr_00b_654e

    ld h, c
    sub b
    sub b
    sbc d
    ld b, [hl]
    ld [de], a
    sbc b
    push de
    inc b
    adc h
    and $a8
    jr z, jr_00b_659c

    inc c
    ld b, l
    ld e, l
    ld b, b
    sbc b
    inc h
    ld e, [hl]
    add h
    ld c, h
    add a
    dec bc
    pop de
    ld c, l
    jr jr_00b_662e

    rla
    or c
    db $10
    pop de
    sub e
    ld b, [hl]
    sub b
    add $14
    ld b, d
    db $f4
    dec bc
    ld b, [hl]
    pop de
    ld a, [bc]
    ld b, d
    ld sp, hl
    scf
    ld [hl], h
    ld [hl], b
    call nz, Call_00b_5023
    call c, Call_00b_49af

jr_00b_65ff:
    push bc
    dec bc
    ld [de], a
    sub b
    xor l
    ld b, h
    jp nc, Jump_00b_66b0

    inc c
    or c
    dec c
    inc b
    add d
    sbc e
    reti


    add a
    dec d

jr_00b_6611:
    ret


    dec [hl]
    ld a, a
    ld [$aaaa], a
    ld h, e
    inc e
    adc h
    ld [hl], l
    or b
    xor d
    xor l
    dec e
    ld a, [hl+]
    db $ed
    ld b, a
    add d
    pop de
    sbc $44
    cp l
    add l
    ld c, [hl]
    ld [hl], l
    rst $38
    ld [$8df3], a

jr_00b_662e:
    add sp, -$37
    ld [hl], $bf
    push af
    ld d, l
    ld d, h
    adc h
    jp c, $f0d1

    rst $38
    dec b
    xor e
    jr c, jr_00b_666c

    ld d, $aa
    jp c, $e204

    add d
    inc sp
    and e
    sub c
    ld c, [hl]
    push de
    and h
    add [hl]
    dec b
    ld c, [hl]
    rla
    add c
    add d
    ld h, d
    add hl, hl
    scf
    ld a, b
    jr jr_00b_6670

    ld d, [hl]
    or l
    call $d69f
    ld [hl-], a
    xor b
    ld a, [$ec5d]
    jr nz, jr_00b_65ff

    add hl, sp
    db $10
    ld b, c
    daa
    ld d, h
    ld [hl], h
    dec h
    jp hl


    rst $08
    dec b

jr_00b_666c:
    dec h
    ld b, b
    and a
    inc e

jr_00b_6670:
    add e
    ld [hl], l
    ld c, h

jr_00b_6673:
    rra
    sbc h
    ld [hl], b
    and [hl]
    inc l
    ld [hl], d
    ld [hl], c
    call c, Call_000_38c6
    ld b, a
    inc e
    inc l
    sub b
    sub c
    ld h, a
    dec de
    ld de, $0f51
    inc e
    ld d, [hl]
    ld h, a
    inc b
    ld a, l

Jump_00b_668c:
    jr z, jr_00b_66f4

    cp d
    dec d
    ld d, e
    ld d, l
    ld c, [hl]
    dec d
    rst $38
    push af
    ld a, [$94a6]
    or a
    or [hl]
    dec [hl]
    ld a, [hl]
    adc e
    xor l
    ld a, [hl+]
    ld b, [hl]
    ld c, b
    and c
    adc l
    sub h
    reti


    inc [hl]
    sbc [hl]
    daa
    ld [hl-], a
    ld a, [hl]
    jr c, jr_00b_66c2

    rst $38
    ld d, c
    ld h, d

Jump_00b_66b0:
    call nc, $85c2
    ld a, a
    db $fd
    ld c, b
    ld l, b
    jr jr_00b_6673

    push de
    ld hl, $5f32
    and l
    ld d, l
    ld a, [de]
    add l
    ld a, l

jr_00b_66c2:
    ld c, h
    inc h
    add hl, hl
    ld [hl-], a
    ld a, c
    xor b
    ld d, e
    dec b
    ld c, $42
    or h
    jp nz, Jump_000_2d25

    ld b, d
    dec d
    cp b
    cp b
    ld l, l
    ld c, b
    ld d, h
    jp nz, $9635

    rlca
    ld l, l
    ld d, l
    ld c, h
    sub c
    ld c, h
    inc hl
    ld c, b
    add l
    ld b, $8a
    and d
    ld d, h
    pop hl
    ld d, a
    jp nc, $a292

    ret nc

    add l
    jr jr_00b_6753

    ld b, l
    and b
    ld b, [hl]
    sbc d

jr_00b_66f4:
    ldh [$a2], a
    pop de
    ld b, c
    inc c
    add h
    ld h, e
    add hl, bc
    ld a, [hl+]
    ld h, $41
    ld [hl], d
    sub l
    inc d
    jp nz, $e014

    add $81
    rst $38
    add c
    or c
    ld d, [hl]
    sub e
    inc b
    adc $51
    ld a, b
    adc d
    ld a, [bc]
    db $fc
    ld e, $81
    ld c, h
    ld e, b
    jp z, $c927

    cp b
    and a
    add c
    ld l, b
    add [hl]
    ld h, $33
    adc c
    sbc $32
    ld l, b
    ld h, d
    ret nc

    ld c, c
    ld c, h

jr_00b_6729:
    ld e, b
    sub h
    inc hl
    ccf
    add [hl]
    add hl, hl
    add d
    inc b
    sub h
    sub l
    sub l
    ld l, b
    rst $18
    jp nz, $8625

    sub [hl]
    ld d, c
    xor a
    xor b
    db $e3
    ld d, h
    ld [de], a
    jr jr_00b_67a0

    ld a, [de]
    ld a, [de]
    and e
    ld c, d
    ld [hl-], a
    ld hl, sp+$11
    ld h, c
    ld a, b
    xor e
    ld c, c
    ld a, a
    jp nc, $371e

    ld l, c
    ld e, [hl]

jr_00b_6753:
    ld [hl-], a
    cp a
    ld [c], a
    ld l, a
    db $e3
    ld h, l
    ld e, a
    xor b
    ldh a, [$f7]
    ret nz

    xor d
    ld b, e
    ld d, l
    add hl, hl
    pop hl
    push de
    call Call_00b_5225
    ld a, b
    sub b
    ld b, d
    sbc b
    ld c, c
    pop hl
    add hl, sp
    ccf
    db $f4
    cp l
    ld a, [hl+]
    ld [hl], e
    jr z, jr_00b_6729

    db $fd
    ld b, h
    ld b, h
    ret


    ld [hl], $70
    inc hl
    xor l
    ld [hl], l
    or l
    ld c, d
    ld de, $0a72
    ld l, l
    adc h
    xor d
    db $ec
    ret


    inc e
    or e
    jr jr_00b_67f0

    ld h, [hl]
    adc e
    ld b, b
    xor l
    ld b, $44
    xor c
    ld a, [de]
    sbc b
    ld c, b
    ld h, $6c
    cpl
    reti


    ld c, c
    sub d
    add hl, bc
    adc h
    ld l, [hl]
    xor b

jr_00b_67a0:
    ld sp, $0a4d
    ld h, b
    sbc c
    ret


    sub h

jr_00b_67a7:
    sbc e
    ld d, h
    or h
    adc a
    add hl, de
    or c
    sbc h
    pop bc
    ld a, [bc]
    xor h
    dec hl
    ld h, $16
    ld h, c
    and b
    sbc b
    ret z

    inc l
    ld sp, $c90a

jr_00b_67bc:
    ld c, h
    ld a, [hl+]
    ld l, e
    dec h
    ld b, b

jr_00b_67c1:
    jp nz, Jump_00b_51d3

    add d
    call nz, $c129
    sub l
    inc de
    ld d, c
    ld a, [hl+]
    ld [$c353], a
    rla
    add d
    cp [hl]
    sub e
    add hl, de
    ld [hl], $d0
    and b
    cp a
    dec d
    jr z, jr_00b_67bc

    sub $d1
    or d
    push bc
    ld b, b
    or c
    and l
    sub c
    ld a, c
    jp nz, $c194

    ld b, $99
    ld l, $b5
    inc e
    ld e, c
    inc l
    jr nc, jr_00b_67a7

jr_00b_67f0:
    ld a, [hl+]
    call nc, Call_00b_7232
    and h
    inc sp
    ld sp, $6b34
    ld de, $b21b
    call z, $a073
    rst $00
    dec b
    or h
    ld [hl], h
    pop de
    db $ed
    nop
    ld b, h
    or e
    ld d, a
    rst $38
    db $fd
    ld d, h
    db $dd
    ld a, [$49d5]
    xor d
    db $d3
    scf
    rst $18
    ld [$4baf], a
    and e
    ld a, $8c
    db $ec
    cp b
    push bc
    ld c, [hl]
    rst $10
    adc d
    ld e, a
    db $fc
    add sp, $7a
    ld [hl-], a
    ld d, h
    ld d, $34
    and e

Jump_00b_6829:
    rlca
    ld a, [$31ad]
    or h
    ld d, h
    and a
    adc h
    and e
    dec hl
    ld e, [hl]
    xor a
    jr nc, jr_00b_67c1

    adc h
    ld l, [hl]
    ld c, b
    ld h, b
    ld h, l
    ld [$d664], sp
    ret nc

    and a
    cp b
    add h
    and l
    dec [hl]
    cp c
    ld b, c
    ld a, [c]
    ld a, [hl+]
    ld b, l
    cp h
    sub $5c
    ld hl, $6862
    push hl
    xor d
    dec a
    add hl, de
    db $e4
    and a
    inc b
    sbc d
    or h
    ld [hl], c
    ld c, c
    ldh [$67], a
    ld a, a
    sbc l
    xor a
    and $09
    ld c, c
    sbc d
    dec d
    cp $61
    and h
    ld l, h
    add d
    ld c, d
    sub a
    ld b, [hl]
    ld [hl], $0d
    xor $c2
    ld sp, hl
    rst $00
    ld a, [hl-]
    sub e
    rst $38
    push hl
    and [hl]
    ld c, [hl]
    call nc, Call_00b_7f3b
    ld hl, sp-$60
    and $76
    db $10
    xor e
    ldh a, [$de]
    dec d
    and $93
    ccf
    ldh a, [$27]
    ld b, h
    jr z, @-$4d

    ld a, [c]
    nop
    ld h, [hl]
    cp c
    jp nc, Jump_000_3c9e

    sbc l
    rlca
    sub h
    add h
    ldh a, [$2f]
    ld c, b
    ld [c], a
    sbc h
    and a
    db $d3
    sbc l
    rst $20
    dec bc
    ld b, l
    ld e, [hl]
    ld hl, $3378
    add c
    ld d, l
    ld l, [hl]
    ld d, c
    push hl
    ld b, a
    add [hl]
    ld [$34a5], sp
    ld l, b
    cp b
    sbc d
    add d
    dec b
    add l
    adc c
    rst $18
    add c
    ld d, d
    ret c

    pop bc
    adc h
    and d
    jp hl


    ld b, a
    add c
    ld a, d
    ld h, d
    xor d
    xor d
    ld d, $29
    and c
    ld h, e
    ld a, [de]
    ld l, c
    adc b
    call $5818
    sbc e
    ld h, $08
    sub l
    ld l, d
    ld a, [de]
    xor e
    adc h
    ld [$c2ab], a
    ld [hl+], a
    ld b, $49
    call z, $8d96
    sbc $d4
    ld d, $d8
    ld [hl+], a
    db $e4
    add l
    and e
    adc d
    add d
    ld [hl+], a
    xor b
    adc b
    jp z, Jump_00b_5a71

    ld [hl], $79
    adc h
    ld d, l
    cpl
    xor d
    add d
    adc [hl]
    inc d
    ld d, d
    ld de, $1946
    dec h
    inc b
    call $8537
    inc hl
    add d
    ld a, [hl+]
    ld h, $8a
    ld e, d
    adc [hl]
    inc h
    ld hl, $4560
    ld d, $42

jr_00b_6910:
    cpl
    dec h
    ld d, e
    ld d, l
    adc b
    ld d, a
    adc d
    add d
    or h
    jp nz, $98fe

    adc $25
    cp $26
    ld h, d
    and h
    pop bc
    daa
    scf
    ld a, a
    adc b
    ld d, l
    ld [hl+], a
    ld c, c
    ld c, h

jr_00b_692b:
    dec h
    ld a, b
    db $db
    ld [c], a
    ld e, $08
    add h
    inc d
    sub h
    ld d, [hl]
    xor d
    adc l
    sbc [hl]
    dec b
    add sp, -$7c
    ld d, b
    add d
    jp nc, $9163

    push hl
    ld [$c985], a
    adc c
    or h
    jr z, jr_00b_692b

    cp a
    and c
    and a
    ld [c], a
    jr z, jr_00b_6910

    jp c, $a838

    xor e
    ld [c], a
    ld e, [hl]
    inc sp
    cp [hl]
    inc [hl]
    sbc l
    pop af
    rst $20
    inc a
    ld a, b
    xor h
    xor d
    ld l, $6b
    daa
    ld d, a
    push de
    cp h
    ld b, e
    sbc b
    ld h, a
    inc sp
    ld hl, sp-$21
    or [hl]
    adc e
    sub b
    ei
    pop de
    cp d
    and b
    rst $18
    rst $38
    ei
    ld [c], a
    ld sp, hl
    dec [hl]
    ld [de], a
    add d
    ld h, e
    ld d, h
    ld b, e
    rst $38
    rst $38
    rst $38
    sub a
    ld [bc], a
    ld e, d
    inc [hl]
    ld l, h
    rst $38
    rst $38
    ld e, a
    ret nz

    sub [hl]
    xor [hl]
    add a
    xor e
    and [hl]
    or h
    rst $38
    ldh a, [$bf]
    jp $d0ff


    cpl
    db $fd
    inc e
    ld [hl-], a
    db $fc
    cpl
    ld a, [c]

jr_00b_699b:
    sbc c
    ld e, l
    inc e
    adc a
    rst $38
    rst $38
    pop bc
    add l
    ld [$7c76], a
    inc sp
    ld [hl], l
    add a
    adc a
    rst $38
    jp hl


    ld [$bb51], sp
    push bc
    ld d, e
    ldh [$fe], a
    ld d, $9d
    ld c, a
    ld de, $8707
    ret nz

    cp $36
    sbc c
    ld sp, $0eb7
    ld b, l

jr_00b_69c1:
    add a
    adc h
    sbc $62
    add h
    ld [hl], b
    or b
    ld sp, $860f
    scf
    db $ec
    sub d
    and b
    sub d
    add d
    ld l, l
    inc d
    rst $08
    dec bc
    rst $38
    or b
    ccf
    ld a, [$d1b8]
    add $fe
    scf
    rst $38
    db $e4
    ld a, a
    rst $38
    add sp, $49
    jp nz, Jump_00b_7ef0

    rrca
    add a
    ld a, d
    dec [hl]
    db $fd
    ld d, l
    sbc h
    cpl
    db $10
    rst $30
    ldh [$a1], a
    ld a, d
    ld [hl], l
    cp h
    ld c, a
    dec c
    add d

jr_00b_69f9:
    sub e
    ld a, d
    sbc h
    rst $08
    dec d
    dec d
    ld [bc], a
    ld h, c
    ld a, d
    ld [hl], d
    ld b, a
    ld [bc], a
    ld h, a
    ld l, c
    add sp, $49
    and b
    ld b, h
    jr c, jr_00b_69c1

    ld [hl], a
    push af
    jr nc, jr_00b_6a64

    ld c, b
    ld [de], a
    dec d
    ld a, [bc]
    ld [hl-], a

jr_00b_6a16:
    add l
    jr nc, jr_00b_699b

    ld c, d
    sub h
    jp nz, $0919

    daa
    inc hl
    rlca
    or b
    ld [hl], e
    dec de
    ld b, e
    inc d
    add hl, de
    daa
    add d
    jr jr_00b_69f9

    ld sp, hl
    ld e, [hl]
    push af
    push de
    adc [hl]
    ld d, $41
    and d
    and c
    adc $24
    ld e, d
    ld c, [hl]
    ld a, e
    ld d, b
    sub c
    ld c, h
    add hl, hl
    ld c, h
    dec d
    ld l, a
    ld c, b
    and e
    ld e, d
    ld a, [hl+]
    ld [hl], c
    add d
    inc c
    db $d3
    xor e
    adc h
    dec hl
    inc c

jr_00b_6a4c:
    cp l
    ld hl, $4216
    inc [hl]
    and l
    ld d, a
    ld [$fcc3], sp
    db $e3
    xor b
    add l

jr_00b_6a59:
    ld h, c
    xor b
    push hl
    xor d
    inc a
    db $dd
    jp nz, $799c

    xor h
    add hl, bc

jr_00b_6a64:
    ld c, c
    and h
    and c
    and l
    jr c, jr_00b_6a4c

    or $a6
    inc e
    jr @-$19

    ld h, h
    ld c, a
    ld [bc], a
    inc d
    ld h, e
    and c
    ld b, c
    ld h, d
    db $e4
    jp Jump_000_1955


    ld a, d
    ld b, d
    jp $b242


    sbc e
    ld c, h
    sbc d
    and a
    inc c
    ld b, e
    ld c, c
    add l
    ld a, d
    sbc e
    jr nz, jr_00b_6a16

    ld h, c
    ld c, e
    ld b, [hl]
    cp [hl]
    dec c
    jr jr_00b_6ab7

    pop de
    add a
    jp z, Jump_000_19e1

    ld h, b
    add d
    and [hl]
    ccf
    ld a, [hl+]
    xor h
    sub e
    jp $677a


    ld b, $38
    ld b, e
    inc d
    db $e3
    inc b
    ld [hl], b
    call nz, $844a

jr_00b_6aac:
    ld a, h
    ld e, b
    ld h, [hl]
    cp l
    add l
    rst $38
    push af
    inc a
    ld d, a
    and d
    db $eb

jr_00b_6ab7:
    ld d, l
    dec sp
    ldh [$95], a
    ld d, d
    ld [$4ebd], a
    cp c
    ld l, d
    dec de
    dec b
    sub d
    xor e
    ld c, h
    sbc a
    ld c, [hl]
    jr jr_00b_6a59

    xor c
    sub d
    reti


    ld l, $90
    ld a, a
    db $f4
    call $2e06
    ld l, c
    ld b, c
    ld d, a
    push af
    sbc $30
    db $e3
    jr c, @-$31

    inc hl
    and d
    xor b
    pop bc
    ld d, b
    adc $b9
    inc [hl]
    ld e, a
    xor e
    ld h, e
    sub c
    ld h, c
    ld d, l
    ld c, e
    ld l, d
    adc [hl]
    dec bc
    rst $38
    ld d, d
    ld h, $ac
    adc c
    xor c
    ld h, c
    ret nc

    ld d, h
    sub $e4
    ld l, e
    pop hl
    ld e, b
    cp d
    ld c, h
    ld [hl+], a
    inc hl
    ld l, c
    and l
    ld h, c
    push de
    ld [hl], l
    jr c, jr_00b_6aac

    jp c, Jump_00b_464a

    or [hl]
    cp d
    xor d
    ld hl, $2655
    jr nc, jr_00b_6b68

    ld d, b
    adc b
    adc b
    xor l
    ld d, $06
    jr jr_00b_6b6f

    adc c
    inc sp
    ld c, d
    and d
    dec hl
    jr nc, @+$4e

    db $ed
    dec b
    sub h
    push bc
    ld c, $f7
    ld d, $25
    add l
    ld c, h
    and b
    cp d
    adc l
    dec hl
    ld a, b
    add h
    add [hl]
    res 2, c
    ld c, c
    ld c, b
    adc $1a
    ld h, $04
    sbc d
    ld h, h
    ld l, b
    adc $d3
    add e
    ld h, $2e
    ld [hl+], a
    ld c, c
    ld l, l
    jp nc, $d978

    ld hl, $6a92
    ld a, [hl+]
    ld [hl+], a
    pop hl
    or h
    ld [hl], e
    ld l, b
    add h
    ld d, d
    ld hl, $5ea1
    xor b
    cp e
    ld [hl], h
    jp nc, $8505

    ld d, d
    and b
    ld a, [$a336]
    ld c, h
    dec [hl]
    ld a, [hl]
    add hl, de
    cp $8e

jr_00b_6b68:
    ld e, c
    db $f4
    rst $28
    rst $38
    ld [$df78], a

jr_00b_6b6f:
    ld d, l
    rst $38
    add sp, $54
    and a
    adc b
    cp a
    ld b, c
    xor c
    inc d
    sbc d
    daa
    daa
    push bc
    sbc $a4
    ld l, c
    sbc l
    inc de
    dec e
    rla
    add sp, $44
    jp Jump_00b_471a


    dec a
    cp $99
    cp a
    call nz, $43a7
    rst $38
    xor c
    cpl
    pop de
    ldh [rLY], a
    ld e, a
    rst $38
    pop af
    ret z

    xor d
    sbc c
    add hl, sp
    ld d, l
    db $fc
    ld [hl], h
    ld e, d
    and b
    add h
    rrca
    ld sp, hl
    ld e, e
    ld h, a
    ld e, l
    ld [hl], c
    ld a, [bc]
    xor e
    ld [bc], a
    rst $38
    sbc [hl]
    rrca
    ld a, [$b737]
    ldh a, [rNR52]
    sub c
    push bc
    rst $38
    rst $38
    db $fd
    push bc
    and l
    add $92
    sbc b
    xor a
    rst $10
    cp $61
    ld a, [$675c]
    ld a, a
    di
    cp $0d
    ld a, l
    ld a, [hl+]
    ld hl, sp+$7f
    adc d
    ld [hl], c
    ld d, h
    rla
    db $fc
    ld b, a
    rst $08
    rst $38
    add l
    cp $75
    ld a, $af
    pop bc
    dec b
    ldh a, [$3b]
    ld e, [hl]
    sbc l
    rrca
    call nc, $36b9
    rrca
    ldh a, [$da]
    ld b, h
    ld [hl], b
    cp l
    add e
    push af
    db $e4
    db $e3
    ld b, l
    ret


    jp nz, $04bf

    rra
    adc a
    add sp, $41
    dec de
    ld b, [hl]
    cp a
    push bc
    ld e, a
    or d
    ld de, $50dd
    ld b, a
    add d
    ld b, h
    or c
    ld d, l
    ld d, e
    ld b, l
    adc h
    ld e, d
    adc e
    sub c
    ld d, l
    ld e, l
    ld h, e
    ld a, [de]
    ld c, d
    ld d, l
    ldh [$e9], a
    add hl, bc
    ld h, e
    ld c, h
    inc d
    inc h
    adc b
    ld h, l
    ld e, b
    pop de
    cp l
    ld a, h
    dec hl
    pop de
    and d
    inc sp
    dec h
    ld d, l
    ld d, h
    jr z, @-$75

    ld e, [hl]
    adc h
    ld e, [hl]
    add hl, hl
    ld a, b
    add $0a
    ld c, h
    ld d, l
    ld e, d
    ld [$a516], sp
    add c
    add hl, sp
    ld a, [de]
    add hl, sp
    and d
    ld e, e
    adc l
    ld [hl], h
    inc h
    jp nz, Jump_00b_6341

    ld b, [hl]
    rra
    ld c, h
    ld hl, sp-$2a
    dec de

jr_00b_6c46:
    adc l
    ld h, l
    ld c, h
    and e
    sbc [hl]
    xor d
    xor d
    ld a, $3e
    ld h, b
    and h
    xor c
    and e
    jr jr_00b_6c46

    adc l
    and b
    sub b
    ld a, [$9509]
    and h
    and h
    ld b, c
    ld [$1add], a
    ldh a, [$d6]
    cp $d5
    or b
    add hl, sp
    sbc d
    xor a
    add sp, $4f
    pop hl
    db $10
    and $71
    ld c, d
    rst $38
    cp $bb
    add hl, sp
    ld l, c
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    add a
    ei
    jr jr_00b_6cfc

    db $f4
    rra
    push af
    ld a, [hl]
    and c
    ld a, [hl]
    ld e, e
    pop de
    rrca
    ld b, l
    cp $4f
    sbc b
    inc h
    ld [hl], a
    add hl, de
    ld [hl], e
    and c
    add hl, de
    ld c, [hl]
    add $6c
    dec c
    ld d, c
    sbc e
    ld a, [de]
    jr nc, @-$38

    db $f4
    ld a, [bc]
    ld h, b
    rst $00
    rst $10
    nop
    ld d, l
    cp d
    rra
    ld c, b
    ld c, [hl]
    push hl
    pop hl
    ldh [$82], a
    ld a, [hl-]
    ld e, a
    add sp, $54
    sub h
    inc de
    sbc [hl]
    adc e
    ld b, c
    ld h, l
    ld hl, $6839
    and [hl]
    ld [$e2a4], sp
    ld d, l
    ld c, h
    ld de, $5d85
    ld d, b
    ld c, h
    jp c, Jump_000_0855

    ld [de], a
    ld [de], a
    ccf
    and d
    and b
    adc h
    ld l, d
    adc c
    and h
    inc h
    dec h
    and b
    add d
    dec h

Jump_00b_6cd1:
    ld h, b
    and h
    rra
    and c
    ld a, d
    adc b
    ret nc

    adc l
    ld h, c
    adc b
    ld c, c
    ld d, d
    ld d, h
    adc h
    ld hl, $d68d
    add a
    sub [hl]
    rst $10
    db $f4
    adc b
    sbc b
    sub h
    inc hl
    ld d, a
    ld a, [de]
    db $e4
    cp b
    ld [de], a
    db $10
    adc h
    sub d
    di
    inc b
    db $dd
    ld [hl-], a
    ld c, h
    add hl, hl
    ld b, $0e
    and d
    sub e

jr_00b_6cfc:
    ld [$2412], sp
    inc h
    add $e1
    ld d, e
    ld h, $41
    ld sp, $4c86
    dec d
    db $eb
    inc d
    sub h
    ld h, d
    scf
    call nc, Call_00b_5364
    ld l, [hl]
    dec c
    ld h, d
    ld hl, $af89
    ld b, d
    ld sp, $5052
    xor b
    sub [hl]
    ld b, $32
    xor b
    jp z, Jump_00b_54f5

    add l
    add c
    adc l
    ld h, l
    adc l
    ld l, d
    db $fd
    ld l, b
    db $e4
    rst $18
    nop
    jp nc, $7744

    inc l
    add hl, bc
    ld l, c
    call nc, $3dd1
    ld a, [bc]
    add hl, hl
    ret nc

    sub a
    ld e, $3c
    ld e, l
    ld a, [$b56a]
    ld d, d
    add d
    ld b, e
    xor d
    jp nc, Jump_00b_46a4

    jr z, jr_00b_6d90

    ld d, d
    adc h
    db $10
    ld b, c
    ld de, $2913
    dec l
    inc bc
    ld d, [hl]
    sub l
    ld b, [hl]
    jp z, Jump_00b_4a2a

    and h
    pop af
    ld a, [hl-]
    inc d
    ld l, c
    ld b, c
    ld b, l
    ld hl, $2b5f
    ld b, [hl]
    adc b
    ld b, [hl]
    rst $30
    ld hl, sp+$48
    call nz, Call_00b_5129
    adc d
    sbc b
    rst $38
    ld c, e
    dec de
    ld h, $49
    and a
    inc bc
    ld e, [hl]
    sub h
    and h
    ret nz

    sub a
    ld h, $72
    inc a
    ld c, l
    add hl, hl
    jr z, jr_00b_6da7

    ld d, d
    ld h, h
    xor b
    db $e4
    ld c, h
    ld c, l
    ld b, e
    ld d, d
    sub h
    sbc d
    ld b, c
    ld a, h
    add hl, de
    add h
    ld h, c

jr_00b_6d90:
    ld c, b
    ld b, [hl]
    ld c, c
    add hl, bc
    inc d
    ld e, e
    ld a, [de]
    ld d, c
    sbc l
    ld d, d
    and l
    inc l
    ld l, a
    ld b, a
    dec c
    ld d, h
    ld [hl], e
    nop
    ld b, h
    cp l
    dec h
    xor c
    ld a, [hl-]

jr_00b_6da7:
    ld e, b
    cp c
    add hl, sp
    xor e
    add hl, de
    ret z

    ld c, [hl]
    dec h
    add d
    ld hl, $54f2
    push de
    ld h, [hl]
    and h
    sbc b
    add hl, de
    ld [hl], $64
    inc [hl]
    jp z, $d514

    ld a, l
    jp Jump_000_2a06


    ld d, e
    ld a, d
    inc b
    ld l, b
    add sp, -$6a
    dec sp
    db $e4
    push de
    sub e
    adc d
    ld e, h
    and [hl]
    ld d, [hl]
    add hl, sp
    ld l, d
    ld e, b
    adc c
    ld c, a
    ld b, $94
    ld hl, sp+$5d
    ld [$752a], a
    or h
    ld b, h
    sbc l
    ld [$4a6c], sp
    ld [hl], d
    xor a
    ld hl, $ed9c
    sub c
    ld c, b
    ld c, d
    add l
    ld b, [hl]
    rlc [hl]
    ld d, h
    ld [de], a
    sbc h
    ld d, e
    and [hl]
    ld de, $c6cd
    ld sp, $84c7
    ld e, d
    ld [hl], h
    and d
    and d
    call $fae8
    ld l, a
    ld e, b
    ld b, l
    or c
    ld sp, $45c9
    ld d, d
    sbc [hl]
    dec c
    rra
    ld a, [bc]
    ld d, l
    jr c, jr_00b_6e24

    rst $38
    ld d, h
    jp hl


    ld e, a
    jp nz, Jump_00b_5aa5

    cp l
    jr c, @-$1f

    and d
    ld a, $89
    xor c
    ld l, l
    ld c, l
    sbc [hl]
    dec l
    ld e, d
    and l
    ld c, c

jr_00b_6e24:
    sbc d
    db $d3
    jr c, jr_00b_6e67

    ld d, l
    pop de
    xor d
    ld d, [hl]
    sub l
    add a

jr_00b_6e2e:
    ld d, c
    ld c, e
    add d
    ld a, h
    adc d
    db $d3
    ld a, [bc]
    ld d, d
    sbc c
    db $e3
    ld [$7161], sp
    ld l, h
    pop bc
    and d
    rra
    db $e3
    scf
    ld hl, $c6c6
    ld h, $21
    rra
    adc [hl]
    dec h
    ld hl, $4222
    ld e, e
    cp $37
    ld h, d
    inc e
    ld a, b
    ld hl, $6e98
    jr c, jr_00b_6ea7

    sub h
    ld l, h
    ld [hl], $14
    add [hl]
    jr c, jr_00b_6e2e

    ld l, [hl]
    ldh a, [$d8]
    add h
    add l
    ld d, h
    ld d, a
    ei
    ld a, [c]

jr_00b_6e67:
    sub a
    xor e
    ld b, $d7
    rst $10
    ld d, d
    ld sp, $635c
    inc l
    dec hl
    and b
    ld l, a
    xor d
    ld [$f0a8], a
    push hl
    add hl, sp
    ld d, e
    ld a, [bc]
    sub l
    ld d, h
    adc a
    jr c, @-$11

    add hl, hl
    ld d, d
    ld [$e454], a
    or b
    ld b, [hl]
    sbc a
    xor d
    xor b
    adc c
    ld d, e
    adc [hl]
    inc c
    inc d
    ld h, l
    ld d, d
    dec d
    ld l, b
    rst $20
    and b
    db $fc
    adc d
    add a
    dec [hl]
    db $db
    and a
    sub c
    xor e
    ld d, h
    xor c
    jp nc, $a9bf

    sub l
    daa
    dec de
    ld b, e

jr_00b_6ea7:
    ld d, l
    ld a, a
    xor d
    ld d, h
    and l
    and l
    xor a
    xor d
    sbc b
    push de
    ld [$e8d5], a
    inc a
    ld e, h
    dec a
    ld d, a
    sbc d
    ld d, d
    ld d, e
    add $51
    ld c, l
    ld b, d
    sub [hl]
    call nc, $c209
    sub c
    ld [de], a
    adc d
    sub c
    ld a, [bc]
    inc e
    ld [hl], l
    inc h
    db $ec
    ld a, [bc]
    sbc h
    sub c
    ld [de], a
    ld d, [hl]
    ld b, e
    adc $72
    dec h
    call z, $a408
    ld b, c
    inc e
    ld l, b
    ld a, [c]
    xor h
    jp nz, $9290

    or h
    ld c, d
    add [hl]
    ld d, l
    ld d, b
    dec [hl]
    jr c, jr_00b_6f38

    xor e
    ld hl, sp+$7d
    rlca
    add l
    inc d
    pop hl
    add e
    dec d
    ld e, a
    pop af
    ld [hl], h
    ld l, h
    cp l
    ld l, d
    ld l, c
    add hl, hl
    ret z

    add d
    dec [hl]
    ld [$7999], a
    sla h
    push de
    rst $38
    rst $38
    jp nc, Jump_00b_7273

    sbc h
    ld [de], a
    xor d
    ld sp, hl
    xor h
    jr jr_00b_6f78

    ld [hl], b
    dec l
    inc e
    ld [hl], b
    or l
    ld a, [hl+]
    xor d
    or h
    ld h, [hl]
    ld b, h
    cp [hl]
    ld d, l
    ld a, a
    db $fc
    push hl
    ld e, a
    and e
    sbc l
    ld e, e
    push bc
    ld e, a
    db $f4
    ldh [$fe], a
    xor e
    ld [$3826], a
    ld h, a
    sub h
    xor $b3
    or l
    ld h, [hl]
    jr nc, jr_00b_6f80

    ld h, $6d
    xor [hl]
    rst $38
    adc [hl]
    add hl, hl

jr_00b_6f38:
    push af
    cp $3a
    sbc $8e
    db $db
    rst $38
    rst $38
    db $fc
    ld a, [$f259]
    adc $ab
    sbc h
    ret z

    ld b, a
    ld c, d
    jr nc, jr_00b_6f6e

    add e
    inc c
    sbc h
    ld [hl], $aa
    rst $00
    ld h, l
    ld [hl], c
    sbc $a6
    ld c, $72
    ccf
    xor d
    cp a
    rst $20
    dec bc
    db $fd
    ld [hl+], a
    cp l
    ld b, a
    inc d
    ld b, h
    dec l
    dec e
    ld c, c
    ldh [$c6], a
    ld [hl], c
    db $f4

jr_00b_6f6a:
    and b
    ld d, l
    cp [hl]
    pop bc

jr_00b_6f6e:
    ld d, h
    and $53
    ld b, a
    xor d
    call $fed5
    and e
    dec d

jr_00b_6f78:
    inc b
    rra
    ld hl, sp-$33
    ldh [rWX], a
    sub d
    ld e, [hl]

jr_00b_6f80:
    xor d
    adc c
    and e
    dec d
    cpl
    inc b
    ld l, b
    ld d, c

jr_00b_6f88:
    ld a, a
    ldh [rHDMA5], a
    and e
    dec [hl]
    adc b
    ld b, l
    ld d, b
    ld b, e
    and d
    ld a, [hl+]
    xor d
    call $1576
    ld sp, hl
    ld [$6839], a
    ld l, a
    add c
    ld a, b
    jr z, jr_00b_6f88

    ld c, c
    sub $e8
    ld l, b
    add h
    reti


    jr nc, jr_00b_6ff9

    sbc d
    ld h, $88
    xor b
    cp b
    ccf
    db $e3
    dec de
    call z, Call_000_1415
    jr nz, jr_00b_6f6a

    ld h, b
    adc c
    ld c, [hl]
    dec h
    dec b
    add hl, de
    ld [hl+], a
    xor l
    ld c, b
    ld b, d
    add hl, hl
    ld c, b
    or l

jr_00b_6fc2:
    ld hl, sp-$76
    add [hl]
    add c
    ld h, c
    cp a
    inc b
    jp nz, $a849

    sub a
    adc c
    and h
    ld a, a
    ld e, [hl]
    ld [hl-], a
    or l
    inc d
    ld d, $e2
    ld d, [hl]
    add d
    ld a, [de]
    db $d3
    ld l, d
    push af
    rst $38
    rst $18
    xor d
    sub a
    ld l, d
    jr c, @+$59

    db $fd
    ld d, l
    ld d, l
    ld e, d
    adc [hl]
    ld e, d
    ld a, [$0a0a]
    ld a, [bc]
    adc l
    and a
    ret c

    ld [hl+], a
    sbc h
    ret


    xor d
    dec d
    ld l, d
    ld l, h
    adc h
    inc c

jr_00b_6ff9:
    add hl, bc
    sbc d
    dec l
    ld d, d
    ld h, [hl]
    add d
    db $e3
    ld c, $5a
    cpl
    sub a
    and [hl]

jr_00b_7005:
    jr z, jr_00b_7005

    jr nc, jr_00b_702b

    call nz, $ff2f
    dec hl
    db $fc
    ld h, c
    rlca
    pop de
    ld [$08b4], sp
    ld e, h
    ld c, l
    inc de

jr_00b_7017:
    jr jr_00b_6fc2

    add hl, sp
    inc e
    ld e, a
    sbc h
    sub b
    ld l, b
    ld d, b
    inc l
    ld b, h
    ld b, e
    sub [hl]

jr_00b_7024:
    add d
    ld l, $5a
    ld a, $d2
    ld d, h
    cpl

jr_00b_702b:
    push hl
    pop hl
    rst $38
    sbc b
    ld c, a
    add $10
    cp l
    ld sp, hl
    rrca
    or l
    ld e, c
    sub a
    sbc b
    ld hl, $3287
    rla
    db $fc
    sub b
    push hl
    and e
    ld l, c
    adc h
    add sp, -$26
    dec l
    ld a, a
    pop af
    ld a, d
    ld [hl], $82
    ld d, e
    and h
    rst $18
    adc $d7
    jr jr_00b_7017

    ld a, [hl]
    cp a
    jr jr_00b_7099

    db $fd
    and $ff
    push af
    add h
    ld d, d
    db $10
    dec sp
    ld d, [hl]
    ld [hl], b
    ld b, h
    ld e, b
    ret nc

    or b
    xor l
    ld b, a
    ld [hl+], a
    adc e
    dec c
    inc c
    dec [hl]
    ld e, $a8
    ld b, h
    cp [hl]
    push hl
    ld a, h
    pop hl
    ld a, a
    rst $18
    ld a, l
    xor d
    scf
    ld a, b
    sbc e
    xor d
    ld a, h
    inc de
    and d
    db $e3
    or a
    ld d, e
    sbc d
    jp nc, $2958

    ld d, h
    db $e3
    cp [hl]
    add c
    add c
    ld l, e
    inc c
    db $e4
    xor b
    sbc e
    ld hl, sp-$11
    cp h
    db $fc
    ld d, $7d
    jp nz, Jump_00b_7442

    jr nz, jr_00b_7024

jr_00b_7099:
    add [hl]
    ld [hl], e
    ld c, c
    add hl, bc
    ld de, $f9ce
    ret nc

    sub d
    db $fd
    inc bc
    cp b

Jump_00b_70a5:
    daa
    dec c
    rst $38
    db $e4
    ld e, a
    add [hl]
    ld [hl], d
    ld d, h
    ld c, h
    and b
    rst $00
    ld [hl], l
    and a
    db $e4
    and b
    ld d, l
    cp l
    sub l
    db $fd
    or l
    dec sp
    ld e, [hl]
    add l
    rla
    db $fc
    rst $28
    ld d, c
    ld l, d
    dec sp
    ld d, l
    adc b
    adc [hl]
    push de
    ld b, l
    inc hl
    or h
    ld d, a
    ld sp, hl
    ld c, [hl]
    rlca
    cp [hl]
    ld [hl], b

jr_00b_70cf:
    ld b, [hl]
    sub b
    xor c
    or [hl]
    adc [hl]
    dec b
    add l
    xor b
    ld [hl+], a
    ld l, l
    jp hl


    add hl, sp
    inc h
    inc d
    add $19
    ld [hl], b
    ld c, [hl]
    ld [hl], $0e
    dec b
    ld h, d
    and $56
    ld c, [hl]
    dec h
    ld c, e
    ld e, d
    ld b, e
    ld h, d
    jr z, jr_00b_70cf

    and [hl]
    add hl, bc
    add c
    adc d
    adc b

jr_00b_70f4:
    adc b
    ld c, [hl]
    dec b
    or d
    ld h, e
    ld [$a487], sp
    pop hl
    or [hl]
    ld b, [hl]
    ld c, c
    ld h, c
    ldh a, [$98]
    db $e3
    cp [hl]
    ret z

    xor d
    ld l, $8e
    ld c, d
    add hl, de
    inc sp
    xor e
    ld [$8ece], a
    sub [hl]
    ld e, d
    xor c
    ld h, e
    add l
    ld c, b
    ld b, c
    ld h, d
    ld [$96a3], a
    add sp, $55
    inc a
    ld a, [hl+]
    xor d
    add hl, sp
    rst $20
    cp b
    and b
    sbc [hl]
    cpl
    db $ed
    ld b, a
    add b
    rst $38
    ld e, $15
    db $fc
    ld a, b
    or h
    ld d, $96
    xor c

Call_00b_7132:
    bit 5, b
    ret nz

    sbc b
    inc [hl]
    ld [hl], e
    inc l
    jr nc, jr_00b_70f4

    inc a
    ld [hl], l
    ret


    rrca
    sbc b
    and a
    ld b, [hl]
    db $fd
    and $2c
    ld [hl], e
    or a
    add sp, $2d

jr_00b_7149:
    ld e, e
    ld a, c
    call z, Call_000_1c8e
    ld sp, hl
    rrca
    or c
    rst $08
    ld a, h
    pop hl
    rst $38
    rst $38
    call nz, Call_00b_4c27
    rla
    rst $38
    di
    db $f4
    ld [hl], d
    jp Jump_00b_5524


    ld b, d
    sbc l
    ld d, $ba
    ld b, l
    ld a, b
    ld a, [$9caa]
    ld [hl], l
    adc [hl]
    sbc b
    push de
    ld d, c
    rst $00
    inc bc
    rst $38
    rst $20
    add [hl]
    push de
    ld h, a
    cp [hl]
    ld b, h
    cp l
    daa
    db $ed
    dec d
    add hl, sp
    xor l
    ld [$f36b], sp
    sub l
    inc b
    jr @+$52

    ld d, e
    sub c
    add d
    sbc b
    ld a, [hl+]
    ld [$79e1], sp
    adc b
    ld h, b
    ld b, c
    inc b
    ldh [$aa], a
    dec h
    ld d, h
    adc b
    pop hl
    ld d, d
    ld h, $15
    add l
    adc $18
    jr jr_00b_71f3

    inc d
    adc e
    jr c, jr_00b_720b

    add l
    ld b, c
    ld c, c
    ld c, [hl]
    dec d
    sub c
    sub h
    ld h, d
    inc sp
    adc d
    ld a, [$5481]
    add h
    add sp, -$43
    ld [hl], e
    cp d
    sub l
    ld c, a
    add l
    sbc [hl]
    xor d
    sbc l
    sbc d
    cp $0f
    daa
    dec [hl]
    db $fd
    jr z, jr_00b_71ea

    ld [hl-], a
    or b
    jr nz, jr_00b_7149

    rst $00
    ld [de], a
    rla
    pop hl
    pop hl
    or a
    sbc h
    inc a
    rrca
    jp z, $b1ad

    jp $c803


    rst $38
    rst $20
    scf
    add a
    rst $38
    ld hl, sp+$39
    push bc
    add h
    rra
    rst $38
    pop hl
    inc e
    ld [hl], d
    adc l
    rst $38
    dec e
    ld [$d777], a

jr_00b_71ea:
    xor c
    db $f4
    and b
    ld h, [hl]
    cp [hl]
    dec a
    db $fd

jr_00b_71f1:
    ld c, a
    dec h

jr_00b_71f3:
    db $dd
    ld a, [bc]
    adc [hl]
    push hl
    xor d
    xor c
    ld sp, $15a2
    jr c, @-$28

    add l
    ld d, l
    ld c, b
    sbc a
    ld d, $16
    ld [hl+], a
    ld c, l
    ret c

    ld d, a
    rst $28
    ld [hl+], a
    sub c

jr_00b_720b:
    cp [hl]
    dec d
    ld b, $0c
    pop bc
    ld d, d
    ld e, b
    ld e, c
    add c
    jp c, Jump_000_09a9

    jr @+$1a

    add [hl]
    jr nc, jr_00b_729b

    ld sp, hl
    add l
    sbc b
    ld e, $16
    and h
    inc h
    ld de, $3585
    sub c
    or d
    db $10
    ld b, [hl]
    ld b, l
    sbc d
    ld b, d
    jr jr_00b_723f

    sub h
    add $2a

Call_00b_7232:
    ld b, e
    inc b
    ld [de], a
    ld h, d
    jp hl


    add hl, bc
    add [hl]
    inc [hl]

jr_00b_723a:
    ld h, d
    ld h, h
    ld [hl+], a
    inc hl
    inc a

jr_00b_723f:
    jp c, Jump_00b_6829

    add $52
    jr jr_00b_7298

Call_00b_7246:
    ld hl, $4591
    ld [hl+], a
    ld a, [hl+]
    adc [hl]
    jr c, jr_00b_726f

    ld h, h
    inc h
    ld l, b
    ld d, b
    add c
    jr jr_00b_723a

    adc d
    sub b
    sbc c

jr_00b_7258:
    ld l, c
    ld e, c
    add c
    inc d
    sub l
    ld d, e
    ld d, l
    jr nc, jr_00b_71f1

    sub b
    and l
    and b
    ld h, b
    ld h, e
    ld a, [hl+]
    ld c, h
    rra
    db $f4
    jp nz, Jump_00b_559d

    or [hl]
    adc l

jr_00b_726f:
    db $e4
    sbc d
    adc b
    and e

Jump_00b_7273:
    ccf
    ld [$6333], a
    inc d
    or h
    push de
    adc b
    sub e

jr_00b_727c:
    inc [hl]
    ld h, e
    ld e, e
    rst $10
    adc d
    ld l, a
    db $fc
    adc b
    push bc
    ld h, $33
    sub b
    xor b
    ld e, c
    add hl, sp
    ld h, e
    jr jr_00b_7258

    ld d, l
    adc b
    ld b, d
    ld b, c
    dec l
    dec l
    jr nc, @-$63

    jr c, jr_00b_727c

jr_00b_7298:
    ld l, a
    ld b, l
    dec l

jr_00b_729b:
    inc sp
    and l
    adc [hl]
    add hl, hl
    sub b
    add c
    dec b
    ld d, [hl]
    inc a
    ld c, c
    cp $8e
    adc c
    pop af
    db $ec
    db $10
    daa
    sub d
    pop bc
    ld [hl+], a
    rst $00
    ld [hl], d
    ld de, $2450
    cpl
    pop af
    ld [$1a27], sp
    db $10
    xor c
    ld a, [hl+]
    ld [hl-], a
    rst $18
    ld [c], a
    call nz, $bb49
    ld [bc], a
    pop de
    adc l
    ld hl, $726d
    ld c, $11
    add d
    add hl, bc
    inc l
    inc c
    ld d, d
    ld de, $3812
    pop hl
    inc de
    dec de
    call z, Call_00b_4c39
    inc c
    ld b, h
    ret z

    ld h, l
    ld h, [hl]
    add hl, bc
    sub [hl]
    ld b, [hl]
    ld d, d
    ld sp, $1782
    add h
    ld h, h
    call nz, $b132
    add hl, de
    adc d
    ld h, b
    sub c
    ld l, c
    adc e
    rla
    and d
    sub c
    sub [hl]
    add d
    ld l, b
    ld hl, sp-$5c

jr_00b_72f7:
    ld b, [hl]
    ld [hl], l
    db $10
    ret


    ld e, d
    ld [de], a
    jr z, jr_00b_72f7

    cp $39
    call nz, Call_000_2593
    ld a, d
    ld c, e
    ldh a, [$7f]
    ld c, $71
    ld b, l
    ld e, d
    ld c, l
    ld a, e
    db $fc
    rst $38
    sub c
    db $10
    sbc d
    and b
    sub a
    ld a, [hl]
    adc l
    ld d, b
    ccf
    pop af
    sbc h
    sbc d
    ret


    add l
    ld l, d
    cp a
    pop de
    pop bc
    inc h
    push bc
    and d
    sub [hl]
    sub b
    adc d
    sbc b
    ret nz

    sbc b
    ld h, $78
    db $e4
    ld hl, $2315
    ld c, c
    ld sp, $9b09
    ld l, d
    ldh a, [$64]
    ld b, c
    jp $9511


    inc l
    ld [hl], c
    call nc, $100c
    ld sp, hl
    add e
    sub a
    sbc b
    ld hl, $50a6
    call nz, $94cd
    cp [hl]
    ld e, h
    ld h, e
    inc [hl]
    add hl, bc
    jp $bf0e


    push hl
    ld sp, $1cad
    or a
    db $fc
    and h
    ld b, a
    sub e
    ld b, a
    ld c, b
    ld b, h
    cp b
    sub l
    ld d, l
    add hl, sp
    sub [hl]
    adc h
    add hl, hl
    ld [hl], $55
    adc l
    db $e3
    ld [hl], $3b
    jp nc, $3a19

    pop hl
    sbc b
    ld sp, hl
    and [hl]
    inc b
    xor $42
    ret z

    ld l, b
    dec d
    ld c, [hl]
    dec de
    pop bc
    ld b, d
    dec b
    db $e4
    ld h, b
    sub e
    ld a, d
    dec de
    db $fd
    and d
    ld a, c
    adc [hl]
    ld c, b
    rst $00
    adc [hl]
    ld a, e
    ld d, l
    db $e3
    xor [hl]
    xor b
    ld a, [c]
    rst $20
    ld a, [bc]
    sub h
    and a
    ld [hl+], a
    pop de
    sub l
    and [hl]
    adc e
    ld e, h
    ld l, a
    sbc c
    ldh a, [$32]
    ld [hl], l
    xor $f6
    sbc l
    ld d, b
    call c, $8a7b
    ld l, d
    sbc h
    inc e
    ld sp, $7949
    cp e
    inc d
    push af
    dec d
    ld h, $d6
    cp b
    ld [hl], c
    sbc l
    add d
    ld [hl], c
    ld b, b
    sub h

jr_00b_73b9:
    db $e4
    ld b, a
    ld c, d
    ld sp, hl
    reti


    ld d, h
    ld a, h
    ld e, b
    ld [hl], a
    cp a
    inc h
    ld l, c
    dec a
    ld [hl], $3a
    dec d
    xor d
    sub l
    jr c, @-$26

    and $5a
    inc [hl]
    xor c
    ld c, l
    jr jr_00b_73b9

    ld l, b
    push hl
    and l
    ld hl, $e068
    ld e, a
    add sp, -$14
    xor b
    jp c, $8221

    ld [hl+], a
    ld c, a
    dec l
    jr nc, jr_00b_7440

    add d
    inc a
    ld h, l
    ld h, e
    dec h
    ld h, c
    adc a
    dec c
    adc l
    and h
    sbc b
    ldh a, [$93]
    ld c, c
    ld h, $58
    ld [c], a
    sub e
    ld h, [hl]
    scf
    and l
    ld c, [hl]
    ld e, a
    push af
    dec l
    and e
    or l

jr_00b_7401:
    adc l
    db $10
    xor l
    and e
    or d
    inc d
    adc b
    inc de
    ld [hl], $d1
    ld d, b
    sub e
    or [hl]
    jr jr_00b_7438

    adc $4f
    ld bc, $32a2
    and e
    ld b, h
    xor $62
    dec a
    ld hl, $8136
    ld b, l
    ld hl, $8514
    ld c, [hl]
    inc c
    ld a, b
    add [hl]
    dec b
    jr nc, jr_00b_7401

    dec d
    add c
    ld h, $62
    inc de
    inc [hl]
    ld a, d
    add c
    ld h, $46
    and d
    ld a, [hl+]
    sub a
    add l
    dec [hl]
    adc h

jr_00b_7438:
    pop de
    sub [hl]
    ld d, c
    ld h, e
    rla
    cp $88
    adc l

jr_00b_7440:
    db $e3
    daa

Jump_00b_7442:
    ld d, l
    ld a, l
    adc h
    sub d
    sub $8e
    add a
    and b
    ld d, l
    inc [hl]
    add d
    ld d, l
    and e
    ld h, [hl]
    ld c, l
    dec de
    ld a, [$26a3]
    ld d, l
    ld b, c
    ld e, [hl]
    and h
    and l
    adc b
    sub [hl]
    ld sp, $55b5
    ld c, b
    sub l
    sbc b
    jp z, $8288

    and e
    sub [hl]
    ld e, a
    and $85
    and e
    ld a, [bc]
    ld e, d
    ld hl, $ba4e
    or l
    xor b
    jp nc, $5e7d

    add hl, sp
    daa
    db $e4
    adc l
    daa
    and [hl]
    rst $00
    ld a, [hl-]
    add l
    ld de, $a740
    inc de
    inc e
    ret z

    ld b, [hl]
    db $f4
    and [hl]
    ld l, h
    ld [hl], d
    or c
    rst $08
    ld c, d
    jr z, @+$48

    ld l, c
    ld c, b
    ld b, b
    or c
    add sp, $30
    ld l, c
    ld [de], a
    ld a, c
    inc l
    ld l, b
    add h
    sbc d
    ret


    call z, $19a1
    xor [hl]
    ld b, [hl]
    ld l, a
    sbc h
    sbc c
    sbc d
    ld b, l
    rst $38
    rst $00
    ld b, $70
    or c
    xor h
    sub c
    ld a, h
    ld [hl], b
    sbc $9a
    ld sp, $46c3
    ld l, c
    and d
    sub $a5
    ld [hl], c
    call z, $d196
    and l
    ei
    ld a, [hl]
    sbc l
    ld d, b
    and d
    ret nz

    sbc c
    jp $fefb


    ld a, b
    jr @+$48

    sub d
    ccf
    add a
    rst $20
    dec sp
    inc de
    ld c, $6c
    jp Jump_00b_7e78


    ld [hl], d
    or c
    inc d
    sub c
    xor c
    sbc d
    ld b, h
    inc d
    cp $39
    ld c, c
    add $e3
    ld a, c
    add hl, bc
    ld c, b

jr_00b_74e5:
    or c
    scf
    sub e
    inc b
    ld b, d
    ld h, a
    rrca
    db $e3
    inc de
    ld de, $96fe
    adc e
    and $b1
    sbc h
    push de
    add hl, de
    ld a, a
    pop af
    jr nc, jr_00b_753a

    add $f1
    add $a2
    rst $38
    pop af
    ld l, e
    ld b, a
    ld [hl], d
    jr z, jr_00b_74e5

    rst $38
    ld hl, sp+$50
    pop de
    or e
    inc b
    adc d
    ld h, c
    ld de, $5f18
    rst $38
    add hl, de
    cp $92
    add h
    ld d, l
    ld a, [de]
    dec h
    ld a, [hl+]
    rst $38
    ld b, [hl]
    ld [$7ff8], sp
    sbc l
    sbc l
    ld a, a
    pop de
    and e
    ld c, a
    db $fd
    dec e
    pop de
    add $d5
    sbc h
    ret nz

    ld b, h
    cp b
    push de
    ld d, l
    ld c, [hl]
    ld d, l
    and e
    ld a, [de]
    inc [hl]
    ld l, d
    sbc b
    or $a5
    inc a

jr_00b_753a:
    inc b
    xor $63
    pop bc
    db $f4
    db $ec
    sub b
    db $e3
    cp d
    and h
    add l
    ld c, [hl]
    or h

jr_00b_7547:
    ld [hl+], a
    inc h
    ld [$febf], a
    adc a
    ld b, $4f
    ld b, $53
    pop hl
    ld h, a
    ld [de], a
    sub [hl]
    and a
    inc hl
    ld b, [hl]
    ld [hl], c
    and e
    inc c
    ld de, $a9d4
    rst $18
    ld d, c
    sbc $a6
    ld a, [bc]
    sbc h
    ld l, h
    ld h, e
    ld de, $901c
    ld b, a
    sbc [hl]
    sbc h
    ld [hl], b
    inc a
    add hl, bc
    add h
    ld [hl], c
    ld c, h
    ld c, [hl]

jr_00b_7573:
    sbc l
    ld d, c
    dec [hl]
    daa
    add e
    daa
    add e
    daa
    jp nz, Jump_00b_5580

    cp a
    inc bc
    ld e, a
    db $fd
    ld c, [hl]
    rst $20
    and d
    xor e
    ld b, l
    ld d, h
    db $e4
    ld a, b
    ld a, [de]
    rlca
    db $e4
    ld l, $aa
    db $ed
    ld c, l
    sub b
    ld b, l
    ld d, l
    ld h, $21
    dec h
    ld l, e
    ld c, h
    ld e, a
    xor d
    jr nc, jr_00b_75eb

    dec l
    ld l, $f5
    ld d, d
    ld e, d
    ld sp, $42b5
    sub h
    inc d
    add $08
    add l
    inc b
    add [hl]
    inc b
    adc b
    jp nz, $284d

    ld h, d
    ld l, d
    inc d
    add hl, de
    ld d, l
    ld l, $34
    or [hl]
    and b
    ld d, [hl]
    and [hl]
    jr nc, jr_00b_7547

    ld h, e
    ld l, e
    add sp, -$7b
    adc h
    inc d
    or l
    jr c, jr_00b_75f1

    and d
    rst $10
    ld [$a321], a
    or d
    cp l

jr_00b_75ce:
    ld [hl], h
    ld a, $3c
    ld a, [de]
    add d
    adc a
    jp z, $e027

    ld l, b
    ld b, h
    ld b, b
    sbc [hl]
    ld b, d
    sub b
    adc d
    ld [hl], d
    ld h, $0c
    rst $30
    or c
    ld a, [bc]
    ld [hl], c
    jr nz, jr_00b_7573

    ld [de], a
    ld b, a
    sbc $af

jr_00b_75eb:
    add sp, -$57
    cp e
    inc d
    cp a
    rlca

jr_00b_75f1:
    pop hl
    rst $38
    add a
    ldh [$99], a
    rst $30
    and h
    ld d, l
    dec bc
    ld hl, sp+$75
    rst $08
    adc $99
    cp a

jr_00b_7600:
    jp nz, Jump_000_3fe8

    ld sp, hl
    jr nc, jr_00b_7652

    cp $69
    ld a, d
    rrca
    rst $38
    db $fc
    jr nc, jr_00b_75ce

    sub c
    pop af
    or l
    rst $38
    rst $38
    add $78
    xor [hl]
    ld [hl], b
    ld e, l
    ld e, h
    ld l, [hl]
    db $fc
    ld [hl], a
    ld a, [hl+]
    adc [hl]
    and a
    add l

jr_00b_7620:
    ld d, b
    ld d, c
    ld a, [$4480]
    cp [hl]
    ld l, l
    ld c, [hl]
    rst $28
    adc $fa
    inc a
    inc b
    ldh [$7f], a
    db $fd
    dec l
    sub e
    ld h, a
    adc e
    or [hl]
    sbc c
    inc c
    pop de
    adc l
    db $76
    ld c, $33
    ld l, [hl]
    and e
    jr c, jr_00b_7620

    and a
    and b
    ld d, d
    sub d
    dec d
    ld [hl], e
    ld l, e
    sub b
    add l
    add e
    ld hl, sp+$28
    pop hl
    or l

jr_00b_764e:
    db $fc
    ld d, e
    or [hl]
    and e

jr_00b_7652:
    db $e3
    ld [hl], a
    sbc $27
    add c
    ld e, $8e
    xor e
    add hl, de
    ld h, a
    inc d
    sub c
    jr nz, jr_00b_7600

    ld a, [$826a]
    ld h, a
    push af
    ld l, c
    and e
    jp nc, $6bb1

    inc b
    ld l, l
    ld d, h
    ld a, b
    db $10
    ld d, c
    rrca
    sbc l

jr_00b_7672:
    rla
    call nc, Call_00b_7d0a
    ld l, b
    ld d, l
    cp l
    or l
    ld d, l
    dec sp
    rst $18
    db $ec
    ld e, b
    db $ed
    ld a, b
    ld e, b
    jr jr_00b_7672

    ld d, c
    ld h, b
    ld h, e
    pop bc
    ld e, b
    ld d, b
    ld d, l
    ld d, e
    sbc c
    ld d, b
    ld [hl], h
    sbc e
    xor e
    dec de
    push hl
    dec [hl]
    ld a, b
    ccf
    ld a, [bc]
    add hl, hl
    ld l, b
    adc l
    sub a
    sub h
    pop bc
    ldh [$95], a
    db $ec
    ld [de], a
    dec d
    ld l, a
    ld b, $9e
    and [hl]
    add hl, hl
    ld c, h
    sub b
    ld b, c
    adc b
    ld h, b
    ld e, l
    ld b, c
    ld hl, $cd08
    xor d
    inc hl
    dec d
    add a
    ld [hl+], a
    ld [hl+], a
    xor d
    or h
    pop bc
    dec l
    ld a, [de]
    ld h, $b5
    adc e
    ld c, e
    and c
    ld c, e
    sub b
    ld d, d
    ld d, b
    ld d, d
    ld d, c
    ld b, [hl]
    and h
    adc e
    adc h
    jr nz, jr_00b_764e

    ld h, $81
    ld e, d
    ld a, [bc]
    ld a, [bc]
    xor b
    cp c
    ld b, l
    and h
    add hl, hl
    ld d, l
    xor b
    add sp, -$5e
    ld l, d
    ccf
    ld a, [hl-]
    sbc [hl]
    jp c, $b078

    cpl
    rst $00
    add b
    xor a
    pop af
    ldh [$bf], a
    pop af
    pop hl
    ccf
    pop af
    ld [c], a
    ret nc

    xor d
    db $fc
    ld a, [hl+]
    sbc h
    dec de
    ld d, e
    ld c, b
    cp a
    db $f4
    ld b, l
    ld b, e
    ld h, $97
    ld [$2ae9], a
    ccf
    di
    dec bc
    dec b
    sub [hl]
    call nz, $fe7f
    inc de
    rst $08
    db $fc
    dec l
    ld a, $85
    ld d, $8b
    ldh a, [$f8]
    ld a, a
    rst $38
    inc b
    cp $1f
    jp z, $4312

    rst $38
    sub b
    ldh [$df], a
    pop af
    dec l
    ret nc

    ld b, e
    ld a, [hl]
    sub l
    cp $be
    dec de
    and h
    cp a
    pop af
    sub l
    ld b, l
    rst $18
    ld hl, sp+$53
    cp h
    dec [hl]
    dec e
    inc [hl]
    ld c, l
    ld b, a
    db $ec
    ld b, b
    ld b, h
    cp [hl]
    reti


    ld c, [hl]
    push bc
    sub $fd
    jr c, jr_00b_779e

    db $eb
    and c

jr_00b_7741:
    and c
    adc l
    jp c, Jump_000_1622

    sub b
    ld d, e
    adc d
    ld [hl-], a
    add c
    ld b, d
    adc [hl]
    inc b
    add [hl]
    ld [hl+], a
    adc [hl]
    ld d, h
    ld a, [hl+]
    ld sp, $3855
    ld h, h
    or [hl]
    rra
    and h
    ld [c], a
    sub l
    ld l, a
    sbc a
    and e
    ldh a, [$6d]
    ld hl, sp-$55
    ldh [$a9], a
    rst $00
    ld a, [hl+]
    pop hl
    dec hl
    ld d, [hl]
    ld [hl], b
    dec a

jr_00b_776c:
    ld [hl+], a
    db $f4
    cpl
    ld h, $f9
    inc c
    ld d, l
    inc e
    call nc, Call_000_1355
    ld l, c
    cp [hl]
    sbc b
    inc hl
    rst $38
    rst $20
    inc c
    jp nc, Jump_00b_4f0b

    ld sp, $05cf
    dec b
    rra
    add h
    add b
    ld [hl], a
    cp [hl]
    sub l
    ld d, a
    db $eb
    ld sp, $ff5f
    push af
    ld c, [hl]
    dec [hl]
    ld e, a
    ld a, [$62a6]
    rst $18
    and e
    ld a, [de]
    cp l
    dec [hl]
    ld a, [hl]
    xor b

jr_00b_779e:
    and [hl]
    sbc b
    jp nz, Jump_000_144d

    sbc e
    ld c, h
    xor b
    ret


    add c
    adc h
    sbc b
    ret


    add c
    jr nc, jr_00b_7741

    add l
    add c
    adc l
    ld e, c
    ld l, $68
    add l
    or h
    ld l, c
    ld d, b
    ld b, d
    ld c, c
    ld h, b
    ld h, e
    add c
    add hl, bc
    ld h, $d1
    ld a, c
    ld [hl], a
    ld l, $26
    ld e, b
    dec d
    jr c, jr_00b_776c

    add hl, hl
    ld d, a
    and d
    jp hl


    ld d, [hl]
    sub d
    add hl, de
    ld e, b
    ld d, h
    ld d, l
    ld [hl], $a4
    or [hl]
    scf
    sub b
    ld c, h
    db $10
    and d
    inc h
    rst $18
    push de
    dec b
    jr c, jr_00b_77f1

    adc c
    ld h, d
    sub c
    ld h, e
    ld e, b
    db $10
    ld [hl], a
    adc e
    ld d, l
    ld c, b
    ld c, c
    add c
    add e
    ld h, $22
    ld h, e
    ld c, c

jr_00b_77f1:
    ld hl, sp+$59
    dec b
    ld a, [$6222]
    ld [c], a
    ret c

    ld d, c
    add d
    jr c, @-$6d

    add e
    dec b
    adc b
    ld [hl], e
    ld d, $90
    jp z, Jump_000_154e

    cp [hl]
    and l
    ld [$c5b8], sp
    dec l
    ld a, [hl+]
    ld d, b
    ld c, h

jr_00b_780f:
    ld e, d
    ld b, $30
    and h
    db $dd
    ld d, [hl]
    inc [hl]
    adc h
    jr jr_00b_7833

    dec [hl]
    adc [hl]
    dec b
    ld c, b
    ld c, h
    ld h, d
    ld e, b
    jr @-$1e

    add c
    ld l, d
    ld c, b
    ld c, c
    xor b
    sbc c
    inc sp
    ld b, l
    jr c, jr_00b_7845

    adc e
    sub b
    ld l, c
    ld c, [hl]
    inc [hl]
    ld d, e
    adc c

jr_00b_7833:
    inc sp
    ld b, d
    ld e, b
    ld e, h
    dec hl
    ld [$38cd], sp
    ld h, e
    ld l, c
    dec hl

jr_00b_783e:
    xor b
    ld d, b
    adc e
    adc [hl]
    ld b, h
    inc h
    push de

jr_00b_7845:
    dec b
    inc b
    xor c
    ld [$38c2], sp
    pop de
    and l
    ld [hl-], a
    or [hl]
    ld h, h
    ld d, b
    add [hl]
    dec h
    add hl, sp
    ld l, d
    sub l
    and l
    jr nc, jr_00b_780f

    and c
    ld d, d
    ld [hl+], a
    ld d, h
    pop hl
    ld a, b
    cp d
    sbc [hl]
    ld d, d
    sub h
    cp c
    jr nc, jr_00b_78ba

    pop de
    ld a, b
    jp c, Jump_00b_519e

    or h
    cp d
    jp nc, $d56b

    ld d, l
    ld a, [$2a39]
    push af
    db $e3
    jr jr_00b_783e

    xor d
    and e
    or [hl]
    xor b
    adc $7d
    ld a, [hl+]
    ld a, [hl+]
    and [hl]
    adc d
    ld c, d
    sbc h
    add sp, -$50
    jp nz, Jump_00b_64fc

    sub c
    ld e, a
    and a
    inc a
    ld h, b
    rst $38
    add hl, de
    push hl
    ld h, h
    ld d, l
    inc h
    and [hl]
    ld [hl], c
    add e
    rst $38
    ld a, [de]
    reti


    add hl, de

jr_00b_789b:
    adc l
    ld l, a
    and $69
    cpl
    db $fc
    ld [hl], b
    ld e, a
    ld l, d
    adc d
    xor e
    ld e, b
    add hl, hl
    ld c, b
    ld hl, $ff7f
    inc e

jr_00b_78ad:
    sub a
    ld [$bea4], a
    and c
    ld b, h
    dec h
    rst $18
    rst $00
    ld b, l
    rst $38
    add sp, $5f

jr_00b_78ba:
    jp $0443


    adc e
    db $e4
    cp c
    add hl, hl
    jp Jump_00b_5405


    rra
    ld sp, hl
    and [hl]
    rst $38
    or h
    jr z, @+$46

    ret


    bit 3, a
    ld [$f896], a
    ld a, [hl]
    xor e
    inc h
    jr nc, @-$4d

    ret


    ld a, a
    rst $38
    ld d, l
    rst $38
    ld b, c
    ld a, a
    pop bc
    db $10
    sub e
    ld sp, $7fc9
    db $10
    sub c
    ld b, b
    cp $d0
    jr z, jr_00b_789b

    jr jr_00b_78ad

    inc e
    ld [hl], b
    ld b, c
    xor a
    db $10
    rst $38
    cp $1f
    inc b
    sub a
    daa
    ld [bc], a
    ld [de], a
    rst $38
    cp l
    db $10
    pop bc
    ld e, a
    ld hl, sp+$7e
    cp d
    ld h, c
    ld [bc], a
    ld h, h
    jp nz, Jump_000_0fd1

    ld a, a
    and $1f
    add l
    ld d, l
    ld sp, hl
    call nz, $d1c0
    cpl
    rrca
    ld sp, hl
    sub h
    ld d, d
    add hl, bc
    add hl, bc
    or e
    inc bc
    inc d
    pop af
    jr @+$7e

    or l
    ld c, b
    ld a, d
    sub a
    ld de, $6826
    ld a, [$c4ab]
    db $e3
    add a
    rla
    scf
    ld a, [$489c]
    ld sp, hl
    dec l
    ld c, d
    ld c, $47
    sbc d
    ld e, a
    rst $38
    ld [hl+], a
    add h

jr_00b_7938:
    ld h, a
    ld hl, sp-$4f
    ld d, a
    sub c
    ld a, [$b96e]
    ld c, b
    ld b, l
    ret nz

    db $e3
    pop de
    add e
    ld l, e
    ld a, a
    xor c
    adc h
    ld b, l
    db $e4
    ret z

    ld b, [hl]
    rra
    sub $60
    jp Jump_00b_5783


    cp $a6
    ld [hl], h
    jr nc, @+$45

    inc de
    rlca
    sub e
    and h
    db $e4
    ld h, c
    push bc
    push de
    ld [$026b], a
    ld sp, $e435
    jp c, Jump_00b_7ce4

    ld l, l
    ld e, [hl]
    and e
    jr jr_00b_7938

    ld [hl], a
    ld l, b
    cp b
    rst $10
    ld [hl], c
    rst $00
    ld e, [hl]
    and a
    inc e
    jr @+$46

    ld h, c
    dec e
    ld d, l
    ld c, c
    ldh a, [$60]
    ld b, h
    cp d
    dec de
    dec sp
    jr @+$3a

    db $eb

jr_00b_7987:
    ld c, b
    and e
    and l
    pop de
    adc [hl]
    and l
    ld [hl+], a
    dec sp
    reti


    ld d, e
    adc c
    rst $38
    call nc, Call_00b_4c89
    ld e, a
    call nc, $2e5e
    call nc, $c618
    ret nc

    xor [hl]
    adc h
    and $14
    jp z, $e0d4

    add l
    inc [hl]
    and d
    inc de
    ld b, h
    ldh [$57], a
    ret z

    ld d, l
    ld d, b
    ld b, l
    adc h
    sbc a
    and c
    or [hl]
    ld l, h
    adc b
    jr jr_00b_7987

    push de
    ld [hl], d
    dec hl
    push de
    ld l, b
    jp c, Jump_000_3daa

    sbc c
    db $ec
    rst $00
    ld a, e
    rst $00
    ld l, [hl]
    ld a, [de]
    db $76
    cp [hl]
    sbc l
    or d
    rst $00
    ld d, d
    ld a, [$5da7]
    ld a, a
    sbc l
    sbc d
    add hl, bc
    or d
    sbc d
    rst $38
    and a
    ld c, d
    rst $38
    ld a, [$a172]
    ld d, a
    db $fc
    ld [hl], d
    or b
    inc a
    inc a
    ld [hl], c
    inc [hl]
    ld h, e
    rra
    inc e
    ld h, [hl]
    cp c
    inc d
    dec sp
    rst $38
    dec b
    ld c, a
    dec b
    call c, Call_00b_4855
    xor e
    call nc, Call_000_2ef0
    db $eb
    sub l
    ld h, $b9
    ld hl, $97e2
    cp a
    ld d, l
    ld [hl+], a
    push af
    ld [$bfea], a
    call nc, Call_000_2126
    ld h, d
    ld a, [hl+]
    ld c, c
    xor d
    push af
    ld a, [de]
    ld e, h
    ld a, a
    ld c, c
    xor e
    ld c, $4c
    ld l, $ae
    and h
    ld d, [hl]
    or h
    rla
    ld l, e
    and h
    ld d, h
    dec hl
    db $dd
    ld b, $4a
    ld d, b
    ld c, b
    ld b, d
    ld a, [de]
    ld l, d
    sub [hl]
    ld a, [$a615]
    ld d, a
    ld d, h
    ret


    ld hl, $ba08
    pop hl
    ld c, h
    ld a, [$58a9]
    or l
    xor d
    add hl, de
    ld d, d
    ld h, b
    ld a, d
    ld a, l
    ld a, [bc]
    ld a, [bc]
    jr nc, @-$70

    ld e, d
    xor l
    ld a, [de]
    ld [$9460], sp
    db $e3
    ld b, c
    add hl, sp
    ld l, b
    dec d
    sbc c
    ld d, h
    push de
    pop bc
    inc sp
    ld d, l
    dec l
    rlca
    ld a, [c]
    inc a
    inc a
    sub $52
    sub l
    add d
    bit 6, b
    jp hl


    sub [hl]
    and e
    ld c, d
    dec b
    inc b
    ld a, [hl+]
    ld [hl-], a
    sub b
    ld d, b
    ld d, e
    call nz, Call_00b_6578
    add c
    ld b, e
    ld [$8d86], sp
    inc h
    ld [de], a
    add hl, de
    ld hl, $6192
    and c
    add [hl]
    sbc h
    jr nz, @-$72

    xor b
    add h
    ld d, c
    xor c
    ld c, l
    db $10
    ld c, c
    ld a, d
    ld [$8ac2], sp
    and b
    ld d, [hl]
    db $db
    dec b
    adc c
    ld e, [hl]
    ldh a, [$c6]
    ld e, b
    ld [hl+], a
    push de
    ld d, h
    ld a, $05
    sub b
    add sp, $15
    cp $81
    adc b
    ld h, c
    ld e, d
    adc e
    xor d
    add d
    db $eb
    ldh [rIE], a
    ld [$7a21], a
    add d
    ld h, $ae
    inc [hl]
    and d
    ld d, [hl]
    ld hl, $5f43
    and e
    dec sp
    ld c, l
    xor l
    ld b, d
    ld a, a
    jp $8ffe


    ld b, $81
    rst $38
    ld a, [$2e3e]
    ld [hl], d

Jump_00b_7abd:
    ld hl, $3449
    add hl, hl
    pop hl
    ld d, d
    ld b, d
    ld a, [hl+]
    xor d
    ldh [$98], a
    and a
    ld c, e
    db $fd
    ld d, l
    ld e, a
    xor $4e
    ld de, $2368
    ld h, $8c
    sbc d
    rst $10
    db $10
    add h
    ld b, [hl]
    add e
    jr jr_00b_7b1c

    sub a

jr_00b_7add:
    inc b
    sbc e
    ld b, d
    sbc b
    call nc, Call_000_0912
    or e
    db $f4
    ld b, d
    ld b, l
    db $10
    ret z

    ld h, l
    and d
    pop bc
    ld c, $60
    call nc, $195a
    dec e
    ld b, e
    ld h, $3b
    inc de
    sub l
    ld de, $a118

jr_00b_7afb:
    sbc b
    inc hl
    ld d, $82
    ld h, c
    ld [bc], a
    sub c
    or [hl]
    adc h
    add h
    and a
    inc l
    sbc c
    or a
    ld l, l
    inc b
    ld d, h
    ld [hl], d
    ld hl, $b099
    ld sp, hl
    jr nc, jr_00b_7add

    dec l
    ld [bc], a
    sbc c
    or h
    add hl, bc
    add d
    cp $f0
    ld h, h

jr_00b_7b1c:
    jr nz, @-$02

    jr @+$54

    pop de
    adc d
    xor [hl]
    xor a
    rst $38
    ld d, l
    ld h, b
    db $e3
    adc h
    ld a, [hl+]
    inc d
    ld l, a
    rst $38
    ld e, h
    ld h, b
    sub c
    pop hl
    and e
    add hl, hl
    res 0, d
    jr nc, jr_00b_7b9c

    or e
    ld b, e
    inc de
    push hl
    ld sp, $cca5
    add d
    jr nc, jr_00b_7afb

    add hl, bc
    sub a
    ld b, $28
    inc l
    ld h, l
    ld [de], a
    pop bc
    rst $38
    db $fc
    cp $61
    ld b, h
    cp l
    inc bc
    jr jr_00b_7b96

    ccf
    rst $38
    ld d, d
    db $f4
    ld h, b
    sub e
    ld a, d
    ld b, l
    add h
    ld h, c
    push de
    ld d, d
    dec hl
    pop af
    ld a, [hl+]
    ld de, $0c29
    ld d, h
    sbc h
    inc [hl]
    ld a, [hl+]
    ld sp, $466b
    ld l, h
    ld sp, $12c7
    xor [hl]
    ld de, $e7c0
    dec b
    ld hl, $f4ff
    ld a, c
    ld de, $60f2
    ld a, [$d05b]
    and $7f
    cp $0a
    ret z

    ld hl, $7b8e
    jr nc, jr_00b_7b8b

    ld hl, $7b93

jr_00b_7b8b:
    jp Jump_000_3c49


    rla
    ld [hl+], a
    ld e, l
    ld [hl+], a
    ld d, b
    rla
    jr c, jr_00b_7bf3

jr_00b_7b96:
    ld [hl+], a
    ld d, b
    nop
    nop
    nop

jr_00b_7b9b:
    nop

jr_00b_7b9c:
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, jr_00b_7c05

    inc b
    ld [de], a
    nop

jr_00b_7bab:
    rla
    ld [bc], a
    dec d
    nop
    rla
    nop
    dec d
    ld bc, $0416
    inc de
    nop
    dec d
    inc b
    cp d
    jr nz, jr_00b_7b9b

    add d
    ld [hl], l
    nop
    ldh [rP1], a
    rst $20
    ld b, b
    xor b

jr_00b_7bc4:
    nop
    add sp, $20
    ld c, b
    inc b
    cp d
    jr nz, jr_00b_7bab

    add d
    ld [hl], l
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    cp d
    jr nz, @-$1f

    add d
    ld [hl], l
    nop
    rlca
    nop
    push hl
    ld bc, $0416
    inc de
    nop
    dec d
    nop
    xor b
    jr nz, @-$36

    add b
    ld l, b
    nop
    add sp, $00
    add sp, $40

jr_00b_7bf3:
    xor b
    nop
    add sp, $20
    ld c, b
    nop
    xor b
    jr nz, jr_00b_7bc4

    add b
    ld l, b
    nop
    rst $20
    nop
    ldh [rSTAT], a
    xor [hl]
    inc b

jr_00b_7c05:
    ei
    jr nz, jr_00b_7c65

    inc b
    ld [de], a
    nop
    rla
    ld [bc], a
    dec d
    nop
    rst $20
    nop
    dec b
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, jr_00b_7c75

    inc b
    cp d
    jr nz, @-$1f

    add d
    ld [hl], l
    nop
    rst $28
    nop
    push af
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, jr_00b_7c85

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_7c65:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_7c75:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_7c85:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00b_7ce4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00b_7d0a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_00b_7d8e

jr_00b_7d8e:
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    jr c, jr_00b_7d96

jr_00b_7d96:
    nop
    nop
    nop

jr_00b_7d99:
    nop
    db $fc
    jr nc, jr_00b_7d99

    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld d, b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    ld a, [$cf92]
    ld hl, $d173
    ld bc, $002c
    call Call_000_3a87
    ld a, [$d0e0]
    ld b, a
    ld c, $04

jr_00b_7e2a:
    ld a, [hl+]
    cp b
    jr z, jr_00b_7e33

    dec c
    jr nz, jr_00b_7e2a

    and a
    ret


jr_00b_7e33:
    ld hl, $7e3b
    call Call_000_3c49
    scf
    ret


    rla
    adc b
    ld b, b
    ld a, [hl+]
    ld d, b
    ld de, $a203
    ld hl, $a187
    call Call_00b_7e7d
    call Call_00b_7e55
    ld de, $a38b
    ld hl, $a30f
    call Call_00b_7e7d

Call_00b_7e55:
    ld b, $03

jr_00b_7e57:
    ld c, $1c

jr_00b_7e59:
    push bc
    ld a, [de]
    ld bc, $ffc9
    call Call_00b_7e97
    ld a, [de]
    dec de
    swap a
    ld bc, $0037
    call Call_00b_7e97
    pop bc
    dec c
    jr nz, jr_00b_7e59

    dec de
    dec de
    dec de
    dec de
    ld a, b
    ld bc, $ffc8
    add hl, bc

Jump_00b_7e78:
    ld b, a
    dec b
    jr nz, jr_00b_7e57

    ret


Call_00b_7e7d:
    ld a, $1c
    ldh [$8b], a
    ld bc, $ffff

jr_00b_7e84:
    ld a, [de]
    dec de
    swap a
    call Call_00b_7e97
    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_00b_7e84

    dec de
    dec de
    dec de
    dec de
    ret


Call_00b_7e97:
    push hl
    and $0f
    ld hl, $7ea8
    add l
    ld l, a
    jr nc, jr_00b_7ea2

    inc h

jr_00b_7ea2:
    ld a, [hl]
    pop hl
    ld [hl-], a
    ld [hl], a
    add hl, bc
    ret


    nop
    inc bc
    inc c
    rrca
    jr nc, @+$35

    inc a
    ccf
    ret nz

    jp $cfcc


    ldh a, [$f3]
    db $fc
    rst $38
    xor a
    ld hl, $cd6d
    ld [hl+], a
    ldh a, [$f3]
    and a
    ld a, [$d022]
    jr z, jr_00b_7ec8

    ld a, [$cff3]

jr_00b_7ec8:
    add a
    ldh [$98], a
    xor a
    ldh [$95], a
    ldh [$96], a
    ldh [$97], a
    ld a, $64
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$98]
    ld [hl+], a
    ldh a, [$99]
    ldh [$98], a
    ld a, $0a
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$98]
    swap a
    ld b, a

Jump_00b_7ef0:
    ldh a, [$99]
    add b
    ld [hl], a
    ld de, $cce7
    ld c, $03
    ld a, $0b
    call Call_000_3e6d
    ld hl, $7f04
    jp Jump_000_3c49


    rla
    ld a, [hl]
    ld c, c
    dec h
    ld d, b
    ld a, [$c102]
    and $08
    jr z, jr_00b_7f2e

    ld b, $45
    ld a, $1c
    call Call_000_3e6d
    ld a, b
    and a
    ld b, $33
    jr z, jr_00b_7f26

    ld hl, $d5a4
    ld a, [hl+]
    or [hl]
    jr nz, jr_00b_7f2e

    ld b, $32

jr_00b_7f26:
    call Call_000_3c3c
    ld a, b
    call Call_000_3ef5
    xor a

jr_00b_7f2e:
    ld [$cd3d], a
    ret


    rla
    ld e, e
    ld c, e
    ld [hl+], a
    ld d, b
    rla
    ld [hl], l
    ld c, e
    ld [hl+], a

Call_00b_7f3b:
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
