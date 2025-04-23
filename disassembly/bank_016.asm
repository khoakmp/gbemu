; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    nop
    ld [de], a
    ld a, [bc]
    ld a, c
    ld b, b
    ret


    ld d, b
    or b
    ld d, b
    inc c
    ld a, [bc]
    add $4b
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]
    cp l
    ret z

    dec b
    ld b, c
    ld c, d
    db $38, $c8
    db $10
    inc d
    nop
    ld a, [bc]
    inc bc
    rst $00
    ld [hl+], a
    ld b, b
    rrca
    inc b
    ld bc, $0209
    ld c, c
    ld bc, $020a
    ld c, c
    rlca
    ld a, [bc]
    nop
    ld c, c
    dec c
    ld de, $4a00
    ld bc, $130f
    rlca
    ld b, $07
    add hl, de
    ld c, $ff
    db $d3
    ld b, c
    call $0604
    add hl, de
    rrca
    rst $38
    jp nc, $ce42

    ld [bc], a
    inc b
    inc de
    inc b
    rst $38
    db $d3
    ld b, e
    jp z, Jump_000_070a

    inc hl
    rrca
    rst $38
    jp nc, $cd44

    dec b
    ld b, $22
    rrca
    rst $38
    jp nc, $ce45

    inc bc
    inc b
    ld e, $17
    rst $38
    jp nc, $ca46

    dec bc
    db $fd
    add $01
    add hl, bc
    cp $c6
    ld bc, $2e0a
    rst $00
    rlca
    ld a, [bc]
    ld h, c
    rst $00
    dec c
    ld de, $7474
    ld [hl], h
    ld a, [bc]
    ld c, l
    ld c, l
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    jr nz, jr_016_4096

    ld hl, $5151
    ld d, c
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld l, b
    ld a, a
    ld l, c
    ld [hl], h
    ld [hl], h

jr_016_4096:
    ld [hl], h
    rlca
    cpl
    rlca
    rlca
    scf
    ld a, [hl-]
    ld a, [hl]
    rlca
    cpl
    rlca
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
    rlca
    rlca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    jr nz, @+$23

    ld sp, $3131
    ld sp, $3131
    ld sp, $7c31
    ld a, [hl]
    dec bc
    dec bc
    ld sp, $0b0b
    dec bc
    dec bc
    ld sp, $0831
    dec bc
    dec bc
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld sp, $3131
    ld sp, $3131
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld sp, $1d0b
    rra
    rra
    rra
    rra
    rra
    ld e, $0b
    ld sp, $650b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    dec bc
    ld sp, $510b
    ld h, e
    ld a, [bc]
    ld a, [bc]
    ld sp, $3131
    ld sp, $0b31
    ld a, [bc]
    ld c, l
    ld d, d
    ld d, d
    ld sp, $0b0a
    dec bc
    dec bc
    dec bc
    rra
    rra
    rra
    ld l, d
    ld sp, $5162
    ld d, c
    ld d, c
    ld d, c
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld sp, $0a4e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    add hl, bc
    ld e, $c6
    ld b, c
    rst $08
    ld d, c
    or [hl]
    ld d, c
    inc bc
    ld a, [bc]
    cp l
    ld c, d
    add sp, -$3a
    rrca
    inc d
    ld [$1627], sp
    rst $00
    inc b
    add l
    ld b, b
    ld [hl], l
    rst $00
    add hl, bc
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $4f
    ld b, c
    inc l
    dec b
    add hl, bc
    ld bc, $4f00
    ld a, [bc]
    ld bc, $4f01
    add hl, bc
    ld [$4f02], sp
    ld a, [bc]
    ld [$4f03], sp
    inc bc
    dec c
    nop
    ld d, b
    ld bc, $1103
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    inc c
    rst $38
    db $d3
    ld b, c
    ret nc

    inc bc
    dec bc
    dec c
    ld de, $d1ff
    ld b, d
    reti


    dec b
    inc c
    ld a, [bc]
    ld l, $ff
    pop de
    ld b, e
    ret nc

    inc b
    ld b, $07
    ld e, $ff
    jp nc, $cb44

    dec c
    inc c
    ld [$ff1e], sp
    db $d3
    ld b, l
    ret nc

    dec b
    ld b, $09
    ld e, $ff
    jp nc, $cb46

    ld c, $06
    ld a, [bc]
    ld e, $ff
    db $d3
    ld b, a
    rrc a
    dec bc
    ld de, $ff32
    ret nc

    ld c, b
    reti


    rlca
    ld b, $10
    scf
    rst $38
    jp nc, $cb49

    db $10
    sbc l
    rst $00
    add hl, bc
    ld bc, $c7c1
    ld a, [bc]
    ld bc, $c7a1
    add hl, bc
    ld [$c7c5], sp
    ld a, [bc]
    ld [$c737], sp
    inc bc
    dec c
    inc de
    inc de
    jr z, jr_016_41f6

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
    dec h
    jr z, jr_016_420f

    inc de
    inc de
    inc h
    ld d, a
    ld d, a
    dec h
    ld [bc], a
    inc bc
    ld [$1a1a], sp
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_016_41f6:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    inc de
    inc de
    rrca
    rrca
    jr z, jr_016_422b

    inc de
    inc de
    ld c, [hl]
    ld bc, $0101
    ld bc, $4d01
    ld sp, $4e31
    ld a, [bc]

jr_016_420f:
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    ld a, [bc]
    ld c, l
    inc de
    ld h, d
    ld [hl], h
    ld [hl], h
    jr z, @+$2b

    inc de
    inc de
    ld c, [hl]
    ld bc, $7474
    ld [hl], h
    ld bc, $1a4d
    ld a, [de]

jr_016_422b:
    ld c, [hl]
    ld a, [bc]
    daa
    ld a, [bc]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, [bc]
    daa
    ld a, [bc]
    ld c, l
    inc de
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc h
    dec h
    ld bc, $0d20
    ld hl, $5151
    ld [hl], h
    ld bc, $314d
    ld sp, $0a4e
    daa
    ld c, l
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld c, [hl]
    daa
    ld a, [bc]
    ld c, l
    inc de
    ld c, [hl]
    ld a, [bc]
    ld bc, $7777
    ld [hl], a
    scf
    ld a, l
    ld a, [hl]
    ld [hl], a
    ld bc, $0101
    ld c, l
    ld h, c
    ld h, c
    ld a, [bc]
    ld a, [bc]
    daa
    ld c, l
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    dec [hl]
    daa
    ld a, [bc]
    ld c, l
    inc de
    ld c, [hl]
    ld a, [bc]
    ld e, l
    ld a, $3b
    inc de
    inc de
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    daa
    dec [hl]
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld c, [hl]
    daa
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    daa
    jr z, jr_016_42c1

    inc de
    inc de
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    ld c, l
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, [hl]
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    jr z, jr_016_42df

    inc de
    inc de
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_016_42c1:
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
    inc l
    inc l
    nop
    inc h
    ld a, [bc]
    ld d, [hl]
    ld b, e
    ld c, a
    ld d, e
    ld [hl], $53
    ld b, $04

jr_016_42df:
    add l
    ld b, b
    ld e, e
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $14
    add hl, de
    ld b, a
    jr @-$37

    add hl, bc
    ld e, $00
    dec sp
    ld a, [hl+]
    rst $00
    or $42
    inc l
    inc b
    inc de
    dec bc
    nop
    ld d, c
    ld de, $0008
    ld d, d
    dec [hl]
    ld [$5202], sp
    daa
    ld b, $00

Jump_016_4307:
    ld d, e
    inc b
    inc de
    rlca
    rlca
    inc de
    inc c
    ld [$0937], sp
    add hl, bc
    add hl, hl
    dec b
    ld a, [bc]
    ld b, $0c
    jr nc, jr_016_4327

    rst $38
    jp nc, $cf41

    ld bc, $3d0e
    rlca
    rst $38
    pop de
    ld b, d
    pop de
    rlca
    inc c

jr_016_4327:
    ld b, h
    ld [de], a
    rst $38
    jp nc, $cf43

    ld [bc], a
    ld b, $1d
    dec bc
    rst $38
    jp nc, $ce44

    rlca
    ld c, $41
    rlca
    rst $38
    ret nc

    ld b, l
    pop de
    ld [$3a06], sp
    dec bc
    rst $38
    ret nc

    ld b, [hl]
    adc $08
    adc [hl]
    rst $00
    inc de
    dec bc
    ld a, l
    rst $00
    ld de, $9d08
    ret z

    dec [hl]
    ld [$c82c], sp
    daa
    ld b, $57
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    jr z, jr_016_43cc

    ld bc, $6161
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, l
    jr z, jr_016_4376

    ld a, [bc]

jr_016_4376:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, l
    ld h, l
    jr z, jr_016_4380

    ld a, [bc]

jr_016_4380:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, l
    ld h, l
    jr z, @+$3d

    rlca
    rlca
    rlca
    rlca
    rlca
    cpl
    ld c, a
    ld h, l
    jr z, jr_016_43bc

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, jr_016_43c9

    ccf
    ccf
    ccf
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, jr_016_43d2

    ld d, a
    ld d, a
    ld d, a
    ld [hl], b
    jr nz, @+$23

    ld c, l
    ld h, l
    jr z, jr_016_43da

    ld sp, $5677
    dec [hl]
    ld a, h
    ld [hl], d
    ld c, l
    ld h, l
    jr z, jr_016_43e4

    ld a, [bc]

jr_016_43bc:
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    ld d, l
    ld d, l
    ld c, l
    ld h, l
    jr z, jr_016_43ee

    ld d, l
    ld d, l
    ld d, l
    dec [hl]

jr_016_43c9:
    ld a, [bc]
    ld a, [bc]
    ld c, l

jr_016_43cc:
    ld h, l
    jr z, jr_016_43f8

    ld d, l
    ld d, l
    ld d, l

jr_016_43d2:
    dec [hl]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, @+$2b

    ld d, l

jr_016_43da:
    ld d, l
    ld d, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, jr_016_440c

    ld a, [bc]

jr_016_43e4:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, a
    ld h, l
    jr z, jr_016_4419

    ccf

jr_016_43ee:
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld a, e
    ld h, l
    jr z, jr_016_4422

    ld d, a

jr_016_43f8:
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    add hl, hl
    ld a, e
    ld h, l
    jr z, jr_016_442a

    jr nz, @+$0f

    dec c
    ld hl, $2928
    ld a, e
    ld h, l
    jr z, jr_016_4434

    ld l, b

jr_016_440c:
    ld a, a
    ld a, a
    ld l, c
    jr z, jr_016_443a

    ld a, e
    ld h, l
    jr z, jr_016_443e

    scf
    ld a, l
    ld a, [hl-]
    ld a, [hl]

jr_016_4419:
    jr z, jr_016_4444

    ld a, e
    ld h, l
    jr z, jr_016_4448

    ld a, e
    ld a, c
    ld a, e

jr_016_4422:
    ld a, e
    jr z, jr_016_444e

    ld a, e
    ld h, l
    jr z, jr_016_4452

    ld a, e

jr_016_442a:
    ld a, e
    ld a, e
    ld a, e
    inc h
    dec h
    ld a, e
    ld h, l
    jr z, jr_016_445c

    ld a, e

jr_016_4434:
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e

jr_016_443a:
    ld h, l
    jr z, @+$2b

    rra

jr_016_443e:
    rra
    rra
    rra
    rra
    rra
    rra

jr_016_4444:
    ld l, $28
    inc l
    ccf

jr_016_4448:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_016_444e:
    ccf
    inc l
    inc l
    inc l

jr_016_4452:
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld a, [hl+]
    dec hl
    ld d, a

jr_016_445c:
    ld d, a
    ld d, a
    ld b, $57
    dec h
    ld a, [bc]
    ld c, h
    jr z, jr_016_448e

    ld sp, $3131
    ld [$3131], sp
    ld a, [bc]
    ld a, [bc]
    jr z, jr_016_4498

    ld sp, $3131
    ld sp, $3b3e
    cpl
    rlca
    jr z, jr_016_44a2

    ld a, [de]
    ld a, $3f
    ccf
    inc l
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    jr z, jr_016_44ac

    ld a, d
    inc h
    ld d, a
    ld d, a
    ld d, a
    dec h
    rlca
    cpl
    jr z, jr_016_44b6

    ld a, [bc]

