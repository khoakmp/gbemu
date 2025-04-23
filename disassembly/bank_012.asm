; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    nop
    add hl, bc
    ld a, [bc]
    ld d, c
    ld b, b
    ld d, l
    ld b, c
    ld d, d
    ld b, c
    inc bc
    ld b, $0e
    ld b, c
    add sp, -$3a
    rrca
    add hl, de
    ld [$2031], sp
    rst $00
    ld a, [bc]
    xor h
    ld c, d
    push af
    add $0f
    inc d
    ld [$0300], sp
    rst $00
    ld [hl+], a
    ld b, b
    rrca
    dec b
    add hl, bc
    ld [de], a
    ld [bc], a
    ld c, h
    ld a, [bc]
    ld [de], a
    inc bc
    ld c, h
    add hl, bc
    dec bc
    nop
    ld c, h
    ld a, [bc]
    dec bc
    ld bc, $0d4c
    dec b
    nop
    ld c, l
    ld bc, $030d
    ld bc, $4200
    rst $00
    add hl, bc
    ld [de], a
    ld d, d
    rst $00
    ld a, [bc]
    ld [de], a
    ld a, $c7
    add hl, bc
    dec bc
    ld c, [hl]
    rst $00
    ld a, [bc]
    dec bc
    ld e, e
    rst $00
    dec c
    dec b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld sp, $3131
    ld b, a
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, a
    ld a, e
    rrca
    ld sp, $4731
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld e, a
    ld a, e
    rrca
    ld a, [de]
    ld e, h
    ld c, e
    ld [hl], h
    ld sp, $3131
    ld e, a
    ld a, e
    rrca
    ld sp, $3131
    ld sp, $205f
    dec c
    ld hl, $0f01
    ld a, [de]
    jr nz, jr_012_40a8

    ld e, h
    ld a, [de]
    scf
    ld a, l
    ld a, [hl]
    ld [hl], a
    rrca
    ld [$7e7c], sp
    ld sp, $3131
    ld sp, $7b5f
    rrca
    ld sp, $3131
    ld sp, $3131
    ld sp, $7b5f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca

jr_012_40a8:
    rrca
    rrca
    rrca
    jr nz, jr_012_40bd

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

jr_012_40bd:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $1c
    rra
    rra
    dec e
    ld [hl-], a
    ld hl, $3121
    ld h, [hl]
    nop
    nop
    ld h, a
    add hl, hl
    dec h
    ld h, $1e
    jr @+$20

    jr nc, jr_012_40fe

    inc [hl]
    inc sp
    inc sp
    dec [hl]
    ld [hl], $00
    nop
    scf
    jr c, jr_012_4120

    jr c, jr_012_4122

    ld a, [hl-]
    nop
    nop
    add hl, sp
    call Call_000_3e94
    ldh a, [rBGP]
    or b
    ldh [rBGP], a
    ld c, $04
    call Call_000_3739
    ldh a, [rBGP]
    and $fc
    ldh [rBGP], a

jr_012_40fe:
    ret


    call Call_000_3e94
    ld a, $01
    ld [$d0a0], a
    xor a

jr_012_4108:
    ldh [$96], a
    call Call_012_4119
    call Call_012_4119
    dec b
    ld a, b
    jr nz, jr_012_4108

    xor a
    ld [$d0a0], a
    ret


Call_012_4119:
    ldh a, [$96]
    xor b
    ldh [$96], a
    ldh [rWY], a

jr_012_4120:
    ld c, $03

jr_012_4122:
    jp Jump_000_3739


    call Call_000_3e94
    xor a

jr_012_4129:
    ldh [$97], a
    call Call_012_413f
    ld c, $01
    call Call_000_3739
    call Call_012_413f
    dec b
    ld a, b
    jr nz, jr_012_4129

    ld a, $07
    ldh [rWX], a
    ret


Call_012_413f:
    ldh a, [$97]
    xor b
    ldh [$97], a
    bit 7, a
    jr z, jr_012_4149

    xor a

jr_012_4149:
    add $07
    ldh [rWX], a
    ld c, $04
    jp Jump_000_3739


    jp Jump_000_3c3c


    ld d, a
    ld b, c
    rla
    ld a, d
    ld e, [hl]
    inc hl
    ld d, b
    ld bc, $0404
    add hl, bc
    ld b, d
    ld l, e
    ld b, c
    ld l, b
    ld b, c
    nop
    db $e4
    ld b, c
    jp Jump_000_3c3c


    ld l, a
    ld b, c
    add $41
    ld [$2efa], sp
    rst $10
    bit 3, a
    jr nz, jr_012_417f

    ld hl, $4185
    call Call_000_3c49
    jr jr_012_4182

jr_012_417f:
    call Call_012_418a

jr_012_4182:
    jp Jump_000_24d7


    rla
    rlca
    ld c, e
    dec h
    ld d, b

Call_012_418a:
    ld hl, $41bc
    call Call_000_3c49
    call Call_000_20d8
    call Call_000_3071
    ld a, $07
    call Call_000_3e6d
    ld a, $e8
    ld [$c0ee], a
    call Call_000_23b1

jr_012_41a3:
    ld a, [$c026]
    cp $e8
    jr z, jr_012_41a3

    ld a, [$d35b]
    ld [$c0ee], a
    call Call_000_23b1
    call Call_000_20f6
    ld hl, $41c1
    jp Jump_000_3c49


    rla
    ld l, l
    ld c, e
    dec h
    ld d, b
    rla
    sub h
    ld c, e
    dec h
    ld d, b
    ld [$09fa], sp
    pop bc
    cp $04
    ld hl, $41df
    jr nz, jr_012_41d4

    ld hl, $41da

jr_012_41d4:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    rst $10
    ld c, e
    dec h
    ld d, b
    rla
    add hl, hl
    ld c, h
    dec h
    ld d, b
    ld a, [bc]
    inc bc
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    ld bc, $0007
    ld h, $01
    ld bc, $0203
    ld bc, $0833
    add hl, bc
    rst $38
    jp nc, $1201

    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    or $c6
    ld bc, $0407
    add hl, bc
    dec b
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f02
    rrca
    dec bc
    rrca
    rrca
    ld [de], a
    inc b
    ld a, [bc]
    ld [hl+], a
    ld b, e
    jr z, @+$44

    dec h
    ld b, d
    nop
    call nz, $c342
    inc a
    inc a
    ld c, d
    ld b, d
    adc l
    ld b, d
    sub d
    ld b, d
    sub a
    ld b, d
    sbc h
    ld b, d
    and c
    ld b, d
    and [hl]
    ld b, d
    and c
    ld b, d
    xor e
    ld b, d
    and c
    ld b, d
    or b
    ld b, d
    and c
    ld b, d
    or l
    ld b, d
    cp d
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    ld [$78fa], sp
    rst $10
    bit 7, a
    jr nz, jr_012_426f

    ld hl, $4278
    call Call_000_3c49
    ld bc, $da01
    call Call_000_3e2e
    jr nc, jr_012_426a

    ld hl, $d778
    set 7, [hl]
    ld hl, $427d
    jr jr_012_4272

jr_012_426a:
    ld hl, $4288
    jr jr_012_4272

jr_012_426f:
    ld hl, $4283

jr_012_4272:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    inc d
    ld c, b
    daa
    ld d, b
    rla
    ld e, d
    ld c, b
    daa
    dec bc
    ld d, b
    rla
    ld l, [hl]
    ld c, b
    daa
    ld d, b
    rla
    xor d
    ld c, b
    daa
    ld d, b
    rla
    rst $00
    ld c, b
    daa
    ld d, b
    rla
    dec l
    ld c, c
    daa
    ld d, b
    rla
    ld [hl], l
    ld c, c
    daa
    ld d, b
    rla
    push de
    ld c, c
    daa
    ld d, b
    rla
    inc de
    ld c, d
    daa
    ld d, b
    rla
    ld hl, $274a
    ld d, b
    rla
    ld b, e
    ld c, d
    daa
    ld d, b
    rla
    ld h, h
    ld c, d
    daa
    ld d, b
    rla
    add l
    ld c, d
    daa
    ld d, b
    rla
    and h
    ld c, d
    daa
    ld d, b
    rla
    or [hl]
    ld c, d
    daa
    ld d, b
    rrca
    inc bc
    ld bc, $000c
    ld a, l
    ld bc, $0110
    ld a, e
    ld bc, $0001
    ld a, a
    inc c
    inc b
    ld [bc], a
    ld b, $04
    inc bc
    rlca
    inc b
    dec b
    ld [$0604], sp
    add hl, bc
    ld b, $02
    ld a, [bc]
    ld b, $03
    dec bc
    ld b, $05
    inc c
    ld b, $06
    dec c
    ld bc, $0e0e
    ld bc, $0f04
    ld bc, $1006
    ld bc, $110a
    dec b
    ld h, $09
    inc d
    rst $38
    rst $38
    ld bc, $0a37
    rrca
    rst $38
    db $d3
    ld [bc], a
    scf
    ld b, $0b
    rst $38
    ret nc

    inc bc
    scf
    ld b, $0c
    rst $38
    ret nc

    inc b
    dec [hl]
    add hl, bc
    ld b, $ff
    pop de
    dec b
    rst $38
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    dec h
    inc bc
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc b
    dec b
    ld b, $0b
    dec bc
    db $10
    ld de, $1111
    dec bc
    inc b
    dec b
    ld b, $0b
    dec bc
    inc d
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    inc b
    ld a, [bc]
    and c
    ld b, e
    ld e, c
    ld b, e
    ld d, [hl]
    ld b, e
    nop
    ld [hl], b
    ld b, e
    jp Jump_000_3c3c


    adc [hl]
    inc h
    ld h, c
    ld b, e
    ld h, [hl]
    ld b, e
    ld l, e
    ld b, e
    rla
    call nc, $274a
    ld d, b
    rla
    db $fd
    ld c, d
    daa
    ld d, b
    rla
    ld d, [hl]
    ld c, e
    daa
    ld d, b
    rrca
    inc bc
    ld bc, $000c
    ld a, h
    ld bc, $0110
    adc b
    ld bc, $0001
    ld a, a
    ld bc, $0e01
    inc b
    inc bc
    ld h, $0b
    add hl, bc
    rst $38
    rst $38
    ld bc, $090c
    inc de
    cp $02
    ld [bc], a
    inc b
    ld b, $09
    cp $02
    inc bc
    rst $38
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    ld bc, $0101
    ld bc, $2503
    ld [bc], a
    ld bc, $1a0b
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec bc
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec bc
    dec bc
    ld e, $1e
    ld e, $1e
    dec bc
    ld e, $1e
    ld e, $0b
    ld de, $1111
    ld de, $0b27
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [de], a
    inc b
    ld a, [bc]
    call z, Call_012_5b45
    ld b, l
    push de
    ld b, e
    nop
    xor b
    ld b, l
    jp Jump_000_3c3c


    xor a
    ld [$cd37], a
    ld de, $cc5b
    ld hl, $4408

jr_012_43e2:
    ld a, [hl+]
    and a
    jr z, jr_012_4404

    push hl
    push de
    ld [$d11e], a
    ld b, a
    ld a, $1c
    call Call_000_3e6d
    pop de
    pop hl
    ld a, b
    and a
    jr z, jr_012_43e2

    ld a, [$d11e]
    ld [de], a
    inc de
    push hl
    ld hl, $cd37
    inc [hl]
    pop hl
    jr jr_012_43e2

jr_012_4404:
    ld a, $ff
    ld [de], a
    ret


    inc a
    dec a
    ld a, $00

