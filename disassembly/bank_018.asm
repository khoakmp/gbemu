; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    scf
    dec d
    ld [bc], a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [bc], a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld c, c
    scf
    dec sp
    ld [bc], a
    dec de
    dec de
    dec de
    add hl, hl
    ld [bc], a
    dec de
    add hl, hl
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    add hl, hl
    dec sp
    scf
    dec sp
    ld [bc], a
    add hl, hl
    dec sp
    scf
    dec de
    ld [bc], a
    dec de
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    ld bc, $0101
    dec de
    add hl, hl
    dec de
    dec de
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $0607
    ld bc, $011b
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec d
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $3707
    add hl, hl
    dec de
    dec de
    dec sp
    ld [bc], a
    ld [bc], a
    scf
    add hl, hl
    dec de
    dec de
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld b, $01
    dec de
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    scf
    dec de
    ld hl, $1b29
    dec de
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld b, $01
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, hl
    ld bc, $0101
    ld bc, $0721
    ld [bc], a
    ld [bc], a
    ld b, $1b
    dec de
    add hl, hl
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld bc, $011b
    ld bc, $0101
    inc d
    ld bc, $0101
    ld d, $1b
    ld bc, $0701
    ld b, $01
    ld bc, $1b1b
    dec de
    dec de
    dec de
    jr jr_018_418a

    dec de
    dec de
    dec de
    dec de
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec de
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_018_418a:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    ld e, b
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $090d
    inc bc
    inc c
    dec c
    inc b
    dec b
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    rrca
    ld [bc], a
    inc c
    ld bc, $0e0e
    ld bc, $0101
    ld bc, $0d01
    add hl, bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    dec c
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc c
    dec c
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    ld bc, $0e0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $01
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc l
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, $18
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_4304

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    inc e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_4304:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    ld bc, $1801
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_4342

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    jr jr_018_4356

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_4342:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl

jr_018_4356:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $0101
    ld bc, $3e01
    jr jr_018_43b2

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_43b2:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    add hl, de
    scf
    jr c, jr_018_43cf

    inc c
    inc c
    scf
    jr c, jr_018_43d4

    inc c
    inc c
    scf
    jr c, @+$3d

    add hl, sp
    inc c

jr_018_43cf:
    inc c
    inc c
    dec sp
    add hl, sp
    inc c

jr_018_43d4:
    inc c
    inc c
    dec sp
    add hl, sp
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    scf
    jr c, jr_018_440b

    inc c
    inc c
    scf
    jr c, jr_018_4410

    inc c
    inc c
    scf
    jr c, jr_018_4444

    add hl, sp
    inc c

jr_018_440b:
    inc c
    inc c
    dec sp
    add hl, sp
    inc c

jr_018_4410:
    inc c
    inc c
    dec sp
    add hl, sp
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    rrca
    add hl, bc
    ld a, [bc]
    adc h
    ld b, h
    cpl
    ld b, h
    inc l
    ld b, h
    nop
    ld d, d
    ld b, h
    jp Jump_000_3c3c


    add hl, sp
    ld b, h
    ld a, $44
    ld b, e
    ld b, h
    ld c, b
    ld b, h
    ld c, l
    ld b, h
    rla
    ld a, a
    ld d, h
    ld h, $50
    rla
    cp h
    ld d, h
    ld h, $50
    rla

jr_018_4444:
    and $54
    ld h, $50
    rla
    inc h
    ld d, l
    ld h, $50
    rla
    ld b, [hl]
    ld d, l
    ld h, $50
    ld bc, $1103
    ld a, [bc]
    ld bc, $11ff
    dec bc
    ld bc, $09ff
    ld [de], a
    ld bc, $008f
    dec b
    ld a, [hl+]
    ld de, $ff13
    pop de
    ld bc, $0c1c
    ld a, [bc]
    rst $38
    rst $38
    ld [bc], a
    inc [hl]
    db $10
    inc c
    rst $38
    rst $38
    inc bc
    dec c
    dec bc
    ld de, $ffff
    inc b
    add hl, de
    dec bc
    dec d
    rst $38
    jp nc, Jump_018_7e05

    rst $00
    ld de, $7e0a
    rst $00
    ld de, $420b
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $0610
    ld c, $0e
    ld c, $06
    ld [$0101], sp
    inc c
    add hl, sp
    ld c, $0e
    ld c, $0e
    ld c, $20
    dec c
    ld bc, $0e0a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rlca
    ld bc, $0e39
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [de], a
    ld bc, $0e1c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld e, $01
    inc c
    ld c, $0e
    ld c, $0e
    dec h
    ccf
    ccf
    dec c
    ld bc, $1401
    ld c, $0e
    ld c, $25
    ld c, $0b
    ld bc, $0101
    ld bc, $1c05
    ld c, $1e
    dec b
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    ld h, [hl]
    ld b, [hl]
    db $db
    ld b, l
    ld a, [c]
    ld b, h
    nop
    ld b, [hl]
    ld b, [hl]
    call Call_000_3c3c
    ld hl, $4509
    ld a, [$d62b]
    jp Jump_000_3d97


Jump_018_44fe:
    xor a
    ld [$cd6b], a
    ld [$d62b], a
    ld [$da39], a
    ret


    rrca
    ld b, l
    ld h, e
    ld b, l
    cp e
    ld b, l
    ld a, [$d764]
    bit 7, a
    ret nz

    ld hl, $455e
    call Call_000_34bf
    ret nc

    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld c, $02
    ld a, $de
    call Call_000_23a1
    ld hl, $d764
    res 6, [hl]
    ld a, [$cd3d]
    cp $01
    ld a, $08
    ld b, $00
    jr nz, jr_018_4544

    ld hl, $d764
    set 6, [hl]
    ld a, $02
    ld b, $0c

jr_018_4544:
    ld [$d528], a
    ld a, $01
    ldh [$8c], a
    ld a, b
    ldh [$8d], a
    call Call_000_34a6
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    xor a
    ldh [$b4], a
    ldh [$b3], a
    ret


    dec b
    rrca
    ld b, $0e
    rrca
    ld a, [$d057]
    cp $ff
    jp z, Jump_018_44fe

    ld a, $f0
    ld [$cd6b], a
    ld hl, $d764
    set 7, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld de, $45b2
    ld a, [$d764]
    bit 6, a
    jr nz, jr_018_4589

    ld de, $45a9

jr_018_4589:
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld b, $02
    ld hl, $5b47
    call Call_000_35d6
    ld a, $02
    ld [$d62b], a
    ld [$da39], a
    ret


    ret nz

    nop
    nop
    ret nz

    nop
    nop
    ret nz

    ret nz

    rst $38
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $38
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    xor a
    ld [$cd6b], a
    call Call_000_2307
    ld a, $00
    ld [$d62b], a
    ld [$da39], a
    ret


    rst $18
    ld b, l
    ld b, c
    ld b, [hl]
    ld [$64fa], sp
    rst $10
    bit 7, a
    jr z, jr_018_45ef

    ld hl, $463c
    call Call_000_3c49
    jr jr_018_462a

jr_018_45ef:
    ld hl, $462d
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $4632
    ld de, $4637
    call Call_000_3354
    ld a, $f2
    ld [$d059], a
    ld a, [$d715]
    cp $b1
    jr nz, jr_018_4615

    ld a, $04
    jr jr_018_461f

jr_018_4615:
    cp $99
    jr nz, jr_018_461d

    ld a, $05
    jr jr_018_461f

jr_018_461d:
    ld a, $06

jr_018_461f:
    ld [$d05d], a
    ld a, $01
    ld [$d62b], a
    ld [$da39], a

jr_018_462a:
    jp Jump_000_24d7


    rla
    ld a, e
    ld d, l
    ld h, $50
    rla
    push hl
    ld d, l
    ld h, $50
    rla
    inc d
    ld d, [hl]
    ld h, $50
    rla
    ld d, a
    ld d, [hl]
    ld h, $50
    rla
    ld a, [de]
    ld d, a
    ld h, $50
    ld bc, $0902
    inc bc
    nop
    sub b
    add hl, bc
    ld [de], a
    ld [bc], a
    adc [hl]
    nop
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld [de], a
    rst $38
    rst $38
    ld bc, $0b19
    rlca
    rst $38
    db $d3
    ld [bc], a
    ld a, [hl-]
    rst $00
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld h, b
    ld e, e
    ld h, c
    inc bc
    ld bc, $0101
    ld bc, $5b10
    ld d, c
    ld c, $0e
    ld b, $08
    ld bc, $0c01
    ld e, [hl]
    ld c, h
    ld [hl], $0e
    ld [hl], $36
    ld e, a
    dec c
    ld bc, $0e0a
    ld [hl], $52
    ld c, h
    ld c, h
    ld [hl], $0e
    rlca
    ld bc, $0e15
    ld d, d
    ld d, d
    ld c, $52
    ld d, d
    ld c, $16
    ld bc, $0e1c
    ld [hl], $52
    ld c, $0e
    ld [hl], $0e
    ld e, $01
    inc c
    ld d, a
    ld d, d
    ld d, d
    ld d, d
    ld c, $4f
    ld e, b
    dec c
    ld bc, $1401
    dec e
    ld [hl], $36
    ld [hl], $1d
    dec bc
    ld bc, $0101
    ld bc, $5305
    ld d, [hl]
    ld d, h
    dec b
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    sub b
    ld b, a
    push hl
    ld b, [hl]
    call z, Call_000_0046
    ld e, l
    ld b, a
    call Call_000_3c3c
    ld hl, $46ed
    ld de, $46df
    ld a, [$d62c]
    call Call_000_3160
    ld [$d62c], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld [de], a
    ld b, a
    inc e
    ld b, a
    ld h, $47
    db $f4
    inc h
    ld bc, $6520
    rst $10
    jr nc, jr_018_473a

    ld a, [hl-]
    ld b, a
    dec [hl]
    ld b, a
    dec [hl]
    ld b, a
    ld [bc], a
    jr nc, jr_018_4761

    rst $10
    ccf
    ld b, a
    ld c, c
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    inc bc
    jr nz, jr_018_476d

    rst $10
    ld c, [hl]
    ld b, a
    ld e, b
    ld b, a
    ld d, e
    ld b, a
    ld d, e
    ld b, a
    rst $38
    ld [$ed21], sp
    ld b, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$f921], sp
    ld b, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$0521], sp
    ld b, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    db $76
    ld d, a
    ld h, $50
    rla
    sub h
    ld d, a
    ld h, $50

jr_018_473a:
    rla
    and h
    ld d, a
    ld h, $50
    rla
    sub $57
    ld h, $50
    rla
    ld [$2657], a
    ld d, b
    rla
    ld bc, $2658
    ld d, b
    rla
    ld a, [de]
    ld e, b
    ld h, $50
    rla
    ld sp, $2658
    ld d, b
    rla
    ld c, c
    ld e, b
    ld h, $50
    ld bc, $0902
    inc bc

