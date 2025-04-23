; Disassembly of "Pokemon Red (UE) [S][!].gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    nop
    ld [de], a
    add hl, de
    rst $18
    ld b, b
    ld h, [hl]
    ld e, c
    ld d, [hl]
    ld e, c
    inc bc
    dec de
    sub l
    ld c, e
    pop bc
    rst $00
    add hl, bc
    inc d
    ld hl, sp+$27
    ld d, $c7
    ld [de], a
    ld d, c
    ld b, b
    db $dd
    rst $00
    add hl, bc
    ld a, [bc]
    ld hl, sp+$00
    ld sp, hl
    add $22
    ld b, b
    rrca
    dec c
    dec c
    ld [$7a00], sp
    dec c
    ld a, [bc]
    ld [bc], a
    ld a, d
    add hl, bc
    jr jr_006_402f

jr_006_402f:
    add b
    inc bc
    jr jr_006_4035

    add b
    inc bc

jr_006_4035:
    add hl, de
    ld [bc], a
    add b
    add hl, bc
    add hl, hl
    nop
    add l
    dec de
    inc c
    nop
    add [hl]
    inc de
    inc e
    nop
    add a
    inc de
    daa
    nop
    adc b
    inc de
    ld hl, $8900
    dec de
    rra
    nop
    adc d
    dec de
    inc hl
    nop
    adc e
    dec de
    dec hl
    nop
    adc h
    add hl, bc
    rrca
    dec de
    ld a, [bc]
    rrca
    inc de
    dec bc
    add hl, bc
    ld a, [hl+]
    inc c
    dec e
    dec c
    dec c
    add hl, bc
    dec d
    ld c, $0d
    inc c
    rrca
    dec d
    daa
    db $10
    dec d
    ld hl, $1511
    dec de
    ld [de], a
    add hl, bc
    ld [$0c15], sp
    cp $00
    ld bc, $2025
    rrca
    rst $38
    pop de
    ld [bc], a
    dec c
    rla
    ld [de], a
    cp $01
    inc bc
    dec h
    ld a, [de]
    dec e
    rst $38
    ret nc

    inc b
    dec h
    inc d
    ld a, [de]
    rst $38
    ret nc

    dec b
    cpl
    db $10
    inc h
    rst $38
    jp nc, $0506

    db $10
    ld [hl+], a
    rst $38
    db $d3
    rlca
    jr jr_006_40c2

    inc h
    cp $02
    ld [$1218], sp
    ld l, $fe
    ld [bc], a
    add hl, bc
    add $c7
    dec c
    ld [$c7c7], sp
    dec c
    ld a, [bc]
    sub b
    rst $00
    add hl, bc
    jr jr_006_40eb

    rst $00
    inc bc
    jr jr_006_40ef

    rst $00
    inc bc
    add hl, de
    sbc b
    rst $00
    add hl, bc

jr_006_40c2:
    add hl, hl
    and c
    ret z

    dec de
    inc c
    dec l
    ret z

    inc de
    inc e
    ld [hl-], a
    ret z

    inc de
    daa
    cpl
    ret z

    inc de
    ld hl, $c8aa
    dec de
    rra
    xor h
    ret z

    dec de
    inc hl
    or b
    ret z

    dec de
    dec hl
    rrca
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h

jr_006_40eb:
    ld l, h
    ld l, h
    ld l, h
    ld l, h

jr_006_40ef:
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, a
    ld l, a
    ld a, [bc]
    ld l, a
    ld l, a
    ld l, a
    ld a, [bc]
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, [bc]
    ld l, [hl]
    rrca
    jr nz, jr_006_4135

    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jr nz, jr_006_4127

    ld hl, $2055
    dec c
    ld hl, $5555
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l

jr_006_4127:
    ld d, l
    ld l, l
    ld l, [hl]
    rrca
    ld l, b
    ld l, c
    jr nz, jr_006_413c

    dec c
    ld hl, $7f68
    ld l, c
    ld d, l

jr_006_4135:
    ld l, b
    ld a, a
    ld l, c
    jr nz, jr_006_415b

    jr nz, jr_006_415d

jr_006_413c:
    jr nz, jr_006_415f

    jr nz, jr_006_4161

    ld d, l
    ld l, l
    ld l, [hl]
    rrca
    scf
    ld a, [hl]
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    scf
    ld a, l
    ld a, [hl]
    ld a, c
    scf
    ld a, [hl-]
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    ld a, h
    ld [hl], d
    ld d, l
    rrca

jr_006_415b:
    rrca
    rrca

jr_006_415d:
    ld d, l
    ld d, l

jr_006_415f:
    ld l, b
    ld a, a

jr_006_4161:
    ld a, a
    ld l, c
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
    ld d, l
    ld d, l
    scf
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], e
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
    rrca
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, c
    jr nc, jr_006_41a3

    inc bc
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld [hl], a
    ld [hl], a

jr_006_41a3:
    ld [hl], a
    ld [hl], a
    rrca
    rrca
    rrca
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld c, [hl]
    ld d, h
    ld c, l
    jr nz, jr_006_41c3

    ld hl, $2120
    ld d, l
    jr nz, jr_006_41dd

    jr nz, jr_006_41df

    rrca
    ld l, [hl]
    ld [hl], a
    ld d, l
    ld d, l

jr_006_41c3:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, a
    rra
    ld l, d
    scf
    ld a, [hl-]
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld d, l
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    rrca
    ld l, [hl]
    rrca
    ld d, l
    ld d, l
    ld d, l

jr_006_41dd:
    ld d, l
    ld d, l

jr_006_41df:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jr jr_006_4228

    add hl, de
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    dec [hl]
    ld l, [hl]
    rrca
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
    ld l, l
    ld l, [hl]
    rrca
    jr nz, jr_006_422f

    inc c
    dec c
    dec c
    ld c, $20
    ld hl, $2120
    ld d, l
    ld d, l
    jr nz, jr_006_423b

    jr nz, jr_006_423d

    jr nz, jr_006_423f

    jr nz, jr_006_4241

    jr nz, jr_006_4243

    ld a, [bc]
    ld l, [hl]
    rrca
    scf
    ld a, [hl]
    db $10

jr_006_4228:
    ld de, $1211
    scf
    ld a, [hl]
    scf
    ld a, [hl]

jr_006_422f:
    ld d, l
    ld d, l
    scf
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    scf
    ld a, [hl]
    ld a, h
    ld a, [hl]

jr_006_423b:
    ld a, [bc]
    ld l, [hl]

jr_006_423d:
    rrca
    ld d, l

jr_006_423f:
    ld d, l
    ld d, l

jr_006_4241:
    ld d, l
    ld d, l

jr_006_4243:
    ld a, c
    ld d, l
    ld d, l
    jr nz, jr_006_4269

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
    ld a, [bc]
    ld l, [hl]
    rrca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    scf
    ld a, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l

jr_006_4269:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld l, [hl]
    rrca
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
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl-], a
    ld [hl], $6c
    ld l, h
    ld l, h
    ld l, h
    ld a, [bc]
    ld l, [hl]
    rrca
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [hl], $6f
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rrca
    nop
    add hl, bc
    ld a, [bc]
    db $fd
    ld b, d
    adc b
    ld c, a
    ld e, e
    ld c, [hl]
    inc c
    inc c
    sub d
    ld b, c
    db $eb
    add $0a
    ld a, [bc]
    inc hl
    nop
    add hl, bc
    ret z

    jr nz, jr_006_4325

    ld d, b
    xor e
    rst $00
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $c3
    ld b, d
    dec bc
    inc bc
    dec b
    dec b
    nop
    dec h
    dec b
    dec c
    nop
    daa
    dec bc
    inc c
    ld bc, $0428
    dec c
    dec c
    inc b
    add hl, bc
    rlca
    dec b
    dec b
    inc bc
    ld b, $05
    dec bc
    rlca
    inc bc
    inc bc
    add hl, bc
    inc c
    rst $38
    rst $38
    ld bc, $0c0d
    rlca
    cp $00
    ld [bc], a
    cpl
    ld [de], a
    rrca
    cp $00
    inc bc
    dec de
    rst $00
    dec b
    dec b
    rra
    rst $00
    dec b
    dec c
    ld c, a
    rst $00
    dec bc
    inc c
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld c, a
    dec bc
    ld d, b
    ld d, d
    ld d, d
    ld d, b
    ld c, [hl]
    ld bc, $3938
    ld bc, $3801
    add hl, sp
    ld bc, $4e4d
    ld [$3d3c], sp
    ld bc, $3c08
    dec a
    ld bc, $4e4d
    ld bc, $0101
    ld bc, $0101
    ld bc, $4d01

jr_006_4325:
    ld c, [hl]
    ld bc, $5677
    ld bc, $0d0c
    ld c, $01
    ld c, l
    ld c, [hl]
    ld bc, $7474
    ld bc, $3a10
    nop
    ld bc, $4e4d
    ld bc, $0101
    ld bc, $5677
    ld [hl], a
    ld sp, $4e4d
    ld a, [bc]
    dec e
    ld e, $31
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $504d
    ld a, [bc]
    ld h, l
    ld h, h
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld c, a
    nop
    ld [de], a
    inc d
    db $ec
    ld b, e
    db $e4
    ld d, b
    pop af
    ld c, a
    ld c, $0d
    ret z

    ld b, c
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    ld b, a
    or $29
    ret


    inc c
    db $fc
    ld b, b
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $21
    ld c, [hl]
    ld b, b
    sbc [hl]
    rst $00
    add hl, bc
    inc d
    ld hl, sp+$27
    ld d, $c7
    add h
    ld b, e
    rrca
    dec b
    add hl, de
    rla
    nop
    add hl, hl
    inc de
    dec e
    nop
    ld a, [hl+]
    rrca
    dec d
    nop
    dec hl
    add hl, bc
    dec d
    nop
    inc l
    rlca
    jr nz, jr_006_4399

jr_006_4399:
    dec l
    ld b, $11
    ld de, $0108
    inc de
    add hl, bc
    dec e
    dec d
    ld a, [bc]
    inc de
    ld e, $0b
    add hl, de
    jr jr_006_43b6

    rlca
    dec de
    dec c
    rlca
    inc b
    jr jr_006_43c2

    cp $00
    ld bc, $0c0b

jr_006_43b6:
    ld [hl+], a
    rst $38
    rst $38
    ld [bc], a
    inc b
    dec e
    ld [hl+], a
    cp $00
    inc bc
    dec c
    dec c

jr_006_43c2:
    dec d
    rst $38
    db $d3
    inc b
    ld c, b
    dec c
    ld d, $ff
    rst $38
    dec b
    cpl
    dec de
    ld a, [bc]
    rst $38
    ret nc

    ld b, $0b
    add hl, bc
    dec d
    cp $02
    rlca
    ld b, [hl]
    ret z

    add hl, de
    rla
    ei
    rst $00
    inc de
    dec e
    jp Jump_000_0fc7


    dec d
    ld [hl], l
    rst $00
    add hl, bc
    dec d
    ld h, c
    rst $00
    rlca
    jr nz, jr_006_4419

    inc l
    add hl, hl
    rrca
    rrca
    rrca
    rrca
    rrca
    dec de
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    rrca
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0f0f
    ld sp, $3131
    ld sp, $3131
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld a, [bc]
    ld d, d

jr_006_4419:
    ld d, d
    ld d, d
    inc [hl]
    ld bc, $0101
    ld sp, $3131
    inc c
    dec c
    ld c, $31
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $311b
    ld sp, $1008
    ld de, $3112
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0302
    ld a, [de]
    ld a, [de]
    rlca
    rlca
    rlca
    ld a, [de]
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $3101
    rrca
    rrca
    ld d, a
    ld d, a
    dec h
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0302
    ld bc, $0101
    ld bc, $0101
    rrca
    rrca
    ld sp, $0101
    ld a, [bc]
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [$7701], sp
    ld [hl], a
    ld bc, $200a
    ld hl, $010a
    rrca
    rrca
    ccf
    dec sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $7401
    ld [hl], h
    ld bc, $7c0a
    ld [hl], e
    ld a, [bc]
    ld bc, $0f0f
    inc l
    add hl, hl
    inc e
    ld l, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0f
    inc l
    add hl, hl
    ld bc, $340a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld bc, $0174
    jr nz, jr_006_44f6

    ld bc, $0a74
    ld a, [bc]
    ld bc, $0f0f
    inc l
    add hl, hl
    ld bc, $1d0a
    rra
    ld e, $0a
    ld bc, $010a
    ld a, h
    ld [hl], d
    ld bc, $0a0a
    ld [hl], h
    ld bc, $0f0f
    ld d, a
    dec h
    ld a, [de]
    rlca
    ld h, l
    ld b, e

