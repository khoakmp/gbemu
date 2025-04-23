; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    ld [hl], a
    cp a
    rla
    ld d, a
    xor h
    ldh a, [$97]
    rst $38
    ld d, c
    ld e, a
    rst $28

jr_00c_400b:
    ret c

    db $e3
    ld a, a
    db $f4
    ld a, [hl-]
    ld d, b
    ld a, d
    ei
    ld [$813e], sp
    db $76
    add hl, sp
    ld e, $2a

jr_00c_401a:
    sbc c
    ld b, d

jr_00c_401c:
    ld hl, $8518
    dec b
    sbc b
    ld d, l
    ld a, [hl-]
    ldh [$97], a

Call_00c_4025:
    ld a, [de]
    ld c, c
    ld b, [hl]
    add c
    add l
    db $eb
    sub h
    or l
    dec l
    ld c, l
    ld d, c
    ld h, d
    ld d, b
    add d
    jr nc, jr_00c_4092

    cp a
    ld hl, $1ee3
    ld d, l
    ld e, b
    sbc e
    inc b
    cp h
    ld hl, $4389
    xor b
    ld [hl-], a
    ldh [$d2], a
    ld e, $a9
    dec h
    ld c, e
    xor c
    ld c, e
    sub h
    ld d, c
    ld e, h
    jp nz, Jump_000_0779

    adc c
    ld h, [hl]
    sbc e
    db $e4
    push de
    ld h, $26
    sub [hl]
    dec hl
    sbc b
    adc $26
    push bc
    ld d, l
    ld d, l
    ld b, [hl]
    ld a, [c]
    ld h, d
    jr z, jr_00c_400b

    pop bc
    jr nc, jr_00c_40be

    call z, $d622
    or [hl]
    inc b
    add $15
    ld a, a
    inc hl
    ld c, b
    xor b
    inc d
    ld l, h
    and h
    ld a, [de]
    and c
    and d
    rla
    jr nc, @-$56

    adc e
    ld h, l
    cp l
    dec c
    db $76
    jr jr_00c_401a

    jr jr_00c_401c

    sub $bb
    add hl, hl
    ld d, l
    ld l, d
    ld a, [hl+]
    ld h, d
    ld h, c
    ld [hl], a
    ld c, c
    add d
    ld a, [hl+]
    db $ec

jr_00c_4092:
    ret


    adc [hl]
    ld a, [de]
    ld hl, $1b6a
    ld h, e
    dec b
    add hl, hl
    ld l, d
    sub [hl]
    ld c, [hl]
    add l
    ld a, [hl+]
    sub d
    ld e, b
    ld h, h
    ld h, d
    sub $63
    jp $a062


    adc h
    db $10
    add $39
    xor b
    jp nz, $9462

    ld l, d
    ld c, d
    ld h, e
    xor d
    push de
    ld a, [hl]
    ld l, $14
    add [hl]
    dec hl
    and e
    xor [hl]
    xor b

jr_00c_40be:
    call Call_00c_528d
    add hl, hl
    ld c, a
    ld hl, $a695
    ld a, [bc]
    adc c
    xor c
    ld c, [hl]
    ret c

    adc c
    add hl, bc
    ld d, l
    ld e, e
    ld b, d
    ld a, c
    ld d, c
    sub e
    call z, $14b4
    adc d
    and e
    adc $b6
    db $d3
    push de
    cp a
    sub e
    sub $a8
    add $7e
    inc [hl]
    sbc [hl]
    ld a, [hl-]
    xor d
    ld h, d
    and c
    ld e, $04
    add hl, bc
    adc e
    pop af
    dec bc
    ld b, a
    ld c, d
    sub e
    and l
    ld c, d
    cp a
    cp $91
    dec e
    push de
    cp a
    and b
    sub d
    cp a
    rst $10
    jp hl


    ld l, b
    ld d, c
    ret nc

    cp $a9
    rrca
    db $fc

jr_00c_4105:
    jr jr_00c_4105

    ld e, l
    ld hl, $79f1
    sbc l
    ld e, a
    rst $38
    add sp, -$01
    sub l
    and $3d
    jr @-$0d

    adc l
    cp $90
    or l
    add sp, $57
    xor a
    ret nz

    sbc b
    xor e
    sub a
    xor h
    ld e, [hl]
    db $fc
    db $e4
    db $db
    ld c, a
    and l
    cp $93
    adc h
    ld h, e
    push bc
    inc [hl]
    inc c
    rra
    jp hl


    ld e, $52
    xor d
    rra
    pop af
    inc c
    ld h, a
    add $29
    rra
    rst $38
    cp $2b
    db $f4
    xor a
    jp hl


    cp e
    jp z, $145b

    rst $38
    push af
    jp hl


    ccf
    rst $38
    cp $94
    xor a
    ld d, c
    ld d, d
    adc h
    jr z, jr_00c_4194

    rst $38
    ld de, $bffc
    db $fd
    ld a, a
    rst $00
    ld h, $4c
    jr nc, jr_00c_4189

    db $e4
    ccf
    ld hl, $93ff
    ld e, $05
    ld [hl-], a
    dec d

jr_00c_4165:
    ld d, e
    jp $bf7c


    cp $a7
    ld l, e
    cp a
    rst $38
    jr jr_00c_41af

    rst $38
    dec c
    sbc l
    ld c, l
    dec c
    db $fc
    ld h, l
    ld d, a
    ld sp, hl
    ld a, $77
    pop af
    add d
    ld b, d
    inc de
    cp $8f
    sbc [hl]
    inc a
    ld [$3f43], sp
    ei
    ld sp, hl
    db $e4

jr_00c_4189:
    ld b, h
    rst $38
    ld d, l
    db $fd
    ld e, $3a
    ld b, d
    ld [hl-], a
    adc e
    db $e4
    ld h, e

jr_00c_4194:
    ld c, d
    sbc [hl]
    inc h
    ld l, e
    ld l, c
    ld d, h
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl-], a
    ld a, e
    ld sp, $60f0
    ld b, h
    and a
    db $e4
    pop bc
    ld d, l
    dec l
    ret


    ld d, h
    adc c
    and h
    ld a, [de]
    ld a, [hl+]
    ld d, l

jr_00c_41af:
    add d
    ld h, $ae
    ld b, l
    ld b, d
    ld d, d
    rst $18
    db $fc
    ret


    add hl, de
    db $76
    jr jr_00c_4165

    rrca
    ld sp, $517a
    ld c, b
    ld h, d
    ldh [rIE], a
    ld l, $0f
    xor l
    dec c
    adc h
    or l
    ld d, h
    jp z, $e682

    xor c
    dec h
    rst $38
    and e
    dec b
    and d
    ld [hl+], a
    ld [c], a
    cpl
    ld b, d
    ld c, e
    sub [hl]
    sub c
    sub e
    ld h, $f8
    add $2f
    ld d, d
    sub d
    add sp, -$22
    ld h, l
    sub [hl]
    ld hl, $a439
    ld d, d
    ld e, l
    add hl, sp
    add sp, $2a
    ld [hl], a
    push af
    ld a, [hl-]
    db $eb
    add sp, -$08
    ld a, c
    jr nc, jr_00c_4260

    add d
    ld b, d
    ld l, d
    add d
    ld b, h
    or d
    inc c
    or d
    ld sp, $5c5e
    ret


    ld d, d
    and l
    ld hl, $1954
    ld l, a
    inc b
    xor h
    rla
    db $e4
    ld b, b
    sub e
    ld h, l
    ld [hl], b
    jp $ff7b


    ld de, $4a02
    ld c, h
    inc d
    or e
    dec a
    ld a, [hl+]
    sub l
    inc h
    ld b, [hl]
    ld [hl], b
    ld e, e
    rst $38
    ld a, [$4a3c]
    ld h, b
    pop de
    rrca
    dec b
    rst $38
    db $e3
    ld h, $78

jr_00c_422d:
    ld b, e
    inc bc
    ld l, a
    rst $38
    pop hl
    adc h
    sbc b
    push bc
    inc a
    rst $38
    rst $38
    sbc h
    rst $30
    rst $10
    db $fd
    dec e
    ld de, $7814
    jr nc, jr_00c_4262

    ldh [$9d], a
    or c
    pop af
    ld b, b
    ld [hl], a
    cp a
    ld de, $5355
    sbc l
    ld c, l
    and h
    or [hl]
    ld b, $6a
    xor a
    ld c, [hl]
    daa
    xor l
    inc sp
    ld e, e
    ret nc

    ld a, b
    db $10
    adc h
    ld e, c
    scf
    and e
    sub [hl]

jr_00c_4260:
    ldh [$e8], a

jr_00c_4262:
    jp nc, Jump_00c_5a53

    dec h
    ld c, e
    ld d, l
    ld a, a

Call_00c_4269:
    call z, $d228
    db $d3
    add d
    dec b
    ld a, a
    ld [$ad8d], a
    ld c, h
    ret c

    jp z, Jump_000_1faa

    add hl, bc
    ld d, l
    ld a, [c]
    and l
    jr nc, jr_00c_422d

    push de
    dec h
    inc [hl]
    sub e
    dec h
    and b
    ld c, d
    add d
    db $f4
    call $98b9
    sub $95
    ld l, c
    xor d
    sub d
    xor $c5
    ld c, e
    adc b
    ld b, d
    ld a, [hl-]
    jr z, jr_00c_42af

    jp z, $f4ff

    jp z, $9dd3

    db $e3
    add d
    adc l
    jr jr_00c_42d5

    sbc d
    push af
    cpl
    jp nc, $c57c

    and b
    ld h, e
    and [hl]
    di
    ld a, [de]
    ld l, b
    ld d, h

jr_00c_42af:
    cp d
    ld [hl], e
    and l
    ld b, c
    add [hl]
    inc b
    adc e
    db $eb
    db $e3
    ld a, [hl-]
    ld c, [hl]
    ld d, [hl]
    ld l, b
    dec [hl]
    ld c, c
    sub l
    scf
    and [hl]
    add hl, sp
    ld sp, $fc47
    ld e, l
    ld b, c
    db $e3
    inc b
    xor c
    ld c, [hl]
    ld l, d
    ld a, c
    ld [$7e5d], sp
    ld [hl-], a
    or l
    ld hl, $e904

jr_00c_42d5:
    sbc b
    db $10
    ld b, d
    jr c, jr_00c_42ea

    xor b
    adc d
    ld c, a
    add hl, de
    dec l
    ld d, c
    ld c, b
    push bc
    ld c, h
    ld d, l
    ld d, d
    sub a
    adc c
    ld d, e
    dec bc
    ld c, d

jr_00c_42ea:
    ld h, d

jr_00c_42eb:
    inc hl
    dec c

Call_00c_42ed:
    ld d, c
    ld a, d
    ld d, b
    xor d
    cp b
    add l
    add [hl]
    ld [hl+], a
    dec h
    and l
    ld a, [de]
    adc c
    ld d, [hl]
    add d
    xor d
    adc d
    ld b, l
    ld b, [hl]
    xor b
    ld d, h

jr_00c_4301:
    sbc d
    pop de
    add d
    ld d, h
    cp b
    pop de
    sub d
    inc d
    rra
    ld hl, $185a
    dec h
    dec de
    ld b, c
    inc [hl]
    cp l
    ld c, c
    ld d, b
    ld b, d
    and d
    ld [$4131], a
    ld a, [hl+]
    ld c, [hl]
    ld a, [bc]
    rst $38
    adc b
    sub d
    jr jr_00c_4301

    ld c, a
    ld [de], a
    and e
    jp nc, $899f

    xor c
    db $e4
    ld h, [hl]
    jr nc, jr_00c_42eb

    cp $a7
    ld a, [hl-]
    sbc c
    or h

jr_00c_4331:
    add sp, -$46
    ccf
    rst $38
    cp $9c
    ld l, a
    sbc e
    cp $15
    ldh a, [$7f]
    rst $38
    cp $9b
    rst $38
    db $f4
    ld e, d
    dec l
    ld d, l
    rrca
    inc de
    rst $38
    rst $38
    cp $9a
    rst $38
    db $e4
    db $eb
    ld [bc], a
    xor d
    sbc d
    rst $30
    rst $38
    rst $38
    and $bf
    pop hl
    inc bc
    rst $38
    ld c, b
    ld l, c
    ld [$5026], sp
    dec a
    rst $38
    and $d4
    ld c, l
    ld c, e
    rst $28
    sub h
    xor h
    sbc b
    rst $38
    or l
    inc e
    jr nc, jr_00c_4331

    ld d, a
    add $32
    ld [$f5a4], sp
    ld [hl-], a
    ld a, c
    dec bc
    sub d

Jump_00c_4377:
    sbc c
    ld c, c
    jp nc, $c4af

    rst $10
    and $db
    db $fd
    inc e
    ret nc

    ld [hl], c
    ld [hl], b
    ld a, [hl]
    sub c
    sub [hl]
    rst $38
    dec e
    ld [hl], c
    and l
    rst $28
    pop de
    ld a, h
    sbc l
    ld l, e
    jp Jump_00c_4482


    dec [hl]
    add hl, de
    inc sp
    xor h
    ld [hl], d
    cp a
    inc b
    or b
    ld h, e
    inc a
    sub d
    sub d
    rst $08
    ld b, a
    dec a
    ld a, a
    ld [$0315], a
    or c
    inc c
    ld [hl], $bc
    jp z, Jump_00c_5f75

    pop hl
    call z, $9353
    ld [hl], $ef
    and a
    ld h, l
    pop bc
    jr @-$38

    rra
    rst $38
    ldh a, [rOBP1]
    pop de
    db $10
    cp [hl]
    db $e4
    ld a, [hl-]
    inc c
    rst $08
    push hl
    ld b, b
    add d
    ld h, d
    sub b
    sub h
    sub b
    cp a
    cp $e8
    scf
    cp e
    adc l
    db $e4
    cpl
    ld a, [$5582]
    ld hl, sp+$43
    ld a, a
    rst $38
    rst $30
    or l
    or a
    rst $30
    and h
    ret nz

    rst $38
    rst $38
    dec c
    ld a, d
    rst $38
    add d
    ccf
    db $fd
    sub c
    jp hl


    ld d, $e3
    ld a, c
    add e
    rst $38
    push hl
    ld e, a
    cp $4f
    ld d, b
    ld b, l
    pop af
    scf
    db $e4
    ld c, c
    add h
    dec e
    ld a, [$df10]
    ld a, [$4670]

Jump_00c_4400:
    ld d, $70
    jp Jump_00c_5117


    push bc
    rra
    jr nc, jr_00c_444d

    cp c
    ld e, h
    ld e, l
    jr c, @+$19

    rst $38
    cp [hl]
    ld e, $64
    call $8a5a
    adc h
    ld l, $31
    ld [hl], d
    sbc a
    add hl, sp

jr_00c_441b:
    xor b
    add a
    db $e3
    and d
    ldh [rSCY], a
    db $d3
    xor d
    adc a
    ld de, $ebfc
    ld a, d
    dec sp
    ld l, l
    ld c, [hl]
    ld a, [$4de3]
    adc $2a
    ld d, c
    ld d, b
    db $e4
    inc a
    ld [c], a
    xor c
    pop hl
    ld b, d
    xor b
    db $e3
    or l
    add c
    sbc a
    db $e3
    sbc d
    xor b
    di
    and [hl]
    add hl, hl
    ld l, b
    ld b, h
    ld c, b
    ld [hl-], a
    ld [hl], b
    or c
    cpl
    ld b, c
    ld c, $e6

jr_00c_444d:
    ret c

    ld l, $31
    sbc h
    ld h, a
    sub c
    ld b, c
    rst $00
    inc sp
    ldh a, [$af]
    dec de
    ld h, $54
    ld b, e
    and $e9
    and d
    rst $00
    ld [de], a
    ld h, l
    ld de, $4658
    ret


    rst $18
    ld h, a
    ld [bc], a
    sbc b
    and b
    add e
    and $c9
    ld d, $cc
    rst $28
    rst $38
    sbc c
    and [hl]
    scf
    rst $38
    db $ed
    rst $00
    ld [hl-], a
    sub c
    cp $29
    ret


    ld d, c
    pop af
    ldh [$66], a
    cp e

Jump_00c_4482:
    pop de
    ld c, a
    ld hl, $087a
    rla
    dec bc
    ld b, a
    add hl, sp
    ld d, l
    ld l, d
    xor b
    ld h, b
    ld e, a
    pop bc
    sbc h
    push hl
    ld e, a
    xor d
    call z, $28a8
    jr nz, jr_00c_441b

    ld d, a
    ld [hl], $7a
    db $fc
    ld [hl-], a
    inc de
    inc e
    adc a
    rra
    ld c, $36
    and e
    inc h
    inc de
    inc a
    ld [hl], c
    xor a
    inc c
    inc hl
    ld a, [hl+]
    inc [hl]
    adc l
    db $fd
    rla
    ld a, a
    inc c
    ld [c], a
    cp d
    adc b
    ld d, l
    ld h, a
    and b
    ld h, b
    ld h, c
    ld sp, hl
    ld sp, $d952
    rst $28
    ld l, c
    ld c, d
    ld c, c
    add e
    dec b
    ld [hl], b
    adc h
    sub h
    and [hl]
    rlca
    adc c
    sbc d
    ld [$9007], a
    add d
    db $fc
    inc sp
    dec [hl]
    ld c, b
    ld e, c
    ld sp, $a8a0
    ld d, d
    cp a
    or e
    ld e, d
    ld hl, sp-$1c
    ld c, e
    ld h, b
    ld d, b
    call $e054
    ld b, c
    ld d, b
    ld c, d
    ld b, l
    ld b, c
    ld [hl-], a
    ld a, [hl]
    and l
    ld [$83c5], sp
    ld d, h
    ld l, b
    add a
    ld b, c
    ld [$8ac6], sp
    ld b, d
    ld h, h
    and h
    jr @-$7a

    add h
    adc e
    ld sp, hl
    ld sp, $d9a2
    inc c
    dec h
    ld a, [de]
    dec h
    ld b, [hl]
    inc e
    ccf
    jp nz, $a738

    ld e, h
    ld l, c
    ld d, h
    ld d, b
    ld h, d
    ld [hl-], a
    inc e
    inc sp
    sbc c
    inc b
    jp nz, Jump_00c_5ca8

    ld [hl], l
    db $fc
    inc de
    dec b
    dec [hl]
    and e
    inc h
    ld a, b
    add a
    ld c, $82
    ld sp, $1a52
    rrca
    ld b, $31
    ld b, d
    rlca
    rra
    or b
    add d
    inc [hl]
    cp l
    ld hl, sp-$54
    add $22
    add [hl]
    rst $18
    ld c, [hl]
    ld a, [de]
    cp a
    add sp, -$39
    rst $18
    inc c
    inc [hl]
    sbc b
    add sp, -$56
    sub b
    ld [hl], d
    dec hl
    ld e, b
    inc [hl]
    ld d, e
    cp [hl]
    ld [$4260], a
    ld a, [bc]
    ld [hl+], a

jr_00c_454e:
    dec hl
    db $76
    jr nz, @-$45

jr_00c_4552:
    ld c, $62
    sbc l
    or [hl]
    ld c, $b9
    ld a, [bc]
    add hl, de
    ld sp, $91c4
    ld a, [hl+]
    add e
    jr nz, jr_00c_4552

    inc de
    cpl
    jp hl


    call nz, Call_00c_53c1
    add sp, $5c
    db $fc
    ld d, $0c
    dec e
    adc h
    ld l, [hl]
    sub $1f
    sub b
    pop de
    ccf
    and e
    add [hl]
    db $e4
    ld sp, $49b7
    ld l, e
    dec b
    ld de, $474c
    db $db
    push af
    daa
    ld b, $5d
    ld sp, $c40f
    ld hl, sp+$72
    ld e, $18
    ld h, [hl]
    reti


    dec c
    jr nc, jr_00c_454e

    push af
    ld d, h
    inc de
    sbc $f5
    ld h, $3a
    ld b, [hl]
    rrca
    ld d, a
    ld a, b
    ld h, $ad
    rst $10
    add e
    add hl, de
    dec [hl]
    ld a, [bc]
    inc l
    ld c, l
    db $ed
    ld d, d
    dec c
    and c
    ld c, e
    and [hl]
    jp z, $5570

    ld d, b
    ret nz

    and c
    rlca
    ld c, [hl]
    ld l, l
    ld c, d
    rst $00
    ld a, [bc]
    sub h
    ret nc

    ld e, c
    ret nz

    xor b
    dec h
    and h
    ld a, [hl+]
    and b
    xor d
    add hl, hl
    add hl, hl
    and e
    ld d, c
    inc de
    ld [hl+], a
    jp nz, $b0ca

    pop de
    inc a
    ld e, $64
    jp z, Jump_000_2a8a

    inc d
    ld b, h
    add $93
    ld hl, sp+$46
    jr c, jr_00c_461c

    ld b, b
    xor e
    ret


Jump_00c_45db:
    ld sp, $63a3
    and b
    sbc e
    jr c, @-$34

    cp l
    ld a, [hl+]
    and [hl]
    ld c, l
    rst $38
    ld c, $69
    ld sp, hl
    ld l, e
    ld hl, $d54f
    ld d, a
    ld [hl], a
    dec a
    ret


    add [hl]
    inc de
    pop af
    add [hl]
    ld a, [bc]
    ld b, l
    ld h, h
    ld hl, sp+$7a
    ret nc

    ld h, c
    jr @-$36

    ld b, b
    rst $38
    adc d
    xor c
    ld a, $e2
    rst $18
    add l
    ld [hl], h
    ld l, l
    ld l, $61
    ld b, d
    add e
    ldh a, [$b3]
    ld b, $08
    rst $00
    inc e
    call nc, $b70a
    scf
    add l
    ld c, $1f
    xor [hl]
    ld [hl], h

jr_00c_461c:
    ld b, l
    ret z

    ld a, $a1
    ld b, $87
    ld b, a
    add c
    ld h, b
    add sp, $40
    and h
    ld b, h
    ld [c], a
    ld b, h
    or a
    ld d, a
    rst $38
    rst $38
    add sp, -$20
    ld a, d
    adc h
    cp h
    db $dd
    db $e3
    ld d, a
    call $db94
    db $e3
    or l
    adc $04
    push bc
    ld e, a
    db $dd
    inc b
    call Call_000_25ea
    ld [$cc2f], a
    xor b
    add l
    rlca
    adc h
    db $fc
    ldh [$b3], a
    ld l, a
    dec sp
    cp [hl]
    dec sp
    cp h
    call Call_00c_6349
    ld b, [hl]
    dec [hl]
    or [hl]
    ret z

    sub h
    ld l, $9c
    pop hl
    xor l
    ld d, l
    ld h, b
    cp h
    db $ec
    xor d
    and b
    xor d
    adc a
    inc de
    ld l, [hl]
    add e
    ld a, [hl+]
    xor d
    xor d
    ld [hl], b
    and c
    dec e
    adc h
    sub $e7
    dec sp
    dec d
    rst $00
    ld b, h
    ld b, d
    add hl, bc
    jp nc, $c4a4

    inc hl
    rst $38
    cp $66
    adc d
    ld d, [hl]
    ld de, $cac7
    ret


    ld c, l
    ld l, c
    jp $dc0a


    ld sp, $701c
    call $b4c5
    db $76
    rst $00
    ld l, $60
    sbc l
    inc [hl]
    dec c
    ld hl, $d2a2
    xor c
    pop bc
    ld b, $2c
    db $10
    ld a, l
    add d
    xor d
    sbc h
    or b
    jp $9047


    ld [hl], a
    cp [hl]
    ld e, c
    dec h
    dec a
    ld a, [hl+]
    add [hl]
    and e
    call z, Call_000_0a55
    and e
    rlca
    ld c, a
    ld de, $82f0
    ld a, a
    adc a
    ld a, [de]
    jp nc, $89f0

    adc b
    add d
    ld l, [hl]
    adc [hl]
    db $db
    db $fd
    ld a, b
    ret


    xor c
    ld sp, $d47f
    pop hl
    ld e, d
    add hl, bc
    call nc, $96e4
    db $eb
    ret nc

    sub e
    dec [hl]
    and d
    dec d
    or [hl]
    ld hl, $1945
    ld e, b
    push bc
    and d
    jr z, @+$14

    sub $56
    cp l
    xor c
    add [hl]
    and $06
    ld [hl+], a
    ld hl, $6435
    and [hl]
    cp $aa
    ld a, [hl+]
    ld h, b
    jp nz, $051e

    add hl, hl
    ld c, e
    ld d, l
    or [hl]
    and c
    ld h, e
    ld h, a
    sbc d
    ld h, l
    sbc b
    ld d, h
    adc c
    ld sp, $075a

Jump_00c_4703:
    add [hl]
    ld [hl], $65
    adc c
    sbc [hl]
    inc hl
    ld [hl], b
    cp b
    or l

Jump_00c_470c:
    ld h, l
    ld hl, sp-$6c
    call $e30f
    inc h
    inc d
    jr z, jr_00c_4752

    add l
    inc c
    adc d
    adc h
    ld h, l
    ld d, l
    ld b, $0a
    add hl, sp
    sub $1a
    db $d3
    adc c
    db $e3
    sbc d
    ld hl, $6d8c
    ld [hl], $78
    db $e4
    adc e
    adc l
    ld l, b
    pop de
    ld c, [hl]
    ld a, b
    push hl
    adc h
    sub h
    db $eb
    add l
    ld a, [hl-]
    inc d
    rst $20
    ld b, c
    ld h, d
    ld h, e
    ld b, h
    ldh a, [$58]
    push bc
    ld a, [bc]
    ld d, h
    and h
    call $464e
    ld sp, $9260
    ld l, d
    and b
    ld a, e
    ld c, [hl]
    sub [hl]
    add hl, hl
    ld l, d
    ld a, [hl+]
    sub l

jr_00c_4752:
    ld l, d
    add c
    ld b, d
    db $d3
    sub c
    and l
    ld e, d
    adc [hl]
    ld [hl], l
    dec de
    ld b, c
    ld c, l
    ld d, $68
    rst $28
    ld d, d
    call nc, $ada5
    and e
    jp Jump_00c_48b5


    cp a
    push af
    and e
    ret


    and e
    db $db
    rst $18
    and e
    call nz, $9b27
    ld [hl], c
    ld [hl], $7a
    inc de
    cp d
    ld c, a
    ld h, h
    ld b, a
    add l
    xor b
    or c
    rra
    adc l
    db $f4
    xor c
    ld l, b
    and a
    ld a, [hl+]
    xor h
    pop de
    ld d, [hl]
    sub b
    and h
    jp nc, Jump_000_162c

jr_00c_478e:
    inc d
    sbc e
    ld hl, $74eb
    adc e
    cp $c2
    xor c
    add h
    ld [$26c5], sp
    cp d
    rst $18
    or l
    inc a
    ld [$41a4], sp

jr_00c_47a2:
    ret nz

    pop de
    sub h
    ld l, l
    rst $28
    db $fd
    ld b, b
    ret z

    ret nc

    ld h, l
    inc h
    jr z, jr_00c_47d3

    jp nz, Jump_000_11b1

    dec hl
    ld d, l
    ld d, $cb
    rst $10
    ret nc

    and e
    and c
    inc b
    and h
    ld b, b
    sub c
    rl e
    ld a, [de]
    inc sp
    pop af
    scf
    ei
    ld l, [hl]
    sbc $82
    call nz, $984a
    and [hl]
    dec l
    inc bc
    add $2a
    ld [$7b5d], sp

jr_00c_47d3:
    ld [$5571], a
    ld d, l
    dec [hl]
    jr jr_00c_478e

    ld h, c
    dec b
    ld b, h
    jp nc, $b172

    adc e
    ld b, [hl]
    ld sp, $0a4c
    sub c
    ld h, $e8
    ld d, c
    sub h
    ld h, e
    dec d
    ld d, c
    ld [hl], b
    inc hl
    ld a, [de]
    or h
    ld h, [hl]
    sub c
    rla
    ld [bc], a
    ld l, c
    inc c
    add h
    ld h, [hl]
    ret


    add e
    ld b, l
    add $b5
    dec b
    ld b, a
    dec bc
    ld b, l
    add hl, hl
    xor d
    and b
    and h
    add hl, hl
    sub l
    ld b, [hl]
    sub c
    ld [hl], c
    sbc d
    inc d
    ld h, h
    add d
    ld [hl], e

