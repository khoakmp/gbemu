; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    call Call_000_3de5
    call Call_000_190f
    call Call_000_2429
    ld a, [$cc36]
    push af
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld [$cc2a], a
    inc a
    ld [$d11e], a
    ldh [$b7], a

Jump_010_401d:
    ld b, $08
    call Call_000_3def
    ld hl, $7840
    ld b, $05
    call Call_000_35d6

jr_010_402a:
    ld hl, $cc24
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    inc a
    ld [$cc37], a
    inc hl
    inc hl
    ld a, $06
    ld [hl+], a
    ld [hl], $33
    call Call_010_4111
    jr c, jr_010_4061

jr_010_4042:
    xor a
    ld [$cc37], a
    ld [$cc26], a
    ld [$cc2a], a
    ldh [$b7], a
    ld [$cd3a], a
    ld [$cd3b], a
    pop af
    ld [$cc36], a
    call Call_000_3dd4
    call Call_000_3ded
    jp Jump_000_3071


jr_010_4061:
    call Call_010_406d
    dec b
    jr z, jr_010_4042

    dec b
    jr z, jr_010_402a

    jp Jump_010_401d


Call_010_406d:
    call Call_000_3bec
    ld a, [$cc26]
    push af
    ld b, a
    ld a, [$cc2a]
    push af
    ld a, [$cc36]
    push af
    add b
    inc a
    ld [$d11e], a
    ld a, [$d11e]
    push af
    ld a, [$cd3d]
    push af
    ld hl, $d30a
    call Call_010_42c2
    ld b, $02
    jr z, jr_010_40c3

    call Call_010_4ff9
    ld hl, $cc24
    ld a, $0a
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $03
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [$cc37], a

jr_010_40ac:
    call Call_000_3abe
    bit 1, a
    ld b, $02
    jr nz, jr_010_40e6

    ld a, [$cc26]
    and a
    jr z, jr_010_40f6

    dec a
    jr z, jr_010_40fd

    dec a
    jr z, jr_010_4108

    ld b, $01

jr_010_40c3:
    pop af
    ld [$cd3d], a
    pop af
    ld [$d11e], a
    pop af
    ld [$cc36], a
    pop af
    ld [$cc2a], a
    pop af
    ld [$cc26], a
    push bc
    ld hl, $c3dc
    ld de, $0014
    ld bc, $7f0d
    call Call_010_4474
    pop bc
    ret


jr_010_40e6:
    push bc
    ld hl, $c477
    ld de, $0014
    ld bc, $7f07
    call Call_010_4474
    pop bc
    jr jr_010_40c3

jr_010_40f6:
    call Call_010_42e2
    ld b, $00
    jr jr_010_40c3

jr_010_40fd:
    ld a, [$d11e]
    call Call_000_13d9
    call Call_000_23b1
    jr jr_010_40ac

jr_010_4108:
    ld a, $4a
    call Call_000_3e6d
    ld b, $00
    jr jr_010_40c3

Call_010_4111:
    xor a
    ldh [$ba], a
    ld hl, $c44f
    ld a, $7a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $c3ae
    ld [hl], $71
    ld hl, $c3c2
    call Call_010_428e
    ld hl, $c462
    call Call_010_428e
    ld hl, $d30a
    ld b, $13
    call Call_000_2b7f
    ld de, $d11e
    ld hl, $c3ec
    ld bc, $0103
    call Call_000_3c5f
    ld hl, $d2f7
    ld b, $13
    call Call_000_2b7f
    ld de, $d11e
    ld hl, $c428
    ld bc, $0103
    call Call_000_3c5f
    ld hl, $c3d8
    ld de, $429d
    call Call_000_1955
    ld hl, $c414
    ld de, $42a2
    call Call_000_1955
    ld hl, $c3b5
    ld de, $42a6
    call Call_000_1955
    ld hl, $c478
    ld de, $42af
    call Call_000_1955
    ld hl, $d31c
    ld b, $99

jr_010_4180:
    ld a, [hl-]
    ld c, $08

jr_010_4183:
    dec b
    sla a
    jr c, jr_010_418d

    dec c
    jr nz, jr_010_4183

    jr jr_010_4180

jr_010_418d:
    ld a, b
    ld [$cd3d], a

Jump_010_4191:
    xor a
    ldh [$ba], a
    ld hl, $c3cc
    ld bc, $0e0a
    call Call_000_18c4
    ld hl, $c3dd
    ld a, [$cc36]
    ld [$d11e], a
    ld d, $07
    ld a, [$cd3d]
    cp $07
    jr nc, jr_010_41b4

    ld d, a
    dec a
    ld [$cc28], a

jr_010_41b4:
    ld a, [$d11e]
    inc a
    ld [$d11e], a
    push af
    push de
    push hl
    ld de, $ffec
    add hl, de
    ld de, $d11e
    ld bc, $8103
    call Call_000_3c5f
    ld de, $0014
    add hl, de
    dec hl
    push hl
    ld hl, $d2f7
    call Call_010_42c2
    pop hl
    ld a, $7f
    jr z, jr_010_41de

    ld a, $72

jr_010_41de:
    ld [hl], a
    push hl
    ld hl, $d30a
    call Call_010_42c2
    jr nz, jr_010_41f8

    ld de, $41ed
    jr jr_010_41fe

    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b

jr_010_41f8:
    call Call_010_4ff9
    call Call_000_2f9e

jr_010_41fe:
    pop hl
    inc hl
    call Call_000_1955
    pop hl
    ld bc, $0028
    add hl, bc
    pop de
    pop af
    ld [$d11e], a
    dec d
    jr nz, jr_010_41b4

    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    call Call_000_3ddc
    call Call_000_3abe
    bit 1, a
    jp nz, Jump_010_428c

    bit 6, a
    jr z, jr_010_4234

    ld a, [$cc36]
    and a
    jp z, Jump_010_4191

    dec a
    ld [$cc36], a
    jp Jump_010_4191


jr_010_4234:
    bit 7, a
    jr z, jr_010_4251

    ld a, [$cd3d]
    cp $07
    jp c, Jump_010_4191

    sub $07
    ld b, a
    ld a, [$cc36]
    cp b
    jp z, Jump_010_4191

    inc a
    ld [$cc36], a
    jp Jump_010_4191


jr_010_4251:
    bit 4, a
    jr z, jr_010_4274

    ld a, [$cd3d]
    cp $07
    jp c, Jump_010_4191

    sub $06
    ld b, a
    ld a, [$cc36]
    add $07
    ld [$cc36], a
    cp b
    jp c, Jump_010_4191

    dec b
    ld a, b
    ld [$cc36], a
    jp Jump_010_4191


jr_010_4274:
    bit 5, a
    jr z, jr_010_428a

    ld a, [$cc36]
    sub $07
    ld [$cc36], a
    jp nc, Jump_010_4191

    xor a
    ld [$cc36], a
    jp Jump_010_4191


jr_010_428a:
    scf
    ret


Jump_010_428c:
    and a
    ret


Call_010_428e:
    ld c, $09
    ld de, $0014
    ld a, $71

jr_010_4295:
    ld [hl], a
    add hl, de
    xor $01
    dec c
    jr nz, jr_010_4295

    ret


    sub d
    add h
    add h
    adc l
    ld d, b
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    add d
    adc [hl]
    adc l
    sub e
    add h
    adc l
    sub e
    sub d
    ld d, b
    add e
    add b
    sub e
    add b
    ld c, [hl]
    add d
    sub c
    sbc b
    ld c, [hl]
    add b
    sub c

Jump_010_42ba:
    add h
    add b
    ld c, [hl]
    sub b
    sub h
    adc b
    sub e
    ld d, b

Call_010_42c2:
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    ret


    call Call_000_3dd4
    call Call_000_190f
    call Call_000_2429
    ld hl, $7840
    ld b, $05
    call Call_000_35d6

Call_010_42e2:
    ld hl, $d72c
    set 1, [hl]
    ld a, $33
    ldh [rNR50], a
    call Call_000_3de5
    call Call_000_190f
    ld a, [$d11e]
    ld [$cf91], a
    push af
    ld b, $04
    call Call_000_3def
    pop af
    ld [$d11e], a
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld hl, $c3a0
    ld de, $0001
    ld bc, $6414
    call Call_010_4474
    ld hl, $c4f4
    ld b, $6f
    call Call_010_4474
    ld hl, $c3b4
    ld de, $0014
    ld bc, $6610
    call Call_010_4474
    ld hl, $c3c7
    ld b, $67
    call Call_010_4474
    ld a, $63
    ld [$c3a0], a
    ld a, $65
    ld [$c3b3], a
    ld a, $6c
    ld [$c4f4], a
    ld a, $6e
    ld [$c507], a
    ld hl, $c454
    ld de, $445f
    call Call_000_1955
    ld hl, $c421
    ld de, $4448
    call Call_000_1955
    call Call_000_2f9e
    ld hl, $c3d1
    call Call_000_1955
    ld hl, $447e
    ld a, [$d11e]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $c3f9
    call Call_000_1955
    ld h, b
    ld l, c
    push de
    ld a, [$d11e]
    push af
    call Call_010_5010
    ld hl, $c442
    ld a, $74
    ld [hl+], a
    ld a, $f2
    ld [hl+], a
    ld de, $d11e
    ld bc, $8103
    call Call_000_3c5f
    ld hl, $d2f7
    call Call_010_42c2
    pop af
    ld [$d11e], a
    ld a, [$cf91]
    ld [$d0b5], a
    pop de
    push af
    push bc
    push de
    push hl
    call Call_000_3dd7
    call Call_000_3ddc
    call Call_000_1537
    ld hl, $c3b5
    call Call_000_1384
    ld a, [$cf91]
    call Call_000_13d0
    pop hl
    pop de
    pop bc
    pop af
    ld a, c
    and a
    jp z, Jump_010_4423

    inc de
    ld a, [de]
    ld hl, $c424
    ld bc, $0102
    call Call_000_3c5f
    ld a, $60
    ld [hl], a
    inc de
    inc de
    ld hl, $c427
    ld bc, $8102
    call Call_000_3c5f
    ld a, $61
    ld [hl], a
    inc de
    inc de
    inc de
    push de
    ld hl, $ff8b
    ld a, [hl]
    push af
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    push af
    dec de
    ld a, [de]
    ld [hl], a
    ld de, $ff8b
    ld hl, $c44b
    ld bc, $0205
    call Call_000_3c5f
    ld hl, $c44e
    ldh a, [$8c]
    sub $0a
    ldh a, [$8b]
    sbc $00
    jr nc, jr_010_4409

    ld [hl], $f6

jr_010_4409:
    inc hl
    ld a, [hl+]
    ld [hl-], a
    ld [hl], $f2
    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    pop hl
    inc hl
    ld bc, $c47d
    ld a, $02
    ldh [$f4], a
    call Call_000_1b40
    xor a
    ldh [$f4], a

Jump_010_4423:
jr_010_4423:
    call Call_000_3831
    ldh a, [$b5]
    and $03
    jr z, jr_010_4423

    pop af
    ldh [$d7], a
    call Call_000_3de5
    call Call_000_190f
    call Call_000_3ded
    call Call_000_36a0
    call Call_000_3ddc
    ld hl, $d72c
    res 1, [hl]
    ld a, $77
    ldh [rNR50], a
    ret


    add a
    sub e
    ld a, a
    ld a, a
    and $60
    and $e6
    ld h, c
    ld c, [hl]
    sub [hl]
    sub e
    ld a, a
    ld a, a
    ld a, a
    and $e6
    and $ab
    and c
    ld d, b
    ld d, h
    ld d, b
    ld l, b
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, d
    ld d, b

Call_010_4474:
    push bc
    push de