jr_018_4761:
    nop
    adc a
    add hl, bc
    ld [de], a
    ld bc, $0091
    inc b
    add hl, de
    rlca
    db $10
    rst $38

jr_018_476d:
    jp nc, $f541

    dec b
    add hl, de
    inc c
    dec c
    rst $38
    ret nc

    ld b, d
    push af
    ld b, $19
    ld de, $ff0e
    ret nc

    ld b, e
    push af
    ld [$053d], sp
    db $10
    rst $38
    rst $38
    add h
    dec e
    ld a, [hl-]
    rst $00
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $5b10
    ld d, c
    ld c, $0e
    ld b, $08
    ld bc, $0c01
    add hl, sp
    inc de
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, b
    dec c
    ld bc, $0e0a
    ld d, b
    ld c, $0e
    ld c, $13
    rla
    rlca
    ld bc, $0e11
    ld d, b
    ld c, $52
    ld c, $51
    ld c, $12
    ld bc, $0e1c
    ld d, b
    ld c, $0e
    ld c, $51
    ld c, $1e
    ld bc, $390c
    ld c, [hl]
    ld c, $4c
    ld c, h
    ld c, l
    ld c, h
    dec c
    ld bc, $1401
    ld d, [hl]
    ld c, $0e
    ld c, $56
    dec bc
    ld bc, $0101
    ld bc, $5305
    ld d, [hl]
    ld d, h
    dec b
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    call z, Call_000_0f48
    ld c, b
    or $47
    nop
    adc e
    ld c, b
    call Call_000_3c3c
    ld hl, $481b
    ld de, $4809
    ld a, [$d62d]
    call Call_000_3160
    ld [$d62d], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld b, b
    ld c, b
    ld c, d
    ld c, b
    ld d, h
    ld c, b
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $6620
    rst $10
    ld e, [hl]
    ld c, b
    ld l, b
    ld c, b
    ld h, e
    ld c, b
    ld h, e
    ld c, b
    ld [bc], a
    jr nz, jr_018_4890

    rst $10
    ld l, l
    ld c, b
    ld [hl], a
    ld c, b
    ld [hl], d
    ld c, b
    ld [hl], d
    ld c, b
    inc bc
    jr nz, jr_018_489c

    rst $10
    ld a, h
    ld c, b
    add [hl]
    ld c, b
    add c
    ld c, b
    add c
    ld c, b
    rst $38
    ld [$1b21], sp
    ld c, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$2721], sp
    ld c, b
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$3321], sp
    ld c, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld l, c
    ld e, b
    ld h, $50
    rla
    ld a, l
    ld e, b
    ld h, $50
    rla
    sub d
    ld e, b
    ld h, $50
    rla
    or b
    ld e, b
    ld h, $50
    rla
    call z, Call_000_2658
    ld d, b
    rla
    db $d3
    ld e, b
    ld h, $50
    rla
    cp $58
    ld h, $50
    rla
    ld d, $59
    ld h, $50
    rla
    daa
    ld e, c
    ld h, $50
    ld bc, $0902
    inc bc
    nop

jr_018_4890:
    sub d
    add hl, bc
    ld [de], a
    ld bc, $0090
    ld b, $19
    ld c, $09
    rst $38
    db $d3

jr_018_489c:
    ld b, c
    push af
    add hl, bc
    add hl, de
    dec bc
    inc de
    rst $38
    ret nc

    ld b, d
    push af
    ld a, [bc]
    add hl, de
    db $10
    ld [de], a
    rst $38
    jp nc, $f543

    inc c
    dec a
    ld c, $10
    rst $38
    rst $38
    add h
    ld d, d
    dec a
    ld c, $0d
    rst $38
    rst $38
    add l
    ld c, $3d
    inc d
    db $10
    rst $38
    rst $38
    add [hl]
    inc hl
    ld a, [hl-]
    rst $00
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $5b09
    ld d, c
    ld c, $0e
    ld b, $08
    ld bc, $0c01
    ld e, [hl]
    inc de
    rla
    ld d, c
    ld c, a
    ld c, h
    ld e, a
    dec c
    ld bc, $0e0a
    inc de
    rla
    ld h, [hl]
    ld c, a
    ld c, [hl]
    ld c, l
    rlca
    ld bc, $4f15
    ld c, $4f
    ld c, l
    ld c, a
    ld c, $0e
    ld d, $01
    inc e
    ld c, $0e
    ld h, a
    ld c, [hl]
    ld c, a
    inc de
    ld h, a
    ld e, $01
    inc c
    add hl, sp
    ld h, [hl]
    inc de
    ld c, $13
    rla
    jr nz, @+$0f

    ld bc, $1401
    dec e
    rla
    ld c, [hl]
    ld c, a
    dec e
    dec bc
    ld bc, $0101
    ld bc, $5305
    ld d, l
    ld e, $05
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    adc c
    ld c, d
    sbc e
    ld c, c
    ld [hl-], a
    ld c, c
    nop
    ld c, b
    ld c, d
    call Call_000_3c3c
    ld hl, $49a9
    ld de, $4945
    ld a, [$d62e]
    call Call_000_3160
    ld [$d62e], a
    ret


    ld c, e
    ld c, c
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld hl, $4992
    call Call_000_34bf
    jr c, jr_018_4960

    ld hl, $d72e
    res 4, [hl]
    ld hl, $d767
    res 7, [hl]
    jp Jump_000_3219


jr_018_4960:
    ld hl, $d767
    bit 7, [hl]
    set 7, [hl]
    ret nz

    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d72e
    set 4, [hl]
    ld a, $07
    call Call_000_3e6d
    call Call_000_20d8
    call Call_000_3dd7
    call Call_000_3dd7
    call Call_000_20f6
    ld a, $07
    ldh [$8c], a
    call Call_000_2920
    xor a
    ld [$cd6b], a
    ret


    ld [$080a], sp
    dec bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    rst $38
    jp c, $df49

    ld c, c
    ld hl, sp+$49
    ld de, $2a4a
    ld c, d
    db $f4
    inc h
    ld b, e
    ld c, d
    ld [bc], a
    jr nz, @+$69

    rst $10
    jp hl


    ld c, c
    di
    ld c, c
    xor $49
    xor $49
    inc bc
    jr nc, @+$69

    rst $10
    ld [bc], a
    ld c, d
    inc c
    ld c, d
    rlca
    ld c, d
    rlca
    ld c, d
    inc b
    jr nz, @+$69

    rst $10
    dec de
    ld c, d
    dec h
    ld c, d
    jr nz, jr_018_4a15

    jr nz, @+$4c

    dec b
    jr nz, jr_018_4a37

    rst $10
    inc [hl]
    ld c, d
    ld a, $4a
    add hl, sp
    ld c, d
    add hl, sp
    ld c, d
    rst $38
    rla
    ld e, b
    ld e, c
    ld h, $50
    ld [$a921], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sbc a
    ld e, c
    ld h, $50
    rla
    cp h
    ld e, c
    ld h, $50
    rla
    jp $2659


    ld d, b
    ld [$b521], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    call c, $2659
    ld d, b
    rla
    ld sp, hl
    ld e, c
    ld h, $50
    rla
    inc c
    ld e, d
    ld h, $50
    ld [$c121], sp
    ld c, c

jr_018_4a15:
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, $5a
    ld h, $50
    rla
    jr z, jr_018_4a7d

    ld h, $50
    rla
    dec l
    ld e, d
    ld h, $50
    ld [$cd21], sp
    ld c, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld b, h
    ld e, d

jr_018_4a37:
    ld h, $50
    rla
    ld d, a
    ld e, d
    ld h, $50
    rla
    ld e, [hl]
    ld e, d
    ld h, $50
    rla
    adc e
    ld e, d
    ld h, $50
    ld bc, $0902
    inc bc
    nop
    sub c
    add hl, bc
    ld [de], a
    nop
    sub e
    nop
    ld b, $19
    inc c
    db $10
    rst $38
    rst $38
    ld bc, $0b19
    dec d
    rst $38
    jp nc, $f542

    ld c, $19
    rlca
    ld [de], a
    rst $38
    jp nc, $f543

    db $10
    add hl, de
    ld c, $0a
    rst $38
    db $d3
    ld b, h
    push af
    ld de, $1419
    dec c
    rst $38
    db $d3
    ld b, l
    push af
    ld [de], a
    dec a
    ld [de], a
    ld a, [bc]

jr_018_4a7d:
    rst $38
    rst $38
    add [hl]
    ld sp, $c73a
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $5b10
    ld h, l
    ld [hl], $36
    ld b, $08
    ld bc, $0c01
    ld d, a
    ld l, c
    ld c, h
    ld [hl], $4c
    ld l, d
    ld e, b
    dec c
    ld bc, $363a
    ld [hl], $4f
    ld c, a
    ld [hl], $36
    ld c, $07
    ld bc, $5011
    ld d, d
    ld [hl], $33
    ld [hl], $52
    ld d, c
    ld [de], a
    ld bc, $501c
    ld [hl], $36
    ld c, a
    ld c, h
    ld [hl], $0e
    ld e, $01
    inc c
    ld e, [hl]
    ld h, a
    ld c, a
    ld c, $4f
    ld l, b
    ld e, a
    dec c
    ld bc, $1401
    dec e
    ld [hl], $36
    ld [hl], $1d
    dec bc
    ld bc, $0101
    ld bc, $1c05
    dec e
    ld e, $05
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    sub l
    ld c, h
    or c
    ld c, e
    rst $28
    ld c, d
    nop
    ld e, e
    ld c, h
    call Call_000_3c3c
    ld hl, $4bbf
    ld de, $4b0d
    ld a, [$d62f]
    call Call_000_3160
    ld [$d62f], a
    ret


Jump_018_4b02:
    xor a
    ld [$cd6b], a
    ld [$d62f], a
    ld [$da39], a
    ret


    rla
    ld c, e
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    and c
    ld c, e
    ld c, b
    ld c, e
    ld a, [$d768]
    bit 7, a
    jp nz, Jump_000_3219

    ld hl, $4b45
    call Call_000_34bf
    jp nc, Jump_000_3219

    xor a
    ldh [$b4], a
    ld a, $06
    ldh [$8c], a
    call Call_000_2920
    ld a, $91
    ld [$d059], a
    ld a, $1e
    ld [$d127], a
    ld a, $04
    ld [$d62f], a
    ld [$da39], a
    ret


    db $10
    ld a, [bc]
    rst $38
    ld a, [$d057]
    cp $ff
    jp z, Jump_018_4b02

    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72d]
    bit 6, a
    ret nz

    call Call_000_2429
    ld a, $f0
    ld [$cd6b], a
    ld a, [$cf0b]
    and a
    jr nz, jr_018_4b82

    ld hl, $d768
    set 7, [hl]
    ld a, $07
    ldh [$8c], a
    call Call_000_2920
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d62f], a
    ld [$da39], a
    ret


