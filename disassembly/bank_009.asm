; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    ld [hl], a
    cp e
    ld d, l
    ld a, l
    inc a
    dec h

jr_009_4006:
    ld c, h
    rst $18
    xor d
    push hl
    inc a
    ld a, [bc]
    sbc d
    ld d, l
    ld d, [hl]
    jp z, Jump_009_5250

    sub a
    rst $38
    ld d, e

Jump_009_4015:
    add l
    or h
    add hl, hl
    daa
    db $eb
    sub [hl]
    ld [hl+], a
    dec d
    ld a, d
    db $30, $93
    dec bc
    push af
    xor e
    ld [hl], h
    ld h, b
    ld c, b
    sub b
    sub d
    ld a, a
    jp hl


    add hl, hl
    ld h, d
    ld l, a
    ld c, b
    ld d, c
    or d
    dec h
    or a
    add d
    inc b
    adc b
    ld de, $d6a2
    and e
    ld [$a8c2], sp
    ld [de], a
    or b
    or l
    ldh [$86], a
    ld h, $25

Jump_009_4043:
    or l
    dec b
    db $30, $9c
    cp b
    and [hl]
    and d
    ld h, a
    ld e, $08
    ld [de], a

jr_009_404e:
    ret nc

    adc e
    and h
    sub [hl]
    ld sp, $3882
    ld [c], a
    db $20, $88
    adc l
    ld de, $554e
    push af
    ld a, [hl+]
    ld a, [hl-]
    ld e, d
    ld sp, $3b4c
    sub b
    ld c, b
    ld h, c
    ld c, [hl]
    ld c, b
    adc b
    jp nz, $a674

    pop de
    ld c, b
    ld e, c
    jr jr_009_404e

    ld c, d
    adc e
    ld a, [hl]
    dec l
    ld [$0663], sp
    and c
    ld c, h
    db $10

jr_009_407b:
    ld l, b
    adc d
    ld [$2ab5], sp
    ld hl, $a2b5
    jr nz, jr_009_4006

    ld c, b
    ld [hl], l
    sbc d
    ld hl, $1752
    ld c, h
    ld [de], a
    ld d, d
    ld [$2616], a
    ld hl, $25ff
    and d
    ld [hl], $18
    or a
    ld l, c
    ld h, d
    ld [hl], h
    inc d
    sub $0b
    add l
    adc h
    ld d, [hl]
    inc d
    db $d3
    sub d
    add hl, de
    dec sp
    ld a, [hl]
    and e
    add d
    inc b
    adc b
    ld d, $68
    inc e
    sub [hl]
    ld h, $30
    adc [hl]
    dec [hl]
    ld b, c
    call nc, $508e
    ld a, [c]
    ld e, [hl]
    ld a, [bc]
    inc b
    sub l
    adc d
    ld c, [hl]
    inc e
    ld [hl], b
    rst $20
    add d
    dec bc
    ld b, [hl]
    add hl, de
    and l
    ld b, [hl]
    ld d, d
    ld h, $37
    or [hl]
    sub [hl]
    ld b, c
    add $2a
    dec h
    dec d
    inc b
    ld h, [hl]
    sub d
    sbc b
    db $dd

jr_009_40d6:
    dec d
    dec b
    add $38
    ld h, d
    ld de, $8e88
    dec h
    ld a, [de]
    ld a, [bc]
    ld b, d
    ld b, d
    pop de
    adc l
    ld a, a
    and b
    adc [hl]
    ld a, [hl-]
    jr nc, jr_009_407b

    sbc b
    jr z, jr_009_40fe

    db $d3
    ld e, b
    ld d, e
    or [hl]
    sub l
    ld e, b
    jr z, jr_009_411b

    dec hl
    ld d, l
    inc a
    ld sp, hl
    dec d
    xor e
    rst $08
    ld b, d

jr_009_40fe:
    ld l, [hl]
    ld e, b
    ld d, e
    ret nc

    and l
    ld d, [hl]
    inc hl
    db $76
    xor d
    add hl, hl
    add sp, $3f
    ld e, h
    rst $00
    adc e
    add hl, hl
    add hl, bc
    ld [hl-], a
    or c
    add hl, sp
    add e
    add d
    rst $00
    inc a
    add l
    ld a, e
    push af
    jp hl


    and l

jr_009_411b:
    push bc
    ld d, d
    ld h, e
    ld c, d
    ld [hl-], a
    ld a, [bc]
    add h
    xor b
    pop bc
    or h
    ld [$b5c0], sp
    jr nz, jr_009_40d6

    ld e, h
    ld h, b
    and e
    ld d, b
    ld d, b
    jp $a1c8


    ld b, $33
    ld b, a
    ld a, [hl+]
    ld e, d

Jump_009_4137:
    ld l, $94
    sub b

jr_009_413a:
    sub l
    ld d, h
    ld a, [bc]
    ld d, e
    ld d, l
    ld a, [$f192]
    add h
    and h
    ld b, [hl]
    ld [de], a
    ld d, d
    ld h, l
    rla
    dec a
    ld de, $411a
    db $e4

jr_009_414e:
    and d
    or c
    ld d, b
    ld d, c
    ld d, c
    xor [hl]
    adc e
    add hl, de
    cp [hl]
    ld b, d
    inc c
    ld a, [hl+]
    ld d, d
    ld [hl], e
    ld [hl-], a
    ld de, $c497
    inc l
    dec c
    push hl
    daa
    ld a, [bc]
    push bc
    add $38
    ld c, c
    ld a, [bc]
    rrca
    or c
    ld e, [hl]
    ld b, h
    ld d, d
    call nc, Call_000_1867
    dec sp
    pop af
    db $10
    ld a, h
    ld [de], a
    jp Jump_009_4043


    sbc l
    ld l, d
    pop de
    ld a, b
    ld c, b
    ld h, $2a
    ld e, l
    inc d
    rst $38
    xor d
    ld h, h
    add [hl]
    and [hl]
    ld d, c
    add d
    jp Jump_009_4015


    pop bc
    sub e
    ld a, [bc]
    ld h, b
    pop de
    ld [de], a
    ld c, [hl]
    adc d
    adc d
    db $10
    jr nz, @-$38

    inc d
    ld h, c
    ld l, $9b
    or c
    dec hl
    adc d
    xor b
    ld d, h
    ld c, d
    ld c, [hl]
    ld d, [hl]
    inc sp
    inc e
    jr z, jr_009_4212

    db $10
    ld hl, $71a1
    inc l
    jp z, $be3b

    ld d, d
    sbc e
    jr nz, jr_009_413a

    xor c
    inc e
    sbc b
    inc hl
    adc e
    dec b
    call c, Call_000_1144
    pop bc
    jr nz, jr_009_414e

    ld a, e
    pop de
    ld [hl], c
    ld [hl-], a
    add h
    adc e
    ld a, e
    xor d
    ld de, $04b5
    ld b, d
    ld d, $e9
    ld a, [hl-]

jr_009_41d0:
    or c
    ld [$106a], sp
    ld l, l
    ld l, b
    ld d, c
    call nz, $0a82
    ld a, [bc]
    ld l, a
    add e
    ld l, a
    ld b, h
    add hl, sp
    jp z, $a598

    inc h
    cp c
    rra
    ld d, h
    cp l
    ld b, a

jr_009_41e9:
    ld [hl], h
    and e
    ld a, l
    ld l, b
    call nz, $c438
    and a
    add c
    ld d, l
    rla
    ld c, c
    ld d, $2f
    rst $20
    sbc l
    ld h, b
    and e
    ld e, $9d
    and l
    daa
    and a
    ld d, l
    ld [de], a
    ld b, h
    or [hl]
    ld [hl], h
    and a
    ld e, d
    adc [hl]
    ld c, e
    rst $30
    ld [hl], h
    dec d
    ld sp, $1575
    add sp, -$58
    ld [c], a

jr_009_4212:
    xor d
    and c
    or l
    add c
    dec b
    dec [hl]
    or [hl]
    ld d, h
    sub h
    sbc d

jr_009_421c:
    inc d
    jr jr_009_41e9

    and c
    xor d
    add l
    ld d, h
    adc d
    inc [hl]
    ld d, c
    ld d, c
    ld e, d
    ld h, $95
    inc sp
    ld a, d
    add l
    adc l
    and h
    or a
    add c
    ld d, $32
    ld c, l
    xor a
    pop bc
    pop bc
    ld d, h
    add sp, $50
    adc d
    sub h
    jr @+$14

    sub e
    dec d
    ld hl, $461a
    pop de
    and l
    adc l
    rla
    ld e, e
    ld d, d
    jr nz, jr_009_41d0

    dec [hl]
    cp d
    ld a, [hl+]
    sbc h
    ld d, $a0
    xor c
    add hl, sp
    ld l, d
    and e
    call z, $eddc
    ld d, h
    ld [hl], c
    and d
    and d
    ei
    ld d, c
    rst $00
    ld c, [hl]
    db $10
    ld d, b
    ret


    and d
    cp c
    ld [hl], $8a
    pop de
    add hl, hl
    sbc h
    ret c

    inc l
    scf
    db $e4
    add hl, hl
    jp nz, $2ad8

    db $fd
    cp $9b
    ld [hl], h
    cpl
    ld d, h
    ld e, l
    ld a, [hl]
    ld l, c
    xor a
    dec e
    ld c, l
    ld d, c
    reti


    jr nz, jr_009_421c

    ld b, a
    ld h, $3b
    sub [hl]
    and a
    inc de
    dec c
    adc e
    sub d
    and a
    ld b, $d4
    inc [hl]
    add l
    or e
    jp z, $b29c

    ret nz

    sub a
    inc e
    ret nc

    rst $00
    sbc b
    ld [hl], a
    cp b
    dec d
    inc [hl]
    ld d, h
    inc d
    ldh a, [$5f]
    cp d
    db $e4
    add [hl]
    sbc $aa
    and e
    add c
    db $f4
    call $81e1
    ld b, $2a
    ld a, [hl+]
    dec d
    scf
    and e
    ld e, c
    ld sp, $504a
    ld d, b
    add c
    sbc a
    call nc, Call_009_7e85
    and e

jr_009_42be:
    ld b, a
    adc h
    ld [de], a
    ld a, a
    ld b, d
    ld b, e
    ld h, h
    dec d
    add [hl]
    cp d
    sbc d
    and e
    dec d
    sub e
    jr z, @-$75

    ld h, b
    db $fd
    jp hl


    xor a
    add sp, $6a
    sbc b
    db $10
    adc d
    ld [hl], h
    inc de
    ld b, $18
    adc $66
    ld a, [hl]
    xor d
    xor b
    ld e, $88
    ld c, b
    and b
    and e
    inc b
    inc a
    ld [c], a
    and d
    ld l, d
    and h
    ld d, d
    and d
    inc d
    push bc
    ld [$9352], sp
    ld a, [de]
    ld b, d
    ld a, [de]
    add [hl]
    ld h, $30
    sub e
    inc [hl]
    jr z, jr_009_42be

    ld d, b
    ld e, c
    ld [$4216], sp
    and e
    add [hl]

jr_009_4303:
    ld [hl], $92
    ld l, a
    and $8b
    ret


    db $dd
    ld a, [hl+]
    ld [hl+], a
    ld [hl], $5f
    add l
    add c
    ld e, d
    dec b
    and b
    ld e, c
    ld b, d
    add [hl]
    dec h
    ld d, c
    ld c, d
    and e
    ld e, a
    ld l, c
    daa
    db $f4
    adc d
    ld e, b
    ld h, $62
    ld d, e
    dec [hl]
    ld hl, $9488
    add l
    ld hl, $2a94
    ret nc

    ld d, b
    db $db
    ld d, h
    inc hl
    ld h, [hl]

Call_009_4331:
    and l
    xor c
    ld a, [de]
    adc h
    cp b
    ld d, $94
    rra
    xor e
    call nc, $04d9
    ldh [rRP], a
    add a
    sub l
    ld b, $2a
    adc b
    add [hl]
    jr c, jr_009_439f

    ret


    jr jr_009_4303

    jr c, jr_009_439f

    ld a, [hl+]
    ld h, $67
    pop bc
    ld b, c
    sub c
    ld d, h
    ld h, e
    add l
    ld hl, $7835
    add l

jr_009_4359:
    adc b
    sbc c
    add hl, hl
    ld [hl], d
    ld [hl+], a
    xor $a4
    add [hl]
    inc sp
    and e
    add hl, sp
    ld d, [hl]
    or h
    ld [hl+], a
    ld de, $d19f
    xor b
    ld [hl], $32
    ld e, [hl]
    jr c, jr_009_438f

    ld h, c
    xor b
    sub h
    adc d
    jr c, jr_009_4359

    sbc c
    dec d
    ld c, h
    ld d, b
    ld b, l
    adc a

jr_009_437c:
    dec d
    push bc
    ld hl, $2256
    adc b
    ld c, a
    ld [de], a
    ldh a, [$65]
    sub c
    call z, $c253
    ld e, a
    adc b
    ld d, h
    inc e
    sub l

jr_009_438f:
    ld hl, $9f3b
    and d
    dec a
    ld a, [bc]
    pop hl
    ld e, b
    ld l, c
    ld d, e
    or [hl]
    rst $38
    ret nc

    ld h, b
    xor l
    ld l, b

jr_009_439f:
    di
    ld l, l
    ld l, d
    jr c, @+$79

    add b
    sbc [hl]
    inc l
    and h
    add hl, hl
    pop bc
    dec e
    db $ec
    ld b, d
    ld a, [bc]
    ld l, b
    jp $12c7


    ld h, a
    add $30
    and l
    ld h, e
    ld c, c
    ld a, [bc]
    add hl, bc
    xor d
    ld h, [hl]
    add $09
    inc c
    ccf
    db $eb
    ld de, $eaee
    dec hl
    ld a, [bc]
    ld de, $649a
    sbc b
    ld a, a
    add a
    ld a, l
    ld a, d
    inc sp
    db $e4
    ld d, b
    ld d, c
    add h
    ld [hl-], a
    ld e, e
    add d
    ld b, [hl]
    ld b, e
    ld b, e
    ld h, b
    ld hl, sp+$74
    xor l
    ld a, d
    ld b, d
    sub c
    xor e
    sbc b
    call Call_000_2498

jr_009_43e5:
    and e
    ld b, l
    ld e, d
    xor b
    jr nz, jr_009_437c

    ld h, h
    and h
    call nz, $82d6
    ld c, [hl]
    ld h, e
    ld b, c
    ld h, e
    pop bc
    ld b, $c4
    inc h
    inc h
    ld e, b
    ld c, h
    ld c, l
    inc [hl]
    add hl, bc
    ld [$1cda], sp
    adc d
    adc [hl]
    inc d
    ld h, c
    rlca
    ld b, a
    ld h, $94
    cp h
    db $fc
    ld b, h
    ld b, d
    inc e
    add hl, bc
    ld a, d
    ld h, b
    sbc b
    jr nc, @+$2e

    ld b, e
    ret z

    ld a, h
    ld b, l
    inc h
    ld hl, $282c
    xor c
    sub l
    jr jr_009_43e5

    ld [hl], b
    jp nz, $8ab4

    jr nc, jr_009_4446

    xor a
    ld hl, $241b
    or h
    add hl, bc
    sub e
    ld [bc], a
    ld b, l
    inc hl
    pop hl
    or [hl]
    call $ca46
    pop bc
    adc l
    inc e
    dec hl
    ld b, b
    xor a
    push af
    ld b, c
    ld h, $f1
    ld de, $3282
    jr nc, @+$23

    ld c, d
    ret nc

jr_009_4446:
    ld d, l
    inc b
    dec c
    ld e, h
    ld l, b
    call nz, $91b6

Jump_009_444e:
    ld l, b
    call nz, Call_009_50e4
    jp z, $9c8a

    ld c, c
    ld c, $46
    dec c
    ld b, h
    and c
    xor c
    add h
    ld l, b
    xor c
    cp h
    ld d, h
    ld c, l
    inc b
    call nc, $985a
    ld l, d
    ldh a, [rNR52]
    xor c
    xor l
    ld b, b
    add d
    ld h, h
    or l
    inc hl
    ld d, b
    add $d1
    jp Jump_000_1041


    xor [hl]
    db $e4
    or c
    ld d, c
    ld [c], a
    ld d, [hl]
    adc $8b
    ld b, b
    and l
    or c
    pop hl
    xor b
    and e

Call_009_4484:
    sbc c
    cp c
    db $e3
    jp nc, $fa83

    add h
    xor d
    and a
    add h
    add [hl]
    or b
    xor d
    push af
    ld l, [hl]
    inc c
    add hl, bc

jr_009_4495:
    rst $18
    dec a
    cpl
    and c
    ld d, b
    dec l
    jp $7806


    dec c
    ld d, b
    inc h
    dec hl
    ld b, a
    and c
    ld d, c
    ret z

    ld b, h
    cp b
    sub h
    sub a
    ret c

    ret


    db $f4
    or a
    xor d
    ld hl, sp-$2b
    ld b, [hl]
    sub a
    cp b
    ld h, c
    adc b
    sub e
    dec [hl]
    cp l
    add d
    pop bc
    adc b
    ld a, a
    adc h
    ldh [$61], a

jr_009_44c0:
    ld b, l
    db $fd
    ld e, b
    sub [hl]
    ld [hl-], a
    ld d, d
    sub b
    sbc c
    ld b, c
    ld c, c
    call $aad2
    ld a, d
    xor d
    scf
    ld c, h
    ld h, d

jr_009_44d2:
    ld [de], a
    db $d3
    dec d
    adc b
    ld h, e
    ld [$a485], sp
    call $4bab
    ld a, a
    sub $8c
    sub h
    sub h
    ld [de], a
    ld l, h
    ld d, l
    jr c, jr_009_453c

    ld sp, hl
    ld h, c
    ld h, d
    inc h
    adc $98
    db $10
    sub h
    add [hl]
    jr nc, jr_009_4495

    add hl, hl
    ld h, d
    xor d
    ld a, $43
    db $76
    daa
    ld a, [hl-]
    add d
    dec c
    ld e, c
    and l
    ld de, $0293
    add d
    cpl
    sbc c
    ld d, e
    db $e4
    jr nz, jr_009_44d2

    sub e
    add $95
    ld a, [bc]

Call_009_450c:
    ret nc

    ld c, l
    inc e
    ld [$422d], a
    and l
    and [hl]
    ld c, h
    ld b, d
    sub d
    ret nc

    ld a, [hl-]
    ld b, a
    sbc h
    xor b
    jp nz, Jump_009_46a3

    ld c, b
    dec hl
    push bc
    ld d, d
    db $fc
    ld sp, $2ea4
    sbc b
    ld e, d
    sbc h
    ld d, b
    jr nz, jr_009_44c0

    ld [hl], c
    ld [de], a
    ld l, h
    ret nz

    add [hl]
    ld [de], a
    inc [hl]
    ld e, l
    ld h, $a9
    ld e, h
    rst $00
    dec l
    rra
    ld [hl-], a

jr_009_453c:
    ld d, l
    cp [hl]
    ld sp, $903a
    ld d, l
    ld d, h
    ld d, [hl]
    and e
    add l
    ret nc

    ld b, c
    xor e
    ld a, [$21ae]
    ld c, l
    ld e, l
    ld d, b
    cp d
    add c
    ld hl, $8230
    inc sp
    ld e, l
    ld a, [bc]
    dec h
    ld b, d
    xor e
    xor a
    adc b
    db $e3
    daa
    and e
    dec b
    rlca
    ld a, [$f106]
    ld c, l
    ld l, b
    or [hl]
    ld [$82da], a
    rla
    xor [hl]
    ld e, l
    ld sp, $5e54
    sub [hl]
    add l
    ldh [$fe], a
    ld l, a
    db $e3
    ld e, a
    ld sp, hl
    and d
    rst $38
    ret z

    ld e, d
    inc d
    inc h
    sla d
    jr nc, @+$7f

    ld e, a
    ld [c], a
    jr @+$1a

    set 4, b
    adc e
    ld a, a
    ld hl, $814a
    adc l
    inc d
    ld [hl+], a
    ld d, a
    cp $18
    ld h, c
    ld h, b
    ld c, l
    sub l
    db $fc
    dec de
    cp l
    ld b, [hl]
    and l
    add l
    jr c, jr_009_45c9

    xor a
    add c
    ld a, [bc]
    add c
    ld c, d
    ld h, e
    sub [hl]
    rst $18
    db $f4

Call_009_45a8:
    add l
    ld [hl+], a
    ld a, [hl-]
    ld a, [hl+]
    dec b
    ld [hl], c
    ld b, l
    ld c, [hl]
    rst $20
    xor b
    jr z, jr_009_45c9

    sub e
    cp l
    ld a, e
    ld [hl], h
    ldh a, [$a2]
    cpl
    adc l
    and a
    call nc, Call_000_2525
    daa
    ld e, d

jr_009_45c2:
    ld h, d
    db $d3
    inc e
    inc l
    ld c, h
    dec c
    adc d

jr_009_45c9:
    cp $86
    ld l, [hl]
    add h
    ld b, d
    rst $38
    rlca
    rst $38
    ld b, h
    ld h, a
    dec hl
    rst $38

jr_009_45d5:
    inc bc
    dec c
    ld sp, $6f1e
    db $10
    db $fd
    ld a, [bc]
    or h
    pop hl
    add d
    rrca
    dec de
    ret nz

    db $fc
    cpl
    ld b, b
    cp $0a
    cp [hl]
    dec hl
    add d
    ld l, [hl]
    jp nc, $f30c

    ld e, a
    di
    rst $38
    and $a8
    jr nz, jr_009_45c2

    db $eb
    dec b
    xor d

jr_009_45f9:
    rst $38
    db $fc
    ld l, a
    add a
    rst $38
    ldh a, [$bf]
    ld e, a
    rst $38
    dec de
    cp b
    ld a, a
    db $fc
    ld c, a
    sub e
    rst $38
    inc e
    dec d
    ld d, c
    ld c, b
    pop de
    dec [hl]
    pop af
    jp nc, $83df

    ld e, [hl]
    or c
    db $dd
    ld a, [hl]
    cp a
    rst $20
    add c
    ld d, a
    rst $10
    sbc [hl]
    ld d, $1a
    pop af
    ld [c], a
    rst $00
    or d
    ld b, h
    cp h
    push de
    inc b
    ld [$bb7e], a
    ld d, e
    sbc a
    res 5, l
    ld hl, $dafc
    db $d3
    inc h
    ld a, c
    jr c, jr_009_46a3

    ld b, l
    ld h, c
    cp d
    or e
    adc d
    cp l
    ld h, $25
    jr c, @+$5f

    db $fd
    ld c, d
    ld a, b
    db $dd
    ldh [$89], a
    ld b, [hl]
    rrca
    ld d, e
    ld l, d
    jr nc, jr_009_45d5

    sbc h
    ldh [rHDMA5], a
    ld d, l
    adc b
    ld l, c
    jr c, jr_009_45f9

    ld d, l
    ld l, d
    ld h, $a3
    ldh a, [$59]
    ld a, [c]
    ld l, c
    call nc, $fabf
    sub d
    sbc h
    ld [hl], a
    rst $38
    jp hl


    ld d, d
    ld [hl], d
    ld e, a
    cp $4a
    sbc h
    push af
    ld e, d
    db $fc
    ld [hl], e
    ld a, [hl+]
    rst $38
    rst $00
    scf
    rst $38
    cp $85
    inc e
    dec hl
    rst $38
    ldh a, [$df]
    rst $20
    dec b
    ld d, l
    ld d, c
    ld [hl], l

Call_009_467f:
    rra
    sub d
    add b
    ld d, l
    cp l
    dec [hl]

Jump_009_4685:
    ld [hl-], a
    ld d, h
    add a
    call nc, $86e2
    sub d
    xor d
    or h
    xor e
    ld c, l
    ldh [rBCPD], a
    add hl, bc
    ld d, l
    dec h
    ld b, c
    ldh [$82], a
    ld c, l
    or l
    ld d, l
    xor d
    ld l, $94
    ld h, l
    ld d, e
    daa

Jump_009_46a1:
    xor d
    ld [hl], e

Jump_009_46a3:
jr_009_46a3:
    add c
    ld c, c
    ld c, h
    xor b
    cp d
    rra
    inc [hl]
    add l
    sbc b
    jp nz, Jump_009_4888

    ld c, e
    and h
    adc $38
    dec d
    ld e, b
    inc a
    ld d, l
    inc [hl]
    ld d, e
    dec d
    ld h, $a3
    adc c
    ld d, d
    inc hl
    dec d
    add hl, sp
    dec de
    ld [$8cf1], a
    inc d
    call $aaf2
    adc b
    ld d, [hl]
    ld [hl], h
    pop de
    ld d, h
    pop de
    ld d, h
    ld h, d
    inc hl
    ld a, [de]
    dec d
    ld h, $42
    push de
    ld [hl], c
    ld [hl], h
    ld h, l
    ld h, l
    jr nc, @+$6a

    push bc
    ld b, d
    xor b
    sbc d

jr_009_46e1:
    ld sp, hl
    ld a, [hl]
    jr c, jr_009_46ff

    db $db
    push af
    ld d, l
    ld e, a
    ld h, d

jr_009_46ea:
    ld d, h
    and h
    sub l
    add l
    ld b, l
    ld b, d
    add d
    cp d
    dec b
    pop hl
    ld d, e
    ld a, [bc]
    and d
    sub a
    ld [$6f54], a
    add sp, -$7b
    jr c, jr_009_46e1

jr_009_46ff:
    ld h, l
    ld d, d
    rst $10
    db $e3
    or d
    cp a
    cp $8c
    daa
    xor b
    sbc c
    dec h
    inc [hl]
    sbc h
    sbc e
    ld c, c
    ld d, b
    ret


    ccf
    and a
    rrca
    ld b, b
    add h
    sub c
    ld de, $5fa4
    jp hl


    or e
    adc d
    pop de
    sub l
    ld [bc], a
    rst $38
    jp hl


    sbc e
    ld b, h
    and d
    ret nc

    ld h, [hl]
    ld d, a
    cp $65
    jr @+$73

    ld c, c
    and a
    ld b, [hl]
    ld d, c
    jr z, jr_009_46ea

    ld h, l
    ld h, [hl]
    ld e, a
    sbc h
    rrca
    ld c, a
    sbc h
    rra
    and $51
    scf
    ldh a, [$d0]
    ld h, [hl]
    or a
    and $51
    call Call_009_4484
    reti


    adc d
    ld l, b
    ret


    ld d, b
    rst $28
    xor a
    cp c
    and d
    cp [hl]
    and e
    ld a, [bc]
    ld [$ffff], a
    ld sp, hl
    add l
    rst $28
    inc de
    ld a, [hl]
    adc a
    cp $df
    rst $38
    ld a, [c]
    ld h, c
    ld sp, hl
    ld l, l
    ld e, a
    rst $38
    rst $38
    xor l
    ld c, e
    and $1e
    ld c, d
    ld h, l
    ld d, l
    ld d, h
    xor [hl]
    rra
    pop de
    ld d, [hl]
    jr z, jr_009_47b9

    sbc b
    ld a, a
    rst $38
    ccf
    rst $00
    ld b, e
    ld c, a
    ld a, [$f4ff]
    ld [hl], h
    rst $10
    ld a, a
    rst $38
    ld e, $0c
    ld c, h
    ld h, h
    ld b, h
    cp [hl]
    ld h, l
    ld d, h
    ld [c], a

jr_009_478a:
    ld d, l
    dec d
    ld e, [hl]
    ld hl, sp-$1f
    add c
    cp a
    and b
    sbc [hl]
    and e
    add l
    dec bc
    adc h
    ld a, a
    jr c, jr_009_478a

    ld e, e
    rst $38
    ld hl, sp-$1e
    xor d
    ld a, e
    dec bc
    db $fd
    ld c, [hl]
    dec [hl]
    ld [$e5a8], sp
    and h
    xor $a1
    ld c, [hl]
    reti


    ld b, c
    push de
    dec d
    ld [hl], e
    add l
    ld d, l
    add d
    xor l
    ret c

    db $ed
    and e
    ld [c], a
    daa

jr_009_47b9:
    call z, $9ea2
    sbc d
    sub [hl]
    and a
    scf
    ld sp, $8b2e
    sbc h
    ld c, l
    jr jr_009_4821

    and a
    inc c
    ld d, d
    jp c, $c811

    cp $a7
    ld h, h
    pop af
    sbc [hl]
    ld [hl], b
    add $de