jr_016_448e:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, d
    jr z, jr_016_44c3

    ccf

jr_016_4498:
    ccf
    ccf
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, jr_016_44cd

    inc l

jr_016_44a2:
    dec hl
    ld d, a
    dec h
    cpl
    inc c
    dec c
    ld c, $28
    inc l
    inc l

jr_016_44ac:
    add hl, hl
    ld a, d
    ld a, d
    ld a, d
    ld [hl], l
    ld [hl], c
    db $76
    jr z, jr_016_44e1

    inc l

jr_016_44b6:
    add hl, hl
    ld a, d
    ld sp, $683e
    ld a, a
    ld l, c
    inc l
    nop
    add hl, bc
    ld e, $5f
    ld b, l

jr_016_44c3:
    ld h, l
    ld d, h
    ld c, h
    ld d, h
    inc bc
    dec b
    ld h, h
    ld c, d
    add sp, -$3a

jr_016_44cd:
    rrca
    inc d
    ld [$1627], sp
    rst $00
    rla
    nop
    ld c, b
    add hl, bc
    rst $00
    rrca
    ld a, [bc]
    ld [hl], $00
    ld sp, hl
    add $e0
    ld b, h
    rrca

jr_016_44e1:
    dec b
    ld [$0031], sp
    ld d, h
    add hl, bc
    ld sp, $5401
    ld [$023a], sp
    ld d, h
    add hl, bc
    ld a, [hl-]
    inc bc
    ld d, h
    dec b
    inc b
    nop
    ld d, l
    ld bc, $0105
    dec bc
    ld a, [bc]
    dec bc
    ld [de], a
    ld c, $ff
    ret nc

    ld b, c
    reti


    ld bc, $0d0b
    ld e, $ff
    ret nc

    ld b, d
    reti


    ld [bc], a
    inc b
    add hl, bc
    ld de, $d2ff
    ld b, e
    ret


    add hl, bc
    inc c
    rrca
    jr z, @+$01

    ret nc

    ld b, h
    call nc, Call_000_0402
    ld [$ff1a], sp
    pop de
    ld b, l
    ret


    ld a, [bc]
    dec bc
    dec bc
    ld sp, $d0ff
    ld b, [hl]
    reti


    inc bc
    dec bc
    rlca
    dec h
    rst $38
    pop de
    ld b, a
    reti


    inc b
    inc b
    add hl, bc
    cpl
    rst $38
    db $d3
    ld c, b
    ret


    dec bc
    inc c
    inc d
    ld sp, $d2ff
    ld c, c
    call nc, $0403
    db $10
    ld a, [de]
    rst $38
    pop de
    ld c, d
    ret


    inc c
    or l
    rst $00
    ld [$b531], sp
    rst $00
    add hl, bc
    ld sp, $c7ba
    ld [$ba3a], sp
    rst $00
    add hl, bc
    ld a, [hl-]
    ld d, a
    rst $00
    dec b
    inc b
    ld sp, $3131
    ld sp, $496d
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    dec bc
    dec bc
    dec bc
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld sp, $3f3e
    dec sp
    ld l, l
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, [hl]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld d, [hl]
    inc h
    ld b, $25
    ld l, l
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld c, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld sp, $3131
    ld sp, $2231
    dec bc
    dec bc
    ld c, c
    inc hl
    inc hl
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    ld h, $23
    inc hl
    ld c, b
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, a
    ld l, a
    jr nz, jr_016_45e1

    dec c
    ld hl, $1f0f
    rra
    rra
    ld e, $6d
    daa
    dec bc
    dec bc
    daa
    dec bc

jr_016_45e1:
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    ld bc, $0101
    scf
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [bc]
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    ld l, l
    ld b, h
    inc hl
    inc hl
    ld b, l
    dec bc
    dec bc
    ld b, h
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    ld e, l
    ld l, h
    ld l, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_016_4620:
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    daa
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld l, l
    ld e, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld h, $23
    inc hl
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    daa
    ld a, [bc]
    ld a, [bc]
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
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    dec bc
    dec bc
    ld b, h
    inc hl
    inc hl
    inc hl
    ld b, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    nop
    ld [hl], $0a
    db $10
    ld b, a
    ld [hl], l
    ld d, [hl]
    di
    ld d, l
    ld c, $04
    pop bc
    ld b, b
    db $eb
    add $0a
    ld a, [bc]
    ld de, $7900
    rst $00
    jr jr_016_4620

    ld c, b
    ld a, b
    jp z, $1e0d

    nop
    jr z, jr_016_4699

    rst $00
    ld d, $7a
    ld b, l
    ret z

    ret z

    add hl, bc
    ld e, $ca
    dec sp
    ld a, [hl+]
    rst $00
    sbc d

jr_016_4699:
    ld b, [hl]
    ld b, e
    inc b
    rrca
    ld a, [bc]
    nop
    ld d, a
    rrca
    dec bc
    ld bc, $1557
    ld a, [bc]
    ld [bc], a
    ld d, a
    ld c, l
    dec bc
    nop
    cp l
    ld [bc], a
    dec c
    dec c
    dec bc
    ccf
    dec bc
    inc c
    ld a, [bc]
    ld b, e
    ld b, d
    ld c, $ff
    ret nc

    ld bc, $232f
    ld [de], a
    rst $38
    jp nc, $d642

    inc bc
    cpl
    dec hl
    add hl, bc
    rst $38
    pop de
    ld b, e
    sub $04
    rlca
    ld h, b
    rrca
    rst $38
    jp nc, $cd44

    add hl, bc
    inc c
    ld d, b
    ld [de], a
    rst $38
    pop de
    ld b, l
    call c, $2f02
    inc l
    db $10
    rst $38
    jp nc, $d646

    dec b
    cpl
    jr c, jr_016_46f2

    rst $38
    db $d3
    ld b, a
    sub $06
    cpl
    ld e, e
    ld a, [bc]
    rst $38
    ret nc

    ld c, b
    sub $0b

jr_016_46f2:
    dec a
    daa
    ld [de], a
    rst $38
    rst $38
    adc c
    ret c

    dec a
    ld e, l
    add hl, bc
    rst $38
    rst $38
    adc d
    dec h
    ld l, [hl]
    rst $00
    rrca
    ld a, [bc]
    ld l, [hl]
    rst $00
    rrca
    dec bc
    sbc [hl]
    rst $00
    dec d
    ld a, [bc]
    ld e, [hl]
    ret


    ld c, l
    dec bc
    inc l
    inc l
    inc l
    add hl, hl
    ld sp, $2c28
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    dec h
    ld sp, $5724
    ld d, a
    ld d, a
    ld d, a
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld l, e
    ld l, e
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld a, b
    ld a, b
    ld d, h
    ld a, c
    ld d, h
    ld d, h
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    ld b, e
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    jr nz, jr_016_4773

    ld hl, $4343
    add hl, de
    inc l
    add hl, hl
    ld a, b
    ld b, e
    ld l, b
    ld a, a
    ld l, c
    ld b, e
    ld b, e

jr_016_4773:
    add hl, de
    inc l
    add hl, hl
    ld l, e
    ld l, e
    scf
    ld a, [hl-]
    ld a, [hl]
    ld l, e
    ld l, e
    dec d
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    ld b, e
    ld d, h
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld a, d
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld d, h
    ld b, e
    add hl, de
    ld d, a
    dec h
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, d
    ld d, h
    ld a, d
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld a, b
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, b
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld a, b
    ld a, b
    ld a, d
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld d, h
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld a, b
    ld d, h
    ld b, e
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld b, e
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld b, e
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    ld [hl], $36
    ld l, e
    ld l, e
    ld l, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld c, h
    ld c, h
    ld h, c
    ld h, c
    ld h, c
    ld a, c
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld sp, $0231
    inc bc
    ld sp, $1943
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld a, b
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld l, h
    ld [hl], $43
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    dec [hl]
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld l, h
    ld a, [bc]
    ld a, b
    ld a, d
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld l, h
    ld l, h
    inc sp
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld a, b
    ld d, h
    ld a, b
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld a, d
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld a, b
    ld b, e
    ld b, e
    add hl, de
    nop
    add hl, bc
    ld e, $cc
    ld c, c
    rst $00
    ld d, a
    xor [hl]
    ld d, a
    inc bc
    rlca
    xor e
    ld c, h
    add sp, -$3a
    rrca
    inc d
    ld [$1627], sp
    rst $00
    add hl, de
    xor b
    ld c, d
    add hl, bc
    rst $00
    inc c
    ld a, [bc]
    inc h
    nop
    ld sp, hl
    add $4e
    ld c, c
    ld b, e
    inc b
    ld [$0007], sp
    cp b
    add hl, bc
    rlca
    ld bc, $08b8
    ld c, $02
    cp b
    add hl, bc
    ld c, $03
    cp b
    ld bc, $2709
    inc c
    dec bc
    ld b, $0f
    dec l
    rst $38
    ret nc

    ld b, c
    adc $14
    ld b, $0e
    add hl, sp
    rst $38
    jp nc, $ce42

    dec d
    rlca
    ld de, $ff23
    pop de
    ld b, e
    rst $18
    ld b, $07
    ld de, $ff27
    pop de
    ld b, h
    rst $18
    rlca
    rrca
    rrca
    add hl, sp
    rst $38
    ret nc

    ld b, l
    jp c, $0f09

    ld c, $2d
    rst $38
    db $d3
    ld b, [hl]
    jp c, Jump_000_120a

    ld c, $34
    rst $38
    ret nc

    ld b, a
    jp nc, $1203

    ld c, $32
    rst $38
    ret nc

    ld c, b
    jp nc, $0604

    add hl, bc
    add hl, hl
    rst $38
    db $d3
    ld c, c
    adc $16
    ld b, $11
    ld d, $ff
    pop de
    ld c, d
    adc $17
    dec a
    add hl, bc
    ld d, $ff
    rst $38
    adc e
    call c, $c7a0
    ld [$a007], sp
    rst $00
    add hl, bc
    rlca
    and h
    rst $00
    ld [$a40e], sp
    rst $00
    add hl, bc
    ld c, $0a
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc de
    inc de
    ld l, a
    ld c, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    inc de
    inc de
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    rrca
    ld d, d
    ld d, d
    jr nz, jr_016_4a39

    ld hl, $0750
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_016_4a39:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld sp, $3131
    ld sp, $7d37
    ld a, [hl]
    ld d, l
    ld d, l
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld [hl], h
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld sp, $3108
    ld [hl], h
    ld [hl], h
    dec bc
    dec bc
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    rrca
    rrca
    ld d, c
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $0a6c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
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
    nop
    add hl, bc
    inc d
    add h
    ld c, e
    cp c
    ld e, c
    inc sp
    ld e, c
    dec b
    inc e
    xor b
    ld c, e
    inc hl
    ret z

    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $06
    ld hl, sp+$40
    rst $38
    add $0f
    add hl, de
    ld [$0800], sp
    rst $00
    db $fc
    ld c, d
    rrca
    add hl, bc

jr_016_4afe:
    ld a, [bc]
    ld de, $ba00
    dec bc
    ld de, $ba01
    ld a, [bc]
    jr jr_016_4b0b

    cp d
    dec bc

jr_016_4b0b:
    jr @+$05

    cp d
    inc b
    ld de, $ba04
    dec b
    ld de, $ba05
    inc b
    jr jr_016_4b1f

    cp d
    dec b
    jr jr_016_4b24

    cp d
    dec b

jr_016_4b1f:
    rlca
    nop
    cp h
    ld [bc], a
    dec bc

