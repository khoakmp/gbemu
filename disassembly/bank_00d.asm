; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    ld d, l
    cp e
    inc de
    call nz, $745d
    ld [$1f54], a
    cp d
    add [hl]
    adc [hl]
    adc d
    xor [hl]
    ld a, a
    db $18, $8a
    add hl, sp
    push de
    ld [hl+], a
    ret c

    adc [hl]
    ld h, e
    sbc l
    ld [hl], h
    sub $43
    db $f4
    ldh [$62], a
    sbc b
    jp nc, $8d86

    ld e, [hl]
    jp z, $9266

    ld [de], a
    ld l, b
    ld l, b
    db $db
    sub b
    ld [hl], l
    add d
    ld e, c
    xor e
    ld c, b
    sbc b
    jp nc, $a1a1

    ret z

    sub h
    or l
    adc d
    sub e
    dec b
    ld h, d
    ld d, $31
    sub c
    ld h, e
    inc d
    rst $00
    add l
    scf
    and d
    push af
    adc h
    inc d
    add h
    or h
    push de
    ld h, h

jr_00d_404b:
    inc hl
    rlca
    sub [hl]
    add c
    ld d, [hl]
    add d
    ld [hl-], a
    and d
    ld h, b
    sub d
    xor [hl]
    rst $38
    call z, $2813
    jp z, $aa2e

    ld l, d
    ld e, d
    ld hl, $4685
    ld d, l
    adc b

jr_00d_4064:
    ld c, l
    ld h, h
    ld d, l
    ld e, c
    sbc b
    ld h, l
    add hl, hl
    ld h, e
    add d
    cp a
    db $fd
    adc h
    ld a, [hl+]
    and e
    push hl
    ld [hl], a
    call nc, $42da
    ld [hl], h
    and l
    db $e3
    ret z

    ld hl, $0e9d
    ld c, d
    push bc
    daa
    ld e, d
    inc l
    ld h, l
    ld h, e
    sbc h
    ld c, l
    dec c

jr_00d_4088:
    add $96
    adc [hl]
    ld l, d
    adc e
    db $e4
    jr nc, jr_00d_40ba

    ld [$8422], sp
    push de
    sbc d
    ld b, b
    ld [$0c1a], a
    and b
    add $0a
    ld l, l
    add a
    db $10
    add h
    dec d
    and l
    ld [hl], $94
    and [hl]
    jr z, jr_00d_4088

    jr c, jr_00d_404b

    or l
    inc a
    ld h, b
    ldh [$98], a
    adc $10
    rst $18
    call z, Call_000_2393
    jp z, Jump_00d_6734

    jr nc, jr_00d_4064

    db $d3

jr_00d_40ba:
    dec bc
    ld b, c
    inc bc
    rst $38
    ld h, $88
    ccf
    call nc, Call_00d_5bb0
    ld d, b
    ld b, c
    ld [hl], b
    call z, $af63
    and c
    cp $b1
    ccf
    ld sp, $b012
    ld sp, $4d84
    ld l, d
    ld c, e
    db $e4
    ret


    sub d
    ld l, a
    ld a, a
    rst $30
    call z, Call_00d_4a4d
    or h
    ld [hl], c
    call nc, Call_00d_7d32
    db $10
    ld b, h
    cp c
    dec de
    rst $38
    ld c, [hl]
    db $76
    ld a, [de]
    xor e
    adc $05
    ld d, [hl]
    dec b
    ld d, l
    ld [hl+], a
    ld [hl], $77
    rst $38
    adc e
    sub e
    add d
    jp c, $aa50

    sub l
    inc b
    pop hl
    and d
    ld a, [hl+]
    ld d, d
    ld h, e
    sub e
    ld c, e
    and h
    ld h, e
    adc d
    and h
    add $39
    ld d, l
    ld c, h
    inc de
    sbc c
    ld l, l
    ld d, l
    adc [hl]
    adc e
    ld a, a
    ret z

    ld b, c
    add hl, sp

Jump_00d_4117:
    ld e, $ab
    add $e3
    sub c
    ld e, l
    ld a, [c]
    ld e, b
    push hl
    and b
    or l
    inc d
    xor $a3
    ret z

    sbc h
    xor d
    adc d
    ld [hl], h
    or h
    xor e
    ld l, c
    ret nz

    sub h
    cp a
    rst $38
    or c
    cp h
    dec e
    ld d, d
    and h
    sbc $72
    ld a, [hl]
    xor l
    ld e, d
    rst $00

jr_00d_413c:
    ld e, $17
    rst $38
    db $eb
    ld h, a
    ld [de], a
    jp $ff7f


    and a
    dec h

Jump_00d_4147:
    ld de, $fc57
    ld [hl], c
    pop bc
    add d
    ld d, a
    rst $00
    inc l
    inc de
    sub e
    dec bc
    sbc h
    push af

jr_00d_4155:
    ld b, b
    rst $38
    sbc l
    rrca
    ld a, [hl]
    inc e
    ld [hl], h
    ld b, h
    rst $20
    ld a, l
    ld b, a
    jp $7780


    cp [hl]
    ld e, c
    ld c, h
    dec d
    dec sp
    rra
    call nc, $86c9
    ld hl, $b4fa
    dec d
    ld c, [hl]
    ld c, d
    dec b
    xor h
    pop bc
    ld a, [hl+]
    ld a, a
    pop af
    sbc a
    ei
    db $d3
    add d
    add e
    ld h, $04
    sub h
    adc d
    ld e, b
    ld a, [de]
    add a
    and b
    db $fd
    ld a, [bc]
    db $d3
    ld b, l
    ld [hl+], a
    add d
    ei
    ld b, e
    ld h, $4a
    xor c
    jr nc, jr_00d_413c

    inc b
    db $dd
    ld c, b
    ld e, b
    ld d, b
    ld d, c
    ld h, b
    ld c, c
    ld c, b
    adc d
    ld b, e
    and c
    ld c, l
    ld [de], a
    call nc, $a170
    add [hl]
    ld a, [bc]
    jr @-$62

    or h

jr_00d_41a8:
    and l
    ld [hl-], a
    ld d, c
    and e
    add hl, sp
    ld h, h
    sbc b
    jr jr_00d_4155

    ld h, e
    inc b
    jp z, Jump_00d_688a

    jr @-$54

    ld c, d
    adc b
    ld e, h
    ld d, h
    ld [hl+], a
    db $f4
    add $85
    add d

jr_00d_41c1:
    dec h
    ld hl, $b2ea
    ld [de], a
    inc d
    ld [hl+], a
    ld [hl], b
    xor h
    sbc d
    ld [hl-], a
    ld h, b
    ld e, b
    xor c

jr_00d_41cf:
    pop hl
    and d
    and b
    adc b
    or d
    ld [hl+], a
    xor b
    ld a, h
    ret


    ld b, c
    ld c, $a1
    ld d, l
    sub b
    sub d
    jr @+$2f

    ld hl, sp+$22
    ld d, c
    ld b, l
    adc h
    ld l, b
    ld e, h
    jr z, @+$16

Jump_00d_41e9:
    ld h, d
    ld d, d
    ld d, b
    ld d, e
    ld e, b
    add [hl]
    ld a, [de]
    jr nc, jr_00d_41a8

    push bc
    ld a, [de]
    dec hl
    add hl, hl
    inc b
    xor c
    ld [$09ce], sp
    ld sp, $4550
    ld [hl-], a
    add d
    inc b
    ld l, e
    ld d, l
    inc b
    adc $86
    adc h
    jr z, jr_00d_4245

    sub a
    adc d
    call Call_000_35e6
    ld [c], a
    add sp, $10
    jp $7589


    dec c
    and h
    jp hl


    ld c, l
    db $10
    ld e, d
    and d
    inc d
    dec hl
    ld [$64e3], sp
    ld [c], a
    ld b, [hl]
    dec h
    add d
    push de
    ld hl, $3305
    ld e, b
    add h
    adc l
    jr nc, jr_00d_41cf

    jr nz, jr_00d_41c1

    ld [de], a
    ld l, d
    ld d, d
    sub d
    sub $33
    ld d, e
    dec de

jr_00d_4237:
    ld c, d
    and c
    adc h
    ld d, [hl]
    adc h
    ld d, e
    inc d
    sbc b
    call $151a
    inc d
    adc d
    ld a, [de]

jr_00d_4245:
    ld b, [hl]
    jr nc, jr_00d_42ad

    ld e, d
    add hl, hl
    ld [hl], $52
    inc d
    jr nz, jr_00d_4237

    adc d
    cp b
    pop bc
    dec [hl]
    and e
    ld b, l
    jr nc, @-$2e

    ld d, d
    sbc b
    push bc
    ld a, [bc]
    ld d, d
    ld d, $9e
    jr c, jr_00d_427a

    ld a, [bc]
    cp b
    pop bc
    ld sp, $a88a
    db $e4
    and b
    sub h
    ld [hl], e
    ld b, h
    jp Jump_00d_6d3b


    ld b, e
    db $e3
    ld e, d
    ld d, l
    ld h, e
    adc e
    ld a, l
    ld a, [bc]
    db $76
    xor h
    ld l, d
    pop de

jr_00d_427a:
    ld a, b
    push bc
    and a
    daa
    ld de, $8b49
    xor [hl]
    cpl
    ld a, d
    ldh [$92], a
    rst $00
    rrca
    rla
    jr jr_00d_42b7

    ld a, [de]
    dec [hl]
    add d
    add h
    rla
    ld a, [$ba11]
    ld a, [bc]
    ld c, h
    inc c
    sub c
    sub d
    jp nz, $218f

    db $10
    push de
    ld [bc], a
    ld l, l
    ld [bc], a
    ret z

Call_00d_42a1:
    ld hl, $4c0a
    call nz, $85c0
    inc d
    add [hl]
    rrca
    ld h, $a9
    ld l, b

jr_00d_42ad:
    ret nc

    ld d, b
    jp nz, $1086

    ld c, c
    add hl, de
    add h
    ld b, d
    ld l, e

jr_00d_42b7:
    adc l
    ld [bc], a
    ld d, d
    ld [hl-], a
    ret nz

    pop bc
    pop bc
    rla
    inc b
    ld d, d
    add hl, bc
    sbc a
    ld a, [bc]
    inc l
    inc l
    ld d, l
    ld [hl+], a
    pop bc
    inc bc
    ld [hl], h
    ld a, [hl+]
    sub b
    sub b
    sbc c
    ld [hl], l
    inc bc
    ld b, d
    add d
    dec hl
    ld d, l
    ld a, [bc]
    ld de, $190c
    jr jr_00d_4340

    reti


    sub h
    ret nz

    and b
    adc d
    db $10
    ld b, h
    ld d, b
    ld b, e
    ld b, e
    ld c, b
    inc hl
    ld d, c
    ld [hl-], a
    sbc c
    and b
    and b
    or b
    pop bc
    ld h, h
    cp h
    ld d, $f9
    db $10
    ld b, h
    xor b
    ld [hl-], a
    ld a, [hl-]
    ld h, l
    ld [bc], a

jr_00d_42f9:
    rra
    ld b, $1a
    dec l
    jr nz, jr_00d_42f9

    add h
    add hl, bc
    and d
    ld [$c650], sp
    ld [hl], a
    ld de, $6183
    dec bc
    add d
    sub c
    dec h
    ld c, c
    ld a, [bc]
    rst $08
    inc de
    sbc c
    and h
    and b
    add d
    ld c, l
    db $10
    adc l
    ld l, c
    ld a, [bc]
    ld b, d
    inc d
    ld [de], a
    ld l, l
    or $8e
    rrca
    ld b, $3e
    ld c, [hl]
    add e
    dec b
    and l
    call nc, $a9a8
    adc [hl]
    dec l
    pop hl
    inc b
    jr z, jr_00d_4385

    or h
    dec e
    ld de, $ab05
    pop af
    ld e, h
    ld l, h
    add d
    ret z

    ld c, l
    jr jr_00d_438e

    jr z, jr_00d_4383

    ld [hl], h

jr_00d_4340:
    inc d
    ld d, h
    ld l, b
    jp nz, $a0a4

jr_00d_4346:
    pop bc
    and l
    and e
    ret nc

    ld [hl+], a
    jp $074b


    ld a, [de]
    ld d, l
    ld c, l
    inc h
    inc h
    pop de
    adc a
    and b
    adc h
    inc l
    ld e, h
    ld l, e
    dec h
    ld h, h
    ld b, b
    sbc b
    inc [hl]
    ld b, d
    ld sp, $b132
    ld d, c
    cp l
    ld a, [bc]
    ld h, c
    inc de
    inc hl
    db $f4
    add d
    ld [hl-], a
    ld h, c
    add hl, hl
    cp d
    add d
    ld [$7150], sp
    ld d, l
    ld b, e
    ld a, [$b913]
    ld d, a
    dec de
    ld h, b
    or c
    ld [hl-], a
    add hl, bc
    add d
    ret nc

    xor d
    ld c, l
    dec hl

jr_00d_4383:
    ld b, a
    ld [de], a

jr_00d_4385:
    ld e, h
    ld sp, $1e96
    call nc, $d176
    ld a, c
    xor d

jr_00d_438e:
    jr c, @-$17

    ld a, h
    xor l
    inc e
    db $10
    ld d, h
    ld [hl], c
    add b
    ld b, h
    sub [hl]
    ld d, d
    ld l, c
    db $fd
    ld b, c
    rst $38
    call nc, $0ac2
    and $a2
    ld de, $2781
    ld [$94a7], sp
    jr z, jr_00d_43d4

    or l
    dec d
    xor d
    jr nc, jr_00d_4401

    xor [hl]
    adc b
    and d
    jr nz, jr_00d_4346

    ld d, e
    dec b
    ld d, d
    ld [de], a
    and b
    ld e, b
    ld a, a
    and c
    ld c, d
    add c
    dec d
    ld l, $23
    ld a, [c]
    and d
    sbc [hl]
    ld [hl+], a
    dec b
    ld c, c
    ld l, d
    jp z, $9598

    ld h, $81
    add c
    rra
    and d
    db $e3
    dec bc
    ld l, [hl]

jr_00d_43d4:
    dec b
    and h
    ld a, b
    sub h
    jp c, Jump_000_2125

    ld a, b
    jr nc, jr_00d_4439

    inc [hl]
    ld h, b
    ld c, h
    ld l, d
    rst $18
    ld c, l
    ld sp, $5f6f

Jump_00d_43e7:
    ld d, a
    add d
    rlca
    ld d, e
    ld a, [hl-]
    ld h, $86
    and b
    sbc b
    add [hl]
    dec sp
    ld l, h
    add h
    inc sp
    xor [hl]
    and b
    and e
    push bc
    ret nc

    sub [hl]
    and b
    or c
    add d
    sbc c
    db $e4
    inc h

jr_00d_4401:
    call nz, $0c59
    inc [hl]
    sub h
    add h
    ret nc

    ld d, e
    ld [hl], l
    ld e, [hl]
    ld [hl-], a
    sub b
    sub d
    ret nz

    db $e4
    res 1, e
    ld d, l
    ldh [$f2], a
    ld d, h
    ld de, $4a54
    ld b, e
    ld a, l
    add [hl]
    and l
    jp z, Jump_00d_5843

    ld e, d
    jp $b9c2


    sub h
    ld l, $aa
    and b
    push de
    ld b, $9a
    ld h, e
    inc de
    ld d, b
    ld a, $2c
    sub c
    ld h, $34
    ld de, $847f
    jr z, jr_00d_4463

    daa

jr_00d_4439:
    ld d, $0e
    add [hl]
    ret nc

    ld a, $62
    jp Jump_00d_4117


    add h
    sub b
    and [hl]
    dec sp
    ld b, $1d
    ld c, d
    call z, $9c4d
    ld sp, $438c
    ld [de], a
    sbc l
    ld d, d
    or h
    ld a, h
    jr nc, jr_00d_44bc

    cp b
    call nc, Call_00d_53e1
    or d
    xor c
    inc [hl]
    ld a, [hl]
    or h
    db $ed
    add d
    scf
    ld d, h

jr_00d_4463:
    jp hl


    and d
    and e
    dec hl
    ld b, d
    ld d, e
    sbc l
    db $e4
    adc b
    ld h, d
    sub l
    ld a, [de]
    add hl, de

Call_00d_4470:
    jr c, jr_00d_4488

    xor b
    ld a, [hl+]
    adc h
    ld e, e
    xor e
    ld b, d
    adc b
    ld d, h
    ret


    and e
    ld b, $a1
    adc b
    ld h, c
    adc d
    ld a, c
    cp a
    ld a, [c]
    db $dd
    jr nc, jr_00d_44ee

    adc b

jr_00d_4488:
    add c
    ld c, d
    jp nc, Jump_00d_5668

    adc e
    ld h, b
    ld c, d
    ld h, a
    adc e
    and b
    ld c, b
    adc h
    ld a, h
    ret


    ld b, $15
    sub [hl]
    add hl, bc
    ld hl, $34f4
    and l
    ld [hl+], a
    xor e
    push af
    ld b, l
    ld d, [hl]
    and d
    ld a, [hl+]
    ld [hl+], a
    ld d, h
    ld h, [hl]
    ld [hl-], a
    add d
    ld d, l
    ld e, a
    di
    ld b, [hl]
    adc b
    ld l, b
    adc $1a
    ld d, $aa
    xor d
    ld [hl], $d5
    adc h
    ld d, $25
    ld a, [de]

jr_00d_44bc:
    add hl, bc
    ld d, l
    ld d, h
    add l
    cp a
    xor c
    xor a
    ld c, h
    rla
    ld c, c
    ld d, c
    adc c
    xor d
    db $fc
    sbc h
    adc h
    sbc d
    ld l, l
    dec h
    inc d
    sbc b
    inc d
    add l

Jump_00d_44d3:
    ld a, a
    add sp, -$68
    ld h, $31
    sbc e
    ld c, c
    adc l
    ld a, [hl+]
    ld d, l
    ld e, a
    ld c, b
    adc l
    sub e
    ld e, c
    ld c, e
    db $eb
    rst $30
    adc c
    sub e
    ld d, [hl]
    adc h
    ld e, [hl]
    sub c
    ld c, b
    rst $38
    db $e3

jr_00d_44ee:
    add hl, de
    scf
    adc b
    and l
    or h
    ld d, [hl]
    xor a
    rst $38
    inc sp
    and l
    ld l, $53
    dec de
    ld l, a
    rst $10
    rst $38
    and e
    add d
    sub h
    inc h
    adc b
    add $f7
    and d
    ld l, b
    push hl
    and c
    and d
    inc hl
    ld a, [de]
    rst $38
    cp $39
    and d
    db $e3
    jp z, $6348

    xor e
    ld a, h
    ld a, [hl+]
    ld [hl], b
    jp hl


    sub $8b
    ld h, $ce
    sbc l
    ld c, h
    ld sp, $69c1
    jp nc, Jump_000_24e8

    ld h, [hl]
    db $ec
    ld [hl], c
    xor d
    add l
    inc b
    ld b, h
    ld d, d
    ld b, [hl]
    sub d
    sbc h
    dec bc
    ld l, e
    ld b, b
    call nz, $b3c4
    sub [hl]
    rst $08
    ld a, [hl]

jr_00d_4539:
    ld h, l
    or h
    ld c, e
    ld [de], a
    or b
    ld hl, $02e1
    ld c, [hl]
    pop bc
    ld b, a
    dec de
    dec d
    dec bc
    db $10
    pop de