jr_006_44f6:
    ld h, h
    cpl
    ld a, [de]
    cpl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rrca
    rrca
    ld a, [bc]
    ld c, l
    ld bc, $0a74
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $080a
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld bc, $7474
    ld bc, $0f0f
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld bc, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld bc, $0a4e
    ld a, [bc]
    ld c, [hl]
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
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld bc, $0a4e
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld [de], a
    inc d
    and $45
    adc e
    ld d, e
    scf
    ld d, d
    dec b
    dec c
    ld a, [hl]
    ld b, b
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $0e
    ld d, l
    ld b, d
    or l
    rst $00
    add hl, bc
    inc hl
    ld hl, sp+$00
    ld [de], a
    rst $00
    ld [hl], a
    ld b, l
    nop
    ld a, [bc]
    rlca
    rlca
    ld c, $00
    inc [hl]
    dec b
    inc de
    ld [bc], a
    inc [hl]
    ld de, $0010
    ld [hl], $0d
    dec e
    nop
    scf
    ld de, $0017
    jr c, jr_006_45ab

    rlca
    nop
    add hl, sp
    add hl, de
    dec c
    nop
    ld a, [hl-]
    rlca
    dec e
    inc de
    ld b, $13
    ld hl, $1107
    jr @+$0a

    add hl, de
    ld c, $09
    add hl, bc
    rrca
    ld a, [bc]
    ld de, $0b0b
    rla
    add hl, de
    inc c

jr_006_45ab:
    dec b
    ld b, $13
    inc c
    rst $38
    rst $38
    ld bc, $1d07
    dec d
    rst $38
    rst $38
    ld [bc], a
    inc c
    dec d
    rra
    rst $38
    rst $38
    inc bc
    inc c
    dec e
    ld e, $fe
    ld [bc], a
    inc b
    inc b
    inc d
    daa
    rst $38
    ret nc

    dec b
    ld e, b
    rst $00
    rlca
    ld c, $40
    rst $00
    dec b
    inc de
    db $db
    rst $00
    ld de, $ad10
    rst $00
    dec c
    dec e
    sbc $c7
    ld de, $7217
    ret z

    dec e
    rlca
    ld b, c
    ret z

    add hl, de
    dec c
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
    ld l, a
    ld l, a
    ld l, a
    ccf
    dec sp
    ld bc, $7474
    inc c
    dec c
    dec c
    ld c, $20
    dec c
    ld hl, $6f6f
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, [hl]
    rrca
    rrca
    inc l
    add hl, hl
    ld bc, $7474
    ld [hl], l
    ld [hl], c
    ld [hl], c
    db $76
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, [hl]
    rrca
    rrca
    inc l
    add hl, hl
    ld a, [de]
    cpl
    rlca
    scf
    ld a, l
    ld a, [hl-]
    ld a, [hl]
    ld a, [de]
    rlca
    rlca
    rlca
    ld b, d
    rlca
    cpl
    rlca
    ld b, d
    rrca
    rrca
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $0801
    ld bc, $0a01
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    rrca
    rrca
    inc l
    add hl, hl
    ld bc, $7474
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld bc, $0101
    ld bc, $0101
    ld bc, $3e01
    ccf
    ccf
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    inc bc
    ld bc, $2c28
    inc l
    inc l
    add hl, hl
    ld bc, $0a0a
    ld bc, $0d0c
    ld c, $01
    ld bc, $2120
    ld bc, $0101
    ld bc, $5724
    ld d, a
    inc l
    add hl, hl
    ld bc, $0a0a
    ld [$1110], sp
    ld [de], a
    ld bc, $7c0a
    ld [hl], e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0101
    ld bc, $292c
    ld bc, $0101
    ld bc, $0101
    ld bc, $011b
    ld bc, $0101
    ld bc, $0801
    ld bc, $0101
    inc l
    add hl, hl
    inc e
    ld l, a
    ld l, a
    inc e
    ld l, a
    ld l, a
    ld l, a
    dec de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $3f3e
    ccf
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $2120
    ld bc, $3101
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld sp, $2801
    inc l
    inc l
    inc l
    add hl, hl
    ld bc, $0a0a
    ld a, [bc]
    ld a, h
    ld [hl], d
    ld [hl], h
    ld bc, $746e
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld l, l
    ld bc, $5724
    ld d, a
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $6e01
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld l, l
    ld bc, $0a4d
    ld a, [bc]
    dec hl
    dec h
    ld bc, $0302
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$076e], sp
    cpl
    rlca
    rlca
    ld l, l
    ld bc, $0a4d
    ld a, [bc]
    add hl, hl
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, l
    ld a, [bc]
    ld a, [bc]
    dec h
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    rrca
    rrca
    rrca
    ld bc, $0f0f
    rrca
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
    rrca
    rrca
    rrca
    ld bc, $0f0f
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld [de], a
    inc d
    jr nc, jr_006_479b

    dec l
    ld d, [hl]
    add b
    ld d, h
    rrca
    inc hl
    ld a, l
    ld b, a
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    inc hl
    or $09
    ret z

    db $10
    jp nc, $1245

    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $0f
    ld d, $44
    sbc [hl]
    rst $00
    add hl, bc
    dec l
    ld hl, sp+$59
    ld c, b
    rst $00
    inc d
    cp $46
    or l
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    add [hl]
    ld b, a
    rrca
    ld a, [bc]
    dec bc
    dec de
    nop
    ld a, $0f
    dec c
    nop
    ccf
    ld de, $0013
    ld b, b
    inc de
    ld e, $00
    ld b, c
    add hl, de
    dec c
    nop

jr_006_479b:
    ld b, d
    add hl, de
    add hl, de
    nop
    ld b, e
    dec bc
    inc b
    nop
    db $e4
    add hl, bc
    dec de
    ld [bc], a
    ld a, $0b
    add hl, bc
    ld bc, $09e6
    add hl, bc
    nop
    and $06
    inc de
    rla
    inc c
    dec e
    ld de, $190d
    ld a, [de]
    ld c, $11
    inc d
    rrca
    add hl, de
    dec bc
    db $10
    dec d
    dec de
    ld de, $020b
    ld b, $18
    rst $38
    ret nc

    ld bc, $0c18
    ld [hl+], a
    rst $38
    rst $38
    ld b, d
    and $05
    rlca
    jr jr_006_47f8

    rst $38
    ret nc

    inc bc
    inc c
    ld d, $13
    cp $01
    inc b
    inc c
    add hl, de
    dec c
    cp $02
    dec b
    ld sp, $2010
    rst $38
    ret nc

    ld b, $06
    ld e, $21
    rst $38
    jp nc, Jump_000_0507

    ld e, $20
    rst $38
    ret nc

    ld [$1f06], sp

jr_006_47f8:
    dec c
    cp $02
    add hl, bc
    inc c
    db $10
    ld [$d0ff], sp
    ld a, [bc]
    ld sp, $1f10
    rst $38
    ret nc

    dec bc
    sub d
    rst $00
    dec bc
    dec de
    cp a
    rst $00
    rrca
    dec c
    call c, $11c7
    inc de
    db $fc
    rst $00
    inc de
    ld e, $41
    ret z

    add hl, de
    dec c
    ld b, a
    ret z

    add hl, de
    add hl, de
    add a
    rst $00
    dec bc
    inc b
    ld a, b
    rst $00
    add hl, bc
    dec de
    adc c
    rst $00
    dec bc
    add hl, bc
    ld l, a
    rst $00
    add hl, bc
    add hl, bc
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld b, e
    ld b, e
    add hl, de
    ld d, h
    ld c, [hl]
    ld a, [bc]
    jr jr_006_4882

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld b, e
    ld b, e
    add hl, de
    ld d, h
    ld d, b
    rlca
    jr jr_006_4896

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc l
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    jr @+$45

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc l
    inc l
    add hl, hl
    add hl, de
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl], $0a
    ld l, l
    ld l, [hl]
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rrca
    rrca
    ld l, l
    inc l
    inc l

jr_006_4882:
    add hl, hl
    add hl, de
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld l, [hl]
    ld a, [bc]
    ld l, l
    ld l, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    rrca
    ld l, l
    ld d, a
    ld d, a

jr_006_4896:
    ld [hl], b
    add hl, de
    ld [bc], a
    add hl, bc
    inc bc
    jr nc, @+$0b

    inc bc
    ld bc, $0101
    ld [bc], a
    add hl, bc
    inc bc
    ld bc, $0930
    inc bc
    ld sp, $3131
    add hl, de
    ld bc, $0101
    ld bc, $0101
    ld bc, $010a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec de
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    rra
    rra
    rra
    add hl, de
    ld e, h
    rlca
    ld [bc], a
    add hl, bc
    inc bc
    jr nz, jr_006_48e8

    ld a, [bc]
    ld bc, $0101
    ld bc, $011b
    ld bc, $6b50
    ld l, e
    ld l, e
    dec d
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, h
    ld [hl], d
    rlca
    inc c
    dec c
    dec c
    ld c, $01
    ld a, [bc]
    ld bc, $010a
    ld bc, $0101

jr_006_48e8:
    ld bc, $0101
    ld bc, $0101
    ld bc, $1008
    ld de, $1211
    ld a, [de]
    cpl
    ld e, h
    ld h, d
    ld d, c
    ld d, c
    ld c, [hl]
    ld bc, $740a
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld bc, $0801
    ld sp, $3131
    ld e, a
    ld bc, $744e
    ld [hl], h
    ld c, [hl]
    ld bc, $0101
    jr nz, jr_006_4935

    ld bc, $0101
    ld bc, $2120
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld e, a
    ld bc, $744e
    ld [hl], h
    ld c, [hl]
    ld bc, $560a
    ld a, h
    ld a, [hl]
    ld bc, $0930
    inc bc
    ld a, h
    ld [hl], e
    jr nc, @+$0b

    inc bc
    ld e, a
    ld bc, $744e

jr_006_4935:
    ld [hl], h
    ld c, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $5f01
    ld bc, $744e
    ld [hl], h
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl], $56
    ld [hl-], a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld bc, $744e
    ld [hl], h
    ld c, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $744e
    ld [hl], h
    ld d, b
    ld d, d
    ld d, d
    ld l, l
    ld e, l
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    ld e, l
    ld c, l
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, [hl]
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
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
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    nop
    ld [de], a
    inc d
    ccf
    ld c, d
    ld l, a
    ld e, b
    and c
    ld d, a
    add hl, bc
    ld de, $410f
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    inc hl
    or $09
    ret z

    ld d, $5f
    ld b, l
    or l
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    cp d
    ld c, c
    ld b, e
    add hl, bc
    inc bc
    dec bc
    nop
    ld e, c
    dec c
    add hl, bc
    nop
    ld e, d
    dec c
    rla
    nop
    ld e, e
    inc de
    inc c
    nop
    ld e, h
    inc de
    rla
    nop
    ld e, l
    rra
    ld [de], a
    nop
    ld e, [hl]
    rra
    inc de
    nop
    ld e, [hl]
    dec c
    rrca
    nop
    call nz, $0703
    nop
    and e
    rlca
    inc bc
    dec de
    rlca
    dec c
    dec h
    ld [$180d], sp
    add hl, bc
    inc bc
    inc c
    ld a, [bc]
    dec c
    rlca
    dec bc
    inc de
    rlca
    inc c
    rrca
    dec e
    dec c
    ld b, $0f
    dec bc
    rla
    cp $02
    ld bc, $0a0b
    ld [de], a
    rst $38
    rst $38
    ld [bc], a
    inc de

jr_006_4a04:
    ld [hl+], a
    rla
    rst $38
    pop de
    inc bc
    dec bc
    dec bc
    ld [hl+], a
    rst $38
    rst $38
    inc b
    dec b
    dec c
    ld hl, $01fe
    dec b
    inc de
    rra
    dec e
    cp $02
    ld b, $22
    rst $00
    inc bc
    dec bc
    and e
    rst $00
    dec c
    add hl, bc
    xor d
    rst $00
    dec c
    rla
    di
    rst $00
    inc de
    inc c
    ld hl, sp-$39
    inc de
    rla
    sub d
    ret z

    rra
    ld [de], a
    sub d
    ret z

    rra
    inc de
    and [hl]
    rst $00
    dec c
    rrca
    jr nz, jr_006_4a04

    inc bc
    rlca
    ld b, e
    ld b, e
    ld b, e
    jr nz, @+$23

    jr nz, jr_006_4a67

    jr nz, jr_006_4a69

    ld sp, $2120
    ld sp, $3131
    ld sp, $3131
    ld sp, $4331
    ld l, e
    ld l, e
    ld a, h
    ld a, [hl]
    ld a, h
    ld [hl], d
    scf
    ld a, [hl]
    ld sp, $7e37
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $3131

jr_006_4a67:
    add hl, de
    ld b, e

jr_006_4a69:
    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $1b31
    ld sp, $1931
    ld b, e
    dec l
    rra
    ld e, $31
    ld sp, $3131
    ld sp, $3131
    ld sp, $4931
    ld c, b
    ld sp, $311b
    ld sp, $4319
    ld b, e
    ld b, e
    dec l
    rra
    rra
    ld e, $31
    ld sp, $3131
    ld sp, $4431
    ld b, l
    ld sp, $311b
    ld sp, $4319
    ld b, e
    ld b, e
    jr nz, jr_006_4aca

    ld b, e
    jr nz, jr_006_4acd

    ld sp, $2031
    ld hl, $3131
    ld sp, $1b31
    ld sp, $1931
    ld b, e
    ld h, h
    ld [$7e7c], sp
    ld sp, $7e7c
    ld sp, $7c31
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    inc de
    ld d, [hl]