Call_00c_4810:
    jr nz, jr_00c_47a2

    sbc c
    inc [hl]
    ld h, h
    and c
    ld de, $2a29
    or d
    sbc b
    ld c, b
    ld hl, $b116
    adc d
    add h
    adc h
    ld h, c
    ld d, h
    ld e, d
    sbc b
    push bc
    inc l
    ld e, d
    dec d
    inc hl
    dec e
    ld a, [bc]
    ld d, [hl]
    ret z

    ld sp, $1082
    ld b, a
    add b
    ret


    ld a, [hl-]
    ld h, b
    add h
    add h
    ld a, b
    sub e
    sub h
    push de
    ld c, b
    ld b, a
    jp nc, $4480

    or l
    ld e, a
    rst $38
    rst $38
    push af
    scf
    ld a, d
    dec [hl]
    and e
    db $e4
    inc de
    cp [hl]
    ld h, h
    rst $28
    sbc d
    ld d, e
    or [hl]
    sub [hl]
    ld d, e
    sbc l
    ld d, l
    ld b, d
    ld b, $52
    inc de
    add d
    ld e, a
    db $fc
    inc l
    ld l, d

Jump_00c_4860:
    add hl, sp
    ld a, [hl+]
    db $f4
    adc e
    dec sp
    jr z, jr_00c_4887

    ld d, e
    or d
    ld [hl], b
    sub e
    or [hl]
    call c, Call_00c_5df8
    and $af
    rst $18
    ld d, l
    ld d, d
    sbc h
    ld [$d445], sp
    ld a, [bc]
    sbc [hl]
    sbc h
    sbc l
    or d
    jr nc, jr_00c_48a6

    ld h, h
    and e
    dec b
    daa
    ld d, l
    dec h
    ld d, d
    ld [hl], h

jr_00c_4887:
    jp c, $3e9d

    xor a
    or h
    and a
    dec a
    ld c, a
    inc [hl]
    rst $20
    ld h, d
    ld a, [$ff76]
    dec e
    push de
    rra
    ld a, [bc]
    ld h, [hl]
    cp h
    ld b, l
    ld d, e
    xor l
    ld d, h
    push de
    ld [$e5b4], a
    ld e, d
    ld a, [bc]
    or h

jr_00c_48a6:
    ld [de], a
    dec d
    ld hl, sp-$79
    call nc, Call_00c_79e2
    pop bc
    ld c, b
    rst $28
    db $f4
    inc [hl]
    xor b
    ld [c], a
    ld a, a

Jump_00c_48b5:
    ld d, c
    and b
    ld c, c
    and d
    ld l, d
    cp $95
    add d
    dec [hl]
    or h
    inc de
    ld [hl], $d3
    ld a, [hl+]
    ld c, c
    ld c, h
    ld e, a
    rst $30
    sbc b
    ld d, h
    jp Jump_00c_658d


    call z, Call_000_261e
    adc c
    sub b
    adc b
    ld a, b
    ld [c], a
    and d
    sub h
    add $86
    ret c

    adc b
    push hl
    or h
    sbc $d3
    cp l
    ld b, [hl]
    adc d

Call_00c_48e1:
    adc d
    cp [hl]
    ld d, e
    cp [hl]
    adc b
    and d
    ld h, d
    add hl, hl
    adc h
    inc [hl]
    pop hl
    and d
    jr z, jr_00c_4943

    sub l
    cpl
    ld c, e
    cp l
    add hl, sp
    jr z, jr_00c_494a

    jp z, Jump_00c_4c41

    ld l, a
    ld d, e
    ld a, [hl-]
    ld h, $85
    ld c, h
    inc hl
    add [hl]
    cp l
    scf
    and c
    and c
    and [hl]
    inc b
    adc d
    ld c, e
    push de
    add hl, sp
    dec l
    ld [$04d6], sp
    cp d
    cp a
    call z, $c528
    ld c, c
    ld b, [hl]
    ld a, [hl+]
    ld b, d
    ld b, a
    ld c, d
    ld d, d
    call nc, $92ce
    inc e
    add l
    ldh [rDMA], a
    ld e, e
    push de
    ld c, e
    ld d, e
    ld e, c
    sub c
    cp a
    and d
    ld h, l
    ld a, [de]
    jp c, $4e2d

    add hl, bc
    sub e
    ld l, d
    and e
    rla
    adc [hl]
    add hl, sp
    and l
    add hl, sp
    ld e, $39
    push hl
    ld a, [bc]
    sub l
    ld c, h
    ld d, a
    db $e3
    or d
    sub l
    ld b, [hl]

jr_00c_4943:
    xor d
    cp $8d
    daa
    pop bc
    ld [hl+], a
    sbc h

jr_00c_494a:
    rrca
    and a
    ld [hl-], a
    db $10
    inc hl
    ld h, $8b
    rst $38
    and a
    ld a, [de]
    ld [de], a
    ld c, $8d
    adc d
    xor e
    ld e, a
    rst $38
    ld sp, hl
    db $d3
    sub l
    db $fc
    ld d, h
    dec a
    rst $38
    sbc h
    ld l, $67
    adc h
    ld l, e
    ld a, h
    ld l, h
    sub b
    add e
    pop de
    ld l, $9e
    dec c
    cp b
    ld h, l
    or c
    rl [hl]
    sbc b
    ldh [$9e], a
    cpl
    sbc b
    jp hl


    ldh [rOBP1], a
    ld a, [hl-]
    ld b, a
    adc l
    db $eb
    ld c, d
    ld h, d
    sbc h
    add hl, hl
    ld e, d
    rla
    sub c
    rst $38
    db $ed
    sub a
    ld a, d
    ld [hl], b
    ld b, l
    ld l, b
    ld a, d
    scf
    rst $38
    add l
    add hl, de
    ld e, d
    ld l, d
    sub a
    and c
    add sp, -$01
    pop af
    add hl, de
    and h
    ld l, e
    rla
    and c
    add sp, -$01
    sub l
    and a
    ld a, a
    add l
    add sp, $7c
    ld e, a
    and h
    jp z, $a69a

    ld [hl], $1f
    add a
    sbc b
    rst $38
    xor c
    dec [hl]
    jr @-$38

    ld [hl], a
    rst $38
    sbc b
    or a
    rst $38
    ld a, [$8cb1]
    ld l, e
    cp $96
    ei
    ld a, a
    rst $38
    pop de
    pop de
    ld a, a
    xor e
    rst $38
    ld a, [$9af5]
    ld b, a
    dec d
    rst $38
    rst $38
    rst $38
    ld sp, hl
    pop hl
    rst $18
    rst $38
    rst $38
    ld a, [$b578]
    rst $38
    rst $38
    ld a, [$47a8]
    adc c
    ld d, l
    ld d, b
    add $c0
    ld b, h
    cp d
    rla
    di
    and c
    ld a, [hl]
    adc [hl]
    sub a
    and e
    xor c
    ld hl, sp-$15
    ld a, b
    db $e4
    ld d, c
    ld e, a
    ld hl, sp-$19
    cp d
    adc [hl]
    or l
    ld d, e
    or [hl]
    and e
    add l
    ld e, a
    di
    adc e
    ld c, e
    xor b
    call $b04c
    sub l
    jr c, jr_00c_4a71

    ld c, b
    rst $10
    xor d
    cp l
    ld c, l
    xor l
    ld c, c
    db $ec
    cp d
    db $d3
    ld [hl], a
    ld a, [$ef8c]
    ld c, a
    ld [bc], a
    inc a
    ld e, c
    jp nc, Jump_00c_5ac7

    ld de, $1dd9
    xor h
    db $76
    or c
    ret z

    sub b
    add h
    ld sp, $8cce
    ld [hl], e
    ld h, [hl]
    inc l
    ld [hl], d
    cp c
    ld [hl], c
    sub d
    sbc b
    ld hl, $2fc7
    and a
    ld e, $a6
    ld c, $d4
    and a
    inc b
    sub l
    ld [hl], c
    ld [hl], b
    ld c, d
    ld b, d
    ld h, l
    ld [bc], a
    rrca
    inc bc
    add hl, de
    ld e, a
    sbc e
    rst $00
    dec b
    rra
    ld a, [bc]
    ld d, l
    cp a
    ld sp, $a9bd
    ld d, e
    cp a
    db $fd
    add $f9
    ld a, [hl-]
    add sp, $7f
    ld h, $17
    pop de
    ld d, e
    adc d
    add c
    db $fd
    ld b, c
    ld hl, $0605
    xor b
    db $e3
    xor c
    push af
    ld h, $6a
    dec bc
    or e
    adc l
    and [hl]
    xor b
    and l
    ld b, l
    ret nc

    adc [hl]
    dec b

jr_00c_4a71:
    dec b
    ld d, l
    ld hl, $a146
    ld d, h
    ld [c], a
    ld d, b
    cp d
    inc hl
    jr jr_00c_4aa5

    adc d
    ld e, b
    pop hl
    cp d
    ld l, $72
    xor $39
    ld l, c
    ld c, b
    ld e, b
    ld a, [hl+]
    ld d, h
    daa
    adc $7a
    adc h
    sbc h
    ld d, h
    db $eb
    ld a, a
    or $21
    ld c, [hl]
    push bc
    ld d, l
    ld d, l
    adc [hl]
    ld a, [$f9a8]
    sbc c
    ld sp, hl
    jp nz, Jump_00c_6878

    db $d3
    ld a, [bc]
    ld [hl], a
    ret nc

jr_00c_4aa5:
    ld b, c
    pop hl
    ld [c], a
    and a
    ld b, [hl]
    sub b
    db $ed
    or h
    ld b, h
    adc e
    sbc h
    ld a, b
    ret nc

    db $db
    ld b, b
    and h
    ld h, d
    sbc h
    ld a, d
    ld sp, $363e
    ld l, $28
    ld b, a
    dec c
    push hl
    inc a
    and d
    ld a, [c]
    inc d
    ld [hl], d
    ld e, a
    xor a
    rst $18
    ldh [$bc], a
    ld hl, sp-$39
    dec e
    ld d, b
    ccf
    pop bc
    ld d, e
    di
    sbc l
    dec [hl]
    add hl, de
    call c, $339e
    rst $00
    ld l, h
    ld b, h
    rrca
    sbc [hl]
    rlca
    ld d, [hl]
    ld a, [hl]
    ld [bc], a
    ld b, h
    cp [hl]
    ld c, c
    ld a, a
    jp c, Jump_00c_7a4e

    rst $38
    ld c, b
    adc $35
    ld a, a
    ld a, l
    add l
    jr c, jr_00c_4b10

    xor e
    and b
    and b
    add [hl]
    scf
    and d
    ld [c], a
    ld de, $3a42
    ld hl, $cede
    add [hl]
    dec d
    ld d, [hl]
    scf
    ld h, a
    or $f0
    xor b
    db $e4
    sbc d
    ld b, l
    ld a, [hl-]
    xor h
    ld a, [de]
    ret c

    add sp, -$58
    ei

jr_00c_4b10:
    add hl, hl
    ld a, [c]
    ld c, b
    ld b, b
    ldh [$a7], a
    ld d, h
    jr nc, jr_00c_4b63

    sbc h
    ld [$0c29], a
    ld [hl], c
    ld e, a
    or a
    add a
    add e
    ld h, [hl]
    pop af
    ccf
    db $ec
    inc c
    ld e, $70
    db $eb
    rst $38
    pop hl
    dec c
    inc e
    ld e, a
    rst $38
    ldh a, [$27]
    dec l
    ld [hl], b
    ld e, e
    sbc l
    ldh a, [rBCPD]
    ld sp, hl
    ld h, b
    ld d, l
    cp a
    dec d
    ld d, h
    pop af
    ld h, b
    rst $28
    ld c, a
    ld a, [bc]
    inc d
    ld l, b
    pop af
    ld a, a
    call z, Call_00c_5ad5
    and h
    db $e4
    and e
    ld a, [de]
    xor h
    cp d
    xor d
    ld d, l
    ld e, b

Jump_00c_4b53:
    pop hl
    and c
    ld c, [hl]
    ld h, l
    ld c, l
    ld l, b
    rst $20
    ld b, d
    or l
    inc sp
    or l
    db $f4
    inc de
    ld h, h
    and $49

jr_00c_4b63:
    xor d
    sub h
    add l
    adc c
    ld a, b
    jp c, $e2d0

    sub h
    ld a, [hl+]
    add hl, hl

jr_00c_4b6e:
    db $e3
    adc d
    ld d, d
    ld e, c

Jump_00c_4b72:
    adc c
    ld d, a
    db $e3
    sbc c
    ld b, [hl]
    ld e, a
    rst $38
    xor b
    ld [$c8a3], a
    cp b
    ld a, [$f989]
    xor $ca
    ld a, b
    or d
    ld d, $78
    or b
    or c
    pop hl
    cp b
    ld sp, hl
    sbc a
    rst $38
    or a
    ld [bc], a
    sbc c
    sub $3e
    ld l, c
    rst $38
    di
    ld a, a
    and c
    ld a, h
    rrca
    db $e4
    ld a, c
    xor a
    ldh a, [$7e]
    call c, $ffaa
    ldh a, [$ef]
    dec de
    inc h
    ld d, a
    ccf

jr_00c_4ba8:
    rst $38
    rst $38
    dec bc
    jp hl


    or d
    xor b
    dec h
    rst $30
    db $f4
    cpl
    rst $00
    inc d
    ccf
    cp $e9
    cpl
    pop af

jr_00c_4bb9:
    rlc l
    rst $38
    rst $38
    rst $38
    ld h, c
    inc e
    ldh a, [$5f]
    sub a
    dec e
    ret z

    daa
    ld [c], a
    nop
    ld b, h
    dec sp
    inc de
    cp c
    adc [hl]
    sub $39
    ld h, h
    or [hl]
    add hl, sp
    sub b
    db $f4
    ld d, h
    cp b
    ldh [rOBP0], a
    ld e, d
    jr nc, jr_00c_4b6e

    ld [hl], h
    xor e
    ld c, c
    ld l, e
    call $c758
    sub b
    adc b
    ld c, l
    jr jr_00c_4ba8

    ld h, d
    ld hl, $4c60
    ld d, $d4
    dec d
    pop hl
    ld d, c
    ld e, b
    jr jr_00c_4bb9

    ld l, l
    inc hl
    dec d
    sub [hl]
    sub [hl]
    adc l
    and a
    ld a, [bc]
    add l
    ld a, [hl]
    adc [hl]
    ld e, d
    xor d
    ld a, $ca
    ld a, e
    sub c
    jp c, Jump_00c_75fe

    xor e
    ld d, c
    call nz, Call_00c_4de9
    cp $71
    ccf
    and e
    cp $b1
    call nz, $faff
    rla
    ret nz

    or c
    or e
    rst $38
    rst $38
    ld c, b
    cp a
    ld a, [de]
    cp a
    rst $38
    ret nc

    cp a
    ldh a, [rDMA]
    ld e, e
    call nc, Call_000_2b09
    ld a, l
    ld sp, $0aaa
    inc de
    dec b
    adc $86
    ld de, $c5c3
    inc h
    ld b, a
    pop hl
    and b
    ld [hl], a
    or a
    ld d, h
    push af
    ld h, c
    ld c, a
    ld e, c
    adc [hl]
    rla
    db $f4

Jump_00c_4c41:
    rst $20
    ld l, b
    rst $28
    or h
    xor $79
    ld d, l
    inc [hl]
    ld b, d
    ld c, b
    and e
    sub c
    inc b
    ld d, $a0
    ld d, b
    xor d
    and $a9
    ld h, $42
    sub b
    xor d
    sub h
    sbc $a2
    ld a, [hl+]
    dec de
    ld b, c
    sbc h
    xor b
    dec d
    adc c
    and d
    sbc d
    sub h
    push bc
    adc d
    ld c, e
    xor a
    adc d
    add c
    db $e3
    ld b, a
    ld e, d
    ld b, d
    dec l
    dec h
    xor a
    call nc, $1c63
    ld e, b
    sub l
    ld d, d
    ld l, a
    ld e, a
    jp nz, $6531

    add c
    ld a, [bc]
    push hl
    ld b, l
    ld h, $58
    adc b
    sbc d
    ld c, b
    ld a, [hl]

jr_00c_4c87:
    add l

Jump_00c_4c88:
    ld a, [hl+]
    ld b, c
    ld [$5eaf], a
    and a
    ld a, [c]
    ld h, d
    and h
    sub [hl]
    ld [hl+], a
    ld d, [hl]
    and e
    ld a, [de]
    rst $38
    rst $38

Call_00c_4c98:
    xor e
    dec de
    adc h
    ld d, l
    ld b, $a8

Jump_00c_4c9e:
    xor l
    ld a, [hl-]
    ld e, l
    ld c, l
    ld h, c
    or d
    ld d, l
    xor c
    push hl
    jr c, jr_00c_4c87

    ld [hl+], a
    dec b
    ld [hl-], a
    sub a
    ld d, $ff
    push af
    add $4d
    sbc $2a
    ld b, [hl]
    ld a, [bc]
    and b
    ld e, d
    ld h, c
    sub l
    ld d, l
    xor d
    ld d, b
    sub e
    scf
    adc d
    ld a, b
    add l
    dec h
    ld c, c
    sub c
    ld b, e
    xor d
    db $fd
    ld e, h
    pop de
    ld c, d
    ld h, h
    db $e4
    ld b, [hl]
    ld h, l
    ld h, $a8
    ld [c], a
    ld c, h
    ld h, $2a
    adc e
    ld h, c
    add e
    db $fd
    ld d, [hl]
    inc sp
    and e
    ld [$1a86], sp
    add hl, hl
    ld c, e
    ld h, c
    add c
    ld a, [de]
    push bc
    adc h
    ld [de], a
    ld d, a
    add hl, de
    ld h, c
    add [hl]
    jp nc, $a454

    ld h, $0b
    ret c

    ld d, e
    ld d, a
    and d
    sub [hl]
    ld d, d
    ld l, b
    sub l
    ld [hl-], a
    jp c, Jump_000_3216

    add [hl]
    add l
    ld [$4929], a
    and d
    ld d, l
    ld h, d
    dec h
    ld d, [hl]
    adc [hl]
    ld [$a414], sp
    sub l
    daa
    adc h
    db $e3
    and [hl]
    inc b
    add h
    ld d, d
    ld l, b
    ld d, c
    sub [hl]
    ld a, [hl+]
    add hl, sp
    ld h, e
    add hl, bc
    adc c
    sub l
    add d
    adc h
    ret c

    rst $20
    sub h
    db $eb
    ld e, b
    db $ec
    and l
    ld c, [hl]
    dec d
    ld l, b
    pop af
    ld a, [hl+]
    and l
    ld d, l
    ld e, d
    adc [hl]
    cp c
    cp d
    ld a, d
    pop af
    pop af
    adc c
    call nc, Call_000_29c6
    ret


    sbc [hl]
    ld a, [de]
    add hl, de
    add hl, hl
    and d
    ld d, $90
    sbc h
    ret nc

    ld hl, $4818
    and c
    ld hl, $2325
    ld a, [hl]
    sbc h
    adc h
    and e
    ld d, d
    sub e
    res 6, b
    ld [hl-], a
    inc c
    ld d, l
    ld hl, sp-$60
    sbc d
    and h
    pop de
    ld d, d
    pop bc
    dec d
    add [hl]
    ld l, h
    ldh a, [rNR50]
    ld h, $09
    add hl, bc
    adc e
    add $2f
    add d
    ld b, d
    sub b
    sub b
    push de
    dec bc
    ld d, $99
    cp d
    ld b, d
    ld [$7c23], sp
    ld b, a
    inc de
    ld a, d
    ld a, $d1

jr_00c_4d76:
    sub h
    sbc c
    ld d, h
    ld b, [hl]
    db $fc
    sbc b
    rst $18
    rst $38
    ld hl, sp+$47
    inc c
    ld e, h
    ld e, l
    call z, Call_00c_559b
    dec e
    rst $08
    and e
    inc b
    ld c, [hl]
    ld a, [hl+]

jr_00c_4d8c:
    and h
    dec hl
    rst $38
    xor c
    call z, $72fd
    sub d
    ld a, [c]
    add l

jr_00c_4d96:
    jr nz, jr_00c_4d96

    xor e
    and c
    ld b, a
    dec de
    dec d
    dec b
    pop hl
    cp $1f
    add sp, $68
    ld d, l
    ld d, d
    ld c, h
    and [hl]
    xor e
    ld a, [de]
    ld c, a
    ei
    ld a, a
    pop bc
    ld l, b
    ld e, a
    ret nc

    and e
    ld a, [de]
    dec h
    and c
    add hl, de
    ld h, h
    ld d, b
    ld h, h
    ld e, c
    inc d
    ld h, c
    sbc h
    ld c, b
    dec h
    ld b, l
    ld h, l
    db $e4
    ld c, b
    or [hl]
    add hl, hl
    ld de, $6a9c
    ret


    ld a, c
    ld a, b
    or d
    jr jr_00c_4e27

    inc l
    ld h, [hl]
    sbc c
    ld b, e
    inc hl
    dec h
    ld h, l
    pop hl
    add l
    pop hl
    xor a
    inc e
    xor c
    add hl, sp
    ld [hl-], a
    ld d, [hl]
    ld d, e
    sub l
    ld d, c
    cp h
    ld sp, $939c
    dec h
    ld h, e
    ld a, h
    add hl, hl
    pop de

Call_00c_4de9:
    jr jr_00c_4d8c

    inc h
    ret z

    jr nz, jr_00c_4d76

    sub h
    sbc h
    xor c
    ld a, d
    ld c, $28
    ld c, b
    pop bc
    inc hl
    ld a, h
    ld c, d
    ld [hl], e
    and l
    call nc, Call_000_104c
    ld b, [hl]
    xor h
    ld [hl], h
    ret nz

    sbc l
    jr z, jr_00c_4e4d

    ld a, h
    add hl, hl
    cp d
    ld sp, $c5e5
    rst $00
    ld [hl], b
    ld b, h
    or l
    ld d, l
    ld c, d
    ld e, d
    and e
    ld h, l
    adc d
    xor d
    adc [hl]
    ld h, $33
    ld d, d
    ld a, [de]
    adc [hl]
    ld d, l
    ld hl, $e308
    ld a, c
    dec h
    ld c, [hl]
    ld c, b
    adc [hl]
    add l

jr_00c_4e27:
    dec b
    ld a, [de]
    jr c, jr_00c_4e92

    ld hl, $259a
    ld c, [hl]
    add hl, sp
    jp hl


    dec b
    dec h
    ld c, [hl]
    ld c, a
    ld a, [hl+]
    xor d
    dec b
    inc sp
    ld l, d
    cp $aa
    ld c, [hl]
    ld c, c
    ld h, d
    ld d, a
    ld hl, sp+$13
    adc l
    xor a
    add sp, -$65
    sub b
    ld l, b
    db $d3
    ld e, b
    jp c, $a23e

jr_00c_4e4d:
    ld l, d
    xor d
    sub h
    or l
    ld b, [hl]
    xor e
    pop de
    ld [hl], l
    db $10
    xor c
    and a
    add hl, de
    ld a, $2f
    ld sp, hl
    ret nz

    sub e
    and c
    add [hl]
    dec e
    reti


    and d
    jr c, @-$36

    db $76
    ld b, d
    add hl, de
    cp h
    adc h
    ld b, l
    add l
    sub c
    ld c, c
    pop bc
    ld l, b
    ld a, $08
    ld c, b
    pop bc
    daa

jr_00c_4e75:
    dec d
    sub $be
    cp $1e
    ld [hl], c
    ld hl, $5711
    db $fd
    sbc c
    dec a
    inc l
    ld e, h
    ld e, l

Jump_00c_4e84:
    ld b, [hl]
    ld [hl], l
    ld b, h
    inc h
    rst $08

Jump_00c_4e89:
    daa
    dec bc
    adc $67
    inc bc
    pop af
    and [hl]
    rst $00
    db $db

jr_00c_4e92:
    add b
    ld [hl], a
    xor l
    ld d, l
    ld c, c
    ld e, a
    jp hl


    inc a
    ld d, [hl]
    ld l, d
    ld b, d
    sbc [hl]
    adc b
    sub b
    sbc a
    call nc, Call_00c_42ed
    add hl, hl
    inc [hl]
    adc d
    xor l
    ld a, [hl-]
    sub b
    adc l
    and d
    ld [hl+], a
    ld [hl+], a
    db $e3
    and c
    ld [$22c2], sp
    ld [$2284], sp
    dec h
    ld h, c
    adc [hl]
    adc b
    jp nz, Jump_000_162a

    ld sp, $c253
    ld h, d
    cp d
    adc e
    rst $28
    add d
    add e
    dec l
    ld d, l
    inc sp
    ld d, b
    ld d, l
    add [hl]
    adc c
    sbc c
    ld d, d
    dec e
    ld d, d
    ld h, $45
    jp c, Jump_00c_4c9e

    cp b
    add l
    ld [$1a22], sp
    ld b, $06
    dec b
    ld [hl-], a
    ld l, b
    jp nz, $3409

    ld l, b
    ld h, b
    ret c

    adc b
    jr jr_00c_4e75

    ld [hl+], a
    and d
    ld d, e
    ld [$2189], sp
    ld e, c
    sub c
    ld b, c
    and d
    jr jr_00c_4f06

    ld l, b
    ld l, $21
    ld l, $48
    ld h, e

jr_00c_4efb:
    inc [hl]
    dec [hl]
    ld hl, $d342
    ld a, [hl+]
    ld [$5a13], sp
    adc h
    ld [de], a

jr_00c_4f06:
    xor c
    ld d, l
    adc c
    and h
    jp z, Jump_00c_4e89

    jr c, jr_00c_4efb

    ld h, l
    ld c, [hl]
    ld d, l
    adc [hl]
    sub [hl]
    ld b, [hl]
    xor d
    inc d
    xor d
    ld c, a
    ld [bc], a
    jr jr_00c_4f43

    sub d
    ld d, h
    sub [hl]
    inc [hl]
    sub e
    and d
    dec b
    or l
    xor d
    ld hl, $8263
    add hl, sp
    dec d
    and b
    ld h, d
    add hl, hl
    ld e, d
    dec l
    adc l
    inc h
    pop hl
    xor e
    inc e
    ldh [$78], a
    ld d, h
    jp nc, Jump_00c_544d

    pop bc
    ld [hl], $41
    adc e
    ld c, [hl]
    daa
    add sp, -$5c
    sbc c

jr_00c_4f43:
    dec l
    ld [$8122], a
    ld hl, $52cc
    add sp, $69
    ld b, d
    adc h
    ld a, [hl+]
    ld b, [hl]
    ld a, [bc]

jr_00c_4f51:
    ld b, l
    add d
    add hl, hl
    and c
    ld d, [hl]
    jr nc, @-$4a

    xor b
    push hl
    ld c, d
    and c
    add c
    adc [hl]
    rrca
    push af
    adc h
    sbc b
    ld h, e
    inc d
    sbc c
    sbc b
    ld e, b
    ld [c], a
    sub e
    ld d, $14
    ld h, h
    sub h
    ld h, l
    ld e, d

jr_00c_4f6f:
    ld d, $38
    dec l
    ld b, c
    jr nc, jr_00c_4fbf

    sub c
    xor d
    ld h, $90
    ld l, d
    add hl, sp
    jr nz, jr_00c_4f51

    and h
    add $94
    sub h
    xor $b5
    dec d
    adc l
    xor d
    add d
    cp $37
    jp c, $a124

    dec hl
    ld e, $3b
    ld d, l
    ld l, [hl]
    ld a, [bc]
    inc d
    adc h
    add h
    ret nz

    sbc l
    ret z

    ld sp, $0b51
    ld b, l
    xor $09
    ret c

    or b
    ld b, [hl]
    jr nc, jr_00c_4fc7

    dec h
    ld d, b
    rst $00
    ld c, e
    jr nz, jr_00c_4f6f

    inc d
    ld h, d
    add d
    ld e, h
    ld [hl], h
    ld c, b
    ld h, $4f
    inc h
    ld hl, $3f11
    ld [$c173], a
    ld d, $c2
    sub c
    ld [hl], e
    ld c, b
    ccf
    ld d, d

jr_00c_4fbf:
    push bc
    and a
    ld [bc], a
    add d
    dec hl
    inc c
    jr nc, jr_00c_5033

jr_00c_4fc7:
    rra
    ld c, [hl]
    or c
    inc d
    sub d
    db $dd
    ld c, d
    ld h, e
    ld de, $2455
    ld b, c
    db $10
    rst $08
    ld b, l
    inc h
    ld [hl], h
    ldh a, [$28]
    ld h, h
    ld b, b
    sub l
    ld b, h
    call c, $42c4
    rst $08
    inc d
    and h
    ld d, d
    ld sp, $a4ad
    and b
    pop af
    inc d
    ld c, e
    ld [bc], a
    sub d
    di
    ld d, h
    ld h, c
    and [hl]
    add hl, bc
    ld de, $a33f
    ld c, c
    add hl, sp
    adc l
    dec l
    ld [bc], a
    add hl, hl
    ld c, l
    xor c
    ld [$953b], sp
    rlca
    ld b, c
    rla
    xor c
    adc l
    sbc d
    ld a, [hl-]
    dec a
    ld [hl-], a
    rst $00
    dec h
    ld c, d
    ld b, l
    sub b
    and l
    ld d, b
    ld b, e
    ld c, $35
    rst $00
    ld b, d
    add hl, bc
    dec [hl]
    inc de
    dec b
    ld sp, $db79
    dec bc
    ld [$1f5a], a
    jr @-$3b

    daa
    ld b, h
    ld c, $fd
    ld a, a
    ld a, [$09c6]
    jr nc, @-$45

    pop de
    ret nc

    add hl, hl
    call $a715

