; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    nop
    add hl, bc
    ld a, [bc]
    ld l, c
    ld b, b
    add c
    ld c, d
    add hl, de
    ld c, d
    add hl, bc
    jr nz, jr_007_401d

    ld d, d
    db $eb
    add $0a
    ld a, [bc]
    ld e, c
    nop
    cp c
    ret


    rra
    ld a, l
    ld b, c
    dec h
    rst $00
    add hl, bc
    ld [hl-], a
    nop

jr_007_401d:
    nop
    ld hl, $22c7
    ld b, b
    ld b, e
    dec b
    inc bc
    ld b, $01
    and l
    inc bc
    ld [de], a
    nop
    and [hl]
    add hl, bc
    ld b, $00
    and a
    dec bc
    dec bc
    nop
    xor e
    dec bc
    rrca
    nop
    xor h
    dec b
    dec b
    add hl, bc
    inc bc
    dec bc
    db $10
    inc b
    dec bc
    inc c
    dec b
    dec bc
    add hl, bc
    ld b, $03
    dec c
    rlca
    ld [bc], a
    dec c
    add hl, bc
    db $10
    cp $02
    ld bc, $0a0b
    ld [de], a
    rst $38
    rst $38
    ld [bc], a
    inc c
    rst $00
    inc bc
    ld b, $12
    rst $00
    inc bc
    ld [de], a
    inc a
    rst $00
    add hl, bc
    ld b, $4e
    rst $00
    dec bc
    dec bc
    ld d, b
    rst $00
    dec bc
    rrca
    jr @+$66

    jr nz, jr_007_407a

    ld hl, $7b7b
    inc c
    dec c
    ld c, $18
    ld h, h
    scf
    ld a, [hl-]
    ld a, [hl]
    ld a, e
    ld a, c

jr_007_407a:
    db $10
    ld de, $1812
    ld h, h
    ld a, e
    ld a, e
    ld a, c
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr jr_007_40ed

    jr nz, jr_007_4098

    ld hl, $7b7b
    ld a, e
    ld a, e
    ld a, e
    jr jr_007_40f7

    scf
    ld a, [hl-]
    ld a, [hl]
    jr nz, jr_007_40b9

jr_007_4098:
    jr nz, jr_007_40bb

    ld a, e
    jr jr_007_4101

    ld a, e
    ld a, e
    ld a, c
    ld a, h
    ld [hl], d
    ld a, h
    ld [hl], e
    ld a, e
    jr jr_007_40d4

    ld e, $7b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr jr_007_40f4

    dec l
    rra
    rra
    rra
    rra
    rra
    rra
    rra

jr_007_40b9:
    inc d
    ld l, e

jr_007_40bb:
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    nop
    ld [de], a
    ld a, [bc]
    db $fc
    ld b, b
    or d
    ld c, d
    xor a
    ld c, d
    inc c
    ld bc, $451a
    add sp, -$3a
    db $10
    inc d

jr_007_40d4:
    inc hl
    ld a, [bc]
    cp l
    ret z

    nop
    db $fd
    ld b, d
    dec sp
    ret z

    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $e5
    ld b, b
    dec bc
    nop
    ld bc, $091b
    inc bc
    ld [bc], a
    inc b

jr_007_40ed:
    inc e
    add hl, bc
    cp $01
    ld bc, $1104

jr_007_40f4:
    inc de
    cp $02

jr_007_40f7:
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld a, [bc]
    ld c, l
    ld d, d
    ld d, d
    ld c, a

jr_007_4101:
    ld sp, $5250
    ld d, d
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld sp, $0a0a
    ld [hl], h
    ld c, [hl]
    ld a, [bc]
    ld c, l
    rlca
    rlca
    ld b, d
    ld a, [de]
    ld a, [de]
    ld sp, $4e31
    ld a, [bc]
    ld l, [hl]
    ld [hl], h
    ld [hl], h
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, l
    ld a, [bc]
    ld l, [hl]
    rlca
    rlca
    ld b, d
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $3131
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld l, a
    rlca
    rlca
    ld l, a
    inc e
    dec bc
    dec bc
    ld l, l
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld sp, $0b0b
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld sp, $3131
    ld sp, $7474
    ld c, [hl]
    ld a, [bc]
    ld c, l
    cpl
    ld a, [de]
    cpl
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld sp, $3131
    ld sp, $3131
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    dec bc
    dec bc
    ld a, [de]
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    dec bc
    dec bc
    ld sp, $0a4e
    ld c, l
    ld a, [de]
    ld sp, $1a08
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld c, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    dec bc
    dec bc
    ld sp, $0b0a
    dec bc
    ld l, l
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld [hl], h
    ld sp, $0b0b
    ld [hl], h
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld d, c
    ld d, c
    ld h, e
    dec bc
    ld h, d
    ld d, c
    ld d, c
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    dec bc
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld l, l
    ld b, $03
    inc bc
    rlca
    ld de, $1415
    db $10
    ld [$0500], sp
    add hl, bc
    ld c, $0f
    inc c
    dec c
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, b
    ld l, e
    ld l, e
    dec b
    ld l, c
    ld l, d
    dec b
    dec b
    dec b
    ld l, l
    ld l, [hl]
    ld l, b
    ld l, b
    dec b
    ld l, b
    ld l, b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    inc b
    ld c, $05
    add hl, bc
    rrca
    ld bc, $0f02
    rrca
    inc c
    dec c
    rrca
    ld b, $0b
    rrca
    rlca
    dec b
    ld [de], a
    inc de
    add hl, bc
    rrca
    inc d
    dec d
    rrca
    rrca
    jr jr_007_4212

    rrca
    ld b, $0b
    rrca
    rlca
    ld a, [de]
    rra
    ld d, $17
    ld e, $1c
    dec e
    dec de
    rrca
    jr nz, jr_007_422a

    rrca
    ld b, $0b
    dec de
    ld [hl+], a
    ld a, l
    ld a, l
    ld a, l
    ld a, l

jr_007_4212:
    ld b, $01
    ld bc, $067d
    ld bc, $7d27
    ld a, [bc]
    inc h
    inc b
    ld a, l
    sub c
    add a
    sbc b
    add e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b

jr_007_422a:
    adc l
    add [hl]
    add b
    sub d
    adc d
    add a
    add b
    adc l
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    rst $28
    ld d, b
    ld d, b
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    ld d, b
    sub d
    adc a
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    ld d, b
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    adc b
    sub l
    sbc b
    sub d
    add b
    sub h
    sub c
    ld d, b
    ld d, b
    ld d, b
    add h
    sub a
    add h
    add [hl]
    add [hl]
    sub h
    sub e
    adc [hl]
    sub c
    ld d, b
    adc e
    adc b
    add d
    adc d
    adc b
    sub e
    sub h
    adc l
    add [hl]
    ld d, b
    add h
    sub a
    add h
    add [hl]
    add [hl]
    add d
    sub h
    sub e
    add h
    ld d, b
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    add h
    adc l
    add [hl]
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    push af
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub b
    sub h
    add h
    add h
    adc l
    ld d, b
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add a
    sbc b
    add a
    adc [hl]
    sub c
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    sub c
    add d
    add b
    adc l
    adc b
    adc l
    add h
    ld d, b
    ld d, b
    adc h
    add h
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld d, b
    ld d, b
    sub e
    add h
    adc l
    sub e
    add b
    add d
    adc [hl]
    adc [hl]
    adc e
    ld d, b
    add [hl]
    add b
    sub d
    sub e
    adc e
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add d
    sbc b
    sub e
    add a
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub e
    add b
    sub c
    sbc b
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add c
    adc e
    add b
    sub d
    sub e
    adc [hl]
    adc b
    sub d
    add h
    ld d, b
    adc a
    adc b
    adc l
    sub d
    adc b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub e
    add b
    adc l
    add [hl]
    add h
    adc e
    add b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7a
    sub c
    adc [hl]
    sub [hl]
    adc e
    adc b
    sub e
    add a
    add h
    ld d, b
    adc [hl]
    adc l
    adc b
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add l
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld d, b
    ld d, b
    adc d
    add b
    add e
    add b
    add c
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    ld d, b
    ld d, b
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add d
    add a
    adc [hl]
    adc d
    add h
    ld d, b
    ld d, b
    ld d, b
    adc h
    sub c
    add sp, -$74
    adc b
    adc h
    add h
    ld d, b
    ld d, b
    ld d, b
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    adc e
    add h
    add h
    ld d, b
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    add d
    add a
    add b
    adc l
    add b
    sub c
    add c
    adc [hl]
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    add b
    sub c
    add b
    sub d
    add h
    add d
    sub e
    ld d, b
    ld d, b
    adc a
    sub d
    sbc b
    add e
    sub h
    add d
    adc d
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add h
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    add b
    add [hl]
    adc h
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7c
    adc e
    add h
    add d
    sub e
    add b
    add c
    sub h
    sbc c
    sbc c
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    adc d
    adc [hl]
    add l
    add l
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    add b
    adc l
    adc d
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add h
    adc e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ld d, b
    ld d, b
    ld d, b
    sub e
    add b
    sub h
    sub c
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7b
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    sub l
    add h
    adc l
    adc [hl]
    adc l
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    adc b
    sub e
    add h
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7d
    adc [hl]
    add e
    sub h
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc c
    sbc b
    adc l
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc [hl]
    adc e
    sub e
    sub c
    add h
    sub d
    ld d, b
    ld d, b
    ld d, b
    add b
    sub c
    sub e
    adc b
    add d
    sub h
    adc l
    adc [hl]
    ld d, b
    ld d, b
    sbc c
    add b
    adc a
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    adc b
    sub e
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    sub c
    add b
    add c
    add c
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$6b
    sub h
    adc e
    adc a
    adc b
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc l
    adc b
    adc l
    add h
    sub e
    add b
    adc e
    add h
    sub d
    ld d, b
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    adc b
    add d
    add a
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7d
    sub c
    add b
    sub e
    adc b
    adc l
    adc b
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    add b
    adc b
    sub c
    ld d, b
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    adc a
    sub d
    ld d, b
    ld d, b
    add a
    adc [hl]
    sub c
    sub d
    add h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add b
    add e
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$6e
    add b
    adc l
    add e
    sub d
    add a
    sub c
    add h
    sub [hl]
    ld d, b
    sub d
    add b
    adc l
    add e
    sub d
    adc e
    add b
    sub d
    add a
    ld d, b
    adc [hl]
    adc h
    add b
    adc l
    sbc b
    sub e
    add h
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    adc h
    add b
    sub d
    sub e
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    adc c
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    adc a
    sub h
    add l
    add l
    sub [hl]
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    sub e
    sub h
    add l
    add l
    add h
    add h
    sub l
    add h
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add l
    adc e
    add b
    sub c
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc c
    adc [hl]
    adc e
    sub e
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    sub l
    add b
    adc a
    adc [hl]
    sub c
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sbc c
    sub h
    add c
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add h
    adc d
    add b
    adc l
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    add b
    sub c
    add b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    ld d, b
    sub [hl]
    add h
    add h
    add e
    adc e
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    adc d
    sub h
    adc l
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add c
    add h
    add h
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7d
    adc [hl]
    add e
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    sub c
    adc b
    adc h
    add h
    add b
    adc a
    add h
    ld d, b
    ld d, b
    add e
    sub h
    add [hl]
    sub e
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    sub l
    add h
    adc l
    adc [hl]
    adc h
    adc [hl]
    sub e
    add a
    ld d, b
    ld d, b
    add e
    add h
    sub [hl]
    add [hl]
    adc [hl]
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7e
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    ld d, b
    ld d, b
    adc h
    add h
    sub e
    add b
    adc a
    adc [hl]
    add e
    ld d, b
    ld d, b
    ld d, b
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    sub c
    add h
    add h
    adc h
    add b
    add d
    add a
    add b
    adc h
    adc a
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7a
    adc [hl]
    adc e
    add e
    sub h
    add d
    adc d
    ld d, b
    ld d, b
    ld d, b
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add c
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add h
    sub [hl]
    sub e
    sub [hl]
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    sub h
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$76
    adc b
    adc l
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    add d
    adc e
    adc [hl]
    sbc b
    sub d
    sub e
    add h
    sub c
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7c
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld d, b
    add d
    adc e
    add h
    add l
    add b
    add c
    adc e
    add h
    ld d, b
    ld d, b
    sub [hl]
    add h
    add h
    sbc c
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc a
    add h
    sub c
    sub d
    adc b
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    sub c
    adc [hl]
    sub [hl]
    add b
    adc d
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$79
    add b
    sub h
    adc l
    sub e
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    add b
    add c
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    adc e
    add b
    adc d
    add b
    sbc c
    add b
    adc h
    ld d, b
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    sub e
    adc [hl]
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub e
    add b
    sub c
    adc h
    adc b
    add h
    ld d, b
    ld d, b
    ld d, b
    add c
    sub h
    adc e
    add c
    add b
    sub d
    add b
    sub h
    sub c
    ld d, b
    sub l
    add h
    adc l
    sub h
    sub d
    add b
    sub h
    sub c
    ld d, b
    ld d, b
    sub e
    add h
    adc l
    sub e
    add b
    add d
    sub c
    sub h
    add h
    adc e
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7a
    adc [hl]
    adc e
    add e
    add h
    add h
    adc l
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add b
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$71
    adc [hl]
    adc l
    sbc b
    sub e
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    adc a
    adc b
    add e
    add b
    sub d
    add a
    ld d, b
    ld d, b
    sub c
    add b
    sub e
    sub e
    add b
    sub e
    add b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    sub e
    adc b
    add d
    add b
    sub e
    add h
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    adc [hl]
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    add b
    ld d, b
    ld d, b
    add [hl]
    add h
    adc [hl]
    add e
    sub h
    add e
    add h
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    add b
    add h
    sub c
    adc [hl]
    add e
    add b
    add d
    sub e
    sbc b
    adc e
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    add b
    add [hl]
    adc l
    add h
    adc h
    adc b
    sub e
    add h
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7e
    add a
    add b
    sub c
    adc h
    add b
    adc l
    add e
    add h
    sub c
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    ld d, b
    ld d, b
    add d
    add a
    add b
    sub c
    adc h
    add h
    adc e
    add h
    adc [hl]
    adc l
    sub [hl]
    add b
    sub c
    sub e
    adc [hl]
    sub c
    sub e
    adc e
    add h
    ld d, b
    add d
    add a
    add b
    sub c
    adc b
    sbc c
    add b
    sub c
    add e
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$72
    add e
    add e
    adc b
    sub d
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc e
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub l
    adc b
    adc e
    add h
    adc a
    adc e
    sub h
    adc h
    add h
    ld d, b
    add c
    add h
    adc e
    adc e
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    sub [hl]
    add h
    add h
    adc a
    adc b
    adc l
    add c
    add h
    adc e
    adc e
    sub l
    adc b
    add d
    sub e
    sub c
    add h
    add h
    add c
    add h
    adc e
    call Call_000_190f
    call Call_000_3ded
    call Call_000_3680
    call Call_000_36a0
    ld hl, $49c1
    call Call_000_3c49
    ld hl, $c43a
    ld bc, $080f
    ld a, $07
    ld [$d12c], a
    ld a, $14
    ld [$d125], a
    call Call_000_30e8
    ld a, [$cc26]
    and a
    jp z, Jump_000_1f54

    ld b, $1c
    ld hl, $7b6a
    call Call_000_35d6
    jp Jump_000_1f54


    rla
    sub [hl]
    ld e, l
    ld [hl+], a
    ld d, b
    ld hl, $4a14
    call Call_000_3c49
    ld hl, $cf7b
    ld a, l
    ld [$cf8b], a
    ld a, h
    ld [$cf8c], a
    ld a, [$cc36]
    push af
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld [$cf93], a
    ld a, $04
    ld [$cf94], a
    call Call_000_2be6
    pop bc
    ld a, b
    ld [$cc36], a
    ret c

    ld hl, $d126
    set 7, [hl]
    ld hl, $cc5b
    ld a, [$cf92]
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    ld hl, $d3af
    call Call_007_4a0d