jr_00d_4549:
    call z, $b392
    ld e, [hl]
    sub d
    xor [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld b, h
    dec c
    ld a, [hl+]
    ld h, c
    dec b
    ld b, h
    ld b, e
    inc [hl]
    add e
    ld d, [hl]
    ld h, a
    ld d, d
    xor d
    cp $6a
    sub e
    scf
    rla
    jr c, jr_00d_4539

    ld sp, $61bc
    add d
    add $39
    add l
    ld b, b
    sbc e
    dec [hl]
    ld d, h
    call z, $3863
    add hl, hl
    ld [$35d0], sp
    ld d, l
    push hl
    ld h, h
    inc h
    jp nc, Jump_000_124c

    ld l, $e2
    and l
    ld d, l
    ld d, c
    add l
    inc a
    ld h, c
    inc h
    inc h
    ld d, e
    ld [hl+], a
    sub c
    ld b, b
    sub [hl]
    and l
    ld b, c
    ld h, $49
    jr z, jr_00d_4549

    jp z, $f594

    ei
    rla
    ld hl, $8229
    ld c, d
    ld [de], a
    call c, $a818
    ld a, a
    sbc e
    ld c, d
    inc d
    xor c
    adc d
    ld b, h
    add sp, -$57
    dec [hl]
    ld sp, hl
    or l
    ld a, [hl+]
    db $10
    ld b, [hl]
    or [hl]
    add hl, de
    ld a, [bc]
    and a
    dec [hl]
    ld b, a
    inc c
    ld b, l
    ld c, h
    ld [hl], e
    push hl
    rst $00
    inc d
    ld [hl], e
    pop de
    add hl, hl
    and $2b
    dec e
    ld h, b
    ld b, h
    or l
    ld l, c
    dec l
    ld a, a
    ld c, l
    reti


    sub b
    ld c, b
    ld a, e
    ld d, l
    inc sp
    ld e, d
    ld a, [bc]
    inc e
    ld e, b
    rra
    add $30
    ld a, a
    ld d, $a2
    ld h, d
    ld h, c
    ld d, h
    cp c
    ld [$e21d], sp
    inc h
    add $52
    and a
    db $eb
    ld [hl], e
    ld d, l
    ld l, a
    scf
    call $e82a
    cp d
    sub a
    di
    add d
    ld [hl], d
    and b
    sub c
    sbc d
    add hl, hl
    daa
    rst $38
    jp nc, Jump_000_24e8

    ld l, a
    ld b, l
    ld [hl-], a
    add sp, -$3e
    ret nc

    pop de
    ld d, h
    add h
    add $8c
    xor l
    or e
    add hl, de
    push af
    ld c, $8d
    ld l, c
    ld d, b
    ld c, c
    ld a, a
    ld [$e13c], sp
    sub b
    ld h, b
    rst $38
    ld a, [hl]
    add hl, sp
    ld h, d
    ld l, d
    adc a
    ld a, [hl+]
    ld l, h
    and [hl]
    adc c
    jp nz, Jump_00d_69c1

    add l
    ld b, [hl]
    adc c
    ld a, $c5
    ld h, h
    xor d
    ld h, b
    ret nz

    adc e
    rst $38
    inc h
    ld b, h
    ld d, d
    ld h, e
    inc c
    rrca
    db $fc
    ld a, $8a
    rra
    call nc, Call_000_3f54
    cp l
    db $e3
    add hl, sp
    ld sp, $feb3
    adc $33
    sub d
    add d
    and [hl]
    ld [$3f35], sp
    add sp, $4e
    ld d, h
    dec d
    jr jr_00d_466e

    inc hl
    ld a, a
    and b
    ret nc

    daa
    ld [bc], a
    ld [hl-], a
    scf
    cp $4c
    rst $38
    jp hl


    and d
    ld [$925e], sp
    and d
    and [hl]
    ret nc

    ld [hl], $1e
    add hl, bc
    inc [hl]
    and b
    xor c
    cp h
    rla
    jp hl


    ld c, a
    sbc h
    pop de
    add h
    ld a, h

jr_00d_466e:
    ld d, b
    ld h, [hl]
    cp [hl]
    dec l
    ld c, a
    ld de, $1e4c
    or h
    rst $28
    ld e, d
    push af
    ld d, [hl]
    sbc a
    call nc, Call_00d_53b5
    add l
    xor l
    dec b
    ld a, [de]
    xor e
    ld a, l
    dec l
    ld [$dd64], a
    ld b, $04
    ld a, [hl+]
    ld [hl-], a
    or d
    ld l, b
    and h
    ldh [rSCY], a
    ld [hl+], a
    ld h, e
    ld e, d
    ld a, [hl-]
    ld h, b
    ld l, e
    ld c, [hl]
    ld a, [de]
    dec b
    ld a, [hl+]
    add hl, bc
    ld c, h
    and b
    add c
    ld b, d
    adc [hl]
    ld a, [de]
    dec b
    dec h
    ld l, d
    jp nc, $9de8

    ld sp, $ff7f
    ld c, [hl]
    ld a, d
    add hl, de
    ld [$8724], sp
    add hl, bc
    ld d, l
    ld b, d
    adc b
    and e
    add d
    and b
    ret nc

    ld d, [hl]
    dec b
    dec h
    xor d
    and b
    ld d, b
    xor b
    call $b148
    push hl
    push de
    add d
    dec bc
    ld l, l
    ld hl, $42e1
    scf
    and b
    ld [c], a
    or h
    adc b
    add l
    dec bc
    push bc
    ld l, b
    adc c
    ld c, c
    ld e, [hl]
    jr jr_00d_4712

    jp nz, Jump_000_1a09

    dec d
    ld d, $31
    sub [hl]
    cp [hl]
    add hl, hl
    adc e
    and d
    ld a, d
    ld b, $9e
    adc c

jr_00d_46e9:
    ld e, c
    inc d
    ld l, b
    ld [c], a
    or h
    and h
    add hl, hl
    ld b, c
    ld e, d
    ld h, $42
    dec l
    ld c, l
    rst $28
    push af
    ld d, a
    db $e3
    ld b, h
    dec h
    ld a, [hl+]
    jr c, jr_00d_46e9

    and e
    add d
    ld b, [hl]
    xor b
    inc de
    ret


    and l
    ld e, b
    db $fd
    ld c, $7c
    ld h, d
    ld a, d
    ld c, c
    ldh [$a6], a
    ld a, [hl-]
    ld a, [de]
    xor c

jr_00d_4712:
    ld l, b
    and a
    ld [de], a
    db $10
    ld e, a
    add a
    ld b, e
    dec c
    ld h, [hl]
    ld d, [hl]
    and a
    inc b
    sub c
    ld l, b
    ld h, $52
    ld b, h
    ld d, a
    sbc h
    cpl
    sub a
    ld h, $69
    add hl, bc
    ld a, $6f
    inc a
    ld de, $667e
    add l
    inc hl
    ld a, [c]
    add d
    ld h, l
    db $10
    db $e3
    dec d
    ld a, [$0563]
    add e
    db $f4
    ld c, d
    ld h, l
    and $5f
    ld b, l
    ld b, l
    cp a
    dec de
    ldh [$d9], a
    ld c, $bf
    adc d
    ld c, d
    jr nc, jr_00d_476d

    pop af
    jp $af90


    rst $38
    cp d
    ld h, l
    db $fd
    sbc c
    or c
    jr c, @+$44

    pop bc
    rst $38
    cp $da
    ld c, d
    rst $38
    cp a
    xor c
    ld l, $95
    jr jr_00d_4786

    ld a, a
    ei
    ld a, b
    ld b, e
    rst $38
    rst $38
    rst $38
    db $fc

jr_00d_476d:
    ld d, h
    ld e, d
    ld de, $ff35
    rst $18
    ccf
    push af
    rst $38
    rst $38
    ld b, [hl]
    pop af
    inc c
    jr z, jr_00d_47d3

    rst $28
    pop de
    scf
    rst $38
    and a
    ld c, [hl]
    ld c, $a6
    or a
    rst $38

jr_00d_4786:
    ld sp, hl
    jp $8d0c


    add $f7
    rst $38
    db $fc
    ld a, c
    dec [hl]

Call_00d_4790:
    rst $38
    ld b, a
    sub a
    inc c
    ld a, [hl]
    adc b
    ld b, h
    cp c
    sbc a
    ld c, [hl]

jr_00d_479a:
    jp z, Jump_00d_4e15

    ld a, [$943a]
    ld e, h
    db $e3
    ld e, a
    ld a, [$4255]
    scf
    ld a, d
    ld b, c
    and l
    ld h, b
    ret c

    ld [c], a
    or [hl]
    inc e
    adc c
    jr c, jr_00d_479a

    ld de, $aca8
    inc d
    ldh [$50], a
    db $ec
    xor a
    ld d, h
    pop hl
    ld d, a
    add hl, hl
    push af
    ld a, [bc]
    ld [hl], $6a
    ld e, e
    jp nc, $e36f

    ld e, l
    ld a, d
    dec bc
    jp $3b09


    dec l
    ld b, d
    ld c, [hl]
    ld [$2a3e], a
    ld a, h

jr_00d_47d3:
    cp [hl]
    ld a, b
    ld a, [de]
    add hl, hl
    call nz, $0884
    jp $9b7f


    cp d
    ld [de], a
    ld a, [bc]
    ld a, [$1bd5]
    or e
    rst $08
    ei
    ld e, a
    ld a, c
    pop bc
    inc sp
    ei
    ld [hl+], a
    rst $00
    inc e
    rrca
    pop de
    add hl, bc
    db $d3
    dec h
    ret


    add hl, bc
    cp d
    ld de, $e113
    and b
    rst $00
    inc a
    jr nc, jr_00d_487c

    db $76
    pop bc
    ld d, c
    push af
    jr nz, jr_00d_487b

    or e
    ld d, l
    ld a, a
    push af
    add hl, sp
    ld d, h
    db $e3
    ld e, a
    xor d
    jp nc, Jump_00d_4e6a

    ld a, [hl+]
    and e
    add c
    add sp, -$46
    db $f4
    ld d, c
    adc [hl]
    ld a, [bc]
    ld b, $8d
    sub h
    pop bc
    ld c, c
    or h
    add h
    push hl
    cp l
    ld c, h
    sub h
    sub l
    ld a, [hl]
    db $d3
    dec b
    ld l, d
    xor d
    and l
    ld c, b
    and d
    ld l, d
    ld [hl-], a
    ld d, a
    ld [$f5ab], a
    ld sp, $4177
    ld h, $a8
    ld d, a
    ld a, [de]
    jr nc, @+$7c

    ld [hl-], a
    xor h
    pop bc
    ld hl, sp+$2e
    db $e4
    jr @+$27

    add sp, -$33
    db $e3
    ld l, b
    jp z, Jump_00d_4a05

    add c
    ld a, d
    dec l
    ld c, h
    push de
    db $fd
    ld d, c
    adc b
    ld d, d
    daa
    ld l, l
    ld l, $8b
    ld e, [hl]
    ld l, $d5
    add sp, -$76
    cp b
    add h
    add hl, de
    ld b, $07
    and d
    rst $38
    rst $38
    add [hl]
    ld [hl-], a
    xor d
    jp nc, $aa94

    ld l, e

jr_00d_486c:
    ld e, b
    pop bc
    ld d, [hl]
    rst $38
    ld h, $35
    ld d, d
    ld e, $2a
    ld [$2f3c], sp
    ld d, [hl]
    cp [hl]
    xor c

jr_00d_487b:
    sub c

jr_00d_487c:
    and h
    reti


    ld c, b
    and b
    adc h
    cp d
    add d
    ld hl, $5581
    add hl, bc
    adc c
    add c
    jr c, jr_00d_489b

    xor b
    ldh [$62], a
    ld a, [hl+]
    ld b, d
    ld a, [de]
    ld h, $34
    or h
    add l
    jr jr_00d_486c

    adc h
    and b
    sub e
    sub [hl]

jr_00d_489b:
    ld sp, hl
    ld d, l
    ld c, [hl]
    dec [hl]
    ld d, [hl]
    and b
    adc e
    ld c, l
    sub h
    ld a, [hl+]
    add c

Jump_00d_48a6:
    jr c, jr_00d_48c6

    cp $d3
    ld a, [bc]
    or h
    call $2141
    ld [hl], e
    inc [hl]
    adc d
    ld d, d
    inc hl
    ld d, l
    ld [hl], $bf
    and b
    adc [hl]
    ld d, h
    add $07
    adc l
    inc d
    pop bc
    db $eb
    jr nc, jr_00d_4907

    ld h, l
    ld h, a
    adc b
    ld l, l

jr_00d_48c6:
    ld [hl], e
    ld [hl], l
    dec b
    ld a, [hl]
    ld b, $32
    ld d, b
    cp a
    ld hl, sp-$7a
    dec c
    ld a, [de]
    scf
    cp a
    sub $da
    sub c
    ld l, d
    sbc c
    ld c, d
    ld e, c
    add d
    cp a
    adc [hl]
    ld a, [de]
    xor d
    jr nc, jr_00d_495f

    dec h

Call_00d_48e3:
    ld a, a
    jp nz, $6808

    ldh a, [rHDMA4]
    adc e
    ld a, b
    add $d7
    adc a
    dec bc
    ret nc

    ld a, b
    sub $8f
    ld a, [bc]
    add a
    db $e3
    pop de
    ld d, b
    ld a, b
    push af
    ld e, $3b
    or $69
    inc c
    xor h
    add hl, bc
    jp z, $ab9c

    dec b
    ld b, l
    ret nz

jr_00d_4907:
    sbc h
    ld a, b
    ld e, c
    jp nz, Jump_00d_55eb

    ld d, d
    ld e, l
    sbc h
    inc e
    ld [hl], $6f
    ld b, h
    db $fd
    dec hl
    dec h
    ld h, a

Jump_00d_4918:
jr_00d_4918:
    inc l
    ret nz

    sbc c
    ldh [$b5], a
    ld [$4908], a
    ld [hl-], a
    jr c, jr_00d_494d

    xor h
    jr z, jr_00d_494b

    pop bc
    ld h, [hl]
    ld d, h
    add [hl]
    dec d
    ld b, b
    ret


    inc c
    ld [de], a
    pop de
    add l
    ld [bc], a
    ld b, e
    ld h, c
    sub c
    sbc c
    dec sp
    ld c, d
    sub c
    ld h, b
    call nz, $a379
    add d
    rst $28
    ld b, h
    dec h
    and [hl]
    ld a, [bc]
    add h
    adc l
    ld a, [bc]
    rrca
    sbc d
    ld c, [hl]
    db $f4
    ld c, e

jr_00d_494b:
    add hl, sp
    ld e, c

jr_00d_494d:
    dec [hl]
    dec hl
    ld d, [hl]
    ld [$143e], sp

Jump_00d_4953:
jr_00d_4953:
    ld e, d
    ld e, e
    ld b, b
    xor e
    ld c, h
    ld h, c
    ld [bc], a
    dec a
    ld de, $8252
    ld b, h

jr_00d_495f:
    jp hl


    rrca
    jr jr_00d_49ae

    cp $2e
    ld h, l
    inc c
    ld e, e
    ld b, d
    add d
    sub c
    ld l, e
    jr jr_00d_4918

    rst $38
    xor b
    ld e, c
    or [hl]
    inc l
    ret


    ld a, b
    jr c, jr_00d_49c7

    xor e
    db $e3
    ld d, d
    add a
    ld a, a
    and [hl]
    adc [hl]
    jr nc, jr_00d_49c1

    inc h
    db $dd
    ld b, h
    ldh a, [$30]
    xor d
    adc l
    or h
    ld [de], a
    add hl, bc
    sbc [hl]
    ld b, d
    add [hl]
    jr z, jr_00d_4953

    ld b, l
    ld c, h
    ld c, l
    ld c, h
    ld b, h
    ld [hl-], a
    inc c
    ld h, a
    ld [bc], a
    ld c, l
    dec h
    and c
    ld b, $14
    ld h, a
    ld h, [hl]
    add hl, bc
    cp l
    adc d
    ld c, h
    ld d, h
    db $10
    add hl, hl
    adc d
    and [hl]
    adc c

Jump_00d_49a9:
    cp d
    add h
    jr c, @+$46

    ld b, [hl]

jr_00d_49ae:
    adc e
    dec bc
    ld b, [hl]
    jr c, jr_00d_49d9

    xor [hl]
    db $10
    add sp, $69
    ld [hl], h
    ld d, d
    ld d, l
    add h
    ld h, h
    add [hl]
    ld h, a
    ld d, b
    ld h, c
    add d

jr_00d_49c1:
    ld b, d
    ld l, h
    sub b
    ldh [$96], a
    sbc h

jr_00d_49c7:
    add hl, de
    add [hl]
    ldh a, [rHDMA2]
    add hl, hl
    ld d, b
    ld e, b
    ld [hl], b
    dec h
    db $eb
    dec de
    ld [c], a
    xor b
    ld h, h
    cpl
    ld de, $342a

jr_00d_49d9:
    xor l
    ld [de], a
    db $ed
    ld b, c
    sbc h
    dec a
    dec c
    ld b, e
    ld h, d
    ret nc

    add $4e
    ld e, $38
    ld h, a
    inc d
    ld c, h
    ld h, c
    inc bc
    sub c
    push de
    ld c, l
    ld hl, $9e05
    ld a, [bc]
    add d
    ld d, $31
    adc l
    ld e, $2c
    ld a, [bc]
    ld a, d
    sbc h
    add h
    ld a, d
    ld l, d
    ld a, d
    ei
    ld e, $00
    ld b, h
    or l

Jump_00d_4a05:
    ld d, l
    ld c, b
    ld a, l
    add hl, sp
    ld a, [hl+]
    xor e
    ld a, b
    db $e4
    ld d, h
    cp d
    dec h
    ld a, l
    ld [hl-], a
    ld a, [hl]

Jump_00d_4a13:
    xor d
    dec h
    rlca
    rlca
    add [hl]
    jr nc, @+$7b

    jr jr_00d_4a43

    db $f4
    jr z, jr_00d_4a71

    inc de
    ld [hl], l
    sbc c
    add c
    inc b
    and l
    ld sp, $d4a6
    ld hl, $6952
    ld l, h
    inc de
    add hl, de
    sub d
    ld hl, sp+$14
    jp nz, $d24c

    ld d, l
    sub $48
    ld e, a
    and e
    inc [hl]
    ld e, b
    cp d
    add l
    ei
    call z, $985e
    sub l
    ld d, b

jr_00d_4a43:
    ld a, [$32fc]
    rst $18
    dec e
    ld sp, hl
    rst $38
    ldh a, [$d6]
    ld e, [hl]

Call_00d_4a4d:
    dec h
    ldh [$df], a
    and b
    xor h
    ld sp, $86af
    ld l, $fe
    adc h
    ld l, d
    and l
    cp b
    ld hl, sp-$67
    xor d
    ld b, d
    ld d, h
    sbc h
    sub b
    and h
    inc h
    daa
    ld [de], a
    jr z, @-$1b

    sub c
    add h
    ld sp, $54a4
    add l
    db $e3
    db $ec
    ld l, b

jr_00d_4a71:
    adc d
    jr nc, jr_00d_4ace

    or $0e
    db $10
    and [hl]
    ld c, b
    dec hl
    ld [hl], a
    ret nc

    ld d, e
    add sp, $30
    and [hl]
    inc sp
    cp a
    ld a, [bc]
    or d
    or l
    and c
    ld sp, hl
    sbc a
    call nz, $ffac

jr_00d_4a8b:
    xor b
    ld h, [hl]
    ldh a, [$a8]
    ld a, [hl+]
    push af
    jp nz, $aaa9

    inc e
    rst $08
    rst $38
    or e
    ld l, l

Jump_00d_4a99:
    sbc c
    jr z, jr_00d_4ae6

    ld b, a
    ld e, [hl]
    jr nc, jr_00d_4ac1

    add hl, de
    jr z, jr_00d_4a8b

    ld l, b
    and d
    add [hl]
    add a
    ld a, [de]
    pop hl
    dec d
    ld c, b
    or d
    dec c
    add hl, de
    ld b, c
    rra
    ld a, [hl-]
    ld h, [hl]
    cp l
    and l
    ld d, l
    dec l
    ld d, l
    dec sp
    ld e, a
    xor d

jr_00d_4aba:
    ei
    ld l, e
    xor c
    or h
    jp hl


    ld a, b
    db $10

jr_00d_4ac1:
    add $ae
    and d
    sub d
    push de
    inc sp
    ld d, d
    sub [hl]
    db $e3
    inc d
    cp [hl]
    ld d, c
    ld a, d

jr_00d_4ace:
    and h
    and l
    or b
    adc e

jr_00d_4ad2:
    adc h
    rla
    sbc [hl]
    adc b
    ld b, e
    dec b
    ld d, $15
    ld l, b
    adc $8b
    ld [hl], a
    rla
    ld h, b
    ld [hl], l
    db $fd
    ld h, l
    ld e, e
    jr nc, jr_00d_4b48

jr_00d_4ae6:
    ld d, h
    xor a
    and b
    ld c, d
    ld [c], a
    xor d
    adc e
    ld c, d
    adc h
    inc d
    xor d
    ld d, b
    sub e
    sub d
    ld c, c
    adc h
    xor a
    ld c, e
    and [hl]
    ld c, l
    sbc [hl]
    ld a, [bc]
    ld [hl+], a
    ld [hl], $f3
    jr jr_00d_4ad2

    ld a, b
    ld a, b
    ld e, b
    db $dd
    ld c, d
    sub c
    and e
    ld e, $26
    ld [hl+], a
    jr c, jr_00d_4aba

    ld e, d
    inc a
    jp z, Jump_000_21aa

    ld c, h
    db $e4
    push bc
    ld d, h
    ld [c], a
    cp l
    ld sp, $b452
    add [hl]
    or e
    ld [hl], l
    ld a, a
    rst $10
    call nc, $e2aa
    dec de
    ld a, h
    xor b
    push bc

Jump_00d_4b27:
    ld a, [$a789]
    inc sp
    sub d
    daa
    adc b
    add sp, -$3a
    adc l
    inc d
    sub $32
    ld c, h
    sub h
    set 4, d
    inc h
    adc $42
    and [hl]
    adc h
    sub h
    add a
    ld c, e
    sub l
    ld a, [de]
    ld d, l
    ld c, d
    or l
    dec l
    ld c, b
    ld d, b

jr_00d_4b48:
    ld e, [hl]
    dec b
    dec h
    ld h, $a4
    ld a, [hl+]
    cp l
    ld d, [hl]
    ld a, [de]
    xor d
    ret


    ld a, [hl]
    adc c
    or l
    add sp, -$46

Call_00d_4b58:
    ld l, $94
    ld [$b5a1], a
    ld e, [hl]
    ld [hl-], a
    ld h, d
    sub l
    ld e, b
    push hl
    xor d
    inc [hl]
    sub l
    sbc b
    cp c
    ldh a, [$c9]
    add hl, bc
    call c, $bae4
    add d
    db $e3
    ld a, [$4f9d]
    xor l
    ld d, l
    pop af
    ld d, a
    rst $20
    ld e, h
    add $49
    ld [hl], a
    ld b, l
    ld a, d
    ld h, l
    jr jr_00d_4bf2

    ld c, d
    reti


    sub h
    ld b, e
    rst $38
    and h
    cpl
    and [hl]
    rst $08
    ld a, [hl+]
    sbc b
    ld a, [hl+]
    db $dd
    ld b, d
    cp a
    rst $38
    add $14
    xor a
    db $fd
    ld d, d
    ld c, e
    db $f4
    ld h, b
    rst $38
    rst $30
    and $50
    ld [hl], a
    rst $38
    rst $38
    and [hl]
    rst $38
    db $fc
    ld e, $6d
    dec b
    rst $38
    push af
    jp hl


    sub d
    ldh a, [$59]
    add hl, de
    call nz, $91fe
    ld sp, hl
    add e
    reti


    add hl, bc
    add hl, bc
    jp $fe07


    add e
    cp $63
    sbc l
    cp l
    ld h, b
    ld hl, sp+$79
    adc [hl]
    ld a, b
    dec [hl]
    db $10
    sbc b
    add hl, sp
    ld [c], a
    xor c
    add l
    rst $28
    and l
    ld hl, $a01b
    jp $c613


    ld [hl], $1f
    and b
    cp $6a
    or h
    rrca
    ld a, [$b5e9]

Jump_00d_4bdb:
    rst $38
    ld a, [$1069]
    rst $38
    rst $38
    ld a, [$556d]
    ld h, c
    ld a, [de]
    ld b, h
    ld [hl], l
    ld a, a
    rst $38
    and [hl]
    add hl, bc
    rst $08
    dec bc
    jr jr_00d_4c47

    cp $a8

jr_00d_4bf2:
    sbc $9c
    sbc d
    add hl, de
    ld de, $5f8d
    sub l
    ld b, $0b
    ld a, [$11aa]
    jr nc, jr_00d_4c47

    add hl, hl
    db $10
    cpl
    jp hl


    sub h
    rla
    rst $38
    rst $00
    dec [hl]
    ld [hl], l
    sbc d
    cp a
    ld sp, $80eb
    ld [hl], a
    cp b
    ld d, a
    push af
    ld d, l
    dec d
    inc a
    ld b, l
    rla
    and d
    ld a, [hl+]
    xor e
    ei
    ld c, h
    rra
    ld d, e
    adc l
    db $76
    dec b
    dec l
    ld d, l
    ld b, [hl]
    dec b
    dec hl
    ldh a, [$c3]
    push af
    rst $38
    xor b

jr_00d_4c2d:
    sub h
    ld l, b
    ld e, [hl]
    dec h
    and d
    jp hl


    dec bc
    ld c, e
    and $be
    adc h
    sbc [hl]
    ld hl, $a878
    ld d, l
    jr nc, @-$5a

    dec d
    ld a, [hl]
    and d
    sub l
    db $f4
    and h
    sbc d
    ld [c], a

jr_00d_4c47:
    ld h, [hl]
    jp c, $850c

    ld l, d
    xor d
    add hl, hl
    ld a, a
    xor b

jr_00d_4c50:
    adc d
    rla
    jp nc, Jump_000_261a

    ld h, e
    jr jr_00d_4c2d

    ld a, d
    scf
    ld d, [hl]
    cp d
    add hl, hl
    ld [hl-], a
    adc l
    add hl, de
    adc [hl]
    add hl, bc
    dec b
    and d
    sbc d
    ld [hl-], a
    ld c, h
    sub [hl]
    inc b
    and l

jr_00d_4c6a:
    inc sp
    sbc h
    cpl
    ld d, a
    ret z

    ld c, b
    ld b, [hl]
    inc sp

jr_00d_4c72:
    ld c, c
    ld d, l
    rla
    and h
    call $a746
    db $eb
    add sp, $18
    adc $2b
    db $eb
    push af
    dec d
    ld d, h
    and a
    pop de
    ld b, l
    jr c, jr_00d_4c6a

    add hl, de
    ld c, c
    xor c
    ld [hl+], a
    dec h
    ld e, d

jr_00d_4c8d:
    jp Jump_000_2925


    ld c, h
    ld h, e
    dec d
    ld a, a
    ld d, l
    ld c, h
    ld h, $0a
    or h
    adc [hl]
    rla
    add sp, -$36
    ld hl, $ba68
    xor c
    ld d, c
    ld a, d
    sbc b
    jr z, jr_00d_4c50

    and d
    jr z, @-$2c

    jr c, jr_00d_4c8d

    ld d, h
    jp z, Jump_000_2408

    jr z, jr_00d_4c72

    ld d, e
    or c
    ld c, e
    ld h, d
    ldh [$4c], a
    ld a, [hl+]
    ld b, c
    add hl, sp
    ld l, b
    add [hl]
    ld c, b
    jp z, Jump_00d_5c55

    adc $bd
    dec l
    inc [hl]
    or h
    sub h
    ld a, d
    xor b
    and $bd
    dec d
    ld c, l
    ld d, h
    dec h
    sub h
    ldh [$d5], a
    inc sp
    or l
    add c
    dec [hl]
    or h
    ld [de], a
    inc h
    sbc $42
    cp a
    push de
    ld b, [hl]
    add hl, bc
    inc b
    ldh [rOBP0], a
    ld b, d
    ld c, l
    sub c
    add c
    ld e, d
    sbc [hl]
    ld d, c
    sbc d
    ld d, h
    jp nz, $a087

    sub [hl]
    sub e
    ld b, $88
    ld h, d
    ld [de], a
    ld l, c
    ldh [rWY], a
    adc e
    and b
    xor b
    xor d
    cp c
    ld d, [hl]
    dec h
    ld d, d
    sub e
    dec bc
    scf
    or c
    or l
    ld l, $95
    ld hl, $4888
    ld c, h
    db $e4
    sub h
    jp z, $bd22

    jr nc, jr_00d_4d6a

    call nc, Call_000_2388
    ld l, d
    and e
    adc [hl]
    db $fd
    ld e, [hl]
    ld h, $b5
    ld [$f124], sp
    xor d
    ld [hl-], a
    xor a
    db $e3
    adc d
    ld [hl], c
    jr nc, jr_00d_4d6e

    add hl, hl
    ldh [rRP], a
    sub d
    and d
    sub [hl]
    xor d
    and c
    ld a, [bc]
    cpl
    ld b, a
    ld d, d
    pop de
    add hl, bc
    ccf
    rst $38
    cp $f1
    adc l
    cp $a0
    jp $6a0c


    pop af
    rra
    rst $38
    rst $38
    cp $99
    ld [hl], l
    ld [de], a
    ld sp, hl
    xor d
    cp $47
    rst $38
    rst $38
    rst $38
    db $f4
    ld d, h
    ld d, d
    xor l
    ld b, d
    sbc d
    ld c, [hl]
    ld b, a
    rst $38
    rst $38
    or $11
    sub d
    or a
    inc b
    ld l, c
    dec h
    inc a
    cpl
    rst $38
    rst $38
    or c
    sub [hl]
    db $fc
    ld [hl], d
    ld l, d
    db $f4
    cp a
    rst $38
    rst $38

jr_00d_4d6a:
    add h
    ld h, h
    db $fc

jr_00d_4d6d:
    ld e, l

jr_00d_4d6e:
    and $3a
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    adc e
    ldh a, [rBGP]
    dec e
    inc c
    dec e

jr_00d_4d7c:
    ret nz

    add d
    dec d
    ld b, $68
    db $fc
    ld de, $1209
    sbc h
    ld l, e
    ld b, d
    sbc e
    cpl
    inc bc
    rst $38
    ld a, [$52be]
    ld d, h
    sub h
    pop af
    pop bc
    ld a, h
    and c
    rst $38
    rst $38
    rst $38
    cp $8c
    ld d, e
    db $eb
    ld d, c
    add hl, bc
    ld c, c
    adc l
    ld hl, sp+$7f
    pop de
    scf
    ld d, l
    sbc b
    ld l, b
    jr nc, jr_00d_4d6d

    ld e, d
    ld b, h
    add hl, hl
    add l
    pop hl
    ld b, a
    ld [de], a
    ld [$62de], sp
    ret nz

    xor b
    cp c
    adc a
    sbc l
    ld e, h
    ld h, b
    ldh a, [$3f]
    rst $28
    and l
    scf
    sbc b
    jp c, $8f68

    jp z, $c4bf

    ld d, h
    rst $38
    sub e
    ld d, h
    and [hl]
    ld d, c
    xor h
    ld a, $ff
    db $eb
    rst $38
    db $e4
    ld d, c
    sbc l
    jr jr_00d_4d7c

    ret z

    ld a, e
    ld a, a
    db $fd
    ld d, $8e
    sbc d
    push bc
    ld h, $f7
    db $ed
    ld sp, hl
    sbc h
    or a
    ld [$5ea6], a
    and [hl]
    add sp, $7f
    or [hl]
    sbc c
    rst $18
    xor c
    scf
    ld e, [hl]
    xor l
    add hl, hl

jr_00d_4df2:
    cp a
    rst $38
    db $ec
    and [hl]
    ccf
    pop af
    ld [$5725], sp
    cp $e2
    sbc c
    ld d, e
    ld d, a
    rst $28
    ld l, d
    cpl
    ld a, [c]
    adc h
    add hl, hl
    adc h
    rra
    db $e4
    ld b, [hl]
    db $10
    ld h, c
    sub c
    rst $38
    or l
    db $fc
    cp a
    add sp, $3e
    and [hl]
    ld d, [hl]

Jump_00d_4e15:
    ld l, a
    db $10
    adc l
    ld d, l
    ld l, d
    or l

Jump_00d_4e1b:
    rst $38

jr_00d_4e1c:
    and c
    ld sp, hl
    and h
    adc e
    ld d, $e6
    ld de, $dfb5
    pop hl
    rst $20
    dec a
    ld a, [de]
    ld b, c
    jr nz, jr_00d_4df2

    dec a
    db $fd
    ld e, $a4
    ld de, $44c6
    cp l
    inc h
    ld [$b855], a
    db $e4
    pop af
    ld a, d
    and e
    ld b, l
    call $d128
    ld e, [hl]
    ld a, h
    call Call_00d_514a
    ld e, [hl]
    and l
    db $e3
    daa
    adc c
    ld a, c
    ld a, d
    ld [hl+], a
    adc l
    inc d
    or a
    add sp, -$5b
    dec [hl]
    ld d, b
    db $d3
    rla
    ldh a, [$8d]
    ld e, h
    ld a, a
    ld c, c
    ld a, b

jr_00d_4e5c:
    jp nz, $b5fc

    or b
    db $fc
    rra
    adc [hl]
    ld e, e
    ld b, d
    ld hl, sp+$29
    ld c, $e2
    ld l, b

Jump_00d_4e6a:
    jp nc, Jump_00d_52fd

    dec a
    rst $18
    ld d, l
    jr c, jr_00d_4e5c

    jr nc, jr_00d_4e1c

    ld hl, sp+$79
    jp hl


    daa
    ld a, [hl+]
    sub b
    adc e
    rst $00
    inc hl
    add $31
    and d
    ld h, e
    ld h, l
    ld h, $48
    dec sp
    ld b, $66
    add e
    or c
    ld l, e
    cp $11
    sbc d
    rrca
    ldh [$a0], a
    and c
    inc sp
    ld d, c
    and d
    rst $38
    pop bc
    inc b
    ld c, e
    inc a
    ld c, [hl]
    ld h, c
    ccf
    add sp, $3f
    or h
    ld de, $f90b
    add h
    add a
    rst $38
    ld sp, hl
    sub l
    sbc c
    ret z

    ld a, a
    ld a, [c]
    sbc c
    and [hl]
    rst $18
    db $ed
    ld e, e
    ld hl, $c612
    pop de
    dec d
    ld d, b
    jp $1f37


    ld c, h
    ld b, h
    dec l
    ld a, a
    ld sp, hl
    ld hl, $1605
    di
    rla
    xor [hl]
    ld b, [hl]
    ld [hl], h
    add hl, de
    cp [hl]
    db $ec
    jp $9289


    and c
    or h
    ld d, a
    dec [hl]
    ld b, e
    push bc
    call c, Call_00d_5e9e
    ld c, h
    db $fc
    add [hl]

jr_00d_4ed8:
    db $fd
    ld b, l
    cp b
    add hl, hl
    jr nc, jr_00d_4f3f

    or $22
    ld b, $ab
    add c
    ld [$a0c2], sp
    cp b
    dec e
    xor b

jr_00d_4ee9:
    ld l, b
    adc a
    adc l
    ld e, h
    dec sp
    ld sp, $0842
    jp z, Jump_00d_4147

    dec c
    db $fd
    ld a, b
    jr nz, jr_00d_4f46

    add hl, hl
    rrca
    cp $22
    cp l
    ld d, a
    inc c
    jp z, Jump_00d_43e7

    inc d
    sbc e
    scf
    jp $f7ff


    ld h, h
    sbc l
    scf
    xor d
    sbc b
    ld hl, $4387
    add hl, sp
    xor b
    jr nz, jr_00d_4ed8

    ld hl, sp-$12
    adc a
    ld [hl-], a
    ld l, h
    sub e
    and l
    ld h, $8c
    ld [hl-], a
    ld b, h
    ld b, e
    ld h, d
    add e
    and $08
    and h
    dec h
    ld h, h
    jr z, jr_00d_4ee9

    sbc d
    and c
    dec bc
    push bc
    ld e, e
    db $fc
    ld h, d
    sub [hl]
    ld a, [$fe5c]
    ld de, $908a
    rst $38
    rst $38
    xor e
    rst $38
    ld b, [hl]
    sub e
    rst $38

jr_00d_4f3f:
    rst $38
    rst $38

jr_00d_4f41:
    db $fc
    ld de, $f5ac
    ld a, a

jr_00d_4f46:
    rst $38
    rr c
    call nz, Call_00d_6858
    ld h, h
    ld d, [hl]
    cp $9a
    ld d, d
    ld d, $d9
    ld [hl], h
    ld d, l
    ld h, $2c
    adc e
    ld c, c
    adc d
    ld l, e
    ld [bc], a
    jr jr_00d_4f41

    xor c
    add d
    ld [hl], d
    or $f0
    jp $501d


    ld e, b
    ld [hl], c
    pop af
    ld b, b
    ld d, l
    dec a
    dec d
    inc a
    ld a, b
    inc de
    daa
    inc d
    sub h
    or l
    jr nc, @-$7c

    or b
    ld c, c
    ld b, c
    ld l, l
    or b
    ld [hl], b
    ldh [$5a], a
    ld c, h
    jp nc, Jump_000_3a12

    ld d, $1c
    sbc b
    xor b
    jp z, $120c

    cp b
    dec e
    ld a, [hl+]
    xor l
    db $f4
    ld e, $31
    jp $aa62


    sub d
    ld de, $6894
    inc hl
    ld c, d
    ld c, e
    ld [hl], l
    dec b
    or d
    ld l, a
    db $f4
    sub $7c
    xor d
    add [hl]
    ld l, c
    ld b, c
    ld e, a
    jr c, jr_00d_4fce

    adc d
    push bc
    ld a, c
    add hl, bc
    ld a, [hl]
    ld b, e
    ld d, e
    ld e, e
    add hl, bc
    add hl, de
    dec bc
    add hl, bc
    adc b
    adc d
    cp d
    dec [hl]
    sub b
    ld b, c
    ld [$8529], sp
    db $fd
    ld d, e
    sub [hl]
    db $e3
    rra
    ld a, [$9722]
    adc [hl]
    add hl, de
    ld sp, $eef4
    xor c
    ld b, c
    ld d, $c1

jr_00d_4fce:
    and e
    cp d
    inc b
    ld a, [de]
    ld a, [bc]
    inc a

jr_00d_4fd4:
    jr z, jr_00d_5001

    jr jr_00d_4fd4

    ld b, $79
    db $ed
    sbc [hl]
    ld l, $2f
    ld a, [de]
    ld [hl+], a
    adc d
    ld h, d
    sbc c
    rst $38
    ld [de], a
    and l
    inc hl
    ld [bc], a
    ld d, d
    and $6f
    jp hl


    jr @+$81

    ld a, $92
    add a
    ld hl, sp+$26
    inc sp
    rlca
    ld b, h
    rst $18
    rlca
    ld sp, hl
    ld [de], a
    or a
    ld h, [hl]
    ld l, b
    ld h, [hl]
    inc [hl]
    rrca
    ret nz

jr_00d_5001:
    sub c
    ld a, [hl]
    ld de, $62ba
    cp [hl]
    ld b, [hl]
    ld [hl], e
    ld b, c
    inc h
    jr nc, jr_00d_5080

    ld a, [$4bb0]
    cp c
    cp h
    jr @-$4e

    rst $18
    db $fd
    ret nc

jr_00d_5017:
    ccf
    ld [$066f], a
    jp Jump_000_02bd


    add hl, bc

jr_00d_501f:
    rra
    rst $38
    or c
    pop bc
    jr nz, jr_00d_501f

    cp a
    pop af
    ld [$7175], sp
    push bc
    ld a, a
    rst $38
    adc d
    push bc
    rst $00
    dec [hl]
    ld a, a
    cp $9e
    inc c
    scf
    cp $a0
    and a
    add e
    ld a, [hl]
    add hl, hl
    ld [c], a
    ld d, [hl]
    or c
    ld hl, sp+$08
    ld b, h
    cp [hl]
    cp l
    ld d, e
    or [hl]
    cp e
    ld e, a
    ld d, l
    ld [hl], e
    adc d
    db $fd
    add hl, bc
    sbc d
    db $fc
    db $e4
    cp l
    rst $10
    rst $38
    adc $6b
    ei
    ld a, [$973d]
    adc [hl]
    rst $30
    call nc, $9feb
    xor c
    adc $ea
    ld a, $9a
    ld a, [hl]

jr_00d_5064:
    ld a, [hl+]
    and l
    daa
    dec sp
    rst $38
    call nc, $2978
    sub $af
    rst $20
    ld e, a
    rst $38
    sbc l
    cpl
    rst $38
    rst $00
    ld c, a
    ld d, l
    sbc a
    sub e
    add b
    ld h, [hl]
    xor c
    db $d3
    add l
    ld [c], a
    push de

jr_00d_5080:
    jr c, jr_00d_5017

    ld b, l
    db $d3
    dec h
    and c
    ld a, [hl]
    db $eb
    ld c, [hl]
    dec d
    ld h, h
    inc de
    dec h
    ld d, d
    rst $38
    db $ec
    pop hl
    ld e, [hl]
    push af
    adc b
    ld e, a
    ld [hl], b
    ld a, l
    and [hl]
    sbc b
    inc a
    add a
    db $d3
    ld a, [bc]
    ld l, [hl]
    db $fd
    sub h
    dec [hl]
    ld a, [de]
    add d
    add [hl]
    ld d, a
    adc d
    db $76
    add hl, hl
    ld b, [hl]
    jr jr_00d_50fd

    ld a, [hl]
    jr nc, @-$75

    ld d, h
    sbc c

jr_00d_50b0:
    ld e, e
    dec h
    ld b, l
    add l
    and e
    ld a, [bc]
    sub h
    sbc c
    ld hl, $bc32
    and [hl]
    ld b, $4d
    ret c

    xor d
    cp l
    ld a, [de]
    ld a, [de]
    ld c, e

Call_00d_50c4:
    and c
    and l
    ld c, e
    ld d, l
    adc l
    ld l, [hl]
    ld [$aa68], sp
    ld hl, $aa49
    ld e, a
    jr c, jr_00d_5064

    and h
    pop bc
    ld b, d
    jp nz, Jump_00d_5439

    pop bc
    inc d
    pop bc
    pop hl
    xor d
    adc d
    ld b, [hl]
    ld sp, $31aa
    adc h
    ld e, b
    add l
    add sp, -$55
    ld l, b
    or l
    ret nc

    jp nc, $cb94

    pop bc
    and d
    jr nz, jr_00d_5133

    dec d
    and d
    dec e
    jp c, Jump_000_361d

    ld h, b
    ld b, l
    ld d, d
    sub h
    ld l, d

jr_00d_50fd:
    add l
    ld e, [hl]
    db $76
    jr c, jr_00d_5130

    sbc [hl]
    sub l
    jr jr_00d_50b0

    and c
    xor [hl]
    ret nc

    ld hl, sp-$7c
    add l
    add hl, hl
    ld d, h
    or l
    cp b
    sbc d
    and d
    ld l, e
    ld c, h
    ld l, [hl]
    di
    and [hl]
    db $fc
    xor b
    cp b
    jr jr_00d_5130

    and l
    ld [hl-], a
    ld c, h
    db $e3
    ld d, h
    xor d
    ld b, c
    ld d, b
    ld a, l
    ld b, c
    ld [hl+], a
    db $f4
    dec h
    scf
    ld [hl], h
    ld [hl-], a
    dec e
    rlca
    or a
    db $db

jr_00d_5130:
    sub l
    ld [hl+], a
    db $db

jr_00d_5133:
    push hl
    add hl, hl
    ld e, a
    add [hl]
    and c
    sbc b
    ld l, l
    xor a
    push de
    push de
    ld e, a
    and b
    ld h, a

jr_00d_5140:
    db $eb
    xor b
    jp nz, $89ff

    cp l
    ld e, d
    xor d
    and h
    ld d, h

Call_00d_514a:
    add hl, de
    ld a, [$6a3a]
    rst $38
    ld d, l
    ld e, a
    ld a, d
    adc [hl]
    ld l, c
    ld c, h
    ld [hl], c
    ld sp, $1cd9
    ld c, b
    ld b, l
    pop af
    pop de
    ld a, [bc]
    ld [hl], c
    ld a, [hl+]
    ld a, [de]
    sbc h
    ret z

    push bc
    ld h, $97
    db $fc
    ld [hl], c
    and h
    ld sp, $3e8a
    ld c, a
    or c
    sub d
    ld l, d
    sbc d
    inc h
    ld e, c
    dec l
    sbc c
    ld a, d
    ld h, b
    db $e3
    jr nz, jr_00d_5140

    ld [hl], b
    ld c, b
    or d
    add h
    ld h, c
    ld sp, hl
    add a
    inc hl
    add $e9
    inc c
    sbc c

Jump_00d_5186:
    ld a, a
    push bc
    rst $38
    and e
    ld a, [bc]
    ld d, d
    add h
    ld d, e
    dec h
    and c
    rst $38
    jr @+$01

    ld [bc], a
    ld h, c
    ld d, h
    ld de, $9571
    pop af
    sub h
    ld d, a
    and a
    ld h, l
    add hl, de
    ld a, $4f
    ld sp, hl
    ld [$1ac7], sp
    ld l, e
    ld [c], a
    rst $38
    and $11
    add d
    adc d
    ld d, a
    sbc d
    dec sp
    rst $38
    sub e
    ld a, [hl+]
    ld [hl-], a
    dec l
    dec b
    ld sp, hl
    ld e, [hl]
    ld h, a
    rst $30
    push de
    sub l
    ld a, [hl]
    ld [hl-], a
    db $10
    cp h
    ld de, $9a3f
    pop af
    ld a, [hl-]
    ld d, a
    ld hl, sp-$37
    add hl, bc
    add e
    pop af
    and a
    dec d
    ld b, c

jr_00d_51cd:
    rst $28
    rst $38
    adc l
    rst $38
    pop af
    rrca
    pop hl
    xor c
    adc [hl]
    ld h, l
    rst $38
    rst $38
    ld [$abff], a
    rst $38
    rst $18
    ld sp, hl
    add h
    ld h, l
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    pop de
    add hl, bc
    ld [hl-], a
    inc l
    ld e, l

Jump_00d_51ed:
    add l
    ld a, a
    rst $38
    rst $38
    db $fc
    dec [hl]
    add sp, $47
    inc b
    ld h, h
    rst $10
    rst $38
    ld d, c
    adc a
    jp hl


    adc h
    add hl, hl
    sbc [hl]
    ld sp, $8add
    ld d, [hl]
    jr c, jr_00d_51cd

    reti


    rst $18
    ld de, $3a0c
    inc [hl]
    ld [hl], h
    nop
    ld b, h
    cp c
    push de
    ld d, h
    ldh [rOBP0], a
    ld b, c
    sbc a
    xor d
    ld b, d
    dec [hl]
    ld e, a
    inc b
    dec [hl]
    ld a, e
    ld d, l
    adc l
    ld l, e
    rst $28
    rst $18
    ldh a, [rSVBK]
    add e
    dec [hl]
    ld h, c
    ld a, [$a989]
    call nc, $6ad5
    scf
    and e
    ccf
    dec sp
    sbc [hl]
    ld c, [hl]
    db $db
    add d
    dec sp
    ld d, [hl]
    sub e
    add [hl]
    inc [hl]
    ld l, b
    ld de, $0442
    or [hl]
    inc [hl]
    sub l
    ld h, a
    ret z

    or a
    add sp, $53
    add c
    ld b, d
    jp Jump_00d_67f8


    di
    add c
    ld h, $31
    and e
    pop hl
    ld [hl], a
    xor d
    or l
    ld d, h
    sbc h

jr_00d_5255:
    add hl, hl
    ld [$0a36], sp
    sbc h
    dec c
    inc b
    ld [hl], $e8
    dec a
    rlca
    sbc d
    ld l, e
    dec c
    rla
    ld b, c
    ldh [$9b], a
    ld b, a
    inc d
    ld l, d
    add h
    rst $00
    ld d, e

jr_00d_526d:
    dec e
    ld a, [c]
    and a
    ld [hl], d

Call_00d_5271:
    rst $00
    ld l, d
    ld c, d
    ld [$092a], sp
    rst $00
    inc [hl]
    add h
    ld de, $5410
    xor e
    sbc l
    db $fc
    ld a, l
    jr nz, jr_00d_52e9

    cp a
    dec c
    ld [hl], h
    db $dd
    db $f4
    cp e
    ld c, e
    ld d, e
    dec b
    call $5b5f
    ld l, c
    ld b, l
    dec d
    ld d, [hl]
    db $eb
    ret nc

    ld a, [hl]
    add a
    inc sp
    cp a
    cp $0a
    ld l, b
    sub a
    xor b
    xor d
    cpl
    db $e3
    ld b, l
    adc h
    sub e
    ld [hl], $26
    rla
    adc l
    ld e, $31
    add c
    dec bc
    ld hl, sp-$56
    ld [$858b], sp
    ld [hl-], a
    ld d, e
    jr z, jr_00d_52d8

    dec [hl]
    jr jr_00d_5255

    ld l, [hl]
    adc h
    inc d
    pop bc
    ld h, b
    adc h
    ld d, [hl]
    ld [$f912], sp
    ld c, [hl]
    dec b
    add e
    db $d3
    rlca
    inc c
    add h
    push bc
    dec b
    jr nc, jr_00d_526d

    ld e, a
    sub $b5
    pop af
    db $fc
    dec l
    sub h

jr_00d_52d4:
    cp b
    ld l, b
    ld [hl+], a
    rst $28

jr_00d_52d8:
    and b
    rst $38
    ld a, [$be8b]
    dec d
    push bc
    ld a, d
    ld [hl+], a
    ld [hl], $fb
    dec h
    ld l, d
    sub e
    ld a, [bc]
    ld h, a
    xor b

jr_00d_52e9:
    jr @-$29

    ld a, [$8c16]
    inc hl
    rla
    add [hl]
    ld l, l
    dec [hl]
    xor a
    ld b, $34
    pop de
    ld [hl], b
    ld d, d
    ld [de], a
    ld l, d
    ld c, h
    xor b

Jump_00d_52fd:
    jr jr_00d_52d4

    dec bc
    pop hl
    ld d, h
    add h
    xor h
    jp z, Jump_000_3581

    ld c, h
    db $eb
    sbc $50
    db $e3
    ld a, [de]
    ld [hl], $60
    or h
    add $b1
    rst $10
    dec b
    ld l, $88
    ld c, h
    db $10
    ld c, d
    or h
    adc h
    ld l, c
    ld a, d
    add e
    ld d, d
    sub h
    ld d, h
    dec l
    ld l, d
    ld d, b
    ld e, [hl]
    inc d
    add hl, hl
    ld hl, $68e8
    ret


    ld a, [hl]
    rlca
    adc e
    ld a, d
    and b
    ld b, l
    ld a, l
    and e
    adc d
    ld hl, $288c
    ld l, c
    jp c, $af15

    ld e, d
    sub b
    ld d, h
    add sp, $78
    pop bc
    ld d, a
    xor c
    ld e, a
    add d
    ld a, [hl]
    ld a, [de]
    sbc l
    ld [hl], h
    sbc [hl]
    ld a, [bc]
    ld d, d
    sbc b
    add hl, hl
    add hl, bc
    ld de, $0c29
    ld l, a
    ld b, b
    rst $38
    ld [$df44], a
    sbc b
    ld a, d
    rrca
    inc e
    ld e, a
    rst $38
    jp z, $fa3b

    ldh a, [rNR42]
    ld a, a
    inc e
    sbc a
    rst $38
    add l
    xor l
    cpl
    ret nc

    inc h
    ld d, c
    jp z, $e6ff

    rrca
    db $dd
    ld [bc], a
    ld c, d
    ld d, d
    ld [hl], b
    ld a, a
    ld b, [hl]
    ld sp, $1053
    sbc $17
    sbc e
    inc [hl]
    ld l, [hl]
    adc d
    call nz, $efe3
    sbc h
    ld c, d
    inc d
    ld e, d
    ld b, l
    db $e4
    pop hl
    pop hl
    ld sp, hl
    rl b
    xor d
    inc [hl]
    ld [hl-], a
    inc l
    push af
    add [hl]
    ld [hl], e
    dec l
    ld a, [hl+]
    ret


    ld [hl-], a
    rst $08
    cp $9c
    call z, $ff0f
    ldh [$a5], a
    ld c, h
    ld d, $1c

jr_00d_53a5:
    ld [hl], c
    or e
    add a
    rst $38
    di
    rst $38
    ldh [$c4], a
    ld e, h
    ld [hl-], a
    ld l, h
    rst $08
    add a
    rst $38
    di
    rst $38

Call_00d_53b5:
    ld b, h
    inc h
    db $e4
    ld c, h
    ld l, b
    rst $08
    db $ed
    rst $38
    pop bc
    ld a, a
    jr jr_00d_540b

    ret nz

    add l
    ld a, [de]
    ld h, c
    rst $38
    or l
    push bc
    ld a, d
    ld e, a
    rst $38
    db $eb
    ld b, [hl]
    sub e
    ld e, a
    ld d, c
    ld c, d
    ld a, $8c
    cpl
    ldh a, [$7f]
    ld h, $49
    inc d
    ld h, b
    pop de
    rrca
    or h
    cp a
    dec d
    ld h, c
    sbc h

Call_00d_53e1:
    pop de
    ld c, a
    ld b, e
    inc a
    ld h, a
    dec e
    ld c, h
    ld e, l
    ld e, [hl]
    adc l
    jp hl


    db $e3
    ld c, b
    ld b, [hl]
    add b
    ld b, h
    and l
    ret nc

    sub l
    ld d, e
    dec h
    ld a, h
    sub l
    ld d, h
    jr nz, jr_00d_53a5

    xor a
    ld c, c
    ld a, d
    adc h
    ld a, [hl+]
    inc [hl]
    ld b, d
    ld [hl+], a
    db $e4
    jp nz, Jump_00d_44d3

    adc c
    ld a, l
    ld b, d
    ld c, d

jr_00d_540b:
    ld l, l
    jr nc, @+$67

    xor a
    ld a, [hl+]
    and d
    ld e, d
    dec bc
    jp nc, $1716

    xor b
    rla
    adc e
    ld e, e
    db $dd
    ld a, a
    ld d, h
    ld hl, $8cc6
    ld a, b

jr_00d_5421:
    adc b

Jump_00d_5422:
    ld h, c
    xor d
    db $d3
    add d
    jr c, jr_00d_5450

    db $dd
    ld c, [hl]
    ld [$b5e0], sp
    xor d
    and l
    ld c, h
    sub d
    inc de
    add hl, bc
    ld c, h
    ld a, h
    cp c
    cp [hl]
    inc sp
    and l

Jump_00d_5439:
    ld b, d

jr_00d_543a:
    ld hl, sp+$5c
    jr nz, jr_00d_5421

    sub e
    add d
    db $dd
    add sp, -$1b
    adc d
    xor b
    di
    ld h, h
    and h
    inc h
    and [hl]
    ld c, b
    ld sp, $a648
    rla
    cp d

jr_00d_5450:
    ld d, d
    adc e
    ld [de], a
    sbc d
    ccf
    push hl
    sbc $e5
    ld b, [hl]
    ld c, a
    rst $38
    ld de, $d90e
    cp e
    db $fd
    ld c, $0b
    ccf
    dec de
    ld a, a
    ld b, h
    xor h
    cp a
    inc e
    db $10
    and d
    add a
    ld d, c
    pop de
    ld a, [hl]
    sbc h
    add hl, hl
    and a

Jump_00d_5472:
    cp $75
    ccf
    cp $61

jr_00d_5477:
    ld a, [de]
    ld [$5f0d], a
    sbc b
    ld a, $a6
    xor l
    ld d, h
    push hl
    inc hl
    inc b
    ld [hl], d
    and h
    jr c, jr_00d_54ce

    ld e, a
    ld b, a
    add $80
    ld h, [hl]
    cp e
    sbc a
    db $fd
    dec sp
    ld e, a

Call_00d_5491:
    call nc, $2ab5
    adc [hl]
    and l
    db $e4
    dec hl
    rst $10
    jp z, $9388

    sub l
    ld a, [$ada8]
    jr jr_00d_543a

    ld de, $92a3
    db $e3
    ld a, [hl+]
    add hl, hl
    ld c, h
    sub $e3
    ld h, l
    ld sp, $a3a2
    ld a, [hl+]
    xor b
    inc a
    push de
    ld b, c
    ld l, $8a
    or d
    ld e, c
    add hl, hl
    ld a, [bc]
    adc l
    ld d, a
    ld d, e
    ld c, d

jr_00d_54be:
    or h
    adc e
    adc d
    cp b
    sbc $1b
    ld d, l
    ld [hl-], a
    ld c, b
    and d
    ld h, b
    ld h, b
    ld b, c
    jr c, jr_00d_5477

    pop bc

jr_00d_54ce:
    ret z

    adc [hl]
    rlca
    di
    adc c
    ld a, [hl]
    and b
    ld d, l
    ld c, l
    db $10
    ldh [$f3], a

jr_00d_54da:
    add a
    pop hl
    ld e, d
    ld a, [hl+]
    ld c, d
    ld a, a
    and d
    add hl, hl
    dec [hl]
    ld e, d
    add [hl]
    jr c, jr_00d_550f

    push hl
    ld a, [hl]
    add d
    jr jr_00d_54be

    ld c, l
    xor b
    adc $f5
    ld d, e
    ld h, l
    ld c, b
    or h
    add l
    ld a, b
    pop de
    ld a, [$0905]
    jr nc, @+$67

    ld l, $fc
    jr z, jr_00d_54da

    db $ed
    ld e, d
    ld a, [de]
    ld d, [hl]
    sbc $33
    and e
    add [hl]
    add d
    and b
    and b
    cp a
    ld a, [$f527]

jr_00d_550f:
    rlca
    adc [hl]
    dec hl
    ld c, d
    cp b
    sbc $b3
    sbc [hl]
    call nc, Call_000_06d1
    sub d
    ld d, $d3
    sbc d
    or l
    inc sp
    ld b, l
    ld hl, $bd46
    add hl, sp
    ld l, e
    push de
    ld d, a
    sbc [hl]
    inc sp
    db $fc
    jp hl


    xor d
    xor d
    xor a
    push de
    ld d, [hl]
    sbc $3c
    ld l, d
    xor d
    xor b
    xor c
    call c, $a7ea
    add e
    ld [bc], a
    ld e, d
    rra
    cp $75
    and h
    sbc $e3
    inc h
    ld e, e
    rst $00
    ld c, h
    ld h, e
    ld a, h
    ld h, [hl]
    adc [hl]
    ld a, b
    inc e
    ld b, e
    ld a, $5e
    ld d, d
    ld [hl], h
    or c
    db $10
    ld sp, $0f96
    and a
    ld c, [hl]
    ld d, d
    ld l, c
    add a
    ld sp, hl
    cp h
    ld [hl], d
    inc h
    jp $c787


    ld [hl-], a
    ld c, e
    and d
    adc h
    ld h, e
    db $e4
    or c
    pop de
    inc b
    ld l, a
    db $e4
    and a
    ld c, d
    sub h
    xor c
    ld c, a
    call nz, Call_000_33a7
    ld c, b
    ld a, a
    db $ed
    db $e4
    ld b, [hl]
    add hl, sp
    cp d
    sub e
    add e
    ccf
    rst $38
    add a
    sbc d
    ld a, c
    and e
    rla
    add h

Jump_00d_5587:
    rst $08
    rst $38
    call c, $f966
    or h
    add hl, hl
    jr jr_00d_55dc

    rst $18
    di

Jump_00d_5592:
    inc d
    adc e
    call nc, $d16c
    ld [hl], d
    inc de
    inc [hl]
    add $32
    and a
    dec d
    ld [bc], a
    add hl, bc
    inc [hl]
    ld b, h
    ld sp, $e78b
    dec [hl]
    cp $31
    ld sp, $af77
    dec e
    scf
    ld [$7a6f], a
    ld [hl], l
    rst $18
    push hl
    jr nz, @-$04

    ld b, e
    jp hl


    ld [c], a
    ld h, c
    ld a, h
    ld b, l
    rlca
    add d
    ld a, b
    ld d, b
    ld h, $3e
    add hl, bc
    ld [c], a
    call nc, Call_000_044d
    ld a, d
    ldh [rLY], a
    or d
    ld d, l
    ld c, h
    sub l
    di
    ld e, d
    xor d
    db $f4
    sub a
    xor b
    pop de
    ld hl, sp-$3e
    adc b

jr_00d_55d7:
    cp c
    ld a, [hl-]
    ld e, $57
    xor [hl]

jr_00d_55dc:
    ld c, h
    sub h
    or a
    ld [$99a4], a
    inc sp
    ld d, d
    ld e, $3a
    xor d
    or l
    ld c, [hl]
    add a
    ld l, d

Jump_00d_55eb:
    xor e
    ld c, [hl]
    ld d, a
    call z, $e468
    ld [hl], c
    ld d, l
    ld c, b
    adc [hl]
    ld c, d
    ld h, d
    xor b
    pop bc
    ld hl, $b432
    or l
    ld l, $6f
    adc l
    ld d, l
    xor b
    ld hl, $8370
    adc [hl]
    ld a, e
    ld [hl], a
    and e
    xor [hl]
    and e
    call $a299
    sbc c
    jr nz, jr_00d_55d7

    pop de
    ld [hl], d
    ld d, d
    adc e
    add hl, de
    ld hl, $a916
    ld [hl], l
    cp c
    jp $c4ff


    cpl
    ld [hl], $65
    dec d
    db $fd
    inc de
    ccf
    ld sp, $d1c0
    sub a
    rst $00
    ld b, $09
    add hl, bc
    add a
    inc e
    ld de, $9256
    rst $00
    ld [bc], a
    ld h, e
    ld sp, hl
    call z, $fe97
    ld h, c
    ld a, [de]
    xor b
    ld [hl-], a
    db $eb
    jr jr_00d_567e

    and [hl]
    ld [hl], b
    ld l, l
    db $d3
    sub h
    adc h
    ld de, $12c1
    sub b
    pop hl
    dec e
    ld a, l
    rra
    ld a, [de]
    ld d, l
    ld [hl-], a
    ld d, h
    ldh a, [$da]
    ld d, $94
    xor $49
    xor b
    ld a, e
    ld c, [hl]
    or $a1
    ld b, d
    db $f4
    add sp, -$78
    push de
    ld a, [bc]
    pop de
    add sp, -$19
    ld b, l
    add e

Jump_00d_5668:
    ld h, l
    inc e
    rla
    sub h
    db $e4
    add a
    and c
    ld l, b
    inc e
    ld [de], a
    xor c
    jr c, @+$22

    ld a, [hl]
    ld h, $51
    ret nc

    ld a, d
    ld b, [hl]
    ld c, l
    sub b
    ld d, d

jr_00d_567e:
    ld a, b
    daa
    inc c
    db $76
    and c
    add d
    ld [hl], $a2
    ld d, d
    inc d
    sub [hl]
    jp nc, $8e71

    ld c, d
    add hl, hl
    sub b
    push hl
    ld b, d
    ld a, [hl-]
    sbc c
    inc d
    ld a, $14
    add h
    db $e4
    add d
    add [hl]
    ld d, c
    push bc
    adc b
    ld d, h
    push hl
    ret nc

    add d
    ld h, $89
    ld d, h
    push hl
    cp a
    inc [hl]
    ld a, b
    dec d
    add hl, sp
    ld l, a
    push de
    ld d, c
    db $ec
    ld [de], a
    ld l, c
    add hl, sp
    dec hl
    rst $38
    ld b, [hl]
    ld d, l
    dec e
    ld c, [hl]
    reti


    add hl, de
    ld d, c
    adc a
    ld bc, $881b
    ld d, e
    cp [hl]
    ld c, c
    ld l, b
    xor l
    add sp, $2d
    ld c, d
    ld a, b
    jr z, jr_00d_56ec

    dec b
    ld c, d
    ld [hl], a
    db $dd
    ld a, [bc]
    ld b, h
    sbc l
    ld d, b
    ld l, d
    add h
    inc [hl]
    adc h
    ld [hl], h
    and e
    dec b
    db $10
    adc h
    cp c
    pop de
    ld a, h
    ld b, [hl]
    dec [hl]
    db $fd
    ld d, h
    and a
    inc d
    inc c
    ld b, l
    ld c, d
    ld [$d221], sp
    ld [hl-], a
    ld [hl], b
    add hl, hl

jr_00d_56ec:
    inc l
    xor h
    ld [hl], $32
    db $e4
    ld b, a
    ld a, [hl+]
    ld b, d
    sub b
    and [hl]
    jr @+$49

    dec l
    ld e, [hl]
    inc c
    ld [$84b5], sp
    ld [hl], h
    or d
    ld b, d
    inc c
    jr z, jr_00d_572d

    rst $08
    inc d
    sub b
    add e
    inc c
    add hl, hl
    call $318c
    ld de, $cf69
    ld [hl], c
    xor e
    dec e
    ld d, d
    sbc c
    ld h, b
    push de
    add hl, hl
    rst $08
    ld d, l
    ld c, c
    ld a, [bc]
    ld a, [hl-]
    ld a, b
    ld [de], a
    ld a, [hl+]
    inc l
    ld a, b
    jr z, @-$25

    add hl, bc
    ldh [$ca], a
    or c
    add b
    ld b, h
    ld a, $49
    db $f4

jr_00d_572d:
    db $eb
    ld h, b
    xor $4e
    ld [hl], a
    and b
    pop hl
    db $f4
    push hl
    ld d, a
    db $fc
    adc e
    adc $3d
    ld b, d
    sub h
    add a
    ld [$a9e2], sp
    or b
    ld [hl], c
    di
    sub d
    and a
    add d
    rlca
    di
    sub [hl]
    or a
    inc hl
    ei
    adc [hl]
    ld c, b
    adc l
    cp l
    adc $a6
    ldh a, [$8e]
    add a
    dec c
    ld hl, sp-$16
    and e

jr_00d_575a:
    db $e3
    rst $30
    ret


    xor c
    rst $18
    reti


    db $db
    ld [hl], l
    ld c, c
    jp z, $358b

    sub c
    add hl, hl
    push bc
    rrca
    ld [bc], a
    sub a
    inc e
    sub b
    ld c, d
    ld [hl], l
    ld a, b
    scf
    dec e
    ld a, h
    cp c
    add [hl]
    ld [hl], e

Call_00d_5777:
    ld c, d
    sub b
    or h

jr_00d_577a:
    ld [hl], e
    xor e
    ld hl, sp+$67
    ld c, h
    add l
    ld b, a
    ld l, h
    ld a, h
    ld [hl], b
    ld h, [hl]
    cp h
    or l
    ld c, a
    ld de, $7c29
    adc b
    xor $57
    xor $6e
    adc [hl]

jr_00d_5791:
    dec [hl]
    xor e
    sub l
    dec h
    ld [hl], a
    adc c
    sub b
    sub e
    add l
    rrca
    ld l, d
    ld a, [$bdbe]
    dec bc
    ld c, e
    ld e, b
    inc hl
    ld b, [hl]
    db $fc
    adc d
    ld l, $aa
    cp a
    add hl, bc
    ld b, $85
    adc b
    ld h, d
    push de
    add [hl]
    rst $18
    ld [c], a
    jr z, jr_00d_577a

    xor h
    pop bc
    inc c
    pop hl
    xor b
    and $8f
    ld [hl], $2a
    and e
    adc c
    db $fd
    ld [hl], $56
    add hl, sp
    dec d
    ld d, b
    and b
    xor d
    ld [hl+], a
    sub l
    xor d
    jr nc, jr_00d_575a

    add hl, de
    inc c
    inc d

jr_00d_57cf:
    add hl, hl
    ld c, c
    sub d
    sub h
    cp c
    xor b
    sbc $66
    xor $21
    ld l, b
    ld d, $82
    ld [hl], $4d
    and a
    or l
    ld l, b
    sbc h
    sbc b
    adc $06
    jr c, jr_00d_5791

    db $fc
    ld e, d
    cp l
    adc h
    ld [de], a
    jr jr_00d_57cf

    ld d, a
    ld a, [$4aa0]
    and a
    xor d
    ldh [$63], a
    ld d, l
    ld a, a
    xor b
    ld d, l
    ld e, h
    inc de
    dec bc
    ld b, c
    dec e
    ld l, d
    ld c, h
    cpl
    sub $aa

jr_00d_5804:
    adc d
    ld d, [hl]
    ld d, d
    ld d, a
    add l
    ld d, l
    and b
    sub d
    xor d
    xor d
    xor d
    xor d
    and d
    add hl, hl
    and $5a
    and e
    jr c, jr_00d_5804

    sub b
    ld c, a
    and c
    adc b
    ld d, l
    ld l, d
    dec d
    dec sp
    pop hl
    xor b
    or l
    and e
    jp nz, $5595

    xor b
    rst $00
    ld a, c
    ld c, d
    and a
    adc b
    and h
    dec l
    ld b, $31
    call c, Call_000_068d
    pop af
    ld c, c
    ld de, $4aa3
    ld hl, sp+$29
    dec c
    call c, $a755
    inc de
    ld b, b
    call nc, Call_000_1af4

Jump_00d_5843:
    dec e
    ld [bc], a
    ld [de], a
    ld e, l
    and c
    inc b
    sbc b
    ret nc

    and l
    or h
    or a
    cp $0a
    jp hl


    db $76
    ld b, h
    push bc
    ld h, l
    ld b, b
    xor a
    add hl, de
    push de
    ccf
    rla
    inc a

jr_00d_585c:
    ld [hl], b
    ld d, h
    ld c, h
    ld [hl], h
    rst $00
    ld [hl-], a
    ld l, b
    xor c
    ret z

    sub [hl]
    pop hl
    xor h
    ld b, d
    or l
    ld d, h
    inc l
    ld [hl], d
    inc h
    inc a
    ld b, h
    call nc, $6b11
    db $f4
    and a
    dec c
    add sp, -$5b
    dec hl
    ld d, b
    xor a
    pop de
    ld c, d

jr_00d_587d:
    ld [hl], c
    ld e, [hl]
    add h
    or h
    ld c, e
    ld a, l
    add hl, de
    ret


    rrca
    ld b, [hl]
    sub a
    ld l, d
    xor e
    db $f4
    ld [hl], b
    ld d, e
    call z, Call_00d_4470
    ld hl, $d4c0
    and [hl]
    xor h
    rst $00
    ld [bc], a
    jr c, jr_00d_585c

    ld c, c
    ld e, [hl]
    ld h, [hl]
    add $88
    db $e3
    ld a, [bc]
    xor e
    cp h
    or l
    ld a, [de]
    rst $38
    jp hl


    ld l, h
    ccf
    ld hl, sp+$55
    ld [$94b2], a
    xor e
    rst $38
    push de
    inc bc
    inc h
    add $b5
    ld d, h
    dec a
    xor l
    ld d, h
    ld l, c
    add hl, hl
    rst $10
    db $10
    sbc [hl]
    jp c, $84a7

    add h
    xor b
    ld a, a
    add l
    cp e
    daa
    ld [hl], d
    adc l
    ld [bc], a
    cp a
    rst $18
    ld b, a
    add b
    rst $08
    rst $18
    or l
    ld d, $44
    dec sp
    inc d
    db $ed
    ld h, e
    and c
    ld d, c
    ld h, e
    and c
    pop af
    sub b
    sub e
    sbc e
    and d
    ret nc

    sub e
    adc c
    ld hl, $9030
    adc [hl]
    ld b, $26
    ld c, h
    inc hl
    add [hl]
    jr nc, jr_00d_587d

    ld e, a
    inc b
    ld [$eee8], a
    ld c, d
    ld c, [hl]
    adc d
    ld [$e958], sp
    and [hl]
    ld h, e
    xor a
    ret c

    ld a, [$d69d]
    ret


    ret c

    rst $00
    db $76
    ld [hl], l
    dec [hl]
    daa
    ld c, d
    push bc
    ld c, d
    ld [hl], d

jr_00d_590a:
    ldh [$c9], a
    db $76
    sbc h
    ld e, a
    ld de, $d125
    jp Jump_00d_4918


    ld c, d
    ld [hl], b
    add hl, hl
    add d
    ld [hl], h
    add hl, hl
    ld l, $96
    sbc h
    ld d, [hl]
    add l
    inc c
    ld c, e
    inc e
    ld [hl], l
    ld a, [c]
    jp nz, Jump_000_3ac7

    sub d
    rst $00
    dec a
    ldh a, [$b1]
    rst $10
    ld d, h
    ld a, c
    add b
    ld [hl], a
    cp c
    sbc [hl]
    ld d, e
    ld b, l
    ld c, e
    ld a, l
    ld d, e
    sbc l
    ld l, d
    ld [hl], h
    pop bc
    ld a, [hl]
    xor d
    ld c, b
    rst $30
    dec bc
    ld c, l
    push de
    xor [hl]
    ld l, a
    or e
    ld a, [bc]
    adc c
    ld b, c
    add c
    jp nz, Jump_00d_5422

    ret


    ld l, l
    xor d
    dec h
    rrca
    bit 2, b
    ld d, d
    sbc h
    inc hl
    dec b
    ld c, e
    ld a, d
    adc h
    ld e, [hl]
    add e
    add hl, hl
    ld d, h
    ld d, b
    add a
    ld [$d3c1], sp
    dec de
    push hl
    add hl, hl
    pop hl
    sub a
    ld d, a
    xor b
    ld h, d
    and e
    dec c
    ldh [$a3], a
    ld a, [hl+]
    ld a, c
    jr jr_00d_590a

    ld a, [de]
    ld c, c
    db $f4
    ld d, e
    dec c
    ld h, l
    ld hl, sp-$22
    ld [hl], h
    cp d
    and h
    or l
    ld b, l
    inc hl
    ld l, c
    ld a, [$6d39]
    ld hl, $9288
    dec e
    jp z, Jump_000_1e68

    ld a, [hl-]
    call nc, Call_00d_6811
    sbc l
    ld d, b
    ld b, e
    ld [c], a
    inc h
    rst $28
    add [hl]
    ld hl, $7d48
    add hl, hl
    and h
    ld e, [hl]
    dec b
    ld a, [hl-]
    or h
    ld d, h
    ld e, b
    sbc c
    ld e, b
    jr jr_00d_5a16

    db $fd
    ld c, [hl]
    ld a, d
    and d
    and b
    ld l, c
    ld e, $a8
    sbc b
    ld a, e
    and e
    sbc e
    sub $0a
    ld h, [hl]
    ld h, $99
    dec l
    inc c
    ld e, b
    and $52
    db $10
    or [hl]
    ld [hl-], a
    sbc d
    xor e
    and e
    add c
    ld [hl], $a3
    inc [hl]
    cp c
    ld e, b
    sbc b
    inc hl
    ld e, l
    ld [hl-], a
    adc $ca
    ld [hl+], a
    dec [hl]
    or h
    sub a
    adc l
    and b
    sub e
    ld a, $08
    add h
    db $d3
    ld a, h
    ld a, l
    ld h, e
    ld [hl], $25
    inc [hl]
    ld c, [hl]
    ld [$6162], sp
    ld b, c
    sub l
    ld e, d
    dec d
    ld [hl], $41
    adc b
    adc h
    ld l, d
    ld [$819a], sp
    ld a, [de]
    ld d, l
    xor c
    adc b
    adc h
    add hl, de
    add l
    jr c, @+$53

    ld d, c
    ld b, [hl]
    ld [hl-], a
    ld c, h
    sbc $8c
    ld h, e
    jr z, @-$79

    ld b, c
    add c
    adc l
    ld a, [hl+]
    ld b, d
    ld d, c
    adc h

Jump_00d_5a0a:
    inc hl
    ld a, b
    ld a, l
    add c
    adc [hl]
    ld b, l
    ld sp, hl
    ld c, c
    ld c, [hl]
    add hl, de
    dec d
    adc [hl]

jr_00d_5a16:
    ld b, [hl]
    ld h, $99
    ld d, e
    sub d
    adc a
    ld [bc], a
    ld c, h
    inc de
    pop de
    sub d
    ld d, e
    call nc, Call_00d_4790
    ld [hl], e

jr_00d_5a26:
    xor c
    or d
    ld l, h
    sbc l
    ld d, e
    and $28
    ld l, b
    ld d, d
    sbc c
    xor c
    call nz, $f7ac
    jr jr_00d_5a26

    call nz, Call_00d_6a31
    xor $9a
    dec l
    ld b, h
    call $9af9
    ld h, h
    pop de
    ld c, [hl]
    sbc b
    inc [hl]
    ld h, e
    jp $9c26


    ld sp, $420c
    or b
    ld hl, $5218
    sub a
    sub d
    add $35
    ld d, $c2
    and h
    inc l
    add hl, de
    xor l
    ld h, $2f
    ld c, d
    ld b, h
    ld a, [bc]
    sub d
    add d
    sub c
    or d
    inc de
    inc e
    inc d
    sub a
    ld l, [hl]
    add l
    ld b, $5a
    sub c
    db $d3
    ld hl, $d21c
    ld e, a
    ld l, c
    add hl, bc
    adc a
    ld b, b
    rst $00
    ld l, d
    ld b, e
    inc bc
    ld b, e
    and d
    sub c
    call nz, $8527
    inc c
    ld h, c
    jp hl


    add d
    ld c, d
    db $76
    jr nc, jr_00d_5aef

    ret z

    cp l
    ld e, d
    xor e
    inc de
    ld b, b
    jp hl


    call nc, Call_000_20c3
    pop af
    add hl, sp
    sbc h
    dec d
    ld b, a
    ld c, [hl]
    ld b, h
    ld a, [hl+]
    ld h, c
    ld h, $2d
    pop af
    jp nc, $cfd8

    add hl, de
    jp z, Jump_000_1eab

    ld e, d
    ld [hl], b
    ld d, c
    or d
    ld h, [hl]
    sbc [hl]
    inc b
    ld l, l
    ld h, $11
    cp l
    dec de
    ld d, b
    and [hl]
    ld sp, hl
    ld l, c
    pop bc
    add $8a
    ld [hl], c
    ld b, [hl]
    ld de, $4a2a
    or h
    inc c
    ld h, h
    and l
    ld b, [hl]
    ld [hl], l
    rla
    inc de
    dec c
    ld d, c
    inc l
    xor c
    ld l, a
    inc e
    xor c
    add hl, hl
    ld sp, $e6a2
    inc e
    ld h, l
    ld a, [de]
    ld b, b
    adc d
    ld b, e
    inc e
    db $10
    add hl, hl
    reti


    dec b
    dec bc
    inc e
    sbc b
    ld d, h
    and a
    ld b, h
    or h
    db $76
    ret


    db $ec
    ret


    ld c, c
    jp hl


    ret z

    and a
    xor l
    inc h
    nop
    ld b, h
    cp c
    ld d, l

jr_00d_5aef:
    cp e
    adc h
    sub e
    dec [hl]
    rst $38
    ld c, $ec
    add $b4
    or a
    xor a
    ld e, d
    rst $38
    ld sp, $bda0
    ld d, a
    xor a
    ei
    db $e3
    ld e, d
    rlca
    xor d
    xor e
    ld a, [hl]
    jr jr_00d_5b5d

    ld a, [hl-]
    adc h
    and d
    ld d, b
    ld h, h
    ld [$6476], a
    ret


    db $e3
    scf
    push hl
    sbc a
    dec l
    ld hl, sp+$13
    rla
    sbc e
    rst $18
    ld a, [c]
    rst $18
    or $4a
    and b
    jp $fcff


    sub $bd
    ld a, [de]
    sbc a
    db $db
    cp h
    ldh [$a2], a
    xor $fe
    ld [hl], e
    add c
    ld c, b
    add $04
    dec hl
    db $d3
    add [hl]

jr_00d_5b37:
    ld hl, sp+$5a
    ld l, $39
    ld a, [hl+]
    inc a
    db $fd
    ret nc

jr_00d_5b3f:
    xor d
    sbc h
    db $eb
    jp c, Jump_00d_62aa

    sbc e
    ld a, [hl-]
    dec d
    ld a, [hl]
    ld h, e
    ld hl, $4eca
    adc l
    ld e, b
    call nc, Call_000_2265
    pop bc
    call nc, $3408
    ld c, e
    sbc c
    call c, $1465
    ld a, [c]
    ld l, b

jr_00d_5b5d:
    jp z, Jump_000_2dc6

    rst $08
    ld a, [de]
    ld b, [hl]
    ld l, e
    inc sp
    add $59
    add hl, bc
    adc e
    dec sp
    add h
    ld h, a
    sub e
    dec h
    xor l
    ret


    bit 1, c
    ld d, $ae
    jr jr_00d_5b9f

    rst $00
    ld b, e
    dec c
    ld d, e
    pop bc
    sbc h
    jr jr_00d_5b3f

    inc b
    and h
    jp nc, Jump_00d_6271

    pop af
    db $db
    ld e, $88
    ld d, l
    cp a
    ld [hl], $bd
    ld a, [hl-]
    ld d, h
    jp z, $7481

    push hl
    ld h, a
    ret z

    ld d, l
    add c
    sub b
    ld d, e
    sub l
    rst $38
    ld l, l
    xor c
    ld b, [hl]
    ld d, l
    ld c, [hl]
    ld c, b

jr_00d_5b9f:
    jr z, jr_00d_5bc2

    ld a, a
    ld h, h
    ld [hl], b
    call nc, $82e5
    ld a, [de]
    inc c
    jr z, jr_00d_5b37

    add hl, sp
    add hl, sp
    sub d
    inc d
    add l

Call_00d_5bb0:
    ld c, b
    xor b
    and $52
    ld l, a
    db $e4
    xor $66
    and l
    and d
    inc hl
    or e
    ld d, d
    rst $10
    dec sp
    inc d
    db $10
    ld b, l

jr_00d_5bc2:
    rlca
    db $e3
    xor l
    ld d, [hl]
    jr jr_00d_5be6

    db $d3
    or d
    ld d, [hl]
    adc b
    xor b
    rst $28
    xor b
    ld a, [$f989]
    cp d
    sbc [hl]
    ld b, h
    and a
    dec sp
    ld b, h
    dec h
    ld l, h
    ld sp, $20d3
    cp a
    ld a, [$4a86]
    ld [hl], e
    ld hl, $d5ff
    ld sp, hl

jr_00d_5be6:
    dec hl
    inc e
    db $db
    ld sp, hl
    ld e, a
    add d
    add h
    sbc h
    db $dd
    ld a, d
    ld b, e
    ld hl, sp+$67
    ld c, a
    cpl
    rst $38
    rst $38
    daa
    ld h, l
    dec hl
    ld a, a

jr_00d_5bfb:
    call z, Call_00d_5777
    add l
    ld hl, $ae1d
    adc [hl]
    db $10
    ld a, [hl-]
    db $76
    db $d3
    sub a
    ld e, $05
    rra
    adc b
    add b
    ld b, h
    cp l
    ld h, l
    ld hl, $9a4e
    and b
    xor b
    ld [$7cb7], a
    add sp, $58
    push hl
    ld c, h
    inc l
    and $a9
    ld [hl], a
    ld d, l
    add hl, sp
    cp h
    db $dd
    adc l
    sub l
    xor [hl]
    ld [$5881], a
    pop hl
    adc h
    db $10
    and e
    cp d
    dec b
    ld hl, $d84e
    db $ec
    cp [hl]
    dec bc
    rst $08
    and l
    rst $18
    dec l
    ld b, h
    ld d, c
    call nc, $f9ea
    jp nc, $dbe9

    ld [bc], a
    and a
    inc de
    and d
    add d
    add hl, hl
    ld de, $91c5
    db $dd
    sbc l
    rla
    jr jr_00d_5c92

    xor d
    sbc l
    dec hl
    rst $10
    ld e, c

Jump_00d_5c55:
    sub $c1
    add hl, hl
    db $ed
    ld b, a
    push de
    add b
    ld d, l
    cp [hl]
    ld d, l
    ld a, d
    and a
    db $f4
    push bc
    ld d, e
    add c
    add sp, $29
    inc b
    adc e
    ld c, c
    ld a, e
    ld h, e
    ld h, [hl]
    jr nc, jr_00d_5bfb

    call nc, $3265
    ld d, e
    ld b, h
    and h
    rla
    ld a, a
    push de
    dec l
    xor $04
    and [hl]
    sub h
    rla
    add $21
    ld d, b
    xor l
    ld hl, $2246
    inc hl
    ld b, [hl]
    dec bc
    pop hl
    add c
    ei
    ld h, d
    dec l
    and c
    ld [hl], d
    dec l
    sub h
    push bc

jr_00d_5c92:
    xor $22
    sub d
    sub b
    sub h
    inc h
    sbc d

jr_00d_5c99:
    ld d, l
    dec l
    and d
    ld e, e
    ld d, d
    jp nc, Jump_00d_4a13

    sub h
    ld h, l
    ld l, c
    ld l, d
    dec c
    dec b
    ld a, [bc]
    adc [hl]
    ld a, [hl+]
    ld c, b
    ld h, e
    dec bc
    dec b
    ld d, e
    sbc d
    sub h
    ret


    ld a, [bc]
    xor a
    ld c, [hl]
    ld l, e
    push de
    ld e, d
    ld b, d
    ld b, a
    ld c, h
    db $d3
    ld h, h
    cp b
    inc h
    dec h
    call z, $95ee
    add hl, hl
    adc d
    ld h, d
    ld h, h
    ldh [$94], a
    ld l, d
    and d
    sbc b
    add $58
    sbc $94
    sub l
    and e
    pop bc
    xor d
    dec a
    cp l
    ld a, [c]
    ret z

    ld e, [hl]
    add h
    add hl, de
    sub d
    add hl, bc
    rst $00
    db $db
    ld [hl], h
    jp nc, Jump_000_2197

    sbc e
    ld b, [hl]
    ld l, c
    ld sp, $8332
    sbc e
    ld b, b
    add $8c
    inc c
    dec d
    ld e, d
    ld h, d
    sbc $11
    rrca
    xor c
    cpl
    add h
    jr jr_00d_5c99

    add h
    ld h, b
    adc h
    ld [hl], $28
    ld b, e
    sub c
    pop af
    ld [$1972], sp
    jr z, jr_00d_5d36

    cp c
    jr nc, @+$3c

    call nz, Call_00d_5271
    and b
    sub l
    inc h
    adc $4c
    dec c
    ld b, b
    and [hl]
    ld l, a
    ld h, l
    or d
    and [hl]
    ld a, [hl+]
    add h
    inc l
    add hl, bc
    ld e, h
    ld a, [bc]
    ret z

    ld c, c
    adc [hl]
    and e
    ld c, l
    inc h
    ld b, c
    ld [bc], a
    ld d, h
    ld c, l
    add $53
    ld c, d
    ld [de], a
    push hl
    ld b, c
    ld h, $95
    ld c, d
    ld d, h
    ld b, l
    ld d, l
    ld d, h
    and h

jr_00d_5d36:
    jr nc, @+$2c

    ld a, [c]
    sub e
    and l
    ret


    xor h
    ld d, l
    ld d, h
    ld b, h
    sub c
    ld de, $0c27
    inc c
    ld b, e
    rla
    ld hl, $4491
    ld c, c
    xor h
    ld b, e
    add hl, de
    pop de
    sbc d
    sbc d
    inc l
    ld [hl], d
    dec [hl]
    sub c
    daa
    add c
    ld d, c
    ld [hl], d
    xor d
    pop de
    add $44
    cp l
    ld c, l
    ld d, h
    db $eb
    ld [$5c82], a
    rst $20
    push de
    add l
    adc [hl]
    dec [hl]
    rst $38
    pop de
    ld h, l
    adc $06
    ld h, d
    rst $20
    add sp, -$1e
    adc h
    db $e4
    xor $47
    ld [$53e0], sp
    ld b, $68
    inc de
    adc c
    and l
    inc d
    ld d, c
    ld c, [hl]
    ld c, c
    ld e, d
    sub c
    and [hl]
    adc [hl]
    ld l, c
    ld e, h
    jr @-$13

    xor d
    ld a, $ab
    ld a, h
    xor d
    jp nc, $d229

    xor d
    inc d
    ld [hl], d
    ld [hl-], a
    xor e
    ld d, b
    ld hl, $0b9c
    ld a, [hl+]
    ld d, a
    add h
    ld [hl], c
    ld b, c
    inc bc
    dec e
    or h
    ld h, d
    rst $20
    inc e
    ld h, d
    or b
    ld b, a
    dec e
    ld a, [hl+]

jr_00d_5dab:
    ld c, h
    dec bc
    ld [bc], a
    sbc h
    xor h
    dec a
    ld [hl], h
    ld [hl], h
    jp c, $d9f1

    rra
    ld e, d
    ld d, l
    cp [hl]
    ld bc, $5448
    and $55
    ld c, d
    xor d
    ld a, [bc]
    xor l
    jr c, jr_00d_5e24

    cp a
    cp l
    dec bc
    ld h, b
    ld b, c
    inc d
    inc hl
    ld a, [hl]
    ld [hl+], a
    ld b, [hl]
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    jp c, $8934

    and d
    ld a, [hl+]
    ld h, e
    sbc c
    ld hl, $ff23
    rst $38
    adc $5e
    add c
    adc d
    ld d, e
    inc d
    push de
    ld c, d
    or d
    ld de, $50ca
    ld h, [hl]
    db $fd
    ld [hl-], a
    or l
    add hl, de
    rlca
    ld d, c
    and b
    ld d, h
    ld hl, $1a4e
    rst $30
    and d
    ld d, h
    adc $95
    jr c, jr_00d_5dab

    ld h, l
    ld a, a
    db $fc
    ld [hl-], a
    ld a, [de]
    add hl, sp
    ld l, d
    ldh a, [rOCPS]
    ld a, h
    ld d, a
    ld c, [hl]
    xor d
    rst $38
    ld sp, hl
    adc a
    add hl, bc
    db $fd
    ld hl, $b1e3
    rst $20
    xor l
    and e
    call nz, $c1d3
    or [hl]
    push de
    db $d3
    pop bc
    cp a

jr_00d_5e1e:
    ld hl, sp-$0f
    ld l, b
    bit 7, h
    ld [bc], a

jr_00d_5e24:
    ld c, d
    ld [hl], h
    inc h
    dec h
    ld a, b
    ld h, c
    ret nz

    and a
    dec de
    rlca
    pop bc
    inc hl
    pop bc
    and e
    jp Jump_000_2267


    pop hl
    scf
    add sp, $62
    jp z, $ec9b

    ld h, c
    ld b, e
    ld [bc], a
    db $ed
    add e
    ld b, a
    ld l, a
    di
    ccf
    ld hl, $949c
    sbc b
    ld e, d
    jr nc, jr_00d_5e7c

    ld h, $da
    ld c, l
    ld b, h
    jr nc, jr_00d_5e1e

    or [hl]
    jr z, @+$5a

    and [hl]
    ld [hl], d
    ld e, e
    pop bc
    xor l
    db $10
    or h
    ld [hl-], a
    add $b3
    ld d, [hl]
    inc d
    ld [$acca], sp

jr_00d_5e64:
    sub h
    rst $20
    inc d
    ld [$1d7c], sp
    ld d, a
    cp a
    ld c, c
    call Call_000_3d04
    ld h, c
    ld de, $9d84
    ld [hl], b
    ld h, c
    ld e, b
    ld a, b
    ld b, c
    ld h, a
    ld a, e
    xor d

jr_00d_5e7c:
    dec e
    sbc l
    rst $10
    add h
    ld [$7a27], sp
    jr c, jr_00d_5ee9

    ld b, a
    ld a, l
    ld a, b
    or e
    sbc [hl]
    dec d
    pop hl
    ld e, $3c
    ld h, h
    ld b, h
    cp c
    sub l
    ld d, h
    add sp, $7b
    rst $38
    ld [$70e5], sp
    sbc d
    adc [hl]
    dec h
    ld d, h
    ld a, [hl+]

Call_00d_5e9e:
    ld [$dd58], sp
    ld a, [$0eaa]
    xor d
    scf
    ld a, b
    ret


    ld [$931a], sp
    sub c
    ld [$232c], sp
    sbc l
    adc b
    xor h
    ld [de], a
    jr @-$1c

    xor c
    ld d, $19
    adc l
    xor l
    rlca
    and b
    and [hl]
    ld b, l
    ld c, b
    ld e, b
    adc $d7
    push de
    ld h, b
    sub h
    inc hl
    adc [hl]
    xor d
    ld l, $f6
    ccf
    ld [$c99c], sp
    add hl, hl
    db $d3
    dec [hl]
    ld d, [hl]
    ld [hl], h
    jr nz, jr_00d_5e64

    db $ec
    ld l, h
    sub b
    add l
    pop bc
    xor a
    cp $6a
    rst $38
    db $fc
    ld [hl], $85
    ld d, h
    add hl, de
    adc d
    rst $18
    rst $38
    and c
    ld a, h
    rst $18

jr_00d_5ee9:
    ld a, [$ff6b]
    ld a, [$0fa1]
    rst $38
    sbc c
    ld l, a
    db $fc
    rst $38
    ld l, h
    rst $38
    db $fc
    ld h, d
    rst $38
    rst $18
    rst $18
    and h
    ld d, l
    ld b, [hl]
    or h
    adc l
    rst $30
    dec bc
    ld a, [$dd70]
    ld e, h
    ld h, c
    ld l, c
    db $db
    inc b
    ld a, [hl]
    ld [de], a
    ld h, [hl]
    cp [hl]
    pop de
    ld d, [hl]
    xor d
    cp l
    ld c, a
    ld c, $95
    ld c, b
    sub $bd
    inc a
    ld l, d
    sub c
    sub c
    or h
    ld a, [c]
    ld [hl+], a
    dec h
    ld a, [bc]
    ld c, [hl]
    sub a
    db $ed
    ld sp, $a18a
    ld c, [hl]
    dec d
    ld a, d
    pop de
    add d
    adc h
    ld h, e
    inc h
    ld d, e
    scf
    xor b
    jr z, @-$52

    ld l, d
    sub h
    ld d, b
    ld l, d
    sub h
    ld e, e
    adc h
    ld d, h
    or h
    or h
    jp nz, $d698

    adc l
    sbc $21
    ld c, d
    xor c
    inc c
    and [hl]
    adc d
    ld d, d
    sbc [hl]
    dec h
    sub c
    xor b
    sub h
    ld d, d
    jr jr_00d_5fc8

    ld sp, $55a2
    and h
    adc l
    bit 4, b
    adc [hl]
    ld e, l
    dec h
    sub $68
    jp z, $3821

    sub [hl]

jr_00d_5f62:
    dec [hl]
    and l
    ld d, h
    sub h
    ld h, d
    ld de, $6090
    ld d, d
    inc hl
    or d
    db $e4
    adc d
    ld a, [bc]
    ld b, $1a
    ld d, e
    xor c
    dec d
    db $ed
    adc c
    adc h
    ld d, b
    ld [hl], h
    db $e4
    add d
    ld b, a
    sub $37
    add c
    jr c, jr_00d_5f62

    adc b
    ld b, c
    ld a, [de]
    ld c, b
    adc d
    ld h, d
    xor b
    ld [c], a
    ld b, c
    ld [hl+], a
    ld [$4299], sp
    sub [hl]
    jr nc, jr_00d_5fe5

    adc l
    ld h, $07
    ld c, d
    and l
    ld sp, $e468
    ld l, d
    rlca
    ld a, h
    add $95
    ld hl, $95e3
    dec e
    ld [hl], h
    sbc $58
    add sp, -$70
    ret c

    and $dc
    ld l, d
    push de
    ld c, d
    ld a, b
    xor h
    ld h, a
    daa
    add d
    add $da
    ld [hl], a
    ld sp, $e0c4
    sbc l
    ld a, [hl-]
    xor c
    xor h
    adc h
    ld a, [c]
    db $76
    ld d, h
    xor d
    xor l
    inc c
    ld e, h
    sbc l
    xor d
    ld h, a

jr_00d_5fc8:
    ld [de], a
    or c
    ret nc

    cp b
    inc hl
    add hl, de
    res 5, c
    rst $08
    ld b, e
    ld b, h
    add $4d
    and e
    ld c, c
    add hl, de
    xor e
    ld b, [hl]
    ld l, b
    dec [hl]
    jr nz, @-$32

    add hl, sp
    inc sp

jr_00d_5fe0:
    ld a, [de]
    jp nz, $14db

    sub [hl]

jr_00d_5fe5:
    db $d3
    ld hl, $b918
    adc e
    db $10

Call_00d_5feb:
    ld sp, hl
    ccf
    inc b
    call nz, Call_000_1274
    and l
    inc hl
    dec h
    or b
    inc h
    ld h, c
    ld l, b
    or e
    dec l
    inc de
    inc de
    ld d, d
    ld [$4528], sp
    call nc, $8512
    ld c, e
    inc b
    jp nz, $30a4

    and e
    inc c
    ld [hl], d
    ld d, l
    ld de, $8c04
    ld b, h
    dec bc
    inc bc
    jp hl


    reti


    db $10
    cp h
    and b
    and h
    call Call_00d_7672
    or b
    jr c, jr_00d_6061

    jr jr_00d_5fe0

    sbc l
    or b
    ld b, e
    sbc b
    ld d, d
    add hl, bc
    ld l, $72
    ld b, d
    adc d
    ld e, h
    sub a
    ld de, $9c22
    adc b
    ld d, b
    add $12
    sbc d
    daa
    ld a, [hl+]
    db $10
    xor c
    sub l
    ld d, h
    and d
    add d
    ld [hl], e
    ld [hl+], a
    add l
    and $ea
    inc e
    ld [hl], e
    or a
    ld sp, hl
    rst $20
    ld h, a
    ld b, b
    ld b, h
    cp d
    call nc, Call_00d_5feb
    and e
    and c
    ld a, d
    ld a, [hl-]
    sbc [hl]
    adc [hl]
    or a
    adc [hl]
    ld c, e
    push de
    rst $38
    adc [hl]
    ld h, l
    ld a, [bc]
    ld d, e
    xor [hl]
    add l
    ld c, d
    push de
    add hl, sp

jr_00d_6061:
    ld a, $33
    and h
    ld e, b
    and $d5
    add hl, bc
    and e
    ld h, l
    add hl, hl
    ld c, d
    and b
    db $d3
    ld a, e
    cp d
    ld [$a8c6], sp
    sbc $d5
    ld c, d
    ld d, c
    cp h
    db $e4
    ld e, c
    ld a, b
    db $eb
    xor d
    inc a
    db $dd
    sub $9d
    xor e
    inc b
    ld [hl], h
    xor h
    db $76
    ld sp, $c7da
    ld h, $1a
    inc c
    or h
    ld [hl], e
    ld l, b
    ld b, b
    and a
    ld e, h
    dec c
    rst $00
    ld h, a
    add h
    ld h, e
    xor d
    db $76
    ld a, d
    add h
    sbc e
    add sp, $26
    sbc b
    jp z, $7e6d

    add d
    ld h, [hl]
    rst $00
    dec b
    ld [hl], b
    ld c, c
    ld c, $45
    inc e
    sbc l
    pop bc
    dec e
    sub b
    rst $00
    sbc d
    ld h, [hl]
    cp c
    ld d, l
    ld c, h
    dec d
    ld c, a
    ld bc, $b4ea
    ld d, $ea
    cp l
    dec sp
    jr z, @+$63

    ld e, [hl]
    xor a
    db $f4
    db $10
    adc [hl]
    xor d
    ld [hl+], a
    ld hl, sp+$55
    ld d, l
    ld [c], a
    inc hl
    sbc l
    ld e, l
    ld d, d
    dec de
    ld d, c
    ld d, h
    pop bc
    ld a, l
    ld sp, $de57
    ret nc

    rst $20
    ret c

    ld hl, $5c45
    xor [hl]
    adc h
    ld e, e
    sbc l
    ldh [$9b], a
    sub b
    xor c
    ld a, [bc]
    sub [hl]
    sub e
    inc b
    jp z, Jump_00d_74af

    xor b
    jr z, @+$6a

    adc $4b
    ld c, h
    ld e, a
    db $f4
    pop bc
    ld c, e
    adc c
    sub e
    ld e, c
    db $e3
    add c
    add c
    sub c
    ld c, d
    and b
    ld c, b
    ld c, b
    ld c, b
    ld h, e
    ld h, h
    and a
    ld h, d
    ld [hl-], a
    ld sp, $a282
    db $10
    adc [hl]
    jr @+$26

    jr @-$56

    cp c
    ld d, h
    ld [$e581], a
    ld l, d
    add hl, hl
    ld b, a
    ld a, [de]
    or h
    ld d, b
    ld c, l
    sbc $7d
    ld [hl-], a
    add [hl]
    ld b, $56
    add hl, bc
    adc [hl]
    rlca
    sbc [hl]
    ld [hl+], a
    ld a, [bc]
    adc c
    sub [hl]
    ld b, d
    xor h
    ld [hl+], a
    and e
    ld b, l

jr_00d_612f:
    dec b
    inc d
    ld a, $14
    push bc
    ld b, l
    ld c, $29
    adc h
    sub h
    sub a
    and d
    ld d, b
    ld l, d
    ld c, b
    ld b, d
    sub l
    ld c, c
    adc l
    sbc c
    db $e3
    jr @-$5a

    adc d
    adc c
    sub c
    ld d, e
    scf
    and e
    ld [hl], $2f
    ld c, h
    push hl
    ld h, e
    and [hl]
    push de
    ld a, b
    ld a, [c]
    ld [$ca8f], a
    daa
    jp Jump_00d_49a9


    ld e, $a7
    add d
    db $fc
    ld d, l
    ld a, a
    ld sp, hl
    ldh [$c6], a
    ld d, l
    rst $38
    sbc l
    ld c, d
    ld h, b
    cp a
    add a
    db $eb
    ld e, c
    ld c, c
    or d
    ld [$ec78], sp
    add e
    rst $38
    pop bc
    ld e, a
    jp nz, Jump_000_09ba

    add d
    dec sp
    jr nc, jr_00d_612f

    ld e, $1b
    ld a, h
    add l
    ld c, c
    ccf
    rst $38
    sub [hl]
    cp a
    ret


    ccf
    rst $38
    pop hl
    db $e4
    inc h
    ld a, [$ff37]
    sbc h
    ccf
    rst $38
    ld hl, sp+$78

Jump_00d_6195:
    and c
    rst $38
    ld a, [$f145]
    or [hl]
    cp a
    push de
    ld a, h
    ld e, $0c
    ccf
    rst $38
    add [hl]
    sbc h
    cpl
    db $fc
    db $e4
    ld a, b
    or b
    ld a, d
    add a

jr_00d_61ab:
    rst $38
    ld hl, $1767
    xor $af
    cp a
    inc bc
    db $fd
    add l
    ld b, e
    add e
    sbc h
    ld d, b
    or a
    and c
    ld hl, sp-$5d
    ld b, $90
    rst $08
    pop af
    add $c8
    ld d, l
    ld b, h
    ld a, d
    ldh a, [rHDMA5]
    dec b
    ld b, a
    inc hl
    ld a, $e5

jr_00d_61cd:
    or a
    di
    adc e
    add e
    ldh a, [$27]
    inc bc
    db $fd
    ld d, $fe
    adc a
    rst $38
    add a
    ret nz

    cp $68

jr_00d_61dd:
    cp a
    add $2f
    rst $38
    db $e3
    ld d, c
    ld a, a
    and $9d
    ld a, [de]
    ld a, l
    ld a, a
    sbc d
    ld e, a
    sbc l
    ld d, c
    scf
    rra
    ret nz

    ret nz

    ld b, h
    cp d
    sub a
    jr nc, jr_00d_61ab

    ld c, l
    rst $18
    ld [$ddce], sp
    ld d, e
    ld a, [hl+]
    ld hl, $a031
    ld d, b
    ld l, l
    rst $38
    or $86
    jr jr_00d_61cd

    db $db
    ld a, d
    ld l, $05
    add c
    ld d, e
    dec sp
    and e
    ld d, [hl]
    sub l
    ld a, [hl-]
    and [hl]
    ld [$3f3b], a
    ld c, h
    dec d
    ld [hl-], a
    ld l, d
    ret z

    ld [hl], b
    ld l, b
    cp b
    rra
    ld sp, hl
    ld [hl+], a
    ld e, d
    add c
    cp $53
    dec bc
    and $82
    ld b, c
    ld b, [hl]
    inc c
    cpl
    db $f4
    adc $bd
    sbc l
    db $76
    dec b
    rlca
    adc $8a
    add d
    adc [hl]
    ei
    ld e, c
    adc [hl]
    jp z, $1f8f

    ld a, b
    sbc b
    jr nz, jr_00d_61dd

    jr z, jr_00d_6289

    jr z, @+$4f

    add d
    ld [hl], b
    and [hl]
    ld d, $0c
    ei
    jp z, $acb0

    ld d, $9a
    ld c, h
    ld sp, $0b71
    pop af
    xor h
    jp nc, Jump_000_3f61

    cp $6b
    ld [hl+], a
    sbc b
    ld e, h
    push af
    dec de
    pop de
    sbc l
    ld a, [de]
    and h
    dec h
    or [hl]
    ld b, d
    and b
    add $3c
    ld a, $95
    ld b, c
    cp d
    db $db
    ld h, $38

Jump_00d_6271:
    ld [hl], d
    rrca
    ld d, c
    jr z, @+$2e

    or d
    ld l, c
    ld h, c

jr_00d_6279:
    ret c

    jp z, $d7fb

    rst $00
    ld b, h
    ld [$1da3], sp
    ld d, b
    ld l, e
    rra
    inc c
    ld [hl], a
    or a
    ld d, l

jr_00d_6289:
    ld d, l
    ld l, d
    xor d
    xor d
    xor c
    ld d, e
    and c
    ld e, a
    xor $af
    add hl, hl
    ld d, l
    ld d, l
    ld d, l
    add hl, de
    jr c, jr_00d_6279

    add e
    ld e, b
    ld l, $8b
    push de
    ld d, h
    jp nz, $38d7

    xor a
    jp nc, Jump_00d_48a6

    ld d, b
    cp $ab

Jump_00d_62aa:
    db $fd
    ld b, d
    ld a, [bc]
    db $e4
    push bc
    ld c, h
    jp hl


    ld d, c

jr_00d_62b2:
    sbc l
    ld b, [hl]
    add d
    jp nc, Jump_00d_64ea

    dec h
    sub h
    add [hl]
    cp b
    reti


    dec h
    jp z, $d1ab

    ld e, d
    sub $1a
    xor e
    ld b, l
    and e
    ld h, h
    sbc b
    add $60
    cp h
    db $d3
    ld c, b
    or e
    ld [hl], l
    ld c, d
    ld c, e
    ld sp, hl
    dec h
    and d
    ld d, l
    ld c, b
    sub d
    xor h
    sub h
    sbc a
    rst $38
    rst $38
    dec h
    ld l, b
    cp e
    ld d, $89
    and h
    ld h, h
    ld a, [hl-]
    adc b
    xor l
    ld [hl+], a
    and d
    jp hl


    sub d
    and c
    ld d, b
    ld d, e
    add hl, sp
    jr jr_00d_62b2

    ld b, d
    xor d
    and d
    sub h
    ld [hl], a
    ret


    and c
    sub e
    ld l, b
    and [hl]
    dec h
    adc h
    ld d, a
    ld a, [de]
    xor d
    xor d
    sub l
    add c
    ld d, e
    ld c, b
    add h
    and h
    jp z, Jump_00d_4e1b

    ld a, [bc]
    cp c
    inc [hl]
    ld h, e
    add d
    ld a, [hl+]
    db $d3
    ld e, d
    ld [$14a3], a
    adc $38
    inc d
    dec a
    ld c, b
    ld e, [hl]
    ld a, [de]
    db $fc
    dec d
    ld b, l
    dec [hl]
    adc e
    sub e
    dec b
    ld a, [de]
    cp $86
    ld b, l
    ld e, [hl]
    xor e
    add [hl]
    inc [hl]
    sub d
    db $e4
    cp e
    ld c, l
    jr nz, jr_00d_6394

    ld [$7433], sp
    cp a
    call nc, $549b
    add [hl]
    ld [hl+], a
    inc sp
    add c
    scf
    sub d
    and a
    cp l
    ld d, b
    sub [hl]
    and d
    and e
    inc [hl]
    dec e
    db $f4
    jp nc, $ab4b

    rst $28
    db $fc
    add $4c
    ld l, b
    db $e4
    sub e
    ld a, [hl+]
    ld e, b
    sub h
    cp c
    ld c, c
    ld h, d
    add hl, hl
    ld c, [hl]
    add hl, bc
    ld c, l
    db $d3
    ld a, [hl-]
    sub c
    sub [hl]
    xor b
    db $e3
    and l
    ld [hl-], a
    add c
    ld sp, $5455
    sbc c
    ld a, [hl-]
    ld a, [hl+]
    dec h
    sub h
    or [hl]
    adc h
    inc h
    add hl, hl
    adc $55
    xor b
    adc l
    add l
    ld e, d
    adc l
    ld e, c
    add hl, sp
    ccf

jr_00d_637a:
    ld d, l
    ld d, l
    ld e, d
    adc [hl]
    ld c, c
    db $e3
    db $ec
    ld [hl], a
    ld b, d
    xor d
    xor d
    xor d
    sbc l
    jp z, Jump_00d_5587

    ld a, [hl]
    cp a
    db $fd
    ld d, l
    jp hl


    call nc, $fbd0
    ld d, a
    push de

jr_00d_6394:
    ld b, c
    cp $a4
    ld d, e
    ld h, a
    ld b, l
    jr z, jr_00d_637a

    add l
    ld a, a
    push de
    call nc, $a1fe
    ld l, d
    add d
    ld h, d
    sbc e
    ld d, h
    rst $30
    dec sp
    ld b, e
    ld e, d
    and h
    ld d, a
    ld e, l
    cp b
    and h
    ld a, $19
    call nz, $15e1
    ld hl, $7aa1
    call nz, $8c53
    ld b, h
    ld [de], a
    ld l, [hl]
    pop bc
    ld c, $4a
    or h
    dec de
    ld hl, $b028
    ld b, c
    ld d, d
    sbc h
    adc d
    add hl, bc
    ld [de], a
    call nz, Call_00d_4b58
    ld h, h
    ld [hl], c
    ld [de], a
    ld d, l
    ld c, [hl]
    ld [hl], b
    ld a, [hl]
    ld e, d
    sbc b
    jp $5c84


    sbc d
    and [hl]
    ld d, l
    add hl, hl
    ld c, $1c
    ld e, d
    ld e, $69
    and h
    xor c
    ld a, [hl+]

jr_00d_63e7:
    ld a, [bc]
    xor e
    ld l, b
    ret c

    ld a, h
    ld a, [hl+]
    xor b
    ret


    or l
    ld d, d
    ld h, l
    ld d, $ae
    sub e
    ld d, h
    dec d
    push af
    ld a, [bc]
    add hl, bc
    and h
    ld [hl], $5a
    ld a, [bc]
    rst $38
    ld b, e
    ld l, c
    ld l, l
    jr @-$48

    sbc b
    ld b, [hl]
    rst $28
    jr jr_00d_63e7

    sub c
    jr @-$0e

    ld [hl], e
    push hl
    ld h, $f0
    ld d, c
    adc d
    ld a, [bc]
    add d
    add hl, bc
    ld c, e
    sub b
    add sp, -$5d
    inc e
    jr nc, jr_00d_6476

    ld h, l
    inc l
    pop bc
    add a
    jp nc, $cb42

    dec c
    inc bc
    dec de
    ld c, b
    ld e, d
    ld d, h
    jr nc, jr_00d_6497

    and h
    and h
    ld b, c
    inc bc
    dec d
    daa
    ld a, [bc]
    scf
    and h
    ld b, h
    ld b, c
    and c
    ld d, h
    ld b, l
    ld a, [de]
    ld c, c
    jp $5a24


    add l
    dec hl
    ld a, a
    xor d
    pop de
    ld [hl-], a
    sub a
    ld b, $42
    ld l, e
    inc h
    ld d, a
    ld [$4414], a
    ld c, h
    ld h, c
    ld c, d
    ld [de], a
    add e
    ld sp, $97bc
    ld e, [hl]
    xor e
    dec bc
    ld d, d
    ld h, l
    ld de, $e106
    ld c, c
    inc e
    ld h, c
    ld c, d
    ld e, l
    ld c, d
    add hl, bc
    db $10
    ld d, d
    and h
    or c
    ld c, $18
    ld d, h
    ld c, h
    ld c, e
    ld d, l
    ld e, h
    xor c
    cpl
    ld [de], a
    sub a
    ld d, h
    add hl, hl
    inc c

jr_00d_6476:
    sub l
    jp nc, $63b4

    ld c, e
    rst $38
    inc d
    sbc e
    jp nc, $5c16

    ld [hl], h
    dec hl
    ld b, a
    ld c, $ce
    ld h, c
    add hl, hl
    jp $7454


    ld c, h
    ld h, a
    ld h, $c9
    push hl
    call nc, $abaa
    ld b, a
    add b
    ld b, h
    cp c

jr_00d_6497:
    sub l
    rst $38
    ld [hl-], a
    ld [hl], h
    ret


    ld a, [$f3a5]
    ld d, h
    add $f5
    ld a, d
    ld d, e
    ld a, [hl+]
    add c
    ld sp, $0f57
    add sp, -$32
    and l
    ld hl, $b67e
    inc [hl]
    or h
    ld l, b
    ld a, a
    and d
    daa
    add c
    ld a, h
    or l
    or h
    adc b
    jp nz, $bd87

    ld c, h
    dec l
    cp h
    push bc
    ld a, e
    ld l, d
    inc c
    jp z, Jump_00d_4bdb

    ld h, l
    add l
    db $ec
    jp nc, $3082

    ld b, e
    push af
    ld a, b
    push de
    ld b, c
    ld d, h
    sub [hl]
    pop af
    ld d, h
    jp c, $d9c3

    ld [hl+], a
    ld c, $22
    jr c, jr_00d_6508

    call c, $a235
    inc l
    push hl
    ld d, a
    ld hl, sp-$15
    xor d
    inc a
    ret


    ret nc

Jump_00d_64ea:
    add $a8
    ld h, $4c
    add h
    ld [$647a], sp
    adc d
    ld h, l
    inc b
    inc de
    db $fc
    ld h, a
    ld a, [bc]
    ld h, d
    adc d
    dec de
    ld d, c
    add $83
    db $fc
    ret nz

    cp [hl]
    ld e, l
    inc de
    rlca
    rlca
    rst $38
    ret nz

jr_00d_6508:
    db $dd
    jp hl


    ld [hl], c
    ld c, h
    rrca
    rst $38
    jp Jump_00d_51ed


    xor h
    rrca
    jp nz, Jump_000_35da

    ld c, h
    ld l, a
    ld a, d
    rra
    rst $10
    ld a, [bc]
    add hl, hl
    xor h
    rrca
    ei
    ld hl, sp-$40
    sbc h
    ld d, e
    rst $10
    rst $38
    and d
    adc d
    ld [hl], b
    and b
    or a
    sbc $e4
    and a
    inc e
    jr jr_00d_65ac

    rst $00
    ld e, [hl]
    inc l
    ld a, h
    ld e, b
    ld [hl], a
    or a
    ld a, d
    or e
    adc c
    ld c, [hl]
    push de
    db $db
    ld d, l
    dec h
    ld d, h
    jp $d3ee


    sbc c
    ld h, c
    ld d, a
    ld l, d
    rla
    xor d
    adc d
    ld l, [hl]
    add c
    and e
    adc l
    db $fd
    xor c
    adc l
    ld d, h
    add [hl]
    push de
    and [hl]
    and e
    add c
    cp [hl]
    adc d
    sub h
    dec h
    ld hl, $5bc8
    ld h, d
    sub [hl]
    and e
    ld d, [hl]
    ld e, b
    jp nc, $a507

    ld c, c
    ret c

    sbc e
    cp [hl]
    ld d, e
    ld b, l
    adc [hl]
    ld c, $60
    ld d, d
    jr nz, jr_00d_65bb

    or h
    ld a, [hl-]
    ld d, h
    sub $36

jr_00d_6578:
    ld a, l
    ld h, d
    ld e, $a0
    ld b, d
    rst $10
    or a
    add sp, -$14
    cp h
    xor c
    ld l, d
    and l
    and b
    ld a, d
    inc a
    dec [hl]
    add hl, de
    ld a, [de]
    sub $05
    and e
    dec [hl]
    dec sp
    xor l
    ld d, [hl]
    dec h
    ld h, c
    ld d, h
    sub a
    pop bc
    ld d, e
    sbc l
    ld b, l
    ld d, a
    ld a, e
    cp a
    ld e, l
    jp nc, Jump_00d_7c17

    inc de
    sbc c
    rla
    ld b, $97
    ld e, [hl]
    ret z

    cp b
    ld d, $21
    rlca

jr_00d_65ac:
    ld a, [hl-]
    ld a, d
    sub c
    xor b
    ld a, d
    rst $00
    ld a, e
    cp $c5
    db $e3
    sbc d
    add d
    or e
    ld a, [hl+]
    ld [hl], a

jr_00d_65bb:
    ld sp, hl
    ld l, c
    ld h, b
    xor b
    jp hl


    or $48
    ret nc

    sbc $82
    adc h
    ld a, [hl+]
    adc [hl]
    cp a
    rst $38
    rst $10
    rst $38
    ld [hl], $aa
    ld a, [hl-]
    xor a
    xor a
    rst $38
    db $e3
    add c
    ld d, h
    db $ec
    sub c
    cp l
    xor e
    ld c, b
    ld c, a
    ld e, $d9
    ld l, d
    push af
    ld b, c
    add sp, -$3b
    ld d, h
    push bc
    jr c, jr_00d_6645

    xor b
    add [hl]
    ld c, $81
    db $e3
    inc [hl]
    jp z, $cdb4

    ld l, b
    ld [de], a
    jr jr_00d_6578

    ld d, b
    call nc, $34ca
    cp [hl]
    inc b
    inc d
    ld d, $af
    ld a, [$d277]
    ccf
    db $fc
    call $af34
    rst $38
    rst $28
    db $e3
    ld a, [bc]
    ld d, c
    ld [hl], a
    and e
    add hl, hl
    jr c, jr_00d_662e

    and b
    add d
    ld [hl], $bd
    rst $18
    ld c, h
    ld d, h
    ld a, [c]
    db $eb
    ld c, h
    ld h, e
    db $ed
    rst $20
    inc d
    sbc [hl]
    jp nc, Jump_00d_704a

    ld h, a
    ld c, e
    ld c, $d2
    ld c, d
    scf
    and [hl]
    sub a
    inc e
    adc b
    ld b, l
    xor c
    sub a
    add hl, de

jr_00d_662e:
    ld b, e
    rlca
    inc e
    inc l
    ld l, d
    sub h
    cp b
    and [hl]
    reti


    pop hl
    ld c, d
    ld d, $70
    ld sp, $e2e1
    ld hl, sp-$3a
    dec hl
    ld [hl], c
    call c, $d0c2

jr_00d_6645:
    ei
    ld d, $d8
    ld b, a
    add e
    ld c, $0d
    ccf
    adc d
    add d
    ld a, b
    rst $30
    adc h
    ld c, a
    sub c
    and $c9
    reti


    ld l, b
    inc hl
    db $e4
    ld [hl-], a
    ld l, b
    sub d
    sbc h
    add sp, $3c
    ld b, l
    ld [de], a
    sub d
    and [hl]
    ld d, c
    call nc, Call_000_36b1
    or l
    inc b
    add hl, sp
    sub e
    add d
    ld [hl], h
    call nz, $913f
    ld a, [hl-]
    sub h
    add a
    add h
    ld [$9dc0], sp
    ld e, e
    ld a, [hl]
    sub c
    ld d, h
    inc [hl]
    ld h, c
    ld h, a
    ld [hl], e
    dec c
    inc de
    ld sp, $76be
    or c
    ld a, [hl-]
    ret nz

    sbc h
    add hl, sp
    db $db
    inc de
    xor h
    ld a, d
    jr c, @+$5a

    dec hl
    rst $20
    and a
    xor b
    add hl, hl
    ld c, c
    and h
    sbc l
    adc [hl]
    xor b
    pop af
    dec bc
    add $b1
    ret nc

    add l
    adc l
    inc bc
    db $10
    sbc l
    pop af
    sbc [hl]
    ld sp, $2130
    ld a, d

jr_00d_66aa:
    rla
    dec e
    or b
    ld b, e
    inc e
    rla
    ld [hl-], a
    ld a, e
    ld sp, $d0f9
    ld h, [hl]
    cp [hl]

jr_00d_66b7:
    push de
    ld l, d
    xor d
    ld c, a
    ld de, $34a3
    db $ec
    ld b, c
    db $dd
    ld [hl], $53
    xor a
    rst $38
    or e
    ld l, [hl]
    ld a, [hl-]
    sub b
    add d
    jr c, @+$3a

    dec e
    inc b
    ld [c], a
    sbc b
    rst $20
    add d
    add sp, -$1f
    add l
    sub e
    xor c
    ret nc

    ld [hl], e
    dec d
    ld b, a
    dec sp
    xor a
    db $f4
    jp nz, $4a2a

    and h
    and $bf
    jr nc, jr_00d_6732

    inc hl
    ld [$fce6], sp
    pop bc
    inc a
    ld h, h
    inc hl
    inc c
    ldh [$4e], a
    ld l, e
    ld c, h
    ld [hl+], a
    ret c

    and [hl]
    ld a, [hl-]
    cpl
    ld c, d
    sub d
    jr jr_00d_66aa

    dec sp
    inc l
    cp a
    add hl, de
    inc a
    ld b, h
    jp nz, $a391

    jp nz, $bd4c

    inc a
    rst $28
    ret z

    ld c, [hl]
    inc [hl]
    inc de
    ld c, b
    jp z, Jump_00d_41e9

    inc d
    ret


    call c, $833f
    ld c, h
    inc hl
    ld c, e
    ld l, a
    cp l
    db $dd
    ld e, e
    add d
    ld [$af20], sp
    ld b, a
    ld h, h
    jp nc, $1826

    jr nz, jr_00d_66b7

    jr jr_00d_6755

    inc c
    db $f4
    and $89
    cp e
    ld [hl-], a
    ld e, d

jr_00d_6732:
    ld [hl], e
    ld [hl-], a

Jump_00d_6734:
    add hl, de
    ld [$2f33], sp
    and b
    sub b
    call z, $31c8
    xor d
    inc c
    call z, $d5ef
    ld d, l
    add sp, $20
    rst $08
    db $ec
    ld l, b
    call $ffb3
    ld b, l
    ld d, l
    ld e, e
    ld de, $a63f
    sub e
    cpl
    rst $38
    ld sp, hl

jr_00d_6755:
    adc d
    xor a
    ret nz

    adc a
    db $fc
    sbc b
    inc h
    rst $08
    rst $38
    rst $18
    dec h
    ld c, b
    rst $38
    db $ec
    add a
    ld a, [c]
    ld h, b
    call $d4bf
    ld de, $9332
    rst $18
    rst $38
    rst $38
    ld [hl], d
    add hl, bc
    ld a, e
    rst $38
    dec de
    ld d, l
    ld de, $ff57
    xor a
    call z, Call_000_0743
    and b
    ld sp, hl
    call $ff5f
    cp $c8
    cp a
    adc [hl]
    ld e, a
    and a
    dec e
    rst $38
    cp $e4
    ld a, $4c
    sub l
    ld a, [$5771]
    rst $38
    db $e4
    cp c
    xor h
    ld [hl], e
    rst $38
    db $fc
    adc e
    jp hl


    pop hl
    rst $18
    db $fc
    adc e
    jp hl


    ld l, c
    add d
    ld c, d
    ld [hl], b
    rst $38
    jp hl


    ld e, $92
    ld sp, hl
    ld [$3530], sp
    dec b
    ld c, d
    ld l, c
    ld a, a
    db $e4
    ld e, a
    adc a
    inc de
    ld d, b
    db $e4
    dec [hl]
    ld c, e
    sbc d
    rst $18
    sub b
    rst $18
    add h
    sbc b
    ld [hl], c
    ld l, d
    sub c
    sbc d
    rst $38
    ld a, [bc]
    dec c
    jp hl


    sub [hl]
    ld d, h
    ld b, l
    ld h, [hl]
    rst $08
    ret z

    pop bc
    ld a, a
    and c
    sub [hl]
    sub h
    xor e
    ld a, [bc]
    and [hl]
    ld c, l
    call nz, $ffb3
    ld a, [hl+]
    ld d, h
    add d
    ld de, $ff0b
    ld a, [$36a4]
    sub c
    scf
    ld a, a
    rst $38
    cp $aa
    cp e
    rst $38
    rst $38
    rst $38
    ld a, [$24b3]
    push de
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    call c, $cdd4
    rst $38
    rst $38

Jump_00d_67f8:
    adc d
    ld [$117f], sp
    ld e, [hl]
    rst $18
    ld [hl], h
    dec c
    inc d
    add [hl]
    ld b, a
    ld b, c
    ld b, c
    sbc e
    or e
    ld de, $d01c
    ret nz

    ld d, l
    cp [hl]
    add l
    rst $08
    dec b
    or b

Call_00d_6811:
    ld a, d
    inc a
    ld a, [bc]
    ld d, d
    ld e, c
    inc a
    dec de
    ld a, [bc]
    ld d, b
    adc [hl]
    jp c, $98a8

Call_00d_681e:
    ld h, l
    xor d
    ld c, [hl]
    ld d, a
    ld e, d
    xor d
    ld d, c
    jp z, Jump_00d_5592

    ld [hl-], a
    ld a, d
    dec d
    ld d, l
    dec l
    ld c, c
    ld b, c
    adc b
    adc h
    inc a
    adc a
    xor d
    xor d
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld sp, $21b5
    ld d, [hl]
    daa
    ld [$56b9], sp
    inc [hl]
    cp a
    jp z, Jump_00d_4953

    ld c, l
    call nc, Call_00d_6951
    sub h
    pop bc
    ld h, $93
    ld e, c
    ld d, b
    add c
    add c
    add hl, de
    ld d, l
    add c
    add hl, hl
    inc [hl]
    ld b, [hl]
    ld a, [de]

Call_00d_6858:
    ld b, $35
    xor d
    adc l
    and a
    add hl, bc
    inc b
    pop af
    db $ec
    db $fc
    ld a, $7e
    ld h, b
    cp d
    ld a, b
    rrca
    xor l
    cp $78
    rra
    ld d, b
    ld d, a
    and b
    jp Jump_00d_4b27


    rst $38
    xor c
    adc h
    sub d
    add d
    ld l, l
    rst $38
    rst $38
    ld sp, hl
    ld e, $90
    add e
    ld de, $bf19
    rst $38
    rst $38
    db $e4
    ld [hl], c

Jump_00d_6885:
    sbc e
    add hl, de
    rst $10
    push af
    ld d, l

Jump_00d_688a:
    add hl, de
    pop hl
    inc c
    ld [hl], b
    cp a
    ret nc

    add hl, hl
    sbc h
    add hl, bc
    jp nz, Jump_000_02ff

    ldh a, [rOBP1]
    ld c, h
    ld d, h
    sbc d
    db $fc
    cpl
    pop af
    ld sp, $c910
    inc c
    ld l, e
    inc de
    pop af
    db $e3
    rst $00
    rst $20
    nop
    ld b, h
    or [hl]
    ld c, [hl]
    and h
    adc d
    db $d3
    sbc [hl]
    ld [$1788], sp
    ld c, [hl]
    ld l, c
    ld h, $d0
    cp l
    ld c, d
    ld d, e
    jr z, jr_00d_6939

    ld d, a
    sub c
    ld a, d
    ld e, b
    pop bc
    ld h, $77
    ld [$8daf], a
    push hl
    ld h, $9f
    ld d, l
    or e
    ld l, c
    rrca
    rst $38
    rst $38
    xor d
    ld [hl], e
    add d
    cp l
    ld d, h
    dec d
    ld d, [hl]
    ld c, [hl]
    ld c, e
    jp $aeaa


    dec hl
    dec [hl]
    ld a, d
    add c
    ld d, l
    ld d, d
    ld a, [de]
    ld c, h
    ret c

    rra
    ei
    ld d, [hl]
    add c
    adc c
    and e
    ld h, $89
    and c
    ld a, d
    jr c, jr_00d_695c

    cp e
    ld d, b
    di
    or d
    and e
    ret nc

    sbc d
    xor d
    sbc h
    ld [$828c], a
    ld [hl], e
    push bc
    cp e
    sbc h
    jp z, Jump_000_3061

    ld h, $09
    adc d
    ld l, $e9
    ld c, e
    ld hl, sp+$48
    ld b, [hl]
    ld c, $4c
    dec e
    or d
    ld [hl-], a
    add h
    ld l, b
    ld sp, hl
    add h
    ld [de], a
    dec [hl]
    ld d, h
    ld l, e
    ld a, d
    xor d
    cp h
    rla
    ei
    inc e
    rla
    ld e, a
    add h
    dec d
    xor b
    daa
    ld [de], a
    rrca
    ret z

    rst $18
    ld a, [bc]
    sbc e
    rst $38
    db $fc
    db $10
    ld l, d
    inc [hl]
    ld [de], a
    ld h, h
    cp a
    inc c
    jr c, jr_00d_6982

    sbc h
    inc l
    ld e, l

jr_00d_6939:
    db $fc
    ld b, d
    ld [hl], c
    ld b, [hl]
    dec d
    add l
    rra
    ld a, [de]
    ld h, [hl]
    cp [hl]
    rla
    daa
    dec sp
    rst $18
    xor d
    ld d, d
    or e
    jp nz, Jump_00d_5186

    ld a, l
    ld d, $a4
    db $eb

Call_00d_6951:
    ret z

    ld c, c
    add c
    ld a, [de]
    ld d, d
    ld h, e
    xor l
    add hl, de
    ld l, d
    inc d
    ld h, b

jr_00d_695c:
    ld l, c
    inc d
    ld [$0586], a
    add hl, hl
    inc b
    ld d, [hl]
    ld [hl+], a
    and l
    add hl, sp
    ldh [$c7], a
    ld a, [hl+]
    ld a, [hl+]
    ld hl, $9348
    add e
    ld hl, $2804
    add hl, de
    add hl, hl
    ld a, b
    ld e, $a2
    ld d, e
    adc c
    ld [$c9c3], sp
    and e
    ld h, l
    ld hl, $4453
    or a

jr_00d_6982:
    call $eaf2
    jr c, jr_00d_6999

    ld d, [hl]
    dec hl
    pop de
    ld d, d
    ccf
    add hl, de
    ld c, c
    ld c, d

jr_00d_698f:
    ld c, b
    add a
    ld a, [hl+]
    ld c, h
    jr z, jr_00d_6a04

    adc d
    ld b, [hl]
    ld d, h
    cp b

jr_00d_6999:
    sbc b
    add [hl]
    ld b, [hl]
    jr nc, jr_00d_69f1

    ld e, c
    jr c, jr_00d_6a11

    push bc
    inc sp
    adc h
    add sp, -$76
    ld c, l
    ld l, c
    ld a, [bc]
    dec h
    and h
    add hl, hl
    jr nc, jr_00d_6a06

    ld h, h
    sbc b
    adc $88
    sub l
    ld [$148a], sp
    sbc d
    adc h
    inc de
    adc d
    adc [hl]
    inc h
    ld d, e
    ld a, [de]
    and e
    ld e, d
    inc e

Jump_00d_69c1:
    ld l, b
    adc d
    inc d
    ld d, d
    inc hl
    sbc l
    ld c, d
    add $d1
    and h
    ld l, $1c
    jp hl


    xor a
    jr nc, jr_00d_698f

    ld a, [de]
    ld h, d
    db $d3
    jp $8caa


    ld h, e
    db $eb
    and [hl]
    add hl, hl
    db $eb
    ld b, d
    adc h
    ld c, h
    ld a, b
    ld l, d
    sbc b
    ld b, [hl]
    add hl, bc
    pop de
    jr jr_00d_6a45

    ld e, h
    ld [de], a
    ld [hl], h
    ld b, e
    db $10
    add h
    ld c, a
    or d
    ld [de], a
    ld b, h

jr_00d_69f1:
    db $10
    ld hl, $a91c
    ld c, d
    and c
    db $ec
    sub c
    ld a, [bc]
    ld de, $ffd9
    ldh a, [$5f]
    add d
    ld de, $2750
    ld [hl+], a

jr_00d_6a04:
    ld c, l
    db $fc

jr_00d_6a06:
    cp $d9
    add d
    ld c, h
    sbc h
    ld de, $8b2e
    rst $38
    add sp, $24

jr_00d_6a11:
    and h
    ld b, h
    and a
    dec de
    pop bc
    add [hl]
    rst $38
    ld sp, hl

jr_00d_6a19:
    add a
    and [hl]
    add hl, bc
    ld [$7f26], sp
    add [hl]
    rra
    rst $38
    and $1f
    sub [hl]
    sbc h
    ld e, a
    sub c
    ccf
    cp $11
    dec [hl]
    jp hl


    ld [hl], c
    ld d, c
    and a
    db $e3

Call_00d_6a31:
    ld a, a
    ld sp, hl
    sbc h
    ld d, d
    sub c
    inc b
    ld l, l
    dec sp
    or a
    ld a, [c]
    ld l, [hl]
    adc h
    sbc h
    ld a, a
    cp $8b
    jp hl


    ld c, c
    ld c, b
    and h

jr_00d_6a45:
    ld c, c
    xor e
    db $ed
    rst $38
    ccf
    sub c
    inc de
    add d
    ld de, $3131
    sbc h
    rla
    jr jr_00d_6ab0

    ld [$2224], sp
    add d
    ld d, h
    adc d
    ld l, l
    ld de, $9816
    ld c, b
    daa
    ld c, h
    db $10
    ld b, h
    xor e
    and e
    inc bc
    inc d
    sbc h
    or b
    inc h
    call nz, $a4df
    and e
    dec e
    ld [hl], h
    ld d, d
    ld b, l
    ret nc

    jr nc, jr_00d_6a19

    and a
    db $e3
    ret nz

    ld b, h
    or e
    ld l, d
    and h
    push bc
    ld d, e
    ld d, [hl]
    inc b
    xor c
    ld hl, $8dba
    ld de, $b9e4
    add l
    ld e, b
    call $8927
    ld c, [hl]
    ld b, h
    push bc
    ld b, $3a
    ld [de], a
    add hl, sp
    add c
    add hl, hl
    ld d, e
    ld l, a
    daa
    sub b
    jp z, $3246

    adc b
    adc b
    ret nc

    add d
    ld l, $4d
    ld [hl+], a
    inc e
    ld h, b
    call z, Call_00d_48e3
    ld l, h
    call $e004
    sub e
    ld c, a
    add d
    ld c, [hl]

jr_00d_6ab0:
    add hl, bc
    ld d, l
    ld l, b
    ld h, $d1
    adc [hl]
    ld b, a
    ld hl, sp+$14
    cpl
    ld c, [hl]
    ld c, e
    rst $38
    adc d
    adc a
    add l
    ret c

    cp b
    ld a, [hl+]
    ld a, [c]
    jr jr_00d_6ae7

    add d
    ld h, a
    add d
    inc de
    ld [de], a
    call z, Call_000_0f84
    and $18
    or d
    add hl, bc
    ld a, [hl+]
    cp d
    jr nc, jr_00d_6b2c

    ld h, a
    inc a
    db $d3
    pop de
    ld [de], a
    inc de
    ld a, [de]
    reti


    reti


    adc h
    ld b, d
    ld b, [hl]
    add hl, bc
    ld l, l
    ld d, d
    ld e, d
    add hl, hl

jr_00d_6ae7:
    db $10
    ld b, h
    ld b, l
    ret z

    ld a, [hl-]
    ld e, h
    ld l, $4a
    and $77
    add $5d
    or b
    ld a, [hl-]
    ld e, d
    add hl, bc
    ld [de], a
    ld h, b
    adc e
    dec b
    dec c
    ld [$12cc], a
    sbc c
    ld b, e
    add e
    inc h
    and d
    jp c, $c90c

    sbc h

Jump_00d_6b08:
    rra
    push de
    rrca
    ld c, l
    inc hl
    sbc b
    ld h, l
    ld e, c
    jr @+$35

    adc e
    ret z

    daa
    ld [de], a
    inc e
    jp $1882


    rst $20
    inc c
    ld h, l
    inc b
    ld sp, $80e2
    ld [hl], a
    cp [hl]
    ld bc, $21a9
    xor d

jr_00d_6b27:
    ld c, a
    dec h
    adc d
    xor b
    cp b

jr_00d_6b2c:
    pop af
    pop de
    ld c, h
    sub d
    ld h, h
    ld a, [c]
    inc hl
    jr z, jr_00d_6b68

    ret z

    ld c, c
    ld c, e
    ld c, c
    ret z

    xor d
    and l
    inc a
    inc e
    ld [de], a
    ccf
    ld [hl], e
    dec b
    ld h, $3b
    cp $08
    ld [hl], b
    cp h
    jp nz, $460a

    inc sp
    ld h, h
    push de
    inc hl
    ld hl, $9322
    add hl, hl
    jr @+$57

    ld l, $38
    ld d, c
    push bc

jr_00d_6b59:
    add hl, de
    cpl
    jr nc, jr_00d_6bc5

    xor d
    ld [hl+], a
    ld hl, $6235
    inc d
    ld l, c
    sub b
    or h
    push bc
    ld [hl-], a

jr_00d_6b68:
    sbc b
    ld e, b
    sub $21
    dec [hl]
    cp h
    ld [de], a
    xor h
    add h
    or l
    adc l
    sub d
    ld a, l
    inc [hl]
    or $33
    ld c, d
    adc [hl]
    inc h
    ld a, [hl]
    inc b
    db $d3
    rst $00
    scf
    adc [hl]
    jr z, jr_00d_6bff

    pop bc
    inc b
    ld e, a
    adc h
    inc [hl]
    jp z, $8153

jr_00d_6b8b:
    rlca
    ld b, [hl]
    dec bc
    ld h, c
    ld a, b
    inc de
    jr jr_00d_6b59

    ld d, b
    and h
    adc $08
    dec hl
    ret c

    jp nc, $9229

    dec d
    jr jr_00d_6b27

    adc c
    ld [hl-], a
    sub b
    add $22
    xor e
    ld c, h
    sub d
    inc h
    inc hl
    jr z, jr_00d_6b8b

    sub d
    or h
    adc [hl]
    ld c, h
    ld [hl+], a
    and $81
    ld l, $58
    reti


    daa
    pop bc
    ldh a, [$8a]
    and e
    ld a, [hl+]
    adc [hl]
    xor b
    adc a
    rst $38
    rlca
    inc a
    call nc, Call_000_3198
    adc c

jr_00d_6bc5:
    ld c, a
    add hl, hl
    inc d
    ld h, c
    ld c, b
    ld c, a
    ld [hl-], a
    ld h, d
    and c
    ld c, a
    ld a, $52

jr_00d_6bd1:
    ld e, b
    db $f4
    ld [$c58f], a
    or a
    jp $8fa1


    and a
    sub d
    ret


    cpl
    ld d, d
    ld a, [hl+]
    ld a, b
    add sp, $21
    inc c
    ld c, d
    ld [$e4a9], sp
    ld b, e
    rla
    ld b, $a1
    ld e, $2a
    ld e, d
    sbc b
    ld h, h
    db $e4
    ld h, b
    sbc [hl]
    ld [hl], d
    inc l
    jr z, jr_00d_6bd1

    ld [c], a
    ld d, c
    ld l, c
    dec d
    add h
    ld a, [de]
    add hl, de

jr_00d_6bff:
    sbc e
    and [hl]
    ret


    add d
    ld [de], a
    add e
    push de
    inc hl
    and e
    ld b, [hl]
    ld a, h
    ld de, $52ba
    inc d
    add l
    ld c, $44
    jr nc, jr_00d_6c74

    dec d
    sub c
    adc e
    sbc e
    inc [hl]
    xor h
    ld [de], a
    add h
    ld l, h
    sbc b
    pop hl
    add e
    add $d0
    jp nc, Jump_000_195d

    inc hl
    and e
    and [hl]
    inc e
    ld l, l
    dec h
    rst $00
    ld c, [hl]
    ld [hl], e
    ret


    add h
    ld l, a
    sbc b
    ld [hl], c
    ld e, c
    push bc
    add hl, de
    xor l
    dec de
    ld sp, $0996
    or d
    and [hl]
    inc d
    add e
    add hl, de
    inc h
    ld d, c
    add d
    jr @+$63

    and [hl]
    ld l, e
    sub [hl]
    push af
    xor b
    ld c, c
    adc h
    ld a, [de]
    add hl, hl
    ld sp, $1612
    sbc c
    ld b, b
    ld [c], a
    pop de
    ld [hl], h
    ret z

    or e
    ld b, e
    ld h, b
    xor c
    add h
    adc [hl]
    ld l, e
    ld d, b
    ld h, $b4
    dec bc
    jr jr_00d_6cb6

    sub a
    rlca
    dec de
    and a
    inc d
    ld l, c
    dec e
    ld c, c
    sbc e
    sbc [hl]
    ld [hl], d
    ld h, e
    inc de
    ld e, $5a
    add hl, bc
    ld c, h

jr_00d_6c74:
    inc [hl]
    ld a, c
    sub [hl]
    ld d, [hl]
    dec c
    ld e, $7d
    ld [hl], h
    db $ec
    ld a, d
    ld d, b
    rst $00
    ld [c], a
    ret nz

    ld b, h
    or d
    ld l, c
    dec d
    xor d
    ld c, [hl]
    ld h, $26
    adc h
    inc h
    ldh a, [rHDMA3]
    add l
    ret nc

    sbc l
    ld sp, $d754
    pop hl
    db $ec
    add sp, -$3f
    ld l, [hl]
    jp c, $8e73

    dec c
    adc h
    ld [hl], e
    sub a
    call z, $97b3
    call nc, Call_00d_681e
    db $e4
    ld b, [hl]
    ret nc

    ret c

    inc [hl]
    pop bc
    ld c, l
    inc h
    add l
    rst $18
    adc e
    ld c, [hl]
    ld [$8260], sp
    dec l

jr_00d_6cb6:
    adc [hl]
    add hl, hl
    ld [hl-], a
    ld h, e
    sbc d
    ld d, l
    ld e, d
    ld a, $33
    ld h, [hl]
    jp c, Jump_00d_6b08

    ret


    jp nz, $12b1

    inc d
    inc [hl]
    and a
    inc b
    ld d, h
    ld h, b
    add l
    dec e
    ld l, a
    and c
    ld a, [bc]

jr_00d_6cd2:
    ld l, b
    sub l
    add sp, $3c
    ld b, h
    ld b, h
    ld h, [hl]
    cp d
    sbc $b4
    ld d, h
    ld l, [hl]
    pop bc
    ld b, h
    rst $00
    add b
    sbc l
    adc a
    dec hl
    daa
    ld h, $94
    ldh a, [rWY]
    adc h
    ld a, $6b
    cpl
    rla
    ld [hl-], a
    add h
    ld [hl], b
    and [hl]
    inc l
    dec c
    rst $00
    dec c
    dec h
    jr nz, @-$32

    ld [hl], e
    dec [hl]
    ld e, a
    ld b, a
    push bc
    add b
    ld d, l
    cp [hl]
    sbc c
    ld d, h
    pop bc
    adc $a7
    or [hl]
    dec h
    ld a, b
    jp hl


    ld a, b
    add h
    add a
    xor l
    ld a, [hl-]
    inc d
    ld hl, $3081
    adc l
    sub l
    ld d, h
    and h
    dec d
    add l
    ld a, [bc]
    scf
    ld a, [hl]
    or h
    ccf
    db $f4
    inc a
    add $8d
    ld e, $25
    add c
    ld h, $82
    adc d
    ld e, d
    add hl, sp
    jr z, jr_00d_6cd2

    add hl, de
    dec l
    db $fd
    ld c, l
    sbc $49
    ld b, e
    ld a, b
    xor [hl]
    and [hl]
    or h
    inc e
    ld d, h
    and [hl]

Jump_00d_6d3b:
    inc b
    ld e, c
    sbc b
    pop de
    ret nc

    xor b
    sbc e
    ld d, d
    add hl, hl
    cp e
    ld h, b
    ld e, d
    ld c, b
    ld d, a
    dec d
    dec b
    ld l, $bf
    xor a
    and l
    and d
    xor c
    ret nc

    and d
    sub e
    ld c, d
    xor d
    ld [hl], $a0
    and e
    push bc
    and e
    ret z

    xor d
    adc a
    ld d, $a3
    rst $00
    adc a
    ld b, d
    ld a, l
    ld [hl-], a
    add hl, hl
    ld [c], a
    pop de
    pop hl
    and c
    add d
    sub d
    sbc l
    xor b
    rst $38
    xor b
    and a
    ld a, [de]
    ld c, d
    ld e, [hl]
    rst $18
    add d
    ld sp, $10c1
    db $d3
    ld [bc], a
    jr nc, jr_00d_6df0

    ld a, c
    add hl, hl
    and d
    ld e, h
    or e
    adc h
    pop hl
    add e
    ld h, h
    ld b, a
    ld b, l
    cp e
    ld l, h
    ld de, $1029
    ld h, $ed
    inc hl

jr_00d_6d90:
    db $fc
    inc l
    ld e, d
    and [hl]
    ld [hl], h
    and h
    ld l, e
    rst $38
    dec bc
    ld a, [bc]
    dec bc
    ld e, a
    jp hl


    ld de, $7f87
    db $f4
    jr z, jr_00d_6deb

    ld b, h
    ld [hl], a
    cp a
    ld a, [$9411]
    inc l
    ld [hl-], a
    ld de, $7f9d
    sbc [hl]
    dec l
    reti


    db $e3
    ld b, c
    add d
    ld a, b
    or b
    ld h, a
    adc a
    rra
    jr nc, jr_00d_6dff

    cp c
    ld a, [de]
    ld hl, $9ea3
    ld d, c
    ld h, h
    db $ec
    and [hl]
    db $e3
    and c
    ld b, d
    adc [hl]
    rla
    or [hl]
    db $fd
    dec de
    dec l
    ld [hl-], a
    ld [hl], c
    ld b, [hl]
    rst $30
    pop de
    or h
    pop de
    ldh [$bf], a
    adc b
    sbc [hl]
    or l
    cp c
    ld c, [hl]
    adc e
    rst $28
    ld d, e
    xor a
    sub d
    inc hl
    dec b
    jr nc, jr_00d_6e2f

    ld h, l
    inc b
    jp nc, $88d4

    dec [hl]
    ld e, b

jr_00d_6deb:
    jr nz, jr_00d_6d90

    ld a, d
    db $fd
    ld a, d

jr_00d_6df0:
    xor d
    ret nc

    db $e3
    or [hl]
    adc a

jr_00d_6df5:
    xor d
    sbc h
    xor c
    ld c, d
    ld [hl], e
    call nc, $f98b
    pop de
    dec sp

jr_00d_6dff:
    rst $38
    inc e
    push af
    db $d3
    ld sp, $12aa
    db $e3
    inc d
    sub l
    add hl, de
    set 5, l
    add hl, hl
    adc h
    ret


    add d
    ld c, h
    ld de, $0c34
    ld [de], a
    add l
    rst $20
    ld b, [hl]
    adc h
    ld b, h
    ld h, d
    sbc e
    cp $9a
    sub $a4
    ld a, [hl+]
    ld b, e
    ld a, [$b5a9]
    db $eb
    inc sp
    ld d, h
    ret c

    ld l, c
    pop bc
    inc de
    jr jr_00d_6e75

    pop hl

jr_00d_6e2f:
    ld h, b
    ld h, [hl]
    cp b
    dec d
    ld c, a
    add hl, hl
    ld a, [$4faf]
    dec d
    cp a
    call nc, Call_000_338a
    ld d, l
    ld c, [hl]
    ld b, l
    and d
    dec hl
    ret nc

    or h
    and a
    ld [$38ad], a
    ld d, b
    ld l, d
    xor c
    ld b, d
    add l
    ld c, b
    and d
    dec d
    ld b, d
    db $d3
    xor d
    ld l, l
    push de
    and d
    ld [hl+], a
    ld h, b
    ld b, c
    jr c, jr_00d_6df5

    ld c, d
    ld [hl], b
    xor b
    xor b
    cp b
    add h
    sub $49
    ld d, b
    ld d, l
    ld a, a
    ld [c], a
    ld h, c
    ld l, c
    add hl, sp
    ld l, d
    sbc d
    ld l, $a3
    inc b
    sub h
    pop hl

jr_00d_6e71:
    ld d, l
    sbc b
    pop de
    ld [hl+], a

jr_00d_6e75:
    add hl, sp
    sbc a
    ld [c], a
    ld a, [hl+]
    add hl, hl
    ld c, b
    ld c, e
    ld b, c
    dec h
    inc [hl]
    and d
    ld [de], a
    ld l, $29
    ld b, c
    push de
    add hl, hl
    add hl, bc
    inc b
    and h
    or l
    jr @-$44

    ld d, l
    ld b, d
    sbc d
    ld h, c
    add l
    jr jr_00d_6e71

    ld a, [c]
    ld e, d
    ld c, e
    add l
    inc d
    sbc d
    adc h
    ld h, e
    ld c, d
    and d
    ld h, l
    ld a, [hl+]
    ld a, l
    adc l
    ld e, b
    add sp, -$58
    ld d, $b6
    sub d
    push de
    adc [hl]
    or a
    adc h
    and b
    xor d
    dec sp
    sub e
    ld e, d
    inc a
    ld b, h
    jp z, Jump_000_198f

    ld h, $81
    inc a
    ld d, h
    adc c
    ld e, b
    ld hl, $4f88
    ld bc, $9035
    and e
    ret nz

    sub h
    jp nc, $c3e3

    xor c
    ld d, l
    ld e, d
    scf
    call c, $a708
    sub [hl]
    pop bc
    ld [hl], $78
    db $eb
    ld b, $2d
    ld hl, $a499
    daa
    inc hl
    sub a
    ld b, $c8
    dec h
    cp b
    ld d, h
    add hl, bc
    call nz, $76e6
    inc c
    sub b
    ld a, [c]
    ld a, [hl+]
    ld [hl-], a
    sbc e
    call nz, $8aa9
    ld [de], a
    ld a, [de]
    ld b, e
    inc c
    adc [hl]
    sbc e
    ld [hl+], a
    jp $b824


    or d
    ld b, h
    adc d
    adc d
    ld a, [hl-]
    ld l, e
    ld c, c
    ld c, a
    ld d, b
    sbc $90
    sub c
    ld c, h
    ld d, h
    ld [hl], c
    scf
    ld b, l
    call nz, Call_00d_50c4
    pop de
    jp nz, $c18a

    dec b
    ld [bc], a
    push bc
    ret


    ld de, $b631
    db $10
    ld b, c
    ld de, $1b3f
    ret


    ld de, $29a6
    jp nz, Jump_000_2987

    inc [hl]
    call $e542
    db $e4
    ld a, [$8bc9]
    ld sp, $8c0c
    rst $10
    db $10
    sbc c
    and b

jr_00d_6f31:
    and c
    inc c
    sub [hl]
    sub [hl]
    adc d
    ld b, l
    inc de
    add $90
    push bc
    jr nc, jr_00d_6f67

    ld a, [de]
    ld a, [hl+]
    jp Jump_000_3425


    ld [hl], h
    ld b, e
    ld hl, sp+$53
    ld l, c
    scf
    ld c, c
    ret c

    or c
    ld de, $9134
    dec e
    adc $67
    ld [hl], c
    pop hl
    ld b, l
    ret nz

    add h
    rst $00
    sbc b
    and b
    sbc [hl]
    ld h, $98
    ld c, b
    db $e4
    daa
    add c
    and [hl]
    ld d, $e8
    reti


    ldh [$b0], a
    add hl, hl

jr_00d_6f67:
    dec [hl]
    add d
    ld a, b
    or b
    or l
    ld d, d
    ld de, $44b8
    cp c
    sbc a
    ei
    ld a, [hl-]
    ld h, b
    ld b, a
    adc $a4
    ld d, d
    inc de
    scf
    db $fd
    dec b
    cp a
    push af
    ld a, h
    jp nc, Jump_00d_6885

    jp c, $944c

    ld a, [hl+]
    adc c
    ld c, [hl]
    ld l, e
    ldh [$8a], a
    db $dd
    dec h
    inc b
    sub $b6
    ld c, b
    cp c
    cp $0b
    jr c, jr_00d_6fb8

    add l
    ld h, c
    ld h, d
    inc sp
    adc l
    ld [$2b5a], sp
    jr c, jr_00d_6f31

    add c
    adc [hl]
    ret


    add c
    ld d, l
    and b
    and e
    adc [hl]
    ld l, b
    jp nz, $89f3

    adc a
    sub d
    call c, $a7ea
    ld h, l
    and c
    sbc l
    adc b
    jr z, jr_00d_6fde

jr_00d_6fb8:
    or b
    jp nz, $a086

    xor a
    cp d
    sbc c
    ld [hl], h
    add a
    jr nc, jr_00d_7004

    add [hl]
    sub l
    ld h, [hl]
    ld e, e
    ld hl, $6470
    ld e, h
    ld [hl], c
    sbc $08

jr_00d_6fce:
    ld sp, hl
    ldh [rOBP0], a
    jr z, jr_00d_7048

    jp hl


    res 7, l
    db $fd
    dec e
    ld [$553c], sp
    inc e
    adc e
    push bc

jr_00d_6fde:
    ld [hl], $e7
    ld a, [de]
    xor l
    ld d, h
    jr z, jr_00d_700c

    rra
    add hl, de
    ld e, c
    db $f4
    ret nz

    ld [hl], a
    cp [hl]
    db $fd
    ld e, e
    db $fd
    ld d, e
    call z, $e860
    sbc b
    ld h, h
    and $54
    ldh [$62], a
    ld l, d
    and [hl]
    ld h, $4e
    dec b
    and d
    jr z, jr_00d_6fce

    ld h, b
    ld d, l
    ld c, l

jr_00d_7004:
    sub e
    ld d, [hl]
    dec d
    and h
    ld h, e
    ld b, $06
    adc d

jr_00d_700c:
    and l
    ld d, e
    dec d
    ld d, h
    add l
    ld h, b
    ld e, b
    reti


    add l
    dec d
    xor c
    ld b, l
    ld e, l
    ld d, l
    xor d
    xor e
    ld [c], a
    jr @-$21

    and d
    ld e, b
    and l
    xor d
    xor l
    ld sp, $a448
    inc de
    ld b, h
    sbc b
    sub h
    ld d, d
    ld d, b
    sbc d
    di
    inc b
    ld h, d
    ld de, $2d99
    ld l, $93
    ld [$0899], sp
    ld d, $8a
    adc b
    add $14
    db $10
    adc l
    and e
    add hl, bc
    adc d
    add d
    ld [hl+], a
    ld c, l
    ldh [rDMA], a

jr_00d_7048:
    ld b, l
    inc d

Jump_00d_704a:
    sub a
    and l
    ld d, l

jr_00d_704d:
    ld [hl], l
    ld c, b
    ld b, d
    dec d
    sub e
    ld h, h
    sbc $88
    call z, $9858
    add l
    add d
    xor c
    ld d, l
    ld e, d
    add hl, hl
    dec sp
    pop hl
    and e
    ld h, l
    ld c, b
    ld b, c
    add c
    ld [hl], h
    rst $10
    ld a, [hl+]
    ld c, e
    ld e, [hl]
    adc l
    xor d
    dec h
    ld [hl-], a
    call z, Call_00d_42a1
    or d
    jr jr_00d_704d

    jr c, jr_00d_70e3

    ld hl, $1953
    ld c, b
    ld c, [hl]
    add h
    sub l
    daa
    sbc b
    ld h, c
    ld h, e
    inc h
    or h
    db $ec
    ld c, c
    ld [hl], c
    adc c
    ld c, c
    ld h, e
    inc d
    ld [c], a
    and b
    and e
    daa
    ld h, d
    ld d, b
    xor d
    inc [hl]
    sub d
    db $d3
    dec h
    ld c, d
    ld b, l
    dec [hl]
    adc [hl]
    inc b
    jp hl


    and b
    sub h
    cp b
    adc l
    dec [hl]
    ld h, d
    ld h, e
    ld c, b
    jp c, Jump_00d_6195

    xor e
    push af
    ld d, l
    cp $3c
    xor e
    ld b, [hl]
    xor d
    add l
    ld c, a
    ld [hl-], a
    push af
    ld d, a
    db $fc
    and h
    ld a, [c]
    xor c
    ld a, d
    adc b
    ld e, b
    di
    ld [$39aa], a
    rst $30
    rst $18
    and e
    dec hl
    ld a, [bc]
    ld a, c
    xor b
    ld d, c
    ld d, h
    add hl, bc
    adc $9c
    sbc d
    rst $38
    ld a, [$2991]
    ret nz

    add [hl]
    ld de, $9a19
    add hl, hl
    jr nc, jr_00d_70fb

    ld d, [hl]
    sub c
    and [hl]
    xor a
    dec d
    adc [hl]
    ld h, d
    jp $0515


    ld c, d
    ld a, [c]

jr_00d_70e3:
    or c
    add hl, hl
    ld [$65f8], sp
    add $0d
    add hl, sp
    ld [hl-], a
    sub d
    adc e
    jr z, jr_00d_7155

    ret c

    jr nc, jr_00d_712f

    ld h, d
    sub h
    and l
    or h
    ld b, l
    inc hl
    dec b
    dec bc

jr_00d_70fb:
    rst $38
    rst $10
    ei
    ld l, c
    and [hl]
    ld b, [hl]
    ld b, d
    inc c
    dec l
    ld hl, $b0de
    ld h, c
    ld a, [bc]
    add l
    dec bc
    jp nc, Jump_00d_5a0a

    ld e, h
    add d
    jr nc, jr_00d_7150

    ld b, h
    ret nz

    xor d
    adc h
    inc [hl]
    ld a, $14
    ld a, [bc]
    ld b, d
    ld d, h
    ld h, e
    rla
    ld [hl], c
    inc [hl]
    add e
    sub e
    cpl
    rst $38
    ei
    sub [hl]
    adc d
    add hl, sp

jr_00d_7128:
    add e
    ld l, $ae
    ld a, [hl+]
    ld de, $7a08

jr_00d_712f:
    ld b, d
    xor d
    pop de
    adc h
    ld sp, $a578
    cpl
    db $d3
    inc c
    ld b, h
    adc d
    ld [hl], b
    jr nc, jr_00d_71a4

    adc b
    ld [hl+], a
    call z, Call_000_0a6d
    or l
    ld d, a
    push af
    ld e, b
    jr c, jr_00d_717b

    cp d
    ld e, h
    ld [$1246], sp
    add hl, hl
    ld a, [bc]

jr_00d_7150:
    ld de, $5c6a
    db $10
    push bc

jr_00d_7155:
    ld b, d
    or c
    ld sp, $2f09
    pop af
    add hl, de
    adc h
    ld c, d
    ld l, d
    sub e
    ld e, c
    adc h
    ld d, l
    and d
    and $30
    xor c
    sbc [hl]
    jr z, jr_00d_71a3

    inc l
    pop de

jr_00d_716c:
    add l
    inc l
    ld l, $5e
    add hl, bc
    jp $9291


    jp nz, Jump_00d_4a99

    or c
    sub [hl]
    sbc h
    ld [hl-], a

jr_00d_717b:
    inc e

jr_00d_717c:
    ld c, h
    ld l, b
    rst $20
    inc d
    sub d
    and $5b
    sub l
    xor b
    ld h, [hl]
    add hl, bc
    add hl, de
    pop bc
    xor b
    and [hl]
    sbc c
    add l
    dec b
    jr nz, jr_00d_7128

    ld c, c
    cp e
    ld hl, $9146
    or h
    dec c
    inc h
    ld e, l
    ld [hl-], a
    ld c, e
    inc [hl]
    ld a, [hl+]
    ld a, b
    call nc, Call_00d_5491
    ld c, e
    pop af

jr_00d_71a3:
    push hl

jr_00d_71a4:
    jr nc, jr_00d_71d0

    jr c, jr_00d_716c

    add hl, sp
    push hl
    ld b, c
    adc d
    xor d
    ld [de], a
    ld a, d
    ld de, $ce51
    ld b, h
    cp d
    sub l
    inc [hl]

jr_00d_71b6:
    ld d, l
    ld d, l
    xor d
    xor d
    and e
    ld [hl], $a5

jr_00d_71bd:
    ld d, l
    ld e, a
    rst $38
    jp nz, Jump_000_29a9

    ret z

    ld [$9d5a], a
    xor d
    inc sp
    adc l
    cp [hl]
    jr c, jr_00d_71b6

    jr nc, jr_00d_724b

    cp [hl]

jr_00d_71d0:
    ld c, h
    sub d
    ld [hl+], a
    rst $28
    daa
    ld a, [bc]
    ld sp, $928b
    jp nc, $a3f0

    inc b
    ld de, $c27c
    ldh a, [$57]
    ret c

    pop bc
    ld l, $49
    ld e, c
    or $22
    adc h
    jr @-$45

    jr jr_00d_7214

    jr nc, jr_00d_717c

    ld h, b
    ld d, d
    and l
    sub a
    ld c, [hl]
    jr c, jr_00d_71bd

    xor b
    ld a, [$d2dd]
    and [hl]
    xor d
    ld e, a
    sbc b
    jp nc, $d896

    ld a, c
    ld a, h
    ld h, e
    ld b, l
    or e
    and c
    ld l, a
    ld a, [$5585]
    ld [bc], a
    sbc b
    add hl, sp
    ld de, $644e
    sbc h
    inc d

jr_00d_7214:
    db $10
    ld a, c
    sbc e
    ld b, l
    xor d
    sub c
    ld b, c
    ld a, c
    add d
    cp h
    push bc
    ld h, $14
    ld [hl], $90
    rst $08
    ldh [$b1], a
    ld d, d
    and d
    pop bc
    inc hl
    ld l, b
    ld a, [hl]
    cp $0a
    ld d, l
    inc hl
    dec d
    inc hl
    ld a, d
    ld de, $7749
    add $0c
    and c
    ld [hl], c
    jp $91f2


    ld h, b
    jp z, Jump_00d_5472

    ld e, h
    ld a, l
    add b
    dec b
    dec b
    nop
    and d
    sub h
    add h
    ld h, e

jr_00d_724b:
    ld d, d
    ld sp, $0011
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld d, d
    ld h, d
    add e
    sub e
    nop
    ld a, d
    ld bc, $7247
    ld d, $88
    ld e, $00
    and a
    jr nz, jr_00d_726a

    ld bc, $724f
    ld d, $00
    ld e, $00

Jump_00d_726a:
jr_00d_726a:
    ld a, [bc]
    and a
    ret z

    inc bc
    push bc
    ld b, a
    and $0f
    ld c, a
    ld a, b
    and $f0
    swap a
    ld b, a

jr_00d_7279:
    ld h, d
    ld l, $48
    call Call_00d_7292
    ld h, $00
    ld l, $88
    call Call_00d_7292
    ld a, d
    add b
    ld d, a
    call Call_00d_72c4
    dec c
    jr nz, jr_00d_7279

    pop bc
    jr jr_00d_726a

Call_00d_7292:
jr_00d_7292:
    ldh a, [rLY]
    cp l
    jr nz, jr_00d_7292

    ld a, h
    ldh [rSCX], a

jr_00d_729a:
    ldh a, [rLY]
    cp h
    jr z, jr_00d_729a

    ret


    nop
    ld [hl], c
    ld l, a
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], c
    ld [hl], h
    nop
    ld a, [$cd3d]
    cp $b0
    jr z, jr_00d_72ba

    cp $b1
    jr z, jr_00d_72ba

    cp $99
    ret nz