jr_00c_5033:
    ld d, h
    jp z, $da62

    jp nc, $8511

    and [hl]
    ldh a, [rHDMA2]
    sub l
    cpl
    sub [hl]
    add e
    dec d
    ld l, d

jr_00c_5043:
    add $ae
    dec bc
    db $fc
    ld [hl], b
    cp $c4
    add hl, sp

Call_00c_504b:
    rrca
    ldh [$90], a
    and l
    pop de
    dec [hl]

jr_00c_5051:
    jp hl


    adc d
    adc [hl]
    and h
    ld e, b
    pop bc
    dec c
    ld b, b
    rst $10
    pop af
    add h
    ld b, h
    ld d, l
    dec b
    db $10
    sbc b
    dec h
    call nz, Call_000_1ccd
    jr z, jr_00c_5051

    xor d
    ld b, l
    ld b, l
    res 1, d
    ld de, $0c51
    ld l, [hl]
    adc e
    ld c, d
    ld [$a7c5], sp
    ld a, [bc]
    pop af
    jp z, $908a

    sbc b
    ld c, d
    ld e, l
    ld b, d
    jp $f71c


    ld a, [bc]
    sbc d
    ld d, d
    xor h
    db $10
    and a
    ld h, d
    and a
    dec a
    ld sp, $44b8
    cp c
    sbc a
    db $fd
    ld [hl-], a
    ld d, d
    ld d, a
    rst $38

jr_00c_5094:
    ld b, d
    adc d
    adc h
    rst $28
    ld a, d
    ld a, [hl+]
    reti


    scf
    and b
    ld a, [hl]
    call z, $e068
    ei
    db $e3
    inc h
    db $dd
    and $08
    ret


    add hl, bc
    jr c, jr_00c_5043

    and l
    inc b
    ld e, b
    push de
    and $15
    ld a, [hl+]
    jr jr_00c_5094

    and b
    ld e, a
    or l
    add hl, sp
    xor a
    and b
    cp l

jr_00c_50bb:
    daa
    ld d, d
    sub e
    sub d
    ld b, a
    reti


    ld e, b
    add sp, -$78
    ld l, b
    db $eb
    adc c
    ld c, [hl]
    sbc e
    ld d, l
    add c
    ld h, e
    and d
    xor d
    adc a
    inc hl
    ld [hl], h
    xor d
    ld [hl], c
    xor d
    and h
    or c
    ld de, $76bb

jr_00c_50d9:
    ld b, h
    pop de
    ret


    db $dd
    dec e
    xor c
    call c, $98cb
    inc h
    and [hl]
    adc h
    inc c
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    call c, Call_00c_4269
    jp z, Jump_000_1342

    inc c
    ld [hl], c
    jr nc, jr_00c_50bb

    and b
    add e
    dec e
    dec hl
    inc b
    and a
    ld [hl], a
    inc b

jr_00c_50fb:
    and a
    ld e, d
    dec c
    ld e, d
    sbc h
    ldh a, [rLYC]
    ld e, c
    rst $08
    ld a, [hl+]
    xor l
    rra
    inc c
    ld [hl], a
    cp [hl]
    add hl, de
    ld c, a
    ld e, l
    db $fd
    ld c, a
    ld d, c
    ld b, d
    or h
    db $f4
    call nc, $4f8b
    rla

Jump_00c_5117:
    cp a
    push af
    ld d, l
    jr nc, @+$51

    ld d, $f4
    ld l, d
    xor d
    or b
    ld b, d
    inc b
    db $e3
    ld d, h
    ld [c], a
    or h
    push bc
    sub c
    add c
    inc sp
    ld a, b
    ld e, l
    ld e, c
    jr c, jr_00c_50d9

    cpl
    ld b, l
    ld d, b
    ld c, h
    ld l, c
    ld b, d
    ld c, b
    ld c, [hl]
    ld b, l
    add c
    ldh [$60], a
    db $76
    ld a, [bc]
    rst $38
    ld b, [hl]
    add c
    ld h, h

Jump_00c_5142:
    jp nz, $2721

    cp a
    xor l
    ld b, [hl]
    pop hl
    add d
    inc e
    jp nz, Jump_00c_6888

    sub $92
    ld l, l
    xor $e2
    dec e
    dec b
    inc d
    jp z, $a2a1

    and d
    sub l
    ld c, d
    ld b, c
    ld h, d
    ld e, c
    adc c
    ld b, d
    inc sp
    rst $20
    add l
    ld e, b
    push bc
    ld c, b
    ld a, e
    ld hl, sp+$22
    jr nc, @+$62

    ld b, l
    ld d, e
    dec b
    jr c, jr_00c_51c9

    ld a, [hl+]
    ld hl, $94e8
    jr z, jr_00c_50fb

    cp d
    ld d, b
    ld h, c
    ld l, c
    scf
    ld [$f41d], a
    xor c
    ld e, d
    dec l
    ld h, $21
    ld h, $93
    ld l, [hl]
    ld a, [bc]
    ld l, a
    add hl, hl
    ld d, l
    ld hl, $2958
    ld c, b
    ld c, h
    ld d, d
    ld h, d
    ld d, [hl]
    ld h, b
    ld h, b
    adc h
    ld [de], a
    db $e3
    ld a, [hl+]
    adc l
    ret c

    add l
    adc b
    ld [hl], a
    ret


    ld d, b
    sub [hl]
    ld [$c8e8], sp
    db $76
    adc e
    db $76
    push de
    add l
    ld d, h
    ld h, h
    and $4e
    ld a, [de]
    ld a, a
    db $e4
    xor d
    xor h
    ld e, d
    ld d, e
    ld c, a
    and h
    and $ae
    ld c, h
    add hl, de
    ld h, l
    and l
    ld c, b
    ld h, h
    and h
    ld [hl+], a
    rst $18
    ld c, l
    dec hl
    push de
    ld a, d
    dec d
    ld [hl], l
    ld e, d
    adc h

jr_00c_51c9:
    sub b
    sub d
    jr z, jr_00c_51f5

    ldh [$aa], a
    rra
    ld a, a
    push de
    ld a, [bc]
    sub c
    sub d
    sub c
    xor c
    ld h, e
    xor d
    xor d
    xor e
    rst $38
    ld d, h
    ld [de], a
    ld d, d
    jp hl


    adc a
    ld [hl+], a
    ld h, l
    adc c
    ld d, a
    xor b
    ld a, [c]
    and l
    ld d, [hl]
    add l
    ld h, l
    dec a
    ld e, e
    db $ed
    ldh a, [$e9]
    db $eb
    ldh a, [$60]
    sbc [hl]
    and a

jr_00c_51f5:
    and c
    ld e, $ae
    ret z

    ld l, d
    ld a, b
    cp d
    ld b, a
    call nc, Call_00c_5e95
    ld a, b
    ret nc

    ld a, [hl+]
    rra
    ld b, c
    call nc, $9e90
    dec a
    ld e, b
    rr b
    cp c
    jp nz, $9cd4

    sub c
    adc h
    dec hl
    add [hl]
    and l
    db $e3
    add a
    dec e
    add hl, hl
    ld [de], a
    inc d
    ld [hl], $87
    or b
    ret z

    ld b, b
    and b
    pop af
    ld d, c
    cp d
    ld b, d
    ld b, l
    dec bc
    ld b, e
    ld b, l
    ret c

    ld b, e
    inc b
    add hl, bc
    rst $00
    add h
    db $ec
    ld b, e
    ld hl, $9812
    call nz, Call_000_2643
    sbc c
    ret nz

    jp Jump_00c_5a0b


    sbc b
    ld sp, $2918
    inc l
    ld c, d
    sbc b
    jr z, jr_00c_52a5

    sub d
    call nz, Call_000_20e8
    and d
    or e
    call nc, Call_00c_54a3
    ld de, $2c71
    ld c, d
    ld b, l
    ld [de], a
    or b
    inc [hl]
    or h
    dec c
    rla
    ld c, c
    adc h
    pop af
    dec [hl]
    inc h
    ret


    dec bc
    dec l
    dec b
    dec l
    ld c, h
    ld h, [hl]
    adc d

jr_00c_5266:
    jr nc, jr_00c_52b8

    ld b, h
    or h
    jr c, jr_00c_52ad

    push de
    jp hl


    sub l
    ld b, [hl]
    ret


    ld c, h
    inc c
    ld a, [hl-]
    adc e
    ld e, $2a
    and d
    or h
    ld c, e
    dec b
    inc h
    xor d
    ld a, [hl-]
    ld [hl], l
    inc hl
    pop de
    adc h
    dec sp
    jr jr_00c_52da

    rst $20
    ld b, d
    add hl, hl
    cp a
    ld d, l
    and [hl]
    adc $9b

Call_00c_528d:
    cp h
    sbc h
    or b
    ld a, [hl-]
    ld h, b
    add l
    db $dd
    xor c
    ld [hl], b
    jp Jump_00c_7304


    ret nz

    ret nz

    and c
    inc b
    ld a, [bc]
    add h
    dec e
    ld l, d
    ret z

    ld c, e
    inc c
    ld h, c

jr_00c_52a5:
    inc e
    ld d, b
    pop bc
    rst $38
    call nz, $157c
    ld b, c

jr_00c_52ad:
    jr jr_00c_52f8

    inc d
    sbc l
    ld d, h
    ld d, [hl]
    xor l
    db $10
    sbc b
    ret c

    rst $20

jr_00c_52b8:
    sbc c
    dec h
    jr nc, jr_00c_5266

    ld a, c
    or l
    ld d, c
    ld l, c
    db $ed
    add b
    ld b, h
    and l
    ld d, l
    ld d, a
    rst $38
    rst $38
    push de
    ld d, e
    rra
    cp $bc
    adc $a9
    adc h
    ld l, d
    cp h
    ld l, $bd
    ld b, l
    ld d, h
    inc de
    add d
    add d
    ld h, [hl]

jr_00c_52da:
    cp $a7
    ld [hl-], a
    cp a
    push de
    pop hl
    sbc b
    inc h
    xor h
    add $d4
    add hl, hl
    ld b, d
    ld hl, $aa46
    inc [hl]
    sbc c
    ld [hl+], a
    adc d
    add [hl]
    and h
    res 7, b
    ld h, e
    inc h
    ld [de], a
    inc de
    dec sp
    rrca

jr_00c_52f8:
    adc b
    ld d, h
    xor c
    inc b
    jp c, Jump_00c_5142

    ld b, d
    ld h, d
    ld h, e
    ld l, [hl]
    adc c
    add d
    ret z

    ld l, d
    dec b
    ld h, e
    ld a, [hl-]
    ld d, l
    ld d, d
    dec de
    ld [hl+], a
    sub e
    sub [hl]
    xor l
    ld a, [hl+]
    ld [$bde8], sp
    ld e, b
    inc de
    xor [hl]
    xor d
    inc a
    ld a, l
    call nz, $9daa
    dec hl
    dec d
    ld d, l
    daa
    inc de
    ld d, d
    adc d
    and a
    scf
    inc h
    ld a, l
    ld e, [hl]
    and [hl]
    ld l, d
    ld h, e
    inc b
    ld h, c
    ld b, [hl]
    ld e, [hl]
    push de
    ld e, c
    db $10
    ld [hl+], a
    ret


    or l
    sbc d
    ld d, l
    ld d, [hl]
    sbc d
    inc l
    sbc d
    inc h
    reti


    sbc d
    inc d
    ld c, d
    ld d, d
    sbc h
    ld d, d
    ld c, h
    ld a, [de]
    ld b, d
    ld [de], a
    ld a, [hl+]
    ld l, d
    add sp, $3b
    dec bc
    inc de
    ld b, [hl]
    db $f4
    db $10
    rst $18
    ld d, $9d
    ld l, c
    ld [$5447], sp
    ld e, $a9
    ldh a, [$e0]
    ld [hl], a
    cp l
    scf
    db $d3
    and c
    cp a
    push af
    ld d, h
    or l
    ld d, d
    jp hl


    call nc, $6ae5
    ld a, [hl+]
    xor d
    rst $38
    or $ad
    or $41
    inc b
    inc de
    adc l
    ld [$e188], sp
    push af
    add hl, de
    ld b, [hl]
    adc [hl]
    ld b, h
    ld [hl+], a
    sub e
    ld a, a
    ld l, b
    jp nz, $9238

    ccf
    ld e, b
    ld l, l
    ld d, l
    ld c, d
    ld d, [hl]
    ld a, [c]
    db $10
    add l
    ld [$ffd5], sp
    and c
    push af
    db $76
    and l
    ld l, c
    ld b, c
    rlca
    ld b, l
    adc e
    ld c, l
    ld e, $08
    xor [hl]
    adc b
    xor [hl]
    ld d, c
    and c
    sub b
    add d
    adc d
    add d
    scf
    ld d, l
    rst $38
    call nc, $e797
    ret nc

    sbc d
    ld c, d
    adc c
    ld h, b
    adc h
    dec d
    cp d
    db $ed
    daa
    reti


    ld h, d
    ld d, [hl]
    reti


    ld b, d
    add l

jr_00c_53bb:
    ld b, $95

jr_00c_53bd:
    adc c
    ld e, e
    ld e, d
    ld [hl+], a

Call_00c_53c1:
    jp Jump_00c_6a9b


    xor a
    ld c, c
    ld b, [hl]
    and d
    ld d, e
    ld a, [hl]
    ld hl, $5a2e
    ld sp, $8189
    jr nc, jr_00c_5418

    inc [hl]
    xor a

jr_00c_53d4:
    ld h, h
    ld [c], a
    ld h, [hl]

jr_00c_53d7:
    dec b
    add $2a
    jr jr_00c_53bd

    adc l
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    add c
    jr jr_00c_53d4

    ld l, h
    ld d, e
    add d
    ld b, [hl]
    jr jr_00c_53d7

    ld b, c
    ld h, h
    ld d, d
    db $e3
    add hl, de
    ld h, h
    ldh [$63], a
    ld h, h
    set 2, e
    ld b, h
    inc d
    reti


    jr jr_00c_53bb

    pop de
    ld h, [hl]
    ld c, e
    ld c, c
    ld c, h
    ld de, $c9a4
    ld a, [bc]
    add hl, bc
    ld hl, $a055
    ld b, a
    sub l
    jr nc, jr_00c_545e

    cp b
    sbc c
    dec l
    ld a, [bc]
    ld b, $da
    and d
    ld a, [de]
    rlca
    xor d
    and h
    dec d
    ld e, $30

jr_00c_5418:
    sub c
    sbc b
    sub h
    dec l
    cp $ab
    ret z

    ld d, l
    dec b
    cp b
    jp nz, Jump_000_3141

    ld b, d
    ld [hl+], a
    ld a, [hl+]
    ld a, [c]
    ld d, h
    ld h, e
    ld a, [de]
    ld [hl], l
    ld sp, $2999
    ld [$ea12], sp
    ld d, $19
    db $fc
    and l
    db $76
    and c
    ld h, e
    add hl, bc
    and l
    adc [hl]
    ld h, l
    adc e
    sub c
    xor d
    ld [$94d2], sp
    ld l, b
    jr z, @+$25

    ld a, [hl+]
    dec de
    call z, $a322
    adc d

Jump_00c_544d:
    ld d, b
    sub b
    ld c, l

jr_00c_5450:
    dec l

Call_00c_5451:
    ld l, b
    add hl, de
    ld b, e
    ld c, c
    ld b, c
    jr c, @-$14

    and e
    ld a, d
    ld hl, sp-$66
    ld a, c
    sub h

jr_00c_545e:
    push af
    ld a, [hl+]
    dec sp
    ld [hl], a
    xor b
    and a
    ld d, [hl]
    xor e
    ld [de], a

jr_00c_5467:
    sub [hl]
    sbc c
    jp nz, $c89c

    ld d, c
    ld d, l

jr_00c_546e:
    ld b, b
    xor d
    cp l
    ld c, d
    and e
    ld b, $0a
    ld [hl], d
    inc [hl]
    ld b, d
    ld [hl], b
    ei
    adc h
    and e
    rst $00
    inc hl
    ld b, a
    cpl
    or d
    db $76
    rst $18
    xor b
    ld e, l

Jump_00c_5485:
    ld [bc], a
    sbc c
    dec l
    call nz, $11d9
    pop bc
    ld h, c
    add l
    rst $18
    db $e3
    dec bc
    ld b, b
    and e
    sub $c2
    sub h
    sbc d
    and h
    ld b, l
    jr z, jr_00c_54f0

    adc $08
    ret nz

    add sp, $43
    ld b, a
    ld [hl], $4c

Call_00c_54a3:
    xor h
    ld e, d

jr_00c_54a5:
    inc e
    xor b
    db $e3
    ld [hl], c
    ld d, [hl]
    sub c
    jr jr_00c_5450

    dec l
    pop af
    ld d, a
    adc e
    ld d, h
    and c
    ld a, [hl+]
    ld h, d
    sub c
    ld d, c
    ld c, b
    ld h, c
    db $d3
    dec b
    inc a
    xor l
    ld d, [hl]
    db $10
    inc h
    call nz, $2a47
    jr nc, jr_00c_5467

    call nz, $b460
    jr z, jr_00c_546e

    call nc, Call_000_1b67
    ldh a, [rNR43]
    sub l
    ld b, [hl]
    inc d
    ld [c], a
    cp $65
    inc e
    ld d, [hl]
    add hl, bc
    sbc d
    sub b
    db $e3
    add h
    ld a, [bc]
    sbc [hl]
    dec sp
    ld [hl], a
    ldh a, [$a6]
    add hl, bc
    add h
    ld [hl], d
    ld b, [hl]
    ld a, c
    ld [hl], h
    ld d, e
    ld d, c
    adc h
    sbc h
    ld a, [hl-]
    ld h, h
    add d
    ld d, e

jr_00c_54f0:
    sub c
    ldh [$c6], a
    adc b
    ld h, $e8
    ld h, $31
    ld l, $12
    jr z, jr_00c_54a5

    xor l
    add hl, hl
    and d
    ld [$0a69], sp
    ld b, d
    ldh a, [$d7]
    add h
    ld e, d
    sbc b
    ret nc

    ld c, c
    adc d
    dec bc
    ld b, $b5
    ld [hl], a
    ld b, h
    ld l, d
    and c
    xor l
    ld e, a
    add hl, de
    ld e, b
    ret


    ld c, b
    ld [hl], e
    ld d, l
    ld e, a
    ld a, [c]
    xor l
    ld [hl], e
    sbc b
    ld e, [hl]
    sbc h
    adc e
    ld b, h
    and h
    jr z, @+$41

    jp $6536


    ld a, d
    ld h, h
    sbc e
    rst $30
    db $f4
    dec [hl]
    ld [hl], d
    ld a, [bc]
    cp a
    jr jr_00c_5592

    sub e
    inc e
    ld d, d
    cp a
    ld b, [hl]
    dec [hl]
    inc b
    ld l, c
    inc bc
    ld [hl], l
    dec b
    add $df
    xor b
    daa
    ld l, h
    rrca
    xor c
    jp $d2d8


    sub a
    ld h, a
    inc l
    ld [hl], d
    ld b, [hl]
    inc d
    xor l
    sbc a
    ld h, $44
    or e
    ld d, h
    ret


    ld b, c
    and e
    ld [hl], a
    or h
    cp d
    or e
    adc l
    ld b, d
    jp nc, $e228

    or h
    ld d, l
    dec bc
    ldh a, [rLYC]
    ld d, e
    ld e, d
    or a
    and d
    and [hl]
    ld [hl], c
    adc l
    ld l, b
    dec l
    ld sp, $3b4e
    ld b, c
    ld c, h
    inc a
    inc hl
    adc l
    inc b
    or a
    push bc
    adc $14
    rst $00
    adc b
    adc [hl]
    inc b
    ld [de], a
    ld e, c
    adc c
    ld d, e
    ld [hl], l
    ld e, $50
    bit 5, h

Call_00c_5589:
    ldh [$ad], a
    ld b, d
    xor c
    ld d, $d3
    ld [hl], h
    ld d, [hl]
    ld a, a

jr_00c_5592:
    push hl
    adc $19
    rst $18
    ld c, d
    or l
    ld a, b
    pop hl
    xor b

Call_00c_559b:
    add $a3
    rst $00
    sbc l
    ld l, d
    ld [hl], l
    ei
    ld h, a
    inc e
    sub a
    rst $00
    dec a
    cp $ba
    ld b, d
    sbc e
    ld b, h
    inc a
    scf
    ei
    ld a, l
    dec de
    ld b, b
    add l
    xor a
    rst $38
    ld [$ce70], a
    rla
    rst $38
    rst $38
    sbc h
    ld l, a
    cp a
    rst $38
    cp $29
    jp nz, $ffff

    rst $38
    add a
    dec de
    or l
    rst $38
    rst $18
    db $fc
    ld [hl], b
    xor a
    dec b
    ld b, d
    jp c, $15c7

    db $eb
    sbc b
    ld l, d
    ld [hl], b
    inc hl
    ld [hl], c
    adc d
    ldh [$9b], a
    pop bc
    pop de
    sbc d
    ld a, h
    jr c, jr_00c_5658

    adc b
    inc de
    sbc [hl]
    ld c, a
    ld bc, $95bf
    add hl, hl
    ld d, [hl]
    ld a, [$edd4]
    ld h, d
    xor d
    ld a, a
    or $a8
    db $10
    ld h, b
    ld d, e
    cp c
    and e
    add [hl]
    inc b
    sbc e
    push de
    ld a, [hl-]
    jr nz, @+$6a

    db $dd
    inc b
    add $af
    db $f4
    reti


    ld a, [hl+]
    ld e, e
    ld c, b
    ld h, h
    and h
    inc de
    dec d
    ld e, d
    and e
    ld d, a
    and d
    db $ed
    jp c, $1508

    ld e, [hl]
    dec d
    ld l, d
    sub l
    ld l, d
    adc l
    inc d
    inc h
    push bc
    jp nc, $0a23

    add a
    cp $31
    and d
    sub h
    inc d
    inc d
    adc $f4
    jr nz, jr_00c_5677

jr_00c_562a:
    ld a, [hl]
    push de
    ld a, [hl+]

Call_00c_562d:
    adc b
    xor e
    adc [hl]
    jr z, jr_00c_566a

    adc [hl]
    db $fc
    add $22
    sub h
    ld l, l
    and b
    ld d, l

jr_00c_563a:
    ld b, $33
    ld h, c
    and b
    ld c, b
    adc [hl]
    ld c, d
    ld e, c
    ld b, [hl]
    xor c
    ld c, h
    ld e, [hl]
    ld b, [hl]

jr_00c_5647:
    ld [$545a], sp

jr_00c_564a:
    push hl
    xor a
    ret z

    and e
    dec hl
    call c, $c221
    ld e, d

jr_00c_5653:
    adc l
    push de
    ld d, d
    ld h, b
    ld c, [hl]

jr_00c_5658:
    ld a, [de]
    ld [hl], h
    adc l
    jr c, jr_00c_5647

    ld e, a
    dec h
    sub e
    ld [hl], l
    db $fd
    rst $20
    jr c, jr_00c_563a

    ld sp, $4cd6
    sbc a
    or l

jr_00c_566a:
    and b
    ld b, [hl]
    sub c
    push af
    dec l
    and b
    ld h, b
    ld d, l
    ld [hl+], a
    or h
    ld [hl+], a
    sbc $7e

jr_00c_5677:
    xor b
    ld d, l
    ld l, [hl]
    or b
    xor a
    ld b, c
    adc b
    sbc d
    dec b
    ld l, h
    ld e, a
    jr nc, jr_00c_562a

    adc h
    ld l, e
    or $95
    ld h, [hl]
    ld c, b
    ld a, b
    add h
    rla
    ld e, b
    jr z, jr_00c_56a2

    ld l, c
    ld [$18c1], sp
    ld a, [de]
    and d
    sub d
    ld d, h
    sub h
    ld l, d
    xor e
    ld e, b
    sbc d
    ld b, d
    ld [hl], $4c
    ld [c], a
    ld [de], a

jr_00c_56a2:
    add sp, $29
    ldh [$7d], a
    dec l
    inc sp
    ld b, [hl]
    ld l, c
    ld c, c
    sub d
    ld [hl+], a
    xor b
    ld d, h
    ld d, l
    ld b, c
    ld [hl+], a
    sub e
    ld h, h
    jr nz, jr_00c_564a

    ld a, [hl+]
    and d
    jr jr_00c_5653

    dec h
    ld b, [hl]
    sub c
    adc d
    ld c, l
    sub b
    adc b
    xor b
    ld [de], a
    inc d
    and l
    ld a, [hl+]
    db $db
    pop bc
    ld c, l
    ld d, l
    ld d, l
    inc b
    inc h
    adc d
    ld hl, $b049

Jump_00c_56d1:
    cp l
    ld c, b
    and e
    ld h, l
    ld a, [$bfaa]
    ld b, $4a
    ld [c], a
    ld a, [de]
    ld a, [hl+]
    ld a, [c]
    xor l
    ld c, c
    ld e, a

jr_00c_56e1:
    and e
    ld c, d
    rst $30
    push af
    ld d, [hl]
    rlca
    ld hl, $3146
    adc c
    ld a, b
    db $e3
    cp a
    and l
    ld e, b
    rra
    ld a, [bc]
    and e
    add c
    ld a, [hl-]
    jr z, @-$3c

    add [hl]
    ld hl, sp-$22
    ld a, [hl-]
    ld [hl], d
    xor d
    ld a, b
    ld [hl], $ad
    ld [bc], a
    sub b
    and e
    ld b, d
    jp c, Jump_00c_4377

    cp $70
    ld c, a
    jp hl


    call c, $f98f
    or h
    db $fc
    ld b, h
    add hl, bc
    sub $8f
    ld a, [$b967]
    and h
    ld b, d
    ld [hl], h
    ld e, a
    db $ec
    sub l
    cp c

Jump_00c_571e:
    adc d
    ld b, [hl]
    xor c
    xor d
    and $30
    ld d, c
    sub l
    ld h, d
    xor [hl]
    xor a
    db $fd
    ld d, c
    and d
    pop hl
    add hl, de
    ld e, a
    sub c
    push de
    ld [$57ad], a
    ld [$5a54], a
    dec l
    ld b, [hl]
    or [hl]
    ld b, [hl]
    add d
    sub l
    ld d, a
    xor l
    ld e, [hl]
    and e
    ld de, $1004
    jr nz, jr_00c_56e1

    ld [hl], e
    ei
    ld [bc], a
    inc d
    ld h, c
    ld d, [hl]
    or l
    ld [$3d10], a
    ld a, a
    ld a, [de]
    add hl, sp
    rra
    rst $00
    dec e
    ld l, e
    ld e, d
    add hl, de
    inc l
    ld h, [hl]
    cp $46
    ld l, $10
    add hl, hl
    pop bc
    ld e, [hl]
    or d
    ld [hl], c
    ld e, h
    ld b, a
    or l
    inc e
    ld c, c
    dec bc
    ld a, d
    sbc h
    sub b
    or l
    ld [$d071], a
    add sp, $5e
    sbc e
    xor h
    inc d
    ld d, l
    ld a, d
    sbc c
    xor a
    ldh [$a5], a
    ld a, [hl]
    sbc c
    inc [hl]
    ld a, [hl+]
    ld hl, sp+$25
    rst $10
    xor d
    ld b, e
    rst $38
    ccf
    cp $8f
    db $ec
    ld d, e
    dec bc
    db $fd
    ld b, c
    sub e
    ld [de], a
    or l
    pop hl
    rst $38
    cp a
    db $fd
    db $fc
    rst $38
    sub h
    ret nz

    db $fc
    ld e, [hl]
    add hl, hl
    dec bc
    rst $38
    rrca
    db $fd
    rst $38
    pop hl
    xor e
    adc a
    pop de
    ld [$17bf], sp
    add [hl]
    rrca
    ld d, h
    ld e, e
    db $fd
    rst $38
    pop hl
    ld d, l
    ld e, [hl]
    ld de, $3f50
    sbc c
    ld a, l
    ld [$ff65], a
    cp $11
    ld [de], a
    adc d
    xor b
    and e
    ld sp, hl
    sub [hl]
    ld e, $17
    cp $a1
    rst $38
    rst $38
    db $f4
    jr nc, @-$16

    cp h
    adc h
    rrca
    and $78
    ld a, b
    ld b, c
    sub $0f
    rst $38
    rst $38
    inc h
    jp $9743


    db $fc
    ld l, c
    rlca
    and l
    ld e, a
    rst $38
    rst $38
    ld h, $2d
    ld a, d
    ld c, a
    push hl
    dec h
    ld hl, $a437
    ld a, a
    rst $38
    ldh a, [$b2]
    add hl, hl
    ld c, a
    sub l
    ld hl, sp-$5a
    or b
    ld e, [hl]
    ccf
    rst $38
    push hl
    ld b, b
    jp hl


    add l
    inc de
    ld b, c
    inc e
    ld [hl], h
    rst $18
    pop af
    ld l, d
    ld a, b
    pop af
    sub h
    xor b
    ld l, a
    inc e
    ld de, $80eb
    ld b, h
    cp c