jr_016_4b24:
    dec de
    ld [$0511], sp
    add hl, bc
    rlca
    ld [de], a
    db $10
    dec d
    rst $38
    jp nc, $d241

    dec b
    ld [de], a
    ld de, $ff12
    db $d3
    ld b, d
    ret c

    ld bc, $1012
    rrca
    rst $38
    pop de
    ld b, e
    ret c

    ld [bc], a
    ld [de], a
    rrca
    dec c
    rst $38
    jp nc, $d244

    ld b, $12
    ld c, $0a
    rst $38
    db $d3
    ld b, l
    ret c

    inc bc
    ld [de], a
    db $10
    rlca
    rst $38
    db $d3
    ld b, [hl]
    jp nc, Jump_016_4307

    ld c, $1e
    rst $38
    ret nc

    rlca
    adc l
    rst $00
    ld a, [bc]
    ld de, $c78d
    dec bc
    ld de, $c791
    ld a, [bc]
    jr jr_016_4afe

    rst $00
    dec bc
    jr jr_016_4bb0

    rst $00
    inc b
    ld de, $c73f
    dec b
    ld de, $c743
    inc b
    jr jr_016_4bc0

    rst $00
    dec b
    jr jr_016_4bbb

    rst $00
    dec b
    rlca
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    rrca
    rrca
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_016_4bb0

    ld hl, $0a0a
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    ld c, [hl]
    ld bc, $0201

jr_016_4bb0:
    inc bc
    ld bc, $0101
    ld bc, $7d37
    ld a, [hl]
    ld bc, $0b01

jr_016_4bbb:
    dec bc
    dec bc
    dec bc
    rrca
    rrca

jr_016_4bc0:
    ld c, [hl]
    ld bc, $0101
    ld bc, $0a01
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_016_4bd8

    ld hl, $010a
    ld bc, $0101
    ld bc, $0f0f
    ld d, b
    ld [hl], a
    ld [hl], a
    ld [hl], a

jr_016_4bd8:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, a
    ld l, c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, b
    rrca
    rrca
    ld c, [hl]
    ld sp, $0a0a
    ld sp, $3131
    ld sp, $3731
    ld a, l
    ld a, [hl]
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld c, [hl]
    ld sp, $0a0a
    ld sp, $3131
    ld sp, $3131
    ld sp, $0f31
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, [hl]
    ld sp, $0a0a
    ld sp, $6231
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, [hl]
    ld sp, $3108
    ld sp, $4e0a
    dec e
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    add hl, bc
    add hl, de
    sbc h
    ld c, h
    ldh [$5a], a
    rst $00
    ld e, d
    add hl, bc
    inc e
    ld e, d
    ld c, [hl]
    db $eb
    add $0a
    ld a, [bc]
    adc a
    nop
    ld l, c
    rlc a
    sbc d
    ld c, h
    inc b
    rst $00
    rrca
    inc d
    ld [$0300], sp
    rst $00
    ld e, d
    ld c, h
    ld b, e
    inc b
    ld [$0021], sp
    cp [hl]
    add hl, bc
    ld hl, $be01
    ld [$0228], sp
    cp [hl]
    add hl, bc
    jr z, jr_016_4c6e

    cp [hl]
    ld [bc], a
    rlca

jr_016_4c6e:
    dec hl
    inc b
    dec b
    ld hl, $0305
    rlca
    rrca
    jr z, @+$01

    db $d3
    ld b, c
    rst $18
    ld [$1307], sp
    inc l
    rst $38
    jp nc, $df42

    add hl, bc
    rlca
    ld de, $ff2e
    jp nc, $df43

    ld a, [bc]
    sub h
    rst $00
    ld [$9421], sp
    rst $00
    add hl, bc
    ld hl, $c798
    ld [$9828], sp
    rst $00
    add hl, bc
    jr z, @+$1a

    ld b, e
    ld h, h
    ld sp, $3131
    ld sp, $4365
    ld b, e
    inc d
    ld l, e
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $4318
    ld h, h
    ld sp, $7474
    ld sp, $4365
    ld b, e
    ld b, e
    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $4318
    ld h, h
    ld sp, $7474
    ld sp, $4365
    ld b, e
    ld b, e
    ld h, h
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    jr nz, @+$0f

    ld hl, $3131
    ld sp, $3131
    jr jr_016_4d2c

    ld h, h
    ld sp, $7474
    ld sp, $7474
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld l, b
    ld a, a
    ld l, c
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    jr jr_016_4d45

    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3731
    ld a, l
    ld a, [hl]
    ld bc, $0101
    ld bc, $1801
    ld b, e
    dec l
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld h, d
    ld d, c

jr_016_4d2c:
    ld d, c
    ld b, b
    ld c, l
    ld d, c
    ld d, c
    ld h, e
    jr jr_016_4d77

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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, [hl]
    dec bc

jr_016_4d45:
    dec bc
    dec bc
    ld c, l
    ld [hl], h
    ld [hl], h
    ld c, l
    jr jr_016_4d90

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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, [hl]
    dec bc
    dec bc
    dec bc
    ld c, l
    ld [hl], h
    ld [hl], h
    ld c, l
    inc d
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
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld d, b
    ld d, d

jr_016_4d77:
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld c, a
    jr nz, jr_016_4d8f

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

jr_016_4d8f:
    rrca

jr_016_4d90:
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $fa
    ld d, a
    ret nc

    dec a
    jr nz, jr_016_4dbe

    ld a, [$d35e]
    cp $90
    jr c, jr_016_4daa

    cp $95
    jr c, jr_016_4dd8

jr_016_4daa:
    ld a, [$cfd8]
    call Call_000_13d0
    ld hl, $4e3b
    ld a, [$d05f]
    and a
    jr z, jr_016_4dbc

    ld hl, $4e40

jr_016_4dbc:
    jr jr_016_4dc9

jr_016_4dbe:
    call Call_016_4e29
    ld c, $14
    call Call_000_3739
    ld hl, $4e4a

jr_016_4dc9:
    push hl
    ld hl, $6849
    ld b, $0e
    call Call_000_35d6
    pop hl
    call Call_000_3c49
    jr jr_016_4e3a

jr_016_4dd8:
    ld b, $48
    call Call_000_3493
    ld a, [$cfd8]
    ld [$cf91], a
    cp $91
    jr z, jr_016_4e03

    ld a, b
    and a
    jr z, jr_016_4df5

    ld hl, $6b01
    ld b, $0f
    call Call_000_35d6
    jr jr_016_4daa

jr_016_4df5:
    ld hl, $4e45
    call Call_000_3c49
    ld hl, $4e54
    call Call_000_3c49
    jr jr_016_4e3a

jr_016_4e03:
    ld a, b
    and a
    jr z, jr_016_4df5

    ld hl, $4e45
    call Call_000_3c49
    ld hl, $4e4f
    call Call_000_3c49
    ld hl, $6b01
    ld b, $0f
    call Call_000_35d6
    ld hl, $48ca
    ld b, $1c
    call Call_000_35d6
    ld hl, $4e3b
    call Call_000_3c49

Call_016_4e29:
    xor a
    ld [$c0f1], a
    ld a, $80
    ld [$c0f2], a
    ld a, $e9
    call Call_000_23b1
    jp Jump_000_3748


jr_016_4e3a:
    ret


    rla
    dec e
    ld e, h
    ld [hl+], a
    ld d, b
    rla
    inc sp
    ld e, h
    ld [hl+], a
    ld d, b
    rla
    ld c, a
    ld e, h
    ld [hl+], a
    ld d, b
    rla
    ld e, [hl]
    ld e, h
    ld [hl+], a
    ld d, b
    rla
    ld [hl], e
    ld e, h
    ld [hl+], a
    ld d, b
    rla
    sbc [hl]
    ld e, h
    ld [hl+], a
    ld d, b
    ld hl, $cfe6
    ld a, [hl+]
    or [hl]
    ld hl, $4eae
    jr z, jr_016_4eab

    xor a
    ldh [$96], a
    ld hl, $cfe6
    ld a, [hl+]
    ld [$cce3], a
    ldh [$97], a
    ld a, [hl]
    ld [$cce4], a
    ldh [$98], a
    ld a, $19
    ldh [$99], a
    call Call_000_38ac
    ld hl, $cff4
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    ld a, b
    ld b, $04
    ldh [$99], a
    call Call_000_38b9
    ldh a, [$98]
    ld hl, $4eae
    cp $46
    jr nc, jr_016_4eab

    ld hl, $4eb5
    cp $28
    jr nc, jr_016_4eab

    ld hl, $4ebc
    cp $0a
    jr nc, jr_016_4eab

    ld hl, $4ec3

jr_016_4eab:
    jp Jump_000_3c49


    rla
    cp h
    ld e, h
    ld [hl+], a
    ld [$1318], sp
    rla
    jp Jump_000_225c


    ld [$0c18], sp
    rla
    call Call_000_225c
    ld [$0518], sp
    rla
    sub $5c
    ld [hl+], a
    ld [$cc21], sp
    ld c, [hl]
    ret


    rla
    ldh a, [$5c]
    ld [hl+], a
    ld d, b
    ld hl, $4ed7
    jp Jump_000_3c49


    rla
    or $5c
    ld [hl+], a
    ld [$c5d5], sp
    ld hl, $cfe7
    ld de, $cce4
    ld b, [hl]
    dec hl
    ld a, [de]
    sub b
    ldh [$98], a
    dec de
    ld b, [hl]
    ld a, [de]
    sbc b
    ldh [$97], a
    ld a, $19
    ldh [$99], a
    call Call_000_38ac
    ld hl, $cff4
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    ld a, b
    ld b, $04
    ldh [$99], a
    call Call_000_38b9
    pop bc
    pop de
    ldh a, [$98]
    ld hl, $4f25
    and a
    ret z

    ld hl, $4f3e
    cp $1e
    ret c

    ld hl, $4f2c
    cp $46
    ret c

    ld hl, $4f33
    ret


    rla
    db $fd
    ld e, h
    ld [hl+], a
    ld [$0e18], sp
    rla
    rlca
    ld e, l
    ld [hl+], a
    ld [$0718], sp
    rla
    dec c
    ld e, l
    ld [hl+], a
    ld [$0018], sp
    ld hl, $4f3e
    ret


    rla
    dec d
    ld e, l
    ld [hl+], a
    ld d, b
    ld a, [$cf98]
    ld [$d0b5], a
    call Call_000_1537
    ld d, $01

jr_016_4f4e:
    inc d
    call Call_016_4f6a
    push hl
    ld hl, $cfa8
    ldh a, [$98]
    ld c, a
    ld a, [hl-]
    sub c
    ldh a, [$97]
    ld c, a
    ld a, [hl-]
    sbc c
    ldh a, [$96]
    ld c, a
    ld a, [hl]
    sbc c
    pop hl
    jr nc, jr_016_4f4e

    dec d
    ret


Call_016_4f6a:
    ld a, [$d0cb]
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $501d
    add hl, bc
    call Call_016_5010
    ld a, d
    ldh [$99], a
    call Call_000_38ac
    ld a, [hl]
    and $f0
    swap a
    ldh [$99], a
    call Call_000_38ac
    ld a, [hl+]
    and $0f
    ldh [$99], a
    ld b, $04
    call Call_000_38b9
    ldh a, [$96]
    push af
    ldh a, [$97]
    push af
    ldh a, [$98]
    push af
    call Call_016_5010
    ld a, [hl]
    and $7f
    ldh [$99], a
    call Call_000_38ac
    ldh a, [$96]
    push af
    ldh a, [$97]
    push af
    ldh a, [$98]
    push af
    ld a, [hl+]
    push af
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, d
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38ac
    ld b, [hl]
    ldh a, [$98]
    sub b
    ldh [$98], a
    ld b, $00
    ldh a, [$97]
    sbc b
    ldh [$97], a
    ldh a, [$96]
    sbc b
    ldh [$96], a
    pop af
    and $80
    jr nz, jr_016_4feb

    pop bc
    ldh a, [$98]
    add b
    ldh [$98], a
    pop bc
    ldh a, [$97]
    adc b
    ldh [$97], a
    pop bc
    ldh a, [$96]
    adc b
    ldh [$96], a
    jr jr_016_4ffd

jr_016_4feb:
    pop bc
    ldh a, [$98]
    sub b
    ldh [$98], a
    pop bc
    ldh a, [$97]
    sbc b
    ldh [$97], a
    pop bc
    ldh a, [$96]
    sbc b
    ldh [$96], a