jr_00d_72ba:
    ld e, $01
    ld bc, $7244
    ld d, $00
    jp Jump_00d_726a


Call_00d_72c4:
    push de
    push hl
    xor a
    ld d, a
    ld hl, $72a0
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    and a
    ret z

    ld [$c328], a
    inc e
    ret


    call Call_000_36a0
    ld hl, $c3f3
    ld b, $07
    ld c, $0c
    call Call_000_1922
    ld hl, $c408
    ld de, $d158
    call Call_000_1955
    ld hl, $c46c
    ld de, $d887
    call Call_000_1955
    ld hl, $c449
    ld a, $69
    ld [hl+], a
    ld [hl], $6a
    xor a
    ld [$cfcb], a
    ld hl, $6948
    ld b, $0e
    call Call_000_35d6
    ld c, $96
    jp Jump_000_3739


Call_00d_730e:
    call Call_000_36f4
    ld a, $01
    ld [$cf0c], a
    ld b, a
    ld hl, $7096
    call Call_000_35d6
    ld hl, $7390
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_00d_7380

    dec a
    ld [$cfcb], a
    ld hl, $cd4f
    xor a
    ld [hl+], a
    ld [hl], $02
    ld a, $4c
    call Call_000_3e6d
    call Call_000_3dd4
    call Call_00d_78a8
    call Call_000_3680
    ld b, $05
    call Call_000_3def
    call Call_000_3ddc
    ld a, $e4
    ldh [rOBP0], a
    ld hl, $d730
    set 6, [hl]
    xor a
    ld [$d096], a
    ld hl, $cd3d
    ld bc, $0014
    call Call_000_36e0
    call Call_00d_7395
    ld hl, $d730
    res 6, [hl]
    xor a
    ld [$d096], a
    call Call_000_3dd4
    ld a, $01
    ld [$cfcb], a
    call Call_000_3ded
    call Call_000_3e08
    call Call_000_3090