jr_010_4476:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_010_4476

    pop de
    pop bc
    ret


    ld a, [$0945]
    ld b, [hl]
    add hl, de
    ld b, [hl]
    dec l
    ld b, [hl]
    inc a
    ld b, [hl]
    ld c, a
    ld b, [hl]
    ld e, l
    ld b, [hl]
    ld l, h
    ld b, [hl]
    add b
    ld b, [hl]
    adc [hl]
    ld b, [hl]
    sbc a
    ld b, [hl]
    or b
    ld b, [hl]
    cp l
    ld b, [hl]
    call $dd46
    ld b, [hl]
    pop af
    ld b, [hl]
    nop
    ld b, a
    db $10
    ld b, a
    jr nz, jr_010_44eb

    inc sp
    ld b, a
    ld b, [hl]
    ld b, a
    ld e, d
    ld b, a
    ld l, l
    ld b, a
    ld a, [hl]
    ld b, a
    sub c
    ld b, a
    sbc [hl]
    ld b, a
    xor [hl]
    ld b, a
    pop bc
    ld b, a
    call nc, $e847
    ld b, a
    push hl
    ld c, a
    push hl
    ld c, a
    or $47
    dec b
    ld c, b
    add hl, de
    ld c, b
    daa
    ld c, b
    ld a, [hl-]
    ld c, b
    ld c, c
    ld c, b
    ld d, [hl]
    ld c, b
    ld h, h
    ld c, b
    ld [hl], c
    ld c, b
    add l
    ld c, b
    sub [hl]
    ld c, b
    and a
    ld c, b
    cp c
    ld c, b
    ret z

    ld c, b
    jp c, $e848

    ld c, b
    ld a, [$e548]
    ld c, a
    dec bc
    ld c, c
    push hl
    ld c, a
    dec e
    ld c, c
    cpl
    ld c, c
    ccf

jr_010_44eb:
    ld c, c
    push hl
    ld c, a
    ld d, e
    ld c, c
    ld h, a
    ld c, c
    ld a, c
    ld c, c
    add a
    ld c, c
    push hl
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    sbc d
    ld c, c
    xor l
    ld c, c
    cp l
    ld c, c
    push hl
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    call $e049
    ld c, c
    pop af
    ld c, c
    dec b
    ld c, d
    inc d
    ld c, d
    inc h
    ld c, d
    ld [hl], $4a
    ld c, c
    ld c, d
    ld e, l
    ld c, d
    push hl
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    ld [hl], c
    ld c, d
    ld a, [hl]
    ld c, d
    adc e
    ld c, d
    sbc d
    ld c, d
    push hl
    ld c, a
    push hl
    ld c, a
    xor c
    ld c, d
    cp c
    ld c, d
    ret


    ld c, d
    call c, $ef4a
    ld c, d
    rst $38
    ld c, d
    push hl
    ld c, a
    push hl
    ld c, a
    rrca
    ld c, e
    ld e, $4b
    dec l
    ld c, e
    dec a
    ld c, e
    ld c, l
    ld c, e
    ld e, [hl]
    ld c, e
    ld l, a
    ld c, e
    add d
    ld c, e
    sub c
    ld c, e
    and h
    ld c, e
    cp b
    ld c, e
    call z, $d94b
    ld c, e
    add sp, $4b
    ld a, [$0b4b]
    ld c, h
    inc e
    ld c, h
    cpl
    ld c, h
    ccf
    ld c, h
    push hl
    ld c, a
    ld d, e
    ld c, h
    ld h, a
    ld c, h
    ld a, e
    ld c, h
    adc c
    ld c, h
    sbc l
    ld c, h
    push hl
    ld c, a
    push hl
    ld c, a
    xor a
    ld c, h
    cp l
    ld c, h
    call $e04c
    ld c, h
    push hl
    ld c, a
    db $f4
    ld c, h
    ld [bc], a
    ld c, l
    inc d
    ld c, l
    ld hl, $324d
    ld c, l
    ld b, h
    ld c, l
    push hl
    ld c, a
    push hl
    ld c, a
    ld d, d
    ld c, l
    push hl
    ld c, a
    ld h, d
    ld c, l
    ld [hl], d
    ld c, l
    push hl
    ld c, a
    add e
    ld c, l
    sub c
    ld c, l
    and b
    ld c, l
    or h
    ld c, l
    ret z

    ld c, l
    push hl
    ld c, a
    call c, $e94d
    ld c, l
    or $4d
    inc bc
    ld c, [hl]
    ld de, $1f4e
    ld c, [hl]
    inc sp
    ld c, [hl]
    ld b, c
    ld c, [hl]
    ld c, a
    ld c, [hl]
    push hl
    ld c, a
    ld h, d
    ld c, [hl]
    ld [hl], h
    ld c, [hl]
    push hl
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    add [hl]
    ld c, [hl]
    sbc d
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    cp e
    ld c, [hl]
    ret z

    ld c, [hl]
    call c, $f04e
    ld c, [hl]
    cp $4e
    rrca
    ld c, a
    push hl
    ld c, a
    rra
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    cpl
    ld c, a
    ccf
    ld c, a
    ld d, e
    ld c, a
    ld h, d
    ld c, a
    ld [hl], d
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    push hl
    ld c, a
    add c
    ld c, a
    adc a
    ld c, a
    sbc l
    ld c, a
    xor l
    ld c, a
    cp l
    ld c, a
    pop de
    ld c, a
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    ld b, $03
    ld e, d
    ld a, [bc]
    rla
    nop
    ld b, b
    dec hl
    ld d, b
    adc a
    add b
    sub c
    add h
    adc l
    sub e
    ld d, b
    rlca
    inc bc
    ldh [rTMA], a
    rla
    ld e, e
    ld b, b
    dec hl
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld bc, $c808
    nop
    rla
    or h
    ld b, b
    dec hl
    ld d, b
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    ld [bc], a
    nop
    xor d
    nop
    rla
    inc d
    ld b, c
    dec hl
    ld d, b
    sub e
    adc b
    adc l
    sbc b
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ld bc, $2800
    nop
    rla
    ld [hl], b
    ld b, c
    dec hl
    ld d, b
    add c
    add b
    adc e
    adc e
    ld d, b
    ld bc, $e608
    nop
    rla
    bit 0, c
    dec hl
    ld d, b
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    inc b
    rlca
    ld e, d
    dec b
    rla
    daa
    ld b, d
    dec hl
    ld d, b
    add a
    add h
    sub c
    adc h
    adc b
    sub e
    add d
    sub c
    add b
    add c
    ld d, b
    dec b
    inc bc
    jp nz, Jump_000_1706

    ld a, l
    ld b, d
    dec hl
    ld d, b
    sub d
    add h
    add h
    add e
    ld d, b
    inc bc
    inc bc
    ld [hl+], a
    ld bc, $de17
    ld b, d
    dec hl
    ld d, b
    add d
    adc [hl]
    add d
    adc [hl]
    adc l
    sub h
    sub e
    ld d, b
    ld b, $07
    ld e, d
    ld a, [bc]
    rla
    ld b, b
    ld b, e
    dec hl
    ld d, b
    adc e
    adc b
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    inc bc
    dec bc
    and b
    dec b
    rla
    and a
    ld b, e
    dec hl
    ld d, b
    add h
    add [hl]
    add [hl]
    ld d, b
    ld bc, $3c04
    nop
    rla
    inc c
    ld b, h
    dec hl
    ld d, b
    sub d
    adc e
    sub h
    add e
    add [hl]
    add h
    ld d, b
    ld [bc], a
    dec bc
    sub h
    ld [bc], a
    rla
    ld h, b
    ld b, h
    dec hl
    ld d, b
    sub d
    add a
    add b
    add e
    adc [hl]
    sub [hl]
    ld d, b
    inc b
    dec bc
    ld a, d
    inc bc
    rla
    pop bc
    ld b, h
    dec hl
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld bc, $9604
    nop
    rla
    rra
    ld b, l
    dec hl
    ld d, b
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    inc b
    inc bc
    jr z, jr_010_4700

    rla
    ld a, l
    ld b, l
    dec hl
    ld d, b

jr_010_4700:
    adc e
    adc [hl]
    adc l
    add h
    adc e
    sbc b
    ld d, b
    ld bc, $8c04
    nop
    rla
    db $db
    ld b, l
    dec hl
    ld d, b
    sub d
    adc a
    adc b
    adc d
    add h
    sub d
    ld d, b
    inc bc
    inc bc
    db $ec
    add hl, bc
    rla
    ld [hl-], a
    ld b, [hl]
    dec hl
    ld d, b
    sub e
    sub c
    add b
    adc l
    sub d
    adc a
    adc [hl]
    sub c
    sub e
    ld d, b
    ld [$f202], sp
    ld [de], a
    rla
    sub e
    ld b, [hl]
    dec hl
    ld d, b
    adc e
    add h
    add [hl]
    add h
    adc l
    add e
    add b
    sub c
    sbc b
    ld d, b
    ld b, $03
    ld e, h
    dec c
    rla
    ld a, [c]
    ld b, [hl]
    dec hl
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add h
    ld d, b
    ld bc, $5a04
    nop
    rla
    ld c, a
    ld b, a
    dec hl
    ld d, b
    add b
    sub e
    sub c
    adc [hl]
    add d
    adc b
    adc [hl]
    sub h
    sub d
    ld d, b
    dec d
    inc b
    inc a
    inc d
    rla
    cp b
    ld b, a
    dec hl
    ld d, b
    add c
    adc b
    sub l
    add b
    adc e
    sub l
    add h
    ld d, b
    ld bc, $5a00
    nop
    rla
    add hl, de
    ld c, b
    dec hl
    ld d, b
    adc c
    add h
    adc e
    adc e
    sbc b
    add l
    adc b
    sub d
    add a
    ld d, b
    ld [bc], a
    dec bc
    add sp, $03
    rla
    ld [hl], d
    ld c, b
    dec hl
    ld d, b
    add [hl]
    add b
    sub d
    ld d, b
    inc b
    inc bc
    ld [bc], a
    nop
    rla
    sub $48
    dec hl
    ld d, b
    adc h
    add b
    adc l
    sub e
    adc b
    sub d
    ld d, b
    inc b
    dec bc
    adc $04
    rla
    ld [hl-], a
    ld c, c
    dec hl
    ld d, b
    sub d
    sub e
    add b
    sub c
    sub d
    add a
    add b
    adc a
    add h
    ld d, b
    ld [bc], a
    rlca
    ld hl, sp+$02
    rla
    adc [hl]
    ld c, c
    dec hl
    ld d, b
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    dec b
    inc bc
    ld h, d
    rlca
    rla
    db $e4
    ld c, c
    dec hl
    ld d, b
    sub d
    sub e
    add b
    add [hl]
    add c
    add h
    add h
    sub e
    adc e
    add h
    ld d, b
    inc b
    dec bc
    cp d
    inc b
    rla
    ld b, e
    ld c, d
    dec hl
    ld d, b
    sub l
    adc b
    adc l
    add h
    ld d, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rla
    sbc [hl]
    ld c, d
    dec hl
    ld d, b
    adc a
    sub h
    adc a
    adc a
    sbc b
    ld d, b
    ld [bc], a
    inc b
    and h
    ld bc, $0517
    ld c, e
    dec hl
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    inc e
    ld a, [bc]
    ld d, $12
    rla
    ld h, c
    ld c, e
    dec hl
    ld d, b
    add c
    add h
    add b
    adc d
    ld d, b
    inc bc
    dec bc
    ld c, b
    inc bc
    rla
    ret z

    ld c, e
    dec hl
    ld d, b
    sub e
    adc b
    adc l
    sbc b
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ld bc, $2800
    nop
    rla
    ld h, $4c
    dec hl
    ld d, b
    add e
    adc [hl]
    adc a
    add h
    sbc b
    ld d, b
    inc bc
    dec bc
    ld d, $03
    rla
    adc c
    ld c, h
    dec hl
    ld d, b
    adc a
    sub d
    adc b
    ld d, b
    inc b
    inc bc
    ld [c], a
    inc b
    rla
    rst $18
    ld c, h
    dec hl
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    inc bc
    inc bc
    db $10
    add hl, bc
    rla
    add hl, sp
    ld c, l
    dec hl
    ld d, b
    add h
    add [hl]
    add [hl]
    ld d, b
    inc bc
    rlca
    ld hl, sp+$02
    rla
    sbc e
    ld c, l
    dec hl
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    inc b
    dec bc
    ld c, $06
    rla
    di
    ld c, l
    dec hl
    ld d, b
    add c
    add b
    sub c
    sub c
    adc b
    add h
    sub c
    ld d, b
    inc b
    inc bc
    or b
    inc b
    rla
    ld e, c
    ld c, [hl]
    dec hl
    ld d, b
    adc d
    adc b
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    inc b
    dec bc
    ld c, h
    inc b
    rla
    or h
    ld c, [hl]
    dec hl
    ld d, b
    adc a
    sub h
    adc l
    add d
    add a
    adc b
    adc l
    add [hl]
    ld d, b
    inc b
    rlca
    ld d, [hl]
    inc b
    rla
    add hl, de
    ld c, a
    dec hl
    ld d, b
    add d
    adc [hl]
    add c
    sub c
    add b
    ld d, b
    dec bc
    ld b, $96
    dec b
    rla
    add c
    ld c, a
    dec hl
    ld d, b
    adc h
    sub h
    sub d
    add a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    inc bc
    inc bc
    adc d
    ld [bc], a
    rla
    db $db
    ld c, a
    dec hl
    ld d, b
    add e
    sub h
    add d
    adc d
    ld d, b
    ld [bc], a
    rlca
    xor [hl]
    ld bc, $4217
    ld d, b
    dec hl
    ld d, b
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    sub d
    adc b
    sub d
    ld d, b
    inc bc
    inc bc
    add $02
    rla
    and c
    ld d, b
    dec hl
    ld d, b
    adc h
    add h
    add [hl]
    add b
    sub e
    adc [hl]
    adc l
    ld d, b
    inc b
    rlca
    call c, $1719
    rst $38
    ld d, b
    dec hl
    ld d, b
    sub d
    adc a
    adc b
    sub e
    add l
    adc b
    sub c
    add h
    ld d, b
    inc b
    inc bc
    call nc, Call_000_1703
    ld h, c
    ld d, c
    dec hl
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
    inc bc
    rlca
    sub h
    ld [bc], a
    rla
    cp h
    ld d, c
    dec hl
    ld d, b
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld d, b
    inc bc
    inc bc
    jr z, jr_010_493f

    rla
    add hl, de
    ld d, d
    dec hl
    ld d, b

