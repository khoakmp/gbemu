; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    nop
    inc h
    ld a, [bc]
    ld a, [hl]
    ld b, b
    and $54
    db $e3
    ld d, h
    inc c
    ld [bc], a
    inc d
    ld b, a
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]
    cp l
    ret z

    ld bc, $43ee
    ld e, b
    ret


    db $10
    inc d
    nop
    ld a, [bc]
    inc bc
    rst $00
    ld [hl+], a
    ld b, b
    rrca
    ld b, $09
    inc c
    nop
    ld l, $0b
    inc bc
    ld bc, $132f
    rrca
    nop
    jr nc, jr_015_4054

    db $10
    ld bc, $2731
    rrca
    ld [bc], a
    ld sp, $032b
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld b, c
    dec b
    inc bc
    dec bc
    dec bc
    inc b
    ld [bc], a
    dec a
    ld a, [hl-]
    ld de, $ffff
    add c
    ld a, [bc]
    dec a
    ld sp, $ff11
    rst $38
    add d
    inc hl
    ccf
    rst $00

jr_015_4054:
    add hl, bc
    inc c
    ld c, d
    rst $00
    dec bc
    inc bc
    sub b
    rst $00
    inc de
    rrca
    ld de, $23c8
    db $10
    jr nc, @-$36

    daa
    rrca
    ld c, d
    ret z

    dec hl
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    add hl, bc
    rlca
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f0f
    rrca
    rrca
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $311b
    ld sp, $3131
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $311b
    ld sp, $3131
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $3f3e
    ccf
    dec sp
    ld sp, $3131
    ld sp, $3131
    inc h
    ld b, $57
    dec h
    ld sp, $6d6c
    ld [hl-], a
    ld l, h
    ld l, h
    ld [$7431], sp
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_015_40de

    ld a, [bc]
    ld a, [bc]
    ld sp, $3131
    ld sp, $5231
    ld a, h
    ld a, [hl]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, [bc]
    ld a, [bc]
    ld sp, $5555
    ld d, l
    ld d, l
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld sp, $1a1a
    ld a, [de]
    ld a, [de]
    rrca
    rrca

jr_015_40de:
    rrca
    ld [bc], a
    inc bc
    ld sp, $010b
    dec bc
    dec bc
    rrca
    rrca
    rrca
    ld sp, $3131
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [hl-], a
    ld l, h
    ld l, h
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    cpl
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    cpl
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld d, d
    ld a, [bc]
    ld d, d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr nz, @+$0f

    ld hl, $6d6c
    ld [hl-], a
    ld l, h
    ld l, h
    rrca
    rrca
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [bc]
    jr nz, @+$23

    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld a, h
    ld a, [hl]
    ld d, d
    ld d, d
    rrca
    rrca
    cpl
    rlca
    rlca
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $0a6e
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld bc, $0b0b
    dec bc
    ld l, [hl]
    rlca
    cpl
    rlca
    rlca
    ld [hl], h
    ld bc, $0b0b
    dec bc
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $6f0a
    ld l, a
    ld l, a
    inc [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $0f6e
    rrca
    rrca
    ld l, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $6c0a
    ld l, h
    ld l, h
    ld l, l
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $3131
    ld sp, $6d0a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    rrca
    rlca
    rlca
    cpl
    ld a, [de]
    rlca
    inc [hl]
    cpl
    rlca
    rlca
    rrca
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $6d0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld sp, $3108
    ld sp, $6d0a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    rrca
    ld bc, $7474
    ld sp, $6d0a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    rrca
    ld bc, $0101
    ld bc, $346f
    ld l, a
    ld l, a
    ld l, a
    rrca
    rrca
    rrca
    dec de
    ld bc, $0f0f
    rrca
    rrca
    rrca
    nop
    add hl, bc
    inc hl
    ld d, l
    ld b, d
    ld de, $f855
    ld d, h
    ld a, [bc]
    rrca
    ld a, [$0444]
    rst $00
    dec c
    dec l
    ld de, $b4ce
    ret z

    ld [bc], a
    dec bc
    ld b, [hl]
    add sp, -$3a
    rrca
    inc d
    ld [$1627], sp
    rst $00
    ld [$2c42], sp
    nop
    ld bc, $3b09
    ld a, [bc]
    add hl, bc
    inc c
    rrca
    dec a
    rst $38
    rst $38
    ld bc, $0a04
    ld c, $ff
    db $d3
    ld b, d
    jp z, $0404

    ld [$ff12], sp
    ret nc

    ld b, e
    ret


    ld bc, $0d06
    inc d
    rst $38
    jp nc, $cb44

    ld bc, $0904
    rla
    rst $38
    ret nc

    ld b, l
    jp z, $0605

    ld [$ff1b], sp
    jp nc, $cb46

    ld [bc], a
    inc b
    dec c
    ld a, [de]
    rst $38
    jp nc, $c947

    ld [bc], a
    inc b
    ld a, [bc]
    inc e
    rst $38
    db $d3
    ld c, b
    jp z, Jump_000_0606

    ld c, $25
    rst $38
    pop de
    ld c, c
    rlc e
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld l, l
    ld bc, $0101
    jr z, jr_015_42a3

    inc l
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    add hl, hl
    ld a, [bc]
    ld bc, $0101
    jr z, jr_015_42c6

    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_015_42a3:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    jr z, jr_015_42d7

    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, @+$2e

    add hl, hl
    ld a, [bc]
    ld bc, $3f3e
    inc l
    inc l
    inc l
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    cpl
    rlca
    rlca

jr_015_42c6:
    ld b, d
    rlca
    rlca
    ld b, d
    rlca
    cpl
    inc h
    ld d, a
    dec h
    rlca
    cpl
    ld a, $3f
    dec sp
    rlca
    rlca
    cpl

jr_015_42d7:
    jr z, @+$2e

    add hl, hl
    rlca
    cpl
    inc h
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    ld bc, $400a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, jr_015_4322

    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc h
    ld d, a
    dec h
    ld a, [bc]
    ld d, [hl]
    dec bc
    dec bc
    dec bc
    jr z, jr_015_4330

    ld bc, $410a
    ld a, [bc]
    ld l, [hl]
    rlca
    rlca
    cpl
    ld b, d
    rlca
    rlca
    ld b, d
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_015_4345

    add hl, hl
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc

jr_015_4322:
    dec bc
    dec bc
    dec bc
    jr z, jr_015_4353

    ccf
    ccf
    ccf
    ccf
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_015_4330:
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_015_4368

    add hl, hl
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc

jr_015_4345:
    dec bc
    dec bc
    dec bc
    jr z, jr_015_4376

    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld a, $3f
    ccf
    ccf

jr_015_4353:
    ccf
    ccf
    ccf
    dec sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr z, jr_015_438b

    add hl, hl
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_015_4368:
    ccf
    ccf
    ccf
    inc l
    inc l
    ld d, a
    ld d, a
    ld d, a
    ld d, a

jr_015_4371:
    dec h
    jr z, jr_015_43a0

    inc l
    inc l

jr_015_4376:
    inc l
    inc l
    inc l
    add hl, hl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr z, @+$2e

    add hl, hl
    jr z, jr_015_43b1

    inc l
    inc l
    inc l
    inc l
    inc l
    inc l

jr_015_438b:
    inc l
    inc l
    inc l
    inc l
    inc l
    nop
    add hl, bc
    dec l
    db $ec
    ld b, e
    ld [hl], c
    ld d, [hl]
    ld e, b
    ld d, [hl]
    dec b
    ld c, $6b
    ld b, d
    ld c, h
    ret


    dec c

jr_015_43a0:
    inc hl
    nop
    ld [hl-], a
    ld [de], a
    rst $00
    inc bc
    ld b, h
    ld c, b
    jr jr_015_4371

    rrca
    inc d
    ld [$0300], sp
    rst $00
    or d

jr_015_43b1:
    ld b, e
    inc l
    inc bc
    dec b
    dec bc
    nop
    ld b, h
    dec b
    ld [de], a
    nop
    dec sp
    dec b
    jr @+$09

    inc a
    inc bc
    dec b
    inc c
    inc b
    rlca
    ld de, $0705
    dec de
    ld b, $03
    ld b, $0c
    dec c
    cp $00
    ld bc, $0706
    ld b, e
    rst $38
    db $d3
    ld b, d
    rlc h
    dec a
    rlca
    dec a
    rst $38
    rst $38
    add e
    call z, $c787
    dec b
    dec bc
    adc e
    rst $00
    dec b
    ld [de], a
    adc [hl]
    rst $00
    dec b
    jr jr_015_4419

    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    inc l
    inc l
    inc l

jr_015_4419:
    inc l
    dec hl
    ld d, a
    ld d, a
    dec h
    jr nz, @+$23

    inc h
    ld a, [hl+]
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, c
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld sp, $3131
    ld sp, $5724
    ld d, a
    ld d, a
    ld d, a
    inc l
    add hl, hl
    ld bc, $0101
    ld a, h
    ld [hl], d
    ld bc, $0624
    ld a, [hl+]
    dec hl
    ld b, $57
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld a, [bc]
    ld e, d
    cpl
    ld e, e
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld e, d
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    inc l
    add hl, hl
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $0108
    jr z, jr_015_44a8

    ld sp, $3108
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, d
    cpl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld h, a
    rra
    rra
    rra
    rra
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $1a01

jr_015_44a8:
    ld a, [de]
    ld a, [de]
    jr z, @+$2b

    rlca
    rlca
    rlca
    rlca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    ld e, e
    ld a, [bc]
    ld a, [bc]
    ld e, d
    rlca
    rlca
    rlca
    rlca
    cpl
    ld l, a
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    inc e
    ld a, [de]
    ld a, [de]
    inc d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc l
    add hl, hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $2928
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    ld sp, $3131
    ld sp, $3131
    ld sp, $292c
    ld bc, $0101
    ld bc, $1a01
    ld a, [de]
    ld a, [de]
    jr z, jr_015_4532

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    cpl
    rlca
    rlca
    rlca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    cpl
    rlca
    ld h, d
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    inc l
    inc l
    dec sp
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $2801

jr_015_4532:
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc l
    inc l
    add hl, hl
    ld bc, $0101
    ld a, [de]
    ld a, $3f
    ccf
    inc l
    inc l
    inc l
    inc l
    inc l

jr_015_4563:
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld [hl], h
    ld [hl], h
    nop
    ld [de], a
    ld a, [bc]
    jp nc, $b545

    ld d, [hl]
    or d
    ld d, [hl]
    inc c
    inc bc
    ld e, [hl]
    ld c, c
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]
    cp l
    ret z

    ld a, [bc]
    sbc d
    ld c, d
    jr c, jr_015_4563

    db $10
    inc d
    nop
    ld a, [bc]
    inc bc
    rst $00
    and e
    ld b, l
    ld a, [bc]
    dec b
    dec e
    ld a, [bc]
    inc bc
    ld b, [hl]
    dec e
    add hl, bc
    ld [bc], a
    ld b, [hl]
    ld hl, $000a
    ld b, [hl]
    dec de
    ld de, $4700
    dec d
    ld a, [bc]
    nop
    ld c, b
    ld bc, $111d
    ld bc, $de00
    rst $00
    dec e
    ld a, [bc]
    db $dd
    rst $00
    dec e
    add hl, bc
    cp $c7
    ld hl, $d10a
    rst $00
    dec de
    ld de, $c79e
    dec d
    ld a, [bc]
    ld l, l
    daa
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld e, a
    ld sp, $3131
    ld sp, $271b
    ld c, l
    ld l, l
    daa
    ld e, a
    ld sp, $0e0c
    ld sp, $271b
    ld c, l
    ld l, l
    ld e, [hl]
    ld e, a
    ld sp, $1210
    ld sp, $5e1b
    ld c, l
    ld l, l
    ld bc, $1a5f
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    ld bc, $6d4d
    ld bc, $0101
    ld bc, $0101
    ld bc, $2120
    ld l, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $7e7c
    ld l, l
    ld bc, $0101
    dec de
    ld e, a
    ld bc, $0801
    ld c, l
    ld l, l
    ld bc, $2001
    dec c
    dec c
    ld hl, $0101
    ld c, l
    ld l, [hl]
    ld [hl], a
    ld [hl], a
    scf
    ld a, l
    ld a, [hl-]
    ld a, [hl]
    ld [hl], a
    ld [hl], a
    ld l, l
    ld l, [hl]
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, l
    nop
    add hl, bc
    ld e, $fe
    ld b, [hl]
    push de
    ld d, [hl]
    cp h
    ld d, [hl]
    inc bc
    inc bc
    ld d, l
    ld c, b
    add sp, -$3a
    rrca
    inc d
    ld [$1627], sp
    rst $00
    dec d
    ld d, [hl]
    ld b, e
    ld [hl], l
    rst $00
    inc c
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $a8
    ld b, [hl]
    inc l
    nop
    ld bc, $1907
    dec bc
    ld a, [bc]
    ld b, $0e
    ld de, $d2ff
    ld b, c
    adc $05
    rlca
    dec bc
    inc e
    rst $38
    jp nc, $cd42

    rlca
    rlca
    dec bc
    inc hl
    rst $38
    db $d3
    ld b, e
    call Call_000_0608
    inc c
    inc [hl]
    rst $38
    db $d3
    ld b, h
    adc $06
    ld c, $13
    inc d
    rst $38
    jp nc, $d145

    dec bc
    ld c, $07
    cpl
    rst $38
    jp nc, $d146

    ld b, $04
    ld b, $1a
    rst $38
    ret nc

    ld b, a
    jp z, $0e0d

    inc de
    ld sp, $d3ff
    ld c, b
    pop de
    dec b
    inc b
    inc c
    inc l
    rst $38
    db $d3
    ld c, c
    jp z, $3d0e

    inc de
    ld c, $ff
    rst $38
    adc d
    and $24
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    inc l
    dec hl
    ld [hl], h
    ld [hl], h
    ld c, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, $3b
    dec bc
    dec bc
    jr z, jr_015_4758

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, @+$2e

    inc l
    add hl, hl
    ld [hl], h
    ld [hl], h
    ld c, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, $3b
    rlca
    rlca
    cpl
    jr z, @+$2b

    cpl
    rlca
    inc h
    dec h
    cpl
    rlca
    rlca
    rlca
    ld a, $3b
    rlca
    jr z, jr_015_4782

    inc l
    add hl, hl