jr_00d_7380:
    call Call_000_3701
    call Call_000_3dd7
    call Call_000_3ddc
    ld a, [$cc5e]
    push af
    jp Jump_000_29e8


    rla
    adc a
    ld b, c
    ld [hl+], a
    ld d, b

Call_00d_7395:
Jump_00d_7395:
    call Call_00d_7754
    xor a
    ld hl, $cd4a
    ld [hl+], a
    ld [hl], a
    call Call_00d_775f
    ld hl, $746c
    call Call_000_3c49
    call Call_000_3719

jr_00d_73aa:
    ld a, $03
    ld [$cc29], a
    ld a, $02
    ld [$cc28], a
    ld a, $0c
    ld [$cc24], a
    ld a, $0f
    ld [$cc25], a
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc37], a
    ld hl, $c48a
    ld b, $05
    ld c, $04
    call Call_000_1922
    ld hl, $c4a0
    ld de, $745e
    call Call_000_1955
    call Call_000_3abe
    and $02
    jp nz, Jump_000_3725

    ld a, [$cc26]
    ld b, a
    ld a, $03
    sub b
    ld [$cd50], a
    ld hl, $d5a4
    ld c, a
    ld a, [hl+]
    and a
    jr nz, jr_00d_7401

    ld a, [hl]
    cp c
    jr nc, jr_00d_7401

    ld hl, $7476
    call Call_000_3c49
    jr jr_00d_73aa