jr_010_493f:
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add b
    sub d
    ld d, b
    ld [bc], a
    nop
    inc d
    nop
    rla
    ld [hl], a
    ld d, d
    dec hl
    ld d, b
    adc a
    adc b
    add [hl]
    ld a, a
    adc h
    adc [hl]
    adc l
    adc d
    add h
    sbc b
    ld d, b
    ld bc, $6c08
    ld [bc], a
    rla
    sbc $52
    dec hl
    ld d, b
    sub d
    add h
    add b
    ld a, a
    adc e
    adc b
    adc [hl]
    adc l
    ld d, b
    inc bc
    rlca
    cp h
    rlca
    rla
    dec a
    ld d, e
    dec hl
    ld d, b
    adc h
    adc [hl]
    adc e
    add h
    ld d, b
    nop
    ld [$0014], sp
    rla
    sub [hl]
    ld d, e
    dec hl
    ld d, b
    sub [hl]
    adc b
    adc e
    add e
    ld a, a
    add c
    sub h
    adc e
    adc e
    ld d, b
    inc b
    rlca
    sbc [hl]
    rlca
    rla
    ld a, [$2b53]
    ld d, b
    sub [hl]
    adc b
    adc e
    add e
    ld a, a
    add e
    sub h
    add d
    adc d
    ld d, b
    ld [bc], a
    rlca
    ld c, d
    ld bc, $5717
    ld d, h
    dec hl
    ld d, b
    adc b
    adc l
    sub d
    add h
    add d
    sub e
    ld d, b
    inc bc
    inc bc
    sub h
    ld [bc], a
    rla
    xor [hl]
    ld d, h
    dec hl
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    rlca
    inc bc
    ld d, $12
    rla
    inc c
    ld d, l
    dec hl
    ld d, b
    sub e
    sub [hl]
    adc b
    adc l
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    inc b
    rlca
    ld e, h
    inc bc
    rla
    ld h, l
    ld d, l
    dec hl
    ld d, b
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    ld [bc], a
    nop
    ld c, $01
    rla
    jp nz, $2b55

    ld d, b
    add a
    sub h
    adc h
    add b
    adc l
    sub d
    add a
    add b
    adc a
    add h
    ld d, b
    inc b
    rlca
    add h
    inc bc
    rla
    dec h
    ld d, [hl]
    dec hl
    ld d, b
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    ld b, $07
    jr z, jr_010_4a14

    rla
    add e
    ld d, [hl]
    dec hl
    ld d, b

jr_010_4a14:
    add l
    sub c
    add h
    add h
    sbc c
    add h
    ld d, b
    dec b
    rlca
    call nz, Call_000_1704
    push hl
    ld d, [hl]
    dec hl
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
    dec b
    inc bc
    adc b
    inc b
    rla
    ld b, e
    ld d, a
    dec hl
    ld d, b
    sub e
    sub c
    add b
    adc l
    sub d
    add l
    adc [hl]
    sub c
    adc h
    ld d, b
    ld bc, $5a00
    nop
    rla
    and [hl]
    ld d, a
    dec hl
    ld d, b
    sub d
    add d
    sub c
    add b
    sub e
    add d
    add a
    add d
    add b
    sub e
    ld d, b
    ld bc, $5a04
    nop
    rla
    ld c, $58
    dec hl
    ld d, b
    sub c
    adc b
    sub l
    add h
    sub c
    ld a, a
    add d
    sub c
    add b
    add c
    ld d, b
    ld bc, $8c04
    nop
    rla
    ld [hl], c
    ld e, b
    dec hl
    ld d, b
    add l
    adc [hl]
    sub a
    ld d, b
    ld [bc], a
    nop
    call c, Call_000_1700
    adc $58
    dec hl
    ld d, b
    add l
    adc [hl]
    sub a
    ld d, b
    inc bc
    rlca
    cp b
    ld bc, $2b17
    ld e, c
    dec hl
    ld d, b
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld bc, $8204
    nop
    rla
    adc h
    ld e, c
    dec hl
    ld d, b
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld [bc], a
    rlca
    sub h
    ld [bc], a
    rla
    ld [$2b59], a
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    dec b
    dec bc
    ld b, [hl]
    nop
    rla
    ccf
    ld e, d
    dec hl
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    dec c
    ld bc, $0168
    rla
    and b
    ld e, d
    dec hl
    ld d, b
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    ld bc, $fa08
    nop
    rla
    ld a, [$2b5a]
    ld d, b
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    inc b
    inc bc
    ld a, d
    inc bc
    rla
    ld d, [hl]
    ld e, e
    dec hl
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld bc, $b404
    nop
    rla
    cp l
    ld e, e
    dec hl
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    inc bc
    dec bc
    ld h, $02
    rla
    ld a, [de]
    ld e, h
    dec hl
    ld d, b
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld [bc], a
    nop
    inc b
    ld bc, $7b17
    ld e, h
    dec hl
    ld d, b
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    inc bc
    inc bc
    adc d
    ld [bc], a
    rla
    reti


    ld e, h
    dec hl
    ld d, b
    sub d
    adc a
    adc b
    sub c
    add b
    adc e
    ld d, b
    ld bc, $aa04
    nop
    rla
    scf
    ld e, l
    dec hl
    ld d, b
    sub d
    adc a
    adc b
    sub c
    add b
    adc e
    ld d, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rla
    adc [hl]
    ld e, l
    dec hl
    ld d, b
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld bc, $7808
    nop
    rla
    rst $20
    ld e, l
    dec hl
    ld d, b
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    inc bc
    inc bc
    inc b
    ld bc, $4e17
    ld e, [hl]
    dec hl
    ld d, b
    add h
    sub l
    adc [hl]
    adc e
    sub h
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld bc, $8c00
    nop
    rla
    or a
    ld e, [hl]
    dec hl
    ld d, b
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    ld [bc], a
    dec bc
    ld h, $02
    rla
    jr jr_010_4bee

    dec hl
    ld d, b
    adc e
    adc b
    add [hl]
    add a
    sub e
    adc l
    adc b
    adc l
    add [hl]
    ld d, b
    ld [bc], a
    rlca
    inc e
    ld [bc], a
    rla
    ld [hl], e
    ld e, a
    dec hl
    ld d, b
    add c
    sub h
    add c
    add c
    adc e
    add h
    ld a, a
    adc c
    add h
    sub e
    ld d, b
    inc bc
    inc bc
    add b
    ld [bc], a
    rla
    call $2b5f
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    ld [bc], a
    rlca
    xor [hl]
    ld bc, $2f17
    ld h, b
    dec hl
    ld d, b
    add c
    add b
    sub e
    ld d, b
    ld [bc], a
    rlca
    xor d
    nop
    rla
    adc l
    ld h, b
    dec hl
    ld d, b
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    ld b, $07
    sub [hl]
    nop
    rla
    pop af
    ld h, b
    dec hl
    ld d, b
    adc h
    sub h
    sub d
    add a
    sub c
    adc [hl]

jr_010_4bee:
    adc [hl]
    adc h
    ld d, b
    ld bc, $7800
    nop
    rla
    ld c, h
    ld h, c
    dec hl
    ld d, b
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    inc bc
    inc bc
    cp b
    ld bc, $b217
    ld h, c
    dec hl
    ld d, b
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    inc b
    inc bc
    and [hl]
    inc b
    rla
    ld c, $62
    dec hl
    ld d, b
    add a
    add b
    adc b
    sub c
    sbc b
    ld a, a
    add c
    sub h
    add [hl]
    ld d, b
    ld bc, $4600
    nop
    rla
    ld [hl], l
    ld h, d
    dec hl
    ld d, b
    add d
    adc [hl]
    add d
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld [bc], a
    nop
    call c, Call_000_1700
    jp z, $2b62

    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add c
    add h
    add h
    ld d, b
    inc bc
    inc bc
    adc d
    ld [bc], a
    rla
    dec l
    ld h, e
    dec hl
    ld d, b
    sub e
    sub c
    adc b
    adc a
    adc e
    add h
    add c
    adc b
    sub c
    add e
    ld d, b
    dec b
    dec bc
    ld e, b
    rlca
    rla
    adc d
    ld h, e
    dec hl
    ld d, b
    adc a
    adc b
    add [hl]
    ld a, a
    adc h
    adc [hl]
    adc l
    adc d
    add h
    sbc b
    ld d, b
    inc bc
    inc bc
    add $02
    rla
    add sp, $63
    dec hl
    ld d, b
    adc h
    adc [hl]
    adc e
    add h
    ld d, b
    ld [bc], a
    inc b
    jp c, Jump_000_1702

    ld c, d
    ld h, h
    dec hl
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    adc h
    adc [hl]
    sub e
    add a
    ld d, b
    inc b
    dec bc
    jr jr_010_4c99

    rla