jr_015_4758:
    ld d, d
    ld d, d
    ld c, a
    rlca
    rlca
    rlca
    rlca
    ld c, h
    jr z, @+$2b

    ld sp, $0831
    inc h
    dec h
    ld sp, $3131
    ld sp, $3131
    ld sp, $2431
    dec h
    ld sp, $5724
    ld d, a
    dec h
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    ld sp, $3131
    ld sp, $2c3e
    add hl, hl
    ld a, [de]
    ld a, [de]

jr_015_4782:
    ld a, [de]
    rlca
    cpl
    ld a, $3b
    ld sp, $3b3e
    ld sp, $3b3e
    ld sp, $3131
    ld sp, $3131
    ld sp, $5151
    ld h, e
    ld a, $3b
    ld a, [de]
    ld a, [de]
    inc h
    ld d, a
    dec h
    ld sp, $3131
    ld sp, $240a
    dec h
    rlca
    inc h
    dec h
    cpl
    jr z, @+$2b

    ld a, [de]
    ld a, $3b
    ld a, [de]
    ld a, $3f
    ccf
    ld [hl], h
    ld [hl], h
    ld c, l
    jr z, jr_015_47e0

    rlca
    rlca
    rlca
    rlca
    cpl
    ld a, [de]
    ld a, [de]
    ld a, $3b
    cpl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc h
    dec h
    ld a, [de]
    inc h
    dec h
    ld a, [de]
    jr z, jr_015_47fb

    inc l
    ld [hl], h
    ld [hl], h
    ld c, l
    jr z, jr_015_47fe

    ld sp, $3131
    ld sp, $3131
    ld sp, $2928
    ld a, [bc]
    ld a, [bc]

jr_015_47e0:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, jr_015_4819

    inc l
    ld [hl], h
    ld [hl], h
    ld c, l
    jr z, jr_015_481f

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc l

jr_015_47fb:
    inc l
    ccf
    ccf

jr_015_47fe:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc l
    inc l
    inc l
    nop
    add hl, bc
    ld e, $8b
    ld c, b
    scf
    ld e, b
    ld e, $58
    ld a, [bc]
    rla
    ld c, $49

jr_015_4819:
    rst $38
    add $0a
    ld a, [bc]
    ld l, e
    ret c

jr_015_481f:
    ld c, c
    jp z, Jump_000_1919

    ld c, d
    ld d, h
    rst $00
    inc c
    ld a, [bc]
    nop
    inc de
    ld [bc], a
    rst $00
    ld l, $48
    ld b, e
    nop
    inc bc
    dec c
    rrca
    dec bc
    dec b
    ld hl, $0b0c
    rra
    dec c
    ld a, [bc]
    rlca
    ld c, $35
    rst $38
    db $d3
    ld b, c
    rst $18
    ld bc, $0e06
    inc [hl]
    rst $38
    ret nc

    ld b, d
    adc $0c
    ld b, $0d
    rra
    rst $38
    ret nc

    ld b, e
    adc $0d
    ld b, $0e
    dec de
    rst $38
    jp nc, $ce44

    ld c, $06
    add hl, bc
    ld [hl], $ff
    ret nc

    ld b, l
    adc $0f
    rlca
    ld [$ff10], sp
    db $d3
    ld b, [hl]
    rst $18
    ld [bc], a
    rrca
    ld a, [bc]
    dec h
    rst $38
    ret nc

    ld b, a
    jp c, Jump_000_0f04

    ld a, [bc]
    inc h
    rst $38
    ret nc

    ld c, b
    jp c, Jump_000_1205

    dec bc
    ld c, $ff
    pop de
    ld c, c
    jp nc, $0701

    ld de, $ff0b
    pop de
    ld c, d
    rst $18
    inc bc
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $1c31
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rrca
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld bc, $7731
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $771b
    ld [hl], a
    ld d, [hl]
    inc [hl]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    dec de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld bc, $6d0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    dec de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $771b
    ld bc, $0f0f
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    dec de
    ld sp, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $771b
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld sp, $5454
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h

jr_015_493b:
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    dec de
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    ld d, [hl]
    dec de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld l, d
    ld b, e

jr_015_4970:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    nop
    dec de
    ld a, [bc]
    ld [de], a
    ld c, d
    db $ec
    ld e, c
    db $d3
    ld e, c
    inc bc
    ld a, [de]
    rst $20
    ld c, c
    jr c, jr_015_4970

    add hl, bc
    ld e, $dc
    dec sp
    ld a, [hl+]
    rst $00
    jr jr_015_493b

    ld c, b
    dec h
    rst $00
    add hl, bc
    ld e, $00
    nop
    dec c
    rst $00
    cp e
    ld c, c
    ld b, e
    nop
    ld bc, $110d
    dec bc
    ld a, [bc]
    rlca
    ld [$ff08], sp
    ret nc

    ld b, c
    rst $18
    ld c, $07
    ld a, [bc]
    inc de
    rst $38
    ret nc

    ld b, d
    rst $18
    rrca
    rlca
    rrca
    db $10
    rst $38
    ret nc

    ld b, e
    rst $18
    db $10
    rlca
    inc de
    ld [de], a
    rst $38
    pop de
    ld b, h
    rst $18
    ld de, $2307
    inc de
    rst $38
    jp nc, $df45

    inc b
    rlca
    dec [hl]
    ld a, [bc]
    rst $38
    pop de
    ld b, [hl]
    rst $18
    dec b
    ld [de], a
    dec hl
    add hl, bc
    rst $38
    ret nc

    ld b, a
    jp nc, Jump_000_120d

    ld [hl+], a
    ld [$d3ff], sp
    ld c, b
    jp nc, $120e

    ld [hl+], a
    inc de
    rst $38
    jp nc, $d249

    rrca
    ld [de], a
    inc hl
    ld [$d3ff], sp
    ld c, d
    jp nc, Jump_000_0a02

    ld c, l
    ld sp, $3131
    ld sp, $3131
    ld sp, $0a31
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld sp, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld sp, $3131
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld [$0a77], sp
    ld c, l
    ld sp, $3131
    ld a, [bc]
    ld d, l
    ld c, l
    rrca
    rrca
    ld a, [bc]
    ld c, l
    inc e
    inc e
    inc e
    ld a, [bc]
    ld d, l
    ld c, l
    rrca
    rrca
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    rrca
    rrca
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    rra
    rra
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld l, [hl]
    rlca
    rlca
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    dec [hl]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld h, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    dec [hl]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    inc de
    inc de
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    inc de
    inc de
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld d, l
    ld l, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    rlca
    dec [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld b, e
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, e
    nop
    ld c, b
    ld a, [bc]
    xor b
    ld c, e
    sub e
    ld e, e
    ld a, d
    ld e, e
    inc c
    dec de
    db $fc
    ld c, e
    db $eb
    add $0d
    inc d
    ld de, $d300
    rst $00
    dec e
    sbc h
    ld c, h
    sbc e
    rrc l
    add hl, de
    nop
    nop
    ld [$42c7], sp
    ld c, e
    ld b, e
    nop
    ld b, $33
    add hl, bc
    dec bc
    ccf
    add hl, bc
    inc c
    ld c, e
    add hl, bc
    dec c
    ld d, a
    add hl, bc
    ld c, $6f
    add hl, bc
    rrca
    adc l
    add hl, bc
    db $10
    ld a, [bc]
    ld [de], a
    rla
    db $10
    rst $38
    jp nc, $d841

    inc b
    ld [de], a
    inc d
    rrca
    rst $38
    db $d3
    ld b, d
    ret c

    dec b
    ld [de], a
    ld d, $08
    rst $38
    pop de
    ld b, e
    jp nc, $1208

    inc h
    dec bc
    rst $38
    jp nc, $d244

    add hl, bc
    ld [de], a
    ld h, $12
    rst $38
    db $d3
    ld b, l
    jp nc, Jump_000_120a

    ld a, $15
    rst $38
    jp nc, $d846

    ld b, $12
    ld c, b
    ld b, $ff
    db $d3
    ld b, a
    ret c

    rlca
    ld [de], a
    ld h, [hl]
    ld [de], a
    rst $38
    db $d3
    ld c, b
    ret c

    ld [$6612], sp
    add hl, bc
    rst $38
    jp nc, $d249

    dec bc
    ld [de], a
    ld a, d
    ld c, $ff
    ret nc

    ld c, d
    jp nc, Jump_015_4e0c

    ld e, l
    ld [hl], h
    ld [hl], h
    ld e, l
    ld [hl], h
    ld c, [hl]
    ld h, l
    ld b, e
    ld b, e
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld c, [hl]
    ld h, l
    ld b, e
    ld b, e
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld d, c
    ld d, c
    ld d, c
    ld h, e
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    dec e
    ld e, $5d
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    ld e, [hl]
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    dec e
    ld e, $31
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld [$6465], sp
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld [$6465], sp
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld [$6465], sp
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld sp, $6508
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    dec e
    rra
    ld l, $64
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld sp, $0831
    ld sp, $2731
    ld sp, $4e4d
    daa
    ld sp, $1f1d
    rra
    ld e, $27
    ld sp, $4e4d
    daa
    ld sp, $4365
    ld b, e
    ld h, h
    daa
    ld sp, $4e4d
    daa
    ld sp, $4365
    ld b, e
    ld h, h
    daa
    ld sp, $4e4d
    daa
    ld sp, $3131
    ld sp, $2731
    ld sp, $4e4d
    ld e, [hl]
    ld sp, $3131
    ld sp, $5e31
    ld sp, $4e4d
    ld [hl], a

Jump_015_4e0c:
    ld [hl], a
    ld sp, $7777
    ld sp, $7777
    ld c, l
    ld h, a
    rra
    ld e, $5d
    ld sp, $5d31
    dec e
    rra
    ld l, d
    jr jr_015_4e63

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e6d

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e77

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e81

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e8b

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr @+$45

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de

jr_015_4e5a:
    jr jr_015_4e9f

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e

jr_015_4e63:
    add hl, de
    jr jr_015_4ea9

    ld h, h
    ld e, [hl]
    ld [$5e31], sp
    ld h, l
    ld b, e

jr_015_4e6d:
    add hl, de
    jr jr_015_4eb3

    ld h, h
    ld a, [de]
    ld a, [de]
    ld e, h
    ld a, [de]
    ld h, l
    ld b, e

jr_015_4e77:
    add hl, de
    nop
    dec de
    ld a, [bc]
    pop af
    ld c, [hl]
    ld e, l
    ld e, l
    ld b, h
    ld e, l

jr_015_4e81:
    ld a, [bc]
    rlca
    or h
    ld c, l
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]