jr_00c_580c:
    ld d, l
    cp $ce
    ld d, l
    rst $38
    rst $38
    ld [hl], e
    add l
    ld a, a
    cp $a0
    ld d, l
    scf
    ld a, d
    push af
    ld d, [hl]
    and d
    inc sp
    add c
    ld a, a
    db $ed
    ld e, d
    and h
    ldh [$a8], a
    rra
    and e
    jr jr_00c_580c

    or h
    call Call_000_1539
    jr nc, @+$65

    sub e
    sbc $55
    and e
    sbc [hl]
    or h
    dec d
    ld d, l
    adc l
    rst $18
    ld e, a
    rst $20
    push af
    ld d, h
    db $dd
    ld e, d
    xor a
    ld d, h
    ld a, [hl+]
    and e
    add d
    cp l
    rst $38
    rst $38
    rst $38
    add hl, sp
    ld l, d
    xor e
    rst $38
    rst $08
    add l
    sbc $aa
    or l
    ld c, c
    jp z, $adb4

    ld d, h
    ld [hl], d
    ei
    inc de
    ld a, [$e16e]
    adc h
    jp Jump_00c_5955


    cp h
    ld d, h
    db $10
    daa
    ld h, e
    ld d, c
    jp c, $049e

    sbc c
    daa
    ld b, l
    db $fd
    ld c, c
    jp z, $2bbf

    ld d, l
    inc e
    ld de, $0d1f
    ccf
    ld sp, hl
    pop bc
    ld de, $5255
    xor d
    sbc a
    ld c, d
    ld [hl], a
    or l
    ld a, a
    and l
    inc a
    rst $30
    adc b
    xor l
    rst $38
    ld c, a
    dec b
    ld d, l
    ld a, h
    inc hl
    ld [$3baa], sp
    ld [$32aa], a
    ld [hl], e

jr_00c_5894:
    ld c, $3b
    xor l
    ld [hl], $81
    cp h
    ld d, h
    ldh a, [$6e]
    inc [hl]
    ld h, c
    push bc
    ld d, h
    pop bc
    ld a, a
    rst $38
    ld d, l
    ld d, e
    dec [hl]
    inc sp
    xor d
    sub c
    ld d, h
    add l
    ld a, d
    adc h
    jr z, @+$1c

    db $d3
    sub d
    ld [hl], c
    pop hl
    ld d, c
    ld a, [$c19f]
    ld d, a
    or $d5
    dec d
    add hl, hl
    add c
    ld [hl], d
    and e
    dec b
    ld a, h
    ld e, a
    and d
    ld a, [hl+]
    jr nc, @-$36

    xor d
    dec d
    sbc $8e
    add hl, bc
    cp $4c
    ld d, a
    cp a
    ld l, d
    add a
    sub $a3
    sub c
    rrca
    jp nz, Jump_00c_56d1

    ld [$95bf], a
    adc e
    ld d, d
    dec d
    dec [hl]
    ld d, b
    cp l
    dec d
    ld a, [$d49f]
    ld l, l
    xor b
    ld hl, $bf50
    xor e
    db $ed
    ld d, l
    rst $38
    or d
    jr nz, jr_00c_5894

    ld h, d

Call_00c_58f3:
    xor d
    ld b, [hl]
    ld e, d
    jr c, jr_00c_590e

    and a
    dec d
    ld d, $c5
    ld c, c
    sub d
    rla
    jp nz, $1442

    pop hl
    ld d, h
    ld l, a
    inc b
    ld l, b
    sub l
    ld h, $e8
    ccf
    daa
    ld [hl+], a
    ld a, [bc]

jr_00c_590e:
    ld [hl], $99
    ld [hl+], a
    ld [hl-], a
    ld d, d
    jp hl


    ld h, c
    xor d
    ld a, [bc]
    ld [$afe2], sp
    ld d, c
    ld e, a
    reti


    sub b
    ld e, a
    db $fd
    ret nc

    ld a, d
    or h
    ld d, e
    sub [hl]
    xor h
    ld [hl+], a
    dec hl
    ld b, e
    and d
    or b
    ret c

    cp b
    add sp, $57
    push af
    ld d, c

Call_00c_5931:
    cp l
    ld d, a
    add sp, -$39
    or e
    adc c
    ld a, a
    xor d
    push af
    ld a, [$9ad0]
    ld sp, $145a
    ldh [$7a], a
    inc [hl]
    xor d
    xor a
    push af
    ld d, a
    cp $95
    ld h, l
    dec [hl]
    ld h, e
    adc [hl]
    jp nc, $a32a

    ld a, [hl+]
    xor b
    call Call_00c_5589

Jump_00c_5955:
    ld [hl], $bd
    ld c, d
    ld e, d
    ld c, b
    ld d, l
    ld c, l
    sbc $ab
    call nc, $bfd6
    ld [c], a
    ld e, l
    ld a, [de]

Jump_00c_5964:
    dec [hl]
    and c
    ld d, d
    db $eb
    ld sp, hl
    ld d, e
    dec b
    ld h, c
    ld e, b
    ld d, h
    adc d
    inc [hl]
    and c
    or l
    add hl, hl
    ld a, d
    xor d
    rst $38
    push de
    xor b
    or l
    dec d
    dec [hl]
    or l
    ld a, [bc]
    rst $38
    add sp, $56
    inc b
    db $e3
    cp [hl]
    jr c, @+$2d

    push af
    ld d, [hl]
    xor l
    ld l, b
    jp hl


    sbc e
    ld b, h
    ld b, b
    sbc [hl]
    ld [hl], d
    sub [hl]
    cp c
    ld [de], a
    ld a, b
    add hl, hl
    inc l
    ld a, d
    ld [$b460], a
    ld a, [$e129]
    rst $38
    call nz, $b4b0
    ld [$88a7], sp
    pop de
    ld [hl], c
    inc [hl]
    add hl, bc
    ld sp, $1482
    ld c, h
    sub b
    and [hl]
    ld l, c
    and l
    ld de, $098c
    ld [$a9ef], sp
    add [hl]
    ld b, d
    sbc d
    xor c
    ld e, a
    xor h
    inc l
    ld b, h
    dec bc
    ret nc

    push de
    ld b, h
    ld e, [hl]
    inc d
    ld h, l
    dec c
    push bc
    ld e, a
    db $10
    jp Jump_000_1a4f


    cp b
    ld a, [hl]
    add h
    ld e, d
    ld b, h
    ld h, l
    ei
    ld hl, sp-$3a
    jp z, Jump_00c_634d

    add a
    ld [bc], a
    ld de, $aa2a
    xor a
    rst $38
    cp $09
    add hl, hl
    ld [$f8c6], sp
    db $e4
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    ld hl, sp+$48
    jr c, @-$3c

    ldh a, [$29]
    add hl, bc
    sub [hl]
    ld d, h
    ld c, l
    ld a, a
    pop de
    rla
    ld sp, hl
    add hl, sp
    ccf
    xor a
    db $ec
    ld sp, hl
    ld [$b5e6], sp
    pop af
    ld c, a
    cp $1f
    ld h, h
    ld e, a
    rst $38
    ei
    ei
    rst $38
    sbc e

Jump_00c_5a0b:
    add $17
    ld e, a
    add l
    jp c, $ff45

    db $fc
    db $10
    ld d, l
    pop af
    jp z, $d0e4

    or e
    ld a, [$7e91]
    ld c, $82
    pop hl
    sbc h
    sub b
    ld d, b
    dec h
    ld b, h
    ld e, a
    push de
    ld a, a
    add l
    ld de, $1e41
    daa
    and d
    cp l
    add h
    ld c, e
    jp hl


    ret nc

    sub e
    dec c
    add hl, hl

Call_00c_5a36:
    dec d
    ld h, c
    inc d
    cp a
    ret


    add $84
    ld l, [hl]
    res 4, h
    dec hl
    db $fd
    cpl
    inc e
    inc l
    ld [hl], b
    and c
    xor d
    and c
    ld d, [hl]
    xor [hl]
    sub d
    sbc e
    rst $20
    inc d
    call Call_00c_5f51
    rst $38

Jump_00c_5a53:
    adc [hl]
    add hl, sp
    and [hl]
    ld d, d
    ld h, b
    add e
    inc sp
    ei
    add d
    cpl
    or $d1
    dec d
    inc e
    push af
    cp e

Call_00c_5a63:
    cp a
    rst $38
    ld a, [$fcab]
    add hl, hl
    add hl, de
    jp nz, $d599

    ld e, a
    rst $38
    rst $38
    db $f4
    ld e, d
    ld b, [hl]
    ld l, a
    ld a, [$bf62]
    jp hl


    call z, Call_000_05c7
    ld a, a
    xor e
    rst $38
    db $fd
    ld e, $65

jr_00c_5a81:
    ld d, l
    ld d, h
    db $76
    add b
    ld b, h
    or l
    ld e, a
    db $fd
    ld d, l
    ld e, a
    dec l
    ld d, l
    ld a, [hl]
    db $ed
    xor l
    push hl
    db $fd
    adc d
    xor e
    ld l, b
    inc d
    ld a, [hl+]
    sub a
    dec bc
    ld [hl], b
    call nc, $52aa
    sbc d
    dec h
    ld e, b
    dec h
    ld c, h
    ld h, d
    push hl
    jr nc, jr_00c_5b25

    db $d3
    and l
    ld [c], a
    ld a, b
    db $ed
    ld [hl], l
    adc [hl]
    inc d
    and l
    dec h
    dec de
    add hl, hl
    db $e3
    dec b
    rrca
    ld b, d
    add sp, $64
    pop bc
    ld b, l
    ld d, c
    rst $18
    or b
    ld c, b
    xor d

Call_00c_5abf:
    cp b
    cp e
    ld [$e0f7], a
    db $eb
    ldh [rHDMA2], a

Jump_00c_5ac7:
    inc sp
    ld a, d
    xor b

jr_00c_5aca:
    add a
    ld [$eb98], a
    cp [hl]
    pop bc
    add hl, sp
    db $ed
    ld l, e
    ld h, e
    xor d

Call_00c_5ad5:
    xor b
    ld a, [c]
    ld h, a
    ld e, d
    sub [hl]
    sub b
    sbc e
    ld a, [hl+]
    scf
    sub h
    db $eb
    ld [de], a
    push hl
    ld e, [hl]
    ld [hl], $99
    inc a
    ld d, [hl]
    ld l, l
    and [hl]
    ld c, c
    ld d, [hl]
    sbc c
    xor c
    push de
    dec d
    ldh [$e6], a
    add hl, hl
    add d
    adc [hl]
    ld c, e
    ld de, $3b66
    jr nz, jr_00c_5a81

    ld a, a
    and b
    ld sp, hl
    and e
    add l
    cp $d3

jr_00c_5b01:
    ld d, a
    db $ed
    ld b, h
    add hl, sp
    ld d, l
    xor l
    ld a, [hl]
    cp d
    dec d
    and $11
    add h
    ld c, h
    dec d
    ld b, c
    ld e, $5b
    sbc l
    ld l, e
    pop af
    rst $10
    ld b, a
    push bc
    nop
    ld [hl], a
    or a
    ld d, l
    ld d, h
    di
    rst $10
    ld e, d
    and a
    sub l
    xor d
    xor d
    sub l

jr_00c_5b25:
    ld d, d
    ld d, l
    ld d, h
    ldh [$7a], a
    ld hl, $9349
    add [hl]
    cp [hl]
    xor d
    cp l
    inc [hl]
    ld d, d
    ld l, b
    ld h, h
    sub h
    ldh [$63], a
    ld a, [hl-]
    ld sp, $a272
    db $e3
    adc l
    add hl, hl
    ld c, e
    and d
    sbc [hl]
    inc b
    sub h
    jr z, jr_00c_5aca

    add h
    reti


    ld h, $86
    adc h
    db $fd
    ld e, c
    ld h, $e0
    ld h, e
    adc c
    ld h, $05
    ld [hl+], a
    inc sp
    xor l
    adc h
    jr z, jr_00c_5b01

    push de
    adc c
    add c
    ld c, b
    adc b
    ld c, h
    dec l
    ld a, c
    ld sp, $de58
    jp nc, Jump_00c_6829

    add h
    ld [hl+], a
    ld [$f0b6], a
    ld d, l
    adc [hl]
    ld [$335e], sp
    adc l
    ld d, h
    dec d
    adc e
    ld c, l
    rla
    pop af
    add a
    ld d, c
    ld e, b
    jp c, Jump_000_28f3

    dec h
    ld d, l
    ld l, d
    ld l, $06
    add d
    ld a, [c]
    and e
    dec [hl]
    and e
    dec e
    jr c, jr_00c_5be9

    ld l, $36
    ld l, b
    ld d, b
    sub d
    rst $18
    jr c, @-$56

    add [hl]
    add hl, hl
    add hl, hl
    and e
    inc h
    ld d, b
    sbc h
    push hl
    adc l
    di
    ld [$2512], sp
    xor $39
    sub e
    ld [$30b9], sp
    ld d, c
    ld [hl], b
    and h
    xor $4c
    and h
    adc b
    ld d, h
    dec l
    ld b, d
    dec sp
    ld d, e
    ld e, c
    inc d
    ld l, h
    adc e
    ld b, l
    add hl, sp
    ld [de], a
    ld d, e
    add c
    ld a, [de]
    ld d, a
    add hl, de
    sbc e
    ld d, e
    ld [hl], l
    dec d
    adc [hl]
    inc h
    pop bc
    rlca
    ld h, c
    xor a
    sub l
    ld d, l
    xor d
    ld b, $8e
    ld h, h
    cp e
    ld d, e
    add hl, de
    ld c, a
    ld [de], a
    ld c, b
    add [hl]
    cp a
    jr nc, jr_00c_5c1f

    ld l, $3b
    ld [hl+], a
    add hl, hl
    ld d, d
    ld d, l
    or a
    sub d
    sub e
    add $aa
    dec b
    ld [$8564], sp
    dec sp
    db $e3

jr_00c_5be9:
    dec h
    add [hl]
    ld a, d
    xor d
    inc a
    ld [hl], l
    and e
    ret nc

    ld d, [hl]
    adc a
    rla
    ld l, [hl]
    sub [hl]
    sbc [hl]
    ld [hl], d
    dec c
    rst $38
    jp c, $980f

    ld a, c
    ld a, [bc]
    ld b, d
    ld c, d
    sbc e
    xor d
    db $10
    ld a, [hl+]
    add h
    dec [hl]
    and [hl]
    or e
    ld c, b
    ld d, l
    ld b, $e9
    and l
    dec bc
    inc de
    ld b, h
    ld b, b
    and [hl]
    or b
    dec l
    ld c, d
    adc h
    and [hl]
    inc l
    ld [hl], a
    call nc, $a32a
    inc c
    and l

jr_00c_5c1f:
    pop af
    ret z

    sbc c
    ret nc

    or c
    inc sp
    add hl, de
    inc hl
    ret


    ld [de], a
    ld c, e
    ld de, $d11a
    call $9314
    ld d, h
    db $10
    and [hl]
    jp hl


    add hl, bc
    ld l, h
    ld a, [hl+]
    sub h
    sub b
    jp nc, Jump_000_0a5c

    ld l, d
    add h
    and h
    ld c, d
    or b
    ld b, b
    xor c
    ld [hl], c
    ld [$0f56], sp
    db $f4
    ld l, a
    ld [bc], a
    or d
    ld d, d
    ret nz

    sbc e
    ld c, d
    rra
    inc c
    ld a, [bc]
    sbc c
    dec l
    inc a
    or a
    ld [hl], h
    inc l
    ld l, l
    add l
    rla
    ld h, h
    ld c, d
    ccf
    ld [$8752], a
    inc b
    or c
    ret nz

    adc h
    sbc b
    jr z, jr_00c_5cdc

    ld h, e
    ld c, b
    ld c, [hl]
    ld d, e
    sub d
    add $38
    ld b, c
    ld a, [hl+]
    ld h, e
    add [hl]
    ld l, e
    ld c, b
    ld c, c
    ld de, $53ae
    dec c
    sub d
    add a
    rst $00
    ld a, [bc]
    ld h, [hl]
    call nz, $ace8
    ld h, l
    add [hl]
    ld sp, $84c6
    ld h, b
    sub a
    ld b, $5c
    ld d, h
    ld a, [bc]
    ld [hl], h
    ld b, l
    ld b, [hl]
    ld [hl], d
    jr z, jr_00c_5ceb

    pop hl
    ld l, h
    sbc h
    adc c
    add l
    ld a, [de]
    add sp, $66
    rra
    ld a, [$a470]
    ld [hl+], a
    pop af
    or h
    ld c, a
    db $fc
    jr z, jr_00c_5cd5

    xor c
    sub d

Jump_00c_5ca8:
    or b
    or d
    pop af
    jp Jump_000_3145


    dec a
    inc b
    rst $28
    push af
    ld c, d
    push de
    db $f4
    ld [hl], d
    ld e, c
    ld c, b
    and [hl]
    dec [hl]
    ld e, a
    ld b, l
    daa
    ld d, [hl]
    and c
    inc hl
    ld b, $19
    inc c
    ld b, e
    ld a, c
    ld c, c
    rst $10
    add hl, hl
    rra
    xor d
    ret nc

    cpl
    ld b, $95
    ld e, $23
    rst $38
    ld e, h
    call nz, $bc42

jr_00c_5cd5:
    ld a, b
    ld c, h
    dec bc
    ret c

    ld d, l
    push hl
    ld d, c

jr_00c_5cdc:
    ldh [rNR41], a
    rst $28
    ld h, c
    ld e, $8d
    add h
    ld a, b
    and b
    ld b, h
    cp c
    push de
    xor b
    pop hl
    ld d, l

jr_00c_5ceb:
    ld d, b
    ld l, b
    db $e3
    ld e, d
    ld l, $38
    cp d
    adc [hl]
    jp hl


    ld a, $7d
    adc [hl]
    add sp, -$10
    ld a, [hl+]
    add hl, hl
    and l
    add hl, sp
    push hl
    dec c
    adc b
    adc $9a
    ld e, c
    ld c, b
    ld c, [hl]
    xor d
    xor c
    sub e
    cp [hl]
    push de
    ld l, b
    ld hl, sp+$59
    call z, $47a1
    ld [de], a
    sub d
    add e
    inc e
    adc l
    jr jr_00c_5d5e

    inc d
    sbc [hl]
    inc c
    ld a, h
    ld a, [bc]
    ld [hl], a
    ld sp, $1edd
    ld a, [de]
    ld b, e
    call nc, $3ca7
    inc d
    sub e
    sbc l
    or b
    ld b, d
    rst $20
    adc [hl]
    sbc l
    ld [hl], b
    rst $00
    jp Jump_00c_6680


    cp d
    sub [hl]
    jp nc, $2d9d

    add hl, sp
    sub l
    cp a
    or l
    ld c, c
    ld d, l
    ld c, c
    xor b
    add l
    dec l
    ld d, l
    rst $38
    xor b
    sub l
    ld d, d
    ldh [rOBP1], a
    ld d, l
    ld a, [de]
    ld l, a
    db $fc
    ld a, [hl+]
    adc e
    or a
    jp c, Jump_00c_7621

    rst $38
    db $fd
    ld c, b
    ld d, b
    ld d, d
    ld l, b
    and l
    ei
    ld b, [hl]
    ld a, [bc]
    ld l, a
    xor d

jr_00c_5d5e:
    add e
    cp $29
    ld b, d
    jp nc, $072d

    and e
    add a
    or h
    add l
    adc e
    or h
    cpl
    ld d, [hl]
    and d
    add sp, $65
    dec l
    add hl, hl
    ld b, d
    adc h
    cpl
    ld d, l
    ld l, b
    add $d4
    ld l, d
    xor c
    ld a, d
    ret


    di
    ld a, [hl+]
    ld [$5229], a
    dec hl
    rst $38
    db $fc
    ld [hl-], a
    sub a
    adc h
    ld d, l
    ld l, b
    and a
    xor b
    dec a
    ld hl, $2bd2
    ld c, b
    ld [hl], e
    cpl
    xor b
    ld h, e
    inc d
    adc e
    ld b, l
    ld d, d
    sub [hl]
    ld b, l
    ld d, h
    ld d, a
    ld [c], a
    cpl
    ld c, b
    or l

jr_00c_5da1:
    adc c
    ld d, b
    sub [hl]
    push de
    rla
    ld [hl+], a
    xor d
    db $fd
    ld d, d
    call nc, $ff9a
    ld [c], a
    ld l, a
    rst $38
    push af
    and c
    add sp, $2a
    cp h
    cp e
    ld d, e
    add [hl]
    xor a
    rst $28
    db $f4
    inc d
    sbc d
    ld [hl-], a
    cp [hl]
    ld d, h
    push bc
    and h
    ld d, $a9
    sub [hl]
    ld d, c
    ld a, b
    ld d, a
    pop de
    ld l, b
    add hl, hl
    ld a, d
    sub l
    dec d
    inc b
    sbc c
    dec d
    ld h, d
    ld d, a
    add sp, $6a
    dec b
    ld d, d
    db $76
    or l
    ld b, l
    add d
    ld c, b
    sbc [hl]
    jp nc, Jump_000_302a

    add c
    cp d
    rst $38
    ld d, e
    ld [$2468], sp
    dec l
    dec b

jr_00c_5de9:
    scf
    cp [hl]
    call nc, $aa9b
    inc d
    adc c
    dec de
    ld a, [hl]
    jr c, jr_00c_5da1

    rst $28
    push de
    add hl, hl
    add hl, hl

Call_00c_5df8:
    sub l
    db $fc
    push hl
    xor a
    ld e, d
    push de
    add hl, hl
    ld a, [hl]
    xor d
    adc [hl]
    xor d
    ld a, [c]
    sub b
    ld a, [$973c]
    and e
    jp z, Jump_000_3956

    scf
    ld d, d
    add d
    ld h, b
    sbc b
    daa
    ld c, d

jr_00c_5e13:
    rra
    ld d, d
    ld e, d

jr_00c_5e16:
    and l
    rst $00
    ld a, [bc]
    ld b, [hl]
    ld h, e
    ld h, $08
    ld h, $19
    jr nc, @+$2c

    inc e
    ld b, h
    ld e, a
    ld b, $31

jr_00c_5e26:
    cp [hl]
    ld c, $46
    ld a, [bc]
    add a
    xor h
    ld d, d
    jr jr_00c_5e8d

    jr c, jr_00c_5e16

    ld h, c
    ld d, c
    ld sp, $3758
    ld a, a
    add sp, $3c
    ld b, [hl]
    sub b
    sub h
    xor b
    ret z

    jr nz, jr_00c_5e26

    ld c, b
    ld c, a
    ret c

    ld [hl], c
    jr nc, jr_00c_5de9

    ld [bc], a
    ld a, [hl-]
    and h
    and c
    ld h, $8c
    or l
    inc h
    or c
    ld a, [hl+]

Jump_00c_5e50:
    ld sp, $5a8b
    sbc h
    inc d
    adc d
    jp nz, $d2a4

    xor d
    call nc, $e64a
    ld l, d
    ld c, l
    ld b, h
    ld d, b
    jp nc, $a990

    sbc d
    ld h, a
    pop de
    ld de, $8c51
    jr z, jr_00c_5e13

    ld a, [de]
    add hl, de
    ld d, h
    sub c
    add hl, hl
    sbc h
    ld [hl-], a
    sbc h
    ld de, $6909
    ld d, h
    xor l
    inc de
    ld c, d
    dec d
    ld c, e

jr_00c_5e7d:
    ld de, $c698
    ld [de], a
    sbc h
    ld d, h
    xor [hl]
    ld l, d
    adc e
    ld b, h
    or a
    ld a, [hl+]
    ld l, [hl]
    cp h
    ld a, [hl-]
    ld h, b

jr_00c_5e8d:
    add h
    rrc e
    ld sp, $fd13
    ld a, [hl+]
    dec bc

Call_00c_5e95:
    ld l, b
    ld h, c
    ld [hl+], a
    sbc b
    ld b, c
    pop de
    ld d, a
    inc hl
    ld [de], a
    adc l
    xor [hl]
    ld a, [bc]
    db $10
    ld c, b
    ld b, a
    inc l
    inc [hl]
    rra
    add sp, $44
    dec h
    ld d, b
    pop de
    add hl, bc
    push bc
    ld h, $37
    ld d, h
    ld e, d
    sub a
    inc e
    sub d
    ld l, l
    ld b, h
    cp c
    reti


    ld c, d
    ld b, d
    cp c
    push hl
    ld d, h
    ld e, d
    ld a, h
    jp c, Jump_000_0073

    ld b, h
    or a
    ld a, a
    xor e
    push af
    ld d, e
    adc [hl]
    rst $38
    rst $38
    rst $38
    adc l
    ld e, a
    ld b, l
    ld b, [hl]
    xor a
    or c
    adc h
    add hl, hl
    ld c, c
    xor [hl]
    dec d
    ld a, [hl]
    dec [hl]
    ld [hl], a
    call nc, $1a54

jr_00c_5ede:
    cp d
    ld b, $4c
    sub $d8
    add l
    ld b, c
    adc c
    ld b, c
    inc b
    jp z, Jump_00c_45db

    ld d, c
    ld l, d
    sbc b
    inc sp
    ld e, e
    ld a, d
    ret c

    ld d, d
    jr jr_00c_5e7d

    pop hl
    ld d, l
    ld d, b
    xor b
    add a
    adc $08
    cp d
    ld hl, $ddf8
    add hl, bc
    ld d, l
    ld e, b
    rra
    add c
    ld c, l

jr_00c_5f06:
    db $e4
    cpl
    and e
    xor [hl]
    ret nc

    or l
    inc b
    and h
    db $e4
    xor a
    ret nc

    rst $18
    and e
    xor d
    and e
    ret


    sbc $ba
    sub c
    dec e
    ld [hl], l
    cp $62
    sub d
    adc d
    ld de, $916b
    jr jr_00c_5ede

    ld a, [hl+]
    dec bc
    ld b, b
    ret nc

    ld a, $c9
    sbc a
    add sp, $2a
    ld [de], a
    ld b, h
    dec de

jr_00c_5f30:
    ld a, [bc]
    ld l, c
    ld a, l
    dec bc
    call Call_00c_6fb5
    ld b, [hl]
    or d
    rrca
    ld a, [de]
    ld c, d
    ld l, a
    rst $18
    ld a, [$c4a2]
    ld h, a
    dec a
    ld [hl], c
    dec c
    dec de
    and d
    xor d
    adc d
    inc l
    rst $20
    dec c
    dec d
    ld a, [bc]
    ld sp, $96d7

Call_00c_5f51:
    and a
    ld b, h
    rla
    rra
    ld [de], a
    ld [hl], a
    cp l
    dec [hl]
    ld c, [hl]
    sub l
    cp $53
    sub c
    pop de
    ld c, [hl]
    ld h, [hl]
    and d
    add hl, hl
    adc [hl]
    ld d, $86
    add hl, sp
    sbc l
    ld [$29bc], sp
    ld d, l
    ld d, d
    db $eb
    sub b
    ld b, [hl]
    jr c, jr_00c_5f06

    add h
    and [hl]
    inc hl

Jump_00c_5f75:
    rst $38
    rra
    add $fa
    ld h, e
    sub l
    ld b, [hl]
    ld b, l
    ld b, a
    cpl
    ld [$8321], a
    xor c
    sub e
    adc l
    ld b, l
    ld d, b
    ld c, b
    ld c, h
    xor c
    ld l, b
    push bc
    ld a, [hl-]
    inc h
    ld [hl+], a
    inc hl
    xor [hl]
    jr c, jr_00c_5feb

    sbc b
    ld [de], a
    inc de
    adc c
    ld c, h
    sub e
    sub [hl]
    inc e
    jr nz, jr_00c_5f30

    ld a, b
    ld h, d
    db $d3
    and d
    ld [$53a9], sp
    dec l
    ld b, c
    dec h
    ld [hl+], a
    scf
    ld d, d
    ld [hl+], a
    ld [hl], d
    dec d
    ld e, a
    rst $38
    ld d, l
    ld e, l
    ld e, d
    jr c, jr_00c_6009

    add hl, de
    ld b, c
    ld hl, sp-$78
    jp nc, $aaff

    sub h
    and h
    pop bc
    jp nz, Jump_000_22af

    ld [hl+], a
    add hl, bc
    sub h
    jp z, Jump_000_2916

    ld b, d
    inc sp
    and d
    sub c
    ld e, c
    ld [hl+], a
    ld b, d
    sbc [hl]
    sub l
    ld hl, $7e62
    ld b, $34