Call_009_47d5:
    ld [hl], c
    ld b, c
    ld [hl], d
    add d
    xor l
    ld b, a
    inc c
    ld l, c
    sbc a
    ld d, b
    ld d, l
    ccf
    ld c, $f4
    rst $10
    adc [hl]
    inc b
    add h
    ld a, [de]
    db $d3
    add hl, sp
    and e
    ld h, l
    ei
    sub d
    inc hl
    ld c, b
    jp c, Jump_009_7f71

    adc b
    ld b, d
    xor c
    sub d
    inc d
    jp c, $d6ef

    inc b
    inc [hl]
    jp nz, $21de

    inc sp
    db $76
    ld [hl+], a
    inc e
    or l
    cp $a9
    ld a, [de]
    ld [hl-], a
    rst $38
    ld [c], a
    ld h, b
    sub b
    xor [hl]
    sub $21
    call Call_000_1526
    ld h, $09
    add hl, bc
    ld h, a
    db $eb
    ld [hl+], a
    and e
    jr jr_009_4878

    jr nz, jr_009_4861

    adc h
    cpl
    ld [hl], b

jr_009_4821:
    ld d, b
    ld d, h
    ldh [$de], a
    adc h

jr_009_4826:
    jr jr_009_483f

    dec c
    dec b
    ld c, l
    ld d, a
    add l
    reti


    dec b
    sub $26
    add c
    ld d, h
    sub $26
    ld c, b
    ld l, c
    pop bc
    pop bc
    ld a, [hl-]
    ldh a, [$b8]
    add hl, sp
    and b
    ld d, d

jr_009_483f:
    xor l
    jr c, jr_009_4826

    inc l
    add hl, de
    sbc d
    ld [$e438], sp
    sub b
    jp nc, $a016

    sbc c
    ld c, [hl]
    ld l, d
    ld hl, $571e
    cp [hl]
    dec sp
    ld l, b
    adc d
    ld [hl], $9f
    add l
    or [hl]
    and [hl]
    adc h
    ld [hl], b
    add hl, hl
    inc sp
    cp $6b

jr_009_4861:
    sbc e
    ld [hl-], a
    and h
    ccf
    ld [c], a
    xor c
    add a
    sbc d
    inc h
    ld hl, sp+$68
    ld a, a
    add e
    cp $95
    and $eb
    ld l, $08
    ld d, h
    rst $38
    cp $83

jr_009_4878:
    reti


    xor h
    ld hl, sp+$78
    ld h, h
    ld a, a
    rst $38
    ld c, e
    inc e
    dec de
    dec c
    ldh [$ad], a
    or a
    db $ed
    and e

Jump_009_4888:
    sub e
    sbc e
    dec l
    rst $38
    adc h
    dec [hl]
    db $ed
    ld a, [c]
    add hl, sp
    cp d
    rra
    pop de
    sub d
    jr nc, jr_009_48cf

    ld sp, $c6bc
    adc h
    ld a, [bc]
    db $ec
    ld [de], a
    ld [hl], e
    ret


    jr jr_009_48e1

    rst $38
    adc h
    sbc h
    ld [hl], b
    ld [hl+], a
    ret nz

    rst $38

Jump_009_48a9:
    ld a, a
    db $e4
    ld b, a
    ld a, [hl+]
    and b
    rst $38
    add a
    ret c

    ld h, a
    inc sp
    inc bc
    rlca
    db $fc
    ld hl, sp+$79
    jp nc, $fce3

    rra
    add a
    rst $00
    ld l, l
    ld de, $ac47
    ld b, h
    cp [hl]
    ld l, c
    and e
    adc l
    ld c, h
    dec e
    and e
    adc d
    xor c
    dec d
    db $e3
    sbc d

jr_009_48cf:
    add d
    ld l, b
    or a
    jr c, jr_009_48f1

    ld [hl], c
    ld c, b
    add c
    db $e3
    add l
    ld h, e
    jr z, @-$19

    ld d, d
    jr @-$45

    ld c, [hl]
    rlca

jr_009_48e1:
    add c
    adc [hl]
    cp e
    ldh a, [rHDMA3]
    dec b
    ld c, [hl]
    ld c, e
    pop bc
    rlca
    ld h, e
    xor d
    ret nc

    adc a
    xor d
    sbc a

jr_009_48f1:
    adc b
    ld l, c
    add e
    add hl, sp
    bit 5, c
    ld c, a
    inc e
    rst $38
    adc l
    jp $af1c


    ld hl, sp-$3f
    ld sp, hl
    ret


jr_009_4902:
    rst $38
    adc d
    scf
    sbc h
    ld [hl], a
    db $fc
    push hl
    ld b, a
    inc c
    jr nc, @+$01

    ld b, a
    ld h, h
    ld a, [hl]
    inc e
    ld d, l
    cp a
    jr nc, jr_009_496f

    xor a
    call nc, Call_009_6eeb
    call z, $d32b
    sbc c
    jp nz, Jump_009_685c

    jp nz, $8dd3

    ld b, d
    cp h
    ld d, e
    ld b, l
    jr c, jr_009_497e

jr_009_4929:
    ld h, e
    add l
    ld d, h
    ld [c], a
    ld l, e
    scf
    xor d

Jump_009_4930:
    jr c, jr_009_4902

    ld e, h
    pop af
    ld h, h
    jr z, jr_009_499a

    dec h
    ld d, e
    add [hl]
    add l
    inc d
    jp c, $e1a8

    adc b
    and d
    ld h, e
    ld a, [hl-]
    jr c, jr_009_4929

    push bc
    jr nc, jr_009_49c0

    and $93
    add hl, bc
    dec b
    ld hl, sp-$16
    and l
    ld d, l
    ld a, d
    ccf
    rlca
    rst $18
    sbc c
    ld c, d
    ld [$da69], sp
    cp $33
    inc c
    add hl, de
    ret nc

    cp c
    ld c, l
    add hl, de
    daa
    dec de
    rst $30
    xor b
    ld sp, $9c9c
    ld l, $2b
    inc c
    sub [hl]
    xor b
    inc l
    sbc h

jr_009_496f:
    db $10
    ld [hl], b
    ld a, c
    add e
    ld b, h
    ld b, c
    ld d, c
    rst $00
    ld l, e
    ld [bc], a
    adc h
    ld h, e
    inc e
    ld c, b
    xor d

jr_009_497e:
    ld c, h
    add $69
    jp $9060


    and a
    add e
    ld h, d
    rst $38
    pop af
    sbc h
    ld [hl], d
    ld d, e
    rst $38
    ld a, [bc]
    ld h, b

Call_009_498f:
    rst $00
    ld b, h
    push bc
    inc h
    ret


    rst $10
    ld b, $54
    pop de
    ld hl, sp+$38

jr_009_499a:
    ld b, h
    cp [hl]
    ld b, c
    ld d, l
    ld d, e
    sbc l
    or d
    ld a, d
    db $f4
    ld [c], a
    ld [hl], a
    inc c
    sbc b
    adc e
    ld c, l
    call nc, $b868
    and h
    sbc $58
    push bc
    ld [hl+], a
    inc a
    inc b
    di
    ld [c], a
    call nc, $08b6
    sbc $47
    ld h, b
    adc c
    add c
    adc [hl]
    add hl, hl
    ld h, b

jr_009_49c0:
    sub d
    ld e, b
    rst $20
    xor d
    xor d
    ld a, $aa
    ld a, h
    add d
    ld d, d
    ld [hl], h
    cpl
    db $ec
    adc h

jr_009_49ce:
    ld [hl], c
    xor a
    cp a
    db $fc
    sub d
    sbc e
    xor b
    rst $38
    rst $38
    call nz, $bfa9
    rst $38
    rst $38
    adc $2e
    ld [hl], b
    ld a, a
    rst $38
    db $fc
    adc e
    and $ef
    rst $38
    db $fc
    db $10
    rst $38
    and [hl]
    rst $28
    jp nc, Jump_009_5f09

    and a
    dec d
    call z, $d9c4
    rst $08
    sub [hl]
    rst $00
    pop hl
    jr nz, jr_009_4a70

    and l
    db $d3
    ld d, a
    db $fd
    ld d, h
    and l
    ld a, [hl]
    xor c
    jr c, @-$68

    db $d3
    rla
    ld d, l
    add a

jr_009_4a07:
    and b
    ld a, [hl]
    add hl, bc
    ld [$4e9a], a
    ld a, [bc]
    dec bc
    ld c, c
    ld l, b
    ld l, b
    xor d
    dec bc
    push af
    add hl, hl
    ld d, c
    sub e
    ld a, d
    ld b, d
    ret nc

    ld b, l

jr_009_4a1c:
    ld hl, $410a
    jr nc, jr_009_49ce

    ld a, [bc]
    add d
    ld [hl+], a
    ld hl, $19d3
    ld b, [hl]
    ret


    xor b
    ld a, a
    dec [hl]
    ld h, b
    sub l

jr_009_4a2e:
    ld h, $0a
    dec h
    add hl, hl
    ld a, d
    add hl, de

Call_009_4a34:
    dec d
    xor b
    adc d
    ld [hl], $54
    ld d, l
    ld a, [bc]
    ld h, $a7
    ld a, [$58a6]
    ld l, h
    sub [hl]
    inc [hl]
    ld a, d
    ld [hl+], a
    and h
    ld a, [hl+]
    dec h
    ld h, d
    ld d, $a9
    add hl, hl
    inc b
    sbc d
    ld c, $52
    sub h
    jp c, Jump_009_5b91

    adc b
    ld e, l
    ld d, l
    add a
    add [hl]
    add c
    add l
    sub l
    ld b, d
    and l
    ld b, $16
    adc h
    dec l
    ld d, h
    jr nz, jr_009_4a07

    pop hl
    ld b, c
    jr jr_009_4ae3

    ld a, [bc]
    cp l
    add $29
    and h
    and l
    rst $28

jr_009_4a70:
    ld e, d
    adc c
    ld h, b
    pop bc
    ld c, d
    ld d, e
    add hl, hl
    jr nc, jr_009_4abe

    ld c, b
    rst $38
    add l
    dec b
    adc b
    sbc d
    db $d3
    ld b, $4d
    inc h
    xor d
    ld l, $af
    push bc
    ld d, d
    dec d
    ld d, [hl]
    inc d
    ld [hl], b
    ld e, e
    jr nc, jr_009_4a1c

    inc de
    ld a, [hl+]
    adc h
    ld a, [hl+]
    cp c
    ld l, h
    add hl, de
    ld hl, $6255
    jr nz, jr_009_4a2e

    ld h, a
    and d
    ld d, e
    add hl, de
    ld [$9a04], a
    xor c
    ld c, h
    inc hl
    scf
    add d
    dec l
    add hl, hl
    ld [hl+], a
    ld e, d
    ld hl, $51ca
    ld c, d
    adc h
    dec d
    ld b, $31
    sub c
    ld h, e
    jr c, jr_009_4b20

    ld h, h
    cp b
    ld d, d
    cp $08
    sub $8d

jr_009_4abe:
    ld d, l
    ld b, $16
    ld l, $8a
    adc c
    ld c, b
    ld c, h
    sub d
    sub [hl]
    and h
    ld a, [de]
    ld a, [hl+]
    inc b
    ld [c], a
    ld c, b
    add d
    sub l
    ld d, b
    ld d, d
    ld h, d
    sub h
    sbc e
    add d
    ld c, b
    ld e, d
    sub c
    ld d, d
    ld h, [hl]
    sub l
    dec h
    ld a, [hl]
    add hl, hl
    ld d, $8c
    ld h, b
    adc b

jr_009_4ae3:
    ld a, l
    ld b, [hl]
    add c
    ld [hl-], a
    xor a
    cp e
    adc h
    ld l, c
    or h
    jp z, $8a18

    push de
    adc l
    ld e, a
    and l
    ld l, b
    db $e3
    ld b, [hl]
    adc e
    adc d
    sub h
    add $da
    dec h
    ld h, d
    sub e
    inc h
    adc $29
    add hl, sp
    inc d
    ld [hl], d
    and b
    push de
    ld e, b
    and h
    add [hl]
    ld a, [hl-]
    xor c
    and b
    ld b, d
    or c
    ld l, d
    sub h
    cp d
    adc d
    ld d, b
    add c
    ld c, l
    xor $5a
    ld hl, $6205
    dec d
    ld c, l
    dec [hl]
    add hl, de
    jr c, jr_009_4b4a

jr_009_4b20:
    add hl, hl
    sbc b
    adc e
    ld a, [$531a]
    dec b

Call_009_4b27:
    ld d, $1d
    ld [hl], $9d
    adc b
    ld a, [hl+]
    cp c
    rst $00
    dec b
    and [hl]
    ld l, c
    inc c
    add d
    cpl
    sub c
    ld c, d
    inc d
    and a
    ld d, $11
    ld l, b
    and c
    ld d, d
    add a
    inc c
    ld b, h
    sub e
    xor a
    xor c
    jp $8bac


    ld [hl], c
    jr nc, jr_009_4b83

jr_009_4b4a:
    sub h
    ld b, e
    ld d, c
    ld sp, $9a49
    ld b, h

Call_009_4b51:
    jp $2f2b


    sbc d

jr_009_4b55:
    db $f4
    ld e, h
    ld d, h
    ld b, d
    ld h, c
    ld c, b
    jp z, Jump_000_340e

    add h
    ld l, a
    ld e, b
    ld sp, $d670
    ld a, [bc]
    push de
    add hl, hl
    ld [hl], $52
    sbc e
    jp $8304


    ld b, b
    sub b
    and [hl]
    ld c, b
    dec h
    ld d, l
    ld d, h
    xor d
    ld l, b
    or c
    add l
    cp b
    and c
    add sp, -$2c
    ld e, d
    and h
    jp $9b57


    pop de
    xor h

jr_009_4b83:
    ld e, $32
    ret nz

    pop bc
    ld c, h
    ld b, h
    ld a, [hl+]
    add hl, de
    adc a

jr_009_4b8c:
    inc hl
    ld b, [hl]
    adc d
    inc [hl]
    and h
    xor e
    ld d, c
    jr z, jr_009_4b55

    add d
    ld h, d
    and c
    ld d, c
    ld l, c
    dec a
    ld [bc], a
    res 2, c
    inc bc
    ldh [$c0], a
    add e
    ld c, $b0
    ld c, b
    or c
    inc a
    sub d
    sbc c
    ld d, h
    ld [$3aa4], sp
    adc d
    ld a, [hl+]
    ld [de], a
    call nc, Call_009_4a34
    db $10
    inc [hl]
    and d
    sbc c
    and b
    add $50
    and e
    db $dd
    inc b
    xor c
    jr nc, @+$57

    ld c, b
    ld a, [hl-]
    sbc b
    or e
    add hl, de
    set 6, h
    ld b, h
    add hl, hl
    dec d
    ld b, l
    ld b, d
    sbc $63
    ld [bc], a
    ld a, [bc]
    ld sp, $1176
    ld d, c

jr_009_4bd4:
    ld de, $2a28
    ld a, [bc]
    ld d, a
    sbc b
    ld l, $c3
    ld hl, $6b26
    dec bc
    ld [bc], a
    db $fd
    ret


    adc h
    ld de, $2a48
    ld e, l
    jr nc, jr_009_4b8c

    call nc, $a14a
    ld b, d
    sub a
    ld b, [hl]
    ld de, $8516
    xor c
    ld c, b
    ld l, e
    and b
    cp a
    call c, $8b4a

jr_009_4bfb:
    adc d
    and b
    sub a
    db $10
    add d
    ld b, l
    ld a, a
    ldh [$82], a
    adc l
    ld b, b
    xor c
    ld d, a
    call nz, $91a1
    ld c, d
    sub l
    inc c
    and h
    xor a
    db $10
    ret nc

    inc l
    push bc
    ld h, $31
    dec l
    ld b, d
    sbc c
    push de
    ret nc

    xor b
    ld d, c
    ld c, $09

Jump_009_4c1f:
    add $e9
    ld sp, $2da3
    ld b, e
    ld [de], a
    and c
    inc h
    and l
    pop de

Call_009_4c2a:
    jr nc, jr_009_4bd4

    add $b4
    ld h, e
    ld b, h
    inc h
    ld b, b
    and l
    xor b
    jr nz, jr_009_4bfb

    and a
    ld a, [hl-]
    ld d, $e1
    dec a
    xor d
    sub b
    add h
    add h
    ld b, d
    pop af
    add hl, hl
    call nz, $b0c0
    or d
    ld h, c
    jp z, $ffbf

    ld b, h
    ld b, c
    daa
    ld c, $d1
    jr z, jr_009_4c82

    ld a, [bc]
    add sp, -$58
    ld e, a
    ld a, [hl+]
    and h
    ld d, c
    call nc, Call_009_54c5
    ld e, l
    ld l, $54
    or c
    nop
    ld b, h
    sub h
    rra
    ld d, d
    rst $18
    push de
    ld l, d
    and d
    xor e

Call_009_4c69:
    add c
    add hl, de
    dec b
    ld d, h
    ld h, b

Jump_009_4c6e:
    adc $04
    ld l, d
    jp Jump_009_53e4


    ld l, d
    and d
    ld de, $4148
    adc c
    ld d, [hl]
    res 2, h
    sub [hl]
    ld d, $42
    ld b, a
    push de

jr_009_4c82:
    adc h
    sub [hl]
    and l
    and a
    add c
    ld c, [hl]
    xor d
    ld l, c
    ld l, c
    ld [hl], $53
    dec bc
    ld l, b
    add a
    ld d, e
    daa
    sbc c
    ld c, l
    inc h
    sub [hl]
    ret


    or $6a
    inc b
    inc d
    and h
    or [hl]
    ld l, $08
    cp b

Jump_009_4ca0:
    ld l, c
    pop hl
    add l
    ld [hl-], a
    ld d, d
    and d
    db $f4
    db $10
    ld a, b
    ldh [$61], a
    ld [hl], h
    ld d, b
    call nc, Call_009_4c69
    ld l, $b4
    jr jr_009_4ce3

    ld a, [$288c]
    jp nz, $2a86

    adc a
    ld c, e
    ld d, d
    sbc h
    ld a, [hl+]
    and [hl]
    or [hl]
    ld e, d
    inc l
    ld sp, hl
    ld de, $0c8b
    ld [hl-], a
    ld hl, sp+$31
    inc d
    add hl, hl
    or d
    add hl, bc
    inc d
    ld e, d

jr_009_4cd0:
    db $d3
    ld b, [hl]
    inc d
    and [hl]
    add hl, hl
    jr c, jr_009_4cd0

    cp h
    ld d, e
    inc h
    dec l
    ld d, a
    ld b, [hl]
    or c
    inc de
    cpl
    pop de
    rst $00
    inc de

jr_009_4ce3:
    ld a, l
    db $10
    sub $c6
    ld c, h
    add hl, de
    xor d
    ld d, d
    push bc
    db $ec
    add hl, bc
    or d
    add $e9
    ld d, c
    dec c
    dec b
    ld de, $4c46
    ld d, d
    adc [hl]
    ld a, [de]
    ld [$144a], sp
    ld h, b
    sub [hl]
    add d
    ld b, h
    ld a, [bc]
    ld d, l
    ld l, c
    ld [hl], d
    db $d3
    ld de, $7c2c

jr_009_4d09:
    adc b
    ld [hl], a
    cp h
    add l
    xor d
    xor c
    ld c, [hl]
    push hl
    ld d, l
    jr nc, jr_009_4d7c

    sub [hl]
    and l
    add hl, bc
    ld a, [hl-]
    rst $38
    sub l
    xor c
    ld e, b
    ld d, l
    ld e, d
    ld d, c
    sub b
    sub e
    dec [hl]
    ld d, e
    ld c, d
    ret nc

    jp c, Jump_009_6151

    ld b, [hl]
    sub b
    db $f4
    inc de
    ld d, a
    xor [hl]
    ld d, c
    ld e, e
    and [hl]
    ld sp, $0682
    add a
    ld b, c
    sub h
    ld d, b
    adc c

jr_009_4d39:
    ld d, d
    ld l, b
    dec e
    ld l, l
    rst $30
    sub c
    ld c, h
    ld hl, $8a98
    ld hl, $1204
    jp hl


    dec b
    ld [$d51f], a
    add hl, bc
    adc h
    add sp, $5b
    dec b
    inc b
    ld a, [hl+]
    ld [hl+], a
    ld b, $75
    call nc, $d1bb
    and c
    ld c, l
    reti


    ld c, c
    ld d, h
    and a
    jr nc, jr_009_4d09

    cpl
    jp $d18d


    sub d
    ld d, c
    adc e
    and d
    sbc $86
    ld sp, $96b6
    ld b, l
    ld b, d
    push af
    ld c, [hl]
    rlca
    sub b
    push af
    ld e, [hl]
    ld a, [bc]
    ld a, [hl+]
    jp c, $974c

    ld [c], a
    db $d3

jr_009_4d7c:
    ld a, [bc]
    ld a, [bc]
    db $fc
    ld a, [de]
    dec d
    jr nc, @+$45

    ld b, d
    ld [$a39f], sp
    rra
    ld [$99d2], sp
    dec b
    ld c, h
    and b
    cp [hl]
    dec d
    ld h, $68
    adc b
    ret


    ld d, c
    ld l, b
    ld h, b
    jp nz, Jump_000_1214

    inc h
    reti


    inc b
    jr z, jr_009_4d39

    ld b, c
    ld b, $22
    adc e
    ld h, b
    sbc [hl]
    inc b
    ld d, e
    dec h
    ld a, [hl+]
    add l
    ld b, [hl]
    ld h, b
    ld h, h
    inc h
    sub h
    adc e
    daa
    ld d, l
    sub b
    ld c, l
    and h
    sub l
    ld b, c
    add c
    ld b, l
    ld h, b
    ld b, c
    ld b, $08
    ld h, b
    ld d, d
    sub d
    ld [de], a
    sub h
    add h
    inc h
    ld [hl], l
    ld hl, $8790
    inc b
    cp b
    sub l
    adc e
    db $ed
    ld [hl+], a
    dec hl
    ld l, d
    rla
    ld c, c
    ld b, d
    jr nc, @-$74

    adc c
    ld c, e
    db $fc
    ld d, a
    rst $30
    and l
    ld hl, $90c8
    add sp, -$37
    or l
    add hl, bc
    ld hl, $0a26
    and c
    and d
    ld [hl+], a
    dec hl
    add c
    ld d, l
    rrca
    ld c, d
    adc c
    add c
    ld [$3552], sp
    add l
    adc c
    adc c
    adc c
    ld c, c
    sub h
    sbc d
    ld c, h
    ld d, b
    add c
    ld [$e110], sp
    ld l, b
    ld de, $8e63
    ld a, d
    jr jr_009_4e2f

    add hl, de
    db $fd
    add d
    dec b
    xor b
    ld e, b
    jr z, @-$46

    sbc b
    ld [c], a
    ld b, c
    dec b
    jr nc, @-$14

    call Call_009_63d2
    ld b, h
    add [hl]
    dec d
    ret nc

    sub l
    ld hl, $8458
    inc de
    ld l, b
    inc hl
    inc h
    ret


    ld b, d
    ld h, $a2
    ld d, [hl]
    inc b
    dec h
    dec d
    and d
    ld h, h
    inc h
    dec [hl]

jr_009_4e2f:
    ld e, b
    add [hl]
    ld [hl+], a
    db $dd
    sbc d
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    ld d, b
    and c
    ld d, h
    add $bf
    ld hl, $2a8c
    adc [hl]
    ld c, d
    xor b
    adc c
    ld c, h
    sub [hl]
    adc e
    sbc $3a
    ld a, [$e0aa]
    sbc [hl]
    ld [de], a
    ld e, e
    ld [hl], l
    jp hl


    ld d, l
    add d
    db $76
    ld a, l
    ld l, a
    adc h
    db $ed
    ld d, l
    ld [$464d], a
    ret


    cp l
    db $fd
    ld d, a
    sbc c
    ld b, c
    inc h
    ld d, d
    ld h, l
    add [hl]
    ld a, [bc]
    add hl, bc
    ld a, [hl+]
    and e
    inc bc
    ld d, h
    add d
    adc l
    call nc, $3984
    ld a, [bc]
    ld l, b
    bit 7, e
    ld l, d
    dec [hl]
    jr jr_009_4e98

    add l
    ld c, c
    ld [$523a], sp
    ld c, [hl]
    sub e
    ld b, $14
    dec d
    rst $10
    and c
    ld c, c
    ld l, b
    ld hl, $8452
    ld c, h
    ld b, d
    adc d
    cp e
    ld d, h
    add h
    sub b
    db $f4
    ld sp, $9549
    ld h, c
    ld [hl-], a
    add d
    ld h, c

jr_009_4e98:
    ld d, h

jr_009_4e99:
    xor c
    jr z, @+$46

    and c
    inc [hl]
    ld b, d
    ld [de], a
    ld d, d
    cp e
    ld b, a
    ld [bc], a
    ld c, h
    or $a8
    push bc
    ld [hl], e
    cp $11
    dec e
    ld d, a
    and [hl]
    ld c, c
    ld e, b
    ld l, b
    db $f4
    ld [$1152], sp
    ld c, l
    inc h
    pop bc
    inc bc
    ld a, d
    rst $00
    inc b
    jr nc, jr_009_4f36

    ld e, h
    ld [$2428], sp
    xor b
    jp z, $a8c8

    ld d, a
    dec d
    inc e
    ld [de], a
    xor d
    add sp, $20
    adc h
    add hl, bc
    adc [hl]
    ld b, d
    xor a
    inc b
    ld d, l
    jr @-$5d

    push de
    ld d, a
    ld a, [bc]
    ld a, [hl+]
    add $31
    ld l, b
    ld d, d
    ld [$b545], sp
    rlca
    sub b
    add d
    ld d, e
    dec d
    inc c
    sub b
    db $e4
    ld d, h
    ld b, [hl]
    sub c
    dec [hl]
    ld b, h
    and c
    ld a, [bc]
    inc d
    ld d, [hl]
    or h
    inc d
    jr nc, jr_009_4e99

    db $10
    xor h
    ld c, h
    ld c, e
    dec hl
    rst $08
    ld de, $d048
    ld h, d
    ret nc

    ld h, c
    jr c, @-$5c

    ld [c], a
    adc d
    add d
    pop bc
    inc bc
    ld [bc], a
    and e
    inc hl
    ld de, $a948
    add hl, hl
    dec de
    call z, Call_000_3bd2
    ret nc

    ld b, b
    ret nc

    ld h, d
    xor c
    ld de, $228d
    and e
    jp Jump_009_6105


    cp $af
    sub d
    call nz, $f16d
    sbc e
    ld d, a
    db $10
    and h
    ld b, h
    cpl
    ld d, h
    sub c
    ld d, d
    push bc
    ld l, b
    ld c, b
    ld h, $31
    ld l, [hl]
    ld b, a

jr_009_4f36:
    jp hl


    add hl, de
    dec d
    jr jr_009_4f7f

    dec [hl]

jr_009_4f3c:
    ld d, b
    db $f4
    adc d
    ld c, d
    ld d, d
    ld c, $14
    ld l, $10
    or a
    inc b
    ld h, h
    sub a
    ccf
    ld d, b
    ld a, [hl-]
    ld b, h
    xor h
    ld b, e
    rst $28
    db $ec
    add hl, sp
    inc c
    ld d, l
    inc c
    ld [hl], b
    ldh a, [$29]
    sub l
    ld b, e
    dec d
    ld d, c
    ld [hl], h
    ld [hl], b
    ld a, [hl+]
    ld b, e
    ld c, d
    ld l, d
    pop af
    xor l
    dec bc
    ld a, [de]
    ld a, [hl+]
    ld b, h
    ld c, l
    add hl, hl
    ld c, e
    call c, Call_009_4fa6
    db $10
    and [hl]
    ld l, d
    sub a
    xor h
    rra
    ld d, l
    ld a, h
    ld b, l
    jp c, $d2ab

    sub e
    ld l, d
    ld b, d
    rst $38
    dec e

jr_009_4f7f:
    or c
    ld d, b
    ld b, c
    jp c, $ffaf

    db $f4
    ld d, b
    ld b, h
    or h
    ld d, e
    dec b
    ld b, c
    ld a, h
    pop de
    ld b, e
    ei
    rst $30
    ld [$34aa], a
    xor e
    xor c
    ld a, a
    adc c
    ld d, h
    pop hl
    and d
    add hl, sp
    and d
    ld l, b
    ret


    ldh a, [$90]
    and d
    ld h, e
    sub l
    inc b
    inc l