jr_015_4e8b:
    cp l
    ret z

    rra
    xor h
    ld b, c
    jr c, jr_015_4e5a

    add hl, bc
    ld [hl-], a
    call c, $5263
    rst $00
    sbc d
    ld c, [hl]
    ld b, e
    nop
    ld bc, $0b09

jr_015_4e9f:
    dec bc
    ld a, [bc]
    rlca
    dec bc
    inc c
    rst $38
    jp nc, $d741

    ld [bc], a

jr_015_4ea9:
    rlca
    dec bc
    ld de, $d2ff
    ld b, d
    rst $10
    inc bc
    ld [hl+], a
    dec e

jr_015_4eb3:
    ld de, $d2ff
    ld b, e
    rst $10
    inc b
    ld [hl+], a
    rra
    ld [$d3ff], sp
    ld b, h
    rst $10
    dec b
    ld [hl+], a
    inc hl
    inc d
    rst $38
    pop de
    ld b, l
    rst $10
    ld b, $22
    rrca
    dec c
    rst $38
    ret nc

    ld b, [hl]
    rst $10
    rlca
    ld [hl+], a
    cpl
    inc c
    rst $38
    jp nc, $da47

    inc c
    ld [hl+], a
    cpl
    rrca
    rst $38
    db $d3
    ld c, b
    jp c, $220d

    ld l, $0d
    rst $38
    pop de
    ld c, c
    rst $10
    ld [$3022], sp
    ld c, $ff
    ret nc

    ld c, d
    jp c, Jump_000_280e

    inc l
    add hl, hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    jr z, jr_015_4f26

    add hl, hl
    jr z, jr_015_4f29

    add hl, hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc h
    ld d, a
    dec h
    inc h
    ld d, a
    dec h
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    jr jr_015_4f51

    ld b, e
    ld b, e
    add hl, de
    ld sp, $3131
    ld sp, $1831
    ld b, e
    ld b, e
    ld l, e
    dec d
    ld sp, $3131
    ld [$1431], sp
    ld l, e
    ld l, e
    jr jr_015_4f68

    ld b, e

jr_015_4f26:
    ld b, e
    ld b, e
    ld b, e

jr_015_4f29:
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4f72

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4f7c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4f86

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4f90

    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f51:
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4f9a

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4fa4

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f68:
    add hl, de
    jr jr_015_4fae

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f72:
    add hl, de
    jr jr_015_4fb8

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f7c:
    add hl, de
    jr jr_015_4fc2

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f86:
    add hl, de
    jr jr_015_4fcc

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f90:
    add hl, de
    jr jr_015_4fd6

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f9a:
    add hl, de
    jr jr_015_4fe0

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fa4:
    add hl, de
    jr jr_015_4fea

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fae:
    add hl, de
    inc de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fb8:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fc2:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fcc:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fd6:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fe0:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fea:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc de
    nop
    dec l
    ld a, [bc]
    ld l, l
    ld d, b
    inc b
    ld e, a
    db $eb
    ld e, [hl]
    inc c
    nop
    add hl, sp
    ld b, e
    db $eb
    add $0a
    ld a, [bc]
    ld de, $7900
    rst $00
    ld [$4069], sp
    db $eb
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $21
    ld d, b
    ld b, e
    nop
    nop
    add hl, bc
    cpl
    inc e
    ld [$d2ff], sp
    ld b, c
    sub $07
    cpl
    dec e
    ld a, [bc]
    rst $38
    ret nc

    ld b, d
    sub $09
    ld [hl+], a
    inc hl
    ld c, $ff
    pop de
    ld b, e
    rst $10
    inc c
    ld [hl+], a
    ld [hl+], a
    db $10
    rst $38
    db $d3
    ld b, h
    ret c

    add hl, bc
    ld [hl+], a
    ld b, e
    inc d
    rst $38
    ret nc

    ld b, l
    rst $10
    dec c
    ld [hl+], a
    ld c, e
    add hl, bc
    rst $38
    db $d3
    ld b, [hl]
    rst $10
    ld c, $22
    ld c, e
    inc de
    rst $38
    jp nc, $d747

    rrca
    cpl
    inc a
    ld [de], a
    rst $38
    jp nc, $d648

    ld [$3d2f], sp
    dec d
    rst $38
    db $d3
    ld c, c
    sub $0a
    ld d, c
    ld h, e
    ld h, l
    ld h, h
    ld d, c
    ld d, c
    ld d, c
    ld h, d
    ld d, c
    ld d, c
    ld a, [bc]
    ld c, l
    ld h, l
    ld h, h
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    ld h, h
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld [hl], h
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    ld h, h
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    ld h, h
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    dec l
    rra
    rra
    rra
    ld h, a
    rra
    rra
    ld d, d
    ld c, a
    ld h, l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    jr jr_015_50f5

    ld b, e
    ld h, a
    rra
    ld l, $43
    ld b, e
    ld b, e
    ld b, e
    inc d
    ld l, e
    ld l, e
    jr jr_015_5102

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_510c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_5116

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_5120

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_512a

    ld d, h
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_5134

    ld a, b
    ld a, b
    ld b, e
    ld b, e

jr_015_50f5:
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_513e

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5102:
    add hl, de
    jr jr_015_5148

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_510c:
    add hl, de
    jr jr_015_5152

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5116:
    add hl, de
    jr jr_015_515c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5120:
    add hl, de
    jr jr_015_5166

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_512a:
    add hl, de
    jr jr_015_5170

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5134:
    add hl, de
    jr jr_015_517a

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_513e:
    add hl, de
    jr jr_015_5184

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5148:
    add hl, de
    jr jr_015_518e

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5152:
    add hl, de
    jr jr_015_5198

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_515c:
    add hl, de
    jr jr_015_51a2

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5166:
    add hl, de
    jr jr_015_51ac

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5170:
    add hl, de
    jr jr_015_51b6

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_517a:
    add hl, de
    jr jr_015_51c0

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5184:
    add hl, de
    jr jr_015_51ca

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld d, h

jr_015_518e:
    add hl, de
    jr jr_015_51d4

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld a, b

jr_015_5198:
    add hl, de
    jr jr_015_51de

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51a2:
    add hl, de
    jr jr_015_51e8

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51ac:
    add hl, de
    jr jr_015_51f2

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51b6:
    add hl, de
    jr jr_015_51fc

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51c0:
    add hl, de
    jr jr_015_5206

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51ca:
    add hl, de
    jr jr_015_5210

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51d4:
    add hl, de
    jr jr_015_521a

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51de:
    add hl, de
    jr jr_015_5224

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51e8:
    add hl, de
    jr jr_015_522e

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51f2:
    add hl, de
    jr jr_015_5238

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51fc:
    add hl, de
    jr jr_015_5242

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5206:
    add hl, de
    jr jr_015_524c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5210:
    add hl, de
    jr @+$45

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld l, e

jr_015_521a:
    dec d
    jr jr_015_5260

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e

jr_015_5224:
    ld b, e
    jr @+$45

    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    add hl, de
    ld b, e

jr_015_522e:
    ld b, e
    inc b
    ld c, $05
    add hl, bc
    rrca
    ld bc, $0f02
    rrca

jr_015_5238:
    inc c
    dec c
    rrca
    ld b, $0b
    rrca
    rlca
    dec a
    add hl, bc
    dec a

jr_015_5242:
    dec a
    dec bc
    dec bc
    rlca
    ld b, $0b
    dec bc
    dec bc
    inc l
    dec bc

jr_015_524c:
    dec de
    dec bc
    dec [hl]
    ld a, [$d12b]
    cp $04
    ret z

    call Call_015_546c
    ld hl, $d16b
    xor a
    ld [$cf92], a

Jump_015_525f:
    inc hl

jr_015_5260:
    ld a, [hl+]
    or [hl]
    jp z, Jump_015_5436

    push hl
    ld hl, $d058
    ld a, [$cf92]
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    pop hl
    jp z, Jump_015_5436

    ld de, $0010
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d002
    ld c, $05

jr_015_5285:
    ld a, [hl+]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    jr nc, jr_015_529a

    dec de
    ld a, [de]
    inc a
    jr z, jr_015_5295

    ld [de], a
    inc de
    jr jr_015_529a

jr_015_5295:
    ld a, $ff
    ld [de], a
    inc de
    ld [de], a

jr_015_529a:
    dec c
    jr z, jr_015_52a1

    inc de
    inc de
    jr jr_015_5285

jr_015_52a1:
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, [$d008]
    ldh [$98], a
    ld a, [$cff3]
    ldh [$99], a
    call Call_000_38ac
    ld a, $07
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ld hl, $fff2
    add hl, de
    ld b, [hl]
    inc hl
    ld a, [$d359]
    cp b
    jr nz, jr_015_52d1

    ld b, [hl]
    ld a, [$d35a]
    cp b
    ld a, $00
    jr z, jr_015_52d6

jr_015_52d1:
    call Call_015_549f
    ld a, $01

jr_015_52d6:
    ld [$cf4d], a
    ld a, [$d057]
    dec a
    call nz, Call_015_549f
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    ldh a, [$98]
    ld [$cf4c], a
    add b
    ld [hl-], a
    ld b, [hl]
    ldh a, [$97]
    ld [$cf4b], a
    adc b
    ld [hl], a
    jr nc, jr_015_52f8

    dec hl
    inc [hl]
    inc hl

jr_015_52f8:
    inc hl
    push hl
    ld a, [$cf92]
    ld c, a
    ld b, $00
    ld hl, $d164
    add hl, bc
    ld a, [hl]
    ld [$d0b5], a
    call Call_000_1537
    ld d, $64
    ld hl, $4f6a
    ld b, $16
    call Call_000_35d6
    ldh a, [$96]
    ld b, a
    ldh a, [$97]
    ld c, a
    ldh a, [$98]
    ld d, a
    pop hl
    ld a, [hl-]
    sub d
    ld a, [hl-]
    sbc c
    ld a, [hl]
    sbc b
    jr c, jr_015_532e

    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl-], a
    dec hl

jr_015_532e:
    push hl
    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    ld hl, $54b2
    call Call_000_3c49
    xor a
    ld [$cc49], a
    call Call_000_1372
    pop hl
    ld bc, $0013
    add hl, bc
    push hl
    ld b, $16
    ld hl, $4f43
    call Call_000_35d6
    pop hl
    ld a, [hl]
    cp d
    jp z, Jump_015_5436

    ld a, [$d127]
    push af
    push hl
    ld a, d
    ld [$d127], a
    ld [hl], a
    ld bc, $ffdf
    add hl, bc
    ld a, [hl]
    ld [$d0b5], a
    ld [$d11e], a
    call Call_000_1537
    ld bc, $0023
    add hl, bc
    push hl
    ld a, [hl-]
    ld c, a
    ld b, [hl]
    push bc
    ld d, h
    ld e, l
    ld bc, $ffee
    add hl, bc
    ld b, $01
    call Call_000_3936
    pop bc
    pop hl
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    ld de, $ffe0
    add hl, de
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, [$cc2f]
    ld b, a
    ld a, [$cf92]
    cp b
    jr nz, jr_015_53f7

    ld de, $d015
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld bc, $001f
    add hl, bc
    push hl
    ld de, $d022
    ld bc, $000b
    call Call_000_00b5
    pop hl
    ld a, [$d064]
    bit 3, a
    jr nz, jr_015_53c8

    ld de, $cd0f
    ld bc, $000b
    call Call_000_00b5

jr_015_53c8:
    xor a
    ld [$d11e], a
    ld hl, $6d99
    ld b, $0f
    call Call_000_35d6
    ld hl, $6d1a
    ld b, $0f
    call Call_000_35d6
    ld hl, $6e19
    ld b, $0f
    call Call_000_35d6
    ld hl, $4d60
    ld b, $0f
    call Call_000_35d6
    ld hl, $6e94
    ld b, $0f
    call Call_000_35d6
    call Call_000_3719