jr_006_4aca:
    ld [hl], a
    add hl, de
    ld b, e

jr_006_4acd:
    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $0831
    ld sp, $3131
    ld sp, $1931
    ld b, e
    ld h, h
    ld sp, $0d0c
    ld c, $31
    ld sp, $3131
    jr nz, jr_006_4b0d

    dec e
    ld e, $54
    dec e
    rra
    rra
    rra
    add hl, de
    ld b, e
    ld h, h
    ld d, [hl]
    db $10
    ld de, $3512
    dec e
    ld e, $31
    ld a, h
    ld a, [hl]
    ld h, l
    ld h, h
    ld d, h
    ld h, l
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld h, h
    ld sp, $3131

jr_006_4b0d:
    ld sp, $6531
    ld h, h
    ld sp, $3131
    ld h, l
    dec l
    ld d, h
    ld l, $43
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld h, h
    ld sp, $3131
    ld sp, $6531
    dec l
    rra
    rra
    rra
    ld l, $43
    ld d, h
    ld b, e
    ld h, h
    rrca
    rrca
    add hl, de
    ld b, e
    dec l
    rra
    rra
    rra
    rra
    rra
    ld l, $43
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld h, h
    rrca
    rrca
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    dec l
    ld h, a
    rra
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    ld b, e
    jr jr_006_4bae

    add hl, de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc de
    ld d, h
    inc de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    jr jr_006_4bc2

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    dec b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_006_4b8e:
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
    ld d, h
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
    nop
    ld [de], a
    inc d
    add [hl]
    ld c, h
    ld l, $5a

jr_006_4bae:
    dec hl
    ld e, d
    rlca
    ld e, $f1
    ld c, [hl]
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $1d
    or d
    ld c, h
    sbc [hl]
    rst $00
    add hl, bc

jr_006_4bc2:
    add hl, de
    ld hl, sp+$31
    jr nz, jr_006_4b8e

    ld a, [de]
    call z, $b549
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    call nc, $0f4b
    add hl, bc
    dec c
    dec b
    nop
    sbc b
    dec de
    dec bc
    nop
    sbc c
    dec de
    inc de
    nop
    sbc d
    dec de
    dec de
    nop
    sbc e
    inc bc
    ld [de], a
    nop
    sbc h
    dec de
    dec b
    nop
    sbc l
    dec c
    ld d, $00
    sbc [hl]
    dec de
    rra
    ld bc, $18a4
    rra
    nop
    and h
    ld c, $17
    rrca
    dec bc
    rrca
    add hl, de
    inc c
    dec b
    ld de, $0d0d
    ld b, $0e
    dec de
    inc d
    rrca
    dec e
    dec de
    db $10
    rrca
    dec d
    ld de, $051d
    ld [de], a
    rlca
    ld hl, $0713
    dec de
    inc d
    rlca
    dec c
    dec d
    dec c
    rra
    ld d, $0f
    dec c
    rla
    rlca
    rlca
    jr jr_006_4c30

    inc b
    db $10
    ld c, $fe
    ld [bc], a
    ld bc, $150b

jr_006_4c2e:
    jr nz, jr_006_4c2e

jr_006_4c30:
    ld [bc], a
    ld [bc], a
    cpl
    ld [de], a
    ld [hl+], a
    rst $38
    ret nc

    inc bc
    inc b
    inc c
    inc e
    rst $38
    pop de
    inc b
    jr c, jr_006_4c49

    inc hl
    cp $00
    dec b
    dec a
    ld a, [bc]
    dec e
    rst $38
    rst $38

jr_006_4c49:
    ld b, $05
    ld a, [bc]
    db $10
    cp $02
    rlca
    dec b
    db $10
    ld [hl+], a
    cp $02
    ld [$153c], sp
    inc c
    cp $00
    add hl, bc
    ld a, $09
    ld a, [bc]
    rst $38
    rst $38
    ld a, [bc]
    and c
    rst $00
    dec c
    dec b
    ld e, d
    ret z

    dec de
    dec bc
    ld e, [hl]
    ret z

    dec de
    inc de
    ld h, d
    ret z

    dec de
    dec de
    ld h, $c7
    inc bc
    ld [de], a
    ld d, a
    ret z

    dec de
    dec b
    xor d
    rst $00
    dec c
    ld d, $64
    ret z

    dec de
    rra
    ld c, d
    ret z

    jr jr_006_4ca5

    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr nz, jr_006_4c9d

    ld hl, $0f0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, d
    ld l, a

jr_006_4c9d:
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, d
    scf
    ld a, [hl-]
    ld a, [hl]

jr_006_4ca5:
    ld a, d
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, d
    rrca
    rrca
    ld l, [hl]
    dec e
    ld e, $0f
    ld [hl], h
    ld [hl], h
    ld l, l
    ld d, [hl]
    ld d, l
    ld [hl], a
    ld l, [hl]
    ld bc, $0f01
    ld bc, $0101
    ld l, l
    rrca
    rrca
    ld l, [hl]
    ld [hl], a
    ld d, [hl]
    rrca
    ld [hl], a
    ld d, [hl]
    ld l, l
    ld a, d
    ld l, a
    ld l, a
    ld h, b
    ld [hl], a
    ld d, [hl]
    rrca
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld l, l
    rrca
    rrca
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld l, [hl]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    rrca
    rrca
    ld a, d
    jr nz, jr_006_4d0f

    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, b
    ld a, d
    jr nz, jr_006_4d03

    ld hl, $6c6e
    ld l, h
    ld l, h
    ld l, l
    ld a, d
    rrca
    rrca
    ld a, d
    ld a, h
    ld [hl], e
    ld a, d

jr_006_4d03:
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    scf
    ld a, [hl-]
    ld a, [hl]
    ld h, b
    ld [hl], a
    ld d, [hl]
    ld [hl], a

jr_006_4d0f:
    ld l, l
    ld a, d
    rrca
    rrca
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, c
    ld a, d
    ld a, d
    ld l, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld l, a
    rrca
    ld bc, $6701
    rra
    rra
    rra
    ld l, l
    ld a, d
    ld a, d
    ld l, [hl]
    ld bc, $0155
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld sp, $4e31
    ld bc, $6b14
    ld l, e
    ld l, e
    ld d, b
    ld d, d
    ld d, d
    ld h, b
    ld bc, $0155
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $0f31
    ld c, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $5f55
    ld [hl], h
    dec e
    rra
    ld e, $1b
    ld l, [hl]
    rrca
    ld c, [hl]
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld e, a
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec de
    ld l, [hl]
    rrca
    ld c, [hl]
    inc h
    jr nz, jr_006_4d87

    ld hl, $5757
    ld d, a
    ld d, a
    jr nz, @+$23

    dec h
    ld e, a
    jr c, jr_006_4dbe

    jr c, @+$3b

jr_006_4d87:
    dec de
    ld l, [hl]
    rrca
    ld c, [hl]
    ld e, b
    ld a, h
    ld de, $027e
    inc bc
    jr nc, jr_006_4d96

    ld a, h
    ld [hl], d
    ld e, c

jr_006_4d96:
    ld sp, $3d3c
    inc a
    dec a
    ld sp, $0f6e
    ld c, [hl]
    ld e, b
    ld [$3131], sp
    ld sp, $3131
    ld sp, $3131
    ld e, c
    ld e, a
    ld d, [hl]
    ld [hl], a
    ld sp, $1b77
    ld l, [hl]
    rrca
    ld c, [hl]
    ld e, d
    rlca
    rlca
    ld e, h
    ld l, a
    ld l, a
    ld l, a
    ld e, h
    rlca
    rlca
    ld e, e

jr_006_4dbe:
    ld bc, $0101
    ld bc, $3131
    ld l, [hl]
    rrca
    ld d, b
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, $3f
    dec sp
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld d, b
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld l, [hl]
    rrca
    ld sp, $3131
    ld sp, $2831
    inc l
    add hl, hl
    ld sp, $3131
    ld sp, $3f3e
    dec sp
    rrca
    rrca
    rrca
    rrca
    rrca
    call Call_006_4e36
    ld a, [$d732]
    bit 0, a
    ret z

    ld a, [$da42]
    and a
    ret nz

    ld a, [$da45]
    inc a
    ld [$da45], a
    cp $3c
    ret nz

    xor a
    ld [$da45], a
    ld a, [$da44]
    inc a
    ld [$da44], a
    cp $3c
    ret nz

    xor a
    ld [$da44], a
    ld a, [$da43]
    inc a
    ld [$da43], a
    cp $3c
    ret nz

    xor a
    ld [$da43], a
    ld a, [$da41]
    inc a
    ld [$da41], a
    cp $ff
    ret nz

    ld a, $ff
    ld [$da42], a
    ret


Call_006_4e36:
    ld a, [$d13a]
    and a
    jr nz, jr_006_4e40

    ld a, $ff
    jr jr_006_4e41

jr_006_4e40:
    dec a

jr_006_4e41:
    ld [$d13a], a
    and a
    ret nz

    ld a, [$d730]
    res 1, a
    res 2, a
    bit 5, a
    res 5, a
    ld [$d730], a
    ret z

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ret


    ld a, [$d74b]
    bit 4, a
    jr z, jr_006_4e67

    ld hl, $d747
    set 6, [hl]

jr_006_4e67:
    call Call_000_3c3c
    ld hl, $4e73
    ld a, [$d5f1]
    jp Jump_000_3d97


    add c
    ld c, [hl]
    or d
    ld c, [hl]
    jp nc, $124e

    ld c, a
    ld c, e
    ld c, a
    ld d, [hl]
    ld c, a
    add a
    ld c, a
    ld a, [$d747]
    bit 0, a
    ret nz

    ld a, [$d361]
    cp $01
    ret nz

    xor a
    ldh [$b4], a
    ld a, $04
    ld [$d528], a
    ld a, $ff
    call Call_000_23b1
    ld a, $02
    ld c, a
    ld a, $db
    call Call_000_23a1
    ld a, $fc
    ld [$cd6b], a
    ld hl, $d74b
    set 7, [hl]
    ld a, $01
    ld [$d5f1], a
    ret


    xor a
    ld [$cf0d], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld a, $ff
    ld [$cd6b], a
    ld a, $00
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld a, $02
    ld [$d5f1], a
    ret


    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_34a6
    call Call_000_3dd7
    ld a, $01
    ld [$d361], a
    ld a, $01
    ldh [$9b], a
    ld a, $01
    swap a
    ldh [$95], a
    ld a, $22
    call Call_000_3e6d
    ld hl, $ff95
    dec [hl]
    ld a, $20
    call Call_000_3e6d
    ld de, $cc97
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $ff
    ld [$cd6b], a
    ld a, $03
    ld [$d5f1], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$c109], a
    ld a, $01
    ld [$cf0d], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld a, $ff
    ld [$cd6b], a
    ld a, $01
    ld [$cf13], a
    xor a
    ld [$cf10], a
    ld a, $01
    ld [$cc57], a
    ldh a, [$b8]
    ld [$cc58], a
    ld a, $04
    ld [$d5f1], a
    ret


    ld a, [$cc57]
    and a
    ret nz

    ld a, $05
    ld [$d5f1], a
    ret


    ld a, [$d74a]
    bit 2, a
    jr nz, jr_006_4f7c

    and $03
    cp $03
    jr nz, jr_006_4f7c

    ld hl, $d74a
    set 2, [hl]
    ld a, $27
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $28
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3e6d


jr_006_4f7c:
    ld a, [$d74b]
    bit 4, a
    ret z

    ld hl, $d74b
    set 6, [hl]
    ret


    sub [hl]
    ld c, a
    db $d3
    ld c, a
    ret c

    ld c, a
    db $dd
    ld c, a
    ld [c], a
    ld c, a
    rst $20
    ld c, a
    db $ec
    ld c, a
    ld [$0dfa], sp
    rst $08
    and a
    jr nz, jr_006_4fa7

    ld a, $01
    ld [$cc3c], a
    ld hl, $4fb0
    jr jr_006_4faa

jr_006_4fa7:
    ld hl, $4fce