jr_018_4b82:
    ld a, $01
    ld [$cd38], a
    ld a, $10
    ld [$ccd3], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ld hl, $d730
    set 7, [hl]
    ld a, $03
    ld [$d62f], a
    ld [$da39], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$d62f], a
    ld [$da39], a
    ret


    db $e4
    ld c, e
    xor $4b
    ld hl, sp+$4b
    db $f4
    inc h
    db $f4
    inc h
    ld d, [hl]
    ld c, h
    ld [bc], a
    ld c, h
    ld bc, $6830
    rst $10
    add hl, hl
    ld c, h
    inc sp
    ld c, h
    ld l, $4c
    ld l, $4c
    ld [bc], a
    jr nc, jr_018_4c36

    rst $10
    jr c, @+$4e

    ld b, d
    ld c, h
    dec a
    ld c, h
    dec a
    ld c, h
    inc bc
    jr nz, jr_018_4c42

    rst $10
    ld b, a
    ld c, h
    ld d, c
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    rst $38
    ld [$bf21], sp
    ld c, e
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$cb21], sp
    ld c, e
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$d721], sp
    ld c, e
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$1f21], sp
    ld c, h
    call Call_000_3c49
    ld a, $91
    call Call_000_13d0
    call Call_000_3748
    ld c, $1e
    call Call_000_3739
    ld hl, $4c24
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ret z

    ld e, d
    ld h, $50
    rla
    db $fc
    ld e, d
    ld h, $50
    rla
    jr c, jr_018_4c87

    ld h, $50
    rla
    ld c, a
    ld e, e
    ld h, $50
    rla
    ld d, a
    ld e, e

jr_018_4c36:
    ld h, $50
    rla
    ld [hl], d
    ld e, e
    ld h, $50
    rla
    add d
    ld e, e
    ld h, $50

jr_018_4c42:
    rla
    sbc c
    ld e, e
    ld h, $50
    rla
    add $5b
    ld h, $50
    rla
    db $e4
    ld e, e
    ld h, $50
    rla
    db $eb
    ld e, e
    ld h, $50
    rla
    ld bc, $265c
    ld d, b
    ld bc, $0902
    ld [de], a
    ld bc, $1092
    add hl, bc
    nop
    sub h
    nop
    dec b
    add hl, de
    ld c, $10
    rst $38
    db $d3
    ld b, c
    push af
    inc de
    add hl, de
    add hl, bc
    dec c
    rst $38
    ret nc

    ld b, d
    push af
    inc d
    add hl, de
    add hl, bc
    inc d
    rst $38
    jp nc, $f543

    dec d
    dec a
    inc c
    ld a, [bc]
    rst $38
    rst $38
    add h
    jr z, jr_018_4cc4

jr_018_4c87:
    ld [de], a
    ld [de], a
    rst $38
    rst $38
    add l
    ld l, $42
    rst $00
    add hl, bc
    ld [de], a
    ld a, l
    rst $00
    db $10
    add hl, bc
    ld bc, $0101
    inc bc
    ld h, b
    ld e, e
    ld h, c
    inc bc
    ld bc, $0101
    ld bc, $5d10
    ld b, $36
    ld [hl], $06
    ld [$0101], sp
    inc c
    ld e, [hl]
    ld c, [hl]
    ld c, h
    ld [hl], $52
    ld [hl], $5f
    dec c
    ld bc, $360a
    ld [hl], $36
    ld [hl], $52
    ld [hl], $4c
    rlca
    ld bc, $525a
    ld d, b
    ld c, a
    ld c, a
    ld c, h

jr_018_4cc4:
    ld [hl], $36
    ld d, $01
    inc e
    ld c, a
    ld [hl], $4c
    ld c, h
    ld c, a
    rla
    ld c, a
    ld e, $01
    inc c
    ld d, a
    ld [hl], $4f
    ld [hl], $4f
    ld d, c
    ld e, b
    dec c
    ld bc, $1401
    dec e
    ld c, a
    ld [hl], $52
    dec e
    dec bc
    ld bc, $0101
    ld bc, $3005
    dec e
    ld e, $05
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rrca
    add hl, bc
    ld a, [bc]
    jr nz, jr_018_4d4d

    ccf
    ld c, [hl]
    dec b
    ld c, l
    nop
    or $4e
    call Call_000_3c3c
    ld hl, $4e47
    ld de, $4d23
    ld a, [$d630]
    call Call_000_3160
    ld [$d630], a
    ret


Jump_018_4d18:
    xor a
    ld [$cd6b], a
    ld [$d630], a
    ld [$da39], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    dec l
    ld c, l
    ld d, [hl]
    ld c, l
    add [hl]
    ld c, l
    ld hl, $cd60
    res 0, [hl]
    ld a, [$d057]
    cp $ff
    jp z, Jump_018_4d18

    call Call_000_3275
    ld a, $f0
    ld [$cd6b], a
    ld a, [$cf13]
    ldh [$8c], a
    call Call_000_2920
    call Call_018_4db6

jr_018_4d4d:
    ld a, $03
    ld [$d630], a
    ld [$da39], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    ld hl, $d5ce
    ld a, [$cf13]
    ld b, a

jr_018_4d63:
    ld a, [hl+]
    cp b
    ld a, [hl+]
    jr nz, jr_018_4d63

    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    xor a
    ld [$cd6b], a
    ld [$cf13], a
    ld [$cc55], a
    ld [$da38], a
    ld a, $00
    ld [$d630], a
    ld [$da39], a
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, $43
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $04
    ld [$c109], a
    ld a, $95
    ldh [$8b], a
    ld a, $01
    ld [$d42f], a
    ld a, $04
    ld [$d365], a
    ld hl, $d72d
    set 3, [hl]
    ld a, $00
    ld [$d630], a
    ld [$da39], a
    ret


Call_018_4db6:
    ld hl, $4de3
    ld a, [$cf13]
    dec a
    swap a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [$d361]
    ld b, a
    ld a, [$d362]
    ld c, a

jr_018_4dcb:
    ld a, [hl+]
    cp b
    jr nz, jr_018_4dde

    ld a, [hl+]
    cp c
    jr nz, jr_018_4ddf

    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$cf13]
    ldh [$8c], a
    jp Jump_000_363a


jr_018_4dde:
    inc hl

jr_018_4ddf:
    inc hl
    inc hl
    jr jr_018_4dcb

    inc c
    add hl, bc
    inc de
    ld c, [hl]
    dec bc
    ld a, [bc]
    dec de
    ld c, [hl]
    dec bc
    dec bc
    ld [hl+], a
    ld c, [hl]
    dec bc
    inc c
    ld [hl+], a
    ld c, [hl]
    ld a, [bc]
    inc c
    jr z, jr_018_4e45

    add hl, bc
    dec bc
    jr nc, @+$50

    add hl, bc
    ld a, [bc]
    ld [hl+], a
    ld c, [hl]
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld c, [hl]
    ld [$3709], sp
    ld c, [hl]
    rlca
    ld a, [bc]
    ld [hl+], a
    ld c, [hl]
    rlca
    dec bc
    ld [hl+], a
    ld c, [hl]
    rlca
    inc c
    ld [hl+], a
    ld c, [hl]
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld l, h
    ld c, [hl]
    db $76
    ld c, [hl]
    add b
    ld c, [hl]

jr_018_4e45:
    adc d
    ld c, [hl]
    ld bc, $6930
    rst $10
    ret


    ld c, [hl]
    db $d3
    ld c, [hl]
    adc $4e
    adc $4e
    ld [bc], a
    jr nc, @+$6b

    rst $10
    ret c

    ld c, [hl]
    ld [c], a
    ld c, [hl]
    db $dd
    ld c, [hl]
    db $dd
    ld c, [hl]
    inc bc
    jr nc, @+$6b

    rst $10
    rst $20
    ld c, [hl]
    pop af
    ld c, [hl]
    db $ec
    ld c, [hl]
    db $ec
    ld c, [hl]
    rst $38
    ld [$4721], sp
    ld c, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$5321], sp
    ld c, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$5f21], sp
    ld c, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$c421], sp
    ld c, [hl]
    call Call_000_3c49
    ld hl, $d7e0
    set 7, [hl]
    ld hl, $d769
    set 7, [hl]
    ld a, $44
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $17
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $18
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $04
    ld [$d630], a
    ld [$da39], a
    jp Jump_000_24d7


    rla
    ld a, [de]
    ld e, h
    ld h, $50
    rla
    ld sp, $265d
    ld d, b
    rla
    ld d, [hl]
    ld e, l
    ld h, $50
    rla
    ld h, d
    ld e, l
    ld h, $50
    rla
    add b
    ld e, l
    ld h, $50
    rla
    pop hl
    ld e, l
    ld h, $50
    rla
    di
    ld e, l
    ld h, $50
    rla
    inc sp
    ld e, [hl]
    ld h, $50
    rla
    ld d, d
    ld e, [hl]
    ld h, $50
    rla
    ld l, d
    ld e, [hl]
    ld h, $50
    ld bc, $1001
    add hl, bc
    ld bc, $0093
    inc b
    jr @+$11

    dec c
    rst $38
    db $d3
    ld b, c
    and $13
    jr @+$0f

    db $10
    rst $38
    jp nc, $e642

    inc d
    jr jr_018_4f1b

    dec c
    rst $38
    db $d3
    ld b, e
    and $15
    ld d, $07
    ld c, $ff
    ret nc

jr_018_4f1b:
    inc b
    ld a, l
    rst $00
    db $10
    add hl, bc
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0210
    ld l, h
    ld c, $6d
    ld [bc], a
    ld [$0101], sp
    inc c
    ld [bc], a
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    ld [bc], a
    dec c
    ld bc, $0202
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    dec [hl]
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $020c
    ld [bc], a
    inc e
    ld c, $1e
    ld [bc], a
    ld [bc], a
    dec c
    ld bc, $1401
    ld [bc], a
    ld [bc], a
    ld c, $02
    ld [bc], a
    dec bc
    ld bc, $0101
    ld bc, $3105
    dec e
    ld e, $05
    ld bc, $1201
    inc b
    ld a, [bc]
    sbc $4f
    adc c
    ld c, a
    add [hl]
    ld c, a
    nop
    sbc [hl]
    ld c, a
    jp Jump_000_3c3c


    adc a
    ld c, a
    sub h
    ld c, a
    sbc c
    ld c, a
    rla
    ld [hl], d
    ld b, [hl]
    daa
    ld d, b
    rla
    call $2746
    ld d, b
    rla
    ld d, d
    ld b, a
    daa
    ld d, b
    rrca
    ld b, $07
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    rlca
    db $10
    ld bc, $07ff
    ld de, $ff01
    ld bc, $000c
    ld a, e
    ld bc, $0001
    ld a, a
    ld [bc], a
    inc b
    dec bc
    ld [bc], a
    ld bc, $030e
    ld bc, $072a
    inc c
    rst $38
    ret nc

    ld bc, $c72a
    rlca
    ld [bc], a
    ld a, [hl+]
    rst $00
    rlca
    inc bc
    ld sp, $07c7
    db $10
    ld sp, $07c7
    ld de, $c6ff
    ld bc, $f90c
    add $01
    ld bc, $0d0c

