; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    jr jr_00f_401b

    inc e
    ld l, $2f
    ld sp, $3938
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, a
    ld d, d
    ld d, h
    ld d, l
    rst $38
    jr z, jr_00f_403c

    rst $38
    ld bc, $0b0a
    inc c
    dec c
    ld c, $0f

jr_00f_401b:
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld a, [de]
    jr nz, @+$34

    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $38
    inc bc
    rlca
    ld [$1d10], sp
    ld e, $2c
    jr nc, @+$4f

    ld d, c
    rst $38
    inc bc

jr_00f_403c:
    rlca
    ld [$1110], sp
    dec e
    ld e, $27
    jr z, @+$2b

    dec hl
    inc l
    dec l
    jr nc, @+$1d

    ld a, [hl+]
    rst $38

Call_00f_404c:
    call Call_00f_6c92
    ld a, $01
    ld [$d125], a
    call Call_000_30e8
    ld hl, $c405
    ld bc, $0307
    call Call_000_18c4
    call Call_000_0061
    call Call_000_3680
    call Call_00f_6e58
    ld hl, $9800
    ld bc, $0400

jr_00f_406f:
    ld a, $7f
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00f_406f

    ld hl, $c3a0
    ld de, $9800
    ld b, $12

jr_00f_407f:
    ld c, $14

jr_00f_4081:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_00f_4081

    ld a, $0c
    add e
    ld e, a
    jr nc, jr_00f_408e

    inc d

jr_00f_408e:
    dec b
    jr nz, jr_00f_407f

    call Call_000_007b
    ld a, $90
    ldh [$b0], a
    ldh [rWY], a
    xor a
    ldh [$d7], a
    ldh [$af], a
    dec a
    ld [$cfcb], a
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ld b, $70
    ld c, $90
    ld a, c
    ldh [$ae], a
    call Call_000_20af
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a

jr_00f_40bb:
    ld h, b
    ld l, $40
    call Call_00f_4110
    inc b
    inc b
    ld h, $00
    ld l, $60
    call Call_00f_4110
    call Call_00f_40ff
    ld a, c
    ldh [$ae], a
    dec c
    dec c
    jr nz, jr_00f_40bb

    ld a, $01
    ldh [$ba], a
    ld a, $31
    ldh [$e1], a
    ld hl, $c405
    ld a, $01
    call Call_000_3e6d
    xor a
    ldh [$b0], a
    ldh [rWY], a
    inc a
    ldh [$ba], a
    call Call_000_3dd7
    ld b, $01
    call Call_000_3def
    call Call_000_008d
    ld hl, $4d99
    ld b, $16
    jp Jump_000_35d6


Call_00f_40ff:
    push bc
    ld hl, $c301
    ld c, $15
    ld de, $0004

jr_00f_4108:
    dec [hl]
    dec [hl]
    add hl, de
    dec c
    jr nz, jr_00f_4108

    pop bc
    ret


Call_00f_4110:
jr_00f_4110:
    ldh a, [rLY]
    cp l
    jr nz, jr_00f_4110

    ld a, h
    ldh [rSCX], a

jr_00f_4118:
    ldh a, [rLY]
    cp h
    jr z, jr_00f_4118

    ret


Call_00f_411e:
    xor a
    ld [$d058], a
    ld [$ccf5], a
    ld [$cd6a], a
    inc a
    ld [$d11d], a
    ld hl, $d8a5
    ld bc, $002b
    ld d, $03

jr_00f_4134:
    inc d
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_413c

    add hl, bc
    jr jr_00f_4134

jr_00f_413c:
    ld a, d
    ld [$cc3e], a
    ld a, [$d057]
    dec a
    call nz, Call_00f_492a
    ld c, $28
    call Call_000_3739
    call Call_000_3719

jr_00f_414f:
    call Call_00f_4a83
    ld a, d
    and a
    jp z, Jump_00f_4837

    call Call_000_3725
    ld a, [$d05a]
    and a
    jp z, Jump_00f_41ad

jr_00f_4161:
    call Call_00f_4eb3
    ret c

    ld a, [$cd6a]
    and a
    jr z, jr_00f_4161

    ld a, [$da47]
    and a
    jr nz, jr_00f_417a

    call Call_000_3725
    ld hl, $41a8
    jp Jump_000_3c49


jr_00f_417a:
    ld hl, $4277
    ld b, $01
    call Call_000_35d6
    ld a, [$cffb]
    add a
    ld b, a
    jp c, Jump_00f_4202

    ld a, [$cce9]
    and a
    jr z, jr_00f_4194

    srl b
    srl b

jr_00f_4194:
    ld a, [$cce8]
    and a
    jr z, jr_00f_41a0

    sla b
    jr nc, jr_00f_41a0

    ld b, $ff

jr_00f_41a0:
    call Call_000_3e5c
    cp b
    jr nc, jr_00f_414f

    jr jr_00f_4202

    rla
    add hl, sp
    ld d, [hl]
    ld [hl+], a
    ld d, b

Jump_00f_41ad:
    xor a
    ld [$cf92], a

jr_00f_41b1:
    call Call_00f_4a97
    jr nz, jr_00f_41bc

    ld hl, $cf92
    inc [hl]
    jr jr_00f_41b1

jr_00f_41bc:
    ld a, [$cf92]
    ld [$cc2f], a
    inc a
    ld hl, $d163
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$cf91], a
    ld [$cfd9], a
    call Call_000_3725
    ld hl, $c405
    ld a, $09
    call Call_00f_48df
    call Call_000_3719
    ld a, [$cf92]
    ld c, a
    ld b, $01
    push bc
    ld hl, $d058
    ld a, $10
    call Call_000_3e6d
    ld hl, $ccf5
    pop bc
    ld a, $10
    call Call_000_3e6d
    call Call_00f_4ba6
    call Call_000_3725
    call Call_00f_4c91
    jr jr_00f_4233

Jump_00f_4202:
jr_00f_4202:
    call Call_000_3725
    ld a, [$d12b]
    cp $04
    ld hl, $4229
    jr nz, jr_00f_4216

    xor a
    ld [$cf0b], a
    ld hl, $422e

jr_00f_4216:
    call Call_000_3c49
    ld a, $97
    call Call_000_3740
    xor a
    ldh [$f3], a
    ld hl, $52b9
    ld b, $1e
    jp Jump_000_35d6


    rla
    ld h, [hl]
    ld d, [hl]
    ld [hl+], a
    ld d, b
    rla
    ld [hl], a
    ld d, [hl]
    ld [hl+], a
    ld d, b

Jump_00f_4233:
jr_00f_4233:
    call Call_00f_4d43
    ld hl, $d015
    ld a, [hl+]
    or [hl]
    jp z, Jump_00f_4700

    ld hl, $cfe6
    ld a, [hl+]
    or [hl]
    jp z, Jump_00f_4525

    call Call_000_3719
    xor a
    ld [$d11d], a
    ld a, [$d063]
    and $60
    jr nz, jr_00f_42a6

    ld hl, $d067
    res 3, [hl]
    ld hl, $d062
    res 3, [hl]
    ld a, [hl]
    and $12
    jr nz, jr_00f_42a6

    call Call_00f_4eb3
    ret c

    ld a, [$d078]
    and a
    ret nz

    ld a, [$d018]
    and $27
    jr nz, jr_00f_42a6

    ld a, [$d062]
    and $21
    jr nz, jr_00f_42a6

    ld a, [$d067]
    bit 5, a
    jr z, jr_00f_4288

    ld a, $ff
    ld [$ccdc], a
    jr jr_00f_42a6

jr_00f_4288:
    ld a, [$cd6a]
    and a
    jr nz, jr_00f_42a6

    ld [$ccdb], a
    inc a
    ld [$d07c], a
    xor a
    ld [$cc35], a
    call Call_00f_5219
    push af
    call Call_000_3725
    call Call_00f_4d5a
    pop af
    jr nz, jr_00f_4233

jr_00f_42a6:
    call Call_00f_5564
    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_42e5

    ld a, [$cc3e]
    cp $0f
    jp z, Jump_00f_4202

    cp $0e
    jr z, jr_00f_42e5

    cp $0d
    jr z, jr_00f_42e5

    sub $04
    jr c, jr_00f_42e5

    ld a, [$d062]
    bit 5, a
    jr z, jr_00f_42dd

    ld a, [$cc2e]
    ld hl, $d01c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $76
    jr nz, jr_00f_42dd

    ld [$ccdc], a

jr_00f_42dd:
    ld hl, $674b
    ld b, $0e
    call Call_000_35d6

jr_00f_42e5:
    ld a, [$ccdc]
    cp $62
    jr nz, jr_00f_42f6

    ld a, [$ccdd]
    cp $62
    jr z, jr_00f_4314

    jp Jump_00f_437d


jr_00f_42f6:
    ld a, [$ccdd]
    cp $62
    jr z, jr_00f_433d

    ld a, [$ccdc]
    cp $44
    jr nz, jr_00f_430d

    ld a, [$ccdd]
    cp $44
    jr z, jr_00f_4314

    jr jr_00f_433d

jr_00f_430d:
    ld a, [$ccdd]
    cp $44
    jr z, jr_00f_437d

jr_00f_4314:
    ld de, $d029
    ld hl, $cffa
    ld c, $02
    call Call_000_3a8e
    jr z, jr_00f_4325

    jr nc, jr_00f_437d

    jr jr_00f_433d

jr_00f_4325:
    ldh a, [$aa]
    cp $02
    jr z, jr_00f_4334

    call Call_00f_6e9b
    cp $80
    jr c, jr_00f_437d

    jr jr_00f_433d

jr_00f_4334:
    call Call_00f_6e9b
    cp $80
    jr c, jr_00f_433d

    jr jr_00f_437d

jr_00f_433d:
    ld a, $01
    ldh [$f3], a
    ld hl, $652e
    ld b, $0e
    call Call_000_35d6
    jr c, jr_00f_4358

    call Call_00f_66bc
    ld a, [$d078]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_4700

jr_00f_4358:
    call Call_00f_43bd
    jp z, Jump_00f_4525

    call Call_00f_4d5a
    call Call_00f_565e
    ld a, [$d078]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_4525

    call Call_00f_43bd
    jp z, Jump_00f_4700

    call Call_00f_4d5a
    call Call_00f_450f
    jp Jump_00f_4233


Jump_00f_437d:
jr_00f_437d:
    call Call_00f_565e
    ld a, [$d078]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_4525

    call Call_00f_43bd
    jp z, Jump_00f_4700

    call Call_00f_4d5a
    ld a, $01
    ldh [$f3], a
    ld hl, $652e
    ld b, $0e
    call Call_000_35d6
    jr c, jr_00f_43ae

    call Call_00f_66bc
    ld a, [$d078]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_4700

jr_00f_43ae:
    call Call_00f_43bd
    jp z, Jump_00f_4525

    call Call_00f_4d5a
    call Call_00f_450f
    jp Jump_00f_4233


Call_00f_43bd:
    ld hl, $d015
    ld de, $d018
    ldh a, [$f3]
    and a
    jr z, jr_00f_43ce

    ld hl, $cfe6
    ld de, $cfe9

jr_00f_43ce:
    ld a, [de]
    and $18
    jr z, jr_00f_43ef

    push hl
    ld hl, $442e
    ld a, [de]
    and $10
    jr z, jr_00f_43df

    ld hl, $4433

jr_00f_43df:
    call Call_000_3c49
    xor a
    ld [$cc5b], a
    ld a, $ba
    call Call_00f_6f07
    pop hl
    call Call_00f_443d

jr_00f_43ef:
    ld de, $d063
    ldh a, [$f3]
    and a
    jr z, jr_00f_43fa

    ld de, $d068

jr_00f_43fa:
    ld a, [de]
    add a
    jr nc, jr_00f_4421

    push hl
    ldh a, [$f3]
    push af
    xor $01
    ldh [$f3], a
    xor a
    ld [$cc5b], a
    ld a, $47
    call Call_00f_6f07
    pop af
    ldh [$f3], a
    pop hl
    call Call_00f_443d
    call Call_00f_44a3
    push hl
    ld hl, $4438
    call Call_000_3c49
    pop hl

jr_00f_4421:
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_00f_4d5a
    ld c, $14
    call Call_000_3739
    xor a
    ret


    rla
    adc c
    ld d, [hl]
    ld [hl+], a
    ld d, b
    rla
    sbc l
    ld d, [hl]
    ld [hl+], a
    ld d, b
    rla
    or e
    ld d, [hl]
    ld [hl+], a
    ld d, b

Call_00f_443d:
    push hl
    push hl
    ld bc, $000e
    add hl, bc
    ld a, [hl+]
    ld [$ceea], a
    ld b, a
    ld a, [hl]
    ld [$cee9], a
    ld c, a
    srl b
    rr c
    srl b
    rr c
    srl c
    srl c
    ld a, c
    and a
    jr nz, jr_00f_445e

    inc c

jr_00f_445e:
    ld hl, $d064
    ld de, $d06c
    ldh a, [$f3]
    and a
    jr z, jr_00f_446f

    ld hl, $d069
    ld de, $d071

jr_00f_446f:
    bit 0, [hl]
    jr z, jr_00f_447f

    ld a, [de]
    inc a
    ld [de], a
    ld hl, $0000

jr_00f_4479:
    add hl, bc
    dec a
    jr nz, jr_00f_4479

    ld b, h
    ld c, l

jr_00f_447f:
    pop hl
    inc hl
    ld a, [hl]
    ld [$ceeb], a
    sub c
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceec], a
    sbc b
    ld [hl], a
    ld [$ceee], a
    jr nc, jr_00f_449e

    xor a
    ld [hl+], a
    ld [hl], a
    ld [$ceed], a
    ld [$ceee], a

jr_00f_449e:
    call Call_00f_44f6
    pop hl
    ret


Call_00f_44a3:
    push hl
    ld hl, $cff4
    ldh a, [$f3]
    and a
    jr z, jr_00f_44af

    ld hl, $d023

jr_00f_44af:
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld de, $fff2
    add hl, de
    ld a, [hl]
    ld [$ceeb], a
    add c
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceec], a
    adc b
    ld [hl+], a
    ld [$ceee], a
    ld a, [$cee9]
    ld c, a
    ld a, [hl-]
    sub c
    ld a, [$ceea]
    ld b, a
    ld a, [hl]
    sbc b
    jr c, jr_00f_44e5

    ld a, b
    ld [hl+], a
    ld [$ceee], a
    ld a, c
    ld [hl], a
    ld [$ceed], a

jr_00f_44e5:
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    call Call_00f_44f6
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    pop hl
    ret


Call_00f_44f6:
    ld hl, $c45e
    ldh a, [$f3]
    and a
    ld a, $01
    jr z, jr_00f_4504

    ld hl, $c3ca
    xor a

jr_00f_4504:
    push bc
    ld [$cf94], a
    ld a, $48
    call Call_000_3e6d
    pop bc
    ret


Call_00f_450f:
    ld a, [$d06a]
    and a
    jr nz, jr_00f_451a

    ld hl, $d062
    res 5, [hl]

jr_00f_451a:
    ld a, [$d06f]
    and a
    ret nz

    ld hl, $d067
    res 5, [hl]
    ret


Jump_00f_4525:
    xor a
    ld [$ccf0], a
    call Call_00f_4567
    call Call_00f_4a83
    ld a, d
    and a
    jp z, Jump_00f_4837

    ld hl, $d015
    ld a, [hl+]
    or [hl]
    call nz, Call_00f_4d60
    ld a, [$d057]
    dec a
    ret z

    call Call_00f_464f
    jp z, Jump_00f_4696

    ld hl, $d015
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4555

    call Call_00f_479b
    ret c

    call Call_00f_47d8

jr_00f_4555:
    ld a, $01
    ld [$cd6a], a
    call Call_00f_4664
    jp z, Jump_00f_4202

    xor a
    ld [$cd6a], a
    jp Jump_00f_4233


Call_00f_4567:
    call Call_00f_4d43
    ld a, [$d057]
    dec a
    jr z, jr_00f_457f

    ld a, [$cfe8]
    ld hl, $d8a5
    ld bc, $002c
    call Call_000_3a87
    xor a
    ld [hl+], a
    ld [hl], a

jr_00f_457f:
    ld hl, $d062
    res 2, [hl]
    xor a
    ld [$d074], a
    ld hl, $d065
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d072], a
    ld [$ccef], a
    ld [$ccf3], a
    ld hl, $ccf1
    ld [hl+], a
    ld [hl], a
    ld hl, $c410
    ld de, $c424
    call Call_00f_4893
    ld hl, $c3a0
    ld bc, $040b
    call Call_000_18c4
    ld a, [$d057]
    dec a
    jr z, jr_00f_45d3

    xor a
    ld [$c0f1], a
    ld [$c0f2], a
    ld a, $9e
    call Call_000_3740

jr_00f_45c2:
    ld a, [$c02a]
    cp $9e
    jr z, jr_00f_45c2

    ld a, $95
    call Call_000_23b1
    call Call_000_3748
    jr jr_00f_45db

jr_00f_45d3:
    call Call_00f_4643
    ld a, $f9
    call Call_00f_46ee

jr_00f_45db:
    ld hl, $d015
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_45eb

    ld a, [$ccf0]
    and a
    jr nz, jr_00f_45eb

    call Call_00f_4741

jr_00f_45eb:
    call Call_00f_4a83
    ld a, d
    and a
    ret z

    ld hl, $463e
    call Call_000_3c49
    call Call_00f_6e94
    call Call_000_3719
    xor a
    ld [$cf0b], a
    ld b, $4b
    call Call_000_3493
    push af
    jr z, jr_00f_4614

    ld hl, $d002
    ld b, $07

jr_00f_460e:
    srl [hl]
    inc hl
    dec b
    jr nz, jr_00f_460e

jr_00f_4614:
    xor a
    ld [$cc5b], a
    ld hl, $524f
    ld b, $15
    call Call_000_35d6
    pop af
    ret z

    ld a, $01
    ld [$cc5b], a
    ld a, [$d163]
    ld b, $00

jr_00f_462c:
    scf
    rl b
    dec a
    jr nz, jr_00f_462c

    ld a, b
    ld [$d058], a
    ld hl, $524f
    ld b, $15
    jp Jump_000_35d6


    rla
    rst $00
    ld d, [hl]
    ld [hl+], a
    ld d, b

Call_00f_4643:
    xor a
    ld [$d083], a
    ld [$c02a], a
    inc a
    ld [$ccf6], a
    ret


Call_00f_464f:
    ld a, [$d89c]
    ld b, a
    xor a
    ld hl, $d8a5
    ld de, $002c

jr_00f_465a:
    or [hl]
    inc hl
    or [hl]
    dec hl
    add hl, de
    dec b
    jr nz, jr_00f_465a

    and a
    ret


Call_00f_4664:
    ld hl, $cf1e
    ld e, $30
    call Call_00f_4e90
    ld hl, $6857
    ld b, $0e
    call Call_000_35d6
    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_4687

    call Call_00f_5605
    ld a, [$cc3e]
    cp $0f
    ret z

    call Call_000_3725

jr_00f_4687:
    call Call_00f_490e
    xor a
    ld [$cfcc], a
    ld [$cd6a], a
    ld [$ccd5], a
    inc a
    ret


Jump_00f_4696:
    call Call_00f_4643
    ld b, $fc
    ld a, [$d05c]
    and a
    jr nz, jr_00f_46a3

    ld b, $f6

jr_00f_46a3:
    ld a, [$d031]
    cp $2b
    jr nz, jr_00f_46b1

    ld b, $fc
    ld hl, $d733
    set 1, [hl]

jr_00f_46b1:
    ld a, [$d12b]
    cp $04
    ld a, b
    call nz, Call_00f_46ee
    ld hl, $46e9
    call Call_000_3c49
    ld a, [$d12b]
    cp $04
    ret z

    call Call_00f_6d12
    ld c, $28
    call Call_000_3739
    call Call_000_3381
    ld hl, $46e4
    call Call_000_3c49
    ld de, $d349
    ld hl, $d07b
    ld c, $03
    ld a, $0b
    jp Jump_000_3e6d


    rla
    db $dd
    ld d, [hl]
    ld [hl+], a
    ld d, b
    rla
    ld sp, hl
    ld d, [hl]
    ld [hl+], a
    ld d, b

Call_00f_46ee:
    push af
    ld a, $ff
    ld [$c0ee], a
    call Call_000_3740
    ld c, $08
    pop af
    call Call_000_23a1
    jp Jump_000_3dd7


Jump_00f_4700:
    ld a, $01
    ld [$ccf0], a
    call Call_00f_4741
    call Call_00f_4a83
    ld a, d
    and a
    jp z, Jump_00f_4837

    ld hl, $cfe6
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4725

    call Call_00f_4567
    ld a, [$d057]
    dec a
    ret z

    call Call_00f_464f
    jp z, Jump_00f_4696

jr_00f_4725:
    call Call_00f_479b
    ret c

    call Call_00f_47d8
    jp nz, Jump_00f_4233

    ld a, $01
    ld [$cd6a], a
    call Call_00f_4664
    jp z, Jump_00f_4202

    xor a
    ld [$cd6a], a
    jp Jump_00f_4233


Call_00f_4741:
    ld a, [$cc2f]
    ld c, a
    ld hl, $d058
    ld b, $00
    ld a, $10
    call Call_000_3e6d
    ld hl, $d067
    res 2, [hl]
    ld a, [$d083]
    bit 7, a
    jr z, jr_00f_4763

    ld a, $ff
    ld [$d083], a
    call Call_000_3748

jr_00f_4763:
    ld hl, $cd05
    ld [hl+], a
    ld [hl], a
    ld [$d018], a
    call Call_00f_4d43
    ld hl, $c435
    ld bc, $050b
    call Call_000_18c4
    ld hl, $c469
    ld de, $c47d
    call Call_00f_4893
    ld a, $01
    ld [$cf0b], a
    ld a, [$ccf0]
    and a
    ret z

    ld a, [$d014]
    call Call_000_13d0
    ld hl, $4796
    jp Jump_000_3c49


    rla
    inc c
    ld d, a
    ld [hl+], a
    ld d, b