jr_015_53f7:
    ld hl, $54dd
    call Call_000_3c49
    xor a
    ld [$cc49], a
    call Call_000_1372
    ld d, $01
    ld hl, $6ae4
    ld b, $04
    call Call_000_35d6
    call Call_000_3865
    call Call_000_3725
    xor a
    ld [$cc49], a
    ld a, [$d0b5]
    ld [$d11e], a
    ld a, $1a
    call Call_000_3e6d
    ld hl, $ccd3
    ld a, [$cf92]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3e6d
    pop hl
    pop af
    ld [$d127], a

Jump_015_5436:
    ld a, [$d163]
    ld b, a
    ld a, [$cf92]
    inc a
    cp b
    jr z, jr_015_5450

    ld [$cf92], a
    ld bc, $002c
    ld hl, $d16b
    call Call_000_3a87
    jp Jump_015_525f


jr_015_5450:
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
    jp Jump_000_3e6d


Call_015_546c:
    ld a, [$d058]
    ld b, a
    xor a
    ld c, $08
    ld d, $00

jr_015_5475:
    xor a
    srl b
    adc d
    ld d, a
    dec c
    jr nz, jr_015_5475

    cp $02
    ret c

    ld [$d11e], a
    ld hl, $d002
    ld c, $07

jr_015_5488:
    xor a
    ldh [$95], a
    ld a, [hl]
    ldh [$96], a
    ld a, [$d11e]
    ldh [$99], a
    ld b, $02
    call Call_000_38b9
    ldh a, [$98]
    ld [hl+], a
    dec c
    jr nz, jr_015_5488

    ret


Call_015_549f:
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    ld c, a
    srl b
    rr c
    add c
    ldh [$98], a
    ldh a, [$97]
    adc b
    ldh [$97], a
    ret


    rla
    jp nz, $225b

    ld [$5bfa], sp
    call z, $cb21
    ld d, h
    and a
    ret nz

    ld hl, $54d8
    ld a, [$cf4d]
    and a
    ret z

    ld hl, $54d4
    ret


    rla
    ret nc

    ld e, e
    ld [hl+], a
    ld [$d821], sp
    ld d, h
    ret


    rla
    pop hl
    ld e, e
    ld [hl+], a
    rla
    xor $5b
    ld [hl+], a
    ld d, b
    rla
    ld bc, $225c
    dec bc
    ld d, b
    jp Jump_000_3c3c


    db $f4
    inc h
    db $f4
    inc h
    xor $54
    di
    ld d, h
    rla
    ld b, l
    ld d, a
    inc hl
    ld d, b
    rla
    ld l, d
    ld d, a
    inc hl

jr_015_54f7:
    ld d, b
    call Call_000_3c3c
    ld hl, $5525
    ld de, $550b
    ld a, [$d5f8]
    call Call_000_3160
    ld [$d5f8], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    add [hl]
    ld d, l
    adc e
    ld d, l
    and h
    ld d, l
    cp l
    ld d, l
    sub $55
    rst $28
    ld d, l
    ld [$2156], sp
    ld d, [hl]
    ld a, [hl-]
    ld d, [hl]
    ld d, e
    ld d, [hl]
    ld [bc], a
    jr nz, @-$3b

    rst $10
    sub l
    ld d, l
    sbc a
    ld d, l
    sbc d
    ld d, l
    sbc d
    ld d, l
    inc bc
    jr nc, jr_015_54f7

    rst $10
    xor [hl]
    ld d, l
    cp b
    ld d, l
    or e
    ld d, l
    or e
    ld d, l
    inc b
    jr nz, @-$3b

    rst $10
    rst $00
    ld d, l
    pop de
    ld d, l
    call z, $cc55
    ld d, l
    dec b
    db $10
    jp $e0d7


    ld d, l
    ld [$e555], a
    ld d, l
    push hl
    ld d, l
    ld b, $40
    jp $f9d7


    ld d, l
    inc bc
    ld d, [hl]
    cp $55
    cp $55
    rlca
    jr nc, @-$3b

    rst $10
    ld [de], a
    ld d, [hl]
    inc e
    ld d, [hl]
    rla
    ld d, [hl]
    rla
    ld d, [hl]
    ld [$c330], sp
    rst $10
    dec hl
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    jr nc, jr_015_55cd

    jr nc, jr_015_55cf

    add hl, bc
    jr nz, @-$3b

    rst $10
    ld b, h
    ld d, [hl]
    ld c, [hl]
    ld d, [hl]
    ld c, c
    ld d, [hl]
    ld c, c
    ld d, [hl]
    rst $38
    rla
    ld a, c
    ld d, a
    inc hl
    ld d, b
    ld [$2521], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    push de
    ld d, a
    inc hl
    ld d, b
    rla
    ld sp, hl
    ld d, a
    inc hl
    ld d, b
    rla
    dec c
    ld e, b
    inc hl
    ld d, b
    ld [$3121], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld c, h
    ld e, b
    inc hl
    ld d, b
    rla
    ld a, a
    ld e, b
    inc hl
    ld d, b
    rla
    sub e
    ld e, b
    inc hl
    ld d, b
    ld [$3d21], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret nc

    ld e, b
    inc hl
    ld d, b
    rla

jr_015_55cd:
    xor $58

jr_015_55cf:
    inc hl
    ld d, b
    rla
    ei
    ld e, b
    inc hl
    ld d, b
    ld [$4921], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc h
    ld e, c
    inc hl
    ld d, b
    rla
    ld b, h
    ld e, c
    inc hl
    ld d, b
    rla
    ld h, [hl]
    ld e, c
    inc hl
    ld d, b
    ld [$5521], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    and [hl]
    ld e, c
    inc hl
    ld d, b
    rla
    pop de
    ld e, c
    inc hl
    ld d, b
    rla
    db $db
    ld e, c
    inc hl
    ld d, b
    ld [$6121], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [$235a], sp
    ld d, b
    rla
    jr z, jr_015_5674

    inc hl
    ld d, b
    rla
    dec sp
    ld e, d
    inc hl
    ld d, b
    ld [$6d21], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld h, d
    ld e, d
    inc hl
    ld d, b
    rla
    ld a, [hl]
    ld e, d
    inc hl
    ld d, b
    rla
    sub c
    ld e, d
    inc hl
    ld d, b
    ld [$7921], sp
    ld d, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla

jr_015_5645:
    ret nz

    ld e, d
    inc hl
    ld d, b
    rla
    ret c

    ld e, d
    inc hl
    ld d, b
    rla
    db $e3
    ld e, d
    inc hl
    ld d, b
    rla
    rlca
    ld e, e
    inc hl
    ld d, b
    call Call_000_3c3c
    ld hl, $567d
    ld de, $566b
    ld a, [$d5f9]
    call Call_000_3160
    ld [$d5f9], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    adc d
    ld d, [hl]
    adc a

jr_015_5674:
    ld d, [hl]
    db $f4
    inc h
    rst $28
    inc h
    xor b
    ld d, [hl]
    xor l
    ld d, [hl]
    ld [bc], a
    jr nc, jr_015_5645

    rst $10
    sbc c
    ld d, [hl]
    and e
    ld d, [hl]
    sbc [hl]
    ld d, [hl]
    sbc [hl]
    ld d, [hl]
    rst $38
    rla
    ld e, $5b
    inc hl
    ld d, b
    ld [$7d21], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld c, e
    ld e, e
    inc hl
    ld d, b
    rla
    ld l, h
    ld e, e
    inc hl
    ld d, b
    rla
    adc b
    ld e, e
    inc hl
    ld d, b
    rla
    call $235b
    ld d, b
    rla
    and $5b
    inc hl
    ld d, b
    jp Jump_000_3c3c


    or a
    ld d, [hl]
    rla
    rlca
    ld e, h
    inc hl
    ld d, b
    call Call_000_3c3c
    ld hl, $56eb
    ld de, $56cf
    ld a, [$d604]
    call Call_000_3160
    ld [$d604], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld e, b
    ld d, a
    ld e, [hl]
    ld d, a
    ld h, h
    ld d, a
    ld l, d
    ld d, a
    ld [hl], b
    ld d, a
    db $76
    ld d, a

jr_015_56e1:
    ld a, h
    ld d, a
    add d
    ld d, a
    adc b
    ld d, a
    db $f4
    inc h
    add hl, de
    ld e, b
    ld bc, $cf30
    rst $10
    sub d
    ld d, a
    sbc h
    ld d, a
    sub a
    ld d, a
    sub a
    ld d, a
    ld [bc], a
    jr nz, @-$2f

    rst $10
    and c
    ld d, a
    xor e
    ld d, a
    and [hl]
    ld d, a
    and [hl]
    ld d, a
    inc bc
    ld b, b
    rst $08
    rst $10
    or b
    ld d, a
    cp d
    ld d, a
    or l
    ld d, a
    or l
    ld d, a
    inc b
    jr nz, jr_015_56e1

    rst $10
    cp a
    ld d, a
    ret


    ld d, a
    call nz, $c457
    ld d, a
    dec b
    jr nz, @-$2f

    rst $10
    adc $57
    ret c

    ld d, a
    db $d3
    ld d, a
    db $d3
    ld d, a
    ld b, $30
    rst $08
    rst $10
    db $dd
    ld d, a
    rst $20
    ld d, a
    ld [c], a
    ld d, a
    ld [c], a
    ld d, a
    rlca
    ld b, b
    rst $08
    rst $10
    db $ec
    ld d, a
    or $57
    pop af
    ld d, a
    pop af
    ld d, a
    ld [$cf20], sp
    rst $10
    ei
    ld d, a
    dec b
    ld e, b
    nop
    ld e, b
    nop
    ld e, b
    add hl, bc
    jr nz, @-$2f

    rst $10
    ld a, [bc]
    ld e, b
    inc d
    ld e, b
    rrca
    ld e, b
    rrca
    ld e, b
    rst $38
    ld [$eb21], sp
    ld d, [hl]
    jr jr_015_578c

    ld [$f721], sp
    ld d, [hl]
    jr jr_015_578c

    ld [$0321], sp
    ld d, a
    jr jr_015_578c

    ld [$0f21], sp
    ld d, a
    jr jr_015_578c

    ld [$1b21], sp
    ld d, a
    jr jr_015_578c

    ld [$2721], sp
    ld d, a
    jr jr_015_578c

    ld [$3321], sp
    ld d, a
    jr jr_015_578c

    ld [$3f21], sp
    ld d, a
    jr jr_015_578c

    ld [$4b21], sp
    ld d, a

jr_015_578c:
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub c
    ld h, d
    inc hl
    ld d, b
    rla
    or [hl]
    ld h, d
    inc hl
    ld d, b
    rla
    ret z

    ld h, d
    inc hl
    ld d, b
    rla
    rst $38
    ld h, d
    inc hl
    ld d, b
    rla
    jr nc, @+$65

    inc hl
    ld d, b
    rla
    ld b, e
    ld h, e
    inc hl
    ld d, b
    rla
    ld d, d
    ld h, e
    inc hl
    ld d, b
    rla
    ld a, [hl]
    ld h, e
    inc hl
    ld d, b
    rla
    sub b
    ld h, e
    inc hl
    ld d, b
    rla
    or c
    ld h, e
    inc hl
    ld d, b
    rla
    rst $08
    ld h, e
    inc hl
    ld d, b
    rla
    db $e4
    ld h, e
    inc hl
    ld d, b
    rla
    ld de, $2364
    ld d, b
    rla
    inc sp
    ld h, h
    inc hl
    ld d, b
    rla
    ld h, c
    ld h, h
    inc hl
    ld d, b
    rla
    sub c
    ld h, h
    inc hl
    ld d, b
    rla
    or [hl]
    ld h, h
    inc hl
    ld d, b
    rla
    jp $2364


    ld d, b
    rla
    ld [c], a
    ld h, h
    inc hl
    ld d, b
    rla
    dec de
    ld h, l
    inc hl
    ld d, b
    rla
    ld a, $65
    inc hl
    ld d, b
    rla
    ld [hl], e
    ld h, l
    inc hl
    ld d, b
    rla
    adc l
    ld h, l
    inc hl
    ld d, b
    rla
    xor d
    ld h, l
    inc hl
    ld d, b
    rla
    jp nc, Jump_000_2365

    ld d, b
    rla
    ld [$2365], a
    ld d, b
    rla
    or $65
    inc hl
    ld d, b
    rla
    ld e, $66
    inc hl
    ld d, b
    call Call_000_3c3c
    ld hl, $5851
    ld de, $5831
    ld a, [$d61a]
    call Call_000_3160
    ld [$d61a], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    jp z, $e358

    ld e, b
    db $fc
    ld e, b
    dec d
    ld e, c
    ld l, $59
    ld b, a
    ld e, c
    ld h, b
    ld e, c