Call_012_440c:
    ld hl, $d730
    set 6, [hl]
    ld hl, $44ee
    call Call_000_3c49
    xor a
    ld [$cc26], a
    ld a, $03
    ld [$cc29], a
    ld a, [$cd37]
    dec a
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld a, [$cd37]
    dec a
    ld bc, $0002
    ld hl, $0003
    call Call_000_3a87
    dec l
    ld b, l
    ld c, $0c
    ld hl, $c3a0
    call Call_000_1922
    call Call_000_2429
    call Call_012_4532
    ld hl, $d730
    res 6, [hl]
    call Call_000_3abe
    bit 1, a
    ret nz

    ld hl, $cc5b
    ld a, [$cc26]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ldh [$db], a
    cp $3c
    jr z, jr_012_44b6

    cp $3d
    jr z, jr_012_4492

    ld a, [$d778]
    bit 6, a
    jr nz, jr_012_44e0

    ld hl, $4515
    call Call_000_3c49
    call Call_012_44e6
    ld bc, $f901
    call Call_000_3e2e
    jr nc, jr_012_44da

    ld hl, $451b
    call Call_000_3c49
    ld hl, $d778
    set 6, [hl]
    ret


jr_012_4492:
    ld a, [$d778]
    bit 5, a
    jr nz, jr_012_44e0

    ld hl, $4504
    call Call_000_3c49
    call Call_012_44e6
    ld bc, $f801
    call Call_000_3e2e
    jr nc, jr_012_44da

    ld hl, $450a
    call Call_000_3c49
    ld hl, $d778
    set 5, [hl]
    ret


jr_012_44b6:
    ld a, [$d778]
    bit 4, a
    jr nz, jr_012_44e0

    ld hl, $44f3
    call Call_000_3c49
    call Call_012_44e6
    ld bc, $d501
    call Call_000_3e2e
    jr nc, jr_012_44da

    ld hl, $44f9
    call Call_000_3c49
    ld hl, $d778
    set 4, [hl]
    ret


jr_012_44da:
    ld hl, $4526
    jp Jump_000_3c49


jr_012_44e0:
    ld hl, $452c
    jp Jump_000_3c49


Call_012_44e6:
    ld b, $05
    ld hl, $7f37
    jp Jump_000_35d6


    rla
    or l
    ld c, e
    daa
    ld d, b
    rla
    call z, $274b
    dec c
    ld d, b
    rla
    ld b, $4c
    daa
    dec bc
    rla
    ld a, [de]
    ld c, h
    daa
    dec c
    ld d, b
    rla
    ld e, d
    ld c, h
    daa
    dec c
    ld d, b
    rla
    sub c
    ld c, h
    daa
    dec bc
    rla
    and l
    ld c, h
    daa
    dec c
    ld d, b
    rla
    and $4c
    daa
    dec c
    ld d, b
    rla
    dec e
    ld c, l
    daa
    dec bc
    rla
    jr nc, jr_012_4570

    daa
    dec c
    ld d, b
    rla
    ld c, l
    ld c, l
    daa
    dec c
    ld d, b
    rla
    ld l, l
    ld c, l
    daa
    dec c
    ld d, b

Call_012_4532:
    ld hl, $cc5b
    xor a
    ldh [$db], a

jr_012_4538:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    ld [$d11e], a
    call Call_000_2fcf
    ld hl, $c3ca
    ldh a, [$db]
    ld bc, $0028
    call Call_000_3a87
    ld de, $cd6d
    call Call_000_1955
    ld hl, $ffdb
    inc [hl]
    pop hl
    jr jr_012_4538

    ld h, a
    ld b, l
    ld l, h
    ld b, l
    and d
    ld b, l
    and d
    ld b, l
    and d
    ld b, l
    and e
    ld b, l
    rla
    sub a
    ld c, l
    daa
    ld d, b
    ld [$d8cd], sp
    ld b, e

jr_012_4570:
    ld a, [$cd37]
    and a
    jr z, jr_012_458f

    ld a, $01
    ld [$cc3c], a
    ld hl, $459d
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_012_4595

    call Call_012_440c
    jr jr_012_4595

jr_012_458f:
    ld hl, $4598
    call Call_000_3c49

jr_012_4595:
    jp Jump_000_24d7


    rla
    xor $4d
    daa
    ld d, b
    rla
    ld d, $4e
    daa
    ld d, b
    push af
    rla
    ld d, b
    ld c, [hl]
    daa
    ld d, b
    ld b, d
    ld bc, $0f02
    nop
    adc b
    inc b
    ld bc, $030a
    ld bc, $040b
    ld [bc], a
    inc c
    dec b
    ld [bc], a
    dec c
    ld b, $02
    inc c
    ld [$ff0e], sp
    jp nc, $0801

    add hl, bc
    add hl, bc
    cp $00
    ld [bc], a
    db $10
    rst $00
    ld [bc], a
    rrca
    ld [hl], $1c
    inc e
    inc e
    inc e
    dec de
    dec sp
    ccf
    ccf
    ld b, c
    ld [hl], $21
    dec e
    rra
    jr nz, jr_012_45fc

    inc a
    ld b, e
    ld a, [hl+]
    ld b, c
    ld [hl], $20
    jr nz, jr_012_4605

    dec e
    rra
    jr nz, jr_012_4608

    jr nz, jr_012_462b

    ld [hl], $37
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    ld b, c
    ld [de], a
    ld [bc], a
    ld [bc], a
    add h
    ld b, [hl]
    ld e, h
    ld b, [hl]
    nop

jr_012_45fc:
    ld b, [hl]
    nop
    ld l, l
    ld b, [hl]
    ld hl, $d126
    bit 5, [hl]

jr_012_4605:
    res 5, [hl]
    push hl

jr_012_4608:
    call nz, Call_012_461c
    pop hl
    bit 7, [hl]
    res 7, [hl]
    call nz, Call_012_4654
    xor a
    ld [$cf0c], a
    inc a
    ld [$cc3c], a
    ret


Call_012_461c:
    ld hl, $d3af
    ld a, [$d73b]
    ld b, a
    ld a, [$d73c]
    ld c, a
    call Call_012_462a

Call_012_462a:
    inc hl

jr_012_462b:
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


    ld hl, $4643
    call Call_000_2a5a
    ld hl, $464a
    ld de, $cc5b
    ld bc, $000a
    jp Jump_000_00b5


    dec b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rst $38
    dec b
    ld a, d
    ld [bc], a
    ld a, e
    ld [bc], a
    ld a, h
    ld [bc], a
    ld a, l
    ld [bc], a
    adc b

Call_012_4654:
    ld b, $1e
    ld hl, $7f15
    jp Jump_000_35d6


    ld e, [hl]
    ld b, [hl]
    ld [$31cd], sp
    ld b, [hl]
    ld hl, $464a
    ld a, $61
    call Call_000_3e6d
    jp Jump_000_24d7


    rrca
    ld [bc], a
    inc bc
    ld bc, $7a05
    inc bc
    ld [bc], a
    dec b
    ld a, d
    ld bc, $0300
    ld bc, $f900
    add $03
    ld bc, $c6fa
    inc bc
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, jr_012_46b1

    inc de
    ld b, $04
    ld d, $47
    sub a
    ld b, [hl]
    sub h
    ld b, [hl]
    nop
    rst $08
    ld b, [hl]
    jp Jump_000_3c3c


    and a
    ld b, [hl]
    or c
    ld b, [hl]
    or [hl]
    ld b, [hl]
    ret nz

    ld b, [hl]
    jp z, $cd46

    ret nc

    inc de
    jp Jump_000_24d7


    rla
    xor $4e
    daa
    ld [$4d3e], sp
    jp $46a1


jr_012_46b1:
    rla
    cp $4e
    daa
    ld d, b
    rla
    inc a
    ld c, a
    daa
    ld [$043e], sp
    jp $46a1


    rla
    ld d, l
    ld c, a
    daa
    ld [$0f3e], sp
    jp $46a1


    rla
    ld l, e
    ld c, a
    daa
    ld d, b
    rrca
    dec b
    dec bc
    inc b
    ld [bc], a
    rst $38
    dec bc
    dec b
    ld [bc], a
    rst $38
    nop
    inc b
    inc b
    rst $38
    ld bc, $0107
    add c
    ld bc, $0202
    add c
    ld bc, $0409
    dec b
    inc b
    dec b
    add hl, bc
    inc b
    rst $38
    db $d3
    ld bc, $0928
    dec b
    rst $38
    ret nc

    ld [bc], a
    jr c, jr_012_4704

    dec b
    cp $02
    inc bc
    dec b
    ld [$fe08], sp
    ld bc, $2704
    rst $00

jr_012_4704:
    dec bc
    inc b
    daa
    rst $00
    dec bc
    dec b
    push af
    add $00
    inc b
    or $c6
    ld bc, $f407
    add $01
    ld [bc], a
    rrca
    ld bc, $0302
    inc h
    ld a, [hl+]
    ld b, $07
    dec bc
    dec bc
    inc b
    rlca
    db $10
    dec bc
    ld [$0c07], sp
    inc c
    dec c
    rlca
    rlca
    rlca
    ld a, $07
    inc de
    ld b, $04
    ld l, h
    ld b, a
    ld a, $47
    ld a, [hl-]
    ld b, a
    nop
    ld b, l
    ld b, a
    call Call_000_3c3c
    ret


    ld b, b
    ld b, a
    rla
    adc e
    ld c, a
    daa
    ld d, b
    rrca
    inc b
    ld bc, $0006
    add d
    ld bc, $0307
    add b
    ld bc, $0402
    add b
    ld bc, $0304
    add d
    ld bc, $0409
    ld bc, $f600
    add $01
    ld b, $f6
    add $01
    rlca
    db $f4
    add $01
    ld [bc], a
    push af
    add $01
    inc b
    rrca
    inc d
    dec d
    add hl, de
    ld de, $1a11
    rlca
    daa
    dec bc
    inc b
    rlca
    dec hl
    ld [de], a
    inc de
    rlca
    cpl
    inc c
    dec c
    rlca
    rlca
    rlca
    rlca
    rlca
    inc de
    ld b, $04
    ld b, a
    ld c, b
    sub e
    ld b, a
    sub b
    ld b, a
    nop
    rst $38
    ld b, a
    jp Jump_000_3c3c


    and e
    ld b, a
    xor b
    ld b, a
    xor l
    ld b, a
    or d
    ld b, a
    db $eb
    ld b, a
    ldh a, [rBGP]
    push af
    ld b, a
    ld a, [$1747]
    and h
    ld c, a
    daa
    ld d, b
    rla
    cp h
    ld c, a
    daa
    ld d, b
    rla
    ldh [rVBK], a
    daa
    ld d, b
    ld [$f721], sp
    jp nc, Jump_000_1306

    call Call_000_2b7f
    ld a, [$d11e]
    cp $96
    jr nc, jr_012_47c7

    ld hl, $47d0
    jr jr_012_47ca

jr_012_47c7:
    ld hl, $47d5

jr_012_47ca:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld a, [hl-]
    ld d, b
    daa
    ld d, b
    rla
    xor l
    ld d, b
    daa
    ld b, $08
    ld hl, $66e2
    ld b, $15
    call Call_000_35d6
    ld a, $01
    ld [$cc3c], a
    jp Jump_000_24d7


    rla
    db $ed
    ld d, b
    daa
    ld d, b
    rla
    inc l
    ld d, c
    daa
    ld d, b
    rla
    ld e, c
    ld d, c
    daa
    ld d, b
    rla
    adc c
    ld d, c
    daa
    ld d, b
    rrca
    inc b
    ld bc, $0006
    add c
    ld bc, $0007
    add e
    ld bc, $0102
    add e
    ld bc, $0304
    add c
    inc b
    inc bc
    ld bc, $0305
    inc b
    ld b, $06
    ld bc, $0907
    inc b
    ld [$1504], sp
    ld [$ff04], sp
    pop de
    ld bc, $0826
    rlca
    rst $38
    pop de
    ld [bc], a
    inc c
    dec bc
    inc b
    rst $38
    pop de
    inc bc
    inc l
    rlca
    ld b, $ff
    rst $38
    inc b
    or $c6
    ld bc, $f606
    add $01
    rlca
    db $f4
    add $01
    ld [bc], a
    push af
    add $01
    inc b
    rrca
    ld d, $17
    jr jr_012_485a

    jr z, jr_012_4877

    rlca
    inc hl
    inc l
    dec l
    rlca
    ld a, [bc]
    dec bc
    ld [$0c07], sp
    inc c
    dec c