Call_00f_479b:
    call Call_00f_6e94
    call Call_000_3719
    ld a, [$d057]
    and a
    dec a
    ret nz

    ld hl, $47d3
    call Call_000_3c49

jr_00f_47ad:
    ld hl, $c461
    ld bc, $0a0e
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$d12e]
    cp $02
    jr z, jr_00f_47c4

    and a
    ret


jr_00f_47c4:
    ld a, [$cc26]
    and a
    jr z, jr_00f_47ad

    ld hl, $d193
    ld de, $cffa
    jp Jump_00f_4ab9


    rla
    ld a, [de]
    ld d, a
    ld [hl+], a
    ld d, b

Call_00f_47d8:
    ld a, $02
    ld [$d07d], a
    call Call_000_13fc

jr_00f_47e0:
    jr nc, jr_00f_47e7

jr_00f_47e2:
    call Call_000_1411
    jr jr_00f_47e0

jr_00f_47e7:
    call Call_00f_4a97
    jr z, jr_00f_47e2

    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_47fa

    inc a
    ld [$cd6a], a
    call Call_00f_5605

jr_00f_47fa:
    xor a
    ld [$cd6a], a
    call Call_000_0082
    ld a, [$cf92]
    ld [$cc2f], a
    ld c, a
    ld hl, $d058
    ld b, $01
    push bc
    ld a, $10
    call Call_000_3e6d
    pop bc
    ld hl, $ccf5
    ld a, $10
    call Call_000_3e6d
    call Call_00f_4ba6
    call Call_000_3de5
    call Call_00f_6e5b
    call Call_000_3725
    call Call_000_3ded
    call Call_000_3ddc
    call Call_00f_4c91
    ld hl, $cfe6
    ld a, [hl+]
    or [hl]
    ret


Jump_00f_4837:
    ld a, [$d12b]
    cp $04
    jr z, jr_00f_4862

    ld a, [$d059]
    cp $e1
    jr nz, jr_00f_4862

    ld hl, $c3a0
    ld bc, $0815
    call Call_000_18c4
    call Call_00f_6d12
    ld c, $28
    call Call_000_3739
    ld hl, $4884
    call Call_000_3c49
    ld a, [$d35e]
    cp $28
    ret z

jr_00f_4862:
    ld b, $00
    call Call_000_3def
    ld hl, $4889
    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_4874

    ld hl, $488e

jr_00f_4874:
    call Call_000_3c49
    ld a, [$d732]
    res 5, a
    ld [$d732], a
    call Call_000_190f
    scf
    ret


    rla
    ld a, [hl+]
    ld d, a
    ld [hl+], a
    ld d, b
    rla
    ld c, b
    ld d, a
    ld [hl+], a
    ld d, b
    rla
    ld [hl], d
    ld d, a
    ld [hl+], a
    ld d, b

Call_00f_4893:
    ld a, [$d730]
    push af
    set 6, a
    ld [$d730], a
    ld b, $07

jr_00f_489e:
    push bc
    push de
    push hl
    ld b, $06

jr_00f_48a3:
    push bc
    push hl
    push de
    ld bc, $0007
    call Call_000_00b5
    pop de
    pop hl
    ld bc, $ffec
    add hl, bc
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    pop bc
    dec b
    jr nz, jr_00f_48a3

    ld bc, $0014
    add hl, bc
    ld de, $48d7
    call Call_000_1955
    ld c, $02
    call Call_000_3739
    pop hl
    pop de
    pop bc
    dec b
    jr nz, jr_00f_489e

    pop af
    ld [$d730], a
    ret


    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Call_00f_48df:
    ldh [$8b], a
    ld c, a

jr_00f_48e2:
    push bc
    push hl
    ld b, $07

jr_00f_48e6:
    push hl
    ldh a, [$8b]
    ld c, a

jr_00f_48ea:
    ldh a, [$8b]
    cp $08
    jr z, jr_00f_48f5

    ld a, [hl-]
    ld [hl+], a
    inc hl
    jr jr_00f_48f8

jr_00f_48f5:
    ld a, [hl+]
    ld [hl-], a
    dec hl

jr_00f_48f8:
    dec c
    jr nz, jr_00f_48ea

    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_00f_48e6

    ld c, $02
    call Call_000_3739
    pop hl
    pop bc
    dec c
    jr nz, jr_00f_48e2

    ret


Call_00f_490e:
    ld hl, $d058
    xor a
    ld [hl], a
    ld a, [$cc2f]
    ld c, a
    ld b, $01
    push bc
    ld a, $10
    call Call_000_3e6d
    ld hl, $ccf5
    xor a
    ld [hl], a
    pop bc
    ld a, $10
    call Call_000_3e6d

Call_00f_492a:
    xor a
    ld hl, $d065
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d072], a
    ld [$ccef], a
    ld [$ccf3], a
    ld hl, $ccf1
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$ccdf], a
    ld hl, $d062
    res 5, [hl]
    ld hl, $c3b2
    ld a, $08
    call Call_00f_48df
    call Call_00f_6e94
    call Call_000_3719
    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_4969

    ld a, [$cc3e]
    sub $04
    ld [$cf92], a
    jr jr_00f_4988

jr_00f_4969:
    ld b, $ff

jr_00f_496b:
    inc b
    ld a, [$cfe8]
    cp b
    jr z, jr_00f_496b

    ld hl, $d8a4
    ld a, b
    ld [$cf92], a
    push bc
    ld bc, $002c
    call Call_000_3a87
    pop bc
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    or c
    jr z, jr_00f_496b

jr_00f_4988:
    ld a, [$cf92]
    ld hl, $d8c5
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl]
    ld [$d127], a
    ld a, [$cf92]
    inc a
    ld hl, $d89c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$cfd8], a
    ld [$cf91], a
    call Call_00f_6b01
    ld hl, $cfe6
    ld a, [hl+]
    ld [$cce3], a
    ld a, [hl]
    ld [$cce4], a
    ld a, $01
    ld [$cc26], a
    ld a, [$d11d]
    dec a
    jr z, jr_00f_4a26

    ld a, [$d163]
    dec a
    jr z, jr_00f_4a26

    ld a, [$d12b]
    cp $04
    jr z, jr_00f_4a26

    ld a, [$d355]
    bit 6, a
    jr nz, jr_00f_4a26

    ld hl, $4a79
    call Call_000_3c49
    ld hl, $c42c
    ld bc, $0801
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$cc26]
    and a
    jr nz, jr_00f_4a26

    ld a, $02
    ld [$d07d], a
    call Call_000_13fc

jr_00f_49f9:
    ld a, $01
    ld [$cc26], a
    jr c, jr_00f_4a1d

    ld hl, $cc2f
    ld a, [$cf92]
    cp [hl]
    jr nz, jr_00f_4a14

    ld hl, $51f5
    call Call_000_3c49

jr_00f_4a0f:
    call Call_000_1411
    jr jr_00f_49f9

jr_00f_4a14:
    call Call_00f_4a97
    jr z, jr_00f_4a0f

    xor a
    ld [$cc26], a

jr_00f_4a1d:
    call Call_000_3de5
    call Call_00f_6e5b
    call Call_000_3725

jr_00f_4a26:
    call Call_000_0082
    ld hl, $c3a0
    ld bc, $040b
    call Call_000_18c4
    ld b, $01
    call Call_000_3def
    call Call_000_3ddc
    ld hl, $4a7e
    call Call_000_3c49
    ld a, [$cfd8]
    ld [$cf91], a
    ld [$d0b5], a
    call Call_000_1537
    ld de, $9000
    call Call_000_1665
    ld a, $cf
    ldh [$e1], a
    ld hl, $c427
    ld a, $02
    call Call_000_3e6d
    ld a, [$cfd8]
    call Call_000_13d0
    call Call_00f_4dec
    ld a, [$cc26]
    and a
    ret nz

    xor a
    ld [$d058], a
    ld [$ccf5], a
    call Call_000_3719
    jp Jump_00f_51ba


    rla
    add h
    ld d, a
    ld [hl+], a
    ld d, b
    rla
    or h
    ld d, a
    ld [hl+], a
    ld d, b

Call_00f_4a83:
    ld a, [$d163]
    ld e, a
    xor a
    ld hl, $d16c
    ld bc, $002b

jr_00f_4a8e:
    or [hl]
    inc hl
    or [hl]
    add hl, bc
    dec e
    jr nz, jr_00f_4a8e

    ld d, a
    ret


Call_00f_4a97:
    ld a, [$cf92]
    ld hl, $d16c
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl+]
    or [hl]
    ret nz

    ld a, [$d11d]
    and a
    jr nz, jr_00f_4ab2

    ld hl, $4ab4
    call Call_000_3c49

jr_00f_4ab2:
    xor a
    ret


    rla
    ret


    ld d, a
    ld [hl+], a
    ld d, b

Call_00f_4ab9:
Jump_00f_4ab9:
    call Call_00f_583a
    jp z, Jump_00f_4b5c

    ld a, [$d05a]
    cp $02
    jp z, Jump_00f_4b5c

    ld a, [$d12b]
    cp $04
    jp z, Jump_00f_4b5c

    ld a, [$d057]
    dec a
    jr nz, jr_00f_4b4c

    ld a, [$d120]
    inc a
    ld [$d120], a
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    ld a, [de]
    ldh [$8d], a
    inc de
    ld a, [de]
    ldh [$8e], a
    call Call_000_3725
    ld de, $ff97
    ld hl, $ff8d
    ld c, $02
    call Call_000_3a8e
    jr nc, jr_00f_4b5c

    xor a
    ldh [$96], a
    ld a, $20
    ldh [$99], a
    call Call_000_38ac
    ldh a, [$97]
    ldh [$95], a
    ldh a, [$98]
    ldh [$96], a
    ldh a, [$8d]
    ld b, a
    ldh a, [$8e]
    srl b
    rr a
    srl b
    rr a
    and a
    jr z, jr_00f_4b5c

    ldh [$99], a
    ld b, $02
    call Call_000_38b9
    ldh a, [$97]
    and a
    jr nz, jr_00f_4b5c

    ld a, [$d120]
    ld c, a

jr_00f_4b2b:
    dec c
    jr z, jr_00f_4b39

    ld b, $1e
    ldh a, [$98]
    add b
    ldh [$98], a
    jr c, jr_00f_4b5c

    jr jr_00f_4b2b

jr_00f_4b39:
    call Call_00f_6e9b
    ld b, a
    ldh a, [$98]
    cp b
    jr nc, jr_00f_4b5c

    ld a, $01
    ld [$cd6a], a
    ld hl, $4b97
    jr jr_00f_4b4f

jr_00f_4b4c:
    ld hl, $4b9c

jr_00f_4b4f:
    call Call_000_3c49
    ld a, $01
    ld [$d11f], a
    call Call_000_3719
    and a
    ret


Jump_00f_4b5c:
jr_00f_4b5c:
    ld a, [$d12b]
    cp $04
    ld a, $02
    jr nz, jr_00f_4b81

    call Call_000_3719
    xor a
    ld [$cd6a], a
    ld a, $0f
    ld [$cc2e], a
    call Call_00f_5605
    call Call_000_3725
    ld a, [$cc3e]
    cp $0f
    ld a, $02
    jr z, jr_00f_4b81

    dec a

jr_00f_4b81:
    ld [$cf0b], a
    ld a, $97
    call Call_000_3740
    ld hl, $4ba1
    call Call_000_3c49
    call Call_000_3748
    call Call_000_3719
    scf
    ret


    rla
    db $e3
    ld d, a
    ld [hl+], a
    ld d, b
    rla
    pop af
    ld d, a
    ld [hl+], a
    ld d, b
    rla
    rra
    ld e, b
    ld [hl+], a
    ld d, b

Call_00f_4ba6:
    ld a, [$cf92]
    ld bc, $002c
    ld hl, $d16b
    call Call_000_3a87
    ld de, $d014
    ld bc, $000c
    call Call_000_00b5
    ld bc, $000f
    add hl, bc
    ld de, $d020
    ld bc, $0002
    call Call_000_00b5
    ld de, $d02d
    ld bc, $0004
    call Call_000_00b5
    ld de, $d022
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cfd9]
    ld [$d0b5], a
    call Call_000_1537
    ld hl, $d2b5
    ld a, [$cc2f]
    call Call_000_3a7d
    ld de, $d009
    ld bc, $000b
    call Call_000_00b5
    ld hl, $d022
    ld de, $cd0f
    ld bc, $000b
    call Call_000_00b5
    call Call_00f_6d1a
    call Call_00f_6e19
    ld a, $07
    ld b, $08
    ld hl, $cd1a

jr_00f_4c0e:
    ld [hl+], a
    dec b
    jr nz, jr_00f_4c0e

    ret


Jump_00f_4c13:
    ld a, [$cf92]
    ld bc, $002c
    ld hl, $d8a4
    call Call_000_3a87
    ld de, $cfe5
    ld bc, $000c
    call Call_000_00b5
    ld bc, $000f
    add hl, bc
    ld de, $cff1
    ld bc, $0002
    call Call_000_00b5
    ld de, $cffe
    ld bc, $0004
    call Call_000_00b5
    ld de, $cff3
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cfe5]
    ld [$d0b5], a
    call Call_000_1537
    ld hl, $d9ee
    ld a, [$cf92]
    call Call_000_3a7d
    ld de, $cfda
    ld bc, $000b
    call Call_000_00b5
    ld hl, $cff3
    ld de, $cd23
    ld bc, $000b
    call Call_000_00b5
    call Call_00f_6d1e
    ld hl, $d0b9
    ld de, $d002
    ld b, $05

jr_00f_4c79:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_4c79

    ld a, $07
    ld b, $08
    ld hl, $cd2e

jr_00f_4c86:
    ld [hl+], a
    dec b
    jr nz, jr_00f_4c86

    ld a, [$cf92]
    ld [$cfe8], a
    ret


Call_00f_4c91:
    ld hl, $4e59
    ld b, $16
    call Call_000_35d6
    ld hl, $cfe6
    ld a, [hl+]
    or [hl]
    jp z, Jump_00f_4ca4

    call Call_00f_4dec

Jump_00f_4ca4:
    call Call_00f_4d60
    ld a, $04
    call Call_000_3e6d
    xor a
    ldh [$e1], a
    ld hl, $cc2d
    ld [hl+], a
    ld [hl], a
    ld [$cc5b], a
    ld [$d05b], a
    ld [$cfd2], a
    ld hl, $ccf1
    ld [hl+], a
    ld [hl], a
    ld hl, $d060
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d06d], a
    ld [$ccee], a
    ld [$ccf7], a
    ld b, $01
    call Call_000_3def
    ld hl, $d067
    res 5, [hl]
    ld a, $01
    ldh [$f3], a
    ld a, $c3
    call Call_00f_6f07
    ld hl, $c480
    ld a, $02
    call Call_000_3e6d
    ld a, [$cf91]
    call Call_000_13d0
    call Call_00f_6e94
    jp Jump_000_3719


Call_00f_4cfa:
    ld hl, $c405
    ld bc, $0707
    call Call_000_18c4
    ld hl, $c42f
    ld bc, $0505
    xor a
    ld [$cd6c], a
    ldh [$8b], a
    ld a, $05
    call Call_000_3e6d
    ld c, $04
    call Call_000_3739
    call Call_00f_4d3a
    ld hl, $c458
    ld bc, $0303
    ld a, $01
    ld [$cd6c], a
    xor a
    ldh [$8b], a
    ld a, $05
    call Call_000_3e6d
    call Call_000_3dd7
    call Call_00f_4d3a
    ld a, $4c
    ld [$c481], a

Call_00f_4d3a:
    ld hl, $c405
    ld bc, $0707
    jp Jump_000_18c4


Call_00f_4d43:
    ld a, [$cc2f]
    ld hl, $d16c
    ld bc, $002c
    call Call_000_3a87
    ld d, h
    ld e, l
    ld hl, $d015
    ld bc, $0004
    jp Jump_000_00b5


Call_00f_4d5a:
Jump_00f_4d5a:
    call Call_00f_4d60
    jp Jump_00f_4dec


Call_00f_4d60:
    xor a
    ldh [$ba], a
    ld hl, $c435
    ld bc, $050b
    call Call_000_18c4
    ld hl, $6902
    ld b, $0e
    call Call_000_35d6
    ld hl, $c466
    ld [hl], $73
    ld de, $d009
    ld hl, $c436
    call Call_00f_4e9c
    call Call_000_1955
    ld hl, $d014
    ld de, $cf98
    ld bc, $000c
    call Call_000_00b5
    ld hl, $d022
    ld de, $cfb9
    ld bc, $000b
    call Call_000_00b5
    ld hl, $c44e
    push hl
    inc hl
    ld de, $cf9c
    call Call_000_14f6
    pop hl
    jr nz, jr_00f_4dae

    call Call_000_150b

jr_00f_4dae:
    ld a, [$cf98]
    ld [$cf91], a
    ld hl, $c45e
    ld a, $5f
    call Call_000_3e6d
    ld a, $01
    ldh [$ba], a
    ld hl, $cf1d
    call Call_00f_4e90
    ld hl, $d015
    ld a, [hl+]
    or [hl]
    jr z, jr_00f_4dd9

    ld a, [$ccf6]
    and a
    ret nz

    ld a, [$cf1d]
    cp $02
    jr z, jr_00f_4de6

jr_00f_4dd9:
    ld hl, $d083
    bit 7, [hl]
    ld [hl], $00
    ret z

    xor a
    ld [$c02a], a
    ret


jr_00f_4de6:
    ld hl, $d083
    set 7, [hl]
    ret


Call_00f_4dec:
Jump_00f_4dec:
    xor a
    ldh [$ba], a
    ld hl, $c3a0
    ld bc, $040c
    call Call_000_18c4
    ld hl, $6919
    ld b, $0e
    call Call_000_35d6
    ld de, $cfda
    ld hl, $c3a1
    call Call_00f_4e9c
    call Call_000_1955
    ld hl, $c3b8
    push hl
    inc hl
    ld de, $cfe9
    call Call_000_14f6
    pop hl
    jr nz, jr_00f_4e23

    ld a, [$cff3]
    ld [$cfb9], a
    call Call_000_150b

jr_00f_4e23:
    ld hl, $cfe6
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl-]
    ldh [$98], a
    or [hl]
    jr nz, jr_00f_4e36

    ld c, a
    ld e, a
    ld d, $06
    jp Jump_00f_4e7f


jr_00f_4e36:
    xor a
    ldh [$96], a
    ld a, $30
    ldh [$99], a
    call Call_000_38ac
    ld hl, $cff4
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ldh [$99], a
    ld a, b
    and a
    jr z, jr_00f_4e6a

    ldh a, [$99]
    srl b
    rr a
    srl b
    rr a
    ldh [$99], a
    ldh a, [$97]
    ld b, a
    srl b
    ldh a, [$98]
    rr a
    srl b
    rr a
    ldh [$98], a
    ld a, b
    ldh [$97], a

jr_00f_4e6a:
    ldh a, [$97]
    ldh [$95], a
    ldh a, [$98]
    ldh [$96], a
    ld a, $02
    ld b, a
    call Call_000_38b9
    ldh a, [$98]
    ld e, a
    ld a, $06
    ld d, a
    ld c, a

Jump_00f_4e7f:
    xor a
    ld [$cf94], a
    ld hl, $c3ca
    call Call_000_1336
    ld a, $01
    ldh [$ba], a
    ld hl, $cf1e

Call_00f_4e90:
    ld b, [hl]
    call Call_000_3df9
    ld a, [hl]
    cp b
    ret z

    ld b, $01
    jp Jump_000_3def


Call_00f_4e9c:
    push de
    inc hl
    inc hl
    ld b, $02

jr_00f_4ea1:
    inc de
    ld a, [de]
    cp $50
    jr z, jr_00f_4eb1

    inc de
    ld a, [de]
    cp $50
    jr z, jr_00f_4eb1

    dec hl
    dec b
    jr nz, jr_00f_4ea1

jr_00f_4eb1:
    pop de
    ret


Call_00f_4eb3:
Jump_00f_4eb3:
    call Call_000_3725
    ld a, [$d05a]
    and a
    jr nz, jr_00f_4ec5

    call Call_00f_4d5a
    call Call_00f_6e94
    call Call_000_3719

jr_00f_4ec5:
    ld a, [$d05a]
    cp $02
    ld a, $0b
    jr nz, jr_00f_4ed0

    ld a, $1b

jr_00f_4ed0:
    ld [$d125], a
    call Call_000_30e8
    ld a, [$d05a]
    dec a
    jp nz, Jump_00f_4f1a

    ld hl, $d158
    ld de, $d887
    ld bc, $000b
    call Call_000_00b5
    ld hl, $4f12
    ld de, $d158
    ld bc, $000b
    call Call_000_00b5
    ld hl, $c4c1
    ld [hl], $ed
    ld c, $50
    call Call_000_3739
    ld [hl], $7f
    ld hl, $c4e9
    ld [hl], $ed
    ld c, $32
    call Call_000_3739
    ld [hl], $ec
    ld a, $02
    jp Jump_00f_4fe8


    adc [hl]
    adc e
    add e
    ld a, a
    adc h
    add b
    adc l
    ld d, b

Jump_00f_4f1a:
    ld a, [$cc2d]
    ld [$cc26], a
    ld [$cc2a], a
    sub $02
    jr c, jr_00f_4f2f

    ld [$cc26], a
    ld [$cc2a], a
    jr jr_00f_4f6e

jr_00f_4f2f:
    ld a, [$d05a]
    cp $02
    ld a, $7f
    jr z, jr_00f_4f42

    ld [$c4c7], a
    ld [$c4ef], a
    ld b, $09
    jr jr_00f_4f56

jr_00f_4f42:
    ld [$c4c5], a
    ld [$c4ed], a
    ld hl, $c4bf
    ld de, $da47
    ld bc, $0102
    call Call_000_3c5f
    ld b, $01

jr_00f_4f56:
    ld hl, $cc24
    ld a, $0e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], $11
    call Call_000_3abe
    bit 4, a
    jr nz, jr_00f_4f6e

    jr jr_00f_4fb4