Jump_00c_5fd5:
    jp z, $fe48

    ld a, [hl+]
    ld c, b
    adc c
    xor c
    ld d, l
    ld l, d
    inc b
    call $215a
    ld l, $d5
    ld l, d
    dec b
    ld a, h
    pop hl
    call z, $ac1e

jr_00c_5feb:
    sbc c
    ld b, [hl]
    ld [hl+], a
    ld d, d
    rla
    dec d
    xor b
    push hl
    ld d, d
    xor b
    sbc b
    adc c
    ld d, l
    sbc l
    ld c, b
    ld c, c
    or e
    inc b
    ld d, e
    ld [hl], h
    add hl, hl
    ld a, [bc]
    ret


    rst $38
    call nc, Call_00c_7025
    ld d, [hl]
    or d
    and h

jr_00c_6009:
    ld d, d
    and d
    sbc b
    xor c
    add hl, bc
    ld c, d
    cp l
    ld sp, hl
    ld b, l
    ld h, c
    ld d, l
    ld b, l
    ld b, l
    ld a, [hl+]
    ret nc

    adc h
    ld e, h
    adc b
    xor c
    and [hl]
    ld b, d
    ld [hl], d
    dec d
    ld hl, $4a41
    ld c, b
    ld e, c
    cpl
    ld c, d
    adc e
    sub d
    ld [de], a
    pop de
    adc c
    add l
    ld [$dfc2], sp
    ld d, a
    rlca
    push af
    adc h
    ld h, d
    ld d, d
    and h
    inc hl
    dec d
    inc b
    cp c
    add hl, bc
    sbc b
    sub h
    db $db
    adc h
    ld l, b
    adc a
    jp nz, $3af3

    ld c, h
    ld h, e
    ld l, d
    sub [hl]
    sub l
    dec hl
    rst $00
    call $29ad
    ld sp, $0cff
    jp z, $9191

    ldh [rKEY1], a
    xor a
    ret c

    ld e, d
    xor d
    xor d
    adc l
    xor d
    add hl, bc
    dec hl
    ld a, d
    ld l, d
    ld [hl], l
    ld hl, $a782
    inc [hl]
    add hl, hl
    pop de
    inc b
    add l
    add h
    sbc h
    ld a, [hl+]
    ld [de], a
    ld [hl], e
    or h
    ld b, h
    add hl, de
    ld a, [hl+]
    ld a, [hl+]
    sbc b
    cp b
    ld h, c
    inc c
    ld [hl], d
    ld h, h
    call $8512
    ld d, e
    pop hl
    db $e3
    cp h
    ld d, $84
    ld [hl], c
    dec h
    ld c, c
    adc h
    and $77
    ld b, $16
    sbc h
    ld c, h
    ld c, [hl]
    sbc b
    ld b, h
    ld e, [hl]
    and h
    ld a, a
    inc de
    ld b, b
    sbc h
    ld d, b
    ret nc

    ld l, c
    ld l, c
    add l
    ld d, $b5
    jr nc, jr_00c_6107

    dec c
    sub [hl]
    sbc h
    xor h
    ld h, b
    sbc h
    ld c, b
    ld a, [hl-]
    add l
    ld b, d
    and b
    sbc d
    pop bc
    inc d
    and a
    cpl
    ldh [$e4], a
    and c
    ld [hl-], a
    and [hl]
    ld a, [de]
    db $e4
    xor d
    add d
    ld [hl], b
    ld a, a
    adc d
    ld e, l
    ld b, h
    jp z, Jump_00c_5fd5

    ld a, [hl]
    adc d
    ld l, h
    and h
    ld hl, $1d04
    inc d
    push de
    ld d, l
    ld e, a
    ld [$84fa], a
    ld l, d
    db $f4
    inc de
    ld c, a
    inc c
    ld e, d
    ld h, d
    sbc b
    inc l
    adc d
    ld h, a
    call nz, $af42
    add h
    add hl, bc
    ld [hl], l
    ld c, d
    add d
    sub d
    pop bc
    ld c, $44
    ld h, e
    adc e
    sub d
    jp nc, $b331

    rst $30
    or $31

jr_00c_60ef:
    inc c
    ld h, b
    sub e
    ld a, c
    adc h
    add h
    ld l, e
    ld c, a
    ret nc

    xor h
    rrca
    inc b
    ld e, h
    jr z, jr_00c_60ef

    ld sp, $9c54
    dec [hl]
    ld b, h
    jp $9212


    add l

jr_00c_6107:
    jr jr_00c_6152

    ld [hl], d
    ld l, a
    jp nc, Jump_000_2b6b

    ld de, $3d46
    ld c, d
    ld [hl-], a
    xor d
    cp c
    ld [hl], d
    ld h, e
    ld [de], a
    sbc b
    add hl, hl
    adc d
    sub e
    ccf
    ld c, l
    add $51
    adc d
    ld b, l
    inc h
    xor c
    ld c, [hl]
    db $ed
    and h
    adc $45
    sbc l
    ld a, [hl-]
    rra
    rla
    pop hl
    ld hl, sp+$41
    and h
    call nz, $54c7
    sub h
    add h
    ld [de], a
    add hl, de
    ld c, d
    ld a, [hl+]
    ld b, d
    sbc h

Jump_00c_613c:
    ld l, c
    adc h
    and c
    ld [hl], b
    ld hl, sp+$5a
    ld d, l
    call nz, $a9e8
    rst $10
    ld [de], a
    db $e4
    xor b
    adc $0a
    ret nc

    ret nc

    call nc, $57a7
    push bc

jr_00c_6152:
    ld l, e
    cp e
    pop hl
    sbc d
    jp z, $09c9

    jp $b14a


    db $dd
    add hl, hl
    nop
    ld b, h
    or b
    ld h, h
    add hl, de
    inc sp
    ld d, l
    scf
    adc b
    ld c, c
    ld e, d
    add a
    ld c, h
    jp nc, Jump_00c_7a64

    cp [hl]
    jp nc, $0623

    sbc a
    sbc d
    jp nz, Jump_000_0be9

    dec b
    ld [hl-], a
    ld a, l
    ld e, c
    rla
    add hl, de
    sub c
    ld d, b
    sub e
    ld a, [de]
    cp a
    ld h, b
    sbc d
    ld b, e
    sub d
    inc hl
    ld a, a
    inc b
    inc de
    ld a, [bc]
    sub l
    scf
    cp d
    ld h, $88
    sub d
    inc hl
    and d
    adc b
    adc [hl]
    sbc d
    jr @+$65

    xor c
    ld b, l
    inc b
    inc hl
    and l
    ld b, l
    ld [$64eb], sp
    dec h
    adc $a9
    db $eb
    adc $da
    and e
    push bc
    ret c

    and h
    daa
    ld [hl], l
    ld a, [bc]
    ld e, d
    xor e
    and $90
    ld d, [hl]
    or d
    xor a
    or a

jr_00c_61b6:
    add d
    sbc b
    xor a
    ld d, a
    db $fd
    cp l
    xor $29
    sbc [hl]
    add a
    and d
    add [hl]
    db $fc
    db $10
    ld a, [hl+]
    ret


    adc h
    ld c, h
    db $d3
    dec c
    add sp, -$2b
    dec de
    rst $28
    sub l
    ld c, e
    ret z

Call_00c_61d1:
    ld sp, $c2cd
    call c, $7414
    ld [hl], b
    ld d, h
    ld [hl], l
    ld b, b
    call Call_00c_730a
    jp hl


    dec l
    dec e
    jr c, jr_00c_6204

    or c
    rst $10
    jr nc, jr_00c_6244

    sbc l
    ld [hl], b
    ld a, l
    rra
    ld a, [bc]
    ld [hl], a
    cp d
    ld d, a
    rst $38
    ld d, [hl]
    db $fd
    jr nc, jr_00c_6235

    ld c, [hl]
    rst $00
    add sp, $57
    ld d, h
    add hl, hl
    jr nc, @-$54

    add hl, sp
    sub l
    cp $e9
    ld e, [hl]
    add l
    adc d
    and l

jr_00c_6204:
    db $76
    xor b
    ldh [$5f], a
    db $eb
    ld l, b
    push bc
    xor b
    db $d3
    db $76
    and e
    ld d, a
    jp hl


    ld l, d
    inc [hl]
    add l
    ld e, d
    xor d
    xor h
    jr z, jr_00c_6238

    ld c, h
    sbc $16
    jr c, jr_00c_61b6

    pop bc
    ld c, b
    ld l, [hl]
    db $e3
    scf
    adc b
    adc [hl]
    ld h, $2d
    ld h, c
    sub b
    ld d, [hl]
    inc b
    ret


    ld c, c
    adc [hl]
    ld d, $25
    ld l, b
    push bc
    pop bc
    inc sp
    ld d, d

jr_00c_6235:
    sub e
    add l
    ld e, d

jr_00c_6238:
    adc h
    ld [c], a
    inc h
    inc sp
    add [hl]
    ld d, e
    or c
    jp nz, Jump_00c_4c88

    xor l
    ld c, e

jr_00c_6244:
    ld a, h
    db $dd
    ld c, e
    add sp, $11
    ld d, e
    ld a, c
    ld [$95a2], a
    ld d, e
    dec hl
    adc c
    bit 2, b
    adc l
    ld [$ad5a], a
    ld a, a
    ld d, l
    ld b, [hl]
    ld e, b
    ld hl, $2ad5
    sbc b
    rst $20
    xor e
    rst $38
    xor b
    inc e
    ld l, d
    dec hl
    inc a
    dec [hl]
    ld d, h
    sub l
    inc sp
    ld c, [hl]
    and l
    daa
    rst $38
    rst $38
    pop af
    sub [hl]
    and c
    ld d, a
    jr nc, jr_00c_62c3

    ld d, a
    push af
    xor d
    sub a

jr_00c_627a:
    di
    ld [$8670], sp
    ld c, e
    ld a, b
    inc hl
    ld h, $a2
    and l
    rra
    push bc
    ld c, d
    ld e, a
    ret z

    ld h, d
    sub h
    ld h, e
    jr z, jr_00c_62ae

    ld d, l
    xor d
    adc h
    jr z, jr_00c_62c3

    ld e, d
    ld [hl+], a
    xor a
    ld e, h
    or h
    ret


    ld b, $39
    dec e
    ld d, l
    ld d, d
    xor d
    ld a, [bc]
    inc d
    inc de
    inc h
    and $8c
    ld l, d
    and l
    and b
    ld e, c
    db $e3
    inc [hl]
    pop af

jr_00c_62ac:
    ld l, h
    dec e

jr_00c_62ae:
    ld b, c
    inc [hl]
    sub e
    push bc
    ld d, b
    ld b, c
    scf
    sub e
    jp $af42


    ld d, e
    ld l, d
    ld d, e
    add l
    call Call_00c_5abf
    jr c, jr_00c_62ac

    ld d, h

jr_00c_62c3:
    call $9d36
    jp nz, $a2a3

    xor c
    jr nc, @-$0c

    ret nc

    and d
    jr nz, jr_00c_627a

    dec sp
    ld l, c
    ld c, d
    ld d, c
    cp $2e
    db $ed
    cpl
    ld [hl], l
    xor d
    cp [hl]
    ld b, d
    sbc [hl]
    ld c, d
    ret nc

    and e
    ld d, h
    ret


    adc h
    ld de, $abd2
    ld [de], a
    rst $30
    sub l
    ld d, d
    sub l
    ld d, c
    add $ad
    ld b, d
    xor a
    ld sp, hl
    ld c, e
    rst $38
    db $eb
    and c
    adc l
    dec de
    xor l
    ld [de], a
    cp a
    db $fd
    ld d, b
    ld c, a
    pop de
    ld [hl], l
    ld c, d
    db $fc
    ld l, d
    push bc
    ccf
    db $f4
    ld h, d
    jp z, $8566

    and $cc
    ld d, e
    db $f4
    ld h, [hl]
    call z, $a209
    ld [$8c26], sp
    ld d, l
    ld b, [hl]
    adc h
    inc de
    ld b, [hl]
    ld [hl], l
    ld [bc], a
    sbc d
    ld d, c
    ld l, h
    ld l, c
    sub c
    ld a, [de]
    call nc, Call_000_2635
    add hl, hl
    ld de, $6952
    ld [$bd62], a
    ld b, h
    call nc, Call_00c_5a63
    push hl
    ld hl, sp+$2a
    cp a
    db $fd
    ld d, d
    cp a
    pop hl
    inc de
    add e
    dec de
    ld c, d
    sub b
    rst $18
    push de
    ld e, a
    ld a, b
    ld b, h
    db $e4
    ld h, c
    add h
    ld b, [hl]
    add d
    sbc h
    dec d
    db $10

Call_00c_6349:
    and c
    jp nc, Jump_000_32be

Jump_00c_634d:
    ld c, d
    ld de, $2d09
    ld d, c
    call $ad41
    ld d, [hl]
    ld c, $14
    or b
    ld d, h
    and h
    inc h
    ld b, a
    ld d, d
    and h
    and b
    and h
    add hl, hl
    ld c, d
    ld b, d
    ld [hl], l
    ld hl, sp+$63
    rst $38
    adc h
    ret nc

    pop hl
    ld [hl], b
    inc h
    and e
    dec de
    xor e
    ld c, b
    ld a, [hl+]
    dec d
    ld [bc], a
    jp c, Jump_000_2811

    sbc $5b
    rlca
    sbc c
    or h
    ld e, l
    rst $30
    rst $38
    rst $38
    add h
    dec hl
    xor e
    ld a, b
    ld b, d
    add $d1
    sub e
    ld b, l
    push de
    db $fd
    add l
    push af
    add hl, hl
    dec c
    inc c
    ld l, b
    sbc b
    add hl, sp
    and e
    ld e, d
    pop de
    add l
    ld b, c
    inc l
    ld d, $66
    sbc h
    sub d
    ld [hl], b
    ld d, h
    xor a
    ld a, [de]
    and l
    ld e, [hl]
    sbc d
    ld c, c
    cp l
    ld h, b
    add d
    ld l, l
    dec h
    ld e, a
    xor c
    sub h
    sbc e
    ld [hl+], a
    and a
    inc c
    and h
    rst $10
    ld a, [$eaa5]
    ld l, e
    ld h, b
    and a
    dec d
    ld a, [hl+]
    ld b, l
    ld a, a
    cp $10
    ld d, a
    xor d
    xor a
    pop hl
    cp e
    ld b, a
    dec [hl]
    ld c, d
    and c
    ld d, h
    and l
    ld d, l
    ld d, d
    and c
    jr c, jr_00c_6420

    db $db
    add hl, hl
    ld d, $5a
    pop af
    add l
    ld b, a
    add c
    ld c, d
    xor a
    rst $10
    add $30
    ld b, [hl]
    nop
    ld b, h
    or h
    ld a, a
    push af
    ld d, b
    ld d, b
    ld c, [hl]
    rlca
    add l
    ld e, h
    dec hl
    ld a, [$85d3]
    adc d
    sbc c
    sbc c
    inc [hl]
    ld e, h
    inc [hl]
    ld a, [hl-]
    dec h
    add c
    ld c, l
    ld e, $be
    ld b, $f4
    dec d
    ld a, d
    call z, $235e
    call z, $082d
    ld d, e
    ld a, [de]
    add hl, hl
    ld hl, $f121
    ld l, b
    ld d, h
    call $908a
    cp a
    add hl, bc
    ld [hl+], a
    adc d
    and d
    inc de
    ld a, [de]
    sub h
    ld d, e
    ld b, l
    ld [hl+], a
    ld [hl], h
    cp a
    add d
    daa
    call z, Call_00c_562d
    db $e4

jr_00c_6420:
    or l
    adc $0a
    xor a
    db $fd
    rra
    ld h, e
    and [hl]
    rst $08
    ld b, $52
    ld d, b
    adc $aa
    and b
    xor d
    adc a
    rla
    ld l, [hl]
    add d
    add hl, bc
    sub $84
    dec d
    ld [bc], a
    adc d
    sbc h
    ld [$bb4a], sp
    db $ec
    jr z, jr_00c_6467

    xor e
    rst $30
    ld d, b
    add hl, hl
    ld c, a
    sbc c
    inc [hl]
    ld b, [hl]
    dec [hl]
    ld b, b
    adc e
    add $8a
    ld c, d
    ld h, d
    rst $10
    db $10

Jump_00c_6452:
    sub l
    adc a
    sbc d
    and h
    inc h
    ld l, c
    ld c, b
    pop af
    add hl, hl
    add l
    xor l
    ld [hl+], a

Call_00c_645e:
    sub l
    ld [hl], c
    add h
    sub [hl]
    xor b
    and d
    sub a
    and [hl]
    ld d, d

jr_00c_6467:
    and c
    jp $a6c2


    ld [hl-], a
    xor c
    adc a
    and l
    ret


    or e
    ld d, d
    ccf
    cp d
    ld [hl], h
    ret z

    ld d, h
    ld d, $a7
    ld b, l
    ld a, [hl+]
    jp $f051


    and b
    ld [hl], a
    and c
    ld c, a
    ld e, c
    xor a
    ld c, l
    ld d, $ff
    db $d3
    cp l
    adc b
    cp l
    ld c, c
    ld e, l
    and d
    ld d, b
    ld d, [hl]
    db $fd
    ld c, h
    sub l
    inc sp
    and h
    sbc c
    ld b, c
    xor b
    jp nz, $1054

    xor e
    or h
    and a
    xor d
    inc sp
    sbc c
    ld d, $70
    call z, $aa69
    sub d
    ld h, $ff
    ld [c], a
    inc d
    push de
    ld a, [bc]
    inc c
    ld l, b
    ret


    ld a, [hl+]
    cp c
    add hl, de
    ld c, b
    db $db
    adc l
    ld [$2519], a
    ld c, c
    adc b
    and e
    ld c, b
    sbc b
    ldh [rDMA], a
    ld hl, $e807
    add $89
    ld b, c
    dec h
    inc d
    pop hl
    xor [hl]
    dec d
    inc b
    ret


    ld hl, $9d4a
    ld [hl], d
    ld l, l
    dec [hl]
    and d
    ld h, d
    xor e
    ld hl, $a4da
    add $56
    ld d, [hl]
    dec [hl]
    ld d, c
    add d
    ld h, $58
    ld e, [hl]
    ld h, $19
    ld [hl-], a
    ld b, [hl]
    call c, Call_00c_48e1
    ld d, d
    xor c
    ld l, b
    ld [hl+], a
    db $10

jr_00c_64ee:
    ld c, h
    jr nz, @+$4a

    xor e
    ld d, d
    push de
    ld h, b
    rst $38
    and d
    ld h, b
    adc b
    and b
    ld b, d
    add c
    ld [hl+], a
    ld h, $2a
    ld e, d
    adc c
    ld e, [hl]
    xor b
    pop bc
    inc d
    jp Jump_000_280c


    add h
    inc de
    ld h, h
    xor d
    jp hl


    ld d, h
    xor h
    add h
    sbc d
    ld [$2569], sp
    ld [hl-], a
    ld b, [hl]
    ld h, d
    xor d
    sub d
    ld a, [hl+]
    ld d, h
    sbc c
    ld [hl+], a
    ret nc

    or b
    ld b, d
    jp nc, Jump_00c_5964

    add sp, -$3b
    ld c, h
    sub c
    ld c, b
    and l
    ld e, $81
    ld d, $30
    ld h, [hl]
    adc l
    jp nc, $8511

    ld c, b
    ld [hl], b
    jp Jump_000_3216


    xor b
    ld hl, $588d
    xor d
    ld a, [de]
    ld sp, $4c88
    ld e, [hl]
    ld b, c
    dec b
    adc [hl]
    add hl, sp
    ld h, $a4
    and h
    ld h, e
    rlca
    adc b
    ld hl, sp-$1f
    adc b
    ld d, b
    or b
    sub l
    ld [hl], d
    add sp, -$46
    ld h, $05
    jr c, jr_00c_64ee

    ld hl, $4834
    ld h, d
    ld l, b
    ld d, l
    add [hl]
    db $d3
    add c
    rst $30
    add c
    and b
    ld c, l
    dec d
    ld hl, sp+$1d
    cp d
    ld b, [hl]
    db $d3
    ld b, a
    add [hl]
    ld e, h
    inc a
    ld [hl+], a
    sub h
    xor d
    rla
    ld [$610a], a
    ld c, h
    sbc $26
    ld [hl+], a
    sbc d
    sub l
    add c
    ld c, h
    ld a, b
    add $f6
    ld sp, $1a52
    ld e, b
    sbc c
    ld c, e
    and d
    ld d, $8e
    add l
    ld l, l
    and e

Jump_00c_658d:
    ld a, [hl-]
    ld d, b
    cp $a3
    or [hl]
    and e
    adc [hl]
    and e
    cp [hl]
    ld b, d
    ld a, d
    or $9b
    xor h
    adc d
    sbc [hl]
    inc b
    ld e, $8c
    add hl, bc
    dec hl
    ld d, $c6
    ld [de], a
    ld h, [hl]
    add d
    ld l, b
    sbc $94
    jp nc, $a0a4

    and h
    ld a, l
    ld l, c
    adc h
    inc l
    ld l, b
    rst $38
    add e
    xor l
    rst $38
    adc e
    ld a, a
    sbc b
    call z, Call_00c_4810
    dec a
    dec de
    ld d, e
    rst $38
    rst $38
    cp $10
    ld a, a
    and [hl]
    ld d, b
    jr z, jr_00c_6627

    ld [hl], d
    rst $18
    rst $38
    ld a, [hl]
    sub c
    ld [de], a
    cp $53
    ld hl, sp+$47
    cpl
    add a
    jp $c5ff


    cp a
    add sp, -$41
    pop af
    push bc
    inc c
    ei
    ldh [rIE], a
    ldh a, [$ab]
    ld hl, $c45f
    ld e, [hl]
    ld a, [hl+]
    ld [hl], b
    pop hl
    rst $38
    ei
    ld a, h
    cpl
    pop hl
    rla
    ld l, b
    ld b, c
    ld h, e
    ld h, [hl]
    xor b
    and c
    rst $38
    rst $38
    ldh a, [$2f]
    ld hl, sp+$46
    ld e, d
    jr jr_00c_6650

    call nz, $ffe1
    rst $18
    pop bc
    rst $38
    pop hl
    dec d
    db $10
    add a
    add d
    ld c, h
    ld de, $8492
    ld [de], a
    cpl
    cp $47
    ld hl, sp+$4e
    push bc
    jp $93e0


    ret c

    ld h, $30
    xor d
    cp a
    ld sp, hl
    ld [hl], b
    ld e, e
    push bc
    ld hl, $f987

jr_00c_6624:
    jr c, jr_00c_6624

    ld d, d

jr_00c_6627:
    rst $10
    rst $38
    rst $38
    ld sp, hl
    ld a, b
    ret nz

    sbc b
    ld hl, $0ff9
    add e
    add $3e
    add d
    or l
    ld a, a
    ld [$c94e], a
    ld d, h
    ccf
    adc e
    ldh a, [rDMA]
    ld [hl], l
    pop hl
    rst $38
    rst $38
    rst $38
    pop hl
    ccf
    add [hl]
    ld b, d
    pop bc
    cp $1f
    inc e
    ld a, $df
    rst $38
    ret z

jr_00c_6650:
    ld e, a
    or e
    db $fc
    ld d, e

jr_00c_6654:
    cp $1e
    rrca
    sbc e
    ld d, a
    add a
    rst $38
    sub b
    rst $38
    db $e4
    ld [hl], c
    dec bc
    db $fd
    rlca
    rst $00

jr_00c_6663:
    rra
    ld hl, sp+$7f
    ei
    ld e, a
    ldh a, [rNR50]
    ld a, a
    cp $4c
    ld [hl], e
    ld a, h
    dec c
    rst $38
    cp $f9
    jr z, jr_00c_6654

    add hl, de
    ld b, a
    ld c, e
    rst $38
    rst $38
    call nz, Call_00c_645e
    sub b
    pop hl
    inc e

Jump_00c_6680:
    ld d, b
    cpl
    push af
    rst $38
    push hl
    ret


    sub d
    dec c
    add sp, -$5a
    rst $28
    ret c

    scf
    rst $38
    ld a, [$aa2a]
    and [hl]
    ld [hl], a
    and $68
    cp a
    ld sp, hl
    ld c, l
    rst $38
    add sp, -$29
    ld a, [c]
    ld l, c
    ld a, [de]
    inc hl
    db $fd
    jr jr_00c_6663

    rst $10
    ld sp, hl
    pop hl
    ld d, c
    jp Jump_00c_4703


    res 0, b
    ld b, h
    or a
    ld a, l
    dec d
    ld e, a
    di
    adc c
    inc d
    ld a, $a8
    push de
    push af
    ld a, a
    and b
    add c
    dec l
    ld h, e
    dec d
    ld a, [bc]
    adc b
    ld d, [hl]
    ld a, [de]
    xor d
    inc sp
    ld d, h
    dec d
    xor b
    dec d
    xor d
    xor d
    xor b
    and a
    ld b, $89
    ld l, b
    db $e3
    and b
    and h
    ld e, d
    add hl, sp
    xor l
    jp hl


    adc b
    ld b, e
    ld [hl], h
    ldh [$78], a
    inc h
    sub l
    inc b
    inc l
    cp [hl]
    ld c, h
    and d
    and l
    sub b
    cp b
    xor b
    dec l
    dec h
    ld b, d
    ld h, c
    sbc [hl]

jr_00c_66ea:
    rst $38
    add sp, -$7c
    inc h
    ld [hl+], a
    xor a
    ld a, e
    add c
    add d
    db $fc
    jr jr_00c_6706

    add d
    db $d3
    ld h, $06
    inc b
    dec a
    add l
    ld b, c
    ld h, $31
    ld d, a
    ld a, l
    ret z

    cp a
    ld d, l
    ld d, l

jr_00c_6706:
    ld [hl-], a
    and c
    xor d
    xor d
    ld a, [hl+]
    xor d
    adc a
    rla
    ld [hl], b
    and a
    ld a, d
    add hl, de

jr_00c_6712:
    ld c, l
    ld d, c
    call nz, Call_000_12be
    or c
    jp nz, $5183

    ld [hl], $aa
    xor d
    sbc c
    cp h
    ld a, [bc]
    call nc, Call_00c_75fd
    ld d, h
    ld h, b
    or d
    pop de
    dec c
    ld b, h
    or h
    sbc c
    jr nz, jr_00c_6712

    xor h
    ld h, l
    ld c, l
    dec h
    or h
    sub c
    ld a, [hl+]
    ld l, e
    sbc c
    jr z, jr_00c_66ea

    add hl, bc
    ld c, l
    ld h, l
    ld b, l
    ld sp, $0f72
    adc h
    ld b, [hl]
    add l
    add hl, hl
    ld c, b
    jp nz, $d1c1

    jr nc, @-$01

    ld c, e
    rla
    ld c, [hl]
    ld b, h
    ld b, d
    sub b
    ld [c], a
    pop bc
    ld sp, $2da3
    adc h
    xor b
    xor b
    xor c
    and a
    ld e, a
    cp a
    sub a
    ld d, c
    pop af
    nop
    ld d, l
    cp l
    ld h, l
    ld e, a
    db $fd
    ld d, h
    add sp, $5f
    xor d
    db $f4
    ld l, c
    ld a, [bc]
    ld d, e
    adc c
    add sp, -$3a
    push hl
    adc d
    sub e
    ld h, a
    add c
    ld c, h
    db $ec
    jp z, $e84c

    adc d
    dec c
    ld c, c
    ldh a, [$b3]
    inc [hl]
    add $8c
    ld l, e
    call nc, $339b
    ld c, e
    ld d, e
    ld l, c
    ld a, [hl-]
    db $d3
    cpl
    ld d, d
    xor h
    and l
    ld [hl+], a
    ld sp, $2b8d
    ld c, h
    and c
    ld c, l
    ld h, e
    ld e, d
    ld d, c
    ld d, e
    sub d
    inc [hl]
    and b
    and d
    ld [hl+], a
    sbc b
    ld d, d
    xor b
    add h
    jp z, $188d

    pop de
    ld c, [hl]
    ld hl, sp-$3b
    ld b, c
    inc sp
    call z, $d412
    call $e38c
    ld a, [bc]
    cpl
    dec [hl]
    or h
    ldh [rWX], a
    ld h, e
    add d
    push af
    jr c, jr_00c_6815

    push hl
    xor a
    push de
    ld d, l
    push de