Call_007_4a0d:
    inc hl
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


    rla
    xor l
    ld e, l
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld hl, $d126
    set 5, [hl]
    ld hl, $d796
    res 0, [hl]
    ld hl, $d7a3
    res 1, [hl]
    ld hl, $4a34
    ld a, [$d639]
    jp Jump_000_3d97


    jr c, jr_007_4a80

    ld [hl], e
    ld c, d
    ld b, $2b
    call Call_000_3493
    ret nz

    ld a, [$d361]
    cp $04
    ret nz

    ld a, [$d362]
    cp $12
    ret nz

    ld a, $08
    ld [$d528], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2920
    xor a
    ldh [$b4], a
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    call Call_000_3486
    xor a
    ld [$c109], a
    ld [$cd6b], a
    ld a, $01
    ld [$d639], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    ld a, $00
    ld [$d639], a

jr_007_4a80:
    ret


    sub [hl]
    ld c, d
    sbc e
    ld c, d
    and b
    ld c, d
    ld [$ef24], a
    inc h
    and l
    ld c, d
    xor d
    ld c, d
    sub c
    ld c, d
    rla
    rst $08
    ld h, c
    add hl, hl
    ld d, b
    rla
    and $61
    add hl, hl
    ld d, b
    rla
    ld a, [hl+]
    ld h, d
    add hl, hl
    ld d, b
    rla
    ld h, [hl]
    ld h, d
    add hl, hl
    ld d, b
    rla
    sbc b
    ld h, d
    add hl, hl
    ld d, b
    rla
    and d
    ld h, d
    add hl, hl
    ld d, b
    jp Jump_000_3c3c


    cp b
    ld c, d
    ld hl, sp+$4a
    db $fd
    ld c, d
    ld [$bf21], sp
    rst $10
    bit 0, [hl]
    set 0, [hl]
    jr nz, jr_007_4ada

    ld hl, $4ae3
    call Call_000_3c49
    ld bc, $1401
    call Call_000_3e2e
    jr nc, jr_007_4ad5

    ld hl, $4ae8
    jr jr_007_4add

jr_007_4ad5:
    ld hl, $4af3
    jr jr_007_4add

jr_007_4ada:
    ld hl, $4aee

jr_007_4add:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    cp a
    ld d, l
    inc hl
    ld d, b
    rla
    ld b, e
    ld d, [hl]
    inc hl
    dec bc
    ld d, b
    rla
    ld d, d
    ld d, [hl]
    inc hl
    ld d, b
    rla
    ld a, h
    ld d, [hl]
    inc hl
    ld d, b
    rla
    sbc a
    ld d, [hl]
    inc hl
    ld d, b
    rla
    jr nz, jr_007_4b57

    inc hl
    ld d, b
    dec b
    ld b, $05
    ret nz

    ld b, c
    add d
    ld d, b
    ld c, $4b
    nop
    ld a, [bc]
    ld d, h
    ld a, [$d74b]
    bit 6, a
    call nz, Call_007_5076
    ld a, $01
    ld [$cf0c], a
    xor a
    ld [$cc3c], a
    ld hl, $4b28
    ld a, [$d5f0]
    jp Jump_000_3d97


    ld c, [hl]
    ld c, e
    ld l, [hl]
    ld c, e
    add d
    ld c, e
    and d
    ld c, e
    jp nc, $fd4b

    ld c, e
    ld [hl], $4c
    ld [hl], d
    ld c, h
    add b
    ld c, h
    nop
    ld c, l
    ld l, l
    ld c, l
    cp c
    ld c, l
    inc bc
    ld c, [hl]
    ld [hl-], a
    ld c, [hl]
    ld l, l
    ld c, [hl]
    or b
    ld c, [hl]
    ld [de], a
    ld c, a
    call nc, $094f
    ld d, b
    ld a, [$d74b]
    bit 7, a
    ret z

    ld a, [$cf10]

jr_007_4b57:
    and a
    ret nz

    ld a, $31
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld hl, $d72e
    res 4, [hl]
    ld a, $01
    ld [$d5f0], a
    ret


    ld a, $08
    ldh [$8c], a
    ld de, $4b7e
    call Call_000_363a
    ld a, $02
    ld [$d5f0], a
    ret


    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $31
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $2e
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $03
    ld [$d5f0], a
    ret


jr_007_4ba2:
    call Call_000_3dd7
    ld hl, $ccd3
    ld de, $4bcf
    call Call_000_350c
    dec a
    ld [$cd38], a
    call Call_000_3486
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    ld a, $05
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    ld a, $04
    ld [$d5f0], a
    ret


    ld b, b
    ld [$faff], sp
    jr c, jr_007_4ba2

    and a
    ret nz

    ld hl, $d747
    set 0, [hl]
    ld hl, $d74b
    set 0, [hl]
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_34a6
    call Call_000_2429
    ld hl, $d733
    res 1, [hl]
    call Call_000_2307
    ld a, $05
    ld [$d5f0], a
    ret


    ld a, $fc
    ld [$cd6b], a
    ld a, $11
    ldh [$8c], a
    call Call_000_2920
    call Call_000_3dd7
    ld a, $12
    ldh [$8c], a
    call Call_000_2920
    call Call_000_3dd7
    ld a, $13
    ldh [$8c], a
    call Call_000_2920
    call Call_000_3dd7
    ld a, $14
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d74b
    set 1, [hl]
    xor a
    ld [$cd6b], a
    ld a, $06
    ld [$d5f0], a
    ret


    ld a, [$d361]
    cp $06
    ret nz

    ld a, $05
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    call Call_000_2429
    ld a, $0c
    ldh [$8c], a
    call Call_000_2920
    ld a, $01
    ld [$cd38], a
    ld a, $40
    ld [$ccd3], a
    call Call_000_3486
    ld a, $08
    ld [$d528], a
    ld a, $07
    ld [$d5f0], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    ld a, $06
    ld [$d5f0], a
    ret


    ld a, [$d717]
    cp $b0
    jr z, jr_007_4c8d

    cp $b1
    jr z, jr_007_4ca8

    jr jr_007_4cc5

jr_007_4c8d:
    ld de, $4c9c
    ld a, [$d361]
    cp $04
    jr z, jr_007_4cf3

    ld de, $4ca3
    jr jr_007_4cf3

    nop
    nop
    ret nz

    ret nz

    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ret nz

    ret nz

    rst $38

jr_007_4ca8:
    ld de, $4cb7
    ld a, [$d361]
    cp $04
    jr z, jr_007_4cf3

    ld de, $4cbf
    jr jr_007_4cf3

    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38

jr_007_4cc5:
    ld de, $4cef
    ld a, [$d362]
    cp $09
    jr nz, jr_007_4cf3

    push hl
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8b], a
    call Call_000_34fc
    push hl
    ld [hl], $4c
    inc hl
    inc hl
    ld [hl], $00
    pop hl
    inc h
    ld [hl], $08
    inc hl
    ld [hl], $09
    ld de, $4cf1
    pop hl
    jr jr_007_4cf3

    nop
    ret nz

    ret nz

    rst $38

jr_007_4cf3:
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $09
    ld [$d5f0], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_34a6
    ld a, $0d
    ldh [$8c], a
    call Call_000_2920
    ld a, [$cd3e]
    cp $02
    jr nz, jr_007_4d28

    ld a, $2b
    jr jr_007_4d32

jr_007_4d28:
    cp $03
    jr nz, jr_007_4d30

    ld a, $2c
    jr jr_007_4d32

jr_007_4d30:
    ld a, $2d

jr_007_4d32:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    call Call_000_3dd7
    ld a, [$cd3d]
    ld [$d715], a
    ld [$cf91], a
    ld [$d11e], a
    call Call_000_2f9e
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_34a6
    ld a, $0e
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d74b
    set 2, [hl]
    xor a
    ld [$cd6b], a
    ld a, $0a
    ld [$d5f0], a
    ret


    ld a, [$d361]
    cp $06
    ret nz

    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    ld a, $08
    ld [$d528], a
    ld c, $02
    ld a, $de
    call Call_000_23a1
    ld a, $0f
    ldh [$8c], a
    call Call_000_2920
    ld a, $01
    ldh [$9b], a
    ld a, $01
    swap a
    ldh [$95], a
    ld a, $22
    call Call_000_3e6d
    ldh a, [$95]
    dec a
    ldh [$95], a
    ld a, $20
    call Call_000_3e6d
    ld de, $cc97
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $0b
    ld [$d5f0], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $e1
    ld [$d059], a
    ld a, [$d715]
    cp $b1
    jr nz, jr_007_4dcf

    ld a, $01
    jr jr_007_4dd9

jr_007_4dcf:
    cp $99
    jr nz, jr_007_4dd7

    ld a, $02
    jr jr_007_4dd9

jr_007_4dd7:
    ld a, $03

jr_007_4dd9:
    ld [$d05d], a
    ld a, $01
    ld [$cf13], a
    call Call_000_32ef
    ld hl, $53be
    ld de, $53c3
    call Call_000_3354
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    xor a
    ld [$cd6b], a
    ld a, $08
    ld [$d528], a
    ld a, $0c
    ld [$d5f0], a
    ret


    ld a, $f0
    ld [$cd6b], a
    ld a, $08
    ld [$d528], a
    call Call_000_2429
    ld a, $01
    ld [$cf13], a
    call Call_000_32f9
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_34a6
    ld a, $07
    call Call_000_3e6d
    ld hl, $d74b
    set 3, [hl]
    ld a, $0d
    ld [$d5f0], a
    ret


    ld c, $14
    call Call_000_3739
    ld a, $10
    ldh [$8c], a
    call Call_000_2920
    ld b, $02
    ld hl, $5b47
    call Call_000_35d6
    ld a, $01
    ldh [$8c], a
    ld de, $4e66
    call Call_000_363a
    ld a, [$d362]
    cp $04
    jr nz, jr_007_4e5b

    ld a, $c0
    jr jr_007_4e5d

