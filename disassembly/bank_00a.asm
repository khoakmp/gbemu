; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld d, l
    cp l
    push de
    ld d, h
    ldh a, [$1f]
    ld a, [bc]
    or h
    and l
    ld d, h
    push hl
    ld h, d
    ld sp, hl
    ld l, d
    ld a, [hl+]
    sub h
    rst $20
    ld h, e
    ld l, c
    ld [$8de5], sp
    db $e3
    ld [hl], l
    ld b, l
    ld b, a
    jr c, jr_00a_4048

    inc sp
    ld h, $c3
    and [hl]
    sbc c
    xor c
    ld d, e
    scf
    ld sp, $6245
    ld de, $24cc
    pop bc

Call_00a_402b:
    di
    ld [$6284], sp
    and h

jr_00a_4030:
    pop bc
    jr nc, jr_00a_409f

    add a
    pop hl
    ld [hl], l
    db $18, $84
    jp z, Jump_00a_714c

    ld h, c
    ld c, c
    adc c
    sbc b
    ld h, e
    add hl, hl
    inc d
    adc h
    jp z, $85d0

    add c
    inc [hl]

jr_00a_4048:
    and b
    db $ed
    ld d, h
    sub a
    ld c, b
    add [hl]
    add [hl]
    ld [hl+], a
    db $30, $8c
    add hl, de
    add hl, bc
    ld d, $35
    ld b, l
    dec d
    and e
    ld [$1622], sp
    ld b, l
    sub h
    push bc
    add d
    ld [hl], e

jr_00a_4061:
    dec b

jr_00a_4062:
    inc b
    ld [hl-], a
    ld l, b
    ld h, d
    ld l, d
    ld d, d
    ld h, d
    sub [hl]
    xor b
    ld h, a
    ld [c], a
    ld l, d
    inc sp
    xor d
    xor d
    and e
    adc [hl]
    ld a, $2f
    ld a, e
    adc d
    ld b, d
    ld a, b
    add hl, sp
    dec d
    call nz, Call_000_09a9
    rl c
    ld de, $bc2f
    jr nc, @+$32

    daa
    dec c
    inc l
    ld b, e

jr_00a_4089:
    ld e, [hl]
    jr nc, jr_00a_4030

    ld d, [hl]
    ld [hl], e
    ld a, [hl-]
    and e
    ld hl, $9b16
    and c
    and h
    ld hl, $5448
    and c
    jr nz, jr_00a_4061

    adc d
    inc a
    ld b, h
    db $ed

jr_00a_409f:
    ld c, a
    and d
    sub l
    add hl, de
    ld sp, hl
    adc d
    dec bc
    ld d, d
    add l
    and l
    ld a, [hl+]
    sub [hl]
    or b
    push bc
    inc hl
    push bc
    ld e, b
    ld a, [hl+]
    xor d
    inc d
    ld b, e
    jr z, jr_00a_4062

    sub h
    adc [hl]
    sub l
    inc l
    ld b, h
    add hl, bc
    dec [hl]
    add d
    jr nc, jr_00a_4089

    jr jr_00a_40e2

    sbc b
    pop bc
    inc b
    add hl, bc
    ld d, h
    ld b, h
    inc sp
    ld l, e
    inc b
    ld [$2ca4], sp
    inc c
    ld a, [bc]
    xor a
    add d
    ld b, l
    ld l, c
    sub h
    ld c, l
    ld b, h
    jr z, jr_00a_4156

    ld b, e
    ld [bc], a
    add l
    dec c
    inc h
    xor h
    dec bc
    ld [de], a
    cp h

jr_00a_40e2:
    db $10
    call z, $3b84
    ld l, e
    ld a, l
    ret nc

    or h
    call c, $ab83
    jr z, @+$3b

    ld a, d
    ld de, $7b50
    xor [hl]
    jp $8d6f


    dec b
    pop de
    ld e, [hl]
    sbc c
    ld d, c
    adc l
    inc e
    ld c, c
    pop af
    ld h, b
    ld b, h
    cp l
    and l
    ld d, e
    add c
    db $d3
    rla
    xor d
    scf
    and b
    ld d, d
    add sp, -$1e
    ld a, b
    and l
    ld d, a
    sub e
    sub l
    ld b, d
    ld sp, $3495
    and c
    sbc b
    add [hl]
    sub e
    and c
    ld c, c
    ld l, b
    db $e3
    ld d, [hl]
    cpl
    ld b, l
    xor d
    sub e
    ld e, c

Jump_00a_4125:
    ld d, c
    ld b, d
    ld e, $3a
    ld a, [hl+]
    add [hl]
    sbc l
    ld a, [hl-]
    dec d
    ld e, $0b
    ld c, [hl]
    ld [hl], l
    ld [c], a
    xor a
    rst $08
    and h
    rst $18
    dec sp
    inc e
    ld c, c
    and e
    dec de
    xor e
    add hl, de
    pop af
    jp z, Jump_00a_5583

    inc hl
    xor d
    ld l, e
    dec bc
    inc [hl]
    ld c, $44
    jp nc, $4471

    call nz, $29a8
    or d
    ld d, a
    ld [de], a
    call nz, $b5e9
    inc b

jr_00a_4156:
    db $db
    ld c, c
    call c, $9283
    rst $00
    dec hl
    adc h
    ld c, [hl]
    ld [hl], h
    add $15
    rra
    ld c, b
    ld [hl], a
    cp [hl]
    ld d, l
    ld l, c
    dec d
    ld d, h
    ld a, [c]
    ld a, [de]
    and d
    xor b
    xor b
    ld d, l
    ld c, [hl]
    and $8b
    ld d, d
    sbc d
    ld a, [de]
    ld h, $3c
    inc b
    add a
    ld d, l
    jr jr_00a_41df

    ld d, d
    ld h, e
    sub l
    ld d, l
    ld a, [de]
    add d
    and b
    xor b
    ld h, l
    ld h, h
    xor d
    dec [hl]
    ld d, l
    dec h
    ld a, [$bd41]
    dec b
    ld d, e

Jump_00a_4190:
    ld a, [de]
    add d
    ld c, c
    ld c, b
    and h

jr_00a_4195:
    xor e
    db $eb
    rst $38
    ld d, b
    ld h, b
    cp [hl]
    rst $28
    xor $4d
    daa
    sub l
    ld h, $48
    sub a
    sub l
    ld a, d
    jp z, $a9d6

    ld [$8a13], sp
    ld c, c
    ld c, e
    and b
    ld b, [hl]
    rst $38
    ld [hl+], a
    xor d
    and h
    ld [c], a
    ld d, c
    db $d3
    add d
    and b
    db $ec
    ld e, l
    ld c, b
    ld b, c
    add [hl]
    ld [hl], $b6
    ld a, [hl+]
    ld [hl-], a
    sub d
    jp c, Jump_00a_68b2

    adc b
    ldh [rLYC], a
    and h
    inc hl
    inc d
    inc e
    ld a, [de]
    ld b, $d6
    ld sp, $56e3
    ld [hl+], a
    ld [hl+], a
    ld h, e
    ld a, [hl+]
    adc h
    ld e, b
    or [hl]
    ld a, [hl-]
    inc e
    jp z, $a821

    and h

jr_00a_41df:
    dec d
    and e
    sbc [hl]
    ld c, $cc
    and d
    dec h
    ld c, c
    add [hl]
    ld c, [hl]
    scf
    ld l, $41
    ld c, h
    inc hl
    adc c
    jr c, jr_00a_4209

    rst $08
    adc [hl]
    ret z

    jp c, $ea31

    inc sp
    adc c
    ld d, b
    xor c
    jr c, jr_00a_4217

    and h
    adc $36
    add [hl]
    jr nc, jr_00a_4195

    jp hl


    ld d, $3c
    add hl, bc
    ld b, d
    adc c

jr_00a_4209:
    ld [hl], e
    add hl, hl
    inc [hl]
    ld e, e
    and b
    ld c, [hl]
    dec de
    jp z, $3783

    ld d, l
    ld b, l
    ld a, [de]
    db $e3

jr_00a_4217:
    sub d
    ld a, [$13a8]
    ld b, [hl]
    dec h
    dec b
    cp $3a
    ld d, d
    dec de
    and l
    ld c, l
    db $10
    adc a
    ld bc, $c104
    ld c, d
    sub c
    ld e, b
    ldh a, [$af]
    ld h, l
    ld d, a
    ld h, l
    inc hl
    db $e3
    rst $00
    xor d
    and d
    ld [$363e], a
    ld a, [hl]
    ld a, [de]
    jp hl


    ld a, [hl+]
    ld a, c
    sbc h
    rra
    ld hl, sp+$3f
    ld sp, hl
    ccf
    and a
    add c
    dec d
    ld d, b
    sbc $0c
    ld c, d
    call nc, Call_000_2773
    inc [hl]
    ld de, $9c5d
    ldh a, [$7e]
    add d
    ld e, d
    ld [hl], c
    jr nc, jr_00a_4283

    sbc b
    ld a, d
    sbc b
    ld a, a
    ld a, [$2b18]
    ld [$7f70], a
    ld a, [hl]
    ld h, l
    ld d, l
    ld c, d
    add e
    xor d
    sub b
    and c
    ldh [$9c], a
    ld a, $c6
    or e
    ld c, e
    rst $38
    or b
    ret nc

    ccf
    sbc h
    inc sp

Jump_00a_4277:
    ld sp, hl
    cp [hl]
    rst $38
    db $fc
    di
    inc bc
    rst $38
    add e
    inc e
    ld de, $dfc2

jr_00a_4283:
    ld hl, sp+$78
    ld h, d
    rst $38
    jp nz, Jump_000_02a7

    dec c
    ld h, $75
    cp h
    or [hl]
    db $10
    cp a
    jp nz, Jump_000_03c7

    ld hl, sp+$23
    and [hl]
    ld c, a
    db $f4
    db $ed
    rst $38
    ldh [$d1], a
    push bc
    ld a, [hl]
    rra
    ld sp, hl
    sbc e
    ld a, a
    cp $1f
    rst $00
    ccf
    call nz, $997f
    ld b, h
    ld d, a
    ldh a, [rHDMA1]
    ldh [$5c], a
    ld h, e
    add hl, de

jr_00a_42b2:
    xor a
    ld a, [$3f71]
    sbc h
    ld c, c
    sbc l
    ei
    ld a, c
    pop bc
    ei
    inc e
    ld l, c
    ld a, [bc]
    db $fc
    rst $18
    cp $64
    xor d
    ccf
    rst $20
    ld a, [hl+]

jr_00a_42c8:
    rra
    cp $16
    rst $18
    adc d
    sub d
    rst $18
    or e
    ld a, c
    pop de
    ld a, a
    db $e3
    ld hl, sp+$40
    rst $38
    and e
    rst $38
    cp $2b
    rst $38
    inc e
    sub a
    rst $38
    pop af

jr_00a_42e0:
    rra
    rst $18
    dec b
    ld c, d
    xor b
    rst $08
    rst $00
    ld a, d
    add l
    rst $38
    ld de, $7c85
    ld a, b
    db $10
    xor a
    jp nc, Jump_00a_58b1

    cp h
    ld a, b
    ld [hl], a
    ld a, [$e583]
    rst $18
    ld e, $3d
    ld d, l
    rra
    add a
    nop
    ld b, h
    cp l
    sub l
    ld d, e
    xor c
    ld a, [$81d3]
    ld d, l
    ld c, b
    and d
    jr z, jr_00a_42b2

    jr nc, jr_00a_4383

    xor c
    add d
    sbc d
    jr nc, jr_00a_42c8

    add a
    sbc [hl]
    sub e
    add hl, sp
    ld c, c
    or [hl]
    jp c, $8a7c

    xor b
    ldh [$b6], a
    ld l, c
    ld h, h
    cp c
    jr c, jr_00a_434d

    ld a, [hl]
    jr jr_00a_42e0

    pop hl
    and b
    adc e
    sub l
    adc e
    ld d, e
    jr c, @-$79

    dec [hl]
    db $d3
    ld l, c
    add $7d
    ld [hl+], a
    ld b, [hl]
    jr c, jr_00a_43a8

    db $dd
    jp nc, $e718

    and d
    dec hl
    ld a, b
    ld hl, sp-$63
    db $ec
    and d
    sbc l
    or b
    rst $20
    ld [bc], a
    ld c, d
    ld h, l
    inc e
    jr nc, @+$76

jr_00a_434d:
    ld [$8c6a], sp
    ld h, c
    and [hl]

Jump_00a_4352:
    ld c, a
    xor e
    sub e
    ld e, d
    sub a
    ld l, c
    jr z, jr_00a_43d7

    ld d, l
    ld d, $b1
    adc l
    and c
    inc b
    and l
    jp c, Jump_000_1a0f

    push bc
    ld e, c
    ld [hl], l
    jp hl


    cp l
    and h
    ld l, $ad
    and c
    ld d, l
    ld a, [de]

Call_00a_436f:
    ld b, c
    db $fd
    and c
    ld d, d
    ld [hl-], a
    sbc h
    ld d, $32
    inc d
    inc [hl]
    sbc h
    xor h
    ret c

    jp z, $9d0e

    sub h
    inc e
    ld a, h
    ld c, b

jr_00a_4383:
    ld [hl], a
    cp [hl]
    dec e
    ld a, a
    db $fd
    ld d, e
    ret


    ld a, l
    add sp, $1a
    and [hl]
    db $f4
    pop af
    ld e, [hl]
    ld a, b
    ld e, b
    add [hl]
    inc a
    sub l
    jr jr_00a_43f0

    add [hl]
    ld b, [hl]
    adc c
    ld c, a
    add hl, de
    ld c, c
    ld e, b
    ld [hl+], a
    jr z, @+$2e

    ldh a, [$28]
    res 1, b
    xor b

Call_00a_43a7:
    adc d

jr_00a_43a8:
    inc a
    add hl, hl
    add d
    inc sp
    ld c, c
    xor b
    pop bc
    ldh [$4e], a
    sbc b
    sub $c8
    add [hl]
    ld c, b
    cp d
    xor b
    push hl
    ld c, b
    adc l
    inc h
    adc c
    inc b
    daa
    rst $18
    ld c, $32
    ld c, l
    inc h
    add h
    ld [hl], a
    dec hl
    add d
    ld h, $18
    ccf
    adc h
    ld [$a131], a
    ld e, b
    adc [hl]
    ld l, $89
    rst $00
    ld [hl+], a
    adc h
    ld e, [hl]

jr_00a_43d7:
    ld d, e
    ld c, d
    inc d
    xor h
    or a
    add l
    add hl, hl
    sub h
    or [hl]
    ld hl, sp+$63
    dec [hl]
    adc b
    db $d3
    jr z, @-$7a

    ld e, b
    add a
    inc b
    add a
    pop bc
    jp hl


    ld c, h
    rst $28
    ld c, c

jr_00a_43f0:
    add l
    dec h
    ld d, [hl]
    ld b, l
    ld h, $1b
    ld l, c
    ei
    sub [hl]
    ld c, l
    dec hl
    ld b, l
    ld a, b
    ld e, b
    ld a, [hl+]
    add c

jr_00a_4400:
    dec b
    ld [$9e68], sp
    ret c

    dec d
    jr c, @+$6b

    ld h, b
    ld l, b
    jp z, Jump_000_1252

    jr nz, @+$60

    ld e, $42
    adc [hl]
    ld [$3416], sp
    ret nc

    xor l
    ld a, [de]
    sbc $25
    sbc c
    jr c, jr_00a_4400

    ld a, e
    add sp, -$33
    or [hl]
    ld [hl+], a
    jr c, jr_00a_4478

    sub $26
    sub l
    ld [hl+], a
    ld e, l
    adc b
    ld h, h
    ldh a, [$2d]
    ld d, l
    ld a, h
    ld d, l
    adc b
    ld e, c
    add hl, sp
    ld d, h
    or h
    ld d, h
    ld h, h
    sbc c
    and d
    sbc c
    and h
    and $51
    ld c, b
    ld b, d
    ld l, c
    ld a, [bc]
    ld c, h
    ccf
    and b
    ld h, [hl]
    add hl, sp
    sub h
    ld d, b
    sub h
    ld h, h
    add hl, hl
    ld [hl], c
    adc e
    ld e, c
    adc [hl]
    sub l
    add c
    ld [hl+], a
    ld b, [hl]
    ld c, h
    rst $38
    ld b, d
    dec sp
    ld l, $b7
    ld a, [de]
    ld e, [hl]
    ld d, c
    push de
    ld l, a
    adc a
    ld a, [bc]
    and l
    ld c, b
    xor b
    ld a, a
    ld l, b
    ld a, [c]
    ld [$6a95], a
    jr c, jr_00a_44d2

    call nz, $aa20
    sbc [hl]
    sbc e

Call_00a_4470:
    ld e, $8b
    dec bc
    ld e, $82
    add h
    inc c
    ld e, d

jr_00a_4478:
    ld c, d
    ld a, b
    rst $18
    db $ec
    ld d, e
    ld b, $61
    ld e, $0f
    rst $38
    sub d
    jp nz, Jump_00a_6798

    add l
    rst $38
    inc de
    inc de
    dec h
    ld h, a
    add a
    cp $6f
    add [hl]
    ld a, [hl+]
    ld d, d
    ld [hl], l
    reti


    adc d
    ld hl, sp-$28
    call $c2c2
    rst $00
    add c
    dec a
    push hl
    ld hl, $8687
    add e
    dec e

Jump_00a_44a3:
    reti


    inc d
    rst $38
    sub e
    db $fd
    ld [hl], a
    and a
    add c
    sub b
    db $dd
    cp b
    cp a
    jp $a6bf


    add hl, hl
    ret z

    sub b
    sub b
    rst $38
    cp a
    db $fc
    db $10
    ld a, a
    and l
    or c
    call z, Call_00a_7f95
    pop bc
    ld d, h
    ld b, e
    ld a, [hl]
    ld b, [hl]
    cpl
    ld d, h
    ld c, h
    ld [hl], b
    ld c, b
    ld c, l
    pop de
    adc d
    inc de
    ld a, b
    ldh a, [$c6]
    add hl, hl

jr_00a_44d2:
    rst $00
    inc a
    ld l, e
    jr nc, jr_00a_454f

    add hl, sp
    ld c, b
    or b
    ld hl, $711c
    jp Jump_000_114c


    dec bc
    db $ec
    inc c
    ret


    pop hl
    xor b
    ld [$efff], a
    inc l
    db $76
    ld h, $94
    xor l
    rst $38
    dec l
    dec bc
    inc e
    ld hl, sp-$1e
    sub d
    push bc
    jr z, @+$2c

    ret nc

    and c
    daa
    ld b, h
    adc [hl]

jr_00a_44fd:
    add hl, sp
    inc sp
    ld e, a
    cp $95
    jr nc, jr_00a_452b

    ld c, h
    ld [hl-], a
    inc sp
    inc hl
    ld c, l
    rst $38
    sub e
    ld b, b
    rst $00
    ld e, d
    ld a, $85
    or d
    adc h
    rst $38
    sub d
    or c
    db $db
    inc hl
    add [hl]
    ld [hl], $d7
    rst $38
    db $e4
    and a
    add a
    ld b, c
    xor b
    jp nc, Jump_000_11dd

    ld e, $5d
    ld b, b
    cp a
    rra
    ld d, $44

Call_00a_452a:
    cp b

jr_00a_452b:
    ld d, l
    ld l, a
    ld [$158e], a
    or $a8
    jr jr_00a_44fd

    ld d, d
    sbc $96
    xor d
    adc h
    ld a, [c]
    inc h
    ld e, [hl]
    ld b, $5a
    xor d
    xor d
    ld d, d
    and l
    add hl, de
    ld c, b
    ld [hl], h
    ld [c], a
    ld l, d

Call_00a_4547:
    inc [hl]
    sub e
    add d
    ld d, d
    sub d
    ld [de], a
    ld h, e
    add a

jr_00a_454f:
    ld c, d
    ld e, b
    rst $20
    ld h, e
    ld e, $c1
    or h
    sbc $55
    ld l, $55
    dec bc
    ld d, e
    add [hl]
    or d
    ld de, $6b9e
    ld c, [hl]
    add hl, de
    ld h, d
    db $eb
    and b
    sub e
    or d
    sub h
    inc hl
    cp [hl]
    adc a
    add l

jr_00a_456d:
    sbc h
    xor d
    xor d
    and a
    ld a, [de]
    rst $38
    rst $38
    rst $38
    sbc h
    rrca
    db $fd
    dec l
    ld d, l
    ld a, c
    ld d, a
    and h
    cp a
    rst $00
    dec a
    and b
    cp $9c
    xor d
    xor h
    ld b, a
    cp $9c
    sub h
    pop hl
    rst $38
    rst $38

jr_00a_458c:
    sbc h
    ld [hl], l
    jr c, jr_00a_45ef

    rst $10
    sbc h
    ld l, e
    di
    xor h
    sub c
    daa
    dec l
    ld c, l
    ret nz

    sub c
    daa
    inc sp
    call nz, $85c0

jr_00a_45a0:
    and a
    ld a, l
    ld l, c
    ldh [$c7], a
    db $d3
    nop
    ld d, l
    cp a
    inc e
    ld d, e
    adc c
    ld b, l
    push de
    ld d, e
    ld a, [hl+]
    jr c, jr_00a_45c8

    ld b, d
    and c

jr_00a_45b4:
    ld [$48fd], a
    ld e, b
    jr c, jr_00a_458c

    rlca
    adc b
    and b
    ld c, e
    ld sp, hl
    ld h, $a3
    ld e, [hl]
    inc hl
    ld [hl+], a
    jr nc, jr_00a_456d

    ldh a, [$e8]

jr_00a_45c8:
    db $dd
    adc d
    reti


    dec hl
    ld c, b
    and e
    add e
    ld b, c
    jr nc, jr_00a_462f

    ld c, b
    xor b
    ld d, b
    add c
    ld c, h
    call nc, $abc7
    db $e4
    ld l, b
    sub a
    db $d3
    ld b, [hl]
    ld h, h
    push de
    jr nc, @+$58

    dec [hl]
    adc b
    adc l
    ld l, e
    ld h, $94
    ld [c], a
    adc c
    ld c, b
    adc d
    sbc c
    xor b

jr_00a_45ef:
    db $e4
    add c
    jr @+$25

    dec [hl]
    inc a
    ld h, h
    jp hl


    ld b, l
    jr jr_00a_45a0

    sbc [hl]
    add hl, sp
    sub b
    and b
    sub c
    ld e, d
    ld h, $8e
    ld [hl], l
    ld b, c
    inc d
    ldh a, [$ad]
    ret c

    db $db
    ld a, [hl]
    xor [hl]
    and d
    ret


    jr jr_00a_45b4

    and b
    sbc e
    db $ec
    ld [$9732], sp
    ld a, [$3128]
    cp h
    inc c
    ld a, $63
    xor l
    xor c
    call nz, $41d0
    db $10
    and h
    db $d3
    dec b
    rst $00
    inc d
    ld b, h
    xor h
    ld a, [de]
    ld e, l
    rrca
    inc e
    jr jr_00a_4655

jr_00a_462f:
    ld [hl], h
    sub c
    ld d, c
    ret z

    adc h
    sbc c
    cp h
    ld c, d
    ld [$14e7], sp
    ld h, d
    and c
    ld a, b
    ld b, e
    ld c, $71
    jp nz, $d0fb

    ld b, c
    ld l, h
    reti


    call $a965
    adc [hl]
    ld a, b

jr_00a_464b:
    ld l, c
    add hl, de
    call c, $b184
    inc d
    ld [hl], h
    ld d, b
    ld d, c
    ld [c], a

jr_00a_4655:
    and b
    cp [hl]
    ld a, b
    sub l

jr_00a_4659:
    add $e0
    ld b, h
    cp [hl]
    ld [hl], c
    add hl, sp
    ld d, h
    sub l

jr_00a_4661:
    ld l, b
    push hl
    and b
    sbc d
    ld a, [hl-]
    inc e
    inc d
    dec de
    ld a, [hl-]
    rla
    ld h, b
    and e
    xor l
    or e
    or [hl]
    di
    ret nz

    sub b
    ld b, c
    dec d
    ld a, [hl-]
    ld l, a
    cp l
    ld a, h
    add sp, -$0a
    ld l, d
    adc [hl]
    sbc b
    ld a, [$f7cd]
    ld c, e
    inc e
    or h
    dec hl
    ld d, c
    call z, $d9a8
    push de
    dec [hl]
    jr @+$3b

jr_00a_468d:
    ret


    ld a, c
    adc h
    ld [hl], d
    ret z

    xor d
    db $76
    call nz, Call_00a_6a68
    ld [hl], l
    ld l, e
    ld b, b
    sbc l
    jr c, jr_00a_4661

    ld b, a
    ldh [$a0], a
    ld d, l
    cp e
    rst $18
    db $f4
    ldh a, [$59]
    and l
    ld sp, $d35f
    dec d
    ld sp, hl
    dec h
    dec c
    daa
    jr nc, jr_00a_4659

    ld l, b
    and a
    cp d
    ld a, [de]
    ld h, [hl]
    and h
    sub h
    push bc
    ld b, [hl]
    adc e
    ld c, c
    ld a, e
    ld hl, $1e04
    ld d, e
    add [hl]
    add [hl]
    or c
    add [hl]
    jr jr_00a_464b

    jr nz, jr_00a_472b

    jp nc, Jump_00a_5514

    add d
    ld b, d
    scf
    add c
    ld c, e
    adc h
    ld [hl+], a
    sub e
    inc e
    db $dd
    ld d, $86
    ld [hl], $8e
    jr c, @-$5a

    ld e, d
    sub d
    db $10
    jp nc, $49a0

    ld d, d
    inc h
    add $2d
    and d
    jr z, jr_00a_468d

    ld h, e
    inc [hl]
    ld de, $908c
    add $89
    ld e, b
    inc h
    jp nc, $eb2d

    add hl, bc
    ld e, l
    ld b, e
    adc b
    ld d, e
    dec h
    ret nc

    ld c, h
    add hl, hl
    rra
    ld h, b
    sub l
    xor b
    or [hl]
    rra
    pop af
    ld c, b
    ld d, b
    add c
    dec l
    sub e
    ld d, l
    rst $38
    adc b
    ld b, e
    ld l, a
    ret c

    sbc b
    adc b
    push de
    cp b
    or h
    ld l, $96
    ld [hl-], a
    adc l
    ld h, l
    dec l
    ld b, [hl]
    ld c, b
    ld e, c
    adc b
    ld h, e
    add d
    xor d
    add c
    ld b, l
    jr nc, jr_00a_4788

    dec hl
    adc [hl]
    ld d, h
    jr nc, @+$01

jr_00a_472b:
    ld h, $f7
    add sp, -$73
    rst $18
    adc d
    sbc [hl]
    dec de
    ld a, [hl+]
    or c
    ld l, b
    ld h, c
    add hl, de
    ld l, $3a
    ld b, h
    ld a, [bc]
    ld [hl-], a
    sbc b
    ld b, h
    ld e, [hl]
    ld d, e
    ld [bc], a
    or l
    sub c
    sub c

Call_00a_4745:
    and b
    adc d
    ld h, c
    and e
    ld h, h
    ldh [$a2], a
    ret nc

    or b
    and e
    and c
    ld h, $36
    ld l, d
    ret


    ld de, $5830
    and $0b
    xor [hl]
    ld b, h
    db $f4
    ld [$8ad1], sp
    db $10
    push hl
    rst $18
    and h
    ldh a, [$d1]
    ld l, c
    add $85
    ld b, e
    and l
    pop de
    ld [de], a
    ld b, d
    sbc h
    adc d
    ld h, c
    ld b, b
    xor c
    add [hl]
    xor b
    ld b, l
    ld b, l
    add $12
    ld de, $3049
    xor l
    sbc b
    and [hl]
    ld l, b
    ld sp, $c550
    add hl, hl
    sbc e
    sub d
    and c
    sub $ca

jr_00a_4788:
    adc $e4
    dec sp
    ld a, [de]
    ld d, d
    db $10
    jp $9356


    ld a, a
    or h

Jump_00a_4793:
    ld h, b
    sbc b
    ld l, h
    or d
    jr nc, jr_00a_47c7

    ld d, l
    ld e, [hl]
    ld de, $6182
    xor [hl]
    jp c, $c6f0

    ld l, c
    add [hl]
    sub b
    call nz, $a9b7
    dec a
    inc e
    ld l, l
    sub d
    and b
    adc l
    ld [hl], a
    rrca
    ld b, d
    and [hl]
    rst $30
    db $fd
    ld h, b
    adc d
    adc d
    ld b, [hl]
    add h
    rrca
    ld b, a
    ld h, $0e
    ld b, h
    sub e
    ld b, e
    ld h, h
    add b
    ld b, h
    cp l
    and l
    ld c, [hl]
    ld d, l

jr_00a_47c7:
    ld d, l
    ld a, [hl]