jr_012_485a:
    rlca
    rlca
    rlca
    rlca
    rlca
    inc de
    ld b, $04
    sub h
    ld c, b
    ld l, [hl]
    ld c, b
    ld l, e
    ld c, b
    nop
    ld [hl], l
    ld c, b
    jp Jump_000_3c3c


    ld [hl], b
    ld c, b
    rla
    and [hl]
    ld d, c
    daa
    ld d, b
    add hl, bc
    inc bc

jr_012_4877:
    ld bc, $0106
    add d
    ld bc, $0202
    add d
    rlca
    ld [bc], a
    nop
    add h
    ld bc, $0307
    ld bc, $f600
    add $01
    ld b, $f4
    add $01
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld b, l
    dec sp
    inc e
    dec de
    dec a
    rlca
    dec e
    dec e
    ld hl, $1d22
    dec e
    dec h
    ld h, $1d
    dec e
    inc sp
    rra
    ld e, $1d
    jr nz, jr_012_48c9

    rra
    ld e, $06
    inc b
    rlca
    xor e
    ld b, b
    cp [hl]
    ld c, b
    cp b
    ld c, b
    nop
    jp nc, $cd48

    ld a, [$c322]
    inc a
    inc a
    rst $00
    ld c, b
    ret z

    ld c, b
    call $c648
    ld c, b
    or $ff
    rla

jr_012_48c9:
    ld h, $52
    daa
    ld d, b
    rla
    ld h, d
    ld d, d
    daa
    ld d, b
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
    inc b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0710
    dec bc
    cp $02
    ld [bc], a
    rrca
    add hl, bc
    ld c, $fe
    nop
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
    rlca
    add hl, bc
    dec b
    add h
    ld c, e
    and [hl]
    ld c, c
    ld a, [bc]
    ld c, c
    nop
    jr nc, jr_012_4955

    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_012_4927
    call Call_000_3c3c
    ld hl, $49bc
    ld de, $494e
    ld a, [$d5ff]
    call Call_000_3160
    ld [$d5ff], a
    ret


Call_012_4927:
    ld hl, $4930
    ld de, $493d
    jp Jump_000_317f


    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    add h
    sub c
    adc b
    adc d
    add b
    ld d, b

Jump_012_4943:
    xor a
    ld [$cd6b], a
    ld [$d5ff], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld d, [hl]

jr_012_4955:
    ld c, c
    ld a, [$d057]
    cp $ff
    jp z, Jump_012_4943

    ld a, $f0
    ld [$cd6b], a

Call_012_4963:
    ld a, $09
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d77c
    set 1, [hl]
    ld bc, $dd01
    call Call_000_3e2e
    jr nc, jr_012_4985

    ld a, $0a
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d77c
    set 0, [hl]
    jr jr_012_498c

jr_012_4985:
    ld a, $0b
    ldh [$8c], a
    call Call_000_2920

jr_012_498c:
    ld hl, $d356
    set 3, [hl]
    ld hl, $d72a
    set 3, [hl]
    ld a, [$d77c]
    or $fc
    ld [$d77c], a
    ld hl, $d77d
    set 0, [hl]
    jp Jump_012_4943


    ld de, $814a
    ld c, d
    sbc d
    ld c, d
    or e
    ld c, d
    call z, $e54a
    ld c, d
    cp $4a
    rla
    ld c, e
    ld l, l
    ld c, d
    ld [hl], d
    ld c, d
    ld a, h
    ld c, d
    ld [bc], a
    jr nz, @+$7e

    rst $10
    adc e
    ld c, d
    sub l
    ld c, d
    sub b
    ld c, d
    sub b
    ld c, d
    inc bc
    jr nz, @+$7e

    rst $10
    and h
    ld c, d
    xor [hl]
    ld c, d
    xor c
    ld c, d
    xor c
    ld c, d
    inc b
    ld b, b
    ld a, h
    rst $10
    cp l
    ld c, d
    rst $00
    ld c, d
    jp nz, $c24a

    ld c, d
    dec b
    ld b, b
    ld a, h
    rst $10
    sub $4a
    ldh [rWY], a
    db $db
    ld c, d
    db $db
    ld c, d
    ld b, $20
    ld a, h
    rst $10
    rst $28
    ld c, d
    ld sp, hl
    ld c, d
    db $f4
    ld c, d
    db $f4
    ld c, d
    rlca
    jr nz, jr_012_4a77

    rst $10
    ld [$124b], sp
    ld c, e
    dec c
    ld c, e
    dec c
    ld c, e
    ld [$7c30], sp
    rst $10
    ld hl, $2b4b
    ld c, e
    ld h, $4b
    ld h, $4b
    rst $38
    ld [$7cfa], sp
    rst $10
    bit 1, a
    jr z, jr_012_4a2d

    bit 0, a
    jr nz, jr_012_4a25

    call z, Call_012_4963
    call Call_000_30b6
    jr jr_012_4a5b

jr_012_4a25:
    ld hl, $4a68
    call Call_000_3c49
    jr jr_012_4a5b

jr_012_4a2d:
    ld hl, $4a5e
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $4a63
    ld de, $4a63
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $04
    ld [$d05c], a
    ld a, $03
    ld [$d5ff], a
    ld [$da39], a

jr_012_4a5b:
    jp Jump_000_24d7


    rla
    adc a
    ld d, d
    daa
    ld d, b
    rla
    jp nz, Jump_000_2753

    ld d, b
    rla
    jr jr_012_4abf

    daa
    ld d, b
    rla
    add c
    ld d, h
    daa
    ld d, b
    rla
    inc c
    ld d, l
    daa
    dec bc

jr_012_4a77:
    rla
    jr nz, jr_012_4acf

    daa
    ld d, b
    rla
    db $76
    ld d, l
    daa
    ld d, b
    ld [$bc21], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub [hl]
    ld d, l
    daa
    ld d, b
    rla
    cp c
    ld d, l
    daa
    ld d, b
    rla
    bit 2, l
    daa
    ld d, b
    ld [$c821], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ldh a, [rHDMA5]
    daa
    ld d, b
    rla
    ld b, $56
    daa
    ld d, b
    rla
    ld [de], a
    ld d, [hl]
    daa
    ld d, b
    ld [$d421], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [hl], l

jr_012_4abf:
    ld d, [hl]
    daa
    ld d, b
    rla
    sub c
    ld d, [hl]
    daa
    ld d, b
    rla
    sbc a
    ld d, [hl]
    daa
    ld d, b
    ld [$e021], sp

jr_012_4acf:
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    pop de
    ld d, [hl]
    daa
    ld d, b
    rla
    ld [bc], a
    ld d, a
    daa
    ld d, b
    rla
    rlca
    ld d, a
    daa
    ld d, b
    ld [$ec21], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld h, d
    ld d, a
    daa
    ld d, b
    rla
    adc l
    ld d, a
    daa
    ld d, b
    rla
    sub a
    ld d, a
    daa
    ld d, b
    ld [$f821], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    rst $10
    ld d, a
    daa
    ld d, b
    rla
    ld [$2758], sp
    ld d, b
    rla
    rla
    ld e, b
    daa
    ld d, b
    ld [$0421], sp
    ld c, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld d, l
    ld e, b
    daa
    ld d, b
    rla
    sub a
    ld e, b
    daa
    ld d, b
    rla
    and h
    ld e, b
    daa
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0604
    rst $38
    ld de, $0605
    rst $38
    nop
    ld [$071b], sp
    ld [$d0ff], sp
    ld b, c
    db $ed
    ld bc, $0f06
    ld b, $ff
    db $d3
    ld b, d
    rl c
    rrca
    ld c, $0b
    rst $38
    jp nc, $da43

    ld bc, $0906
    dec c
    rst $38
    ret nc

    ld b, h
    adc $0b
    rrca
    add hl, bc
    dec b
    rst $38
    ret nc

    ld b, l
    jp c, $0602

    rlca
    ld a, [bc]
    rst $38
    ret nc

    ld b, [hl]
    rl d
    rrca
    rlca
    rlca
    rst $38
    ret nc

    ld b, a
    jp c, Jump_000_0603

    rlca
    add hl, bc
    rst $38
    ret nc

    ld c, b
    add sp, $01
    ld c, [hl]
    rst $00
    ld de, $4e04
    rst $00
    ld de, $0105
    ld bc, $0101
    ld bc, $3833
    ld a, [hl-]
    add hl, sp
    inc sp
    inc sp
    inc a
    inc sp
    dec a
    inc sp
    inc sp
    dec sp
    ccf
    ld a, $33
    inc sp
    inc [hl]
    dec b
    inc [hl]
    inc sp
    dec [hl]
    dec b
    dec b
    dec b
    ld [hl], $33
    inc [hl]
    dec b
    inc [hl]
    inc sp
    dec b
    ld [hl-], a
    dec b
    ld sp, $0505
    dec b
    inc b
    dec b
    dec b
    ld [de], a
    add hl, bc
    ld a, [bc]
    inc bc
    ld d, b
    adc d
    ld c, h
    cp l
    ld c, e
    nop
    and b
    ld c, a
    call Call_012_4bcf
    call Call_012_4bec
    call Call_000_3c3c
    ld hl, $4c12
    ld a, [$d65f]
    jp Jump_000_3d97


Call_012_4bcf:
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    ret z

    call Call_000_3e5c
    ldh a, [$d3]
    cp $07
    jr nc, jr_012_4be2

    ld a, $08

jr_012_4be2:
    srl a
    srl a
    srl a
    ld [$cd05], a
    ret


Call_012_4bec:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d77e]
    bit 1, a
    ret nz

    ld a, $2a
    ld [$d09f], a
    ld bc, $0208
    ld a, $17
    jp Jump_000_3e6d


Jump_012_4c07:
    xor a
    ld [$cd6b], a
    ld [$d65f], a
    ld [$da39], a
    ret


    jr jr_012_4c60

    add hl, de
    ld c, h
    ld l, c
    ld c, h
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_012_4c07

    ld a, $f0
    ld [$cd6b], a
    ld a, $0d
    ldh [$8c], a
    call Call_000_2920
    ld a, $0b
    ldh [$8c], a
    call Call_000_3541
    ld de, $4c5a
    ld a, [$d361]
    cp $06
    jr nz, jr_012_4c43

    ld de, $4c63
    jr jr_012_4c4d

jr_012_4c43:
    ld a, [$d362]
    cp $08
    jr nz, jr_012_4c4d

    ld de, $4c63

jr_012_4c4d:
    ld a, $0b
    ldh [$8c], a
    call Call_000_363a
    ld a, $02
    ld [$d65f], a
    ret


    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

jr_012_4c60:
    ret nz

    ret nz

    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $46
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d126
    set 5, [hl]
    set 6, [hl]
    ld a, $00
    ld [$d65f], a
    ret


    and h
    ld c, h
    xor c
    ld c, h
    ld b, b
    ld c, l
    ld b, l
    ld c, l
    ld c, d
    ld c, l
    or c
    ld c, l
    or [hl]
    ld c, l
    call nc, $d94d
    ld c, l
    dec sp
    ld c, [hl]
    sbc l
    ld c, [hl]
    db $dd
    ld c, [hl]
    ret c

    ld c, [hl]
    rla
    push de
    ld e, b
    daa
    ld d, b
    ld [$1ecd], sp
    ld c, a
    ld hl, $4d22
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_012_4d0f

    ld b, $45
    call Call_000_3493
    jr z, jr_012_4d19

    call Call_012_4f95
    jr nc, jr_012_4d14

    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $10
    ldh [$a0], a
    call Call_000_35a6
    jr nc, jr_012_4cdb

    ld hl, $4d31
    jr jr_012_4d1c

jr_012_4cdb:
    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $10
    ldh [$a0], a
    ld hl, $ffa1
    ld de, $d349
    ld c, $03
    ld a, $0c
    call Call_000_3e6d
    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $50
    ldh [$a1], a
    ld de, $d5a5
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3e6d
    call Call_012_4f1e
    ld hl, $4d27
    jr jr_012_4d1c