jr_016_4ffd:
    pop bc
    ldh a, [$98]
    add b
    ldh [$98], a
    pop bc
    ldh a, [$97]
    adc b
    ldh [$97], a
    pop bc
    ldh a, [$96]
    adc b
    ldh [$96], a
    ret


Call_016_5010:
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, d
    ldh [$98], a
    ldh [$99], a
    jp Jump_000_38ac


    ld de, $0000
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld e, $34
    inc d
    nop
    ld b, [hl]
    ld h, l
    adc a
    ld h, h
    adc h
    ld b, l
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    ld hl, $5091
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_016_5086

    ld hl, $d2f7
    ld b, $13
    call Call_000_2b7f
    ld a, [$d11e]
    ldh [$dd], a
    ld b, a
    ldh a, [$db]
    cp b
    jr z, jr_016_5059

    jr nc, jr_016_507c

jr_016_5059:
    ld hl, $50a0
    call Call_000_3c49
    ldh a, [$dc]
    ld b, a
    ld c, $01
    call Call_000_3e2e
    jr nc, jr_016_5073

    ld hl, $50a5
    call Call_000_3c49
    ld a, $01
    jr jr_016_508e

jr_016_5073:
    ld hl, $50ab
    call Call_000_3c49
    xor a
    jr jr_016_508e

jr_016_507c:
    ld hl, $5096
    call Call_000_3c49
    ld a, $80
    jr jr_016_508e

jr_016_5086:
    ld hl, $509b
    call Call_000_3c49
    ld a, $ff

jr_016_508e:
    ldh [$db], a
    ret


    rla
    ld b, e
    ld b, c
    jr nz, jr_016_50e6

    rla
    db $e4
    ld b, c
    jr nz, jr_016_50eb

    rla
    ld d, b
    ld b, d
    jr nz, jr_016_50f0

    rla
    adc h
    ld b, d
    jr nz, jr_016_50f5

    rla
    reti


    ld b, d
    jr nz, @+$0d

    ld d, b
    rla
    db $ec
    ld b, d
    jr nz, jr_016_5100

    call Call_000_3c3c
    ld hl, $50d7
    ld de, $50c3
    ld a, [$d600]
    call Call_000_3160
    ld [$d600], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a

jr_016_50c7:
    ld [hl], l
    ld [hl-], a
    jr nz, jr_016_511c

    add hl, sp
    ld d, c
    ld c, l
    ld d, c
    ld h, [hl]
    ld d, c
    ld a, a
    ld d, c

jr_016_50d3:
    sbc b
    ld d, c
    or c
    ld d, c
    ld bc, $c900
    rst $10
    ld a, [hl+]
    ld d, c
    inc [hl]
    ld d, c
    cpl
    ld d, c
    cpl
    ld d, c
    ld [bc], a
    nop
    ret


jr_016_50e6:
    rst $10
    ld b, e
    ld d, c
    inc [hl]
    ld d, c

jr_016_50eb:
    ld c, b
    ld d, c
    ld c, b
    ld d, c
    inc bc

jr_016_50f0:
    ld b, b
    ret


    rst $10
    ld d, a
    ld d, c

jr_016_50f5:
    ld h, c
    ld d, c
    ld e, h
    ld d, c
    ld e, h
    ld d, c
    inc b
    jr nc, jr_016_50c7

    rst $10
    ld [hl], b

jr_016_5100:
    ld d, c
    ld a, d
    ld d, c
    ld [hl], l
    ld d, c
    ld [hl], l
    ld d, c
    dec b
    jr nc, jr_016_50d3

    rst $10
    adc c
    ld d, c
    sub e
    ld d, c
    adc [hl]
    ld d, c
    adc [hl]
    ld d, c
    ld b, $30
    ret


    rst $10
    and d
    ld d, c
    xor h
    ld d, c
    and a

jr_016_511c:
    ld d, c
    and a
    ld d, c
    rst $38
    ld [$d721], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    jr c, jr_016_5189

    inc hl
    ld d, b
    rla
    ld e, [hl]
    ld e, h
    inc hl
    ld d, b
    rla
    ld [hl], b
    ld e, h
    inc hl
    ld d, b
    ld [$e321], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    add a
    ld e, h
    inc hl
    ld d, b
    rla
    or e
    ld e, h
    inc hl
    ld d, b
    ld [$ef21], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret z

    ld e, h
    inc hl
    ld d, b
    rla
    jp hl


    ld e, h
    inc hl
    ld d, b
    rla
    db $fd
    ld e, h
    inc hl
    ld d, b
    ld [$fb21], sp
    ld d, b
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    jr nc, jr_016_51d0

    inc hl
    ld d, b
    rla
    ld c, [hl]
    ld e, l
    inc hl
    ld d, b
    rla
    ld h, c
    ld e, l
    inc hl
    ld d, b
    ld [$0721], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


jr_016_5189:
    rla
    adc a
    ld e, l
    inc hl
    ld d, b
    rla
    xor b
    ld e, l
    inc hl
    ld d, b
    rla
    cp d
    ld e, l
    inc hl
    ld d, b
    ld [$1321], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    and $5d
    inc hl
    ld d, b
    rla
    db $10
    ld e, [hl]
    inc hl
    ld d, b
    rla
    inc hl
    ld e, [hl]
    inc hl
    ld d, b
    rla
    ld c, c
    ld e, [hl]
    inc hl
    ld d, b
    call Call_000_3c3c
    ld hl, $51e3
    ld de, $51c9
    ld a, [$d601]
    call Call_000_3160
    ld [$d601], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld d, b

jr_016_51d0:
    ld d, d
    ld l, c
    ld d, d
    add d
    ld d, d
    sbc e
    ld d, d

jr_016_51d7:
    or h
    ld d, d
    call $e652
    ld d, d
    rst $38
    ld d, d
    jr jr_016_5234

    ld sp, $0153
    ld b, b
    call $5ad7
    ld d, d
    ld h, h
    ld d, d
    ld e, a
    ld d, d
    ld e, a
    ld d, d
    ld [bc], a
    ld b, b
    call Call_016_73d7
    ld d, d
    ld a, l
    ld d, d
    ld a, b
    ld d, d
    ld a, b
    ld d, d

jr_016_51fb:
    inc bc
    ld b, b
    call $8cd7
    ld d, d
    sub [hl]
    ld d, d
    sub c
    ld d, d
    sub c
    ld d, d
    inc b
    jr nz, jr_016_51d7

    rst $10
    and l
    ld d, d
    xor a
    ld d, d
    xor d
    ld d, d
    xor d
    ld d, d
    dec b
    jr nc, @-$31

    rst $10
    cp [hl]
    ld d, d
    ret z

    ld d, d
    jp $c352


    ld d, d
    ld b, $30
    call $d7d7
    ld d, d
    pop hl
    ld d, d
    call c, $dc52
    ld d, d
    rlca
    jr nz, jr_016_51fb

    rst $10
    ldh a, [rHDMA2]
    ld a, [$f552]

jr_016_5234:
    ld d, d
    push af
    ld d, d
    ld [$cd20], sp
    rst $10
    add hl, bc
    ld d, e
    inc de
    ld d, e
    ld c, $53
    ld c, $53
    add hl, bc
    ld b, b
    call Call_000_22d7
    ld d, e
    inc l
    ld d, e
    daa
    ld d, e
    daa
    ld d, e
    rst $38
    ld [$e321], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor c
    ld e, [hl]
    inc hl
    ld d, b
    rla
    push de
    ld e, [hl]
    inc hl
    ld d, b
    rla
    db $e4
    ld e, [hl]
    inc hl
    ld d, b
    ld [$ef21], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld b, $5f
    inc hl
    ld d, b
    rla
    ld h, $5f
    inc hl
    ld d, b
    rla
    inc a
    ld e, a
    inc hl
    ld d, b
    ld [$fb21], sp
    ld d, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, e
    ld e, a
    inc hl
    ld d, b
    rla
    ld a, [hl]
    ld e, a
    inc hl
    ld d, b
    rla
    sub b
    ld e, a
    inc hl
    ld d, b
    ld [$0721], sp
    ld d, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret nz

    ld e, a
    inc hl
    ld d, b
    rla
    db $e4
    ld e, a
    inc hl
    ld d, b
    rla
    ldh a, [$5f]
    inc hl
    ld d, b
    ld [$1321], sp
    ld d, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    jr z, @+$62

    inc hl
    ld d, b
    rla
    ld c, c
    ld h, b
    inc hl
    ld d, b
    rla
    ld h, b
    ld h, b
    inc hl
    ld d, b
    ld [$1f21], sp
    ld d, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    sub d
    ld h, b
    inc hl
    ld d, b
    rla
    cp b
    ld h, b
    inc hl
    ld d, b
    rla
    cp a
    ld h, b
    inc hl
    ld d, b
    ld [$2b21], sp
    ld d, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    jp hl


    ld h, b
    inc hl
    ld d, b
    rla
    ld d, $61
    inc hl
    ld d, b
    rla
    ld a, [hl+]
    ld h, c
    inc hl
    ld d, b
    ld [$3721], sp
    ld d, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld h, d
    ld h, c
    inc hl
    ld d, b
    rla
    add c
    ld h, c
    inc hl
    ld d, b
    rla
    sbc b
    ld h, c
    inc hl
    ld d, b
    ld [$4321], sp
    ld d, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    call nc, $2361
    ld d, b
    rla
    ld a, [$2361]
    ld d, b
    rla
    ld hl, $2362
    ld d, b
    rla
    ld h, d
    ld h, d
    inc hl
    ld d, b
    call Call_000_3c3c
    ld hl, $5363
    ld de, $5349
    ld a, [$d605]
    call Call_000_3160
    ld [$d605], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    xor h
    ld d, e
    push bc
    ld d, e
    sbc $53
    rst $30
    ld d, e
    db $10
    ld d, h
    add hl, hl
    ld d, h

jr_016_535b:
    ld b, d
    ld d, h
    rst $28
    inc h
    ld b, d
    ld d, h
    ld b, a
    ld d, h
    ld bc, $d140
    rst $10

jr_016_5367:
    or [hl]
    ld d, e
    ret nz

    ld d, e
    cp e
    ld d, e
    cp e
    ld d, e
    ld [bc], a
    jr nc, @-$2d

    rst $10
    rst $08
    ld d, e
    reti


    ld d, e
    call nc, $d453
    ld d, e
    inc bc
    ld b, b
    pop de
    rst $10
    add sp, $53
    ld a, [c]
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    inc b
    jr nc, jr_016_535b

    rst $10
    ld bc, $0b54
    ld d, h
    ld b, $54
    ld b, $54
    dec b
    jr nz, jr_016_5367

    rst $10
    ld a, [de]
    ld d, h
    inc h
    ld d, h
    rra
    ld d, h
    rra
    ld d, h
    ld b, $20
    pop de
    rst $10
    inc sp
    ld d, h
    dec a
    ld d, h
    jr c, @+$56

    jr c, @+$56

    rst $38
    ld [$6321], sp
    ld d, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld b, d
    ld h, [hl]
    inc hl
    ld d, b
    rla
    ld a, d
    ld h, [hl]
    inc hl
    ld d, b
    rla
    sub b
    ld h, [hl]
    inc hl
    ld d, b
    ld [$6f21], sp
    ld d, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    or b
    ld h, [hl]
    inc hl
    ld d, b
    rla
    pop bc
    ld h, [hl]
    inc hl
    ld d, b
    rla
    push af
    ld h, [hl]
    inc hl
    ld d, b
    ld [$7b21], sp
    ld d, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc e
    ld h, a
    inc hl
    ld d, b
    rla
    ld a, [hl-]
    ld h, a
    inc hl
    ld d, b
    rla
    ld c, e
    ld h, a
    inc hl
    ld d, b
    ld [$8721], sp
    ld d, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld l, h
    ld h, a
    inc hl
    ld d, b
    rla
    xor b
    ld h, a
    inc hl
    ld d, b
    rla
    cp l
    ld h, a
    inc hl
    ld d, b
    ld [$9321], sp
    ld d, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    rst $20
    ld h, a
    inc hl
    ld d, b
    rla
    inc c
    ld l, b
    inc hl
    ld d, b
    rla
    inc hl
    ld l, b
    inc hl
    ld d, b
    ld [$9f21], sp
    ld d, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld b, h
    ld l, b
    inc hl
    ld d, b
    rla
    ld [hl], d
    ld l, b
    inc hl
    ld d, b
    rla
    add h
    ld l, b
    inc hl
    ld d, b
    rla
    call nc, $2368
    ld d, b
    rla
    pop hl
    ld l, b
    inc hl
    ld d, b
    call Call_000_3c3c
    ld hl, $547b
    ld de, $545f
    ld a, [$d623]
    call Call_000_3160
    ld [$d623], a
    ret