jr_015_5845:
    ld a, c
    ld e, c
    sub d
    ld e, c
    xor e
    ld e, c
    call nz, $c959
    ld e, c
    adc $59

jr_015_5851:
    ld bc, $d920
    rst $10
    call nc, $de58
    ld e, b
    reti


    ld e, b
    reti


    ld e, b
    ld [bc], a
    jr nz, @-$25

    rst $10
    db $ed
    ld e, b
    rst $30
    ld e, b
    ld a, [c]
    ld e, b
    ld a, [c]
    ld e, b
    inc bc
    jr nz, jr_015_5845

    rst $10
    ld b, $59
    db $10
    ld e, c
    dec bc
    ld e, c
    dec bc
    ld e, c
    inc b
    jr nz, jr_015_5851

    rst $10
    rra
    ld e, c
    add hl, hl
    ld e, c
    inc h
    ld e, c
    inc h
    ld e, c
    dec b
    ld b, b
    reti


    rst $10
    jr c, jr_015_58e0

    ld b, d
    ld e, c
    dec a
    ld e, c
    dec a
    ld e, c

jr_015_588d:
    ld b, $20
    reti


    rst $10
    ld d, c
    ld e, c
    ld e, e
    ld e, c
    ld d, [hl]
    ld e, c
    ld d, [hl]
    ld e, c
    rlca
    ld b, b
    reti


    rst $10
    ld l, d
    ld e, c
    ld [hl], h
    ld e, c
    ld l, a
    ld e, c
    ld l, a
    ld e, c
    ld [$d920], sp
    rst $10
    add e
    ld e, c
    adc l
    ld e, c
    adc b
    ld e, c
    adc b
    ld e, c
    add hl, bc
    jr nz, jr_015_588d

    rst $10
    sbc h
    ld e, c
    and [hl]
    ld e, c
    and c
    ld e, c
    and c
    ld e, c
    ld a, [bc]
    ld b, b
    reti


    rst $10
    or l
    ld e, c
    cp a
    ld e, c
    cp d
    ld e, c
    cp d
    ld e, c
    rst $38
    ld [$5121], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    db $ed
    ld b, e
    inc h
    ld d, b
    rla
    ld a, [bc]
    ld b, h
    inc h
    ld d, b
    rla
    rra

jr_015_58e0:
    ld b, h
    inc h
    ld d, b
    ld [$5d21], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld c, d
    ld b, h
    inc h
    ld d, b
    rla
    ld h, [hl]
    ld b, h
    inc h
    ld d, b
    rla
    ld [hl], h
    ld b, h
    inc h
    ld d, b
    ld [$6921], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    and [hl]
    ld b, h
    inc h
    ld d, b
    rla
    add $44
    inc h
    ld d, b
    rla
    db $d3
    ld b, h
    inc h
    ld d, b
    ld [$7521], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc bc
    ld b, l
    inc h
    ld d, b
    rla
    ld sp, $2445
    ld d, b
    rla
    ld c, b
    ld b, l
    inc h
    ld d, b
    ld [$8121], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld a, c
    ld b, l
    inc h
    ld d, b
    rla
    sbc c
    ld b, l
    inc h
    ld d, b
    rla
    xor d
    ld b, l
    inc h
    ld d, b
    ld [$8d21], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret nc

    ld b, l
    inc h
    ld d, b
    rla
    db $eb
    ld b, l
    inc h
    ld d, b
    rla
    db $fd
    ld b, l
    inc h
    ld d, b
    ld [$9921], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    dec e
    ld b, [hl]
    inc h
    ld d, b
    rla
    scf
    ld b, [hl]
    inc h
    ld d, b
    rla
    ld c, [hl]
    ld b, [hl]
    inc h
    ld d, b
    ld [$a521], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    add b
    ld b, [hl]
    inc h
    ld d, b
    rla
    sbc [hl]
    ld b, [hl]
    inc h
    ld d, b
    rla
    or c
    ld b, [hl]
    inc h
    ld d, b
    ld [$b121], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [$2446], a
    ld d, b
    rla
    ld [bc], a
    ld b, a
    inc h
    ld d, b
    rla
    add hl, de
    ld b, a
    inc h
    ld d, b
    ld [$bd21], sp
    ld e, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc h
    ld b, a
    inc h
    ld d, b
    rla
    ld b, c
    ld b, a
    inc h
    ld d, b
    rla
    ld d, b
    ld b, a
    inc h
    ld d, b
    rla
    add c
    ld b, a
    inc h
    ld d, b
    rla
    xor [hl]
    ld b, a
    inc h
    ld d, b
    rla
    db $eb
    ld b, a
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $5a02
    ld de, $59e6
    ld a, [$d61b]
    call Call_000_3160
    ld [$d61b], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a

jr_015_59ec:
    ld a, e
    ld e, d
    sub h
    ld e, d
    xor l
    ld e, d
    add $5a
    rst $18
    ld e, d
    ld hl, sp+$5a
    ld de, $2a5b
    ld e, e
    ld b, e
    ld e, e
    ld e, h
    ld e, e
    ld [hl], l
    ld e, e
    ld bc, $db20
    rst $10
    add l
    ld e, d
    adc a
    ld e, d
    adc d
    ld e, d
    adc d
    ld e, d
    ld [bc], a
    jr nz, jr_015_59ec

    rst $10
    sbc [hl]
    ld e, d
    xor b
    ld e, d
    and e
    ld e, d
    and e
    ld e, d
    inc bc
    ld b, b
    db $db
    rst $10
    or a
    ld e, d
    pop bc
    ld e, d
    cp h
    ld e, d
    cp h
    ld e, d
    inc b
    jr nc, @-$23

    rst $10
    ret nc

    ld e, d
    jp c, $d55a

    ld e, d
    push de
    ld e, d
    dec b
    jr nc, @-$23

    rst $10
    jp hl


    ld e, d
    di
    ld e, d
    xor $5a
    xor $5a
    ld b, $40