jr_018_4fe0:
    ld bc, $0118
    add hl, de
    ld [bc], a
    dec h
    rlca
    ld bc, $0b0b
    dec bc
    inc d
    dec bc
    rla
    dec bc
    dec bc
    ld [de], a
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec d
    ld de, $0b26
    dec bc
    dec bc
    add hl, bc
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$210b], sp
    jr nc, jr_018_4fe0

    set 6, [hl]
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
    ld c, $0d
    ld hl, $c3a0
    call Call_000_1922
    call Call_000_2429
    call Call_018_50c2
    ld hl, $d730
    res 6, [hl]
    call Call_000_3abe
    bit 1, a
    jr nz, jr_018_50a7

    ld hl, $cc5b
    ld a, [$cc26]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ldh [$db], a
    cp $29
    jr z, jr_018_506b

    cp $2a
    jr z, jr_018_5067

    ld b, $ab
    jr jr_018_506d

jr_018_5067:
    ld b, $62
    jr jr_018_506d

jr_018_506b:
    ld b, $5a

jr_018_506d:
    ld [$d70f], a
    ld a, b
    ld [$d710], a
    call Call_018_50eb
    ld hl, $50ae
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_018_50a7

    ld hl, $50b3
    call Call_000_3c49
    ld a, [$d70f]
    ldh [$db], a
    ld b, $05
    ld hl, $7f37
    call Call_000_35d6
    ld hl, $50b8
    call Call_000_3c49
    ld hl, $d7a3
    set 0, [hl]
    set 1, [hl]
    ret


jr_018_50a7:
    ld hl, $50bd
    call Call_000_3c49
    ret


    rla
    sub $51
    jr z, @+$52

    rla
    ld e, c
    ld d, d
    jr z, jr_018_5108

    rla
    adc a
    ld d, d
    jr z, @+$52

    rla
    add $52
    jr z, @+$52

Call_018_50c2:
    ld hl, $cc5b
    xor a
    ldh [$db], a

jr_018_50c8:
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
    jr jr_018_50c8

Call_018_50eb:
    ld a, [$d710]
    ld [$d11e], a
    call Call_000_2f9e
    call Call_000_3826
    ld a, [$d70f]
    ld [$d11e], a
    call Call_000_2fcf
    ret


    inc bc
    jr @+$13

    nop
    ld b, b
    ld h, $51

jr_018_5108:
    dec c
    ld d, c
    nop
    jp c, $cd51

    inc a
    inc a
    ld hl, $5142
    ld de, $5120
    ld a, [$d618]
    call Call_000_3160
    ld [$d618], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld h, a
    ld d, c
    ld l, h
    ld d, c
    db $76
    ld d, c
    add b
    ld d, c
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    or a
    ld d, c
    cp h
    ld d, c
    pop bc
    ld d, c
    add $51
    bit 2, c
    ret nc

    ld d, c
    push de
    ld d, c
    ld [bc], a
    ld b, b
    di
    rst $10
    adc d
    ld d, c
    sub h
    ld d, c
    adc a
    ld d, c
    adc a
    ld d, c
    inc bc
    ld b, b
    di
    rst $10
    sbc c
    ld d, c
    and e
    ld d, c
    sbc [hl]
    ld d, c
    sbc [hl]
    ld d, c
    inc b
    db $10
    di
    rst $10
    xor b
    ld d, c
    or d
    ld d, c
    xor l
    ld d, c
    xor l
    ld d, c
    rst $38
    rla
    dec e
    ld b, e
    jr nz, jr_018_51bc

    ld [$4221], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$4e21], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$5a21], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, c
    ld b, e
    jr nz, @+$52

    rla
    add a
    ld b, e
    jr nz, jr_018_51e4

    rla
    and d
    ld b, e
    jr nz, jr_018_51e9

    rla
    jp $2043


    ld d, b
    rla
    ld a, [c]
    ld b, e
    jr nz, @+$52

    rla
    dec bc
    ld b, h
    jr nz, jr_018_51f8

    rla
    jr c, @+$46

    jr nz, @+$52

    rla
    ld e, b
    ld b, h
    jr nz, jr_018_5202

    rla
    ld [hl], l
    ld b, h
    jr nz, jr_018_5207

    rla
    rst $00
    ld b, h
    jr nz, jr_018_520c

jr_018_51bc:
    rla
    ld a, [bc]
    ld b, l
    jr nz, jr_018_5211

    rla
    ld d, e
    ld b, l
    jr nz, @+$52

    rla
    add h
    ld b, l
    jr nz, @+$52

    rla
    add $45
    jr nz, @+$52

    rla
    inc de
    ld b, [hl]
    jr nz, jr_018_5225

    rla
    ld h, a
    ld b, [hl]
    jr nz, jr_018_522a

    inc bc
    ld b, $00
    ld bc, $2f02
    nop
    ld [bc], a
    inc bc
    cpl

jr_018_51e4:
    cpl
    rrca
    ld bc, $2f32

jr_018_51e9:
    db $10
    ld bc, $2f32
    ld de, $3201
    cpl
    ld [de], a
    ld bc, $0632
    jr z, @+$1a

    add hl, bc

jr_018_51f8:
    jr nz, jr_018_520a

    ld a, [bc]
    ld de, $0b1a
    jr jr_018_5204

    inc c
    dec l

jr_018_5202:
    ld [de], a
    dec c

jr_018_5204:
    ld bc, $0e02

jr_018_5207:
    ld [$2f04], sp

jr_018_520a:
    inc d
    rst $38

jr_018_520c:
    rst $38
    ld bc, $2504
    ld [hl+], a

jr_018_5211:
    rst $38
    jp nc, $ca42

    ld bc, $1704
    ld [hl+], a
    rst $38
    jp nc, $ca43

    ld [bc], a
    inc b
    ld d, $06
    rst $38
    jp nc, $ca44

jr_018_5225:
    inc bc
    dec a
    rrca
    dec e
    rst $38

jr_018_522a:
    rst $38
    add l
    dec bc
    dec a
    ld hl, $ff10
    rst $38
    add [hl]
    inc d
    dec a
    inc hl
    dec b
    rst $38
    rst $38
    add a
    inc b
    inc b
    inc l
    rra
    rst $38
    rst $38
    ld [$c700], sp
    nop
    ld bc, $c701
    nop
    ld [bc], a
    jr @-$35

    cpl
    rrca
    add hl, de
    ret


    cpl
    db $10
    add hl, de
    ret


    cpl
    ld de, $c91a
    cpl
    ld [de], a
    dec c
    add hl, bc
    inc d
    rst $18
    ld d, d
    ld l, c
    ld d, d
    ld h, l
    ld d, d
    nop
    ld [hl], a
    ld d, d
    call Call_000_3c3c
    ret


    ld l, l
    ld d, d
    ld [hl], d
    ld d, d
    rla
    ld [hl], b
    ld c, h
    jr nz, @+$52

    rla
    and $4c
    jr nz, @+$52

    inc c
    dec bc
    nop
    ld a, [de]
    ld bc, $005e
    dec de
    ld bc, $085e
    rra
    nop
    ld h, [hl]
    ld [$0117], sp
    ld h, [hl]
    ld [$0213], sp
    ld h, [hl]
    ld [$030f], sp
    ld h, [hl]
    ld [$040b], sp
    ld h, [hl]
    ld [$0507], sp
    ld h, [hl]
    ld b, $02
    ld b, $60
    rrca
    dec h
    dec b
    ld h, d
    db $10
    inc bc
    nop
    ld h, h
    nop
    ld [bc], a
    ld a, [de]
    ld a, [bc]
    db $10
    cp $02
    ld bc, $0913
    rra
    rst $38
    rst $38
    ld [bc], a
    db $10
    rst $00
    nop
    ld a, [de]
    db $10
    rst $00
    nop
    dec de
    ld a, d
    rst $00
    ld [$761f], sp
    rst $00
    ld [$7417], sp
    rst $00
    ld [$7213], sp
    rst $00
    ld [$700f], sp
    rst $00
    ld [$6e0b], sp
    rst $00
    ld [$5207], sp
    rst $00
    ld b, $02
    set 0, a
    rrca
    dec h
    call nc, Call_000_10c7
    inc bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc de
    db $10
    rrca
    dec b
    dec b
    dec b
    dec b
    ld de, $180e
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    ld c, $10
    ld bc, $1514
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    inc bc
    ld d, $0d
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $17
    dec c
    inc c
    inc d
    ld a, [hl-]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [bc], a
    inc c
    dec c
    add hl, bc
    inc d
    ld l, [hl]
    ld d, l
    db $db
    ld d, h
    sbc a
    ld d, e
    nop
    inc d
    ld d, l
    call Call_000_3c3c
    ld hl, $53b3
    ld a, [$d665]
    jp Jump_000_3d97


Jump_018_53ab:
    xor a
    ld [$cd6b], a
    ld [$d665], a
    ret


    cp [hl]
    ld d, e
    jr nc, jr_018_540b

    ld l, l
    ld d, h
    cp [hl]
    ld d, h
    cp l
    ld d, e
    ret


    ld hl, $5411
    call Call_000_34bf
    ret nc

    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld c, $02
    ld a, $de
    call Call_000_23a1
    ld a, [$cd3d]
    ldh [$db], a
    ld a, $71
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    call Call_000_3dd7
    ld a, $02
    ldh [$8c], a
    call Call_000_3541
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ldh a, [$db]
    cp $02
    jr nz, jr_018_5400

    ld de, $540c
    jr jr_018_5403

jr_018_5400:
    ld de, $540d

jr_018_5403:
    call Call_000_363a
    ld a, $01
    ld [$d665], a

jr_018_540b:
    ret


    nop
    nop
    nop
    nop
    rst $38
    ld [$0824], sp
    dec h
    rst $38

Call_018_5416:
    ld a, [$d362]
    cp $25
    jr nz, jr_018_5426

    ld a, $02
    ld [$d528], a
    ld a, $0c
    jr jr_018_5427

jr_018_5426:
    xor a

jr_018_5427:
    ldh [$8d], a
    ld a, $02
    ldh [$8c], a
    jp Jump_000_34a6


    ld a, [$d730]
    bit 0, a
    ret nz

    call Call_018_5416
    xor a
    ld [$cd6b], a
    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    call Call_000_3dd7
    ld a, $f2
    ld [$d059], a
    ld a, [$d715]
    cp $b1
    jr nz, jr_018_5457

    ld a, $01
    jr jr_018_5461