jr_00a_47c9:
    and e
    adc c
    ld a, [$a949]
    ld c, [hl]
    rlca
    adc c
    ld c, [hl]
    adc d
    dec h
    add c
    ld d, l
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ret c

    jp nz, Jump_00a_4793

    add l
    db $e3
    and d
    sub l
    bit 2, e
    adc [hl]
    ld [$8c30], a
    jr jr_00a_47c9

    ld d, d
    inc e
    ld h, l
    ld e, b
    pop hl
    and c
    ld a, [hl]
    ld hl, $6839
    jr nz, @-$79

    ld h, b
    add c
    jr c, @-$0f

    jp c, $e0f5

    xor b
    ld [c], a
    and d
    xor b
    ld a, [c]
    rst $30
    adc $27
    ld a, [de]
    push de
    ld d, h
    xor a
    inc e
    ld e, c
    sbc e
    jp hl


    call z, $73b5
    inc b
    ld [hl], c
    ld c, l
    inc h
    ld a, h
    inc d
    sbc h
    inc a
    pop af
    inc c
    ld [hl], h
    ldh a, [$ce]
    ld [hl], h
    and l

jr_00a_481e:
    ld b, a
    ld c, d
    and h
    reti


    rst $08
    adc $4b
    jp hl


    call z, $bcd6
    db $dd
    ld a, [hl+]
    ld [hl], b
    db $db
    dec c
    rra
    ld a, [de]
    ld h, [hl]
    sub l
    db $fd
    ld b, l
    ld sp, hl
    ld a, [hl]
    ld c, [hl]
    rst $00
    and d
    dec hl
    and d
    ld [de], a
    ld e, a
    db $d3
    and c
    ld c, d
    ld e, l
    ld b, c
    ld [$2914], sp
    ld d, e
    and [hl]
    rst $38
    push hl
    ld e, h
    ld d, l
    ld d, b
    sbc a
    db $d3
    cp [hl]
    add a
    ld c, $46
    db $db
    ld a, [bc]
    inc a
    dec de
    pop af
    ld d, a
    or l
    db $e3
    and c
    ld d, d
    ld e, [hl]
    add d

jr_00a_485e:
    ld h, $5e
    add c
    ld d, h
    db $dd
    ld [c], a
    ld e, $f5
    ld a, [bc]
    add l
    and [hl]
    ld h, b
    ld a, [hl]
    db $f4
    and l
    db $fd
    dec d
    sub d
    ld l, l
    ld a, [bc]
    sub l
    ld b, c
    ld d, [hl]
    sbc [hl]
    ld l, h
    ld [hl+], a
    ld e, [hl]
    ldh [$7b], a
    sub b
    ld c, e
    and e
    ld a, [bc]
    ld a, a
    ld d, $18
    inc d
    ld e, $60
    ld h, [hl]
    add l
    call z, $ca68
    ld [hl], l
    xor c
    ld b, d
    ld [hl], b
    ld h, b
    ld a, d
    jr nc, jr_00a_481e

    ld l, b
    ret


    ld d, l
    ld b, c
    ld b, a
    ldh [$7e], a
    ld d, c
    ld e, d
    ld d, e
    dec d
    ld sp, $2fb8
    adc c
    add sp, $24
    jr @+$2a

    add a
    ld c, h
    inc d
    pop bc
    jp hl


    ld d, b
    ld c, d
    pop bc
    ld d, $2d
    adc h
    sub h
    jp nz, $e80b

    ld l, c
    ld b, d
    add [hl]
    ld e, b
    ld e, d
    ld h, h
    push bc
    ld b, l
    xor c
    add [hl]
    inc d
    sbc c
    ld h, b
    sub d
    ld d, d
    sub c
    ld c, e
    ld d, b
    ld [hl], l
    ld d, d
    ld h, l
    dec h
    xor e
    ld h, d
    jr jr_00a_492e

    ld d, e
    dec hl
    ld a, b
    pop bc
    jr nc, jr_00a_485e

    xor [hl]
    sbc e
    ld a, [bc]
    ld hl, $2682
    and e
    dec h
    or d
    ld a, l
    ld b, d

jr_00a_48df:
    add c
    add hl, bc
    jp c, Jump_00a_4190

    jr c, jr_00a_4937

    and b
    ld h, l
    ld e, b
    jr z, @+$12

    sub h
    ld d, $9c
    ld de, $448e
    sbc d
    push de
    sbc b
    adc c
    ld l, c
    ld h, b
    ld h, e
    add [hl]
    ld e, b
    adc $8d
    ld l, b
    pop af
    xor h
    inc de
    rst $08
    and e
    ld c, c
    ld a, b
    inc h
    ld b, b
    adc h
    add hl, bc
    ld [c], a
    add sp, -$43
    ld a, [bc]
    ld [$72c7], sp
    ret nc

    sbc $83
    ld a, b
    daa
    ld l, h
    ld b, h
    ld b, h
    inc [hl]
    ld d, l
    ld e, e
    sbc [hl]
    inc l
    add hl, bc
    add l
    pop af
    ldh [$c0], a
    cp d
    ld [$9dcd], sp
    ld c, c
    add d
    dec bc
    ldh a, [$67]
    adc c
    ld [bc], a
    rra
    ret nc

jr_00a_492e:
    jp hl


    ld l, e
    ld b, l
    and c
    add hl, hl
    ld c, c
    xor d
    xor l
    ld e, a

jr_00a_4937:
    sub b
    add $28
    jr c, jr_00a_49b8

    rst $18
    jr jr_00a_48df

    rst $10
    ld a, [$5b10]
    dec b
    dec h
    ld c, a
    call z, $a62f
    ld l, [hl]
    cp a
    cp $ab
    xor e
    and c
    db $eb
    ld d, b
    inc sp
    rst $38
    ld sp, hl
    and a
    cp a
    db $fd
    ld d, a
    rst $38
    rlca
    db $fc
    or d
    rst $18
    ld c, h
    ld h, [hl]
    cp a
    rst $38
    adc h
    rra
    res 0, a
    ldh a, [rVBK]
    ld a, [c]
    db $fc
    ld h, [hl]
    add a
    rst $38
    ret nz

    ret nz

    ldh a, [$de]
    ld e, $1e
    dec e
    dec bc
    ld b, [hl]
    adc b
    rst $18

Jump_00a_4977:
    ld hl, sp-$41
    sra d
    inc d
    cp $f8
    ld a, a
    sbc c
    and h
    xor e
    cpl
    cp $1f
    add l
    ld h, c
    rst $38
    db $fc
    rst $38
    inc e
    ld [hl], l
    rst $38
    add [hl]
    add $1f
    ldh a, [$7f]
    ld c, h
    ld h, c
    ld [bc], a
    ld h, e
    or l
    ld a, $63
    or c
    add l
    rst $08
    sbc h
    dec c
    ccf
    adc $a4
    cp $2b

jr_00a_49a3:
    rst $38
    cp a
    rst $20
    dec c
    call z, Call_00a_784d
    ld a, [hl]
    cpl
    db $fd
    ld a, a
    rst $20
    inc d
    pop af
    sbc l
    ld de, $7471
    ld a, b
    ld sp, hl
    push af

jr_00a_49b8:
    ret nz

    ld b, h
    or c
    ld d, h
    call $cd25
    ld d, b
    db $f4
    or a
    ld h, h
    jr z, jr_00a_49a3

    ld l, a
    ld e, e
    pop hl
    sbc b
    inc e
    ldh [$96], a
    rst $18
    sub l
    add hl, bc
    ld [$68e2], sp
    adc h
    adc b
    ld d, e

Jump_00a_49d5:
    sbc l
    add c
    ld l, b
    ld d, e
    adc l
    ld a, [bc]
    ld e, b
    and h
    db $e3
    ld e, b
    ld h, h
    sub [hl]
    ld b, $37
    ld a, c
    add c
    ld b, d
    xor b
    ld h, e
    ld [hl], a
    sbc c
    and c
    and l
    add hl, de

jr_00a_49ed:
    db $d3
    ld d, a
    ret c

    add l

jr_00a_49f1:
    ld h, $0b
    adc l
    rst $18
    or $0e
    cp $ce
    rra
    daa
    add $17
    and e
    add [hl]
    rst $38
    xor d
    jp hl


    ld e, b

jr_00a_4a03:
    jr jr_00a_49ed

    and c
    xor b
    pop af
    or $69
    jp $fe9a


    ld h, h
    ret z

    db $ec
    ld l, [hl]
    jp hl


    dec bc
    ld [hl], d
    ld [de], a
    ld [hl], d
    ld d, l
    scf
    ld a, c
    ld [de], a
    ld [hl], c
    pop bc
    jr nc, jr_00a_49f1

    adc h
    sbc h
    sub c
    rrca
    rst $00
    dec sp
    xor a
    push bc
    pop de
    jp nz, Jump_000_18c1

    cp a
    sbc h
    inc [hl]
    pop bc
    add hl, hl

jr_00a_4a2f:
    dec bc
    rst $00
    ld [bc], a
    pop af
    ld [hl], h
    sbc h
    ld e, b
    ld sp, $2cdf
    ld [hl-], a
    ld a, [bc]
    and c
    daa
    dec c
    ld d, a
    ret nc

    ld b, b
    cp l
    ld [hl], c
    cp [hl]
    add hl, sp
    ld d, d
    ld a, [hl+]
    rst $00
    ld c, h
    ld b, h
    ld a, c
    jr nz, jr_00a_4ab3

    and c
    rst $38
    db $e4
    add l
    ld a, [hl-]
    ld d, h
    ret


    ld d, l
    ld b, e
    ld a, [$d4ef]
    ld [c], a
    xor d
    ld [hl-], a
    add d
    dec h
    ld b, d
    add hl, de
    ld [$5235], a
    inc de
    rla
    rst $30
    dec [hl]
    ld e, b
    inc hl

Call_00a_4a69:
    dec d
    xor d
    add e
    add c
    add hl, hl
    ld d, l
    ld d, b
    ld d, d
    inc d
    add hl, de
    ld h, $a4
    ld e, [hl]
    rla
    jr nc, jr_00a_4a03

    xor d
    adc d
    and c
    or l
    add hl, hl
    ld e, d
    add c
    ld [hl+], a
    jr nc, jr_00a_4ad0

    cpl
    adc c
    ld [hl], d
    db $f4
    ld d, [hl]
    add a
    ld [hl-], a
    ld c, l
    rst $10
    db $fc
    ld d, [hl]
    xor d
    ld h, $74
    sbc c
    ld b, d
    adc l
    ld [$0805], a
    dec h
    ld hl, $f229
    ld h, c
    cp [hl]
    ld [hl], $ba
    ld h, $a9
    ld b, e
    ld [c], a
    jr nz, jr_00a_4a2f

    sub e
    add l
    ld a, [$89c2]
    and b
    sbc a
    ld d, e
    inc [hl]
    db $dd
    inc c
    db $10
    reti


    inc sp

jr_00a_4ab3:
    or b
    ld b, d
    adc h
    inc hl
    ld e, d
    add [hl]
    ld e, h
    res 4, l
    ld [hl+], a
    adc h
    ld d, e
    ld b, l
    ld d, b
    and [hl]
    ld [hl], $54
    sbc b
    db $e4
    add e
    jr jr_00a_4b21

    ld e, l
    jp c, $3a57

    xor d
    dec c
    inc d

jr_00a_4ad0:
    dec de
    add d
    dec h

Jump_00a_4ad3:
    dec sp
    add hl, sp
    rrca
    ld [hl+], a
    ld h, $8d
    ld h, d
    rst $18
    ld c, c
    ld d, l
    jp hl


    ld a, b
    add $89
    sub [hl]
    jr c, @+$61

    xor b
    sub h
    reti


    call z, $aad4
    and b
    ld d, l
    ld l, [hl]
    or d
    inc d
    jp Jump_00a_52b0


    ret c

    ld [hl], l
    ld d, d
    jp hl


    inc c
    adc e
    dec d
    and h
    inc d
    ld l, b
    ld h, d
    pop de
    ld c, c
    ld c, b
    ld c, b
    ld a, d
    adc h
    ld e, $81
    adc d
    adc h
    ld l, b
    ld l, d
    ld [hl+], a
    and d
    sbc e
    dec l
    adc [hl]
    ld b, l
    sub [hl]
    ld c, b
    sub h
    ld l, a
    ld c, c
    ld e, c
    ld d, l
    ld e, d
    sub l

Jump_00a_4b18:
    ld d, l
    ld e, d
    adc h
    dec h
    and b
    ret nc

    ld a, [$29a5]

jr_00a_4b21:
    ld [c], a
    ld e, [hl]
    xor e
    cpl
    add a
    xor d
    ld [hl], c
    and $f5
    dec d
    db $f4
    and c
    inc e
    ld [hl], h
    ld h, b
    ld a, [$54e9]
    ld c, h
    ld a, [bc]
    ld h, h
    cp b
    dec h
    dec h
    sbc $a8
    ld a, $b0
    ld d, a
    ld a, h
    db $10
    and h
    pop hl
    jr c, @+$4e

    ld b, h
    ld [hl], e
    ld c, c
    ld e, b
    ld c, d
    inc d
    ld a, [bc]
    add hl, bc
    ld l, c
    or l
    ld h, l
    ld hl, $44ba
    dec de
    jr z, jr_00a_4bc4

    cp b
    and a
    inc de
    add e
    add e
    pop bc
    dec b
    inc de
    ld d, [hl]
    pop bc
    dec b
    ld d, h
    ld [hl], b
    db $f4
    db $10
    jr nc, jr_00a_4b8c

    call nc, Call_00a_51e4
    jp nz, $c290

    xor d
    ld b, h
    inc d
    ld h, c
    daa
    ld a, [de]

Jump_00a_4b72:
    jp $1f49


    ld de, $4278
    sub c
    rst $20
    ld a, [de]
    sub c
    ld l, [hl]
    add a
    sub d
    cp d
    adc l
    ld [de], a
    add [hl]
    ld [hl], b
    cp e
    ld b, e
    rst $38
    ld c, $14
    push bc
    ld b, h
    ld a, b

jr_00a_4b8c:
    ld h, $f8
    ld b, b
    jp Jump_00a_5504


    ld l, e
    dec d
    ld de, $beb1
    ld c, $0c
    add hl, de
    add l
    inc l
    ld d, h
    jr z, jr_00a_4c10

    jp $a185


    ld [de], a
    sub d
    xor c
    sub a
    ldh [$9c], a
    or [hl]
    xor l
    sbc b
    and d
    cp h
    ld d, $32
    sub h
    sub b
    or d
    add d
    ld [$4a55], sp
    call c, $4414
    ld c, e
    adc h
    ld c, e
    add h
    call nz, Call_00a_7fa1
    ld a, [$510b]
    xor [hl]

jr_00a_4bc4:
    inc de
    ld a, h
    add hl, hl
    dec c
    ld a, [hl]
    ld a, [bc]
    pop hl
    ld [hl], b
    ld b, c
    adc e
    push hl
    pop hl

jr_00a_4bd0:
    ld c, d
    ld a, [$e862]
    cpl
    ld de, $bb48
    inc h
    ld l, [hl]
    ldh a, [$d1]
    ld d, h
    ld d, e
    pop bc
    ld d, l
    ld [bc], a
    ld [$e820], sp
    inc h
    ld d, l
    call c, $b712
    ld e, a
    ld d, c
    ld [$173d], sp
    inc h
    ld e, d
    ld l, d
    add [hl]

jr_00a_4bf2:
    inc d
    jr z, @-$55

    ld d, b
    ld a, [hl+]
    jp Jump_00a_5043


    ld b, c
    sbc b
    ld h, e
    jr jr_00a_4bd0

    nop
    ld b, h
    xor l
    and l
    ld d, h
    add l
    xor d
    sub h
    call Call_00a_5d70
    ld a, [de]
    adc h
    and h
    jp nz, $c170

jr_00a_4c10:
    inc c
    adc h
    ld [hl], l
    daa
    ld [hl-], a
    cp d
    inc c
    jr nz, jr_00a_4bf2

    push bc
    ld h, h
    pop hl
    cp b
    dec d
    rrca
    ld b, a
    ld [hl], b
    ldh [$4e], a
    dec d
    ld d, $a4
    inc l
    db $10
    ld c, [hl]
    ld [$90be], sp
    ld b, l
    jr c, jr_00a_4c99

    rra
    sbc e
    or [hl]
    adc $1a
    add c
    jp nz, $ba19

    ld [hl], $7d
    cp a
    add d
    and c
    db $e3
    ld b, l
    dec d
    add c
    jr jr_00a_4c93

    sub d
    sub e
    rrca
    ld l, [hl]
    db $dd
    xor b
    ld h, b
    push hl
    ld e, b
    jp z, Jump_000_0cc2

    jr z, jr_00a_4caa

    sbc $38
    ld [hl-], a
    ccf
    xor e
    ld hl, sp-$1c
    xor d
    dec a
    ld a, c
    add d
    sub d
    sub b
    jp nc, Jump_00a_6a82

    adc e

jr_00a_4c62:
    ld a, a
    jr nc, jr_00a_4c97

    inc c
    adc $98
    db $dd
    ld a, [hl]
    jr nc, jr_00a_4c9f

    ret c

    ld [hl], e
    or $68
    ret z

    xor l
    jp c, Jump_000_3b17

    ld h, a
    ld [bc], a
    dec c
    db $ed
    cp $ff
    sbc h
    ld a, [bc]
    ld [de], a
    dec [hl]
    or l
    adc $70
    and c
    inc a
    cp a
    ld a, [$04e7]
    dec bc
    dec a
    db $fd
    rst $38
    sbc h
    dec hl
    ld e, b

jr_00a_4c8f:
    ld hl, $f9f7
    cp d

jr_00a_4c93:
    adc h
    inc de
    ld l, $17

jr_00a_4c97:
    rst $00
    dec b

jr_00a_4c99:
    and l
    ld e, l
    ld [hl], h
    inc l
    ld h, e
    ld a, d

jr_00a_4c9f:
    rst $38
    xor e
    db $eb
    sub e
    dec de
    db $db
    push de
    or b
    rst $00
    dec d
    ld d, c

jr_00a_4caa:
    ld d, b
    ld b, a
    rst $00
    add b
    ld h, [hl]
    cp d
    ld d, l
    ld d, l
    ld d, e
    ld d, l
    ld c, [hl]
    ld b, l
    cp $aa
    xor d
    rst $38
    ld d, d
    xor d
    jr c, @-$6e

    add sp, -$1f
    xor l
    ld a, [de]
    jr c, jr_00a_4c62

    ld a, [hl-]
    ld l, $32

jr_00a_4cc7:
    adc h
    ld e, $3b
    db $10
    sbc b
    cp l
    ld hl, $8de3
    ld e, a
    db $fd
    ld b, l
    ld [hl+], a
    ld [hl-], a
    ld d, b
    ld c, d
    adc h
    sub b
    add sp, -$46
    sub b
    ld c, l
    inc h
    ld d, d
    ld e, $30
    add d
    ld h, $8c
    ld d, c
    ret


    and c
    and c
    adc b
    ld b, c
    jr nc, jr_00a_4c8f

    adc l
    jr nc, @-$66

    add l
    ld h, [hl]
    cp l
    ld c, [hl]
    jr c, jr_00a_4cc7

    ld c, e
    or d
    db $eb
    ld b, d
    jp nc, $86a8

    ld [hl+], a
    ld l, $61
    db $dd
    ld d, a
    jp nc, $0bed

    dec b
    add c
    ld e, b
    sub h
    ld h, d
    jr z, jr_00a_4d69

    dec l
    ld l, l
    dec l
    ld h, $4c
    and d
    add sp, -$7c
    jr z, @+$22

    ld b, l
    add hl, de
    dec [hl]
    and l
    ld d, [hl]
    adc b
    add c
    inc [hl]
    ld h, e
    ld [$45e8], sp
    ld sp, $3378
    cp [hl]
    ld hl, $290a
    ld a, [bc]
    ld [$7eeb], sp
    ld b, [hl]
    ld b, c
    ld c, h
    and e
    and l
    ld [c], a
    ld h, d
    sub h
    set 2, h
    db $e3
    ld a, b
    or h
    ld d, d
    cpl
    ld d, l
    ld c, c
    xor l
    ld c, l
    ld d, a
    adc h
    db $10
    ld h, e
    add hl, bc
    ld b, [hl]
    and l
    jr jr_00a_4d72

    ld d, l
    ld d, l
    add d
    ld sp, $d698
    ld c, c
    ld l, l
    ld b, e
    sub l
    scf
    ld a, b
    db $e4
    ld e, d
    or d
    rla
    ld l, d
    or b
    sub d
    ld e, $38
    ret nc

    ld b, d
    pop de
    xor a
    push de
    cp $a7
    ld hl, sp-$36
    ld [hl], h
    and [hl]
    add hl, bc

jr_00a_4d69:
    pop hl
    and c
    sbc e
    jr c, jr_00a_4d93

    rst $00
    inc hl
    ld b, a
    inc e

jr_00a_4d72:
    sub e
    sbc b
    ld h, $6c
    ld [hl], h
    ld c, b
    ld a, [hl]
    sub l
    ld h, $31
    ret c

    sbc $60
    and [hl]
    xor c
    cp [hl]
    xor [hl]
    ld [$18a1], sp
    ld h, h
    ret nz

    sub h
    and $08
    ld b, h
    db $e3
    cp $08
    dec h
    and c
    and e
    inc bc

jr_00a_4d93:
    ld de, $8439
    ld e, [hl]
    rra
    rst $38
    add e
    add d
    ld c, l
    ld sp, hl

jr_00a_4d9d:
    ld sp, $451d
    push bc
    cp b
    ld a, a
    rst $38
    adc e
    dec d
    push bc
    ld c, l
    inc [hl]
    db $10
    inc h
    dec h
    ld a, $1f
    rst $38
    db $e3
    sub d
    add l
    ld [bc], a
    ld d, d
    ld h, l
    inc h
    ccf
    pop hl
    rst $38
    rst $38
    ld b, c
    sub e
    inc de
    ld hl, $990d
    add hl, sp
    dec d
    rst $08
    rst $38
    pop af
    add hl, de
    ld de, $2c8a
    add h
    sub a
    jr jr_00a_4e2c

    db $f4
    jp $1986


    and h
    jr c, jr_00a_4d9d

    cp h
    ld b, h
    ld c, a
    add h
    ld l, b
    sbc b
    rst $00
    ccf
    ldh [$9a], a
    rst $20
    ld l, e
    ret nc

    pop hl
    ld b, [hl]
    ld a, c
    jp nc, Jump_000_3fb0

    jp hl


    add hl, de
    sbc h
    and a
    ld a, [bc]
    rst $38
    ld sp, $e417
    ret


    add l
    dec b
    ld a, [hl]
    xor d
    xor a
    rst $38
    db $fc
    push bc
    ld a, $11
    ld d, l
    xor d
    ld e, e
    ld a, a
    rst $38
    rst $38
    db $fc
    push bc
    cp h
    ld l, e
    ld c, d
    sub c
    db $ed
    ld e, a
    rst $38
    ld hl, sp+$45
    cp h
    ld [hl], c
    scf
    adc l
    and l
    dec [hl]
    ld d, b
    inc h
    cp h
    ld [hl], d
    ld [hl], b
    ld e, c
    ld de, $f077
    ld e, d
    pop af
    call $c71b
    jr z, jr_00a_4e66

    cp b
    ld e, a
    ld c, d
    ld d, h
    db $e4
    and d
    rla
    ld a, [$278e]

jr_00a_4e2c:
    add c
    jp $678e


Jump_00a_4e30:
    add e
    ldh [$81], a
    add hl, sp
    ld l, b
    or a
    sbc b
    db $e3
    and d
    cp [hl]
    dec d
    dec sp
    ld e, [hl]
    ld a, [hl-]
    cp a
    db $e3
    ret nz

    ld c, [hl]
    ld l, d
    ld hl, $b448
    ld h, e
    adc d
    rst $20
    add c
    dec d
    inc b
    push hl
    sub a
    add d
    ld d, $16
    adc $5a
    or a
    daa
    ld a, [hl-]
    ld [$3ca6], a
    ld [$67f1], sp
    and h
    and $16
    ld [hl], c
    and b
    ret z

    daa
    ld [hl], e
    add d
    db $76

jr_00a_4e66:
    ld [hl], b
    ld l, h
    db $76
    cp h
    ld [hl], l
    cp a
    ld e, $ba
    ld l, h
    sbc h
    ld l, c
    add [hl]
    adc d
    ld l, $70
    jp c, $cfb7

    add a
    rst $20
    inc l
    dec sp
    ld [hl], e
    rst $00
    ld e, h
    inc d
    ld a, [de]
    ld a, b
    ld de, $a0f0
    ld [hl], a
    cp [hl]
    cp c

jr_00a_4e88:
    ld c, [hl]
    sub l
    xor d
    and l
    jr c, jr_00a_4e66

    ld h, e
    sbc c
    ld [$466d], a
    ld c, l
    call c, Call_00a_78e9
    add l
    dec bc
    db $f4
    ld h, e
    scf
    db $e3
    and l
    inc b
    sbc d
    push af
    xor b
    ld h, e
    ld d, [hl]
    dec h
    add hl, sp
    and l
    ld d, l
    ld a, [bc]
    cp h
    adc b
    push bc
    and e
    sbc c
    ld e, [hl]
    and h
    ld a, d
    cp l
    sub [hl]
    ld b, [hl]
    ld c, b
    ld e, a
    ld l, d
    sub c
    adc h
    sbc $a0
    or h
    cp c
    ld b, [hl]
    jp nz, $8a14

    add sp, -$1d
    ld a, l
    ld d, b
    cp c
    ld c, c
    ld c, c
    sub e
    ld e, b
    ret


    jr jr_00a_4e88

    cp b
    inc l
    ld d, $32
    ld d, b
    xor l
    ld d, $2a
    inc sp
    ld c, e
    cp a
    call nc, $d988
    add hl, hl
    ld c, c
    ld b, [hl]
    ld l, $53
    dec de
    sbc $06
    adc d
    and e
    ld a, [hl+]
    ld hl, $8616
    ld b, l
    db $e3
    ld h, $5e
    ld h, a
    xor c
    ld [hl], $52
    sub b
    xor b
    adc d
    adc l
    sbc c
    add d
    add c
    pop bc
    dec h
    ld [hl+], a
    ld c, c
    ld b, d
    ld c, [hl]
    xor c
    ld a, [bc]
    inc d
    ld [hl], h
    ld d, e
    rlca
    add hl, hl
    ld [hl+], a
    ld a, [hl-]
    ld h, c
    or a
    ldh [$60], a
    ld d, d
    add hl, de
    ret c

    ld d, b
    ld l, c
    xor [hl]
    dec h
    jr c, @+$66

    ld l, c
    push af
    ld [c], a
    ld h, $c9
    ld e, b
    ldh a, [$32]
    ld l, d
    adc d
    and l
    ld hl, $ea38
    sub e
    xor l
    ld b, l
    ld b, c
    dec h
    add c
    ld h, h
    add [hl]
    adc [hl]
    add a
    db $e4
    xor d
    rlca
    inc d
    jr nz, @+$64

    jr nz, jr_00a_4f87

    sbc l
    rlca
    rst $38
    db $e4
    sub [hl]
    ldh [$b9], a
    dec hl
    and c
    adc b
    ld c, l
    pop hl
    cp a
    rst $38
    ld d, b
    sub b
    ld b, e
    rlca
    pop bc
    ld b, $32
    adc [hl]
    jr c, jr_00a_4faa

    rst $38
    xor a

jr_00a_4f4e:
    ldh [$5e], a
    ld b, c
    ld [hl+], a
    jp nc, Jump_00a_53d9

    add [hl]
    or l
    ld a, [bc]
    db $fd
    ld h, $99
    adc e
    cp l
    ld l, l
    add l
    add hl, sp
    dec hl
    call nc, Call_000_1662
    ld h, e
    ld c, d
    adc e
    xor b
    push hl
    xor a
    jp c, $f458

    ld [$773b], a
    rst $10
    and a
    ld c, d
    ld [de], a
    xor h
    add hl, bc
    ret z

    sbc $73
    and c
    rrca
    xor l
    jp hl


    cp d
    rst $00
    ld b, d
    pop bc
    ld hl, sp+$21
    ld e, e
    ld a, c
    and [hl]
    db $76

jr_00a_4f87:
    ld h, [hl]
    ld de, $0e34
    ld h, h
    or c
    ld [$2a27], sp

jr_00a_4f90:
    add a
    cp $09
    jr nc, jr_00a_4f4e

    adc d

jr_00a_4f96:
    xor b
    reti


    ret z

    push de
    and l
    ld b, [hl]
    ld l, $90
    add h
    or h
    ld c, h
    ld l, d
    and c
    inc c
    sub e
    add hl, hl
    xor e
    ld l, d
    dec d
    ld h, a