jr_00f_4f6e:
    ld a, [$d05a]
    cp $02
    ld a, $7f
    jr z, jr_00f_4f81

    ld [$c4c1], a
    ld [$c4e9], a
    ld b, $0f
    jr jr_00f_4f95

jr_00f_4f81:
    ld [$c4b9], a
    ld [$c4e1], a
    ld hl, $c4bf
    ld de, $da47
    ld bc, $0102
    call Call_000_3c5f
    ld b, $0d

jr_00f_4f95:
    ld hl, $cc24
    ld a, $0e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld a, $21
    ld [hl+], a
    call Call_000_3abe
    bit 5, a
    jr nz, jr_00f_4f2f

    ld a, [$cc26]
    add $02
    ld [$cc26], a

jr_00f_4fb4:
    call Call_000_3bec
    ld a, [$d05a]
    cp $02
    ld a, [$cc26]
    ld [$cc2d], a
    jr z, jr_00f_4fd0

    cp $01
    jr nz, jr_00f_4fcb

    inc a
    jr jr_00f_4fd0

jr_00f_4fcb:
    cp $02
    jr nz, jr_00f_4fd0

    dec a

jr_00f_4fd0:
    and a
    jr nz, jr_00f_4fe8

    ld a, [$d05a]
    cp $02
    jr z, jr_00f_4fe1

    xor a
    ld [$d120], a
    jp Jump_000_3725


jr_00f_4fe1:
    ld a, $08
    ld [$cf91], a
    jr jr_00f_505f

Jump_00f_4fe8:
jr_00f_4fe8:
    cp $02
    jp nz, Jump_00f_50ca

    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_4ffd

    ld hl, $50c5
    call Call_000_3c49
    jp Jump_00f_4eb3


jr_00f_4ffd:
    call Call_000_36f4
    ld a, [$d05a]
    cp $02
    jr nz, jr_00f_500e

    ld a, $15
    ld [$cf91], a
    jr jr_00f_505f

Jump_00f_500e:
jr_00f_500e:
    call Call_000_3725
    ld a, [$d05a]
    and a
    jr nz, jr_00f_501a

    call Call_00f_4d5a

jr_00f_501a:
    ld a, [$d05a]
    dec a
    jr nz, jr_00f_5031

    ld hl, $502d
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    jr jr_00f_503c

    ld bc, $3204
    rst $38

jr_00f_5031:
    ld hl, $d31d
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a

jr_00f_503c:
    xor a
    ld [$cf93], a
    ld a, $03
    ld [$cf94], a
    ld a, [$cc2c]
    ld [$cc26], a
    call Call_000_2be6
    ld a, [$cc26]
    ld [$cc2c], a
    ld a, $00
    ld [$cc37], a
    ld [$cc35], a
    jp c, Jump_00f_4eb3

Jump_00f_505f:
jr_00f_505f:
    ld a, [$cf91]
    ld [$d11e], a
    call Call_000_2fcf
    call Call_000_3826
    xor a
    ld [$d152], a
    call Call_000_30bc
    call Call_00f_6e5b
    call Call_000_0082
    xor a
    ld [$cc26], a
    ld a, [$d05a]
    cp $02
    jr z, jr_00f_509c

    ld a, [$cd6a]
    and a
    jp z, Jump_00f_500e

    ld a, [$d062]
    bit 5, a
    jr z, jr_00f_509c

    ld hl, $d06a
    dec [hl]
    jr nz, jr_00f_509c

    ld hl, $d062
    res 5, [hl]

jr_00f_509c:
    ld a, [$d11c]
    and a
    jr nz, jr_00f_50b7

    ld a, [$d05a]
    cp $02
    jr z, jr_00f_50b2

    call Call_000_3725
    call Call_00f_4d5a
    call Call_000_3dd7

jr_00f_50b2:
    call Call_000_3ddc
    and a
    ret


jr_00f_50b7:
    call Call_000_3ddc
    xor a
    ld [$d11c], a
    ld a, $02
    ld [$cf0b], a
    scf
    ret


    rla
    ld sp, $2258
    ld d, b

Jump_00f_50ca:
    dec a
    jp nz, Jump_00f_51fa

    call Call_000_36f4
    ld a, [$d05a]
    cp $02
    jr nz, jr_00f_50e0

    ld a, $16
    ld [$cf91], a
    jp Jump_00f_505f


Jump_00f_50e0:
jr_00f_50e0:
    call Call_000_3725
    xor a
    ld [$d07d], a
    ld [$cc35], a
    call Call_000_13fc

jr_00f_50ed:
    jp nc, Jump_00f_5119

jr_00f_50f0:
    call Call_000_0082
    call Call_000_3de5
    call Call_00f_6e5b
    call Call_000_3701
    call Call_000_3ded
    call Call_000_3ddc
    jp Jump_00f_4eb3


Jump_00f_5105:
jr_00f_5105:
    ld hl, $c487
    ld bc, $0081
    ld a, $7f
    call Call_000_36e0
    xor a
    ld [$d07d], a
    call Call_000_1411
    jr jr_00f_50ed

Jump_00f_5119:
    ld a, $0c
    ld [$d125], a
    call Call_000_30e8
    ld hl, $cc24
    ld a, $0c
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_000_3abe
    bit 1, a
    jr nz, jr_00f_5105

    call Call_000_3bec
    ld a, [$cc26]
    cp $02
    jr z, jr_00f_50f0

    and a
    jr z, jr_00f_518a

    xor a
    ld [$cc49], a
    ld hl, $d16b
    call Call_000_0082
    ld a, $36
    call Call_000_3e6d
    ld a, $37
    call Call_000_3e6d
    ld a, [$d068]
    bit 4, a
    ld hl, $56e0
    jr nz, jr_00f_5182

    ld a, [$ccf3]
    and a
    ld hl, $559f
    jr nz, jr_00f_5182

    ld a, [$cfe5]
    ld [$cf91], a
    ld [$d0b5], a
    call Call_000_1537
    ld de, $9000
    call Call_000_1665
    jr jr_00f_5187

jr_00f_5182:
    ld b, $1e
    call Call_000_35d6

jr_00f_5187:
    jp Jump_00f_50e0


jr_00f_518a:
    ld a, [$cc2f]
    ld d, a
    ld a, [$cf92]
    cp d
    jr nz, jr_00f_519d

    ld hl, $51f5
    call Call_000_3c49
    jp Jump_00f_5105


jr_00f_519d:
    call Call_00f_4a97
    jp z, Jump_00f_5105

    ld a, $01
    ld [$cd6a], a
    call Call_000_3de5
    call Call_000_0082
    call Call_00f_6e5b
    call Call_000_3725
    call Call_000_3ded
    call Call_000_3ddc

Jump_00f_51ba:
    ld hl, $4ed1
    ld b, $16
    call Call_000_35d6
    ld c, $32
    call Call_000_3739
    call Call_00f_4cfa
    ld a, [$cf92]
    ld [$cc2f], a
    ld c, a
    ld b, $01
    push bc
    ld hl, $d058
    ld a, $10
    call Call_000_3e6d
    pop bc
    ld hl, $ccf5
    ld a, $10
    call Call_000_3e6d
    call Call_00f_4ba6
    call Call_00f_4c91
    call Call_000_3719
    ld a, $02
    ld [$cc26], a
    and a
    ret


    rla
    ld c, e
    ld e, b
    ld [hl+], a
    ld d, b

Jump_00f_51fa:
    call Call_000_3725
    ld a, $03
    ld [$cc26], a
    ld hl, $d029
    ld de, $cffa
    call Call_00f_4ab9
    ld a, $00
    ld [$d11f], a
    ret c

    ld a, [$cd6a]
    and a
    ret nz

    jp Jump_00f_4eb3


Call_00f_5219:
Jump_00f_5219:
    ld a, [$ccdb]
    dec a
    jr z, jr_00f_5275

    dec a
    jr z, jr_00f_5291

    jr jr_00f_5249

Call_00f_5224:
    ld de, $d0dc
    ld bc, $0004
    call Call_000_00b5
    ld hl, $5b87
    ld b, $0e
    call Call_000_35d6
    ret


Call_00f_5236:
    ld de, $d0e1
    ldh a, [$f6]
    set 2, a
    ldh [$f6], a
    call Call_000_1955
    ldh a, [$f6]
    res 2, a
    ldh [$f6], a
    ret


jr_00f_5249:
    call Call_00f_53f5
    ret z

    ld hl, $d01c
    call Call_00f_5224
    ld hl, $c494
    ld b, $04
    ld c, $0e
    di
    call Call_000_1922
    ld hl, $c494
    ld [hl], $7a
    ld hl, $c49a
    ld [hl], $7e
    ei
    ld hl, $c4aa
    call Call_00f_5236
    ld b, $05
    ld a, $0c
    jr jr_00f_52b4

jr_00f_5275:
    ld hl, $cfed
    call Call_00f_5224
    ld hl, $c42c
    ld b, $04
    ld c, $0e
    call Call_000_1922
    ld hl, $c442
    call Call_00f_5236
    ld b, $01
    ld a, $07
    jr jr_00f_52b4

jr_00f_5291:
    ld a, [$cf92]
    ld hl, $d173
    ld bc, $002c
    call Call_000_3a87
    call Call_00f_5224
    ld hl, $c430
    ld b, $04
    ld c, $0e
    call Call_000_1922
    ld hl, $c446
    call Call_00f_5236
    ld b, $05
    ld a, $07

jr_00f_52b4:
    ld hl, $cc24
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, [$ccdb]
    cp $01
    jr z, jr_00f_52c9

    ld a, $01
    jr nc, jr_00f_52c9

    ld a, [$cc2e]
    inc a

jr_00f_52c9:
    ld [hl+], a
    inc hl
    ld a, [$cd6c]
    inc a
    inc a
    ld [hl+], a
    ld a, [$ccdb]
    dec a
    ld b, $c1
    jr z, jr_00f_52f0

    dec a
    ld b, $c3
    jr z, jr_00f_52f0

    ld a, [$d12b]
    cp $04
    jr z, jr_00f_52f0

    ld a, [$d733]
    bit 0, a
    ld b, $c7
    jr z, jr_00f_52f0

    ld b, $ff

jr_00f_52f0:
    ld a, b
    ld [hl+], a
    ld a, [$ccdb]
    cp $01
    jr z, jr_00f_52fd

    ld a, [$cc2e]
    inc a

jr_00f_52fd:
    ld [hl], a

Jump_00f_52fe:
    ld a, [$ccdb]
    and a
    jr z, jr_00f_5312

    dec a
    jr nz, jr_00f_532e

    ld hl, $c4b9
    ld de, $53b8
    call Call_000_1955
    jr jr_00f_532e

jr_00f_5312:
    ld a, [$d733]
    bit 0, a
    jr nz, jr_00f_532e

    call Call_00f_54b6
    ld a, [$cc35]
    and a
    jr z, jr_00f_532e

    ld hl, $c4a9
    dec a
    ld bc, $0014
    call Call_000_3a87
    ld [hl], $ec

jr_00f_532e:
    ld hl, $fff6
    set 1, [hl]
    call Call_000_3abe
    ld hl, $fff6
    res 1, [hl]
    bit 6, a
    jp nz, Jump_00f_53c9

    bit 7, a
    jp nz, Jump_00f_53dd

    bit 2, a
    jp nz, Jump_00f_5435

    bit 1, a
    push af
    xor a
    ld [$cc35], a
    ld a, [$cc26]
    dec a
    ld [$cc26], a
    ld b, a
    ld a, [$ccdb]
    dec a
    jr nz, jr_00f_5361

    pop af
    ret


jr_00f_5361:
    dec a
    ld a, b
    ld [$cc2e], a
    jr nz, jr_00f_536a

    pop af
    ret


jr_00f_536a:
    pop af
    ret nz

    ld hl, $d02d
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    jr z, jr_00f_53a2

    ld a, [$d06d]
    swap a
    and $0f
    dec a
    cp c
    jr z, jr_00f_539d

    ld a, [$d064]
    bit 3, a
    jr nz, jr_00f_538d

jr_00f_538d:
    ld a, [$cc26]
    ld hl, $d01c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$ccdc], a
    xor a
    ret


jr_00f_539d:
    ld hl, $53b3
    jr jr_00f_53a5

jr_00f_53a2:
    ld hl, $53ae

jr_00f_53a5:
    call Call_000_3c49
    call Call_000_3725
    jp Jump_00f_5219


    rla
    ld h, b
    ld e, b
    ld [hl+], a
    ld d, b
    rla
    ld a, e
    ld e, b
    ld [hl+], a
    ld d, b
    sub [hl]
    add a
    adc b
    add d
    add a
    ld a, a
    sub e
    add h
    add d
    add a
    adc l
    adc b
    sub b
    sub h
    add h
    and $50

Jump_00f_53c9:
    ld a, [$cc26]
    and a
    jp nz, Jump_00f_52fe

    call Call_000_3bf9
    ld a, [$cd6c]
    inc a
    ld [$cc26], a
    jp Jump_00f_52fe


Jump_00f_53dd:
    ld a, [$cc26]
    ld b, a
    ld a, [$cd6c]
    inc a
    inc a
    cp b
    jp nz, Jump_00f_52fe

    call Call_000_3bf9
    ld a, $01
    ld [$cc26], a
    jp Jump_00f_52fe


Call_00f_53f5:
    ld a, $a5
    ld [$ccdc], a
    ld a, [$d06d]
    and a
    ld hl, $d02d
    jr nz, jr_00f_540e

    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    and $3f
    ret nz

    jr jr_00f_5423

jr_00f_540e:
    swap a
    and $0f
    ld b, a
    ld d, $05
    xor a

jr_00f_5416:
    dec d
    jr z, jr_00f_5421

    ld c, [hl]
    inc hl
    dec b
    jr z, jr_00f_5416

    or c
    jr jr_00f_5416

jr_00f_5421:
    and a
    ret nz

jr_00f_5423:
    ld hl, $5430
    call Call_000_3c49
    ld c, $3c
    call Call_000_3739
    xor a
    ret


    rla
    sub d
    ld e, b
    ld [hl+], a
    ld d, b

Jump_00f_5435:
    ld a, [$cc35]
    and a
    jr z, jr_00f_54ad

    ld hl, $d01c
    call Call_00f_5493
    ld hl, $d02d
    call Call_00f_5493
    ld hl, $d06d
    ld a, [hl]
    swap a
    and $0f
    ld b, a
    ld a, [$cc26]
    cp b
    jr nz, jr_00f_5463

    ld a, [hl]
    and $0f
    ld b, a
    ld a, [$cc35]
    swap a
    add b
    ld [hl], a
    jr jr_00f_5474

jr_00f_5463:
    ld a, [$cc35]
    cp b
    jr nz, jr_00f_5474

    ld a, [hl]
    and $0f
    ld b, a
    ld a, [$cc26]
    swap a
    add b
    ld [hl], a

jr_00f_5474:
    ld hl, $d173
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a87
    push hl
    call Call_00f_5493
    pop hl
    ld bc, $0015
    add hl, bc
    call Call_00f_5493
    xor a
    ld [$cc35], a
    jp Jump_00f_5219


Call_00f_5493:
    push hl
    ld a, [$cc35]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$cc26]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    ld b, [hl]
    ld [hl], a
    ld a, b
    ld [de], a
    ret


jr_00f_54ad:
    ld a, [$cc26]
    ld [$cc35], a
    jp Jump_00f_5219


Call_00f_54b6:
    xor a
    ldh [$ba], a
    ld hl, $c440
    ld b, $03
    ld c, $09
    call Call_000_1922
    ld a, [$d06d]
    and a
    jr z, jr_00f_54df

    swap a
    and $0f
    ld b, a
    ld a, [$cc26]
    cp b
    jr nz, jr_00f_54df

    ld hl, $c469
    ld de, $5555
    call Call_000_1955
    jr jr_00f_554e

jr_00f_54df:
    ld hl, $cc26
    dec [hl]
    xor a
    ldh [$f3], a
    ld hl, $d01c
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$ccdc], a
    ld a, [$cc2f]
    ld [$cf92], a
    ld a, $04
    ld [$cc49], a
    ld hl, $6677
    ld b, $03
    call Call_000_35d6
    ld hl, $cc26
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $d02d
    add hl, bc
    ld a, [hl]
    and $3f
    ld [$cd6d], a
    ld hl, $c455
    ld de, $555f
    call Call_000_1955
    ld hl, $c483
    ld [hl], $f3
    ld hl, $c459
    ld [hl], $f3
    ld hl, $c481
    ld de, $cd6d
    ld bc, $0102
    call Call_000_3c5f
    ld hl, $c484
    ld de, $d11e
    ld bc, $0102
    call Call_000_3c5f
    call Call_00f_6abe
    ld hl, $c46a
    ld a, $5d
    call Call_000_3e6d

jr_00f_554e:
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3dd7


    and e
    xor b
    or d
    and b
    and c
    xor e
    and h
    and e
    rst $20
    ld d, b
    sub e
    sbc b
    adc a
    add h
    ld d, b

Call_00f_5564:
    ld a, [$d12b]
    sub $04
    jr nz, jr_00f_5590

    call Call_000_3719
    call Call_00f_5605
    call Call_000_3725
    ld a, [$cc3e]
    cp $0e
    jp z, Jump_00f_5601

    cp $0d
    jr z, jr_00f_55b0

    cp $04
    ret nc

    ld [$cce2], a
    ld c, a
    ld hl, $cfed
    ld b, $00
    add hl, bc
    ld a, [hl]
    jr jr_00f_55fd

jr_00f_5590:
    ld a, [$d068]
    and $60
    ret nz

    ld hl, $d067
    ld a, [hl]
    and $12
    ret nz

    ld a, [$cfe9]
    and $27
    ret nz

    ld a, [$d067]
    and $21
    ret nz

    ld a, [$d062]
    bit 5, a
    jr z, jr_00f_55b4

jr_00f_55b0:
    ld a, $ff
    jr jr_00f_55fd

jr_00f_55b4:
    ld hl, $cfee
    ld a, [hl-]
    and a
    jr nz, jr_00f_55c3

    ld a, [$d072]
    and a
    ld a, $a5
    jr nz, jr_00f_55fd

jr_00f_55c3:
    ld a, [$d057]
    dec a
    jr z, jr_00f_55d1

    ld hl, $5719
    ld b, $0e
    call Call_000_35d6

jr_00f_55d1:
    push hl
    call Call_00f_6e9b
    ld b, $01
    cp $3f
    jr c, jr_00f_55e9

    inc hl
    inc b
    cp $7f
    jr c, jr_00f_55e9

    inc hl
    inc b
    cp $be
    jr c, jr_00f_55e9

    inc hl
    inc b

jr_00f_55e9:
    ld a, b
    dec a
    ld [$cce2], a
    ld a, [$d072]
    swap a
    and $0f
    cp b
    ld a, [hl]
    pop hl
    jr z, jr_00f_55d1

    and a
    jr z, jr_00f_55d1

jr_00f_55fd:
    ld [$ccdd], a
    ret


Jump_00f_5601:
    ld a, $a5
    jr jr_00f_55fd

Call_00f_5605:
    ld a, $ff
    ld [$cc3e], a
    ld a, [$cc2e]
    cp $0f
    jr z, jr_00f_5630

    ld a, [$cd6a]
    and a
    jr nz, jr_00f_5629

    ld a, [$ccdc]
    cp $a5
    ld b, $0e
    jr z, jr_00f_562f

    dec b
    inc a
    jr z, jr_00f_562f

    ld a, [$cc2e]
    jr jr_00f_5630

jr_00f_5629:
    ld a, [$cf92]
    add $04
    ld b, a

jr_00f_562f:
    ld a, b

jr_00f_5630:
    ld [$cc42], a
    ld hl, $4c05
    ld b, $01
    call Call_000_35d6

jr_00f_563b:
    call Call_000_22c3
    call Call_000_20af
    ld a, [$cc3e]
    inc a
    jr z, jr_00f_563b

    ld b, $0a

jr_00f_5649:
    call Call_000_20af
    call Call_000_22c3
    dec b
    jr nz, jr_00f_5649

    ld b, $0a

jr_00f_5654:
    call Call_000_20af
    call Call_000_22ed
    dec b
    jr nz, jr_00f_5654

    ret


Call_00f_565e:
    xor a
    ldh [$f3], a
    ld a, [$ccdc]
    inc a
    jp z, Jump_00f_580a

    xor a
    ld [$d05f], a
    ld [$cced], a
    ld [$ccf4], a
    ld a, $0a
    ld [$d05b], a
    ld a, [$cd6a]
    and a
    jp nz, Jump_00f_580a

    call Call_00f_5811
    jp z, Jump_00f_580a

    call Call_00f_5854
    jr nz, jr_00f_568a

    jp hl


jr_00f_568a:
    call Call_00f_6abe
    ld hl, $d062
    bit 4, [hl]
    jr nz, jr_00f_56a9

    call Call_00f_5c88
    jp z, Jump_00f_580a

Jump_00f_569a:
    ld a, [$cfd3]
    cp $27
    jp z, Jump_00f_7132

    cp $2b
    jp z, Jump_00f_7132

    jr jr_00f_56b0

jr_00f_56a9:
    ld hl, $d062
    res 4, [hl]
    res 6, [hl]

jr_00f_56b0:
    call Call_00f_5af5
    ld hl, $4000
    ld de, $ccdc
    ld b, $1a
    call Call_000_35d6
    ld a, [$cfd3]
    ld hl, $4000
    ld de, $0001
    call Call_000_3dab
    jp c, Jump_00f_7132

    ld a, [$cfd3]
    ld hl, $4049
    ld de, $0001
    call Call_000_3dab
    call c, Call_00f_7132
    ld a, [$cfd3]
    ld hl, $4011
    ld de, $0001
    call Call_000_3dab
    jp c, Jump_00f_5702

    call Call_00f_6023
    call Call_00f_6093
    jr z, jr_00f_5705

    call Call_00f_5dcf
    call Call_00f_5f65
    jp z, Jump_00f_574b

    call Call_00f_63a5
    call Call_00f_6687