jr_018_5457:
    cp $99
    jr nz, jr_018_545f

    ld a, $02
    jr jr_018_5461

jr_018_545f:
    ld a, $03

jr_018_5461:
    ld [$d05d], a
    call Call_018_5416
    ld a, $02
    ld [$d665], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_018_53ab

    call Call_018_5416
    ld a, $f0
    ld [$cd6b], a
    ld a, $03
    ldh [$8c], a
    call Call_000_2920
    ld a, $02
    ldh [$8c], a
    call Call_000_3541
    ld a, [$d362]
    cp $25
    jr nz, jr_018_5497

    ld de, $54b9
    jr jr_018_549a

jr_018_5497:
    ld de, $54b7

jr_018_549a:
    ld a, $02
    ldh [$8c], a
    call Call_000_363a
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld b, $02
    ld hl, $5b47
    call Call_000_35d6
    ld a, $03
    ld [$d665], a
    ret


    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $71
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    call Call_000_2307
    ld a, $04
    ld [$d665], a
    ret


    pop hl
    ld d, h
    and $54
    rrca
    ld d, l
    rla
    inc [hl]
    ld c, l
    jr nz, @+$52

    ld [$0021], sp
    ld d, l
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $5505
    ld de, $550a
    call Call_000_3354
    jp Jump_000_24d7


    rla
    sbc d
    ld c, l
    jr nz, jr_018_5555

    rla
    ld d, a
    ld c, [hl]
    jr nz, jr_018_555a

    rla
    add c
    ld c, [hl]
    jr nz, jr_018_555f

    rla
    or [hl]
    ld c, [hl]
    jr nz, jr_018_5564

    inc c
    add hl, bc
    dec bc
    add hl, bc
    nop
    ld h, a
    dec bc
    dec c
    ld [bc], a
    ld h, a
    dec bc
    ld de, $6704
    dec bc
    dec d
    ld b, $67
    dec bc
    add hl, de
    ld [$0b67], sp

jr_018_552b:
    dec e
    ld a, [bc]
    ld h, a
    inc b
    ld [bc], a
    ld [$0c5f], sp
    ld [bc], a
    ld bc, $0461
    inc h
    nop
    ld h, l
    nop
    ld [bc], a
    ld a, [de]
    dec bc
    rlca
    cp $01
    ld bc, $0802
    jr z, @+$01

    ret nc

    ld b, d
    pop hl
    ld bc, $c789
    dec bc
    add hl, bc
    adc e
    rst $00
    dec bc
    dec c
    adc l
    rst $00
    dec bc

jr_018_5555:
    ld de, $c78f
    dec bc
    dec d

jr_018_555a:
    sub c
    rst $00
    dec bc
    add hl, de
    sub e

jr_018_555f:
    rst $00
    dec bc
    dec e
    jr c, jr_018_552b

jr_018_5564:
    inc b
    ld [bc], a
    and b
    rst $00
    inc c
    ld [bc], a
    ld c, c
    rst $00
    inc b
    inc h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    ld de, $0c0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    ld de, $1a0e
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $18
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    inc de
    db $10
    dec c
    ld c, $10
    rrca
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    inc de
    db $10
    inc b
    dec c
    ld c, $18
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c

jr_018_5623:
    inc b
    rrca
    ld h, [hl]
    ld d, [hl]
    ld sp, $2e56
    ld d, [hl]
    nop
    ld [hl-], a
    ld d, [hl]
    jp Jump_000_3c3c


    ld d, b
    inc c
    ld b, $03
    rla
    ld [$0368], sp
    inc de
    ld b, $68
    inc bc
    rrca
    inc b
    ld l, b
    inc bc
    dec bc
    ld [bc], a
    ld l, b
    inc bc
    rlca
    nop
    ld l, b
    dec b
    dec de
    add hl, bc
    ld e, a
    nop
    nop
    ld e, $c7
    inc bc
    rla
    inc e
    rst $00
    inc bc
    inc de
    ld a, [de]
    rst $00
    inc bc
    rrca
    jr jr_018_5623

    inc bc
    dec bc
    ld d, $c7
    inc bc
    rlca
    dec [hl]
    rst $00
    dec b
    dec de
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    dec b
    ld de, $040e
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc [hl]
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    rlca
    ld a, [bc]
    ld h, c
    ld d, a
    rst $00
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    nop
    dec hl
    ld d, a
    call Call_000_3c3c
    ld hl, $56d1
    ld de, $56c1
    ld a, [$d617]
    call Call_000_3160
    ld [$d617], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld [$ef56], a
    ld d, [hl]
    db $f4
    ld d, [hl]
    ld sp, hl
    ld d, [hl]
    ld [de], a
    ld d, a
    inc b
    jr nc, @+$01

    rst $10
    inc bc
    ld d, a
    dec c
    ld d, a
    ld [$0857], sp
    ld d, a
    dec b
    jr nc, @+$01

    rst $10
    inc e
    ld d, a
    ld h, $57
    ld hl, $2157
    ld d, a
    rst $38
    rla
    adc b
    ld c, a
    jr nz, jr_018_573f

    rla
    cp e
    ld c, a
    jr nz, jr_018_5744

    rla
    jp c, $204f

    ld d, b
    ld [$d121], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    dec bc
    ld d, b
    jr nz, @+$52

    rla
    dec l
    ld d, b
    jr nz, jr_018_575d

    rla
    ld b, b
    ld d, b
    jr nz, jr_018_5762

    ld [$dd21], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [hl], b
    ld d, b
    jr nz, jr_018_5771

    rla
    adc [hl]
    ld d, b
    jr nz, @+$52

    rla
    and h
    ld d, b
    jr nz, jr_018_577b

    inc hl
    ld [bc], a
    ld b, $0d
    nop
    ld h, c
    rlca
    dec c
    nop
    ld h, c
    nop
    dec b
    inc c
    ld b, $09
    rst $38
    pop de
    ld bc, $0d13

jr_018_573f:
    ld [$ffff], sp
    ld [bc], a
    rlca

jr_018_5744:
    rrca
    dec bc
    rst $38
    rst $38
    inc bc
    inc de
    ld [$ff08], sp
    ret nc

    ld b, h
    call z, $1301
    inc c
    ld c, $ff
    pop de
    ld b, l
    call z, $2f02
    rst $00
    ld b, $0d

jr_018_575d:
    cpl
    rst $00
    rlca
    dec c
    inc hl

jr_018_5762:
    inc hl
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    inc hl
    ld e, $1f
    inc h
    inc h
    inc h

jr_018_5771:
    dec c
    inc c
    inc c
    inc c
    ld e, $1f
    add hl, hl
    daa
    inc b
    inc b

jr_018_577b:
    rrca
    ld de, $0c0c
    jr nz, @+$2b

    inc b
    inc b
    inc b
    inc b
    inc h
    dec c
    inc c
    inc c
    ld hl, $0422
    daa
    inc b
    inc b
    ld bc, $0c0c
    inc c
    jr z, jr_018_57b6

    ld [hl+], a
    inc b
    inc b
    inc b
    dec c
    inc c
    inc c
    inc c
    inc hl
    jr z, jr_018_57c5

    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec c
    ld [$5107], sp
    ld e, b
    or a
    ld d, a
    or e
    ld d, a
    nop
    dec de
    ld e, b
    call Call_000_3c3c

jr_018_57b6:
    ret


    push bc
    ld d, a
    jp z, $cf57

    ld d, a
    call nc, $d957
    ld d, a
    sbc $57
    db $e3
    ld d, a

jr_018_57c5:
    rla
    push hl
    ld d, b
    jr nz, @+$52

    rla
    ld d, $51
    jr nz, jr_018_581f

    rla
    scf
    ld d, c
    jr nz, jr_018_5824

    rla
    ld d, l
    ld d, c
    jr nz, @+$52

    rla
    adc [hl]
    ld d, c
    jr nz, jr_018_582e

    rla
    ret


    ld d, c
    jr nz, @+$52

    ld [$0721], sp
    ld e, b
    call Call_000_3c49
    ldh a, [$d3]
    bit 7, a
    jr z, jr_018_57f5

    ld hl, $580c
    jr jr_018_5801

jr_018_57f5:
    bit 4, a
    jr z, jr_018_57fe

    ld hl, $5811
    jr jr_018_5801

jr_018_57fe:
    ld hl, $5816

jr_018_5801:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    inc bc
    ld d, d
    jr nz, jr_018_585c

    rla
    inc sp
    ld d, d
    jr nz, @+$52

    rla
    ld [hl], e
    ld d, d
    jr nz, jr_018_5866

    rla
    and [hl]
    ld d, d
    jr nz, jr_018_586b

    inc c
    ld bc, $0600

jr_018_581f:
    ld a, [bc]
    ld e, a
    nop
    rlca
    inc d

jr_018_5824:
    inc c
    dec b
    cp $01
    ld bc, $0c14
    add hl, bc
    cp $01

jr_018_582e:
    ld [bc], a
    inc d
    dec bc
    dec c
    cp $01
    inc bc
    inc d
    ld a, [bc]
    ld de, $ffff
    inc b
    inc d
    inc c
    ld de, $ffff
    dec b
    inc d
    ld c, $11
    rst $38
    rst $38
    ld b, $14
    ld de, $ff0f
    pop de
    rlca
    ld sp, hl
    add $00
    ld b, $0a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc

jr_018_585c:
    dec bc
    dec bc
    dec bc
    dec bc
    ld b, $0b
    ld b, $0b
    ld b, $35

jr_018_5866:
    dec bc
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    dec bc

jr_018_586b:
    ld a, [hl+]
    dec [hl]
    dec bc
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    dec [hl]
    dec bc
    inc l
    dec bc
    inc l
    dec bc
    inc l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec l
    dec hl
    dec l
    dec hl
    dec l
    dec hl
    dec c
    inc b
    inc bc
    ld e, [hl]
    ld e, c
    and a
    ld e, b
    sub l
    ld e, b
    nop
    ld b, [hl]
    ld e, c
    call Call_018_589b
    jp Jump_000_3c3c


Call_018_589b:
    ld a, [$d803]
    bit 1, a
    ret nz

    ld hl, $d72d
    set 5, [hl]
    ret


    xor l
    ld e, b
    inc a
    ld e, c
    ld b, c
    ld e, c
    ld [$03fa], sp
    ret c

    bit 0, a
    jr nz, jr_018_58e3

    ld hl, $58ec
    call Call_000_3c49
    ld hl, $5927
    call Call_000_3c49
    ld bc, $c401
    call Call_000_3e2e
    jr nc, jr_018_58d6

    ld hl, $592c
    call Call_000_3c49
    ld hl, $d803
    set 0, [hl]
    jr jr_018_58e9