jr_00c_67c2:
    and e
    or d
    xor d
    and e
    adc e
    ld a, e
    ld c, d
    xor c
    ld [c], a
    ld d, l
    rst $38
    ld c, d
    ld a, b
    inc sp

jr_00c_67d0:
    ld b, h
    jp nc, $a071

    xor a
    rst $38
    and b
    sbc b
    ret


    jp $2505


    ret nc

    ld hl, $49e9
    jp nc, $9194

    inc h
    and [hl]
    ld c, c
    or h
    ld sp, $c948
    xor l
    add hl, de
    ld h, b
    sbc b
    inc h
    or [hl]
    add h
    ld h, h
    and [hl]
    ld [hl], b
    ld h, h
    inc h
    and d
    add d
    sbc l
    add hl, sp
    sbc h
    ld de, $9ab2
    ld h, l
    call nz, Call_000_02bf
    ld [hl], e
    ld h, h
    add hl, hl
    ld a, a
    dec c
    ld e, $07
    ld b, b
    adc $73
    rst $38
    call nz, $3024
    ld b, [hl]
    cp h
    ld [hl], b
    and b

Jump_00c_6814:
    or h

jr_00c_6815:
    rrca
    inc e
    ld a, [hl-]
    sub h
    xor l
    ld c, c
    cpl
    inc e
    sub l
    db $fd
    jr jr_00c_67c2

    rst $00
    ld e, l
    ld d, l
    ld d, b
    rst $00
    xor h
    ld b, h
    cp h

Jump_00c_6829:
    push hl
    ld d, l
    ld d, e
    sbc c
    ld a, [$ada9]
    jr c, jr_00c_67d0

    ld sp, $d386
    ld a, d
    inc sp
    and b
    ld b, e
    adc l
    ld l, e
    ld c, l
    cpl
    jp nz, $a13a

    adc a
    ld b, l
    ld c, d
    ld d, e
    sbc d
    and d
    ld hl, $04ad
    xor b
    sub $d1
    or h
    ld d, $89
    ld h, e
    add d
    call nc, $c220
    ld hl, $4a8e
    db $fd
    ld d, [hl]
    adc a
    xor e
    sbc [hl]
    ld [hl], d
    ld e, d
    db $76
    rst $08
    dec e
    ld [$c0e9], a
    sbc d
    rst $18
    and $d0
    ld c, c
    sbc e
    rst $38
    add $f9
    sbc d
    rra
    and $ee
    ld h, h
    pop hl
    db $fc
    ld l, d
    cp $92
    and b

Jump_00c_6878:
    ld hl, sp+$50
    and [hl]
    or a
    or h
    ld c, l
    ld sp, hl
    add hl, hl
    pop bc
    ld a, [hl]
    sub d
    pop af
    rst $08
    ld e, a
    rst $38
    ld [bc], a

Jump_00c_6888:
    ld [hl], h
    ld b, a
    reti


    add b
    ld h, [hl]
    adc d
    sub h
    pop bc
    ld e, a
    ld c, b
    ld [hl], h
    xor $a4
    adc d
    sbc [hl]
    db $e4
    add l
    rla
    ld c, [hl]
    jr c, jr_00c_68f7

    sbc l
    dec b
    add $a7
    ldh [rHDMA5], a
    add hl, sp
    and e
    dec bc
    ld l, [hl]
    ld d, l
    push af
    push af
    rst $30
    push de
    jr c, jr_00c_68c6

    and l
    db $ed
    xor d
    ld [hl], $ab
    call nc, $89d5
    xor d
    ld a, [hl-]
    ld l, e
    push de
    jp nc, $1fd8

    db $f4
    adc a
    ld c, [hl]
    ld a, d
    inc c
    push bc
    and d
    ld l, b
    ccf

jr_00c_68c6:
    add a
    ld c, [hl]

jr_00c_68c8:
    ld d, l
    ld sp, $71a1
    and e
    inc b
    and $d3
    add c
    ld c, h
    inc de
    sub c
    db $e3
    ld d, $17
    ld hl, sp+$15
    inc hl
    adc [hl]

jr_00c_68db:
    ld a, [hl-]
    inc [hl]
    ld h, e
    dec bc
    di
    push bc
    ld h, e
    ld a, [bc]
    inc a
    ld h, h
    ldh a, [$a8]
    jp c, $953b

    ld b, d
    ld c, [hl]
    ld b, l
    ld a, a
    ld [hl], $6e
    xor d
    ld c, h
    db $e4
    and a
    ld a, [$2a38]

jr_00c_68f7:
    add c
    db $e4
    jr z, jr_00c_68db

    ld d, b
    adc d
    ld d, l
    ld [hl-], a
    ld a, [c]
    inc hl
    ld d, h
    set 7, e
    ld [$ff83], a
    db $f4
    inc d
    ld h, l
    sbc [hl]
    ld sp, $918b
    ld d, b
    ld d, l
    ld d, h
    adc [hl]
    ld a, a
    ld e, a
    ld [$4a33], a
    sub d
    sub b
    add sp, $69
    ld b, d
    xor d
    dec d
    sbc b
    push de
    ld e, d
    ld c, b
    and h
    ld [de], a
    sub [hl]
    cp l
    ld d, [hl]
    jp c, $e238

    inc d

jr_00c_692b:
    ld h, d
    ld d, l
    ld a, [hl+]
    xor d
    jr c, jr_00c_6993

    jr jr_00c_68c8

    and d
    db $e3
    sbc d
    ld [hl], b
    xor c
    ld c, c
    db $e3
    or b
    ld sp, $4a3a
    db $76
    inc h
    ld c, h
    ld b, [hl]
    or b
    ld l, b
    cp c
    reti


    ld l, c
    ld [hl], h
    ld a, b
    ld de, $1e75
    ld b, h
    ld [hl], b
    ld a, c
    ldh [rLYC], a
    and h
    ld d, h
    pop de
    ldh [$c5], a
    rst $20
    ld e, d
    xor d
    ld l, l
    ld de, $e798
    dec c
    rst $38
    dec de
    jr nz, jr_00c_692b

    add h
    ld [hl], c
    ld e, h
    ld h, a
    ld de, $1e2b
    ld c, h
    ld h, d
    xor l
    rst $20
    add a
    ld a, [de]
    ld a, c
    pop hl
    and a
    add d
    rst $20
    sbc b
    add l
    ld b, a
    inc hl
    ld sp, $a682
    inc c
    ld a, [hl+]
    xor d
    ld h, a
    ld [de], a
    jp nz, Jump_000_3fc5

    ld a, [$93ab]
    di
    ld a, c
    cp e
    dec h
    cp l
    ld d, a
    rst $38
    ld sp, hl
    jr c, jr_00c_6a08

    ld a, c
    adc d
    ld d, e

jr_00c_6993:
    and l
    dec hl
    ld sp, hl
    adc h
    ld c, a
    xor a
    inc e
    ld e, $11
    rrca
    push af
    or d
    ld d, $c5

jr_00c_69a1:
    xor d
    ld [hl], c
    ld h, c
    inc de
    pop af
    ld a, $c0
    sub h
    cp l
    inc e
    ld l, h
    ld c, a
    push bc
    ld [hl], c
    ld d, l
    ld d, c
    call z, $e694
    ld de, $c7e3
    ld a, b
    ld b, h
    or d
    ld l, c
    ld c, d
    ld a, l
    dec b
    di
    add c
    ld e, l
    ld c, b
    ld b, e
    add sp, -$1f
    adc c
    rst $38
    ld l, c
    jr c, jr_00c_69a1

    add $8e
    add a
    adc h
    add sp, $75
    inc [hl]
    ld d, e
    scf
    db $ed
    ld l, b
    and $78
    sbc d
    di
    daa
    adc b
    ld c, c
    ld d, e
    adc [hl]
    adc b
    ld h, b
    ld b, [hl]
    adc [hl]
    ld a, [hl-]
    ld d, $25
    pop hl
    ld [hl], h
    jp c, $2dda

    rla
    adc d
    or h
    cp b
    push de
    or d
    add sp, $2c
    sbc b
    pop bc
    ld l, d
    ld [$54f4], a
    push bc
    ld hl, $d268
    or a
    push de
    ld a, [hl+]
    and e
    sbc d
    and e
    push bc
    sbc c
    inc [hl]
    add hl, bc
    ld c, h
    ld b, d

jr_00c_6a08:
    ld a, [de]
    ld [hl], c
    and l
    ldh a, [$fe]
    ld [hl], c
    call nc, $13af
    ld b, a
    dec de
    rst $38
    rst $20
    ld [hl+], a
    ld d, l
    rst $38
    ld a, [$a670]
    dec [hl]
    ld [hl], l
    xor c
    jp nc, $ff91

    jp hl


    push de
    ld a, a
    ld sp, hl
    adc h
    ld h, a
    rla
    ld a, a
    and $11
    ld l, a

jr_00c_6a2c:
    sbc d
    ld d, b
    ld h, l

jr_00c_6a2f:
    push bc
    ccf
    add $f9
    ld d, c
    dec bc
    db $fc
    sbc h
    or c
    dec d
    ld h, c
    ld de, $0211
    ld [hl], b
    ld hl, $111c
    add hl, bc
    ldh a, [$e0]
    ld [hl], a
    or a
    ld c, a
    ld b, c
    jr nc, jr_00c_6a2c

    dec d
    ld c, [hl]
    inc b
    and h
    ld d, e
    ld l, h
    ld [hl-], a
    or [hl]
    ld e, b
    dec de
    sub b
    ld e, e
    sub d
    cp a
    inc hl
    ldh a, [$f3]
    ld b, a
    ldh a, [$be]
    ld l, l
    add $88
    add [hl]
    ld [hl], b
    adc d
    sbc l
    add hl, de
    db $fc
    jp nc, $b5e0

    ld e, $85
    ld c, h
    ld hl, $3462
    ccf
    ld d, b
    cp b
    add h
    push de
    ld sp, $6072
    ld c, d
    and l
    ld b, d
    ld a, c
    jp nz, $fe49

    dec [hl]
    bit 6, [hl]
    ld b, c
    ld a, [bc]

jr_00c_6a84:
    ld [hl-], a
    and d
    inc hl
    dec e
    db $e3
    add hl, sp
    ld hl, $a0e2
    ld e, [hl]
    jr nc, @+$57

    ld c, h
    inc de
    add l
    inc b
    ld h, b
    and d
    ld e, h

jr_00c_6a97:
    dec l
    ldh a, [$94]
    ld l, d

Jump_00c_6a9b:
    ld e, h
    sbc d
    ld h, h
    ld e, l
    jr nc, jr_00c_6b16

    ld hl, $c160
    ld [c], a
    jr z, jr_00c_6a2f

    ld h, d
    ld [hl], h
    ld [hl-], a
    ret nc

    add d
    ld c, $31
    and d
    cp h
    jr jr_00c_6a84

    ld hl, sp-$67
    inc c
    ld h, h
    ld d, b
    add e
    jp nc, $c2d8

    jr jr_00c_6a97

    inc b
    xor b
    ld [hl], d
    inc h
    ld h, $08
    add $92
    xor h
    ld [hl], h
    sub $31
    jp nc, $04aa

    push de
    ld [$f3a7], sp
    sbc d
    ld e, d
    ld c, [hl]
    dec h
    ld b, c
    ld [hl+], a
    db $fd
    dec [hl]
    db $f4
    xor l
    ld e, d
    ret


    adc l
    ldh [rOBP0], a
    rst $28
    db $d3
    ld a, $04
    jp $e038


    adc d
    pop de
    rst $38
    inc [hl]
    ld b, l
    jr c, jr_00c_6aff

    sbc $74
    dec h
    rrca
    add $08
    push de
    ld a, [hl-]
    jr z, jr_00c_6b33

    ld [hl+], a
    scf
    adc l
    ld e, l
    add hl, hl
    jr c, jr_00c_6b10

    db $db

jr_00c_6aff:
    add c
    ld h, $37
    db $fc
    ld de, $658d
    adc l
    ld a, h
    adc d
    ld d, d
    sub d
    xor a
    db $fd
    call z, $ced8

jr_00c_6b10:
    ld a, [hl+]
    ld hl, $4526
    inc b
    cp e

jr_00c_6b16:
    cp b
    ret


    add hl, bc
    inc [hl]
    sub h
    add l
    adc h
    ld d, b
    db $d3
    adc [hl]
    cp h
    pop de
    pop hl
    xor b
    db $dd
    scf
    ld l, c
    sub h
    jr jr_00c_6b87

jr_00c_6b2a:
    inc hl
    ld hl, sp-$6c
    adc $d6
    ld b, $aa
    ld a, [bc]
    ld b, [hl]

jr_00c_6b33:
    ld h, $a8
    sbc a
    ret


    sbc l
    rra
    adc l
    ld a, [hl+]
    adc e

jr_00c_6b3c:
    cp a
    ld h, b
    ld [hl], d
    rst $30
    rrca
    adc d
    cp b
    rra
    ld c, [hl]
    or a
    ld a, [c]
    sbc a
    add d
    inc [hl]
    ld a, b

jr_00c_6b4b:
    db $ec
    add d
    ld l, $d8
    xor l
    or d
    sbc l
    jp z, $d56a

    inc h
    jp $9c10


    dec hl
    jr z, @+$32

    jp nc, Jump_00c_4b72

    rrca
    ld d, [hl]
    ld b, d
    xor $90
    sub l
    inc e
    add hl, hl
    jr z, jr_00c_6bd1

    ld h, d
    or l
    dec c
    and c
    or b
    ld [hl], h
    ld h, h
    sub h
    sbc c
    xor e
    inc c
    inc d
    call nz, Call_000_3034
    ld b, c
    ld [bc], a
    ldh a, [$c9]
    inc c
    dec d
    jr nc, jr_00c_6b2a

    ld l, c
    adc $4b
    ld a, [bc]
    inc c
    sub b
    or a

jr_00c_6b87:
    sub e
    ld d, b
    ld d, h
    sub e
    ld de, $c41a
    jr nz, jr_00c_6b3c

    db $10
    ld h, c
    rrca
    call $d5fa
    ld c, h
    sub c
    dec hl
    add hl, de
    add sp, -$50
    ld b, h
    jr nc, jr_00c_6b4b

    or c
    dec e
    dec b
    ld c, b
    ld c, b
    ld a, [hl+]
    ld [hl], b
    and h
    ld b, h
    ld c, e
    inc bc
    ld b, e
    call nc, $8a0a
    rra
    sub c
    ld hl, $526d
    ld h, b
    jp c, Jump_000_3c28

    inc l
    jp hl


    ld d, l
    inc c
    ld [hl-], a
    add hl, hl
    db $10
    ld sp, hl
    ld d, c
    ld [hl], b
    and h
    ld b, h
    and c
    rlca
    sub a
    ld c, b
    call nz, Call_000_2428
    ld c, b
    ld a, [hl-]
    ld b, d
    ld h, e
    ld [bc], a
    ld c, h
    ld b, h

jr_00c_6bd1:
    rrca
    ld [de], a
    add e
    ld d, e
    inc de
    adc d
    ld c, h
    bit 0, [hl]
    ld sp, $3709
    ld e, c
    ld a, a
    cp $98
    ld b, e
    add hl, hl
    ld a, [bc]
    add hl, bc
    xor [hl]
    jr z, @-$51

    and $17
    db $fd
    push hl
    call nz, $eae3
    ld l, d
    and c
    jp z, $653e

    cpl
    inc [hl]
    sub d
    cp a
    ld c, b
    ld a, b
    ld b, [hl]
    sub c
    ld c, c
    ld de, $2e9c
    add [hl]
    sub h
    ld [c], a
    add a
    add h
    ld h, a
    and c
    inc e
    ld [$5386], a
    ld d, b
    ret z

    and [hl]
    dec bc
    ld b, $74
    xor c
    add l
    ld [$82e0], a
    ld d, [hl]
    ld de, $d028
    ld a, [hl-]
    ld [hl], b
    or d
    ld e, e
    or $c1
    sbc b
    ld d, c
    ld e, h
    ld a, [bc]
    rra
    cp c
    cp [hl]
    ld h, c
    cp $34
    ld h, b
    sbc b
    ld a, h
    dec a
    cp $72
    and c
    ld a, h
    ld l, b
    add sp, -$53
    reti


    ld d, d
    rst $20
    ld c, $fe
    ld [hl-], a
    ld h, d
    db $d3
    ld l, [hl]
    and c
    sbc b
    xor c
    ld c, [hl]
    ld [$f525], sp
    sub d
    and b
    xor c
    add h
    dec [hl]
    ld a, [de]
    ld b, h
    xor l
    db $76
    dec bc
    db $dd
    rlca
    xor a
    pop de
    db $10
    ret z

    ld hl, $9a34
    jp z, Jump_00c_4e84

    inc d
    ld a, [hl-]
    ld b, h
    inc sp
    add hl, de
    ld c, c
    ld [hl], c
    rst $08
    ld d, a
    inc c
    ld b, e
    ld b, l

jr_00c_6c67:
    ld sp, $6949
    call nc, $9990
    ld d, c
    adc h
    xor e
    dec e
    sub l
    inc de
    ld c, d
    push bc
    nop
    ld b, h
    cp h
    ld b, [hl]
    sub l
    jp nc, $4e1f

    inc l
    dec de
    or b
    ld b, d
    sbc b
    ld [hl+], a
    ld e, h
    ret


    add hl, bc
    cp [hl]
    add hl, de
    adc b
    ld c, c
    or e
    jr jr_00c_6cef

    ld [hl+], a
    ld h, d
    ld l, d
    ld d, e
    add hl, sp
    inc b
    or l
    push af
    ld c, d
    sub e
    ld [hl], $25
    sbc b
    ld d, a
    ld c, e
    adc h
    db $e4
    ld h, b
    ld c, d
    jp $8c30


    ld a, [c]
    inc a
    ld d, $da
    dec e
    jr c, jr_00c_6ccb

    ld b, l
    sub b
    adc d
    adc [hl]
    ld d, $3a
    jp nc, $d1d2

    sub d
    ld d, e
    ld c, $23
    dec c
    ld a, [hl+]
    ld b, l
    adc b
    ld c, l
    push hl
    sub h
    ld l, h
    add l
    and e
    sbc d
    xor d
    and e
    call z, $aa9c
    ld l, [hl]

jr_00c_6cc8:
    and [hl]
    ld d, d
    ld b, l

jr_00c_6ccb:
    jr nz, jr_00c_6c67

    cp a
    and h
    rst $38
    sub e
    cp $64
    or l
    db $ec
    ld b, l
    pop de
    ld d, h
    ld h, l
    ei
    di
    db $10
    xor d
    dec c
    inc h
    add $17
    ld [hl], $47
    rst $08

jr_00c_6ce4:
    xor $0c
    sbc d
    ld d, e
    add e
    ld a, [hl]
    pop bc
    rst $38
    or b
    ld b, [hl]
    ld c, c

jr_00c_6cef:
    ccf
    rst $38
    ld d, e
    rst $38
    jp $f816


    pop bc
    rst $38
    add e
    rst $28
    rst $38
    add $51
    ld e, a
    rst $30
    ld a, d
    call $bdf1
    ei
    inc b
    ei
    rlca
    pop af
    adc e
    push hl
    dec sp
    inc sp
    rst $28
    ld [hl], $31
    ld [hl], l
    ld b, h
    ld e, d
    inc de
    di
    sub $2c
    ld [hl], b
    ld b, e
    rlca
    ld d, h
    ld [$c547], sp
    nop
    ld [hl], a
    sub l
    inc sp
    ld d, d
    ld d, e
    ret z

    push hl
    jr nc, jr_00c_6cc8

    xor b
    dec e
    inc a
    jr jr_00c_6d5b

    ld a, l
    ld d, a
    xor c
    ld hl, $f054
    sub d
    ld a, [de]
    ld e, a
    ld hl, sp+$17
    dec b
    ld c, [hl]
    push bc
    inc sp
    ld h, c
    sub l
    ld [hl], d
    add hl, hl
    ld a, [hl-]
    sub [hl]

jr_00c_6d41:
    cp h
    xor b
    ld d, c
    ld l, l
    ld [hl+], a
    xor c
    ld [hl], h
    rst $20
    ld [hl], h
    ld d, e
    jr jr_00c_6ce4

    sub d
    ld h, l
    and b
    ld l, a
    ld d, e
    sub [hl]
    jr c, @+$6a

    dec de
    bit 2, c
    xor a
    ld d, e
    add l

jr_00c_6d5b:
    dec b
    inc b
    jp c, $055e

    ld a, [$af30]
    ld d, e
    scf
    ld b, c
    ld l, b

jr_00c_6d67:
    pop bc
    ld hl, $0e81
    dec bc

jr_00c_6d6c:
    rlca
    jr nc, jr_00c_6d41

    dec hl
    call nc, Call_000_32c9
    add [hl]
    ld b, d
    xor b
    add h
    ld [hl], l
    ld c, h
    inc d
    cp d
    db $fd
    ld b, l
    ld [hl+], a
    ld a, [c]
    ld h, d
    ld e, a
    ld d, a
    adc d
    ld d, l
    jr nc, jr_00c_6dff

    ld c, h
    ld a, [hl+]
    xor h
    ld h, d
    sub d
    add hl, de
    ld h, h
    ld a, [hl+]
    xor d
    add c
    ld d, e
    ld a, [hl+]
    cp [hl]
    ld d, e
    dec b
    ld hl, $9b14
    ld l, b
    dec d

jr_00c_6d9a:
    ld d, d
    db $e3
    add d
    xor a
    sub l
    pop hl
    or h
    ld h, l
    xor b
    or l
    add [hl]
    db $e3
    and d
    and h
    ld h, b
    adc [hl]
    dec hl
    ld d, e
    ld e, a
    ld d, l
    ld c, [hl]

jr_00c_6daf:
    dec bc
    adc $2a
    push af
    inc sp
    xor d
    cp a
    push de
    ld b, [hl]
    inc d
    inc sp
    and d
    xor a
    call z, $ff15
    adc c
    and b
    sub c
    ld a, b
    ldh a, [$1f]
    xor b
    sbc d
    xor c
    dec d
    rst $38
    ret z

    ld e, a
    rst $38
    ld d, e
    ld a, [hl-]
    ld a, [hl+]
    adc [hl]
    ld [$d19a], sp
    xor b
    cp b
    inc hl
    ld a, [hl-]
    ld h, $38
    or d
    jr z, jr_00c_6d67

    dec h
    add l
    jr jr_00c_6daf

    db $d3
    adc l
    adc c
    ld d, e
    inc h
    jr z, jr_00c_6d6c

    sub $d4
    push de
    ld h, b
    ld b, l
    inc b
    inc d
    jr z, jr_00c_6d9a

    ld c, b
    ld d, h
    pop bc
    ld d, l
    rst $38
    push de
    ld d, a
    pop af
    ld h, b
    or d
    dec l
    dec de
    ld d, d
    xor d

jr_00c_6dff:
    xor e
    rst $38
    ld a, [$88aa]
    xor d
    rst $30
    add sp, -$57
    add sp, -$56
    push af
    ld d, e
    adc c
    ld d, a
    rst $38
    xor b
    jp nc, $2ad3

    xor a
    db $fd
    ld d, l
    ld d, a
    cp $a8
    ld a, [c]
    ld l, d
    xor d
    adc a
    ld [bc], a
    ld a, e
    ld l, b

jr_00c_6e20:
    jr nc, @+$28

    ld sp, $2730
    add a
    dec [hl]
    xor [hl]
    ld h, c
    inc h
    inc hl
    ld e, $16
    ld b, l
    dec [hl]
    sub $90
    sub c
    dec e
    ret


    ld c, b
    cp c
    ld de, $8e0e
    ld de, $21e3
    sub b
    and c
    ld a, a
    add l
    ld [bc], a
    ld [hl], h

jr_00c_6e42:
    cpl
    and [hl]
    ld e, h
    ld d, h
    inc [hl]
    jr nc, jr_00c_6e8a

    ld h, b
    and a
    cpl
    cp $70
    and c
    jr jr_00c_6e20

    db $e3
    ld [bc], a
    ld l, a
    db $f4
    ld sp, $4eb2
    ld a, [bc]
    rst $08
    pop de
    add h
    sbc d
    ld c, [hl]
    sbc c
    ld [hl], b
    ld [hl+], a
    ret nz

    or c
    ld a, a
    sub l
    dec h
    ldh [$98], a
    ld a, a
    ret nz

    sub d
    sub c
    ld b, [hl]
    adc d
    inc e
    ld e, h
    ld h, c
    db $eb
    sub e
    ld a, c
    add hl, bc
    ld sp, $e40e
    ld [hl+], a
    add e
    ld [bc], a
    add hl, bc
    add h
    ld [$ffbf], sp
    rst $38
    cp [hl]
    sub l
    adc e
    db $f4
    adc l
    dec c
    inc b
    add hl, hl
    or h

jr_00c_6e8a:
    or l
    rst $38
    db $fd
    ld d, c
    jr c, jr_00c_6e42

    ld de, $426c
    ld [hl], c
    rst $38
    xor l
    ld c, a
    sub b
    sub c
    ld d, c
    cp h
    ld [hl], c
    cp a
    rst $38
    rst $28
    ld a, [$6e78]
    ld b, l
    rst $38
    rst $38

jr_00c_6ea5:
    rst $38
    db $e4
    daa
    ld a, [hl-]
    ld l, c
    ld d, [hl]
    xor e
    ld d, l
    pop hl
    db $fc
    ld [hl], a
    ld d, c
    ld c, d
    ld e, e
    ld d, h
    ld a, [bc]
    pop de
    ret c

    sbc b
    add hl, sp
    and l
    ld [$14b5], a
    add [hl]
    xor e
    sbc h
    ld l, a
    dec de
    ld a, a
    ld sp, hl
    jr z, jr_00c_6ea5

    rst $38
    cp $6a
    sub c
    dec de
    rst $38
    rst $38
    xor c
    rla
    rst $38
    rst $18
    ld sp, hl
    xor h
    sbc h
    rrca
    ldh a, [$7c]
    ld d, e
    rst $38
    db $ed
    ld a, h
    ld [hl], b
    ld h, $4b
    push af
    jr nc, jr_00c_6f5b

    ld b, h
    cpl
    rst $38
    ld a, [$9890]
    dec h
    inc h
    ld [hl], l
    ld e, [hl]
    or e
    inc de
    ld d, b
    dec h
    ld [hl], a
    rst $38
    rst $38
    rst $00
    ld b, [hl]
    ld de, $61a4
    rlca
    ld e, a
    ld a, [$3170]
    ld de, $12dd
    push hl
    and h
    ld b, a
    jp z, Jump_00c_4400

    and c
    rst $38
    ld c, e
    ld b, l
    db $d3
    ld d, a
    adc c
    and l
    ld a, l
    rst $30
    ld a, a
    call nc, Call_00c_61d1
    and e
    ld e, d
    jp z, $1152

    ld h, d
    dec d
    ld d, l
    ld d, l
    ld [hl-], a
    or l
    ld a, a
    rst $38
    xor d
    and h
    ld a, [hl+]

jr_00c_6f23:
    db $f4
    add $0a
    adc l
    ld h, d
    and e
    ld [c], a
    db $e4
    sbc $36
    adc b
    sub d
    jp nc, $3455

    adc e
    ld c, b
    ld a, c
    dec d
    dec bc
    sub e
    inc d
    and l
    ld sp, hl
    ld l, c
    ld d, h
    adc d
    call z, $a26a
    ld a, [hl+]
    adc b
    ld d, l
    add hl, sp
    ld l, d
    adc d
    ld d, h
    push hl
    cp b
    ld l, [hl]
    jr @-$0c

    db $e4
    db $eb
    sbc b
    ld [hl+], a
    ret


    or e
    rst $38
    add sp, $2e
    xor b
    dec h
    ld c, c
    adc a
    db $fd

jr_00c_6f5b:
    ei
    rst $38
    or d
    ld l, a
    ld e, a
    or h
    rst $38
    push af
    ld d, $99
    db $dd
    ld e, h
    ld b, h
    ld l, e
    rra
    ld d, $9c
    ret


    sub l
    dec de
    ld sp, hl
    add hl, hl
    adc h
    ld d, d
    ld h, d
    pop af
    inc c
    sbc b
    ld b, l
    ld a, [$3493]
    ld b, l
    ld h, [hl]
    ld [de], a
    ld b, e
    ld b, h
    inc h
    ld [hl], h
    sbc h
    or $93
    ld [bc], a
    sbc h
    xor a
    dec bc
    and c
    ld b, a
    inc a
    ld c, h
    ld a, c
    ldh [$66], a
    and c
    db $fd
    ld c, a
    ccf
    ld a, l
    inc a
    add l
    jr jr_00c_6f23

    inc a

jr_00c_6f9a:
    push hl
    ld b, c
    ld d, l
    ld d, l
    ld c, a
    dec b
    cp $d6
    xor d
    and a
    ld a, [$9593]
    rrca
    add d
    ld l, b
    sbc $a0
    sub e
    adc d
    or [hl]
    ld b, $38
    ld a, [de]
    and d
    sub a
    db $fd