Call_009_4fa6:
    ld d, h
    add l
    jr c, jr_009_4fd6

    jr nz, jr_009_4f3c

    sub b
    ld d, d
    sbc a
    ld l, b
    jp z, $9189

    xor d
    add e
    ret c

    and $98
    ld h, h
    dec hl
    ld h, e
    ccf

jr_009_4fbc:
    ld l, $e8
    sbc d
    or h
    call Call_000_0545
    ld c, c
    ld b, c
    ld d, h
    adc c
    ld c, h
    inc d
    jr nz, @-$50

    or e
    ld a, [de]
    ld d, l
    ld sp, $b75d
    ld hl, $4aed
    ld h, e
    ld a, [hl+]

jr_009_4fd6:
    ld a, [hl+]
    ld hl, sp-$76
    cp $8e
    ld a, [$c5a3]
    sbc $6e
    sub b
    sub b
    and a
    ld [hl+], a
    db $e4
    inc [hl]
    ld a, [hl+]
    ld a, [$6370]
    jp z, Jump_000_3ab4

    add hl, hl
    sbc h
    inc d
    inc l
    ld b, h
    ld c, h
    ld l, h
    db $dd
    ld [de], a

jr_009_4ff6:
    add d
    jr z, jr_009_501a

    add hl, hl
    and l
    jr nc, jr_009_5067

    cpl
    dec h
    ld hl, $6a02
    add l
    ld [hl], b
    ld d, b
    db $e3
    xor c
    or l
    inc de
    ccf
    sub c
    ld c, d
    rrca
    add hl, de
    push bc
    ld e, h
    rla
    dec hl
    adc h
    ld l, e
    jr nz, jr_009_4fbc

    ld c, $16
    and [hl]
    or l

jr_009_501a:
    ld b, e
    dec [hl]
    dec b
    jr nc, jr_009_4ff6

    and $4f
    ld b, $44
    add h

jr_009_5024:
    ld a, [hl+]
    ld [hl], h
    pop de
    ld [hl], l
    ld a, [hl+]
    sbc a
    ld a, [bc]
    ld h, [hl]
    cp a
    add hl, hl
    ld d, h
    pop bc
    dec sp
    ld d, l
    ld d, $fa
    and h
    sbc e
    or h
    jp hl


    and l
    cp c
    xor b
    db $10
    and l
    cp d
    cp l
    ld d, e
    sub [hl]
    push de
    inc b
    ld a, [hl+]
    ld a, [bc]
    and d
    ld d, l
    ld [$13b4], a
    adc [hl]
    ld [hl+], a
    dec hl

Jump_009_504d:
    ld hl, $0815
    sub [hl]
    rrca
    adc $77
    and c
    ld d, d
    ld hl, $26a4
    ld l, d
    adc [hl]
    ld d, h
    jr c, jr_009_5024

    ld l, $42
    sub b
    di
    sub e
    adc b
    ldh [rHDMA3], a
    ld e, b

jr_009_5067:
    add a
    adc l
    sub [hl]
    xor c
    ld a, [de]
    adc c
    sub b
    ld a, [hl]
    jp nc, $cd21

    db $dd
    ld hl, $2b41
    adc b
    pop hl
    and l
    ld h, d
    sub e
    ld c, d
    jr jr_009_50e0

    dec h
    ld c, c
    and d
    ld d, l
    ld l, d
    sub b
    xor b
    jp z, $9389

jr_009_5088:
    add hl, de
    dec h
    ld hl, $e652
    call z, $c254
    ld [hl-], a
    add c
    add c
    ld e, d
    ld sp, $baa3
    jr nc, jr_009_50e5

    ld a, a
    ld sp, $526f
    ld de, $6d4b
    ld c, d
    ld b, d
    push bc
    add c
    ld c, h
    sub [hl]
    add hl, de
    ld d, [hl]
    ld l, $d4
    add hl, hl
    ld h, $d6
    ld b, $8d
    ld [de], a
    ld a, [de]
    ld [hl+], a
    dec d
    ld d, $d9
    db $ed
    ld d, l
    ld e, b
    ldh [$95], a
    ld d, l
    jp c, $8616

    ldh a, [$fc]
    ld [$8caa], a
    dec l
    ld [hl], b
    cp a
    adc a
    ld [hl+], a
    or l
    rst $10
    adc a
    add hl, hl
    add d
    ld a, [bc]
    inc [hl]
    rst $18
    xor h
    call nc, $ca78
    dec c
    ld hl, $080a
    or l
    dec e
    xor b
    inc h
    pop de
    inc e
    jr z, jr_009_5088

jr_009_50e0:
    ld sp, $26d5
    sbc b

Call_009_50e4:
    inc a

jr_009_50e5:
    inc d
    inc sp
    dec e
    ret z

    or b
    xor h
    ld b, h
    sub e
    inc e
    jp hl


    inc c
    ld h, c
    jr jr_009_513c

    jp nc, $8396

    ld [bc], a
    sbc b
    or h
    rst $00
    ld a, [de]
    sub a
    ld b, d
    sbc d
    inc hl
    daa
    dec bc
    ld b, b
    xor d
    ld h, [hl]
    pop bc
    call nz, $a76a
    inc c
    ld b, d
    and d
    add d
    ld h, b
    xor e
    sbc b
    add $f3
    dec c
    xor l
    pop bc
    add hl, hl
    sub d
    ld d, e
    ld a, [bc]
    ld l, b
    jp nz, Jump_000_1497

    sub b
    xor d
    pop af
    ld a, [hl+]
    inc c
    ld [hl], b
    ret


    dec hl
    ld a, [bc]
    db $f4
    dec c
    ld b, e
    inc h
    and c
    sbc d
    ld c, d
    ld b, d
    ld b, d
    sub c
    rrca
    pop hl
    dec h
    db $d3
    ld [bc], a
    ld l, h
    add h
    xor e
    pop af
    ld sp, $0814
    ld d, d

jr_009_513c:
    ld h, b
    sbc h
    rla
    ld b, b
    sub d
    and d
    add e
    ld [hl], $90
    push de
    ld c, c
    push bc
    rlca
    xor e
    ld b, l
    ld d, d
    ret z

    ld d, c
    db $e4
    jp z, $c7ba

    sub a
    jr z, jr_009_51cb

    ld a, e
    and b
    ld b, h
    cp b
    sub l
    ld d, e
    xor c
    ld [$5faf], a
    dec [hl]
    ld e, a
    rst $30
    jp nc, $fd16

    inc sp
    ld a, d
    ld hl, $ec1b
    xor b
    call Call_009_5848
    xor e
    adc [hl]
    dec [hl]
    sub [hl]
    ld c, h
    ld d, e
    db $76

jr_009_5175:
    ld b, $33
    cp a
    scf
    ld [hl], d
    sub d
    db $db
    db $d3
    ld a, e
    sub $29
    sbc c
    cp c
    jr c, jr_009_51ae

    add d
    sub b
    ld b, e
    ld a, [bc]
    and e
    sub d
    jp c, $9874

    and $aa
    and d
    ld a, b
    add sp, -$6b
    ld l, b
    ld a, [$ea79]
    ld a, [hl]
    and d
    and [hl]
    xor b
    ld b, b
    and h
    rst $38
    ld e, a
    or c
    sbc d
    ld b, e
    ei
    ld [de], a
    adc l
    cp $66
    xor a
    db $f4
    xor b
    ld c, b
    jp c, $95b9

jr_009_51ae:
    db $f4
    add a
    ldh a, [rSCY]
    add l
    ld a, l
    add hl, de
    ld d, b
    ld [hl], b
    cp [hl]
    sub c
    jr nc, jr_009_5175

    sbc d
    ld c, d
    rst $38
    jr nc, @-$48

    adc l
    and $b0
    ld [hl], l
    ld b, d
    jp z, $a116

    inc e
    adc [hl]
    rst $38

jr_009_51cb:
    ld [$f59c], a
    inc hl
    ld hl, sp+$27
    ld d, e
    ld hl, sp+$47
    ldh [$e0], a
    ld [hl], a
    xor d
    db $d3
    ld h, l
    ld a, [hl-]
    push de
    ld sp, $6c8b
    rla
    ld a, [$39a5]
    ld d, a
    and e
    ld h, h
    ld hl, $fdf9
    jr jr_009_5204

    jr c, jr_009_5245

    pop hl
    and b
    add l
    inc [hl]
    xor h
    inc [hl]
    pop de
    and d
    dec sp
    bit 1, l
    rst $18
    jp nc, Jump_000_0556

    jr nc, jr_009_5256

    adc b
    add l
    ret c

    adc b
    inc hl
    inc h

jr_009_5204:
    xor h
    pop de
    ld c, c
    ld h, b
    ld c, c
    ld d, b
    xor b
    jp z, $2625

    ld e, [hl]
    xor l
    ld d, l
    ld d, l
    dec h
    adc b
    ld d, d
    ld d, [hl]
    push af
    ld c, e
    ld c, l
    ld a, [de]
    push af
    xor d
    xor d
    sbc $2d
    ld c, c
    ld d, b

Jump_009_5221:
    add c
    jr nc, jr_009_5275

    adc h
    ld a, [hl-]
    ld h, c
    add c
    ld sp, $26a5
    jp nc, Jump_009_6220

    and d
    inc d
    ld h, d
    ld e, [hl]
    ld h, d
    jr z, jr_009_526d

    dec l
    ld c, e
    ld b, [hl]
    rlca
    ld [hl], b
    ld h, e
    jr @-$74

    ld c, c
    sub b
    adc b
    ld d, l
    ld [hl], l
    ld b, [hl]
    add sp, -$6c

jr_009_5245:
    ld a, [de]
    rla
    inc [hl]
    adc b
    sbc b
    adc $82
    and b
    add [hl]
    and e
    xor l

Jump_009_5250:
    daa
    ld h, h
    inc hl
    jp nz, Jump_000_34a3

jr_009_5256:
    cp d
    ld sp, $5450
    sub l
    ld c, [hl]
    cp b
    sub $22
    xor d
    pop hl
    ld b, c
    sub h
    sbc b
    db $e4
    adc l
    sub e
    ld [$e289], sp
    sub c
    adc d
    ld d, e

jr_009_526d:
    ld c, h
    push de
    sub c
    and b
    ld [c], a
    ld h, d
    ld e, b
    add hl, de

jr_009_5275:
    sub e
    add c
    jr nc, jr_009_52c3

    ld h, [hl]
    sbc b
    pop bc
    ld e, d
    ld e, $86
    xor b
    inc [hl]
    ld [c], a
    sub b
    ld c, b
    ld c, b

Call_009_5285:
    ld a, a
    rst $38
    sub $4d

Jump_009_5289:
    dec e
    db $f4
    sbc $31
    adc [hl]
    ld [$8586], sp
    ld a, [$69b3]
    ld b, d
    cpl
    sub h
    jp c, $1014

    ld d, h
    xor d
    scf
    adc c
    ld d, c
    and b
    ld a, a
    ld c, h
    and c
    adc [hl]
    adc c
    ld h, $a0
    xor d
    inc hl
    dec h
    ld [hl-], a
    ld d, c
    ld d, e
    sbc d
    ld [hl+], a
    and h
    add l
    cp $05
    and d
    ld [c], a
    jr nz, jr_009_5309

    ld d, e
    inc b
    sub $83
    ld b, c
    ld d, h
    ld d, b
    ld b, l
    ld d, $75
    add hl, de
    or l

jr_009_52c3:
    jp nz, Jump_009_4930

    ld c, h

jr_009_52c7:
    cpl
    push af
    ld [hl], b
    ld c, e
    ld a, [$a41a]
    daa
    ld hl, sp-$22
    ld d, d
    dec h
    add d
    sub b
    or l
    xor d
    adc l
    ld a, [hl+]
    and e
    ld c, c
    ld l, $41
    ld a, [de]
    xor b
    ldh a, [$b5]
    ld l, c
    cp d
    ld a, b
    ld a, [$975f]
    add h
    sbc l
    add hl, hl
    ret nz

    adc h
    dec bc
    ld c, d
    jp $cba9


    ld a, [bc]
    ld l, d
    ret nc

    ld c, d
    ld l, c
    ld [hl+], a
    sbc e
    ld l, h
    scf
    and a
    inc sp
    ld c, d
    inc c
    ld c, h
    ld h, h
    add e
    ld b, l
    or c
    ld [hl], c
    ld c, b
    xor c
    add hl, hl
    inc c
    ld l, [hl]

jr_009_5309:
    push af
    ld [de], a
    adc l
    jr jr_009_52c7

    xor e
    ld a, [$bc9a]
    ld b, d
    sub e
    add l
    and $29

jr_009_5317:
    add hl, bc
    ld [de], a
    db $fd
    adc e
    rst $38
    rst $38
    xor e
    call nz, $93ca
    add d
    db $e4
    xor b
    xor l
    ld b, h
    ccf
    xor l
    jp nz, Jump_009_55a5

    ldh [$84], a
    add a
    ld [$4530], a
    ld c, d
    dec hl
    ld b, b
    rst $10
    ld [hl], c
    inc d
    dec d
    ld b, $29
    ld c, e
    dec b
    ld e, b
    ld [hl], h
    ld h, l
    jr z, jr_009_5317

    cp b
    and h
    ld a, [hl+]
    ld b, d
    cp h
    sub c
    and d
    xor b
    ld d, b
    ld b, [hl]
    jp nc, Jump_000_148c

    ld de, $5073
    ld e, b
    ld hl, $a61b
    ret nc

    ld d, d
    inc c
    sbc e
    and a
    adc a
    rlca
    ld d, $d2
    sub e
    ld [bc], a
    ld a, b
    ld c, e
    and d
    sub b
    pop de
    db $10
    and c
    jr z, @+$72

    call nc, Call_000_3673
    ld a, [bc]
    sub b
    sbc d
    ld c, h
    call nz, Call_009_73aa
    ld hl, $4455
    ld d, d
    rla
    add a
    call nz, $af50
    jp nz, $31f0

    xor d
    ld a, [hl+]
    or l
    ld b, h

jr_009_5383:
    ld b, c
    cpl
    add hl, hl
    dec bc
    db $fd
    ld [bc], a
    ret nc

    ld d, h
    ld a, [bc]
    sbc c
    jp nc, $aa8a

    add d
    ld [de], a
    dec d
    ld sp, hl
    dec d
    pop hl
    and l
    ld a, e
    ld b, b
    cp d
    ld l, d
    and b
    add [hl]
    jr jr_009_541b

    pop af
    or l
    dec bc
    ld [de], a
    or $c6
    res 0, d
    pop bc
    db $f4
    add d
    ld b, h
    sbc b
    jp nc, $82a0

    adc a
    sbc e
    or b
    ld h, d
    add l
    db $eb
    add e
    ld c, e
    ld h, $10
    ld b, c
    rla
    and $91
    db $10
    inc hl
    ld d, b
    push de
    inc de
    add e
    jp z, $e252

    and e
    rst $20
    ld a, [hl+]
    jp nc, $b44c

    ld [$5348], sp
    ld d, b

Jump_009_53d0:
    ld d, b
    xor b
    ld a, c
    sub a
    dec c
    dec bc
    ld c, d
    pop bc
    jr nz, jr_009_5383

    ld a, [de]
    ld e, e
    add h
    adc d
    scf
    ret


    sub a
    ld de, $3763

Jump_009_53e4:
    ret z

    ld b, h
    inc hl
    ld de, $11b4
    ld [hl], d
    cp a
    add hl, de
    xor c
    ld d, d
    ld b, l
    add hl, sp
    ld d, l
    sbc [hl]
    inc c
    add hl, bc
    ld [hl], d
    ld a, c
    ld b, b
    ld b, h
    or c
    ld h, h
    ld d, [hl]
    sub c
    ld e, a
    db $fd
    inc [hl]
    ld c, b
    and d
    ld h, a
    and l
    ld d, h
    call $a0c9
    and [hl]
    ld e, a
    and h
    pop de
    ld d, d
    ld d, d
    ld d, c
    ld e, b
    ld e, c
    ld [hl-], a
    ld d, a
    sub c
    ld a, d
    ld h, $82
    ld b, d
    adc h
    sub [hl]
    rst $18

jr_009_541b:
    dec l
    ld h, $f8
    jp nc, $39e3

    ld b, l
    ld e, h
    pop de
    ld e, e
    inc sp
    and d
    inc hl
    ld a, [hl-]
    dec b
    ld c, h
    push de
    ld c, l
    jr z, @+$12

    ld d, b
    ld d, b
    ld d, c
    ld h, d
    ld h, h
    jp z, $aa86

    dec bc
    ld [hl], b
    and h
    ldh [$ae], a
    sbc h
    inc h
    ld sp, $1958
    dec [hl]
    ld b, e
    ld d, b
    ld a, d
    ld a, [bc]
    add l
    ld hl, $4135
    ld [hl+], a
    rst $00
    dec bc
    ld [$68a3], a
    cp d
    inc a
    ld sp, hl
    sub d
    ld e, d
    ld b, d
    ld de, $b309
    ldh [$e1], a
    sub [hl]
    adc l
    ld h, [hl]
    ld l, b

jr_009_545f:
    ld a, b
    ld a, b
    ld d, [hl]
    ld b, h
    ld b, h
    sbc d
    ld [hl-], a
    ld de, $212b
    ld [hl+], a
    xor h
    ld h, a
    dec b
    and e
    ld h, c
    add [hl]
    ld d, d
    ld [hl], $68
    and c
    ld l, e
    ld b, $09
    rrca
    cp [hl]
    ld l, e
    ld d, d
    xor d
    db $10
    ld d, a
    db $fd
    dec de
    ccf
    jp nc, Jump_000_0a09

    rst $38
    and [hl]
    sub l
    call z, Call_000_3fcc
    rst $38
    ld sp, hl
    xor d
    inc e
    dec de
    ld l, l
    ld [hl], l
    ld e, a
    sbc d
    inc h
    ld a, b
    ld [hl], b
    jp nc, Jump_009_6693

    cp c
    ld [hl-], a
    rrca
    ld b, h
    and a
    rrca
    ld de, $9a29
    ld l, l
    rla
    ld b, a
    rst $00
    add b
    ld [hl], a
    cp h
    ld b, l
    rst $38
    db $d3
    ret nc

    xor b
    ld a, [hl+]
    cp l
    dec sp
    sub l
    ld d, e
    ld d, l
    db $e4
    adc e

jr_009_54b6:
    adc [hl]
    and a
    ld [$94af], a
    jp z, $b862

    add sp, $52
    ld d, l
    ld b, d
    sbc c
    ld h, $34

Call_009_54c5:
    ld [c], a
    sbc l
    jr c, jr_009_545f

    dec b
    ld l, c
    ld [$6422], sp
    push de
    ld a, h
    pop hl
    xor [hl]
    ld d, $22
    ld b, d
    ld b, [hl]
    dec h
    call nc, $a3c7
    adc [hl]
    or [hl]
    add l
    ld b, c

jr_009_54de:
    adc e
    sub a
    cp d
    dec sp
    xor b
    add [hl]
    inc b
    ret


    ld a, l
    adc h
    call nc, $0816
    jp c, Jump_000_1c8c

    add $8d
    or b
    or d
    sub e
    ld c, d
    jr nc, jr_009_5549

    sub l
    and e
    jr z, jr_009_54de

    sub h
    jr nz, jr_009_554a

    ld d, $8d
    and e
    call nz, Call_000_2181
    inc a
    rlca
    ld sp, $528b
    ld d, c
    add [hl]
    inc b
    ld d, e
    adc d
    add d
    rla
    sub d
    and l
    ld e, [hl]
    ld [$8151], sp
    add c
    inc d
    db $e4
    and d
    jr @-$2d

    inc hl
    inc c
    jr jr_009_54b6

    push af
    inc c

Jump_009_5521:
    pop hl
    ld h, h
    jr nz, jr_009_557d

    ld d, l
    xor d
    dec b
    adc b
    add l
    ld hl, sp-$46
    ld d, e
    ld l, d
    or l
    xor d
    and l
    ld d, h
    add h
    jp nz, Jump_009_7a8a

    ld c, [hl]
    ld a, [de]
    adc b
    xor d
    and d
    and d
    inc h
    jp c, Jump_000_3822

    ld d, h
    reti


    adc d
    and l
    ld b, c
    ld a, [hl+]
    ld d, l
    adc [hl]
    dec hl

jr_009_5549:
    ld d, d

jr_009_554a:
    sub l
    and l
    ld d, h
    ret


    inc b
    or l
    adc [hl]
    ld a, [hl-]
    rst $38
    ret nc

    xor b
    xor d
    ld c, h
    xor d
    xor b
    add h
    pop af
    ld a, l
    scf
    ld h, e
    xor l
    ld c, e
    ld b, a
    db $e3
    ld d, [hl]
    dec sp
    sub h
    and [hl]
    and e
    ld b, l
    adc a
    ld b, $d4
    adc d
    ld d, e
    ld a, [hl-]
    ld c, a
    ld c, $bf
    ld d, l
    di
    dec b
    ld h, e
    ret z

    xor c
    ld d, l
    ld e, d
    adc l
    scf
    adc h
    xor d

jr_009_557d:
    sbc [hl]
    call z, $859e
    ld [bc], a
    ld d, h
    db $76
    dec l
    ld d, h
    xor c
    xor h
    ld e, h
    ld [hl], l
    ld h, $74
    sub a
    add hl, de
    rst $00
    ld [hl], e
    cp $91
    rla
    add hl, hl
    ret nz

    sbc h
    ld a, [hl-]
    or b
    ld b, h
    ld e, d
    ld sp, $fa83
    sbc b
    and a
    ld e, $d4
    ld [de], a
    inc l
    ld c, h
    ld b, e

Jump_009_55a5:
    jp nz, $a5ab

    ld b, a
    inc h
    ld c, h
    add hl, bc
    ld d, d
    db $ed
    ld a, e
    db $f4
    ld b, l
    dec c
    dec c
    dec de
    call nc, Call_009_5d5a
    xor a
    add l
    inc d
    cp d
    ld a, [hl-]
    or c
    cp h
    ld h, h
    sub a
    ld d, h
    ld d, d
    cp [hl]
    ld de, $de49
    sub d
    xor d
    call c, Call_009_7a14
    inc d
    ld a, [bc]
    add hl, bc
    add hl, bc
    adc h
    ld [hl], a
    call nz, $82a0
    add hl, bc
    ld [$8242], sp
    ld [hl], d
    ld b, h
    dec [hl]
    dec h
    rlc d
    db $10
    inc h
    inc l
    jr z, jr_009_560a

    inc [hl]
    ld a, [hl+]
    add hl, hl
    sbc d
    pop bc
    db $10
    adc d
    db $eb
    ld a, [$729c]
    inc [hl]
    ld e, d
    sub c
    jr jr_009_5630

    push bc
    jp nc, $2f71

    xor d
    cp a
    pop de
    and h
    ld e, e
    ld a, d
    ld [hl], c
    call nz, Call_009_47d5
    ld c, h
    ld [hl], e
    daa
    ld d, d
    ld de, $f137
    ret


    add hl, hl

jr_009_560a:
    add d
    cp a
    ld a, [$a996]
    sub d
    ld [hl], d
    push de
    ld d, h
    ld sp, $ea55
    ld b, l
    ld [$f9ab], a
    reti


    ld b, c
    sbc b
    rst $10
    xor d
    dec d
    ld d, [hl]
    rst $00
    ld l, d
    ld e, d
    ld h, e
    ld d, a
    rst $38
    ld e, $0a
    ld d, l
    ld [$ad96], a
    ld e, $1c
    and l

jr_009_5630:
    ld d, l
    rst $38
    push af
    add hl, hl
    db $e3
    ld d, h
    xor c
    add d
    or l
    ld e, $65
    ld d, l
    ld b, [hl]
    ldh [rLY], a
    cp b
    sub a
    rst $38
    push af
    jr c, jr_009_565a

    ld e, d
    or a
    ld c, b
    and e
    dec [hl]
    db $fd
    call c, Call_009_4331
    db $f4
    inc e
    push bc
    jp hl


    ld l, b
    ld [hl+], a
    jr z, jr_009_56b6

    cp e
    adc h
    jr z, jr_009_5672

jr_009_565a:
    db $eb
    cp d
    ld hl, $d25d
    dec a
    ld d, e
    ld a, [hl+]
    ld hl, $20a2
    cp l
    ld [hl+], a
    and e
    ld c, b
    inc de
    dec d
    db $f4
    db $dd
    ld b, c
    ld c, e
    ld a, d
    add [hl]
    ld c, c

jr_009_5672:
    ld c, h
    ld d, h
    inc d
    add h
    ld d, c
    ld c, b
    ld c, b
    di
    dec h
    ld e, c
    and d
    jr z, jr_009_56a9

    ld hl, $39f3
    adc c
    ld b, c
    ld c, c
    rst $00
    ld a, b
    sub $90
    ld b, c
    add hl, de
    inc sp
    ld c, l
    xor d
    ld a, [hl+]
    and l
    ld e, d
    adc a
    add [hl]
    call c, $aa8a
    sbc l
    ld e, $60
    and [hl]
    xor d
    push de
    inc b
    and a
    daa
    ld a, c
    rst $10
    ld sp, $138d
    xor d
    ld h, a
    ld a, [de]
    sbc $a1

jr_009_56a9:
    ld d, a
    push hl
    rst $00
    dec bc
    rst $30
    ld a, [hl+]
    ld [hl], c
    xor d
    ld b, h
    rla
    cp c
    add d
    ld h, h

jr_009_56b6:
    rst $38
    jr @+$60

    ld h, d
    sub b
    sub [hl]
    add $10
    pop de
    adc d
    db $10
    ld b, c
    ld [bc], a
    sub c
    ld a, [hl+]
    xor c
    or l
    ldh a, [rLCDC]
    add l
    ld l, b
    ld h, h
    dec hl
    ld b, [hl]
    or d
    and h
    rst $08
    push de
    ld a, [hl]
    ld [hl], l
    ld d, l
    rra
    ld [de], a
    ld [hl], a
    cp h
    ld h, l
    ld d, l
    ld c, [hl]
    ld d, l
    ei
    call nc, Call_009_5fe0
    ld [$b57a], a
    scf
    ld a, e
    db $fc
    ld l, e
    ld c, l
    ld e, $8c
    add hl, hl
    ld b, d
    db $f4
    pop de
    ld e, l
    add c
    ld a, [c]
    inc d
    add l
    ld d, l
    and e
    ld c, d
    add hl, hl
    ld c, l
    jr nz, jr_009_574f

    or l
    rrca
    ld [$8da0], a
    dec h
    ld hl, $4c41
    sub d
    dec [hl]
    ld hl, $e5e8
    ld a, d
    add hl, hl
    ld [hl], $48
    xor a
    pop bc
    ld a, [bc]
    ld e, a
    push af
    and e
    add hl, de
    ld e, $39
    jr nz, @-$34

    ld sp, hl
    ld a, [bc]
    ld h, $bf
    ld c, e
    adc h
    jp c, Jump_009_5d34

    rst $38
    or h
    pop de
    ld l, l
    daa
    push af
    ld d, l
    ldh a, [$8d]
    jr z, jr_009_574f

    rlca
    ld b, [hl]
    sub e
    dec de
    call nc, Call_009_6b8b
    ld a, b
    jp nc, Jump_009_4ca0

    rra
    ld b, d
    ld c, l
    ld l, d
    add sp, $2a
    inc c

jr_009_573e:
    sub $82
    or d
    sbc d
    ld a, [bc]
    sub b
    adc c
    and d
    sbc a
    db $f4
    or h
    call $9848
    adc d
    dec bc
    ld e, b