jr_018_58d6:
    ld hl, $5937
    call Call_000_3c49
    ld hl, $d72d
    set 5, [hl]
    jr jr_018_58e9

jr_018_58e3:
    ld hl, $5932
    call Call_000_3c49

jr_018_58e9:
    jp Jump_000_24d7


    rla
    db $dd
    ld d, d
    jr nz, jr_018_58f9

    ld a, [$c0ef]
    cp $1f
    ld [$c0f0], a

jr_018_58f9:
    jr nz, jr_018_5908

    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld a, $02
    ld [$c0ef], a

jr_018_5908:
    ld a, $e8
    ld [$c0ee], a
    call Call_000_23b1

jr_018_5910:
    ld a, [$c026]
    cp $e8
    jr z, jr_018_5910

    call Call_000_2307
    ld hl, $d803
    set 1, [hl]
    ld hl, $d72d
    res 5, [hl]
    jp Jump_000_24d7


    rla
    ld b, a
    ld d, e
    jr nz, jr_018_597c

    rla
    dec c
    ld d, h
    jr nz, jr_018_5942

    ld d, b
    rla
    inc e
    ld d, h
    jr nz, @+$52

    rla
    ld e, l
    ld d, h
    jr nz, jr_018_598c

    rla
    add b
    ld d, h
    jr nz, jr_018_5991

    rla

jr_018_5942:
    sbc l
    ld d, h
    jr nz, jr_018_5996

    inc c
    ld bc, $0007
    ld [$0260], sp
    ld bc, $0204
    ld [bc], a
    ld bc, $0103
    ld l, $06
    ld [$d1ff], sp
    ld bc, $c70d
    rlca
    nop
    jr nc, jr_018_5991

    cpl
    ld [hl-], a
    inc sp
    rlca
    dec bc
    dec bc
    rlca
    ld l, $0b
    dec bc
    dec c
    ld [$df0c], sp
    ld e, d
    adc a
    ld e, c
    db $76
    ld e, c
    nop
    ld h, b
    ld e, d
    call Call_000_3c3c
    ld hl, $59a5

jr_018_597c:
    ld de, $5989
    ld a, [$d608]
    call Call_000_3160
    ld [$d608], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h

jr_018_598c:
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    sub $59

jr_018_5991:
    ldh [$59], a
    ld [$f459], a

jr_018_5996:
    ld e, c
    ld b, a
    ld e, d
    ld c, h
    ld e, d
    ld d, c
    ld e, d
    cp $59
    ld d, [hl]
    ld e, d
    db $f4
    inc h
    ld e, e
    ld e, d
    ld bc, $0520
    ret c

    dec bc
    ld e, d
    dec d
    ld e, d
    db $10
    ld e, d
    db $10
    ld e, d
    ld [bc], a
    jr nc, jr_018_59b9

    ret c

    ld a, [de]
    ld e, d
    inc h
    ld e, d

jr_018_59b9:
    rra
    ld e, d
    rra
    ld e, d
    inc bc
    jr nz, jr_018_59c5

    ret c

    add hl, hl
    ld e, d
    inc sp
    ld e, d

jr_018_59c5:
    ld l, $5a
    ld l, $5a
    inc b
    jr nz, jr_018_59d1

    ret c

    jr c, jr_018_5a29

    ld b, d
    ld e, d

jr_018_59d1:
    dec a
    ld e, d
    dec a
    ld e, d
    rst $38
    ld [$a521], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$b121], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$bd21], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$c921], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    rst $10
    ld d, h
    jr nz, jr_018_5a0b

    ld a, $65
    call Call_000_13d0
    jp Jump_000_24d7


jr_018_5a0b:
    rla
    pop af
    ld d, h
    jr nz, jr_018_5a60

    rla
    ld l, $55
    jr nz, jr_018_5a65

    rla
    ld b, c
    ld d, l
    jr nz, jr_018_5a6a

    rla
    ld h, c
    ld d, l
    jr nz, jr_018_5a6f

    rla
    add d
    ld d, l
    jr nz, jr_018_5a74

    rla
    sbc d
    ld d, l
    jr nz, jr_018_5a79

jr_018_5a29:
    rla
    cp l
    ld d, l
    jr nz, jr_018_5a7e

    rla
    db $d3
    ld d, l
    jr nz, jr_018_5a83

    rla
    rst $20
    ld d, l
    jr nz, jr_018_5a88

    rla
    dec de
    ld d, [hl]
    jr nz, jr_018_5a8d

    rla
    ld c, [hl]
    ld d, [hl]
    jr nz, jr_018_5a92

    rla
    ld a, c
    ld d, [hl]
    jr nz, @+$52

    rla
    rst $00
    ld d, [hl]
    jr nz, jr_018_5a9c

    rla
    ld a, [c]
    ld d, [hl]
    jr nz, jr_018_5aa1

    rla
    inc d
    ld d, a
    jr nz, jr_018_5aa6

    rla
    ld [hl], $57
    jr nz, @+$52

    rla
    ld e, c
    ld d, a
    jr nz, jr_018_5ab0

jr_018_5a60:
    inc c
    ld b, $00
    nop
    ld [bc], a

jr_018_5a65:
    ld e, a
    nop
    ld a, [bc]
    inc bc
    ld e, a

jr_018_5a6a:
    nop
    inc d
    inc b
    ld e, a
    ld a, [bc]

jr_018_5a6f:
    nop
    dec b
    ld e, a
    ld a, [bc]
    ld a, [bc]

jr_018_5a74:
    ld b, $5f
    ld a, [bc]
    inc d
    rlca

jr_018_5a79:
    ld e, a
    nop
    dec bc
    db $10
    rlca

jr_018_5a7e:
    ld b, $ff
    jp nc, $f141

jr_018_5a83:
    ld bc, $0810
    rrca
    rst $38

jr_018_5a88:
    pop de
    ld b, d
    pop af
    ld [bc], a
    inc b

jr_018_5a8d:
    ld [de], a
    rrca
    rst $38
    pop de
    ld b, e

jr_018_5a92:
    ret


    ld [$0f06], sp
    ld de, $d2ff
    ld b, h
    rrc e

jr_018_5a9c:
    dec c
    rlca
    ld a, [de]
    cp $01

jr_018_5aa1:
    dec b
    ld a, [bc]
    ld [de], a
    inc b
    rst $38

jr_018_5aa6:
    rst $38
    ld b, $08
    rrca
    ld b, $ff
    ret nc

    rlca
    jr c, jr_018_5abf

jr_018_5ab0:
    rlca
    rst $38
    ret nc

    ld [$110d], sp
    ld c, $ff
    db $d3
    add hl, bc
    dec a
    inc de
    db $10
    rst $38
    rst $38

jr_018_5abf:
    adc d
    ret nc

    db $10
    ld de, $fe19
    ld [bc], a
    dec bc
    ei
    add $00
    nop
    nop
    rst $00
    nop
    ld a, [bc]
    dec b
    rst $00
    nop
    inc d
    ld d, l
    rst $00
    ld a, [bc]
    nop
    ld e, d
    rst $00
    ld a, [bc]
    ld a, [bc]
    ld e, a
    rst $00
    ld a, [bc]
    inc d
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    dec c
    ld [$c00c], sp
    ld b, e
    ld l, d
    ld e, e
    ld c, e
    ld e, e
    nop
    adc l
    ld e, h
    ld a, $01
    ld [$cf0c], a
    xor a
    ld [$cc3c], a
    ld hl, $5b84
    ld de, $5b64
    ld a, [$d609]
    call Call_000_3160
    ld [$d609], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    or l
    ld e, e
    cp a
    ld e, e
    ret


    ld e, e
    db $d3
    ld e, e
    db $dd
    ld e, e
    db $f4
    inc h
    rst $30
    ld e, e
    ld b, $5c
    db $f4
    inc h
    dec d
    ld e, h
    inc h
    ld e, h
    inc sp
    ld e, h
    ld b, d
    ld e, h
    ld bc, $0720
    ret c

    ld d, c
    ld e, h
    ld e, e
    ld e, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld e, h
    ld [bc], a
    jr nc, jr_018_5b9a

    ret c

    ld h, b
    ld e, h
    ld l, d
    ld e, h
    ld h, l
    ld e, h

jr_018_5b9a:
    ld h, l
    ld e, h
    inc bc
    jr nc, jr_018_5ba6

    ret c

    ld l, a
    ld e, h
    ld a, c
    ld e, h
    ld [hl], h
    ld e, h

jr_018_5ba6:
    ld [hl], h
    ld e, h
    inc b
    jr nz, jr_018_5bb2

    ret c

    ld a, [hl]
    ld e, h
    adc b
    ld e, h
    add e
    ld e, h

jr_018_5bb2:
    add e
    ld e, h
    rst $38
    ld [$8421], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9021], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9c21], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$a821], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$19cd], sp
    scf
    ld hl, $5bf2
    call Call_000_3c49
    call Call_000_3725
    ld a, $84
    call Call_000_349b
    jp Jump_000_24d7


    rla
    sbc c
    ld d, a
    jr nz, @+$52

    ld [$0121], sp
    ld e, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    push af
    ld d, a
    jr nz, jr_018_5c56

    ld [$1021], sp
    ld e, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    inc sp
    ld e, b
    jr nz, jr_018_5c65

    ld [$1f21], sp
    ld e, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld d, h
    ld e, b
    jr nz, jr_018_5c74

    ld [$2e21], sp
    ld e, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    xor b
    ld e, b
    jr nz, jr_018_5c83

    ld [$3d21], sp
    ld e, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    db $db
    ld e, b
    jr nz, jr_018_5c92

    ld [$4c21], sp
    ld e, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    dec b
    ld e, c
    jr nz, @+$52

    rla
    ld h, $59
    jr nz, jr_018_5ca6

jr_018_5c56:
    rla
    ld d, [hl]
    ld e, c
    jr nz, jr_018_5cab

    rla
    ld a, e
    ld e, c
    jr nz, jr_018_5cb0

    rla
    sbc h
    ld e, c
    jr nz, jr_018_5cb5

jr_018_5c65:
    rla
    cp c
    ld e, c
    jr nz, jr_018_5cba

    rla
    add $59
    jr nz, jr_018_5cbf

    rla
    db $fc
    ld e, c
    jr nz, jr_018_5cc4

jr_018_5c74:
    rla
    add hl, hl
    ld e, d
    jr nz, jr_018_5cc9

    rla
    dec a
    ld e, d
    jr nz, @+$52

    rla
    ld e, l
    ld e, d
    jr nz, jr_018_5cd3

jr_018_5c83:
    rla
    ld a, h
    ld e, d
    jr nz, jr_018_5cd8

    rla
    adc e
    ld e, d
    jr nz, jr_018_5cdd

    inc c
    inc c
    dec b
    ld [bc], a
    nop