jr_00d_7401:
    call Call_000_3725
    call Call_00d_7741
    call Call_00d_77d5
    call Call_00d_7480
    ld a, $04
    ld hl, $cd4d
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_3748
    ld a, $c0
    call Call_000_23b1
    ld hl, $7471
    call Call_000_3c49
    call Call_00d_74ad
    call Call_00d_7588
    ld hl, $d5a4
    ld a, [hl+]
    or [hl]
    jr nz, jr_00d_743b

    ld hl, $7467
    call Call_000_3c49
    ld c, $3c
    jp Jump_000_3739


jr_00d_743b:
    ld hl, $747b
    call Call_000_3c49
    ld hl, $c49e
    ld bc, $0d0f
    xor a
    ld [$d12c], a
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$cc26]
    and a
    ret nz

    call Call_00d_77ce
    jp Jump_00d_7395


    pop af
    ld sp, hl
    ld c, [hl]
    pop af
    ld hl, sp+$4e
    pop af
    rst $30
    ld d, b
    rla
    xor [hl]
    ld b, c
    ld [hl+], a
    ld d, b
    rla
    rst $00
    ld b, c
    ld [hl+], a
    ld d, b
    rla
    call c, $2241
    ld d, b
    rla
    db $e4
    ld b, c
    ld [hl+], a
    ld d, b
    rla
    rst $30
    ld b, c
    ld [hl+], a
    ld d, b