jr_009_574f:
    ld sp, $2f5e
    rst $38
    adc a
    ld a, [bc]
    or a
    ld a, [$bf31]
    db $d3
    adc c
    ld c, c
    ld c, [hl]
    res 3, l
    ld d, d
    inc hl
    add d
    ld h, d
    inc l
    ld [c], a
    ld e, a
    xor b
    xor d
    cp l
    ld [hl-], a
    and b
    xor h
    and $7a
    dec h
    ld c, h
    xor l
    ld sp, $a5a8
    ld d, h
    pop de
    ldh [$fd], a
    ld b, d
    or h
    add l
    dec h
    ld c, h
    ld l, l
    add e
    rst $28
    xor a
    ld c, h
    jr z, jr_009_573e

    add sp, $12
    jr nz, jr_009_57d1

    ld d, e
    ld b, $fe
    add hl, de
    sub c
    or h
    sbc d
    inc sp
    sub d
    db $e3
    ld l, d
    xor c
    add l
    ld a, [bc]
    dec h
    ld b, [hl]
    adc l
    sub e
    adc [hl]
    adc e
    add sp, $31
    ld d, h
    ld h, h
    push de
    jp nz, Jump_000_1583

    inc sp
    ld h, e
    ld a, [de]
    jp nz, $c7ea

    dec b
    ld [hl-], a
    adc c
    jp nz, $aa08

    inc [hl]
    ld e, a
    and b
    adc c
    ld d, l
    ld e, h
    jr nc, @+$54

    ld d, l
    and b
    ld b, e
    jp Jump_000_2a1a


    adc b
    ld h, b
    adc b
    ld c, d
    ld d, d
    xor l
    ld a, [bc]
    xor a
    xor b
    db $76
    dec h
    db $e3
    dec bc
    ld l, d
    ld d, d
    rst $10
    adc h
    ld l, a
    add d

jr_009_57d1:
    add hl, hl
    dec h
    ld a, [hl]
    inc [hl]
    xor a
    ld b, c
    ld d, a
    add sp, -$26
    cp a
    ld d, l
    ld a, a
    and e
    adc [hl]
    xor d
    adc [hl]
    ld a, d
    xor b
    db $db
    ld a, b
    ret


    ld c, c
    jp z, $0882

    ld h, b
    sbc h
    ld [$c461], sp
    ld a, d
    ldh [$9b], a
    cp h
    cp [hl]
    ld c, d
    sbc d
    pop af
    adc a
    add h
    ld b, d
    sbc d
    xor b
    ld d, b
    ld [hl+], a
    adc [hl]
    sub b
    sub d
    sbc e
    ld h, h
    pop bc
    sbc c
    ret nz

    xor d
    adc d
    sub e
    ld hl, $f1c2
    adc d
    ld l, $08
    ld [hl-], a
    add d
    ld h, l
    inc bc
    ld [hl], h
    ld sp, hl
    add h
    ld c, a
    sub a
    cp a
    ld [hl], b
    pop de
    ld de, $a3ba
    dec d
    ld c, e
    sub c
    ld d, c

Jump_009_5822:
    dec l
    rst $18
    ld d, e
    inc e
    ret


    ld c, e
    pop af
    ld l, a
    ld c, b
    ld b, a
    inc d
    ld l, a
    rlca
    db $fd
    ld b, [hl]
    db $10
    ret c

    ld e, d
    ld d, [hl]
    ld a, [hl+]
    and e
    add $b8
    ret nz

    and h
    ld c, [hl]
    ld c, e
    sub l
    dec c
    ld [$d24e], a
    add $be
    ld b, h
    dec [hl]
    inc b
    dec hl

Call_009_5848:
    ld a, c
    and l
    ld a, a
    cp a
    add $d8
    ldh [$a4], a
    ld sp, $5428
    ld c, l
    inc e
    add hl, hl
    and d
    ld c, l
    inc h
    ld sp, $1c1e
    dec hl
    rst $00
    ld [hl], h
    ld c, a
    sub d
    sub a
    dec b
    ld [hl], h
    ld a, [hl+]
    db $76
    ld h, h
    ld a, [$6746]
    ld d, l
    add hl, sp
    ld l, e
    ld d, l
    inc l
    ld l, d
    adc e
    ld l, c
    inc c
    ld l, d
    db $fc
    dec hl
    ld b, a
    dec a
    or c
    add h
    ld h, d
    rst $28
    ldh [$d1], a
    ld a, [bc]
    add hl, hl
    adc d
    ld l, c
    ld de, $9040
    adc d
    ld [$f47f], sp
    ld e, $3b
    inc c
    ld c, d
    ld b, a
    add $b8
    ld e, l
    ret nc

    dec [hl]
    ld a, a
    inc b
    add $69
    ld d, d
    pop bc
    ld a, [$e060]
    reti


    inc e
    adc l
    or c
    add hl, bc
    xor l
    push hl
    ld b, e
    ld a, h

jr_009_58a5:
    ld e, a
    dec c
    sub c
    dec b
    ld [de], a
    sbc h
    ld l, c
    ld sp, $7971
    add h
    inc d
    adc d
    ld [$9a42], sp
    ld a, $10
    ld d, b
    add hl, hl
    sbc h
    ld h, b
    add h
    ld d, h
    ld d, $42
    ld a, [bc]
    ld h, e
    ld de, $0405
    ld d, h
    ld d, d
    ld e, d
    db $fc
    add hl, bc
    ld c, b
    ld d, h
    dec d
    xor b
    ld l, [hl]
    and c
    inc h
    ld b, c
    sub e
    jr @+$66

    ld hl, $45c4
    ld h, $5a
    add a
    inc c
    dec [hl]
    inc d
    add $9c
    inc c
    sub h
    or c
    sbc h
    ld c, $5c
    ld c, d
    pop de
    push bc
    add l
    inc [hl]
    ld [hl], c
    ld d, h
    xor d
    call nc, $187c
    ld b, h
    or h
    ld d, a
    db $fd
    ld b, l
    ld e, a
    call $a29e
    ld a, a
    ld [$603a], a
    adc [hl]
    ld l, d
    jr nc, @-$70

    adc e
    ld d, d
    ld d, c
    ld h, l
    jr c, jr_009_58a5

    cp [hl]
    inc d
    db $10
    and b
    db $d3
    adc l
    jp c, $b0a7

    ld d, e
    ld a, e
    ld a, b
    sbc c
    xor e
    or h
    ldh [rHDMA2], a
    xor b
    xor c
    ld c, l
    ret nc

    ld b, d
    ld b, d
    adc [hl]
    ld h, a
    and [hl]
    and b
    ld d, e
    sbc c
    ld c, b
    cp l
    ld b, c
    ld a, [bc]
    ld d, e
    add l
    ld c, d

jr_009_592b:
    and c
    rst $18
    di
    add [hl]
    push af
    ld d, l
    add [hl]
    xor a
    adc $2a
    xor b
    di
    and $88
    ret nz

    db $e4
    and e
    inc e
    add hl, bc
    add a
    pop de
    ret c

    jp hl


    pop de
    ld a, [bc]

jr_009_5944:
    ld sp, hl
    reti


    rst $18
    db $e4
    ld d, b
    and a
    ld l, $b1
    ld [$6763], sp
    ld [bc], a
    or $1f
    and c
    ld [bc], a
    add hl, sp
    jp $c315


    ld c, e
    ld b, a
    inc c
    ld c, e
    rla
    ld e, c
    add $a1
    dec e
    sub d
    ld [$4f76], a
    inc de
    ld b, h
    daa
    inc de
    rst $38
    add h
    jr jr_009_592b

    ld [hl], c
    ld d, l
    ld b, [hl]
    ld de, $e0f0
    ld d, l
    xor c
    db $f4
    pop af
    inc d
    ld l, d
    ld d, l
    ld a, [hl-]
    rst $18
    add a
    inc b
    ld a, [hl-]
    cp [hl]
    sub l
    ld d, [hl]
    or l
    dec b
    ld a, c
    dec h
    ld d, e
    inc d
    ccf
    db $e3
    rla
    add hl, bc
    and b
    add d
    ld h, $b4
    adc b
    ld l, h
    ld e, d
    inc hl
    sub l
    ld d, l
    db $eb
    sub $4a
    ld d, a
    dec de
    cp [hl]
    ld l, $aa
    xor d
    ld a, [de]
    ld b, d
    jr nc, jr_009_5944

    add l
    ld c, b
    ld c, h
    ld d, [hl]
    sub e
    sbc c
    ld [$25ce], sp
    dec h
    ld [$65d1], sp
    ld h, c
    cp a
    cp $5a
    dec d
    sbc b
    sbc $04
    jr z, jr_009_5a0d

    dec b
    ld l, b
    jr @-$24

    inc d
    jr nz, jr_009_5a03

    ld a, [hl+]
    xor b
    add l
    adc d
    ld b, l
    push af
    dec b
    rra
    and b
    ld h, c
    and h
    ccf
    ld hl, sp-$5c
    sbc d
    add hl, de
    add a
    db $ed
    ld e, h
    dec d
    sbc d
    xor d
    ld d, c
    ld h, h
    ld h, b
    and d
    ld a, c
    inc d
    cp c
    ld c, $a4
    ld h, c
    ld b, d
    adc b
    ld e, l
    ld c, c
    ld h, e
    inc [hl]
    ld [de], a
    ld d, b
    and h
    push bc
    ld d, d
    ld [hl+], a
    and c
    ld e, d
    add c
    ld l, $85
    add a
    ld [$8260], sp
    ld l, $a2
    or d
    sbc d
    call nc, $2812
    add l
    sbc d
    and l
    ld e, d
    ld d, d
    add hl, hl

jr_009_5a03:
    ld h, b
    push af
    adc d
    adc d
    and e
    ld l, d
    and l
    ld e, d
    ld d, e
    inc d

jr_009_5a0d:
    ldh a, [$2a]
    ld d, c
    ld b, a
    ld d, e
    rst $00
    adc d
    add d
    ld [de], a
    sbc l
    rst $28
    push bc
    jp nc, $8aa9

    and h
    ld [hl+], a
    xor c
    ld a, [hl+]
    db $10
    ld sp, $056d
    add a
    pop de
    inc d
    ld [$0363], a
    inc b
    cpl
    ld b, h
    ld b, e
    ret nc

    dec [hl]
    ld d, a
    ld hl, sp+$32
    add hl, bc

Jump_009_5a34:
    ld a, e

jr_009_5a35:
    jr z, jr_009_5a82

    sub l
    ld d, a
    rst $38
    add a
    rst $38
    ld a, h
    ld h, l
    pop de
    add hl, bc
    and e
    jp hl


    inc [hl]
    ld de, $099a
    inc l
    ld de, $0a4d
    ld b, e
    ld h, b
    and [hl]
    ld c, h
    dec bc
    ld c, d
    add l
    cp $35
    ld [bc], a
    ld d, $c8
    ld b, [hl]
    sub c
    ld c, d
    add h
    ld b, a
    cp $f3
    inc b
    add hl, bc
    and e
    inc d
    adc e
    inc [hl]
    jr c, jr_009_5ada

    inc c
    ret


    rrca
    dec d
    cp h
    or b
    ld hl, $db17
    add a
    push bc
    ld d, b
    push de
    ld d, l
    dec b
    ldh [$c1], a
    xor d
    ld e, $f0
    and h
    jp Jump_000_184b


    push de
    jr z, jr_009_5add

    jr nz, @-$72

jr_009_5a82:
    sub [hl]
    add e
    sub b
    sbc b
    jr nc, @+$2f

    ld [bc], a
    sub b
    ei
    and c
    ld b, l
    jr z, jr_009_5a35

    dec l
    dec bc
    ldh a, [$c4]
    ld d, l
    ld a, [bc]
    add h
    ld b, l
    ld b, d
    xor d
    ld c, d
    adc h
    ld c, l
    or a
    db $fc
    ld d, h
    ld d, [hl]
    call nz, $0dd5
    ld a, [hl+]
    db $f4
    rla
    dec d
    ld b, a
    ld e, l
    ld d, b
    jp nc, Jump_000_29bc

    ld [c], a
    ld d, d
    sub b
    ld b, h
    and c
    ld a, a
    call nc, Call_009_5285
    sub l
    ld a, [c]
    ld [$87e0], a
    rst $28
    rst $38
    db $fc
    add h
    jp nz, $ead1

    db $f4
    sbc h
    ld l, e
    ld d, b
    ld c, h
    ld e, $81
    ld d, l
    ld [hl], c
    ld [hl], h
    add hl, hl
    add c

jr_009_5ace:
    ld c, h
    scf
    and c
    ld d, l
    ld d, [hl]
    add c
    ld d, h
    ld h, $2d
    ld [$6a1a], sp

jr_009_5ada:
    sub h
    ld a, [hl+]
    ld c, d

jr_009_5add:
    ld h, d
    ld e, [hl]
    and [hl]
    ld b, [hl]
    sub h
    ld h, h
    ld e, h
    add h
    ld [de], a
    ld d, h
    ld e, b
    ld [de], a
    ld [c], a
    and c
    ldh a, [$4c]
    dec a
    ld [$6d55], sp
    ld h, b
    ld h, d
    inc d
    pop bc
    ld c, b
    xor [hl]
    and l
    cp $bd
    ld b, e
    ld l, b
    cp d
    rst $20
    ld d, $bc
    add hl, sp
    ld a, [de]
    ld a, [bc]
    ld d, e
    dec bc
    sub h
    ld [hl+], a
    add hl, hl
    ld [hl+], a
    sub c
    or $32
    xor a
    xor d
    ld d, b
    ld c, b
    ret z

    di
    sbc d
    cp a
    ld e, h
    adc a
    ld a, [hl-]
    ld l, d
    xor b
    pop af
    and $0a
    ld [hl], c
    add hl, hl
    add l
    rst $38
    ld d, d
    cp a
    ld [$7e45], a
    ld h, e
    ld h, e
    rst $38
    rst $18
    xor l
    ld a, e
    inc bc
    jr jr_009_5ace

    rst $38
    db $fc
    dec d
    ld a, [$143e]
    ld h, d
    db $fd
    ld c, d
    db $fd
    dec hl
    ld d, a
    xor $60
    xor e
    rst $38
    xor l
    ld a, a
    ld e, [hl]
    or a
    rla
    pop hl
    ld a, a
    db $ed
    ld a, e
    ld l, d
    db $f4
    ret


    ld a, l
    rst $38
    ld a, [hl]
    adc a
    dec sp
    rst $28
    ld l, [hl]
    ld h, b
    and c
    db $fd
    ld c, d
    cp $0f
    di
    pop de
    add a
    ld [$aaee], a
    push de
    cpl
    ld c, d
    ld h, d
    rst $10
    db $fd
    inc bc
    pop hl
    ld a, a
    db $eb
    ld h, [hl]
    sbc a
    rla
    cp $17
    adc a
    sbc h
    push de
    xor $f7
    sbc l
    inc [hl]
    dec d
    rra
    ld c, $66
    cp d
    ld d, $93
    jp z, $a362

    ret z

    adc h
    inc de
    ld b, h
    db $eb
    push de
    ld d, l
    ld c, h
    ret c

    inc de
    sub c
    ld d, [hl]
    xor d
    xor d
    xor d
    sub h
    ld a, [de]
    adc c
    ld c, e
    sub l

Jump_009_5b91:
    dec h
    ld l, b
    dec d
    ld c, [hl]
    dec bc
    db $d3
    ld e, c
    ld a, [de]
    ld h, d
    and h
    ld e, $23
    ld c, l
    dec l
    dec [hl]
    sub e
    ld c, e
    jp nc, Jump_009_4c6e

    db $e4
    ld d, e
    dec b
    adc [hl]
    ld e, a
    call $ca14
    ld c, [hl]
    ld l, e
    ld h, e
    ld c, d
    ld [hl-], a
    ld c, [hl]
    rlca
    ret z

    db $db
    adc e
    ld d, l
    ld [$38c6], sp
    db $10
    and c
    add d
    ld a, [c]
    ld e, a
    xor d
    ld d, e
    inc c
    db $e4
    ld b, a
    call nc, $7820
    cp a
    ld sp, $6da3
    ld d, d
    xor d
    dec b
    ld sp, $28a3
    db $e4
    cp l
    add l
    ld [hl-], a
    or e
    add hl, de
    adc [hl]
    dec l
    and e
    ld l, d
    inc b

jr_009_5bdd:
    jp nz, $f014

    ld l, b
    add h
    ld a, [c]
    xor b
    xor c
    jr nc, jr_009_5c30

    ld c, [hl]
    sub a
    adc h
    ld d, d
    sub d
    ld a, [de]
    inc b
    pop hl
    ld d, c
    ld hl, sp-$2e
    ld hl, $1616
    inc b
    ld e, b
    add h
    jp nz, $5489

    jp z, Jump_009_6322

    ld d, $21
    add d
    and h
    pop bc
    adc b
    xor d
    ld d, e
    sbc [hl]
    add hl, hl
    adc b
    ld e, d
    inc [hl]
    xor b
    ld [$8e96], a
    ld c, c
    adc $fd
    add hl, hl
    db $e4
    ccf
    inc de
    rst $20
    adc h
    db $fc
    ld c, e
    sbc c
    cp d
    ld [hl], h
    cpl
    ld [$0aae], a
    sub d
    cp a
    ld l, c
    call nz, $55b5
    ld d, l
    ld d, a
    rst $38
    rst $38
    pop af
    add hl, de
    ld a, l
    jr z, jr_009_5bdd

jr_009_5c30:
    inc bc
    sub $a4
    inc h
    push de
    ld a, a
    and l
    ld h, [hl]
    ld [de], a
    dec [hl]
    and h
    ret


    ld d, $46
    sbc c
    ld e, [hl]
    sub c
    sbc c
    ld c, c
    sbc h
    or c
    dec sp
    ld h, $56
    adc [hl]
    ld h, b
    add h
    ld [hl], d
    or l
    sbc c
    ld e, e
    add $32
    ld [hl], b
    inc h
    jp nc, Jump_009_666b

    ld c, c
    pop bc
    ld b, b
    add e
    and c
    ld h, l
    xor d
    cp c
    adc [hl]
    ld [hl], b
    ld h, h
    ld h, c
    and c
    ld a, c
    rrca
    call nc, $84b1
    and [hl]
    ret


    inc e
    inc e
    xor h
    rrca
    inc d
    or c
    sbc [hl]
    ld l, e
    xor l
    rlca
    adc e
    add e
    and $39
    sub h
    ld [hl], c
    cp l
    ldh a, [$3e]
    ld h, b
    ld sp, hl
    adc [hl]
    reti


    pop bc
    ld a, l
    dec bc
    pop af
    ld l, a
    ld a, [$8265]
    ld [hl], d
    add $2e
    rra
    jp hl


    adc e
    call nz, Call_009_4b27
    add e
    rst $18
    and $1c
    ld l, $73
    xor e
    inc bc
    inc b
    rla
    jp hl


    inc a
    rrca
    ld h, b
    db $e4
    ld h, $8b
    db $f4
    ld h, a
    ld sp, hl
    inc e
    ldh a, [$f0]
    ld h, b
    or $0e
    xor c
    adc d
    ld a, [$5ea9]
    ld b, a
    call nz, Call_009_70c4
    db $fc
    ld b, l
    and l
    inc a
    ld b, l
    ld d, [hl]
    xor a
    sbc h
    ld [hl], c
    ld c, h
    dec hl
    ld b, [hl]
    or l
    dec e
    ld [hl], l
    inc e
    and b
    ld b, h
    cp b
    push de
    xor d
    xor b
    db $e3
    ld e, d
    ld a, [hl-]
    ret c

    db $ed
    ld h, e
    cp d
    ld a, [hl-]
    push de
    ld h, e
    or c
    inc a
    add hl, de
    ld a, $06
    inc a
    jr @-$4a

    ld a, a
    adc $49
    ld c, c
    ret nc

    rst $38
    add hl, sp
    xor d
    ret c

    ccf
    adc $ba
    and l
    ld d, e
    pop bc
    xor b
    pop af
    ld h, a
    ld a, [de]
    ld sp, $84d2
    db $76
    ld sp, $aa92
    ld l, [hl]
    push bc
    xor l
    ld b, d
    reti


    or h
    ld h, c
    inc d
    call $aa98
    add $d3
    ld a, $63
    ld hl, $994a
    rst $28
    ld b, [hl]
    sub d
    ld b, l
    jr @+$7f

    ld b, [hl]
    jp hl


    ldh [$a6], a
    ld a, [hl+]
    and a
    ld a, [hl+]
    ld c, d
    add h
    xor [hl]
    sbc h
    sub b
    inc h
    ld c, b
    dec hl
    rst $20
    ld b, l
    ld h, c
    rst $38
    or e
    dec e
    ld d, l
    ld e, a
    sbc a
    ld a, [bc]
    ld d, l
    ld a, $01
    ld a, a
    ld d, e
    ret nz

    ld a, d
    inc hl
    or h
    add a
    adc [hl]
    ld a, d

Jump_009_5d34:
    ld l, $08
    adc b
    inc hl
    sbc c
    and d
    sub h
    sub [hl]
    ld hl, $df38
    add hl, hl
    ld [c], a
    ld [de], a
    and l
    jr c, jr_009_5d63

    ld c, l
    db $10
    and c
    ld l, h
    ldh [$ba], a
    rla
    ld [hl+], a
    jp nz, $8550

    ld hl, $a137
    ld h, l
    adc h
    sub l
    inc b
    db $e3
    ld e, c
    sub h

Call_009_5d5a:
    ld [hl+], a
    and c

jr_009_5d5c:
    ldh [rDMA], a
    jr c, jr_009_5d8e

    adc b
    di
    ld a, b

jr_009_5d63:
    pop hl
    xor b
    xor b
    call Call_009_748e
    ld d, b
    and d
    db $db
    ld a, [hl-]
    and l
    call nc, $0896
    ld [hl+], a
    jr z, jr_009_5d5c

    xor d
    and d
    ld a, [hl+]
    dec h
    ld a, [hl-]
    ld h, l
    add e
    ld b, $95
    ld h, e
    and [hl]
    adc b
    ld e, b
    db $fc
    ld [de], a
    ld a, l
    ld l, [hl]

jr_009_5d85:
    add hl, bc
    db $e3
    ld b, e
    jp z, $e119

    jp $3ae7


jr_009_5d8e:
    ld e, d
    sbc b
    ld h, a
    dec sp
    sub a
    ld b, [hl]
    ld l, c
    rst $00
    pop af
    call nz, Call_000_1cc7
    jr z, jr_009_5e01

    and e
    db $10
    rst $20
    dec hl
    ld a, $62
    ld [c], a
    rst $20
    inc h
    jr jr_009_5e25

    ld d, d
    inc [hl]
    add hl, hl
    rst $08
    add a
    db $e4
    cp $4d
    sbc h

Jump_009_5db0:
    di
    ld h, l
    ret nz

    rst $38
    and a
    add d
    rst $38
    rst $38
    daa
    ld e, d
    push de
    ld d, l
    ei
    dec e
    ld d, c
    inc l
    ld a, [hl]
    ld e, b
    ld b, h
    cp [hl]
    ret


    rst $30
    ld b, l
    ld d, e
    sub [hl]
    add [hl]
    ld a, [bc]
    rlca
    adc [hl]
    ld d, l
    dec hl
    cp e
    add hl, sp
    xor l
    ld e, b
    inc hl
    and l
    dec c
    ld e, b
    rla
    add hl, sp
    ld l, e
    adc c
    ld e, l
    add hl, sp
    jr z, jr_009_5d85

    ld a, [de]
    ld a, [hl-]
    sub c
    ld a, d
    add hl, sp
    dec l
    ld e, b
    ld d, c
    sub e
    sbc d
    ld d, l
    adc a
    xor d
    sbc a
    adc c
    rst $18
    and h
    rst $20
    dec a
    rst $38
    adc d
    ld [hl], h
    rst $18
    jp nz, Jump_009_6ee7

    ld de, $bad9
    ld de, $bfd0
    rst $18
    sbc h

jr_009_5e01:
    xor a
    rst $38
    ld b, e
    ld h, a
    dec [hl]
    pop af
    ld hl, sp+$60
    ld [hl], a
    or [hl]
    ld a, l
    dec h
    ld d, h
    db $dd
    ld d, l
    dec sp
    ld l, l
    ld a, [$31ad]
    ld e, a
    sbc a
    ld h, e
    and c
    ld h, d
    ld a, [hl+]
    inc [hl]
    ld a, h
    ld [hl+], a
    ld l, c
    ld c, h
    inc de
    ld h, a
    add c
    ld d, a
    ld h, c

jr_009_5e25:
    or c
    ret nc

    ld h, b
    ld d, a
    ld d, l
    dec b
    dec l
    add sp, -$5b
    ld d, h
    inc d
    sbc d
    adc d
    add d
    add [hl]
    dec b
    and c
    and h
    daa
    rst $18
    ld d, a

jr_009_5e3a:
    ld c, b
    ld a, [hl]
    xor d
    sub e
    dec h
    ld b, l
    ld b, l
    ld [$42c5], sp
    ld h, d
    dec h
    pop bc
    ld b, c
    ld c, d
    ld d, e
    ld d, $0c
    ret


    cp a
    rst $38
    add d
    sub c
    ld d, l
    ld b, $30
    ld a, [hl]
    ld sp, $9554
    cpl
    add hl, sp
    ld h, l
    dec d
    dec b
    ld b, l
    sub d
    ld [hl-], a
    ld l, $2d
    dec l
    db $fd
    jr c, jr_009_5e3a

    rra
    ld [$b151], a
    add c
    ld c, h
    ld e, a
    adc b
    or h
    ld [hl+], a
    inc de
    ld c, d
    push hl
    xor b
    ld d, d
    add sp, -$68
    ld d, [hl]
    jr nc, jr_009_5ebc

    ld a, [hl+]
    ld c, b
    adc d
    and [hl]
    ld sp, $b44a
    jr jr_009_5ee8

    ld c, e
    xor c
    sub e
    ld l, d
    ld c, l
    ld [de], a
    cp a
    db $dd
    ld [$78d5], a
    pop bc
    ld h, c
    adc c
    and e
    adc l
    add d
    db $e4
    sub a
    and b
    adc e
    ld c, h
    ld [hl+], a
    add hl, hl
    inc b
    sub $58
    call $8a22
    ld h, d
    inc d
    pop bc
    db $ed
    sub h
    add h
    and $50
    ld c, c
    adc c
    add $81
    jp nc, Jump_009_7fad

    adc h
    inc d
    ld [de], a
    ld h, l
    adc e
    ld d, b
    adc e
    ld b, [hl]
    sbc [hl]
    adc e
    xor d
    xor d

jr_009_5ebc:
    dec b
    and a
    adc [hl]
    add hl, hl
    ld d, h
    xor d
    dec d
    jr c, jr_009_5eed

    ld d, h
    sbc c
    inc [hl]
    xor b
    sbc b
    jp nz, $e018

    cp [hl]

jr_009_5ece:
    dec h
    ld e, l
    ld l, h
    xor h
    pop bc
    ld [hl+], a
    add hl, bc
    ld b, c
    ld c, [hl]
    sbc d
    add l
    ld d, d

jr_009_5eda:
    ld d, $95
    and e
    jr z, jr_009_5ece

jr_009_5edf:
    or a
    ld l, c
    adc $19
    ld c, [hl]
    jp c, $a088

    adc b

jr_009_5ee8:
    db $e4
    ret


    adc a
    ld [de], a
    db $fd

jr_009_5eed:
    ld d, b
    ld b, d
    dec a
    ld l, e
    adc h
    inc hl
    ret nc

    adc e
    adc a
    ld [hl], $85
    dec h

jr_009_5ef9:
    adc a
    add hl, sp
    ld e, b
    ld d, [hl]
    jr nc, jr_009_5eda

    ld hl, $8a94
    ld l, [hl]
    sbc l
    pop de

jr_009_5f05:
    ld c, e
    and c
    ld [bc], a
    ld h, d

Jump_009_5f09:
    add [hl]
    inc d
    or c
    ret c

    or l
    adc d
    inc l
    ld e, d
    jp z, $27c4

    ld e, d
    ld h, b

jr_009_5f16:
    jp hl


    ld l, h
    ld c, $a9
    add hl, bc
    jp nz, $e294

    sub d
    xor b
    ret nz

    sub l
    jr nc, jr_009_5ef9

    xor d
    and l
    ld sp, $124b
    and b
    call nz, $c952
    ld [$ace4], sp
    ld b, d
    add sp, $58
    xor d
    ld e, d
    ld [de], a
    and c
    ld [bc], a
    ld d, l
    inc [hl]
    ld b, h
    sub e
    call z, $c1af
    ld e, [hl]
    inc d
    ld l, l
    ld b, [hl]
    ld l, c
    db $10
    and h
    jr nz, jr_009_5edf

Call_009_5f48:
    rla
    inc b
    add d
    add d
    ld d, d
    jr jr_009_5f05

    sbc c
    inc hl
    inc h
    add hl, hl
    ld l, e
    and l
    ld b, d
    sbc c
    and b
    add l
    ld [bc], a
    ld a, [bc]
    ld b, h
    and [hl]
    add hl, bc
    add hl, hl
    ld [de], a
    ld d, $95
    ld h, $9c