Jump_00f_5702:
    call Call_00f_656b

jr_00f_5705:
    ld a, [$d05f]
    and a
    jr z, jr_00f_5714

    ld a, [$cfd3]
    sub $07
    jr z, jr_00f_571e

    jr jr_00f_574b

Jump_00f_5714:
jr_00f_5714:
    ld a, [$cfd3]
    and a
    ld a, $04
    jr z, jr_00f_571e

    ld a, $05

jr_00f_571e:
    push af
    ld a, [$d063]
    bit 4, a
    ld hl, $5747
    ld b, $1e
    call nz, Call_000_35d6
    pop af
    ld [$cc5b], a
    ld a, [$cfd2]
    call Call_00f_6f07
    call Call_00f_6ed3
    call Call_00f_4d60
    ld a, [$d063]
    bit 4, a
    ld hl, $5771
    ld b, $1e
    call nz, Call_000_35d6
    jr jr_00f_5766

Jump_00f_574b:
jr_00f_574b:
    ld c, $1e
    call Call_000_3739
    ld a, [$cfd3]
    cp $2b
    jr z, jr_00f_575d

    cp $27
    jr z, jr_00f_575d

    jr jr_00f_5766

jr_00f_575d:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_6f07

jr_00f_5766:
    ld a, [$cfd3]
    cp $09
    jr nz, jr_00f_577a

    call Call_00f_62fd
    jp z, Jump_00f_580a

    xor a
    ld [$cced], a
    jp Jump_00f_569a


jr_00f_577a:
    cp $53
    jr nz, jr_00f_5784

    call Call_00f_6348
    jp Jump_00f_569a


jr_00f_5784:
    ld a, [$cfd3]
    ld hl, $4014
    ld de, $0001
    call Call_000_3dab
    jp c, Jump_00f_7132

    ld a, [$d05f]
    and a
    jr z, jr_00f_57a6

    call Call_00f_5be2
    ld a, [$cfd3]
    cp $07
    jr z, jr_00f_57b9

    jp Jump_00f_580a


jr_00f_57a6:
    call Call_00f_60df
    call Call_00f_5c5c
    ld hl, $7b7b
    ld b, $0b
    call Call_000_35d6
    ld a, $01
    ld [$ccf4], a

jr_00f_57b9:
    ld a, [$cfd3]
    ld hl, $4030
    ld de, $0001
    call Call_000_3dab
    call c, Call_00f_7132
    ld hl, $cfe6
    ld a, [hl+]
    ld b, [hl]
    or b
    ret z

    call Call_00f_62b6
    ld hl, $d062
    bit 2, [hl]
    jr z, jr_00f_57ef

    ld a, [$d06a]
    dec a
    ld [$d06a], a
    jp nz, Jump_00f_5714

    res 2, [hl]
    ld hl, $5805
    call Call_000_3c49
    xor a
    ld [$d074], a

jr_00f_57ef:
    ld a, [$cfd3]
    and a
    jp z, Jump_00f_580a

    ld hl, $403b
    ld de, $0001
    call Call_000_3dab
    call nc, Call_00f_7132
    jp Jump_00f_580a


    rla
    xor d
    ld e, b
    ld [hl+], a
    ld d, b

Jump_00f_580a:
    xor a
    ld [$cd6a], a
    ld b, $01
    ret


Call_00f_5811:
    call Call_00f_583a
    ret nz

    ldh a, [$f3]
    and a
    jr nz, jr_00f_5828

    ld a, [$d018]
    and $27
    ret nz

    ld hl, $5830
    call Call_000_3c49
    xor a
    ret


jr_00f_5828:
    ld hl, $5835
    call Call_000_3c49
    xor a
    ret


    rla
    rst $00
    ld e, b
    ld [hl+], a
    ld d, b
    rla
    db $e3
    ld e, b
    ld [hl+], a
    ld d, b

Call_00f_583a:
    ld a, [$d057]
    dec a
    ret nz

    ld a, [$d35e]
    cp $8e
    jr c, jr_00f_5850

    cp $95
    jr nc, jr_00f_5850

    ld b, $48
    call Call_000_3493
    ret z

jr_00f_5850:
    ld a, $01
    and a
    ret


Call_00f_5854:
    ld hl, $d018
    ld a, [hl]
    and $07
    jr z, jr_00f_5884

    dec a
    ld [$d018], a
    and a
    jr z, jr_00f_5874

    xor a
    ld [$cc5b], a
    ld a, $bc
    call Call_00f_6f07
    ld hl, $5a3d
    call Call_000_3c49
    jr jr_00f_587a

jr_00f_5874:
    ld hl, $5a42
    call Call_000_3c49

jr_00f_587a:
    xor a
    ld [$ccf1], a
    ld hl, $580a
    jp Jump_00f_5a37


jr_00f_5884:
    bit 5, [hl]
    jr z, jr_00f_5898

    ld hl, $5a47
    call Call_000_3c49
    xor a
    ld [$ccf1], a
    ld hl, $580a
    jp Jump_00f_5a37


jr_00f_5898:
    ld a, [$d067]
    bit 5, a
    jp z, Jump_00f_58ac

    ld hl, $5a83
    call Call_000_3c49
    ld hl, $580a
    jp Jump_00f_5a37


Jump_00f_58ac:
    ld hl, $d062
    bit 3, [hl]
    jp z, Jump_00f_58c2

    res 3, [hl]
    ld hl, $5a51
    call Call_000_3c49
    ld hl, $580a
    jp Jump_00f_5a37


Jump_00f_58c2:
    ld hl, $d063
    bit 5, [hl]
    jr z, jr_00f_58d7

    res 5, [hl]
    ld hl, $5a56
    call Call_000_3c49
    ld hl, $580a
    jp Jump_00f_5a37


jr_00f_58d7:
    ld hl, $d06d
    ld a, [hl]
    and a
    jr z, jr_00f_58ee

    dec a
    ld [hl], a
    and $0f
    jr nz, jr_00f_58ee

    ld [hl], a
    ld [$ccee], a
    ld hl, $5a5b
    call Call_000_3c49

jr_00f_58ee:
    ld a, [$d062]
    add a
    jr nc, jr_00f_5929

    ld hl, $d06b
    dec [hl]
    jr nz, jr_00f_5907

    ld hl, $d062
    res 7, [hl]
    ld hl, $5a6a
    call Call_000_3c49
    jr jr_00f_5929

jr_00f_5907:
    ld hl, $5a60
    call Call_000_3c49
    xor a
    ld [$cc5b], a
    ld a, $be
    call Call_00f_6f07
    call Call_00f_6e9b
    cp $80
    jr c, jr_00f_5929

    ld hl, $d062
    ld a, [hl]
    and $80
    ld [hl], a
    call Call_00f_5aad
    jr jr_00f_5952

jr_00f_5929:
    ld a, [$ccee]
    and a
    jr z, jr_00f_593e

    ld hl, $ccdc
    cp [hl]
    jr nz, jr_00f_593e

    call Call_00f_5a88
    ld hl, $580a
    jp Jump_00f_5a37


jr_00f_593e:
    ld hl, $d018
    bit 6, [hl]
    jr z, jr_00f_5975

    call Call_00f_6e9b
    cp $3f
    jr nc, jr_00f_5975

    ld hl, $5a4c
    call Call_000_3c49

jr_00f_5952:
    ld hl, $d062
    ld a, [hl]
    and $cc
    ld [hl], a
    ld a, [$cfd3]
    cp $2b
    jr z, jr_00f_5966

    cp $27
    jr z, jr_00f_5966

    jr jr_00f_596f

jr_00f_5966:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_6f07

jr_00f_596f:
    ld hl, $580a
    jp Jump_00f_5a37


jr_00f_5975:
    ld hl, $d062
    bit 0, [hl]
    jr z, jr_00f_59d0

    xor a
    ld [$cfd2], a
    ld hl, $d0d7
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $d075
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld hl, $d06a
    dec [hl]
    jr z, jr_00f_599b

    ld hl, $580a
    jp Jump_00f_5a37


jr_00f_599b:
    ld hl, $d062
    res 0, [hl]
    ld hl, $5a74
    call Call_000_3c49
    ld a, $01
    ld [$cfd4], a
    ld hl, $d075
    ld a, [hl-]
    add a
    ld b, a
    ld [$d0d8], a
    ld a, [hl]
    rl a
    ld [$d0d7], a
    or b
    jr nz, jr_00f_59c2

    ld a, $01
    ld [$d05f], a

jr_00f_59c2:
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $75
    ld [$cfd2], a
    ld hl, $5705
    jp Jump_00f_5a37


jr_00f_59d0:
    bit 1, [hl]
    jr z, jr_00f_59ff

    ld a, $25
    ld [$cfd2], a
    ld hl, $5a79
    call Call_000_3c49
    ld hl, $d06a
    dec [hl]
    ld hl, $56dc
    jp nz, Jump_00f_5a37

    push hl
    ld hl, $d062
    res 1, [hl]
    set 7, [hl]
    call Call_00f_6e9b
    and $03
    inc a
    inc a
    ld [$d06b], a
    pop hl
    jp Jump_00f_5a37


jr_00f_59ff:
    bit 5, [hl]
    jp z, Jump_00f_5a1a

    ld hl, $5a7e
    call Call_000_3c49
    ld a, [$d06a]
    dec a
    ld [$d06a], a
    ld hl, $5714
    jp nz, Jump_00f_5a37

    jp Jump_00f_5a37


Jump_00f_5a1a:
    ld a, [$d063]
    bit 6, a
    jp z, Jump_00f_5a39

    ld a, $63
    ld [$d11e], a
    call Call_000_3058
    call Call_000_3826
    xor a
    ld [$cfd3], a
    ld hl, $56b0
    jp Jump_00f_5a37


Jump_00f_5a37:
    xor a
    ret


Jump_00f_5a39:
    ld a, $01
    and a
    ret


    rla
    ld bc, $2259
    ld d, b
    rla
    inc d
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    jr nz, @+$5b

    ld [hl+], a
    ld d, b
    rla
    inc [hl]
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    ld c, c
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    ld d, [hl]
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    ld l, b
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    ld a, [hl]
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    adc [hl]
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    or b
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    add $59
    ld [hl+], a
    ld d, b
    rla
    db $db
    ld e, c
    ld [hl+], a
    ld d, b
    rla
    ldh a, [$59]
    ld [hl+], a
    ld d, b
    rla
    dec b
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    dec de
    ld e, d
    ld [hl+], a
    ld d, b

Call_00f_5a88:
    ld hl, $ccdc
    ld de, $d062
    ldh a, [$f3]
    and a
    jr z, jr_00f_5a97

    inc hl
    ld de, $d067

jr_00f_5a97:
    ld a, [de]
    res 4, a
    ld [de], a
    ld a, [hl]
    ld [$d11e], a
    call Call_000_3058
    ld hl, $5aa8
    jp Jump_000_3c49


    rla
    add hl, hl
    ld e, d
    ld [hl+], a
    ld d, b

Call_00f_5aad:
    ld hl, $5a65
    call Call_000_3c49
    ld hl, $cff8
    ld a, [hl+]
    push af
    ld a, [hl-]
    push af
    ld a, [$d027]
    ld [hl+], a
    ld a, [$d028]
    ld [hl], a
    ld hl, $cfd3
    push hl
    ld a, [hl]
    push af
    xor a
    ld [hl+], a
    ld [$d05e], a
    ld a, $28
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_00f_5dcf
    call Call_00f_5f65
    pop af
    pop hl
    ld [hl], a
    ld hl, $cff9
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    xor a
    ld [$cc5b], a
    inc a
    ldh [$f3], a
    call Call_00f_6f07
    call Call_00f_4d60
    xor a
    ldh [$f3], a
    jp Jump_00f_6200


Call_00f_5af5:
    ld hl, $5afb
    jp Jump_000_3c49


    rla
    ld b, b
    ld e, d
    ld [hl+], a
    ld [$f3f0], sp
    and a
    ld a, [$cfd2]
    ld hl, $ccf1
    jr z, jr_00f_5b11

    ld a, [$cfcc]
    ld hl, $ccf2

jr_00f_5b11:
    ld [hl], a
    ld [$d11e], a
    call Call_00f_5b85
    ld a, [$cced]
    and a
    ld hl, $5b34
    ret nz

    ld a, [$d11e]
    cp $03
    ld hl, $5b34
    ret c

    ld hl, $5b2d
    ret


    rla
    ld b, h
    ld e, d
    ld [hl+], a
    ld [$0518], sp
    rla
    ld c, l
    ld e, d
    ld [hl+], a
    ld [$edfa], sp
    call z, $28a7
    add hl, bc
    ld hl, $5b43
    ret


    rla
    ld d, [hl]
    ld e, d
    ld [hl+], a
    ld [$4c21], sp
    ld e, e
    ret


    rla
    ld h, d
    ld e, d
    ld [hl+], a
    ld [$6221], sp
    ld e, e
    ld a, [$d11e]
    add a
    push bc
    ld b, $00
    ld c, a
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld l, h
    ld e, e
    ld [hl], c
    ld e, e
    db $76
    ld e, e
    ld a, e
    ld e, e
    add b
    ld e, e
    rla
    ld h, a
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    ld l, d
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    ld l, l
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    ld [hl], b
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    ld [hl], e
    ld e, d
    ld [hl+], a
    ld d, b

Call_00f_5b85:
    push bc
    ld a, [$d11e]
    ld c, a
    ld b, $00
    ld hl, $5ba3

jr_00f_5b8f:
    ld a, [hl+]
    cp $ff
    jr z, jr_00f_5b9d

    cp c
    jr z, jr_00f_5b9d

    and a
    jr nz, jr_00f_5b8f

    inc b
    jr jr_00f_5b8f

jr_00f_5b9d:
    ld a, b
    ld [$d11e], a
    pop bc
    ret


    ld c, $4a
    nop
    ld l, c
    ld [hl], l
    ld a, b
    add l
    nop
    ld h, b
    ld h, c
    ld h, h
    ld h, [hl]
    ld l, b
    adc h
    nop
    ld bc, $0b0a
    ld de, $1413
    dec d
    ld e, $22
    inc hl
    dec h
    daa
    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, b
    ld b, h
    ld b, [hl]
    ld b, a
    ld d, c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld h, a
    ld l, d
    ld l, e
    ld l, [hl]
    ld l, a
    db $76
    ld a, d
    add b
    add h
    adc e
    adc l
    sub c
    sub h
    sub [hl]
    sub a
    sbc d
    sbc h
    sbc a
    and e
    and h
    nop
    rst $38

Call_00f_5be2:
    ld de, $cfd3
    ldh a, [$f3]
    and a
    jr z, jr_00f_5bed

    ld de, $cfcd

jr_00f_5bed:
    ld hl, $5c57
    ld a, [$d05b]
    and $7f
    jr z, jr_00f_5c04

    ld hl, $5c42
    ld a, [$d05e]
    cp $ff
    jr nz, jr_00f_5c04

    ld hl, $5c4c

jr_00f_5c04:
    push de
    call Call_000_3c49
    xor a
    ld [$d05e], a
    pop de
    ld a, [de]
    cp $2d
    ret nz

    ld hl, $d0d7
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    srl a
    rr b
    ld [hl], b
    dec hl
    ld [hl+], a
    or b
    jr nz, jr_00f_5c2a

    inc a
    ld [hl], a

jr_00f_5c2a:
    ld hl, $5c47
    call Call_000_3c49
    ld b, $04
    ld a, $24
    call Call_000_3e6d
    ldh a, [$f3]
    and a
    jr nz, jr_00f_5c3f

    jp Jump_00f_6200


jr_00f_5c3f:
    jp Jump_00f_6142


    rla
    db $76
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    adc c
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    and h
    ld e, d
    ld [hl+], a
    ld d, b
    ld hl, $5c57
    jp Jump_000_3c49


    rla
    or h
    ld e, d
    ld [hl+], a
    ld d, b

Call_00f_5c5c:
    ld a, [$d05e]
    and a
    jr z, jr_00f_5c75

    dec a
    add a
    ld hl, $5c7a
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c49
    xor a
    ld [$d05e], a

jr_00f_5c75:
    ld c, $14
    jp Jump_000_3739


    ld a, [hl]
    ld e, h
    add e
    ld e, h
    rla
    ret


    ld e, d
    ld [hl+], a
    ld d, b
    rla
    ret c

    ld e, d
    ld [hl+], a
    ld d, b

Call_00f_5c88:
    xor a
    ld [$cced], a
    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_5c97

    ld a, $01
    and a
    ret


jr_00f_5c97:
    ld hl, $d177
    ld bc, $002c
    ld a, [$cc2f]
    call Call_000_3a87
    ld a, [$d359]
    cp [hl]
    jr nz, jr_00f_5cb1

    inc hl
    ld a, [$d35a]
    cp [hl]
    jp z, Jump_00f_5db0

jr_00f_5cb1:
    ld hl, $d356
    bit 7, [hl]
    ld a, $65
    jr nz, jr_00f_5cce

    bit 5, [hl]
    ld a, $46
    jr nz, jr_00f_5cce

    bit 3, [hl]
    ld a, $32
    jr nz, jr_00f_5cce

    bit 1, [hl]
    ld a, $1e
    jr nz, jr_00f_5cce

    ld a, $0a

jr_00f_5cce:
    ld b, a
    ld c, a
    ld a, [$d022]
    ld d, a
    add b
    ld b, a
    jr nc, jr_00f_5cda

    ld b, $ff

jr_00f_5cda:
    ld a, c
    cp d
    jp nc, Jump_00f_5db0

jr_00f_5cdf:
    call Call_00f_6e9b
    swap a
    cp b
    jr nc, jr_00f_5cdf

    cp c
    jp c, Jump_00f_5db0

jr_00f_5ceb:
    call Call_00f_6e9b
    cp b
    jr nc, jr_00f_5ceb

    cp c
    jr c, jr_00f_5d3f

    ld a, d
    sub c
    ld b, a
    call Call_00f_6e9b
    swap a
    sub b
    jr c, jr_00f_5d0e

    cp b
    jr nc, jr_00f_5d20

    ld hl, $5dc0
    call Call_000_3c49
    call Call_00f_5aad
    jp Jump_00f_5db4


jr_00f_5d0e:
    call Call_00f_6e9b
    add a
    swap a
    and $07
    jr z, jr_00f_5d0e

    ld [$d018], a
    ld hl, $5dbb
    jr jr_00f_5d3a

jr_00f_5d20:
    call Call_00f_6e9b
    and $03
    ld hl, $5db6
    and a
    jr z, jr_00f_5d3a

    ld hl, $5dc0
    dec a
    jr z, jr_00f_5d3a

    ld hl, $5dc5
    dec a
    jr z, jr_00f_5d3a

    ld hl, $5dca

jr_00f_5d3a:
    call Call_000_3c49
    jr jr_00f_5db4

jr_00f_5d3f:
    ld a, [$d01d]
    and a
    jr z, jr_00f_5d20

    ld a, [$ccee]
    and a
    jr nz, jr_00f_5d20

    ld a, [$ccdc]
    cp $a5
    jr z, jr_00f_5d20

    ld hl, $d02d
    push hl
    ld a, [hl+]
    and $3f
    ld b, a
    ld a, [hl+]
    and $3f
    add b
    ld b, a
    ld a, [hl+]
    and $3f
    add b
    ld b, a
    ld a, [hl]
    and $3f
    add b
    pop hl
    push af
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    ld b, a
    pop af
    cp b
    jr z, jr_00f_5d20

    ld a, $01
    ld [$cced], a
    ld a, [$cc28]
    ld b, a
    ld a, [$cc26]
    ld c, a

jr_00f_5d86:
    call Call_00f_6e9b
    and $03
    cp b
    jr nc, jr_00f_5d86

    cp c
    jr z, jr_00f_5d86

    ld [$cc26], a
    ld hl, $d02d
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_00f_5d86

    ld a, [$cc26]
    ld c, a
    ld b, $00
    ld hl, $d01c
    add hl, bc
    ld a, [hl]
    ld [$ccdc], a
    call Call_00f_6abe

Jump_00f_5db0:
    ld a, $01
    and a
    ret


Jump_00f_5db4:
jr_00f_5db4:
    xor a
    ret


    rla
    push hl
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    db $fd
    ld e, d
    ld [hl+], a
    ld d, b
    rla
    db $10
    ld e, e
    ld [hl+], a
    ld d, b
    rla
    jr nz, jr_00f_5e23

    ld [hl+], a
    ld d, b
    rla
    ld [hl-], a
    ld e, e
    ld [hl+], a
    ld d, b

Call_00f_5dcf:
    xor a
    ld hl, $d0d7
    ld [hl+], a
    ld [hl], a
    ld hl, $cfd4
    ld a, [hl+]
    and a
    ld d, a
    ret z

    ld a, [hl]
    cp $14
    jr nc, jr_00f_5e16

    ld hl, $cff8
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d069]
    bit 2, a
    jr z, jr_00f_5df2

    sla c
    rl b

jr_00f_5df2:
    ld hl, $d025
    ld a, [$d05e]
    and a
    jr z, jr_00f_5e49

    ld c, $03
    call Call_00f_5f1c
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    ld c, a
    push bc
    ld hl, $d18f
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a87
    pop bc
    jr jr_00f_5e49

jr_00f_5e16:
    ld hl, $cffc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d069]
    bit 1, a
    jr z, jr_00f_5e27

jr_00f_5e23:
    sla c
    rl b

jr_00f_5e27:
    ld hl, $d02b
    ld a, [$d05e]
    and a
    jr z, jr_00f_5e49

    ld c, $05
    call Call_00f_5f1c
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    ld c, a
    push bc
    ld hl, $d195
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a87
    pop bc

jr_00f_5e49:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    or b
    jr z, jr_00f_5e64

    srl b
    rr c
    srl b
    rr c
    srl h
    rr l
    srl h
    rr l
    ld a, l
    or h
    jr nz, jr_00f_5e64

    inc l

jr_00f_5e64:
    ld b, l
    ld a, [$d022]
    ld e, a
    ld a, [$d05e]
    and a
    jr z, jr_00f_5e71

    sla e