jr_007_4e5b:
    ld a, $80

jr_007_4e5d:
    ld [$cc5b], a
    ld a, $0e
    ld [$d5f0], a
    ret


    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$d730]
    bit 0, a
    jr nz, jr_007_4e8c

    ld a, $2a
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    xor a
    ld [$cd6b], a
    call Call_000_2307
    ld a, $12
    ld [$d5f0], a
    jr jr_007_4eaf

jr_007_4e8c:
    ld a, [$cf0f]
    cp $05
    jr nz, jr_007_4ea8

    ld a, [$d362]
    cp $04
    jr nz, jr_007_4ea1

    ld a, $0c
    ld [$c109], a
    jr jr_007_4eaf

jr_007_4ea1:
    ld a, $08
    ld [$c109], a
    jr jr_007_4eaf

jr_007_4ea8:
    cp $04
    ret nz

    xor a
    ld [$c109], a

jr_007_4eaf:
    ret


    xor a
    ldh [$b4], a
    call Call_000_3c3c
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld b, $02
    ld hl, $5b47
    call Call_000_35d6
    ld a, $15
    ldh [$8c], a
    call Call_000_2920
    call Call_007_502b
    ld a, $2a
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, [$cd37]
    ld [$d157], a
    ld b, $00
    ld c, a
    ld hl, $cc97
    ld a, $40
    call Call_000_36e0
    ld [hl], $ff
    ld a, $01
    ldh [$8c], a
    ld de, $cc97
    call Call_000_363a
    ld a, $10
    ld [$d5f0], a
    ret


Call_007_4efd:
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_34a6
    ld a, $08
    ldh [$8c], a
    xor a
    ldh [$8d], a
    jp Jump_000_34a6


    ld a, [$d730]
    bit 0, a
    ret nz

    call Call_000_3c3c
    call Call_000_2307
    ld a, $fc
    ld [$cd6b], a
    call Call_007_4efd
    ld a, $16
    ldh [$8c], a
    call Call_000_2920
    call Call_000_20af
    call Call_007_4efd
    ld a, $17
    ldh [$8c], a
    call Call_000_2920
    call Call_000_20af
    call Call_007_4efd
    ld a, $18
    ldh [$8c], a
    call Call_000_2920
    call Call_000_20af
    ld a, $19
    ldh [$8c], a
    call Call_000_2920
    call Call_000_3dd7
    ld a, $2f
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $30
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    call Call_007_4efd
    ld a, $1a
    ldh [$8c], a
    call Call_000_2920
    ld a, $01
    ldh [$8c], a
    ld a, $0c
    ldh [$8d], a
    call Call_000_34a6
    call Call_000_3dd7
    ld a, $1b
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d74b
    set 5, [hl]
    ld hl, $d74e
    set 0, [hl]
    ld a, $01
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $02
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, [$d157]
    ld b, $00
    ld c, a
    ld hl, $cc97
    xor a
    call Call_000_36e0
    ld [hl], $ff
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld b, $02
    ld hl, $5b47
    call Call_000_35d6
    ld a, $01
    ldh [$8c], a
    ld de, $cc97
    call Call_000_363a
    ld a, $11
    ld [$d5f0], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    call Call_000_2307
    ld a, $2a
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d7eb
    set 0, [hl]
    res 1, [hl]
    set 7, [hl]
    ld a, $22
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $05
    ld [$d5f1], a
    xor a
    ld [$cd6b], a
    ld a, $12
    ld [$d5f0], a
    ret


    ret


Call_007_500a:
    ld hl, $d31e
    ld bc, $0000

jr_007_5010:
    ld a, [hl+]
    cp $ff
    ret z

    cp $46
    jr z, jr_007_501c

    inc hl
    inc c
    jr jr_007_5010

jr_007_501c:
    ld hl, $d31d
    ld a, c
    ld [$cf92], a
    ld a, $01
    ld [$cf96], a
    jp Jump_000_2bbb


Call_007_502b:
    ld a, $7c
    ldh [$eb], a
    ld a, $08
    ldh [$ee], a
    ld a, [$d361]
    cp $03
    jr nz, jr_007_5045

    ld a, $04
    ld [$cd37], a
    ld a, $30
    ld b, $0b
    jr jr_007_5068

jr_007_5045:
    cp $01
    jr nz, jr_007_5054

    ld a, $02
    ld [$cd37], a
    ld a, $30
    ld b, $09
    jr jr_007_5068

jr_007_5054:
    ld a, $03
    ld [$cd37], a
    ld b, $0a
    ld a, [$d362]
    cp $04
    jr nz, jr_007_5066

    ld a, $40
    jr jr_007_5068

jr_007_5066:
    ld a, $20

jr_007_5068:
    ldh [$ec], a
    ld a, b
    ldh [$ed], a
    ld a, $01
    ld [$cf13], a
    call Call_000_32f9
    ret


Call_007_5076:
    ld hl, $50b8
    ld a, l
    ld [$d36c], a
    ld a, h
    ld [$d36d], a
    ret


    adc $50
    ld [bc], a
    ld d, c
    inc de
    ld d, c
    inc h
    ld d, c
    ld c, b
    ld d, d
    ld [hl+], a
    ld d, e
    ld [hl+], a
    ld d, e
    ld sp, $3653
    ld d, e
    ei
    ld d, e
    ei
    ld d, e
    add c
    ld d, e
    sub b
    ld d, e
    sbc a
    ld d, e
    xor a
    ld d, e
    ret z

    ld d, e
    ld b, l
    ld d, e
    ld d, h
    ld d, e
    ld h, e
    ld d, e
    ld [hl], d
    ld d, e
    rst $10
    ld d, e
    call c, $e153
    ld d, e
    and $53
    db $eb
    ld d, e
    pop af
    ld d, e
    or $53
    adc $50
    ld [bc], a
    ld d, c
    inc de
    ld d, c
    inc h
    ld d, c
    ld c, b
    ld d, d
    ld [hl+], a
    ld d, e
    ld [hl+], a
    ld d, e
    ld sp, $3653
    ld d, e
    ei
    ld d, e
    ei
    ld d, e
    ld [$4bfa], sp
    rst $10
    bit 0, a
    jr nz, jr_007_50de

    ld hl, $50f3
    call Call_000_3c49
    jr jr_007_50f0

jr_007_50de:
    bit 2, a
    jr nz, jr_007_50ea

    ld hl, $50f8
    call Call_000_3c49
    jr jr_007_50f0

jr_007_50ea:
    ld hl, $50fd
    call Call_000_3c49

jr_007_50f0:
    jp Jump_000_24d7


    rla
    ld e, e
    ld c, l
    dec h
    ld d, b
    rla
    ld a, c
    ld c, l
    dec h
    ld d, b
    rla
    cp l
    ld c, l
    dec h
    ld d, b
    ld [$b13e], sp
    ld [$cd3d], a
    ld a, $03
    ld [$cd3e], a
    ld a, $b0
    ld b, $02
    jr jr_007_5133

    ld [$993e], sp
    ld [$cd3d], a
    ld a, $04
    ld [$cd3e], a
    ld a, $b1
    ld b, $03
    jr jr_007_5133

    ld [$b03e], sp
    ld [$cd3d], a
    ld a, $02
    ld [$cd3e], a
    ld a, $99
    ld b, $04

jr_007_5133:
    ld [$cf91], a
    ld [$d11e], a
    ld a, b
    ld [$cf13], a
    ld a, [$d74b]
    bit 2, a
    jp nz, $522d

    bit 1, a
    jr nz, jr_007_5157

    ld hl, $5152
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    rst $18
    ld c, l
    dec h
    ld d, b

jr_007_5157:
    ld a, $05
    ldh [$8c], a
    ld a, $09
    ldh [$8b], a
    call Call_000_34fc
    ld [hl], $00
    ld a, $01
    ldh [$8c], a
    ld a, $09
    ldh [$8b], a
    call Call_000_34fc
    ld [hl], $0c
    ld hl, $d730
    set 6, [hl]
    ld a, $46
    call Call_000_3e6d
    ld hl, $d730
    res 6, [hl]
    call Call_000_3071
    ld c, $0a
    call Call_000_3739
    ld a, [$cf13]
    cp $02
    jr z, jr_007_5195

    cp $03
    jr z, jr_007_519f

    jr jr_007_51a9

jr_007_5195:
    ld hl, $519a
    jr jr_007_51b3

    rla
    ld b, $4e
    dec h
    ld d, b

jr_007_519f:
    ld hl, $51a4
    jr jr_007_51b3

    rla
    cpl
    ld c, [hl]
    dec h
    ld d, b

jr_007_51a9:
    ld hl, $51ae
    jr jr_007_51b3

    rla
    ld d, a
    ld c, [hl]
    dec h
    ld d, b

jr_007_51b3:
    call Call_000_3c49
    ld a, $01
    ld [$cc3c], a
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_007_521f

    ld a, [$cf91]
    ld [$d717], a
    ld [$d11e], a
    call Call_000_2f9e
    ld a, [$cf13]
    cp $02
    jr nz, jr_007_51db

    ld a, $2b
    jr jr_007_51e5

jr_007_51db:
    cp $03
    jr nz, jr_007_51e3

    ld a, $2c
    jr jr_007_51e5

jr_007_51e3:
    ld a, $2d

jr_007_51e5:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $01
    ld [$cc3c], a
    ld hl, $5222
    call Call_000_3c49
    ld hl, $5227
    call Call_000_3c49
    xor a
    ld [$cc49], a
    ld a, $05
    ld [$d127], a
    ld a, [$cf91]
    ld [$d11e], a
    call Call_000_3927
    ld hl, $d72e
    set 3, [hl]
    ld a, $fc
    ld [$cd6b], a
    ld a, $08
    ld [$d5f0], a

jr_007_521f:
    jp Jump_000_24d7


    rla
    add b
    ld c, [hl]
    dec h
    ld d, b
    rla
    and b
    ld c, [hl]
    dec h
    ld de, $3e50
    dec b
    ldh [$8c], a
    ld a, $09
    ldh [$8b], a
    call Call_000_34fc
    ld [hl], $00
    ld hl, $5243
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    or [hl]
    ld c, [hl]
    dec h
    ld d, b
    ld [$47fa], sp
    rst $10
    bit 6, a
    jr nz, jr_007_5266

    ld hl, $d2f7
    ld b, $13
    call Call_000_2b7f
    ld a, [$d11e]
    cp $02
    jr c, jr_007_5279

    ld a, [$d74b]
    bit 5, a
    jr z, jr_007_5279

jr_007_5266:
    ld hl, $531d
    call Call_000_3c49
    ld a, $01
    ld [$cc3c], a
    ld a, $56
    call Call_000_3e6d
    jp Jump_007_52ed


jr_007_5279:
    ld b, $04
    call Call_000_3493
    jr nz, jr_007_52e7

    ld a, [$d7eb]
    bit 5, a
    jr nz, jr_007_52d0

    ld a, [$d74b]
    bit 5, a
    jr nz, jr_007_52c8

    bit 3, a
    jr nz, jr_007_52a9

    ld a, [$d72e]
    bit 3, a
    jr nz, jr_007_52a1

    ld hl, $52f0
    call Call_000_3c49
    jr jr_007_52ed

jr_007_52a1:
    ld hl, $52f5
    call Call_000_3c49
    jr jr_007_52ed

jr_007_52a9:
    ld b, $46
    call Call_000_3493
    jr nz, jr_007_52b8

    ld hl, $52fa
    call Call_000_3c49
    jr jr_007_52ed

jr_007_52b8:
    ld hl, $52ff
    call Call_000_3c49
    call Call_007_500a
    ld a, $0f
    ld [$d5f0], a
    jr jr_007_52ed

jr_007_52c8:
    ld hl, $5309
    call Call_000_3c49
    jr jr_007_52ed

jr_007_52d0:
    ld hl, $d74b
    bit 4, [hl]
    set 4, [hl]
    jr nz, jr_007_52e7

    ld bc, $0405
    call Call_000_3e2e
    ld hl, $530e
    call Call_000_3c49
    jr jr_007_52ed

jr_007_52e7:
    ld hl, $5318
    call Call_000_3c49