jr_012_4d0f:
    ld hl, $4d2c
    jr jr_012_4d1c

jr_012_4d14:
    ld hl, $4d36
    jr jr_012_4d1c

jr_012_4d19:
    ld hl, $4d3b

jr_012_4d1c:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld a, [de]
    ld e, c
    daa
    ld d, b
    rla
    add h
    ld e, c
    daa
    ld d, b
    rla
    and l
    ld e, c
    daa
    ld d, b
    rla
    push bc
    ld e, c
    daa
    ld d, b
    rla
    pop hl
    ld e, c
    daa
    ld d, b
    rla
    nop
    ld e, d
    daa
    ld d, b
    rla
    inc e
    ld e, d
    daa
    ld d, b
    rla
    ld h, c
    ld e, d
    daa
    ld d, b
    ld [$7efa], sp
    rst $10
    bit 2, a
    jr nz, jr_012_4d89

    ld hl, $4d9c
    call Call_000_3c49
    ld b, $45
    call Call_000_3493
    jr z, jr_012_4d93

    call Call_012_4f95
    jr nc, jr_012_4d8e

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $10
    ldh [$a1], a
    ld de, $d5a5
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3e6d
    ld hl, $d77e
    set 2, [hl]
    ld a, $01
    ld [$cc3c], a
    ld hl, $4da1
    jr jr_012_4d96

jr_012_4d89:
    ld hl, $4dac
    jr jr_012_4d96

jr_012_4d8e:
    ld hl, $4da7
    jr jr_012_4d96

jr_012_4d93:
    ld hl, $4f19

jr_012_4d96:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    adc [hl]
    ld e, d
    daa
    ld d, b
    rla
    xor c
    ld e, d
    daa
    dec bc
    ld d, b
    rla
    ret nz

    ld e, d
    daa
    ld d, b
    rla
    reti


    ld e, d
    daa
    ld d, b
    rla
    db $f4
    ld e, d
    daa
    ld d, b
    ld [$7cfa], sp
    rst $10
    bit 1, a
    ld hl, $4dca
    jr z, jr_012_4dc4

    ld hl, $4dcf

jr_012_4dc4:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld de, $275b
    ld d, b
    rla
    xor h
    ld e, e
    daa
    ld d, b
    rla
    ld b, $5c
    daa
    ld d, b
    ld [$7efa], sp
    rst $10
    bit 4, a
    jr nz, jr_012_4e13

    ld hl, $4e26
    call Call_000_3c49
    ld b, $45
    call Call_000_3493
    jr z, jr_012_4e1d

    call Call_012_4f95
    jr nc, jr_012_4e18

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $20
    ldh [$a1], a
    ld de, $d5a5
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3e6d
    ld hl, $d77e
    set 4, [hl]
    ld hl, $4e2b
    jr jr_012_4e20

jr_012_4e13:
    ld hl, $4e36
    jr jr_012_4e20

jr_012_4e18:
    ld hl, $4e31
    jr jr_012_4e20

jr_012_4e1d:
    ld hl, $4f19

jr_012_4e20:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    inc sp
    ld e, h
    daa
    ld d, b
    rla
    ld c, a
    ld e, h
    daa
    dec bc
    ld d, b
    rla
    ld h, [hl]
    ld e, h
    daa
    ld d, b
    rla
    ld a, a
    ld e, h
    daa
    ld d, b
    ld [$7efa], sp
    rst $10
    bit 3, a
    jr nz, jr_012_4e75

    ld hl, $4e88
    call Call_000_3c49
    ld b, $45
    call Call_000_3493
    jr z, jr_012_4e7f

    call Call_012_4f95
    jr z, jr_012_4e7a

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $20
    ldh [$a1], a
    ld de, $d5a5
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3e6d
    ld hl, $d77e
    set 3, [hl]
    ld hl, $4e8d
    jr jr_012_4e82

jr_012_4e75:
    ld hl, $4e98
    jr jr_012_4e82

jr_012_4e7a:
    ld hl, $4e93
    jr jr_012_4e82

jr_012_4e7f:
    ld hl, $4f19

jr_012_4e82:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    xor l
    ld e, h
    daa
    ld d, b
    rla
    db $eb
    ld e, h
    daa
    dec bc
    ld d, b
    rla
    ld [bc], a
    ld e, l
    daa
    ld d, b
    rla
    dec e
    ld e, l
    daa
    ld d, b
    ld [$ce21], sp
    ld c, [hl]
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $4ed3
    ld de, $4ed3
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    xor a
    ldh [$b4], a
    ldh [$b3], a
    ldh [$b2], a
    ld a, $01
    ld [$d65f], a
    jp Jump_000_24d7


    rla
    ld b, a
    ld e, l
    daa
    ld d, b
    rla
    ld [hl], e
    ld e, l
    daa
    ld d, b
    rla
    ld a, d
    ld e, l
    daa
    ld d, b
    ld [$013e], sp
    ld [$cc3c], a
    ld hl, $4f09
    call Call_000_3c49
    call Call_000_3748
    ld a, $ad
    call Call_000_23b1
    call Call_000_3748
    ld hl, $d77e
    set 1, [hl]
    ld a, $43
    ld [$d09f], a
    ld bc, $0208
    ld a, $17
    call Call_000_3e6d
    jp Jump_000_24d7


    rla
    or b
    ld e, l
    daa
    ld [$9d3e], sp
    call Call_000_23b1
    call Call_000_3748
    jp Jump_000_24d7


    rla
    ld [c], a
    ld e, l
    daa
    ld d, b

Call_012_4f1e:
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3ab
    ld b, $05
    ld c, $07
    call Call_000_1922
    call Call_000_2429
    ld hl, $c3c0
    ld b, $04
    ld c, $07
    call Call_000_18c4
    ld hl, $c3d4
    ld de, $4f7a
    call Call_000_1955
    ld hl, $c3e8
    ld de, $4f85
    call Call_000_1955
    ld hl, $c3e8
    ld de, $d347
    ld c, $a3
    call Call_000_15cd
    ld hl, $c3fc
    ld de, $4f80
    call Call_000_1955
    ld hl, $c410
    ld de, $4f8d
    call Call_000_1955
    ld hl, $c413
    ld de, $d5a4
    ld c, $82
    call Call_000_15cd
    ld hl, $d730
    res 6, [hl]
    ret


    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    add d
    adc [hl]
    adc b
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Call_012_4f95:
    ld a, $99
    ldh [$a0], a
    ld a, $90
    ldh [$a1], a
    jp Jump_000_35b1


    rrca
    inc bc
    ld de, $070f
    rst $38
    ld de, $0710
    rst $38
    inc b
    ld de, $c701
    ld bc, $0904
    inc c
    dec bc
    rrca
    ld a, [bc]
    ld b, $ff
    ret nc

    ld bc, $0a26
    add hl, bc
    rst $38
    ret nc

    ld [bc], a
    ld a, [bc]
    ld c, $06
    rst $38
    jp nc, Jump_000_0f03

    ld de, $ff06
    jp nc, Jump_000_2704

    rrca
    add hl, bc
    rst $38
    db $d3
    dec b
    inc e
    rrca
    inc c
    rst $38
    jp nc, $2406

    ld [de], a
    inc c
    rst $38
    jp nc, Jump_000_0b07

    inc de
    rrca
    rst $38
    db $d3
    ld [$0f26], sp
    ld [de], a
    rst $38
    jp nc, $1009

    ld de, $ff15
    db $d3
    ld a, [bc]
    jr @+$0b

    dec c
    rst $38
    pop de
    ld c, e
    and $07
    add b
    rst $00
    ld de, $810f
    rst $00
    ld de, $2110
    rst $00
    inc b
    ld de, $0f0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, e
    ld a, [hl+]
    cpl
    cpl
    cpl
    inc sp
    jr nz, jr_012_5047

    dec de
    dec de
    dec de
    dec de
    ld a, [hl-]
    jr nz, jr_012_504e

    ld a, [hl-]
    jr nz, jr_012_5051

    ld a, [hl-]
    jr nz, jr_012_5054

    ld a, [hl-]
    add hl, sp
    rra
    ld hl, $1f39
    ld hl, $1f39
    ld hl, $3939
    rra
    ld hl, $1f39
    ld hl, $1f39

jr_012_5047:
    ld hl, $3839
    rra
    ld hl, $1f38

jr_012_504e:
    ld hl, $1f38

jr_012_5051:
    ld hl, $2038

jr_012_5054:
    jr nz, jr_012_5076

    jr nz, jr_012_5078

    jr nz, jr_012_507a

    jr z, jr_012_5085

    jr nz, jr_012_5070

    inc b
    ld a, [bc]
    cp h
    ld d, b
    ld l, h
    ld d, b
    ld l, c
    ld d, b
    nop
    add l
    ld d, b
    jp Jump_000_3c3c


    db $76
    ld d, b
    ld a, e
    ld d, b

jr_012_5070:
    sub [hl]
    inc h
    and b
    inc h
    add b
    ld d, b

jr_012_5076:
    rla
    rst $38

jr_012_5078:
    ld e, l
    daa

jr_012_507a:
    ld d, b
    rla
    ld a, c
    ld e, [hl]
    daa
    ld d, b
    rla
    sub $5e
    daa
    ld d, b

jr_012_5085:
    rrca
    inc bc
    ld bc, $000c
    ld a, [hl]
    ld bc, $0110
    ld a, l
    ld bc, $0001
    ld a, a
    ld bc, $0e01
    dec b
    inc b
    db $10
    add hl, bc
    ld [de], a
    cp $01
    ld bc, $0a13
    ld b, $ff
    rst $38
    ld [bc], a
    ld h, $07
    add hl, bc
    rst $38
    ret nc

    inc bc
    ld h, $07
    ld a, [bc]
    rst $38
    ret nc

    inc b
    rst $38
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    jr @+$1b

    ld bc, $0201
    dec h
    inc bc
    ld bc, $0b0b
    inc d
    rla
    dec bc
    ld a, [de]
    ld a, [de]
    dec bc
    ld a, [de]
    ld a, [de]
    dec bc
    dec bc
    dec d
    ld d, $0b
    ld e, $1e
    dec bc
    ld e, $1e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    inc b
    dec b
    ld sp, $f351
    ld d, b
    ldh a, [$50]
    nop
    ld [$c351], sp
    inc a
    inc a
    db $fd
    ld d, b
    ld [bc], a
    ld d, c
    rlca
    ld d, c
    rlca
    ld d, c
    rlca
    ld d, c
    rla
    and $5e
    daa
    ld d, b
    rla
    inc h
    ld e, a
    daa
    ld d, b
    rst $30
    rrca
    ld [bc], a
    rlca
    inc b
    add hl, bc
    rst $38
    rlca
    dec b
    add hl, bc
    rst $38
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld b, $05
    ld [bc], a
    inc [hl]
    ld [$ff05], sp
    rst $38
    ld bc, $070b
    dec bc
    cp $02
    ld [bc], a
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    ccf
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld a, $3e
    ld a, $3e
    ld a, $20
    jr nz, jr_012_515e

    jr nz, jr_012_5160

    dec de
    dec de
    dec a
    dec de
    dec de
    ld [de], a
    inc b
    dec b
    xor $51
    ld d, l
    ld d, c
    ld d, c
    ld d, c
    nop
    cp h
    ld d, c
    call Call_000_3c3c
    ret


    ld e, a
    ld d, c
    ld h, h
    ld d, c
    ld l, c
    ld d, c
    ld l, [hl]
    ld d, c
    ld [hl], e

jr_012_515e:
    ld d, c
    rla

jr_012_5160:
    ccf
    ld e, a
    daa
    ld d, b
    rla
    ld e, l
    ld e, a
    daa
    ld d, b
    rla
    sbc c
    ld e, a
    daa
    ld d, b
    rla
    ret


    ld e, a
    daa
    ld d, b
    ld [$83fa], sp
    rst $10
    bit 0, a
    jr nz, jr_012_519e

    ld hl, $51a7
    call Call_000_3c49
    ld bc, $4501
    call Call_000_3e2e
    jr nc, jr_012_5196

    ld hl, $d783
    set 0, [hl]
    ld hl, $51ac
    call Call_000_3c49
    jr jr_012_51a4