jr_00f_5e71:
    ld a, $01
    and a
    ret


Call_00f_5e75:
    ld hl, $d0d7
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $cfce
    ld a, [hl+]
    ld d, a
    and a
    ret z

    ld a, [hl]
    cp $14
    jr nc, jr_00f_5ebc

    ld hl, $d027
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d064]
    bit 2, a
    jr z, jr_00f_5e98

    sla c
    rl b

jr_00f_5e98:
    ld hl, $cff6
    ld a, [$d05e]
    and a
    jr z, jr_00f_5eef

    ld hl, $d191
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    push bc
    ld c, $02
    call Call_00f_5f1c
    ld hl, $ff97
    pop bc
    jr jr_00f_5eef

jr_00f_5ebc:
    ld hl, $d02b
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d064]
    bit 1, a
    jr z, jr_00f_5ecd

    sla c
    rl b

jr_00f_5ecd:
    ld hl, $cffc
    ld a, [$d05e]
    and a
    jr z, jr_00f_5eef

    ld hl, $d195
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    push bc
    ld c, $05
    call Call_00f_5f1c
    ld hl, $ff97
    pop bc

jr_00f_5eef:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    or b
    jr z, jr_00f_5f0a

    srl b
    rr c
    srl b
    rr c
    srl h
    rr l
    srl h
    rr l
    ld a, l
    or h
    jr nz, jr_00f_5f0a

    inc l

jr_00f_5f0a:
    ld b, l
    ld a, [$cff3]
    ld e, a
    ld a, [$d05e]
    and a
    jr z, jr_00f_5f17

    sla e

jr_00f_5f17:
    ld a, $01
    and a
    and a
    ret


Call_00f_5f1c:
    push de
    push bc
    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_5f40

    ld hl, $d8c6
    dec c
    sla c
    ld b, $00
    add hl, bc
    ld a, [$cfe8]
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    pop bc
    pop de
    ret


jr_00f_5f40:
    ld a, [$cff3]
    ld [$d127], a
    ld a, [$cfe5]
    ld [$d0b5], a
    call Call_000_1537
    ld hl, $cff1
    ld de, $cfaf
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop bc
    ld b, $00
    ld hl, $cfa4
    call Call_000_394a
    pop de
    ret


Call_00f_5f65:
    ldh a, [$f3]
    and a
    ld a, [$cfd3]
    jr z, jr_00f_5f70

    ld a, [$cfcd]

jr_00f_5f70:
    cp $07
    jr nz, jr_00f_5f79

    srl c
    jr nz, jr_00f_5f79

    inc c

jr_00f_5f79:
    cp $1d
    jr z, jr_00f_5f89

    cp $1e
    jr z, jr_00f_5f89

    cp $26
    jp z, Jump_00f_6016

    ld a, d
    and a
    ret z

jr_00f_5f89:
    xor a
    ld hl, $ff95
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, e
    add a
    jr nc, jr_00f_5f99

    push af
    ld a, $01
    ld [hl], a
    pop af

jr_00f_5f99:
    inc hl
    ld [hl+], a
    ld a, $05
    ld [hl-], a
    push bc
    ld b, $04
    call Call_000_38b9
    pop bc
    inc [hl]
    inc [hl]
    inc hl
    ld [hl], d
    call Call_000_38ac
    ld [hl], b
    call Call_000_38ac
    ld [hl], c
    ld b, $04
    call Call_000_38b9
    ld [hl], $32
    ld b, $04
    call Call_000_38b9
    ld hl, $d0d7
    ld b, [hl]
    ldh a, [$98]
    add b
    ldh [$98], a
    jr nc, jr_00f_5fd0

    ldh a, [$97]
    inc a
    ldh [$97], a
    and a
    jr z, jr_00f_6004

jr_00f_5fd0:
    ldh a, [$95]
    ld b, a
    ldh a, [$96]
    or a
    jr nz, jr_00f_6004

    ldh a, [$97]
    cp $03
    jr c, jr_00f_5fe8

    cp $04
    jr nc, jr_00f_6004

    ldh a, [$98]
    cp $e6
    jr nc, jr_00f_6004

jr_00f_5fe8:
    inc hl
    ldh a, [$98]
    ld b, [hl]
    add b
    ld [hl-], a
    ldh a, [$97]
    ld b, [hl]
    adc b
    ld [hl], a
    jr c, jr_00f_6004

    ld a, [hl]
    cp $03
    jr c, jr_00f_600a

    cp $04
    jr nc, jr_00f_6004

    inc hl
    ld a, [hl-]
    cp $e6
    jr c, jr_00f_600a

jr_00f_6004:
    ld a, $03
    ld [hl+], a
    ld a, $e5
    ld [hl-], a

jr_00f_600a:
    inc hl
    ld a, [hl]
    add $02
    ld [hl-], a
    jr nc, jr_00f_6012

    inc [hl]

jr_00f_6012:
    ld a, $01
    and a
    ret


Jump_00f_6016:
    call Call_00f_7132
    ld a, [$d05f]
    dec a
    ret


    ld [bc], a
    ld c, e
    sbc b
    and e
    rst $38

Call_00f_6023:
    xor a
    ld [$d05e], a
    ldh a, [$f3]
    and a
    ld a, [$cfe5]
    jr nz, jr_00f_6032

    ld a, [$d014]

jr_00f_6032:
    ld [$d0b5], a
    call Call_000_1537
    ld a, [$d0bc]
    ld b, a
    srl b
    ldh a, [$f3]
    and a
    ld hl, $cfd4
    ld de, $d063
    jr z, jr_00f_604f

    ld hl, $cfce
    ld de, $d068

jr_00f_604f:
    ld a, [hl-]
    and a
    ret z

    dec hl
    ld c, [hl]
    ld a, [de]
    bit 2, a
    jr nz, jr_00f_6061

    sla b
    jr nc, jr_00f_6063

    ld b, $ff
    jr jr_00f_6063

jr_00f_6061:
    srl b

jr_00f_6063:
    ld hl, $608e

jr_00f_6066:
    ld a, [hl+]
    cp c
    jr z, jr_00f_6071

    inc a
    jr nz, jr_00f_6066

    srl b
    jr jr_00f_607d

jr_00f_6071:
    sla b
    jr nc, jr_00f_6077

    ld b, $ff

jr_00f_6077:
    sla b
    jr nc, jr_00f_607d

    ld b, $ff

jr_00f_607d:
    call Call_00f_6e9b
    rlc a
    rlc a
    rlc a
    cp b
    ret nc

    ld a, $01
    ld [$d05e], a
    ret


    ld [bc], a
    ld c, e
    sbc b
    and e
    rst $38

Call_00f_6093:
    ldh a, [$f3]
    and a
    ld hl, $ccdd
    ld de, $cfce
    ld a, [$ccdc]
    jr z, jr_00f_60aa

    ld hl, $ccdc
    ld de, $cfd4
    ld a, [$ccdd]

jr_00f_60aa:
    cp $44
    ret nz

    ld a, $01
    ld [$d05f], a
    ld a, [hl]
    cp $44
    ret z

    ld a, [de]
    and a
    ret z

    inc de
    ld a, [de]
    and a
    jr z, jr_00f_60c4

    cp $01
    jr z, jr_00f_60c4

    xor a
    ret


jr_00f_60c4:
    ld hl, $d0d7
    ld a, [hl+]
    or [hl]
    ret z

    ld a, [hl]
    add a
    ld [hl-], a
    ld a, [hl]
    adc a
    ld [hl], a
    jr nc, jr_00f_60d6

    ld a, $ff
    ld [hl+], a
    ld [hl], a

jr_00f_60d6:
    xor a
    ld [$d05f], a
    call Call_00f_656b
    xor a
    ret


Call_00f_60df:
    ld a, [$cfd3]
    cp $26
    jr z, jr_00f_6142

    cp $28
    jr z, jr_00f_60f7

    cp $29
    jr z, jr_00f_610f

    ld a, [$cfd4]
    and a
    jp z, Jump_00f_619d

    jr jr_00f_6142

jr_00f_60f7:
    ld hl, $cfe6
    ld de, $d0d7
    ld a, [hl+]
    srl a
    ld [de], a
    inc de
    ld b, a
    ld a, [hl]
    rr a
    ld [de], a
    or b
    jr nz, jr_00f_6142

    ld a, $01
    ld [de], a
    jr jr_00f_6142

jr_00f_610f:
    ld hl, $d022
    ld a, [hl]
    ld b, a
    ld a, [$cfd2]
    cp $45
    jr z, jr_00f_613b

    cp $65
    jr z, jr_00f_613b

    ld b, $14
    cp $31
    jr z, jr_00f_613b

    ld b, $28
    cp $52
    jr z, jr_00f_613b

    ld a, [hl]
    ld b, a
    srl a
    add b
    ld b, a

jr_00f_6131:
    call Call_00f_6e9b
    and a
    jr z, jr_00f_6131

    cp b
    jr nc, jr_00f_6131

    ld b, a

jr_00f_613b:
    ld hl, $d0d7
    xor a
    ld [hl+], a
    ld a, b
    ld [hl], a

Call_00f_6142:
Jump_00f_6142:
jr_00f_6142:
    ld hl, $d0d7
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    or b
    jr z, jr_00f_619d

    ld a, [$d068]
    bit 4, a
    jp nz, Jump_00f_625e

    ld a, [hl-]
    ld b, a
    ld a, [$cfe7]
    ld [$ceeb], a
    sub b
    ld [$cfe7], a
    ld a, [hl]
    ld b, a
    ld a, [$cfe6]
    ld [$ceec], a
    sbc b
    ld [$cfe6], a
    jr nc, jr_00f_617b

    ld a, [$ceec]
    ld [hl+], a
    ld a, [$ceeb]
    ld [hl], a
    xor a
    ld hl, $cfe6
    ld [hl+], a
    ld [hl], a

jr_00f_617b:
    ld hl, $cff4
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld hl, $cfe6
    ld a, [hl+]
    ld [$ceee], a
    ld a, [hl]
    ld [$ceed], a
    ld hl, $c3ca
    xor a
    ld [$cf94], a
    ld a, $48
    call Call_000_3e6d

Jump_00f_619d:
jr_00f_619d:
    jp Jump_00f_4d5a


Call_00f_61a0:
    ld a, [$cfcd]
    cp $26
    jr z, jr_00f_6200

    cp $28
    jr z, jr_00f_61b8

    cp $29
    jr z, jr_00f_61d0

    ld a, [$cfce]
    and a
    jp z, Jump_00f_625b

    jr jr_00f_6200

jr_00f_61b8:
    ld hl, $d015
    ld de, $d0d7
    ld a, [hl+]
    srl a
    ld [de], a
    inc de
    ld b, a
    ld a, [hl]
    rr a
    ld [de], a
    or b
    jr nz, jr_00f_6200

    ld a, $01
    ld [de], a
    jr jr_00f_6200

jr_00f_61d0:
    ld hl, $cff3
    ld a, [hl]
    ld b, a
    ld a, [$cfcc]
    cp $45
    jr z, jr_00f_61f9

    cp $65
    jr z, jr_00f_61f9

    ld b, $14
    cp $31
    jr z, jr_00f_61f9

    ld b, $28
    cp $52
    jr z, jr_00f_61f9

    ld a, [hl]
    ld b, a
    srl a
    add b
    ld b, a

jr_00f_61f2:
    call Call_00f_6e9b
    cp b
    jr nc, jr_00f_61f2

    ld b, a

jr_00f_61f9:
    ld hl, $d0d7
    xor a
    ld [hl+], a
    ld a, b
    ld [hl], a

Jump_00f_6200:
jr_00f_6200:
    ld hl, $d0d7
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    or b
    jr z, jr_00f_625b

    ld a, [$d063]
    bit 4, a
    jp nz, Jump_00f_625e

    ld a, [hl-]
    ld b, a
    ld a, [$d016]
    ld [$ceeb], a
    sub b
    ld [$d016], a
    ld [$ceed], a
    ld b, [hl]
    ld a, [$d015]
    ld [$ceec], a
    sbc b
    ld [$d015], a
    ld [$ceee], a
    jr nc, jr_00f_6243

    ld a, [$ceec]
    ld [hl+], a
    ld a, [$ceeb]
    ld [hl], a
    xor a
    ld hl, $d015
    ld [hl+], a
    ld [hl], a
    ld hl, $ceed
    ld [hl+], a
    ld [hl], a

jr_00f_6243:
    ld hl, $d023
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld hl, $c45e
    ld a, $01
    ld [$cf94], a
    ld a, $48
    call Call_000_3e6d

Jump_00f_625b:
jr_00f_625b:
    jp Jump_00f_4d5a


Jump_00f_625e:
    ld hl, $62ac
    call Call_000_3c49
    ld de, $ccd8
    ld bc, $d068
    ldh a, [$f3]
    and a
    jr z, jr_00f_6275

    ld de, $ccd7
    ld bc, $d063

jr_00f_6275:
    ld hl, $d0d7
    ld a, [hl+]
    and a
    jr nz, jr_00f_6280

    ld a, [de]
    sub [hl]
    ld [de], a
    ret nc

jr_00f_6280:
    ld h, b
    ld l, c
    res 4, [hl]
    ld hl, $62b1
    call Call_000_3c49
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ld hl, $5747
    ld b, $1e
    call Call_000_35d6
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ld hl, $cfd3
    and a
    jr z, jr_00f_62a7

    ld hl, $cfcd

jr_00f_62a7:
    xor a
    ld [hl], a
    jp Jump_00f_4d5a


    rla
    ld b, a
    ld e, e
    ld [hl+], a
    ld d, b
    rla
    ld l, d
    ld e, e
    ld [hl+], a
    ld d, b

Call_00f_62b6:
    ld hl, $d068
    ld de, $cd2e
    ld bc, $cfcc
    ldh a, [$f3]
    and a
    jr z, jr_00f_62cd

    ld hl, $d063
    ld de, $cd1a
    ld bc, $cfd2

jr_00f_62cd:
    bit 6, [hl]
    ret z

    ld a, [de]
    cp $0d
    ret z

    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ld h, b
    ld l, c
    ld [hl], $00
    inc hl
    ld [hl], $0a
    push hl
    ld hl, $62f8
    call Call_000_3c49
    call Call_00f_7428
    pop hl
    xor a
    ld [hl-], a
    ld a, $63
    ld [hl], a
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ret


    rla
    add b
    ld e, e
    ld [hl+], a
    ld d, b

Call_00f_62fd:
    ldh a, [$f3]
    and a
    ld a, [$ccf2]
    ld hl, $ccdc
    ld de, $cfd2
    jr z, jr_00f_6314

    ld a, [$ccf1]
    ld de, $cfcc
    ld hl, $ccdd

jr_00f_6314:
    ld [hl], a
    cp $77
    jr z, jr_00f_631c

    and a
    jr nz, jr_00f_6329

jr_00f_631c:
    ld hl, $6324
    call Call_000_3c49
    xor a
    ret


    rla
    sub [hl]
    ld e, e
    ld [hl+], a
    ld d, b

jr_00f_6329:
    ld [$d11e], a
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a87
    ld a, $0e
    call Call_000_009d
    call Call_00f_6373
    call Call_000_3058
    call Call_000_3826
    ld a, $01
    and a
    ret


Call_00f_6348:
    xor a
    ld [$cc5b], a
    ld a, $76
    call Call_00f_6f07
    ld de, $cfd2
    ld hl, $ccdc
    ldh a, [$f3]
    and a
    jr z, jr_00f_6362

    ld de, $cfcc
    ld hl, $ccdd

jr_00f_6362:
    call Call_00f_6e9b
    and a
    jr z, jr_00f_6362

    cp $a5
    jr nc, jr_00f_6362

    cp $76
    jr z, jr_00f_6362

    ld [hl], a
    jr jr_00f_6329

Call_00f_6373:
    ldh a, [$f3]
    and a
    ld hl, $d02d
    ld de, $d188
    ld a, [$cc2e]
    jr z, jr_00f_638a

    ld hl, $cffe
    ld de, $d8c1
    ld a, [$cce2]

jr_00f_638a:
    ld b, $00
    ld c, a
    add hl, bc
    inc [hl]
    ld h, d
    ld l, e
    add hl, bc
    ldh a, [$f3]
    and a
    ld a, [$cc2f]
    jr z, jr_00f_639d

    ld a, [$cfe8]

jr_00f_639d:
    ld bc, $002c
    call Call_000_3a87
    inc [hl]
    ret


Call_00f_63a5:
    ld hl, $d019
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $cfea
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld a, [$cfd5]
    ld [$d11e], a
    ldh a, [$f3]
    and a
    jr z, jr_00f_63ce

    ld hl, $cfea
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $d019
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld a, [$cfcf]
    ld [$d11e], a

jr_00f_63ce:
    ld a, [$d11e]
    cp b
    jr z, jr_00f_63d9

    cp c
    jr z, jr_00f_63d9

    jr jr_00f_63f3

jr_00f_63d9:
    ld hl, $d0d8
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    srl b
    rr c
    add hl, bc
    ld a, h
    ld [$d0d7], a
    ld a, l
    ld [$d0d8], a
    ld hl, $d05b
    set 7, [hl]

jr_00f_63f3:
    ld a, [$d11e]
    ld b, a
    ld hl, $6474

Jump_00f_63fa:
    ld a, [hl+]
    cp $ff
    jr z, jr_00f_6448

    cp b
    jr nz, jr_00f_6443

    ld a, [hl]
    cp d
    jr z, jr_00f_640b

    cp e
    jr z, jr_00f_640b

    jr jr_00f_6443

jr_00f_640b:
    push hl
    push bc
    inc hl
    ld a, [$d05b]
    and $80
    ld b, a
    ld a, [hl]
    ldh [$99], a
    add b
    ld [$d05b], a
    xor a
    ldh [$96], a
    ld hl, $d0d7
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl-]
    ldh [$98], a
    call Call_000_38ac
    ld a, $0a
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$97]
    ld [hl+], a
    ld b, a
    ldh a, [$98]
    ld [hl], a
    or b
    jr nz, jr_00f_6441

    inc a
    ld [$d05f], a

jr_00f_6441:
    pop bc
    pop hl

jr_00f_6443:
    inc hl
    inc hl
    jp Jump_00f_63fa


jr_00f_6448:
    ret


    ld a, [$cfcf]
    ld d, a
    ld hl, $d019
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, $10
    ld [$d11e], a
    ld hl, $6474

jr_00f_645b:
    ld a, [hl+]
    cp $ff
    ret z

    cp d
    jr nz, jr_00f_646b

    ld a, [hl+]
    cp b
    jr z, jr_00f_646f

    cp c
    jr z, jr_00f_646f

    jr jr_00f_646c

jr_00f_646b:
    inc hl

jr_00f_646c:
    inc hl
    jr jr_00f_645b

jr_00f_646f:
    ld a, [hl]
    ld [$d11e], a
    ret


    dec d
    inc d
    inc d
    inc d
    ld d, $14
    inc d
    add hl, de
    inc d
    ld d, $15
    inc d
    rla
    dec d
    inc d
    dec d
    dec b
    inc d
    inc b
    ld [bc], a
    nop
    dec d
    dec d
    dec b
    inc d
    inc d
    dec b
    rla
    rla
    dec b
    add hl, de
    add hl, de
    dec b
    ld d, $16
    dec b
    jr jr_00f_64b2

    dec b
    inc d
    dec d
    dec b
    ld d, $14
    dec b
    dec d
    ld d, $05
    rla
    ld d, $05
    nop
    dec b
    dec b
    nop
    ld [$0800], sp
    ld [$1414], sp
    rlca

jr_00f_64b2:
    inc d
    inc d
    dec b
    dec b
    dec d
    inc b
    inc d
    rla
    inc b
    nop
    rla
    ld [bc], a
    inc d
    ld d, $04
    inc d
    ld d, $07
    dec b
    ld d, $03
    dec b
    ld d, $05
    inc d
    ld d, $02
    dec b
    add hl, de
    dec d
    dec b
    add hl, de
    ld d, $14
    add hl, de
    inc b
    inc d
    add hl, de
    ld [bc], a
    inc d
    ld bc, $1400
    ld bc, $0503
    ld bc, $0502
    ld bc, $0518
    ld bc, $0507
    ld bc, $1405
    ld bc, $1419
    ld bc, $0008
    inc bc
    ld d, $14
    inc bc
    inc bc
    dec b
    inc bc
    inc b
    dec b
    inc bc
    rlca
    inc d
    inc bc
    dec b
    dec b
    inc bc
    ld [$0405], sp
    inc d
    inc d
    inc b
    rla
    inc d
    inc b
    ld d, $05
    inc b
    rlca
    dec b
    inc b
    dec b
    inc d
    inc b
    inc bc
    inc d
    ld [bc], a
    rla
    dec b
    ld [bc], a
    ld bc, $0214
    rlca
    inc d
    ld [bc], a
    ld d, $14
    ld [bc], a
    dec b
    dec b
    jr jr_00f_6528

    inc d

jr_00f_6528:
    jr jr_00f_652d

    inc d
    rlca
    inc d

jr_00f_652d:
    dec b
    rlca
    ld d, $14
    rlca
    ld bc, $0705
    ld [bc], a
    dec b
    rlca
    jr jr_00f_654e

    rlca
    ld [$0705], sp
    inc bc
    inc d
    dec b
    inc d
    inc d
    dec b
    ld bc, $0505
    inc b
    dec b
    dec b
    ld [bc], a
    inc d
    dec b
    rlca

jr_00f_654e:
    inc d
    dec b
    add hl, de
    inc d
    ld [$0000], sp
    ld [$0018], sp
    inc d
    ld a, [de]
    dec b
    dec d
    ld a, [de]
    dec b
    rla
    ld a, [de]
    dec b
    ld d, $1a
    dec b
    add hl, de
    ld a, [de]
    inc d
    ld a, [de]
    ld a, [de]
    inc d
    rst $38

Call_00f_656b:
    ld hl, $d067
    ld de, $cfd3
    ld bc, $cfe9
    ldh a, [$f3]
    and a
    jr z, jr_00f_6582

    ld hl, $d062
    ld de, $cfcd
    ld bc, $d018