jr_006_4faa:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    ld b, l
    ld b, d
    add hl, hl
    ld [$0a0e], sp
    call Call_000_3739
    xor a
    ld [$cd4f], a
    ld [$cd50], a
    ld a, $4c
    call Call_000_3e6d
    ld a, $04
    ld [$d528], a
    jp Jump_000_24d7


    rla
    ld h, h
    ld b, d
    add hl, hl
    ld d, b
    rla
    call c, Call_000_2942
    ld d, b
    rla
    dec e
    ld b, e
    add hl, hl
    ld d, b
    rla
    ld [hl], h
    ld b, e
    add hl, hl
    ld d, b
    rla
    adc e
    ld b, e
    add hl, hl
    ld d, b
    rla
    or [hl]
    ld b, e
    add hl, hl
    ld d, b
    rla
    pop bc
    ld b, e
    add hl, hl
    ld d, b
    call Call_000_3c3c
    ld hl, $4ffd
    ld a, [$d5f4]
    jp Jump_000_3d97


    dec b
    ld d, b
    ld h, d
    ld d, b
    adc a
    ld d, b
    pop bc
    ld d, b
    call Call_006_500b
    jp Jump_006_503d


Call_006_500b:
    ld a, [$d74c]
    bit 0, a
    ret nz

    ld a, [$d356]
    cp $7f
    jr nz, jr_006_501e

    ld hl, $d74c
    set 0, [hl]
    ret


jr_006_501e:
    ld a, [$d361]
    cp $08
    ret nz

    ld a, [$d362]
    cp $20
    ret nz

    ld a, $0e
    ldh [$8c], a
    call Call_000_2920
    xor a
    ldh [$b4], a
    call Call_006_50cf
    ld a, $03
    ld [$d5f4], a
    ret


Jump_006_503d:
    ld a, [$d74b]
    bit 5, a
    ret nz

    ld a, [$d361]
    cp $09
    ret nz

    ld a, [$d362]
    cp $13
    ret nz

    ld a, $05
    ldh [$8c], a
    call Call_000_2920
    xor a
    ldh [$b4], a
    call Call_006_50cf
    ld a, $03
    ld [$d5f4], a
    ret


    ld a, [$c134]
    ldh [$eb], a
    ld a, [$c136]
    ldh [$ec], a
    ld a, [$c234]
    ldh [$ed], a
    ld a, [$c235]
    ldh [$ee], a
    xor a
    ld [$cc36], a
    ld a, $01
    ld [$d05a], a
    ld a, $05
    ld [$d127], a
    ld a, $70
    ld [$d059], a
    ld a, $02
    ld [$d5f4], a
    ret


    ldh a, [$eb]
    ld [$c134], a
    ldh a, [$ec]
    ld [$c136], a
    ldh a, [$ed]
    ld [$c234], a
    ldh a, [$ee]
    ld [$c235], a
    call Call_000_2429
    call Call_000_3dd7
    xor a
    ld [$cd6b], a
    ld a, $0f
    ldh [$8c], a
    call Call_000_2920
    xor a
    ld [$d05a], a
    ld [$cd6b], a
    ld a, $00
    ld [$d5f4], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3dd7
    ld a, $00
    ld [$d5f4], a
    ret


Call_006_50cf:
    call Call_000_3486
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    xor a
    ld [$c109], a
    ld [$cd6b], a
    ret


    ld [bc], a
    ld d, c
    rlca
    ld d, c
    inc l
    ld d, c
    ld e, h
    ld d, c
    ld a, a
    ld d, c
    sub [hl]
    ld d, c
    rst $18
    ld d, c
    ld e, $52
    inc hl
    ld d, d
    jr z, jr_006_514a

    ld [$ef24], a
    inc h
    dec l
    ld d, d
    ld [hl-], a
    ld d, d
    add hl, de
    ld d, d
    rla
    call z, Call_000_2943
    ld d, b
    ld [$56fa], sp
    db $d3
    cp $7f
    ld hl, $5127
    jr z, jr_006_511c

    ld a, [$d751]
    bit 1, a
    jr nz, jr_006_511c

    ld hl, $5122

jr_006_511c:
    call Call_000_3c49
    jp Jump_000_24d7


    rla
    scf
    ld b, h
    add hl, hl
    ld d, b
    rla
    ld [hl], h
    ld b, h
    add hl, hl
    ld d, b
    ld [$4d21], sp
    ld d, c
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_006_5144

    ld hl, $5157
    call Call_000_3c49
    jr jr_006_514a

jr_006_5144:
    ld hl, $5152
    call Call_000_3c49

jr_006_514a:
    jp Jump_000_24d7


    rla
    sub h
    ld b, h
    add hl, hl
    ld d, b
    rla
    call Call_000_2944
    ld d, b
    rla
    db $db
    ld b, h
    add hl, hl
    ld d, b
    ld [$4bfa], sp
    rst $10
    bit 5, a
    jr nz, jr_006_516c

    ld hl, $5175
    call Call_000_3c49
    jr jr_006_5172

jr_006_516c:
    ld hl, $517a
    call Call_000_3c49

jr_006_5172:
    jp Jump_000_24d7


    rla
    dec h
    ld b, l
    add hl, hl
    ld d, b
    rla
    ld h, b
    ld b, l
    add hl, hl
    ld d, b
    ld [$9121], sp
    ld d, c
    call Call_000_3c49
    call Call_006_50cf
    ld a, $03
    ld [$d5f4], a
    jp Jump_000_24d7


    rla
    or l
    ld b, l
    add hl, hl
    ld d, b
    ld [$4cfa], sp
    rst $10
    bit 1, a
    jr nz, jr_006_51c1

    ld hl, $51ca
    call Call_000_3c49
    ld bc, $f201
    call Call_000_3e2e
    jr nc, jr_006_51b9

    ld hl, $51cf
    call Call_000_3c49
    ld hl, $d74c
    set 1, [hl]
    jr jr_006_51c7

jr_006_51b9:
    ld hl, $51da
    call Call_000_3c49
    jr jr_006_51c7

jr_006_51c1:
    ld hl, $51d5
    call Call_000_3c49

jr_006_51c7:
    jp Jump_000_24d7


    rla
    ld [$2945], a
    ld d, b
    rla
    sbc d
    ld b, [hl]
    add hl, hl
    db $10
    ld d, b
    rla
    xor l
    ld b, [hl]
    add hl, hl
    ld d, b
    rla
    rst $10
    ld b, [hl]
    add hl, hl
    ld d, b
    ld [$0a21], sp
    ld d, d
    call Call_000_3c49
    ld c, $02
    call Call_000_3739
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr z, jr_006_5201

    ld hl, $520f
    call Call_000_3c49
    ld a, $01
    ld [$d5f4], a
    jr jr_006_5207

jr_006_5201:
    ld hl, $5214
    call Call_000_3c49

jr_006_5207:
    jp Jump_000_24d7


    rla
    ld sp, hl
    ld b, [hl]
    add hl, hl
    ld d, b
    rla
    ld d, h
    ld b, a
    add hl, hl
    ld d, b
    rla
    and $47
    add hl, hl
    ld d, b
    rla
    rlca
    ld c, b
    add hl, hl
    ld d, b
    rla
    inc sp
    ld c, b
    add hl, hl
    ld d, b
    rla
    ld h, b
    ld c, b
    add hl, hl
    ld d, b
    rla
    jp Jump_000_2948


    ld d, b
    rla
    ld c, c
    ld c, c
    add hl, hl
    ld d, b
    rla
    ld h, c
    ld c, c
    add hl, hl
    ld d, b
    call Call_000_3c3c
    ld hl, $5243
    ld a, [$d5f7]
    jp Jump_000_3d97


    ld d, c
    ld d, d
    add b
    ld d, d
    db $d3
    ld d, d
    jp hl


    ld d, d
    dec b
    ld d, e
    ld e, c
    ld d, e
    ld l, a
    ld d, e
    xor a
    ld [$d619], a
    ld hl, $d754
    res 0, [hl]
    call Call_006_525e
    ret


Call_006_525e:
    ld a, [$d755]
    bit 7, a
    ret nz

    ld hl, $5277
    call Call_000_34bf
    ret nc

    ld a, $f0
    ld [$cd6b], a
    ld a, $05
    ldh [$8c], a
    jp Jump_000_2920


    ld de, $1123
    inc h
    ld [de], a
    dec h
    inc de
    dec h
    rst $38
    ld a, [$cc57]
    and a
    ret nz

    ld a, $03
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_34a6
    ld a, $34
    ldh [$8d], a
    call Call_000_34b9
    call Call_000_2307
    ld hl, $cd60
    set 4, [hl]
    ld a, $0d
    ldh [$8c], a
    call Call_000_2920
    ld a, $3c
    ldh [$eb], a
    ld a, $30
    ldh [$ec], a
    ld a, $0c
    ldh [$ed], a
    ld a, $11
    ldh [$ee], a
    ld a, $03
    ld [$cf13], a
    call Call_000_32f9
    ld a, $03
    ldh [$8c], a
    ld de, $52ce
    call Call_000_363a
    ld a, $02
    ld [$d5f7], a
    ret


    nop
    nop
    nop
    nop
    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $03
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $03
    ld [$d5f7], a
    ret


    ld a, $03
    ld [$cf13], a
    call Call_000_32fe
    ld a, $03
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d5f7], a
    ret


    ld a, [$cc57]
    and a
    ret nz

    ld a, $05
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call Call_000_34a6
    ld a, $18
    ldh [$8d], a
    call Call_000_34b9
    call Call_000_2307
    ld hl, $cd60
    set 4, [hl]
    ld a, $0e
    ldh [$8c], a
    call Call_000_2920
    ld a, $3c
    ldh [$eb], a
    ld a, $40
    ldh [$ec], a
    ld a, $16
    ldh [$ed], a
    ld a, $10
    ldh [$ee], a
    ld a, $05
    ld [$cf13], a
    call Call_000_32f9
    ld a, $05
    ldh [$8c], a
    ld de, $5353
    call Call_000_363a
    ld a, $05
    ld [$d5f7], a
    ret


    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $04
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld a, $06
    ld [$d5f7], a
    ret


    ld a, $05
    ld [$cf13], a
    call Call_000_32fe
    ld a, $04
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d5f7], a
    ret


    and a
    ld d, e
    xor h
    ld d, e
    or c
    ld d, e
    dec b
    ld d, h
    ld [hl], $54
    ld h, a
    ld d, h
    ld l, h
    ld d, h
    ld [$ef24], a
    inc h
    ld [hl], c
    ld d, h
    db $76
    ld d, h
    ld a, e
    ld d, h
    nop
    ld d, h
    ld h, d
    ld d, h
    rla
    ld a, a
    ld c, c
    add hl, hl
    ld d, b
    rla
    ldh [rOBP1], a
    add hl, hl
    ld d, b
    ld [$f121], sp
    ld d, e
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    and a
    jr nz, jr_006_53c9

    ld hl, $53f6
    call Call_000_3c49
    jr jr_006_53ee

jr_006_53c9:
    ld hl, $53fb
    call Call_000_3c49
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$cf10], a
    ld a, $02
    ld [$cc57], a
    ldh a, [$b8]
    ld [$cc58], a
    ld a, $03
    ld [$cf13], a
    call Call_000_32f4
    ld a, $01
    ld [$d5f7], a

jr_006_53ee:
    jp Jump_000_24d7


    rla
    ld d, [hl]
    ld c, d
    add hl, hl
    ld d, b
    rla
    ld [hl], l
    ld c, d
    add hl, hl
    ld d, b
    rla
    and d
    ld c, d
    add hl, hl
    ld d, b
    rla
    add $4a
    add hl, hl
    ld d, b
    ld [$2721], sp
    ld d, h
    call Call_000_3c49
    call Call_000_35ec
    ld a, [$cc26]
    cp $00
    jr nz, jr_006_541e

    ld hl, $542c
    call Call_000_3c49
    jr jr_006_5424

jr_006_541e:
    ld hl, $5431
    call Call_000_3c49

jr_006_5424:
    jp Jump_000_24d7


    rla
    inc d
    ld c, e
    add hl, hl
    ld d, b
    rla
    jr c, jr_006_547a

    add hl, hl
    ld d, b
    rla
    ld d, l
    ld c, e
    add hl, hl
    ld d, b
    ld [$5d21], sp
    ld d, h
    call Call_000_3c49
    xor a
    ldh [$b4], a
    ld [$cf10], a
    ld a, $03
    ld [$cc57], a
    ldh a, [$b8]
    ld [$cc58], a
    ld a, $05
    ld [$cf13], a
    call Call_000_32f4
    ld a, $04
    ld [$d5f7], a
    jp Jump_000_24d7


    rla
    add a
    ld c, e
    add hl, hl
    ld d, b
    rla
    adc $4b
    add hl, hl
    ld d, b
    rla
    cp $4b
    add hl, hl
    ld d, b
    rla
    ld c, d
    ld c, h
    add hl, hl
    ld d, b
    rla
    or c
    ld c, h
    add hl, hl
    ld d, b
    rla
    bit 1, h
    add hl, hl

jr_006_547a:
    ld d, b
    rla
    inc c
    ld c, l
    add hl, hl
    ld d, b
    call Call_000_3c3c
    ld hl, $549d
    ld a, [$d60f]
    jp Jump_000_3d97