jr_00a_4faa:
    ld a, [de]
    add l
    ld [c], a

jr_00a_4fad:
    or h
    ld [$93d6], sp
    sub d
    adc h
    inc [hl]
    ld h, c
    ld a, [de]
    ld l, [hl]
    or l
    ld [hl+], a
    adc h
    ld c, $16
    and e
    dec d
    ld d, c
    sub a
    sbc d
    ld e, l
    ldh a, [$a6]
    jr z, jr_00a_4f96

    xor c
    ld c, e
    ld b, l
    or d
    ld h, d
    or [hl]
    ld e, $d0
    ei
    ld b, [hl]
    ld d, b
    inc h
    ret z

    call nc, $1a8b
    ld [hl], $fc
    rst $30
    sub $71
    ld d, l
    ld d, l
    dec b
    dec de
    rst $08
    dec b
    ld b, c
    ld l, $5a
    ld b, l
    db $10
    ld [$c474], a
    xor d
    jr z, jr_00a_4f90

    inc hl
    sub h
    ret z

    xor d
    ld [hl], h
    call nz, $035b
    ld [bc], a
    ld [$3f30], sp
    dec c
    db $fd
    ld h, b
    db $fc
    add hl, sp
    push bc
    add hl, hl
    ld e, $b0
    ld hl, $e403
    ld hl, sp+$49
    ld a, [hl+]
    ld [hl], h
    ld hl, $adfa
    dec bc
    ld b, c
    inc de
    inc c
    ld d, d
    dec bc
    inc de
    xor d
    ld l, e
    call nz, $5555
    jr nz, jr_00a_4fad

    push bc
    ld [hl-], a
    jp nz, $c78e

    inc b
    ld h, c
    ld a, [c]
    inc sp
    ld c, e
    ld a, [hl+]
    inc l
    call nz, Call_00a_513d
    call nz, Call_000_3a8a
    dec [hl]
    and d
    add d
    inc de
    ld b, b
    sub a
    ld h, l
    rst $00
    dec b
    add l
    and c
    ld a, d
    ld [hl], $82
    ld [de], a
    ret nz

    adc a
    db $10
    and a
    ld b, l
    and c
    ld c, b
    sbc $be

Jump_00a_5043:
    inc a
    add hl, hl
    ld d, d
    ld h, b
    ret nz

    sbc h
    jr nc, jr_00a_508c

    sbc $ad
    ld e, c
    inc l
    ld h, d
    ret nz

    or h
    ld c, d
    and a
    inc c
    inc c
    dec e
    ld d, $c6
    or c
    sbc h
    ld [hl], d
    ret nz

    ret nc

    dec l
    ld e, $a4
    ld [hl], a
    add b
    ld b, h
    cp b
    rla
    cp $53
    sbc c
    rst $38
    db $fd
    ld a, [de]
    ld d, e
    add [hl]
    ld a, [$4e2a]
    daa
    push bc
    rst $38
    ld c, [hl]
    ld b, [hl]
    rst $38
    rst $38
    db $fc
    db $e3
    rst $38
    rst $38
    rst $38
    di
    adc a
    rst $38
    rst $38
    rst $38
    adc b
    adc l
    rst $38
    db $fc
    ld [hl], d
    ret c

    reti


    ld e, l
    ld b, $22

jr_00a_508c:
    xor d
    adc l
    ld [$50aa], a
    ld l, b
    ld [hl+], a
    call nc, Call_00a_7dda
    ld b, c
    db $fd
    ld d, $86
    adc h
    ld a, [de]
    rlca
    rst $30
    cp $60
    adc [hl]
    add hl, bc
    xor a
    rst $38
    add sp, $18
    db $e3
    sbc a
    xor d
    ld d, $3a
    ld l, d
    xor b
    db $f4
    ld [hl], a
    ld [hl-], a
    ld [hl], h
    cp [hl]
    dec hl
    ld a, [$9c9c]
    inc l
    ld b, l
    ld l, a
    sbc e
    xor d
    ld c, l
    and a
    scf
    ld [hl], b
    ld h, h
    ld a, c
    call Call_000_3986
    ld e, $73

jr_00a_50c6:
    ld h, c
    adc [hl]
    xor a
    inc e
    db $db
    and c
    inc e
    ret z

    and c
    adc e
    jp z, $46a5

    ld a, h

jr_00a_50d4:
    pop bc
    add l
    db $10
    ret nz

    ret z

    and d
    sbc c
    ld b, c
    ld d, $af
    add h
    inc c
    ld b, h
    ld h, e
    and b
    cp a
    di
    db $fc
    ld de, $37c5
    ei
    ld [hl], b
    ld sp, $07cb
    ld a, [$7784]
    rst $00
    and d
    ld h, [hl]
    cp d
    ld e, a
    ld c, a
    dec e
    db $f4
    ld a, [hl+]
    xor b
    push bc
    ld c, [hl]
    dec [hl]
    xor a
    ld a, [de]
    xor d
    xor e
    db $e3
    ld a, [bc]
    and e
    add c
    adc b
    adc c
    cp a
    dec bc
    add d
    db $d3
    dec h
    ld c, l
    sub d
    ld h, d

jr_00a_5110:
    ld l, a
    jr jr_00a_50d4

    dec d
    and b
    ld c, d
    ld l, c
    jr c, jr_00a_5183

    xor d
    add hl, hl
    ld e, $a8
    adc b
    inc d
    ld d, c
    ld c, l
    ld [hl+], a
    cpl
    ld [$4548], a
    dec d
    adc b
    add l
    ld h, h
    ret


    ld a, [hl+]
    ld d, l
    ld d, l
    dec e
    ld d, b
    ld b, [hl]
    jr nc, jr_00a_50c6

    adc l
    ld d, [hl]
    add c
    and c
    ld d, l
    ld c, c
    sub h
    jp nz, Jump_00a_5a8d

Call_00a_513d:
    dec [hl]
    ld l, [hl]
    ld sp, $0aa5
    ld [$4bcd], sp
    ld c, b
    push de
    adc $3a
    adc b
    adc l
    ld [c], a
    ld l, $e0
    and e
    add l
    ld hl, $063c
    xor d
    ld c, e
    xor b
    pop hl
    ld c, b
    ld d, d
    ld d, h
    adc c
    or d
    ld d, e
    add [hl]
    adc e
    add a
    rst $38
    ld l, $07
    db $f4
    xor c
    scf
    sub h
    cp b
    adc b
    jr z, jr_00a_5110

    ld d, h
    ld d, h
    adc c
    ld c, h
    sub d
    ld l, e
    sub $57
    rst $20
    call c, $5038
    ld d, e
    add hl, bc
    ld [hl], $42
    cp d
    xor h
    ld a, [hl+]
    xor d
    add hl, hl
    ld c, c
    ld b, c
    ld [hl+], a

jr_00a_5183:
    inc [hl]
    ld c, b
    adc e
    db $db
    cp $37
    adc [hl]
    jr z, @-$46

    ld h, a
    ld hl, sp+$12
    ld [de], a
    ld d, [hl]
    add d
    ld sp, $1292
    dec h
    ld [hl+], a
    ld b, [hl]
    xor b
    ld a, [hl+]
    inc c
    ld d, b
    add l
    dec e
    adc h
    ld l, c
    ld [hl], d
    xor d
    xor l
    cp a
    ld a, [$6da8]
    ld h, e
    cp d
    ld [$fe5b], a
    ld hl, $ef54
    ld d, l
    ld [hl+], a
    adc e
    and d
    and a
    push bc
    ld a, c
    db $e4
    ld sp, hl
    jp hl


    cpl
    jp hl


    sub e
    daa
    ld h, l
    rlca
    rst $38
    sub [hl]
    xor h
    add hl, de
    ld c, c
    ret


    db $e3
    rst $38
    ld a, [c]
    ld d, a
    pop hl
    add d
    add hl, hl
    add hl, bc
    ret z

    and c
    ld [hl], l
    ld sp, $fe1f
    ld [$2728], sp
    ld a, [hl-]
    ret nc

    jr z, @+$47

    ld a, a
    ei
    dec e
    ld e, a
    add sp, $51
    sub l
    ld a, [hl]
    ld e, $74

Call_00a_51e4:
    ld a, a
    jp hl


    rst $00
    and h
    ld h, $ad
    ld c, b
    rst $10
    inc e
    sub h
    ld [hl], b
    jp z, Jump_00a_70c4

    add hl, sp
    push bc
    ld de, $1f1d
    sub [hl]
    xor d
    sbc l
    dec l
    ld c, c
    ld [$935c], sp
    push de
    jp hl


    pop de
    dec hl
    ld [bc], a
    di
    add a
    adc a
    add d
    add l
    sub c
    daa
    ld b, a
    rst $38
    add a
    ld hl, sp+$63
    ld b, b
    call z, $0944
    rst $00
    ld e, a
    di
    jp $ea40


    call z, Call_00a_43a7
    xor d
    ld d, $3e
    ccf

jr_00a_5221:
    cp $cf
    add d
    ld [hl], e
    ld a, a
    db $fc
    and l
    rst $38
    ld hl, sp+$7e
    add hl, de
    add hl, sp
    push bc
    cp $1d

Call_00a_5230:
    ld l, c
    dec [hl]
    db $fc
    db $fc
    reti


jr_00a_5235:
    pop de
    ld d, c
    ld a, [hl]
    ld e, l
    rrca
    add h
    ld a, b
    ld l, c
    ld e, $54
    rst $20
    add c
    inc c
    ld l, c
    ld b, a
    add l
    inc e
    add b
    ld b, h
    or h
    ld a, l
    dec sp
    dec d
    dec bc
    ld b, c
    ld d, h
    ld [c], a
    ld l, b
    ld a, [hl-]
    ld b, e
    db $e4
    ld h, h
    db $e4
    cp d
    jp nz, Jump_000_1f62

    db $d3
    dec d
    ld d, d
    ld h, a
    push de
    ld d, $26
    jr nc, jr_00a_5221

    add hl, bc
    ld b, c
    adc d
    sub h
    jp c, $0409

    jr z, jr_00a_5235

    ld c, l
    xor h
    add h
    db $ed
    ld a, d
    dec d
    jr nc, jr_00a_52c7

    adc l
    ld [c], a
    ld e, [hl]
    and b
    ld c, c
    ld c, l
    jr @-$67

    or b
    ret


    cp a
    ld c, [hl]
    ld b, $26
    dec l
    ld d, h
    pop de
    inc e
    sub h
    pop bc
    xor d
    dec [hl]
    sub a
    ld h, $55
    ld h, e
    ld [c], a
    and a
    sbc e
    add hl, hl
    ldh [$58], a

jr_00a_5294:
    scf
    jp hl


    rst $10
    rst $38
    rst $00
    ld [de], a
    ld h, a
    ld b, l
    add $be
    sbc c
    rst $00
    rla
    ld h, [hl]
    adc h
    ld [hl], b
    pop hl
    add hl, de
    cp c
    ld e, c
    adc $fc
    db $eb
    rst $20
    ld [hl-], a
    xor e
    ld a, a
    rst $00

Jump_00a_52b0:
    ld l, $ff
    rst $20
    ld d, a

Jump_00a_52b4:
    rst $38
    pop hl
    ld d, h
    ld l, c
    ld h, $17
    rst $38
    inc e
    ld [hl], c
    ld a, [c]
    ldh [rPCM34], a
    cp c
    rst $18
    ld c, a
    dec [hl]
    dec l
    ld b, l
    ld c, d

jr_00a_52c7:
    ld [hl], h
    ldh a, [$eb]
    ld c, b
    ld d, d
    ld d, h
    add l
    inc a
    ld c, d
    dec d
    ld hl, $c1ff
    ld d, h
    ld l, b
    ldh a, [rHDMA4]
    ld e, a
    add sp, -$56
    sbc c
    ld c, a
    dec d
    add sp, -$26
    ld b, d
    rst $08
    dec bc
    ld c, [hl]
    inc [hl]
    or $e3
    bit 2, l
    jr c, jr_00a_5340

    ld a, [hl-]
    jr z, jr_00a_5294

    adc c
    and h
    adc b
    ld d, b
    ld e, a
    ld [$d48e], a
    ld a, [de]
    ld c, d
    ld b, c
    ld hl, $86a8
    db $e3
    ret nc

    sub [hl]
    db $eb
    db $d3
    sbc l
    ld c, b
    ld b, c
    inc d
    cp b
    rst $08
    dec h
    ld c, [hl]
    call nz, $d528
    ld b, c
    ld b, e
    db $f4
    and $5f
    and d
    ld l, c
    ld d, l
    dec l
    add l
    ld l, $f8

jr_00a_5318:
    pop hl
    ld a, d
    jr jr_00a_5340

    or l
    adc d
    ld c, d
    ld hl, sp-$1a
    ld a, b
    xor b
    jr nc, @-$28

    and e
    ld [$52ee], sp
    sub h
    ld a, [hl+]
    ld a, [bc]
    inc b
    pop af
    sub h
    sub a
    ld l, b
    pop bc

jr_00a_5332:
    call z, $a523
    ld d, d
    sbc c
    ld c, $4c
    inc hl
    rra
    ld c, [hl]
    ld l, d
    xor h
    sub h
    cpl

jr_00a_5340:
    adc h
    dec hl
    ld [hl-], a
    and e
    sub l
    ld c, b
    and d
    inc a
    pop de
    db $d3
    inc b
    jr z, jr_00a_5332

    and d
    ld a, [hl+]
    add sp, $7d
    dec l
    ld [$0bc5], sp
    push de
    jr c, jr_00a_53c0

    ld h, c
    sub l
    ld d, b
    xor c
    ld l, b
    ld d, e
    add e
    and h
    add l
    dec b
    dec h
    call c, Call_000_1a23
    ld [hl-], a
    sub e
    add hl, bc
    ld h, d
    db $eb
    xor a
    db $e4
    jr z, jr_00a_5318

    ld b, c
    and h
    adc $5c
    or l
    ld d, h
    jp nz, $bd26

    ld b, l
    ld d, h
    ld d, e
    dec d
    ld d, e
    dec h
    adc d
    sub h
    sub h
    ld d, a
    and c
    cp [hl]
    and a
    push af
    ld l, l
    ld h, d
    ld l, d

Jump_00a_5389:
    sub l
    and e
    ld b, a
    push af
    ld e, a
    ld b, a
    ld a, h
    ld a, [hl-]
    ld h, c
    adc $79
    cp c
    ld a, b
    ld b, c
    ld h, l
    ld h, b
    sbc [hl]
    dec hl
    ld [de], a
    ld a, [$19e9]
    db $e3
    ld [hl-], a
    jr @+$63

    dec d
    dec b
    ld l, $78
    sub b
    add $28
    ld a, $45
    sbc [hl]
    ld e, $64
    rst $38
    reti


    ld c, c
    push hl
    jr nc, jr_00a_53f6

    ld e, $62
    ld c, e
    db $10
    xor c
    and $20
    ldh a, [$3e]
    dec d
    ld a, d

jr_00a_53c0:
    ld d, e
    adc d
    or d
    db $76
    ldh a, [$28]
    add hl, hl
    ld c, d
    ld h, c
    ld [de], a
    sbc l
    sbc [hl]
    ld d, d
    sbc c
    xor b
    ld e, d
    rra
    ld c, c
    push de
    ld h, d
    and [hl]
    inc l
    ld d, l
    add hl, hl
    ld e, c

Jump_00a_53d9:
    push de
    ld [de], a
    xor c
    jr z, jr_00a_5403

    ld sp, $4c2d
    sbc h
    xor b
    or c
    inc [hl]
    rra
    push bc
    ld e, c
    and l
    inc e
    or b
    jr nc, @+$4b

    or d
    ld e, l
    dec e
    adc h
    ld de, $961a
    cp h
    ld a, b

jr_00a_53f6:
    ld [de], a
    db $dd
    ld hl, $5550
    ld a, a
    pop de
    ldh [$c4], a
    db $e4
    ld b, [hl]
    db $f4
    ld [hl], l

jr_00a_5403:
    ld h, $0c
    ld c, h
    ld h, e
    ld [$a7f5], a

Call_00a_540a:
    ccf
    ld a, [bc]
    ld c, d

jr_00a_540d:
    inc sp
    jr jr_00a_5450

    add l
    ld b, b
    sub c
    dec e
    jr z, @+$53

    inc d
    ld l, b
    adc a
    ei
    add d
    ld de, $8dd0
    dec l
    ld d, c
    sbc e
    dec hl
    db $e4
    ld hl, $d329
    jr z, @+$80

    ld b, h
    ld e, d
    cp $c4
    dec h
    ld d, b
    ld h, $eb
    sub l

Call_00a_5431:
    ld e, b
    ld d, e
    ld b, [hl]
    inc de
    ld a, [$82c2]
    ld [de], a
    adc d
    dec d
    ld h, $14
    ld e, e
    ld a, [bc]
    ld b, l
    inc de
    ld h, e
    ld d, c
    inc c
    ld de, $cb1b
    ld de, $ca18
    adc d
    xor b
    and c
    dec b
    ld c, d
    sub d

jr_00a_5450:
    or h
    ld h, h
    ret c

    ld b, h
    ld b, [hl]

Jump_00a_5455:
    or l
    dec hl
    ld [hl], h
    ld h, e
    ld d, h
    ld l, a
    ld [$40b1], a
    ld b, h
    or a
    ld e, e
    push de
    dec b
    ld d, e
    adc c
    ld [$b71a], a
    db $ec
    ldh [$a3], a
    ld c, d
    di
    ld h, a
    adc a
    db $76
    adc a
    ld a, l
    ld c, a
    ld b, l
    adc l
    xor b
    rst $00
    xor d
    and e
    add [hl]
    push af
    ld d, d
    dec h
    dec b
    add hl, sp
    ld a, [hl+]
    cp a
    db $fd

Jump_00a_5482:
    rst $30
    inc a
    ld [$5dfa], sp
    cp d
    inc de
    jr nz, jr_00a_540d

    add hl, hl
    ret


    inc bc
    and c
    dec b
    ret c

    daa
    ld b, $55
    jp hl


    jr nc, @+$68

    ret


    adc a
    rst $20
    ld l, $60
    cp $72
    ld [hl], c
    ld c, a
    db $fc
    ld [hl], h
    cp a
    pop af
    call $f7bb
    dec e
    inc a
    ld de, $66db
    ld e, a
    add l
    add d
    ld l, a
    jr nc, jr_00a_54db

    add d
    add d
    sbc h
    ld d, b
    jp z, Jump_000_15aa

    and a
    ldh [$a0], a
    ld h, [hl]
    cp c
    dec d

Jump_00a_54bf:
    ld c, a
    add hl, hl
    push af
    ld b, d
    sub e
    dec d
    ld d, l
    ld c, [hl]
    ld a, d
    ld a, [hl+]
    sub b
    sub d
    ld a, [de]
    dec b
    ld d, h
    add hl, hl

jr_00a_54cf:
    ld c, h
    ld e, a
    ld d, d
    ld l, b
    ret


    inc d
    db $10
    ld l, b
    xor d
    ld b, [hl]
    inc sp

jr_00a_54da:
    xor a

jr_00a_54db:
    ld d, e
    add c
    inc b
    pop de
    jr @-$44

    ld a, [hl+]
    add d
    ld [hl-], a
    ld c, [hl]
    ld h, h
    sub l
    dec b
    ld d, l
    add [hl]
    sub h
    add l
    ld a, [hl-]
    rst $38
    push de
    ld hl, $4650
    and e
    sub [hl]
    add hl, hl
    and l
    adc b
    xor e

jr_00a_54f8:
    ld h, c
    xor l
    ld [hl-], a
    adc h
    jp nc, Jump_000_3e6c

    cp h
    cp d
    adc b
    xor b
    xor b

Jump_00a_5504:
    adc c
    dec h
    xor b
    sbc b
    ld l, l
    and e
    sbc l
    ld c, c
    xor d
    dec l
    adc b
    and d
    call nc, $9196
    sub d

Jump_00a_5514:
    jr z, jr_00a_5532

    or [hl]
    ld d, [hl]
    adc c
    and d
    ld d, $98
    ld e, l
    ret


    ld c, b
    add [hl]
    ld d, d
    ld e, b
    pop de
    xor d
    ld b, $88
    and c
    jp nz, $c504

    add l
    adc l
    db $eb
    ld h, c
    ld e, e
    cp a
    and [hl]
    ld [hl+], a

jr_00a_5532:
    ld h, l
    adc c
    and e
    adc c
    ld e, b
    jr jr_00a_54cf

    adc c
    ld b, a
    dec l
    adc [hl]
    add hl, hl
    ld d, b
    adc b
    ld l, b
    jp nz, $9862

    add sp, $56
    adc b
    ld l, c
    jr nc, jr_00a_5592

    rst $38
    adc $6a
    and c
    adc h
    sbc d
    jr jr_00a_54da

    dec d
    add hl, sp
    ldh [$4c], a
    db $76
    ld hl, $b42e
    and $81
    ld h, $4b
    xor a
    adc b
    and b
    ld d, b
    ld a, d
    jr c, jr_00a_55c5

    ld c, d
    sub h
    adc b
    adc c
    jp hl


    ld b, d
    add c
    add hl, sp
    inc hl
    jr z, jr_00a_54f8

    ld e, c
    ld [hl+], a
    and e
    and d
    db $f4
    cp c
    ld a, [de]
    ld h, d
    and l
    ld d, [hl]
    dec e
    ret z

    adc d
    ld a, c
    ld l, d
    inc d
    ld a, [bc]
    ld h, h
    sub h

Jump_00a_5583:
    sbc h
    db $fc
    ret


    ld d, d
    ld c, e
    ld hl, $0255
    add d
    ld h, a
    add d
    ld c, a
    ld [bc], a
    add hl, bc
    add d

jr_00a_5592:
    ld b, [hl]
    ld l, c
    ld b, $60
    and c
    add e
    dec h
    ld b, [hl]
    adc c
    dec c
    ld h, $16
    ld e, l
    ld hl, $1c23
    ld [$a462], a
    and d
    ld hl, sp+$43
    ld c, d
    ld h, l

Call_00a_55aa:
    ld [bc], a
    ld c, l
    ld a, [de]
    ld b, h
    ld [hl], a
    ld d, l
    ld d, l
    dec bc
    ld [$9caf], a
    xor b
    call $2517
    db $d3
    db $ec
    ld a, [bc]
    ld [hl], b
    rst $30
    and b
    cp [hl]
    ld a, [hl+]
    call nz, Call_00a_4745
    scf

jr_00a_55c5:
    inc de
    jp nc, $82d1

    ld c, [hl]
    ld b, d
    inc [hl]
    ld h, b
    ld hl, sp+$21
    ld b, h
    ld [hl], e
    ld b, b
    or l
    adc d
    ld [hl-], a
    ld e, d
    ld d, $de
    xor a
    ld [hl], h
    add h
    ld d, a
    xor l
    dec l
    inc bc

jr_00a_55df:
    ret z

    dec h
    ld c, b
    inc sp
    ld l, e
    pop hl
    ld a, [de]
    ld [hl], d
    or h
    ld b, e
    ld b, e
    inc a
    ld b, h
    adc d
    jp Jump_000_0c67


    add hl, bc
    dec c
    inc c
    or c
    inc l
    sbc b
    ld a, [hl-]
    sbc h
    ld e, e
    ld c, a
    xor c
    dec hl
    db $e4
    ld h, h
    cp h

Jump_00a_55ff:
    ld [hl], d
    call Call_000_3003
    ld l, $c4
    ld b, h
    cp a
    sub d
    sbc h
    cp e
    xor h
    push bc
    jp z, $b5f5

    ld e, c
    call $9010
    adc h
    ld b, e
    inc b
    dec d
    ld d, l
    ld a, [bc]
    ld [hl], e
    ret c

    ld b, l
    jr nc, jr_00a_55df

    and l
    ret nc

    ld c, c
    call Call_00a_4470
    ld c, l
    dec a
    dec c
    ld b, b
    or b
    and e
    add hl, sp
    jp $7871


    ld [hl], $8c
    sub e
    sub e
    inc e
    or [hl]

jr_00a_5634:
    and [hl]
    db $10
    ld d, c
    add hl, de
    scf
    ld b, d
    and a
    inc e
    add [hl]
    ld h, c
    inc a
    push bc
    db $dd
    ld e, h
    jr nz, jr_00a_5688

    or a
    cp l
    ld d, e
    xor l
    ld b, d
    xor a
    ld d, l
    ld d, e
    ld a, e
    db $d3
    ld a, [de]
    ld a, a
    inc sp
    cp a
    ld d, b
    or b

jr_00a_5654:
    sub e
    ld [$48d5], sp
    adc b
    ld c, [hl]
    ld b, a
    db $f4
    push bc
    jr c, jr_00a_5634

    inc sp
    ld c, h
    ld d, e
    dec sp
    di
    inc b
    push bc
    inc [hl]
    or d
    sub $14
    ld d, [hl]
    adc l
    ld l, e
    cp $8a
    xor b
    rst $20
    and b
    call $85b3
    inc [hl]
    ld d, h
    db $e3
    sub d
    push de
    and a
    add hl, sp
    inc e
    ld d, $22
    xor b
    push hl
    and e
    rst $08
    sbc $7e
    ld a, b
    adc l
    ld d, h

jr_00a_5688:
    db $f4
    ld l, [hl]
    add d
    and e
    sbc b
    ld e, d
    ld l, d
    add sp, $7e
    ld [hl], l
    ld b, b
    call nz, $cd49
    ld b, b
    sbc l
    or h
    sbc l
    call z, $a662
    ld sp, $52a5
    xor e
    jr jr_00a_5654

    ret


    ld b, [hl]
    inc c
    and a
    ld [hl+], a
    ld sp, $1a0c
    inc d
    ld [hl], c
    call nz, Call_00a_5431
    sbc h
    or h
    ld a, h
    ld a, b
    ld [hl], a
    cp h
    push de
    ld d, e
    sbc c
    ld e, d
    rst $38
    ld sp, hl
    ld c, l
    ld d, $a8
    sbc d
    ld c, [hl]
    ld b, $da
    and d
    jp hl


    db $e4
    jp nz, $5a52

    and h
    inc h
    pop de

jr_00a_56cc:
    add sp, $15
    xor c
    ld d, d
    inc d
    ld h, $49
    and c
    add [hl]
    ld [hl-], a
    ld c, h
    ld e, [hl]
    rrca
    add c
    ld d, l
    ld b, [hl]
    ld b, d
    ld l, c
    reti


    ld a, [bc]
    inc sp
    ld e, b
    sub h
    and [hl]
    ld a, a
    ret c

    ld hl, $9046
    sub b
    ld c, b
    and [hl]
    ld [$6184], sp
    add c
    ld [hl-], a
    ld a, d
    cp l
    ld l, a
    ld h, b

jr_00a_56f5:
    cp c
    ld b, d
    jr jr_00a_570b

    ld h, $42
    ld h, b
    ld l, e
    xor b
    add hl, hl
    ld [hl+], a
    add hl, bc
    ld e, $e1
    add d
    add d
    inc d
    add hl, de
    add [hl]
    inc b
    sub h
    inc de

jr_00a_570b:
    ld a, [de]
    add hl, hl
    ld [hl+], a
    ld c, e
    xor d
    ld e, b
    ld h, h
    ld d, $a3
    inc [hl]
    ld [hl+], a
    dec d
    and b
    ld c, [hl]
    ld e, d
    ld a, [hl+]
    ld a, d
    ld hl, $b408
    inc hl
    inc h
    db $e4
    di
    ld c, d
    ld [$09c6], sp
    ld hl, $25a4
    add l
    jr nc, jr_00a_5797

    add c
    adc h
    ldh [$ce], a
    add hl, de
    jr jr_00a_56f5

    adc b
    rst $28
    ld e, c
    inc hl
    ld a, [hl-]
    ld h, e
    ld e, b
    ld l, b
    db $10
    xor c
    ld h, e
    dec d
    ld c, b
    sbc b
    sub $16
    jr jr_00a_56cc

    dec h
    xor [hl]
    and e
    daa
    cp a
    add hl, hl
    jr nc, jr_00a_5793

    ld hl, $5858
    push bc
    dec [hl]
    sub b
    add c
    ld c, l
    ld d, c
    adc h
    ld e, b
    jp z, $3206

    adc b
    and [hl]
    add hl, hl
    ld sp, $5281
    sub e
    ld c, b
    ld h, d
    reti


    sub [hl]
    and d
    ld h, h
    and [hl]
    ld [$6230], sp
    db $d3
    ld b, [hl]
    ld [$689d], sp
    ld d, $26
    ld c, c
    ld h, b
    ld h, l
    add hl, bc
    ld d, h
    and h
    jp nc, $4a82

    xor b
    sub l
    pop hl
    ld e, h
    add hl, de
    add l
    ret


    sub d
    ld [hl], e
    ld c, e
    ld b, d
    ld d, e
    rrca
    dec c
    cp a
    ld sp, hl
    adc d
    ld d, d
    ld d, d
    ld h, h
    sub $e5