jr_00f_6582:
    ld a, [de]
    cp $08
    jr nz, jr_00f_658d

    ld a, [bc]
    and $07
    jp z, Jump_00f_6609

jr_00f_658d:
    ld a, [de]
    cp $11
    ret z

    call Call_00f_7b79
    jr z, jr_00f_65a0

    cp $03
    jp z, Jump_00f_6609

    cp $08
    jp z, Jump_00f_6609

jr_00f_65a0:
    bit 6, [hl]
    jp nz, Jump_00f_6609

    ldh a, [$f3]
    and a
    jr nz, jr_00f_65cf

    ld a, [$cfd3]
    cp $12
    jr c, jr_00f_65c7

    cp $1a
    jr c, jr_00f_65bf

    cp $3a
    jr c, jr_00f_65c7

    cp $42
    jr c, jr_00f_65bf

    jr jr_00f_65c7

jr_00f_65bf:
    ld a, [$d068]
    bit 1, a
    jp nz, Jump_00f_6609

jr_00f_65c7:
    ld a, [$d063]
    bit 0, a
    ret nz

    jr jr_00f_65f2

jr_00f_65cf:
    ld a, [$cfcd]
    cp $12
    jr c, jr_00f_65ec

    cp $1a
    jr c, jr_00f_65e4

    cp $3a
    jr c, jr_00f_65ec

    cp $42
    jr c, jr_00f_65e4

    jr jr_00f_65ec

jr_00f_65e4:
    ld a, [$d063]
    bit 1, a
    jp nz, Jump_00f_6609

jr_00f_65ec:
    ld a, [$d068]
    bit 0, a
    ret nz

jr_00f_65f2:
    call Call_00f_6624
    ld a, [$cfd6]
    ld b, a
    ldh a, [$f3]
    and a
    jr z, jr_00f_6602

    ld a, [$cfd0]
    ld b, a

jr_00f_6602:
    call Call_00f_6e9b
    cp b
    jr nc, jr_00f_6609

    ret


Jump_00f_6609:
jr_00f_6609:
    xor a
    ld hl, $d0d7
    ld [hl+], a
    ld [hl], a
    inc a
    ld [$d05f], a
    ldh a, [$f3]
    and a
    jr z, jr_00f_661e

    ld hl, $d067
    res 5, [hl]
    ret


jr_00f_661e:
    ld hl, $d062
    res 5, [hl]
    ret


Call_00f_6624:
    ld hl, $cfd6
    ldh a, [$f3]
    and a
    ld a, [$cd1e]
    ld b, a
    ld a, [$cd33]
    ld c, a
    jr z, jr_00f_663f

    ld hl, $cfd0
    ld a, [$cd32]
    ld b, a
    ld a, [$cd1f]
    ld c, a

jr_00f_663f:
    ld a, $0e
    sub c
    ld c, a
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    push hl
    ld d, $02

jr_00f_664e:
    push bc
    ld hl, $76cb
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    pop bc
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38ac
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$98]
    ld b, a
    ldh a, [$97]
    or b
    jp nz, Jump_00f_6677

    ldh [$97], a
    ld a, $01
    ldh [$98], a

Jump_00f_6677:
    ld b, c
    dec d
    jr nz, jr_00f_664e

    ldh a, [$97]
    and a
    ldh a, [$98]
    jr z, jr_00f_6684

    ld a, $ff

jr_00f_6684:
    pop hl
    ld [hl], a
    ret


Call_00f_6687:
    ld hl, $d0d7
    ld a, [hl+]
    and a
    jr nz, jr_00f_6692

    ld a, [hl]
    cp $02
    ret c

jr_00f_6692:
    xor a
    ldh [$96], a
    dec hl
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a

jr_00f_669c:
    call Call_00f_6e9b
    rrca
    cp $d9
    jr c, jr_00f_669c

    ldh [$99], a
    call Call_000_38ac
    ld a, $ff
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$97]
    ld hl, $d0d7
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    ret


Call_00f_66bc:
    ld a, [$ccdd]
    inc a
    jp z, Jump_00f_688c

    call Call_00f_5811
    jp z, Jump_00f_688c

    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_66dc

    ld b, $01
    ld a, [$cc3e]
    cp $0e
    jr z, jr_00f_66dc

    cp $04
    ret nc

jr_00f_66dc:
    ld hl, $ccd5
    inc [hl]
    xor a
    ld [$d05f], a
    ld [$ccf4], a
    ld a, $0a
    ld [$d05b], a
    call Call_00f_688f
    jr nz, jr_00f_66f2

    jp hl


jr_00f_66f2:
    ld hl, $d067
    bit 4, [hl]
    jr nz, jr_00f_670b

    call Call_00f_6abe

Jump_00f_66fc:
    ld a, [$cfcd]
    cp $27
    jp z, Jump_00f_7132

    cp $2b
    jp z, Jump_00f_7132

    jr jr_00f_672b

jr_00f_670b:
    ld hl, $d067
    res 4, [hl]
    res 6, [hl]
    ld a, [$cfcc]
    ld [$d0b5], a
    ld a, $2c
    ld [$d0b7], a
    ld a, $02
    ld [$d0b6], a
    call Call_000_376b
    ld de, $cd6d
    call Call_000_3826

jr_00f_672b:
    xor a
    ld [$cced], a
    call Call_00f_5af5
    ld a, [$cfcd]
    ld hl, $4000
    ld de, $0001
    call Call_000_3dab
    jp c, Jump_00f_7132

    ld a, [$cfcd]
    ld hl, $4049
    ld de, $0001
    call Call_000_3dab
    call c, Call_00f_7132
    call Call_00f_6c81
    ld a, [$cfcd]
    ld hl, $4011
    ld de, $0001
    call Call_000_3dab
    jp c, Jump_00f_677f

    call Call_00f_6023
    call Call_00f_6093
    jr z, jr_00f_6782

    call Call_00f_6c81
    call Call_00f_5e75
    call Call_00f_6c81
    call Call_00f_5f65
    jp z, Jump_00f_67d1

    call Call_00f_63a5
    call Call_00f_6687

Jump_00f_677f:
    call Call_00f_656b

jr_00f_6782:
    ld a, [$d05f]
    and a
    jr z, jr_00f_6791

    ld a, [$cfcd]
    cp $07
    jr z, jr_00f_67a0

    jr jr_00f_67d1

jr_00f_6791:
    call Call_00f_6c81

Jump_00f_6794:
    ld a, [$cfcd]
    and a
    ld a, $01
    jr z, jr_00f_67a4

    ld a, $02
    jr jr_00f_67a4

jr_00f_67a0:
    call Call_00f_6c81
    xor a

jr_00f_67a4:
    push af
    ld a, [$d068]
    bit 4, a
    ld hl, $5747
    ld b, $1e
    call nz, Call_000_35d6
    pop af
    ld [$cc5b], a
    ld a, [$cfcc]
    call Call_00f_6f07
    call Call_00f_6ed3
    call Call_00f_4dec
    ld a, [$d068]
    bit 4, a
    ld hl, $5771
    ld b, $1e
    call nz, Call_000_35d6
    jr jr_00f_67ef

Jump_00f_67d1:
jr_00f_67d1:
    call Call_00f_6c81
    ld c, $1e
    call Call_000_3739
    ld a, [$cfcd]
    cp $2b
    jr z, jr_00f_67e6

    cp $27
    jr z, jr_00f_67e6

    jr jr_00f_67ef

jr_00f_67e6:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_6f07

jr_00f_67ef:
    ld a, [$cfcd]
    cp $09
    jr nz, jr_00f_67ff

    call Call_00f_62fd
    jp z, Jump_00f_688c

    jp Jump_00f_66fc


jr_00f_67ff:
    cp $53
    jr nz, jr_00f_6809

    call Call_00f_6348
    jp Jump_00f_66fc


jr_00f_6809:
    ld a, [$cfcd]
    ld hl, $4014
    ld de, $0001
    call Call_000_3dab
    jp c, Jump_00f_7132

    ld a, [$d05f]
    and a
    jr z, jr_00f_682b

    call Call_00f_5be2
    ld a, [$cfcd]
    cp $07
    jr z, jr_00f_683e

    jp Jump_00f_688c


jr_00f_682b:
    call Call_00f_61a0
    call Call_00f_5c5c
    ld hl, $7b7b
    ld b, $0b
    call Call_000_35d6
    ld a, $01
    ld [$ccf4], a

jr_00f_683e:
    ld a, [$cfcd]
    ld hl, $4030
    ld de, $0001
    call Call_000_3dab
    call c, Call_00f_7132
    ld hl, $d015
    ld a, [hl+]
    ld b, [hl]
    or b
    ret z

    call Call_00f_62b6
    ld hl, $d067
    bit 2, [hl]
    jr z, jr_00f_6873

    push hl
    ld hl, $d06f
    dec [hl]
    pop hl
    jp nz, Jump_00f_6794

    res 2, [hl]
    ld hl, $6887
    call Call_000_3c49
    xor a
    ld [$cd05], a

jr_00f_6873:
    ld a, [$cfcd]
    and a
    jr z, jr_00f_688c

    ld hl, $403b
    ld de, $0001
    call Call_000_3dab
    call nc, Call_00f_7132
    jr jr_00f_688c

    rla
    xor a
    ld e, e
    ld [hl+], a
    ld d, b

Jump_00f_688c:
jr_00f_688c:
    ld b, $01
    ret


Call_00f_688f:
    ld hl, $cfe9
    ld a, [hl]
    and $07
    jr z, jr_00f_68bf

    dec a
    ld [$cfe9], a
    and a
    jr z, jr_00f_68af

    ld hl, $5a3d
    call Call_000_3c49
    xor a
    ld [$cc5b], a
    ld a, $bd
    call Call_00f_6f07
    jr jr_00f_68b5

jr_00f_68af:
    ld hl, $5a42
    call Call_000_3c49

jr_00f_68b5:
    xor a
    ld [$ccf2], a
    ld hl, $688c
    jp Jump_00f_6ab8


jr_00f_68bf:
    bit 5, [hl]
    jr z, jr_00f_68d3

    ld hl, $5a47
    call Call_000_3c49
    xor a
    ld [$ccf2], a
    ld hl, $688c
    jp Jump_00f_6ab8


jr_00f_68d3:
    ld a, [$d062]
    bit 5, a
    jp z, Jump_00f_68e7

    ld hl, $5a83
    call Call_000_3c49
    ld hl, $688c
    jp Jump_00f_6ab8


Jump_00f_68e7:
    ld hl, $d067
    bit 3, [hl]
    jp z, Jump_00f_68fd

    res 3, [hl]
    ld hl, $5a51
    call Call_000_3c49
    ld hl, $688c
    jp Jump_00f_6ab8


Jump_00f_68fd:
    ld hl, $d068
    bit 5, [hl]
    jr z, jr_00f_6912

    res 5, [hl]
    ld hl, $5a56
    call Call_000_3c49
    ld hl, $688c
    jp Jump_00f_6ab8


jr_00f_6912:
    ld hl, $d072
    ld a, [hl]
    and a
    jr z, jr_00f_6929

    dec a
    ld [hl], a
    and $0f
    jr nz, jr_00f_6929

    ld [hl], a
    ld [$ccef], a
    ld hl, $5a5b
    call Call_000_3c49

jr_00f_6929:
    ld a, [$d067]
    add a
    jp nc, Jump_00f_69aa

    ld hl, $d070
    dec [hl]
    jr nz, jr_00f_6944

    ld hl, $d067
    res 7, [hl]
    ld hl, $5a6a
    call Call_000_3c49
    jp Jump_00f_69aa


jr_00f_6944:
    ld hl, $5a60
    call Call_000_3c49
    xor a
    ld [$cc5b], a
    ld a, $bf
    call Call_00f_6f07
    call Call_00f_6e9b
    cp $80
    jr c, jr_00f_69aa

    ld hl, $d067
    ld a, [hl]
    and $80
    ld [hl], a
    ld hl, $5a65
    call Call_000_3c49
    ld hl, $d027
    ld a, [hl+]
    push af
    ld a, [hl-]
    push af
    ld a, [$cff8]
    ld [hl+], a
    ld a, [$cff9]
    ld [hl], a
    ld hl, $cfcd
    push hl
    ld a, [hl]
    push af
    xor a
    ld [hl+], a
    ld [$d05e], a
    ld a, $28
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_00f_5e75
    call Call_00f_5f65
    pop af
    pop hl
    ld [hl], a
    ld hl, $d028
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    xor a
    ld [$cc5b], a
    ldh [$f3], a
    ld a, $01
    call Call_00f_6f07
    ld a, $01
    ldh [$f3], a
    call Call_00f_6142
    jr jr_00f_69d3

Jump_00f_69aa:
jr_00f_69aa:
    ld a, [$ccef]
    and a
    jr z, jr_00f_69bf

    ld hl, $ccdd
    cp [hl]
    jr nz, jr_00f_69bf

    call Call_00f_5a88
    ld hl, $688c
    jp Jump_00f_6ab8


jr_00f_69bf:
    ld hl, $cfe9
    bit 6, [hl]
    jr z, jr_00f_69f6

    call Call_00f_6e9b
    cp $3f
    jr nc, jr_00f_69f6

    ld hl, $5a4c
    call Call_000_3c49

jr_00f_69d3:
    ld hl, $d067
    ld a, [hl]
    and $cc
    ld [hl], a
    ld a, [$cfcd]
    cp $2b
    jr z, jr_00f_69e7

    cp $27
    jr z, jr_00f_69e7

    jr jr_00f_69f0

jr_00f_69e7:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_6f07

jr_00f_69f0:
    ld hl, $688c
    jp Jump_00f_6ab8


jr_00f_69f6:
    ld hl, $d067
    bit 0, [hl]
    jr z, jr_00f_6a54

    xor a
    ld [$cfcc], a
    ld hl, $d0d7
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $cd06
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld hl, $d06f
    dec [hl]
    jr z, jr_00f_6a1c

    ld hl, $688c
    jp Jump_00f_6ab8


jr_00f_6a1c:
    ld hl, $d067
    res 0, [hl]
    ld hl, $5a74
    call Call_000_3c49
    ld a, $01
    ld [$cfce], a
    ld hl, $cd06
    ld a, [hl-]
    add a
    ld b, a
    ld [$d0d8], a
    ld a, [hl]
    rl a
    ld [$d0d7], a
    or b
    jr nz, jr_00f_6a43

    ld a, $01
    ld [$d05f], a

jr_00f_6a43:
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $75
    ld [$cfcc], a
    call Call_00f_6c81
    ld hl, $6782
    jp Jump_00f_6ab8


jr_00f_6a54:
    bit 1, [hl]
    jr z, jr_00f_6a83

    ld a, $25
    ld [$cfcc], a
    ld hl, $5a79
    call Call_000_3c49
    ld hl, $d06f
    dec [hl]
    ld hl, $6750
    jp nz, Jump_00f_6ab8

    push hl
    ld hl, $d067
    res 1, [hl]
    set 7, [hl]
    call Call_00f_6e9b
    and $03
    inc a
    inc a
    ld [$d070], a
    pop hl
    jp Jump_00f_6ab8


jr_00f_6a83:
    bit 5, [hl]
    jp z, Jump_00f_6a9b

    ld hl, $5a7e
    call Call_000_3c49
    ld hl, $d06f
    dec [hl]
    ld hl, $6794
    jp nz, Jump_00f_6ab8

    jp Jump_00f_6ab8


Jump_00f_6a9b:
    ld a, [$d068]
    bit 6, a
    jp z, Jump_00f_6aba

    ld a, $63
    ld [$d11e], a
    call Call_000_3058
    call Call_000_3826
    xor a
    ld [$cfcd], a
    ld hl, $672b
    jp Jump_00f_6ab8


Jump_00f_6ab8:
    xor a
    ret


Jump_00f_6aba:
    ld a, $01
    and a
    ret


Call_00f_6abe:
    ldh a, [$f3]
    and a
    jp z, Jump_00f_6acc

    ld de, $cfcc
    ld a, [$ccdd]
    jr jr_00f_6adc

Jump_00f_6acc:
    ld de, $cfd2
    ld a, [$d733]
    bit 0, a
    ld a, [$ccd9]
    jr nz, jr_00f_6adc

    ld a, [$ccdc]

jr_00f_6adc:
    ld [$d0b5], a
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a87
    ld a, $0e
    call Call_000_009d
    ld a, $2c
    ld [$d0b7], a
    ld a, $02
    ld [$d0b6], a
    call Call_000_376b
    ld de, $cd6d
    jp Jump_000_3826


Call_00f_6b01:
    ld a, [$d12b]
    cp $04
    jp z, Jump_00f_4c13

    ld a, [$cfd8]
    ld [$cfe5], a
    ld [$d0b5], a
    call Call_000_1537
    ld a, [$d069]
    bit 3, a
    ld hl, $cceb
    ld a, [hl+]
    ld b, [hl]
    jr nz, jr_00f_6b33

    ld a, [$d057]
    cp $02
    ld a, $98
    ld b, $88
    jr z, jr_00f_6b33

    call Call_00f_6e9b
    ld b, a
    call Call_00f_6e9b

jr_00f_6b33:
    ld hl, $cff1
    ld [hl+], a
    ld [hl], b
    ld de, $cff3
    ld a, [$d127]
    ld [de], a
    inc de
    ld b, $00
    ld hl, $cfe6
    push hl
    call Call_000_3936
    pop hl
    ld a, [$d057]
    cp $02
    jr z, jr_00f_6b65

    ld a, [$d069]
    bit 3, a
    jr nz, jr_00f_6b86

    ld a, [$cff4]
    ld [hl+], a
    ld a, [$cff5]
    ld [hl+], a
    xor a
    inc hl
    ld [hl], a
    jr jr_00f_6b86

jr_00f_6b65:
    ld hl, $d8a5
    ld a, [$cf92]
    ld bc, $002c
    call Call_000_3a87
    ld a, [hl+]
    ld [$cfe6], a
    ld a, [hl+]
    ld [$cfe7], a
    ld a, [$cf92]
    ld [$cfe8], a
    inc hl
    ld a, [hl]
    ld [$cfe9], a
    jr jr_00f_6b86

jr_00f_6b86:
    ld hl, $d0be
    ld de, $cfea
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [$d057]
    cp $02
    jr nz, jr_00f_6bb0

    ld hl, $d8ac
    ld a, [$cf92]
    ld bc, $002c
    call Call_000_3a87
    ld bc, $0004
    call Call_000_00b5
    jr jr_00f_6bca

jr_00f_6bb0:
    ld hl, $d0c7
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    dec de
    dec de
    dec de
    xor a
    ld [$cee9], a
    ld a, $3e
    call Call_000_3e6d

jr_00f_6bca:
    ld hl, $cfed
    ld de, $cffd
    ld a, $5e
    call Call_000_3e6d
    ld hl, $d0b9
    ld de, $d002
    ld b, $05

jr_00f_6bdd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_6bdd

    ld hl, $d0c0
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$cfd8]
    ld [$d11e], a
    call Call_000_2f9e
    ld hl, $cd6d
    ld de, $cfda
    ld bc, $000b
    call Call_000_00b5
    ld a, [$cfd8]
    ld [$d11e], a
    ld a, $3a
    call Call_000_3e6d
    ld a, [$d11e]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d30a
    ld a, $10
    call Call_000_3e6d
    ld hl, $cff3
    ld de, $cd23
    ld bc, $000b
    call Call_000_00b5
    ld a, $07
    ld b, $08
    ld hl, $cd2e

jr_00f_6c2d:
    ld [hl+], a
    dec b
    jr nz, jr_00f_6c2d

    ret


Call_00f_6c32:
    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_6c4d

    xor a
    ld [$cc34], a
    ld hl, $72d6
    ld b, $0d
    call Call_000_35d6
    ld a, $01
    ld [$cfcb], a
    call Call_000_190f

jr_00f_6c4d:
    call Call_000_20af
    ld a, $30
    call Call_000_3e6d
    ld hl, $6e58
    ld b, $0f
    call Call_000_35d6
    ld a, $01
    ldh [$ba], a
    ld a, $ff
    ld [$cfcb], a
    call Call_000_0082
    call Call_000_190f
    xor a
    ldh [$ba], a
    ldh [$b0], a
    ldh [rWY], a
    ldh [$d7], a
    ld hl, $d060
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d06d], a
    ret


Call_00f_6c81:
    push bc
    ld a, [$d022]
    ld b, a
    ld a, [$cff3]
    ld [$d022], a
    ld a, b
    ld [$cff3], a
    pop bc
    ret


Call_00f_6c92:
    ld a, [$d05a]
    dec a
    ld de, $7e0a
    jr nz, jr_00f_6c9e

    ld de, $7e9a

jr_00f_6c9e:
    ld a, $0c
    call Call_000_36eb
    ld a, $03
    call Call_000_3e6d
    ld hl, $c300
    xor a
    ldh [$8b], a
    ld b, $07
    ld e, $a0

jr_00f_6cb2:
    ld c, $03
    ld d, $38

jr_00f_6cb6:
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, $08
    add d
    ld d, a
    inc hl
    ldh a, [$8b]
    ld [hl+], a
    inc a
    ldh [$8b], a
    inc hl
    dec c
    jr nz, jr_00f_6cb6

    ldh a, [$8b]
    add $04
    ldh [$8b], a
    ld a, $08
    add e
    ld e, a
    dec b
    jr nz, jr_00f_6cb2

    ld de, $9310
    call Call_000_16ea
    ld a, $0a
    ld [$0000], a
    xor a
    ld [$4000], a
    ld hl, $8000
    ld de, $a188
    ldh a, [$b8]
    ld b, a
    ld c, $31
    call Call_000_1848
    xor a
    ld [$0000], a
    ld a, $31
    ldh [$e1], a
    ld hl, $c405
    ld a, $01
    jp Jump_000_3e6d


    ld hl, $5680
    ld b, $0e
    call Call_000_35d6
    ld hl, $56a7
    ld b, $0e
    jp Jump_000_35d6