jr_010_4c99:
    and a
    ld h, h
    dec hl
    ld d, b
    sub d
    add h
    add b
    ld a, a
    adc e
    adc b
    adc [hl]
    adc l
    ld d, b
    dec b
    rlca
    ld e, d
    ld a, [bc]
    rla
    ld [$2b65], sp
    ld d, b
    sub [hl]
    adc [hl]
    sub c
    adc h
    ld d, b
    ld bc, $3c00
    nop
    rla
    ld h, l
    ld h, l
    dec hl
    ld d, b
    add d
    adc [hl]
    add d
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld [bc], a
    inc b
    call c, Call_000_1700
    rst $00
    ld h, l
    dec hl
    ld d, b
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    adc e
    sbc b
    ld d, b
    inc bc
    rlca
    add $02
    rla
    ld h, $66
    dec hl
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    dec b
    inc bc
    ld [hl], $0b
    rla
    ld a, [hl]
    ld h, [hl]
    dec hl
    ld d, b
    add e
    sub h
    add d
    adc d
    ld d, b
    dec b
    rlca
    sbc d
    ld b, $17
    db $e4
    ld h, [hl]
    dec hl
    ld d, b
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    sub d
    adc b
    sub d
    ld d, b
    dec b
    inc bc
    add [hl]
    ld b, $17
    ld c, e
    ld h, a
    dec hl
    ld d, b
    add c
    add b
    sub e
    ld d, b
    dec b
    inc bc
    cp d
    inc b
    rla
    xor l
    ld h, a
    dec hl
    ld d, b
    add [hl]
    add h
    adc l
    add h
    sub e
    adc b
    add d
    ld d, b
    ld b, $07
    add d
    ld a, [bc]
    rla
    ld [de], a
    ld l, b
    dec hl
    ld d, b
    sub d
    adc e
    add h
    add h
    adc a
    adc b
    adc l
    add [hl]
    ld d, b
    ld b, $0b
    sbc h
    daa
    rla
    ld a, b
    ld l, b
    dec hl
    ld d, b
    add l
    adc b
    sub d
    add a
    ld d, b
    ld [bc], a
    dec bc
    call c, Call_000_1700
    ret c

    ld l, b
    dec hl
    ld d, b
    sub d
    adc e
    sub h
    add e
    add [hl]
    add h
    ld d, b
    inc bc
    dec bc
    sub h
    ld [bc], a
    rla
    inc a
    ld l, c
    dec hl
    ld d, b
    adc a
    adc b
    adc l
    add d
    add h
    sub c
    ld d, b
    inc b
    inc bc
    jr z, jr_010_4d72

    rla
    sbc l
    ld l, c
    dec hl
    ld d, b

jr_010_4d72:
    add c
    adc b
    sub l
    add b
    adc e
    sub l
    add h
    ld d, b
    inc b
    dec bc
    ld l, b
    dec bc
    rla
    nop
    ld l, d
    dec hl
    ld d, b
    add c
    add b
    adc e
    adc e
    ld d, b
    inc bc
    dec bc
    cp [hl]
    dec b
    rla
    ld e, d
    ld l, d
    dec hl
    ld d, b
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    inc b
    inc bc
    ld [hl], b
    inc bc
    rla
    ret nz

    ld l, d
    dec hl
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add b
    sub d
    ld d, b
    inc bc
    dec bc
    jp nc, Jump_000_1700

    dec de
    ld l, e
    dec hl
    ld d, b
    add d
    adc e
    add b
    sub d
    sub d
    sbc b
    ld a, a
    add d
    add b
    sub e
    ld d, b
    inc bc
    inc bc
    add $02
    rla
    db $76
    ld l, e
    dec hl
    ld d, b
    add c
    adc [hl]
    adc l
    add h
    adc d
    add h
    add h
    adc a
    add h
    sub c
    ld d, b
    inc bc
    inc bc
    sbc $03
    rla
    reti


    ld l, e
    dec hl
    ld d, b
    add [hl]
    add b
    sub d
    ld d, b
    dec b
    inc bc
    ld [bc], a
    nop
    rla
    dec a
    ld l, h
    dec hl
    ld d, b
    adc a
    sub d
    adc b
    ld d, b
    ld [bc], a
    dec bc
    xor [hl]
    ld bc, $9d17
    ld l, h
    dec hl
    ld d, b
    adc a
    sub d
    adc b
    ld d, b
    inc b
    dec bc
    inc h
    inc b
    rla
    ld sp, hl
    ld l, h
    dec hl
    ld d, b
    add c
    adc b
    sub c
    add e
    ld d, b
    inc bc
    rlca
    sub h
    ld [bc], a
    rla
    ld d, a
    ld l, l
    dec hl
    ld d, b
    add c
    adc b
    sub c
    add e
    ld d, b
    inc b
    dec bc
    ld h, [hl]
    inc bc
    rla
    cp c
    ld l, l
    dec hl
    ld d, b
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    adc b
    adc [hl]
    sub h
    sub d
    ld d, b
    inc bc
    rlca
    ldh [rTMA], a
    rla
    ld e, $6e
    dec hl
    ld d, b
    sub d
    add h
    add h
    add e
    ld d, b
    ld [bc], a
    inc b
    sub [hl]
    nop
    rla
    add c
    ld l, [hl]
    dec hl
    ld d, b
    sub d
    add h
    add h
    add e
    ld d, b
    ld b, $07
    and d
    ld [$df17], sp
    ld l, [hl]
    dec hl
    ld d, b
    adc c
    add h
    adc e
    adc e
    sbc b
    add l
    adc b
    sub d
    add a
    ld d, b
    dec b
    inc bc
    cp d
    inc b
    rla
    dec sp
    ld l, a
    dec hl
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add e
    add l
    adc b
    sub d
    add a
    ld d, b
    ld [bc], a
    nop
    ld c, d
    ld bc, $9f17
    ld l, a
    dec hl
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add e
    add l
    adc b
    sub d
    add a
    ld d, b
    inc b
    inc bc
    ld e, h
    inc bc
    rla
    nop
    ld [hl], b
    dec hl
    ld d, b
    add l
    adc b
    sub c
    add h
    ld a, a
    add a
    adc [hl]
    sub c
    sub d
    add h
    ld d, b
    inc bc
    inc bc
    sub h
    ld [bc], a
    rla
    ld e, l
    ld [hl], b
    dec hl
    ld d, b
    add l
    adc b
    sub c
    add h
    ld a, a
    add a
    adc [hl]
    sub c
    sub d
    add h
    ld d, b
    dec b
    rlca
    ld a, [hl+]
    ld [$c417], sp
    ld [hl], b
    dec hl
    ld d, b
    sub c
    add b
    sub e
    ld d, b
    ld bc, $5000
    nop
    rla
    jr nz, jr_010_4f2a

    dec hl
    ld d, b
    sub c
    add b
    sub e
    ld d, b
    ld [bc], a
    inc b
    sbc d
    ld bc, $7c17
    ld [hl], c
    dec hl
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld [bc], a
    dec bc
    xor [hl]
    ld bc, $db17
    ld [hl], c
    dec hl
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld [bc], a
    rlca
    cp b
    ld bc, $3817
    ld [hl], d
    dec hl
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    ld bc, $b804
    ld bc, $9017
    ld [hl], d
    dec hl
    ld d, b
    sub l
    adc b
    sub c
    sub e
    sub h
    add b
    adc e
    ld d, b
    ld [bc], a
    rlca
    jr nz, jr_010_4f0d

    rla
    ldh a, [$72]

jr_010_4f0d:
    dec hl
    ld d, b
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    ld d, b
    dec b
    dec bc
    inc d
    dec b
    rla
    ld c, h
    ld [hl], e
    dec hl
    ld d, b
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld d, b
    ld bc, $8200
    nop

jr_010_4f2a:
    rla
    xor a
    ld [hl], e
    dec hl
    ld d, b
    adc e
    adc b
    sbc c
    add b
    sub c
    add e
    ld d, b
    ld [bc], a
    nop
    cp [hl]
    nop
    rla
    ld d, $74
    dec hl
    ld d, b
    sub e
    adc b
    adc l
    sbc b
    sub e
    sub h
    sub c
    sub e
    adc e
    add h
    ld d, b
    ld bc, $c808
    nop
    rla
    ld [hl], l
    ld [hl], h
    dec hl
    ld d, b
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    inc bc
    rlca
    and h
    ld bc, $d417
    ld [hl], h
    dec hl
    ld d, b
    sub e
    sub h
    sub c
    sub e
    adc e
    add h
    ld d, b
    inc bc
    inc bc
    db $f4
    ld bc, $2d17
    ld [hl], l
    dec hl
    ld d, b
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    dec b
    rlca
    ret nc

    rlca
    rla
    sub e
    ld [hl], l
    dec hl
    ld d, b
    sub [hl]
    add h
    add h
    add e
    ld d, b
    ld bc, $7808
    nop
    rla
    pop af
    ld [hl], l
    dec hl
    ld d, b
    sub [hl]
    add h
    add h
    add e
    ld d, b
    ld [bc], a
    rlca
    cp [hl]
    nop
    rla
    ld e, b
    db $76
    dec hl
    ld d, b
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    inc bc
    dec bc
    sbc d
    ld bc, $b617
    db $76
    dec hl
    ld d, b
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    ld [bc], a
    inc b
    ld e, d
    nop
    rla
    inc e
    ld [hl], a
    dec hl
    ld d, b
    add l
    adc e
    sbc b
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    inc bc
    inc bc
    adc h
    nop
    rla
    ld a, h
    ld [hl], a
    dec hl
    ld d, b
    add l
    adc e
    sbc b
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    dec b
    rlca
    ld d, h
    ld bc, $da17
    ld [hl], a
    dec hl
    ld d, b
    and $e6
    and $50
    ld a, [bc]
    ld h, h
    nop
    adc c
    and b
    xor e
    sub e
    ld a, a
    cp e
    cp b
    cp [hl]
    or d
    pop bc
    pop hl
    or e
    ld d, b

Call_010_4ff9:
    push bc
    push hl

jr_010_4ffb:
    ld a, [$d11e]
    ld b, a
    ld c, $00
    ld hl, $5024

jr_010_5004:
    inc c
    ld a, [hl+]
    cp b
    jr nz, jr_010_5004

    ld a, c
    ld [$d11e], a
    pop hl
    pop bc

jr_010_500f:
    ret


Call_010_5010:
    push bc
    push hl
    ld a, [$d11e]
    dec a
    ld hl, $5024
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d11e], a
    pop hl
    pop bc
    ret


    ld [hl], b
    ld [hl], e
    jr nz, jr_010_504b

    dec d
    ld h, h
    ld [hl+], a
    ld d, b
    ld [bc], a
    ld h, a
    ld l, h
    ld h, [hl]
    ld e, b
    ld e, [hl]
    dec e
    rra
    ld l, b
    ld l, a
    add e
    dec sp
    sub a
    add d
    ld e, d
    ld c, b
    ld e, h
    ld a, e
    ld a, b
    add hl, bc
    ld a, a
    ld [hl], d
    nop
    nop
    ld a, [hl-]
    ld e, a
    ld d, $10
    ld c, a
    ld b, b
    ld c, e

jr_010_504b:
    ld [hl], c
    ld b, e
    ld a, d
    ld l, d
    ld l, e
    jr jr_010_5081

    ld [hl], $60
    ld c, h
    nop
    ld a, [hl]
    nop
    ld a, l
    ld d, d
    ld l, l
    nop
    jr c, jr_010_50b4

    ld [hl-], a
    add b
    nop
    nop
    nop
    ld d, e
    jr nc, jr_010_4ffb

    nop
    nop
    nop
    ld d, h
    inc a
    ld a, h
    sub d
    sub b
    sub c
    add h
    inc [hl]
    ld h, d
    nop
    nop
    nop
    dec h
    ld h, $19
    ld a, [de]
    nop
    nop
    sub e
    sub h
    adc h
    adc l
    ld [hl], h
    ld [hl], l

jr_010_5081:
    nop
    nop
    dec de
    inc e
    adc d
    adc e
    daa
    jr z, jr_010_500f

    adc b
    add a
    add [hl]
    ld b, d
    add hl, hl
    rla
    ld l, $3d
    ld a, $0d
    ld c, $0f
    nop
    ld d, l
    add hl, sp
    inc sp
    ld sp, $0057
    nop
    ld a, [bc]
    dec bc
    inc c
    ld b, h
    nop
    scf
    ld h, c
    ld a, [hl+]
    sub [hl]
    adc a
    add c
    nop
    nop
    ld e, c
    nop
    ld h, e
    ld e, e
    nop
    ld h, l
    inc h
    ld l, [hl]
    dec [hl]

jr_010_50b4:
    ld l, c
    nop
    ld e, l
    ccf
    ld b, c
    ld de, $7912
    ld bc, $4903
    nop
    db $76
    ld [hl], a
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    inc de
    inc d
    ld hl, $4a1e
    adc c
    adc [hl]
    nop
    ld d, c
    nop
    nop
    inc b
    rlca
    dec b
    ld [$0006], sp
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [$cd3d]
    ld [$cd5e], a
    ld a, [$cd3e]
    ld [$cd5f], a
    ld de, $5138
    jr jr_010_5102

    ld a, [$cd3e]
    ld [$cd5e], a
    ld a, [$cd3d]
    ld [$cd5f], a
    ld de, $5149