jr_00a_5793:
    and l
    ld a, [hl+]
    rst $38
    db $ed

jr_00a_5797:
    adc h
    ld e, d
    ld h, b
    ld d, d
    ld h, e
    dec b
    ld h, $9f
    sbc a
    rst $38
    cp l
    or a
    push af
    ld d, d
    ld h, c
    ld h, c
    sub d
    inc hl
    ld a, [bc]
    ld sp, $aaaa
    add c
    cp d
    jr jr_00a_57c5

    inc h
    ld e, h
    ld [c], a
    and [hl]
    ld c, l
    sbc $29
    ld [$2964], sp
    ld e, c
    ld d, $22
    jr nc, jr_00a_5811

    push af
    ld d, l
    ld d, a
    add sp, $68

jr_00a_57c5:
    ld d, c
    adc c
    adc d
    sbc d
    ld hl, $a58c
    ld b, d
    ld a, [bc]
    ld b, [hl]
    add d
    ld hl, $8582
    ld [hl], l
    ld h, c
    add c
    ld h, d
    jr @-$20

    push af
    ld d, c
    ld l, b
    ld l, b
    ld d, $a8
    adc c
    ld d, l
    ld h, d
    ld a, [de]
    cpl
    ld a, h
    ld [hl-], a
    ld e, $0a
    xor d
    ld [hl], b
    xor d
    dec c

jr_00a_57ec:
    ld c, d
    ld [hl], c
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    sbc l
    ld a, [bc]
    sub a
    ld h, $cd
    ld a, [bc]
    or h
    and h
    and e
    ld h, $11
    cp d
    ld h, [hl]
    jp $85d1


    ld hl, $e974

jr_00a_5805:
    ld sp, $1885
    ld h, $2f
    ei
    ld [de], a
    and l

jr_00a_580d:
    ld b, d
    sub b
    ret z

    pop bc

jr_00a_5811:
    ld b, e
    jp z, $a9bf

    ld l, l
    inc [hl]
    or a
    and e
    dec b
    inc h
    ld c, b
    inc h
    ld b, c
    ld hl, $e1fb
    ld [hl], $8d
    ld h, h
    ld l, d
    add h
    add a
    pop bc
    jr z, jr_00a_57ec

    ret


    ld [$4244], sp
    call c, $2955
    ld d, b
    ld l, h
    ld d, l
    ld d, b
    dec [hl]
    adc h
    inc c
    add $50
    pop bc
    inc b
    jr jr_00a_588f

    xor l
    jr jr_00a_5805

    ld c, b
    ld c, a
    ret nz

    ret nz

    sub l
    inc c
    ld c, e
    ld e, d
    ld e, d
    ld b, d
    ld h, a
    adc e
    inc [hl]
    xor e
    ld a, [bc]
    ld h, c
    inc c
    sub a
    ld b, [hl]
    db $ed
    ldh a, [$a1]
    inc c
    ld h, c
    sbc c
    inc h
    ld hl, $4513
    pop af
    jr c, @-$02

    dec bc
    adc e
    dec [hl]

jr_00a_5864:
    jr z, jr_00a_580d

    inc b
    ld c, l
    inc c
    ld b, a
    ld [bc], a
    inc [hl]
    inc l
    and b
    call z, Call_000_10a9
    and [hl]
    add hl, bc
    ld [$4bf4], sp
    dec d
    ld d, [hl]
    xor e
    inc [hl]
    call z, $a9c0
    add hl, bc
    xor d
    ld [hl-], a
    rr b
    jp z, $d010

    call z, $e118
    dec de
    ld b, e
    ld c, $b4
    sbc d
    ld a, [hl+]
    add hl, bc

jr_00a_588f:
    inc l
    ld b, h
    ld b, h
    call nz, Call_000_1026
    and b
    xor d
    call nc, Call_000_249a
    jr nc, @+$46

    and d
    or c
    jr z, jr_00a_5864

    jp nz, $4282

    db $fd
    ld h, $9c
    ld a, [hl+]
    sub e
    ld d, c
    ld l, b
    ld sp, $0c0c

jr_00a_58ad:
    dec hl
    db $f4
    ld b, l
    sbc d

Jump_00a_58b1:
    ld hl, sp-$24
    sbc b
    xor h
    and b
    or h
    inc c
    ld c, a
    pop de
    add e
    ld a, [de]
    ld d, d
    ld c, l
    ld a, [hl+]
    pop de
    dec d
    db $10
    add $1f
    ld d, $f6
    sbc d
    jp c, $2d9b

    add hl, de
    ld a, [$f00b]
    ld c, d
    sbc d
    pop bc
    sbc $aa
    xor l
    ld b, d
    add h
    and d
    and h
    call $09e6
    add h
    ld h, e
    ld b, [hl]
    ld a, d
    ld de, $6430
    or b
    add hl, hl
    add d
    ld h, c
    add hl, hl
    jp nz, $d1c5

    inc d
    dec c
    xor c
    ld l, b
    ld h, $1c
    add d
    and $1a
    add h
    dec [hl]
    ld b, e
    ld d, h
    ld b, d
    xor b
    ld e, a
    xor h
    ld l, e
    add e
    rrca
    ld d, b
    ld [hl], c
    inc d
    jr z, @+$6d

    ld c, $42
    ld e, e
    daa
    inc [hl]
    and d
    xor b
    ld a, l
    ld b, [hl]
    inc [hl]
    adc h
    xor [hl]
    ld sp, $4460
    ld sp, $f55b
    add hl, sp

jr_00a_5916:
    sbc [hl]
    ld [hl+], a
    xor a
    push de
    cp $54
    ret


    add d
    ld sp, $5497
    ld a, [hl+]
    adc h
    jr jr_00a_58ad

    push bc
    sub b
    ld d, b
    and h
    push bc
    dec h
    inc sp
    sub h
    add hl, hl
    ld sp, $4d8a
    jr nc, jr_00a_597b

    sub e
    ld b, [hl]
    inc sp
    cp h
    ld [de], a
    inc de
    jr c, jr_00a_5916

    rst $00
    cp b
    pop bc
    ld h, e
    ld b, [hl]
    jr c, jr_00a_5956

    sub $21
    ld b, $34
    or h
    push bc
    add l
    or $55
    adc h
    cpl
    jp $a006


    ld e, [hl]
    dec bc
    ld d, b
    adc h
    ldh [$5a], a

jr_00a_5956:
    rst $38
    add sp, -$3e
    xor b
    ld a, [$8259]
    ld a, [de]
    xor c
    push de
    rst $38
    ld a, a

Jump_00a_5962:
    and h
    ld a, [hl+]
    ld l, l
    inc de
    ld a, d
    rla
    dec b
    cp $1f
    sbc b
    push bc
    ld hl, $2a79
    ld b, l
    ld a, c
    add d
    ld h, b
    pop af
    rrca
    jp hl


    ld d, [hl]
    ld l, a
    ld l, c
    rla

jr_00a_597b:
    jp hl


    add $fa
    ld d, $8d
    db $ec
    ld [hl], b
    rst $38
    db $e3
    ld sp, hl
    dec de
    ld a, [bc]
    ld c, $60
    cp a
    ldh a, [$3f]
    dec bc
    ld sp, hl
    jr jr_00a_5a09

    ld l, l
    cp $0f
    jp nz, $c0ff

    ld hl, sp+$79
    sbc l
    cp $bf
    db $fc
    scf
    rst $08
    sbc b
    ld d, b
    dec l
    ld a, a
    db $f4
    ld h, c
    ld d, h
    ld h, l
    rra
    db $76
    ld [hl], a
    cp b
    sbc d
    xor d
    sub l
    ld d, l
    ld d, l
    ld d, l
    inc a
    rlca
    and l
    dec [hl]
    ld d, l
    ld b, [hl]
    and l
    ld c, [hl]

jr_00a_59b8:
    sbc c
    ld h, $25
    ld d, [hl]
    xor b
    xor d
    and l
    ld e, [hl]
    ld d, e
    sub d
    ld [hl-], a
    and e
    dec h
    ld e, d
    rst $38
    db $fd
    ld e, l
    jr c, jr_00a_5a2b

    ld c, b
    ld h, c
    pop de
    ld d, l
    xor d
    ld a, [de]
    and e
    ld c, b

jr_00a_59d3:
    inc de
    ld d, [hl]
    ld h, d
    ld [hl+], a
    db $ed
    ld e, d
    ld a, [hl+]
    jr c, jr_00a_59ef

    ld b, [hl]
    ld [hl], b
    ld c, h
    sbc b
    or a
    sub c
    sub e
    ld d, [hl]
    ld [hl-], a
    ld h, a
    cp $46
    ld d, [hl]
    adc l
    inc de
    add c
    and h
    or [hl]
    ld a, a

jr_00a_59ef:
    add d
    or e
    adc d
    sub e
    ld h, [hl]
    ld d, d
    reti


    add d
    adc d
    sbc h
    and [hl]
    xor c
    ld d, $86

jr_00a_59fd:
    ld [$d912], sp
    add [hl]
    dec h
    inc b
    adc b
    and a
    adc d
    adc l
    sub d
    ld d, l

jr_00a_5a09:
    cp [hl]
    add [hl]
    ld c, c
    ld b, [hl]
    ld b, l
    ld hl, $c897
    adc d
    ld h, d
    pop hl
    sub l
    xor b
    sub [hl]
    ld c, l
    xor d
    ld a, [de]
    add hl, hl
    dec h
    ld [hl+], a
    ld hl, $326a
    ld b, c
    jr c, jr_00a_59b8

    ld c, e
    xor d
    daa
    ld l, b
    push de
    add c
    inc d
    pop bc

jr_00a_5a2b:
    adc c
    ld a, b
    adc d
    ld c, h
    sbc d
    ld [hl], $60
    ld h, d
    jr jr_00a_59d3

    dec l
    inc b
    pop hl
    adc h
    push de
    add c
    adc h
    ld hl, $3781
    ld c, c
    ld e, d
    add d
    and l
    ld d, [hl]
    and c
    ld e, b
    pop bc
    ld a, [hl+]
    inc b
    jp nz, Jump_00a_5455

    ld d, e
    dec d
    ld d, l
    ld a, [hl+]
    ld sp, $264c
    sub h
    cp a
    ld a, b
    ld d, e
    inc b
    add l
    adc d
    adc e
    ld h, b
    ld [hl], h
    cp c
    jr jr_00a_59fd

    ld a, [bc]
    ld h, $55
    ld h, d
    inc hl
    ld b, l
    ld h, c
    ld hl, sp-$36
    ld h, c
    ld b, c
    or b
    ld l, d

jr_00a_5a6d:
    ld c, h
    db $d3
    ld a, [de]
    add l
    or [hl]
    scf
    db $db
    ldh a, [$8a]
    adc h
    add sp, -$67
    dec b
    ld h, a
    adc d
    ld c, l
    dec l
    adc h
    and d
    push de
    inc b
    sbc b
    cpl
    ld hl, sp-$3b
    dec [hl]
    and c
    sub d
    sub c
    ld h, b
    ld c, b
    add d

Jump_00a_5a8d:
    ld b, c
    ld d, e
    ld b, l
    jr c, @+$2a

    adc d
    xor b
    add a
    add l
    ld b, $15
    add d
    sub l
    ld l, d
    or l
    db $d3
    ld a, d
    ld hl, $9a54
    xor c
    ld a, [hl+]
    add hl, bc
    ld d, l
    ld a, a
    rst $38
    adc [hl]
    dec de
    ld h, d
    ld h, d
    sbc [hl]
    jr nc, jr_00a_5a6d

    rst $38
    xor d
    add hl, sp
    push hl
    inc hl
    ld d, a
    db $e3
    xor a
    ld [hl], d
    ld a, [hl+]
    xor c
    add sp, $34
    cpl
    push af
    ld d, l
    ld d, l
    ld d, l
    ld a, [hl+]
    sbc l
    adc c
    inc [hl]
    ld l, d
    xor d
    xor c
    dec d
    daa
    inc a
    ld h, [hl]
    and e
    ld d, l
    inc h
    ld a, b
    ld d, l
    ld d, h
    ld a, [de]
    ld [hl], c
    push bc
    jp c, Jump_000_3fea

    db $ec
    ld [hl], b
    ld b, a
    dec bc
    add hl, de
    ld d, a
    rst $30
    ld b, e
    inc e
    ld l, [hl]
    ld l, d
    and b
    sbc h
    ld c, b
    jp hl


    jp c, $c9ff

    xor l
    inc d
    and c
    dec de
    ld c, c
    sub e
    rst $30
    ld a, $71
    ld b, c
    ld h, $cc
    ld h, h
    pop bc
    ld de, $e6dc
    sub h
    ld d, l
    inc b
    ld h, d
    jp Jump_000_2618


    ld a, h
    ld [hl], d
    add hl, hl
    ld l, e
    ld b, h
    ld h, $09
    sbc d
    ld sp, hl
    rst $00
    rlca
    push de
    ld d, $9c
    sub h
    ld l, a
    inc bc
    or l
    add hl, de
    ld a, [hl-]
    ld h, e
    dec e
    adc a
    ld a, [de]
    scf
    daa
    dec de
    inc e
    inc [hl]
    ld a, [hl+]
    and h
    ld d, l
    inc sp
    inc de
    sbc b
    or l
    ld c, b
    daa
    dec b
    inc c
    ld c, h
    ld a, [hl+]
    call z, Call_000_1361
    dec e
    ld d, h
    or d
    xor h
    dec hl
    ld b, a
    inc b
    add hl, bc
    ld d, c
    rra
    xor c
    sub l
    dec [hl]
    ld e, l
    ld d, h
    ld h, [hl]
    sbc b
    ld c, h
    xor h
    ld c, a
    cp h
    ld l, [hl]
    call nz, $9840
    or b
    add hl, sp
    add h
    ld h, c
    and c
    ld b, [hl]
    pop af
    or d
    ret nz

    add $72
    ld b, d
    dec c
    sbc e
    and h
    and e
    jr z, jr_00a_5b86

    dec bc
    dec de

Jump_00a_5b5b:
    db $d3
    ld a, [hl]
    ld [hl], b
    and l
    inc hl
    inc d
    rst $00
    inc h
    rst $00
    inc b
    sub b
    sub c
    ld de, $6254
    sbc e
    and [hl]
    ld a, [c]
    ld b, d
    ld b, d
    add hl, bc
    rst $18
    ld a, [de]
    inc a
    ld b, d
    ld d, e
    ld d, d
    ld c, d
    xor l
    ld c, c
    jp $c419


    add $95
    ld c, d
    or l
    inc e
    ld [hl], d
    ld l, b
    add $55
    ld d, l

jr_00a_5b86:
    dec e
    sub h
    xor d
    xor l
    dec e
    add b
    ld b, h
    cp d
    rla
    db $e3
    adc l
    ld d, h
    ld e, [hl]
    ld h, l
    ld c, [hl]
    rlca
    ld [$60ae], a
    add [hl]
    scf
    and d
    sub b
    db $ec
    ld h, l
    adc l
    xor b
    add [hl]
    db $eb
    ld h, d
    sub e
    adc d
    jr nc, jr_00a_5bfc

    push hl
    adc b
    ld c, b
    adc b
    add [hl]
    ld [hl], $52
    add hl, hl

jr_00a_5bb0:
    sub b
    ld c, b
    ld c, [hl]
    dec hl
    pop bc
    ld hl, $a142
    ld h, e
    add [hl]
    cp [hl]
    ld b, $8e
    sbc d
    ld [$456a], sp
    sub e
    sbc d
    ld b, d
    ret nc

    add d
    jr c, jr_00a_5bb0

    sbc d
    ld h, a
    ld c, $38
    rst $28
    ld d, l
    ld e, d
    ld d, h
    and $aa
    adc a
    cpl
    db $76
    daa
    ld a, [de]
    ld h, b
    ldh [$c7], a
    inc d
    rrca
    ret nz

    adc h
    ld de, $d2c5

Call_00a_5be1:
    jp nc, $c7cc

    rla
    pop af
    jr jr_00a_5c41

    reti


    ld b, a
    ld d, h
    ld b, d
    ld [de], a

jr_00a_5bed:
    rst $00
    ld a, [hl-]
    jr nc, @-$30

    ld [hl], h
    ret


    ld e, d
    db $76
    ld c, e
    ld h, a
    ld d, a
    sub c
    inc b
    ld [hl], l
    add hl, hl

jr_00a_5bfc:
    inc de
    dec e
    dec sp
    ld a, [hl+]
    ld d, $a7
    dec [hl]
    dec b
    db $eb
    dec c
    ld b, a
    inc [hl]
    ld a, c
    ldh [rHDMA5], a
    or h
    ld d, l
    ld d, b
    ld d, h
    push hl
    sub d
    ld d, b
    ld a, [$debf]
    ld sp, hl
    ld d, h
    call $090f
    ld a, b
    sub a
    cp d
    dec bc
    sbc d
    ld d, b
    sub d
    reti


    sub d
    ld d, d
    xor b
    ld h, l
    ld hl, $8804
    ld h, d
    ld d, b
    sub b
    ld d, c
    adc e
    ld d, l
    push af
    ld hl, $1805
    ld d, d
    ld h, b
    add l
    ld [$2255], sp
    db $fd
    xor c
    ld d, d
    ld sp, $64a6
    ld d, d
    sbc [hl]

jr_00a_5c41:
    add sp, $1e
    adc c
    xor d
    ld d, b
    sub d
    ld l, b
    ld hl, $a189
    sub l
    ld c, c
    call z, Call_00a_4a69
    add d
    ld [$5751], sp
    sub h
    adc h
    jp c, $828a

    inc b
    ld d, d
    dec [hl]
    ld d, h
    ld [c], a
    and d
    sub b
    ld c, c
    ld b, l
    ld e, b
    db $e4
    ld c, [hl]
    rrca
    jr jr_00a_5cbb

    adc l
    dec h
    jr nc, jr_00a_5bed

    ld [hl+], a
    inc d
    reti


    adc [hl]
    ld a, b
    ld d, e
    ld [hl], $26
    ld hl, $2a19
    ld [$6598], sp
    ld hl, $9668
    ld hl, $4c06
    db $10
    ld c, c
    sub h
    ld l, d
    dec l
    adc c
    ld b, c
    inc d
    add $69
    ld c, b
    and l
    dec h
    and d
    ld e, b

jr_00a_5c8f:
    ld [de], a
    inc de
    ld a, [hl-]
    ld e, [hl]
    ld c, c
    xor d
    dec h
    ld h, d
    dec l
    inc b
    ldh [$9a], a
    xor c
    ld d, l
    and d
    ld e, d
    dec b
    adc [hl]
    ld a, [hl+]
    and l
    ld d, l
    ld d, l
    and d
    xor l
    jp c, $a424

    daa
    ld a, [hl+]
    ld e, d
    ld b, l
    ld a, b
    cpl
    inc bc
    sub b
    sbc e
    ld e, d
    cpl
    jr z, @+$32

    xor b
    ld c, [hl]
    dec d
    ld b, b

jr_00a_5cbb:
    sbc b
    ld hl, $cc8f
    inc d
    ld h, d
    sub b
    and l
    cp c
    inc l
    jr @+$80

    sbc b
    ret nz

    or d
    sub b
    xor d
    ld d, d
    ld b, h
    inc c
    ld a, [hl+]
    ld c, d
    ld d, [hl]
    dec d
    ld e, d
    and c
    ld b, h
    jp c, $b018

    jr nc, jr_00a_5c8f

    ld a, [bc]
    inc c
    db $10
    db $eb
    add [hl]
    ld a, [de]
    sub a
    ld b, d
    jp nz, Jump_00a_5482

    ld [$5c44], a
    ld e, $97
    inc de
    inc bc
    ld b, b
    or b
    ld d, d
    and [hl]
    xor h
    sub a
    inc [hl]
    inc d
    add h
    ld b, [hl]
    add h
    sbc e
    or d
    ld h, c
    ld b, e
    ld [hl], e
    ei
    ld b, a
    ld a, [bc]
    ld h, l
    rla
    ld h, e
    ld c, d
    add hl, hl
    or l
    dec de
    ld [hl], c
    ld [hl], $08
    and [hl]
    ld c, l
    ld b, l
    xor d
    ld e, d
    sub h
    add d
    ld [hl-], a
    sub b
    or e
    add $54
    ld d, d
    ld h, b
    ld hl, sp+$23
    ld e, e
    pop af
    adc l
    add l
    rla
    ld b, l
    and e
    rlca
    db $f4
    ld h, [hl]
    add l
    and [hl]
    db $10
    ld l, d
    ld [hl], l
    ld b, c
    add hl, de
    ld b, c
    sbc $9c
    ld l, d
    add h
    sbc e
    ld d, a
    ld [$2ba6], a
    db $fd
    ld h, c
    sbc h
    inc [hl]
    ccf
    ld d, l
    ld d, l
    db $f4
    ld e, [hl]
    ld b, h
    cp l
    dec [hl]
    ld d, e
    and c
    ld l, d
    ld [$54d0], a
    push de
    rlca
    ld a, [$d1ab]
    ld [$f035], a
    ld c, h
    sbc d
    jr c, jr_00a_5d67

    daa
    ld c, h
    and h
    pop hl
    db $fc
    ld a, [c]
    and e
    adc c
    ld c, h
    ld e, a
    adc b
    add l
    dec [hl]
    ld d, h
    jp z, Jump_000_1441

    sbc $79
    ld d, h

jr_00a_5d67:
    ld [hl+], a
    ld de, $3a4e
    adc c
    sub b

jr_00a_5d6d:
    ld e, b
    inc de
    sub d

Call_00a_5d70:
    and c
    ld l, l
    ld e, b
    inc hl
    adc [hl]
    ld a, [$3b3e]
    ld a, h
    ld [hl], d
    ld c, d
    ld a, [hl+]
    add hl, hl
    ret


    ld [bc], a
    ret nz

jr_00a_5d80:
    xor c
    db $10
    ld h, $fa
    ld sp, $8a74
    ld l, d
    sub c
    ld d, c
    adc l
    ld d, c
    or h
    ld a, [bc]
    sbc d
    daa
    inc c
    ld [hl], a
    jp hl


    adc e
    ld c, c
    jp z, $a898

    ld c, [hl]
    ld [hl], c
    ret nc

    jr z, jr_00a_5d6d

    ld c, d
    ld [hl], e
    ld b, e
    xor a
    inc h
    or d
    ld [hl], d
    ld b, e
    adc l
    ld d, c
    push af
    nop
    ld h, [hl]
    cp b
    ld d, a
    rst $18
    ld c, a
    ld [hl+], a
    xor c
    ld b, $04
    pop af
    sub a
    ld c, h
    inc de
    ret z

    ld c, h
    ld l, c
    inc a
    dec hl
    and b
    ld d, e
    jr jr_00a_5d80

    ld d, d
    ld e, a
    adc e
    ld d, l
    xor e
    and d
    inc d
    jp z, $a221

    add hl, hl
    add e
    ret z

    ld e, a
    sub $a0
    ld b, d
    cp d
    add c
    ld sp, $15a8
    inc sp
    ld a, d
    ld a, [bc]
    add hl, hl
    ret nc

    and c
    and b
    and e
    ld a, [hl-]
    cp l
    ld h, $81
    ld d, b
    and e
    ld [$b4eb], sp
    cp d
    sub e
    ld b, h
    adc c
    inc d
    ld [c], a
    ld d, e
    adc c
    ld b, [hl]
    inc hl
    ld h, d
    ld d, $8d
    ld d, h

jr_00a_5df4:
    inc d
    push de
    ld b, d
    dec bc
    ld h, d
    ld e, b
    ld e, b
    and $4c
    ld [hl], b
    ld c, h
    ld d, e
    sub d
    ld sp, $504d
    add l
    add hl, sp
    jp nc, $2d76

    ld d, b
    ld d, [hl]
    ld b, d
    ld l, $4e
    ld c, d
    ld l, d
    ld a, [hl+]
    ld a, [de]
    dec b
    adc [hl]
    jp z, Jump_00a_5389

    add hl, hl

Jump_00a_5e18:
    db $f4
    and [hl]
    jr c, @-$52

    add $97
    call nc, $d8c3
    pop bc
    rrca
    bit 4, a
    ld d, [hl]
    sub h
    add $92
    dec h
    adc h
    ld h, h
    push bc
    inc [hl]
    and l
    and d
    ld d, c
    adc b
    adc d
    add a
    inc c
    cp b
    ldh [$a8], a
    xor c
    ld c, h
    sub d
    ld [hl+], a
    rst $38
    scf
    cp c
    jr c, jr_00a_5df4

    or l
    ld [hl], c
    ld d, c
    ld b, l
    xor d
    sub l
    ld d, e
    inc b
    db $e3
    xor c
    ld d, [hl]
    ld a, [bc]
    inc [hl]
    xor d
    and l
    db $dd
    jp nz, $8284

    sbc [hl]
    ld c, a
    jp c, $9e42

    ld [hl-], a
    ld a, [de]

jr_00a_5e5b:
    inc d
    ld b, h
    sbc [hl]
    inc l
    add l
    sub l
    ld l, d
    ld a, b
    sub d
    xor b
    inc hl
    ld de, $a018
    sub l
    sbc b
    xor b
    ret


    ld a, [bc]
    and b
    push de
    inc de
    ld [de], a
    pop hl
    inc b
    jr jr_00a_5e5b

    ld hl, $462f
    ld d, l
    xor [hl]
    add d
    and c
    add l
    xor d
    ld e, h
    ld c, d
    db $10
    ld sp, $a256
    and b
    xor b
    db $f4
    ld c, l
    dec hl
    ld c, c
    rla
    add [hl]
    ld [$0831], sp
    inc l
    ld b, h
    ld [$5234], sp
    ld h, e
    ld c, h
    sub a
    inc bc
    dec bc
    ldh a, [rNR44]
    dec b
    ld a, [de]
    ld c, c
    sub d
    add hl, bc
    and l
    db $ec
    ld h, h
    add d
    and l
    ld h, $68
    inc hl
    sbc c
    ld b, h
    ld l, c
    ld l, $d4
    ld d, d
    ld [hl], a
    ld d, c
    add d
    sbc h
    or c
    add d
    ld a, c
    ld a, [hl+]
    sub e
    ld h, [hl]
    ld [$f222], sp
    sbc b
    ret


    cp h
    ld e, d
    sub a
    ld de, $9d02
    ld sp, $032f
    sbc d
    ld c, l
    and l
    or c
    cp d
    jr z, jr_00a_5f02

    and l
    ld [hl], $a4
    ld h, $11
    ld c, e
    rst $38
    and h
    ld [hl+], a
    call nc, Call_000_288d
    jr z, jr_00a_5f33

    jp $e468


    cp l
    ret


    ld d, $d9
    or l
    ld c, d
    sbc c
    ld sp, hl
    ld e, c
    add hl, de
    ld e, d

jr_00a_5eea:
    ld [hl], b
    dec [hl]
    jr jr_00a_5f14

    ld [hl], e
    ld d, $a7
    dec b
    ld a, [hl]
    ld d, d
    ld b, h
    ld c, l
    daa
    ld l, d
    or [hl]
    ld a, [hl+]
    or c
    ld e, l
    ld a, [bc]
    ld d, e
    daa
    ld [hl-], a
    pop bc
    dec de

jr_00a_5f02:
    ld b, l
    ld [hl], h

jr_00a_5f04:
    nop
    ld b, h
    cp c
    dec d
    ld a, [hl]
    and e
    ld d, l
    dec h
    ld a, a
    xor d
    jr jr_00a_5eea

    cp c
    ld a, [$6331]

jr_00a_5f14:
    ld h, [hl]
    jr jr_00a_5f04

jr_00a_5f17:
    ld b, d
    ld [hl], $4e
    ld a, [bc]
    jr c, jr_00a_5f30

    cp l
    adc [hl]
    inc b
    db $ed
    ld a, d
    ld hl, $7331

jr_00a_5f25:
    adc l
    xor b
    and l
    ld hl, sp-$22
    db $fd
    ld d, l
    inc hl
    jr jr_00a_5f17

    sbc l

jr_00a_5f30:
    ld d, d
    ld d, e
    and [hl]

jr_00a_5f33:
    sub l
    ld [$ec2c], sp
    ld d, [hl]
    dec b
    ld a, [hl-]
    ld [$1f8f], a
    ld [hl], d
    ld [hl+], a
    ret


    adc $cc
    inc d

jr_00a_5f43:
    ld b, h
    sbc e
    ld d, d
    inc a
    ld h, [hl]
    add $c8
    ld h, h
    ld b, [hl]
    ld d, c
    jp $d2c6


    ld l, a
    add d
    inc l
    ld l, c
    daa
    dec b
    dec de
    add hl, hl
    or d
    ld l, a
    ld b, a
    ld [bc], a
    ld l, a
    ld h, $f0
    cp c
    or h
    ld l, l
    ld d, b
    add hl, hl
    ld e, [hl]
    and d