jr_012_5196:
    ld hl, $51b2
    call Call_000_3c49
    jr jr_012_51a4

jr_012_519e:
    ld hl, $51b7
    call Call_000_3c49

jr_012_51a4:
    jp Jump_000_24d7


    rla
    inc bc
    ld h, b
    daa
    ld d, b
    rla
    ld a, d
    ld h, b
    daa
    ld de, $1750
    sub b
    ld h, b
    daa
    ld d, b
    rla
    and l
    ld h, b
    daa
    ld d, b
    rrca
    ld [bc], a
    rlca
    inc bc
    ld a, [bc]
    rst $38
    rlca
    inc b
    ld a, [bc]
    rst $38
    nop
    dec b
    inc d
    add hl, bc
    inc c
    cp $02
    ld bc, $061c
    dec bc
    rst $38
    rst $38
    ld [bc], a
    ld a, [bc]
    ld [$ff05], sp
    ret nc

    inc bc
    cpl
    rlca
    add hl, bc
    rst $38
    db $d3
    inc b
    inc h
    dec b
    inc b
    rst $38
    ret nc

    dec b
    ld d, $c7
    rlca
    inc bc
    rla
    rst $00
    rlca
    inc b
    inc l
    ld a, [hl+]
    ld l, $32
    jr nc, jr_012_5211

    jr nz, jr_012_5217

    inc d
    dec bc
    dec l
    jr nz, jr_012_521c

    inc d
    dec bc
    ld sp, $2928
    dec d
    ld de, $0413
    inc b
    ld c, l
    ld d, d
    ld [de], a
    ld d, d
    ld c, $52
    nop
    daa
    ld d, d
    call Call_000_3c3c

jr_012_5211:
    ret


    jr jr_012_5266

    dec e
    ld d, d
    ld [hl+], a

jr_012_5217:
    ld d, d
    rla
    push de
    ld h, b
    daa

jr_012_521c:
    ld d, b
    rla
    ld a, [bc]
    ld h, c
    daa
    ld d, b
    rla
    inc a
    ld h, c
    daa
    ld d, b
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    dec bc
    rst $38
    rlca
    inc bc
    dec bc
    rst $38
    nop
    inc bc
    dec h
    ld b, $08
    rst $38
    ret nc

    ld bc, $0818
    dec b
    cp $00
    ld [bc], a
    inc de
    ld a, [bc]
    add hl, bc
    rst $38
    jp nc, $1203

    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld b, h
    ld b, b
    ccf
    ld b, h
    dec bc
    ld b, d
    ld b, e
    dec bc
    dec bc
    ld b, [hl]
    ld b, a
    dec bc
    ld [hl], $41
    dec bc
    ld [hl], $06
    inc b
    rlca
    and a
    ld d, d
    ld l, h
    ld d, d
    ld l, c
    ld d, d

jr_012_5266:
    nop
    add c
    ld d, d
    jp Jump_000_3c3c


    ld [hl], d
    ld d, d
    ld [hl], a
    ld d, d
    ld a, h
    ld d, d
    rla
    adc d
    ld h, c
    daa
    ld d, b
    rla
    cp a
    ld h, c
    daa
    ld d, b
    rla
    ld c, $62
    daa
    ld d, b
    nop
    ld [bc], a
    rlca
    inc bc
    inc c
    rst $38
    rlca
    inc b
    inc c
    rst $38
    nop
    inc bc
    jr z, @+$07

    rlca
    rst $38
    ret nc

    ld bc, $080f
    ld b, $ff
    rst $38
    ld [bc], a
    inc c
    ld [$fe0c], sp
    ld [bc], a
    inc bc
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rrca
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $06
    inc b
    rlca
    xor e
    ld b, b
    push de
    ld d, d
    rst $08
    ld d, d
    nop
    db $76
    ld d, e
    call Call_000_22fa
    jp Jump_000_3c3c


    pop hl
    ld d, d
    ld [c], a
    ld d, d
    rst $20
    ld d, d
    db $ec
    ld d, d
    ld [hl], b
    ld d, e
    ld [hl], l
    ld d, e
    rst $38
    rla
    db $eb
    ld l, b
    ld [hl+], a
    ld d, b
    rla
    add hl, hl
    ld l, c
    ld [hl+], a
    ld d, b
    ld [$c6fa], sp
    rst $10
    add a
    jp c, Jump_012_5353

    ld hl, $535c
    call Call_000_3c49
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jp nz, Jump_012_534e

    ldh [$9f], a
    ldh [$a1], a
    ld a, $05
    ldh [$a0], a
    call Call_000_35a6
    jr nc, jr_012_531e

    ld hl, $5366
    jr jr_012_5356

jr_012_531e:
    ld bc, $8505
    call Call_000_3e48
    jr nc, jr_012_5359

    xor a
    ld [$cd3d], a
    ld [$cd3f], a
    ld a, $05
    ld [$cd3e], a
    ld hl, $cd3f
    ld de, $d349
    ld c, $03
    ld a, $0c
    call Call_000_3e6d
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld hl, $d7c6
    set 7, [hl]
    jr jr_012_5359

Jump_012_534e:
    ld hl, $5361
    jr jr_012_5356

Jump_012_5353:
    ld hl, $536b

jr_012_5356:
    call Call_000_3c49

jr_012_5359:
    jp Jump_000_24d7


    rla
    db $76
    ld l, c
    ld [hl+], a
    ld d, b
    rla
    db $ec
    ld l, c
    ld [hl+], a
    ld d, b
    rla
    rla
    ld l, d
    ld [hl+], a
    ld d, b
    rla
    add hl, sp
    ld l, d
    ld [hl+], a
    ld d, b
    rla
    ld e, d
    ld l, d
    ld [hl+], a
    ld d, b
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
    ld b, $29
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0704
    ld [$d1ff], sp
    ld [bc], a
    db $10
    rlca
    dec bc
    rst $38
    pop de
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld c, $fe
    ld [bc], a
    inc b
    ld b, d
    ld b, $0b
    rst $38
    rst $38
    dec b
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    ld b, $1e
    rst $00
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld b, $04
    rlca
    xor e
    ld b, b
    ret nz

    ld d, e
    cp d
    ld d, e
    nop
    call nc, $cd53
    ld a, [$c322]
    inc a
    inc a
    ret z

    ld d, e
    ret


    ld d, e
    adc $53
    db $d3
    ld d, e
    rst $38
    rla
    ret nz

    ld b, d
    inc hl
    ld d, b
    rla
    ld d, $43
    inc hl
    ld d, b
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

    ld bc, $0710
    dec bc
    cp $02
    ld [bc], a
    cpl
    add hl, bc
    ld b, $ff
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
    inc c
    dec b
    inc b
    rst $00
    ld b, b
    rrca
    ld d, h
    inc c
    ld d, h
    nop
    ld d, $54
    jp Jump_000_3c3c


    ld de, $1754
    di
    ld b, l
    inc hl
    ld d, b
    ld a, [bc]
    dec b
    inc b
    nop
    nop
    rst $38
    dec b
    nop
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    dec b
    rlca
    inc bc
    rst $38
    ld [$0006], sp
    ld d, [hl]
    nop
    ld bc, $0531
    ld [$ffff], sp
    ld bc, $c707
    inc b
    nop
    rlca
    rst $00
    dec b
    nop
    ld a, [bc]
    rst $00

Call_012_543e:
    inc b
    rlca
    ld a, [bc]
    rst $00
    dec b
    rlca
    ld e, $c7
    ld [$0c06], sp
    inc b
    inc b
    db $db
    ld b, b
    ld d, a
    ld d, h
    ld d, h
    ld d, h
    nop
    jp c, $c354

    ccf
    inc a
    ld e, a
    ld d, h
    ld l, h
    ld d, h
    xor b
    ld d, h
    adc $54
    ld [$eaaf], sp
    dec a
    call Call_012_543e
    call Call_000_3e6d

jr_012_5469:
    jp Jump_000_24d7


    ld [$d6fa], sp
    rst $10
    add a
    jr c, jr_012_549b

    ld a, $1e
    ldh [$db], a
    ld a, $47
    ldh [$dc], a
    ld [$d11e], a
    call Call_000_2fcf
    ld h, d
    ld l, e
    ld de, $cc5b
    ld bc, $000d
    call Call_000_00b5
    ld a, $62
    call Call_000_3e6d
    ldh a, [$db]
    dec a
    jr nz, jr_012_54a1

    ld hl, $d7d6
    set 7, [hl]

jr_012_549b:
    ld hl, $54a3
    call Call_000_3c49

jr_012_54a1:
    jr jr_012_5469

    rla
    adc c
    ld b, [hl]
    inc hl
    ld d, b
    ld [$09fa], sp
    pop bc
    cp $04
    jp nz, Jump_012_55c9

    ld a, [$d7d8]
    bit 7, a
    ld hl, $54c4
    jr z, jr_012_54be

    ld hl, $54c9

jr_012_54be:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    dec de
    ld b, a
    inc hl
    ld d, b
    rla
    ld e, b
    ld b, a
    inc hl
    ld d, b
    ld [$d521], sp
    ld d, h
    jp Jump_012_55c9


    rla
    adc e
    ld b, a
    inc hl
    ld d, b
    ld a, [bc]
    ld bc, $0707
    inc b
    ld d, h
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld b, $04
    ld [bc], a
    inc b
    ld b, $08
    cp $02
    ld bc, $0a20
    ld b, $ff
    rst $38
    ld [bc], a
    inc d
    rst $00
    rlca
    rlca
    inc c
    inc b
    dec b
    ld b, b
    ld d, l
    rlca
    ld d, l
    inc b
    ld d, l
    nop
    ld c, $55
    jp Jump_000_3c3c


    add hl, bc
    ld d, l
    rla
    ld c, d
    ld c, b
    inc hl
    ld d, b
    ld a, [bc]
    dec b
    nop
    inc b
    nop
    rst $38
    nop
    dec b
    ld bc, $07ff
    inc b
    ld [bc], a
    rst $38
    rlca
    dec b
    ld [bc], a
    rst $38
    ld b, $08
    nop
    jp Boot


    ld sp, $0507
    rst $38
    rst $38
    ld bc, $c6f6
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
    add hl, de
    rst $00
    ld b, $08
    ld d, $27
    ld [hl], c
    dec hl
    rla
    ld [bc], a
    add hl, bc
    nop
    ld c, h
    ld bc, $0902
    nop
    inc d
    dec e
    jr @+$2c

    ld [hl], d
    ld bc, $0c23
    inc b
    inc b
    db $db
    ld b, b
    ld h, e
    ld d, l
    ld h, b
    ld d, l
    nop
    sbc $55
    jp Jump_000_3c3f


    ld l, c
    ld d, l
    or c
    ld d, l
    cp l
    ld d, l
    ld [$d7fa], sp
    rst $10
    rrca
    jr c, jr_012_5593

    ld hl, $559c
    call Call_000_3c49
    ld bc, $ef01
    call Call_000_3e2e
    jr nc, jr_012_558b

    ld hl, $55a1
    call Call_000_3c49
    ld hl, $d7d7
    set 0, [hl]
    jr jr_012_5599

jr_012_558b:
    ld hl, $55ac
    call Call_000_3c49
    jr jr_012_5599

jr_012_5593:
    ld hl, $55a7
    call Call_000_3c49

jr_012_5599:
    jp Jump_000_24d7


    rla
    ld l, e
    ld c, b
    inc hl
    ld d, b
    rla
    add $48
    inc hl
    dec bc
    ld d, b
    rla
    reti


    ld c, b
    inc hl
    ld d, b
    rla
    inc a
    ld c, c
    inc hl
    ld d, b
    ld [$b821], sp
    ld d, l
    jp Jump_012_55c9


    rla
    ld e, d
    ld c, c
    inc hl
    ld d, b
    ld [$c421], sp
    ld d, l
    jp Jump_012_55c9


    rla
    add [hl]
    ld c, c
    inc hl
    ld d, b