jr_010_5102:
    ld a, [$d355]
    push af
    ldh a, [$af]
    push af
    ldh a, [$ae]
    push af
    xor a
    ld [$d355], a
    ldh [$af], a
    ldh [$ae], a
    push de
    pop de
    ld a, [de]
    cp $ff
    jr z, jr_010_512d

    inc de
    push de
    ld hl, $515f
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $5115
    push de
    jp hl


jr_010_512d:
    pop af
    ldh [$ae], a
    pop af
    ldh [$af], a
    pop af
    ld [$d355], a
    ret


    nop
    ld bc, $0302
    dec b
    rlca
    ld [$0a09], sp
    dec bc
    ld b, $08
    ld [bc], a
    inc b
    rlca
    ld c, $ff
    nop
    ld [$0b0d], sp
    db $10
    dec b
    db $10
    ld [$0402], sp
    rrca
    ld bc, $0302
    db $10
    ld b, $10
    rlca
    ld [$0e09], sp
    rst $38
    and c
    ld d, c
    ld b, l
    ld d, d
    sbc b
    ld d, d
    jp nc, Jump_000_3652

    ld d, e
    db $76
    ld d, e
    add $53
    add c
    ld d, c
    ret z

    ld d, l
    cp $55
    ld de, $2d56
    ld d, [hl]
    ld c, h
    ld d, [hl]
    ld e, d
    ld d, [hl]
    dec sp
    ld d, d
    rst $18
    ld d, l
    rla
    ld d, d

Call_010_5181:
    ld c, $64
    jp Jump_000_3739


Call_010_5186:
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ret


Call_010_5191:
Jump_010_5191:
    ld c, $50
    jp Jump_000_3739


Call_010_5196:
    ld hl, $c3a0
    ld bc, $0168
    ld a, $7f
    jp Jump_000_36e0


    call Call_010_5196
    call Call_000_0061
    ld hl, $69be
    ld de, $9310
    ld bc, $0310
    ld a, $0e
    call Call_000_17f7
    ld hl, $6cce
    ld de, $87c0
    ld bc, $0040
    ld a, $0e
    call Call_000_17f7
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call Call_000_36e0
    call Call_000_0082
    ld a, $ff
    ld [$cfcb], a
    ld hl, $d730
    set 6, [hl]
    ld a, [$cf1b]
    and a
    ld a, $e4
    jr z, jr_010_51e5

    ld a, $f0

jr_010_51e5:
    ldh [rOBP0], a
    call Call_000_007b
    xor a
    ldh [$ba], a
    ld a, [$cd3d]
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $cd6d
    ld de, $cf4b
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cd3e]
    ld [$d11e], a
    jp Jump_000_2f9e


Call_010_520b:
    ld a, $d0
    ldh [rOBP1], a
    ld b, $1c
    ld hl, $576c
    jp Jump_000_35d6


    ld hl, $d158
    ld de, $cee9
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d887
    ld de, $d158
    ld bc, $000b
    call Call_000_00b5
    ld hl, $cee9
    ld de, $d887
    ld bc, $000b
    jp Jump_000_00b5


    xor a
    call Call_000_20ba
    ld hl, $d730
    res 6, [hl]
    ret


    ld a, $ab
    ldh [rLCDC], a
    ld a, $50
    ldh [$b0], a
    ld a, $86
    ldh [rWX], a
    ldh [$ae], a
    xor a
    ldh [$ba], a
    ld hl, $c3a4
    ld b, $06
    ld c, $0a
    call Call_000_1922
    call Call_010_6769
    ld b, $98
    call Call_000_18d6
    call Call_000_190f
    ld a, [$cd3d]
    call Call_010_55a4
    ld a, $7e

jr_010_5273:
    push af
    call Call_000_20af
    pop af
    ldh [rWX], a
    ldh [$ae], a
    dec a
    dec a
    and a
    jr nz, jr_010_5273

    call Call_010_5191
    ld a, $ad
    call Call_010_5676
    ld a, $aa
    call Call_010_5676
    ld a, [$cd3d]
    call Call_000_13d0
    xor a
    ldh [$ba], a
    ret


    call Call_010_5196
    ld b, $98
    call Call_000_18d6
    ld b, $08
    call Call_000_3def
    ld hl, $9c8c
    call Call_010_54ae
    ld a, $a0
    ldh [$ae], a
    call Call_000_20af
    ld a, $8b
    ldh [rLCDC], a
    ld hl, $c3ce
    ld b, $07
    call Call_010_5842
    call Call_010_5186
    ld a, $8d
    call Call_000_23b1
    ld c, $14

jr_010_52c8:
    ldh a, [$ae]
    add $04
    ldh [$ae], a
    dec c
    jr nz, jr_010_52c8

    ret


    ld a, $ab
    call Call_010_5676
    ld c, $0a
    call Call_000_3739
    ld a, $e4
    ldh [rOBP0], a
    xor a
    ld [$d09f], a
    ld bc, $2060

jr_010_52e7:
    push bc
    xor a
    ld de, $532e
    call Call_000_3a97
    ld a, [$d09f]
    xor $01
    ld [$d09f], a
    add $7e
    ld hl, $c302
    ld de, $0004
    ld c, e

jr_010_5300:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_5300

    call Call_000_3dd7
    pop bc
    ld a, c
    add $04
    ld c, a
    cp $a0
    jr nc, jr_010_5318

    ld a, $8c
    call Call_000_23b1
    jr jr_010_52e7

jr_010_5318:
    call Call_000_0082
    ld a, $01
    ldh [$ba], a
    call Call_000_190f
    ld b, $98
    call Call_000_18d6
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ret


    ld a, [hl]
    nop
    ld a, [hl]
    jr nz, @+$80

    ld b, b
    ld a, [hl]
    ld h, b
    ld a, $ac
    call Call_010_5676
    call Call_010_55c8
    ld hl, $c46c
    ld b, $06
    ld c, $0a
    call Call_000_1922
    call Call_010_67a7
    call Call_010_5186
    ld a, $01
    ldh [$ba], a
    ld a, [$cd3e]
    call Call_010_55a4
    ld a, $ad
    call Call_010_5676
    ld a, $01
    ldh [$ba], a
    ld a, [$cd3e]
    call Call_000_13d0
    call Call_010_5181
    ld hl, $c46c
    ld bc, $080c
    call Call_000_18c4
    jp Jump_010_564c


    call Call_010_5411
    ld a, $01
    ld [$d08a], a
    ld a, $e4
    ldh [rOBP0], a
    ld a, $54
    ld [$d081], a
    ld a, $1c
    ld [$d082], a
    ld a, [$cd5e]
    ld [$cd5d], a
    call Call_010_5505
    call Call_010_542d
    call Call_010_5186
    call Call_010_549f
    ld hl, $9c8c
    call Call_010_54ae
    ld b, $06
    call Call_010_54c5
    ld a, $01
    ldh [$ba], a
    call Call_010_549f
    ld b, $04
    call Call_010_54c5
    call Call_010_545c
    ld b, $06
    call Call_010_54c5
    xor a
    ldh [$ba], a
    call Call_010_5525
    jp Jump_000_0082


    call Call_010_5411
    xor a
    ld [$d08a], a
    ld a, $64
    ld [$d081], a
    ld a, $44
    ld [$d082], a
    ld a, [$cd5f]
    ld [$cd5d], a
    call Call_010_5505
    call Call_010_545c
    call Call_010_5186
    call Call_010_549f
    ld hl, $9c94
    call Call_010_54ae
    call Call_010_5525
    ld b, $06
    call Call_010_54c5
    ld a, $01
    ldh [$ba], a
    call Call_010_549f
    ld b, $04
    call Call_010_54c5
    call Call_010_542d
    ld b, $06
    call Call_010_54c5
    xor a
    ldh [$ba], a
    jp Jump_000_0082


Call_010_5411:
    ld a, $01
    ldh [$ba], a
    call Call_000_190f
    xor a
    ldh [$ba], a
    call Call_010_520b
    call Call_000_20af
    ld a, $ab
    ldh [rLCDC], a
    xor a
    ldh [$ae], a
    ld a, $90
    ldh [$b0], a
    ret


Call_010_542d:
    call Call_010_5196
    ld hl, $c3fb
    ld a, $5d
    ld [hl+], a
    ld a, $5e
    ld c, $08

jr_010_543a:
    ld [hl+], a
    dec c
    jr nz, jr_010_543a

    ld hl, $c3e1
    ld b, $06
    call Call_010_5842
    ld hl, $c494
    ld b, $02
    ld c, $07
    call Call_000_1922
    ld hl, $c4bd
    ld de, $d158
    call Call_000_1955
    jp Jump_000_20af


Call_010_545c:
    call Call_010_5196
    ld hl, $c3f0
    ld a, $5e
    ld c, $0e

jr_010_5466:
    ld [hl+], a
    dec c
    jr nz, jr_010_5466

    ld a, $5f
    ld [hl], a
    ld de, $0014
    add hl, de
    ld a, $61
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld a, $60
    ld [hl-], a
    ld a, $5d
    ld [hl], a
    ld hl, $c447
    ld b, $06
    call Call_010_5842
    ld hl, $c3a6
    ld b, $02
    ld c, $07
    call Call_000_1922
    ld hl, $c3cf
    ld de, $d887
    call Call_000_1955
    jp Jump_000_20af


Call_010_549f:
    call Call_010_5196
    ld hl, $c3f0
    ld a, $5e
    ld c, $14

jr_010_54a9:
    ld [hl+], a
    dec c
    jr nz, jr_010_54a9

    ret


Call_010_54ae:
    push hl
    ld hl, $c3f0
    call Call_000_0ea6
    pop hl
    ld a, h
    ldh [$d2], a
    ld a, l
    ldh [$d1], a
    ld a, $02
    ldh [$d0], a
    ld c, $0a
    jp Jump_000_3739


Call_010_54c5:
jr_010_54c5:
    ld a, [$d08a]
    ld e, a
    ld d, $08

jr_010_54cb:
    ld a, e
    dec a
    jr z, jr_010_54d5

    ldh a, [$ae]
    sub $02
    jr jr_010_54d9

jr_010_54d5:
    ldh a, [$ae]
    add $02

jr_010_54d9:
    ldh [$ae], a
    call Call_000_20af
    dec d
    jr nz, jr_010_54cb

    call Call_010_54e8
    dec b
    jr nz, jr_010_54c5

    ret


Call_010_54e8:
    push de
    push bc
    push hl
    ldh a, [rBGP]
    xor $3c
    ldh [rBGP], a
    ld hl, $c302
    ld de, $0004
    ld c, $14

jr_010_54f9:
    ld a, [hl]
    xor $40
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_54f9

    pop hl
    pop bc
    pop de
    ret


Call_010_5505:
    ld b, $1c
    ld hl, $5882
    call Call_000_35d6
    call Call_010_5558

Call_010_5510:
    ld hl, $c300
    ld c, $14

jr_010_5515:
    ld a, [$d082]
    add [hl]
    ld [hl+], a
    ld a, [$d081]
    add [hl]
    ld [hl+], a
    inc hl
    inc hl
    dec c
    jr nz, jr_010_5515

    ret


Call_010_5525:
    ld a, [$d08a]
    and a
    jr z, jr_010_5536

    ld bc, $0400
    call Call_010_553f
    ld bc, $000a
    jr jr_010_553f

jr_010_5536:
    ld bc, $00f6
    call Call_010_553f
    ld bc, $fc00

Call_010_553f:
jr_010_553f:
    ld a, b
    ld [$d081], a
    ld a, c
    ld [$d082], a
    ld d, $04

jr_010_5549:
    call Call_010_5510
    call Call_010_54e8
    ld c, $08
    call Call_000_3739
    dec d
    jr nz, jr_010_5549

    ret