jr_016_545f:
    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    db $f4
    ld d, h
    dec c
    ld d, l
    ld h, $55

jr_016_546b:
    ccf
    ld d, l
    ld e, b
    ld d, l
    ld [hl], c
    ld d, l
    adc d
    ld d, l
    and e
    ld d, l
    cp h
    ld d, l

jr_016_5477:
    push de
    ld d, l
    xor $55
    ld bc, $d530
    rst $10
    cp $54
    ld [$0355], sp
    ld d, l
    inc bc
    ld d, l
    ld [bc], a
    jr nz, jr_016_545f

    rst $10
    rla
    ld d, l
    ld hl, $1c55
    ld d, l
    inc e
    ld d, l
    inc bc
    jr nc, jr_016_546b

    rst $10
    jr nc, jr_016_54ee

    ld a, [hl-]
    ld d, l

jr_016_549b:
    dec [hl]
    ld d, l
    dec [hl]
    ld d, l
    inc b
    jr nc, jr_016_5477

    rst $10
    ld c, c
    ld d, l
    ld d, e
    ld d, l
    ld c, [hl]
    ld d, l
    ld c, [hl]
    ld d, l
    dec b
    ld b, b
    push de
    rst $10
    ld h, d
    ld d, l
    ld l, h
    ld d, l

jr_016_54b3:
    ld h, a
    ld d, l
    ld h, a
    ld d, l
    ld b, $30
    push de
    rst $10
    ld a, e
    ld d, l
    add l
    ld d, l
    add b
    ld d, l
    add b
    ld d, l
    rlca
    jr nc, jr_016_549b

    rst $10
    sub h
    ld d, l
    sbc [hl]
    ld d, l
    sbc c
    ld d, l
    sbc c
    ld d, l
    ld [$d540], sp
    rst $10
    xor l
    ld d, l
    or a
    ld d, l
    or d
    ld d, l
    or d
    ld d, l
    add hl, bc
    jr nc, jr_016_54b3

    rst $10
    add $55
    ret nc

    ld d, l
    bit 2, l
    bit 2, l
    ld a, [bc]
    ld b, b
    push de
    rst $10
    rst $18
    ld d, l
    jp hl


jr_016_54ee:
    ld d, l
    db $e4
    ld d, l
    db $e4
    ld d, l
    rst $38
    ld [$7b21], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor $68
    inc hl
    ld d, b
    rla
    ld [bc], a
    ld l, c
    inc hl
    ld d, b
    rla
    dec de
    ld l, c
    inc hl
    ld d, b
    ld [$8721], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld b, h
    ld l, c
    inc hl
    ld d, b
    rla
    ld h, l
    ld l, c
    inc hl
    ld d, b
    rla
    db $76
    ld l, c
    inc hl
    ld d, b
    ld [$9321], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    and d
    ld l, c
    inc hl
    ld d, b
    rla
    cp h
    ld l, c
    inc hl
    ld d, b
    rla
    db $d3
    ld l, c
    inc hl
    ld d, b
    ld [$9f21], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    or $69
    inc hl
    ld d, b
    rla
    inc e
    ld l, d
    inc hl
    ld d, b
    rla
    jr nc, jr_016_55c0

    inc hl
    ld d, b
    ld [$ab21], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld d, c
    ld l, d
    inc hl
    ld d, b
    rla
    add e
    ld l, d
    inc hl
    ld d, b
    rla
    sub l
    ld l, d
    inc hl
    ld d, b
    ld [$b721], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cp b
    ld l, d
    inc hl
    ld d, b
    rla
    push de
    ld l, d
    inc hl
    ld d, b
    rla
    push hl
    ld l, d
    inc hl
    ld d, b
    ld [$c321], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc bc
    ld l, e
    inc hl
    ld d, b
    rla
    rra
    ld l, e
    inc hl
    ld d, b
    rla
    dec [hl]
    ld l, e
    inc hl
    ld d, b
    ld [$cf21], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld d, a
    ld l, e
    inc hl
    ld d, b
    rla
    ld [hl], c
    ld l, e
    inc hl
    ld d, b
    rla
    sbc c
    ld l, e
    inc hl
    ld d, b
    ld [$db21], sp
    ld d, h

jr_016_55c0:
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor $6b
    inc hl
    ld d, b
    rla
    nop
    ld b, b
    inc h
    ld d, b
    rla
    rla
    ld b, b
    inc h
    ld d, b
    ld [$e721], sp
    ld d, h
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    scf
    ld b, b
    inc h
    ld d, b
    rla
    ld e, b
    ld b, b
    inc h
    ld d, b
    rla
    ld l, [hl]
    ld b, b
    inc h
    ld d, b
    rla
    adc a
    ld b, b
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $5691
    ld de, $5611
    ld a, [$d624]
    call Call_000_3160
    ld [$d624], a
    ret


jr_016_5606:
    xor a
    ld [$cd6b], a
    ld [$d624], a
    ld [$da39], a
    ret


    add hl, de
    ld d, [hl]
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld c, h
    ld d, [hl]
    ld hl, $d7d8
    bit 7, [hl]
    jp nz, Jump_000_3219

    bit 6, [hl]
    res 6, [hl]
    jp z, Jump_000_3219

    ld a, $0d
    ldh [$8c], a
    call Call_000_2920
    ld a, $84
    ld [$d059], a
    ld a, $1e
    ld [$d127], a
    ld a, $1d
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $03
    ld [$d624], a
    ld [$da39], a
    ret


    ld a, [$d057]
    cp $ff
    jr z, jr_016_5606

    call Call_000_2429
    ld a, [$cf0b]
    cp $02
    jr z, jr_016_5664

    ld a, $0e
    ldh [$8c], a
    call Call_000_2920

jr_016_5664:
    ld hl, $d7d8
    set 7, [hl]
    call Call_000_3dd7
    ld a, $00
    ld [$d624], a
    ld [$da39], a
    ret


    and $56
    push af
    ld d, [hl]
    ld c, $57
    daa
    ld d, a
    ld b, b
    ld d, a
    ld e, c
    ld d, a
    ld [hl], d
    ld d, a
    adc e
    ld d, a
    db $f4
    inc h
    db $f4
    inc h
    and h
    ld d, a
    xor c
    ld d, a
    db $eb
    ld d, [hl]
    ldh a, [rRP]
    ld [bc], a
    ld b, b
    rst $10
    rst $10
    rst $38
    ld d, [hl]
    add hl, bc
    ld d, a
    inc b
    ld d, a
    inc b
    ld d, a
    inc bc
    ld b, b
    rst $10
    rst $10
    jr @+$59

    ld [hl+], a
    ld d, a
    dec e
    ld d, a
    dec e
    ld d, a
    inc b
    ld b, b
    rst $10
    rst $10
    ld sp, $3b57
    ld d, a
    ld [hl], $57
    ld [hl], $57
    dec b
    ld b, b
    rst $10
    rst $10
    ld c, d
    ld d, a
    ld d, h
    ld d, a
    ld c, a
    ld d, a
    ld c, a
    ld d, a
    ld b, $40
    rst $10
    rst $10
    ld h, e
    ld d, a
    ld l, l
    ld d, a
    ld l, b
    ld d, a
    ld l, b
    ld d, a
    rlca
    ld b, b
    rst $10
    rst $10
    ld a, h
    ld d, a
    add [hl]
    ld d, a
    add c
    ld d, a
    add c
    ld d, a
    ld [$d710], sp
    rst $10
    sub l
    ld d, a
    sbc a
    ld d, a
    sbc d
    ld d, a
    sbc d
    ld d, a
    rst $38
    rla
    sbc [hl]
    ld b, b
    inc h
    ld d, b
    rla
    cp a
    ld b, b
    inc h
    ld d, b
    rla
    rst $28
    ld b, b
    inc h
    ld d, b
    ld [$9121], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc [hl]
    ld b, c
    inc h
    ld d, b
    rla
    ld c, a
    ld b, c
    inc h
    ld d, b
    rla
    ld h, a
    ld b, c
    inc h
    ld d, b
    ld [$9d21], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    add e
    ld b, c
    inc h
    ld d, b
    rla
    xor e
    ld b, c
    inc h
    ld d, b
    rla
    cp a
    ld b, c
    inc h
    ld d, b
    ld [$a921], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor $41
    inc h
    ld d, b
    rla
    inc c
    ld b, d
    inc h
    ld d, b
    rla
    ld [de], a
    ld b, d
    inc h
    ld d, b
    ld [$b521], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld b, l
    ld b, d
    inc h
    ld d, b
    rla
    ld h, e
    ld b, d
    inc h
    ld d, b
    rla
    ld l, a
    ld b, d
    inc h
    ld d, b
    ld [$c121], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    xor b
    ld b, d
    inc h
    ld d, b
    rla
    ret z

    ld b, d
    inc h
    ld d, b
    rla
    db $d3
    ld b, d
    inc h
    ld d, b
    ld [$cd21], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld bc, $2443
    ld d, b
    rla
    jr jr_016_57c7

    inc h
    ld d, b
    rla
    add hl, hl
    ld b, e
    inc h
    ld d, b
    ld [$d921], sp
    ld d, [hl]
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, b
    ld b, e
    inc h
    ld d, b
    rla
    ld a, [hl]
    ld b, e
    inc h
    ld d, b
    rla
    adc b
    ld b, e
    inc h
    ld d, b
    rla
    cp h
    ld b, e
    inc h
    ld d, b
    rla
    reti


    ld b, e
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $57df
    ld de, $57c1
    ld a, [$d625]
    call Call_000_3160
    ld [$d625], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a

jr_016_57c7:
    ld e, b
    ld e, b
    ld e, [hl]
    ld e, b

jr_016_57cb:
    ld h, h
    ld e, b
    ld l, d
    ld e, b
    ld [hl], b
    ld e, b
    db $76
    ld e, b
    ld a, h
    ld e, b
    add d
    ld e, b

jr_016_57d7:
    adc b
    ld e, b
    adc [hl]
    ld e, b
    db $f4
    inc h
    ld l, $59
    ld bc, $dd20
    rst $10

jr_016_57e3:
    sbc b
    ld e, b
    and d
    ld e, b
    sbc l
    ld e, b
    sbc l
    ld e, b
    ld [bc], a
    jr nc, jr_016_57cb

    rst $10

jr_016_57ef:
    and a
    ld e, b
    or c
    ld e, b
    xor h
    ld e, b
    xor h
    ld e, b
    inc bc
    jr nc, jr_016_57d7

    rst $10
    or [hl]
    ld e, b
    ret nz

    ld e, b
    cp e
    ld e, b
    cp e
    ld e, b
    inc b
    jr nc, jr_016_57e3

    rst $10

jr_016_5807:
    push bc
    ld e, b
    rst $08
    ld e, b
    jp z, $ca58

    ld e, b
    dec b
    jr nz, jr_016_57ef

    rst $10
    call nc, $de58
    ld e, b
    reti


    ld e, b
    reti


    ld e, b
    ld b, $30
    db $dd
    rst $10

jr_016_581f:
    db $e3
    ld e, b
    db $ed
    ld e, b
    add sp, $58
    add sp, $58
    rlca
    jr nc, jr_016_5807

    rst $10