Jump_006_548c:
    xor a
    ld [$cd6b], a
    ld [$d60f], a
    ld a, $05
    ld [$cc4d], a
    ld a, $11
    jp Jump_000_3e6d


    ret z

    ld d, h
    ld h, a
    ld d, l
    or c
    ld d, l
    db $10
    ld d, [hl]
    and a
    ld d, h
    ld a, [$d057]
    cp $ff
    jp z, Jump_006_548c

    ld a, $f0
    ld [$cd6b], a
    ld hl, $d75b
    set 7, [hl]
    ld a, $02
    ldh [$8c], a
    call Call_000_2920
    xor a
    ld [$cd6b], a
    ld [$d60f], a
    ret


    ld a, [$d75b]
    bit 7, a
    jr nz, jr_006_54f7

    ld hl, $554f
    call Call_000_34bf
    jr nc, jr_006_54f7

    ld a, [$cd3d]
    cp $01
    ld a, $08
    ld b, $00
    jr nz, jr_006_54e6

    ld a, $04
    ld b, $04

jr_006_54e6:
    ld [$d528], a
    ld a, b
    ld [$c129], a
    call Call_000_3dd7
    ld a, $02
    ldh [$8c], a
    jp Jump_000_2920


jr_006_54f7:
    ld a, [$d75a]
    bit 0, a
    ret nz

    ld hl, $5554
    call Call_000_34bf
    ret nc

    ld a, [$d700]
    and a
    jr z, jr_006_5512

    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1

jr_006_5512:
    ld c, $02
    ld a, $de
    call Call_000_23a1
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, [$d362]
    cp $14
    jr z, jr_006_5535

    ld a, $01
    ldh [$8c], a
    ld a, $05
    ldh [$8b], a
    call Call_000_3500
    ld [hl], $19

jr_006_5535:
    ld a, $05
    ld [$cc4d], a
    ld a, $15
    call Call_000_3e6d
    ld de, $5559
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $01
    ld [$d60f], a
    ret


    rlca
    ld e, $09
    ld e, $ff
    ld b, $14
    ld b, $15
    rst $38
    nop
    nop
    nop
    rst $38

Call_006_555d:
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    jp Jump_000_34a6


    ld a, [$d730]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $566d
    ld de, $5672
    call Call_000_3354
    ld a, $e1
    ld [$d059], a
    ld a, [$d715]
    cp $b1
    jr nz, jr_006_5598

    ld a, $07
    jr jr_006_55a2

jr_006_5598:
    cp $99
    jr nz, jr_006_55a0

    ld a, $08
    jr jr_006_55a2

jr_006_55a0:
    ld a, $09

jr_006_55a2:
    ld [$d05d], a
    xor a
    ldh [$b4], a
    call Call_006_555d
    ld a, $02
    ld [$d60f], a
    ret


    ld a, [$d057]
    cp $ff
    jp z, Jump_006_548c

    call Call_006_555d
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d75a
    set 0, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2920
    ld a, $ff
    ld [$c0ee], a
    call Call_000_23b1
    ld b, $02
    ld hl, $5b47
    call Call_000_35d6
    ld a, $01
    ldh [$8c], a
    call Call_000_3541
    ld a, [$d362]
    cp $14
    jr nz, jr_006_55f0

    ld de, $5608
    jr jr_006_55f3

jr_006_55f0:
    ld de, $5600

jr_006_55f3:
    ld a, $01
    ldh [$8c], a
    call Call_000_363a
    ld a, $03
    ld [$d60f], a
    ret


    add b
    nop
    nop
    nop
    nop
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
    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, $05
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    xor a
    ld [$cd6b], a
    call Call_000_2307
    ld a, $00
    ld [$d60f], a
    ret


    ld c, a
    ld d, [hl]
    ld a, h
    ld d, [hl]
    ld hl, sp+$56
    db $fd
    ld d, [hl]
    ld [bc], a
    ld d, a
    rlca
    ld d, a
    inc c
    ld d, a
    ccf
    ld d, a
    add e
    ld d, a
    adc b
    ld d, a
    rlca
    ld d, a
    adc l
    ld d, a
    sub d
    ld d, a
    ld [$ef24], a
    inc h
    sub a
    ld d, a
    sbc h
    ld d, a
    ld [$5afa], sp
    rst $10
    bit 0, a
    jr z, jr_006_565f

    ld hl, $5677
    call Call_000_3c49
    jr jr_006_5665

jr_006_565f:
    ld hl, $5668
    call Call_000_3c49

jr_006_5665:
    jp Jump_000_24d7


    rla
    dec hl
    ld c, l
    add hl, hl
    ld d, b
    rla
    cp [hl]
    ld c, l
    add hl, hl
    ld d, b
    rla
    db $e3
    ld c, l
    add hl, hl
    ld d, b
    rla
    rlca
    ld c, [hl]
    add hl, hl
    ld d, b
    ld [$5bfa], sp
    rst $10
    bit 7, a
    jr nz, jr_006_56ad

    ld hl, $56d9
    call Call_000_3c49
    ld hl, $d72d
    set 6, [hl]
    set 7, [hl]
    ld hl, $56ee
    ld de, $56ee
    call Call_000_3354
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_336a
    call Call_000_32d7
    ld a, $04
    ld [$d60f], a
    jp Jump_000_24d7


jr_006_56ad:
    ld hl, $56f3
    call Call_000_3c49
    ld bc, $e401
    call Call_000_3e2e
    jr c, jr_006_56c3

    ld hl, $56e9
    call Call_000_3c49
    jr jr_006_56d6

jr_006_56c3:
    ld a, $01
    ld [$cc3c], a
    ld hl, $56de
    call Call_000_3c49
    ld b, $1d
    ld hl, $4872
    call Call_000_35d6

jr_006_56d6:
    jp Jump_000_24d7


    rla
    daa
    ld c, a
    add hl, hl
    ld d, b
    rla
    add d
    ld c, a
    add hl, hl
    dec bc
    rla
    sub [hl]
    ld c, a
    add hl, hl
    dec c
    ld d, b
    rla
    or e
    ld c, a
    add hl, hl
    ld d, b
    rla
    db $eb
    ld c, a
    add hl, hl
    ld d, b
    rla
    db $10
    ld d, b
    add hl, hl
    ld d, b
    rla
    jr nc, @+$52

    add hl, hl
    ld d, b
    rla
    ld l, [hl]
    ld d, b
    add hl, hl
    ld d, b
    rla
    cp d
    ld d, b
    add hl, hl
    ld d, b
    rla
    or $50
    add hl, hl
    ld d, b
    ld [$d3f0], sp
    cp $b4
    jr c, jr_006_571b

    ld hl, $5730
    call Call_000_3c49
    jr jr_006_572d

jr_006_571b:
    cp $64
    jr c, jr_006_5727

    ld hl, $5735
    call Call_000_3c49
    jr jr_006_572d

jr_006_5727:
    ld hl, $573a
    call Call_000_3c49

jr_006_572d:
    jp Jump_000_24d7


    rla
    adc b
    ld d, c
    add hl, hl
    ld d, b
    rla
    push bc
    ld d, c
    add hl, hl
    ld d, b
    rla
    db $ec
    ld d, c
    add hl, hl
    ld d, b
    ld [$d3f0], sp
    cp $b4
    jr c, jr_006_574e

    ld hl, $576f
    call Call_000_3c49
    jr jr_006_576c

jr_006_574e:
    cp $78
    jr c, jr_006_575a

    ld hl, $5774
    call Call_000_3c49
    jr jr_006_576c

jr_006_575a:
    cp $3c
    jr c, jr_006_5766

    ld hl, $5779
    call Call_000_3c49
    jr jr_006_576c

jr_006_5766:
    ld hl, $577e
    call Call_000_3c49

jr_006_576c:
    jp Jump_000_24d7


    rla
    ld l, e
    ld d, d
    add hl, hl
    ld d, b
    rla
    add l
    ld d, d
    add hl, hl
    ld d, b
    rla
    and e
    ld d, d
    add hl, hl
    ld d, b
    rla
    cp e
    ld d, d
    add hl, hl
    ld d, b
    rla
    sub $52
    add hl, hl
    ld d, b
    rla
    rra
    ld d, e
    add hl, hl
    ld d, b
    rla
    sbc d
    ld d, e
    add hl, hl
    ld d, b
    rla
    adc $53
    add hl, hl
    ld d, b
    rla
    ld a, [de]
    ld d, h
    add hl, hl
    ld d, b
    rla
    ld b, l
    ld d, h
    add hl, hl
    ld d, b
    call Call_000_3c3c
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    push hl
    call nz, Call_006_57cb
    pop hl
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_006_57c0
    ld hl, $57dc
    ld a, [$d62a]
    jp Jump_000_3d97


Call_006_57c0:
    call Call_000_3e5c
    ldh a, [$d4]
    and $0e
    ld [$d743], a
    ret


Call_006_57cb:
    ld hl, $d803
    bit 2, [hl]
    ret z

    bit 3, [hl]
    set 3, [hl]
    ret nz

    ld a, $02
    ld [$d62a], a
    ret


    and $57
    ld e, a
    ld e, b
    inc sp
    ld e, b
    ld c, [hl]
    ld e, b
    ld h, $58
    ld a, [$c109]
    and a
    ret nz

    ld hl, $5823
    call Call_000_34bf
    ret nc

    xor a
    ldh [$b4], a
    ld [$cf0d], a
    ld a, $03
    ldh [$8c], a
    call Call_000_2920
    ld a, [$d803]
    bit 2, a
    jr nz, jr_006_5810

    ld b, $3f
    ld a, $1c
    call Call_000_3e6d
    ld a, b
    and a
    ret nz

jr_006_5810:
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3486
    ld a, $01
    ld [$d62a], a
    ret


    ld e, $12
    rst $38
    ld hl, $5823
    call Call_000_34bf
    ret c

    ld a, $00
    ld [$d62a], a
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, $40
    ld [$ccd3], a
    ld [$ccd4], a
    ld a, $02
    ld [$cd38], a
    call Call_000_3486
    ld a, $03
    ld [$d62a], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ldh [$b4], a
    ld a, $00
    ld [$d62a], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    ld c, $0a
    call Call_000_3739
    ld a, $00
    ld [$d62a], a
    ret


    adc c
    ld e, b
    adc [hl]
    ld e, b
    or c
    ld e, b
    dec e
    ld e, c
    ld [hl+], a
    ld e, c
    jr c, @+$5b

    dec a
    ld e, c
    ld b, d
    ld e, c
    ld [$ef24], a
    inc h
    ld b, a
    ld e, c
    ld c, h
    ld e, c
    ld d, c
    ld e, c
    rla
    ld l, b
    ld d, [hl]
    add hl, hl
    ld d, b
    ld [$03fa], sp
    ret c

    bit 2, a
    jr nz, jr_006_589e

    ld hl, $58a7
    call Call_000_3c49
    jr jr_006_58a4

jr_006_589e:
    ld hl, $58ac
    call Call_000_3c49

jr_006_58a4:
    jp Jump_000_24d7


    rla
    or l
    ld d, [hl]
    add hl, hl
    ld d, b
    rla
    ld [c], a
    ld d, [hl]
    add hl, hl
    ld d, b
    ld [$03fa], sp
    ret c

    bit 2, a
    jr nz, jr_006_58f6

    ld a, [$c109]
    cp $0c
    jr z, jr_006_58c8

    ld hl, $58ff
    call Call_000_34bf
    jr nc, jr_006_58d0

jr_006_58c8:
    ld hl, $5904
    call Call_000_3c49
    jr jr_006_58fc

jr_006_58d0:
    ld hl, $5909
    call Call_000_3c49
    ld b, $3f
    ld a, $1c
    call Call_000_3e6d
    ld a, b
    and a
    jr nz, jr_006_58e9

    ld hl, $5913
    call Call_000_3c49
    jr jr_006_58fc

jr_006_58e9:
    ld hl, $590e
    call Call_000_3c49
    ld a, $04
    ld [$d62a], a
    jr jr_006_58fc

jr_006_58f6:
    ld hl, $5918
    call Call_000_3c49