Jump_012_55c9:
    ld a, [$c109]
    cp $04
    jr z, jr_012_55d4

    ld a, $01
    jr jr_012_55d8

jr_012_55d4:
    call Call_000_3c49
    xor a

jr_012_55d8:
    ld [$cc3c], a
    jp Jump_000_24d7


    ld a, [bc]
    ld bc, $0707
    inc b
    ld d, a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld b, $03
    ld bc, $081d
    rlca
    cp $01
    ld bc, $c714
    rlca
    rlca
    inc c
    dec b
    inc b
    rst $00
    ld b, b
    dec b
    ld d, [hl]
    ld [bc], a
    ld d, [hl]
    nop
    inc c
    ld d, [hl]
    jp Jump_000_3c3c


    rlca
    ld d, [hl]
    rla
    ld [hl], e
    ld c, e
    inc hl
    ld d, b
    ld a, [bc]
    dec b
    inc b
    nop
    nop
    rst $38
    dec b
    nop
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    dec b
    rlca
    inc bc
    rst $38
    ld [$0006], sp
    cp c
    nop
    ld bc, $0531
    ld [$ffff], sp
    ld bc, $c707
    inc b
    nop
    rlca
    rst $00
    dec b
    nop
    ld a, [bc]
    rst $00
    inc b
    rlca
    ld a, [bc]
    rst $00
    dec b
    rlca
    ld e, $c7
    ld [$0c06], sp
    inc b
    inc b
    db $db
    ld b, b
    ld c, l
    ld d, [hl]
    ld c, d
    ld d, [hl]
    nop
    sbc l
    ld d, [hl]
    jp Jump_000_3c3f


    ld d, c
    ld d, [hl]
    sub c
    ld d, [hl]
    ld [$ddfa], sp
    rst $10
    bit 0, a
    jr nz, jr_012_5683

    ld a, $32
    ldh [$db], a
    ld a, $4b
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
    jr nz, jr_012_5689

    ld hl, $d7dd
    set 0, [hl]

jr_012_5683:
    ld hl, $568c
    call Call_000_3c49

jr_012_5689:
    jp Jump_000_24d7


    rla
    xor h
    ld c, e
    inc hl
    ld d, b
    ld [$9821], sp
    ld d, [hl]
    jp Jump_012_55c9


    rla
    ld h, l
    ld c, h
    inc hl
    ld d, b
    ld a, [bc]
    ld bc, $0707
    inc b
    cp b
    ld bc, $0602
    ld [bc], a
    ld bc, $0620
    ld [$d0ff], sp
    ld bc, $c714
    rlca
    rlca
    inc c
    rlca
    inc b
    db $e3
    ld d, a
    ld e, d
    ld d, a
    cp [hl]
    ld d, [hl]
    nop
    adc e
    ld d, a
    ld hl, $d732
    res 5, [hl]
    call Call_000_3c3c
    ld a, [$d660]
    ld hl, $56cf
    jp Jump_000_3d97


    rst $10
    ld d, [hl]
    dec e
    ld d, a
    daa
    ld d, a
    ld b, c
    ld d, a
    call Call_012_5755
    ret nz

    ld hl, $5714
    call Call_000_34bf
    ret nc

    ld a, $03
    ldh [$8c], a
    call Call_000_2920
    xor a
    ldh [$b4], a
    ld a, [$cd3d]
    cp $01
    jr z, jr_012_570e

    ld a, [$cd3d]
    dec a
    ld [$cd38], a
    ld b, $00
    ld c, a
    ld a, $40
    ld hl, $ccd3
    call Call_000_36e0
    call Call_000_3486
    ld a, $01
    ld [$d660], a
    ret


jr_012_570e:
    ld a, $02
    ld [$d660], a
    ret


    rlca
    inc b
    ld [$0904], sp
    inc b
    ld a, [bc]
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld a, $01
    ld [$cd38], a
    ld a, $10
    ld [$ccd3], a
    call Call_000_3486
    ld a, $03
    ld [$d660], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld hl, $d730
    res 7, [hl]
    ld a, $00
    ld [$d660], a
    ret


Call_012_5755:
    ld b, $06
    jp Jump_000_3493


    ld h, b
    ld d, a
    add [hl]
    ld d, a
    add c
    ld d, a
    ld [$55cd], sp
    ld d, a
    jr z, jr_012_576e

    ld hl, $577c
    call Call_000_3c49
    jr jr_012_5774

jr_012_576e:
    ld hl, $5777
    call Call_000_3c49

jr_012_5774:
    jp Jump_000_24d7


    rla
    and b
    ld c, h
    inc hl
    ld d, b
    rla
    call Call_000_234c
    ld d, b
    rla
    ld c, $4d
    inc hl
    ld d, b
    rla
    ld a, [hl+]
    ld c, l
    inc hl
    ld d, b
    ld a, [bc]
    add hl, bc
    ld [$0000], sp
    rst $38
    add hl, bc
    nop
    ld bc, $08ff
    rlca
    ld [bc], a
    rst $38
    add hl, bc
    rlca
    ld [bc], a
    rst $38
    ld [bc], a
    nop
    inc b
    rst $38
    inc bc
    nop
    dec b
    rst $38
    ld [bc], a
    rlca
    ld b, $ff
    inc bc
    rlca
    rlca
    rst $38
    inc c
    ld b, $00
    cp e
    nop
    ld [bc], a
    ld sp, $0809
    rst $38
    ret nc

    ld bc, $070b
    ld [$ffff], sp
    ld [bc], a
    dec de
    rst $00
    ld [$1b00], sp
    rst $00
    add hl, bc
    nop
    ld e, $c7
    ld [$1e07], sp
    rst $00
    add hl, bc
    rlca
    db $fd
    add $02
    nop
    db $fd
    add $03
    nop
    nop
    rst $00
    ld [bc], a
    rlca
    nop
    rst $00
    inc bc
    rlca
    ld [hl-], a
    rst $00
    inc c
    ld b, $68
    ld l, b
    ld l, b
    ld l, b
    ld h, [hl]
    nop
    nop
    ld h, a
    inc e
    rra
    rra
    dec e
    ld [hl-], a
    ld hl, $3121
    ld h, [hl]
    nop
    nop
    ld h, a
    add hl, hl
    dec h
    ld h, $1e
    jr @+$20

    jr nc, jr_012_5822

    inc c
    inc b
    inc b
    db $db
    ld b, b
    ld c, $58
    dec bc
    ld e, b
    nop
    ld c, h
    ld e, b
    jp Jump_000_3c3f


    ld d, $58
    dec h
    ld e, b
    inc [hl]
    ld e, b
    ld b, b
    ld e, b
    ld [$2021], sp
    ld e, b
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld c, c

jr_012_5822:
    ld c, l
    inc hl
    ld d, b
    ld [$2f21], sp
    ld e, b
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld [hl], e
    ld c, l
    inc hl
    ld d, b
    ld [$3b21], sp
    ld e, b
    jp Jump_012_55c9


    rla
    sub b
    ld c, l
    inc hl
    ld d, b
    ld [$4721], sp
    ld e, b
    jp Jump_012_55c9


    rla
    add $4d
    inc hl
    ld d, b
    ld a, [bc]
    ld bc, $0707
    ld [$02ba], sp
    ld [bc], a
    ld bc, $0203
    ld b, $04
    ld [bc], a
    dec [hl]
    ld b, $08
    rst $38
    rst $38
    ld bc, $0908
    ld b, $fe
    ld [bc], a
    ld [bc], a
    inc d
    rst $00
    rlca
    rlca
    inc c
    dec b
    inc b
    rst $00
    ld b, b
    dec c
    ld e, c
    db $76
    ld e, b
    nop
    scf
    ld e, c
    ld hl, $d732
    res 5, [hl]
    call Call_000_3c3c
    ld a, [$d669]
    ld hl, $5887
    jp Jump_000_3d97


    adc a
    ld e, b
    push de
    ld e, b
    rst $18
    ld e, b
    ld sp, hl
    ld e, b
    call Call_012_5755
    ret nz

    ld hl, $58cc
    call Call_000_34bf
    ret nc

    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    xor a
    ldh [$b4], a
    ld a, [$cd3d]
    cp $01
    jr z, jr_012_58c6

    ld a, [$cd3d]
    dec a
    ld [$cd38], a
    ld b, $00
    ld c, a
    ld a, $40
    ld hl, $ccd3
    call Call_000_36e0
    call Call_000_3486
    ld a, $01
    ld [$d669], a
    ret


jr_012_58c6:
    ld a, $02
    ld [$d669], a
    ret


    inc bc
    inc b
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld a, $01
    ld [$cd38], a
    ld a, $10
    ld [$ccd3], a
    call Call_000_3486
    ld a, $03
    ld [$d669], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld hl, $d730
    res 7, [hl]
    ld a, $00
    ld [$d669], a
    ret


    ld de, $3259
    ld e, c
    ld [$55cd], sp
    ld d, a
    jr z, jr_012_591f

    ld hl, $592d
    call Call_000_3c49
    jr jr_012_5925

jr_012_591f:
    ld hl, $5928
    call Call_000_3c49

jr_012_5925:
    jp Jump_000_24d7


    rla
    pop af
    ld c, [hl]
    inc hl
    ld d, b
    rla
    rla
    ld c, a
    inc hl
    ld d, b
    rla
    ld a, $4f
    inc hl
    ld d, b
    ld a, [bc]
    dec b
    inc b
    nop
    nop
    rst $38
    dec b
    nop
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    dec b
    rlca
    inc bc
    rst $38
    ld [$0006], sp
    cp a
    nop
    ld bc, $0531
    ld [$d0ff], sp
    ld bc, $c707
    inc b
    nop
    rlca
    rst $00
    dec b
    nop
    ld a, [bc]
    rst $00
    inc b
    rlca
    ld a, [bc]
    rst $00
    dec b
    rlca
    ld e, $c7
    ld [$0c06], sp
    inc b
    inc b
    db $db
    ld b, b
    ld a, b
    ld e, c
    ld [hl], l
    ld e, c
    nop
    and h
    ld e, c
    jp Jump_000_3c3f


    ld a, [hl]
    ld e, c
    adc h
    ld e, c
    sbc b
    ld e, c
    ld [$053e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3e6d
    jp Jump_000_24d7


    ld [$9321], sp
    ld e, c
    jp Jump_012_55c9


    rla
    ld c, d
    ld c, a
    inc hl
    ld d, b
    ld [$9f21], sp
    ld e, c
    jp Jump_012_55c9


    rla
    add e
    ld c, a
    inc hl
    ld d, b
    ld a, [bc]
    ld bc, $0707
    inc b
    cp [hl]
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld b, $03
    ld bc, $0604
    ld [$02fe], sp
    ld bc, $c714
    rlca
    rlca
    ld de, $1412
    sub a
    ld e, e
    pop hl
    ld e, c
    ret z

    ld e, c
    nop
    ld b, $5b
    call Call_000_3c3c
    ld hl, $59fd
    ld de, $59db
    ld a, [$d606]
    call Call_000_3160
    ld [$d606], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld d, d
    ld e, d
    ld e, h
    ld e, d
    ld h, [hl]
    ld e, d
    ld [hl], b
    ld e, d
    ld a, d
    ld e, d
    add h
    ld e, d
    adc [hl]
    ld e, d
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h

jr_012_59f5:
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $015b
    jr nz, jr_012_59f5

    rst $10

jr_012_5a01:
    sbc b
    ld e, d
    and d
    ld e, d
    sbc l
    ld e, d
    sbc l
    ld e, d
    ld [bc], a
    jr nc, jr_012_5a01

    rst $10

jr_012_5a0d:
    and a
    ld e, d
    or c
    ld e, d
    xor h
    ld e, d
    xor h
    ld e, d
    inc bc
    jr nc, jr_012_5a0d

    rst $10

jr_012_5a19:
    or [hl]
    ld e, d
    ret nz

    ld e, d
    cp e
    ld e, d
    cp e
    ld e, d
    inc b
    jr nc, jr_012_5a19

    rst $10

jr_012_5a25:
    push bc
    ld e, d
    rst $08
    ld e, d
    jp z, $ca5a

    ld e, d
    dec b
    jr nc, jr_012_5a25

    rst $10
    call nc, $de5a
    ld e, d
    reti


    ld e, d
    reti


    ld e, d
    ld b, $30
    push af
    rst $10

jr_012_5a3d:
    db $e3
    ld e, d
    db $ed
    ld e, d
    add sp, $5a
    add sp, $5a
    rlca
    jr nc, jr_012_5a3d

    rst $10
    ld a, [c]
    ld e, d
    db $fc
    ld e, d
    rst $30
    ld e, d
    rst $30
    ld e, d
    rst $38
    ld [$fd21], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$0921], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$1521], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$2121], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$2d21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$3921], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$4521], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub d
    ld b, [hl]
    jr nz, jr_012_5aed

    rla
    cp a
    ld b, [hl]
    jr nz, jr_012_5af2

    rla
    call nc, $2046
    ld d, b
    rla
    push af
    ld b, [hl]
    jr nz, jr_012_5afc

    rla
    inc de
    ld b, a
    jr nz, jr_012_5b01

    rla
    inc hl
    ld b, a
    jr nz, jr_012_5b06

    rla
    ld c, e
    ld b, a
    jr nz, jr_012_5b0b

    rla
    ld a, b
    ld b, a
    jr nz, @+$52

    rla
    adc b
    ld b, a
    jr nz, jr_012_5b15

    rla
    and l
    ld b, a
    jr nz, jr_012_5b1a

    rla
    pop bc
    ld b, a
    jr nz, jr_012_5b1f

    rla
    db $d3
    ld b, a
    jr nz, jr_012_5b24

    rla
    ld a, [c]
    ld b, a
    jr nz, @+$52

    rla
    inc h
    ld c, b
    jr nz, jr_012_5b2e

    rla
    dec l
    ld c, b
    jr nz, jr_012_5b33

    rla
    ld e, l
    ld c, b
    jr nz, @+$52

    rla
    adc [hl]
    ld c, b
    jr nz, jr_012_5b3d