Call_00c_6fb5:
    ld c, h
    jr jr_00c_7010

    db $dd
    and b
    ld h, d
    xor [hl]
    adc c
    jp nz, $a84a

    ldh [$65], a
    and c
    xor b
    ld h, $fa
    and e
    dec [hl]
    adc l
    ld e, c
    and e
    ld a, [bc]
    add c
    ld b, c
    cpl
    ld c, h
    inc hl
    ld b, h
    jr jr_00c_6f9a

    adc h
    ld d, d
    pop hl
    sub d
    inc h
    ld d, d
    and c
    adc h
    ld l, b
    adc $21
    ld h, b
    sub d
    ld [$0a26], a
    cp $21
    pop hl
    and b
    ld d, d
    add sp, -$6b
    ld d, h
    add [hl]
    ld a, [hl+]
    ld a, [hl]
    adc b
    ld l, b
    adc $8c
    add sp, $60
    ld c, d
    ld e, b
    sub l
    and c
    adc b
    and b
    and b
    ld d, c
    ld c, l
    ld d, h
    add l
    adc b
    xor d
    ld d, l
    ld [hl+], a
    ld l, l
    and b
    ld d, c
    ld b, d
    dec [hl]
    ld e, d
    ld d, h
    sub [hl]
    adc c
    sub e
    add hl, bc
    dec b

jr_00c_7010:
    add l
    ld c, h
    push hl
    or l
    ld a, [bc]
    ld [$a5c5], sp
    ld [hl], $4d
    ld e, $ae
    call nc, $0ab6
    ld b, d
    and l
    ld c, h
    ld d, e
    ld a, [hl+]
    ld a, [hl+]

Call_00c_7025:
    jp c, Jump_000_1626

    dec bc

jr_00c_7029:
    call nc, $308b
    sub e
    dec b
    jr nc, jr_00c_7082

    ld h, l
    adc e
    add d
    xor b
    adc $38
    ld [hl], h
    ld d, h
    ret


    dec h
    jr c, jr_00c_7029

    add hl, hl
    ld a, a
    adc d
    and b
    ld d, d
    jr jr_00c_7067

    push bc
    ld [hl-], a
    cp a
    ld hl, sp-$35
    ld a, l
    ld e, d
    ld a, [hl+]
    ld c, c
    ld h, b
    sbc [hl]
    cp e
    ld e, $7c
    cpl
    sbc [hl]
    ld l, e
    ret nc

    and a
    sub b
    ldh a, [rNR42]
    inc c
    ld c, l
    ld a, [$9daa]
    ld a, [bc]
    ld [de], a
    ld l, e
    rst $38
    xor a
    sbc h
    cp a
    add e
    dec de

jr_00c_7067:
    ld a, a
    push af
    ld c, c
    ret


    ld b, b
    ld sp, hl
    xor a
    db $f4
    jp c, $94e0

    cp [hl]
    sbc b
    ld a, b
    ld a, [hl]
    sbc c
    inc a
    sbc c
    push de
    ld a, a
    cp $61
    ld a, a
    cp $a8
    xor a
    inc c

jr_00c_7082:
    ld h, l
    inc b
    ld b, l
    cp $29
    ld a, b
    ld a, a
    rst $38
    rst $38
    adc h
    ld [hl], c
    ld b, [hl]
    add hl, bc
    ld [$ff61], sp
    rst $38
    ld sp, hl
    ld [$4966], sp
    sbc d
    ld de, $1b0e
    ld a, [hl]
    rra
    ld sp, hl
    add hl, hl
    jr z, jr_00c_70d1

    call nz, $9942
    ret nc

    pop bc
    dec bc
    rst $38
    db $eb
    and d
    rst $08
    and d
    adc d
    ld sp, $ffc8
    rst $18
    rst $38
    rst $08
    rst $38
    add a
    add a
    add h
    ld a, [bc]
    ld l, h
    cp a
    ldh a, [rHDMA5]
    ld d, d
    xor l
    cp $1e
    rra
    ld a, a
    sbc e
    db $fd
    dec c
    ld e, a
    ld d, l
    ld e, [hl]
    db $d3
    rst $38
    rst $28
    ld a, [$dc09]
    xor h
    dec c
    ld e, a

jr_00c_70d1:
    rst $38
    pop bc
    daa
    ld a, [bc]
    ld h, l
    ret


    db $10
    ld d, h
    xor l
    add hl, hl
    ld [de], a
    ld [hl], b
    ld e, d
    ld b, d
    cp b
    ld [hl], c
    ld c, b
    cp a
    cp $54
    sbc e
    ei
    rlca
    and $7e
    and c
    ld d, c
    adc [hl]
    ld h, d
    and d
    rst $38
    ccf
    add hl, de
    ld a, a
    ld [c], a
    sbc c
    ld h, [hl]
    ld d, a
    rst $38
    ld a, [de]
    cpl
    db $f4
    ld c, h
    sub [hl]
    rst $00
    sub e
    ld a, [hl+]
    jp nz, $b944

    inc d
    ld e, a
    ld c, [hl]
    ld [hl], a
    xor l
    ld b, [hl]
    call z, Call_000_2195
    ld d, l
    ld c, d
    ld d, d
    inc de
    rra
    xor [hl]
    db $e4
    ld a, [hl+]
    ld d, d
    xor d
    inc sp
    or a
    adc b
    and d
    dec l
    ld h, e
    add d
    adc d
    ld e, l
    inc d
    add [hl]
    sub e
    adc c
    ld b, [hl]
    and c
    ld h, d
    ld h, e
    ld [hl], a
    adc c
    add l
    jr c, jr_00c_7149

    xor $30
    add d
    jr c, jr_00c_7146

    dec bc
    ld d, b
    ld d, d
    db $e3
    add d
    cp a
    ld e, a
    ldh [$62], a
    add hl, hl
    add hl, sp
    ld l, d
    ret z

    ld e, a
    add sp, -$1a
    cp $1f
    di
    and c
    rst $10

jr_00c_7146:
    xor d
    or e
    sbc [hl]

jr_00c_7149:
    and e
    call z, $c2de
    ld b, d
    ld [hl], c
    ld h, $4c
    add $7c
    xor b
    ld [hl], h
    ld d, d
    or l
    ld [hl], $67
    inc bc
    dec c
    ld [bc], a
    ld b, [hl]
    add d
    or h
    ld l, e
    ld [de], a
    and c
    db $f4
    dec d
    ld b, a
    ld [hl+], a
    adc l
    ld a, l
    call z, $ab9b
    call nz, $c6e4
    add sp, -$34
    ld e, [hl]
    dec [hl]
    inc l
    ld l, c
    ld e, d
    and l
    ld b, h
    pop de
    pop bc
    dec b
    ld b, l
    ld b, l
    ret


    db $d3
    ld b, b
    add sp, -$4e
    ld [hl], e
    ldh a, [rSTAT]
    adc [hl]
    ld de, $fccf
    ld a, h
    ld e, b
    ld h, [hl]
    and l
    jr nc, jr_00c_71d6

    ld d, e
    inc b
    or l
    ld c, c
    ld d, e
    ld b, [hl]
    and l
    ld e, b
    adc b
    add hl, hl
    ld c, c
    sub c
    ld h, d
    jr nz, @+$63

    sub e
    inc [hl]
    cp d
    sub h
    xor d
    adc b
    adc d
    ld a, b
    sub a
    ld d, e
    inc h
    reti


    dec h
    ld [hl+], a
    ld sp, $225e

jr_00c_71ae:
    ld [hl-], a
    ld c, b
    ld b, e
    dec l
    and h
    dec l
    ld hl, $9825
    and h
    pop bc
    dec d
    db $e3
    inc h
    ld h, h
    add hl, hl
    ld [$6115], sp
    ld c, c
    sub d
    ld sp, $8d88
    ld e, e
    ld b, [hl]
    ld h, h
    jr nz, @-$79

    ld [c], a
    sub e
    jr z, jr_00c_71ae

    ret z

    ld e, l
    ret z

    ld a, b
    sub l
    adc [hl]
    cp b

jr_00c_71d6:
    adc c
    add hl, bc
    ld b, [hl]
    sub $a3
    inc l
    ld h, e
    sub l
    ld [hl], b
    ld [c], a
    ld d, e
    cp l
    ld a, [c]
    ld d, b
    ld d, a
    add hl, hl
    inc b
    call Call_00c_5a36
    jp nc, $a417

    pop bc
    call z, Call_00c_58f3
    adc d
    ld c, b
    ld b, e
    xor b
    sub a
    db $fc
    adc $34
    ld c, d
    ld b, c
    ld d, a
    add hl, bc
    ld hl, $63e2
    ld [hl], $35
    ld e, b
    ld a, c
    ld e, d
    add l
    adc h
    ld h, d
    ret c

    jp nc, $a9a5

    ld a, [c]
    ld hl, sp-$7b
    dec bc
    add d
    ld hl, $fd8d
    ld l, d
    ld sp, $6085
    add d
    sub c
    adc h
    sub l
    ld c, [hl]

Jump_00c_721d:
    dec h
    rlca
    ld a, [bc]
    ret


    ld b, d
    sub c
    xor d
    xor b
    ld [c], a
    ld b, e
    ld a, [bc]
    dec h
    sbc b
    sub a
    ld sp, $14c5
    push bc
    ld hl, $7e8b
    add c
    or h
    push de
    inc c
    push bc
    and b
    ld b, l
    ld c, b
    ld b, [hl]
    dec h
    ld h, b
    xor b
    adc $08
    ld [de], a
    ld d, $04
    add h
    db $10
    xor [hl]
    cpl
    adc b
    or e
    adc c
    adc c
    adc c
    adc c
    ld c, l
    inc hl
    adc d
    adc [hl]

Call_00c_7251:
    add hl, hl
    ld e, d
    ld d, l
    adc h
    ld h, e
    ld a, d
    and h
    and e
    ld [hl], d
    add h
    rrca
    and h
    cp a
    add sp, $2a
    sbc c
    ld e, a
    ld d, a
    ld [$8d86], a
    xor a
    jp c, Jump_000_17f1

    jp $0866


    ld e, d
    ld d, l
    ld d, a
    sub l
    ld e, b
    sbc $43
    call nz, $a93e
    add l
    and [hl]
    ld a, [bc]
    ld c, d
    ld b, d
    ld c, [hl]
    ld b, a
    inc bc
    db $fc
    ld b, a
    adc d
    jr z, @+$7c

    dec hl
    add $30
    ret


    jr @-$1d

    db $fc
    ld b, d
    pop af
    ld l, b
    ld e, e
    add $49
    db $10
    and h
    ld c, a
    ld hl, sp+$2f
    dec c
    and e
    dec b
    rrca
    sbc d
    or b
    pop hl
    rla
    ld l, a
    call nz, $28bc
    inc hl
    and $e8
    call nz, $1021
    ldh a, [$af]
    jp Jump_00c_470c


    inc e
    ld de, $d210
    ld b, l
    db $f4
    add hl, bc
    ld l, b
    ld b, c
    and $e9
    adc h
    add hl, bc
    ld a, [hl-]
    sub h
    sbc b
    ld a, c
    xor e
    ld a, [bc]
    ld d, d
    ld sp, $845a
    ld e, h
    jr jr_00c_7340

    sbc e
    ld [bc], a
    jr c, jr_00c_72f1

    db $d3
    inc c
    ld e, d
    inc e
    ld h, d
    push bc
    ld sp, $2510
    cp a
    add sp, -$3c
    ret z

    ld a, c
    adc e

jr_00c_72da:
    inc d
    add $28
    cp h
    ld b, l
    jp hl


    add a
    add $38
    xor l

jr_00c_72e4:
    ld de, $128d
    push bc
    ccf
    inc h
    cp h
    ld l, [hl]
    add h
    ld a, [bc]
    ld sp, $2b5c

jr_00c_72f1:
    db $fc
    ld [hl-], a
    rrca
    ld a, [de]
    pop de
    ld sp, $bf9f
    ldh a, [$7a]
    add h
    ld [$ffaa], a
    and a
    ld a, [bc]
    db $f4
    cpl
    adc l

Jump_00c_7304:
    or l
    push af
    ld [hl], l
    ld b, h
    ld a, c
    xor d

Call_00c_730a:
    db $f4
    ld c, e
    db $fd
    adc l
    db $e3
    dec d
    ld [bc], a
    pop bc
    sbc b
    ld a, $2f
    inc d
    db $fd
    inc bc
    add sp, $7a
    ld c, h
    ld b, d
    ld b, a
    sub d
    push af
    ld l, b
    ld e, d
    dec hl
    call nz, Call_000_033f
    ldh a, [rLY]
    ld b, b
    adc d
    jr c, jr_00c_72da

    inc c
    ld d, $f5
    pop af
    ld e, a
    dec bc
    pop af
    sbc d
    ld a, $f0
    ld [hl+], a
    add h
    rla
    inc bc
    ld l, c
    rrca
    db $10
    ld a, [c]
    ld sp, $1ca5

jr_00c_7340:
    ld [hl], a
    push af
    xor l
    sbc b
    add b
    ld b, h
    add l
    ld c, e
    ld d, d
    call nc, $94e1
    ld d, c

jr_00c_734d:
    and h
    jr jr_00c_72e4

    adc $2a
    adc e
    adc c
    ld h, e
    ld e, b

jr_00c_7356:
    and a
    ld [hl], $5a
    ld sp, $8e89
    jr z, jr_00c_734d

    adc h
    and e
    sub a
    ld d, e
    pop bc
    adc $e6
    ld sp, $5c4e
    adc $39
    and h
    or [hl]
    add hl, sp
    sub l
    dec l
    ld d, [hl]
    ld sp, $aa64
    scf
    ld b, c
    sub b
    ld h, d
    add hl, hl
    add hl, sp
    ld [hl+], a
    inc hl
    ld a, [de]
    inc a
    cp d

jr_00c_737e:
    cp $8a
    rrca
    xor b
    jr nz, jr_00c_737e

    ld d, d
    ld d, a
    adc l
    db $eb
    jp $076f


    cp d
    add d
    ld e, a
    sub e
    ld d, b
    jr z, jr_00c_7356

    ld a, l
    ldh [$a9], a
    ld c, a
    sub d
    pop de
    add h
    ld b, a
    rst $30
    sbc b
    ld a, b
    ld sp, $e6c5
    rla
    sbc h
    sbc [hl]
    ld h, b
    ld sp, hl
    ret


    ld a, [hl]
    sub a
    rst $20
    dec sp
    sub e
    rlca
    sbc h
    xor a
    jr jr_00c_740a

    ld [hl], c
    db $db
    jr jr_00c_742d

    call $2f69
    ld a, [bc]
    sub b
    sub d
    sub [hl]
    cp a
    call nz, $fedf
    ld l, $2f
    ld l, d
    ccf
    ld a, [bc]
    ld h, a
    ld l, a
    ld l, a
    dec bc
    ld e, e
    db $e3
    rra
    ld c, $55
    cp a
    inc bc
    ld e, [hl]
    push af
    ld c, c
    cp l
    ld d, d
    call nc, $ffcd
    ld b, c
    ld e, d
    or h
    inc d
    jr z, jr_00c_7407

    xor d
    ld [c], a
    ei
    add sp, $15
    ld b, d
    ldh [rSCX], a
    sbc a
    call z, Call_000_0523
    or l
    cp e
    sub b
    adc c
    add c
    ld d, l
    jr nc, jr_00c_7449

    sbc c
    ld a, [bc]
    ld e, l
    add d

jr_00c_73f5:
    sbc d
    ld h, $95
    ld c, h
    ld [hl+], a
    rst $28
    ld b, d
    adc b
    sub c
    ld c, c
    adc c
    ld b, e
    ld a, [de]
    ld c, h
    sub $2a
    ld h, l
    sub h

jr_00c_7407:
    adc d
    dec b
    sub e

jr_00c_740a:
    and [hl]
    and d
    ld [de], a
    dec l
    and l
    inc d
    db $eb
    add [hl]
    dec de
    ld hl, $4e48
    ld d, $f1
    adc c
    ld b, l
    jr jr_00c_73f5

    ld c, e
    sbc b
    adc b

jr_00c_741f:
    or l
    jr c, jr_00c_7476

    ld [de], a
    sub d
    ld h, d
    ld l, d
    sub e
    add c
    ld e, b
    inc hl
    jr @-$54

    ld e, b

jr_00c_742d:
    push bc
    ld h, h
    add l
    ld h, $49
    ld h, c
    ld c, b
    ld e, d
    adc h
    ld d, h
    ld [de], a
    ld l, d
    xor d
    ld a, [$2516]
    ld d, [hl]
    inc sp
    adc l
    jp hl


    push bc
    dec b
    ld a, d
    ld b, c
    dec l
    adc [hl]
    dec sp
    add c

jr_00c_7449:
    ld [hl+], a
    ei
    adc b
    ld e, b
    xor l
    ld hl, sp+$2a
    xor c
    adc d
    sbc l
    ld a, [hl+]
    ld c, l
    ld c, d
    ld b, d
    dec d
    ld a, [hl+]
    and b
    add $4d
    ld l, l
    ld d, d
    ld a, [$bf18]
    sub a
    ld a, c
    sub l
    ld b, d
    xor b
    and e
    ld b, b
    xor c
    add d
    or h
    ld e, l
    jr z, jr_00c_741f

    inc de
    jr z, @-$33

    ld e, a
    push de
    ld sp, hl
    adc h
    adc l

jr_00c_7476:
    and h
    inc hl
    ld hl, $8205
    inc sp
    dec b
    ld h, $78
    jp $a80d


    ld c, d
    ld sp, $4c3e
    ld h, a
    inc b
    or c
    inc [hl]
    ld b, a
    dec b
    or h
    ld a, [bc]
    ld [hl], c
    ld h, [hl]
    sbc d
    jr jr_00c_74f2

    inc e
    add hl, hl
    adc e
    ld [c], a
    call nz, $8440
    sub b
    add $49
    add e
    call nz, Call_00c_4025
    and c
    inc [hl]
    ld h, [hl]
    jp nc, Jump_00c_6452

    push de
    add hl, hl
    or e
    inc bc
    ld b, [hl]
    ld d, b
    jr nc, jr_00c_7501

    and e
    ld d, l
    ld h, b
    and h
    jp nz, $97bc

    ld sp, $462d
    jr nc, jr_00c_74e1

    or h
    xor a
    and d
    add [hl]
    xor d
    ld h, c
    ld d, c
    add $a8
    inc h
    db $f4
    rra
    rst $28
    ld h, a
    inc l
    and l
    ld [hl], b
    ld a, [hl+]
    db $fc
    ld e, b
    ld b, h
    cp b
    ld a, [de]
    ld c, [hl]
    push bc
    and [hl]
    or l
    ld [hl], $bd
    ld l, d
    jp z, $ed82

    ld d, e
    dec h
    ld e, d
    sbc d
    ld a, [hl+]

jr_00c_74e1:
    add hl, de
    ld [hl], e
    ld b, h
    db $e3
    sbc b
    jp hl


    ld b, l
    xor c
    jr c, jr_00c_754b

    ld c, c
    ld b, c
    ld d, b
    ld h, e
    adc c
    dec bc
    cp l

jr_00c_74f2:
    rst $00
    add d
    inc [hl]
    ld d, d
    ld d, b
    cp $50
    and b
    call $1554
    add c
    ld h, e
    dec b
    dec [hl]

jr_00c_7501:
    ld a, [hl]
    sbc a
    adc h
    jr jr_00c_7579

    adc d
    xor b
    xor l
    ld e, [hl]
    ld d, e
    sub d
    ld e, d
    sbc a
    pop bc
    adc [hl]
    xor a
    reti


    ld c, [hl]
    cp d
    and e
    rst $00
    call c, Call_00c_772a
    inc hl
    jr nz, @-$62

    ld c, b
    and d
    add e
    ld de, $a661
    cp b
    ldh [$cd], a
    jr jr_00c_7571

    add $aa
    add hl, bc
    inc l
    ld h, d
    ret


    or h
    ld l, d
    ret nz

    rst $00
    inc d
    and h
    xor l
    or b
    and a
    ld a, [bc]
    or a
    ld d, e
    ld b, b
    cp h
    ld l, c
    and h
    ld hl, $afaf
    jp nc, $ea6a

    jp z, Jump_00c_5485

    dec bc
    and [hl]
    or a
    ld c, $a5

jr_00c_754b:
    cp a
    add a
    and a
    inc h
    cpl
    db $db
    ld hl, $b41c
    ld de, $df29
    xor l
    rra
    ld a, [bc]
    ld [hl], a
    or d
    ld [hl], h
    push af
    inc d
    or l
    db $e4
    reti


    ld a, a
    ld b, c
    add hl, sp
    xor d
    or b
    ld e, [hl]
    adc b
    adc l
    ld l, e
    ld b, d
    xor b
    call Call_00c_504b
    xor d

jr_00c_7571:
    inc e
    ld e, b
    add h
    ld [c], a
    add d
    adc h
    ld e, $f2

jr_00c_7579:
    ld l, d
    xor b
    xor d
    ld h, $35
    ld a, [hl]
    dec h
    ld c, c

jr_00c_7581:
    ld e, l
    ld d, d
    sub l
    ld d, [hl]
    inc [hl]
    xor b
    ret


    ld c, h
    ld e, d
    cp d
    dec b
    xor b
    add l
    call c, Call_00c_5451
    ld l, b
    ld l, [hl]
    dec b
    dec h
    ld c, d
    ld e, h
    jr z, jr_00c_75fb

    dec d
    and d
    ld [hl], h
    adc b
    ld l, a
    ld b, [hl]
    adc d
    ld [$a832], a
    ld d, h
    add h
    adc h
    and a
    add [hl]
    add hl, bc
    ld c, b
    and l
    dec d
    ld h, d
    add hl, hl
    ld c, d
    and d
    ld d, d
    xor d
    jr jr_00c_7581

    jp z, Jump_00c_5e50

    ld e, a
    dec b
    ld [hl+], a
    ld a, [de]
    ld hl, $0641
    ld d, b
    ld b, d
    dec h
    ld c, b
    and b

jr_00c_75c3:
    and c
    ld a, d
    ld h, $99
    ld d, a
    ld hl, $1441
    add l
    ld h, $e2
    rst $28
    ld [c], a
    ld a, [hl+]
    adc h
    rst $10
    ld b, e
    xor c
    ld b, a
    ld b, e
    ld c, [hl]
    dec h
    ld c, d
    adc l
    ld [$f28a], a
    and b
    ld c, l
    ld e, [hl]
    xor l
    jr c, jr_00c_763f

    ld [$f455], a
    xor d
    db $d3
    dec h
    ld [hl-], a
    ld d, e
    inc [hl]
    inc e
    pop hl
    sub h
    inc hl
    ld b, l
    ld hl, sp-$2b
    ld h, b

jr_00c_75f5:
    sub $29
    adc l
    ld d, e
    ld a, [hl-]
    db $fd

jr_00c_75fb:
    ld a, [de]
    dec h

Call_00c_75fd:
    ld l, b

Jump_00c_75fe:
    ld d, l
    jr nc, jr_00c_764e

    ld a, [de]
    ld [hl-], a
    xor d
    dec h
    ld [c], a
    ld h, d
    and d
    inc h
    push bc
    ld b, $4e
    ld a, [hl+]
    jp nz, Jump_00c_4860

    ld h, b
    ld c, c
    ld c, b
    ld h, e
    dec h
    ld c, d
    ld b, l
    ld d, a
    pop de
    ld a, d
    add [hl]
    ld hl, $9081
    xor b
    ld a, [hl+]
    dec l

Jump_00c_7621:
    ld c, c
    xor a
    ld h, $aa
    add c
    ld [hl], l
    ld d, l

Call_00c_7628:
    ld a, [hl+]
    jr nc, jr_00c_75c3

    and l
    ld l, b
    inc d
    cp c
    ld a, [de]
    ld [$42a5], sp
    or l
    ld d, d
    add hl, sp
    call nc, $8cc1
    dec l
    dec l
    ld a, [bc]
    inc d
    ld h, c
    adc h

jr_00c_763f:
    ld d, d
    ld d, c

jr_00c_7641:
    or c
    and c
    adc l
    inc d
    jp nz, $a048

    ld d, h
    sbc e
    ld [c], a
    push hl
    adc d
    adc [hl]

jr_00c_764e:
    adc d
    sub l
    ld c, h
    sbc l
    sub h
    jp nz, Jump_00c_4b53

    ld [c], a
    xor b
    add $d3
    jr jr_00c_75f5

    dec hl
    ld c, l
    ld l, [hl]
    ld hl, $e53b
    xor b
    ldh [$b7], a
    ld e, [hl]
    dec a
    jr c, jr_00c_76cc

    add e
    ld h, h
    rst $20
    xor d
    add e
    ld [de], a
    add d
    sbc e
    and c
    add hl, hl
    db $d3
    pop bc
    ld h, h
    ld [hl], d
    ld sp, $10b4
    pop bc
    ld a, [de]
    ld h, $09
    add hl, hl
    dec e
    inc e
    or b
    pop bc
    jr jr_00c_7641

    ld e, a
    dec c
    ld [hl], $5b
    and [hl]
    xor [hl]
    ld a, [de]
    ld b, d
    ld d, d
    ld c, $a6
    ld e, d
    xor b
    and b
    db $db
    or c
    sbc e
    inc de
    sub d
    and e
    ld de, $a045
    ldh [$c8], a
    ret nc

    ld e, b
    sbc $42
    ld c, e
    ld d, $c1
    inc c
    inc d
    ld sp, $9784
    add hl, hl
    add d
    db $e3
    ld h, h
    ld b, h
    cp h
    ld a, [hl+]
    ld a, [hl+]
    ld d, h
    ld d, e
    and c
    dec b
    ld [bc], a
    dec [hl]
    db $eb
    cp l
    ld c, c
    ld c, b
    or c
    ld a, [hl+]
    and b
    sub l
    inc de
    ld b, e
    rla
    dec d
    ld e, [hl]
    xor d
    ret z

    ld d, l
    ld d, c
    jr z, jr_00c_7721

    dec [hl]

jr_00c_76cc:
    ld d, c
    ld d, [hl]
    or h
    ld c, e
    ld a, [bc]
    push de
    inc [hl]
    adc d
    rla
    add d
    sub d
    pop bc
    daa
    dec b
    ld b, l
    ld h, e
    add hl, de
    xor b
    ld c, b
    push de
    db $e3
    ld a, c
    call nz, Call_00c_4c98
    ld h, c
    dec d
    inc c
    ld c, [hl]
    ld [$a675], sp
    ret z

    ld e, h
    sbc d
    or c
    dec l
    inc bc
    inc de
    ld c, b
    ld sp, $6612
    jp nz, $f296

    or h
    ld d, d
    ld b, h
    ld b, d
    add a
    ld sp, $6584
    dec b
    or h
    ld c, h
    ld [de], a
    ld h, b
    and d
    ret nz

    ret nc

    ld b, c
    ld b, e
    inc h
    xor c
    sub d
    jp nz, $62a4

    call nz, $d52d
    ld a, [bc]
    and c
    ld de, $2d34
    ld a, [de]
    ld e, h
    ld h, h
    sub l
    ld d, c
    ld l, d
    inc d

jr_00c_7721:
    ld l, $44
    ret


    cp l
    ld h, c
    inc b
    add e
    db $10
    or a

Call_00c_772a:
    xor c
    adc l
    ld c, b
    jp hl


    db $10

jr_00c_772f:
    dec h
    or d
    ld c, [hl]
    dec [hl]
    ld d, $c2
    adc l
    ld a, d
    pop bc
    add hl, hl
    ld [hl], c
    ld de, $4308
    ld c, $56
    xor d
    inc c
    rst $00
    ld h, $61
    dec l
    dec b
    inc l
    ld h, d
    adc [hl]
    add sp, $72
    adc d
    dec bc
    ld c, c
    sbc [hl]
    ld d, h
    ld [$a620], sp
    sub b
    ld h, $52
    dec e
    ld b, a
    ld a, [de]
    ld c, h
    ld a, [bc]
    ld d, d
    ld e, l
    ld [hl], b
    ld sp, $3154
    cp [hl]
    ld l, e
    ld d, h
    add hl, bc
    adc d
    inc [hl]
    sub l
    ld c, c
    xor a
    sub b
    jp Jump_00c_721d


    dec l
    sbc h
    inc l
    add hl, bc
    ldh [rHDMA1], a
    ret


    jr nc, jr_00c_77a8

    ldh a, [$e0]
    ld b, h
    sbc e
    ld c, l
    rra
    jp nc, $d6d2

    db $d3
    ld a, [de]
    ld [hl+], a
    push af
    ld a, b
    jp nz, $d282

    sub h
    jp nz, $4c82

    ld l, l
    dec bc
    rst $18
    ld [hl-], a
    ld h, c
    ld c, h
    xor $78
    ld d, l
    dec h
    adc b
    ld c, l
    sub e
    add hl, de
    jr nc, jr_00c_772f

    sbc l
    dec sp
    db $10
    ld h, e
    sbc [hl]
    adc b
    ld b, d
    dec hl
    ld c, [hl]
    rlca
    add c
    ld h, e