jr_006_58fc:
    jp Jump_000_24d7


    dec e
    inc de
    rra
    inc de
    rst $38
    rla
    dec e
    ld d, a
    add hl, hl
    ld d, b
    rla
    inc [hl]
    ld d, a
    add hl, hl
    ld d, b
    rla
    ld l, h
    ld d, a
    add hl, hl
    ld d, b
    rla
    and e
    ld d, a
    add hl, hl
    ld d, b
    rla
    pop af
    ld d, a
    add hl, hl
    ld d, b
    rla
    dec b
    ld e, b
    add hl, hl
    ld d, b
    rla
    ld d, d
    ld e, b
    add hl, hl
    ld [$6a3e], sp
    call Call_000_13d0
    call Call_000_3748
    ld hl, $5933
    ret


    rla
    ld l, e
    ld e, b
    add hl, hl
    ld d, b
    rla
    sub c
    ld e, b
    add hl, hl
    ld d, b
    rla
    db $db
    ld e, b
    add hl, hl
    ld d, b
    rla
    add hl, bc
    ld e, c
    add hl, hl
    ld d, b
    rla
    add b
    ld e, c
    add hl, hl
    ld d, b
    rla
    and [hl]
    ld e, c
    add hl, hl
    ld d, b
    rla
    jp hl


    ld e, c
    add hl, hl
    ld d, b
    call Call_000_3c3c
    ld hl, $d77e
    res 0, [hl]
    res 7, [hl]
    ld hl, $d816
    res 7, [hl]
    ret


    adc d
    ld e, c
    adc a
    ld e, c
    sub h
    ld e, c
    sbc c
    ld e, c
    sbc [hl]
    ld e, c
    rst $20
    ld e, c
    db $ec
    ld e, c
    ld sp, hl
    ld e, c
    cp $59
    inc bc
    ld e, d
    ld [$ef5a], sp
    inc h
    dec c
    ld e, d
    ld [de], a
    ld e, d
    rla
    ld e, d
    inc e
    ld e, d
    ld hl, $265a
    ld e, d
    rla
    ei
    ld e, c
    add hl, hl
    ld d, b
    rla
    ld c, e
    ld e, d
    add hl, hl
    ld d, b
    rla
    ld a, c
    ld e, d
    add hl, hl
    ld d, b
    rla
    and [hl]
    ld e, d
    add hl, hl
    ld d, b
    ld [$77fa], sp
    rst $10
    bit 0, a
    jr nz, jr_006_59c9

    ld hl, $59d2
    call Call_000_3c49
    ld bc, $f101
    call Call_000_3e2e
    jr c, jr_006_59bc

    ld hl, $59e2
    call Call_000_3c49
    jr jr_006_59cf

jr_006_59bc:
    ld hl, $59d7
    call Call_000_3c49
    ld hl, $d777
    set 0, [hl]
    jr jr_006_59cf

jr_006_59c9:
    ld hl, $59dd
    call Call_000_3c49

jr_006_59cf:
    jp Jump_000_24d7


    rla
    db $fd
    ld e, d
    add hl, hl
    ld d, b
    rla
    ld e, d
    ld e, e
    add hl, hl
    dec bc
    ld d, b
    rla
    ld l, [hl]
    ld e, e
    add hl, hl
    ld d, b
    rla
    cp b
    ld e, e
    add hl, hl
    ld d, b
    rla
    reti


    ld e, e
    add hl, hl
    ld d, b
    rla
    jr nc, jr_006_5a4b

    add hl, hl
    ld [$6f3e], sp
    call Call_000_13d0
    jp Jump_000_24d7


    rla
    ld c, c
    ld e, h
    add hl, hl
    ld d, b
    rla
    ld h, e
    ld e, h
    add hl, hl
    ld d, b
    rla
    add d
    ld e, h
    add hl, hl
    ld d, b
    rla
    jr jr_006_5a68

    add hl, hl
    ld d, b
    rla
    ld b, c
    ld e, l
    add hl, hl
    ld d, b
    rla
    add d
    ld e, l
    add hl, hl
    ld d, b
    rla
    sub e
    ld e, l
    add hl, hl
    ld d, b
    rla
    cp a
    ld e, l
    add hl, hl
    ld d, b
    rla
    ld a, $5e
    add hl, hl
    ld d, b
    rla
    ld l, d
    ld e, [hl]
    add hl, hl
    ld d, b
    jp Jump_000_3c3c


    ld e, [hl]
    ld e, d
    ld h, e
    ld e, d
    ld l, b
    ld e, d
    ld l, l
    ld e, d
    ld [hl], d
    ld e, d
    ld [hl], d
    ld e, d
    ld [hl], d
    ld e, d
    ld [hl], d
    ld e, d
    ld [hl], d
    ld e, d
    ld [hl], d
    ld e, d
    ld [hl], a
    ld e, d
    ld [hl], a
    ld e, d
    ld a, h
    ld e, d
    ld [$ef24], a

jr_006_5a4b:
    inc h
    add c
    ld e, d
    add [hl]
    ld e, d
    adc e
    ld e, d
    sub b
    ld e, d
    and h
    ld e, d
    cp b
    ld e, d
    call z, $e05a
    ld e, d
    db $f4
    ld e, d
    rla
    sbc h
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    sbc $5e
    add hl, hl
    ld d, b

jr_006_5a68:
    rla
    ld a, $5f
    add hl, hl
    ld d, b
    rla
    ld l, e
    ld e, a
    add hl, hl
    ld d, b
    rla
    sub [hl]
    ld e, a
    add hl, hl
    ld d, b
    rla
    sbc c
    ld e, a
    add hl, hl
    ld d, b
    rla
    pop bc
    ld e, a
    add hl, hl
    ld d, b
    rla
    call c, $295f
    ld d, b
    rla
    or $5f
    add hl, hl
    ld d, b
    rla
    ld de, $2960
    ld d, b
    ld [$9f21], sp
    ld e, d
    call Call_000_3c49
    ld a, $28
    call Call_000_349b
    jp Jump_000_24d7


    rla
    ld d, b
    ld h, b
    add hl, hl
    ld d, b
    ld [$b321], sp
    ld e, d
    call Call_000_3c49
    ld a, $06
    call Call_000_349b
    jp Jump_000_24d7


    rla
    add c
    ld h, b
    add hl, hl
    ld d, b
    ld [$c721], sp
    ld e, d
    call Call_000_3c49
    ld a, $02
    call Call_000_349b
    jp Jump_000_24d7


    rla
    xor h
    ld h, b
    add hl, hl
    ld d, b
    ld [$db21], sp
    ld e, d
    call Call_000_3c49
    ld a, $25
    call Call_000_349b
    jp Jump_000_24d7


    rla
    db $fd
    ld h, b
    add hl, hl
    ld d, b
    ld [$ef21], sp
    ld e, d
    call Call_000_3c49
    ld a, $13
    call Call_000_349b
    jp Jump_000_24d7


    rla
    inc l
    ld h, c
    add hl, hl
    ld d, b
    ld [$f6fa], sp
    rst $10
    bit 6, a
    jr nz, jr_006_5b08

    bit 7, a
    jr nz, jr_006_5b12

    ld hl, $5b2a
    call Call_000_3c49
    jr jr_006_5b1d

jr_006_5b08:
    ld hl, $5b20
    call Call_000_3c49
    ld a, $62
    jr jr_006_5b1a

jr_006_5b12:
    ld hl, $5b25
    call Call_000_3c49
    ld a, $5a

jr_006_5b1a:
    call Call_000_349b

jr_006_5b1d:
    jp Jump_000_24d7


    rla
    ld d, a
    ld h, c
    add hl, hl
    ld d, b
    rla
    sub c
    ld h, c
    add hl, hl
    ld d, b
    rla
    jp z, $2961

    ld d, b
    ld [$0404], sp
    or $5b
    ld d, a
    ld e, e
    dec sp
    ld e, e
    nop
    adc $5b
    call Call_000_3c3c
    ld hl, $5b47
    ld a, [$d5f3]
    jp Jump_000_3d97


    ld c, e
    ld e, e
    ld d, [hl]
    ld e, e
    ld hl, $d74a
    set 1, [hl]
    ld a, $01
    ld [$d5f3], a
    ret


    ret


    ld e, l
    ld e, e
    call nz, $c95b
    ld e, e
    ld [$4afa], sp
    rst $10
    bit 0, a
    jr nz, jr_006_5b99

    ld a, [$d74b]
    bit 5, a
    jr nz, jr_006_5b74

    ld hl, $5baa
    call Call_000_3c49
    jr jr_006_5ba7

jr_006_5b74:
    ld hl, $5baf
    call Call_000_3c49
    ld bc, $0501
    call Call_000_3e2e
    jr nc, jr_006_5ba1

    ld a, $29
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $5bb4
    call Call_000_3c49
    ld hl, $d74a
    set 0, [hl]
    jr jr_006_5ba7

jr_006_5b99:
    ld hl, $5bbf
    call Call_000_3c49
    jr jr_006_5ba7

jr_006_5ba1:
    ld hl, $5bba
    call Call_000_3c49