Call_009_5f64:
    ld c, l
    ld a, [bc]
    ld h, c
    db $10
    db $d3
    ld b, [hl]
    jr z, jr_009_5f94

    jr z, jr_009_5f16

    ld b, l
    pop af
    sbc d
    ld e, h
    or a
    ld b, [hl]
    jr nc, @+$46

    ld sp, $5e4a
    add hl, bc
    and d
    ld h, [hl]
    add [hl]
    ld b, d
    dec sp
    ld [bc], a
    pop bc
    add hl, hl
    or h
    dec l
    ld a, [hl+]
    or c
    sbc d
    ld c, e
    db $f4
    dec bc
    ld a, [de]
    ld b, [hl]
    add hl, sp
    sub e
    ret nz

    xor d
    ld d, d
    inc c
    and e
    ld b, [hl]

jr_009_5f94:
    jr z, jr_009_5fe8

    sbc d
    ld [$cf87], a
    call nc, $8cf2
    ld a, [hl+]
    ld [hl-], a
    ld h, [hl]
    adc l
    add hl, de
    rst $28
    ldh [$dc], a
    ld d, e
    inc b
    or c
    ld a, [hl+]
    ld a, [hl+]

jr_009_5faa:
    sub d
    ld a, [c]
    or h
    ld [hl], b
    jp $c512


    sbc $af
    ld e, e
    ld a, a
    push bc
    ld d, h
    pop af
    jp $9440


jr_009_5fbb:
    sub d
    ldh [$85], a
    inc e
    ld d, h
    ld [hl], c
    add $0b
    ld b, d
    add e
    ld a, [de]
    add hl, hl
    ld c, c
    ldh [$a2], a
    db $f4
    and l
    ld a, [hl+]
    inc [hl]
    ld [de], a
    sbc l
    ei
    ld b, h
    dec [hl]
    db $dd
    ld a, d
    cp e
    ld a, [c]
    ld a, b
    or c
    dec hl
    ld d, l
    ld d, c
    add hl, de
    db $e3
    push de
    ld d, b

Call_009_5fe0:
    daa
    or c
    ld a, d
    xor e
    rst $00
    sbc a
    dec c
    ld d, l

jr_009_5fe8:
    ld e, $b3
    ld e, $7f
    ld [$88d1], a
    ld b, h
    and c
    ld a, a
    jp nc, $f517

    ld e, a
    ld e, a
    ld l, $a2
    ld e, $ba
    db $e4
    ld [hl], $18

Call_009_5ffe:
    jr z, jr_009_5faa

    ld hl, $a2d6
    jr z, jr_009_605a

    ld h, e
    dec de
    ld e, d
    ld a, [hl+]
    adc [hl]
    ld a, d
    sub l
    inc d
    dec h
    adc h
    sub d
    xor $81
    ei
    inc sp
    ld e, d
    and d
    sub d
    ld a, c
    xor c
    ld l, b
    sbc d
    ld h, $2a
    sub $94
    ld e, $16
    ld h, $55
    adc h
    ld [hl+], a
    xor b
    dec hl
    push de
    ld a, [hl-]
    sbc b
    xor b
    add l
    ld c, h
    jp nc, Jump_009_5221

    sbc b
    jr jr_009_5fbb

    jp nz, $81eb

    ld b, $87
    or e
    inc [hl]
    jp nz, $6ddb

    ld b, l
    rra

Call_009_603f:
    ld b, l
    adc [hl]
    ld c, e
    or $82
    pop af
    ld b, c
    dec sp
    jr z, jr_009_6071

    pop af
    ld h, [hl]
    ld a, [bc]
    ld e, d
    and [hl]
    ld a, [hl+]
    ld l, b
    ld hl, sp+$44
    or b
    ld b, h
    ld a, [hl]
    push bc
    ld a, [$f9ca]
    rrca

jr_009_605a:
    add sp, -$01
    ld h, $34
    rra
    rst $38
    add a
    rst $38
    ei
    ld [hl], c
    and d
    push af
    cp $ff
    db $fc
    sub d
    sbc b
    ld h, c
    add sp, $7f
    db $f4
    cp $10

jr_009_6071:
    rst $38
    sbc b
    ld [hl], l
    ld a, a
    jp nz, $92bf

    rst $38
    sub l
    dec [hl]
    ld l, a
    db $10
    rst $38
    db $db
    ld d, a
    ld sp, hl
    ld d, b
    cp a
    ld a, [$afaa]
    di
    ld h, $6f
    rst $38
    db $fc
    scf
    db $fc
    ld l, e
    add a
    rst $38
    rlca
    cp a
    cp $4b
    add e
    sbc b
    call c, $df18
    add l
    add d
    ccf
    pop hl
    sbc h
    scf
    ret z

    ld b, e
    rst $38
    add [hl]
    db $76
    ld d, b
    ld d, c
    ldh a, [$a0]
    ld d, l
    or a
    ld d, l
    ld c, a
    ld bc, $bc7e
    inc hl
    sbc l
    db $fd
    dec de
    jp c, $4e88

    ld [hl], l
    ld d, b
    cp d
    xor d
    ld d, a
    ld e, a
    db $fd
    ld c, [hl]
    add hl, bc
    ld a, [bc]
    inc sp
    xor b
    xor d
    jp nc, Jump_009_4c1f

    inc h
    add sp, -$60
    and c
    and d
    sub h
    push bc
    ld d, h
    pop bc
    ld c, l
    inc d
    push de
    adc c
    db $f4
    sub h
    inc l
    adc d
    add hl, hl
    ld c, h
    ld d, b
    ld c, b
    ld [hl], b
    jp c, $8526

    ld c, l
    ld d, h
    adc e
    inc hl
    add [hl]
    ld [hl-], a
    ld l, [hl]
    adc d
    ld h, h
    sub l
    ld sp, $4b6b
    ld l, h
    jr jr_009_614a

    ret c

    and l
    ret z

    ld b, l
    rst $38
    ld a, l
    ld l, b
    add h
    rla
    ld h, e
    ld a, [de]
    dec b
    or b
    cp d
    and c
    adc c
    ld e, d
    and e
    ld h, l
    sub b
    ld d, [hl]
    dec d

Jump_009_6105:
    ld d, l
    xor d
    ld [hl+], a
    ld d, $33
    ld a, d
    ld d, $96
    ld hl, $5a25
    ld b, $35
    ld d, l
    add [hl]
    ld d, d
    ld d, b
    xor d
    daa
    adc [hl]
    ld a, [bc]
    xor e
    ld [hl+], a
    xor b
    jp nc, Jump_009_444e

    add l
    xor d
    xor d
    ld d, h
    add h
    push hl
    xor b
    jp c, $d5a3

    sbc [hl]
    xor d
    rst $38
    rst $20
    ld e, d
    ld c, l
    ld d, l
    db $f4
    ld [hl], h
    rst $18
    dec h
    ld d, b
    add hl, hl
    ld [$e4a9], sp
    jp c, $c470

    or c
    jp $3be7


    cp $a5
    ld a, [hl+]
    ld e, $53
    and [hl]
    xor a
    db $10
    xor h

jr_009_614a:
    sub c
    adc e
    push hl
    ld b, d
    sbc b
    and b
    ld [c], a

Jump_009_6151:
    db $fc
    ld d, $55
    inc a
    ld h, e
    sub l
    ld de, $7c30
    ld c, [hl]
    ld e, a
    jr jr_009_618d

    rla
    inc hl
    pop hl

Call_009_6161:
    sub h
    pop hl
    db $eb
    inc b
    ld c, e
    rst $00
    ld b, $ca
    or h
    call nc, Call_009_4c2a
    ld l, h
    or h
    cp [hl]
    sub b
    xor [hl]
    cp a
    ld a, [$d4e6]
    add e
    ld d, e
    ccf
    rst $38
    rst $38
    rst $38
    inc e
    ld c, $de
    cp a
    rst $30
    rst $38
    db $fd
    inc e
    dec [hl]
    ld d, b
    ld d, a
    rst $38
    xor c
    ld a, [bc]
    ld [hl], h
    cp [hl]
    or l

Jump_009_618d:
jr_009_618d:
    ld d, l
    rlca
    cp $9c
    push de
    dec de
    ld d, h
    ld a, h
    add sp, $44
    or b
    ld d, e
    dec b
    ld c, [hl]
    ld c, d
    cp l
    ld e, a
    xor e
    db $d3
    add [hl]
    ret nc

    ld e, d
    dec e
    add $90
    ld a, h
    sub $a2
    jp nc, $c515

    dec [hl]
    and e
    ld b, l
    ld h, b
    adc [hl]
    ret z

    ld [c], a
    and e
    db $76
    jr c, jr_009_622a

    daa
    sub [hl]
    ld [hl], $78
    ld a, [de]
    daa
    and l
    ld a, [bc]
    ld d, e
    ld b, l
    ld a, d
    ld [hl], h
    adc b
    inc d
    sub h
    sub $8a
    or l
    ld a, [hl]
    rla
    adc [hl]
    ld l, d
    add l
    ld sp, hl
    adc $b5
    ld a, [bc]
    dec sp
    ld l, [hl]
    ld a, $1e
    ld a, b
    pop af
    add hl, bc
    ld d, a
    xor c
    ret


    ld a, h
    ld c, l
    rst $18
    sub h
    sbc h
    ret nc

    ldh a, [$28]
    add hl, sp
    db $d3
    or a
    db $ec
    ld l, d
    and [hl]
    ld c, a
    db $e4
    add hl, sp
    cp d
    ld h, b
    rst $38
    add e
    ld sp, hl
    or h
    ld e, $ab
    db $fd
    adc l
    ld a, c
    cp e
    ld a, a
    jp nc, Jump_009_71f4

    add $2f
    and a
    ld h, a
    ld b, l
    cp c
    db $dd
    rst $00
    ld [hl], d
    ld a, l
    ld b, b
    ld [hl], a
    cp d
    rst $18
    push af
    rst $38
    push af
    inc a
    and l
    ld [hl+], a
    cp a
    ld b, [hl]
    xor d
    ld c, a
    add hl, bc
    ld e, a
    sub e
    ld a, [de]
    ld b, d
    ld d, [hl]
    sub h
    db $eb
    ld a, [hl]
    and c
    add d

Jump_009_6220:
    add hl, hl
    dec h
    ld [hl+], a
    inc hl
    db $d3
    ld [hl], l
    ld d, l
    ld d, a
    adc c
    ld l, b

jr_009_622a:
    adc c
    ld e, b
    sub l
    ld [hl+], a
    add hl, hl
    ld b, c
    db $d3
    rra
    xor d
    or d
    ret c

    or l
    ld hl, $5558
    adc b
    ld b, c
    ld [$3b13], sp
    ld e, d
    ld h, b
    ld b, [hl]
    dec l
    add [hl]
    and c
    ld e, a
    and e
    ld e, b
    push bc
    ld e, h
    sub h
    ld d, h
    add [hl]
    and e
    dec d
    adc b
    adc e
    ld b, l
    ld [hl], e
    ld a, [de]
    xor d
    and d
    jp c, $5e2d

    and e
    add c
    inc sp
    or h
    ld e, c
    add c
    dec b
    jr nc, jr_009_62c7

    or h
    and [hl]
    dec l
    ld h, $8c
    sub [hl]
    adc b
    and b
    adc h
    add hl, de
    adc b
    ld h, d
    ld d, [hl]
    ld c, e
    ld l, e
    call z, Call_000_1b92
    dec b
    ld d, h
    and h
    ld l, d
    and b
    ld h, c
    sub c
    ld c, e
    ld e, [hl]
    jr nc, jr_009_62d6

    ld e, $32
    and b
    ld h, d
    ld d, l
    ld h, c
    ld l, l
    ld h, c
    ld b, l
    and e
    rlca
    ld [$1c85], a
    adc [hl]
    ld d, l
    dec h
    adc e
    adc d
    ld h, b
    adc d
    xor e

jr_009_6294:
    ld hl, $6849
    ld d, c
    ld d, b
    xor e
    or l
    adc d
    ld e, b
    cp d
    ld c, h
    ld d, l
    ld [hl+], a
    ld [$e621], a
    jp hl


    ld b, d
    add c
    dec d
    ld e, b
    ret


    adc c
    ld c, l
    ld l, c
    dec d
    ld d, l
    ld a, [hl+]
    ld c, b
    and e
    ld l, b
    add h
    add h
    ld a, d
    adc h
    dec h
    ld [hl], d
    ld l, [hl]
    ld h, $4d
    ld [de], a
    ld h, d
    ld h, d
    jr z, jr_009_6294

    xor c
    ld c, d
    adc [hl]
    adc c
    ld l, b
    sub l

jr_009_62c7:
    ld h, d
    ret c

    adc b
    ld h, c
    ld h, e
    ld [$ba64], sp
    ld [hl-], a
    ld e, d
    inc sp
    sub h
    add h
    ld d, $21

jr_009_62d6:
    add hl, hl
    inc b
    jp z, $a3cb

    adc d
    or b
    ld d, d
    jr @+$2b

    inc b
    ld h, b
    ld c, [hl]
    ld [$48e4], sp
    ld e, d
    ld l, $5c
    inc hl
    adc d
    ld c, [hl]
    and l
    ld d, c
    add [hl]
    ld b, l
    ld c, [hl]
    ld a, [de]

jr_009_62f2:
    jr c, jr_009_631e

    xor d
    ld a, l
    inc b
    ld hl, $6362
    add [hl]
    ld a, [hl-]
    xor a
    ld c, e
    push bc
    jr c, jr_009_6364

    cp l
    inc b
    adc b
    add h
    reti


    adc [hl]
    ld [$811a], a
    ld l, h
    inc a
    or l
    and e
    dec l
    reti


    sbc [hl]
    ld a, [$40f5]
    and a
    adc [hl]
    push bc
    inc hl

jr_009_6318:
    ld [hl], d
    rla
    rst $00
    adc b
    and e
    dec b

jr_009_631e:
    ld b, l
    ld d, l
    ld b, l
    ld h, a

Jump_009_6322:
    ld [hl], e
    dec bc
    ld b, c
    ld h, $32
    adc h
    ld b, d

jr_009_6329:
    ld [hl], b
    xor e
    ld d, [hl]
    ld b, e
    inc bc
    ld b, h
    or d
    ld h, d
    and e
    ld a, [bc]
    add d
    sbc e
    ld c, b
    jp nc, Jump_000_2982

    sub h
    ld d, e
    ld b, [hl]
    ld d, h
    ld de, $449a
    sub b
    and d
    sbc b
    dec h
    or b
    xor h
    db $10
    and b
    and c
    ld b, [hl]
    ld [hl], c
    dec hl
    jr z, jr_009_62f2

    dec [hl]
    ld b, d
    xor l
    ld [bc], a
    jp nz, $51c6

    and a
    ld d, b
    and b
    xor c
    add hl, bc
    ld c, a
    ld [de], a
    sub e
    inc de
    ld [bc], a
    sub c
    ld a, [de]
    and h
    ld b, l
    pop de

jr_009_6364:
    scf
    jr nc, jr_009_6318

    rrca
    db $10
    sbc h
    adc c
    ld c, b
    ld h, c
    push bc
    ld b, c
    ld [c], a
    call nz, Call_009_45a8
    daa
    rla
    ld [de], a
    add $10
    ld d, e
    pop de
    dec l

jr_009_637b:
    xor c
    dec bc
    ld [de], a
    add $6c
    ld d, [hl]
    dec d
    inc h
    ld [hl], b
    inc a
    ld e, d
    ld d, d
    add sp, $40
    xor a
    sub h
    push de
    inc d
    sub c
    ld l, d
    adc e
    add h
    ld h, c
    ld [de], a
    ret nz

    or b
    and h
    ld sp, $a452
    ld [hl], $12
    pop bc
    ld d, d
    sbc d
    ld c, b
    inc sp
    ret z

    xor c
    ld c, h
    ld h, e
    jr nz, jr_009_6329

    ld b, [hl]
    inc d
    ld [de], a
    cp a
    and h
    ld a, [hl+]
    and c
    add hl, de
    ld e, h
    ld h, d
    ret nz

    ld a, [c]
    ld b, a
    dec d
    ld de, $7f11
    ld hl, $5a18
    ld l, l
    ld l, l
    ld a, b
    and c
    ld d, $9b
    ld b, [hl]
    ld e, l
    ld d, c
    adc e
    dec b
    dec c
    ld h, $69
    sbc h
    ld sp, $d10a
    or l
    jr z, jr_009_63ef

    adc e
    jr jr_009_637b

Call_009_63d2:
    sbc h
    add l
    ld d, c
    adc $a0
    and [hl]
    ld c, c
    ld l, d
    sub d
    sub e
    ld b, a
    ld a, [hl+]
    add hl, bc
    sbc h
    rrca
    adc e
    inc [hl]
    ld b, d
    ld e, l
    and a
    ld a, [de]
    cp h
    cp a
    db $fc
    db $10
    ld e, e
    jp nc, $984a

jr_009_63ef:
    pop bc
    inc e
    db $fd
    ld [hl+], a
    sub l
    ld de, $496b
    sub l
    dec e
    ld l, l
    inc d
    and h
    push de
    ld [bc], a
    add d
    ld d, l
    ld e, $03
    ld e, a
    dec bc
    cp e

jr_009_6405:
    ld e, a
    ld [c], a
    cp h
    ld a, b
    call z, $ae16
    db $eb
    db $f4
    ld h, h
    ld b, h
    or e
    ld a, c
    ld e, [hl]
    rst $28
    ld d, e
    ld h, l
    daa
    ld l, h
    jr z, jr_009_6485

    db $fd
    ld c, e
    ld a, [hl]
    xor e
    adc b
    ld b, d
    inc b
    and a
    jr nc, jr_009_6476

    jr nz, jr_009_6405

    ld [hl+], a
    dec b
    ld h, [hl]
    ld b, d
    jr nc, jr_009_6483

    jp c, Jump_000_0781

    ld b, $38
    ld e, l
    dec h
    add d
    add c
    ld [$cda4], sp
    ld l, [hl]
    and c
    xor a
    ld b, $05
    inc b
    call $8848
    adc c
    xor a
    and e
    adc [hl]
    inc c
    inc d
    add l
    ld d, [hl]
    ld b, $92
    add sp, -$5c
    ld d, $96
    ld a, [hl+]
    ld h, h
    add $d2
    sub b
    ld c, h
    sub d
    inc hl
    rla
    db $f4
    ld l, $30
    ld [hl], e
    ld l, a
    call nc, Call_000_3126
    adc b
    ld d, h
    jp z, Jump_009_6aa5

    ld d, d
    ld d, [hl]
    xor a
    add sp, -$1d
    xor d
    inc a
    db $fd
    xor d
    ld b, d
    ld b, d
    ld [hl], h
    ld c, l
    ld b, c
    ld d, l
    inc e
    add hl, bc

jr_009_6476:
    inc l
    dec [hl]
    inc c
    dec d
    ld c, [hl]
    ld h, d
    pop de
    add hl, sp
    ld de, $4a5c
    ld h, c
    ret nc

jr_009_6483:
    xor h
    inc l

jr_009_6485:
    ld [hl], h
    ld sp, $2730
    dec hl
    ld a, [hl-]
    ld c, h
    jp hl


    ld a, [bc]
    ld d, e
    jr jr_009_64d9

    or d
    ld d, l
    ld d, b
    ld hl, $e6ac
    ret c

    inc h
    and e
    ld a, [bc]
    rst $10
    jr jr_009_64cf

    db $10
    ld hl, $5d93
    call nz, Call_000_12a6
    ld c, [hl]
    add hl, bc
    add d
    and b
    add e
    ld h, $56
    add h
    db $fd
    adc e
    pop bc
    ld [hl], d

jr_009_64b1:
    ld e, $65
    add h
    ld a, [bc]
    add l
    add sp, $2a
    jp c, $9de9

    ld b, h
    ld d, d
    ld sp, hl
    ld d, l
    rra
    ld c, $77
    cp b
    dec d
    dec sp
    rst $10
    db $f4
    db $dd
    ld a, [$eab4]
    ld a, [hl]
    adc h
    inc d
    or a

jr_009_64cf:
    ld [c], a
    inc d
    ld d, e
    sbc l
    ld [c], a
    add sp, $6a
    push af
    ld a, b
    or [hl]

jr_009_64d9:
    dec d
    inc [hl]
    ld d, a
    rst $38
    ld l, l
    inc [hl]
    or h
    ld h, l
    adc $55
    ld a, [$a58a]
    and h
    ld e, d
    dec h
    ld h, h
    reti


    ld c, d
    ld e, a
    and e
    ld a, c
    add hl, bc
    inc b
    sub l
    inc b

jr_009_64f3:
    inc h
    and l
    adc h
    ccf
    and e
    sub [hl]
    dec [hl]
    sbc b
    sub h
    ld [hl-], a
    inc d
    inc hl
    or d
    ld [$04aa], sp
    add $92
    ld d, e
    dec [hl]
    jr c, jr_009_64b1

    cp e
    jr nc, jr_009_654e

    rst $00
    sub l
    adc h
    ld d, b
    adc [hl]
    dec h
    dec l
    ld b, l
    ld d, [hl]
    and d
    ld d, $25
    ld d, l
    ld d, b
    and c
    ld c, d
    ld a, a
    ld d, e
    dec [hl]
    rlca
    and h
    ld [hl+], a
    ld h, c
    sub a
    db $dd
    adc b
    sub c
    add d
    ld b, [hl]
    adc b
    xor l
    inc [hl]
    ld d, h
    ld de, $5695
    and c
    or h
    ld [hl+], a
    ld h, [hl]
    ld e, b
    ld h, e
    ld a, [bc]
    ld a, b
    sbc d

Jump_009_6539:
    ld a, [de]
    ld c, b
    ld l, d
    dec h
    ld l, [hl]
    add d
    ld [$c1a4], sp
    ld c, d
    sub e
    dec bc
    add sp, $16
    jr nc, jr_009_64f3

    ld e, c
    or b
    adc d
    ld c, e
    ld b, d

jr_009_654e:
    dec l
    ld [hl-], a
    xor b
    adc $f8
    rst $00
    ld c, c
    sub l
    ld b, [hl]
    adc a
    ld b, $ab
    adc b
    cp l
    jp nc, $a4a8

    adc d
    dec sp
    ld d, h
    sbc e
    pop hl
    sub d
    jr nz, @+$4a

    adc b
    ld d, e
    or l
    ld c, c
    ldh a, [$62]
    sub b
    ld h, b
    sub e
    call nz, $3da4
    pop bc
    add [hl]
    ld a, [bc]
    and e
    push bc
    ld c, b
    add d
    inc d
    sbc c
    ld d, b
    or h
    sbc d
    dec sp
    xor e
    ld b, l
    adc b
    ret nc

    ld c, d
    ld h, e
    call nz, Call_009_4b51
    ld h, e
    dec bc
    ld e, d
    dec sp
    push de
    sub [hl]
    sub [hl]
    ld h, h
    ld d, h
    sub h
    inc hl
    pop bc
    xor b
    add $74
    ld h, d
    ld d, h
    di
    ld [$5852], a
    db $f4
    xor l
    dec d
    dec a
    ld c, e
    ld d, b
    call c, $e109
    ld [$c271], a
    sbc l
    cp d
    push bc
    and [hl]

jr_009_65ae:
    ld c, $4a
    ldh [$9d], a
    inc c
    pop de
    ld sp, $5314
    jp nz, $c0e8

    add d
    ld l, b
    adc [hl]
    ld b, [hl]
    add hl, de
    or h
    ld a, [de]
    add a
    cp e
    ld sp, hl
    add h
    ld h, l
    add h
    ld h, l
    ld c, c
    ld d, c
    ld c, b
    ld hl, $7043
    ld b, l
    ld h, l
    inc hl
    sbc h
    ld d, d
    add hl, hl
    ld c, d
    add hl, bc
    ld l, l
    xor c
    ld de, $4738
    inc a
    sbc b
    ld sp, $c682
    ld [hl-], a
    ld l, d
    xor c
    adc e
    and [hl]
    inc d
    add hl, bc
    add l
    add d
    jr nc, jr_009_65ae

    ld a, [hl+]
    or l
    ld d, h
    ld b, l
    ld c, d
    ld b, l
    ld sp, hl
    adc h
    ld h, e
    inc b
    rrca
    add hl, hl
    pop de
    dec sp
    db $fc
    sub [hl]
    add d
    ld a, [bc]
    sub c
    inc c
    ld h, d

Jump_009_6600:
    xor d
    ld l, [hl]
    push de
    ld a, [hl]
    ld de, $374c
    ld e, d
    ld h, b
    and c
    ld d, b
    dec [hl]
    jp z, $c462

    ld b, d
    add $10
    ld c, b
    inc h
    ld c, d
    or l
    inc c
    jr nc, @+$46

    ld b, d
    sbc b
    ld d, d
    and h
    db $ed
    sub a
    ld sp, $9a29
    dec d
    ld h, h
    ld b, d
    sbc d
    ld d, d
    db $10
    ld h, $4a
    pop de
    adc h
    dec sp
    jr jr_009_6677

    ld h, $d1
    push de
    ld a, [bc]
    xor c
    add hl, bc
    dec [hl]
    ld [$4299], a
    sbc l
    or e
    ld a, c
    add l
    ld e, [hl]
    sbc b
    ld b, c
    dec e
    add sp, $69
    ld [hl], d
    ld b, l
    ld [bc], a
    ld d, h
    add hl, de
    db $dd
    rlca
    sub d
    push bc
    jr z, jr_009_6677

    ld d, c
    ldh [$7a], a
    sub c
    inc [hl]
    rrca
    ld de, $a725
    ld a, d
    push af
    ld [de], a
    and l
    jp c, Jump_009_6745

    add a
    dec de
    xor c
    db $e3
    jp nz, Jump_009_46a1

    ld d, b
    daa
    add [hl]
    db $ed
    dec c
    inc b

Jump_009_666b:
    sbc b
    or h
    ld a, b
    ld d, c
    and l
    ld [bc], a
    sub c
    ld b, a
    and e
    inc c
    adc h
    add [hl]

jr_009_6677:
    ld a, d
    ld [hl], d
    ld a, e
    ld [hl], $20
    ld b, h
    cp d
    call nc, $fcee
    ld [$e87f], a
    ld [$58a9], a
    and a
    rst $10
    db $fd
    ld d, d
    sub l
    call z, $e8e5
    ld d, [hl]
    xor a
    cp $bf

Jump_009_6693:
    ld [hl-], a
    xor b
    sbc b
    ld h, d
    ld a, [de]
    ld b, e
    cp h
    jp z, $aa8a

    ld hl, $8e14
    ld d, b
    ld c, [hl]
    ld c, $86
    add c
    and h
    ld h, b
    adc d
    xor d
    sub d
    xor b
    add hl, sp
    ld d, l
    ld b, [hl]
    ld [hl], d
    xor e
    ld e, l
    ld c, b
    ld b, d
    ld [$ffff], a
    and d
    ld d, a
    rra
    ld [$6820], sp
    db $e3
    sbc a
    sub a
    ld [$ea54], sp
    cp l
    and e
    db $e4
    rst $30
    cp c
    sbc l
    ld a, c
    ld a, [bc]
    ld [hl], l
    and c
    and $2a
    add hl, sp
    ld c, c
    add d
    ldh [$84], a
    sub l
    jp nc, $2fd5

    sub c
    xor c
    rra
    and [hl]
    add hl, sp
    sub l
    ld d, h
    ld d, h
    ld e, $60
    rst $20
    inc [hl]
    add hl, de
    ld a, h
    ld [hl], h
    ld b, [hl]
    ld e, $66
    xor d

jr_009_66ea:
    adc d
    xor d
    sub a
    ld a, d
    ld h, e
    ld de, $1185
    sbc b
    call nz, Call_000_3052
    ld b, a
    dec l
    ld b, h
    ld l, b
    ld d, c
    db $dd
    ld b, a
    jp z, $7780

    cp h
    inc [hl]
    di
    rst $10
    ldh a, [rDMA]
    sub e
    pop bc
    cp [hl]
    sub d
    ld e, [hl]
    adc c
    add e
    ld [c], a
    dec sp
    db $fd
    ld c, [hl]
    dec h
    ld l, a
    ld [$413e], sp
    ld c, h
    db $fc
    ld a, [hl+]
    add hl, bc
    ld b, d
    cp l
    ld b, $f4
    and a
    db $e4
    ld h, h
    ld de, $04e7
    sub $95
    ld [hl+], a
    sub l
    ld [$fcf2], a
    xor b
    sbc e
    add [hl]
    ld l, e
    inc sp
    ld e, d
    inc sp
    rst $00
    ld h, $e2
    inc d
    inc h
    ld l, b
    ld [hl+], a
    and e
    dec b
    ld a, [$1252]
    cp e
    ld a, [c]
    cpl
    adc c
    ld c, b
    add [hl]
    ld h, h