Call_00f_6d12:
    ld hl, $56d3
    ld b, $0e
    jp Jump_000_35d6


Call_00f_6d1a:
    ld a, $01
    jr jr_00f_6d1f

Call_00f_6d1e:
    xor a

jr_00f_6d1f:
    ldh [$f3], a
    call Call_00f_6d27
    jp Jump_00f_6d64


Call_00f_6d27:
    ldh a, [$f3]
    and a
    jr z, jr_00f_6d48

    ld a, [$d018]
    and $40
    ret z

    ld hl, $d02a
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6d46

    ld b, $01

jr_00f_6d46:
    ld [hl], b
    ret


jr_00f_6d48:
    ld a, [$cfe9]
    and $40
    ret z

    ld hl, $cffb
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6d62

    ld b, $01

jr_00f_6d62:
    ld [hl], b
    ret


Call_00f_6d64:
Jump_00f_6d64:
    ldh a, [$f3]
    and a
    jr z, jr_00f_6d81

    ld a, [$d018]
    and $10
    ret z

    ld hl, $d026
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6d7f

    ld b, $01

jr_00f_6d7f:
    ld [hl], b
    ret


jr_00f_6d81:
    ld a, [$cfe9]
    and $10
    ret z

    ld hl, $cff7
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6d97

    ld b, $01

jr_00f_6d97:
    ld [hl], b
    ret


    ld c, $00

jr_00f_6d9b:
    call Call_00f_6da5
    inc c
    ld a, c
    cp $04
    jr nz, jr_00f_6d9b

    ret


Call_00f_6da5:
    push bc
    push bc
    ld a, [$d11e]
    and a
    ld a, c
    ld hl, $d025
    ld de, $cd12
    ld bc, $cd1a
    jr z, jr_00f_6dc0

    ld hl, $cff6
    ld de, $cd26
    ld bc, $cd2e

jr_00f_6dc0:
    add c
    ld c, a
    jr nc, jr_00f_6dc5

    inc b

jr_00f_6dc5:
    ld a, [bc]
    pop bc
    ld b, a
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00f_6dd4

    inc d

jr_00f_6dd4:
    pop bc
    push hl
    ld hl, $76cb
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    xor a
    ldh [$96], a
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38ac
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    pop hl
    ldh a, [$98]
    sub $e7
    ldh a, [$97]
    sbc $03
    jp c, Jump_00f_6e0c

    ld a, $03
    ldh [$97], a
    ld a, $e7
    ldh [$98], a

Jump_00f_6e0c:
    ldh a, [$97]
    ld [hl+], a
    ld b, a
    ldh a, [$98]
    ld [hl], a
    or b
    jr nz, jr_00f_6e17

    inc [hl]

jr_00f_6e17:
    pop bc
    ret


Call_00f_6e19:
    ld a, [$d12b]
    cp $04
    ret z

    ld a, [$d356]
    ld b, a
    ld hl, $d025
    ld c, $04

jr_00f_6e28:
    srl b
    call c, Call_00f_6e35
    inc hl
    inc hl
    srl b
    dec c
    jr nz, jr_00f_6e28

    ret


Call_00f_6e35:
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld a, [hl-]
    sub $e7
    ld a, [hl]
    sbc $03
    ret c

    ld a, $03
    ld [hl+], a
    ld a, $e7
    ld [hl-], a
    ret


Call_00f_6e58:
    call Call_000_36c0

Call_00f_6e5b:
    ldh a, [rLCDC]
    add a
    jr c, jr_00f_6e7c

    ld hl, $6080
    ld de, $96d0
    ld bc, $0018
    ld a, $04
    call Call_000_182b
    ld hl, $6098
    ld de, $9730
    ld bc, $0030
    ld a, $04
    jp Jump_000_182b


jr_00f_6e7c:
    ld de, $6080
    ld hl, $96d0
    ld bc, $0403
    call Call_000_1886
    ld de, $6098
    ld hl, $9730
    ld bc, $0406
    jp Jump_000_1886


Call_00f_6e94:
    ld hl, $6e9a
    jp Jump_000_3c49


    ld d, b

Call_00f_6e9b:
    ld a, [$d12b]
    cp $04
    jp nz, Jump_000_3e5c

    push hl
    push bc
    ld a, [$ccde]
    ld c, a
    ld b, $00
    ld hl, $d148
    add hl, bc
    inc a
    ld [$ccde], a
    cp $09
    ld a, [hl]
    pop bc
    pop hl
    ret c

    push hl
    push bc
    push af
    xor a
    ld [$ccde], a
    ld hl, $d148
    ld b, $09

jr_00f_6ec5:
    ld a, [hl]
    ld c, a
    add a
    add a
    add c
    inc a
    ld [hl+], a
    dec b
    jr nz, jr_00f_6ec5

    pop af
    pop bc
    pop hl
    ret


Call_00f_6ed3:
    ldh a, [$f3]
    and a
    ld hl, $cfea
    ld de, $d067
    ld a, [$cfd2]
    jr z, jr_00f_6eea

    ld hl, $d019
    ld de, $d067
    ld a, [$cfcc]

jr_00f_6eea:
    cp $78
    jr z, jr_00f_6ef1

    cp $99
    ret nz

jr_00f_6ef1:
    ld a, [de]
    bit 6, a
    ret nz

    ld a, [hl+]
    cp $08
    ret z

    ld a, [hl]
    cp $08
    ret z

    ld a, [$d05f]
    and a
    ret nz

    ld a, $05
    ld [$cc5b], a

Call_00f_6f07:
    ld [$d07c], a
    call Call_000_3dd7
    ld a, $08
    jp Jump_000_3e6d


    ld a, [$d059]
    and a
    jr z, jr_00f_6f23

    ld a, [$d059]
    ld [$cf91], a
    ld [$cfd8], a
    jr jr_00f_6f3d

jr_00f_6f23:
    ld a, [$d732]
    bit 1, a
    jr z, jr_00f_6f2f

    ldh a, [$b4]
    bit 1, a
    ret nz

jr_00f_6f2f:
    ld a, [$d13c]
    and a
    ret nz

    ld hl, $7870
    ld b, $04
    call Call_000_35d6
    ret nz

jr_00f_6f3d:
    ld a, [$d35d]
    push af
    ld hl, $d358
    ld a, [hl]
    push af
    res 1, [hl]
    ld hl, $65af
    ld b, $14
    call Call_000_35d6
    ld a, [$cfd8]
    sub $c8
    jp c, Jump_00f_6f8b

    ld [$d031], a
    call Call_000_3566
    ld hl, $5c53
    ld b, $0e
    call Call_000_35d6
    call Call_00f_6c32
    call Call_00f_704b
    xor a
    ld [$cfd8], a
    ldh [$e1], a
    dec a
    ld [$ccdf], a
    ld hl, $c3ac
    ld a, $01
    call Call_000_3e6d
    ld a, $ff
    ld [$cfe8], a
    ld a, $02
    ld [$d057], a
    jp Jump_00f_6feb


Jump_00f_6f8b:
    ld a, $01
    ld [$d057], a
    call Call_00f_6b01
    call Call_00f_6c32
    ld a, [$d059]
    cp $91
    jr z, jr_00f_6fa2

    call Call_00f_583a
    jr nz, jr_00f_6fd7

jr_00f_6fa2:
    ld hl, $d0c2
    ld a, $66
    ld [hl+], a
    ld bc, $66b5
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $cfda
    ld a, $86
    ld [hl+], a
    ld a, $87
    ld [hl+], a
    ld a, $8e
    ld [hl+], a
    ld a, $92
    ld [hl+], a
    ld a, $93
    ld [hl+], a
    ld [hl], $50
    ld a, [$cf91]
    push af
    ld a, $b8
    ld [$cf91], a
    ld de, $9000
    call Call_000_1665
    pop af
    ld [$cf91], a
    jr jr_00f_6fdd

jr_00f_6fd7:
    ld de, $9000
    call Call_000_1665

jr_00f_6fdd:
    xor a
    ld [$d031], a
    ldh [$e1], a
    ld hl, $c3ac
    ld a, $01
    call Call_000_3e6d

Jump_00f_6feb:
    ld b, $00
    call Call_000_3def
    call Call_00f_404c
    xor a
    ldh [$ba], a
    ld hl, $704a
    call Call_000_3c49
    call Call_000_3719
    call Call_000_190f
    ld a, $98
    ldh [$bd], a
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    ld a, $9c
    ldh [$bd], a
    call Call_000_3725
    ld hl, $c435
    ld bc, $050a
    call Call_000_18c4
    ld hl, $c3a1
    ld bc, $040a
    call Call_000_18c4
    call Call_000_0082
    ld a, [$d057]
    dec a
    call z, Call_00f_4dec
    call Call_00f_411e
    ld hl, $77aa
    ld b, $04
    call Call_000_35d6
    pop af
    ld [$d358], a
    pop af
    ld [$d35d], a
    ld a, [$d0d4]
    ldh [$d7], a
    scf
    ret


    ld d, b

Call_00f_704b:
    ld a, [$d033]
    ld e, a
    ld a, [$d034]
    ld d, a
    ld a, [$d12b]
    and a
    ld a, $13
    jr z, jr_00f_705d

    ld a, $04

jr_00f_705d:
    call Call_000_36eb
    ld de, $9000
    ld a, $77
    ld c, a
    jp Jump_000_1672


    xor a
    ld [$c0f1], a
    ld [$c0f2], a
    jp Jump_000_23b1


    ld a, [$cc4f]
    ld h, a
    ld a, [$cc50]
    ld l, a
    ldh a, [$e1]
    ldh [$8b], a
    ld b, $4c
    ld a, [$d057]
    and a
    jr z, jr_00f_70bc

    add b
    ld [hl], a
    call Call_000_3dd7
    ld bc, $ffd7
    add hl, bc
    ld a, $01
    ld [$cd6c], a
    ld bc, $0303
    ld a, $05
    call Call_000_3e6d
    ld c, $04
    call Call_000_3739
    ld bc, $ffd7
    add hl, bc
    xor a
    ld [$cd6c], a
    ld bc, $0505
    ld a, $05
    call Call_000_3e6d
    ld c, $05
    call Call_000_3739
    ld bc, $ffd7
    jr jr_00f_70bf

jr_00f_70bc:
    ld bc, $ff85

jr_00f_70bf:
    add hl, bc
    ldh a, [$8b]
    add $31
    jr jr_00f_70d0

    ld a, [$cc4f]
    ld h, a
    ld a, [$cc50]
    ld l, a
    ldh a, [$e1]

jr_00f_70d0:
    ld bc, $0707
    ld de, $0014
    push af
    ld a, [$d0aa]
    and a
    jr nz, jr_00f_70ed

    pop af

jr_00f_70de:
    push bc
    push hl

jr_00f_70e0:
    ld [hl], a
    add hl, de
    inc a
    dec c
    jr nz, jr_00f_70e0

    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_00f_70de

    ret


jr_00f_70ed:
    push bc
    ld b, $00
    dec c
    add hl, bc
    pop bc
    pop af

jr_00f_70f4:
    push bc
    push hl

jr_00f_70f6:
    ld [hl], a
    add hl, de
    inc a
    dec c
    jr nz, jr_00f_70f6

    pop hl
    dec hl
    pop bc
    dec b
    jr nz, jr_00f_70f4

    ret


    ld a, [$cfd9]
    ld [$cf91], a
    ld hl, $c405
    ld b, $07
    ld c, $08
    call Call_000_18c4
    ld hl, $000d
    call Call_000_1627
    ld a, $03
    call Call_000_3e6d
    ld de, $9310
    call Call_000_16ea
    ld hl, $8000
    ld de, $9310
    ld c, $31
    ldh a, [$b8]
    ld b, a
    jp Jump_000_1848


Call_00f_7132:
Jump_00f_7132:
    call Call_00f_7138
    ld b, $01
    ret


Call_00f_7138:
    ldh a, [$f3]
    and a
    ld a, [$cfd3]
    jr z, jr_00f_7143

    ld a, [$cfcd]

jr_00f_7143:
    dec a
    add a
    ld hl, $7150
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $fc
    ld [hl], c
    ld c, a
    ld [hl], d
    jp hl


    ld [hl], d
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    pop af
    ld [hl], d
    jp hl


    ld [hl], d
    nop
    nop
    jr z, jr_00f_71d8

    jr z, jr_00f_71da

    jr z, jr_00f_71dc

    jr z, jr_00f_71de

    jr z, jr_00f_71e0

    jr z, jr_00f_71e2

    ld c, $7b
    nop
    nop
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld d, $7b
    ld e, $7b
    push hl
    db $76
    rla
    ld [hl], a
    add hl, sp
    ld [hl], a
    ld de, $1178
    ld a, b
    ld e, e
    ld a, b
    db $fc
    ld [hl], c
    ld c, a
    ld [hl], d
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    ld e, e
    ld a, b
    add h
    ld a, b
    adc h
    ld a, b
    nop
    nop
    nop
    nop
    rla
    ld a, c
    adc h
    ld a, b
    ld de, $0078
    nop
    ld b, c
    ld a, c
    ld c, c
    ld a, c
    ld d, c
    ld a, c
    ld h, c
    ld a, c
    jr z, @+$76

    jr z, jr_00f_722a

    jr z, @+$76

    jr z, jr_00f_722e

    jr z, @+$76

    jr z, @+$76

    ld h, $7b
    ld l, $7b
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld [hl], $7b
    ld [hl], $7b
    ld c, a
    ld [hl], d
    or c
    ld a, c
    ld c, h
    ld [hl], l

jr_00f_71d8:
    ld c, h
    ld [hl], l

jr_00f_71da:
    ld c, h
    ld [hl], l

jr_00f_71dc:
    ld c, h
    ld [hl], l

jr_00f_71de:
    ld c, h
    ld [hl], l

jr_00f_71e0:
    ld c, h
    ld [hl], l

jr_00f_71e2:
    ld c, h
    ld [hl], l
    ld c, h
    ld [hl], l
    ld e, c
    ld a, c
    ld de, $0078
    nop
    cp c
    ld a, c
    pop bc
    ld a, c
    rst $18
    ld a, c
    db $ed
    ld a, c
    nop
    nop
    ld a, h
    ld a, d
    add h
    ld a, d
    adc d
    ld a, d
    ld de, $cfe9
    ld bc, $d068
    ldh a, [$f3]
    and a
    jp z, Jump_00f_720e

    ld de, $d018
    ld bc, $d063

Jump_00f_720e:
    ld a, [bc]
    bit 5, a
    res 5, a
    ld [bc], a
    jr nz, jr_00f_7231

    ld a, [de]
    ld b, a
    and $07
    jr z, jr_00f_7222

    ld hl, $724a
    jp Jump_000_3c49


jr_00f_7222:
    ld a, b
    and a
    jr nz, jr_00f_7242

    push de
    call Call_00f_656b

jr_00f_722a:
    pop de
    ld a, [$d05f]

jr_00f_722e:
    and a
    jr nz, jr_00f_7242

jr_00f_7231:
    call Call_00f_6e9b
    and $07
    jr z, jr_00f_7231

    ld [de], a
    call Call_00f_7b89
    ld hl, $7245
    jp Jump_000_3c49


jr_00f_7242:
    jp Jump_00f_7b5e


    rla
    dec d
    ld b, a
    dec h
    ld d, b
    rla
    dec h
    ld b, a
    dec h
    ld d, b
    ld hl, $cfe9
    ld de, $cfd3
    ldh a, [$f3]
    and a
    jr z, jr_00f_7260

    ld hl, $d018
    ld de, $cfcd

jr_00f_7260:
    call Call_00f_7b79
    jr nz, jr_00f_72d3

    ld a, [hl+]
    ld b, a
    and a
    jr nz, jr_00f_72d3

    ld a, [hl+]
    cp $03
    jr z, jr_00f_72d3

    ld a, [hl-]
    cp $03
    jr z, jr_00f_72d3

    ld a, [de]
    cp $02
    ld b, $34
    jr z, jr_00f_7290

    cp $21
    ld b, $67
    jr z, jr_00f_7290

    push hl
    push de
    call Call_00f_656b
    pop de
    pop hl
    ld a, [$d05f]
    and a
    jr nz, jr_00f_72d7

    jr jr_00f_7295

jr_00f_7290:
    call Call_00f_6e9b
    cp b
    ret nc

jr_00f_7295:
    dec hl
    set 3, [hl]
    push de
    dec de
    ldh a, [$f3]
    and a
    ld b, $c7
    ld hl, $d064
    ld a, [de]
    ld de, $d06c
    jr nz, jr_00f_72b0

    ld b, $a9
    ld hl, $d069
    ld de, $d071

jr_00f_72b0:
    cp $5c
    jr nz, jr_00f_72bd

    set 0, [hl]
    xor a
    ld [de], a
    ld hl, $72e4
    jr jr_00f_72c0

jr_00f_72bd:
    ld hl, $72df

jr_00f_72c0:
    pop de
    ld a, [de]
    cp $42
    jr z, jr_00f_72cd

    ld a, b
    call Call_00f_7b96
    jp Jump_000_3c49


jr_00f_72cd:
    call Call_00f_7b89
    jp Jump_000_3c49


jr_00f_72d3:
    ld a, [de]
    cp $42
    ret nz

jr_00f_72d7:
    ld c, $32
    call Call_000_3739
    jp Jump_00f_7b5e


    rla
    add hl, sp
    ld b, a
    dec h
    ld d, b
    rla
    ld c, d
    ld b, a
    dec h
    ld d, b
    ld hl, $783f
    ld b, $01
    jp Jump_000_35d6


    ld hl, $d015
    ld de, $d063
    ldh a, [$f3]
    and a
    jr z, jr_00f_7302

    ld hl, $cfe6
    ld de, $d068

jr_00f_7302:
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl], a
    ld a, [de]
    res 7, a
    ld [de], a
    ret


    xor a
    ld [$cc5b], a
    call Call_00f_7b79
    ret nz

    ldh a, [$f3]
    and a
    jp nz, Jump_00f_7382

    ld a, [$cfe9]
    and a
    jp nz, Jump_00f_73e2

    ld a, [$cfd5]
    ld b, a
    ld a, [$cfea]
    cp b
    ret z

    ld a, [$cfeb]
    cp b
    ret z

    ld a, [$cfd3]
    cp $07
    ld b, $1a
    jr c, jr_00f_733c

    ld b, $4d
    sub $1e

jr_00f_733c:
    push af
    call Call_00f_6e9b
    cp b
    pop bc
    ret nc

    ld a, b
    cp $04
    jr z, jr_00f_735c

    cp $05
    jr z, jr_00f_736f

    ld a, $40
    ld [$cfe9], a
    call Call_00f_6d27
    ld a, $a9
    call Call_00f_7bb9
    jp Jump_00f_7b6e


jr_00f_735c:
    ld a, $10
    ld [$cfe9], a
    call Call_00f_6d64
    ld a, $a9
    call Call_00f_7bb9
    ld hl, $73d8
    jp Jump_000_3c49


jr_00f_736f:
    call Call_00f_79cf
    ld a, $20
    ld [$cfe9], a
    ld a, $a9
    call Call_00f_7bb9
    ld hl, $73dd
    jp Jump_000_3c49


Jump_00f_7382:
    ld a, [$d018]
    and a
    jp nz, Jump_00f_73e2

    ld a, [$cfcf]
    ld b, a
    ld a, [$d019]
    cp b
    ret z

    ld a, [$d01a]
    cp b
    ret z

    ld a, [$cfcd]
    cp $07
    ld b, $1a
    jr c, jr_00f_73a4

    ld b, $4d
    sub $1e

jr_00f_73a4:
    push af
    call Call_00f_6e9b
    cp b
    pop bc
    ret nc

    ld a, b
    cp $04
    jr z, jr_00f_73bf

    cp $05
    jr z, jr_00f_73cd

    ld a, $40
    ld [$d018], a
    call Call_00f_6d27
    jp Jump_00f_7b6e


jr_00f_73bf:
    ld a, $10
    ld [$d018], a
    call Call_00f_6d64
    ld hl, $73d8
    jp Jump_000_3c49


jr_00f_73cd:
    ld a, $20
    ld [$d018], a
    ld hl, $73dd
    jp Jump_000_3c49


    rla
    ld e, [hl]
    ld b, a
    dec h
    ld d, b
    rla
    ld l, l
    ld b, a
    dec h
    ld d, b

Jump_00f_73e2:
    and $20
    ret z

    ldh a, [$f3]
    and a
    jr nz, jr_00f_7406

    ld a, [$cfd5]
    sub $14
    ret nz

    ld [$cfe9], a
    ld hl, $d8a8
    ld a, [$cfe8]
    ld bc, $002c
    call Call_000_3a87
    xor a
    ld [hl], a
    ld hl, $7423
    jr jr_00f_7420

jr_00f_7406:
    ld a, [$cfcf]
    sub $14
    ret nz

    ld [$d018], a
    ld hl, $d16f
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a87
    xor a
    ld [hl], a
    ld hl, $7423

jr_00f_7420:
    jp Jump_000_3c49


    rla
    add d
    ld b, a
    dec h
    ld d, b

Call_00f_7428:
    ld hl, $cd1a
    ld de, $cfd3
    ldh a, [$f3]
    and a
    jr z, jr_00f_7439

    ld hl, $cd2e
    ld de, $cfcd

jr_00f_7439:
    ld a, [de]
    sub $0a
    cp $08
    jr c, jr_00f_7442

    sub $28

jr_00f_7442:
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc b
    ld a, $0d
    cp b
    jp c, Jump_00f_7522

    ld a, [de]
    cp $12
    jr c, jr_00f_745a

    inc b
    ld a, $0d
    cp b
    jr nc, jr_00f_745a

    ld b, a

jr_00f_745a:
    ld [hl], b
    ld a, c
    cp $04
    jr nc, jr_00f_74ca

    push hl
    ld hl, $d026
    ld de, $cd12
    ldh a, [$f3]
    and a
    jr z, jr_00f_7472

    ld hl, $cff7
    ld de, $cd26

jr_00f_7472:
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00f_747e

    inc d