jr_006_5ba7:
    jp Jump_000_24d7


    rla
    inc a
    ld c, h
    dec h
    ld d, b
    rla
    ld e, l
    ld c, h
    dec h
    ld d, b
    rla
    sbc h
    ld c, h
    dec h
    ld de, $1750
    xor l
    ld c, h
    dec h
    ld d, b
    rla
    ret nc

    ld c, h
    dec h
    ld d, b
    rla
    db $fd
    ld c, h
    dec h
    ld d, b
    rla
    dec sp
    ld c, l
    dec h
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    inc bc
    ld de, $0607
    rst $38
    db $d3
    ld bc, $0811
    ld a, [bc]
    cp $01
    add d
    nop
    ld b, c
    rlca
    rlca
    rst $38
    rst $38
    add e
    nop
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
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
    ld [$0404], sp
    ccf
    ld e, h
    dec d
    ld e, h
    ld [de], a
    ld e, h
    nop
    dec h
    ld e, h
    jp Jump_000_3c3c


    rla
    ld e, h
    ld [$043e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3e6d
    jp Jump_000_24d7


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
    ld bc, $0908
    rlca
    rst $38
    pop de
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
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
    ld [bc], a
    ld b, $08
    rst $08
    ld e, h
    ld a, a
    ld e, h
    ld e, e
    ld e, h
    nop
    sub l
    ld e, h
    call Call_000_22fa
    call Call_000_3c3c
    ld hl, $d126
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $d869
    res 7, [hl]
    ld hl, $d734
    bit 1, [hl]
    res 1, [hl]
    ret z

    ld hl, $d863
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    adc c
    ld e, h
    adc d
    ld e, h
    adc a
    ld e, h
    call z, $9424
    ld e, h
    rst $38
    rla
    ldh a, [rHDMA3]
    jr z, jr_006_5cdf

    rla
    adc e
    ld d, h
    jr z, @+$52

    or $00
    inc bc
    dec bc
    rlca
    nop
    rst $38
    dec bc
    ld [$ff01], sp
    nop
    ld [$f500], sp
    nop
    dec b
    add hl, hl
    add hl, bc
    dec bc
    rst $38
    ret nc

    ld bc, $0d24
    ld [$d3ff], sp
    ld [bc], a
    ld b, $05
    add hl, bc
    rst $38
    ret nc

    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    inc b
    ld a, [hl+]
    ld a, [bc]
    ld de, $d0ff
    dec b
    ld b, b
    rst $00
    dec bc
    rlca
    ld b, c
    rst $00
    dec bc
    ld [$c6fb], sp
    nop
    ld [$1213], sp
    inc c
    inc c
    dec c
    nop
    nop
    nop
    ld d, $0f
    ld e, $1f
    rra
    inc h
    inc h
    inc h

jr_006_5cdf:
    jr jr_006_5cf0

    jr nz, jr_006_5cf3

    ld bc, $0d02
    dec c
    rla
    rrca
    ld hl, $0504
    rlca
    ld [hl+], a
    inc hl
    dec e

jr_006_5cf0:
    dec e
    rrca
    rrca

jr_006_5cf3:
    rrca
    rrca
    rrca
    dec de
    add hl, de
    rrca
    rrca
    ld a, [bc]
    dec bc
    rrca
    ld c, $0e
    ld d, $09
    rrca
    and h
    ld e, [hl]
    and b
    ld e, l
    dec bc
    ld e, l
    nop
    dec [hl]
    ld e, [hl]
    call Call_006_5d21
    call Call_000_3c3c
    ld hl, $5dae
    ld de, $5d9a
    ld a, [$d645]
    call Call_000_3160
    ld [$d645], a
    ret


Call_006_5d21:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5d58
    call Call_006_5d5d
    call Call_006_5d89
    ld a, [$d82a]
    bit 0, a
    jr nz, jr_006_5d48

    push af
    ld a, $54
    ld [$d09f], a
    ld bc, $0602
    ld a, $17
    call Call_000_3e6d
    pop af

jr_006_5d48:
    bit 1, a
    ret nz

    ld a, $54
    ld [$d09f], a
    ld bc, $0406
    ld a, $17
    jp Jump_000_3e6d


    ld b, $02
    inc b
    ld b, $ff

Call_006_5d5d:
    push hl
    ld hl, $d73f
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_006_5d69:
    ld a, [hl+]
    cp $ff
    jr z, jr_006_5d85

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_006_5d7a

    inc hl
    jr jr_006_5d69

jr_006_5d7a:
    ld a, [hl+]
    cp c
    jr nz, jr_006_5d69

    ld hl, $d73f
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_006_5d85:
    xor a
    ldh [$e0], a
    ret


Call_006_5d89:
    ld hl, $d82a
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_006_5d97

    set 0, [hl]
    ret


jr_006_5d97:
    set 1, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    db $d3
    ld e, l
    ld [$035d], a
    ld e, [hl]
    inc e
    ld e, [hl]
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld [bc], a
    ld b, b
    add hl, hl
    ret c

    db $f4
    ld e, l
    cp $5d
    ld sp, hl
    ld e, l
    ld sp, hl
    ld e, l
    inc bc
    jr nc, jr_006_5de6

    ret c

    dec c
    ld e, [hl]
    rla
    ld e, [hl]
    ld [de], a
    ld e, [hl]
    ld [de], a
    ld e, [hl]
    inc b
    ld b, b
    add hl, hl
    ret c

    ld h, $5e
    jr nc, jr_006_5e2c

    dec hl
    ld e, [hl]
    dec hl
    ld e, [hl]
    rst $38
    ld [$e021], sp
    ld e, l
    ld de, $5de5
    call Call_006_622f
    jp Jump_000_24d7


    rla
    db $e4
    ld h, a
    jr nz, jr_006_5e35

    rla

jr_006_5de6:
    inc bc
    ld l, b
    jr nz, jr_006_5e3a

    ld [$ae21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, $68
    jr nz, jr_006_5e49

    rla
    ld c, e
    ld l, b
    jr nz, jr_006_5e4e

    rla
    ld d, e
    ld l, b
    jr nz, @+$52

    ld [$ba21], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    add d
    ld l, b
    jr nz, @+$52

    rla
    and d
    ld l, b
    jr nz, jr_006_5e67

    rla
    cp b
    ld l, b
    jr nz, @+$52

    ld [$c621], sp
    ld e, l
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    push af
    ld l, b
    jr nz, jr_006_5e7b

    rla

jr_006_5e2c:
    ld [$2069], sp
    ld d, b
    rla
    ld d, $69
    jr nz, jr_006_5e85

jr_006_5e35:
    ld l, $07
    nop
    jr jr_006_5e3b

jr_006_5e3a:
    ret nc

jr_006_5e3b:
    nop
    ld a, [de]
    ld bc, $00d2
    inc d
    nop
    db $ec
    rlca
    dec bc
    inc bc
    ld [$1103], a

jr_006_5e49:
    inc bc
    db $d3
    rrca
    inc bc
    inc b

jr_006_5e4e:
    ld [$110b], a
    dec b
    ld [$0700], a
    inc l
    ld b, $0a
    rst $38
    rst $38
    ld bc, $1218
    dec c
    rst $38
    db $d3
    ld b, d
    and $1a
    jr nz, jr_006_5e6f

    ld [de], a
    rst $38

jr_006_5e67:
    jp nc, $e443

    dec b
    jr jr_006_5e7b

    ld e, $ff

jr_006_5e6f:
    pop de
    ld b, h
    and $1b
    dec a
    dec c
    rlca
    rst $38
    rst $38
    add l
    inc [hl]
    dec a

jr_006_5e7b:
    dec bc
    ld [$ffff], sp
    add [hl]
    ld [hl], $3d
    inc c
    add hl, bc
    rst $38

jr_006_5e85:
    rst $38
    add a
    dec e
    ld a, [bc]
    rst $00
    nop
    jr jr_006_5e98

    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    ld b, d
    rst $00
    rlca
    dec bc

jr_006_5e98:
    dec de
    rst $00
    inc bc
    ld de, $c792
    rrca
    inc bc
    ld l, a
    rst $00
    dec bc
    ld de, $3d3c
    dec a
    dec a
    ld a, $61
    ld h, c
    ld h, c
    ld h, c
    inc a
    ld a, h
    dec a
    inc h
    ld a, l
    ld a, $44
    dec [hl]
    dec [hl]
    ld e, $46
    ld c, $0e
    ld c, $2f
    ld b, h
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    dec [hl]
    dec [hl]
    dec [hl]
    ld b, [hl]
    ld c, $47
    ld b, a
    ld c, $44
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    dec [hl]
    ld a, [de]
    dec [hl]
    ld b, [hl]
    cpl
    ld c, $0e
    ld c, $44
    ld b, h
    dec c
    inc [hl]
    add hl, bc
    ld b, [hl]
    ld b, h
    jr @+$10

    dec [hl]
    ld b, [hl]
    ld h, e
    ld c, $67
    ld h, c
    ld b, h
    ld b, h
    ld c, $36
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $2f
    ld b, h
    ld b, h
    dec c
    ld [hl], $09
    ld b, [hl]
    ld b, b
    ld h, e
    ld c, $67
    ld b, c
    ld h, e
    ld c, $67
    ld b, c
    ld [hl], b
    ld b, h
    ld c, $36
    ld c, $46
    ld b, h
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, h
    dec c
    scf
    add hl, bc
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
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld d, $09
    rrca
    ld d, $61
    cp h
    ld e, a
    scf
    ld e, a
    nop
    adc l
    ld h, b
    call Call_006_5f4d
    call Call_000_3c3c
    ld hl, $5fd2
    ld de, $5fb6
    ld a, [$d646]
    call Call_000_3160
    ld [$d646], a
    ret


Call_006_5f4d:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5f97
    call Call_006_5d5d
    call Call_006_5f9e
    ld a, [$d82c]
    bit 0, a
    jr nz, jr_006_5f74

    push af
    ld a, $5f
    ld [$d09f], a
    ld bc, $0203
    ld a, $17
    call Call_000_3e6d
    pop af

jr_006_5f74:
    bit 1, a
    jr nz, jr_006_5f87

    push af
    ld a, $5f
    ld [$d09f], a
    ld bc, $0603
    ld a, $17
    call Call_000_3e6d
    pop af

jr_006_5f87:
    bit 2, a
    ret nz

    ld a, $5f
    ld [$d09f], a
    ld bc, $0507
    ld a, $17
    jp Jump_000_3e6d


    ld [bc], a
    inc bc
    ld b, $03
    dec b
    rlca
    rst $38

Call_006_5f9e:
    ld hl, $d82c
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_006_5fac

    set 0, [hl]
    ret


jr_006_5fac:
    cp $02
    jr nz, jr_006_5fb3

    set 1, [hl]
    ret


jr_006_5fb3:
    set 2, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    inc bc
    ld h, b
    ld a, [de]
    ld h, b
    inc sp
    ld h, b
    ld c, h
    ld h, b
    ld h, l
    ld h, b
    db $f4
    inc h
    db $f4
    inc h
    db $f4
    inc h
    ld a, [hl]
    ld h, b
    add e
    ld h, b
    adc b
    ld h, b
    ld [bc], a
    db $10
    dec hl
    ret c

    inc h
    ld h, b
    ld l, $60
    add hl, hl
    ld h, b
    add hl, hl
    ld h, b
    inc bc
    jr nz, @+$2d

    ret c

    dec a
    ld h, b
    ld b, a
    ld h, b
    ld b, d
    ld h, b
    ld b, d
    ld h, b
    inc b
    ld b, b
    dec hl
    ret c

    ld d, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld e, e
    ld h, b
    ld e, e
    ld h, b
    dec b
    jr nc, jr_006_6024

    ret c

    ld l, a
    ld h, b
    ld a, c
    ld h, b
    ld [hl], h
    ld h, b
    ld [hl], h
    ld h, b
    rst $38
    ld [$1021], sp
    ld h, b
    ld de, $6015
    call Call_006_622f
    jp Jump_000_24d7


    rla
    ld [hl], $69
    jr nz, @+$52

    rla
    ld a, b
    ld l, c
    jr nz, @+$52

    ld [$d221], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


jr_006_6024:
    rla
    xor d
    ld l, c
    jr nz, @+$52

    rla
    rst $08
    ld l, c
    jr nz, @+$52

    rla
    sub $69
    jr nz, @+$52

    ld [$de21], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    rlca
    ld l, d
    jr nz, jr_006_6092

    rla
    ld [hl-], a
    ld l, d
    jr nz, @+$52

    rla
    ld b, e
    ld l, d
    jr nz, jr_006_609c

    ld [$ea21], sp
    ld e, a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    add c
    ld l, d
    jr nz, jr_006_60ab

    rla
    nop
    ld b, b
    ld hl, $1750
    ld c, $40
    ld hl, $0850
    ld hl, $5ff6
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    inc a
    ld b, b
    ld hl, $1750
    ld h, b
    ld b, b
    ld hl, $1750
    ld [hl], e
    ld b, b
    ld hl, $1750
    and h
    ld b, b
    ld hl, $1750
    ld a, [c]
    ld b, b
    ld hl, $1750
    inc [hl]
    ld b, c
    ld hl, $2e50
    rlca
    nop
    jr jr_006_6093

jr_006_6092:
    db $d3

jr_006_6093:
    nop
    ld a, [de]
    ld bc, $00d1
    inc d
    nop
    db $ec
    inc bc

jr_006_609c:
    dec de
    dec b
    call nc, $090f
    inc b
    jp hl


    dec b
    dec bc
    inc b
    ret nc

    rrca
    inc bc
    dec b
    ret nc

jr_006_60ab:
    nop
    dec bc
    inc l
    dec c
    ld de, $ffff
    ld bc, $1418
    inc c
    rst $38
    db $d3
    ld b, d
    and $1c
    jr nz, jr_006_60c4

    inc c
    rst $38
    db $d3
    ld b, e
    db $e4
    ld b, $21

jr_006_60c4:
    ld c, $16
    rst $38
    pop de
    ld b, h
    db $dd
    ld bc, $0818
    jr nz, @+$01

jr_006_60cf:
    pop de
    ld b, l
    and $1d
    dec a
    ld de, $ff06
    rst $38
    add [hl]
    pop de
    dec a
    ld a, [bc]
    ld [$ffff], sp
    add a
    inc h
    dec a
    inc d
    add hl, de
    rst $38
    rst $38
    adc b
    jr nc, jr_006_612b

    db $10
    ld a, [de]
    rst $38
    rst $38
    add hl, bc
    ld b, d
    ld c, $1d
    rst $38
    rst $38
    ld a, [bc]
    ld b, d
    ld a, [bc]
    inc e
    rst $38
    rst $38
    dec bc
    ld a, [bc]
    rst $00
    nop
    jr jr_006_610a

    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    jr nz, jr_006_60cf

    inc bc
    dec de

jr_006_610a:
    sub l
    rst $00
    rrca
    add hl, bc
    dec l
    rst $00
    dec b
    dec bc
    sub d
    rst $00
    rrca
    inc bc
    ld b, b
    ld h, c
    ld h, c
    ld b, d
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
    ld c, $0e
    ld d, [hl]
    ld c, $09

jr_006_612b:
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    cpl
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e
    cpl
    ld c, $5a
    ld b, c
    ld b, c
    ld h, e
    ld c, $67
    ld b, d
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld e, d
    ld c, $60
    ld h, c
    ld b, d
    ld c, $0e
    ld b, a
    ld b, a
    ld a, e
    ld b, [hl]
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld d, c
    ld c, $64
    ld c, $56
    ld c, $0e
    ld c, $0e
    ld [hl], $46
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld d, [hl]
    ld c, $44
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [hl], $46
    ld b, [hl]
    ld b, h
    ld a, [de]
    dec [hl]
    ld c, $0e
    ld b, h
    ld c, $5a
    ld c, $0e
    ld b, a
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, h
    cpl
    dec [hl]
    ld e, d
    cpl
    ld c, b
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, d
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
    dec c
    ld l, e
    ld h, e
    or $61
    xor c
    ld h, c
    nop
    ei
    ld h, d
    call Call_006_61bf
    call Call_000_3c3c
    ld hl, $620a
    ld de, $61f0
    ld a, [$d647]
    call Call_000_3160
    ld [$d647], a
    ret


Call_006_61bf:
    ld hl, $d126
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $61e3
    call Call_006_5d5d
    call Call_006_61e6
    ld a, [$d82e]
    bit 7, a
    ret nz

    ld a, $5f
    ld [$d09f], a
    ld bc, $0602
    ld a, $17
    jp Jump_000_3e6d


    ld b, $02
    rst $38

Call_006_61e6:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d82e
    set 7, [hl]
    ret


    add hl, de
    ld [hl-], a
    ld c, h
    ld [hl-], a
    ld [hl], l
    ld [hl-], a
    dec a
    ld h, d
    ld d, h
    ld h, d
    ld l, e
    ld h, d
    add d
    ld h, d
    sbc c
    ld h, d
    or b
    ld h, d
    ret


    ld h, d
    ld [c], a
    ld h, d
    db $f4
    inc h
    db $f4
    inc h
    ld b, $20
    dec l
    ret c

    cp d
    ld h, d
    call nz, $bf62
    ld h, d
    cp a
    ld h, d
    rlca
    jr nc, @+$2f

    ret c

    db $d3
    ld h, d
    db $dd
    ld h, d
    ret c

    ld h, d
    ret c

    ld h, d
    ld [$2d20], sp
    ret c

    db $ec
    ld h, d
    or $62
    pop af
    ld h, d
    pop af
    ld h, d
    rst $38

Call_006_622f:
    ld a, [$d838]
    bit 7, a
    jr nz, jr_006_6238

    jr jr_006_623a

jr_006_6238:
    ld h, d
    ld l, e

jr_006_623a:
    jp Jump_000_3c49


    ld [$4a21], sp
    ld h, d
    ld de, $624f
    call Call_006_622f
    jp Jump_000_24d7


    rla
    db $76
    ld b, c
    ld hl, $1750
    and h
    ld b, c
    ld hl, $0850
    ld hl, $6261
    ld de, $6266
    call Call_006_622f
    jp Jump_000_24d7


    rla
    call nz, $2141
    ld d, b
    rla
    rst $20
    ld b, c
    ld hl, $0850
    ld hl, $6278
    ld de, $627d
    call Call_006_622f
    jp Jump_000_24d7


    rla
    rst $38
    ld b, c
    ld hl, $1750
    jr nz, jr_006_62c2

    ld hl, $0850
    ld hl, $628f
    ld de, $6294
    call Call_006_622f
    jp Jump_000_24d7


    rla
    ld c, a
    ld b, d
    ld hl, $1750
    add [hl]
    ld b, d
    ld hl, $0850
    ld hl, $62a6
    ld de, $62ab
    call Call_006_622f
    jp Jump_000_24d7


    rla
    and a
    ld b, d
    ld hl, $1750
    db $dd
    ld b, d
    ld hl, $0850
    ld hl, $620a
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld b, $43
    ld hl, $1750
    ld a, [hl+]
    ld b, e

jr_006_62c2:
    ld hl, $1750
    ld [hl], $43
    ld hl, $0850
    ld hl, $6216
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ld e, [hl]
    ld b, e
    ld hl, $1750
    and h
    ld b, e
    ld hl, $1750
    xor h
    ld b, e
    ld hl, $0850
    ld hl, $6222
    call Call_000_31cc
    jp Jump_000_24d7


    rla
    ret c

    ld b, e
    ld hl, $1750
    or $43
    ld hl, $1750
    inc b
    ld b, h
    ld hl, $2e50
    dec b
    nop
    db $10
    ld bc, $00d4
    ld c, $00
    jp nc, Jump_000_1200

    nop
    db $ec
    inc bc
    inc bc
    inc b
    pop de
    inc bc
    rla
    ld b, $cf
    nop
    ld a, [bc]
    inc l
    ld a, [bc]
    ld c, $ff
    rst $38
    ld bc, $0a2c
    jr @+$01

    rst $38
    ld [bc], a
    dec de
    ld a, [bc]
    add hl, de
    rst $38
    ret nc

    inc bc
    dec de
    ld c, $0f
    rst $38
    db $d3
    inc b
    inc l
    ld de, $ff16
    pop de
    dec b
    jr @+$09

    dec d
    rst $38
    db $d3
    ld b, [hl]
    and $1e
    jr nz, @+$0e

    dec bc
    rst $38
    ret nc

    ld b, a
    db $e4
    rlca
    jr jr_006_6356

    ld [de], a
    rst $38
    jp nc, $e648

    rra
    dec a
    db $10
    rlca
    rst $38
    rst $38
    adc c
    inc hl
    dec a
    inc de
    ld b, $ff
    rst $38
    adc d

jr_006_6356:
    ld l, $04
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
    db $10
    rst $00
    inc bc
    inc bc
    ld a, [de]
    rst $00
    inc bc
    rla
    ld h, b
    ld h, c
    ld b, d
    dec a
    dec a
    dec a
    dec a
    inc h
    ld a, l
    ld a, h
    dec a
    dec a
    ld a, $64
    cpl
    ld d, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    cpl
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $60
    ld h, c
    ld b, c
    ld b, c
    ld h, e
    ld c, $67
    ld b, d
    ld b, [hl]
    ld [de], a
    ld c, $0c
    ld c, $64
    ld c, $34
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld b, c
    ld b, d
    ld c, $44
    ld c, $36
    scf
    scf
    scf
    ld [hl], $46
    ld b, [hl]
    ld b, h
    jr jr_006_6405

    ld c, $12
    ld c, $36
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl], $46
    ld b, [hl]
    ld b, h
    inc e
    ld c, $0e
    ld [de], a
    ld c, $37
    scf
    scf
    scf
    scf
    ld b, [hl]
    ld b, [hl]
    ld b, h
    ld a, [de]
    ld e, d
    ld c, $67
    ld h, e
    ld c, $67
    ld b, c
    ld b, c
    ld b, c
    ld h, e
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, d
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
    ld hl, $d730
    res 1, [hl]
    call Call_006_6609
    jr nc, jr_006_6406

    ld a, $fc
    ld [$cd6b], a
    ld hl, $d736
    set 1, [hl]
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    xor a
    ld [$c102], a
    call Call_000_3486

jr_006_6405:
    ret


jr_006_6406:
    xor a
    ld [$cd3a], a
    ld [$cd38], a
    ld [$ccd3], a
    ld hl, $d736
    res 0, [hl]
    res 1, [hl]
    ld hl, $d730
    res 7, [hl]
    ret


    ld hl, $d730
    res 7, [hl]
    ld hl, $d72e
    res 7, [hl]
    ld hl, $d736
    res 0, [hl]
    res 1, [hl]
    xor a
    ld [$cf17], a
    ld [$cc57], a
    ld [$cf10], a
    ld [$cd3a], a
    ld [$cd38], a
    ld [$ccd3], a
    ret


    ld c, h
    ld h, h
    add l
    ld h, h
    and c
    ld h, h
    and [hl]
    ld h, h
    db $f4
    ld h, h
    ld a, [$d362]
    sub $0a
    ld [$cca1], a
    jr z, jr_006_6475

    ld b, $00
    ld c, a
    ld hl, $cc97
    ld a, $80
    call Call_000_36e0
    ld [hl], $ff
    ld a, [$cf13]
    ldh [$8c], a
    ld de, $cc97
    call Call_000_363a
    ld a, $01
    ld [$cf10], a
    jr jr_006_647a

jr_006_6475:
    ld a, $03
    ld [$cf10], a

jr_006_647a:
    ld hl, $d733
    set 1, [hl]
    ld a, $fc
    ld [$cd6b], a
    ret


    ld a, [$d730]
    bit 0, a
    ret nz

    ld a, [$cca1]
    ld [$cd38], a
    ldh [$95], a
    ld a, $23
    call Call_000_3e6d
    call Call_000_3486
    ld a, $02
    ld [$cf10], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd3b], a
    ld a, [$cf13]
    swap a
    ld [$cf17], a
    xor a
    ld [$c206], a
    ld hl, $ccd3
    ld de, $64e9
    call Call_000_350c
    dec a
    ld [$cd38], a
    ld hl, $cc97
    ld de, $64dc
    call Call_000_350c
    ld hl, $d72e
    res 7, [hl]
    ld hl, $d730
    set 7, [hl]
    ld a, $04
    ld [$cf10], a
    ret


    nop
    dec b
    add b
    ld bc, $0500
    ret nz

    inc bc
    ld b, b
    ld bc, $01e0
    rst $38
    ld b, b
    ld [bc], a
    db $10
    inc bc
    add b
    dec b
    jr nz, jr_006_64f2

    add b