Jump_009_6745:
    add l
    jr nc, jr_009_66ea

    rst $28
    adc e
    sbc a
    ld hl, $6494
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    and e
    xor d
    rrca
    daa
    ret z

    ld e, [hl]
    sub b
    ld c, b
    ld c, c
    db $d3
    dec b
    ld hl, $b568
    ld b, $37
    cp b
    cp b
    sbc d
    ld l, $be
    jr nc, jr_009_67d0

    dec a
    ld l, d
    ld h, $d6
    ld [hl+], a
    add hl, de
    jr @-$69

    ld c, b
    jp nc, Jump_000_215f

    ld h, b
    ld d, [hl]
    xor d
    and d
    sub e
    ld a, [bc]
    ld b, c
    inc d
    adc b
    ret


    adc c
    rst $38
    xor $81
    cp a
    jr nc, jr_009_67ca

    ret c

    adc c
    ld a, b
    ld e, [hl]
    ld [$4961], sp
    ld e, e
    xor b
    sbc b
    dec h
    ld c, e
    cp a
    db $e3
    ld [$609b], sp
    ld h, c
    ld c, c
    add l
    ld l, $1f
    xor b
    jp nz, $b663

    ld d, e
    ld b, h
    ret


    rlca
    ld [$a784], sp
    ld b, d
    add hl, sp
    pop de
    sbc b
    push bc
    inc b
    ld d, [hl]
    jp hl


    ld b, e
    add d
    db $d3
    or [hl]
    ld c, h
    ld [de], a
    ld e, b
    ld l, d
    ld e, a
    rst $38
    adc $36
    dec h
    inc c
    inc de
    ld [hl], a
    jp nz, $ac8a

    db $dd
    ld h, e
    jr z, @-$25

    and e
    ld e, e
    ld [hl-], a
    ld e, d
    inc d

jr_009_67ca:
    ld h, c
    ld b, l
    inc [hl]
    xor $8d
    db $ec

jr_009_67d0:
    jp nz, $b815

    inc d
    ld de, $ae8d
    ld [hl], $58
    and h
    scf
    or $15
    dec b
    and e
    ld h, [hl]
    db $e3
    dec e
    ld a, l
    sub l
    ld a, b
    ld a, [de]
    dec b
    ld hl, $4e41
    ld a, [de]
    ld hl, sp-$6b

jr_009_67ed:
    ld h, [hl]
    dec h
    ld d, b
    and d
    dec hl
    ld e, a
    sbc [hl]
    add hl, sp
    ld l, c
    ld [hl+], a
    xor b
    add a
    jp hl


    adc d
    xor a
    rst $18
    adc [hl]
    db $76
    cp l
    ld d, l
    ld a, [hl]
    dec h
    ld c, $2a
    xor b
    db $eb
    adc b
    xor d
    and e
    ld a, [bc]
    ld a, [hl-]
    ld h, a

jr_009_680d:
    add [hl]
    sbc [hl]
    ld a, d
    dec de
    and l
    daa
    add b

Jump_009_6814:
    pop bc

jr_009_6815:
    or c
    ld c, c
    adc h
    cp c
    sbc $93
    add h
    ld [$70a6], sp
    xor d
    ld h, c
    ld [bc], a
    ld b, d
    and [hl]
    db $10
    ld e, h
    inc c
    jr jr_009_67ed

    and l
    xor h
    ld c, e
    ei
    jr z, jr_009_6884

    and d
    and [hl]
    ld a, b
    jr z, jr_009_680d

    jr z, jr_009_6815

    db $f4
    ld c, d
    ld a, [c]
    cp a
    ret nc

    cp a
    jp hl


    add hl, sp
    ld d, b
    ld e, b
    ld hl, $8f61
    cp a
    sub d
    cp a
    ld d, b
    call nc, $508b
    ld a, [hl+]
    ld e, h
    add hl, sp
    rra
    ld hl, $8f60
    ld sp, hl
    or d
    call nc, $a142
    xor c
    adc [hl]
    ld d, a
    call nz, Call_009_5f64

Jump_009_685c:
    jp hl


    sub e
    db $fc
    jp hl


    rrca
    jp z, $3a54

    ld d, h
    sub c
    sub e
    rst $18
    ld d, b
    dec hl
    db $fd
    ld c, a
    ld b, l
    ld e, a
    jp hl


    ld e, a
    pop hl
    add e
    add [hl]
    ld b, e
    sub c
    ld sp, hl
    ld a, [bc]
    inc [hl]
    or l
    ld a, c
    db $10
    ld hl, $2650
    inc d

Jump_009_687f:
    call nz, Call_000_285b
    ld b, b
    rst $30

jr_009_6884:
    and e
    ld a, [hl]
    add a
    rst $08
    db $10
    call nc, $f147
    ld l, [hl]
    ld c, $35
    rst $30
    and h
    ld h, c
    ld hl, sp-$01
    ld de, $a822
    ld d, h
    inc e
    ld a, [bc]
    ld h, c
    rlca
    inc c
    ld b, [hl]
    jp z, Jump_009_5db0

    db $e3
    ld a, [c]
    ld b, e
    rst $38
    ld [$2d10], a
    add hl, de
    ld c, d
    ld e, a
    rst $18
    db $ec

Jump_009_68ad:
    ei
    add [hl]
    rrca
    jr nz, @+$01

    pop hl
    inc hl
    dec c
    sbc b
    add hl, hl
    adc a
    pop bc
    rst $38
    add l
    ld d, c
    rrca
    add a
    rst $38
    jp c, $f956

    ld a, b
    ld c, [hl]
    ld b, e
    ld a, h
    jr nc, jr_009_6921

    ld l, a
    cp $1f
    db $fc
    ld e, $09
    rrca
    push hl
    db $ec
    ld b, h
    adc d
    ld sp, $8d32
    rst $38
    rlca
    add a
    ldh a, [$f8]
    ld b, h
    ld h, c
    ld h, [hl]
    add hl, de
    ld sp, $124a
    xor b
    ld d, d
    ld de, $fe1f
    ld c, h
    ret nz

    add e
    jr c, jr_009_6952

    db $ec
    ld b, d
    cp a
    cp $aa
    scf
    pop de
    ld [$e148], sp
    add [hl]
    ld de, $4aba
    rst $38
    rst $38
    rst $38
    cp $8a
    ld [de], a
    cp b
    ld [hl+], a
    ret nz

    add $94
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    dec bc
    ld c, b
    or [hl]
    ret nz

    rst $00
    inc b
    ld c, l
    ld a, a
    rst $38
    rst $10
    db $fc
    add l
    and b
    sub b
    rst $18
    inc b
    ld l, [hl]
    push bc
    xor e
    db $fd
    cp a
    xor d

jr_009_6921:
    ld b, h
    ld d, d
    rst $30
    pop de
    rl b
    rst $30
    rst $38
    db $fd
    ld e, [hl]
    ld b, d
    or l
    ccf

jr_009_692e:
    dec e
    or l
    ld d, h
    ld e, h
    ld a, [de]
    ld a, [hl+]
    cp l
    inc b
    ld [hl], h
    call nz, $a124
    inc d
    sbc a
    inc h
    ld b, h
    cp b
    rst $10
    rst $38
    call nc, Call_009_7de2
    add sp, -$46
    scf
    ld d, b
    or [hl]
    add hl, sp
    rra
    ld e, a
    or a
    adc $4f
    ld a, [de]
    pop af
    and l

jr_009_6952:
    jr nc, jr_009_69ae

    jr nc, @+$44

    ld h, $22
    dec b
    inc hl
    db $fc
    call Call_000_3342
    cp l
    ld e, b
    jp nc, $e004

    ld [hl], e
    ld e, d
    ld [$ecd6], sp
    jp c, $4a81

    ld h, l
    adc d
    ld d, e
    daa
    xor h
    ld a, [hl+]
    ld h, e
    rra
    ld a, [de]
    jr nc, jr_009_692e

    and l
    ld a, [bc]
    ld d, l
    rrca
    ld a, c
    ld c, l
    db $dd
    ld [$ea17], sp
    db $dd
    ld c, h
    sub c
    ld h, c
    ld [hl], b
    ld e, b
    cp d
    di
    ld a, [hl-]
    ld a, [hl+]
    and e
    pop de
    sbc h
    ld l, b
    ld b, h
    rst $00
    inc l
    ld a, c
    ld l, b
    ld h, $5a
    ld d, d
    ld h, [hl]
    xor $9a
    ld e, d
    ld b, [hl]
    add hl, bc
    ld c, [hl]
    jp nc, $a498

    push bc
    ldh [$be], a
    cp a
    and $2c
    ld l, c
    xor l
    ld d, l
    ld b, [hl]
    ld l, c
    sbc e
    ei
    db $fc

jr_009_69ae:
    ld [de], a
    ld h, h
    sbc b
    cp a
    rst $28
    ld [$9f39], a
    ld [bc], a
    xor a
    rst $18
    pop de
    ld a, [bc]
    ld l, l
    ret nz

    or h
    inc [hl]
    ld c, l
    dec c
    sbc c
    ld hl, sp+$21
    db $e3
    ld l, d
    db $f4
    xor c
    xor [hl]
    add hl, de
    ld d, $1d
    rla
    jp c, Jump_000_1767

    ld e, c
    sbc h
    ld a, h
    jr nc, jr_009_6a4c

    or h
    and h
    ld [$d37f], a
    sbc [hl]
    dec de
    ld d, a
    jp nc, Jump_000_1513

    ld e, b
    ld l, $68
    rst $20
    add [hl]
    xor b
    ld l, d
    ld sp, hl
    dec d
    rst $38
    db $fc
    rra
    ld hl, sp-$18
    sub b
    sub c
    ld l, [hl]
    xor c
    db $eb
    rst $30
    sbc h
    ld l, $8e
    scf
    rst $38
    ld d, a
    ld e, $09
    ld l, c
    and b
    cp d
    add d
    add e
    or h
    db $e4
    cp [hl]
    sbc a
    pop af
    rst $10

jr_009_6a07:
    ld d, [hl]

jr_009_6a08:
    jr nc, jr_009_6a64

    ld b, [hl]
    ld d, h
    and $f0
    ld d, [hl]
    and d
    dec d
    inc d
    xor b
    sbc a
    db $e3
    adc c
    ld e, a
    ld a, [$5581]
    ld e, b
    ld e, d
    rlca
    xor [hl]

jr_009_6a1e:
    jr nc, @-$69

    ld [hl], $aa
    dec d
    ld e, d
    ld d, h
    ld [hl+], a
    dec e
    ld l, l
    db $fc
    ld d, l
    db $76
    call nc, $ffde

jr_009_6a2e:
    db $ed
    xor b
    jp z, Jump_000_2b1c

    db $fd
    ld e, l
    ld a, [$5305]
    add l
    jr nc, jr_009_6a8d

    jr nz, jr_009_6a08

    ld h, b
    ld a, e

jr_009_6a3f:
    sbc a
    rst $38
    rst $38
    db $d3
    ld b, a
    xor b
    pop bc
    ld a, [de]
    ld b, c
    ld [hl+], a
    ld l, b
    inc l
    ccf

jr_009_6a4c:
    rst $38
    xor e
    sub [hl]

jr_009_6a4f:
    inc [hl]
    ld a, a
    adc h
    ld e, d
    ld [$048e], sp
    ld a, [hl+]
    adc d
    ld d, a
    call c, Call_009_498f
    ld e, [hl]
    add c
    dec e
    inc sp
    sub d
    ld [c], a
    dec l
    ld a, [hl]

jr_009_6a64:
    sub l
    ld e, a
    add [hl]
    add c
    add sp, -$48
    cpl
    dec h
    ld e, b
    cp d
    ld d, d
    ld l, e
    rst $30
    rst $38
    and d
    ld l, d
    ld hl, sp-$7c
    inc hl
    ld a, [de]
    ld a, [hl+]
    jr nc, jr_009_6a07

    ld l, b
    jr z, jr_009_6a4f

    ld c, c
    ld c, e
    cp b
    inc hl
    jr jr_009_6a1e

    ld hl, $817f
    jr jr_009_6a2e

    jr nc, jr_009_6a3f

    add $30

jr_009_6a8d:
    ld h, b
    ld c, c
    or [hl]
    dec c
    ld l, b
    ld l, b
    ld h, l
    adc b
    and d
    ld [$784e], a
    db $e3
    adc d
    ld h, c
    ld h, d
    inc h
    or l
    ld a, [hl-]
    ld [de], a
    sbc b
    ld l, c
    pop hl
    ld e, c

Jump_009_6aa5:
    ld h, $a0
    ld h, a
    jp z, $6881

    and h
    ld a, d
    inc c
    add h
    sub a
    add [hl]
    pop hl
    sub h
    sub [hl]
    ld b, e
    pop bc
    ld [hl], h
    ld h, e
    ld b, $09
    ld a, [bc]
    adc c
    and e
    ld e, d
    ld a, [de]
    ld e, [hl]
    rst $20
    ret c

    ld e, h
    sub [hl]
    ld b, d
    ld d, [hl]
    add hl, hl
    ld l, e
    call z, $c7e8
    ld e, a
    xor b
    and h
    ld d, c
    jp z, Jump_000_225c

    db $10
    db $d3
    rlca
    adc h
    ld d, h
    or [hl]
    xor l
    add hl, bc
    ld l, b
    add a
    ret c

    scf
    ld a, [$aad4]
    dec b
    ld hl, sp-$7b
    ldh a, [rHDMA5]
    dec bc
    inc b
    xor b
    sub a
    rrca
    xor c
    ld e, [hl]
    ld hl, sp-$55
    add sp, $64
    adc a
    ld a, [$04aa]
    xor c
    adc h
    ld l, e
    xor b
    add hl, hl
    scf
    ld e, [hl]
    inc sp
    ld e, a
    jp nc, Jump_009_5521

    ld h, l
    and l
    ld e, a
    and $a9
    reti


    and a
    ld h, [hl]
    sub b
    sbc h
    add hl, bc
    inc a
    ld [hl], a
    ld a, b
    jp hl


    add hl, sp
    add d
    call nc, Call_009_7678
    cp h
    ld c, d
    db $10
    pop af
    ld [hl], d
    sbc h
    call $980a
    ld sp, hl
    db $10
    ret nc

    ld b, h
    ld a, [hl+]
    ld b, d
    ld [hl], e
    rst $10
    push af
    ld h, h
    ld [hl], $64
    rst $38
    ld sp, hl
    add hl, bc
    ret nc

    xor [hl]
    ld c, d
    call z, $834a
    rst $38
    and h
    and a
    ld [bc], a
    inc [hl]
    ld a, [hl+]
    rst $38
    rst $38
    pop hl
    cp c
    add e
    rst $38
    ldh a, [$31]
    cp [hl]
    dec hl
    push af
    ld d, b

jr_009_6b45:
    jr z, jr_009_6bc5

    ld b, l
    ld l, d
    ld b, l
    ld a, a
    cpl
    ld b, a
    ld l, a
    add l
    ret


    dec de
    db $fc
    inc c
    xor l
    ld e, $07
    jp $8f90


    ldh [$fe], a
    add e
    db $10
    cp h
    ld b, h
    ld [hl], b
    add hl, sp
    rra
    adc e
    ld a, [bc]
    cp a
    add a
    cp $6c
    and [hl]
    add sp, $43
    cp $38
    ld a, a
    ld a, [hl]
    rla
    ld hl, sp+$79
    ld l, b
    add $11
    ld l, c
    inc c
    db $ed
    db $e3
    add a
    sub c
    dec bc
    pop hl
    add [hl]
    ret z

    add $49
    jr nc, jr_009_6b45

    or d
    rra
    ld [$614c], a
    ldh [$87], a
    inc sp

Call_009_6b8b:
    ld h, $89
    ld e, $4c
    dec e
    rst $38
    ld sp, hl
    rra
    add e
    jr nz, @-$06

    inc sp
    ei
    dec h
    and d
    add [hl]
    cp [hl]
    ld c, h
    ld c, $1f
    rst $38
    ld c, a
    ld [c], a
    ret z

    ld a, [hl]
    inc c
    ld a, $e1
    dec hl
    add a
    pop hl
    rst $38
    call nz, $fb23
    ld a, h
    ld b, a
    pop af
    ld [de], a
    call nc, Call_009_450c
    add a
    cp $1f
    call Call_009_5ffe
    or e
    inc bc
    inc hl
    ld hl, sp+$3f
    ld hl, sp+$79
    add e
    ld a, a
    rst $08

jr_009_6bc5:
    ld c, a
    xor h
    ld c, d
    inc e
    inc c
    add l
    db $ec
    ld hl, sp+$7f
    ld hl, sp-$26
    ld e, [hl]
    ret nc

    jp nz, Jump_009_4685

    pop de
    rla
    ld [$fcff], a
    ld b, a
    sub l
    inc bc
    db $fc
    add sp, $3e
    sbc h
    jr nc, @-$27

    rst $38
    ld sp, hl
    jr z, jr_009_6c49

    cp $1f
    db $10
    push de
    ld b, b
    and [hl]
    ret nc

    cp $ad
    ld b, l
    db $ec
    add a
    ldh a, [$5e]

jr_009_6bf5:
    cp a
    jp nc, Jump_000_1ad5

    ld b, b
    rst $38
    call $ff18
    ld c, $8a
    or l
    db $10
    call nz, $a3a9
    db $fc
    call z, Call_009_6161
    call nz, $d2b5
    ld c, h
    xor l
    ld a, [hl+]
    sub a
    ld de, $3111
    and h
    ld e, a
    rrca
    ld hl, sp+$7f
    push af
    ld e, $3f
    adc e
    db $fc
    ld a, [c]
    sbc [hl]
    ld e, [hl]
    dec [hl]
    jr jr_009_6bf5

    xor c
    nop
    ld b, h
    or c
    ld d, e
    dec h
    dec b
    ld l, d
    dec [hl]
    ld a, l
    ld hl, $a942
    ld b, $8d
    ld [$a8da], a
    ld l, [hl]
    ld [hl+], a
    scf
    and b
    adc b
    add c
    ld a, [hl]
    cp $38
    ld a, [hl+]
    ld d, $b0
    xor a
    xor h
    call $dc57
    inc h
    ldh [$7f], a

jr_009_6c49:
    ld a, [$62a0]
    jr @-$79

    ld [hl], b
    ld a, [c]
    ld l, a
    rst $38
    ld d, [hl]
    daa
    dec bc
    ld a, [de]
    xor b
    jp c, Jump_009_48a9

    rst $18
    call nc, $8e63
    and c
    adc b
    or h
    db $e4
    and [hl]
    dec h
    and c
    sub e
    add [hl]
    and [hl]
    sub b
    ld b, l
    ld h, $4d
    xor a
    adc e
    ld [hl], b
    sub d
    inc de
    ld h, [hl]
    ld l, $e0
    sub a
    ld a, b
    xor $8f
    ld e, $76
    ld h, $d2
    ld l, c
    ld b, a
    ld [hl+], a
    ld h, d
    xor d
    xor c
    push bc
    and d
    cp l
    add d
    ld [$1c27], sp
    rrca
    ccf
    ei
    ld a, c
    jp nz, Jump_000_1ff1

    rst $38
    add l
    dec de
    cpl
    db $e3
    and c
    ld c, d
    dec c
    and [hl]
    sub l
    ld e, h
    jr c, jr_009_6ced

    ld e, a
    ld hl, sp+$67
    ld l, $ce
    or h
    ld de, $91c9
    inc c
    xor c
    ret z

    pop af
    cpl
    dec c
    jp hl


    ret nz

    push bc
    ld sp, $6f76
    add hl, de
    ret


    push af
    ld b, b
    ld d, l
    cp l
    ld b, l
    ld sp, hl
    dec h
    ld a, a
    db $f4
    push hl
    ld a, d
    inc e
    add hl, hl
    cp [hl]
    xor d
    rst $38
    dec b
    ld d, h
    call $6588
    and l
    ld sp, $aaab
    or h
    pop bc
    ld c, b
    ld e, b
    cp c
    dec d
    jr nc, @+$74

    push de
    dec l
    ld c, l
    jr nz, jr_009_6d3c

    ld e, [hl]
    jr nc, jr_009_6d54

    ld c, b
    ld d, e
    dec d
    add d
    ld a, b
    and h
    sub l
    ld [hl+], a
    reti


    db $e4
    pop bc
    sub [hl]
    and b
    ld c, h
    ld a, [hl+]
    ld a, [c]

jr_009_6ced:
    jp hl


    ld sp, $2a66
    adc [hl]
    ld e, c
    ld c, c
    ld h, [hl]
    inc sp
    ld h, h
    rst $20
    ld e, b
    adc $07
    ld c, d
    ld d, h
    jp c, Jump_009_618d

    adc d
    ld d, h
    and a
    ld [$8d07], a
    dec e
    jr c, jr_009_6d5d

    dec d
    ld d, e
    dec [hl]
    pop hl
    adc [hl]
    ld a, [de]
    adc l
    rla
    and e
    ld b, l
    ld c, h
    ld l, b
    dec h
    dec d
    ld a, c
    sub d
    jp nc, $5316

    ld a, [hl-]
    ld d, $eb
    sub b
    ld d, d
    sub b
    ld l, c
    ld h, b
    sub e
    dec sp
    ld a, d
    rst $20
    ld a, b
    ld d, [hl]

jr_009_6d2a:
    cp a
    push af
    ld d, l
    dec [hl]
    ld e, c
    cp l
    ld a, a
    ld [$e7a8], a
    and b
    and e
    xor e
    ld a, d
    adc b
    ld c, d
    ld h, b
    xor d

jr_009_6d3c:
    sbc h
    add sp, $42
    xor d
    inc [hl]
    ld c, e
    xor d
    sbc h
    inc c
    ld c, a
    ld de, $2c5a
    jp nz, $caca

    ld h, d
    db $e4
    push hl

jr_009_6d4f:
    or e
    ld b, e
    ld d, a
    ld b, h
    xor c

jr_009_6d54:
    ld a, [hl+]
    add hl, hl
    ld e, $53
    ld c, $19
    sub e
    ld b, b
    sub c

jr_009_6d5d:
    or h
    ld b, e
    db $e4
    or c
    ld d, $91
    adc h
    ld b, d
    ld a, [hl+]
    ld e, l
    add e
    ld h, h
    call nz, $1331
    and h
    ld c, d
    xor $68
    sub b
    jp nz, Jump_000_1cc6

    ld h, c
    ld a, [de]
    ld c, d
    jr z, jr_009_6d2a

    ld c, d
    add h
    jr jr_009_6de4

    ld a, [hl+]
    ld sp, $1071
    and l
    ld b, d
    sbc c
    jr nc, jr_009_6da6

    add $8a
    ld de, $a63d
    ld d, a
    ld b, b
    sbc b
    jr nc, jr_009_6d4f

    inc h
    dec l
    add hl, de
    ret nz

    adc h
    ld e, e
    ld [bc], a
    db $fc

jr_009_6d98:
    jr z, jr_009_6deb

    cp [hl]
    ld h, h
    set 4, c
    dec l
    dec h
    or c
    sub l
    adc d
    cpl
    dec b
    inc b

jr_009_6da6:
    or c
    ld a, [hl+]
    dec hl
    and $96
    ld b, h
    add l
    di
    sub h
    add sp, $7f
    ld [$4f69], a
    ld d, l
    inc b
    db $10
    ld hl, $b585
    dec c
    ld b, [hl]
    db $db
    pop hl
    or c
    ld sp, $1ddd
    and b
    ld b, h
    or [hl]
    ld d, l
    dec d
    ld c, [hl]
    add a
    xor a
    ld a, [bc]
    jp nc, $8f13

    rst $38

jr_009_6dcf:
    ld [hl], h
    add hl, hl
    sub e
    add l
    ld [c], a
    xor $50
    adc [hl]
    dec d
    dec h
    ld d, l
    ld h, $38
    rst $38
    ld [$4ea1], a
    ld a, [hl-]
    ld sp, $1442

jr_009_6de4:
    pop hl
    ld d, d
    ld d, a
    ld [c], a
    inc [hl]
    ld [c], a
    ld d, [hl]

jr_009_6deb:
    cp h
    pop bc
    jr c, jr_009_6dcf

    xor l
    inc d
    ld d, e
    sub c
    ldh [$b5], a
    sub [hl]
    add hl, bc
    jr c, jr_009_6d98

    jp hl


    ld h, e
    ldh a, [$b9]
    add sp, -$35
    ld d, d
    ld [hl], h
    xor d
    xor b
    db $e4
    ld h, a
    inc e
    ld e, h
    inc sp
    ld h, a
    dec de
    db $fd
    ld d, h
    jr c, jr_009_6e75

    ld a, [de]
    xor a
    ld d, h
    ld c, $19
    push bc
    ld b, h
    xor a
    rlca
    add [hl]
    ld [hl], c
    xor a
    jp nc, $86c1

    sbc h
    ld [hl], h
    scf
    adc [hl]
    ld b, [hl]
    ld [hl], d
    call nc, Call_009_752e
    ld [hl+], a
    pop af
    ld sp, hl
    ld e, b
    ld d, l
    cp c
    ld d, h
    pop af
    xor b
    inc hl
    push bc
    ld e, c
    ld sp, hl
    ld c, a
    rlca
    cp $f7
    ld c, [hl]
    dec [hl]
    xor a
    ld d, e
    inc d
    ld h, h
    inc de
    ld d, l
    ld hl, sp-$68
    ld a, [hl-]
    add sp, $23
    sub [hl]
    dec d
    ld c, c
    ld d, h
    jr nz, @-$6d

    cp h
    ld h, h
    inc de
    inc [hl]
    xor b
    adc a
    adc e
    adc c
    ld sp, hl
    inc [hl]
    ld e, d

jr_009_6e55:
    ld d, l
    ld d, [hl]
    rla
    and h
    add [hl]
    ld a, l
    dec bc
    ld c, [hl]
    adc b
    sbc b
    ld h, d
    jr nz, jr_009_6e55

    ld d, l
    ld d, h
    cp l
    ld d, h
    jr nz, jr_009_6ecd

    ld [hl], c
    adc h
    ret c

    jr z, jr_009_6ed6

    ld [hl+], a
    ld a, [c]
    ldh [$f1], a
    sbc b
    add $22
    or d

jr_009_6e75:
    ld h, h
    ld d, d
    ld h, d
    ld e, c
    add c
    inc sp
    adc l
    db $10
    or d
    add sp, $58
    inc de
    ld c, c
    inc sp
    and d
    ld de, $3857
    push hl
    ld [hl-], a
    xor b
    ld h, d
    ccf
    pop bc
    jr c, jr_009_6ef8

    ld c, c
    ld e, d
    adc b
    ld h, d
    or e
    sub [hl]
    xor b
    rra
    pop bc
    add l
    ld c, [hl]
    jp c, $ab57

    ld h, l
    and e
    and [hl]
    jp c, Jump_009_687f

    jp c, $ae7b

    ld a, b
    rst $30
    xor d
    ld a, b
    ret z

    ld d, [hl]
    sbc h
    adc b
    xor h
    add hl, bc
    ld c, b
    ld l, c
    ld a, [de]
    ld l, h
    add h
    ld e, l
    cp d
    xor b
    ld e, a
    ldh [$86], a
    ld l, e
    ld a, [bc]
    sbc $83
    rst $38
    cp $4c
    ld e, $6a
    xor b
    ld d, l
    ld c, a
    db $fd
    ld a, a
    pop hl
    add d
    add hl, sp
    and d

jr_009_6ecd:
    dec [hl]
    rst $38
    rst $38
    inc de
    ld a, a
    dec [hl]
    ld a, [hl-]
    ld [hl], b
    ccf

jr_009_6ed6:
    rst $38
    and d
    pop hl
    rst $18
    cp $70
    dec a
    ld e, a
    rst $38
    ld [$f2fe], a
    scf
    add $48
    ld b, l
    rst $18

Jump_009_6ee7:
    rst $38
    rst $38
    ldh [$84], a

Call_009_6eeb:
    inc a
    ld l, b
    sub d
    xor d
    rst $18
    rst $38
    cp $11
    ld e, $9c
    rra
    rst $38
    add l