Call_010_5558:
    ld hl, $5574
    ld c, $04
    xor a

jr_010_555e:
    push bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    inc a
    push af
    call Call_000_3a97
    pop af
    pop hl
    pop bc
    dec c
    jr nz, jr_010_555e

    ret


    add h
    ld d, l
    ld [$8c08], sp
    ld d, l
    jr jr_010_5584

    sub h
    ld d, l
    ld [$9c18], sp
    ld d, l
    jr jr_010_559c

jr_010_5584:
    jr c, jr_010_5596

    add hl, sp
    db $10
    ld a, [hl-]
    db $10
    dec sp
    db $10
    add hl, sp
    jr nc, @+$3a

    jr nc, jr_010_55cc

    jr nc, @+$3c

    jr nc, jr_010_55cf

    ld d, b

jr_010_5596:
    dec sp
    ld d, b
    jr c, jr_010_55ea

    add hl, sp
    ld d, b

jr_010_559c:
    dec sp
    ld [hl], b
    ld a, [hl-]
    ld [hl], b
    add hl, sp
    ld [hl], b
    jr c, jr_010_5614

Call_010_55a4:
    ld [$cf91], a
    ld [$d0b5], a
    ld [$cf1d], a
    ld b, $0b
    ld c, $00
    call Call_000_3def
    ldh a, [$ba]
    xor $01
    ldh [$ba], a
    call Call_000_1537
    ld hl, $c3cf
    call Call_000_1384
    ld c, $0a
    jp Jump_000_3739


Call_010_55c8:
    ld a, $01
    ldh [$ba], a

jr_010_55cc:
    call Call_000_190f

jr_010_55cf:
    ld a, $e3
    ldh [rLCDC], a
    ld a, $07
    ldh [rWX], a
    xor a
    ldh [$b0], a
    ld a, $90
    ldh [$ae], a
    ret


Jump_010_55df:
    ld c, $32
    call Call_000_3739

jr_010_55e4:
    call Call_000_20af
    ldh a, [rWX]
    inc a

jr_010_55ea:
    inc a
    ldh [rWX], a
    cp $a1
    jr nz, jr_010_55e4

    call Call_010_5196
    ld c, $0a
    call Call_000_3739
    ld a, $07
    ldh [rWX], a
    ret


    ld hl, $560c
    call Call_000_3c49
    ld c, $c8
    call Call_000_3739
    jp Jump_010_55df


    rla
    rst $28
    ld b, b
    ld [hl+], a
    ld d, b
    ld hl, $5623

jr_010_5614:
    call Call_000_3c49
    call Call_010_5191
    ld hl, $5628
    call Call_000_3c49
    jp Jump_010_5191


    rla
    inc bc
    ld b, c
    ld [hl+], a
    ld d, b
    rla
    ld [de], a
    ld b, c
    ld [hl+], a
    ld d, b
    ld hl, $5642
    call Call_000_3c49
    call Call_010_5191
    ld hl, $5647
    call Call_000_3c49
    call Call_010_5191
    jp Jump_010_55df


    rla
    inc h
    ld b, c
    ld [hl+], a
    ld d, b
    rla
    dec sp
    ld b, c
    ld [hl+], a
    ld d, b

Jump_010_564c:
    ld hl, $5655
    call Call_000_3c49
    jp Jump_010_5191


    rla
    ld d, b
    ld b, c
    ld [hl+], a
    ld d, b
    ld hl, $566c
    call Call_000_3c49
    call Call_010_5191
    ld hl, $5671
    call Call_000_3c49
    jp Jump_010_5191


    rla
    ld l, d
    ld b, c
    ld [hl+], a
    ld d, b
    rla
    add b
    ld b, c
    ld [hl+], a
    ld d, b

Call_010_5676:
    ld [$d07c], a
    xor a
    ld [$cc5b], a
    ld a, $08
    jp Jump_000_3e6d


    xor a
    ldh [$b4], a
    inc a
    ldh [$ba], a
    call Call_010_588a
    call Call_010_569d
    call Call_000_20d8
    xor a
    ldh [$ae], a
    ldh [$ba], a
    call Call_000_0082
    call Call_000_20af
    ret


Call_010_569d:
    ld b, $07
    call Call_000_3def
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    xor a
    ldh [$ae], a
    ld b, $03
    call Call_010_583f
    ld a, $00
    ld [$d081], a
    ld a, $50
    ld [$d082], a
    ld bc, $0606
    call Call_010_57c7
    ld de, $28ff
    call Call_010_580e
    ret c

    ld a, $b9
    call Call_000_23b1
    xor a
    ld [$d09f], a
    ld de, $5910
    call Call_010_5793
    ld a, $ba
    call Call_000_23b1
    ld de, $591b
    call Call_010_5793
    ld c, $0a
    call Call_000_12f8
    ret c

    ld a, $b9
    call Call_000_23b1
    ld de, $5910
    call Call_010_5793
    ld a, $ba
    call Call_000_23b1
    ld de, $591b
    call Call_010_5793
    ld c, $1e
    call Call_000_12f8
    ret c

    ld b, $04
    call Call_010_583f
    ld a, $bb
    call Call_000_23b1
    ld de, $0401
    call Call_010_580e
    ld c, $1e
    call Call_000_12f8
    ret c

    ld b, $05
    call Call_010_583f
    ld a, $bc
    call Call_000_23b1
    ld de, $0800
    call Call_010_580e
    ld a, $b9
    call Call_000_23b1
    ld a, $24
    ld [$d09f], a
    ld de, $5926
    call Call_010_5793
    ld c, $1e
    call Call_000_12f8
    ret c

    ld de, $0401
    call Call_010_580e
    ld b, $03
    call Call_010_583f
    ld c, $3c
    call Call_000_12f8
    ret c

    ld a, $b9
    call Call_000_23b1
    xor a
    ld [$d09f], a
    ld de, $5931
    call Call_010_5793
    ld a, $ba
    call Call_000_23b1
    ld de, $593c
    call Call_010_5793
    ld c, $14
    call Call_000_12f8
    ret c

    ld a, $24
    ld [$d09f], a
    ld de, $5947
    call Call_010_5793
    ld c, $1e
    call Call_000_12f8
    ret c

    ld a, $b8
    call Call_000_23b1
    ld a, $48
    ld [$d09f], a
    ld de, $5950
    jp Jump_010_5793


Call_010_5793:
Jump_010_5793:
jr_010_5793:
    ld a, [de]
    cp $50
    ret z

    ld [$d082], a
    inc de
    ld a, [de]
    ld [$d081], a
    push de
    ld c, $24
    call Call_010_57ae
    ld c, $05
    call Call_000_3739
    pop de
    inc de
    jr jr_010_5793

Call_010_57ae:
    ld hl, $c300
    ld a, [$d09f]
    ld d, a

jr_010_57b5:
    ld a, [$d082]
    add [hl]
    ld [hl+], a
    ld a, [$d081]
    add [hl]
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc hl
    inc d
    dec c
    jr nz, jr_010_57b5

    ret


Call_010_57c7:
    ld hl, $c300
    ld d, $00

jr_010_57cc:
    push bc
    ld a, [$d082]
    ld e, a

jr_010_57d1:
    ld a, e
    add $08
    ld e, a
    ld [hl+], a
    ld a, [$d081]
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc d
    dec c
    jr nz, jr_010_57d1

    ld a, [$d081]
    add $08
    ld [$d081], a
    pop bc
    dec b
    jr nz, jr_010_57cc

    ret


Call_010_57f0:
    ld hl, $9c00
    ld bc, $0240
    jr jr_010_57fe

Call_010_57f8:
    ld hl, $c3f0
    ld bc, $00c8

jr_010_57fe:
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_010_57fe

    ret


Call_010_5807:
Jump_010_5807:
    ld a, $01

jr_010_5809:
    ld [hl+], a
    dec c
    jr nz, jr_010_5809

    ret


Call_010_580e:
jr_010_580e:
    ld a, e
    cp $ff
    jr z, jr_010_581d

    cp $01
    jr z, jr_010_582d

    ldh a, [$ae]
    dec a
    dec a
    jr jr_010_5831

jr_010_581d:
    push de
    ld a, $02
    ld [$d081], a
    xor a
    ld [$d082], a
    ld c, $24
    call Call_010_57ae
    pop de

jr_010_582d:
    ldh a, [$ae]
    inc a
    inc a

jr_010_5831:
    ldh [$ae], a
    push de
    ld c, $02
    call Call_000_12f8
    pop de
    ret c

    dec d
    jr nz, jr_010_580e

    ret


Call_010_583f:
    ld hl, $c439

Call_010_5842:
    ld c, $00
    ld a, $31
    jp Jump_000_3e6d


    ld a, $33
    call Call_000_3e6d
    ld a, b
    jp Jump_000_23b1


Call_010_5852:
    ld hl, $5a99
    ld de, $9000
    ld bc, $0600
    ld a, $10
    call Call_000_17f7
    ld hl, $5959
    ld de, $9600
    ld bc, $0140
    ld a, $10
    call Call_000_17f7
    ld hl, $5959
    ld de, $8800
    ld bc, $0140
    ld a, $10
    call Call_000_17f7
    ld hl, $6099
    ld de, $8000
    ld bc, $06c0
    ld a, $10
    jp Jump_000_17f7


Call_010_588a:
    ld b, $0c
    call Call_000_3def
    ld b, $01
    ld hl, $4538
    call Call_000_35d6
    ld a, $e4
    ldh [rBGP], a
    ld c, $b4
    call Call_000_3739
    call Call_000_190f
    call Call_000_0061
    xor a
    ld [$d059], a
    call Call_010_58e9
    call Call_010_5852
    call Call_000_007b
    ld hl, $ff40
    res 5, [hl]
    set 3, [hl]
    ld c, $40
    call Call_000_3739
    ld b, $1c
    ld hl, $4044
    call Call_000_35d6
    push af
    pop af
    jr c, jr_010_58d0

    ld c, $28
    call Call_000_3739

jr_010_58d0:
    ld a, $1f
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, $dc
    ld [$c0ee], a
    call Call_000_23b1
    call Call_010_57f8
    call Call_000_0082
    jp Jump_000_3dd7


Call_010_58e9:
    call Call_010_57f0
    ld hl, $c3a0
    ld c, $50
    call Call_010_5807
    ld hl, $c4b8
    ld c, $50
    call Call_010_5807
    ld hl, $9c00
    ld c, $80
    call Call_010_5807
    ld hl, $9dc0
    ld c, $80
    jp Jump_010_5807


    ret


    nop
    nop
    ld d, b
    nop
    nop
    cp $02
    rst $38
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld d, b
    nop
    nop
    cp $fe
    rst $38
    cp $01
    cp $02
    cp $50
    nop
    nop
    db $f4
    ld b, $f8
    ld b, $08
    ld b, $0c
    ld b, $50
    nop
    nop
    ld hl, sp-$04
    db $fc
    db $fc
    inc b
    db $fc
    ld [$50fc], sp
    nop
    nop
    ld hl, sp+$04
    db $fc
    inc b
    inc b
    inc b
    ld [$5004], sp
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld d, b
    ld hl, sp-$10
    ld sp, hl
    ld a, [c]
    ld a, [$fcf4]
    or $50
    ld a, $3e
    ld h, d
    ld h, d
    ret nz

    ret nz

    adc $ce
    add $c6
    ld h, [hl]
    ld h, [hl]
    ccf
    ccf
    nop
    nop
    jr jr_010_5983

    jr jr_010_5985

    inc l
    inc l
    inc l
    inc l
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    rst $28
    rst $28
    nop
    nop
    rst $20
    rst $20
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld e, e
    ld e, e

jr_010_5983:
    ld e, e
    ld e, e