Jump_00a_5f66:
    and a
    dec h
    add hl, hl
    jr jr_00a_5fdc

    push de
    ld d, b
    ld b, c
    ld c, d
    ld [hl], l
    xor d
    pop de
    ldh a, [$a0]
    ld h, [hl]
    or [hl]
    ld d, l
    ld d, l
    ld a, [hl-]
    ld d, l
    inc [hl]
    ld a, d
    xor c
    rrca
    ld c, b
    ld d, l
    ld c, l
    xor c

jr_00a_5f82:
    scf
    ld d, b

jr_00a_5f84:
    ld d, d
    jr nz, jr_00a_5f25

    sub c
    and h
    ret


    ld a, h
    push de
    ld c, d
    ld c, e
    ld c, b
    ret


    sub c
    ld e, a
    ld c, b
    call $8818
    push de
    jr nc, jr_00a_5f43

    inc e
    ld a, b
    ret


    add l
    xor d
    sub e
    ld a, [bc]
    dec h
    add hl, hl
    daa
    ld h, b
    ld c, e
    ld h, a
    ld h, e
    ld [$0cb7], sp
    adc b
    xor d
    ld c, b
    add d
    add hl, hl
    add hl, bc
    ld c, l
    sbc d
    ld a, [bc]
    xor b
    jp nc, $d062

    adc [hl]
    inc b
    push hl
    add d
    and e
    ld a, [bc]
    inc sp
    adc h
    ld a, [de]
    db $f4
    jp nc, Jump_00a_4e30

    ld l, b
    db $10
    sub d
    ld e, b
    jp nz, Jump_00a_732d

    ld b, h
    adc b
    sbc b
    ld hl, $0846
    ld [c], a
    ld h, e
    inc d
    and h
    ld l, a
    ret c

    inc d
    inc de
    sub c
    sub h
    add l

jr_00a_5fdc:
    jr nc, jr_00a_5f82

    sbc a
    add c
    ld [hl-], a
    adc e
    ld h, h
    ld [de], a
    ld a, [hl+]
    dec l
    ld d, d

jr_00a_5fe7:
    add hl, hl
    ld d, l
    adc [hl]
    ld e, b
    add hl, de
    dec l
    and d
    add hl, hl
    ld a, [hl-]
    db $e4
    or [hl]
    add c
    push de
    ld a, [hl+]
    dec sp
    ld [hl+], a
    ld [de], a
    ld d, d
    jr nz, jr_00a_5f84

    adc [hl]
    rra
    db $e3
    dec de
    adc h

jr_00a_6000:
    ld h, h
    add l
    adc l
    db $db
    ld b, $34
    sub b
    call nc, $8858
    ldh [$62], a
    inc h
    jp c, $bd42

    jr c, jr_00a_5fe7

    inc d
    ld h, e
    jp $8655


    ld hl, sp+$63
    ld l, e
    ld d, c
    ld h, b
    ld e, d
    ld d, l
    ld e, d
    inc [hl]
    xor h
    ldh [$af], a
    ld e, b
    jp hl


    ld d, b
    ld [hl], a
    and b
    sbc h
    ld e, h
    jp hl


    adc d
    ld l, l
    add l
    ld a, [de]
    xor b
    ld sp, $833a
    di
    ld b, $9a
    ld sp, hl
    xor d
    ld d, d
    and h
    ld a, [hl+]
    adc h
    ld [hl], $8a
    ld a, [de]
    ld [hl], d
    ld b, c
    ld b, c
    jp hl


    cp h
    ld d, l
    ret nz

Call_00a_6046:
    ld sp, hl
    sbc d
    dec c
    ld d, l
    ld c, h
    add d
    ld [de], a
    or b
    add hl, hl
    db $10
    ld c, d
    ld a, [hl-]
    sbc b
    dec l
    ld [hl], d
    and l
    pop bc
    ld [bc], a
    sub d
    ret nc

    jr nz, jr_00a_6000

    ld d, e
    ld b, l
    cp d
    jr jr_00a_60a5

    ld c, c
    ld [hl], a
    ld b, h

jr_00a_6064:
    call nz, Call_000_145a
    pop bc
    ld a, [hl+]
    ld c, e
    call z, $9d11
    daa
    inc bc
    ld hl, $1391
    inc b
    ret


    call nz, Call_00a_69f8
    and [hl]
    ld h, c
    and [hl]
    ld [hl], c
    sub a
    xor $10
    or b
    call z, Call_00a_6046
    db $e3
    dec d
    ld d, $a4
    ld hl, $906e
    sbc h
    ld [hl], $84
    or h
    ld h, h
    and h
    db $fc
    add $69
    adc d
    xor c
    sbc d
    inc [hl]
    ret z

    pop hl
    jp $2235


    push bc
    jp hl


    inc c
    sub [hl]
    call $df53
    xor d
    pop af
    ld d, b

jr_00a_60a5:
    ld b, [hl]
    jr z, jr_00a_6064

    db $dd
    ld a, b
    jp nc, Jump_000_244d

    add $11
    sbc l
    ld hl, $0543
    ld c, c
    add hl, hl
    ld [hl], c
    add hl, bc
    ld [hl], b
    and [hl]
    xor h
    ld c, d
    ld c, l
    dec de
    ld d, h
    jp nc, Jump_000_39f0

    sub h
    sbc b
    ld d, c
    sbc h
    ld h, d
    jp $9a0a


    ld b, l
    ld [hl-], a
    db $f4
    ld c, e
    db $10
    xor b
    ret nz

    or h
    dec e
    inc e
    ld d, a
    rlca
    push de
    ld c, d
    jr nc, jr_00a_6109

    pop de
    dec hl
    rst $20
    ld [de], a
    ld c, d
    dec c
    ld c, h
    dec c
    ld b, $56
    rrca
    sbc h
    ld c, h
    jr z, @+$45

    ld d, h
    jr jr_00a_6131

    sub l
    ld a, c
    pop bc
    ld d, h
    ld [hl], l
    ld l, d
    nop
    ld b, h
    or [hl]
    ld d, l
    dec h
    ld a, a
    di
    add c
    ld [$8369], a
    ld hl, $288e
    scf
    ld e, l
    ld l, d
    ld h, e
    add d

Call_00a_6104:
    rst $30
    add hl, bc
    pop hl
    adc [hl]

jr_00a_6108:
    ld l, d

jr_00a_6109:
    xor d
    dec a
    add sp, -$4c
    ld e, b
    push hl
    ld l, l
    ld e, b
    ld d, h
    push hl
    ld d, c
    sub c
    ld h, c
    adc [hl]
    ld e, e
    ld e, b
    inc hl
    and c
    or [hl]
    ld hl, $8e21
    ld a, [hl+]
    ld b, c
    ret c

    ld a, d
    add hl, sp
    inc d
    sub [hl]
    inc b
    ld a, [hl+]
    adc [hl]
    dec sp

jr_00a_612a:
    cp $a3
    ld [c], a
    rst $30
    ld b, d
    ld b, d
    ld [hl], c

jr_00a_6131:
    ld a, l
    jr z, jr_00a_612a

    jp nc, Jump_00a_4b72

    ld b, b
    db $fc
    ld sp, hl
    call z, $8cfe
    ld [de], a
    ld [hl], d
    ld h, b
    ret nc

    call nz, Call_000_3247

Jump_00a_6144:
    jr z, jr_00a_6177

    sub $8c
    db $76
    ld l, h
    sub b
    adc $9c
    sbc h
    rst $10
    ld c, a
    inc b
    ld [hl], e
    ld c, c
    ld d, $c7
    ld d, h
    rst $20
    ld a, l
    ld d, b
    ld a, [hl+]
    ld [hl], e
    ld l, $a3
    dec e
    inc [hl]
    ld a, h
    ld [hl], b
    ld h, [hl]
    or [hl]
    ld d, e

jr_00a_6164:
    call z, $b97f
    ld c, a
    add hl, de
    pop bc
    add d
    adc b
    sub e
    ld b, l
    ld c, b
    ld a, b
    sbc $f4
    adc $30
    ld a, [hl]
    xor a
    cp d

jr_00a_6177:
    ld d, h
    rst $08
    rst $38
    dec d
    rrca
    ld l, d
    or h
    adc d
    jr nc, jr_00a_6108

    or h
    jp nc, $869e

    dec d
    dec b
    ld a, [bc]
    ld [hl], a
    push af
    dec l
    and e
    dec h
    dec d
    add hl, hl
    inc hl
    sub d
    ld e, l
    inc b
    dec hl
    ld b, c
    ld d, $31
    ld a, d
    ld hl, sp-$6a
    ld c, b
    and d
    xor d
    add d
    ld d, b

jr_00a_619f:
    and c
    adc h
    sub h
    ld l, l
    dec d
    add sp, $21
    sub h
    ld h, l
    sub d
    ld h, c
    add d
    inc sp
    cp a
    add d
    and b

jr_00a_61af:
    adc d
    add a
    db $76
    ld l, b
    add [hl]
    ld c, b
    and e
    adc d
    ld [$23c2], sp
    ld sp, $95a4
    dec sp
    ret nc

    adc h
    ld d, e
    sbc c
    db $e3
    inc d
    ld h, e
    ld c, h
    sbc b
    inc hl
    ld h, l
    jr c, jr_00a_619f

    cp h
    ld d, d
    dec a
    ld sp, $315a
    ld h, d
    sbc d
    ld a, [de]
    ld e, $14
    sbc e
    adc h
    ld a, [hl+]
    ldh [$5e], a
    ld e, b
    and [hl]
    jr nc, jr_00a_6164

    and d
    ld d, e
    cpl
    ld b, c
    ld a, [$1b5c]
    ld [hl], e
    ld d, $86
    add hl, hl
    ld a, h
    add $b8
    adc b
    ld h, $05
    ld b, d
    jp nc, $6462

    add [hl]
    ld a, [bc]
    jr c, @+$68

    ld hl, $6f58
    ld d, d
    xor d
    ld [hl], e
    adc c
    jp nc, $f457

    sub l
    ld hl, $54b1
    inc hl
    add [hl]
    xor b
    ld l, d

jr_00a_620a:
    ld e, [hl]
    sbc [hl]
    dec hl
    ret nc

    ld c, b
    ld c, [hl]
    dec [hl]
    cp [hl]
    inc b
    adc b
    ld [hl], l
    ld l, d
    rlca
    sub c
    ld a, [hl]
    jr c, jr_00a_61af

    add a
    ld b, l
    and e
    dec de
    ld [$381a], a
    rst $28
    add sp, $28
    rst $28
    sbc $f7
    daa
    sbc d
    call nz, Call_00a_725a
    daa
    ld h, $42
    ld a, [bc]
    sbc h
    ld a, [bc]
    inc d
    ld [hl], d
    ld l, a
    and e
    ld [hl], h
    ld e, [hl]
    ld e, h
    dec d
    xor [hl]
    ld [hl], c
    ret z

    ld b, h
    and e
    ld c, $63
    inc b
    inc c
    ld [hl], d
    jr nc, jr_00a_620a

    adc d
    ld a, [hl+]
    ld a, [bc]
    sub e
    inc e
    ld a, [bc]
    xor d
    or b
    cp $30
    inc h

Call_00a_6252:
    ld d, l
    inc c
    adc h
    ld de, $85a2
    inc h
    or h
    adc h
    ld e, $32
    jp z, Jump_000_394c

    xor l
    ld b, h
    ld b, c
    ld b, h
    and d
    and c
    inc sp
    pop bc
    dec d
    inc b
    ld [hl], d
    ld b, [hl]
    ld [hl], c
    add hl, hl
    sbc h
    rst $00
    ld d, d
    ld b, d
    add hl, hl
    db $e4
    dec h
    call nz, $9842
    pop de
    adc $99
    ld [hl-], a
    add d
    ld h, b
    and d
    sbc h
    dec l
    ld b, l
    pop bc
    ld [hl], h
    dec [hl]
    inc d
    and c
    ld d, c
    or e
    ld l, l
    xor d
    xor h
    ld a, [hl-]

jr_00a_628d:
    ld e, l
    inc bc
    di
    daa
    dec b
    dec bc
    reti


    ld sp, $0d31
    inc b
    dec d
    inc c
    sbc h
    ld e, [hl]
    call nz, Call_000_0cc9
    ld [hl], $e7
    ld l, h
    ld d, a
    inc de
    ld c, d
    inc e
    inc de
    ld c, c
    ret c

    and [hl]
    dec l
    sub c
    sub e
    dec e
    inc [hl]
    inc [hl]
    dec hl
    ld c, e
    sub b
    ret z

    ld d, c
    ret nc

    sub a
    push af
    ld b, [hl]
    ld d, c
    db $d3
    xor e
    inc l
    ld a, h
    ld [hl], b
    ld b, h
    or c
    or h
    add l
    ld c, h
    sub h
    push de
    ld l, l
    ld a, [de]
    pop de
    cp a
    adc h
    inc hl
    dec b
    dec bc
    pop hl
    and [hl]
    sub b
    adc e
    xor b
    ld e, a
    push de
    inc hl
    adc c
    sub b
    sub d
    ld [$88f8], a
    rla
    ld [hl+], a
    ld h, h
    ld [hl+], a
    jr jr_00a_628d

    ld c, h
    sbc b
    sbc c
    daa
    ld [hl-], a
    ld d, b
    ld e, a
    jp nz, Jump_000_330b

    bit 0, a
    add sp, -$57
    ld [hl-], a
    ld [hl], d
    push de
    dec [hl]
    add l
    xor d
    ld h, b
    sub d
    sbc $35
    adc e
    add e
    ret


    and e
    ld h, h
    or l
    add c
    ld c, d
    cp a
    ld c, e
    ld e, c
    add hl, bc
    rra
    ld [hl+], a
    ld c, h
    sub h
    add a
    and c
    add d
    cp $a4
    sub $fe
    ld [hl+], a
    ld hl, sp-$3a
    ld c, a
    add l
    sbc c
    and h
    daa
    ld d, h
    ld l, e
    ld a, [bc]
    inc e
    ld d, h
    ld h, c
    ld c, $93
    and l
    ld l, c
    ld [hl], h
    ld b, h
    db $10
    ld c, a
    and h
    ld a, [hl]
    or b
    ld a, $53
    pop de
    ld d, d
    rra
    and e
    ld a, a
    rst $38
    jr jr_00a_6379

    cp d
    rla
    ld [$fa0f], a
    ld h, e
    ld c, e
    push de
    ld l, b
    ld d, h
    rrca
    rst $38
    pop af
    ld c, b
    or c
    add l
    and l
    ld d, a
    jp hl


    sub h
    ld h, l
    db $eb
    dec c
    or a
    push hl
    ld sp, $c5a7
    ld hl, sp+$66
    ld a, [de]
    sbc b
    cp $1a
    ld b, e
    daa
    dec de
    ld c, b

jr_00a_635a:
    ld hl, $417b
    and [hl]
    ld [hl], h
    xor l
    inc de
    sbc c
    ld e, c

jr_00a_6363:
    or h
    ld d, h
    ld a, h
    adc b
    ld h, [hl]
    or l
    ld e, a

Call_00a_636a:
    db $fd
    ld d, h
    rst $20
    ld c, l
    ld e, b
    and l
    ld d, $39
    ld e, a
    adc h
    sbc e
    sub b
    sbc b
    sub l
    add hl, sp

jr_00a_6379:
    ld d, $0a
    add hl, hl
    ld h, d
    rla
    jr nc, jr_00a_6363

    sbc d
    dec b
    ld h, $b3
    add d
    ld b, l
    ld l, a
    ld sp, hl
    ld c, [hl]
    ld a, [bc]
    add hl, bc
    ld l, $bc
    cp d
    ld l, b
    ld d, b
    and [hl]
    ld e, e
    ldh [$4c], a
    inc [hl]
    ld [de], a
    and b
    xor c
    ld l, $16
    adc d
    ld c, b
    sub l
    jr jr_00a_635a

    ld [hl+], a
    add c
    ld d, b
    ld b, d
    ld c, d
    ld h, d
    push de
    add hl, hl
    inc d
    xor d
    jp nc, Jump_00a_6429

jr_00a_63ac:
    jr z, jr_00a_640d

    ld [$8cae], sp
    xor b
    jp nz, $41f0

    or l
    db $fd
    dec d
    inc a
    ld a, [bc]
    ld d, d
    inc d
    dec hl
    inc e
    ld h, e
    adc c
    ld [hl-], a
    ld l, e
    ld [hl], d
    jr @+$20

    add hl, de
    ld [$53c5], sp
    add [hl]
    ld e, d
    push bc

jr_00a_63cc:
    ld b, $83
    add c
    inc sp
    add c
    ld d, c
    ld c, b
    ld c, h
    ld e, a
    ld sp, hl
    ret c

    adc d
    ld hl, $6a4c
    add e
    jr jr_00a_63ac

    cp $90
    ld d, d
    ld hl, $5c90
    rst $00
    ld e, [hl]
    xor b
    adc $89
    ld e, e
    sub h
    ldh [rOBP1], a
    ld e, [hl]
    ld h, $4c
    push de
    sbc d
    ld [hl], l
    adc h
    ld d, [hl]
    ld [$21aa], sp
    add c
    ld sp, $6241
    sub d
    ld d, d
    ld d, b
    ld c, c
    ld c, h
    db $e3

jr_00a_6402:
    ld a, [de]
    adc h
    and l
    add c
    inc d
    adc d
    sub b
    adc b
    ld [hl], e
    ld l, e
    db $e3

jr_00a_640d:
    ld a, b
    add a
    ld b, $06
    ld b, $55
    add d
    and e
    xor c
    cp c
    sub $22
    sub d
    inc d
    inc d
    db $e4
    ld e, d
    xor b
    ld a, [hl+]
    ld d, $85
    adc d
    add c
    ld c, [hl]
    jr c, jr_00a_63cc

    ld c, d
    ld a, [hl]

Jump_00a_6429:
    adc h
    ld l, l
    jr c, @-$19

    rrca
    ld d, a
    ld d, [hl]
    adc [hl]
    dec c
    cp d
    xor d
    ld a, d
    ld [hl], $78
    call c, Call_000_0a84
    ld a, [de]
    ld [hl], e
    and [hl]
    xor c
    ld [hl-], a
    db $10
    ld d, [hl]
    ld [hl], h
    ld c, c
    sub [hl]
    inc d
    xor d
    and b
    pop bc
    ld d, $aa
    and a
    inc e
    dec de
    and c
    ld [de], a
    add h
    cp c
    dec c
    db $10
    adc l
    ld [hl+], a
    xor h

jr_00a_6456:
    ld h, l
    ld [hl], b
    jr nz, jr_00a_6402

    pop hl
    ld c, b
    ld b, [hl]
    inc c
    ld e, h
    sub a
    rla
    ld a, $35
    inc bc
    inc de
    ld de, $0a0b
    ld b, d
    and e
    ld [hl-], a
    sbc b
    ld e, d
    adc d
    or b
    ld e, d
    ld b, l
    add [hl]
    call nz, Call_00a_402b
    jp $de1a


    dec l
    xor a
    cp b
    xor b
    ld h, l
    ld b, h
    ld sp, $90cc
    and c
    ld e, b
    and $89
    dec c
    adc d
    ld h, [hl]
    xor e
    sub b
    ret nz

    ret z

    push bc
    and h
    ld [hl], l
    and l
    ld b, [hl]
    ld [hl], l
    ld h, h
    jr nz, jr_00a_6456

    ld [de], a
    xor d
    ld c, d
    dec bc
    xor b
    add sp, -$5a
    ld c, e
    and e
    or b
    pop de
    ld [$0461], sp
    ld [$21b8], sp
    adc h
    ld sp, $438f
    ld a, [hl+]
    ld b, e
    and d
    add l
    add h
    ld d, h
    inc de
    push de
    inc e
    ld l, l
    ld h, $90
    scf
    ld [hl], l
    inc bc
    pop bc
    ld a, [hl+]
    ld l, h
    or b
    jp nc, Jump_00a_5b5b

    jr nc, jr_00a_6502

    db $d3
    ld b, h
    and [hl]
    sbc h
    ld h, b
    adc h
    ld h, c
    jr nc, @+$26

    ld b, e
    ld c, c
    cp d
    ld h, l
    ld b, h
    ld b, h
    or l
    db $e4
    ld d, l
    sbc h
    inc e
    ld [hl], b
    ld b, d
    sub c
    ld d, $91
    inc b
    db $76
    or b
    ld b, h
    inc h
    ld d, c
    ld c, c
    call nc, Call_00a_55aa
    inc b
    ld a, b
    ld [hl], c
    add hl, hl
    inc sp
    ld b, a
    add a
    ld a, [hl+]
    cp c
    jp z, $b644

    ld e, [hl]
    ld c, [hl]
    and a
    ld c, $19
    ld a, a
    xor c
    ld c, l
    ld d, $08
    adc d
    dec b
    ld d, h
    ld l, b
    inc hl
    rla
    and h

jr_00a_6502:
    db $10
    ld h, c
    and b
    ld c, c
    sub e
    ld h, [hl]
    ld c, $2a
    add d
    ld b, d
    sub b
    adc h
    ld l, [hl]
    inc d
    pop bc
    ld h, c
    ld c, b
    and e
    dec sp
    ld d, b
    ld c, d
    ld [c], a
    ld e, l
    call z, $d09f
    cp l
    rst $18
    dec b
    xor a
    db $e3
    ld a, [hl+]
    ret nc

    ret nc

    cp e
    add [hl]
    ret z

    adc l
    jr z, jr_00a_6584

    sub e
    and c
    sub l
    add c
    ld [hl], h
    ld [hl], e
    sub d
    ld d, d
    ld h, b
    cp h
    add [hl]
    ld d, l
    ld h, e
    ld e, d
    sbc c
    inc hl
    ld h, e
    and [hl]
    pop af
    ld c, [hl]
    jp c, Jump_000_3b8f

    ld [hl], b
    add hl, hl
    ret c

    add [hl]
    ld d, $92
    adc [hl]
    add hl, bc
    or d
    ret c

    ld d, l
    jr z, jr_00a_65b7

    dec c
    sbc d
    ld e, h
    inc l
    inc [hl]
    ld [de], a
    ld b, d
    sbc d
    ld [hl-], a
    ld c, h
    ld c, l
    inc c
    db $10
    ld c, h
    ld h, l
    dec a
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, h
    ld l, [hl]
    rst $00
    ld [bc], a
    ld h, [hl]
    add [hl]
    sbc b
    xor b
    call nz, Call_00a_71a6
    ld [de], a
    ld d, d
    adc h
    ld [hl], b
    ld c, d
    jp $ac24


    ld de, $9a11
    ld b, d
    sub c
    ld l, $96
    sbc d
    push de
    call z, $b83e
    call nc, $d471
    xor h

jr_00a_6584:
    db $76
    ld c, d
    sbc a
    inc e
    ld h, [hl]
    or h
    ld a, [hl]
    inc a
    jp z, $2d1a

    ld d, e
    adc c
    ld d, e
    rla
    ret nc

    or l
    add d
    rla
    cp d
    sub d
    ld d, l
    ld d, h
    ld d, $a8
    ld [hl+], a
    add sp, $69
    ld [$3098], sp
    add d
    add [hl]
    ld a, [hl]
    xor d
    ld h, b
    or b
    and b
    jp nc, Jump_00a_71ae

    sbc h
    sbc c
    and [hl]
    ld e, b
    inc hl
    ld [$4260], sp
    adc h
    and [hl]

jr_00a_65b7:
    jp nc, Jump_00a_6672

    sub [hl]
    adc h
    ld h, c
    and a
    or [hl]
    ld [hl-], a
    sbc e
    add hl, hl
    adc b
    and l
    inc [hl]
    sbc [hl]
    ld l, b
    sbc $c1
    ld d, l
    ld d, h
    and l
    dec l
    ld c, b
    ld d, e
    add c
    ld a, [$e82a]
    and l

jr_00a_65d4:
    rla
    ret nc

    add c
    ld c, [hl]
    ld a, [bc]
    ld sp, $085d
    xor e
    rst $38
    rst $30
    adc h
    sbc $42
    add l
    rst $38
    ld c, h
    ld [hl+], a
    ld [de], a
    add hl, sp
    or e
    ld d, l
    ld b, c
    and c
    and c
    ld b, d
    add d
    ld a, [hl+]
    ld h, b
    sub b
    ld a, e
    ld c, [hl]
    xor b
    xor b
    pop bc

jr_00a_65f7:
    add c
    call c, $d214
    and b
    sub h
    ld l, l
    ld d, a
    sbc a
    ld c, h
    ld a, [hl+]
    ld [hl+], a
    rlca
    db $d3
    dec hl
    ld h, b
    ld d, d
    ld a, [hl+]
    adc c
    rst $00
    rla
    add d
    jr nc, jr_00a_65d4

    scf
    ld d, e
    dec de
    db $fc
    ccf
    sub [hl]
    ld a, [hl+]
    add sp, $53
    ld a, [hl]
    xor d
    xor c
    ld a, [hl]
    add d
    dec l
    rst $38
    ld h, l
    adc l
    sbc c
    adc h
    jr z, jr_00a_65f7

    add c
    ld a, [de]
    scf
    ld h, b
    rst $00
    ld l, $2a
    adc h
    ld h, d
    sbc b
    add hl, hl
    add hl, hl
    reti


    dec bc
    xor h
    sbc b
    jp nz, $b548

    ld e, [hl]
    sub d
    ld e, l
    ld b, l
    ld b, l
    ld h, c
    ld e, b
    ld d, c
    ld a, l
    add sp, $35
    ld a, [de]
    or [hl]
    adc c
    ld e, b
    xor e
    ld [c], a
    ld d, $81
    ld hl, $ee42
    ld a, [bc]
    rst $38
    jp hl


    ld d, c
    jp nz, $ca58

    add d
    inc b
    and [hl]
    add d
    adc l
    ld d, b
    or b
    adc l
    xor l
    ld d, e
    ld a, [bc]
    ld hl, sp-$26

jr_00a_6662:
    push bc
    ld h, $6a
    and a
    sbc l
    add $69
    sbc $96
    ld sp, hl
    adc d
    sub h
    sub b
    and h
    add hl, hl
    sbc l

Jump_00a_6672:
    sub b
    sub e
    ld a, c
    ld a, [hl+]
    rla
    and b
    rst $38
    ld a, [$1bfd]
    cp $91
    ld a, c
    rla
    xor [hl]
    call nz, $875f
    adc d
    sbc h
    rla
    xor a
    push hl
    push de
    dec d
    ld a, a
    ld a, a
    ld b, a
    dec c
    db $fd
    inc e
    ld e, e
    ld [$aa72], a
    xor c
    adc l
    sub l
    rst $38
    db $fc
    ld [hl], c
    ld [hl], l
    cp $0e
    sbc b
    ld c, d
    dec e
    rst $18
    inc e
    add hl, hl
    dec bc
    cp $84
    add hl, bc
    adc l
    inc sp
    ld b, [hl]
    jp z, Jump_000_3029

    rst $10
    rst $38
    db $e4
    and h
    xor d
    ld l, a
    ldh [$93], a
    rla
    ld a, a
    rst $38
    ld [bc], a
    add d
    inc sp
    inc e
    jr jr_00a_66e3

    and l
    cp a
    rst $38
    add l
    ld [de], a
    xor [hl]
    ld l, a
    ld [bc], a
    ld de, $a148
    ld b, b
    add l
    ret nc

    add hl, hl
    rla
    ldh a, [$27]
    ld d, e
    dec b
    pop bc
    ld c, a
    add hl, sp
    ld a, $17
    inc e
    ld [hl-], a
    ld e, e
    jr nz, jr_00a_6662

    inc b
    ld h, b
    cp $ae
    and a
    ld a, [bc]

jr_00a_66e3:
    db $eb
    ld h, c
    inc b
    ld c, e
    inc h
    jp $e75f


    rrca
    rst $30
    and $0c
    call z, $dfc5
    and [hl]
    xor e
    pop af
    rra
    sbc b
    or b
    ld b, b
    sub [hl]
    ld a, [c]
    xor c
    add d
    scf
    ld [de], a
    ld sp, hl
    sub d
    sub h
    adc d
    pop hl
    push af
    ret z

    inc hl
    ld c, c
    add e
    pop af
    ld c, b
    jr z, jr_00a_6751

    cpl
    db $f4
    ld e, $29
    add hl, hl
    xor a
    add $13
    dec d
    ld de, $7911
    ld d, c
    and d
    ld sp, $6f9c
    inc e
    sub h
    ld [hl], a
    ld sp, $4420
    cp c
    sbc [hl]
    ld e, a
    ld a, [hl-]
    jr jr_00a_673c

    inc hl
    add l
    db $e4
    adc a
    adc $56
    rlca
    add hl, bc
    ld e, h
    sub l
    adc l
    cp [hl]
    ld c, c
    ld l, d
    sub c