jr_00c_77a8:
    rra
    ld [hl], $79
    ld h, b
    ld d, h
    cp a
    adc c
    adc e
    ld a, [hl]
    sub [hl]
    adc b
    ld d, d
    inc e
    sub l
    ld c, e
    db $76
    adc h
    ld e, c
    cp c
    and [hl]
    ld h, e
    sub [hl]
    ld d, [hl]
    ld h, $63
    ret nz

    adc a
    rla
    ld [hl], c
    ld a, [hl+]
    ld l, a
    sbc e
    ld c, l
    add d
    sub b
    and [hl]
    ld a, [hl+]
    ld h, d
    db $d3
    cp $14
    add $55
    inc hl
    add [hl]
    inc d
    rra
    call nz, $6630
    ld [hl], l
    cp b
    xor b
    ld e, h
    ld b, e
    inc bc
    dec de
    and b
    ld hl, sp-$39
    ld d, d
    ld de, $70ac
    inc h
    xor h
    ld d, d
    ld b, h
    ld l, l
    add $d2
    ld sp, $a1b3
    sbc d
    ld c, c
    and d
    jp z, Jump_00c_6814

    add $08
    dec sp
    ld b, l
    ld h, [hl]
    dec c
    and [hl]
    jr nc, jr_00c_7847

    ld [hl], d

jr_00c_7802:
    ld b, e
    inc c
    ret


    call Call_00c_7251
    ld a, h
    jr z, jr_00c_7871

    cp c
    ld e, l
    inc a
    ld [hl], l
    ld d, l
    db $e3
    sbc l
    ld c, l
    sbc [hl]
    jr nc, jr_00c_7876

    ld d, [hl]
    xor d
    ld d, h
    pop bc
    rst $28
    inc sp
    ld a, [hl]
    ld c, c
    ld b, e
    ld b, $8c
    ld a, [de]
    push af
    dec h
    ld e, l
    inc sp
    add d
    add l
    ld [hl], c
    adc [hl]
    ld a, [bc]
    pop de
    add [hl]
    adc h
    ld l, b
    jr z, jr_00c_7802

    jr nc, jr_00c_787f

    jr z, jr_00c_789d

    db $e3
    ld e, b
    dec h
    adc [hl]
    inc h
    inc hl
    add d
    ld c, [hl]
    ld e, b
    call $c504
    ld d, b
    ld c, [hl]
    ld a, c
    ld l, $39
    sub h

jr_00c_7847:
    ret


    ld c, h
    inc d
    and h
    dec h
    ld l, $86
    inc b
    ld [de], a
    inc hl
    jr @+$2b

    ld l, $4a
    xor a
    dec h
    ld e, d
    dec b
    ld l, $31
    sub d
    add hl, sp
    ld h, $54
    ld [hl-], a
    rst $10
    add c
    db $e3
    inc d
    adc $25
    ld [hl-], a
    call nc, $8688
    ld h, $8d
    pop hl
    ld a, l
    ld sp, $8d42

jr_00c_7871:
    sub d
    ld d, a
    ld [hl-], a
    xor l
    ld a, [bc]

jr_00c_7876:
    dec l
    call nc, $17da
    rst $38
    ld sp, $6475
    ld [hl+], a

jr_00c_787f:
    ld d, e
    sub a
    ei
    pop bc
    dec h
    ld d, b
    and b
    add c
    inc b
    add h
    inc d
    ldh [$79], a
    ld a, [$6191]
    ld d, d
    ld h, b
    ld c, [hl]
    add l
    ld [c], a
    add hl, de
    xor l
    ld hl, $8649
    ld a, [de]
    or h
    sbc $85

jr_00c_789d:
    ld h, b
    adc b
    add e

jr_00c_78a0:
    ld b, l
    ld c, d
    ld b, c
    jp nz, $daf8

    rst $10
    ld h, b
    adc b
    add d
    ld c, $d0
    ld c, b
    adc [hl]
    ld a, d
    and c
    and l
    ldh a, [$81]
    ld h, b
    xor e
    ld c, [hl]
    rst $30
    and d
    ld e, $30
    cp h
    ldh a, [$e8]
    sub $f8
    cp l
    ldh a, [$d1]
    db $e3
    ld c, a
    ld hl, sp-$4f
    ld c, d
    xor d
    ld l, b
    sbc d
    xor h
    or $e3
    jr nc, jr_00c_78a0

    ld c, c
    add hl, bc
    add d
    ld l, e
    ld [bc], a
    add a
    rst $20
    dec h
    ret


    ld de, $2baf
    sub d
    add d
    ld l, b
    sbc b
    ld b, b
    add h
    sbc h
    ld l, a
    dec b
    pop hl
    inc e
    ld a, [hl+]
    ld [hl], b
    ld d, h
    db $10
    dec [hl]
    dec hl
    add hl, de
    ld b, d
    add $09
    sbc d
    ld a, [bc]
    ld c, d
    ld [hl], c
    ld d, c
    ld [hl], h
    ld [hl], c
    ld c, b
    ret


    sub [hl]
    and [hl]
    xor h
    ld h, a
    add l
    ld [bc], a
    ld e, h
    ld h, l
    ld e, h
    and [hl]
    adc [hl]
    ld h, e
    ld c, d
    add hl, hl
    ld d, c
    xor d
    ld [de], a
    add hl, bc
    rst $00
    ld a, [de]
    ld h, $08
    ld e, e
    scf
    xor $e3
    ld h, a
    ld [hl], l
    inc a
    jr jr_00c_7939

    ld a, a
    ld hl, $111d
    ld a, [de]
    ld a, [bc]
    ld d, $45
    inc c
    ld [$cf29], sp
    pop af
    ccf
    ldh [$e9], a
    db $10
    and a
    ld c, d
    ld e, $c0
    and b
    sub c
    inc b
    sub b
    sub d
    sbc h
    ld l, [hl]
    db $10
    and c
    pop de
    add hl, de
    ld d, d

jr_00c_7939:
    ld c, e
    inc e
    sbc h
    ld b, e
    jr nc, jr_00c_79b9

    ld b, [hl]
    ld d, [hl]
    sub l
    inc e
    xor l
    or c
    db $10
    ld a, d
    add hl, sp
    add hl, bc
    reti


    pop de
    inc l
    pop bc
    push de
    call z, $1d43
    db $dd
    ld a, [bc]
    jp Jump_00c_571e


    add hl, de
    ld h, a
    and a
    sbc b
    add b
    ld b, h
    cp l
    dec d
    ld c, [hl]
    or a
    or $3a
    ld e, [hl]
    dec b
    ei
    add hl, sp
    xor b
    ld d, h
    ld e, $2d
    adc l
    xor b
    xor b
    ld a, [hl+]
    sub l
    adc l
    pop de
    ld b, d
    sub e
    and c
    ld e, e
    add c
    inc a
    and l
    and e
    ld c, d
    ld [hl-], a
    ld d, l
    ld [$b2e1], sp
    ld d, l
    adc c
    adc [hl]
    ld c, c
    ld b, d
    ld h, h
    db $10
    ld d, l
    ld c, [hl]
    ld c, d
    inc c
    ld a, $aa
    cp h
    push hl
    ld h, b
    sub e
    xor [hl]
    dec a
    dec e
    ld hl, sp+$5f
    and b
    sbc d
    and [hl]
    db $d3
    ld [hl], l
    add d
    xor d
    ld b, e
    dec de
    ld sp, $c50d
    ld d, h
    ld l, [hl]
    ld a, [c]
    db $76
    push hl
    ldh a, [$aa]
    sbc h
    ld d, [hl]
    ld [de], a
    jr z, jr_00c_79df

    xor h
    ld [hl], c
    ld d, e
    ld h, e
    dec a
    inc c
    ld [hl], d
    or h
    ld [hl-], a
    ld [$a72a], sp

jr_00c_79b9:
    inc h
    inc a
    inc c
    ld d, l
    inc e
    adc c
    ldh [rBGP], a
    and d
    ld [hl], a
    cp [hl]
    add c
    db $e3
    call nc, $f378
    sub l
    ld l, a
    and c
    ld b, c
    ld l, b
    ldh a, [$d7]
    db $ed
    ld b, e
    ldh a, [rSTAT]
    ld hl, $c1d3
    ld a, e
    rst $38
    rst $38
    and c
    sub l
    ld [hl], e
    pop bc
    ld a, b

jr_00c_79df:
    ccf
    cp $89

Call_00c_79e2:
    call z, $8eda
    sbc d
    rla
    sbc b
    cp c
    jr @-$3d

    ld [hl+], a
    ld a, [hl-]
    jr z, @+$20

    ld h, e
    jr jr_00c_7a15

    inc d
    ld e, c
    sub e
    sub l
    ld b, c
    ld b, d
    ld [$81ca], sp
    ld c, h
    ld a, [hl+]
    jr @-$1a

    ld d, b
    ld d, b
    add d
    ld c, l
    db $e4
    sbc [hl]
    ld d, $38
    ret c

    xor b
    inc hl
    adc l
    ld [$b898], sp
    pop de
    ld [c], a
    add hl, hl
    ld [$5612], sp
    xor d

jr_00c_7a15:
    xor c
    ld c, e
    ld h, e
    ld b, $4a
    ld e, a
    add d
    inc b
    sub h
    and [hl]
    dec [hl]
    sub h
    ld d, e
    scf
    rst $38
    add sp, $58
    db $10
    and h
    add h
    jr @-$69

    xor d
    and l
    dec d
    ld c, c
    ld c, h
    dec l
    add hl, hl
    sub h
    ld d, h
    ld d, b
    ld b, d
    ld hl, $39a3
    dec h
    add sp, -$36
    rst $38
    add sp, $28
    adc b
    ld d, h
    add [hl]
    jr c, jr_00c_7a57

    inc h
    sbc $82
    and b
    xor b
    add hl, hl
    add hl, sp
    ld h, [hl]
    rla
    inc hl

Jump_00c_7a4e:
    ld d, e
    rlca
    add c
    ld [$223e], sp
    ld c, [hl]
    ld h, [hl]
    rrca

jr_00c_7a57:
    add hl, hl
    rst $28
    ld d, a
    add c
    add l
    jp nc, $e2d4

    sub b
    and l
    ld c, $26
    cp a

Jump_00c_7a64:
    push af
    add c
    ld a, [hl]
    dec h
    ld hl, sp+$13
    add c
    sbc [hl]
    ld d, b
    ld c, h
    ld d, b
    cp h
    ld a, [de]
    ld a, b
    add a
    ld [c], a
    and l

jr_00c_7a75:
    inc sp
    ld h, c
    and l
    inc b
    jp z, $d7ff

    add l
    ld hl, sp-$3f
    ld e, l
    and h
    sub [hl]
    dec d
    ld [hl], h
    inc de
    ld l, d
    ret c

    rla
    adc d
    ld d, a
    ld [$5b2b], a
    push de
    ld [$7753], sp
    add c
    add sp, $57
    ld a, [$178c]
    adc d
    and b
    sbc c
    jr c, jr_00c_7ab3

    push hl
    cp $8c
    sub a
    add sp, -$33
    ld l, b

jr_00c_7aa3:
    pop hl
    cp [hl]
    push af
    add hl, hl
    ld d, a
    ld a, [$2d38]
    add hl, sp
    ld a, [hl+]
    xor a
    cp $a8
    ldh a, [$37]
    db $e3

jr_00c_7ab3:
    add hl, hl
    add sp, -$56
    ld b, d
    ld c, d
    ld a, b
    jp z, $beff

    jr nc, jr_00c_7ae1

    daa
    adc e
    call nc, Call_00c_7628
    ld [hl], $a1
    ld e, $13
    xor b
    xor [hl]
    dec de
    ld [hl], c
    dec c
    jr jr_00c_7a75

    ld d, d
    inc de
    inc sp
    jr nc, jr_00c_7aa3

    ld hl, $d119
    sub $cc
    pop bc
    inc d
    add d
    ld l, c
    pop bc
    and a
    ld b, d
    dec bc
    adc h

jr_00c_7ae1:
    ld d, h
    sub b
    and $38

jr_00c_7ae5:
    pop de
    jp nc, $a6ab

    ld [hl-], a
    xor d
    sbc b
    inc a
    ld [hl], d
    inc h
    xor d
    and l
    xor d
    xor d
    sub b
    sub l
    ld b, a
    inc l
    ld h, h
    and d
    push de
    ld d, l
    ld d, a
    and l
    ld [hl], c
    ret z

    ret nz

    sub c
    ld d, l
    inc bc
    ld b, d
    sbc c
    reti


    add hl, de
    call nz, $29b4
    adc d
    ld c, d
    sbc e
    daa
    inc de
    ld b, d
    or h
    ld c, l
    ld c, [hl]
    dec l
    ld e, $15
    ld d, h
    ld h, b
    xor b
    ld h, e
    dec e
    add hl, bc
    ret nc

    xor b
    ld b, h
    ld b, h
    cp c
    jp Jump_000_3a67


    xor h
    ld b, e
    ld l, e
    rst $00
    ld a, [hl+]
    ld de, $fcc2
    sub b
    jp nz, $49a6

    ld [hl], b
    and c
    ld b, c
    rst $00
    inc bc
    call z, $0e2c
    db $10
    add hl, hl
    ld c, a
    inc d
    add [hl]
    add l
    ld [bc], a
    ld l, [hl]
    db $d3
    ld b, d
    adc $11
    ld d, a

jr_00c_7b45:
    xor l
    inc d
    push hl
    jr nz, jr_00c_7ae5

    ld a, d
    call nz, $113e
    add d
    add [hl]
    sub $8b
    ret z

    and h
    daa
    dec [hl]
    push bc
    jr z, jr_00c_7bba

    ld b, l
    db $f4
    inc d
    ld e, d
    ld [hl], c
    and b
    call nz, $e121
    ld b, l
    ld a, [hl+]
    pop de
    sub l
    and a
    ld a, [de]
    ld [de], a
    ld e, $11
    add d
    or c
    jp Jump_000_1d47


    ld a, [hl-]
    and l
    ld a, [hl+]
    sbc h
    pop de
    push de
    ld d, l
    ld e, $20
    ld b, h
    or [hl]
    ld d, l
    dec h
    ld a, a
    and e
    ld b, l
    rst $38
    rst $38
    rst $38
    and l
    ld c, l
    ld e, $81
    ld a, [$5fa5]
    call $5e68
    rlca
    cp $a8
    inc hl
    ld e, e
    rlca
    pop bc
    and b
    ld d, a
    cp $a3
    inc [hl]
    inc a
    ld l, $77
    xor b
    ld a, [de]
    ld hl, $b235
    cpl
    sub $8c
    inc h
    db $e3
    adc h
    ld h, d
    ld h, e
    or e
    ld d, e
    inc d
    ret


    xor d
    ld d, d
    jr nz, @-$4f

    jr nc, jr_00c_7b45

    jr c, jr_00c_7be8

    ld a, [bc]
    sub h
    jp c, $c196

jr_00c_7bba:
    ld d, l
    ld a, a
    db $eb
    call nc, $b1d6
    ld [hl], b
    and e
    ld a, [de]
    dec [hl]
    ld h, l
    add d
    adc [hl]
    xor b
    push af
    rst $20
    dec sp
    xor d
    ld [hl], c
    and d
    jp $d305


    sbc c
    or c
    ld sp, $a028
    rst $08
    and $36
    ret z

    inc hl
    adc h
    ld e, a
    cp $61
    db $fc
    ld hl, sp+$32
    inc a
    ld c, a
    rst $38
    sub [hl]
    add a
    cp h

jr_00c_7be8:
    db $f4
    jp hl


jr_00c_7bea:
    ld c, $17
    cp $61
    di
    inc sp
    rst $38
    inc bc
    ld sp, hl
    rra
    and $1e
    jr jr_00c_7bea

    xor a
    rst $38
    db $e4
    ld a, [hl]
    ld h, c
    ld l, l
    adc l
    call nz, $fe5f
    add e

jr_00c_7c03:
    push hl
    db $d3
    ld h, [hl]
    ld d, b
    ld a, a
    jp $9669


    ld d, h
    ld e, d
    sub b
    sub c
    ld a, [de]
    ld b, b
    adc h
    ld c, a
    inc c
    ld b, h
    add hl, bc
    xor h
    ldh a, [$c7]
    ld d, l
    rra
    ld l, $66
    or a
    ld [hl], l
    inc a
    ld a, [$b7d4]
    db $e4
    xor $52

jr_00c_7c26:
    ld l, e
    ld b, l
    or d
    ld h, h
    pop af
    xor [hl]
    ld b, c
    ld a, [hl+]
    ld e, a
    db $fd
    ld [hl-], a
    ld d, l
    ld d, l
    ld b, c
    ld d, d
    jr jr_00c_7c49

    sub b
    ld e, d
    and e
    ld a, b
    inc de
    ld a, [de]
    ld l, e
    db $fd
    ld d, a
    rst $38
    ld b, c
    cp $35
    ld a, a
    sub h
    sub h
    ld l, a
    xor a

jr_00c_7c49:
    rst $38
    ld b, a
    ld hl, sp+$54
    ld l, b
    jp z, Jump_00c_7dfd

    add e
    ld a, h
    jr jr_00c_7cc7

    dec l
    cp l
    ld [$da58], sp
    or [hl]
    add d
    xor d
    adc c
    and e
    ld a, [de]
    and b
    adc l
    ld d, a
    jp hl


    ld a, l
    ld [hl-], a
    and d
    sub d
    jp nc, $a764

    and d
    ld a, [hl+]
    jr nc, jr_00c_7c03

    ld [c], a
    and l
    add hl, de
    jr jr_00c_7c88

    sub [hl]
    sub l
    dec b
    ld e, [hl]
    db $d3
    inc [hl]
    or l
    ld h, $09
    ld a, [de]
    ld d, b
    and h
    sbc e
    ld h, h
    call Call_000_069e
    adc h
    jp hl


    ld b, [hl]

jr_00c_7c88:
    sub [hl]
    ld h, h
    ld l, l
    or l
    ld d, l
    ld h, a
    add l
    add hl, de
    dec h
    adc h
    dec l
    ld [hl+], a
    add c
    ld h, $ff
    rst $38
    ld hl, sp-$6c
    ld d, b
    ld b, c
    adc h
    sub h
    dec h
    jr jr_00c_7c26

    inc [hl]
    ld d, l
    add hl, de
    ld hl, $944c
    sub h
    ld d, l
    add c
    sub l
    dec h
    and b
    ld d, [hl]
    ld d, h
    inc hl
    ld b, l
    ld hl, $608b
    sub h
    pop bc
    adc b
    and l
    ld h, c
    ld d, d
    call nc, $c258
    dec l
    add [hl]
    add hl, de
    ld d, e
    adc l
    ld h, d
    call nc, Call_000_0ac5
    dec d

jr_00c_7cc7:
    ld [hl+], a
    and l
    ld c, l
    ld a, [hl+]
    xor d
    xor b
    ld l, b
    sub [hl]
    dec d
    ld [$1b63], sp
    ld hl, sp-$18
    add c
    ld h, c
    or h
    ld h, d
    ld a, [hl+]
    and e
    and d
    add d
    ld h, e
    dec bc
    ld b, c
    ld [$b8ee], sp
    jp nc, $dbf8

    ld l, [hl]
    sbc [hl]
    add h
    inc e
    sbc c
    xor c
    sbc $95
    ld c, c
    ld c, h
    ld [hl-], a
    db $76
    and h
    ld b, h
    call nz, Call_00c_5931
    add d
    ld [hl], h
    and b
    xor c
    inc l
    or h
    ld e, e
    ld a, [de]
    ld [hl], l
    ld d, l
    ld b, e
    and e
    xor a
    ld a, [$4ef4]
    and [hl]
    cp $99
    ld e, b
    ld [hl], $93
    call nc, Call_000_0a4a
    ld sp, $e8a5
    inc l
    add hl, de
    ld [$554c], sp
    xor b
    pop hl
    inc e
    ld [hl], a
    dec d
    sub $11
    ld a, [hl+]
    ld c, l
    add sp, $44
    daa
    ld e, $6b
    inc c
    ld h, c
    inc c
    sbc e
    xor b
    ld a, [hl+]
    and h
    ld [hl+], a
    sub c
    inc l
    ld a, [bc]
    sbc c
    ld a, [$d057]
    sbc $0a
    jr z, jr_00c_7db6

    xor d
    xor a
    dec b
    adc d
    dec d
    ld a, c
    ld de, $ea3f
    ld c, h
    ld [$a36d], sp
    ld d, l
    ld b, h
    ld a, $2d
    adc [hl]
    cp c
    ld [hl], l
    cp $a1
    ld h, e
    ld l, l
    ld l, d
    xor b
    scf
    ld [c], a
    add h
    ld [$67dc], sp
    ld a, a
    jp hl


    ld [hl], $3f
    cp $3e
    ld [de], a
    sub d
    sbc e
    and c
    ld e, h
    dec l
    db $ed
    ld d, h
    ld c, [hl]
    ret c

    or [hl]
    adc d
    ld l, d
    sub h
    add [hl]
    call $abe5
    call nc, $9c84
    add hl, bc
    add d
    inc c
    push de
    rla
    ld b, e
    ld d, a
    ld a, [$8b29]
    ld [de], a
    xor a
    adc h
    ld d, h
    ld b, d
    ld d, $bc
    and h
    ret


    sub d
    xor l
    ld a, a
    ld c, c
    jr nc, @-$53

    inc bc
    ld a, a
    ei
    ld a, [$c8b1]
    jp nz, $cc83

    add hl, de
    dec d
    ld a, d
    db $fd
    ld b, a
    ld [hl-], a
    ld [$135f], sp
    dec h
    ld d, h
    ld [hl], l
    jp Jump_00c_613c


    inc hl
    ld e, $04
    ld de, $1ba5
    add b
    ld b, h
    cp b
    sbc a
    xor d
    ld d, l
    add hl, sp
    xor l
    xor d
    ld d, e
    xor d

jr_00c_7db6:
    jp nc, $e968

    ld a, l
    ld a, [hl-]
    ld d, a
    add sp, $2d
    add hl, sp
    ld e, [hl]
    adc e
    ld d, e
    sub [hl]
    call nc, $3aa5
    dec hl
    push de
    ld c, [hl]
    db $db
    ld c, [hl]
    push hl
    add hl, hl
    ld a, [hl-]
    inc d
    sub [hl]
    ld a, [hl-]
    inc d
    add [hl]
    ld a, [hl-]
    ld d, h
    ld e, b
    db $ec
    ld e, b
    dec d
    xor b
    and $aa
    adc a
    cpl
    ld [hl], c
    jp z, $d7a9

    ld c, c
    dec d
    ld b, a
    ld d, h
    sbc l
    ret z

    ret


    ret nc

    add [hl]
    ld de, $7232
    cp d
    xor d
    xor b
    daa
    inc l
    add hl, bc
    ld [hl], d
    ld [hl], e
    ret nz

    ret nz

    add h
    sbc l
    sub e
    daa
    ld l, e

Jump_00c_7dfd:
    daa
    ld l, e
    daa
    ld l, e
    daa
    ld l, e
    push bc
    ld a, [hl+]
    ld [hl], e
    ld c, d
    or l
    rra
    db $10
    ld b, h
    cp c
    rla
    and l
    add hl, sp
    sbc $18
    sbc b
    call $0553
    ldh a, [$8b]
    adc h
    jr @-$74

    and l
    daa
    ld h, e
    ld h, h
    jp nc, $cd23

    sub h
    jp c, $350e

    ld d, b
    ret nc

    ld c, h
    db $e3
    adc d
    db $fc
    jp nz, $5621

    rla
    ld c, c
    ld d, d
    inc l
    db $10
    db $fd
    rla
    rla
    db $eb
    bit 2, h
    add h
    ld a, [hl]
    dec b
    dec b
    ld [c], a
    xor b
    cp d
    ld hl, sp+$15
    cp [hl]
    ld [hl+], a
    call nc, $d194
    ld d, e
    dec [hl]
    xor a
    jp nz, $8d34

    db $ed
    and e
    and [hl]
    push af
    db $d3
    or [hl]
    and e
    ret z

    sbc $8b
    jr nc, jr_00c_7eae

    ld b, a
    inc sp
    adc h
    ld de, $9331
    ld d, h
    sub b
    add h
    ld b, h
    sbc e
    and h
    call nz, $84d9
    xor c

jr_00c_7e69:
    adc d
    ld d, d
    ld e, l
    inc bc
    push af
    ld d, l
    sub h
    sbc d
    xor e
    inc h
    cpl
    pop af
    or h
    ld b, d
    dec bc
    rst $38
    ret nz

    db $fc
    ld c, [hl]
    sub [hl]
    and c
    ld hl, sp+$23
    ld c, a
    sub $62
    and h
    jr nz, jr_00c_7e69

    jr c, jr_00c_7eec

jr_00c_7e88:
    ld c, c
    ld de, $4593
    ld h, [hl]
    ld [hl], b
    and a
    ld e, a
    dec b
    dec e
    ld c, b
    reti


    reti


    ld a, [bc]
    add hl, de
    db $dd
    ld e, $50
    ld b, h
    cp c
    push de
    xor b
    add sp, $68
    db $e3
    ld e, l
    ld d, d
    jr jr_00c_7e88

    ld a, a
    push af
    ldh a, [$8e]
    daa
    and b
    db $ed
    push af
    add c

jr_00c_7eae:
    inc b
    jp c, $e88a

    ld a, [hl]

jr_00c_7eb3:
    ld e, $cd
    jr z, jr_00c_7f0b

    add l
    ld a, [$6a0a]
    sub h
    push de
    ld b, a
    call nc, $8c3a
    jr nz, @-$75

    and d
    ld l, [hl]
    db $fd
    add d
    and e
    ld a, [de]
    ld a, [hl+]
    call nc, $a58f
    ld a, [hl]
    jp nc, $a317

    ld a, [bc]
    db $fd
    ld sp, hl
    and d
    ld l, [hl]
    cp b
    jr z, jr_00c_7eb3

    ld [c], a
    rst $18
    sub h
    ld d, h
    and $f8
    sub [hl]
    adc [hl]
    add a
    push af
    db $d3
    xor d
    ld a, [de]
    adc a
    inc hl
    ld [hl], l
    ld a, [hl+]
    ld [hl], h
    xor l

jr_00c_7eec:
    ld b, a
    ld [de], a
    ld h, b
    rst $00
    ld a, [de]
    ret nc

    ld d, [hl]
    ld b, h
    ld [hl], c
    ld hl, $2318
    inc e
    ld d, b
    ld h, $3f
    ld b, d
    xor d
    ld a, [hl-]
    ld h, b
    adc d
    ld h, c
    ld b, c
    ld d, [hl]
    rst $30
    and b
    sub d
    adc d
    ld a, [bc]
    ld a, [hl+]
    xor b

jr_00c_7f0b:
    call nz, $845e
    ld e, h
    adc l
    ld l, h
    inc d
    add d
    call nz, $31fe
    db $76
    sub e
    ld d, l
    ld c, b
    dec h
    ld e, e
    add $30
    ld h, e
    ccf
    add h
    ld l, c
    dec e
    ld a, [hl]
    ld [hl-], a
    ld a, e
    adc b
    ld h, a
    ld [hl], h
    ld a, c
    ld b, b
    ld hl, $d063
    ldh a, [$f3]
    and a
    jr z, jr_00c_7f36

    ld hl, $d068

jr_00c_7f36:
    bit 1, [hl]
    jr nz, jr_00c_7f4a

    set 1, [hl]
    ld hl, $7ba8
    ld b, $0f
    call Call_000_35d6
    ld hl, $7f52
    jp Jump_000_3c49


jr_00c_7f4a:
    ld hl, $7b53
    ld b, $0f
    jp Jump_000_35d6


    rla
    cp a
    ld c, d
    dec h
    ld d, b
    ld hl, $d0d7
    xor a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$d05e], a
    ld hl, $d02a
    ld de, $cffb
    ldh a, [$f3]
    and a
    jr z, jr_00c_7f72

    ld hl, $cffb
    ld de, $d02a

jr_00c_7f72:
    ld a, [de]
    dec de
    ld b, a
    ld a, [hl-]
    sub b
    ld a, [de]
    ld b, a
    ld a, [hl]
    sbc b
    jr c, jr_00c_7f8a

    ld hl, $d0d7
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$d05e], a
    ret


jr_00c_7f8a:
    ld a, $01
    ld [$d05f], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