Jump_007_52ed:
jr_007_52ed:
    jp Jump_000_24d7


    rla
    jp nc, $254e

    ld d, b
    rla
    ld hl, sp+$4e
    dec h
    ld d, b
    rla
    ld [hl], $4f
    dec h
    ld d, b
    rla
    ld l, c
    ld c, a
    dec h
    ld de, $0f17
    ld d, b
    dec h
    ld d, b
    rla
    ld b, l
    ld d, b
    dec h
    ld d, b
    rla
    ld l, l
    ld d, b
    dec h
    ld de, $f217
    ld d, b
    dec h
    ld d, b
    rla
    sbc [hl]
    ld d, c
    dec h
    ld d, b
    rla
    jp hl


    ld d, c
    dec h
    ld d, b
    ld [$2c21], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld [hl], $52
    dec h
    ld d, b
    rla
    ld l, b
    ld d, d
    dec h
    ld d, b
    ld [$4021], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld l, e
    ld d, d
    dec h
    ld d, b
    ld [$4f21], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    cp e
    ld d, d
    dec h
    ld d, b
    ld [$5e21], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    rst $18
    ld d, d
    dec h
    ld d, b
    ld [$6d21], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    call c, Call_000_2553
    ld d, b
    ld [$7c21], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    db $fc
    ld d, e
    dec h
    ld d, b
    ld [$8b21], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    daa
    ld d, h
    dec h
    ld d, b
    ld [$9a21], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld b, h
    ld d, h
    dec h
    ld d, b
    ld [$a921], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld h, c
    ld d, h
    dec h
    ld de, $0850
    ld hl, $53b9
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld [hl], a
    ld d, h
    dec h
    ld d, b
    rla
    or [hl]
    ld d, h
    dec h
    ld d, b
    rla
    db $e4
    ld d, h
    dec h
    ld d, b
    ld [$d221], sp
    ld d, e
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld [bc], a
    ld d, l
    dec h
    ld d, b
    rla
    ld d, c
    ld d, l
    dec h
    ld d, b
    rla
    ld e, l
    ld d, l
    dec h
    ld d, b
    rla
    ld a, e
    ld d, l
    dec h
    ld d, b
    rla
    xor b
    ld d, l
    dec h
    ld d, b
    rla
    ld a, [hl+]
    ld d, [hl]
    dec h
    ld de, $1750
    ld h, h
    ld d, [hl]
    dec h
    ld d, b
    rla
    ld b, c
    ld d, a
    dec h
    ld d, b
    ld [$0521], sp
    ld d, h
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    db $eb
    ld d, a
    dec h
    ld d, b
    inc bc
    ld [bc], a
    dec bc
    inc b
    ld [bc], a
    rst $38
    dec bc
    dec b
    ld [bc], a
    rst $38
    nop
    dec bc
    ld [bc], a
    rlca
    ld [$ffff], sp
    ld b, c
    pop hl
    ld bc, $073d
    ld a, [bc]
    rst $38
    rst $38
    ld [bc], a
    dec a
    rlca
    dec bc
    rst $38
    rst $38
    inc bc
    dec a
    rlca
    inc c
    rst $38
    rst $38
    inc b
    inc bc
    ld b, $09
    rst $38
    ret nc

    dec b
    ld b, c
    dec b
    ld b, $ff
    rst $38
    ld b, $41
    dec b
    rlca
    rst $38
    rst $38
    rlca
    inc bc
    ld c, $09
    rst $38
    pop de
    ld [$0d0d], sp
    dec b
    cp $01
    add hl, bc
    jr nz, jr_007_545e

    ld b, $ff
    rst $38
    ld a, [bc]
    jr nz, jr_007_5464

    inc c
    rst $38
    rst $38
    dec bc
    dec l
    rst $00
    dec bc
    inc b

jr_007_545e:
    dec l
    rst $00
    dec bc
    dec b
    ld [bc], a
    inc b

jr_007_5464:
    inc b
    jr nc, @+$57

    ldh [rHDMA4], a
    ld l, [hl]
    ld d, h
    nop
    ld a, [bc]
    ld d, l
    call Call_007_547d
    call Call_000_3c3c
    ld hl, $5495
    ld a, [$d60d]
    jp Jump_000_3d97


Call_007_547d:
    ld a, [$d74e]
    bit 0, a
    jr nz, jr_007_5489

    ld hl, $54e0
    jr jr_007_548c

jr_007_5489:
    ld hl, $54ea

jr_007_548c:
    ld a, l
    ld [$d36c], a
    ld a, h
    ld [$d36d], a
    ret


    sbc e
    ld d, h
    ret nz

    ld d, h
    rst $18
    ld d, h
    call Call_000_2429
    ld a, $04
    ldh [$8c], a
    call Call_000_2920
    ld hl, $ccd3
    ld de, $54bb
    call Call_000_350c
    dec a
    ld [$cd38], a
    call Call_000_3486
    ld a, $01
    ld [$d60d], a
    ret


    jr nz, jr_007_54be

    ld b, b

jr_007_54be:
    ld [bc], a
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    ld a, $05
    ldh [$8c], a
    call Call_000_2920
    ld bc, $4601
    call Call_000_3e2e
    ld hl, $d74e
    set 1, [hl]
    ld a, $02
    ld [$d60d], a
    ret


    ldh a, [rHDMA4]
    nop
    ld d, l
    dec b
    ld d, l
    push af
    ld d, h
    ld a, [$4254]
    inc h
    nop
    ld d, l
    dec b
    ld d, l
    rla
    ld [hl], $5c
    dec h
    ld d, b
    rla
    ld e, b
    ld e, h
    dec h
    ld d, b
    rla
    ld a, c
    ld e, h
    dec h
    ld de, $1750
    push de
    ld e, h
    dec h
    ld d, b
    rla
    or $5c
    dec h
    ld d, b
    nop
    ld [bc], a
    rlca
    inc bc
    ld bc, $07ff
    inc b
    ld bc, $00ff
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0904
    add hl, bc
    cp $01
    ld [bc], a
    rlca
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld [de], a
    inc de
    inc de
    add hl, bc
    ld d, $0f
    inc d
    inc d
    jr jr_007_5553

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
    ld [$0404], sp
    xor $41
    ld c, a
    ld d, l
    ld c, h
    ld d, l
    nop
    ld e, l
    ld d, l
    jp Jump_000_3c3c


    ld d, e
    ld d, l
    ld e, b
    ld d, l

jr_007_5553:
    rla
    dec d
    ld e, l
    dec h
    ld d, b
    rla
    ld b, b
    ld e, l
    dec h
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    dec e
    add hl, bc
    rlca
    rst $38
    pop de
    ld bc, $0506
    ld [$d0ff], sp
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
    sbc $41
    adc l
    ld d, l
    adc d
    ld d, l
    nop
    cp e
    ld d, l
    nop
    jp Jump_000_3c3c


    sub l
    ld d, l
    sbc d
    ld d, l
    sbc a
    ld d, l
    or [hl]
    ld d, l
    rla
    ld [hl], c
    ld e, l
    dec h
    ld d, b
    rla
    rst $00
    ld e, l
    dec h
    ld d, b
    ld [$b121], sp
    ld d, l
    call Call_000_3c49
    ld a, $05
    call Call_000_13d0
    call Call_000_3748
    jp Jump_000_24d7


    rla
    pop hl
    ld e, l
    dec h
    ld d, b
    rla
    di
    ld e, l
    dec h
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
    inc b
    inc [hl]
    rlca
    add hl, bc
    rst $38
    rst $38
    ld bc, $0808
    dec b
    cp $01
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    cp $02
    inc bc
    ld b, d
    inc b
    ld [$ffff], sp
    inc b
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    or $55
    di
    ld d, l
    nop
    ld d, $56
    jp Jump_000_3c3c


    db $fc
    ld d, l
    inc c
    ld d, [hl]
    ld de, $1756
    adc $44
    ld h, $08
    ld a, $03
    call Call_000_13d0
    call Call_000_3748
    jp Jump_000_24d7


    rla
    pop hl
    ld b, h
    ld h, $50
    rla
    rst $28
    ld b, h
    ld h, $50
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
    inc bc
    dec b
    add hl, bc
    ld [$d2ff], sp
    ld bc, $0935
    rlca
    rst $38
    db $d3
    ld [bc], a
    ld a, [bc]
    ld b, $05
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    ld c, e
    ld d, [hl]
    ld c, b
    ld d, [hl]
    nop
    ld e, c
    ld d, [hl]
    jp Jump_000_3c3c


    ld c, a
    ld d, [hl]
    ld d, h
    ld d, [hl]
    rla
    ld d, [hl]
    ld b, [hl]
    ld h, $50
    rla
    xor [hl]
    ld b, [hl]
    ld h, $50
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    rst $38
    rlca
    inc bc
    dec b
    rst $38
    nop
    ld [bc], a
    dec bc
    rlca
    ld b, $ff
    db $d3
    ld bc, $0904
    ld [$ffff], sp
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
    cp $41
    adc c
    ld d, [hl]
    add l
    ld d, [hl]
    nop
    cp a
    ld d, [hl]
    call Call_000_3c3c
    ret


    adc a
    ld d, [hl]
    or l
    ld d, [hl]
    cp d
    ld d, [hl]
    ld [$e406], sp
    ld a, $1c
    call Call_000_3e6d
    and b
    jr z, jr_007_56a2

    ld hl, $56b0
    call Call_000_3c49
    jr jr_007_56a8

jr_007_56a2:
    ld hl, $56ab
    call Call_000_3c49