jr_00a_6739:
    ld c, [hl]
    ld b, $e1

jr_00a_673c:
    ld h, d
    pop hl
    sub e
    ld d, l
    call c, Call_00a_6823
    rst $10
    jr c, jr_00a_6739

    ld c, d
    db $ec
    inc d
    pop bc
    dec h
    dec [hl]
    sbc h
    sbc c
    dec d
    add a
    ld h, e

jr_00a_6751:
    ld l, a
    ld c, e
    and d
    db $d3
    add d
    ld b, d
    ld b, $90
    ld d, e
    sbc [hl]
    ld [c], a
    ld l, [hl]
    inc b
    ld d, e
    xor [hl]
    ld d, [hl]
    call nc, $88eb
    and e
    push bc
    call c, $ace8
    ld [hl], l
    db $d3
    ld sp, $97c2
    xor b
    ld h, d
    rst $00
    inc c
    and l
    ld c, [hl]
    inc e
    ld [hl], b
    ld h, h
    ld h, d
    push de
    ld d, [hl]
    sbc h
    ld a, [hl]

jr_00a_677c:
    ld a, [c]
    ld h, c
    ld h, [hl]
    adc $91
    ld d, h
    ld h, l
    ld h, $99
    jr @-$2d

    pop de
    ld [hl], c
    ld a, [bc]
    ld l, b
    rst $00
    dec b
    call z, $e062
    sbc e
    ld h, c
    ld b, $62

jr_00a_6794:
    ldh [$82], a
    ld [hl], b
    xor h

Jump_00a_6798:
    inc de
    ld [hl], a
    add h
    ld [hl], d

jr_00a_679c:
    ld b, l
    pop bc
    ld b, $c7
    ld l, a
    inc b
    sbc [hl]
    inc c
    ld a, b
    and b
    ld h, [hl]
    cp b
    ld d, d
    db $ed
    inc a
    ld l, a
    jp nc, $8d7f

    ld e, l
    jr nc, jr_00a_6794

    and b
    ld e, l
    rrca
    sub d
    ld h, h
    ld [de], a
    jp nc, $04bf

    cp b
    sbc a
    jp nz, $a2e1

    db $fd
    ld b, a
    rrca
    adc b
    ld a, [hl]
    ld c, $33
    xor $06
    push af
    dec b
    ld e, e
    add $16
    jp nc, Jump_00a_7c2a

    push bc
    db $dd
    daa

jr_00a_67d4:
    ld e, h
    inc hl
    ld a, [hl-]
    ld sp, hl
    ld c, c
    sbc l
    adc e
    rst $38
    sub d
    ld sp, $e07c
    ld [hl], b
    sub c
    ld [hl], l
    ld sp, $21ba
    ld e, $25
    sub d
    sbc c
    dec l
    dec de
    db $d3
    ld [hl], h
    sub l
    ld c, c
    ld b, [hl]
    add l
    inc b
    and h
    sbc b
    db $e3
    ld h, l
    add hl, bc
    sub h
    jr nz, jr_00a_677c

    add c
    ld [hl+], a
    ld sp, $484b
    ld l, h
    or h
    ld e, h
    jr @+$24

    jr z, jr_00a_6794

    ld a, [de]
    ld c, b
    adc e
    and b
    xor b
    ld [hl+], a
    jr nz, @+$49

    pop bc
    inc c
    adc $22
    dec h
    jr nc, jr_00a_679c

    xor b
    adc c
    add c
    pop bc
    dec b
    ld c, b

jr_00a_681c:
    ld d, h
    jp $f387


    add hl, de
    ld d, d
    dec h

Call_00a_6823:
    ld h, b
    ld h, b
    add d
    ld [$9d2c], sp
    jr jr_00a_67d4

    adc $54
    ld de, $9498
    ld l, b
    ld h, h
    ld e, l
    ld c, e
    ld [hl], h
    add h
    jp z, $9430

    ld h, [hl]
    rlca
    ld b, [hl]
    db $e3
    dec bc
    ld [c], a
    inc d
    push hl
    add l
    db $e3
    add d
    or b
    add d
    add hl, sp
    ret nc

    ld c, b
    ld b, c
    ld [hl], $6c
    ld d, [hl]
    ld c, h
    sub d
    ld d, [hl]
    rrca
    rst $18
    db $fd
    jr nc, jr_00a_681c

    or $9d
    ld a, [bc]
    sub l
    ld d, c
    add [hl]
    dec hl
    ldh [$83], a
    ld a, [c]
    ld e, l
    ret nc

    rst $38
    jp nz, $c6e4

    or $25
    ld a, [c]
    ld a, a
    adc c
    add e
    pop af
    cp b
    ld [hl], $92

Jump_00a_686f:
    dec e
    inc [hl]
    cp a
    ld h, $30
    cp $25
    jp c, $fc89

    db $d3
    db $e3
    ld a, b
    cp e
    adc h
    ld l, $3a
    ld h, [hl]
    rst $08
    db $e4
    cp a
    and [hl]
    ld l, a
    jp hl


    adc d
    sub b
    and h
    dec hl
    cp $87
    rst $38
    ld h, [hl]
    ccf
    rst $38
    sub a
    cp $ff
    cp a
    db $fd
    ei
    rst $38
    call nz, $a12a
    rst $38
    ld a, [$f595]
    rst $38
    push af
    ld de, $4043
    and e
    rst $38
    db $fd
    rst $38
    ld a, l
    sbc c
    ld d, l
    dec bc
    ld [hl+], a
    add d
    ld b, l
    ld d, [hl]
    rra
    db $fc

Jump_00a_68b2:
    ld d, a
    or d
    ld d, d
    cp a
    and h
    db $fc
    ld a, [bc]
    rst $18
    call z, $a6ad
    jr nc, jr_00a_6904

    ld a, a
    rst $38
    db $10
    add e
    rst $38
    rst $38
    rst $38
    rst $18
    cp a
    sub d
    ld a, [$f15f]
    ld l, a
    rst $38
    db $fd
    rst $38
    sub e
    db $f4
    sub e
    ld a, h
    ld de, $ffaa
    rst $10
    adc e
    pop hl
    sub l
    sub c
    sbc h
    rst $38
    add d
    and c
    db $ed
    adc $90
    add sp, $72
    ld e, d
    sub h
    sub e
    rlca
    db $e3
    ldh a, [$2f]
    rst $08
    ld [hl-], a
    cp $46
    add hl, bc
    inc [hl]
    ld c, a
    ld [c], a
    cp e
    pop hl
    ld hl, sp-$41
    add a
    rst $28
    rst $38
    add a
    pop hl
    db $e4
    ld h, $77
    ld h, c
    or l
    cpl
    pop hl

jr_00a_6904:
    or a
    ld de, $7e78
    ld c, e
    ld sp, hl
    or h
    jp c, Jump_000_17fe

    pop bc
    rla
    sbc b
    ld a, a
    ld sp, hl
    or e

jr_00a_6914:
    scf
    add sp, $3f
    cp c
    ld e, b
    ld a, b
    ld l, c
    rra
    pop af
    ld c, [hl]
    sub c
    inc bc
    ccf
    rst $38
    rst $38
    ld [$c1ad], a
    pop af
    inc [hl]
    ld e, a
    cp $43
    rst $18
    rst $38
    di
    scf
    ld a, [hl]
    and b
    sbc h
    dec [hl]
    ld a, d
    rra
    or l
    call z, $cccc
    db $f4
    ld c, $a4
    ld a, [hl+]
    ld h, a
    rst $38
    or h
    db $10
    pop bc
    inc sp
    ld b, $e8
    ld hl, $ef7f
    cp $63
    rst $38
    or $0e
    sub e

Jump_00a_694e:
    inc de
    dec b
    sub l
    rst $38
    rst $38
    jr nc, jr_00a_6914

    cp a
    db $db
    rlca
    cp $70
    ccf
    and e
    ld l, h
    ld c, a
    rst $38
    push hl
    rst $18
    ld de, $65fa
    ld a, a
    and $77
    pop af
    cpl
    and l
    ld e, a
    db $e4
    ld sp, hl
    ld d, l
    dec d
    and $f4
    ld h, e
    ld b, a
    ld d, b
    ld b, h
    cp b
    ld [de], a
    rst $18
    db $d3
    ld b, h
    ld [de], a
    ld [c], a
    ld d, h
    adc b
    inc hl
    dec sp
    ld a, [c]
    dec d
    rlca
    ld [$4d16], a
    ld h, d
    dec hl
    ld c, $31
    ld [hl], e
    add [hl]
    pop bc
    dec l
    ld [hl+], a
    call z, Call_000_13f2
    ld h, $f1
    ld [hl], e
    ld a, b
    ld l, b
    and h
    ld [hl], d

jr_00a_6999:
    ld [hl+], a
    db $f4
    pop bc
    add e
    ld l, $86
    ld [hl-], a
    adc e
    xor e
    add c
    db $e4
    sbc b
    ld [c], a
    cp e
    ld l, a
    ld h, b
    ld e, b
    ldh [$dc], a
    ld l, b
    db $10
    xor d
    add hl, sp
    inc hl
    ld [$cce2], sp
    or d
    dec d
    dec sp
    sub [hl]
    ld b, $a5
    ld a, [hl-]
    ld a, [hl+]
    ld l, $8f
    rla
    ld l, a
    ld b, l
    or b
    ld c, c
    sbc e
    ld c, c
    ld d, h
    ld e, a
    rst $08
    sbc e
    ld c, c
    jr z, jr_00a_6999

    ld b, $10
    ld h, $52
    jp z, Jump_00a_4b18

    sbc l
    xor l
    inc b
    ld [hl], c
    call nc, Call_00a_540a
    jp nz, $159c

    ld [bc], a
    adc a
    dec d
    ld sp, hl
    sbc l
    ld c, c
    ld l, [hl]
    push hl
    call nz, $6a39
    push bc
    inc a
    ld d, [hl]
    sub l
    ld h, [hl]
    adc d
    inc [hl]
    add h
    adc a
    jr jr_00a_6a19

    ld d, b
    pop de
    db $10
    ld l, c
    adc e

Call_00a_69f8:
    and $52
    or c
    add a
    inc sp
    cp a
    sub a
    ld b, [hl]
    inc [hl]
    ld b, e
    ld c, b
    jr nc, jr_00a_6a61

    ld e, l
    jr @-$2d

    inc d
    adc h
    ld e, $31
    call Call_00a_6104
    ld e, $28
    ld d, l
    cp c
    ld e, a

jr_00a_6a14:
    db $d3
    jp $aea0


    ld d, h

jr_00a_6a19:
    db $e4
    ld e, a
    push af
    ld b, [hl]
    rst $18
    rst $38
    cp l
    ld hl, $c1f4
    jp hl


    ld d, a
    xor a
    ld e, d
    cp a
    cp l
    and e
    ld b, a
    sbc a
    xor c
    ld a, [bc]
    ld e, [hl]
    cp $af
    ld l, b
    dec h
    ld a, [bc]
    jr nc, @-$5c

    db $ed
    ld l, b
    jp z, Jump_00a_4ad3

    dec b
    ld d, c
    ld e, [hl]
    ld d, l
    ld [hl-], a
    sub $a5
    ld d, d
    ld d, h
    ld l, b
    add hl, hl
    add d
    xor a
    ld e, a
    ld c, d
    ld b, d
    and l
    sub d
    sub h
    jr jr_00a_6ac8

    ld l, a
    ld d, b
    ld [hl], e
    ld b, h
    ld h, e
    dec bc
    ld d, [hl]
    adc h
    sub h
    ret


    adc [hl]
    add l
    ld h, a
    ld c, [hl]
    or a
    ld b, l
    ret nc

jr_00a_6a61:
    ldh [$a8], a
    push hl
    ld e, a
    cp d
    ld a, [hl+]
    adc h

Call_00a_6a68:
    ld [$a834], a
    ld h, b
    ld e, l
    cp a
    db $e3
    jr jr_00a_6ade

    ld sp, $5ea1
    ld [hl+], a
    db $d3
    dec h
    add [hl]
    ld b, c
    ld e, l
    jr nc, jr_00a_6a14

    and l
    ld [hl], d
    dec d
    and d
    dec d
    add hl, bc

Jump_00a_6a82:
    ld d, l
    ld h, $9b
    ld d, l
    or $56
    sub l
    ld d, [hl]
    adc b
    and [hl]
    ld sp, $aa99
    ld a, [de]
    dec b
    ld h, e
    add d
    db $f4
    cp d
    rst $38
    ld a, [$388e]

jr_00a_6a99:
    ld d, e
    add $45
    sbc l
    ld de, $a7e3
    ld h, d
    xor c
    add d
    ld b, l
    ld a, d
    sub d
    and [hl]
    sbc a
    ld d, a
    ld a, [$8294]
    ld b, l
    sub e
    sbc b
    ld h, $55
    rst $38
    rst $28
    cp $91
    add e
    sbc h
    xor l
    ld b, h
    or a
    cp $84
    and $69
    add e
    ld h, $33
    ld a, a
    rst $38
    jp hl


    ld d, c
    rla
    add e
    push af

jr_00a_6ac8:
    db $e3
    adc h
    sub c
    rst $38
    call nz, $c045
    ei
    ld c, [hl]
    jr nc, jr_00a_6a99

    ld e, a
    ld sp, $5eac
    ld e, d
    add hl, sp
    ld e, [hl]
    ld [hl], e
    db $e4
    inc hl
    dec [hl]

jr_00a_6ade:
    adc e
    ld a, c
    jp z, Jump_000_3af8

    add hl, sp
    ld l, a
    rst $20
    inc de
    ld c, e
    db $ed
    ld c, $4b
    ccf
    rst $20
    ld d, $4d
    and $0b
    rst $38
    ld a, [$8b66]
    jr @+$60

    xor a
    rst $38
    db $fd
    ld a, [$e665]
    ld a, a
    rst $38
    rst $38
    pop de
    dec d
    or d
    ld h, c
    jp hl


    dec hl
    rst $38
    call nc, Call_000_026d
    ld h, e
    ld e, a
    rst $38
    ld e, b
    rst $00
    rrca
    xor c
    ld [c], a
    sbc $78
    rst $10
    ld b, b
    ld b, h
    ld a, $39
    ld d, d
    sbc a
    rst $10
    jr c, jr_00a_6b3c

    ld sp, hl
    ld [hl], l
    call c, $8163
    ld e, [hl]
    rst $38
    ld a, [$7773]
    sbc l
    ld a, d
    sbc $08
    ldh [$a0], a
    ld b, [hl]
    ld a, a
    ldh a, [$4e]
    dec hl
    ld e, a
    rst $38
    ld [$8e53], a
    push af
    ld d, h
    adc a
    ld d, e

jr_00a_6b3c:
    add l
    rst $28
    db $f4
    inc h
    ld l, a
    ld hl, $6035
    ld d, l
    ld [$b81a], sp
    dec e
    ld [hl], $b4
    adc b
    cpl
    inc hl
    ld b, d
    adc [hl]
    add hl, bc
    ld e, b
    adc d
    xor b
    ld a, [$f299]
    ld [$718a], a
    ld hl, $c310
    ld e, a
    sbc h
    ld c, e
    call nc, Call_00a_452a
    dec de
    and [hl]
    ld l, d
    push de
    dec de
    db $f4
    ld h, c
    dec bc
    cp $75
    cp a
    ld sp, hl
    jp nz, $c098

    rst $38
    sbc e
    ld sp, $9434
    rst $38
    sbc e
    ld c, c
    add [hl]
    xor a
    db $fd
    inc e
    rla
    db $e4
    push de

Jump_00a_6b81:
    ld b, a
    pop hl
    jr nz, jr_00a_6beb

    cp d
    ld d, l
    inc a
    ld [hl], l
    cp $ea
    db $d3
    ld h, a
    db $d3
    add l
    ld a, [$b422]
    ld de, $4855

jr_00a_6b95:
    ld e, a
    add e
    ld [$e0d9], sp
    ld b, c
    and $82
    add $aa
    cp [hl]
    ld [c], a
    ld [hl], e
    ld [hl], l
    rra
    ld b, $05
    ld c, b
    add $92
    ld l, e
    ld b, c
    ld h, b
    adc h
    ld d, l
    rst $18
    ld b, d
    ld a, [de]
    ld e, $81
    ld a, a
    ld [$06bb], sp
    adc e
    rst $38
    ld a, [c]
    ld a, b
    push bc
    ld b, d
    adc c
    ld c, h
    ld d, h
    jp nc, $a69e

    ld hl, $8842
    ld b, l
    ld h, e
    dec [hl]
    jr c, jr_00a_6bf3

    inc e
    inc l
    ld [hl+], a
    ld d, l
    adc $85
    ld c, b
    ld d, c
    or b

jr_00a_6bd4:
    sub [hl]
    ld e, a
    xor b
    ldh [$a2], a
    ld d, a
    xor a
    ld d, b
    ld d, e
    rra
    ld b, c
    add c
    jr nc, @+$01

    ld sp, hl

jr_00a_6be3:
    ld h, $92
    db $10
    xor b
    inc d
    add $b5
    adc l

jr_00a_6beb:
    jp hl


    ld c, l
    ld d, h
    cpl
    ld d, e
    add a
    sub h
    or l

jr_00a_6bf3:
    ld b, c
    ld c, l
    db $eb
    db $fd
    ld c, l
    inc h
    jr z, jr_00a_6b95

    ld [hl+], a
    call nc, Call_00a_5be1
    ld c, l
    dec h
    and l
    adc e
    xor l
    dec h
    sub h
    add l
    ld [c], a
    jr z, jr_00a_6be3

    add hl, hl
    jr nc, @-$49

    ld a, [de]
    cp a
    and d
    add sp, -$22
    ld e, b
    pop bc
    ld a, [$4d05]
    xor b
    jp nc, $9e8c

    ld hl, $2494
    sub $33
    and e
    rla
    adc e
    add [hl]
    ld e, c
    add hl, sp
    ld e, $31
    and e
    jr jr_00a_6bd4

    sub e
    add c
    db $e3
    sub d
    inc b
    cp d
    push af
    ld c, d
    ld d, a
    db $e3
    ld e, d
    inc b
    ld h, c
    ld c, l
    ld l, d
    rst $38
    ld [$6d38], a
    ld e, [hl]
    sub [hl]
    inc a
    ld c, c
    jp nc, Jump_00a_7882

    add sp, $44
    ld b, h
    add hl, hl
    ld [c], a
    ld b, l
    jp $0fe7


    inc e
    add hl, bc
    add hl, hl
    add e
    ld l, d
    ld h, c
    ld a, [hl+]
    xor $76
    inc a
    xor d
    ld h, e
    ld a, a
    sbc l
    or a
    ld a, [$29e6]
    or l
    ld a, d
    ld sp, hl
    adc d
    rla
    ld a, a
    add $36
    ld [hl], b
    call nc, Call_000_1163
    ld l, c
    or a
    sbc h
    pop af
    adc [hl]
    sbc d
    cp [hl]
    sbc b
    and b
    sub c
    add hl, de
    rlc a
    sbc c
    xor a
    db $fc
    ld c, d
    rla
    ret z

    ld hl, $2219
    db $fc
    ld h, e
    inc de
    ld d, c
    ld sp, $f04f

Jump_00a_6c89:
    jp z, $fe2b

    and [hl]
    ld a, [hl+]
    ld h, b
    and [hl]
    ld [hl], a
    jp hl


    dec d
    rst $38
    db $fc
    ld h, l
    ld e, a
    rst $38
    ld a, [c]
    ld sp, $e685
    ld de, $9a15
    rst $10
    rst $38
    and l
    dec h
    ld a, c
    cp h
    ld l, c
    ld l, l
    rst $30
    sbc d
    ld a, [$0909]
    add d
    ld l, c
    ei
    ld h, c
    add hl, de
    and l
    pop bc
    add hl, de
    ld h, $7f
    rst $00
    dec bc
    ld a, d
    ld l, c
    jp hl


    adc a
    pop af
    jp Jump_00a_7ac3


    ld h, e
    rst $38
    sub h
    rst $38
    inc e
    ld c, $61
    ld a, [hl]
    xor e
    rst $38
    cp $bf
    add $76
    ld c, a
    ld sp, hl
    adc l
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [de]
    cp [hl]
    cp a
    ld a, [$7767]
    rst $38
    sub $11
    cp e
    sbc $1f
    and $f1
    ld de, $50cf
    ld b, a
    adc [hl]
    ld b, h
    cp l
    ld d, l
    ld d, a
    di
    sub l
    ld a, [hl]
    xor d
    add hl, sp
    sbc [hl]
    adc [hl]
    adc e
    ei
    ld a, [hl-]
    db $ed
    ld [$55ee], sp
    dec sp
    db $e4
    xor $68
    rst $28
    ld e, [hl]
    ld b, c
    db $f4
    add sp, -$50
    ld b, c
    db $d3
    xor l
    sub d
    dec [hl]
    ld a, [hl-]
    ld h, a
    add a
    cp a
    ld a, [hl-]
    ld h, l
    adc a
    adc c
    sbc [hl]
    xor d
    ld b, e
    cp c
    jp z, $6184

    ld h, a
    sbc l
    ld [de], a
    sbc l
    xor b
    ld h, a
    ld a, a
    ld b, a
    cp l
    ld e, $0c
    ld d, e

jr_00a_6d24:
    ld c, c
    add hl, hl
    call $2904
    ld c, $72
    ret nz

    ld sp, hl
    rrca
    rst $20
    ld d, [hl]
    adc h
    ld a, l
    jr c, @+$57

    cp h
    inc b
    inc d
    pop af
    ld de, $f0b8
    ld e, b
    ld e, b
    ld d, e
    ret nz

    jp z, $cec3

    dec h
    ld e, a
    rst $38
    xor b
    xor h
    db $10
    ld c, l
    rst $18
    xor a
    dec d
    dec e
    ld sp, $da5c
    add a
    call nc, Call_000_2028
    cp h
    xor [hl]
    ld c, $4d
    jr z, jr_00a_6d24

    daa
    res 3, c
    adc [hl]
    dec [hl]
    inc b
    ld d, c
    jp z, $b846

    pop de
    ld c, b
    push af
    ld a, [de]
    ld [hl+], a
    ld a, [hl+]
    inc d
    ld d, e
    ld d, [hl]
    ld c, h
    ret c

    cp h
    ld h, l
    scf
    sbc d
    ld d, l
    ld e, d
    ld sp, $74d0
    pop hl
    and l
    ld c, l
    db $ec
    inc h
    and $aa
    sub b
    bit 6, a
    dec sp
    add hl, de
    inc b
    sbc c
    ld [hl], e
    or d
    ld [$173c], sp
    ld l, b
    xor $d8
    jr @+$7f

    dec sp
    sbc e
    inc c
    cpl
    ld c, a
    ld b, $ad
    db $e3
    pop bc
    or b
    sbc [hl]
    cpl
    ld a, b
    ld c, c
    ldh [rNR41], a
    adc e
    add h
    sbc l
    add sp, $21
    call nz, $9e20
    ld c, $42
    ld sp, $aacc
    xor d
    xor [hl]
    jr jr_00a_6e0a

    add $df
    and d
    and [hl]
    ld a, [de]
    add hl, hl
    jp nz, $2be8

    inc b
    pop de
    ld d, e
    rlca
    ld [bc], a
    add hl, bc
    and [hl]
    adc h
    ld l, [hl]
    pop hl
    sub c
    ld sp, $2abb
    add d
    xor c
    ld d, a
    add [hl]
    ld b, h
    ld l, e
    ret nc

    xor e
    dec c
    ld d, $d8
    rst $28
    and [hl]
    or d
    ld [hl], b
    and e
    and c
    inc bc
    ld h, [hl]
    ret nc

    ld h, $ac
    add a
    adc e
    inc e
    jr nc, jr_00a_6e17

    ld a, [bc]
    xor d
    cp b
    ld h, c
    db $dd
    add hl, sp
    rl l
    add e
    ld [hl], c
    scf
    ld h, a
    ld b, d
    dec bc
    add sp, -$16
    ld e, $39
    call $c1c1
    pop hl
    add l
    jr c, jr_00a_6e55

    db $d3
    db $db

jr_00a_6dfe:
    dec bc
    ld hl, $9d20
    add hl, hl
    ld [$5661], sp
    ld de, $12d7

jr_00a_6e09:
    db $e3

jr_00a_6e0a:
    ld c, $78
    jr nc, jr_00a_6dfe

    ld h, l
    add b
    ld b, h
    cp c
    ld d, b
    ld c, [hl]
    call $d306

jr_00a_6e17:
    xor d
    ld d, b
    sbc b
    db $e3
    ld d, l
    ld d, a
    cp h
    jr nc, jr_00a_6e6d

    rst $18
    xor d
    xor c
    inc b
    jr nc, jr_00a_6e09

    ld l, d
    inc sp
    add a
    rlca
    dec [hl]
    and e
    ld l, [hl]
    inc b
    inc sp
    or d
    jr c, jr_00a_6e5a

    jp nc, $7c0c

    jp c, Jump_000_14d4

    ld d, [hl]
    inc hl
    rst $00
    scf
    sbc l
    ld a, [bc]
    ret z

    or b
    ld [hl], h
    db $e4
    xor d
    add [hl]
    rlca
    ld [$45e9], sp
    inc c
    db $eb
    db $eb
    ld a, $2f
    ld [hl], h
    daa
    ld h, [hl]
    ld b, h
    ld [hl], l
    add sp, $27
    ld [hl-], a

jr_00a_6e55:
    ld e, a
    add hl, hl
    ret z

    pop bc
    ld d, l

jr_00a_6e5a:
    ld d, b
    ld sp, $e9c4
    sub h
    ld d, $70
    ld [hl], b
    add $7a
    add hl, bc
    or e
    inc l
    ld h, l
    sub c
    sbc e
    ld c, c
    or [hl]
    add h

jr_00a_6e6d:
    ld [hl], b
    ld c, b
    add hl, hl
    ld [$e7a0], sp
    ld [hl+], a
    dec sp
    inc b
    add l
    ld h, a
    inc a
    ld e, h
    ld [hl], a
    ld h, c
    sbc a
    ld e, b
    ld [hl], a
    cp d
    ld d, l
    ld d, h
    pop af
    dec d
    ld d, d
    jp c, Jump_00a_6c89

    ld d, l
    ld d, e
    and l
    ei
    cp $48
    adc h
    ld de, $aa68
    ld d, e
    sub c
    ld b, c
    ld [$f347], a
    add hl, bc
    ld h, e
    ld e, b
    db $dd
    db $fc
    ld l, l
    ld b, c
    db $ed
    and e
    ld [$6acd], sp
    or e
    ld e, d
    ld a, h
    jr nz, @+$01

    sbc d
    and l
    ld d, [hl]
    ld d, h
    pop bc
    ld h, e
    sub c
    ld b, d
    inc c
    add [hl]
    ld [hl], c
    xor d
    ld d, h
    xor d
    xor d
    adc [hl]
    adc c
    ld c, $fd
    ldh [$4c], a
    ld h, h
    ldh a, [$d4]
    ld [hl+], a
    scf
    ld a, [$51aa]
    and l
    ld d, l
    dec sp
    ld a, [hl+]
    add c
    and d
    sub l
    ld d, a
    ld [hl-], a
    xor c
    ld d, l
    ld l, d

jr_00a_6ed2:
    sub e
    add c
    pop hl
    ld d, [hl]
    and c
    ld d, l
    ld c, h
    sbc d
    xor b
    push hl
    ld b, c
    add l
    adc h
    add hl, sp
    ld d, a
    sub d
    ld [$4ea6], a
    dec [hl]
    ld d, $25
    xor d
    xor c
    ld b, [hl]
    ld [hl], e
    ld h, $d2
    ld d, $34
    ld b, d
    push af
    ld d, $55
    ld c, d
    sub e
    ld d, h
    adc d
    adc h
    ld d, l
    ld c, d
    and h
    dec hl
    jp z, $9994

    inc [hl]
    sub h
    or l
    ld a, h
    sbc b
    jp nz, Jump_000_3145

    and l
    ld b, d
    ld c, l
    dec d
    ld e, a
    xor b
    ld h, e
    ld d, a
    sub $34
    xor e
    ld a, [c]
    dec d
    dec h
    and d
    sbc a
    ld c, c
    ld c, e
    ld d, l
    ld [hl], e
    add l
    xor c
    and d
    ld [de], a
    ld d, a
    ld [c], a
    ld a, [hl+]
    jr nc, jr_00a_6f8f

    sub h
    inc d
    ld d, h
    pop bc
    add l
    adc d
    adc b
    ld a, d
    inc [hl]