jr_010_5985:
    set 1, e
    nop
    nop
    cp $fe
    ld h, d
    ld h, d
    ld a, h
    ld a, h
    ld h, h
    ld h, h
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    cp $fe
    nop
    nop
    db $fc
    db $fc
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld a, h
    ld a, h
    ld h, h
    ld h, h
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    or $f6
    inc bc
    inc bc
    rst $28
    rst $28
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld a, b
    ld l, h
    ld l, h
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    dec de
    dec de
    ld e, $1e
    jr jr_010_59ed

    jr jr_010_59ef

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, l
    ld l, l
    ld l, l
    ld a, c
    ld a, c
    ld l, l
    ld l, l
    ld h, l
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_59ed:
    rst $20
    rst $20

jr_010_59ef:
    adc h
    adc h
    rst $28
    rst $28
    add e
    add e
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld a, d
    ld h, e
    ld h, e
    ld a, e
    ld a, e
    ld h, e
    ld h, e
    ld a, e
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld l, a
    ld h, [hl]
    ld h, [hl]
    and $e6
    ld h, [hl]
    ld h, [hl]
    ld h, $26
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_010_5a57

    ld h, b
    ld h, b
    ld a, b
    ld a, b
    jr jr_010_5a3d

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ld b, $00
    rrca
    nop
    dec c
    nop
    inc e
    nop
    inc e
    nop
    dec e
    nop
    add hl, de
    nop
    dec sp
    nop
    nop
    nop
    add b

jr_010_5a3d:
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    dec sp
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    dec de
    nop
    dec sp
    nop
    dec e

jr_010_5a57:
    nop
    dec l
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_010_5a60

jr_010_5a60:
    jr c, jr_010_5a62

jr_010_5a62:
    cp b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    inc l
    nop
    ld e, $00
    rla
    nop
    rrca
    nop
    rla
    nop
    cpl
    nop
    ld a, $00
    nop
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    and b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0302
    ld [bc], a
    nop
    inc bc
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    dec b
    ld b, $0a
    dec c
    dec c
    ld a, [bc]
    ld [de], a
    dec e
    ld bc, $203f
    ccf
    ld [bc], a
    ld a, a
    ld c, d
    ld a, a
    ld d, h
    rst $38
    xor h
    rst $38
    call nc, $e8ff
    rst $38
    ld hl, sp-$01
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    jr nc, jr_010_5b2e

    db $10
    rra
    dec d
    rra
    ld a, [bc]
    ccf
    dec [hl]
    ccf
    ld a, [hl+]
    ccf
    ret nz

    ld h, b
    ret c

    inc a
    di
    rrca
    xor b
    ld d, a
    ld d, c
    xor a
    and b
    rst $18
    pop bc
    cp a
    ld a, [bc]
    rst $38
    ld d, l
    ld a, a
    ld l, e
    ld a, a
    scf
    ld a, a
    ld a, $3f
    inc a
    ccf
    jr c, jr_010_5b54

    jr nc, jr_010_5b56

    jr nc, jr_010_5b58

    ld h, l
    ld a, d
    xor d
    push af
    push de
    ld l, d
    ld a, [bc]
    push af
    sub h
    db $eb
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d

jr_010_5b2e:
    rst $38
    ld [$15ff], sp
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    nop
    nop
    nop
    nop

jr_010_5b4d:
    add b
    ret nz

    jr c, jr_010_5b4d

    ld b, e
    rst $38
    and a

jr_010_5b54:
    rst $38
    ld e, h

jr_010_5b56:
    rst $38
    cp e

jr_010_5b58:
    db $f4
    ld b, l
    ld a, [$f58a]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$05ff], sp
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    adc d
    ld a, a
    ld de, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fc03
    rst $38
    add b
    rst $38
    db $fc
    inc bc
    add sp, $17
    ld d, l
    xor e
    and d
    ld e, a
    ld bc, $02ff
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0d03
    ld e, $22
    ld a, l
    add c
    cp $00
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a

jr_010_5bee:
    rst $38
    rst $28
    rst $38
    ld e, [hl]
    rst $38
    cp [hl]
    rst $38
    ld e, [hl]
    cp $aa
    cp $57
    rst $38
    cp d
    rst $38
    ld [hl], c
    cp $e2
    db $fd
    ld d, c
    cp $a2
    db $fd
    ld d, c
    cp $a8
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor $ff
    rst $18
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    sub $ff
    xor [hl]
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_5c31:
    nop
    nop
    nop
    nop
    jr jr_010_5c73

    ld l, b
    call c, $9878
    ret nc

    jr c, jr_010_5bee

    ld d, b
    jr nz, jr_010_5c31

    ld h, b
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    add b
    ld h, b
    ldh [rNR41], a
    and b
    ld d, b
    ld d, b
    or b
    db $10
    ldh a, [rNR10]
    ld hl, sp-$58
    ld hl, sp+$56
    cp $a9
    rst $38
    ld d, h
    rst $38

jr_010_5c73:
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    ld h, a
    ld a, a
    dec c
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    ld b, b
    ret nz

    nop
    ldh [$30], a
    ldh a, [$28]
    add sp, -$10
    add sp, -$50
    ldh a, [$a0]
    ldh [$50], a
    ret nc

    ret nc

    sub b
    ldh [$d0], a
    jr nz, jr_010_5cc9

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rrca
    jr nc, @+$1c

    dec d
    inc c
    dec bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_5cc9:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    rlca
    inc b
    ld c, $09
    dec e
    ld [de], a
    ld a, [de]
    dec h
    inc [hl]
    dec hl
    ld b, c
    ld a, a
    ld l, d
    ld a, a
    ld d, l
    rst $38
    xor d
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    rrca
    rra
    inc bc
    rrca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0f07
    ld [hl], e
    cp $af
    ld d, h
    ld e, [hl]
    xor l
    adc b
    ld a, a
    jr z, @+$01

    ld [hl], b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld [hl], l
    rst $38
    ld h, d
    ld a, a
    inc h
    ccf
    nop
    ld a, a
    ld d, l
    ld l, d
    jp z, $94f5

    ei
    ld [$10f7], sp
    rst $38
    nop
    rst $38
    dec [hl]
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    ld [$75ff], a
    rst $38
    ld [$e5ff], a
    rst $38
    ld [$d7ff], a
    rst $38
    set 7, a
    rst $10
    rst $38
    set 7, a
    push de
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    adc a
    rst $38
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $07
    add hl, bc
    rra
    ld [hl+], a
    ld a, a
    dec d
    rst $28
    ld [c], a
    sbc a
    pop af
    rrca
    ld [c], a
    rra
    pop de
    cpl
    and d
    ld e, a
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $0aff
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    db $10
    jr @+$0a

    jr c, jr_010_5dd6

    inc l
    inc [hl]
    ld c, h
    ld a, h
    ld b, h
    ld [$82f6], sp
    cp $02
    cp $00
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ld d, [hl]
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, a

jr_010_5dd6:
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    add b
    add e
    add h
    add a
    add h
    add a
    ld c, b
    rst $08
    ld c, c
    rst $28
    ld a, [c]
    rst $38
    pop hl
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    xor d
    rst $38
    rst $10
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
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
    db $10
    db $10
    jr nz, @+$2a

    ld l, b
    ld c, b
    ld l, c
    ld a, c
    sub $ae
    xor e
    ld d, h
    ld d, l
    xor e
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld e, l
    rst $38
    ld a, [$fefe]
    cp $ea
    cp $f6
    cp $e8
    cp $f4
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    db $fc
    add sp, -$02
    db $f4
    cp $ea
    cp $d6
    cp $ea
    cp $56
    cp $aa
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    push de
    rst $38
    db $eb
    rst $38
    nop
    nop
    nop
    add b
    ld b, b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    ld c, c
    ld l, a
    sbc l
    sub d
    ld a, [$40a5]
    rst $38
    ld b, b
    ld a, a
    ld l, b
    ld a, a
    push af
    cp a
    ld l, d
    ld a, a
    ld [hl], l
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rrca
    ld [bc], a
    rlca
    inc b
    rlca
    ld [$100f], sp
    rra
    ld [$110f], sp
    rra
    ld [de], a
    rra
    ld bc, $223f
    ccf
    dec h
    ccf
    ld a, [bc]
    ld a, a
    ld b, l
    ld a, a
    ld c, d
    ld a, a
    dec d
    rst $38
    xor e
    rst $38
    rst $10

jr_010_5ec8:
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    ret nz

    ld b, c
    pop bc
    jr nz, jr_010_5ec8

    inc e
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld [$c5f5], a
    ld a, [$f5ca]
    add l
    ld a, [$fd02]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
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
    ld b, $06
    ld b, $09
    rrca
    add hl, bc
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [de]
    ld [$101f], sp
    rra
    ld a, [de]
    rra
    dec d
    rra
    dec de
    ccf
    scf
    ccf
    jr c, jr_010_5f6a

    ld h, c
    ld a, [hl]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $2aff
    rst $38
    dec d
    rst $38
    xor d
    ld a, a
    dec d
    rst $38
    adc b
    ld a, a
    dec d
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_010_5f6a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$50], a
    ldh a, [$b8]
    ld hl, sp+$7c
    cp $ff
    rst $38
    cp a
    ret nz

    rst $38
    nop
    ld d, l
    xor d
    ld a, [hl+]
    push de
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ld e, a
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
    add b
    ldh [$b0], a
    ld a, b
    ld b, a
    cp a
    add d
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $eb
    rst $38
    sub $ff
    ld [$00fe], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    ld a, $79
    push af
    adc d
    xor b
    ld d, a
    dec b
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$04
    rst $20
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [$fdff]
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    ld a, h
    add $fe
    ld a, [hl+]
    cp $54
    db $fc
    cp b
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    add sp, $20
    db $f4
    inc e
    db $fc
    ld b, d
    cp $ac
    db $fd
    ld d, l
    db $fd
    xor [hl]
    cp $fc
    db $fc
    ld hl, sp-$0e
    ld a, [$c4fa]
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    dec bc
    ld a, [bc]
    inc c
    dec c
    dec b
    dec b
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld b, $04
    dec e
    inc a
    ld e, a
    ld b, b
    ccf
    jr nc, jr_010_6143

    db $10
    rlca
    ld [$080f], sp
    inc bc

jr_010_612a:
    inc b
    rlca
    dec b
    ccf
    ccf
    nop
    ld b, b
    inc e
    jr nc, @+$09

    inc c
    rrca
    dec bc
    rra
    jr jr_010_618a

    ldh a, [$80]
    ld h, b
    push af
    jr nz, jr_010_612a

    db $10
    ccf
    sub b

jr_010_6143:
    rst $38
    ld hl, sp-$19
    and a
    ld b, b
    ld h, b
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc bc
    inc b
    ld [$0708], sp
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr nc, jr_010_61b4

    ld c, b
    nop
    add h
    add h
    add h
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0151
    xor c
    ld bc, $0155
    db $eb
    ld bc, $01fd
    rst $38

jr_010_6184:
    ld [bc], a
    add sp, $18
    ret nz

    ld h, b
    nop

jr_010_618a:
    add b
    add b
    add b
    ld h, b
    ret nz

    ld a, b
    ld b, b
    ld a, b
    ld b, b
    xor c
    ld b, c
    ld d, a
    add e
    xor l
    dec b
    db $f4
    rrca
    db $10
    ld [$c1c1], sp
    add e
    add d
    dec de
    inc e
    ld e, [hl]
    ld h, b
    ei
    add e
    db $fd
    cp $82
    rst $38
    jr z, jr_010_6184

    call nc, Call_010_782b
    add a
    cp [hl]
    ld b, e
    ret c

jr_010_61b4:
    inc a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc h
    inc h
    inc c
    ld e, h
    ld e, b
    ld e, b
    db $10
    sub b
    or c
    or e
    ld [hl+], a
    daa
    ld b, h
    ld b, a
    ld b, b
    ld c, a
    ld [$080f], sp
    rrca
    ld c, b
    ld c, a
    add h
    rst $00
    add e
    inc hl
    add b
    jr nz, jr_010_6218

    nop
    add b
    nop
    jr nz, jr_010_6275

    sub b
    sub b
    ret nc

    ld d, b
    jr nz, @+$33

    ld e, h
    ld h, d
    ld a, c
    add h
    or $08
    rst $38
    nop
    adc e
    db $fc
    ld a, [hl]
    ld hl, sp-$7a
    adc b
    rlca
    inc b
    ld a, [bc]
    dec c
    ld [de], a
    ld d, $0d