jr_016_582b:
    ld a, [c]
    ld e, b
    db $fc
    ld e, b
    rst $30
    ld e, b
    rst $30
    ld e, b
    ld [$dd30], sp
    rst $10
    ld bc, $0b59
    ld e, c
    ld b, $59
    ld b, $59
    add hl, bc
    jr nc, jr_016_581f

    rst $10
    db $10
    ld e, c
    ld a, [de]
    ld e, c
    dec d
    ld e, c
    dec d
    ld e, c
    ld a, [bc]
    jr nc, jr_016_582b

    rst $10
    rra
    ld e, c
    add hl, hl
    ld e, c
    inc h
    ld e, c
    inc h
    ld e, c
    rst $38
    ld [$df21], sp
    ld d, a
    jr jr_016_5892

    ld [$eb21], sp
    ld d, a
    jr jr_016_5892

    ld [$f721], sp
    ld d, a
    jr jr_016_5892

    ld [$0321], sp
    ld e, b
    jr jr_016_5892

    ld [$0f21], sp
    ld e, b
    jr jr_016_5892

    ld [$1b21], sp
    ld e, b
    jr jr_016_5892

    ld [$2721], sp
    ld e, b
    jr jr_016_5892

    ld [$3321], sp
    ld e, b
    jr jr_016_5892

    ld [$3f21], sp
    ld e, b
    jr jr_016_5892

    ld [$4b21], sp
    ld e, b

jr_016_5892:
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld a, $4c
    inc h
    ld d, b
    rla
    ld l, [hl]
    ld c, h
    inc h
    ld d, b
    rla
    add b
    ld c, h
    inc h
    ld d, b
    rla
    db $dd
    ld c, h
    inc h
    ld d, b
    rla
    ld a, [bc]
    ld c, l
    inc h
    ld d, b
    rla
    ld d, $4d
    inc h
    ld d, b
    rla
    ld c, b
    ld c, l
    inc h
    ld d, b
    rla
    ld [hl], c
    ld c, l
    inc h
    ld d, b
    rla
    add h
    ld c, l
    inc h
    ld d, b
    rla
    and a
    ld c, l
    inc h
    ld d, b
    rla
    call c, Call_000_244d
    ld d, b
    rla
    ldh a, [rKEY1]
    inc h
    ld d, b
    rla
    inc sp
    ld c, [hl]
    inc h
    ld d, b
    rla
    ld c, [hl]
    ld c, [hl]
    inc h
    ld d, b
    rla
    ld h, a
    ld c, [hl]
    inc h
    ld d, b
    rla
    add [hl]
    ld c, [hl]
    inc h
    ld d, b
    rla
    xor d
    ld c, [hl]
    inc h
    ld d, b
    rla
    pop bc
    ld c, [hl]
    inc h
    ld d, b
    rla
    db $ed
    ld c, [hl]
    inc h
    ld d, b
    rla
    rrca
    ld c, a
    inc h
    ld d, b
    rla
    add hl, de
    ld c, a
    inc h
    ld d, b
    rla
    ld e, c
    ld c, a
    inc h
    ld d, b
    rla
    adc h
    ld c, a
    inc h
    ld d, b
    rla
    and b
    ld c, a
    inc h
    ld d, b
    rla
    call nz, Call_000_244f
    ld d, b
    rla
    rst $18
    ld c, a
    inc h
    ld d, b
    rla
    xor $4f
    inc h
    ld d, b
    rla
    dec c
    ld d, b
    inc h
    ld d, b
    rla
    add hl, hl
    ld d, b
    inc h
    ld d, b
    rla
    ccf
    ld d, b
    inc h
    ld d, b
    rla
    ld h, d
    ld d, b
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $59cf
    ld de, $5951
    ld a, [$d626]
    call Call_000_3160
    ld [$d626], a
    ret


Jump_016_5946:
    xor a
    ld [$cd6b], a
    ld [$d626], a
    ld [$da39], a
    ret


    ld e, c
    ld e, c
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    adc a
    ld e, c
    ld hl, $d7e0
    bit 1, [hl]
    jp nz, Jump_000_3219

    bit 0, [hl]
    res 0, [hl]
    jp z, Jump_000_3219

    ld a, $0a
    ldh [$8c], a
    call Call_000_2920
    ld a, $84
    ld [$d059], a
    ld a, $1e
    ld [$d127], a
    ld a, $21
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    call Call_000_2429
    ld a, $03
    ld [$d626], a
    ld [$da39], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_016_5946

    call Call_000_2429
    ld a, [$cf0b]
    cp $02
    jr z, jr_016_59a8

    ld a, $0b
    ldh [$8c], a
    call Call_000_2920

jr_016_59a8:
    ld hl, $d7e0
    set 1, [hl]
    call Call_000_3dd7
    ld a, $00
    ld [$d626], a
    ld [$da39], a
    ret


    jr jr_016_5a15

    ld sp, $4a5a
    ld e, d
    ld h, e
    ld e, d
    ld a, h
    ld e, d
    sub l
    ld e, d
    xor [hl]
    ld e, d
    cp l
    ld e, d

jr_016_59c9:
    jp nz, $b35a

    ld e, d
    cp b
    ld e, d
    ld bc, $df30
    rst $10
    ld [hl+], a
    ld e, d

jr_016_59d5:
    inc l
    ld e, d
    daa
    ld e, d
    daa
    ld e, d
    ld [bc], a
    jr nz, @-$1f

    rst $10
    dec sp
    ld e, d

jr_016_59e1:
    ld b, l
    ld e, d
    ld b, b
    ld e, d
    ld b, b
    ld e, d
    inc bc
    jr nz, jr_016_59c9

    rst $10
    ld d, h
    ld e, d
    ld e, [hl]
    ld e, d
    ld e, c
    ld e, d
    ld e, c
    ld e, d
    inc b
    jr nz, jr_016_59d5

    rst $10
    ld l, l
    ld e, d
    ld [hl], a
    ld e, d
    ld [hl], d
    ld e, d
    ld [hl], d
    ld e, d
    dec b
    jr nz, jr_016_59e1

    rst $10
    add [hl]
    ld e, d
    sub b
    ld e, d
    adc e
    ld e, d
    adc e
    ld e, d
    ld b, $40
    rst $18
    rst $10
    sbc a
    ld e, d
    xor c
    ld e, d
    and h
    ld e, d