jr_00a_6f2e:
    ld c, c
    ld c, d
    xor a
    inc b
    jp nc, $818b

    ld a, b
    db $e4
    ld d, a
    jp nc, $2462

    sbc b
    inc hl
    rla
    and e
    adc d
    ld hl, $4c95
    ld d, h
    add h
    inc hl
    dec b
    adc [hl]
    ld l, b
    add h
    jr z, jr_00a_6ed2

    sub l
    push bc
    ld e, b
    and l
    adc [hl]
    xor c
    ld a, [de]
    ld d, [hl]
    inc b
    cp l
    adc b
    ld e, d
    dec sp
    push hl
    ld a, a
    ld hl, sp-$3b
    ld l, b
    pop af
    ldh [$a8], a
    dec d
    ld l, d
    adc a
    dec l
    ld b, [hl]
    adc a
    ld c, c
    rlca
    db $e3
    ret


    db $dd
    add hl, hl
    ld [$18e3], a
    and h
    daa
    ld e, [hl]
    ccf
    inc h
    and $19
    jr @+$46

    ld b, c
    add d
    ld [hl], d
    push hl
    adc $0a
    and l
    and [hl]
    xor a
    sbc h
    ld c, b
    ld b, [hl]
    ld a, l
    ld e, a
    and e
    jr jr_00a_6f2e

    ld d, b
    ld h, a

Jump_00a_6f8c:
    inc c
    cpl
    ld h, l

jr_00a_6f8f:
    reti


    jr jr_00a_6fd4

    sub h
    add a
    inc e
    cp h
    ld b, h
    add a
    ld h, l
    ld [c], a
    sub l
    dec d
    dec e
    ld [hl], $df
    or b
    ld [c], a
    xor d
    jp c, $8878

    ld e, h
    add d
    or l
    dec d
    ld b, b
    sbc [hl]
    inc h
    jr nc, jr_00a_7025

    sub b
    xor d
    xor d
    ld [de], a
    dec bc
    ld c, d
    sbc c
    ld l, c
    cp d
    dec c
    jp c, Jump_00a_55ff

    ld d, l
    cp $97
    ld d, l
    ld d, h
    add h
    ld l, h
    ldh a, [$bd]

jr_00a_6fc4:
    ld b, [hl]
    di
    ld d, l
    ld a, [$2698]
    ret z

    cp h
    ld d, d

jr_00a_6fcd:
    xor d
    sbc c
    ld c, b
    ld h, h
    ld d, [hl]
    xor e
    ld [hl], c

jr_00a_6fd4:
    xor e
    ld d, b
    ld c, d
    ld c, l
    ld d, d
    push bc
    ld a, a
    cp a
    inc hl
    add $a8
    and h
    ret nz

    sub c
    ld a, [$7a61]
    ld e, h
    and e
    ld hl, $2398
    jr nc, jr_00a_6fc4

    jp z, Jump_000_1012

    pop de
    sub h
    ld h, l
    ld d, e
    and l
    ld c, b
    ld h, c
    inc b
    add hl, hl
    adc l
    ld [hl], h
    sub $a9
    ret


    inc bc
    ld d, b
    and b
    db $f4
    inc c
    ld c, h
    ld b, d
    call nz, Call_00a_7541
    jp hl


    sub d
    sub d
    or c
    rrca
    ld h, c
    inc de
    jr jr_00a_6fcd

    ld b, e
    add sp, $24
    ld e, d
    ld e, a
    ld b, d
    pop af
    ld e, h
    ld l, [hl]
    sbc b
    ld c, d
    db $10

jr_00a_701c:
    inc h
    ld hl, $2c46
    sub d
    or c
    adc $da
    dec d

jr_00a_7025:
    inc de
    ld h, [hl]
    dec bc
    ld sp, $720c
    ret nz

    ret z

    ret


    ld a, [bc]
    ld c, d
    ld d, a
    sub c
    dec l
    dec e
    db $10
    inc h
    ld l, b
    ld d, b
    jr nz, @-$4f

    call nz, $83a7
    ld [hl-], a
    ld b, h
    dec l
    push de
    ld [de], a
    rst $00
    adc c
    ld b, c
    sub e
    ld b, h
    ld a, [hl+]
    pop de
    and $53
    ld d, h
    ld a, c
    xor $3c
    ld a, d
    ld [hl], d
    inc c
    ld a, c
    jr nz, jr_00a_7099

    or e
    ld a, a
    call nc, $ff15
    ld d, e
    ld h, a
    sbc $7b
    ld a, [bc]
    ld h, $8d
    ld d, l
    ld a, [hl]
    add d
    dec b
    scf
    ld b, l
    ld b, c
    ld d, h
    ld d, b
    ld h, b
    ld e, a
    ld c, h
    jp c, Jump_00a_4125

    add c
    ld a, l

jr_00a_7072:
    sub [hl]
    adc h
    push hl
    ld e, b
    ld h, c
    sbc $d7
    ld c, [hl]
    rla
    jr nc, @-$51

    rst $30
    adc l
    xor a
    jr jr_00a_701c

    xor d
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld hl, $4eb9
    ld c, d
    rrca
    ld b, [hl]
    ld h, h
    db $10
    ld h, e
    adc e
    ld l, b
    sbc d
    jr jr_00a_7072

    ld b, [hl]
    sbc e
    ld l, $38

jr_00a_7099:
    ld e, a
    ld sp, hl
    add hl, de
    ld b, l
    sub $8d
    xor [hl]
    and b
    ld l, l
    ld e, b
    and $aa
    ld [hl+], a
    adc a
    ld a, [hl-]
    ld l, [hl]
    sbc l
    or c
    ld [hl-], a
    jr z, @+$22

    sbc h
    xor l
    adc e
    inc sp
    or d
    ld [hl], c
    cp h
    ld b, e
    inc bc
    ld a, [hl]
    ld [hl], b
    or l
    inc c
    ret c

    jr c, jr_00a_7137

    rst $08
    inc bc
    ld b, c
    add a
    sbc e
    dec h

Jump_00a_70c4:
    ld h, [hl]
    inc de
    ld sp, hl
    ret nz

    db $e3
    db $e4
    ld a, a
    rst $38
    sbc h
    ld l, $ba
    dec hl
    ld e, a
    rst $20
    inc de
    rst $38

jr_00a_70d4:
    and c
    ld l, l
    ld sp, hl
    call nz, $85de
    ld hl, $9c3f
    or h
    sub d
    db $dd
    inc e
    ld c, a
    add [hl]
    xor c
    rst $08
    ld d, h
    ld b, l
    rra
    inc e
    ld h, [hl]
    or c
    ld d, e
    scf
    db $d3
    ret nz

    and l
    ld [hl-], a
    ld d, b
    ld d, e
    rlca
    db $fd
    add hl, hl
    db $e3
    ld a, [hl+]
    dec [hl]
    ld d, b
    ld d, d
    xor b
    sbc [hl]
    jr nc, jr_00a_7147

    ld [hl], h
    add l
    ld h, b
    ld e, e
    cp $48
    ld d, c
    ld a, b
    ret


    and b
    adc c
    ld e, d
    ld c, c
    ld h, [hl]
    sub l
    ld [hl], c
    sub h
    ld e, $2e
    add l
    ld c, b
    ld c, d
    cp l
    sbc [hl]
    inc b
    ld l, e
    ld a, [c]
    inc d
    jr jr_00a_70d4

    db $ec
    and h
    sbc e
    ld e, e
    sub [hl]
    ld h, $c7
    jp nz, $b718

    pop hl
    ld l, h
    sbc c
    ld b, c
    ld h, a
    and h
    ld a, [hl]
    and a
    ld b, [hl]
    jr nc, jr_00a_719d

    adc b
    ld b, d
    ld l, d
    adc d
    cp l

jr_00a_7137:
    db $eb
    rst $00
    inc d
    ld de, $6a8a
    dec h
    adc c
    ld l, b
    ld d, d
    db $eb
    ld b, l
    add c
    ld hl, sp+$7e
    ld b, [hl]

jr_00a_7147:
    dec h
    ld b, $30
    ld h, b
    ld b, d

Jump_00a_714c:
    dec l
    ld b, d
    ld a, [bc]
    adc c
    ld c, b
    adc c
    add d
    ld [hl+], a
    ld sp, $6242
    ld d, $89
    ld c, c
    ld d, c
    xor c
    ld [$0439], sp
    inc de
    inc d
    push bc
    ld sp, $6e94
    xor b
    adc c
    ld b, d
    ld h, $29
    ld [hl+], a
    ld l, $52
    inc a
    adc d
    and d
    sub h
    add hl, hl
    ld b, c
    ld [$8885], sp
    ld c, h
    dec d
    push af
    inc d
    dec hl
    dec b
    xor b
    ld l, d
    ld d, d
    xor b
    cp c
    ld l, $43
    db $fd
    ld h, b
    cp d
    dec [hl]
    ld b, c
    ld [$b4c6], sp
    cp d
    cp l
    ld b, c
    adc [hl]
    inc b
    ld d, e
    ld b, $85
    add e
    xor a
    ei
    xor b
    sub l
    xor h
    sub h
    jp nz, $a125

jr_00a_719d:
    ld c, d
    xor a
    ld a, b
    sub l
    ld h, l
    and d
    add hl, de
    inc d
    ld [hl], d

Call_00a_71a6:
    and c
    ld e, b
    ld d, h
    sub [hl]
    adc b
    ld l, l
    xor b
    add l

Jump_00a_71ae:
    and [hl]
    inc d

jr_00a_71b0:
    ldh [$63], a
    ld d, $ba
    dec h
    ld e, l
    ld l, b
    ld d, $33
    ld c, b
    and [hl]
    ld l, $97
    ld b, c
    ld d, a
    ld e, b
    sub [hl]
    ld hl, $0746
    jp nc, $ceec

    ld [hl], c
    ld a, [c]
    ld a, [de]
    and l
    ld l, b
    ld e, b
    jr @+$64

    sub h
    sbc $97
    or $a8
    jp nc, Jump_000_2956

    ldh [$df], a
    dec bc
    ldh [$a6], a
    ld a, [hl+]
    and [hl]
    add hl, sp
    and d
    ld l, c
    or [hl]
    sub a
    call nc, Call_000_29c6
    sbc e
    ld [de], a
    xor d
    and c
    dec b
    sub l
    sub l
    dec d
    add l
    inc de
    xor c
    ld d, e
    ld b, b
    xor d
    inc d
    jr nc, jr_00a_71b0

    ld c, b
    ld c, b
    ld [c], a
    sbc b
    ld c, h
    adc h
    ld b, d
    add d
    dec sp
    push de
    ld c, c
    ld e, a
    pop de
    db $76
    ld b, d
    ld b, h
    dec d
    ld de, $323e
    inc c
    ld sp, $f52b
    inc a
    jr c, jr_00a_7276

    inc a
    xor d
    ld b, a
    rst $08
    ld d, b
    call nz, $e140
    inc a
    ld b, h
    or l
    ld b, c
    dec d
    ld c, a
    dec d
    add e
    ld [bc], a
    and h
    ld b, b
    pop bc
    ld d, c
    inc c
    dec [hl]
    ld [hl], d
    and [hl]
    add hl, hl
    ld c, $d5
    ld [hl], b
    and e
    ldh [$c8], a
    or c
    ld d, l
    ld [bc], a
    push bc
    and l
    ld b, c
    ld b, e
    xor e
    call z, Call_000_148c
    ld l, c
    ret


    ld [$516f], sp
    ld l, $45
    ld b, b
    and e
    ld d, [hl]
    xor h
    sub l
    ld [hl+], a
    sub d
    cp c
    ld [hl], $91
    ld a, [hl+]
    or h
    rla
    add $34
    or c
    ld de, $6a77
    scf
    ld l, d
    adc d

Call_00a_725a:
    cp a
    ld a, [$49c8]
    ld l, c
    xor h
    ld a, [c]
    ld c, l
    ld a, a
    ld e, l
    ld c, b
    ld d, [hl]
    ld h, h
    adc d
    ld h, l
    ldh [$af], a
    add e
    add a
    ld h, [hl]
    ld a, [c]
    ld b, d
    dec [hl]
    ld h, $54
    xor a
    ld b, e
    ld b, h

jr_00a_7276:
    ld c, d
    add $6c
    jr nc, @-$3e

    db $e4
    ld a, [hl+]
    and h
    ld l, c
    ld c, d
    ld h, [hl]
    and h
    ld d, c
    jr nc, jr_00a_72a6

    dec d
    ld d, e
    ld [hl], l
    inc a
    db $fd
    inc d
    sub [hl]
    sub d
    sub c
    xor b
    cp c
    ld c, d
    add l
    ld a, $82
    sub b
    cp a
    jr jr_00a_72bb

    ld b, h
    and c
    and l
    xor d
    xor d
    ld [de], a
    ld [de], a
    dec d
    pop de
    ld l, c
    adc h
    ld b, h
    add hl, bc
    add h

jr_00a_72a6:
    jr @+$25

    dec c
    ld d, d
    jp z, $d82b

    ld a, b
    ld [hl-], a

jr_00a_72af:
    xor c
    scf
    sbc c
    rst $10
    ld [$fb14], a
    ld e, b
    ld b, e
    inc hl
    or d
    and h

jr_00a_72bb:
    ld h, c
    dec de
    ld b, c
    ret nc

    db $e4
    ld b, [hl]
    ld de, $c535
    ld h, h
    nop
    ld b, h
    or d
    ld a, l
    dec sp
    jr z, jr_00a_72f6

    ld b, l
    ld b, c
    ld a, d
    and h
    sub $da
    ld a, [de]
    cp $97
    ld c, l
    sbc a
    ld l, l
    ld d, $88
    cp a
    inc [hl]
    ld a, b
    adc c
    add e
    dec l
    db $fc
    pop bc
    ld e, l
    call z, Call_000_07bd
    cp $30
    ld a, a
    bit 1, b
    ld b, e
    add d
    db $e3
    dec hl
    xor c
    ld hl, $8e8a
    dec bc
    sbc h
    ld a, [hl+]

jr_00a_72f6:
    ld sp, $1ea8
    ld c, h
    ld e, l
    ld d, e
    ld a, [hl-]
    ld sp, hl
    add hl, bc
    ld [hl-], a
    and c
    sub b
    ld c, c
    ld b, [hl]
    db $ed
    jr c, jr_00a_72af

    jr nc, @+$62

    or h
    inc l
    inc de
    add [hl]
    ld a, [$f52a]
    add hl, bc
    dec sp
    dec hl
    push af
    ld a, $17
    ld a, c
    ld [hl], h
    add hl, bc
    adc h
    xor h
    ld [hl], b
    ld e, h
    ld [$293e], sp
    ld d, c
    xor [hl]
    ld a, [hl-]
    inc a
    cpl
    sbc h
    or b
    ld e, [hl]
    ld b, a
    ld sp, hl
    and d
    ld b, d
    xor h

Jump_00a_732d:
    ld d, [hl]
    and c
    add $b0
    ld h, c
    sbc c
    inc hl
    ld a, c
    cp e
    and [hl]
    ld [hl], b
    ld a, [hl+]
    ld a, [hl+]
    ld h, a
    ld [hl-], a
    ld h, l
    ld d, a
    or $16
    sbc b
    or b
    ld h, $35
    ld a, h
    ret z

    add $b5
    ld a, [hl+]
    pop bc
    and c
    call nz, Call_00a_4547
    ld [hl], $77
    jr nc, jr_00a_7379

    ld a, h
    dec c
    ld d, c
    ldh a, [$a0]
    ld d, l
    cp c
    or e
    xor a
    ld c, h
    sbc d
    dec sp
    add hl, de
    dec d
    xor b
    adc d
    ld l, e
    db $f4
    call $2ef5
    sub l
    ld hl, $42d0
    ld h, $4c
    jr z, @+$18

    ldh [$81], a
    cp l
    ld a, [c]
    db $10
    ld b, [hl]
    sub h
    adc c
    add hl, hl
    adc e

jr_00a_7379:
    add d
    rrca
    ld hl, sp-$77
    ld b, $38
    ld e, e
    call nc, $fc97
    add l
    ld [$30d2], sp
    sbc l
    ld h, $fe
    ld d, $82
    ld c, l
    inc de
    rlca
    ld [c], a
    dec a
    adc h
    add hl, hl
    dec [hl]
    ld c, e
    ld b, a
    dec hl
    ld sp, $5b58
    ld c, h
    inc [hl]
    and [hl]
    ld c, b
    ld a, c
    ld d, c
    sub h
    jr jr_00a_73c3

    ld hl, sp-$3a
    jp nc, Jump_00a_5e18

    ld h, b
    ld a, l
    ld a, [de]
    ld hl, $3017
    sbc b
    cp e
    adc b
    ld a, a
    db $fc
    jp nz, Jump_00a_44a3

    sbc c
    inc b
    ld e, e

jr_00a_73b9:
    cp $39
    sub e

jr_00a_73bc:
    jr z, jr_00a_7426

    inc hl
    adc c
    ld l, d
    adc d
    sub d

jr_00a_73c3:
    ld d, e
    sbc l
    inc sp
    ld d, b
    and c
    ld c, [hl]
    dec b
    and l
    inc b
    adc $f8
    adc b
    ld a, c
    ld d, d
    xor b
    cp d
    jr c, jr_00a_73b9

    xor d
    sub e
    ret nz

    ld c, h
    jr c, jr_00a_73bc

    sbc h
    reti


    rst $10
    ld h, $4d
    daa
    ld e, l
    jr nz, @-$5d

    rla
    ld b, h
    and [hl]
    ret nc

    inc h
    inc hl
    ld [bc], a
    and [hl]
    db $10
    rst $38
    and [hl]
    ld [hl-], a
    add hl, de
    inc de
    inc bc
    inc c
    ret z

    jr c, jr_00a_7439

    rst $38
    ld a, [$2961]
    jr nc, jr_00a_7461

    call $ec85
    ld b, l
    ld e, a
    sbc b
    jp c, Jump_00a_4352

    jr nc, jr_00a_7431

    db $d3
    ld c, d
    inc sp
    or b
    ld [hl], $c9
    and d
    ld h, e
    ld [bc], a
    ld c, h
    and l
    rst $20
    ld b, $5c
    inc l
    ld c, d
    sub e
    ld hl, sp-$60
    rst $20
    inc de
    ld [bc], a
    ld b, h
    ld [$7b23], sp
    call z, Call_000_160b
    jp hl


jr_00a_7426:
    ld c, c
    ld l, h
    ld b, h
    adc l
    dec c
    ei
    sub h
    cp $98
    ld [hl], b
    and h

jr_00a_7431:
    inc sp
    dec h
    call nc, $f461
    ld e, [hl]
    ld [de], a
    ld [de], a

jr_00a_7439:
    call z, $c1d9
    add l
    add hl, de
    call nz, $b153
    or e
    add $78
    inc hl
    sbc h
    jp nc, Jump_000_0c67

    ld b, h
    jp c, $b566

    ld c, e
    and [hl]
    sub c
    ld c, b
    ld [hl], h
    ld a, [bc]
    ld b, l
    sbc l
    or c

jr_00a_7456:
    add h
    add hl, bc
    rst $18
    jr jr_00a_74a2

    db $10
    ld b, h
    cp b
    sub h
    ld d, l
    ld d, h

jr_00a_7461:
    ldh [$74], a
    ld e, e
    add sp, -$61
    ld c, [hl]
    jr c, jr_00a_7456

    ld b, d
    dec sp
    ld h, e
    cp a
    or e
    cp [hl]
    ld c, [hl]
    or $3b
    call c, $93ef
    cp d
    and [hl]
    dec sp
    dec l
    add hl, de
    db $e4
    and l
    ld c, [hl]
    ld l, b
    ld l, c
    ld e, h
    ld h, e
    jp hl


    ld h, a
    ld a, [de]
    ld a, [bc]
    ld c, d
    ld [hl], b
    ld b, c
    dec bc
    ld [hl], h
    ld c, l
    ld [bc], a
    ld [hl], c
    rst $00
    ld h, l
    add h
    ld a, [hl+]
    ld [hl], l
    ld [hl+], a
    pop af
    push de
    inc hl
    ld e, $ea
    ld [hl], a
    jp z, Jump_00a_4277

    sbc l
    adc b
    ld a, [c]
    add hl, bc
    rst $10
    dec c

jr_00a_74a2:
    ld a, [hl]
    sub b
    and c
    daa
    ld c, l
    dec c
    rra
    ld c, [hl]
    ld [hl], a
    cp h
    dec b
    ld d, e
    and c

jr_00a_74af:
    rst $38
    call nc, $5485
    sub $c3
    db $f4
    and $bf
    rst $38
    ei
    xor b
    add hl, sp
    ld sp, $155a
    dec sp
    jr nz, jr_00a_74af

    ld [hl+], a
    add $52
    ld d, d
    inc hl
    or c
    cp $82
    adc e
    ld h, [hl]
    cp l
    ld b, l
    adc b
    ld c, [hl]
    ld [hl], a
    add d
    add c
    ld d, e
    ld l, [hl]
    ld [hl], $55
    ld c, l
    ret nc

    sub [hl]
    rst $38
    dec h
    and d
    ld d, d
    push de
    ld a, a
    and c
    db $eb
    db $d3
    jr c, jr_00a_7523

    and c
    add l
    ldh [rWY], a
    add d
    ld d, $31
    add c
    add hl, bc
    ld a, [de]
    ld [hl-], a
    xor c
    ld sp, hl
    add hl, bc
    ld b, c
    ld sp, hl
    rrca
    ld e, c

jr_00a_74f7:
    and e
    ld l, b
    ld l, d
    ld [$e0c6], sp
    xor a
    ld a, [c]
    ccf
    jp c, Jump_000_3486

    ld d, e
    or d
    and l
    ld c, h
    and e
    adc [hl]
    dec sp
    inc sp
    ld a, [hl+]
    ld c, h
    jr z, jr_00a_7537

    inc d
    cp b
    db $e4
    ld [hl], d
    call nc, Call_000_21a9
    ldh [$a0], a
    ld d, b
    ld c, e
    and h
    reti


    ld a, [hl]
    ld sp, $a88b
    ld d, $da
    inc b

jr_00a_7523:
    adc $31
    ld e, a
    cp b
    jp nc, $5a4b

    and l
    and e
    adc c
    ld a, d
    ld b, $25
    ld d, a
    ld h, d
    ld h, d
    ld h, e
    jr jr_00a_74f7

    ld d, l

jr_00a_7537:
    adc c
    xor b
    ld a, [de]
    ld d, a
    ld a, [$52b8]
    ld h, c
    adc h
    db $e3

Call_00a_7541:
    sbc c
    ld l, d
    add hl, hl
    ld hl, $b404
    pop hl
    adc h
    db $ed
    dec bc
    cp a
    push de
    add hl, hl
    ld b, d
    ld e, b
    add h
    jp z, $3626

    or h
    inc h
    adc d
    and d
    ld d, h
    db $10
    ld [hl], d
    ld h, h
    and [hl]
    dec h
    push af
    dec [hl]
    or h
    inc h
    adc $67
    ld c, e
    xor d
    adc d
    adc b
    sbc c
    dec [hl]
    or h
    inc h
    pop bc
    ld a, b
    adc b
    ldh [$92], a
    sub h
    jp c, Jump_000_05f6

    ld a, [hl]
    adc [hl]
    ld h, $26
    xor c
    ld d, e
    rla
    rst $38
    rst $30
    ld l, d
    ld [hl-], a
    adc h

jr_00a_7581:
    sbc b
    ld h, h
    jp nz, Jump_00a_6f8c

    ld d, e
    adc d
    dec l
    ld l, b
    cp d
    ld d, a
    cp b
    jp nc, Jump_00a_54bf

    push bc
    ld h, c
    ld d, [hl]
    adc [hl]
    ld a, [bc]
    jr c, jr_00a_7581

    rst $38
    rst $38
    xor d
    adc a
    sub e
    sbc $0a
    ld [hl], l
    and h
    daa
    ld c, h
    ld a, [de]
    ld [hl], h
    inc h
    ld [hl], $a5
    ld h, $f4
    and a
    ld l, h
    xor $4d
    sbc c
    xor h
    ld [hl], a
    ld a, [hl+]
    ld b, d
    ld e, e
    ld a, [hl+]
    sub d
    sub h
    sbc l
    ld [$51cb], a
    ld [hl], e
    ld [bc], a
    xor l
    dec e
    ld c, h
    jp c, $b51f

    add d
    ld d, d
    ld e, d
    ld b, d
    add hl, bc

jr_00a_75c7:
    dec c
    ld h, $f4
    rrca
    db $f4
    rrca
    ret nc

    ld b, h
    ret nz

    or [hl]
    ld h, e
    ld c, a
    and c
    add hl, hl
    and [hl]
    ld a, [hl+]
    ld d, $a0
    cp $08
    db $eb
    jp z, Jump_00a_686f

    rst $00
    dec b
    ccf
    rst $38
    ld b, e
    db $f4
    add hl, hl
    ld l, d
    ld h, h
    and b
    sbc h
    or h
    ld [hl-], a
    ld l, c
    ld b, b
    and [hl]
    or c
    reti


    jr jr_00a_75c7

    xor b
    add $51
    jp nc, $8482

    ld b, d
    ld d, h
    ld a, [de]
    add $89
    call z, Call_000_32fc
    add e
    ld l, c
    db $e3
    xor l
    pop af
    ld c, b
    or b
    ld e, h
    or [hl]

jr_00a_760a:
    ld a, [hl+]
    and c
    and l
    dec h
    and [hl]
    inc a
    rrca
    dec hl
    ld d, h
    jr z, @-$36

    ld b, d
    or h
    ld c, h
    jp c, Jump_00a_7c29

    ld h, b
    db $f4
    ld a, [c]
    or l
    sub h
    adc d
    ld de, $8d92
    ld b, d
    sbc d
    inc h
    ld a, [hl+]
    jp hl


    add hl, bc
    ld c, b
    dec h
    jp z, Jump_00a_52b4

    inc l
    ld l, c
    ld h, c
    ld l, d
    xor l
    ld b, [hl]
    db $10
    ld d, e
    ld [hl], c
    pop bc
    dec de
    ret z

    ld e, d
    inc [hl]
    ld h, c
    add l
    ld b, b
    xor h
    sbc d
    ld [hl-], a
    sbc h
    ld [de], a
    ld d, $9a
    xor h
    ld b, h
    ld [de], a
    sbc c
    rst $10
    inc e
    ld [de], a
    ld d, $98
    ld hl, $4498
    ld d, l
    add hl, hl
    inc [hl]
    add [hl]
    ld [hl], b
    db $d3
    db $10
    add [hl]
    db $10
    daa
    inc d
    ld e, d
    add hl, de
    sbc h
    xor c
    ld [hl], $31
    add hl, hl
    adc d
    ld h, a
    jr z, jr_00a_760a

    ld a, [de]
    jr nc, jr_00a_76a1

    ld a, [hl+]
    xor d
    pop de
    adc d
    ld l, a
    ld b, c
    add $d0
    ld [hl-], a
    add hl, bc
    sbc d
    xor l
    ld e, $3c
    inc de
    ld d, l
    ld c, h
    ld a, h
    cp b
    ld b, h
    sbc e
    ld c, d
    ld h, e

jr_00a_7683:
    ld h, [hl]
    adc e
    cp a
    xor d
    ld b, c
    ld b, c
    jr nc, jr_00a_76f2

    call z, Call_00a_436f
    add c
    ldh [$a5], a
    ld e, c
    ld a, [$5233]
    ld h, d
    dec d
    rla
    db $e3
    ld a, d
    xor d
    pop bc
    rst $38
    cp $8d
    dec d
    dec h

jr_00a_76a1:
    sbc a
    ei
    pop hl
    ld c, l
    daa
    cp l
    ld c, $de
    dec h
    adc [hl]
    ld b, $ff
    cp $21
    adc c
    ld h, e
    ld l, c
    inc hl
    ld a, [hl+]
    xor [hl]
    adc l
    ld a, [hl+]
    dec de
    ld b, c
    xor c
    ld c, b
    or l
    ld c, h
    ld d, [hl]
    dec b
    jr jr_00a_7683

    ld c, b
    ld c, h
    sub a
    and a
    ld a, c
    ld sp, $8c88
    ld h, l
    ld a, a
    db $ed
    inc b
    add hl, hl
    inc d
    rst $10
    db $fd
    ld c, c
    or a
    and [hl]
    adc b
    ld h, e
    ld a, [hl+]
    and e
    ld e, d
    xor b
    ld a, [c]
    inc h
    daa
    ld a, [hl-]
    sbc c
    jr nz, @-$52

    sbc d
    or d
    sbc d
    db $d3
    ldh [$aa], a
    adc d
    inc de
    ld sp, hl
    and a
    ld [de], a
    add d
    ld c, d
    rrca
    cp $71
    and h