jr_007_56a8:
    jp Jump_000_24d7


    rla
    ld e, h
    ld b, a
    ld h, $50
    rla
    ld [c], a
    ld b, a
    ld h, $50
    rla
    inc [hl]
    ld c, b
    ld h, $50
    rla
    ld l, a
    ld c, b
    ld h, $50
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
    nop
    inc bc
    rlca
    rst $38
    ld bc, $0300
    inc bc
    ld [bc], a
    daa
    dec b
    ld b, $ff
    ret nc

    ld bc, $0a0d
    add hl, bc
    cp $02
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    db $f4
    add $00
    inc bc
    ld [$0404], sp
    sbc $41
    ld sp, hl
    ld d, [hl]
    or $56
    nop
    db $10
    ld d, a
    jp Jump_000_3c3c


    db $fd
    ld d, [hl]
    ld [bc], a
    ld d, a
    rla
    adc h
    ld c, b
    ld h, $50
    ld [$063e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3e6d
    jp Jump_000_24d7


    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    ld [bc], a
    jr z, jr_007_5726

    add hl, bc
    rst $38
    jp nc, Jump_000_0b01

    ld b, $05
    rst $38

jr_007_5726:
    rst $38
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    dec d
    inc b
    inc b
    adc h
    ld e, b
    ccf
    ld d, a
    inc a
    ld d, a
    nop
    ld h, [hl]
    ld e, b
    jp Jump_000_3c3c


    ld b, l
    ld d, a
    add hl, sp
    ld e, b
    ld c, b
    ld e, b
    ld [$5ffa], sp
    rst $10
    bit 0, a
    jr z, jr_007_5756

    ld hl, $582f
    call Call_000_3c49
    jp Jump_007_57f5


jr_007_5756:
    ld b, $2d
    call Call_000_3493
    jr z, jr_007_578c

    ld hl, $581f
    call Call_000_3c49
    ld bc, $0601
    call Call_000_3e2e
    jr nc, jr_007_5784

    ld a, $2d
    ldh [$db], a
    ld b, $05
    ld hl, $7f37
    call Call_000_35d6
    ld hl, $d75f
    set 0, [hl]
    ld hl, $5824
    call Call_000_3c49
    jr jr_007_57f5

jr_007_5784:
    ld hl, $5834
    call Call_000_3c49
    jr jr_007_57f5

jr_007_578c:
    ld hl, $5810
    call Call_000_3c49
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $01
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3a0
    ld b, $04
    ld c, $0f
    call Call_000_1922
    call Call_000_2429
    ld hl, $c3ca
    ld de, $57f8
    call Call_000_1955
    ld hl, $c3e4
    ld de, $5807
    call Call_000_1955
    ld hl, $5815
    call Call_000_3c49
    call Call_000_3abe
    bit 1, a
    jr nz, jr_007_57ef

    ld hl, $d730
    res 6, [hl]
    ld a, [$cc26]
    and a
    jr nz, jr_007_57ef

    ld hl, $581a
    call Call_000_3c49

jr_007_57ef:
    ld hl, $582a
    call Call_000_3c49

Jump_007_57f5:
jr_007_57f5:
    jp Jump_000_24d7


    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ldh a, [$f7]
    or $f6
    or $f6
    or $f6
    ld d, b
    rla
    inc bc
    ld c, [hl]
    ld h, $50
    rla
    ld b, l
    ld c, [hl]
    ld h, $50
    rla
    ld h, a
    ld c, [hl]
    ld h, $50
    rla
    add e
    ld c, [hl]
    ld h, $50
    rla
    or d
    ld c, [hl]
    ld h, $11
    ld d, b
    rla
    ldh [$4e], a
    ld h, $50
    rla
    db $fc
    ld c, [hl]
    ld h, $50
    rla
    ld c, l
    ld c, a
    ld h, $50
    ld [$4321], sp
    ld e, b
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld l, l
    ld c, a
    ld h, $50
    ld [$5ffa], sp
    rst $10
    bit 0, a
    ld hl, $5861
    jr nz, jr_007_5856

    ld hl, $585c

jr_007_5856:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    pop bc
    ld c, a
    ld h, $50
    rla
    ld a, [c]
    ld c, a
    ld h, $50
    ld c, $02
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    nop
    inc bc
    dec d
    ld b, $0a
    rst $38
    rst $38
    ld bc, $0a1c
    add hl, bc
    cp $01
    ld [bc], a
    inc b
    rlca
    dec b
    rst $38
    pop de
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    ld [$0608], sp
    rlca
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $090a
    ld [$0404], sp
    sbc $41
    xor h
    ld e, b
    xor b
    ld e, b
    nop
    ld l, d
    ld e, c
    call Call_000_3c3c
    ret


    cp b
    ld e, b
    db $db
    ld e, b
    cp $58
    dec bc
    ld e, c
    jr @+$5b

    ld h, l
    ld e, c
    ld [$e0fa], sp
    rst $10
    bit 7, a
    jr nz, jr_007_58c8

    ld hl, $58d1
    call Call_000_3c49
    jr jr_007_58ce

jr_007_58c8:
    ld hl, $58d6
    call Call_000_3c49

jr_007_58ce:
    jp Jump_000_24d7


    rla
    adc l
    ld e, [hl]
    ld h, $50
    rla
    cp d
    ld e, [hl]
    ld h, $50
    ld [$e0fa], sp
    rst $10
    bit 7, a
    jr nz, jr_007_58eb

    ld hl, $58f4
    call Call_000_3c49
    jr jr_007_58f1

jr_007_58eb:
    ld hl, $58f9
    call Call_000_3c49

jr_007_58f1:
    jp Jump_000_24d7


    rla
    xor $5e
    ld h, $50
    rla
    ld c, e
    ld e, a
    ld h, $50
    rla
    ld [hl], d
    ld e, a
    ld h, $08
    ld a, $2f
    call Call_000_13d0
    jp Jump_000_24d7


    rla
    add l
    ld e, a
    ld h, $08
    ld a, $a7
    call Call_000_13d0
    jp Jump_000_24d7


    ld [$6cfa], sp
    rst $10
    bit 0, a
    jr nz, jr_007_5943

    ld hl, $594c
    call Call_000_3c49
    ld bc, $4901
    call Call_000_3e2e
    jr nc, jr_007_593b

    ld hl, $5951
    call Call_000_3c49
    ld hl, $d76c
    set 0, [hl]
    jr jr_007_5949

jr_007_593b:
    ld hl, $595b
    call Call_000_3c49
    jr jr_007_5949

jr_007_5943:
    ld hl, $5960
    call Call_000_3c49

jr_007_5949:
    jp Jump_000_24d7


    rla
    sub a
    ld e, a
    ld h, $50
    rla
    ei
    ld e, a
    ld h, $11
    rla
    ld de, $2660
    ld d, b
    rla
    ld l, c
    ld h, b
    ld h, $50
    rla
    add a
    ld h, b
    ld h, $50
    rla
    xor d
    ld h, b
    ld h, $50
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    nop
    ld b, $0c
    add hl, bc
    rlca
    rst $38
    rst $38
    ld bc, $0708
    ld a, [bc]
    rst $38
    ret nc

    ld [bc], a
    dec b
    ld [$ff0a], sp
    pop de
    inc bc
    dec b
    rlca
    dec b
    rst $38
    rst $38
    inc b
    ld d, $05
    rlca
    rst $38
    rst $38
    dec b
    ld b, c
    rlca
    rlca
    rst $38
    rst $38
    ld b, $12
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    or d
    ld e, c
    xor [hl]
    ld e, c
    nop
    and $59
    call Call_000_3c3c
    ret


    or [hl]
    ld e, c
    jp Jump_000_1759


    jr c, jr_007_5a1b

    ld h, $08
    ld a, $11
    call Call_000_13d0
    jp Jump_000_24d7


    ld [$e0fa], sp
    rst $10
    bit 7, a
    jr nz, jr_007_59d3

    ld hl, $59dc
    call Call_000_3c49
    jr jr_007_59d9

jr_007_59d3:
    ld hl, $59e1
    call Call_000_3c49

jr_007_59d9:
    jp Jump_000_24d7


    rla
    ld c, h
    ld h, d
    ld h, $50
    rla
    cp c
    ld h, d
    ld h, $50
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
    ld [bc], a
    dec b
    add hl, bc
    rlca
    rst $38
    pop de
    ld bc, $081d
    ld b, $ff
    db $d3
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
    sbc $41
    ld d, h
    ld e, d
    ld [de], a
    ld e, d
    nop
    sub $5a
    jp Jump_000_3c3c


Call_007_5a15:
    call Call_000_3c49
    call Call_000_35ec

jr_007_5a1b:
    ld a, [$cc26]
    and a
    ret


Call_007_5a20:
    ld hl, $d273
    ld bc, $000b
    ld a, [$cf92]
    call Call_000_3a87
    ld de, $d158
    ld c, $0b
    call Call_007_5a47
    jr c, jr_007_5a52

    ld hl, $d177
    ld bc, $002c
    ld a, [$cf92]
    call Call_000_3a87
    ld de, $d359
    ld c, $02

Call_007_5a47:
jr_007_5a47:
    ld a, [de]
    cp [hl]
    jr nz, jr_007_5a52

    inc hl
    inc de
    dec c
    jr nz, jr_007_5a47

    and a
    ret


jr_007_5a52:
    scf
    ret


    ld d, [hl]
    ld e, d
    ld [$f4cd], sp
    ld [hl], $21
    or e
    ld e, d
    call Call_007_5a15
    jr nz, jr_007_5aae

    ld hl, $5ab8
    call Call_000_3c49
    xor a
    ld [$d07d], a
    ld [$cfcb], a
    ld [$cc35], a
    call Call_000_13fc
    push af
    call Call_000_3dd4
    call Call_000_3dbe
    call Call_000_20ba
    pop af
    jr c, jr_007_5aae

    call Call_000_15b4
    call Call_007_5a20
    ld hl, $5ad1
    jr c, jr_007_5aa8

    ld hl, $5abd
    call Call_007_5a15
    jr nz, jr_007_5aae

    ld hl, $5ac2
    call Call_000_3c49
    ld b, $01
    ld hl, $655c
    call Call_000_35d6
    jr c, jr_007_5aae

    ld hl, $5ac7

jr_007_5aa8:
    call Call_000_3c49
    jp Jump_000_24d7


jr_007_5aae:
    ld hl, $5acc
    jr jr_007_5aa8

    rla
    ld [$2663], sp
    ld d, b
    rla
    ld h, c
    ld h, e
    ld h, $50
    rla
    ld a, a
    ld h, e
    ld h, $50
    rla
    push hl
    ld h, e
    ld h, $50
    rla
    inc b
    ld h, h
    ld h, $50
    rla
    ld c, h
    ld h, h
    ld h, $50
    rla
    ld l, e
    ld h, h
    ld h, $50
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    rst $38
    rlca
    inc bc
    dec b
    rst $38
    nop
    ld bc, $072b
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
    ld [$0404], sp
    sbc $41
    nop
    ld e, e
    db $fc
    ld e, d
    nop
    jr nz, @+$5d

    call Call_000_3c3c
    ret


    ld b, $5b
    dec bc
    ld e, e
    dec de
    ld e, e
    rla
    ld c, c
    ld b, h
    daa
    ld d, b
    rla
    adc b
    ld b, h
    daa
    ld [$243e], sp
    call Call_000_13d0
    call Call_000_3748
    jp Jump_000_24d7


    rla
    sbc h
    ld b, h
    daa
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
    inc bc
    inc b
    rlca
    add hl, bc
    rst $38
    jp nc, $0901

    add hl, bc
    rlca
    cp $02
    ld [bc], a
    ld b, b
    rlca
    ld [$ffff], sp
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld c, $06
    ld c, $da
    ld e, h
    cp a
    ld e, h
    ld d, d
    ld e, e
    nop
    add $5c
    call Call_000_3c3c
    ld hl, $d803
    bit 4, [hl]
    jr nz, jr_007_5b8d

    bit 0, [hl]
    ret z

    ld a, [$d42f]
    cp $01
    ret nz

    bit 2, [hl]
    jp z, Jump_007_5b9b

    set 4, [hl]
    call Call_000_3dd7
    ld hl, $d730
    set 7, [hl]
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $03
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    dec a
    ld [$cd6b], a
    ret


jr_007_5b8d:
    bit 5, [hl]
    ret nz

    ld a, [$cd38]
    and a
    ret nz

    ld [$cd6b], a
    set 5, [hl]
    ret


Jump_007_5b9b:
    set 2, [hl]
    ld a, $ff
    ld [$cd6b], a
    ld [$c0ee], a
    call Call_000_23b1
    ld c, $1f
    ld a, $d6
    call Call_000_23a1
    ld b, $1e
    ld hl, $5fc0
    call Call_000_35d6
    xor a
    ld [$c102], a
    ld c, $78
    call Call_000_3739
    ld b, $9c
    call Call_000_18d6
    ld hl, $c468
    ld bc, $0078
    ld a, $14
    call Call_000_36e0
    ld a, $01
    ldh [$ba], a
    call Call_000_3dd7
    xor a
    ldh [$ba], a
    ld [$cd3d], a
    ldh [rOBP1], a
    ld a, $58
    ld [$cd3e], a
    ld hl, $d526
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    push hl
    ld a, $a9
    call Call_000_3740
    ld a, $ff
    ld [$cfcb], a
    ld d, $00
    ld e, $08

jr_007_5bfa:
    ld hl, $0002
    add hl, bc
    ld a, l
    ld [$d526], a
    ld a, h
    ld [$d527], a
    push hl
    push de
    call Call_000_0ed3
    call Call_007_5c59
    pop de
    ld b, $10

jr_007_5c11:
    call Call_007_5c42
    ld c, $08

jr_007_5c16:
    call Call_007_5c7c
    dec c
    jr nz, jr_007_5c16

    inc d
    dec b
    jr nz, jr_007_5c11

    pop bc
    dec e
    jr nz, jr_007_5bfa

    xor a
    ldh [rWY], a
    ldh [$b0], a
    call Call_007_5c94
    ld a, $90
    ldh [$b0], a
    ld a, $01
    ld [$cfcb], a
    pop hl
    pop bc
    ld [hl], b
    dec hl
    ld [hl], c
    call Call_000_0997
    ld hl, $d3ae
    dec [hl]
    ret


Call_007_5c42:
    push bc
    push de
    ld hl, $c311
    ld a, [$cd3d]
    swap a
    ld c, a
    ld de, $0004

jr_007_5c50:
    inc [hl]
    inc [hl]
    add hl, de
    dec c
    jr nz, jr_007_5c50

    pop de
    pop bc
    ret


Call_007_5c59:
    ld a, [$cd3e]
    sub $10
    ld [$cd3e], a
    ld c, a
    ld b, $64
    ld a, [$cd3d]
    inc a
    ld [$cd3d], a
    ld a, $01
    ld de, $5c74
    call Call_000_3a97
    ret


    db $fc
    db $10
    db $fd
    db $10
    cp $10
    rst $38
    db $10

Call_007_5c7c:
    ld h, d
    ld l, $50
    call Call_007_5c86
    ld h, $00
    ld l, $80

Call_007_5c86:
jr_007_5c86:
    ldh a, [rLY]
    cp l
    jr nz, jr_007_5c86

    ld a, h
    ldh [rSCX], a

jr_007_5c8e:
    ldh a, [rLY]
    cp h
    jr z, jr_007_5c8e

    ret


Call_007_5c94:
    ld hl, $cc5b
    ld bc, $00b4
    ld a, $14
    call Call_000_36e0
    ld hl, $9940
    ld de, $cc5b
    ld bc, $000c
    call Call_000_1848
    ld hl, $c754
    ld a, $0d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $a9
    call Call_000_23b1
    ld c, $78
    call Call_000_3739
    ret


    pop bc
    ld e, h
    rla
    ld c, $45
    daa
    ld d, b
    rrca
    ld [bc], a
    nop
    ld c, $05
    rst $38
    ld [bc], a
    ld c, $01
    ld e, a
    nop
    nop
    inc b
    rst $00
    nop
    ld c, $18
    rst $00
    ld [bc], a
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, $15
    inc c
    inc c
    inc bc
    inc c
    inc c
    ld c, $13
    ld bc, $0101
    ld bc, $0504
    ld b, $07
    ld bc, $0101
    ld bc, $110c
    dec c
    dec c
    dec c
    dec c
    ld [$0a09], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    inc c
    ld de, $0d0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    ld de, $0d0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld c, $08
    inc b
    inc b
    xor $41
    dec a
    ld e, l
    ld a, [hl-]
    ld e, l
    nop
    ld e, h
    ld e, l
    jp Jump_000_3c3c


    ld b, c
    ld e, l
    ld b, [hl]
    ld e, l
    rla
    cp d
    ld d, c
    daa
    ld d, b
    ld [$1901], sp
    ld h, [hl]
    call Call_000_3e48
    jr nc, jr_007_5d59

    ld a, $45
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d

jr_007_5d59:
    jp Jump_000_24d7


    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    add e
    rlca
    inc bc
    ld [bc], a
    add e
    nop
    ld [bc], a
    ld c, $06
    ld b, $ff
    ret nc

    ld bc, $073d
    ld [$ffff], sp
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [bc], a
    inc b
    inc b
    pop bc
    ld e, l
    adc e
    ld e, l
    adc b
    ld e, l
    nop
    sbc e
    ld e, l
    jp Jump_000_3c3c


    xor b
    inc h
    sub c
    ld e, l
    sub [hl]
    ld e, l
    rla
    ld l, $62
    daa
    ld d, b
    rla
    ld l, [hl]
    ld h, d
    daa
    ld d, b
    nop
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
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $060a
    ld [$ffff], sp
    ld [bc], a
    ld b, $09
    ld a, [bc]
    cp $01
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld [de], a
    inc de
    inc de
    add hl, bc
    ld d, $0f
    inc d
    inc d
    jr jr_007_5de4

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
    ld [$0404], sp
    sbc $41
    ldh [$5d], a
    db $dd
    ld e, l
    nop
    inc b
    ld e, [hl]
    jp Jump_000_3c3c


    add sp, $5d
    db $ed
    ld e, l

jr_007_5de4:
    ld a, [$ff5d]
    ld e, l
    rla
    dec b
    ld h, e
    jr z, @+$52

    rla
    ld d, d
    ld h, e
    jr z, jr_007_5dfa

    ld a, $24
    call Call_000_13d0
    jp Jump_000_24d7


jr_007_5dfa:
    rla
    ld h, [hl]
    ld h, e
    jr z, jr_007_5e4f

    rla
    sub l
    ld h, e
    jr z, @+$52

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
    inc b
    dec e
    rlca
    ld b, $ff
    db $d3
    ld bc, $0809
    inc b
    cp $01
    ld [bc], a
    inc b
    dec b
    ld [$d0ff], sp
    inc bc
    ld b, b
    rlca
    rlca
    rst $38
    rst $38
    inc b
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    ccf
    ld e, [hl]
    inc a
    ld e, [hl]
    nop
    adc d
    ld e, [hl]
    jp Jump_000_3c3c


    ld b, c
    ld e, [hl]
    ld [$bdfa], sp
    rst $10
    bit 0, a
    jr nz, jr_007_5e6c

    ld hl, $5e75
    call Call_000_3c49

jr_007_5e4f:
    ld bc, $e501
    call Call_000_3e2e
    jr nc, jr_007_5e64

    ld hl, $5e7a
    call Call_000_3c49
    ld hl, $d7bd
    set 0, [hl]
    jr jr_007_5e72

jr_007_5e64:
    ld hl, $5e85
    call Call_000_3c49
    jr jr_007_5e72

jr_007_5e6c:
    ld hl, $5e80
    call Call_000_3c49

jr_007_5e72:
    jp Jump_000_24d7


    rla
    cp $64
    jr z, jr_007_5eca

    rla
    ld a, [hl+]
    ld h, l
    jr z, jr_007_5e8a

    ld d, b
    rla
    ld a, $65
    jr z, @+$52

    rla
    ld a, h
    ld h, l
    jr z, jr_007_5eda

jr_007_5e8a:
    ld a, [bc]
    ld [bc], a
    rlca
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
    jp nc, $1201

    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld de, $0404
    ld c, $42
    cp b
    ld e, [hl]
    or b
    ld e, [hl]
    nop
    cp a
    ld e, [hl]
    ld a, $0d
    ld [$d365], a
    jp Jump_000_3c3c


    cp d
    ld e, [hl]
    rla
    and a
    ld h, [hl]
    ld [hl+], a
    ld d, b
    ld a, l
    inc bc
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    inc b

jr_007_5eca:
    inc b
    nop
    push bc
    nop
    ld bc, $0727
    rlca
    rst $38
    rst $38
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a

jr_007_5eda:
    rst $00
    rlca
    inc bc
    add hl, bc
    rst $00
    inc b
    inc b
    ld [$0404], sp
    sbc $41
    ldh a, [$5e]
    db $ed
    ld e, [hl]
    nop
    rlca
    ld e, a
    jp Jump_000_3c3c


    db $f4
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    rla
    cp b
    ld h, a
    ld [hl+], a
    ld d, b
    ld [$013e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3e6d
    jp Jump_000_24d7


    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    jr nz, @+$0a

    ld b, $ff
    db $d3
    ld bc, $0537
    ld [$d0ff], sp
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc c
    inc bc
    inc b
    dec h
    ld h, b
    and h
    ld e, a
    inc sp
    ld e, a
    nop
    ei
    ld e, a
    call Call_000_3c3c
    ld a, [$d662]
    ld hl, $5f3f
    jp Jump_000_3d97


    ld d, b
    ld e, a
    sub h
    ld e, a

Call_007_5f43:
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    jp Jump_000_3486


    ld a, [$d728]
    bit 6, a
    ret nz

    ld hl, $5f8f
    call Call_000_34bf
    ret nc

    ld a, $02
    ld [$d528], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $659f
    call Call_000_35d6
    ldh a, [$db]
    and a
    jr nz, jr_007_5f82

    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    call Call_007_5f43
    ld a, $01
    ld [$d662], a
    ret


jr_007_5f82:
    ld a, $03
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d728
    set 6, [hl]
    ret


    inc bc
    inc bc
    inc bc
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d662], a
    ret


    xor d
    ld e, a
    rst $20
    ld e, a
    db $ec
    ld e, a
    ld [$28fa], sp
    rst $10
    bit 6, a
    jr nz, jr_007_5fde

    ld b, $16
    ld hl, $659f
    call Call_000_35d6
    ldh a, [$db]
    and a
    jr nz, jr_007_5fd0

    ld hl, $5fe7
    call Call_000_3c49
    call Call_007_5f43
    ld a, $01
    ld [$d662], a
    jp Jump_000_24d7


jr_007_5fd0:
    ld hl, $5fec
    call Call_000_3c49
    ld hl, $d728
    set 6, [hl]
    jp Jump_000_24d7


jr_007_5fde:
    ld hl, $5ff6
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld e, h
    ld l, d
    ld [hl+], a
    ld d, b
    rla
    xor c
    ld l, d
    ld [hl+], a
    ld de, $ef17
    ld l, d
    ld [hl+], a
    ld d, b
    rla
    ld [hl], h
    ld l, e
    ld [hl+], a
    ld d, b
    ld a, [bc]
    inc b
    dec b
    inc bc
    ld [bc], a
    rst $38
    dec b
    inc b
    ld [bc], a
    rst $38
    nop
    inc bc
    ld bc, $00ff
    inc b
    nop
    rst $38
    nop
    ld bc, $0731
    dec b
    rst $38
    db $d3
    ld bc, $c708
    dec b
    inc bc
    add hl, bc
    rst $00
    dec b
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld d, $6b
    ld l, d
    rla
    ld [bc], a
    add hl, bc
    ld [$1801], sp
    ld l, h
    ld l, c
    add hl, de
    inc c
    inc bc
    inc b
    add sp, $60
    cp b
    ld h, b
    dec a
    ld h, b
    nop
    cp [hl]
    ld h, b
    call Call_000_3c3c
    ld hl, $604a
    ld a, [$d636]
    call Call_000_3d97
    ret


    ld c, [hl]
    ld h, b
    sub c
    ld h, b
    ld a, [$d728]
    bit 6, a
    ret nz

    ld hl, $608c
    call Call_000_34bf
    ret nc

    ld a, $01
    ld [$d528], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $659f
    call Call_000_35d6
    ldh a, [$db]
    and a
    jr nz, jr_007_6080

    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    call Call_007_60a1
    ld a, $01
    ld [$d636], a
    ret


jr_007_6080:
    ld hl, $d728
    set 6, [hl]
    ld a, $03
    ldh [$8c], a
    jp Jump_000_2920


    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d636], a
    ret