jr_006_64f2:
    ld b, $ff
    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$cc4d], a
    ld a, $11
    call Call_000_3e6d
    ld hl, $d730
    res 7, [hl]
    ld hl, $d72e
    res 7, [hl]
    jp Jump_000_314e


    inc d
    ld h, l
    ld l, e
    ld h, l
    ld a, $02
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, $e1
    ld [$c0ee], a
    call Call_000_23b1
    ld a, [$cf13]
    swap a
    ld [$cf17], a
    call Call_000_3486
    ld hl, $ccd3
    ld de, $6559
    call Call_000_350c
    dec a
    ld [$cd38], a
    xor a
    ld [$d12f], a
    ld a, $4f
    call Call_000_3e6d
    ld hl, $cc97
    ld de, $6562
    call Call_000_350c
    ld hl, $d72e
    res 7, [hl]
    ld a, $01
    ld [$cf10], a
    ret


    nop
    ld bc, $0340
    jr nz, jr_006_656c

    ld b, b
    ld b, $ff
    ld b, b
    ld b, $80
    dec c
    ld b, b
    inc bc
    add b
    ld bc, $faff

jr_006_656c:
    jr c, @-$31

    and a
    ret nz

    ld hl, $d730
    res 7, [hl]
    ld hl, $d72e
    res 7, [hl]
    jp Jump_000_314e


    add c
    ld h, l
    ld l, e
    ld h, l
    ld a, $02
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, $e1
    ld [$c0ee], a
    call Call_000_23b1
    ld a, [$cf13]
    swap a
    ld [$cf17], a
    xor a
    ld [$c206], a
    ld hl, $ccd3
    ld de, $65cd
    call Call_000_350c
    dec a
    ld [$cd38], a
    ld a, $01
    ld [$d12f], a
    ld a, $4f
    call Call_000_3e6d
    ld hl, $cc97
    ld de, $65da
    call Call_000_350c
    ld hl, $d72e
    res 7, [hl]
    ld hl, $d730
    set 7, [hl]
    ld a, $01
    ld [$cf10], a
    ret


    nop
    ld bc, $0210
    add b
    dec b
    jr nz, jr_006_65e0

    ld b, b
    dec b
    jr nz, @+$11

    rst $38
    nop
    ld [bc], a
    add b
    rrca
    ld b, b
    dec b

jr_006_65e0:
    add b
    dec bc
    nop
    dec b
    ret nz

    inc bc
    rst $38
    ld a, [$d35e]
    cp $94
    ret z

    ld hl, $6605
    ld a, [$cd2d]
    ld b, a

jr_006_65f4:
    ld a, [hl+]
    cp $ff
    jr z, jr_006_65fd

    cp b
    ret z

    jr jr_006_65f4

jr_006_65fd:
    ld a, [$cf13]
    ldh [$8c], a
    jp Jump_000_3541


    pop hl
    ld a, [c]
    di
    rst $38

Call_006_6609:
    push de
    ld hl, $662c
    ld a, [$d367]
    ld de, $0003
    call Call_000_3dab
    pop de
    jr nc, jr_006_662a

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c45c]
    ld b, a

jr_006_6621:
    ld a, [hl+]
    and a
    jr z, jr_006_662a

    cp b
    jr nz, jr_006_6621

    scf
    ret


jr_006_662a:
    and a
    ret


    nop
    ld d, h
    ld h, [hl]
    inc bc
    ld d, a
    ld h, [hl]
    ld [bc], a
    ld e, c
    ld h, [hl]
    ld [$665b], sp
    add hl, bc
    ld e, l
    ld h, [hl]
    ld a, [bc]
    ld e, l
    ld h, [hl]
    inc c
    ld e, l
    ld h, [hl]
    dec c
    ld e, a
    ld h, [hl]
    ld [de], a
    ld h, c
    ld h, [hl]
    inc de
    ld h, l
    ld h, [hl]
    inc d
    ld l, c
    ld h, [hl]
    ld d, $6b
    ld h, [hl]
    rla
    ld l, a
    ld h, [hl]
    rst $38
    dec de
    ld e, b
    nop
    ld a, [hl-]
    nop
    ld e, [hl]
    nop
    ld d, h
    nop
    dec sp
    nop
    ld e, $00
    inc e
    jr c, @+$1c

    nop
    ld a, [de]
    inc e
    ld d, e
    nop
    inc [hl]
    nop
    ld b, e
    ld e, b
    dec de
    nop
    dec sp
    dec de
    nop
    ld a, [$d736]
    bit 6, a
    ret nz

    ld a, [$d367]
    and a
    ret nz

    ld a, $35
    call Call_000_3e6d
    ld a, [$c109]
    ld b, a
    ld a, [$c45c]
    ld c, a
    ld a, [$cfc6]
    ld d, a
    ld hl, $66cf

jr_006_6691:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_006_66a4

    ld a, [hl+]
    cp c
    jr nz, jr_006_66a5

    ld a, [hl+]
    cp d
    jr nz, jr_006_66a6

    ld a, [hl]
    ld e, a
    jr jr_006_66a9

jr_006_66a4:
    inc hl

jr_006_66a5:
    inc hl

jr_006_66a6:
    inc hl
    jr jr_006_6691

jr_006_66a9:
    ldh a, [$b4]
    and e
    ret z

    ld a, $ff
    ld [$cd6b], a
    ld hl, $d736
    set 6, [hl]
    call Call_000_3486
    ld a, e
    ld [$ccd3], a
    ld [$ccd4], a
    ld a, $02
    ld [$cd38], a
    call Call_006_66f0
    ld a, $a2
    call Call_000_23b1
    ret


    nop
    inc l
    scf
    add b
    nop
    add hl, sp
    ld [hl], $80
    nop
    add hl, sp
    scf
    add b
    ld [$272c], sp
    jr nz, jr_006_66e8

    add hl, sp
    daa
    jr nz, jr_006_66f0

    inc l
    dec c
    db $10
    inc c

jr_006_66e8:
    inc l
    dec e
    db $10
    inc c
    add hl, sp
    dec c
    db $10
    rst $38

Call_006_66f0:
jr_006_66f0:
    ld hl, $8ff0
    ld de, $6708
    ld bc, $0601
    call Call_000_1886
    ld a, $09
    ld bc, $5448
    ld de, $6710
    call Call_000_3a97
    ret


    nop
    nop
    nop
    nop
    rlca
    rra
    ccf
    ld a, a
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