jr_018_5c92:
    ld h, b
    dec b
    inc bc
    nop
    ld h, b
    dec b
    inc c
    ld bc, $0560
    dec c
    ld bc, $0560
    ld d, $02
    ld h, b
    dec b
    rla
    ld [bc], a

jr_018_5ca6:
    ld h, b
    rrca
    ld [bc], a
    inc bc
    ld h, b

jr_018_5cab:
    rrca
    inc bc
    inc bc
    ld h, b
    rrca

jr_018_5cb0:
    inc c
    inc b
    ld h, b
    rrca
    dec c

jr_018_5cb5:
    inc b
    ld h, b
    rrca
    ld d, $05

jr_018_5cba:
    ld h, b
    rrca
    rla
    dec b
    ld h, b

jr_018_5cbf:
    nop
    dec c
    db $10
    ld b, $0e

jr_018_5cc4:
    rst $38
    db $d3
    ld b, c
    pop af
    inc bc

jr_018_5cc9:
    cpl
    ld [$ff11], sp
    jp nc, $d642

    ld bc, $1210

jr_018_5cd3:
    inc b
    rst $38
    db $d3
    ld b, e
    pop af

jr_018_5cd8:
    dec b
    ld b, $0f
    ld b, $ff

jr_018_5cdd:
    ret nc

    ld b, h
    rrc h
    db $10

jr_018_5ce2:
    ld b, $05
    rst $38
    ret nc

jr_018_5ce6:
    dec b
    dec a
    dec b
    db $10
    rst $38
    rst $38
    add [hl]
    ld d, c
    db $10
    ld b, $19
    rst $38
    ret nc

    rlca
    dec h
    dec b
    ld a, [de]
    rst $38
    ret nc

    ld [$103d], sp
    inc b
    rst $38
    rst $38
    adc c
    jr z, @+$12

    db $10
    db $10
    rst $38
    ret nc

    ld a, [bc]
    dec [hl]
    ld [de], a
    rrca
    rst $38
    rst $38
    dec bc
    dec e
    db $10
    ld a, [de]
    rst $38
    jp nc, $0f0c

    db $10
    jr @+$01

    db $d3
    dec c
    jr nz, jr_018_5ce2

    dec b
    ld [bc], a
    jr nz, jr_018_5ce6

    dec b
    inc bc
    dec h
    rst $00
    dec b
    inc c
    dec h
    rst $00
    dec b
    dec c
    ld a, [hl+]
    rst $00
    dec b
    ld d, $2a
    rst $00
    dec b
    rla
    ld a, d
    rst $00
    rrca
    ld [bc], a
    ld a, d
    rst $00
    rrca
    inc bc
    ld a, a
    rst $00
    rrca
    inc c
    ld a, a
    rst $00
    rrca
    dec c
    add h
    rst $00
    rrca
    ld d, $84
    rst $00
    rrca
    rla
    dec c
    ld [$c00c], sp
    ld b, e
    ld l, [hl]
    ld e, l
    ld d, l
    ld e, l
    nop
    ld [hl], l
    ld e, [hl]
    call Call_000_3c3c
    ld hl, $5d84
    ld de, $5d68
    ld a, [$d629]
    call Call_000_3160
    ld [$d629], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    call $d75d
    ld e, l
    pop hl
    ld e, l
    db $eb
    ld e, l
    push af
    ld e, l
    rst $38
    ld e, l
    ld [hl], b
    ld e, [hl]
    add hl, bc
    ld e, [hl]
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $0920
    ret c

    ld d, $5e
    jr nz, @+$60

    dec de
    ld e, [hl]
    dec de
    ld e, [hl]
    ld [bc], a
    jr nc, jr_018_5d9c

    ret c

    dec h
    ld e, [hl]
    cpl
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]

jr_018_5d9c:
    inc bc
    jr nz, jr_018_5da8

    ret c

    inc [hl]
    ld e, [hl]
    ld a, $5e
    add hl, sp
    ld e, [hl]
    add hl, sp
    ld e, [hl]

jr_018_5da8:
    inc b
    jr nz, jr_018_5db4

    ret c

    ld b, e
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld c, b
    ld e, [hl]

jr_018_5db4:
    dec b
    jr nz, jr_018_5dc0

    ret c

    ld d, d
    ld e, [hl]
    ld e, h
    ld e, [hl]
    ld d, a
    ld e, [hl]
    ld d, a
    ld e, [hl]

jr_018_5dc0:
    ld b, $30
    add hl, bc
    ret c

    ld h, c
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    rst $38
    ld [$8421], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9021], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9c21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$a821], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$b421], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$c021], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor d
    ld e, d
    jr nz, jr_018_5e16

    ld a, $29
    call Call_000_13d0
    jp Jump_000_24d7


jr_018_5e16:
    rla
    jp $205a


    ld d, b
    rla
    rst $30
    ld e, d
    jr nz, jr_018_5e70

    rla
    ld de, $205b
    ld d, b
    rla
    inc sp
    ld e, e
    jr nz, jr_018_5e7a

    rla
    ld d, d
    ld e, e
    jr nz, jr_018_5e7f

    rla
    ld l, b
    ld e, e
    jr nz, jr_018_5e84

    rla
    sbc c
    ld e, e
    jr nz, @+$52

    rla
    or h
    ld e, e
    jr nz, jr_018_5e8e

    rla
    ret


    ld e, e
    jr nz, @+$52

    rla
    di
    ld e, e
    jr nz, jr_018_5e98

    rla
    ld [de], a
    ld e, h
    jr nz, jr_018_5e9d

    rla
    ld [hl+], a
    ld e, h
    jr nz, jr_018_5ea2

    rla
    ld d, d
    ld e, h
    jr nz, jr_018_5ea7

    rla
    ld a, a
    ld e, h
    jr nz, @+$52

    rla
    sub a
    ld e, h
    jr nz, @+$52

    rla
    jp $205c


    ld d, b
    rla
    ld bc, $205d
    ld d, b
    rla
    ld hl, $205d
    ld d, b

jr_018_5e70:
    rla
    ld c, h
    ld e, l
    jr nz, jr_018_5ec5

    inc c
    ld a, [bc]
    dec b
    ld [bc], a
    inc b

jr_018_5e7a:
    ld h, d
    dec b
    inc bc
    inc b
    ld h, d

jr_018_5e7f:
    dec b
    inc c
    inc bc
    ld h, d
    dec b

jr_018_5e84:
    dec c
    inc bc
    ld h, d
    dec b
    ld d, $02
    ld h, d
    dec b
    rla
    ld [bc], a

jr_018_5e8e:
    ld h, d
    rrca
    ld [bc], a
    ld bc, $0f62
    inc bc
    ld bc, $0f62

jr_018_5e98:
    inc c
    nop
    ld h, d
    rrca
    dec c

jr_018_5e9d:
    nop
    ld h, d
    nop
    dec bc
    inc de

jr_018_5ea2:
    ld de, $ff04
    ret nc

    ld b, c

jr_018_5ea7:
    call z, $1303
    rrca
    ld b, $ff
    ret nc

    ld b, d
    call z, Call_000_1304
    rlca
    db $10
    rst $38
    jp nc, $cc43

    dec b
    inc de
    ld b, $1a
    rst $38
    ret nc

    ld b, h

jr_018_5ebf:
    call z, Call_000_1306
    ld b, $04
    rst $38

jr_018_5ec5:
    db $d3
    ld b, l
    call z, $2f07
    ld [$ff04], sp
    db $d3
    ld b, [hl]
    sub $02
    inc c
    ld de, $ff0e
    db $d3
    rlca
    dec b
    db $10
    rrca
    rst $38
    rst $38
    ld [$063d], sp
    jr @+$01

    rst $38
    adc c
    ld d, b
    dec a
    ld b, $0e
    rst $38
    rst $38
    adc d
    db $f4
    dec a
    rrca
    db $10
    rst $38
    rst $38
    adc e
    ld de, $c720
    dec b
    ld [bc], a
    jr nz, jr_018_5ebf

    dec b
    inc bc
    dec h
    rst $00
    dec b
    inc c
    dec h
    rst $00
    dec b
    dec c
    ld a, [hl+]
    rst $00
    dec b
    ld d, $2a
    rst $00
    dec b
    rla
    ld a, d
    rst $00
    rrca
    ld [bc], a
    ld a, d
    rst $00
    rrca
    inc bc
    ld a, a
    rst $00
    rrca
    inc c
    ld a, a
    rst $00
    rrca
    dec c
    dec bc
    jr jr_018_5f21

    sbc b
    ld b, c
    add hl, hl
    ld e, a

jr_018_5f21:
    ld h, $5f
    nop
    ld a, [hl+]
    ld e, a
    jp Jump_000_3c3c


    ld d, b
    ld bc, $0402
    dec b
    ld [bc], a
    ld b, a
    add hl, hl
    ld [bc], a
    ld [bc], a
    ld c, d
    nop
    nop
    add hl, bc
    rst $00
    inc b
    dec b
    cp h
    rst $00
    add hl, hl
    ld [bc], a
    dec bc
    inc b
    add hl, de
    db $f4
    ld b, c
    ld c, l
    ld e, a
    ld c, d
    ld e, a
    nop
    ld c, [hl]
    ld e, a
    jp Jump_000_3c3c


    ld d, b
    ld bc, $0502
    ld [bc], a
    ld [bc], a
    ld c, l
    ld [bc], a
    cpl
    ld [bc], a
    ld d, b
    nop
    nop
    ld b, a
    rst $00
    dec b
    ld [bc], a
    ld a, $c7
    ld [bc], a
    cpl
    ld de, $1412
    add [hl]
    ld e, a
    ld [hl], c
    ld e, a
    ld l, [hl]
    ld e, a
    nop
    ld [hl], d
    ld e, a
    jp Jump_000_3c3c


    ld d, b
    add hl, de
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld l, $1f
    dec h
    ld [bc], a
    ld d, l
    nop
    nop
    add hl, sp
    rst $00
    dec b
    dec b
    sbc e
    ret z

    rra
    dec h
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc l
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, $18
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_6032

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    inc e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_6032:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    ld bc, $1801
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_6070

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    jr jr_018_6084

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_6070:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl

jr_018_6084:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $0101
    ld bc, $3e01
    jr jr_018_60e0

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_60e0:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    add hl, de
    db $10
    add hl, bc
    add hl, bc
    ret z

    ld h, e
    or a
    ld h, d
    ld a, [$0060]
    add b
    ld h, e
    call Call_018_6110
    call Call_000_3c3c
    ld hl, $62c3
    ld de, $61cf
    ld a, [$d659]
    call Call_000_3160
    ld [$d659], a
    ret


Call_018_6110:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $6134
    call Call_018_6137
    call Call_018_6163
    ld a, [$d838]
    bit 0, a
    ret nz

    ld a, $20
    ld [$d09f], a
    ld bc, $0603

jr_018_612f:
    ld a, $17
    jp Jump_000_3e6d


    ld b, $03
    rst $38