jr_012_5aed:
    rla
    sbc e
    ld c, b
    jr nz, @+$52

jr_012_5af2:
    rla
    ret


    ld c, b
    jr nz, jr_012_5b47

    rla
    ld hl, sp+$48
    jr nz, jr_012_5b4c

jr_012_5afc:
    rla
    ld bc, $2049
    ld d, b

jr_012_5b01:
    rla
    ld a, [hl-]
    ld c, c
    jr nz, jr_012_5b56

jr_012_5b06:
    inc bc
    dec b
    inc hl
    ld c, $01

jr_012_5b0b:
    rst $38
    inc hl
    rrca
    ld bc, $05ff
    dec b
    nop
    inc a
    dec bc

jr_012_5b15:
    ld de, $3c02
    rrca
    add hl, de

jr_012_5b1a:
    inc bc
    inc a
    ld bc, $0f17

jr_012_5b1f:
    ld c, $0d
    ld c, $0a
    add hl, bc

jr_012_5b24:
    rst $38
    ret nc

    ld b, c
    pop de
    ld bc, $1404
    db $10
    rst $38
    db $d3

jr_012_5b2e:
    ld b, d
    ret


    inc bc
    ld b, $08

jr_012_5b33:
    ld [hl+], a
    rst $38
    ret nc

    ld b, e
    rlc l
    inc c
    inc hl
    inc e
    rst $38

jr_012_5b3d:
    pop de
    ld b, h
    ret nc

    ld bc, $1b06
    inc d
    rst $38

Call_012_5b45:
    ret nc

    ld b, l

jr_012_5b47:
    rlc [hl]
    inc b
    ld a, [de]
    dec bc

jr_012_5b4c:
    rst $38
    ret nc

    ld b, [hl]
    jp z, $0407

    rra
    ld [hl+], a
    rst $38
    db $d3

jr_012_5b56:
    ld b, a
    jp z, $3d08

    jr @+$08

    rst $38
    rst $38
    adc b
    inc d
    dec a
    ld b, $06
    rst $38
    rst $38
    adc c
    ld a, [bc]
    dec a
    inc hl
    daa
    rst $38
    rst $38
    adc d
    jr z, jr_012_5bac

    dec de
    jr z, @+$01

    rst $38
    adc e
    dec e
    dec a
    dec h
    jr @+$01

    rst $38
    adc h
    inc d
    dec a
    inc h
    add hl, bc
    rst $38
    rst $38
    adc l
    call nc, $c8c4
    inc hl
    ld c, $c4
    ret z

    inc hl
    rrca
    add hl, sp
    rst $00
    dec b
    dec b
    adc l
    rst $00
    dec bc
    ld de, $c7c5
    rrca
    add hl, de
    rla
    jr nz, jr_012_5bbb

    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $1b22

jr_012_5bac:
    ld bc, $0101
    ld bc, $1701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_012_5bbb:
    ld bc, $0101
    rla
    dec de
    ld bc, $0128
    ld bc, $1b01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec de
    dec de
    ld bc, $0101
    ld bc, $1b01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec de
    dec de
    ld bc, $0101
    ld bc, $1b01
    ld bc, $2001
    ld [hl+], a
    jr nz, jr_012_5c16

    jr nz, @+$24

    ld bc, $0101
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $1b01
    ld bc, $1728
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec de
    dec de
    ld bc, $0101
    ld bc, $1b01

jr_012_5c16:
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    rla
    ld bc, $1b01
    dec de
    ld bc, $0101
    ld bc, $1f01
    ld bc, $1701
    ld bc, $2801
    ld bc, $0101
    rra
    ld bc, $1b01
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $1f01
    ld bc, $0117
    ld bc, $0101
    rla
    ld bc, $1b01
    dec de
    jr nz, jr_012_5c6f

    ld [hl+], a
    rla
    ld bc, $0101
    ld bc, $0117
    rra
    ld bc, $0101
    ld bc, $011f
    ld bc, $1b1b
    ld bc, $0101
    dec de
    jr nz, @+$23

    ld hl, $1f22
    ld bc, $0117
    ld bc, $0101

jr_012_5c6f:
    rla
    ld bc, $1b01
    dec de
    ld bc, $0101
    rra
    ld bc, $2a01
    ld bc, $0101
    rra
    ld bc, $0101
    ld bc, $011f
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    rla
    ld bc, $1b01
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $1614
    jr nz, @+$24

    ld bc, $1614
    ld bc, $011f
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $0101
    ld bc, $1a18
    ld bc, $0101
    jr jr_012_5cd8

    ld bc, $0101
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $1614
    ld bc, $1a18
    ld bc, $0101
    inc e
    ld e, $01
    ld bc, $0101
    dec de
    dec de

jr_012_5cd8:
    ld bc, $0101
    ld bc, $1a18
    ld bc, $1a18
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rra
    rra
    jr nz, @+$23

    ld hl, $1c22
    ld e, $24
    inc e
    ld e, $20
    ld hl, $2121
    ld hl, $2121
    ld hl, $2221
    ld de, $1412
    ld b, c
    ld h, b
    inc [hl]
    ld e, [hl]
    dec bc
    ld e, l
    nop
    db $db
    ld e, a
    call Call_000_3c3c
    ld hl, $5e48
    ld de, $5d63
    ld a, [$d607]
    call Call_000_3160
    ld [$d607], a
    ld a, [$d7f6]
    bit 1, a
    ret z

    ld hl, $5d37
    call Call_000_34bf
    jr nc, jr_012_5d31

    ld hl, $d72e
    set 4, [hl]
    ret


jr_012_5d31:
    ld hl, $d72e
    res 4, [hl]
    ret


    dec b
    dec bc
    dec b
    inc c
    dec b
    dec c
    dec b
    ld c, $06
    dec bc
    ld b, $0c
    ld b, $0d
    ld b, $0e
    rlca
    dec bc
    rlca
    inc c
    rlca
    dec c
    rlca
    ld c, $08
    dec bc
    ld [$080c], sp
    dec c
    ld [$ff0e], sp

Jump_012_5d58:
    xor a
    ld [$cd6b], a
    ld [$d607], a
    ld [$da39], a
    ret


    ld l, a
    ld e, l
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    sbc d
    ld e, l
    cp d
    ld e, l
    ei
    ld e, l
    ld a, [$d7f6]
    bit 1, a
    jp nz, Jump_012_5d91

    ld a, [$d361]
    cp $08
    jp nz, Jump_012_5d91

    ld a, [$d362]
    cp $0d
    jp nz, Jump_012_5d91

    xor a
    ldh [$b4], a
    ld a, $01
    ldh [$8c], a
    jp Jump_000_2920


Jump_012_5d91:
    ld a, [$d7f6]
    and $c0
    jp z, Jump_000_3219

    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_012_5d58

    call Call_000_2429
    call Call_000_3dd7
    ld hl, $d7f6
    set 1, [hl]
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d607], a
    ld [$da39], a
    ret


    ld a, $01
    ldh [$8c], a
    call Call_000_3541
    ld hl, $5dea
    call Call_000_34bf
    jr c, jr_012_5dd7

    ld hl, $5df1
    call Call_000_34bf
    jp nc, Jump_000_3219

    ld de, $5df9
    jr jr_012_5dda

jr_012_5dd7:
    ld de, $5df8

jr_012_5dda:
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $05
    ld [$d607], a
    ld [$da39], a
    ret


    rlca
    inc c
    ld b, $0b
    dec b
    inc c
    rst $38
    rlca
    dec c
    ld b, $0e
    dec b
    ld c, $ff
    ret nz

    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ld [$cc3c], a
    ld a, $0a
    ldh [$8c], a
    call Call_000_2920
    ld a, [$d7f6]
    bit 6, a
    jr z, jr_012_5e1d

    ld a, $6e
    jr jr_012_5e1f

jr_012_5e1d:
    ld a, $6d

jr_012_5e1f:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d607], a
    ld [$da39], a
    ret


    ld a, c
    ld e, [hl]
    pop bc
    ld e, [hl]
    bit 3, [hl]
    push de
    ld e, [hl]
    rst $18
    ld e, [hl]
    jp hl


    ld e, [hl]
    add hl, hl
    ld e, a
    db $f4
    inc h
    db $f4
    inc h
    sbc c
    ld e, a
    ld [bc], a
    ld b, b
    or $d7
    sbc a
    ld e, a
    xor c
    ld e, a
    and h
    ld e, a
    and h
    ld e, a
    inc bc
    ld b, b
    or $d7
    xor [hl]
    ld e, a
    cp b
    ld e, a
    or e
    ld e, a
    or e
    ld e, a
    inc b
    ld b, b
    or $d7
    cp l
    ld e, a
    rst $00
    ld e, a
    jp nz, $c25f

    ld e, a
    dec b
    ld b, b
    or $d7
    call z, $d65f
    ld e, a
    pop de
    ld e, a
    pop de
    ld e, a
    rst $38
    ld [$f6fa], sp
    rst $10
    bit 1, a
    jr z, jr_012_5e8d

    and $c0
    jr nz, jr_012_5eb8

    ld hl, $5f8f
    call Call_000_3c49
    jr jr_012_5ebe

jr_012_5e8d:
    ld hl, $5f85
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $5f8a
    ld de, $5f8a
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $03
    ld [$d607], a
    ld [$da39], a
    jr jr_012_5ebe

jr_012_5eb8:
    ld hl, $5f94
    call Call_000_3c49

jr_012_5ebe:
    jp Jump_000_24d7


    ld [$4821], sp
    ld e, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$5421], sp
    ld e, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$6021], sp
    ld e, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$6c21], sp
    ld e, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$013e], sp
    ld [$cc3c], a
    ld hl, $5f24
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_012_5f21

    ld bc, $2901
    call Call_000_3e2e
    jp nc, Jump_012_5f76

    call Call_012_5f69
    ld a, $6d
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d7f6
    set 6, [hl]
    ld a, $04
    ld [$d607], a
    ld [$da39], a