jr_00a_76f2:
    xor a
    rst $18
    rst $20
    dec bc
    ccf
    push de
    inc bc
    cp $6a
    add sp, -$2a
    or d
    rrca
    rst $38
    sbc d
    jr nz, @-$71

    ld d, d
    rst $08
    rst $38
    ld sp, hl
    and [hl]
    pop hl
    ld a, e
    ld b, [hl]
    rla
    and $78
    ld a, [hl]
    or e
    rst $38
    and h
    add $d1
    inc d
    rra
    rst $38
    ld [$b671], a
    rst $38
    rst $38
    rst $38
    add $48
    dec h
    rst $18
    ld d, a
    rst $38
    jp hl


    sub [hl]
    inc l
    ld d, h
    ld de, $711d
    pop af
    nop
    ld d, l
    cp [hl]
    ld bc, $395e

jr_00a_7731:
    sub a
    rst $38
    ld d, b
    ld e, a
    or a
    adc [hl]
    ld e, d
    ld a, [$7a83]
    ld a, [hl]
    add hl, sp
    add sp, $2d
    ld h, b
    ld d, l
    and e
    and [hl]
    adc h
    xor b
    db $ec
    ld d, d
    ld e, $91
    add [hl]
    ld h, h
    push de
    ld [hl-], a
    ld h, d
    ld [hl+], a
    jr jr_00a_77bb

    sub h
    adc $a4
    push bc
    sbc h
    add $2a
    ld l, d
    sub h
    cpl
    db $d3
    dec hl
    dec b
    jr nc, jr_00a_7731

    adc b
    ld d, d
    ld hl, $5fe3
    ld b, c
    ld c, b
    rst $38
    ld hl, $9486
    ld d, d
    jp c, Jump_000_09f6

jr_00a_776f:
    sbc b
    adc a
    or $08
    pop bc
    inc d
    add a
    inc c
    jr nz, jr_00a_776f

    ld h, d
    xor $04
    ld h, e
    add hl, bc
    ld b, l
    ld b, d
    ld e, b
    dec d
    add c
    ld c, h
    inc d
    ld hl, $148d
    add l
    inc d
    ld h, c
    sub h
    ld d, $16
    rlca
    ld c, l
    inc d
    inc l
    ld h, $04
    cp b
    sub h
    adc e
    db $f4
    adc $ca
    ld h, e
    ld d, h
    ld a, a
    ld hl, sp-$2a
    xor d
    jr c, jr_00a_77c3

    ld a, b
    pop af
    ld h, $e3
    add $a8
    jp z, Jump_000_1a7c

    ld [hl], h
    xor d
    and [hl]
    inc c
    ld [hl], h
    db $fd

jr_00a_77b1:
    ld e, a
    db $10
    rst $00
    ld h, l
    rst $38
    add sp, -$39
    ld a, a
    rst $38
    rst $38

jr_00a_77bb:
    sbc l
    xor a
    push af
    ld a, a
    jp z, $d309

    ld a, [hl]

jr_00a_77c3:
    ld b, a
    ld hl, sp+$75
    and [hl]
    xor c
    and l
    ld a, a
    db $fc
    ld c, $8c
    adc h
    jr nc, jr_00a_77f3

    ld h, $ca
    xor e
    rst $38
    ei
    ret nz

    adc d
    ld c, h
    ld l, a
    db $fc
    dec c
    rst $38
    rst $38
    rla
    ld a, [bc]
    ld h, d
    xor d
    ld b, h
    inc c
    rst $38
    rst $38
    pop bc
    jr jr_00a_77b1

    ld c, [hl]
    ccf
    dec bc
    dec c
    rst $38
    db $fc
    ld [$0747], sp
    cp $86

jr_00a_77f3:
    ld c, l
    rst $38
    push bc
    add $df
    rst $38
    jp hl


    add h
    ld d, e
    inc e
    scf
    adc a
    pop af
    or d
    adc l
    ld h, $d5
    ld d, c
    pop bc
    ld [hl], l
    ld e, $36
    sbc [hl]
    ld b, l
    ld e, $98
    ld b, h
    ld a, [hl-]
    ld d, [hl]
    adc [hl]
    or [hl]
    ld c, [hl]
    ret c

    inc h
    pop hl
    ld d, l
    ld c, c
    ld d, a
    inc b
    add h
    pop de
    adc d
    sbc d
    ld sp, $234d
    ld [hl], $a9
    ld b, $34
    xor b
    ret


    ld c, b
    ld b, d
    ld c, l
    ld a, [hl+]
    dec b
    ld sp, $5998
    ld c, h
    rst $20
    db $e3
    ld b, [hl]
    ld a, [de]
    dec [hl]
    or b
    and e
    cp d
    and b
    ld d, d
    and e
    sbc d
    ld a, [hl]
    adc b
    ld h, h
    rst $20
    or a
    ld l, e
    reti


    dec sp

jr_00a_7844:
    ld l, a
    db $e3
    cp d
    and e
    rst $00
    db $dd
    ld l, d
    db $76
    inc a

Call_00a_784d:
    db $76
    jp nc, Jump_00a_4977

    jp nz, Jump_00a_49d5

    db $d3
    jr jr_00a_789d

    add hl, bc
    pop bc
    ld d, $a6
    ld [hl-], a
    ld l, l
    db $10
    db $fd
    ld d, h
    sub l
    xor c
    and h
    jp nc, $9c62

    db $f4
    ld a, b
    ld de, $7484
    ld c, l
    ld a, [bc]
    add d
    ld [hl], l
    pop de
    ld d, $9e
    inc b
    ld a, h
    ld c, b
    ld d, l
    cp l
    ld [hl], a
    rst $38
    call nc, $a2ef
    db $eb
    ld c, a
    dec bc
    jp hl


    ld l, l
    ld a, [hl-]

Jump_00a_7882:
    db $ed
    ld c, b
    or c
    sbc d
    dec sp
    ld a, [hl+]
    xor b
    xor e
    adc [hl]
    sub l
    and e
    ld d, h
    sub l
    scf
    ld l, b
    and l
    xor d
    ld d, e
    ld [$4663], sp
    adc d
    ld h, b
    ld a, a
    ret nc

    sub c
    ld b, d

jr_00a_789d:
    scf
    ld [hl], l
    inc b
    ld d, b
    ld a, c
    ld d, [hl]
    ret nc

    add [hl]
    dec h
    ld [hl-], a
    add [hl]
    ld a, [bc]
    add [hl]
    sbc [hl]
    cp e
    ld l, b
    ld [hl+], a
    ld a, [de]
    jr c, jr_00a_7844

    ld a, [de]
    ld hl, $3826
    ld d, b
    adc c
    ld e, e
    ld e, [hl]
    add hl, hl
    jr c, @-$24

    dec h
    dec bc

jr_00a_78be:
    ld l, b
    ld a, [de]
    add hl, sp
    ld h, b
    sub h
    xor c
    dec bc
    ld a, [$2222]
    sub h
    jp nc, Jump_000_1a63

    ld d, l
    ld e, d
    ld sp, $4993
    add hl, sp
    add hl, de
    jr c, jr_00a_78be

    ld c, l
    sbc b
    adc c
    inc d
    ld [c], a
    and l
    add hl, hl
    ld l, b
    jp nz, Jump_00a_7a8e

    xor b
    pop hl
    sbc [hl]
    call nz, $094c
    rst $18
    daa
    adc [hl]

Call_00a_78e9:
    ld a, [$02eb]
    ld a, b
    dec d
    rst $38
    db $ec
    add h
    db $76
    xor b
    push de
    pop hl
    inc b
    ld [hl], h
    dec l
    add hl, de
    ret z

    inc h
    xor c
    cp e
    inc d
    add h
    ld c, h
    ld [$1049], sp
    add $8d
    dec d
    ld de, $420c
    add d
    ld de, $0cba
    ld c, h
    ld c, d
    add hl, hl
    ld e, $84
    ld b, e
    add hl, de
    ld b, [hl]
    ld d, b
    push bc
    dec a
    ld [c], a
    rst $00
    ld [de], a
    add hl, de
    xor a
    ld sp, hl
    ret z

    adc h
    inc l
    ld h, e
    ld a, a
    sbc h
    add hl, hl
    adc a
    and l
    rst $38
    rst $20
    ld a, [de]
    inc c
    ld d, l
    cp $ff
    db $fc
    ld b, l
    add hl, hl
    xor h
    sbc b
    rst $10
    rst $38
    ld b, h
    and h
    ret


    xor h
    sbc h
    ld c, h
    ld [de], a
    ld [hl], d
    ld b, b
    sbc d
    ld sp, $c752
    inc h
    add hl, bc
    ld [$ae47], sp
    ld b, h
    cp l
    ld d, l
    ld l, d
    and e
    sub c
    ld l, d
    ld a, [hl-]
    sbc b
    db $ed
    ld h, e
    cp c
    ld a, $81
    inc a
    inc d
    inc de
    ld d, l
    jr c, @+$68

    jr nc, jr_00a_79b8

    ld d, e
    adc d
    dec b
    ld d, $df
    db $fc
    and $af
    db $76
    db $fc
    db $eb
    xor d
    and e
    pop hl
    ld h, a
    xor b
    and c
    ld d, l

jr_00a_796f:
    ld b, a
    ld a, [de]
    pop de
    sub $d1
    db $db
    sbc l
    ld sp, hl
    ldh [$67], a
    add c
    sbc [hl]
    ld b, $78
    ld [hl-], a
    sbc d
    ld a, [hl+]
    ld [hl], c
    push bc
    xor l

jr_00a_7983:
    daa
    dec l
    ld [bc], a
    inc d
    ld [$d549], sp
    ld a, [bc]
    ld de, $00f5
    ld h, [hl]
    cp c
    sub [hl]
    add c
    ld c, l
    inc hl
    sbc l
    xor c
    ld h, d
    jr c, jr_00a_796f

    and e
    sbc c
    jr nc, jr_00a_79e5

    ld [hl], l
    ld d, h
    sub l
    dec b
    rla
    adc [hl]
    rlca
    jp z, Jump_00a_7f88

    rst $38
    ld a, [$f922]
    inc [hl]
    ld e, a

jr_00a_79ad:
    ld [$5a33], a
    ld l, a
    push de
    dec h
    jp nz, Jump_00a_7e2d

    adc e
    sub d

jr_00a_79b8:
    sub [hl]
    rra
    rrca
    ld d, $bd
    ld [$e8c1], sp
    sub $aa
    ld sp, $7250
    ld l, l
    dec b
    ld [hl+], a
    adc d
    ld d, l
    xor d
    cp [hl]
    cp a
    xor e
    xor l
    ld a, a
    ld d, h
    adc e
    ld l, b
    add hl, hl
    ld d, $c5
    and h
    adc c
    ld b, c
    ld d, d
    pop de
    ld a, a
    ld e, a
    xor c
    sbc d
    ld [$848c], sp
    inc [hl]
    inc d
    ld l, l

jr_00a_79e5:
    ld hl, $7e95
    xor b
    ld e, a
    ld a, b
    ld d, h
    inc d
    jr nc, jr_00a_7983

    jr z, @+$22

    add c
    ld a, [de]
    and b
    adc l
    ld a, a
    pop af
    add e
    add sp, $21
    and b
    ld d, b
    ld b, c
    ldh [$7f], a
    sbc c
    ld d, l
    ld c, c
    ld e, [hl]
    db $fc
    ld d, h
    xor b
    ld hl, $0a9e
    rlca
    and b
    ld b, [hl]
    daa
    rst $38
    db $eb
    jp nz, $83c9

    inc d
    ld hl, $8c81
    jr z, jr_00a_79ad

    ld l, d
    dec d
    and c
    ld d, l
    dec d
    ld a, [hl+]
    xor d
    ld d, h
    sub h
    ld d, l
    ld l, d
    ld hl, $5668
    sub $25
    ld c, l
    ld l, d
    xor d
    dec l
    ld l, b
    sbc a
    cp $c1
    ld a, [hl+]
    db $d3
    ld h, l
    ld d, d
    or l
    ld d, l
    xor e
    ld b, e
    ld b, c
    ld d, $26
    push af
    jr nc, jr_00a_7aa0

    ld h, h
    rst $00
    pop af
    push af
    inc b
    sub $bd
    ld d, [hl]
    ld sp, $23a9
    ldh a, [rHDMA2]
    jr jr_00a_7aac

    adc [hl]
    ld a, l
    ld h, $57
    push hl
    xor b
    db $e4
    sub l
    ld [hl], c
    pop de
    cp l
    ld l, d
    add [hl]
    add [hl]
    ld c, [hl]
    sbc b
    adc e
    ld c, b
    adc h
    jr z, @+$2c

    pop de
    ld d, e
    sub d
    ld b, l
    add hl, bc
    ld h, d
    db $ed
    ld [c], a
    dec l
    ld a, [hl-]
    jr z, @-$28

    and e
    rlca
    ld b, [hl]
    ld [hl], e
    ld hl, $a760
    add [hl]
    call nc, $a4b0
    ld h, [hl]
    sbc c
    rst $08
    add hl, hl
    inc l
    ld b, [hl]
    ld l, b
    jp hl


    add hl, hl
    ret


    ld d, $d5
    push de
    ld a, [hl+]
    dec de
    cp b
    or c
    and d
    ld de, $8a59

Jump_00a_7a8e:
    db $10
    ld d, h
    ld b, e
    inc bc
    inc bc
    add hl, de
    ld hl, $ca19
    xor l
    dec c
    ld d, l
    ld c, d
    db $eb
    ld c, [hl]
    ld a, b
    ld c, d
    xor d

jr_00a_7aa0:
    or l
    db $ed
    and l
    or b
    ld a, [hl+]
    push de
    db $10
    and b
    adc d
    and b
    adc d
    xor l

jr_00a_7aac:
    ld d, l
    cp $d9
    jr c, @+$3e

    adc e
    rla
    scf
    cp $18
    ld a, a
    push de
    ld a, [hl+]
    and d
    sub c
    cp e
    add a
    adc h
    sub h
    sub e
    ld d, e
    ld b, d
    add e

Jump_00a_7ac3:
    rst $38
    rst $38
    ld a, [$df45]
    or [hl]
    sbc b
    db $e4
    ld d, h
    ld c, h
    rst $18
    rst $38
    rst $38
    cp $43
    cp $1e
    ld h, c
    ld [hl], b
    ld [hl+], a
    or d
    jr nc, jr_00a_7b31

    db $fd
    ld d, l
    db $fc
    ld b, a
    add [hl]
    ld e, $39
    adc h
    xor a
    pop hl
    add a
    ld d, d
    and d
    or h
    ld [de], a
    ld b, [hl]
    jr jr_00a_7b47

    ld de, $8716
    rst $38
    inc b
    cp l

jr_00a_7af2:
    inc bc
    jp nc, $e4ff

    ld b, e
    adc l
    ld d, l
    xor d
    adc h
    ld de, $d292
    rst $38
    call nc, Call_000_12e6
    ld [hl], d
    xor l
    dec c
    ld d, h
    cpl
    ld a, $72
    xor d
    adc l
    ld d, c
    adc d

jr_00a_7b0d:
    cp h
    rrca
    jp hl


jr_00a_7b10:
    ld [hl], b
    ld h, $2c
    ld c, h
    sub a
    ld d, l
    ld c, d
    add h
    or $e6
    ld [hl], c
    dec bc
    jr jr_00a_7af2

    add l
    ld d, l
    ld b, b
    cp a
    ld [hl], h
    ld l, a
    sub d
    sbc b
    jr z, jr_00a_7b0d

    db $db
    ld d, a
    ld h, a
    dec c
    ld d, d
    ld b, h
    add h
    dec c
    add hl, de

jr_00a_7b31:
    ld h, e
    ld a, h
    ld [hl], e
    ld h, e
    ld [hl-], a
    add hl, sp
    adc e
    sub e
    ld a, d
    ld [hl], e
    ld c, e
    dec c
    jr jr_00a_7b10

    add l
    sbc [hl]
    and b
    ld b, h
    cp l
    ld d, l
    ld d, l
    ld d, e

jr_00a_7b47:
    add l
    ld e, a
    ldh a, [$aa]
    xor d
    dec [hl]
    ld a, a
    xor b
    add sp, $78
    db $dd
    ld d, l
    ld sp, $e078
    adc a
    ld [bc], a
    ld d, e
    pop bc
    xor b
    ld a, [c]
    sub b
    adc [hl]
    reti


    cp c
    xor d
    xor c
    ld d, h
    ld [c], a
    xor c
    ld b, $90
    ld l, c
    dec bc
    push hl
    ld c, l
    db $ec
    ld [hl-], a
    add hl, hl
    ld h, c
    xor d
    add hl, sp
    dec l
    and e
    db $e3
    ld h, a
    xor d
    sbc l
    ld [$d138], sp
    add [hl]
    ld l, l
    add l
    dec de
    ld a, c
    ret c

    add l
    ld b, [hl]
    ld l, $70
    and $f9
    dec hl
    ld d, c
    adc h
    and [hl]
    sbc b
    or c
    jp Jump_00a_5f66


    adc d
    or l
    ld b, [hl]
    ld c, [hl]
    ld h, d
    rst $38
    ld [$f96c], a
    sbc l
    db $f4
    ld d, l
    ld a, [bc]
    xor a
    ld sp, hl
    or [hl]
    or c
    db $10
    jr c, jr_00a_7bc6

    ld d, [hl]
    ld l, a
    ld d, b
    ld c, a
    ld sp, $47dd
    rst $00
    nop
    ld [hl], a
    cp b
    rra
    ld d, l
    ld d, a
    push af
    ld c, e
    ld c, [hl]
    rst $30
    pop de
    xor d
    xor b
    adc d

jr_00a_7bb9:
    cp a
    ld d, [hl]
    jp nc, $d3f4

    ld c, c
    ld l, [hl]
    ld [hl-], a
    ld d, l
    ld d, d
    ld [$48fb], a

jr_00a_7bc6:
    db $e4
    push de
    sub d
    ld l, d
    ld d, a
    rst $38
    xor d
    xor h
    push de
    ld b, a
    call Call_000_0aeb
    ld b, l
    or l
    dec h
    ld d, l

jr_00a_7bd7:
    scf
    and b
    and e
    ld h, l
    dec l
    ld a, [bc]
    ld [hl+], a
    cp $aa
    jr c, jr_00a_7c11

    inc b
    ret


    ld a, [$98f4]
    ld d, l
    db $d3
    and c
    ld c, $32
    rst $38
    ld b, [hl]
    jp nc, Jump_000_19aa

    ld a, a
    jr c, jr_00a_7bd7

    ld a, [hl-]
    ld [hl+], a
    jp nc, $25e5

    di
    adc l
    or a
    ld [hl-], a
    or d
    ld d, $81
    ld c, d
    ld c, b
    add [hl]
    cp h
    bit 2, a
    ld e, d
    dec [hl]
    ld a, d
    add d
    add d
    call nc, Call_000_2789
    call nc, $d8c9

jr_00a_7c11:
    pop hl
    ld d, d
    ld e, l
    call nc, Call_00a_636a
    jr jr_00a_7c69

    ld l, d
    ld [$4cc9], sp
    rst $28
    sub a
    xor c
    ld [hl-], a
    ld l, d
    or h
    ld [hl+], a
    and l
    ld b, [hl]
    rst $18
    ld a, [c]
    db $ed

Jump_00a_7c29:
    rst $38

Jump_00a_7c2a:
    and c
    ld a, a
    jr nc, jr_00a_7bb9

    and [hl]
    xor d
    ld c, b
    and b
    add e
    and e
    ld a, [hl+]
    ld a, [c]
    ld e, $68
    add sp, -$7e
    sub h
    dec l
    ld c, h
    sub h
    sub l
    ld a, [bc]
    ld h, e
    inc b
    push hl
    ld b, e
    ld a, e
    ld c, e
    ld d, d
    ld l, b
    ld a, [hl+]
    add hl, hl
    ld c, b
    ld c, h
    inc de
    ld b, a
    dec de
    db $e3
    ld e, b
    add [hl]
    ret


    sbc c
    add hl, de
    ld d, c
    ld b, d
    xor c
    ld l, h
    sbc e
    di
    dec hl
    ld c, d
    add [hl]
    ld c, e
    reti


    ld c, b
    and e
    dec b
    add hl, bc
    ld h, $35
    ld d, e
    ld l, l
    rst $28

jr_00a_7c69:
    ld h, e
    ld h, $1a
    ld l, c
    ld d, e
    ld h, l
    ld hl, $43cb
    ld c, b
    add d
    ld c, c
    or h
    ld d, h
    adc b
    ld a, a
    ld sp, $1773
    dec hl
    jp nz, Jump_000_21c1

    add hl, bc
    adc h
    inc [hl]
    ld h, b
    db $e3
    dec de
    inc sp
    ld [hl], h
    adc e
    call nc, $862d
    ld hl, $7645
    and c
    adc h
    ld d, b
    sub b
    ld d, d
    ld e, b
    ld h, h
    scf
    and b
    ld b, c
    ld b, a
    dec h
    ld d, c
    ld h, d
    dec d
    sub e
    inc b
    ld h, b
    sub l
    sub c
    add c
    rlca
    ld h, $d7
    add hl, de
    sub b
    jp nz, Jump_00a_6b81

    reti


    sub d
    db $d3
    inc b
    ld h, $c3
    ld a, [hl]
    xor c
    call z, Call_00a_6252
    db $ed
    reti


    ld a, [hl+]
    ld d, l
    ld h, b
    ret


    xor b
    ld [hl], d
    inc de
    dec d
    ld b, c
    adc h
    xor e
    jp nz, Jump_00a_694e

    and b
    xor c
    ld e, d
    ld [hl+], a
    scf
    sub l
    sbc h
    ld a, [hl-]
    sub h
    pop bc
    jr nz, jr_00a_7c69

    sbc h
    xor d
    ld h, h
    or h
    ld a, [hl+]
    ld h, a
    ld a, [bc]
    ld l, c
    ld h, $9e
    sub d
    cp [hl]
    rst $38
    rst $38
    rst $38
    xor b
    jp nc, Jump_00a_6144

    ld d, c
    add hl, bc
    adc a
    ld [$fd17], a
    ld l, d
    ld h, c
    ld e, [hl]
    and c
    ld l, d
    ld b, h
    ld h, l
    sbc c
    call nc, $ff53

jr_00a_7cf7:
    add sp, $2a
    and h
    ld d, [hl]
    add l
    ld a, [$0982]
    rrca
    sbc c
    ld h, $17
    db $fd
    cpl
    rst $38
    ld [$873f], a
    rst $38
    xor d
    ld [$ac71], sp
    ld h, d
    cp a
    rst $38
    ld a, [$b717]
    pop hl
    rst $38
    db $fd
    inc c
    ld h, b
    pop bc
    inc d
    sub e
    ld a, a
    ld d, l
    ld a, a
    add sp, $78
    ld a, a
    rst $38
    ld sp, hl
    xor [hl]
    ld [hl], d
    ccf
    rst $38
    cp $fd
    rst $38
    cp $8c
    ld h, a
    ld [de], a
    add d
    and $17
    push af
    cpl
    cp $ff
    rst $38
    inc c
    ld c, $6d
    inc de
    ld a, d
    add hl, bc
    ld l, a
    rst $38
    rst $38
    rst $38
    db $fc
    ld d, a
    add $68
    and h
    ld l, a
    rst $18
    xor c
    dec l
    ld c, e
    rst $38
    db $f4
    ld h, c
    ld b, h
    and [hl]
    add hl, bc
    db $10
    db $76
    rra
    push af
    ld l, a
    rst $38
    rst $38
    add sp, -$41
    and l
    ld c, b
    jr nz, jr_00a_7cf7

    jp $d718


    ld a, a
    rst $38
    rst $38
    push de
    ld e, [hl]
    call nc, $6dac
    inc b
    ld h, c
    dec d
    ld a, a
    rst $38
    ei
    and h
    call c, Call_00a_5230
    add hl, bc
    sub e
    dec d
    ld de, $5f45
    rst $38
    rst $38
    cp $46
    ld d, d
    sbc d
    dec h
    inc hl
    ld [bc], a
    ld b, d
    ld a, [de]
    scf
    rst $38
    rst $38
    cp $0f
    sub e
    inc de
    jr jr_00a_7dc6

    sbc h
    jr jr_00a_7dfd

    and e
    ld a, a
    cp $df
    pop af
    rl l
    ld [de], a
    ld hl, sp+$7b
    ld [$ffd7], a
    rlca
    ld a, [$a870]
    ld b, b
    sbc b
    ld l, a
    rst $30
    rst $38
    cp $98
    ld b, l
    and d
    sbc c
    db $db
    ld l, b
    db $e3
    ei
    ld a, e
    ld h, e
    ld a, a
    ret nz

    sbc $42
    ld c, e
    ld b, [hl]
    sub b
    ld b, e
    rst $38
    adc a
    ei
    ld a, a
    xor b
    ld a, c
    ld a, [hl]
    ld d, e
    ldh [$9c], a
    ccf
    cp $85

jr_00a_7dc6:
    cp $cd
    rst $38
    db $e4
    or $ea
    cp h
    add h
    ld h, l
    inc h
    ld a, a
    cp $91
    ld a, a
    db $db
    cp $c2
    rst $38
    ld a, a
    db $ed

Call_00a_7dda:
    pop hl
    ld h, $36
    rst $38
    ldh a, [$5a]
    dec hl
    cp $ff
    cp $83
    ld a, a
    and e
    inc c
    ld [de], a
    ld [de], a
    ld h, c
    ld a, a
    pop af
    ld a, l
    adc l
    rst $38
    rst $38
    cp $c4
    ld h, $48
    ret


    xor e
    sbc c
    or h
    dec d
    ld a, a
    ld b, c
    inc e

jr_00a_7dfd:
    ld [hl], d
    ld h, l
    ld b, a
    sub a
    ld [$ba44], sp
    ld d, [hl]
    adc $06
    ld [hl-], a
    ld h, [hl]
    and e
    ld c, b
    ld d, b
    add c
    push bc
    ld b, $a7
    jp nc, Jump_00a_5962

    ld h, b
    ld [$995a], a
    db $e3
    ld a, [bc]
    ld b, c
    ld c, $75
    jp $0506


    ld d, d
    ld d, d
    call nc, $9920
    sbc $09
    ld d, [hl]
    ld hl, $9ab2
    ld b, $60
    ld b, c

Jump_00a_7e2d:
    res 2, b
    ld [hl], h
    ld [de], a
    sbc e
    pop de
    ld b, d
    adc e
    ld d, h
    jr c, jr_00a_7eb4

    xor e
    add e
    ld d, b
    sbc d
    ld [hl], b
    ld h, c
    ld c, b
    ld a, b
    add $82
    db $db
    ld sp, hl
    ld h, c

jr_00a_7e45:
    add d
    jr jr_00a_7e5c

    ld [c], a
    or l
    adc h
    ld l, b
    db $e4
    cp [hl]
    xor l
    ld d, l
    ld c, [hl]
    ld l, c
    add [hl]
    xor d
    adc [hl]
    adc b
    ld hl, sp-$27
    or d
    ld l, d
    and [hl]
    xor b

jr_00a_7e5c:
    or c
    add hl, bc
    ld l, a
    ld d, c
    ld c, h
    sub c
    inc d
    add h
    jr c, @+$63

    ld a, [bc]
    db $e4
    push bc
    jr z, jr_00a_7e93

    add hl, hl
    ld [$374c], sp
    and $4c
    rlc e
    call nz, Call_000_2f7c
    push hl
    db $e4
    jr nz, jr_00a_7e45

    ld [bc], a
    and h
    ccf
    di
    dec d
    ld d, d
    inc de
    inc b
    inc c
    cp $17
    di
    ld sp, $3532
    sub $13
    ld a, [hl]
    ld d, e
    ld b, $e6
    inc d
    ld d, $8b
    ld a, h

jr_00a_7e93:
    ld c, h
    adc a
    add $b1
    add [hl]
    ld b, h
    pop hl
    ld c, e
    sbc h
    or b
    or [hl]
    add l
    ld d, c
    adc $91
    pop bc
    ld d, c
    pop de
    sbc [hl]
    inc c
    ld a, h
    ld h, b
    ld hl, $656b
    ld b, $0f
    call Call_000_35d6
    ld a, [$d05f]

jr_00a_7eb4:
    and a
    jr nz, jr_00a_7ee7

    ld hl, $d068
    ld de, $cfea
    ldh a, [$f3]
    and a
    jr z, jr_00a_7ec8

    ld hl, $d063
    ld de, $d019

jr_00a_7ec8:
    ld a, [de]
    cp $16
    jr z, jr_00a_7ee7

    inc de
    ld a, [de]
    cp $16
    jr z, jr_00a_7ee7

    bit 7, [hl]
    jr nz, jr_00a_7ee7

    set 7, [hl]
    ld hl, $7ba8
    ld b, $0f
    call Call_000_35d6
    ld hl, $7ef2
    jp Jump_000_3c49


jr_00a_7ee7:
    ld c, $32
    call Call_000_3739
    ld hl, $7ef7
    jp Jump_000_3c49


    rla
    xor a
    ld c, c
    dec h
    ld d, b
    rla
    cp [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00a_7f88:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00a_7f95:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00a_7fa1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