jr_00f_747e:
    pop bc
    ld a, [hl-]
    sub $e7
    jr nz, jr_00f_748a

    ld a, [hl]
    sbc $03
    jp z, Jump_00f_7520

jr_00f_748a:
    push hl
    push bc
    ld hl, $76cb
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    pop bc
    xor a
    ldh [$96], a
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38ac
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    pop hl
    ldh a, [$98]
    sub $e7
    ldh a, [$97]
    sbc $03
    jp c, Jump_00f_74c3

    ld a, $03
    ldh [$97], a
    ld a, $e7
    ldh [$98], a

Jump_00f_74c3:
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    pop hl

jr_00f_74ca:
    ld b, c
    inc b
    call Call_00f_7688
    ld hl, $d063
    ld de, $cfd2
    ld bc, $ccf7
    ldh a, [$f3]
    and a
    jr z, jr_00f_74e6

    ld hl, $d068
    ld de, $cfcc
    ld bc, $ccf3

jr_00f_74e6:
    ld a, [de]
    cp $6b
    jr nz, jr_00f_74f9

    bit 4, [hl]
    push af
    push bc
    ld hl, $5747
    ld b, $1e
    push de
    call nz, Call_000_35d6
    pop de

jr_00f_74f9:
    call Call_00f_7ba8
    ld a, [de]
    cp $6b
    jr nz, jr_00f_750e

    pop bc
    ld a, $01
    ld [bc], a
    ld hl, $5771
    ld b, $1e
    pop af
    call nz, Call_000_35d6

jr_00f_750e:
    ldh a, [$f3]
    and a
    call z, Call_00f_6e19
    ld hl, $7528
    call Call_000_3c49
    call Call_00f_6d27
    jp Jump_00f_6d64


Jump_00f_7520:
    pop hl
    dec [hl]

Jump_00f_7522:
    ld hl, $7b3e
    jp Jump_000_3c49


    rla
    sub l
    ld b, a
    dec h
    ld [$4221], sp
    ld [hl], l
    ldh a, [$f3]
    and a
    ld a, [$cfd3]
    jr z, jr_00f_753b

    ld a, [$cfcd]

jr_00f_753b:
    cp $12
    ret nc

    ld hl, $7547
    ret


    ld a, [bc]
    rla
    and b
    ld b, a
    dec h
    rla
    xor e
    ld b, a
    dec h
    ld d, b
    ld hl, $cd2e
    ld de, $cfd3
    ld bc, $d067
    ldh a, [$f3]
    and a
    jr z, jr_00f_7572

    ld hl, $cd1a
    ld de, $cfcd
    ld bc, $d062
    ld a, [$d12b]
    cp $04
    jr z, jr_00f_7572

    call Call_00f_6e9b
    cp $40
    jp c, Jump_00f_765a

jr_00f_7572:
    call Call_00f_7b79
    jp nz, Jump_00f_765a

    ld a, [de]
    cp $44
    jr c, jr_00f_758a

    call Call_00f_6e9b
    cp $55
    jp nc, Jump_00f_7650

    ld a, [de]
    sub $44
    jr jr_00f_75a9

jr_00f_758a:
    push hl
    push de
    push bc
    call Call_00f_656b
    pop bc
    pop de
    pop hl
    ld a, [$d05f]
    and a
    jp nz, Jump_00f_765a

    ld a, [bc]
    bit 6, a
    jp nz, Jump_00f_765a

    ld a, [de]
    sub $12
    cp $08
    jr c, jr_00f_75a9

    sub $28

jr_00f_75a9:
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    dec b
    jp z, Jump_00f_7650

    ld a, [de]
    cp $24
    jr c, jr_00f_75bf

    cp $44
    jr nc, jr_00f_75bf

    dec b
    jr nz, jr_00f_75bf

    inc b

jr_00f_75bf:
    ld [hl], b
    ld a, c
    cp $04
    jr nc, jr_00f_762c

    push hl
    push de
    ld hl, $cff7
    ld de, $cd26
    ldh a, [$f3]
    and a
    jr z, jr_00f_75d8

    ld hl, $d026
    ld de, $cd12

jr_00f_75d8:
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00f_75e4

    inc d

jr_00f_75e4:
    pop bc
    ld a, [hl-]
    sub $01
    jr nz, jr_00f_75ef

    ld a, [hl]
    and a
    jp z, Jump_00f_764d

jr_00f_75ef:
    push hl
    push bc
    ld hl, $76cb
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    pop bc
    xor a
    ldh [$96], a
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38ac
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    pop hl
    ldh a, [$98]
    ld b, a
    ldh a, [$97]
    or b
    jp nz, Jump_00f_7624

    ldh [$97], a
    ld a, $01
    ldh [$98], a

Jump_00f_7624:
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    pop de
    pop hl

jr_00f_762c:
    ld b, c
    inc b
    push de
    call Call_00f_7688
    pop de
    ld a, [de]
    cp $44
    jr nc, jr_00f_763b

    call Call_00f_7b89

jr_00f_763b:
    ldh a, [$f3]
    and a
    call nz, Call_00f_6e19
    ld hl, $7661
    call Call_000_3c49
    call Call_00f_6d27
    jp Jump_00f_6d64


Jump_00f_764d:
    pop de
    pop hl
    inc [hl]

Jump_00f_7650:
    ld a, [de]
    cp $44
    ret nc

    ld hl, $7b3e
    jp Jump_000_3c49


Jump_00f_765a:
    ld a, [de]
    cp $44
    ret nc

    jp Jump_00f_7b4e


    rla
    or e
    ld b, a
    dec h
    ld [$8321], sp
    db $76
    ldh a, [$f3]
    and a
    ld a, [$cfd3]
    jr z, jr_00f_7674

    ld a, [$cfcd]

jr_00f_7674:
    cp $1a
    ret c

    cp $44
    ret nc

    ld hl, $767e
    ret


    ld a, [bc]
    rla
    cp [hl]
    ld b, a
    dec h
    rla
    ret


    ld b, a
    dec h
    ld d, b

Call_00f_7688:
    ld hl, $769f
    ld c, $50

jr_00f_768d:
    dec b
    jr z, jr_00f_7696

jr_00f_7690:
    ld a, [hl+]
    cp c
    jr z, jr_00f_768d

    jr jr_00f_7690

jr_00f_7696:
    ld de, $cf4b
    ld bc, $000a
    jp Jump_000_00b5


    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld d, b
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld d, b
    sub d
    adc a
    add h
    add h
    add e
    ld d, b
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    add b
    add d
    add d
    sub h
    sub c
    add b
    add d
    sbc b
    ld d, b
    add h
    sub l
    add b
    add e
    add h
    ld d, b
    add hl, de
    ld h, h
    inc e
    ld h, h
    ld hl, $2864
    ld h, h
    ld [hl-], a
    ld h, h
    ld b, d
    ld h, h
    ld bc, $0f01
    ld a, [bc]
    ld [bc], a
    ld bc, $0a19
    inc bc
    ld bc, $0a23
    inc b
    ld bc, $6221
    ret nc

    ld de, $d074
    ld bc, $d06a
    ldh a, [$f3]
    and a
    jr z, jr_00f_76fc

    ld hl, $d067
    ld de, $cd05
    ld bc, $d06f

jr_00f_76fc:
    set 0, [hl]
    xor a
    ld [de], a
    inc de
    ld [de], a
    ld [$cfd3], a
    ld [$cfcd], a
    call Call_00f_6e9b
    and $01
    inc a
    inc a
    ld [bc], a
    ldh a, [$f3]
    add $ae
    jp Jump_00f_7b96


    ld hl, $d062
    ld de, $d06a
    ldh a, [$f3]
    and a
    jr z, jr_00f_7728

    ld hl, $d067
    ld de, $d06f

jr_00f_7728:
    set 1, [hl]
    call Call_00f_6e9b
    and $01
    inc a
    inc a
    ld [de], a
    ldh a, [$f3]
    add $b0
    jp Jump_00f_7b96


    ldh a, [$f3]
    and a
    jr nz, jr_00f_7791

    ld a, [$d057]
    dec a
    jr nz, jr_00f_777e

    ld a, [$d127]
    ld b, a
    ld a, [$d022]
    cp b
    jr nc, jr_00f_776e

    add b
    ld c, a
    inc c

jr_00f_7751:
    call Call_00f_6e9b
    cp c
    jr nc, jr_00f_7751

    srl b
    srl b
    cp b
    jr nc, jr_00f_776e

    ld c, $32
    call Call_000_3739
    ld a, [$cfd2]
    cp $64
    jp nz, Jump_00f_7b5e

    jp Jump_00f_7b53


jr_00f_776e:
    call Call_00f_4d43
    xor a
    ld [$cc5b], a
    inc a
    ld [$d078], a
    ld a, [$cfd2]
    jr jr_00f_77e4

jr_00f_777e:
    ld c, $32
    call Call_000_3739
    ld hl, $7b69
    ld a, [$cfd2]
    cp $64
    jp nz, Jump_000_3c49

    jp Jump_00f_7b53


jr_00f_7791:
    ld a, [$d057]
    dec a
    jr nz, jr_00f_77d1

    ld a, [$d022]
    ld b, a
    ld a, [$d127]
    cp b
    jr nc, jr_00f_77c1

    add b
    ld c, a
    inc c

jr_00f_77a4:
    call Call_00f_6e9b
    cp c
    jr nc, jr_00f_77a4

    srl b
    srl b
    cp b
    jr nc, jr_00f_77c1

    ld c, $32
    call Call_000_3739
    ld a, [$cfcc]
    cp $64
    jp nz, Jump_00f_7b5e

    jp Jump_00f_7b53


jr_00f_77c1:
    call Call_00f_4d43
    xor a
    ld [$cc5b], a
    inc a
    ld [$d078], a
    ld a, [$cfcc]
    jr jr_00f_77e4

jr_00f_77d1:
    ld c, $32
    call Call_000_3739
    ld hl, $7b69
    ld a, [$cfcc]
    cp $64
    jp nz, Jump_000_3c49

    jp Jump_00f_7b4e


jr_00f_77e4:
    push af
    call Call_00f_7bb9
    ld c, $14
    call Call_000_3739
    pop af
    ld hl, $7802
    cp $64
    jr z, jr_00f_77ff

    ld hl, $7807
    cp $2e
    jr z, jr_00f_77ff

    ld hl, $780c

jr_00f_77ff:
    jp Jump_000_3c49


    rla
    pop de
    ld b, a
    dec h
    ld d, b
    rla
    push hl
    ld b, a
    dec h
    ld d, b
    rla
    ld sp, hl
    ld b, a
    dec h
    ld d, b
    ld hl, $d062
    ld de, $d06a
    ld bc, $d074
    ldh a, [$f3]
    and a
    jr z, jr_00f_7828

    ld hl, $d067
    ld de, $d06f
    ld bc, $cd05

jr_00f_7828:
    bit 2, [hl]
    ret nz

    set 2, [hl]
    ld hl, $cfd3
    ldh a, [$f3]
    and a
    jr z, jr_00f_7838

    ld hl, $cfcd

jr_00f_7838:
    ld a, [hl]
    cp $4d
    jr z, jr_00f_7856

    cp $2c
    ld a, $02
    jr z, jr_00f_7853

    call Call_00f_6e9b
    and $03
    cp $02
    jr c, jr_00f_7851

    call Call_00f_6e9b
    and $03

jr_00f_7851:
    inc a
    inc a

jr_00f_7853:
    ld [de], a
    ld [bc], a
    ret


jr_00f_7856:
    ld a, $02
    ld [hl], a
    jr jr_00f_7853

    call Call_00f_7b79
    ret nz

    ld hl, $d067
    ld de, $cfd3
    ldh a, [$f3]
    and a
    jr z, jr_00f_7870

    ld hl, $d062
    ld de, $cfcd

jr_00f_7870:
    ld a, [de]
    cp $1f
    ld b, $1a
    jr z, jr_00f_7879

    ld b, $4d

jr_00f_7879:
    call Call_00f_6e9b
    cp b
    ret nc

    set 3, [hl]
    call Call_00f_79cf
    ret


    ld hl, $7f57
    ld b, $0c
    jp Jump_000_35d6


    ld hl, $d062
    ld de, $cfd3
    ldh a, [$f3]
    and a
    ld b, $ae
    jr z, jr_00f_78a1

    ld hl, $d067
    ld de, $cfcd
    ld b, $af

jr_00f_78a1:
    set 4, [hl]
    ld a, [de]
    dec de
    cp $2b
    jr nz, jr_00f_78ad

    set 6, [hl]
    ld b, $64

jr_00f_78ad:
    ld a, [de]
    cp $5b
    jr nz, jr_00f_78b6

    set 6, [hl]
    ld b, $c0

jr_00f_78b6:
    xor a
    ld [$cc5b], a
    ld a, b
    call Call_00f_7bb9
    ld a, [de]
    ld [$cd3d], a
    ld hl, $78c8
    jp Jump_000_3c49


    rla
    inc c
    ld c, b
    dec h
    ld [$3dfa], sp
    call Call_000_0dfe
    ld hl, $78f9
    jr z, jr_00f_78f8

    cp $4c
    ld hl, $78fe
    jr z, jr_00f_78f8

    cp $82
    ld hl, $7903
    jr z, jr_00f_78f8

    cp $8f
    ld hl, $7908
    jr z, jr_00f_78f8

    cp $13
    ld hl, $790d
    jr z, jr_00f_78f8

    cp $5b
    ld hl, $7912

jr_00f_78f8:
    ret


    rla
    db $10
    ld c, b
    dec h
    ld d, b
    rla
    inc h
    ld c, b
    dec h
    ld d, b
    rla
    jr c, jr_00f_794e

    dec h
    ld d, b
    rla
    ld c, h
    ld c, b
    dec h
    ld d, b
    rla
    ld e, d
    ld c, b
    dec h
    ld d, b
    rla
    ld l, d
    ld c, b
    dec h
    ld d, b
    ld hl, $d062
    ld de, $d06a
    ldh a, [$f3]
    and a
    jr z, jr_00f_7928

    ld hl, $d067
    ld de, $d06f

jr_00f_7928:
    bit 5, [hl]
    ret nz

    call Call_00f_79cf
    set 5, [hl]
    call Call_00f_6e9b
    and $03
    cp $02
    jr c, jr_00f_793e

    call Call_00f_6e9b
    and $03

jr_00f_793e:
    inc a
    ld [de], a
    ret


    ld hl, $7f2b
    ld b, $0c
    jp Jump_000_35d6


    ld hl, $7f86
    ld b, $09

jr_00f_794e:
    jp Jump_000_35d6


    ld hl, $792c
    ld b, $04
    jp Jump_000_35d6


    call Call_00f_6e9b
    cp $19
    ret nc

    jr jr_00f_796f

    call Call_00f_7b79
    jr nz, jr_00f_79a6

    call Call_00f_656b
    ld a, [$d05f]
    and a
    jr nz, jr_00f_79a6

jr_00f_796f:
    ldh a, [$f3]
    and a
    ld hl, $d067
    ld bc, $d070
    ld a, [$cfd3]
    jr z, jr_00f_7986

    ld hl, $d062
    ld bc, $d06b
    ld a, [$cfcd]

jr_00f_7986:
    bit 7, [hl]
    jr nz, jr_00f_79a6

    set 7, [hl]
    push af
    call Call_00f_6e9b
    and $03
    inc a
    inc a
    ld [bc], a
    pop af
    cp $4c
    call nz, Call_00f_7b89
    ld hl, $79a1
    jp Jump_000_3c49


    rla
    ld a, b
    ld c, b
    dec h
    ld d, b

jr_00f_79a6:
    cp $4c
    ret z

    ld c, $32
    call Call_000_3739
    jp Jump_00f_7b4e


    ld hl, $6601
    ld b, $14
    jp Jump_000_35d6


    ld hl, $7dad
    ld b, $05
    jp Jump_000_35d6


    ld hl, $d063
    ldh a, [$f3]
    and a
    jr z, jr_00f_79cc

    ld hl, $d068

jr_00f_79cc:
    set 5, [hl]
    ret


Call_00f_79cf:
    push hl
    ld hl, $d068
    ldh a, [$f3]
    and a
    jr z, jr_00f_79db

    ld hl, $d063

jr_00f_79db:
    res 5, [hl]
    pop hl
    ret


    ld hl, $d063
    ldh a, [$f3]
    and a
    jr z, jr_00f_79ea

    ld hl, $d068

jr_00f_79ea:
    set 6, [hl]
    ret


    ld c, $32
    call Call_000_3739
    call Call_00f_656b
    ld a, [$d05f]
    and a
    jr nz, jr_00f_7a74

    ldh a, [$f3]
    and a
    ld hl, $d01c
    ld a, [$d062]
    jr nz, jr_00f_7a13

    ld a, [$d12b]
    cp $04
    jr nz, jr_00f_7a3a

    ld hl, $cfed
    ld a, [$d067]

jr_00f_7a13:
    bit 6, a
    jr nz, jr_00f_7a74

jr_00f_7a17:
    push hl
    call Call_00f_6e9b
    and $03
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00f_7a17

    ld d, a
    ldh a, [$f3]
    and a
    ld hl, $d01c
    ld a, [$cc2e]
    jr z, jr_00f_7a5f

    ld hl, $cfed
    ld a, [$cce2]
    jr jr_00f_7a5f

jr_00f_7a3a:
    ld a, [$d067]
    bit 6, a
    jr nz, jr_00f_7a74

    ld a, [$cc26]
    push af
    ld a, $01
    ld [$ccdb], a
    call Call_00f_5219
    call Call_000_3725
    ld hl, $cfed
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld d, [hl]
    pop af
    ld hl, $d01c

jr_00f_7a5f:
    ld c, a
    ld b, $00
    add hl, bc
    ld a, d
    ld [hl], a
    ld [$d11e], a
    call Call_000_3058
    call Call_00f_7ba8
    ld hl, $7a77
    jp Jump_000_3c49


jr_00f_7a74:
    jp Jump_00f_7b53


    rla
    adc h
    ld c, b
    dec h
    ld d, b
    ld hl, $7ea9
    ld b, $0a
    jp Jump_000_35d6


    call Call_00f_7ba8
    jp Jump_00f_7b43


    call Call_00f_656b
    ld a, [$d05f]
    and a
    jr nz, jr_00f_7b06

    ld de, $d072
    ld hl, $cfed
    ldh a, [$f3]
    and a
    jr z, jr_00f_7aa4

    ld de, $d06d
    ld hl, $d01c

jr_00f_7aa4:
    ld a, [de]
    and a
    jr nz, jr_00f_7b06

jr_00f_7aa8:
    push hl
    call Call_00f_6e9b
    and $03
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00f_7aa8

    ld [$d11e], a
    push hl
    ldh a, [$f3]
    and a
    ld hl, $d02d
    jr nz, jr_00f_7acf

    ld a, [$d12b]
    cp $04
    pop hl
    jr nz, jr_00f_7ae1

    push hl
    ld hl, $cffe

jr_00f_7acf:
    push hl
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    and $3f
    pop hl
    jr z, jr_00f_7b05

    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00f_7aa8

jr_00f_7ae1:
    call Call_00f_6e9b
    and $07
    inc a
    inc c
    swap c
    add c
    ld [de], a
    call Call_00f_7b89
    ld hl, $ccee
    ldh a, [$f3]
    and a
    jr nz, jr_00f_7af8

    inc hl

jr_00f_7af8:
    ld a, [$d11e]
    ld [hl], a
    call Call_000_3058
    ld hl, $7b09
    jp Jump_000_3c49


jr_00f_7b05:
    pop hl

jr_00f_7b06:
    jp Jump_00f_7b53


    rla
    sbc [hl]
    ld c, b
    dec h
    ld d, b
    ld hl, $7eb8
    ld b, $0b
    jp Jump_000_35d6


    ld hl, $79a3
    ld b, $04
    jp Jump_000_35d6


    ld hl, $79da
    ld b, $04
    jp Jump_000_35d6


    ld hl, $79ec
    ld b, $0e
    jp Jump_000_35d6


    ld hl, $7ab1
    ld b, $0e
    jp Jump_000_35d6


    ld hl, $7b97
    ld b, $0e
    jp Jump_000_35d6


    rla
    or [hl]
    ld c, b
    dec h
    ld d, b

Jump_00f_7b43:
    ld hl, $7b49
    jp Jump_000_3c49


    rla
    ret


    ld c, b
    dec h
    ld d, b

Jump_00f_7b4e:
    ld a, [$ccf4]
    and a
    ret nz

Jump_00f_7b53:
    ld hl, $7b59
    jp Jump_000_3c49


    rla
    push de
    ld c, b
    dec h
    ld d, b

Jump_00f_7b5e:
    ld hl, $7b64
    jp Jump_000_3c49


    rla
    rst $20
    ld c, b
    dec h
    ld d, b
    rla
    ei
    ld c, b
    dec h
    ld d, b

Jump_00f_7b6e:
    ld hl, $7b74
    jp Jump_000_3c49


    rla
    dec c
    ld c, c
    dec h
    ld d, b

Call_00f_7b79:
    push hl
    ld hl, $d068
    ldh a, [$f3]
    and a
    jr z, jr_00f_7b85

    ld hl, $d063

jr_00f_7b85:
    bit 4, [hl]
    pop hl
    ret


Call_00f_7b89:
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    jr z, jr_00f_7b94

    ld a, [$cfcc]

jr_00f_7b94:
    and a
    ret z

Call_00f_7b96:
Jump_00f_7b96:
    ld [$d07c], a
    ldh a, [$f3]
    and a
    ld a, $06
    jr z, jr_00f_7ba2

    ld a, $03

jr_00f_7ba2:
    ld [$cc5b], a
    jp Jump_00f_7bbc


Call_00f_7ba8:
    xor a
    ld [$cc5b], a
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    jr z, jr_00f_7bb7

    ld a, [$cfcc]

jr_00f_7bb7:
    and a
    ret z

Call_00f_7bb9:
    ld [$d07c], a

Jump_00f_7bbc:
    push hl
    push de
    push bc
    ld a, $08
    call Call_000_3e6d
    pop bc
    pop de
    pop hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