jr_010_6218:
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0602
    ld [$2018], sp
    ld h, b
    add b
    add b
    rlca
    rlca
    db $10
    rra
    nop
    ccf
    ld b, b
    rst $38
    nop

jr_010_6242:
    rst $38
    or b
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    ld b, $fe
    inc c
    db $fc
    ld e, $f8
    ccf
    ldh a, [$ef]
    ret c

    rst $10
    inc b
    pop hl
    ld [bc], a
    ld b, b
    add c
    nop
    add b
    ld [bc], a
    nop
    dec b
    nop
    ld b, d
    ret nz

    dec b
    jr nz, jr_010_6286

    jr nz, jr_010_6266

jr_010_6266:
    db $10
    ld e, d
    db $10
    cp l
    ret nc

    inc a
    ld [hl+], a
    dec de
    inc h
    ld a, a
    ld c, h
    rst $30
    ld [hl], h
    inc hl
    and d

jr_010_6275:
    sub c
    sub c
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_6286:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld [hl], b
    add b
    adc b
    db $10
    stop
    db $10
    jr nz, jr_010_62b7

    jr nc, jr_010_62c9

    ld [$9008], sp
    sub b
    and b
    and b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld [hl], b
    ld [$9008], sp
    db $10
    ld h, b
    jr nz, jr_010_6242

    db $10
    ld b, b
    ld [$0898], sp

jr_010_62b7:
    ldh a, [$30]
    jr nz, jr_010_631b

    jr nc, @+$1a

    ld a, h
    ld h, $88
    ld de, $315d
    add a
    add hl, bc
    ld c, $4a
    inc b
    add h

jr_010_62c9:
    inc b
    add h
    ld [bc], a
    ld a, [hl-]
    add d
    ld a, [hl-]
    ld b, d
    ld [hl-], a
    add d
    ld [bc], a
    ld a, [$a43a]
    ld b, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    nop
    ld [$080d], sp
    ld a, [hl-]
    ld a, b
    cp a
    add b
    ld a, a
    ld h, b
    ccf
    jr nz, jr_010_6329

    db $10
    rra
    db $10
    rrca
    ld [$0407], sp
    ld b, $05
    inc bc
    inc bc
    ld b, $07
    rrca
    jr jr_010_6352

    ld h, b

jr_010_631b:
    nop
    add b
    ld a, [hl]
    ld a, a
    rra
    db $10
    ld hl, $0020
    ld b, b
    ld l, e
    ld b, c
    ld d, l
    ld h, c

jr_010_6329:
    ld a, $a0
    sbc [hl]
    sub b
    rst $38
    xor a
    ld h, h
    ld e, h
    jr c, jr_010_636b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_010_63af

    sub b
    sub b
    nop

jr_010_6352:
    ld [$0808], sp
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    and e
    inc bc
    ld d, d
    ld [bc], a
    xor d
    ld [bc], a
    sub $06
    ei
    dec bc
    cp $0a
    ld [c], a
    db $10

jr_010_636b:
    push af
    db $10
    jp $8020


    ret nz

    nop
    nop
    nop
    nop
    ret nz

    nop
    ld [hl], b
    add b
    pop af
    add c
    db $d3
    add d
    xor a
    add [hl]
    ld e, b
    ld [$1ee9], sp
    jr nz, jr_010_6395

    add e
    add e
    rlca
    inc b
    ld [hl], $38
    cp h
    ret nz

    rst $30
    rlca
    ld sp, hl
    rst $38
    ld c, h
    ld [hl], e
    ld d, [hl]
    ld c, l

jr_010_6395:
    db $fd
    add e
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_63af:
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld d, b
    ld d, h
    adc b
    xor c
    and c
    and e
    ld [hl+], a
    inc hl
    ld h, h
    ld h, a
    ld b, h
    ld b, a
    ld c, e
    ld c, a
    inc c
    adc a
    adc b
    adc a
    add b
    sbc a
    sub b
    sbc a
    sub b
    sbc a
    sub b
    sbc a
    add hl, bc
    adc a
    ld b, $07
    nop
    nop
    add b
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    ld c, d
    ldh [$35], a
    ld hl, $a1be
    ld e, l
    ld h, d
    add b
    rst $38
    db $f4
    rst $38
    ld a, a
    rst $38
    or b
    ldh a, [rLCDC]
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, de
    add hl, de
    ld [hl+], a
    ld h, d
    add d
    add d
    inc b
    inc b
    ld b, $06
    jr nc, @+$33

    ld c, d
    ld a, [$fa8a]
    inc b
    db $fc
    dec b
    db $fd
    ld b, $fe
    inc b
    db $fc
    ld c, b
    ld hl, sp+$28
    ld hl, sp+$1a
    ld hl, sp+$15
    cp $39
    pop af
    ld [hl], b
    ldh [rBCPS], a
    ret nz

    ret nc

    add b
    nop
    add b
    ld bc, $0080
    ld b, b
    ld bc, $0040
    nop
    dec b
    nop
    dec sp
    jr nc, @+$08

    ld c, l
    ld a, [bc]
    sbc [hl]
    pop hl
    ld hl, $2686
    xor c
    ld c, c
    ld a, [$324e]
    cp $89
    ld sp, hl
    ccf
    add hl, sp
    rlca
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    sub b
    cp b
    adc b
    ret z

    ld b, b
    db $10
    or b
    db $10
    ld c, b
    ld [$04a0], sp
    call z, Call_010_7884
    inc e
    inc e
    ld [hl-], a
    sbc [hl]
    ld [bc], a
    ld e, [hl]
    ld [de], a
    and h
    inc c
    ld d, h
    inc c
    or b
    inc b
    or h
    ld a, h
    inc b
    adc h
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    add b
    add d
    jp nz, Jump_010_42ba

    ld a, d
    ld b, d
    ld [hl], d
    or $82
    jp z, $fc02

    ld a, d
    inc b
    add h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ccf
    ccf
    nop
    ld b, b
    inc e
    jr nc, @+$09

    inc c
    rrca
    dec bc
    ld e, $10
    inc de
    jr nc, @+$45

    ld b, e
    ld [bc], a
    add d
    call nc, Call_010_6880
    add b
    ld a, a
    ld b, e
    dec a
    dec a
    ld b, $07
    ld e, $39
    ld e, a
    ld d, b
    ld [hl], a
    ld a, d
    dec l
    dec l
    dec d
    dec [hl]
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc b
    nop
    ld [$0808], sp
    nop
    db $10
    ld de, $0a10
    jr nz, jr_010_65cd

    jr nz, @-$04

    ret nz

    cp $01
    db $fd
    inc bc
    ld a, b
    adc h
    sub b
    ldh a, [rLCDC]
    ret nz

    ld h, e
    ld b, c
    ld h, d
    add d
    ld d, [hl]
    add h
    db $ec
    inc c
    or b
    ld de, $1ed8
    db $10
    db $10
    ld bc, $1f01
    rra
    ld l, d
    rst $38
    ld [hl], h
    ld a, a
    ld hl, sp-$61
    db $fd
    ld a, [de]
    ld a, [$7515]
    sbc d
    and b
    rst $38
    ld hl, $d6ff
    sub $08
    ld [$0706], sp

jr_010_65cd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$62

    add b
    sub b
    nop
    db $10
    db $10
    stop
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld a, [bc]
    xor h
    inc c
    ld d, h
    inc d
    ret z

    ret


    ld d, c
    ld [hl], c
    jr nc, jr_010_6632

    ld a, [de]
    dec de
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld c, e
    add c
    add c
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    ld h, b

jr_010_6614:
    ldh [$30], a
    ld [hl-], a
    or c
    or c
    ld h, c
    pop hl
    inc hl
    ld [c], a
    daa
    db $e4
    ld b, e
    call nz, $c84f
    add a
    sbc c
    add d
    sbc [hl]
    ld [hl-], a
    ld a, $89
    rst $08
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $0103

jr_010_6632:
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0602
    ld c, b
    ld e, b
    jr nz, @-$5e

    add c
    add c
    inc b
    rlca
    nop
    rrca
    db $10
    ccf
    inc a
    ccf
    ld b, d
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $fe
    dec c
    db $fd
    dec sp
    or $f5
    pop bc
    jr jr_010_668b

    db $10
    jr nz, jr_010_666e

jr_010_666e:
    stop
    stop
    nop
    nop
    nop
    nop
    rrca
    nop
    db $10
    ld d, b
    jr nz, jr_010_6614

    ld h, $e0
    ld a, c
    sbc b
    sub b
    rst $28
    ei
    rst $20
    dec d
    xor $96
    db $db
    ld [$fc3f], a

jr_010_668b:
    dec b
    ld a, [$fd02]
    ret nz

    rst $38
    cp a
    ld a, a
    rst $30
    sbc a
    ld a, d
    xor $1c
    inc a
    nop
    nop

jr_010_669b:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_010_66bf

    jr nz, jr_010_6707

    add h
    add h
    nop
    inc b
    ld [$0c08], sp
    inc c
    jp nz, Jump_000_24c2

    db $e4
    jr z, jr_010_669b

    db $10
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rLCDC]
    ret nz

    ld b, b
    ret nz

    add b
    add h

jr_010_66bf:
    ld l, d
    ld l, d
    or d
    or d
    jp nz, $d003

    nop
    jp hl


    ld bc, $8276
    add hl, sp
    ld b, c
    inc d
    db $10
    add hl, sp
    nop
    rlca
    dec bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add d
    ld bc, $5143
    ld b, b
    ld l, e
    ld b, c
    ld d, h
    ret nz

    xor d
    add c
    inc d
    nop
    nop
    ld [bc], a
    ret nc

    inc b
    add sp, $04
    ld h, b
    sub c
    sbc h
    ld h, e
    ld hl, sp-$1d
    inc a
    jr nz, jr_010_6712

    jr jr_010_66fb

    rlca
    nop
    nop
    nop
    nop

jr_010_66fb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_6707:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_6712:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    ld h, b
    ld b, b
    sub b
    ret nc

    sub b
    jr nc, jr_010_6795

    ld h, b
    ld h, b
    jr nz, jr_010_6769

    jr nz, @+$22

    db $10
    db $10
    db $10
    sub b
    db $10
    sub b
    jr nc, jr_010_6783

    ret nc

    ret nc

    db $10
    db $10
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_6769:
jr_010_6769:
    ld hl, $c3a5
    ld de, $67e5
    call Call_000_1955
    ld a, [$cd3d]
    ld [$d11e], a
    ld a, $3a
    call Call_000_3e6d
    ld hl, $c3a9
    ld de, $d11e

jr_010_6783:
    ld bc, $8103
    call Call_000_3c5f
    ld hl, $c3cd
    ld de, $cf4b
    call Call_000_1955
    ld hl, $c3f8

jr_010_6795:
    ld de, $cd41
    call Call_000_1955
    ld hl, $c420
    ld de, $cd4c
    ld bc, $8205
    jp Jump_000_3c5f


Call_010_67a7:
    ld hl, $c46d
    ld de, $67e5
    call Call_000_1955
    ld a, [$cd3e]
    ld [$d11e], a
    ld a, $3a
    call Call_000_3e6d
    ld hl, $c471
    ld de, $d11e
    ld bc, $8103
    call Call_000_3c5f
    ld hl, $c495
    ld de, $cd6d
    call Call_000_1955
    ld hl, $c4c0
    ld de, $cd4e
    call Call_000_1955
    ld hl, $c4e8
    ld de, $cd59
    ld bc, $8205
    jp Jump_000_3c5f


    ld a, d
    ld a, d
    ld [hl], h
    ld a, [c]
    ld c, [hl]
    ld c, [hl]
    adc [hl]
    sub e
    di
    ld c, [hl]
    ld [hl], e
    ld [hl], h
    ld a, [c]
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

Call_010_6880:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_782b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_7884:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