Call_00d_7480:
    ld hl, $cd4c
    bit 7, [hl]
    ret nz

    ld a, [$d096]
    and a
    jr nz, jr_00d_74a1

    call Call_000_3e5c
    and a
    jr z, jr_00d_74a4

    ld b, a
    ld a, [$cc5b]
    cp b
    jr c, jr_00d_74aa

    ld a, $d2
    cp b
    jr c, jr_00d_74a1

    ld [hl], $00
    ret


jr_00d_74a1:
    set 6, [hl]
    ret


jr_00d_74a4:
    ld a, $3c
    ld [$d096], a
    ret


jr_00d_74aa:
    set 7, [hl]
    ret


Call_00d_74ad:
    ld c, $14

Jump_00d_74af:
jr_00d_74af:
    push bc
    call Call_00d_7813
    call Call_00d_7823
    call Call_00d_7833
    ld c, $02
    call Call_000_3739
    pop bc
    dec c
    jr nz, jr_00d_74af

    xor a
    ld [$cd3d], a

jr_00d_74c6:
    call Call_00d_7882
    call Call_00d_74df
    call Call_00d_74fb
    call Call_00d_7517
    ret c

    ld a, [$cf1b]
    xor $01
    inc a
    ld c, a
    call Call_000_3739
    jr jr_00d_74c6