jr_015_5a40:
    db $db
    rst $10
    ld [bc], a
    ld e, e
    inc c
    ld e, e
    rlca
    ld e, e
    rlca
    ld e, e
    rlca
    ld b, b
    db $db
    rst $10
    dec de
    ld e, e
    dec h
    ld e, e
    jr nz, @+$5d

    jr nz, jr_015_5ab1

    ld [$db40], sp
    rst $10
    inc [hl]
    ld e, e
    ld a, $5b
    add hl, sp
    ld e, e
    add hl, sp
    ld e, e
    add hl, bc
    jr nc, jr_015_5a40

    rst $10
    ld c, l
    ld e, e
    ld d, a
    ld e, e
    ld d, d
    ld e, e
    ld d, d
    ld e, e
    ld a, [bc]
    ld b, b
    db $db
    rst $10
    ld h, [hl]
    ld e, e
    ld [hl], b
    ld e, e
    ld l, e
    ld e, e
    ld l, e
    ld e, e
    rst $38
    ld [$0221], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    dec c
    ld c, b
    inc h
    ld d, b
    rla
    ccf
    ld c, b
    inc h
    ld d, b
    rla
    ld d, c
    ld c, b
    inc h
    ld d, b
    ld [$0e21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    adc [hl]
    ld c, b
    inc h
    ld d, b
    rla
    cp b
    ld c, b
    inc h
    ld d, b
    rla
    ret z

    ld c, b
    inc h
    ld d, b
    ld [$1a21], sp
    ld e, d

jr_015_5ab1:
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [$2448], a
    ld d, b
    rla
    jr z, jr_015_5b08

    inc h
    ld d, b
    rla
    ld [hl], $49
    inc h
    ld d, b
    ld [$2621], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [hl], c
    ld c, c
    inc h
    ld d, b
    rla
    sbc l
    ld c, c
    inc h
    ld d, b
    rla
    or e
    ld c, c
    inc h
    ld d, b
    ld [$3221], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret nc

    ld c, c
    inc h
    ld d, b
    rla
    rst $30
    ld c, c
    inc h
    ld d, b
    rla
    ld a, [bc]
    ld c, d
    inc h
    ld d, b
    ld [$3e21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    scf
    ld c, d
    inc h
    ld d, b
    rla

jr_015_5b08:
    ld e, c
    ld c, d
    inc h
    ld d, b
    rla
    ld h, l
    ld c, d
    inc h
    ld d, b
    ld [$4a21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sbc c
    ld c, d
    inc h
    ld d, b
    rla
    pop bc
    ld c, d
    inc h
    ld d, b
    rla
    ret c

    ld c, d
    inc h
    ld d, b
    ld [$5621], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    db $fd
    ld c, d
    inc h
    ld d, b
    rla
    ld hl, $244b
    ld d, b
    rla
    ld l, $4b
    inc h
    ld d, b
    ld [$6221], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld c, h
    ld c, e
    inc h
    ld d, b
    rla
    ld a, b
    ld c, e
    inc h
    ld d, b
    rla
    add e
    ld c, e
    inc h
    ld d, b
    ld [$6e21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    call z, Call_000_244b
    ld d, b
    rla
    rst $20
    ld c, e
    inc h
    ld d, b
    rla
    db $f4
    ld c, e
    inc h
    ld d, b
    rla
    rra
    ld c, h
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $5bb3
    ld de, $5b8d
    ld a, [$d61c]
    call Call_000_3160
    ld [$d61c], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    inc l
    ld e, h
    ld b, l
    ld e, h
    ld e, [hl]
    ld e, h
    ld [hl], a
    ld e, h
    sub b
    ld e, h
    xor c
    ld e, h
    jp nz, $db5c

    ld e, h
    db $f4
    ld e, h
    dec c
    ld e, l
    ld h, $5d
    dec hl
    ld e, l
    jr nc, jr_015_5c0a

    dec [hl]
    ld e, l
    ld a, [hl-]
    ld e, l
    ccf
    ld e, l
    ld bc, $e130
    rst $10
    ld [hl], $5c
    ld b, b
    ld e, h
    dec sp
    ld e, h
    dec sp
    ld e, h
    ld [bc], a
    ld b, b
    pop hl
    rst $10
    ld c, a
    ld e, h
    ld e, c
    ld e, h

jr_015_5bc7:
    ld d, h
    ld e, h
    ld d, h
    ld e, h
    inc bc
    ld b, b
    pop hl
    rst $10
    ld l, b
    ld e, h
    ld [hl], d
    ld e, h
    ld l, l
    ld e, h
    ld l, l
    ld e, h
    inc b
    ld b, b
    pop hl
    rst $10
    add c
    ld e, h
    adc e
    ld e, h
    add [hl]
    ld e, h
    add [hl]
    ld e, h
    dec b
    jr nc, jr_015_5bc7

    rst $10
    sbc d
    ld e, h
    and h
    ld e, h
    sbc a
    ld e, h
    sbc a
    ld e, h
    ld b, $20
    pop hl
    rst $10
    or e
    ld e, h
    cp l
    ld e, h

jr_015_5bf7:
    cp b
    ld e, h
    cp b
    ld e, h
    rlca
    ld b, b
    pop hl
    rst $10
    call z, $d65c
    ld e, h
    pop de
    ld e, h
    pop de
    ld e, h
    ld [$e120], sp

jr_015_5c0a:
    rst $10
    push hl
    ld e, h
    rst $28
    ld e, h
    ld [$ea5c], a
    ld e, h
    add hl, bc
    jr nc, jr_015_5bf7

    rst $10
    cp $5c
    ld [$035d], sp
    ld e, l
    inc bc
    ld e, l
    ld a, [bc]
    ld b, b
    pop hl
    rst $10
    rla
    ld e, l
    ld hl, $1c5d
    ld e, l
    inc e
    ld e, l
    rst $38
    ld [$b321], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld d, d
    ld d, e
    inc h
    ld d, b
    rla
    ld [hl], l
    ld d, e
    inc h
    ld d, b
    rla
    add d
    ld d, e
    inc h
    ld d, b
    ld [$bf21], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor a
    ld d, e
    inc h
    ld d, b
    rla
    ret


    ld d, e
    inc h
    ld d, b
    rla
    ret nc

    ld d, e
    inc h
    ld d, b
    ld [$cb21], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    push af
    ld d, e
    inc h
    ld d, b
    rla
    ld c, $54
    inc h
    ld d, b
    rla
    rra
    ld d, h
    inc h
    ld d, b
    ld [$d721], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    jr c, jr_015_5cd8

    inc h
    ld d, b
    rla
    ld d, l
    ld d, h
    inc h
    ld d, b
    rla
    ld e, [hl]
    ld d, h
    inc h
    ld d, b
    ld [$e321], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld a, [hl]
    ld d, h
    inc h
    ld d, b
    rla
    sbc d
    ld d, h
    inc h
    ld d, b
    rla
    xor c
    ld d, h
    inc h
    ld d, b
    ld [$ef21], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    reti


    ld d, h
    inc h
    ld d, b
    rla
    db $f4
    ld d, h
    inc h
    ld d, b
    rla
    rst $38
    ld d, h
    inc h
    ld d, b
    ld [$fb21], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cpl
    ld d, l
    inc h
    ld d, b
    rla
    ld c, d
    ld d, l
    inc h
    ld d, b
    rla
    ld e, a

jr_015_5cd8:
    ld d, l
    inc h
    ld d, b
    ld [$0721], sp
    ld e, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld a, l
    ld d, l
    inc h
    ld d, b
    rla
    adc d
    ld d, l
    inc h
    ld d, b
    rla
    sub h
    ld d, l
    inc h
    ld d, b
    ld [$1321], sp
    ld e, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cp c
    ld d, l
    inc h
    ld d, b
    rla
    push de
    ld d, l
    inc h
    ld d, b
    rla
    db $dd
    ld d, l
    inc h
    ld d, b
    ld [$1f21], sp
    ld e, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    nop
    ld d, [hl]
    inc h
    ld d, b
    rla
    ld a, [de]
    ld d, [hl]
    inc h
    ld d, b
    rla
    ld l, $56
    inc h
    ld d, b
    rla
    ld c, c
    ld d, [hl]
    inc h
    ld d, b
    rla
    ld [hl], a
    ld d, [hl]
    inc h
    ld d, b
    rla
    ret c

    ld d, [hl]
    inc h
    ld d, b
    rla
    ld hl, $2457
    ld d, b
    rla
    ld b, a
    ld d, a
    inc h
    ld d, b
    rla
    add d
    ld d, a
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $5d73
    ld de, $5d57
    ld a, [$d61d]
    call Call_000_3160
    ld [$d61d], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    db $ec
    ld e, l
    or $5d
    nop
    ld e, [hl]
    ld a, [bc]
    ld e, [hl]
    inc d
    ld e, [hl]

jr_015_5d67:
    ld e, $5e
    jr z, @+$60

    ld [hl-], a
    ld e, [hl]
    inc a
    ld e, [hl]
    ld b, [hl]
    ld e, [hl]
    and $5e

jr_015_5d73:
    ld bc, $e540
    rst $10
    ld d, b
    ld e, [hl]
    ld e, d
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld [bc], a
    jr nc, jr_015_5d67

    rst $10
    ld e, a
    ld e, [hl]
    ld l, c
    ld e, [hl]
    ld h, h
    ld e, [hl]
    ld h, h
    ld e, [hl]
    inc bc
    jr nc, jr_015_5d73

    rst $10
    ld l, [hl]
    ld e, [hl]
    ld a, b
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    inc b
    ld b, b
    push hl
    rst $10
    ld a, l
    ld e, [hl]
    add a
    ld e, [hl]
    add d
    ld e, [hl]
    add d
    ld e, [hl]

jr_015_5da3:
    dec b
    ld b, b
    push hl
    rst $10
    adc h
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    sub c
    ld e, [hl]
    sub c
    ld e, [hl]
    ld b, $40
    push hl
    rst $10
    sbc e
    ld e, [hl]
    and l
    ld e, [hl]
    and b
    ld e, [hl]
    and b
    ld e, [hl]
    rlca
    jr nc, jr_015_5da3

    rst $10
    xor d
    ld e, [hl]
    or h
    ld e, [hl]
    xor a
    ld e, [hl]
    xor a
    ld e, [hl]
    ld [$e540], sp
    rst $10
    cp c
    ld e, [hl]
    jp $be5e


    ld e, [hl]
    cp [hl]
    ld e, [hl]
    add hl, bc
    ld b, b
    push hl
    rst $10
    ret z

    ld e, [hl]
    jp nc, $cd5e

    ld e, [hl]
    call $0a5e
    ld b, b
    push hl
    rst $10
    rst $10
    ld e, [hl]
    pop hl
    ld e, [hl]
    call c, $dc5e
    ld e, [hl]
    rst $38
    ld [$7321], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$7f21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$8b21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9721], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$a321], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$af21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$bb21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$c721], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$d321], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$df21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    db $eb
    ld e, b
    inc h
    ld d, b
    rla
    inc c
    ld e, c
    inc h
    ld d, b
    rla
    inc e
    ld e, c
    inc h
    ld d, b
    rla
    ccf
    ld e, c
    inc h
    ld d, b
    rla
    ld h, c
    ld e, c
    inc h
    ld d, b
    rla
    ld [hl], l
    ld e, c
    inc h
    ld d, b
    rla
    adc a
    ld e, c
    inc h
    ld d, b
    rla
    or c
    ld e, c
    inc h
    ld d, b
    rla
    cp [hl]
    ld e, c
    inc h
    ld d, b
    rla
    call c, Call_000_2459
    ld d, b
    rla
    rst $30
    ld e, c
    inc h
    ld d, b
    rla
    cp $59
    inc h
    ld d, b
    rla
    ld a, [de]
    ld e, d
    inc h
    ld d, b
    rla
    ld c, b
    ld e, d
    inc h
    ld d, b
    rla
    ld c, a
    ld e, d
    inc h
    ld d, b
    rla
    ld l, a
    ld e, d
    inc h
    ld d, b
    rla
    adc l
    ld e, d
    inc h
    ld d, b
    rla
    sbc [hl]
    ld e, d
    inc h
    ld d, b
    rla
    ret nz

    ld e, d
    inc h
    ld d, b
    rla
    db $f4
    ld e, d
    inc h
    ld d, b
    rla
    ld bc, $245b
    ld d, b
    rla
    ld sp, $245b
    ld d, b
    rla
    ld d, e
    ld e, e
    inc h
    ld d, b
    rla
    ld e, l
    ld e, e
    inc h
    ld d, b
    rla
    adc a
    ld e, e
    inc h
    ld d, b
    rla
    xor [hl]
    ld e, e
    inc h
    ld d, b
    rla
    cp a
    ld e, e
    inc h
    ld d, b
    rla
    db $dd
    ld e, e
    inc h
    ld d, b
    rla
    ld sp, hl
    ld e, e
    inc h
    ld d, b
    rla
    ld a, [bc]
    ld e, h
    inc h
    ld d, b
    rla
    inc a
    ld e, h
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $5f16
    ld de, $5efe
    ld a, [$d61e]
    call Call_000_3160
    ld [$d61e], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    add e
    ld e, a
    adc l
    ld e, a
    sub a
    ld e, a
    and c
    ld e, a
    xor e
    ld e, a
    or l
    ld e, a
    cp a
    ld e, a
    ret


    ld e, a
    db $d3
    ld e, a
    ld bc, $e900
    rst $10
    db $dd
    ld e, a
    rst $20
    ld e, a
    ld [c], a
    ld e, a
    ld [c], a
    ld e, a
    ld [bc], a
    nop
    jp hl


    rst $10
    db $ec
    ld e, a
    or $5f
    pop af
    ld e, a
    pop af
    ld e, a
    inc bc
    ld b, b
    jp hl


    rst $10
    ei
    ld e, a
    dec b
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    inc b
    ld b, b
    jp hl


    rst $10
    ld a, [bc]
    ld h, b
    inc d
    ld h, b
    rrca
    ld h, b
    rrca
    ld h, b
    dec b
    ld b, b
    jp hl


    rst $10

jr_015_5f4a:
    add hl, de
    ld h, b
    inc hl
    ld h, b
    ld e, $60
    ld e, $60
    ld b, $40
    jp hl


    rst $10
    jr z, jr_015_5fb8

    ld [hl-], a
    ld h, b
    dec l
    ld h, b
    dec l
    ld h, b
    rlca
    jr nc, jr_015_5f4a

    rst $10
    scf
    ld h, b
    ld b, c
    ld h, b
    inc a
    ld h, b
    inc a
    ld h, b
    ld [$e900], sp
    rst $10
    ld b, [hl]
    ld h, b
    ld d, b
    ld h, b
    ld c, e
    ld h, b
    ld c, e
    ld h, b
    add hl, bc
    nop
    jp hl


    rst $10
    ld d, l
    ld h, b
    ld e, a
    ld h, b
    ld e, d
    ld h, b
    ld e, d
    ld h, b
    rst $38
    ld [$1621], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$2221], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$2e21], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$3a21], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$4621], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$5221], sp

jr_015_5fb8:
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$5e21], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$6a21], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$7621], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cp b
    ld e, a
    inc h
    ld d, b
    rla
    ld [c], a
    ld e, a
    inc h
    ld d, b
    rla
    jp hl


    ld e, a
    inc h
    ld d, b
    rla
    ld b, $60
    inc h
    ld d, b
    rla
    ld a, [hl+]
    ld h, b
    inc h
    ld d, b
    rla
    ld a, [hl-]
    ld h, b
    inc h
    ld d, b
    rla
    ld e, d
    ld h, b
    inc h
    ld d, b
    rla
    ld a, [hl]
    ld h, b
    inc h
    ld d, b
    rla
    add l
    ld h, b
    inc h
    ld d, b
    rla
    and b
    ld h, b
    inc h
    ld d, b
    rla
    cp a
    ld h, b
    inc h
    ld d, b
    rla
    call z, $2460
    ld d, b
    rla
    rst $38
    ld h, b
    inc h
    ld d, b
    rla
    dec e
    ld h, c
    inc h
    ld d, b
    rla
    dec l
    ld h, c
    inc h
    ld d, b
    rla
    ld c, d
    ld h, c
    inc h
    ld d, b
    rla
    ld l, [hl]
    ld h, c
    inc h
    ld d, b
    rla
    add [hl]
    ld h, c
    inc h
    ld d, b
    rla
    jp Jump_000_2461


    ld d, b
    rla
    db $e4
    ld h, c
    inc h
    ld d, b
    rla
    ld a, [c]
    ld h, c
    inc h
    ld d, b
    rla
    dec bc
    ld h, d
    inc h
    ld d, b
    rla
    dec hl
    ld h, d
    inc h
    ld d, b
    rla
    ld b, h
    ld h, d
    inc h
    ld d, b
    rla
    ld [hl], l
    ld h, d
    inc h
    ld d, b
    rla
    sub a
    ld h, d
    inc h
    ld d, b
    rla
    xor a
    ld h, d
    inc h
    ld d, b
    ld [$0404], sp
    cpl
    ld d, d
    ld [hl], e
    ld h, b
    ld [hl], b
    ld h, b
    nop
    rst $08
    ld h, b
    jp Jump_000_3c3c


    ld [hl], l
    ld h, b
    ld [$28fa], sp
    rst $10
    bit 3, a
    jr nz, jr_015_60a8

    ld hl, $60b1
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_015_60a3

    ld bc, $4c01
    call Call_000_3e2e
    jr nc, jr_015_609e

    ld hl, $d728
    set 3, [hl]
    ld hl, $60b6
    jr jr_015_60ab

jr_015_609e:
    ld hl, $60ca
    jr jr_015_60ab