jr_016_5a15:
    and h
    ld e, d
    rst $38
    ld [$cf21], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    add c
    ld d, b
    inc h
    ld d, b
    rla
    sub h
    ld d, b
    inc h
    ld d, b
    rla
    xor d
    ld d, b
    inc h
    ld d, b
    ld [$db21], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    rst $10
    ld d, b
    inc h
    ld d, b
    rla
    pop af
    ld d, b
    inc h
    ld d, b
    rla
    db $fd
    ld d, b
    inc h
    ld d, b
    ld [$e721], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, $51
    inc h
    ld d, b
    rla
    ld b, b
    ld d, c
    inc h
    ld d, b
    rla
    ld d, c
    ld d, c
    inc h
    ld d, b
    ld [$f321], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [hl], e
    ld d, c
    inc h
    ld d, b
    rla
    adc l
    ld d, c
    inc h
    ld d, b
    rla
    sub [hl]
    ld d, c
    inc h
    ld d, b
    ld [$ff21], sp
    ld e, c
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret c

    ld d, c
    inc h
    ld d, b
    rla
    push af
    ld d, c
    inc h
    ld d, b
    rla
    dec b
    ld d, d
    inc h
    ld d, b
    ld [$0b21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld [hl], $52
    inc h
    ld d, b
    rla
    ld b, l
    ld d, d
    inc h
    ld d, b
    rla
    ld e, b
    ld d, d
    inc h
    ld d, b
    rla
    add a
    ld d, d
    inc h
    ld d, b
    rla
    xor b
    ld d, d
    inc h
    ld d, b
    rla
    ret c

    ld d, d
    inc h
    ld d, b
    rla
    dec c
    ld d, e
    inc h
    ld d, b
    rla
    inc l
    ld d, e
    inc h
    ld d, b
    call Call_000_3c3c
    ld hl, $5aea
    ld de, $5ada
    ld a, [$d627]
    call Call_000_3160
    ld [$d627], a
    ret


    add hl, de
    ld [hl-], a

jr_016_5adc:
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    rrca
    ld e, e
    jr z, jr_016_5b3f

    ld b, c
    ld e, e
    ld e, d
    ld e, e
    ld e, a
    ld e, e
    ld bc, $e330
    rst $10
    add hl, de
    ld e, e
    inc hl
    ld e, e
    ld e, $5b
    ld e, $5b
    ld [bc], a
    jr nc, jr_016_5adc

    rst $10
    ld [hl-], a
    ld e, e
    inc a
    ld e, e
    scf
    ld e, e
    scf
    ld e, e
    inc bc
    ld b, b
    db $e3
    rst $10
    ld c, e
    ld e, e
    ld d, l
    ld e, e
    ld d, b
    ld e, e
    ld d, b
    ld e, e
    rst $38
    ld [$ea21], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    and c
    ld d, a
    inc h
    ld d, b
    rla
    pop de
    ld d, a
    inc h
    ld d, b
    rla
    rst $10
    ld d, a
    inc h
    ld d, b
    ld [$f621], sp
    ld e, d
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    db $ed
    ld d, a
    inc h
    ld d, b
    rla
    ld d, $58
    inc h
    ld d, b
    rla
    add hl, hl
    ld e, b

jr_016_5b3f:
    inc h
    ld d, b
    ld [$0221], sp
    ld e, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld c, a
    ld e, b
    inc h
    ld d, b
    rla
    ld [hl], d
    ld e, b
    inc h
    ld d, b
    rla
    ld a, c
    ld e, b
    inc h
    ld d, b
    rla
    sbc l
    ld e, b
    inc h
    ld d, b

Call_016_5b5f:
    rla
    jp $2458


    ld d, b
    db $10
    inc b
    inc b
    push de
    ld e, h
    add h
    ld e, e
    ld [hl], b
    ld e, e
    nop
    sub a
    ld e, h
    jp Jump_000_3c3c


    ld a, [$d771]
    bit 1, a
    ret nz

    ld b, $06
    call Call_000_3493
    ret nz

    ld b, $2d
    jp Jump_000_3493


    sub h
    ld e, e
    pop bc
    ld e, e
    xor $5b
    dec b
    ld e, h
    inc e
    ld e, h
    adc b
    ld e, h
    adc l
    ld e, h
    sub d
    ld e, h
    ld [$71fa], sp
    rst $10
    bit 7, a
    jr nz, jr_016_5ba9

    ld hl, $5bb7
    call Call_000_3c49
    ld hl, $d771
    set 6, [hl]
    jr jr_016_5bb4

jr_016_5ba9:
    ld hl, $5bbc
    call Call_000_3c49
    ld hl, $d771
    res 7, [hl]

jr_016_5bb4:
    jp Jump_000_24d7


    rla
    ld [hl], d
    ld h, l
    ld h, $50
    rla
    sbc [hl]
    ld h, l
    ld h, $50
    ld [$71fa], sp
    rst $10
    bit 6, a
    jr nz, jr_016_5bd6

    ld hl, $5be4
    call Call_000_3c49
    ld hl, $d771
    set 7, [hl]
    jr jr_016_5be1

jr_016_5bd6:
    ld hl, $5be9
    call Call_000_3c49
    ld hl, $d771
    res 6, [hl]

jr_016_5be1:
    jp Jump_000_24d7


    rla
    rst $08
    ld h, l
    ld h, $50
    rla
    rst $38
    ld h, l
    ld h, $50
    ld [$0021], sp
    ld e, h
    call Call_000_3c49
    ld a, $54
    call Call_000_13d0
    call Call_000_3748
    jp Jump_000_24d7


    rla
    add hl, hl
    ld h, [hl]
    ld h, $50
    ld [$1721], sp
    ld e, h
    call Call_000_3c49
    ld a, $3a
    call Call_000_13d0
    call Call_000_3748
    jp Jump_000_24d7


    rla
    ld b, c
    ld h, [hl]
    ld h, $50
    ld [$73cd], sp
    ld e, e
    jr nz, jr_016_5c5c

    ld hl, $5c65
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_016_5c54

    ld hl, $5c6a
    call Call_000_3c49
    ld bc, $2d01
    call Call_000_3e2e
    jr nc, jr_016_5c4c

    ld hl, $5c6f
    call Call_000_3c49
    ld hl, $d771
    set 1, [hl]
    jr jr_016_5c62

jr_016_5c4c:
    ld hl, $5c83
    call Call_000_3c49
    jr jr_016_5c62

jr_016_5c54:
    ld hl, $5c79
    call Call_000_3c49
    jr jr_016_5c62

jr_016_5c5c:
    ld hl, $5c7e
    call Call_000_3c49

jr_016_5c62:
    jp Jump_000_24d7


    rla
    ld c, a
    ld h, [hl]
    ld h, $50
    rla
    ldh [$66], a
    ld h, $50
    rla
    ld l, $68
    ld h, $11
    rla
    ld b, h
    ld l, b
    ld h, $50
    rla
    jp Jump_000_2668


    ld d, b
    rla
    ld a, [c]
    ld l, b
    ld h, $50
    rla
    inc sp
    ld l, c
    ld h, $50
    rla
    ld c, b
    ld l, c
    ld h, $50
    rla
    ld [hl], b
    ld l, c
    ld h, $50
    rla
    sbc l
    ld l, c
    ld h, $50
    dec c
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $02ff
    nop
    ld bc, $0007
    ld b, $08
    ld b, $2f
    rlca
    ld a, [bc]
    rst $38
    jp nc, $0d01

    rlca
    dec b
    rst $38
    db $d3
    ld [bc], a
    jr c, jr_016_5cbf

    ld a, [bc]
    rst $38
    jp nc, Jump_000_3c03

    ld [$ff05], sp

jr_016_5cbf:
    db $d3
    inc b
    db $10
    dec b
    rlca
    rst $38
    ret nc

    dec b
    ld a, [hl+]
    dec b
    add hl, bc
    rst $38
    ret nc

    ld b, $12
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    rla
    ld [de], a
    inc de
    ld d, $19
    db $10
    ld de, $180f
    inc d
    dec d
    ld a, [de]
    inc bc
    inc c
    inc bc
    inc bc
    ld d, $09
    rrca
    ret z

    ld e, [hl]
    add [hl]
    ld e, l
    pop af
    ld e, h
    nop
    ld h, [hl]
    ld e, [hl]
    call Call_016_5d07
    call Call_000_3c3c
    ld hl, $5d90
    ld de, $5d80
    ld a, [$d643]
    call Call_000_3160
    ld [$d643], a
    ret


Call_016_5d07:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5d3e
    call Call_016_5d43
    call Call_016_5d6f
    ld a, [$d826]
    bit 5, a
    jr nz, jr_016_5d2e

    push af
    ld a, $54
    ld [$d09f], a
    ld bc, $0202
    ld a, $17
    call Call_000_3e6d
    pop af

jr_016_5d2e:
    bit 6, a
    ret nz

    ld a, $54
    ld [$d09f], a
    ld bc, $0502
    ld a, $17
    jp Jump_000_3e6d


    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    rst $38

Call_016_5d43:
    push hl
    ld hl, $d73f
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_016_5d4f:
    ld a, [hl+]
    cp $ff
    jr z, jr_016_5d6b

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_016_5d60

    inc hl
    jr jr_016_5d4f

jr_016_5d60:
    ld a, [hl+]
    cp c
    jr nz, jr_016_5d4f

    ld hl, $d73f
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_016_5d6b:
    xor a
    ldh [$e0], a
    ret


Call_016_5d6f:
    ld hl, $d826
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_016_5d7d

    set 5, [hl]
    ret


jr_016_5d7d:
    set 6, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    pop bc
    ld e, l
    ld [bc], a
    ld e, [hl]
    inc c
    ld e, [hl]
    ld d, $5e
    jr nz, jr_016_5dee

    ld [bc], a
    jr nc, jr_016_5db8

    ret c

    ld a, [hl+]
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    cpl
    ld e, [hl]
    cpl
    ld e, [hl]
    inc bc
    ld b, b
    dec h
    ret c

    add hl, sp
    ld e, [hl]
    ld b, e
    ld e, [hl]
    ld a, $5e
    ld a, $5e
    inc b
    jr nc, @+$27

    ret c

    ld c, b
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld c, l
    ld e, [hl]
    dec b
    jr nc, @+$27

    ret c

jr_016_5db8:
    ld d, a
    ld e, [hl]
    ld h, c
    ld e, [hl]
    ld e, h
    ld e, [hl]
    ld e, h
    ld e, [hl]
    rst $38
    ld [$26fa], sp
    ret c

    bit 7, a
    jr nz, jr_016_5de4

    ld hl, $5ded
    call Call_000_3c49
    ld bc, $ec01
    call Call_000_3e2e
    ld hl, $5dfd
    jr nc, jr_016_5de7

    ld hl, $d826
    set 7, [hl]
    ld hl, $5df2
    jr jr_016_5de7

jr_016_5de4:
    ld hl, $5df8

jr_016_5de7:
    call Call_000_3c49
    jp Jump_000_24d7


    rla

jr_016_5dee:
    ld d, h
    ld h, h
    jr nz, jr_016_5e42

    rla
    cp d
    ld h, h
    jr nz, jr_016_5e02

    ld d, b
    rla
    ret


    ld h, h
    jr nz, jr_016_5e4d

    rla
    inc e
    ld h, l
    jr nz, jr_016_5e52

jr_016_5e02:
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


    rla
    ld a, $65
    jr nz, jr_016_5e7f

    rla
    ld e, d
    ld h, l
    jr nz, jr_016_5e84

    rla
    ld a, h
    ld h, l
    jr nz, @+$52

    rla
    and h
    ld h, l
    jr nz, jr_016_5e8e

    rla
    jp $2065


jr_016_5e42:
    ld d, b
    rla
    ret nc

    ld h, l
    jr nz, jr_016_5e98

    rla
    pop af
    ld h, l
    jr nz, @+$52

jr_016_5e4d:
    rla
    rrca
    ld h, [hl]
    jr nz, jr_016_5ea2

jr_016_5e52:
    rla
    rla
    ld h, [hl]
    jr nz, jr_016_5ea7

    rla
    ld e, a
    ld h, [hl]
    jr nz, jr_016_5eac

    rla
    add d
    ld h, [hl]
    jr nz, jr_016_5eb1

    rla
    adc l
    ld h, [hl]
    jr nz, @+$52

    ld l, $07
    nop
    jr jr_016_5e6d

    or l
    nop

jr_016_5e6d:
    ld a, [de]
    nop
    ret nc

    nop
    inc d
    nop
    db $ec
    inc bc
    inc bc
    ld b, $d0
    inc bc
    dec c
    inc b
    push de
    rrca
    dec de
    dec b

jr_016_5e7f:
    push de
    rrca
    add hl, bc
    inc b
    db $d3

jr_016_5e84:
    nop
    dec b
    dec de
    dec b
    ld c, $ff
    pop de
    ld bc, $1020

jr_016_5e8e:
    add hl, bc
    rst $38
    ret nc

    ld b, d
    db $e4
    ld [bc], a
    jr nz, jr_016_5ea7

    inc e
    rst $38

jr_016_5e98:
    jp nc, $e443

    inc bc
    jr jr_016_5ead

    inc d
    rst $38
    pop de
    ld b, h

jr_016_5ea2:
    and $17
    jr jr_016_5eb1

    inc e

jr_016_5ea7:
    rst $38
    pop de
    ld b, l
    and $18

jr_016_5eac:
    ld a, [bc]

jr_016_5ead:
    rst $00
    nop
    jr jr_016_5ebc

jr_016_5eb1:
    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    inc d
    rst $00
    inc bc
    inc bc

jr_016_5ebc:
    add hl, de
    rst $00
    inc bc
    dec c
    sbc [hl]
    rst $00
    rrca
    dec de
    sub l
    rst $00
    rrca
    add hl, bc
    ld b, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld b, d
    dec a
    dec a
    dec a
    dec a
    ld a, h
    dec a
    inc h
    ld a, l
    ld a, $44
    cpl
    ld c, $0e
    ld c, $46
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, b
    ld h, e
    ld c, $67
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld b, c
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, e
    ld c, $7b
    add hl, bc
    ld b, b
    ld h, c
    ld h, c
    ld h, d
    ld b, b
    ld h, e
    ld c, $67
    ld b, c
    ld b, d
    ld c, $36
    ld c, $36
    add hl, bc
    ld d, l
    ld c, $0e
    ld h, [hl]
    ld b, h
    ld a, e
    ld c, $0b
    dec bc
    ld b, [hl]
    ld c, $36
    ld c, $36
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    scf
    ld c, $0e
    cpl
    ld b, [hl]
    ld c, $37
    ld c, $37
    ld c, $59
    ld b, a
    cpl
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld d, $09
    rrca
    and [hl]
    ld h, b
    call nz, Call_016_5b5f
    ld e, a
    nop
    dec [hl]
    ld h, b
    call Call_016_5f71
    call Call_000_3c3c
    ld hl, $5fcc
    ld de, $5fbe
    ld a, [$d644]
    call Call_000_3160
    ld [$d644], a
    ret


Call_016_5f71:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5fa8
    call Call_016_5d43
    call $5fad
    ld a, [$d828]
    bit 0, a
    jr nz, jr_016_5f98

    push af
    ld a, $5f
    ld [$d09f], a
    ld bc, $0404
    ld a, $17
    call Call_000_3e6d
    pop af

jr_016_5f98:
    bit 1, a
    ret nz

    ld a, $5f
    ld [$d09f], a
    ld bc, $0408
    ld a, $17
    jp Jump_000_3e6d


    inc b
    inc b
    inc b
    ld [$21ff], sp
    jr z, @-$26

    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_016_5fbb

    set 0, [hl]
    ret


jr_016_5fbb:
    set 1, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    push hl
    ld e, a
    inc bc
    ld h, b
    inc e
    ld h, b
    db $f4
    inc h
    ld [bc], a
    jr nz, jr_016_5ff6

    ret c

    dec c
    ld h, b
    rla
    ld h, b
    ld [de], a
    ld h, b
    ld [de], a
    ld h, b
    inc bc
    jr nc, @+$29

    ret c

    ld h, $60
    jr nc, jr_016_6040

    dec hl
    ld h, b
    dec hl
    ld h, b
    rst $38
    ld [$38fa], sp
    ret c

    bit 7, a
    ld hl, $5ffe
    jr nz, jr_016_5ff3

    ld hl, $5ff9

jr_016_5ff3:
    call Call_000_3c49

jr_016_5ff6:
    jp Jump_000_24d7


    rla
    cp c
    ld h, [hl]
    jr nz, @+$52

    rla
    sbc $66
    jr nz, jr_016_6053

    ld [$cc21], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    cp $66
    jr nz, jr_016_6062

    rla
    ld a, [de]
    ld h, a
    jr nz, @+$52

    rla
    ld h, $67
    jr nz, @+$52

    ld [$d821], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld d, e
    ld h, a
    jr nz, jr_016_607b

    rla
    add l
    ld h, a
    jr nz, jr_016_6080

    rla
    sbc c
    ld h, a
    jr nz, jr_016_6085

    ld l, $0a
    nop
    ld a, [de]
    ld bc, $00cf
    jr jr_016_603e

jr_016_603e:
    pop de
    nop

jr_016_6040:
    inc d
    nop
    db $ec
    dec bc
    rla
    add hl, bc
    ret nc

    inc bc
    inc bc
    dec b
    jp nc, Jump_000_030f

    ld b, $d2
    inc bc
    dec de
    inc bc
    rst $08

jr_016_6053:
    dec bc
    inc bc
    inc bc
    jp hl


    dec bc
    dec bc
    inc b
    call nc, $1b0f
    inc bc
    ret nc

jr_016_605f:
    nop
    inc b
    inc l

jr_016_6062:
    inc c
    inc e
    rst $38
    rst $38
    ld bc, $0b18
    jr @+$01

    jp nc, $e642

    add hl, de
    jr nz, jr_016_607e

    dec bc
    rst $38
    ret nc

    ld b, e
    db $e4
    inc b
    dec a
    add hl, bc
    inc c
    rst $38

jr_016_607b:
    rst $38
    add h
    ld [de], a

jr_016_607e:
    dec bc
    rst $00

jr_016_6080:
    nop
    ld a, [de]
    ld a, [bc]
    rst $00
    nop

jr_016_6085:
    jr jr_016_608f

    rst $00
    nop
    inc d
    ld [hl], d
    rst $00
    dec bc
    rla
    inc d

jr_016_608f:
    rst $00
    inc bc
    inc bc
    sub d
    rst $00
    rrca
    inc bc
    jr nz, jr_016_605f

    inc bc
    dec de
    ld l, b
    rst $00
    dec bc
    inc bc
    ld l, h
    rst $00
    dec bc
    dec bc
    sbc [hl]
    rst $00
    rrca
    dec de
    inc a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld a, h
    dec a
    ld a, l
    inc h
    ld a, $44
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2f
    ld b, [hl]
    ld h, b
    ld h, c
    ld h, c
    ld b, c
    ld b, d
    ld h, c
    ld b, c
    ld h, c
    ld b, d
    ld c, $5a
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld h, h
    ld c, $34
    ld c, $56
    ld c, $0e
    ld c, $56
    ld c, $56
    ld c, $0e
    ld c, $66
    ld b, h
    ld c, $36
    ld c, $0e
    ld c, $47
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, a
    ld b, [hl]
    ld b, h
    cpl
    scf
    ld c, $5a
    cpl
    ld c, $0e
    ld e, d
    ld c, $5a
    cpl
    ld b, e
    ld b, e
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, $56
    ld c, c
    ld c, c
    ld c, c
    ld d, c
    ld b, h
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2f
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
    ld c, c
    ld c, c
    ld c, d
    ld d, $09
    ld [$625a], sp
    add [hl]
    ld h, c
    add hl, sp
    ld h, c
    nop
    ei
    ld h, c
    call Call_016_614f
    call Call_000_3c3c
    ld hl, $6192
    ld de, $6180
    ld a, [$d658]
    call Call_000_3160
    ld [$d658], a
    ret


Call_016_614f:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $6173
    call Call_016_5d43
    call Call_016_6176
    ld a, [$d836]
    bit 0, a
    ret nz

    ld a, $54
    ld [$d09f], a
    ld bc, $0405
    ld a, $17
    jp Jump_000_3e6d


    inc b
    dec b
    rst $38

Call_016_6176:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d836
    set 0, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    xor e
    ld h, c
    or l
    ld h, c
    cp a
    ld h, c
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $3530
    ret c

    db $dd
    ld h, c
    rst $20
    ld h, c
    ld [c], a
    ld h, c
    ld [c], a
    ld h, c
    ld [bc], a
    ld b, b
    dec [hl]
    ret c

    db $ec
    ld h, c
    or $61
    pop af
    ld h, c
    pop af
    ld h, c
    rst $38
    ld [$9221], sp
    ld h, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$9e21], sp
    ld h, c
    call Call_000_31cc
    jp Jump_000_24d7


    ld [$38fa], sp
    ret c

    bit 7, a
    ld hl, $61d8
    jr nz, jr_016_61cd

    ld hl, $61d3