Call_007_60a1:
    ld hl, $d730
    set 7, [hl]
    ld a, $80
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ret


    xor d
    ld e, a
    rst $20
    ld e, a
    db $ec
    ld e, a
    ld a, [bc]
    inc b
    dec b
    inc bc
    ld [bc], a
    rst $38
    dec b
    inc b
    ld [bc], a
    rst $38
    nop
    inc bc
    ld bc, $00ff
    inc b
    ld bc, $00ff
    ld bc, $0631
    ld a, [bc]
    rst $38
    jp nc, $0801

    rst $00
    dec b
    inc bc
    add hl, bc
    rst $00
    dec b
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld d, $6b
    ld l, d
    rla
    ld [bc], a
    add hl, bc
    ld [$1801], sp
    ld l, h
    ld l, c
    add hl, de
    inc c
    inc b
    inc bc
    xor a
    ld h, c
    ld a, a
    ld h, c
    nop
    ld h, c
    nop
    add l
    ld h, c
    call Call_000_3c3c
    ld a, [$d663]
    ld hl, $610d
    call Call_000_3d97
    ret


    jr z, jr_007_6170

    ld l, h
    ld h, c

Call_007_6111:
    ld hl, $d730
    set 7, [hl]
    ld a, $20
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ret


    ld a, [$d728]
    bit 6, a
    ret nz

    ld hl, $6167
    call Call_000_34bf
    ret nc

    ld a, $08
    ld [$d528], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $659f
    call Call_000_35d6
    ldh a, [$db]
    and a
    jr nz, jr_007_615a

    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    call Call_007_6111
    ld a, $01
    ld [$d663], a
    ret


jr_007_615a:
    ld a, $03
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d728
    set 6, [hl]
    ret


    inc bc
    inc bc
    inc b
    inc bc
    rst $38
    ld a, [$cd38]
    and a

jr_007_6170:
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d663], a
    ld [$da39], a
    ret


    xor d
    ld e, a
    rst $20
    ld e, a
    db $ec
    ld e, a
    ld a, [bc]
    inc b
    inc bc
    nop
    inc bc
    rst $38
    inc b
    nop
    inc bc
    rst $38
    inc bc
    dec b
    nop
    rst $38
    inc b
    dec b
    ld bc, $00ff
    ld bc, $0531
    rlca
    rst $38
    ret nc

    ld bc, $c6fb
    inc bc
    nop
    inc b
    rst $00
    inc b
    nop
    db $fd
    add $03
    dec b
    ld b, $c7
    inc b
    dec b
    inc e
    rra

jr_007_61b1:
    dec e
    ld [hl], b
    ld hl, $6e6f
    dec h
    ld l, l
    jr jr_007_61d8

    add hl, de
    inc c
    inc b
    inc bc
    ld [hl], c
    ld h, d
    ld b, c
    ld h, d
    rst $00
    ld h, c
    nop
    ld b, a
    ld h, d
    call Call_000_3c3c
    ld hl, $61d3
    ld a, [$d637]
    jp Jump_000_3d97


    xor $61
    ld sp, $2162

jr_007_61d8:
    jr nc, jr_007_61b1

    set 7, [hl]
    ld a, $10
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ret


    ld a, [$d728]
    bit 6, a
    ret nz

    ld hl, $622c
    call Call_000_34bf
    ret nc

    ld a, $02
    ld [$d528], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $659f
    call Call_000_35d6
    ldh a, [$db]
    and a
    jr nz, jr_007_6220

    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    call $61d7
    ld a, $01
    ld [$d637], a
    ret


jr_007_6220:
    ld hl, $d728
    set 6, [hl]
    ld a, $03
    ldh [$8c], a
    jp Jump_000_2920


    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld [$d637], a
    ret


    xor d
    ld e, a
    rst $20
    ld e, a
    db $ec
    ld e, a
    ld a, [bc]
    inc b
    inc bc
    nop
    nop
    rst $38
    inc b
    nop
    ld bc, $03ff
    dec b
    ld [bc], a
    rst $38
    inc b
    dec b
    inc bc
    rst $38
    nop
    ld bc, $0531
    ld b, $ff
    ret nc

    ld bc, $c6fb
    inc bc
    nop
    inc b
    rst $00
    inc b
    nop
    db $fd
    add $03
    dec b
    ld b, $c7
    inc b
    dec b
    inc e
    rra
    dec e
    ld [hl], b
    ld hl, $6e6f
    dec h
    ld l, l
    jr jr_007_629a

    add hl, de
    inc c
    inc b
    inc b
    or b
    ld b, c
    sub c
    ld h, d
    adc c
    ld h, d
    nop
    sbc b
    ld h, d
    ld a, $13
    ld [$d365], a
    jp Jump_000_3c3c


    sub e
    ld h, d
    rla
    adc l
    ld b, d
    inc hl
    ld d, b
    ld a, [bc]
    inc bc

jr_007_629a:
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    inc b
    inc b
    ld bc, $0079
    ld bc, $080d
    rlca
    rst $38
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    ld d, $12
    inc d
    ld b, [hl]
    ld h, h
    rst $18
    ld h, d
    add $62
    nop
    cp a
    ld h, e
    call Call_000_3c3c
    ld hl, $62fb
    ld de, $62d9
    ld a, [$d663]
    call Call_000_3160
    ld [$d663], a
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    ld [hl], h
    ld h, e
    ld a, d
    ld h, e
    add b
    ld h, e
    add [hl]
    ld h, e
    adc h
    ld h, e
    sub d
    ld h, e
    sbc b
    ld h, e
    sbc [hl]
    ld h, e
    and h
    ld h, e
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld bc, $d300
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    ld [bc], a
    nop
    db $d3
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    inc bc
    nop
    db $d3
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    inc b
    nop
    db $d3
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    dec b
    nop
    db $d3
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    ld b, $00
    db $d3
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    rlca
    nop
    db $d3
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    ld [$d300], sp
    rst $10
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    xor d
    ld h, e
    add hl, bc
    nop
    db $d3
    rst $10
    xor a
    ld h, e
    xor a
    ld h, e
    xor a
    ld h, e
    xor a
    ld h, e
    rst $38