Call_00d_74df:
    ld a, [$cd3d]
    cp $01
    jr c, jr_00d_74f8

    ld de, $cd3e
    ld a, [de]
    rra
    jr nc, jr_00d_74f8

    ld hl, $cd4d
    ld a, [hl]
    and a
    ret z

    dec [hl]
    call Call_00d_752c
    ret nz

jr_00d_74f8:
    jp Jump_00d_7813


Call_00d_74fb:
    ld a, [$cd3d]
    cp $02
    jr c, jr_00d_7514

    ld de, $cd3f
    ld a, [de]
    rra
    jr nc, jr_00d_7514

    ld hl, $cd4e
    ld a, [hl]
    and a
    ret z

    dec [hl]
    call Call_00d_7552
    ret z

jr_00d_7514:
    jp Jump_00d_7823


Call_00d_7517:
    ld a, [$cd3d]
    cp $03
    jr c, jr_00d_7527

    ld de, $cd40
    ld a, [de]
    rra
    jr nc, jr_00d_7527

    scf
    ret


jr_00d_7527:
    call Call_00d_7833
    and a
    ret


Call_00d_752c:
    call Call_00d_76c0
    ld hl, $cd41
    ld a, [$cd4c]
    and $80
    jr nz, jr_00d_7540

    inc hl
    ld a, [hl]
    cp $0a
    jr nz, jr_00d_754b

    ret