jr_009_6ef8:
    rst $38
    ld hl, sp+$2b
    add a
    rst $00
    dec b
    rst $38
    ld hl, sp+$7f
    rst $38
    dec hl
    ld de, $101c
    ld [hl], l
    ld c, a
    db $fd
    ld b, c
    ld e, a
    call nc, $b59c
    ld d, c
    ld l, a
    ret nc

    ld l, d
    db $76
    ld a, [hl+]
    ret nc

    xor e
    rst $00
    ld e, e
    rst $10
    rst $38
    ld b, a
    xor h
    ld b, h
    cp l
    add h
    ld [$aa5a], a
    db $e4
    db $e4
    ld [hl], d
    sub h
    ld h, h
    ld [c], a
    ld a, e
    ld d, [hl]
    ldh [$5d], a
    ld a, [hl-]
    xor e
    rst $38
    add hl, sp
    sub l
    ld hl, sp+$20
    adc [hl]
    ld b, [hl]
    adc b
    xor l
    add hl, sp
    and c
    bit 4, e
    sbc d
    ld c, h
    db $10
    ld c, [hl]
    ld a, d
    ld b, c
    ld e, a
    ld d, e
    and e
    rst $38
    cp $4e
    adc e
    rst $38
    and e
    jp hl


    and a
    ret


    xor d
    ld b, d
    and a
    ld c, a
    ld b, c
    add a
    rst $20
    ld [de], a
    ld e, e
    rst $08
    ld sp, hl
    ret


    rst $38
    rst $38
    rst $38
    sbc h
    xor d
    or $df
    rst $20
    dec de
    db $10
    and e
    or a
    sbc h
    rst $38
    db $e3
    ld a, $73
    rst $18
    ld [bc], a
    rra
    dec e
    xor $74
    ret nz

    cp l
    sbc l
    ld d, c
    ld de, $00f5
    ld [hl], a
    cp a
    ld [$9d54], sp
    ld b, l
    inc a
    sub h
    adc h
    dec hl
    xor [hl]
    dec de
    pop bc
    inc a
    inc d
    adc a
    sbc c
    ld d, $af
    ld a, l
    ld d, h
    ldh a, [rNR43]
    jr c, jr_009_6fce

    ld c, h
    inc d
    ld a, [hl+]
    sbc l
    add hl, sp
    sub d
    ld [hl], b
    ld e, l
    jp $900b


    adc d
    adc b
    rst $28
    adc $68
    jr nc, jr_009_6fe3

    ld e, e
    rlca
    add c
    pop hl
    ld c, d

jr_009_6fa7:
    xor b

jr_009_6fa8:
    ld a, d
    or e
    add a
    dec hl
    push af
    ret nc

    ldh a, [rSCX]
    dec c
    rla
    pop bc
    daa

jr_009_6fb4:
    dec c
    or e
    adc l
    inc hl
    cp [hl]
    ld b, a
    sbc b
    ld hl, $98b1
    adc c

jr_009_6fbf:
    ld a, [de]
    xor h
    ld [c], a
    ret nc

    db $ed
    pop bc
    or a

jr_009_6fc6:
    jp Jump_009_504d


    sbc d
    db $dd
    ld hl, $ac35

jr_009_6fce:
    dec l
    ld a, a
    ld d, a
    ld b, d
    ld d, $4c
    ld l, c
    pop bc
    ld c, $c6
    ld [hl], $c3
    ld a, l
    and [hl]
    ld a, [$1716]
    ld c, h
    ld hl, sp+$30
    ld c, [hl]

jr_009_6fe3:
    inc c
    dec a
    ld b, d
    ei
    and c
    ld h, d
    ld l, c
    ld [hl-], a
    add sp, $36
    jr c, jr_009_6fc6

    reti


    ret c

    ld h, e
    add l
    rlca
    ld [hl+], a
    jr c, jr_009_6fa7

    ei
    db $fc
    jr nz, jr_009_705e

    ld b, $30
    cp b
    ld [$26b8], a
    jr jr_009_6fa8

jr_009_7003:
    ld h, d
    ld l, c
    jr jr_009_7063

    ld d, e
    sbc d
    ret c

    inc d
    ld a, [hl+]
    cp b
    inc d
    xor c
    ld h, h
    adc h
    ld [hl], h
    db $e4
    ld b, e
    and b
    sbc [hl]
    ld b, e
    ld l, a
    ld h, d
    ld d, [hl]
    ld b, e
    add c
    ld b, c
    ld [hl], e
    sub d
    pop bc
    inc b
    ld sp, $70dd
    ld h, b
    sbc h
    ld [hl], d
    inc [hl]
    ld [hl], $8e
    adc b
    jr nc, jr_009_6fb4

    ld c, $59
    db $fc
    inc a
    inc a
    db $10
    xor d
    ld a, [hl-]
    ld hl, sp-$52
    dec bc
    ld l, l
    jr jr_009_6fbf

    jr nz, @-$3c

    ld a, [hl-]
    ld a, [c]
    or d
    inc e
    ld [hl+], a
    pop af
    or e
    jp z, $3d87

    add h
    or $23
    ldh a, [$ed]
    call z, $9690
    sub b
    sbc [hl]
    ld h, $1b
    add sp, $38
    db $e3
    pop bc
    add h
    ld [$9c62], sp
    ret z

    pop hl
    rrca

jr_009_705e:
    add l
    ld a, [c]
    or e
    ld d, l
    inc bc

jr_009_7063:
    add h
    adc e
    jr nz, jr_009_7003

    ld [hl], c
    dec e
    adc $82
    dec [hl]
    jp c, $154c

    rst $28
    inc b
    ret


    cp d
    ld b, [hl]
    ld [$d521], sp
    push bc
    dec hl
    ld c, c
    inc a
    ld l, $15
    pop bc
    sbc d
    call nz, $f772
    ld sp, hl
    or h
    sub l
    di
    ld c, $19
    and [hl]
    inc a
    cp h
    db $10
    ld h, $75
    ld [de], a
    adc [hl]
    ld b, d
    jr c, jr_009_70b3

    sbc c
    db $e4
    ld hl, $c6fd
    ld l, $08
    ld a, [hl+]
    ld c, e
    and h
    ld b, c
    ld b, c
    ld b, $19
    sbc h
    ld e, $b0
    ld h, $50
    db $76
    add d
    sub b
    adc d
    jr c, jr_009_70d9

    inc b
    and [hl]
    ld [$86de], sp
    pop de
    sub d

jr_009_70b3:
    ld [$d878], sp
    and h
    ld b, h
    ld d, e
    add e
    ld a, c

jr_009_70bb:
    ld [hl], b
    ld h, e
    ret nc

    ld d, c
    sub e
    dec b
    push hl
    ld l, h
    ld c, h

Call_009_70c4:
    add [hl]
    db $10
    jr c, jr_009_7139

    ld a, b
    and e
    ld h, $9c
    ld b, e
    ld sp, hl
    ld e, $08
    ld h, b
    cp c
    db $10
    ld h, b
    ret


    add hl, de
    dec c
    ld d, d
    add hl, hl

jr_009_70d9:
    and e
    pop af
    ld c, $91
    rla
    and c
    ret z

    ld [hl], c

jr_009_70e1:
    jr z, jr_009_70bb

    ld h, b
    and c
    add hl, de
    ccf
    dec d
    sub b
    add h
    ld de, $8454
    ld a, [bc]
    ld c, [hl]
    ld [$7675], sp
    ld h, l
    ld [hl], c
    ld l, l
    ld [bc], a
    ld b, d
    ld c, d
    ld c, [hl]
    dec e
    inc de
    inc b
    sub c
    and $4f
    sub [hl]
    or h
    add hl, bc
    ld [$7ef8], sp
    add [hl]

jr_009_7106:
    jr jr_009_712d

    or $16
    cp c
    ld c, l
    ld b, h
    xor h
    jr nc, jr_009_7134

    ld h, e
    and d
    pop hl
    xor b

Jump_009_7114:
    ld b, c
    inc d
    add [hl]
    ld [hl-], a
    and h
    ld a, [$51ed]
    ld c, h
    ld a, [bc]
    jr nc, jr_009_70e1

    xor b
    ld l, d
    ld de, $2884
    ld c, l
    inc b
    sbc d
    and b
    db $ed
    dec c
    ld b, e
    adc e

jr_009_712d:
    jr nc, @-$1e

    sbc c
    ld c, [hl]
    inc d
    ret z

    ld h, c

jr_009_7134:
    add d
    ld e, h
    ld de, $dab7

jr_009_7139:
    add d
    ld de, $3086
    inc a
    adc $c3
    ld h, [hl]
    cp b
    ret nz

    ret z

    ld b, b
    adc l
    add $f4
    rla
    cp [hl]
    ld d, $0b
    jr jr_009_7106

    ld h, b
    rst $38
    rlca
    ld b, $09
    or [hl]
    jr nc, jr_009_71d4

    rrca
    ld l, a
    ld d, b
    ld [hl+], a
    and e
    jr nz, @-$24

    jr jr_009_718f

    inc hl
    dec de
    db $e4
    pop hl
    adc $1b
    call $826c
    rst $28
    or b
    ld hl, $2761
    ld h, $54
    adc a
    ld l, h
    db $10
    dec a
    xor $1d
    add h
    jr z, @-$37

    ld a, [hl+]
    jr c, @-$3d

    add d
    inc de
    ld b, $17
    add h
    inc c
    add hl, hl
    ld de, $11d1
    adc [hl]
    jr nc, @-$1a

    ld h, d
    sub c
    ld de, $4e1e
    ld e, h
    ld [hl], h

jr_009_718f:
    nop
    ld b, h
    cp l
    ld b, h
    ld d, b
    call nc, $c1e9
    ld e, a
    sub e
    sub e
    inc c
    inc d
    db $10
    add a
    add hl, sp
    ld e, e
    ldh a, [$c8]
    adc [hl]
    ld b, h
    add hl, de
    db $f4
    rst $20
    ld b, d
    ld e, l
    jp nz, $e039

    ld l, d
    db $e4
    ld [$6090], a
    sub e
    xor d
    dec b
    jp nz, $513a

    add d
    pop de
    ld b, e
    ld c, [hl]
    jr c, @+$53

    ld b, d
    ldh a, [$f3]
    sbc d
    inc c
    ld l, b
    dec hl
    ld a, [hl-]
    db $e3
    ld [c], a
    and [hl]
    jp hl


    ld a, [bc]
    db $10
    ld b, b
    add d
    ld [hl], d
    ld hl, $372b
    and a
    inc d
    ld a, [bc]

jr_009_71d4:
    dec de
    rst $18
    ei
    sbc e
    ld b, c
    inc b
    pop hl
    rst $18
    ld l, [hl]
    ld sp, hl
    cp h
    inc de
    ccf
    db $fd
    rst $28
    ld h, $d2
    db $10
    ld a, h
    rst $38
    ret


    ld de, $43aa
    ld e, a
    ei
    ld h, b
    add h
    ld [hl], b
    ld h, b
    add a
    dec sp

Jump_009_71f4:
jr_009_71f4:
    ld a, [c]
    ld [$e826], sp
    ld hl, $ff3f
    or b
    and a
    dec d
    or e
    cp $f5
    ld b, $6f
    inc b
    ld c, $fb
    cp $b6
    ld l, l
    inc b
    db $10
    ld b, c
    cp [hl]
    sbc $f9
    pop bc
    inc c
    db $10
    ld [hl], h
    rst $28
    ld [hl], c
    rl c
    inc bc
    inc b

jr_009_7219:
    ld de, $a0f0
    ld [hl], a
    cp b
    push de
    cp $aa
    ld d, e
    rst $00
    ld e, a
    db $fc
    ccf
    ld d, l
    inc hl
    inc a
    dec h
    rst $38
    cp $a2
    rla
    ld [$2a3c], a
    cp $8a
    ld e, a
    and d
    call nc, $aaee
    jr nc, @+$7c

    add hl, hl
    ld e, e
    adc [hl]
    sub $0a
    dec l
    ld [c], a
    sbc a
    xor e
    xor [hl]
    ld c, [hl]
    ld [hl], l
    ldh [$62], a
    add sp, -$47
    push hl
    add l
    xor e
    ld c, [hl]
    ld c, b
    ld a, [hl]
    jr nc, jr_009_71f4

    rst $28
    db $fd
    ld e, b
    add h
    ld d, e
    adc [hl]
    ld [hl], d
    dec d
    ld [hl+], a
    sbc a
    ei
    rst $28
    and d
    jp nc, $9713

    ld hl, sp+$6f
    ldh [$be], a
    sbc [hl]
    ld [hl-], a
    ld h, b
    ld h, [hl]
    call nc, $f8c5
    add a
    add [hl]
    inc d
    add l
    ld a, [hl]
    adc h
    ld d, a
    pop bc
    sub b
    ld b, d
    ld c, $2d
    add hl, bc
    ld c, b
    ld d, d
    ld hl, $0f7e
    ld b, c
    ld d, d
    pop de
    ld c, l
    jr z, jr_009_7219

    ld hl, $bf49
    ld d, l
    ld h, d
    and d
    ld [hl+], a
    ld h, b
    cp $42
    daa
    dec d
    ld hl, $8708
    ld c, e
    ld e, c
    ld e, e
    inc [hl]
    ld c, e
    and d
    ld d, c
    ld h, d
    ld [hl+], a
    and b
    ld d, c
    ld e, a
    cp l
    cp $ab
    ld hl, $cf14
    ld e, a
    jp nc, Jump_009_6814

    ld a, [hl+]
    rlca
    or a
    ld [$a225], a
    jp nc, Jump_000_2a7a

    ld a, [$826a]
    ld c, c
    ld d, l
    ld l, a
    dec l
    ld h, d
    ldh [rWX], a
    ld h, d
    ld [c], a
    ld h, c
    add c
    ret z

    jp $b742


    rst $38
    db $f4
    add l
    dec b
    adc e
    ld d, h
    ldh [$a0], a
    xor d
    pop de
    ld a, b
    add l
    ld hl, sp+$59
    ldh [$d8], a
    adc d
    ld [hl+], a
    ld a, [hl+]
    ld hl, $4c88
    push de
    cp $88
    db $e4
    inc hl
    jr @-$5a

    sbc b
    db $10
    adc c
    ld c, l
    ld l, b
    or a
    ld a, [bc]

jr_009_72e9:
    ld h, $82
    inc d
    ld e, a
    dec h
    ld h, b
    adc b
    ld h, e
    dec d
    ld c, h
    sub l
    ld [c], a
    ld d, h
    or [hl]
    ret nc

    ret z

    ld d, d
    ld a, [de]
    ld hl, $f857
    inc de
    dec d
    ld d, e
    ld a, [hl+]
    ld d, $86
    ld b, $a0
    ld d, a
    rst $38
    ld [$9385], a
    dec d
    ld d, d
    add sp, -$5b
    ld h, l
    and e
    adc c
    and [hl]
    jr c, @-$16

    ld l, c
    ld a, d
    adc [hl]
    dec d
    ld l, b
    jr jr_009_72e9

    ld d, h
    sub a
    add c
    ei
    ld c, c
    ld d, a
    rst $38
    ld d, l
    ld [$6321], a

jr_009_7327:
    adc c
    ld a, l
    ld hl, sp+$12
    cpl
    ld [$7a55], a
    sbc h
    ld d, $8e
    inc d
    ld a, $82
    adc d
    sub a
    ld d, a
    ld a, [$feaa]
    and e
    ld l, c
    add $8e
    xor d
    xor c
    push hl
    xor e
    ld d, h
    ld b, d
    or l
    ld e, $1a
    dec de
    ld d, c
    ld a, [bc]
    call nc, Call_000_1079
    db $e4
    dec l

jr_009_7350:
    ld e, $72
    db $10
    or c
    add sp, $38
    ld b, d
    rst $00
    inc bc
    jp hl


    sub $bc
    ld c, [hl]
    ld l, d
    and c
    ld d, l
    ld [de], a
    sbc h
    call c, $1a53
    res 6, b
    jr z, jr_009_7327

    sbc l
    ld [hl], c
    sub d
    add e
    call nc, $ff2b
    inc a
    ld [hl], e
    ld a, [hl+]
    and $74
    ld de, $5c5d
    ld sp, hl
    add hl, bc
    rst $00
    ld e, a
    add $aa
    ld b, e
    ld [bc], a
    ld a, [de]
    rra
    sub e
    ld b, [hl]
    dec hl
    ld d, $f8
    ld a, [hl]
    and b
    adc l

jr_009_738a:
    rst $38
    rst $28
    xor c
    cpl
    sbc b
    ld h, l
    cp $9a
    ret nc

    ld d, l
    ld b, h
    ld e, a
    db $fc
    ret nz

    cp a
    rla
    push bc
    ccf
    add $aa
    push af
    ld b, l
    ld h, c
    rst $08
    rst $38
    db $10
    xor l
    rla
    cp $0f
    inc d
    cp l

Call_009_73aa:
    ld b, [hl]
    jr nc, jr_009_7350

    ccf
    ld b, b
    push af
    ld a, [de]
    ld e, a
    push hl
    dec a
    add hl, de
    inc sp
    sub c
    or b
    ld b, e
    ld a, h
    rrca
    add d
    db $f4
    and c
    and e
    ld sp, hl
    ld d, d
    and l
    xor h
    db $fc
    add a
    rst $08
    add sp, $42
    ld sp, hl
    jr jr_009_738a

    cp c
    db $10
    and l
    dec [hl]
    ld d, l
    inc hl
    rst $08
    jr nc, jr_009_7433

    jp nc, Jump_000_10ad

    rst $38
    rst $38
    sbc d
    ld sp, $442b
    di
    ld a, e
    add [hl]
    db $10
    rst $18
    ld [c], a
    rst $38
    rst $38
    add $92
    call nc, $8453
    ld c, a
    db $e3
    and d
    rst $38
    pop hl
    rst $38
    rst $38
    inc e
    jp z, Jump_009_5f09

    db $eb
    ld a, h
    dec [hl]
    call Call_009_467f
    adc c
    sbc d
    sbc b
    inc [hl]
    rra
    or c
    add hl, hl
    db $10
    pop af

Jump_009_7404:
    xor e
    ld b, [hl]
    ld c, e
    ld h, l
    db $e3
    sub l
    ld sp, hl
    add $b4
    add $4b
    ld h, l
    db $e4
    ld h, d
    call nc, $aa4a
    ld c, d
    xor l
    ld b, d
    add $b9
    add [hl]
    ld b, [hl]
    ld h, c
    ld d, h
    ld d, l
    ld d, c
    ld c, e
    add $ab
    ld h, h
    or b
    or b
    ld h, $4a
    cp c
    ld a, [bc]
    cp a
    ld b, a
    ld c, $42
    bit 0, h
    ld e, [hl]

jr_009_7431:
    xor e
    inc de

jr_009_7433:
    ld d, l
    ld d, l
    ld b, a
    inc l
    inc d
    ld l, l
    ld d, h
    db $76
    add b
    ld b, h
    xor l
    sub c
    ld a, l
    ld sp, $cb5f
    ld d, h
    db $10
    db $f4
    dec h
    db $fd
    ld e, a
    ld [$fbc7], sp
    add $06
    adc b
    sbc d
    add hl, hl
    adc e
    sbc d
    ld a, b
    ld [hl+], a
    call nc, $2884
    or a
    push af
    ld b, c
    adc h
    ld d, l
    adc h
    rst $28
    and l
    and b
    ld c, b
    sub d
    inc h
    sbc $96
    xor l
    inc d
    xor b
    db $e3
    ld c, b
    push af
    ld [$a518], sp
    ld c, l
    ld d, d
    cpl
    jr jr_009_74cc

    jr z, @-$1d

    sbc a
    ld c, c
    ld e, d
    dec b
    ld d, h
    pop hl
    ld a, [c]
    sbc l
    ld l, d
    and e
    add d
    ld d, c
    ld a, [hl]
    sub l
    rst $38
    jr c, jr_009_7431

    ld d, a
    db $eb
    ld d, l
    add hl, sp
    xor a
    db $fd
    xor d

Call_009_748e:
    add hl, sp
    ld l, d
    inc a
    jp hl


    add d
    ld [hl], b
    ld h, $a8
    jp c, $833a

    and e
    ld [de], a
    and [hl]
    ld a, [bc]
    ld b, l
    pop af
    rla
    db $10
    and c
    cp $65
    ld l, d
    add d
    rst $38
    and b
    rst $38
    add a
    dec de
    ld e, a
    rst $38
    ei
    ld a, [hl]
    jr z, jr_009_74d7

    dec d
    db $eb
    db $ec
    ccf
    ld a, [$c9ba]
    and l
    ld e, b
    and c
    ld a, a
    rst $38
    rst $38
    sbc d
    ld d, a
    db $ed
    ccf
    push af
    ld e, c
    pop bc
    dec c
    ld a, a
    ldh a, [$71]
    ret nc

    rst $38
    dec c

jr_009_74cc:
    sbc l
    db $10
    ld [hl], c
    dec hl
    push de
    inc e
    ld d, b
    ld b, d
    jp nc, $e7bf

jr_009_74d7:
    ld a, [hl+]
    rrca
    rst $38
    ld d, h
    ld [hl], e
    ld d, h
    ld b, h
    ld a, h
    ld c, b
    ld h, [hl]
    cp [hl]
    add hl, de
    ld c, a
    ld a, [hl-]
    xor l
    inc a
    cp d
    ld h, $4f
    ld b, [hl]
    ld c, a
    add hl, de
    ld [hl], l
    ld h, $09
    dec h
    ld d, l
    rst $38
    ld c, [hl]
    ld b, l
    inc hl
    or l
    adc b
    ei
    ld [$54a0], a
    inc hl
    ld d, l
    ld e, a
    or b
    xor b
    ld d, l
    ld h, [hl]
    dec bc
    ld e, a
    ld l, b
    sbc b
    pop bc
    rst $38
    xor d
    ld a, [de]
    xor c
    and b
    ld b, [hl]
    ld c, b
    jp hl


    adc e
    adc h

jr_009_7512:
    dec a
    ld d, l
    dec [hl]
    xor b
    sbc b
    adc d
    ld c, e
    adc h
    sub h
    sbc d
    xor b
    inc h
    inc d
    jr z, jr_009_7535

    ld d, h
    ld l, b
    ld [de], a
    jr @-$29

    ld c, e
    ld l, d
    ld b, $d5
    rst $30
    ldh [rWY], a
    ld h, e

Call_009_752e:
    add [hl]
    sub d
    add hl, de
    jp $ffaf


    sub c

jr_009_7535:
    pop bc
    ld d, e
    sbc l
    ld a, [hl+]
    ld d, l
    dec h
    add hl, de
    dec bc
    jp hl


    ld c, [hl]
    ld l, b
    ld d, $54
    db $10
    ld h, b
    add [hl]
    inc b
    db $ed
    sub d
    sub c
    adc h
    xor b
    ld [$5852], a
    ld h, d
    ld [c], a
    pop hl
    and e
    and l
    ld sp, $c598
    ld a, [hl-]
    xor b
    push bc
    ld c, l
    db $10
    and e
    sub c
    adc e
    ld e, d
    ld a, [de]
    sub h
    jp nz, Jump_009_6539

    ld d, l
    and e
    ld c, d
    ld d, h
    adc d
    inc a
    jp z, $eaa3

    daa
    db $db
    ret


    add sp, $7a
    ld a, c
    rst $18
    rst $20
    sub [hl]
    cp a
    jr nz, jr_009_7512

    and a
    ld h, a
    xor b
    jp $90a0


    add h
    dec hl
    ld sp, hl
    call z, Call_000_02fd
    xor b
    ld d, b
    ld c, c
    rrca
    rst $38
    sbc c
    pop de
    and h
    dec c
    inc de
    jr nz, @-$5c

    ldh a, [$7f]
    add hl, de
    rst $18
    cp $aa
    ld l, $4a
    ld d, $38
    ld a, a
    dec b
    pop af
    cp a
    rst $38
    db $fc
    rla
    and h
    xor a
    add h
    rst $38
    db $ec
    rst $00
    dec c
    ld a, a
    ld [bc], a
    cp a
    and e
    ld d, b
    ccf
    rst $38
    rst $20
    inc a
    cp l
    rst $38
    rst $38
    rst $38
    push af
    ld [hl], l
    dec e
    inc d
    or a
    db $fc
    ccf
    rst $38
    and a
    ld a, a
    ld [c], a
    ldh [rIE], a
    ld hl, sp-$37
    db $db
    call nz, Call_000_3c30
    rra
    ldh [$c8], a
    add hl, sp
    jp c, $83cc

    rlca
    ld [c], a
    rst $08
    ld sp, hl
    sub $fb
    or b
    ld b, e
    sub b
    rst $18
    ld a, [$7f74]
    db $f4
    or h
    jr nc, jr_009_763c

    ld e, a
    ld a, [$3f73]
    ld c, l
    ld a, [de]
    ld d, d
    rst $10
    sbc a
    and h
    add b
    ld b, h
    cp e
    inc de
    xor c
    ld d, l
    ld c, [hl]
    dec [hl]
    ld l, d
    rst $20
    ld c, [hl]
    ld e, d
    sub l
    ld [hl], b
    add d
    add hl, sp
    ld l, l
    inc hl
    ld a, [bc]
    and l
    ld c, [hl]
    ld c, e
    ld d, d
    di
    and d
    cp l
    ld c, b
    adc $b8
    ld a, [hl-]
    dec sp
    ld d, a
    inc d
    db $ec
    add d
    dec sp
    sub h
    adc h
    xor $9c
    db $eb
    ld d, l
    db $e3
    or d
    adc a
    adc b
    rst $18
    ld [hl+], a
    xor d
    call nc, $c9e9
    ld b, [hl]
    ld e, $c7
    inc h
    and [hl]
    ld d, h
    ld [hl], d
    or h

jr_009_7627:
    and a
    ld h, h
    ld c, l
    sbc [hl]
    dec b
    and a
    ld a, d
    ld de, $47e0
    cp a
    ld a, [bc]
    db $76
    or h
    ld a, l
    jr nc, jr_009_76af

    cp h
    dec h
    ld c, a
    ld c, c

jr_009_763c:
    rst $38
    xor $f4
    ld a, [c]
    ret c

    ld a, [hl+]
    ld a, [de]
    rlca
    ld d, l
    add hl, hl
    db $d3
    add c
    rst $38
    ld c, b
    ld d, a
    ld hl, sp-$7a
    sub b
    jp hl


    ld [c], a
    dec l
    ld a, b
    inc d
    reti


    ld a, [bc]
    add d
    add sp, $70
    ld a, c
    inc c
    sbc b
    inc h
    ld l, c
    ld a, [de]
    or l
    ld c, [hl]
    ld c, c
    add hl, bc
    inc hl
    adc b
    ld b, d
    ld h, $14
    sbc b
    ld h, h
    inc hl
    add a
    ld l, d
    sbc c
    ld [$08c5], sp
    sbc b
    ld d, d
    ld h, d
    ld a, [hl+]
    sub h
    and l
    ld d, a
    add c

Call_009_7678:
    dec h
    ld a, [de]
    inc d
    add $35
    adc c
    sub l
    ld h, $c9
    add d
    add l
    ld [$4e49], a
    or [hl]
    ld a, [hl+]
    ld c, d
    adc h
    db $e3
    add [hl]
    jr nc, jr_009_76d6

    and e
    jr jr_009_76a3

    jr jr_009_7627

    xor b
    ldh [rSTAT], a
    dec h
    jr c, jr_009_76b9

    or c
    adc d
    ld c, [hl]
    ld [$9584], sp
    push de
    jr c, jr_009_76c9

    inc b

jr_009_76a3:
    adc b
    ld d, e
    add hl, bc
    jr jr_009_76bb

    rlca
    and d
    ld d, b
    ld c, l
    jr z, jr_009_76bf

    ld c, b

jr_009_76af:
    ld b, l
    ld e, b
    xor d
    add hl, de
    ld e, b
    sub $05
    jp nc, $2594

jr_009_76b9:
    ld [hl+], a
    ld b, l

jr_009_76bb:
    inc sp
    ld c, l
    ld h, l
    dec h

jr_009_76bf:
    add [hl]
    ld sp, $534c
    ld [hl], $83
    ld hl, $aa4c
    adc c

jr_009_76c9:
    and e
    dec e
    ld l, $58
    and [hl]
    ld d, $06
    add [hl]
    ld c, [hl]
    ld d, $d2
    ld l, b
    inc sp