jr_007_6368:
    call Call_000_31cc
    ld a, [$da39]
    ld [$d663], a
    jp Jump_000_24d7


    ld [$fb21], sp
    ld h, d
    jr jr_007_6368

    ld [$0721], sp
    ld h, e
    jr jr_007_6368

    ld [$1321], sp
    ld h, e
    jr jr_007_6368

    ld [$1f21], sp
    ld h, e
    jr jr_007_6368

    ld [$2b21], sp
    ld h, e
    jr jr_007_6368

    ld [$3721], sp
    ld h, e
    jr jr_007_6368

    ld [$4321], sp
    ld h, e
    jr jr_007_6368

    ld [$4f21], sp
    ld h, e
    jr jr_007_6368

    ld [$5b21], sp
    ld h, e
    jr jr_007_6368

    rla
    ld [c], a
    ld b, l
    inc hl
    ld d, b
    rla
    ld [$2345], a
    ld [$4b3e], sp
    call Call_000_13d0
    call Call_000_3748
    jp Jump_000_24d7


    ld l, $03
    inc hl
    inc b
    inc bc
    rst $38
    inc hl
    dec b
    inc bc
    rst $38
    dec bc
    nop
    inc bc
    rst $38
    nop
    ld c, $3d
    jr jr_007_63df

    rst $38
    rst $38
    ld b, c
    ld b, $28
    dec a
    ld d, $24
    rst $38
    rst $38
    ld b, d
    ld b, $28

jr_007_63df:
    dec a
    dec e
    add hl, de
    rst $38
    rst $38
    ld b, e
    ld b, $28
    dec a
    ld d, $1d
    rst $38
    rst $38
    ld b, h
    adc l
    dec hl
    dec a
    ld h, $1b
    rst $38
    rst $38
    ld b, l
    ld b, $28
    dec a
    jr nz, jr_007_6418

    rst $38
    rst $38
    ld b, [hl]
    ld b, $28
    dec a
    ld [de], a
    add hl, de
    rst $38
    rst $38
    ld b, a
    adc l
    dec hl
    dec a
    inc h
    add hl, hl
    rst $38
    rst $38
    ld c, b
    ld b, $28
    add hl, bc
    dec c
    ld [$d1ff], sp
    ld c, c
    ld c, e
    ld [hl-], a
    dec a

jr_007_6418:
    dec e
    dec bc
    rst $38
    rst $38
    adc d
    ld h, $3d
    rlca
    jr nz, @+$01

    rst $38
    adc e
    inc hl
    dec a
    rlca
    ld h, $ff
    rst $38
    adc h
    jr z, jr_007_646a

    inc h
    ld e, $ff
    rst $38
    adc l
    pop hl
    dec a
    inc h
    jr @+$01

    rst $38
    adc [hl]
    jp hl


    cp a
    ret z

    inc hl
    inc b
    cp a
    ret z

    inc hl
    dec b
    add l
    rst $00
    dec bc
    nop
    ld b, b
    ld h, c
    ld h, c
    ld h, c
    ld l, b
    ld h, l
    ld h, l
    ld l, c
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld l, c
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld l, c
    ld b, h
    rlca
    ld b, $0e
    ld [hl], b
    rlca
    ld sp, $065d
    rlca
    rlca
    ld c, $46
    ld b, $1a
    dec [hl]

jr_007_646a:
    dec [hl]
    add hl, de
    ld b, $5d
    ld b, h
    ld c, $0e
    ld c, $68
    ld a, [hl+]
    ld h, a
    ld l, c
    ld h, e
    dec hl
    ld h, c
    ld e, c
    ld b, [hl]
    jr c, @+$33

    ld b, $35
    inc e
    ld c, $5d
    ld b, b
    ld h, e
    ld c, $67
    ld e, h
    jr c, @+$33

    ld e, l
    ld h, e
    ld c, $06
    ld b, h
    ld b, [hl]
    ld b, $0e
    ld b, $38
    ld c, $31
    ld e, l
    ld b, h
    ld c, $0e
    ld c, $5c
    ld b, $31
    ld e, l
    ld c, $0e
    ld sp, $4644
    jr c, @+$10

    ld b, $0e
    ld b, $06
    ld e, l
    ld [hl], b
    ld c, $0e
    ld c, $5c
    jr c, jr_007_64bf

    ld [hl], c
    ld c, $0e
    ld c, $44
    ld b, [hl]
    ld c, $0e
    jr c, jr_007_64c9

    ld sp, $5d06
    ld l, b

jr_007_64bf:
    ld h, l
    ld h, l
    ld b, c
    ld b, b
    ld b, c
    ld h, l
    ld l, c
    ld h, e
    dec hl
    ld h, c

jr_007_64c9:
    ld b, h
    ld d, [hl]
    ld c, c
    ld e, b
    ld c, $57
    ld c, c
    ld c, c
    ld d, c
    ld e, h
    rlca
    ld c, $0e
    ld [hl], b
    ld c, $31
    ld e, l
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    ld d, d
    ld b, [hl]
    ld e, h
    ld c, $0e
    ld c, $52
    ld c, $0e
    ld e, l
    ld b, $1d
    dec e
    dec e
    ld c, $1d
    dec e
    dec e
    dec e
    ld c, $44
    ld b, [hl]
    ld h, b
    ld h, c
    ld a, [hl+]
    ld c, $5c
    ld b, $38
    ld e, l
    rlca
    ld b, $1a
    dec [hl]
    inc e
    dec [hl]
    dec [hl]
    dec [hl]
    dec e
    ld c, $44
    ld b, [hl]
    ld h, h
    ld c, $0e
    ld c, $44
    rlca
    ld c, $71
    ld c, $1d
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld c, $44
    ld b, [hl]
    ld b, h
    ld sp, $6161
    ld a, [hl+]
    dec hl
    ld h, c
    ld h, d
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
    ld d, l
    ld b, [hl]
    ld b, h
    ld c, $0e
    rlca
    ld b, $38
    ld c, $66
    rlca
    ld b, $38
    ld b, $06
    ld b, $07
    ld sp, $0706
    ld c, $5d
    ld l, b
    ld h, e
    ld c, $67
    ld l, b
    ld h, l
    ld a, [hl+]
    ld d, [hl]
    ld c, $0e
    ld c, $31
    rlca
    ld c, $0e
    ld c, $07
    ld c, $31
    ld e, l
    ld e, h
    jr c, @+$10

    ld b, $6b
    ld c, $0e
    ld c, $0e
    ld b, $0e
    ld c, $0e
    ld sp, $3106
    ld b, $06
    ld b, $5d
    ld e, h
    ld c, $31
    ld b, $6b
    ld a, [hl+]
    ld h, a
    ld h, c
    ld h, c
    ld h, l
    ld h, c
    ld h, c
    ld b, b
    ld h, e
    ld b, $2b
    ld h, c
    ld h, c
    ld h, l
    ld l, c
    ld b, h
    ld c, $0e
    ld sp, $0e5c
    ld c, $07
    ld b, $0e
    ld c, $06
    ld b, h
    ld e, $0e
    dec e
    dec e
    jr nz, @+$1e

    ld b, [hl]
    ld c, b
    ld e, b
    inc l
    ld d, a
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld de, $0404
    ld c, $42
    jp $ba65


    ld h, l
    nop
    jp z, $cd65

    inc a
    inc a
    ld a, $16
    ld [$d365], a
    ret


    push bc
    ld h, l
    rla
    ld sp, hl
    ld b, a
    inc hl
    ld d, b
    ld a, l
    inc bc
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    inc b
    inc b
    ld bc, $00c5
    ld bc, $070b
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    add hl, bc
    rst $00
    inc b
    inc b
    ld [$0404], sp
    sbc $41
    ei
    ld h, l
    ld hl, sp+$65
    nop
    ld d, a
    ld h, [hl]
    jp Jump_000_3c3c


    rst $38
    ld h, l
    ld b, b
    ld h, [hl]
    ld [$e0fa], sp
    rst $10
    bit 6, a
    ld hl, $6636
    jr nz, jr_007_6625

    ld hl, $662b
    call Call_000_3c49
    ld bc, $c501
    call Call_000_3e2e
    jr nc, jr_007_6622

    ld hl, $d7e0
    set 6, [hl]
    ld hl, $6630
    jr jr_007_6625

jr_007_6622:
    ld hl, $663b

jr_007_6625:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld [bc], a
    ld c, [hl]
    inc hl
    ld d, b
    rla
    ld h, [hl]
    ld c, [hl]
    inc hl
    ld de, $1750
    ld a, c
    ld c, [hl]
    inc hl
    ld d, b
    rla
    cp [hl]
    ld c, [hl]
    inc hl
    ld d, b
    ld [$5221], sp
    ld h, [hl]
    call Call_000_3c49
    ld a, $23
    call Call_000_13d0
    call Call_000_3748
    jp Jump_000_24d7


    rla
    ldh [$4e], a
    inc hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07ff], sp
    inc bc
    ld [$00ff], sp
    ld [bc], a
    dec e
    rlca
    ld b, $ff
    db $d3
    ld bc, $0809
    ld a, [bc]
    cp $00
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc c
    inc b
    dec b
    ld c, d
    ld h, a
    rst $18
    ld h, [hl]
    add e
    ld h, [hl]
    nop
    jr nz, @+$69

    call Call_000_3c3c
    ld hl, $669e
    ld a, [$d60e]
    call Call_000_3d97
    ld a, [$d361]
    cp $04
    ld a, $22
    jr c, jr_007_669a

    ld a, $21

jr_007_669a:
    ld [$d365], a
    ret


    and h
    ld h, [hl]
    call $de66
    ld h, [hl]
    ld hl, $66b5
    call Call_000_34bf
    ret nc

    xor a
    ldh [$b4], a
    ld a, $01
    ldh [$8c], a
    jp Jump_000_2920


    ld [bc], a
    inc b
    ld [bc], a
    dec b
    rst $38

Call_007_66ba:
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    ld [$c109], a
    ld [$cd6b], a
    jp Jump_000_3486


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    call Call_000_3dd7
    ld a, $00
    ld [$d60e], a
    ret


    pop hl
    ld h, [hl]
    ld [$56fa], sp
    db $d3
    bit 0, a
    jr nz, jr_007_66f6

    ld hl, $6704
    call Call_000_3c49
    call Call_007_66ba
    ld a, $01
    jr jr_007_66fe

jr_007_66f6:
    ld hl, $671a
    call Call_000_3c49
    ld a, $02

jr_007_66fe:
    ld [$d60e], a
    jp Jump_000_24d7


    rla
    cp e
    ld c, a
    inc hl
    ld [$a53e], sp
    call Call_000_3740
    call Call_000_3748
    ld hl, $6715
    ret


    rla
    ld [de], a
    ld d, b
    inc hl
    ld d, b
    rla
    ld a, $50
    inc hl
    dec bc
    ld d, b
    ld a, [bc]
    inc b
    rlca
    inc b
    nop
    rst $38
    rlca
    dec b
    nop
    rst $38
    nop
    inc b
    nop
    rst $38
    nop
    dec b
    ld bc, $00ff
    ld bc, $0631
    ld a, [bc]
    rst $38
    jp nc, Jump_000_1701

    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    inc bc
    ld l, $28
    cpl
    inc bc
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc l
    inc b
    dec l
    nop
    db $10
    inc b
    inc b
    dec b
    ld l, c
    inc [hl]
    ld l, b
    ld l, d
    ld h, a
    nop
    rst $18
    ld l, b
    call Call_000_3c3c
    ld a, [$d661]
    ld hl, $6776
    jp Jump_000_3d97


    add d
    ld h, a
    add e
    ld h, a
    and [hl]
    ld h, a
    push bc
    ld h, a
    dec c
    ld l, b
    daa
    ld l, b
    ret


    ld a, [$c109]
    and a
    ld de, $679c
    jr nz, jr_007_678f

    ld de, $67a0