jr_012_5f21:
    jp Jump_000_24d7


    rla
    ld e, [hl]
    ld c, c
    jr nz, jr_012_5f79

    ld [$013e], sp
    ld [$cc3c], a
    ld hl, $5f64
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_012_5f61

    ld bc, $2a01
    call Call_000_3e2e
    jp nc, Jump_012_5f76

    call Call_012_5f69
    ld a, $6e
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d7f6
    set 7, [hl]
    ld a, $04
    ld [$d607], a
    ld [$da39], a

jr_012_5f61:
    jp Jump_000_24d7


    rla
    ld a, c
    ld c, c
    jr nz, jr_012_5fb9

Call_012_5f69:
    ld hl, $5f6f
    jp Jump_000_3c49


    rla
    sub l
    ld c, c
    jr nz, jr_012_5f85

    dec c
    ld d, b

Jump_012_5f76:
    ld hl, $5f7f

jr_012_5f79:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    xor b
    ld c, c
    jr nz, @+$0f

    ld d, b

jr_012_5f85:
    rla
    call z, $2049
    ld d, b
    rla
    ld bc, $204a
    ld d, b
    rla
    ld de, $204a
    ld d, b
    rla
    scf
    ld c, d
    jr nz, jr_012_5fe9

    rla
    sub e
    ld c, d
    jr nz, jr_012_5faf

    ld d, b
    rla
    or e
    ld c, d
    jr nz, jr_012_5ff4

    rla
    or $4a
    jr nz, jr_012_5ff9

    rla
    add hl, bc
    ld c, e
    jr nz, @+$52

    rla

jr_012_5faf:
    dec sp
    ld c, e
    jr nz, jr_012_6003

    rla
    ld h, c
    ld c, e
    jr nz, @+$52

    rla

jr_012_5fb9:
    ld l, l
    ld c, e
    jr nz, jr_012_600d

    rla
    sbc [hl]
    ld c, e
    jr nz, @+$52

    rla
    bit 1, e
    jr nz, jr_012_6017

    rla
    sbc $4b
    jr nz, jr_012_601c

    rla
    ld c, $4c
    jr nz, @+$52

    rla
    add hl, sp
    ld c, h
    jr nz, jr_012_6026

    rla
    ld b, [hl]
    ld c, h
    jr nz, jr_012_602b

    inc bc
    inc b
    add hl, bc
    add hl, de
    ld bc, $113c
    dec d
    inc b
    inc a
    dec de
    rrca
    dec b
    inc a

jr_012_5fe9:
    rlca
    dec b
    ld b, $3c
    nop
    add hl, bc
    inc c
    inc c
    db $10
    rst $38
    db $d3

jr_012_5ff4:
    ld b, c
    ret nc

    ld [bc], a
    jr jr_012_600d

jr_012_5ff9:
    rrca
    rst $38
    ret nc

    ld b, d
    and $01
    jr jr_012_601b

    inc de
    rst $38

jr_012_6003:
    ret nc

    ld b, e
    and $02
    jr @+$11

    ld hl, $d1ff
    ld b, h

jr_012_600d:
    and $03
    jr jr_012_6026

    ld hl, $d2ff
    ld b, l
    and $04

jr_012_6017:
    ld a, $0a
    db $10
    rst $38

jr_012_601b:
    rst $38

jr_012_601c:
    ld b, $3e
    ld a, [bc]
    ld de, $ffff
    rlca
    dec a
    add hl, de
    dec e

jr_012_6026:
    rst $38
    rst $38
    adc b
    inc hl
    dec a

jr_012_602b:
    add hl, bc
    ld hl, $ffff
    adc c
    ret


    ld [hl], a
    rst $00
    add hl, bc
    add hl, de
    db $dd
    rst $00
    ld de, $5c15
    ret z

    dec de
    rrca
    ld d, e
    rst $00
    rlca
    dec b
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec d
    dec d
    cpl
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $2f
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    add hl, de
    add hl, de
    cpl
    ld h, [hl]
    dec e
    dec e
    dec e
    ld b, l
    add hl, de
    ld b, h
    ld e, $2f
    ld b, c
    ld b, d
    ld l, $40
    ld b, c
    ld b, d
    ld l, $2e
    add hl, de
    add hl, de
    cpl
    add hl, de
    dec a
    add hl, de
    inc d
    dec d
    add hl, de
    dec d
    ld d, $2f
    add hl, de
    ld a, [de]
    ld bc, $291c
    ld e, $01
    ld bc, $1919
    cpl
    inc sp
    inc sp
    inc sp
    inc e
    dec e
    add hl, hl
    dec hl
    ld a, [de]
    cpl
    add hl, de
    ld a, [de]
    ld a, $01
    ld bc, $0d01
    ld bc, $2e2e
    ld l, $2e
    ld l, $2f
    add hl, de
    add hl, de
    add hl, de
    inc e
    ld e, $2f
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld l, $2e
    ld bc, $0101
    cpl
    inc sp
    inc sp
    add hl, de
    inc sp
    inc sp
    cpl
    add hl, de
    add hl, de
    dec d
    dec d
    ld d, $14
    dec d
    dec d
    add hl, de
    jr nc, @+$03

    ld bc, $2e01
    ld l, $2e
    add hl, de
    ld l, $2e
    cpl
    add hl, de
    add hl, de
    ld b, h
    add hl, hl
    ld e, $1c
    add hl, hl
    ld b, l
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_60ff

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cpl
    dec a
    add hl, de
    ld c, b
    ld bc, $0101
    ld bc, $1949
    ld a, [de]
    ld bc, $0101
    jr @+$1b

    add hl, de
    inc sp
    inc sp
    inc sp
    cpl

jr_012_60ff:
    inc sp
    inc sp
    ld c, d
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld c, e
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_6127

    add hl, de
    cpl
    ld l, $2e
    ld l, $2e
    ld b, b
    ld b, c
    ld b, d
    ld l, $2f
    ld l, $2e
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_613b

    add hl, de
    cpl
    add hl, de
    add hl, de
    add hl, de

jr_012_6127:
    add hl, de
    inc e
    add hl, hl
    ld e, $19
    cpl
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_614f

    add hl, de
    cpl
    add hl, de
    add hl, de
    add hl, de

jr_012_613b:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cpl
    add hl, de
    inc l
    dec e
    ld e, $01
    ld bc, $1801
    add hl, de
    add hl, de
    cpl
    dec a
    add hl, de
    add hl, de

jr_012_614f:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cpl
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $1801
    add hl, de
    add hl, de
    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_012_619d

    jr c, @+$3a

    jr c, @+$3a

    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $1801
    add hl, de
    add hl, de
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $1c01
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_012_619d:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec c
    rrca
    ld c, b
    ld h, d
    cp b
    ld h, c
    or l
    ld h, c
    nop
    call c, $c361
    inc a
    inc a
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ret z

    ld h, c
    call $d261
    ld h, c
    rst $10
    ld h, c
    rla
    add hl, de
    ld d, a
    ld hl, $1750
    dec h
    ld d, a
    ld hl, $1750
    and e
    ld d, a
    ld hl, $1750
    db $ed
    ld d, a
    ld hl, $0050
    ld [$1400], sp
    nop
    jp c, Jump_000_1500

    ld bc, $00da
    ld a, [de]
    ld [bc], a
    jp c, Jump_000_1b00

    inc bc
    jp c, $1d16

    ld [bc], a
    call c, Call_000_1d17
    inc bc
    call c, Call_000_0303
    nop
    sbc $0b
    dec bc
    nop
    rst $18
    inc b
    inc c
    inc c
    dec b
    inc bc
    ld de, $0406
    ld a, [de]
    rlca
    ld d, $18
    ld [$3d04], sp
    jr jr_012_621b

    rst $38
    rst $38
    add c
    ld de, $0b3d
    dec c
    rst $38
    rst $38
    add d
    add sp, $3d

jr_012_621b:
    ld d, $16
    rst $38
    rst $38
    add e
    ld [hl], $3d
    dec bc
    rla
    rst $38
    rst $38
    add h
    ld b, b
    ld [$00c7], sp
    inc d
    ld [$00c7], sp
    dec d
    dec bc
    rst $00
    nop
    ld a, [de]
    dec bc
    rst $00
    nop
    dec de
    di
    rst $00
    ld d, $1d
    di
    rst $00
    rla
    dec e
    inc d
    rst $00
    inc bc
    inc bc
    ld l, h
    rst $00
    dec bc
    dec bc
    ld [bc], a
    dec de
    dec de
    ld [bc], a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld [bc], a
    ld e, b
    ld [bc], a
    ld [bc], a
    ld e, b
    ld [bc], a
    dec hl
    add hl, de
    inc e
    ld a, [hl+]
    dec de
    dec de
    dec de
    dec de
    inc sp
    dec de
    dec de
    dec de
    ld a, a
    add hl, hl
    ld a, [hl]
    dec hl
    dec de
    dec de
    ld a, [hl+]
    dec de
    ld l, $1b
    dec de
    dec de
    add hl, hl
    dec de
    dec de
    ld a, a
    ld hl, $2b7e
    dec de
    dec de
    dec de
    dec de
    inc a
    dec a
    dec a
    ld a, $29
    dec de
    dec de
    ld a, a
    add hl, hl
    ld a, [hl]
    dec hl
    ld l, $1b
    dec de
    dec de
    ld b, h
    ld b, l
    ccf
    ld b, d
    dec de
    add hl, hl
    add hl, hl
    ld a, a
    dec de
    ld a, [hl]
    ld a, [hl]
    ld e, h
    ld d, c
    ld d, c
    ld d, d
    add hl, de
    inc e
    ld b, b
    ld b, d
    dec de
    dec de
    dec de
    ld a, a
    dec de
    ld a, [hl]
    ld a, [hl]
    ld e, d
    dec l
    dec l
    ld e, e
    dec de
    ld hl, $4240
    dec de
    dec de
    dec de
    ld a, a
    add hl, hl
    ld a, [hl]
    ld [bc], a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld b, b
    ld c, e
    dec a
    dec a
    ld a, $1b
    dec de
    ld a, [hl]
    ld a, a
    dec de
    inc a
    dec a
    dec a
    dec a
    dec a
    ld c, d
    ld b, e
    ld b, l
    ld d, e
    ld b, [hl]
    dec de
    inc l
    ld a, [hl]
    ld a, a
    inc hl
    ld b, h
    ld b, a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, [hl]
    ld a, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $7f01
    inc l
    dec de
    inc l
    dec de
    ld a, [hl]
    ld a, a
    dec de
    dec h
    ld bc, $2401
    dec h
    inc h
    dec de
    ld a, a
    dec de
    dec de
    ld hl, $571b
    ld [bc], a
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld a, h
    ld a, l
    ld a, h
    ld a, h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    inc d
    inc b
    inc b
    ld a, a
    ld h, e
    ld a, [de]
    ld h, e
    rla
    ld h, e
    nop
    ld h, l
    ld h, e
    jp Jump_000_3c3c


    inc e
    ld h, e
    ld [$57fa], sp
    ret c

    bit 0, a
    jr nz, jr_012_6347

    ld hl, $6350
    call Call_000_3c49
    ld bc, $c601
    call Call_000_3e2e
    jr nc, jr_012_633f

    ld hl, $6355
    call Call_000_3c49
    ld hl, $d857
    set 0, [hl]
    jr jr_012_634d

jr_012_633f:
    ld hl, $6360
    call Call_000_3c49
    jr jr_012_634d

jr_012_6347:
    ld hl, $635b
    call Call_000_3c49

jr_012_634d:
    jp Jump_000_24d7


    rla
    and h
    ld e, b
    ld hl, $1750
    ld b, e
    ld e, c
    ld hl, $500b
    rla
    ld d, a
    ld e, c
    ld hl, $1750
    ld [bc], a
    ld e, d
    ld hl, $1750
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $db
    rlca
    inc bc
    ld b, $db
    nop
    ld bc, $0727
    rlca
    rst $38
    ret nc

    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld d, $12
    inc de
    ld d, $02
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    inc c
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