jr_009_76d6:
    dec [hl]
    ld h, d
    ld de, $5789
    ld b, $a9
    ld sp, $a64b
    inc sp
    ld a, [hl]
    sub d
    ld d, $57
    xor d
    ld h, h
    sbc c
    jr nc, jr_009_773e

    add l
    dec h
    and c
    ld e, e
    ld b, d
    ld b, d
    adc b
    adc h
    ld d, c
    ld c, c
    ld c, h
    ld h, d
    and l
    sub [hl]
    ret c

    sbc d
    ld h, d
    ld d, [hl]
    ld [hl+], a
    ld b, c
    add l
    ld h, l
    adc h
    ld a, [hl+]
    ld [hl-], a
    ld e, l
    ld c, c
    ld d, e
    add d
    dec h
    ld c, h
    ld d, h
    inc h
    jp nc, Jump_009_5822

    pop bc
    ld l, d
    ld c, d
    ld b, d
    add c
    jr nc, @+$48

    ld e, b
    jp z, Jump_009_5a34

    add hl, hl
    jp z, Jump_000_30ae

    ld c, [hl]
    add hl, hl
    jr nc, jr_009_7783

    sub [hl]
    adc e
    cp b
    ld h, d
    ld e, b
    push hl
    xor c
    dec l
    xor b
    ret


    add l
    add l
    ld h, e
    xor [hl]
    ld e, c
    ld l, d
    ld d, h
    pop bc
    ld l, c
    xor b
    ldh a, [rOCPS]
    rst $38
    or $95
    ld d, [hl]
    adc [hl]
    dec a
    pop hl

jr_009_773e:
    jr nz, @-$60

    sbc d
    res 4, b
    rst $20
    sbc d
    jp z, $ba82

    rst $20
    ld e, e
    ld c, $69
    db $dd
    adc a
    ld c, b
    ld b, h
    ld l, d
    ld d, d
    ld l, [hl]
    or b
    ld l, d
    dec l
    ld d, [hl]
    ld b, [hl]
    ld e, h
    ld sp, $4348
    rst $00
    ld b, $46
    add h
    ret z

    add hl, sp
    add h
    sub c
    inc c
    ld c, d
    add l
    ld [hl-], a
    ld l, a
    add hl, sp
    ld [de], a
    inc de
    dec h
    ret


    ld [hl], b
    call nz, $362c
    ld l, h
    add e
    db $10
    db $ec
    call nz, Call_000_3146
    xor d
    adc a
    ld b, l
    ret c

    inc l
    sub b
    call c, $821c
    ld [hl-], a

jr_009_7783:
    ld h, b
    sbc b
    or c
    db $10
    pop de
    ld [hl], b
    ld b, e
    dec c
    inc b
    jr nc, jr_009_77d8

    ld d, l
    dec h
    ld d, h
    ld b, l
    inc e
    inc a
    ld a, [bc]
    ld sp, $0869
    ld b, [hl]
    ret


    adc h
    ld l, h
    rst $18
    ld sp, $1209
    and [hl]
    add hl, hl
    ld c, d
    ld b, d
    call nc, $c06e
    sbc b
    ld b, [hl]
    pop de
    ld l, b

jr_009_77ab:
    cp h
    ld d, h
    sbc d
    call nc, $2661
    adc d
    ld d, h
    inc [hl]
    ld [hl-], a
    or b
    and [hl]
    ld l, b
    ld b, d
    sub h
    xor c
    db $10
    res 7, [hl]
    adc d
    dec c
    ld a, [de]
    or c
    sub a
    ld b, l
    add hl, hl
    ld sp, $8b0f
    rlca
    sub e
    ld a, [hl+]
    sbc b
    jp hl


    jp Jump_000_30ef


    cpl
    ld [bc], a
    adc $13
    dec a
    ld d, l
    ld a, d
    ld b, d

jr_009_77d8:
    add hl, bc
    sub e
    inc bc

jr_009_77db:
    inc h
    ld d, e
    sub $82
    inc c
    pop bc
    ld a, [hl+]
    cp h
    ld a, [hl+]
    ld b, l
    or b
    ld b, c
    dec h
    and e
    dec bc
    push de
    rlca
    pop bc
    adc h
    add h
    adc e
    cp a
    sbc $34
    ld b, d
    ld b, d
    add [hl]
    ld d, d
    db $10
    jp $d402


    dec bc
    ld [hl+], a
    rst $10
    ld b, b
    xor h
    ld [hl-], a
    add hl, hl
    jr nc, jr_009_784c

    ld b, [hl]
    ld de, $f30b
    ld c, d
    jr z, jr_009_77ab

    sub d
    sub [hl]
    add l
    jp hl


    add hl, hl
    inc d
    ld l, b
    rst $08
    inc bc
    dec bc
    rla
    ld d, b
    and h
    and c
    add d
    add l
    ld d, c
    rst $00
    dec b
    call nz, Call_000_0b31
    rst $38
    inc hl
    ld e, l
    inc c
    ld d, e
    sub e
    ld b, [hl]
    sub d
    jr z, jr_009_77db

    cpl
    jp nc, $c5a8

    ld c, h
    jr nc, jr_009_7864

    ld [hl], d
    ld e, [hl]
    or b
    inc sp
    or l
    ld d, $8d
    or d
    dec [hl]
    ld sp, $07d7
    add hl, de
    and b
    call nz, $7473
    db $76
    or b
    ld h, $2c
    call nz, Call_009_78ac
    sub b
    ld c, l

jr_009_784c:
    ld d, l
    dec c
    ld d, l
    inc e
    and b
    ld b, h
    cp b
    ld d, l
    ld d, l
    ld d, a
    adc $37
    xor l
    xor l
    and b
    adc [hl]
    dec [hl]
    dec d
    dec b
    ld hl, $7b39

jr_009_7862:
    sbc b
    ld d, [hl]

jr_009_7864:
    ld [hl], $7d
    ld e, [hl]
    ld h, c
    jp $6881


    reti


    xor c
    ld b, [hl]
    adc b
    ld h, e
    add d
    and e
    ld c, b
    xor b
    jp nc, Jump_009_5289

    ld de, $4e49
    ld d, h
    add h
    and h
    rst $20
    ld h, c
    ld l, c
    adc l
    add sp, -$6c
    add a
    ld [hl+], a
    jr c, jr_009_78dc

    dec b
    ld a, [hl+]
    and c
    ld c, [hl]
    ld l, $21
    add hl, bc
    ld b, d
    push de
    scf
    ld d, b
    ld e, c
    db $dd
    rst $28
    xor l
    di
    ld e, d
    jr nc, @-$56

    cp d
    inc a
    ld e, l
    jp nz, $a799

    inc l
    jr c, @+$26

    ld sp, $83cf
    and b
    jp nz, Jump_000_1e9d

    db $10
    inc l

Call_009_78ac:
    ld [hl], c
    and l
    ld b, c
    jr nc, jr_009_7862

    or a
    add e
    dec d
    inc b
    dec c
    inc e
    ld d, c
    ld sp, $ce51
    add h
    jr z, jr_009_78de

    sbc h
    sub c
    jr z, jr_009_78ea

    daa
    inc l
    ld c, h
    ld [$64c7], sp
    ld c, $43
    inc e
    ld c, c
    ld a, d
    ld d, l
    xor c
    cp h
    xor d
    jp Jump_009_53d0


    pop af
    xor [hl]
    sbc b
    dec a
    rra
    jr jr_009_7952

    cp [hl]

jr_009_78dc:
    dec a
    ld sp, hl

jr_009_78de:
    ld a, [hl-]
    db $d3
    sbc l
    ldh [$ab], a
    call nc, $7ae5
    add hl, sp
    ld d, h
    jr jr_009_7913

jr_009_78ea:
    ld l, e
    or h
    pop de
    ld a, [hl]
    ld b, c
    jr c, jr_009_7950

    db $ed
    add c
    xor c
    ld a, [bc]
    sub b
    and e
    ld b, $a8
    ld h, l
    ld c, [hl]
    ld a, [bc]
    inc hl
    ld [hl+], a
    ld l, $a1
    ld b, d
    dec h
    jp hl


    ld c, b
    ld b, d
    jr c, jr_009_7981

    and e
    ld a, [hl+]
    ld hl, $9788
    adc c
    and [hl]
    dec d
    scf
    xor c
    ld h, $05

jr_009_7913:
    ld hl, $8a41
    ld h, b
    ld c, c
    ld h, d
    sub [hl]
    ld [hl], $f5
    ld b, $7b
    cp l
    ld c, $25
    db $76
    rlca
    ret c

    pop hl
    ld a, l
    ld e, l
    db $76
    ld h, $b4
    inc l
    ld a, [hl]
    add [hl]
    sbc h
    adc b
    dec h
    ld b, $a3
    ld a, [de]
    ld [$a221], sp
    push de
    ld b, l
    ld b, $b4
    cp b
    ld d, e
    ld [$efc5], sp

jr_009_793f:
    adc l
    ld l, c
    ld h, b
    ld c, c
    and e
    inc b
    ld de, $4141
    add hl, hl
    ld [c], a
    push de
    ld e, d
    ei
    and b
    ld e, b
    and h

jr_009_7950:
    dec h
    add d

jr_009_7952:
    ld a, [hl+]
    add hl, hl
    dec h
    ld b, l
    ld e, e
    sub $91
    adc b
    xor c
    inc b
    add a
    ld h, b
    ld [c], a
    sub [hl]
    dec c
    dec h
    ld hl, $065d
    jr nc, @-$66

    cp d
    ld b, [hl]
    jp nz, Jump_000_0547

    adc e
    ld c, h
    xor b
    ld h, e
    ld h, l
    ld h, $2b
    add hl, bc
    inc b
    ld [hl+], a
    inc d
    jp z, Jump_000_103b

    ld h, c
    db $76
    ld sp, $4899
    ld c, [hl]
    sbc d

jr_009_7981:
    inc d
    inc hl
    ld h, l
    inc c
    rla
    and l
    adc [hl]
    sbc d
    adc l
    ld d, h
    ld h, [hl]
    ld [hl], b
    rst $10
    sub h
    rst $20
    ld e, b
    pop de
    and [hl]
    jr nc, jr_009_793f

    dec b
    adc [hl]
    ld b, a
    bit 5, d
    and b
    and [hl]
    jr c, jr_009_79b3

    jr c, @-$01

    dec d
    and d
    rla
    sub [hl]
    and h
    ld d, b
    adc h
    and e
    add c
    rlca
    add d
    and d
    sub b
    adc b
    ld d, l
    and c
    ld c, [hl]
    cp d
    or h

jr_009_79b3:
    pop bc
    ld [hl], a
    ld d, d
    dec [hl]
    ld d, e
    xor l
    ld [hl], l
    dec b
    dec h
    xor d
    ld [hl+], a
    dec h
    ld c, b
    ret z

    adc [hl]
    scf
    add sp, $68
    ld d, a
    add [hl]
    inc [hl]
    cp a
    ld l, d
    add hl, sp
    dec d
    ld d, l
    xor a
    and b
    sbc b
    ld a, [c]
    ld l, d
    xor c
    adc a
    ld a, [hl+]
    ld a, [hl]
    db $10
    add d
    sbc [hl]
    sbc e
    jp $a77a


    dec hl
    sbc h
    ld e, d
    and c
    ld d, c
    ld d, l
    db $10
    sbc h
    inc [hl]
    ld [hl], d
    call nc, $ab64
    ld sp, hl
    and d
    ld hl, sp-$59
    ld a, [bc]
    ld b, h
    add $18
    rst $38
    ld sp, hl
    add e
    db $ed
    db $ed
    sbc h
    dec [hl]
    and e
    jr @+$61

    rst $38
    adc $82
    rst $38
    ld hl, sp+$47
    ld [hl], $31
    sbc l
    ld d, b
    dec [hl]
    call nz, $fc55
    ld [hl], d
    ld d, e
    ld d, $8a
    sbc b
    ld a, [hl]
    sub d
    sub b
    sub c
    sbc d

Call_009_7a14:
    jr c, jr_009_7a3c

    sub h
    cp $0f
    and c
    rst $38
    ldh [$f8], a
    cp b
    ld sp, hl
    xor e
    call nz, $bfaa
    rst $38
    rst $08
    cp $1f
    ld hl, sp+$7c
    db $fc
    cp h
    ld l, b
    xor a
    push af
    ld d, c
    dec [hl]
    cpl
    rst $38
    pop bc
    ld d, [hl]
    rra
    add a
    pop hl
    ld sp, hl
    adc d
    push af
    jr jr_009_7a95

jr_009_7a3c:
    ld l, l
    ld e, a
    ret nz

    ret nz

    db $e3
    ei
    ld a, [hl]
    add $34
    ld sp, $f8c2
    ld a, $38
    ld b, b
    adc e
    ld a, [hl]
    rra
    ret


    rst $10
    inc bc
    rst $38
    ld sp, hl
    ld c, b
    ld c, [hl]
    rra
    and c
    ld a, $11
    call nc, $f5ff
    db $ed
    ld b, b
    rst $38
    add a
    inc bc
    ld hl, sp+$73
    sbc l
    ld e, a
    ld c, e
    rst $38
    ld hl, sp+$7c
    ld b, l
    or h
    ld e, $d1
    rst $10
    ld e, a
    rst $38
    db $fc
    dec bc
    jp hl


    dec [hl]
    ld b, d
    sbc l
    ld [$ab3f], sp
    ld d, h
    scf
    rst $38
    add hl, de
    reti


    sra l
    rst $38
    db $fc
    ld e, l
    pop de
    or h
    ld [hl], e
    rst $08
    rst $38
    add hl, de
    ld l, b

Jump_009_7a8a:
    ld b, a
    ld l, d
    ld d, e
    rst $38
    call nz, $7465
    inc l
    db $76
    and b
    cp a

jr_009_7a95:
    pop de
    jp Jump_009_7404


    inc h
    ld d, e
    pop de
    add hl, bc
    or d
    db $fc
    ld [hl], e
    ld sp, $4515
    and $f1
    sub $94
    adc h
    ld a, l
    nop
    ld b, h
    or d
    sub d
    dec e
    ld d, l
    add hl, sp
    inc l
    ccf
    add e
    xor d
    db $f4
    dec d
    ld sp, $da41
    ld h, $b4
    ld d, l
    ld [$f432], a
    sub l
    ld a, a

jr_009_7ac1:
    sbc c
    adc l
    ld d, h
    db $10
    cp [hl]
    ld b, $bd
    ld h, d
    ld d, [hl]
    jr nc, @+$61

    and c
    ld h, d
    ld d, h
    xor b
    jp nc, Jump_009_4137

    ld h, e
    or e
    di
    xor c
    dec e
    di
    ld [hl], h
    xor c
    jr jr_009_7b1a

    ld b, d
    ld [hl], $af
    call nc, Call_009_603f
    ld a, [hl]
    ld [$d1d6], sp
    xor d
    dec b
    ld b, [hl]
    ld h, [hl]
    ld [hl], $83
    push de
    ld b, c
    ld sp, hl
    ld a, [hl]
    and l
    ld d, e
    ld a, [de]
    ld a, [de]
    xor a
    ld e, d
    adc a
    adc [hl]
    sbc c
    daa
    add b
    call nz, Call_000_2a28
    ld [hl], e
    cpl
    ld hl, sp+$2d
    pop af
    ld a, [hl+]
    ld h, e
    inc bc
    ld a, a
    push de
    cpl
    db $10
    rst $38
    sbc b
    jr nz, jr_009_7ac1

    inc a
    ld d, h
    ld b, l
    rst $38
    sbc l
    ld [$f9bf], sp
    pop de
    rst $38
    rst $38

jr_009_7b1a:
    sbc l
    rra
    rst $38
    ld sp, hl
    call Call_009_5f48
    ld a, [c]
    ld l, [hl]
    sub e
    dec a
    ld b, d
    call z, $b999
    ld [de], a
    cp $82
    ld c, h
    add $d7
    ld a, a
    ld e, l
    inc e
    ld e, h
    add hl, hl
    ld l, d
    db $76
    ld b, a
    jp z, Jump_009_6600

    cp h
    dec h
    ld c, [hl]
    ld [hl], l
    ld d, d
    sub a
    db $f4
    rla
    sub $22
    ld c, [hl]
    dec d
    ld a, [$fbff]
    call nc, Call_000_3728
    adc h
    inc hl
    ld h, a
    and b
    ld e, [hl]
    add l
    ld a, c
    ld c, $a0
    ld l, d
    call z, $cd24
    ld b, l
    adc c
    ld l, b
    ld d, $64
    ld l, [hl]
    ld h, h
    inc d
    pop bc
    inc [hl]
    ld h, l
    ld d, $23
    ld e, l
    sbc c
    ld c, b
    sbc e
    ld h, h
    ldh [$fa], a
    ld d, c
    ld l, d
    xor c
    ld [$e469], sp
    add h
    dec h
    dec h
    dec [hl]
    adc b
    sbc d
    xor a
    ret z

    ld d, h

jr_009_7b7c:
    ld h, d
    ld [hl+], a
    ld d, h
    ld h, e
    ld a, [hl+]
    ld h, d
    ld h, d
    rla
    and c
    add c
    ld [$c168], sp
    adc [hl]
    add hl, hl
    ld h, $5a
    ld b, d
    db $76
    inc [hl]
    ld a, b
    call $2062
    xor d
    sub [hl]
    sub b
    ld l, d
    ld c, b
    adc h
    inc de
    sub d
    xor d
    sub b
    adc b
    ld b, e
    inc b
    sbc c
    ld c, [hl]
    ld a, [hl-]

jr_009_7ba4:
    adc c
    ld c, d
    adc c
    cp [hl]
    dec hl
    sbc c
    ld [hl+], a
    ld c, l
    inc d
    sub l
    adc d
    and c
    sub b
    and l
    inc c
    db $10
    and d
    ld d, e
    dec [hl]
    jr nc, jr_009_7c1b

    sub d
    ld l, c
    ld b, d
    ld [$56b8], sp
    sub d
    sub l
    add c
    sub c
    ld d, c
    sub d
    sub d
    ld h, $0a
    dec h
    ld h, d
    and d
    and c
    add d
    add hl, hl
    add hl, bc
    jr c, jr_009_7ba4

    add d
    jr jr_009_7be8

    ld h, b
    ld c, h
    inc l
    sub h
    or h
    push bc
    jr nc, jr_009_7b7c

    ld b, c
    ld [hl+], a
    ld h, h
    or h
    call Call_000_21c2
    ld h, e
    jr c, jr_009_7bf8

    sbc c
    db $e4

jr_009_7be8:
    sbc d
    sub h
    ld l, b
    dec h
    ld e, d
    inc [hl]
    and b
    ld c, b
    ld h, b
    cp l
    ld a, [c]
    ld a, [hl+]
    sub [hl]
    sub h
    inc de
    adc c

jr_009_7bf8:
    ld d, [hl]
    sbc l
    ret z

    and [hl]
    xor a
    pop af
    sub b
    sub h
    db $e3
    and d
    xor c
    ld e, d
    cp a
    ld l, d
    ld d, [hl]
    push de
    inc a
    ld [$9e36], a
    ld [de], a
    and a
    ld a, [hl-]
    ld h, d
    add h
    ld e, d
    add e
    ld de, $0a27
    jp nz, $0aad

    jr z, jr_009_7c93

jr_009_7c1b:
    ld a, h
    add hl, sp
    ld a, c
    or e
    ld [bc], a
    db $f4
    ld b, e
    rst $38
    and e
    ldh [$a0], a
    or d
    ld d, h
    sbc c
    or b
    ld a, a
    dec hl
    jp nc, $13b6

    ld e, b
    ld l, b
    xor h
    ld d, h
    sbc d
    ld [hl], c
    rra
    dec b
    ld d, l
    ld [hl-], a
    ld e, $b7
    and c
    ld l, c
    ld e, c
    sub e
    inc bc
    ld a, [c]
    ld a, [hl+]
    cp $95
    ld e, [hl]
    rra
    dec b
    and h
    ld sp, $1c94
    add a
    ld a, [c]
    xor d
    add $3e
    ld [$a1a1], sp
    sbc c
    rst $28
    jr c, jr_009_7ccf

    ld l, d
    or c
    and a
    add l
    and e
    and $97
    add a
    add sp, $55
    ld e, a
    and [hl]
    ld e, [hl]
    dec de
    ld sp, $e1bb
    ld a, [hl]
    ld b, l
    xor l
    sbc b
    xor b
    ld c, h
    ld [de], a
    ld l, a
    ld a, b
    ld l, d
    add hl, hl
    ld d, $c9
    add l
    ld a, d
    call z, $de9b
    rla
    or [hl]
    and c
    pop hl
    ld [$eb43], a
    ld a, d
    ld [hl-], a
    ld l, b
    add a
    add [hl]
    sbc $15
    rlca
    add l
    sub c
    xor l
    ld hl, sp-$38
    ld sp, $0f9a
    add a
    or a

jr_009_7c93:
    add e
    or h

jr_009_7c95:
    add sp, $21
    ld a, [hl]
    rra
    add e
    ld h, d
    or h
    sbc b

jr_009_7c9d:
    ld d, e
    db $fc
    add h
    sbc $18
    ld a, e
    ld b, b
    sbc $1e
    inc de
    ld sp, $8759
    db $fc
    db $e3
    inc [hl]
    jp $f0e1


    ld a, b
    ld a, b
    ld l, b
    ld h, l
    and $3f
    ccf
    inc bc
    or b
    xor l
    db $eb
    or h
    ld e, $0c
    add hl, de
    ld c, h
    ld h, d
    rst $08
    jp z, $b5de

    xor l
    ld c, a
    add a
    add a
    db $10
    or h
    ld l, c
    db $fc
    or a
    or l

jr_009_7ccf:
    ld hl, sp+$7f
    db $eb
    ld b, c
    pop hl
    ld d, h
    ld l, a
    ld hl, sp+$5f
    xor l
    ld l, d
    jp nc, Jump_009_68ad

    ld d, c
    ret


    ld b, l
    ld d, a
    db $e3
    ld a, a
    push de
    db $ed
    sbc a
    ld h, b
    ld b, h
    cp b
    sbc $41
    ld e, a
    add hl, sp
    sub b
    add [hl]
    ld hl, $374e
    db $ec
    rst $00
    jr c, jr_009_7d54

    ld l, b
    ld d, [hl]
    adc [hl]
    ld b, l
    ld [$0686], sp
    add a
    ld c, [hl]
    jr z, jr_009_7c95

    ld hl, $2354
    and d
    ld hl, $385a
    jr z, jr_009_7d5d

    dec sp
    jr c, jr_009_7c9d

    ld c, e
    sub c
    db $e3
    add [hl]
    and h
    sub l
    ld b, c
    add hl, sp
    ld l, c
    ret z

    sub b
    ld b, d
    add hl, sp
    ld e, a
    call nc, $e810
    and $a8
    ld l, b
    adc d
    ld a, [hl-]
    xor l
    xor a
    ld c, [hl]
    sbc d
    inc a
    cp c
    jp z, Jump_000_2a8a

    ld [hl], e
    jp z, $d1ad

    ret


    rlca
    pop de
    db $10
    ld sp, $83c2
    ret


    ccf
    ld b, c
    inc e
    ld [$0233], sp
    adc d
    ld c, $a7
    inc d
    inc e

jr_009_7d43:
    ld hl, sp+$40
    adc l
    inc e
    add hl, bc
    dec l
    add h
    dec e
    ld c, d
    ld [hl], c
    ld h, b
    jp c, Jump_000_0e3a

    and a
    dec de
    ld b, h

jr_009_7d54:
    jp c, Jump_009_7114

    rst $10
    xor d
    and c
    jr nz, jr_009_7d43

    inc l

jr_009_7d5d:
    xor e
    inc hl
    xor c
    ret


    ld e, b
    ret c

    ld c, e
    ld b, a
    ld e, [hl]
    inc de
    rst $20
    ld c, d
    ld a, h
    ld h, b
    call Call_000_3e94
    push hl
    call Call_000_1537
    pop hl
    push hl
    ld a, [$d0be]
    call Call_009_7d89
    ld a, [$d0be]
    ld b, a
    ld a, [$d0bf]
    cp b
    pop hl
    jr z, jr_009_7d8c

    ld bc, $0028
    add hl, bc

Call_009_7d89:
    push hl
    jr jr_009_7d9f

jr_009_7d8c:
    ld a, $7f
    ld bc, $0013
    add hl, bc
    ld bc, $0006
    jp Jump_000_36e0


    call Call_000_3e94
    push hl
    ld a, [$cfd5]

jr_009_7d9f:
    add a
    ld hl, $7dae
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    jp Jump_000_1955


    db $e4
    ld a, l
    db $eb
    ld a, l
    db $f4
    ld a, l
    ei
    ld a, l
    jr z, jr_009_7e36

    cpl
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    add hl, sp
    ld a, [hl]
    dec a
    ld a, [hl]
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    db $e4
    ld a, l
    ld [bc], a
    ld a, [hl]
    rlca
    ld a, [hl]
    dec c
    ld a, [hl]
    inc de
    ld a, [hl]
    inc e
    ld a, [hl]
    inc h
    ld a, [hl]

Call_009_7de2:
    ld b, e
    ld a, [hl]
    adc l
    adc [hl]
    sub c
    adc h
    add b
    adc e
    ld d, b
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    add l
    adc e
    sbc b
    adc b
    adc l
    add [hl]
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld d, b
    add l
    adc b
    sub c
    add h
    ld d, b
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld d, b
    add [hl]
    sub c
    add b
    sub d
    sub d
    ld d, b
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc b
    add d
    ld d, b
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ld d, b
    adc b
    add d
    add h
    ld d, b
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    add c
    adc b

jr_009_7e36:
    sub c
    add e
    ld d, b
    add c
    sub h
    add [hl]
    ld d, b
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld hl, $7e64
    ld a, [$d031]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd6d

jr_009_7e5c:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_009_7e5c

    ret


    jp nz, $cc7e

    ld a, [hl]
    ret c

    ld a, [hl]
    ld c, d
    ret nc

    db $dd
    ld a, [hl]
    jp hl


    ld a, [hl]
    push af
    ld a, [hl]
    nop
    ld a, a
    ld c, d
    ret nc

    ld c, d
    ret nc

    dec bc
    ld a, a
    inc de
    ld a, a
    inc e
    ld a, a
    ld c, d
    ret nc

    inc h
    ld a, a
    ld c, d
    ret nc

    ld c, d

Call_009_7e85:
    ret nc

    inc l
    ld a, a
    ld c, d
    ret nc

    inc sp
    ld a, a
    ld a, [hl-]
    ld a, a
    ld c, d
    ret nc

    ld c, d
    ret nc

    ld b, d
    ld a, a
    ld c, d
    ret nc

    ld c, h
    ld a, a
    ld d, l
    ld a, a
    ld e, e
    ld a, a
    ld c, d
    ret nc

    ld h, l
    ld a, a
    ld l, h
    ld a, a
    ld a, c
    ld a, a
    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, d
    ret nc

    sbc b
    adc [hl]
    sub h
    adc l
    add [hl]
    sub d
    sub e
    add h
    sub c
    ld d, b
    add c
    sub h
    add [hl]
    ld a, a
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    adc e
    add b
    sub d
    sub d
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc l
    add h
    sub c
    add e
    ld d, b
    add c
    sub h
    sub c
    add [hl]
    adc e
    add b
    sub c
    ld d, b
    add h
    adc l
    add [hl]
    adc b
    adc l
    add h
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    sub d
    sub [hl]
    adc b
    adc h
    adc h
    add h
    sub c
    ld d, b
    add c
    add h
    add b
    sub h
    sub e
    sbc b
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    add c
    adc e
    add b
    add d
    adc d
    add c
    add h
    adc e
    sub e
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld d, b
    add d
    add a
    adc b
    add h
    add l
    ld d, b
    sub d
    add d
    adc b
    add h
    adc l
    sub e
    adc b
    sub d
    sub e
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e

Jump_009_7f71:
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    ld hl, $d063
    ldh a, [$f3]
    and a
    jr z, jr_009_7f91

    ld hl, $d068

jr_009_7f91:
    bit 2, [hl]
    jr nz, jr_009_7fa5

    set 2, [hl]
    ld hl, $7ba8
    ld b, $0f
    call Call_000_35d6
    ld hl, $7fb2
    jp Jump_000_3c49


jr_009_7fa5:
    ld c, $32
    call Call_000_3739
    ld hl, $7b53

Jump_009_7fad:
    ld b, $0f
    jp Jump_000_35d6


    ld a, [bc]
    rla
    sbc e
    ld c, c
    dec h
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