jr_015_60a3:
    ld hl, $60c0
    jr jr_015_60ab

jr_015_60a8:
    ld hl, $60c5

jr_015_60ab:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    db $10
    ld b, l
    daa
    ld d, b
    rla
    ld d, h
    ld b, l
    daa
    dec bc
    rla
    and h
    ld b, l
    daa
    ld d, b
    rla
    ld bc, $2746
    ld d, b
    rla
    ld [hl+], a
    ld b, [hl]
    daa
    ld d, b
    rla
    ld c, h
    ld b, [hl]
    daa
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07ff], sp
    inc bc
    ld [$00ff], sp
    ld bc, $0827
    ld b, $ff
    db $d3
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [de], a
    inc b
    ld a, [bc]
    ld c, b
    ld h, c
    ld hl, sp+$60
    push af
    ld h, b
    nop
    ld de, $c361
    inc a
    inc a
    db $76
    inc h
    add d
    inc h
    ld [bc], a
    ld h, c
    rlca
    ld h, c
    inc c
    ld h, c
    rla
    ld l, e
    ld b, a
    daa
    ld d, b
    rla
    or d
    ld b, a
    daa
    ld d, b
    rla
    call c, Call_000_2747
    ld d, b
    rrca
    inc bc
    ld bc, $040c
    ld a, d
    ld bc, $0110
    ld a, h
    ld bc, $0001
    ld a, a
    ld bc, $0e01
    dec b
    inc b
    ld h, $07
    add hl, bc
    rst $38
    ret nc

    ld bc, $0726
    ld a, [bc]
    rst $38
    ret nc

    ld [bc], a
    ld a, [bc]
    add hl, bc
    rla
    rst $38
    rst $38
    inc bc
    dec c
    ld [$fe12], sp
    ld bc, $ff04
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    jr @+$1b

    ld bc, $0301
    dec h
    ld [bc], a
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
    dec c
    inc b
    inc b
    ccf
    ld d, d
    ld a, a
    ld h, c
    ld a, h
    ld h, c
    nop
    ld hl, $c362
    inc a
    inc a
    add c
    ld h, c
    ld [$28fa], sp
    rst $10
    bit 4, a
    jr nz, jr_015_61b4

    ld hl, $61bd
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_015_61af

    ld bc, $4d01
    call Call_000_3e2e
    jr nc, jr_015_61aa

    ld hl, $d728
    set 4, [hl]
    ld hl, $61c2
    jr jr_015_61b7

jr_015_61aa:
    ld hl, $621c
    jr jr_015_61b7

jr_015_61af:
    ld hl, $6212
    jr jr_015_61b7

jr_015_61b4:
    ld hl, $6217

jr_015_61b7:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    sub l
    ld b, [hl]
    jr z, jr_015_6212

    rla
    add sp, $46
    jr z, @+$0d

    ld d, b
    ld d, c
    jp nz, Jump_015_7fd8

    cp d
    cp a
    ld c, a
    or l
    call nz, $c9ba
    ld a, a
    xor b
    sbc l
    xor e
    ld a, a
    jr nc, @-$17

    ld d, c
    call $b23e
    jp nz, $2bd8

    or l
    jp z, $894f

    add c
    add [hl]
    xor e
    rlca
    cp h
    or [hl]
    ld a, a
    jp nz, Jump_015_7fda

    push bc
    sbc $30
    ld h, $4f
    cp d
    ret


    ld a, a
    or d
    or d
    jp nz, $2bd8

    or l
    push bc
    rst $10
    ld c, a
    db $d3
    rst $18
    call nz, $b27f
    or d
    db $d3
    sbc $26
    ld a, a
    jp nz, $d9da

    sbc $2c
    ldh [$e7], a
    ld d, a

jr_015_6212:
    rla
    scf
    ld b, a
    jr z, @+$52

    rla
    ld e, b
    ld b, a
    jr z, jr_015_626c

    rla
    add d
    ld b, a
    jr z, @+$52

    inc c
    inc bc
    nop
    ld [bc], a
    ld [$07ff], sp
    ld [bc], a
    rlca
    rst $38
    rlca
    inc bc
    rlca
    rst $38
    nop
    ld bc, $0727
    add hl, bc
    rst $38
    db $d3
    ld bc, $c6f4
    nop
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    cpl
    ld d, d
    ld d, d
    ld h, d
    ld c, a
    ld h, d
    nop
    ld e, c
    ld h, h
    jp Jump_000_3c3c


    ld d, h
    ld h, d
    ld [$f4cd], sp
    ld [hl], $fa
    ld c, b
    jp c, $c2a7

    pop hl
    ld h, d
    ld hl, $640f
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a

jr_015_626c:
    ld hl, $643b
    jp nz, Jump_015_6409

    ld a, [$d163]
    dec a
    ld hl, $6445
    jp z, Jump_015_6409

    ld hl, $6414
    call Call_000_3c49
    xor a
    ld [$cfcb], a
    ld [$d07d], a
    ld [$cc35], a
    call Call_000_13fc
    push af
    call Call_000_3dd4
    call Call_000_3dbe
    call Call_000_20ba
    pop af
    ld hl, $6437
    jp c, Jump_015_6409

    ld hl, $571b
    ld b, $08
    call Call_000_35d6
    ld hl, $644a
    jp c, Jump_015_6409

    xor a
    ld [$cc2b], a
    ld a, [$cf92]
    ld hl, $d2b5
    call Call_000_15ba
    ld hl, $6419
    call Call_000_3c49
    ld a, $01
    ld [$da48], a
    ld a, $03
    ld [$cf95], a
    call Call_000_3a68
    xor a
    ld [$cf95], a
    call Call_000_391f
    ld a, [$cf91]
    call Call_000_13d0
    ld hl, $641e
    jp Jump_015_6409


    xor a
    ld hl, $da49
    call Call_000_15ba
    ld a, $03
    ld [$cc49], a
    call Call_000_1372
    ld hl, $4f43
    ld b, $16
    call Call_000_35d6
    ld a, d
    cp $64
    jr c, jr_015_6315

    ld d, $64
    ld hl, $4f6a
    ld b, $16
    call Call_000_35d6
    ld hl, $da6d
    ldh a, [$96]
    ld [hl+], a
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    ld d, $64

jr_015_6315:
    xor a
    ld [$cd3e], a
    ld hl, $da62
    ld a, [hl]
    ld [$cd3d], a
    cp d
    ld [hl], d
    ld hl, $6432
    jr z, jr_015_6333

    ld a, [$cd3d]
    ld b, a
    ld a, d
    sub b
    ld [$cd3e], a
    ld hl, $6423

jr_015_6333:
    call Call_000_3c49
    ld a, [$d163]
    cp $06
    ld hl, $6440
    jp z, Jump_015_6403

    ld de, $cd3f
    xor a
    ld [de], a
    inc de
    ld [de], a
    ld hl, $cd41
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    ld a, [$cd3e]
    inc a
    ld b, a
    ld c, $02

jr_015_6357:
    push hl
    push de
    push bc
    ld a, $0b
    call Call_000_3e6d
    pop bc
    pop de
    pop hl
    dec b
    jr nz, jr_015_6357

    ld hl, $6428
    call Call_000_3c49
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    call Call_000_35ec
    ld hl, $6437
    ld a, [$cc26]
    and a
    jp nz, Jump_015_6403

    ld hl, $cd3f
    ldh [$9f], a
    ld a, [hl+]
    ldh [$a0], a
    ld a, [hl]
    ldh [$a1], a
    call Call_000_35a6
    jr nc, jr_015_6396

    ld hl, $6454
    jp Jump_015_6403


jr_015_6396:
    xor a
    ld [$da48], a
    ld hl, $cd3e
    ld [hl+], a
    inc hl
    ld de, $d349
    ld c, $03
    ld a, $0c
    call Call_000_3e6d
    ld a, $b2
    call Call_000_3740
    ld a, $13
    ld [$d125], a
    call Call_000_30e8
    ld hl, $644f
    call Call_000_3c49
    ld a, $02
    ld [$cf95], a
    call Call_000_3a68
    ld a, [$da5f]
    ld [$cf91], a
    ld a, [$d163]
    dec a
    push af
    ld bc, $002c
    push bc
    ld hl, $d173
    call Call_000_3a87
    ld d, h
    ld e, l
    ld a, $01
    ld [$cee9], a
    ld a, $3e
    call Call_000_3e6d
    pop bc
    pop af
    ld hl, $d16c
    call Call_000_3a87
    ld d, h
    ld e, l
    ld bc, $0021
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$cf91]
    call Call_000_13d0
    ld hl, $642d
    jr jr_015_6409

Jump_015_6403:
    ld a, [$cd3d]
    ld [$da62], a

Jump_015_6409:
jr_015_6409:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    sub l
    ld l, e
    ld [hl+], a
    ld d, b
    rla
    call nc, Call_000_226b
    ld d, b
    rla
    ldh a, [rOCPD]
    ld [hl+], a
    ld d, b
    rla
    add hl, de
    ld l, h
    ld [hl+], a
    ld d, b
    rla
    ld [hl-], a
    ld l, h
    ld [hl+], a
    ld d, b
    rla
    ld a, l
    ld l, h
    ld [hl+], a
    ld d, b
    rla
    xor [hl]
    ld l, h
    ld [hl+], a
    ld d, b
    rla
    pop bc
    ld l, h
    ld [hl+], a
    ld d, b
    rla
    nop
    ld b, b
    inc hl
    rla
    inc de
    ld b, b
    inc hl
    ld d, b
    rla
    jr nz, jr_015_6483

    inc hl
    ld d, b
    rla
    ld b, c
    ld b, b
    inc hl
    ld d, b
    rla
    ld h, e
    ld b, b
    inc hl
    ld d, b
    rla
    sub b
    ld b, b
    inc hl
    ld d, b
    rla
    xor l
    ld b, b
    inc hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    nop
    ld bc, $0710
    ld b, $ff
    db $d3
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    cpl
    ld d, d
    add d
    ld h, h
    ld a, a
    ld h, h
    nop
    sbc $64
    jp Jump_000_3c3c


    add h

jr_015_6483:
    ld h, h
    ld [$28fa], sp
    rst $10
    bit 5, a
    jr nz, jr_015_64b7

    ld hl, $64c0
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_015_64b2

    ld bc, $4e01
    call Call_000_3e2e
    jr nc, jr_015_64ad

    ld hl, $d728
    set 5, [hl]
    ld hl, $64c5
    jr jr_015_64ba

jr_015_64ad:
    ld hl, $64d9
    jr jr_015_64ba

jr_015_64b2:
    ld hl, $64cf
    jr jr_015_64ba

jr_015_64b7:
    ld hl, $64d4

jr_015_64ba:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    or e
    ld c, c
    inc hl
    ld d, b
    rla
    nop
    ld c, d
    inc hl
    dec bc
    rla
    ld c, a
    ld c, d
    inc hl
    ld d, b
    rla
    and c
    ld c, d
    inc hl
    ld d, b
    rla
    jp nz, Jump_000_234a

    ld d, b
    rla
    jr c, @+$4d

    inc hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    rst $38
    rlca
    inc bc
    inc bc
    rst $38
    nop
    ld bc, $0827
    ld b, $ff
    db $d3
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld d, $09
    dec c
    ld l, l
    ld h, [hl]
    ld a, l
    ld h, l
    inc b
    ld h, l
    nop
    inc de
    ld h, [hl]
    call Call_015_651a
    call Call_000_3c3c
    ld hl, $6585
    ld de, $6577
    ld a, [$d649]
    call Call_000_3160
    ld [$d649], a
    ret


Call_015_651a:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $653e
    call Call_015_6541
    call Call_015_656d
    ld a, [$d832]
    bit 0, a
    ret nz

    ld a, $5f
    ld [$d09f], a
    ld bc, $0403
    ld a, $17
    jp Jump_000_3e6d


    inc b
    inc bc
    rst $38

Call_015_6541:
    push hl
    ld hl, $d73f
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_015_654d:
    ld a, [hl+]
    cp $ff
    jr z, jr_015_6569

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_015_655e

    inc hl
    jr jr_015_654d

jr_015_655e:
    ld a, [hl+]
    cp c
    jr nz, jr_015_654d

    ld hl, $d73f
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_015_6569:
    xor a
    ldh [$e0], a
    ret