jr_00d_7540:
    ld c, $03

jr_00d_7542:
    ld a, [hl+]
    cp $02
    jr c, jr_00d_754b

    dec c
    jr nz, jr_00d_7542

    ret


jr_00d_754b:
    inc a
    ld hl, $cd4d
    ld [hl], $00
    ret


Call_00d_7552:
    call Call_00d_76b4
    ld a, [$cd4c]
    and $80
    jr nz, jr_00d_7562

    call Call_00d_756e
    ret nz

    jr jr_00d_7569

jr_00d_7562:
    call Call_00d_756e
    ld a, [de]
    cp $07
    ret nc

jr_00d_7569:
    xor a
    ld [$cd4e], a
    ret


Call_00d_756e:
    ld hl, $cd41
    ld de, $cd44
    ld a, [de]
    cp [hl]
    ret z

    inc de
    ld a, [de]
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc de
    ld a, [de]
    cp [hl]
    ret z

    dec de
    dec de
    ret


Call_00d_7588:
Jump_00d_7588:
    call Call_00d_76a8
    ld a, [$cd50]
    cp $02
    jr z, jr_00d_75b3

    cp $01
    jr z, jr_00d_75cf

    ld hl, $cd41
    ld de, $cd45
    ld bc, $cd49
    call Call_00d_76a2
    jp z, Jump_00d_7604

    ld hl, $cd43
    ld de, $cd45
    ld bc, $cd47
    call Call_00d_76a2
    jr z, jr_00d_7604

jr_00d_75b3:
    ld hl, $cd43
    ld de, $cd46
    ld bc, $cd49
    call Call_00d_76a2
    jr z, jr_00d_7604

    ld hl, $cd41
    ld de, $cd44
    ld bc, $cd47
    call Call_00d_76a2
    jr z, jr_00d_7604

jr_00d_75cf:
    ld hl, $cd42
    ld de, $cd45
    ld bc, $cd48
    call Call_00d_76a2
    jr z, jr_00d_7604

    ld a, [$cd4c]
    and $c0
    jr z, jr_00d_75ea

    ld hl, $cd4f
    dec [hl]
    jr nz, jr_00d_75f5

jr_00d_75ea:
    ld hl, $769d
    call Call_000_3c49

Jump_00d_75f0:
    xor a
    ld [$c002], a
    ret


jr_00d_75f5:
    call Call_00d_7833
    call Call_000_20af
    call Call_00d_7833
    call Call_000_20af
    jp Jump_00d_7588


Jump_00d_7604:
jr_00d_7604:
    ld a, [$cd4c]
    and $c0
    jr z, jr_00d_75f5

    and $80
    jr nz, jr_00d_7614

    ld a, [hl]
    cp $07
    jr c, jr_00d_75f5

jr_00d_7614:
    ld a, [hl]
    sub $02
    ld [$cd41], a
    ld hl, $7678
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cf4b
    ld bc, $0004
    call Call_000_00b5
    pop hl
    ld de, $7638
    push de
    jp hl


jr_00d_7638:
    ldh a, [rBGP]
    xor $40
    ldh [rBGP], a
    ld c, $05
    call Call_000_3739
    dec b
    jr nz, jr_00d_7638

    ld hl, $cd4a
    ld [hl], d
    inc hl
    ld [hl], e
    call Call_00d_775f
    ld hl, $7665
    call Call_000_3c49
    call Call_000_3865
    call Call_00d_776b
    call Call_00d_775f
    ld a, $e4
    ldh [rOBP0], a
    jp Jump_00d_75f0


    ld [$cdc5], sp
    jr z, jr_00d_76e1

    ld hl, $7673
    pop bc
    inc bc
    inc bc
    inc bc
    inc bc

Call_00d_7672:
    ret


    rla
    ld b, $42
    ld [hl+], a
    ld d, b
    ld [bc], a
    ld [hl], a
    sub b
    db $76
    di
    db $76
    sub h
    db $76
    rst $10
    db $76
    sbc b
    db $76
    push hl
    db $76
    sbc d
    db $76
    push hl
    db $76
    sbc d
    db $76
    push hl
    db $76
    sbc d
    db $76
    ld sp, hl
    or $f6
    ld d, b
    rst $30
    or $f6
    ld d, b
    cp $50
    rst $30
    ei
    ld d, b
    rla
    ld h, $42
    ld [hl+], a
    ld d, b

Call_00d_76a2:
    ld a, [de]
    cp [hl]
    ret nz

    ld a, [bc]
    cp [hl]
    ret


Call_00d_76a8:
    ld de, $cd47
    ld hl, $7a2d
    ld a, [$cd40]
    call Call_00d_76c9

Call_00d_76b4:
    ld de, $cd44
    ld hl, $7a09
    ld a, [$cd3f]
    call Call_00d_76c9

Call_00d_76c0:
    ld de, $cd41
    ld hl, $79e5
    ld a, [$cd3e]

Call_00d_76c9:
    ld c, a
    ld b, $00
    add hl, bc
    ld c, $03

jr_00d_76cf:
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    dec c
    jr nz, jr_00d_76cf

    ret


    ld hl, $d096
    ld a, [hl]
    and a
    jr z, jr_00d_76df

    dec [hl]

jr_00d_76df:
    ld b, $02

jr_00d_76e1:
    ld de, $0008
    ret


    ld hl, $d096
    ld a, [hl]
    and a
    jr z, jr_00d_76ed

    dec [hl]

jr_00d_76ed:
    ld b, $04
    ld de, $000f
    ret


    ld a, $94
    call Call_000_23b1
    xor a
    ld [$cd4c], a
    ld b, $08
    ld de, $0064
    ret


    ld hl, $7722
    call Call_000_3c49
    ld a, $89
    call Call_000_23b1
    call Call_000_3e5c
    cp $80
    ld a, $00
    jr c, jr_00d_7719

    ld [$cd4c], a

jr_00d_7719:
    ld [$d096], a
    ld b, $14
    ld de, $012c
    ret


    rla
    ld [hl], $42
    ld [hl+], a
    ld a, [bc]
    ld d, b
    ld hl, $c4ba
    ld a, [$cd41]
    add $25
    ld [hl+], a
    inc a
    ld [hl-], a
    inc a
    ld de, $ffec
    add hl, de
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4f2
    ld [hl], $ee
    ret


Call_00d_7741:
    ld hl, $cd4b
    ld a, [$cd50]
    ld [hl-], a
    xor a
    ld [hl+], a
    ld de, $d5a5
    ld c, $02
    ld a, $0c
    call Call_000_3e6d

Call_00d_7754:
    ld hl, $c3b9
    ld de, $d5a4
    ld c, $02
    jp Jump_000_15cd


Call_00d_775f:
    ld hl, $c3bf
    ld de, $cd4a
    ld bc, $8204
    jp Jump_000_3c5f


Call_00d_776b:
    ld a, $01
    ld [$c002], a
    call Call_000_3748
    ld hl, $cd46
    xor a
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $05
    ld [$d08b], a

jr_00d_777f:
    ld a, [$cd4b]
    ld l, a
    ld a, [$cd4a]
    ld h, a
    or l
    ret z

    ld de, $ffff
    add hl, de
    ld a, l
    ld [$cd4b], a
    ld a, h
    ld [$cd4a], a
    ld hl, $cd47
    ld de, $d5a5
    ld c, $02
    ld a, $0b
    call Call_000_3e6d
    call Call_00d_7754
    call Call_00d_775f
    ld a, $bf
    call Call_000_23b1
    ld a, [$d08b]
    dec a
    jr nz, jr_00d_77bb

    ldh a, [rOBP0]
    xor $40
    ldh [rOBP0], a
    ld a, $05

jr_00d_77bb:
    ld [$d08b], a
    ld a, [$cd41]
    cp $07
    ld c, $08
    jr nc, jr_00d_77c9

    srl c

jr_00d_77c9:
    call Call_000_3739
    jr jr_00d_777f

Call_00d_77ce:
    ld a, $23
    ld [$d08a], a
    jr jr_00d_77e3

Call_00d_77d5:
    ld a, $14
    ld [$d08a], a
    ld a, [$cd50]
    dec a
    jr z, jr_00d_77fb

    dec a
    jr z, jr_00d_77ef

jr_00d_77e3:
    ld hl, $c3cb
    call Call_00d_77fe
    ld hl, $c46b
    call Call_00d_77fe

jr_00d_77ef:
    ld hl, $c3f3
    call Call_00d_77fe
    ld hl, $c443
    call Call_00d_77fe

jr_00d_77fb:
    ld hl, $c41b

Call_00d_77fe:
    ld a, [$d08a]
    ld [hl], a
    ld bc, $000d
    add hl, bc
    ld [hl], a
    ld bc, $0007
    add hl, bc
    inc a
    ld [hl], a
    ld bc, $000d
    add hl, bc
    ld [hl], a
    ret


Call_00d_7813:
Jump_00d_7813:
    ld bc, $79e5
    ld de, $cd3e
    ld hl, $c300
    ld a, $30
    ld [$d081], a
    jr jr_00d_7841

Call_00d_7823:
Jump_00d_7823:
    ld bc, $7a09
    ld de, $cd3f
    ld hl, $c330
    ld a, $50
    ld [$d081], a
    jr jr_00d_7841

Call_00d_7833:
Jump_00d_7833:
    ld bc, $7a2d
    ld de, $cd40
    ld hl, $c360
    ld a, $70
    ld [$d081], a

jr_00d_7841:
    ld a, $58
    ld [$d082], a
    push de
    ld a, [de]
    ld d, b
    add c
    ld e, a
    jr nc, jr_00d_784e

    inc d

jr_00d_784e:
    ld a, [$d082]
    ld [hl+], a
    ld a, [$d081]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, [$d082]
    ld [hl+], a
    ld a, [$d081]
    add $08
    ld [hl+], a
    ld a, [de]
    inc a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc de
    ld a, [$d082]
    sub $08
    ld [$d082], a
    cp $28
    jr nz, jr_00d_784e

    pop de
    ld a, [de]
    inc a
    cp $1e
    jr nz, jr_00d_7880

    xor a

jr_00d_7880:
    ld [de], a
    ret


Call_00d_7882:
    call Call_000_20af
    call Call_000_3831
    ldh a, [$b5]
    and $01
    ret z

    ld hl, $cd3d
    ld a, [hl]
    dec a
    ld de, $cd4d
    jr z, jr_00d_78a3

    dec a
    ld de, $cd4e
    jr z, jr_00d_78a3

jr_00d_789d:
    inc [hl]
    ld a, $be
    jp Jump_000_23b1


jr_00d_78a3:
    ld a, [de]
    and a
    ret nz

    jr jr_00d_789d

Call_00d_78a8:
    call Call_000_0061
    ld hl, $4bde
    ld de, $8000
    ld bc, $01c0
    ld a, $1e
    call Call_000_17f7
    ld hl, $7a51
    ld de, $9000
    ld bc, $0250
    ld a, $0d
    call Call_000_17f7
    ld hl, $4bde
    ld de, $9250
    ld bc, $01c0
    ld a, $1e
    call Call_000_17f7
    ld hl, $78f5
    ld de, $c3a0
    ld bc, $00f0
    call Call_000_00b5
    call Call_000_007b
    ld hl, $cd3e
    ld a, $1c
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_00d_7813
    call Call_00d_7823
    jp Jump_00d_7833


    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    ld c, $0b
    inc hl
    inc e
    ld e, $1f
    inc e
    inc e
    ld e, $1f
    inc e
    inc e
    ld e, $1f
    inc e
    inc hl
    ld a, [bc]
    ld c, $0b
    inc c
    rrca
    dec c
    inc h
    dec e
    jr nz, jr_00d_7959

    dec e
    dec e
    jr nz, jr_00d_795d

    dec e
    dec e
    jr nz, @+$23

    dec e
    inc h
    inc c
    rrca
    dec c
    ld a, [bc]
    db $10
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    db $10
    dec bc

jr_00d_7959:
    inc c
    ld de, $240d

jr_00d_795d:
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    ld de, $0a0d
    ld [de], a
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    ld [de], a
    dec bc
    inc c
    inc de
    dec c
    inc h
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    inc de
    dec c
    ld a, [bc]
    db $10
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    db $10
    dec bc
    inc c
    ld de, $240d
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    ld de, $0a0d
    ld c, $0b
    inc hl
    nop
    jr @+$1b

    nop
    nop
    jr @+$1b

    nop
    nop
    jr jr_00d_79e5

    nop
    inc hl
    ld a, [bc]
    ld c, $0b
    inc c
    rrca
    dec c
    inc h
    ld bc, $1b1a
    ld bc, $1a01
    dec de
    ld bc, $1a01
    dec de
    ld bc, $0c24
    rrca
    dec c

jr_00d_79e5:
    nop
    ld [bc], a
    inc d
    ld d, $0c
    ld c, $04
    ld b, $08
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    ld c, $10
    ld [de], a
    inc b
    ld b, $08
    ld a, [bc]
    nop
    ld [bc], a
    inc d
    ld d, $10
    ld [de], a
    inc b
    ld b, $08
    ld a, [bc]
    nop
    ld [bc], a
    inc d
    ld d, $0c
    ld c, $00
    ld [bc], a
    inc c
    ld c, $08
    ld a, [bc]
    db $10
    ld [de], a
    inc d
    ld d, $04
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $10
    ld [de], a
    ld [$040a], sp
    ld b, $0c
    ld c, $10
    ld [de], a
    ld [$140a], sp
    ld d, $00
    ld [bc], a
    inc c
    ld c, $08
    ld a, [bc]
    nop
    ld [bc], a
    db $10
    ld [de], a
    inc c
    ld c, $08
    ld a, [bc]
    inc d
    ld d, $10
    ld [de], a
    inc c
    ld c, $08
    ld a, [bc]
    inc d
    ld d, $10
    ld [de], a
    inc c
    ld c, $08
    ld a, [bc]
    inc d
    ld d, $10
    ld [de], a
    inc b
    ld b, $00
    ld [bc], a
    db $10
    ld [de], a
    inc c
    ld c, $81
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [c], a
    nop
    adc $00
    adc $00
    jp z, $e600

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_00d_7a88

jr_00d_7a88:
    ld d, e
    nop
    ld d, b
    nop
    inc sp
    nop
    ld d, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc e
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    jr jr_00d_7abe

jr_00d_7abe:
    add hl, sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlc b
    ld c, e
    nop
    ld c, e
    nop
    ld h, a
    nop
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add $00
    sub d
    nop
    sub d
    nop
    sub d
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld e, c
    nop
    ld e, c
    nop
    ld e, c
    nop
    add hl, sp

jr_00d_7aef:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr jr_00d_7aef

    daa
    ldh [$5f], a
    ret nz

    ld e, a
    ret nz

    cp a
    add b
    cp a
    add b
    nop
    rst $38
    ldh [rIE], a
    jr @+$21

    call nz, $fa07
    inc bc
    ld a, [$fd03]
    ld bc, $01fd
    cp a
    add b
    cp a
    add b
    ld e, a
    ret nz

    ld e, a
    ret nz

    daa
    ldh [rNR23], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    db $fd
    ld bc, $01fd
    ld a, [$fa03]
    inc bc
    call nz, Call_000_1807
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    add c
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    inc c
    inc c
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    add c
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    add c
    nop
    inc a
    inc a

jr_00d_7b5d:
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    sbc h
    inc e
    ld [hl-], a
    ld [hl-], a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    jp Jump_000_1b00


    jr @+$7d

    ld a, b
    dec de
    jr jr_00d_7b5d

    jr jr_00d_7b9c

    jr @+$80

    ld a, [hl]
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a

jr_00d_7b9c:
    rst $38
    ld h, [hl]
    rst $20
    ld e, d
    jp $c35a


    ld h, [hl]
    rst $20
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $c3a5


    and l
    jp $c3a5


    and l
    jp $c3a5


    and l
    jp $c3a5


    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rrca
    rst $38
    rra
    cp $fe
    add hl, de
    inc a
    ei
    cp b
    scf
    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp+$7f
    ld a, a
    sbc b
    inc a
    rst $18
    ld e, $ec
    ld a, b
    scf
    cp h
    dec sp
    ld e, $f9
    rst $38
    ld e, $0f
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec e
    db $ec
    ld a, $dc
    ld a, b
    sbc a
    rst $38
    ld a, b
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_00d_7c17:
    nop
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add c
    ld a, [hl]
    jp $e73c


    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $c33c


    cp l
    nop
    rst $38

jr_00d_7c33:
    add hl, bc
    rst $38
    rra
    or $3f
    db $e4
    ld a, [hl-]
    ldh [rSVBK], a
    ret nz

    ld c, b
    ret z

    ld b, h
    call nz, $ff00
    add b
    rst $38
    ret nc

    ld a, a
    ld hl, sp+$2f
    ld e, b
    rrca
    inc c
    rlca

jr_00d_7c4d:
    ld l, h
    ld h, a
    add h
    add a
    jr nz, jr_00d_7c33

    jr jr_00d_7c4d

    scf
    rst $38
    ld c, e
    rst $08
    dec h
    rst $20
    rra
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld [$300f], sp
    ccf
    call c, Call_000_22ff
    db $e3
    call nz, $f8c7
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_00d_7c9c:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00d_7ca1:
    ld hl, $ccd3
    ld a, [$cd38]
    dec a
    ld [$cd38], a
    ld d, $00
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    ld hl, $7ce6
    ld a, [$d12f]

jr_00d_7cb7:
    add a
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a

jr_00d_7cc7:
    ld a, [hl+]
    cp b
    jr nz, jr_00d_7ce1

    ld a, [hl+]
    cp c
    jr nz, jr_00d_7ce2

    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00d_7cd2:
    ld a, [hl+]
    cp $ff
    ret z

    ld [de], a
    inc de
    ld a, [$cd38]
    inc a
    ld [$cd38], a
    jr jr_00d_7cd2

jr_00d_7ce1:
    inc hl

jr_00d_7ce2:
    inc hl
    inc hl
    jr jr_00d_7cc7

    ld [$067c], a
    ld a, l
    ld [de], a
    dec de
    ld a, [$107c]
    dec de
    db $fd
    ld a, h
    ld de, $001a
    ld a, l
    ld de, $031c
    ld a, l
    ld b, b
    ld b, b
    rst $38
    db $10
    jr nz, @+$01

    ld b, b
    db $10
    rst $38
    ld b, b
    jr nz, @+$01

    db $10
    ld [hl+], a
    ld a, [de]
    ld a, l
    ld de, $1f23
    ld a, l
    ld [de], a
    dec h
    inc h
    ld a, l
    inc de
    dec h
    jr nc, @+$7f

    ld de, $3524
    ld a, l
    jr nz, jr_00d_7c9c

    add b
    db $10
    rst $38
    jr nz, jr_00d_7ca1

    db $10
    jr nz, @+$01

    jr nz, @+$22

    jr nz, jr_00d_7d28

jr_00d_7d28:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr nz, @+$22

Call_00d_7d32:
    ld b, b
    jr nz, @+$01

    jr nz, jr_00d_7cb7

    jr nz, jr_00d_7d39

jr_00d_7d39:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, $08
    ld b, a
    xor a
    ldh [$95], a
    ldh [$9b], a
    ldh [$9c], a
    ldh [$9d], a
    ldh [$9e], a

jr_00d_7d4f:
    ldh a, [$99]
    srl a
    ldh [$99], a
    jr nc, jr_00d_7d77

    ldh a, [$9e]
    ld c, a
    ldh a, [$98]
    add c
    ldh [$9e], a
    ldh a, [$9d]
    ld c, a
    ldh a, [$97]
    adc c
    ldh [$9d], a
    ldh a, [$9c]
    ld c, a
    ldh a, [$96]
    adc c
    ldh [$9c], a
    ldh a, [$9b]
    ld c, a
    ldh a, [$95]
    adc c
    ldh [$9b], a

jr_00d_7d77:
    dec b
    jr z, jr_00d_7d94

    ldh a, [$98]
    sla a
    ldh [$98], a
    ldh a, [$97]
    rl a
    ldh [$97], a
    ldh a, [$96]
    rl a
    ldh [$96], a
    ldh a, [$95]
    rl a
    ldh [$95], a
    jr jr_00d_7d4f

jr_00d_7d94:
    ldh a, [$9e]
    ldh [$98], a
    ldh a, [$9d]
    ldh [$97], a
    ldh a, [$9c]
    ldh [$96], a
    ldh a, [$9b]
    ldh [$95], a
    ret


    xor a
    ldh [$9a], a
    ldh [$9b], a
    ldh [$9c], a
    ldh [$9d], a
    ldh [$9e], a
    ld a, $09
    ld e, a

jr_00d_7db3:
    ldh a, [$9a]
    ld c, a
    ldh a, [$96]
    sub c
    ld d, a
    ldh a, [$99]
    ld c, a
    ldh a, [$95]
    sbc c
    jr c, jr_00d_7dce

    ldh [$95], a
    ld a, d
    ldh [$96], a
    ldh a, [$9e]
    inc a
    ldh [$9e], a
    jr jr_00d_7db3

jr_00d_7dce:
    ld a, b
    cp $01
    jr z, jr_00d_7e18

    ldh a, [$9e]
    sla a
    ldh [$9e], a
    ldh a, [$9d]
    rl a
    ldh [$9d], a
    ldh a, [$9c]
    rl a
    ldh [$9c], a
    ldh a, [$9b]
    rl a
    ldh [$9b], a
    dec e
    jr nz, jr_00d_7e04

    ld a, $08
    ld e, a
    ldh a, [$9a]
    ldh [$99], a
    xor a
    ldh [$9a], a
    ldh a, [$96]
    ldh [$95], a
    ldh a, [$97]
    ldh [$96], a
    ldh a, [$98]
    ldh [$97], a

jr_00d_7e04:
    ld a, e
    cp $01
    jr nz, jr_00d_7e0a

    dec b

jr_00d_7e0a:
    ldh a, [$99]
    srl a
    ldh [$99], a
    ldh a, [$9a]
    rr a
    ldh [$9a], a
    jr jr_00d_7db3

jr_00d_7e18:
    ldh a, [$96]
    ldh [$99], a
    ldh a, [$9e]
    ldh [$98], a
    ldh a, [$9d]
    ldh [$97], a
    ldh a, [$9c]
    ldh [$96], a
    ldh a, [$9b]
    ldh [$95], a
    ret


    ld a, [$cd3d]
    cp $fd
    jr z, jr_00d_7e66

    cp $fe
    jr z, jr_00d_7e6a

    cp $ff
    jr z, jr_00d_7e6e

    ld b, $0b
    ld hl, $7f09
    call Call_000_35d6
    ld a, [$cd3d]
    and a
    ret z

    ld a, [$cd05]
    ld b, a
    ld a, [$cd3f]
    inc a
    cp b
    jr z, jr_00d_7e58

    ld a, $fd
    jr jr_00d_7e5a

jr_00d_7e58:
    ld a, $fa

jr_00d_7e5a:
    ld [$cc5b], a
    ldh a, [$b8]
    ld [$cc5e], a
    call Call_00d_730e
    ret


jr_00d_7e66:
    ld a, $28
    jr jr_00d_7e70

jr_00d_7e6a:
    ld a, $29
    jr jr_00d_7e70

jr_00d_7e6e:
    ld a, $2a

jr_00d_7e70:
    push af
    call Call_000_3c3c
    pop af
    call Call_000_3ef5
    ret


    rla
    adc a
    ld c, e
    ld [hl+], a
    ld d, b
    rla
    xor l
    ld c, e
    ld [hl+], a
    ld d, b
    rla
    call $224b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