jr_007_678f:
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $02
    ld [$d661], a
    ret


    ld b, b
    ld b, b
    ld b, b
    rst $38
    ret nz

    ld b, b
    ld b, b
    add b
    ld b, b
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $61
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d7f2
    set 6, [hl]
    xor a
    ld [$cd6b], a
    ld a, $03
    ld [$d661], a
    ret


    ld a, [$d7f2]
    bit 3, a
    ret z

    ld a, $f0
    ld [$cd6b], a
    ld a, $02
    ld [$cf13], a
    ld a, $0c
    ldh [$eb], a
    ld a, $40
    ldh [$ec], a
    ld a, $06
    ldh [$ed], a
    ld a, $05
    ldh [$ee], a
    call Call_000_32f9
    ld a, $62
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld c, $08
    call Call_000_3739
    ld a, $02
    ldh [$8c], a
    ld de, $6807
    call Call_000_363a
    ld a, $04
    ld [$d661], a
    ret


    nop
    ret nz

    ret nz

    ret nz

    nop
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld hl, $d7f2
    set 5, [hl]
    ld hl, $d7f1
    set 0, [hl]
    ld a, $00
    ld [$d661], a
    ret


    ld a, $04
    ldh [$8c], a
    call Call_000_2920
    ld a, $00
    ld [$d661], a
    ret


    dec a
    ld l, b
    ld [hl], h
    ld l, b
    ret nc

    ld l, b
    inc a
    ld l, b
    db $fd
    ld [$6521], sp
    ld l, b
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_007_685a

jr_007_684d:
    ld hl, $686a
    call Call_000_3c49
    ld a, $01
    ld [$d661], a
    jr jr_007_6862

jr_007_685a:
    ld hl, $686f
    call Call_000_3c49
    jr jr_007_684d

jr_007_6862:
    jp Jump_000_24d7


    rla
    ld h, a
    ld d, d
    inc hl
    ld d, b
    rla
    ld b, l
    ld d, e
    inc hl
    ld d, b
    rla
    sub c
    ld d, e
    inc hl
    ld d, b
    ld [$f2fa], sp
    rst $10
    bit 4, a
    jr nz, jr_007_68a9

    ld hl, $68ba
    call Call_000_3c49
    ld bc, $3f01
    call Call_000_3e2e
    jr nc, jr_007_68b1

    ld hl, $68bf
    call Call_000_3c49
    ld hl, $d7f2
    set 4, [hl]
    ld a, $07
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $09
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d

jr_007_68a9:
    ld hl, $68cb
    call Call_000_3c49
    jr jr_007_68b7

jr_007_68b1:
    ld hl, $68c6
    call Call_000_3c49

jr_007_68b7:
    jp Jump_000_24d7


    rla
    push af
    ld d, e
    inc hl
    ld d, b
    rla
    sbc c
    ld d, h
    inc hl
    ld de, $5006
    rla
    or b
    ld d, h
    inc hl
    ld d, b
    rla
    ret nc

    ld d, h
    inc hl
    ld d, b
    ld [$da21], sp
    ld l, b
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld a, a
    ld d, l
    inc hl
    ld d, b
    dec c
    ld [bc], a
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    nop
    inc bc
    dec b
    add hl, bc
    ld a, [bc]
    rst $38
    rst $38
    ld bc, $080c
    ld [$ffff], sp
    ld [bc], a
    inc c
    add hl, bc
    ld a, [bc]
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld bc, $0e02
    ld c, $03
    inc c
    inc bc
    inc bc
    call Call_000_36f4
    ld hl, $6946
    call Call_000_3c49
    ld hl, $693b
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_007_6932

    ld a, $56
    call Call_000_3e6d

jr_007_6932:
    ld hl, $6940
    call Call_000_3c49
    jp Jump_000_3701


    rla
    ld e, l
    ld h, e
    ld [hl+], a
    ld d, b
    rla
    ld a, e
    ld h, e
    ld [hl+], a
    dec c
    ld d, b
    rla
    sbc d
    ld h, e
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld a, $39
    jp Jump_000_3ef5


    rla
    and $46
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld a, $05
    jp Jump_000_3ef5


    rla
    db $fc
    ld b, [hl]
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld hl, $d2f7
    ld b, $13
    call Call_000_2b7f
    ld a, [$d11e]
    cp $02
    ld a, $06
    jr c, jr_007_697b

    ld a, $07

jr_007_697b:
    jp Jump_000_3ef5


    rla
    ld a, [de]
    ld b, a
    ld [hl+], a
    ld d, b
    rla
    ld b, d
    ld b, a
    ld [hl+], a
    ld d, b
    ld hl, $d790
    bit 7, [hl]
    jr z, jr_007_69ab

    ld a, [$da47]
    and a
    jr z, jr_007_69b0

    jr jr_007_69ab

    ld a, [$d70d]
    ld b, a
    ld a, [$d70e]
    ld c, a
    or b
    jr z, jr_007_69b0

    dec bc
    ld a, b
    ld [$d70d], a
    ld a, c
    ld [$d70e], a

jr_007_69ab:
    xor a
    ld [$da46], a
    ret


jr_007_69b0:
    call Call_000_3c3c
    xor a
    ld [$cfc7], a
    dec a
    call Call_000_23b1
    ld c, $02
    ld a, $b9
    call Call_000_23a1

jr_007_69c2:
    ld a, [$c02a]
    cp $b9
    jr nz, jr_007_69c2

    ld a, $d3
    ldh [$8c], a
    call Call_000_2920
    xor a
    ld [$d528], a
    ld a, $9c
    ldh [$8b], a
    ld a, $03
    ld [$d42f], a
    ld a, $05
    ld [$d61f], a
    ld hl, $d790
    set 6, [hl]
    ld a, $01
    ld [$da46], a
    ret


    xor a
    ld [$cd6b], a
    ld hl, $69f7
    jp Jump_000_3c49


    ld [$47fa], sp
    jp c, $28a7

    ld b, $21
    dec c
    ld l, d
    call Call_000_3c49

jr_007_6a04:
    ld hl, $6a12
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld a, [hl]
    ld b, a
    ld [hl+], a
    ld d, b
    rla
    sbc b
    ld b, a
    ld [hl+], a
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c3c
    ld a, $31
    jp Jump_000_3ef5


    ld [$eaaf], sp
    jr c, jr_007_6a04

    ld a, [$cd3d]
    push af
    and $0f
    ldh [$db], a
    pop af
    and $f0
    swap a
    ldh [$dc], a
    ld hl, $6a5b
    call Call_000_3c49
    ldh a, [$db]
    dec a
    add a
    ld d, $00
    ld e, a
    ld hl, $6a60
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c49
    ld a, $01
    ld [$cc3c], a
    call Call_007_6a92
    jp Jump_000_24d7


    rla
    or a
    ld b, a
    ld [hl+], a
    ld d, b
    ld l, h
    ld l, d
    ld [hl], c
    ld l, d
    db $76
    ld l, d
    ld a, e
    ld l, d
    add b
    ld l, d
    add l
    ld l, d
    rla
    ld l, l
    ld c, b
    ld [hl+], a
    ld d, b
    rla
    sub b
    ld c, b
    ld [hl+], a
    ld d, b
    rla
    cp e
    ld c, b
    ld [hl+], a
    ld d, b
    rla
    push de
    ld c, b
    ld [hl+], a
    ld d, b
    rla
    dec d
    ld c, c
    ld [hl+], a
    ld d, b
    rla
    ld c, c
    ld c, c
    ld [hl+], a
    ld d, b

Call_007_6a8a:
    ld hl, $d79c
    ld a, $10
    jp Jump_000_3e6d


Call_007_6a92:
    call Call_000_35ec
    ldh a, [$dc]
    ld c, a
    ld a, [$cc26]
    cp c
    jr nz, jr_007_6ab8

    ld hl, $d126
    set 5, [hl]
    ldh a, [$db]
    ldh [$e0], a
    ld hl, $6ae3
    call Call_000_3c49
    ldh a, [$e0]
    ld c, a
    ld b, $01
    call Call_007_6a8a
    jp Jump_007_6b0a


jr_007_6ab8:
    call Call_000_3748
    ld a, $a5
    call Call_000_23b1
    call Call_000_3748
    ld hl, $6b05
    call Call_000_3c49
    ldh a, [$db]
    add $02
    ld c, a
    ld b, $02
    ld hl, $d79a
    ld a, $10
    call Call_000_3e6d
    ld a, c
    and a
    ret nz

    ldh a, [$db]
    add $02
    ld [$da38], a
    ret


    dec bc
    rla
    ld h, h
    ld c, c
    ld [hl+], a
    ld b, $08
    ldh a, [$e0]
    ld c, a
    ld b, $02
    call Call_007_6a8a
    ld a, c
    and a
    jp nz, Jump_000_24d7

    call Call_000_3748
    ld a, $ad
    call Call_000_23b1
    call Call_000_3748
    jp Jump_000_24d7


    rla
    adc a
    ld c, c
    ld [hl+], a
    ld d, b

Jump_007_6b0a:
    ld a, $06
    ldh [$db], a

jr_007_6b0e:
    ldh a, [$db]
    dec a
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $6b48
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc hl
    ld a, [hl]
    ld [$d12f], a
    push bc
    ldh a, [$db]
    ldh [$e0], a
    ld c, a
    ld b, $02
    call Call_007_6a8a
    ld a, c
    and a
    jr nz, jr_007_6b36

    ld a, [$d12f]
    jr jr_007_6b38

jr_007_6b36:
    ld a, $0e

jr_007_6b38:
    pop bc
    ld [$d09f], a
    ld a, $17
    call Call_000_3e6d
    ld hl, $ffdb
    dec [hl]
    jr nz, jr_007_6b0e

    ret


    add hl, bc
    inc bc
    ld d, h
    nop
    ld b, $03
    ld d, h
    nop
    ld b, $06
    ld d, h
    nop
    inc bc
    ld [$005f], sp
    ld [bc], a
    ld b, $54
    nop
    ld [bc], a
    inc bc
    ld d, h
    nop
    call Call_000_3c3c
    ld a, $30
    call Call_000_3ef5
    ret


    rla
    and c
    ld c, c
    ld [hl+], a
    ld d, b
    call Call_000_3c3c
    ld a, [$c109]
    cp $04
    ret nz

    ld a, [$d7f2]
    bit 7, a
    jr nz, jr_007_6bd2

    bit 3, a
    jr nz, jr_007_6b86

    bit 6, a
    jr nz, jr_007_6b8b

jr_007_6b86:
    ld a, $2d
    jp Jump_000_3ef5


jr_007_6b8b:
    ld a, $01
    ld [$cc3c], a
    ld a, $2e
    call Call_000_3ef5
    ld c, $20
    call Call_000_3739
    ld a, $8c
    call Call_000_23b1
    call Call_000_3748
    ld c, $50
    call Call_000_3739
    ld a, $9c
    call Call_000_23b1
    call Call_000_3748
    ld c, $30
    call Call_000_3739
    ld a, $8c
    call Call_000_23b1
    call Call_000_3748
    ld c, $20
    call Call_000_3739
    ld a, $86
    call Call_000_23b1
    call Call_000_3748
    call Call_000_2307
    ld hl, $d7f2
    set 3, [hl]
    ret


jr_007_6bd2:
    ld a, $01
    ld [$cc3c], a
    ld a, $2f
    call Call_000_3ef5
    ret


    rla
    rst $08
    ld c, c
    ld [hl+], a
    ld d, b
    rla
    ei
    ld c, c
    ld [hl+], a
    ld b, $08
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld c, $10
    call Call_000_3739
    ld a, $9d
    call Call_000_23b1
    call Call_000_3748
    ld c, $3c
    call Call_000_3739
    jp Jump_000_24d7


    ld [$19cd], sp
    scf
    ld hl, $6c7f
    call Call_000_3c49
    xor a
    ld [$d07c], a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $04
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

jr_007_6c2d:
    ld hl, $d730
    set 6, [hl]
    ld hl, $c3a0
    ld b, $0a
    ld c, $09
    call Call_000_1922
    ld hl, $c3ca
    ld de, $6c84
    call Call_000_1955
    ld hl, $6caa
    call Call_000_3c49
    call Call_000_36f4
    call Call_000_3abe
    bit 1, a
    jr nz, jr_007_6c74

    ld a, [$cc26]
    add $66
    cp $66
    jr z, jr_007_6c6c

    cp $67
    jr z, jr_007_6c6c

    cp $68
    jr z, jr_007_6c6c

    cp $69
    jr z, jr_007_6c6c

    jr jr_007_6c74

jr_007_6c6c:
    call Call_000_349b
    call Call_000_3701
    jr jr_007_6c2d

jr_007_6c74:
    ld hl, $d730
    res 6, [hl]
    call Call_000_3701
    jp Jump_000_24d7


    rla
    dec h
    ld c, d
    ld [hl+], a
    ld d, b
    add h
    add h
    sub l
    add h
    add h
    ld c, [hl]
    add l
    adc e
    add b
    sub c
    add h
    adc [hl]
    adc l
    ld c, [hl]
    adc c
    adc [hl]
    adc e
    sub e
    add h
    adc [hl]
    adc l
    ld c, [hl]
    sub l
    add b
    adc a
    adc [hl]
    sub c
    add h
    adc [hl]
    adc l
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    rla
    ld b, b
    ld c, d
    ld [hl+], a
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c3c
    ld a, $08
    jp Jump_000_3ef5


    rla
    ld h, b
    ld c, d
    ld [hl+], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