Call_015_656d:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d832
    set 0, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    xor d
    ld h, l
    ret z

    ld h, l
    jp nc, $dc65

    ld h, l
    ld [bc], a
    ld b, b
    ld sp, $e6d8
    ld h, l
    ldh a, [$65]
    db $eb
    ld h, l
    db $eb
    ld h, l
    inc bc
    ld b, b
    ld sp, $f5d8
    ld h, l
    rst $38
    ld h, l
    ld a, [$fa65]
    ld h, l
    inc b
    ld b, b
    ld sp, $04d8
    ld h, [hl]
    ld c, $66
    add hl, bc
    ld h, [hl]
    add hl, bc
    ld h, [hl]
    rst $38
    ld [$38fa], sp
    ret c

    bit 7, a
    ld hl, $65c3
    jr nz, jr_015_65b8

    ld hl, $65be

jr_015_65b8:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    call nz, Call_000_214a
    ld d, b
    rla
    and $4a
    ld hl, $0850
    ld hl, $6585
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9121], sp
    ld h, l
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9d21], sp
    ld h, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    db $fd
    ld c, d
    ld hl, $1750
    jr @+$4d

    ld hl, $1750
    ld a, [hl+]
    ld c, e
    ld hl, $1750
    ld d, a
    ld c, e
    ld hl, $1750
    ld [hl], e
    ld c, e
    ld hl, $1750
    add c
    ld c, e
    ld hl, $1750
    or c
    ld c, e
    ld hl, $1750
    push de
    ld c, e
    ld hl, $1750
    jp hl


    ld c, e
    ld hl, $2e50
    rlca
    nop
    db $10
    ld bc, $00e9
    ld c, $00
    call nc, Call_000_1200
    nop
    db $ec
    dec bc
    inc bc
    ld b, $d5
    rrca
    inc bc
    inc b
    rst $08
    dec b
    dec bc
    dec b
    rst $08
    add hl, bc
    dec bc
    inc bc
    push de
    nop
    inc b
    inc l
    ld b, $08
    rst $38
    rst $38
    ld bc, $0618
    rla
    rst $38
    jp nc, $e642

    inc hl
    jr nz, jr_015_6649

    ld c, $ff
    ret nc

    ld b, e
    db $e4
    add hl, bc

jr_015_6649:
    jr jr_015_665e

    db $10
    rst $38
    db $d3
    ld b, h
    and $24
    inc b
    rst $00
    nop
    db $10
    inc bc
    rst $00
    nop
    ld c, $05
    rst $00
    nop
    ld [de], a
    ld e, h

jr_015_665e:
    rst $00
    dec bc
    inc bc
    add d
    rst $00
    rrca
    inc bc
    daa
    rst $00
    dec b
    dec bc
    ld c, l
    rst $00
    add hl, bc
    dec bc
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld h, c
    ld h, c
    ld h, d
    inc h
    ld a, l
    ld a, h
    dec a
    dec a
    ld a, $44
    inc [hl]
    inc [hl]
    ld b, [hl]
    ld c, $0e
    ld h, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, h
    ld [hl], $36
    ld b, [hl]
    ld c, $2f
    ld b, [hl]
    ld c, $40
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, h
    ld [hl], $36
    ld d, [hl]
    ld c, $57
    ld d, c
    ld c, $44
    ld b, e
    ld b, e
    add hl, bc
    ld b, [hl]
    ld b, h
    scf
    ld [hl], $0e
    ld c, $2f
    ld b, [hl]
    ld c, $44
    ld c, $0e
    ld c, $46
    ld b, h
    cpl
    scf
    ld e, d
    ld c, $47
    ld b, [hl]
    ld c, $44
    ld b, a
    ld c, $09
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld c, d
    ld c, $57
    ld c, d
    ld c, $48
    ld e, b
    ld c, $57
    ld d, c
    ld [de], a
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    call Call_000_36f4
    call Call_000_3dd4
    call Call_000_190f
    xor a
    ld [$cfcb], a
    ld hl, $d730
    set 6, [hl]
    call Call_000_0061
    ld hl, $7d88
    ld de, $9700
    ld bc, $0010
    ld a, $0b
    call Call_000_17f7
    ld hl, $c3a0
    ld bc, $1012
    ld a, $27
    call Call_000_3e6d
    ld hl, $6784
    ld c, $05

jr_015_6715:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call Call_000_1955
    pop hl
    inc hl
    pop bc
    dec c
    jr nz, jr_015_6715

    ld hl, $c3fa
    ld de, $d158
    call Call_000_1955
    ld b, $01
    ld hl, $44dd
    call Call_000_35d6
    ld hl, $c301
    ld bc, $8028

jr_015_673e:
    ld a, [hl]
    add $21
    ld [hl+], a
    inc hl
    ld a, b
    ld [hl+], a
    inc hl
    dec c
    jr nz, jr_015_673e

    call Call_000_007b
    ld b, $01
    ld hl, $5ae6
    call Call_000_35d6
    ld b, $08
    call Call_000_3def
    call Call_000_3dd7
    call Call_000_3ddc
    ld a, $90
    ldh [rOBP0], a
    call Call_000_3865
    ld hl, $d730
    res 6, [hl]
    call Call_000_3dd4
    call Call_000_3dbe
    call Call_000_3dd7
    jp Jump_000_3ddc


    ld hl, $d158
    ld bc, $ff00

jr_015_677d:
    ld a, [hl+]
    cp $50
    ret z

    dec c
    jr jr_015_677d

    sbc b
    ld h, a
    call $a2c3
    ld h, a
    di
    jp Jump_015_67a9


    rst $38
    jp Jump_015_67aa


    ld a, [de]
    call nz, Call_015_67ee
    jp hl


    call nz, $8370
    xor b
    xor a
    xor e
    xor [hl]
    xor h
    and b
    ld [hl], b
    ld d, b
    adc a
    xor e
    and b
    cp b
    and h
    or c
    ld d, b

Jump_015_67a9:
    ld d, b

Jump_015_67aa:
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or d
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld c, [hl]
    and e
    xor b
    xor a
    xor e
    xor [hl]
    xor h
    and b
    ld a, a
    and d
    and h
    or c
    or e
    xor b
    and l
    xor b
    and h
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, [hl]
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, [hl]
    ld d, h
    add e
    add h
    sub a
    add sp, $50

Call_015_67ee:
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add l
    sub c
    add h
    add b
    adc d
    ld d, b
    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_6903
    ld a, [hl+]
    ldh [$eb], a
    inc hl
    ld a, [hl]
    ldh [$ec], a
    ld de, $00fe
    add hl, de
    ld a, [hl+]
    ldh [$ed], a
    ld a, [hl]
    ldh [$ee], a
    ret


    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_6903
    ld a, [hl+]
    ld [$d130], a
    inc hl
    ld a, [hl]
    ld [$d131], a
    ld de, $00fe
    add hl, de
    ld a, [hl+]
    ld [$d132], a
    ld a, [hl]
    ld [$d133], a
    ret


    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_6903
    ldh a, [$eb]
    ld [hl+], a
    inc hl
    ldh a, [$ec]
    ld [hl], a
    ld de, $00fe
    add hl, de
    ldh a, [$ed]
    ld [hl+], a
    ldh a, [$ee]
    ld [hl], a
    ret


    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_6903
    ld a, [$d130]
    ld [hl+], a
    inc hl
    ld a, [$d131]
    ld [hl], a
    ld de, $00fe
    add hl, de
    ld a, [$d132]
    ld [hl+], a
    ld a, [$d133]
    ld [hl], a
    ret


    ld a, [$cf13]
    swap a
    ld [$cd3d], a
    call Call_015_698e
    ld a, [$cd3f]
    and a
    jr z, jr_015_689c

    cp $04
    jr z, jr_015_68b0

    cp $08
    jr z, jr_015_68dc

    jr jr_015_68c6

jr_015_689c:
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    call Call_000_3633
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    xor a
    ld b, a
    jr jr_015_68f0

jr_015_68b0:
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    call Call_000_3633
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    ld b, $00
    ld a, $40
    jr jr_015_68f0

jr_015_68c6:
    ld a, [$cd41]
    ld b, a
    ld a, $40
    call Call_000_3633
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    ld b, $00
    ld a, $c0
    jr jr_015_68f0

jr_015_68dc:
    ld a, [$cd41]
    ld b, a
    ld a, $40
    call Call_000_3633
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    ld b, $00
    ld a, $80

jr_015_68f0:
    ld hl, $cc97
    ld de, $cc97
    call Call_000_36e0
    ld [hl], $ff
    ld a, [$cf13]
    ldh [$8c], a
    jp Jump_000_363d


Call_015_6903:
    push de
    add hl, de
    ldh a, [$8c]
    swap a
    ld d, $00
    ld e, a
    add hl, de
    pop de
    ret


    push hl
    push de
    ld a, [$cd3d]
    add $02
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    sub $ff
    jr nz, jr_015_6925

    jp Jump_015_6988


jr_015_6925:
    ld a, [$cd3d]
    add $09
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd3f], a
    call Call_015_698e
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    cp b
    jr z, jr_015_694e

    ld a, [$cd41]
    ld b, a
    ld a, $40
    cp b
    jr z, jr_015_6961

    xor a
    jp Jump_015_6988


jr_015_694e:
    ld a, [$cd41]
    ld b, a
    ld a, $40
    call Call_000_3633
    jr z, jr_015_6988

    call Call_015_69af
    jr c, jr_015_6975

    xor a
    jr jr_015_6988

jr_015_6961:
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    call Call_000_3633
    jr z, jr_015_6988

    call Call_015_69af
    jr c, jr_015_6975

    xor a
    jp Jump_015_6988


jr_015_6975:
    call Call_015_69e3
    ld a, [$cd3d]
    and a
    jr z, jr_015_6988

    ld hl, $cd60
    set 0, [hl]
    call Call_000_336a
    ld a, $ff

Jump_015_6988:
jr_015_6988:
    ld [$cd3d], a
    pop de
    pop hl
    ret


Call_015_698e:
    ld a, [$cd3d]
    add $04
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd40], a
    ld a, [$cd3d]
    add $06
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd41], a
    ret


Call_015_69af:
    ld b, a
    ld a, [$cd3e]
    cp b
    jr nc, jr_015_69b8

    jr jr_015_69e1

jr_015_69b8:
    ld a, [$cd3f]
    cp $00
    jr z, jr_015_69cd

    cp $04
    jr z, jr_015_69cd

    cp $08
    jr z, jr_015_69d7

    cp $0c
    jr z, jr_015_69d7

    jr jr_015_69e1

jr_015_69cd:
    ld a, [$cd41]
    ld b, a
    cp $40
    jr z, jr_015_69df

    jr jr_015_69e1

jr_015_69d7:
    ld a, [$cd40]
    ld b, a
    cp $3c
    jr nz, jr_015_69e1

jr_015_69df:
    scf
    ret


jr_015_69e1:
    and a
    ret


Call_015_69e3:
    ld a, [$d35e]
    cp $53
    jp z, Jump_015_6a42

    ld a, [$cd3d]
    add $04
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    cp $fc
    jr nz, jr_015_69fe

    ld a, $0c

jr_015_69fe:
    ld [$cd40], a
    ld a, [$cd3d]
    add $06
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd41], a
    ld a, [$cd3f]
    cp $00
    jr nz, jr_015_6a21

    ld a, [$cd40]
    cp $3c
    jr c, jr_015_6a42

    jr jr_015_6a46

jr_015_6a21:
    cp $04
    jr nz, jr_015_6a2e

    ld a, [$cd40]
    cp $3c
    jr nc, jr_015_6a42

    jr jr_015_6a46

jr_015_6a2e:
    cp $08
    jr nz, jr_015_6a3b

    ld a, [$cd41]
    cp $40
    jr nc, jr_015_6a42

    jr jr_015_6a46

jr_015_6a3b:
    ld a, [$cd41]
    cp $40
    jr nc, jr_015_6a46

Jump_015_6a42:
jr_015_6a42:
    ld a, $ff
    jr jr_015_6a47

jr_015_6a46:
    xor a

jr_015_6a47:
    ld [$cd3d], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_015_7fd8:
    nop
    nop

Jump_015_7fda:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