jr_016_61cd:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    adc l
    ld c, l
    ld hl, $1750
    and c
    ld c, l
    ld hl, $1750
    push bc
    ld c, l
    ld hl, $1750
    push af
    ld c, l
    ld hl, $1750
    ld [bc], a
    ld c, [hl]
    ld hl, $1750
    dec [hl]
    ld c, [hl]
    ld hl, $1750
    ld d, d
    ld c, [hl]
    ld hl, $1750
    ld h, [hl]
    ld c, [hl]
    ld hl, $2e50
    ld b, $00
    ld [$e900], sp
    nop
    ld a, [bc]
    nop
    db $eb
    nop
    inc c
    nop
    db $ec
    dec bc
    add hl, bc
    inc bc
    pop de
    rrca
    dec c
    dec b
    pop de
    rlca
    dec c
    ld b, $d1
    nop
    ld b, $18
    dec c
    dec b
    rst $38
    db $d3
    ld b, c
    and $27
    jr nz, jr_016_6227

    ld c, $ff
    jp nc, $e442

    dec bc

jr_016_6227:
    dec de
    inc de
    dec c
    cp $00
    inc bc
    dec a
    db $10
    ld b, $ff
    rst $38
    add h
    ld [c], a
    dec a
    ld [de], a
    ld [$ffff], sp
    add l
    jr z, jr_016_6279

    rrca
    add hl, bc
    rst $38
    rst $38
    add [hl]
    ld h, $fb
    add $00
    ld [$c6fc], sp
    nop
    ld a, [bc]
    db $fd
    add $00
    inc c
    ld b, c
    rst $00
    dec bc
    add hl, bc
    ld e, a
    rst $00
    rrca
    dec c
    daa
    rst $00
    rlca
    dec c
    inc a
    dec a
    dec a
    dec a
    inc h
    ld a, l
    ld a, h
    ld a, $44
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld e, d
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    ld c, $0e
    ld b, [hl]
    dec c
    ld c, $2f

jr_016_6279:
    ld b, [hl]
    ld b, b
    ld a, [hl+]
    dec hl
    ld b, d
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    dec [hl]
    jr jr_016_62cc

    cpl
    ld c, $7b
    ld b, [hl]
    ld b, h
    ld e, $35
    ld b, [hl]
    ld c, $7b
    scf
    ld b, [hl]
    ld b, h
    ld a, [bc]
    ld e, $46
    ld c, $37
    cpl
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    dec b
    dec c
    dec c
    jp hl


    ld h, e
    sub l
    ld h, e
    xor [hl]
    ld h, d
    nop
    push bc
    ld h, e
    call Call_016_62c4
    call Call_000_3c3c
    ld hl, $6397
    ld de, $62fa
    ld a, [$d653]
    call Call_000_3160
    ld [$d653], a
    ret


Call_016_62c4:
Jump_016_62c4:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

jr_016_62cc:
    ld a, [$d866]
    bit 7, a
    jr nz, jr_016_62da

    ld a, $31
    ld b, $32
    jp Jump_016_62de


jr_016_62da:
    ld a, $72
    ld b, $73

Jump_016_62de:
    push bc
    ld [$d09f], a
    ld bc, $0602
    call Call_016_62f0
    pop bc
    ld a, b
    ld [$d09f], a
    ld bc, $0603

Call_016_62f0:
    ld a, $17
    jp Jump_000_3e6d


Jump_016_62f5:
    xor a
    ld [$d653], a
    ret


    dec b
    ld h, e
    ld c, h
    ld [hl-], a
    ld c, c
    ld h, e
    add d
    ld h, e
    inc b
    ld h, e
    ret


    ld a, [$d866]
    bit 6, a
    ret nz

    ld hl, $633e
    call Call_000_34bf
    jp nc, Jump_000_3219

    xor a
    ldh [$b4], a
    ld a, [$cd3d]
    cp $03
    jr nc, jr_016_6325

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2920


jr_016_6325:
    cp $05
    jr z, jr_016_635b

    ld hl, $d866
    bit 7, [hl]
    set 7, [hl]
    ret nz

    ld hl, $d126
    set 5, [hl]
    ld a, $ad
    call Call_000_23b1
    jp Jump_016_62c4


    ld bc, $0205
    ld b, $0b
    dec b
    dec bc
    ld b, $10
    jr @+$01

    call Call_000_3275
    ld a, [$d057]
    cp $ff
    jp z, Jump_016_62f5

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2920


jr_016_635b:
    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $6379
    call Call_000_350c
    dec a
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d653], a
    ld [$da39], a
    ret


    ld b, b
    inc c
    jr nz, @+$0e

    add b
    rlca
    jr nz, jr_016_6387

    rst $38
    ld a, [$cd38]
    and a
    ret nz

jr_016_6387:
    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d653], a
    ld [$da39], a
    ret


    and h
    ld h, e
    ld bc, $6600
    ret c

    xor [hl]
    ld h, e
    cp b
    ld h, e
    or e
    ld h, e
    or e
    ld h, e
    rst $38
    ld [$9721], sp
    ld h, e
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc a
    ld e, l
    ld hl, $1750
    ld h, h
    ld e, [hl]
    ld hl, $1750
    sbc [hl]
    ld e, [hl]
    ld hl, $2108
    ld h, [hl]
    ret c

    set 6, [hl]
    jp Jump_000_24d7


    inc bc
    inc bc
    db $10
    jr jr_016_63cc

    rst $30
    nop

jr_016_63cc:
    dec b
    nop
    ld a, b
    nop
    ld b, $00
    ld a, b
    nop
    ld bc, $051e
    ld a, [bc]
    rst $38
    ret nc

    ld b, c
    rst $30
    ld bc, $c7a0
    db $10

jr_016_63e0:
    jr jr_016_63e0

    add $00
    dec b
    rst $38
    add $00
    ld b, $49
    ld bc, $3231
    ld bc, $034a
    inc bc
    inc bc
    ld c, c
    ld sp, $4a32
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    ld d, d
    ld sp, $6f32
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, d
    ld d, [hl]
    ld [hl], d
    ld [hl], e
    ld c, [hl]
    ld l, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, c
    ld bc, $0101
    ld c, d
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    dec b
    ld [hl], b
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, e
    ld d, e
    ld b, [hl]
    ld b, [hl]
    ld l, a
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, e
    ld c, h
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld d, l
    ld c, b
    ld c, b
    ld c, b
    ld e, e
    ld c, h
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, d
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld l, a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    dec b
    adc e
    ld h, l
    ld l, d
    ld h, l
    sbc [hl]
    ld h, h
    nop
    ld [hl], c
    ld h, l
    call Call_000_3c3c
    ld hl, $64b2
    ld a, [$d64b]
    jp Jump_000_3d97


    xor a
    ld [$cd6b], a
    ld [$d64b], a
    ret


    dec c
    ld h, l
    dec hl
    ld h, l
    cp e
    ld h, h
    cp d
    ld h, h
    ret


    call Call_000_3dd7
    ld a, [$d358]
    push af
    xor a
    ld [$cd6b], a
    ld a, $55
    call Call_000_3e6d
    pop af
    ld [$d358], a
    ld hl, $d733
    res 1, [hl]
    inc hl
    set 0, [hl]
    xor a
    ld hl, $d64d
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d653], a
    ld [$d64b], a
    ld hl, $d863
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$d64b], a
    ld a, $00
    ld [$d719], a
    ld b, $1c
    ld hl, $7848
    call Call_000_35d6
    ld b, $05

jr_016_64ff:
    ld c, $78
    call Call_000_3739
    dec b
    jr nz, jr_016_64ff

    call Call_000_3865
    jp Jump_000_1f54


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $6528
    call Call_000_350c
    dec a
    ld [$cd38], a
    call Call_000_3486
    ld a, $01
    ld [$d64b], a
    ret


    ld b, b
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $01
    ld [$d528], a
    ld a, $01
    ldh [$8c], a
    call Call_000_3541
    ld a, $08
    ldh [$8d], a
    call Call_000_34a6
    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    inc a
    ld [$d528], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld a, $ff
    ld [$cd6b], a
    ld a, $08
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $02
    ld [$d64b], a
    ret


    ld l, h
    ld h, l
    rla
    or l
    ld e, a
    ld hl, $0350
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    ld a, b
    rlca
    dec b
    inc bc
    ld a, b
    nop
    ld bc, $0603
    add hl, bc
    rst $38
    ret nc

    ld bc, $c717
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    inc d
    inc d
    ld h, l
    inc d
    inc d
    jr @+$1a

    scf
    jr jr_016_65ad

    jr jr_016_65af

    jr jr_016_65b1

    jr @+$1a

    jr jr_016_6609

    jr jr_016_65b7

    ld hl, $65b7

jr_016_65a2:
    ld a, [hl+]
    ldh [$db], a
    and a
    ret z

    push hl
    ld b, a
    call Call_000_3493
    pop hl

jr_016_65ad:
    jr z, jr_016_65a2

jr_016_65af:
    ld b, $05

jr_016_65b1:
    ld hl, $7f37
    jp Jump_000_35d6


jr_016_65b7:
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_6609:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_73d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