Call_018_6137:
    push hl
    ld hl, $d73f
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_018_6143:
    ld a, [hl+]
    cp $ff
    jr z, jr_018_615f

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_018_6154

    inc hl
    jr jr_018_6143

jr_018_6154:
    ld a, [hl+]
    cp c
    jr nz, jr_018_6143

    ld hl, $d73f
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_018_615f:
    xor a
    ldh [$e0], a
    ret


Call_018_6163:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d838
    set 0, [hl]
    ret


Call_018_616d:
    ld hl, $619b

jr_018_6170:
    ld a, [hl+]
    cp $ff
    jr z, jr_018_6181

    push hl
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    pop hl
    jr jr_018_6170

jr_018_6181:
    ld hl, $6194

jr_018_6184:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    pop hl
    jr jr_018_6184

    ld de, $1312
    inc d
    dec d
    ld d, $ff
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    rla
    jr jr_018_612f

    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub c
    sub d
    sub e
    sub a
    sbc b
    sbc c
    sbc d
    sbc [hl]
    sbc a
    and b
    and e
    and h
    and l
    and [hl]
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or a
    cp b
    cp c
    rst $38

Jump_018_61c4:
    xor a
    ld [$cd6b], a

Jump_018_61c8:
    ld [$d659], a
    ld [$da39], a
    ret


    db $db
    ld h, c
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld l, d
    ld h, d
    sub e
    ld h, d
    daa
    ld h, d
    ld a, [$d838]
    bit 7, a
    ret nz

    ld hl, $6211
    call Call_000_34bf
    jp nc, Jump_000_3219

    ld a, [$cd3d]
    ld [$cf0d], a
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, $03
    ldh [$8c], a
    call Call_000_2920
    ld a, $03
    ldh [$8c], a
    call Call_000_3541
    ld de, $6216
    call Call_000_363a
    ld a, $03
    jp Jump_018_61c8


    dec c
    ld b, $0c
    rlca
    rst $38
    nop
    nop
    nop
    rst $38

Call_018_621a:
    ld [$d528], a
    ld a, $03
    ldh [$8c], a
    ld a, b
    ldh [$8d], a
    jp Jump_000_34a6


    ld a, [$d057]
    cp $ff
    jp z, Jump_018_61c4

    ld a, [$cf0d]
    cp $01
    jr z, jr_018_623c

    ld a, $02
    ld b, $0c
    jr jr_018_6240

jr_018_623c:
    ld a, $08
    ld b, $00

jr_018_6240:
    call Call_018_621a
    ld a, $f0
    ld [$cd6b], a
    ld a, $06
    ldh [$8c], a
    call Call_000_2920
    call Call_000_20ef
    call Call_018_616d
    call Call_000_2429
    call Call_000_3dd7
    call Call_000_20d1
    ld hl, $d838
    set 7, [hl]
    xor a
    ld [$cd6b], a
    jp Jump_018_61c8


    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $03
    ldh [$8c], a
    call Call_000_3541
    ld a, [$cf0d]
    cp $01
    jr z, jr_018_6284

    ld a, $02
    ld b, $0c
    jr jr_018_6288

jr_018_6284:
    ld a, $08
    ld b, $00

jr_018_6288:
    call Call_018_621a
    call Call_000_3dd7
    ld a, $04
    jp Jump_018_61c8


    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $6330
    ld de, $6330
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    xor a
    ld [$cd6b], a
    ld a, $05
    jp Jump_018_61c8


    call c, Call_000_2662
    ld h, e
    dec hl
    ld h, e
    ld a, [hl-]
    ld h, e
    ld d, e
    ld h, e
    dec [hl]
    ld h, e
    inc b
    ld b, b
    scf
    ret c

    ld b, h
    ld h, e
    ld c, [hl]
    ld h, e
    ld c, c
    ld h, e
    ld c, c
    ld h, e
    dec b
    jr nc, @+$39

    ret c

    ld e, l
    ld h, e
    ld h, a
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    rst $38
    ld [$38fa], sp
    ret c

    bit 5, a
    jp nz, Jump_018_6308

    ld hl, $6311
    call Call_000_3c49
    ld bc, $0101
    call Call_000_3e2e
    jr nc, jr_018_6300

    ld hl, $6316
    call Call_000_3c49
    ld hl, $d838
    set 5, [hl]
    jr jr_018_630e

jr_018_6300:
    ld hl, $6321
    call Call_000_3c49
    jr jr_018_630e

Jump_018_6308:
    ld hl, $631c
    call Call_000_3c49

jr_018_630e:
    jp Jump_000_24d7


    rla
    sbc e
    ld c, [hl]
    ld hl, $1750
    ld h, e
    ld c, a
    ld hl, $5011
    rla
    ld [hl], h
    ld c, a
    ld hl, $1750
    inc de
    ld d, b
    ld hl, $1750
    cpl
    ld d, b
    ld hl, $1750
    ld [hl], l
    ld d, b
    ld hl, $1750
    add hl, de
    ld d, c
    ld hl, $1750
    ld sp, $2151
    ld d, b
    ld [$c321], sp
    ld h, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub $51
    ld hl, $1750
    ld hl, sp+$51
    ld hl, $1750
    add hl, bc
    ld d, d
    ld hl, $0850
    ld hl, $62cf
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    daa
    ld d, d
    ld hl, $1750
    ld d, a
    ld d, d
    ld hl, $1750
    ld l, d
    ld d, d
    ld hl, $0850
    ld hl, $637b
    call Call_000_3c49
    ld a, $aa
    call Call_000_349b
    jp Jump_000_24d7


    rla
    sbc d
    ld d, d
    ld hl, $0d50
    inc b
    nop
    add hl, bc
    ld bc, $00ea
    dec c
    nop

jr_018_6389:
    db $ec
    dec b
    dec b
    add hl, bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    call nc, Call_000_0500
    dec hl
    add hl, bc
    dec bc
    rst $38
    ret nc

    ld bc, $090f
    ld c, $ff
    ret nc

    ld [bc], a
    rla
    dec c
    ld a, [bc]
    rst $38
    ret nc

    ld b, e
    push hl
    ld [bc], a
    jr jr_018_63be

    rlca
    rst $38
    pop de
    ld b, h
    and $29
    jr jr_018_63bf

    inc de
    rst $38
    pop de
    ld b, l
    and $28
    db $fc
    add $00
    add hl, bc
    cp $c6

jr_018_63be:
    nop

jr_018_63bf:
    dec c
    jr jr_018_6389

    dec b
    dec b
    ld [$02c7], sp
    inc bc
    ld hl, $2122
    ld [hl+], a
    ld e, $22
    dec e
    ld [hl+], a
    inc hl
    inc h
    add hl, sp
    ld [hl-], a
    ld sp, $3131
    inc [hl]
    ld c, $28
    inc h
    ld c, $33
    ld [de], a
    inc de
    ld d, $35
    ld c, $28
    inc h
    ld c, $24
    db $10
    ld de, $2a0e
    ld c, $28
    inc h
    ld c, $24
    inc d
    dec d
    inc bc
    ld a, [hl+]
    ld c, $28

jr_018_63f5:
    inc h
    ld c, $24
    ld c, $03
    inc bc
    ld a, [hl+]
    ld c, $28
    inc h
    ld c, $37
    inc bc
    ld [hl], $38
    ld a, [hl+]
    ld c, $28
    inc h
    ld c, $0e
    ld c, $24
    ld c, $2a
    ld c, $28
    dec h
    ld h, $26
    ld h, $25
    ld h, $2e
    ld h, $27
    call Call_000_3c3c
    ld a, [$c109]
    cp $04
    ret nz

    ld hl, $6442
    ld a, [$d35e]
    ld b, a

jr_018_6429:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_018_6433

    inc hl
    jr jr_018_6429

jr_018_6433:
    ld b, [hl]
    ld a, [$d72a]
    and b
    cp b
    ld a, $0d
    jr z, jr_018_643f

    ld a, $0c

jr_018_643f:
    jp Jump_000_3ef5


    ld [hl], $01
    ld b, c
    ld [bc], a
    ld e, h
    inc b
    add [hl]
    ld [$109d], sp
    or d
    jr nz, jr_018_63f5

    ld b, b
    dec l
    add b
    rst $38
    rla
    ld [hl], l
    ld b, d
    ld [hl+], a
    ld d, b
    rla
    and l
    ld b, d
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld hl, $647e
    ld a, [$d35e]
    ld b, a

jr_018_6467:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_018_6472

    inc hl
    inc hl
    jr jr_018_6467

jr_018_6472:
    ld a, [hl+]
    ld b, a
    ld a, [$c109]
    cp b
    jr nz, jr_018_6467

    ld a, [hl]
    jp Jump_000_3ef5


    add hl, hl
    ld [$3a0f], sp
    ld [$4010], sp
    ld [$8d11], sp
    ld [$5912], sp
    ld [$8513], sp
    ld [$8c14], sp
    ld [$9a15], sp
    ld [$ab16], sp
    ld [$b617], sp
    ld [$4418], sp
    ld [$5119], sp
    ld [$ff1a], sp
    rla
    rst $10
    ld b, d
    ld [hl+], a
    ld d, b
    rla
    inc c
    ld b, e
    ld [hl+], a
    ld d, b
    rla
    ld d, e
    ld b, e
    ld [hl+], a
    ld d, b
    rla
    add [hl]
    ld b, e
    ld [hl+], a
    ld d, b
    rla
    jp nz, Jump_000_2243

    ld d, b
    rla
    db $fc
    ld b, e
    ld [hl+], a
    ld d, b
    rla
    ld h, $44
    ld [hl+], a
    ld d, b
    rla
    ld b, d
    ld b, h
    ld [hl+], a
    ld d, b
    rla
    ld h, b
    ld b, h
    ld [hl+], a
    ld d, b
    rla
    adc [hl]
    ld b, h
    ld [hl+], a
    ld d, b
    rla
    ld sp, $2245
    ld d, b
    rla
    ld e, a
    ld b, l
    ld [hl+], a
    ld d, b
    rla
    xor a
    ld b, l
    ld [hl+], a
    ld d, b
    ld [$38fa], sp
    ret c

    bit 7, a
    ld hl, $64fd
    jr nz, jr_018_64f2

    ld hl, $64f8

jr_018_64f2:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld hl, $2246
    ld d, b
    rla
    ld h, h
    ld b, [hl]
    ld [hl+], a
    ld d, b
    rla
    and h
    ld b, [hl]
    ld [hl+], a
    ld d, b
    ret


    ld d, b
    call Call_000_3c3c
    ld a, $0e
    jp Jump_000_3ef5


    rla
    ret


    ld b, [hl]
    ld [hl+], a
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c3c
    ld a, $01
    ld [$cf0c], a
    ld a, $1f
    jp Jump_000_3ef5


    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_018_7e05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
